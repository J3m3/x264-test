; ModuleID = 'x264_src/common/dct.c'
source_filename = "x264_src/common/dct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x264_dct4_weight2_zigzag = dso_local local_unnamed_addr global [2 x [16 x i32]] zeroinitializer, align 16
@x264_dct8_weight2_tab = internal unnamed_addr constant [64 x i16] [i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201], align 16
@x264_zigzag_scan8 = internal unnamed_addr constant [2 x [64 x i8]] [[64 x i8] c"\00\08\01\02\09\10\18\11\0A\03\04\0B\12\19 (!\1A\13\0C\05\06\0D\14\1B\22)081*#\1C\15\0E\07\0F\16\1D$+29:3,%\1E\17\1F&-4;<5.'/6=>7?", [64 x i8] c"\00\01\02\08\09\03\04\0A\10\0B\05\06\07\0C\11\18\12\0D\0E\0F\13\19 \1A\14\15\16\17\1B!(\22\1C\1D\1E\1F#)0*$%&'+12,-./3894567:;<=>?"], align 16
@x264_dct8_weight2_zigzag = dso_local local_unnamed_addr global [2 x [64 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_dct_init(i32 noundef %cpu, ptr nocapture noundef writeonly %dctf) local_unnamed_addr #0 {
entry:
  store ptr @sub4x4_dct, ptr %dctf, align 8
  %add4x4_idct = getelementptr inbounds i8, ptr %dctf, i64 8
  store ptr @add4x4_idct, ptr %add4x4_idct, align 8
  %sub8x8_dct = getelementptr inbounds i8, ptr %dctf, i64 16
  store ptr @sub8x8_dct, ptr %sub8x8_dct, align 8
  %sub8x8_dct_dc = getelementptr inbounds i8, ptr %dctf, i64 24
  store ptr @sub8x8_dct_dc, ptr %sub8x8_dct_dc, align 8
  %add8x8_idct = getelementptr inbounds i8, ptr %dctf, i64 32
  store ptr @add8x8_idct, ptr %add8x8_idct, align 8
  %add8x8_idct_dc = getelementptr inbounds i8, ptr %dctf, i64 40
  store ptr @add8x8_idct_dc, ptr %add8x8_idct_dc, align 8
  %sub16x16_dct = getelementptr inbounds i8, ptr %dctf, i64 48
  store ptr @sub16x16_dct, ptr %sub16x16_dct, align 8
  %add16x16_idct = getelementptr inbounds i8, ptr %dctf, i64 56
  store ptr @add16x16_idct, ptr %add16x16_idct, align 8
  %add16x16_idct_dc = getelementptr inbounds i8, ptr %dctf, i64 64
  store ptr @add16x16_idct_dc, ptr %add16x16_idct_dc, align 8
  %sub8x8_dct8 = getelementptr inbounds i8, ptr %dctf, i64 72
  store ptr @sub8x8_dct8, ptr %sub8x8_dct8, align 8
  %add8x8_idct8 = getelementptr inbounds i8, ptr %dctf, i64 80
  store ptr @add8x8_idct8, ptr %add8x8_idct8, align 8
  %sub16x16_dct8 = getelementptr inbounds i8, ptr %dctf, i64 88
  store ptr @sub16x16_dct8, ptr %sub16x16_dct8, align 8
  %add16x16_idct8 = getelementptr inbounds i8, ptr %dctf, i64 96
  store ptr @add16x16_idct8, ptr %add16x16_idct8, align 8
  %dct4x4dc = getelementptr inbounds i8, ptr %dctf, i64 104
  store ptr @dct4x4dc, ptr %dct4x4dc, align 8
  %idct4x4dc = getelementptr inbounds i8, ptr %dctf, i64 112
  store ptr @idct4x4dc, ptr %idct4x4dc, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @sub4x4_dct(ptr nocapture noundef writeonly %dct, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2) #1 {
entry:
  %0 = load i8, ptr %pix1, align 1
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, ptr %pix2, align 1
  %conv7.us.i = zext i8 %1 to i32
  %sub.us.i = sub nsw i32 %conv.us.i, %conv7.us.i
  %arrayidx.us.i.1 = getelementptr inbounds i8, ptr %pix1, i64 1
  %2 = load i8, ptr %arrayidx.us.i.1, align 1
  %conv.us.i.1 = zext i8 %2 to i32
  %arrayidx6.us.i.1 = getelementptr inbounds i8, ptr %pix2, i64 1
  %3 = load i8, ptr %arrayidx6.us.i.1, align 1
  %conv7.us.i.1 = zext i8 %3 to i32
  %sub.us.i.1 = sub nsw i32 %conv.us.i.1, %conv7.us.i.1
  %arrayidx.us.i.2 = getelementptr inbounds i8, ptr %pix1, i64 2
  %4 = load i8, ptr %arrayidx.us.i.2, align 1
  %conv.us.i.2 = zext i8 %4 to i32
  %arrayidx6.us.i.2 = getelementptr inbounds i8, ptr %pix2, i64 2
  %5 = load i8, ptr %arrayidx6.us.i.2, align 1
  %conv7.us.i.2 = zext i8 %5 to i32
  %sub.us.i.2 = sub nsw i32 %conv.us.i.2, %conv7.us.i.2
  %arrayidx.us.i.3 = getelementptr inbounds i8, ptr %pix1, i64 3
  %6 = load i8, ptr %arrayidx.us.i.3, align 1
  %conv.us.i.3 = zext i8 %6 to i32
  %arrayidx6.us.i.3 = getelementptr inbounds i8, ptr %pix2, i64 3
  %7 = load i8, ptr %arrayidx6.us.i.3, align 1
  %conv7.us.i.3 = zext i8 %7 to i32
  %sub.us.i.3 = sub nsw i32 %conv.us.i.3, %conv7.us.i.3
  %add.ptr.us.i = getelementptr inbounds i8, ptr %pix1, i64 16
  %add.ptr12.us.i = getelementptr inbounds i8, ptr %pix2, i64 32
  %8 = load i8, ptr %add.ptr.us.i, align 1
  %conv.us.i.1183 = zext i8 %8 to i32
  %9 = load i8, ptr %add.ptr12.us.i, align 1
  %conv7.us.i.1184 = zext i8 %9 to i32
  %sub.us.i.1185 = sub nsw i32 %conv.us.i.1183, %conv7.us.i.1184
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, ptr %pix1, i64 17
  %10 = load i8, ptr %arrayidx.us.i.1.1, align 1
  %conv.us.i.1.1 = zext i8 %10 to i32
  %arrayidx6.us.i.1.1 = getelementptr inbounds i8, ptr %pix2, i64 33
  %11 = load i8, ptr %arrayidx6.us.i.1.1, align 1
  %conv7.us.i.1.1 = zext i8 %11 to i32
  %sub.us.i.1.1 = sub nsw i32 %conv.us.i.1.1, %conv7.us.i.1.1
  %arrayidx.us.i.2.1 = getelementptr inbounds i8, ptr %pix1, i64 18
  %12 = load i8, ptr %arrayidx.us.i.2.1, align 1
  %conv.us.i.2.1 = zext i8 %12 to i32
  %arrayidx6.us.i.2.1 = getelementptr inbounds i8, ptr %pix2, i64 34
  %13 = load i8, ptr %arrayidx6.us.i.2.1, align 1
  %conv7.us.i.2.1 = zext i8 %13 to i32
  %sub.us.i.2.1 = sub nsw i32 %conv.us.i.2.1, %conv7.us.i.2.1
  %arrayidx.us.i.3.1 = getelementptr inbounds i8, ptr %pix1, i64 19
  %14 = load i8, ptr %arrayidx.us.i.3.1, align 1
  %conv.us.i.3.1 = zext i8 %14 to i32
  %arrayidx6.us.i.3.1 = getelementptr inbounds i8, ptr %pix2, i64 35
  %15 = load i8, ptr %arrayidx6.us.i.3.1, align 1
  %conv7.us.i.3.1 = zext i8 %15 to i32
  %sub.us.i.3.1 = sub nsw i32 %conv.us.i.3.1, %conv7.us.i.3.1
  %add.ptr.us.i.1 = getelementptr inbounds i8, ptr %pix1, i64 32
  %add.ptr12.us.i.1 = getelementptr inbounds i8, ptr %pix2, i64 64
  %16 = load i8, ptr %add.ptr.us.i.1, align 1
  %conv.us.i.2186 = zext i8 %16 to i32
  %17 = load i8, ptr %add.ptr12.us.i.1, align 1
  %conv7.us.i.2187 = zext i8 %17 to i32
  %sub.us.i.2188 = sub nsw i32 %conv.us.i.2186, %conv7.us.i.2187
  %arrayidx.us.i.1.2 = getelementptr inbounds i8, ptr %pix1, i64 33
  %18 = load i8, ptr %arrayidx.us.i.1.2, align 1
  %conv.us.i.1.2 = zext i8 %18 to i32
  %arrayidx6.us.i.1.2 = getelementptr inbounds i8, ptr %pix2, i64 65
  %19 = load i8, ptr %arrayidx6.us.i.1.2, align 1
  %conv7.us.i.1.2 = zext i8 %19 to i32
  %sub.us.i.1.2 = sub nsw i32 %conv.us.i.1.2, %conv7.us.i.1.2
  %arrayidx.us.i.2.2 = getelementptr inbounds i8, ptr %pix1, i64 34
  %20 = load i8, ptr %arrayidx.us.i.2.2, align 1
  %conv.us.i.2.2 = zext i8 %20 to i32
  %arrayidx6.us.i.2.2 = getelementptr inbounds i8, ptr %pix2, i64 66
  %21 = load i8, ptr %arrayidx6.us.i.2.2, align 1
  %conv7.us.i.2.2 = zext i8 %21 to i32
  %sub.us.i.2.2 = sub nsw i32 %conv.us.i.2.2, %conv7.us.i.2.2
  %arrayidx.us.i.3.2 = getelementptr inbounds i8, ptr %pix1, i64 35
  %22 = load i8, ptr %arrayidx.us.i.3.2, align 1
  %conv.us.i.3.2 = zext i8 %22 to i32
  %arrayidx6.us.i.3.2 = getelementptr inbounds i8, ptr %pix2, i64 67
  %23 = load i8, ptr %arrayidx6.us.i.3.2, align 1
  %conv7.us.i.3.2 = zext i8 %23 to i32
  %sub.us.i.3.2 = sub nsw i32 %conv.us.i.3.2, %conv7.us.i.3.2
  %add.ptr.us.i.2 = getelementptr inbounds i8, ptr %pix1, i64 48
  %add.ptr12.us.i.2 = getelementptr inbounds i8, ptr %pix2, i64 96
  %24 = load i8, ptr %add.ptr.us.i.2, align 1
  %conv.us.i.3189 = zext i8 %24 to i32
  %25 = load i8, ptr %add.ptr12.us.i.2, align 1
  %conv7.us.i.3190 = zext i8 %25 to i32
  %sub.us.i.3191 = sub nsw i32 %conv.us.i.3189, %conv7.us.i.3190
  %arrayidx.us.i.1.3 = getelementptr inbounds i8, ptr %pix1, i64 49
  %26 = load i8, ptr %arrayidx.us.i.1.3, align 1
  %conv.us.i.1.3 = zext i8 %26 to i32
  %arrayidx6.us.i.1.3 = getelementptr inbounds i8, ptr %pix2, i64 97
  %27 = load i8, ptr %arrayidx6.us.i.1.3, align 1
  %conv7.us.i.1.3 = zext i8 %27 to i32
  %sub.us.i.1.3 = sub nsw i32 %conv.us.i.1.3, %conv7.us.i.1.3
  %arrayidx.us.i.2.3 = getelementptr inbounds i8, ptr %pix1, i64 50
  %28 = load i8, ptr %arrayidx.us.i.2.3, align 1
  %conv.us.i.2.3 = zext i8 %28 to i32
  %arrayidx6.us.i.2.3 = getelementptr inbounds i8, ptr %pix2, i64 98
  %29 = load i8, ptr %arrayidx6.us.i.2.3, align 1
  %conv7.us.i.2.3 = zext i8 %29 to i32
  %sub.us.i.2.3 = sub nsw i32 %conv.us.i.2.3, %conv7.us.i.2.3
  %arrayidx.us.i.3.3 = getelementptr inbounds i8, ptr %pix1, i64 51
  %30 = load i8, ptr %arrayidx.us.i.3.3, align 1
  %conv.us.i.3.3 = zext i8 %30 to i32
  %arrayidx6.us.i.3.3 = getelementptr inbounds i8, ptr %pix2, i64 99
  %31 = load i8, ptr %arrayidx6.us.i.3.3, align 1
  %conv7.us.i.3.3 = zext i8 %31 to i32
  %sub.us.i.3.3 = sub nsw i32 %conv.us.i.3.3, %conv7.us.i.3.3
  %add6 = add nsw i32 %sub.us.i.3, %sub.us.i
  %add17 = add nsw i32 %sub.us.i.2, %sub.us.i.1
  %sub = sub nsw i32 %sub.us.i, %sub.us.i.3
  %sub38 = sub nsw i32 %sub.us.i.1, %sub.us.i.2
  %add39 = add nsw i32 %add17, %add6
  %mul44 = shl nsw i32 %sub, 1
  %add45 = add nsw i32 %sub38, %mul44
  %sub50 = sub nsw i32 %add6, %add17
  %mul55 = shl nsw i32 %sub38, 1
  %sub56 = sub nsw i32 %sub, %mul55
  %add6.1 = add nsw i32 %sub.us.i.3.1, %sub.us.i.1185
  %add17.1 = add nsw i32 %sub.us.i.2.1, %sub.us.i.1.1
  %sub.1 = sub nsw i32 %sub.us.i.1185, %sub.us.i.3.1
  %sub38.1 = sub nsw i32 %sub.us.i.1.1, %sub.us.i.2.1
  %add39.1 = add nsw i32 %add17.1, %add6.1
  %mul44.1 = shl nsw i32 %sub.1, 1
  %add45.1 = add nsw i32 %sub38.1, %mul44.1
  %sub50.1 = sub nsw i32 %add6.1, %add17.1
  %mul55.1 = shl nsw i32 %sub38.1, 1
  %sub56.1 = sub nsw i32 %sub.1, %mul55.1
  %add6.2 = add nsw i32 %sub.us.i.3.2, %sub.us.i.2188
  %add17.2 = add nsw i32 %sub.us.i.2.2, %sub.us.i.1.2
  %sub.2 = sub nsw i32 %sub.us.i.2188, %sub.us.i.3.2
  %sub38.2 = sub nsw i32 %sub.us.i.1.2, %sub.us.i.2.2
  %add39.2 = add nsw i32 %add17.2, %add6.2
  %mul44.2 = shl nsw i32 %sub.2, 1
  %add45.2 = add nsw i32 %sub38.2, %mul44.2
  %sub50.2 = sub nsw i32 %add6.2, %add17.2
  %mul55.2 = shl nsw i32 %sub38.2, 1
  %sub56.2 = sub nsw i32 %sub.2, %mul55.2
  %add6.3 = add nsw i32 %sub.us.i.3.3, %sub.us.i.3191
  %add17.3 = add nsw i32 %sub.us.i.2.3, %sub.us.i.1.3
  %sub.3 = sub nsw i32 %sub.us.i.3191, %sub.us.i.3.3
  %sub38.3 = sub nsw i32 %sub.us.i.1.3, %sub.us.i.2.3
  %add39.3 = add nsw i32 %add17.3, %add6.3
  %mul44.3 = shl nsw i32 %sub.3, 1
  %add45.3 = add nsw i32 %sub38.3, %mul44.3
  %sub50.3 = sub nsw i32 %add6.3, %add17.3
  %mul55.3 = shl nsw i32 %sub38.3, 1
  %sub56.3 = sub nsw i32 %sub.3, %mul55.3
  %add78 = add nsw i32 %add39.3, %add39
  %add90 = add nsw i32 %add39.2, %add39.1
  %sub102 = sub nsw i32 %add39, %add39.3
  %sub114 = sub nsw i32 %add39.1, %add39.2
  %add115 = add nsw i32 %add90, %add78
  %conv116 = trunc nsw i32 %add115 to i16
  store i16 %conv116, ptr %dct, align 2
  %mul121 = shl nsw i32 %sub102, 1
  %add122 = add nsw i32 %sub114, %mul121
  %conv123 = trunc i32 %add122 to i16
  %arrayidx127 = getelementptr inbounds i8, ptr %dct, i64 2
  store i16 %conv123, ptr %arrayidx127, align 2
  %sub128 = sub nsw i32 %add78, %add90
  %conv129 = trunc nsw i32 %sub128 to i16
  %arrayidx133 = getelementptr inbounds i8, ptr %dct, i64 4
  store i16 %conv129, ptr %arrayidx133, align 2
  %mul134 = shl nsw i32 %sub114, 1
  %sub135 = sub nsw i32 %sub102, %mul134
  %conv136 = trunc i32 %sub135 to i16
  %arrayidx140 = getelementptr inbounds i8, ptr %dct, i64 6
  store i16 %conv136, ptr %arrayidx140, align 2
  %add78.1 = add nsw i32 %add45.3, %add45
  %add90.1 = add nsw i32 %add45.2, %add45.1
  %sub102.1 = sub nsw i32 %add45, %add45.3
  %sub114.1 = sub nsw i32 %add45.1, %add45.2
  %add115.1 = add nsw i32 %add90.1, %add78.1
  %conv116.1 = trunc i32 %add115.1 to i16
  %arrayidx120.1 = getelementptr inbounds i8, ptr %dct, i64 8
  store i16 %conv116.1, ptr %arrayidx120.1, align 2
  %mul121.1 = shl nsw i32 %sub102.1, 1
  %add122.1 = add nsw i32 %sub114.1, %mul121.1
  %conv123.1 = trunc i32 %add122.1 to i16
  %arrayidx127.1 = getelementptr inbounds i8, ptr %dct, i64 10
  store i16 %conv123.1, ptr %arrayidx127.1, align 2
  %sub128.1 = sub nsw i32 %add78.1, %add90.1
  %conv129.1 = trunc i32 %sub128.1 to i16
  %arrayidx133.1 = getelementptr inbounds i8, ptr %dct, i64 12
  store i16 %conv129.1, ptr %arrayidx133.1, align 2
  %mul134.1 = shl nsw i32 %sub114.1, 1
  %sub135.1 = sub nsw i32 %sub102.1, %mul134.1
  %conv136.1 = trunc i32 %sub135.1 to i16
  %arrayidx140.1 = getelementptr inbounds i8, ptr %dct, i64 14
  store i16 %conv136.1, ptr %arrayidx140.1, align 2
  %add78.2 = add nsw i32 %sub50.3, %sub50
  %add90.2 = add nsw i32 %sub50.2, %sub50.1
  %sub102.2 = sub nsw i32 %sub50, %sub50.3
  %sub114.2 = sub nsw i32 %sub50.1, %sub50.2
  %add115.2 = add nsw i32 %add90.2, %add78.2
  %conv116.2 = trunc nsw i32 %add115.2 to i16
  %arrayidx120.2 = getelementptr inbounds i8, ptr %dct, i64 16
  store i16 %conv116.2, ptr %arrayidx120.2, align 2
  %mul121.2 = shl nsw i32 %sub102.2, 1
  %add122.2 = add nsw i32 %sub114.2, %mul121.2
  %conv123.2 = trunc i32 %add122.2 to i16
  %arrayidx127.2 = getelementptr inbounds i8, ptr %dct, i64 18
  store i16 %conv123.2, ptr %arrayidx127.2, align 2
  %sub128.2 = sub nsw i32 %add78.2, %add90.2
  %conv129.2 = trunc nsw i32 %sub128.2 to i16
  %arrayidx133.2 = getelementptr inbounds i8, ptr %dct, i64 20
  store i16 %conv129.2, ptr %arrayidx133.2, align 2
  %mul134.2 = shl nsw i32 %sub114.2, 1
  %sub135.2 = sub nsw i32 %sub102.2, %mul134.2
  %conv136.2 = trunc i32 %sub135.2 to i16
  %arrayidx140.2 = getelementptr inbounds i8, ptr %dct, i64 22
  store i16 %conv136.2, ptr %arrayidx140.2, align 2
  %add78.3 = add nsw i32 %sub56.3, %sub56
  %add90.3 = add nsw i32 %sub56.2, %sub56.1
  %sub102.3 = sub nsw i32 %sub56, %sub56.3
  %sub114.3 = sub nsw i32 %sub56.1, %sub56.2
  %add115.3 = add nsw i32 %add90.3, %add78.3
  %conv116.3 = trunc i32 %add115.3 to i16
  %arrayidx120.3 = getelementptr inbounds i8, ptr %dct, i64 24
  store i16 %conv116.3, ptr %arrayidx120.3, align 2
  %mul121.3 = shl nsw i32 %sub102.3, 1
  %add122.3 = add nsw i32 %sub114.3, %mul121.3
  %conv123.3 = trunc i32 %add122.3 to i16
  %arrayidx127.3 = getelementptr inbounds i8, ptr %dct, i64 26
  store i16 %conv123.3, ptr %arrayidx127.3, align 2
  %sub128.3 = sub nsw i32 %add78.3, %add90.3
  %conv129.3 = trunc i32 %sub128.3 to i16
  %arrayidx133.3 = getelementptr inbounds i8, ptr %dct, i64 28
  store i16 %conv129.3, ptr %arrayidx133.3, align 2
  %mul134.3 = shl nsw i32 %sub114.3, 1
  %sub135.3 = sub nsw i32 %sub102.3, %mul134.3
  %conv136.3 = trunc i32 %sub135.3 to i16
  %arrayidx140.3 = getelementptr inbounds i8, ptr %dct, i64 30
  store i16 %conv136.3, ptr %arrayidx140.3, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @add4x4_idct(ptr nocapture noundef %p_dst, ptr nocapture noundef readonly %dct) #1 {
entry:
  %0 = load i16, ptr %dct, align 2
  %conv256 = zext i16 %0 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %dct, i64 16
  %1 = load i16, ptr %arrayidx3, align 2
  %conv4257 = zext i16 %1 to i32
  %add5 = add nuw nsw i32 %conv4257, %conv256
  %sub = sub nsw i32 %conv256, %conv4257
  %arrayidx16 = getelementptr inbounds i8, ptr %dct, i64 8
  %2 = load i16, ptr %arrayidx16, align 2
  %conv17 = sext i16 %2 to i32
  %arrayidx20 = getelementptr inbounds i8, ptr %dct, i64 24
  %3 = load i16, ptr %arrayidx20, align 2
  %conv21 = sext i16 %3 to i32
  %shr = ashr i32 %conv21, 1
  %add22 = add nsw i32 %shr, %conv17
  %shr27 = ashr i32 %conv17, 1
  %sub32 = sub nsw i32 %shr27, %conv21
  %add33 = add nsw i32 %add22, %add5
  %add38 = add nsw i32 %sub32, %sub
  %sub44 = sub nsw i32 %sub, %sub32
  %sub50 = sub nsw i32 %add5, %add22
  %arrayidx.1 = getelementptr inbounds i8, ptr %dct, i64 2
  %4 = load i16, ptr %arrayidx.1, align 2
  %conv.1258 = zext i16 %4 to i32
  %arrayidx3.1 = getelementptr inbounds i8, ptr %dct, i64 18
  %5 = load i16, ptr %arrayidx3.1, align 2
  %conv4.1259 = zext i16 %5 to i32
  %add5.1 = add nuw nsw i32 %conv4.1259, %conv.1258
  %sub.1 = sub nsw i32 %conv.1258, %conv4.1259
  %arrayidx16.1 = getelementptr inbounds i8, ptr %dct, i64 10
  %6 = load i16, ptr %arrayidx16.1, align 2
  %conv17.1 = sext i16 %6 to i32
  %arrayidx20.1 = getelementptr inbounds i8, ptr %dct, i64 26
  %7 = load i16, ptr %arrayidx20.1, align 2
  %conv21.1 = sext i16 %7 to i32
  %shr.1 = ashr i32 %conv21.1, 1
  %add22.1 = add nsw i32 %shr.1, %conv17.1
  %shr27.1 = ashr i32 %conv17.1, 1
  %sub32.1 = sub nsw i32 %shr27.1, %conv21.1
  %add33.1 = add nsw i32 %add22.1, %add5.1
  %add38.1 = add nsw i32 %sub32.1, %sub.1
  %sub44.1 = sub nsw i32 %sub.1, %sub32.1
  %sub50.1 = sub nsw i32 %add5.1, %add22.1
  %arrayidx.2 = getelementptr inbounds i8, ptr %dct, i64 4
  %8 = load i16, ptr %arrayidx.2, align 2
  %conv.2260 = zext i16 %8 to i32
  %arrayidx3.2 = getelementptr inbounds i8, ptr %dct, i64 20
  %9 = load i16, ptr %arrayidx3.2, align 2
  %conv4.2261 = zext i16 %9 to i32
  %add5.2 = add nuw nsw i32 %conv4.2261, %conv.2260
  %sub.2 = sub nsw i32 %conv.2260, %conv4.2261
  %arrayidx16.2 = getelementptr inbounds i8, ptr %dct, i64 12
  %10 = load i16, ptr %arrayidx16.2, align 2
  %conv17.2 = sext i16 %10 to i32
  %arrayidx20.2 = getelementptr inbounds i8, ptr %dct, i64 28
  %11 = load i16, ptr %arrayidx20.2, align 2
  %conv21.2 = sext i16 %11 to i32
  %shr.2 = ashr i32 %conv21.2, 1
  %add22.2 = add nsw i32 %shr.2, %conv17.2
  %shr27.2 = ashr i32 %conv17.2, 1
  %sub32.2 = sub nsw i32 %shr27.2, %conv21.2
  %add33.2 = add nsw i32 %add22.2, %add5.2
  %add38.2 = add nsw i32 %sub32.2, %sub.2
  %sub44.2 = sub nsw i32 %sub.2, %sub32.2
  %sub50.2 = sub nsw i32 %add5.2, %add22.2
  %arrayidx.3 = getelementptr inbounds i8, ptr %dct, i64 6
  %12 = load i16, ptr %arrayidx.3, align 2
  %conv.3262 = zext i16 %12 to i32
  %arrayidx3.3 = getelementptr inbounds i8, ptr %dct, i64 22
  %13 = load i16, ptr %arrayidx3.3, align 2
  %conv4.3263 = zext i16 %13 to i32
  %add5.3 = add nuw nsw i32 %conv4.3263, %conv.3262
  %sub.3 = sub nsw i32 %conv.3262, %conv4.3263
  %arrayidx16.3 = getelementptr inbounds i8, ptr %dct, i64 14
  %14 = load i16, ptr %arrayidx16.3, align 2
  %conv17.3 = sext i16 %14 to i32
  %arrayidx20.3 = getelementptr inbounds i8, ptr %dct, i64 30
  %15 = load i16, ptr %arrayidx20.3, align 2
  %conv21.3 = sext i16 %15 to i32
  %shr.3 = ashr i32 %conv21.3, 1
  %add22.3 = add nsw i32 %shr.3, %conv17.3
  %shr27.3 = ashr i32 %conv17.3, 1
  %sub32.3 = sub nsw i32 %shr27.3, %conv21.3
  %add33.3 = add nsw i32 %add22.3, %add5.3
  %add38.3 = add nsw i32 %sub32.3, %sub.3
  %sub44.3 = sub nsw i32 %sub.3, %sub32.3
  %sub50.3 = sub nsw i32 %add5.3, %add22.3
  %sext = shl i32 %add33, 16
  %conv66 = ashr exact i32 %sext, 16
  %sext264 = shl i32 %add33.2, 16
  %conv70 = ashr exact i32 %sext264, 16
  %add71 = add nsw i32 %conv70, %conv66
  %sub81 = sub nsw i32 %conv66, %conv70
  %sext265 = shl i32 %add33.1, 16
  %conv86 = ashr exact i32 %sext265, 16
  %sext266 = shl i32 %add33.3, 16
  %conv90 = ashr exact i32 %sext266, 16
  %shr91 = ashr i32 %sext266, 17
  %add92 = add nsw i32 %shr91, %conv86
  %shr98 = ashr i32 %sext265, 17
  %sub103 = sub nsw i32 %shr98, %conv90
  %add104 = add nsw i32 %add71, 32
  %add105 = add nsw i32 %add104, %add92
  %add111 = add nsw i32 %sub81, 32
  %add112 = add nsw i32 %add111, %sub103
  %add119 = sub nsw i32 %add111, %sub103
  %add126 = sub nsw i32 %add104, %add92
  %sext267 = shl i32 %add38, 16
  %conv66.1 = ashr exact i32 %sext267, 16
  %sext268 = shl i32 %add38.2, 16
  %conv70.1 = ashr exact i32 %sext268, 16
  %add71.1 = add nsw i32 %conv70.1, %conv66.1
  %sub81.1 = sub nsw i32 %conv66.1, %conv70.1
  %sext269 = shl i32 %add38.1, 16
  %conv86.1 = ashr exact i32 %sext269, 16
  %sext270 = shl i32 %add38.3, 16
  %conv90.1 = ashr exact i32 %sext270, 16
  %shr91.1 = ashr i32 %sext270, 17
  %add92.1 = add nsw i32 %shr91.1, %conv86.1
  %shr98.1 = ashr i32 %sext269, 17
  %sub103.1 = sub nsw i32 %shr98.1, %conv90.1
  %add104.1 = add nsw i32 %add71.1, 32
  %add105.1 = add nsw i32 %add104.1, %add92.1
  %add111.1 = add nsw i32 %sub81.1, 32
  %add112.1 = add nsw i32 %add111.1, %sub103.1
  %add119.1 = sub nsw i32 %add111.1, %sub103.1
  %add126.1 = sub nsw i32 %add104.1, %add92.1
  %sext271 = shl i32 %sub44, 16
  %conv66.2 = ashr exact i32 %sext271, 16
  %sext272 = shl i32 %sub44.2, 16
  %conv70.2 = ashr exact i32 %sext272, 16
  %add71.2 = add nsw i32 %conv70.2, %conv66.2
  %sub81.2 = sub nsw i32 %conv66.2, %conv70.2
  %sext273 = shl i32 %sub44.1, 16
  %conv86.2 = ashr exact i32 %sext273, 16
  %sext274 = shl i32 %sub44.3, 16
  %conv90.2 = ashr exact i32 %sext274, 16
  %shr91.2 = ashr i32 %sext274, 17
  %add92.2 = add nsw i32 %shr91.2, %conv86.2
  %shr98.2 = ashr i32 %sext273, 17
  %sub103.2 = sub nsw i32 %shr98.2, %conv90.2
  %add104.2 = add nsw i32 %add71.2, 32
  %add105.2 = add nsw i32 %add104.2, %add92.2
  %add111.2 = add nsw i32 %sub81.2, 32
  %add112.2 = add nsw i32 %add111.2, %sub103.2
  %add119.2 = sub nsw i32 %add111.2, %sub103.2
  %add126.2 = sub nsw i32 %add104.2, %add92.2
  %sext275 = shl i32 %sub50, 16
  %conv66.3 = ashr exact i32 %sext275, 16
  %sext276 = shl i32 %sub50.2, 16
  %conv70.3 = ashr exact i32 %sext276, 16
  %add71.3 = add nsw i32 %conv70.3, %conv66.3
  %sub81.3 = sub nsw i32 %conv66.3, %conv70.3
  %sext277 = shl i32 %sub50.1, 16
  %conv86.3 = ashr exact i32 %sext277, 16
  %sext278 = shl i32 %sub50.3, 16
  %conv90.3 = ashr exact i32 %sext278, 16
  %shr91.3 = ashr i32 %sext278, 17
  %add92.3 = add nsw i32 %shr91.3, %conv86.3
  %shr98.3 = ashr i32 %sext277, 17
  %sub103.3 = sub nsw i32 %shr98.3, %conv90.3
  %add104.3 = add nsw i32 %add71.3, 32
  %add105.3 = add nsw i32 %add104.3, %add92.3
  %add111.3 = add nsw i32 %sub81.3, 32
  %add112.3 = add nsw i32 %add111.3, %sub103.3
  %add119.3 = sub nsw i32 %add111.3, %sub103.3
  %add126.3 = sub nsw i32 %add104.3, %add92.3
  %16 = load i8, ptr %p_dst, align 1
  %conv147 = zext i8 %16 to i32
  %conv152 = ashr i32 %add105, 6
  %add153 = add nsw i32 %conv152, %conv147
  %tobool.not.i = icmp ult i32 %add153, 256
  %17 = icmp sgt i32 %add153, 0
  %shr.i = sext i1 %17 to i32
  %cond.i = select i1 %tobool.not.i, i32 %add153, i32 %shr.i
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, ptr %p_dst, align 1
  %arrayidx146.1 = getelementptr inbounds i8, ptr %p_dst, i64 1
  %18 = load i8, ptr %arrayidx146.1, align 1
  %conv147.1 = zext i8 %18 to i32
  %conv152.1 = ashr i32 %add105.1, 6
  %add153.1 = add nsw i32 %conv152.1, %conv147.1
  %tobool.not.i.1 = icmp ult i32 %add153.1, 256
  %19 = icmp sgt i32 %add153.1, 0
  %shr.i.1 = sext i1 %19 to i32
  %cond.i.1 = select i1 %tobool.not.i.1, i32 %add153.1, i32 %shr.i.1
  %conv.i.1 = trunc i32 %cond.i.1 to i8
  store i8 %conv.i.1, ptr %arrayidx146.1, align 1
  %arrayidx146.2 = getelementptr inbounds i8, ptr %p_dst, i64 2
  %20 = load i8, ptr %arrayidx146.2, align 1
  %conv147.2 = zext i8 %20 to i32
  %conv152.2 = ashr i32 %add105.2, 6
  %add153.2 = add nsw i32 %conv152.2, %conv147.2
  %tobool.not.i.2 = icmp ult i32 %add153.2, 256
  %21 = icmp sgt i32 %add153.2, 0
  %shr.i.2 = sext i1 %21 to i32
  %cond.i.2 = select i1 %tobool.not.i.2, i32 %add153.2, i32 %shr.i.2
  %conv.i.2 = trunc i32 %cond.i.2 to i8
  store i8 %conv.i.2, ptr %arrayidx146.2, align 1
  %arrayidx146.3 = getelementptr inbounds i8, ptr %p_dst, i64 3
  %22 = load i8, ptr %arrayidx146.3, align 1
  %conv147.3 = zext i8 %22 to i32
  %conv152.3 = ashr i32 %add105.3, 6
  %add153.3 = add nsw i32 %conv152.3, %conv147.3
  %tobool.not.i.3 = icmp ult i32 %add153.3, 256
  %23 = icmp sgt i32 %add153.3, 0
  %shr.i.3 = sext i1 %23 to i32
  %cond.i.3 = select i1 %tobool.not.i.3, i32 %add153.3, i32 %shr.i.3
  %conv.i.3 = trunc i32 %cond.i.3 to i8
  store i8 %conv.i.3, ptr %arrayidx146.3, align 1
  %add.ptr = getelementptr inbounds i8, ptr %p_dst, i64 32
  %24 = load i8, ptr %add.ptr, align 1
  %conv147.1232 = zext i8 %24 to i32
  %conv152.1234 = ashr i32 %add112, 6
  %add153.1235 = add nsw i32 %conv152.1234, %conv147.1232
  %tobool.not.i.1236 = icmp ult i32 %add153.1235, 256
  %25 = icmp sgt i32 %add153.1235, 0
  %shr.i.1237 = sext i1 %25 to i32
  %cond.i.1238 = select i1 %tobool.not.i.1236, i32 %add153.1235, i32 %shr.i.1237
  %conv.i.1239 = trunc i32 %cond.i.1238 to i8
  store i8 %conv.i.1239, ptr %add.ptr, align 1
  %arrayidx146.1.1 = getelementptr inbounds i8, ptr %p_dst, i64 33
  %26 = load i8, ptr %arrayidx146.1.1, align 1
  %conv147.1.1 = zext i8 %26 to i32
  %conv152.1.1 = ashr i32 %add112.1, 6
  %add153.1.1 = add nsw i32 %conv152.1.1, %conv147.1.1
  %tobool.not.i.1.1 = icmp ult i32 %add153.1.1, 256
  %27 = icmp sgt i32 %add153.1.1, 0
  %shr.i.1.1 = sext i1 %27 to i32
  %cond.i.1.1 = select i1 %tobool.not.i.1.1, i32 %add153.1.1, i32 %shr.i.1.1
  %conv.i.1.1 = trunc i32 %cond.i.1.1 to i8
  store i8 %conv.i.1.1, ptr %arrayidx146.1.1, align 1
  %arrayidx146.2.1 = getelementptr inbounds i8, ptr %p_dst, i64 34
  %28 = load i8, ptr %arrayidx146.2.1, align 1
  %conv147.2.1 = zext i8 %28 to i32
  %conv152.2.1 = ashr i32 %add112.2, 6
  %add153.2.1 = add nsw i32 %conv152.2.1, %conv147.2.1
  %tobool.not.i.2.1 = icmp ult i32 %add153.2.1, 256
  %29 = icmp sgt i32 %add153.2.1, 0
  %shr.i.2.1 = sext i1 %29 to i32
  %cond.i.2.1 = select i1 %tobool.not.i.2.1, i32 %add153.2.1, i32 %shr.i.2.1
  %conv.i.2.1 = trunc i32 %cond.i.2.1 to i8
  store i8 %conv.i.2.1, ptr %arrayidx146.2.1, align 1
  %arrayidx146.3.1 = getelementptr inbounds i8, ptr %p_dst, i64 35
  %30 = load i8, ptr %arrayidx146.3.1, align 1
  %conv147.3.1 = zext i8 %30 to i32
  %conv152.3.1 = ashr i32 %add112.3, 6
  %add153.3.1 = add nsw i32 %conv152.3.1, %conv147.3.1
  %tobool.not.i.3.1 = icmp ult i32 %add153.3.1, 256
  %31 = icmp sgt i32 %add153.3.1, 0
  %shr.i.3.1 = sext i1 %31 to i32
  %cond.i.3.1 = select i1 %tobool.not.i.3.1, i32 %add153.3.1, i32 %shr.i.3.1
  %conv.i.3.1 = trunc i32 %cond.i.3.1 to i8
  store i8 %conv.i.3.1, ptr %arrayidx146.3.1, align 1
  %add.ptr.1 = getelementptr inbounds i8, ptr %p_dst, i64 64
  %32 = load i8, ptr %add.ptr.1, align 1
  %conv147.2240 = zext i8 %32 to i32
  %conv152.2242 = ashr i32 %add119, 6
  %add153.2243 = add nsw i32 %conv152.2242, %conv147.2240
  %tobool.not.i.2244 = icmp ult i32 %add153.2243, 256
  %33 = icmp sgt i32 %add153.2243, 0
  %shr.i.2245 = sext i1 %33 to i32
  %cond.i.2246 = select i1 %tobool.not.i.2244, i32 %add153.2243, i32 %shr.i.2245
  %conv.i.2247 = trunc i32 %cond.i.2246 to i8
  store i8 %conv.i.2247, ptr %add.ptr.1, align 1
  %arrayidx146.1.2 = getelementptr inbounds i8, ptr %p_dst, i64 65
  %34 = load i8, ptr %arrayidx146.1.2, align 1
  %conv147.1.2 = zext i8 %34 to i32
  %conv152.1.2 = ashr i32 %add119.1, 6
  %add153.1.2 = add nsw i32 %conv152.1.2, %conv147.1.2
  %tobool.not.i.1.2 = icmp ult i32 %add153.1.2, 256
  %35 = icmp sgt i32 %add153.1.2, 0
  %shr.i.1.2 = sext i1 %35 to i32
  %cond.i.1.2 = select i1 %tobool.not.i.1.2, i32 %add153.1.2, i32 %shr.i.1.2
  %conv.i.1.2 = trunc i32 %cond.i.1.2 to i8
  store i8 %conv.i.1.2, ptr %arrayidx146.1.2, align 1
  %arrayidx146.2.2 = getelementptr inbounds i8, ptr %p_dst, i64 66
  %36 = load i8, ptr %arrayidx146.2.2, align 1
  %conv147.2.2 = zext i8 %36 to i32
  %conv152.2.2 = ashr i32 %add119.2, 6
  %add153.2.2 = add nsw i32 %conv152.2.2, %conv147.2.2
  %tobool.not.i.2.2 = icmp ult i32 %add153.2.2, 256
  %37 = icmp sgt i32 %add153.2.2, 0
  %shr.i.2.2 = sext i1 %37 to i32
  %cond.i.2.2 = select i1 %tobool.not.i.2.2, i32 %add153.2.2, i32 %shr.i.2.2
  %conv.i.2.2 = trunc i32 %cond.i.2.2 to i8
  store i8 %conv.i.2.2, ptr %arrayidx146.2.2, align 1
  %arrayidx146.3.2 = getelementptr inbounds i8, ptr %p_dst, i64 67
  %38 = load i8, ptr %arrayidx146.3.2, align 1
  %conv147.3.2 = zext i8 %38 to i32
  %conv152.3.2 = ashr i32 %add119.3, 6
  %add153.3.2 = add nsw i32 %conv152.3.2, %conv147.3.2
  %tobool.not.i.3.2 = icmp ult i32 %add153.3.2, 256
  %39 = icmp sgt i32 %add153.3.2, 0
  %shr.i.3.2 = sext i1 %39 to i32
  %cond.i.3.2 = select i1 %tobool.not.i.3.2, i32 %add153.3.2, i32 %shr.i.3.2
  %conv.i.3.2 = trunc i32 %cond.i.3.2 to i8
  store i8 %conv.i.3.2, ptr %arrayidx146.3.2, align 1
  %add.ptr.2 = getelementptr inbounds i8, ptr %p_dst, i64 96
  %40 = load i8, ptr %add.ptr.2, align 1
  %conv147.3248 = zext i8 %40 to i32
  %conv152.3250 = ashr i32 %add126, 6
  %add153.3251 = add nsw i32 %conv152.3250, %conv147.3248
  %tobool.not.i.3252 = icmp ult i32 %add153.3251, 256
  %41 = icmp sgt i32 %add153.3251, 0
  %shr.i.3253 = sext i1 %41 to i32
  %cond.i.3254 = select i1 %tobool.not.i.3252, i32 %add153.3251, i32 %shr.i.3253
  %conv.i.3255 = trunc i32 %cond.i.3254 to i8
  store i8 %conv.i.3255, ptr %add.ptr.2, align 1
  %arrayidx146.1.3 = getelementptr inbounds i8, ptr %p_dst, i64 97
  %42 = load i8, ptr %arrayidx146.1.3, align 1
  %conv147.1.3 = zext i8 %42 to i32
  %conv152.1.3 = ashr i32 %add126.1, 6
  %add153.1.3 = add nsw i32 %conv152.1.3, %conv147.1.3
  %tobool.not.i.1.3 = icmp ult i32 %add153.1.3, 256
  %43 = icmp sgt i32 %add153.1.3, 0
  %shr.i.1.3 = sext i1 %43 to i32
  %cond.i.1.3 = select i1 %tobool.not.i.1.3, i32 %add153.1.3, i32 %shr.i.1.3
  %conv.i.1.3 = trunc i32 %cond.i.1.3 to i8
  store i8 %conv.i.1.3, ptr %arrayidx146.1.3, align 1
  %arrayidx146.2.3 = getelementptr inbounds i8, ptr %p_dst, i64 98
  %44 = load i8, ptr %arrayidx146.2.3, align 1
  %conv147.2.3 = zext i8 %44 to i32
  %conv152.2.3 = ashr i32 %add126.2, 6
  %add153.2.3 = add nsw i32 %conv152.2.3, %conv147.2.3
  %tobool.not.i.2.3 = icmp ult i32 %add153.2.3, 256
  %45 = icmp sgt i32 %add153.2.3, 0
  %shr.i.2.3 = sext i1 %45 to i32
  %cond.i.2.3 = select i1 %tobool.not.i.2.3, i32 %add153.2.3, i32 %shr.i.2.3
  %conv.i.2.3 = trunc i32 %cond.i.2.3 to i8
  store i8 %conv.i.2.3, ptr %arrayidx146.2.3, align 1
  %arrayidx146.3.3 = getelementptr inbounds i8, ptr %p_dst, i64 99
  %46 = load i8, ptr %arrayidx146.3.3, align 1
  %conv147.3.3 = zext i8 %46 to i32
  %conv152.3.3 = ashr i32 %add126.3, 6
  %add153.3.3 = add nsw i32 %conv152.3.3, %conv147.3.3
  %tobool.not.i.3.3 = icmp ult i32 %add153.3.3, 256
  %47 = icmp sgt i32 %add153.3.3, 0
  %shr.i.3.3 = sext i1 %47 to i32
  %cond.i.3.3 = select i1 %tobool.not.i.3.3, i32 %add153.3.3, i32 %shr.i.3.3
  %conv.i.3.3 = trunc i32 %cond.i.3.3 to i8
  store i8 %conv.i.3.3, ptr %arrayidx146.3.3, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @sub8x8_dct(ptr nocapture noundef writeonly %dct, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2) #1 {
entry:
  tail call void @sub4x4_dct(ptr noundef %dct, ptr noundef %pix1, ptr noundef %pix2)
  %arrayidx3 = getelementptr inbounds i8, ptr %dct, i64 32
  %arrayidx5 = getelementptr inbounds i8, ptr %pix1, i64 4
  %arrayidx6 = getelementptr inbounds i8, ptr %pix2, i64 4
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx3, ptr noundef nonnull %arrayidx5, ptr noundef nonnull %arrayidx6)
  %arrayidx7 = getelementptr inbounds i8, ptr %dct, i64 64
  %arrayidx9 = getelementptr inbounds i8, ptr %pix1, i64 64
  %arrayidx10 = getelementptr inbounds i8, ptr %pix2, i64 128
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx7, ptr noundef nonnull %arrayidx9, ptr noundef nonnull %arrayidx10)
  %arrayidx11 = getelementptr inbounds i8, ptr %dct, i64 96
  %arrayidx13 = getelementptr inbounds i8, ptr %pix1, i64 68
  %arrayidx14 = getelementptr inbounds i8, ptr %pix2, i64 132
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx11, ptr noundef nonnull %arrayidx13, ptr noundef nonnull %arrayidx14)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @sub8x8_dct_dc(ptr nocapture noundef writeonly %dct, ptr noundef readonly %pix1, ptr noundef readonly %pix2) #1 {
entry:
  %0 = load i8, ptr %pix1, align 1
  %conv.us.i.i = zext i8 %0 to i16
  %1 = load i8, ptr %pix2, align 1
  %conv7.us.i.i = zext i8 %1 to i16
  %arrayidx.us.i.1.i = getelementptr inbounds i8, ptr %pix1, i64 1
  %2 = load i8, ptr %arrayidx.us.i.1.i, align 1
  %conv.us.i.1.i = zext i8 %2 to i16
  %arrayidx6.us.i.1.i = getelementptr inbounds i8, ptr %pix2, i64 1
  %3 = load i8, ptr %arrayidx6.us.i.1.i, align 1
  %conv7.us.i.1.i = zext i8 %3 to i16
  %arrayidx.us.i.2.i = getelementptr inbounds i8, ptr %pix1, i64 2
  %4 = load i8, ptr %arrayidx.us.i.2.i, align 1
  %conv.us.i.2.i = zext i8 %4 to i16
  %arrayidx6.us.i.2.i = getelementptr inbounds i8, ptr %pix2, i64 2
  %5 = load i8, ptr %arrayidx6.us.i.2.i, align 1
  %conv7.us.i.2.i = zext i8 %5 to i16
  %arrayidx.us.i.3.i = getelementptr inbounds i8, ptr %pix1, i64 3
  %6 = load i8, ptr %arrayidx.us.i.3.i, align 1
  %conv.us.i.3.i = zext i8 %6 to i16
  %arrayidx6.us.i.3.i = getelementptr inbounds i8, ptr %pix2, i64 3
  %7 = load i8, ptr %arrayidx6.us.i.3.i, align 1
  %conv7.us.i.3.i = zext i8 %7 to i16
  %add.ptr.us.i.i = getelementptr inbounds i8, ptr %pix1, i64 16
  %add.ptr12.us.i.i = getelementptr inbounds i8, ptr %pix2, i64 32
  %8 = load i8, ptr %add.ptr.us.i.i, align 1
  %conv.us.i.148.i = zext i8 %8 to i16
  %9 = load i8, ptr %add.ptr12.us.i.i, align 1
  %conv7.us.i.149.i = zext i8 %9 to i16
  %arrayidx.us.i.1.1.i = getelementptr inbounds i8, ptr %pix1, i64 17
  %10 = load i8, ptr %arrayidx.us.i.1.1.i, align 1
  %conv.us.i.1.1.i = zext i8 %10 to i16
  %arrayidx6.us.i.1.1.i = getelementptr inbounds i8, ptr %pix2, i64 33
  %11 = load i8, ptr %arrayidx6.us.i.1.1.i, align 1
  %conv7.us.i.1.1.i = zext i8 %11 to i16
  %arrayidx.us.i.2.1.i = getelementptr inbounds i8, ptr %pix1, i64 18
  %12 = load i8, ptr %arrayidx.us.i.2.1.i, align 1
  %conv.us.i.2.1.i = zext i8 %12 to i16
  %arrayidx6.us.i.2.1.i = getelementptr inbounds i8, ptr %pix2, i64 34
  %13 = load i8, ptr %arrayidx6.us.i.2.1.i, align 1
  %conv7.us.i.2.1.i = zext i8 %13 to i16
  %arrayidx.us.i.3.1.i = getelementptr inbounds i8, ptr %pix1, i64 19
  %14 = load i8, ptr %arrayidx.us.i.3.1.i, align 1
  %conv.us.i.3.1.i = zext i8 %14 to i16
  %arrayidx6.us.i.3.1.i = getelementptr inbounds i8, ptr %pix2, i64 35
  %15 = load i8, ptr %arrayidx6.us.i.3.1.i, align 1
  %conv7.us.i.3.1.i = zext i8 %15 to i16
  %add.ptr.us.i.1.i = getelementptr inbounds i8, ptr %pix1, i64 32
  %add.ptr12.us.i.1.i = getelementptr inbounds i8, ptr %pix2, i64 64
  %16 = load i8, ptr %add.ptr.us.i.1.i, align 1
  %conv.us.i.251.i = zext i8 %16 to i16
  %17 = load i8, ptr %add.ptr12.us.i.1.i, align 1
  %conv7.us.i.252.i = zext i8 %17 to i16
  %arrayidx.us.i.1.2.i = getelementptr inbounds i8, ptr %pix1, i64 33
  %18 = load i8, ptr %arrayidx.us.i.1.2.i, align 1
  %conv.us.i.1.2.i = zext i8 %18 to i16
  %arrayidx6.us.i.1.2.i = getelementptr inbounds i8, ptr %pix2, i64 65
  %19 = load i8, ptr %arrayidx6.us.i.1.2.i, align 1
  %conv7.us.i.1.2.i = zext i8 %19 to i16
  %arrayidx.us.i.2.2.i = getelementptr inbounds i8, ptr %pix1, i64 34
  %20 = load i8, ptr %arrayidx.us.i.2.2.i, align 1
  %conv.us.i.2.2.i = zext i8 %20 to i16
  %arrayidx6.us.i.2.2.i = getelementptr inbounds i8, ptr %pix2, i64 66
  %21 = load i8, ptr %arrayidx6.us.i.2.2.i, align 1
  %conv7.us.i.2.2.i = zext i8 %21 to i16
  %arrayidx.us.i.3.2.i = getelementptr inbounds i8, ptr %pix1, i64 35
  %22 = load i8, ptr %arrayidx.us.i.3.2.i, align 1
  %conv.us.i.3.2.i = zext i8 %22 to i16
  %arrayidx6.us.i.3.2.i = getelementptr inbounds i8, ptr %pix2, i64 67
  %23 = load i8, ptr %arrayidx6.us.i.3.2.i, align 1
  %conv7.us.i.3.2.i = zext i8 %23 to i16
  %add.ptr.us.i.2.i = getelementptr inbounds i8, ptr %pix1, i64 48
  %add.ptr12.us.i.2.i = getelementptr inbounds i8, ptr %pix2, i64 96
  %24 = load i8, ptr %add.ptr.us.i.2.i, align 1
  %conv.us.i.354.i = zext i8 %24 to i16
  %25 = load i8, ptr %add.ptr12.us.i.2.i, align 1
  %conv7.us.i.355.i = zext i8 %25 to i16
  %arrayidx.us.i.1.3.i = getelementptr inbounds i8, ptr %pix1, i64 49
  %26 = load i8, ptr %arrayidx.us.i.1.3.i, align 1
  %conv.us.i.1.3.i = zext i8 %26 to i16
  %arrayidx6.us.i.1.3.i = getelementptr inbounds i8, ptr %pix2, i64 97
  %27 = load i8, ptr %arrayidx6.us.i.1.3.i, align 1
  %conv7.us.i.1.3.i = zext i8 %27 to i16
  %arrayidx.us.i.2.3.i = getelementptr inbounds i8, ptr %pix1, i64 50
  %28 = load i8, ptr %arrayidx.us.i.2.3.i, align 1
  %conv.us.i.2.3.i = zext i8 %28 to i16
  %arrayidx6.us.i.2.3.i = getelementptr inbounds i8, ptr %pix2, i64 98
  %29 = load i8, ptr %arrayidx6.us.i.2.3.i, align 1
  %conv7.us.i.2.3.i = zext i8 %29 to i16
  %arrayidx.us.i.3.3.i = getelementptr inbounds i8, ptr %pix1, i64 51
  %30 = load i8, ptr %arrayidx.us.i.3.3.i, align 1
  %conv.us.i.3.3.i = zext i8 %30 to i16
  %arrayidx6.us.i.3.3.i = getelementptr inbounds i8, ptr %pix2, i64 99
  %31 = load i8, ptr %arrayidx6.us.i.3.3.i, align 1
  %conv7.us.i.3.3.i = zext i8 %31 to i16
  %sub.us.i.3.3.i = sub nsw i16 %conv.us.i.3.3.i, %conv7.us.i.3.3.i
  %32 = add nuw nsw i16 %conv.us.i.i, %conv.us.i.1.i
  %33 = add nuw nsw i16 %conv7.us.i.i, %conv7.us.i.1.i
  %34 = add nuw nsw i16 %32, %conv.us.i.2.i
  %35 = add nuw nsw i16 %33, %conv7.us.i.2.i
  %36 = add nuw nsw i16 %34, %conv.us.i.3.i
  %37 = add nuw nsw i16 %35, %conv7.us.i.3.i
  %38 = add nuw nsw i16 %36, %conv.us.i.148.i
  %39 = add nuw nsw i16 %37, %conv7.us.i.149.i
  %40 = add nuw nsw i16 %38, %conv.us.i.1.1.i
  %41 = add nuw nsw i16 %39, %conv7.us.i.1.1.i
  %42 = add nuw nsw i16 %40, %conv.us.i.2.1.i
  %43 = add nuw nsw i16 %41, %conv7.us.i.2.1.i
  %44 = add nuw nsw i16 %42, %conv.us.i.3.1.i
  %45 = add nuw nsw i16 %43, %conv7.us.i.3.1.i
  %46 = add nuw nsw i16 %44, %conv.us.i.251.i
  %47 = add nuw nsw i16 %45, %conv7.us.i.252.i
  %48 = add nuw nsw i16 %46, %conv.us.i.1.2.i
  %49 = add nuw nsw i16 %47, %conv7.us.i.1.2.i
  %50 = add nuw nsw i16 %48, %conv.us.i.2.2.i
  %51 = add nuw nsw i16 %49, %conv7.us.i.2.2.i
  %52 = add nuw nsw i16 %50, %conv.us.i.3.2.i
  %53 = add nuw nsw i16 %51, %conv7.us.i.3.2.i
  %54 = add nuw nsw i16 %52, %conv.us.i.354.i
  %55 = add nuw nsw i16 %53, %conv7.us.i.355.i
  %56 = add nuw nsw i16 %54, %conv.us.i.1.3.i
  %57 = add nuw nsw i16 %55, %conv7.us.i.1.3.i
  %58 = add nuw nsw i16 %56, %conv.us.i.2.3.i
  %59 = add nuw nsw i16 %57, %conv7.us.i.2.3.i
  %add20.i = sub nsw i16 %58, %59
  %add45.i = add nsw i16 %add20.i, %sub.us.i.3.3.i
  store i16 %add45.i, ptr %dct, align 2
  %arrayidx3 = getelementptr inbounds i8, ptr %pix1, i64 4
  %arrayidx4 = getelementptr inbounds i8, ptr %pix2, i64 4
  %60 = load i8, ptr %arrayidx3, align 1
  %conv.us.i.i73 = zext i8 %60 to i16
  %61 = load i8, ptr %arrayidx4, align 1
  %conv7.us.i.i74 = zext i8 %61 to i16
  %arrayidx.us.i.1.i76 = getelementptr inbounds i8, ptr %pix1, i64 5
  %62 = load i8, ptr %arrayidx.us.i.1.i76, align 1
  %conv.us.i.1.i77 = zext i8 %62 to i16
  %arrayidx6.us.i.1.i78 = getelementptr inbounds i8, ptr %pix2, i64 5
  %63 = load i8, ptr %arrayidx6.us.i.1.i78, align 1
  %conv7.us.i.1.i79 = zext i8 %63 to i16
  %arrayidx.us.i.2.i81 = getelementptr inbounds i8, ptr %pix1, i64 6
  %64 = load i8, ptr %arrayidx.us.i.2.i81, align 1
  %conv.us.i.2.i82 = zext i8 %64 to i16
  %arrayidx6.us.i.2.i83 = getelementptr inbounds i8, ptr %pix2, i64 6
  %65 = load i8, ptr %arrayidx6.us.i.2.i83, align 1
  %conv7.us.i.2.i84 = zext i8 %65 to i16
  %arrayidx.us.i.3.i86 = getelementptr inbounds i8, ptr %pix1, i64 7
  %66 = load i8, ptr %arrayidx.us.i.3.i86, align 1
  %conv.us.i.3.i87 = zext i8 %66 to i16
  %arrayidx6.us.i.3.i88 = getelementptr inbounds i8, ptr %pix2, i64 7
  %67 = load i8, ptr %arrayidx6.us.i.3.i88, align 1
  %conv7.us.i.3.i89 = zext i8 %67 to i16
  %add.ptr.us.i.i91 = getelementptr inbounds i8, ptr %pix1, i64 20
  %add.ptr12.us.i.i92 = getelementptr inbounds i8, ptr %pix2, i64 36
  %68 = load i8, ptr %add.ptr.us.i.i91, align 1
  %conv.us.i.148.i93 = zext i8 %68 to i16
  %69 = load i8, ptr %add.ptr12.us.i.i92, align 1
  %conv7.us.i.149.i94 = zext i8 %69 to i16
  %arrayidx.us.i.1.1.i96 = getelementptr inbounds i8, ptr %pix1, i64 21
  %70 = load i8, ptr %arrayidx.us.i.1.1.i96, align 1
  %conv.us.i.1.1.i97 = zext i8 %70 to i16
  %arrayidx6.us.i.1.1.i98 = getelementptr inbounds i8, ptr %pix2, i64 37
  %71 = load i8, ptr %arrayidx6.us.i.1.1.i98, align 1
  %conv7.us.i.1.1.i99 = zext i8 %71 to i16
  %arrayidx.us.i.2.1.i101 = getelementptr inbounds i8, ptr %pix1, i64 22
  %72 = load i8, ptr %arrayidx.us.i.2.1.i101, align 1
  %conv.us.i.2.1.i102 = zext i8 %72 to i16
  %arrayidx6.us.i.2.1.i103 = getelementptr inbounds i8, ptr %pix2, i64 38
  %73 = load i8, ptr %arrayidx6.us.i.2.1.i103, align 1
  %conv7.us.i.2.1.i104 = zext i8 %73 to i16
  %arrayidx.us.i.3.1.i106 = getelementptr inbounds i8, ptr %pix1, i64 23
  %74 = load i8, ptr %arrayidx.us.i.3.1.i106, align 1
  %conv.us.i.3.1.i107 = zext i8 %74 to i16
  %arrayidx6.us.i.3.1.i108 = getelementptr inbounds i8, ptr %pix2, i64 39
  %75 = load i8, ptr %arrayidx6.us.i.3.1.i108, align 1
  %conv7.us.i.3.1.i109 = zext i8 %75 to i16
  %add.ptr.us.i.1.i111 = getelementptr inbounds i8, ptr %pix1, i64 36
  %add.ptr12.us.i.1.i112 = getelementptr inbounds i8, ptr %pix2, i64 68
  %76 = load i8, ptr %add.ptr.us.i.1.i111, align 1
  %conv.us.i.251.i113 = zext i8 %76 to i16
  %77 = load i8, ptr %add.ptr12.us.i.1.i112, align 1
  %conv7.us.i.252.i114 = zext i8 %77 to i16
  %arrayidx.us.i.1.2.i116 = getelementptr inbounds i8, ptr %pix1, i64 37
  %78 = load i8, ptr %arrayidx.us.i.1.2.i116, align 1
  %conv.us.i.1.2.i117 = zext i8 %78 to i16
  %arrayidx6.us.i.1.2.i118 = getelementptr inbounds i8, ptr %pix2, i64 69
  %79 = load i8, ptr %arrayidx6.us.i.1.2.i118, align 1
  %conv7.us.i.1.2.i119 = zext i8 %79 to i16
  %arrayidx.us.i.2.2.i121 = getelementptr inbounds i8, ptr %pix1, i64 38
  %80 = load i8, ptr %arrayidx.us.i.2.2.i121, align 1
  %conv.us.i.2.2.i122 = zext i8 %80 to i16
  %arrayidx6.us.i.2.2.i123 = getelementptr inbounds i8, ptr %pix2, i64 70
  %81 = load i8, ptr %arrayidx6.us.i.2.2.i123, align 1
  %conv7.us.i.2.2.i124 = zext i8 %81 to i16
  %arrayidx.us.i.3.2.i126 = getelementptr inbounds i8, ptr %pix1, i64 39
  %82 = load i8, ptr %arrayidx.us.i.3.2.i126, align 1
  %conv.us.i.3.2.i127 = zext i8 %82 to i16
  %arrayidx6.us.i.3.2.i128 = getelementptr inbounds i8, ptr %pix2, i64 71
  %83 = load i8, ptr %arrayidx6.us.i.3.2.i128, align 1
  %conv7.us.i.3.2.i129 = zext i8 %83 to i16
  %add.ptr.us.i.2.i131 = getelementptr inbounds i8, ptr %pix1, i64 52
  %add.ptr12.us.i.2.i132 = getelementptr inbounds i8, ptr %pix2, i64 100
  %84 = load i8, ptr %add.ptr.us.i.2.i131, align 1
  %conv.us.i.354.i133 = zext i8 %84 to i16
  %85 = load i8, ptr %add.ptr12.us.i.2.i132, align 1
  %conv7.us.i.355.i134 = zext i8 %85 to i16
  %arrayidx.us.i.1.3.i136 = getelementptr inbounds i8, ptr %pix1, i64 53
  %86 = load i8, ptr %arrayidx.us.i.1.3.i136, align 1
  %conv.us.i.1.3.i137 = zext i8 %86 to i16
  %arrayidx6.us.i.1.3.i138 = getelementptr inbounds i8, ptr %pix2, i64 101
  %87 = load i8, ptr %arrayidx6.us.i.1.3.i138, align 1
  %conv7.us.i.1.3.i139 = zext i8 %87 to i16
  %arrayidx.us.i.2.3.i141 = getelementptr inbounds i8, ptr %pix1, i64 54
  %88 = load i8, ptr %arrayidx.us.i.2.3.i141, align 1
  %conv.us.i.2.3.i142 = zext i8 %88 to i16
  %arrayidx6.us.i.2.3.i143 = getelementptr inbounds i8, ptr %pix2, i64 102
  %89 = load i8, ptr %arrayidx6.us.i.2.3.i143, align 1
  %conv7.us.i.2.3.i144 = zext i8 %89 to i16
  %arrayidx.us.i.3.3.i146 = getelementptr inbounds i8, ptr %pix1, i64 55
  %90 = load i8, ptr %arrayidx.us.i.3.3.i146, align 1
  %conv.us.i.3.3.i147 = zext i8 %90 to i16
  %arrayidx6.us.i.3.3.i148 = getelementptr inbounds i8, ptr %pix2, i64 103
  %91 = load i8, ptr %arrayidx6.us.i.3.3.i148, align 1
  %conv7.us.i.3.3.i149 = zext i8 %91 to i16
  %sub.us.i.3.3.i150 = sub nsw i16 %conv.us.i.3.3.i147, %conv7.us.i.3.3.i149
  %92 = add nuw nsw i16 %conv.us.i.i73, %conv.us.i.1.i77
  %93 = add nuw nsw i16 %conv7.us.i.i74, %conv7.us.i.1.i79
  %94 = add nuw nsw i16 %92, %conv.us.i.2.i82
  %95 = add nuw nsw i16 %93, %conv7.us.i.2.i84
  %96 = add nuw nsw i16 %94, %conv.us.i.3.i87
  %97 = add nuw nsw i16 %95, %conv7.us.i.3.i89
  %98 = add nuw nsw i16 %96, %conv.us.i.148.i93
  %99 = add nuw nsw i16 %97, %conv7.us.i.149.i94
  %100 = add nuw nsw i16 %98, %conv.us.i.1.1.i97
  %101 = add nuw nsw i16 %99, %conv7.us.i.1.1.i99
  %102 = add nuw nsw i16 %100, %conv.us.i.2.1.i102
  %103 = add nuw nsw i16 %101, %conv7.us.i.2.1.i104
  %104 = add nuw nsw i16 %102, %conv.us.i.3.1.i107
  %105 = add nuw nsw i16 %103, %conv7.us.i.3.1.i109
  %106 = add nuw nsw i16 %104, %conv.us.i.251.i113
  %107 = add nuw nsw i16 %105, %conv7.us.i.252.i114
  %108 = add nuw nsw i16 %106, %conv.us.i.1.2.i117
  %109 = add nuw nsw i16 %107, %conv7.us.i.1.2.i119
  %110 = add nuw nsw i16 %108, %conv.us.i.2.2.i122
  %111 = add nuw nsw i16 %109, %conv7.us.i.2.2.i124
  %112 = add nuw nsw i16 %110, %conv.us.i.3.2.i127
  %113 = add nuw nsw i16 %111, %conv7.us.i.3.2.i129
  %114 = add nuw nsw i16 %112, %conv.us.i.354.i133
  %115 = add nuw nsw i16 %113, %conv7.us.i.355.i134
  %116 = add nuw nsw i16 %114, %conv.us.i.1.3.i137
  %117 = add nuw nsw i16 %115, %conv7.us.i.1.3.i139
  %118 = add nuw nsw i16 %116, %conv.us.i.2.3.i142
  %119 = add nuw nsw i16 %117, %conv7.us.i.2.3.i144
  %add20.i164 = sub nsw i16 %118, %119
  %add45.i165 = add nsw i16 %add20.i164, %sub.us.i.3.3.i150
  %arrayidx7 = getelementptr inbounds i8, ptr %dct, i64 2
  store i16 %add45.i165, ptr %arrayidx7, align 2
  %arrayidx8 = getelementptr inbounds i8, ptr %pix1, i64 64
  %arrayidx9 = getelementptr inbounds i8, ptr %pix2, i64 128
  %120 = load i8, ptr %arrayidx8, align 1
  %conv.us.i.i166 = zext i8 %120 to i16
  %121 = load i8, ptr %arrayidx9, align 1
  %conv7.us.i.i167 = zext i8 %121 to i16
  %arrayidx.us.i.1.i169 = getelementptr inbounds i8, ptr %pix1, i64 65
  %122 = load i8, ptr %arrayidx.us.i.1.i169, align 1
  %conv.us.i.1.i170 = zext i8 %122 to i16
  %arrayidx6.us.i.1.i171 = getelementptr inbounds i8, ptr %pix2, i64 129
  %123 = load i8, ptr %arrayidx6.us.i.1.i171, align 1
  %conv7.us.i.1.i172 = zext i8 %123 to i16
  %arrayidx.us.i.2.i174 = getelementptr inbounds i8, ptr %pix1, i64 66
  %124 = load i8, ptr %arrayidx.us.i.2.i174, align 1
  %conv.us.i.2.i175 = zext i8 %124 to i16
  %arrayidx6.us.i.2.i176 = getelementptr inbounds i8, ptr %pix2, i64 130
  %125 = load i8, ptr %arrayidx6.us.i.2.i176, align 1
  %conv7.us.i.2.i177 = zext i8 %125 to i16
  %arrayidx.us.i.3.i179 = getelementptr inbounds i8, ptr %pix1, i64 67
  %126 = load i8, ptr %arrayidx.us.i.3.i179, align 1
  %conv.us.i.3.i180 = zext i8 %126 to i16
  %arrayidx6.us.i.3.i181 = getelementptr inbounds i8, ptr %pix2, i64 131
  %127 = load i8, ptr %arrayidx6.us.i.3.i181, align 1
  %conv7.us.i.3.i182 = zext i8 %127 to i16
  %add.ptr.us.i.i184 = getelementptr inbounds i8, ptr %pix1, i64 80
  %add.ptr12.us.i.i185 = getelementptr inbounds i8, ptr %pix2, i64 160
  %128 = load i8, ptr %add.ptr.us.i.i184, align 1
  %conv.us.i.148.i186 = zext i8 %128 to i16
  %129 = load i8, ptr %add.ptr12.us.i.i185, align 1
  %conv7.us.i.149.i187 = zext i8 %129 to i16
  %arrayidx.us.i.1.1.i189 = getelementptr inbounds i8, ptr %pix1, i64 81
  %130 = load i8, ptr %arrayidx.us.i.1.1.i189, align 1
  %conv.us.i.1.1.i190 = zext i8 %130 to i16
  %arrayidx6.us.i.1.1.i191 = getelementptr inbounds i8, ptr %pix2, i64 161
  %131 = load i8, ptr %arrayidx6.us.i.1.1.i191, align 1
  %conv7.us.i.1.1.i192 = zext i8 %131 to i16
  %arrayidx.us.i.2.1.i194 = getelementptr inbounds i8, ptr %pix1, i64 82
  %132 = load i8, ptr %arrayidx.us.i.2.1.i194, align 1
  %conv.us.i.2.1.i195 = zext i8 %132 to i16
  %arrayidx6.us.i.2.1.i196 = getelementptr inbounds i8, ptr %pix2, i64 162
  %133 = load i8, ptr %arrayidx6.us.i.2.1.i196, align 1
  %conv7.us.i.2.1.i197 = zext i8 %133 to i16
  %arrayidx.us.i.3.1.i199 = getelementptr inbounds i8, ptr %pix1, i64 83
  %134 = load i8, ptr %arrayidx.us.i.3.1.i199, align 1
  %conv.us.i.3.1.i200 = zext i8 %134 to i16
  %arrayidx6.us.i.3.1.i201 = getelementptr inbounds i8, ptr %pix2, i64 163
  %135 = load i8, ptr %arrayidx6.us.i.3.1.i201, align 1
  %conv7.us.i.3.1.i202 = zext i8 %135 to i16
  %add.ptr.us.i.1.i204 = getelementptr inbounds i8, ptr %pix1, i64 96
  %add.ptr12.us.i.1.i205 = getelementptr inbounds i8, ptr %pix2, i64 192
  %136 = load i8, ptr %add.ptr.us.i.1.i204, align 1
  %conv.us.i.251.i206 = zext i8 %136 to i16
  %137 = load i8, ptr %add.ptr12.us.i.1.i205, align 1
  %conv7.us.i.252.i207 = zext i8 %137 to i16
  %arrayidx.us.i.1.2.i209 = getelementptr inbounds i8, ptr %pix1, i64 97
  %138 = load i8, ptr %arrayidx.us.i.1.2.i209, align 1
  %conv.us.i.1.2.i210 = zext i8 %138 to i16
  %arrayidx6.us.i.1.2.i211 = getelementptr inbounds i8, ptr %pix2, i64 193
  %139 = load i8, ptr %arrayidx6.us.i.1.2.i211, align 1
  %conv7.us.i.1.2.i212 = zext i8 %139 to i16
  %arrayidx.us.i.2.2.i214 = getelementptr inbounds i8, ptr %pix1, i64 98
  %140 = load i8, ptr %arrayidx.us.i.2.2.i214, align 1
  %conv.us.i.2.2.i215 = zext i8 %140 to i16
  %arrayidx6.us.i.2.2.i216 = getelementptr inbounds i8, ptr %pix2, i64 194
  %141 = load i8, ptr %arrayidx6.us.i.2.2.i216, align 1
  %conv7.us.i.2.2.i217 = zext i8 %141 to i16
  %arrayidx.us.i.3.2.i219 = getelementptr inbounds i8, ptr %pix1, i64 99
  %142 = load i8, ptr %arrayidx.us.i.3.2.i219, align 1
  %conv.us.i.3.2.i220 = zext i8 %142 to i16
  %arrayidx6.us.i.3.2.i221 = getelementptr inbounds i8, ptr %pix2, i64 195
  %143 = load i8, ptr %arrayidx6.us.i.3.2.i221, align 1
  %conv7.us.i.3.2.i222 = zext i8 %143 to i16
  %add.ptr.us.i.2.i224 = getelementptr inbounds i8, ptr %pix1, i64 112
  %add.ptr12.us.i.2.i225 = getelementptr inbounds i8, ptr %pix2, i64 224
  %144 = load i8, ptr %add.ptr.us.i.2.i224, align 1
  %conv.us.i.354.i226 = zext i8 %144 to i16
  %145 = load i8, ptr %add.ptr12.us.i.2.i225, align 1
  %conv7.us.i.355.i227 = zext i8 %145 to i16
  %arrayidx.us.i.1.3.i229 = getelementptr inbounds i8, ptr %pix1, i64 113
  %146 = load i8, ptr %arrayidx.us.i.1.3.i229, align 1
  %conv.us.i.1.3.i230 = zext i8 %146 to i16
  %arrayidx6.us.i.1.3.i231 = getelementptr inbounds i8, ptr %pix2, i64 225
  %147 = load i8, ptr %arrayidx6.us.i.1.3.i231, align 1
  %conv7.us.i.1.3.i232 = zext i8 %147 to i16
  %arrayidx.us.i.2.3.i234 = getelementptr inbounds i8, ptr %pix1, i64 114
  %148 = load i8, ptr %arrayidx.us.i.2.3.i234, align 1
  %conv.us.i.2.3.i235 = zext i8 %148 to i16
  %arrayidx6.us.i.2.3.i236 = getelementptr inbounds i8, ptr %pix2, i64 226
  %149 = load i8, ptr %arrayidx6.us.i.2.3.i236, align 1
  %conv7.us.i.2.3.i237 = zext i8 %149 to i16
  %arrayidx.us.i.3.3.i239 = getelementptr inbounds i8, ptr %pix1, i64 115
  %150 = load i8, ptr %arrayidx.us.i.3.3.i239, align 1
  %conv.us.i.3.3.i240 = zext i8 %150 to i16
  %arrayidx6.us.i.3.3.i241 = getelementptr inbounds i8, ptr %pix2, i64 227
  %151 = load i8, ptr %arrayidx6.us.i.3.3.i241, align 1
  %conv7.us.i.3.3.i242 = zext i8 %151 to i16
  %sub.us.i.3.3.i243 = sub nsw i16 %conv.us.i.3.3.i240, %conv7.us.i.3.3.i242
  %152 = add nuw nsw i16 %conv.us.i.i166, %conv.us.i.1.i170
  %153 = add nuw nsw i16 %conv7.us.i.i167, %conv7.us.i.1.i172
  %154 = add nuw nsw i16 %152, %conv.us.i.2.i175
  %155 = add nuw nsw i16 %153, %conv7.us.i.2.i177
  %156 = add nuw nsw i16 %154, %conv.us.i.3.i180
  %157 = add nuw nsw i16 %155, %conv7.us.i.3.i182
  %158 = add nuw nsw i16 %156, %conv.us.i.148.i186
  %159 = add nuw nsw i16 %157, %conv7.us.i.149.i187
  %160 = add nuw nsw i16 %158, %conv.us.i.1.1.i190
  %161 = add nuw nsw i16 %159, %conv7.us.i.1.1.i192
  %162 = add nuw nsw i16 %160, %conv.us.i.2.1.i195
  %163 = add nuw nsw i16 %161, %conv7.us.i.2.1.i197
  %164 = add nuw nsw i16 %162, %conv.us.i.3.1.i200
  %165 = add nuw nsw i16 %163, %conv7.us.i.3.1.i202
  %166 = add nuw nsw i16 %164, %conv.us.i.251.i206
  %167 = add nuw nsw i16 %165, %conv7.us.i.252.i207
  %168 = add nuw nsw i16 %166, %conv.us.i.1.2.i210
  %169 = add nuw nsw i16 %167, %conv7.us.i.1.2.i212
  %170 = add nuw nsw i16 %168, %conv.us.i.2.2.i215
  %171 = add nuw nsw i16 %169, %conv7.us.i.2.2.i217
  %172 = add nuw nsw i16 %170, %conv.us.i.3.2.i220
  %173 = add nuw nsw i16 %171, %conv7.us.i.3.2.i222
  %174 = add nuw nsw i16 %172, %conv.us.i.354.i226
  %175 = add nuw nsw i16 %173, %conv7.us.i.355.i227
  %176 = add nuw nsw i16 %174, %conv.us.i.1.3.i230
  %177 = add nuw nsw i16 %175, %conv7.us.i.1.3.i232
  %178 = add nuw nsw i16 %176, %conv.us.i.2.3.i235
  %179 = add nuw nsw i16 %177, %conv7.us.i.2.3.i237
  %add20.i257 = sub nsw i16 %178, %179
  %add45.i258 = add nsw i16 %add20.i257, %sub.us.i.3.3.i243
  %arrayidx12 = getelementptr inbounds i8, ptr %dct, i64 4
  store i16 %add45.i258, ptr %arrayidx12, align 2
  %arrayidx13 = getelementptr inbounds i8, ptr %pix1, i64 68
  %arrayidx14 = getelementptr inbounds i8, ptr %pix2, i64 132
  %180 = load i8, ptr %arrayidx13, align 1
  %conv.us.i.i259 = zext i8 %180 to i32
  %181 = load i8, ptr %arrayidx14, align 1
  %conv7.us.i.i260 = zext i8 %181 to i32
  %arrayidx.us.i.1.i262 = getelementptr inbounds i8, ptr %pix1, i64 69
  %182 = load i8, ptr %arrayidx.us.i.1.i262, align 1
  %conv.us.i.1.i263 = zext i8 %182 to i32
  %arrayidx6.us.i.1.i264 = getelementptr inbounds i8, ptr %pix2, i64 133
  %183 = load i8, ptr %arrayidx6.us.i.1.i264, align 1
  %conv7.us.i.1.i265 = zext i8 %183 to i32
  %arrayidx.us.i.2.i267 = getelementptr inbounds i8, ptr %pix1, i64 70
  %184 = load i8, ptr %arrayidx.us.i.2.i267, align 1
  %conv.us.i.2.i268 = zext i8 %184 to i32
  %arrayidx6.us.i.2.i269 = getelementptr inbounds i8, ptr %pix2, i64 134
  %185 = load i8, ptr %arrayidx6.us.i.2.i269, align 1
  %conv7.us.i.2.i270 = zext i8 %185 to i32
  %arrayidx.us.i.3.i272 = getelementptr inbounds i8, ptr %pix1, i64 71
  %186 = load i8, ptr %arrayidx.us.i.3.i272, align 1
  %conv.us.i.3.i273 = zext i8 %186 to i32
  %arrayidx6.us.i.3.i274 = getelementptr inbounds i8, ptr %pix2, i64 135
  %187 = load i8, ptr %arrayidx6.us.i.3.i274, align 1
  %conv7.us.i.3.i275 = zext i8 %187 to i32
  %add.ptr.us.i.i277 = getelementptr inbounds i8, ptr %pix1, i64 84
  %add.ptr12.us.i.i278 = getelementptr inbounds i8, ptr %pix2, i64 164
  %188 = load i8, ptr %add.ptr.us.i.i277, align 1
  %conv.us.i.148.i279 = zext i8 %188 to i32
  %189 = load i8, ptr %add.ptr12.us.i.i278, align 1
  %conv7.us.i.149.i280 = zext i8 %189 to i32
  %arrayidx.us.i.1.1.i282 = getelementptr inbounds i8, ptr %pix1, i64 85
  %190 = load i8, ptr %arrayidx.us.i.1.1.i282, align 1
  %conv.us.i.1.1.i283 = zext i8 %190 to i32
  %arrayidx6.us.i.1.1.i284 = getelementptr inbounds i8, ptr %pix2, i64 165
  %191 = load i8, ptr %arrayidx6.us.i.1.1.i284, align 1
  %conv7.us.i.1.1.i285 = zext i8 %191 to i32
  %arrayidx.us.i.2.1.i287 = getelementptr inbounds i8, ptr %pix1, i64 86
  %192 = load i8, ptr %arrayidx.us.i.2.1.i287, align 1
  %conv.us.i.2.1.i288 = zext i8 %192 to i32
  %arrayidx6.us.i.2.1.i289 = getelementptr inbounds i8, ptr %pix2, i64 166
  %193 = load i8, ptr %arrayidx6.us.i.2.1.i289, align 1
  %conv7.us.i.2.1.i290 = zext i8 %193 to i32
  %arrayidx.us.i.3.1.i292 = getelementptr inbounds i8, ptr %pix1, i64 87
  %194 = load i8, ptr %arrayidx.us.i.3.1.i292, align 1
  %conv.us.i.3.1.i293 = zext i8 %194 to i32
  %arrayidx6.us.i.3.1.i294 = getelementptr inbounds i8, ptr %pix2, i64 167
  %195 = load i8, ptr %arrayidx6.us.i.3.1.i294, align 1
  %conv7.us.i.3.1.i295 = zext i8 %195 to i32
  %add.ptr.us.i.1.i297 = getelementptr inbounds i8, ptr %pix1, i64 100
  %add.ptr12.us.i.1.i298 = getelementptr inbounds i8, ptr %pix2, i64 196
  %196 = load i8, ptr %add.ptr.us.i.1.i297, align 1
  %conv.us.i.251.i299 = zext i8 %196 to i32
  %197 = load i8, ptr %add.ptr12.us.i.1.i298, align 1
  %conv7.us.i.252.i300 = zext i8 %197 to i32
  %arrayidx.us.i.1.2.i302 = getelementptr inbounds i8, ptr %pix1, i64 101
  %198 = load i8, ptr %arrayidx.us.i.1.2.i302, align 1
  %conv.us.i.1.2.i303 = zext i8 %198 to i32
  %arrayidx6.us.i.1.2.i304 = getelementptr inbounds i8, ptr %pix2, i64 197
  %199 = load i8, ptr %arrayidx6.us.i.1.2.i304, align 1
  %conv7.us.i.1.2.i305 = zext i8 %199 to i32
  %arrayidx.us.i.2.2.i307 = getelementptr inbounds i8, ptr %pix1, i64 102
  %200 = load i8, ptr %arrayidx.us.i.2.2.i307, align 1
  %conv.us.i.2.2.i308 = zext i8 %200 to i32
  %arrayidx6.us.i.2.2.i309 = getelementptr inbounds i8, ptr %pix2, i64 198
  %201 = load i8, ptr %arrayidx6.us.i.2.2.i309, align 1
  %conv7.us.i.2.2.i310 = zext i8 %201 to i32
  %arrayidx.us.i.3.2.i312 = getelementptr inbounds i8, ptr %pix1, i64 103
  %202 = load i8, ptr %arrayidx.us.i.3.2.i312, align 1
  %conv.us.i.3.2.i313 = zext i8 %202 to i32
  %arrayidx6.us.i.3.2.i314 = getelementptr inbounds i8, ptr %pix2, i64 199
  %203 = load i8, ptr %arrayidx6.us.i.3.2.i314, align 1
  %conv7.us.i.3.2.i315 = zext i8 %203 to i32
  %add.ptr.us.i.2.i317 = getelementptr inbounds i8, ptr %pix1, i64 116
  %add.ptr12.us.i.2.i318 = getelementptr inbounds i8, ptr %pix2, i64 228
  %204 = load i8, ptr %add.ptr.us.i.2.i317, align 1
  %conv.us.i.354.i319 = zext i8 %204 to i32
  %205 = load i8, ptr %add.ptr12.us.i.2.i318, align 1
  %conv7.us.i.355.i320 = zext i8 %205 to i32
  %arrayidx.us.i.1.3.i322 = getelementptr inbounds i8, ptr %pix1, i64 117
  %206 = load i8, ptr %arrayidx.us.i.1.3.i322, align 1
  %conv.us.i.1.3.i323 = zext i8 %206 to i32
  %arrayidx6.us.i.1.3.i324 = getelementptr inbounds i8, ptr %pix2, i64 229
  %207 = load i8, ptr %arrayidx6.us.i.1.3.i324, align 1
  %conv7.us.i.1.3.i325 = zext i8 %207 to i32
  %arrayidx.us.i.2.3.i327 = getelementptr inbounds i8, ptr %pix1, i64 118
  %208 = load i8, ptr %arrayidx.us.i.2.3.i327, align 1
  %conv.us.i.2.3.i328 = zext i8 %208 to i32
  %arrayidx6.us.i.2.3.i329 = getelementptr inbounds i8, ptr %pix2, i64 230
  %209 = load i8, ptr %arrayidx6.us.i.2.3.i329, align 1
  %conv7.us.i.2.3.i330 = zext i8 %209 to i32
  %arrayidx.us.i.3.3.i332 = getelementptr inbounds i8, ptr %pix1, i64 119
  %210 = load i8, ptr %arrayidx.us.i.3.3.i332, align 1
  %conv.us.i.3.3.i333 = zext i8 %210 to i32
  %arrayidx6.us.i.3.3.i334 = getelementptr inbounds i8, ptr %pix2, i64 231
  %211 = load i8, ptr %arrayidx6.us.i.3.3.i334, align 1
  %conv7.us.i.3.3.i335 = zext i8 %211 to i32
  %sub.us.i.3.3.i336 = sub nsw i32 %conv.us.i.3.3.i333, %conv7.us.i.3.3.i335
  %212 = add nuw nsw i32 %conv.us.i.i259, %conv.us.i.1.i263
  %213 = add nuw nsw i32 %conv7.us.i.i260, %conv7.us.i.1.i265
  %214 = add nuw nsw i32 %212, %conv.us.i.2.i268
  %215 = add nuw nsw i32 %213, %conv7.us.i.2.i270
  %216 = add nuw nsw i32 %214, %conv.us.i.3.i273
  %217 = add nuw nsw i32 %215, %conv7.us.i.3.i275
  %218 = add nuw nsw i32 %216, %conv.us.i.148.i279
  %219 = add nuw nsw i32 %217, %conv7.us.i.149.i280
  %220 = add nuw nsw i32 %218, %conv.us.i.1.1.i283
  %221 = add nuw nsw i32 %219, %conv7.us.i.1.1.i285
  %222 = add nuw nsw i32 %220, %conv.us.i.2.1.i288
  %223 = add nuw nsw i32 %221, %conv7.us.i.2.1.i290
  %224 = add nuw nsw i32 %222, %conv.us.i.3.1.i293
  %225 = add nuw nsw i32 %223, %conv7.us.i.3.1.i295
  %226 = add nuw nsw i32 %224, %conv.us.i.251.i299
  %227 = add nuw nsw i32 %225, %conv7.us.i.252.i300
  %228 = add nuw nsw i32 %226, %conv.us.i.1.2.i303
  %229 = add nuw nsw i32 %227, %conv7.us.i.1.2.i305
  %230 = add nuw nsw i32 %228, %conv.us.i.2.2.i308
  %231 = add nuw nsw i32 %229, %conv7.us.i.2.2.i310
  %232 = add nuw nsw i32 %230, %conv.us.i.3.2.i313
  %233 = add nuw nsw i32 %231, %conv7.us.i.3.2.i315
  %234 = add nuw nsw i32 %232, %conv.us.i.354.i319
  %235 = add nuw nsw i32 %233, %conv7.us.i.355.i320
  %236 = add nuw nsw i32 %234, %conv.us.i.1.3.i323
  %237 = add nuw nsw i32 %235, %conv7.us.i.1.3.i325
  %238 = add nuw nsw i32 %236, %conv.us.i.2.3.i328
  %239 = add nuw nsw i32 %237, %conv7.us.i.2.3.i330
  %add20.i350 = sub nsw i32 %238, %239
  %add45.i351 = add nsw i32 %add20.i350, %sub.us.i.3.3.i336
  %arrayidx17 = getelementptr inbounds i8, ptr %dct, i64 6
  %conv19352 = zext i16 %add45.i to i32
  %conv21353 = zext i16 %add45.i165 to i32
  %add = add nuw nsw i32 %conv21353, %conv19352
  %conv23354 = zext i16 %add45.i258 to i32
  %add26 = add nsw i32 %add45.i351, %conv23354
  %sub = sub nsw i32 %conv19352, %conv21353
  %sub35 = sub nsw i32 %conv23354, %add45.i351
  %add36 = add nsw i32 %add26, %add
  %conv37 = trunc i32 %add36 to i16
  store i16 %conv37, ptr %dct, align 2
  %add39 = add nsw i32 %sub35, %sub
  %conv40 = trunc i32 %add39 to i16
  store i16 %conv40, ptr %arrayidx12, align 2
  %sub42 = sub nsw i32 %add, %add26
  %conv43 = trunc i32 %sub42 to i16
  store i16 %conv43, ptr %arrayidx7, align 2
  %sub45 = sub nsw i32 %sub, %sub35
  %conv46 = trunc i32 %sub45 to i16
  store i16 %conv46, ptr %arrayidx17, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @add8x8_idct(ptr nocapture noundef %p_dst, ptr nocapture noundef readonly %dct) #1 {
entry:
  tail call void @add4x4_idct(ptr noundef %p_dst, ptr noundef %dct)
  %arrayidx2 = getelementptr inbounds i8, ptr %p_dst, i64 4
  %arrayidx3 = getelementptr inbounds i8, ptr %dct, i64 32
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx3)
  %arrayidx5 = getelementptr inbounds i8, ptr %p_dst, i64 128
  %arrayidx6 = getelementptr inbounds i8, ptr %dct, i64 64
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx5, ptr noundef nonnull %arrayidx6)
  %arrayidx8 = getelementptr inbounds i8, ptr %p_dst, i64 132
  %arrayidx9 = getelementptr inbounds i8, ptr %dct, i64 96
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx9)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @add8x8_idct_dc(ptr nocapture noundef %p_dst, ptr nocapture noundef readonly %dct) #1 {
entry:
  %0 = load i16, ptr %dct, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef %p_dst, i16 noundef signext %0)
  %arrayidx2 = getelementptr inbounds i8, ptr %p_dst, i64 4
  %arrayidx3 = getelementptr inbounds i8, ptr %dct, i64 2
  %1 = load i16, ptr %arrayidx3, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx2, i16 noundef signext %1)
  %arrayidx4 = getelementptr inbounds i8, ptr %p_dst, i64 128
  %arrayidx5 = getelementptr inbounds i8, ptr %dct, i64 4
  %2 = load i16, ptr %arrayidx5, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx4, i16 noundef signext %2)
  %arrayidx6 = getelementptr inbounds i8, ptr %p_dst, i64 132
  %arrayidx7 = getelementptr inbounds i8, ptr %dct, i64 6
  %3 = load i16, ptr %arrayidx7, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx6, i16 noundef signext %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @sub16x16_dct(ptr nocapture noundef writeonly %dct, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2) #1 {
entry:
  tail call void @sub4x4_dct(ptr noundef %dct, ptr noundef readonly %pix1, ptr noundef readonly %pix2)
  %arrayidx3.i = getelementptr inbounds i8, ptr %dct, i64 32
  %arrayidx5.i = getelementptr inbounds i8, ptr %pix1, i64 4
  %arrayidx6.i = getelementptr inbounds i8, ptr %pix2, i64 4
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx3.i, ptr noundef nonnull readonly %arrayidx5.i, ptr noundef nonnull readonly %arrayidx6.i)
  %arrayidx7.i = getelementptr inbounds i8, ptr %dct, i64 64
  %arrayidx9.i = getelementptr inbounds i8, ptr %pix1, i64 64
  %arrayidx10.i = getelementptr inbounds i8, ptr %pix2, i64 128
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx7.i, ptr noundef nonnull readonly %arrayidx9.i, ptr noundef nonnull readonly %arrayidx10.i)
  %arrayidx11.i = getelementptr inbounds i8, ptr %dct, i64 96
  %arrayidx13.i = getelementptr inbounds i8, ptr %pix1, i64 68
  %arrayidx14.i = getelementptr inbounds i8, ptr %pix2, i64 132
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx11.i, ptr noundef nonnull readonly %arrayidx13.i, ptr noundef nonnull readonly %arrayidx14.i)
  %arrayidx3 = getelementptr inbounds i8, ptr %dct, i64 128
  %arrayidx4 = getelementptr inbounds i8, ptr %pix1, i64 8
  %arrayidx5 = getelementptr inbounds i8, ptr %pix2, i64 8
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx3, ptr noundef nonnull readonly %arrayidx4, ptr noundef nonnull readonly %arrayidx5)
  %arrayidx3.i21 = getelementptr inbounds i8, ptr %dct, i64 160
  %arrayidx5.i22 = getelementptr inbounds i8, ptr %pix1, i64 12
  %arrayidx6.i23 = getelementptr inbounds i8, ptr %pix2, i64 12
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx3.i21, ptr noundef nonnull readonly %arrayidx5.i22, ptr noundef nonnull readonly %arrayidx6.i23)
  %arrayidx7.i24 = getelementptr inbounds i8, ptr %dct, i64 192
  %arrayidx9.i25 = getelementptr inbounds i8, ptr %pix1, i64 72
  %arrayidx10.i26 = getelementptr inbounds i8, ptr %pix2, i64 136
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx7.i24, ptr noundef nonnull readonly %arrayidx9.i25, ptr noundef nonnull readonly %arrayidx10.i26)
  %arrayidx11.i27 = getelementptr inbounds i8, ptr %dct, i64 224
  %arrayidx13.i28 = getelementptr inbounds i8, ptr %pix1, i64 76
  %arrayidx14.i29 = getelementptr inbounds i8, ptr %pix2, i64 140
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx11.i27, ptr noundef nonnull readonly %arrayidx13.i28, ptr noundef nonnull readonly %arrayidx14.i29)
  %arrayidx6 = getelementptr inbounds i8, ptr %dct, i64 256
  %arrayidx7 = getelementptr inbounds i8, ptr %pix1, i64 128
  %arrayidx8 = getelementptr inbounds i8, ptr %pix2, i64 256
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx6, ptr noundef nonnull readonly %arrayidx7, ptr noundef nonnull readonly %arrayidx8)
  %arrayidx3.i30 = getelementptr inbounds i8, ptr %dct, i64 288
  %arrayidx5.i31 = getelementptr inbounds i8, ptr %pix1, i64 132
  %arrayidx6.i32 = getelementptr inbounds i8, ptr %pix2, i64 260
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx3.i30, ptr noundef nonnull readonly %arrayidx5.i31, ptr noundef nonnull readonly %arrayidx6.i32)
  %arrayidx7.i33 = getelementptr inbounds i8, ptr %dct, i64 320
  %arrayidx9.i34 = getelementptr inbounds i8, ptr %pix1, i64 192
  %arrayidx10.i35 = getelementptr inbounds i8, ptr %pix2, i64 384
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx7.i33, ptr noundef nonnull readonly %arrayidx9.i34, ptr noundef nonnull readonly %arrayidx10.i35)
  %arrayidx11.i36 = getelementptr inbounds i8, ptr %dct, i64 352
  %arrayidx13.i37 = getelementptr inbounds i8, ptr %pix1, i64 196
  %arrayidx14.i38 = getelementptr inbounds i8, ptr %pix2, i64 388
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx11.i36, ptr noundef nonnull readonly %arrayidx13.i37, ptr noundef nonnull readonly %arrayidx14.i38)
  %arrayidx9 = getelementptr inbounds i8, ptr %dct, i64 384
  %arrayidx10 = getelementptr inbounds i8, ptr %pix1, i64 136
  %arrayidx11 = getelementptr inbounds i8, ptr %pix2, i64 264
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx9, ptr noundef nonnull readonly %arrayidx10, ptr noundef nonnull readonly %arrayidx11)
  %arrayidx3.i39 = getelementptr inbounds i8, ptr %dct, i64 416
  %arrayidx5.i40 = getelementptr inbounds i8, ptr %pix1, i64 140
  %arrayidx6.i41 = getelementptr inbounds i8, ptr %pix2, i64 268
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx3.i39, ptr noundef nonnull readonly %arrayidx5.i40, ptr noundef nonnull readonly %arrayidx6.i41)
  %arrayidx7.i42 = getelementptr inbounds i8, ptr %dct, i64 448
  %arrayidx9.i43 = getelementptr inbounds i8, ptr %pix1, i64 200
  %arrayidx10.i44 = getelementptr inbounds i8, ptr %pix2, i64 392
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx7.i42, ptr noundef nonnull readonly %arrayidx9.i43, ptr noundef nonnull readonly %arrayidx10.i44)
  %arrayidx11.i45 = getelementptr inbounds i8, ptr %dct, i64 480
  %arrayidx13.i46 = getelementptr inbounds i8, ptr %pix1, i64 204
  %arrayidx14.i47 = getelementptr inbounds i8, ptr %pix2, i64 396
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx11.i45, ptr noundef nonnull readonly %arrayidx13.i46, ptr noundef nonnull readonly %arrayidx14.i47)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @add16x16_idct(ptr nocapture noundef %p_dst, ptr nocapture noundef readonly %dct) #1 {
entry:
  tail call void @add4x4_idct(ptr noundef %p_dst, ptr noundef readonly %dct)
  %arrayidx2.i = getelementptr inbounds i8, ptr %p_dst, i64 4
  %arrayidx3.i = getelementptr inbounds i8, ptr %dct, i64 32
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx2.i, ptr noundef nonnull readonly %arrayidx3.i)
  %arrayidx5.i = getelementptr inbounds i8, ptr %p_dst, i64 128
  %arrayidx6.i = getelementptr inbounds i8, ptr %dct, i64 64
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx5.i, ptr noundef nonnull readonly %arrayidx6.i)
  %arrayidx8.i = getelementptr inbounds i8, ptr %p_dst, i64 132
  %arrayidx9.i = getelementptr inbounds i8, ptr %dct, i64 96
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx8.i, ptr noundef nonnull readonly %arrayidx9.i)
  %arrayidx2 = getelementptr inbounds i8, ptr %p_dst, i64 8
  %arrayidx3 = getelementptr inbounds i8, ptr %dct, i64 128
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx2, ptr noundef nonnull readonly %arrayidx3)
  %arrayidx2.i14 = getelementptr inbounds i8, ptr %p_dst, i64 12
  %arrayidx3.i15 = getelementptr inbounds i8, ptr %dct, i64 160
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx2.i14, ptr noundef nonnull readonly %arrayidx3.i15)
  %arrayidx5.i16 = getelementptr inbounds i8, ptr %p_dst, i64 136
  %arrayidx6.i17 = getelementptr inbounds i8, ptr %dct, i64 192
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx5.i16, ptr noundef nonnull readonly %arrayidx6.i17)
  %arrayidx8.i18 = getelementptr inbounds i8, ptr %p_dst, i64 140
  %arrayidx9.i19 = getelementptr inbounds i8, ptr %dct, i64 224
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx8.i18, ptr noundef nonnull readonly %arrayidx9.i19)
  %arrayidx4 = getelementptr inbounds i8, ptr %p_dst, i64 256
  %arrayidx5 = getelementptr inbounds i8, ptr %dct, i64 256
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx4, ptr noundef nonnull readonly %arrayidx5)
  %arrayidx2.i20 = getelementptr inbounds i8, ptr %p_dst, i64 260
  %arrayidx3.i21 = getelementptr inbounds i8, ptr %dct, i64 288
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx2.i20, ptr noundef nonnull readonly %arrayidx3.i21)
  %arrayidx5.i22 = getelementptr inbounds i8, ptr %p_dst, i64 384
  %arrayidx6.i23 = getelementptr inbounds i8, ptr %dct, i64 320
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx5.i22, ptr noundef nonnull readonly %arrayidx6.i23)
  %arrayidx8.i24 = getelementptr inbounds i8, ptr %p_dst, i64 388
  %arrayidx9.i25 = getelementptr inbounds i8, ptr %dct, i64 352
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx8.i24, ptr noundef nonnull readonly %arrayidx9.i25)
  %arrayidx6 = getelementptr inbounds i8, ptr %p_dst, i64 264
  %arrayidx7 = getelementptr inbounds i8, ptr %dct, i64 384
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx6, ptr noundef nonnull readonly %arrayidx7)
  %arrayidx2.i26 = getelementptr inbounds i8, ptr %p_dst, i64 268
  %arrayidx3.i27 = getelementptr inbounds i8, ptr %dct, i64 416
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx2.i26, ptr noundef nonnull readonly %arrayidx3.i27)
  %arrayidx5.i28 = getelementptr inbounds i8, ptr %p_dst, i64 392
  %arrayidx6.i29 = getelementptr inbounds i8, ptr %dct, i64 448
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx5.i28, ptr noundef nonnull readonly %arrayidx6.i29)
  %arrayidx8.i30 = getelementptr inbounds i8, ptr %p_dst, i64 396
  %arrayidx9.i31 = getelementptr inbounds i8, ptr %dct, i64 480
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx8.i30, ptr noundef nonnull readonly %arrayidx9.i31)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @add16x16_idct_dc(ptr nocapture noundef %p_dst, ptr nocapture noundef readonly %dct) #1 {
entry:
  %0 = load i16, ptr %dct, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef %p_dst, i16 noundef signext %0)
  %arrayidx2 = getelementptr inbounds i8, ptr %p_dst, i64 4
  %arrayidx3 = getelementptr inbounds i8, ptr %dct, i64 2
  %1 = load i16, ptr %arrayidx3, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx2, i16 noundef signext %1)
  %arrayidx4 = getelementptr inbounds i8, ptr %p_dst, i64 8
  %arrayidx5 = getelementptr inbounds i8, ptr %dct, i64 4
  %2 = load i16, ptr %arrayidx5, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx4, i16 noundef signext %2)
  %arrayidx6 = getelementptr inbounds i8, ptr %p_dst, i64 12
  %arrayidx7 = getelementptr inbounds i8, ptr %dct, i64 6
  %3 = load i16, ptr %arrayidx7, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx6, i16 noundef signext %3)
  %add.ptr = getelementptr inbounds i8, ptr %dct, i64 8
  %add.ptr8 = getelementptr inbounds i8, ptr %p_dst, i64 128
  %4 = load i16, ptr %add.ptr, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %add.ptr8, i16 noundef signext %4)
  %arrayidx2.1 = getelementptr inbounds i8, ptr %p_dst, i64 132
  %arrayidx3.1 = getelementptr inbounds i8, ptr %dct, i64 10
  %5 = load i16, ptr %arrayidx3.1, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx2.1, i16 noundef signext %5)
  %arrayidx4.1 = getelementptr inbounds i8, ptr %p_dst, i64 136
  %arrayidx5.1 = getelementptr inbounds i8, ptr %dct, i64 12
  %6 = load i16, ptr %arrayidx5.1, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx4.1, i16 noundef signext %6)
  %arrayidx6.1 = getelementptr inbounds i8, ptr %p_dst, i64 140
  %arrayidx7.1 = getelementptr inbounds i8, ptr %dct, i64 14
  %7 = load i16, ptr %arrayidx7.1, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx6.1, i16 noundef signext %7)
  %add.ptr.1 = getelementptr inbounds i8, ptr %dct, i64 16
  %add.ptr8.1 = getelementptr inbounds i8, ptr %p_dst, i64 256
  %8 = load i16, ptr %add.ptr.1, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %add.ptr8.1, i16 noundef signext %8)
  %arrayidx2.2 = getelementptr inbounds i8, ptr %p_dst, i64 260
  %arrayidx3.2 = getelementptr inbounds i8, ptr %dct, i64 18
  %9 = load i16, ptr %arrayidx3.2, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx2.2, i16 noundef signext %9)
  %arrayidx4.2 = getelementptr inbounds i8, ptr %p_dst, i64 264
  %arrayidx5.2 = getelementptr inbounds i8, ptr %dct, i64 20
  %10 = load i16, ptr %arrayidx5.2, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx4.2, i16 noundef signext %10)
  %arrayidx6.2 = getelementptr inbounds i8, ptr %p_dst, i64 268
  %arrayidx7.2 = getelementptr inbounds i8, ptr %dct, i64 22
  %11 = load i16, ptr %arrayidx7.2, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx6.2, i16 noundef signext %11)
  %add.ptr.2 = getelementptr inbounds i8, ptr %dct, i64 24
  %add.ptr8.2 = getelementptr inbounds i8, ptr %p_dst, i64 384
  %12 = load i16, ptr %add.ptr.2, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %add.ptr8.2, i16 noundef signext %12)
  %arrayidx2.3 = getelementptr inbounds i8, ptr %p_dst, i64 388
  %arrayidx3.3 = getelementptr inbounds i8, ptr %dct, i64 26
  %13 = load i16, ptr %arrayidx3.3, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx2.3, i16 noundef signext %13)
  %arrayidx4.3 = getelementptr inbounds i8, ptr %p_dst, i64 392
  %arrayidx5.3 = getelementptr inbounds i8, ptr %dct, i64 28
  %14 = load i16, ptr %arrayidx5.3, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx4.3, i16 noundef signext %14)
  %arrayidx6.3 = getelementptr inbounds i8, ptr %p_dst, i64 396
  %arrayidx7.3 = getelementptr inbounds i8, ptr %dct, i64 30
  %15 = load i16, ptr %arrayidx7.3, align 2
  tail call fastcc void @add4x4_idct_dc(ptr noundef nonnull %arrayidx6.3, i16 noundef signext %15)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sub8x8_dct8(ptr nocapture noundef writeonly %dct, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2) #2 {
entry:
  %tmp = alloca [64 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp) #6
  %0 = load <8 x i8>, ptr %pix1, align 1
  %1 = zext <8 x i8> %0 to <8 x i16>
  %2 = load <8 x i8>, ptr %pix2, align 1
  %3 = zext <8 x i8> %2 to <8 x i16>
  %4 = sub nsw <8 x i16> %1, %3
  store <8 x i16> %4, ptr %tmp, align 16
  %add.ptr.us.i = getelementptr inbounds i8, ptr %pix1, i64 16
  %add.ptr12.us.i = getelementptr inbounds i8, ptr %pix2, i64 32
  %invariant.gep.i.1 = getelementptr inbounds i8, ptr %tmp, i64 16
  %5 = load <8 x i8>, ptr %add.ptr.us.i, align 1
  %6 = zext <8 x i8> %5 to <8 x i16>
  %7 = load <8 x i8>, ptr %add.ptr12.us.i, align 1
  %8 = zext <8 x i8> %7 to <8 x i16>
  %9 = sub nsw <8 x i16> %6, %8
  store <8 x i16> %9, ptr %invariant.gep.i.1, align 16
  %add.ptr.us.i.1 = getelementptr inbounds i8, ptr %pix1, i64 32
  %add.ptr12.us.i.1 = getelementptr inbounds i8, ptr %pix2, i64 64
  %invariant.gep.i.2 = getelementptr inbounds i8, ptr %tmp, i64 32
  %10 = load <8 x i8>, ptr %add.ptr.us.i.1, align 1
  %11 = zext <8 x i8> %10 to <8 x i16>
  %12 = load <8 x i8>, ptr %add.ptr12.us.i.1, align 1
  %13 = zext <8 x i8> %12 to <8 x i16>
  %14 = sub nsw <8 x i16> %11, %13
  store <8 x i16> %14, ptr %invariant.gep.i.2, align 16
  %add.ptr.us.i.2 = getelementptr inbounds i8, ptr %pix1, i64 48
  %add.ptr12.us.i.2 = getelementptr inbounds i8, ptr %pix2, i64 96
  %invariant.gep.i.3 = getelementptr inbounds i8, ptr %tmp, i64 48
  %15 = load <8 x i8>, ptr %add.ptr.us.i.2, align 1
  %16 = zext <8 x i8> %15 to <8 x i16>
  %17 = load <8 x i8>, ptr %add.ptr12.us.i.2, align 1
  %18 = zext <8 x i8> %17 to <8 x i16>
  %19 = sub nsw <8 x i16> %16, %18
  store <8 x i16> %19, ptr %invariant.gep.i.3, align 16
  %add.ptr.us.i.3 = getelementptr inbounds i8, ptr %pix1, i64 64
  %add.ptr12.us.i.3 = getelementptr inbounds i8, ptr %pix2, i64 128
  %invariant.gep.i.4 = getelementptr inbounds i8, ptr %tmp, i64 64
  %20 = load <8 x i8>, ptr %add.ptr.us.i.3, align 1
  %21 = zext <8 x i8> %20 to <8 x i16>
  %22 = load <8 x i8>, ptr %add.ptr12.us.i.3, align 1
  %23 = zext <8 x i8> %22 to <8 x i16>
  %24 = sub nsw <8 x i16> %21, %23
  store <8 x i16> %24, ptr %invariant.gep.i.4, align 16
  %add.ptr.us.i.4 = getelementptr inbounds i8, ptr %pix1, i64 80
  %add.ptr12.us.i.4 = getelementptr inbounds i8, ptr %pix2, i64 160
  %invariant.gep.i.5 = getelementptr inbounds i8, ptr %tmp, i64 80
  %25 = load <8 x i8>, ptr %add.ptr.us.i.4, align 1
  %26 = zext <8 x i8> %25 to <8 x i16>
  %27 = load <8 x i8>, ptr %add.ptr12.us.i.4, align 1
  %28 = zext <8 x i8> %27 to <8 x i16>
  %29 = sub nsw <8 x i16> %26, %28
  store <8 x i16> %29, ptr %invariant.gep.i.5, align 16
  %add.ptr.us.i.5 = getelementptr inbounds i8, ptr %pix1, i64 96
  %add.ptr12.us.i.5 = getelementptr inbounds i8, ptr %pix2, i64 192
  %invariant.gep.i.6 = getelementptr inbounds i8, ptr %tmp, i64 96
  %30 = load <8 x i8>, ptr %add.ptr.us.i.5, align 1
  %31 = zext <8 x i8> %30 to <8 x i16>
  %32 = load <8 x i8>, ptr %add.ptr12.us.i.5, align 1
  %33 = zext <8 x i8> %32 to <8 x i16>
  %34 = sub nsw <8 x i16> %31, %33
  store <8 x i16> %34, ptr %invariant.gep.i.6, align 16
  %add.ptr.us.i.6 = getelementptr inbounds i8, ptr %pix1, i64 112
  %add.ptr12.us.i.6 = getelementptr inbounds i8, ptr %pix2, i64 224
  %invariant.gep.i.7 = getelementptr inbounds i8, ptr %tmp, i64 112
  %35 = load <8 x i8>, ptr %add.ptr.us.i.6, align 1
  %36 = zext <8 x i8> %35 to <8 x i16>
  %37 = load <8 x i8>, ptr %add.ptr12.us.i.6, align 1
  %38 = zext <8 x i8> %37 to <8 x i16>
  %39 = sub nsw <8 x i16> %36, %38
  store <8 x i16> %39, ptr %invariant.gep.i.7, align 16
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue472, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %pred.store.continue472 ]
  %40 = or disjoint i64 %index, 1
  %41 = or disjoint i64 %index, 2
  %42 = or disjoint i64 %index, 3
  %43 = icmp ult i64 %index, 8
  %44 = icmp ult i64 %index, 8
  %45 = icmp ult i64 %index, 8
  %46 = icmp ult i64 %index, 8
  br i1 %43, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %47 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %index
  %48 = load i16, ptr %47, align 8
  %49 = or disjoint i64 %index, 56
  %50 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %49
  %51 = load i16, ptr %50, align 8
  %52 = or disjoint i64 %index, 8
  %53 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %52
  %54 = load i16, ptr %53, align 8
  %55 = or disjoint i64 %index, 48
  %56 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %55
  %57 = load i16, ptr %56, align 8
  %58 = or disjoint i64 %index, 16
  %59 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %58
  %60 = load i16, ptr %59, align 8
  %61 = or disjoint i64 %index, 40
  %62 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %61
  %63 = load i16, ptr %62, align 8
  %64 = or disjoint i64 %index, 24
  %65 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %64
  %66 = load i16, ptr %65, align 8
  %67 = or disjoint i64 %index, 32
  %68 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %67
  %69 = load i16, ptr %68, align 8
  %70 = sext i16 %66 to i32
  %71 = sext i16 %69 to i32
  %72 = sext i16 %48 to i32
  %73 = sext i16 %51 to i32
  %74 = sext i16 %60 to i32
  %75 = sext i16 %63 to i32
  %76 = sext i16 %54 to i32
  %77 = sext i16 %57 to i32
  %78 = sub nsw i32 %70, %71
  %79 = sub nsw i32 %72, %73
  %80 = sub nsw i32 %76, %77
  %81 = sub nsw i32 %74, %75
  %82 = ashr i32 %81, 1
  %83 = ashr i32 %80, 1
  %84 = ashr i32 %79, 1
  %85 = add nsw i32 %81, %82
  %86 = add nsw i32 %80, %83
  %87 = add nsw i32 %84, %79
  %88 = sub nsw i32 %80, %81
  %89 = add nsw i32 %85, %78
  %90 = sub nsw i32 %79, %86
  %91 = add nsw i32 %87, %80
  %92 = ashr i32 %78, 1
  %93 = add nsw i32 %78, %88
  %94 = add nsw i32 %77, %76
  %95 = add nsw i32 %75, %74
  %96 = add nsw i32 %73, %72
  %97 = add nsw i32 %71, %70
  %98 = sub nsw i32 %79, %89
  %99 = add nsw i32 %90, %78
  %100 = sub nsw i32 %96, %97
  %101 = sub nsw i32 %94, %95
  %102 = add nsw i32 %91, %81
  %103 = add nsw i32 %93, %92
  %104 = add nsw i32 %95, %94
  %105 = add nsw i32 %97, %96
  %106 = add nsw i32 %105, %104
  %107 = trunc i32 %106 to i16
  store i16 %107, ptr %47, align 8
  %108 = lshr i32 %103, 2
  %109 = add nsw i32 %108, %102
  %110 = trunc i32 %109 to i16
  store i16 %110, ptr %53, align 8
  %111 = lshr i32 %101, 1
  %112 = add i32 %100, %111
  %113 = trunc i32 %112 to i16
  store i16 %113, ptr %59, align 8
  %114 = lshr i32 %99, 2
  %115 = add nsw i32 %98, %114
  %116 = trunc i32 %115 to i16
  store i16 %116, ptr %65, align 8
  %117 = sub nsw i32 %105, %104
  %118 = trunc i32 %117 to i16
  store i16 %118, ptr %68, align 8
  %119 = lshr i32 %98, 2
  %120 = sub nsw i32 %99, %119
  %121 = trunc i32 %120 to i16
  store i16 %121, ptr %62, align 8
  %122 = lshr i32 %100, 1
  %123 = sub i32 %122, %101
  %124 = trunc i32 %123 to i16
  store i16 %124, ptr %56, align 8
  %125 = lshr i32 %102, 2
  %126 = sub nsw i32 %125, %103
  %127 = trunc i32 %126 to i16
  store i16 %127, ptr %50, align 8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  br i1 %44, label %pred.store.if467, label %pred.store.continue468

pred.store.if467:                                 ; preds = %pred.store.continue
  %128 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %40
  %129 = load i16, ptr %128, align 2
  %130 = or disjoint i64 %index, 57
  %131 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %130
  %132 = load i16, ptr %131, align 2
  %133 = or disjoint i64 %index, 9
  %134 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %133
  %135 = load i16, ptr %134, align 2
  %136 = or disjoint i64 %index, 49
  %137 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %136
  %138 = load i16, ptr %137, align 2
  %139 = or disjoint i64 %index, 17
  %140 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %139
  %141 = load i16, ptr %140, align 2
  %142 = or disjoint i64 %index, 41
  %143 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %142
  %144 = load i16, ptr %143, align 2
  %145 = or disjoint i64 %index, 25
  %146 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %145
  %147 = load i16, ptr %146, align 2
  %148 = or disjoint i64 %index, 33
  %149 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %148
  %150 = load i16, ptr %149, align 2
  %151 = sext i16 %147 to i32
  %152 = sext i16 %150 to i32
  %153 = sext i16 %129 to i32
  %154 = sext i16 %132 to i32
  %155 = sext i16 %141 to i32
  %156 = sext i16 %144 to i32
  %157 = sext i16 %135 to i32
  %158 = sext i16 %138 to i32
  %159 = sub nsw i32 %151, %152
  %160 = sub nsw i32 %153, %154
  %161 = sub nsw i32 %157, %158
  %162 = sub nsw i32 %155, %156
  %163 = ashr i32 %162, 1
  %164 = ashr i32 %161, 1
  %165 = ashr i32 %160, 1
  %166 = add nsw i32 %162, %163
  %167 = add nsw i32 %161, %164
  %168 = add nsw i32 %165, %160
  %169 = sub nsw i32 %161, %162
  %170 = add nsw i32 %166, %159
  %171 = sub nsw i32 %160, %167
  %172 = add nsw i32 %168, %161
  %173 = ashr i32 %159, 1
  %174 = add nsw i32 %159, %169
  %175 = add nsw i32 %158, %157
  %176 = add nsw i32 %156, %155
  %177 = add nsw i32 %154, %153
  %178 = add nsw i32 %152, %151
  %179 = sub nsw i32 %160, %170
  %180 = add nsw i32 %171, %159
  %181 = sub nsw i32 %177, %178
  %182 = sub nsw i32 %175, %176
  %183 = add nsw i32 %172, %162
  %184 = add nsw i32 %174, %173
  %185 = add nsw i32 %176, %175
  %186 = add nsw i32 %178, %177
  %187 = add nsw i32 %186, %185
  %188 = trunc i32 %187 to i16
  store i16 %188, ptr %128, align 2
  %189 = lshr i32 %184, 2
  %190 = add nsw i32 %189, %183
  %191 = trunc i32 %190 to i16
  store i16 %191, ptr %134, align 2
  %192 = lshr i32 %182, 1
  %193 = add i32 %181, %192
  %194 = trunc i32 %193 to i16
  store i16 %194, ptr %140, align 2
  %195 = lshr i32 %180, 2
  %196 = add nsw i32 %179, %195
  %197 = trunc i32 %196 to i16
  store i16 %197, ptr %146, align 2
  %198 = sub nsw i32 %186, %185
  %199 = trunc i32 %198 to i16
  store i16 %199, ptr %149, align 2
  %200 = lshr i32 %179, 2
  %201 = sub nsw i32 %180, %200
  %202 = trunc i32 %201 to i16
  store i16 %202, ptr %143, align 2
  %203 = lshr i32 %181, 1
  %204 = sub i32 %203, %182
  %205 = trunc i32 %204 to i16
  store i16 %205, ptr %137, align 2
  %206 = lshr i32 %183, 2
  %207 = sub nsw i32 %206, %184
  %208 = trunc i32 %207 to i16
  store i16 %208, ptr %131, align 2
  br label %pred.store.continue468

pred.store.continue468:                           ; preds = %pred.store.if467, %pred.store.continue
  br i1 %45, label %pred.store.if469, label %pred.store.continue470

pred.store.if469:                                 ; preds = %pred.store.continue468
  %209 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %41
  %210 = load i16, ptr %209, align 4
  %211 = or disjoint i64 %index, 58
  %212 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %211
  %213 = load i16, ptr %212, align 4
  %214 = or disjoint i64 %index, 10
  %215 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %214
  %216 = load i16, ptr %215, align 4
  %217 = or disjoint i64 %index, 50
  %218 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %217
  %219 = load i16, ptr %218, align 4
  %220 = or disjoint i64 %index, 18
  %221 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %220
  %222 = load i16, ptr %221, align 4
  %223 = or disjoint i64 %index, 42
  %224 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %223
  %225 = load i16, ptr %224, align 4
  %226 = or disjoint i64 %index, 26
  %227 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %226
  %228 = load i16, ptr %227, align 4
  %229 = or disjoint i64 %index, 34
  %230 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %229
  %231 = load i16, ptr %230, align 4
  %232 = sext i16 %228 to i32
  %233 = sext i16 %231 to i32
  %234 = sext i16 %210 to i32
  %235 = sext i16 %213 to i32
  %236 = sext i16 %222 to i32
  %237 = sext i16 %225 to i32
  %238 = sext i16 %216 to i32
  %239 = sext i16 %219 to i32
  %240 = sub nsw i32 %232, %233
  %241 = sub nsw i32 %234, %235
  %242 = sub nsw i32 %238, %239
  %243 = sub nsw i32 %236, %237
  %244 = ashr i32 %243, 1
  %245 = ashr i32 %242, 1
  %246 = ashr i32 %241, 1
  %247 = add nsw i32 %243, %244
  %248 = add nsw i32 %242, %245
  %249 = add nsw i32 %246, %241
  %250 = sub nsw i32 %242, %243
  %251 = add nsw i32 %247, %240
  %252 = sub nsw i32 %241, %248
  %253 = add nsw i32 %249, %242
  %254 = ashr i32 %240, 1
  %255 = add nsw i32 %240, %250
  %256 = add nsw i32 %239, %238
  %257 = add nsw i32 %237, %236
  %258 = add nsw i32 %235, %234
  %259 = add nsw i32 %233, %232
  %260 = sub nsw i32 %241, %251
  %261 = add nsw i32 %252, %240
  %262 = sub nsw i32 %258, %259
  %263 = sub nsw i32 %256, %257
  %264 = add nsw i32 %253, %243
  %265 = add nsw i32 %255, %254
  %266 = add nsw i32 %257, %256
  %267 = add nsw i32 %259, %258
  %268 = add nsw i32 %267, %266
  %269 = trunc i32 %268 to i16
  store i16 %269, ptr %209, align 4
  %270 = lshr i32 %265, 2
  %271 = add nsw i32 %270, %264
  %272 = trunc i32 %271 to i16
  store i16 %272, ptr %215, align 4
  %273 = lshr i32 %263, 1
  %274 = add i32 %262, %273
  %275 = trunc i32 %274 to i16
  store i16 %275, ptr %221, align 4
  %276 = lshr i32 %261, 2
  %277 = add nsw i32 %260, %276
  %278 = trunc i32 %277 to i16
  store i16 %278, ptr %227, align 4
  %279 = sub nsw i32 %267, %266
  %280 = trunc i32 %279 to i16
  store i16 %280, ptr %230, align 4
  %281 = lshr i32 %260, 2
  %282 = sub nsw i32 %261, %281
  %283 = trunc i32 %282 to i16
  store i16 %283, ptr %224, align 4
  %284 = lshr i32 %262, 1
  %285 = sub i32 %284, %263
  %286 = trunc i32 %285 to i16
  store i16 %286, ptr %218, align 4
  %287 = lshr i32 %264, 2
  %288 = sub nsw i32 %287, %265
  %289 = trunc i32 %288 to i16
  store i16 %289, ptr %212, align 4
  br label %pred.store.continue470

pred.store.continue470:                           ; preds = %pred.store.if469, %pred.store.continue468
  br i1 %46, label %pred.store.if471, label %pred.store.continue472

pred.store.if471:                                 ; preds = %pred.store.continue470
  %290 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %42
  %291 = load i16, ptr %290, align 2
  %292 = or disjoint i64 %index, 59
  %293 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %292
  %294 = load i16, ptr %293, align 2
  %295 = or disjoint i64 %index, 11
  %296 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %295
  %297 = load i16, ptr %296, align 2
  %298 = or disjoint i64 %index, 51
  %299 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %298
  %300 = load i16, ptr %299, align 2
  %301 = or disjoint i64 %index, 19
  %302 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %301
  %303 = load i16, ptr %302, align 2
  %304 = or disjoint i64 %index, 43
  %305 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %304
  %306 = load i16, ptr %305, align 2
  %307 = or disjoint i64 %index, 27
  %308 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %307
  %309 = load i16, ptr %308, align 2
  %310 = or disjoint i64 %index, 35
  %311 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %310
  %312 = load i16, ptr %311, align 2
  %313 = sext i16 %309 to i32
  %314 = sext i16 %312 to i32
  %315 = sext i16 %291 to i32
  %316 = sext i16 %294 to i32
  %317 = sext i16 %303 to i32
  %318 = sext i16 %306 to i32
  %319 = sext i16 %297 to i32
  %320 = sext i16 %300 to i32
  %321 = sub nsw i32 %313, %314
  %322 = sub nsw i32 %315, %316
  %323 = sub nsw i32 %319, %320
  %324 = sub nsw i32 %317, %318
  %325 = ashr i32 %324, 1
  %326 = ashr i32 %323, 1
  %327 = ashr i32 %322, 1
  %328 = add nsw i32 %324, %325
  %329 = add nsw i32 %323, %326
  %330 = add nsw i32 %327, %322
  %331 = sub nsw i32 %323, %324
  %332 = add nsw i32 %328, %321
  %333 = sub nsw i32 %322, %329
  %334 = add nsw i32 %330, %323
  %335 = ashr i32 %321, 1
  %336 = add nsw i32 %321, %331
  %337 = add nsw i32 %320, %319
  %338 = add nsw i32 %318, %317
  %339 = add nsw i32 %316, %315
  %340 = add nsw i32 %314, %313
  %341 = sub nsw i32 %322, %332
  %342 = add nsw i32 %333, %321
  %343 = sub nsw i32 %339, %340
  %344 = sub nsw i32 %337, %338
  %345 = add nsw i32 %334, %324
  %346 = add nsw i32 %336, %335
  %347 = add nsw i32 %338, %337
  %348 = add nsw i32 %340, %339
  %349 = add nsw i32 %348, %347
  %350 = trunc i32 %349 to i16
  store i16 %350, ptr %290, align 2
  %351 = lshr i32 %346, 2
  %352 = add nsw i32 %351, %345
  %353 = trunc i32 %352 to i16
  store i16 %353, ptr %296, align 2
  %354 = lshr i32 %344, 1
  %355 = add i32 %343, %354
  %356 = trunc i32 %355 to i16
  store i16 %356, ptr %302, align 2
  %357 = lshr i32 %342, 2
  %358 = add nsw i32 %341, %357
  %359 = trunc i32 %358 to i16
  store i16 %359, ptr %308, align 2
  %360 = sub nsw i32 %348, %347
  %361 = trunc i32 %360 to i16
  store i16 %361, ptr %311, align 2
  %362 = lshr i32 %341, 2
  %363 = sub nsw i32 %342, %362
  %364 = trunc i32 %363 to i16
  store i16 %364, ptr %305, align 2
  %365 = lshr i32 %343, 1
  %366 = sub i32 %365, %344
  %367 = trunc i32 %366 to i16
  store i16 %367, ptr %299, align 2
  %368 = lshr i32 %345, 2
  %369 = sub nsw i32 %368, %346
  %370 = trunc i32 %369 to i16
  store i16 %370, ptr %293, align 2
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %pred.store.continue470
  %index.next = add i64 %index, 4
  %371 = icmp eq i64 %index.next, 8
  br i1 %371, label %vector.body477, label %vector.body, !llvm.loop !5

vector.body477:                                   ; preds = %pred.store.continue472, %pred.store.continue486
  %index478 = phi i64 [ %index.next487, %pred.store.continue486 ], [ 0, %pred.store.continue472 ]
  %372 = or disjoint i64 %index478, 1
  %373 = or disjoint i64 %index478, 2
  %374 = or disjoint i64 %index478, 3
  %375 = icmp ult i64 %index478, 8
  %376 = icmp ult i64 %index478, 8
  %377 = icmp ult i64 %index478, 8
  %378 = icmp ult i64 %index478, 8
  br i1 %375, label %pred.store.if479, label %pred.store.continue480

pred.store.if479:                                 ; preds = %vector.body477
  %379 = shl nuw nsw i64 %index478, 3
  %380 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %379
  %381 = load i16, ptr %380, align 16
  %382 = or disjoint i64 %379, 7
  %383 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %382
  %384 = load i16, ptr %383, align 2
  %385 = or disjoint i64 %379, 1
  %386 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %385
  %387 = load i16, ptr %386, align 2
  %388 = or disjoint i64 %379, 6
  %389 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %388
  %390 = load i16, ptr %389, align 4
  %391 = or disjoint i64 %379, 2
  %392 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %391
  %393 = load i16, ptr %392, align 4
  %394 = or disjoint i64 %379, 5
  %395 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %394
  %396 = load i16, ptr %395, align 2
  %397 = or disjoint i64 %379, 3
  %398 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %397
  %399 = load i16, ptr %398, align 2
  %400 = or disjoint i64 %379, 4
  %401 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %400
  %402 = load i16, ptr %401, align 8
  %403 = sext i16 %399 to i32
  %404 = sext i16 %402 to i32
  %405 = sext i16 %381 to i32
  %406 = sext i16 %384 to i32
  %407 = sext i16 %393 to i32
  %408 = sext i16 %396 to i32
  %409 = sext i16 %387 to i32
  %410 = sext i16 %390 to i32
  %411 = sub nsw i32 %403, %404
  %412 = sub nsw i32 %405, %406
  %413 = sub nsw i32 %409, %410
  %414 = sub nsw i32 %407, %408
  %415 = ashr i32 %414, 1
  %416 = ashr i32 %413, 1
  %417 = ashr i32 %412, 1
  %418 = add nsw i32 %414, %415
  %419 = add nsw i32 %413, %416
  %420 = add nsw i32 %417, %412
  %421 = sub nsw i32 %413, %414
  %422 = add nsw i32 %418, %411
  %423 = sub nsw i32 %412, %419
  %424 = add nsw i32 %420, %413
  %425 = ashr i32 %411, 1
  %426 = add nsw i32 %411, %421
  %427 = add nsw i32 %410, %409
  %428 = add nsw i32 %408, %407
  %429 = add nsw i32 %406, %405
  %430 = add nsw i32 %404, %403
  %431 = sub nsw i32 %412, %422
  %432 = add nsw i32 %423, %411
  %433 = sub nsw i32 %429, %430
  %434 = sub nsw i32 %427, %428
  %435 = add nsw i32 %424, %414
  %436 = add nsw i32 %426, %425
  %437 = add nsw i32 %428, %427
  %438 = add nsw i32 %430, %429
  %439 = add nsw i32 %438, %437
  %440 = getelementptr inbounds i16, ptr %dct, i64 %index478
  %441 = trunc i32 %439 to i16
  store i16 %441, ptr %440, align 2
  %442 = lshr i32 %436, 2
  %443 = or disjoint i64 %index478, 8
  %444 = add nsw i32 %442, %435
  %445 = getelementptr inbounds i16, ptr %dct, i64 %443
  %446 = trunc i32 %444 to i16
  store i16 %446, ptr %445, align 2
  %447 = lshr i32 %434, 1
  %448 = or disjoint i64 %index478, 16
  %449 = add i32 %433, %447
  %450 = getelementptr inbounds i16, ptr %dct, i64 %448
  %451 = trunc i32 %449 to i16
  store i16 %451, ptr %450, align 2
  %452 = lshr i32 %432, 2
  %453 = or disjoint i64 %index478, 24
  %454 = add nsw i32 %431, %452
  %455 = getelementptr inbounds i16, ptr %dct, i64 %453
  %456 = trunc i32 %454 to i16
  store i16 %456, ptr %455, align 2
  %457 = or disjoint i64 %index478, 32
  %458 = sub nsw i32 %438, %437
  %459 = getelementptr inbounds i16, ptr %dct, i64 %457
  %460 = trunc i32 %458 to i16
  store i16 %460, ptr %459, align 2
  %461 = lshr i32 %431, 2
  %462 = or disjoint i64 %index478, 40
  %463 = sub nsw i32 %432, %461
  %464 = getelementptr inbounds i16, ptr %dct, i64 %462
  %465 = trunc i32 %463 to i16
  store i16 %465, ptr %464, align 2
  %466 = lshr i32 %433, 1
  %467 = or disjoint i64 %index478, 48
  %468 = sub i32 %466, %434
  %469 = getelementptr inbounds i16, ptr %dct, i64 %467
  %470 = trunc i32 %468 to i16
  store i16 %470, ptr %469, align 2
  %471 = lshr i32 %435, 2
  %472 = or disjoint i64 %index478, 56
  %473 = sub nsw i32 %471, %436
  %474 = getelementptr inbounds i16, ptr %dct, i64 %472
  %475 = trunc i32 %473 to i16
  store i16 %475, ptr %474, align 2
  br label %pred.store.continue480

pred.store.continue480:                           ; preds = %pred.store.if479, %vector.body477
  br i1 %376, label %pred.store.if481, label %pred.store.continue482

pred.store.if481:                                 ; preds = %pred.store.continue480
  %476 = shl nuw nsw i64 %372, 3
  %477 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %476
  %478 = load i16, ptr %477, align 16
  %479 = or disjoint i64 %476, 7
  %480 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %479
  %481 = load i16, ptr %480, align 2
  %482 = or disjoint i64 %476, 1
  %483 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %482
  %484 = load i16, ptr %483, align 2
  %485 = or disjoint i64 %476, 6
  %486 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %485
  %487 = load i16, ptr %486, align 4
  %488 = or disjoint i64 %476, 2
  %489 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %488
  %490 = load i16, ptr %489, align 4
  %491 = or disjoint i64 %476, 5
  %492 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %491
  %493 = load i16, ptr %492, align 2
  %494 = or disjoint i64 %476, 3
  %495 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %494
  %496 = load i16, ptr %495, align 2
  %497 = or disjoint i64 %476, 4
  %498 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %497
  %499 = load i16, ptr %498, align 8
  %500 = sext i16 %496 to i32
  %501 = sext i16 %499 to i32
  %502 = sext i16 %478 to i32
  %503 = sext i16 %481 to i32
  %504 = sext i16 %490 to i32
  %505 = sext i16 %493 to i32
  %506 = sext i16 %484 to i32
  %507 = sext i16 %487 to i32
  %508 = sub nsw i32 %500, %501
  %509 = sub nsw i32 %502, %503
  %510 = sub nsw i32 %506, %507
  %511 = sub nsw i32 %504, %505
  %512 = ashr i32 %511, 1
  %513 = ashr i32 %510, 1
  %514 = ashr i32 %509, 1
  %515 = add nsw i32 %511, %512
  %516 = add nsw i32 %510, %513
  %517 = add nsw i32 %514, %509
  %518 = sub nsw i32 %510, %511
  %519 = add nsw i32 %515, %508
  %520 = sub nsw i32 %509, %516
  %521 = add nsw i32 %517, %510
  %522 = ashr i32 %508, 1
  %523 = add nsw i32 %508, %518
  %524 = add nsw i32 %507, %506
  %525 = add nsw i32 %505, %504
  %526 = add nsw i32 %503, %502
  %527 = add nsw i32 %501, %500
  %528 = sub nsw i32 %509, %519
  %529 = add nsw i32 %520, %508
  %530 = sub nsw i32 %526, %527
  %531 = sub nsw i32 %524, %525
  %532 = add nsw i32 %521, %511
  %533 = add nsw i32 %523, %522
  %534 = add nsw i32 %525, %524
  %535 = add nsw i32 %527, %526
  %536 = add nsw i32 %535, %534
  %537 = getelementptr inbounds i16, ptr %dct, i64 %372
  %538 = trunc i32 %536 to i16
  store i16 %538, ptr %537, align 2
  %539 = lshr i32 %533, 2
  %540 = or disjoint i64 %index478, 9
  %541 = add nsw i32 %539, %532
  %542 = getelementptr inbounds i16, ptr %dct, i64 %540
  %543 = trunc i32 %541 to i16
  store i16 %543, ptr %542, align 2
  %544 = lshr i32 %531, 1
  %545 = or disjoint i64 %index478, 17
  %546 = add i32 %530, %544
  %547 = getelementptr inbounds i16, ptr %dct, i64 %545
  %548 = trunc i32 %546 to i16
  store i16 %548, ptr %547, align 2
  %549 = lshr i32 %529, 2
  %550 = or disjoint i64 %index478, 25
  %551 = add nsw i32 %528, %549
  %552 = getelementptr inbounds i16, ptr %dct, i64 %550
  %553 = trunc i32 %551 to i16
  store i16 %553, ptr %552, align 2
  %554 = or disjoint i64 %index478, 33
  %555 = sub nsw i32 %535, %534
  %556 = getelementptr inbounds i16, ptr %dct, i64 %554
  %557 = trunc i32 %555 to i16
  store i16 %557, ptr %556, align 2
  %558 = lshr i32 %528, 2
  %559 = or disjoint i64 %index478, 41
  %560 = sub nsw i32 %529, %558
  %561 = getelementptr inbounds i16, ptr %dct, i64 %559
  %562 = trunc i32 %560 to i16
  store i16 %562, ptr %561, align 2
  %563 = lshr i32 %530, 1
  %564 = or disjoint i64 %index478, 49
  %565 = sub i32 %563, %531
  %566 = getelementptr inbounds i16, ptr %dct, i64 %564
  %567 = trunc i32 %565 to i16
  store i16 %567, ptr %566, align 2
  %568 = lshr i32 %532, 2
  %569 = or disjoint i64 %index478, 57
  %570 = sub nsw i32 %568, %533
  %571 = getelementptr inbounds i16, ptr %dct, i64 %569
  %572 = trunc i32 %570 to i16
  store i16 %572, ptr %571, align 2
  br label %pred.store.continue482

pred.store.continue482:                           ; preds = %pred.store.if481, %pred.store.continue480
  br i1 %377, label %pred.store.if483, label %pred.store.continue484

pred.store.if483:                                 ; preds = %pred.store.continue482
  %573 = shl nuw nsw i64 %373, 3
  %574 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %573
  %575 = load i16, ptr %574, align 16
  %576 = or disjoint i64 %573, 7
  %577 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %576
  %578 = load i16, ptr %577, align 2
  %579 = or disjoint i64 %573, 1
  %580 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %579
  %581 = load i16, ptr %580, align 2
  %582 = or disjoint i64 %573, 6
  %583 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %582
  %584 = load i16, ptr %583, align 4
  %585 = or disjoint i64 %573, 2
  %586 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %585
  %587 = load i16, ptr %586, align 4
  %588 = or disjoint i64 %573, 5
  %589 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %588
  %590 = load i16, ptr %589, align 2
  %591 = or disjoint i64 %573, 3
  %592 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %591
  %593 = load i16, ptr %592, align 2
  %594 = or disjoint i64 %573, 4
  %595 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %594
  %596 = load i16, ptr %595, align 8
  %597 = sext i16 %593 to i32
  %598 = sext i16 %596 to i32
  %599 = sext i16 %575 to i32
  %600 = sext i16 %578 to i32
  %601 = sext i16 %587 to i32
  %602 = sext i16 %590 to i32
  %603 = sext i16 %581 to i32
  %604 = sext i16 %584 to i32
  %605 = sub nsw i32 %597, %598
  %606 = sub nsw i32 %599, %600
  %607 = sub nsw i32 %603, %604
  %608 = sub nsw i32 %601, %602
  %609 = ashr i32 %608, 1
  %610 = ashr i32 %607, 1
  %611 = ashr i32 %606, 1
  %612 = add nsw i32 %608, %609
  %613 = add nsw i32 %607, %610
  %614 = add nsw i32 %611, %606
  %615 = sub nsw i32 %607, %608
  %616 = add nsw i32 %612, %605
  %617 = sub nsw i32 %606, %613
  %618 = add nsw i32 %614, %607
  %619 = ashr i32 %605, 1
  %620 = add nsw i32 %605, %615
  %621 = add nsw i32 %604, %603
  %622 = add nsw i32 %602, %601
  %623 = add nsw i32 %600, %599
  %624 = add nsw i32 %598, %597
  %625 = sub nsw i32 %606, %616
  %626 = add nsw i32 %617, %605
  %627 = sub nsw i32 %623, %624
  %628 = sub nsw i32 %621, %622
  %629 = add nsw i32 %618, %608
  %630 = add nsw i32 %620, %619
  %631 = add nsw i32 %622, %621
  %632 = add nsw i32 %624, %623
  %633 = add nsw i32 %632, %631
  %634 = getelementptr inbounds i16, ptr %dct, i64 %373
  %635 = trunc i32 %633 to i16
  store i16 %635, ptr %634, align 2
  %636 = lshr i32 %630, 2
  %637 = or disjoint i64 %index478, 10
  %638 = add nsw i32 %636, %629
  %639 = getelementptr inbounds i16, ptr %dct, i64 %637
  %640 = trunc i32 %638 to i16
  store i16 %640, ptr %639, align 2
  %641 = lshr i32 %628, 1
  %642 = or disjoint i64 %index478, 18
  %643 = add i32 %627, %641
  %644 = getelementptr inbounds i16, ptr %dct, i64 %642
  %645 = trunc i32 %643 to i16
  store i16 %645, ptr %644, align 2
  %646 = lshr i32 %626, 2
  %647 = or disjoint i64 %index478, 26
  %648 = add nsw i32 %625, %646
  %649 = getelementptr inbounds i16, ptr %dct, i64 %647
  %650 = trunc i32 %648 to i16
  store i16 %650, ptr %649, align 2
  %651 = or disjoint i64 %index478, 34
  %652 = sub nsw i32 %632, %631
  %653 = getelementptr inbounds i16, ptr %dct, i64 %651
  %654 = trunc i32 %652 to i16
  store i16 %654, ptr %653, align 2
  %655 = lshr i32 %625, 2
  %656 = or disjoint i64 %index478, 42
  %657 = sub nsw i32 %626, %655
  %658 = getelementptr inbounds i16, ptr %dct, i64 %656
  %659 = trunc i32 %657 to i16
  store i16 %659, ptr %658, align 2
  %660 = lshr i32 %627, 1
  %661 = or disjoint i64 %index478, 50
  %662 = sub i32 %660, %628
  %663 = getelementptr inbounds i16, ptr %dct, i64 %661
  %664 = trunc i32 %662 to i16
  store i16 %664, ptr %663, align 2
  %665 = lshr i32 %629, 2
  %666 = or disjoint i64 %index478, 58
  %667 = sub nsw i32 %665, %630
  %668 = getelementptr inbounds i16, ptr %dct, i64 %666
  %669 = trunc i32 %667 to i16
  store i16 %669, ptr %668, align 2
  br label %pred.store.continue484

pred.store.continue484:                           ; preds = %pred.store.if483, %pred.store.continue482
  br i1 %378, label %pred.store.if485, label %pred.store.continue486

pred.store.if485:                                 ; preds = %pred.store.continue484
  %670 = shl nuw nsw i64 %374, 3
  %671 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %670
  %672 = load i16, ptr %671, align 16
  %673 = or disjoint i64 %670, 7
  %674 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %673
  %675 = load i16, ptr %674, align 2
  %676 = or disjoint i64 %670, 1
  %677 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %676
  %678 = load i16, ptr %677, align 2
  %679 = or disjoint i64 %670, 6
  %680 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %679
  %681 = load i16, ptr %680, align 4
  %682 = or disjoint i64 %670, 2
  %683 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %682
  %684 = load i16, ptr %683, align 4
  %685 = or disjoint i64 %670, 5
  %686 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %685
  %687 = load i16, ptr %686, align 2
  %688 = or disjoint i64 %670, 3
  %689 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %688
  %690 = load i16, ptr %689, align 2
  %691 = or disjoint i64 %670, 4
  %692 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %691
  %693 = load i16, ptr %692, align 8
  %694 = sext i16 %690 to i32
  %695 = sext i16 %693 to i32
  %696 = sext i16 %672 to i32
  %697 = sext i16 %675 to i32
  %698 = sext i16 %684 to i32
  %699 = sext i16 %687 to i32
  %700 = sext i16 %678 to i32
  %701 = sext i16 %681 to i32
  %702 = sub nsw i32 %694, %695
  %703 = sub nsw i32 %696, %697
  %704 = sub nsw i32 %700, %701
  %705 = sub nsw i32 %698, %699
  %706 = ashr i32 %705, 1
  %707 = ashr i32 %704, 1
  %708 = ashr i32 %703, 1
  %709 = add nsw i32 %705, %706
  %710 = add nsw i32 %704, %707
  %711 = add nsw i32 %708, %703
  %712 = sub nsw i32 %704, %705
  %713 = add nsw i32 %709, %702
  %714 = sub nsw i32 %703, %710
  %715 = add nsw i32 %711, %704
  %716 = ashr i32 %702, 1
  %717 = add nsw i32 %702, %712
  %718 = add nsw i32 %701, %700
  %719 = add nsw i32 %699, %698
  %720 = add nsw i32 %697, %696
  %721 = add nsw i32 %695, %694
  %722 = sub nsw i32 %703, %713
  %723 = add nsw i32 %714, %702
  %724 = sub nsw i32 %720, %721
  %725 = sub nsw i32 %718, %719
  %726 = add nsw i32 %715, %705
  %727 = add nsw i32 %717, %716
  %728 = add nsw i32 %719, %718
  %729 = add nsw i32 %721, %720
  %730 = add nsw i32 %729, %728
  %731 = getelementptr inbounds i16, ptr %dct, i64 %374
  %732 = trunc i32 %730 to i16
  store i16 %732, ptr %731, align 2
  %733 = lshr i32 %727, 2
  %734 = or disjoint i64 %index478, 11
  %735 = add nsw i32 %733, %726
  %736 = getelementptr inbounds i16, ptr %dct, i64 %734
  %737 = trunc i32 %735 to i16
  store i16 %737, ptr %736, align 2
  %738 = lshr i32 %725, 1
  %739 = or disjoint i64 %index478, 19
  %740 = add i32 %724, %738
  %741 = getelementptr inbounds i16, ptr %dct, i64 %739
  %742 = trunc i32 %740 to i16
  store i16 %742, ptr %741, align 2
  %743 = lshr i32 %723, 2
  %744 = or disjoint i64 %index478, 27
  %745 = add nsw i32 %722, %743
  %746 = getelementptr inbounds i16, ptr %dct, i64 %744
  %747 = trunc i32 %745 to i16
  store i16 %747, ptr %746, align 2
  %748 = or disjoint i64 %index478, 35
  %749 = sub nsw i32 %729, %728
  %750 = getelementptr inbounds i16, ptr %dct, i64 %748
  %751 = trunc i32 %749 to i16
  store i16 %751, ptr %750, align 2
  %752 = lshr i32 %722, 2
  %753 = or disjoint i64 %index478, 43
  %754 = sub nsw i32 %723, %752
  %755 = getelementptr inbounds i16, ptr %dct, i64 %753
  %756 = trunc i32 %754 to i16
  store i16 %756, ptr %755, align 2
  %757 = lshr i32 %724, 1
  %758 = or disjoint i64 %index478, 51
  %759 = sub i32 %757, %725
  %760 = getelementptr inbounds i16, ptr %dct, i64 %758
  %761 = trunc i32 %759 to i16
  store i16 %761, ptr %760, align 2
  %762 = lshr i32 %726, 2
  %763 = or disjoint i64 %index478, 59
  %764 = sub nsw i32 %762, %727
  %765 = getelementptr inbounds i16, ptr %dct, i64 %763
  %766 = trunc i32 %764 to i16
  store i16 %766, ptr %765, align 2
  br label %pred.store.continue486

pred.store.continue486:                           ; preds = %pred.store.if485, %pred.store.continue484
  %index.next487 = add i64 %index478, 4
  %767 = icmp eq i64 %index.next487, 8
  br i1 %767, label %for.cond.cleanup137, label %vector.body477, !llvm.loop !8

for.cond.cleanup137:                              ; preds = %pred.store.continue486
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add8x8_idct8(ptr nocapture noundef %dst, ptr nocapture noundef %dct) #2 {
entry:
  %0 = load i16, ptr %dct, align 2
  %add = add i16 %0, 32
  store i16 %add, ptr %dct, align 2
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue685, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %pred.store.continue685 ]
  %1 = or disjoint i64 %index, 1
  %2 = or disjoint i64 %index, 2
  %3 = or disjoint i64 %index, 3
  %4 = icmp ult i64 %index, 8
  %5 = icmp ult i64 %index, 8
  %6 = icmp ult i64 %index, 8
  %7 = icmp ult i64 %index, 8
  br i1 %4, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %8 = getelementptr inbounds i16, ptr %dct, i64 %index
  %9 = load i16, ptr %8, align 2
  %10 = or disjoint i64 %index, 32
  %11 = getelementptr inbounds i16, ptr %dct, i64 %10
  %12 = load i16, ptr %11, align 2
  %13 = or disjoint i64 %index, 16
  %14 = getelementptr inbounds i16, ptr %dct, i64 %13
  %15 = load i16, ptr %14, align 2
  %16 = or disjoint i64 %index, 48
  %17 = getelementptr inbounds i16, ptr %dct, i64 %16
  %18 = load i16, ptr %17, align 2
  %19 = or disjoint i64 %index, 24
  %20 = getelementptr inbounds i16, ptr %dct, i64 %19
  %21 = load i16, ptr %20, align 2
  %22 = or disjoint i64 %index, 40
  %23 = getelementptr inbounds i16, ptr %dct, i64 %22
  %24 = load i16, ptr %23, align 2
  %25 = or disjoint i64 %index, 56
  %26 = getelementptr inbounds i16, ptr %dct, i64 %25
  %27 = load i16, ptr %26, align 2
  %28 = or disjoint i64 %index, 8
  %29 = getelementptr inbounds i16, ptr %dct, i64 %28
  %30 = load i16, ptr %29, align 2
  %31 = sext i16 %30 to i32
  %32 = sext i16 %21 to i32
  %33 = sext i16 %27 to i32
  %34 = sext i16 %24 to i32
  %35 = ashr i32 %34, 1
  %36 = add nsw i32 %33, %34
  %37 = add nsw i32 %34, %32
  %38 = add nsw i32 %36, %35
  %39 = ashr i32 %31, 1
  %40 = add nsw i32 %37, %31
  %41 = sub nsw i32 %38, %31
  %42 = add nsw i32 %40, %39
  %43 = sext i16 %15 to i32
  %44 = ashr i32 %32, 1
  %45 = ashr i32 %33, 1
  %46 = add nsw i32 %32, %33
  %47 = add nsw i32 %44, %32
  %48 = add nsw i32 %46, %45
  %49 = sub nsw i32 %33, %47
  %50 = sext i16 %18 to i32
  %51 = ashr i32 %43, 1
  %52 = zext i16 %9 to i32
  %53 = zext i16 %12 to i32
  %54 = ashr i32 %50, 1
  %55 = sub nsw i32 %34, %48
  %56 = ashr i32 %42, 2
  %57 = add nsw i32 %49, %31
  %58 = ashr i32 %41, 2
  %59 = sub nsw i32 %52, %53
  %60 = sub nsw i32 %51, %50
  %61 = ashr i32 %57, 2
  %62 = add nuw nsw i32 %53, %52
  %63 = add nsw i32 %54, %43
  %64 = ashr i32 %55, 2
  %65 = sub nsw i32 %62, %63
  %66 = add nsw i32 %56, %55
  %67 = sub nsw i32 %59, %60
  %68 = add nsw i32 %58, %57
  %69 = add nsw i32 %60, %59
  %70 = sub nsw i32 %61, %41
  %71 = add nsw i32 %63, %62
  %72 = sub nsw i32 %42, %64
  %73 = add nsw i32 %72, %71
  %74 = trunc i32 %73 to i16
  store i16 %74, ptr %8, align 2
  %75 = add nsw i32 %70, %69
  %76 = trunc i32 %75 to i16
  store i16 %76, ptr %29, align 2
  %77 = add nsw i32 %68, %67
  %78 = trunc i32 %77 to i16
  store i16 %78, ptr %14, align 2
  %79 = add nsw i32 %66, %65
  %80 = trunc i32 %79 to i16
  store i16 %80, ptr %20, align 2
  %81 = sub nsw i32 %65, %66
  %82 = trunc i32 %81 to i16
  store i16 %82, ptr %11, align 2
  %83 = sub nsw i32 %67, %68
  %84 = trunc i32 %83 to i16
  store i16 %84, ptr %23, align 2
  %85 = sub nsw i32 %69, %70
  %86 = trunc i32 %85 to i16
  store i16 %86, ptr %17, align 2
  %87 = sub nsw i32 %71, %72
  %88 = trunc i32 %87 to i16
  store i16 %88, ptr %26, align 2
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  br i1 %5, label %pred.store.if680, label %pred.store.continue681

pred.store.if680:                                 ; preds = %pred.store.continue
  %89 = getelementptr inbounds i16, ptr %dct, i64 %1
  %90 = load i16, ptr %89, align 2
  %91 = or disjoint i64 %index, 33
  %92 = getelementptr inbounds i16, ptr %dct, i64 %91
  %93 = load i16, ptr %92, align 2
  %94 = or disjoint i64 %index, 17
  %95 = getelementptr inbounds i16, ptr %dct, i64 %94
  %96 = load i16, ptr %95, align 2
  %97 = or disjoint i64 %index, 49
  %98 = getelementptr inbounds i16, ptr %dct, i64 %97
  %99 = load i16, ptr %98, align 2
  %100 = or disjoint i64 %index, 25
  %101 = getelementptr inbounds i16, ptr %dct, i64 %100
  %102 = load i16, ptr %101, align 2
  %103 = or disjoint i64 %index, 41
  %104 = getelementptr inbounds i16, ptr %dct, i64 %103
  %105 = load i16, ptr %104, align 2
  %106 = or disjoint i64 %index, 57
  %107 = getelementptr inbounds i16, ptr %dct, i64 %106
  %108 = load i16, ptr %107, align 2
  %109 = or disjoint i64 %index, 9
  %110 = getelementptr inbounds i16, ptr %dct, i64 %109
  %111 = load i16, ptr %110, align 2
  %112 = sext i16 %111 to i32
  %113 = sext i16 %102 to i32
  %114 = sext i16 %108 to i32
  %115 = sext i16 %105 to i32
  %116 = ashr i32 %115, 1
  %117 = add nsw i32 %114, %115
  %118 = add nsw i32 %115, %113
  %119 = add nsw i32 %117, %116
  %120 = ashr i32 %112, 1
  %121 = add nsw i32 %118, %112
  %122 = sub nsw i32 %119, %112
  %123 = add nsw i32 %121, %120
  %124 = sext i16 %96 to i32
  %125 = ashr i32 %113, 1
  %126 = ashr i32 %114, 1
  %127 = add nsw i32 %113, %114
  %128 = add nsw i32 %125, %113
  %129 = add nsw i32 %127, %126
  %130 = sub nsw i32 %114, %128
  %131 = sext i16 %99 to i32
  %132 = ashr i32 %124, 1
  %133 = zext i16 %90 to i32
  %134 = zext i16 %93 to i32
  %135 = ashr i32 %131, 1
  %136 = sub nsw i32 %115, %129
  %137 = ashr i32 %123, 2
  %138 = add nsw i32 %130, %112
  %139 = ashr i32 %122, 2
  %140 = sub nsw i32 %133, %134
  %141 = sub nsw i32 %132, %131
  %142 = ashr i32 %138, 2
  %143 = add nuw nsw i32 %134, %133
  %144 = add nsw i32 %135, %124
  %145 = ashr i32 %136, 2
  %146 = sub nsw i32 %143, %144
  %147 = add nsw i32 %137, %136
  %148 = sub nsw i32 %140, %141
  %149 = add nsw i32 %139, %138
  %150 = add nsw i32 %141, %140
  %151 = sub nsw i32 %142, %122
  %152 = add nsw i32 %144, %143
  %153 = sub nsw i32 %123, %145
  %154 = add nsw i32 %153, %152
  %155 = trunc i32 %154 to i16
  store i16 %155, ptr %89, align 2
  %156 = add nsw i32 %151, %150
  %157 = trunc i32 %156 to i16
  store i16 %157, ptr %110, align 2
  %158 = add nsw i32 %149, %148
  %159 = trunc i32 %158 to i16
  store i16 %159, ptr %95, align 2
  %160 = add nsw i32 %147, %146
  %161 = trunc i32 %160 to i16
  store i16 %161, ptr %101, align 2
  %162 = sub nsw i32 %146, %147
  %163 = trunc i32 %162 to i16
  store i16 %163, ptr %92, align 2
  %164 = sub nsw i32 %148, %149
  %165 = trunc i32 %164 to i16
  store i16 %165, ptr %104, align 2
  %166 = sub nsw i32 %150, %151
  %167 = trunc i32 %166 to i16
  store i16 %167, ptr %98, align 2
  %168 = sub nsw i32 %152, %153
  %169 = trunc i32 %168 to i16
  store i16 %169, ptr %107, align 2
  br label %pred.store.continue681

pred.store.continue681:                           ; preds = %pred.store.if680, %pred.store.continue
  br i1 %6, label %pred.store.if682, label %pred.store.continue683

pred.store.if682:                                 ; preds = %pred.store.continue681
  %170 = getelementptr inbounds i16, ptr %dct, i64 %2
  %171 = load i16, ptr %170, align 2
  %172 = or disjoint i64 %index, 34
  %173 = getelementptr inbounds i16, ptr %dct, i64 %172
  %174 = load i16, ptr %173, align 2
  %175 = or disjoint i64 %index, 18
  %176 = getelementptr inbounds i16, ptr %dct, i64 %175
  %177 = load i16, ptr %176, align 2
  %178 = or disjoint i64 %index, 50
  %179 = getelementptr inbounds i16, ptr %dct, i64 %178
  %180 = load i16, ptr %179, align 2
  %181 = or disjoint i64 %index, 26
  %182 = getelementptr inbounds i16, ptr %dct, i64 %181
  %183 = load i16, ptr %182, align 2
  %184 = or disjoint i64 %index, 42
  %185 = getelementptr inbounds i16, ptr %dct, i64 %184
  %186 = load i16, ptr %185, align 2
  %187 = or disjoint i64 %index, 58
  %188 = getelementptr inbounds i16, ptr %dct, i64 %187
  %189 = load i16, ptr %188, align 2
  %190 = or disjoint i64 %index, 10
  %191 = getelementptr inbounds i16, ptr %dct, i64 %190
  %192 = load i16, ptr %191, align 2
  %193 = sext i16 %192 to i32
  %194 = sext i16 %183 to i32
  %195 = sext i16 %189 to i32
  %196 = sext i16 %186 to i32
  %197 = ashr i32 %196, 1
  %198 = add nsw i32 %195, %196
  %199 = add nsw i32 %196, %194
  %200 = add nsw i32 %198, %197
  %201 = ashr i32 %193, 1
  %202 = add nsw i32 %199, %193
  %203 = sub nsw i32 %200, %193
  %204 = add nsw i32 %202, %201
  %205 = sext i16 %177 to i32
  %206 = ashr i32 %194, 1
  %207 = ashr i32 %195, 1
  %208 = add nsw i32 %194, %195
  %209 = add nsw i32 %206, %194
  %210 = add nsw i32 %208, %207
  %211 = sub nsw i32 %195, %209
  %212 = sext i16 %180 to i32
  %213 = ashr i32 %205, 1
  %214 = zext i16 %171 to i32
  %215 = zext i16 %174 to i32
  %216 = ashr i32 %212, 1
  %217 = sub nsw i32 %196, %210
  %218 = ashr i32 %204, 2
  %219 = add nsw i32 %211, %193
  %220 = ashr i32 %203, 2
  %221 = sub nsw i32 %214, %215
  %222 = sub nsw i32 %213, %212
  %223 = ashr i32 %219, 2
  %224 = add nuw nsw i32 %215, %214
  %225 = add nsw i32 %216, %205
  %226 = ashr i32 %217, 2
  %227 = sub nsw i32 %224, %225
  %228 = add nsw i32 %218, %217
  %229 = sub nsw i32 %221, %222
  %230 = add nsw i32 %220, %219
  %231 = add nsw i32 %222, %221
  %232 = sub nsw i32 %223, %203
  %233 = add nsw i32 %225, %224
  %234 = sub nsw i32 %204, %226
  %235 = add nsw i32 %234, %233
  %236 = trunc i32 %235 to i16
  store i16 %236, ptr %170, align 2
  %237 = add nsw i32 %232, %231
  %238 = trunc i32 %237 to i16
  store i16 %238, ptr %191, align 2
  %239 = add nsw i32 %230, %229
  %240 = trunc i32 %239 to i16
  store i16 %240, ptr %176, align 2
  %241 = add nsw i32 %228, %227
  %242 = trunc i32 %241 to i16
  store i16 %242, ptr %182, align 2
  %243 = sub nsw i32 %227, %228
  %244 = trunc i32 %243 to i16
  store i16 %244, ptr %173, align 2
  %245 = sub nsw i32 %229, %230
  %246 = trunc i32 %245 to i16
  store i16 %246, ptr %185, align 2
  %247 = sub nsw i32 %231, %232
  %248 = trunc i32 %247 to i16
  store i16 %248, ptr %179, align 2
  %249 = sub nsw i32 %233, %234
  %250 = trunc i32 %249 to i16
  store i16 %250, ptr %188, align 2
  br label %pred.store.continue683

pred.store.continue683:                           ; preds = %pred.store.if682, %pred.store.continue681
  br i1 %7, label %pred.store.if684, label %pred.store.continue685

pred.store.if684:                                 ; preds = %pred.store.continue683
  %251 = getelementptr inbounds i16, ptr %dct, i64 %3
  %252 = load i16, ptr %251, align 2
  %253 = or disjoint i64 %index, 35
  %254 = getelementptr inbounds i16, ptr %dct, i64 %253
  %255 = load i16, ptr %254, align 2
  %256 = or disjoint i64 %index, 19
  %257 = getelementptr inbounds i16, ptr %dct, i64 %256
  %258 = load i16, ptr %257, align 2
  %259 = or disjoint i64 %index, 51
  %260 = getelementptr inbounds i16, ptr %dct, i64 %259
  %261 = load i16, ptr %260, align 2
  %262 = or disjoint i64 %index, 27
  %263 = getelementptr inbounds i16, ptr %dct, i64 %262
  %264 = load i16, ptr %263, align 2
  %265 = or disjoint i64 %index, 43
  %266 = getelementptr inbounds i16, ptr %dct, i64 %265
  %267 = load i16, ptr %266, align 2
  %268 = or disjoint i64 %index, 59
  %269 = getelementptr inbounds i16, ptr %dct, i64 %268
  %270 = load i16, ptr %269, align 2
  %271 = or disjoint i64 %index, 11
  %272 = getelementptr inbounds i16, ptr %dct, i64 %271
  %273 = load i16, ptr %272, align 2
  %274 = sext i16 %273 to i32
  %275 = sext i16 %264 to i32
  %276 = sext i16 %270 to i32
  %277 = sext i16 %267 to i32
  %278 = ashr i32 %277, 1
  %279 = add nsw i32 %276, %277
  %280 = add nsw i32 %277, %275
  %281 = add nsw i32 %279, %278
  %282 = ashr i32 %274, 1
  %283 = add nsw i32 %280, %274
  %284 = sub nsw i32 %281, %274
  %285 = add nsw i32 %283, %282
  %286 = sext i16 %258 to i32
  %287 = ashr i32 %275, 1
  %288 = ashr i32 %276, 1
  %289 = add nsw i32 %275, %276
  %290 = add nsw i32 %287, %275
  %291 = add nsw i32 %289, %288
  %292 = sub nsw i32 %276, %290
  %293 = sext i16 %261 to i32
  %294 = ashr i32 %286, 1
  %295 = zext i16 %252 to i32
  %296 = zext i16 %255 to i32
  %297 = ashr i32 %293, 1
  %298 = sub nsw i32 %277, %291
  %299 = ashr i32 %285, 2
  %300 = add nsw i32 %292, %274
  %301 = ashr i32 %284, 2
  %302 = sub nsw i32 %295, %296
  %303 = sub nsw i32 %294, %293
  %304 = ashr i32 %300, 2
  %305 = add nuw nsw i32 %296, %295
  %306 = add nsw i32 %297, %286
  %307 = ashr i32 %298, 2
  %308 = sub nsw i32 %305, %306
  %309 = add nsw i32 %299, %298
  %310 = sub nsw i32 %302, %303
  %311 = add nsw i32 %301, %300
  %312 = add nsw i32 %303, %302
  %313 = sub nsw i32 %304, %284
  %314 = add nsw i32 %306, %305
  %315 = sub nsw i32 %285, %307
  %316 = add nsw i32 %315, %314
  %317 = trunc i32 %316 to i16
  store i16 %317, ptr %251, align 2
  %318 = add nsw i32 %313, %312
  %319 = trunc i32 %318 to i16
  store i16 %319, ptr %272, align 2
  %320 = add nsw i32 %311, %310
  %321 = trunc i32 %320 to i16
  store i16 %321, ptr %257, align 2
  %322 = add nsw i32 %309, %308
  %323 = trunc i32 %322 to i16
  store i16 %323, ptr %263, align 2
  %324 = sub nsw i32 %308, %309
  %325 = trunc i32 %324 to i16
  store i16 %325, ptr %254, align 2
  %326 = sub nsw i32 %310, %311
  %327 = trunc i32 %326 to i16
  store i16 %327, ptr %266, align 2
  %328 = sub nsw i32 %312, %313
  %329 = trunc i32 %328 to i16
  store i16 %329, ptr %260, align 2
  %330 = sub nsw i32 %314, %315
  %331 = trunc i32 %330 to i16
  store i16 %331, ptr %269, align 2
  br label %pred.store.continue685

pred.store.continue685:                           ; preds = %pred.store.if684, %pred.store.continue683
  %index.next = add i64 %index, 4
  %332 = icmp eq i64 %index.next, 8
  br i1 %332, label %for.body177, label %vector.body, !llvm.loop !9

for.cond.cleanup176:                              ; preds = %for.body177
  ret void

for.body177:                                      ; preds = %pred.store.continue685, %for.body177
  %indvars.iv659 = phi i64 [ %indvars.iv.next660, %for.body177 ], [ 0, %pred.store.continue685 ]
  %333 = shl nuw nsw i64 %indvars.iv659, 3
  %arrayidx181 = getelementptr inbounds i16, ptr %dct, i64 %333
  %334 = load i16, ptr %arrayidx181, align 2
  %conv182 = sext i16 %334 to i32
  %335 = or disjoint i64 %333, 4
  %arrayidx186 = getelementptr inbounds i16, ptr %dct, i64 %335
  %336 = load i16, ptr %arrayidx186, align 2
  %conv187 = sext i16 %336 to i32
  %add188 = add nsw i32 %conv187, %conv182
  %sub200 = sub nsw i32 %conv182, %conv187
  %337 = or disjoint i64 %333, 2
  %arrayidx205 = getelementptr inbounds i16, ptr %dct, i64 %337
  %338 = load i16, ptr %arrayidx205, align 2
  %conv206 = sext i16 %338 to i32
  %shr207 = ashr i32 %conv206, 1
  %339 = or disjoint i64 %333, 6
  %arrayidx211 = getelementptr inbounds i16, ptr %dct, i64 %339
  %340 = load i16, ptr %arrayidx211, align 2
  %conv212 = sext i16 %340 to i32
  %sub213 = sub nsw i32 %shr207, %conv212
  %shr220 = ashr i32 %conv212, 1
  %add226 = add nsw i32 %shr220, %conv206
  %add228 = add nsw i32 %add226, %add188
  %add230 = add nsw i32 %sub213, %sub200
  %sub232 = sub nsw i32 %sub200, %sub213
  %sub234 = sub nsw i32 %add188, %add226
  %341 = or disjoint i64 %333, 3
  %arrayidx239 = getelementptr inbounds i16, ptr %dct, i64 %341
  %342 = load i16, ptr %arrayidx239, align 2
  %conv240 = sext i16 %342 to i32
  %343 = or disjoint i64 %333, 5
  %arrayidx245 = getelementptr inbounds i16, ptr %dct, i64 %343
  %344 = load i16, ptr %arrayidx245, align 2
  %conv246 = sext i16 %344 to i32
  %345 = or disjoint i64 %333, 7
  %arrayidx251 = getelementptr inbounds i16, ptr %dct, i64 %345
  %346 = load i16, ptr %arrayidx251, align 2
  %conv252 = sext i16 %346 to i32
  %shr259 = ashr i32 %conv252, 1
  %347 = add nsw i32 %conv240, %conv252
  %348 = add nsw i32 %347, %shr259
  %sub260 = sub nsw i32 %conv246, %348
  %349 = or disjoint i64 %333, 1
  %arrayidx265 = getelementptr inbounds i16, ptr %dct, i64 %349
  %350 = load i16, ptr %arrayidx265, align 2
  %conv266 = sext i16 %350 to i32
  %shr284 = ashr i32 %conv240, 1
  %351 = add nsw i32 %shr284, %conv240
  %add272 = sub nsw i32 %conv252, %351
  %sub285 = add nsw i32 %add272, %conv266
  %shr310 = ashr i32 %conv246, 1
  %add298 = add nsw i32 %conv252, %conv246
  %add304 = add nsw i32 %add298, %shr310
  %add311 = sub nsw i32 %add304, %conv266
  %add323 = add nsw i32 %conv246, %conv240
  %add329 = add nsw i32 %add323, %conv266
  %shr335 = ashr i32 %conv266, 1
  %add336 = add nsw i32 %add329, %shr335
  %shr338 = ashr i32 %add336, 2
  %add339 = add nsw i32 %shr338, %sub260
  %shr341 = ashr i32 %add311, 2
  %add342 = add nsw i32 %shr341, %sub285
  %shr344 = ashr i32 %sub285, 2
  %sub345 = sub nsw i32 %shr344, %add311
  %shr347 = ashr i32 %sub260, 2
  %sub348 = sub nsw i32 %add336, %shr347
  %arrayidx351 = getelementptr inbounds i8, ptr %dst, i64 %indvars.iv659
  %352 = load i8, ptr %arrayidx351, align 1
  %conv352 = zext i8 %352 to i32
  %add353 = add nsw i32 %sub348, %add228
  %shr354 = ashr i32 %add353, 6
  %add355 = add nsw i32 %shr354, %conv352
  %tobool.not.i = icmp ult i32 %add355, 256
  %353 = icmp sgt i32 %add355, 0
  %shr.i = sext i1 %353 to i32
  %cond.i = select i1 %tobool.not.i, i32 %add355, i32 %shr.i
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, ptr %arrayidx351, align 1
  %354 = or disjoint i64 %indvars.iv659, 32
  %arrayidx361 = getelementptr inbounds i8, ptr %dst, i64 %354
  %355 = load i8, ptr %arrayidx361, align 1
  %conv362 = zext i8 %355 to i32
  %add363 = add nsw i32 %sub345, %add230
  %shr364 = ashr i32 %add363, 6
  %add365 = add nsw i32 %shr364, %conv362
  %tobool.not.i616 = icmp ult i32 %add365, 256
  %356 = icmp sgt i32 %add365, 0
  %shr.i617 = sext i1 %356 to i32
  %cond.i618 = select i1 %tobool.not.i616, i32 %add365, i32 %shr.i617
  %conv.i619 = trunc i32 %cond.i618 to i8
  store i8 %conv.i619, ptr %arrayidx361, align 1
  %357 = or disjoint i64 %indvars.iv659, 64
  %arrayidx372 = getelementptr inbounds i8, ptr %dst, i64 %357
  %358 = load i8, ptr %arrayidx372, align 1
  %conv373 = zext i8 %358 to i32
  %add374 = add nsw i32 %add342, %sub232
  %shr375 = ashr i32 %add374, 6
  %add376 = add nsw i32 %shr375, %conv373
  %tobool.not.i620 = icmp ult i32 %add376, 256
  %359 = icmp sgt i32 %add376, 0
  %shr.i621 = sext i1 %359 to i32
  %cond.i622 = select i1 %tobool.not.i620, i32 %add376, i32 %shr.i621
  %conv.i623 = trunc i32 %cond.i622 to i8
  store i8 %conv.i623, ptr %arrayidx372, align 1
  %360 = or disjoint i64 %indvars.iv659, 96
  %arrayidx383 = getelementptr inbounds i8, ptr %dst, i64 %360
  %361 = load i8, ptr %arrayidx383, align 1
  %conv384 = zext i8 %361 to i32
  %add385 = add nsw i32 %add339, %sub234
  %shr386 = ashr i32 %add385, 6
  %add387 = add nsw i32 %shr386, %conv384
  %tobool.not.i624 = icmp ult i32 %add387, 256
  %362 = icmp sgt i32 %add387, 0
  %shr.i625 = sext i1 %362 to i32
  %cond.i626 = select i1 %tobool.not.i624, i32 %add387, i32 %shr.i625
  %conv.i627 = trunc i32 %cond.i626 to i8
  store i8 %conv.i627, ptr %arrayidx383, align 1
  %363 = or disjoint i64 %indvars.iv659, 128
  %arrayidx394 = getelementptr inbounds i8, ptr %dst, i64 %363
  %364 = load i8, ptr %arrayidx394, align 1
  %conv395 = zext i8 %364 to i32
  %sub396 = sub nsw i32 %sub234, %add339
  %shr397 = ashr i32 %sub396, 6
  %add398 = add nsw i32 %shr397, %conv395
  %tobool.not.i628 = icmp ult i32 %add398, 256
  %365 = icmp sgt i32 %add398, 0
  %shr.i629 = sext i1 %365 to i32
  %cond.i630 = select i1 %tobool.not.i628, i32 %add398, i32 %shr.i629
  %conv.i631 = trunc i32 %cond.i630 to i8
  store i8 %conv.i631, ptr %arrayidx394, align 1
  %366 = or disjoint i64 %indvars.iv659, 160
  %arrayidx405 = getelementptr inbounds i8, ptr %dst, i64 %366
  %367 = load i8, ptr %arrayidx405, align 1
  %conv406 = zext i8 %367 to i32
  %sub407 = sub nsw i32 %sub232, %add342
  %shr408 = ashr i32 %sub407, 6
  %add409 = add nsw i32 %shr408, %conv406
  %tobool.not.i632 = icmp ult i32 %add409, 256
  %368 = icmp sgt i32 %add409, 0
  %shr.i633 = sext i1 %368 to i32
  %cond.i634 = select i1 %tobool.not.i632, i32 %add409, i32 %shr.i633
  %conv.i635 = trunc i32 %cond.i634 to i8
  store i8 %conv.i635, ptr %arrayidx405, align 1
  %369 = or disjoint i64 %indvars.iv659, 192
  %arrayidx416 = getelementptr inbounds i8, ptr %dst, i64 %369
  %370 = load i8, ptr %arrayidx416, align 1
  %conv417 = zext i8 %370 to i32
  %sub418 = sub nsw i32 %add230, %sub345
  %shr419 = ashr i32 %sub418, 6
  %add420 = add nsw i32 %shr419, %conv417
  %tobool.not.i636 = icmp ult i32 %add420, 256
  %371 = icmp sgt i32 %add420, 0
  %shr.i637 = sext i1 %371 to i32
  %cond.i638 = select i1 %tobool.not.i636, i32 %add420, i32 %shr.i637
  %conv.i639 = trunc i32 %cond.i638 to i8
  store i8 %conv.i639, ptr %arrayidx416, align 1
  %372 = or disjoint i64 %indvars.iv659, 224
  %arrayidx427 = getelementptr inbounds i8, ptr %dst, i64 %372
  %373 = load i8, ptr %arrayidx427, align 1
  %conv428 = zext i8 %373 to i32
  %sub429 = sub nsw i32 %add228, %sub348
  %shr430 = ashr i32 %sub429, 6
  %add431 = add nsw i32 %shr430, %conv428
  %tobool.not.i640 = icmp ult i32 %add431, 256
  %374 = icmp sgt i32 %add431, 0
  %shr.i641 = sext i1 %374 to i32
  %cond.i642 = select i1 %tobool.not.i640, i32 %add431, i32 %shr.i641
  %conv.i643 = trunc i32 %cond.i642 to i8
  store i8 %conv.i643, ptr %arrayidx427, align 1
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1
  %exitcond677.not = icmp eq i64 %indvars.iv.next660, 8
  br i1 %exitcond677.not, label %for.cond.cleanup176, label %for.body177
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sub16x16_dct8(ptr nocapture noundef writeonly %dct, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2) #2 {
entry:
  tail call void @sub8x8_dct8(ptr noundef %dct, ptr noundef %pix1, ptr noundef %pix2)
  %arrayidx3 = getelementptr inbounds i8, ptr %dct, i64 128
  %arrayidx5 = getelementptr inbounds i8, ptr %pix1, i64 8
  %arrayidx6 = getelementptr inbounds i8, ptr %pix2, i64 8
  tail call void @sub8x8_dct8(ptr noundef nonnull %arrayidx3, ptr noundef nonnull %arrayidx5, ptr noundef nonnull %arrayidx6)
  %arrayidx7 = getelementptr inbounds i8, ptr %dct, i64 256
  %arrayidx9 = getelementptr inbounds i8, ptr %pix1, i64 128
  %arrayidx10 = getelementptr inbounds i8, ptr %pix2, i64 256
  tail call void @sub8x8_dct8(ptr noundef nonnull %arrayidx7, ptr noundef nonnull %arrayidx9, ptr noundef nonnull %arrayidx10)
  %arrayidx11 = getelementptr inbounds i8, ptr %dct, i64 384
  %arrayidx13 = getelementptr inbounds i8, ptr %pix1, i64 136
  %arrayidx14 = getelementptr inbounds i8, ptr %pix2, i64 264
  tail call void @sub8x8_dct8(ptr noundef nonnull %arrayidx11, ptr noundef nonnull %arrayidx13, ptr noundef nonnull %arrayidx14)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add16x16_idct8(ptr nocapture noundef %dst, ptr nocapture noundef %dct) #2 {
entry:
  tail call void @add8x8_idct8(ptr noundef %dst, ptr noundef %dct)
  %arrayidx2 = getelementptr inbounds i8, ptr %dst, i64 8
  %arrayidx3 = getelementptr inbounds i8, ptr %dct, i64 128
  tail call void @add8x8_idct8(ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx3)
  %arrayidx5 = getelementptr inbounds i8, ptr %dst, i64 256
  %arrayidx6 = getelementptr inbounds i8, ptr %dct, i64 256
  tail call void @add8x8_idct8(ptr noundef nonnull %arrayidx5, ptr noundef nonnull %arrayidx6)
  %arrayidx8 = getelementptr inbounds i8, ptr %dst, i64 264
  %arrayidx9 = getelementptr inbounds i8, ptr %dct, i64 384
  tail call void @add8x8_idct8(ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx9)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @dct4x4dc(ptr nocapture noundef %d) #1 {
entry:
  %0 = load i16, ptr %d, align 2
  %conv207 = zext i16 %0 to i32
  %arrayidx4 = getelementptr inbounds i8, ptr %d, i64 2
  %1 = load i16, ptr %arrayidx4, align 2
  %conv5208 = zext i16 %1 to i32
  %add6 = add nuw nsw i32 %conv5208, %conv207
  %sub = sub nsw i32 %conv207, %conv5208
  %arrayidx20 = getelementptr inbounds i8, ptr %d, i64 4
  %2 = load i16, ptr %arrayidx20, align 2
  %conv21209 = zext i16 %2 to i32
  %arrayidx25 = getelementptr inbounds i8, ptr %d, i64 6
  %3 = load i16, ptr %arrayidx25, align 2
  %conv26210 = zext i16 %3 to i32
  %add27 = add nuw nsw i32 %conv26210, %conv21209
  %sub38 = sub nsw i32 %conv21209, %conv26210
  %add39 = add nuw nsw i32 %add27, %add6
  %sub44 = sub nsw i32 %add6, %add27
  %sub49 = sub nsw i32 %sub, %sub38
  %add54 = add nsw i32 %sub38, %sub
  %arrayidx.1 = getelementptr inbounds i8, ptr %d, i64 8
  %4 = load i16, ptr %arrayidx.1, align 2
  %conv.1211 = zext i16 %4 to i32
  %arrayidx4.1 = getelementptr inbounds i8, ptr %d, i64 10
  %5 = load i16, ptr %arrayidx4.1, align 2
  %conv5.1212 = zext i16 %5 to i32
  %add6.1 = add nuw nsw i32 %conv5.1212, %conv.1211
  %sub.1 = sub nsw i32 %conv.1211, %conv5.1212
  %arrayidx20.1 = getelementptr inbounds i8, ptr %d, i64 12
  %6 = load i16, ptr %arrayidx20.1, align 2
  %conv21.1213 = zext i16 %6 to i32
  %arrayidx25.1 = getelementptr inbounds i8, ptr %d, i64 14
  %7 = load i16, ptr %arrayidx25.1, align 2
  %conv26.1214 = zext i16 %7 to i32
  %add27.1 = add nuw nsw i32 %conv26.1214, %conv21.1213
  %sub38.1 = sub nsw i32 %conv21.1213, %conv26.1214
  %add39.1 = add nuw nsw i32 %add27.1, %add6.1
  %sub44.1 = sub nsw i32 %add6.1, %add27.1
  %sub49.1 = sub nsw i32 %sub.1, %sub38.1
  %add54.1 = add nsw i32 %sub38.1, %sub.1
  %arrayidx.2 = getelementptr inbounds i8, ptr %d, i64 16
  %8 = load i16, ptr %arrayidx.2, align 2
  %conv.2215 = zext i16 %8 to i32
  %arrayidx4.2 = getelementptr inbounds i8, ptr %d, i64 18
  %9 = load i16, ptr %arrayidx4.2, align 2
  %conv5.2216 = zext i16 %9 to i32
  %add6.2 = add nuw nsw i32 %conv5.2216, %conv.2215
  %sub.2 = sub nsw i32 %conv.2215, %conv5.2216
  %arrayidx20.2 = getelementptr inbounds i8, ptr %d, i64 20
  %10 = load i16, ptr %arrayidx20.2, align 2
  %conv21.2217 = zext i16 %10 to i32
  %arrayidx25.2 = getelementptr inbounds i8, ptr %d, i64 22
  %11 = load i16, ptr %arrayidx25.2, align 2
  %conv26.2218 = zext i16 %11 to i32
  %add27.2 = add nuw nsw i32 %conv26.2218, %conv21.2217
  %sub38.2 = sub nsw i32 %conv21.2217, %conv26.2218
  %add39.2 = add nuw nsw i32 %add27.2, %add6.2
  %sub44.2 = sub nsw i32 %add6.2, %add27.2
  %sub49.2 = sub nsw i32 %sub.2, %sub38.2
  %add54.2 = add nsw i32 %sub38.2, %sub.2
  %arrayidx.3 = getelementptr inbounds i8, ptr %d, i64 24
  %12 = load i16, ptr %arrayidx.3, align 2
  %conv.3219 = zext i16 %12 to i32
  %arrayidx4.3 = getelementptr inbounds i8, ptr %d, i64 26
  %13 = load i16, ptr %arrayidx4.3, align 2
  %conv5.3220 = zext i16 %13 to i32
  %add6.3 = add nuw nsw i32 %conv5.3220, %conv.3219
  %sub.3 = sub nsw i32 %conv.3219, %conv5.3220
  %arrayidx20.3 = getelementptr inbounds i8, ptr %d, i64 28
  %14 = load i16, ptr %arrayidx20.3, align 2
  %conv21.3221 = zext i16 %14 to i32
  %arrayidx25.3 = getelementptr inbounds i8, ptr %d, i64 30
  %15 = load i16, ptr %arrayidx25.3, align 2
  %conv26.3222 = zext i16 %15 to i32
  %add27.3 = add nuw nsw i32 %conv26.3222, %conv21.3221
  %sub38.3 = sub nsw i32 %conv21.3221, %conv26.3222
  %add39.3 = add nuw nsw i32 %add27.3, %add6.3
  %sub44.3 = sub nsw i32 %add6.3, %add27.3
  %sub49.3 = sub nsw i32 %sub.3, %sub38.3
  %add54.3 = add nsw i32 %sub38.3, %sub.3
  %sext = shl i32 %add39, 16
  %conv70 = ashr exact i32 %sext, 16
  %sext223 = shl i32 %add39.1, 16
  %conv75 = ashr exact i32 %sext223, 16
  %add76 = add nsw i32 %conv75, %conv70
  %sub88 = sub nsw i32 %conv70, %conv75
  %sext224 = shl i32 %add39.2, 16
  %conv94 = ashr exact i32 %sext224, 16
  %sext225 = shl i32 %add39.3, 16
  %conv99 = ashr exact i32 %sext225, 16
  %add100 = add nsw i32 %conv99, %conv94
  %sub112 = sub nsw i32 %conv94, %conv99
  %add113 = add nsw i32 %add76, 1
  %add114 = add nsw i32 %add113, %add100
  %shr = lshr i32 %add114, 1
  %conv115 = trunc i32 %shr to i16
  store i16 %conv115, ptr %d, align 2
  %add121 = sub nsw i32 %add113, %add100
  %shr122 = lshr i32 %add121, 1
  %conv123 = trunc i32 %shr122 to i16
  store i16 %conv123, ptr %arrayidx4, align 2
  %sub128 = add nsw i32 %sub88, 1
  %add129 = sub nsw i32 %sub128, %sub112
  %shr130 = lshr i32 %add129, 1
  %conv131 = trunc i32 %shr130 to i16
  store i16 %conv131, ptr %arrayidx20, align 2
  %add137 = add nsw i32 %sub128, %sub112
  %shr138 = lshr i32 %add137, 1
  %conv139 = trunc i32 %shr138 to i16
  store i16 %conv139, ptr %arrayidx25, align 2
  %sext226 = shl i32 %sub44, 16
  %conv70.1 = ashr exact i32 %sext226, 16
  %sext227 = shl i32 %sub44.1, 16
  %conv75.1 = ashr exact i32 %sext227, 16
  %add76.1 = add nsw i32 %conv75.1, %conv70.1
  %sub88.1 = sub nsw i32 %conv70.1, %conv75.1
  %sext228 = shl i32 %sub44.2, 16
  %conv94.1 = ashr exact i32 %sext228, 16
  %sext229 = shl i32 %sub44.3, 16
  %conv99.1 = ashr exact i32 %sext229, 16
  %add100.1 = add nsw i32 %conv99.1, %conv94.1
  %sub112.1 = sub nsw i32 %conv94.1, %conv99.1
  %add113.1 = add nsw i32 %add76.1, 1
  %add114.1 = add nsw i32 %add113.1, %add100.1
  %shr.1 = lshr i32 %add114.1, 1
  %conv115.1 = trunc i32 %shr.1 to i16
  store i16 %conv115.1, ptr %arrayidx.1, align 2
  %add121.1 = sub nsw i32 %add113.1, %add100.1
  %shr122.1 = lshr i32 %add121.1, 1
  %conv123.1 = trunc i32 %shr122.1 to i16
  store i16 %conv123.1, ptr %arrayidx4.1, align 2
  %sub128.1 = add nsw i32 %sub88.1, 1
  %add129.1 = sub nsw i32 %sub128.1, %sub112.1
  %shr130.1 = lshr i32 %add129.1, 1
  %conv131.1 = trunc i32 %shr130.1 to i16
  store i16 %conv131.1, ptr %arrayidx20.1, align 2
  %add137.1 = add nsw i32 %sub128.1, %sub112.1
  %shr138.1 = lshr i32 %add137.1, 1
  %conv139.1 = trunc i32 %shr138.1 to i16
  store i16 %conv139.1, ptr %arrayidx25.1, align 2
  %sext230 = shl i32 %sub49, 16
  %conv70.2 = ashr exact i32 %sext230, 16
  %sext231 = shl i32 %sub49.1, 16
  %conv75.2 = ashr exact i32 %sext231, 16
  %add76.2 = add nsw i32 %conv75.2, %conv70.2
  %sub88.2 = sub nsw i32 %conv70.2, %conv75.2
  %sext232 = shl i32 %sub49.2, 16
  %conv94.2 = ashr exact i32 %sext232, 16
  %sext233 = shl i32 %sub49.3, 16
  %conv99.2 = ashr exact i32 %sext233, 16
  %add100.2 = add nsw i32 %conv99.2, %conv94.2
  %sub112.2 = sub nsw i32 %conv94.2, %conv99.2
  %add113.2 = add nsw i32 %add76.2, 1
  %add114.2 = add nsw i32 %add113.2, %add100.2
  %shr.2 = lshr i32 %add114.2, 1
  %conv115.2 = trunc i32 %shr.2 to i16
  store i16 %conv115.2, ptr %arrayidx.2, align 2
  %add121.2 = sub nsw i32 %add113.2, %add100.2
  %shr122.2 = lshr i32 %add121.2, 1
  %conv123.2 = trunc i32 %shr122.2 to i16
  store i16 %conv123.2, ptr %arrayidx4.2, align 2
  %sub128.2 = add nsw i32 %sub88.2, 1
  %add129.2 = sub nsw i32 %sub128.2, %sub112.2
  %shr130.2 = lshr i32 %add129.2, 1
  %conv131.2 = trunc i32 %shr130.2 to i16
  store i16 %conv131.2, ptr %arrayidx20.2, align 2
  %add137.2 = add nsw i32 %sub128.2, %sub112.2
  %shr138.2 = lshr i32 %add137.2, 1
  %conv139.2 = trunc i32 %shr138.2 to i16
  store i16 %conv139.2, ptr %arrayidx25.2, align 2
  %sext234 = shl i32 %add54, 16
  %conv70.3 = ashr exact i32 %sext234, 16
  %sext235 = shl i32 %add54.1, 16
  %conv75.3 = ashr exact i32 %sext235, 16
  %add76.3 = add nsw i32 %conv75.3, %conv70.3
  %sub88.3 = sub nsw i32 %conv70.3, %conv75.3
  %sext236 = shl i32 %add54.2, 16
  %conv94.3 = ashr exact i32 %sext236, 16
  %sext237 = shl i32 %add54.3, 16
  %conv99.3 = ashr exact i32 %sext237, 16
  %add100.3 = add nsw i32 %conv99.3, %conv94.3
  %sub112.3 = sub nsw i32 %conv94.3, %conv99.3
  %add113.3 = add nsw i32 %add76.3, 1
  %add114.3 = add nsw i32 %add113.3, %add100.3
  %shr.3 = lshr i32 %add114.3, 1
  %conv115.3 = trunc i32 %shr.3 to i16
  store i16 %conv115.3, ptr %arrayidx.3, align 2
  %add121.3 = sub nsw i32 %add113.3, %add100.3
  %shr122.3 = lshr i32 %add121.3, 1
  %conv123.3 = trunc i32 %shr122.3 to i16
  store i16 %conv123.3, ptr %arrayidx4.3, align 2
  %sub128.3 = add nsw i32 %sub88.3, 1
  %add129.3 = sub nsw i32 %sub128.3, %sub112.3
  %shr130.3 = lshr i32 %add129.3, 1
  %conv131.3 = trunc i32 %shr130.3 to i16
  store i16 %conv131.3, ptr %arrayidx20.3, align 2
  %add137.3 = add nsw i32 %sub128.3, %sub112.3
  %shr138.3 = lshr i32 %add137.3, 1
  %conv139.3 = trunc i32 %shr138.3 to i16
  store i16 %conv139.3, ptr %arrayidx25.3, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @idct4x4dc(ptr nocapture noundef %d) #1 {
entry:
  %0 = load i16, ptr %d, align 2
  %conv200 = zext i16 %0 to i32
  %arrayidx4 = getelementptr inbounds i8, ptr %d, i64 2
  %1 = load i16, ptr %arrayidx4, align 2
  %conv5201 = zext i16 %1 to i32
  %add6 = add nuw nsw i32 %conv5201, %conv200
  %sub = sub nsw i32 %conv200, %conv5201
  %arrayidx20 = getelementptr inbounds i8, ptr %d, i64 4
  %2 = load i16, ptr %arrayidx20, align 2
  %conv21202 = zext i16 %2 to i32
  %arrayidx25 = getelementptr inbounds i8, ptr %d, i64 6
  %3 = load i16, ptr %arrayidx25, align 2
  %conv26203 = zext i16 %3 to i32
  %add27 = add nuw nsw i32 %conv26203, %conv21202
  %sub38 = sub nsw i32 %conv21202, %conv26203
  %add39 = add nuw nsw i32 %add27, %add6
  %sub44 = sub nsw i32 %add6, %add27
  %sub49 = sub nsw i32 %sub, %sub38
  %add54 = add nsw i32 %sub38, %sub
  %arrayidx.1 = getelementptr inbounds i8, ptr %d, i64 8
  %4 = load i16, ptr %arrayidx.1, align 2
  %conv.1204 = zext i16 %4 to i32
  %arrayidx4.1 = getelementptr inbounds i8, ptr %d, i64 10
  %5 = load i16, ptr %arrayidx4.1, align 2
  %conv5.1205 = zext i16 %5 to i32
  %add6.1 = add nuw nsw i32 %conv5.1205, %conv.1204
  %sub.1 = sub nsw i32 %conv.1204, %conv5.1205
  %arrayidx20.1 = getelementptr inbounds i8, ptr %d, i64 12
  %6 = load i16, ptr %arrayidx20.1, align 2
  %conv21.1206 = zext i16 %6 to i32
  %arrayidx25.1 = getelementptr inbounds i8, ptr %d, i64 14
  %7 = load i16, ptr %arrayidx25.1, align 2
  %conv26.1207 = zext i16 %7 to i32
  %add27.1 = add nuw nsw i32 %conv26.1207, %conv21.1206
  %sub38.1 = sub nsw i32 %conv21.1206, %conv26.1207
  %add39.1 = add nuw nsw i32 %add27.1, %add6.1
  %sub44.1 = sub nsw i32 %add6.1, %add27.1
  %sub49.1 = sub nsw i32 %sub.1, %sub38.1
  %add54.1 = add nsw i32 %sub38.1, %sub.1
  %arrayidx.2 = getelementptr inbounds i8, ptr %d, i64 16
  %8 = load i16, ptr %arrayidx.2, align 2
  %conv.2208 = zext i16 %8 to i32
  %arrayidx4.2 = getelementptr inbounds i8, ptr %d, i64 18
  %9 = load i16, ptr %arrayidx4.2, align 2
  %conv5.2209 = zext i16 %9 to i32
  %add6.2 = add nuw nsw i32 %conv5.2209, %conv.2208
  %sub.2 = sub nsw i32 %conv.2208, %conv5.2209
  %arrayidx20.2 = getelementptr inbounds i8, ptr %d, i64 20
  %10 = load i16, ptr %arrayidx20.2, align 2
  %conv21.2210 = zext i16 %10 to i32
  %arrayidx25.2 = getelementptr inbounds i8, ptr %d, i64 22
  %11 = load i16, ptr %arrayidx25.2, align 2
  %conv26.2211 = zext i16 %11 to i32
  %add27.2 = add nuw nsw i32 %conv26.2211, %conv21.2210
  %sub38.2 = sub nsw i32 %conv21.2210, %conv26.2211
  %add39.2 = add nuw nsw i32 %add27.2, %add6.2
  %sub44.2 = sub nsw i32 %add6.2, %add27.2
  %sub49.2 = sub nsw i32 %sub.2, %sub38.2
  %add54.2 = add nsw i32 %sub38.2, %sub.2
  %arrayidx.3 = getelementptr inbounds i8, ptr %d, i64 24
  %12 = load i16, ptr %arrayidx.3, align 2
  %conv.3212 = zext i16 %12 to i32
  %arrayidx4.3 = getelementptr inbounds i8, ptr %d, i64 26
  %13 = load i16, ptr %arrayidx4.3, align 2
  %conv5.3213 = zext i16 %13 to i32
  %add6.3 = add nuw nsw i32 %conv5.3213, %conv.3212
  %sub.3 = sub nsw i32 %conv.3212, %conv5.3213
  %arrayidx20.3 = getelementptr inbounds i8, ptr %d, i64 28
  %14 = load i16, ptr %arrayidx20.3, align 2
  %conv21.3214 = zext i16 %14 to i32
  %arrayidx25.3 = getelementptr inbounds i8, ptr %d, i64 30
  %15 = load i16, ptr %arrayidx25.3, align 2
  %conv26.3215 = zext i16 %15 to i32
  %add27.3 = add nuw nsw i32 %conv26.3215, %conv21.3214
  %sub38.3 = sub nsw i32 %conv21.3214, %conv26.3215
  %add39.3 = add nuw nsw i32 %add27.3, %add6.3
  %sub44.3 = sub nsw i32 %add6.3, %add27.3
  %sub49.3 = sub nsw i32 %sub.3, %sub38.3
  %add54.3 = add nsw i32 %sub38.3, %sub.3
  %conv70216 = and i32 %add39, 65535
  %conv75217 = and i32 %add39.1, 65535
  %add76 = add nuw nsw i32 %conv75217, %conv70216
  %sub88 = sub nsw i32 %conv70216, %conv75217
  %conv94218 = and i32 %add39.2, 65535
  %conv99219 = and i32 %add39.3, 65535
  %add100 = add nuw nsw i32 %conv99219, %conv94218
  %sub112 = sub nsw i32 %conv94218, %conv99219
  %add113 = add nuw nsw i32 %add100, %add76
  %conv114 = trunc i32 %add113 to i16
  store i16 %conv114, ptr %d, align 2
  %sub119 = sub nsw i32 %add76, %add100
  %conv120 = trunc i32 %sub119 to i16
  store i16 %conv120, ptr %arrayidx4, align 2
  %sub125 = sub nsw i32 %sub88, %sub112
  %conv126 = trunc i32 %sub125 to i16
  store i16 %conv126, ptr %arrayidx20, align 2
  %add131 = add nsw i32 %sub112, %sub88
  %conv132 = trunc i32 %add131 to i16
  store i16 %conv132, ptr %arrayidx25, align 2
  %conv70.1220 = and i32 %sub44, 65535
  %conv75.1221 = and i32 %sub44.1, 65535
  %add76.1 = add nuw nsw i32 %conv75.1221, %conv70.1220
  %sub88.1 = sub nsw i32 %conv70.1220, %conv75.1221
  %conv94.1222 = and i32 %sub44.2, 65535
  %conv99.1223 = and i32 %sub44.3, 65535
  %add100.1 = add nuw nsw i32 %conv99.1223, %conv94.1222
  %sub112.1 = sub nsw i32 %conv94.1222, %conv99.1223
  %add113.1 = add nuw nsw i32 %add100.1, %add76.1
  %conv114.1 = trunc i32 %add113.1 to i16
  store i16 %conv114.1, ptr %arrayidx.1, align 2
  %sub119.1 = sub nsw i32 %add76.1, %add100.1
  %conv120.1 = trunc i32 %sub119.1 to i16
  store i16 %conv120.1, ptr %arrayidx4.1, align 2
  %sub125.1 = sub nsw i32 %sub88.1, %sub112.1
  %conv126.1 = trunc i32 %sub125.1 to i16
  store i16 %conv126.1, ptr %arrayidx20.1, align 2
  %add131.1 = add nsw i32 %sub112.1, %sub88.1
  %conv132.1 = trunc i32 %add131.1 to i16
  store i16 %conv132.1, ptr %arrayidx25.1, align 2
  %conv70.2224 = and i32 %sub49, 65535
  %conv75.2225 = and i32 %sub49.1, 65535
  %add76.2 = add nuw nsw i32 %conv75.2225, %conv70.2224
  %sub88.2 = sub nsw i32 %conv70.2224, %conv75.2225
  %conv94.2226 = and i32 %sub49.2, 65535
  %conv99.2227 = and i32 %sub49.3, 65535
  %add100.2 = add nuw nsw i32 %conv99.2227, %conv94.2226
  %sub112.2 = sub nsw i32 %conv94.2226, %conv99.2227
  %add113.2 = add nuw nsw i32 %add100.2, %add76.2
  %conv114.2 = trunc i32 %add113.2 to i16
  store i16 %conv114.2, ptr %arrayidx.2, align 2
  %sub119.2 = sub nsw i32 %add76.2, %add100.2
  %conv120.2 = trunc i32 %sub119.2 to i16
  store i16 %conv120.2, ptr %arrayidx4.2, align 2
  %sub125.2 = sub nsw i32 %sub88.2, %sub112.2
  %conv126.2 = trunc i32 %sub125.2 to i16
  store i16 %conv126.2, ptr %arrayidx20.2, align 2
  %add131.2 = add nsw i32 %sub112.2, %sub88.2
  %conv132.2 = trunc i32 %add131.2 to i16
  store i16 %conv132.2, ptr %arrayidx25.2, align 2
  %conv70.3228 = and i32 %add54, 65535
  %conv75.3229 = and i32 %add54.1, 65535
  %add76.3 = add nuw nsw i32 %conv75.3229, %conv70.3228
  %sub88.3 = sub nsw i32 %conv70.3228, %conv75.3229
  %conv94.3230 = and i32 %add54.2, 65535
  %conv99.3231 = and i32 %add54.3, 65535
  %add100.3 = add nuw nsw i32 %conv99.3231, %conv94.3230
  %sub112.3 = sub nsw i32 %conv94.3230, %conv99.3231
  %add113.3 = add nuw nsw i32 %add100.3, %add76.3
  %conv114.3 = trunc i32 %add113.3 to i16
  store i16 %conv114.3, ptr %arrayidx.3, align 2
  %sub119.3 = sub nsw i32 %add76.3, %add100.3
  %conv120.3 = trunc i32 %sub119.3 to i16
  store i16 %conv120.3, ptr %arrayidx4.3, align 2
  %sub125.3 = sub nsw i32 %sub88.3, %sub112.3
  %conv126.3 = trunc i32 %sub125.3 to i16
  store i16 %conv126.3, ptr %arrayidx20.3, align 2
  %add131.3 = add nsw i32 %sub112.3, %sub88.3
  %conv132.3 = trunc i32 %add131.3 to i16
  store i16 %conv132.3, ptr %arrayidx25.3, align 2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @x264_dct_init_weights() local_unnamed_addr #3 {
entry:
  store <4 x i32> <i32 800, i32 320, i32 320, i32 800>, ptr @x264_dct4_weight2_zigzag, align 16
  store <4 x i32> <i32 128, i32 800, i32 320, i32 320>, ptr getelementptr inbounds (i8, ptr @x264_dct4_weight2_zigzag, i64 16), align 16
  store <4 x i32> <i32 320, i32 320, i32 128, i32 800>, ptr getelementptr inbounds (i8, ptr @x264_dct4_weight2_zigzag, i64 32), align 16
  store <4 x i32> <i32 128, i32 320, i32 320, i32 128>, ptr getelementptr inbounds (i8, ptr @x264_dct4_weight2_zigzag, i64 48), align 16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %0 = or disjoint i64 %index, 1
  %1 = or disjoint i64 %index, 2
  %2 = or disjoint i64 %index, 3
  %3 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 0, i64 %index
  %4 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 0, i64 %0
  %5 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 0, i64 %1
  %6 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 0, i64 %2
  %7 = load i8, ptr %3, align 4
  %8 = load i8, ptr %4, align 1
  %9 = load i8, ptr %5, align 2
  %10 = load i8, ptr %6, align 1
  %11 = zext i8 %7 to i64
  %12 = zext i8 %8 to i64
  %13 = zext i8 %9 to i64
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %11
  %16 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %12
  %17 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %13
  %18 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %14
  %19 = load i16, ptr %15, align 2
  %20 = load i16, ptr %16, align 2
  %21 = load i16, ptr %17, align 2
  %22 = load i16, ptr %18, align 2
  %23 = zext i16 %19 to i32
  %24 = zext i16 %20 to i32
  %25 = zext i16 %21 to i32
  %26 = zext i16 %22 to i32
  %27 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 0, i64 %index
  %28 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 0, i64 %0
  %29 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 0, i64 %1
  %30 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 0, i64 %2
  store i32 %23, ptr %27, align 16
  store i32 %24, ptr %28, align 4
  store i32 %25, ptr %29, align 8
  store i32 %26, ptr %30, align 4
  %index.next = add nuw i64 %index, 4
  %31 = icmp eq i64 %index.next, 64
  br i1 %31, label %for.cond.cleanup17, label %vector.body, !llvm.loop !10

for.cond.cleanup17:                               ; preds = %vector.body
  store <4 x i32> <i32 800, i32 320, i32 320, i32 800>, ptr getelementptr inbounds (i8, ptr @x264_dct4_weight2_zigzag, i64 64), align 16
  store <4 x i32> <i32 320, i32 128, i32 320, i32 128>, ptr getelementptr inbounds (i8, ptr @x264_dct4_weight2_zigzag, i64 80), align 16
  store <4 x i32> <i32 800, i32 320, i32 800, i32 320>, ptr getelementptr inbounds (i8, ptr @x264_dct4_weight2_zigzag, i64 96), align 16
  store <4 x i32> <i32 320, i32 128, i32 320, i32 128>, ptr getelementptr inbounds (i8, ptr @x264_dct4_weight2_zigzag, i64 112), align 16
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %for.cond.cleanup17
  %index65 = phi i64 [ 0, %for.cond.cleanup17 ], [ %index.next66, %vector.body64 ]
  %32 = or disjoint i64 %index65, 1
  %33 = or disjoint i64 %index65, 2
  %34 = or disjoint i64 %index65, 3
  %35 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 1, i64 %index65
  %36 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 1, i64 %32
  %37 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 1, i64 %33
  %38 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 1, i64 %34
  %39 = load i8, ptr %35, align 4
  %40 = load i8, ptr %36, align 1
  %41 = load i8, ptr %37, align 2
  %42 = load i8, ptr %38, align 1
  %43 = zext i8 %39 to i64
  %44 = zext i8 %40 to i64
  %45 = zext i8 %41 to i64
  %46 = zext i8 %42 to i64
  %47 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %43
  %48 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %44
  %49 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %45
  %50 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %46
  %51 = load i16, ptr %47, align 2
  %52 = load i16, ptr %48, align 2
  %53 = load i16, ptr %49, align 2
  %54 = load i16, ptr %50, align 2
  %55 = zext i16 %51 to i32
  %56 = zext i16 %52 to i32
  %57 = zext i16 %53 to i32
  %58 = zext i16 %54 to i32
  %59 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 1, i64 %index65
  %60 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 1, i64 %32
  %61 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 1, i64 %33
  %62 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 1, i64 %34
  store i32 %55, ptr %59, align 16
  store i32 %56, ptr %60, align 4
  store i32 %57, ptr %61, align 8
  store i32 %58, ptr %62, align 4
  %index.next66 = add nuw i64 %index65, 4
  %63 = icmp eq i64 %index.next66, 64
  br i1 %63, label %for.cond.cleanup17.1, label %vector.body64, !llvm.loop !11

for.cond.cleanup17.1:                             ; preds = %vector.body64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_zigzag_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf, i32 noundef %b_interlaced) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %b_interlaced, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %zigzag_scan_8x8_field.sink = phi ptr [ @zigzag_scan_8x8_frame, %if.else ], [ @zigzag_scan_8x8_field, %entry ]
  %zigzag_scan_4x4_field.sink = phi ptr [ @zigzag_scan_4x4_frame, %if.else ], [ @zigzag_scan_4x4_field, %entry ]
  %zigzag_sub_8x8_field.sink = phi ptr [ @zigzag_sub_8x8_frame, %if.else ], [ @zigzag_sub_8x8_field, %entry ]
  %zigzag_sub_4x4_field.sink = phi ptr [ @zigzag_sub_4x4_frame, %if.else ], [ @zigzag_sub_4x4_field, %entry ]
  %zigzag_sub_4x4ac_field.sink = phi ptr [ @zigzag_sub_4x4ac_frame, %if.else ], [ @zigzag_sub_4x4ac_field, %entry ]
  store ptr %zigzag_scan_8x8_field.sink, ptr %pf, align 8
  %0 = getelementptr inbounds i8, ptr %pf, i64 8
  store ptr %zigzag_scan_4x4_field.sink, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %pf, i64 16
  store ptr %zigzag_sub_8x8_field.sink, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %pf, i64 24
  store ptr %zigzag_sub_4x4_field.sink, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %pf, i64 32
  store ptr %zigzag_sub_4x4ac_field.sink, ptr %3, align 8
  %interleave_8x8_cavlc = getelementptr inbounds i8, ptr %pf, i64 40
  store ptr @zigzag_interleave_8x8_cavlc, ptr %interleave_8x8_cavlc, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_8x8_field(ptr noundef writeonly %level, ptr noundef readonly %dct) #1 {
entry:
  %0 = load i16, ptr %dct, align 2
  store i16 %0, ptr %level, align 2
  %arrayidx2 = getelementptr inbounds i8, ptr %dct, i64 2
  %1 = load i16, ptr %arrayidx2, align 2
  %arrayidx3 = getelementptr inbounds i8, ptr %level, i64 2
  store i16 %1, ptr %arrayidx3, align 2
  %arrayidx4 = getelementptr inbounds i8, ptr %dct, i64 4
  %2 = load i16, ptr %arrayidx4, align 2
  %arrayidx5 = getelementptr inbounds i8, ptr %level, i64 4
  store i16 %2, ptr %arrayidx5, align 2
  %arrayidx6 = getelementptr inbounds i8, ptr %dct, i64 16
  %3 = load i16, ptr %arrayidx6, align 2
  %arrayidx7 = getelementptr inbounds i8, ptr %level, i64 6
  store i16 %3, ptr %arrayidx7, align 2
  %arrayidx8 = getelementptr inbounds i8, ptr %dct, i64 18
  %4 = load i16, ptr %arrayidx8, align 2
  %arrayidx9 = getelementptr inbounds i8, ptr %level, i64 8
  store i16 %4, ptr %arrayidx9, align 2
  %arrayidx10 = getelementptr inbounds i8, ptr %dct, i64 6
  %5 = load i16, ptr %arrayidx10, align 2
  %arrayidx11 = getelementptr inbounds i8, ptr %level, i64 10
  store i16 %5, ptr %arrayidx11, align 2
  %arrayidx12 = getelementptr inbounds i8, ptr %dct, i64 8
  %6 = load i16, ptr %arrayidx12, align 2
  %arrayidx13 = getelementptr inbounds i8, ptr %level, i64 12
  store i16 %6, ptr %arrayidx13, align 2
  %arrayidx14 = getelementptr inbounds i8, ptr %dct, i64 20
  %7 = load i16, ptr %arrayidx14, align 2
  %arrayidx15 = getelementptr inbounds i8, ptr %level, i64 14
  store i16 %7, ptr %arrayidx15, align 2
  %arrayidx16 = getelementptr inbounds i8, ptr %dct, i64 32
  %8 = load i16, ptr %arrayidx16, align 2
  %arrayidx17 = getelementptr inbounds i8, ptr %level, i64 16
  store i16 %8, ptr %arrayidx17, align 2
  %arrayidx18 = getelementptr inbounds i8, ptr %dct, i64 22
  %9 = load i16, ptr %arrayidx18, align 2
  %arrayidx19 = getelementptr inbounds i8, ptr %level, i64 18
  store i16 %9, ptr %arrayidx19, align 2
  %arrayidx20 = getelementptr inbounds i8, ptr %dct, i64 10
  %10 = load i16, ptr %arrayidx20, align 2
  %arrayidx21 = getelementptr inbounds i8, ptr %level, i64 20
  store i16 %10, ptr %arrayidx21, align 2
  %arrayidx22 = getelementptr inbounds i8, ptr %dct, i64 12
  %11 = load i16, ptr %arrayidx22, align 2
  %arrayidx23 = getelementptr inbounds i8, ptr %level, i64 22
  store i16 %11, ptr %arrayidx23, align 2
  %arrayidx24 = getelementptr inbounds i8, ptr %dct, i64 14
  %12 = load i16, ptr %arrayidx24, align 2
  %arrayidx25 = getelementptr inbounds i8, ptr %level, i64 24
  store i16 %12, ptr %arrayidx25, align 2
  %arrayidx26 = getelementptr inbounds i8, ptr %dct, i64 24
  %13 = load i16, ptr %arrayidx26, align 2
  %arrayidx27 = getelementptr inbounds i8, ptr %level, i64 26
  store i16 %13, ptr %arrayidx27, align 2
  %arrayidx28 = getelementptr inbounds i8, ptr %dct, i64 34
  %14 = load i16, ptr %arrayidx28, align 2
  %arrayidx29 = getelementptr inbounds i8, ptr %level, i64 28
  store i16 %14, ptr %arrayidx29, align 2
  %arrayidx30 = getelementptr inbounds i8, ptr %dct, i64 48
  %15 = load i16, ptr %arrayidx30, align 2
  %arrayidx31 = getelementptr inbounds i8, ptr %level, i64 30
  store i16 %15, ptr %arrayidx31, align 2
  %arrayidx32 = getelementptr inbounds i8, ptr %dct, i64 36
  %16 = load i16, ptr %arrayidx32, align 2
  %arrayidx33 = getelementptr inbounds i8, ptr %level, i64 32
  store i16 %16, ptr %arrayidx33, align 2
  %arrayidx34 = getelementptr inbounds i8, ptr %dct, i64 26
  %17 = load i16, ptr %arrayidx34, align 2
  %arrayidx35 = getelementptr inbounds i8, ptr %level, i64 34
  store i16 %17, ptr %arrayidx35, align 2
  %arrayidx36 = getelementptr inbounds i8, ptr %dct, i64 28
  %18 = load i16, ptr %arrayidx36, align 2
  %arrayidx37 = getelementptr inbounds i8, ptr %level, i64 36
  store i16 %18, ptr %arrayidx37, align 2
  %arrayidx38 = getelementptr inbounds i8, ptr %dct, i64 30
  %19 = load i16, ptr %arrayidx38, align 2
  %arrayidx39 = getelementptr inbounds i8, ptr %level, i64 38
  store i16 %19, ptr %arrayidx39, align 2
  %arrayidx40 = getelementptr inbounds i8, ptr %dct, i64 38
  %20 = load i16, ptr %arrayidx40, align 2
  %arrayidx41 = getelementptr inbounds i8, ptr %level, i64 40
  store i16 %20, ptr %arrayidx41, align 2
  %arrayidx42 = getelementptr inbounds i8, ptr %dct, i64 50
  %21 = load i16, ptr %arrayidx42, align 2
  %arrayidx43 = getelementptr inbounds i8, ptr %level, i64 42
  store i16 %21, ptr %arrayidx43, align 2
  %arrayidx44 = getelementptr inbounds i8, ptr %dct, i64 64
  %22 = load i16, ptr %arrayidx44, align 2
  %arrayidx45 = getelementptr inbounds i8, ptr %level, i64 44
  store i16 %22, ptr %arrayidx45, align 2
  %arrayidx46 = getelementptr inbounds i8, ptr %dct, i64 52
  %23 = load i16, ptr %arrayidx46, align 2
  %arrayidx47 = getelementptr inbounds i8, ptr %level, i64 46
  store i16 %23, ptr %arrayidx47, align 2
  %arrayidx48 = getelementptr inbounds i8, ptr %dct, i64 40
  %24 = load i16, ptr %arrayidx48, align 2
  %arrayidx49 = getelementptr inbounds i8, ptr %level, i64 48
  store i16 %24, ptr %arrayidx49, align 2
  %arrayidx50 = getelementptr inbounds i8, ptr %dct, i64 42
  %25 = load i16, ptr %arrayidx50, align 2
  %arrayidx51 = getelementptr inbounds i8, ptr %level, i64 50
  store i16 %25, ptr %arrayidx51, align 2
  %arrayidx52 = getelementptr inbounds i8, ptr %dct, i64 44
  %26 = load i16, ptr %arrayidx52, align 2
  %arrayidx53 = getelementptr inbounds i8, ptr %level, i64 52
  store i16 %26, ptr %arrayidx53, align 2
  %arrayidx54 = getelementptr inbounds i8, ptr %dct, i64 46
  %27 = load i16, ptr %arrayidx54, align 2
  %arrayidx55 = getelementptr inbounds i8, ptr %level, i64 54
  store i16 %27, ptr %arrayidx55, align 2
  %arrayidx56 = getelementptr inbounds i8, ptr %dct, i64 54
  %28 = load i16, ptr %arrayidx56, align 2
  %arrayidx57 = getelementptr inbounds i8, ptr %level, i64 56
  store i16 %28, ptr %arrayidx57, align 2
  %arrayidx58 = getelementptr inbounds i8, ptr %dct, i64 66
  %29 = load i16, ptr %arrayidx58, align 2
  %arrayidx59 = getelementptr inbounds i8, ptr %level, i64 58
  store i16 %29, ptr %arrayidx59, align 2
  %arrayidx60 = getelementptr inbounds i8, ptr %dct, i64 80
  %30 = load i16, ptr %arrayidx60, align 2
  %arrayidx61 = getelementptr inbounds i8, ptr %level, i64 60
  store i16 %30, ptr %arrayidx61, align 2
  %arrayidx62 = getelementptr inbounds i8, ptr %dct, i64 68
  %31 = load i16, ptr %arrayidx62, align 2
  %arrayidx63 = getelementptr inbounds i8, ptr %level, i64 62
  store i16 %31, ptr %arrayidx63, align 2
  %arrayidx64 = getelementptr inbounds i8, ptr %dct, i64 56
  %32 = load i16, ptr %arrayidx64, align 2
  %arrayidx65 = getelementptr inbounds i8, ptr %level, i64 64
  store i16 %32, ptr %arrayidx65, align 2
  %arrayidx66 = getelementptr inbounds i8, ptr %dct, i64 58
  %33 = load i16, ptr %arrayidx66, align 2
  %arrayidx67 = getelementptr inbounds i8, ptr %level, i64 66
  store i16 %33, ptr %arrayidx67, align 2
  %arrayidx68 = getelementptr inbounds i8, ptr %dct, i64 60
  %34 = load i16, ptr %arrayidx68, align 2
  %arrayidx69 = getelementptr inbounds i8, ptr %level, i64 68
  store i16 %34, ptr %arrayidx69, align 2
  %arrayidx70 = getelementptr inbounds i8, ptr %dct, i64 62
  %35 = load i16, ptr %arrayidx70, align 2
  %arrayidx71 = getelementptr inbounds i8, ptr %level, i64 70
  store i16 %35, ptr %arrayidx71, align 2
  %arrayidx72 = getelementptr inbounds i8, ptr %dct, i64 70
  %36 = load i16, ptr %arrayidx72, align 2
  %arrayidx73 = getelementptr inbounds i8, ptr %level, i64 72
  store i16 %36, ptr %arrayidx73, align 2
  %arrayidx74 = getelementptr inbounds i8, ptr %dct, i64 82
  %37 = load i16, ptr %arrayidx74, align 2
  %arrayidx75 = getelementptr inbounds i8, ptr %level, i64 74
  store i16 %37, ptr %arrayidx75, align 2
  %arrayidx76 = getelementptr inbounds i8, ptr %dct, i64 96
  %38 = load i16, ptr %arrayidx76, align 2
  %arrayidx77 = getelementptr inbounds i8, ptr %level, i64 76
  store i16 %38, ptr %arrayidx77, align 2
  %arrayidx78 = getelementptr inbounds i8, ptr %dct, i64 84
  %39 = load i16, ptr %arrayidx78, align 2
  %arrayidx79 = getelementptr inbounds i8, ptr %level, i64 78
  store i16 %39, ptr %arrayidx79, align 2
  %arrayidx80 = getelementptr inbounds i8, ptr %dct, i64 72
  %40 = load i16, ptr %arrayidx80, align 2
  %arrayidx81 = getelementptr inbounds i8, ptr %level, i64 80
  store i16 %40, ptr %arrayidx81, align 2
  %arrayidx82 = getelementptr inbounds i8, ptr %dct, i64 74
  %41 = load i16, ptr %arrayidx82, align 2
  %arrayidx83 = getelementptr inbounds i8, ptr %level, i64 82
  store i16 %41, ptr %arrayidx83, align 2
  %arrayidx84 = getelementptr inbounds i8, ptr %dct, i64 76
  %42 = load i16, ptr %arrayidx84, align 2
  %arrayidx85 = getelementptr inbounds i8, ptr %level, i64 84
  store i16 %42, ptr %arrayidx85, align 2
  %arrayidx86 = getelementptr inbounds i8, ptr %dct, i64 78
  %43 = load i16, ptr %arrayidx86, align 2
  %arrayidx87 = getelementptr inbounds i8, ptr %level, i64 86
  store i16 %43, ptr %arrayidx87, align 2
  %arrayidx88 = getelementptr inbounds i8, ptr %dct, i64 86
  %44 = load i16, ptr %arrayidx88, align 2
  %arrayidx89 = getelementptr inbounds i8, ptr %level, i64 88
  store i16 %44, ptr %arrayidx89, align 2
  %arrayidx90 = getelementptr inbounds i8, ptr %dct, i64 98
  %45 = load i16, ptr %arrayidx90, align 2
  %arrayidx91 = getelementptr inbounds i8, ptr %level, i64 90
  store i16 %45, ptr %arrayidx91, align 2
  %arrayidx92 = getelementptr inbounds i8, ptr %dct, i64 100
  %46 = load i16, ptr %arrayidx92, align 2
  %arrayidx93 = getelementptr inbounds i8, ptr %level, i64 92
  store i16 %46, ptr %arrayidx93, align 2
  %arrayidx94 = getelementptr inbounds i8, ptr %dct, i64 88
  %47 = load i16, ptr %arrayidx94, align 2
  %arrayidx95 = getelementptr inbounds i8, ptr %level, i64 94
  store i16 %47, ptr %arrayidx95, align 2
  %arrayidx96 = getelementptr inbounds i8, ptr %dct, i64 90
  %48 = load i16, ptr %arrayidx96, align 2
  %arrayidx97 = getelementptr inbounds i8, ptr %level, i64 96
  store i16 %48, ptr %arrayidx97, align 2
  %arrayidx98 = getelementptr inbounds i8, ptr %dct, i64 92
  %49 = load i16, ptr %arrayidx98, align 2
  %arrayidx99 = getelementptr inbounds i8, ptr %level, i64 98
  store i16 %49, ptr %arrayidx99, align 2
  %arrayidx100 = getelementptr inbounds i8, ptr %dct, i64 94
  %50 = load i16, ptr %arrayidx100, align 2
  %arrayidx101 = getelementptr inbounds i8, ptr %level, i64 100
  store i16 %50, ptr %arrayidx101, align 2
  %arrayidx102 = getelementptr inbounds i8, ptr %dct, i64 102
  %51 = load i16, ptr %arrayidx102, align 2
  %arrayidx103 = getelementptr inbounds i8, ptr %level, i64 102
  store i16 %51, ptr %arrayidx103, align 2
  %arrayidx104 = getelementptr inbounds i8, ptr %dct, i64 112
  %52 = load i16, ptr %arrayidx104, align 2
  %arrayidx105 = getelementptr inbounds i8, ptr %level, i64 104
  store i16 %52, ptr %arrayidx105, align 2
  %arrayidx106 = getelementptr inbounds i8, ptr %dct, i64 114
  %53 = load i16, ptr %arrayidx106, align 2
  %arrayidx107 = getelementptr inbounds i8, ptr %level, i64 106
  store i16 %53, ptr %arrayidx107, align 2
  %arrayidx108 = getelementptr inbounds i8, ptr %dct, i64 104
  %54 = load i16, ptr %arrayidx108, align 2
  %arrayidx109 = getelementptr inbounds i8, ptr %level, i64 108
  store i16 %54, ptr %arrayidx109, align 2
  %arrayidx110 = getelementptr inbounds i8, ptr %dct, i64 106
  %55 = load i16, ptr %arrayidx110, align 2
  %arrayidx111 = getelementptr inbounds i8, ptr %level, i64 110
  store i16 %55, ptr %arrayidx111, align 2
  %arrayidx112 = getelementptr inbounds i8, ptr %dct, i64 108
  %56 = load i16, ptr %arrayidx112, align 2
  %arrayidx113 = getelementptr inbounds i8, ptr %level, i64 112
  store i16 %56, ptr %arrayidx113, align 2
  %arrayidx114 = getelementptr inbounds i8, ptr %dct, i64 110
  %57 = load i16, ptr %arrayidx114, align 2
  %arrayidx115 = getelementptr inbounds i8, ptr %level, i64 114
  store i16 %57, ptr %arrayidx115, align 2
  %arrayidx116 = getelementptr inbounds i8, ptr %dct, i64 116
  %58 = load i16, ptr %arrayidx116, align 2
  %arrayidx117 = getelementptr inbounds i8, ptr %level, i64 116
  store i16 %58, ptr %arrayidx117, align 2
  %arrayidx118 = getelementptr inbounds i8, ptr %dct, i64 118
  %59 = load i16, ptr %arrayidx118, align 2
  %arrayidx119 = getelementptr inbounds i8, ptr %level, i64 118
  store i16 %59, ptr %arrayidx119, align 2
  %arrayidx120 = getelementptr inbounds i8, ptr %dct, i64 120
  %60 = load i16, ptr %arrayidx120, align 2
  %arrayidx121 = getelementptr inbounds i8, ptr %level, i64 120
  store i16 %60, ptr %arrayidx121, align 2
  %arrayidx122 = getelementptr inbounds i8, ptr %dct, i64 122
  %61 = load i16, ptr %arrayidx122, align 2
  %arrayidx123 = getelementptr inbounds i8, ptr %level, i64 122
  store i16 %61, ptr %arrayidx123, align 2
  %arrayidx124 = getelementptr inbounds i8, ptr %dct, i64 124
  %62 = load i16, ptr %arrayidx124, align 2
  %arrayidx125 = getelementptr inbounds i8, ptr %level, i64 124
  store i16 %62, ptr %arrayidx125, align 2
  %arrayidx126 = getelementptr inbounds i8, ptr %dct, i64 126
  %63 = load i16, ptr %arrayidx126, align 2
  %arrayidx127 = getelementptr inbounds i8, ptr %level, i64 126
  store i16 %63, ptr %arrayidx127, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_4x4_field(ptr nocapture noundef writeonly %level, ptr nocapture noundef readonly %dct) #1 {
entry:
  %0 = load i32, ptr %dct, align 4
  store i32 %0, ptr %level, align 4
  %arrayidx = getelementptr inbounds i8, ptr %dct, i64 8
  %1 = load i16, ptr %arrayidx, align 2
  %arrayidx1 = getelementptr inbounds i8, ptr %level, i64 4
  store i16 %1, ptr %arrayidx1, align 2
  %arrayidx2 = getelementptr inbounds i8, ptr %dct, i64 4
  %2 = load i16, ptr %arrayidx2, align 2
  %arrayidx3 = getelementptr inbounds i8, ptr %level, i64 6
  store i16 %2, ptr %arrayidx3, align 2
  %arrayidx4 = getelementptr inbounds i8, ptr %dct, i64 6
  %3 = load i16, ptr %arrayidx4, align 2
  %arrayidx5 = getelementptr inbounds i8, ptr %level, i64 8
  store i16 %3, ptr %arrayidx5, align 2
  %arrayidx6 = getelementptr inbounds i8, ptr %dct, i64 10
  %4 = load i16, ptr %arrayidx6, align 2
  %arrayidx7 = getelementptr inbounds i8, ptr %level, i64 10
  store i16 %4, ptr %arrayidx7, align 2
  %add.ptr = getelementptr inbounds i8, ptr %dct, i64 12
  %5 = load i32, ptr %add.ptr, align 4
  %add.ptr8 = getelementptr inbounds i8, ptr %level, i64 12
  store i32 %5, ptr %add.ptr8, align 4
  %add.ptr9 = getelementptr inbounds i8, ptr %dct, i64 16
  %6 = load i64, ptr %add.ptr9, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %level, i64 16
  store i64 %6, ptr %add.ptr10, align 8
  %add.ptr11 = getelementptr inbounds i8, ptr %dct, i64 24
  %7 = load i64, ptr %add.ptr11, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %level, i64 24
  store i64 %7, ptr %add.ptr12, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @zigzag_sub_8x8_field(ptr noundef writeonly %level, ptr noundef readonly %p_src, ptr noundef %p_dst) #1 {
entry:
  %0 = load i8, ptr %p_src, align 1
  %conv = zext i8 %0 to i16
  %1 = load i8, ptr %p_dst, align 1
  %conv3 = zext i8 %1 to i16
  %sub = sub nsw i16 %conv, %conv3
  store i16 %sub, ptr %level, align 2
  %arrayidx11 = getelementptr inbounds i8, ptr %p_src, i64 16
  %2 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %2 to i16
  %arrayidx14 = getelementptr inbounds i8, ptr %p_dst, i64 32
  %3 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %3 to i16
  %sub16 = sub nsw i16 %conv12, %conv15
  %arrayidx18 = getelementptr inbounds i8, ptr %level, i64 2
  store i16 %sub16, ptr %arrayidx18, align 2
  %or211239 = or i16 %sub16, %sub
  %arrayidx25 = getelementptr inbounds i8, ptr %p_src, i64 32
  %4 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %4 to i16
  %arrayidx28 = getelementptr inbounds i8, ptr %p_dst, i64 64
  %5 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %5 to i16
  %sub30 = sub nsw i16 %conv26, %conv29
  %arrayidx32 = getelementptr inbounds i8, ptr %level, i64 4
  store i16 %sub30, ptr %arrayidx32, align 2
  %or351240 = or i16 %or211239, %sub30
  %arrayidx39 = getelementptr inbounds i8, ptr %p_src, i64 1
  %6 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %6 to i16
  %arrayidx42 = getelementptr inbounds i8, ptr %p_dst, i64 1
  %7 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %7 to i16
  %sub44 = sub nsw i16 %conv40, %conv43
  %arrayidx46 = getelementptr inbounds i8, ptr %level, i64 6
  store i16 %sub44, ptr %arrayidx46, align 2
  %or491241 = or i16 %or351240, %sub44
  %arrayidx53 = getelementptr inbounds i8, ptr %p_src, i64 17
  %8 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %8 to i16
  %arrayidx56 = getelementptr inbounds i8, ptr %p_dst, i64 33
  %9 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %9 to i16
  %sub58 = sub nsw i16 %conv54, %conv57
  %arrayidx60 = getelementptr inbounds i8, ptr %level, i64 8
  store i16 %sub58, ptr %arrayidx60, align 2
  %or631242 = or i16 %or491241, %sub58
  %arrayidx67 = getelementptr inbounds i8, ptr %p_src, i64 48
  %10 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %10 to i16
  %arrayidx70 = getelementptr inbounds i8, ptr %p_dst, i64 96
  %11 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %11 to i16
  %sub72 = sub nsw i16 %conv68, %conv71
  %arrayidx74 = getelementptr inbounds i8, ptr %level, i64 10
  store i16 %sub72, ptr %arrayidx74, align 2
  %or771243 = or i16 %or631242, %sub72
  %arrayidx81 = getelementptr inbounds i8, ptr %p_src, i64 64
  %12 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %12 to i16
  %arrayidx84 = getelementptr inbounds i8, ptr %p_dst, i64 128
  %13 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %13 to i16
  %sub86 = sub nsw i16 %conv82, %conv85
  %arrayidx88 = getelementptr inbounds i8, ptr %level, i64 12
  store i16 %sub86, ptr %arrayidx88, align 2
  %or911244 = or i16 %or771243, %sub86
  %arrayidx95 = getelementptr inbounds i8, ptr %p_src, i64 33
  %14 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %14 to i16
  %arrayidx98 = getelementptr inbounds i8, ptr %p_dst, i64 65
  %15 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %15 to i16
  %sub100 = sub nsw i16 %conv96, %conv99
  %arrayidx102 = getelementptr inbounds i8, ptr %level, i64 14
  store i16 %sub100, ptr %arrayidx102, align 2
  %or1051245 = or i16 %or911244, %sub100
  %arrayidx109 = getelementptr inbounds i8, ptr %p_src, i64 2
  %16 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %16 to i16
  %arrayidx112 = getelementptr inbounds i8, ptr %p_dst, i64 2
  %17 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %17 to i16
  %sub114 = sub nsw i16 %conv110, %conv113
  %arrayidx116 = getelementptr inbounds i8, ptr %level, i64 16
  store i16 %sub114, ptr %arrayidx116, align 2
  %or1191246 = or i16 %or1051245, %sub114
  %arrayidx123 = getelementptr inbounds i8, ptr %p_src, i64 49
  %18 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %18 to i16
  %arrayidx126 = getelementptr inbounds i8, ptr %p_dst, i64 97
  %19 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %19 to i16
  %sub128 = sub nsw i16 %conv124, %conv127
  %arrayidx130 = getelementptr inbounds i8, ptr %level, i64 18
  store i16 %sub128, ptr %arrayidx130, align 2
  %or1331247 = or i16 %or1191246, %sub128
  %arrayidx137 = getelementptr inbounds i8, ptr %p_src, i64 80
  %20 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %20 to i16
  %arrayidx140 = getelementptr inbounds i8, ptr %p_dst, i64 160
  %21 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %21 to i16
  %sub142 = sub nsw i16 %conv138, %conv141
  %arrayidx144 = getelementptr inbounds i8, ptr %level, i64 20
  store i16 %sub142, ptr %arrayidx144, align 2
  %or1471248 = or i16 %or1331247, %sub142
  %arrayidx151 = getelementptr inbounds i8, ptr %p_src, i64 96
  %22 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %22 to i16
  %arrayidx154 = getelementptr inbounds i8, ptr %p_dst, i64 192
  %23 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %23 to i16
  %sub156 = sub nsw i16 %conv152, %conv155
  %arrayidx158 = getelementptr inbounds i8, ptr %level, i64 22
  store i16 %sub156, ptr %arrayidx158, align 2
  %or1611249 = or i16 %or1471248, %sub156
  %arrayidx165 = getelementptr inbounds i8, ptr %p_src, i64 112
  %24 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %24 to i16
  %arrayidx168 = getelementptr inbounds i8, ptr %p_dst, i64 224
  %25 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %25 to i16
  %sub170 = sub nsw i16 %conv166, %conv169
  %arrayidx172 = getelementptr inbounds i8, ptr %level, i64 24
  store i16 %sub170, ptr %arrayidx172, align 2
  %or1751250 = or i16 %or1611249, %sub170
  %arrayidx179 = getelementptr inbounds i8, ptr %p_src, i64 65
  %26 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %26 to i16
  %arrayidx182 = getelementptr inbounds i8, ptr %p_dst, i64 129
  %27 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %27 to i16
  %sub184 = sub nsw i16 %conv180, %conv183
  %arrayidx186 = getelementptr inbounds i8, ptr %level, i64 26
  store i16 %sub184, ptr %arrayidx186, align 2
  %or1891251 = or i16 %or1751250, %sub184
  %arrayidx193 = getelementptr inbounds i8, ptr %p_src, i64 18
  %28 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %28 to i16
  %arrayidx196 = getelementptr inbounds i8, ptr %p_dst, i64 34
  %29 = load i8, ptr %arrayidx196, align 1
  %conv197 = zext i8 %29 to i16
  %sub198 = sub nsw i16 %conv194, %conv197
  %arrayidx200 = getelementptr inbounds i8, ptr %level, i64 28
  store i16 %sub198, ptr %arrayidx200, align 2
  %or2031252 = or i16 %or1891251, %sub198
  %arrayidx207 = getelementptr inbounds i8, ptr %p_src, i64 3
  %30 = load i8, ptr %arrayidx207, align 1
  %conv208 = zext i8 %30 to i16
  %arrayidx210 = getelementptr inbounds i8, ptr %p_dst, i64 3
  %31 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %31 to i16
  %sub212 = sub nsw i16 %conv208, %conv211
  %arrayidx214 = getelementptr inbounds i8, ptr %level, i64 30
  store i16 %sub212, ptr %arrayidx214, align 2
  %or2171253 = or i16 %or2031252, %sub212
  %arrayidx221 = getelementptr inbounds i8, ptr %p_src, i64 34
  %32 = load i8, ptr %arrayidx221, align 1
  %conv222 = zext i8 %32 to i16
  %arrayidx224 = getelementptr inbounds i8, ptr %p_dst, i64 66
  %33 = load i8, ptr %arrayidx224, align 1
  %conv225 = zext i8 %33 to i16
  %sub226 = sub nsw i16 %conv222, %conv225
  %arrayidx228 = getelementptr inbounds i8, ptr %level, i64 32
  store i16 %sub226, ptr %arrayidx228, align 2
  %or2311254 = or i16 %or2171253, %sub226
  %arrayidx235 = getelementptr inbounds i8, ptr %p_src, i64 81
  %34 = load i8, ptr %arrayidx235, align 1
  %conv236 = zext i8 %34 to i16
  %arrayidx238 = getelementptr inbounds i8, ptr %p_dst, i64 161
  %35 = load i8, ptr %arrayidx238, align 1
  %conv239 = zext i8 %35 to i16
  %sub240 = sub nsw i16 %conv236, %conv239
  %arrayidx242 = getelementptr inbounds i8, ptr %level, i64 34
  store i16 %sub240, ptr %arrayidx242, align 2
  %or2451255 = or i16 %or2311254, %sub240
  %arrayidx249 = getelementptr inbounds i8, ptr %p_src, i64 97
  %36 = load i8, ptr %arrayidx249, align 1
  %conv250 = zext i8 %36 to i16
  %arrayidx252 = getelementptr inbounds i8, ptr %p_dst, i64 193
  %37 = load i8, ptr %arrayidx252, align 1
  %conv253 = zext i8 %37 to i16
  %sub254 = sub nsw i16 %conv250, %conv253
  %arrayidx256 = getelementptr inbounds i8, ptr %level, i64 36
  store i16 %sub254, ptr %arrayidx256, align 2
  %or2591256 = or i16 %or2451255, %sub254
  %arrayidx263 = getelementptr inbounds i8, ptr %p_src, i64 113
  %38 = load i8, ptr %arrayidx263, align 1
  %conv264 = zext i8 %38 to i16
  %arrayidx266 = getelementptr inbounds i8, ptr %p_dst, i64 225
  %39 = load i8, ptr %arrayidx266, align 1
  %conv267 = zext i8 %39 to i16
  %sub268 = sub nsw i16 %conv264, %conv267
  %arrayidx270 = getelementptr inbounds i8, ptr %level, i64 38
  store i16 %sub268, ptr %arrayidx270, align 2
  %or2731257 = or i16 %or2591256, %sub268
  %arrayidx277 = getelementptr inbounds i8, ptr %p_src, i64 50
  %40 = load i8, ptr %arrayidx277, align 1
  %conv278 = zext i8 %40 to i16
  %arrayidx280 = getelementptr inbounds i8, ptr %p_dst, i64 98
  %41 = load i8, ptr %arrayidx280, align 1
  %conv281 = zext i8 %41 to i16
  %sub282 = sub nsw i16 %conv278, %conv281
  %arrayidx284 = getelementptr inbounds i8, ptr %level, i64 40
  store i16 %sub282, ptr %arrayidx284, align 2
  %or2871258 = or i16 %or2731257, %sub282
  %arrayidx291 = getelementptr inbounds i8, ptr %p_src, i64 19
  %42 = load i8, ptr %arrayidx291, align 1
  %conv292 = zext i8 %42 to i16
  %arrayidx294 = getelementptr inbounds i8, ptr %p_dst, i64 35
  %43 = load i8, ptr %arrayidx294, align 1
  %conv295 = zext i8 %43 to i16
  %sub296 = sub nsw i16 %conv292, %conv295
  %arrayidx298 = getelementptr inbounds i8, ptr %level, i64 42
  store i16 %sub296, ptr %arrayidx298, align 2
  %or3011259 = or i16 %or2871258, %sub296
  %arrayidx305 = getelementptr inbounds i8, ptr %p_src, i64 4
  %44 = load i8, ptr %arrayidx305, align 1
  %conv306 = zext i8 %44 to i16
  %arrayidx308 = getelementptr inbounds i8, ptr %p_dst, i64 4
  %45 = load i8, ptr %arrayidx308, align 1
  %conv309 = zext i8 %45 to i16
  %sub310 = sub nsw i16 %conv306, %conv309
  %arrayidx312 = getelementptr inbounds i8, ptr %level, i64 44
  store i16 %sub310, ptr %arrayidx312, align 2
  %or3151260 = or i16 %or3011259, %sub310
  %arrayidx319 = getelementptr inbounds i8, ptr %p_src, i64 35
  %46 = load i8, ptr %arrayidx319, align 1
  %conv320 = zext i8 %46 to i16
  %arrayidx322 = getelementptr inbounds i8, ptr %p_dst, i64 67
  %47 = load i8, ptr %arrayidx322, align 1
  %conv323 = zext i8 %47 to i16
  %sub324 = sub nsw i16 %conv320, %conv323
  %arrayidx326 = getelementptr inbounds i8, ptr %level, i64 46
  store i16 %sub324, ptr %arrayidx326, align 2
  %or3291261 = or i16 %or3151260, %sub324
  %arrayidx333 = getelementptr inbounds i8, ptr %p_src, i64 66
  %48 = load i8, ptr %arrayidx333, align 1
  %conv334 = zext i8 %48 to i16
  %arrayidx336 = getelementptr inbounds i8, ptr %p_dst, i64 130
  %49 = load i8, ptr %arrayidx336, align 1
  %conv337 = zext i8 %49 to i16
  %sub338 = sub nsw i16 %conv334, %conv337
  %arrayidx340 = getelementptr inbounds i8, ptr %level, i64 48
  store i16 %sub338, ptr %arrayidx340, align 2
  %or3431262 = or i16 %or3291261, %sub338
  %arrayidx347 = getelementptr inbounds i8, ptr %p_src, i64 82
  %50 = load i8, ptr %arrayidx347, align 1
  %conv348 = zext i8 %50 to i16
  %arrayidx350 = getelementptr inbounds i8, ptr %p_dst, i64 162
  %51 = load i8, ptr %arrayidx350, align 1
  %conv351 = zext i8 %51 to i16
  %sub352 = sub nsw i16 %conv348, %conv351
  %arrayidx354 = getelementptr inbounds i8, ptr %level, i64 50
  store i16 %sub352, ptr %arrayidx354, align 2
  %or3571263 = or i16 %or3431262, %sub352
  %arrayidx361 = getelementptr inbounds i8, ptr %p_src, i64 98
  %52 = load i8, ptr %arrayidx361, align 1
  %conv362 = zext i8 %52 to i16
  %arrayidx364 = getelementptr inbounds i8, ptr %p_dst, i64 194
  %53 = load i8, ptr %arrayidx364, align 1
  %conv365 = zext i8 %53 to i16
  %sub366 = sub nsw i16 %conv362, %conv365
  %arrayidx368 = getelementptr inbounds i8, ptr %level, i64 52
  store i16 %sub366, ptr %arrayidx368, align 2
  %or3711264 = or i16 %or3571263, %sub366
  %arrayidx375 = getelementptr inbounds i8, ptr %p_src, i64 114
  %54 = load i8, ptr %arrayidx375, align 1
  %conv376 = zext i8 %54 to i16
  %arrayidx378 = getelementptr inbounds i8, ptr %p_dst, i64 226
  %55 = load i8, ptr %arrayidx378, align 1
  %conv379 = zext i8 %55 to i16
  %sub380 = sub nsw i16 %conv376, %conv379
  %arrayidx382 = getelementptr inbounds i8, ptr %level, i64 54
  store i16 %sub380, ptr %arrayidx382, align 2
  %or3851265 = or i16 %or3711264, %sub380
  %arrayidx389 = getelementptr inbounds i8, ptr %p_src, i64 51
  %56 = load i8, ptr %arrayidx389, align 1
  %conv390 = zext i8 %56 to i16
  %arrayidx392 = getelementptr inbounds i8, ptr %p_dst, i64 99
  %57 = load i8, ptr %arrayidx392, align 1
  %conv393 = zext i8 %57 to i16
  %sub394 = sub nsw i16 %conv390, %conv393
  %arrayidx396 = getelementptr inbounds i8, ptr %level, i64 56
  store i16 %sub394, ptr %arrayidx396, align 2
  %or3991266 = or i16 %or3851265, %sub394
  %arrayidx403 = getelementptr inbounds i8, ptr %p_src, i64 20
  %58 = load i8, ptr %arrayidx403, align 1
  %conv404 = zext i8 %58 to i16
  %arrayidx406 = getelementptr inbounds i8, ptr %p_dst, i64 36
  %59 = load i8, ptr %arrayidx406, align 1
  %conv407 = zext i8 %59 to i16
  %sub408 = sub nsw i16 %conv404, %conv407
  %arrayidx410 = getelementptr inbounds i8, ptr %level, i64 58
  store i16 %sub408, ptr %arrayidx410, align 2
  %or4131267 = or i16 %or3991266, %sub408
  %arrayidx417 = getelementptr inbounds i8, ptr %p_src, i64 5
  %60 = load i8, ptr %arrayidx417, align 1
  %conv418 = zext i8 %60 to i16
  %arrayidx420 = getelementptr inbounds i8, ptr %p_dst, i64 5
  %61 = load i8, ptr %arrayidx420, align 1
  %conv421 = zext i8 %61 to i16
  %sub422 = sub nsw i16 %conv418, %conv421
  %arrayidx424 = getelementptr inbounds i8, ptr %level, i64 60
  store i16 %sub422, ptr %arrayidx424, align 2
  %or4271268 = or i16 %or4131267, %sub422
  %arrayidx431 = getelementptr inbounds i8, ptr %p_src, i64 36
  %62 = load i8, ptr %arrayidx431, align 1
  %conv432 = zext i8 %62 to i16
  %arrayidx434 = getelementptr inbounds i8, ptr %p_dst, i64 68
  %63 = load i8, ptr %arrayidx434, align 1
  %conv435 = zext i8 %63 to i16
  %sub436 = sub nsw i16 %conv432, %conv435
  %arrayidx438 = getelementptr inbounds i8, ptr %level, i64 62
  store i16 %sub436, ptr %arrayidx438, align 2
  %or4411269 = or i16 %or4271268, %sub436
  %arrayidx445 = getelementptr inbounds i8, ptr %p_src, i64 67
  %64 = load i8, ptr %arrayidx445, align 1
  %conv446 = zext i8 %64 to i16
  %arrayidx448 = getelementptr inbounds i8, ptr %p_dst, i64 131
  %65 = load i8, ptr %arrayidx448, align 1
  %conv449 = zext i8 %65 to i16
  %sub450 = sub nsw i16 %conv446, %conv449
  %arrayidx452 = getelementptr inbounds i8, ptr %level, i64 64
  store i16 %sub450, ptr %arrayidx452, align 2
  %or4551270 = or i16 %or4411269, %sub450
  %arrayidx459 = getelementptr inbounds i8, ptr %p_src, i64 83
  %66 = load i8, ptr %arrayidx459, align 1
  %conv460 = zext i8 %66 to i16
  %arrayidx462 = getelementptr inbounds i8, ptr %p_dst, i64 163
  %67 = load i8, ptr %arrayidx462, align 1
  %conv463 = zext i8 %67 to i16
  %sub464 = sub nsw i16 %conv460, %conv463
  %arrayidx466 = getelementptr inbounds i8, ptr %level, i64 66
  store i16 %sub464, ptr %arrayidx466, align 2
  %or4691271 = or i16 %or4551270, %sub464
  %arrayidx473 = getelementptr inbounds i8, ptr %p_src, i64 99
  %68 = load i8, ptr %arrayidx473, align 1
  %conv474 = zext i8 %68 to i16
  %arrayidx476 = getelementptr inbounds i8, ptr %p_dst, i64 195
  %69 = load i8, ptr %arrayidx476, align 1
  %conv477 = zext i8 %69 to i16
  %sub478 = sub nsw i16 %conv474, %conv477
  %arrayidx480 = getelementptr inbounds i8, ptr %level, i64 68
  store i16 %sub478, ptr %arrayidx480, align 2
  %or4831272 = or i16 %or4691271, %sub478
  %arrayidx487 = getelementptr inbounds i8, ptr %p_src, i64 115
  %70 = load i8, ptr %arrayidx487, align 1
  %conv488 = zext i8 %70 to i16
  %arrayidx490 = getelementptr inbounds i8, ptr %p_dst, i64 227
  %71 = load i8, ptr %arrayidx490, align 1
  %conv491 = zext i8 %71 to i16
  %sub492 = sub nsw i16 %conv488, %conv491
  %arrayidx494 = getelementptr inbounds i8, ptr %level, i64 70
  store i16 %sub492, ptr %arrayidx494, align 2
  %or4971273 = or i16 %or4831272, %sub492
  %arrayidx501 = getelementptr inbounds i8, ptr %p_src, i64 52
  %72 = load i8, ptr %arrayidx501, align 1
  %conv502 = zext i8 %72 to i16
  %arrayidx504 = getelementptr inbounds i8, ptr %p_dst, i64 100
  %73 = load i8, ptr %arrayidx504, align 1
  %conv505 = zext i8 %73 to i16
  %sub506 = sub nsw i16 %conv502, %conv505
  %arrayidx508 = getelementptr inbounds i8, ptr %level, i64 72
  store i16 %sub506, ptr %arrayidx508, align 2
  %or5111274 = or i16 %or4971273, %sub506
  %arrayidx515 = getelementptr inbounds i8, ptr %p_src, i64 21
  %74 = load i8, ptr %arrayidx515, align 1
  %conv516 = zext i8 %74 to i16
  %arrayidx518 = getelementptr inbounds i8, ptr %p_dst, i64 37
  %75 = load i8, ptr %arrayidx518, align 1
  %conv519 = zext i8 %75 to i16
  %sub520 = sub nsw i16 %conv516, %conv519
  %arrayidx522 = getelementptr inbounds i8, ptr %level, i64 74
  store i16 %sub520, ptr %arrayidx522, align 2
  %or5251275 = or i16 %or5111274, %sub520
  %arrayidx529 = getelementptr inbounds i8, ptr %p_src, i64 6
  %76 = load i8, ptr %arrayidx529, align 1
  %conv530 = zext i8 %76 to i16
  %arrayidx532 = getelementptr inbounds i8, ptr %p_dst, i64 6
  %77 = load i8, ptr %arrayidx532, align 1
  %conv533 = zext i8 %77 to i16
  %sub534 = sub nsw i16 %conv530, %conv533
  %arrayidx536 = getelementptr inbounds i8, ptr %level, i64 76
  store i16 %sub534, ptr %arrayidx536, align 2
  %or5391276 = or i16 %or5251275, %sub534
  %arrayidx543 = getelementptr inbounds i8, ptr %p_src, i64 37
  %78 = load i8, ptr %arrayidx543, align 1
  %conv544 = zext i8 %78 to i16
  %arrayidx546 = getelementptr inbounds i8, ptr %p_dst, i64 69
  %79 = load i8, ptr %arrayidx546, align 1
  %conv547 = zext i8 %79 to i16
  %sub548 = sub nsw i16 %conv544, %conv547
  %arrayidx550 = getelementptr inbounds i8, ptr %level, i64 78
  store i16 %sub548, ptr %arrayidx550, align 2
  %or5531277 = or i16 %or5391276, %sub548
  %arrayidx557 = getelementptr inbounds i8, ptr %p_src, i64 68
  %80 = load i8, ptr %arrayidx557, align 1
  %conv558 = zext i8 %80 to i16
  %arrayidx560 = getelementptr inbounds i8, ptr %p_dst, i64 132
  %81 = load i8, ptr %arrayidx560, align 1
  %conv561 = zext i8 %81 to i16
  %sub562 = sub nsw i16 %conv558, %conv561
  %arrayidx564 = getelementptr inbounds i8, ptr %level, i64 80
  store i16 %sub562, ptr %arrayidx564, align 2
  %or5671278 = or i16 %or5531277, %sub562
  %arrayidx571 = getelementptr inbounds i8, ptr %p_src, i64 84
  %82 = load i8, ptr %arrayidx571, align 1
  %conv572 = zext i8 %82 to i16
  %arrayidx574 = getelementptr inbounds i8, ptr %p_dst, i64 164
  %83 = load i8, ptr %arrayidx574, align 1
  %conv575 = zext i8 %83 to i16
  %sub576 = sub nsw i16 %conv572, %conv575
  %arrayidx578 = getelementptr inbounds i8, ptr %level, i64 82
  store i16 %sub576, ptr %arrayidx578, align 2
  %or5811279 = or i16 %or5671278, %sub576
  %arrayidx585 = getelementptr inbounds i8, ptr %p_src, i64 100
  %84 = load i8, ptr %arrayidx585, align 1
  %conv586 = zext i8 %84 to i16
  %arrayidx588 = getelementptr inbounds i8, ptr %p_dst, i64 196
  %85 = load i8, ptr %arrayidx588, align 1
  %conv589 = zext i8 %85 to i16
  %sub590 = sub nsw i16 %conv586, %conv589
  %arrayidx592 = getelementptr inbounds i8, ptr %level, i64 84
  store i16 %sub590, ptr %arrayidx592, align 2
  %or5951280 = or i16 %or5811279, %sub590
  %arrayidx599 = getelementptr inbounds i8, ptr %p_src, i64 116
  %86 = load i8, ptr %arrayidx599, align 1
  %conv600 = zext i8 %86 to i16
  %arrayidx602 = getelementptr inbounds i8, ptr %p_dst, i64 228
  %87 = load i8, ptr %arrayidx602, align 1
  %conv603 = zext i8 %87 to i16
  %sub604 = sub nsw i16 %conv600, %conv603
  %arrayidx606 = getelementptr inbounds i8, ptr %level, i64 86
  store i16 %sub604, ptr %arrayidx606, align 2
  %or6091281 = or i16 %or5951280, %sub604
  %arrayidx613 = getelementptr inbounds i8, ptr %p_src, i64 53
  %88 = load i8, ptr %arrayidx613, align 1
  %conv614 = zext i8 %88 to i16
  %arrayidx616 = getelementptr inbounds i8, ptr %p_dst, i64 101
  %89 = load i8, ptr %arrayidx616, align 1
  %conv617 = zext i8 %89 to i16
  %sub618 = sub nsw i16 %conv614, %conv617
  %arrayidx620 = getelementptr inbounds i8, ptr %level, i64 88
  store i16 %sub618, ptr %arrayidx620, align 2
  %or6231282 = or i16 %or6091281, %sub618
  %arrayidx627 = getelementptr inbounds i8, ptr %p_src, i64 22
  %90 = load i8, ptr %arrayidx627, align 1
  %conv628 = zext i8 %90 to i16
  %arrayidx630 = getelementptr inbounds i8, ptr %p_dst, i64 38
  %91 = load i8, ptr %arrayidx630, align 1
  %conv631 = zext i8 %91 to i16
  %sub632 = sub nsw i16 %conv628, %conv631
  %arrayidx634 = getelementptr inbounds i8, ptr %level, i64 90
  store i16 %sub632, ptr %arrayidx634, align 2
  %or6371283 = or i16 %or6231282, %sub632
  %arrayidx641 = getelementptr inbounds i8, ptr %p_src, i64 38
  %92 = load i8, ptr %arrayidx641, align 1
  %conv642 = zext i8 %92 to i16
  %arrayidx644 = getelementptr inbounds i8, ptr %p_dst, i64 70
  %93 = load i8, ptr %arrayidx644, align 1
  %conv645 = zext i8 %93 to i16
  %sub646 = sub nsw i16 %conv642, %conv645
  %arrayidx648 = getelementptr inbounds i8, ptr %level, i64 92
  store i16 %sub646, ptr %arrayidx648, align 2
  %or6511284 = or i16 %or6371283, %sub646
  %arrayidx655 = getelementptr inbounds i8, ptr %p_src, i64 69
  %94 = load i8, ptr %arrayidx655, align 1
  %conv656 = zext i8 %94 to i16
  %arrayidx658 = getelementptr inbounds i8, ptr %p_dst, i64 133
  %95 = load i8, ptr %arrayidx658, align 1
  %conv659 = zext i8 %95 to i16
  %sub660 = sub nsw i16 %conv656, %conv659
  %arrayidx662 = getelementptr inbounds i8, ptr %level, i64 94
  store i16 %sub660, ptr %arrayidx662, align 2
  %or6651285 = or i16 %or6511284, %sub660
  %arrayidx669 = getelementptr inbounds i8, ptr %p_src, i64 85
  %96 = load i8, ptr %arrayidx669, align 1
  %conv670 = zext i8 %96 to i16
  %arrayidx672 = getelementptr inbounds i8, ptr %p_dst, i64 165
  %97 = load i8, ptr %arrayidx672, align 1
  %conv673 = zext i8 %97 to i16
  %sub674 = sub nsw i16 %conv670, %conv673
  %arrayidx676 = getelementptr inbounds i8, ptr %level, i64 96
  store i16 %sub674, ptr %arrayidx676, align 2
  %or6791286 = or i16 %or6651285, %sub674
  %arrayidx683 = getelementptr inbounds i8, ptr %p_src, i64 101
  %98 = load i8, ptr %arrayidx683, align 1
  %conv684 = zext i8 %98 to i16
  %arrayidx686 = getelementptr inbounds i8, ptr %p_dst, i64 197
  %99 = load i8, ptr %arrayidx686, align 1
  %conv687 = zext i8 %99 to i16
  %sub688 = sub nsw i16 %conv684, %conv687
  %arrayidx690 = getelementptr inbounds i8, ptr %level, i64 98
  store i16 %sub688, ptr %arrayidx690, align 2
  %or6931287 = or i16 %or6791286, %sub688
  %arrayidx697 = getelementptr inbounds i8, ptr %p_src, i64 117
  %100 = load i8, ptr %arrayidx697, align 1
  %conv698 = zext i8 %100 to i16
  %arrayidx700 = getelementptr inbounds i8, ptr %p_dst, i64 229
  %101 = load i8, ptr %arrayidx700, align 1
  %conv701 = zext i8 %101 to i16
  %sub702 = sub nsw i16 %conv698, %conv701
  %arrayidx704 = getelementptr inbounds i8, ptr %level, i64 100
  store i16 %sub702, ptr %arrayidx704, align 2
  %or7071288 = or i16 %or6931287, %sub702
  %arrayidx711 = getelementptr inbounds i8, ptr %p_src, i64 54
  %102 = load i8, ptr %arrayidx711, align 1
  %conv712 = zext i8 %102 to i16
  %arrayidx714 = getelementptr inbounds i8, ptr %p_dst, i64 102
  %103 = load i8, ptr %arrayidx714, align 1
  %conv715 = zext i8 %103 to i16
  %sub716 = sub nsw i16 %conv712, %conv715
  %arrayidx718 = getelementptr inbounds i8, ptr %level, i64 102
  store i16 %sub716, ptr %arrayidx718, align 2
  %or7211289 = or i16 %or7071288, %sub716
  %arrayidx725 = getelementptr inbounds i8, ptr %p_src, i64 7
  %104 = load i8, ptr %arrayidx725, align 1
  %conv726 = zext i8 %104 to i16
  %arrayidx728 = getelementptr inbounds i8, ptr %p_dst, i64 7
  %105 = load i8, ptr %arrayidx728, align 1
  %conv729 = zext i8 %105 to i16
  %sub730 = sub nsw i16 %conv726, %conv729
  %arrayidx732 = getelementptr inbounds i8, ptr %level, i64 104
  store i16 %sub730, ptr %arrayidx732, align 2
  %or7351290 = or i16 %or7211289, %sub730
  %arrayidx739 = getelementptr inbounds i8, ptr %p_src, i64 23
  %106 = load i8, ptr %arrayidx739, align 1
  %conv740 = zext i8 %106 to i16
  %arrayidx742 = getelementptr inbounds i8, ptr %p_dst, i64 39
  %107 = load i8, ptr %arrayidx742, align 1
  %conv743 = zext i8 %107 to i16
  %sub744 = sub nsw i16 %conv740, %conv743
  %arrayidx746 = getelementptr inbounds i8, ptr %level, i64 106
  store i16 %sub744, ptr %arrayidx746, align 2
  %or7491291 = or i16 %or7351290, %sub744
  %arrayidx753 = getelementptr inbounds i8, ptr %p_src, i64 70
  %108 = load i8, ptr %arrayidx753, align 1
  %conv754 = zext i8 %108 to i16
  %arrayidx756 = getelementptr inbounds i8, ptr %p_dst, i64 134
  %109 = load i8, ptr %arrayidx756, align 1
  %conv757 = zext i8 %109 to i16
  %sub758 = sub nsw i16 %conv754, %conv757
  %arrayidx760 = getelementptr inbounds i8, ptr %level, i64 108
  store i16 %sub758, ptr %arrayidx760, align 2
  %or7631292 = or i16 %or7491291, %sub758
  %arrayidx767 = getelementptr inbounds i8, ptr %p_src, i64 86
  %110 = load i8, ptr %arrayidx767, align 1
  %conv768 = zext i8 %110 to i16
  %arrayidx770 = getelementptr inbounds i8, ptr %p_dst, i64 166
  %111 = load i8, ptr %arrayidx770, align 1
  %conv771 = zext i8 %111 to i16
  %sub772 = sub nsw i16 %conv768, %conv771
  %arrayidx774 = getelementptr inbounds i8, ptr %level, i64 110
  store i16 %sub772, ptr %arrayidx774, align 2
  %or7771293 = or i16 %or7631292, %sub772
  %arrayidx781 = getelementptr inbounds i8, ptr %p_src, i64 102
  %112 = load i8, ptr %arrayidx781, align 1
  %conv782 = zext i8 %112 to i16
  %arrayidx784 = getelementptr inbounds i8, ptr %p_dst, i64 198
  %113 = load i8, ptr %arrayidx784, align 1
  %conv785 = zext i8 %113 to i16
  %sub786 = sub nsw i16 %conv782, %conv785
  %arrayidx788 = getelementptr inbounds i8, ptr %level, i64 112
  store i16 %sub786, ptr %arrayidx788, align 2
  %or7911294 = or i16 %or7771293, %sub786
  %arrayidx795 = getelementptr inbounds i8, ptr %p_src, i64 118
  %114 = load i8, ptr %arrayidx795, align 1
  %conv796 = zext i8 %114 to i16
  %arrayidx798 = getelementptr inbounds i8, ptr %p_dst, i64 230
  %115 = load i8, ptr %arrayidx798, align 1
  %conv799 = zext i8 %115 to i16
  %sub800 = sub nsw i16 %conv796, %conv799
  %arrayidx802 = getelementptr inbounds i8, ptr %level, i64 114
  store i16 %sub800, ptr %arrayidx802, align 2
  %or8051295 = or i16 %or7911294, %sub800
  %arrayidx809 = getelementptr inbounds i8, ptr %p_src, i64 39
  %116 = load i8, ptr %arrayidx809, align 1
  %conv810 = zext i8 %116 to i16
  %arrayidx812 = getelementptr inbounds i8, ptr %p_dst, i64 71
  %117 = load i8, ptr %arrayidx812, align 1
  %conv813 = zext i8 %117 to i16
  %sub814 = sub nsw i16 %conv810, %conv813
  %arrayidx816 = getelementptr inbounds i8, ptr %level, i64 116
  store i16 %sub814, ptr %arrayidx816, align 2
  %or8191296 = or i16 %or8051295, %sub814
  %arrayidx823 = getelementptr inbounds i8, ptr %p_src, i64 55
  %118 = load i8, ptr %arrayidx823, align 1
  %conv824 = zext i8 %118 to i16
  %arrayidx826 = getelementptr inbounds i8, ptr %p_dst, i64 103
  %119 = load i8, ptr %arrayidx826, align 1
  %conv827 = zext i8 %119 to i16
  %sub828 = sub nsw i16 %conv824, %conv827
  %arrayidx830 = getelementptr inbounds i8, ptr %level, i64 118
  store i16 %sub828, ptr %arrayidx830, align 2
  %or8331297 = or i16 %or8191296, %sub828
  %arrayidx837 = getelementptr inbounds i8, ptr %p_src, i64 71
  %120 = load i8, ptr %arrayidx837, align 1
  %conv838 = zext i8 %120 to i16
  %arrayidx840 = getelementptr inbounds i8, ptr %p_dst, i64 135
  %121 = load i8, ptr %arrayidx840, align 1
  %conv841 = zext i8 %121 to i16
  %sub842 = sub nsw i16 %conv838, %conv841
  %arrayidx844 = getelementptr inbounds i8, ptr %level, i64 120
  store i16 %sub842, ptr %arrayidx844, align 2
  %or8471298 = or i16 %or8331297, %sub842
  %arrayidx851 = getelementptr inbounds i8, ptr %p_src, i64 87
  %122 = load i8, ptr %arrayidx851, align 1
  %conv852 = zext i8 %122 to i16
  %arrayidx854 = getelementptr inbounds i8, ptr %p_dst, i64 167
  %123 = load i8, ptr %arrayidx854, align 1
  %conv855 = zext i8 %123 to i16
  %sub856 = sub nsw i16 %conv852, %conv855
  %arrayidx858 = getelementptr inbounds i8, ptr %level, i64 122
  store i16 %sub856, ptr %arrayidx858, align 2
  %or8611299 = or i16 %or8471298, %sub856
  %arrayidx865 = getelementptr inbounds i8, ptr %p_src, i64 103
  %124 = load i8, ptr %arrayidx865, align 1
  %conv866 = zext i8 %124 to i16
  %arrayidx868 = getelementptr inbounds i8, ptr %p_dst, i64 199
  %125 = load i8, ptr %arrayidx868, align 1
  %conv869 = zext i8 %125 to i16
  %sub870 = sub nsw i16 %conv866, %conv869
  %arrayidx872 = getelementptr inbounds i8, ptr %level, i64 124
  store i16 %sub870, ptr %arrayidx872, align 2
  %or8751300 = or i16 %or8611299, %sub870
  %arrayidx879 = getelementptr inbounds i8, ptr %p_src, i64 119
  %126 = load i8, ptr %arrayidx879, align 1
  %conv880 = zext i8 %126 to i16
  %arrayidx882 = getelementptr inbounds i8, ptr %p_dst, i64 231
  %127 = load i8, ptr %arrayidx882, align 1
  %conv883 = zext i8 %127 to i16
  %sub884 = sub nsw i16 %conv880, %conv883
  %arrayidx886 = getelementptr inbounds i8, ptr %level, i64 126
  store i16 %sub884, ptr %arrayidx886, align 2
  %or8891301 = or i16 %or8751300, %sub884
  %128 = load i64, ptr %p_src, align 8
  store i64 %128, ptr %p_dst, align 8
  %129 = load i64, ptr %arrayidx11, align 8
  store i64 %129, ptr %arrayidx14, align 8
  %130 = load i64, ptr %arrayidx25, align 8
  store i64 %130, ptr %arrayidx28, align 8
  %131 = load i64, ptr %arrayidx67, align 8
  store i64 %131, ptr %arrayidx70, align 8
  %132 = load i64, ptr %arrayidx81, align 8
  store i64 %132, ptr %arrayidx84, align 8
  %133 = load i64, ptr %arrayidx137, align 8
  store i64 %133, ptr %arrayidx140, align 8
  %134 = load i64, ptr %arrayidx151, align 8
  store i64 %134, ptr %arrayidx154, align 8
  %135 = load i64, ptr %arrayidx165, align 8
  store i64 %135, ptr %arrayidx168, align 8
  %tobool = icmp ne i16 %or8891301, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @zigzag_sub_4x4_field(ptr nocapture noundef writeonly %level, ptr nocapture noundef readonly %p_src, ptr nocapture noundef %p_dst) #1 {
entry:
  %0 = load i8, ptr %p_src, align 1
  %conv = zext i8 %0 to i16
  %1 = load i8, ptr %p_dst, align 1
  %conv3 = zext i8 %1 to i16
  %sub = sub nsw i16 %conv, %conv3
  store i16 %sub, ptr %level, align 2
  %arrayidx11 = getelementptr inbounds i8, ptr %p_src, i64 16
  %2 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %2 to i16
  %arrayidx14 = getelementptr inbounds i8, ptr %p_dst, i64 32
  %3 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %3 to i16
  %sub16 = sub nsw i16 %conv12, %conv15
  %arrayidx18 = getelementptr inbounds i8, ptr %level, i64 2
  store i16 %sub16, ptr %arrayidx18, align 2
  %or21311 = or i16 %sub16, %sub
  %arrayidx25 = getelementptr inbounds i8, ptr %p_src, i64 1
  %4 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %4 to i16
  %arrayidx28 = getelementptr inbounds i8, ptr %p_dst, i64 1
  %5 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %5 to i16
  %sub30 = sub nsw i16 %conv26, %conv29
  %arrayidx32 = getelementptr inbounds i8, ptr %level, i64 4
  store i16 %sub30, ptr %arrayidx32, align 2
  %or35312 = or i16 %or21311, %sub30
  %arrayidx39 = getelementptr inbounds i8, ptr %p_src, i64 32
  %6 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %6 to i16
  %arrayidx42 = getelementptr inbounds i8, ptr %p_dst, i64 64
  %7 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %7 to i16
  %sub44 = sub nsw i16 %conv40, %conv43
  %arrayidx46 = getelementptr inbounds i8, ptr %level, i64 6
  store i16 %sub44, ptr %arrayidx46, align 2
  %or49313 = or i16 %or35312, %sub44
  %arrayidx53 = getelementptr inbounds i8, ptr %p_src, i64 48
  %8 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %8 to i16
  %arrayidx56 = getelementptr inbounds i8, ptr %p_dst, i64 96
  %9 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %9 to i16
  %sub58 = sub nsw i16 %conv54, %conv57
  %arrayidx60 = getelementptr inbounds i8, ptr %level, i64 8
  store i16 %sub58, ptr %arrayidx60, align 2
  %or63314 = or i16 %or49313, %sub58
  %arrayidx67 = getelementptr inbounds i8, ptr %p_src, i64 17
  %10 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %10 to i16
  %arrayidx70 = getelementptr inbounds i8, ptr %p_dst, i64 33
  %11 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %11 to i16
  %sub72 = sub nsw i16 %conv68, %conv71
  %arrayidx74 = getelementptr inbounds i8, ptr %level, i64 10
  store i16 %sub72, ptr %arrayidx74, align 2
  %or77315 = or i16 %or63314, %sub72
  %arrayidx81 = getelementptr inbounds i8, ptr %p_src, i64 33
  %12 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %12 to i16
  %arrayidx84 = getelementptr inbounds i8, ptr %p_dst, i64 65
  %13 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %13 to i16
  %sub86 = sub nsw i16 %conv82, %conv85
  %arrayidx88 = getelementptr inbounds i8, ptr %level, i64 12
  store i16 %sub86, ptr %arrayidx88, align 2
  %or91316 = or i16 %or77315, %sub86
  %arrayidx95 = getelementptr inbounds i8, ptr %p_src, i64 49
  %14 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %14 to i16
  %arrayidx98 = getelementptr inbounds i8, ptr %p_dst, i64 97
  %15 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %15 to i16
  %sub100 = sub nsw i16 %conv96, %conv99
  %arrayidx102 = getelementptr inbounds i8, ptr %level, i64 14
  store i16 %sub100, ptr %arrayidx102, align 2
  %or105317 = or i16 %or91316, %sub100
  %arrayidx109 = getelementptr inbounds i8, ptr %p_src, i64 2
  %16 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %16 to i16
  %arrayidx112 = getelementptr inbounds i8, ptr %p_dst, i64 2
  %17 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %17 to i16
  %sub114 = sub nsw i16 %conv110, %conv113
  %arrayidx116 = getelementptr inbounds i8, ptr %level, i64 16
  store i16 %sub114, ptr %arrayidx116, align 2
  %or119318 = or i16 %or105317, %sub114
  %arrayidx123 = getelementptr inbounds i8, ptr %p_src, i64 18
  %18 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %18 to i16
  %arrayidx126 = getelementptr inbounds i8, ptr %p_dst, i64 34
  %19 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %19 to i16
  %sub128 = sub nsw i16 %conv124, %conv127
  %arrayidx130 = getelementptr inbounds i8, ptr %level, i64 18
  store i16 %sub128, ptr %arrayidx130, align 2
  %or133319 = or i16 %or119318, %sub128
  %arrayidx137 = getelementptr inbounds i8, ptr %p_src, i64 34
  %20 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %20 to i16
  %arrayidx140 = getelementptr inbounds i8, ptr %p_dst, i64 66
  %21 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %21 to i16
  %sub142 = sub nsw i16 %conv138, %conv141
  %arrayidx144 = getelementptr inbounds i8, ptr %level, i64 20
  store i16 %sub142, ptr %arrayidx144, align 2
  %or147320 = or i16 %or133319, %sub142
  %arrayidx151 = getelementptr inbounds i8, ptr %p_src, i64 50
  %22 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %22 to i16
  %arrayidx154 = getelementptr inbounds i8, ptr %p_dst, i64 98
  %23 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %23 to i16
  %sub156 = sub nsw i16 %conv152, %conv155
  %arrayidx158 = getelementptr inbounds i8, ptr %level, i64 22
  store i16 %sub156, ptr %arrayidx158, align 2
  %or161321 = or i16 %or147320, %sub156
  %arrayidx165 = getelementptr inbounds i8, ptr %p_src, i64 3
  %24 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %24 to i16
  %arrayidx168 = getelementptr inbounds i8, ptr %p_dst, i64 3
  %25 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %25 to i16
  %sub170 = sub nsw i16 %conv166, %conv169
  %arrayidx172 = getelementptr inbounds i8, ptr %level, i64 24
  store i16 %sub170, ptr %arrayidx172, align 2
  %or175322 = or i16 %or161321, %sub170
  %arrayidx179 = getelementptr inbounds i8, ptr %p_src, i64 19
  %26 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %26 to i16
  %arrayidx182 = getelementptr inbounds i8, ptr %p_dst, i64 35
  %27 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %27 to i16
  %sub184 = sub nsw i16 %conv180, %conv183
  %arrayidx186 = getelementptr inbounds i8, ptr %level, i64 26
  store i16 %sub184, ptr %arrayidx186, align 2
  %or189323 = or i16 %or175322, %sub184
  %arrayidx193 = getelementptr inbounds i8, ptr %p_src, i64 35
  %28 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %28 to i16
  %arrayidx196 = getelementptr inbounds i8, ptr %p_dst, i64 67
  %29 = load i8, ptr %arrayidx196, align 1
  %conv197 = zext i8 %29 to i16
  %sub198 = sub nsw i16 %conv194, %conv197
  %arrayidx200 = getelementptr inbounds i8, ptr %level, i64 28
  store i16 %sub198, ptr %arrayidx200, align 2
  %or203324 = or i16 %or189323, %sub198
  %arrayidx207 = getelementptr inbounds i8, ptr %p_src, i64 51
  %30 = load i8, ptr %arrayidx207, align 1
  %conv208 = zext i8 %30 to i16
  %arrayidx210 = getelementptr inbounds i8, ptr %p_dst, i64 99
  %31 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %31 to i16
  %sub212 = sub nsw i16 %conv208, %conv211
  %arrayidx214 = getelementptr inbounds i8, ptr %level, i64 30
  store i16 %sub212, ptr %arrayidx214, align 2
  %or217325 = or i16 %or203324, %sub212
  %32 = load i32, ptr %p_src, align 4
  store i32 %32, ptr %p_dst, align 4
  %33 = load i32, ptr %arrayidx11, align 4
  store i32 %33, ptr %arrayidx14, align 4
  %34 = load i32, ptr %arrayidx39, align 4
  store i32 %34, ptr %arrayidx42, align 4
  %35 = load i32, ptr %arrayidx53, align 4
  store i32 %35, ptr %arrayidx56, align 4
  %tobool = icmp ne i16 %or217325, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @zigzag_sub_4x4ac_field(ptr nocapture noundef writeonly %level, ptr nocapture noundef readonly %p_src, ptr nocapture noundef %p_dst, ptr nocapture noundef writeonly %dc) #1 {
entry:
  %0 = load i8, ptr %p_src, align 1
  %conv = zext i8 %0 to i16
  %1 = load i8, ptr %p_dst, align 1
  %conv3 = zext i8 %1 to i16
  %sub = sub nsw i16 %conv, %conv3
  store i16 %sub, ptr %dc, align 2
  store i16 0, ptr %level, align 2
  %arrayidx9 = getelementptr inbounds i8, ptr %p_src, i64 16
  %2 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %2 to i16
  %arrayidx12 = getelementptr inbounds i8, ptr %p_dst, i64 32
  %3 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %3 to i16
  %sub14 = sub nsw i16 %conv10, %conv13
  %arrayidx16 = getelementptr inbounds i8, ptr %level, i64 2
  store i16 %sub14, ptr %arrayidx16, align 2
  %arrayidx22 = getelementptr inbounds i8, ptr %p_src, i64 1
  %4 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %4 to i16
  %arrayidx25 = getelementptr inbounds i8, ptr %p_dst, i64 1
  %5 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %5 to i16
  %sub27 = sub nsw i16 %conv23, %conv26
  %arrayidx29 = getelementptr inbounds i8, ptr %level, i64 4
  store i16 %sub27, ptr %arrayidx29, align 2
  %or32306 = or i16 %sub27, %sub14
  %arrayidx36 = getelementptr inbounds i8, ptr %p_src, i64 32
  %6 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %6 to i16
  %arrayidx39 = getelementptr inbounds i8, ptr %p_dst, i64 64
  %7 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %7 to i16
  %sub41 = sub nsw i16 %conv37, %conv40
  %arrayidx43 = getelementptr inbounds i8, ptr %level, i64 6
  store i16 %sub41, ptr %arrayidx43, align 2
  %or46307 = or i16 %or32306, %sub41
  %arrayidx50 = getelementptr inbounds i8, ptr %p_src, i64 48
  %8 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %8 to i16
  %arrayidx53 = getelementptr inbounds i8, ptr %p_dst, i64 96
  %9 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %9 to i16
  %sub55 = sub nsw i16 %conv51, %conv54
  %arrayidx57 = getelementptr inbounds i8, ptr %level, i64 8
  store i16 %sub55, ptr %arrayidx57, align 2
  %or60308 = or i16 %or46307, %sub55
  %arrayidx64 = getelementptr inbounds i8, ptr %p_src, i64 17
  %10 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %10 to i16
  %arrayidx67 = getelementptr inbounds i8, ptr %p_dst, i64 33
  %11 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %11 to i16
  %sub69 = sub nsw i16 %conv65, %conv68
  %arrayidx71 = getelementptr inbounds i8, ptr %level, i64 10
  store i16 %sub69, ptr %arrayidx71, align 2
  %or74309 = or i16 %or60308, %sub69
  %arrayidx78 = getelementptr inbounds i8, ptr %p_src, i64 33
  %12 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %12 to i16
  %arrayidx81 = getelementptr inbounds i8, ptr %p_dst, i64 65
  %13 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %13 to i16
  %sub83 = sub nsw i16 %conv79, %conv82
  %arrayidx85 = getelementptr inbounds i8, ptr %level, i64 12
  store i16 %sub83, ptr %arrayidx85, align 2
  %or88310 = or i16 %or74309, %sub83
  %arrayidx92 = getelementptr inbounds i8, ptr %p_src, i64 49
  %14 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %14 to i16
  %arrayidx95 = getelementptr inbounds i8, ptr %p_dst, i64 97
  %15 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %15 to i16
  %sub97 = sub nsw i16 %conv93, %conv96
  %arrayidx99 = getelementptr inbounds i8, ptr %level, i64 14
  store i16 %sub97, ptr %arrayidx99, align 2
  %or102311 = or i16 %or88310, %sub97
  %arrayidx106 = getelementptr inbounds i8, ptr %p_src, i64 2
  %16 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %16 to i16
  %arrayidx109 = getelementptr inbounds i8, ptr %p_dst, i64 2
  %17 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %17 to i16
  %sub111 = sub nsw i16 %conv107, %conv110
  %arrayidx113 = getelementptr inbounds i8, ptr %level, i64 16
  store i16 %sub111, ptr %arrayidx113, align 2
  %or116312 = or i16 %or102311, %sub111
  %arrayidx120 = getelementptr inbounds i8, ptr %p_src, i64 18
  %18 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %18 to i16
  %arrayidx123 = getelementptr inbounds i8, ptr %p_dst, i64 34
  %19 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %19 to i16
  %sub125 = sub nsw i16 %conv121, %conv124
  %arrayidx127 = getelementptr inbounds i8, ptr %level, i64 18
  store i16 %sub125, ptr %arrayidx127, align 2
  %or130313 = or i16 %or116312, %sub125
  %arrayidx134 = getelementptr inbounds i8, ptr %p_src, i64 34
  %20 = load i8, ptr %arrayidx134, align 1
  %conv135 = zext i8 %20 to i16
  %arrayidx137 = getelementptr inbounds i8, ptr %p_dst, i64 66
  %21 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %21 to i16
  %sub139 = sub nsw i16 %conv135, %conv138
  %arrayidx141 = getelementptr inbounds i8, ptr %level, i64 20
  store i16 %sub139, ptr %arrayidx141, align 2
  %or144314 = or i16 %or130313, %sub139
  %arrayidx148 = getelementptr inbounds i8, ptr %p_src, i64 50
  %22 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %22 to i16
  %arrayidx151 = getelementptr inbounds i8, ptr %p_dst, i64 98
  %23 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %23 to i16
  %sub153 = sub nsw i16 %conv149, %conv152
  %arrayidx155 = getelementptr inbounds i8, ptr %level, i64 22
  store i16 %sub153, ptr %arrayidx155, align 2
  %or158315 = or i16 %or144314, %sub153
  %arrayidx162 = getelementptr inbounds i8, ptr %p_src, i64 3
  %24 = load i8, ptr %arrayidx162, align 1
  %conv163 = zext i8 %24 to i16
  %arrayidx165 = getelementptr inbounds i8, ptr %p_dst, i64 3
  %25 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %25 to i16
  %sub167 = sub nsw i16 %conv163, %conv166
  %arrayidx169 = getelementptr inbounds i8, ptr %level, i64 24
  store i16 %sub167, ptr %arrayidx169, align 2
  %or172316 = or i16 %or158315, %sub167
  %arrayidx176 = getelementptr inbounds i8, ptr %p_src, i64 19
  %26 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %26 to i16
  %arrayidx179 = getelementptr inbounds i8, ptr %p_dst, i64 35
  %27 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %27 to i16
  %sub181 = sub nsw i16 %conv177, %conv180
  %arrayidx183 = getelementptr inbounds i8, ptr %level, i64 26
  store i16 %sub181, ptr %arrayidx183, align 2
  %or186317 = or i16 %or172316, %sub181
  %arrayidx190 = getelementptr inbounds i8, ptr %p_src, i64 35
  %28 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %28 to i16
  %arrayidx193 = getelementptr inbounds i8, ptr %p_dst, i64 67
  %29 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %29 to i16
  %sub195 = sub nsw i16 %conv191, %conv194
  %arrayidx197 = getelementptr inbounds i8, ptr %level, i64 28
  store i16 %sub195, ptr %arrayidx197, align 2
  %or200318 = or i16 %or186317, %sub195
  %arrayidx204 = getelementptr inbounds i8, ptr %p_src, i64 51
  %30 = load i8, ptr %arrayidx204, align 1
  %conv205 = zext i8 %30 to i16
  %arrayidx207 = getelementptr inbounds i8, ptr %p_dst, i64 99
  %31 = load i8, ptr %arrayidx207, align 1
  %conv208 = zext i8 %31 to i16
  %sub209 = sub nsw i16 %conv205, %conv208
  %arrayidx211 = getelementptr inbounds i8, ptr %level, i64 30
  store i16 %sub209, ptr %arrayidx211, align 2
  %or214319 = or i16 %or200318, %sub209
  %32 = load i32, ptr %p_src, align 4
  store i32 %32, ptr %p_dst, align 4
  %33 = load i32, ptr %arrayidx9, align 4
  store i32 %33, ptr %arrayidx12, align 4
  %34 = load i32, ptr %arrayidx36, align 4
  store i32 %34, ptr %arrayidx39, align 4
  %35 = load i32, ptr %arrayidx50, align 4
  store i32 %35, ptr %arrayidx53, align 4
  %tobool = icmp ne i16 %or214319, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_8x8_frame(ptr noundef writeonly %level, ptr noundef readonly %dct) #1 {
entry:
  %0 = load i16, ptr %dct, align 2
  store i16 %0, ptr %level, align 2
  %arrayidx2 = getelementptr inbounds i8, ptr %dct, i64 16
  %1 = load i16, ptr %arrayidx2, align 2
  %arrayidx3 = getelementptr inbounds i8, ptr %level, i64 2
  store i16 %1, ptr %arrayidx3, align 2
  %arrayidx4 = getelementptr inbounds i8, ptr %dct, i64 2
  %2 = load i16, ptr %arrayidx4, align 2
  %arrayidx5 = getelementptr inbounds i8, ptr %level, i64 4
  store i16 %2, ptr %arrayidx5, align 2
  %arrayidx6 = getelementptr inbounds i8, ptr %dct, i64 4
  %3 = load i16, ptr %arrayidx6, align 2
  %arrayidx7 = getelementptr inbounds i8, ptr %level, i64 6
  store i16 %3, ptr %arrayidx7, align 2
  %arrayidx8 = getelementptr inbounds i8, ptr %dct, i64 18
  %4 = load i16, ptr %arrayidx8, align 2
  %arrayidx9 = getelementptr inbounds i8, ptr %level, i64 8
  store i16 %4, ptr %arrayidx9, align 2
  %arrayidx10 = getelementptr inbounds i8, ptr %dct, i64 32
  %5 = load i16, ptr %arrayidx10, align 2
  %arrayidx11 = getelementptr inbounds i8, ptr %level, i64 10
  store i16 %5, ptr %arrayidx11, align 2
  %arrayidx12 = getelementptr inbounds i8, ptr %dct, i64 48
  %6 = load i16, ptr %arrayidx12, align 2
  %arrayidx13 = getelementptr inbounds i8, ptr %level, i64 12
  store i16 %6, ptr %arrayidx13, align 2
  %arrayidx14 = getelementptr inbounds i8, ptr %dct, i64 34
  %7 = load i16, ptr %arrayidx14, align 2
  %arrayidx15 = getelementptr inbounds i8, ptr %level, i64 14
  store i16 %7, ptr %arrayidx15, align 2
  %arrayidx16 = getelementptr inbounds i8, ptr %dct, i64 20
  %8 = load i16, ptr %arrayidx16, align 2
  %arrayidx17 = getelementptr inbounds i8, ptr %level, i64 16
  store i16 %8, ptr %arrayidx17, align 2
  %arrayidx18 = getelementptr inbounds i8, ptr %dct, i64 6
  %9 = load i16, ptr %arrayidx18, align 2
  %arrayidx19 = getelementptr inbounds i8, ptr %level, i64 18
  store i16 %9, ptr %arrayidx19, align 2
  %arrayidx20 = getelementptr inbounds i8, ptr %dct, i64 8
  %10 = load i16, ptr %arrayidx20, align 2
  %arrayidx21 = getelementptr inbounds i8, ptr %level, i64 20
  store i16 %10, ptr %arrayidx21, align 2
  %arrayidx22 = getelementptr inbounds i8, ptr %dct, i64 22
  %11 = load i16, ptr %arrayidx22, align 2
  %arrayidx23 = getelementptr inbounds i8, ptr %level, i64 22
  store i16 %11, ptr %arrayidx23, align 2
  %arrayidx24 = getelementptr inbounds i8, ptr %dct, i64 36
  %12 = load i16, ptr %arrayidx24, align 2
  %arrayidx25 = getelementptr inbounds i8, ptr %level, i64 24
  store i16 %12, ptr %arrayidx25, align 2
  %arrayidx26 = getelementptr inbounds i8, ptr %dct, i64 50
  %13 = load i16, ptr %arrayidx26, align 2
  %arrayidx27 = getelementptr inbounds i8, ptr %level, i64 26
  store i16 %13, ptr %arrayidx27, align 2
  %arrayidx28 = getelementptr inbounds i8, ptr %dct, i64 64
  %14 = load i16, ptr %arrayidx28, align 2
  %arrayidx29 = getelementptr inbounds i8, ptr %level, i64 28
  store i16 %14, ptr %arrayidx29, align 2
  %arrayidx30 = getelementptr inbounds i8, ptr %dct, i64 80
  %15 = load i16, ptr %arrayidx30, align 2
  %arrayidx31 = getelementptr inbounds i8, ptr %level, i64 30
  store i16 %15, ptr %arrayidx31, align 2
  %arrayidx32 = getelementptr inbounds i8, ptr %dct, i64 66
  %16 = load i16, ptr %arrayidx32, align 2
  %arrayidx33 = getelementptr inbounds i8, ptr %level, i64 32
  store i16 %16, ptr %arrayidx33, align 2
  %arrayidx34 = getelementptr inbounds i8, ptr %dct, i64 52
  %17 = load i16, ptr %arrayidx34, align 2
  %arrayidx35 = getelementptr inbounds i8, ptr %level, i64 34
  store i16 %17, ptr %arrayidx35, align 2
  %arrayidx36 = getelementptr inbounds i8, ptr %dct, i64 38
  %18 = load i16, ptr %arrayidx36, align 2
  %arrayidx37 = getelementptr inbounds i8, ptr %level, i64 36
  store i16 %18, ptr %arrayidx37, align 2
  %arrayidx38 = getelementptr inbounds i8, ptr %dct, i64 24
  %19 = load i16, ptr %arrayidx38, align 2
  %arrayidx39 = getelementptr inbounds i8, ptr %level, i64 38
  store i16 %19, ptr %arrayidx39, align 2
  %arrayidx40 = getelementptr inbounds i8, ptr %dct, i64 10
  %20 = load i16, ptr %arrayidx40, align 2
  %arrayidx41 = getelementptr inbounds i8, ptr %level, i64 40
  store i16 %20, ptr %arrayidx41, align 2
  %arrayidx42 = getelementptr inbounds i8, ptr %dct, i64 12
  %21 = load i16, ptr %arrayidx42, align 2
  %arrayidx43 = getelementptr inbounds i8, ptr %level, i64 42
  store i16 %21, ptr %arrayidx43, align 2
  %arrayidx44 = getelementptr inbounds i8, ptr %dct, i64 26
  %22 = load i16, ptr %arrayidx44, align 2
  %arrayidx45 = getelementptr inbounds i8, ptr %level, i64 44
  store i16 %22, ptr %arrayidx45, align 2
  %arrayidx46 = getelementptr inbounds i8, ptr %dct, i64 40
  %23 = load i16, ptr %arrayidx46, align 2
  %arrayidx47 = getelementptr inbounds i8, ptr %level, i64 46
  store i16 %23, ptr %arrayidx47, align 2
  %arrayidx48 = getelementptr inbounds i8, ptr %dct, i64 54
  %24 = load i16, ptr %arrayidx48, align 2
  %arrayidx49 = getelementptr inbounds i8, ptr %level, i64 48
  store i16 %24, ptr %arrayidx49, align 2
  %arrayidx50 = getelementptr inbounds i8, ptr %dct, i64 68
  %25 = load i16, ptr %arrayidx50, align 2
  %arrayidx51 = getelementptr inbounds i8, ptr %level, i64 50
  store i16 %25, ptr %arrayidx51, align 2
  %arrayidx52 = getelementptr inbounds i8, ptr %dct, i64 82
  %26 = load i16, ptr %arrayidx52, align 2
  %arrayidx53 = getelementptr inbounds i8, ptr %level, i64 52
  store i16 %26, ptr %arrayidx53, align 2
  %arrayidx54 = getelementptr inbounds i8, ptr %dct, i64 96
  %27 = load i16, ptr %arrayidx54, align 2
  %arrayidx55 = getelementptr inbounds i8, ptr %level, i64 54
  store i16 %27, ptr %arrayidx55, align 2
  %arrayidx56 = getelementptr inbounds i8, ptr %dct, i64 112
  %28 = load i16, ptr %arrayidx56, align 2
  %arrayidx57 = getelementptr inbounds i8, ptr %level, i64 56
  store i16 %28, ptr %arrayidx57, align 2
  %arrayidx58 = getelementptr inbounds i8, ptr %dct, i64 98
  %29 = load i16, ptr %arrayidx58, align 2
  %arrayidx59 = getelementptr inbounds i8, ptr %level, i64 58
  store i16 %29, ptr %arrayidx59, align 2
  %arrayidx60 = getelementptr inbounds i8, ptr %dct, i64 84
  %30 = load i16, ptr %arrayidx60, align 2
  %arrayidx61 = getelementptr inbounds i8, ptr %level, i64 60
  store i16 %30, ptr %arrayidx61, align 2
  %arrayidx62 = getelementptr inbounds i8, ptr %dct, i64 70
  %31 = load i16, ptr %arrayidx62, align 2
  %arrayidx63 = getelementptr inbounds i8, ptr %level, i64 62
  store i16 %31, ptr %arrayidx63, align 2
  %arrayidx64 = getelementptr inbounds i8, ptr %dct, i64 56
  %32 = load i16, ptr %arrayidx64, align 2
  %arrayidx65 = getelementptr inbounds i8, ptr %level, i64 64
  store i16 %32, ptr %arrayidx65, align 2
  %arrayidx66 = getelementptr inbounds i8, ptr %dct, i64 42
  %33 = load i16, ptr %arrayidx66, align 2
  %arrayidx67 = getelementptr inbounds i8, ptr %level, i64 66
  store i16 %33, ptr %arrayidx67, align 2
  %arrayidx68 = getelementptr inbounds i8, ptr %dct, i64 28
  %34 = load i16, ptr %arrayidx68, align 2
  %arrayidx69 = getelementptr inbounds i8, ptr %level, i64 68
  store i16 %34, ptr %arrayidx69, align 2
  %arrayidx70 = getelementptr inbounds i8, ptr %dct, i64 14
  %35 = load i16, ptr %arrayidx70, align 2
  %arrayidx71 = getelementptr inbounds i8, ptr %level, i64 70
  store i16 %35, ptr %arrayidx71, align 2
  %arrayidx72 = getelementptr inbounds i8, ptr %dct, i64 30
  %36 = load i16, ptr %arrayidx72, align 2
  %arrayidx73 = getelementptr inbounds i8, ptr %level, i64 72
  store i16 %36, ptr %arrayidx73, align 2
  %arrayidx74 = getelementptr inbounds i8, ptr %dct, i64 44
  %37 = load i16, ptr %arrayidx74, align 2
  %arrayidx75 = getelementptr inbounds i8, ptr %level, i64 74
  store i16 %37, ptr %arrayidx75, align 2
  %arrayidx76 = getelementptr inbounds i8, ptr %dct, i64 58
  %38 = load i16, ptr %arrayidx76, align 2
  %arrayidx77 = getelementptr inbounds i8, ptr %level, i64 76
  store i16 %38, ptr %arrayidx77, align 2
  %arrayidx78 = getelementptr inbounds i8, ptr %dct, i64 72
  %39 = load i16, ptr %arrayidx78, align 2
  %arrayidx79 = getelementptr inbounds i8, ptr %level, i64 78
  store i16 %39, ptr %arrayidx79, align 2
  %arrayidx80 = getelementptr inbounds i8, ptr %dct, i64 86
  %40 = load i16, ptr %arrayidx80, align 2
  %arrayidx81 = getelementptr inbounds i8, ptr %level, i64 80
  store i16 %40, ptr %arrayidx81, align 2
  %arrayidx82 = getelementptr inbounds i8, ptr %dct, i64 100
  %41 = load i16, ptr %arrayidx82, align 2
  %arrayidx83 = getelementptr inbounds i8, ptr %level, i64 82
  store i16 %41, ptr %arrayidx83, align 2
  %arrayidx84 = getelementptr inbounds i8, ptr %dct, i64 114
  %42 = load i16, ptr %arrayidx84, align 2
  %arrayidx85 = getelementptr inbounds i8, ptr %level, i64 84
  store i16 %42, ptr %arrayidx85, align 2
  %arrayidx86 = getelementptr inbounds i8, ptr %dct, i64 116
  %43 = load i16, ptr %arrayidx86, align 2
  %arrayidx87 = getelementptr inbounds i8, ptr %level, i64 86
  store i16 %43, ptr %arrayidx87, align 2
  %arrayidx88 = getelementptr inbounds i8, ptr %dct, i64 102
  %44 = load i16, ptr %arrayidx88, align 2
  %arrayidx89 = getelementptr inbounds i8, ptr %level, i64 88
  store i16 %44, ptr %arrayidx89, align 2
  %arrayidx90 = getelementptr inbounds i8, ptr %dct, i64 88
  %45 = load i16, ptr %arrayidx90, align 2
  %arrayidx91 = getelementptr inbounds i8, ptr %level, i64 90
  store i16 %45, ptr %arrayidx91, align 2
  %arrayidx92 = getelementptr inbounds i8, ptr %dct, i64 74
  %46 = load i16, ptr %arrayidx92, align 2
  %arrayidx93 = getelementptr inbounds i8, ptr %level, i64 92
  store i16 %46, ptr %arrayidx93, align 2
  %arrayidx94 = getelementptr inbounds i8, ptr %dct, i64 60
  %47 = load i16, ptr %arrayidx94, align 2
  %arrayidx95 = getelementptr inbounds i8, ptr %level, i64 94
  store i16 %47, ptr %arrayidx95, align 2
  %arrayidx96 = getelementptr inbounds i8, ptr %dct, i64 46
  %48 = load i16, ptr %arrayidx96, align 2
  %arrayidx97 = getelementptr inbounds i8, ptr %level, i64 96
  store i16 %48, ptr %arrayidx97, align 2
  %arrayidx98 = getelementptr inbounds i8, ptr %dct, i64 62
  %49 = load i16, ptr %arrayidx98, align 2
  %arrayidx99 = getelementptr inbounds i8, ptr %level, i64 98
  store i16 %49, ptr %arrayidx99, align 2
  %arrayidx100 = getelementptr inbounds i8, ptr %dct, i64 76
  %50 = load i16, ptr %arrayidx100, align 2
  %arrayidx101 = getelementptr inbounds i8, ptr %level, i64 100
  store i16 %50, ptr %arrayidx101, align 2
  %arrayidx102 = getelementptr inbounds i8, ptr %dct, i64 90
  %51 = load i16, ptr %arrayidx102, align 2
  %arrayidx103 = getelementptr inbounds i8, ptr %level, i64 102
  store i16 %51, ptr %arrayidx103, align 2
  %arrayidx104 = getelementptr inbounds i8, ptr %dct, i64 104
  %52 = load i16, ptr %arrayidx104, align 2
  %arrayidx105 = getelementptr inbounds i8, ptr %level, i64 104
  store i16 %52, ptr %arrayidx105, align 2
  %arrayidx106 = getelementptr inbounds i8, ptr %dct, i64 118
  %53 = load i16, ptr %arrayidx106, align 2
  %arrayidx107 = getelementptr inbounds i8, ptr %level, i64 106
  store i16 %53, ptr %arrayidx107, align 2
  %arrayidx108 = getelementptr inbounds i8, ptr %dct, i64 120
  %54 = load i16, ptr %arrayidx108, align 2
  %arrayidx109 = getelementptr inbounds i8, ptr %level, i64 108
  store i16 %54, ptr %arrayidx109, align 2
  %arrayidx110 = getelementptr inbounds i8, ptr %dct, i64 106
  %55 = load i16, ptr %arrayidx110, align 2
  %arrayidx111 = getelementptr inbounds i8, ptr %level, i64 110
  store i16 %55, ptr %arrayidx111, align 2
  %arrayidx112 = getelementptr inbounds i8, ptr %dct, i64 92
  %56 = load i16, ptr %arrayidx112, align 2
  %arrayidx113 = getelementptr inbounds i8, ptr %level, i64 112
  store i16 %56, ptr %arrayidx113, align 2
  %arrayidx114 = getelementptr inbounds i8, ptr %dct, i64 78
  %57 = load i16, ptr %arrayidx114, align 2
  %arrayidx115 = getelementptr inbounds i8, ptr %level, i64 114
  store i16 %57, ptr %arrayidx115, align 2
  %arrayidx116 = getelementptr inbounds i8, ptr %dct, i64 94
  %58 = load i16, ptr %arrayidx116, align 2
  %arrayidx117 = getelementptr inbounds i8, ptr %level, i64 116
  store i16 %58, ptr %arrayidx117, align 2
  %arrayidx118 = getelementptr inbounds i8, ptr %dct, i64 108
  %59 = load i16, ptr %arrayidx118, align 2
  %arrayidx119 = getelementptr inbounds i8, ptr %level, i64 118
  store i16 %59, ptr %arrayidx119, align 2
  %arrayidx120 = getelementptr inbounds i8, ptr %dct, i64 122
  %60 = load i16, ptr %arrayidx120, align 2
  %arrayidx121 = getelementptr inbounds i8, ptr %level, i64 120
  store i16 %60, ptr %arrayidx121, align 2
  %arrayidx122 = getelementptr inbounds i8, ptr %dct, i64 124
  %61 = load i16, ptr %arrayidx122, align 2
  %arrayidx123 = getelementptr inbounds i8, ptr %level, i64 122
  store i16 %61, ptr %arrayidx123, align 2
  %arrayidx124 = getelementptr inbounds i8, ptr %dct, i64 110
  %62 = load i16, ptr %arrayidx124, align 2
  %arrayidx125 = getelementptr inbounds i8, ptr %level, i64 124
  store i16 %62, ptr %arrayidx125, align 2
  %arrayidx126 = getelementptr inbounds i8, ptr %dct, i64 126
  %63 = load i16, ptr %arrayidx126, align 2
  %arrayidx127 = getelementptr inbounds i8, ptr %level, i64 126
  store i16 %63, ptr %arrayidx127, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_scan_4x4_frame(ptr nocapture noundef writeonly %level, ptr nocapture noundef readonly %dct) #1 {
entry:
  %0 = load i16, ptr %dct, align 2
  store i16 %0, ptr %level, align 2
  %arrayidx2 = getelementptr inbounds i8, ptr %dct, i64 8
  %1 = load i16, ptr %arrayidx2, align 2
  %arrayidx3 = getelementptr inbounds i8, ptr %level, i64 2
  store i16 %1, ptr %arrayidx3, align 2
  %arrayidx4 = getelementptr inbounds i8, ptr %dct, i64 2
  %2 = load i16, ptr %arrayidx4, align 2
  %arrayidx5 = getelementptr inbounds i8, ptr %level, i64 4
  store i16 %2, ptr %arrayidx5, align 2
  %arrayidx6 = getelementptr inbounds i8, ptr %dct, i64 4
  %3 = load i16, ptr %arrayidx6, align 2
  %arrayidx7 = getelementptr inbounds i8, ptr %level, i64 6
  store i16 %3, ptr %arrayidx7, align 2
  %arrayidx8 = getelementptr inbounds i8, ptr %dct, i64 10
  %4 = load i16, ptr %arrayidx8, align 2
  %arrayidx9 = getelementptr inbounds i8, ptr %level, i64 8
  store i16 %4, ptr %arrayidx9, align 2
  %arrayidx10 = getelementptr inbounds i8, ptr %dct, i64 16
  %5 = load i16, ptr %arrayidx10, align 2
  %arrayidx11 = getelementptr inbounds i8, ptr %level, i64 10
  store i16 %5, ptr %arrayidx11, align 2
  %arrayidx12 = getelementptr inbounds i8, ptr %dct, i64 24
  %6 = load i16, ptr %arrayidx12, align 2
  %arrayidx13 = getelementptr inbounds i8, ptr %level, i64 12
  store i16 %6, ptr %arrayidx13, align 2
  %arrayidx14 = getelementptr inbounds i8, ptr %dct, i64 18
  %7 = load i16, ptr %arrayidx14, align 2
  %arrayidx15 = getelementptr inbounds i8, ptr %level, i64 14
  store i16 %7, ptr %arrayidx15, align 2
  %arrayidx16 = getelementptr inbounds i8, ptr %dct, i64 12
  %8 = load i16, ptr %arrayidx16, align 2
  %arrayidx17 = getelementptr inbounds i8, ptr %level, i64 16
  store i16 %8, ptr %arrayidx17, align 2
  %arrayidx18 = getelementptr inbounds i8, ptr %dct, i64 6
  %9 = load i16, ptr %arrayidx18, align 2
  %arrayidx19 = getelementptr inbounds i8, ptr %level, i64 18
  store i16 %9, ptr %arrayidx19, align 2
  %arrayidx20 = getelementptr inbounds i8, ptr %dct, i64 14
  %10 = load i16, ptr %arrayidx20, align 2
  %arrayidx21 = getelementptr inbounds i8, ptr %level, i64 20
  store i16 %10, ptr %arrayidx21, align 2
  %arrayidx22 = getelementptr inbounds i8, ptr %dct, i64 20
  %11 = load i16, ptr %arrayidx22, align 2
  %arrayidx23 = getelementptr inbounds i8, ptr %level, i64 22
  store i16 %11, ptr %arrayidx23, align 2
  %arrayidx24 = getelementptr inbounds i8, ptr %dct, i64 26
  %12 = load i16, ptr %arrayidx24, align 2
  %arrayidx25 = getelementptr inbounds i8, ptr %level, i64 24
  store i16 %12, ptr %arrayidx25, align 2
  %arrayidx26 = getelementptr inbounds i8, ptr %dct, i64 28
  %13 = load i16, ptr %arrayidx26, align 2
  %arrayidx27 = getelementptr inbounds i8, ptr %level, i64 26
  store i16 %13, ptr %arrayidx27, align 2
  %arrayidx28 = getelementptr inbounds i8, ptr %dct, i64 22
  %14 = load i16, ptr %arrayidx28, align 2
  %arrayidx29 = getelementptr inbounds i8, ptr %level, i64 28
  store i16 %14, ptr %arrayidx29, align 2
  %arrayidx30 = getelementptr inbounds i8, ptr %dct, i64 30
  %15 = load i16, ptr %arrayidx30, align 2
  %arrayidx31 = getelementptr inbounds i8, ptr %level, i64 30
  store i16 %15, ptr %arrayidx31, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @zigzag_sub_8x8_frame(ptr noundef writeonly %level, ptr noundef readonly %p_src, ptr noundef %p_dst) #1 {
entry:
  %0 = load i8, ptr %p_src, align 1
  %conv = zext i8 %0 to i16
  %1 = load i8, ptr %p_dst, align 1
  %conv3 = zext i8 %1 to i16
  %sub = sub nsw i16 %conv, %conv3
  store i16 %sub, ptr %level, align 2
  %arrayidx11 = getelementptr inbounds i8, ptr %p_src, i64 1
  %2 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %2 to i16
  %arrayidx14 = getelementptr inbounds i8, ptr %p_dst, i64 1
  %3 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %3 to i16
  %sub16 = sub nsw i16 %conv12, %conv15
  %arrayidx18 = getelementptr inbounds i8, ptr %level, i64 2
  store i16 %sub16, ptr %arrayidx18, align 2
  %or211239 = or i16 %sub16, %sub
  %arrayidx25 = getelementptr inbounds i8, ptr %p_src, i64 16
  %4 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %4 to i16
  %arrayidx28 = getelementptr inbounds i8, ptr %p_dst, i64 32
  %5 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %5 to i16
  %sub30 = sub nsw i16 %conv26, %conv29
  %arrayidx32 = getelementptr inbounds i8, ptr %level, i64 4
  store i16 %sub30, ptr %arrayidx32, align 2
  %or351240 = or i16 %or211239, %sub30
  %arrayidx39 = getelementptr inbounds i8, ptr %p_src, i64 32
  %6 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %6 to i16
  %arrayidx42 = getelementptr inbounds i8, ptr %p_dst, i64 64
  %7 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %7 to i16
  %sub44 = sub nsw i16 %conv40, %conv43
  %arrayidx46 = getelementptr inbounds i8, ptr %level, i64 6
  store i16 %sub44, ptr %arrayidx46, align 2
  %or491241 = or i16 %or351240, %sub44
  %arrayidx53 = getelementptr inbounds i8, ptr %p_src, i64 17
  %8 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %8 to i16
  %arrayidx56 = getelementptr inbounds i8, ptr %p_dst, i64 33
  %9 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %9 to i16
  %sub58 = sub nsw i16 %conv54, %conv57
  %arrayidx60 = getelementptr inbounds i8, ptr %level, i64 8
  store i16 %sub58, ptr %arrayidx60, align 2
  %or631242 = or i16 %or491241, %sub58
  %arrayidx67 = getelementptr inbounds i8, ptr %p_src, i64 2
  %10 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %10 to i16
  %arrayidx70 = getelementptr inbounds i8, ptr %p_dst, i64 2
  %11 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %11 to i16
  %sub72 = sub nsw i16 %conv68, %conv71
  %arrayidx74 = getelementptr inbounds i8, ptr %level, i64 10
  store i16 %sub72, ptr %arrayidx74, align 2
  %or771243 = or i16 %or631242, %sub72
  %arrayidx81 = getelementptr inbounds i8, ptr %p_src, i64 3
  %12 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %12 to i16
  %arrayidx84 = getelementptr inbounds i8, ptr %p_dst, i64 3
  %13 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %13 to i16
  %sub86 = sub nsw i16 %conv82, %conv85
  %arrayidx88 = getelementptr inbounds i8, ptr %level, i64 12
  store i16 %sub86, ptr %arrayidx88, align 2
  %or911244 = or i16 %or771243, %sub86
  %arrayidx95 = getelementptr inbounds i8, ptr %p_src, i64 18
  %14 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %14 to i16
  %arrayidx98 = getelementptr inbounds i8, ptr %p_dst, i64 34
  %15 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %15 to i16
  %sub100 = sub nsw i16 %conv96, %conv99
  %arrayidx102 = getelementptr inbounds i8, ptr %level, i64 14
  store i16 %sub100, ptr %arrayidx102, align 2
  %or1051245 = or i16 %or911244, %sub100
  %arrayidx109 = getelementptr inbounds i8, ptr %p_src, i64 33
  %16 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %16 to i16
  %arrayidx112 = getelementptr inbounds i8, ptr %p_dst, i64 65
  %17 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %17 to i16
  %sub114 = sub nsw i16 %conv110, %conv113
  %arrayidx116 = getelementptr inbounds i8, ptr %level, i64 16
  store i16 %sub114, ptr %arrayidx116, align 2
  %or1191246 = or i16 %or1051245, %sub114
  %arrayidx123 = getelementptr inbounds i8, ptr %p_src, i64 48
  %18 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %18 to i16
  %arrayidx126 = getelementptr inbounds i8, ptr %p_dst, i64 96
  %19 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %19 to i16
  %sub128 = sub nsw i16 %conv124, %conv127
  %arrayidx130 = getelementptr inbounds i8, ptr %level, i64 18
  store i16 %sub128, ptr %arrayidx130, align 2
  %or1331247 = or i16 %or1191246, %sub128
  %arrayidx137 = getelementptr inbounds i8, ptr %p_src, i64 64
  %20 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %20 to i16
  %arrayidx140 = getelementptr inbounds i8, ptr %p_dst, i64 128
  %21 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %21 to i16
  %sub142 = sub nsw i16 %conv138, %conv141
  %arrayidx144 = getelementptr inbounds i8, ptr %level, i64 20
  store i16 %sub142, ptr %arrayidx144, align 2
  %or1471248 = or i16 %or1331247, %sub142
  %arrayidx151 = getelementptr inbounds i8, ptr %p_src, i64 49
  %22 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %22 to i16
  %arrayidx154 = getelementptr inbounds i8, ptr %p_dst, i64 97
  %23 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %23 to i16
  %sub156 = sub nsw i16 %conv152, %conv155
  %arrayidx158 = getelementptr inbounds i8, ptr %level, i64 22
  store i16 %sub156, ptr %arrayidx158, align 2
  %or1611249 = or i16 %or1471248, %sub156
  %arrayidx165 = getelementptr inbounds i8, ptr %p_src, i64 34
  %24 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %24 to i16
  %arrayidx168 = getelementptr inbounds i8, ptr %p_dst, i64 66
  %25 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %25 to i16
  %sub170 = sub nsw i16 %conv166, %conv169
  %arrayidx172 = getelementptr inbounds i8, ptr %level, i64 24
  store i16 %sub170, ptr %arrayidx172, align 2
  %or1751250 = or i16 %or1611249, %sub170
  %arrayidx179 = getelementptr inbounds i8, ptr %p_src, i64 19
  %26 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %26 to i16
  %arrayidx182 = getelementptr inbounds i8, ptr %p_dst, i64 35
  %27 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %27 to i16
  %sub184 = sub nsw i16 %conv180, %conv183
  %arrayidx186 = getelementptr inbounds i8, ptr %level, i64 26
  store i16 %sub184, ptr %arrayidx186, align 2
  %or1891251 = or i16 %or1751250, %sub184
  %arrayidx193 = getelementptr inbounds i8, ptr %p_src, i64 4
  %28 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %28 to i16
  %arrayidx196 = getelementptr inbounds i8, ptr %p_dst, i64 4
  %29 = load i8, ptr %arrayidx196, align 1
  %conv197 = zext i8 %29 to i16
  %sub198 = sub nsw i16 %conv194, %conv197
  %arrayidx200 = getelementptr inbounds i8, ptr %level, i64 28
  store i16 %sub198, ptr %arrayidx200, align 2
  %or2031252 = or i16 %or1891251, %sub198
  %arrayidx207 = getelementptr inbounds i8, ptr %p_src, i64 5
  %30 = load i8, ptr %arrayidx207, align 1
  %conv208 = zext i8 %30 to i16
  %arrayidx210 = getelementptr inbounds i8, ptr %p_dst, i64 5
  %31 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %31 to i16
  %sub212 = sub nsw i16 %conv208, %conv211
  %arrayidx214 = getelementptr inbounds i8, ptr %level, i64 30
  store i16 %sub212, ptr %arrayidx214, align 2
  %or2171253 = or i16 %or2031252, %sub212
  %arrayidx221 = getelementptr inbounds i8, ptr %p_src, i64 20
  %32 = load i8, ptr %arrayidx221, align 1
  %conv222 = zext i8 %32 to i16
  %arrayidx224 = getelementptr inbounds i8, ptr %p_dst, i64 36
  %33 = load i8, ptr %arrayidx224, align 1
  %conv225 = zext i8 %33 to i16
  %sub226 = sub nsw i16 %conv222, %conv225
  %arrayidx228 = getelementptr inbounds i8, ptr %level, i64 32
  store i16 %sub226, ptr %arrayidx228, align 2
  %or2311254 = or i16 %or2171253, %sub226
  %arrayidx235 = getelementptr inbounds i8, ptr %p_src, i64 35
  %34 = load i8, ptr %arrayidx235, align 1
  %conv236 = zext i8 %34 to i16
  %arrayidx238 = getelementptr inbounds i8, ptr %p_dst, i64 67
  %35 = load i8, ptr %arrayidx238, align 1
  %conv239 = zext i8 %35 to i16
  %sub240 = sub nsw i16 %conv236, %conv239
  %arrayidx242 = getelementptr inbounds i8, ptr %level, i64 34
  store i16 %sub240, ptr %arrayidx242, align 2
  %or2451255 = or i16 %or2311254, %sub240
  %arrayidx249 = getelementptr inbounds i8, ptr %p_src, i64 50
  %36 = load i8, ptr %arrayidx249, align 1
  %conv250 = zext i8 %36 to i16
  %arrayidx252 = getelementptr inbounds i8, ptr %p_dst, i64 98
  %37 = load i8, ptr %arrayidx252, align 1
  %conv253 = zext i8 %37 to i16
  %sub254 = sub nsw i16 %conv250, %conv253
  %arrayidx256 = getelementptr inbounds i8, ptr %level, i64 36
  store i16 %sub254, ptr %arrayidx256, align 2
  %or2591256 = or i16 %or2451255, %sub254
  %arrayidx263 = getelementptr inbounds i8, ptr %p_src, i64 65
  %38 = load i8, ptr %arrayidx263, align 1
  %conv264 = zext i8 %38 to i16
  %arrayidx266 = getelementptr inbounds i8, ptr %p_dst, i64 129
  %39 = load i8, ptr %arrayidx266, align 1
  %conv267 = zext i8 %39 to i16
  %sub268 = sub nsw i16 %conv264, %conv267
  %arrayidx270 = getelementptr inbounds i8, ptr %level, i64 38
  store i16 %sub268, ptr %arrayidx270, align 2
  %or2731257 = or i16 %or2591256, %sub268
  %arrayidx277 = getelementptr inbounds i8, ptr %p_src, i64 80
  %40 = load i8, ptr %arrayidx277, align 1
  %conv278 = zext i8 %40 to i16
  %arrayidx280 = getelementptr inbounds i8, ptr %p_dst, i64 160
  %41 = load i8, ptr %arrayidx280, align 1
  %conv281 = zext i8 %41 to i16
  %sub282 = sub nsw i16 %conv278, %conv281
  %arrayidx284 = getelementptr inbounds i8, ptr %level, i64 40
  store i16 %sub282, ptr %arrayidx284, align 2
  %or2871258 = or i16 %or2731257, %sub282
  %arrayidx291 = getelementptr inbounds i8, ptr %p_src, i64 96
  %42 = load i8, ptr %arrayidx291, align 1
  %conv292 = zext i8 %42 to i16
  %arrayidx294 = getelementptr inbounds i8, ptr %p_dst, i64 192
  %43 = load i8, ptr %arrayidx294, align 1
  %conv295 = zext i8 %43 to i16
  %sub296 = sub nsw i16 %conv292, %conv295
  %arrayidx298 = getelementptr inbounds i8, ptr %level, i64 42
  store i16 %sub296, ptr %arrayidx298, align 2
  %or3011259 = or i16 %or2871258, %sub296
  %arrayidx305 = getelementptr inbounds i8, ptr %p_src, i64 81
  %44 = load i8, ptr %arrayidx305, align 1
  %conv306 = zext i8 %44 to i16
  %arrayidx308 = getelementptr inbounds i8, ptr %p_dst, i64 161
  %45 = load i8, ptr %arrayidx308, align 1
  %conv309 = zext i8 %45 to i16
  %sub310 = sub nsw i16 %conv306, %conv309
  %arrayidx312 = getelementptr inbounds i8, ptr %level, i64 44
  store i16 %sub310, ptr %arrayidx312, align 2
  %or3151260 = or i16 %or3011259, %sub310
  %arrayidx319 = getelementptr inbounds i8, ptr %p_src, i64 66
  %46 = load i8, ptr %arrayidx319, align 1
  %conv320 = zext i8 %46 to i16
  %arrayidx322 = getelementptr inbounds i8, ptr %p_dst, i64 130
  %47 = load i8, ptr %arrayidx322, align 1
  %conv323 = zext i8 %47 to i16
  %sub324 = sub nsw i16 %conv320, %conv323
  %arrayidx326 = getelementptr inbounds i8, ptr %level, i64 46
  store i16 %sub324, ptr %arrayidx326, align 2
  %or3291261 = or i16 %or3151260, %sub324
  %arrayidx333 = getelementptr inbounds i8, ptr %p_src, i64 51
  %48 = load i8, ptr %arrayidx333, align 1
  %conv334 = zext i8 %48 to i16
  %arrayidx336 = getelementptr inbounds i8, ptr %p_dst, i64 99
  %49 = load i8, ptr %arrayidx336, align 1
  %conv337 = zext i8 %49 to i16
  %sub338 = sub nsw i16 %conv334, %conv337
  %arrayidx340 = getelementptr inbounds i8, ptr %level, i64 48
  store i16 %sub338, ptr %arrayidx340, align 2
  %or3431262 = or i16 %or3291261, %sub338
  %arrayidx347 = getelementptr inbounds i8, ptr %p_src, i64 36
  %50 = load i8, ptr %arrayidx347, align 1
  %conv348 = zext i8 %50 to i16
  %arrayidx350 = getelementptr inbounds i8, ptr %p_dst, i64 68
  %51 = load i8, ptr %arrayidx350, align 1
  %conv351 = zext i8 %51 to i16
  %sub352 = sub nsw i16 %conv348, %conv351
  %arrayidx354 = getelementptr inbounds i8, ptr %level, i64 50
  store i16 %sub352, ptr %arrayidx354, align 2
  %or3571263 = or i16 %or3431262, %sub352
  %arrayidx361 = getelementptr inbounds i8, ptr %p_src, i64 21
  %52 = load i8, ptr %arrayidx361, align 1
  %conv362 = zext i8 %52 to i16
  %arrayidx364 = getelementptr inbounds i8, ptr %p_dst, i64 37
  %53 = load i8, ptr %arrayidx364, align 1
  %conv365 = zext i8 %53 to i16
  %sub366 = sub nsw i16 %conv362, %conv365
  %arrayidx368 = getelementptr inbounds i8, ptr %level, i64 52
  store i16 %sub366, ptr %arrayidx368, align 2
  %or3711264 = or i16 %or3571263, %sub366
  %arrayidx375 = getelementptr inbounds i8, ptr %p_src, i64 6
  %54 = load i8, ptr %arrayidx375, align 1
  %conv376 = zext i8 %54 to i16
  %arrayidx378 = getelementptr inbounds i8, ptr %p_dst, i64 6
  %55 = load i8, ptr %arrayidx378, align 1
  %conv379 = zext i8 %55 to i16
  %sub380 = sub nsw i16 %conv376, %conv379
  %arrayidx382 = getelementptr inbounds i8, ptr %level, i64 54
  store i16 %sub380, ptr %arrayidx382, align 2
  %or3851265 = or i16 %or3711264, %sub380
  %arrayidx389 = getelementptr inbounds i8, ptr %p_src, i64 7
  %56 = load i8, ptr %arrayidx389, align 1
  %conv390 = zext i8 %56 to i16
  %arrayidx392 = getelementptr inbounds i8, ptr %p_dst, i64 7
  %57 = load i8, ptr %arrayidx392, align 1
  %conv393 = zext i8 %57 to i16
  %sub394 = sub nsw i16 %conv390, %conv393
  %arrayidx396 = getelementptr inbounds i8, ptr %level, i64 56
  store i16 %sub394, ptr %arrayidx396, align 2
  %or3991266 = or i16 %or3851265, %sub394
  %arrayidx403 = getelementptr inbounds i8, ptr %p_src, i64 22
  %58 = load i8, ptr %arrayidx403, align 1
  %conv404 = zext i8 %58 to i16
  %arrayidx406 = getelementptr inbounds i8, ptr %p_dst, i64 38
  %59 = load i8, ptr %arrayidx406, align 1
  %conv407 = zext i8 %59 to i16
  %sub408 = sub nsw i16 %conv404, %conv407
  %arrayidx410 = getelementptr inbounds i8, ptr %level, i64 58
  store i16 %sub408, ptr %arrayidx410, align 2
  %or4131267 = or i16 %or3991266, %sub408
  %arrayidx417 = getelementptr inbounds i8, ptr %p_src, i64 37
  %60 = load i8, ptr %arrayidx417, align 1
  %conv418 = zext i8 %60 to i16
  %arrayidx420 = getelementptr inbounds i8, ptr %p_dst, i64 69
  %61 = load i8, ptr %arrayidx420, align 1
  %conv421 = zext i8 %61 to i16
  %sub422 = sub nsw i16 %conv418, %conv421
  %arrayidx424 = getelementptr inbounds i8, ptr %level, i64 60
  store i16 %sub422, ptr %arrayidx424, align 2
  %or4271268 = or i16 %or4131267, %sub422
  %arrayidx431 = getelementptr inbounds i8, ptr %p_src, i64 52
  %62 = load i8, ptr %arrayidx431, align 1
  %conv432 = zext i8 %62 to i16
  %arrayidx434 = getelementptr inbounds i8, ptr %p_dst, i64 100
  %63 = load i8, ptr %arrayidx434, align 1
  %conv435 = zext i8 %63 to i16
  %sub436 = sub nsw i16 %conv432, %conv435
  %arrayidx438 = getelementptr inbounds i8, ptr %level, i64 62
  store i16 %sub436, ptr %arrayidx438, align 2
  %or4411269 = or i16 %or4271268, %sub436
  %arrayidx445 = getelementptr inbounds i8, ptr %p_src, i64 67
  %64 = load i8, ptr %arrayidx445, align 1
  %conv446 = zext i8 %64 to i16
  %arrayidx448 = getelementptr inbounds i8, ptr %p_dst, i64 131
  %65 = load i8, ptr %arrayidx448, align 1
  %conv449 = zext i8 %65 to i16
  %sub450 = sub nsw i16 %conv446, %conv449
  %arrayidx452 = getelementptr inbounds i8, ptr %level, i64 64
  store i16 %sub450, ptr %arrayidx452, align 2
  %or4551270 = or i16 %or4411269, %sub450
  %arrayidx459 = getelementptr inbounds i8, ptr %p_src, i64 82
  %66 = load i8, ptr %arrayidx459, align 1
  %conv460 = zext i8 %66 to i16
  %arrayidx462 = getelementptr inbounds i8, ptr %p_dst, i64 162
  %67 = load i8, ptr %arrayidx462, align 1
  %conv463 = zext i8 %67 to i16
  %sub464 = sub nsw i16 %conv460, %conv463
  %arrayidx466 = getelementptr inbounds i8, ptr %level, i64 66
  store i16 %sub464, ptr %arrayidx466, align 2
  %or4691271 = or i16 %or4551270, %sub464
  %arrayidx473 = getelementptr inbounds i8, ptr %p_src, i64 97
  %68 = load i8, ptr %arrayidx473, align 1
  %conv474 = zext i8 %68 to i16
  %arrayidx476 = getelementptr inbounds i8, ptr %p_dst, i64 193
  %69 = load i8, ptr %arrayidx476, align 1
  %conv477 = zext i8 %69 to i16
  %sub478 = sub nsw i16 %conv474, %conv477
  %arrayidx480 = getelementptr inbounds i8, ptr %level, i64 68
  store i16 %sub478, ptr %arrayidx480, align 2
  %or4831272 = or i16 %or4691271, %sub478
  %arrayidx487 = getelementptr inbounds i8, ptr %p_src, i64 112
  %70 = load i8, ptr %arrayidx487, align 1
  %conv488 = zext i8 %70 to i16
  %arrayidx490 = getelementptr inbounds i8, ptr %p_dst, i64 224
  %71 = load i8, ptr %arrayidx490, align 1
  %conv491 = zext i8 %71 to i16
  %sub492 = sub nsw i16 %conv488, %conv491
  %arrayidx494 = getelementptr inbounds i8, ptr %level, i64 70
  store i16 %sub492, ptr %arrayidx494, align 2
  %or4971273 = or i16 %or4831272, %sub492
  %arrayidx501 = getelementptr inbounds i8, ptr %p_src, i64 113
  %72 = load i8, ptr %arrayidx501, align 1
  %conv502 = zext i8 %72 to i16
  %arrayidx504 = getelementptr inbounds i8, ptr %p_dst, i64 225
  %73 = load i8, ptr %arrayidx504, align 1
  %conv505 = zext i8 %73 to i16
  %sub506 = sub nsw i16 %conv502, %conv505
  %arrayidx508 = getelementptr inbounds i8, ptr %level, i64 72
  store i16 %sub506, ptr %arrayidx508, align 2
  %or5111274 = or i16 %or4971273, %sub506
  %arrayidx515 = getelementptr inbounds i8, ptr %p_src, i64 98
  %74 = load i8, ptr %arrayidx515, align 1
  %conv516 = zext i8 %74 to i16
  %arrayidx518 = getelementptr inbounds i8, ptr %p_dst, i64 194
  %75 = load i8, ptr %arrayidx518, align 1
  %conv519 = zext i8 %75 to i16
  %sub520 = sub nsw i16 %conv516, %conv519
  %arrayidx522 = getelementptr inbounds i8, ptr %level, i64 74
  store i16 %sub520, ptr %arrayidx522, align 2
  %or5251275 = or i16 %or5111274, %sub520
  %arrayidx529 = getelementptr inbounds i8, ptr %p_src, i64 83
  %76 = load i8, ptr %arrayidx529, align 1
  %conv530 = zext i8 %76 to i16
  %arrayidx532 = getelementptr inbounds i8, ptr %p_dst, i64 163
  %77 = load i8, ptr %arrayidx532, align 1
  %conv533 = zext i8 %77 to i16
  %sub534 = sub nsw i16 %conv530, %conv533
  %arrayidx536 = getelementptr inbounds i8, ptr %level, i64 76
  store i16 %sub534, ptr %arrayidx536, align 2
  %or5391276 = or i16 %or5251275, %sub534
  %arrayidx543 = getelementptr inbounds i8, ptr %p_src, i64 68
  %78 = load i8, ptr %arrayidx543, align 1
  %conv544 = zext i8 %78 to i16
  %arrayidx546 = getelementptr inbounds i8, ptr %p_dst, i64 132
  %79 = load i8, ptr %arrayidx546, align 1
  %conv547 = zext i8 %79 to i16
  %sub548 = sub nsw i16 %conv544, %conv547
  %arrayidx550 = getelementptr inbounds i8, ptr %level, i64 78
  store i16 %sub548, ptr %arrayidx550, align 2
  %or5531277 = or i16 %or5391276, %sub548
  %arrayidx557 = getelementptr inbounds i8, ptr %p_src, i64 53
  %80 = load i8, ptr %arrayidx557, align 1
  %conv558 = zext i8 %80 to i16
  %arrayidx560 = getelementptr inbounds i8, ptr %p_dst, i64 101
  %81 = load i8, ptr %arrayidx560, align 1
  %conv561 = zext i8 %81 to i16
  %sub562 = sub nsw i16 %conv558, %conv561
  %arrayidx564 = getelementptr inbounds i8, ptr %level, i64 80
  store i16 %sub562, ptr %arrayidx564, align 2
  %or5671278 = or i16 %or5531277, %sub562
  %arrayidx571 = getelementptr inbounds i8, ptr %p_src, i64 38
  %82 = load i8, ptr %arrayidx571, align 1
  %conv572 = zext i8 %82 to i16
  %arrayidx574 = getelementptr inbounds i8, ptr %p_dst, i64 70
  %83 = load i8, ptr %arrayidx574, align 1
  %conv575 = zext i8 %83 to i16
  %sub576 = sub nsw i16 %conv572, %conv575
  %arrayidx578 = getelementptr inbounds i8, ptr %level, i64 82
  store i16 %sub576, ptr %arrayidx578, align 2
  %or5811279 = or i16 %or5671278, %sub576
  %arrayidx585 = getelementptr inbounds i8, ptr %p_src, i64 23
  %84 = load i8, ptr %arrayidx585, align 1
  %conv586 = zext i8 %84 to i16
  %arrayidx588 = getelementptr inbounds i8, ptr %p_dst, i64 39
  %85 = load i8, ptr %arrayidx588, align 1
  %conv589 = zext i8 %85 to i16
  %sub590 = sub nsw i16 %conv586, %conv589
  %arrayidx592 = getelementptr inbounds i8, ptr %level, i64 84
  store i16 %sub590, ptr %arrayidx592, align 2
  %or5951280 = or i16 %or5811279, %sub590
  %arrayidx599 = getelementptr inbounds i8, ptr %p_src, i64 39
  %86 = load i8, ptr %arrayidx599, align 1
  %conv600 = zext i8 %86 to i16
  %arrayidx602 = getelementptr inbounds i8, ptr %p_dst, i64 71
  %87 = load i8, ptr %arrayidx602, align 1
  %conv603 = zext i8 %87 to i16
  %sub604 = sub nsw i16 %conv600, %conv603
  %arrayidx606 = getelementptr inbounds i8, ptr %level, i64 86
  store i16 %sub604, ptr %arrayidx606, align 2
  %or6091281 = or i16 %or5951280, %sub604
  %arrayidx613 = getelementptr inbounds i8, ptr %p_src, i64 54
  %88 = load i8, ptr %arrayidx613, align 1
  %conv614 = zext i8 %88 to i16
  %arrayidx616 = getelementptr inbounds i8, ptr %p_dst, i64 102
  %89 = load i8, ptr %arrayidx616, align 1
  %conv617 = zext i8 %89 to i16
  %sub618 = sub nsw i16 %conv614, %conv617
  %arrayidx620 = getelementptr inbounds i8, ptr %level, i64 88
  store i16 %sub618, ptr %arrayidx620, align 2
  %or6231282 = or i16 %or6091281, %sub618
  %arrayidx627 = getelementptr inbounds i8, ptr %p_src, i64 69
  %90 = load i8, ptr %arrayidx627, align 1
  %conv628 = zext i8 %90 to i16
  %arrayidx630 = getelementptr inbounds i8, ptr %p_dst, i64 133
  %91 = load i8, ptr %arrayidx630, align 1
  %conv631 = zext i8 %91 to i16
  %sub632 = sub nsw i16 %conv628, %conv631
  %arrayidx634 = getelementptr inbounds i8, ptr %level, i64 90
  store i16 %sub632, ptr %arrayidx634, align 2
  %or6371283 = or i16 %or6231282, %sub632
  %arrayidx641 = getelementptr inbounds i8, ptr %p_src, i64 84
  %92 = load i8, ptr %arrayidx641, align 1
  %conv642 = zext i8 %92 to i16
  %arrayidx644 = getelementptr inbounds i8, ptr %p_dst, i64 164
  %93 = load i8, ptr %arrayidx644, align 1
  %conv645 = zext i8 %93 to i16
  %sub646 = sub nsw i16 %conv642, %conv645
  %arrayidx648 = getelementptr inbounds i8, ptr %level, i64 92
  store i16 %sub646, ptr %arrayidx648, align 2
  %or6511284 = or i16 %or6371283, %sub646
  %arrayidx655 = getelementptr inbounds i8, ptr %p_src, i64 99
  %94 = load i8, ptr %arrayidx655, align 1
  %conv656 = zext i8 %94 to i16
  %arrayidx658 = getelementptr inbounds i8, ptr %p_dst, i64 195
  %95 = load i8, ptr %arrayidx658, align 1
  %conv659 = zext i8 %95 to i16
  %sub660 = sub nsw i16 %conv656, %conv659
  %arrayidx662 = getelementptr inbounds i8, ptr %level, i64 94
  store i16 %sub660, ptr %arrayidx662, align 2
  %or6651285 = or i16 %or6511284, %sub660
  %arrayidx669 = getelementptr inbounds i8, ptr %p_src, i64 114
  %96 = load i8, ptr %arrayidx669, align 1
  %conv670 = zext i8 %96 to i16
  %arrayidx672 = getelementptr inbounds i8, ptr %p_dst, i64 226
  %97 = load i8, ptr %arrayidx672, align 1
  %conv673 = zext i8 %97 to i16
  %sub674 = sub nsw i16 %conv670, %conv673
  %arrayidx676 = getelementptr inbounds i8, ptr %level, i64 96
  store i16 %sub674, ptr %arrayidx676, align 2
  %or6791286 = or i16 %or6651285, %sub674
  %arrayidx683 = getelementptr inbounds i8, ptr %p_src, i64 115
  %98 = load i8, ptr %arrayidx683, align 1
  %conv684 = zext i8 %98 to i16
  %arrayidx686 = getelementptr inbounds i8, ptr %p_dst, i64 227
  %99 = load i8, ptr %arrayidx686, align 1
  %conv687 = zext i8 %99 to i16
  %sub688 = sub nsw i16 %conv684, %conv687
  %arrayidx690 = getelementptr inbounds i8, ptr %level, i64 98
  store i16 %sub688, ptr %arrayidx690, align 2
  %or6931287 = or i16 %or6791286, %sub688
  %arrayidx697 = getelementptr inbounds i8, ptr %p_src, i64 100
  %100 = load i8, ptr %arrayidx697, align 1
  %conv698 = zext i8 %100 to i16
  %arrayidx700 = getelementptr inbounds i8, ptr %p_dst, i64 196
  %101 = load i8, ptr %arrayidx700, align 1
  %conv701 = zext i8 %101 to i16
  %sub702 = sub nsw i16 %conv698, %conv701
  %arrayidx704 = getelementptr inbounds i8, ptr %level, i64 100
  store i16 %sub702, ptr %arrayidx704, align 2
  %or7071288 = or i16 %or6931287, %sub702
  %arrayidx711 = getelementptr inbounds i8, ptr %p_src, i64 85
  %102 = load i8, ptr %arrayidx711, align 1
  %conv712 = zext i8 %102 to i16
  %arrayidx714 = getelementptr inbounds i8, ptr %p_dst, i64 165
  %103 = load i8, ptr %arrayidx714, align 1
  %conv715 = zext i8 %103 to i16
  %sub716 = sub nsw i16 %conv712, %conv715
  %arrayidx718 = getelementptr inbounds i8, ptr %level, i64 102
  store i16 %sub716, ptr %arrayidx718, align 2
  %or7211289 = or i16 %or7071288, %sub716
  %arrayidx725 = getelementptr inbounds i8, ptr %p_src, i64 70
  %104 = load i8, ptr %arrayidx725, align 1
  %conv726 = zext i8 %104 to i16
  %arrayidx728 = getelementptr inbounds i8, ptr %p_dst, i64 134
  %105 = load i8, ptr %arrayidx728, align 1
  %conv729 = zext i8 %105 to i16
  %sub730 = sub nsw i16 %conv726, %conv729
  %arrayidx732 = getelementptr inbounds i8, ptr %level, i64 104
  store i16 %sub730, ptr %arrayidx732, align 2
  %or7351290 = or i16 %or7211289, %sub730
  %arrayidx739 = getelementptr inbounds i8, ptr %p_src, i64 55
  %106 = load i8, ptr %arrayidx739, align 1
  %conv740 = zext i8 %106 to i16
  %arrayidx742 = getelementptr inbounds i8, ptr %p_dst, i64 103
  %107 = load i8, ptr %arrayidx742, align 1
  %conv743 = zext i8 %107 to i16
  %sub744 = sub nsw i16 %conv740, %conv743
  %arrayidx746 = getelementptr inbounds i8, ptr %level, i64 106
  store i16 %sub744, ptr %arrayidx746, align 2
  %or7491291 = or i16 %or7351290, %sub744
  %arrayidx753 = getelementptr inbounds i8, ptr %p_src, i64 71
  %108 = load i8, ptr %arrayidx753, align 1
  %conv754 = zext i8 %108 to i16
  %arrayidx756 = getelementptr inbounds i8, ptr %p_dst, i64 135
  %109 = load i8, ptr %arrayidx756, align 1
  %conv757 = zext i8 %109 to i16
  %sub758 = sub nsw i16 %conv754, %conv757
  %arrayidx760 = getelementptr inbounds i8, ptr %level, i64 108
  store i16 %sub758, ptr %arrayidx760, align 2
  %or7631292 = or i16 %or7491291, %sub758
  %arrayidx767 = getelementptr inbounds i8, ptr %p_src, i64 86
  %110 = load i8, ptr %arrayidx767, align 1
  %conv768 = zext i8 %110 to i16
  %arrayidx770 = getelementptr inbounds i8, ptr %p_dst, i64 166
  %111 = load i8, ptr %arrayidx770, align 1
  %conv771 = zext i8 %111 to i16
  %sub772 = sub nsw i16 %conv768, %conv771
  %arrayidx774 = getelementptr inbounds i8, ptr %level, i64 110
  store i16 %sub772, ptr %arrayidx774, align 2
  %or7771293 = or i16 %or7631292, %sub772
  %arrayidx781 = getelementptr inbounds i8, ptr %p_src, i64 101
  %112 = load i8, ptr %arrayidx781, align 1
  %conv782 = zext i8 %112 to i16
  %arrayidx784 = getelementptr inbounds i8, ptr %p_dst, i64 197
  %113 = load i8, ptr %arrayidx784, align 1
  %conv785 = zext i8 %113 to i16
  %sub786 = sub nsw i16 %conv782, %conv785
  %arrayidx788 = getelementptr inbounds i8, ptr %level, i64 112
  store i16 %sub786, ptr %arrayidx788, align 2
  %or7911294 = or i16 %or7771293, %sub786
  %arrayidx795 = getelementptr inbounds i8, ptr %p_src, i64 116
  %114 = load i8, ptr %arrayidx795, align 1
  %conv796 = zext i8 %114 to i16
  %arrayidx798 = getelementptr inbounds i8, ptr %p_dst, i64 228
  %115 = load i8, ptr %arrayidx798, align 1
  %conv799 = zext i8 %115 to i16
  %sub800 = sub nsw i16 %conv796, %conv799
  %arrayidx802 = getelementptr inbounds i8, ptr %level, i64 114
  store i16 %sub800, ptr %arrayidx802, align 2
  %or8051295 = or i16 %or7911294, %sub800
  %arrayidx809 = getelementptr inbounds i8, ptr %p_src, i64 117
  %116 = load i8, ptr %arrayidx809, align 1
  %conv810 = zext i8 %116 to i16
  %arrayidx812 = getelementptr inbounds i8, ptr %p_dst, i64 229
  %117 = load i8, ptr %arrayidx812, align 1
  %conv813 = zext i8 %117 to i16
  %sub814 = sub nsw i16 %conv810, %conv813
  %arrayidx816 = getelementptr inbounds i8, ptr %level, i64 116
  store i16 %sub814, ptr %arrayidx816, align 2
  %or8191296 = or i16 %or8051295, %sub814
  %arrayidx823 = getelementptr inbounds i8, ptr %p_src, i64 102
  %118 = load i8, ptr %arrayidx823, align 1
  %conv824 = zext i8 %118 to i16
  %arrayidx826 = getelementptr inbounds i8, ptr %p_dst, i64 198
  %119 = load i8, ptr %arrayidx826, align 1
  %conv827 = zext i8 %119 to i16
  %sub828 = sub nsw i16 %conv824, %conv827
  %arrayidx830 = getelementptr inbounds i8, ptr %level, i64 118
  store i16 %sub828, ptr %arrayidx830, align 2
  %or8331297 = or i16 %or8191296, %sub828
  %arrayidx837 = getelementptr inbounds i8, ptr %p_src, i64 87
  %120 = load i8, ptr %arrayidx837, align 1
  %conv838 = zext i8 %120 to i16
  %arrayidx840 = getelementptr inbounds i8, ptr %p_dst, i64 167
  %121 = load i8, ptr %arrayidx840, align 1
  %conv841 = zext i8 %121 to i16
  %sub842 = sub nsw i16 %conv838, %conv841
  %arrayidx844 = getelementptr inbounds i8, ptr %level, i64 120
  store i16 %sub842, ptr %arrayidx844, align 2
  %or8471298 = or i16 %or8331297, %sub842
  %arrayidx851 = getelementptr inbounds i8, ptr %p_src, i64 103
  %122 = load i8, ptr %arrayidx851, align 1
  %conv852 = zext i8 %122 to i16
  %arrayidx854 = getelementptr inbounds i8, ptr %p_dst, i64 199
  %123 = load i8, ptr %arrayidx854, align 1
  %conv855 = zext i8 %123 to i16
  %sub856 = sub nsw i16 %conv852, %conv855
  %arrayidx858 = getelementptr inbounds i8, ptr %level, i64 122
  store i16 %sub856, ptr %arrayidx858, align 2
  %or8611299 = or i16 %or8471298, %sub856
  %arrayidx865 = getelementptr inbounds i8, ptr %p_src, i64 118
  %124 = load i8, ptr %arrayidx865, align 1
  %conv866 = zext i8 %124 to i16
  %arrayidx868 = getelementptr inbounds i8, ptr %p_dst, i64 230
  %125 = load i8, ptr %arrayidx868, align 1
  %conv869 = zext i8 %125 to i16
  %sub870 = sub nsw i16 %conv866, %conv869
  %arrayidx872 = getelementptr inbounds i8, ptr %level, i64 124
  store i16 %sub870, ptr %arrayidx872, align 2
  %or8751300 = or i16 %or8611299, %sub870
  %arrayidx879 = getelementptr inbounds i8, ptr %p_src, i64 119
  %126 = load i8, ptr %arrayidx879, align 1
  %conv880 = zext i8 %126 to i16
  %arrayidx882 = getelementptr inbounds i8, ptr %p_dst, i64 231
  %127 = load i8, ptr %arrayidx882, align 1
  %conv883 = zext i8 %127 to i16
  %sub884 = sub nsw i16 %conv880, %conv883
  %arrayidx886 = getelementptr inbounds i8, ptr %level, i64 126
  store i16 %sub884, ptr %arrayidx886, align 2
  %or8891301 = or i16 %or8751300, %sub884
  %128 = load i64, ptr %p_src, align 8
  store i64 %128, ptr %p_dst, align 8
  %129 = load i64, ptr %arrayidx25, align 8
  store i64 %129, ptr %arrayidx28, align 8
  %130 = load i64, ptr %arrayidx39, align 8
  store i64 %130, ptr %arrayidx42, align 8
  %131 = load i64, ptr %arrayidx123, align 8
  store i64 %131, ptr %arrayidx126, align 8
  %132 = load i64, ptr %arrayidx137, align 8
  store i64 %132, ptr %arrayidx140, align 8
  %133 = load i64, ptr %arrayidx277, align 8
  store i64 %133, ptr %arrayidx280, align 8
  %134 = load i64, ptr %arrayidx291, align 8
  store i64 %134, ptr %arrayidx294, align 8
  %135 = load i64, ptr %arrayidx487, align 8
  store i64 %135, ptr %arrayidx490, align 8
  %tobool = icmp ne i16 %or8891301, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @zigzag_sub_4x4_frame(ptr nocapture noundef writeonly %level, ptr nocapture noundef readonly %p_src, ptr nocapture noundef %p_dst) #1 {
entry:
  %0 = load i8, ptr %p_src, align 1
  %conv = zext i8 %0 to i16
  %1 = load i8, ptr %p_dst, align 1
  %conv3 = zext i8 %1 to i16
  %sub = sub nsw i16 %conv, %conv3
  store i16 %sub, ptr %level, align 2
  %arrayidx11 = getelementptr inbounds i8, ptr %p_src, i64 1
  %2 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %2 to i16
  %arrayidx14 = getelementptr inbounds i8, ptr %p_dst, i64 1
  %3 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %3 to i16
  %sub16 = sub nsw i16 %conv12, %conv15
  %arrayidx18 = getelementptr inbounds i8, ptr %level, i64 2
  store i16 %sub16, ptr %arrayidx18, align 2
  %or21311 = or i16 %sub16, %sub
  %arrayidx25 = getelementptr inbounds i8, ptr %p_src, i64 16
  %4 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %4 to i16
  %arrayidx28 = getelementptr inbounds i8, ptr %p_dst, i64 32
  %5 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %5 to i16
  %sub30 = sub nsw i16 %conv26, %conv29
  %arrayidx32 = getelementptr inbounds i8, ptr %level, i64 4
  store i16 %sub30, ptr %arrayidx32, align 2
  %or35312 = or i16 %or21311, %sub30
  %arrayidx39 = getelementptr inbounds i8, ptr %p_src, i64 32
  %6 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %6 to i16
  %arrayidx42 = getelementptr inbounds i8, ptr %p_dst, i64 64
  %7 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %7 to i16
  %sub44 = sub nsw i16 %conv40, %conv43
  %arrayidx46 = getelementptr inbounds i8, ptr %level, i64 6
  store i16 %sub44, ptr %arrayidx46, align 2
  %or49313 = or i16 %or35312, %sub44
  %arrayidx53 = getelementptr inbounds i8, ptr %p_src, i64 17
  %8 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %8 to i16
  %arrayidx56 = getelementptr inbounds i8, ptr %p_dst, i64 33
  %9 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %9 to i16
  %sub58 = sub nsw i16 %conv54, %conv57
  %arrayidx60 = getelementptr inbounds i8, ptr %level, i64 8
  store i16 %sub58, ptr %arrayidx60, align 2
  %or63314 = or i16 %or49313, %sub58
  %arrayidx67 = getelementptr inbounds i8, ptr %p_src, i64 2
  %10 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %10 to i16
  %arrayidx70 = getelementptr inbounds i8, ptr %p_dst, i64 2
  %11 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %11 to i16
  %sub72 = sub nsw i16 %conv68, %conv71
  %arrayidx74 = getelementptr inbounds i8, ptr %level, i64 10
  store i16 %sub72, ptr %arrayidx74, align 2
  %or77315 = or i16 %or63314, %sub72
  %arrayidx81 = getelementptr inbounds i8, ptr %p_src, i64 3
  %12 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %12 to i16
  %arrayidx84 = getelementptr inbounds i8, ptr %p_dst, i64 3
  %13 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %13 to i16
  %sub86 = sub nsw i16 %conv82, %conv85
  %arrayidx88 = getelementptr inbounds i8, ptr %level, i64 12
  store i16 %sub86, ptr %arrayidx88, align 2
  %or91316 = or i16 %or77315, %sub86
  %arrayidx95 = getelementptr inbounds i8, ptr %p_src, i64 18
  %14 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %14 to i16
  %arrayidx98 = getelementptr inbounds i8, ptr %p_dst, i64 34
  %15 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %15 to i16
  %sub100 = sub nsw i16 %conv96, %conv99
  %arrayidx102 = getelementptr inbounds i8, ptr %level, i64 14
  store i16 %sub100, ptr %arrayidx102, align 2
  %or105317 = or i16 %or91316, %sub100
  %arrayidx109 = getelementptr inbounds i8, ptr %p_src, i64 33
  %16 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %16 to i16
  %arrayidx112 = getelementptr inbounds i8, ptr %p_dst, i64 65
  %17 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %17 to i16
  %sub114 = sub nsw i16 %conv110, %conv113
  %arrayidx116 = getelementptr inbounds i8, ptr %level, i64 16
  store i16 %sub114, ptr %arrayidx116, align 2
  %or119318 = or i16 %or105317, %sub114
  %arrayidx123 = getelementptr inbounds i8, ptr %p_src, i64 48
  %18 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %18 to i16
  %arrayidx126 = getelementptr inbounds i8, ptr %p_dst, i64 96
  %19 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %19 to i16
  %sub128 = sub nsw i16 %conv124, %conv127
  %arrayidx130 = getelementptr inbounds i8, ptr %level, i64 18
  store i16 %sub128, ptr %arrayidx130, align 2
  %or133319 = or i16 %or119318, %sub128
  %arrayidx137 = getelementptr inbounds i8, ptr %p_src, i64 49
  %20 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %20 to i16
  %arrayidx140 = getelementptr inbounds i8, ptr %p_dst, i64 97
  %21 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %21 to i16
  %sub142 = sub nsw i16 %conv138, %conv141
  %arrayidx144 = getelementptr inbounds i8, ptr %level, i64 20
  store i16 %sub142, ptr %arrayidx144, align 2
  %or147320 = or i16 %or133319, %sub142
  %arrayidx151 = getelementptr inbounds i8, ptr %p_src, i64 34
  %22 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %22 to i16
  %arrayidx154 = getelementptr inbounds i8, ptr %p_dst, i64 66
  %23 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %23 to i16
  %sub156 = sub nsw i16 %conv152, %conv155
  %arrayidx158 = getelementptr inbounds i8, ptr %level, i64 22
  store i16 %sub156, ptr %arrayidx158, align 2
  %or161321 = or i16 %or147320, %sub156
  %arrayidx165 = getelementptr inbounds i8, ptr %p_src, i64 19
  %24 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %24 to i16
  %arrayidx168 = getelementptr inbounds i8, ptr %p_dst, i64 35
  %25 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %25 to i16
  %sub170 = sub nsw i16 %conv166, %conv169
  %arrayidx172 = getelementptr inbounds i8, ptr %level, i64 24
  store i16 %sub170, ptr %arrayidx172, align 2
  %or175322 = or i16 %or161321, %sub170
  %arrayidx179 = getelementptr inbounds i8, ptr %p_src, i64 35
  %26 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %26 to i16
  %arrayidx182 = getelementptr inbounds i8, ptr %p_dst, i64 67
  %27 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %27 to i16
  %sub184 = sub nsw i16 %conv180, %conv183
  %arrayidx186 = getelementptr inbounds i8, ptr %level, i64 26
  store i16 %sub184, ptr %arrayidx186, align 2
  %or189323 = or i16 %or175322, %sub184
  %arrayidx193 = getelementptr inbounds i8, ptr %p_src, i64 50
  %28 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %28 to i16
  %arrayidx196 = getelementptr inbounds i8, ptr %p_dst, i64 98
  %29 = load i8, ptr %arrayidx196, align 1
  %conv197 = zext i8 %29 to i16
  %sub198 = sub nsw i16 %conv194, %conv197
  %arrayidx200 = getelementptr inbounds i8, ptr %level, i64 28
  store i16 %sub198, ptr %arrayidx200, align 2
  %or203324 = or i16 %or189323, %sub198
  %arrayidx207 = getelementptr inbounds i8, ptr %p_src, i64 51
  %30 = load i8, ptr %arrayidx207, align 1
  %conv208 = zext i8 %30 to i16
  %arrayidx210 = getelementptr inbounds i8, ptr %p_dst, i64 99
  %31 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %31 to i16
  %sub212 = sub nsw i16 %conv208, %conv211
  %arrayidx214 = getelementptr inbounds i8, ptr %level, i64 30
  store i16 %sub212, ptr %arrayidx214, align 2
  %or217325 = or i16 %or203324, %sub212
  %32 = load i32, ptr %p_src, align 4
  store i32 %32, ptr %p_dst, align 4
  %33 = load i32, ptr %arrayidx25, align 4
  store i32 %33, ptr %arrayidx28, align 4
  %34 = load i32, ptr %arrayidx39, align 4
  store i32 %34, ptr %arrayidx42, align 4
  %35 = load i32, ptr %arrayidx123, align 4
  store i32 %35, ptr %arrayidx126, align 4
  %tobool = icmp ne i16 %or217325, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @zigzag_sub_4x4ac_frame(ptr nocapture noundef writeonly %level, ptr nocapture noundef readonly %p_src, ptr nocapture noundef %p_dst, ptr nocapture noundef writeonly %dc) #1 {
entry:
  %0 = load i8, ptr %p_src, align 1
  %conv = zext i8 %0 to i16
  %1 = load i8, ptr %p_dst, align 1
  %conv3 = zext i8 %1 to i16
  %sub = sub nsw i16 %conv, %conv3
  store i16 %sub, ptr %dc, align 2
  store i16 0, ptr %level, align 2
  %arrayidx9 = getelementptr inbounds i8, ptr %p_src, i64 1
  %2 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %2 to i16
  %arrayidx12 = getelementptr inbounds i8, ptr %p_dst, i64 1
  %3 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %3 to i16
  %sub14 = sub nsw i16 %conv10, %conv13
  %arrayidx16 = getelementptr inbounds i8, ptr %level, i64 2
  store i16 %sub14, ptr %arrayidx16, align 2
  %arrayidx22 = getelementptr inbounds i8, ptr %p_src, i64 16
  %4 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %4 to i16
  %arrayidx25 = getelementptr inbounds i8, ptr %p_dst, i64 32
  %5 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %5 to i16
  %sub27 = sub nsw i16 %conv23, %conv26
  %arrayidx29 = getelementptr inbounds i8, ptr %level, i64 4
  store i16 %sub27, ptr %arrayidx29, align 2
  %or32306 = or i16 %sub27, %sub14
  %arrayidx36 = getelementptr inbounds i8, ptr %p_src, i64 32
  %6 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %6 to i16
  %arrayidx39 = getelementptr inbounds i8, ptr %p_dst, i64 64
  %7 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %7 to i16
  %sub41 = sub nsw i16 %conv37, %conv40
  %arrayidx43 = getelementptr inbounds i8, ptr %level, i64 6
  store i16 %sub41, ptr %arrayidx43, align 2
  %or46307 = or i16 %or32306, %sub41
  %arrayidx50 = getelementptr inbounds i8, ptr %p_src, i64 17
  %8 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %8 to i16
  %arrayidx53 = getelementptr inbounds i8, ptr %p_dst, i64 33
  %9 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %9 to i16
  %sub55 = sub nsw i16 %conv51, %conv54
  %arrayidx57 = getelementptr inbounds i8, ptr %level, i64 8
  store i16 %sub55, ptr %arrayidx57, align 2
  %or60308 = or i16 %or46307, %sub55
  %arrayidx64 = getelementptr inbounds i8, ptr %p_src, i64 2
  %10 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %10 to i16
  %arrayidx67 = getelementptr inbounds i8, ptr %p_dst, i64 2
  %11 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %11 to i16
  %sub69 = sub nsw i16 %conv65, %conv68
  %arrayidx71 = getelementptr inbounds i8, ptr %level, i64 10
  store i16 %sub69, ptr %arrayidx71, align 2
  %or74309 = or i16 %or60308, %sub69
  %arrayidx78 = getelementptr inbounds i8, ptr %p_src, i64 3
  %12 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %12 to i16
  %arrayidx81 = getelementptr inbounds i8, ptr %p_dst, i64 3
  %13 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %13 to i16
  %sub83 = sub nsw i16 %conv79, %conv82
  %arrayidx85 = getelementptr inbounds i8, ptr %level, i64 12
  store i16 %sub83, ptr %arrayidx85, align 2
  %or88310 = or i16 %or74309, %sub83
  %arrayidx92 = getelementptr inbounds i8, ptr %p_src, i64 18
  %14 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %14 to i16
  %arrayidx95 = getelementptr inbounds i8, ptr %p_dst, i64 34
  %15 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %15 to i16
  %sub97 = sub nsw i16 %conv93, %conv96
  %arrayidx99 = getelementptr inbounds i8, ptr %level, i64 14
  store i16 %sub97, ptr %arrayidx99, align 2
  %or102311 = or i16 %or88310, %sub97
  %arrayidx106 = getelementptr inbounds i8, ptr %p_src, i64 33
  %16 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %16 to i16
  %arrayidx109 = getelementptr inbounds i8, ptr %p_dst, i64 65
  %17 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %17 to i16
  %sub111 = sub nsw i16 %conv107, %conv110
  %arrayidx113 = getelementptr inbounds i8, ptr %level, i64 16
  store i16 %sub111, ptr %arrayidx113, align 2
  %or116312 = or i16 %or102311, %sub111
  %arrayidx120 = getelementptr inbounds i8, ptr %p_src, i64 48
  %18 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %18 to i16
  %arrayidx123 = getelementptr inbounds i8, ptr %p_dst, i64 96
  %19 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %19 to i16
  %sub125 = sub nsw i16 %conv121, %conv124
  %arrayidx127 = getelementptr inbounds i8, ptr %level, i64 18
  store i16 %sub125, ptr %arrayidx127, align 2
  %or130313 = or i16 %or116312, %sub125
  %arrayidx134 = getelementptr inbounds i8, ptr %p_src, i64 49
  %20 = load i8, ptr %arrayidx134, align 1
  %conv135 = zext i8 %20 to i16
  %arrayidx137 = getelementptr inbounds i8, ptr %p_dst, i64 97
  %21 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %21 to i16
  %sub139 = sub nsw i16 %conv135, %conv138
  %arrayidx141 = getelementptr inbounds i8, ptr %level, i64 20
  store i16 %sub139, ptr %arrayidx141, align 2
  %or144314 = or i16 %or130313, %sub139
  %arrayidx148 = getelementptr inbounds i8, ptr %p_src, i64 34
  %22 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %22 to i16
  %arrayidx151 = getelementptr inbounds i8, ptr %p_dst, i64 66
  %23 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %23 to i16
  %sub153 = sub nsw i16 %conv149, %conv152
  %arrayidx155 = getelementptr inbounds i8, ptr %level, i64 22
  store i16 %sub153, ptr %arrayidx155, align 2
  %or158315 = or i16 %or144314, %sub153
  %arrayidx162 = getelementptr inbounds i8, ptr %p_src, i64 19
  %24 = load i8, ptr %arrayidx162, align 1
  %conv163 = zext i8 %24 to i16
  %arrayidx165 = getelementptr inbounds i8, ptr %p_dst, i64 35
  %25 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %25 to i16
  %sub167 = sub nsw i16 %conv163, %conv166
  %arrayidx169 = getelementptr inbounds i8, ptr %level, i64 24
  store i16 %sub167, ptr %arrayidx169, align 2
  %or172316 = or i16 %or158315, %sub167
  %arrayidx176 = getelementptr inbounds i8, ptr %p_src, i64 35
  %26 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %26 to i16
  %arrayidx179 = getelementptr inbounds i8, ptr %p_dst, i64 67
  %27 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %27 to i16
  %sub181 = sub nsw i16 %conv177, %conv180
  %arrayidx183 = getelementptr inbounds i8, ptr %level, i64 26
  store i16 %sub181, ptr %arrayidx183, align 2
  %or186317 = or i16 %or172316, %sub181
  %arrayidx190 = getelementptr inbounds i8, ptr %p_src, i64 50
  %28 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %28 to i16
  %arrayidx193 = getelementptr inbounds i8, ptr %p_dst, i64 98
  %29 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %29 to i16
  %sub195 = sub nsw i16 %conv191, %conv194
  %arrayidx197 = getelementptr inbounds i8, ptr %level, i64 28
  store i16 %sub195, ptr %arrayidx197, align 2
  %or200318 = or i16 %or186317, %sub195
  %arrayidx204 = getelementptr inbounds i8, ptr %p_src, i64 51
  %30 = load i8, ptr %arrayidx204, align 1
  %conv205 = zext i8 %30 to i16
  %arrayidx207 = getelementptr inbounds i8, ptr %p_dst, i64 99
  %31 = load i8, ptr %arrayidx207, align 1
  %conv208 = zext i8 %31 to i16
  %sub209 = sub nsw i16 %conv205, %conv208
  %arrayidx211 = getelementptr inbounds i8, ptr %level, i64 30
  store i16 %sub209, ptr %arrayidx211, align 2
  %or214319 = or i16 %or200318, %sub209
  %32 = load i32, ptr %p_src, align 4
  store i32 %32, ptr %p_dst, align 4
  %33 = load i32, ptr %arrayidx22, align 4
  store i32 %33, ptr %arrayidx25, align 4
  %34 = load i32, ptr %arrayidx36, align 4
  store i32 %34, ptr %arrayidx39, align 4
  %35 = load i32, ptr %arrayidx120, align 4
  store i32 %35, ptr %arrayidx123, align 4
  %tobool = icmp ne i16 %or214319, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @zigzag_interleave_8x8_cavlc(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, ptr nocapture noundef writeonly %nnz) #1 {
entry:
  %0 = load i16, ptr %src, align 2
  store i16 %0, ptr %dst, align 2
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 8
  %1 = load i16, ptr %arrayidx.1, align 2
  %or.152 = or i16 %0, %1
  %arrayidx12.1 = getelementptr inbounds i8, ptr %dst, i64 2
  store i16 %1, ptr %arrayidx12.1, align 2
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 16
  %2 = load i16, ptr %arrayidx.2, align 2
  %or.253 = or i16 %or.152, %2
  %arrayidx12.2 = getelementptr inbounds i8, ptr %dst, i64 4
  store i16 %2, ptr %arrayidx12.2, align 2
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 24
  %3 = load i16, ptr %arrayidx.3, align 2
  %or.354 = or i16 %or.253, %3
  %arrayidx12.3 = getelementptr inbounds i8, ptr %dst, i64 6
  store i16 %3, ptr %arrayidx12.3, align 2
  %arrayidx.4 = getelementptr inbounds i8, ptr %src, i64 32
  %4 = load i16, ptr %arrayidx.4, align 2
  %or.455 = or i16 %or.354, %4
  %arrayidx12.4 = getelementptr inbounds i8, ptr %dst, i64 8
  store i16 %4, ptr %arrayidx12.4, align 2
  %arrayidx.5 = getelementptr inbounds i8, ptr %src, i64 40
  %5 = load i16, ptr %arrayidx.5, align 2
  %or.556 = or i16 %or.455, %5
  %arrayidx12.5 = getelementptr inbounds i8, ptr %dst, i64 10
  store i16 %5, ptr %arrayidx12.5, align 2
  %arrayidx.6 = getelementptr inbounds i8, ptr %src, i64 48
  %6 = load i16, ptr %arrayidx.6, align 2
  %or.657 = or i16 %or.556, %6
  %arrayidx12.6 = getelementptr inbounds i8, ptr %dst, i64 12
  store i16 %6, ptr %arrayidx12.6, align 2
  %arrayidx.7 = getelementptr inbounds i8, ptr %src, i64 56
  %7 = load i16, ptr %arrayidx.7, align 2
  %or.758 = or i16 %or.657, %7
  %arrayidx12.7 = getelementptr inbounds i8, ptr %dst, i64 14
  store i16 %7, ptr %arrayidx12.7, align 2
  %arrayidx.8 = getelementptr inbounds i8, ptr %src, i64 64
  %8 = load i16, ptr %arrayidx.8, align 2
  %or.859 = or i16 %or.758, %8
  %arrayidx12.8 = getelementptr inbounds i8, ptr %dst, i64 16
  store i16 %8, ptr %arrayidx12.8, align 2
  %arrayidx.9 = getelementptr inbounds i8, ptr %src, i64 72
  %9 = load i16, ptr %arrayidx.9, align 2
  %or.960 = or i16 %or.859, %9
  %arrayidx12.9 = getelementptr inbounds i8, ptr %dst, i64 18
  store i16 %9, ptr %arrayidx12.9, align 2
  %arrayidx.10 = getelementptr inbounds i8, ptr %src, i64 80
  %10 = load i16, ptr %arrayidx.10, align 2
  %or.1061 = or i16 %or.960, %10
  %arrayidx12.10 = getelementptr inbounds i8, ptr %dst, i64 20
  store i16 %10, ptr %arrayidx12.10, align 2
  %arrayidx.11 = getelementptr inbounds i8, ptr %src, i64 88
  %11 = load i16, ptr %arrayidx.11, align 2
  %or.1162 = or i16 %or.1061, %11
  %arrayidx12.11 = getelementptr inbounds i8, ptr %dst, i64 22
  store i16 %11, ptr %arrayidx12.11, align 2
  %arrayidx.12 = getelementptr inbounds i8, ptr %src, i64 96
  %12 = load i16, ptr %arrayidx.12, align 2
  %or.1263 = or i16 %or.1162, %12
  %arrayidx12.12 = getelementptr inbounds i8, ptr %dst, i64 24
  store i16 %12, ptr %arrayidx12.12, align 2
  %arrayidx.13 = getelementptr inbounds i8, ptr %src, i64 104
  %13 = load i16, ptr %arrayidx.13, align 2
  %or.1364 = or i16 %or.1263, %13
  %arrayidx12.13 = getelementptr inbounds i8, ptr %dst, i64 26
  store i16 %13, ptr %arrayidx12.13, align 2
  %arrayidx.14 = getelementptr inbounds i8, ptr %src, i64 112
  %14 = load i16, ptr %arrayidx.14, align 2
  %or.1465 = or i16 %or.1364, %14
  %arrayidx12.14 = getelementptr inbounds i8, ptr %dst, i64 28
  store i16 %14, ptr %arrayidx12.14, align 2
  %arrayidx.15 = getelementptr inbounds i8, ptr %src, i64 120
  %15 = load i16, ptr %arrayidx.15, align 2
  %or.1566 = or i16 %or.1465, %15
  %arrayidx12.15 = getelementptr inbounds i8, ptr %dst, i64 30
  store i16 %15, ptr %arrayidx12.15, align 2
  %tobool = icmp ne i16 %or.1566, 0
  %conv14 = zext i1 %tobool to i8
  store i8 %conv14, ptr %nnz, align 1
  %arrayidx.143 = getelementptr inbounds i8, ptr %src, i64 2
  %16 = load i16, ptr %arrayidx.143, align 2
  %arrayidx12.145 = getelementptr inbounds i8, ptr %dst, i64 32
  store i16 %16, ptr %arrayidx12.145, align 2
  %arrayidx.1.1 = getelementptr inbounds i8, ptr %src, i64 10
  %17 = load i16, ptr %arrayidx.1.1, align 2
  %or.1.167 = or i16 %16, %17
  %arrayidx12.1.1 = getelementptr inbounds i8, ptr %dst, i64 34
  store i16 %17, ptr %arrayidx12.1.1, align 2
  %arrayidx.2.1 = getelementptr inbounds i8, ptr %src, i64 18
  %18 = load i16, ptr %arrayidx.2.1, align 2
  %or.2.168 = or i16 %or.1.167, %18
  %arrayidx12.2.1 = getelementptr inbounds i8, ptr %dst, i64 36
  store i16 %18, ptr %arrayidx12.2.1, align 2
  %arrayidx.3.1 = getelementptr inbounds i8, ptr %src, i64 26
  %19 = load i16, ptr %arrayidx.3.1, align 2
  %or.3.169 = or i16 %or.2.168, %19
  %arrayidx12.3.1 = getelementptr inbounds i8, ptr %dst, i64 38
  store i16 %19, ptr %arrayidx12.3.1, align 2
  %arrayidx.4.1 = getelementptr inbounds i8, ptr %src, i64 34
  %20 = load i16, ptr %arrayidx.4.1, align 2
  %or.4.170 = or i16 %or.3.169, %20
  %arrayidx12.4.1 = getelementptr inbounds i8, ptr %dst, i64 40
  store i16 %20, ptr %arrayidx12.4.1, align 2
  %arrayidx.5.1 = getelementptr inbounds i8, ptr %src, i64 42
  %21 = load i16, ptr %arrayidx.5.1, align 2
  %or.5.171 = or i16 %or.4.170, %21
  %arrayidx12.5.1 = getelementptr inbounds i8, ptr %dst, i64 42
  store i16 %21, ptr %arrayidx12.5.1, align 2
  %arrayidx.6.1 = getelementptr inbounds i8, ptr %src, i64 50
  %22 = load i16, ptr %arrayidx.6.1, align 2
  %or.6.172 = or i16 %or.5.171, %22
  %arrayidx12.6.1 = getelementptr inbounds i8, ptr %dst, i64 44
  store i16 %22, ptr %arrayidx12.6.1, align 2
  %arrayidx.7.1 = getelementptr inbounds i8, ptr %src, i64 58
  %23 = load i16, ptr %arrayidx.7.1, align 2
  %or.7.173 = or i16 %or.6.172, %23
  %arrayidx12.7.1 = getelementptr inbounds i8, ptr %dst, i64 46
  store i16 %23, ptr %arrayidx12.7.1, align 2
  %arrayidx.8.1 = getelementptr inbounds i8, ptr %src, i64 66
  %24 = load i16, ptr %arrayidx.8.1, align 2
  %or.8.174 = or i16 %or.7.173, %24
  %arrayidx12.8.1 = getelementptr inbounds i8, ptr %dst, i64 48
  store i16 %24, ptr %arrayidx12.8.1, align 2
  %arrayidx.9.1 = getelementptr inbounds i8, ptr %src, i64 74
  %25 = load i16, ptr %arrayidx.9.1, align 2
  %or.9.175 = or i16 %or.8.174, %25
  %arrayidx12.9.1 = getelementptr inbounds i8, ptr %dst, i64 50
  store i16 %25, ptr %arrayidx12.9.1, align 2
  %arrayidx.10.1 = getelementptr inbounds i8, ptr %src, i64 82
  %26 = load i16, ptr %arrayidx.10.1, align 2
  %or.10.176 = or i16 %or.9.175, %26
  %arrayidx12.10.1 = getelementptr inbounds i8, ptr %dst, i64 52
  store i16 %26, ptr %arrayidx12.10.1, align 2
  %arrayidx.11.1 = getelementptr inbounds i8, ptr %src, i64 90
  %27 = load i16, ptr %arrayidx.11.1, align 2
  %or.11.177 = or i16 %or.10.176, %27
  %arrayidx12.11.1 = getelementptr inbounds i8, ptr %dst, i64 54
  store i16 %27, ptr %arrayidx12.11.1, align 2
  %arrayidx.12.1 = getelementptr inbounds i8, ptr %src, i64 98
  %28 = load i16, ptr %arrayidx.12.1, align 2
  %or.12.178 = or i16 %or.11.177, %28
  %arrayidx12.12.1 = getelementptr inbounds i8, ptr %dst, i64 56
  store i16 %28, ptr %arrayidx12.12.1, align 2
  %arrayidx.13.1 = getelementptr inbounds i8, ptr %src, i64 106
  %29 = load i16, ptr %arrayidx.13.1, align 2
  %or.13.179 = or i16 %or.12.178, %29
  %arrayidx12.13.1 = getelementptr inbounds i8, ptr %dst, i64 58
  store i16 %29, ptr %arrayidx12.13.1, align 2
  %arrayidx.14.1 = getelementptr inbounds i8, ptr %src, i64 114
  %30 = load i16, ptr %arrayidx.14.1, align 2
  %or.14.180 = or i16 %or.13.179, %30
  %arrayidx12.14.1 = getelementptr inbounds i8, ptr %dst, i64 60
  store i16 %30, ptr %arrayidx12.14.1, align 2
  %arrayidx.15.1 = getelementptr inbounds i8, ptr %src, i64 122
  %31 = load i16, ptr %arrayidx.15.1, align 2
  %or.15.181 = or i16 %or.14.180, %31
  %arrayidx12.15.1 = getelementptr inbounds i8, ptr %dst, i64 62
  store i16 %31, ptr %arrayidx12.15.1, align 2
  %tobool.1 = icmp ne i16 %or.15.181, 0
  %conv14.1 = zext i1 %tobool.1 to i8
  %arrayidx18.1 = getelementptr inbounds i8, ptr %nnz, i64 1
  store i8 %conv14.1, ptr %arrayidx18.1, align 1
  %arrayidx.246 = getelementptr inbounds i8, ptr %src, i64 4
  %32 = load i16, ptr %arrayidx.246, align 2
  %arrayidx12.248 = getelementptr inbounds i8, ptr %dst, i64 64
  store i16 %32, ptr %arrayidx12.248, align 2
  %arrayidx.1.2 = getelementptr inbounds i8, ptr %src, i64 12
  %33 = load i16, ptr %arrayidx.1.2, align 2
  %or.1.282 = or i16 %32, %33
  %arrayidx12.1.2 = getelementptr inbounds i8, ptr %dst, i64 66
  store i16 %33, ptr %arrayidx12.1.2, align 2
  %arrayidx.2.2 = getelementptr inbounds i8, ptr %src, i64 20
  %34 = load i16, ptr %arrayidx.2.2, align 2
  %or.2.283 = or i16 %or.1.282, %34
  %arrayidx12.2.2 = getelementptr inbounds i8, ptr %dst, i64 68
  store i16 %34, ptr %arrayidx12.2.2, align 2
  %arrayidx.3.2 = getelementptr inbounds i8, ptr %src, i64 28
  %35 = load i16, ptr %arrayidx.3.2, align 2
  %or.3.284 = or i16 %or.2.283, %35
  %arrayidx12.3.2 = getelementptr inbounds i8, ptr %dst, i64 70
  store i16 %35, ptr %arrayidx12.3.2, align 2
  %arrayidx.4.2 = getelementptr inbounds i8, ptr %src, i64 36
  %36 = load i16, ptr %arrayidx.4.2, align 2
  %or.4.285 = or i16 %or.3.284, %36
  %arrayidx12.4.2 = getelementptr inbounds i8, ptr %dst, i64 72
  store i16 %36, ptr %arrayidx12.4.2, align 2
  %arrayidx.5.2 = getelementptr inbounds i8, ptr %src, i64 44
  %37 = load i16, ptr %arrayidx.5.2, align 2
  %or.5.286 = or i16 %or.4.285, %37
  %arrayidx12.5.2 = getelementptr inbounds i8, ptr %dst, i64 74
  store i16 %37, ptr %arrayidx12.5.2, align 2
  %arrayidx.6.2 = getelementptr inbounds i8, ptr %src, i64 52
  %38 = load i16, ptr %arrayidx.6.2, align 2
  %or.6.287 = or i16 %or.5.286, %38
  %arrayidx12.6.2 = getelementptr inbounds i8, ptr %dst, i64 76
  store i16 %38, ptr %arrayidx12.6.2, align 2
  %arrayidx.7.2 = getelementptr inbounds i8, ptr %src, i64 60
  %39 = load i16, ptr %arrayidx.7.2, align 2
  %or.7.288 = or i16 %or.6.287, %39
  %arrayidx12.7.2 = getelementptr inbounds i8, ptr %dst, i64 78
  store i16 %39, ptr %arrayidx12.7.2, align 2
  %arrayidx.8.2 = getelementptr inbounds i8, ptr %src, i64 68
  %40 = load i16, ptr %arrayidx.8.2, align 2
  %or.8.289 = or i16 %or.7.288, %40
  %arrayidx12.8.2 = getelementptr inbounds i8, ptr %dst, i64 80
  store i16 %40, ptr %arrayidx12.8.2, align 2
  %arrayidx.9.2 = getelementptr inbounds i8, ptr %src, i64 76
  %41 = load i16, ptr %arrayidx.9.2, align 2
  %or.9.290 = or i16 %or.8.289, %41
  %arrayidx12.9.2 = getelementptr inbounds i8, ptr %dst, i64 82
  store i16 %41, ptr %arrayidx12.9.2, align 2
  %arrayidx.10.2 = getelementptr inbounds i8, ptr %src, i64 84
  %42 = load i16, ptr %arrayidx.10.2, align 2
  %or.10.291 = or i16 %or.9.290, %42
  %arrayidx12.10.2 = getelementptr inbounds i8, ptr %dst, i64 84
  store i16 %42, ptr %arrayidx12.10.2, align 2
  %arrayidx.11.2 = getelementptr inbounds i8, ptr %src, i64 92
  %43 = load i16, ptr %arrayidx.11.2, align 2
  %or.11.292 = or i16 %or.10.291, %43
  %arrayidx12.11.2 = getelementptr inbounds i8, ptr %dst, i64 86
  store i16 %43, ptr %arrayidx12.11.2, align 2
  %arrayidx.12.2 = getelementptr inbounds i8, ptr %src, i64 100
  %44 = load i16, ptr %arrayidx.12.2, align 2
  %or.12.293 = or i16 %or.11.292, %44
  %arrayidx12.12.2 = getelementptr inbounds i8, ptr %dst, i64 88
  store i16 %44, ptr %arrayidx12.12.2, align 2
  %arrayidx.13.2 = getelementptr inbounds i8, ptr %src, i64 108
  %45 = load i16, ptr %arrayidx.13.2, align 2
  %or.13.294 = or i16 %or.12.293, %45
  %arrayidx12.13.2 = getelementptr inbounds i8, ptr %dst, i64 90
  store i16 %45, ptr %arrayidx12.13.2, align 2
  %arrayidx.14.2 = getelementptr inbounds i8, ptr %src, i64 116
  %46 = load i16, ptr %arrayidx.14.2, align 2
  %or.14.295 = or i16 %or.13.294, %46
  %arrayidx12.14.2 = getelementptr inbounds i8, ptr %dst, i64 92
  store i16 %46, ptr %arrayidx12.14.2, align 2
  %arrayidx.15.2 = getelementptr inbounds i8, ptr %src, i64 124
  %47 = load i16, ptr %arrayidx.15.2, align 2
  %or.15.296 = or i16 %or.14.295, %47
  %arrayidx12.15.2 = getelementptr inbounds i8, ptr %dst, i64 94
  store i16 %47, ptr %arrayidx12.15.2, align 2
  %tobool.2 = icmp ne i16 %or.15.296, 0
  %conv14.2 = zext i1 %tobool.2 to i8
  %arrayidx18.2 = getelementptr inbounds i8, ptr %nnz, i64 8
  store i8 %conv14.2, ptr %arrayidx18.2, align 1
  %arrayidx.349 = getelementptr inbounds i8, ptr %src, i64 6
  %48 = load i16, ptr %arrayidx.349, align 2
  %arrayidx12.351 = getelementptr inbounds i8, ptr %dst, i64 96
  store i16 %48, ptr %arrayidx12.351, align 2
  %arrayidx.1.3 = getelementptr inbounds i8, ptr %src, i64 14
  %49 = load i16, ptr %arrayidx.1.3, align 2
  %or.1.397 = or i16 %48, %49
  %arrayidx12.1.3 = getelementptr inbounds i8, ptr %dst, i64 98
  store i16 %49, ptr %arrayidx12.1.3, align 2
  %arrayidx.2.3 = getelementptr inbounds i8, ptr %src, i64 22
  %50 = load i16, ptr %arrayidx.2.3, align 2
  %or.2.398 = or i16 %or.1.397, %50
  %arrayidx12.2.3 = getelementptr inbounds i8, ptr %dst, i64 100
  store i16 %50, ptr %arrayidx12.2.3, align 2
  %arrayidx.3.3 = getelementptr inbounds i8, ptr %src, i64 30
  %51 = load i16, ptr %arrayidx.3.3, align 2
  %or.3.399 = or i16 %or.2.398, %51
  %arrayidx12.3.3 = getelementptr inbounds i8, ptr %dst, i64 102
  store i16 %51, ptr %arrayidx12.3.3, align 2
  %arrayidx.4.3 = getelementptr inbounds i8, ptr %src, i64 38
  %52 = load i16, ptr %arrayidx.4.3, align 2
  %or.4.3100 = or i16 %or.3.399, %52
  %arrayidx12.4.3 = getelementptr inbounds i8, ptr %dst, i64 104
  store i16 %52, ptr %arrayidx12.4.3, align 2
  %arrayidx.5.3 = getelementptr inbounds i8, ptr %src, i64 46
  %53 = load i16, ptr %arrayidx.5.3, align 2
  %or.5.3101 = or i16 %or.4.3100, %53
  %arrayidx12.5.3 = getelementptr inbounds i8, ptr %dst, i64 106
  store i16 %53, ptr %arrayidx12.5.3, align 2
  %arrayidx.6.3 = getelementptr inbounds i8, ptr %src, i64 54
  %54 = load i16, ptr %arrayidx.6.3, align 2
  %or.6.3102 = or i16 %or.5.3101, %54
  %arrayidx12.6.3 = getelementptr inbounds i8, ptr %dst, i64 108
  store i16 %54, ptr %arrayidx12.6.3, align 2
  %arrayidx.7.3 = getelementptr inbounds i8, ptr %src, i64 62
  %55 = load i16, ptr %arrayidx.7.3, align 2
  %or.7.3103 = or i16 %or.6.3102, %55
  %arrayidx12.7.3 = getelementptr inbounds i8, ptr %dst, i64 110
  store i16 %55, ptr %arrayidx12.7.3, align 2
  %arrayidx.8.3 = getelementptr inbounds i8, ptr %src, i64 70
  %56 = load i16, ptr %arrayidx.8.3, align 2
  %or.8.3104 = or i16 %or.7.3103, %56
  %arrayidx12.8.3 = getelementptr inbounds i8, ptr %dst, i64 112
  store i16 %56, ptr %arrayidx12.8.3, align 2
  %arrayidx.9.3 = getelementptr inbounds i8, ptr %src, i64 78
  %57 = load i16, ptr %arrayidx.9.3, align 2
  %or.9.3105 = or i16 %or.8.3104, %57
  %arrayidx12.9.3 = getelementptr inbounds i8, ptr %dst, i64 114
  store i16 %57, ptr %arrayidx12.9.3, align 2
  %arrayidx.10.3 = getelementptr inbounds i8, ptr %src, i64 86
  %58 = load i16, ptr %arrayidx.10.3, align 2
  %or.10.3106 = or i16 %or.9.3105, %58
  %arrayidx12.10.3 = getelementptr inbounds i8, ptr %dst, i64 116
  store i16 %58, ptr %arrayidx12.10.3, align 2
  %arrayidx.11.3 = getelementptr inbounds i8, ptr %src, i64 94
  %59 = load i16, ptr %arrayidx.11.3, align 2
  %or.11.3107 = or i16 %or.10.3106, %59
  %arrayidx12.11.3 = getelementptr inbounds i8, ptr %dst, i64 118
  store i16 %59, ptr %arrayidx12.11.3, align 2
  %arrayidx.12.3 = getelementptr inbounds i8, ptr %src, i64 102
  %60 = load i16, ptr %arrayidx.12.3, align 2
  %or.12.3108 = or i16 %or.11.3107, %60
  %arrayidx12.12.3 = getelementptr inbounds i8, ptr %dst, i64 120
  store i16 %60, ptr %arrayidx12.12.3, align 2
  %arrayidx.13.3 = getelementptr inbounds i8, ptr %src, i64 110
  %61 = load i16, ptr %arrayidx.13.3, align 2
  %or.13.3109 = or i16 %or.12.3108, %61
  %arrayidx12.13.3 = getelementptr inbounds i8, ptr %dst, i64 122
  store i16 %61, ptr %arrayidx12.13.3, align 2
  %arrayidx.14.3 = getelementptr inbounds i8, ptr %src, i64 118
  %62 = load i16, ptr %arrayidx.14.3, align 2
  %or.14.3110 = or i16 %or.13.3109, %62
  %arrayidx12.14.3 = getelementptr inbounds i8, ptr %dst, i64 124
  store i16 %62, ptr %arrayidx12.14.3, align 2
  %arrayidx.15.3 = getelementptr inbounds i8, ptr %src, i64 126
  %63 = load i16, ptr %arrayidx.15.3, align 2
  %or.15.3111 = or i16 %or.14.3110, %63
  %arrayidx12.15.3 = getelementptr inbounds i8, ptr %dst, i64 126
  store i16 %63, ptr %arrayidx12.15.3, align 2
  %tobool.3 = icmp ne i16 %or.15.3111, 0
  %conv14.3 = zext i1 %tobool.3 to i8
  %arrayidx18.3 = getelementptr inbounds i8, ptr %nnz, i64 9
  store i8 %conv14.3, ptr %arrayidx18.3, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add4x4_idct_dc(ptr nocapture noundef %p_dst, i16 noundef signext %dc) unnamed_addr #5 {
entry:
  %conv = sext i16 %dc to i32
  %add = shl nsw i32 %conv, 10
  %0 = add nsw i32 %add, 32768
  %conv4 = ashr i32 %0, 16
  %1 = load <4 x i8>, ptr %p_dst, align 1
  %2 = zext <4 x i8> %1 to <4 x i32>
  %3 = insertelement <4 x i32> poison, i32 %conv4, i64 0
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> zeroinitializer
  %5 = add nsw <4 x i32> %4, %2
  %6 = icmp ult <4 x i32> %5, <i32 256, i32 256, i32 256, i32 256>
  %7 = icmp sgt <4 x i32> %5, zeroinitializer
  %8 = sext <4 x i1> %7 to <4 x i32>
  %9 = select <4 x i1> %6, <4 x i32> %5, <4 x i32> %8
  %10 = trunc <4 x i32> %9 to <4 x i8>
  store <4 x i8> %10, ptr %p_dst, align 1
  %add.ptr = getelementptr inbounds i8, ptr %p_dst, i64 32
  %11 = load <4 x i8>, ptr %add.ptr, align 1
  %12 = zext <4 x i8> %11 to <4 x i32>
  %13 = add nsw <4 x i32> %4, %12
  %14 = icmp ult <4 x i32> %13, <i32 256, i32 256, i32 256, i32 256>
  %15 = icmp sgt <4 x i32> %13, zeroinitializer
  %16 = sext <4 x i1> %15 to <4 x i32>
  %17 = select <4 x i1> %14, <4 x i32> %13, <4 x i32> %16
  %18 = trunc <4 x i32> %17 to <4 x i8>
  store <4 x i8> %18, ptr %add.ptr, align 1
  %add.ptr.1 = getelementptr inbounds i8, ptr %p_dst, i64 64
  %19 = load <4 x i8>, ptr %add.ptr.1, align 1
  %20 = zext <4 x i8> %19 to <4 x i32>
  %21 = add nsw <4 x i32> %4, %20
  %22 = icmp ult <4 x i32> %21, <i32 256, i32 256, i32 256, i32 256>
  %23 = icmp sgt <4 x i32> %21, zeroinitializer
  %24 = sext <4 x i1> %23 to <4 x i32>
  %25 = select <4 x i1> %22, <4 x i32> %21, <4 x i32> %24
  %26 = trunc <4 x i32> %25 to <4 x i8>
  store <4 x i8> %26, ptr %add.ptr.1, align 1
  %add.ptr.2 = getelementptr inbounds i8, ptr %p_dst, i64 96
  %27 = load <4 x i8>, ptr %add.ptr.2, align 1
  %28 = zext <4 x i8> %27 to <4 x i32>
  %29 = add nsw <4 x i32> %4, %28
  %30 = icmp ult <4 x i32> %29, <i32 256, i32 256, i32 256, i32 256>
  %31 = icmp sgt <4 x i32> %29, zeroinitializer
  %32 = sext <4 x i1> %31 to <4 x i32>
  %33 = select <4 x i1> %30, <4 x i32> %29, <4 x i32> %32
  %34 = trunc <4 x i32> %33 to <4 x i8>
  store <4 x i8> %34, ptr %add.ptr.2, align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !6, !7}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !6, !7}
!11 = distinct !{!11, !6, !7}
