; ModuleID = 'ldecod_src/io_tiff.c'
source_filename = "ldecod_src/io_tiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tiff = type { ptr, ptr, ptr, i32, i32, %struct.TiffImageFileHeader, i16, [3 x i32], i32, i32, i32, [1080 x i32], [1080 x i32], [2 x i32], [2 x i32], ptr, ptr }
%struct.TiffImageFileHeader = type { i16, i16, i32 }

@ReadTIFFImage.t = internal global %struct.Tiff zeroinitializer, align 8, !dbg !0
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [103 x i8] c"ReadTIFFImage:  RGB input file has not been declared as interleaved but only interleaved is supported\0A\00", align 1, !dbg !163
@.str.1 = private unnamed_addr constant [9 x i8] c"%s%0*d%s\00", align 1, !dbg !168
@.str.2 = private unnamed_addr constant [8 x i8] c"%s%*d%s\00", align 1, !dbg !173
@.str.3 = private unnamed_addr constant [40 x i8] c"ReadTIFFImage:  file name is too large\0A\00", align 1, !dbg !178
@.str.4 = private unnamed_addr constant [88 x i8] c"ReadTIFFImage:  Tiff height (%u) different from encoder input height (%d) . Exiting...\0A\00", align 1, !dbg !183
@.str.5 = private unnamed_addr constant [86 x i8] c"ReadTIFFImage:  Tiff width (%u) different from encoder input width (%d) . Exiting...\0A\00", align 1, !dbg !188
@.str.6 = private unnamed_addr constant [69 x i8] c"ReadTIFFImage only supports pic_unit_size_on_disk of 8 or 16 not %d\0A\00", align 1, !dbg !193
@.str.7 = private unnamed_addr constant [46 x i8] c"ReadTIFFImage:  Unsupported ColorFormat (%d)\0A\00", align 1, !dbg !198
@.str.8 = private unnamed_addr constant [67 x i8] c"ReadTIFFImage only supports pic_unit_size_shift3 of 1 or 2 not %d\0A\00", align 1, !dbg !203
@.str.9 = private unnamed_addr constant [28 x i8] c"Couldn't open to read:  %s\0A\00", align 1, !dbg !208
@.str.10 = private unnamed_addr constant [44 x i8] c"First two bytes indicate:  Not a TIFF file\0A\00", align 1, !dbg !213
@.str.11 = private unnamed_addr constant [33 x i8] c"ImageFileHeader.arbitrary != 42\0A\00", align 1, !dbg !218
@.str.12 = private unnamed_addr constant [69 x i8] c"readDirectoryEntry:  ImageLength (%d) exceeds builtin maximum of %d\0A\00", align 1, !dbg !223
@.str.13 = private unnamed_addr constant [36 x i8] c"BitsPerSample (only [3] supported)\0A\00", align 1, !dbg !225
@.str.14 = private unnamed_addr constant [48 x i8] c"BitsPerSample must be the same for all samples\0A\00", align 1, !dbg !230
@.str.15 = private unnamed_addr constant [41 x i8] c"Only 8 or 16 BitsPerSample is supported\0A\00", align 1, !dbg !235
@.str.16 = private unnamed_addr constant [40 x i8] c"Only uncompressed TIFF files supported\0A\00", align 1, !dbg !240
@.str.17 = private unnamed_addr constant [33 x i8] c"Only Orientation 1 is supported\0A\00", align 1, !dbg !242
@.str.18 = private unnamed_addr constant [49 x i8] c"RGB_YUV_initialize:  Unsupported videoCode (%d)\0A\00", align 1, !dbg !244
@Coef = internal unnamed_addr constant [9 x [3 x double]] [[3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.126000e-01, double 7.152000e-01, double 7.220000e-02], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 3.000000e-01, double 5.900000e-01, double 1.100000e-01], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.120000e-01, double 7.010000e-01, double 0x3FB645A1CAC08312], [3 x double] [double 2.126390e-01, double 7.151690e-01, double 7.219200e-02]], align 16, !dbg !255
@.str.19 = private unnamed_addr constant [46 x i8] c"ERROR: RGB_YUV_initialize: yr+yg+yb=%d sy=%u\0A\00", align 1, !dbg !249
@.str.20 = private unnamed_addr constant [40 x i8] c"ERROR: RGB_YUV_initialize: ur+ug+ub=%d\0A\00", align 1, !dbg !251
@.str.21 = private unnamed_addr constant [40 x i8] c"ERROR: RGB_YUV_initialize: vr+vg+vb=%d\0A\00", align 1, !dbg !253

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @constructTiff(ptr nocapture noundef writeonly %t) local_unnamed_addr #0 !dbg !353 {
entry:
    #dbg_value(ptr %t, !358, !DIExpression(), !359)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %t, i8 0, i64 24, i1 false), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @destructTiff(ptr nocapture noundef %t) local_unnamed_addr #1 !dbg !362 {
entry:
    #dbg_value(ptr %t, !364, !DIExpression(), !365)
  %fileInMemory = getelementptr inbounds i8, ptr %t, i64 8, !dbg !366
  %0 = load ptr, ptr %fileInMemory, align 8, !dbg !366
  %tobool.not = icmp eq ptr %0, null, !dbg !368
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !369

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #17, !dbg !370
  store ptr null, ptr %fileInMemory, align 8, !dbg !372
  br label %if.end, !dbg !373

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %t, align 8, !dbg !374
  %tobool3.not = icmp eq ptr %1, null, !dbg !376
  br i1 %tobool3.not, label %if.end7, label %if.then4, !dbg !377

if.then4:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %1) #17, !dbg !378
  store ptr null, ptr %t, align 8, !dbg !380
  br label %if.end7, !dbg !381

if.end7:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !382
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !383 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @horizontal_half_1chan_cosite(ptr nocapture noundef readonly %srcPtr, i32 noundef %srcXres, i32 noundef %yres, i32 noundef %srcZres, ptr nocapture noundef writeonly %dstPtr, i32 noundef %dstZres, i32 noundef %pixMax) local_unnamed_addr #3 !dbg !388 {
entry:
    #dbg_value(ptr %srcPtr, !392, !DIExpression(), !409)
    #dbg_value(i32 %srcXres, !393, !DIExpression(), !409)
    #dbg_value(i32 %yres, !394, !DIExpression(), !409)
    #dbg_value(i32 %srcZres, !395, !DIExpression(), !409)
    #dbg_value(ptr %dstPtr, !396, !DIExpression(), !409)
    #dbg_value(i32 %dstZres, !397, !DIExpression(), !409)
    #dbg_value(i32 %pixMax, !398, !DIExpression(), !409)
    #dbg_value(ptr %srcPtr, !407, !DIExpression(), !409)
    #dbg_value(ptr %dstPtr, !408, !DIExpression(), !409)
    #dbg_value(i32 0, !400, !DIExpression(), !409)
  %cmp384 = icmp sgt i32 %yres, 0, !dbg !410
  br i1 %cmp384, label %for.cond1.preheader.lr.ph, label %for.end255, !dbg !413

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
  %0 = add i32 %srcXres, -17, !dbg !413
  %1 = and i32 %0, -2, !dbg !413
  %2 = add i32 %1, 10, !dbg !413
  %mul27.1 = shl nsw i32 %srcZres, 1
  %idx.ext28.1 = sext i32 %mul27.1 to i64
  %idx.neg29.1 = sub nsw i64 0, %idx.ext28.1
  %add.ptr53.1.idx = mul nsw i64 %idx.ext22, -4
  %mul38.2 = shl nsw i32 %srcZres, 2
  %idx.ext39.2 = sext i32 %mul38.2 to i64
  %idx.neg40.2 = sub nsw i64 0, %idx.ext39.2
  %add.ptr53.2.idx = mul nsw i64 %idx.ext22, -8
  %add.ptr53.3.idx = mul nsw i64 %idx.ext22, -12
  br label %for.cond1.preheader, !dbg !413

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc254
  %dst.0387 = phi ptr [ %dstPtr, %for.cond1.preheader.lr.ph ], [ %dst.3.lcssa, %for.inc254 ]
  %src.0386 = phi ptr [ %srcPtr, %for.cond1.preheader.lr.ph ], [ %src.3.lcssa, %for.inc254 ]
  %y.0385 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc, %for.inc254 ]
    #dbg_value(ptr %dst.0387, !408, !DIExpression(), !409)
    #dbg_value(ptr %src.0386, !407, !DIExpression(), !409)
    #dbg_value(i32 %y.0385, !400, !DIExpression(), !409)
    #dbg_value(ptr %dst.0387, !408, !DIExpression(), !409)
    #dbg_value(ptr %src.0386, !407, !DIExpression(), !409)
    #dbg_value(i32 0, !399, !DIExpression(), !409)
    #dbg_value(ptr %dst.0387, !408, !DIExpression(), !409)
    #dbg_value(ptr %src.0386, !407, !DIExpression(), !409)
    #dbg_value(i64 0, !399, !DIExpression(), !409)
    #dbg_value(i1 true, !405, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !409)
    #dbg_value(i32 0, !404, !DIExpression(), !409)
    #dbg_value(i32 0, !403, !DIExpression(), !409)
    #dbg_value(i64 0, !402, !DIExpression(), !409)
  %3 = load i16, ptr %src.0386, align 2, !dbg !414
  %conv = zext i16 %3 to i32, !dbg !414
  %mul = shl nuw nsw i32 %conv, 11, !dbg !419
  %add.ptr23 = getelementptr inbounds i16, ptr %src.0386, i64 %idx.ext22, !dbg !420
  %4 = load i16, ptr %add.ptr23, align 2, !dbg !421
  %conv24 = zext i16 %4 to i32, !dbg !421
  %add = add nuw nsw i32 %conv24, %conv, !dbg !422
  %mul25 = mul nuw nsw i32 %add, 1228, !dbg !423
  %add26 = add nuw nsw i32 %mul25, %mul, !dbg !424
  %add.ptr34 = getelementptr inbounds i16, ptr %src.0386, i64 %idx.ext33, !dbg !425
  %5 = load i16, ptr %add.ptr34, align 2, !dbg !426
  %conv35 = zext i16 %5 to i32, !dbg !426
  %add36 = add nuw nsw i32 %conv35, %conv, !dbg !427
  %mul37.neg = mul nsw i32 %add36, -262, !dbg !428
  %sub = add nsw i32 %add26, %mul37.neg, !dbg !429
  %add.ptr45 = getelementptr inbounds i16, ptr %src.0386, i64 %idx.ext44, !dbg !430
  %6 = load i16, ptr %add.ptr45, align 2, !dbg !431
  %conv46 = zext i16 %6 to i32, !dbg !431
  %add47 = add nuw nsw i32 %conv46, %conv, !dbg !432
  %mul48 = mul nuw nsw i32 %add47, 47, !dbg !433
  %add49 = add nsw i32 %sub, %mul48, !dbg !434
  %add.ptr57 = getelementptr inbounds i16, ptr %src.0386, i64 %idx.ext56, !dbg !435
  %7 = load i16, ptr %add.ptr57, align 2, !dbg !436
  %conv58 = zext i16 %7 to i32, !dbg !436
  %add59 = add nuw nsw i32 %conv58, %conv, !dbg !437
  %mul60 = mul nuw nsw i32 %add59, 11, !dbg !438
  %add61 = add nsw i32 %add49, %mul60, !dbg !439
    #dbg_value(i32 %add61, !406, !DIExpression(DW_OP_plus_uconst, 2048, DW_OP_constu, 4096, DW_OP_div, DW_OP_stack_value), !409)
  %cmp63 = icmp slt i32 %add61, -6143, !dbg !440
  br i1 %cmp63, label %if.end68, label %if.else, !dbg !442

if.else:                                          ; preds = %for.cond1.preheader
  %add62 = add nsw i32 %add61, 2048, !dbg !443
    #dbg_value(i32 %add62, !406, !DIExpression(DW_OP_constu, 4096, DW_OP_div, DW_OP_stack_value), !409)
  %div = sdiv i32 %add62, 4096, !dbg !444
    #dbg_value(i32 %div, !406, !DIExpression(), !409)
  %spec.select = tail call i32 @llvm.smin.i32(i32 %div, i32 %pixMax), !dbg !445
  br label %if.end68, !dbg !445

if.end68:                                         ; preds = %if.else, %for.cond1.preheader
  %result.0 = phi i32 [ 0, %for.cond1.preheader ], [ %spec.select, %if.else ], !dbg !446
    #dbg_value(i32 %result.0, !406, !DIExpression(), !409)
  %conv69 = trunc i32 %result.0 to i16, !dbg !447
  store i16 %conv69, ptr %dst.0387, align 2, !dbg !448
  %add.ptr71 = getelementptr inbounds i16, ptr %dst.0387, i64 %idx.ext70, !dbg !449
    #dbg_value(ptr %add.ptr71, !408, !DIExpression(), !409)
  %add.ptr74 = getelementptr inbounds i16, ptr %src.0386, i64 %idx.ext73, !dbg !450
    #dbg_value(ptr %add.ptr74, !407, !DIExpression(), !409)
    #dbg_value(i64 2, !399, !DIExpression(), !409)
    #dbg_value(i1 false, !405, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !409)
    #dbg_value(i32 2, !404, !DIExpression(), !409)
    #dbg_value(i32 2, !403, !DIExpression(), !409)
    #dbg_value(i64 2, !402, !DIExpression(), !409)
  %8 = load i16, ptr %add.ptr74, align 2, !dbg !414
  %conv.1 = zext i16 %8 to i32, !dbg !414
  %mul.1 = shl nuw nsw i32 %conv.1, 11, !dbg !419
  %add.ptr.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.neg84, !dbg !451
  %9 = load i16, ptr %add.ptr.1, align 2, !dbg !452
  %conv21.1 = zext i16 %9 to i32, !dbg !452
  %add.ptr23.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.ext22, !dbg !420
  %10 = load i16, ptr %add.ptr23.1, align 2, !dbg !421
  %conv24.1 = zext i16 %10 to i32, !dbg !421
  %add.1 = add nuw nsw i32 %conv24.1, %conv21.1, !dbg !422
  %mul25.1 = mul nuw nsw i32 %add.1, 1228, !dbg !423
  %add26.1 = add nuw nsw i32 %mul25.1, %mul.1, !dbg !424
  %add.ptr30.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.neg29.1, !dbg !453
  %11 = load i16, ptr %add.ptr30.1, align 2, !dbg !454
  %conv31.1 = zext i16 %11 to i32, !dbg !454
  %add.ptr34.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.ext33, !dbg !425
  %12 = load i16, ptr %add.ptr34.1, align 2, !dbg !426
  %conv35.1 = zext i16 %12 to i32, !dbg !426
  %add36.1 = add nuw nsw i32 %conv35.1, %conv31.1, !dbg !427
  %mul37.neg.1 = mul nsw i32 %add36.1, -262, !dbg !428
  %sub.1 = add nsw i32 %add26.1, %mul37.neg.1, !dbg !429
  %add.ptr45.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.ext44, !dbg !430
  %13 = load i16, ptr %add.ptr45.1, align 2, !dbg !431
  %conv46.1 = zext i16 %13 to i32, !dbg !431
  %add47.1 = add nuw nsw i32 %conv46.1, %conv31.1, !dbg !432
  %mul48.1 = mul nuw nsw i32 %add47.1, 47, !dbg !433
  %add49.1 = add nsw i32 %sub.1, %mul48.1, !dbg !434
  %add.ptr53.1 = getelementptr inbounds i8, ptr %add.ptr74, i64 %add.ptr53.1.idx, !dbg !455
  %14 = load i16, ptr %add.ptr53.1, align 2, !dbg !456
  %conv54.1 = zext i16 %14 to i32, !dbg !456
  %add.ptr57.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.ext56, !dbg !435
  %15 = load i16, ptr %add.ptr57.1, align 2, !dbg !436
  %conv58.1 = zext i16 %15 to i32, !dbg !436
  %add59.1 = add nuw nsw i32 %conv58.1, %conv54.1, !dbg !437
  %mul60.1 = mul nuw nsw i32 %add59.1, 11, !dbg !438
  %add61.1 = add nsw i32 %add49.1, %mul60.1, !dbg !439
    #dbg_value(i32 %add61.1, !406, !DIExpression(DW_OP_plus_uconst, 2048, DW_OP_constu, 4096, DW_OP_div, DW_OP_stack_value), !409)
  %cmp63.1 = icmp slt i32 %add61.1, -6143, !dbg !440
  br i1 %cmp63.1, label %if.end68.1, label %if.else.1, !dbg !442

if.else.1:                                        ; preds = %if.end68
  %add62.1 = add nsw i32 %add61.1, 2048, !dbg !443
    #dbg_value(i32 %add62.1, !406, !DIExpression(DW_OP_constu, 4096, DW_OP_div, DW_OP_stack_value), !409)
  %div.1 = sdiv i32 %add62.1, 4096, !dbg !444
    #dbg_value(i32 %div.1, !406, !DIExpression(), !409)
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %div.1, i32 %pixMax), !dbg !445
  br label %if.end68.1, !dbg !445

if.end68.1:                                       ; preds = %if.else.1, %if.end68
  %result.0.1 = phi i32 [ 0, %if.end68 ], [ %spec.select.1, %if.else.1 ], !dbg !446
    #dbg_value(i32 %result.0.1, !406, !DIExpression(), !409)
  %conv69.1 = trunc i32 %result.0.1 to i16, !dbg !447
  store i16 %conv69.1, ptr %add.ptr71, align 2, !dbg !448
  %add.ptr71.1 = getelementptr inbounds i16, ptr %add.ptr71, i64 %idx.ext70, !dbg !449
    #dbg_value(ptr %add.ptr71.1, !408, !DIExpression(), !409)
  %add.ptr74.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.ext73, !dbg !450
    #dbg_value(ptr %add.ptr74.1, !407, !DIExpression(), !409)
    #dbg_value(i64 4, !399, !DIExpression(), !409)
    #dbg_value(i1 false, !405, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !409)
    #dbg_value(i32 3, !404, !DIExpression(), !409)
    #dbg_value(i32 4, !403, !DIExpression(), !409)
    #dbg_value(i64 4, !402, !DIExpression(), !409)
  %16 = load i16, ptr %add.ptr74.1, align 2, !dbg !414
  %conv.2 = zext i16 %16 to i32, !dbg !414
  %mul.2 = shl nuw nsw i32 %conv.2, 11, !dbg !419
  %add.ptr.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.neg84, !dbg !451
  %17 = load i16, ptr %add.ptr.2, align 2, !dbg !452
  %conv21.2 = zext i16 %17 to i32, !dbg !452
  %add.ptr23.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.ext22, !dbg !420
  %18 = load i16, ptr %add.ptr23.2, align 2, !dbg !421
  %conv24.2 = zext i16 %18 to i32, !dbg !421
  %add.2 = add nuw nsw i32 %conv24.2, %conv21.2, !dbg !422
  %mul25.2 = mul nuw nsw i32 %add.2, 1228, !dbg !423
  %add26.2 = add nuw nsw i32 %mul25.2, %mul.2, !dbg !424
  %add.ptr30.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.neg95, !dbg !453
  %19 = load i16, ptr %add.ptr30.2, align 2, !dbg !454
  %conv31.2 = zext i16 %19 to i32, !dbg !454
  %add.ptr34.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.ext33, !dbg !425
  %20 = load i16, ptr %add.ptr34.2, align 2, !dbg !426
  %conv35.2 = zext i16 %20 to i32, !dbg !426
  %add36.2 = add nuw nsw i32 %conv35.2, %conv31.2, !dbg !427
  %mul37.neg.2 = mul nsw i32 %add36.2, -262, !dbg !428
  %sub.2 = add nsw i32 %add26.2, %mul37.neg.2, !dbg !429
  %add.ptr41.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.neg40.2, !dbg !457
  %21 = load i16, ptr %add.ptr41.2, align 2, !dbg !458
  %conv42.2 = zext i16 %21 to i32, !dbg !458
  %add.ptr45.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.ext44, !dbg !430
  %22 = load i16, ptr %add.ptr45.2, align 2, !dbg !431
  %conv46.2 = zext i16 %22 to i32, !dbg !431
  %add47.2 = add nuw nsw i32 %conv46.2, %conv42.2, !dbg !432
  %mul48.2 = mul nuw nsw i32 %add47.2, 47, !dbg !433
  %add49.2 = add nsw i32 %sub.2, %mul48.2, !dbg !434
  %add.ptr53.2 = getelementptr inbounds i8, ptr %add.ptr74.1, i64 %add.ptr53.2.idx, !dbg !455
  %23 = load i16, ptr %add.ptr53.2, align 2, !dbg !456
  %conv54.2 = zext i16 %23 to i32, !dbg !456
  %add.ptr57.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.ext56, !dbg !435
  %24 = load i16, ptr %add.ptr57.2, align 2, !dbg !436
  %conv58.2 = zext i16 %24 to i32, !dbg !436
  %add59.2 = add nuw nsw i32 %conv58.2, %conv54.2, !dbg !437
  %mul60.2 = mul nuw nsw i32 %add59.2, 11, !dbg !438
  %add61.2 = add nsw i32 %add49.2, %mul60.2, !dbg !439
    #dbg_value(i32 %add61.2, !406, !DIExpression(DW_OP_plus_uconst, 2048, DW_OP_constu, 4096, DW_OP_div, DW_OP_stack_value), !409)
  %cmp63.2 = icmp slt i32 %add61.2, -6143, !dbg !440
  br i1 %cmp63.2, label %if.end68.2, label %if.else.2, !dbg !442

if.else.2:                                        ; preds = %if.end68.1
  %add62.2 = add nsw i32 %add61.2, 2048, !dbg !443
    #dbg_value(i32 %add62.2, !406, !DIExpression(DW_OP_constu, 4096, DW_OP_div, DW_OP_stack_value), !409)
  %div.2 = sdiv i32 %add62.2, 4096, !dbg !444
    #dbg_value(i32 %div.2, !406, !DIExpression(), !409)
  %spec.select.2 = tail call i32 @llvm.smin.i32(i32 %div.2, i32 %pixMax), !dbg !445
  br label %if.end68.2, !dbg !445

if.end68.2:                                       ; preds = %if.else.2, %if.end68.1
  %result.0.2 = phi i32 [ 0, %if.end68.1 ], [ %spec.select.2, %if.else.2 ], !dbg !446
    #dbg_value(i32 %result.0.2, !406, !DIExpression(), !409)
  %conv69.2 = trunc i32 %result.0.2 to i16, !dbg !447
  store i16 %conv69.2, ptr %add.ptr71.1, align 2, !dbg !448
  %add.ptr71.2 = getelementptr inbounds i16, ptr %add.ptr71.1, i64 %idx.ext70, !dbg !449
    #dbg_value(ptr %add.ptr71.2, !408, !DIExpression(), !409)
  %add.ptr74.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.ext73, !dbg !450
    #dbg_value(ptr %add.ptr74.2, !407, !DIExpression(), !409)
    #dbg_value(i64 6, !399, !DIExpression(), !409)
    #dbg_value(i1 false, !405, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !409)
    #dbg_value(i32 3, !404, !DIExpression(), !409)
    #dbg_value(i32 5, !403, !DIExpression(), !409)
    #dbg_value(i64 6, !402, !DIExpression(), !409)
  %25 = load i16, ptr %add.ptr74.2, align 2, !dbg !414
  %conv.3 = zext i16 %25 to i32, !dbg !414
  %mul.3 = shl nuw nsw i32 %conv.3, 11, !dbg !419
  %add.ptr.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.neg84, !dbg !451
  %26 = load i16, ptr %add.ptr.3, align 2, !dbg !452
  %conv21.3 = zext i16 %26 to i32, !dbg !452
  %add.ptr23.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.ext22, !dbg !420
  %27 = load i16, ptr %add.ptr23.3, align 2, !dbg !421
  %conv24.3 = zext i16 %27 to i32, !dbg !421
  %add.3 = add nuw nsw i32 %conv24.3, %conv21.3, !dbg !422
  %mul25.3 = mul nuw nsw i32 %add.3, 1228, !dbg !423
  %add26.3 = add nuw nsw i32 %mul25.3, %mul.3, !dbg !424
  %add.ptr30.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.neg95, !dbg !453
  %28 = load i16, ptr %add.ptr30.3, align 2, !dbg !454
  %conv31.3 = zext i16 %28 to i32, !dbg !454
  %add.ptr34.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.ext33, !dbg !425
  %29 = load i16, ptr %add.ptr34.3, align 2, !dbg !426
  %conv35.3 = zext i16 %29 to i32, !dbg !426
  %add36.3 = add nuw nsw i32 %conv35.3, %conv31.3, !dbg !427
  %mul37.neg.3 = mul nsw i32 %add36.3, -262, !dbg !428
  %sub.3 = add nsw i32 %add26.3, %mul37.neg.3, !dbg !429
  %add.ptr41.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.neg107, !dbg !457
  %30 = load i16, ptr %add.ptr41.3, align 2, !dbg !458
  %conv42.3 = zext i16 %30 to i32, !dbg !458
  %add.ptr45.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.ext44, !dbg !430
  %31 = load i16, ptr %add.ptr45.3, align 2, !dbg !431
  %conv46.3 = zext i16 %31 to i32, !dbg !431
  %add47.3 = add nuw nsw i32 %conv46.3, %conv42.3, !dbg !432
  %mul48.3 = mul nuw nsw i32 %add47.3, 47, !dbg !433
  %add49.3 = add nsw i32 %sub.3, %mul48.3, !dbg !434
  %add.ptr53.3 = getelementptr inbounds i8, ptr %add.ptr74.2, i64 %add.ptr53.3.idx, !dbg !455
  %32 = load i16, ptr %add.ptr53.3, align 2, !dbg !456
  %conv54.3 = zext i16 %32 to i32, !dbg !456
  %add.ptr57.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.ext56, !dbg !435
  %33 = load i16, ptr %add.ptr57.3, align 2, !dbg !436
  %conv58.3 = zext i16 %33 to i32, !dbg !436
  %add59.3 = add nuw nsw i32 %conv58.3, %conv54.3, !dbg !437
  %mul60.3 = mul nuw nsw i32 %add59.3, 11, !dbg !438
  %add61.3 = add nsw i32 %add49.3, %mul60.3, !dbg !439
    #dbg_value(i32 %add61.3, !406, !DIExpression(DW_OP_plus_uconst, 2048, DW_OP_constu, 4096, DW_OP_div, DW_OP_stack_value), !409)
  %cmp63.3 = icmp slt i32 %add61.3, -6143, !dbg !440
  br i1 %cmp63.3, label %if.end68.3, label %if.else.3, !dbg !442

if.else.3:                                        ; preds = %if.end68.2
  %add62.3 = add nsw i32 %add61.3, 2048, !dbg !443
    #dbg_value(i32 %add62.3, !406, !DIExpression(DW_OP_constu, 4096, DW_OP_div, DW_OP_stack_value), !409)
  %div.3 = sdiv i32 %add62.3, 4096, !dbg !444
    #dbg_value(i32 %div.3, !406, !DIExpression(), !409)
  %spec.select.3 = tail call i32 @llvm.smin.i32(i32 %div.3, i32 %pixMax), !dbg !445
  br label %if.end68.3, !dbg !445

if.end68.3:                                       ; preds = %if.else.3, %if.end68.2
  %result.0.3 = phi i32 [ 0, %if.end68.2 ], [ %spec.select.3, %if.else.3 ], !dbg !446
    #dbg_value(i32 %result.0.3, !406, !DIExpression(), !409)
  %conv69.3 = trunc i32 %result.0.3 to i16, !dbg !447
  store i16 %conv69.3, ptr %add.ptr71.2, align 2, !dbg !448
  %add.ptr71.3 = getelementptr inbounds i16, ptr %add.ptr71.2, i64 %idx.ext70, !dbg !449
    #dbg_value(ptr %add.ptr71.3, !408, !DIExpression(), !409)
  %add.ptr74.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.ext73, !dbg !450
    #dbg_value(ptr %add.ptr74.3, !407, !DIExpression(), !409)
    #dbg_value(i64 8, !399, !DIExpression(), !409)
    #dbg_value(i32 %sub76, !401, !DIExpression(), !409)
    #dbg_value(i32 8, !399, !DIExpression(), !409)
  br i1 %cmp78372, label %for.body80, label %for.end148, !dbg !459

for.body80:                                       ; preds = %if.end68.3, %if.end139
  %dst.2375 = phi ptr [ %add.ptr142, %if.end139 ], [ %add.ptr71.3, %if.end68.3 ]
  %src.2374 = phi ptr [ %add.ptr145, %if.end139 ], [ %add.ptr74.3, %if.end68.3 ]
  %x.1373 = phi i32 [ %add147, %if.end139 ], [ 8, %if.end68.3 ]
    #dbg_value(ptr %dst.2375, !408, !DIExpression(), !409)
    #dbg_value(ptr %src.2374, !407, !DIExpression(), !409)
    #dbg_value(i32 %x.1373, !399, !DIExpression(), !409)
  %34 = load i16, ptr %src.2374, align 2, !dbg !461
  %conv81 = zext i16 %34 to i32, !dbg !461
  %mul82 = shl nuw nsw i32 %conv81, 11, !dbg !464
  %add.ptr85 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.neg84, !dbg !465
  %35 = load i16, ptr %add.ptr85, align 2, !dbg !466
  %conv86 = zext i16 %35 to i32, !dbg !466
  %add.ptr88 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.ext22, !dbg !467
  %36 = load i16, ptr %add.ptr88, align 2, !dbg !468
  %conv89 = zext i16 %36 to i32, !dbg !468
  %add90 = add nuw nsw i32 %conv89, %conv86, !dbg !469
  %mul91 = mul nuw nsw i32 %add90, 1228, !dbg !470
  %add92 = add nuw nsw i32 %mul91, %mul82, !dbg !471
  %add.ptr96 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.neg95, !dbg !472
  %37 = load i16, ptr %add.ptr96, align 2, !dbg !473
  %conv97 = zext i16 %37 to i32, !dbg !473
  %add.ptr100 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.ext33, !dbg !474
  %38 = load i16, ptr %add.ptr100, align 2, !dbg !475
  %conv101 = zext i16 %38 to i32, !dbg !475
  %add102 = add nuw nsw i32 %conv101, %conv97, !dbg !476
  %mul103.neg = mul nsw i32 %add102, -262, !dbg !477
  %sub104 = add nsw i32 %add92, %mul103.neg, !dbg !478
  %add.ptr108 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.neg107, !dbg !479
  %39 = load i16, ptr %add.ptr108, align 2, !dbg !480
  %conv109 = zext i16 %39 to i32, !dbg !480
  %add.ptr112 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.ext44, !dbg !481
  %40 = load i16, ptr %add.ptr112, align 2, !dbg !482
  %conv113 = zext i16 %40 to i32, !dbg !482
  %add114 = add nuw nsw i32 %conv113, %conv109, !dbg !483
  %mul115 = mul nuw nsw i32 %add114, 47, !dbg !484
  %add116 = add nsw i32 %sub104, %mul115, !dbg !485
  %add.ptr120 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.neg119, !dbg !486
  %41 = load i16, ptr %add.ptr120, align 2, !dbg !487
  %conv121 = zext i16 %41 to i32, !dbg !487
  %add.ptr124 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.ext56, !dbg !488
  %42 = load i16, ptr %add.ptr124, align 2, !dbg !489
  %conv125 = zext i16 %42 to i32, !dbg !489
  %add126 = add nuw nsw i32 %conv125, %conv121, !dbg !490
  %mul127 = mul nuw nsw i32 %add126, 11, !dbg !491
  %add128 = add nsw i32 %add116, %mul127, !dbg !492
    #dbg_value(i32 %add128, !406, !DIExpression(DW_OP_plus_uconst, 2048, DW_OP_constu, 4096, DW_OP_div, DW_OP_stack_value), !409)
  %cmp131 = icmp slt i32 %add128, -6143, !dbg !493
  br i1 %cmp131, label %if.end139, label %if.else134, !dbg !495

if.else134:                                       ; preds = %for.body80
  %add129 = add nsw i32 %add128, 2048, !dbg !496
    #dbg_value(i32 %add129, !406, !DIExpression(DW_OP_constu, 4096, DW_OP_div, DW_OP_stack_value), !409)
  %div130 = sdiv i32 %add129, 4096, !dbg !497
    #dbg_value(i32 %div130, !406, !DIExpression(), !409)
  %spec.select367 = tail call i32 @llvm.smin.i32(i32 %div130, i32 %pixMax), !dbg !498
  br label %if.end139, !dbg !498

if.end139:                                        ; preds = %if.else134, %for.body80
  %result.1 = phi i32 [ 0, %for.body80 ], [ %spec.select367, %if.else134 ], !dbg !499
    #dbg_value(i32 %result.1, !406, !DIExpression(), !409)
  %conv140 = trunc i32 %result.1 to i16, !dbg !500
  store i16 %conv140, ptr %dst.2375, align 2, !dbg !501
  %add.ptr142 = getelementptr inbounds i16, ptr %dst.2375, i64 %idx.ext70, !dbg !502
    #dbg_value(ptr %add.ptr142, !408, !DIExpression(), !409)
  %add.ptr145 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.ext73, !dbg !503
    #dbg_value(ptr %add.ptr145, !407, !DIExpression(), !409)
  %add147 = add nuw nsw i32 %x.1373, 2, !dbg !504
    #dbg_value(i32 %add147, !399, !DIExpression(), !409)
  %cmp78 = icmp slt i32 %add147, %sub76, !dbg !505
  br i1 %cmp78, label %for.body80, label %for.end148, !dbg !459, !llvm.loop !506

for.end148:                                       ; preds = %if.end139, %if.end68.3
  %x.1.lcssa = phi i32 [ 8, %if.end68.3 ], [ %2, %if.end139 ], !dbg !508
  %src.2.lcssa = phi ptr [ %add.ptr74.3, %if.end68.3 ], [ %add.ptr145, %if.end139 ], !dbg !409
  %dst.2.lcssa = phi ptr [ %add.ptr71.3, %if.end68.3 ], [ %add.ptr142, %if.end139 ], !dbg !409
    #dbg_value(i32 %sub149, !401, !DIExpression(), !409)
    #dbg_value(i32 %x.1.lcssa, !399, !DIExpression(), !409)
    #dbg_value(ptr %dst.2.lcssa, !408, !DIExpression(), !409)
    #dbg_value(ptr %src.2.lcssa, !407, !DIExpression(), !409)
  %cmp151378 = icmp slt i32 %x.1.lcssa, %sub149, !dbg !509
  br i1 %cmp151378, label %for.body153, label %for.inc254, !dbg !512

for.body153:                                      ; preds = %for.end148, %if.end244
  %dst.3381 = phi ptr [ %add.ptr247, %if.end244 ], [ %dst.2.lcssa, %for.end148 ]
  %src.3380 = phi ptr [ %add.ptr250, %if.end244 ], [ %src.2.lcssa, %for.end148 ]
  %x.2379 = phi i32 [ %add252, %if.end244 ], [ %x.1.lcssa, %for.end148 ]
    #dbg_value(ptr %dst.3381, !408, !DIExpression(), !409)
    #dbg_value(ptr %src.3380, !407, !DIExpression(), !409)
    #dbg_value(i32 %x.2379, !399, !DIExpression(), !409)
  %cmp155 = icmp slt i32 %x.2379, %sub154, !dbg !513
    #dbg_value(i1 %cmp155, !405, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !409)
  %cmp159 = icmp slt i32 %x.2379, %sub158, !dbg !515
  %sub164 = sub nsw i32 %sub154, %x.2379, !dbg !516
  %cond166 = select i1 %cmp159, i32 3, i32 %sub164, !dbg !516
    #dbg_value(i32 %cond166, !404, !DIExpression(), !409)
  %cmp168 = icmp slt i32 %x.2379, %sub167, !dbg !517
  %cond175 = select i1 %cmp168, i32 5, i32 %sub164, !dbg !518
    #dbg_value(i32 %cond175, !403, !DIExpression(), !409)
  %cmp177 = icmp slt i32 %x.2379, %sub176, !dbg !519
  %cond184 = select i1 %cmp177, i32 7, i32 %sub164, !dbg !520
    #dbg_value(i32 %cond184, !402, !DIExpression(), !409)
  %43 = load i16, ptr %src.3380, align 2, !dbg !521
  %conv185 = zext i16 %43 to i32, !dbg !521
  %mul186 = shl nuw nsw i32 %conv185, 11, !dbg !522
  %add.ptr189 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.neg84, !dbg !523
  %44 = load i16, ptr %add.ptr189, align 2, !dbg !524
  %conv190 = zext i16 %44 to i32, !dbg !524
  %mul191 = select i1 %cmp155, i32 %srcZres, i32 0, !dbg !525
  %idx.ext192 = sext i32 %mul191 to i64, !dbg !526
  %add.ptr193 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.ext192, !dbg !526
  %45 = load i16, ptr %add.ptr193, align 2, !dbg !527
  %conv194 = zext i16 %45 to i32, !dbg !527
  %add195 = add nuw nsw i32 %conv194, %conv190, !dbg !528
  %mul196 = mul nuw nsw i32 %add195, 1228, !dbg !529
  %add197 = add nuw nsw i32 %mul196, %mul186, !dbg !530
  %add.ptr201 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.neg95, !dbg !531
  %46 = load i16, ptr %add.ptr201, align 2, !dbg !532
  %conv202 = zext i16 %46 to i32, !dbg !532
  %mul203 = mul nsw i32 %cond166, %srcZres, !dbg !533
  %idx.ext204 = sext i32 %mul203 to i64, !dbg !534
  %add.ptr205 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.ext204, !dbg !534
  %47 = load i16, ptr %add.ptr205, align 2, !dbg !535
  %conv206 = zext i16 %47 to i32, !dbg !535
  %add207 = add nuw nsw i32 %conv206, %conv202, !dbg !536
  %mul208.neg = mul nsw i32 %add207, -262, !dbg !537
  %sub209 = add nsw i32 %add197, %mul208.neg, !dbg !538
  %add.ptr213 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.neg107, !dbg !539
  %48 = load i16, ptr %add.ptr213, align 2, !dbg !540
  %conv214 = zext i16 %48 to i32, !dbg !540
  %mul215 = mul nsw i32 %cond175, %srcZres, !dbg !541
  %idx.ext216 = sext i32 %mul215 to i64, !dbg !542
  %add.ptr217 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.ext216, !dbg !542
  %49 = load i16, ptr %add.ptr217, align 2, !dbg !543
  %conv218 = zext i16 %49 to i32, !dbg !543
  %add219 = add nuw nsw i32 %conv218, %conv214, !dbg !544
  %mul220 = mul nuw nsw i32 %add219, 47, !dbg !545
  %add221 = add nsw i32 %sub209, %mul220, !dbg !546
  %add.ptr225 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.neg119, !dbg !547
  %50 = load i16, ptr %add.ptr225, align 2, !dbg !548
  %conv226 = zext i16 %50 to i32, !dbg !548
  %mul227 = mul nsw i32 %cond184, %srcZres, !dbg !549
  %idx.ext228 = sext i32 %mul227 to i64, !dbg !550
  %add.ptr229 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.ext228, !dbg !550
  %51 = load i16, ptr %add.ptr229, align 2, !dbg !551
  %conv230 = zext i16 %51 to i32, !dbg !551
  %add231 = add nuw nsw i32 %conv230, %conv226, !dbg !552
  %mul232 = mul nuw nsw i32 %add231, 11, !dbg !553
  %add233 = add nsw i32 %add221, %mul232, !dbg !554
    #dbg_value(i32 %add233, !406, !DIExpression(DW_OP_plus_uconst, 2048, DW_OP_constu, 4096, DW_OP_div, DW_OP_stack_value), !409)
  %cmp236 = icmp slt i32 %add233, -6143, !dbg !555
  br i1 %cmp236, label %if.end244, label %if.else239, !dbg !557

if.else239:                                       ; preds = %for.body153
  %add234 = add nsw i32 %add233, 2048, !dbg !558
    #dbg_value(i32 %add234, !406, !DIExpression(DW_OP_constu, 4096, DW_OP_div, DW_OP_stack_value), !409)
  %div235 = sdiv i32 %add234, 4096, !dbg !559
    #dbg_value(i32 %div235, !406, !DIExpression(), !409)
  %spec.select368 = tail call i32 @llvm.smin.i32(i32 %div235, i32 %pixMax), !dbg !560
  br label %if.end244, !dbg !560

if.end244:                                        ; preds = %if.else239, %for.body153
  %result.2 = phi i32 [ 0, %for.body153 ], [ %spec.select368, %if.else239 ], !dbg !561
    #dbg_value(i32 %result.2, !406, !DIExpression(), !409)
  %conv245 = trunc i32 %result.2 to i16, !dbg !562
  store i16 %conv245, ptr %dst.3381, align 2, !dbg !563
  %add.ptr247 = getelementptr inbounds i16, ptr %dst.3381, i64 %idx.ext70, !dbg !564
    #dbg_value(ptr %add.ptr247, !408, !DIExpression(), !409)
  %add.ptr250 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.ext73, !dbg !565
    #dbg_value(ptr %add.ptr250, !407, !DIExpression(), !409)
  %add252 = add nuw nsw i32 %x.2379, 2, !dbg !566
    #dbg_value(i32 %add252, !399, !DIExpression(), !409)
  %cmp151 = icmp slt i32 %add252, %sub149, !dbg !509
  br i1 %cmp151, label %for.body153, label %for.inc254, !dbg !512, !llvm.loop !567

for.inc254:                                       ; preds = %if.end244, %for.end148
  %src.3.lcssa = phi ptr [ %src.2.lcssa, %for.end148 ], [ %add.ptr250, %if.end244 ], !dbg !409
  %dst.3.lcssa = phi ptr [ %dst.2.lcssa, %for.end148 ], [ %add.ptr247, %if.end244 ], !dbg !409
  %inc = add nuw nsw i32 %y.0385, 1, !dbg !569
    #dbg_value(ptr %dst.3.lcssa, !408, !DIExpression(), !409)
    #dbg_value(ptr %src.3.lcssa, !407, !DIExpression(), !409)
    #dbg_value(i32 %inc, !400, !DIExpression(), !409)
  %exitcond.not = icmp eq i32 %inc, %yres, !dbg !410
  br i1 %exitcond.not, label %for.end255, label %for.cond1.preheader, !dbg !413, !llvm.loop !570

for.end255:                                       ; preds = %for.inc254, %entry
  ret void, !dbg !572
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @vertical_half_1chan(ptr nocapture noundef readonly %srcPtr, i32 noundef %xres, i32 noundef %srcYres, i32 noundef %srcZres, ptr nocapture noundef writeonly %dstPtr, i32 noundef %dstZres, i32 noundef %pixMax) local_unnamed_addr #3 !dbg !573 {
entry:
    #dbg_value(ptr %srcPtr, !575, !DIExpression(), !595)
    #dbg_value(i32 %xres, !576, !DIExpression(), !595)
    #dbg_value(i32 %srcYres, !577, !DIExpression(), !595)
    #dbg_value(i32 %srcZres, !578, !DIExpression(), !595)
    #dbg_value(ptr %dstPtr, !579, !DIExpression(), !595)
    #dbg_value(i32 %dstZres, !580, !DIExpression(), !595)
    #dbg_value(i32 %pixMax, !581, !DIExpression(), !595)
  %mul = mul i32 %srcZres, %xres, !dbg !596
    #dbg_value(i32 %mul, !592, !DIExpression(), !595)
    #dbg_value(ptr %srcPtr, !593, !DIExpression(), !595)
    #dbg_value(ptr %dstPtr, !594, !DIExpression(), !595)
    #dbg_value(i32 0, !583, !DIExpression(), !595)
  %cmp18496 = icmp sgt i32 %xres, 0
  %idx.ext92 = sext i32 %mul to i64
    #dbg_value(ptr %dstPtr, !594, !DIExpression(), !595)
    #dbg_value(ptr %srcPtr, !593, !DIExpression(), !595)
    #dbg_value(i32 0, !583, !DIExpression(), !595)
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
  %0 = mul nsw i64 %idx.ext92, 6, !dbg !597
    #dbg_value(ptr poison, !594, !DIExpression(), !595)
    #dbg_value(ptr poison, !593, !DIExpression(), !595)
    #dbg_value(i32 poison, !583, !DIExpression(), !595)
    #dbg_value(i32 poison, !590, !DIExpression(DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !595)
    #dbg_value(i32 poison, !589, !DIExpression(), !595)
    #dbg_value(i32 poison, !588, !DIExpression(), !595)
    #dbg_value(i32 poison, !587, !DIExpression(), !595)
    #dbg_value(i32 0, !582, !DIExpression(), !595)
  %scevgep = getelementptr i8, ptr %srcPtr, i64 %0, !dbg !597
  br label %for.end96, !dbg !599

for.body19.us:                                    ; preds = %entry, %if.end86.us
  %dst.1499.us = phi ptr [ %add.ptr89.us, %if.end86.us ], [ %dstPtr, %entry ]
  %src.1498.us = phi ptr [ %add.ptr91.us, %if.end86.us ], [ %srcPtr, %entry ]
  %x.0497.us = phi i32 [ %inc.us, %if.end86.us ], [ 0, %entry ]
    #dbg_value(ptr %dst.1499.us, !594, !DIExpression(), !595)
    #dbg_value(ptr %src.1498.us, !593, !DIExpression(), !595)
    #dbg_value(i32 %x.0497.us, !582, !DIExpression(), !595)
  %1 = load i16, ptr %src.1498.us, align 2, !dbg !600
  %conv.us = zext i16 %1 to i32, !dbg !600
  %add.ptr.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext92, !dbg !606
  %2 = load i16, ptr %add.ptr.us, align 2, !dbg !607
  %conv20.us = zext i16 %2 to i32, !dbg !607
  %add.us = add nuw nsw i32 %conv20.us, %conv.us, !dbg !608
  %mul21.us = mul nuw nsw i32 %add.us, 225, !dbg !609
  %add.ptr28.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext27, !dbg !610
  %3 = load i16, ptr %add.ptr28.us, align 2, !dbg !611
  %conv29.us = zext i16 %3 to i32, !dbg !611
  %add30.us = add nuw nsw i32 %conv29.us, %conv.us, !dbg !612
  %mul31.us = mul nuw nsw i32 %add30.us, 69, !dbg !613
  %add32.us = add nuw nsw i32 %mul31.us, %mul21.us, !dbg !614
  %add.ptr40.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext39, !dbg !615
  %4 = load i16, ptr %add.ptr40.us, align 2, !dbg !616
  %conv41.us = zext i16 %4 to i32, !dbg !616
  %add42.us = add nuw nsw i32 %conv41.us, %conv.us, !dbg !617
  %mul43.neg.us = mul nsw i32 %add42.us, -30, !dbg !618
  %sub.us = add nsw i32 %add32.us, %mul43.neg.us, !dbg !619
  %add.ptr51.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext50, !dbg !620
  %5 = load i16, ptr %add.ptr51.us, align 2, !dbg !621
  %conv52.us = zext i16 %5 to i32, !dbg !621
  %add53.us = add nuw nsw i32 %conv52.us, %conv.us, !dbg !622
  %6 = shl nuw nsw i32 %add53.us, 4, !dbg !623
  %sub55.us = sub nsw i32 %sub.us, %6, !dbg !623
  %add.ptr63.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext62, !dbg !624
  %7 = load i16, ptr %add.ptr63.us, align 2, !dbg !625
  %conv64.us = zext i16 %7 to i32, !dbg !625
  %add65.us = add nuw nsw i32 %conv64.us, %conv.us, !dbg !626
  %mul66.us = mul nuw nsw i32 %add65.us, 6, !dbg !627
  %add67.us = add nsw i32 %sub55.us, %mul66.us, !dbg !628
  %add.ptr75.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext74, !dbg !629
  %8 = load i16, ptr %add.ptr75.us, align 2, !dbg !630
  %conv76.us = zext i16 %8 to i32, !dbg !630
  %add77.us = add nuw nsw i32 %conv76.us, %conv.us, !dbg !631
  %mul78.us = shl nuw nsw i32 %add77.us, 1, !dbg !632
  %add79.us = add nsw i32 %add67.us, %mul78.us, !dbg !633
    #dbg_value(i32 %add79.us, !591, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_constu, 512, DW_OP_div, DW_OP_stack_value), !595)
  %cmp81.us = icmp slt i32 %add79.us, -767, !dbg !634
  br i1 %cmp81.us, label %if.end86.us, label %if.else.us, !dbg !636

if.else.us:                                       ; preds = %for.body19.us
  %add80.us = add nsw i32 %add79.us, 256, !dbg !637
    #dbg_value(i32 %add80.us, !591, !DIExpression(DW_OP_constu, 512, DW_OP_div, DW_OP_stack_value), !595)
  %div.us = sdiv i32 %add80.us, 512, !dbg !638
    #dbg_value(i32 %div.us, !591, !DIExpression(), !595)
  %spec.select.us = tail call i32 @llvm.smin.i32(i32 %div.us, i32 %pixMax), !dbg !639
  br label %if.end86.us, !dbg !639

if.end86.us:                                      ; preds = %if.else.us, %for.body19.us
  %result.0.us = phi i32 [ 0, %for.body19.us ], [ %spec.select.us, %if.else.us ], !dbg !640
    #dbg_value(i32 %result.0.us, !591, !DIExpression(), !595)
  %conv87.us = trunc i32 %result.0.us to i16, !dbg !641
  store i16 %conv87.us, ptr %dst.1499.us, align 2, !dbg !642
  %add.ptr89.us = getelementptr inbounds i16, ptr %dst.1499.us, i64 %idx.ext88, !dbg !643
    #dbg_value(ptr %add.ptr89.us, !594, !DIExpression(), !595)
  %add.ptr91.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext90, !dbg !644
    #dbg_value(ptr %add.ptr91.us, !593, !DIExpression(), !595)
  %inc.us = add nuw nsw i32 %x.0497.us, 1, !dbg !645
    #dbg_value(i32 %inc.us, !582, !DIExpression(), !595)
  %exitcond.not = icmp eq i32 %inc.us, %xres, !dbg !646
  br i1 %exitcond.not, label %for.cond17.for.end_crit_edge.us, label %for.body19.us, !dbg !647, !llvm.loop !648

for.cond17.for.end_crit_edge.us:                  ; preds = %if.end86.us
  %add.ptr93.us = getelementptr inbounds i16, ptr %add.ptr91.us, i64 %idx.ext92, !dbg !650
    #dbg_value(ptr %add.ptr93.us, !593, !DIExpression(), !595)
    #dbg_value(ptr poison, !594, !DIExpression(), !595)
    #dbg_value(i64 2, !583, !DIExpression(), !595)
    #dbg_value(ptr %add.ptr89.us, !594, !DIExpression(), !595)
    #dbg_value(i1 false, !590, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !595)
    #dbg_value(i32 2, !589, !DIExpression(), !595)
    #dbg_value(i32 2, !588, !DIExpression(), !595)
    #dbg_value(i64 2, !587, !DIExpression(), !595)
    #dbg_value(i32 0, !582, !DIExpression(), !595)
  %idx.neg.us.1 = sub nsw i64 0, %idx.ext92
  %mul33.us.1 = shl nsw i32 %mul, 1
  %idx.ext34.us.1 = sext i32 %mul33.us.1 to i64
  %idx.neg35.us.1 = sub nsw i64 0, %idx.ext34.us.1
  %add.ptr59.us.1.idx = mul nsw i64 %idx.ext92, -4
  br label %for.body19.us.1, !dbg !647

for.body19.us.1:                                  ; preds = %if.end86.us.1, %for.cond17.for.end_crit_edge.us
  %dst.1499.us.1 = phi ptr [ %add.ptr89.us, %for.cond17.for.end_crit_edge.us ], [ %add.ptr89.us.1, %if.end86.us.1 ]
  %src.1498.us.1 = phi ptr [ %add.ptr93.us, %for.cond17.for.end_crit_edge.us ], [ %add.ptr91.us.1, %if.end86.us.1 ]
  %x.0497.us.1 = phi i32 [ 0, %for.cond17.for.end_crit_edge.us ], [ %inc.us.1, %if.end86.us.1 ]
    #dbg_value(ptr %dst.1499.us.1, !594, !DIExpression(), !595)
    #dbg_value(ptr %src.1498.us.1, !593, !DIExpression(), !595)
    #dbg_value(i32 %x.0497.us.1, !582, !DIExpression(), !595)
  %9 = load i16, ptr %src.1498.us.1, align 2, !dbg !600
  %conv.us.1 = zext i16 %9 to i32, !dbg !600
  %add.ptr.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext92, !dbg !606
  %10 = load i16, ptr %add.ptr.us.1, align 2, !dbg !607
  %conv20.us.1 = zext i16 %10 to i32, !dbg !607
  %add.us.1 = add nuw nsw i32 %conv20.us.1, %conv.us.1, !dbg !608
  %mul21.us.1 = mul nuw nsw i32 %add.us.1, 225, !dbg !609
  %add.ptr24.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.neg.us.1, !dbg !651
  %11 = load i16, ptr %add.ptr24.us.1, align 2, !dbg !652
  %conv25.us.1 = zext i16 %11 to i32, !dbg !652
  %add.ptr28.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext27, !dbg !610
  %12 = load i16, ptr %add.ptr28.us.1, align 2, !dbg !611
  %conv29.us.1 = zext i16 %12 to i32, !dbg !611
  %add30.us.1 = add nuw nsw i32 %conv29.us.1, %conv25.us.1, !dbg !612
  %mul31.us.1 = mul nuw nsw i32 %add30.us.1, 69, !dbg !613
  %add32.us.1 = add nuw nsw i32 %mul31.us.1, %mul21.us.1, !dbg !614
  %add.ptr36.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.neg35.us.1, !dbg !653
  %13 = load i16, ptr %add.ptr36.us.1, align 2, !dbg !654
  %conv37.us.1 = zext i16 %13 to i32, !dbg !654
  %add.ptr40.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext39, !dbg !615
  %14 = load i16, ptr %add.ptr40.us.1, align 2, !dbg !616
  %conv41.us.1 = zext i16 %14 to i32, !dbg !616
  %add42.us.1 = add nuw nsw i32 %conv41.us.1, %conv37.us.1, !dbg !617
  %mul43.neg.us.1 = mul nsw i32 %add42.us.1, -30, !dbg !618
  %sub.us.1 = add nsw i32 %add32.us.1, %mul43.neg.us.1, !dbg !619
  %add.ptr51.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext50, !dbg !620
  %15 = load i16, ptr %add.ptr51.us.1, align 2, !dbg !621
  %conv52.us.1 = zext i16 %15 to i32, !dbg !621
  %add53.us.1 = add nuw nsw i32 %conv52.us.1, %conv37.us.1, !dbg !622
  %16 = shl nuw nsw i32 %add53.us.1, 4, !dbg !623
  %sub55.us.1 = sub nsw i32 %sub.us.1, %16, !dbg !623
  %add.ptr59.us.1 = getelementptr inbounds i8, ptr %src.1498.us.1, i64 %add.ptr59.us.1.idx, !dbg !655
  %17 = load i16, ptr %add.ptr59.us.1, align 2, !dbg !656
  %conv60.us.1 = zext i16 %17 to i32, !dbg !656
  %add.ptr63.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext62, !dbg !624
  %18 = load i16, ptr %add.ptr63.us.1, align 2, !dbg !625
  %conv64.us.1 = zext i16 %18 to i32, !dbg !625
  %add65.us.1 = add nuw nsw i32 %conv64.us.1, %conv60.us.1, !dbg !626
  %mul66.us.1 = mul nuw nsw i32 %add65.us.1, 6, !dbg !627
  %add67.us.1 = add nsw i32 %sub55.us.1, %mul66.us.1, !dbg !628
  %add.ptr75.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext74, !dbg !629
  %19 = load i16, ptr %add.ptr75.us.1, align 2, !dbg !630
  %conv76.us.1 = zext i16 %19 to i32, !dbg !630
  %add77.us.1 = add nuw nsw i32 %conv76.us.1, %conv60.us.1, !dbg !631
  %mul78.us.1 = shl nuw nsw i32 %add77.us.1, 1, !dbg !632
  %add79.us.1 = add nsw i32 %add67.us.1, %mul78.us.1, !dbg !633
    #dbg_value(i32 %add79.us.1, !591, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_constu, 512, DW_OP_div, DW_OP_stack_value), !595)
  %cmp81.us.1 = icmp slt i32 %add79.us.1, -767, !dbg !634
  br i1 %cmp81.us.1, label %if.end86.us.1, label %if.else.us.1, !dbg !636

if.else.us.1:                                     ; preds = %for.body19.us.1
  %add80.us.1 = add nsw i32 %add79.us.1, 256, !dbg !637
    #dbg_value(i32 %add80.us.1, !591, !DIExpression(DW_OP_constu, 512, DW_OP_div, DW_OP_stack_value), !595)
  %div.us.1 = sdiv i32 %add80.us.1, 512, !dbg !638
    #dbg_value(i32 %div.us.1, !591, !DIExpression(), !595)
  %spec.select.us.1 = tail call i32 @llvm.smin.i32(i32 %div.us.1, i32 %pixMax), !dbg !639
  br label %if.end86.us.1, !dbg !639

if.end86.us.1:                                    ; preds = %if.else.us.1, %for.body19.us.1
  %result.0.us.1 = phi i32 [ 0, %for.body19.us.1 ], [ %spec.select.us.1, %if.else.us.1 ], !dbg !640
    #dbg_value(i32 %result.0.us.1, !591, !DIExpression(), !595)
  %conv87.us.1 = trunc i32 %result.0.us.1 to i16, !dbg !641
  store i16 %conv87.us.1, ptr %dst.1499.us.1, align 2, !dbg !642
  %add.ptr89.us.1 = getelementptr inbounds i16, ptr %dst.1499.us.1, i64 %idx.ext88, !dbg !643
    #dbg_value(ptr %add.ptr89.us.1, !594, !DIExpression(), !595)
  %add.ptr91.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext90, !dbg !644
    #dbg_value(ptr %add.ptr91.us.1, !593, !DIExpression(), !595)
  %inc.us.1 = add nuw nsw i32 %x.0497.us.1, 1, !dbg !645
    #dbg_value(i32 %inc.us.1, !582, !DIExpression(), !595)
  %exitcond.1.not = icmp eq i32 %inc.us.1, %xres, !dbg !646
  br i1 %exitcond.1.not, label %for.cond17.for.end_crit_edge.us.1, label %for.body19.us.1, !dbg !647, !llvm.loop !648

for.cond17.for.end_crit_edge.us.1:                ; preds = %if.end86.us.1
  %add.ptr93.us.1 = getelementptr inbounds i16, ptr %add.ptr91.us.1, i64 %idx.ext92, !dbg !650
    #dbg_value(ptr %add.ptr93.us.1, !593, !DIExpression(), !595)
    #dbg_value(ptr poison, !594, !DIExpression(), !595)
    #dbg_value(i64 4, !583, !DIExpression(), !595)
    #dbg_value(ptr %add.ptr89.us.1, !594, !DIExpression(), !595)
    #dbg_value(i1 false, !590, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !595)
    #dbg_value(i32 2, !589, !DIExpression(), !595)
    #dbg_value(i32 3, !588, !DIExpression(), !595)
    #dbg_value(i64 4, !587, !DIExpression(), !595)
    #dbg_value(i32 0, !582, !DIExpression(), !595)
  %idx.neg46.us.2 = sub nsw i64 0, %idx.ext39
  %add.ptr59.us.2.idx = mul nsw i64 %idx.ext92, -8
  br label %for.body19.us.2, !dbg !647

for.body19.us.2:                                  ; preds = %if.end86.us.2, %for.cond17.for.end_crit_edge.us.1
  %dst.1499.us.2 = phi ptr [ %add.ptr89.us.1, %for.cond17.for.end_crit_edge.us.1 ], [ %add.ptr89.us.2, %if.end86.us.2 ]
  %src.1498.us.2 = phi ptr [ %add.ptr93.us.1, %for.cond17.for.end_crit_edge.us.1 ], [ %add.ptr91.us.2, %if.end86.us.2 ]
  %x.0497.us.2 = phi i32 [ 0, %for.cond17.for.end_crit_edge.us.1 ], [ %inc.us.2, %if.end86.us.2 ]
    #dbg_value(ptr %dst.1499.us.2, !594, !DIExpression(), !595)
    #dbg_value(ptr %src.1498.us.2, !593, !DIExpression(), !595)
    #dbg_value(i32 %x.0497.us.2, !582, !DIExpression(), !595)
  %20 = load i16, ptr %src.1498.us.2, align 2, !dbg !600
  %conv.us.2 = zext i16 %20 to i32, !dbg !600
  %add.ptr.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext92, !dbg !606
  %21 = load i16, ptr %add.ptr.us.2, align 2, !dbg !607
  %conv20.us.2 = zext i16 %21 to i32, !dbg !607
  %add.us.2 = add nuw nsw i32 %conv20.us.2, %conv.us.2, !dbg !608
  %mul21.us.2 = mul nuw nsw i32 %add.us.2, 225, !dbg !609
  %add.ptr24.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.neg.us.1, !dbg !651
  %22 = load i16, ptr %add.ptr24.us.2, align 2, !dbg !652
  %conv25.us.2 = zext i16 %22 to i32, !dbg !652
  %add.ptr28.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext27, !dbg !610
  %23 = load i16, ptr %add.ptr28.us.2, align 2, !dbg !611
  %conv29.us.2 = zext i16 %23 to i32, !dbg !611
  %add30.us.2 = add nuw nsw i32 %conv29.us.2, %conv25.us.2, !dbg !612
  %mul31.us.2 = mul nuw nsw i32 %add30.us.2, 69, !dbg !613
  %add32.us.2 = add nuw nsw i32 %mul31.us.2, %mul21.us.2, !dbg !614
  %add.ptr36.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.neg35.us.1, !dbg !653
  %24 = load i16, ptr %add.ptr36.us.2, align 2, !dbg !654
  %conv37.us.2 = zext i16 %24 to i32, !dbg !654
  %add.ptr40.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext39, !dbg !615
  %25 = load i16, ptr %add.ptr40.us.2, align 2, !dbg !616
  %conv41.us.2 = zext i16 %25 to i32, !dbg !616
  %add42.us.2 = add nuw nsw i32 %conv41.us.2, %conv37.us.2, !dbg !617
  %mul43.neg.us.2 = mul nsw i32 %add42.us.2, -30, !dbg !618
  %sub.us.2 = add nsw i32 %add32.us.2, %mul43.neg.us.2, !dbg !619
  %add.ptr47.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.neg46.us.2, !dbg !657
  %26 = load i16, ptr %add.ptr47.us.2, align 2, !dbg !658
  %conv48.us.2 = zext i16 %26 to i32, !dbg !658
  %add.ptr51.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext50, !dbg !620
  %27 = load i16, ptr %add.ptr51.us.2, align 2, !dbg !621
  %conv52.us.2 = zext i16 %27 to i32, !dbg !621
  %add53.us.2 = add nuw nsw i32 %conv52.us.2, %conv48.us.2, !dbg !622
  %28 = shl nuw nsw i32 %add53.us.2, 4, !dbg !623
  %sub55.us.2 = sub nsw i32 %sub.us.2, %28, !dbg !623
  %add.ptr59.us.2 = getelementptr inbounds i8, ptr %src.1498.us.2, i64 %add.ptr59.us.2.idx, !dbg !655
  %29 = load i16, ptr %add.ptr59.us.2, align 2, !dbg !656
  %conv60.us.2 = zext i16 %29 to i32, !dbg !656
  %add.ptr63.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext62, !dbg !624
  %30 = load i16, ptr %add.ptr63.us.2, align 2, !dbg !625
  %conv64.us.2 = zext i16 %30 to i32, !dbg !625
  %add65.us.2 = add nuw nsw i32 %conv64.us.2, %conv60.us.2, !dbg !626
  %mul66.us.2 = mul nuw nsw i32 %add65.us.2, 6, !dbg !627
  %add67.us.2 = add nsw i32 %sub55.us.2, %mul66.us.2, !dbg !628
  %add.ptr75.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext74, !dbg !629
  %31 = load i16, ptr %add.ptr75.us.2, align 2, !dbg !630
  %conv76.us.2 = zext i16 %31 to i32, !dbg !630
  %add77.us.2 = add nuw nsw i32 %conv76.us.2, %conv60.us.2, !dbg !631
  %mul78.us.2 = shl nuw nsw i32 %add77.us.2, 1, !dbg !632
  %add79.us.2 = add nsw i32 %add67.us.2, %mul78.us.2, !dbg !633
    #dbg_value(i32 %add79.us.2, !591, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_constu, 512, DW_OP_div, DW_OP_stack_value), !595)
  %cmp81.us.2 = icmp slt i32 %add79.us.2, -767, !dbg !634
  br i1 %cmp81.us.2, label %if.end86.us.2, label %if.else.us.2, !dbg !636

if.else.us.2:                                     ; preds = %for.body19.us.2
  %add80.us.2 = add nsw i32 %add79.us.2, 256, !dbg !637
    #dbg_value(i32 %add80.us.2, !591, !DIExpression(DW_OP_constu, 512, DW_OP_div, DW_OP_stack_value), !595)
  %div.us.2 = sdiv i32 %add80.us.2, 512, !dbg !638
    #dbg_value(i32 %div.us.2, !591, !DIExpression(), !595)
  %spec.select.us.2 = tail call i32 @llvm.smin.i32(i32 %div.us.2, i32 %pixMax), !dbg !639
  br label %if.end86.us.2, !dbg !639

if.end86.us.2:                                    ; preds = %if.else.us.2, %for.body19.us.2
  %result.0.us.2 = phi i32 [ 0, %for.body19.us.2 ], [ %spec.select.us.2, %if.else.us.2 ], !dbg !640
    #dbg_value(i32 %result.0.us.2, !591, !DIExpression(), !595)
  %conv87.us.2 = trunc i32 %result.0.us.2 to i16, !dbg !641
  store i16 %conv87.us.2, ptr %dst.1499.us.2, align 2, !dbg !642
  %add.ptr89.us.2 = getelementptr inbounds i16, ptr %dst.1499.us.2, i64 %idx.ext88, !dbg !643
    #dbg_value(ptr %add.ptr89.us.2, !594, !DIExpression(), !595)
  %add.ptr91.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext90, !dbg !644
    #dbg_value(ptr %add.ptr91.us.2, !593, !DIExpression(), !595)
  %inc.us.2 = add nuw nsw i32 %x.0497.us.2, 1, !dbg !645
    #dbg_value(i32 %inc.us.2, !582, !DIExpression(), !595)
  %exitcond.2.not = icmp eq i32 %inc.us.2, %xres, !dbg !646
  br i1 %exitcond.2.not, label %for.cond17.for.end_crit_edge.us.2, label %for.body19.us.2, !dbg !647, !llvm.loop !648

for.cond17.for.end_crit_edge.us.2:                ; preds = %if.end86.us.2
  %add.ptr93.us.2 = getelementptr inbounds i16, ptr %add.ptr91.us.2, i64 %idx.ext92, !dbg !650
    #dbg_value(ptr %add.ptr93.us.2, !593, !DIExpression(), !595)
    #dbg_value(ptr poison, !594, !DIExpression(), !595)
    #dbg_value(i64 6, !583, !DIExpression(), !595)
  br label %for.end96, !dbg !599

for.end96:                                        ; preds = %for.body.preheader, %for.cond17.for.end_crit_edge.us.2
  %.us-phi = phi ptr [ %add.ptr93.us.2, %for.cond17.for.end_crit_edge.us.2 ], [ %scevgep, %for.body.preheader ], !dbg !599
  %.us-phi504 = phi ptr [ %add.ptr89.us.2, %for.cond17.for.end_crit_edge.us.2 ], [ %dstPtr, %for.body.preheader ], !dbg !599
  %sub97 = add nsw i32 %srcYres, -6, !dbg !599
    #dbg_value(i32 %sub97, !584, !DIExpression(), !595)
    #dbg_value(i32 6, !583, !DIExpression(), !595)
    #dbg_value(ptr %.us-phi504, !594, !DIExpression(), !595)
    #dbg_value(ptr %.us-phi, !593, !DIExpression(), !595)
  %cmp99510 = icmp sgt i32 %srcYres, 12, !dbg !659
  br i1 %cmp99510, label %for.cond102.preheader.lr.ph, label %for.end194, !dbg !662

for.cond102.preheader.lr.ph:                      ; preds = %for.end96
  %idx.neg113 = sub nsw i64 0, %idx.ext92
  %idx.neg125 = sub nsw i64 0, %idx.ext27
  %idx.neg137 = sub nsw i64 0, %idx.ext39
  %idx.neg149 = sub nsw i64 0, %idx.ext50
  %idx.neg161 = sub nsw i64 0, %idx.ext62
  %32 = add nsw i32 %srcYres, -13, !dbg !662
  %33 = and i32 %32, -2, !dbg !662
  br i1 %cmp18496, label %for.cond102.preheader.us, label %for.cond102.preheader.preheader

for.cond102.preheader.preheader:                  ; preds = %for.cond102.preheader.lr.ph
  %34 = zext nneg i32 %33 to i64, !dbg !662
  %35 = add nuw nsw i64 %34, 2, !dbg !662
  %36 = mul nsw i64 %35, %idx.ext92, !dbg !662
  %37 = and i32 %32, -2, !dbg !662
    #dbg_value(ptr poison, !594, !DIExpression(), !595)
    #dbg_value(ptr poison, !593, !DIExpression(), !595)
    #dbg_value(i32 poison, !583, !DIExpression(), !595)
    #dbg_value(i32 0, !582, !DIExpression(), !595)
  %scevgep537 = getelementptr i8, ptr %.us-phi, i64 %36, !dbg !662
  %38 = add nuw nsw i32 %37, 8, !dbg !662
  br label %for.end194, !dbg !663

for.cond102.preheader.us:                         ; preds = %for.cond102.preheader.lr.ph, %for.cond102.for.end189_crit_edge.us
  %dst.2513.us = phi ptr [ %add.ptr184.us, %for.cond102.for.end189_crit_edge.us ], [ %.us-phi504, %for.cond102.preheader.lr.ph ]
  %src.2512.us = phi ptr [ %add.ptr191.us, %for.cond102.for.end189_crit_edge.us ], [ %.us-phi, %for.cond102.preheader.lr.ph ]
  %y.1511.us = phi i32 [ %add193.us, %for.cond102.for.end189_crit_edge.us ], [ 6, %for.cond102.preheader.lr.ph ]
    #dbg_value(ptr %dst.2513.us, !594, !DIExpression(), !595)
    #dbg_value(ptr %src.2512.us, !593, !DIExpression(), !595)
    #dbg_value(i32 %y.1511.us, !583, !DIExpression(), !595)
    #dbg_value(ptr %dst.2513.us, !594, !DIExpression(), !595)
    #dbg_value(ptr %src.2512.us, !593, !DIExpression(), !595)
    #dbg_value(i32 0, !582, !DIExpression(), !595)
  br label %for.body105.us, !dbg !664

for.body105.us:                                   ; preds = %for.cond102.preheader.us, %if.end181.us
  %dst.3508.us = phi ptr [ %dst.2513.us, %for.cond102.preheader.us ], [ %add.ptr184.us, %if.end181.us ]
  %src.3507.us = phi ptr [ %src.2512.us, %for.cond102.preheader.us ], [ %add.ptr186.us, %if.end181.us ]
  %x.1506.us = phi i32 [ 0, %for.cond102.preheader.us ], [ %inc188.us, %if.end181.us ]
    #dbg_value(ptr %dst.3508.us, !594, !DIExpression(), !595)
    #dbg_value(ptr %src.3507.us, !593, !DIExpression(), !595)
    #dbg_value(i32 %x.1506.us, !582, !DIExpression(), !595)
  %39 = load i16, ptr %src.3507.us, align 2, !dbg !667
  %conv106.us = zext i16 %39 to i32, !dbg !667
  %add.ptr108.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext92, !dbg !670
  %40 = load i16, ptr %add.ptr108.us, align 2, !dbg !671
  %conv109.us = zext i16 %40 to i32, !dbg !671
  %add110.us = add nuw nsw i32 %conv109.us, %conv106.us, !dbg !672
  %mul111.us = mul nuw nsw i32 %add110.us, 225, !dbg !673
  %add.ptr114.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.neg113, !dbg !674
  %41 = load i16, ptr %add.ptr114.us, align 2, !dbg !675
  %conv115.us = zext i16 %41 to i32, !dbg !675
  %add.ptr118.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext27, !dbg !676
  %42 = load i16, ptr %add.ptr118.us, align 2, !dbg !677
  %conv119.us = zext i16 %42 to i32, !dbg !677
  %add120.us = add nuw nsw i32 %conv119.us, %conv115.us, !dbg !678
  %mul121.us = mul nuw nsw i32 %add120.us, 69, !dbg !679
  %add122.us = add nuw nsw i32 %mul121.us, %mul111.us, !dbg !680
  %add.ptr126.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.neg125, !dbg !681
  %43 = load i16, ptr %add.ptr126.us, align 2, !dbg !682
  %conv127.us = zext i16 %43 to i32, !dbg !682
  %add.ptr130.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext39, !dbg !683
  %44 = load i16, ptr %add.ptr130.us, align 2, !dbg !684
  %conv131.us = zext i16 %44 to i32, !dbg !684
  %add132.us = add nuw nsw i32 %conv131.us, %conv127.us, !dbg !685
  %mul133.neg.us = mul nsw i32 %add132.us, -30, !dbg !686
  %sub134.us = add nsw i32 %add122.us, %mul133.neg.us, !dbg !687
  %add.ptr138.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.neg137, !dbg !688
  %45 = load i16, ptr %add.ptr138.us, align 2, !dbg !689
  %conv139.us = zext i16 %45 to i32, !dbg !689
  %add.ptr142.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext50, !dbg !690
  %46 = load i16, ptr %add.ptr142.us, align 2, !dbg !691
  %conv143.us = zext i16 %46 to i32, !dbg !691
  %add144.us = add nuw nsw i32 %conv143.us, %conv139.us, !dbg !692
  %47 = shl nuw nsw i32 %add144.us, 4, !dbg !693
  %sub146.us = sub nsw i32 %sub134.us, %47, !dbg !693
  %add.ptr150.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.neg149, !dbg !694
  %48 = load i16, ptr %add.ptr150.us, align 2, !dbg !695
  %conv151.us = zext i16 %48 to i32, !dbg !695
  %add.ptr154.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext62, !dbg !696
  %49 = load i16, ptr %add.ptr154.us, align 2, !dbg !697
  %conv155.us = zext i16 %49 to i32, !dbg !697
  %add156.us = add nuw nsw i32 %conv155.us, %conv151.us, !dbg !698
  %mul157.us = mul nuw nsw i32 %add156.us, 6, !dbg !699
  %add158.us = add nsw i32 %sub146.us, %mul157.us, !dbg !700
  %add.ptr162.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.neg161, !dbg !701
  %50 = load i16, ptr %add.ptr162.us, align 2, !dbg !702
  %conv163.us = zext i16 %50 to i32, !dbg !702
  %add.ptr166.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext74, !dbg !703
  %51 = load i16, ptr %add.ptr166.us, align 2, !dbg !704
  %conv167.us = zext i16 %51 to i32, !dbg !704
  %add168.us = add nuw nsw i32 %conv167.us, %conv163.us, !dbg !705
  %mul169.us = shl nuw nsw i32 %add168.us, 1, !dbg !706
  %add170.us = add nsw i32 %add158.us, %mul169.us, !dbg !707
    #dbg_value(i32 %add170.us, !591, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_constu, 512, DW_OP_div, DW_OP_stack_value), !595)
  %cmp173.us = icmp slt i32 %add170.us, -767, !dbg !708
  br i1 %cmp173.us, label %if.end181.us, label %if.else176.us, !dbg !710

if.else176.us:                                    ; preds = %for.body105.us
  %add171.us = add nsw i32 %add170.us, 256, !dbg !711
    #dbg_value(i32 %add171.us, !591, !DIExpression(DW_OP_constu, 512, DW_OP_div, DW_OP_stack_value), !595)
  %div172.us = sdiv i32 %add171.us, 512, !dbg !712
    #dbg_value(i32 %div172.us, !591, !DIExpression(), !595)
  %spec.select494.us = tail call i32 @llvm.smin.i32(i32 %div172.us, i32 %pixMax), !dbg !713
  br label %if.end181.us, !dbg !713

if.end181.us:                                     ; preds = %if.else176.us, %for.body105.us
  %result.1.us = phi i32 [ 0, %for.body105.us ], [ %spec.select494.us, %if.else176.us ], !dbg !714
    #dbg_value(i32 %result.1.us, !591, !DIExpression(), !595)
  %conv182.us = trunc i32 %result.1.us to i16, !dbg !715
  store i16 %conv182.us, ptr %dst.3508.us, align 2, !dbg !716
  %add.ptr184.us = getelementptr inbounds i16, ptr %dst.3508.us, i64 %idx.ext88, !dbg !717
    #dbg_value(ptr %add.ptr184.us, !594, !DIExpression(), !595)
  %add.ptr186.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext90, !dbg !718
    #dbg_value(ptr %add.ptr186.us, !593, !DIExpression(), !595)
  %inc188.us = add nuw nsw i32 %x.1506.us, 1, !dbg !719
    #dbg_value(i32 %inc188.us, !582, !DIExpression(), !595)
  %exitcond538.not = icmp eq i32 %inc188.us, %xres, !dbg !720
  br i1 %exitcond538.not, label %for.cond102.for.end189_crit_edge.us, label %for.body105.us, !dbg !664, !llvm.loop !721

for.cond102.for.end189_crit_edge.us:              ; preds = %if.end181.us
  %add.ptr191.us = getelementptr inbounds i16, ptr %add.ptr186.us, i64 %idx.ext92, !dbg !723
    #dbg_value(ptr %add.ptr191.us, !593, !DIExpression(), !595)
  %add193.us = add nuw nsw i32 %y.1511.us, 2, !dbg !724
    #dbg_value(ptr poison, !594, !DIExpression(), !595)
    #dbg_value(i32 %add193.us, !583, !DIExpression(), !595)
  %cmp99.us = icmp slt i32 %add193.us, %sub97, !dbg !659
  br i1 %cmp99.us, label %for.cond102.preheader.us, label %for.end194.loopexit, !dbg !662, !llvm.loop !725

for.end194.loopexit:                              ; preds = %for.cond102.for.end189_crit_edge.us
  %52 = add i32 %33, 8, !dbg !662
  br label %for.end194, !dbg !663

for.end194:                                       ; preds = %for.cond102.preheader.preheader, %for.end194.loopexit, %for.end96
  %y.1.lcssa = phi i32 [ 6, %for.end96 ], [ %52, %for.end194.loopexit ], [ %38, %for.cond102.preheader.preheader ], !dbg !727
  %src.2.lcssa = phi ptr [ %.us-phi, %for.end96 ], [ %add.ptr191.us, %for.end194.loopexit ], [ %scevgep537, %for.cond102.preheader.preheader ], !dbg !595
  %dst.2.lcssa = phi ptr [ %.us-phi504, %for.end96 ], [ %add.ptr184.us, %for.end194.loopexit ], [ %.us-phi504, %for.cond102.preheader.preheader ], !dbg !728
  %sub195 = and i32 %srcYres, -2, !dbg !663
    #dbg_value(i32 %sub195, !584, !DIExpression(), !595)
    #dbg_value(i32 %y.1.lcssa, !583, !DIExpression(), !595)
    #dbg_value(ptr %dst.2.lcssa, !594, !DIExpression(), !595)
    #dbg_value(ptr %src.2.lcssa, !593, !DIExpression(), !595)
  %cmp197526 = icmp slt i32 %y.1.lcssa, %sub195, !dbg !729
  br i1 %cmp197526, label %for.body199.lr.ph, label %for.end342, !dbg !732

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
    #dbg_value(ptr %dst.4529.us, !594, !DIExpression(), !595)
    #dbg_value(ptr %src.4528.us, !593, !DIExpression(), !595)
    #dbg_value(i32 %y.2527.us, !583, !DIExpression(), !595)
  %cmp201.us = icmp slt i32 %y.2527.us, %sub200, !dbg !733
    #dbg_value(i1 %cmp201.us, !590, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !595)
  %cmp205.us = icmp slt i32 %y.2527.us, %sub204, !dbg !735
  %sub210.us = sub nsw i32 %sub200, %y.2527.us, !dbg !736
  %cond212.us = select i1 %cmp205.us, i32 2, i32 %sub210.us, !dbg !736
    #dbg_value(i32 %cond212.us, !589, !DIExpression(), !595)
  %cmp214.us = icmp slt i32 %y.2527.us, %sub213, !dbg !737
  %cond221.us = select i1 %cmp214.us, i32 3, i32 %sub210.us, !dbg !738
    #dbg_value(i32 %cond221.us, !588, !DIExpression(), !595)
  %cmp223.us = icmp slt i32 %y.2527.us, %sub222, !dbg !739
  %cond230.us = select i1 %cmp223.us, i32 4, i32 %sub210.us, !dbg !740
    #dbg_value(i32 %cond230.us, !587, !DIExpression(), !595)
  %cmp232.us = icmp slt i32 %y.2527.us, %sub231, !dbg !741
  %cond239.us = select i1 %cmp232.us, i32 5, i32 %sub210.us, !dbg !742
    #dbg_value(i32 %cond239.us, !586, !DIExpression(), !595)
  %cmp241.us = icmp slt i32 %y.2527.us, %sub97, !dbg !743
  %cond248.us = select i1 %cmp241.us, i32 6, i32 %sub210.us, !dbg !744
    #dbg_value(i32 %cond248.us, !585, !DIExpression(), !595)
    #dbg_value(i32 0, !582, !DIExpression(), !595)
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
  br label %for.body252.us, !dbg !745

for.body252.us:                                   ; preds = %for.body199.us, %if.end329.us
  %dst.5524.us = phi ptr [ %dst.4529.us, %for.body199.us ], [ %add.ptr332.us, %if.end329.us ]
  %src.5523.us = phi ptr [ %src.4528.us, %for.body199.us ], [ %add.ptr334.us, %if.end329.us ]
  %x.2522.us = phi i32 [ 0, %for.body199.us ], [ %inc336.us, %if.end329.us ]
    #dbg_value(ptr %dst.5524.us, !594, !DIExpression(), !595)
    #dbg_value(ptr %src.5523.us, !593, !DIExpression(), !595)
    #dbg_value(i32 %x.2522.us, !582, !DIExpression(), !595)
  %53 = load i16, ptr %src.5523.us, align 2, !dbg !747
  %conv253.us = zext i16 %53 to i32, !dbg !747
  %add.ptr256.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext255.us, !dbg !750
  %54 = load i16, ptr %add.ptr256.us, align 2, !dbg !751
  %conv257.us = zext i16 %54 to i32, !dbg !751
  %add258.us = add nuw nsw i32 %conv257.us, %conv253.us, !dbg !752
  %mul259.us = mul nuw nsw i32 %add258.us, 225, !dbg !753
  %add.ptr262.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.neg261, !dbg !754
  %55 = load i16, ptr %add.ptr262.us, align 2, !dbg !755
  %conv263.us = zext i16 %55 to i32, !dbg !755
  %add.ptr266.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext265.us, !dbg !756
  %56 = load i16, ptr %add.ptr266.us, align 2, !dbg !757
  %conv267.us = zext i16 %56 to i32, !dbg !757
  %add268.us = add nuw nsw i32 %conv267.us, %conv263.us, !dbg !758
  %mul269.us = mul nuw nsw i32 %add268.us, 69, !dbg !759
  %add270.us = add nuw nsw i32 %mul269.us, %mul259.us, !dbg !760
  %add.ptr274.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.neg273, !dbg !761
  %57 = load i16, ptr %add.ptr274.us, align 2, !dbg !762
  %conv275.us = zext i16 %57 to i32, !dbg !762
  %add.ptr278.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext277.us, !dbg !763
  %58 = load i16, ptr %add.ptr278.us, align 2, !dbg !764
  %conv279.us = zext i16 %58 to i32, !dbg !764
  %add280.us = add nuw nsw i32 %conv279.us, %conv275.us, !dbg !765
  %mul281.neg.us = mul nsw i32 %add280.us, -30, !dbg !766
  %sub282.us = add nsw i32 %add270.us, %mul281.neg.us, !dbg !767
  %add.ptr286.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.neg285, !dbg !768
  %59 = load i16, ptr %add.ptr286.us, align 2, !dbg !769
  %conv287.us = zext i16 %59 to i32, !dbg !769
  %add.ptr290.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext289.us, !dbg !770
  %60 = load i16, ptr %add.ptr290.us, align 2, !dbg !771
  %conv291.us = zext i16 %60 to i32, !dbg !771
  %add292.us = add nuw nsw i32 %conv291.us, %conv287.us, !dbg !772
  %61 = shl nuw nsw i32 %add292.us, 4, !dbg !773
  %sub294.us = sub nsw i32 %sub282.us, %61, !dbg !773
  %add.ptr298.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.neg297, !dbg !774
  %62 = load i16, ptr %add.ptr298.us, align 2, !dbg !775
  %conv299.us = zext i16 %62 to i32, !dbg !775
  %add.ptr302.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext301.us, !dbg !776
  %63 = load i16, ptr %add.ptr302.us, align 2, !dbg !777
  %conv303.us = zext i16 %63 to i32, !dbg !777
  %add304.us = add nuw nsw i32 %conv303.us, %conv299.us, !dbg !778
  %mul305.us = mul nuw nsw i32 %add304.us, 6, !dbg !779
  %add306.us = add nsw i32 %sub294.us, %mul305.us, !dbg !780
  %add.ptr310.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.neg309, !dbg !781
  %64 = load i16, ptr %add.ptr310.us, align 2, !dbg !782
  %conv311.us = zext i16 %64 to i32, !dbg !782
  %add.ptr314.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext313.us, !dbg !783
  %65 = load i16, ptr %add.ptr314.us, align 2, !dbg !784
  %conv315.us = zext i16 %65 to i32, !dbg !784
  %add316.us = add nuw nsw i32 %conv315.us, %conv311.us, !dbg !785
  %mul317.us = shl nuw nsw i32 %add316.us, 1, !dbg !786
  %add318.us = add nsw i32 %add306.us, %mul317.us, !dbg !787
    #dbg_value(i32 %add318.us, !591, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_constu, 512, DW_OP_div, DW_OP_stack_value), !595)
  %cmp321.us = icmp slt i32 %add318.us, -767, !dbg !788
  br i1 %cmp321.us, label %if.end329.us, label %if.else324.us, !dbg !790

if.else324.us:                                    ; preds = %for.body252.us
  %add319.us = add nsw i32 %add318.us, 256, !dbg !791
    #dbg_value(i32 %add319.us, !591, !DIExpression(DW_OP_constu, 512, DW_OP_div, DW_OP_stack_value), !595)
  %div320.us = sdiv i32 %add319.us, 512, !dbg !792
    #dbg_value(i32 %div320.us, !591, !DIExpression(), !595)
  %spec.select495.us = tail call i32 @llvm.smin.i32(i32 %div320.us, i32 %pixMax), !dbg !793
  br label %if.end329.us, !dbg !793

if.end329.us:                                     ; preds = %if.else324.us, %for.body252.us
  %result.2.us = phi i32 [ 0, %for.body252.us ], [ %spec.select495.us, %if.else324.us ], !dbg !794
    #dbg_value(i32 %result.2.us, !591, !DIExpression(), !595)
  %conv330.us = trunc i32 %result.2.us to i16, !dbg !795
  store i16 %conv330.us, ptr %dst.5524.us, align 2, !dbg !796
  %add.ptr332.us = getelementptr inbounds i16, ptr %dst.5524.us, i64 %idx.ext88, !dbg !797
    #dbg_value(ptr %add.ptr332.us, !594, !DIExpression(), !595)
  %add.ptr334.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext90, !dbg !798
    #dbg_value(ptr %add.ptr334.us, !593, !DIExpression(), !595)
  %inc336.us = add nuw nsw i32 %x.2522.us, 1, !dbg !799
    #dbg_value(i32 %inc336.us, !582, !DIExpression(), !595)
  %exitcond539.not = icmp eq i32 %inc336.us, %xres, !dbg !800
  br i1 %exitcond539.not, label %for.cond249.for.end337_crit_edge.us, label %for.body252.us, !dbg !745, !llvm.loop !801

for.cond249.for.end337_crit_edge.us:              ; preds = %if.end329.us
  %add.ptr339.us = getelementptr inbounds i16, ptr %add.ptr334.us, i64 %idx.ext92, !dbg !803
    #dbg_value(ptr %add.ptr339.us, !593, !DIExpression(), !595)
  %add341.us = add nuw nsw i32 %y.2527.us, 2, !dbg !804
    #dbg_value(ptr poison, !594, !DIExpression(), !595)
    #dbg_value(i32 %add341.us, !583, !DIExpression(), !595)
  %cmp197.us = icmp slt i32 %add341.us, %sub195, !dbg !729
  br i1 %cmp197.us, label %for.body199.us, label %for.end342, !dbg !732, !llvm.loop !805

for.end342:                                       ; preds = %for.cond249.for.end337_crit_edge.us, %for.body199.lr.ph, %for.end194
  ret void, !dbg !807
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ReadTIFFImage(ptr nocapture noundef readonly %p_Inp, ptr noundef %input_file, i32 noundef %FrameNoInFile, ptr nocapture noundef readonly %source, ptr nocapture noundef writeonly %buf) local_unnamed_addr #5 !dbg !2 {
entry:
  %buf586 = ptrtoint ptr %buf to i64
  %path = alloca [255 x i8], align 16, !DIAssignID !808
    #dbg_assign(i1 undef, !266, !DIExpression(), !808, ptr %path, !DIExpression(), !809)
    #dbg_value(ptr %p_Inp, !261, !DIExpression(), !809)
    #dbg_value(ptr %input_file, !262, !DIExpression(), !809)
    #dbg_value(i32 %FrameNoInFile, !263, !DIExpression(), !809)
    #dbg_value(ptr %source, !264, !DIExpression(), !809)
    #dbg_value(ptr %buf, !265, !DIExpression(), !809)
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %path) #17, !dbg !810
    #dbg_value(ptr null, !300, !DIExpression(), !809)
    #dbg_value(ptr null, !301, !DIExpression(), !809)
  %width1 = getelementptr inbounds i8, ptr %source, i64 16, !dbg !811
  %0 = load i32, ptr %width1, align 8, !dbg !812
    #dbg_value(i32 %0, !272, !DIExpression(), !809)
  %height2 = getelementptr inbounds i8, ptr %source, i64 28, !dbg !813
  %1 = load i32, ptr %height2, align 4, !dbg !814
    #dbg_value(i32 %1, !270, !DIExpression(), !809)
  %color_model = getelementptr inbounds i8, ptr %source, i64 4, !dbg !815
  %2 = load i32, ptr %color_model, align 4, !dbg !815
  %cmp = icmp eq i32 %2, 1, !dbg !817
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !818

land.lhs.true:                                    ; preds = %entry
  %is_interleaved = getelementptr inbounds i8, ptr %input_file, i64 916, !dbg !819
  %3 = load i32, ptr %is_interleaved, align 4, !dbg !819
  %tobool.not = icmp eq i32 %3, 0, !dbg !820
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !821

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr @stderr, align 8, !dbg !822
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 102, i64 1, ptr %4) #18, !dbg !824
  br label %if.end173, !dbg !825

if.end:                                           ; preds = %land.lhs.true, %entry
    #dbg_value(!DIArgList(i32 poison, i32 poison), !267, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !809)
  %num_digits = getelementptr inbounds i8, ptr %input_file, i64 924, !dbg !826
  %6 = load i32, ptr %num_digits, align 4, !dbg !826
  %cmp4 = icmp sgt i32 %6, 0, !dbg !828
  br i1 %cmp4, label %if.then5, label %if.else25, !dbg !829

if.then5:                                         ; preds = %if.end
  %start_frame = getelementptr inbounds i8, ptr %p_Inp, i64 3992, !dbg !830
  %7 = load i32, ptr %start_frame, align 8, !dbg !830
    #dbg_value(!DIArgList(i32 %7, i32 %FrameNoInFile), !267, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !809)
  %add = add nsw i32 %7, %FrameNoInFile, !dbg !831
    #dbg_value(i32 %add, !267, !DIExpression(), !809)
  %zero_pad = getelementptr inbounds i8, ptr %input_file, i64 920, !dbg !832
  %8 = load i32, ptr %zero_pad, align 8, !dbg !832
  %tobool6.not = icmp eq i32 %8, 0, !dbg !835
  %fhead13 = getelementptr inbounds i8, ptr %input_file, i64 255, !dbg !836
  %ftail16 = getelementptr inbounds i8, ptr %input_file, i64 510, !dbg !836
    #dbg_value(i32 %call18, !268, !DIExpression(), !809)
  %.str.2..str.1 = select i1 %tobool6.not, ptr @.str.2, ptr @.str.1
  %call18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %path, i64 noundef 255, ptr noundef nonnull %.str.2..str.1, ptr noundef nonnull %fhead13, i32 noundef %6, i32 noundef %add, ptr noundef nonnull %ftail16) #17, !dbg !836
  switch i32 %call18, label %if.end29 [
    i32 -1, label %if.then22
    i32 255, label %if.then22
  ], !dbg !837

if.then22:                                        ; preds = %if.then5, %if.then5
  %9 = load ptr, ptr @stderr, align 8, !dbg !839
  %10 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 39, i64 1, ptr %9) #18, !dbg !841
  br label %cleanup, !dbg !842

if.else25:                                        ; preds = %if.end
  %call28 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %path, ptr noundef nonnull dereferenceable(1) %input_file) #17, !dbg !843
  br label %if.end29

if.end29:                                         ; preds = %if.then5, %if.else25
    #dbg_value(ptr @ReadTIFFImage.t, !845, !DIExpression(), !853)
    #dbg_value(ptr %path, !851, !DIExpression(), !853)
    #dbg_value(ptr @ReadTIFFImage.t, !856, !DIExpression(), !870)
    #dbg_value(ptr %path, !863, !DIExpression(), !870)
    #dbg_value(i8 1, !867, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !870)
    #dbg_value(i24 0, !867, !DIExpression(DW_OP_LLVM_fragment, 8, 24), !870)
    #dbg_value(i32 1, !868, !DIExpression(), !870)
  %call.i.i = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %path, i32 noundef 0) #17, !dbg !873
    #dbg_value(i32 %call.i.i, !869, !DIExpression(), !870)
  %cmp2.i.i = icmp eq i32 %call.i.i, -1, !dbg !874
  br i1 %cmp2.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !876

if.then.i.i:                                      ; preds = %if.end29
  %11 = load ptr, ptr @stderr, align 8, !dbg !877
  %call4.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull %path) #19, !dbg !879
  br label %Error.i, !dbg !880

if.end.i.i:                                       ; preds = %if.end29
  %call5.i.i = call i64 @lseek(i32 noundef %call.i.i, i64 noundef 0, i32 noundef 2) #17, !dbg !881
    #dbg_value(i64 %call5.i.i, !864, !DIExpression(), !870)
  %cmp6.i.i = icmp eq i64 %call5.i.i, -1, !dbg !882
  br i1 %cmp6.i.i, label %Error.i, label %if.end9.i.i, !dbg !884

if.end9.i.i:                                      ; preds = %if.end.i.i
  %call10.i.i = call i64 @lseek(i32 noundef %call.i.i, i64 noundef 0, i32 noundef 0) #17, !dbg !885
  %cmp11.i.i = icmp eq i64 %call10.i.i, -1, !dbg !887
  br i1 %cmp11.i.i, label %Error.i, label %if.end14.i.i, !dbg !888

if.end14.i.i:                                     ; preds = %if.end9.i.i
  %12 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8, !dbg !889
  %call15.i.i = call ptr @realloc(ptr noundef %12, i64 noundef %call5.i.i) #20, !dbg !890
  store ptr %call15.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8, !dbg !891
  %cmp18.i.i = icmp eq ptr %call15.i.i, null, !dbg !892
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.end22.i.i, !dbg !894

if.then20.i.i:                                    ; preds = %if.end14.i.i
  %call21.i.i = call i32 @close(i32 noundef %call.i.i) #17, !dbg !895
  br label %Error.i, !dbg !897

if.end22.i.i:                                     ; preds = %if.end14.i.i
  %call24.i.i = call i64 @read(i32 noundef %call.i.i, ptr noundef nonnull %call15.i.i, i64 noundef %call5.i.i) #17, !dbg !898
    #dbg_value(i64 %call24.i.i, !865, !DIExpression(), !870)
  %cmp25.not.i.i = icmp eq i64 %call24.i.i, %call5.i.i, !dbg !899
  %call30.i.i = call i32 @close(i32 noundef %call.i.i) #17, !dbg !870
  br i1 %cmp25.not.i.i, label %if.end29.i.i, label %Error.i, !dbg !901

if.end29.i.i:                                     ; preds = %if.end22.i.i
  %13 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8, !dbg !902
  %14 = load i8, ptr %13, align 1, !dbg !903
  %conv32.i.i = zext i8 %14 to i16, !dbg !903
  %shl.i.i = shl nuw i16 %conv32.i.i, 8, !dbg !904
  %arrayidx34.i.i = getelementptr inbounds i8, ptr %13, i64 1, !dbg !905
  %15 = load i8, ptr %arrayidx34.i.i, align 1, !dbg !905
  %conv35.i.i = zext i8 %15 to i16, !dbg !905
  %or.i.i = or disjoint i16 %shl.i.i, %conv35.i.i, !dbg !906
    #dbg_value(!DIArgList(i8 %14, i8 %15), !866, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !870)
  switch i16 %or.i.i, label %Error.thread.i [
    i16 18761, label %19
    i16 19789, label %if.end.i
  ], !dbg !907

Error.thread.i:                                   ; preds = %if.end29.i.i
  %16 = load ptr, ptr @stderr, align 8, !dbg !908
  %17 = call i64 @fwrite(ptr nonnull @.str.10, i64 43, i64 1, ptr %16) #18, !dbg !910
  %18 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8, !dbg !911
  call void @free(ptr noundef %18) #17, !dbg !912
    #dbg_label(!852, !913)
  br label %if.end16.i, !dbg !914

19:                                               ; preds = %if.end29.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %19, %if.end29.i.i
  %storemerge.i.i = phi i32 [ 1, %19 ], [ 0, %if.end29.i.i ], !dbg !915
  %20 = phi ptr [ @getU16, %19 ], [ @getSwappedU16, %if.end29.i.i ]
  %21 = phi ptr [ @getU32, %19 ], [ @getSwappedU32, %if.end29.i.i ]
  store i32 %storemerge.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 24), align 8, !dbg !915
  store ptr %20, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8728), align 8, !dbg !916
  store ptr %21, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8736), align 8, !dbg !916
    #dbg_value(ptr @ReadTIFFImage.t, !918, !DIExpression(), !923)
    #dbg_value(ptr @ReadTIFFImage.t, !926, !DIExpression(), !937)
  store ptr %arrayidx34.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !939
  %22 = load i8, ptr %13, align 1, !dbg !940
    #dbg_value(i8 %22, !931, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !937)
  %incdec.ptr2.i.i.i = getelementptr inbounds i8, ptr %13, i64 2, !dbg !941
  store ptr %incdec.ptr2.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !941
  %23 = load i8, ptr %arrayidx34.i.i, align 1, !dbg !942
    #dbg_value(i8 %23, !931, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !937)
  %u.sroa.4.0.insert.ext.i.i.i = zext i8 %23 to i16, !dbg !943
  %u.sroa.4.0.insert.shift.i.i.i = shl nuw i16 %u.sroa.4.0.insert.ext.i.i.i, 8, !dbg !943
  %u.sroa.0.0.insert.ext.i.i.i = zext i8 %22 to i16, !dbg !943
  %u.sroa.0.0.insert.insert.i.i.i = or disjoint i16 %u.sroa.4.0.insert.shift.i.i.i, %u.sroa.0.0.insert.ext.i.i.i, !dbg !943
  store i16 %u.sroa.0.0.insert.insert.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 32), align 8, !dbg !944
    #dbg_value(ptr @ReadTIFFImage.t, !926, !DIExpression(), !945)
  %incdec.ptr.i22.i.i = getelementptr inbounds i8, ptr %13, i64 3, !dbg !947
  store ptr %incdec.ptr.i22.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !947
  %24 = load i8, ptr %incdec.ptr2.i.i.i, align 1, !dbg !948
    #dbg_value(i8 %24, !931, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !945)
  %incdec.ptr2.i23.i.i = getelementptr inbounds i8, ptr %13, i64 4, !dbg !949
  store ptr %incdec.ptr2.i23.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !949
  %25 = load i8, ptr %incdec.ptr.i22.i.i, align 1, !dbg !950
    #dbg_value(i8 %25, !931, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !945)
  %u.sroa.4.0.insert.ext.i24.i.i = zext i8 %25 to i16, !dbg !951
  %u.sroa.4.0.insert.shift.i25.i.i = shl nuw i16 %u.sroa.4.0.insert.ext.i24.i.i, 8, !dbg !951
  %u.sroa.0.0.insert.ext.i26.i.i = zext i8 %24 to i16, !dbg !951
  %u.sroa.0.0.insert.insert.i27.i.i = or disjoint i16 %u.sroa.4.0.insert.shift.i25.i.i, %u.sroa.0.0.insert.ext.i26.i.i, !dbg !951
  store i16 %u.sroa.0.0.insert.insert.i27.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 34), align 2, !dbg !952
    #dbg_value(ptr @ReadTIFFImage.t, !953, !DIExpression(), !964)
  %incdec.ptr.i28.i.i = getelementptr inbounds i8, ptr %13, i64 5, !dbg !966
  store ptr %incdec.ptr.i28.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !966
  %26 = load i8, ptr %incdec.ptr2.i23.i.i, align 1, !dbg !967
    #dbg_value(i8 %26, !956, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !964)
  %incdec.ptr2.i29.i.i = getelementptr inbounds i8, ptr %13, i64 6, !dbg !968
  store ptr %incdec.ptr2.i29.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !968
  %27 = load i8, ptr %incdec.ptr.i28.i.i, align 1, !dbg !969
    #dbg_value(i8 %27, !956, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !964)
  %incdec.ptr5.i.i.i = getelementptr inbounds i8, ptr %13, i64 7, !dbg !970
  store ptr %incdec.ptr5.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !970
  %28 = load i8, ptr %incdec.ptr2.i29.i.i, align 1, !dbg !971
    #dbg_value(i8 %28, !956, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !964)
  %incdec.ptr8.i.i.i = getelementptr inbounds i8, ptr %13, i64 8, !dbg !972
  store ptr %incdec.ptr8.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !972
  %29 = load i8, ptr %incdec.ptr5.i.i.i, align 1, !dbg !973
    #dbg_value(i8 %29, !956, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !964)
  %u.sroa.6.0.insert.ext.i.i.i = zext i8 %29 to i32, !dbg !974
  %u.sroa.6.0.insert.shift.i.i.i = shl nuw i32 %u.sroa.6.0.insert.ext.i.i.i, 24, !dbg !974
  %u.sroa.5.0.insert.ext.i.i.i = zext i8 %28 to i32, !dbg !974
  %u.sroa.5.0.insert.shift.i.i.i = shl nuw nsw i32 %u.sroa.5.0.insert.ext.i.i.i, 16, !dbg !974
  %u.sroa.4.0.insert.ext.i30.i.i = zext i8 %27 to i32, !dbg !974
  %u.sroa.4.0.insert.shift.i31.i.i = shl nuw nsw i32 %u.sroa.4.0.insert.ext.i30.i.i, 8, !dbg !974
  %u.sroa.0.0.insert.ext.i32.i.i = zext i8 %26 to i32, !dbg !974
  %u.sroa.5.0.insert.insert.i.i.i = or disjoint i32 %u.sroa.4.0.insert.shift.i31.i.i, %u.sroa.0.0.insert.ext.i32.i.i, !dbg !974
  %u.sroa.4.0.insert.insert.i.i.i = or disjoint i32 %u.sroa.5.0.insert.insert.i.i.i, %u.sroa.5.0.insert.shift.i.i.i, !dbg !974
  %u.sroa.0.0.insert.insert.i33.i.i = or disjoint i32 %u.sroa.4.0.insert.insert.i.i.i, %u.sroa.6.0.insert.shift.i.i.i, !dbg !974
  store i32 %u.sroa.0.0.insert.insert.i33.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 36), align 4, !dbg !975
  %cmp.not.i.i = icmp eq i16 %u.sroa.0.0.insert.insert.i27.i.i, 42, !dbg !976
  br i1 %cmp.not.i.i, label %if.end4.i, label %readImageFileHeader.exit.i, !dbg !978

readImageFileHeader.exit.i:                       ; preds = %if.end.i
  %30 = load ptr, ptr @stderr, align 8, !dbg !979
  %31 = call i64 @fwrite(ptr nonnull @.str.11, i64 32, i64 1, ptr %30) #18, !dbg !981
  br label %Error.i, !dbg !982

if.end4.i:                                        ; preds = %if.end.i
  %idx.ext.i.i = zext i32 %u.sroa.0.0.insert.insert.i33.i.i to i64, !dbg !983
  %add.ptr.i.i = getelementptr inbounds i8, ptr %13, i64 %idx.ext.i.i, !dbg !983
  store ptr %add.ptr.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !984
    #dbg_value(ptr @ReadTIFFImage.t, !985, !DIExpression(), !990)
  %call.i36.i = call i32 %20(ptr noundef nonnull @ReadTIFFImage.t) #17, !dbg !993
    #dbg_value(i32 %call.i36.i, !989, !DIExpression(), !990)
    #dbg_value(i32 0, !988, !DIExpression(), !990)
  %cmp1.not.i.i = icmp eq i32 %call.i36.i, 0, !dbg !994
  br i1 %cmp1.not.i.i, label %readImageFileDirectory.exit.i, label %for.body.i.i, !dbg !997

for.body.i.i:                                     ; preds = %if.end4.i, %readDirectoryEntry.exit.i.i
  %i.02.i.i = phi i32 [ %inc.i.i, %readDirectoryEntry.exit.i.i ], [ 0, %if.end4.i ]
    #dbg_value(i32 %i.02.i.i, !988, !DIExpression(), !990)
    #dbg_value(ptr @ReadTIFFImage.t, !998, !DIExpression(), !1005)
  %32 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8728), align 8, !dbg !1008
  %call.i.i.i = call i32 %32(ptr noundef nonnull @ReadTIFFImage.t) #17, !dbg !1009
    #dbg_value(i32 %call.i.i.i, !1001, !DIExpression(), !1005)
  %33 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8728), align 8, !dbg !1010
  %call2.i.i.i = call i32 %33(ptr noundef nonnull @ReadTIFFImage.t) #17, !dbg !1011
    #dbg_value(i32 %call2.i.i.i, !1002, !DIExpression(), !1005)
  %34 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8736), align 8, !dbg !1012
  %call3.i.i.i = call i32 %34(ptr noundef nonnull @ReadTIFFImage.t) #17, !dbg !1013
    #dbg_value(i32 %call3.i.i.i, !1003, !DIExpression(), !1005)
  %35 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8736), align 8, !dbg !1014
  %call5.i.i.i = call i32 %35(ptr noundef nonnull @ReadTIFFImage.t) #17, !dbg !1015
    #dbg_value(i32 %call5.i.i.i, !1004, !DIExpression(), !1005)
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
  ], !dbg !1016

sw.bb.i.i.i:                                      ; preds = %for.body.i.i
  store i32 %call5.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 64), align 8, !dbg !1017
  br label %readDirectoryEntry.exit.i.i, !dbg !1019

sw.bb6.i.i.i:                                     ; preds = %for.body.i.i
  store i32 %call5.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 60), align 4, !dbg !1020
  %cmp.i.i.i = icmp ugt i32 %call5.i.i.i, 1080, !dbg !1021
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %readDirectoryEntry.exit.i.i, !dbg !1023

if.then.i.i.i:                                    ; preds = %sw.bb6.i.i.i
  %36 = load ptr, ptr @stderr, align 8, !dbg !1024
  %call7.i.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.12, i32 noundef %call5.i.i.i, i32 noundef 1080) #19, !dbg !1026
  br label %readDirectoryEntry.exit.i.i, !dbg !1027

sw.bb8.i.i.i:                                     ; preds = %for.body.i.i
  %cmp9.not.i.i.i = icmp eq i32 %call3.i.i.i, 3, !dbg !1028
  br i1 %cmp9.not.i.i.i, label %if.end12.i.i.i, label %if.then10.i.i.i, !dbg !1030

if.then10.i.i.i:                                  ; preds = %sw.bb8.i.i.i
  %37 = load ptr, ptr @stderr, align 8, !dbg !1031
  %38 = call i64 @fwrite(ptr nonnull @.str.13, i64 35, i64 1, ptr %37) #18, !dbg !1033
  br label %readDirectoryEntry.exit.i.i, !dbg !1034

if.end12.i.i.i:                                   ; preds = %sw.bb8.i.i.i
  call fastcc void @getIntArray(i32 noundef %call5.i.i.i, i32 noundef %call2.i.i.i, ptr noundef nonnull getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 44), i32 noundef 3), !dbg !1035
  %39 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 44), align 4, !dbg !1036
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 48), align 8, !dbg !1038
  %cmp16.not.i.i.i = icmp eq i32 %39, %40, !dbg !1039
  %41 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 52), align 4
  %cmp21.not.i.i.i = icmp eq i32 %39, %41
  %or.cond.i.i.i = select i1 %cmp16.not.i.i.i, i1 %cmp21.not.i.i.i, i1 false, !dbg !1040
  br i1 %or.cond.i.i.i, label %if.end24.i.i.i, label %if.then22.i.i.i, !dbg !1040

if.then22.i.i.i:                                  ; preds = %if.end12.i.i.i
  %42 = load ptr, ptr @stderr, align 8, !dbg !1041
  %43 = call i64 @fwrite(ptr nonnull @.str.14, i64 47, i64 1, ptr %42) #18, !dbg !1043
  br label %readDirectoryEntry.exit.i.i, !dbg !1044

if.end24.i.i.i:                                   ; preds = %if.end12.i.i.i
  switch i32 %39, label %if.then31.i.i.i [
    i32 8, label %readDirectoryEntry.exit.i.i
    i32 16, label %readDirectoryEntry.exit.i.i
  ], !dbg !1045

if.then31.i.i.i:                                  ; preds = %if.end24.i.i.i
  %44 = load ptr, ptr @stderr, align 8, !dbg !1047
  %45 = call i64 @fwrite(ptr nonnull @.str.15, i64 40, i64 1, ptr %44) #18, !dbg !1049
  br label %readDirectoryEntry.exit.i.i, !dbg !1050

sw.bb34.i.i.i:                                    ; preds = %for.body.i.i
  %cmp35.not.i.i.i = icmp eq i32 %call5.i.i.i, 1, !dbg !1051
  br i1 %cmp35.not.i.i.i, label %readDirectoryEntry.exit.i.i, label %if.then36.i.i.i, !dbg !1053

if.then36.i.i.i:                                  ; preds = %sw.bb34.i.i.i
  %46 = load ptr, ptr @stderr, align 8, !dbg !1054
  %47 = call i64 @fwrite(ptr nonnull @.str.16, i64 39, i64 1, ptr %46) #18, !dbg !1056
  br label %readDirectoryEntry.exit.i.i, !dbg !1057

sw.bb40.i.i.i:                                    ; preds = %for.body.i.i
  call fastcc void @getIntArray(i32 noundef %call5.i.i.i, i32 noundef %call2.i.i.i, ptr noundef nonnull getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 4388), i32 noundef %call3.i.i.i), !dbg !1058
  store i32 %call3.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 28), align 4, !dbg !1059
  br label %readDirectoryEntry.exit.i.i, !dbg !1060

sw.bb42.i.i.i:                                    ; preds = %for.body.i.i
  %conv.i.i.i = trunc i32 %call5.i.i.i to i16, !dbg !1061
  store i16 %conv.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 40), align 8, !dbg !1062
  %conv44.i.i.i = and i32 %call5.i.i.i, 65535, !dbg !1063
  %cmp45.not.i.i.i = icmp eq i32 %conv44.i.i.i, 1, !dbg !1065
  br i1 %cmp45.not.i.i.i, label %readDirectoryEntry.exit.i.i, label %if.then47.i.i.i, !dbg !1066

if.then47.i.i.i:                                  ; preds = %sw.bb42.i.i.i
  %48 = load ptr, ptr @stderr, align 8, !dbg !1067
  %49 = call i64 @fwrite(ptr nonnull @.str.17, i64 32, i64 1, ptr %48) #18, !dbg !1069
  br label %readDirectoryEntry.exit.i.i, !dbg !1070

sw.bb51.i.i.i:                                    ; preds = %for.body.i.i
  store i32 %call5.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 56), align 8, !dbg !1071
  br label %readDirectoryEntry.exit.i.i, !dbg !1072

sw.bb52.i.i.i:                                    ; preds = %for.body.i.i
  call fastcc void @getIntArray(i32 noundef %call5.i.i.i, i32 noundef %call2.i.i.i, ptr noundef nonnull getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 68), i32 noundef %call3.i.i.i), !dbg !1073
  br label %readDirectoryEntry.exit.i.i, !dbg !1074

sw.bb54.i.i.i:                                    ; preds = %for.body.i.i
  call fastcc void @getIntArray(i32 noundef %call5.i.i.i, i32 noundef %call2.i.i.i, ptr noundef nonnull getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8708), i32 noundef 1), !dbg !1075
  br label %readDirectoryEntry.exit.i.i, !dbg !1076

sw.bb56.i.i.i:                                    ; preds = %for.body.i.i
  call fastcc void @getIntArray(i32 noundef %call5.i.i.i, i32 noundef %call2.i.i.i, ptr noundef nonnull getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8716), i32 noundef 1), !dbg !1077
  br label %readDirectoryEntry.exit.i.i, !dbg !1078

readDirectoryEntry.exit.i.i:                      ; preds = %sw.bb56.i.i.i, %sw.bb54.i.i.i, %sw.bb52.i.i.i, %sw.bb51.i.i.i, %if.then47.i.i.i, %sw.bb42.i.i.i, %sw.bb40.i.i.i, %if.then36.i.i.i, %sw.bb34.i.i.i, %if.then31.i.i.i, %if.end24.i.i.i, %if.end24.i.i.i, %if.then22.i.i.i, %if.then10.i.i.i, %if.then.i.i.i, %sw.bb6.i.i.i, %sw.bb.i.i.i, %for.body.i.i
  %inc.i.i = add nuw i32 %i.02.i.i, 1, !dbg !1079
    #dbg_value(i32 %inc.i.i, !988, !DIExpression(), !990)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call.i36.i, !dbg !994
  br i1 %exitcond.not.i.i, label %readImageFileDirectory.exit.i, label %for.body.i.i, !dbg !997, !llvm.loop !1080

readImageFileDirectory.exit.i:                    ; preds = %readDirectoryEntry.exit.i.i, %if.end4.i
    #dbg_value(ptr @ReadTIFFImage.t, !1082, !DIExpression(), !1092)
  %50 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 64), align 8, !dbg !1095
  %51 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 60), align 4, !dbg !1096
  %mul.i.i = mul i32 %50, 6, !dbg !1097
  %mul2.i.i = mul i32 %mul.i.i, %51, !dbg !1098
    #dbg_value(i32 %mul2.i.i, !1091, !DIExpression(), !1092)
  %52 = load ptr, ptr @ReadTIFFImage.t, align 8, !dbg !1099
  %conv4.i.i = zext i32 %mul2.i.i to i64, !dbg !1100
  %call.i37.i = call ptr @realloc(ptr noundef %52, i64 noundef %conv4.i.i) #20, !dbg !1101
  store ptr %call.i37.i, ptr @ReadTIFFImage.t, align 8, !dbg !1102
  %cmp.i.i = icmp eq ptr %call.i37.i, null, !dbg !1103
  br i1 %cmp.i.i, label %Error.i, label %if.end.i38.i, !dbg !1105

if.end.i38.i:                                     ; preds = %readImageFileDirectory.exit.i
  %53 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 44), align 4, !dbg !1106
  switch i32 %53, label %if.end34 [
    i32 8, label %for.cond.preheader.i.i
    i32 16, label %sw.bb23.i.i
  ], !dbg !1107

for.cond.preheader.i.i:                           ; preds = %if.end.i38.i
    #dbg_value(ptr %call.i37.i, !1090, !DIExpression(), !1092)
    #dbg_value(i32 0, !1085, !DIExpression(), !1092)
  %54 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 28), align 4, !dbg !1108
  %cmp912.i.i = icmp sgt i32 %54, 0, !dbg !1112
  br i1 %cmp912.i.i, label %for.body.i47.i, label %if.end34, !dbg !1113

for.body.i47.i:                                   ; preds = %for.cond.preheader.i.i, %for.inc20.i.i
  %55 = phi i32 [ %88, %for.inc20.i.i ], [ %54, %for.cond.preheader.i.i ]
  %indvars.iv17.i.i = phi i64 [ %indvars.iv.next18.i.i, %for.inc20.i.i ], [ 0, %for.cond.preheader.i.i ]
  %p.014.i.i = phi ptr [ %p.1.lcssa.i.i, %for.inc20.i.i ], [ %call.i37.i, %for.cond.preheader.i.i ]
    #dbg_value(ptr %p.014.i.i, !1090, !DIExpression(), !1092)
    #dbg_value(i64 %indvars.iv17.i.i, !1085, !DIExpression(), !1092)
  %arrayidx11.i.i = getelementptr inbounds [1080 x i32], ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 68), i64 0, i64 %indvars.iv17.i.i, !dbg !1114
  %56 = load i32, ptr %arrayidx11.i.i, align 4, !dbg !1114
    #dbg_value(i32 %56, !1087, !DIExpression(), !1092)
    #dbg_value(!DIArgList(ptr poison, i32 poison), !1089, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !1092)
    #dbg_value(i32 0, !1086, !DIExpression(), !1092)
  %cmp157.i.i = icmp sgt i32 %56, 0, !dbg !1116
  br i1 %cmp157.i.i, label %for.body17.preheader.i.i, label %for.inc20.i.i, !dbg !1119

for.body17.preheader.i.i:                         ; preds = %for.body.i47.i
  %57 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8, !dbg !1120
  %arrayidx13.i.i = getelementptr inbounds [1080 x i32], ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 4388), i64 0, i64 %indvars.iv17.i.i, !dbg !1121
  %58 = load i32, ptr %arrayidx13.i.i, align 4, !dbg !1121
    #dbg_value(!DIArgList(ptr %57, i32 %58), !1089, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !1092)
  %idx.ext.i48.i = zext i32 %58 to i64, !dbg !1122
    #dbg_value(!DIArgList(ptr %57, i64 %idx.ext.i48.i), !1089, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1092)
  %add.ptr.i49.i = getelementptr i8, ptr %57, i64 %idx.ext.i48.i, !dbg !1122
    #dbg_value(ptr %add.ptr.i49.i, !1089, !DIExpression(), !1092)
  %59 = zext nneg i32 %56 to i64, !dbg !1119
  %min.iters.check = icmp ult i32 %56, 32, !dbg !1119
  br i1 %min.iters.check, label %for.body17.i.i.preheader, label %vector.memcheck, !dbg !1119

vector.memcheck:                                  ; preds = %for.body17.preheader.i.i
  %scevgep = getelementptr i8, ptr %p.014.i.i, i64 2, !dbg !1119
  %60 = add nsw i32 %56, -1, !dbg !1119
  %61 = zext i32 %60 to i64, !dbg !1119
  %62 = shl nuw nsw i64 %61, 1, !dbg !1119
  %scevgep412 = getelementptr i8, ptr %scevgep, i64 %62, !dbg !1119
  %scevgep413 = getelementptr i8, ptr %57, i64 1, !dbg !1119
  %63 = getelementptr i8, ptr %scevgep413, i64 %idx.ext.i48.i, !dbg !1119
  %scevgep414 = getelementptr i8, ptr %63, i64 %61, !dbg !1119
  %bound0 = icmp ult ptr %p.014.i.i, %scevgep414, !dbg !1119
  %bound1 = icmp ult ptr %add.ptr.i49.i, %scevgep412, !dbg !1119
  %found.conflict = and i1 %bound0, %bound1, !dbg !1119
  br i1 %found.conflict, label %for.body17.i.i.preheader, label %vector.ph, !dbg !1119

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %59, 2147483616, !dbg !1119
  %64 = shl nuw nsw i64 %n.vec, 1, !dbg !1119
  %ind.end = getelementptr i8, ptr %p.014.i.i, i64 %64, !dbg !1119
  %ind.end415 = getelementptr i8, ptr %add.ptr.i49.i, i64 %n.vec, !dbg !1119
  %ind.end417 = trunc nuw nsw i64 %n.vec to i32, !dbg !1119
  br label %vector.body, !dbg !1119

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1, !dbg !1119
  %next.gep = getelementptr i8, ptr %p.014.i.i, i64 %offset.idx
  %next.gep422 = getelementptr i8, ptr %add.ptr.i49.i, i64 %index
  %65 = getelementptr i8, ptr %next.gep422, i64 8, !dbg !1123
  %66 = getelementptr i8, ptr %next.gep422, i64 16, !dbg !1123
  %67 = getelementptr i8, ptr %next.gep422, i64 24, !dbg !1123
  %wide.load = load <8 x i8>, ptr %next.gep422, align 1, !dbg !1123, !alias.scope !1125
  %wide.load426 = load <8 x i8>, ptr %65, align 1, !dbg !1123, !alias.scope !1125
  %wide.load427 = load <8 x i8>, ptr %66, align 1, !dbg !1123, !alias.scope !1125
  %wide.load428 = load <8 x i8>, ptr %67, align 1, !dbg !1123, !alias.scope !1125
  %68 = zext <8 x i8> %wide.load to <8 x i16>, !dbg !1123
  %69 = zext <8 x i8> %wide.load426 to <8 x i16>, !dbg !1123
  %70 = zext <8 x i8> %wide.load427 to <8 x i16>, !dbg !1123
  %71 = zext <8 x i8> %wide.load428 to <8 x i16>, !dbg !1123
  %72 = getelementptr i8, ptr %next.gep, i64 16, !dbg !1128
  %73 = getelementptr i8, ptr %next.gep, i64 32, !dbg !1128
  %74 = getelementptr i8, ptr %next.gep, i64 48, !dbg !1128
  store <8 x i16> %68, ptr %next.gep, align 2, !dbg !1128, !alias.scope !1129, !noalias !1125
  store <8 x i16> %69, ptr %72, align 2, !dbg !1128, !alias.scope !1129, !noalias !1125
  store <8 x i16> %70, ptr %73, align 2, !dbg !1128, !alias.scope !1129, !noalias !1125
  store <8 x i16> %71, ptr %74, align 2, !dbg !1128, !alias.scope !1129, !noalias !1125
  %index.next = add nuw i64 %index, 32
  %75 = icmp eq i64 %index.next, %n.vec
  br i1 %75, label %middle.block, label %vector.body, !llvm.loop !1131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %59, !dbg !1119
  br i1 %cmp.n, label %for.inc20.loopexit.i.i, label %for.body17.i.i.preheader, !dbg !1119

for.body17.i.i.preheader:                         ; preds = %middle.block, %vector.memcheck, %for.body17.preheader.i.i
  %p.110.i.i.ph = phi ptr [ %p.014.i.i, %vector.memcheck ], [ %p.014.i.i, %for.body17.preheader.i.i ], [ %ind.end, %middle.block ]
  %s.09.i.i.ph = phi ptr [ %add.ptr.i49.i, %vector.memcheck ], [ %add.ptr.i49.i, %for.body17.preheader.i.i ], [ %ind.end415, %middle.block ]
  %j.08.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body17.preheader.i.i ], [ %ind.end417, %middle.block ]
  %76 = sub i32 %56, %j.08.i.i.ph, !dbg !1119
  %xtraiter634 = and i32 %76, 7, !dbg !1119
  %lcmp.mod635.not = icmp eq i32 %xtraiter634, 0, !dbg !1119
  br i1 %lcmp.mod635.not, label %for.body17.i.i.prol.loopexit, label %for.body17.i.i.prol, !dbg !1119

for.body17.i.i.prol:                              ; preds = %for.body17.i.i.preheader, %for.body17.i.i.prol
  %p.110.i.i.prol = phi ptr [ %incdec.ptr19.i.i.prol, %for.body17.i.i.prol ], [ %p.110.i.i.ph, %for.body17.i.i.preheader ]
  %s.09.i.i.prol = phi ptr [ %incdec.ptr.i.i.prol, %for.body17.i.i.prol ], [ %s.09.i.i.ph, %for.body17.i.i.preheader ]
  %j.08.i.i.prol = phi i32 [ %inc.i50.i.prol, %for.body17.i.i.prol ], [ %j.08.i.i.ph, %for.body17.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body17.i.i.prol ], [ 0, %for.body17.i.i.preheader ]
    #dbg_value(ptr %p.110.i.i.prol, !1090, !DIExpression(), !1092)
    #dbg_value(ptr %s.09.i.i.prol, !1089, !DIExpression(), !1092)
    #dbg_value(i32 %j.08.i.i.prol, !1086, !DIExpression(), !1092)
  %incdec.ptr.i.i.prol = getelementptr inbounds i8, ptr %s.09.i.i.prol, i64 1, !dbg !1135
    #dbg_value(ptr %incdec.ptr.i.i.prol, !1089, !DIExpression(), !1092)
  %77 = load i8, ptr %s.09.i.i.prol, align 1, !dbg !1123
  %conv18.i.i.prol = zext i8 %77 to i16, !dbg !1123
  %incdec.ptr19.i.i.prol = getelementptr inbounds i8, ptr %p.110.i.i.prol, i64 2, !dbg !1136
    #dbg_value(ptr %incdec.ptr19.i.i.prol, !1090, !DIExpression(), !1092)
  store i16 %conv18.i.i.prol, ptr %p.110.i.i.prol, align 2, !dbg !1128
  %inc.i50.i.prol = add nuw nsw i32 %j.08.i.i.prol, 1, !dbg !1137
    #dbg_value(i32 %inc.i50.i.prol, !1086, !DIExpression(), !1092)
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !1119
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter634, !dbg !1119
  br i1 %prol.iter.cmp.not, label %for.body17.i.i.prol.loopexit, label %for.body17.i.i.prol, !dbg !1119, !llvm.loop !1138

for.body17.i.i.prol.loopexit:                     ; preds = %for.body17.i.i.prol, %for.body17.i.i.preheader
  %incdec.ptr19.i.i.lcssa632.unr = phi ptr [ poison, %for.body17.i.i.preheader ], [ %incdec.ptr19.i.i.prol, %for.body17.i.i.prol ]
  %p.110.i.i.unr = phi ptr [ %p.110.i.i.ph, %for.body17.i.i.preheader ], [ %incdec.ptr19.i.i.prol, %for.body17.i.i.prol ]
  %s.09.i.i.unr = phi ptr [ %s.09.i.i.ph, %for.body17.i.i.preheader ], [ %incdec.ptr.i.i.prol, %for.body17.i.i.prol ]
  %j.08.i.i.unr = phi i32 [ %j.08.i.i.ph, %for.body17.i.i.preheader ], [ %inc.i50.i.prol, %for.body17.i.i.prol ]
  %78 = sub i32 %j.08.i.i.ph, %56, !dbg !1119
  %79 = icmp ugt i32 %78, -8, !dbg !1119
  br i1 %79, label %for.inc20.loopexit.i.i, label %for.body17.i.i, !dbg !1119

for.body17.i.i:                                   ; preds = %for.body17.i.i.prol.loopexit, %for.body17.i.i
  %p.110.i.i = phi ptr [ %incdec.ptr19.i.i.7, %for.body17.i.i ], [ %p.110.i.i.unr, %for.body17.i.i.prol.loopexit ]
  %s.09.i.i = phi ptr [ %incdec.ptr.i.i.7, %for.body17.i.i ], [ %s.09.i.i.unr, %for.body17.i.i.prol.loopexit ]
  %j.08.i.i = phi i32 [ %inc.i50.i.7, %for.body17.i.i ], [ %j.08.i.i.unr, %for.body17.i.i.prol.loopexit ]
    #dbg_value(ptr %p.110.i.i, !1090, !DIExpression(), !1092)
    #dbg_value(ptr %s.09.i.i, !1089, !DIExpression(), !1092)
    #dbg_value(i32 %j.08.i.i, !1086, !DIExpression(), !1092)
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %s.09.i.i, i64 1, !dbg !1135
    #dbg_value(ptr %incdec.ptr.i.i, !1089, !DIExpression(), !1092)
  %80 = load i8, ptr %s.09.i.i, align 1, !dbg !1123
  %conv18.i.i = zext i8 %80 to i16, !dbg !1123
  %incdec.ptr19.i.i = getelementptr inbounds i8, ptr %p.110.i.i, i64 2, !dbg !1136
    #dbg_value(ptr %incdec.ptr19.i.i, !1090, !DIExpression(), !1092)
  store i16 %conv18.i.i, ptr %p.110.i.i, align 2, !dbg !1128
    #dbg_value(i32 %j.08.i.i, !1086, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1092)
  %incdec.ptr.i.i.1 = getelementptr inbounds i8, ptr %s.09.i.i, i64 2, !dbg !1135
    #dbg_value(ptr %incdec.ptr.i.i.1, !1089, !DIExpression(), !1092)
  %81 = load i8, ptr %incdec.ptr.i.i, align 1, !dbg !1123
  %conv18.i.i.1 = zext i8 %81 to i16, !dbg !1123
  %incdec.ptr19.i.i.1 = getelementptr inbounds i8, ptr %p.110.i.i, i64 4, !dbg !1136
    #dbg_value(ptr %incdec.ptr19.i.i.1, !1090, !DIExpression(), !1092)
  store i16 %conv18.i.i.1, ptr %incdec.ptr19.i.i, align 2, !dbg !1128
    #dbg_value(i32 %j.08.i.i, !1086, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1092)
  %incdec.ptr.i.i.2 = getelementptr inbounds i8, ptr %s.09.i.i, i64 3, !dbg !1135
    #dbg_value(ptr %incdec.ptr.i.i.2, !1089, !DIExpression(), !1092)
  %82 = load i8, ptr %incdec.ptr.i.i.1, align 1, !dbg !1123
  %conv18.i.i.2 = zext i8 %82 to i16, !dbg !1123
  %incdec.ptr19.i.i.2 = getelementptr inbounds i8, ptr %p.110.i.i, i64 6, !dbg !1136
    #dbg_value(ptr %incdec.ptr19.i.i.2, !1090, !DIExpression(), !1092)
  store i16 %conv18.i.i.2, ptr %incdec.ptr19.i.i.1, align 2, !dbg !1128
    #dbg_value(i32 %j.08.i.i, !1086, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !1092)
  %incdec.ptr.i.i.3 = getelementptr inbounds i8, ptr %s.09.i.i, i64 4, !dbg !1135
    #dbg_value(ptr %incdec.ptr.i.i.3, !1089, !DIExpression(), !1092)
  %83 = load i8, ptr %incdec.ptr.i.i.2, align 1, !dbg !1123
  %conv18.i.i.3 = zext i8 %83 to i16, !dbg !1123
  %incdec.ptr19.i.i.3 = getelementptr inbounds i8, ptr %p.110.i.i, i64 8, !dbg !1136
    #dbg_value(ptr %incdec.ptr19.i.i.3, !1090, !DIExpression(), !1092)
  store i16 %conv18.i.i.3, ptr %incdec.ptr19.i.i.2, align 2, !dbg !1128
    #dbg_value(i32 %j.08.i.i, !1086, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !1092)
  %incdec.ptr.i.i.4 = getelementptr inbounds i8, ptr %s.09.i.i, i64 5, !dbg !1135
    #dbg_value(ptr %incdec.ptr.i.i.4, !1089, !DIExpression(), !1092)
  %84 = load i8, ptr %incdec.ptr.i.i.3, align 1, !dbg !1123
  %conv18.i.i.4 = zext i8 %84 to i16, !dbg !1123
  %incdec.ptr19.i.i.4 = getelementptr inbounds i8, ptr %p.110.i.i, i64 10, !dbg !1136
    #dbg_value(ptr %incdec.ptr19.i.i.4, !1090, !DIExpression(), !1092)
  store i16 %conv18.i.i.4, ptr %incdec.ptr19.i.i.3, align 2, !dbg !1128
    #dbg_value(i32 %j.08.i.i, !1086, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !1092)
  %incdec.ptr.i.i.5 = getelementptr inbounds i8, ptr %s.09.i.i, i64 6, !dbg !1135
    #dbg_value(ptr %incdec.ptr.i.i.5, !1089, !DIExpression(), !1092)
  %85 = load i8, ptr %incdec.ptr.i.i.4, align 1, !dbg !1123
  %conv18.i.i.5 = zext i8 %85 to i16, !dbg !1123
  %incdec.ptr19.i.i.5 = getelementptr inbounds i8, ptr %p.110.i.i, i64 12, !dbg !1136
    #dbg_value(ptr %incdec.ptr19.i.i.5, !1090, !DIExpression(), !1092)
  store i16 %conv18.i.i.5, ptr %incdec.ptr19.i.i.4, align 2, !dbg !1128
    #dbg_value(i32 %j.08.i.i, !1086, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !1092)
  %incdec.ptr.i.i.6 = getelementptr inbounds i8, ptr %s.09.i.i, i64 7, !dbg !1135
    #dbg_value(ptr %incdec.ptr.i.i.6, !1089, !DIExpression(), !1092)
  %86 = load i8, ptr %incdec.ptr.i.i.5, align 1, !dbg !1123
  %conv18.i.i.6 = zext i8 %86 to i16, !dbg !1123
  %incdec.ptr19.i.i.6 = getelementptr inbounds i8, ptr %p.110.i.i, i64 14, !dbg !1136
    #dbg_value(ptr %incdec.ptr19.i.i.6, !1090, !DIExpression(), !1092)
  store i16 %conv18.i.i.6, ptr %incdec.ptr19.i.i.5, align 2, !dbg !1128
    #dbg_value(i32 %j.08.i.i, !1086, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !1092)
  %incdec.ptr.i.i.7 = getelementptr inbounds i8, ptr %s.09.i.i, i64 8, !dbg !1135
    #dbg_value(ptr %incdec.ptr.i.i.7, !1089, !DIExpression(), !1092)
  %87 = load i8, ptr %incdec.ptr.i.i.6, align 1, !dbg !1123
  %conv18.i.i.7 = zext i8 %87 to i16, !dbg !1123
  %incdec.ptr19.i.i.7 = getelementptr inbounds i8, ptr %p.110.i.i, i64 16, !dbg !1136
    #dbg_value(ptr %incdec.ptr19.i.i.7, !1090, !DIExpression(), !1092)
  store i16 %conv18.i.i.7, ptr %incdec.ptr19.i.i.6, align 2, !dbg !1128
  %inc.i50.i.7 = add nuw nsw i32 %j.08.i.i, 8, !dbg !1137
    #dbg_value(i32 %inc.i50.i.7, !1086, !DIExpression(), !1092)
  %exitcond16.not.i.i.7 = icmp eq i32 %inc.i50.i.7, %56, !dbg !1116
  br i1 %exitcond16.not.i.i.7, label %for.inc20.loopexit.i.i, label %for.body17.i.i, !dbg !1119, !llvm.loop !1140

for.inc20.loopexit.i.i:                           ; preds = %for.body17.i.i.prol.loopexit, %for.body17.i.i, %middle.block
  %incdec.ptr19.i.i.lcssa = phi ptr [ %ind.end, %middle.block ], [ %incdec.ptr19.i.i.lcssa632.unr, %for.body17.i.i.prol.loopexit ], [ %incdec.ptr19.i.i.7, %for.body17.i.i ], !dbg !1136
  %.pre20.i.i = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 28), align 4, !dbg !1108
  br label %for.inc20.i.i, !dbg !1141

for.inc20.i.i:                                    ; preds = %for.inc20.loopexit.i.i, %for.body.i47.i
  %88 = phi i32 [ %55, %for.body.i47.i ], [ %.pre20.i.i, %for.inc20.loopexit.i.i ], !dbg !1108
  %p.1.lcssa.i.i = phi ptr [ %p.014.i.i, %for.body.i47.i ], [ %incdec.ptr19.i.i.lcssa, %for.inc20.loopexit.i.i ], !dbg !1142
  %indvars.iv.next18.i.i = add nuw nsw i64 %indvars.iv17.i.i, 1, !dbg !1141
    #dbg_value(ptr %p.1.lcssa.i.i, !1090, !DIExpression(), !1092)
    #dbg_value(i64 %indvars.iv.next18.i.i, !1085, !DIExpression(), !1092)
  %89 = sext i32 %88 to i64, !dbg !1112
  %cmp9.i.i = icmp slt i64 %indvars.iv.next18.i.i, %89, !dbg !1112
  br i1 %cmp9.i.i, label %for.body.i47.i, label %if.end34, !dbg !1113, !llvm.loop !1143

sw.bb23.i.i:                                      ; preds = %if.end.i38.i
  %90 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1145
    #dbg_value(ptr %90, !1088, !DIExpression(), !1092)
    #dbg_value(ptr %call.i37.i, !1090, !DIExpression(), !1092)
    #dbg_value(i32 0, !1085, !DIExpression(), !1092)
  %91 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 28), align 4, !dbg !1146
  %cmp284.i.i = icmp sgt i32 %91, 0, !dbg !1149
  br i1 %cmp284.i.i, label %for.body30.i.i, label %for.end53.i.i, !dbg !1150

for.body30.i.i:                                   ; preds = %sw.bb23.i.i, %for.inc51.i.i
  %92 = phi i32 [ %107, %for.inc51.i.i ], [ %91, %sw.bb23.i.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.inc51.i.i ], [ 0, %sw.bb23.i.i ]
  %p.26.i.i = phi ptr [ %p.3.lcssa.i.i, %for.inc51.i.i ], [ %call.i37.i, %sw.bb23.i.i ]
    #dbg_value(ptr %p.26.i.i, !1090, !DIExpression(), !1092)
    #dbg_value(i64 %indvars.iv.i.i, !1085, !DIExpression(), !1092)
  %arrayidx33.i.i = getelementptr inbounds [1080 x i32], ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 68), i64 0, i64 %indvars.iv.i.i, !dbg !1151
  %93 = load i32, ptr %arrayidx33.i.i, align 4, !dbg !1151
  %div92.i.i = lshr i32 %93, 1, !dbg !1153
    #dbg_value(i32 %div92.i.i, !1087, !DIExpression(), !1092)
  %94 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8, !dbg !1154
  %arrayidx37.i.i = getelementptr inbounds [1080 x i32], ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 4388), i64 0, i64 %indvars.iv.i.i, !dbg !1155
  %95 = load i32, ptr %arrayidx37.i.i, align 4, !dbg !1155
  %idx.ext38.i.i = zext i32 %95 to i64, !dbg !1156
  %add.ptr39.i.i = getelementptr inbounds i8, ptr %94, i64 %idx.ext38.i.i, !dbg !1156
  store ptr %add.ptr39.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1157
    #dbg_value(i32 0, !1086, !DIExpression(), !1092)
  %cmp421.not.i.i = icmp ult i32 %93, 2, !dbg !1158
  br i1 %cmp421.not.i.i, label %for.inc51.i.i, label %for.body44.i.i.preheader, !dbg !1161

for.body44.i.i.preheader:                         ; preds = %for.body30.i.i
  %96 = icmp eq i32 %div92.i.i, 1, !dbg !1161
  br i1 %96, label %for.inc51.loopexit.i.i.unr-lcssa, label %for.body44.i.i.preheader.new, !dbg !1161

for.body44.i.i.preheader.new:                     ; preds = %for.body44.i.i.preheader
  %unroll_iter = and i32 %div92.i.i, 2147483646, !dbg !1161
  br label %for.body44.i.i, !dbg !1161

for.body44.i.i:                                   ; preds = %for.body44.i.i, %for.body44.i.i.preheader.new
  %p.33.i.i = phi ptr [ %p.26.i.i, %for.body44.i.i.preheader.new ], [ %incdec.ptr47.i.i.1, %for.body44.i.i ]
  %niter = phi i32 [ 0, %for.body44.i.i.preheader.new ], [ %niter.next.1, %for.body44.i.i ]
    #dbg_value(ptr %p.33.i.i, !1090, !DIExpression(), !1092)
    #dbg_value(i32 poison, !1086, !DIExpression(), !1092)
    #dbg_value(ptr @ReadTIFFImage.t, !926, !DIExpression(), !1162)
  %97 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1165
  %incdec.ptr.i.i40.i = getelementptr inbounds i8, ptr %97, i64 1, !dbg !1165
  store ptr %incdec.ptr.i.i40.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1165
  %98 = load i8, ptr %97, align 1, !dbg !1166
    #dbg_value(i8 %98, !931, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1162)
  %incdec.ptr2.i.i41.i = getelementptr inbounds i8, ptr %97, i64 2, !dbg !1167
  store ptr %incdec.ptr2.i.i41.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1167
  %99 = load i8, ptr %incdec.ptr.i.i40.i, align 1, !dbg !1168
    #dbg_value(i8 %99, !931, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1162)
  %u.sroa.4.0.insert.ext.i.i42.i = zext i8 %99 to i16, !dbg !1169
  %u.sroa.4.0.insert.shift.i.i43.i = shl nuw i16 %u.sroa.4.0.insert.ext.i.i42.i, 8, !dbg !1169
  %u.sroa.0.0.insert.ext.i.i44.i = zext i8 %98 to i16, !dbg !1169
  %u.sroa.0.0.insert.insert.i.i45.i = or disjoint i16 %u.sroa.4.0.insert.shift.i.i43.i, %u.sroa.0.0.insert.ext.i.i44.i, !dbg !1169
  %incdec.ptr47.i.i = getelementptr inbounds i8, ptr %p.33.i.i, i64 2, !dbg !1170
    #dbg_value(ptr %incdec.ptr47.i.i, !1090, !DIExpression(), !1092)
  store i16 %u.sroa.0.0.insert.insert.i.i45.i, ptr %p.33.i.i, align 2, !dbg !1171
    #dbg_value(i32 poison, !1086, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1092)
  %100 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1165
  %incdec.ptr.i.i40.i.1 = getelementptr inbounds i8, ptr %100, i64 1, !dbg !1165
  store ptr %incdec.ptr.i.i40.i.1, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1165
  %101 = load i8, ptr %100, align 1, !dbg !1166
    #dbg_value(i8 %101, !931, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1162)
  %incdec.ptr2.i.i41.i.1 = getelementptr inbounds i8, ptr %100, i64 2, !dbg !1167
  store ptr %incdec.ptr2.i.i41.i.1, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1167
  %102 = load i8, ptr %incdec.ptr.i.i40.i.1, align 1, !dbg !1168
    #dbg_value(i8 %102, !931, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1162)
  %u.sroa.4.0.insert.ext.i.i42.i.1 = zext i8 %102 to i16, !dbg !1169
  %u.sroa.4.0.insert.shift.i.i43.i.1 = shl nuw i16 %u.sroa.4.0.insert.ext.i.i42.i.1, 8, !dbg !1169
  %u.sroa.0.0.insert.ext.i.i44.i.1 = zext i8 %101 to i16, !dbg !1169
  %u.sroa.0.0.insert.insert.i.i45.i.1 = or disjoint i16 %u.sroa.4.0.insert.shift.i.i43.i.1, %u.sroa.0.0.insert.ext.i.i44.i.1, !dbg !1169
  %incdec.ptr47.i.i.1 = getelementptr inbounds i8, ptr %p.33.i.i, i64 4, !dbg !1170
    #dbg_value(ptr %incdec.ptr47.i.i.1, !1090, !DIExpression(), !1092)
  store i16 %u.sroa.0.0.insert.insert.i.i45.i.1, ptr %incdec.ptr47.i.i, align 2, !dbg !1171
    #dbg_value(i32 poison, !1086, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1092)
  %niter.next.1 = add i32 %niter, 2, !dbg !1161
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !1161
  br i1 %niter.ncmp.1, label %for.inc51.loopexit.i.i.unr-lcssa, label %for.body44.i.i, !dbg !1161, !llvm.loop !1172

for.inc51.loopexit.i.i.unr-lcssa:                 ; preds = %for.body44.i.i, %for.body44.i.i.preheader
  %incdec.ptr47.i.i.lcssa.ph = phi ptr [ poison, %for.body44.i.i.preheader ], [ %incdec.ptr47.i.i.1, %for.body44.i.i ]
  %p.33.i.i.unr = phi ptr [ %p.26.i.i, %for.body44.i.i.preheader ], [ %incdec.ptr47.i.i.1, %for.body44.i.i ]
  %103 = and i32 %93, 2, !dbg !1161
  %lcmp.mod.not = icmp eq i32 %103, 0, !dbg !1161
  br i1 %lcmp.mod.not, label %for.inc51.loopexit.i.i, label %for.body44.i.i.epil, !dbg !1161

for.body44.i.i.epil:                              ; preds = %for.inc51.loopexit.i.i.unr-lcssa
    #dbg_value(ptr %p.33.i.i.unr, !1090, !DIExpression(), !1092)
    #dbg_value(i32 poison, !1086, !DIExpression(), !1092)
    #dbg_value(ptr @ReadTIFFImage.t, !926, !DIExpression(), !1162)
  %104 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1165
  %incdec.ptr.i.i40.i.epil = getelementptr inbounds i8, ptr %104, i64 1, !dbg !1165
  store ptr %incdec.ptr.i.i40.i.epil, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1165
  %105 = load i8, ptr %104, align 1, !dbg !1166
    #dbg_value(i8 %105, !931, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1162)
  %incdec.ptr2.i.i41.i.epil = getelementptr inbounds i8, ptr %104, i64 2, !dbg !1167
  store ptr %incdec.ptr2.i.i41.i.epil, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1167
  %106 = load i8, ptr %incdec.ptr.i.i40.i.epil, align 1, !dbg !1168
    #dbg_value(i8 %106, !931, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1162)
  %u.sroa.4.0.insert.ext.i.i42.i.epil = zext i8 %106 to i16, !dbg !1169
  %u.sroa.4.0.insert.shift.i.i43.i.epil = shl nuw i16 %u.sroa.4.0.insert.ext.i.i42.i.epil, 8, !dbg !1169
  %u.sroa.0.0.insert.ext.i.i44.i.epil = zext i8 %105 to i16, !dbg !1169
  %u.sroa.0.0.insert.insert.i.i45.i.epil = or disjoint i16 %u.sroa.4.0.insert.shift.i.i43.i.epil, %u.sroa.0.0.insert.ext.i.i44.i.epil, !dbg !1169
  %incdec.ptr47.i.i.epil = getelementptr inbounds i8, ptr %p.33.i.i.unr, i64 2, !dbg !1170
    #dbg_value(ptr %incdec.ptr47.i.i.epil, !1090, !DIExpression(), !1092)
  store i16 %u.sroa.0.0.insert.insert.i.i45.i.epil, ptr %p.33.i.i.unr, align 2, !dbg !1171
    #dbg_value(i32 poison, !1086, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1092)
  br label %for.inc51.loopexit.i.i, !dbg !1146

for.inc51.loopexit.i.i:                           ; preds = %for.inc51.loopexit.i.i.unr-lcssa, %for.body44.i.i.epil
  %incdec.ptr47.i.i.lcssa = phi ptr [ %incdec.ptr47.i.i.lcssa.ph, %for.inc51.loopexit.i.i.unr-lcssa ], [ %incdec.ptr47.i.i.epil, %for.body44.i.i.epil ], !dbg !1170
  %.pre.i.i = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 28), align 4, !dbg !1146
  br label %for.inc51.i.i, !dbg !1174

for.inc51.i.i:                                    ; preds = %for.inc51.loopexit.i.i, %for.body30.i.i
  %107 = phi i32 [ %92, %for.body30.i.i ], [ %.pre.i.i, %for.inc51.loopexit.i.i ], !dbg !1146
  %p.3.lcssa.i.i = phi ptr [ %p.26.i.i, %for.body30.i.i ], [ %incdec.ptr47.i.i.lcssa, %for.inc51.loopexit.i.i ], !dbg !1142
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1174
    #dbg_value(ptr %p.3.lcssa.i.i, !1090, !DIExpression(), !1092)
    #dbg_value(i64 %indvars.iv.next.i.i, !1085, !DIExpression(), !1092)
  %108 = sext i32 %107 to i64, !dbg !1149
  %cmp28.i.i = icmp slt i64 %indvars.iv.next.i.i, %108, !dbg !1149
  br i1 %cmp28.i.i, label %for.body30.i.i, label %for.end53.i.i, !dbg !1150, !llvm.loop !1175

for.end53.i.i:                                    ; preds = %for.inc51.i.i, %sw.bb23.i.i
  store ptr %90, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1177
  br label %if.end34, !dbg !1178

Error.i:                                          ; preds = %readImageFileDirectory.exit.i, %readImageFileHeader.exit.i, %if.end22.i.i, %if.then20.i.i, %if.end9.i.i, %if.end.i.i, %if.then.i.i
  %.pr.i = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8, !dbg !1179
    #dbg_label(!852, !913)
  %tobool13.not.i = icmp eq ptr %.pr.i, null, !dbg !1181
  br i1 %tobool13.not.i, label %if.end16.i, label %if.then14.i, !dbg !914

if.then14.i:                                      ; preds = %Error.i
  call void @free(ptr noundef nonnull %.pr.i) #17, !dbg !1182
  br label %if.end16.i, !dbg !1182

if.end16.i:                                       ; preds = %if.then14.i, %Error.i, %Error.thread.i
  store ptr null, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8, !dbg !1183
  %109 = load ptr, ptr @ReadTIFFImage.t, align 8, !dbg !1184
  %tobool18.not.i = icmp eq ptr %109, null, !dbg !1186
  br i1 %tobool18.not.i, label %readTiff.exit, label %if.then19.i, !dbg !1187

if.then19.i:                                      ; preds = %if.end16.i
  call void @free(ptr noundef nonnull %109) #17, !dbg !1188
  br label %readTiff.exit, !dbg !1188

readTiff.exit:                                    ; preds = %if.end16.i, %if.then19.i
  store ptr null, ptr @ReadTIFFImage.t, align 8, !dbg !1189
  br label %if.end173, !dbg !1190

if.end34:                                         ; preds = %for.inc20.i.i, %if.end.i38.i, %for.end53.i.i, %for.cond.preheader.i.i
  %110 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 60), align 4, !dbg !1191
  %cmp35.not = icmp eq i32 %110, %1, !dbg !1193
  br i1 %cmp35.not, label %if.end38, label %if.then36, !dbg !1194

if.then36:                                        ; preds = %if.end34
  %111 = load ptr, ptr @stderr, align 8, !dbg !1195
  %call37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.4, i32 noundef %110, i32 noundef %1) #19, !dbg !1197
  br label %if.end173, !dbg !1198

if.end38:                                         ; preds = %if.end34
  %112 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 64), align 8, !dbg !1199
  %cmp39.not = icmp eq i32 %112, %0, !dbg !1201
  br i1 %cmp39.not, label %if.end42, label %if.then40, !dbg !1202

if.then40:                                        ; preds = %if.end38
  %113 = load ptr, ptr @stderr, align 8, !dbg !1203
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.5, i32 noundef %112, i32 noundef %0) #19, !dbg !1205
  br label %if.end173, !dbg !1206

if.end42:                                         ; preds = %if.end38
  %pic_unit_size_on_disk = getelementptr inbounds i8, ptr %source, i64 124, !dbg !1207
  %114 = load i32, ptr %pic_unit_size_on_disk, align 4, !dbg !1207
  switch i32 %114, label %if.then47 [
    i32 8, label %if.end50
    i32 16, label %if.end50
  ], !dbg !1209

if.then47:                                        ; preds = %if.end42
  %115 = load ptr, ptr @stderr, align 8, !dbg !1210
  %call49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.6, i32 noundef %114) #19, !dbg !1212
  br label %if.end173, !dbg !1213

if.end50:                                         ; preds = %if.end42, %if.end42
  %116 = load ptr, ptr @ReadTIFFImage.t, align 8, !dbg !1214
    #dbg_value(ptr %116, !299, !DIExpression(), !809)
  %mul = mul i32 %1, %0, !dbg !1215
  %mul51 = mul nsw i32 %mul, 3, !dbg !1216
    #dbg_value(i32 %mul51, !269, !DIExpression(), !809)
  %117 = load i32, ptr %color_model, align 4, !dbg !1217
  %cmp53 = icmp eq i32 %117, 0, !dbg !1219
  br i1 %cmp53, label %if.then54, label %if.end137, !dbg !1220

if.then54:                                        ; preds = %if.end50
  %videoCode = getelementptr inbounds i8, ptr %p_Inp, i64 4000, !dbg !1221
  %118 = load i32, ptr %videoCode, align 8, !dbg !1221
    #dbg_value(ptr undef, !1224, !DIExpression(), !1235)
    #dbg_value(i32 %118, !1230, !DIExpression(), !1235)
    #dbg_value(i32 poison, !1231, !DIExpression(), !1235)
    #dbg_value(i16 -1, !1232, !DIExpression(), !1235)
  switch i32 %118, label %sw.default.i [
    i32 1, label %sw.epilog.i
    i32 3, label %sw.epilog.i
  ], !dbg !1237

sw.default.i:                                     ; preds = %if.then54
  %119 = load ptr, ptr @stderr, align 8, !dbg !1238
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull @.str.18, i32 noundef %118) #19, !dbg !1240
  br label %if.end173, !dbg !1241

sw.epilog.i:                                      ; preds = %if.then54, %if.then54
  %stdRange = getelementptr inbounds i8, ptr %p_Inp, i64 3996, !dbg !1242
  %120 = load i32, ptr %stdRange, align 4, !dbg !1242
    #dbg_value(i32 %120, !1231, !DIExpression(), !1235)
    #dbg_value(i32 %120, !274, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !809)
    #dbg_value(i16 -1, !274, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !809)
    #dbg_value(i32 65536, !1234, !DIExpression(), !1235)
  %tobool.not.i = icmp eq i32 %120, 0, !dbg !1243
  %.sink193.i = select i1 %tobool.not.i, i32 8192, i32 67117056, !dbg !1245
  %.sink192.i = select i1 %tobool.not.i, double 1.638400e+04, double 0x40CB7B7B7B7B7B7B, !dbg !1245
  %.sink.i = select i1 %tobool.not.i, double 1.638400e+04, double 0x40CC1C1C1C1C1C1C, !dbg !1245
    #dbg_value(i32 %.sink193.i, !274, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !809)
    #dbg_value(double %.sink192.i, !274, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !809)
    #dbg_value(double %.sink.i, !274, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !809)
    #dbg_value(i32 536879104, !274, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !809)
  %idxprom.i = zext nneg i32 %118 to i64, !dbg !1246
  %arrayidx.i = getelementptr inbounds [9 x [3 x double]], ptr @Coef, i64 0, i64 %idxprom.i, !dbg !1246
  %121 = load double, ptr %arrayidx.i, align 8, !dbg !1246
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !809)
  %arrayidx22.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 8, !dbg !1247
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !809)
  %122 = load <2 x double>, ptr %arrayidx22.i, align 8, !dbg !1247
  %123 = insertelement <2 x double> poison, double %.sink192.i, i64 0, !dbg !1248
  %124 = shufflevector <2 x double> %123, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !1248
  %125 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %124, <2 x double> %122, <2 x double> <double 5.000000e-01, double 5.000000e-01>), !dbg !1248
  %126 = fptosi <2 x double> %125 to <2 x i32>, !dbg !1249
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !809)
  %mul35.i = fmul double %.sink.i, %121, !dbg !1250
  %127 = extractelement <2 x double> %122, i64 1, !dbg !1251
  %sub.i = fadd double %127, -1.000000e+00, !dbg !1251
  %div39.i = fdiv double 5.000000e-01, %sub.i, !dbg !1251
  %128 = insertelement <2 x double> poison, double %mul35.i, i64 0, !dbg !1252
  %129 = insertelement <2 x double> %128, double %.sink192.i, i64 1, !dbg !1252
  %130 = insertelement <2 x double> poison, double %div39.i, i64 0, !dbg !1252
  %131 = insertelement <2 x double> %130, double %121, i64 1, !dbg !1252
  %132 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %129, <2 x double> %131, <2 x double> <double -5.000000e-01, double 5.000000e-01>), !dbg !1252
  %133 = fptosi <2 x double> %132 to <2 x i32>, !dbg !1253
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !809)
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !809)
  %134 = insertelement <2 x double> <double poison, double 5.000000e-01>, double %div39.i, i64 0, !dbg !1254
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !809)
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !809)
  %sub68.i = fadd double %121, -1.000000e+00, !dbg !1255
  %div69.i = fdiv double 5.000000e-01, %sub68.i, !dbg !1255
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !809)
  %135 = insertelement <2 x double> poison, double %.sink.i, i64 0, !dbg !1256
  %136 = shufflevector <2 x double> %135, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !1256
  %137 = fmul <2 x double> %136, %122, !dbg !1256
  %138 = insertelement <2 x double> %137, double %.sink.i, i64 1, !dbg !1254
  %139 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %138, <2 x double> %134, <2 x double> <double -5.000000e-01, double 5.000000e-01>), !dbg !1254
  %140 = fptosi <2 x double> %139 to <2 x i32>, !dbg !1257
  %141 = insertelement <2 x double> poison, double %div69.i, i64 0, !dbg !1258
  %142 = shufflevector <2 x double> %141, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !1258
  %143 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %137, <2 x double> %142, <2 x double> <double -5.000000e-01, double -5.000000e-01>), !dbg !1258
  %144 = fptosi <2 x double> %143 to <2 x i32>, !dbg !1259
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !809)
  %add85.i = fadd double %.sink192.i, 5.000000e-01, !dbg !1260
  %conv86.i = fptoui double %add85.i to i32, !dbg !1261
    #dbg_value(i32 %conv86.i, !1233, !DIExpression(), !1235)
  %145 = extractelement <2 x i32> %126, i64 0, !dbg !1262
  %146 = extractelement <2 x i32> %133, i64 1, !dbg !1262
  %add89.i = add nsw i32 %145, %146, !dbg !1262
  %147 = extractelement <2 x i32> %126, i64 1, !dbg !1264
  %add91.i = add nsw i32 %add89.i, %147, !dbg !1264
  %cmp.not.i = icmp eq i32 %add91.i, %conv86.i, !dbg !1265
  br i1 %cmp.not.i, label %if.end100.i, label %if.then93.i, !dbg !1266

if.then93.i:                                      ; preds = %sw.epilog.i
  %148 = load ptr, ptr @stderr, align 8, !dbg !1267
  %call99.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef nonnull @.str.19, i32 noundef %add91.i, i32 noundef %conv86.i) #19, !dbg !1269
  br label %if.end173, !dbg !1270

if.end100.i:                                      ; preds = %sw.epilog.i
  %149 = extractelement <2 x i32> %140, i64 0, !dbg !1271
  %150 = extractelement <2 x i32> %140, i64 1, !dbg !1271
  %add103.i = add i32 %149, %150, !dbg !1271
  %151 = extractelement <2 x i32> %133, i64 0, !dbg !1273
  %add105.i = add i32 %add103.i, %151, !dbg !1273
  %tobool106.not.i = icmp eq i32 %add105.i, 0, !dbg !1273
  br i1 %tobool106.not.i, label %if.end114.i, label %if.then107.i, !dbg !1274

if.then107.i:                                     ; preds = %if.end100.i
  %152 = load ptr, ptr @stderr, align 8, !dbg !1275
  %call113.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.20, i32 noundef %add105.i) #19, !dbg !1277
  br label %if.end173, !dbg !1278

if.end114.i:                                      ; preds = %if.end100.i
  %153 = extractelement <2 x i32> %144, i64 0, !dbg !1279
  %add117.i = add nsw i32 %153, %150, !dbg !1279
  %154 = extractelement <2 x i32> %144, i64 1, !dbg !1281
  %add119.i = add nsw i32 %add117.i, %154, !dbg !1281
  %tobool120.not.i = icmp eq i32 %add119.i, 0, !dbg !1281
  br i1 %tobool120.not.i, label %if.end58, label %if.then121.i, !dbg !1282

if.then121.i:                                     ; preds = %if.end114.i
  %155 = load ptr, ptr @stderr, align 8, !dbg !1283
  %call127.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.21, i32 noundef %add119.i) #19, !dbg !1285
  br label %if.end173, !dbg !1286

if.end58:                                         ; preds = %if.end114.i
    #dbg_value(i32 %.sink193.i, !274, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !809)
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !809)
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !809)
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !809)
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !809)
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !809)
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !809)
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !809)
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !809)
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !809)
    #dbg_value(i32 poison, !274, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !809)
  %add.ptr = getelementptr inbounds i8, ptr %116, i64 2, !dbg !1287
  %add.ptr59 = getelementptr inbounds i8, ptr %116, i64 4, !dbg !1288
    #dbg_value(ptr undef, !1289, !DIExpression(), !1306)
    #dbg_value(ptr %116, !1294, !DIExpression(), !1306)
    #dbg_value(ptr %add.ptr, !1295, !DIExpression(), !1306)
    #dbg_value(ptr %add.ptr59, !1296, !DIExpression(), !1306)
    #dbg_value(i32 %0, !1297, !DIExpression(), !1306)
    #dbg_value(i32 %1, !1298, !DIExpression(), !1306)
    #dbg_value(i32 3, !1299, !DIExpression(), !1306)
    #dbg_value(ptr %116, !1300, !DIExpression(), !1306)
    #dbg_value(ptr %add.ptr, !1301, !DIExpression(), !1306)
    #dbg_value(ptr %add.ptr59, !1302, !DIExpression(), !1306)
    #dbg_value(i32 3, !1303, !DIExpression(), !1306)
    #dbg_value(i32 %mul, !1305, !DIExpression(), !1306)
    #dbg_value(i32 0, !1304, !DIExpression(), !1306)
  %cmp46281.i = icmp sgt i32 %mul, 0, !dbg !1308
  br i1 %tobool.not.i, label %for.cond45.preheader.i, label %for.cond.preheader.i, !dbg !1310

for.cond.preheader.i:                             ; preds = %if.end58
  br i1 %cmp46281.i, label %for.body.i.preheader, label %RGB_YUV_rgb_to_yuv.exit, !dbg !1311

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %156 = zext nneg i32 %mul to i64, !dbg !1311
  %min.iters.check431 = icmp ult i32 %mul, 4, !dbg !1311
  br i1 %min.iters.check431, label %for.body.i.preheader630, label %vector.ph432, !dbg !1311

for.body.i.preheader630:                          ; preds = %middle.block429, %for.body.i.preheader
  %rp.addr.0280.i.ph = phi ptr [ %116, %for.body.i.preheader ], [ %ind.end435, %middle.block429 ]
  %i.0279.i.ph = phi i32 [ 0, %for.body.i.preheader ], [ %ind.end437, %middle.block429 ]
  %gp.addr.0278.i.ph = phi ptr [ %add.ptr, %for.body.i.preheader ], [ %ind.end439, %middle.block429 ]
  %vp.addr.0277.i.ph = phi ptr [ %add.ptr59, %for.body.i.preheader ], [ %ind.end441, %middle.block429 ]
  br label %for.body.i, !dbg !1311

vector.ph432:                                     ; preds = %for.body.i.preheader
  %n.vec434 = and i64 %156, 2147483644, !dbg !1311
  %157 = mul nuw nsw i64 %n.vec434, 6, !dbg !1311
  %ind.end435 = getelementptr i8, ptr %116, i64 %157, !dbg !1311
  %ind.end437 = trunc nuw nsw i64 %n.vec434 to i32, !dbg !1311
  %158 = mul nuw nsw i64 %n.vec434, 6, !dbg !1311
  %ind.end439 = getelementptr i8, ptr %add.ptr, i64 %158, !dbg !1311
  %159 = mul nuw nsw i64 %n.vec434, 6, !dbg !1311
  %ind.end441 = getelementptr i8, ptr %add.ptr59, i64 %159, !dbg !1311
  %invariant.gep = getelementptr i8, ptr %116, i64 12, !dbg !1311
  %invariant.gep648 = getelementptr i8, ptr %116, i64 18, !dbg !1311
  %invariant.gep650 = getelementptr i8, ptr %add.ptr, i64 12, !dbg !1311
  %invariant.gep652 = getelementptr i8, ptr %add.ptr, i64 18, !dbg !1311
  %invariant.gep654 = getelementptr i8, ptr %add.ptr59, i64 12, !dbg !1311
  %invariant.gep656 = getelementptr i8, ptr %add.ptr59, i64 18, !dbg !1311
  br label %vector.body443, !dbg !1311

vector.body443:                                   ; preds = %vector.body443, %vector.ph432
  %index444 = phi i64 [ 0, %vector.ph432 ], [ %index.next460, %vector.body443 ]
  %offset.idx445 = mul i64 %index444, 6, !dbg !1311
  %160 = or disjoint i64 %offset.idx445, 6, !dbg !1311
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
  %163 = load i16, ptr %next.gep446, align 2, !dbg !1314
  %164 = load i16, ptr %next.gep447, align 2, !dbg !1314
  %165 = load i16, ptr %gep, align 2, !dbg !1314
  %166 = load i16, ptr %gep649, align 2, !dbg !1314
  %167 = zext i16 %163 to i32, !dbg !1317
  %168 = zext i16 %164 to i32, !dbg !1317
  %169 = zext i16 %165 to i32, !dbg !1317
  %170 = zext i16 %166 to i32, !dbg !1317
  %171 = load i16, ptr %next.gep451, align 2, !dbg !1318
  %172 = load i16, ptr %next.gep452, align 2, !dbg !1318
  %173 = load i16, ptr %gep651, align 2, !dbg !1318
  %174 = load i16, ptr %gep653, align 2, !dbg !1318
  %175 = zext i16 %171 to i32, !dbg !1319
  %176 = zext i16 %172 to i32, !dbg !1319
  %177 = zext i16 %173 to i32, !dbg !1319
  %178 = zext i16 %174 to i32, !dbg !1319
  %179 = load i16, ptr %next.gep456, align 2, !dbg !1320
  %180 = load i16, ptr %next.gep457, align 2, !dbg !1320
  %181 = load i16, ptr %gep655, align 2, !dbg !1320
  %182 = load i16, ptr %gep657, align 2, !dbg !1320
  %183 = zext i16 %179 to i32, !dbg !1321
  %184 = zext i16 %180 to i32, !dbg !1321
  %185 = zext i16 %181 to i32, !dbg !1321
  %186 = zext i16 %182 to i32, !dbg !1321
  %187 = mul nsw i32 %146, %167, !dbg !1322
  %188 = mul nsw i32 %146, %168, !dbg !1322
  %189 = mul nsw i32 %146, %169, !dbg !1322
  %190 = mul nsw i32 %146, %170, !dbg !1322
  %191 = mul nsw i32 %145, %175, !dbg !1323
  %192 = mul nsw i32 %145, %176, !dbg !1323
  %193 = mul nsw i32 %145, %177, !dbg !1323
  %194 = mul nsw i32 %145, %178, !dbg !1323
  %195 = mul nsw i32 %147, %183, !dbg !1324
  %196 = mul nsw i32 %147, %184, !dbg !1324
  %197 = mul nsw i32 %147, %185, !dbg !1324
  %198 = mul nsw i32 %147, %186, !dbg !1324
  %199 = add i32 %187, %.sink193.i, !dbg !1325
  %200 = add i32 %188, %.sink193.i, !dbg !1325
  %201 = add i32 %189, %.sink193.i, !dbg !1325
  %202 = add i32 %190, %.sink193.i, !dbg !1325
  %203 = add i32 %199, %191, !dbg !1326
  %204 = add i32 %200, %192, !dbg !1326
  %205 = add i32 %201, %193, !dbg !1326
  %206 = add i32 %202, %194, !dbg !1326
  %207 = add i32 %203, %195, !dbg !1327
  %208 = add i32 %204, %196, !dbg !1327
  %209 = add i32 %205, %197, !dbg !1327
  %210 = add i32 %206, %198, !dbg !1327
  %211 = lshr i32 %207, 14, !dbg !1328
  %212 = lshr i32 %208, 14, !dbg !1328
  %213 = lshr i32 %209, 14, !dbg !1328
  %214 = lshr i32 %210, 14, !dbg !1328
  %215 = trunc i32 %211 to i16, !dbg !1329
  %216 = trunc i32 %212 to i16, !dbg !1329
  %217 = trunc i32 %213 to i16, !dbg !1329
  %218 = trunc i32 %214 to i16, !dbg !1329
  store i16 %215, ptr %next.gep446, align 2, !dbg !1330
  store i16 %216, ptr %next.gep447, align 2, !dbg !1330
  store i16 %217, ptr %gep, align 2, !dbg !1330
  store i16 %218, ptr %gep649, align 2, !dbg !1330
  %219 = mul nsw i32 %151, %167, !dbg !1331
  %220 = mul nsw i32 %151, %168, !dbg !1331
  %221 = mul nsw i32 %151, %169, !dbg !1331
  %222 = mul nsw i32 %151, %170, !dbg !1331
  %223 = mul nsw i32 %149, %175, !dbg !1332
  %224 = mul nsw i32 %149, %176, !dbg !1332
  %225 = mul nsw i32 %149, %177, !dbg !1332
  %226 = mul nsw i32 %149, %178, !dbg !1332
  %227 = mul nsw i32 %150, %183, !dbg !1333
  %228 = mul nsw i32 %150, %184, !dbg !1333
  %229 = mul nsw i32 %150, %185, !dbg !1333
  %230 = mul nsw i32 %150, %186, !dbg !1333
  %231 = add i32 %219, 536879104, !dbg !1334
  %232 = add i32 %220, 536879104, !dbg !1334
  %233 = add i32 %221, 536879104, !dbg !1334
  %234 = add i32 %222, 536879104, !dbg !1334
  %235 = add i32 %231, %223, !dbg !1335
  %236 = add i32 %232, %224, !dbg !1335
  %237 = add i32 %233, %225, !dbg !1335
  %238 = add i32 %234, %226, !dbg !1335
  %239 = add i32 %235, %227, !dbg !1336
  %240 = add i32 %236, %228, !dbg !1336
  %241 = add i32 %237, %229, !dbg !1336
  %242 = add i32 %238, %230, !dbg !1336
  %243 = lshr i32 %239, 14, !dbg !1337
  %244 = lshr i32 %240, 14, !dbg !1337
  %245 = lshr i32 %241, 14, !dbg !1337
  %246 = lshr i32 %242, 14, !dbg !1337
  %247 = trunc i32 %243 to i16, !dbg !1338
  %248 = trunc i32 %244 to i16, !dbg !1338
  %249 = trunc i32 %245 to i16, !dbg !1338
  %250 = trunc i32 %246 to i16, !dbg !1338
  store i16 %247, ptr %next.gep451, align 2, !dbg !1339
  store i16 %248, ptr %next.gep452, align 2, !dbg !1339
  store i16 %249, ptr %gep651, align 2, !dbg !1339
  store i16 %250, ptr %gep653, align 2, !dbg !1339
  %251 = mul nsw i32 %150, %167, !dbg !1340
  %252 = mul nsw i32 %150, %168, !dbg !1340
  %253 = mul nsw i32 %150, %169, !dbg !1340
  %254 = mul nsw i32 %150, %170, !dbg !1340
  %255 = mul nsw i32 %153, %175, !dbg !1341
  %256 = mul nsw i32 %153, %176, !dbg !1341
  %257 = mul nsw i32 %153, %177, !dbg !1341
  %258 = mul nsw i32 %153, %178, !dbg !1341
  %259 = mul nsw i32 %154, %183, !dbg !1342
  %260 = mul nsw i32 %154, %184, !dbg !1342
  %261 = mul nsw i32 %154, %185, !dbg !1342
  %262 = mul nsw i32 %154, %186, !dbg !1342
  %263 = add i32 %251, 536879104, !dbg !1343
  %264 = add i32 %252, 536879104, !dbg !1343
  %265 = add i32 %253, 536879104, !dbg !1343
  %266 = add i32 %254, 536879104, !dbg !1343
  %267 = add i32 %263, %255, !dbg !1344
  %268 = add i32 %264, %256, !dbg !1344
  %269 = add i32 %265, %257, !dbg !1344
  %270 = add i32 %266, %258, !dbg !1344
  %271 = add i32 %267, %259, !dbg !1345
  %272 = add i32 %268, %260, !dbg !1345
  %273 = add i32 %269, %261, !dbg !1345
  %274 = add i32 %270, %262, !dbg !1345
  %275 = lshr i32 %271, 14, !dbg !1346
  %276 = lshr i32 %272, 14, !dbg !1346
  %277 = lshr i32 %273, 14, !dbg !1346
  %278 = lshr i32 %274, 14, !dbg !1346
  %279 = trunc i32 %275 to i16, !dbg !1347
  %280 = trunc i32 %276 to i16, !dbg !1347
  %281 = trunc i32 %277 to i16, !dbg !1347
  %282 = trunc i32 %278 to i16, !dbg !1347
  store i16 %279, ptr %next.gep456, align 2, !dbg !1348
  store i16 %280, ptr %next.gep457, align 2, !dbg !1348
  store i16 %281, ptr %gep655, align 2, !dbg !1348
  store i16 %282, ptr %gep657, align 2, !dbg !1348
  %index.next460 = add nuw i64 %index444, 4
  %283 = icmp eq i64 %index.next460, %n.vec434
  br i1 %283, label %middle.block429, label %vector.body443, !llvm.loop !1349

middle.block429:                                  ; preds = %vector.body443
  %cmp.n461 = icmp eq i64 %n.vec434, %156, !dbg !1311
  br i1 %cmp.n461, label %RGB_YUV_rgb_to_yuv.exit, label %for.body.i.preheader630, !dbg !1311

for.cond45.preheader.i:                           ; preds = %if.end58
  br i1 %cmp46281.i, label %for.body48.i.preheader, label %RGB_YUV_rgb_to_yuv.exit, !dbg !1351

for.body48.i.preheader:                           ; preds = %for.cond45.preheader.i
  %284 = zext nneg i32 %mul to i64, !dbg !1351
  %min.iters.check464 = icmp ult i32 %mul, 32, !dbg !1351
  br i1 %min.iters.check464, label %for.body48.i.preheader629, label %vector.ph465, !dbg !1351

for.body48.i.preheader629:                        ; preds = %middle.block462, %for.body48.i.preheader
  %rp.addr.1288.i.ph = phi ptr [ %116, %for.body48.i.preheader ], [ %ind.end468, %middle.block462 ]
  %i.1287.i.ph = phi i32 [ 0, %for.body48.i.preheader ], [ %ind.end470, %middle.block462 ]
  %gp.addr.1286.i.ph = phi ptr [ %add.ptr, %for.body48.i.preheader ], [ %ind.end472, %middle.block462 ]
  %vp.addr.1285.i.ph = phi ptr [ %add.ptr59, %for.body48.i.preheader ], [ %ind.end474, %middle.block462 ]
  %285 = insertelement <2 x i32> <i32 536879104, i32 poison>, i32 %.sink193.i, i64 1
  br label %for.body48.i, !dbg !1351

vector.ph465:                                     ; preds = %for.body48.i.preheader
  %n.vec467 = and i64 %284, 2147483616, !dbg !1351
  %286 = mul nuw nsw i64 %n.vec467, 6, !dbg !1351
  %ind.end468 = getelementptr i8, ptr %116, i64 %286, !dbg !1351
  %ind.end470 = trunc nuw nsw i64 %n.vec467 to i32, !dbg !1351
  %287 = mul nuw nsw i64 %n.vec467, 6, !dbg !1351
  %ind.end472 = getelementptr i8, ptr %add.ptr, i64 %287, !dbg !1351
  %288 = mul nuw nsw i64 %n.vec467, 6, !dbg !1351
  %ind.end474 = getelementptr i8, ptr %add.ptr59, i64 %288, !dbg !1351
  %broadcast.splat = shufflevector <2 x i32> %133, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !1351
  %broadcast.splat503 = shufflevector <2 x i32> %126, <2 x i32> poison, <8 x i32> zeroinitializer, !dbg !1351
  %broadcast.splat505 = shufflevector <2 x i32> %126, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !1351
  %broadcast.splatinsert506 = insertelement <8 x i32> poison, i32 %.sink193.i, i64 0, !dbg !1351
  %broadcast.splat507 = shufflevector <8 x i32> %broadcast.splatinsert506, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1351
  %broadcast.splat509 = shufflevector <2 x i32> %133, <2 x i32> poison, <8 x i32> zeroinitializer, !dbg !1351
  %broadcast.splat511 = shufflevector <2 x i32> %140, <2 x i32> poison, <8 x i32> zeroinitializer, !dbg !1351
  %broadcast.splat513 = shufflevector <2 x i32> %140, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !1351
  %broadcast.splat515 = shufflevector <2 x i32> %144, <2 x i32> poison, <8 x i32> zeroinitializer, !dbg !1351
  %broadcast.splat517 = shufflevector <2 x i32> %144, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, !dbg !1351
  %invariant.gep658 = getelementptr i8, ptr %116, i64 96, !dbg !1351
  %invariant.gep660 = getelementptr i8, ptr %116, i64 144, !dbg !1351
  %invariant.gep662 = getelementptr i8, ptr %add.ptr59, i64 -4, !dbg !1351
  %invariant.gep664 = getelementptr i8, ptr %add.ptr59, i64 -4, !dbg !1351
  %invariant.gep666 = getelementptr i8, ptr %add.ptr59, i64 92, !dbg !1351
  %invariant.gep668 = getelementptr i8, ptr %add.ptr59, i64 140, !dbg !1351
  br label %vector.body476, !dbg !1351

vector.body476:                                   ; preds = %vector.body476, %vector.ph465
  %index477 = phi i64 [ 0, %vector.ph465 ], [ %index.next521, %vector.body476 ]
  %offset.idx478 = mul i64 %index477, 6, !dbg !1351
  %289 = or disjoint i64 %offset.idx478, 48, !dbg !1351
  %next.gep479 = getelementptr i8, ptr %116, i64 %offset.idx478
  %next.gep480 = getelementptr i8, ptr %116, i64 %289
  %gep659 = getelementptr i8, ptr %invariant.gep658, i64 %offset.idx478
  %gep661 = getelementptr i8, ptr %invariant.gep660, i64 %offset.idx478
  %offset.idx483 = mul i64 %index477, 6
  %290 = or disjoint i64 %offset.idx483, 48
  %wide.vec = load <24 x i16>, ptr %next.gep479, align 2, !dbg !1354
  %wide.vec488 = load <24 x i16>, ptr %next.gep480, align 2, !dbg !1354
  %wide.vec489 = load <24 x i16>, ptr %gep659, align 2, !dbg !1354
  %wide.vec490 = load <24 x i16>, ptr %gep661, align 2, !dbg !1354
  %strided.vec = shufflevector <24 x i16> %wide.vec, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>, !dbg !1354
  %strided.vec491 = shufflevector <24 x i16> %wide.vec488, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>, !dbg !1354
  %strided.vec492 = shufflevector <24 x i16> %wide.vec489, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>, !dbg !1354
  %strided.vec493 = shufflevector <24 x i16> %wide.vec490, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>, !dbg !1354
  %strided.vec494 = shufflevector <24 x i16> %wide.vec, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>, !dbg !1354
  %strided.vec495 = shufflevector <24 x i16> %wide.vec488, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>, !dbg !1354
  %strided.vec496 = shufflevector <24 x i16> %wide.vec489, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>, !dbg !1354
  %strided.vec497 = shufflevector <24 x i16> %wide.vec490, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>, !dbg !1354
  %strided.vec498 = shufflevector <24 x i16> %wide.vec, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>, !dbg !1354
  %strided.vec499 = shufflevector <24 x i16> %wide.vec488, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>, !dbg !1354
  %strided.vec500 = shufflevector <24 x i16> %wide.vec489, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>, !dbg !1354
  %strided.vec501 = shufflevector <24 x i16> %wide.vec490, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>, !dbg !1354
  %291 = zext <8 x i16> %strided.vec to <8 x i32>, !dbg !1357
  %292 = zext <8 x i16> %strided.vec491 to <8 x i32>, !dbg !1357
  %293 = zext <8 x i16> %strided.vec492 to <8 x i32>, !dbg !1357
  %294 = zext <8 x i16> %strided.vec493 to <8 x i32>, !dbg !1357
  %295 = zext <8 x i16> %strided.vec494 to <8 x i32>, !dbg !1358
  %296 = zext <8 x i16> %strided.vec495 to <8 x i32>, !dbg !1358
  %297 = zext <8 x i16> %strided.vec496 to <8 x i32>, !dbg !1358
  %298 = zext <8 x i16> %strided.vec497 to <8 x i32>, !dbg !1358
  %299 = zext <8 x i16> %strided.vec498 to <8 x i32>, !dbg !1359
  %300 = zext <8 x i16> %strided.vec499 to <8 x i32>, !dbg !1359
  %301 = zext <8 x i16> %strided.vec500 to <8 x i32>, !dbg !1359
  %302 = zext <8 x i16> %strided.vec501 to <8 x i32>, !dbg !1359
  %303 = mul nsw <8 x i32> %broadcast.splat, %291, !dbg !1360
  %304 = mul nsw <8 x i32> %broadcast.splat, %292, !dbg !1360
  %305 = mul nsw <8 x i32> %broadcast.splat, %293, !dbg !1360
  %306 = mul nsw <8 x i32> %broadcast.splat, %294, !dbg !1360
  %307 = mul nsw <8 x i32> %broadcast.splat503, %295, !dbg !1361
  %308 = mul nsw <8 x i32> %broadcast.splat503, %296, !dbg !1361
  %309 = mul nsw <8 x i32> %broadcast.splat503, %297, !dbg !1361
  %310 = mul nsw <8 x i32> %broadcast.splat503, %298, !dbg !1361
  %311 = mul nsw <8 x i32> %broadcast.splat505, %299, !dbg !1362
  %312 = mul nsw <8 x i32> %broadcast.splat505, %300, !dbg !1362
  %313 = mul nsw <8 x i32> %broadcast.splat505, %301, !dbg !1362
  %314 = mul nsw <8 x i32> %broadcast.splat505, %302, !dbg !1362
  %315 = add <8 x i32> %303, %broadcast.splat507, !dbg !1363
  %316 = add <8 x i32> %304, %broadcast.splat507, !dbg !1363
  %317 = add <8 x i32> %305, %broadcast.splat507, !dbg !1363
  %318 = add <8 x i32> %306, %broadcast.splat507, !dbg !1363
  %319 = add <8 x i32> %315, %307, !dbg !1364
  %320 = add <8 x i32> %316, %308, !dbg !1364
  %321 = add <8 x i32> %317, %309, !dbg !1364
  %322 = add <8 x i32> %318, %310, !dbg !1364
  %323 = add <8 x i32> %319, %311, !dbg !1365
  %324 = add <8 x i32> %320, %312, !dbg !1365
  %325 = add <8 x i32> %321, %313, !dbg !1365
  %326 = add <8 x i32> %322, %314, !dbg !1365
  %327 = ashr <8 x i32> %323, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>, !dbg !1366
  %328 = ashr <8 x i32> %324, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>, !dbg !1366
  %329 = ashr <8 x i32> %325, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>, !dbg !1366
  %330 = ashr <8 x i32> %326, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>, !dbg !1366
  %331 = icmp slt <8 x i32> %327, zeroinitializer, !dbg !1367
  %332 = icmp slt <8 x i32> %328, zeroinitializer, !dbg !1367
  %333 = icmp slt <8 x i32> %329, zeroinitializer, !dbg !1367
  %334 = icmp slt <8 x i32> %330, zeroinitializer, !dbg !1367
  %335 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %327, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>), !dbg !1369
  %336 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %328, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>), !dbg !1369
  %337 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %329, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>), !dbg !1369
  %338 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %330, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>), !dbg !1369
  %339 = trunc nuw <8 x i32> %335 to <8 x i16>, !dbg !1370
  %340 = trunc nuw <8 x i32> %336 to <8 x i16>, !dbg !1370
  %341 = trunc nuw <8 x i32> %337 to <8 x i16>, !dbg !1370
  %342 = trunc nuw <8 x i32> %338 to <8 x i16>, !dbg !1370
  %343 = select <8 x i1> %331, <8 x i16> zeroinitializer, <8 x i16> %339, !dbg !1370
  %344 = select <8 x i1> %332, <8 x i16> zeroinitializer, <8 x i16> %340, !dbg !1370
  %345 = select <8 x i1> %333, <8 x i16> zeroinitializer, <8 x i16> %341, !dbg !1370
  %346 = select <8 x i1> %334, <8 x i16> zeroinitializer, <8 x i16> %342, !dbg !1370
  %347 = mul nsw <8 x i32> %broadcast.splat509, %291, !dbg !1371
  %348 = mul nsw <8 x i32> %broadcast.splat509, %292, !dbg !1371
  %349 = mul nsw <8 x i32> %broadcast.splat509, %293, !dbg !1371
  %350 = mul nsw <8 x i32> %broadcast.splat509, %294, !dbg !1371
  %351 = mul nsw <8 x i32> %broadcast.splat511, %295, !dbg !1372
  %352 = mul nsw <8 x i32> %broadcast.splat511, %296, !dbg !1372
  %353 = mul nsw <8 x i32> %broadcast.splat511, %297, !dbg !1372
  %354 = mul nsw <8 x i32> %broadcast.splat511, %298, !dbg !1372
  %355 = mul nsw <8 x i32> %broadcast.splat513, %299, !dbg !1373
  %356 = mul nsw <8 x i32> %broadcast.splat513, %300, !dbg !1373
  %357 = mul nsw <8 x i32> %broadcast.splat513, %301, !dbg !1373
  %358 = mul nsw <8 x i32> %broadcast.splat513, %302, !dbg !1373
  %359 = add <8 x i32> %347, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>, !dbg !1374
  %360 = add <8 x i32> %348, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>, !dbg !1374
  %361 = add <8 x i32> %349, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>, !dbg !1374
  %362 = add <8 x i32> %350, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>, !dbg !1374
  %363 = add <8 x i32> %359, %351, !dbg !1375
  %364 = add <8 x i32> %360, %352, !dbg !1375
  %365 = add <8 x i32> %361, %353, !dbg !1375
  %366 = add <8 x i32> %362, %354, !dbg !1375
  %367 = add <8 x i32> %363, %355, !dbg !1376
  %368 = add <8 x i32> %364, %356, !dbg !1376
  %369 = add <8 x i32> %365, %357, !dbg !1376
  %370 = add <8 x i32> %366, %358, !dbg !1376
  %371 = ashr <8 x i32> %367, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>, !dbg !1377
  %372 = ashr <8 x i32> %368, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>, !dbg !1377
  %373 = ashr <8 x i32> %369, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>, !dbg !1377
  %374 = ashr <8 x i32> %370, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>, !dbg !1377
  %375 = icmp slt <8 x i32> %371, zeroinitializer, !dbg !1378
  %376 = icmp slt <8 x i32> %372, zeroinitializer, !dbg !1378
  %377 = icmp slt <8 x i32> %373, zeroinitializer, !dbg !1378
  %378 = icmp slt <8 x i32> %374, zeroinitializer, !dbg !1378
  %379 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %371, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>), !dbg !1380
  %380 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %372, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>), !dbg !1380
  %381 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %373, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>), !dbg !1380
  %382 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %374, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>), !dbg !1380
  %383 = trunc nuw <8 x i32> %379 to <8 x i16>, !dbg !1381
  %384 = trunc nuw <8 x i32> %380 to <8 x i16>, !dbg !1381
  %385 = trunc nuw <8 x i32> %381 to <8 x i16>, !dbg !1381
  %386 = trunc nuw <8 x i32> %382 to <8 x i16>, !dbg !1381
  %387 = select <8 x i1> %375, <8 x i16> zeroinitializer, <8 x i16> %383, !dbg !1381
  %388 = select <8 x i1> %376, <8 x i16> zeroinitializer, <8 x i16> %384, !dbg !1381
  %389 = select <8 x i1> %377, <8 x i16> zeroinitializer, <8 x i16> %385, !dbg !1381
  %390 = select <8 x i1> %378, <8 x i16> zeroinitializer, <8 x i16> %386, !dbg !1381
  %391 = mul nsw <8 x i32> %broadcast.splat513, %291, !dbg !1382
  %392 = mul nsw <8 x i32> %broadcast.splat513, %292, !dbg !1382
  %393 = mul nsw <8 x i32> %broadcast.splat513, %293, !dbg !1382
  %394 = mul nsw <8 x i32> %broadcast.splat513, %294, !dbg !1382
  %395 = mul nsw <8 x i32> %broadcast.splat515, %295, !dbg !1383
  %396 = mul nsw <8 x i32> %broadcast.splat515, %296, !dbg !1383
  %397 = mul nsw <8 x i32> %broadcast.splat515, %297, !dbg !1383
  %398 = mul nsw <8 x i32> %broadcast.splat515, %298, !dbg !1383
  %399 = mul nsw <8 x i32> %broadcast.splat517, %299, !dbg !1384
  %400 = mul nsw <8 x i32> %broadcast.splat517, %300, !dbg !1384
  %401 = mul nsw <8 x i32> %broadcast.splat517, %301, !dbg !1384
  %402 = mul nsw <8 x i32> %broadcast.splat517, %302, !dbg !1384
  %403 = add <8 x i32> %391, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>, !dbg !1385
  %404 = add <8 x i32> %392, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>, !dbg !1385
  %405 = add <8 x i32> %393, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>, !dbg !1385
  %406 = add <8 x i32> %394, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>, !dbg !1385
  %407 = add <8 x i32> %403, %395, !dbg !1386
  %408 = add <8 x i32> %404, %396, !dbg !1386
  %409 = add <8 x i32> %405, %397, !dbg !1386
  %410 = add <8 x i32> %406, %398, !dbg !1386
  %411 = add <8 x i32> %407, %399, !dbg !1387
  %412 = add <8 x i32> %408, %400, !dbg !1387
  %413 = add <8 x i32> %409, %401, !dbg !1387
  %414 = add <8 x i32> %410, %402, !dbg !1387
  %415 = ashr <8 x i32> %411, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>, !dbg !1388
  %416 = ashr <8 x i32> %412, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>, !dbg !1388
  %417 = ashr <8 x i32> %413, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>, !dbg !1388
  %418 = ashr <8 x i32> %414, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>, !dbg !1388
  %419 = icmp slt <8 x i32> %415, zeroinitializer, !dbg !1389
  %420 = icmp slt <8 x i32> %416, zeroinitializer, !dbg !1389
  %421 = icmp slt <8 x i32> %417, zeroinitializer, !dbg !1389
  %422 = icmp slt <8 x i32> %418, zeroinitializer, !dbg !1389
  %423 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %415, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>), !dbg !1391
  %424 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %416, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>), !dbg !1391
  %425 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %417, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>), !dbg !1391
  %426 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %418, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>), !dbg !1391
  %427 = trunc nuw <8 x i32> %423 to <8 x i16>, !dbg !1392
  %428 = trunc nuw <8 x i32> %424 to <8 x i16>, !dbg !1392
  %429 = trunc nuw <8 x i32> %425 to <8 x i16>, !dbg !1392
  %430 = trunc nuw <8 x i32> %426 to <8 x i16>, !dbg !1392
  %431 = select <8 x i1> %419, <8 x i16> zeroinitializer, <8 x i16> %427, !dbg !1392
  %432 = select <8 x i1> %420, <8 x i16> zeroinitializer, <8 x i16> %428, !dbg !1392
  %433 = select <8 x i1> %421, <8 x i16> zeroinitializer, <8 x i16> %429, !dbg !1392
  %434 = select <8 x i1> %422, <8 x i16> zeroinitializer, <8 x i16> %430, !dbg !1392
  %gep663 = getelementptr i8, ptr %invariant.gep662, i64 %offset.idx483
  %gep665 = getelementptr i8, ptr %invariant.gep664, i64 %290
  %gep667 = getelementptr i8, ptr %invariant.gep666, i64 %offset.idx483
  %gep669 = getelementptr i8, ptr %invariant.gep668, i64 %offset.idx483
  %435 = shufflevector <8 x i16> %343, <8 x i16> %387, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !1393
  %436 = shufflevector <8 x i16> %431, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !1393
  %interleaved.vec = shufflevector <16 x i16> %435, <16 x i16> %436, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>, !dbg !1393
  store <24 x i16> %interleaved.vec, ptr %gep663, align 2, !dbg !1393
  %437 = shufflevector <8 x i16> %344, <8 x i16> %388, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !1393
  %438 = shufflevector <8 x i16> %432, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !1393
  %interleaved.vec518 = shufflevector <16 x i16> %437, <16 x i16> %438, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>, !dbg !1393
  store <24 x i16> %interleaved.vec518, ptr %gep665, align 2, !dbg !1393
  %439 = shufflevector <8 x i16> %345, <8 x i16> %389, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !1393
  %440 = shufflevector <8 x i16> %433, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !1393
  %interleaved.vec519 = shufflevector <16 x i16> %439, <16 x i16> %440, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>, !dbg !1393
  store <24 x i16> %interleaved.vec519, ptr %gep667, align 2, !dbg !1393
  %441 = shufflevector <8 x i16> %346, <8 x i16> %390, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !1393
  %442 = shufflevector <8 x i16> %434, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !1393
  %interleaved.vec520 = shufflevector <16 x i16> %441, <16 x i16> %442, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>, !dbg !1393
  store <24 x i16> %interleaved.vec520, ptr %gep669, align 2, !dbg !1393
  %index.next521 = add nuw i64 %index477, 32
  %443 = icmp eq i64 %index.next521, %n.vec467
  br i1 %443, label %middle.block462, label %vector.body476, !llvm.loop !1394

middle.block462:                                  ; preds = %vector.body476
  %cmp.n522 = icmp eq i64 %n.vec467, %284, !dbg !1351
  br i1 %cmp.n522, label %RGB_YUV_rgb_to_yuv.exit, label %for.body48.i.preheader629, !dbg !1351

for.body.i:                                       ; preds = %for.body.i.preheader630, %for.body.i
  %rp.addr.0280.i = phi ptr [ %add.ptr.i, %for.body.i ], [ %rp.addr.0280.i.ph, %for.body.i.preheader630 ]
  %i.0279.i = phi i32 [ %inc.i, %for.body.i ], [ %i.0279.i.ph, %for.body.i.preheader630 ]
  %gp.addr.0278.i = phi ptr [ %add.ptr3.i, %for.body.i ], [ %gp.addr.0278.i.ph, %for.body.i.preheader630 ]
  %vp.addr.0277.i = phi ptr [ %add.ptr44.i, %for.body.i ], [ %vp.addr.0277.i.ph, %for.body.i.preheader630 ]
    #dbg_value(ptr %rp.addr.0280.i, !1294, !DIExpression(), !1306)
    #dbg_value(i32 %i.0279.i, !1304, !DIExpression(), !1306)
    #dbg_value(ptr %gp.addr.0278.i, !1295, !DIExpression(), !1306)
    #dbg_value(ptr %vp.addr.0277.i, !1302, !DIExpression(), !1306)
    #dbg_value(ptr %gp.addr.0278.i, !1301, !DIExpression(), !1306)
    #dbg_value(ptr %rp.addr.0280.i, !1300, !DIExpression(), !1306)
    #dbg_value(ptr %vp.addr.0277.i, !1296, !DIExpression(), !1306)
  %444 = load i16, ptr %rp.addr.0280.i, align 2, !dbg !1314
  %conv.i = zext i16 %444 to i32, !dbg !1317
    #dbg_value(i32 %conv.i, !274, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !809)
  %add.ptr.i = getelementptr i8, ptr %rp.addr.0280.i, i64 6, !dbg !1396
    #dbg_value(ptr %add.ptr.i, !1294, !DIExpression(), !1306)
  %445 = load i16, ptr %gp.addr.0278.i, align 2, !dbg !1318
  %conv1.i = zext i16 %445 to i32, !dbg !1319
    #dbg_value(i32 %conv1.i, !274, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !809)
  %add.ptr3.i = getelementptr i8, ptr %gp.addr.0278.i, i64 6, !dbg !1397
    #dbg_value(ptr %add.ptr3.i, !1295, !DIExpression(), !1306)
  %446 = load i16, ptr %vp.addr.0277.i, align 2, !dbg !1320
  %conv4.i = zext i16 %446 to i32, !dbg !1321
    #dbg_value(i32 %conv4.i, !274, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !809)
  %add.ptr44.i = getelementptr i8, ptr %vp.addr.0277.i, i64 6, !dbg !1398
    #dbg_value(ptr %add.ptr44.i, !1296, !DIExpression(), !1306)
  %mul8.i = mul nsw i32 %146, %conv.i, !dbg !1322
  %mul10.i = mul nsw i32 %145, %conv1.i, !dbg !1323
  %mul12.i = mul nsw i32 %147, %conv4.i, !dbg !1324
  %add.i = add i32 %mul8.i, %.sink193.i, !dbg !1325
  %add13.i = add i32 %add.i, %mul10.i, !dbg !1326
  %add14.i = add i32 %add13.i, %mul12.i, !dbg !1327
  %shr.i = lshr i32 %add14.i, 14, !dbg !1328
  %conv15.i = trunc i32 %shr.i to i16, !dbg !1329
  store i16 %conv15.i, ptr %rp.addr.0280.i, align 2, !dbg !1330
    #dbg_value(ptr %add.ptr.i, !1300, !DIExpression(), !1306)
  %mul19.i = mul nsw i32 %151, %conv.i, !dbg !1331
  %mul21.i = mul nsw i32 %149, %conv1.i, !dbg !1332
  %mul24.i = mul nsw i32 %150, %conv4.i, !dbg !1333
  %add22.i = add i32 %mul19.i, 536879104, !dbg !1334
  %add25.i = add i32 %add22.i, %mul21.i, !dbg !1335
  %add26.i = add i32 %add25.i, %mul24.i, !dbg !1336
  %shr27.i = lshr i32 %add26.i, 14, !dbg !1337
  %conv28.i = trunc i32 %shr27.i to i16, !dbg !1338
  store i16 %conv28.i, ptr %gp.addr.0278.i, align 2, !dbg !1339
    #dbg_value(ptr %add.ptr3.i, !1301, !DIExpression(), !1306)
  %mul32.i = mul nsw i32 %150, %conv.i, !dbg !1340
  %mul34.i = mul nsw i32 %153, %conv1.i, !dbg !1341
  %mul37.i = mul nsw i32 %154, %conv4.i, !dbg !1342
  %add35.i = add i32 %mul32.i, 536879104, !dbg !1343
  %add38.i = add i32 %add35.i, %mul34.i, !dbg !1344
  %add40.i = add i32 %add38.i, %mul37.i, !dbg !1345
  %shr41.i = lshr i32 %add40.i, 14, !dbg !1346
  %conv42.i = trunc i32 %shr41.i to i16, !dbg !1347
  store i16 %conv42.i, ptr %vp.addr.0277.i, align 2, !dbg !1348
    #dbg_value(ptr %add.ptr44.i, !1302, !DIExpression(), !1306)
  %inc.i = add nuw nsw i32 %i.0279.i, 1, !dbg !1399
    #dbg_value(i32 %inc.i, !1304, !DIExpression(), !1306)
  %exitcond.not.i = icmp eq i32 %inc.i, %mul, !dbg !1400
  br i1 %exitcond.not.i, label %RGB_YUV_rgb_to_yuv.exit, label %for.body.i, !dbg !1311, !llvm.loop !1401

for.body48.i:                                     ; preds = %for.body48.i.preheader629, %for.body48.i
  %rp.addr.1288.i = phi ptr [ %add.ptr52.i, %for.body48.i ], [ %rp.addr.1288.i.ph, %for.body48.i.preheader629 ]
  %i.1287.i = phi i32 [ %inc165.i, %for.body48.i ], [ %i.1287.i.ph, %for.body48.i.preheader629 ]
  %gp.addr.1286.i = phi ptr [ %add.ptr56.i, %for.body48.i ], [ %gp.addr.1286.i.ph, %for.body48.i.preheader629 ]
  %vp.addr.1285.i = phi ptr [ %add.ptr163.i, %for.body48.i ], [ %vp.addr.1285.i.ph, %for.body48.i.preheader629 ]
    #dbg_value(ptr %rp.addr.1288.i, !1294, !DIExpression(), !1306)
    #dbg_value(i32 %i.1287.i, !1304, !DIExpression(), !1306)
    #dbg_value(ptr %gp.addr.1286.i, !1295, !DIExpression(), !1306)
    #dbg_value(ptr %vp.addr.1285.i, !1302, !DIExpression(), !1306)
    #dbg_value(ptr %gp.addr.1286.i, !1301, !DIExpression(), !1306)
    #dbg_value(ptr %rp.addr.1288.i, !1300, !DIExpression(), !1306)
    #dbg_value(ptr %vp.addr.1285.i, !1296, !DIExpression(), !1306)
  %447 = load i16, ptr %rp.addr.1288.i, align 2, !dbg !1354
  %conv49.i = zext i16 %447 to i32, !dbg !1357
    #dbg_value(i32 %conv49.i, !274, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !809)
  %add.ptr52.i = getelementptr i8, ptr %rp.addr.1288.i, i64 6, !dbg !1402
    #dbg_value(ptr %add.ptr52.i, !1294, !DIExpression(), !1306)
  %448 = load i16, ptr %gp.addr.1286.i, align 2, !dbg !1403
    #dbg_value(i16 %448, !274, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 32), !809)
  %add.ptr56.i = getelementptr i8, ptr %gp.addr.1286.i, i64 6, !dbg !1404
    #dbg_value(ptr %add.ptr56.i, !1295, !DIExpression(), !1306)
  %449 = load i16, ptr %vp.addr.1285.i, align 2, !dbg !1405
    #dbg_value(i16 %449, !274, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 32), !809)
  %add.ptr163.i = getelementptr i8, ptr %vp.addr.1285.i, i64 6, !dbg !1406
    #dbg_value(ptr %add.ptr163.i, !1296, !DIExpression(), !1306)
  %450 = insertelement <2 x i16> poison, i16 %448, i64 0, !dbg !1358
  %451 = insertelement <2 x i16> %450, i16 %449, i64 1, !dbg !1358
  %452 = zext <2 x i16> %451 to <2 x i32>, !dbg !1358
  %453 = mul nsw <2 x i32> %452, %126, !dbg !1361
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison, i32 poison), !274, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 14, DW_OP_shra, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !809)
    #dbg_value(ptr %add.ptr52.i, !1300, !DIExpression(), !1306)
  %454 = mul nsw <2 x i32> %452, %140, !dbg !1372
  %455 = insertelement <2 x i32> poison, i32 %conv49.i, i64 0, !dbg !1371
  %456 = shufflevector <2 x i32> %455, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !1371
  %457 = mul nsw <2 x i32> %456, %133, !dbg !1371
  %458 = add <2 x i32> %457, %285, !dbg !1374
  %459 = shufflevector <2 x i32> %454, <2 x i32> %453, <2 x i32> <i32 0, i32 2>, !dbg !1375
  %460 = add <2 x i32> %458, %459, !dbg !1375
  %461 = shufflevector <2 x i32> %454, <2 x i32> %453, <2 x i32> <i32 1, i32 3>, !dbg !1376
  %462 = add <2 x i32> %460, %461, !dbg !1376
  %463 = ashr <2 x i32> %462, <i32 14, i32 14>, !dbg !1377
  %464 = extractelement <2 x i32> %463, i64 1, !dbg !1369
  %spec.select = call i32 @llvm.umin.i32(i32 %464, i32 65535), !dbg !1369
  %465 = trunc nuw i32 %spec.select to i16, !dbg !1370
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !274, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_plus_uconst, 536879104, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 14, DW_OP_shra, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 32), !809)
  %466 = icmp slt <2 x i32> %463, zeroinitializer, !dbg !1378
  %467 = extractelement <2 x i1> %466, i64 1, !dbg !1370
  %conv91.i = select i1 %467, i16 0, i16 %465, !dbg !1370
  store i16 %conv91.i, ptr %rp.addr.1288.i, align 2, !dbg !1407
  %468 = extractelement <2 x i32> %463, i64 0, !dbg !1380
  %spec.select367 = call i32 @llvm.umin.i32(i32 %468, i32 65535), !dbg !1380
  %469 = trunc nuw i32 %spec.select367 to i16, !dbg !1381
  %470 = extractelement <2 x i1> %466, i64 0, !dbg !1381
  %conv126.i = select i1 %470, i16 0, i16 %469, !dbg !1381
  store i16 %conv126.i, ptr %gp.addr.1286.i, align 2, !dbg !1408
    #dbg_value(ptr %add.ptr56.i, !1301, !DIExpression(), !1306)
  %mul131.i = mul nsw i32 %150, %conv49.i, !dbg !1382
  %471 = mul nsw <2 x i32> %452, %144, !dbg !1383
  %add135.i = add i32 %mul131.i, 536879104, !dbg !1385
  %472 = extractelement <2 x i32> %471, i64 0, !dbg !1386
  %add139.i = add i32 %add135.i, %472, !dbg !1386
  %473 = extractelement <2 x i32> %471, i64 1, !dbg !1387
  %add141.i = add i32 %add139.i, %473, !dbg !1387
  %shr142.i = ashr i32 %add141.i, 14, !dbg !1388
    #dbg_value(i32 %shr142.i, !274, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !809)
  %cmp144.i = icmp slt i32 %shr142.i, 0, !dbg !1389
  %spec.select368 = call i32 @llvm.umin.i32(i32 %shr142.i, i32 65535), !dbg !1391
  %474 = trunc nuw i32 %spec.select368 to i16, !dbg !1392
  %conv161.i = select i1 %cmp144.i, i16 0, i16 %474, !dbg !1392
  store i16 %conv161.i, ptr %vp.addr.1285.i, align 2, !dbg !1393
    #dbg_value(ptr %add.ptr163.i, !1302, !DIExpression(), !1306)
  %inc165.i = add nuw nsw i32 %i.1287.i, 1, !dbg !1409
    #dbg_value(i32 %inc165.i, !1304, !DIExpression(), !1306)
  %exitcond290.not.i = icmp eq i32 %inc165.i, %mul, !dbg !1410
  br i1 %exitcond290.not.i, label %RGB_YUV_rgb_to_yuv.exit, label %for.body48.i, !dbg !1351, !llvm.loop !1411

RGB_YUV_rgb_to_yuv.exit:                          ; preds = %for.body.i, %for.body48.i, %middle.block429, %middle.block462, %for.cond.preheader.i, %for.cond45.preheader.i
  %475 = load i32, ptr %source, align 8, !dbg !1412
  switch i32 %475, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb86
    i32 3, label %if.end137
  ], !dbg !1413

sw.bb:                                            ; preds = %RGB_YUV_rgb_to_yuv.exit
  %div = sdiv i32 %mul51, 2, !dbg !1414
    #dbg_value(i32 %div, !269, !DIExpression(), !809)
  %conv = sext i32 %div to i64, !dbg !1416
  %mul64 = shl nsw i64 %conv, 1, !dbg !1417
  %call65 = call noalias ptr @malloc(i64 noundef %mul64) #21, !dbg !1418
    #dbg_value(ptr %call65, !300, !DIExpression(), !809)
    #dbg_value(ptr %call65, !303, !DIExpression(), !809)
  %idx.ext = sext i32 %mul to i64, !dbg !1419
  %add.ptr67 = getelementptr inbounds i16, ptr %call65, i64 %idx.ext, !dbg !1419
    #dbg_value(ptr %add.ptr67, !304, !DIExpression(), !809)
  %div69 = sdiv i32 %mul, 4, !dbg !1420
  %idx.ext70 = sext i32 %div69 to i64, !dbg !1421
  %add.ptr71 = getelementptr inbounds i16, ptr %add.ptr67, i64 %idx.ext70, !dbg !1421
    #dbg_value(ptr %add.ptr71, !305, !DIExpression(), !809)
    #dbg_value(ptr %116, !302, !DIExpression(), !809)
    #dbg_value(i32 0, !271, !DIExpression(), !809)
  br i1 %cmp46281.i, label %for.body.preheader, label %for.end, !dbg !1422

for.body.preheader:                               ; preds = %sw.bb
  %wide.trip.count396 = zext nneg i32 %mul to i64, !dbg !1424
  %min.iters.check562 = icmp ult i32 %mul, 33, !dbg !1422
  br i1 %min.iters.check562, label %for.body.preheader627, label %vector.memcheck554, !dbg !1422

vector.memcheck554:                               ; preds = %for.body.preheader
  %476 = shl nuw nsw i64 %wide.trip.count396, 1, !dbg !1422
  %scevgep555 = getelementptr i8, ptr %call65, i64 %476, !dbg !1422
  %477 = mul nuw nsw i64 %wide.trip.count396, 6, !dbg !1422
  %478 = getelementptr i8, ptr %116, i64 %477, !dbg !1422
  %scevgep556 = getelementptr i8, ptr %478, i64 -4, !dbg !1422
  %bound0557 = icmp ult ptr %call65, %scevgep556, !dbg !1422
  %bound1558 = icmp ult ptr %116, %scevgep555, !dbg !1422
  %found.conflict559 = and i1 %bound0557, %bound1558, !dbg !1422
  br i1 %found.conflict559, label %for.body.preheader627, label %vector.ph563, !dbg !1422

vector.ph563:                                     ; preds = %vector.memcheck554
  %n.mod.vf564 = and i64 %wide.trip.count396, 31, !dbg !1422
  %479 = icmp eq i64 %n.mod.vf564, 0, !dbg !1422
  %480 = select i1 %479, i64 32, i64 %n.mod.vf564, !dbg !1422
  %n.vec565 = sub nsw i64 %wide.trip.count396, %480, !dbg !1422
  %481 = mul nsw i64 %n.vec565, 6, !dbg !1422
  %ind.end567 = getelementptr i8, ptr %116, i64 %481, !dbg !1422
  %invariant.gep680 = getelementptr i8, ptr %116, i64 96, !dbg !1422
  %invariant.gep682 = getelementptr i8, ptr %116, i64 144, !dbg !1422
  br label %vector.body569, !dbg !1422

vector.body569:                                   ; preds = %vector.body569, %vector.ph563
  %index570 = phi i64 [ 0, %vector.ph563 ], [ %index.next584, %vector.body569 ], !dbg !1426
  %offset.idx571 = mul i64 %index570, 6, !dbg !1422
  %482 = or disjoint i64 %offset.idx571, 48, !dbg !1422
  %next.gep572 = getelementptr i8, ptr %116, i64 %offset.idx571
  %next.gep573 = getelementptr i8, ptr %116, i64 %482
  %gep681 = getelementptr i8, ptr %invariant.gep680, i64 %offset.idx571
  %gep683 = getelementptr i8, ptr %invariant.gep682, i64 %offset.idx571
  %wide.vec576 = load <24 x i16>, ptr %next.gep572, align 2, !dbg !1427
  %wide.vec577 = load <24 x i16>, ptr %next.gep573, align 2, !dbg !1427
  %wide.vec578 = load <24 x i16>, ptr %gep681, align 2, !dbg !1427
  %wide.vec579 = load <24 x i16>, ptr %gep683, align 2, !dbg !1427
  %strided.vec580 = shufflevector <24 x i16> %wide.vec576, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>, !dbg !1427
  %strided.vec581 = shufflevector <24 x i16> %wide.vec577, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>, !dbg !1427
  %strided.vec582 = shufflevector <24 x i16> %wide.vec578, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>, !dbg !1427
  %strided.vec583 = shufflevector <24 x i16> %wide.vec579, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>, !dbg !1427
  %483 = getelementptr inbounds i16, ptr %call65, i64 %index570, !dbg !1429
  %484 = getelementptr inbounds i8, ptr %483, i64 16, !dbg !1430
  %485 = getelementptr inbounds i8, ptr %483, i64 32, !dbg !1430
  %486 = getelementptr inbounds i8, ptr %483, i64 48, !dbg !1430
  store <8 x i16> %strided.vec580, ptr %483, align 2, !dbg !1430, !alias.scope !1431, !noalias !1434
  store <8 x i16> %strided.vec581, ptr %484, align 2, !dbg !1430, !alias.scope !1431, !noalias !1434
  store <8 x i16> %strided.vec582, ptr %485, align 2, !dbg !1430, !alias.scope !1431, !noalias !1434
  store <8 x i16> %strided.vec583, ptr %486, align 2, !dbg !1430, !alias.scope !1431, !noalias !1434
  %index.next584 = add nuw i64 %index570, 32, !dbg !1426
  %487 = icmp eq i64 %index.next584, %n.vec565, !dbg !1426
  br i1 %487, label %for.body.preheader627, label %vector.body569, !dbg !1426, !llvm.loop !1436

for.body.preheader627:                            ; preds = %vector.body569, %vector.memcheck554, %for.body.preheader
  %indvars.iv393.ph = phi i64 [ 0, %vector.memcheck554 ], [ 0, %for.body.preheader ], [ %n.vec565, %vector.body569 ]
  %p.0378.ph = phi ptr [ %116, %vector.memcheck554 ], [ %116, %for.body.preheader ], [ %ind.end567, %vector.body569 ]
  %488 = sub nsw i64 %wide.trip.count396, %indvars.iv393.ph, !dbg !1422
  %xtraiter639 = and i64 %488, 3, !dbg !1422
  %lcmp.mod640.not = icmp eq i64 %xtraiter639, 0, !dbg !1422
  br i1 %lcmp.mod640.not, label %for.body.prol.loopexit, label %for.body.prol, !dbg !1422

for.body.prol:                                    ; preds = %for.body.preheader627, %for.body.prol
  %indvars.iv393.prol = phi i64 [ %indvars.iv.next394.prol, %for.body.prol ], [ %indvars.iv393.ph, %for.body.preheader627 ]
  %p.0378.prol = phi ptr [ %add.ptr76.prol, %for.body.prol ], [ %p.0378.ph, %for.body.preheader627 ]
  %prol.iter641 = phi i64 [ %prol.iter641.next, %for.body.prol ], [ 0, %for.body.preheader627 ]
    #dbg_value(ptr %p.0378.prol, !302, !DIExpression(), !809)
    #dbg_value(i64 %indvars.iv393.prol, !271, !DIExpression(), !809)
  %489 = load i16, ptr %p.0378.prol, align 2, !dbg !1427
  %arrayidx75.prol = getelementptr inbounds i16, ptr %call65, i64 %indvars.iv393.prol, !dbg !1429
  store i16 %489, ptr %arrayidx75.prol, align 2, !dbg !1430
  %add.ptr76.prol = getelementptr inbounds i8, ptr %p.0378.prol, i64 6, !dbg !1438
    #dbg_value(ptr %add.ptr76.prol, !302, !DIExpression(), !809)
  %indvars.iv.next394.prol = add nuw nsw i64 %indvars.iv393.prol, 1, !dbg !1426
    #dbg_value(i64 %indvars.iv.next394.prol, !271, !DIExpression(), !809)
  %prol.iter641.next = add i64 %prol.iter641, 1, !dbg !1422
  %prol.iter641.cmp.not = icmp eq i64 %prol.iter641.next, %xtraiter639, !dbg !1422
  br i1 %prol.iter641.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !dbg !1422, !llvm.loop !1439

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader627
  %indvars.iv393.unr = phi i64 [ %indvars.iv393.ph, %for.body.preheader627 ], [ %indvars.iv.next394.prol, %for.body.prol ]
  %p.0378.unr = phi ptr [ %p.0378.ph, %for.body.preheader627 ], [ %add.ptr76.prol, %for.body.prol ]
  %490 = sub nsw i64 %indvars.iv393.ph, %wide.trip.count396, !dbg !1422
  %491 = icmp ugt i64 %490, -4, !dbg !1422
  br i1 %491, label %for.end, label %for.body.preheader627.new, !dbg !1422

for.body.preheader627.new:                        ; preds = %for.body.prol.loopexit
  %invariant.gep684 = getelementptr i8, ptr %call65, i64 2, !dbg !1422
  %invariant.gep686 = getelementptr i8, ptr %call65, i64 4, !dbg !1422
  %invariant.gep688 = getelementptr i8, ptr %call65, i64 6, !dbg !1422
  br label %for.body, !dbg !1422

for.body:                                         ; preds = %for.body, %for.body.preheader627.new
  %indvars.iv393 = phi i64 [ %indvars.iv393.unr, %for.body.preheader627.new ], [ %indvars.iv.next394.3, %for.body ]
  %p.0378 = phi ptr [ %p.0378.unr, %for.body.preheader627.new ], [ %add.ptr76.3, %for.body ]
    #dbg_value(ptr %p.0378, !302, !DIExpression(), !809)
    #dbg_value(i64 %indvars.iv393, !271, !DIExpression(), !809)
  %492 = load i16, ptr %p.0378, align 2, !dbg !1427
  %arrayidx75 = getelementptr inbounds i16, ptr %call65, i64 %indvars.iv393, !dbg !1429
  store i16 %492, ptr %arrayidx75, align 2, !dbg !1430
  %add.ptr76 = getelementptr inbounds i8, ptr %p.0378, i64 6, !dbg !1438
    #dbg_value(ptr %add.ptr76, !302, !DIExpression(), !809)
    #dbg_value(i64 %indvars.iv393, !271, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !809)
  %493 = load i16, ptr %add.ptr76, align 2, !dbg !1427
  %gep685 = getelementptr i16, ptr %invariant.gep684, i64 %indvars.iv393, !dbg !1429
  store i16 %493, ptr %gep685, align 2, !dbg !1430
  %add.ptr76.1 = getelementptr inbounds i8, ptr %p.0378, i64 12, !dbg !1438
    #dbg_value(ptr %add.ptr76.1, !302, !DIExpression(), !809)
    #dbg_value(i64 %indvars.iv393, !271, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !809)
  %494 = load i16, ptr %add.ptr76.1, align 2, !dbg !1427
  %gep687 = getelementptr i16, ptr %invariant.gep686, i64 %indvars.iv393, !dbg !1429
  store i16 %494, ptr %gep687, align 2, !dbg !1430
  %add.ptr76.2 = getelementptr inbounds i8, ptr %p.0378, i64 18, !dbg !1438
    #dbg_value(ptr %add.ptr76.2, !302, !DIExpression(), !809)
    #dbg_value(i64 %indvars.iv393, !271, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !809)
  %495 = load i16, ptr %add.ptr76.2, align 2, !dbg !1427
  %gep689 = getelementptr i16, ptr %invariant.gep688, i64 %indvars.iv393, !dbg !1429
  store i16 %495, ptr %gep689, align 2, !dbg !1430
  %add.ptr76.3 = getelementptr inbounds i8, ptr %p.0378, i64 24, !dbg !1438
    #dbg_value(ptr %add.ptr76.3, !302, !DIExpression(), !809)
  %indvars.iv.next394.3 = add nuw nsw i64 %indvars.iv393, 4, !dbg !1426
    #dbg_value(i64 %indvars.iv.next394.3, !271, !DIExpression(), !809)
  %exitcond397.not.3 = icmp eq i64 %indvars.iv.next394.3, %wide.trip.count396, !dbg !1424
  br i1 %exitcond397.not.3, label %for.end, label %for.body, !dbg !1422, !llvm.loop !1440

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %sw.bb
  %mul79 = and i64 %idx.ext, 9223372036854775807, !dbg !1441
  %call81 = call noalias ptr @malloc(i64 noundef %mul79) #21, !dbg !1442
    #dbg_value(ptr %call81, !301, !DIExpression(), !809)
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %add.ptr, i32 noundef %0, i32 noundef %1, i32 noundef 3, ptr noundef %call81, i32 noundef 1, i32 noundef 65535), !dbg !1443
  %div83 = sdiv i32 %0, 2, !dbg !1444
  call void @vertical_half_1chan(ptr noundef %call81, i32 noundef %div83, i32 noundef %1, i32 noundef 1, ptr noundef %add.ptr67, i32 noundef 1, i32 noundef 65535), !dbg !1445
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %add.ptr59, i32 noundef %0, i32 noundef %1, i32 noundef 3, ptr noundef %call81, i32 noundef 1, i32 noundef 65535), !dbg !1446
  call void @vertical_half_1chan(ptr noundef %call81, i32 noundef %div83, i32 noundef %1, i32 noundef 1, ptr noundef %add.ptr71, i32 noundef 1, i32 noundef 65535), !dbg !1447
  call void @free(ptr noundef %call81) #17, !dbg !1448
    #dbg_value(ptr null, !301, !DIExpression(), !809)
    #dbg_value(ptr %call65, !299, !DIExpression(), !809)
  br label %if.end137, !dbg !1449

sw.bb86:                                          ; preds = %RGB_YUV_rgb_to_yuv.exit
  %mul88 = shl nsw i32 %mul, 1, !dbg !1450
    #dbg_value(i32 %mul88, !269, !DIExpression(), !809)
  %conv89 = sext i32 %mul88 to i64, !dbg !1451
  %mul90 = shl nsw i64 %conv89, 1, !dbg !1452
  %call91 = call noalias ptr @malloc(i64 noundef %mul90) #21, !dbg !1453
    #dbg_value(ptr %call91, !300, !DIExpression(), !809)
    #dbg_value(ptr %call91, !303, !DIExpression(), !809)
  %idx.ext93 = sext i32 %mul to i64, !dbg !1454
  %add.ptr94 = getelementptr inbounds i16, ptr %call91, i64 %idx.ext93, !dbg !1454
    #dbg_value(ptr %add.ptr94, !304, !DIExpression(), !809)
  %div96 = sdiv i32 %mul, 2, !dbg !1455
  %idx.ext97 = sext i32 %div96 to i64, !dbg !1456
  %add.ptr98 = getelementptr inbounds i16, ptr %call91, i64 %idx.ext97, !dbg !1456
    #dbg_value(ptr %add.ptr98, !305, !DIExpression(), !809)
    #dbg_value(ptr %116, !302, !DIExpression(), !809)
    #dbg_value(i32 0, !271, !DIExpression(), !809)
  br i1 %cmp46281.i, label %for.body103.preheader, label %for.cond110.preheader, !dbg !1457

for.body103.preheader:                            ; preds = %sw.bb86
  %wide.trip.count = zext nneg i32 %mul to i64, !dbg !1459
  %min.iters.check531 = icmp ult i32 %mul, 33, !dbg !1457
  br i1 %min.iters.check531, label %for.body103.preheader628, label %vector.memcheck523, !dbg !1457

for.body103.preheader628:                         ; preds = %vector.body538, %vector.memcheck523, %for.body103.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck523 ], [ 0, %for.body103.preheader ], [ %n.vec534, %vector.body538 ]
  %p.1373.ph = phi ptr [ %116, %vector.memcheck523 ], [ %116, %for.body103.preheader ], [ %ind.end536, %vector.body538 ]
  %496 = sub nsw i64 %wide.trip.count, %indvars.iv.ph, !dbg !1457
  %xtraiter636 = and i64 %496, 3, !dbg !1457
  %lcmp.mod637.not = icmp eq i64 %xtraiter636, 0, !dbg !1457
  br i1 %lcmp.mod637.not, label %for.body103.prol.loopexit, label %for.body103.prol, !dbg !1457

for.body103.prol:                                 ; preds = %for.body103.preheader628, %for.body103.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body103.prol ], [ %indvars.iv.ph, %for.body103.preheader628 ]
  %p.1373.prol = phi ptr [ %add.ptr106.prol, %for.body103.prol ], [ %p.1373.ph, %for.body103.preheader628 ]
  %prol.iter638 = phi i64 [ %prol.iter638.next, %for.body103.prol ], [ 0, %for.body103.preheader628 ]
    #dbg_value(ptr %p.1373.prol, !302, !DIExpression(), !809)
    #dbg_value(i64 %indvars.iv.prol, !271, !DIExpression(), !809)
  %497 = load i16, ptr %p.1373.prol, align 2, !dbg !1461
  %arrayidx105.prol = getelementptr inbounds i16, ptr %call91, i64 %indvars.iv.prol, !dbg !1463
  store i16 %497, ptr %arrayidx105.prol, align 2, !dbg !1464
  %add.ptr106.prol = getelementptr inbounds i8, ptr %p.1373.prol, i64 6, !dbg !1465
    #dbg_value(ptr %add.ptr106.prol, !302, !DIExpression(), !809)
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1, !dbg !1466
    #dbg_value(i64 %indvars.iv.next.prol, !271, !DIExpression(), !809)
  %prol.iter638.next = add i64 %prol.iter638, 1, !dbg !1457
  %prol.iter638.cmp.not = icmp eq i64 %prol.iter638.next, %xtraiter636, !dbg !1457
  br i1 %prol.iter638.cmp.not, label %for.body103.prol.loopexit, label %for.body103.prol, !dbg !1457, !llvm.loop !1467

for.body103.prol.loopexit:                        ; preds = %for.body103.prol, %for.body103.preheader628
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body103.preheader628 ], [ %indvars.iv.next.prol, %for.body103.prol ]
  %p.1373.unr = phi ptr [ %p.1373.ph, %for.body103.preheader628 ], [ %add.ptr106.prol, %for.body103.prol ]
  %498 = sub nsw i64 %indvars.iv.ph, %wide.trip.count, !dbg !1457
  %499 = icmp ugt i64 %498, -4, !dbg !1457
  br i1 %499, label %for.cond110.preheader, label %for.body103.preheader628.new, !dbg !1457

for.body103.preheader628.new:                     ; preds = %for.body103.prol.loopexit
  %invariant.gep674 = getelementptr i8, ptr %call91, i64 2, !dbg !1457
  %invariant.gep676 = getelementptr i8, ptr %call91, i64 4, !dbg !1457
  %invariant.gep678 = getelementptr i8, ptr %call91, i64 6, !dbg !1457
  br label %for.body103, !dbg !1457

vector.memcheck523:                               ; preds = %for.body103.preheader
  %500 = shl nuw nsw i64 %wide.trip.count, 1, !dbg !1457
  %scevgep524 = getelementptr i8, ptr %call91, i64 %500, !dbg !1457
  %501 = mul nuw nsw i64 %wide.trip.count, 6, !dbg !1457
  %502 = getelementptr i8, ptr %116, i64 %501, !dbg !1457
  %scevgep525 = getelementptr i8, ptr %502, i64 -4, !dbg !1457
  %bound0526 = icmp ult ptr %call91, %scevgep525, !dbg !1457
  %bound1527 = icmp ult ptr %116, %scevgep524, !dbg !1457
  %found.conflict528 = and i1 %bound0526, %bound1527, !dbg !1457
  br i1 %found.conflict528, label %for.body103.preheader628, label %vector.ph532, !dbg !1457

vector.ph532:                                     ; preds = %vector.memcheck523
  %n.mod.vf533 = and i64 %wide.trip.count, 31, !dbg !1457
  %503 = icmp eq i64 %n.mod.vf533, 0, !dbg !1457
  %504 = select i1 %503, i64 32, i64 %n.mod.vf533, !dbg !1457
  %n.vec534 = sub nsw i64 %wide.trip.count, %504, !dbg !1457
  %505 = mul nsw i64 %n.vec534, 6, !dbg !1457
  %ind.end536 = getelementptr i8, ptr %116, i64 %505, !dbg !1457
  %invariant.gep670 = getelementptr i8, ptr %116, i64 96, !dbg !1457
  %invariant.gep672 = getelementptr i8, ptr %116, i64 144, !dbg !1457
  br label %vector.body538, !dbg !1457

vector.body538:                                   ; preds = %vector.body538, %vector.ph532
  %index539 = phi i64 [ 0, %vector.ph532 ], [ %index.next553, %vector.body538 ], !dbg !1466
  %offset.idx540 = mul i64 %index539, 6, !dbg !1457
  %506 = or disjoint i64 %offset.idx540, 48, !dbg !1457
  %next.gep541 = getelementptr i8, ptr %116, i64 %offset.idx540
  %next.gep542 = getelementptr i8, ptr %116, i64 %506
  %gep671 = getelementptr i8, ptr %invariant.gep670, i64 %offset.idx540
  %gep673 = getelementptr i8, ptr %invariant.gep672, i64 %offset.idx540
  %wide.vec545 = load <24 x i16>, ptr %next.gep541, align 2, !dbg !1461
  %wide.vec546 = load <24 x i16>, ptr %next.gep542, align 2, !dbg !1461
  %wide.vec547 = load <24 x i16>, ptr %gep671, align 2, !dbg !1461
  %wide.vec548 = load <24 x i16>, ptr %gep673, align 2, !dbg !1461
  %strided.vec549 = shufflevector <24 x i16> %wide.vec545, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>, !dbg !1461
  %strided.vec550 = shufflevector <24 x i16> %wide.vec546, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>, !dbg !1461
  %strided.vec551 = shufflevector <24 x i16> %wide.vec547, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>, !dbg !1461
  %strided.vec552 = shufflevector <24 x i16> %wide.vec548, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>, !dbg !1461
  %507 = getelementptr inbounds i16, ptr %call91, i64 %index539, !dbg !1463
  %508 = getelementptr inbounds i8, ptr %507, i64 16, !dbg !1464
  %509 = getelementptr inbounds i8, ptr %507, i64 32, !dbg !1464
  %510 = getelementptr inbounds i8, ptr %507, i64 48, !dbg !1464
  store <8 x i16> %strided.vec549, ptr %507, align 2, !dbg !1464, !alias.scope !1468, !noalias !1471
  store <8 x i16> %strided.vec550, ptr %508, align 2, !dbg !1464, !alias.scope !1468, !noalias !1471
  store <8 x i16> %strided.vec551, ptr %509, align 2, !dbg !1464, !alias.scope !1468, !noalias !1471
  store <8 x i16> %strided.vec552, ptr %510, align 2, !dbg !1464, !alias.scope !1468, !noalias !1471
  %index.next553 = add nuw i64 %index539, 32, !dbg !1466
  %511 = icmp eq i64 %index.next553, %n.vec534, !dbg !1466
  br i1 %511, label %for.body103.preheader628, label %vector.body538, !dbg !1466, !llvm.loop !1473

for.cond110.preheader:                            ; preds = %for.body103.prol.loopexit, %for.body103, %sw.bb86
    #dbg_value(i32 0, !273, !DIExpression(), !809)
  %cmp111374 = icmp sgt i32 %1, 0, !dbg !1475
  br i1 %cmp111374, label %for.body113.preheader, label %if.end137, !dbg !1478

for.body113.preheader:                            ; preds = %for.cond110.preheader
  %512 = sext i32 %0 to i64, !dbg !1478
  %wide.trip.count391 = zext nneg i32 %1 to i64, !dbg !1475
  br label %for.body113, !dbg !1478

for.body103:                                      ; preds = %for.body103, %for.body103.preheader628.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %for.body103.preheader628.new ], [ %indvars.iv.next.3, %for.body103 ]
  %p.1373 = phi ptr [ %p.1373.unr, %for.body103.preheader628.new ], [ %add.ptr106.3, %for.body103 ]
    #dbg_value(ptr %p.1373, !302, !DIExpression(), !809)
    #dbg_value(i64 %indvars.iv, !271, !DIExpression(), !809)
  %513 = load i16, ptr %p.1373, align 2, !dbg !1461
  %arrayidx105 = getelementptr inbounds i16, ptr %call91, i64 %indvars.iv, !dbg !1463
  store i16 %513, ptr %arrayidx105, align 2, !dbg !1464
  %add.ptr106 = getelementptr inbounds i8, ptr %p.1373, i64 6, !dbg !1465
    #dbg_value(ptr %add.ptr106, !302, !DIExpression(), !809)
    #dbg_value(i64 %indvars.iv, !271, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !809)
  %514 = load i16, ptr %add.ptr106, align 2, !dbg !1461
  %gep675 = getelementptr i16, ptr %invariant.gep674, i64 %indvars.iv, !dbg !1463
  store i16 %514, ptr %gep675, align 2, !dbg !1464
  %add.ptr106.1 = getelementptr inbounds i8, ptr %p.1373, i64 12, !dbg !1465
    #dbg_value(ptr %add.ptr106.1, !302, !DIExpression(), !809)
    #dbg_value(i64 %indvars.iv, !271, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !809)
  %515 = load i16, ptr %add.ptr106.1, align 2, !dbg !1461
  %gep677 = getelementptr i16, ptr %invariant.gep676, i64 %indvars.iv, !dbg !1463
  store i16 %515, ptr %gep677, align 2, !dbg !1464
  %add.ptr106.2 = getelementptr inbounds i8, ptr %p.1373, i64 18, !dbg !1465
    #dbg_value(ptr %add.ptr106.2, !302, !DIExpression(), !809)
    #dbg_value(i64 %indvars.iv, !271, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !809)
  %516 = load i16, ptr %add.ptr106.2, align 2, !dbg !1461
  %gep679 = getelementptr i16, ptr %invariant.gep678, i64 %indvars.iv, !dbg !1463
  store i16 %516, ptr %gep679, align 2, !dbg !1464
  %add.ptr106.3 = getelementptr inbounds i8, ptr %p.1373, i64 24, !dbg !1465
    #dbg_value(ptr %add.ptr106.3, !302, !DIExpression(), !809)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4, !dbg !1466
    #dbg_value(i64 %indvars.iv.next.3, !271, !DIExpression(), !809)
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count, !dbg !1459
  br i1 %exitcond.not.3, label %for.cond110.preheader, label %for.body103, !dbg !1457, !llvm.loop !1479

for.body113:                                      ; preds = %for.body113.preheader, %for.body113
  %indvars.iv386 = phi i64 [ 0, %for.body113.preheader ], [ %indvars.iv.next387, %for.body113 ]
    #dbg_value(i64 %indvars.iv386, !273, !DIExpression(), !809)
  %517 = mul nsw i64 %indvars.iv386, %512, !dbg !1480
  %518 = mul nsw i64 %517, 3, !dbg !1482
  %add.ptr118 = getelementptr inbounds i16, ptr %add.ptr, i64 %518, !dbg !1483
  %519 = trunc nsw i64 %517 to i32, !dbg !1484
  %div120 = sdiv i32 %519, 2, !dbg !1484
  %idx.ext121 = sext i32 %div120 to i64, !dbg !1485
  %add.ptr122 = getelementptr inbounds i16, ptr %add.ptr94, i64 %idx.ext121, !dbg !1485
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %add.ptr118, i32 noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef %add.ptr122, i32 noundef 1, i32 noundef 65535), !dbg !1486
  %add.ptr127 = getelementptr inbounds i16, ptr %add.ptr59, i64 %518, !dbg !1487
  %add.ptr131 = getelementptr inbounds i16, ptr %add.ptr98, i64 %idx.ext121, !dbg !1488
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %add.ptr127, i32 noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef %add.ptr131, i32 noundef 1, i32 noundef 65535), !dbg !1489
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1, !dbg !1490
    #dbg_value(i64 %indvars.iv.next387, !273, !DIExpression(), !809)
  %exitcond392.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count391, !dbg !1475
  br i1 %exitcond392.not, label %if.end137, label %for.body113, !dbg !1478, !llvm.loop !1491

sw.default:                                       ; preds = %RGB_YUV_rgb_to_yuv.exit
  %520 = load ptr, ptr @stderr, align 8, !dbg !1493
  %call136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %520, ptr noundef nonnull @.str.7, i32 noundef %475) #19, !dbg !1494
  br label %if.end173, !dbg !1495

if.end137:                                        ; preds = %for.body113, %for.cond110.preheader, %for.end, %RGB_YUV_rgb_to_yuv.exit, %if.end50
  %nComponents.0 = phi i32 [ %mul51, %RGB_YUV_rgb_to_yuv.exit ], [ %div, %for.end ], [ %mul51, %if.end50 ], [ %mul88, %for.cond110.preheader ], [ %mul88, %for.body113 ], !dbg !809
  %img.0 = phi ptr [ %116, %RGB_YUV_rgb_to_yuv.exit ], [ %call65, %for.end ], [ %116, %if.end50 ], [ %call91, %for.cond110.preheader ], [ %call91, %for.body113 ], !dbg !809
  %temp.0 = phi ptr [ null, %RGB_YUV_rgb_to_yuv.exit ], [ %call65, %for.end ], [ null, %if.end50 ], [ %call91, %for.cond110.preheader ], [ %call91, %for.body113 ], !dbg !809
    #dbg_value(ptr %temp.0, !300, !DIExpression(), !809)
    #dbg_value(ptr %img.0, !299, !DIExpression(), !809)
    #dbg_value(i32 %nComponents.0, !269, !DIExpression(), !809)
  %img.0587 = ptrtoint ptr %img.0 to i64, !dbg !1496
  %pic_unit_size_shift3 = getelementptr inbounds i8, ptr %source, i64 128, !dbg !1496
  %521 = load i32, ptr %pic_unit_size_shift3, align 8, !dbg !1496
  switch i32 %521, label %Error [
    i32 1, label %for.cond139.preheader
    i32 2, label %for.cond153.preheader
  ], !dbg !1497

for.cond153.preheader:                            ; preds = %if.end137
    #dbg_value(i32 0, !271, !DIExpression(), !809)
  %cmp154379 = icmp sgt i32 %nComponents.0, 0, !dbg !1498
  br i1 %cmp154379, label %for.body156.preheader, label %sw.epilog167, !dbg !1502

for.body156.preheader:                            ; preds = %for.cond153.preheader
  %wide.trip.count401 = zext nneg i32 %nComponents.0 to i64, !dbg !1498
  %min.iters.check590 = icmp ult i32 %nComponents.0, 32, !dbg !1502
  %522 = sub i64 %buf586, %img.0587, !dbg !1502
  %diff.check = icmp ult i64 %522, 64, !dbg !1502
  %or.cond = select i1 %min.iters.check590, i1 true, i1 %diff.check, !dbg !1502
  br i1 %or.cond, label %for.body156.preheader625, label %vector.ph591, !dbg !1502

for.body156.preheader625:                         ; preds = %middle.block588, %for.body156.preheader
  %indvars.iv398.ph = phi i64 [ 0, %for.body156.preheader ], [ %n.vec593, %middle.block588 ]
  %xtraiter642 = and i64 %wide.trip.count401, 3, !dbg !1502
  %lcmp.mod643.not = icmp eq i64 %xtraiter642, 0, !dbg !1502
  br i1 %lcmp.mod643.not, label %for.body156.prol.loopexit, label %for.body156.prol, !dbg !1502

for.body156.prol:                                 ; preds = %for.body156.preheader625, %for.body156.prol
  %indvars.iv398.prol = phi i64 [ %indvars.iv.next399.prol, %for.body156.prol ], [ %indvars.iv398.ph, %for.body156.preheader625 ]
  %prol.iter644 = phi i64 [ %prol.iter644.next, %for.body156.prol ], [ 0, %for.body156.preheader625 ]
    #dbg_value(i64 %indvars.iv398.prol, !271, !DIExpression(), !809)
  %arrayidx158.prol = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv398.prol, !dbg !1503
  %523 = load i16, ptr %arrayidx158.prol, align 2, !dbg !1503
  %arrayidx160.prol = getelementptr inbounds i16, ptr %buf, i64 %indvars.iv398.prol, !dbg !1505
  store i16 %523, ptr %arrayidx160.prol, align 2, !dbg !1506
  %indvars.iv.next399.prol = add nuw nsw i64 %indvars.iv398.prol, 1, !dbg !1507
    #dbg_value(i64 %indvars.iv.next399.prol, !271, !DIExpression(), !809)
  %prol.iter644.next = add i64 %prol.iter644, 1, !dbg !1502
  %prol.iter644.cmp.not = icmp eq i64 %prol.iter644.next, %xtraiter642, !dbg !1502
  br i1 %prol.iter644.cmp.not, label %for.body156.prol.loopexit, label %for.body156.prol, !dbg !1502, !llvm.loop !1508

for.body156.prol.loopexit:                        ; preds = %for.body156.prol, %for.body156.preheader625
  %indvars.iv398.unr = phi i64 [ %indvars.iv398.ph, %for.body156.preheader625 ], [ %indvars.iv.next399.prol, %for.body156.prol ]
  %524 = sub nsw i64 %indvars.iv398.ph, %wide.trip.count401, !dbg !1502
  %525 = icmp ugt i64 %524, -4, !dbg !1502
  br i1 %525, label %sw.epilog167, label %for.body156, !dbg !1502

vector.ph591:                                     ; preds = %for.body156.preheader
  %n.vec593 = and i64 %wide.trip.count401, 2147483616, !dbg !1502
  br label %vector.body595, !dbg !1502

vector.body595:                                   ; preds = %vector.body595, %vector.ph591
  %index596 = phi i64 [ 0, %vector.ph591 ], [ %index.next601, %vector.body595 ], !dbg !1507
  %526 = getelementptr inbounds i16, ptr %img.0, i64 %index596, !dbg !1503
  %527 = getelementptr inbounds i8, ptr %526, i64 16, !dbg !1503
  %528 = getelementptr inbounds i8, ptr %526, i64 32, !dbg !1503
  %529 = getelementptr inbounds i8, ptr %526, i64 48, !dbg !1503
  %wide.load597 = load <8 x i16>, ptr %526, align 2, !dbg !1503
  %wide.load598 = load <8 x i16>, ptr %527, align 2, !dbg !1503
  %wide.load599 = load <8 x i16>, ptr %528, align 2, !dbg !1503
  %wide.load600 = load <8 x i16>, ptr %529, align 2, !dbg !1503
  %530 = getelementptr inbounds i16, ptr %buf, i64 %index596, !dbg !1505
  %531 = getelementptr inbounds i8, ptr %530, i64 16, !dbg !1506
  %532 = getelementptr inbounds i8, ptr %530, i64 32, !dbg !1506
  %533 = getelementptr inbounds i8, ptr %530, i64 48, !dbg !1506
  store <8 x i16> %wide.load597, ptr %530, align 2, !dbg !1506
  store <8 x i16> %wide.load598, ptr %531, align 2, !dbg !1506
  store <8 x i16> %wide.load599, ptr %532, align 2, !dbg !1506
  store <8 x i16> %wide.load600, ptr %533, align 2, !dbg !1506
  %index.next601 = add nuw i64 %index596, 32, !dbg !1507
  %534 = icmp eq i64 %index.next601, %n.vec593, !dbg !1507
  br i1 %534, label %middle.block588, label %vector.body595, !dbg !1507, !llvm.loop !1509

middle.block588:                                  ; preds = %vector.body595
  %cmp.n602 = icmp eq i64 %n.vec593, %wide.trip.count401, !dbg !1502
  br i1 %cmp.n602, label %sw.epilog167, label %for.body156.preheader625, !dbg !1502

for.cond139.preheader:                            ; preds = %if.end137
    #dbg_value(i32 0, !271, !DIExpression(), !809)
  %cmp140381 = icmp sgt i32 %nComponents.0, 0, !dbg !1511
  br i1 %cmp140381, label %for.body142.preheader, label %sw.epilog167, !dbg !1514

for.body142.preheader:                            ; preds = %for.cond139.preheader
  %wide.trip.count406 = zext nneg i32 %nComponents.0 to i64, !dbg !1511
  %min.iters.check611 = icmp ult i32 %nComponents.0, 32, !dbg !1514
  br i1 %min.iters.check611, label %for.body142.preheader624, label %vector.memcheck603, !dbg !1514

vector.memcheck603:                               ; preds = %for.body142.preheader
  %scevgep604 = getelementptr i8, ptr %buf, i64 %wide.trip.count406, !dbg !1514
  %535 = shl nuw nsw i64 %wide.trip.count406, 1, !dbg !1514
  %scevgep605 = getelementptr i8, ptr %img.0, i64 %535, !dbg !1514
  %bound0606 = icmp ugt ptr %scevgep605, %buf, !dbg !1514
  %bound1607 = icmp ult ptr %img.0, %scevgep604, !dbg !1514
  %found.conflict608 = and i1 %bound0606, %bound1607, !dbg !1514
  br i1 %found.conflict608, label %for.body142.preheader624, label %vector.ph612, !dbg !1514

vector.ph612:                                     ; preds = %vector.memcheck603
  %n.vec614 = and i64 %wide.trip.count406, 2147483616, !dbg !1514
  br label %vector.body616, !dbg !1514

vector.body616:                                   ; preds = %vector.body616, %vector.ph612
  %index617 = phi i64 [ 0, %vector.ph612 ], [ %index.next622, %vector.body616 ], !dbg !1515
  %536 = getelementptr inbounds i16, ptr %img.0, i64 %index617, !dbg !1516
  %537 = getelementptr inbounds i8, ptr %536, i64 16, !dbg !1516
  %538 = getelementptr inbounds i8, ptr %536, i64 32, !dbg !1516
  %539 = getelementptr inbounds i8, ptr %536, i64 48, !dbg !1516
  %wide.load618 = load <8 x i16>, ptr %536, align 2, !dbg !1516, !alias.scope !1518
  %wide.load619 = load <8 x i16>, ptr %537, align 2, !dbg !1516, !alias.scope !1518
  %wide.load620 = load <8 x i16>, ptr %538, align 2, !dbg !1516, !alias.scope !1518
  %wide.load621 = load <8 x i16>, ptr %539, align 2, !dbg !1516, !alias.scope !1518
  %540 = lshr <8 x i16> %wide.load618, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1521
  %541 = lshr <8 x i16> %wide.load619, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1521
  %542 = lshr <8 x i16> %wide.load620, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1521
  %543 = lshr <8 x i16> %wide.load621, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !1521
  %544 = trunc nuw <8 x i16> %540 to <8 x i8>, !dbg !1522
  %545 = trunc nuw <8 x i16> %541 to <8 x i8>, !dbg !1522
  %546 = trunc nuw <8 x i16> %542 to <8 x i8>, !dbg !1522
  %547 = trunc nuw <8 x i16> %543 to <8 x i8>, !dbg !1522
  %548 = getelementptr inbounds i8, ptr %buf, i64 %index617, !dbg !1523
  %549 = getelementptr inbounds i8, ptr %548, i64 8, !dbg !1524
  %550 = getelementptr inbounds i8, ptr %548, i64 16, !dbg !1524
  %551 = getelementptr inbounds i8, ptr %548, i64 24, !dbg !1524
  store <8 x i8> %544, ptr %548, align 1, !dbg !1524, !alias.scope !1525, !noalias !1518
  store <8 x i8> %545, ptr %549, align 1, !dbg !1524, !alias.scope !1525, !noalias !1518
  store <8 x i8> %546, ptr %550, align 1, !dbg !1524, !alias.scope !1525, !noalias !1518
  store <8 x i8> %547, ptr %551, align 1, !dbg !1524, !alias.scope !1525, !noalias !1518
  %index.next622 = add nuw i64 %index617, 32, !dbg !1515
  %552 = icmp eq i64 %index.next622, %n.vec614, !dbg !1515
  br i1 %552, label %middle.block609, label %vector.body616, !dbg !1515, !llvm.loop !1527

middle.block609:                                  ; preds = %vector.body616
  %cmp.n623 = icmp eq i64 %n.vec614, %wide.trip.count406, !dbg !1514
  br i1 %cmp.n623, label %sw.epilog167, label %for.body142.preheader624, !dbg !1514

for.body142.preheader624:                         ; preds = %middle.block609, %vector.memcheck603, %for.body142.preheader
  %indvars.iv403.ph = phi i64 [ 0, %vector.memcheck603 ], [ 0, %for.body142.preheader ], [ %n.vec614, %middle.block609 ]
  %xtraiter645 = and i64 %wide.trip.count406, 3, !dbg !1514
  %lcmp.mod646.not = icmp eq i64 %xtraiter645, 0, !dbg !1514
  br i1 %lcmp.mod646.not, label %for.body142.prol.loopexit, label %for.body142.prol, !dbg !1514

for.body142.prol:                                 ; preds = %for.body142.preheader624, %for.body142.prol
  %indvars.iv403.prol = phi i64 [ %indvars.iv.next404.prol, %for.body142.prol ], [ %indvars.iv403.ph, %for.body142.preheader624 ]
  %prol.iter647 = phi i64 [ %prol.iter647.next, %for.body142.prol ], [ 0, %for.body142.preheader624 ]
    #dbg_value(i64 %indvars.iv403.prol, !271, !DIExpression(), !809)
  %arrayidx144.prol = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv403.prol, !dbg !1516
  %553 = load i16, ptr %arrayidx144.prol, align 2, !dbg !1516
  %554 = lshr i16 %553, 8, !dbg !1521
  %conv146.prol = trunc nuw i16 %554 to i8, !dbg !1522
  %arrayidx148.prol = getelementptr inbounds i8, ptr %buf, i64 %indvars.iv403.prol, !dbg !1523
  store i8 %conv146.prol, ptr %arrayidx148.prol, align 1, !dbg !1524
  %indvars.iv.next404.prol = add nuw nsw i64 %indvars.iv403.prol, 1, !dbg !1515
    #dbg_value(i64 %indvars.iv.next404.prol, !271, !DIExpression(), !809)
  %prol.iter647.next = add i64 %prol.iter647, 1, !dbg !1514
  %prol.iter647.cmp.not = icmp eq i64 %prol.iter647.next, %xtraiter645, !dbg !1514
  br i1 %prol.iter647.cmp.not, label %for.body142.prol.loopexit, label %for.body142.prol, !dbg !1514, !llvm.loop !1529

for.body142.prol.loopexit:                        ; preds = %for.body142.prol, %for.body142.preheader624
  %indvars.iv403.unr = phi i64 [ %indvars.iv403.ph, %for.body142.preheader624 ], [ %indvars.iv.next404.prol, %for.body142.prol ]
  %555 = sub nsw i64 %indvars.iv403.ph, %wide.trip.count406, !dbg !1514
  %556 = icmp ugt i64 %555, -4, !dbg !1514
  br i1 %556, label %sw.epilog167, label %for.body142, !dbg !1514

for.body142:                                      ; preds = %for.body142.prol.loopexit, %for.body142
  %indvars.iv403 = phi i64 [ %indvars.iv.next404.3, %for.body142 ], [ %indvars.iv403.unr, %for.body142.prol.loopexit ]
    #dbg_value(i64 %indvars.iv403, !271, !DIExpression(), !809)
  %arrayidx144 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv403, !dbg !1516
  %557 = load i16, ptr %arrayidx144, align 2, !dbg !1516
  %558 = lshr i16 %557, 8, !dbg !1521
  %conv146 = trunc nuw i16 %558 to i8, !dbg !1522
  %arrayidx148 = getelementptr inbounds i8, ptr %buf, i64 %indvars.iv403, !dbg !1523
  store i8 %conv146, ptr %arrayidx148, align 1, !dbg !1524
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1, !dbg !1515
    #dbg_value(i64 %indvars.iv.next404, !271, !DIExpression(), !809)
  %arrayidx144.1 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv.next404, !dbg !1516
  %559 = load i16, ptr %arrayidx144.1, align 2, !dbg !1516
  %560 = lshr i16 %559, 8, !dbg !1521
  %conv146.1 = trunc nuw i16 %560 to i8, !dbg !1522
  %arrayidx148.1 = getelementptr inbounds i8, ptr %buf, i64 %indvars.iv.next404, !dbg !1523
  store i8 %conv146.1, ptr %arrayidx148.1, align 1, !dbg !1524
  %indvars.iv.next404.1 = add nuw nsw i64 %indvars.iv403, 2, !dbg !1515
    #dbg_value(i64 %indvars.iv.next404.1, !271, !DIExpression(), !809)
  %arrayidx144.2 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv.next404.1, !dbg !1516
  %561 = load i16, ptr %arrayidx144.2, align 2, !dbg !1516
  %562 = lshr i16 %561, 8, !dbg !1521
  %conv146.2 = trunc nuw i16 %562 to i8, !dbg !1522
  %arrayidx148.2 = getelementptr inbounds i8, ptr %buf, i64 %indvars.iv.next404.1, !dbg !1523
  store i8 %conv146.2, ptr %arrayidx148.2, align 1, !dbg !1524
  %indvars.iv.next404.2 = add nuw nsw i64 %indvars.iv403, 3, !dbg !1515
    #dbg_value(i64 %indvars.iv.next404.2, !271, !DIExpression(), !809)
  %arrayidx144.3 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv.next404.2, !dbg !1516
  %563 = load i16, ptr %arrayidx144.3, align 2, !dbg !1516
  %564 = lshr i16 %563, 8, !dbg !1521
  %conv146.3 = trunc nuw i16 %564 to i8, !dbg !1522
  %arrayidx148.3 = getelementptr inbounds i8, ptr %buf, i64 %indvars.iv.next404.2, !dbg !1523
  store i8 %conv146.3, ptr %arrayidx148.3, align 1, !dbg !1524
  %indvars.iv.next404.3 = add nuw nsw i64 %indvars.iv403, 4, !dbg !1515
    #dbg_value(i64 %indvars.iv.next404.3, !271, !DIExpression(), !809)
  %exitcond407.not.3 = icmp eq i64 %indvars.iv.next404.3, %wide.trip.count406, !dbg !1511
  br i1 %exitcond407.not.3, label %sw.epilog167, label %for.body142, !dbg !1514, !llvm.loop !1530

for.body156:                                      ; preds = %for.body156.prol.loopexit, %for.body156
  %indvars.iv398 = phi i64 [ %indvars.iv.next399.3, %for.body156 ], [ %indvars.iv398.unr, %for.body156.prol.loopexit ]
    #dbg_value(i64 %indvars.iv398, !271, !DIExpression(), !809)
  %arrayidx158 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv398, !dbg !1503
  %565 = load i16, ptr %arrayidx158, align 2, !dbg !1503
  %arrayidx160 = getelementptr inbounds i16, ptr %buf, i64 %indvars.iv398, !dbg !1505
  store i16 %565, ptr %arrayidx160, align 2, !dbg !1506
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1, !dbg !1507
    #dbg_value(i64 %indvars.iv.next399, !271, !DIExpression(), !809)
  %arrayidx158.1 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv.next399, !dbg !1503
  %566 = load i16, ptr %arrayidx158.1, align 2, !dbg !1503
  %arrayidx160.1 = getelementptr inbounds i16, ptr %buf, i64 %indvars.iv.next399, !dbg !1505
  store i16 %566, ptr %arrayidx160.1, align 2, !dbg !1506
  %indvars.iv.next399.1 = add nuw nsw i64 %indvars.iv398, 2, !dbg !1507
    #dbg_value(i64 %indvars.iv.next399.1, !271, !DIExpression(), !809)
  %arrayidx158.2 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv.next399.1, !dbg !1503
  %567 = load i16, ptr %arrayidx158.2, align 2, !dbg !1503
  %arrayidx160.2 = getelementptr inbounds i16, ptr %buf, i64 %indvars.iv.next399.1, !dbg !1505
  store i16 %567, ptr %arrayidx160.2, align 2, !dbg !1506
  %indvars.iv.next399.2 = add nuw nsw i64 %indvars.iv398, 3, !dbg !1507
    #dbg_value(i64 %indvars.iv.next399.2, !271, !DIExpression(), !809)
  %arrayidx158.3 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv.next399.2, !dbg !1503
  %568 = load i16, ptr %arrayidx158.3, align 2, !dbg !1503
  %arrayidx160.3 = getelementptr inbounds i16, ptr %buf, i64 %indvars.iv.next399.2, !dbg !1505
  store i16 %568, ptr %arrayidx160.3, align 2, !dbg !1506
  %indvars.iv.next399.3 = add nuw nsw i64 %indvars.iv398, 4, !dbg !1507
    #dbg_value(i64 %indvars.iv.next399.3, !271, !DIExpression(), !809)
  %exitcond402.not.3 = icmp eq i64 %indvars.iv.next399.3, %wide.trip.count401, !dbg !1498
  br i1 %exitcond402.not.3, label %sw.epilog167, label %for.body156, !dbg !1502, !llvm.loop !1531

sw.epilog167:                                     ; preds = %for.body156.prol.loopexit, %for.body156, %for.body142.prol.loopexit, %for.body142, %middle.block588, %middle.block609, %for.cond153.preheader, %for.cond139.preheader
  %tobool168.not = icmp eq ptr %temp.0, null, !dbg !1532
  br i1 %tobool168.not, label %cleanup, label %if.then169, !dbg !1534

if.then169:                                       ; preds = %sw.epilog167
  call void @free(ptr noundef nonnull %temp.0) #17, !dbg !1535
  br label %cleanup, !dbg !1535

Error:                                            ; preds = %if.end137
  %569 = load ptr, ptr @stderr, align 8, !dbg !1536
  %call166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %569, ptr noundef nonnull @.str.8, i32 noundef %521) #19, !dbg !1537
    #dbg_value(ptr %temp.0, !300, !DIExpression(), !809)
    #dbg_label(!306, !1538)
  %tobool171.not = icmp eq ptr %temp.0, null, !dbg !1539
  br i1 %tobool171.not, label %if.end173, label %if.then172, !dbg !1541

if.then172:                                       ; preds = %Error
  call void @free(ptr noundef nonnull %temp.0) #17, !dbg !1542
  br label %if.end173, !dbg !1542

if.end173:                                        ; preds = %if.then121.i, %if.then107.i, %if.then93.i, %sw.default.i, %if.then, %sw.default, %if.then47, %if.then40, %if.then36, %readTiff.exit, %if.then172, %Error
  call void @report_stats_on_error() #17, !dbg !1543
  br label %cleanup, !dbg !1544

cleanup:                                          ; preds = %sw.epilog167, %if.then169, %if.end173, %if.then22
  %retval.0 = phi i32 [ 0, %if.then22 ], [ 0, %if.end173 ], [ 1, %if.then169 ], [ 1, %sw.epilog167 ], !dbg !809
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %path) #17, !dbg !1545
  ret i32 %retval.0, !dbg !1545
}

; Function Attrs: nofree nounwind
declare !dbg !1546 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1608 noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare !dbg !1612 ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1616 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare !dbg !1619 void @report_stats_on_error() local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !1623 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1627 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1631 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

declare !dbg !1634 i32 @close(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !1637 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal range(i32 0, 65536) i32 @getU16(ptr nocapture noundef %t) #13 !dbg !927 {
entry:
    #dbg_value(ptr %t, !926, !DIExpression(), !1642)
  %mp = getelementptr inbounds i8, ptr %t, i64 16, !dbg !1643
  %0 = load ptr, ptr %mp, align 8, !dbg !1644
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1644
  store ptr %incdec.ptr, ptr %mp, align 8, !dbg !1644
  %1 = load i8, ptr %0, align 1, !dbg !1645
    #dbg_value(i8 %1, !931, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1642)
  %incdec.ptr2 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1646
  store ptr %incdec.ptr2, ptr %mp, align 8, !dbg !1646
  %2 = load i8, ptr %incdec.ptr, align 1, !dbg !1647
    #dbg_value(i8 %2, !931, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1642)
  %u.sroa.4.0.insert.ext = zext i8 %2 to i32, !dbg !1648
  %u.sroa.4.0.insert.shift = shl nuw nsw i32 %u.sroa.4.0.insert.ext, 8, !dbg !1648
  %u.sroa.0.0.insert.ext = zext i8 %1 to i32, !dbg !1648
  %u.sroa.0.0.insert.insert = or disjoint i32 %u.sroa.4.0.insert.shift, %u.sroa.0.0.insert.ext, !dbg !1648
  ret i32 %u.sroa.0.0.insert.insert, !dbg !1649
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @getU32(ptr nocapture noundef %t) #13 !dbg !954 {
entry:
    #dbg_value(ptr %t, !953, !DIExpression(), !1650)
  %mp = getelementptr inbounds i8, ptr %t, i64 16, !dbg !1651
  %0 = load ptr, ptr %mp, align 8, !dbg !1652
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1652
  store ptr %incdec.ptr, ptr %mp, align 8, !dbg !1652
  %1 = load i8, ptr %0, align 1, !dbg !1653
    #dbg_value(i8 %1, !956, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1650)
  %incdec.ptr2 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1654
  store ptr %incdec.ptr2, ptr %mp, align 8, !dbg !1654
  %2 = load i8, ptr %incdec.ptr, align 1, !dbg !1655
    #dbg_value(i8 %2, !956, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1650)
  %incdec.ptr5 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1656
  store ptr %incdec.ptr5, ptr %mp, align 8, !dbg !1656
  %3 = load i8, ptr %incdec.ptr2, align 1, !dbg !1657
    #dbg_value(i8 %3, !956, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1650)
  %incdec.ptr8 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !1658
  store ptr %incdec.ptr8, ptr %mp, align 8, !dbg !1658
  %4 = load i8, ptr %incdec.ptr5, align 1, !dbg !1659
    #dbg_value(i8 %4, !956, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1650)
  %u.sroa.6.0.insert.ext = zext i8 %4 to i32, !dbg !1660
  %u.sroa.6.0.insert.shift = shl nuw i32 %u.sroa.6.0.insert.ext, 24, !dbg !1660
  %u.sroa.5.0.insert.ext = zext i8 %3 to i32, !dbg !1660
  %u.sroa.5.0.insert.shift = shl nuw nsw i32 %u.sroa.5.0.insert.ext, 16, !dbg !1660
  %u.sroa.4.0.insert.ext = zext i8 %2 to i32, !dbg !1660
  %u.sroa.4.0.insert.shift = shl nuw nsw i32 %u.sroa.4.0.insert.ext, 8, !dbg !1660
  %u.sroa.0.0.insert.ext = zext i8 %1 to i32, !dbg !1660
  %u.sroa.5.0.insert.insert = or disjoint i32 %u.sroa.4.0.insert.shift, %u.sroa.0.0.insert.ext, !dbg !1660
  %u.sroa.4.0.insert.insert = or disjoint i32 %u.sroa.5.0.insert.insert, %u.sroa.5.0.insert.shift, !dbg !1660
  %u.sroa.0.0.insert.insert = or disjoint i32 %u.sroa.4.0.insert.insert, %u.sroa.6.0.insert.shift, !dbg !1660
  ret i32 %u.sroa.0.0.insert.insert, !dbg !1661
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal range(i32 0, 65536) i32 @getSwappedU16(ptr nocapture noundef %t) #13 !dbg !1662 {
entry:
    #dbg_value(ptr %t, !1664, !DIExpression(), !1670)
  %mp = getelementptr inbounds i8, ptr %t, i64 16, !dbg !1671
  %0 = load ptr, ptr %mp, align 8, !dbg !1672
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1672
  store ptr %incdec.ptr, ptr %mp, align 8, !dbg !1672
  %1 = load i8, ptr %0, align 1, !dbg !1673
    #dbg_value(i8 %1, !1665, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1670)
  %incdec.ptr2 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1674
  store ptr %incdec.ptr2, ptr %mp, align 8, !dbg !1674
  %2 = load i8, ptr %incdec.ptr, align 1, !dbg !1675
    #dbg_value(i8 %2, !1665, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1670)
  %u.sroa.4.0.insert.ext = zext i8 %1 to i32, !dbg !1676
  %u.sroa.4.0.insert.shift = shl nuw nsw i32 %u.sroa.4.0.insert.ext, 8, !dbg !1676
  %u.sroa.0.0.insert.ext = zext i8 %2 to i32, !dbg !1676
  %u.sroa.0.0.insert.insert = or disjoint i32 %u.sroa.4.0.insert.shift, %u.sroa.0.0.insert.ext, !dbg !1676
  ret i32 %u.sroa.0.0.insert.insert, !dbg !1677
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @getSwappedU32(ptr nocapture noundef %t) #13 !dbg !1678 {
entry:
    #dbg_value(ptr %t, !1680, !DIExpression(), !1686)
  %mp = getelementptr inbounds i8, ptr %t, i64 16, !dbg !1687
  %0 = load ptr, ptr %mp, align 8, !dbg !1688
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1688
  store ptr %incdec.ptr, ptr %mp, align 8, !dbg !1688
  %1 = load i8, ptr %0, align 1, !dbg !1689
    #dbg_value(i8 %1, !1681, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1686)
  %incdec.ptr2 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1690
  store ptr %incdec.ptr2, ptr %mp, align 8, !dbg !1690
  %2 = load i8, ptr %incdec.ptr, align 1, !dbg !1691
    #dbg_value(i8 %2, !1681, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1686)
  %incdec.ptr5 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1692
  store ptr %incdec.ptr5, ptr %mp, align 8, !dbg !1692
  %3 = load i8, ptr %incdec.ptr2, align 1, !dbg !1693
    #dbg_value(i8 %3, !1681, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1686)
  %incdec.ptr8 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !1694
  store ptr %incdec.ptr8, ptr %mp, align 8, !dbg !1694
  %4 = load i8, ptr %incdec.ptr5, align 1, !dbg !1695
    #dbg_value(i8 %4, !1681, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1686)
  %u.sroa.6.0.insert.ext = zext i8 %1 to i32, !dbg !1696
  %u.sroa.6.0.insert.shift = shl nuw i32 %u.sroa.6.0.insert.ext, 24, !dbg !1696
  %u.sroa.5.0.insert.ext = zext i8 %2 to i32, !dbg !1696
  %u.sroa.5.0.insert.shift = shl nuw nsw i32 %u.sroa.5.0.insert.ext, 16, !dbg !1696
  %u.sroa.5.0.insert.insert = or disjoint i32 %u.sroa.5.0.insert.shift, %u.sroa.6.0.insert.shift, !dbg !1696
  %u.sroa.4.0.insert.ext = zext i8 %3 to i32, !dbg !1696
  %u.sroa.4.0.insert.shift = shl nuw nsw i32 %u.sroa.4.0.insert.ext, 8, !dbg !1696
  %u.sroa.4.0.insert.insert = or disjoint i32 %u.sroa.5.0.insert.insert, %u.sroa.4.0.insert.shift, !dbg !1696
  %u.sroa.0.0.insert.ext = zext i8 %4 to i32, !dbg !1696
  %u.sroa.0.0.insert.insert = or disjoint i32 %u.sroa.4.0.insert.insert, %u.sroa.0.0.insert.ext, !dbg !1696
  ret i32 %u.sroa.0.0.insert.insert, !dbg !1697
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @getIntArray(i32 noundef %offset, i32 noundef %type, ptr nocapture noundef writeonly %a, i32 noundef %n) unnamed_addr #3 !dbg !1698 {
entry:
    #dbg_value(ptr @ReadTIFFImage.t, !1703, !DIExpression(), !1710)
    #dbg_value(i32 %offset, !1704, !DIExpression(), !1710)
    #dbg_value(i32 %type, !1705, !DIExpression(), !1710)
    #dbg_value(ptr %a, !1706, !DIExpression(), !1710)
    #dbg_value(i32 %n, !1707, !DIExpression(), !1710)
  %0 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1711
    #dbg_value(ptr %0, !1709, !DIExpression(), !1710)
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8, !dbg !1712
  %idx.ext = zext i32 %offset to i64, !dbg !1713
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext, !dbg !1713
  store ptr %add.ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1714
  switch i32 %type, label %sw.epilog [
    i32 3, label %for.cond.preheader
    i32 4, label %for.cond4.preheader
    i32 5, label %for.cond14.preheader
  ], !dbg !1715

for.cond14.preheader:                             ; preds = %entry
    #dbg_value(i32 0, !1708, !DIExpression(), !1710)
  %cmp153 = icmp sgt i32 %n, 0, !dbg !1716
  br i1 %cmp153, label %for.body16.preheader, label %sw.epilog, !dbg !1720

for.body16.preheader:                             ; preds = %for.cond14.preheader
  %mul = shl nuw i32 %n, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %mul, i32 1), !dbg !1720
  %wide.trip.count = zext nneg i32 %smax to i64, !dbg !1716
  br label %for.body16, !dbg !1720

for.cond4.preheader:                              ; preds = %entry
    #dbg_value(i32 0, !1708, !DIExpression(), !1710)
  %cmp55 = icmp sgt i32 %n, 0, !dbg !1721
  br i1 %cmp55, label %for.body6.preheader, label %sw.epilog, !dbg !1724

for.body6.preheader:                              ; preds = %for.cond4.preheader
  %wide.trip.count15 = zext nneg i32 %n to i64, !dbg !1721
  br label %for.body6, !dbg !1724

for.cond.preheader:                               ; preds = %entry
    #dbg_value(i32 0, !1708, !DIExpression(), !1710)
  %cmp7 = icmp sgt i32 %n, 0, !dbg !1725
  br i1 %cmp7, label %for.body.preheader, label %sw.epilog, !dbg !1728

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count20 = zext nneg i32 %n to i64, !dbg !1725
  %xtraiter = and i64 %wide.trip.count20, 1, !dbg !1728
  %2 = icmp eq i32 %n, 1, !dbg !1728
  br i1 %2, label %sw.epilog.loopexit.unr-lcssa, label %for.body.preheader.new, !dbg !1728

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count20, 2147483646, !dbg !1728
  br label %for.body, !dbg !1728

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv17 = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next18.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.body ]
    #dbg_value(i64 %indvars.iv17, !1708, !DIExpression(), !1710)
    #dbg_value(ptr @ReadTIFFImage.t, !926, !DIExpression(), !1729)
  %3 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1732
  %incdec.ptr.i = getelementptr inbounds i8, ptr %3, i64 1, !dbg !1732
  store ptr %incdec.ptr.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1732
  %4 = load i8, ptr %3, align 1, !dbg !1733
    #dbg_value(i8 %4, !931, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1729)
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %3, i64 2, !dbg !1734
  store ptr %incdec.ptr2.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1734
  %5 = load i8, ptr %incdec.ptr.i, align 1, !dbg !1735
    #dbg_value(i8 %5, !931, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1729)
  %u.sroa.4.0.insert.ext.i = zext i8 %5 to i32, !dbg !1736
  %u.sroa.4.0.insert.shift.i = shl nuw nsw i32 %u.sroa.4.0.insert.ext.i, 8, !dbg !1736
  %u.sroa.0.0.insert.ext.i = zext i8 %4 to i32, !dbg !1736
  %u.sroa.0.0.insert.insert.i = or disjoint i32 %u.sroa.4.0.insert.shift.i, %u.sroa.0.0.insert.ext.i, !dbg !1736
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv17, !dbg !1737
  store i32 %u.sroa.0.0.insert.insert.i, ptr %arrayidx, align 4, !dbg !1738
  %indvars.iv.next18 = or disjoint i64 %indvars.iv17, 1, !dbg !1739
    #dbg_value(i64 %indvars.iv.next18, !1708, !DIExpression(), !1710)
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1732
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1732
  store ptr %incdec.ptr.i.1, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1732
  %7 = load i8, ptr %6, align 1, !dbg !1733
    #dbg_value(i8 %7, !931, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1729)
  %incdec.ptr2.i.1 = getelementptr inbounds i8, ptr %6, i64 2, !dbg !1734
  store ptr %incdec.ptr2.i.1, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1734
  %8 = load i8, ptr %incdec.ptr.i.1, align 1, !dbg !1735
    #dbg_value(i8 %8, !931, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1729)
  %u.sroa.4.0.insert.ext.i.1 = zext i8 %8 to i32, !dbg !1736
  %u.sroa.4.0.insert.shift.i.1 = shl nuw nsw i32 %u.sroa.4.0.insert.ext.i.1, 8, !dbg !1736
  %u.sroa.0.0.insert.ext.i.1 = zext i8 %7 to i32, !dbg !1736
  %u.sroa.0.0.insert.insert.i.1 = or disjoint i32 %u.sroa.4.0.insert.shift.i.1, %u.sroa.0.0.insert.ext.i.1, !dbg !1736
  %arrayidx.1 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next18, !dbg !1737
  store i32 %u.sroa.0.0.insert.insert.i.1, ptr %arrayidx.1, align 4, !dbg !1738
  %indvars.iv.next18.1 = add nuw nsw i64 %indvars.iv17, 2, !dbg !1739
    #dbg_value(i64 %indvars.iv.next18.1, !1708, !DIExpression(), !1710)
  %niter.next.1 = add i64 %niter, 2, !dbg !1728
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1728
  br i1 %niter.ncmp.1, label %sw.epilog.loopexit.unr-lcssa, label %for.body, !dbg !1728, !llvm.loop !1740

for.body6:                                        ; preds = %for.body6.preheader, %for.body6
  %indvars.iv12 = phi i64 [ 0, %for.body6.preheader ], [ %indvars.iv.next13, %for.body6 ]
    #dbg_value(i64 %indvars.iv12, !1708, !DIExpression(), !1710)
    #dbg_value(ptr @ReadTIFFImage.t, !953, !DIExpression(), !1742)
  %9 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1745
  %incdec.ptr.i42 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !1745
  store ptr %incdec.ptr.i42, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1745
  %10 = load i8, ptr %9, align 1, !dbg !1746
    #dbg_value(i8 %10, !956, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1742)
  %incdec.ptr2.i43 = getelementptr inbounds i8, ptr %9, i64 2, !dbg !1747
  store ptr %incdec.ptr2.i43, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1747
  %11 = load i8, ptr %incdec.ptr.i42, align 1, !dbg !1748
    #dbg_value(i8 %11, !956, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1742)
  %incdec.ptr5.i = getelementptr inbounds i8, ptr %9, i64 3, !dbg !1749
  store ptr %incdec.ptr5.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1749
  %12 = load i8, ptr %incdec.ptr2.i43, align 1, !dbg !1750
    #dbg_value(i8 %12, !956, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1742)
  %incdec.ptr8.i = getelementptr inbounds i8, ptr %9, i64 4, !dbg !1751
  store ptr %incdec.ptr8.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1751
  %13 = load i8, ptr %incdec.ptr5.i, align 1, !dbg !1752
    #dbg_value(i8 %13, !956, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1742)
  %u.sroa.6.0.insert.ext.i = zext i8 %13 to i32, !dbg !1753
  %u.sroa.6.0.insert.shift.i = shl nuw i32 %u.sroa.6.0.insert.ext.i, 24, !dbg !1753
  %u.sroa.5.0.insert.ext.i = zext i8 %12 to i32, !dbg !1753
  %u.sroa.5.0.insert.shift.i = shl nuw nsw i32 %u.sroa.5.0.insert.ext.i, 16, !dbg !1753
  %u.sroa.4.0.insert.ext.i44 = zext i8 %11 to i32, !dbg !1753
  %u.sroa.4.0.insert.shift.i45 = shl nuw nsw i32 %u.sroa.4.0.insert.ext.i44, 8, !dbg !1753
  %u.sroa.0.0.insert.ext.i46 = zext i8 %10 to i32, !dbg !1753
  %u.sroa.5.0.insert.insert.i = or disjoint i32 %u.sroa.4.0.insert.shift.i45, %u.sroa.0.0.insert.ext.i46, !dbg !1753
  %u.sroa.4.0.insert.insert.i = or disjoint i32 %u.sroa.5.0.insert.insert.i, %u.sroa.5.0.insert.shift.i, !dbg !1753
  %u.sroa.0.0.insert.insert.i47 = or disjoint i32 %u.sroa.4.0.insert.insert.i, %u.sroa.6.0.insert.shift.i, !dbg !1753
  %arrayidx9 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv12, !dbg !1754
  store i32 %u.sroa.0.0.insert.insert.i47, ptr %arrayidx9, align 4, !dbg !1755
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !1756
    #dbg_value(i64 %indvars.iv.next13, !1708, !DIExpression(), !1710)
  %exitcond16.not = icmp eq i64 %indvars.iv.next13, %wide.trip.count15, !dbg !1721
  br i1 %exitcond16.not, label %sw.epilog, label %for.body6, !dbg !1724, !llvm.loop !1757

for.body16:                                       ; preds = %for.body16.preheader, %for.body16
  %indvars.iv = phi i64 [ 0, %for.body16.preheader ], [ %indvars.iv.next, %for.body16 ]
    #dbg_value(i64 %indvars.iv, !1708, !DIExpression(), !1710)
    #dbg_value(ptr @ReadTIFFImage.t, !953, !DIExpression(), !1759)
  %14 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1762
  %incdec.ptr.i48 = getelementptr inbounds i8, ptr %14, i64 1, !dbg !1762
  store ptr %incdec.ptr.i48, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1762
  %15 = load i8, ptr %14, align 1, !dbg !1763
    #dbg_value(i8 %15, !956, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1759)
  %incdec.ptr2.i49 = getelementptr inbounds i8, ptr %14, i64 2, !dbg !1764
  store ptr %incdec.ptr2.i49, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1764
  %16 = load i8, ptr %incdec.ptr.i48, align 1, !dbg !1765
    #dbg_value(i8 %16, !956, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1759)
  %incdec.ptr5.i50 = getelementptr inbounds i8, ptr %14, i64 3, !dbg !1766
  store ptr %incdec.ptr5.i50, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1766
  %17 = load i8, ptr %incdec.ptr2.i49, align 1, !dbg !1767
    #dbg_value(i8 %17, !956, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1759)
  %incdec.ptr8.i51 = getelementptr inbounds i8, ptr %14, i64 4, !dbg !1768
  store ptr %incdec.ptr8.i51, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1768
  %18 = load i8, ptr %incdec.ptr5.i50, align 1, !dbg !1769
    #dbg_value(i8 %18, !956, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1759)
  %u.sroa.6.0.insert.ext.i52 = zext i8 %18 to i32, !dbg !1770
  %u.sroa.6.0.insert.shift.i53 = shl nuw i32 %u.sroa.6.0.insert.ext.i52, 24, !dbg !1770
  %u.sroa.5.0.insert.ext.i54 = zext i8 %17 to i32, !dbg !1770
  %u.sroa.5.0.insert.shift.i55 = shl nuw nsw i32 %u.sroa.5.0.insert.ext.i54, 16, !dbg !1770
  %u.sroa.4.0.insert.ext.i56 = zext i8 %16 to i32, !dbg !1770
  %u.sroa.4.0.insert.shift.i57 = shl nuw nsw i32 %u.sroa.4.0.insert.ext.i56, 8, !dbg !1770
  %u.sroa.0.0.insert.ext.i58 = zext i8 %15 to i32, !dbg !1770
  %u.sroa.5.0.insert.insert.i59 = or disjoint i32 %u.sroa.4.0.insert.shift.i57, %u.sroa.0.0.insert.ext.i58, !dbg !1770
  %u.sroa.4.0.insert.insert.i60 = or disjoint i32 %u.sroa.5.0.insert.insert.i59, %u.sroa.5.0.insert.shift.i55, !dbg !1770
  %u.sroa.0.0.insert.insert.i61 = or disjoint i32 %u.sroa.4.0.insert.insert.i60, %u.sroa.6.0.insert.shift.i53, !dbg !1770
  %arrayidx19 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !1771
  store i32 %u.sroa.0.0.insert.insert.i61, ptr %arrayidx19, align 4, !dbg !1772
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1773
    #dbg_value(i64 %indvars.iv.next, !1708, !DIExpression(), !1710)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1716
  br i1 %exitcond.not, label %sw.epilog, label %for.body16, !dbg !1720, !llvm.loop !1774

sw.epilog.loopexit.unr-lcssa:                     ; preds = %for.body, %for.body.preheader
  %indvars.iv17.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next18.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1728
  br i1 %lcmp.mod.not, label %sw.epilog, label %for.body.epil, !dbg !1728

for.body.epil:                                    ; preds = %sw.epilog.loopexit.unr-lcssa
    #dbg_value(i64 %indvars.iv17.unr, !1708, !DIExpression(), !1710)
    #dbg_value(ptr @ReadTIFFImage.t, !926, !DIExpression(), !1729)
  %19 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1732
  %incdec.ptr.i.epil = getelementptr inbounds i8, ptr %19, i64 1, !dbg !1732
  store ptr %incdec.ptr.i.epil, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1732
  %20 = load i8, ptr %19, align 1, !dbg !1733
    #dbg_value(i8 %20, !931, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1729)
  %incdec.ptr2.i.epil = getelementptr inbounds i8, ptr %19, i64 2, !dbg !1734
  store ptr %incdec.ptr2.i.epil, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1734
  %21 = load i8, ptr %incdec.ptr.i.epil, align 1, !dbg !1735
    #dbg_value(i8 %21, !931, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1729)
  %u.sroa.4.0.insert.ext.i.epil = zext i8 %21 to i32, !dbg !1736
  %u.sroa.4.0.insert.shift.i.epil = shl nuw nsw i32 %u.sroa.4.0.insert.ext.i.epil, 8, !dbg !1736
  %u.sroa.0.0.insert.ext.i.epil = zext i8 %20 to i32, !dbg !1736
  %u.sroa.0.0.insert.insert.i.epil = or disjoint i32 %u.sroa.4.0.insert.shift.i.epil, %u.sroa.0.0.insert.ext.i.epil, !dbg !1736
  %arrayidx.epil = getelementptr inbounds i32, ptr %a, i64 %indvars.iv17.unr, !dbg !1737
  store i32 %u.sroa.0.0.insert.insert.i.epil, ptr %arrayidx.epil, align 4, !dbg !1738
    #dbg_value(i64 %indvars.iv17.unr, !1708, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1710)
  br label %sw.epilog, !dbg !1776

sw.epilog:                                        ; preds = %for.body16, %for.body6, %for.body.epil, %sw.epilog.loopexit.unr-lcssa, %for.cond14.preheader, %for.cond4.preheader, %for.cond.preheader, %entry
  store ptr %0, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8, !dbg !1776
  ret void, !dbg !1777
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

!llvm.dbg.cu = !{!121}
!llvm.module.flags = !{!345, !346, !347, !348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "t", scope: !2, file: !3, line: 1017, type: !307, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "ReadTIFFImage", scope: !3, file: !3, line: 1015, type: !4, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !260)
!3 = !DIFile(filename: "ldecod_src/io_tiff.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "7e25e706e2e225d573e969d40353a77d")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !117, !6, !118, !119}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !9, line: 900, baseType: !10)
!9 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !9, line: 850, size: 32128, elements: !11)
!11 = !{!12, !17, !18, !19, !20, !21, !22, !23, !24, !25, !69, !70, !71, !72, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !10, file: !9, line: 852, baseType: !13, size: 2040)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2040, elements: !15)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 255)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !10, file: !9, line: 853, baseType: !13, size: 2040, offset: 2040)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !10, file: !9, line: 854, baseType: !13, size: 2040, offset: 4080)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !10, file: !9, line: 856, baseType: !6, size: 32, offset: 6144)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !10, file: !9, line: 857, baseType: !6, size: 32, offset: 6176)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !10, file: !9, line: 858, baseType: !6, size: 32, offset: 6208)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !10, file: !9, line: 859, baseType: !6, size: 32, offset: 6240)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !10, file: !9, line: 860, baseType: !6, size: 32, offset: 6272)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !10, file: !9, line: 861, baseType: !6, size: 32, offset: 6304)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !10, file: !9, line: 864, baseType: !26, size: 1088, offset: 6336)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !27, line: 52, baseType: !28)
!27 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !27, line: 30, size: 1088, elements: !29)
!29 = !{!30, !39, !47, !49, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !28, file: !27, line: 32, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !27, line: 28, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 22, baseType: !6, size: 32, elements: !33)
!33 = !{!34, !35, !36, !37, !38}
!34 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!35 = !DIEnumerator(name: "YUV400", value: 0)
!36 = !DIEnumerator(name: "YUV420", value: 1)
!37 = !DIEnumerator(name: "YUV422", value: 2)
!38 = !DIEnumerator(name: "YUV444", value: 3)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !28, file: !27, line: 33, baseType: !40, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !27, line: 20, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 15, baseType: !6, size: 32, elements: !42)
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!44 = !DIEnumerator(name: "CM_YUV", value: 0)
!45 = !DIEnumerator(name: "CM_RGB", value: 1)
!46 = !DIEnumerator(name: "CM_XYZ", value: 2)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !28, file: !27, line: 34, baseType: !48, size: 64, offset: 64)
!48 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !28, file: !27, line: 35, baseType: !50, size: 96, offset: 128)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 3)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !28, file: !27, line: 36, baseType: !50, size: 96, offset: 224)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !28, file: !27, line: 37, baseType: !6, size: 32, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !28, file: !27, line: 38, baseType: !6, size: 32, offset: 352)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !28, file: !27, line: 39, baseType: !6, size: 32, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !28, file: !27, line: 40, baseType: !6, size: 32, offset: 416)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !28, file: !27, line: 41, baseType: !6, size: 32, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !28, file: !27, line: 42, baseType: !6, size: 32, offset: 480)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !28, file: !27, line: 43, baseType: !6, size: 32, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !28, file: !27, line: 44, baseType: !6, size: 32, offset: 544)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !28, file: !27, line: 45, baseType: !50, size: 96, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !28, file: !27, line: 46, baseType: !6, size: 32, offset: 672)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !28, file: !27, line: 47, baseType: !50, size: 96, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !28, file: !27, line: 48, baseType: !50, size: 96, offset: 800)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !28, file: !27, line: 49, baseType: !50, size: 96, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !28, file: !27, line: 50, baseType: !6, size: 32, offset: 992)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !28, file: !27, line: 51, baseType: !6, size: 32, offset: 1024)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !10, file: !9, line: 865, baseType: !26, size: 1088, offset: 7424)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !10, file: !9, line: 867, baseType: !6, size: 32, offset: 8512)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !10, file: !9, line: 868, baseType: !6, size: 32, offset: 8544)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !10, file: !9, line: 869, baseType: !73, size: 7744, offset: 8576)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !74, line: 60, baseType: !75)
!74 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !74, line: 34, size: 7744, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !75, file: !74, line: 37, baseType: !13, size: 2040)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !75, file: !74, line: 38, baseType: !13, size: 2040, offset: 2040)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !75, file: !74, line: 39, baseType: !13, size: 2040, offset: 4080)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !75, file: !74, line: 40, baseType: !6, size: 32, offset: 6144)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !75, file: !74, line: 41, baseType: !82, size: 32, offset: 6176)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !74, line: 32, baseType: !83)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !74, line: 25, baseType: !6, size: 32, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90}
!85 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!86 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!87 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!88 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!89 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!90 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !75, file: !74, line: 42, baseType: !26, size: 1088, offset: 6208)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !75, file: !74, line: 43, baseType: !6, size: 32, offset: 7296)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !75, file: !74, line: 44, baseType: !6, size: 32, offset: 7328)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !75, file: !74, line: 45, baseType: !6, size: 32, offset: 7360)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !75, file: !74, line: 46, baseType: !6, size: 32, offset: 7392)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !75, file: !74, line: 47, baseType: !6, size: 32, offset: 7424)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !75, file: !74, line: 48, baseType: !6, size: 32, offset: 7456)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !75, file: !74, line: 49, baseType: !6, size: 32, offset: 7488)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !75, file: !74, line: 50, baseType: !6, size: 32, offset: 7520)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !75, file: !74, line: 51, baseType: !6, size: 32, offset: 7552)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !75, file: !74, line: 52, baseType: !6, size: 32, offset: 7584)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !75, file: !74, line: 53, baseType: !6, size: 32, offset: 7616)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !75, file: !74, line: 56, baseType: !104, size: 64, offset: 7680)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !10, file: !9, line: 870, baseType: !73, size: 7744, offset: 16320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !10, file: !9, line: 871, baseType: !73, size: 7744, offset: 24064)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !10, file: !9, line: 873, baseType: !6, size: 32, offset: 31808)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !10, file: !9, line: 884, baseType: !6, size: 32, offset: 31840)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !10, file: !9, line: 885, baseType: !6, size: 32, offset: 31872)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !10, file: !9, line: 886, baseType: !6, size: 32, offset: 31904)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !10, file: !9, line: 890, baseType: !6, size: 32, offset: 31936)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !10, file: !9, line: 893, baseType: !6, size: 32, offset: 31968)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !10, file: !9, line: 894, baseType: !6, size: 32, offset: 32000)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !10, file: !9, line: 895, baseType: !6, size: 32, offset: 32032)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !10, file: !9, line: 897, baseType: !6, size: 32, offset: 32064)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !10, file: !9, line: 899, baseType: !6, size: 32, offset: 32096)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !122, retainedTypes: !150, globals: !162, splitDebugInlining: false, nameTableKind: None)
!122 = !{!32, !41, !83, !123, !136}
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "VideoCode", file: !3, line: 101, baseType: !124, size: 32, elements: !125)
!124 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!126 = !DIEnumerator(name: "VC_NULL", value: 0)
!127 = !DIEnumerator(name: "VC_ITU_REC709", value: 1)
!128 = !DIEnumerator(name: "VC_CCIR_601", value: 3)
!129 = !DIEnumerator(name: "VC_FCC", value: 4)
!130 = !DIEnumerator(name: "VC_ITU_REC624BG", value: 5)
!131 = !DIEnumerator(name: "VC_SMPTE_170M", value: 6)
!132 = !DIEnumerator(name: "VC_SMPTE_240M", value: 7)
!133 = !DIEnumerator(name: "VC_SMPTE_260M", value: 7)
!134 = !DIEnumerator(name: "VC_ITU_REC709_EXACT", value: 8)
!135 = !DIEnumerator(name: "VC_MAX", value: 8)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "TiffType", file: !3, line: 26, baseType: !124, size: 32, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!138 = !DIEnumerator(name: "T_BYTE", value: 1)
!139 = !DIEnumerator(name: "T_ASCII", value: 2)
!140 = !DIEnumerator(name: "T_SHORT", value: 3)
!141 = !DIEnumerator(name: "T_LONG", value: 4)
!142 = !DIEnumerator(name: "T_RATIONAL", value: 5)
!143 = !DIEnumerator(name: "T_SBYTE", value: 6)
!144 = !DIEnumerator(name: "T_UNDEFINED", value: 7)
!145 = !DIEnumerator(name: "T_SSHORT", value: 8)
!146 = !DIEnumerator(name: "T_SLONG", value: 9)
!147 = !DIEnumerator(name: "T_SRATIONAL", value: 10)
!148 = !DIEnumerator(name: "T_FLOAT", value: 11)
!149 = !DIEnumerator(name: "T_DOUBLE", value: 12)
!150 = !{!151, !6, !154, !155, !156, !157, !159, !160, !161, !124}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !152, line: 23, baseType: !153)
!152 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!153 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoCode", file: !3, line: 112, baseType: !123)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !152, line: 22, baseType: !120)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!159 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "TiffType", file: !3, line: 39, baseType: !136)
!162 = !{!0, !163, !168, !173, !178, !183, !188, !193, !198, !203, !208, !213, !218, !223, !225, !230, !235, !240, !242, !244, !249, !251, !253, !255}
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1036, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 824, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 103)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1045, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 72, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 9)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1049, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 8)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1053, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 40)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1069, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 704, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 88)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1074, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 688, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 86)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1079, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 552, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 69)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1140, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 368, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 46)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1160, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 536, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 67)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 468, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 224, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 28)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 507, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 352, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 44)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 614, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 264, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 33)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 345, type: !195, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 352, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 288, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 36)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !3, line: 359, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 48)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 364, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 328, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 41)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !180, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !3, line: 393, type: !220, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !3, line: 669, type: !246, isLocal: true, isDefinition: true)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 392, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 49)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !3, line: 700, type: !200, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 705, type: !180, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !3, line: 710, type: !180, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "Coef", scope: !121, file: !3, line: 115, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 1728, elements: !259)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!259 = !{!172, !52}
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !299, !300, !301, !302, !303, !304, !305, !306}
!261 = !DILocalVariable(name: "p_Inp", arg: 1, scope: !2, file: !3, line: 1015, type: !7)
!262 = !DILocalVariable(name: "input_file", arg: 2, scope: !2, file: !3, line: 1015, type: !117)
!263 = !DILocalVariable(name: "FrameNoInFile", arg: 3, scope: !2, file: !3, line: 1015, type: !6)
!264 = !DILocalVariable(name: "source", arg: 4, scope: !2, file: !3, line: 1015, type: !118)
!265 = !DILocalVariable(name: "buf", arg: 5, scope: !2, file: !3, line: 1015, type: !119)
!266 = !DILocalVariable(name: "path", scope: !2, file: !3, line: 1018, type: !13)
!267 = !DILocalVariable(name: "frameNumberInFile", scope: !2, file: !3, line: 1019, type: !6)
!268 = !DILocalVariable(name: "n", scope: !2, file: !3, line: 1019, type: !6)
!269 = !DILocalVariable(name: "nComponents", scope: !2, file: !3, line: 1019, type: !6)
!270 = !DILocalVariable(name: "height", scope: !2, file: !3, line: 1019, type: !6)
!271 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 1019, type: !6)
!272 = !DILocalVariable(name: "width", scope: !2, file: !3, line: 1019, type: !6)
!273 = !DILocalVariable(name: "y", scope: !2, file: !3, line: 1019, type: !6)
!274 = !DILocalVariable(name: "rgb_yuv", scope: !2, file: !3, line: 1020, type: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "RGB_YUV", file: !3, line: 155, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RGB_YUV", file: !3, line: 142, size: 768, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "pixMax", scope: !276, file: !3, line: 144, baseType: !151, size: 16)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !276, file: !3, line: 146, baseType: !6, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !276, file: !3, line: 147, baseType: !6, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !276, file: !3, line: 147, baseType: !6, size: 32, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !276, file: !3, line: 147, baseType: !6, size: 32, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !276, file: !3, line: 148, baseType: !6, size: 32, offset: 160)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !276, file: !3, line: 148, baseType: !6, size: 32, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !276, file: !3, line: 148, baseType: !6, size: 32, offset: 224)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "yr", scope: !276, file: !3, line: 149, baseType: !6, size: 32, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "yg", scope: !276, file: !3, line: 149, baseType: !6, size: 32, offset: 288)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "yb", scope: !276, file: !3, line: 149, baseType: !6, size: 32, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ur", scope: !276, file: !3, line: 150, baseType: !6, size: 32, offset: 352)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ug", scope: !276, file: !3, line: 150, baseType: !6, size: 32, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ub", scope: !276, file: !3, line: 150, baseType: !6, size: 32, offset: 416)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vr", scope: !276, file: !3, line: 151, baseType: !6, size: 32, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "vg", scope: !276, file: !3, line: 151, baseType: !6, size: 32, offset: 480)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vb", scope: !276, file: !3, line: 151, baseType: !6, size: 32, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offy", scope: !276, file: !3, line: 152, baseType: !6, size: 32, offset: 544)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "offuv", scope: !276, file: !3, line: 152, baseType: !6, size: 32, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !276, file: !3, line: 154, baseType: !48, size: 64, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "suv", scope: !276, file: !3, line: 154, baseType: !48, size: 64, offset: 704)
!299 = !DILocalVariable(name: "img", scope: !2, file: !3, line: 1022, type: !155)
!300 = !DILocalVariable(name: "temp", scope: !2, file: !3, line: 1022, type: !155)
!301 = !DILocalVariable(name: "temp2", scope: !2, file: !3, line: 1022, type: !155)
!302 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 1023, type: !155)
!303 = !DILocalVariable(name: "yp", scope: !2, file: !3, line: 1023, type: !155)
!304 = !DILocalVariable(name: "up", scope: !2, file: !3, line: 1023, type: !155)
!305 = !DILocalVariable(name: "vp", scope: !2, file: !3, line: 1023, type: !155)
!306 = !DILabel(scope: !2, name: "Error", file: !3, line: 1167)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tiff", file: !3, line: 98, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tiff", file: !3, line: 71, size: 69952, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315, !323, !324, !326, !327, !328, !329, !333, !334, !338, !339, !344}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !308, file: !3, line: 73, baseType: !155, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "fileInMemory", scope: !308, file: !3, line: 75, baseType: !160, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !308, file: !3, line: 77, baseType: !160, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "le", scope: !308, file: !3, line: 79, baseType: !6, size: 32, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nStrips", scope: !308, file: !3, line: 80, baseType: !6, size: 32, offset: 224)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ifh", scope: !308, file: !3, line: 82, baseType: !316, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "TiffImageFileHeader", file: !3, line: 67, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TiffImageFileHeader", file: !3, line: 61, size: 64, elements: !318)
!318 = !{!319, !320, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "byteOrder", scope: !317, file: !3, line: 63, baseType: !151, size: 16)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arbitraryNumber", scope: !317, file: !3, line: 64, baseType: !151, size: 16, offset: 16)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !317, file: !3, line: 66, baseType: !322, size: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !152, line: 24, baseType: !124)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "Orientation", scope: !308, file: !3, line: 85, baseType: !151, size: 16, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "BitsPerSample", scope: !308, file: !3, line: 87, baseType: !325, size: 96, offset: 352)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 96, elements: !51)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "RowsPerStrip", scope: !308, file: !3, line: 88, baseType: !322, size: 32, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ImageLength", scope: !308, file: !3, line: 89, baseType: !322, size: 32, offset: 480)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ImageWidth", scope: !308, file: !3, line: 90, baseType: !322, size: 32, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "StripByteCounts", scope: !308, file: !3, line: 91, baseType: !330, size: 34560, offset: 544)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 34560, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 1080)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "StripOffsets", scope: !308, file: !3, line: 92, baseType: !330, size: 34560, offset: 35104)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "XResolution", scope: !308, file: !3, line: 93, baseType: !335, size: 64, offset: 69664)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 64, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 2)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "YResolution", scope: !308, file: !3, line: 94, baseType: !335, size: 64, offset: 69728)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "getU16", scope: !308, file: !3, line: 96, baseType: !340, size: 64, offset: 69824)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!322, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "getU32", scope: !308, file: !3, line: 97, baseType: !340, size: 64, offset: 69888)
!345 = !{i32 7, !"Dwarf Version", i32 5}
!346 = !{i32 2, !"Debug Info Version", i32 3}
!347 = !{i32 1, !"wchar_size", i32 4}
!348 = !{i32 8, !"PIC Level", i32 2}
!349 = !{i32 7, !"PIE Level", i32 2}
!350 = !{i32 7, !"uwtable", i32 2}
!351 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!352 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!353 = distinct !DISubprogram(name: "constructTiff", scope: !3, file: !3, line: 164, type: !354, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !357)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!357 = !{!358}
!358 = !DILocalVariable(name: "t", arg: 1, scope: !353, file: !3, line: 164, type: !356)
!359 = !DILocation(line: 0, scope: !353)
!360 = !DILocation(line: 167, column: 10, scope: !353)
!361 = !DILocation(line: 169, column: 1, scope: !353)
!362 = distinct !DISubprogram(name: "destructTiff", scope: !3, file: !3, line: 179, type: !354, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !363)
!363 = !{!364}
!364 = !DILocalVariable(name: "t", arg: 1, scope: !362, file: !3, line: 179, type: !356)
!365 = !DILocation(line: 0, scope: !362)
!366 = !DILocation(line: 181, column: 10, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !3, line: 181, column: 7)
!368 = !DILocation(line: 181, column: 7, scope: !367)
!369 = !DILocation(line: 181, column: 7, scope: !362)
!370 = !DILocation(line: 183, column: 5, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !3, line: 182, column: 3)
!372 = !DILocation(line: 184, column: 21, scope: !371)
!373 = !DILocation(line: 185, column: 3, scope: !371)
!374 = !DILocation(line: 186, column: 10, scope: !375)
!375 = distinct !DILexicalBlock(scope: !362, file: !3, line: 186, column: 7)
!376 = !DILocation(line: 186, column: 7, scope: !375)
!377 = !DILocation(line: 186, column: 7, scope: !362)
!378 = !DILocation(line: 188, column: 5, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !3, line: 187, column: 3)
!380 = !DILocation(line: 189, column: 12, scope: !379)
!381 = !DILocation(line: 190, column: 3, scope: !379)
!382 = !DILocation(line: 191, column: 1, scope: !362)
!383 = !DISubprogram(name: "free", scope: !384, file: !384, line: 555, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!384 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!388 = distinct !DISubprogram(name: "horizontal_half_1chan_cosite", scope: !3, file: !3, line: 819, type: !389, scopeLine: 827, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !155, !6, !6, !6, !155, !6, !6}
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!392 = !DILocalVariable(name: "srcPtr", arg: 1, scope: !388, file: !3, line: 819, type: !155)
!393 = !DILocalVariable(name: "srcXres", arg: 2, scope: !388, file: !3, line: 820, type: !6)
!394 = !DILocalVariable(name: "yres", arg: 3, scope: !388, file: !3, line: 821, type: !6)
!395 = !DILocalVariable(name: "srcZres", arg: 4, scope: !388, file: !3, line: 822, type: !6)
!396 = !DILocalVariable(name: "dstPtr", arg: 5, scope: !388, file: !3, line: 823, type: !155)
!397 = !DILocalVariable(name: "dstZres", arg: 6, scope: !388, file: !3, line: 824, type: !6)
!398 = !DILocalVariable(name: "pixMax", arg: 7, scope: !388, file: !3, line: 825, type: !6)
!399 = !DILocalVariable(name: "x", scope: !388, file: !3, line: 828, type: !6)
!400 = !DILocalVariable(name: "y", scope: !388, file: !3, line: 828, type: !6)
!401 = !DILocalVariable(name: "limit", scope: !388, file: !3, line: 828, type: !6)
!402 = !DILocalVariable(name: "n7", scope: !388, file: !3, line: 828, type: !6)
!403 = !DILocalVariable(name: "n5", scope: !388, file: !3, line: 828, type: !6)
!404 = !DILocalVariable(name: "n3", scope: !388, file: !3, line: 828, type: !6)
!405 = !DILocalVariable(name: "n1", scope: !388, file: !3, line: 828, type: !6)
!406 = !DILocalVariable(name: "result", scope: !388, file: !3, line: 829, type: !6)
!407 = !DILocalVariable(name: "src", scope: !388, file: !3, line: 830, type: !155)
!408 = !DILocalVariable(name: "dst", scope: !388, file: !3, line: 831, type: !155)
!409 = !DILocation(line: 0, scope: !388)
!410 = !DILocation(line: 833, column: 15, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !3, line: 833, column: 3)
!412 = distinct !DILexicalBlock(scope: !388, file: !3, line: 833, column: 3)
!413 = !DILocation(line: 833, column: 3, scope: !412)
!414 = !DILocation(line: 841, column: 26, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !3, line: 836, column: 5)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 835, column: 5)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 835, column: 5)
!418 = distinct !DILexicalBlock(scope: !411, file: !3, line: 834, column: 3)
!419 = !DILocation(line: 841, column: 23, scope: !415)
!420 = !DILocation(line: 842, column: 43, scope: !415)
!421 = !DILocation(line: 842, column: 38, scope: !415)
!422 = !DILocation(line: 842, column: 36, scope: !415)
!423 = !DILocation(line: 842, column: 15, scope: !415)
!424 = !DILocation(line: 842, column: 9, scope: !415)
!425 = !DILocation(line: 843, column: 43, scope: !415)
!426 = !DILocation(line: 843, column: 38, scope: !415)
!427 = !DILocation(line: 843, column: 36, scope: !415)
!428 = !DILocation(line: 843, column: 15, scope: !415)
!429 = !DILocation(line: 843, column: 9, scope: !415)
!430 = !DILocation(line: 844, column: 43, scope: !415)
!431 = !DILocation(line: 844, column: 38, scope: !415)
!432 = !DILocation(line: 844, column: 36, scope: !415)
!433 = !DILocation(line: 844, column: 15, scope: !415)
!434 = !DILocation(line: 844, column: 9, scope: !415)
!435 = !DILocation(line: 845, column: 43, scope: !415)
!436 = !DILocation(line: 845, column: 38, scope: !415)
!437 = !DILocation(line: 845, column: 36, scope: !415)
!438 = !DILocation(line: 845, column: 15, scope: !415)
!439 = !DILocation(line: 845, column: 9, scope: !415)
!440 = !DILocation(line: 846, column: 18, scope: !441)
!441 = distinct !DILexicalBlock(scope: !415, file: !3, line: 846, column: 11)
!442 = !DILocation(line: 846, column: 11, scope: !415)
!443 = !DILocation(line: 845, column: 56, scope: !415)
!444 = !DILocation(line: 845, column: 63, scope: !415)
!445 = !DILocation(line: 848, column: 16, scope: !441)
!446 = !DILocation(line: 0, scope: !415)
!447 = !DILocation(line: 850, column: 14, scope: !415)
!448 = !DILocation(line: 850, column: 12, scope: !415)
!449 = !DILocation(line: 851, column: 11, scope: !415)
!450 = !DILocation(line: 852, column: 11, scope: !415)
!451 = !DILocation(line: 842, column: 23, scope: !415)
!452 = !DILocation(line: 842, column: 18, scope: !415)
!453 = !DILocation(line: 843, column: 23, scope: !415)
!454 = !DILocation(line: 843, column: 18, scope: !415)
!455 = !DILocation(line: 845, column: 23, scope: !415)
!456 = !DILocation(line: 845, column: 18, scope: !415)
!457 = !DILocation(line: 844, column: 23, scope: !415)
!458 = !DILocation(line: 844, column: 18, scope: !415)
!459 = !DILocation(line: 856, column: 5, scope: !460)
!460 = distinct !DILexicalBlock(scope: !418, file: !3, line: 856, column: 5)
!461 = !DILocation(line: 858, column: 26, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 857, column: 5)
!463 = distinct !DILexicalBlock(scope: !460, file: !3, line: 856, column: 5)
!464 = !DILocation(line: 858, column: 23, scope: !462)
!465 = !DILocation(line: 859, column: 23, scope: !462)
!466 = !DILocation(line: 859, column: 18, scope: !462)
!467 = !DILocation(line: 859, column: 42, scope: !462)
!468 = !DILocation(line: 859, column: 37, scope: !462)
!469 = !DILocation(line: 859, column: 35, scope: !462)
!470 = !DILocation(line: 859, column: 15, scope: !462)
!471 = !DILocation(line: 859, column: 9, scope: !462)
!472 = !DILocation(line: 860, column: 23, scope: !462)
!473 = !DILocation(line: 860, column: 18, scope: !462)
!474 = !DILocation(line: 860, column: 42, scope: !462)
!475 = !DILocation(line: 860, column: 37, scope: !462)
!476 = !DILocation(line: 860, column: 35, scope: !462)
!477 = !DILocation(line: 860, column: 15, scope: !462)
!478 = !DILocation(line: 860, column: 9, scope: !462)
!479 = !DILocation(line: 861, column: 23, scope: !462)
!480 = !DILocation(line: 861, column: 18, scope: !462)
!481 = !DILocation(line: 861, column: 42, scope: !462)
!482 = !DILocation(line: 861, column: 37, scope: !462)
!483 = !DILocation(line: 861, column: 35, scope: !462)
!484 = !DILocation(line: 861, column: 15, scope: !462)
!485 = !DILocation(line: 861, column: 9, scope: !462)
!486 = !DILocation(line: 862, column: 23, scope: !462)
!487 = !DILocation(line: 862, column: 18, scope: !462)
!488 = !DILocation(line: 862, column: 42, scope: !462)
!489 = !DILocation(line: 862, column: 37, scope: !462)
!490 = !DILocation(line: 862, column: 35, scope: !462)
!491 = !DILocation(line: 862, column: 15, scope: !462)
!492 = !DILocation(line: 862, column: 9, scope: !462)
!493 = !DILocation(line: 863, column: 18, scope: !494)
!494 = distinct !DILexicalBlock(scope: !462, file: !3, line: 863, column: 11)
!495 = !DILocation(line: 863, column: 11, scope: !462)
!496 = !DILocation(line: 862, column: 55, scope: !462)
!497 = !DILocation(line: 862, column: 62, scope: !462)
!498 = !DILocation(line: 865, column: 16, scope: !494)
!499 = !DILocation(line: 0, scope: !462)
!500 = !DILocation(line: 867, column: 14, scope: !462)
!501 = !DILocation(line: 867, column: 12, scope: !462)
!502 = !DILocation(line: 868, column: 11, scope: !462)
!503 = !DILocation(line: 869, column: 11, scope: !462)
!504 = !DILocation(line: 856, column: 27, scope: !463)
!505 = !DILocation(line: 856, column: 17, scope: !463)
!506 = distinct !{!506, !459, !507}
!507 = !DILocation(line: 870, column: 5, scope: !460)
!508 = !DILocation(line: 856, scope: !460)
!509 = !DILocation(line: 873, column: 17, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 873, column: 5)
!511 = distinct !DILexicalBlock(scope: !418, file: !3, line: 873, column: 5)
!512 = !DILocation(line: 873, column: 5, scope: !511)
!513 = !DILocation(line: 875, column: 15, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !3, line: 874, column: 5)
!515 = !DILocation(line: 876, column: 15, scope: !514)
!516 = !DILocation(line: 876, column: 12, scope: !514)
!517 = !DILocation(line: 877, column: 15, scope: !514)
!518 = !DILocation(line: 877, column: 12, scope: !514)
!519 = !DILocation(line: 878, column: 15, scope: !514)
!520 = !DILocation(line: 878, column: 12, scope: !514)
!521 = !DILocation(line: 879, column: 26, scope: !514)
!522 = !DILocation(line: 879, column: 23, scope: !514)
!523 = !DILocation(line: 880, column: 23, scope: !514)
!524 = !DILocation(line: 880, column: 18, scope: !514)
!525 = !DILocation(line: 880, column: 45, scope: !514)
!526 = !DILocation(line: 880, column: 42, scope: !514)
!527 = !DILocation(line: 880, column: 37, scope: !514)
!528 = !DILocation(line: 880, column: 35, scope: !514)
!529 = !DILocation(line: 880, column: 15, scope: !514)
!530 = !DILocation(line: 880, column: 9, scope: !514)
!531 = !DILocation(line: 881, column: 23, scope: !514)
!532 = !DILocation(line: 881, column: 18, scope: !514)
!533 = !DILocation(line: 881, column: 45, scope: !514)
!534 = !DILocation(line: 881, column: 42, scope: !514)
!535 = !DILocation(line: 881, column: 37, scope: !514)
!536 = !DILocation(line: 881, column: 35, scope: !514)
!537 = !DILocation(line: 881, column: 15, scope: !514)
!538 = !DILocation(line: 881, column: 9, scope: !514)
!539 = !DILocation(line: 882, column: 23, scope: !514)
!540 = !DILocation(line: 882, column: 18, scope: !514)
!541 = !DILocation(line: 882, column: 45, scope: !514)
!542 = !DILocation(line: 882, column: 42, scope: !514)
!543 = !DILocation(line: 882, column: 37, scope: !514)
!544 = !DILocation(line: 882, column: 35, scope: !514)
!545 = !DILocation(line: 882, column: 15, scope: !514)
!546 = !DILocation(line: 882, column: 9, scope: !514)
!547 = !DILocation(line: 883, column: 23, scope: !514)
!548 = !DILocation(line: 883, column: 18, scope: !514)
!549 = !DILocation(line: 883, column: 45, scope: !514)
!550 = !DILocation(line: 883, column: 42, scope: !514)
!551 = !DILocation(line: 883, column: 37, scope: !514)
!552 = !DILocation(line: 883, column: 35, scope: !514)
!553 = !DILocation(line: 883, column: 15, scope: !514)
!554 = !DILocation(line: 883, column: 9, scope: !514)
!555 = !DILocation(line: 884, column: 18, scope: !556)
!556 = distinct !DILexicalBlock(scope: !514, file: !3, line: 884, column: 11)
!557 = !DILocation(line: 884, column: 11, scope: !514)
!558 = !DILocation(line: 883, column: 56, scope: !514)
!559 = !DILocation(line: 883, column: 63, scope: !514)
!560 = !DILocation(line: 886, column: 16, scope: !556)
!561 = !DILocation(line: 0, scope: !514)
!562 = !DILocation(line: 888, column: 14, scope: !514)
!563 = !DILocation(line: 888, column: 12, scope: !514)
!564 = !DILocation(line: 889, column: 11, scope: !514)
!565 = !DILocation(line: 890, column: 11, scope: !514)
!566 = !DILocation(line: 873, column: 27, scope: !510)
!567 = distinct !{!567, !512, !568}
!568 = !DILocation(line: 891, column: 5, scope: !511)
!569 = !DILocation(line: 833, column: 24, scope: !411)
!570 = distinct !{!570, !413, !571}
!571 = !DILocation(line: 892, column: 3, scope: !412)
!572 = !DILocation(line: 893, column: 1, scope: !388)
!573 = distinct !DISubprogram(name: "vertical_half_1chan", scope: !3, file: !3, line: 903, type: !389, scopeLine: 911, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!575 = !DILocalVariable(name: "srcPtr", arg: 1, scope: !573, file: !3, line: 903, type: !155)
!576 = !DILocalVariable(name: "xres", arg: 2, scope: !573, file: !3, line: 904, type: !6)
!577 = !DILocalVariable(name: "srcYres", arg: 3, scope: !573, file: !3, line: 905, type: !6)
!578 = !DILocalVariable(name: "srcZres", arg: 4, scope: !573, file: !3, line: 906, type: !6)
!579 = !DILocalVariable(name: "dstPtr", arg: 5, scope: !573, file: !3, line: 907, type: !155)
!580 = !DILocalVariable(name: "dstZres", arg: 6, scope: !573, file: !3, line: 908, type: !6)
!581 = !DILocalVariable(name: "pixMax", arg: 7, scope: !573, file: !3, line: 909, type: !6)
!582 = !DILocalVariable(name: "x", scope: !573, file: !3, line: 912, type: !6)
!583 = !DILocalVariable(name: "y", scope: !573, file: !3, line: 912, type: !6)
!584 = !DILocalVariable(name: "limit", scope: !573, file: !3, line: 912, type: !6)
!585 = !DILocalVariable(name: "n6", scope: !573, file: !3, line: 912, type: !6)
!586 = !DILocalVariable(name: "n5", scope: !573, file: !3, line: 912, type: !6)
!587 = !DILocalVariable(name: "n4", scope: !573, file: !3, line: 912, type: !6)
!588 = !DILocalVariable(name: "n3", scope: !573, file: !3, line: 912, type: !6)
!589 = !DILocalVariable(name: "n2", scope: !573, file: !3, line: 912, type: !6)
!590 = !DILocalVariable(name: "n1", scope: !573, file: !3, line: 912, type: !6)
!591 = !DILocalVariable(name: "result", scope: !573, file: !3, line: 913, type: !6)
!592 = !DILocalVariable(name: "srcRowCount", scope: !573, file: !3, line: 915, type: !6)
!593 = !DILocalVariable(name: "src", scope: !573, file: !3, line: 916, type: !155)
!594 = !DILocalVariable(name: "dst", scope: !573, file: !3, line: 917, type: !155)
!595 = !DILocation(line: 0, scope: !573)
!596 = !DILocation(line: 915, column: 26, scope: !573)
!597 = !DILocation(line: 919, column: 3, scope: !598)
!598 = distinct !DILexicalBlock(scope: !573, file: !3, line: 919, column: 3)
!599 = !DILocation(line: 945, column: 19, scope: !573)
!600 = !DILocation(line: 928, column: 23, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !3, line: 927, column: 5)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 926, column: 5)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 926, column: 5)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 920, column: 3)
!605 = distinct !DILexicalBlock(scope: !598, file: !3, line: 919, column: 3)
!606 = !DILocation(line: 928, column: 52, scope: !601)
!607 = !DILocation(line: 928, column: 47, scope: !601)
!608 = !DILocation(line: 928, column: 45, scope: !601)
!609 = !DILocation(line: 928, column: 20, scope: !601)
!610 = !DILocation(line: 929, column: 44, scope: !601)
!611 = !DILocation(line: 929, column: 39, scope: !601)
!612 = !DILocation(line: 929, column: 37, scope: !601)
!613 = !DILocation(line: 929, column: 12, scope: !601)
!614 = !DILocation(line: 929, column: 9, scope: !601)
!615 = !DILocation(line: 930, column: 44, scope: !601)
!616 = !DILocation(line: 930, column: 39, scope: !601)
!617 = !DILocation(line: 930, column: 37, scope: !601)
!618 = !DILocation(line: 930, column: 12, scope: !601)
!619 = !DILocation(line: 930, column: 9, scope: !601)
!620 = !DILocation(line: 931, column: 44, scope: !601)
!621 = !DILocation(line: 931, column: 39, scope: !601)
!622 = !DILocation(line: 931, column: 37, scope: !601)
!623 = !DILocation(line: 931, column: 9, scope: !601)
!624 = !DILocation(line: 932, column: 44, scope: !601)
!625 = !DILocation(line: 932, column: 39, scope: !601)
!626 = !DILocation(line: 932, column: 37, scope: !601)
!627 = !DILocation(line: 932, column: 12, scope: !601)
!628 = !DILocation(line: 932, column: 9, scope: !601)
!629 = !DILocation(line: 933, column: 44, scope: !601)
!630 = !DILocation(line: 933, column: 39, scope: !601)
!631 = !DILocation(line: 933, column: 37, scope: !601)
!632 = !DILocation(line: 933, column: 12, scope: !601)
!633 = !DILocation(line: 933, column: 9, scope: !601)
!634 = !DILocation(line: 934, column: 18, scope: !635)
!635 = distinct !DILexicalBlock(scope: !601, file: !3, line: 934, column: 11)
!636 = !DILocation(line: 934, column: 11, scope: !601)
!637 = !DILocation(line: 933, column: 61, scope: !601)
!638 = !DILocation(line: 933, column: 67, scope: !601)
!639 = !DILocation(line: 936, column: 16, scope: !635)
!640 = !DILocation(line: 0, scope: !601)
!641 = !DILocation(line: 938, column: 14, scope: !601)
!642 = !DILocation(line: 938, column: 12, scope: !601)
!643 = !DILocation(line: 939, column: 11, scope: !601)
!644 = !DILocation(line: 940, column: 11, scope: !601)
!645 = !DILocation(line: 926, column: 26, scope: !602)
!646 = !DILocation(line: 926, column: 17, scope: !602)
!647 = !DILocation(line: 926, column: 5, scope: !603)
!648 = distinct !{!648, !647, !649}
!649 = !DILocation(line: 941, column: 5, scope: !603)
!650 = !DILocation(line: 942, column: 9, scope: !604)
!651 = !DILocation(line: 929, column: 20, scope: !601)
!652 = !DILocation(line: 929, column: 15, scope: !601)
!653 = !DILocation(line: 930, column: 20, scope: !601)
!654 = !DILocation(line: 930, column: 15, scope: !601)
!655 = !DILocation(line: 932, column: 20, scope: !601)
!656 = !DILocation(line: 932, column: 15, scope: !601)
!657 = !DILocation(line: 931, column: 20, scope: !601)
!658 = !DILocation(line: 931, column: 15, scope: !601)
!659 = !DILocation(line: 946, column: 15, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 946, column: 3)
!661 = distinct !DILexicalBlock(scope: !573, file: !3, line: 946, column: 3)
!662 = !DILocation(line: 946, column: 3, scope: !661)
!663 = !DILocation(line: 967, column: 19, scope: !573)
!664 = !DILocation(line: 948, column: 5, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !3, line: 948, column: 5)
!666 = distinct !DILexicalBlock(scope: !660, file: !3, line: 947, column: 3)
!667 = !DILocation(line: 950, column: 23, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !3, line: 949, column: 5)
!669 = distinct !DILexicalBlock(scope: !665, file: !3, line: 948, column: 5)
!670 = !DILocation(line: 950, column: 51, scope: !668)
!671 = !DILocation(line: 950, column: 46, scope: !668)
!672 = !DILocation(line: 950, column: 44, scope: !668)
!673 = !DILocation(line: 950, column: 20, scope: !668)
!674 = !DILocation(line: 951, column: 20, scope: !668)
!675 = !DILocation(line: 951, column: 15, scope: !668)
!676 = !DILocation(line: 951, column: 43, scope: !668)
!677 = !DILocation(line: 951, column: 38, scope: !668)
!678 = !DILocation(line: 951, column: 36, scope: !668)
!679 = !DILocation(line: 951, column: 12, scope: !668)
!680 = !DILocation(line: 951, column: 9, scope: !668)
!681 = !DILocation(line: 952, column: 20, scope: !668)
!682 = !DILocation(line: 952, column: 15, scope: !668)
!683 = !DILocation(line: 952, column: 43, scope: !668)
!684 = !DILocation(line: 952, column: 38, scope: !668)
!685 = !DILocation(line: 952, column: 36, scope: !668)
!686 = !DILocation(line: 952, column: 12, scope: !668)
!687 = !DILocation(line: 952, column: 9, scope: !668)
!688 = !DILocation(line: 953, column: 20, scope: !668)
!689 = !DILocation(line: 953, column: 15, scope: !668)
!690 = !DILocation(line: 953, column: 43, scope: !668)
!691 = !DILocation(line: 953, column: 38, scope: !668)
!692 = !DILocation(line: 953, column: 36, scope: !668)
!693 = !DILocation(line: 953, column: 9, scope: !668)
!694 = !DILocation(line: 954, column: 20, scope: !668)
!695 = !DILocation(line: 954, column: 15, scope: !668)
!696 = !DILocation(line: 954, column: 43, scope: !668)
!697 = !DILocation(line: 954, column: 38, scope: !668)
!698 = !DILocation(line: 954, column: 36, scope: !668)
!699 = !DILocation(line: 954, column: 12, scope: !668)
!700 = !DILocation(line: 954, column: 9, scope: !668)
!701 = !DILocation(line: 955, column: 20, scope: !668)
!702 = !DILocation(line: 955, column: 15, scope: !668)
!703 = !DILocation(line: 955, column: 43, scope: !668)
!704 = !DILocation(line: 955, column: 38, scope: !668)
!705 = !DILocation(line: 955, column: 36, scope: !668)
!706 = !DILocation(line: 955, column: 12, scope: !668)
!707 = !DILocation(line: 955, column: 9, scope: !668)
!708 = !DILocation(line: 956, column: 18, scope: !709)
!709 = distinct !DILexicalBlock(scope: !668, file: !3, line: 956, column: 11)
!710 = !DILocation(line: 956, column: 11, scope: !668)
!711 = !DILocation(line: 955, column: 60, scope: !668)
!712 = !DILocation(line: 955, column: 66, scope: !668)
!713 = !DILocation(line: 958, column: 16, scope: !709)
!714 = !DILocation(line: 0, scope: !668)
!715 = !DILocation(line: 960, column: 14, scope: !668)
!716 = !DILocation(line: 960, column: 12, scope: !668)
!717 = !DILocation(line: 961, column: 11, scope: !668)
!718 = !DILocation(line: 962, column: 11, scope: !668)
!719 = !DILocation(line: 948, column: 26, scope: !669)
!720 = !DILocation(line: 948, column: 17, scope: !669)
!721 = distinct !{!721, !664, !722}
!722 = !DILocation(line: 963, column: 5, scope: !665)
!723 = !DILocation(line: 964, column: 9, scope: !666)
!724 = !DILocation(line: 946, column: 25, scope: !660)
!725 = distinct !{!725, !662, !726}
!726 = !DILocation(line: 965, column: 3, scope: !661)
!727 = !DILocation(line: 946, scope: !661)
!728 = !DILocation(line: 917, column: 11, scope: !573)
!729 = !DILocation(line: 968, column: 15, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !3, line: 968, column: 3)
!731 = distinct !DILexicalBlock(scope: !573, file: !3, line: 968, column: 3)
!732 = !DILocation(line: 968, column: 3, scope: !731)
!733 = !DILocation(line: 970, column: 13, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !3, line: 969, column: 3)
!735 = !DILocation(line: 971, column: 13, scope: !734)
!736 = !DILocation(line: 971, column: 10, scope: !734)
!737 = !DILocation(line: 972, column: 13, scope: !734)
!738 = !DILocation(line: 972, column: 10, scope: !734)
!739 = !DILocation(line: 973, column: 13, scope: !734)
!740 = !DILocation(line: 973, column: 10, scope: !734)
!741 = !DILocation(line: 974, column: 13, scope: !734)
!742 = !DILocation(line: 974, column: 10, scope: !734)
!743 = !DILocation(line: 975, column: 13, scope: !734)
!744 = !DILocation(line: 975, column: 10, scope: !734)
!745 = !DILocation(line: 976, column: 5, scope: !746)
!746 = distinct !DILexicalBlock(scope: !734, file: !3, line: 976, column: 5)
!747 = !DILocation(line: 978, column: 23, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 977, column: 5)
!749 = distinct !DILexicalBlock(scope: !746, file: !3, line: 976, column: 5)
!750 = !DILocation(line: 978, column: 51, scope: !748)
!751 = !DILocation(line: 978, column: 46, scope: !748)
!752 = !DILocation(line: 978, column: 44, scope: !748)
!753 = !DILocation(line: 978, column: 20, scope: !748)
!754 = !DILocation(line: 979, column: 20, scope: !748)
!755 = !DILocation(line: 979, column: 15, scope: !748)
!756 = !DILocation(line: 979, column: 43, scope: !748)
!757 = !DILocation(line: 979, column: 38, scope: !748)
!758 = !DILocation(line: 979, column: 36, scope: !748)
!759 = !DILocation(line: 979, column: 12, scope: !748)
!760 = !DILocation(line: 979, column: 9, scope: !748)
!761 = !DILocation(line: 980, column: 20, scope: !748)
!762 = !DILocation(line: 980, column: 15, scope: !748)
!763 = !DILocation(line: 980, column: 43, scope: !748)
!764 = !DILocation(line: 980, column: 38, scope: !748)
!765 = !DILocation(line: 980, column: 36, scope: !748)
!766 = !DILocation(line: 980, column: 12, scope: !748)
!767 = !DILocation(line: 980, column: 9, scope: !748)
!768 = !DILocation(line: 981, column: 20, scope: !748)
!769 = !DILocation(line: 981, column: 15, scope: !748)
!770 = !DILocation(line: 981, column: 43, scope: !748)
!771 = !DILocation(line: 981, column: 38, scope: !748)
!772 = !DILocation(line: 981, column: 36, scope: !748)
!773 = !DILocation(line: 981, column: 9, scope: !748)
!774 = !DILocation(line: 982, column: 20, scope: !748)
!775 = !DILocation(line: 982, column: 15, scope: !748)
!776 = !DILocation(line: 982, column: 43, scope: !748)
!777 = !DILocation(line: 982, column: 38, scope: !748)
!778 = !DILocation(line: 982, column: 36, scope: !748)
!779 = !DILocation(line: 982, column: 12, scope: !748)
!780 = !DILocation(line: 982, column: 9, scope: !748)
!781 = !DILocation(line: 983, column: 20, scope: !748)
!782 = !DILocation(line: 983, column: 15, scope: !748)
!783 = !DILocation(line: 983, column: 43, scope: !748)
!784 = !DILocation(line: 983, column: 38, scope: !748)
!785 = !DILocation(line: 983, column: 36, scope: !748)
!786 = !DILocation(line: 983, column: 12, scope: !748)
!787 = !DILocation(line: 983, column: 9, scope: !748)
!788 = !DILocation(line: 984, column: 18, scope: !789)
!789 = distinct !DILexicalBlock(scope: !748, file: !3, line: 984, column: 11)
!790 = !DILocation(line: 984, column: 11, scope: !748)
!791 = !DILocation(line: 983, column: 61, scope: !748)
!792 = !DILocation(line: 983, column: 67, scope: !748)
!793 = !DILocation(line: 986, column: 16, scope: !789)
!794 = !DILocation(line: 0, scope: !748)
!795 = !DILocation(line: 988, column: 14, scope: !748)
!796 = !DILocation(line: 988, column: 12, scope: !748)
!797 = !DILocation(line: 989, column: 11, scope: !748)
!798 = !DILocation(line: 990, column: 11, scope: !748)
!799 = !DILocation(line: 976, column: 26, scope: !749)
!800 = !DILocation(line: 976, column: 17, scope: !749)
!801 = distinct !{!801, !745, !802}
!802 = !DILocation(line: 991, column: 5, scope: !746)
!803 = !DILocation(line: 992, column: 9, scope: !734)
!804 = !DILocation(line: 968, column: 25, scope: !730)
!805 = distinct !{!805, !732, !806}
!806 = !DILocation(line: 993, column: 3, scope: !731)
!807 = !DILocation(line: 994, column: 1, scope: !573)
!808 = distinct !DIAssignID()
!809 = !DILocation(line: 0, scope: !2)
!810 = !DILocation(line: 1018, column: 3, scope: !2)
!811 = !DILocation(line: 1030, column: 20, scope: !2)
!812 = !DILocation(line: 1030, column: 12, scope: !2)
!813 = !DILocation(line: 1031, column: 20, scope: !2)
!814 = !DILocation(line: 1031, column: 12, scope: !2)
!815 = !DILocation(line: 1034, column: 15, scope: !816)
!816 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1034, column: 7)
!817 = !DILocation(line: 1034, column: 27, scope: !816)
!818 = !DILocation(line: 1034, column: 37, scope: !816)
!819 = !DILocation(line: 1034, column: 53, scope: !816)
!820 = !DILocation(line: 1034, column: 41, scope: !816)
!821 = !DILocation(line: 1034, column: 7, scope: !2)
!822 = !DILocation(line: 1036, column: 14, scope: !823)
!823 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1035, column: 3)
!824 = !DILocation(line: 1036, column: 5, scope: !823)
!825 = !DILocation(line: 1037, column: 5, scope: !823)
!826 = !DILocation(line: 1041, column: 19, scope: !827)
!827 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1041, column: 7)
!828 = !DILocation(line: 1041, column: 30, scope: !827)
!829 = !DILocation(line: 1041, column: 7, scope: !2)
!830 = !DILocation(line: 1040, column: 46, scope: !2)
!831 = !DILocation(line: 1040, column: 37, scope: !2)
!832 = !DILocation(line: 1043, column: 21, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !3, line: 1043, column: 9)
!834 = distinct !DILexicalBlock(scope: !827, file: !3, line: 1042, column: 3)
!835 = !DILocation(line: 1043, column: 9, scope: !833)
!836 = !DILocation(line: 0, scope: !833)
!837 = !DILocation(line: 1051, column: 29, scope: !838)
!838 = distinct !DILexicalBlock(scope: !834, file: !3, line: 1051, column: 9)
!839 = !DILocation(line: 1053, column: 16, scope: !840)
!840 = distinct !DILexicalBlock(scope: !838, file: !3, line: 1052, column: 5)
!841 = !DILocation(line: 1053, column: 7, scope: !840)
!842 = !DILocation(line: 1054, column: 7, scope: !840)
!843 = !DILocation(line: 1059, column: 5, scope: !844)
!844 = distinct !DILexicalBlock(scope: !827, file: !3, line: 1058, column: 3)
!845 = !DILocalVariable(name: "t", arg: 1, scope: !846, file: !3, line: 628, type: !356)
!846 = distinct !DISubprogram(name: "readTiff", scope: !3, file: !3, line: 628, type: !847, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !850)
!847 = !DISubroutineType(types: !848)
!848 = !{!6, !356, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!850 = !{!845, !851, !852}
!851 = !DILocalVariable(name: "path", arg: 2, scope: !846, file: !3, line: 628, type: !849)
!852 = !DILabel(scope: !846, name: "Error", file: !3, line: 642)
!853 = !DILocation(line: 0, scope: !846, inlinedAt: !854)
!854 = distinct !DILocation(line: 1062, column: 7, scope: !855)
!855 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1062, column: 7)
!856 = !DILocalVariable(name: "t", arg: 1, scope: !857, file: !3, line: 451, type: !356)
!857 = distinct !DISubprogram(name: "readFileIntoMemory", scope: !3, file: !3, line: 451, type: !858, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !862)
!858 = !DISubroutineType(types: !859)
!859 = !{!6, !356, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!862 = !{!856, !863, !864, !865, !866, !867, !868, !869}
!863 = !DILocalVariable(name: "path", arg: 2, scope: !857, file: !3, line: 451, type: !860)
!864 = !DILocalVariable(name: "cnt", scope: !857, file: !3, line: 454, type: !159)
!865 = !DILocalVariable(name: "result", scope: !857, file: !3, line: 454, type: !159)
!866 = !DILocalVariable(name: "byteOrder", scope: !857, file: !3, line: 456, type: !151)
!867 = !DILocalVariable(name: "endian", scope: !857, file: !3, line: 458, type: !6)
!868 = !DILocalVariable(name: "machineLittleEndian", scope: !857, file: !3, line: 459, type: !6)
!869 = !DILocalVariable(name: "fd", scope: !857, file: !3, line: 460, type: !6)
!870 = !DILocation(line: 0, scope: !857, inlinedAt: !871)
!871 = distinct !DILocation(line: 632, column: 7, scope: !872, inlinedAt: !854)
!872 = distinct !DILexicalBlock(scope: !846, file: !3, line: 632, column: 7)
!873 = !DILocation(line: 465, column: 8, scope: !857, inlinedAt: !871)
!874 = !DILocation(line: 466, column: 10, scope: !875, inlinedAt: !871)
!875 = distinct !DILexicalBlock(scope: !857, file: !3, line: 466, column: 7)
!876 = !DILocation(line: 466, column: 7, scope: !857, inlinedAt: !871)
!877 = !DILocation(line: 468, column: 14, scope: !878, inlinedAt: !871)
!878 = distinct !DILexicalBlock(scope: !875, file: !3, line: 467, column: 3)
!879 = !DILocation(line: 468, column: 5, scope: !878, inlinedAt: !871)
!880 = !DILocation(line: 469, column: 5, scope: !878, inlinedAt: !871)
!881 = !DILocation(line: 472, column: 16, scope: !857, inlinedAt: !871)
!882 = !DILocation(line: 473, column: 11, scope: !883, inlinedAt: !871)
!883 = distinct !DILexicalBlock(scope: !857, file: !3, line: 473, column: 7)
!884 = !DILocation(line: 473, column: 7, scope: !857, inlinedAt: !871)
!885 = !DILocation(line: 476, column: 7, scope: !886, inlinedAt: !871)
!886 = distinct !DILexicalBlock(scope: !857, file: !3, line: 476, column: 7)
!887 = !DILocation(line: 476, column: 31, scope: !886, inlinedAt: !871)
!888 = !DILocation(line: 476, column: 7, scope: !857, inlinedAt: !871)
!889 = !DILocation(line: 479, column: 43, scope: !857, inlinedAt: !871)
!890 = !DILocation(line: 479, column: 31, scope: !857, inlinedAt: !871)
!891 = !DILocation(line: 479, column: 19, scope: !857, inlinedAt: !871)
!892 = !DILocation(line: 480, column: 23, scope: !893, inlinedAt: !871)
!893 = distinct !DILexicalBlock(scope: !857, file: !3, line: 480, column: 7)
!894 = !DILocation(line: 480, column: 7, scope: !857, inlinedAt: !871)
!895 = !DILocation(line: 482, column: 5, scope: !896, inlinedAt: !871)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 481, column: 3)
!897 = !DILocation(line: 483, column: 5, scope: !896, inlinedAt: !871)
!898 = !DILocation(line: 486, column: 19, scope: !857, inlinedAt: !871)
!899 = !DILocation(line: 487, column: 14, scope: !900, inlinedAt: !871)
!900 = distinct !DILexicalBlock(scope: !857, file: !3, line: 487, column: 7)
!901 = !DILocation(line: 487, column: 7, scope: !857, inlinedAt: !871)
!902 = !DILocation(line: 495, column: 19, scope: !857, inlinedAt: !871)
!903 = !DILocation(line: 495, column: 16, scope: !857, inlinedAt: !871)
!904 = !DILocation(line: 495, column: 35, scope: !857, inlinedAt: !871)
!905 = !DILocation(line: 495, column: 43, scope: !857, inlinedAt: !871)
!906 = !DILocation(line: 495, column: 41, scope: !857, inlinedAt: !871)
!907 = !DILocation(line: 496, column: 3, scope: !857, inlinedAt: !871)
!908 = !DILocation(line: 507, column: 16, scope: !909, inlinedAt: !871)
!909 = distinct !DILexicalBlock(scope: !857, file: !3, line: 497, column: 3)
!910 = !DILocation(line: 507, column: 7, scope: !909, inlinedAt: !871)
!911 = !DILocation(line: 508, column: 16, scope: !909, inlinedAt: !871)
!912 = !DILocation(line: 508, column: 7, scope: !909, inlinedAt: !871)
!913 = !DILocation(line: 642, column: 1, scope: !846, inlinedAt: !854)
!914 = !DILocation(line: 643, column: 7, scope: !846, inlinedAt: !854)
!915 = !DILocation(line: 0, scope: !909, inlinedAt: !871)
!916 = !DILocation(line: 0, scope: !917, inlinedAt: !871)
!917 = distinct !DILexicalBlock(scope: !857, file: !3, line: 512, column: 7)
!918 = !DILocalVariable(name: "t", arg: 1, scope: !919, file: !3, line: 607, type: !356)
!919 = distinct !DISubprogram(name: "readImageFileHeader", scope: !3, file: !3, line: 607, type: !920, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !922)
!920 = !DISubroutineType(types: !921)
!921 = !{!6, !356}
!922 = !{!918}
!923 = !DILocation(line: 0, scope: !919, inlinedAt: !924)
!924 = distinct !DILocation(line: 634, column: 7, scope: !925, inlinedAt: !854)
!925 = distinct !DILexicalBlock(scope: !846, file: !3, line: 634, column: 7)
!926 = !DILocalVariable(name: "t", arg: 1, scope: !927, file: !3, line: 203, type: !356)
!927 = distinct !DISubprogram(name: "getU16", scope: !3, file: !3, line: 203, type: !928, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{!322, !356}
!930 = !{!926, !931}
!931 = !DILocalVariable(name: "u", scope: !927, file: !3, line: 208, type: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !3, line: 205, size: 16, elements: !933)
!933 = !{!934, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !932, file: !3, line: 206, baseType: !935, size: 16)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 16, elements: !336)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !932, file: !3, line: 207, baseType: !151, size: 16)
!937 = !DILocation(line: 0, scope: !927, inlinedAt: !938)
!938 = distinct !DILocation(line: 609, column: 31, scope: !919, inlinedAt: !924)
!939 = !DILocation(line: 209, column: 19, scope: !927, inlinedAt: !938)
!940 = !DILocation(line: 209, column: 13, scope: !927, inlinedAt: !938)
!941 = !DILocation(line: 210, column: 19, scope: !927, inlinedAt: !938)
!942 = !DILocation(line: 210, column: 13, scope: !927, inlinedAt: !938)
!943 = !DILocation(line: 211, column: 10, scope: !927, inlinedAt: !938)
!944 = !DILocation(line: 609, column: 20, scope: !919, inlinedAt: !924)
!945 = !DILocation(line: 0, scope: !927, inlinedAt: !946)
!946 = distinct !DILocation(line: 610, column: 37, scope: !919, inlinedAt: !924)
!947 = !DILocation(line: 209, column: 19, scope: !927, inlinedAt: !946)
!948 = !DILocation(line: 209, column: 13, scope: !927, inlinedAt: !946)
!949 = !DILocation(line: 210, column: 19, scope: !927, inlinedAt: !946)
!950 = !DILocation(line: 210, column: 13, scope: !927, inlinedAt: !946)
!951 = !DILocation(line: 211, column: 10, scope: !927, inlinedAt: !946)
!952 = !DILocation(line: 610, column: 26, scope: !919, inlinedAt: !924)
!953 = !DILocalVariable(name: "t", arg: 1, scope: !954, file: !3, line: 222, type: !356)
!954 = distinct !DISubprogram(name: "getU32", scope: !3, file: !3, line: 222, type: !928, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !955)
!955 = !{!953, !956}
!956 = !DILocalVariable(name: "u", scope: !954, file: !3, line: 227, type: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !3, line: 224, size: 32, elements: !958)
!958 = !{!959, !963}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !957, file: !3, line: 225, baseType: !960, size: 32)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 32, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 4)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !957, file: !3, line: 226, baseType: !322, size: 32)
!964 = !DILocation(line: 0, scope: !954, inlinedAt: !965)
!965 = distinct !DILocation(line: 611, column: 19, scope: !919, inlinedAt: !924)
!966 = !DILocation(line: 228, column: 19, scope: !954, inlinedAt: !965)
!967 = !DILocation(line: 228, column: 13, scope: !954, inlinedAt: !965)
!968 = !DILocation(line: 229, column: 19, scope: !954, inlinedAt: !965)
!969 = !DILocation(line: 229, column: 13, scope: !954, inlinedAt: !965)
!970 = !DILocation(line: 230, column: 19, scope: !954, inlinedAt: !965)
!971 = !DILocation(line: 230, column: 13, scope: !954, inlinedAt: !965)
!972 = !DILocation(line: 231, column: 19, scope: !954, inlinedAt: !965)
!973 = !DILocation(line: 231, column: 13, scope: !954, inlinedAt: !965)
!974 = !DILocation(line: 233, column: 1, scope: !954, inlinedAt: !965)
!975 = !DILocation(line: 611, column: 17, scope: !919, inlinedAt: !924)
!976 = !DILocation(line: 612, column: 30, scope: !977, inlinedAt: !924)
!977 = distinct !DILexicalBlock(scope: !919, file: !3, line: 612, column: 7)
!978 = !DILocation(line: 612, column: 7, scope: !919, inlinedAt: !924)
!979 = !DILocation(line: 614, column: 14, scope: !980, inlinedAt: !924)
!980 = distinct !DILexicalBlock(scope: !977, file: !3, line: 613, column: 3)
!981 = !DILocation(line: 614, column: 5, scope: !980, inlinedAt: !924)
!982 = !DILocation(line: 634, column: 7, scope: !846, inlinedAt: !854)
!983 = !DILocation(line: 617, column: 27, scope: !919, inlinedAt: !924)
!984 = !DILocation(line: 617, column: 9, scope: !919, inlinedAt: !924)
!985 = !DILocalVariable(name: "t", arg: 1, scope: !986, file: !3, line: 587, type: !356)
!986 = distinct !DISubprogram(name: "readImageFileDirectory", scope: !3, file: !3, line: 587, type: !920, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !987)
!987 = !{!985, !988, !989}
!988 = !DILocalVariable(name: "i", scope: !986, file: !3, line: 589, type: !322)
!989 = !DILocalVariable(name: "nEntries", scope: !986, file: !3, line: 590, type: !322)
!990 = !DILocation(line: 0, scope: !986, inlinedAt: !991)
!991 = distinct !DILocation(line: 636, column: 7, scope: !992, inlinedAt: !854)
!992 = distinct !DILexicalBlock(scope: !846, file: !3, line: 636, column: 7)
!993 = !DILocation(line: 590, column: 21, scope: !986, inlinedAt: !991)
!994 = !DILocation(line: 592, column: 15, scope: !995, inlinedAt: !991)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 592, column: 3)
!996 = distinct !DILexicalBlock(scope: !986, file: !3, line: 592, column: 3)
!997 = !DILocation(line: 592, column: 3, scope: !996, inlinedAt: !991)
!998 = !DILocalVariable(name: "t", arg: 1, scope: !999, file: !3, line: 325, type: !356)
!999 = distinct !DISubprogram(name: "readDirectoryEntry", scope: !3, file: !3, line: 325, type: !920, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !1000)
!1000 = !{!998, !1001, !1002, !1003, !1004}
!1001 = !DILocalVariable(name: "tag", scope: !999, file: !3, line: 327, type: !322)
!1002 = !DILocalVariable(name: "type", scope: !999, file: !3, line: 328, type: !161)
!1003 = !DILocalVariable(name: "count", scope: !999, file: !3, line: 329, type: !322)
!1004 = !DILocalVariable(name: "offset", scope: !999, file: !3, line: 330, type: !322)
!1005 = !DILocation(line: 0, scope: !999, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 594, column: 5, scope: !1007, inlinedAt: !991)
!1007 = distinct !DILexicalBlock(scope: !995, file: !3, line: 593, column: 3)
!1008 = !DILocation(line: 327, column: 24, scope: !999, inlinedAt: !1006)
!1009 = !DILocation(line: 327, column: 21, scope: !999, inlinedAt: !1006)
!1010 = !DILocation(line: 328, column: 35, scope: !999, inlinedAt: !1006)
!1011 = !DILocation(line: 328, column: 32, scope: !999, inlinedAt: !1006)
!1012 = !DILocation(line: 329, column: 24, scope: !999, inlinedAt: !1006)
!1013 = !DILocation(line: 329, column: 21, scope: !999, inlinedAt: !1006)
!1014 = !DILocation(line: 330, column: 24, scope: !999, inlinedAt: !1006)
!1015 = !DILocation(line: 330, column: 21, scope: !999, inlinedAt: !1006)
!1016 = !DILocation(line: 332, column: 3, scope: !999, inlinedAt: !1006)
!1017 = !DILocation(line: 337, column: 19, scope: !1018, inlinedAt: !1006)
!1018 = distinct !DILexicalBlock(scope: !999, file: !3, line: 333, column: 3)
!1019 = !DILocation(line: 338, column: 5, scope: !1018, inlinedAt: !1006)
!1020 = !DILocation(line: 342, column: 20, scope: !1018, inlinedAt: !1006)
!1021 = !DILocation(line: 343, column: 16, scope: !1022, inlinedAt: !1006)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 343, column: 9)
!1023 = !DILocation(line: 343, column: 9, scope: !1018, inlinedAt: !1006)
!1024 = !DILocation(line: 345, column: 16, scope: !1025, inlinedAt: !1006)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 344, column: 5)
!1026 = !DILocation(line: 345, column: 7, scope: !1025, inlinedAt: !1006)
!1027 = !DILocation(line: 346, column: 7, scope: !1025, inlinedAt: !1006)
!1028 = !DILocation(line: 350, column: 15, scope: !1029, inlinedAt: !1006)
!1029 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 350, column: 9)
!1030 = !DILocation(line: 350, column: 9, scope: !1018, inlinedAt: !1006)
!1031 = !DILocation(line: 352, column: 16, scope: !1032, inlinedAt: !1006)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 351, column: 5)
!1033 = !DILocation(line: 352, column: 7, scope: !1032, inlinedAt: !1006)
!1034 = !DILocation(line: 353, column: 7, scope: !1032, inlinedAt: !1006)
!1035 = !DILocation(line: 355, column: 5, scope: !1018, inlinedAt: !1006)
!1036 = !DILocation(line: 357, column: 9, scope: !1037, inlinedAt: !1006)
!1037 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 357, column: 9)
!1038 = !DILocation(line: 357, column: 32, scope: !1037, inlinedAt: !1006)
!1039 = !DILocation(line: 357, column: 29, scope: !1037, inlinedAt: !1006)
!1040 = !DILocation(line: 357, column: 52, scope: !1037, inlinedAt: !1006)
!1041 = !DILocation(line: 359, column: 16, scope: !1042, inlinedAt: !1006)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 358, column: 5)
!1043 = !DILocation(line: 359, column: 7, scope: !1042, inlinedAt: !1006)
!1044 = !DILocation(line: 360, column: 7, scope: !1042, inlinedAt: !1006)
!1045 = !DILocation(line: 362, column: 34, scope: !1046, inlinedAt: !1006)
!1046 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 362, column: 9)
!1047 = !DILocation(line: 364, column: 16, scope: !1048, inlinedAt: !1006)
!1048 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 363, column: 5)
!1049 = !DILocation(line: 364, column: 7, scope: !1048, inlinedAt: !1006)
!1050 = !DILocation(line: 365, column: 7, scope: !1048, inlinedAt: !1006)
!1051 = !DILocation(line: 371, column: 16, scope: !1052, inlinedAt: !1006)
!1052 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 371, column: 9)
!1053 = !DILocation(line: 371, column: 9, scope: !1018, inlinedAt: !1006)
!1054 = !DILocation(line: 373, column: 16, scope: !1055, inlinedAt: !1006)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 372, column: 5)
!1056 = !DILocation(line: 373, column: 7, scope: !1055, inlinedAt: !1006)
!1057 = !DILocation(line: 374, column: 7, scope: !1055, inlinedAt: !1006)
!1058 = !DILocation(line: 384, column: 5, scope: !1018, inlinedAt: !1006)
!1059 = !DILocation(line: 385, column: 16, scope: !1018, inlinedAt: !1006)
!1060 = !DILocation(line: 386, column: 5, scope: !1018, inlinedAt: !1006)
!1061 = !DILocation(line: 390, column: 22, scope: !1018, inlinedAt: !1006)
!1062 = !DILocation(line: 390, column: 20, scope: !1018, inlinedAt: !1006)
!1063 = !DILocation(line: 391, column: 9, scope: !1064, inlinedAt: !1006)
!1064 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 391, column: 9)
!1065 = !DILocation(line: 391, column: 24, scope: !1064, inlinedAt: !1006)
!1066 = !DILocation(line: 391, column: 9, scope: !1018, inlinedAt: !1006)
!1067 = !DILocation(line: 393, column: 16, scope: !1068, inlinedAt: !1006)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 392, column: 5)
!1069 = !DILocation(line: 393, column: 7, scope: !1068, inlinedAt: !1006)
!1070 = !DILocation(line: 394, column: 7, scope: !1068, inlinedAt: !1006)
!1071 = !DILocation(line: 405, column: 21, scope: !1018, inlinedAt: !1006)
!1072 = !DILocation(line: 406, column: 5, scope: !1018, inlinedAt: !1006)
!1073 = !DILocation(line: 409, column: 5, scope: !1018, inlinedAt: !1006)
!1074 = !DILocation(line: 410, column: 5, scope: !1018, inlinedAt: !1006)
!1075 = !DILocation(line: 413, column: 5, scope: !1018, inlinedAt: !1006)
!1076 = !DILocation(line: 415, column: 5, scope: !1018, inlinedAt: !1006)
!1077 = !DILocation(line: 418, column: 5, scope: !1018, inlinedAt: !1006)
!1078 = !DILocation(line: 420, column: 5, scope: !1018, inlinedAt: !1006)
!1079 = !DILocation(line: 592, column: 27, scope: !995, inlinedAt: !991)
!1080 = distinct !{!1080, !997, !1081}
!1081 = !DILocation(line: 595, column: 3, scope: !996, inlinedAt: !991)
!1082 = !DILocalVariable(name: "t", arg: 1, scope: !1083, file: !3, line: 533, type: !356)
!1083 = distinct !DISubprogram(name: "readImageData", scope: !3, file: !3, line: 533, type: !920, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !1084)
!1084 = !{!1082, !1085, !1086, !1087, !1088, !1089, !1090, !1091}
!1085 = !DILocalVariable(name: "i", scope: !1083, file: !3, line: 535, type: !6)
!1086 = !DILocalVariable(name: "j", scope: !1083, file: !3, line: 535, type: !6)
!1087 = !DILocalVariable(name: "n", scope: !1083, file: !3, line: 535, type: !6)
!1088 = !DILocalVariable(name: "mp", scope: !1083, file: !3, line: 536, type: !160)
!1089 = !DILocalVariable(name: "s", scope: !1083, file: !3, line: 536, type: !160)
!1090 = !DILocalVariable(name: "p", scope: !1083, file: !3, line: 537, type: !155)
!1091 = !DILocalVariable(name: "size", scope: !1083, file: !3, line: 538, type: !322)
!1092 = !DILocation(line: 0, scope: !1083, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 638, column: 7, scope: !1094, inlinedAt: !854)
!1094 = distinct !DILexicalBlock(scope: !846, file: !3, line: 638, column: 7)
!1095 = !DILocation(line: 542, column: 13, scope: !1083, inlinedAt: !1093)
!1096 = !DILocation(line: 542, column: 29, scope: !1083, inlinedAt: !1093)
!1097 = !DILocation(line: 542, column: 24, scope: !1083, inlinedAt: !1093)
!1098 = !DILocation(line: 542, column: 45, scope: !1083, inlinedAt: !1093)
!1099 = !DILocation(line: 543, column: 35, scope: !1083, inlinedAt: !1093)
!1100 = !DILocation(line: 543, column: 40, scope: !1083, inlinedAt: !1093)
!1101 = !DILocation(line: 543, column: 23, scope: !1083, inlinedAt: !1093)
!1102 = !DILocation(line: 543, column: 10, scope: !1083, inlinedAt: !1093)
!1103 = !DILocation(line: 544, column: 14, scope: !1104, inlinedAt: !1093)
!1104 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 544, column: 7)
!1105 = !DILocation(line: 544, column: 7, scope: !1083, inlinedAt: !1093)
!1106 = !DILocation(line: 547, column: 11, scope: !1083, inlinedAt: !1093)
!1107 = !DILocation(line: 547, column: 3, scope: !1083, inlinedAt: !1093)
!1108 = !DILocation(line: 551, column: 22, scope: !1109, inlinedAt: !1093)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 551, column: 5)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 551, column: 5)
!1111 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 548, column: 3)
!1112 = !DILocation(line: 551, column: 17, scope: !1109, inlinedAt: !1093)
!1113 = !DILocation(line: 551, column: 5, scope: !1110, inlinedAt: !1093)
!1114 = !DILocation(line: 553, column: 11, scope: !1115, inlinedAt: !1093)
!1115 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 552, column: 5)
!1116 = !DILocation(line: 555, column: 19, scope: !1117, inlinedAt: !1093)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 555, column: 7)
!1118 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 555, column: 7)
!1119 = !DILocation(line: 555, column: 7, scope: !1118, inlinedAt: !1093)
!1120 = !DILocation(line: 554, column: 14, scope: !1115, inlinedAt: !1093)
!1121 = !DILocation(line: 554, column: 29, scope: !1115, inlinedAt: !1093)
!1122 = !DILocation(line: 554, column: 27, scope: !1115, inlinedAt: !1093)
!1123 = !DILocation(line: 557, column: 16, scope: !1124, inlinedAt: !1093)
!1124 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 556, column: 7)
!1125 = !{!1126}
!1126 = distinct !{!1126, !1127}
!1127 = distinct !{!1127, !"LVerDomain"}
!1128 = !DILocation(line: 557, column: 14, scope: !1124, inlinedAt: !1093)
!1129 = !{!1130}
!1130 = distinct !{!1130, !1127}
!1131 = distinct !{!1131, !1119, !1132, !1133, !1134}
!1132 = !DILocation(line: 558, column: 7, scope: !1118, inlinedAt: !1093)
!1133 = !{!"llvm.loop.isvectorized", i32 1}
!1134 = !{!"llvm.loop.unroll.runtime.disable"}
!1135 = !DILocation(line: 557, column: 18, scope: !1124, inlinedAt: !1093)
!1136 = !DILocation(line: 557, column: 11, scope: !1124, inlinedAt: !1093)
!1137 = !DILocation(line: 555, column: 24, scope: !1117, inlinedAt: !1093)
!1138 = distinct !{!1138, !1139}
!1139 = !{!"llvm.loop.unroll.disable"}
!1140 = distinct !{!1140, !1119, !1132, !1133}
!1141 = !DILocation(line: 551, column: 31, scope: !1109, inlinedAt: !1093)
!1142 = !DILocation(line: 0, scope: !1111, inlinedAt: !1093)
!1143 = distinct !{!1143, !1113, !1144}
!1144 = !DILocation(line: 559, column: 5, scope: !1110, inlinedAt: !1093)
!1145 = !DILocation(line: 562, column: 13, scope: !1111, inlinedAt: !1093)
!1146 = !DILocation(line: 564, column: 22, scope: !1147, inlinedAt: !1093)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 564, column: 5)
!1148 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 564, column: 5)
!1149 = !DILocation(line: 564, column: 17, scope: !1147, inlinedAt: !1093)
!1150 = !DILocation(line: 564, column: 5, scope: !1148, inlinedAt: !1093)
!1151 = !DILocation(line: 566, column: 11, scope: !1152, inlinedAt: !1093)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 565, column: 5)
!1153 = !DILocation(line: 566, column: 33, scope: !1152, inlinedAt: !1093)
!1154 = !DILocation(line: 567, column: 18, scope: !1152, inlinedAt: !1093)
!1155 = !DILocation(line: 567, column: 33, scope: !1152, inlinedAt: !1093)
!1156 = !DILocation(line: 567, column: 31, scope: !1152, inlinedAt: !1093)
!1157 = !DILocation(line: 567, column: 13, scope: !1152, inlinedAt: !1093)
!1158 = !DILocation(line: 568, column: 19, scope: !1159, inlinedAt: !1093)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 568, column: 7)
!1160 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 568, column: 7)
!1161 = !DILocation(line: 568, column: 7, scope: !1160, inlinedAt: !1093)
!1162 = !DILocation(line: 0, scope: !927, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 570, column: 25, scope: !1164, inlinedAt: !1093)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 569, column: 7)
!1165 = !DILocation(line: 209, column: 19, scope: !927, inlinedAt: !1163)
!1166 = !DILocation(line: 209, column: 13, scope: !927, inlinedAt: !1163)
!1167 = !DILocation(line: 210, column: 19, scope: !927, inlinedAt: !1163)
!1168 = !DILocation(line: 210, column: 13, scope: !927, inlinedAt: !1163)
!1169 = !DILocation(line: 211, column: 10, scope: !927, inlinedAt: !1163)
!1170 = !DILocation(line: 570, column: 11, scope: !1164, inlinedAt: !1093)
!1171 = !DILocation(line: 570, column: 14, scope: !1164, inlinedAt: !1093)
!1172 = distinct !{!1172, !1161, !1173}
!1173 = !DILocation(line: 571, column: 7, scope: !1160, inlinedAt: !1093)
!1174 = !DILocation(line: 564, column: 31, scope: !1147, inlinedAt: !1093)
!1175 = distinct !{!1175, !1150, !1176}
!1176 = !DILocation(line: 572, column: 5, scope: !1148, inlinedAt: !1093)
!1177 = !DILocation(line: 573, column: 11, scope: !1111, inlinedAt: !1093)
!1178 = !DILocation(line: 574, column: 5, scope: !1111, inlinedAt: !1093)
!1179 = !DILocation(line: 643, column: 10, scope: !1180, inlinedAt: !854)
!1180 = distinct !DILexicalBlock(scope: !846, file: !3, line: 643, column: 7)
!1181 = !DILocation(line: 643, column: 7, scope: !1180, inlinedAt: !854)
!1182 = !DILocation(line: 643, column: 24, scope: !1180, inlinedAt: !854)
!1183 = !DILocation(line: 643, column: 65, scope: !846, inlinedAt: !854)
!1184 = !DILocation(line: 644, column: 10, scope: !1185, inlinedAt: !854)
!1185 = distinct !DILexicalBlock(scope: !846, file: !3, line: 644, column: 7)
!1186 = !DILocation(line: 644, column: 7, scope: !1185, inlinedAt: !854)
!1187 = !DILocation(line: 644, column: 7, scope: !846, inlinedAt: !854)
!1188 = !DILocation(line: 644, column: 24, scope: !1185, inlinedAt: !854)
!1189 = !DILocation(line: 644, column: 56, scope: !846, inlinedAt: !854)
!1190 = !DILocation(line: 1062, column: 7, scope: !2)
!1191 = !DILocation(line: 1067, column: 15, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1067, column: 7)
!1193 = !DILocation(line: 1067, column: 27, scope: !1192)
!1194 = !DILocation(line: 1067, column: 7, scope: !2)
!1195 = !DILocation(line: 1069, column: 14, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1068, column: 3)
!1197 = !DILocation(line: 1069, column: 5, scope: !1196)
!1198 = !DILocation(line: 1070, column: 5, scope: !1196)
!1199 = !DILocation(line: 1072, column: 15, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1072, column: 7)
!1201 = !DILocation(line: 1072, column: 26, scope: !1200)
!1202 = !DILocation(line: 1072, column: 7, scope: !2)
!1203 = !DILocation(line: 1074, column: 14, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 1073, column: 3)
!1205 = !DILocation(line: 1074, column: 5, scope: !1204)
!1206 = !DILocation(line: 1075, column: 5, scope: !1204)
!1207 = !DILocation(line: 1078, column: 15, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1078, column: 7)
!1209 = !DILocation(line: 1078, column: 42, scope: !1208)
!1210 = !DILocation(line: 1079, column: 14, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 1078, column: 82)
!1212 = !DILocation(line: 1079, column: 5, scope: !1211)
!1213 = !DILocation(line: 1080, column: 5, scope: !1211)
!1214 = !DILocation(line: 1085, column: 11, scope: !2)
!1215 = !DILocation(line: 1086, column: 23, scope: !2)
!1216 = !DILocation(line: 1086, column: 32, scope: !2)
!1217 = !DILocation(line: 1088, column: 15, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1088, column: 7)
!1219 = !DILocation(line: 1088, column: 27, scope: !1218)
!1220 = !DILocation(line: 1088, column: 7, scope: !2)
!1221 = !DILocation(line: 1090, column: 58, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1090, column: 9)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 1089, column: 3)
!1224 = !DILocalVariable(name: "T", arg: 1, scope: !1225, file: !3, line: 655, type: !1228)
!1225 = distinct !DISubprogram(name: "RGB_YUV_initialize", scope: !3, file: !3, line: 655, type: !1226, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !1229)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!6, !1228, !154, !6, !151}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!1229 = !{!1224, !1230, !1231, !1232, !1233, !1234}
!1230 = !DILocalVariable(name: "videoCode", arg: 2, scope: !1225, file: !3, line: 656, type: !154)
!1231 = !DILocalVariable(name: "stdRange", arg: 3, scope: !1225, file: !3, line: 657, type: !6)
!1232 = !DILocalVariable(name: "pixMax", arg: 4, scope: !1225, file: !3, line: 658, type: !151)
!1233 = !DILocalVariable(name: "i", scope: !1225, file: !3, line: 661, type: !6)
!1234 = !DILocalVariable(name: "pixScale", scope: !1225, file: !3, line: 661, type: !6)
!1235 = !DILocation(line: 0, scope: !1225, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 1090, column: 9, scope: !1222)
!1237 = !DILocation(line: 663, column: 3, scope: !1225, inlinedAt: !1236)
!1238 = !DILocation(line: 669, column: 16, scope: !1239, inlinedAt: !1236)
!1239 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 664, column: 3)
!1240 = !DILocation(line: 669, column: 7, scope: !1239, inlinedAt: !1236)
!1241 = !DILocation(line: 670, column: 7, scope: !1239, inlinedAt: !1236)
!1242 = !DILocation(line: 1090, column: 76, scope: !1222)
!1243 = !DILocation(line: 678, column: 7, scope: !1244, inlinedAt: !1236)
!1244 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 678, column: 7)
!1245 = !DILocation(line: 678, column: 7, scope: !1225, inlinedAt: !1236)
!1246 = !DILocation(line: 693, column: 24, scope: !1225, inlinedAt: !1236)
!1247 = !DILocation(line: 693, column: 58, scope: !1225, inlinedAt: !1236)
!1248 = !DILocation(line: 693, column: 63, scope: !1225, inlinedAt: !1236)
!1249 = !DILocation(line: 693, column: 45, scope: !1225, inlinedAt: !1236)
!1250 = !DILocation(line: 694, column: 23, scope: !1225, inlinedAt: !1236)
!1251 = !DILocation(line: 694, column: 27, scope: !1225, inlinedAt: !1236)
!1252 = !DILocation(line: 694, column: 29, scope: !1225, inlinedAt: !1236)
!1253 = !DILocation(line: 694, column: 11, scope: !1225, inlinedAt: !1236)
!1254 = !DILocation(line: 694, column: 63, scope: !1225, inlinedAt: !1236)
!1255 = !DILocation(line: 695, column: 61, scope: !1225, inlinedAt: !1236)
!1256 = !DILocation(line: 694, column: 57, scope: !1225, inlinedAt: !1236)
!1257 = !DILocation(line: 694, column: 45, scope: !1225, inlinedAt: !1236)
!1258 = !DILocation(line: 695, column: 63, scope: !1225, inlinedAt: !1236)
!1259 = !DILocation(line: 695, column: 45, scope: !1225, inlinedAt: !1236)
!1260 = !DILocation(line: 697, column: 28, scope: !1225, inlinedAt: !1236)
!1261 = !DILocation(line: 697, column: 7, scope: !1225, inlinedAt: !1236)
!1262 = !DILocation(line: 698, column: 12, scope: !1263, inlinedAt: !1236)
!1263 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 698, column: 7)
!1264 = !DILocation(line: 698, column: 18, scope: !1263, inlinedAt: !1236)
!1265 = !DILocation(line: 698, column: 25, scope: !1263, inlinedAt: !1236)
!1266 = !DILocation(line: 698, column: 7, scope: !1225, inlinedAt: !1236)
!1267 = !DILocation(line: 700, column: 14, scope: !1268, inlinedAt: !1236)
!1268 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 699, column: 3)
!1269 = !DILocation(line: 700, column: 5, scope: !1268, inlinedAt: !1236)
!1270 = !DILocation(line: 701, column: 5, scope: !1268, inlinedAt: !1236)
!1271 = !DILocation(line: 703, column: 12, scope: !1272, inlinedAt: !1236)
!1272 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 703, column: 7)
!1273 = !DILocation(line: 703, column: 18, scope: !1272, inlinedAt: !1236)
!1274 = !DILocation(line: 703, column: 7, scope: !1225, inlinedAt: !1236)
!1275 = !DILocation(line: 705, column: 14, scope: !1276, inlinedAt: !1236)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 704, column: 3)
!1277 = !DILocation(line: 705, column: 5, scope: !1276, inlinedAt: !1236)
!1278 = !DILocation(line: 706, column: 5, scope: !1276, inlinedAt: !1236)
!1279 = !DILocation(line: 708, column: 12, scope: !1280, inlinedAt: !1236)
!1280 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 708, column: 7)
!1281 = !DILocation(line: 708, column: 18, scope: !1280, inlinedAt: !1236)
!1282 = !DILocation(line: 708, column: 7, scope: !1225, inlinedAt: !1236)
!1283 = !DILocation(line: 710, column: 14, scope: !1284, inlinedAt: !1236)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 709, column: 3)
!1285 = !DILocation(line: 710, column: 5, scope: !1284, inlinedAt: !1236)
!1286 = !DILocation(line: 711, column: 5, scope: !1284, inlinedAt: !1236)
!1287 = !DILocation(line: 1092, column: 43, scope: !1223)
!1288 = !DILocation(line: 1092, column: 50, scope: !1223)
!1289 = !DILocalVariable(name: "T", arg: 1, scope: !1290, file: !3, line: 724, type: !1228)
!1290 = distinct !DISubprogram(name: "RGB_YUV_rgb_to_yuv", scope: !3, file: !3, line: 724, type: !1291, scopeLine: 736, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !1293)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !1228, !155, !155, !155, !6, !6, !6, !155, !155, !155, !6}
!1293 = !{!1289, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1294 = !DILocalVariable(name: "rp", arg: 2, scope: !1290, file: !3, line: 725, type: !155)
!1295 = !DILocalVariable(name: "gp", arg: 3, scope: !1290, file: !3, line: 726, type: !155)
!1296 = !DILocalVariable(name: "bp", arg: 4, scope: !1290, file: !3, line: 727, type: !155)
!1297 = !DILocalVariable(name: "xres", arg: 5, scope: !1290, file: !3, line: 728, type: !6)
!1298 = !DILocalVariable(name: "yres", arg: 6, scope: !1290, file: !3, line: 729, type: !6)
!1299 = !DILocalVariable(name: "rgb_stride", arg: 7, scope: !1290, file: !3, line: 730, type: !6)
!1300 = !DILocalVariable(name: "yp", arg: 8, scope: !1290, file: !3, line: 731, type: !155)
!1301 = !DILocalVariable(name: "up", arg: 9, scope: !1290, file: !3, line: 732, type: !155)
!1302 = !DILocalVariable(name: "vp", arg: 10, scope: !1290, file: !3, line: 733, type: !155)
!1303 = !DILocalVariable(name: "yuv_stride", arg: 11, scope: !1290, file: !3, line: 734, type: !6)
!1304 = !DILocalVariable(name: "i", scope: !1290, file: !3, line: 737, type: !6)
!1305 = !DILocalVariable(name: "count", scope: !1290, file: !3, line: 738, type: !6)
!1306 = !DILocation(line: 0, scope: !1290, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 1092, column: 5, scope: !1223)
!1308 = !DILocation(line: 0, scope: !1309, inlinedAt: !1307)
!1309 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 740, column: 7)
!1310 = !DILocation(line: 740, column: 7, scope: !1290, inlinedAt: !1307)
!1311 = !DILocation(line: 742, column: 5, scope: !1312, inlinedAt: !1307)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 742, column: 5)
!1313 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 741, column: 3)
!1314 = !DILocation(line: 744, column: 20, scope: !1315, inlinedAt: !1307)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 743, column: 5)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 742, column: 5)
!1317 = !DILocation(line: 744, column: 14, scope: !1315, inlinedAt: !1307)
!1318 = !DILocation(line: 745, column: 20, scope: !1315, inlinedAt: !1307)
!1319 = !DILocation(line: 745, column: 14, scope: !1315, inlinedAt: !1307)
!1320 = !DILocation(line: 746, column: 20, scope: !1315, inlinedAt: !1307)
!1321 = !DILocation(line: 746, column: 14, scope: !1315, inlinedAt: !1307)
!1322 = !DILocation(line: 748, column: 28, scope: !1315, inlinedAt: !1307)
!1323 = !DILocation(line: 748, column: 41, scope: !1315, inlinedAt: !1307)
!1324 = !DILocation(line: 748, column: 54, scope: !1315, inlinedAt: !1307)
!1325 = !DILocation(line: 748, column: 34, scope: !1315, inlinedAt: !1307)
!1326 = !DILocation(line: 748, column: 47, scope: !1315, inlinedAt: !1307)
!1327 = !DILocation(line: 748, column: 60, scope: !1315, inlinedAt: !1307)
!1328 = !DILocation(line: 748, column: 72, scope: !1315, inlinedAt: !1307)
!1329 = !DILocation(line: 748, column: 13, scope: !1315, inlinedAt: !1307)
!1330 = !DILocation(line: 748, column: 11, scope: !1315, inlinedAt: !1307)
!1331 = !DILocation(line: 749, column: 28, scope: !1315, inlinedAt: !1307)
!1332 = !DILocation(line: 749, column: 41, scope: !1315, inlinedAt: !1307)
!1333 = !DILocation(line: 749, column: 54, scope: !1315, inlinedAt: !1307)
!1334 = !DILocation(line: 749, column: 34, scope: !1315, inlinedAt: !1307)
!1335 = !DILocation(line: 749, column: 47, scope: !1315, inlinedAt: !1307)
!1336 = !DILocation(line: 749, column: 60, scope: !1315, inlinedAt: !1307)
!1337 = !DILocation(line: 749, column: 72, scope: !1315, inlinedAt: !1307)
!1338 = !DILocation(line: 749, column: 13, scope: !1315, inlinedAt: !1307)
!1339 = !DILocation(line: 749, column: 11, scope: !1315, inlinedAt: !1307)
!1340 = !DILocation(line: 750, column: 28, scope: !1315, inlinedAt: !1307)
!1341 = !DILocation(line: 750, column: 41, scope: !1315, inlinedAt: !1307)
!1342 = !DILocation(line: 750, column: 54, scope: !1315, inlinedAt: !1307)
!1343 = !DILocation(line: 750, column: 34, scope: !1315, inlinedAt: !1307)
!1344 = !DILocation(line: 750, column: 47, scope: !1315, inlinedAt: !1307)
!1345 = !DILocation(line: 750, column: 60, scope: !1315, inlinedAt: !1307)
!1346 = !DILocation(line: 750, column: 72, scope: !1315, inlinedAt: !1307)
!1347 = !DILocation(line: 750, column: 13, scope: !1315, inlinedAt: !1307)
!1348 = !DILocation(line: 750, column: 11, scope: !1315, inlinedAt: !1307)
!1349 = distinct !{!1349, !1311, !1350, !1133, !1134}
!1350 = !DILocation(line: 751, column: 5, scope: !1312, inlinedAt: !1307)
!1351 = !DILocation(line: 755, column: 5, scope: !1352, inlinedAt: !1307)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 755, column: 5)
!1353 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 754, column: 3)
!1354 = !DILocation(line: 757, column: 20, scope: !1355, inlinedAt: !1307)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 756, column: 5)
!1356 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 755, column: 5)
!1357 = !DILocation(line: 757, column: 14, scope: !1355, inlinedAt: !1307)
!1358 = !DILocation(line: 758, column: 14, scope: !1355, inlinedAt: !1307)
!1359 = !DILocation(line: 759, column: 14, scope: !1355, inlinedAt: !1307)
!1360 = !DILocation(line: 763, column: 20, scope: !1355, inlinedAt: !1307)
!1361 = !DILocation(line: 763, column: 33, scope: !1355, inlinedAt: !1307)
!1362 = !DILocation(line: 763, column: 46, scope: !1355, inlinedAt: !1307)
!1363 = !DILocation(line: 763, column: 26, scope: !1355, inlinedAt: !1307)
!1364 = !DILocation(line: 763, column: 39, scope: !1355, inlinedAt: !1307)
!1365 = !DILocation(line: 763, column: 52, scope: !1355, inlinedAt: !1307)
!1366 = !DILocation(line: 763, column: 64, scope: !1355, inlinedAt: !1307)
!1367 = !DILocation(line: 764, column: 16, scope: !1368, inlinedAt: !1307)
!1368 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 764, column: 11)
!1369 = !DILocation(line: 764, column: 11, scope: !1355, inlinedAt: !1307)
!1370 = !DILocation(line: 768, column: 13, scope: !1355, inlinedAt: !1307)
!1371 = !DILocation(line: 770, column: 20, scope: !1355, inlinedAt: !1307)
!1372 = !DILocation(line: 770, column: 33, scope: !1355, inlinedAt: !1307)
!1373 = !DILocation(line: 770, column: 46, scope: !1355, inlinedAt: !1307)
!1374 = !DILocation(line: 770, column: 26, scope: !1355, inlinedAt: !1307)
!1375 = !DILocation(line: 770, column: 39, scope: !1355, inlinedAt: !1307)
!1376 = !DILocation(line: 770, column: 52, scope: !1355, inlinedAt: !1307)
!1377 = !DILocation(line: 770, column: 64, scope: !1355, inlinedAt: !1307)
!1378 = !DILocation(line: 771, column: 16, scope: !1379, inlinedAt: !1307)
!1379 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 771, column: 11)
!1380 = !DILocation(line: 771, column: 11, scope: !1355, inlinedAt: !1307)
!1381 = !DILocation(line: 775, column: 13, scope: !1355, inlinedAt: !1307)
!1382 = !DILocation(line: 777, column: 20, scope: !1355, inlinedAt: !1307)
!1383 = !DILocation(line: 777, column: 33, scope: !1355, inlinedAt: !1307)
!1384 = !DILocation(line: 777, column: 46, scope: !1355, inlinedAt: !1307)
!1385 = !DILocation(line: 777, column: 26, scope: !1355, inlinedAt: !1307)
!1386 = !DILocation(line: 777, column: 39, scope: !1355, inlinedAt: !1307)
!1387 = !DILocation(line: 777, column: 52, scope: !1355, inlinedAt: !1307)
!1388 = !DILocation(line: 777, column: 64, scope: !1355, inlinedAt: !1307)
!1389 = !DILocation(line: 778, column: 16, scope: !1390, inlinedAt: !1307)
!1390 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 778, column: 11)
!1391 = !DILocation(line: 778, column: 11, scope: !1355, inlinedAt: !1307)
!1392 = !DILocation(line: 782, column: 13, scope: !1355, inlinedAt: !1307)
!1393 = !DILocation(line: 782, column: 11, scope: !1355, inlinedAt: !1307)
!1394 = distinct !{!1394, !1351, !1395, !1133, !1134}
!1395 = !DILocation(line: 783, column: 5, scope: !1352, inlinedAt: !1307)
!1396 = !DILocation(line: 744, column: 29, scope: !1315, inlinedAt: !1307)
!1397 = !DILocation(line: 745, column: 29, scope: !1315, inlinedAt: !1307)
!1398 = !DILocation(line: 750, column: 95, scope: !1315, inlinedAt: !1307)
!1399 = !DILocation(line: 742, column: 26, scope: !1316, inlinedAt: !1307)
!1400 = !DILocation(line: 742, column: 17, scope: !1316, inlinedAt: !1307)
!1401 = distinct !{!1401, !1311, !1350, !1133}
!1402 = !DILocation(line: 757, column: 29, scope: !1355, inlinedAt: !1307)
!1403 = !DILocation(line: 758, column: 20, scope: !1355, inlinedAt: !1307)
!1404 = !DILocation(line: 758, column: 29, scope: !1355, inlinedAt: !1307)
!1405 = !DILocation(line: 759, column: 20, scope: !1355, inlinedAt: !1307)
!1406 = !DILocation(line: 782, column: 32, scope: !1355, inlinedAt: !1307)
!1407 = !DILocation(line: 768, column: 11, scope: !1355, inlinedAt: !1307)
!1408 = !DILocation(line: 775, column: 11, scope: !1355, inlinedAt: !1307)
!1409 = !DILocation(line: 755, column: 26, scope: !1356, inlinedAt: !1307)
!1410 = !DILocation(line: 755, column: 17, scope: !1356, inlinedAt: !1307)
!1411 = distinct !{!1411, !1351, !1395, !1134, !1133}
!1412 = !DILocation(line: 1093, column: 21, scope: !1223)
!1413 = !DILocation(line: 1093, column: 5, scope: !1223)
!1414 = !DILocation(line: 1097, column: 40, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1094, column: 5)
!1416 = !DILocation(line: 1098, column: 38, scope: !1415)
!1417 = !DILocation(line: 1098, column: 50, scope: !1415)
!1418 = !DILocation(line: 1098, column: 30, scope: !1415)
!1419 = !DILocation(line: 1099, column: 15, scope: !1415)
!1420 = !DILocation(line: 1100, column: 32, scope: !1415)
!1421 = !DILocation(line: 1100, column: 15, scope: !1415)
!1422 = !DILocation(line: 1103, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 1103, column: 7)
!1424 = !DILocation(line: 1103, column: 19, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1103, column: 7)
!1426 = !DILocation(line: 1103, column: 35, scope: !1425)
!1427 = !DILocation(line: 1105, column: 17, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 1104, column: 7)
!1429 = !DILocation(line: 1105, column: 9, scope: !1428)
!1430 = !DILocation(line: 1105, column: 15, scope: !1428)
!1431 = !{!1432}
!1432 = distinct !{!1432, !1433}
!1433 = distinct !{!1433, !"LVerDomain"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1433}
!1436 = distinct !{!1436, !1422, !1437, !1133, !1134}
!1437 = !DILocation(line: 1106, column: 7, scope: !1423)
!1438 = !DILocation(line: 1105, column: 24, scope: !1428)
!1439 = distinct !{!1439, !1139}
!1440 = distinct !{!1440, !1422, !1437, !1133}
!1441 = !DILocation(line: 1108, column: 66, scope: !1415)
!1442 = !DILocation(line: 1108, column: 26, scope: !1415)
!1443 = !DILocation(line: 1110, column: 7, scope: !1415)
!1444 = !DILocation(line: 1111, column: 40, scope: !1415)
!1445 = !DILocation(line: 1111, column: 7, scope: !1415)
!1446 = !DILocation(line: 1113, column: 7, scope: !1415)
!1447 = !DILocation(line: 1114, column: 7, scope: !1415)
!1448 = !DILocation(line: 1115, column: 7, scope: !1415)
!1449 = !DILocation(line: 1117, column: 7, scope: !1415)
!1450 = !DILocation(line: 1120, column: 36, scope: !1415)
!1451 = !DILocation(line: 1121, column: 38, scope: !1415)
!1452 = !DILocation(line: 1121, column: 50, scope: !1415)
!1453 = !DILocation(line: 1121, column: 30, scope: !1415)
!1454 = !DILocation(line: 1122, column: 15, scope: !1415)
!1455 = !DILocation(line: 1123, column: 29, scope: !1415)
!1456 = !DILocation(line: 1123, column: 15, scope: !1415)
!1457 = !DILocation(line: 1126, column: 7, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 1126, column: 7)
!1459 = !DILocation(line: 1126, column: 19, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 1126, column: 7)
!1461 = !DILocation(line: 1128, column: 17, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 1127, column: 7)
!1463 = !DILocation(line: 1128, column: 9, scope: !1462)
!1464 = !DILocation(line: 1128, column: 15, scope: !1462)
!1465 = !DILocation(line: 1128, column: 24, scope: !1462)
!1466 = !DILocation(line: 1126, column: 35, scope: !1460)
!1467 = distinct !{!1467, !1139}
!1468 = !{!1469}
!1469 = distinct !{!1469, !1470}
!1470 = distinct !{!1470, !"LVerDomain"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1470}
!1473 = distinct !{!1473, !1457, !1474, !1133, !1134}
!1474 = !DILocation(line: 1129, column: 7, scope: !1458)
!1475 = !DILocation(line: 1131, column: 19, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1131, column: 7)
!1477 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 1131, column: 7)
!1478 = !DILocation(line: 1131, column: 7, scope: !1477)
!1479 = distinct !{!1479, !1457, !1474, !1133}
!1480 = !DILocation(line: 1132, column: 50, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 1131, column: 34)
!1482 = !DILocation(line: 1132, column: 56, scope: !1481)
!1483 = !DILocation(line: 1132, column: 47, scope: !1481)
!1484 = !DILocation(line: 1132, column: 87, scope: !1481)
!1485 = !DILocation(line: 1132, column: 76, scope: !1481)
!1486 = !DILocation(line: 1132, column: 9, scope: !1481)
!1487 = !DILocation(line: 1133, column: 47, scope: !1481)
!1488 = !DILocation(line: 1133, column: 76, scope: !1481)
!1489 = !DILocation(line: 1133, column: 9, scope: !1481)
!1490 = !DILocation(line: 1131, column: 29, scope: !1476)
!1491 = distinct !{!1491, !1478, !1492}
!1492 = !DILocation(line: 1134, column: 7, scope: !1477)
!1493 = !DILocation(line: 1140, column: 16, scope: !1415)
!1494 = !DILocation(line: 1140, column: 7, scope: !1415)
!1495 = !DILocation(line: 1141, column: 7, scope: !1415)
!1496 = !DILocation(line: 1145, column: 19, scope: !2)
!1497 = !DILocation(line: 1145, column: 3, scope: !2)
!1498 = !DILocation(line: 1154, column: 17, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 1154, column: 5)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 1154, column: 5)
!1501 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1146, column: 3)
!1502 = !DILocation(line: 1154, column: 5, scope: !1500)
!1503 = !DILocation(line: 1156, column: 29, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 1155, column: 5)
!1505 = !DILocation(line: 1156, column: 7, scope: !1504)
!1506 = !DILocation(line: 1156, column: 27, scope: !1504)
!1507 = !DILocation(line: 1154, column: 32, scope: !1499)
!1508 = distinct !{!1508, !1139}
!1509 = distinct !{!1509, !1502, !1510, !1133, !1134}
!1510 = !DILocation(line: 1157, column: 5, scope: !1500)
!1511 = !DILocation(line: 1148, column: 17, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 1148, column: 5)
!1513 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 1148, column: 5)
!1514 = !DILocation(line: 1148, column: 5, scope: !1513)
!1515 = !DILocation(line: 1148, column: 32, scope: !1512)
!1516 = !DILocation(line: 1150, column: 24, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 1149, column: 5)
!1518 = !{!1519}
!1519 = distinct !{!1519, !1520}
!1520 = distinct !{!1520, !"LVerDomain"}
!1521 = !DILocation(line: 1150, column: 31, scope: !1517)
!1522 = !DILocation(line: 1150, column: 16, scope: !1517)
!1523 = !DILocation(line: 1150, column: 7, scope: !1517)
!1524 = !DILocation(line: 1150, column: 14, scope: !1517)
!1525 = !{!1526}
!1526 = distinct !{!1526, !1520}
!1527 = distinct !{!1527, !1514, !1528, !1133, !1134}
!1528 = !DILocation(line: 1151, column: 5, scope: !1513)
!1529 = distinct !{!1529, !1139}
!1530 = distinct !{!1530, !1514, !1528, !1133}
!1531 = distinct !{!1531, !1502, !1510, !1133}
!1532 = !DILocation(line: 1164, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1164, column: 7)
!1534 = !DILocation(line: 1164, column: 7, scope: !2)
!1535 = !DILocation(line: 1164, column: 13, scope: !1533)
!1536 = !DILocation(line: 1160, column: 14, scope: !1501)
!1537 = !DILocation(line: 1160, column: 5, scope: !1501)
!1538 = !DILocation(line: 1167, column: 1, scope: !2)
!1539 = !DILocation(line: 1169, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1169, column: 7)
!1541 = !DILocation(line: 1169, column: 7, scope: !2)
!1542 = !DILocation(line: 1169, column: 13, scope: !1540)
!1543 = !DILocation(line: 1170, column: 3, scope: !2)
!1544 = !DILocation(line: 1172, column: 3, scope: !2)
!1545 = !DILocation(line: 1173, column: 1, scope: !2)
!1546 = !DISubprogram(name: "fprintf", scope: !1547, file: !1547, line: 350, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1547 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!6, !1550, !1607, null}
!1550 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1551)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1553, line: 7, baseType: !1554)
!1553 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1555, line: 49, size: 1728, elements: !1556)
!1555 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1572, !1574, !1575, !1576, !1579, !1580, !1581, !1585, !1588, !1590, !1593, !1596, !1597, !1598, !1602, !1603}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1554, file: !1555, line: 51, baseType: !6, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1554, file: !1555, line: 54, baseType: !849, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1554, file: !1555, line: 55, baseType: !849, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1554, file: !1555, line: 56, baseType: !849, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1554, file: !1555, line: 57, baseType: !849, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1554, file: !1555, line: 58, baseType: !849, size: 64, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1554, file: !1555, line: 59, baseType: !849, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1554, file: !1555, line: 60, baseType: !849, size: 64, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1554, file: !1555, line: 61, baseType: !849, size: 64, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1554, file: !1555, line: 64, baseType: !849, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1554, file: !1555, line: 65, baseType: !849, size: 64, offset: 640)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1554, file: !1555, line: 66, baseType: !849, size: 64, offset: 704)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1554, file: !1555, line: 68, baseType: !1570, size: 64, offset: 768)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1555, line: 36, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1554, file: !1555, line: 70, baseType: !1573, size: 64, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1554, file: !1555, line: 72, baseType: !6, size: 32, offset: 896)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1554, file: !1555, line: 73, baseType: !6, size: 32, offset: 928)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1554, file: !1555, line: 74, baseType: !1577, size: 64, offset: 960)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1578, line: 152, baseType: !159)
!1578 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1554, file: !1555, line: 77, baseType: !153, size: 16, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1554, file: !1555, line: 78, baseType: !158, size: 8, offset: 1040)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1554, file: !1555, line: 79, baseType: !1582, size: 8, offset: 1048)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !1583)
!1583 = !{!1584}
!1584 = !DISubrange(count: 1)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1554, file: !1555, line: 81, baseType: !1586, size: 64, offset: 1088)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1555, line: 43, baseType: null)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1554, file: !1555, line: 89, baseType: !1589, size: 64, offset: 1152)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1578, line: 153, baseType: !159)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1554, file: !1555, line: 91, baseType: !1591, size: 64, offset: 1216)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1555, line: 37, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1554, file: !1555, line: 92, baseType: !1594, size: 64, offset: 1280)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1555, line: 38, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1554, file: !1555, line: 93, baseType: !1573, size: 64, offset: 1344)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1554, file: !1555, line: 94, baseType: !387, size: 64, offset: 1408)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1554, file: !1555, line: 95, baseType: !1599, size: 64, offset: 1472)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1600, line: 18, baseType: !1601)
!1600 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1601 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1554, file: !1555, line: 96, baseType: !6, size: 32, offset: 1536)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1554, file: !1555, line: 98, baseType: !1604, size: 160, offset: 1568)
!1604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !1605)
!1605 = !{!1606}
!1606 = !DISubrange(count: 20)
!1607 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !860)
!1608 = !DISubprogram(name: "snprintf", scope: !1547, file: !1547, line: 378, type: !1609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!6, !1611, !1599, !1607, null}
!1611 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !849)
!1612 = !DISubprogram(name: "strcpy", scope: !1613, file: !1613, line: 141, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1613 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!849, !1611, !1607}
!1616 = !DISubprogram(name: "malloc", scope: !384, file: !384, line: 540, type: !1617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!387, !1599}
!1619 = !DISubprogram(name: "report_stats_on_error", scope: !1620, file: !1620, line: 22, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1620 = !DIFile(filename: "ldecod_src/inc/report.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "a98963f4c391ce641c06f3255ae22ee2")
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null}
!1623 = !DISubprogram(name: "open", scope: !1624, file: !1624, line: 181, type: !1625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1624 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!6, !860, !6, null}
!1627 = !DISubprogram(name: "lseek", scope: !1628, file: !1628, line: 339, type: !1629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1628 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!1577, !6, !1577, !6}
!1631 = !DISubprogram(name: "realloc", scope: !384, file: !384, line: 551, type: !1632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!387, !387, !1599}
!1634 = !DISubprogram(name: "close", scope: !1628, file: !1628, line: 358, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!6, !6}
!1637 = !DISubprogram(name: "read", scope: !1628, file: !1628, line: 371, type: !1638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!1640, !6, !387, !1599}
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1628, line: 220, baseType: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1578, line: 194, baseType: !159)
!1642 = !DILocation(line: 0, scope: !927)
!1643 = !DILocation(line: 209, column: 17, scope: !927)
!1644 = !DILocation(line: 209, column: 19, scope: !927)
!1645 = !DILocation(line: 209, column: 13, scope: !927)
!1646 = !DILocation(line: 210, column: 19, scope: !927)
!1647 = !DILocation(line: 210, column: 13, scope: !927)
!1648 = !DILocation(line: 211, column: 10, scope: !927)
!1649 = !DILocation(line: 211, column: 3, scope: !927)
!1650 = !DILocation(line: 0, scope: !954)
!1651 = !DILocation(line: 228, column: 17, scope: !954)
!1652 = !DILocation(line: 228, column: 19, scope: !954)
!1653 = !DILocation(line: 228, column: 13, scope: !954)
!1654 = !DILocation(line: 229, column: 19, scope: !954)
!1655 = !DILocation(line: 229, column: 13, scope: !954)
!1656 = !DILocation(line: 230, column: 19, scope: !954)
!1657 = !DILocation(line: 230, column: 13, scope: !954)
!1658 = !DILocation(line: 231, column: 19, scope: !954)
!1659 = !DILocation(line: 231, column: 13, scope: !954)
!1660 = !DILocation(line: 233, column: 1, scope: !954)
!1661 = !DILocation(line: 232, column: 3, scope: !954)
!1662 = distinct !DISubprogram(name: "getSwappedU16", scope: !3, file: !3, line: 245, type: !928, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !1663)
!1663 = !{!1664, !1665}
!1664 = !DILocalVariable(name: "t", arg: 1, scope: !1662, file: !3, line: 245, type: !356)
!1665 = !DILocalVariable(name: "u", scope: !1662, file: !3, line: 250, type: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !3, line: 247, size: 16, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1666, file: !3, line: 248, baseType: !935, size: 16)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1666, file: !3, line: 249, baseType: !151, size: 16)
!1670 = !DILocation(line: 0, scope: !1662)
!1671 = !DILocation(line: 251, column: 17, scope: !1662)
!1672 = !DILocation(line: 251, column: 19, scope: !1662)
!1673 = !DILocation(line: 251, column: 13, scope: !1662)
!1674 = !DILocation(line: 252, column: 19, scope: !1662)
!1675 = !DILocation(line: 252, column: 13, scope: !1662)
!1676 = !DILocation(line: 253, column: 10, scope: !1662)
!1677 = !DILocation(line: 253, column: 3, scope: !1662)
!1678 = distinct !DISubprogram(name: "getSwappedU32", scope: !3, file: !3, line: 264, type: !928, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !1679)
!1679 = !{!1680, !1681}
!1680 = !DILocalVariable(name: "t", arg: 1, scope: !1678, file: !3, line: 264, type: !356)
!1681 = !DILocalVariable(name: "u", scope: !1678, file: !3, line: 269, type: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !3, line: 266, size: 32, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1682, file: !3, line: 267, baseType: !960, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1682, file: !3, line: 268, baseType: !322, size: 32)
!1686 = !DILocation(line: 0, scope: !1678)
!1687 = !DILocation(line: 270, column: 17, scope: !1678)
!1688 = !DILocation(line: 270, column: 19, scope: !1678)
!1689 = !DILocation(line: 270, column: 13, scope: !1678)
!1690 = !DILocation(line: 271, column: 19, scope: !1678)
!1691 = !DILocation(line: 271, column: 13, scope: !1678)
!1692 = !DILocation(line: 272, column: 19, scope: !1678)
!1693 = !DILocation(line: 272, column: 13, scope: !1678)
!1694 = !DILocation(line: 273, column: 19, scope: !1678)
!1695 = !DILocation(line: 273, column: 13, scope: !1678)
!1696 = !DILocation(line: 275, column: 1, scope: !1678)
!1697 = !DILocation(line: 274, column: 3, scope: !1678)
!1698 = distinct !DISubprogram(name: "getIntArray", scope: !3, file: !3, line: 285, type: !1699, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !1702)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{null, !356, !322, !161, !1701, !6}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1703 = !DILocalVariable(name: "t", arg: 1, scope: !1698, file: !3, line: 285, type: !356)
!1704 = !DILocalVariable(name: "offset", arg: 2, scope: !1698, file: !3, line: 285, type: !322)
!1705 = !DILocalVariable(name: "type", arg: 3, scope: !1698, file: !3, line: 285, type: !161)
!1706 = !DILocalVariable(name: "a", arg: 4, scope: !1698, file: !3, line: 285, type: !1701)
!1707 = !DILocalVariable(name: "n", arg: 5, scope: !1698, file: !3, line: 285, type: !6)
!1708 = !DILocalVariable(name: "i", scope: !1698, file: !3, line: 287, type: !6)
!1709 = !DILocalVariable(name: "mp", scope: !1698, file: !3, line: 288, type: !160)
!1710 = !DILocation(line: 0, scope: !1698)
!1711 = !DILocation(line: 288, column: 19, scope: !1698)
!1712 = !DILocation(line: 290, column: 14, scope: !1698)
!1713 = !DILocation(line: 290, column: 27, scope: !1698)
!1714 = !DILocation(line: 290, column: 9, scope: !1698)
!1715 = !DILocation(line: 291, column: 3, scope: !1698)
!1716 = !DILocation(line: 306, column: 17, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 306, column: 5)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 306, column: 5)
!1719 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 292, column: 3)
!1720 = !DILocation(line: 306, column: 5, scope: !1718)
!1721 = !DILocation(line: 300, column: 17, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 300, column: 5)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 300, column: 5)
!1724 = !DILocation(line: 300, column: 5, scope: !1723)
!1725 = !DILocation(line: 294, column: 17, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 294, column: 5)
!1727 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 294, column: 5)
!1728 = !DILocation(line: 294, column: 5, scope: !1727)
!1729 = !DILocation(line: 0, scope: !927, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 296, column: 14, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 295, column: 5)
!1732 = !DILocation(line: 209, column: 19, scope: !927, inlinedAt: !1730)
!1733 = !DILocation(line: 209, column: 13, scope: !927, inlinedAt: !1730)
!1734 = !DILocation(line: 210, column: 19, scope: !927, inlinedAt: !1730)
!1735 = !DILocation(line: 210, column: 13, scope: !927, inlinedAt: !1730)
!1736 = !DILocation(line: 211, column: 10, scope: !927, inlinedAt: !1730)
!1737 = !DILocation(line: 296, column: 7, scope: !1731)
!1738 = !DILocation(line: 296, column: 12, scope: !1731)
!1739 = !DILocation(line: 294, column: 22, scope: !1726)
!1740 = distinct !{!1740, !1728, !1741}
!1741 = !DILocation(line: 297, column: 5, scope: !1727)
!1742 = !DILocation(line: 0, scope: !954, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 302, column: 14, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 301, column: 5)
!1745 = !DILocation(line: 228, column: 19, scope: !954, inlinedAt: !1743)
!1746 = !DILocation(line: 228, column: 13, scope: !954, inlinedAt: !1743)
!1747 = !DILocation(line: 229, column: 19, scope: !954, inlinedAt: !1743)
!1748 = !DILocation(line: 229, column: 13, scope: !954, inlinedAt: !1743)
!1749 = !DILocation(line: 230, column: 19, scope: !954, inlinedAt: !1743)
!1750 = !DILocation(line: 230, column: 13, scope: !954, inlinedAt: !1743)
!1751 = !DILocation(line: 231, column: 19, scope: !954, inlinedAt: !1743)
!1752 = !DILocation(line: 231, column: 13, scope: !954, inlinedAt: !1743)
!1753 = !DILocation(line: 233, column: 1, scope: !954, inlinedAt: !1743)
!1754 = !DILocation(line: 302, column: 7, scope: !1744)
!1755 = !DILocation(line: 302, column: 12, scope: !1744)
!1756 = !DILocation(line: 300, column: 22, scope: !1722)
!1757 = distinct !{!1757, !1724, !1758}
!1758 = !DILocation(line: 303, column: 5, scope: !1723)
!1759 = !DILocation(line: 0, scope: !954, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 308, column: 14, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 307, column: 5)
!1762 = !DILocation(line: 228, column: 19, scope: !954, inlinedAt: !1760)
!1763 = !DILocation(line: 228, column: 13, scope: !954, inlinedAt: !1760)
!1764 = !DILocation(line: 229, column: 19, scope: !954, inlinedAt: !1760)
!1765 = !DILocation(line: 229, column: 13, scope: !954, inlinedAt: !1760)
!1766 = !DILocation(line: 230, column: 19, scope: !954, inlinedAt: !1760)
!1767 = !DILocation(line: 230, column: 13, scope: !954, inlinedAt: !1760)
!1768 = !DILocation(line: 231, column: 19, scope: !954, inlinedAt: !1760)
!1769 = !DILocation(line: 231, column: 13, scope: !954, inlinedAt: !1760)
!1770 = !DILocation(line: 233, column: 1, scope: !954, inlinedAt: !1760)
!1771 = !DILocation(line: 308, column: 7, scope: !1761)
!1772 = !DILocation(line: 308, column: 12, scope: !1761)
!1773 = !DILocation(line: 306, column: 24, scope: !1717)
!1774 = distinct !{!1774, !1720, !1775}
!1775 = !DILocation(line: 309, column: 5, scope: !1718)
!1776 = !DILocation(line: 314, column: 9, scope: !1698)
!1777 = !DILocation(line: 315, column: 1, scope: !1698)
