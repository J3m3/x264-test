; ModuleID = 'x264_src/common/predict.c'
source_filename = "x264_src/common/predict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_16x16_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf) local_unnamed_addr #0 !dbg !109 {
entry:
    #dbg_value(i32 %cpu, !120, !DIExpression(), !122)
    #dbg_value(ptr %pf, !121, !DIExpression(), !122)
  store ptr @predict_16x16_v, ptr %pf, align 8, !dbg !123
  %arrayidx1 = getelementptr inbounds i8, ptr %pf, i64 8, !dbg !124
  store ptr @predict_16x16_h, ptr %arrayidx1, align 8, !dbg !125
  %arrayidx2 = getelementptr inbounds i8, ptr %pf, i64 16, !dbg !126
  store ptr @predict_16x16_dc, ptr %arrayidx2, align 8, !dbg !127
  %arrayidx3 = getelementptr inbounds i8, ptr %pf, i64 24, !dbg !128
  store ptr @predict_16x16_p, ptr %arrayidx3, align 8, !dbg !129
  %arrayidx4 = getelementptr inbounds i8, ptr %pf, i64 32, !dbg !130
  store ptr @predict_16x16_dc_left, ptr %arrayidx4, align 8, !dbg !131
  %arrayidx5 = getelementptr inbounds i8, ptr %pf, i64 40, !dbg !132
  store ptr @predict_16x16_dc_top, ptr %arrayidx5, align 8, !dbg !133
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 48, !dbg !134
  store ptr @predict_16x16_dc_128, ptr %arrayidx6, align 8, !dbg !135
  ret void, !dbg !136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_16x16_v(ptr nocapture noundef %src) #1 !dbg !137 {
entry:
    #dbg_value(ptr %src, !139, !DIExpression(), !146)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !147
  %0 = load i32, ptr %arrayidx, align 4, !dbg !147
    #dbg_value(i32 %0, !140, !DIExpression(), !146)
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -28, !dbg !148
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !148
    #dbg_value(i32 %1, !141, !DIExpression(), !146)
  %arrayidx2 = getelementptr inbounds i8, ptr %src, i64 -24, !dbg !149
  %2 = load i32, ptr %arrayidx2, align 4, !dbg !149
    #dbg_value(i32 %2, !142, !DIExpression(), !146)
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 -20, !dbg !150
  %3 = load i32, ptr %arrayidx3, align 4, !dbg !150
    #dbg_value(i32 %3, !143, !DIExpression(), !146)
    #dbg_value(i32 0, !144, !DIExpression(), !151)
    #dbg_value(ptr %src, !139, !DIExpression(), !146)
    #dbg_value(i32 0, !144, !DIExpression(), !151)
    #dbg_value(ptr %src, !139, !DIExpression(), !146)
  store i32 %0, ptr %src, align 4, !dbg !152
  %add.ptr4 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !155
  store i32 %1, ptr %add.ptr4, align 4, !dbg !156
  %add.ptr5 = getelementptr inbounds i8, ptr %src, i64 8, !dbg !157
  store i32 %2, ptr %add.ptr5, align 4, !dbg !158
  %add.ptr6 = getelementptr inbounds i8, ptr %src, i64 12, !dbg !159
  store i32 %3, ptr %add.ptr6, align 4, !dbg !160
  %add.ptr7 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !161
    #dbg_value(ptr %add.ptr7, !139, !DIExpression(), !146)
    #dbg_value(i32 1, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7, align 4, !dbg !152
  %add.ptr4.1 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !155
  store i32 %1, ptr %add.ptr4.1, align 4, !dbg !156
  %add.ptr5.1 = getelementptr inbounds i8, ptr %src, i64 40, !dbg !157
  store i32 %2, ptr %add.ptr5.1, align 4, !dbg !158
  %add.ptr6.1 = getelementptr inbounds i8, ptr %src, i64 44, !dbg !159
  store i32 %3, ptr %add.ptr6.1, align 4, !dbg !160
  %add.ptr7.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !161
    #dbg_value(ptr %add.ptr7.1, !139, !DIExpression(), !146)
    #dbg_value(i32 2, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.1, align 4, !dbg !152
  %add.ptr4.2 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !155
  store i32 %1, ptr %add.ptr4.2, align 4, !dbg !156
  %add.ptr5.2 = getelementptr inbounds i8, ptr %src, i64 72, !dbg !157
  store i32 %2, ptr %add.ptr5.2, align 4, !dbg !158
  %add.ptr6.2 = getelementptr inbounds i8, ptr %src, i64 76, !dbg !159
  store i32 %3, ptr %add.ptr6.2, align 4, !dbg !160
  %add.ptr7.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !161
    #dbg_value(ptr %add.ptr7.2, !139, !DIExpression(), !146)
    #dbg_value(i32 3, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.2, align 4, !dbg !152
  %add.ptr4.3 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !155
  store i32 %1, ptr %add.ptr4.3, align 4, !dbg !156
  %add.ptr5.3 = getelementptr inbounds i8, ptr %src, i64 104, !dbg !157
  store i32 %2, ptr %add.ptr5.3, align 4, !dbg !158
  %add.ptr6.3 = getelementptr inbounds i8, ptr %src, i64 108, !dbg !159
  store i32 %3, ptr %add.ptr6.3, align 4, !dbg !160
  %add.ptr7.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !161
    #dbg_value(ptr %add.ptr7.3, !139, !DIExpression(), !146)
    #dbg_value(i32 4, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.3, align 4, !dbg !152
  %add.ptr4.4 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !155
  store i32 %1, ptr %add.ptr4.4, align 4, !dbg !156
  %add.ptr5.4 = getelementptr inbounds i8, ptr %src, i64 136, !dbg !157
  store i32 %2, ptr %add.ptr5.4, align 4, !dbg !158
  %add.ptr6.4 = getelementptr inbounds i8, ptr %src, i64 140, !dbg !159
  store i32 %3, ptr %add.ptr6.4, align 4, !dbg !160
  %add.ptr7.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !161
    #dbg_value(ptr %add.ptr7.4, !139, !DIExpression(), !146)
    #dbg_value(i32 5, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.4, align 4, !dbg !152
  %add.ptr4.5 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !155
  store i32 %1, ptr %add.ptr4.5, align 4, !dbg !156
  %add.ptr5.5 = getelementptr inbounds i8, ptr %src, i64 168, !dbg !157
  store i32 %2, ptr %add.ptr5.5, align 4, !dbg !158
  %add.ptr6.5 = getelementptr inbounds i8, ptr %src, i64 172, !dbg !159
  store i32 %3, ptr %add.ptr6.5, align 4, !dbg !160
  %add.ptr7.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !161
    #dbg_value(ptr %add.ptr7.5, !139, !DIExpression(), !146)
    #dbg_value(i32 6, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.5, align 4, !dbg !152
  %add.ptr4.6 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !155
  store i32 %1, ptr %add.ptr4.6, align 4, !dbg !156
  %add.ptr5.6 = getelementptr inbounds i8, ptr %src, i64 200, !dbg !157
  store i32 %2, ptr %add.ptr5.6, align 4, !dbg !158
  %add.ptr6.6 = getelementptr inbounds i8, ptr %src, i64 204, !dbg !159
  store i32 %3, ptr %add.ptr6.6, align 4, !dbg !160
  %add.ptr7.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !161
    #dbg_value(ptr %add.ptr7.6, !139, !DIExpression(), !146)
    #dbg_value(i32 7, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.6, align 4, !dbg !152
  %add.ptr4.7 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !155
  store i32 %1, ptr %add.ptr4.7, align 4, !dbg !156
  %add.ptr5.7 = getelementptr inbounds i8, ptr %src, i64 232, !dbg !157
  store i32 %2, ptr %add.ptr5.7, align 4, !dbg !158
  %add.ptr6.7 = getelementptr inbounds i8, ptr %src, i64 236, !dbg !159
  store i32 %3, ptr %add.ptr6.7, align 4, !dbg !160
  %add.ptr7.7 = getelementptr inbounds i8, ptr %src, i64 256, !dbg !161
    #dbg_value(ptr %add.ptr7.7, !139, !DIExpression(), !146)
    #dbg_value(i32 8, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.7, align 4, !dbg !152
  %add.ptr4.8 = getelementptr inbounds i8, ptr %src, i64 260, !dbg !155
  store i32 %1, ptr %add.ptr4.8, align 4, !dbg !156
  %add.ptr5.8 = getelementptr inbounds i8, ptr %src, i64 264, !dbg !157
  store i32 %2, ptr %add.ptr5.8, align 4, !dbg !158
  %add.ptr6.8 = getelementptr inbounds i8, ptr %src, i64 268, !dbg !159
  store i32 %3, ptr %add.ptr6.8, align 4, !dbg !160
  %add.ptr7.8 = getelementptr inbounds i8, ptr %src, i64 288, !dbg !161
    #dbg_value(ptr %add.ptr7.8, !139, !DIExpression(), !146)
    #dbg_value(i32 9, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.8, align 4, !dbg !152
  %add.ptr4.9 = getelementptr inbounds i8, ptr %src, i64 292, !dbg !155
  store i32 %1, ptr %add.ptr4.9, align 4, !dbg !156
  %add.ptr5.9 = getelementptr inbounds i8, ptr %src, i64 296, !dbg !157
  store i32 %2, ptr %add.ptr5.9, align 4, !dbg !158
  %add.ptr6.9 = getelementptr inbounds i8, ptr %src, i64 300, !dbg !159
  store i32 %3, ptr %add.ptr6.9, align 4, !dbg !160
  %add.ptr7.9 = getelementptr inbounds i8, ptr %src, i64 320, !dbg !161
    #dbg_value(ptr %add.ptr7.9, !139, !DIExpression(), !146)
    #dbg_value(i32 10, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.9, align 4, !dbg !152
  %add.ptr4.10 = getelementptr inbounds i8, ptr %src, i64 324, !dbg !155
  store i32 %1, ptr %add.ptr4.10, align 4, !dbg !156
  %add.ptr5.10 = getelementptr inbounds i8, ptr %src, i64 328, !dbg !157
  store i32 %2, ptr %add.ptr5.10, align 4, !dbg !158
  %add.ptr6.10 = getelementptr inbounds i8, ptr %src, i64 332, !dbg !159
  store i32 %3, ptr %add.ptr6.10, align 4, !dbg !160
  %add.ptr7.10 = getelementptr inbounds i8, ptr %src, i64 352, !dbg !161
    #dbg_value(ptr %add.ptr7.10, !139, !DIExpression(), !146)
    #dbg_value(i32 11, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.10, align 4, !dbg !152
  %add.ptr4.11 = getelementptr inbounds i8, ptr %src, i64 356, !dbg !155
  store i32 %1, ptr %add.ptr4.11, align 4, !dbg !156
  %add.ptr5.11 = getelementptr inbounds i8, ptr %src, i64 360, !dbg !157
  store i32 %2, ptr %add.ptr5.11, align 4, !dbg !158
  %add.ptr6.11 = getelementptr inbounds i8, ptr %src, i64 364, !dbg !159
  store i32 %3, ptr %add.ptr6.11, align 4, !dbg !160
  %add.ptr7.11 = getelementptr inbounds i8, ptr %src, i64 384, !dbg !161
    #dbg_value(ptr %add.ptr7.11, !139, !DIExpression(), !146)
    #dbg_value(i32 12, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.11, align 4, !dbg !152
  %add.ptr4.12 = getelementptr inbounds i8, ptr %src, i64 388, !dbg !155
  store i32 %1, ptr %add.ptr4.12, align 4, !dbg !156
  %add.ptr5.12 = getelementptr inbounds i8, ptr %src, i64 392, !dbg !157
  store i32 %2, ptr %add.ptr5.12, align 4, !dbg !158
  %add.ptr6.12 = getelementptr inbounds i8, ptr %src, i64 396, !dbg !159
  store i32 %3, ptr %add.ptr6.12, align 4, !dbg !160
  %add.ptr7.12 = getelementptr inbounds i8, ptr %src, i64 416, !dbg !161
    #dbg_value(ptr %add.ptr7.12, !139, !DIExpression(), !146)
    #dbg_value(i32 13, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.12, align 4, !dbg !152
  %add.ptr4.13 = getelementptr inbounds i8, ptr %src, i64 420, !dbg !155
  store i32 %1, ptr %add.ptr4.13, align 4, !dbg !156
  %add.ptr5.13 = getelementptr inbounds i8, ptr %src, i64 424, !dbg !157
  store i32 %2, ptr %add.ptr5.13, align 4, !dbg !158
  %add.ptr6.13 = getelementptr inbounds i8, ptr %src, i64 428, !dbg !159
  store i32 %3, ptr %add.ptr6.13, align 4, !dbg !160
  %add.ptr7.13 = getelementptr inbounds i8, ptr %src, i64 448, !dbg !161
    #dbg_value(ptr %add.ptr7.13, !139, !DIExpression(), !146)
    #dbg_value(i32 14, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.13, align 4, !dbg !152
  %add.ptr4.14 = getelementptr inbounds i8, ptr %src, i64 452, !dbg !155
  store i32 %1, ptr %add.ptr4.14, align 4, !dbg !156
  %add.ptr5.14 = getelementptr inbounds i8, ptr %src, i64 456, !dbg !157
  store i32 %2, ptr %add.ptr5.14, align 4, !dbg !158
  %add.ptr6.14 = getelementptr inbounds i8, ptr %src, i64 460, !dbg !159
  store i32 %3, ptr %add.ptr6.14, align 4, !dbg !160
  %add.ptr7.14 = getelementptr inbounds i8, ptr %src, i64 480, !dbg !161
    #dbg_value(ptr %add.ptr7.14, !139, !DIExpression(), !146)
    #dbg_value(i32 15, !144, !DIExpression(), !151)
  store i32 %0, ptr %add.ptr7.14, align 4, !dbg !152
  %add.ptr4.15 = getelementptr inbounds i8, ptr %src, i64 484, !dbg !155
  store i32 %1, ptr %add.ptr4.15, align 4, !dbg !156
  %add.ptr5.15 = getelementptr inbounds i8, ptr %src, i64 488, !dbg !157
  store i32 %2, ptr %add.ptr5.15, align 4, !dbg !158
  %add.ptr6.15 = getelementptr inbounds i8, ptr %src, i64 492, !dbg !159
  store i32 %3, ptr %add.ptr6.15, align 4, !dbg !160
    #dbg_value(ptr %add.ptr7.14, !139, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !146)
    #dbg_value(i32 16, !144, !DIExpression(), !151)
  ret void, !dbg !162
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_16x16_h(ptr nocapture noundef %src) #1 !dbg !163 {
entry:
    #dbg_value(ptr %src, !165, !DIExpression(), !172)
    #dbg_value(i32 0, !166, !DIExpression(), !173)
    #dbg_value(ptr %src, !165, !DIExpression(), !172)
    #dbg_value(i32 0, !166, !DIExpression(), !173)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -1, !dbg !174
  %0 = load i8, ptr %arrayidx, align 1, !dbg !174
  %conv = zext i8 %0 to i32, !dbg !174
  %mul = mul nuw nsw i32 %conv, 16843009, !dbg !175
    #dbg_value(i32 %mul, !168, !DIExpression(), !176)
  %1 = insertelement <4 x i32> poison, i32 %mul, i64 0, !dbg !177
  %2 = shufflevector <4 x i32> %1, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %2, ptr %src, align 4, !dbg !177
  %add.ptr4 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !178
    #dbg_value(ptr %add.ptr4, !165, !DIExpression(), !172)
    #dbg_value(i32 1, !166, !DIExpression(), !173)
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 31, !dbg !174
  %3 = load i8, ptr %arrayidx.1, align 1, !dbg !174
  %conv.1 = zext i8 %3 to i32, !dbg !174
  %mul.1 = mul nuw nsw i32 %conv.1, 16843009, !dbg !175
    #dbg_value(i32 %mul.1, !168, !DIExpression(), !176)
  %4 = insertelement <4 x i32> poison, i32 %mul.1, i64 0, !dbg !177
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %5, ptr %add.ptr4, align 4, !dbg !177
  %add.ptr4.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !178
    #dbg_value(ptr %add.ptr4.1, !165, !DIExpression(), !172)
    #dbg_value(i32 2, !166, !DIExpression(), !173)
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 63, !dbg !174
  %6 = load i8, ptr %arrayidx.2, align 1, !dbg !174
  %conv.2 = zext i8 %6 to i32, !dbg !174
  %mul.2 = mul nuw nsw i32 %conv.2, 16843009, !dbg !175
    #dbg_value(i32 %mul.2, !168, !DIExpression(), !176)
  %7 = insertelement <4 x i32> poison, i32 %mul.2, i64 0, !dbg !177
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %8, ptr %add.ptr4.1, align 4, !dbg !177
  %add.ptr4.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !178
    #dbg_value(ptr %add.ptr4.2, !165, !DIExpression(), !172)
    #dbg_value(i32 3, !166, !DIExpression(), !173)
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 95, !dbg !174
  %9 = load i8, ptr %arrayidx.3, align 1, !dbg !174
  %conv.3 = zext i8 %9 to i32, !dbg !174
  %mul.3 = mul nuw nsw i32 %conv.3, 16843009, !dbg !175
    #dbg_value(i32 %mul.3, !168, !DIExpression(), !176)
  %10 = insertelement <4 x i32> poison, i32 %mul.3, i64 0, !dbg !177
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %11, ptr %add.ptr4.2, align 4, !dbg !177
  %add.ptr4.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !178
    #dbg_value(ptr %add.ptr4.3, !165, !DIExpression(), !172)
    #dbg_value(i32 4, !166, !DIExpression(), !173)
  %arrayidx.4 = getelementptr inbounds i8, ptr %src, i64 127, !dbg !174
  %12 = load i8, ptr %arrayidx.4, align 1, !dbg !174
  %conv.4 = zext i8 %12 to i32, !dbg !174
  %mul.4 = mul nuw nsw i32 %conv.4, 16843009, !dbg !175
    #dbg_value(i32 %mul.4, !168, !DIExpression(), !176)
  %13 = insertelement <4 x i32> poison, i32 %mul.4, i64 0, !dbg !177
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %14, ptr %add.ptr4.3, align 4, !dbg !177
  %add.ptr4.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !178
    #dbg_value(ptr %add.ptr4.4, !165, !DIExpression(), !172)
    #dbg_value(i32 5, !166, !DIExpression(), !173)
  %arrayidx.5 = getelementptr inbounds i8, ptr %src, i64 159, !dbg !174
  %15 = load i8, ptr %arrayidx.5, align 1, !dbg !174
  %conv.5 = zext i8 %15 to i32, !dbg !174
  %mul.5 = mul nuw nsw i32 %conv.5, 16843009, !dbg !175
    #dbg_value(i32 %mul.5, !168, !DIExpression(), !176)
  %16 = insertelement <4 x i32> poison, i32 %mul.5, i64 0, !dbg !177
  %17 = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %17, ptr %add.ptr4.4, align 4, !dbg !177
  %add.ptr4.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !178
    #dbg_value(ptr %add.ptr4.5, !165, !DIExpression(), !172)
    #dbg_value(i32 6, !166, !DIExpression(), !173)
  %arrayidx.6 = getelementptr inbounds i8, ptr %src, i64 191, !dbg !174
  %18 = load i8, ptr %arrayidx.6, align 1, !dbg !174
  %conv.6 = zext i8 %18 to i32, !dbg !174
  %mul.6 = mul nuw nsw i32 %conv.6, 16843009, !dbg !175
    #dbg_value(i32 %mul.6, !168, !DIExpression(), !176)
  %19 = insertelement <4 x i32> poison, i32 %mul.6, i64 0, !dbg !177
  %20 = shufflevector <4 x i32> %19, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %20, ptr %add.ptr4.5, align 4, !dbg !177
  %add.ptr4.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !178
    #dbg_value(ptr %add.ptr4.6, !165, !DIExpression(), !172)
    #dbg_value(i32 7, !166, !DIExpression(), !173)
  %arrayidx.7 = getelementptr inbounds i8, ptr %src, i64 223, !dbg !174
  %21 = load i8, ptr %arrayidx.7, align 1, !dbg !174
  %conv.7 = zext i8 %21 to i32, !dbg !174
  %mul.7 = mul nuw nsw i32 %conv.7, 16843009, !dbg !175
    #dbg_value(i32 %mul.7, !168, !DIExpression(), !176)
  %22 = insertelement <4 x i32> poison, i32 %mul.7, i64 0, !dbg !177
  %23 = shufflevector <4 x i32> %22, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %23, ptr %add.ptr4.6, align 4, !dbg !177
  %add.ptr4.7 = getelementptr inbounds i8, ptr %src, i64 256, !dbg !178
    #dbg_value(ptr %add.ptr4.7, !165, !DIExpression(), !172)
    #dbg_value(i32 8, !166, !DIExpression(), !173)
  %arrayidx.8 = getelementptr inbounds i8, ptr %src, i64 255, !dbg !174
  %24 = load i8, ptr %arrayidx.8, align 1, !dbg !174
  %conv.8 = zext i8 %24 to i32, !dbg !174
  %mul.8 = mul nuw nsw i32 %conv.8, 16843009, !dbg !175
    #dbg_value(i32 %mul.8, !168, !DIExpression(), !176)
  %25 = insertelement <4 x i32> poison, i32 %mul.8, i64 0, !dbg !177
  %26 = shufflevector <4 x i32> %25, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %26, ptr %add.ptr4.7, align 4, !dbg !177
  %add.ptr4.8 = getelementptr inbounds i8, ptr %src, i64 288, !dbg !178
    #dbg_value(ptr %add.ptr4.8, !165, !DIExpression(), !172)
    #dbg_value(i32 9, !166, !DIExpression(), !173)
  %arrayidx.9 = getelementptr inbounds i8, ptr %src, i64 287, !dbg !174
  %27 = load i8, ptr %arrayidx.9, align 1, !dbg !174
  %conv.9 = zext i8 %27 to i32, !dbg !174
  %mul.9 = mul nuw nsw i32 %conv.9, 16843009, !dbg !175
    #dbg_value(i32 %mul.9, !168, !DIExpression(), !176)
  %28 = insertelement <4 x i32> poison, i32 %mul.9, i64 0, !dbg !177
  %29 = shufflevector <4 x i32> %28, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %29, ptr %add.ptr4.8, align 4, !dbg !177
  %add.ptr4.9 = getelementptr inbounds i8, ptr %src, i64 320, !dbg !178
    #dbg_value(ptr %add.ptr4.9, !165, !DIExpression(), !172)
    #dbg_value(i32 10, !166, !DIExpression(), !173)
  %arrayidx.10 = getelementptr inbounds i8, ptr %src, i64 319, !dbg !174
  %30 = load i8, ptr %arrayidx.10, align 1, !dbg !174
  %conv.10 = zext i8 %30 to i32, !dbg !174
  %mul.10 = mul nuw nsw i32 %conv.10, 16843009, !dbg !175
    #dbg_value(i32 %mul.10, !168, !DIExpression(), !176)
  %31 = insertelement <4 x i32> poison, i32 %mul.10, i64 0, !dbg !177
  %32 = shufflevector <4 x i32> %31, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %32, ptr %add.ptr4.9, align 4, !dbg !177
  %add.ptr4.10 = getelementptr inbounds i8, ptr %src, i64 352, !dbg !178
    #dbg_value(ptr %add.ptr4.10, !165, !DIExpression(), !172)
    #dbg_value(i32 11, !166, !DIExpression(), !173)
  %arrayidx.11 = getelementptr inbounds i8, ptr %src, i64 351, !dbg !174
  %33 = load i8, ptr %arrayidx.11, align 1, !dbg !174
  %conv.11 = zext i8 %33 to i32, !dbg !174
  %mul.11 = mul nuw nsw i32 %conv.11, 16843009, !dbg !175
    #dbg_value(i32 %mul.11, !168, !DIExpression(), !176)
  %34 = insertelement <4 x i32> poison, i32 %mul.11, i64 0, !dbg !177
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %35, ptr %add.ptr4.10, align 4, !dbg !177
  %add.ptr4.11 = getelementptr inbounds i8, ptr %src, i64 384, !dbg !178
    #dbg_value(ptr %add.ptr4.11, !165, !DIExpression(), !172)
    #dbg_value(i32 12, !166, !DIExpression(), !173)
  %arrayidx.12 = getelementptr inbounds i8, ptr %src, i64 383, !dbg !174
  %36 = load i8, ptr %arrayidx.12, align 1, !dbg !174
  %conv.12 = zext i8 %36 to i32, !dbg !174
  %mul.12 = mul nuw nsw i32 %conv.12, 16843009, !dbg !175
    #dbg_value(i32 %mul.12, !168, !DIExpression(), !176)
  %37 = insertelement <4 x i32> poison, i32 %mul.12, i64 0, !dbg !177
  %38 = shufflevector <4 x i32> %37, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %38, ptr %add.ptr4.11, align 4, !dbg !177
  %add.ptr4.12 = getelementptr inbounds i8, ptr %src, i64 416, !dbg !178
    #dbg_value(ptr %add.ptr4.12, !165, !DIExpression(), !172)
    #dbg_value(i32 13, !166, !DIExpression(), !173)
  %arrayidx.13 = getelementptr inbounds i8, ptr %src, i64 415, !dbg !174
  %39 = load i8, ptr %arrayidx.13, align 1, !dbg !174
  %conv.13 = zext i8 %39 to i32, !dbg !174
  %mul.13 = mul nuw nsw i32 %conv.13, 16843009, !dbg !175
    #dbg_value(i32 %mul.13, !168, !DIExpression(), !176)
  %40 = insertelement <4 x i32> poison, i32 %mul.13, i64 0, !dbg !177
  %41 = shufflevector <4 x i32> %40, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %41, ptr %add.ptr4.12, align 4, !dbg !177
  %add.ptr4.13 = getelementptr inbounds i8, ptr %src, i64 448, !dbg !178
    #dbg_value(ptr %add.ptr4.13, !165, !DIExpression(), !172)
    #dbg_value(i32 14, !166, !DIExpression(), !173)
  %arrayidx.14 = getelementptr inbounds i8, ptr %src, i64 447, !dbg !174
  %42 = load i8, ptr %arrayidx.14, align 1, !dbg !174
  %conv.14 = zext i8 %42 to i32, !dbg !174
  %mul.14 = mul nuw nsw i32 %conv.14, 16843009, !dbg !175
    #dbg_value(i32 %mul.14, !168, !DIExpression(), !176)
  %43 = insertelement <4 x i32> poison, i32 %mul.14, i64 0, !dbg !177
  %44 = shufflevector <4 x i32> %43, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %44, ptr %add.ptr4.13, align 4, !dbg !177
  %add.ptr4.14 = getelementptr inbounds i8, ptr %src, i64 480, !dbg !178
    #dbg_value(ptr %add.ptr4.14, !165, !DIExpression(), !172)
    #dbg_value(i32 15, !166, !DIExpression(), !173)
  %arrayidx.15 = getelementptr inbounds i8, ptr %src, i64 479, !dbg !174
  %45 = load i8, ptr %arrayidx.15, align 1, !dbg !174
  %conv.15 = zext i8 %45 to i32, !dbg !174
  %mul.15 = mul nuw nsw i32 %conv.15, 16843009, !dbg !175
    #dbg_value(i32 %mul.15, !168, !DIExpression(), !176)
  %46 = insertelement <4 x i32> poison, i32 %mul.15, i64 0, !dbg !177
  %47 = shufflevector <4 x i32> %46, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !177
  store <4 x i32> %47, ptr %add.ptr4.14, align 4, !dbg !177
    #dbg_value(ptr %add.ptr4.14, !165, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !172)
    #dbg_value(i32 16, !166, !DIExpression(), !173)
  ret void, !dbg !179
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_16x16_dc(ptr nocapture noundef %src) #1 !dbg !180 {
entry:
    #dbg_value(ptr %src, !182, !DIExpression(), !188)
    #dbg_value(i32 0, !183, !DIExpression(), !188)
    #dbg_value(i32 0, !184, !DIExpression(), !189)
  %invariant.gep = getelementptr i8, ptr %src, i64 -1, !dbg !190
    #dbg_value(i32 0, !184, !DIExpression(), !189)
    #dbg_value(i32 0, !183, !DIExpression(), !188)
    #dbg_value(i64 0, !184, !DIExpression(), !189)
    #dbg_value(i32 0, !183, !DIExpression(), !188)
  %0 = load i8, ptr %invariant.gep, align 1, !dbg !191
  %conv = zext i8 %0 to i32, !dbg !191
    #dbg_value(i32 %conv, !183, !DIExpression(), !188)
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !194
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !194
  %conv4 = zext i8 %1 to i32, !dbg !194
  %add5 = add nuw nsw i32 %conv, %conv4, !dbg !195
    #dbg_value(i32 %add5, !183, !DIExpression(), !188)
    #dbg_value(i64 1, !184, !DIExpression(), !189)
  %gep.1 = getelementptr i8, ptr %src, i64 31, !dbg !191
  %2 = load i8, ptr %gep.1, align 1, !dbg !191
  %conv.1 = zext i8 %2 to i32, !dbg !191
  %add1.1 = add nuw nsw i32 %add5, %conv.1, !dbg !196
    #dbg_value(i32 %add1.1, !183, !DIExpression(), !188)
  %arrayidx3.1 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !194
  %3 = load i8, ptr %arrayidx3.1, align 1, !dbg !194
  %conv4.1 = zext i8 %3 to i32, !dbg !194
  %add5.1 = add nuw nsw i32 %add1.1, %conv4.1, !dbg !195
    #dbg_value(i32 %add5.1, !183, !DIExpression(), !188)
    #dbg_value(i64 2, !184, !DIExpression(), !189)
  %gep.2 = getelementptr i8, ptr %src, i64 63, !dbg !191
  %4 = load i8, ptr %gep.2, align 1, !dbg !191
  %conv.2 = zext i8 %4 to i32, !dbg !191
  %add1.2 = add nuw nsw i32 %add5.1, %conv.2, !dbg !196
    #dbg_value(i32 %add1.2, !183, !DIExpression(), !188)
  %arrayidx3.2 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !194
  %5 = load i8, ptr %arrayidx3.2, align 1, !dbg !194
  %conv4.2 = zext i8 %5 to i32, !dbg !194
  %add5.2 = add nuw nsw i32 %add1.2, %conv4.2, !dbg !195
    #dbg_value(i32 %add5.2, !183, !DIExpression(), !188)
    #dbg_value(i64 3, !184, !DIExpression(), !189)
  %gep.3 = getelementptr i8, ptr %src, i64 95, !dbg !191
  %6 = load i8, ptr %gep.3, align 1, !dbg !191
  %conv.3 = zext i8 %6 to i32, !dbg !191
  %add1.3 = add nuw nsw i32 %add5.2, %conv.3, !dbg !196
    #dbg_value(i32 %add1.3, !183, !DIExpression(), !188)
  %arrayidx3.3 = getelementptr inbounds i8, ptr %src, i64 -29, !dbg !194
  %7 = load i8, ptr %arrayidx3.3, align 1, !dbg !194
  %conv4.3 = zext i8 %7 to i32, !dbg !194
  %add5.3 = add nuw nsw i32 %add1.3, %conv4.3, !dbg !195
    #dbg_value(i32 %add5.3, !183, !DIExpression(), !188)
    #dbg_value(i64 4, !184, !DIExpression(), !189)
  %gep.4 = getelementptr i8, ptr %src, i64 127, !dbg !191
  %8 = load i8, ptr %gep.4, align 1, !dbg !191
  %conv.4 = zext i8 %8 to i32, !dbg !191
  %add1.4 = add nuw nsw i32 %add5.3, %conv.4, !dbg !196
    #dbg_value(i32 %add1.4, !183, !DIExpression(), !188)
  %arrayidx3.4 = getelementptr inbounds i8, ptr %src, i64 -28, !dbg !194
  %9 = load i8, ptr %arrayidx3.4, align 1, !dbg !194
  %conv4.4 = zext i8 %9 to i32, !dbg !194
  %add5.4 = add nuw nsw i32 %add1.4, %conv4.4, !dbg !195
    #dbg_value(i32 %add5.4, !183, !DIExpression(), !188)
    #dbg_value(i64 5, !184, !DIExpression(), !189)
  %gep.5 = getelementptr i8, ptr %src, i64 159, !dbg !191
  %10 = load i8, ptr %gep.5, align 1, !dbg !191
  %conv.5 = zext i8 %10 to i32, !dbg !191
  %add1.5 = add nuw nsw i32 %add5.4, %conv.5, !dbg !196
    #dbg_value(i32 %add1.5, !183, !DIExpression(), !188)
  %arrayidx3.5 = getelementptr inbounds i8, ptr %src, i64 -27, !dbg !194
  %11 = load i8, ptr %arrayidx3.5, align 1, !dbg !194
  %conv4.5 = zext i8 %11 to i32, !dbg !194
  %add5.5 = add nuw nsw i32 %add1.5, %conv4.5, !dbg !195
    #dbg_value(i32 %add5.5, !183, !DIExpression(), !188)
    #dbg_value(i64 6, !184, !DIExpression(), !189)
  %gep.6 = getelementptr i8, ptr %src, i64 191, !dbg !191
  %12 = load i8, ptr %gep.6, align 1, !dbg !191
  %conv.6 = zext i8 %12 to i32, !dbg !191
  %add1.6 = add nuw nsw i32 %add5.5, %conv.6, !dbg !196
    #dbg_value(i32 %add1.6, !183, !DIExpression(), !188)
  %arrayidx3.6 = getelementptr inbounds i8, ptr %src, i64 -26, !dbg !194
  %13 = load i8, ptr %arrayidx3.6, align 1, !dbg !194
  %conv4.6 = zext i8 %13 to i32, !dbg !194
  %add5.6 = add nuw nsw i32 %add1.6, %conv4.6, !dbg !195
    #dbg_value(i32 %add5.6, !183, !DIExpression(), !188)
    #dbg_value(i64 7, !184, !DIExpression(), !189)
  %gep.7 = getelementptr i8, ptr %src, i64 223, !dbg !191
  %14 = load i8, ptr %gep.7, align 1, !dbg !191
  %conv.7 = zext i8 %14 to i32, !dbg !191
  %add1.7 = add nuw nsw i32 %add5.6, %conv.7, !dbg !196
    #dbg_value(i32 %add1.7, !183, !DIExpression(), !188)
  %arrayidx3.7 = getelementptr inbounds i8, ptr %src, i64 -25, !dbg !194
  %15 = load i8, ptr %arrayidx3.7, align 1, !dbg !194
  %conv4.7 = zext i8 %15 to i32, !dbg !194
  %add5.7 = add nuw nsw i32 %add1.7, %conv4.7, !dbg !195
    #dbg_value(i32 %add5.7, !183, !DIExpression(), !188)
    #dbg_value(i64 8, !184, !DIExpression(), !189)
  %gep.8 = getelementptr i8, ptr %src, i64 255, !dbg !191
  %16 = load i8, ptr %gep.8, align 1, !dbg !191
  %conv.8 = zext i8 %16 to i32, !dbg !191
  %add1.8 = add nuw nsw i32 %add5.7, %conv.8, !dbg !196
    #dbg_value(i32 %add1.8, !183, !DIExpression(), !188)
  %arrayidx3.8 = getelementptr inbounds i8, ptr %src, i64 -24, !dbg !194
  %17 = load i8, ptr %arrayidx3.8, align 1, !dbg !194
  %conv4.8 = zext i8 %17 to i32, !dbg !194
  %add5.8 = add nuw nsw i32 %add1.8, %conv4.8, !dbg !195
    #dbg_value(i32 %add5.8, !183, !DIExpression(), !188)
    #dbg_value(i64 9, !184, !DIExpression(), !189)
  %gep.9 = getelementptr i8, ptr %src, i64 287, !dbg !191
  %18 = load i8, ptr %gep.9, align 1, !dbg !191
  %conv.9 = zext i8 %18 to i32, !dbg !191
  %add1.9 = add nuw nsw i32 %add5.8, %conv.9, !dbg !196
    #dbg_value(i32 %add1.9, !183, !DIExpression(), !188)
  %arrayidx3.9 = getelementptr inbounds i8, ptr %src, i64 -23, !dbg !194
  %19 = load i8, ptr %arrayidx3.9, align 1, !dbg !194
  %conv4.9 = zext i8 %19 to i32, !dbg !194
  %add5.9 = add nuw nsw i32 %add1.9, %conv4.9, !dbg !195
    #dbg_value(i32 %add5.9, !183, !DIExpression(), !188)
    #dbg_value(i64 10, !184, !DIExpression(), !189)
  %gep.10 = getelementptr i8, ptr %src, i64 319, !dbg !191
  %20 = load i8, ptr %gep.10, align 1, !dbg !191
  %conv.10 = zext i8 %20 to i32, !dbg !191
  %add1.10 = add nuw nsw i32 %add5.9, %conv.10, !dbg !196
    #dbg_value(i32 %add1.10, !183, !DIExpression(), !188)
  %arrayidx3.10 = getelementptr inbounds i8, ptr %src, i64 -22, !dbg !194
  %21 = load i8, ptr %arrayidx3.10, align 1, !dbg !194
  %conv4.10 = zext i8 %21 to i32, !dbg !194
  %add5.10 = add nuw nsw i32 %add1.10, %conv4.10, !dbg !195
    #dbg_value(i32 %add5.10, !183, !DIExpression(), !188)
    #dbg_value(i64 11, !184, !DIExpression(), !189)
  %gep.11 = getelementptr i8, ptr %src, i64 351, !dbg !191
  %22 = load i8, ptr %gep.11, align 1, !dbg !191
  %conv.11 = zext i8 %22 to i32, !dbg !191
  %add1.11 = add nuw nsw i32 %add5.10, %conv.11, !dbg !196
    #dbg_value(i32 %add1.11, !183, !DIExpression(), !188)
  %arrayidx3.11 = getelementptr inbounds i8, ptr %src, i64 -21, !dbg !194
  %23 = load i8, ptr %arrayidx3.11, align 1, !dbg !194
  %conv4.11 = zext i8 %23 to i32, !dbg !194
  %add5.11 = add nuw nsw i32 %add1.11, %conv4.11, !dbg !195
    #dbg_value(i32 %add5.11, !183, !DIExpression(), !188)
    #dbg_value(i64 12, !184, !DIExpression(), !189)
  %gep.12 = getelementptr i8, ptr %src, i64 383, !dbg !191
  %24 = load i8, ptr %gep.12, align 1, !dbg !191
  %conv.12 = zext i8 %24 to i32, !dbg !191
  %add1.12 = add nuw nsw i32 %add5.11, %conv.12, !dbg !196
    #dbg_value(i32 %add1.12, !183, !DIExpression(), !188)
  %arrayidx3.12 = getelementptr inbounds i8, ptr %src, i64 -20, !dbg !194
  %25 = load i8, ptr %arrayidx3.12, align 1, !dbg !194
  %conv4.12 = zext i8 %25 to i32, !dbg !194
  %add5.12 = add nuw nsw i32 %add1.12, %conv4.12, !dbg !195
    #dbg_value(i32 %add5.12, !183, !DIExpression(), !188)
    #dbg_value(i64 13, !184, !DIExpression(), !189)
  %gep.13 = getelementptr i8, ptr %src, i64 415, !dbg !191
  %26 = load i8, ptr %gep.13, align 1, !dbg !191
  %conv.13 = zext i8 %26 to i32, !dbg !191
  %add1.13 = add nuw nsw i32 %add5.12, %conv.13, !dbg !196
    #dbg_value(i32 %add1.13, !183, !DIExpression(), !188)
  %arrayidx3.13 = getelementptr inbounds i8, ptr %src, i64 -19, !dbg !194
  %27 = load i8, ptr %arrayidx3.13, align 1, !dbg !194
  %conv4.13 = zext i8 %27 to i32, !dbg !194
  %add5.13 = add nuw nsw i32 %add1.13, %conv4.13, !dbg !195
    #dbg_value(i32 %add5.13, !183, !DIExpression(), !188)
    #dbg_value(i64 14, !184, !DIExpression(), !189)
  %gep.14 = getelementptr i8, ptr %src, i64 447, !dbg !191
  %28 = load i8, ptr %gep.14, align 1, !dbg !191
  %conv.14 = zext i8 %28 to i32, !dbg !191
  %add1.14 = add nuw nsw i32 %add5.13, %conv.14, !dbg !196
    #dbg_value(i32 %add1.14, !183, !DIExpression(), !188)
  %arrayidx3.14 = getelementptr inbounds i8, ptr %src, i64 -18, !dbg !194
  %29 = load i8, ptr %arrayidx3.14, align 1, !dbg !194
  %conv4.14 = zext i8 %29 to i32, !dbg !194
  %add5.14 = add nuw nsw i32 %add1.14, %conv4.14, !dbg !195
    #dbg_value(i32 %add5.14, !183, !DIExpression(), !188)
    #dbg_value(i64 15, !184, !DIExpression(), !189)
  %gep.15 = getelementptr i8, ptr %src, i64 479, !dbg !191
  %30 = load i8, ptr %gep.15, align 1, !dbg !191
  %conv.15 = zext i8 %30 to i32, !dbg !191
  %add1.15 = add nuw nsw i32 %add5.14, %conv.15, !dbg !196
    #dbg_value(i32 %add1.15, !183, !DIExpression(), !188)
  %arrayidx3.15 = getelementptr inbounds i8, ptr %src, i64 -17, !dbg !194
  %31 = load i8, ptr %arrayidx3.15, align 1, !dbg !194
  %conv4.15 = zext i8 %31 to i32, !dbg !194
  %add5.15 = add nuw nsw i32 %add1.15, %conv4.15, !dbg !195
    #dbg_value(i32 %add5.15, !183, !DIExpression(), !188)
    #dbg_value(i64 16, !184, !DIExpression(), !189)
  %add6 = add nuw nsw i32 %add5.15, 16, !dbg !197
  %shr = lshr i32 %add6, 5, !dbg !198
  %mul7 = mul nuw i32 %shr, 16843009, !dbg !199
    #dbg_value(i32 %mul7, !183, !DIExpression(), !188)
    #dbg_value(i32 0, !186, !DIExpression(), !200)
    #dbg_value(ptr %src, !182, !DIExpression(), !188)
    #dbg_value(i32 0, !186, !DIExpression(), !200)
    #dbg_value(ptr %src, !182, !DIExpression(), !188)
  %32 = insertelement <4 x i32> poison, i32 %mul7, i64 0, !dbg !201
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !201
  store <4 x i32> %33, ptr %src, align 4, !dbg !201
  %add.ptr17 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !201
    #dbg_value(ptr %add.ptr17, !182, !DIExpression(), !188)
    #dbg_value(i32 1, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17, align 4, !dbg !201
  %add.ptr17.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !201
    #dbg_value(ptr %add.ptr17.1, !182, !DIExpression(), !188)
    #dbg_value(i32 2, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.1, align 4, !dbg !201
  %add.ptr17.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !201
    #dbg_value(ptr %add.ptr17.2, !182, !DIExpression(), !188)
    #dbg_value(i32 3, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.2, align 4, !dbg !201
  %add.ptr17.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !201
    #dbg_value(ptr %add.ptr17.3, !182, !DIExpression(), !188)
    #dbg_value(i32 4, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.3, align 4, !dbg !201
  %add.ptr17.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !201
    #dbg_value(ptr %add.ptr17.4, !182, !DIExpression(), !188)
    #dbg_value(i32 5, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.4, align 4, !dbg !201
  %add.ptr17.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !201
    #dbg_value(ptr %add.ptr17.5, !182, !DIExpression(), !188)
    #dbg_value(i32 6, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.5, align 4, !dbg !201
  %add.ptr17.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !201
    #dbg_value(ptr %add.ptr17.6, !182, !DIExpression(), !188)
    #dbg_value(i32 7, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.6, align 4, !dbg !201
  %add.ptr17.7 = getelementptr inbounds i8, ptr %src, i64 256, !dbg !201
    #dbg_value(ptr %add.ptr17.7, !182, !DIExpression(), !188)
    #dbg_value(i32 8, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.7, align 4, !dbg !201
  %add.ptr17.8 = getelementptr inbounds i8, ptr %src, i64 288, !dbg !201
    #dbg_value(ptr %add.ptr17.8, !182, !DIExpression(), !188)
    #dbg_value(i32 9, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.8, align 4, !dbg !201
  %add.ptr17.9 = getelementptr inbounds i8, ptr %src, i64 320, !dbg !201
    #dbg_value(ptr %add.ptr17.9, !182, !DIExpression(), !188)
    #dbg_value(i32 10, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.9, align 4, !dbg !201
  %add.ptr17.10 = getelementptr inbounds i8, ptr %src, i64 352, !dbg !201
    #dbg_value(ptr %add.ptr17.10, !182, !DIExpression(), !188)
    #dbg_value(i32 11, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.10, align 4, !dbg !201
  %add.ptr17.11 = getelementptr inbounds i8, ptr %src, i64 384, !dbg !201
    #dbg_value(ptr %add.ptr17.11, !182, !DIExpression(), !188)
    #dbg_value(i32 12, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.11, align 4, !dbg !201
  %add.ptr17.12 = getelementptr inbounds i8, ptr %src, i64 416, !dbg !201
    #dbg_value(ptr %add.ptr17.12, !182, !DIExpression(), !188)
    #dbg_value(i32 13, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.12, align 4, !dbg !201
  %add.ptr17.13 = getelementptr inbounds i8, ptr %src, i64 448, !dbg !201
    #dbg_value(ptr %add.ptr17.13, !182, !DIExpression(), !188)
    #dbg_value(i32 14, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.13, align 4, !dbg !201
  %add.ptr17.14 = getelementptr inbounds i8, ptr %src, i64 480, !dbg !201
    #dbg_value(ptr %add.ptr17.14, !182, !DIExpression(), !188)
    #dbg_value(i32 15, !186, !DIExpression(), !200)
  store <4 x i32> %33, ptr %add.ptr17.14, align 4, !dbg !201
    #dbg_value(ptr %add.ptr17.14, !182, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !188)
    #dbg_value(i32 16, !186, !DIExpression(), !200)
  ret void, !dbg !204
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_p(ptr nocapture noundef %src) #2 !dbg !205 {
entry:
    #dbg_value(ptr %src, !207, !DIExpression(), !223)
    #dbg_value(i32 0, !208, !DIExpression(), !223)
    #dbg_value(i32 0, !209, !DIExpression(), !223)
    #dbg_value(i32 0, !210, !DIExpression(), !224)
  %invariant.gep = getelementptr inbounds i8, ptr %src, i64 255, !dbg !225
    #dbg_value(i64 0, !210, !DIExpression(), !224)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -24, !dbg !226
  %0 = load i8, ptr %arrayidx, align 1, !dbg !226
  %conv = zext i8 %0 to i32, !dbg !226
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 -26, !dbg !229
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !229
  %conv6 = zext i8 %1 to i32, !dbg !229
  %sub7 = sub nsw i32 %conv, %conv6, !dbg !230
    #dbg_value(i32 %sub7, !208, !DIExpression(), !223)
  %2 = load i8, ptr %invariant.gep, align 1, !dbg !231
  %conv15 = zext i8 %2 to i32, !dbg !231
  %arrayidx20 = getelementptr inbounds i8, ptr %src, i64 191, !dbg !232
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !232
  %conv21 = zext i8 %3 to i32, !dbg !232
  %sub22 = sub nsw i32 %conv15, %conv21, !dbg !233
    #dbg_value(i32 %sub22, !209, !DIExpression(), !223)
    #dbg_value(i64 1, !210, !DIExpression(), !224)
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 -23, !dbg !226
  %4 = load i8, ptr %arrayidx.1, align 1, !dbg !226
  %conv.1 = zext i8 %4 to i32, !dbg !226
  %arrayidx5.1 = getelementptr inbounds i8, ptr %src, i64 -27, !dbg !229
  %5 = load i8, ptr %arrayidx5.1, align 1, !dbg !229
  %conv6.1 = zext i8 %5 to i32, !dbg !229
  %sub7.1 = sub nsw i32 %conv.1, %conv6.1, !dbg !230
  %mul.1 = shl nsw i32 %sub7.1, 1, !dbg !234
  %add8.1 = add nsw i32 %mul.1, %sub7, !dbg !235
    #dbg_value(i32 %add8.1, !208, !DIExpression(), !223)
  %gep.1 = getelementptr inbounds i8, ptr %src, i64 287, !dbg !231
  %6 = load i8, ptr %gep.1, align 1, !dbg !231
  %conv15.1 = zext i8 %6 to i32, !dbg !231
  %arrayidx20.1 = getelementptr inbounds i8, ptr %src, i64 159, !dbg !232
  %7 = load i8, ptr %arrayidx20.1, align 1, !dbg !232
  %conv21.1 = zext i8 %7 to i32, !dbg !232
  %sub22.1 = sub nsw i32 %conv15.1, %conv21.1, !dbg !233
  %mul23.1 = shl nsw i32 %sub22.1, 1, !dbg !236
  %add24.1 = add nsw i32 %mul23.1, %sub22, !dbg !237
    #dbg_value(i32 %add24.1, !209, !DIExpression(), !223)
    #dbg_value(i64 2, !210, !DIExpression(), !224)
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 -22, !dbg !226
  %8 = load i8, ptr %arrayidx.2, align 1, !dbg !226
  %conv.2 = zext i8 %8 to i32, !dbg !226
  %arrayidx5.2 = getelementptr inbounds i8, ptr %src, i64 -28, !dbg !229
  %9 = load i8, ptr %arrayidx5.2, align 1, !dbg !229
  %conv6.2 = zext i8 %9 to i32, !dbg !229
  %sub7.2 = sub nsw i32 %conv.2, %conv6.2, !dbg !230
  %mul.2 = mul nsw i32 %sub7.2, 3, !dbg !234
  %add8.2 = add nsw i32 %mul.2, %add8.1, !dbg !235
    #dbg_value(i32 %add8.2, !208, !DIExpression(), !223)
  %gep.2 = getelementptr inbounds i8, ptr %src, i64 319, !dbg !231
  %10 = load i8, ptr %gep.2, align 1, !dbg !231
  %conv15.2 = zext i8 %10 to i32, !dbg !231
  %arrayidx20.2 = getelementptr inbounds i8, ptr %src, i64 127, !dbg !232
  %11 = load i8, ptr %arrayidx20.2, align 1, !dbg !232
  %conv21.2 = zext i8 %11 to i32, !dbg !232
  %sub22.2 = sub nsw i32 %conv15.2, %conv21.2, !dbg !233
  %mul23.2 = mul nsw i32 %sub22.2, 3, !dbg !236
  %add24.2 = add nsw i32 %mul23.2, %add24.1, !dbg !237
    #dbg_value(i32 %add24.2, !209, !DIExpression(), !223)
    #dbg_value(i64 3, !210, !DIExpression(), !224)
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 -21, !dbg !226
  %12 = load i8, ptr %arrayidx.3, align 1, !dbg !226
  %conv.3 = zext i8 %12 to i32, !dbg !226
  %arrayidx5.3 = getelementptr inbounds i8, ptr %src, i64 -29, !dbg !229
  %13 = load i8, ptr %arrayidx5.3, align 1, !dbg !229
  %conv6.3 = zext i8 %13 to i32, !dbg !229
  %sub7.3 = sub nsw i32 %conv.3, %conv6.3, !dbg !230
  %mul.3 = shl nsw i32 %sub7.3, 2, !dbg !234
  %add8.3 = add nsw i32 %mul.3, %add8.2, !dbg !235
    #dbg_value(i32 %add8.3, !208, !DIExpression(), !223)
  %gep.3 = getelementptr inbounds i8, ptr %src, i64 351, !dbg !231
  %14 = load i8, ptr %gep.3, align 1, !dbg !231
  %conv15.3 = zext i8 %14 to i32, !dbg !231
  %arrayidx20.3 = getelementptr inbounds i8, ptr %src, i64 95, !dbg !232
  %15 = load i8, ptr %arrayidx20.3, align 1, !dbg !232
  %conv21.3 = zext i8 %15 to i32, !dbg !232
  %sub22.3 = sub nsw i32 %conv15.3, %conv21.3, !dbg !233
  %mul23.3 = shl nsw i32 %sub22.3, 2, !dbg !236
  %add24.3 = add nsw i32 %mul23.3, %add24.2, !dbg !237
    #dbg_value(i32 %add24.3, !209, !DIExpression(), !223)
    #dbg_value(i64 4, !210, !DIExpression(), !224)
  %arrayidx.4 = getelementptr inbounds i8, ptr %src, i64 -20, !dbg !226
  %16 = load i8, ptr %arrayidx.4, align 1, !dbg !226
  %conv.4 = zext i8 %16 to i32, !dbg !226
  %arrayidx5.4 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !229
  %17 = load i8, ptr %arrayidx5.4, align 1, !dbg !229
  %conv6.4 = zext i8 %17 to i32, !dbg !229
  %sub7.4 = sub nsw i32 %conv.4, %conv6.4, !dbg !230
  %mul.4 = mul nsw i32 %sub7.4, 5, !dbg !234
  %add8.4 = add nsw i32 %mul.4, %add8.3, !dbg !235
    #dbg_value(i32 %add8.4, !208, !DIExpression(), !223)
  %gep.4 = getelementptr inbounds i8, ptr %src, i64 383, !dbg !231
  %18 = load i8, ptr %gep.4, align 1, !dbg !231
  %conv15.4 = zext i8 %18 to i32, !dbg !231
  %arrayidx20.4 = getelementptr inbounds i8, ptr %src, i64 63, !dbg !232
  %19 = load i8, ptr %arrayidx20.4, align 1, !dbg !232
  %conv21.4 = zext i8 %19 to i32, !dbg !232
  %sub22.4 = sub nsw i32 %conv15.4, %conv21.4, !dbg !233
  %mul23.4 = mul nsw i32 %sub22.4, 5, !dbg !236
  %add24.4 = add nsw i32 %mul23.4, %add24.3, !dbg !237
    #dbg_value(i32 %add24.4, !209, !DIExpression(), !223)
    #dbg_value(i64 5, !210, !DIExpression(), !224)
  %arrayidx.5 = getelementptr inbounds i8, ptr %src, i64 -19, !dbg !226
  %20 = load i8, ptr %arrayidx.5, align 1, !dbg !226
  %conv.5 = zext i8 %20 to i32, !dbg !226
  %arrayidx5.5 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !229
  %21 = load i8, ptr %arrayidx5.5, align 1, !dbg !229
  %conv6.5 = zext i8 %21 to i32, !dbg !229
  %sub7.5 = sub nsw i32 %conv.5, %conv6.5, !dbg !230
  %mul.5 = mul nsw i32 %sub7.5, 6, !dbg !234
  %add8.5 = add nsw i32 %mul.5, %add8.4, !dbg !235
    #dbg_value(i32 %add8.5, !208, !DIExpression(), !223)
  %gep.5 = getelementptr inbounds i8, ptr %src, i64 415, !dbg !231
  %22 = load i8, ptr %gep.5, align 1, !dbg !231
  %conv15.5 = zext i8 %22 to i32, !dbg !231
  %arrayidx20.5 = getelementptr inbounds i8, ptr %src, i64 31, !dbg !232
  %23 = load i8, ptr %arrayidx20.5, align 1, !dbg !232
  %conv21.5 = zext i8 %23 to i32, !dbg !232
  %sub22.5 = sub nsw i32 %conv15.5, %conv21.5, !dbg !233
  %mul23.5 = mul nsw i32 %sub22.5, 6, !dbg !236
  %add24.5 = add nsw i32 %mul23.5, %add24.4, !dbg !237
    #dbg_value(i32 %add24.5, !209, !DIExpression(), !223)
    #dbg_value(i64 6, !210, !DIExpression(), !224)
  %arrayidx.6 = getelementptr inbounds i8, ptr %src, i64 -18, !dbg !226
  %24 = load i8, ptr %arrayidx.6, align 1, !dbg !226
  %conv.6 = zext i8 %24 to i32, !dbg !226
  %arrayidx5.6 = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !229
  %25 = load i8, ptr %arrayidx5.6, align 1, !dbg !229
  %conv6.6 = zext i8 %25 to i32, !dbg !229
  %sub7.6 = sub nsw i32 %conv.6, %conv6.6, !dbg !230
  %mul.6 = mul nsw i32 %sub7.6, 7, !dbg !234
  %add8.6 = add nsw i32 %mul.6, %add8.5, !dbg !235
    #dbg_value(i32 %add8.6, !208, !DIExpression(), !223)
  %gep.6 = getelementptr inbounds i8, ptr %src, i64 447, !dbg !231
  %26 = load i8, ptr %gep.6, align 1, !dbg !231
  %conv15.6 = zext i8 %26 to i32, !dbg !231
  %arrayidx20.6 = getelementptr inbounds i8, ptr %src, i64 -1, !dbg !232
  %27 = load i8, ptr %arrayidx20.6, align 1, !dbg !232
  %conv21.6 = zext i8 %27 to i32, !dbg !232
  %sub22.6 = sub nsw i32 %conv15.6, %conv21.6, !dbg !233
  %mul23.6 = mul nsw i32 %sub22.6, 7, !dbg !236
  %add24.6 = add nsw i32 %mul23.6, %add24.5, !dbg !237
    #dbg_value(i32 %add24.6, !209, !DIExpression(), !223)
    #dbg_value(i64 7, !210, !DIExpression(), !224)
  %arrayidx.7 = getelementptr inbounds i8, ptr %src, i64 -17, !dbg !226
  %28 = load i8, ptr %arrayidx.7, align 1, !dbg !226
  %conv.7 = zext i8 %28 to i32, !dbg !226
  %arrayidx5.7 = getelementptr inbounds i8, ptr %src, i64 -33, !dbg !229
  %29 = load i8, ptr %arrayidx5.7, align 1, !dbg !229
  %conv6.7 = zext i8 %29 to i32, !dbg !229
  %sub7.7 = sub nsw i32 %conv.7, %conv6.7, !dbg !230
  %mul.7 = shl nsw i32 %sub7.7, 3, !dbg !234
  %add8.7 = add nsw i32 %mul.7, %add8.6, !dbg !235
    #dbg_value(i32 %add8.7, !208, !DIExpression(), !223)
  %gep.7 = getelementptr inbounds i8, ptr %src, i64 479, !dbg !231
  %30 = load i8, ptr %gep.7, align 1, !dbg !231
  %conv15.7 = zext i8 %30 to i32, !dbg !231
  %sub22.7 = sub nsw i32 %conv15.7, %conv6.7, !dbg !233
  %mul23.7 = shl nsw i32 %sub22.7, 3, !dbg !236
  %add24.7 = add nsw i32 %mul23.7, %add24.6, !dbg !237
    #dbg_value(i32 %add24.7, !209, !DIExpression(), !223)
    #dbg_value(i64 8, !210, !DIExpression(), !224)
  %add29 = add nuw nsw i32 %conv.7, %conv15.7, !dbg !238
  %mul30 = shl nuw nsw i32 %add29, 4, !dbg !239
    #dbg_value(i32 %mul30, !212, !DIExpression(), !223)
  %mul31 = mul nsw i32 %add8.7, 5, !dbg !240
  %add32 = add nsw i32 %mul31, 32, !dbg !241
  %shr = ashr i32 %add32, 6, !dbg !242
    #dbg_value(i32 %shr, !213, !DIExpression(), !223)
  %mul33 = mul nsw i32 %add24.7, 5, !dbg !243
  %add34 = add nsw i32 %mul33, 32, !dbg !244
  %shr35 = ashr i32 %add34, 6, !dbg !245
    #dbg_value(i32 %shr35, !214, !DIExpression(), !223)
  %reass.add = add nsw i32 %shr, %shr35
  %reass.mul = mul nsw i32 %reass.add, -7
  %sub39 = add nsw i32 %reass.mul, 16, !dbg !246
  %add40 = add nsw i32 %sub39, %mul30, !dbg !247
    #dbg_value(i32 %add40, !215, !DIExpression(), !223)
    #dbg_value(i32 0, !216, !DIExpression(), !248)
  %31 = shl nsw i32 %shr35, 1
  %32 = mul nsw i32 %shr35, 3
  br label %vector.body, !dbg !249

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %.cast = trunc i64 %index to i32, !dbg !249
  %33 = mul i32 %shr35, %.cast, !dbg !249
  %offset.idx102 = shl i64 %index, 5, !dbg !249
  %34 = or disjoint i64 %offset.idx102, 32, !dbg !249
  %35 = or disjoint i64 %offset.idx102, 64, !dbg !249
  %36 = or disjoint i64 %offset.idx102, 96, !dbg !249
  %next.gep = getelementptr i8, ptr %src, i64 %offset.idx102
  %next.gep103 = getelementptr i8, ptr %src, i64 %34
  %next.gep104 = getelementptr i8, ptr %src, i64 %35
  %next.gep105 = getelementptr i8, ptr %src, i64 %36
  %offset.idx = add i32 %add40, %33, !dbg !249
  %37 = add nsw i32 %offset.idx, %shr, !dbg !250
  %38 = add nsw i32 %37, %shr, !dbg !250
  %39 = add nsw i32 %38, %shr, !dbg !250
  %40 = add nsw i32 %39, %shr, !dbg !250
  %41 = add nsw i32 %40, %shr, !dbg !250
  %42 = add nsw i32 %41, %shr, !dbg !250
  %43 = add nsw i32 %42, %shr, !dbg !250
  %44 = add nsw i32 %43, %shr, !dbg !250
  %45 = add nsw i32 %44, %shr, !dbg !250
  %46 = add nsw i32 %45, %shr, !dbg !250
  %47 = add nsw i32 %46, %shr, !dbg !250
  %48 = add nsw i32 %47, %shr, !dbg !250
  %49 = add nsw i32 %48, %shr, !dbg !250
  %50 = add nsw i32 %49, %shr, !dbg !250
  %51 = add nsw i32 %50, %shr, !dbg !250
  %52 = insertelement <16 x i32> poison, i32 %offset.idx, i64 0, !dbg !253
  %53 = insertelement <16 x i32> %52, i32 %37, i64 1, !dbg !253
  %54 = insertelement <16 x i32> %53, i32 %38, i64 2, !dbg !253
  %55 = insertelement <16 x i32> %54, i32 %39, i64 3, !dbg !253
  %56 = insertelement <16 x i32> %55, i32 %40, i64 4, !dbg !253
  %57 = insertelement <16 x i32> %56, i32 %41, i64 5, !dbg !253
  %58 = insertelement <16 x i32> %57, i32 %42, i64 6, !dbg !253
  %59 = insertelement <16 x i32> %58, i32 %43, i64 7, !dbg !253
  %60 = insertelement <16 x i32> %59, i32 %44, i64 8, !dbg !253
  %61 = insertelement <16 x i32> %60, i32 %45, i64 9, !dbg !253
  %62 = insertelement <16 x i32> %61, i32 %46, i64 10, !dbg !253
  %63 = insertelement <16 x i32> %62, i32 %47, i64 11, !dbg !253
  %64 = insertelement <16 x i32> %63, i32 %48, i64 12, !dbg !253
  %65 = insertelement <16 x i32> %64, i32 %49, i64 13, !dbg !253
  %66 = insertelement <16 x i32> %65, i32 %50, i64 14, !dbg !253
  %67 = insertelement <16 x i32> %66, i32 %51, i64 15, !dbg !253
  %68 = ashr <16 x i32> %67, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !253
  %69 = icmp ult <16 x i32> %68, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>, !dbg !254
  %70 = icmp sgt <16 x i32> %68, zeroinitializer, !dbg !261
  %71 = sext <16 x i1> %70 to <16 x i32>, !dbg !261
  %72 = select <16 x i1> %69, <16 x i32> %68, <16 x i32> %71, !dbg !261
  %73 = trunc <16 x i32> %72 to <16 x i8>, !dbg !261
  store <16 x i8> %73, ptr %next.gep, align 1, !dbg !262
  %74 = add i32 %offset.idx, %shr35, !dbg !249
  %75 = add nsw i32 %74, %shr, !dbg !250
  %76 = add nsw i32 %75, %shr, !dbg !250
  %77 = add nsw i32 %76, %shr, !dbg !250
  %78 = add nsw i32 %77, %shr, !dbg !250
  %79 = add nsw i32 %78, %shr, !dbg !250
  %80 = add nsw i32 %79, %shr, !dbg !250
  %81 = add nsw i32 %80, %shr, !dbg !250
  %82 = add nsw i32 %81, %shr, !dbg !250
  %83 = add nsw i32 %82, %shr, !dbg !250
  %84 = add nsw i32 %83, %shr, !dbg !250
  %85 = add nsw i32 %84, %shr, !dbg !250
  %86 = add nsw i32 %85, %shr, !dbg !250
  %87 = add nsw i32 %86, %shr, !dbg !250
  %88 = add nsw i32 %87, %shr, !dbg !250
  %89 = add nsw i32 %88, %shr, !dbg !250
  %90 = insertelement <16 x i32> poison, i32 %74, i64 0, !dbg !253
  %91 = insertelement <16 x i32> %90, i32 %75, i64 1, !dbg !253
  %92 = insertelement <16 x i32> %91, i32 %76, i64 2, !dbg !253
  %93 = insertelement <16 x i32> %92, i32 %77, i64 3, !dbg !253
  %94 = insertelement <16 x i32> %93, i32 %78, i64 4, !dbg !253
  %95 = insertelement <16 x i32> %94, i32 %79, i64 5, !dbg !253
  %96 = insertelement <16 x i32> %95, i32 %80, i64 6, !dbg !253
  %97 = insertelement <16 x i32> %96, i32 %81, i64 7, !dbg !253
  %98 = insertelement <16 x i32> %97, i32 %82, i64 8, !dbg !253
  %99 = insertelement <16 x i32> %98, i32 %83, i64 9, !dbg !253
  %100 = insertelement <16 x i32> %99, i32 %84, i64 10, !dbg !253
  %101 = insertelement <16 x i32> %100, i32 %85, i64 11, !dbg !253
  %102 = insertelement <16 x i32> %101, i32 %86, i64 12, !dbg !253
  %103 = insertelement <16 x i32> %102, i32 %87, i64 13, !dbg !253
  %104 = insertelement <16 x i32> %103, i32 %88, i64 14, !dbg !253
  %105 = insertelement <16 x i32> %104, i32 %89, i64 15, !dbg !253
  %106 = ashr <16 x i32> %105, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !253
  %107 = icmp ult <16 x i32> %106, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>, !dbg !254
  %108 = icmp sgt <16 x i32> %106, zeroinitializer, !dbg !261
  %109 = sext <16 x i1> %108 to <16 x i32>, !dbg !261
  %110 = select <16 x i1> %107, <16 x i32> %106, <16 x i32> %109, !dbg !261
  %111 = trunc <16 x i32> %110 to <16 x i8>, !dbg !261
  store <16 x i8> %111, ptr %next.gep103, align 1, !dbg !262
  %112 = add i32 %offset.idx, %31, !dbg !249
  %113 = add nsw i32 %112, %shr, !dbg !250
  %114 = add nsw i32 %113, %shr, !dbg !250
  %115 = add nsw i32 %114, %shr, !dbg !250
  %116 = add nsw i32 %115, %shr, !dbg !250
  %117 = add nsw i32 %116, %shr, !dbg !250
  %118 = add nsw i32 %117, %shr, !dbg !250
  %119 = add nsw i32 %118, %shr, !dbg !250
  %120 = add nsw i32 %119, %shr, !dbg !250
  %121 = add nsw i32 %120, %shr, !dbg !250
  %122 = add nsw i32 %121, %shr, !dbg !250
  %123 = add nsw i32 %122, %shr, !dbg !250
  %124 = add nsw i32 %123, %shr, !dbg !250
  %125 = add nsw i32 %124, %shr, !dbg !250
  %126 = add nsw i32 %125, %shr, !dbg !250
  %127 = add nsw i32 %126, %shr, !dbg !250
  %128 = insertelement <16 x i32> poison, i32 %112, i64 0, !dbg !253
  %129 = insertelement <16 x i32> %128, i32 %113, i64 1, !dbg !253
  %130 = insertelement <16 x i32> %129, i32 %114, i64 2, !dbg !253
  %131 = insertelement <16 x i32> %130, i32 %115, i64 3, !dbg !253
  %132 = insertelement <16 x i32> %131, i32 %116, i64 4, !dbg !253
  %133 = insertelement <16 x i32> %132, i32 %117, i64 5, !dbg !253
  %134 = insertelement <16 x i32> %133, i32 %118, i64 6, !dbg !253
  %135 = insertelement <16 x i32> %134, i32 %119, i64 7, !dbg !253
  %136 = insertelement <16 x i32> %135, i32 %120, i64 8, !dbg !253
  %137 = insertelement <16 x i32> %136, i32 %121, i64 9, !dbg !253
  %138 = insertelement <16 x i32> %137, i32 %122, i64 10, !dbg !253
  %139 = insertelement <16 x i32> %138, i32 %123, i64 11, !dbg !253
  %140 = insertelement <16 x i32> %139, i32 %124, i64 12, !dbg !253
  %141 = insertelement <16 x i32> %140, i32 %125, i64 13, !dbg !253
  %142 = insertelement <16 x i32> %141, i32 %126, i64 14, !dbg !253
  %143 = insertelement <16 x i32> %142, i32 %127, i64 15, !dbg !253
  %144 = ashr <16 x i32> %143, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !253
  %145 = icmp ult <16 x i32> %144, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>, !dbg !254
  %146 = icmp sgt <16 x i32> %144, zeroinitializer, !dbg !261
  %147 = sext <16 x i1> %146 to <16 x i32>, !dbg !261
  %148 = select <16 x i1> %145, <16 x i32> %144, <16 x i32> %147, !dbg !261
  %149 = trunc <16 x i32> %148 to <16 x i8>, !dbg !261
  store <16 x i8> %149, ptr %next.gep104, align 1, !dbg !262
  %150 = add i32 %offset.idx, %32, !dbg !249
  %151 = add nsw i32 %150, %shr, !dbg !250
  %152 = add nsw i32 %151, %shr, !dbg !250
  %153 = add nsw i32 %152, %shr, !dbg !250
  %154 = add nsw i32 %153, %shr, !dbg !250
  %155 = add nsw i32 %154, %shr, !dbg !250
  %156 = add nsw i32 %155, %shr, !dbg !250
  %157 = add nsw i32 %156, %shr, !dbg !250
  %158 = add nsw i32 %157, %shr, !dbg !250
  %159 = add nsw i32 %158, %shr, !dbg !250
  %160 = add nsw i32 %159, %shr, !dbg !250
  %161 = add nsw i32 %160, %shr, !dbg !250
  %162 = add nsw i32 %161, %shr, !dbg !250
  %163 = add nsw i32 %162, %shr, !dbg !250
  %164 = add nsw i32 %163, %shr, !dbg !250
  %165 = add nsw i32 %164, %shr, !dbg !250
  %166 = insertelement <16 x i32> poison, i32 %150, i64 0, !dbg !253
  %167 = insertelement <16 x i32> %166, i32 %151, i64 1, !dbg !253
  %168 = insertelement <16 x i32> %167, i32 %152, i64 2, !dbg !253
  %169 = insertelement <16 x i32> %168, i32 %153, i64 3, !dbg !253
  %170 = insertelement <16 x i32> %169, i32 %154, i64 4, !dbg !253
  %171 = insertelement <16 x i32> %170, i32 %155, i64 5, !dbg !253
  %172 = insertelement <16 x i32> %171, i32 %156, i64 6, !dbg !253
  %173 = insertelement <16 x i32> %172, i32 %157, i64 7, !dbg !253
  %174 = insertelement <16 x i32> %173, i32 %158, i64 8, !dbg !253
  %175 = insertelement <16 x i32> %174, i32 %159, i64 9, !dbg !253
  %176 = insertelement <16 x i32> %175, i32 %160, i64 10, !dbg !253
  %177 = insertelement <16 x i32> %176, i32 %161, i64 11, !dbg !253
  %178 = insertelement <16 x i32> %177, i32 %162, i64 12, !dbg !253
  %179 = insertelement <16 x i32> %178, i32 %163, i64 13, !dbg !253
  %180 = insertelement <16 x i32> %179, i32 %164, i64 14, !dbg !253
  %181 = insertelement <16 x i32> %180, i32 %165, i64 15, !dbg !253
  %182 = ashr <16 x i32> %181, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !253
  %183 = icmp ult <16 x i32> %182, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>, !dbg !254
  %184 = icmp sgt <16 x i32> %182, zeroinitializer, !dbg !261
  %185 = sext <16 x i1> %184 to <16 x i32>, !dbg !261
  %186 = select <16 x i1> %183, <16 x i32> %182, <16 x i32> %185, !dbg !261
  %187 = trunc <16 x i32> %186 to <16 x i8>, !dbg !261
  store <16 x i8> %187, ptr %next.gep105, align 1, !dbg !262
  %index.next = add nuw i64 %index, 4
  %188 = icmp eq i64 %index.next, 16
  br i1 %188, label %for.cond.cleanup44, label %vector.body, !llvm.loop !263

for.cond.cleanup44:                               ; preds = %vector.body
  ret void, !dbg !267
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_16x16_dc_left(ptr nocapture noundef %src) #1 !dbg !268 {
entry:
    #dbg_value(ptr %src, !270, !DIExpression(), !276)
    #dbg_value(i32 0, !271, !DIExpression(), !276)
    #dbg_value(i32 0, !272, !DIExpression(), !277)
  %invariant.gep = getelementptr i8, ptr %src, i64 -1, !dbg !278
    #dbg_value(i32 0, !272, !DIExpression(), !277)
    #dbg_value(i32 0, !271, !DIExpression(), !276)
    #dbg_value(i64 0, !272, !DIExpression(), !277)
    #dbg_value(i32 0, !271, !DIExpression(), !276)
  %0 = load i8, ptr %invariant.gep, align 1, !dbg !279
  %conv = zext i8 %0 to i32, !dbg !279
    #dbg_value(i32 %conv, !271, !DIExpression(), !276)
    #dbg_value(i64 1, !272, !DIExpression(), !277)
  %gep.1 = getelementptr i8, ptr %src, i64 31, !dbg !279
  %1 = load i8, ptr %gep.1, align 1, !dbg !279
  %conv.1 = zext i8 %1 to i32, !dbg !279
  %add1.1 = add nuw nsw i32 %conv, %conv.1, !dbg !281
    #dbg_value(i32 %add1.1, !271, !DIExpression(), !276)
    #dbg_value(i64 2, !272, !DIExpression(), !277)
  %gep.2 = getelementptr i8, ptr %src, i64 63, !dbg !279
  %2 = load i8, ptr %gep.2, align 1, !dbg !279
  %conv.2 = zext i8 %2 to i32, !dbg !279
  %add1.2 = add nuw nsw i32 %add1.1, %conv.2, !dbg !281
    #dbg_value(i32 %add1.2, !271, !DIExpression(), !276)
    #dbg_value(i64 3, !272, !DIExpression(), !277)
  %gep.3 = getelementptr i8, ptr %src, i64 95, !dbg !279
  %3 = load i8, ptr %gep.3, align 1, !dbg !279
  %conv.3 = zext i8 %3 to i32, !dbg !279
  %add1.3 = add nuw nsw i32 %add1.2, %conv.3, !dbg !281
    #dbg_value(i32 %add1.3, !271, !DIExpression(), !276)
    #dbg_value(i64 4, !272, !DIExpression(), !277)
  %gep.4 = getelementptr i8, ptr %src, i64 127, !dbg !279
  %4 = load i8, ptr %gep.4, align 1, !dbg !279
  %conv.4 = zext i8 %4 to i32, !dbg !279
  %add1.4 = add nuw nsw i32 %add1.3, %conv.4, !dbg !281
    #dbg_value(i32 %add1.4, !271, !DIExpression(), !276)
    #dbg_value(i64 5, !272, !DIExpression(), !277)
  %gep.5 = getelementptr i8, ptr %src, i64 159, !dbg !279
  %5 = load i8, ptr %gep.5, align 1, !dbg !279
  %conv.5 = zext i8 %5 to i32, !dbg !279
  %add1.5 = add nuw nsw i32 %add1.4, %conv.5, !dbg !281
    #dbg_value(i32 %add1.5, !271, !DIExpression(), !276)
    #dbg_value(i64 6, !272, !DIExpression(), !277)
  %gep.6 = getelementptr i8, ptr %src, i64 191, !dbg !279
  %6 = load i8, ptr %gep.6, align 1, !dbg !279
  %conv.6 = zext i8 %6 to i32, !dbg !279
  %add1.6 = add nuw nsw i32 %add1.5, %conv.6, !dbg !281
    #dbg_value(i32 %add1.6, !271, !DIExpression(), !276)
    #dbg_value(i64 7, !272, !DIExpression(), !277)
  %gep.7 = getelementptr i8, ptr %src, i64 223, !dbg !279
  %7 = load i8, ptr %gep.7, align 1, !dbg !279
  %conv.7 = zext i8 %7 to i32, !dbg !279
  %add1.7 = add nuw nsw i32 %add1.6, %conv.7, !dbg !281
    #dbg_value(i32 %add1.7, !271, !DIExpression(), !276)
    #dbg_value(i64 8, !272, !DIExpression(), !277)
  %gep.8 = getelementptr i8, ptr %src, i64 255, !dbg !279
  %8 = load i8, ptr %gep.8, align 1, !dbg !279
  %conv.8 = zext i8 %8 to i32, !dbg !279
  %add1.8 = add nuw nsw i32 %add1.7, %conv.8, !dbg !281
    #dbg_value(i32 %add1.8, !271, !DIExpression(), !276)
    #dbg_value(i64 9, !272, !DIExpression(), !277)
  %gep.9 = getelementptr i8, ptr %src, i64 287, !dbg !279
  %9 = load i8, ptr %gep.9, align 1, !dbg !279
  %conv.9 = zext i8 %9 to i32, !dbg !279
  %add1.9 = add nuw nsw i32 %add1.8, %conv.9, !dbg !281
    #dbg_value(i32 %add1.9, !271, !DIExpression(), !276)
    #dbg_value(i64 10, !272, !DIExpression(), !277)
  %gep.10 = getelementptr i8, ptr %src, i64 319, !dbg !279
  %10 = load i8, ptr %gep.10, align 1, !dbg !279
  %conv.10 = zext i8 %10 to i32, !dbg !279
  %add1.10 = add nuw nsw i32 %add1.9, %conv.10, !dbg !281
    #dbg_value(i32 %add1.10, !271, !DIExpression(), !276)
    #dbg_value(i64 11, !272, !DIExpression(), !277)
  %gep.11 = getelementptr i8, ptr %src, i64 351, !dbg !279
  %11 = load i8, ptr %gep.11, align 1, !dbg !279
  %conv.11 = zext i8 %11 to i32, !dbg !279
  %add1.11 = add nuw nsw i32 %add1.10, %conv.11, !dbg !281
    #dbg_value(i32 %add1.11, !271, !DIExpression(), !276)
    #dbg_value(i64 12, !272, !DIExpression(), !277)
  %gep.12 = getelementptr i8, ptr %src, i64 383, !dbg !279
  %12 = load i8, ptr %gep.12, align 1, !dbg !279
  %conv.12 = zext i8 %12 to i32, !dbg !279
  %add1.12 = add nuw nsw i32 %add1.11, %conv.12, !dbg !281
    #dbg_value(i32 %add1.12, !271, !DIExpression(), !276)
    #dbg_value(i64 13, !272, !DIExpression(), !277)
  %gep.13 = getelementptr i8, ptr %src, i64 415, !dbg !279
  %13 = load i8, ptr %gep.13, align 1, !dbg !279
  %conv.13 = zext i8 %13 to i32, !dbg !279
  %add1.13 = add nuw nsw i32 %add1.12, %conv.13, !dbg !281
    #dbg_value(i32 %add1.13, !271, !DIExpression(), !276)
    #dbg_value(i64 14, !272, !DIExpression(), !277)
  %gep.14 = getelementptr i8, ptr %src, i64 447, !dbg !279
  %14 = load i8, ptr %gep.14, align 1, !dbg !279
  %conv.14 = zext i8 %14 to i32, !dbg !279
  %add1.14 = add nuw nsw i32 %add1.13, %conv.14, !dbg !281
    #dbg_value(i32 %add1.14, !271, !DIExpression(), !276)
    #dbg_value(i64 15, !272, !DIExpression(), !277)
  %gep.15 = getelementptr i8, ptr %src, i64 479, !dbg !279
  %15 = load i8, ptr %gep.15, align 1, !dbg !279
  %conv.15 = zext i8 %15 to i32, !dbg !279
  %add1.15 = add nuw nsw i32 %add1.14, %conv.15, !dbg !281
    #dbg_value(i32 %add1.15, !271, !DIExpression(), !276)
    #dbg_value(i64 16, !272, !DIExpression(), !277)
  %add2 = add nuw nsw i32 %add1.15, 8, !dbg !282
  %shr = lshr i32 %add2, 4, !dbg !283
  %mul3 = mul nuw i32 %shr, 16843009, !dbg !284
    #dbg_value(i32 %mul3, !271, !DIExpression(), !276)
    #dbg_value(i32 0, !274, !DIExpression(), !285)
    #dbg_value(ptr %src, !270, !DIExpression(), !276)
    #dbg_value(i32 0, !274, !DIExpression(), !285)
    #dbg_value(ptr %src, !270, !DIExpression(), !276)
  %16 = insertelement <4 x i32> poison, i32 %mul3, i64 0, !dbg !286
  %17 = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !286
  store <4 x i32> %17, ptr %src, align 4, !dbg !286
  %add.ptr13 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !286
    #dbg_value(ptr %add.ptr13, !270, !DIExpression(), !276)
    #dbg_value(i32 1, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13, align 4, !dbg !286
  %add.ptr13.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !286
    #dbg_value(ptr %add.ptr13.1, !270, !DIExpression(), !276)
    #dbg_value(i32 2, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.1, align 4, !dbg !286
  %add.ptr13.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !286
    #dbg_value(ptr %add.ptr13.2, !270, !DIExpression(), !276)
    #dbg_value(i32 3, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.2, align 4, !dbg !286
  %add.ptr13.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !286
    #dbg_value(ptr %add.ptr13.3, !270, !DIExpression(), !276)
    #dbg_value(i32 4, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.3, align 4, !dbg !286
  %add.ptr13.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !286
    #dbg_value(ptr %add.ptr13.4, !270, !DIExpression(), !276)
    #dbg_value(i32 5, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.4, align 4, !dbg !286
  %add.ptr13.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !286
    #dbg_value(ptr %add.ptr13.5, !270, !DIExpression(), !276)
    #dbg_value(i32 6, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.5, align 4, !dbg !286
  %add.ptr13.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !286
    #dbg_value(ptr %add.ptr13.6, !270, !DIExpression(), !276)
    #dbg_value(i32 7, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.6, align 4, !dbg !286
  %add.ptr13.7 = getelementptr inbounds i8, ptr %src, i64 256, !dbg !286
    #dbg_value(ptr %add.ptr13.7, !270, !DIExpression(), !276)
    #dbg_value(i32 8, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.7, align 4, !dbg !286
  %add.ptr13.8 = getelementptr inbounds i8, ptr %src, i64 288, !dbg !286
    #dbg_value(ptr %add.ptr13.8, !270, !DIExpression(), !276)
    #dbg_value(i32 9, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.8, align 4, !dbg !286
  %add.ptr13.9 = getelementptr inbounds i8, ptr %src, i64 320, !dbg !286
    #dbg_value(ptr %add.ptr13.9, !270, !DIExpression(), !276)
    #dbg_value(i32 10, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.9, align 4, !dbg !286
  %add.ptr13.10 = getelementptr inbounds i8, ptr %src, i64 352, !dbg !286
    #dbg_value(ptr %add.ptr13.10, !270, !DIExpression(), !276)
    #dbg_value(i32 11, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.10, align 4, !dbg !286
  %add.ptr13.11 = getelementptr inbounds i8, ptr %src, i64 384, !dbg !286
    #dbg_value(ptr %add.ptr13.11, !270, !DIExpression(), !276)
    #dbg_value(i32 12, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.11, align 4, !dbg !286
  %add.ptr13.12 = getelementptr inbounds i8, ptr %src, i64 416, !dbg !286
    #dbg_value(ptr %add.ptr13.12, !270, !DIExpression(), !276)
    #dbg_value(i32 13, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.12, align 4, !dbg !286
  %add.ptr13.13 = getelementptr inbounds i8, ptr %src, i64 448, !dbg !286
    #dbg_value(ptr %add.ptr13.13, !270, !DIExpression(), !276)
    #dbg_value(i32 14, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.13, align 4, !dbg !286
  %add.ptr13.14 = getelementptr inbounds i8, ptr %src, i64 480, !dbg !286
    #dbg_value(ptr %add.ptr13.14, !270, !DIExpression(), !276)
    #dbg_value(i32 15, !274, !DIExpression(), !285)
  store <4 x i32> %17, ptr %add.ptr13.14, align 4, !dbg !286
    #dbg_value(ptr %add.ptr13.14, !270, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !276)
    #dbg_value(i32 16, !274, !DIExpression(), !285)
  ret void, !dbg !289
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_16x16_dc_top(ptr nocapture noundef %src) #1 !dbg !290 {
entry:
    #dbg_value(ptr %src, !292, !DIExpression(), !298)
    #dbg_value(i32 0, !293, !DIExpression(), !298)
    #dbg_value(i32 0, !294, !DIExpression(), !299)
    #dbg_value(i64 0, !294, !DIExpression(), !299)
    #dbg_value(i32 0, !293, !DIExpression(), !298)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !300
    #dbg_value(i8 poison, !293, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !298)
    #dbg_value(i64 1, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 2, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 3, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 4, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 5, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 6, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 7, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 8, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 9, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 10, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 11, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 12, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 13, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 14, !294, !DIExpression(), !299)
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 15, !294, !DIExpression(), !299)
  %0 = load <16 x i8>, ptr %arrayidx, align 1, !dbg !300
    #dbg_value(i32 poison, !293, !DIExpression(), !298)
    #dbg_value(i64 16, !294, !DIExpression(), !299)
  %1 = zext <16 x i8> %0 to <16 x i32>, !dbg !302
  %2 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %1), !dbg !302
  %op.rdx = add i32 %2, 8, !dbg !302
  %shr = lshr i32 %op.rdx, 4, !dbg !303
  %mul = mul nuw i32 %shr, 16843009, !dbg !304
    #dbg_value(i32 %mul, !293, !DIExpression(), !298)
    #dbg_value(i32 0, !296, !DIExpression(), !305)
    #dbg_value(ptr %src, !292, !DIExpression(), !298)
    #dbg_value(i32 0, !296, !DIExpression(), !305)
    #dbg_value(ptr %src, !292, !DIExpression(), !298)
  %3 = insertelement <4 x i32> poison, i32 %mul, i64 0, !dbg !306
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !306
  store <4 x i32> %4, ptr %src, align 4, !dbg !306
  %add.ptr11 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !306
    #dbg_value(ptr %add.ptr11, !292, !DIExpression(), !298)
    #dbg_value(i32 1, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11, align 4, !dbg !306
  %add.ptr11.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !306
    #dbg_value(ptr %add.ptr11.1, !292, !DIExpression(), !298)
    #dbg_value(i32 2, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.1, align 4, !dbg !306
  %add.ptr11.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !306
    #dbg_value(ptr %add.ptr11.2, !292, !DIExpression(), !298)
    #dbg_value(i32 3, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.2, align 4, !dbg !306
  %add.ptr11.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !306
    #dbg_value(ptr %add.ptr11.3, !292, !DIExpression(), !298)
    #dbg_value(i32 4, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.3, align 4, !dbg !306
  %add.ptr11.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !306
    #dbg_value(ptr %add.ptr11.4, !292, !DIExpression(), !298)
    #dbg_value(i32 5, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.4, align 4, !dbg !306
  %add.ptr11.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !306
    #dbg_value(ptr %add.ptr11.5, !292, !DIExpression(), !298)
    #dbg_value(i32 6, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.5, align 4, !dbg !306
  %add.ptr11.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !306
    #dbg_value(ptr %add.ptr11.6, !292, !DIExpression(), !298)
    #dbg_value(i32 7, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.6, align 4, !dbg !306
  %add.ptr11.7 = getelementptr inbounds i8, ptr %src, i64 256, !dbg !306
    #dbg_value(ptr %add.ptr11.7, !292, !DIExpression(), !298)
    #dbg_value(i32 8, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.7, align 4, !dbg !306
  %add.ptr11.8 = getelementptr inbounds i8, ptr %src, i64 288, !dbg !306
    #dbg_value(ptr %add.ptr11.8, !292, !DIExpression(), !298)
    #dbg_value(i32 9, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.8, align 4, !dbg !306
  %add.ptr11.9 = getelementptr inbounds i8, ptr %src, i64 320, !dbg !306
    #dbg_value(ptr %add.ptr11.9, !292, !DIExpression(), !298)
    #dbg_value(i32 10, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.9, align 4, !dbg !306
  %add.ptr11.10 = getelementptr inbounds i8, ptr %src, i64 352, !dbg !306
    #dbg_value(ptr %add.ptr11.10, !292, !DIExpression(), !298)
    #dbg_value(i32 11, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.10, align 4, !dbg !306
  %add.ptr11.11 = getelementptr inbounds i8, ptr %src, i64 384, !dbg !306
    #dbg_value(ptr %add.ptr11.11, !292, !DIExpression(), !298)
    #dbg_value(i32 12, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.11, align 4, !dbg !306
  %add.ptr11.12 = getelementptr inbounds i8, ptr %src, i64 416, !dbg !306
    #dbg_value(ptr %add.ptr11.12, !292, !DIExpression(), !298)
    #dbg_value(i32 13, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.12, align 4, !dbg !306
  %add.ptr11.13 = getelementptr inbounds i8, ptr %src, i64 448, !dbg !306
    #dbg_value(ptr %add.ptr11.13, !292, !DIExpression(), !298)
    #dbg_value(i32 14, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.13, align 4, !dbg !306
  %add.ptr11.14 = getelementptr inbounds i8, ptr %src, i64 480, !dbg !306
    #dbg_value(ptr %add.ptr11.14, !292, !DIExpression(), !298)
    #dbg_value(i32 15, !296, !DIExpression(), !305)
  store <4 x i32> %4, ptr %add.ptr11.14, align 4, !dbg !306
    #dbg_value(ptr %add.ptr11.14, !292, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !298)
    #dbg_value(i32 16, !296, !DIExpression(), !305)
  ret void, !dbg !309
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @predict_16x16_dc_128(ptr nocapture noundef writeonly %src) #0 !dbg !310 {
entry:
    #dbg_value(ptr %src, !312, !DIExpression(), !315)
    #dbg_value(i32 0, !313, !DIExpression(), !316)
    #dbg_value(i32 0, !313, !DIExpression(), !316)
    #dbg_value(ptr %src, !312, !DIExpression(), !315)
  %add.ptr4 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !317
    #dbg_value(ptr %add.ptr4, !312, !DIExpression(), !315)
    #dbg_value(i32 1, !313, !DIExpression(), !316)
  %add.ptr4.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !317
    #dbg_value(ptr %add.ptr4.1, !312, !DIExpression(), !315)
    #dbg_value(i32 2, !313, !DIExpression(), !316)
  %add.ptr4.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !317
    #dbg_value(ptr %add.ptr4.2, !312, !DIExpression(), !315)
    #dbg_value(i32 3, !313, !DIExpression(), !316)
  %add.ptr4.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !317
    #dbg_value(ptr %add.ptr4.3, !312, !DIExpression(), !315)
    #dbg_value(i32 4, !313, !DIExpression(), !316)
  %add.ptr4.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !317
    #dbg_value(ptr %add.ptr4.4, !312, !DIExpression(), !315)
    #dbg_value(i32 5, !313, !DIExpression(), !316)
  %add.ptr4.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !317
    #dbg_value(ptr %add.ptr4.5, !312, !DIExpression(), !315)
    #dbg_value(i32 6, !313, !DIExpression(), !316)
  %add.ptr4.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !317
    #dbg_value(ptr %add.ptr4.6, !312, !DIExpression(), !315)
    #dbg_value(i32 7, !313, !DIExpression(), !316)
  %add.ptr4.7 = getelementptr inbounds i8, ptr %src, i64 256, !dbg !317
    #dbg_value(ptr %add.ptr4.7, !312, !DIExpression(), !315)
    #dbg_value(i32 8, !313, !DIExpression(), !316)
  %add.ptr4.8 = getelementptr inbounds i8, ptr %src, i64 288, !dbg !317
    #dbg_value(ptr %add.ptr4.8, !312, !DIExpression(), !315)
    #dbg_value(i32 9, !313, !DIExpression(), !316)
  %add.ptr4.9 = getelementptr inbounds i8, ptr %src, i64 320, !dbg !317
    #dbg_value(ptr %add.ptr4.9, !312, !DIExpression(), !315)
    #dbg_value(i32 10, !313, !DIExpression(), !316)
  %add.ptr4.10 = getelementptr inbounds i8, ptr %src, i64 352, !dbg !317
    #dbg_value(ptr %add.ptr4.10, !312, !DIExpression(), !315)
    #dbg_value(i32 11, !313, !DIExpression(), !316)
  %add.ptr4.11 = getelementptr inbounds i8, ptr %src, i64 384, !dbg !317
    #dbg_value(ptr %add.ptr4.11, !312, !DIExpression(), !315)
    #dbg_value(i32 12, !313, !DIExpression(), !316)
  %add.ptr4.12 = getelementptr inbounds i8, ptr %src, i64 416, !dbg !317
    #dbg_value(ptr %add.ptr4.12, !312, !DIExpression(), !315)
    #dbg_value(i32 13, !313, !DIExpression(), !316)
  %add.ptr4.13 = getelementptr inbounds i8, ptr %src, i64 448, !dbg !317
    #dbg_value(ptr %add.ptr4.13, !312, !DIExpression(), !315)
    #dbg_value(i32 14, !313, !DIExpression(), !316)
  %add.ptr4.14 = getelementptr inbounds i8, ptr %src, i64 480, !dbg !317
    #dbg_value(ptr %add.ptr4.14, !312, !DIExpression(), !315)
    #dbg_value(i32 15, !313, !DIExpression(), !316)
    #dbg_value(ptr %add.ptr4.14, !312, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !315)
    #dbg_value(i32 16, !313, !DIExpression(), !316)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %src, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.1, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.2, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.3, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.4, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.5, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.6, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.7, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.8, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.9, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.10, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.11, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.12, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.13, i8 -128, i64 16, i1 false), !dbg !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.14, i8 -128, i64 16, i1 false), !dbg !317
  ret void, !dbg !320
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_8x8c_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf) local_unnamed_addr #0 !dbg !321 {
entry:
    #dbg_value(i32 %cpu, !323, !DIExpression(), !325)
    #dbg_value(ptr %pf, !324, !DIExpression(), !325)
  %arrayidx = getelementptr inbounds i8, ptr %pf, i64 16, !dbg !326
  store ptr @predict_8x8c_v, ptr %arrayidx, align 8, !dbg !327
  %arrayidx1 = getelementptr inbounds i8, ptr %pf, i64 8, !dbg !328
  store ptr @predict_8x8c_h, ptr %arrayidx1, align 8, !dbg !329
  store ptr @predict_8x8c_dc, ptr %pf, align 8, !dbg !330
  %arrayidx3 = getelementptr inbounds i8, ptr %pf, i64 24, !dbg !331
  store ptr @predict_8x8c_p, ptr %arrayidx3, align 8, !dbg !332
  %arrayidx4 = getelementptr inbounds i8, ptr %pf, i64 32, !dbg !333
  store ptr @predict_8x8c_dc_left, ptr %arrayidx4, align 8, !dbg !334
  %arrayidx5 = getelementptr inbounds i8, ptr %pf, i64 40, !dbg !335
  store ptr @predict_8x8c_dc_top, ptr %arrayidx5, align 8, !dbg !336
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 48, !dbg !337
  store ptr @predict_8x8c_dc_128, ptr %arrayidx6, align 8, !dbg !338
  ret void, !dbg !339
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8c_v(ptr nocapture noundef %src) #1 !dbg !340 {
entry:
    #dbg_value(ptr %src, !342, !DIExpression(), !347)
  %add.ptr1 = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !348
  %0 = load i32, ptr %add.ptr1, align 4, !dbg !348
    #dbg_value(i32 %0, !343, !DIExpression(), !347)
  %add.ptr3 = getelementptr inbounds i8, ptr %src, i64 -28, !dbg !349
  %1 = load i32, ptr %add.ptr3, align 4, !dbg !349
    #dbg_value(i32 %1, !344, !DIExpression(), !347)
    #dbg_value(i32 0, !345, !DIExpression(), !350)
    #dbg_value(ptr %src, !342, !DIExpression(), !347)
    #dbg_value(i32 0, !345, !DIExpression(), !350)
    #dbg_value(ptr %src, !342, !DIExpression(), !347)
  store i32 %0, ptr %src, align 4, !dbg !351
  %add.ptr5 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !354
  store i32 %1, ptr %add.ptr5, align 4, !dbg !355
  %add.ptr6 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !356
    #dbg_value(ptr %add.ptr6, !342, !DIExpression(), !347)
    #dbg_value(i32 1, !345, !DIExpression(), !350)
  store i32 %0, ptr %add.ptr6, align 4, !dbg !351
  %add.ptr5.1 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !354
  store i32 %1, ptr %add.ptr5.1, align 4, !dbg !355
  %add.ptr6.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !356
    #dbg_value(ptr %add.ptr6.1, !342, !DIExpression(), !347)
    #dbg_value(i32 2, !345, !DIExpression(), !350)
  store i32 %0, ptr %add.ptr6.1, align 4, !dbg !351
  %add.ptr5.2 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !354
  store i32 %1, ptr %add.ptr5.2, align 4, !dbg !355
  %add.ptr6.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !356
    #dbg_value(ptr %add.ptr6.2, !342, !DIExpression(), !347)
    #dbg_value(i32 3, !345, !DIExpression(), !350)
  store i32 %0, ptr %add.ptr6.2, align 4, !dbg !351
  %add.ptr5.3 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !354
  store i32 %1, ptr %add.ptr5.3, align 4, !dbg !355
  %add.ptr6.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !356
    #dbg_value(ptr %add.ptr6.3, !342, !DIExpression(), !347)
    #dbg_value(i32 4, !345, !DIExpression(), !350)
  store i32 %0, ptr %add.ptr6.3, align 4, !dbg !351
  %add.ptr5.4 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !354
  store i32 %1, ptr %add.ptr5.4, align 4, !dbg !355
  %add.ptr6.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !356
    #dbg_value(ptr %add.ptr6.4, !342, !DIExpression(), !347)
    #dbg_value(i32 5, !345, !DIExpression(), !350)
  store i32 %0, ptr %add.ptr6.4, align 4, !dbg !351
  %add.ptr5.5 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !354
  store i32 %1, ptr %add.ptr5.5, align 4, !dbg !355
  %add.ptr6.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !356
    #dbg_value(ptr %add.ptr6.5, !342, !DIExpression(), !347)
    #dbg_value(i32 6, !345, !DIExpression(), !350)
  store i32 %0, ptr %add.ptr6.5, align 4, !dbg !351
  %add.ptr5.6 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !354
  store i32 %1, ptr %add.ptr5.6, align 4, !dbg !355
  %add.ptr6.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !356
    #dbg_value(ptr %add.ptr6.6, !342, !DIExpression(), !347)
    #dbg_value(i32 7, !345, !DIExpression(), !350)
  store i32 %0, ptr %add.ptr6.6, align 4, !dbg !351
  %add.ptr5.7 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !354
  store i32 %1, ptr %add.ptr5.7, align 4, !dbg !355
    #dbg_value(ptr %add.ptr6.6, !342, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !347)
    #dbg_value(i32 8, !345, !DIExpression(), !350)
  ret void, !dbg !357
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8c_h(ptr nocapture noundef %src) #1 !dbg !358 {
entry:
    #dbg_value(ptr %src, !360, !DIExpression(), !366)
    #dbg_value(i32 0, !361, !DIExpression(), !367)
    #dbg_value(ptr %src, !360, !DIExpression(), !366)
    #dbg_value(i32 0, !361, !DIExpression(), !367)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -1, !dbg !368
  %0 = load i8, ptr %arrayidx, align 1, !dbg !368
  %conv = zext i8 %0 to i32, !dbg !368
  %mul = mul nuw nsw i32 %conv, 16843009, !dbg !369
    #dbg_value(i32 %mul, !363, !DIExpression(), !370)
  store i32 %mul, ptr %src, align 4, !dbg !371
  %add.ptr1 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !372
  store i32 %mul, ptr %add.ptr1, align 4, !dbg !373
  %add.ptr2 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !374
    #dbg_value(ptr %add.ptr2, !360, !DIExpression(), !366)
    #dbg_value(i32 1, !361, !DIExpression(), !367)
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 31, !dbg !368
  %1 = load i8, ptr %arrayidx.1, align 1, !dbg !368
  %conv.1 = zext i8 %1 to i32, !dbg !368
  %mul.1 = mul nuw nsw i32 %conv.1, 16843009, !dbg !369
    #dbg_value(i32 %mul.1, !363, !DIExpression(), !370)
  store i32 %mul.1, ptr %add.ptr2, align 4, !dbg !371
  %add.ptr1.1 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !372
  store i32 %mul.1, ptr %add.ptr1.1, align 4, !dbg !373
  %add.ptr2.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !374
    #dbg_value(ptr %add.ptr2.1, !360, !DIExpression(), !366)
    #dbg_value(i32 2, !361, !DIExpression(), !367)
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 63, !dbg !368
  %2 = load i8, ptr %arrayidx.2, align 1, !dbg !368
  %conv.2 = zext i8 %2 to i32, !dbg !368
  %mul.2 = mul nuw nsw i32 %conv.2, 16843009, !dbg !369
    #dbg_value(i32 %mul.2, !363, !DIExpression(), !370)
  store i32 %mul.2, ptr %add.ptr2.1, align 4, !dbg !371
  %add.ptr1.2 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !372
  store i32 %mul.2, ptr %add.ptr1.2, align 4, !dbg !373
  %add.ptr2.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !374
    #dbg_value(ptr %add.ptr2.2, !360, !DIExpression(), !366)
    #dbg_value(i32 3, !361, !DIExpression(), !367)
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 95, !dbg !368
  %3 = load i8, ptr %arrayidx.3, align 1, !dbg !368
  %conv.3 = zext i8 %3 to i32, !dbg !368
  %mul.3 = mul nuw nsw i32 %conv.3, 16843009, !dbg !369
    #dbg_value(i32 %mul.3, !363, !DIExpression(), !370)
  store i32 %mul.3, ptr %add.ptr2.2, align 4, !dbg !371
  %add.ptr1.3 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !372
  store i32 %mul.3, ptr %add.ptr1.3, align 4, !dbg !373
  %add.ptr2.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !374
    #dbg_value(ptr %add.ptr2.3, !360, !DIExpression(), !366)
    #dbg_value(i32 4, !361, !DIExpression(), !367)
  %arrayidx.4 = getelementptr inbounds i8, ptr %src, i64 127, !dbg !368
  %4 = load i8, ptr %arrayidx.4, align 1, !dbg !368
  %conv.4 = zext i8 %4 to i32, !dbg !368
  %mul.4 = mul nuw nsw i32 %conv.4, 16843009, !dbg !369
    #dbg_value(i32 %mul.4, !363, !DIExpression(), !370)
  store i32 %mul.4, ptr %add.ptr2.3, align 4, !dbg !371
  %add.ptr1.4 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !372
  store i32 %mul.4, ptr %add.ptr1.4, align 4, !dbg !373
  %add.ptr2.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !374
    #dbg_value(ptr %add.ptr2.4, !360, !DIExpression(), !366)
    #dbg_value(i32 5, !361, !DIExpression(), !367)
  %arrayidx.5 = getelementptr inbounds i8, ptr %src, i64 159, !dbg !368
  %5 = load i8, ptr %arrayidx.5, align 1, !dbg !368
  %conv.5 = zext i8 %5 to i32, !dbg !368
  %mul.5 = mul nuw nsw i32 %conv.5, 16843009, !dbg !369
    #dbg_value(i32 %mul.5, !363, !DIExpression(), !370)
  store i32 %mul.5, ptr %add.ptr2.4, align 4, !dbg !371
  %add.ptr1.5 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !372
  store i32 %mul.5, ptr %add.ptr1.5, align 4, !dbg !373
  %add.ptr2.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !374
    #dbg_value(ptr %add.ptr2.5, !360, !DIExpression(), !366)
    #dbg_value(i32 6, !361, !DIExpression(), !367)
  %arrayidx.6 = getelementptr inbounds i8, ptr %src, i64 191, !dbg !368
  %6 = load i8, ptr %arrayidx.6, align 1, !dbg !368
  %conv.6 = zext i8 %6 to i32, !dbg !368
  %mul.6 = mul nuw nsw i32 %conv.6, 16843009, !dbg !369
    #dbg_value(i32 %mul.6, !363, !DIExpression(), !370)
  store i32 %mul.6, ptr %add.ptr2.5, align 4, !dbg !371
  %add.ptr1.6 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !372
  store i32 %mul.6, ptr %add.ptr1.6, align 4, !dbg !373
  %add.ptr2.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !374
    #dbg_value(ptr %add.ptr2.6, !360, !DIExpression(), !366)
    #dbg_value(i32 7, !361, !DIExpression(), !367)
  %arrayidx.7 = getelementptr inbounds i8, ptr %src, i64 223, !dbg !368
  %7 = load i8, ptr %arrayidx.7, align 1, !dbg !368
  %conv.7 = zext i8 %7 to i32, !dbg !368
  %mul.7 = mul nuw nsw i32 %conv.7, 16843009, !dbg !369
    #dbg_value(i32 %mul.7, !363, !DIExpression(), !370)
  store i32 %mul.7, ptr %add.ptr2.6, align 4, !dbg !371
  %add.ptr1.7 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !372
  store i32 %mul.7, ptr %add.ptr1.7, align 4, !dbg !373
    #dbg_value(ptr %add.ptr2.6, !360, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !366)
    #dbg_value(i32 8, !361, !DIExpression(), !367)
  ret void, !dbg !375
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8c_dc(ptr nocapture noundef %src) #1 !dbg !376 {
entry:
    #dbg_value(ptr %src, !378, !DIExpression(), !393)
    #dbg_value(i32 0, !379, !DIExpression(), !393)
    #dbg_value(i32 0, !380, !DIExpression(), !393)
    #dbg_value(i32 0, !381, !DIExpression(), !393)
    #dbg_value(i32 0, !382, !DIExpression(), !393)
    #dbg_value(i32 0, !383, !DIExpression(), !394)
    #dbg_value(i32 0, !379, !DIExpression(), !393)
    #dbg_value(i32 0, !380, !DIExpression(), !393)
    #dbg_value(i32 0, !381, !DIExpression(), !393)
    #dbg_value(i64 0, !383, !DIExpression(), !394)
    #dbg_value(i32 0, !382, !DIExpression(), !393)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !395
  %0 = load i8, ptr %arrayidx, align 1, !dbg !395
  %conv = zext i8 %0 to i32, !dbg !395
    #dbg_value(i32 %conv, !379, !DIExpression(), !393)
  %arrayidx4 = getelementptr inbounds i8, ptr %src, i64 -28, !dbg !398
  %1 = load i8, ptr %arrayidx4, align 1, !dbg !398
  %conv5 = zext i8 %1 to i32, !dbg !398
    #dbg_value(i32 %conv5, !380, !DIExpression(), !393)
  %arrayidx9 = getelementptr i8, ptr %src, i64 -1, !dbg !399
  %2 = load i8, ptr %arrayidx9, align 1, !dbg !399
  %conv10 = zext i8 %2 to i32, !dbg !399
    #dbg_value(i32 %conv10, !381, !DIExpression(), !393)
  %arrayidx16 = getelementptr inbounds i8, ptr %src, i64 127, !dbg !400
  %3 = load i8, ptr %arrayidx16, align 1, !dbg !400
  %conv17 = zext i8 %3 to i32, !dbg !400
    #dbg_value(i32 %conv17, !382, !DIExpression(), !393)
    #dbg_value(i64 1, !383, !DIExpression(), !394)
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !395
  %4 = load i8, ptr %arrayidx.1, align 1, !dbg !395
  %conv.1 = zext i8 %4 to i32, !dbg !395
  %add.1 = add nuw nsw i32 %conv, %conv.1, !dbg !401
    #dbg_value(i32 %add.1, !379, !DIExpression(), !393)
  %arrayidx4.1 = getelementptr inbounds i8, ptr %src, i64 -27, !dbg !398
  %5 = load i8, ptr %arrayidx4.1, align 1, !dbg !398
  %conv5.1 = zext i8 %5 to i32, !dbg !398
  %add6.1 = add nuw nsw i32 %conv5, %conv5.1, !dbg !402
    #dbg_value(i32 %add6.1, !380, !DIExpression(), !393)
  %6 = getelementptr i8, ptr %src, i64 32, !dbg !399
  %arrayidx9.1 = getelementptr i8, ptr %src, i64 31, !dbg !399
  %7 = load i8, ptr %arrayidx9.1, align 1, !dbg !399
  %conv10.1 = zext i8 %7 to i32, !dbg !399
  %add11.1 = add nuw nsw i32 %conv10, %conv10.1, !dbg !403
    #dbg_value(i32 %add11.1, !381, !DIExpression(), !393)
  %arrayidx16.1 = getelementptr i8, ptr %src, i64 159, !dbg !400
  %8 = load i8, ptr %arrayidx16.1, align 1, !dbg !400
  %conv17.1 = zext i8 %8 to i32, !dbg !400
  %add18.1 = add nuw nsw i32 %conv17, %conv17.1, !dbg !404
    #dbg_value(i32 %add18.1, !382, !DIExpression(), !393)
    #dbg_value(i64 2, !383, !DIExpression(), !394)
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !395
  %9 = load i8, ptr %arrayidx.2, align 1, !dbg !395
  %conv.2 = zext i8 %9 to i32, !dbg !395
  %add.2 = add nuw nsw i32 %add.1, %conv.2, !dbg !401
    #dbg_value(i32 %add.2, !379, !DIExpression(), !393)
  %arrayidx4.2 = getelementptr inbounds i8, ptr %src, i64 -26, !dbg !398
  %10 = load i8, ptr %arrayidx4.2, align 1, !dbg !398
  %conv5.2 = zext i8 %10 to i32, !dbg !398
  %add6.2 = add nuw nsw i32 %add6.1, %conv5.2, !dbg !402
    #dbg_value(i32 %add6.2, !380, !DIExpression(), !393)
  %arrayidx9.2 = getelementptr i8, ptr %src, i64 63, !dbg !399
  %11 = load i8, ptr %arrayidx9.2, align 1, !dbg !399
  %conv10.2 = zext i8 %11 to i32, !dbg !399
  %add11.2 = add nuw nsw i32 %add11.1, %conv10.2, !dbg !403
    #dbg_value(i32 %add11.2, !381, !DIExpression(), !393)
  %arrayidx16.2 = getelementptr i8, ptr %src, i64 191, !dbg !400
  %12 = load i8, ptr %arrayidx16.2, align 1, !dbg !400
  %conv17.2 = zext i8 %12 to i32, !dbg !400
  %add18.2 = add nuw nsw i32 %add18.1, %conv17.2, !dbg !404
    #dbg_value(i32 %add18.2, !382, !DIExpression(), !393)
    #dbg_value(i64 3, !383, !DIExpression(), !394)
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 -29, !dbg !395
  %13 = load i8, ptr %arrayidx.3, align 1, !dbg !395
  %conv.3 = zext i8 %13 to i32, !dbg !395
  %add.3 = add nuw nsw i32 %add.2, %conv.3, !dbg !401
    #dbg_value(i32 %add.3, !379, !DIExpression(), !393)
  %arrayidx4.3 = getelementptr inbounds i8, ptr %src, i64 -25, !dbg !398
  %14 = load i8, ptr %arrayidx4.3, align 1, !dbg !398
  %conv5.3 = zext i8 %14 to i32, !dbg !398
  %add6.3 = add nuw nsw i32 %add6.2, %conv5.3, !dbg !402
    #dbg_value(i32 %add6.3, !380, !DIExpression(), !393)
  %arrayidx9.3 = getelementptr i8, ptr %src, i64 95, !dbg !399
  %15 = load i8, ptr %arrayidx9.3, align 1, !dbg !399
  %conv10.3 = zext i8 %15 to i32, !dbg !399
  %add11.3 = add nuw nsw i32 %add11.2, %conv10.3, !dbg !403
    #dbg_value(i32 %add11.3, !381, !DIExpression(), !393)
  %arrayidx16.3 = getelementptr i8, ptr %src, i64 223, !dbg !400
  %16 = load i8, ptr %arrayidx16.3, align 1, !dbg !400
  %conv17.3 = zext i8 %16 to i32, !dbg !400
  %add18.3 = add nuw nsw i32 %add18.2, %conv17.3, !dbg !404
    #dbg_value(i32 %add18.3, !382, !DIExpression(), !393)
    #dbg_value(i64 4, !383, !DIExpression(), !394)
  %add19 = add nuw nsw i32 %add11.3, 4, !dbg !405
  %add20 = add nuw nsw i32 %add19, %add.3, !dbg !406
  %shr = lshr i32 %add20, 3, !dbg !407
  %mul21 = mul nuw nsw i32 %shr, 16843009, !dbg !408
    #dbg_value(i32 %mul21, !385, !DIExpression(), !393)
  %add22 = add nuw nsw i32 %add6.3, 2, !dbg !409
  %shr23 = lshr i32 %add22, 2, !dbg !410
  %mul24 = mul nuw nsw i32 %shr23, 16843009, !dbg !411
    #dbg_value(i32 %mul24, !386, !DIExpression(), !393)
  %add25 = add nuw nsw i32 %add18.3, 2, !dbg !412
  %shr26 = lshr i32 %add25, 2, !dbg !413
    #dbg_value(i32 %mul27, !387, !DIExpression(), !393)
  %add28 = add nuw nsw i32 %add18.3, 4, !dbg !414
  %add29 = add nuw nsw i32 %add28, %add6.3, !dbg !415
  %shr30 = lshr i32 %add29, 3, !dbg !416
    #dbg_value(i32 %mul31, !388, !DIExpression(), !393)
    #dbg_value(i32 0, !389, !DIExpression(), !417)
    #dbg_value(ptr %src, !378, !DIExpression(), !393)
    #dbg_value(i32 0, !389, !DIExpression(), !417)
    #dbg_value(ptr %src, !378, !DIExpression(), !393)
  store i32 %mul21, ptr %src, align 4, !dbg !418
  %add.ptr37 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !421
  store i32 %mul24, ptr %add.ptr37, align 4, !dbg !422
    #dbg_value(ptr %6, !378, !DIExpression(), !393)
    #dbg_value(i32 1, !389, !DIExpression(), !417)
  store i32 %mul21, ptr %6, align 4, !dbg !418
  %add.ptr37.1 = getelementptr i8, ptr %src, i64 36, !dbg !421
  store i32 %mul24, ptr %add.ptr37.1, align 4, !dbg !422
  %add.ptr38.1 = getelementptr i8, ptr %src, i64 64, !dbg !423
    #dbg_value(ptr %add.ptr38.1, !378, !DIExpression(), !393)
    #dbg_value(i32 2, !389, !DIExpression(), !417)
  store i32 %mul21, ptr %add.ptr38.1, align 4, !dbg !418
  %add.ptr37.2 = getelementptr i8, ptr %src, i64 68, !dbg !421
  store i32 %mul24, ptr %add.ptr37.2, align 4, !dbg !422
  %add.ptr38.2 = getelementptr i8, ptr %src, i64 96, !dbg !423
    #dbg_value(ptr %add.ptr38.2, !378, !DIExpression(), !393)
    #dbg_value(i32 3, !389, !DIExpression(), !417)
  store i32 %mul21, ptr %add.ptr38.2, align 4, !dbg !418
  %add.ptr37.3 = getelementptr i8, ptr %src, i64 100, !dbg !421
  store i32 %mul24, ptr %add.ptr37.3, align 4, !dbg !422
  %add.ptr38.3 = getelementptr i8, ptr %src, i64 128, !dbg !423
    #dbg_value(ptr %add.ptr38.3, !378, !DIExpression(), !393)
    #dbg_value(i32 4, !389, !DIExpression(), !417)
  %mul27 = mul nuw nsw i32 %shr26, 16843009, !dbg !424
  %mul31 = mul nuw nsw i32 %shr30, 16843009, !dbg !425
    #dbg_value(i32 0, !391, !DIExpression(), !426)
    #dbg_value(ptr %add.ptr38.3, !378, !DIExpression(), !393)
  store i32 %mul27, ptr %add.ptr38.3, align 4, !dbg !427
  %add.ptr49 = getelementptr i8, ptr %src, i64 132, !dbg !430
  store i32 %mul31, ptr %add.ptr49, align 4, !dbg !431
  %add.ptr50 = getelementptr i8, ptr %src, i64 160, !dbg !432
    #dbg_value(ptr %add.ptr50, !378, !DIExpression(), !393)
    #dbg_value(i32 1, !391, !DIExpression(), !426)
  store i32 %mul27, ptr %add.ptr50, align 4, !dbg !427
  %add.ptr49.1 = getelementptr i8, ptr %src, i64 164, !dbg !430
  store i32 %mul31, ptr %add.ptr49.1, align 4, !dbg !431
  %add.ptr50.1 = getelementptr i8, ptr %src, i64 192, !dbg !432
    #dbg_value(ptr %add.ptr50.1, !378, !DIExpression(), !393)
    #dbg_value(i32 2, !391, !DIExpression(), !426)
  store i32 %mul27, ptr %add.ptr50.1, align 4, !dbg !427
  %add.ptr49.2 = getelementptr i8, ptr %src, i64 196, !dbg !430
  store i32 %mul31, ptr %add.ptr49.2, align 4, !dbg !431
  %add.ptr50.2 = getelementptr i8, ptr %src, i64 224, !dbg !432
    #dbg_value(ptr %add.ptr50.2, !378, !DIExpression(), !393)
    #dbg_value(i32 3, !391, !DIExpression(), !426)
  store i32 %mul27, ptr %add.ptr50.2, align 4, !dbg !427
  %add.ptr49.3 = getelementptr i8, ptr %src, i64 228, !dbg !430
  store i32 %mul31, ptr %add.ptr49.3, align 4, !dbg !431
    #dbg_value(ptr %add.ptr50.2, !378, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !393)
    #dbg_value(i32 4, !391, !DIExpression(), !426)
  ret void, !dbg !433
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_p(ptr nocapture noundef %src) #2 !dbg !434 {
entry:
    #dbg_value(ptr %src, !436, !DIExpression(), !452)
    #dbg_value(i32 0, !437, !DIExpression(), !452)
    #dbg_value(i32 0, !438, !DIExpression(), !452)
    #dbg_value(i32 0, !439, !DIExpression(), !453)
  %invariant.gep = getelementptr inbounds i8, ptr %src, i64 127, !dbg !454
    #dbg_value(i64 0, !439, !DIExpression(), !453)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -28, !dbg !455
  %0 = load i8, ptr %arrayidx, align 1, !dbg !455
  %conv = zext i8 %0 to i32, !dbg !455
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !458
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !458
  %conv6 = zext i8 %1 to i32, !dbg !458
  %sub7 = sub nsw i32 %conv, %conv6, !dbg !459
    #dbg_value(i32 %sub7, !437, !DIExpression(), !452)
  %2 = load i8, ptr %invariant.gep, align 1, !dbg !460
  %conv15 = zext i8 %2 to i32, !dbg !460
  %arrayidx20 = getelementptr inbounds i8, ptr %src, i64 63, !dbg !461
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !461
  %conv21 = zext i8 %3 to i32, !dbg !461
  %sub22 = sub nsw i32 %conv15, %conv21, !dbg !462
    #dbg_value(i32 %sub22, !438, !DIExpression(), !452)
    #dbg_value(i64 1, !439, !DIExpression(), !453)
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 -27, !dbg !455
  %4 = load i8, ptr %arrayidx.1, align 1, !dbg !455
  %conv.1 = zext i8 %4 to i32, !dbg !455
  %arrayidx5.1 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !458
  %5 = load i8, ptr %arrayidx5.1, align 1, !dbg !458
  %conv6.1 = zext i8 %5 to i32, !dbg !458
  %sub7.1 = sub nsw i32 %conv.1, %conv6.1, !dbg !459
  %mul.1 = shl nsw i32 %sub7.1, 1, !dbg !463
  %add8.1 = add nsw i32 %mul.1, %sub7, !dbg !464
    #dbg_value(i32 %add8.1, !437, !DIExpression(), !452)
  %gep.1 = getelementptr inbounds i8, ptr %src, i64 159, !dbg !460
  %6 = load i8, ptr %gep.1, align 1, !dbg !460
  %conv15.1 = zext i8 %6 to i32, !dbg !460
  %arrayidx20.1 = getelementptr inbounds i8, ptr %src, i64 31, !dbg !461
  %7 = load i8, ptr %arrayidx20.1, align 1, !dbg !461
  %conv21.1 = zext i8 %7 to i32, !dbg !461
  %sub22.1 = sub nsw i32 %conv15.1, %conv21.1, !dbg !462
  %mul23.1 = shl nsw i32 %sub22.1, 1, !dbg !465
  %add24.1 = add nsw i32 %mul23.1, %sub22, !dbg !466
    #dbg_value(i32 %add24.1, !438, !DIExpression(), !452)
    #dbg_value(i64 2, !439, !DIExpression(), !453)
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 -26, !dbg !455
  %8 = load i8, ptr %arrayidx.2, align 1, !dbg !455
  %conv.2 = zext i8 %8 to i32, !dbg !455
  %arrayidx5.2 = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !458
  %9 = load i8, ptr %arrayidx5.2, align 1, !dbg !458
  %conv6.2 = zext i8 %9 to i32, !dbg !458
  %sub7.2 = sub nsw i32 %conv.2, %conv6.2, !dbg !459
  %mul.2 = mul nsw i32 %sub7.2, 3, !dbg !463
  %add8.2 = add nsw i32 %mul.2, %add8.1, !dbg !464
    #dbg_value(i32 %add8.2, !437, !DIExpression(), !452)
  %gep.2 = getelementptr inbounds i8, ptr %src, i64 191, !dbg !460
  %10 = load i8, ptr %gep.2, align 1, !dbg !460
  %conv15.2 = zext i8 %10 to i32, !dbg !460
  %arrayidx20.2 = getelementptr inbounds i8, ptr %src, i64 -1, !dbg !461
  %11 = load i8, ptr %arrayidx20.2, align 1, !dbg !461
  %conv21.2 = zext i8 %11 to i32, !dbg !461
  %sub22.2 = sub nsw i32 %conv15.2, %conv21.2, !dbg !462
  %mul23.2 = mul nsw i32 %sub22.2, 3, !dbg !465
  %add24.2 = add nsw i32 %mul23.2, %add24.1, !dbg !466
    #dbg_value(i32 %add24.2, !438, !DIExpression(), !452)
    #dbg_value(i64 3, !439, !DIExpression(), !453)
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 -25, !dbg !455
  %12 = load i8, ptr %arrayidx.3, align 1, !dbg !455
  %conv.3 = zext i8 %12 to i32, !dbg !455
  %arrayidx5.3 = getelementptr inbounds i8, ptr %src, i64 -33, !dbg !458
  %13 = load i8, ptr %arrayidx5.3, align 1, !dbg !458
  %conv6.3 = zext i8 %13 to i32, !dbg !458
  %sub7.3 = sub nsw i32 %conv.3, %conv6.3, !dbg !459
  %mul.3 = shl nsw i32 %sub7.3, 2, !dbg !463
  %add8.3 = add nsw i32 %mul.3, %add8.2, !dbg !464
    #dbg_value(i32 %add8.3, !437, !DIExpression(), !452)
  %gep.3 = getelementptr inbounds i8, ptr %src, i64 223, !dbg !460
  %14 = load i8, ptr %gep.3, align 1, !dbg !460
  %conv15.3 = zext i8 %14 to i32, !dbg !460
  %sub22.3 = sub nsw i32 %conv15.3, %conv6.3, !dbg !462
  %mul23.3 = shl nsw i32 %sub22.3, 2, !dbg !465
  %add24.3 = add nsw i32 %mul23.3, %add24.2, !dbg !466
    #dbg_value(i32 %add24.3, !438, !DIExpression(), !452)
    #dbg_value(i64 4, !439, !DIExpression(), !453)
  %add29 = add nuw nsw i32 %conv.3, %conv15.3, !dbg !467
  %mul30 = shl nuw nsw i32 %add29, 4, !dbg !468
    #dbg_value(i32 %mul30, !441, !DIExpression(), !452)
  %mul31 = mul nsw i32 %add8.3, 17, !dbg !469
  %add32 = add nsw i32 %mul31, 16, !dbg !470
  %shr = ashr i32 %add32, 5, !dbg !471
    #dbg_value(i32 %shr, !442, !DIExpression(), !452)
  %mul33 = mul nsw i32 %add24.3, 17, !dbg !472
  %add34 = add nsw i32 %mul33, 16, !dbg !473
  %shr35 = ashr i32 %add34, 5, !dbg !474
    #dbg_value(i32 %shr35, !443, !DIExpression(), !452)
  %reass.add = add nsw i32 %shr, %shr35
  %reass.mul = mul nsw i32 %reass.add, -3
  %sub39 = add nsw i32 %reass.mul, 16, !dbg !475
  %add40 = add nsw i32 %sub39, %mul30, !dbg !476
    #dbg_value(i32 %add40, !444, !DIExpression(), !452)
    #dbg_value(i32 0, !445, !DIExpression(), !477)
  %15 = shl nsw i32 %shr35, 1
  %16 = mul nsw i32 %shr35, 3
  br label %vector.body, !dbg !478

vector.body:                                      ; preds = %pred.store.continue114, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %pred.store.continue114 ]
  %.cast = trunc i64 %index to i32, !dbg !478
  %17 = mul i32 %shr35, %.cast, !dbg !478
  %offset.idx = add i32 %add40, %17, !dbg !478
  %offset.idx102 = shl i64 %index, 5, !dbg !478
  %18 = icmp ult i64 %index, 8
  %19 = icmp ult i64 %index, 8
  %20 = icmp ult i64 %index, 8
  %21 = icmp ult i64 %index, 8
  br i1 %18, label %pred.store.if, label %pred.store.continue, !dbg !478

pred.store.if:                                    ; preds = %vector.body
  %next.gep = getelementptr i8, ptr %src, i64 %offset.idx102
  %22 = add nsw i32 %offset.idx, %shr, !dbg !479
  %23 = add nsw i32 %22, %shr, !dbg !479
  %24 = add nsw i32 %23, %shr, !dbg !479
  %25 = add nsw i32 %24, %shr, !dbg !479
  %26 = add nsw i32 %25, %shr, !dbg !479
  %27 = add nsw i32 %26, %shr, !dbg !479
  %28 = add nsw i32 %27, %shr, !dbg !479
  %29 = insertelement <8 x i32> poison, i32 %offset.idx, i64 0, !dbg !482
  %30 = insertelement <8 x i32> %29, i32 %22, i64 1, !dbg !482
  %31 = insertelement <8 x i32> %30, i32 %23, i64 2, !dbg !482
  %32 = insertelement <8 x i32> %31, i32 %24, i64 3, !dbg !482
  %33 = insertelement <8 x i32> %32, i32 %25, i64 4, !dbg !482
  %34 = insertelement <8 x i32> %33, i32 %26, i64 5, !dbg !482
  %35 = insertelement <8 x i32> %34, i32 %27, i64 6, !dbg !482
  %36 = insertelement <8 x i32> %35, i32 %28, i64 7, !dbg !482
  %37 = ashr <8 x i32> %36, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !482
  %38 = icmp sgt <8 x i32> %37, zeroinitializer, !dbg !483
  %39 = sext <8 x i1> %38 to <8 x i32>, !dbg !483
  %40 = icmp ult <8 x i32> %37, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>, !dbg !485
  %41 = select <8 x i1> %40, <8 x i32> %37, <8 x i32> %39, !dbg !483
  %42 = trunc <8 x i32> %41 to <8 x i8>, !dbg !483
  store <8 x i8> %42, ptr %next.gep, align 1, !dbg !486
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  br i1 %19, label %pred.store.if109, label %pred.store.continue110, !dbg !486

pred.store.if109:                                 ; preds = %pred.store.continue
  %43 = or disjoint i64 %offset.idx102, 32, !dbg !478
  %next.gep103 = getelementptr i8, ptr %src, i64 %43
  %44 = add i32 %offset.idx, %shr35, !dbg !486
  %45 = add nsw i32 %44, %shr, !dbg !479
  %46 = add nsw i32 %45, %shr, !dbg !479
  %47 = add nsw i32 %46, %shr, !dbg !479
  %48 = add nsw i32 %47, %shr, !dbg !479
  %49 = add nsw i32 %48, %shr, !dbg !479
  %50 = add nsw i32 %49, %shr, !dbg !479
  %51 = add nsw i32 %50, %shr, !dbg !479
  %52 = insertelement <8 x i32> poison, i32 %44, i64 0, !dbg !482
  %53 = insertelement <8 x i32> %52, i32 %45, i64 1, !dbg !482
  %54 = insertelement <8 x i32> %53, i32 %46, i64 2, !dbg !482
  %55 = insertelement <8 x i32> %54, i32 %47, i64 3, !dbg !482
  %56 = insertelement <8 x i32> %55, i32 %48, i64 4, !dbg !482
  %57 = insertelement <8 x i32> %56, i32 %49, i64 5, !dbg !482
  %58 = insertelement <8 x i32> %57, i32 %50, i64 6, !dbg !482
  %59 = insertelement <8 x i32> %58, i32 %51, i64 7, !dbg !482
  %60 = ashr <8 x i32> %59, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !482
  %61 = icmp sgt <8 x i32> %60, zeroinitializer, !dbg !483
  %62 = sext <8 x i1> %61 to <8 x i32>, !dbg !483
  %63 = icmp ult <8 x i32> %60, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>, !dbg !485
  %64 = select <8 x i1> %63, <8 x i32> %60, <8 x i32> %62, !dbg !483
  %65 = trunc <8 x i32> %64 to <8 x i8>, !dbg !483
  store <8 x i8> %65, ptr %next.gep103, align 1, !dbg !486
  br label %pred.store.continue110, !dbg !486

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue
  br i1 %20, label %pred.store.if111, label %pred.store.continue112, !dbg !486

pred.store.if111:                                 ; preds = %pred.store.continue110
  %66 = or disjoint i64 %offset.idx102, 64, !dbg !478
  %next.gep104 = getelementptr i8, ptr %src, i64 %66
  %67 = add i32 %offset.idx, %15, !dbg !486
  %68 = add nsw i32 %67, %shr, !dbg !479
  %69 = add nsw i32 %68, %shr, !dbg !479
  %70 = add nsw i32 %69, %shr, !dbg !479
  %71 = add nsw i32 %70, %shr, !dbg !479
  %72 = add nsw i32 %71, %shr, !dbg !479
  %73 = add nsw i32 %72, %shr, !dbg !479
  %74 = add nsw i32 %73, %shr, !dbg !479
  %75 = insertelement <8 x i32> poison, i32 %67, i64 0, !dbg !482
  %76 = insertelement <8 x i32> %75, i32 %68, i64 1, !dbg !482
  %77 = insertelement <8 x i32> %76, i32 %69, i64 2, !dbg !482
  %78 = insertelement <8 x i32> %77, i32 %70, i64 3, !dbg !482
  %79 = insertelement <8 x i32> %78, i32 %71, i64 4, !dbg !482
  %80 = insertelement <8 x i32> %79, i32 %72, i64 5, !dbg !482
  %81 = insertelement <8 x i32> %80, i32 %73, i64 6, !dbg !482
  %82 = insertelement <8 x i32> %81, i32 %74, i64 7, !dbg !482
  %83 = ashr <8 x i32> %82, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !482
  %84 = icmp sgt <8 x i32> %83, zeroinitializer, !dbg !483
  %85 = sext <8 x i1> %84 to <8 x i32>, !dbg !483
  %86 = icmp ult <8 x i32> %83, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>, !dbg !485
  %87 = select <8 x i1> %86, <8 x i32> %83, <8 x i32> %85, !dbg !483
  %88 = trunc <8 x i32> %87 to <8 x i8>, !dbg !483
  store <8 x i8> %88, ptr %next.gep104, align 1, !dbg !486
  br label %pred.store.continue112, !dbg !486

pred.store.continue112:                           ; preds = %pred.store.if111, %pred.store.continue110
  br i1 %21, label %pred.store.if113, label %pred.store.continue114, !dbg !486

pred.store.if113:                                 ; preds = %pred.store.continue112
  %89 = or disjoint i64 %offset.idx102, 96, !dbg !478
  %next.gep105 = getelementptr i8, ptr %src, i64 %89
  %90 = add i32 %offset.idx, %16, !dbg !486
  %91 = add nsw i32 %90, %shr, !dbg !479
  %92 = add nsw i32 %91, %shr, !dbg !479
  %93 = add nsw i32 %92, %shr, !dbg !479
  %94 = add nsw i32 %93, %shr, !dbg !479
  %95 = add nsw i32 %94, %shr, !dbg !479
  %96 = add nsw i32 %95, %shr, !dbg !479
  %97 = add nsw i32 %96, %shr, !dbg !479
  %98 = insertelement <8 x i32> poison, i32 %90, i64 0, !dbg !482
  %99 = insertelement <8 x i32> %98, i32 %91, i64 1, !dbg !482
  %100 = insertelement <8 x i32> %99, i32 %92, i64 2, !dbg !482
  %101 = insertelement <8 x i32> %100, i32 %93, i64 3, !dbg !482
  %102 = insertelement <8 x i32> %101, i32 %94, i64 4, !dbg !482
  %103 = insertelement <8 x i32> %102, i32 %95, i64 5, !dbg !482
  %104 = insertelement <8 x i32> %103, i32 %96, i64 6, !dbg !482
  %105 = insertelement <8 x i32> %104, i32 %97, i64 7, !dbg !482
  %106 = ashr <8 x i32> %105, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !482
  %107 = icmp sgt <8 x i32> %106, zeroinitializer, !dbg !483
  %108 = sext <8 x i1> %107 to <8 x i32>, !dbg !483
  %109 = icmp ult <8 x i32> %106, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>, !dbg !485
  %110 = select <8 x i1> %109, <8 x i32> %106, <8 x i32> %108, !dbg !483
  %111 = trunc <8 x i32> %110 to <8 x i8>, !dbg !483
  store <8 x i8> %111, ptr %next.gep105, align 1, !dbg !486
  br label %pred.store.continue114, !dbg !486

pred.store.continue114:                           ; preds = %pred.store.if113, %pred.store.continue112
  %index.next = add i64 %index, 4
  %112 = icmp eq i64 %index.next, 8
  br i1 %112, label %for.cond.cleanup44, label %vector.body, !llvm.loop !487

for.cond.cleanup44:                               ; preds = %pred.store.continue114
  ret void, !dbg !489
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8c_dc_left(ptr nocapture noundef %src) #1 !dbg !490 {
entry:
    #dbg_value(ptr %src, !492, !DIExpression(), !501)
    #dbg_value(i32 0, !493, !DIExpression(), !501)
    #dbg_value(i32 0, !494, !DIExpression(), !501)
    #dbg_value(i32 0, !495, !DIExpression(), !502)
    #dbg_value(i64 0, !495, !DIExpression(), !502)
    #dbg_value(i32 0, !494, !DIExpression(), !501)
    #dbg_value(i32 0, !493, !DIExpression(), !501)
  %arrayidx = getelementptr i8, ptr %src, i64 -1, !dbg !503
  %0 = load i8, ptr %arrayidx, align 1, !dbg !503
  %conv = zext i8 %0 to i32, !dbg !503
    #dbg_value(i32 %conv, !493, !DIExpression(), !501)
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 127, !dbg !506
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !506
  %conv6 = zext i8 %1 to i32, !dbg !506
    #dbg_value(i32 %conv6, !494, !DIExpression(), !501)
    #dbg_value(i64 1, !495, !DIExpression(), !502)
  %2 = getelementptr i8, ptr %src, i64 32, !dbg !503
  %arrayidx.1 = getelementptr i8, ptr %src, i64 31, !dbg !503
  %3 = load i8, ptr %arrayidx.1, align 1, !dbg !503
  %conv.1 = zext i8 %3 to i32, !dbg !503
  %add.1 = add nuw nsw i32 %conv, %conv.1, !dbg !507
    #dbg_value(i32 %add.1, !493, !DIExpression(), !501)
  %arrayidx5.1 = getelementptr i8, ptr %src, i64 159, !dbg !506
  %4 = load i8, ptr %arrayidx5.1, align 1, !dbg !506
  %conv6.1 = zext i8 %4 to i32, !dbg !506
  %add7.1 = add nuw nsw i32 %conv6, %conv6.1, !dbg !508
    #dbg_value(i32 %add7.1, !494, !DIExpression(), !501)
    #dbg_value(i64 2, !495, !DIExpression(), !502)
  %arrayidx.2 = getelementptr i8, ptr %src, i64 63, !dbg !503
  %5 = load i8, ptr %arrayidx.2, align 1, !dbg !503
  %conv.2 = zext i8 %5 to i32, !dbg !503
  %add.2 = add nuw nsw i32 %add.1, %conv.2, !dbg !507
    #dbg_value(i32 %add.2, !493, !DIExpression(), !501)
  %arrayidx5.2 = getelementptr i8, ptr %src, i64 191, !dbg !506
  %6 = load i8, ptr %arrayidx5.2, align 1, !dbg !506
  %conv6.2 = zext i8 %6 to i32, !dbg !506
  %add7.2 = add nuw nsw i32 %add7.1, %conv6.2, !dbg !508
    #dbg_value(i32 %add7.2, !494, !DIExpression(), !501)
    #dbg_value(i64 3, !495, !DIExpression(), !502)
  %arrayidx.3 = getelementptr i8, ptr %src, i64 95, !dbg !503
  %7 = load i8, ptr %arrayidx.3, align 1, !dbg !503
  %conv.3 = zext i8 %7 to i32, !dbg !503
  %add.3 = add nuw nsw i32 %add.2, %conv.3, !dbg !507
    #dbg_value(i32 %add.3, !493, !DIExpression(), !501)
  %arrayidx5.3 = getelementptr i8, ptr %src, i64 223, !dbg !506
  %8 = load i8, ptr %arrayidx5.3, align 1, !dbg !506
  %conv6.3 = zext i8 %8 to i32, !dbg !506
  %add7.3 = add nuw nsw i32 %add7.2, %conv6.3, !dbg !508
    #dbg_value(i32 %add7.3, !494, !DIExpression(), !501)
    #dbg_value(i64 4, !495, !DIExpression(), !502)
  %add8 = add nuw nsw i32 %add.3, 2, !dbg !509
  %shr = lshr i32 %add8, 2, !dbg !510
  %mul9 = mul nuw i32 %shr, 16843009, !dbg !511
    #dbg_value(i32 %mul9, !493, !DIExpression(), !501)
  %add10 = add nuw nsw i32 %add7.3, 2, !dbg !512
  %shr11 = lshr i32 %add10, 2, !dbg !513
    #dbg_value(i32 %mul12, !494, !DIExpression(), !501)
    #dbg_value(i32 0, !497, !DIExpression(), !514)
    #dbg_value(ptr %src, !492, !DIExpression(), !501)
    #dbg_value(i32 0, !497, !DIExpression(), !514)
    #dbg_value(ptr %src, !492, !DIExpression(), !501)
  store i32 %mul9, ptr %src, align 4, !dbg !515
  %add.ptr19 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !518
  store i32 %mul9, ptr %add.ptr19, align 4, !dbg !519
    #dbg_value(ptr %2, !492, !DIExpression(), !501)
    #dbg_value(i32 1, !497, !DIExpression(), !514)
  store i32 %mul9, ptr %2, align 4, !dbg !515
  %add.ptr19.1 = getelementptr i8, ptr %src, i64 36, !dbg !518
  store i32 %mul9, ptr %add.ptr19.1, align 4, !dbg !519
  %add.ptr20.1 = getelementptr i8, ptr %src, i64 64, !dbg !520
    #dbg_value(ptr %add.ptr20.1, !492, !DIExpression(), !501)
    #dbg_value(i32 2, !497, !DIExpression(), !514)
  store i32 %mul9, ptr %add.ptr20.1, align 4, !dbg !515
  %add.ptr19.2 = getelementptr i8, ptr %src, i64 68, !dbg !518
  store i32 %mul9, ptr %add.ptr19.2, align 4, !dbg !519
  %add.ptr20.2 = getelementptr i8, ptr %src, i64 96, !dbg !520
    #dbg_value(ptr %add.ptr20.2, !492, !DIExpression(), !501)
    #dbg_value(i32 3, !497, !DIExpression(), !514)
  store i32 %mul9, ptr %add.ptr20.2, align 4, !dbg !515
  %add.ptr19.3 = getelementptr i8, ptr %src, i64 100, !dbg !518
  store i32 %mul9, ptr %add.ptr19.3, align 4, !dbg !519
  %add.ptr20.3 = getelementptr i8, ptr %src, i64 128, !dbg !520
    #dbg_value(ptr %add.ptr20.3, !492, !DIExpression(), !501)
    #dbg_value(i32 4, !497, !DIExpression(), !514)
  %mul12 = mul nuw i32 %shr11, 16843009, !dbg !521
    #dbg_value(i32 0, !499, !DIExpression(), !522)
    #dbg_value(ptr %add.ptr20.3, !492, !DIExpression(), !501)
  store i32 %mul12, ptr %add.ptr20.3, align 4, !dbg !523
  %add.ptr31 = getelementptr i8, ptr %src, i64 132, !dbg !526
  store i32 %mul12, ptr %add.ptr31, align 4, !dbg !527
  %add.ptr32 = getelementptr i8, ptr %src, i64 160, !dbg !528
    #dbg_value(ptr %add.ptr32, !492, !DIExpression(), !501)
    #dbg_value(i32 1, !499, !DIExpression(), !522)
  store i32 %mul12, ptr %add.ptr32, align 4, !dbg !523
  %add.ptr31.1 = getelementptr i8, ptr %src, i64 164, !dbg !526
  store i32 %mul12, ptr %add.ptr31.1, align 4, !dbg !527
  %add.ptr32.1 = getelementptr i8, ptr %src, i64 192, !dbg !528
    #dbg_value(ptr %add.ptr32.1, !492, !DIExpression(), !501)
    #dbg_value(i32 2, !499, !DIExpression(), !522)
  store i32 %mul12, ptr %add.ptr32.1, align 4, !dbg !523
  %add.ptr31.2 = getelementptr i8, ptr %src, i64 196, !dbg !526
  store i32 %mul12, ptr %add.ptr31.2, align 4, !dbg !527
  %add.ptr32.2 = getelementptr i8, ptr %src, i64 224, !dbg !528
    #dbg_value(ptr %add.ptr32.2, !492, !DIExpression(), !501)
    #dbg_value(i32 3, !499, !DIExpression(), !522)
  store i32 %mul12, ptr %add.ptr32.2, align 4, !dbg !523
  %add.ptr31.3 = getelementptr i8, ptr %src, i64 228, !dbg !526
  store i32 %mul12, ptr %add.ptr31.3, align 4, !dbg !527
    #dbg_value(ptr %add.ptr32.2, !492, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !501)
    #dbg_value(i32 4, !499, !DIExpression(), !522)
  ret void, !dbg !529
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8c_dc_top(ptr nocapture noundef %src) #1 !dbg !530 {
entry:
    #dbg_value(ptr %src, !532, !DIExpression(), !539)
    #dbg_value(i32 0, !533, !DIExpression(), !539)
    #dbg_value(i32 0, !534, !DIExpression(), !539)
    #dbg_value(i32 0, !535, !DIExpression(), !540)
    #dbg_value(i64 0, !535, !DIExpression(), !540)
    #dbg_value(i32 0, !534, !DIExpression(), !539)
    #dbg_value(i32 0, !533, !DIExpression(), !539)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !541
  %0 = load i8, ptr %arrayidx, align 1, !dbg !541
  %conv = zext i8 %0 to i32, !dbg !541
    #dbg_value(i32 %conv, !533, !DIExpression(), !539)
  %arrayidx4 = getelementptr inbounds i8, ptr %src, i64 -28, !dbg !544
  %1 = load i8, ptr %arrayidx4, align 1, !dbg !544
  %conv5 = zext i8 %1 to i32, !dbg !544
    #dbg_value(i32 %conv5, !534, !DIExpression(), !539)
    #dbg_value(i64 1, !535, !DIExpression(), !540)
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !541
  %2 = load i8, ptr %arrayidx.1, align 1, !dbg !541
  %conv.1 = zext i8 %2 to i32, !dbg !541
  %add.1 = add nuw nsw i32 %conv, %conv.1, !dbg !545
    #dbg_value(i32 %add.1, !533, !DIExpression(), !539)
  %arrayidx4.1 = getelementptr inbounds i8, ptr %src, i64 -27, !dbg !544
  %3 = load i8, ptr %arrayidx4.1, align 1, !dbg !544
  %conv5.1 = zext i8 %3 to i32, !dbg !544
  %add6.1 = add nuw nsw i32 %conv5, %conv5.1, !dbg !546
    #dbg_value(i32 %add6.1, !534, !DIExpression(), !539)
    #dbg_value(i64 2, !535, !DIExpression(), !540)
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !541
  %4 = load i8, ptr %arrayidx.2, align 1, !dbg !541
  %conv.2 = zext i8 %4 to i32, !dbg !541
  %add.2 = add nuw nsw i32 %add.1, %conv.2, !dbg !545
    #dbg_value(i32 %add.2, !533, !DIExpression(), !539)
  %arrayidx4.2 = getelementptr inbounds i8, ptr %src, i64 -26, !dbg !544
  %5 = load i8, ptr %arrayidx4.2, align 1, !dbg !544
  %conv5.2 = zext i8 %5 to i32, !dbg !544
  %add6.2 = add nuw nsw i32 %add6.1, %conv5.2, !dbg !546
    #dbg_value(i32 %add6.2, !534, !DIExpression(), !539)
    #dbg_value(i64 3, !535, !DIExpression(), !540)
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 -29, !dbg !541
  %6 = load i8, ptr %arrayidx.3, align 1, !dbg !541
  %conv.3 = zext i8 %6 to i32, !dbg !541
  %add.3 = add nuw nsw i32 %add.2, %conv.3, !dbg !545
    #dbg_value(i32 %add.3, !533, !DIExpression(), !539)
  %arrayidx4.3 = getelementptr inbounds i8, ptr %src, i64 -25, !dbg !544
  %7 = load i8, ptr %arrayidx4.3, align 1, !dbg !544
  %conv5.3 = zext i8 %7 to i32, !dbg !544
  %add6.3 = add nuw nsw i32 %add6.2, %conv5.3, !dbg !546
    #dbg_value(i32 %add6.3, !534, !DIExpression(), !539)
    #dbg_value(i64 4, !535, !DIExpression(), !540)
  %add7 = add nuw nsw i32 %add.3, 2, !dbg !547
  %shr = lshr i32 %add7, 2, !dbg !548
  %mul = mul nuw i32 %shr, 16843009, !dbg !549
    #dbg_value(i32 %mul, !533, !DIExpression(), !539)
  %add8 = add nuw nsw i32 %add6.3, 2, !dbg !550
  %shr9 = lshr i32 %add8, 2, !dbg !551
  %mul10 = mul nuw i32 %shr9, 16843009, !dbg !552
    #dbg_value(i32 %mul10, !534, !DIExpression(), !539)
    #dbg_value(i32 0, !537, !DIExpression(), !553)
    #dbg_value(ptr %src, !532, !DIExpression(), !539)
    #dbg_value(i32 0, !537, !DIExpression(), !553)
    #dbg_value(ptr %src, !532, !DIExpression(), !539)
  store i32 %mul, ptr %src, align 4, !dbg !554
  %add.ptr16 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !557
  store i32 %mul10, ptr %add.ptr16, align 4, !dbg !558
  %add.ptr17 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !559
    #dbg_value(ptr %add.ptr17, !532, !DIExpression(), !539)
    #dbg_value(i32 1, !537, !DIExpression(), !553)
  store i32 %mul, ptr %add.ptr17, align 4, !dbg !554
  %add.ptr16.1 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !557
  store i32 %mul10, ptr %add.ptr16.1, align 4, !dbg !558
  %add.ptr17.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !559
    #dbg_value(ptr %add.ptr17.1, !532, !DIExpression(), !539)
    #dbg_value(i32 2, !537, !DIExpression(), !553)
  store i32 %mul, ptr %add.ptr17.1, align 4, !dbg !554
  %add.ptr16.2 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !557
  store i32 %mul10, ptr %add.ptr16.2, align 4, !dbg !558
  %add.ptr17.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !559
    #dbg_value(ptr %add.ptr17.2, !532, !DIExpression(), !539)
    #dbg_value(i32 3, !537, !DIExpression(), !553)
  store i32 %mul, ptr %add.ptr17.2, align 4, !dbg !554
  %add.ptr16.3 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !557
  store i32 %mul10, ptr %add.ptr16.3, align 4, !dbg !558
  %add.ptr17.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !559
    #dbg_value(ptr %add.ptr17.3, !532, !DIExpression(), !539)
    #dbg_value(i32 4, !537, !DIExpression(), !553)
  store i32 %mul, ptr %add.ptr17.3, align 4, !dbg !554
  %add.ptr16.4 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !557
  store i32 %mul10, ptr %add.ptr16.4, align 4, !dbg !558
  %add.ptr17.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !559
    #dbg_value(ptr %add.ptr17.4, !532, !DIExpression(), !539)
    #dbg_value(i32 5, !537, !DIExpression(), !553)
  store i32 %mul, ptr %add.ptr17.4, align 4, !dbg !554
  %add.ptr16.5 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !557
  store i32 %mul10, ptr %add.ptr16.5, align 4, !dbg !558
  %add.ptr17.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !559
    #dbg_value(ptr %add.ptr17.5, !532, !DIExpression(), !539)
    #dbg_value(i32 6, !537, !DIExpression(), !553)
  store i32 %mul, ptr %add.ptr17.5, align 4, !dbg !554
  %add.ptr16.6 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !557
  store i32 %mul10, ptr %add.ptr16.6, align 4, !dbg !558
  %add.ptr17.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !559
    #dbg_value(ptr %add.ptr17.6, !532, !DIExpression(), !539)
    #dbg_value(i32 7, !537, !DIExpression(), !553)
  store i32 %mul, ptr %add.ptr17.6, align 4, !dbg !554
  %add.ptr16.7 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !557
  store i32 %mul10, ptr %add.ptr16.7, align 4, !dbg !558
    #dbg_value(ptr %add.ptr17.6, !532, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !539)
    #dbg_value(i32 8, !537, !DIExpression(), !553)
  ret void, !dbg !560
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @predict_8x8c_dc_128(ptr nocapture noundef writeonly %src) #0 !dbg !561 {
entry:
    #dbg_value(ptr %src, !563, !DIExpression(), !566)
    #dbg_value(i32 0, !564, !DIExpression(), !567)
    #dbg_value(i32 0, !564, !DIExpression(), !567)
    #dbg_value(ptr %src, !563, !DIExpression(), !566)
  store i32 -2139062144, ptr %src, align 4, !dbg !568
  %add.ptr1 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !571
  store i32 -2139062144, ptr %add.ptr1, align 4, !dbg !572
  %add.ptr2 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !573
    #dbg_value(ptr %add.ptr2, !563, !DIExpression(), !566)
    #dbg_value(i32 1, !564, !DIExpression(), !567)
  store i32 -2139062144, ptr %add.ptr2, align 4, !dbg !568
  %add.ptr1.1 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !571
  store i32 -2139062144, ptr %add.ptr1.1, align 4, !dbg !572
  %add.ptr2.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !573
    #dbg_value(ptr %add.ptr2.1, !563, !DIExpression(), !566)
    #dbg_value(i32 2, !564, !DIExpression(), !567)
  store i32 -2139062144, ptr %add.ptr2.1, align 4, !dbg !568
  %add.ptr1.2 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !571
  store i32 -2139062144, ptr %add.ptr1.2, align 4, !dbg !572
  %add.ptr2.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !573
    #dbg_value(ptr %add.ptr2.2, !563, !DIExpression(), !566)
    #dbg_value(i32 3, !564, !DIExpression(), !567)
  store i32 -2139062144, ptr %add.ptr2.2, align 4, !dbg !568
  %add.ptr1.3 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !571
  store i32 -2139062144, ptr %add.ptr1.3, align 4, !dbg !572
  %add.ptr2.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !573
    #dbg_value(ptr %add.ptr2.3, !563, !DIExpression(), !566)
    #dbg_value(i32 4, !564, !DIExpression(), !567)
  store i32 -2139062144, ptr %add.ptr2.3, align 4, !dbg !568
  %add.ptr1.4 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !571
  store i32 -2139062144, ptr %add.ptr1.4, align 4, !dbg !572
  %add.ptr2.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !573
    #dbg_value(ptr %add.ptr2.4, !563, !DIExpression(), !566)
    #dbg_value(i32 5, !564, !DIExpression(), !567)
  store i32 -2139062144, ptr %add.ptr2.4, align 4, !dbg !568
  %add.ptr1.5 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !571
  store i32 -2139062144, ptr %add.ptr1.5, align 4, !dbg !572
  %add.ptr2.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !573
    #dbg_value(ptr %add.ptr2.5, !563, !DIExpression(), !566)
    #dbg_value(i32 6, !564, !DIExpression(), !567)
  store i32 -2139062144, ptr %add.ptr2.5, align 4, !dbg !568
  %add.ptr1.6 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !571
  store i32 -2139062144, ptr %add.ptr1.6, align 4, !dbg !572
  %add.ptr2.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !573
    #dbg_value(ptr %add.ptr2.6, !563, !DIExpression(), !566)
    #dbg_value(i32 7, !564, !DIExpression(), !567)
  store i32 -2139062144, ptr %add.ptr2.6, align 4, !dbg !568
  %add.ptr1.7 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !571
  store i32 -2139062144, ptr %add.ptr1.7, align 4, !dbg !572
    #dbg_value(ptr %add.ptr2.6, !563, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !566)
    #dbg_value(i32 8, !564, !DIExpression(), !567)
  ret void, !dbg !574
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_8x8_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf, ptr nocapture noundef writeonly %predict_filter) local_unnamed_addr #0 !dbg !575 {
entry:
    #dbg_value(i32 %cpu, !589, !DIExpression(), !592)
    #dbg_value(ptr %pf, !590, !DIExpression(), !592)
    #dbg_value(ptr %predict_filter, !591, !DIExpression(), !592)
  store ptr @predict_8x8_v, ptr %pf, align 8, !dbg !593
  %arrayidx1 = getelementptr inbounds i8, ptr %pf, i64 8, !dbg !594
  store ptr @predict_8x8_h, ptr %arrayidx1, align 8, !dbg !595
  %arrayidx2 = getelementptr inbounds i8, ptr %pf, i64 16, !dbg !596
  store ptr @predict_8x8_dc, ptr %arrayidx2, align 8, !dbg !597
  %arrayidx3 = getelementptr inbounds i8, ptr %pf, i64 24, !dbg !598
  store ptr @predict_8x8_ddl, ptr %arrayidx3, align 8, !dbg !599
  %arrayidx4 = getelementptr inbounds i8, ptr %pf, i64 32, !dbg !600
  store ptr @predict_8x8_ddr, ptr %arrayidx4, align 8, !dbg !601
  %arrayidx5 = getelementptr inbounds i8, ptr %pf, i64 40, !dbg !602
  store ptr @predict_8x8_vr, ptr %arrayidx5, align 8, !dbg !603
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 48, !dbg !604
  store ptr @predict_8x8_hd, ptr %arrayidx6, align 8, !dbg !605
  %arrayidx7 = getelementptr inbounds i8, ptr %pf, i64 56, !dbg !606
  store ptr @predict_8x8_vl, ptr %arrayidx7, align 8, !dbg !607
  %arrayidx8 = getelementptr inbounds i8, ptr %pf, i64 64, !dbg !608
  store ptr @predict_8x8_hu, ptr %arrayidx8, align 8, !dbg !609
  %arrayidx9 = getelementptr inbounds i8, ptr %pf, i64 72, !dbg !610
  store ptr @predict_8x8_dc_left, ptr %arrayidx9, align 8, !dbg !611
  %arrayidx10 = getelementptr inbounds i8, ptr %pf, i64 80, !dbg !612
  store ptr @predict_8x8_dc_top, ptr %arrayidx10, align 8, !dbg !613
  %arrayidx11 = getelementptr inbounds i8, ptr %pf, i64 88, !dbg !614
  store ptr @predict_8x8_dc_128, ptr %arrayidx11, align 8, !dbg !615
  store ptr @predict_8x8_filter, ptr %predict_filter, align 8, !dbg !616
  ret void, !dbg !617
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_v(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 !dbg !618 {
entry:
    #dbg_value(ptr %src, !620, !DIExpression(), !625)
    #dbg_value(ptr %edge, !621, !DIExpression(), !625)
  %add.ptr = getelementptr inbounds i8, ptr %edge, i64 16, !dbg !626
  %0 = load i64, ptr %add.ptr, align 8, !dbg !626
    #dbg_value(i64 %0, !622, !DIExpression(), !625)
    #dbg_value(i32 0, !623, !DIExpression(), !627)
    #dbg_value(i64 0, !623, !DIExpression(), !627)
  store i64 %0, ptr %src, align 8, !dbg !628
    #dbg_value(i64 1, !623, !DIExpression(), !627)
  %add.ptr1.1 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !630
  store i64 %0, ptr %add.ptr1.1, align 8, !dbg !628
    #dbg_value(i64 2, !623, !DIExpression(), !627)
  %add.ptr1.2 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !630
  store i64 %0, ptr %add.ptr1.2, align 8, !dbg !628
    #dbg_value(i64 3, !623, !DIExpression(), !627)
  %add.ptr1.3 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !630
  store i64 %0, ptr %add.ptr1.3, align 8, !dbg !628
    #dbg_value(i64 4, !623, !DIExpression(), !627)
  %add.ptr1.4 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !630
  store i64 %0, ptr %add.ptr1.4, align 8, !dbg !628
    #dbg_value(i64 5, !623, !DIExpression(), !627)
  %add.ptr1.5 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !630
  store i64 %0, ptr %add.ptr1.5, align 8, !dbg !628
    #dbg_value(i64 6, !623, !DIExpression(), !627)
  %add.ptr1.6 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !630
  store i64 %0, ptr %add.ptr1.6, align 8, !dbg !628
    #dbg_value(i64 7, !623, !DIExpression(), !627)
  %add.ptr1.7 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !630
  store i64 %0, ptr %add.ptr1.7, align 8, !dbg !628
    #dbg_value(i64 8, !623, !DIExpression(), !627)
  ret void, !dbg !631
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_h(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 !dbg !632 {
entry:
    #dbg_value(ptr %src, !634, !DIExpression(), !644)
    #dbg_value(ptr %edge, !635, !DIExpression(), !644)
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 14, !dbg !645
  %0 = load i8, ptr %arrayidx, align 1, !dbg !645
  %conv = zext i8 %0 to i32, !dbg !645
    #dbg_value(i32 %conv, !636, !DIExpression(), !644)
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 13, !dbg !645
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !645
  %conv2 = zext i8 %1 to i32, !dbg !645
    #dbg_value(i32 %conv2, !637, !DIExpression(), !644)
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 12, !dbg !645
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !645
  %conv4 = zext i8 %2 to i32, !dbg !645
    #dbg_value(i32 %conv4, !638, !DIExpression(), !644)
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 11, !dbg !645
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !645
  %conv6 = zext i8 %3 to i32, !dbg !645
    #dbg_value(i32 %conv6, !639, !DIExpression(), !644)
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 10, !dbg !645
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !645
  %conv8 = zext i8 %4 to i32, !dbg !645
    #dbg_value(i32 %conv8, !640, !DIExpression(), !644)
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 9, !dbg !645
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !645
  %conv10 = zext i8 %5 to i32, !dbg !645
    #dbg_value(i32 %conv10, !641, !DIExpression(), !644)
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 8, !dbg !645
  %6 = load i8, ptr %arrayidx11, align 1, !dbg !645
  %conv12 = zext i8 %6 to i32, !dbg !645
    #dbg_value(i32 %conv12, !642, !DIExpression(), !644)
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 7, !dbg !645
  %7 = load i8, ptr %arrayidx13, align 1, !dbg !645
  %conv14 = zext i8 %7 to i32, !dbg !645
    #dbg_value(i32 %conv14, !643, !DIExpression(), !644)
  %mul = mul nuw i32 %conv, 16843009, !dbg !646
  %add.ptr15 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !646
  store i32 %mul, ptr %add.ptr15, align 4, !dbg !646
  store i32 %mul, ptr %src, align 4, !dbg !646
  %mul18 = mul nuw i32 %conv2, 16843009, !dbg !647
  %add.ptr19 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !647
  %add.ptr20 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !647
  store i32 %mul18, ptr %add.ptr20, align 4, !dbg !647
  store i32 %mul18, ptr %add.ptr19, align 4, !dbg !647
  %mul23 = mul nuw i32 %conv4, 16843009, !dbg !648
  %add.ptr24 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !648
  %add.ptr25 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !648
  store i32 %mul23, ptr %add.ptr25, align 4, !dbg !648
  store i32 %mul23, ptr %add.ptr24, align 4, !dbg !648
  %mul28 = mul nuw i32 %conv6, 16843009, !dbg !649
  %add.ptr29 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !649
  %add.ptr30 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !649
  store i32 %mul28, ptr %add.ptr30, align 4, !dbg !649
  store i32 %mul28, ptr %add.ptr29, align 4, !dbg !649
  %mul33 = mul nuw i32 %conv8, 16843009, !dbg !650
  %add.ptr34 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !650
  %add.ptr35 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !650
  store i32 %mul33, ptr %add.ptr35, align 4, !dbg !650
  store i32 %mul33, ptr %add.ptr34, align 4, !dbg !650
  %mul38 = mul nuw i32 %conv10, 16843009, !dbg !651
  %add.ptr39 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !651
  %add.ptr40 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !651
  store i32 %mul38, ptr %add.ptr40, align 4, !dbg !651
  store i32 %mul38, ptr %add.ptr39, align 4, !dbg !651
  %mul43 = mul nuw i32 %conv12, 16843009, !dbg !652
  %add.ptr44 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !652
  %add.ptr45 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !652
  store i32 %mul43, ptr %add.ptr45, align 4, !dbg !652
  store i32 %mul43, ptr %add.ptr44, align 4, !dbg !652
  %mul48 = mul nuw i32 %conv14, 16843009, !dbg !653
  %add.ptr49 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !653
  %add.ptr50 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !653
  store i32 %mul48, ptr %add.ptr50, align 4, !dbg !653
  store i32 %mul48, ptr %add.ptr49, align 4, !dbg !653
  ret void, !dbg !654
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_dc(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 !dbg !655 {
entry:
    #dbg_value(ptr %src, !657, !DIExpression(), !678)
    #dbg_value(ptr %edge, !658, !DIExpression(), !678)
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 14, !dbg !679
  %0 = load i8, ptr %arrayidx, align 1, !dbg !679
  %conv = zext i8 %0 to i32, !dbg !679
    #dbg_value(i32 %conv, !659, !DIExpression(), !678)
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 13, !dbg !679
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !679
  %conv2 = zext i8 %1 to i32, !dbg !679
    #dbg_value(i32 %conv2, !660, !DIExpression(), !678)
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 12, !dbg !679
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !679
  %conv4 = zext i8 %2 to i32, !dbg !679
    #dbg_value(i32 %conv4, !661, !DIExpression(), !678)
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 11, !dbg !679
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !679
  %conv6 = zext i8 %3 to i32, !dbg !679
    #dbg_value(i32 %conv6, !662, !DIExpression(), !678)
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 10, !dbg !679
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !679
  %conv8 = zext i8 %4 to i32, !dbg !679
    #dbg_value(i32 %conv8, !663, !DIExpression(), !678)
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 9, !dbg !679
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !679
  %conv10 = zext i8 %5 to i32, !dbg !679
    #dbg_value(i32 %conv10, !664, !DIExpression(), !678)
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 8, !dbg !679
  %6 = load i8, ptr %arrayidx11, align 1, !dbg !679
  %conv12 = zext i8 %6 to i32, !dbg !679
    #dbg_value(i32 %conv12, !665, !DIExpression(), !678)
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 7, !dbg !679
  %7 = load i8, ptr %arrayidx13, align 1, !dbg !679
  %conv14 = zext i8 %7 to i32, !dbg !679
    #dbg_value(i32 %conv14, !666, !DIExpression(), !678)
  %arrayidx15 = getelementptr inbounds i8, ptr %edge, i64 16, !dbg !680
  %8 = load i8, ptr %arrayidx15, align 1, !dbg !680
  %conv16 = zext i8 %8 to i32, !dbg !680
    #dbg_value(i32 %conv16, !667, !DIExpression(), !678)
  %arrayidx17 = getelementptr inbounds i8, ptr %edge, i64 17, !dbg !680
  %9 = load i8, ptr %arrayidx17, align 1, !dbg !680
  %conv18 = zext i8 %9 to i32, !dbg !680
    #dbg_value(i32 %conv18, !668, !DIExpression(), !678)
  %arrayidx19 = getelementptr inbounds i8, ptr %edge, i64 18, !dbg !680
  %10 = load i8, ptr %arrayidx19, align 1, !dbg !680
  %conv20 = zext i8 %10 to i32, !dbg !680
    #dbg_value(i32 %conv20, !669, !DIExpression(), !678)
  %arrayidx21 = getelementptr inbounds i8, ptr %edge, i64 19, !dbg !680
  %11 = load i8, ptr %arrayidx21, align 1, !dbg !680
  %conv22 = zext i8 %11 to i32, !dbg !680
    #dbg_value(i32 %conv22, !670, !DIExpression(), !678)
  %arrayidx23 = getelementptr inbounds i8, ptr %edge, i64 20, !dbg !680
  %12 = load i8, ptr %arrayidx23, align 1, !dbg !680
  %conv24 = zext i8 %12 to i32, !dbg !680
    #dbg_value(i32 %conv24, !671, !DIExpression(), !678)
  %arrayidx25 = getelementptr inbounds i8, ptr %edge, i64 21, !dbg !680
  %13 = load i8, ptr %arrayidx25, align 1, !dbg !680
  %conv26 = zext i8 %13 to i32, !dbg !680
    #dbg_value(i32 %conv26, !672, !DIExpression(), !678)
  %arrayidx27 = getelementptr inbounds i8, ptr %edge, i64 22, !dbg !680
  %14 = load i8, ptr %arrayidx27, align 1, !dbg !680
  %conv28 = zext i8 %14 to i32, !dbg !680
    #dbg_value(i32 %conv28, !673, !DIExpression(), !678)
  %arrayidx29 = getelementptr inbounds i8, ptr %edge, i64 23, !dbg !680
  %15 = load i8, ptr %arrayidx29, align 1, !dbg !680
  %conv30 = zext i8 %15 to i32, !dbg !680
    #dbg_value(i32 %conv30, !674, !DIExpression(), !678)
  %add = add nuw nsw i32 %conv, 8, !dbg !681
  %add31 = add nuw nsw i32 %add, %conv2, !dbg !682
  %add32 = add nuw nsw i32 %add31, %conv4, !dbg !683
  %add33 = add nuw nsw i32 %add32, %conv6, !dbg !684
  %add34 = add nuw nsw i32 %add33, %conv8, !dbg !685
  %add35 = add nuw nsw i32 %add34, %conv10, !dbg !686
  %add36 = add nuw nsw i32 %add35, %conv12, !dbg !687
  %add37 = add nuw nsw i32 %add36, %conv14, !dbg !688
  %add38 = add nuw nsw i32 %add37, %conv16, !dbg !689
  %add39 = add nuw nsw i32 %add38, %conv18, !dbg !690
  %add40 = add nuw nsw i32 %add39, %conv20, !dbg !691
  %add41 = add nuw nsw i32 %add40, %conv22, !dbg !692
  %add42 = add nuw nsw i32 %add41, %conv24, !dbg !693
  %add43 = add nuw nsw i32 %add42, %conv26, !dbg !694
  %add44 = add nuw nsw i32 %add43, %conv28, !dbg !695
  %add45 = add nuw nsw i32 %add44, %conv30, !dbg !696
  %shr = lshr i32 %add45, 4, !dbg !697
  %mul = mul nuw nsw i32 %shr, 16843009, !dbg !698
    #dbg_value(i32 %mul, !675, !DIExpression(), !678)
    #dbg_value(i32 0, !676, !DIExpression(), !699)
    #dbg_value(ptr %src, !657, !DIExpression(), !678)
    #dbg_value(i32 0, !676, !DIExpression(), !699)
    #dbg_value(ptr %src, !657, !DIExpression(), !678)
  store i32 %mul, ptr %src, align 4, !dbg !700
  %add.ptr47 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !700
  store i32 %mul, ptr %add.ptr47, align 4, !dbg !700
  %add.ptr48 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !700
    #dbg_value(ptr %add.ptr48, !657, !DIExpression(), !678)
    #dbg_value(i32 1, !676, !DIExpression(), !699)
  store i32 %mul, ptr %add.ptr48, align 4, !dbg !700
  %add.ptr47.1 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !700
  store i32 %mul, ptr %add.ptr47.1, align 4, !dbg !700
  %add.ptr48.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !700
    #dbg_value(ptr %add.ptr48.1, !657, !DIExpression(), !678)
    #dbg_value(i32 2, !676, !DIExpression(), !699)
  store i32 %mul, ptr %add.ptr48.1, align 4, !dbg !700
  %add.ptr47.2 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !700
  store i32 %mul, ptr %add.ptr47.2, align 4, !dbg !700
  %add.ptr48.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !700
    #dbg_value(ptr %add.ptr48.2, !657, !DIExpression(), !678)
    #dbg_value(i32 3, !676, !DIExpression(), !699)
  store i32 %mul, ptr %add.ptr48.2, align 4, !dbg !700
  %add.ptr47.3 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !700
  store i32 %mul, ptr %add.ptr47.3, align 4, !dbg !700
  %add.ptr48.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !700
    #dbg_value(ptr %add.ptr48.3, !657, !DIExpression(), !678)
    #dbg_value(i32 4, !676, !DIExpression(), !699)
  store i32 %mul, ptr %add.ptr48.3, align 4, !dbg !700
  %add.ptr47.4 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !700
  store i32 %mul, ptr %add.ptr47.4, align 4, !dbg !700
  %add.ptr48.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !700
    #dbg_value(ptr %add.ptr48.4, !657, !DIExpression(), !678)
    #dbg_value(i32 5, !676, !DIExpression(), !699)
  store i32 %mul, ptr %add.ptr48.4, align 4, !dbg !700
  %add.ptr47.5 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !700
  store i32 %mul, ptr %add.ptr47.5, align 4, !dbg !700
  %add.ptr48.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !700
    #dbg_value(ptr %add.ptr48.5, !657, !DIExpression(), !678)
    #dbg_value(i32 6, !676, !DIExpression(), !699)
  store i32 %mul, ptr %add.ptr48.5, align 4, !dbg !700
  %add.ptr47.6 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !700
  store i32 %mul, ptr %add.ptr47.6, align 4, !dbg !700
  %add.ptr48.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !700
    #dbg_value(ptr %add.ptr48.6, !657, !DIExpression(), !678)
    #dbg_value(i32 7, !676, !DIExpression(), !699)
  store i32 %mul, ptr %add.ptr48.6, align 4, !dbg !700
  %add.ptr47.7 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !700
  store i32 %mul, ptr %add.ptr47.7, align 4, !dbg !700
    #dbg_value(ptr %add.ptr48.6, !657, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !678)
    #dbg_value(i32 8, !676, !DIExpression(), !699)
  ret void, !dbg !703
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_ddl(ptr noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 !dbg !704 {
entry:
    #dbg_value(ptr %src, !706, !DIExpression(), !724)
    #dbg_value(ptr %edge, !707, !DIExpression(), !724)
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 16, !dbg !725
  %0 = load i8, ptr %arrayidx, align 1, !dbg !725
  %conv = zext i8 %0 to i32, !dbg !725
    #dbg_value(i32 %conv, !708, !DIExpression(), !724)
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 17, !dbg !725
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !725
  %conv2 = zext i8 %1 to i32, !dbg !725
    #dbg_value(i32 %conv2, !709, !DIExpression(), !724)
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 18, !dbg !725
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !725
  %conv4 = zext i8 %2 to i32, !dbg !725
    #dbg_value(i32 %conv4, !710, !DIExpression(), !724)
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 19, !dbg !725
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !725
  %conv6 = zext i8 %3 to i32, !dbg !725
    #dbg_value(i32 %conv6, !711, !DIExpression(), !724)
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 20, !dbg !725
    #dbg_value(i8 poison, !712, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !724)
    #dbg_value(i8 poison, !713, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !724)
    #dbg_value(i8 poison, !714, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !724)
    #dbg_value(i8 poison, !715, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !724)
  %arrayidx15 = getelementptr inbounds i8, ptr %edge, i64 24, !dbg !726
    #dbg_value(i8 poison, !716, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !724)
    #dbg_value(i8 poison, !717, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !724)
    #dbg_value(i8 poison, !718, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !724)
    #dbg_value(i8 poison, !719, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !724)
  %arrayidx23 = getelementptr inbounds i8, ptr %edge, i64 28, !dbg !726
  %4 = load i8, ptr %arrayidx23, align 1, !dbg !726
  %conv24 = zext i8 %4 to i32, !dbg !726
    #dbg_value(i32 %conv24, !720, !DIExpression(), !724)
  %arrayidx25 = getelementptr inbounds i8, ptr %edge, i64 29, !dbg !726
  %5 = load i8, ptr %arrayidx25, align 1, !dbg !726
  %conv26 = zext i8 %5 to i32, !dbg !726
    #dbg_value(i32 %conv26, !721, !DIExpression(), !724)
  %arrayidx27 = getelementptr inbounds i8, ptr %edge, i64 30, !dbg !726
  %6 = load i8, ptr %arrayidx27, align 1, !dbg !726
  %conv28 = zext i8 %6 to i32, !dbg !726
    #dbg_value(i32 %conv28, !722, !DIExpression(), !724)
  %arrayidx29 = getelementptr inbounds i8, ptr %edge, i64 31, !dbg !726
  %7 = load i8, ptr %arrayidx29, align 1, !dbg !726
  %conv30 = zext i8 %7 to i32, !dbg !726
    #dbg_value(i32 %conv30, !723, !DIExpression(), !724)
  %mul = shl nuw nsw i32 %conv2, 1, !dbg !727
  %add = add nuw nsw i32 %conv4, 2, !dbg !727
  %add31 = add nuw nsw i32 %add, %conv, !dbg !727
  %add32 = add nuw nsw i32 %add31, %mul, !dbg !727
  %shr = lshr i32 %add32, 2, !dbg !727
  %conv33 = trunc nuw i32 %shr to i8, !dbg !727
  %mul35 = shl nuw nsw i32 %conv4, 1, !dbg !728
  %add36 = add nuw nsw i32 %conv6, 2, !dbg !728
  %add37 = add nuw nsw i32 %add36, %conv2, !dbg !728
  %add38 = add nuw nsw i32 %add37, %mul35, !dbg !728
  %shr39 = lshr i32 %add38, 2, !dbg !728
  %conv40 = trunc nuw i32 %shr39 to i8, !dbg !728
  %arrayidx41 = getelementptr inbounds i8, ptr %src, i64 1, !dbg !729
  %arrayidx42 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !730
  %mul43 = shl nuw nsw i32 %conv6, 1, !dbg !731
  %add45 = add nuw nsw i32 %add, %mul43, !dbg !731
  %arrayidx49 = getelementptr inbounds i8, ptr %src, i64 2, !dbg !732
  %arrayidx50 = getelementptr inbounds i8, ptr %src, i64 33, !dbg !733
  %arrayidx51 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !734
  %arrayidx58 = getelementptr inbounds i8, ptr %src, i64 3, !dbg !735
  %arrayidx59 = getelementptr inbounds i8, ptr %src, i64 34, !dbg !736
  %arrayidx60 = getelementptr inbounds i8, ptr %src, i64 65, !dbg !737
  %arrayidx61 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !738
  %arrayidx68 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !739
  %arrayidx69 = getelementptr inbounds i8, ptr %src, i64 35, !dbg !740
  %arrayidx70 = getelementptr inbounds i8, ptr %src, i64 66, !dbg !741
  %arrayidx71 = getelementptr inbounds i8, ptr %src, i64 97, !dbg !742
  %arrayidx72 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !743
  %arrayidx84 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !744
  %arrayidx97 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !745
  %8 = load <4 x i8>, ptr %arrayidx7, align 1, !dbg !725
  %9 = zext <4 x i8> %8 to <4 x i16>, !dbg !725
  %10 = extractelement <4 x i16> %9, i64 0, !dbg !746
  %11 = zext nneg i16 %10 to i32, !dbg !746
  %add46 = add nuw nsw i32 %add45, %11, !dbg !731
  %shr47 = lshr i32 %add46, 2, !dbg !731
  %conv48 = trunc nuw i32 %shr47 to i8, !dbg !731
  %mul52 = shl nuw nsw i32 %11, 1, !dbg !746
  %add54 = add nuw nsw i32 %add36, %mul52, !dbg !746
  %12 = extractelement <4 x i16> %9, i64 1, !dbg !746
  %13 = zext nneg i16 %12 to i32, !dbg !746
  %add55 = add nuw nsw i32 %add54, %13, !dbg !746
  %shr56 = lshr i32 %add55, 2, !dbg !746
  %conv57 = trunc nuw i32 %shr56 to i8, !dbg !746
  %14 = add nuw nsw <4 x i16> %9, <i16 2, i16 2, i16 2, i16 2>, !dbg !747
  %arrayidx111 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !748
  %arrayidx118 = getelementptr inbounds i8, ptr %src, i64 39, !dbg !749
  %arrayidx119 = getelementptr inbounds i8, ptr %src, i64 70, !dbg !750
  %arrayidx120 = getelementptr inbounds i8, ptr %src, i64 101, !dbg !751
  %arrayidx121 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !752
  %arrayidx131 = getelementptr inbounds i8, ptr %src, i64 71, !dbg !753
  %arrayidx132 = getelementptr inbounds i8, ptr %src, i64 102, !dbg !754
  %arrayidx134 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !755
  %arrayidx143 = getelementptr inbounds i8, ptr %src, i64 103, !dbg !756
  %arrayidx145 = getelementptr inbounds i8, ptr %src, i64 165, !dbg !757
  %arrayidx146 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !758
  %15 = load <4 x i8>, ptr %arrayidx15, align 1, !dbg !726
  %16 = zext <4 x i8> %15 to <4 x i16>, !dbg !726
  store i8 %conv33, ptr %src, align 1, !dbg !759
  store i8 %conv40, ptr %arrayidx41, align 1, !dbg !760
  store i8 %conv40, ptr %arrayidx42, align 1, !dbg !761
  store i8 %conv48, ptr %arrayidx49, align 1, !dbg !762
  store i8 %conv48, ptr %arrayidx50, align 1, !dbg !763
  store i8 %conv48, ptr %arrayidx51, align 1, !dbg !764
  store i8 %conv57, ptr %arrayidx58, align 1, !dbg !765
  store i8 %conv57, ptr %arrayidx59, align 1, !dbg !766
  store i8 %conv57, ptr %arrayidx60, align 1, !dbg !767
  store i8 %conv57, ptr %arrayidx61, align 1, !dbg !768
  %17 = extractelement <4 x i8> %15, i64 0, !dbg !747
  %18 = zext i8 %17 to i16, !dbg !747
  %19 = insertelement <4 x i16> %9, i16 %18, i64 0, !dbg !747
  %20 = shl nuw nsw <4 x i16> %19, <i16 1, i16 1, i16 1, i16 1>, !dbg !747
  %21 = shufflevector <4 x i16> %20, <4 x i16> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !747
  %22 = add nuw nsw <4 x i16> %14, %21, !dbg !747
  %23 = shufflevector <4 x i16> %9, <4 x i16> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>, !dbg !747
  %24 = zext <4 x i8> %15 to <4 x i16>, !dbg !747
  %25 = shufflevector <4 x i16> %23, <4 x i16> %24, <4 x i32> <i32 0, i32 1, i32 4, i32 5>, !dbg !747
  %26 = add nuw nsw <4 x i16> %22, %25, !dbg !747
  %27 = lshr <4 x i16> %26, <i16 2, i16 2, i16 2, i16 2>, !dbg !747
  %28 = trunc <4 x i16> %27 to <4 x i8>, !dbg !747
  store <4 x i8> %28, ptr %arrayidx68, align 1, !dbg !769
  store <4 x i8> %28, ptr %arrayidx69, align 1, !dbg !770
  store <4 x i8> %28, ptr %arrayidx70, align 1, !dbg !771
  store <4 x i8> %28, ptr %arrayidx71, align 1, !dbg !772
  store <4 x i8> %28, ptr %arrayidx72, align 1, !dbg !773
  %29 = zext i8 %4 to i16, !dbg !774
  %30 = insertelement <4 x i16> %16, i16 %29, i64 0, !dbg !774
  %31 = shl nuw nsw <4 x i16> %30, <i16 1, i16 1, i16 1, i16 1>, !dbg !774
  %32 = shufflevector <4 x i16> %31, <4 x i16> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !774
  %33 = add nuw nsw <4 x i16> %16, <i16 2, i16 2, i16 2, i16 2>, !dbg !774
  %34 = add nuw nsw <4 x i16> %33, %32, !dbg !774
  %35 = shufflevector <4 x i16> %16, <4 x i16> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>, !dbg !774
  %36 = zext i8 %4 to i16, !dbg !774
  %37 = insertelement <4 x i16> %35, i16 %36, i64 2, !dbg !774
  %38 = zext i8 %5 to i16, !dbg !774
  %39 = insertelement <4 x i16> %37, i16 %38, i64 3, !dbg !774
  %40 = add nuw nsw <4 x i16> %34, %39, !dbg !774
  %41 = lshr <4 x i16> %40, <i16 2, i16 2, i16 2, i16 2>, !dbg !774
  %42 = trunc <4 x i16> %41 to <4 x i8>, !dbg !774
  %43 = extractelement <4 x i8> %42, i64 0, !dbg !775
  store i8 %43, ptr %arrayidx118, align 1, !dbg !776
  store i8 %43, ptr %arrayidx119, align 1, !dbg !777
  store i8 %43, ptr %arrayidx120, align 1, !dbg !778
  %44 = shufflevector <4 x i8> %28, <4 x i8> %42, <4 x i32> <i32 1, i32 2, i32 3, i32 4>, !dbg !779
  store <4 x i8> %44, ptr %arrayidx84, align 1, !dbg !779
  %45 = extractelement <4 x i8> %42, i64 1, !dbg !780
  store i8 %45, ptr %arrayidx131, align 1, !dbg !781
  store i8 %45, ptr %arrayidx132, align 1, !dbg !782
  store i8 %45, ptr %arrayidx134, align 1, !dbg !783
  %46 = shufflevector <4 x i8> %28, <4 x i8> %42, <4 x i32> <i32 2, i32 3, i32 4, i32 5>, !dbg !784
  store <4 x i8> %46, ptr %arrayidx97, align 1, !dbg !784
  %47 = extractelement <4 x i8> %42, i64 2, !dbg !785
  store i8 %47, ptr %arrayidx143, align 1, !dbg !786
  store i8 %47, ptr %arrayidx145, align 1, !dbg !787
  store i8 %47, ptr %arrayidx146, align 1, !dbg !788
  %48 = shufflevector <4 x i8> %28, <4 x i8> %42, <4 x i32> <i32 3, i32 4, i32 5, i32 6>, !dbg !789
  store <4 x i8> %48, ptr %arrayidx111, align 1, !dbg !789
  store <4 x i8> %42, ptr %arrayidx121, align 1, !dbg !790
  %arrayidx155 = getelementptr inbounds i8, ptr %src, i64 166, !dbg !791
  %49 = extractelement <4 x i8> %42, i64 3, !dbg !792
  store i8 %49, ptr %arrayidx155, align 1, !dbg !793
  %arrayidx156 = getelementptr inbounds i8, ptr %src, i64 197, !dbg !794
  store i8 %49, ptr %arrayidx156, align 1, !dbg !795
  %arrayidx157 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !796
  store i8 %49, ptr %arrayidx157, align 1, !dbg !792
  %mul158 = shl nuw nsw i32 %conv26, 1, !dbg !797
  %add159 = add nuw nsw i32 %conv24, 2, !dbg !797
  %add160 = add nuw nsw i32 %add159, %mul158, !dbg !797
  %add161 = add nuw nsw i32 %add160, %conv28, !dbg !797
  %shr162 = lshr i32 %add161, 2, !dbg !797
  %conv163 = trunc nuw i32 %shr162 to i8, !dbg !797
  %arrayidx164 = getelementptr inbounds i8, ptr %src, i64 167, !dbg !798
  store i8 %conv163, ptr %arrayidx164, align 1, !dbg !799
  %arrayidx165 = getelementptr inbounds i8, ptr %src, i64 198, !dbg !800
  store i8 %conv163, ptr %arrayidx165, align 1, !dbg !801
  %arrayidx166 = getelementptr inbounds i8, ptr %src, i64 229, !dbg !802
  store i8 %conv163, ptr %arrayidx166, align 1, !dbg !803
  %mul167 = shl nuw nsw i32 %conv28, 1, !dbg !804
  %add168 = add nuw nsw i32 %conv26, 2, !dbg !804
  %add169 = add nuw nsw i32 %add168, %mul167, !dbg !804
  %add170 = add nuw nsw i32 %add169, %conv30, !dbg !804
  %shr171 = lshr i32 %add170, 2, !dbg !804
  %conv172 = trunc nuw i32 %shr171 to i8, !dbg !804
  %arrayidx173 = getelementptr inbounds i8, ptr %src, i64 199, !dbg !805
  store i8 %conv172, ptr %arrayidx173, align 1, !dbg !806
  %arrayidx174 = getelementptr inbounds i8, ptr %src, i64 230, !dbg !807
  store i8 %conv172, ptr %arrayidx174, align 1, !dbg !808
  %mul175 = shl nuw nsw i32 %conv30, 1, !dbg !809
  %add176 = add nuw nsw i32 %conv28, 2, !dbg !809
  %add177 = add nuw nsw i32 %add176, %conv30, !dbg !809
  %add178 = add nuw nsw i32 %add177, %mul175, !dbg !809
  %shr179 = lshr i32 %add178, 2, !dbg !809
  %conv180 = trunc nuw i32 %shr179 to i8, !dbg !809
  %arrayidx181 = getelementptr inbounds i8, ptr %src, i64 231, !dbg !810
  store i8 %conv180, ptr %arrayidx181, align 1, !dbg !811
  ret void, !dbg !812
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_ddr(ptr noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 !dbg !813 {
entry:
    #dbg_value(ptr %src, !815, !DIExpression(), !834)
    #dbg_value(ptr %edge, !816, !DIExpression(), !834)
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 16, !dbg !835
  %0 = load i8, ptr %arrayidx, align 1, !dbg !835
  %conv = zext i8 %0 to i32, !dbg !835
    #dbg_value(i32 %conv, !817, !DIExpression(), !834)
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 17, !dbg !835
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !835
  %conv2 = zext i8 %1 to i32, !dbg !835
    #dbg_value(i32 %conv2, !818, !DIExpression(), !834)
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 18, !dbg !835
    #dbg_value(i8 poison, !819, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !834)
    #dbg_value(i8 poison, !820, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !834)
    #dbg_value(i8 poison, !821, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !834)
    #dbg_value(i8 poison, !822, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !834)
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 22, !dbg !835
  %2 = load i8, ptr %arrayidx11, align 1, !dbg !835
    #dbg_value(i8 %2, !823, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !834)
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 23, !dbg !835
  %3 = load i8, ptr %arrayidx13, align 1, !dbg !835
    #dbg_value(i8 %3, !824, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !834)
    #dbg_value(i8 poison, !825, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !834)
    #dbg_value(i8 poison, !826, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !834)
    #dbg_value(i8 poison, !827, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !834)
  %arrayidx21 = getelementptr inbounds i8, ptr %edge, i64 11, !dbg !836
    #dbg_value(i8 poison, !828, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !834)
  %arrayidx23 = getelementptr inbounds i8, ptr %edge, i64 10, !dbg !836
  %4 = load i8, ptr %arrayidx23, align 1, !dbg !836
  %conv24 = zext i8 %4 to i32, !dbg !836
    #dbg_value(i32 %conv24, !829, !DIExpression(), !834)
  %arrayidx25 = getelementptr inbounds i8, ptr %edge, i64 9, !dbg !836
  %5 = load i8, ptr %arrayidx25, align 1, !dbg !836
  %conv26 = zext i8 %5 to i32, !dbg !836
    #dbg_value(i32 %conv26, !830, !DIExpression(), !834)
  %arrayidx27 = getelementptr inbounds i8, ptr %edge, i64 8, !dbg !836
  %6 = load i8, ptr %arrayidx27, align 1, !dbg !836
  %conv28 = zext i8 %6 to i32, !dbg !836
    #dbg_value(i32 %conv28, !831, !DIExpression(), !834)
  %arrayidx29 = getelementptr inbounds i8, ptr %edge, i64 7, !dbg !836
  %7 = load i8, ptr %arrayidx29, align 1, !dbg !836
  %conv30 = zext i8 %7 to i32, !dbg !836
    #dbg_value(i32 %conv30, !832, !DIExpression(), !834)
  %arrayidx31 = getelementptr inbounds i8, ptr %edge, i64 15, !dbg !837
  %8 = load i8, ptr %arrayidx31, align 1, !dbg !837
  %conv32 = zext i8 %8 to i32, !dbg !837
    #dbg_value(i32 %conv32, !833, !DIExpression(), !834)
  %mul = shl nuw nsw i32 %conv28, 1, !dbg !838
  %add = add nuw nsw i32 %conv26, 2, !dbg !838
  %add33 = add nuw nsw i32 %add, %conv30, !dbg !838
  %add34 = add nuw nsw i32 %add33, %mul, !dbg !838
  %shr = lshr i32 %add34, 2, !dbg !838
  %conv35 = trunc nuw i32 %shr to i8, !dbg !838
  %arrayidx36 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !839
  %mul37 = shl nuw nsw i32 %conv26, 1, !dbg !840
  %add38 = add nuw nsw i32 %conv24, 2, !dbg !840
  %add39 = add nuw nsw i32 %add38, %conv28, !dbg !840
  %add40 = add nuw nsw i32 %add39, %mul37, !dbg !840
  %shr41 = lshr i32 %add40, 2, !dbg !840
  %conv42 = trunc nuw i32 %shr41 to i8, !dbg !840
  %arrayidx43 = getelementptr inbounds i8, ptr %src, i64 225, !dbg !841
  %arrayidx44 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !842
  %arrayidx51 = getelementptr inbounds i8, ptr %src, i64 226, !dbg !843
  %arrayidx52 = getelementptr inbounds i8, ptr %src, i64 193, !dbg !844
  %arrayidx53 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !845
  %arrayidx63 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !846
  %arrayidx73 = getelementptr inbounds i8, ptr %src, i64 129, !dbg !847
  %arrayidx74 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !848
  %arrayidx84 = getelementptr inbounds i8, ptr %src, i64 130, !dbg !849
  %arrayidx85 = getelementptr inbounds i8, ptr %src, i64 97, !dbg !850
  %arrayidx86 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !851
  %arrayidx93 = getelementptr inbounds i8, ptr %src, i64 230, !dbg !852
  %arrayidx94 = getelementptr inbounds i8, ptr %src, i64 197, !dbg !853
  %arrayidx95 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !854
  %arrayidx96 = getelementptr inbounds i8, ptr %src, i64 131, !dbg !855
  %arrayidx97 = getelementptr inbounds i8, ptr %src, i64 98, !dbg !856
  %arrayidx98 = getelementptr inbounds i8, ptr %src, i64 65, !dbg !857
  %arrayidx99 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !858
  %mul100 = shl nuw nsw i32 %conv32, 1, !dbg !859
  %add101 = add nuw nsw i32 %conv, 2, !dbg !859
  %arrayidx106 = getelementptr inbounds i8, ptr %src, i64 231, !dbg !860
  %arrayidx107 = getelementptr inbounds i8, ptr %src, i64 198, !dbg !861
  %arrayidx108 = getelementptr inbounds i8, ptr %src, i64 165, !dbg !862
  %arrayidx109 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !863
  %arrayidx110 = getelementptr inbounds i8, ptr %src, i64 99, !dbg !864
  %arrayidx111 = getelementptr inbounds i8, ptr %src, i64 66, !dbg !865
  %arrayidx112 = getelementptr inbounds i8, ptr %src, i64 33, !dbg !866
  %mul114 = shl nuw nsw i32 %conv, 1, !dbg !867
  %add115 = add nuw nsw i32 %conv2, 2, !dbg !867
  %add116 = add nuw nsw i32 %add115, %mul114, !dbg !867
  %add117 = add nuw nsw i32 %add116, %conv32, !dbg !867
  %shr118 = lshr i32 %add117, 2, !dbg !867
  %conv119 = trunc nuw i32 %shr118 to i8, !dbg !867
  %arrayidx120 = getelementptr inbounds i8, ptr %src, i64 199, !dbg !868
  %arrayidx121 = getelementptr inbounds i8, ptr %src, i64 166, !dbg !869
  %arrayidx122 = getelementptr inbounds i8, ptr %src, i64 133, !dbg !870
  %arrayidx123 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !871
  %arrayidx124 = getelementptr inbounds i8, ptr %src, i64 67, !dbg !872
  %arrayidx125 = getelementptr inbounds i8, ptr %src, i64 34, !dbg !873
  %arrayidx126 = getelementptr inbounds i8, ptr %src, i64 1, !dbg !874
  %mul127 = shl nuw nsw i32 %conv2, 1, !dbg !875
  %add129 = add nuw nsw i32 %add101, %mul127, !dbg !875
  %arrayidx133 = getelementptr inbounds i8, ptr %src, i64 167, !dbg !876
  %arrayidx134 = getelementptr inbounds i8, ptr %src, i64 134, !dbg !877
  %arrayidx135 = getelementptr inbounds i8, ptr %src, i64 101, !dbg !878
  %arrayidx136 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !879
  %arrayidx137 = getelementptr inbounds i8, ptr %src, i64 35, !dbg !880
  %arrayidx138 = getelementptr inbounds i8, ptr %src, i64 2, !dbg !881
  %arrayidx145 = getelementptr inbounds i8, ptr %src, i64 135, !dbg !882
  %arrayidx146 = getelementptr inbounds i8, ptr %src, i64 102, !dbg !883
  %arrayidx147 = getelementptr inbounds i8, ptr %src, i64 69, !dbg !884
  %arrayidx148 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !885
  %arrayidx149 = getelementptr inbounds i8, ptr %src, i64 3, !dbg !886
  %arrayidx156 = getelementptr inbounds i8, ptr %src, i64 103, !dbg !887
  %arrayidx157 = getelementptr inbounds i8, ptr %src, i64 70, !dbg !888
  %arrayidx158 = getelementptr inbounds i8, ptr %src, i64 37, !dbg !889
  %arrayidx159 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !890
  %arrayidx166 = getelementptr inbounds i8, ptr %src, i64 71, !dbg !891
  %arrayidx167 = getelementptr inbounds i8, ptr %src, i64 38, !dbg !892
  %arrayidx175 = getelementptr inbounds i8, ptr %src, i64 39, !dbg !893
  %9 = load <4 x i8>, ptr %arrayidx3, align 1, !dbg !835
  %10 = zext <4 x i8> %9 to <4 x i16>, !dbg !835
  %11 = load <4 x i8>, ptr %arrayidx21, align 1, !dbg !836
  %12 = zext <4 x i8> %11 to <4 x i16>, !dbg !836
  %13 = zext i8 %4 to i16, !dbg !894
  %14 = insertelement <4 x i16> %12, i16 %13, i64 3, !dbg !894
  %15 = shl nuw nsw <4 x i16> %14, <i16 1, i16 1, i16 1, i16 1>, !dbg !894
  %16 = shufflevector <4 x i16> %15, <4 x i16> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !894
  %17 = add nuw nsw <4 x i16> %12, <i16 2, i16 2, i16 2, i16 2>, !dbg !894
  %18 = shufflevector <4 x i16> %12, <4 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>, !dbg !894
  %19 = zext i8 %5 to i16, !dbg !894
  %20 = insertelement <4 x i16> %18, i16 %19, i64 0, !dbg !894
  %21 = zext i8 %4 to i16, !dbg !894
  %22 = insertelement <4 x i16> %20, i16 %21, i64 1, !dbg !894
  %23 = add nuw nsw <4 x i16> %17, %22, !dbg !894
  %24 = add nuw nsw <4 x i16> %23, %16, !dbg !894
  %25 = lshr <4 x i16> %24, <i16 2, i16 2, i16 2, i16 2>, !dbg !894
  %26 = trunc <4 x i16> %25 to <4 x i8>, !dbg !894
  %27 = extractelement <4 x i16> %12, i64 3, !dbg !895
  %28 = zext nneg i16 %27 to i32, !dbg !895
  %mul87 = shl nuw nsw i32 %28, 1, !dbg !895
  %29 = extractelement <4 x i16> %17, i64 2, !dbg !895
  %30 = zext nneg i16 %29 to i32, !dbg !895
  %add89 = add nuw nsw i32 %mul87, %30, !dbg !895
  %add90 = add nuw nsw i32 %add89, %conv32, !dbg !895
  %shr91 = lshr i32 %add90, 2, !dbg !895
  %conv92 = trunc nuw i32 %shr91 to i8, !dbg !895
  %add102 = add nuw nsw i32 %add101, %28, !dbg !859
  %add103 = add nuw nsw i32 %add102, %mul100, !dbg !859
  %shr104 = lshr i32 %add103, 2, !dbg !859
  %conv105 = trunc nuw i32 %shr104 to i8, !dbg !859
  store i8 %conv35, ptr %arrayidx36, align 1, !dbg !896
  store i8 %conv42, ptr %arrayidx43, align 1, !dbg !897
  store i8 %conv42, ptr %arrayidx44, align 1, !dbg !898
  %31 = extractelement <4 x i8> %26, i64 1, !dbg !899
  store i8 %31, ptr %arrayidx63, align 1, !dbg !899
  %32 = extractelement <4 x i8> %26, i64 2, !dbg !900
  store i8 %32, ptr %arrayidx73, align 1, !dbg !901
  store i8 %32, ptr %arrayidx74, align 1, !dbg !900
  store <4 x i8> %26, ptr %arrayidx51, align 1, !dbg !902
  store <4 x i8> %26, ptr %arrayidx52, align 1, !dbg !903
  store <4 x i8> %26, ptr %arrayidx53, align 1, !dbg !904
  %33 = extractelement <4 x i8> %26, i64 3, !dbg !905
  store i8 %33, ptr %arrayidx84, align 1, !dbg !906
  store i8 %33, ptr %arrayidx85, align 1, !dbg !907
  store i8 %33, ptr %arrayidx86, align 1, !dbg !905
  store i8 %conv92, ptr %arrayidx93, align 1, !dbg !908
  store i8 %conv92, ptr %arrayidx94, align 1, !dbg !909
  store i8 %conv92, ptr %arrayidx95, align 1, !dbg !910
  store i8 %conv92, ptr %arrayidx96, align 1, !dbg !911
  store i8 %conv92, ptr %arrayidx97, align 1, !dbg !912
  store i8 %conv92, ptr %arrayidx98, align 1, !dbg !913
  store i8 %conv92, ptr %arrayidx99, align 1, !dbg !914
  store i8 %conv105, ptr %arrayidx106, align 1, !dbg !915
  store i8 %conv105, ptr %arrayidx107, align 1, !dbg !916
  store i8 %conv105, ptr %arrayidx108, align 1, !dbg !917
  store i8 %conv105, ptr %arrayidx109, align 1, !dbg !918
  store i8 %conv105, ptr %arrayidx110, align 1, !dbg !919
  store i8 %conv105, ptr %arrayidx111, align 1, !dbg !920
  store i8 %conv105, ptr %arrayidx112, align 1, !dbg !921
  store i8 %conv105, ptr %src, align 1, !dbg !922
  store i8 %conv119, ptr %arrayidx120, align 1, !dbg !923
  store i8 %conv119, ptr %arrayidx121, align 1, !dbg !924
  store i8 %conv119, ptr %arrayidx122, align 1, !dbg !925
  store i8 %conv119, ptr %arrayidx123, align 1, !dbg !926
  store i8 %conv119, ptr %arrayidx124, align 1, !dbg !927
  store i8 %conv119, ptr %arrayidx125, align 1, !dbg !928
  store i8 %conv119, ptr %arrayidx126, align 1, !dbg !929
  %34 = extractelement <4 x i16> %10, i64 0, !dbg !930
  %35 = zext nneg i16 %34 to i32, !dbg !930
  %add130 = add nuw nsw i32 %add129, %35, !dbg !875
  %shr131 = lshr i32 %add130, 2, !dbg !875
  %conv132 = trunc nuw i32 %shr131 to i8, !dbg !875
  store i8 %conv132, ptr %arrayidx133, align 1, !dbg !931
  store i8 %conv132, ptr %arrayidx134, align 1, !dbg !932
  store i8 %conv132, ptr %arrayidx135, align 1, !dbg !933
  store i8 %conv132, ptr %arrayidx136, align 1, !dbg !934
  store i8 %conv132, ptr %arrayidx137, align 1, !dbg !935
  store i8 %conv132, ptr %arrayidx138, align 1, !dbg !936
  %mul139 = shl nuw nsw i32 %35, 1, !dbg !930
  %add141 = add nuw nsw i32 %add115, %mul139, !dbg !930
  %36 = extractelement <4 x i16> %10, i64 1, !dbg !930
  %37 = zext nneg i16 %36 to i32, !dbg !930
  %add142 = add nuw nsw i32 %add141, %37, !dbg !930
  %shr143 = lshr i32 %add142, 2, !dbg !930
  %conv144 = trunc nuw i32 %shr143 to i8, !dbg !930
  store i8 %conv144, ptr %arrayidx145, align 1, !dbg !937
  store i8 %conv144, ptr %arrayidx146, align 1, !dbg !938
  store i8 %conv144, ptr %arrayidx147, align 1, !dbg !939
  store i8 %conv144, ptr %arrayidx148, align 1, !dbg !940
  store i8 %conv144, ptr %arrayidx149, align 1, !dbg !941
  %38 = zext i8 %2 to i16, !dbg !942
  %39 = insertelement <4 x i16> %10, i16 %38, i64 0, !dbg !942
  %40 = shl nuw nsw <4 x i16> %39, <i16 1, i16 1, i16 1, i16 1>, !dbg !942
  %41 = shufflevector <4 x i16> %40, <4 x i16> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !942
  %42 = add nuw nsw <4 x i16> %10, <i16 2, i16 2, i16 2, i16 2>, !dbg !942
  %43 = add nuw nsw <4 x i16> %42, %41, !dbg !942
  %44 = shufflevector <4 x i16> %39, <4 x i16> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 poison>, !dbg !942
  %45 = zext i8 %3 to i16, !dbg !942
  %46 = insertelement <4 x i16> %44, i16 %45, i64 3, !dbg !942
  %47 = add nuw nsw <4 x i16> %43, %46, !dbg !942
  %48 = lshr <4 x i16> %47, <i16 2, i16 2, i16 2, i16 2>, !dbg !942
  %49 = trunc <4 x i16> %48 to <4 x i8>, !dbg !942
  %50 = extractelement <4 x i8> %49, i64 0, !dbg !943
  store i8 %50, ptr %arrayidx156, align 1, !dbg !944
  store i8 %50, ptr %arrayidx157, align 1, !dbg !945
  store i8 %50, ptr %arrayidx158, align 1, !dbg !943
  %51 = extractelement <4 x i8> %49, i64 1, !dbg !946
  store i8 %51, ptr %arrayidx166, align 1, !dbg !947
  store i8 %51, ptr %arrayidx167, align 1, !dbg !946
  %52 = extractelement <4 x i8> %49, i64 2, !dbg !948
  store i8 %52, ptr %arrayidx175, align 1, !dbg !948
  store <4 x i8> %49, ptr %arrayidx159, align 1, !dbg !949
  ret void, !dbg !950
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_vr(ptr noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 !dbg !951 {
entry:
    #dbg_value(ptr %src, !953, !DIExpression(), !972)
    #dbg_value(ptr %edge, !954, !DIExpression(), !972)
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 16, !dbg !973
  %0 = load i8, ptr %arrayidx, align 1, !dbg !973
  %conv = zext i8 %0 to i32, !dbg !973
    #dbg_value(i32 %conv, !955, !DIExpression(), !972)
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 17, !dbg !973
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !973
  %conv2 = zext i8 %1 to i32, !dbg !973
    #dbg_value(i32 %conv2, !956, !DIExpression(), !972)
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 18, !dbg !973
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !973
  %conv4 = zext i8 %2 to i32, !dbg !973
    #dbg_value(i32 %conv4, !957, !DIExpression(), !972)
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 19, !dbg !973
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !973
  %conv6 = zext i8 %3 to i32, !dbg !973
    #dbg_value(i32 %conv6, !958, !DIExpression(), !972)
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 20, !dbg !973
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !973
  %conv8 = zext i8 %4 to i32, !dbg !973
    #dbg_value(i32 %conv8, !959, !DIExpression(), !972)
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 21, !dbg !973
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !973
  %conv10 = zext i8 %5 to i32, !dbg !973
    #dbg_value(i32 %conv10, !960, !DIExpression(), !972)
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 22, !dbg !973
  %6 = load i8, ptr %arrayidx11, align 1, !dbg !973
  %conv12 = zext i8 %6 to i32, !dbg !973
    #dbg_value(i32 %conv12, !961, !DIExpression(), !972)
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 23, !dbg !973
  %7 = load i8, ptr %arrayidx13, align 1, !dbg !973
  %conv14 = zext i8 %7 to i32, !dbg !973
    #dbg_value(i32 %conv14, !962, !DIExpression(), !972)
  %arrayidx15 = getelementptr inbounds i8, ptr %edge, i64 14, !dbg !974
  %8 = load i8, ptr %arrayidx15, align 1, !dbg !974
  %conv16 = zext i8 %8 to i32, !dbg !974
    #dbg_value(i32 %conv16, !963, !DIExpression(), !972)
  %arrayidx17 = getelementptr inbounds i8, ptr %edge, i64 13, !dbg !974
  %9 = load i8, ptr %arrayidx17, align 1, !dbg !974
  %conv18 = zext i8 %9 to i32, !dbg !974
    #dbg_value(i32 %conv18, !964, !DIExpression(), !972)
  %arrayidx19 = getelementptr inbounds i8, ptr %edge, i64 12, !dbg !974
  %10 = load i8, ptr %arrayidx19, align 1, !dbg !974
  %conv20 = zext i8 %10 to i32, !dbg !974
    #dbg_value(i32 %conv20, !965, !DIExpression(), !972)
  %arrayidx21 = getelementptr inbounds i8, ptr %edge, i64 11, !dbg !974
  %11 = load i8, ptr %arrayidx21, align 1, !dbg !974
  %conv22 = zext i8 %11 to i32, !dbg !974
    #dbg_value(i32 %conv22, !966, !DIExpression(), !972)
  %arrayidx23 = getelementptr inbounds i8, ptr %edge, i64 10, !dbg !974
  %12 = load i8, ptr %arrayidx23, align 1, !dbg !974
  %conv24 = zext i8 %12 to i32, !dbg !974
    #dbg_value(i32 %conv24, !967, !DIExpression(), !972)
  %arrayidx25 = getelementptr inbounds i8, ptr %edge, i64 9, !dbg !974
  %13 = load i8, ptr %arrayidx25, align 1, !dbg !974
  %conv26 = zext i8 %13 to i32, !dbg !974
    #dbg_value(i32 %conv26, !968, !DIExpression(), !972)
  %arrayidx27 = getelementptr inbounds i8, ptr %edge, i64 8, !dbg !974
  %14 = load i8, ptr %arrayidx27, align 1, !dbg !974
  %conv28 = zext i8 %14 to i32, !dbg !974
    #dbg_value(i32 %conv28, !969, !DIExpression(), !972)
    #dbg_value(i8 poison, !970, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !972)
  %arrayidx31 = getelementptr inbounds i8, ptr %edge, i64 15, !dbg !975
  %15 = load i8, ptr %arrayidx31, align 1, !dbg !975
  %conv32 = zext i8 %15 to i32, !dbg !975
    #dbg_value(i32 %conv32, !971, !DIExpression(), !972)
  %mul = shl nuw nsw i32 %conv24, 1, !dbg !976
  %add = add nuw nsw i32 %conv22, 2, !dbg !976
  %add33 = add nuw nsw i32 %add, %conv26, !dbg !976
  %add34 = add nuw nsw i32 %add33, %mul, !dbg !976
  %shr = lshr i32 %add34, 2, !dbg !976
  %conv35 = trunc nuw i32 %shr to i8, !dbg !976
  %arrayidx36 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !977
  store i8 %conv35, ptr %arrayidx36, align 1, !dbg !978
  %mul37 = shl nuw nsw i32 %conv26, 1, !dbg !979
  %add38 = add nuw nsw i32 %conv24, 2, !dbg !979
  %add39 = add nuw nsw i32 %add38, %conv28, !dbg !979
  %add40 = add nuw nsw i32 %add39, %mul37, !dbg !979
  %shr41 = lshr i32 %add40, 2, !dbg !979
  %conv42 = trunc nuw i32 %shr41 to i8, !dbg !979
  %arrayidx43 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !980
  store i8 %conv42, ptr %arrayidx43, align 1, !dbg !981
  %mul44 = shl nuw nsw i32 %conv20, 1, !dbg !982
  %add45 = add nuw nsw i32 %conv18, 2, !dbg !982
  %add46 = add nuw nsw i32 %add45, %conv22, !dbg !982
  %add47 = add nuw nsw i32 %add46, %mul44, !dbg !982
  %shr48 = lshr i32 %add47, 2, !dbg !982
  %conv49 = trunc nuw i32 %shr48 to i8, !dbg !982
  %arrayidx50 = getelementptr inbounds i8, ptr %src, i64 193, !dbg !983
  store i8 %conv49, ptr %arrayidx50, align 1, !dbg !984
  %arrayidx51 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !985
  store i8 %conv49, ptr %arrayidx51, align 1, !dbg !986
  %mul52 = shl nuw nsw i32 %conv22, 1, !dbg !987
  %add53 = add nuw nsw i32 %conv20, 2, !dbg !987
  %add54 = add nuw nsw i32 %add53, %conv24, !dbg !987
  %add55 = add nuw nsw i32 %add54, %mul52, !dbg !987
  %shr56 = lshr i32 %add55, 2, !dbg !987
  %conv57 = trunc nuw i32 %shr56 to i8, !dbg !987
  %arrayidx58 = getelementptr inbounds i8, ptr %src, i64 225, !dbg !988
  store i8 %conv57, ptr %arrayidx58, align 1, !dbg !989
  %arrayidx59 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !990
  store i8 %conv57, ptr %arrayidx59, align 1, !dbg !991
  %mul60 = shl nuw nsw i32 %conv16, 1, !dbg !992
  %add62 = add nuw nsw i32 %add45, %mul60, !dbg !992
  %add63 = add nuw nsw i32 %add62, %conv32, !dbg !992
  %shr64 = lshr i32 %add63, 2, !dbg !992
  %conv65 = trunc nuw i32 %shr64 to i8, !dbg !992
  %arrayidx66 = getelementptr inbounds i8, ptr %src, i64 194, !dbg !993
  store i8 %conv65, ptr %arrayidx66, align 1, !dbg !994
  %arrayidx67 = getelementptr inbounds i8, ptr %src, i64 129, !dbg !995
  store i8 %conv65, ptr %arrayidx67, align 1, !dbg !996
  %arrayidx68 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !997
  store i8 %conv65, ptr %arrayidx68, align 1, !dbg !998
  %mul69 = shl nuw nsw i32 %conv18, 1, !dbg !999
  %add70 = add nuw nsw i32 %conv16, 2, !dbg !999
  %add71 = add nuw nsw i32 %add70, %conv20, !dbg !999
  %add72 = add nuw nsw i32 %add71, %mul69, !dbg !999
  %shr73 = lshr i32 %add72, 2, !dbg !999
  %conv74 = trunc nuw i32 %shr73 to i8, !dbg !999
  %arrayidx75 = getelementptr inbounds i8, ptr %src, i64 226, !dbg !1000
  store i8 %conv74, ptr %arrayidx75, align 1, !dbg !1001
  %arrayidx76 = getelementptr inbounds i8, ptr %src, i64 161, !dbg !1002
  store i8 %conv74, ptr %arrayidx76, align 1, !dbg !1003
  %arrayidx77 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !1004
  store i8 %conv74, ptr %arrayidx77, align 1, !dbg !1005
  %mul78 = shl nuw nsw i32 %conv32, 1, !dbg !1006
  %add79 = add nuw nsw i32 %conv, 2, !dbg !1006
  %add80 = add nuw nsw i32 %add79, %conv16, !dbg !1006
  %add81 = add nuw nsw i32 %add80, %mul78, !dbg !1006
  %shr82 = lshr i32 %add81, 2, !dbg !1006
  %conv83 = trunc nuw i32 %shr82 to i8, !dbg !1006
  %arrayidx84 = getelementptr inbounds i8, ptr %src, i64 227, !dbg !1007
  store i8 %conv83, ptr %arrayidx84, align 1, !dbg !1008
  %arrayidx85 = getelementptr inbounds i8, ptr %src, i64 162, !dbg !1009
  store i8 %conv83, ptr %arrayidx85, align 1, !dbg !1010
  %arrayidx86 = getelementptr inbounds i8, ptr %src, i64 97, !dbg !1011
  store i8 %conv83, ptr %arrayidx86, align 1, !dbg !1012
  %arrayidx87 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1013
  store i8 %conv83, ptr %arrayidx87, align 1, !dbg !1014
  %add88 = add nuw nsw i32 %conv, 1, !dbg !1015
  %add89 = add nuw nsw i32 %add88, %conv32, !dbg !1015
  %shr90 = lshr i32 %add89, 1, !dbg !1015
  %conv91 = trunc nuw i32 %shr90 to i8, !dbg !1015
  %arrayidx92 = getelementptr inbounds i8, ptr %src, i64 195, !dbg !1016
  store i8 %conv91, ptr %arrayidx92, align 1, !dbg !1017
  %arrayidx93 = getelementptr inbounds i8, ptr %src, i64 130, !dbg !1018
  store i8 %conv91, ptr %arrayidx93, align 1, !dbg !1019
  %arrayidx94 = getelementptr inbounds i8, ptr %src, i64 65, !dbg !1020
  store i8 %conv91, ptr %arrayidx94, align 1, !dbg !1021
  store i8 %conv91, ptr %src, align 1, !dbg !1022
  %mul96 = shl nuw nsw i32 %conv, 1, !dbg !1023
  %add97 = add nuw nsw i32 %conv2, 2, !dbg !1023
  %add98 = add nuw nsw i32 %add97, %mul96, !dbg !1023
  %add99 = add nuw nsw i32 %add98, %conv32, !dbg !1023
  %shr100 = lshr i32 %add99, 2, !dbg !1023
  %conv101 = trunc nuw i32 %shr100 to i8, !dbg !1023
  %arrayidx102 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !1024
  store i8 %conv101, ptr %arrayidx102, align 1, !dbg !1025
  %arrayidx103 = getelementptr inbounds i8, ptr %src, i64 163, !dbg !1026
  store i8 %conv101, ptr %arrayidx103, align 1, !dbg !1027
  %arrayidx104 = getelementptr inbounds i8, ptr %src, i64 98, !dbg !1028
  store i8 %conv101, ptr %arrayidx104, align 1, !dbg !1029
  %arrayidx105 = getelementptr inbounds i8, ptr %src, i64 33, !dbg !1030
  store i8 %conv101, ptr %arrayidx105, align 1, !dbg !1031
  %add107 = add nuw nsw i32 %add88, %conv2, !dbg !1032
  %shr108 = lshr i32 %add107, 1, !dbg !1032
  %conv109 = trunc nuw i32 %shr108 to i8, !dbg !1032
  %arrayidx110 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !1033
  store i8 %conv109, ptr %arrayidx110, align 1, !dbg !1034
  %arrayidx111 = getelementptr inbounds i8, ptr %src, i64 131, !dbg !1035
  store i8 %conv109, ptr %arrayidx111, align 1, !dbg !1036
  %arrayidx112 = getelementptr inbounds i8, ptr %src, i64 66, !dbg !1037
  store i8 %conv109, ptr %arrayidx112, align 1, !dbg !1038
  %arrayidx113 = getelementptr inbounds i8, ptr %src, i64 1, !dbg !1039
  store i8 %conv109, ptr %arrayidx113, align 1, !dbg !1040
  %mul114 = shl nuw nsw i32 %conv2, 1, !dbg !1041
  %add116 = add nuw nsw i32 %add79, %mul114, !dbg !1041
  %add117 = add nuw nsw i32 %add116, %conv4, !dbg !1041
  %shr118 = lshr i32 %add117, 2, !dbg !1041
  %conv119 = trunc nuw i32 %shr118 to i8, !dbg !1041
  %arrayidx120 = getelementptr inbounds i8, ptr %src, i64 229, !dbg !1042
  store i8 %conv119, ptr %arrayidx120, align 1, !dbg !1043
  %arrayidx121 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !1044
  store i8 %conv119, ptr %arrayidx121, align 1, !dbg !1045
  %arrayidx122 = getelementptr inbounds i8, ptr %src, i64 99, !dbg !1046
  store i8 %conv119, ptr %arrayidx122, align 1, !dbg !1047
  %arrayidx123 = getelementptr inbounds i8, ptr %src, i64 34, !dbg !1048
  store i8 %conv119, ptr %arrayidx123, align 1, !dbg !1049
  %add124 = add nuw nsw i32 %conv2, 1, !dbg !1050
  %add125 = add nuw nsw i32 %add124, %conv4, !dbg !1050
  %shr126 = lshr i32 %add125, 1, !dbg !1050
  %conv127 = trunc nuw i32 %shr126 to i8, !dbg !1050
  %arrayidx128 = getelementptr inbounds i8, ptr %src, i64 197, !dbg !1051
  store i8 %conv127, ptr %arrayidx128, align 1, !dbg !1052
  %arrayidx129 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !1053
  store i8 %conv127, ptr %arrayidx129, align 1, !dbg !1054
  %arrayidx130 = getelementptr inbounds i8, ptr %src, i64 67, !dbg !1055
  store i8 %conv127, ptr %arrayidx130, align 1, !dbg !1056
  %arrayidx131 = getelementptr inbounds i8, ptr %src, i64 2, !dbg !1057
  store i8 %conv127, ptr %arrayidx131, align 1, !dbg !1058
  %mul132 = shl nuw nsw i32 %conv4, 1, !dbg !1059
  %add134 = add nuw nsw i32 %add97, %mul132, !dbg !1059
  %add135 = add nuw nsw i32 %add134, %conv6, !dbg !1059
  %shr136 = lshr i32 %add135, 2, !dbg !1059
  %conv137 = trunc nuw i32 %shr136 to i8, !dbg !1059
  %arrayidx138 = getelementptr inbounds i8, ptr %src, i64 230, !dbg !1060
  store i8 %conv137, ptr %arrayidx138, align 1, !dbg !1061
  %arrayidx139 = getelementptr inbounds i8, ptr %src, i64 165, !dbg !1062
  store i8 %conv137, ptr %arrayidx139, align 1, !dbg !1063
  %arrayidx140 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !1064
  store i8 %conv137, ptr %arrayidx140, align 1, !dbg !1065
  %arrayidx141 = getelementptr inbounds i8, ptr %src, i64 35, !dbg !1066
  store i8 %conv137, ptr %arrayidx141, align 1, !dbg !1067
  %add142 = add nuw nsw i32 %conv4, 1, !dbg !1068
  %add143 = add nuw nsw i32 %add142, %conv6, !dbg !1068
  %shr144 = lshr i32 %add143, 1, !dbg !1068
  %conv145 = trunc nuw i32 %shr144 to i8, !dbg !1068
  %arrayidx146 = getelementptr inbounds i8, ptr %src, i64 198, !dbg !1069
  store i8 %conv145, ptr %arrayidx146, align 1, !dbg !1070
  %arrayidx147 = getelementptr inbounds i8, ptr %src, i64 133, !dbg !1071
  store i8 %conv145, ptr %arrayidx147, align 1, !dbg !1072
  %arrayidx148 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !1073
  store i8 %conv145, ptr %arrayidx148, align 1, !dbg !1074
  %arrayidx149 = getelementptr inbounds i8, ptr %src, i64 3, !dbg !1075
  store i8 %conv145, ptr %arrayidx149, align 1, !dbg !1076
  %mul150 = shl nuw nsw i32 %conv6, 1, !dbg !1077
  %add151 = add nuw nsw i32 %conv4, 2, !dbg !1077
  %add152 = add nuw nsw i32 %add151, %mul150, !dbg !1077
  %add153 = add nuw nsw i32 %add152, %conv8, !dbg !1077
  %shr154 = lshr i32 %add153, 2, !dbg !1077
  %conv155 = trunc nuw i32 %shr154 to i8, !dbg !1077
  %arrayidx156 = getelementptr inbounds i8, ptr %src, i64 231, !dbg !1078
  store i8 %conv155, ptr %arrayidx156, align 1, !dbg !1079
  %arrayidx157 = getelementptr inbounds i8, ptr %src, i64 166, !dbg !1080
  store i8 %conv155, ptr %arrayidx157, align 1, !dbg !1081
  %arrayidx158 = getelementptr inbounds i8, ptr %src, i64 101, !dbg !1082
  store i8 %conv155, ptr %arrayidx158, align 1, !dbg !1083
  %arrayidx159 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !1084
  store i8 %conv155, ptr %arrayidx159, align 1, !dbg !1085
  %add160 = add nuw nsw i32 %conv6, 1, !dbg !1086
  %add161 = add nuw nsw i32 %add160, %conv8, !dbg !1086
  %shr162 = lshr i32 %add161, 1, !dbg !1086
  %conv163 = trunc nuw i32 %shr162 to i8, !dbg !1086
  %arrayidx164 = getelementptr inbounds i8, ptr %src, i64 199, !dbg !1087
  store i8 %conv163, ptr %arrayidx164, align 1, !dbg !1088
  %arrayidx165 = getelementptr inbounds i8, ptr %src, i64 134, !dbg !1089
  store i8 %conv163, ptr %arrayidx165, align 1, !dbg !1090
  %arrayidx166 = getelementptr inbounds i8, ptr %src, i64 69, !dbg !1091
  store i8 %conv163, ptr %arrayidx166, align 1, !dbg !1092
  %arrayidx167 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !1093
  store i8 %conv163, ptr %arrayidx167, align 1, !dbg !1094
  %mul168 = shl nuw nsw i32 %conv8, 1, !dbg !1095
  %add169 = add nuw nsw i32 %conv6, 2, !dbg !1095
  %add170 = add nuw nsw i32 %add169, %mul168, !dbg !1095
  %add171 = add nuw nsw i32 %add170, %conv10, !dbg !1095
  %shr172 = lshr i32 %add171, 2, !dbg !1095
  %conv173 = trunc nuw i32 %shr172 to i8, !dbg !1095
  %arrayidx174 = getelementptr inbounds i8, ptr %src, i64 167, !dbg !1096
  store i8 %conv173, ptr %arrayidx174, align 1, !dbg !1097
  %arrayidx175 = getelementptr inbounds i8, ptr %src, i64 102, !dbg !1098
  store i8 %conv173, ptr %arrayidx175, align 1, !dbg !1099
  %arrayidx176 = getelementptr inbounds i8, ptr %src, i64 37, !dbg !1100
  store i8 %conv173, ptr %arrayidx176, align 1, !dbg !1101
  %add177 = add nuw nsw i32 %conv8, 1, !dbg !1102
  %add178 = add nuw nsw i32 %add177, %conv10, !dbg !1102
  %shr179 = lshr i32 %add178, 1, !dbg !1102
  %conv180 = trunc nuw i32 %shr179 to i8, !dbg !1102
  %arrayidx181 = getelementptr inbounds i8, ptr %src, i64 135, !dbg !1103
  store i8 %conv180, ptr %arrayidx181, align 1, !dbg !1104
  %arrayidx182 = getelementptr inbounds i8, ptr %src, i64 70, !dbg !1105
  store i8 %conv180, ptr %arrayidx182, align 1, !dbg !1106
  %arrayidx183 = getelementptr inbounds i8, ptr %src, i64 5, !dbg !1107
  store i8 %conv180, ptr %arrayidx183, align 1, !dbg !1108
  %mul184 = shl nuw nsw i32 %conv10, 1, !dbg !1109
  %add185 = add nuw nsw i32 %conv8, 2, !dbg !1109
  %add186 = add nuw nsw i32 %add185, %mul184, !dbg !1109
  %add187 = add nuw nsw i32 %add186, %conv12, !dbg !1109
  %shr188 = lshr i32 %add187, 2, !dbg !1109
  %conv189 = trunc nuw i32 %shr188 to i8, !dbg !1109
  %arrayidx190 = getelementptr inbounds i8, ptr %src, i64 103, !dbg !1110
  store i8 %conv189, ptr %arrayidx190, align 1, !dbg !1111
  %arrayidx191 = getelementptr inbounds i8, ptr %src, i64 38, !dbg !1112
  store i8 %conv189, ptr %arrayidx191, align 1, !dbg !1113
  %add192 = add nuw nsw i32 %conv10, 1, !dbg !1114
  %add193 = add nuw nsw i32 %add192, %conv12, !dbg !1114
  %shr194 = lshr i32 %add193, 1, !dbg !1114
  %conv195 = trunc nuw i32 %shr194 to i8, !dbg !1114
  %arrayidx196 = getelementptr inbounds i8, ptr %src, i64 71, !dbg !1115
  store i8 %conv195, ptr %arrayidx196, align 1, !dbg !1116
  %arrayidx197 = getelementptr inbounds i8, ptr %src, i64 6, !dbg !1117
  store i8 %conv195, ptr %arrayidx197, align 1, !dbg !1118
  %mul198 = shl nuw nsw i32 %conv12, 1, !dbg !1119
  %add199 = add nuw nsw i32 %conv10, 2, !dbg !1119
  %add200 = add nuw nsw i32 %add199, %mul198, !dbg !1119
  %add201 = add nuw nsw i32 %add200, %conv14, !dbg !1119
  %shr202 = lshr i32 %add201, 2, !dbg !1119
  %conv203 = trunc nuw i32 %shr202 to i8, !dbg !1119
  %arrayidx204 = getelementptr inbounds i8, ptr %src, i64 39, !dbg !1120
  store i8 %conv203, ptr %arrayidx204, align 1, !dbg !1121
  %add205 = add nuw nsw i32 %conv12, 1, !dbg !1122
  %add206 = add nuw nsw i32 %add205, %conv14, !dbg !1122
  %shr207 = lshr i32 %add206, 1, !dbg !1122
  %conv208 = trunc nuw i32 %shr207 to i8, !dbg !1122
  %arrayidx209 = getelementptr inbounds i8, ptr %src, i64 7, !dbg !1123
  store i8 %conv208, ptr %arrayidx209, align 1, !dbg !1124
  ret void, !dbg !1125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_hd(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 !dbg !1126 {
entry:
    #dbg_value(ptr %src, !1128, !DIExpression(), !1158)
    #dbg_value(ptr %edge, !1129, !DIExpression(), !1158)
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 16, !dbg !1159
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1159
  %conv = zext i8 %0 to i32, !dbg !1159
    #dbg_value(i32 %conv, !1130, !DIExpression(), !1158)
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 17, !dbg !1159
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !1159
  %conv2 = zext i8 %1 to i32, !dbg !1159
    #dbg_value(i32 %conv2, !1131, !DIExpression(), !1158)
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 18, !dbg !1159
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !1159
  %conv4 = zext i8 %2 to i32, !dbg !1159
    #dbg_value(i32 %conv4, !1132, !DIExpression(), !1158)
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 19, !dbg !1159
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !1159
  %conv6 = zext i8 %3 to i32, !dbg !1159
    #dbg_value(i32 %conv6, !1133, !DIExpression(), !1158)
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 20, !dbg !1159
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !1159
  %conv8 = zext i8 %4 to i32, !dbg !1159
    #dbg_value(i32 %conv8, !1134, !DIExpression(), !1158)
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 21, !dbg !1159
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !1159
  %conv10 = zext i8 %5 to i32, !dbg !1159
    #dbg_value(i32 %conv10, !1135, !DIExpression(), !1158)
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 22, !dbg !1159
  %6 = load i8, ptr %arrayidx11, align 1, !dbg !1159
  %conv12 = zext i8 %6 to i32, !dbg !1159
    #dbg_value(i32 %conv12, !1136, !DIExpression(), !1158)
    #dbg_value(i8 poison, !1137, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1158)
  %arrayidx15 = getelementptr inbounds i8, ptr %edge, i64 14, !dbg !1160
  %7 = load i8, ptr %arrayidx15, align 1, !dbg !1160
  %conv16 = zext i8 %7 to i32, !dbg !1160
    #dbg_value(i32 %conv16, !1138, !DIExpression(), !1158)
  %arrayidx17 = getelementptr inbounds i8, ptr %edge, i64 13, !dbg !1160
  %8 = load i8, ptr %arrayidx17, align 1, !dbg !1160
  %conv18 = zext i8 %8 to i32, !dbg !1160
    #dbg_value(i32 %conv18, !1139, !DIExpression(), !1158)
  %arrayidx19 = getelementptr inbounds i8, ptr %edge, i64 12, !dbg !1160
  %9 = load i8, ptr %arrayidx19, align 1, !dbg !1160
  %conv20 = zext i8 %9 to i32, !dbg !1160
    #dbg_value(i32 %conv20, !1140, !DIExpression(), !1158)
  %arrayidx21 = getelementptr inbounds i8, ptr %edge, i64 11, !dbg !1160
  %10 = load i8, ptr %arrayidx21, align 1, !dbg !1160
  %conv22 = zext i8 %10 to i32, !dbg !1160
    #dbg_value(i32 %conv22, !1141, !DIExpression(), !1158)
  %arrayidx23 = getelementptr inbounds i8, ptr %edge, i64 10, !dbg !1160
  %11 = load i8, ptr %arrayidx23, align 1, !dbg !1160
  %conv24 = zext i8 %11 to i32, !dbg !1160
    #dbg_value(i32 %conv24, !1142, !DIExpression(), !1158)
  %arrayidx25 = getelementptr inbounds i8, ptr %edge, i64 9, !dbg !1160
  %12 = load i8, ptr %arrayidx25, align 1, !dbg !1160
  %conv26 = zext i8 %12 to i32, !dbg !1160
    #dbg_value(i32 %conv26, !1143, !DIExpression(), !1158)
  %arrayidx27 = getelementptr inbounds i8, ptr %edge, i64 8, !dbg !1160
  %13 = load i8, ptr %arrayidx27, align 1, !dbg !1160
  %conv28 = zext i8 %13 to i32, !dbg !1160
    #dbg_value(i32 %conv28, !1144, !DIExpression(), !1158)
  %arrayidx29 = getelementptr inbounds i8, ptr %edge, i64 7, !dbg !1160
  %14 = load i8, ptr %arrayidx29, align 1, !dbg !1160
  %conv30 = zext i8 %14 to i32, !dbg !1160
    #dbg_value(i32 %conv30, !1145, !DIExpression(), !1158)
  %arrayidx31 = getelementptr inbounds i8, ptr %edge, i64 15, !dbg !1161
  %15 = load i8, ptr %arrayidx31, align 1, !dbg !1161
  %conv32 = zext i8 %15 to i32, !dbg !1161
    #dbg_value(i32 %conv32, !1146, !DIExpression(), !1158)
  %add = add nuw nsw i32 %conv28, 1, !dbg !1162
  %add33 = add nuw nsw i32 %add, %conv30, !dbg !1162
  %shr = lshr i32 %add33, 1, !dbg !1162
  %mul = shl nuw nsw i32 %conv28, 1, !dbg !1163
  %add34 = add nuw nsw i32 %mul, %conv26, !dbg !1163
  %add35 = add nuw nsw i32 %add34, %conv30, !dbg !1163
    #dbg_value(i32 %shr, !1164, !DIExpression(), !1170)
    #dbg_value(i32 %add35, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1170)
  %add36 = shl nuw nsw i32 %add35, 6, !dbg !1172
  %16 = add nuw nsw i32 %add36, 128, !dbg !1172
  %shl.i = and i32 %16, 2147483392, !dbg !1172
  %add.i = add nuw nsw i32 %shl.i, %shr, !dbg !1173
    #dbg_value(i32 %add.i, !1147, !DIExpression(), !1158)
  %add38 = add nuw nsw i32 %conv26, 1, !dbg !1174
  %add39 = add nuw nsw i32 %add38, %conv28, !dbg !1174
  %shr40 = lshr i32 %add39, 1, !dbg !1174
  %mul41 = shl nuw nsw i32 %conv26, 1, !dbg !1175
  %add42 = add nuw nsw i32 %mul41, %conv24, !dbg !1175
  %add43 = add nuw nsw i32 %add42, %conv28, !dbg !1175
    #dbg_value(i32 %shr40, !1164, !DIExpression(), !1176)
    #dbg_value(i32 %add43, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1176)
  %add44 = shl nuw nsw i32 %add43, 6, !dbg !1178
  %17 = add nuw nsw i32 %add44, 128, !dbg !1178
  %shl.i242 = and i32 %17, 2147483392, !dbg !1178
  %add.i243 = add nuw nsw i32 %shl.i242, %shr40, !dbg !1179
    #dbg_value(i32 %add.i243, !1148, !DIExpression(), !1158)
  %add47 = add nuw nsw i32 %conv24, 1, !dbg !1180
  %add48 = add nuw nsw i32 %add47, %conv26, !dbg !1180
  %shr49 = lshr i32 %add48, 1, !dbg !1180
  %mul50 = shl nuw nsw i32 %conv24, 1, !dbg !1181
  %add51 = add nuw nsw i32 %mul50, %conv22, !dbg !1181
  %add52 = add nuw nsw i32 %add51, %conv26, !dbg !1181
    #dbg_value(i32 %shr49, !1164, !DIExpression(), !1182)
    #dbg_value(i32 %add52, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1182)
  %add53 = shl nuw nsw i32 %add52, 6, !dbg !1184
  %18 = add nuw nsw i32 %add53, 128, !dbg !1184
  %shl.i244 = and i32 %18, 2147483392, !dbg !1184
  %add.i245 = add nuw nsw i32 %shl.i244, %shr49, !dbg !1185
    #dbg_value(i32 %add.i245, !1149, !DIExpression(), !1158)
  %add56 = add nuw nsw i32 %conv22, 1, !dbg !1186
  %add57 = add nuw nsw i32 %add56, %conv24, !dbg !1186
  %shr58 = lshr i32 %add57, 1, !dbg !1186
  %mul59 = shl nuw nsw i32 %conv22, 1, !dbg !1187
  %add60 = add nuw nsw i32 %mul59, %conv20, !dbg !1187
  %add61 = add nuw nsw i32 %add60, %conv24, !dbg !1187
    #dbg_value(i32 %shr58, !1164, !DIExpression(), !1188)
    #dbg_value(i32 %add61, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1188)
  %add62 = shl nuw nsw i32 %add61, 6, !dbg !1190
  %19 = add nuw nsw i32 %add62, 128, !dbg !1190
  %shl.i246 = and i32 %19, 2147483392, !dbg !1190
  %add.i247 = add nuw nsw i32 %shl.i246, %shr58, !dbg !1191
    #dbg_value(i32 %add.i247, !1150, !DIExpression(), !1158)
  %add65 = add nuw nsw i32 %conv20, 1, !dbg !1192
  %add66 = add nuw nsw i32 %add65, %conv22, !dbg !1192
  %shr67 = lshr i32 %add66, 1, !dbg !1192
  %mul68 = shl nuw nsw i32 %conv20, 1, !dbg !1193
  %add69 = add nuw nsw i32 %mul68, %conv18, !dbg !1193
  %add70 = add nuw nsw i32 %add69, %conv22, !dbg !1193
    #dbg_value(i32 %shr67, !1164, !DIExpression(), !1194)
    #dbg_value(i32 %add70, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1194)
  %add71 = shl nuw nsw i32 %add70, 6, !dbg !1196
  %20 = add nuw nsw i32 %add71, 128, !dbg !1196
  %shl.i248 = and i32 %20, 2147483392, !dbg !1196
  %add.i249 = add nuw nsw i32 %shl.i248, %shr67, !dbg !1197
    #dbg_value(i32 %add.i249, !1151, !DIExpression(), !1158)
  %add74 = add nuw nsw i32 %conv18, 1, !dbg !1198
  %add75 = add nuw nsw i32 %add74, %conv20, !dbg !1198
  %shr76 = lshr i32 %add75, 1, !dbg !1198
  %mul77 = shl nuw nsw i32 %conv18, 1, !dbg !1199
  %add78 = add nuw nsw i32 %mul77, %conv16, !dbg !1199
  %add79 = add nuw nsw i32 %add78, %conv20, !dbg !1199
    #dbg_value(i32 %shr76, !1164, !DIExpression(), !1200)
    #dbg_value(i32 %add79, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1200)
  %add80 = shl nuw nsw i32 %add79, 6, !dbg !1202
  %21 = add nuw nsw i32 %add80, 128, !dbg !1202
  %shl.i250 = and i32 %21, 2147483392, !dbg !1202
  %add.i251 = add nuw nsw i32 %shl.i250, %shr76, !dbg !1203
    #dbg_value(i32 %add.i251, !1152, !DIExpression(), !1158)
  %add83 = add nuw nsw i32 %conv16, 1, !dbg !1204
  %add84 = add nuw nsw i32 %add83, %conv18, !dbg !1204
  %shr85 = lshr i32 %add84, 1, !dbg !1204
  %mul86 = shl nuw nsw i32 %conv16, 1, !dbg !1205
  %add87 = add nuw nsw i32 %mul86, %conv18, !dbg !1205
  %add88 = add nuw nsw i32 %add87, %conv32, !dbg !1205
    #dbg_value(i32 %shr85, !1164, !DIExpression(), !1206)
    #dbg_value(i32 %add88, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1206)
  %add89 = shl nuw nsw i32 %add88, 6, !dbg !1208
  %22 = add nuw nsw i32 %add89, 128, !dbg !1208
  %shl.i252 = and i32 %22, 2147483392, !dbg !1208
  %add.i253 = add nuw nsw i32 %shl.i252, %shr85, !dbg !1209
    #dbg_value(i32 %add.i253, !1153, !DIExpression(), !1158)
  %add93 = add nuw nsw i32 %add83, %conv32, !dbg !1210
  %shr94 = lshr i32 %add93, 1, !dbg !1210
  %add96 = add nuw nsw i32 %conv16, %conv, !dbg !1211
    #dbg_value(i32 %shr94, !1164, !DIExpression(), !1212)
    #dbg_value(!DIArgList(i32 %add96, i32 %conv32), !1169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1212)
  %23 = shl nuw nsw i32 %conv32, 7, !dbg !1214
  %24 = shl nuw nsw i32 %add96, 6, !dbg !1214
  %add98 = add nuw nsw i32 %23, %24, !dbg !1214
  %25 = add nuw nsw i32 %add98, 128, !dbg !1214
  %shl.i254 = and i32 %25, 130816, !dbg !1214
  %add.i255 = add nuw nsw i32 %shl.i254, %shr94, !dbg !1215
    #dbg_value(i32 %add.i255, !1154, !DIExpression(), !1158)
  %mul101 = shl nuw nsw i32 %conv, 1, !dbg !1216
  %add102 = add nuw nsw i32 %conv2, 2, !dbg !1216
  %add103 = add nuw nsw i32 %add102, %mul101, !dbg !1216
  %add104 = add nuw nsw i32 %add103, %conv32, !dbg !1216
  %shr105 = lshr i32 %add104, 2, !dbg !1216
  %add107 = add nuw nsw i32 %conv4, %conv, !dbg !1217
    #dbg_value(i32 %shr105, !1164, !DIExpression(), !1218)
    #dbg_value(!DIArgList(i32 %add107, i32 %conv2), !1169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1218)
  %26 = shl nuw nsw i32 %conv2, 7, !dbg !1220
  %27 = shl nuw nsw i32 %add107, 6, !dbg !1220
  %add109 = add nuw nsw i32 %26, %27, !dbg !1220
  %28 = add nuw nsw i32 %add109, 128, !dbg !1220
  %shl.i256 = and i32 %28, 130816, !dbg !1220
  %add.i257 = add nuw nsw i32 %shr105, %shl.i256, !dbg !1221
    #dbg_value(i32 %add.i257, !1155, !DIExpression(), !1158)
  %mul112 = shl nuw nsw i32 %conv4, 1, !dbg !1222
  %add114 = add nuw nsw i32 %add102, %conv6, !dbg !1222
  %add115 = add nuw nsw i32 %add114, %mul112, !dbg !1222
  %shr116 = lshr i32 %add115, 2, !dbg !1222
  %add118 = add nuw nsw i32 %conv8, %conv4, !dbg !1223
    #dbg_value(i32 %shr116, !1164, !DIExpression(), !1224)
    #dbg_value(!DIArgList(i32 %add118, i32 %conv6), !1169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1224)
  %29 = shl nuw nsw i32 %conv6, 7, !dbg !1226
  %30 = shl nuw nsw i32 %add118, 6, !dbg !1226
  %add120 = add nuw nsw i32 %29, %30, !dbg !1226
  %31 = add nuw nsw i32 %add120, 128, !dbg !1226
  %shl.i258 = and i32 %31, 130816, !dbg !1226
  %add.i259 = add nuw nsw i32 %shl.i258, %shr116, !dbg !1227
    #dbg_value(i32 %add.i259, !1156, !DIExpression(), !1158)
  %mul123 = shl nuw nsw i32 %conv8, 1, !dbg !1228
  %add124 = add nuw nsw i32 %conv6, 2, !dbg !1228
  %add125 = add nuw nsw i32 %add124, %conv10, !dbg !1228
  %add126 = add nuw nsw i32 %add125, %mul123, !dbg !1228
  %shr127 = lshr i32 %add126, 2, !dbg !1228
  %add129 = add nuw nsw i32 %conv12, %conv8, !dbg !1229
    #dbg_value(i32 %shr127, !1164, !DIExpression(), !1230)
    #dbg_value(!DIArgList(i32 %add129, i32 %conv10), !1169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1230)
  %32 = shl nuw nsw i32 %conv10, 7, !dbg !1232
  %33 = shl nuw nsw i32 %add129, 6, !dbg !1232
  %add131 = add nuw nsw i32 %32, %33, !dbg !1232
  %34 = add nuw nsw i32 %add131, 128, !dbg !1232
  %shl.i260 = and i32 %34, 130816, !dbg !1232
  %add.i261 = add nuw nsw i32 %shl.i260, %shr127, !dbg !1233
    #dbg_value(i32 %add.i261, !1157, !DIExpression(), !1158)
    #dbg_value(i32 %add.i, !1234, !DIExpression(), !1238)
    #dbg_value(i32 %add.i243, !1237, !DIExpression(), !1238)
  %shl.i262 = shl nuw i32 %add.i243, 16, !dbg !1240
  %add.i263 = add nuw nsw i32 %add.i, %shl.i262, !dbg !1241
  %arrayidx135 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !1242
  store i32 %add.i263, ptr %arrayidx135, align 4, !dbg !1243
    #dbg_value(i32 %add.i243, !1234, !DIExpression(), !1244)
    #dbg_value(i32 %add.i245, !1237, !DIExpression(), !1244)
  %shl.i264 = shl nuw i32 %add.i245, 16, !dbg !1246
  %add.i265 = add nuw nsw i32 %shl.i264, %add.i243, !dbg !1247
  %arrayidx137 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !1248
  store i32 %add.i265, ptr %arrayidx137, align 4, !dbg !1249
    #dbg_value(i32 %add.i245, !1234, !DIExpression(), !1250)
    #dbg_value(i32 %add.i247, !1237, !DIExpression(), !1250)
  %shl.i266 = shl nuw i32 %add.i247, 16, !dbg !1252
  %add.i267 = add nuw nsw i32 %shl.i266, %add.i245, !dbg !1253
  %arrayidx139 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !1254
  store i32 %add.i267, ptr %arrayidx139, align 4, !dbg !1255
  %arrayidx140 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !1256
  store i32 %add.i267, ptr %arrayidx140, align 4, !dbg !1257
    #dbg_value(i32 %add.i247, !1234, !DIExpression(), !1258)
    #dbg_value(i32 %add.i249, !1237, !DIExpression(), !1258)
  %shl.i268 = shl nuw i32 %add.i249, 16, !dbg !1260
  %add.i269 = add nuw nsw i32 %shl.i268, %add.i247, !dbg !1261
  %arrayidx142 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !1262
  store i32 %add.i269, ptr %arrayidx142, align 4, !dbg !1263
  %arrayidx143 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !1264
  store i32 %add.i269, ptr %arrayidx143, align 4, !dbg !1265
    #dbg_value(i32 %add.i249, !1234, !DIExpression(), !1266)
    #dbg_value(i32 %add.i251, !1237, !DIExpression(), !1266)
  %shl.i270 = shl nuw i32 %add.i251, 16, !dbg !1268
  %add.i271 = add nuw nsw i32 %shl.i270, %add.i249, !dbg !1269
  %arrayidx145 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !1270
  store i32 %add.i271, ptr %arrayidx145, align 4, !dbg !1271
  %arrayidx146 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !1272
  store i32 %add.i271, ptr %arrayidx146, align 4, !dbg !1273
    #dbg_value(i32 %add.i251, !1234, !DIExpression(), !1274)
    #dbg_value(i32 %add.i253, !1237, !DIExpression(), !1274)
  %shl.i272 = shl nuw i32 %add.i253, 16, !dbg !1276
  %add.i273 = add nuw nsw i32 %shl.i272, %add.i251, !dbg !1277
  %arrayidx148 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !1278
  store i32 %add.i273, ptr %arrayidx148, align 4, !dbg !1279
  %arrayidx149 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !1280
  store i32 %add.i273, ptr %arrayidx149, align 4, !dbg !1281
    #dbg_value(i32 %add.i253, !1234, !DIExpression(), !1282)
    #dbg_value(i32 %add.i255, !1237, !DIExpression(), !1282)
  %shl.i274 = shl nuw i32 %add.i255, 16, !dbg !1284
  %add.i275 = add nuw nsw i32 %shl.i274, %add.i253, !dbg !1285
  %arrayidx151 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1286
  store i32 %add.i275, ptr %arrayidx151, align 4, !dbg !1287
  %arrayidx152 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !1288
  store i32 %add.i275, ptr %arrayidx152, align 4, !dbg !1289
    #dbg_value(i32 %add.i255, !1234, !DIExpression(), !1290)
    #dbg_value(i32 %add.i257, !1237, !DIExpression(), !1290)
  %shl.i276 = shl nuw i32 %add.i257, 16, !dbg !1292
  %add.i277 = add nuw nsw i32 %add.i255, %shl.i276, !dbg !1293
  store i32 %add.i277, ptr %src, align 4, !dbg !1294
  %arrayidx155 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !1295
  store i32 %add.i277, ptr %arrayidx155, align 4, !dbg !1296
    #dbg_value(i32 %add.i257, !1234, !DIExpression(), !1297)
    #dbg_value(i32 %add.i259, !1237, !DIExpression(), !1297)
  %shl.i278 = shl nuw i32 %add.i259, 16, !dbg !1299
  %add.i279 = add nuw nsw i32 %add.i257, %shl.i278, !dbg !1300
  %arrayidx157 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !1301
  store i32 %add.i279, ptr %arrayidx157, align 4, !dbg !1302
    #dbg_value(i32 %add.i259, !1234, !DIExpression(), !1303)
    #dbg_value(i32 %add.i261, !1237, !DIExpression(), !1303)
  %shl.i280 = shl nuw i32 %add.i261, 16, !dbg !1305
  %add.i281 = add nuw nsw i32 %shl.i280, %add.i259, !dbg !1306
  %arrayidx159 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !1307
  store i32 %add.i281, ptr %arrayidx159, align 4, !dbg !1308
  ret void, !dbg !1309
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_vl(ptr noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 !dbg !1310 {
entry:
    #dbg_value(ptr %src, !1312, !DIExpression(), !1330)
    #dbg_value(ptr %edge, !1313, !DIExpression(), !1330)
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 16, !dbg !1331
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1331
  %conv = zext i8 %0 to i32, !dbg !1331
    #dbg_value(i32 %conv, !1314, !DIExpression(), !1330)
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 17, !dbg !1331
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !1331
  %conv2 = zext i8 %1 to i32, !dbg !1331
    #dbg_value(i32 %conv2, !1315, !DIExpression(), !1330)
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 18, !dbg !1331
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !1331
  %conv4 = zext i8 %2 to i32, !dbg !1331
    #dbg_value(i32 %conv4, !1316, !DIExpression(), !1330)
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 19, !dbg !1331
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !1331
  %conv6 = zext i8 %3 to i32, !dbg !1331
    #dbg_value(i32 %conv6, !1317, !DIExpression(), !1330)
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 20, !dbg !1331
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !1331
  %conv8 = zext i8 %4 to i32, !dbg !1331
    #dbg_value(i32 %conv8, !1318, !DIExpression(), !1330)
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 21, !dbg !1331
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !1331
  %conv10 = zext i8 %5 to i32, !dbg !1331
    #dbg_value(i32 %conv10, !1319, !DIExpression(), !1330)
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 22, !dbg !1331
  %6 = load i8, ptr %arrayidx11, align 1, !dbg !1331
  %conv12 = zext i8 %6 to i32, !dbg !1331
    #dbg_value(i32 %conv12, !1320, !DIExpression(), !1330)
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 23, !dbg !1331
  %7 = load i8, ptr %arrayidx13, align 1, !dbg !1331
  %conv14 = zext i8 %7 to i32, !dbg !1331
    #dbg_value(i32 %conv14, !1321, !DIExpression(), !1330)
  %arrayidx15 = getelementptr inbounds i8, ptr %edge, i64 24, !dbg !1332
  %8 = load i8, ptr %arrayidx15, align 1, !dbg !1332
  %conv16 = zext i8 %8 to i32, !dbg !1332
    #dbg_value(i32 %conv16, !1322, !DIExpression(), !1330)
  %arrayidx17 = getelementptr inbounds i8, ptr %edge, i64 25, !dbg !1332
  %9 = load i8, ptr %arrayidx17, align 1, !dbg !1332
  %conv18 = zext i8 %9 to i32, !dbg !1332
    #dbg_value(i32 %conv18, !1323, !DIExpression(), !1330)
  %arrayidx19 = getelementptr inbounds i8, ptr %edge, i64 26, !dbg !1332
  %10 = load i8, ptr %arrayidx19, align 1, !dbg !1332
  %conv20 = zext i8 %10 to i32, !dbg !1332
    #dbg_value(i32 %conv20, !1324, !DIExpression(), !1330)
  %arrayidx21 = getelementptr inbounds i8, ptr %edge, i64 27, !dbg !1332
  %11 = load i8, ptr %arrayidx21, align 1, !dbg !1332
  %conv22 = zext i8 %11 to i32, !dbg !1332
    #dbg_value(i32 %conv22, !1325, !DIExpression(), !1330)
  %arrayidx23 = getelementptr inbounds i8, ptr %edge, i64 28, !dbg !1332
  %12 = load i8, ptr %arrayidx23, align 1, !dbg !1332
  %conv24 = zext i8 %12 to i32, !dbg !1332
    #dbg_value(i32 %conv24, !1326, !DIExpression(), !1330)
    #dbg_value(i8 poison, !1327, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1330)
    #dbg_value(i8 poison, !1328, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1330)
    #dbg_value(i8 poison, !1329, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1330)
  %add = add nuw nsw i32 %conv2, 1, !dbg !1333
  %add31 = add nuw nsw i32 %add, %conv, !dbg !1333
  %shr = lshr i32 %add31, 1, !dbg !1333
  %conv32 = trunc nuw i32 %shr to i8, !dbg !1333
  store i8 %conv32, ptr %src, align 1, !dbg !1334
  %mul = shl nuw nsw i32 %conv2, 1, !dbg !1335
  %add34 = add nuw nsw i32 %conv4, 2, !dbg !1335
  %add35 = add nuw nsw i32 %add34, %conv, !dbg !1335
  %add36 = add nuw nsw i32 %add35, %mul, !dbg !1335
  %shr37 = lshr i32 %add36, 2, !dbg !1335
  %conv38 = trunc nuw i32 %shr37 to i8, !dbg !1335
  %arrayidx39 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1336
  store i8 %conv38, ptr %arrayidx39, align 1, !dbg !1337
  %add41 = add nuw nsw i32 %add, %conv4, !dbg !1338
  %shr42 = lshr i32 %add41, 1, !dbg !1338
  %conv43 = trunc nuw i32 %shr42 to i8, !dbg !1338
  %arrayidx44 = getelementptr inbounds i8, ptr %src, i64 1, !dbg !1339
  store i8 %conv43, ptr %arrayidx44, align 1, !dbg !1340
  %arrayidx45 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !1341
  store i8 %conv43, ptr %arrayidx45, align 1, !dbg !1342
  %mul46 = shl nuw nsw i32 %conv4, 1, !dbg !1343
  %add47 = add nuw nsw i32 %conv6, 2, !dbg !1343
  %add48 = add nuw nsw i32 %add47, %conv2, !dbg !1343
  %add49 = add nuw nsw i32 %add48, %mul46, !dbg !1343
  %shr50 = lshr i32 %add49, 2, !dbg !1343
  %conv51 = trunc nuw i32 %shr50 to i8, !dbg !1343
  %arrayidx52 = getelementptr inbounds i8, ptr %src, i64 33, !dbg !1344
  store i8 %conv51, ptr %arrayidx52, align 1, !dbg !1345
  %arrayidx53 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !1346
  store i8 %conv51, ptr %arrayidx53, align 1, !dbg !1347
  %add54 = add nuw nsw i32 %conv4, 1, !dbg !1348
  %add55 = add nuw nsw i32 %add54, %conv6, !dbg !1348
  %shr56 = lshr i32 %add55, 1, !dbg !1348
  %conv57 = trunc nuw i32 %shr56 to i8, !dbg !1348
  %arrayidx58 = getelementptr inbounds i8, ptr %src, i64 2, !dbg !1349
  store i8 %conv57, ptr %arrayidx58, align 1, !dbg !1350
  %arrayidx59 = getelementptr inbounds i8, ptr %src, i64 65, !dbg !1351
  store i8 %conv57, ptr %arrayidx59, align 1, !dbg !1352
  %arrayidx60 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !1353
  store i8 %conv57, ptr %arrayidx60, align 1, !dbg !1354
  %mul61 = shl nuw nsw i32 %conv6, 1, !dbg !1355
  %add63 = add nuw nsw i32 %add34, %mul61, !dbg !1355
  %add64 = add nuw nsw i32 %add63, %conv8, !dbg !1355
  %shr65 = lshr i32 %add64, 2, !dbg !1355
  %conv66 = trunc nuw i32 %shr65 to i8, !dbg !1355
  %arrayidx67 = getelementptr inbounds i8, ptr %src, i64 34, !dbg !1356
  store i8 %conv66, ptr %arrayidx67, align 1, !dbg !1357
  %arrayidx68 = getelementptr inbounds i8, ptr %src, i64 97, !dbg !1358
  store i8 %conv66, ptr %arrayidx68, align 1, !dbg !1359
  %arrayidx69 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !1360
  store i8 %conv66, ptr %arrayidx69, align 1, !dbg !1361
  %add70 = add nuw nsw i32 %conv6, 1, !dbg !1362
  %add71 = add nuw nsw i32 %add70, %conv8, !dbg !1362
  %shr72 = lshr i32 %add71, 1, !dbg !1362
  %conv73 = trunc nuw i32 %shr72 to i8, !dbg !1362
  %arrayidx74 = getelementptr inbounds i8, ptr %src, i64 3, !dbg !1363
  store i8 %conv73, ptr %arrayidx74, align 1, !dbg !1364
  %arrayidx75 = getelementptr inbounds i8, ptr %src, i64 66, !dbg !1365
  store i8 %conv73, ptr %arrayidx75, align 1, !dbg !1366
  %arrayidx76 = getelementptr inbounds i8, ptr %src, i64 129, !dbg !1367
  store i8 %conv73, ptr %arrayidx76, align 1, !dbg !1368
  %arrayidx77 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !1369
  store i8 %conv73, ptr %arrayidx77, align 1, !dbg !1370
  %mul78 = shl nuw nsw i32 %conv8, 1, !dbg !1371
  %add80 = add nuw nsw i32 %add47, %mul78, !dbg !1371
  %add81 = add nuw nsw i32 %add80, %conv10, !dbg !1371
  %shr82 = lshr i32 %add81, 2, !dbg !1371
  %conv83 = trunc nuw i32 %shr82 to i8, !dbg !1371
  %arrayidx84 = getelementptr inbounds i8, ptr %src, i64 35, !dbg !1372
  store i8 %conv83, ptr %arrayidx84, align 1, !dbg !1373
  %arrayidx85 = getelementptr inbounds i8, ptr %src, i64 98, !dbg !1374
  store i8 %conv83, ptr %arrayidx85, align 1, !dbg !1375
  %arrayidx86 = getelementptr inbounds i8, ptr %src, i64 161, !dbg !1376
  store i8 %conv83, ptr %arrayidx86, align 1, !dbg !1377
  %arrayidx87 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !1378
  store i8 %conv83, ptr %arrayidx87, align 1, !dbg !1379
  %add88 = add nuw nsw i32 %conv8, 1, !dbg !1380
  %add89 = add nuw nsw i32 %add88, %conv10, !dbg !1380
  %shr90 = lshr i32 %add89, 1, !dbg !1380
  %conv91 = trunc nuw i32 %shr90 to i8, !dbg !1380
  %arrayidx92 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !1381
  store i8 %conv91, ptr %arrayidx92, align 1, !dbg !1382
  %arrayidx93 = getelementptr inbounds i8, ptr %src, i64 67, !dbg !1383
  store i8 %conv91, ptr %arrayidx93, align 1, !dbg !1384
  %arrayidx94 = getelementptr inbounds i8, ptr %src, i64 130, !dbg !1385
  store i8 %conv91, ptr %arrayidx94, align 1, !dbg !1386
  %arrayidx95 = getelementptr inbounds i8, ptr %src, i64 193, !dbg !1387
  store i8 %conv91, ptr %arrayidx95, align 1, !dbg !1388
  %mul96 = shl nuw nsw i32 %conv10, 1, !dbg !1389
  %add97 = add nuw nsw i32 %conv8, 2, !dbg !1389
  %add98 = add nuw nsw i32 %add97, %mul96, !dbg !1389
  %add99 = add nuw nsw i32 %add98, %conv12, !dbg !1389
  %shr100 = lshr i32 %add99, 2, !dbg !1389
  %conv101 = trunc nuw i32 %shr100 to i8, !dbg !1389
  %arrayidx102 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !1390
  store i8 %conv101, ptr %arrayidx102, align 1, !dbg !1391
  %arrayidx103 = getelementptr inbounds i8, ptr %src, i64 99, !dbg !1392
  store i8 %conv101, ptr %arrayidx103, align 1, !dbg !1393
  %arrayidx104 = getelementptr inbounds i8, ptr %src, i64 162, !dbg !1394
  store i8 %conv101, ptr %arrayidx104, align 1, !dbg !1395
  %arrayidx105 = getelementptr inbounds i8, ptr %src, i64 225, !dbg !1396
  store i8 %conv101, ptr %arrayidx105, align 1, !dbg !1397
  %add106 = add nuw nsw i32 %conv10, 1, !dbg !1398
  %add107 = add nuw nsw i32 %add106, %conv12, !dbg !1398
  %shr108 = lshr i32 %add107, 1, !dbg !1398
  %conv109 = trunc nuw i32 %shr108 to i8, !dbg !1398
  %arrayidx110 = getelementptr inbounds i8, ptr %src, i64 5, !dbg !1399
  store i8 %conv109, ptr %arrayidx110, align 1, !dbg !1400
  %arrayidx111 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !1401
  store i8 %conv109, ptr %arrayidx111, align 1, !dbg !1402
  %arrayidx112 = getelementptr inbounds i8, ptr %src, i64 131, !dbg !1403
  store i8 %conv109, ptr %arrayidx112, align 1, !dbg !1404
  %arrayidx113 = getelementptr inbounds i8, ptr %src, i64 194, !dbg !1405
  store i8 %conv109, ptr %arrayidx113, align 1, !dbg !1406
  %mul114 = shl nuw nsw i32 %conv12, 1, !dbg !1407
  %add115 = add nuw nsw i32 %conv10, 2, !dbg !1407
  %add116 = add nuw nsw i32 %add115, %mul114, !dbg !1407
  %add117 = add nuw nsw i32 %add116, %conv14, !dbg !1407
  %shr118 = lshr i32 %add117, 2, !dbg !1407
  %conv119 = trunc nuw i32 %shr118 to i8, !dbg !1407
  %arrayidx120 = getelementptr inbounds i8, ptr %src, i64 37, !dbg !1408
  store i8 %conv119, ptr %arrayidx120, align 1, !dbg !1409
  %arrayidx121 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !1410
  store i8 %conv119, ptr %arrayidx121, align 1, !dbg !1411
  %arrayidx122 = getelementptr inbounds i8, ptr %src, i64 163, !dbg !1412
  store i8 %conv119, ptr %arrayidx122, align 1, !dbg !1413
  %arrayidx123 = getelementptr inbounds i8, ptr %src, i64 226, !dbg !1414
  store i8 %conv119, ptr %arrayidx123, align 1, !dbg !1415
  %add124 = add nuw nsw i32 %conv12, 1, !dbg !1416
  %add125 = add nuw nsw i32 %add124, %conv14, !dbg !1416
  %shr126 = lshr i32 %add125, 1, !dbg !1416
  %conv127 = trunc nuw i32 %shr126 to i8, !dbg !1416
  %arrayidx128 = getelementptr inbounds i8, ptr %src, i64 6, !dbg !1417
  store i8 %conv127, ptr %arrayidx128, align 1, !dbg !1418
  %arrayidx129 = getelementptr inbounds i8, ptr %src, i64 69, !dbg !1419
  store i8 %conv127, ptr %arrayidx129, align 1, !dbg !1420
  %arrayidx130 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !1421
  store i8 %conv127, ptr %arrayidx130, align 1, !dbg !1422
  %arrayidx131 = getelementptr inbounds i8, ptr %src, i64 195, !dbg !1423
  store i8 %conv127, ptr %arrayidx131, align 1, !dbg !1424
  %mul132 = shl nuw nsw i32 %conv14, 1, !dbg !1425
  %add133 = add nuw nsw i32 %conv12, 2, !dbg !1425
  %add134 = add nuw nsw i32 %add133, %mul132, !dbg !1425
  %add135 = add nuw nsw i32 %add134, %conv16, !dbg !1425
  %shr136 = lshr i32 %add135, 2, !dbg !1425
  %conv137 = trunc nuw i32 %shr136 to i8, !dbg !1425
  %arrayidx138 = getelementptr inbounds i8, ptr %src, i64 38, !dbg !1426
  store i8 %conv137, ptr %arrayidx138, align 1, !dbg !1427
  %arrayidx139 = getelementptr inbounds i8, ptr %src, i64 101, !dbg !1428
  store i8 %conv137, ptr %arrayidx139, align 1, !dbg !1429
  %arrayidx140 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !1430
  store i8 %conv137, ptr %arrayidx140, align 1, !dbg !1431
  %arrayidx141 = getelementptr inbounds i8, ptr %src, i64 227, !dbg !1432
  store i8 %conv137, ptr %arrayidx141, align 1, !dbg !1433
  %add142 = add nuw nsw i32 %conv14, 1, !dbg !1434
  %add143 = add nuw nsw i32 %add142, %conv16, !dbg !1434
  %shr144 = lshr i32 %add143, 1, !dbg !1434
  %conv145 = trunc nuw i32 %shr144 to i8, !dbg !1434
  %arrayidx146 = getelementptr inbounds i8, ptr %src, i64 7, !dbg !1435
  store i8 %conv145, ptr %arrayidx146, align 1, !dbg !1436
  %arrayidx147 = getelementptr inbounds i8, ptr %src, i64 70, !dbg !1437
  store i8 %conv145, ptr %arrayidx147, align 1, !dbg !1438
  %arrayidx148 = getelementptr inbounds i8, ptr %src, i64 133, !dbg !1439
  store i8 %conv145, ptr %arrayidx148, align 1, !dbg !1440
  %arrayidx149 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !1441
  store i8 %conv145, ptr %arrayidx149, align 1, !dbg !1442
  %mul150 = shl nuw nsw i32 %conv16, 1, !dbg !1443
  %add151 = add nuw nsw i32 %conv14, 2, !dbg !1443
  %add152 = add nuw nsw i32 %add151, %mul150, !dbg !1443
  %add153 = add nuw nsw i32 %add152, %conv18, !dbg !1443
  %shr154 = lshr i32 %add153, 2, !dbg !1443
  %conv155 = trunc nuw i32 %shr154 to i8, !dbg !1443
  %arrayidx156 = getelementptr inbounds i8, ptr %src, i64 39, !dbg !1444
  store i8 %conv155, ptr %arrayidx156, align 1, !dbg !1445
  %arrayidx157 = getelementptr inbounds i8, ptr %src, i64 102, !dbg !1446
  store i8 %conv155, ptr %arrayidx157, align 1, !dbg !1447
  %arrayidx158 = getelementptr inbounds i8, ptr %src, i64 165, !dbg !1448
  store i8 %conv155, ptr %arrayidx158, align 1, !dbg !1449
  %arrayidx159 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !1450
  store i8 %conv155, ptr %arrayidx159, align 1, !dbg !1451
  %add160 = add nuw nsw i32 %conv16, 1, !dbg !1452
  %add161 = add nuw nsw i32 %add160, %conv18, !dbg !1452
  %shr162 = lshr i32 %add161, 1, !dbg !1452
  %conv163 = trunc nuw i32 %shr162 to i8, !dbg !1452
  %arrayidx164 = getelementptr inbounds i8, ptr %src, i64 71, !dbg !1453
  store i8 %conv163, ptr %arrayidx164, align 1, !dbg !1454
  %arrayidx165 = getelementptr inbounds i8, ptr %src, i64 134, !dbg !1455
  store i8 %conv163, ptr %arrayidx165, align 1, !dbg !1456
  %arrayidx166 = getelementptr inbounds i8, ptr %src, i64 197, !dbg !1457
  store i8 %conv163, ptr %arrayidx166, align 1, !dbg !1458
  %mul167 = shl nuw nsw i32 %conv18, 1, !dbg !1459
  %add168 = add nuw nsw i32 %conv16, 2, !dbg !1459
  %add169 = add nuw nsw i32 %add168, %mul167, !dbg !1459
  %add170 = add nuw nsw i32 %add169, %conv20, !dbg !1459
  %shr171 = lshr i32 %add170, 2, !dbg !1459
  %conv172 = trunc nuw i32 %shr171 to i8, !dbg !1459
  %arrayidx173 = getelementptr inbounds i8, ptr %src, i64 103, !dbg !1460
  store i8 %conv172, ptr %arrayidx173, align 1, !dbg !1461
  %arrayidx174 = getelementptr inbounds i8, ptr %src, i64 166, !dbg !1462
  store i8 %conv172, ptr %arrayidx174, align 1, !dbg !1463
  %arrayidx175 = getelementptr inbounds i8, ptr %src, i64 229, !dbg !1464
  store i8 %conv172, ptr %arrayidx175, align 1, !dbg !1465
  %add176 = add nuw nsw i32 %conv18, 1, !dbg !1466
  %add177 = add nuw nsw i32 %add176, %conv20, !dbg !1466
  %shr178 = lshr i32 %add177, 1, !dbg !1466
  %conv179 = trunc nuw i32 %shr178 to i8, !dbg !1466
  %arrayidx180 = getelementptr inbounds i8, ptr %src, i64 135, !dbg !1467
  store i8 %conv179, ptr %arrayidx180, align 1, !dbg !1468
  %arrayidx181 = getelementptr inbounds i8, ptr %src, i64 198, !dbg !1469
  store i8 %conv179, ptr %arrayidx181, align 1, !dbg !1470
  %mul182 = shl nuw nsw i32 %conv20, 1, !dbg !1471
  %add183 = add nuw nsw i32 %conv18, 2, !dbg !1471
  %add184 = add nuw nsw i32 %add183, %mul182, !dbg !1471
  %add185 = add nuw nsw i32 %add184, %conv22, !dbg !1471
  %shr186 = lshr i32 %add185, 2, !dbg !1471
  %conv187 = trunc nuw i32 %shr186 to i8, !dbg !1471
  %arrayidx188 = getelementptr inbounds i8, ptr %src, i64 167, !dbg !1472
  store i8 %conv187, ptr %arrayidx188, align 1, !dbg !1473
  %arrayidx189 = getelementptr inbounds i8, ptr %src, i64 230, !dbg !1474
  store i8 %conv187, ptr %arrayidx189, align 1, !dbg !1475
  %add190 = add nuw nsw i32 %conv20, 1, !dbg !1476
  %add191 = add nuw nsw i32 %add190, %conv22, !dbg !1476
  %shr192 = lshr i32 %add191, 1, !dbg !1476
  %conv193 = trunc nuw i32 %shr192 to i8, !dbg !1476
  %arrayidx194 = getelementptr inbounds i8, ptr %src, i64 199, !dbg !1477
  store i8 %conv193, ptr %arrayidx194, align 1, !dbg !1478
  %mul195 = shl nuw nsw i32 %conv22, 1, !dbg !1479
  %add196 = add nuw nsw i32 %conv20, 2, !dbg !1479
  %add197 = add nuw nsw i32 %add196, %mul195, !dbg !1479
  %add198 = add nuw nsw i32 %add197, %conv24, !dbg !1479
  %shr199 = lshr i32 %add198, 2, !dbg !1479
  %conv200 = trunc nuw i32 %shr199 to i8, !dbg !1479
  %arrayidx201 = getelementptr inbounds i8, ptr %src, i64 231, !dbg !1480
  store i8 %conv200, ptr %arrayidx201, align 1, !dbg !1481
  ret void, !dbg !1482
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_hu(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 !dbg !1483 {
entry:
    #dbg_value(ptr %src, !1485, !DIExpression(), !1503)
    #dbg_value(ptr %edge, !1486, !DIExpression(), !1503)
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 14, !dbg !1504
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1504
  %conv = zext i8 %0 to i32, !dbg !1504
    #dbg_value(i32 %conv, !1487, !DIExpression(), !1503)
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 13, !dbg !1504
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !1504
  %conv2 = zext i8 %1 to i32, !dbg !1504
    #dbg_value(i32 %conv2, !1488, !DIExpression(), !1503)
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 12, !dbg !1504
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !1504
  %conv4 = zext i8 %2 to i32, !dbg !1504
    #dbg_value(i32 %conv4, !1489, !DIExpression(), !1503)
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 11, !dbg !1504
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !1504
  %conv6 = zext i8 %3 to i32, !dbg !1504
    #dbg_value(i32 %conv6, !1490, !DIExpression(), !1503)
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 10, !dbg !1504
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !1504
  %conv8 = zext i8 %4 to i32, !dbg !1504
    #dbg_value(i32 %conv8, !1491, !DIExpression(), !1503)
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 9, !dbg !1504
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !1504
  %conv10 = zext i8 %5 to i32, !dbg !1504
    #dbg_value(i32 %conv10, !1492, !DIExpression(), !1503)
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 8, !dbg !1504
  %6 = load i8, ptr %arrayidx11, align 1, !dbg !1504
  %conv12 = zext i8 %6 to i32, !dbg !1504
    #dbg_value(i32 %conv12, !1493, !DIExpression(), !1503)
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 7, !dbg !1504
  %7 = load i8, ptr %arrayidx13, align 1, !dbg !1504
  %conv14 = zext i8 %7 to i32, !dbg !1504
    #dbg_value(i32 %conv14, !1494, !DIExpression(), !1503)
  %add = add nuw nsw i32 %conv2, 1, !dbg !1505
  %add15 = add nuw nsw i32 %add, %conv, !dbg !1505
  %shr = lshr i32 %add15, 1, !dbg !1505
  %mul = shl nuw nsw i32 %conv2, 1, !dbg !1506
  %add16 = add nuw nsw i32 %mul, %conv, !dbg !1506
  %add17 = add nuw nsw i32 %add16, %conv4, !dbg !1506
    #dbg_value(i32 %shr, !1164, !DIExpression(), !1507)
    #dbg_value(i32 %add17, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1507)
  %add18 = shl nuw nsw i32 %add17, 6, !dbg !1509
  %8 = add nuw nsw i32 %add18, 128, !dbg !1509
  %shl.i = and i32 %8, 2147483392, !dbg !1509
  %add.i = add nuw nsw i32 %shl.i, %shr, !dbg !1510
    #dbg_value(i32 %add.i, !1495, !DIExpression(), !1503)
  %add21 = add nuw nsw i32 %add, %conv4, !dbg !1511
  %shr22 = lshr i32 %add21, 1, !dbg !1511
  %mul23 = shl nuw nsw i32 %conv4, 1, !dbg !1512
  %add24 = add nuw nsw i32 %mul23, %conv2, !dbg !1512
  %add25 = add nuw nsw i32 %add24, %conv6, !dbg !1512
    #dbg_value(i32 %shr22, !1164, !DIExpression(), !1513)
    #dbg_value(i32 %add25, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1513)
  %add26 = shl nuw nsw i32 %add25, 6, !dbg !1515
  %9 = add nuw nsw i32 %add26, 128, !dbg !1515
  %shl.i158 = and i32 %9, 2147483392, !dbg !1515
  %add.i159 = add nuw nsw i32 %shl.i158, %shr22, !dbg !1516
    #dbg_value(i32 %add.i159, !1496, !DIExpression(), !1503)
  %add29 = add nuw nsw i32 %conv4, 1, !dbg !1517
  %add30 = add nuw nsw i32 %add29, %conv6, !dbg !1517
  %shr31 = lshr i32 %add30, 1, !dbg !1517
  %mul32 = shl nuw nsw i32 %conv6, 1, !dbg !1518
  %add33 = add nuw nsw i32 %mul32, %conv4, !dbg !1518
  %add34 = add nuw nsw i32 %add33, %conv8, !dbg !1518
    #dbg_value(i32 %shr31, !1164, !DIExpression(), !1519)
    #dbg_value(i32 %add34, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1519)
  %add35 = shl nuw nsw i32 %add34, 6, !dbg !1521
  %10 = add nuw nsw i32 %add35, 128, !dbg !1521
  %shl.i160 = and i32 %10, 2147483392, !dbg !1521
  %add.i161 = add nuw nsw i32 %shl.i160, %shr31, !dbg !1522
    #dbg_value(i32 %add.i161, !1497, !DIExpression(), !1503)
  %add38 = add nuw nsw i32 %conv6, 1, !dbg !1523
  %add39 = add nuw nsw i32 %add38, %conv8, !dbg !1523
  %shr40 = lshr i32 %add39, 1, !dbg !1523
  %mul41 = shl nuw nsw i32 %conv8, 1, !dbg !1524
  %add42 = add nuw nsw i32 %mul41, %conv6, !dbg !1524
  %add43 = add nuw nsw i32 %add42, %conv10, !dbg !1524
    #dbg_value(i32 %shr40, !1164, !DIExpression(), !1525)
    #dbg_value(i32 %add43, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1525)
  %add44 = shl nuw nsw i32 %add43, 6, !dbg !1527
  %11 = add nuw nsw i32 %add44, 128, !dbg !1527
  %shl.i162 = and i32 %11, 2147483392, !dbg !1527
  %add.i163 = add nuw nsw i32 %shl.i162, %shr40, !dbg !1528
    #dbg_value(i32 %add.i163, !1498, !DIExpression(), !1503)
  %add47 = add nuw nsw i32 %conv8, 1, !dbg !1529
  %add48 = add nuw nsw i32 %add47, %conv10, !dbg !1529
  %shr49 = lshr i32 %add48, 1, !dbg !1529
  %mul50 = shl nuw nsw i32 %conv10, 1, !dbg !1530
  %add51 = add nuw nsw i32 %mul50, %conv8, !dbg !1530
  %add52 = add nuw nsw i32 %add51, %conv12, !dbg !1530
    #dbg_value(i32 %shr49, !1164, !DIExpression(), !1531)
    #dbg_value(i32 %add52, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1531)
  %add53 = shl nuw nsw i32 %add52, 6, !dbg !1533
  %12 = add nuw nsw i32 %add53, 128, !dbg !1533
  %shl.i164 = and i32 %12, 2147483392, !dbg !1533
  %add.i165 = add nuw nsw i32 %shl.i164, %shr49, !dbg !1534
    #dbg_value(i32 %add.i165, !1499, !DIExpression(), !1503)
  %add56 = add nuw nsw i32 %conv10, 1, !dbg !1535
  %add57 = add nuw nsw i32 %add56, %conv12, !dbg !1535
  %shr58 = lshr i32 %add57, 1, !dbg !1535
  %mul59 = shl nuw nsw i32 %conv12, 1, !dbg !1536
  %add60 = add nuw nsw i32 %mul59, %conv10, !dbg !1536
  %add61 = add nuw nsw i32 %add60, %conv14, !dbg !1536
    #dbg_value(i32 %shr58, !1164, !DIExpression(), !1537)
    #dbg_value(i32 %add61, !1169, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1537)
  %add62 = shl nuw nsw i32 %add61, 6, !dbg !1539
  %13 = add nuw nsw i32 %add62, 128, !dbg !1539
  %shl.i166 = and i32 %13, 2147483392, !dbg !1539
  %add.i167 = add nuw nsw i32 %shl.i166, %shr58, !dbg !1540
    #dbg_value(i32 %add.i167, !1500, !DIExpression(), !1503)
  %add65 = add nuw nsw i32 %conv12, 1, !dbg !1541
  %add66 = add nuw nsw i32 %add65, %conv14, !dbg !1541
  %shr67 = lshr i32 %add66, 1, !dbg !1541
  %add69 = add nuw nsw i32 %conv14, %conv12, !dbg !1542
    #dbg_value(i32 %shr67, !1164, !DIExpression(), !1543)
    #dbg_value(!DIArgList(i32 %add69, i32 %conv14), !1169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value), !1543)
  %14 = shl nuw nsw i32 %conv14, 7, !dbg !1545
  %15 = shl nuw nsw i32 %add69, 6, !dbg !1545
  %add71 = add nuw nsw i32 %14, %15, !dbg !1545
  %16 = add nuw nsw i32 %add71, 128, !dbg !1545
  %shl.i168 = and i32 %16, 130816, !dbg !1545
  %add.i169 = add nuw nsw i32 %shl.i168, %shr67, !dbg !1546
    #dbg_value(i32 %add.i169, !1501, !DIExpression(), !1503)
    #dbg_value(i32 %conv14, !1164, !DIExpression(), !1547)
    #dbg_value(i32 %conv14, !1169, !DIExpression(), !1547)
    #dbg_value(i32 %conv14, !1502, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_stack_value), !1503)
    #dbg_value(i32 %add.i, !1234, !DIExpression(), !1549)
    #dbg_value(i32 %add.i159, !1237, !DIExpression(), !1549)
  %shl.i172 = shl nuw i32 %add.i159, 16, !dbg !1551
  %add.i173 = add nuw nsw i32 %add.i, %shl.i172, !dbg !1552
  store i32 %add.i173, ptr %src, align 4, !dbg !1553
    #dbg_value(i32 %add.i159, !1234, !DIExpression(), !1554)
    #dbg_value(i32 %add.i161, !1237, !DIExpression(), !1554)
  %shl.i174 = shl nuw i32 %add.i161, 16, !dbg !1556
  %add.i175 = add nuw nsw i32 %shl.i174, %add.i159, !dbg !1557
  %arrayidx78 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1558
  store i32 %add.i175, ptr %arrayidx78, align 4, !dbg !1559
    #dbg_value(i32 %add.i161, !1234, !DIExpression(), !1560)
    #dbg_value(i32 %add.i163, !1237, !DIExpression(), !1560)
  %shl.i176 = shl nuw i32 %add.i163, 16, !dbg !1562
  %add.i177 = add nuw nsw i32 %shl.i176, %add.i161, !dbg !1563
  %arrayidx80 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !1564
  store i32 %add.i177, ptr %arrayidx80, align 4, !dbg !1565
  %arrayidx81 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !1566
  store i32 %add.i177, ptr %arrayidx81, align 4, !dbg !1567
    #dbg_value(i32 %add.i163, !1234, !DIExpression(), !1568)
    #dbg_value(i32 %add.i165, !1237, !DIExpression(), !1568)
  %shl.i178 = shl nuw i32 %add.i165, 16, !dbg !1570
  %add.i179 = add nuw nsw i32 %shl.i178, %add.i163, !dbg !1571
  %arrayidx83 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !1572
  store i32 %add.i179, ptr %arrayidx83, align 4, !dbg !1573
  %arrayidx84 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !1574
  store i32 %add.i179, ptr %arrayidx84, align 4, !dbg !1575
    #dbg_value(i32 %add.i165, !1234, !DIExpression(), !1576)
    #dbg_value(i32 %add.i167, !1237, !DIExpression(), !1576)
  %shl.i180 = shl nuw i32 %add.i167, 16, !dbg !1578
  %add.i181 = add nuw nsw i32 %shl.i180, %add.i165, !dbg !1579
  %arrayidx86 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !1580
  store i32 %add.i181, ptr %arrayidx86, align 4, !dbg !1581
  %arrayidx87 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !1582
  store i32 %add.i181, ptr %arrayidx87, align 4, !dbg !1583
    #dbg_value(i32 %add.i167, !1234, !DIExpression(), !1584)
    #dbg_value(i32 %add.i169, !1237, !DIExpression(), !1584)
  %shl.i182 = shl nuw i32 %add.i169, 16, !dbg !1586
  %add.i183 = add nuw nsw i32 %shl.i182, %add.i167, !dbg !1587
  %arrayidx89 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !1588
  store i32 %add.i183, ptr %arrayidx89, align 4, !dbg !1589
  %arrayidx90 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !1590
  store i32 %add.i183, ptr %arrayidx90, align 4, !dbg !1591
    #dbg_value(i32 %add.i169, !1234, !DIExpression(), !1592)
    #dbg_value(i32 %conv14, !1237, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_stack_value), !1592)
  %shl.i184 = mul nuw i32 %conv14, 16842752, !dbg !1594
  %add.i185 = add nuw nsw i32 %add.i169, %shl.i184, !dbg !1595
  %arrayidx92 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !1596
  store i32 %add.i185, ptr %arrayidx92, align 4, !dbg !1597
  %arrayidx93 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !1598
  store i32 %add.i185, ptr %arrayidx93, align 4, !dbg !1599
    #dbg_value(i32 %conv14, !1234, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_stack_value), !1600)
    #dbg_value(i32 %conv14, !1237, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_stack_value), !1600)
  %add.i187 = mul nuw i32 %conv14, 16843009, !dbg !1602
  %arrayidx95 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !1603
  store i32 %add.i187, ptr %arrayidx95, align 4, !dbg !1604
  %arrayidx96 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !1605
  store i32 %add.i187, ptr %arrayidx96, align 4, !dbg !1606
  %arrayidx97 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !1607
  store i32 %add.i187, ptr %arrayidx97, align 4, !dbg !1608
  %arrayidx98 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !1609
  store i32 %add.i187, ptr %arrayidx98, align 4, !dbg !1610
  ret void, !dbg !1611
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_dc_left(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 !dbg !1612 {
entry:
    #dbg_value(ptr %src, !1614, !DIExpression(), !1627)
    #dbg_value(ptr %edge, !1615, !DIExpression(), !1627)
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 14, !dbg !1628
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1628
  %conv = zext i8 %0 to i32, !dbg !1628
    #dbg_value(i32 %conv, !1616, !DIExpression(), !1627)
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 13, !dbg !1628
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !1628
  %conv2 = zext i8 %1 to i32, !dbg !1628
    #dbg_value(i32 %conv2, !1617, !DIExpression(), !1627)
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 12, !dbg !1628
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !1628
  %conv4 = zext i8 %2 to i32, !dbg !1628
    #dbg_value(i32 %conv4, !1618, !DIExpression(), !1627)
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 11, !dbg !1628
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !1628
  %conv6 = zext i8 %3 to i32, !dbg !1628
    #dbg_value(i32 %conv6, !1619, !DIExpression(), !1627)
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 10, !dbg !1628
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !1628
  %conv8 = zext i8 %4 to i32, !dbg !1628
    #dbg_value(i32 %conv8, !1620, !DIExpression(), !1627)
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 9, !dbg !1628
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !1628
  %conv10 = zext i8 %5 to i32, !dbg !1628
    #dbg_value(i32 %conv10, !1621, !DIExpression(), !1627)
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 8, !dbg !1628
  %6 = load i8, ptr %arrayidx11, align 1, !dbg !1628
  %conv12 = zext i8 %6 to i32, !dbg !1628
    #dbg_value(i32 %conv12, !1622, !DIExpression(), !1627)
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 7, !dbg !1628
  %7 = load i8, ptr %arrayidx13, align 1, !dbg !1628
  %conv14 = zext i8 %7 to i32, !dbg !1628
    #dbg_value(i32 %conv14, !1623, !DIExpression(), !1627)
  %add = add nuw nsw i32 %conv, 4, !dbg !1629
  %add15 = add nuw nsw i32 %add, %conv2, !dbg !1630
  %add16 = add nuw nsw i32 %add15, %conv4, !dbg !1631
  %add17 = add nuw nsw i32 %add16, %conv6, !dbg !1632
  %add18 = add nuw nsw i32 %add17, %conv8, !dbg !1633
  %add19 = add nuw nsw i32 %add18, %conv10, !dbg !1634
  %add20 = add nuw nsw i32 %add19, %conv12, !dbg !1635
  %add21 = add nuw nsw i32 %add20, %conv14, !dbg !1636
  %shr = lshr i32 %add21, 3, !dbg !1637
  %mul = mul nuw nsw i32 %shr, 16843009, !dbg !1638
    #dbg_value(i32 %mul, !1624, !DIExpression(), !1627)
    #dbg_value(i32 0, !1625, !DIExpression(), !1639)
    #dbg_value(ptr %src, !1614, !DIExpression(), !1627)
    #dbg_value(i32 0, !1625, !DIExpression(), !1639)
    #dbg_value(ptr %src, !1614, !DIExpression(), !1627)
  store i32 %mul, ptr %src, align 4, !dbg !1640
  %add.ptr23 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !1640
  store i32 %mul, ptr %add.ptr23, align 4, !dbg !1640
  %add.ptr24 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1640
    #dbg_value(ptr %add.ptr24, !1614, !DIExpression(), !1627)
    #dbg_value(i32 1, !1625, !DIExpression(), !1639)
  store i32 %mul, ptr %add.ptr24, align 4, !dbg !1640
  %add.ptr23.1 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !1640
  store i32 %mul, ptr %add.ptr23.1, align 4, !dbg !1640
  %add.ptr24.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !1640
    #dbg_value(ptr %add.ptr24.1, !1614, !DIExpression(), !1627)
    #dbg_value(i32 2, !1625, !DIExpression(), !1639)
  store i32 %mul, ptr %add.ptr24.1, align 4, !dbg !1640
  %add.ptr23.2 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !1640
  store i32 %mul, ptr %add.ptr23.2, align 4, !dbg !1640
  %add.ptr24.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !1640
    #dbg_value(ptr %add.ptr24.2, !1614, !DIExpression(), !1627)
    #dbg_value(i32 3, !1625, !DIExpression(), !1639)
  store i32 %mul, ptr %add.ptr24.2, align 4, !dbg !1640
  %add.ptr23.3 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !1640
  store i32 %mul, ptr %add.ptr23.3, align 4, !dbg !1640
  %add.ptr24.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !1640
    #dbg_value(ptr %add.ptr24.3, !1614, !DIExpression(), !1627)
    #dbg_value(i32 4, !1625, !DIExpression(), !1639)
  store i32 %mul, ptr %add.ptr24.3, align 4, !dbg !1640
  %add.ptr23.4 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !1640
  store i32 %mul, ptr %add.ptr23.4, align 4, !dbg !1640
  %add.ptr24.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !1640
    #dbg_value(ptr %add.ptr24.4, !1614, !DIExpression(), !1627)
    #dbg_value(i32 5, !1625, !DIExpression(), !1639)
  store i32 %mul, ptr %add.ptr24.4, align 4, !dbg !1640
  %add.ptr23.5 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !1640
  store i32 %mul, ptr %add.ptr23.5, align 4, !dbg !1640
  %add.ptr24.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !1640
    #dbg_value(ptr %add.ptr24.5, !1614, !DIExpression(), !1627)
    #dbg_value(i32 6, !1625, !DIExpression(), !1639)
  store i32 %mul, ptr %add.ptr24.5, align 4, !dbg !1640
  %add.ptr23.6 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !1640
  store i32 %mul, ptr %add.ptr23.6, align 4, !dbg !1640
  %add.ptr24.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !1640
    #dbg_value(ptr %add.ptr24.6, !1614, !DIExpression(), !1627)
    #dbg_value(i32 7, !1625, !DIExpression(), !1639)
  store i32 %mul, ptr %add.ptr24.6, align 4, !dbg !1640
  %add.ptr23.7 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !1640
  store i32 %mul, ptr %add.ptr23.7, align 4, !dbg !1640
    #dbg_value(ptr %add.ptr24.6, !1614, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !1627)
    #dbg_value(i32 8, !1625, !DIExpression(), !1639)
  ret void, !dbg !1643
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_dc_top(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 !dbg !1644 {
entry:
    #dbg_value(ptr %src, !1646, !DIExpression(), !1659)
    #dbg_value(ptr %edge, !1647, !DIExpression(), !1659)
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 16, !dbg !1660
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1660
  %conv = zext i8 %0 to i32, !dbg !1660
    #dbg_value(i32 %conv, !1648, !DIExpression(), !1659)
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 17, !dbg !1660
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !1660
  %conv2 = zext i8 %1 to i32, !dbg !1660
    #dbg_value(i32 %conv2, !1649, !DIExpression(), !1659)
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 18, !dbg !1660
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !1660
  %conv4 = zext i8 %2 to i32, !dbg !1660
    #dbg_value(i32 %conv4, !1650, !DIExpression(), !1659)
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 19, !dbg !1660
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !1660
  %conv6 = zext i8 %3 to i32, !dbg !1660
    #dbg_value(i32 %conv6, !1651, !DIExpression(), !1659)
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 20, !dbg !1660
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !1660
  %conv8 = zext i8 %4 to i32, !dbg !1660
    #dbg_value(i32 %conv8, !1652, !DIExpression(), !1659)
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 21, !dbg !1660
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !1660
  %conv10 = zext i8 %5 to i32, !dbg !1660
    #dbg_value(i32 %conv10, !1653, !DIExpression(), !1659)
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 22, !dbg !1660
  %6 = load i8, ptr %arrayidx11, align 1, !dbg !1660
  %conv12 = zext i8 %6 to i32, !dbg !1660
    #dbg_value(i32 %conv12, !1654, !DIExpression(), !1659)
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 23, !dbg !1660
  %7 = load i8, ptr %arrayidx13, align 1, !dbg !1660
  %conv14 = zext i8 %7 to i32, !dbg !1660
    #dbg_value(i32 %conv14, !1655, !DIExpression(), !1659)
  %add = add nuw nsw i32 %conv, 4, !dbg !1661
  %add15 = add nuw nsw i32 %add, %conv2, !dbg !1662
  %add16 = add nuw nsw i32 %add15, %conv4, !dbg !1663
  %add17 = add nuw nsw i32 %add16, %conv6, !dbg !1664
  %add18 = add nuw nsw i32 %add17, %conv8, !dbg !1665
  %add19 = add nuw nsw i32 %add18, %conv10, !dbg !1666
  %add20 = add nuw nsw i32 %add19, %conv12, !dbg !1667
  %add21 = add nuw nsw i32 %add20, %conv14, !dbg !1668
  %shr = lshr i32 %add21, 3, !dbg !1669
  %mul = mul nuw nsw i32 %shr, 16843009, !dbg !1670
    #dbg_value(i32 %mul, !1656, !DIExpression(), !1659)
    #dbg_value(i32 0, !1657, !DIExpression(), !1671)
    #dbg_value(ptr %src, !1646, !DIExpression(), !1659)
    #dbg_value(i32 0, !1657, !DIExpression(), !1671)
    #dbg_value(ptr %src, !1646, !DIExpression(), !1659)
  store i32 %mul, ptr %src, align 4, !dbg !1672
  %add.ptr23 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !1672
  store i32 %mul, ptr %add.ptr23, align 4, !dbg !1672
  %add.ptr24 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1672
    #dbg_value(ptr %add.ptr24, !1646, !DIExpression(), !1659)
    #dbg_value(i32 1, !1657, !DIExpression(), !1671)
  store i32 %mul, ptr %add.ptr24, align 4, !dbg !1672
  %add.ptr23.1 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !1672
  store i32 %mul, ptr %add.ptr23.1, align 4, !dbg !1672
  %add.ptr24.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !1672
    #dbg_value(ptr %add.ptr24.1, !1646, !DIExpression(), !1659)
    #dbg_value(i32 2, !1657, !DIExpression(), !1671)
  store i32 %mul, ptr %add.ptr24.1, align 4, !dbg !1672
  %add.ptr23.2 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !1672
  store i32 %mul, ptr %add.ptr23.2, align 4, !dbg !1672
  %add.ptr24.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !1672
    #dbg_value(ptr %add.ptr24.2, !1646, !DIExpression(), !1659)
    #dbg_value(i32 3, !1657, !DIExpression(), !1671)
  store i32 %mul, ptr %add.ptr24.2, align 4, !dbg !1672
  %add.ptr23.3 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !1672
  store i32 %mul, ptr %add.ptr23.3, align 4, !dbg !1672
  %add.ptr24.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !1672
    #dbg_value(ptr %add.ptr24.3, !1646, !DIExpression(), !1659)
    #dbg_value(i32 4, !1657, !DIExpression(), !1671)
  store i32 %mul, ptr %add.ptr24.3, align 4, !dbg !1672
  %add.ptr23.4 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !1672
  store i32 %mul, ptr %add.ptr23.4, align 4, !dbg !1672
  %add.ptr24.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !1672
    #dbg_value(ptr %add.ptr24.4, !1646, !DIExpression(), !1659)
    #dbg_value(i32 5, !1657, !DIExpression(), !1671)
  store i32 %mul, ptr %add.ptr24.4, align 4, !dbg !1672
  %add.ptr23.5 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !1672
  store i32 %mul, ptr %add.ptr23.5, align 4, !dbg !1672
  %add.ptr24.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !1672
    #dbg_value(ptr %add.ptr24.5, !1646, !DIExpression(), !1659)
    #dbg_value(i32 6, !1657, !DIExpression(), !1671)
  store i32 %mul, ptr %add.ptr24.5, align 4, !dbg !1672
  %add.ptr23.6 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !1672
  store i32 %mul, ptr %add.ptr23.6, align 4, !dbg !1672
  %add.ptr24.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !1672
    #dbg_value(ptr %add.ptr24.6, !1646, !DIExpression(), !1659)
    #dbg_value(i32 7, !1657, !DIExpression(), !1671)
  store i32 %mul, ptr %add.ptr24.6, align 4, !dbg !1672
  %add.ptr23.7 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !1672
  store i32 %mul, ptr %add.ptr23.7, align 4, !dbg !1672
    #dbg_value(ptr %add.ptr24.6, !1646, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !1659)
    #dbg_value(i32 8, !1657, !DIExpression(), !1671)
  ret void, !dbg !1675
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @predict_8x8_dc_128(ptr nocapture noundef writeonly %src, ptr nocapture readnone %edge) #0 !dbg !1676 {
entry:
    #dbg_value(ptr %src, !1678, !DIExpression(), !1682)
    #dbg_value(ptr poison, !1679, !DIExpression(), !1682)
    #dbg_value(i32 0, !1680, !DIExpression(), !1683)
    #dbg_value(i32 0, !1680, !DIExpression(), !1683)
    #dbg_value(ptr %src, !1678, !DIExpression(), !1682)
  store i32 -2139062144, ptr %src, align 4, !dbg !1684
  %add.ptr1 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !1684
  store i32 -2139062144, ptr %add.ptr1, align 4, !dbg !1684
  %add.ptr2 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1684
    #dbg_value(ptr %add.ptr2, !1678, !DIExpression(), !1682)
    #dbg_value(i32 1, !1680, !DIExpression(), !1683)
  store i32 -2139062144, ptr %add.ptr2, align 4, !dbg !1684
  %add.ptr1.1 = getelementptr inbounds i8, ptr %src, i64 36, !dbg !1684
  store i32 -2139062144, ptr %add.ptr1.1, align 4, !dbg !1684
  %add.ptr2.1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !1684
    #dbg_value(ptr %add.ptr2.1, !1678, !DIExpression(), !1682)
    #dbg_value(i32 2, !1680, !DIExpression(), !1683)
  store i32 -2139062144, ptr %add.ptr2.1, align 4, !dbg !1684
  %add.ptr1.2 = getelementptr inbounds i8, ptr %src, i64 68, !dbg !1684
  store i32 -2139062144, ptr %add.ptr1.2, align 4, !dbg !1684
  %add.ptr2.2 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !1684
    #dbg_value(ptr %add.ptr2.2, !1678, !DIExpression(), !1682)
    #dbg_value(i32 3, !1680, !DIExpression(), !1683)
  store i32 -2139062144, ptr %add.ptr2.2, align 4, !dbg !1684
  %add.ptr1.3 = getelementptr inbounds i8, ptr %src, i64 100, !dbg !1684
  store i32 -2139062144, ptr %add.ptr1.3, align 4, !dbg !1684
  %add.ptr2.3 = getelementptr inbounds i8, ptr %src, i64 128, !dbg !1684
    #dbg_value(ptr %add.ptr2.3, !1678, !DIExpression(), !1682)
    #dbg_value(i32 4, !1680, !DIExpression(), !1683)
  store i32 -2139062144, ptr %add.ptr2.3, align 4, !dbg !1684
  %add.ptr1.4 = getelementptr inbounds i8, ptr %src, i64 132, !dbg !1684
  store i32 -2139062144, ptr %add.ptr1.4, align 4, !dbg !1684
  %add.ptr2.4 = getelementptr inbounds i8, ptr %src, i64 160, !dbg !1684
    #dbg_value(ptr %add.ptr2.4, !1678, !DIExpression(), !1682)
    #dbg_value(i32 5, !1680, !DIExpression(), !1683)
  store i32 -2139062144, ptr %add.ptr2.4, align 4, !dbg !1684
  %add.ptr1.5 = getelementptr inbounds i8, ptr %src, i64 164, !dbg !1684
  store i32 -2139062144, ptr %add.ptr1.5, align 4, !dbg !1684
  %add.ptr2.5 = getelementptr inbounds i8, ptr %src, i64 192, !dbg !1684
    #dbg_value(ptr %add.ptr2.5, !1678, !DIExpression(), !1682)
    #dbg_value(i32 6, !1680, !DIExpression(), !1683)
  store i32 -2139062144, ptr %add.ptr2.5, align 4, !dbg !1684
  %add.ptr1.6 = getelementptr inbounds i8, ptr %src, i64 196, !dbg !1684
  store i32 -2139062144, ptr %add.ptr1.6, align 4, !dbg !1684
  %add.ptr2.6 = getelementptr inbounds i8, ptr %src, i64 224, !dbg !1684
    #dbg_value(ptr %add.ptr2.6, !1678, !DIExpression(), !1682)
    #dbg_value(i32 7, !1680, !DIExpression(), !1683)
  store i32 -2139062144, ptr %add.ptr2.6, align 4, !dbg !1684
  %add.ptr1.7 = getelementptr inbounds i8, ptr %src, i64 228, !dbg !1684
  store i32 -2139062144, ptr %add.ptr1.7, align 4, !dbg !1684
    #dbg_value(ptr %add.ptr2.6, !1678, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !1682)
    #dbg_value(i32 8, !1680, !DIExpression(), !1683)
  ret void, !dbg !1687
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_filter(ptr noundef readonly %src, ptr nocapture noundef writeonly %edge, i32 noundef %i_neighbor, i32 noundef %i_filters) #3 !dbg !1688 {
entry:
    #dbg_value(ptr %src, !1690, !DIExpression(), !1698)
    #dbg_value(ptr %edge, !1691, !DIExpression(), !1698)
    #dbg_value(i32 %i_neighbor, !1692, !DIExpression(), !1698)
    #dbg_value(i32 %i_filters, !1693, !DIExpression(), !1698)
  %and = and i32 %i_neighbor, 8, !dbg !1699
    #dbg_value(i32 %and, !1694, !DIExpression(), !1698)
  %and1 = and i32 %i_filters, 1, !dbg !1700
  %tobool.not = icmp eq i32 %and1, 0, !dbg !1700
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1702

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !1703
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1703
  %conv = zext i8 %0 to i16, !dbg !1703
  %arrayidx2 = getelementptr inbounds i8, ptr %src, i64 -33, !dbg !1705
  %1 = load i8, ptr %arrayidx2, align 1, !dbg !1705
  %conv3 = zext i8 %1 to i16, !dbg !1705
  %mul = shl nuw nsw i16 %conv3, 1, !dbg !1706
  %arrayidx4 = getelementptr inbounds i8, ptr %src, i64 -1, !dbg !1707
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !1707
  %conv5 = zext i8 %2 to i16, !dbg !1707
  %add = add nuw nsw i16 %conv, 2, !dbg !1708
  %add6 = add nuw nsw i16 %add, %mul, !dbg !1709
  %add7 = add nuw nsw i16 %add6, %conv5, !dbg !1710
  %shr = lshr i16 %add7, 2, !dbg !1711
  %conv8 = trunc nuw i16 %shr to i8, !dbg !1712
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 15, !dbg !1713
  store i8 %conv8, ptr %arrayidx9, align 1, !dbg !1714
  %tobool10.not = icmp eq i32 %and, 0, !dbg !1715
  %arrayidx4.val = load i8, ptr %arrayidx4, align 1, !dbg !1716
  %arrayidx2.val = load i8, ptr %arrayidx2, align 1, !dbg !1716
  %cond.in = select i1 %tobool10.not, i8 %arrayidx4.val, i8 %arrayidx2.val, !dbg !1716
  %cond = zext i8 %cond.in to i16, !dbg !1715
  %conv16 = zext i8 %arrayidx4.val to i16, !dbg !1717
  %mul17 = shl nuw nsw i16 %conv16, 1, !dbg !1718
  %arrayidx19 = getelementptr inbounds i8, ptr %src, i64 31, !dbg !1719
  %3 = load i8, ptr %arrayidx19, align 1, !dbg !1719
  %conv20 = zext i8 %3 to i16, !dbg !1719
  %add18 = add nuw nsw i16 %mul17, 2, !dbg !1720
  %add21 = add nuw nsw i16 %add18, %cond, !dbg !1721
  %add22 = add nuw nsw i16 %add21, %conv20, !dbg !1722
  %shr23 = lshr i16 %add22, 2, !dbg !1723
  %conv24 = trunc nuw i16 %shr23 to i8, !dbg !1724
  %arrayidx25 = getelementptr inbounds i8, ptr %edge, i64 14, !dbg !1725
  store i8 %conv24, ptr %arrayidx25, align 1, !dbg !1726
  %4 = load i8, ptr %arrayidx4, align 1, !dbg !1727
  %conv27 = zext i8 %4 to i16, !dbg !1727
  %5 = load i8, ptr %arrayidx19, align 1, !dbg !1727
  %conv29 = zext i8 %5 to i16, !dbg !1727
  %mul30 = shl nuw nsw i16 %conv29, 1, !dbg !1727
  %arrayidx32 = getelementptr inbounds i8, ptr %src, i64 63, !dbg !1727
  %6 = load i8, ptr %arrayidx32, align 1, !dbg !1727
  %conv33 = zext i8 %6 to i16, !dbg !1727
  %add31 = add nuw nsw i16 %conv27, 2, !dbg !1727
  %add34 = add nuw nsw i16 %add31, %mul30, !dbg !1727
  %add35 = add nuw nsw i16 %add34, %conv33, !dbg !1727
  %shr36 = lshr i16 %add35, 2, !dbg !1727
  %conv37 = trunc nuw i16 %shr36 to i8, !dbg !1727
  %arrayidx38 = getelementptr inbounds i8, ptr %edge, i64 13, !dbg !1727
  store i8 %conv37, ptr %arrayidx38, align 1, !dbg !1727
  %7 = load i8, ptr %arrayidx19, align 1, !dbg !1728
  %conv40 = zext i8 %7 to i16, !dbg !1728
  %8 = load i8, ptr %arrayidx32, align 1, !dbg !1728
  %conv42 = zext i8 %8 to i16, !dbg !1728
  %mul43 = shl nuw nsw i16 %conv42, 1, !dbg !1728
  %arrayidx45 = getelementptr inbounds i8, ptr %src, i64 95, !dbg !1728
  %9 = load i8, ptr %arrayidx45, align 1, !dbg !1728
  %conv46 = zext i8 %9 to i16, !dbg !1728
  %add44 = add nuw nsw i16 %conv40, 2, !dbg !1728
  %add47 = add nuw nsw i16 %add44, %mul43, !dbg !1728
  %add48 = add nuw nsw i16 %add47, %conv46, !dbg !1728
  %shr49 = lshr i16 %add48, 2, !dbg !1728
  %conv50 = trunc nuw i16 %shr49 to i8, !dbg !1728
  %arrayidx51 = getelementptr inbounds i8, ptr %edge, i64 12, !dbg !1728
  store i8 %conv50, ptr %arrayidx51, align 1, !dbg !1728
  %10 = load i8, ptr %arrayidx32, align 1, !dbg !1729
  %conv53 = zext i8 %10 to i16, !dbg !1729
  %11 = load i8, ptr %arrayidx45, align 1, !dbg !1729
  %conv55 = zext i8 %11 to i16, !dbg !1729
  %mul56 = shl nuw nsw i16 %conv55, 1, !dbg !1729
  %arrayidx58 = getelementptr inbounds i8, ptr %src, i64 127, !dbg !1729
  %12 = load i8, ptr %arrayidx58, align 1, !dbg !1729
  %conv59 = zext i8 %12 to i16, !dbg !1729
  %add57 = add nuw nsw i16 %conv53, 2, !dbg !1729
  %add60 = add nuw nsw i16 %add57, %mul56, !dbg !1729
  %add61 = add nuw nsw i16 %add60, %conv59, !dbg !1729
  %shr62 = lshr i16 %add61, 2, !dbg !1729
  %conv63 = trunc nuw i16 %shr62 to i8, !dbg !1729
  %arrayidx64 = getelementptr inbounds i8, ptr %edge, i64 11, !dbg !1729
  store i8 %conv63, ptr %arrayidx64, align 1, !dbg !1729
  %13 = load i8, ptr %arrayidx45, align 1, !dbg !1730
  %conv66 = zext i8 %13 to i16, !dbg !1730
  %14 = load i8, ptr %arrayidx58, align 1, !dbg !1730
  %conv68 = zext i8 %14 to i16, !dbg !1730
  %mul69 = shl nuw nsw i16 %conv68, 1, !dbg !1730
  %arrayidx71 = getelementptr inbounds i8, ptr %src, i64 159, !dbg !1730
  %15 = load i8, ptr %arrayidx71, align 1, !dbg !1730
  %conv72 = zext i8 %15 to i16, !dbg !1730
  %add70 = add nuw nsw i16 %conv66, 2, !dbg !1730
  %add73 = add nuw nsw i16 %add70, %mul69, !dbg !1730
  %add74 = add nuw nsw i16 %add73, %conv72, !dbg !1730
  %shr75 = lshr i16 %add74, 2, !dbg !1730
  %conv76 = trunc nuw i16 %shr75 to i8, !dbg !1730
  %arrayidx77 = getelementptr inbounds i8, ptr %edge, i64 10, !dbg !1730
  store i8 %conv76, ptr %arrayidx77, align 1, !dbg !1730
  %16 = load i8, ptr %arrayidx58, align 1, !dbg !1731
  %conv79 = zext i8 %16 to i16, !dbg !1731
  %17 = load i8, ptr %arrayidx71, align 1, !dbg !1731
  %conv81 = zext i8 %17 to i16, !dbg !1731
  %mul82 = shl nuw nsw i16 %conv81, 1, !dbg !1731
  %arrayidx84 = getelementptr inbounds i8, ptr %src, i64 191, !dbg !1731
  %18 = load i8, ptr %arrayidx84, align 1, !dbg !1731
  %conv85 = zext i8 %18 to i16, !dbg !1731
  %add83 = add nuw nsw i16 %conv79, 2, !dbg !1731
  %add86 = add nuw nsw i16 %add83, %mul82, !dbg !1731
  %add87 = add nuw nsw i16 %add86, %conv85, !dbg !1731
  %shr88 = lshr i16 %add87, 2, !dbg !1731
  %conv89 = trunc nuw i16 %shr88 to i8, !dbg !1731
  %arrayidx90 = getelementptr inbounds i8, ptr %edge, i64 9, !dbg !1731
  store i8 %conv89, ptr %arrayidx90, align 1, !dbg !1731
  %19 = load i8, ptr %arrayidx71, align 1, !dbg !1732
  %conv92 = zext i8 %19 to i16, !dbg !1732
  %20 = load i8, ptr %arrayidx84, align 1, !dbg !1732
  %conv94 = zext i8 %20 to i16, !dbg !1732
  %mul95 = shl nuw nsw i16 %conv94, 1, !dbg !1732
  %arrayidx97 = getelementptr inbounds i8, ptr %src, i64 223, !dbg !1732
  %21 = load i8, ptr %arrayidx97, align 1, !dbg !1732
  %conv98 = zext i8 %21 to i16, !dbg !1732
  %add96 = add nuw nsw i16 %conv92, 2, !dbg !1732
  %add99 = add nuw nsw i16 %add96, %mul95, !dbg !1732
  %add100 = add nuw nsw i16 %add99, %conv98, !dbg !1732
  %shr101 = lshr i16 %add100, 2, !dbg !1732
  %conv102 = trunc nuw i16 %shr101 to i8, !dbg !1732
  %arrayidx103 = getelementptr inbounds i8, ptr %edge, i64 8, !dbg !1732
  store i8 %conv102, ptr %arrayidx103, align 1, !dbg !1732
  %22 = load i8, ptr %arrayidx84, align 1, !dbg !1733
  %conv105 = zext i8 %22 to i16, !dbg !1733
  %23 = load i8, ptr %arrayidx97, align 1, !dbg !1734
  %conv107 = zext i8 %23 to i16, !dbg !1734
  %mul108 = mul nuw nsw i16 %conv107, 3, !dbg !1735
  %add109 = add nuw nsw i16 %conv105, 2, !dbg !1736
  %add110 = add nuw nsw i16 %add109, %mul108, !dbg !1737
  %shr111 = lshr i16 %add110, 2, !dbg !1738
  %conv112 = trunc nuw i16 %shr111 to i8, !dbg !1739
  %arrayidx113 = getelementptr inbounds i8, ptr %edge, i64 7, !dbg !1740
  store i8 %conv112, ptr %arrayidx113, align 1, !dbg !1741
  br label %if.end, !dbg !1742

if.end:                                           ; preds = %if.then, %entry
  %and114 = and i32 %i_filters, 2, !dbg !1743
  %tobool115.not = icmp eq i32 %and114, 0, !dbg !1743
  br i1 %tobool115.not, label %if.end350, label %if.then116, !dbg !1744

if.then116:                                       ; preds = %if.end
  %and117 = and i32 %i_neighbor, 4, !dbg !1745
    #dbg_value(i32 %and117, !1695, !DIExpression(), !1746)
  %tobool118.not = icmp eq i32 %and, 0, !dbg !1747
  %arrayidx120 = getelementptr inbounds i8, ptr %src, i64 -33, !dbg !1747
  %arrayidx123 = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !1747
  %cond126.in.in = select i1 %tobool118.not, ptr %arrayidx123, ptr %arrayidx120, !dbg !1747
  %cond126.in = load i8, ptr %cond126.in.in, align 1, !dbg !1748
  %cond126 = zext i8 %cond126.in to i16, !dbg !1747
  %24 = load i8, ptr %arrayidx123, align 1, !dbg !1749
  %conv128 = zext i8 %24 to i16, !dbg !1749
  %mul129 = shl nuw nsw i16 %conv128, 1, !dbg !1750
  %arrayidx131 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !1751
  %25 = load i8, ptr %arrayidx131, align 1, !dbg !1751
  %conv132 = zext i8 %25 to i16, !dbg !1751
  %add130 = add nuw nsw i16 %cond126, 2, !dbg !1752
  %add133 = add nuw nsw i16 %add130, %mul129, !dbg !1753
  %add134 = add nuw nsw i16 %add133, %conv132, !dbg !1754
  %shr135 = lshr i16 %add134, 2, !dbg !1755
  %conv136 = trunc nuw i16 %shr135 to i8, !dbg !1756
  %arrayidx137 = getelementptr inbounds i8, ptr %edge, i64 16, !dbg !1757
  store i8 %conv136, ptr %arrayidx137, align 1, !dbg !1758
  %26 = load i8, ptr %arrayidx123, align 1, !dbg !1759
  %conv139 = zext i8 %26 to i16, !dbg !1759
  %27 = load i8, ptr %arrayidx131, align 1, !dbg !1759
  %conv141 = zext i8 %27 to i16, !dbg !1759
  %mul142 = shl nuw nsw i16 %conv141, 1, !dbg !1759
  %arrayidx144 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !1759
  %28 = load i8, ptr %arrayidx144, align 1, !dbg !1759
  %conv145 = zext i8 %28 to i16, !dbg !1759
  %add143 = add nuw nsw i16 %conv139, 2, !dbg !1759
  %add146 = add nuw nsw i16 %add143, %mul142, !dbg !1759
  %add147 = add nuw nsw i16 %add146, %conv145, !dbg !1759
  %shr148 = lshr i16 %add147, 2, !dbg !1759
  %conv149 = trunc nuw i16 %shr148 to i8, !dbg !1759
  %arrayidx150 = getelementptr inbounds i8, ptr %edge, i64 17, !dbg !1759
  store i8 %conv149, ptr %arrayidx150, align 1, !dbg !1759
  %29 = load i8, ptr %arrayidx131, align 1, !dbg !1760
  %conv152 = zext i8 %29 to i16, !dbg !1760
  %30 = load i8, ptr %arrayidx144, align 1, !dbg !1760
  %conv154 = zext i8 %30 to i16, !dbg !1760
  %mul155 = shl nuw nsw i16 %conv154, 1, !dbg !1760
  %arrayidx157 = getelementptr inbounds i8, ptr %src, i64 -29, !dbg !1760
  %31 = load i8, ptr %arrayidx157, align 1, !dbg !1760
  %conv158 = zext i8 %31 to i16, !dbg !1760
  %add156 = add nuw nsw i16 %conv152, 2, !dbg !1760
  %add159 = add nuw nsw i16 %add156, %mul155, !dbg !1760
  %add160 = add nuw nsw i16 %add159, %conv158, !dbg !1760
  %shr161 = lshr i16 %add160, 2, !dbg !1760
  %conv162 = trunc nuw i16 %shr161 to i8, !dbg !1760
  %arrayidx163 = getelementptr inbounds i8, ptr %edge, i64 18, !dbg !1760
  store i8 %conv162, ptr %arrayidx163, align 1, !dbg !1760
  %32 = load i8, ptr %arrayidx144, align 1, !dbg !1761
  %conv165 = zext i8 %32 to i16, !dbg !1761
  %33 = load i8, ptr %arrayidx157, align 1, !dbg !1761
  %conv167 = zext i8 %33 to i16, !dbg !1761
  %mul168 = shl nuw nsw i16 %conv167, 1, !dbg !1761
  %arrayidx170 = getelementptr inbounds i8, ptr %src, i64 -28, !dbg !1761
  %34 = load i8, ptr %arrayidx170, align 1, !dbg !1761
  %conv171 = zext i8 %34 to i16, !dbg !1761
  %add169 = add nuw nsw i16 %conv165, 2, !dbg !1761
  %add172 = add nuw nsw i16 %add169, %mul168, !dbg !1761
  %add173 = add nuw nsw i16 %add172, %conv171, !dbg !1761
  %shr174 = lshr i16 %add173, 2, !dbg !1761
  %conv175 = trunc nuw i16 %shr174 to i8, !dbg !1761
  %arrayidx176 = getelementptr inbounds i8, ptr %edge, i64 19, !dbg !1761
  store i8 %conv175, ptr %arrayidx176, align 1, !dbg !1761
  %35 = load i8, ptr %arrayidx157, align 1, !dbg !1762
  %conv178 = zext i8 %35 to i16, !dbg !1762
  %36 = load i8, ptr %arrayidx170, align 1, !dbg !1762
  %conv180 = zext i8 %36 to i16, !dbg !1762
  %mul181 = shl nuw nsw i16 %conv180, 1, !dbg !1762
  %arrayidx183 = getelementptr inbounds i8, ptr %src, i64 -27, !dbg !1762
  %37 = load i8, ptr %arrayidx183, align 1, !dbg !1762
  %conv184 = zext i8 %37 to i16, !dbg !1762
  %add182 = add nuw nsw i16 %conv178, 2, !dbg !1762
  %add185 = add nuw nsw i16 %add182, %mul181, !dbg !1762
  %add186 = add nuw nsw i16 %add185, %conv184, !dbg !1762
  %shr187 = lshr i16 %add186, 2, !dbg !1762
  %conv188 = trunc nuw i16 %shr187 to i8, !dbg !1762
  %arrayidx189 = getelementptr inbounds i8, ptr %edge, i64 20, !dbg !1762
  store i8 %conv188, ptr %arrayidx189, align 1, !dbg !1762
  %38 = load i8, ptr %arrayidx170, align 1, !dbg !1763
  %conv191 = zext i8 %38 to i16, !dbg !1763
  %39 = load i8, ptr %arrayidx183, align 1, !dbg !1763
  %conv193 = zext i8 %39 to i16, !dbg !1763
  %mul194 = shl nuw nsw i16 %conv193, 1, !dbg !1763
  %arrayidx196 = getelementptr inbounds i8, ptr %src, i64 -26, !dbg !1763
  %40 = load i8, ptr %arrayidx196, align 1, !dbg !1763
  %conv197 = zext i8 %40 to i16, !dbg !1763
  %add195 = add nuw nsw i16 %conv191, 2, !dbg !1763
  %add198 = add nuw nsw i16 %add195, %mul194, !dbg !1763
  %add199 = add nuw nsw i16 %add198, %conv197, !dbg !1763
  %shr200 = lshr i16 %add199, 2, !dbg !1763
  %conv201 = trunc nuw i16 %shr200 to i8, !dbg !1763
  %arrayidx202 = getelementptr inbounds i8, ptr %edge, i64 21, !dbg !1763
  store i8 %conv201, ptr %arrayidx202, align 1, !dbg !1763
  %41 = load i8, ptr %arrayidx183, align 1, !dbg !1764
  %conv204 = zext i8 %41 to i16, !dbg !1764
  %42 = load i8, ptr %arrayidx196, align 1, !dbg !1764
  %conv206 = zext i8 %42 to i16, !dbg !1764
  %mul207 = shl nuw nsw i16 %conv206, 1, !dbg !1764
  %arrayidx209 = getelementptr inbounds i8, ptr %src, i64 -25, !dbg !1764
  %43 = load i8, ptr %arrayidx209, align 1, !dbg !1764
  %conv210 = zext i8 %43 to i16, !dbg !1764
  %add208 = add nuw nsw i16 %conv204, 2, !dbg !1764
  %add211 = add nuw nsw i16 %add208, %mul207, !dbg !1764
  %add212 = add nuw nsw i16 %add211, %conv210, !dbg !1764
  %shr213 = lshr i16 %add212, 2, !dbg !1764
  %conv214 = trunc nuw i16 %shr213 to i8, !dbg !1764
  %arrayidx215 = getelementptr inbounds i8, ptr %edge, i64 22, !dbg !1764
  store i8 %conv214, ptr %arrayidx215, align 1, !dbg !1764
  %44 = load i8, ptr %arrayidx196, align 1, !dbg !1765
  %conv217 = zext i8 %44 to i32, !dbg !1765
  %45 = load i8, ptr %arrayidx209, align 1, !dbg !1766
  %conv219 = zext i8 %45 to i32, !dbg !1766
  %mul220 = shl nuw nsw i32 %conv219, 1, !dbg !1767
  %add221 = add nuw nsw i32 %mul220, %conv217, !dbg !1768
  %tobool222.not = icmp eq i32 %and117, 0, !dbg !1769
  br i1 %tobool222.not, label %cond.end229, label %cond.end229.thread, !dbg !1769

cond.end229:                                      ; preds = %if.then116
  %add231 = add nuw nsw i32 %add221, 2, !dbg !1770
  %add232 = add nuw nsw i32 %add231, %conv219, !dbg !1771
  %shr233 = lshr i32 %add232, 2, !dbg !1772
  %conv234 = trunc nuw i32 %shr233 to i8, !dbg !1773
  %arrayidx235 = getelementptr inbounds i8, ptr %edge, i64 23, !dbg !1774
  store i8 %conv234, ptr %arrayidx235, align 1, !dbg !1775
  %and236 = and i32 %i_filters, 4, !dbg !1776
  %tobool237.not = icmp eq i32 %and236, 0, !dbg !1776
  br i1 %tobool237.not, label %if.end350, label %if.else, !dbg !1778

cond.end229.thread:                               ; preds = %if.then116
  %arrayidx224 = getelementptr inbounds i8, ptr %src, i64 -24, !dbg !1779
  %46 = load i8, ptr %arrayidx224, align 1, !dbg !1779
  %conv225 = zext i8 %46 to i32, !dbg !1779
  %add231461 = add nuw nsw i32 %add221, 2, !dbg !1770
  %add232462 = add nuw nsw i32 %add231461, %conv225, !dbg !1771
  %shr233463 = lshr i32 %add232462, 2, !dbg !1772
  %conv234464 = trunc nuw i32 %shr233463 to i8, !dbg !1773
  %arrayidx235465 = getelementptr inbounds i8, ptr %edge, i64 23, !dbg !1774
  store i8 %conv234464, ptr %arrayidx235465, align 1, !dbg !1775
  %and236466 = and i32 %i_filters, 4, !dbg !1776
  %tobool237.not467 = icmp eq i32 %and236466, 0, !dbg !1776
  br i1 %tobool237.not467, label %if.end350, label %if.then240, !dbg !1778

if.then240:                                       ; preds = %cond.end229.thread
  %47 = load i8, ptr %arrayidx209, align 1, !dbg !1780
  %conv242 = zext i8 %47 to i16, !dbg !1780
  %48 = load i8, ptr %arrayidx224, align 1, !dbg !1780
  %conv244 = zext i8 %48 to i16, !dbg !1780
  %mul245 = shl nuw nsw i16 %conv244, 1, !dbg !1780
  %arrayidx247 = getelementptr inbounds i8, ptr %src, i64 -23, !dbg !1780
  %49 = load i8, ptr %arrayidx247, align 1, !dbg !1780
  %conv248 = zext i8 %49 to i16, !dbg !1780
  %add246 = add nuw nsw i16 %conv242, 2, !dbg !1780
  %add249 = add nuw nsw i16 %add246, %mul245, !dbg !1780
  %add250 = add nuw nsw i16 %add249, %conv248, !dbg !1780
  %shr251 = lshr i16 %add250, 2, !dbg !1780
  %conv252 = trunc nuw i16 %shr251 to i8, !dbg !1780
  %arrayidx253 = getelementptr inbounds i8, ptr %edge, i64 24, !dbg !1780
  store i8 %conv252, ptr %arrayidx253, align 1, !dbg !1780
  %50 = load i8, ptr %arrayidx224, align 1, !dbg !1784
  %conv255 = zext i8 %50 to i16, !dbg !1784
  %51 = load i8, ptr %arrayidx247, align 1, !dbg !1784
  %conv257 = zext i8 %51 to i16, !dbg !1784
  %mul258 = shl nuw nsw i16 %conv257, 1, !dbg !1784
  %arrayidx260 = getelementptr inbounds i8, ptr %src, i64 -22, !dbg !1784
  %52 = load i8, ptr %arrayidx260, align 1, !dbg !1784
  %conv261 = zext i8 %52 to i16, !dbg !1784
  %add259 = add nuw nsw i16 %conv255, 2, !dbg !1784
  %add262 = add nuw nsw i16 %add259, %mul258, !dbg !1784
  %add263 = add nuw nsw i16 %add262, %conv261, !dbg !1784
  %shr264 = lshr i16 %add263, 2, !dbg !1784
  %conv265 = trunc nuw i16 %shr264 to i8, !dbg !1784
  %arrayidx266 = getelementptr inbounds i8, ptr %edge, i64 25, !dbg !1784
  store i8 %conv265, ptr %arrayidx266, align 1, !dbg !1784
  %53 = load i8, ptr %arrayidx247, align 1, !dbg !1785
  %conv268 = zext i8 %53 to i16, !dbg !1785
  %54 = load i8, ptr %arrayidx260, align 1, !dbg !1785
  %conv270 = zext i8 %54 to i16, !dbg !1785
  %mul271 = shl nuw nsw i16 %conv270, 1, !dbg !1785
  %arrayidx273 = getelementptr inbounds i8, ptr %src, i64 -21, !dbg !1785
  %55 = load i8, ptr %arrayidx273, align 1, !dbg !1785
  %conv274 = zext i8 %55 to i16, !dbg !1785
  %add272 = add nuw nsw i16 %conv268, 2, !dbg !1785
  %add275 = add nuw nsw i16 %add272, %mul271, !dbg !1785
  %add276 = add nuw nsw i16 %add275, %conv274, !dbg !1785
  %shr277 = lshr i16 %add276, 2, !dbg !1785
  %conv278 = trunc nuw i16 %shr277 to i8, !dbg !1785
  %arrayidx279 = getelementptr inbounds i8, ptr %edge, i64 26, !dbg !1785
  store i8 %conv278, ptr %arrayidx279, align 1, !dbg !1785
  %56 = load i8, ptr %arrayidx260, align 1, !dbg !1786
  %conv281 = zext i8 %56 to i16, !dbg !1786
  %57 = load i8, ptr %arrayidx273, align 1, !dbg !1786
  %conv283 = zext i8 %57 to i16, !dbg !1786
  %mul284 = shl nuw nsw i16 %conv283, 1, !dbg !1786
  %arrayidx286 = getelementptr inbounds i8, ptr %src, i64 -20, !dbg !1786
  %58 = load i8, ptr %arrayidx286, align 1, !dbg !1786
  %conv287 = zext i8 %58 to i16, !dbg !1786
  %add285 = add nuw nsw i16 %conv281, 2, !dbg !1786
  %add288 = add nuw nsw i16 %add285, %mul284, !dbg !1786
  %add289 = add nuw nsw i16 %add288, %conv287, !dbg !1786
  %shr290 = lshr i16 %add289, 2, !dbg !1786
  %conv291 = trunc nuw i16 %shr290 to i8, !dbg !1786
  %arrayidx292 = getelementptr inbounds i8, ptr %edge, i64 27, !dbg !1786
  store i8 %conv291, ptr %arrayidx292, align 1, !dbg !1786
  %59 = load i8, ptr %arrayidx273, align 1, !dbg !1787
  %conv294 = zext i8 %59 to i16, !dbg !1787
  %60 = load i8, ptr %arrayidx286, align 1, !dbg !1787
  %conv296 = zext i8 %60 to i16, !dbg !1787
  %mul297 = shl nuw nsw i16 %conv296, 1, !dbg !1787
  %arrayidx299 = getelementptr inbounds i8, ptr %src, i64 -19, !dbg !1787
  %61 = load i8, ptr %arrayidx299, align 1, !dbg !1787
  %conv300 = zext i8 %61 to i16, !dbg !1787
  %add298 = add nuw nsw i16 %conv294, 2, !dbg !1787
  %add301 = add nuw nsw i16 %add298, %mul297, !dbg !1787
  %add302 = add nuw nsw i16 %add301, %conv300, !dbg !1787
  %shr303 = lshr i16 %add302, 2, !dbg !1787
  %conv304 = trunc nuw i16 %shr303 to i8, !dbg !1787
  %arrayidx305 = getelementptr inbounds i8, ptr %edge, i64 28, !dbg !1787
  store i8 %conv304, ptr %arrayidx305, align 1, !dbg !1787
  %62 = load i8, ptr %arrayidx286, align 1, !dbg !1788
  %conv307 = zext i8 %62 to i16, !dbg !1788
  %63 = load i8, ptr %arrayidx299, align 1, !dbg !1788
  %conv309 = zext i8 %63 to i16, !dbg !1788
  %mul310 = shl nuw nsw i16 %conv309, 1, !dbg !1788
  %arrayidx312 = getelementptr inbounds i8, ptr %src, i64 -18, !dbg !1788
  %64 = load i8, ptr %arrayidx312, align 1, !dbg !1788
  %conv313 = zext i8 %64 to i16, !dbg !1788
  %add311 = add nuw nsw i16 %conv307, 2, !dbg !1788
  %add314 = add nuw nsw i16 %add311, %mul310, !dbg !1788
  %add315 = add nuw nsw i16 %add314, %conv313, !dbg !1788
  %shr316 = lshr i16 %add315, 2, !dbg !1788
  %conv317 = trunc nuw i16 %shr316 to i8, !dbg !1788
  %arrayidx318 = getelementptr inbounds i8, ptr %edge, i64 29, !dbg !1788
  store i8 %conv317, ptr %arrayidx318, align 1, !dbg !1788
  %65 = load i8, ptr %arrayidx299, align 1, !dbg !1789
  %conv320 = zext i8 %65 to i16, !dbg !1789
  %66 = load i8, ptr %arrayidx312, align 1, !dbg !1789
  %conv322 = zext i8 %66 to i16, !dbg !1789
  %mul323 = shl nuw nsw i16 %conv322, 1, !dbg !1789
  %arrayidx325 = getelementptr inbounds i8, ptr %src, i64 -17, !dbg !1789
  %67 = load i8, ptr %arrayidx325, align 1, !dbg !1789
  %conv326 = zext i8 %67 to i16, !dbg !1789
  %add324 = add nuw nsw i16 %conv320, 2, !dbg !1789
  %add327 = add nuw nsw i16 %add324, %mul323, !dbg !1789
  %add328 = add nuw nsw i16 %add327, %conv326, !dbg !1789
  %shr329 = lshr i16 %add328, 2, !dbg !1789
  %conv330 = trunc nuw i16 %shr329 to i8, !dbg !1789
  %arrayidx331 = getelementptr inbounds i8, ptr %edge, i64 30, !dbg !1789
  store i8 %conv330, ptr %arrayidx331, align 1, !dbg !1789
  %68 = load i8, ptr %arrayidx312, align 1, !dbg !1790
  %conv333 = zext i8 %68 to i16, !dbg !1790
  %69 = load i8, ptr %arrayidx325, align 1, !dbg !1791
  %conv335 = zext i8 %69 to i16, !dbg !1791
  %mul336 = mul nuw nsw i16 %conv335, 3, !dbg !1792
  %add337 = add nuw nsw i16 %conv333, 2, !dbg !1793
  %add338 = add nuw nsw i16 %add337, %mul336, !dbg !1794
  %shr339 = lshr i16 %add338, 2, !dbg !1795
  %conv340 = trunc nuw i16 %shr339 to i8, !dbg !1796
  %arrayidx341 = getelementptr inbounds i8, ptr %edge, i64 32, !dbg !1797
  store i8 %conv340, ptr %arrayidx341, align 1, !dbg !1798
  br label %if.end350.sink.split, !dbg !1799

if.else:                                          ; preds = %cond.end229
  %70 = load i8, ptr %arrayidx209, align 1, !dbg !1800
  %conv344 = zext i8 %70 to i64, !dbg !1800
  %mul345 = mul nuw i64 %conv344, 72340172838076673, !dbg !1802
  %add.ptr = getelementptr inbounds i8, ptr %edge, i64 24, !dbg !1803
  store i64 %mul345, ptr %add.ptr, align 8, !dbg !1804
  %71 = load i8, ptr %arrayidx209, align 1, !dbg !1805
  br label %if.end350.sink.split

if.end350.sink.split:                             ; preds = %if.then240, %if.else
  %.sink468 = phi i64 [ 32, %if.else ], [ 31, %if.then240 ]
  %.sink = phi i8 [ %71, %if.else ], [ %conv340, %if.then240 ]
  %arrayidx347 = getelementptr inbounds i8, ptr %edge, i64 %.sink468, !dbg !1806
  store i8 %.sink, ptr %arrayidx347, align 1, !dbg !1806
  br label %if.end350, !dbg !1807

if.end350:                                        ; preds = %if.end350.sink.split, %cond.end229.thread, %cond.end229, %if.end
  ret void, !dbg !1807
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_4x4_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf) local_unnamed_addr #0 !dbg !1808 {
entry:
    #dbg_value(i32 %cpu, !1810, !DIExpression(), !1812)
    #dbg_value(ptr %pf, !1811, !DIExpression(), !1812)
  store ptr @predict_4x4_v, ptr %pf, align 8, !dbg !1813
  %arrayidx1 = getelementptr inbounds i8, ptr %pf, i64 8, !dbg !1814
  store ptr @predict_4x4_h, ptr %arrayidx1, align 8, !dbg !1815
  %arrayidx2 = getelementptr inbounds i8, ptr %pf, i64 16, !dbg !1816
  store ptr @predict_4x4_dc, ptr %arrayidx2, align 8, !dbg !1817
  %arrayidx3 = getelementptr inbounds i8, ptr %pf, i64 24, !dbg !1818
  store ptr @predict_4x4_ddl, ptr %arrayidx3, align 8, !dbg !1819
  %arrayidx4 = getelementptr inbounds i8, ptr %pf, i64 32, !dbg !1820
  store ptr @predict_4x4_ddr, ptr %arrayidx4, align 8, !dbg !1821
  %arrayidx5 = getelementptr inbounds i8, ptr %pf, i64 40, !dbg !1822
  store ptr @predict_4x4_vr, ptr %arrayidx5, align 8, !dbg !1823
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 48, !dbg !1824
  store ptr @predict_4x4_hd, ptr %arrayidx6, align 8, !dbg !1825
  %arrayidx7 = getelementptr inbounds i8, ptr %pf, i64 56, !dbg !1826
  store ptr @predict_4x4_vl, ptr %arrayidx7, align 8, !dbg !1827
  %arrayidx8 = getelementptr inbounds i8, ptr %pf, i64 64, !dbg !1828
  store ptr @predict_4x4_hu, ptr %arrayidx8, align 8, !dbg !1829
  %arrayidx9 = getelementptr inbounds i8, ptr %pf, i64 72, !dbg !1830
  store ptr @predict_4x4_dc_left, ptr %arrayidx9, align 8, !dbg !1831
  %arrayidx10 = getelementptr inbounds i8, ptr %pf, i64 80, !dbg !1832
  store ptr @predict_4x4_dc_top, ptr %arrayidx10, align 8, !dbg !1833
  %arrayidx11 = getelementptr inbounds i8, ptr %pf, i64 88, !dbg !1834
  store ptr @predict_4x4_dc_128, ptr %arrayidx11, align 8, !dbg !1835
  ret void, !dbg !1836
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_v(ptr nocapture noundef %src) #1 !dbg !1837 {
entry:
    #dbg_value(ptr %src, !1839, !DIExpression(), !1840)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !1841
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1841
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !1841
  store i32 %0, ptr %arrayidx1, align 4, !dbg !1841
  %arrayidx2 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !1841
  store i32 %0, ptr %arrayidx2, align 4, !dbg !1841
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1841
  store i32 %0, ptr %arrayidx3, align 4, !dbg !1841
  store i32 %0, ptr %src, align 4, !dbg !1841
  ret void, !dbg !1842
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_h(ptr nocapture noundef %src) #1 !dbg !1843 {
entry:
    #dbg_value(ptr %src, !1845, !DIExpression(), !1846)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -1, !dbg !1847
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1847
  %conv = zext i8 %0 to i32, !dbg !1847
  %mul = mul nuw nsw i32 %conv, 16843009, !dbg !1848
  store i32 %mul, ptr %src, align 4, !dbg !1849
  %arrayidx2 = getelementptr inbounds i8, ptr %src, i64 31, !dbg !1850
  %1 = load i8, ptr %arrayidx2, align 1, !dbg !1850
  %conv3 = zext i8 %1 to i32, !dbg !1850
  %mul4 = mul nuw nsw i32 %conv3, 16843009, !dbg !1851
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1852
  store i32 %mul4, ptr %arrayidx5, align 4, !dbg !1853
  %arrayidx6 = getelementptr inbounds i8, ptr %src, i64 63, !dbg !1854
  %2 = load i8, ptr %arrayidx6, align 1, !dbg !1854
  %conv7 = zext i8 %2 to i32, !dbg !1854
  %mul8 = mul nuw nsw i32 %conv7, 16843009, !dbg !1855
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !1856
  store i32 %mul8, ptr %arrayidx9, align 4, !dbg !1857
  %arrayidx10 = getelementptr inbounds i8, ptr %src, i64 95, !dbg !1858
  %3 = load i8, ptr %arrayidx10, align 1, !dbg !1858
  %conv11 = zext i8 %3 to i32, !dbg !1858
  %mul12 = mul nuw nsw i32 %conv11, 16843009, !dbg !1859
  %arrayidx13 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !1860
  store i32 %mul12, ptr %arrayidx13, align 4, !dbg !1861
  ret void, !dbg !1862
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc(ptr nocapture noundef %src) #1 !dbg !1863 {
entry:
    #dbg_value(ptr %src, !1865, !DIExpression(), !1867)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -1, !dbg !1868
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1868
  %conv = zext i8 %0 to i32, !dbg !1868
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 31, !dbg !1869
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !1869
  %conv2 = zext i8 %1 to i32, !dbg !1869
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 63, !dbg !1870
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !1870
  %conv4 = zext i8 %2 to i32, !dbg !1870
  %arrayidx6 = getelementptr inbounds i8, ptr %src, i64 95, !dbg !1871
  %3 = load i8, ptr %arrayidx6, align 1, !dbg !1871
  %conv7 = zext i8 %3 to i32, !dbg !1871
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !1872
  %4 = load i8, ptr %arrayidx9, align 1, !dbg !1872
  %conv10 = zext i8 %4 to i32, !dbg !1872
  %arrayidx12 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !1873
  %5 = load i8, ptr %arrayidx12, align 1, !dbg !1873
  %conv13 = zext i8 %5 to i32, !dbg !1873
  %arrayidx15 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !1874
  %6 = load i8, ptr %arrayidx15, align 1, !dbg !1874
  %conv16 = zext i8 %6 to i32, !dbg !1874
  %arrayidx18 = getelementptr inbounds i8, ptr %src, i64 -29, !dbg !1875
  %7 = load i8, ptr %arrayidx18, align 1, !dbg !1875
  %conv19 = zext i8 %7 to i32, !dbg !1875
  %add = add nuw nsw i32 %conv, 4, !dbg !1876
  %add5 = add nuw nsw i32 %add, %conv2, !dbg !1877
  %add8 = add nuw nsw i32 %add5, %conv4, !dbg !1878
  %add11 = add nuw nsw i32 %add8, %conv7, !dbg !1879
  %add14 = add nuw nsw i32 %add11, %conv10, !dbg !1880
  %add17 = add nuw nsw i32 %add14, %conv13, !dbg !1881
  %add20 = add nuw nsw i32 %add17, %conv16, !dbg !1882
  %add21 = add nuw nsw i32 %add20, %conv19, !dbg !1883
  %shr = lshr i32 %add21, 3, !dbg !1884
  %mul = mul nuw nsw i32 %shr, 16843009, !dbg !1885
    #dbg_value(i32 %mul, !1866, !DIExpression(), !1867)
  %arrayidx22 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !1886
  store i32 %mul, ptr %arrayidx22, align 4, !dbg !1886
  %arrayidx23 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !1886
  store i32 %mul, ptr %arrayidx23, align 4, !dbg !1886
  %arrayidx24 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1886
  store i32 %mul, ptr %arrayidx24, align 4, !dbg !1886
  store i32 %mul, ptr %src, align 4, !dbg !1886
  ret void, !dbg !1887
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_ddl(ptr nocapture noundef %src) #1 !dbg !1888 {
entry:
    #dbg_value(ptr %src, !1890, !DIExpression(), !1899)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !1900
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1900
  %conv = zext i8 %0 to i32, !dbg !1900
    #dbg_value(i32 %conv, !1891, !DIExpression(), !1899)
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !1900
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !1900
  %conv2 = zext i8 %1 to i32, !dbg !1900
    #dbg_value(i32 %conv2, !1892, !DIExpression(), !1899)
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !1900
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !1900
  %conv4 = zext i8 %2 to i32, !dbg !1900
    #dbg_value(i32 %conv4, !1893, !DIExpression(), !1899)
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 -29, !dbg !1900
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !1900
  %conv6 = zext i8 %3 to i32, !dbg !1900
    #dbg_value(i32 %conv6, !1894, !DIExpression(), !1899)
  %arrayidx7 = getelementptr inbounds i8, ptr %src, i64 -28, !dbg !1901
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !1901
  %conv8 = zext i8 %4 to i32, !dbg !1901
    #dbg_value(i32 %conv8, !1895, !DIExpression(), !1899)
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 -27, !dbg !1901
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !1901
  %conv10 = zext i8 %5 to i32, !dbg !1901
    #dbg_value(i32 %conv10, !1896, !DIExpression(), !1899)
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 -26, !dbg !1901
  %6 = load i8, ptr %arrayidx11, align 1, !dbg !1901
  %conv12 = zext i8 %6 to i32, !dbg !1901
    #dbg_value(i32 %conv12, !1897, !DIExpression(), !1899)
  %arrayidx13 = getelementptr inbounds i8, ptr %src, i64 -25, !dbg !1901
  %7 = load i8, ptr %arrayidx13, align 1, !dbg !1901
  %conv14 = zext i8 %7 to i32, !dbg !1901
    #dbg_value(i32 %conv14, !1898, !DIExpression(), !1899)
  %mul = shl nuw nsw i32 %conv2, 1, !dbg !1902
  %add = add nuw nsw i32 %conv4, 2, !dbg !1902
  %add15 = add nuw nsw i32 %add, %conv, !dbg !1902
  %add16 = add nuw nsw i32 %add15, %mul, !dbg !1902
  %shr = lshr i32 %add16, 2, !dbg !1902
  %conv17 = trunc nuw i32 %shr to i8, !dbg !1902
  store i8 %conv17, ptr %src, align 1, !dbg !1903
  %mul19 = shl nuw nsw i32 %conv4, 1, !dbg !1904
  %add20 = add nuw nsw i32 %conv6, 2, !dbg !1904
  %add21 = add nuw nsw i32 %add20, %conv2, !dbg !1904
  %add22 = add nuw nsw i32 %add21, %mul19, !dbg !1904
  %shr23 = lshr i32 %add22, 2, !dbg !1904
  %conv24 = trunc nuw i32 %shr23 to i8, !dbg !1904
  %arrayidx25 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1905
  store i8 %conv24, ptr %arrayidx25, align 1, !dbg !1906
  %arrayidx26 = getelementptr inbounds i8, ptr %src, i64 1, !dbg !1907
  store i8 %conv24, ptr %arrayidx26, align 1, !dbg !1908
  %mul27 = shl nuw nsw i32 %conv6, 1, !dbg !1909
  %add29 = add nuw nsw i32 %add, %mul27, !dbg !1909
  %add30 = add nuw nsw i32 %add29, %conv8, !dbg !1909
  %shr31 = lshr i32 %add30, 2, !dbg !1909
  %conv32 = trunc nuw i32 %shr31 to i8, !dbg !1909
  %arrayidx33 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !1910
  store i8 %conv32, ptr %arrayidx33, align 1, !dbg !1911
  %arrayidx34 = getelementptr inbounds i8, ptr %src, i64 33, !dbg !1912
  store i8 %conv32, ptr %arrayidx34, align 1, !dbg !1913
  %arrayidx35 = getelementptr inbounds i8, ptr %src, i64 2, !dbg !1914
  store i8 %conv32, ptr %arrayidx35, align 1, !dbg !1915
  %mul36 = shl nuw nsw i32 %conv8, 1, !dbg !1916
  %add38 = add nuw nsw i32 %add20, %mul36, !dbg !1916
  %add39 = add nuw nsw i32 %add38, %conv10, !dbg !1916
  %shr40 = lshr i32 %add39, 2, !dbg !1916
  %conv41 = trunc nuw i32 %shr40 to i8, !dbg !1916
  %arrayidx42 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !1917
  store i8 %conv41, ptr %arrayidx42, align 1, !dbg !1918
  %arrayidx43 = getelementptr inbounds i8, ptr %src, i64 65, !dbg !1919
  store i8 %conv41, ptr %arrayidx43, align 1, !dbg !1920
  %arrayidx44 = getelementptr inbounds i8, ptr %src, i64 34, !dbg !1921
  store i8 %conv41, ptr %arrayidx44, align 1, !dbg !1922
  %arrayidx45 = getelementptr inbounds i8, ptr %src, i64 3, !dbg !1923
  store i8 %conv41, ptr %arrayidx45, align 1, !dbg !1924
  %mul46 = shl nuw nsw i32 %conv10, 1, !dbg !1925
  %add47 = add nuw nsw i32 %conv8, 2, !dbg !1925
  %add48 = add nuw nsw i32 %add47, %mul46, !dbg !1925
  %add49 = add nuw nsw i32 %add48, %conv12, !dbg !1925
  %shr50 = lshr i32 %add49, 2, !dbg !1925
  %conv51 = trunc nuw i32 %shr50 to i8, !dbg !1925
  %arrayidx52 = getelementptr inbounds i8, ptr %src, i64 97, !dbg !1926
  store i8 %conv51, ptr %arrayidx52, align 1, !dbg !1927
  %arrayidx53 = getelementptr inbounds i8, ptr %src, i64 66, !dbg !1928
  store i8 %conv51, ptr %arrayidx53, align 1, !dbg !1929
  %arrayidx54 = getelementptr inbounds i8, ptr %src, i64 35, !dbg !1930
  store i8 %conv51, ptr %arrayidx54, align 1, !dbg !1931
  %mul55 = shl nuw nsw i32 %conv12, 1, !dbg !1932
  %add56 = add nuw nsw i32 %conv10, 2, !dbg !1932
  %add57 = add nuw nsw i32 %add56, %mul55, !dbg !1932
  %add58 = add nuw nsw i32 %add57, %conv14, !dbg !1932
  %shr59 = lshr i32 %add58, 2, !dbg !1932
  %conv60 = trunc nuw i32 %shr59 to i8, !dbg !1932
  %arrayidx61 = getelementptr inbounds i8, ptr %src, i64 98, !dbg !1933
  store i8 %conv60, ptr %arrayidx61, align 1, !dbg !1934
  %arrayidx62 = getelementptr inbounds i8, ptr %src, i64 67, !dbg !1935
  store i8 %conv60, ptr %arrayidx62, align 1, !dbg !1936
  %mul63 = shl nuw nsw i32 %conv14, 1, !dbg !1937
  %add64 = add nuw nsw i32 %conv12, 2, !dbg !1937
  %add65 = add nuw nsw i32 %add64, %conv14, !dbg !1937
  %add66 = add nuw nsw i32 %add65, %mul63, !dbg !1937
  %shr67 = lshr i32 %add66, 2, !dbg !1937
  %conv68 = trunc nuw i32 %shr67 to i8, !dbg !1937
  %arrayidx69 = getelementptr inbounds i8, ptr %src, i64 99, !dbg !1938
  store i8 %conv68, ptr %arrayidx69, align 1, !dbg !1939
  ret void, !dbg !1940
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_ddr(ptr nocapture noundef %src) #1 !dbg !1941 {
entry:
    #dbg_value(ptr %src, !1943, !DIExpression(), !1953)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -33, !dbg !1954
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1954
  %conv = zext i8 %0 to i32, !dbg !1954
    #dbg_value(i32 %conv, !1944, !DIExpression(), !1953)
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -1, !dbg !1955
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !1955
  %conv2 = zext i8 %1 to i32, !dbg !1955
    #dbg_value(i32 %conv2, !1945, !DIExpression(), !1953)
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 31, !dbg !1955
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !1955
  %conv4 = zext i8 %2 to i32, !dbg !1955
    #dbg_value(i32 %conv4, !1946, !DIExpression(), !1953)
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 63, !dbg !1955
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !1955
  %conv6 = zext i8 %3 to i32, !dbg !1955
    #dbg_value(i32 %conv6, !1947, !DIExpression(), !1953)
  %arrayidx7 = getelementptr inbounds i8, ptr %src, i64 95, !dbg !1955
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !1955
  %conv8 = zext i8 %4 to i32, !dbg !1955
    #dbg_value(i32 %conv8, !1948, !DIExpression(), !1953)
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !1956
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !1956
  %conv10 = zext i8 %5 to i32, !dbg !1956
    #dbg_value(i32 %conv10, !1949, !DIExpression(), !1953)
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !1956
  %6 = load i8, ptr %arrayidx11, align 1, !dbg !1956
  %conv12 = zext i8 %6 to i32, !dbg !1956
    #dbg_value(i32 %conv12, !1950, !DIExpression(), !1953)
  %arrayidx13 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !1956
  %7 = load i8, ptr %arrayidx13, align 1, !dbg !1956
  %conv14 = zext i8 %7 to i32, !dbg !1956
    #dbg_value(i32 %conv14, !1951, !DIExpression(), !1953)
  %arrayidx15 = getelementptr inbounds i8, ptr %src, i64 -29, !dbg !1956
  %8 = load i8, ptr %arrayidx15, align 1, !dbg !1956
  %conv16 = zext i8 %8 to i32, !dbg !1956
    #dbg_value(i32 %conv16, !1952, !DIExpression(), !1953)
  %mul = shl nuw nsw i32 %conv14, 1, !dbg !1957
  %add = add nuw nsw i32 %conv12, 2, !dbg !1957
  %add17 = add nuw nsw i32 %add, %conv16, !dbg !1957
  %add18 = add nuw nsw i32 %add17, %mul, !dbg !1957
  %shr = lshr i32 %add18, 2, !dbg !1957
  %conv19 = trunc nuw i32 %shr to i8, !dbg !1957
  %arrayidx20 = getelementptr inbounds i8, ptr %src, i64 3, !dbg !1958
  store i8 %conv19, ptr %arrayidx20, align 1, !dbg !1959
  %mul21 = shl nuw nsw i32 %conv12, 1, !dbg !1960
  %add22 = add nuw nsw i32 %conv10, 2, !dbg !1960
  %add23 = add nuw nsw i32 %add22, %conv14, !dbg !1960
  %add24 = add nuw nsw i32 %add23, %mul21, !dbg !1960
  %shr25 = lshr i32 %add24, 2, !dbg !1960
  %conv26 = trunc nuw i32 %shr25 to i8, !dbg !1960
  %arrayidx27 = getelementptr inbounds i8, ptr %src, i64 35, !dbg !1961
  store i8 %conv26, ptr %arrayidx27, align 1, !dbg !1962
  %arrayidx28 = getelementptr inbounds i8, ptr %src, i64 2, !dbg !1963
  store i8 %conv26, ptr %arrayidx28, align 1, !dbg !1964
  %mul29 = shl nuw nsw i32 %conv10, 1, !dbg !1965
  %add30 = add nuw nsw i32 %conv, 2, !dbg !1965
  %add31 = add nuw nsw i32 %add30, %conv12, !dbg !1965
  %add32 = add nuw nsw i32 %add31, %mul29, !dbg !1965
  %shr33 = lshr i32 %add32, 2, !dbg !1965
  %conv34 = trunc nuw i32 %shr33 to i8, !dbg !1965
  %arrayidx35 = getelementptr inbounds i8, ptr %src, i64 67, !dbg !1966
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !1967
  %arrayidx36 = getelementptr inbounds i8, ptr %src, i64 34, !dbg !1968
  store i8 %conv34, ptr %arrayidx36, align 1, !dbg !1969
  %arrayidx37 = getelementptr inbounds i8, ptr %src, i64 1, !dbg !1970
  store i8 %conv34, ptr %arrayidx37, align 1, !dbg !1971
  %mul38 = shl nuw nsw i32 %conv, 1, !dbg !1972
  %add39 = add nuw nsw i32 %conv2, 2, !dbg !1972
  %add40 = add nuw nsw i32 %add39, %mul38, !dbg !1972
  %add41 = add nuw nsw i32 %add40, %conv10, !dbg !1972
  %shr42 = lshr i32 %add41, 2, !dbg !1972
  %conv43 = trunc nuw i32 %shr42 to i8, !dbg !1972
  %arrayidx44 = getelementptr inbounds i8, ptr %src, i64 99, !dbg !1973
  store i8 %conv43, ptr %arrayidx44, align 1, !dbg !1974
  %arrayidx45 = getelementptr inbounds i8, ptr %src, i64 66, !dbg !1975
  store i8 %conv43, ptr %arrayidx45, align 1, !dbg !1976
  %arrayidx46 = getelementptr inbounds i8, ptr %src, i64 33, !dbg !1977
  store i8 %conv43, ptr %arrayidx46, align 1, !dbg !1978
  store i8 %conv43, ptr %src, align 1, !dbg !1979
  %mul48 = shl nuw nsw i32 %conv2, 1, !dbg !1980
  %add50 = add nuw nsw i32 %add30, %mul48, !dbg !1980
  %add51 = add nuw nsw i32 %add50, %conv4, !dbg !1980
  %shr52 = lshr i32 %add51, 2, !dbg !1980
  %conv53 = trunc nuw i32 %shr52 to i8, !dbg !1980
  %arrayidx54 = getelementptr inbounds i8, ptr %src, i64 98, !dbg !1981
  store i8 %conv53, ptr %arrayidx54, align 1, !dbg !1982
  %arrayidx55 = getelementptr inbounds i8, ptr %src, i64 65, !dbg !1983
  store i8 %conv53, ptr %arrayidx55, align 1, !dbg !1984
  %arrayidx56 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1985
  store i8 %conv53, ptr %arrayidx56, align 1, !dbg !1986
  %mul57 = shl nuw nsw i32 %conv4, 1, !dbg !1987
  %add59 = add nuw nsw i32 %add39, %mul57, !dbg !1987
  %add60 = add nuw nsw i32 %add59, %conv6, !dbg !1987
  %shr61 = lshr i32 %add60, 2, !dbg !1987
  %conv62 = trunc nuw i32 %shr61 to i8, !dbg !1987
  %arrayidx63 = getelementptr inbounds i8, ptr %src, i64 97, !dbg !1988
  store i8 %conv62, ptr %arrayidx63, align 1, !dbg !1989
  %arrayidx64 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !1990
  store i8 %conv62, ptr %arrayidx64, align 1, !dbg !1991
  %mul65 = shl nuw nsw i32 %conv6, 1, !dbg !1992
  %add66 = add nuw nsw i32 %conv4, 2, !dbg !1992
  %add67 = add nuw nsw i32 %add66, %mul65, !dbg !1992
  %add68 = add nuw nsw i32 %add67, %conv8, !dbg !1992
  %shr69 = lshr i32 %add68, 2, !dbg !1992
  %conv70 = trunc nuw i32 %shr69 to i8, !dbg !1992
  %arrayidx71 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !1993
  store i8 %conv70, ptr %arrayidx71, align 1, !dbg !1994
  ret void, !dbg !1995
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_vr(ptr nocapture noundef %src) #1 !dbg !1996 {
entry:
    #dbg_value(ptr %src, !1998, !DIExpression(), !2008)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -33, !dbg !2009
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2009
  %conv = zext i8 %0 to i32, !dbg !2009
    #dbg_value(i32 %conv, !1999, !DIExpression(), !2008)
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -1, !dbg !2010
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !2010
  %conv2 = zext i8 %1 to i32, !dbg !2010
    #dbg_value(i32 %conv2, !2000, !DIExpression(), !2008)
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 31, !dbg !2010
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !2010
  %conv4 = zext i8 %2 to i32, !dbg !2010
    #dbg_value(i32 %conv4, !2001, !DIExpression(), !2008)
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 63, !dbg !2010
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !2010
  %conv6 = zext i8 %3 to i32, !dbg !2010
    #dbg_value(i32 %conv6, !2002, !DIExpression(), !2008)
    #dbg_value(i8 poison, !2003, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2008)
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !2011
  %4 = load i8, ptr %arrayidx9, align 1, !dbg !2011
  %conv10 = zext i8 %4 to i32, !dbg !2011
    #dbg_value(i32 %conv10, !2004, !DIExpression(), !2008)
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !2011
  %5 = load i8, ptr %arrayidx11, align 1, !dbg !2011
  %conv12 = zext i8 %5 to i32, !dbg !2011
    #dbg_value(i32 %conv12, !2005, !DIExpression(), !2008)
  %arrayidx13 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !2011
  %6 = load i8, ptr %arrayidx13, align 1, !dbg !2011
  %conv14 = zext i8 %6 to i32, !dbg !2011
    #dbg_value(i32 %conv14, !2006, !DIExpression(), !2008)
  %arrayidx15 = getelementptr inbounds i8, ptr %src, i64 -29, !dbg !2011
  %7 = load i8, ptr %arrayidx15, align 1, !dbg !2011
  %conv16 = zext i8 %7 to i32, !dbg !2011
    #dbg_value(i32 %conv16, !2007, !DIExpression(), !2008)
  %mul = shl nuw nsw i32 %conv4, 1, !dbg !2012
  %add = add nuw nsw i32 %conv2, 2, !dbg !2012
  %add17 = add nuw nsw i32 %add, %conv6, !dbg !2012
  %add18 = add nuw nsw i32 %add17, %mul, !dbg !2012
  %shr = lshr i32 %add18, 2, !dbg !2012
  %conv19 = trunc nuw i32 %shr to i8, !dbg !2012
  %arrayidx20 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !2013
  store i8 %conv19, ptr %arrayidx20, align 1, !dbg !2014
  %mul21 = shl nuw nsw i32 %conv2, 1, !dbg !2015
  %add22 = add nuw nsw i32 %conv, 2, !dbg !2015
  %add23 = add nuw nsw i32 %add22, %conv4, !dbg !2015
  %add24 = add nuw nsw i32 %add23, %mul21, !dbg !2015
  %shr25 = lshr i32 %add24, 2, !dbg !2015
  %conv26 = trunc nuw i32 %shr25 to i8, !dbg !2015
  %arrayidx27 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !2016
  store i8 %conv26, ptr %arrayidx27, align 1, !dbg !2017
  %mul28 = shl nuw nsw i32 %conv, 1, !dbg !2018
  %add30 = add nuw nsw i32 %add, %mul28, !dbg !2018
  %add31 = add nuw nsw i32 %add30, %conv10, !dbg !2018
  %shr32 = lshr i32 %add31, 2, !dbg !2018
  %conv33 = trunc nuw i32 %shr32 to i8, !dbg !2018
  %arrayidx34 = getelementptr inbounds i8, ptr %src, i64 97, !dbg !2019
  store i8 %conv33, ptr %arrayidx34, align 1, !dbg !2020
  %arrayidx35 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !2021
  store i8 %conv33, ptr %arrayidx35, align 1, !dbg !2022
  %add36 = add nuw nsw i32 %conv10, 1, !dbg !2023
  %add37 = add nuw nsw i32 %add36, %conv, !dbg !2023
  %shr38 = lshr i32 %add37, 1, !dbg !2023
  %conv39 = trunc nuw i32 %shr38 to i8, !dbg !2023
  %arrayidx40 = getelementptr inbounds i8, ptr %src, i64 65, !dbg !2024
  store i8 %conv39, ptr %arrayidx40, align 1, !dbg !2025
  store i8 %conv39, ptr %src, align 1, !dbg !2026
  %mul42 = shl nuw nsw i32 %conv10, 1, !dbg !2027
  %add44 = add nuw nsw i32 %add22, %mul42, !dbg !2027
  %add45 = add nuw nsw i32 %add44, %conv12, !dbg !2027
  %shr46 = lshr i32 %add45, 2, !dbg !2027
  %conv47 = trunc nuw i32 %shr46 to i8, !dbg !2027
  %arrayidx48 = getelementptr inbounds i8, ptr %src, i64 98, !dbg !2028
  store i8 %conv47, ptr %arrayidx48, align 1, !dbg !2029
  %arrayidx49 = getelementptr inbounds i8, ptr %src, i64 33, !dbg !2030
  store i8 %conv47, ptr %arrayidx49, align 1, !dbg !2031
  %add51 = add nuw nsw i32 %add36, %conv12, !dbg !2032
  %shr52 = lshr i32 %add51, 1, !dbg !2032
  %conv53 = trunc nuw i32 %shr52 to i8, !dbg !2032
  %arrayidx54 = getelementptr inbounds i8, ptr %src, i64 66, !dbg !2033
  store i8 %conv53, ptr %arrayidx54, align 1, !dbg !2034
  %arrayidx55 = getelementptr inbounds i8, ptr %src, i64 1, !dbg !2035
  store i8 %conv53, ptr %arrayidx55, align 1, !dbg !2036
  %mul56 = shl nuw nsw i32 %conv12, 1, !dbg !2037
  %add57 = add nuw nsw i32 %conv10, 2, !dbg !2037
  %add58 = add nuw nsw i32 %add57, %mul56, !dbg !2037
  %add59 = add nuw nsw i32 %add58, %conv14, !dbg !2037
  %shr60 = lshr i32 %add59, 2, !dbg !2037
  %conv61 = trunc nuw i32 %shr60 to i8, !dbg !2037
  %arrayidx62 = getelementptr inbounds i8, ptr %src, i64 99, !dbg !2038
  store i8 %conv61, ptr %arrayidx62, align 1, !dbg !2039
  %arrayidx63 = getelementptr inbounds i8, ptr %src, i64 34, !dbg !2040
  store i8 %conv61, ptr %arrayidx63, align 1, !dbg !2041
  %add64 = add nuw nsw i32 %conv12, 1, !dbg !2042
  %add65 = add nuw nsw i32 %add64, %conv14, !dbg !2042
  %shr66 = lshr i32 %add65, 1, !dbg !2042
  %conv67 = trunc nuw i32 %shr66 to i8, !dbg !2042
  %arrayidx68 = getelementptr inbounds i8, ptr %src, i64 67, !dbg !2043
  store i8 %conv67, ptr %arrayidx68, align 1, !dbg !2044
  %arrayidx69 = getelementptr inbounds i8, ptr %src, i64 2, !dbg !2045
  store i8 %conv67, ptr %arrayidx69, align 1, !dbg !2046
  %mul70 = shl nuw nsw i32 %conv14, 1, !dbg !2047
  %add71 = add nuw nsw i32 %conv12, 2, !dbg !2047
  %add72 = add nuw nsw i32 %add71, %mul70, !dbg !2047
  %add73 = add nuw nsw i32 %add72, %conv16, !dbg !2047
  %shr74 = lshr i32 %add73, 2, !dbg !2047
  %conv75 = trunc nuw i32 %shr74 to i8, !dbg !2047
  %arrayidx76 = getelementptr inbounds i8, ptr %src, i64 35, !dbg !2048
  store i8 %conv75, ptr %arrayidx76, align 1, !dbg !2049
  %add77 = add nuw nsw i32 %conv14, 1, !dbg !2050
  %add78 = add nuw nsw i32 %add77, %conv16, !dbg !2050
  %shr79 = lshr i32 %add78, 1, !dbg !2050
  %conv80 = trunc nuw i32 %shr79 to i8, !dbg !2050
  %arrayidx81 = getelementptr inbounds i8, ptr %src, i64 3, !dbg !2051
  store i8 %conv80, ptr %arrayidx81, align 1, !dbg !2052
  ret void, !dbg !2053
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_hd(ptr nocapture noundef %src) #1 !dbg !2054 {
entry:
    #dbg_value(ptr %src, !2056, !DIExpression(), !2066)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -33, !dbg !2067
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2067
  %conv = zext i8 %0 to i32, !dbg !2067
    #dbg_value(i32 %conv, !2057, !DIExpression(), !2066)
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -1, !dbg !2068
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !2068
  %conv2 = zext i8 %1 to i32, !dbg !2068
    #dbg_value(i32 %conv2, !2058, !DIExpression(), !2066)
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 31, !dbg !2068
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !2068
  %conv4 = zext i8 %2 to i32, !dbg !2068
    #dbg_value(i32 %conv4, !2059, !DIExpression(), !2066)
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 63, !dbg !2068
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !2068
  %conv6 = zext i8 %3 to i32, !dbg !2068
    #dbg_value(i32 %conv6, !2060, !DIExpression(), !2066)
  %arrayidx7 = getelementptr inbounds i8, ptr %src, i64 95, !dbg !2068
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !2068
  %conv8 = zext i8 %4 to i32, !dbg !2068
    #dbg_value(i32 %conv8, !2061, !DIExpression(), !2066)
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !2069
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !2069
  %conv10 = zext i8 %5 to i32, !dbg !2069
    #dbg_value(i32 %conv10, !2062, !DIExpression(), !2066)
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !2069
  %6 = load i8, ptr %arrayidx11, align 1, !dbg !2069
  %conv12 = zext i8 %6 to i32, !dbg !2069
    #dbg_value(i32 %conv12, !2063, !DIExpression(), !2066)
  %arrayidx13 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !2069
  %7 = load i8, ptr %arrayidx13, align 1, !dbg !2069
  %conv14 = zext i8 %7 to i32, !dbg !2069
    #dbg_value(i32 %conv14, !2064, !DIExpression(), !2066)
    #dbg_value(i8 poison, !2065, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2066)
  %add = add nuw nsw i32 %conv6, 1, !dbg !2070
  %add17 = add nuw nsw i32 %add, %conv8, !dbg !2070
  %shr = lshr i32 %add17, 1, !dbg !2070
  %conv18 = trunc nuw i32 %shr to i8, !dbg !2070
  %arrayidx19 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !2071
  store i8 %conv18, ptr %arrayidx19, align 1, !dbg !2072
  %mul = shl nuw nsw i32 %conv6, 1, !dbg !2073
  %add20 = add nuw nsw i32 %conv4, 2, !dbg !2073
  %add21 = add nuw nsw i32 %add20, %mul, !dbg !2073
  %add22 = add nuw nsw i32 %add21, %conv8, !dbg !2073
  %shr23 = lshr i32 %add22, 2, !dbg !2073
  %conv24 = trunc nuw i32 %shr23 to i8, !dbg !2073
  %arrayidx25 = getelementptr inbounds i8, ptr %src, i64 97, !dbg !2074
  store i8 %conv24, ptr %arrayidx25, align 1, !dbg !2075
  %add26 = add nuw nsw i32 %conv4, 1, !dbg !2076
  %add27 = add nuw nsw i32 %add26, %conv6, !dbg !2076
  %shr28 = lshr i32 %add27, 1, !dbg !2076
  %conv29 = trunc nuw i32 %shr28 to i8, !dbg !2076
  %arrayidx30 = getelementptr inbounds i8, ptr %src, i64 98, !dbg !2077
  store i8 %conv29, ptr %arrayidx30, align 1, !dbg !2078
  %arrayidx31 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !2079
  store i8 %conv29, ptr %arrayidx31, align 1, !dbg !2080
  %mul32 = shl nuw nsw i32 %conv4, 1, !dbg !2081
  %add33 = add nuw nsw i32 %conv2, 2, !dbg !2081
  %add34 = add nuw nsw i32 %add33, %mul32, !dbg !2081
  %add35 = add nuw nsw i32 %add34, %conv6, !dbg !2081
  %shr36 = lshr i32 %add35, 2, !dbg !2081
  %conv37 = trunc nuw i32 %shr36 to i8, !dbg !2081
  %arrayidx38 = getelementptr inbounds i8, ptr %src, i64 99, !dbg !2082
  store i8 %conv37, ptr %arrayidx38, align 1, !dbg !2083
  %arrayidx39 = getelementptr inbounds i8, ptr %src, i64 65, !dbg !2084
  store i8 %conv37, ptr %arrayidx39, align 1, !dbg !2085
  %add40 = add nuw nsw i32 %conv2, 1, !dbg !2086
  %add41 = add nuw nsw i32 %add40, %conv4, !dbg !2086
  %shr42 = lshr i32 %add41, 1, !dbg !2086
  %conv43 = trunc nuw i32 %shr42 to i8, !dbg !2086
  %arrayidx44 = getelementptr inbounds i8, ptr %src, i64 66, !dbg !2087
  store i8 %conv43, ptr %arrayidx44, align 1, !dbg !2088
  %arrayidx45 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !2089
  store i8 %conv43, ptr %arrayidx45, align 1, !dbg !2090
  %mul46 = shl nuw nsw i32 %conv2, 1, !dbg !2091
  %add47 = add nuw nsw i32 %conv, 2, !dbg !2091
  %add48 = add nuw nsw i32 %add47, %mul46, !dbg !2091
  %add49 = add nuw nsw i32 %add48, %conv4, !dbg !2091
  %shr50 = lshr i32 %add49, 2, !dbg !2091
  %conv51 = trunc nuw i32 %shr50 to i8, !dbg !2091
  %arrayidx52 = getelementptr inbounds i8, ptr %src, i64 67, !dbg !2092
  store i8 %conv51, ptr %arrayidx52, align 1, !dbg !2093
  %arrayidx53 = getelementptr inbounds i8, ptr %src, i64 33, !dbg !2094
  store i8 %conv51, ptr %arrayidx53, align 1, !dbg !2095
  %add55 = add nuw nsw i32 %add40, %conv, !dbg !2096
  %shr56 = lshr i32 %add55, 1, !dbg !2096
  %conv57 = trunc nuw i32 %shr56 to i8, !dbg !2096
  %arrayidx58 = getelementptr inbounds i8, ptr %src, i64 34, !dbg !2097
  store i8 %conv57, ptr %arrayidx58, align 1, !dbg !2098
  store i8 %conv57, ptr %src, align 1, !dbg !2099
  %mul60 = shl nuw nsw i32 %conv, 1, !dbg !2100
  %add62 = add nuw nsw i32 %add33, %mul60, !dbg !2100
  %add63 = add nuw nsw i32 %add62, %conv10, !dbg !2100
  %shr64 = lshr i32 %add63, 2, !dbg !2100
  %conv65 = trunc nuw i32 %shr64 to i8, !dbg !2100
  %arrayidx66 = getelementptr inbounds i8, ptr %src, i64 35, !dbg !2101
  store i8 %conv65, ptr %arrayidx66, align 1, !dbg !2102
  %arrayidx67 = getelementptr inbounds i8, ptr %src, i64 1, !dbg !2103
  store i8 %conv65, ptr %arrayidx67, align 1, !dbg !2104
  %mul68 = shl nuw nsw i32 %conv10, 1, !dbg !2105
  %add70 = add nuw nsw i32 %add47, %conv12, !dbg !2105
  %add71 = add nuw nsw i32 %add70, %mul68, !dbg !2105
  %shr72 = lshr i32 %add71, 2, !dbg !2105
  %conv73 = trunc nuw i32 %shr72 to i8, !dbg !2105
  %arrayidx74 = getelementptr inbounds i8, ptr %src, i64 2, !dbg !2106
  store i8 %conv73, ptr %arrayidx74, align 1, !dbg !2107
  %mul75 = shl nuw nsw i32 %conv12, 1, !dbg !2108
  %add76 = add nuw nsw i32 %conv10, 2, !dbg !2108
  %add77 = add nuw nsw i32 %add76, %conv14, !dbg !2108
  %add78 = add nuw nsw i32 %add77, %mul75, !dbg !2108
  %shr79 = lshr i32 %add78, 2, !dbg !2108
  %conv80 = trunc nuw i32 %shr79 to i8, !dbg !2108
  %arrayidx81 = getelementptr inbounds i8, ptr %src, i64 3, !dbg !2109
  store i8 %conv80, ptr %arrayidx81, align 1, !dbg !2110
  ret void, !dbg !2111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_vl(ptr nocapture noundef %src) #1 !dbg !2112 {
entry:
    #dbg_value(ptr %src, !2114, !DIExpression(), !2123)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !2124
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2124
  %conv = zext i8 %0 to i32, !dbg !2124
    #dbg_value(i32 %conv, !2115, !DIExpression(), !2123)
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !2124
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !2124
  %conv2 = zext i8 %1 to i32, !dbg !2124
    #dbg_value(i32 %conv2, !2116, !DIExpression(), !2123)
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !2124
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !2124
  %conv4 = zext i8 %2 to i32, !dbg !2124
    #dbg_value(i32 %conv4, !2117, !DIExpression(), !2123)
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 -29, !dbg !2124
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !2124
  %conv6 = zext i8 %3 to i32, !dbg !2124
    #dbg_value(i32 %conv6, !2118, !DIExpression(), !2123)
  %arrayidx7 = getelementptr inbounds i8, ptr %src, i64 -28, !dbg !2125
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !2125
  %conv8 = zext i8 %4 to i32, !dbg !2125
    #dbg_value(i32 %conv8, !2119, !DIExpression(), !2123)
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 -27, !dbg !2125
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !2125
  %conv10 = zext i8 %5 to i32, !dbg !2125
    #dbg_value(i32 %conv10, !2120, !DIExpression(), !2123)
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 -26, !dbg !2125
  %6 = load i8, ptr %arrayidx11, align 1, !dbg !2125
  %conv12 = zext i8 %6 to i32, !dbg !2125
    #dbg_value(i32 %conv12, !2121, !DIExpression(), !2123)
    #dbg_value(i8 poison, !2122, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2123)
  %add = add nuw nsw i32 %conv2, 1, !dbg !2126
  %add15 = add nuw nsw i32 %add, %conv, !dbg !2126
  %shr = lshr i32 %add15, 1, !dbg !2126
  %conv16 = trunc nuw i32 %shr to i8, !dbg !2126
  store i8 %conv16, ptr %src, align 1, !dbg !2127
  %mul = shl nuw nsw i32 %conv2, 1, !dbg !2128
  %add18 = add nuw nsw i32 %conv4, 2, !dbg !2128
  %add19 = add nuw nsw i32 %add18, %conv, !dbg !2128
  %add20 = add nuw nsw i32 %add19, %mul, !dbg !2128
  %shr21 = lshr i32 %add20, 2, !dbg !2128
  %conv22 = trunc nuw i32 %shr21 to i8, !dbg !2128
  %arrayidx23 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !2129
  store i8 %conv22, ptr %arrayidx23, align 1, !dbg !2130
  %add25 = add nuw nsw i32 %add, %conv4, !dbg !2131
  %shr26 = lshr i32 %add25, 1, !dbg !2131
  %conv27 = trunc nuw i32 %shr26 to i8, !dbg !2131
  %arrayidx28 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !2132
  store i8 %conv27, ptr %arrayidx28, align 1, !dbg !2133
  %arrayidx29 = getelementptr inbounds i8, ptr %src, i64 1, !dbg !2134
  store i8 %conv27, ptr %arrayidx29, align 1, !dbg !2135
  %mul30 = shl nuw nsw i32 %conv4, 1, !dbg !2136
  %add31 = add nuw nsw i32 %conv6, 2, !dbg !2136
  %add32 = add nuw nsw i32 %add31, %conv2, !dbg !2136
  %add33 = add nuw nsw i32 %add32, %mul30, !dbg !2136
  %shr34 = lshr i32 %add33, 2, !dbg !2136
  %conv35 = trunc nuw i32 %shr34 to i8, !dbg !2136
  %arrayidx36 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !2137
  store i8 %conv35, ptr %arrayidx36, align 1, !dbg !2138
  %arrayidx37 = getelementptr inbounds i8, ptr %src, i64 33, !dbg !2139
  store i8 %conv35, ptr %arrayidx37, align 1, !dbg !2140
  %add38 = add nuw nsw i32 %conv4, 1, !dbg !2141
  %add39 = add nuw nsw i32 %add38, %conv6, !dbg !2141
  %shr40 = lshr i32 %add39, 1, !dbg !2141
  %conv41 = trunc nuw i32 %shr40 to i8, !dbg !2141
  %arrayidx42 = getelementptr inbounds i8, ptr %src, i64 65, !dbg !2142
  store i8 %conv41, ptr %arrayidx42, align 1, !dbg !2143
  %arrayidx43 = getelementptr inbounds i8, ptr %src, i64 2, !dbg !2144
  store i8 %conv41, ptr %arrayidx43, align 1, !dbg !2145
  %mul44 = shl nuw nsw i32 %conv6, 1, !dbg !2146
  %add46 = add nuw nsw i32 %add18, %mul44, !dbg !2146
  %add47 = add nuw nsw i32 %add46, %conv8, !dbg !2146
  %shr48 = lshr i32 %add47, 2, !dbg !2146
  %conv49 = trunc nuw i32 %shr48 to i8, !dbg !2146
  %arrayidx50 = getelementptr inbounds i8, ptr %src, i64 97, !dbg !2147
  store i8 %conv49, ptr %arrayidx50, align 1, !dbg !2148
  %arrayidx51 = getelementptr inbounds i8, ptr %src, i64 34, !dbg !2149
  store i8 %conv49, ptr %arrayidx51, align 1, !dbg !2150
  %add52 = add nuw nsw i32 %conv6, 1, !dbg !2151
  %add53 = add nuw nsw i32 %add52, %conv8, !dbg !2151
  %shr54 = lshr i32 %add53, 1, !dbg !2151
  %conv55 = trunc nuw i32 %shr54 to i8, !dbg !2151
  %arrayidx56 = getelementptr inbounds i8, ptr %src, i64 66, !dbg !2152
  store i8 %conv55, ptr %arrayidx56, align 1, !dbg !2153
  %arrayidx57 = getelementptr inbounds i8, ptr %src, i64 3, !dbg !2154
  store i8 %conv55, ptr %arrayidx57, align 1, !dbg !2155
  %mul58 = shl nuw nsw i32 %conv8, 1, !dbg !2156
  %add60 = add nuw nsw i32 %add31, %mul58, !dbg !2156
  %add61 = add nuw nsw i32 %add60, %conv10, !dbg !2156
  %shr62 = lshr i32 %add61, 2, !dbg !2156
  %conv63 = trunc nuw i32 %shr62 to i8, !dbg !2156
  %arrayidx64 = getelementptr inbounds i8, ptr %src, i64 98, !dbg !2157
  store i8 %conv63, ptr %arrayidx64, align 1, !dbg !2158
  %arrayidx65 = getelementptr inbounds i8, ptr %src, i64 35, !dbg !2159
  store i8 %conv63, ptr %arrayidx65, align 1, !dbg !2160
  %add66 = add nuw nsw i32 %conv8, 1, !dbg !2161
  %add67 = add nuw nsw i32 %add66, %conv10, !dbg !2161
  %shr68 = lshr i32 %add67, 1, !dbg !2161
  %conv69 = trunc nuw i32 %shr68 to i8, !dbg !2161
  %arrayidx70 = getelementptr inbounds i8, ptr %src, i64 67, !dbg !2162
  store i8 %conv69, ptr %arrayidx70, align 1, !dbg !2163
  %mul71 = shl nuw nsw i32 %conv10, 1, !dbg !2164
  %add72 = add nuw nsw i32 %conv8, 2, !dbg !2164
  %add73 = add nuw nsw i32 %add72, %mul71, !dbg !2164
  %add74 = add nuw nsw i32 %add73, %conv12, !dbg !2164
  %shr75 = lshr i32 %add74, 2, !dbg !2164
  %conv76 = trunc nuw i32 %shr75 to i8, !dbg !2164
  %arrayidx77 = getelementptr inbounds i8, ptr %src, i64 99, !dbg !2165
  store i8 %conv76, ptr %arrayidx77, align 1, !dbg !2166
  ret void, !dbg !2167
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_hu(ptr nocapture noundef %src) #1 !dbg !2168 {
entry:
    #dbg_value(ptr %src, !2170, !DIExpression(), !2175)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -1, !dbg !2176
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2176
  %conv = zext i8 %0 to i32, !dbg !2176
    #dbg_value(i32 %conv, !2171, !DIExpression(), !2175)
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 31, !dbg !2176
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !2176
  %conv2 = zext i8 %1 to i32, !dbg !2176
    #dbg_value(i32 %conv2, !2172, !DIExpression(), !2175)
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 63, !dbg !2176
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !2176
  %conv4 = zext i8 %2 to i32, !dbg !2176
    #dbg_value(i32 %conv4, !2173, !DIExpression(), !2175)
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 95, !dbg !2176
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !2176
  %conv6 = zext i8 %3 to i32, !dbg !2176
    #dbg_value(i32 %conv6, !2174, !DIExpression(), !2175)
  %add = add nuw nsw i32 %conv2, 1, !dbg !2177
  %add7 = add nuw nsw i32 %add, %conv, !dbg !2177
  %shr = lshr i32 %add7, 1, !dbg !2177
  %conv8 = trunc nuw i32 %shr to i8, !dbg !2177
  store i8 %conv8, ptr %src, align 1, !dbg !2178
  %mul = shl nuw nsw i32 %conv2, 1, !dbg !2179
  %add10 = add nuw nsw i32 %conv4, 2, !dbg !2179
  %add11 = add nuw nsw i32 %add10, %conv, !dbg !2179
  %add12 = add nuw nsw i32 %add11, %mul, !dbg !2179
  %shr13 = lshr i32 %add12, 2, !dbg !2179
  %conv14 = trunc nuw i32 %shr13 to i8, !dbg !2179
  %arrayidx15 = getelementptr inbounds i8, ptr %src, i64 1, !dbg !2180
  store i8 %conv14, ptr %arrayidx15, align 1, !dbg !2181
  %add17 = add nuw nsw i32 %add, %conv4, !dbg !2182
  %shr18 = lshr i32 %add17, 1, !dbg !2182
  %conv19 = trunc nuw i32 %shr18 to i8, !dbg !2182
  %arrayidx20 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !2183
  store i8 %conv19, ptr %arrayidx20, align 1, !dbg !2184
  %arrayidx21 = getelementptr inbounds i8, ptr %src, i64 2, !dbg !2185
  store i8 %conv19, ptr %arrayidx21, align 1, !dbg !2186
  %mul22 = shl nuw nsw i32 %conv4, 1, !dbg !2187
  %add23 = add nuw nsw i32 %conv6, 2, !dbg !2187
  %add24 = add nuw nsw i32 %add23, %conv2, !dbg !2187
  %add25 = add nuw nsw i32 %add24, %mul22, !dbg !2187
  %shr26 = lshr i32 %add25, 2, !dbg !2187
  %conv27 = trunc nuw i32 %shr26 to i8, !dbg !2187
  %arrayidx28 = getelementptr inbounds i8, ptr %src, i64 33, !dbg !2188
  store i8 %conv27, ptr %arrayidx28, align 1, !dbg !2189
  %arrayidx29 = getelementptr inbounds i8, ptr %src, i64 3, !dbg !2190
  store i8 %conv27, ptr %arrayidx29, align 1, !dbg !2191
  %add30 = add nuw nsw i32 %conv4, 1, !dbg !2192
  %add31 = add nuw nsw i32 %add30, %conv6, !dbg !2192
  %shr32 = lshr i32 %add31, 1, !dbg !2192
  %conv33 = trunc nuw i32 %shr32 to i8, !dbg !2192
  %arrayidx34 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !2193
  store i8 %conv33, ptr %arrayidx34, align 1, !dbg !2194
  %arrayidx35 = getelementptr inbounds i8, ptr %src, i64 34, !dbg !2195
  store i8 %conv33, ptr %arrayidx35, align 1, !dbg !2196
  %mul36 = shl nuw nsw i32 %conv6, 1, !dbg !2197
  %add38 = add nuw nsw i32 %add10, %conv6, !dbg !2197
  %add39 = add nuw nsw i32 %add38, %mul36, !dbg !2197
  %shr40 = lshr i32 %add39, 2, !dbg !2197
  %conv41 = trunc nuw i32 %shr40 to i8, !dbg !2197
  %arrayidx42 = getelementptr inbounds i8, ptr %src, i64 65, !dbg !2198
  store i8 %conv41, ptr %arrayidx42, align 1, !dbg !2199
  %arrayidx43 = getelementptr inbounds i8, ptr %src, i64 35, !dbg !2200
  store i8 %conv41, ptr %arrayidx43, align 1, !dbg !2201
  %arrayidx47 = getelementptr inbounds i8, ptr %src, i64 66, !dbg !2202
  store i8 %3, ptr %arrayidx47, align 1, !dbg !2203
  %arrayidx48 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !2204
  %4 = insertelement <4 x i8> poison, i8 %3, i64 0, !dbg !2205
  %5 = shufflevector <4 x i8> %4, <4 x i8> poison, <4 x i32> zeroinitializer, !dbg !2205
  store <4 x i8> %5, ptr %arrayidx48, align 1, !dbg !2205
  %arrayidx50 = getelementptr inbounds i8, ptr %src, i64 67, !dbg !2206
  store i8 %3, ptr %arrayidx50, align 1, !dbg !2207
  ret void, !dbg !2208
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc_left(ptr nocapture noundef %src) #1 !dbg !2209 {
entry:
    #dbg_value(ptr %src, !2211, !DIExpression(), !2213)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -1, !dbg !2214
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2214
  %conv = zext i8 %0 to i32, !dbg !2214
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 31, !dbg !2215
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !2215
  %conv2 = zext i8 %1 to i32, !dbg !2215
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 63, !dbg !2216
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !2216
  %conv4 = zext i8 %2 to i32, !dbg !2216
  %arrayidx6 = getelementptr inbounds i8, ptr %src, i64 95, !dbg !2217
  %3 = load i8, ptr %arrayidx6, align 1, !dbg !2217
  %conv7 = zext i8 %3 to i32, !dbg !2217
  %add = add nuw nsw i32 %conv, 2, !dbg !2218
  %add5 = add nuw nsw i32 %add, %conv2, !dbg !2219
  %add8 = add nuw nsw i32 %add5, %conv4, !dbg !2220
  %add9 = add nuw nsw i32 %add8, %conv7, !dbg !2221
  %shr = lshr i32 %add9, 2, !dbg !2222
  %mul = mul nuw nsw i32 %shr, 16843009, !dbg !2223
    #dbg_value(i32 %mul, !2212, !DIExpression(), !2213)
  %arrayidx10 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !2224
  store i32 %mul, ptr %arrayidx10, align 4, !dbg !2224
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !2224
  store i32 %mul, ptr %arrayidx11, align 4, !dbg !2224
  %arrayidx12 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !2224
  store i32 %mul, ptr %arrayidx12, align 4, !dbg !2224
  store i32 %mul, ptr %src, align 4, !dbg !2224
  ret void, !dbg !2225
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc_top(ptr nocapture noundef %src) #1 !dbg !2226 {
entry:
    #dbg_value(ptr %src, !2228, !DIExpression(), !2230)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32, !dbg !2231
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2231
  %conv = zext i8 %0 to i32, !dbg !2231
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -31, !dbg !2232
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !2232
  %conv2 = zext i8 %1 to i32, !dbg !2232
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 -30, !dbg !2233
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !2233
  %conv4 = zext i8 %2 to i32, !dbg !2233
  %arrayidx6 = getelementptr inbounds i8, ptr %src, i64 -29, !dbg !2234
  %3 = load i8, ptr %arrayidx6, align 1, !dbg !2234
  %conv7 = zext i8 %3 to i32, !dbg !2234
  %add = add nuw nsw i32 %conv, 2, !dbg !2235
  %add5 = add nuw nsw i32 %add, %conv2, !dbg !2236
  %add8 = add nuw nsw i32 %add5, %conv4, !dbg !2237
  %add9 = add nuw nsw i32 %add8, %conv7, !dbg !2238
  %shr = lshr i32 %add9, 2, !dbg !2239
  %mul = mul nuw nsw i32 %shr, 16843009, !dbg !2240
    #dbg_value(i32 %mul, !2229, !DIExpression(), !2230)
  %arrayidx10 = getelementptr inbounds i8, ptr %src, i64 96, !dbg !2241
  store i32 %mul, ptr %arrayidx10, align 4, !dbg !2241
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !2241
  store i32 %mul, ptr %arrayidx11, align 4, !dbg !2241
  %arrayidx12 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !2241
  store i32 %mul, ptr %arrayidx12, align 4, !dbg !2241
  store i32 %mul, ptr %src, align 4, !dbg !2241
  ret void, !dbg !2242
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @predict_4x4_dc_128(ptr nocapture noundef writeonly %src) #0 !dbg !2243 {
entry:
    #dbg_value(ptr %src, !2245, !DIExpression(), !2246)
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 96, !dbg !2247
  store i32 -2139062144, ptr %arrayidx, align 4, !dbg !2247
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 64, !dbg !2247
  store i32 -2139062144, ptr %arrayidx1, align 4, !dbg !2247
  %arrayidx2 = getelementptr inbounds i8, ptr %src, i64 32, !dbg !2247
  store i32 -2139062144, ptr %arrayidx2, align 4, !dbg !2247
  store i32 -2139062144, ptr %src, align 4, !dbg !2247
  ret void, !dbg !2248
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "x264_src/common/predict.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "aa72259b82ac6d1e4f1a8e559ed0b630")
!2 = !{!3, !14, !23, !37, !51}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra16x16_pred_e", file: !4, line: 48, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13}
!7 = !DIEnumerator(name: "I_PRED_16x16_V", value: 0)
!8 = !DIEnumerator(name: "I_PRED_16x16_H", value: 1)
!9 = !DIEnumerator(name: "I_PRED_16x16_DC", value: 2)
!10 = !DIEnumerator(name: "I_PRED_16x16_P", value: 3)
!11 = !DIEnumerator(name: "I_PRED_16x16_DC_LEFT", value: 4)
!12 = !DIEnumerator(name: "I_PRED_16x16_DC_TOP", value: 5)
!13 = !DIEnumerator(name: "I_PRED_16x16_DC_128", value: 6)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra_chroma_pred_e", file: !4, line: 31, baseType: !5, size: 32, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22}
!16 = !DIEnumerator(name: "I_PRED_CHROMA_DC", value: 0)
!17 = !DIEnumerator(name: "I_PRED_CHROMA_H", value: 1)
!18 = !DIEnumerator(name: "I_PRED_CHROMA_V", value: 2)
!19 = !DIEnumerator(name: "I_PRED_CHROMA_P", value: 3)
!20 = !DIEnumerator(name: "I_PRED_CHROMA_DC_LEFT", value: 4)
!21 = !DIEnumerator(name: "I_PRED_CHROMA_DC_TOP", value: 5)
!22 = !DIEnumerator(name: "I_PRED_CHROMA_DC_128", value: 6)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra8x8_pred_e", file: !4, line: 92, baseType: !5, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!25 = !DIEnumerator(name: "I_PRED_8x8_V", value: 0)
!26 = !DIEnumerator(name: "I_PRED_8x8_H", value: 1)
!27 = !DIEnumerator(name: "I_PRED_8x8_DC", value: 2)
!28 = !DIEnumerator(name: "I_PRED_8x8_DDL", value: 3)
!29 = !DIEnumerator(name: "I_PRED_8x8_DDR", value: 4)
!30 = !DIEnumerator(name: "I_PRED_8x8_VR", value: 5)
!31 = !DIEnumerator(name: "I_PRED_8x8_HD", value: 6)
!32 = !DIEnumerator(name: "I_PRED_8x8_VL", value: 7)
!33 = !DIEnumerator(name: "I_PRED_8x8_HU", value: 8)
!34 = !DIEnumerator(name: "I_PRED_8x8_DC_LEFT", value: 9)
!35 = !DIEnumerator(name: "I_PRED_8x8_DC_TOP", value: 10)
!36 = !DIEnumerator(name: "I_PRED_8x8_DC_128", value: 11)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra4x4_pred_e", file: !4, line: 65, baseType: !5, size: 32, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!39 = !DIEnumerator(name: "I_PRED_4x4_V", value: 0)
!40 = !DIEnumerator(name: "I_PRED_4x4_H", value: 1)
!41 = !DIEnumerator(name: "I_PRED_4x4_DC", value: 2)
!42 = !DIEnumerator(name: "I_PRED_4x4_DDL", value: 3)
!43 = !DIEnumerator(name: "I_PRED_4x4_DDR", value: 4)
!44 = !DIEnumerator(name: "I_PRED_4x4_VR", value: 5)
!45 = !DIEnumerator(name: "I_PRED_4x4_HD", value: 6)
!46 = !DIEnumerator(name: "I_PRED_4x4_VL", value: 7)
!47 = !DIEnumerator(name: "I_PRED_4x4_HU", value: 8)
!48 = !DIEnumerator(name: "I_PRED_4x4_DC_LEFT", value: 9)
!49 = !DIEnumerator(name: "I_PRED_4x4_DC_TOP", value: 10)
!50 = !DIEnumerator(name: "I_PRED_4x4_DC_128", value: 11)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macroblock_position_e", file: !52, line: 33, baseType: !5, size: 32, elements: !53)
!52 = !DIFile(filename: "x264_src/common/macroblock.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!53 = !{!54, !55, !56, !57, !58, !59}
!54 = !DIEnumerator(name: "MB_LEFT", value: 1)
!55 = !DIEnumerator(name: "MB_TOP", value: 2)
!56 = !DIEnumerator(name: "MB_TOPRIGHT", value: 4)
!57 = !DIEnumerator(name: "MB_TOPLEFT", value: 8)
!58 = !DIEnumerator(name: "MB_PRIVATE", value: 16)
!59 = !DIEnumerator(name: "ALL_NEIGHBORS", value: 15)
!60 = !{!61, !85}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !63, line: 89, baseType: !64)
!63 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !63, line: 89, size: 32, elements: !65)
!65 = !{!66, !71, !78}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !64, file: !63, line: 89, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !68, line: 26, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !70, line: 42, baseType: !5)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !64, file: !63, line: 89, baseType: !72, size: 32)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 32, elements: !76)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !68, line: 25, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !70, line: 40, baseType: !75)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !{!77}
!77 = !DISubrange(count: 2)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !64, file: !63, line: 89, baseType: !79, size: 32)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 32, elements: !83)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !68, line: 24, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !70, line: 38, baseType: !82)
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !{!84}
!84 = !DISubrange(count: 4)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !63, line: 90, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !63, line: 90, size: 64, elements: !88)
!88 = !{!89, !93, !95, !97}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !87, file: !63, line: 90, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !68, line: 27, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !70, line: 45, baseType: !92)
!92 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !87, file: !63, line: 90, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !76)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !87, file: !63, line: 90, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !83)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !87, file: !63, line: 90, baseType: !98, size: 64)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 64, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 8)
!101 = !{i32 7, !"Dwarf Version", i32 5}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{i32 1, !"wchar_size", i32 4}
!104 = !{i32 8, !"PIC Level", i32 2}
!105 = !{i32 7, !"PIE Level", i32 2}
!106 = !{i32 7, !"uwtable", i32 2}
!107 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!108 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!109 = distinct !DISubprogram(name: "x264_predict_16x16_init", scope: !1, file: !1, line: 710, type: !110, scopeLine: 711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !112, !113}
!112 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !4, line: 27, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!119 = !{!120, !121}
!120 = !DILocalVariable(name: "cpu", arg: 1, scope: !109, file: !1, line: 710, type: !112)
!121 = !DILocalVariable(name: "pf", arg: 2, scope: !109, file: !1, line: 710, type: !113)
!122 = !DILocation(line: 0, scope: !109)
!123 = !DILocation(line: 712, column: 29, scope: !109)
!124 = !DILocation(line: 713, column: 5, scope: !109)
!125 = !DILocation(line: 713, column: 29, scope: !109)
!126 = !DILocation(line: 714, column: 5, scope: !109)
!127 = !DILocation(line: 714, column: 29, scope: !109)
!128 = !DILocation(line: 715, column: 5, scope: !109)
!129 = !DILocation(line: 715, column: 29, scope: !109)
!130 = !DILocation(line: 716, column: 5, scope: !109)
!131 = !DILocation(line: 716, column: 29, scope: !109)
!132 = !DILocation(line: 717, column: 5, scope: !109)
!133 = !DILocation(line: 717, column: 29, scope: !109)
!134 = !DILocation(line: 718, column: 5, scope: !109)
!135 = !DILocation(line: 718, column: 29, scope: !109)
!136 = !DILocation(line: 732, column: 1, scope: !109)
!137 = distinct !DISubprogram(name: "predict_16x16_v", scope: !1, file: !1, line: 103, type: !116, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!138 = !{!139, !140, !141, !142, !143, !144}
!139 = !DILocalVariable(name: "src", arg: 1, scope: !137, file: !1, line: 103, type: !118)
!140 = !DILocalVariable(name: "v0", scope: !137, file: !1, line: 105, type: !67)
!141 = !DILocalVariable(name: "v1", scope: !137, file: !1, line: 106, type: !67)
!142 = !DILocalVariable(name: "v2", scope: !137, file: !1, line: 107, type: !67)
!143 = !DILocalVariable(name: "v3", scope: !137, file: !1, line: 108, type: !67)
!144 = !DILocalVariable(name: "i", scope: !145, file: !1, line: 110, type: !112)
!145 = distinct !DILexicalBlock(scope: !137, file: !1, line: 110, column: 5)
!146 = !DILocation(line: 0, scope: !137)
!147 = !DILocation(line: 105, column: 19, scope: !137)
!148 = !DILocation(line: 106, column: 19, scope: !137)
!149 = !DILocation(line: 107, column: 19, scope: !137)
!150 = !DILocation(line: 108, column: 19, scope: !137)
!151 = !DILocation(line: 0, scope: !145)
!152 = !DILocation(line: 112, column: 23, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 111, column: 5)
!154 = distinct !DILexicalBlock(scope: !145, file: !1, line: 110, column: 5)
!155 = !DILocation(line: 113, column: 9, scope: !153)
!156 = !DILocation(line: 113, column: 23, scope: !153)
!157 = !DILocation(line: 114, column: 9, scope: !153)
!158 = !DILocation(line: 114, column: 23, scope: !153)
!159 = !DILocation(line: 115, column: 9, scope: !153)
!160 = !DILocation(line: 115, column: 23, scope: !153)
!161 = !DILocation(line: 116, column: 13, scope: !153)
!162 = !DILocation(line: 118, column: 1, scope: !137)
!163 = distinct !DISubprogram(name: "predict_16x16_h", scope: !1, file: !1, line: 91, type: !116, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !164)
!164 = !{!165, !166, !168}
!165 = !DILocalVariable(name: "src", arg: 1, scope: !163, file: !1, line: 91, type: !118)
!166 = !DILocalVariable(name: "i", scope: !167, file: !1, line: 93, type: !112)
!167 = distinct !DILexicalBlock(scope: !163, file: !1, line: 93, column: 5)
!168 = !DILocalVariable(name: "v", scope: !169, file: !1, line: 95, type: !171)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 94, column: 5)
!170 = distinct !DILexicalBlock(scope: !167, file: !1, line: 93, column: 5)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!172 = !DILocation(line: 0, scope: !163)
!173 = !DILocation(line: 0, scope: !167)
!174 = !DILocation(line: 95, column: 41, scope: !169)
!175 = !DILocation(line: 95, column: 39, scope: !169)
!176 = !DILocation(line: 0, scope: !169)
!177 = !DILocation(line: 96, column: 23, scope: !169)
!178 = !DILocation(line: 100, column: 13, scope: !169)
!179 = !DILocation(line: 102, column: 1, scope: !163)
!180 = distinct !DISubprogram(name: "predict_16x16_dc", scope: !1, file: !1, line: 54, type: !116, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !181)
!181 = !{!182, !183, !184, !186}
!182 = !DILocalVariable(name: "src", arg: 1, scope: !180, file: !1, line: 54, type: !118)
!183 = !DILocalVariable(name: "dc", scope: !180, file: !1, line: 56, type: !67)
!184 = !DILocalVariable(name: "i", scope: !185, file: !1, line: 58, type: !112)
!185 = distinct !DILexicalBlock(scope: !180, file: !1, line: 58, column: 5)
!186 = !DILocalVariable(name: "i", scope: !187, file: !1, line: 65, type: !112)
!187 = distinct !DILexicalBlock(scope: !180, file: !1, line: 65, column: 5)
!188 = !DILocation(line: 0, scope: !180)
!189 = !DILocation(line: 0, scope: !185)
!190 = !DILocation(line: 58, column: 10, scope: !185)
!191 = !DILocation(line: 60, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 59, column: 5)
!193 = distinct !DILexicalBlock(scope: !185, file: !1, line: 58, column: 5)
!194 = !DILocation(line: 61, column: 15, scope: !192)
!195 = !DILocation(line: 61, column: 12, scope: !192)
!196 = !DILocation(line: 60, column: 12, scope: !192)
!197 = !DILocation(line: 63, column: 16, scope: !180)
!198 = !DILocation(line: 63, column: 23, scope: !180)
!199 = !DILocation(line: 63, column: 29, scope: !180)
!200 = !DILocation(line: 0, scope: !187)
!201 = !DILocation(line: 65, column: 5, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 65, column: 5)
!203 = distinct !DILexicalBlock(scope: !187, file: !1, line: 65, column: 5)
!204 = !DILocation(line: 66, column: 1, scope: !180)
!205 = distinct !DISubprogram(name: "predict_16x16_p", scope: !1, file: !1, line: 119, type: !116, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !206)
!206 = !{!207, !208, !209, !210, !212, !213, !214, !215, !216, !218, !221}
!207 = !DILocalVariable(name: "src", arg: 1, scope: !205, file: !1, line: 119, type: !118)
!208 = !DILocalVariable(name: "H", scope: !205, file: !1, line: 121, type: !112)
!209 = !DILocalVariable(name: "V", scope: !205, file: !1, line: 121, type: !112)
!210 = !DILocalVariable(name: "i", scope: !211, file: !1, line: 124, type: !112)
!211 = distinct !DILexicalBlock(scope: !205, file: !1, line: 124, column: 5)
!212 = !DILocalVariable(name: "a", scope: !205, file: !1, line: 130, type: !112)
!213 = !DILocalVariable(name: "b", scope: !205, file: !1, line: 131, type: !112)
!214 = !DILocalVariable(name: "c", scope: !205, file: !1, line: 132, type: !112)
!215 = !DILocalVariable(name: "i00", scope: !205, file: !1, line: 134, type: !112)
!216 = !DILocalVariable(name: "y", scope: !217, file: !1, line: 136, type: !112)
!217 = distinct !DILexicalBlock(scope: !205, file: !1, line: 136, column: 5)
!218 = !DILocalVariable(name: "pix", scope: !219, file: !1, line: 138, type: !112)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 137, column: 5)
!220 = distinct !DILexicalBlock(scope: !217, file: !1, line: 136, column: 5)
!221 = !DILocalVariable(name: "x", scope: !222, file: !1, line: 139, type: !112)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 139, column: 9)
!223 = !DILocation(line: 0, scope: !205)
!224 = !DILocation(line: 0, scope: !211)
!225 = !DILocation(line: 124, column: 10, scope: !211)
!226 = !DILocation(line: 126, column: 28, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 125, column: 5)
!228 = distinct !DILexicalBlock(scope: !211, file: !1, line: 124, column: 5)
!229 = !DILocation(line: 126, column: 57, scope: !227)
!230 = !DILocation(line: 126, column: 55, scope: !227)
!231 = !DILocation(line: 127, column: 28, scope: !227)
!232 = !DILocation(line: 127, column: 58, scope: !227)
!233 = !DILocation(line: 127, column: 56, scope: !227)
!234 = !DILocation(line: 126, column: 24, scope: !227)
!235 = !DILocation(line: 126, column: 11, scope: !227)
!236 = !DILocation(line: 127, column: 24, scope: !227)
!237 = !DILocation(line: 127, column: 11, scope: !227)
!238 = !DILocation(line: 130, column: 45, scope: !205)
!239 = !DILocation(line: 130, column: 16, scope: !205)
!240 = !DILocation(line: 131, column: 17, scope: !205)
!241 = !DILocation(line: 131, column: 21, scope: !205)
!242 = !DILocation(line: 131, column: 28, scope: !205)
!243 = !DILocation(line: 132, column: 17, scope: !205)
!244 = !DILocation(line: 132, column: 21, scope: !205)
!245 = !DILocation(line: 132, column: 28, scope: !205)
!246 = !DILocation(line: 134, column: 25, scope: !205)
!247 = !DILocation(line: 134, column: 33, scope: !205)
!248 = !DILocation(line: 0, scope: !217)
!249 = !DILocation(line: 136, column: 5, scope: !217)
!250 = !DILocation(line: 142, column: 17, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 140, column: 9)
!252 = distinct !DILexicalBlock(scope: !222, file: !1, line: 139, column: 9)
!253 = !DILocation(line: 141, column: 42, scope: !251)
!254 = !DILocation(line: 197, column: 13, scope: !255, inlinedAt: !260)
!255 = distinct !DISubprogram(name: "x264_clip_uint8", scope: !63, file: !63, line: 195, type: !256, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{!80, !112}
!258 = !{!259}
!259 = !DILocalVariable(name: "x", arg: 1, scope: !255, file: !63, line: 195, type: !112)
!260 = distinct !DILocation(line: 141, column: 22, scope: !251)
!261 = !DILocation(line: 197, column: 12, scope: !255, inlinedAt: !260)
!262 = !DILocation(line: 141, column: 20, scope: !251)
!263 = distinct !{!263, !249, !264, !265, !266}
!264 = !DILocation(line: 146, column: 5, scope: !217)
!265 = !{!"llvm.loop.isvectorized", i32 1}
!266 = !{!"llvm.loop.unroll.runtime.disable"}
!267 = !DILocation(line: 147, column: 1, scope: !205)
!268 = distinct !DISubprogram(name: "predict_16x16_dc_left", scope: !1, file: !1, line: 67, type: !116, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !269)
!269 = !{!270, !271, !272, !274}
!270 = !DILocalVariable(name: "src", arg: 1, scope: !268, file: !1, line: 67, type: !118)
!271 = !DILocalVariable(name: "dc", scope: !268, file: !1, line: 69, type: !67)
!272 = !DILocalVariable(name: "i", scope: !273, file: !1, line: 71, type: !112)
!273 = distinct !DILexicalBlock(scope: !268, file: !1, line: 71, column: 5)
!274 = !DILocalVariable(name: "i", scope: !275, file: !1, line: 75, type: !112)
!275 = distinct !DILexicalBlock(scope: !268, file: !1, line: 75, column: 5)
!276 = !DILocation(line: 0, scope: !268)
!277 = !DILocation(line: 0, scope: !273)
!278 = !DILocation(line: 71, column: 10, scope: !273)
!279 = !DILocation(line: 72, column: 15, scope: !280)
!280 = distinct !DILexicalBlock(scope: !273, file: !1, line: 71, column: 5)
!281 = !DILocation(line: 72, column: 12, scope: !280)
!282 = !DILocation(line: 73, column: 16, scope: !268)
!283 = !DILocation(line: 73, column: 22, scope: !268)
!284 = !DILocation(line: 73, column: 28, scope: !268)
!285 = !DILocation(line: 0, scope: !275)
!286 = !DILocation(line: 75, column: 5, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !1, line: 75, column: 5)
!288 = distinct !DILexicalBlock(scope: !275, file: !1, line: 75, column: 5)
!289 = !DILocation(line: 76, column: 1, scope: !268)
!290 = distinct !DISubprogram(name: "predict_16x16_dc_top", scope: !1, file: !1, line: 77, type: !116, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !291)
!291 = !{!292, !293, !294, !296}
!292 = !DILocalVariable(name: "src", arg: 1, scope: !290, file: !1, line: 77, type: !118)
!293 = !DILocalVariable(name: "dc", scope: !290, file: !1, line: 79, type: !67)
!294 = !DILocalVariable(name: "i", scope: !295, file: !1, line: 81, type: !112)
!295 = distinct !DILexicalBlock(scope: !290, file: !1, line: 81, column: 5)
!296 = !DILocalVariable(name: "i", scope: !297, file: !1, line: 85, type: !112)
!297 = distinct !DILexicalBlock(scope: !290, file: !1, line: 85, column: 5)
!298 = !DILocation(line: 0, scope: !290)
!299 = !DILocation(line: 0, scope: !295)
!300 = !DILocation(line: 82, column: 15, scope: !301)
!301 = distinct !DILexicalBlock(scope: !295, file: !1, line: 81, column: 5)
!302 = !DILocation(line: 83, column: 16, scope: !290)
!303 = !DILocation(line: 83, column: 22, scope: !290)
!304 = !DILocation(line: 83, column: 28, scope: !290)
!305 = !DILocation(line: 0, scope: !297)
!306 = !DILocation(line: 85, column: 5, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 85, column: 5)
!308 = distinct !DILexicalBlock(scope: !297, file: !1, line: 85, column: 5)
!309 = !DILocation(line: 86, column: 1, scope: !290)
!310 = distinct !DISubprogram(name: "predict_16x16_dc_128", scope: !1, file: !1, line: 87, type: !116, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !311)
!311 = !{!312, !313}
!312 = !DILocalVariable(name: "src", arg: 1, scope: !310, file: !1, line: 87, type: !118)
!313 = !DILocalVariable(name: "i", scope: !314, file: !1, line: 89, type: !112)
!314 = distinct !DILexicalBlock(scope: !310, file: !1, line: 89, column: 5)
!315 = !DILocation(line: 0, scope: !310)
!316 = !DILocation(line: 0, scope: !314)
!317 = !DILocation(line: 89, column: 5, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !1, line: 89, column: 5)
!319 = distinct !DILexicalBlock(scope: !314, file: !1, line: 89, column: 5)
!320 = !DILocation(line: 90, column: 1, scope: !310)
!321 = distinct !DISubprogram(name: "x264_predict_8x8c_init", scope: !1, file: !1, line: 734, type: !110, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !322)
!322 = !{!323, !324}
!323 = !DILocalVariable(name: "cpu", arg: 1, scope: !321, file: !1, line: 734, type: !112)
!324 = !DILocalVariable(name: "pf", arg: 2, scope: !321, file: !1, line: 734, type: !113)
!325 = !DILocation(line: 0, scope: !321)
!326 = !DILocation(line: 736, column: 5, scope: !321)
!327 = !DILocation(line: 736, column: 30, scope: !321)
!328 = !DILocation(line: 737, column: 5, scope: !321)
!329 = !DILocation(line: 737, column: 30, scope: !321)
!330 = !DILocation(line: 738, column: 30, scope: !321)
!331 = !DILocation(line: 739, column: 5, scope: !321)
!332 = !DILocation(line: 739, column: 30, scope: !321)
!333 = !DILocation(line: 740, column: 5, scope: !321)
!334 = !DILocation(line: 740, column: 30, scope: !321)
!335 = !DILocation(line: 741, column: 5, scope: !321)
!336 = !DILocation(line: 741, column: 30, scope: !321)
!337 = !DILocation(line: 742, column: 5, scope: !321)
!338 = !DILocation(line: 742, column: 30, scope: !321)
!339 = !DILocation(line: 756, column: 1, scope: !321)
!340 = distinct !DISubprogram(name: "predict_8x8c_v", scope: !1, file: !1, line: 257, type: !116, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !341)
!341 = !{!342, !343, !344, !345}
!342 = !DILocalVariable(name: "src", arg: 1, scope: !340, file: !1, line: 257, type: !118)
!343 = !DILocalVariable(name: "v0", scope: !340, file: !1, line: 259, type: !67)
!344 = !DILocalVariable(name: "v1", scope: !340, file: !1, line: 260, type: !67)
!345 = !DILocalVariable(name: "i", scope: !346, file: !1, line: 262, type: !112)
!346 = distinct !DILexicalBlock(scope: !340, file: !1, line: 262, column: 5)
!347 = !DILocation(line: 0, scope: !340)
!348 = !DILocation(line: 259, column: 19, scope: !340)
!349 = !DILocation(line: 260, column: 19, scope: !340)
!350 = !DILocation(line: 0, scope: !346)
!351 = !DILocation(line: 264, column: 22, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 263, column: 5)
!353 = distinct !DILexicalBlock(scope: !346, file: !1, line: 262, column: 5)
!354 = !DILocation(line: 265, column: 9, scope: !352)
!355 = !DILocation(line: 265, column: 22, scope: !352)
!356 = !DILocation(line: 266, column: 13, scope: !352)
!357 = !DILocation(line: 268, column: 1, scope: !340)
!358 = distinct !DISubprogram(name: "predict_8x8c_h", scope: !1, file: !1, line: 247, type: !116, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !359)
!359 = !{!360, !361, !363}
!360 = !DILocalVariable(name: "src", arg: 1, scope: !358, file: !1, line: 247, type: !118)
!361 = !DILocalVariable(name: "i", scope: !362, file: !1, line: 249, type: !112)
!362 = distinct !DILexicalBlock(scope: !358, file: !1, line: 249, column: 5)
!363 = !DILocalVariable(name: "v", scope: !364, file: !1, line: 251, type: !67)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 250, column: 5)
!365 = distinct !DILexicalBlock(scope: !362, file: !1, line: 249, column: 5)
!366 = !DILocation(line: 0, scope: !358)
!367 = !DILocation(line: 0, scope: !362)
!368 = !DILocation(line: 251, column: 35, scope: !364)
!369 = !DILocation(line: 251, column: 33, scope: !364)
!370 = !DILocation(line: 0, scope: !364)
!371 = !DILocation(line: 252, column: 22, scope: !364)
!372 = !DILocation(line: 253, column: 9, scope: !364)
!373 = !DILocation(line: 253, column: 22, scope: !364)
!374 = !DILocation(line: 254, column: 13, scope: !364)
!375 = !DILocation(line: 256, column: 1, scope: !358)
!376 = distinct !DISubprogram(name: "predict_8x8c_dc", scope: !1, file: !1, line: 208, type: !116, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !385, !386, !387, !388, !389, !391}
!378 = !DILocalVariable(name: "src", arg: 1, scope: !376, file: !1, line: 208, type: !118)
!379 = !DILocalVariable(name: "s0", scope: !376, file: !1, line: 210, type: !112)
!380 = !DILocalVariable(name: "s1", scope: !376, file: !1, line: 210, type: !112)
!381 = !DILocalVariable(name: "s2", scope: !376, file: !1, line: 210, type: !112)
!382 = !DILocalVariable(name: "s3", scope: !376, file: !1, line: 210, type: !112)
!383 = !DILocalVariable(name: "i", scope: !384, file: !1, line: 217, type: !112)
!384 = distinct !DILexicalBlock(scope: !376, file: !1, line: 217, column: 5)
!385 = !DILocalVariable(name: "dc0", scope: !376, file: !1, line: 228, type: !67)
!386 = !DILocalVariable(name: "dc1", scope: !376, file: !1, line: 229, type: !67)
!387 = !DILocalVariable(name: "dc2", scope: !376, file: !1, line: 230, type: !67)
!388 = !DILocalVariable(name: "dc3", scope: !376, file: !1, line: 231, type: !67)
!389 = !DILocalVariable(name: "y", scope: !390, file: !1, line: 233, type: !112)
!390 = distinct !DILexicalBlock(scope: !376, file: !1, line: 233, column: 5)
!391 = !DILocalVariable(name: "y", scope: !392, file: !1, line: 240, type: !112)
!392 = distinct !DILexicalBlock(scope: !376, file: !1, line: 240, column: 5)
!393 = !DILocation(line: 0, scope: !376)
!394 = !DILocation(line: 0, scope: !384)
!395 = !DILocation(line: 219, column: 15, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 218, column: 5)
!397 = distinct !DILexicalBlock(scope: !384, file: !1, line: 217, column: 5)
!398 = !DILocation(line: 220, column: 15, scope: !396)
!399 = !DILocation(line: 221, column: 15, scope: !396)
!400 = !DILocation(line: 222, column: 15, scope: !396)
!401 = !DILocation(line: 219, column: 12, scope: !396)
!402 = !DILocation(line: 220, column: 12, scope: !396)
!403 = !DILocation(line: 221, column: 12, scope: !396)
!404 = !DILocation(line: 222, column: 12, scope: !396)
!405 = !DILocation(line: 228, column: 26, scope: !376)
!406 = !DILocation(line: 228, column: 31, scope: !376)
!407 = !DILocation(line: 228, column: 37, scope: !376)
!408 = !DILocation(line: 228, column: 42, scope: !376)
!409 = !DILocation(line: 229, column: 26, scope: !376)
!410 = !DILocation(line: 229, column: 32, scope: !376)
!411 = !DILocation(line: 229, column: 37, scope: !376)
!412 = !DILocation(line: 230, column: 26, scope: !376)
!413 = !DILocation(line: 230, column: 32, scope: !376)
!414 = !DILocation(line: 231, column: 26, scope: !376)
!415 = !DILocation(line: 231, column: 31, scope: !376)
!416 = !DILocation(line: 231, column: 37, scope: !376)
!417 = !DILocation(line: 0, scope: !390)
!418 = !DILocation(line: 235, column: 22, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 234, column: 5)
!420 = distinct !DILexicalBlock(scope: !390, file: !1, line: 233, column: 5)
!421 = !DILocation(line: 236, column: 9, scope: !419)
!422 = !DILocation(line: 236, column: 22, scope: !419)
!423 = !DILocation(line: 237, column: 13, scope: !419)
!424 = !DILocation(line: 230, column: 37, scope: !376)
!425 = !DILocation(line: 231, column: 42, scope: !376)
!426 = !DILocation(line: 0, scope: !392)
!427 = !DILocation(line: 242, column: 22, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !1, line: 241, column: 5)
!429 = distinct !DILexicalBlock(scope: !392, file: !1, line: 240, column: 5)
!430 = !DILocation(line: 243, column: 9, scope: !428)
!431 = !DILocation(line: 243, column: 22, scope: !428)
!432 = !DILocation(line: 244, column: 13, scope: !428)
!433 = !DILocation(line: 246, column: 1, scope: !376)
!434 = distinct !DISubprogram(name: "predict_8x8c_p", scope: !1, file: !1, line: 269, type: !116, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !435)
!435 = !{!436, !437, !438, !439, !441, !442, !443, !444, !445, !447, !450}
!436 = !DILocalVariable(name: "src", arg: 1, scope: !434, file: !1, line: 269, type: !118)
!437 = !DILocalVariable(name: "H", scope: !434, file: !1, line: 271, type: !112)
!438 = !DILocalVariable(name: "V", scope: !434, file: !1, line: 271, type: !112)
!439 = !DILocalVariable(name: "i", scope: !440, file: !1, line: 273, type: !112)
!440 = distinct !DILexicalBlock(scope: !434, file: !1, line: 273, column: 5)
!441 = !DILocalVariable(name: "a", scope: !434, file: !1, line: 279, type: !112)
!442 = !DILocalVariable(name: "b", scope: !434, file: !1, line: 280, type: !112)
!443 = !DILocalVariable(name: "c", scope: !434, file: !1, line: 281, type: !112)
!444 = !DILocalVariable(name: "i00", scope: !434, file: !1, line: 282, type: !112)
!445 = !DILocalVariable(name: "y", scope: !446, file: !1, line: 284, type: !112)
!446 = distinct !DILexicalBlock(scope: !434, file: !1, line: 284, column: 5)
!447 = !DILocalVariable(name: "pix", scope: !448, file: !1, line: 286, type: !112)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 285, column: 5)
!449 = distinct !DILexicalBlock(scope: !446, file: !1, line: 284, column: 5)
!450 = !DILocalVariable(name: "x", scope: !451, file: !1, line: 287, type: !112)
!451 = distinct !DILexicalBlock(scope: !448, file: !1, line: 287, column: 9)
!452 = !DILocation(line: 0, scope: !434)
!453 = !DILocation(line: 0, scope: !440)
!454 = !DILocation(line: 273, column: 10, scope: !440)
!455 = !DILocation(line: 275, column: 28, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 274, column: 5)
!457 = distinct !DILexicalBlock(scope: !440, file: !1, line: 273, column: 5)
!458 = !DILocation(line: 275, column: 53, scope: !456)
!459 = !DILocation(line: 275, column: 51, scope: !456)
!460 = !DILocation(line: 276, column: 28, scope: !456)
!461 = !DILocation(line: 276, column: 57, scope: !456)
!462 = !DILocation(line: 276, column: 55, scope: !456)
!463 = !DILocation(line: 275, column: 24, scope: !456)
!464 = !DILocation(line: 275, column: 11, scope: !456)
!465 = !DILocation(line: 276, column: 24, scope: !456)
!466 = !DILocation(line: 276, column: 11, scope: !456)
!467 = !DILocation(line: 279, column: 42, scope: !434)
!468 = !DILocation(line: 279, column: 16, scope: !434)
!469 = !DILocation(line: 280, column: 18, scope: !434)
!470 = !DILocation(line: 280, column: 22, scope: !434)
!471 = !DILocation(line: 280, column: 29, scope: !434)
!472 = !DILocation(line: 281, column: 18, scope: !434)
!473 = !DILocation(line: 281, column: 22, scope: !434)
!474 = !DILocation(line: 281, column: 29, scope: !434)
!475 = !DILocation(line: 282, column: 22, scope: !434)
!476 = !DILocation(line: 282, column: 27, scope: !434)
!477 = !DILocation(line: 0, scope: !446)
!478 = !DILocation(line: 284, column: 5, scope: !446)
!479 = !DILocation(line: 290, column: 17, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 288, column: 9)
!481 = distinct !DILexicalBlock(scope: !451, file: !1, line: 287, column: 9)
!482 = !DILocation(line: 289, column: 42, scope: !480)
!483 = !DILocation(line: 197, column: 12, scope: !255, inlinedAt: !484)
!484 = distinct !DILocation(line: 289, column: 22, scope: !480)
!485 = !DILocation(line: 197, column: 13, scope: !255, inlinedAt: !484)
!486 = !DILocation(line: 289, column: 20, scope: !480)
!487 = distinct !{!487, !478, !488, !265, !266}
!488 = !DILocation(line: 294, column: 5, scope: !446)
!489 = !DILocation(line: 295, column: 1, scope: !434)
!490 = distinct !DISubprogram(name: "predict_8x8c_dc_left", scope: !1, file: !1, line: 163, type: !116, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !491)
!491 = !{!492, !493, !494, !495, !497, !499}
!492 = !DILocalVariable(name: "src", arg: 1, scope: !490, file: !1, line: 163, type: !118)
!493 = !DILocalVariable(name: "dc0", scope: !490, file: !1, line: 165, type: !67)
!494 = !DILocalVariable(name: "dc1", scope: !490, file: !1, line: 165, type: !67)
!495 = !DILocalVariable(name: "y", scope: !496, file: !1, line: 167, type: !112)
!496 = distinct !DILexicalBlock(scope: !490, file: !1, line: 167, column: 5)
!497 = !DILocalVariable(name: "y", scope: !498, file: !1, line: 175, type: !112)
!498 = distinct !DILexicalBlock(scope: !490, file: !1, line: 175, column: 5)
!499 = !DILocalVariable(name: "y", scope: !500, file: !1, line: 181, type: !112)
!500 = distinct !DILexicalBlock(scope: !490, file: !1, line: 181, column: 5)
!501 = !DILocation(line: 0, scope: !490)
!502 = !DILocation(line: 0, scope: !496)
!503 = !DILocation(line: 169, column: 16, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 168, column: 5)
!505 = distinct !DILexicalBlock(scope: !496, file: !1, line: 167, column: 5)
!506 = !DILocation(line: 170, column: 16, scope: !504)
!507 = !DILocation(line: 169, column: 13, scope: !504)
!508 = !DILocation(line: 170, column: 13, scope: !504)
!509 = !DILocation(line: 172, column: 18, scope: !490)
!510 = !DILocation(line: 172, column: 24, scope: !490)
!511 = !DILocation(line: 172, column: 29, scope: !490)
!512 = !DILocation(line: 173, column: 18, scope: !490)
!513 = !DILocation(line: 173, column: 24, scope: !490)
!514 = !DILocation(line: 0, scope: !498)
!515 = !DILocation(line: 177, column: 22, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 176, column: 5)
!517 = distinct !DILexicalBlock(scope: !498, file: !1, line: 175, column: 5)
!518 = !DILocation(line: 178, column: 9, scope: !516)
!519 = !DILocation(line: 178, column: 22, scope: !516)
!520 = !DILocation(line: 179, column: 13, scope: !516)
!521 = !DILocation(line: 173, column: 29, scope: !490)
!522 = !DILocation(line: 0, scope: !500)
!523 = !DILocation(line: 183, column: 22, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 182, column: 5)
!525 = distinct !DILexicalBlock(scope: !500, file: !1, line: 181, column: 5)
!526 = !DILocation(line: 184, column: 9, scope: !524)
!527 = !DILocation(line: 184, column: 22, scope: !524)
!528 = !DILocation(line: 185, column: 13, scope: !524)
!529 = !DILocation(line: 188, column: 1, scope: !490)
!530 = distinct !DISubprogram(name: "predict_8x8c_dc_top", scope: !1, file: !1, line: 189, type: !116, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !531)
!531 = !{!532, !533, !534, !535, !537}
!532 = !DILocalVariable(name: "src", arg: 1, scope: !530, file: !1, line: 189, type: !118)
!533 = !DILocalVariable(name: "dc0", scope: !530, file: !1, line: 191, type: !67)
!534 = !DILocalVariable(name: "dc1", scope: !530, file: !1, line: 191, type: !67)
!535 = !DILocalVariable(name: "x", scope: !536, file: !1, line: 193, type: !112)
!536 = distinct !DILexicalBlock(scope: !530, file: !1, line: 193, column: 5)
!537 = !DILocalVariable(name: "y", scope: !538, file: !1, line: 201, type: !112)
!538 = distinct !DILexicalBlock(scope: !530, file: !1, line: 201, column: 5)
!539 = !DILocation(line: 0, scope: !530)
!540 = !DILocation(line: 0, scope: !536)
!541 = !DILocation(line: 195, column: 16, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !1, line: 194, column: 5)
!543 = distinct !DILexicalBlock(scope: !536, file: !1, line: 193, column: 5)
!544 = !DILocation(line: 196, column: 16, scope: !542)
!545 = !DILocation(line: 195, column: 13, scope: !542)
!546 = !DILocation(line: 196, column: 13, scope: !542)
!547 = !DILocation(line: 198, column: 18, scope: !530)
!548 = !DILocation(line: 198, column: 24, scope: !530)
!549 = !DILocation(line: 198, column: 29, scope: !530)
!550 = !DILocation(line: 199, column: 18, scope: !530)
!551 = !DILocation(line: 199, column: 24, scope: !530)
!552 = !DILocation(line: 199, column: 29, scope: !530)
!553 = !DILocation(line: 0, scope: !538)
!554 = !DILocation(line: 203, column: 22, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 202, column: 5)
!556 = distinct !DILexicalBlock(scope: !538, file: !1, line: 201, column: 5)
!557 = !DILocation(line: 204, column: 9, scope: !555)
!558 = !DILocation(line: 204, column: 22, scope: !555)
!559 = !DILocation(line: 205, column: 13, scope: !555)
!560 = !DILocation(line: 207, column: 1, scope: !530)
!561 = distinct !DISubprogram(name: "predict_8x8c_dc_128", scope: !1, file: !1, line: 154, type: !116, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !562)
!562 = !{!563, !564}
!563 = !DILocalVariable(name: "src", arg: 1, scope: !561, file: !1, line: 154, type: !118)
!564 = !DILocalVariable(name: "y", scope: !565, file: !1, line: 156, type: !112)
!565 = distinct !DILexicalBlock(scope: !561, file: !1, line: 156, column: 5)
!566 = !DILocation(line: 0, scope: !561)
!567 = !DILocation(line: 0, scope: !565)
!568 = !DILocation(line: 158, column: 22, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 157, column: 5)
!570 = distinct !DILexicalBlock(scope: !565, file: !1, line: 156, column: 5)
!571 = !DILocation(line: 159, column: 9, scope: !569)
!572 = !DILocation(line: 159, column: 22, scope: !569)
!573 = !DILocation(line: 160, column: 13, scope: !569)
!574 = !DILocation(line: 162, column: 1, scope: !561)
!575 = distinct !DISubprogram(name: "x264_predict_8x8_init", scope: !1, file: !1, line: 758, type: !576, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !588)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !112, !578, !583}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !4, line: 28, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !118, !118}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !4, line: 29, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !118, !118, !112, !112}
!588 = !{!589, !590, !591}
!589 = !DILocalVariable(name: "cpu", arg: 1, scope: !575, file: !1, line: 758, type: !112)
!590 = !DILocalVariable(name: "pf", arg: 2, scope: !575, file: !1, line: 758, type: !578)
!591 = !DILocalVariable(name: "predict_filter", arg: 3, scope: !575, file: !1, line: 758, type: !583)
!592 = !DILocation(line: 0, scope: !575)
!593 = !DILocation(line: 760, column: 27, scope: !575)
!594 = !DILocation(line: 761, column: 5, scope: !575)
!595 = !DILocation(line: 761, column: 27, scope: !575)
!596 = !DILocation(line: 762, column: 5, scope: !575)
!597 = !DILocation(line: 762, column: 27, scope: !575)
!598 = !DILocation(line: 763, column: 5, scope: !575)
!599 = !DILocation(line: 763, column: 27, scope: !575)
!600 = !DILocation(line: 764, column: 5, scope: !575)
!601 = !DILocation(line: 764, column: 27, scope: !575)
!602 = !DILocation(line: 765, column: 5, scope: !575)
!603 = !DILocation(line: 765, column: 27, scope: !575)
!604 = !DILocation(line: 766, column: 5, scope: !575)
!605 = !DILocation(line: 766, column: 27, scope: !575)
!606 = !DILocation(line: 767, column: 5, scope: !575)
!607 = !DILocation(line: 767, column: 27, scope: !575)
!608 = !DILocation(line: 768, column: 5, scope: !575)
!609 = !DILocation(line: 768, column: 27, scope: !575)
!610 = !DILocation(line: 769, column: 5, scope: !575)
!611 = !DILocation(line: 769, column: 27, scope: !575)
!612 = !DILocation(line: 770, column: 5, scope: !575)
!613 = !DILocation(line: 770, column: 27, scope: !575)
!614 = !DILocation(line: 771, column: 5, scope: !575)
!615 = !DILocation(line: 771, column: 27, scope: !575)
!616 = !DILocation(line: 772, column: 27, scope: !575)
!617 = !DILocation(line: 781, column: 1, scope: !575)
!618 = distinct !DISubprogram(name: "predict_8x8_v", scope: !1, file: !1, line: 556, type: !581, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !619)
!619 = !{!620, !621, !622, !623}
!620 = !DILocalVariable(name: "src", arg: 1, scope: !618, file: !1, line: 556, type: !118)
!621 = !DILocalVariable(name: "edge", arg: 2, scope: !618, file: !1, line: 556, type: !118)
!622 = !DILocalVariable(name: "top", scope: !618, file: !1, line: 558, type: !90)
!623 = !DILocalVariable(name: "y", scope: !624, file: !1, line: 559, type: !112)
!624 = distinct !DILexicalBlock(scope: !618, file: !1, line: 559, column: 5)
!625 = !DILocation(line: 0, scope: !618)
!626 = !DILocation(line: 558, column: 20, scope: !618)
!627 = !DILocation(line: 0, scope: !624)
!628 = !DILocation(line: 560, column: 34, scope: !629)
!629 = distinct !DILexicalBlock(scope: !624, file: !1, line: 559, column: 5)
!630 = !DILocation(line: 560, column: 9, scope: !629)
!631 = !DILocation(line: 561, column: 1, scope: !618)
!632 = distinct !DISubprogram(name: "predict_8x8_h", scope: !1, file: !1, line: 548, type: !581, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !633)
!633 = !{!634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!634 = !DILocalVariable(name: "src", arg: 1, scope: !632, file: !1, line: 548, type: !118)
!635 = !DILocalVariable(name: "edge", arg: 2, scope: !632, file: !1, line: 548, type: !118)
!636 = !DILocalVariable(name: "l0", scope: !632, file: !1, line: 550, type: !112)
!637 = !DILocalVariable(name: "l1", scope: !632, file: !1, line: 550, type: !112)
!638 = !DILocalVariable(name: "l2", scope: !632, file: !1, line: 550, type: !112)
!639 = !DILocalVariable(name: "l3", scope: !632, file: !1, line: 550, type: !112)
!640 = !DILocalVariable(name: "l4", scope: !632, file: !1, line: 550, type: !112)
!641 = !DILocalVariable(name: "l5", scope: !632, file: !1, line: 550, type: !112)
!642 = !DILocalVariable(name: "l6", scope: !632, file: !1, line: 550, type: !112)
!643 = !DILocalVariable(name: "l7", scope: !632, file: !1, line: 550, type: !112)
!644 = !DILocation(line: 0, scope: !632)
!645 = !DILocation(line: 550, column: 5, scope: !632)
!646 = !DILocation(line: 553, column: 5, scope: !632)
!647 = !DILocation(line: 553, column: 13, scope: !632)
!648 = !DILocation(line: 553, column: 21, scope: !632)
!649 = !DILocation(line: 553, column: 29, scope: !632)
!650 = !DILocation(line: 553, column: 37, scope: !632)
!651 = !DILocation(line: 553, column: 45, scope: !632)
!652 = !DILocation(line: 553, column: 53, scope: !632)
!653 = !DILocation(line: 553, column: 61, scope: !632)
!654 = !DILocation(line: 555, column: 1, scope: !632)
!655 = distinct !DISubprogram(name: "predict_8x8_dc", scope: !1, file: !1, line: 540, type: !581, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676}
!657 = !DILocalVariable(name: "src", arg: 1, scope: !655, file: !1, line: 540, type: !118)
!658 = !DILocalVariable(name: "edge", arg: 2, scope: !655, file: !1, line: 540, type: !118)
!659 = !DILocalVariable(name: "l0", scope: !655, file: !1, line: 542, type: !112)
!660 = !DILocalVariable(name: "l1", scope: !655, file: !1, line: 542, type: !112)
!661 = !DILocalVariable(name: "l2", scope: !655, file: !1, line: 542, type: !112)
!662 = !DILocalVariable(name: "l3", scope: !655, file: !1, line: 542, type: !112)
!663 = !DILocalVariable(name: "l4", scope: !655, file: !1, line: 542, type: !112)
!664 = !DILocalVariable(name: "l5", scope: !655, file: !1, line: 542, type: !112)
!665 = !DILocalVariable(name: "l6", scope: !655, file: !1, line: 542, type: !112)
!666 = !DILocalVariable(name: "l7", scope: !655, file: !1, line: 542, type: !112)
!667 = !DILocalVariable(name: "t0", scope: !655, file: !1, line: 543, type: !112)
!668 = !DILocalVariable(name: "t1", scope: !655, file: !1, line: 543, type: !112)
!669 = !DILocalVariable(name: "t2", scope: !655, file: !1, line: 543, type: !112)
!670 = !DILocalVariable(name: "t3", scope: !655, file: !1, line: 543, type: !112)
!671 = !DILocalVariable(name: "t4", scope: !655, file: !1, line: 543, type: !112)
!672 = !DILocalVariable(name: "t5", scope: !655, file: !1, line: 543, type: !112)
!673 = !DILocalVariable(name: "t6", scope: !655, file: !1, line: 543, type: !112)
!674 = !DILocalVariable(name: "t7", scope: !655, file: !1, line: 543, type: !112)
!675 = !DILocalVariable(name: "dc", scope: !655, file: !1, line: 544, type: !67)
!676 = !DILocalVariable(name: "y", scope: !677, file: !1, line: 546, type: !112)
!677 = distinct !DILexicalBlock(scope: !655, file: !1, line: 546, column: 5)
!678 = !DILocation(line: 0, scope: !655)
!679 = !DILocation(line: 542, column: 5, scope: !655)
!680 = !DILocation(line: 543, column: 5, scope: !655)
!681 = !DILocation(line: 544, column: 23, scope: !655)
!682 = !DILocation(line: 544, column: 26, scope: !655)
!683 = !DILocation(line: 544, column: 29, scope: !655)
!684 = !DILocation(line: 544, column: 32, scope: !655)
!685 = !DILocation(line: 544, column: 35, scope: !655)
!686 = !DILocation(line: 544, column: 38, scope: !655)
!687 = !DILocation(line: 544, column: 41, scope: !655)
!688 = !DILocation(line: 545, column: 20, scope: !655)
!689 = !DILocation(line: 545, column: 23, scope: !655)
!690 = !DILocation(line: 545, column: 26, scope: !655)
!691 = !DILocation(line: 545, column: 29, scope: !655)
!692 = !DILocation(line: 545, column: 32, scope: !655)
!693 = !DILocation(line: 545, column: 35, scope: !655)
!694 = !DILocation(line: 545, column: 38, scope: !655)
!695 = !DILocation(line: 545, column: 41, scope: !655)
!696 = !DILocation(line: 545, column: 44, scope: !655)
!697 = !DILocation(line: 545, column: 48, scope: !655)
!698 = !DILocation(line: 545, column: 54, scope: !655)
!699 = !DILocation(line: 0, scope: !677)
!700 = !DILocation(line: 546, column: 5, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 546, column: 5)
!702 = distinct !DILexicalBlock(scope: !677, file: !1, line: 546, column: 5)
!703 = !DILocation(line: 547, column: 1, scope: !655)
!704 = distinct !DISubprogram(name: "predict_8x8_ddl", scope: !1, file: !1, line: 562, type: !581, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !705)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!706 = !DILocalVariable(name: "src", arg: 1, scope: !704, file: !1, line: 562, type: !118)
!707 = !DILocalVariable(name: "edge", arg: 2, scope: !704, file: !1, line: 562, type: !118)
!708 = !DILocalVariable(name: "t0", scope: !704, file: !1, line: 564, type: !112)
!709 = !DILocalVariable(name: "t1", scope: !704, file: !1, line: 564, type: !112)
!710 = !DILocalVariable(name: "t2", scope: !704, file: !1, line: 564, type: !112)
!711 = !DILocalVariable(name: "t3", scope: !704, file: !1, line: 564, type: !112)
!712 = !DILocalVariable(name: "t4", scope: !704, file: !1, line: 564, type: !112)
!713 = !DILocalVariable(name: "t5", scope: !704, file: !1, line: 564, type: !112)
!714 = !DILocalVariable(name: "t6", scope: !704, file: !1, line: 564, type: !112)
!715 = !DILocalVariable(name: "t7", scope: !704, file: !1, line: 564, type: !112)
!716 = !DILocalVariable(name: "t8", scope: !704, file: !1, line: 565, type: !112)
!717 = !DILocalVariable(name: "t9", scope: !704, file: !1, line: 565, type: !112)
!718 = !DILocalVariable(name: "t10", scope: !704, file: !1, line: 565, type: !112)
!719 = !DILocalVariable(name: "t11", scope: !704, file: !1, line: 565, type: !112)
!720 = !DILocalVariable(name: "t12", scope: !704, file: !1, line: 565, type: !112)
!721 = !DILocalVariable(name: "t13", scope: !704, file: !1, line: 565, type: !112)
!722 = !DILocalVariable(name: "t14", scope: !704, file: !1, line: 565, type: !112)
!723 = !DILocalVariable(name: "t15", scope: !704, file: !1, line: 565, type: !112)
!724 = !DILocation(line: 0, scope: !704)
!725 = !DILocation(line: 564, column: 5, scope: !704)
!726 = !DILocation(line: 565, column: 5, scope: !704)
!727 = !DILocation(line: 566, column: 15, scope: !704)
!728 = !DILocation(line: 567, column: 24, scope: !704)
!729 = !DILocation(line: 567, column: 14, scope: !704)
!730 = !DILocation(line: 567, column: 5, scope: !704)
!731 = !DILocation(line: 568, column: 33, scope: !704)
!732 = !DILocation(line: 568, column: 23, scope: !704)
!733 = !DILocation(line: 568, column: 14, scope: !704)
!734 = !DILocation(line: 568, column: 5, scope: !704)
!735 = !DILocation(line: 569, column: 32, scope: !704)
!736 = !DILocation(line: 569, column: 23, scope: !704)
!737 = !DILocation(line: 569, column: 14, scope: !704)
!738 = !DILocation(line: 569, column: 5, scope: !704)
!739 = !DILocation(line: 570, column: 41, scope: !704)
!740 = !DILocation(line: 570, column: 32, scope: !704)
!741 = !DILocation(line: 570, column: 23, scope: !704)
!742 = !DILocation(line: 570, column: 14, scope: !704)
!743 = !DILocation(line: 570, column: 5, scope: !704)
!744 = !DILocation(line: 571, column: 5, scope: !704)
!745 = !DILocation(line: 572, column: 5, scope: !704)
!746 = !DILocation(line: 569, column: 42, scope: !704)
!747 = !DILocation(line: 570, column: 51, scope: !704)
!748 = !DILocation(line: 573, column: 5, scope: !704)
!749 = !DILocation(line: 574, column: 59, scope: !704)
!750 = !DILocation(line: 574, column: 50, scope: !704)
!751 = !DILocation(line: 574, column: 41, scope: !704)
!752 = !DILocation(line: 574, column: 32, scope: !704)
!753 = !DILocation(line: 575, column: 50, scope: !704)
!754 = !DILocation(line: 575, column: 41, scope: !704)
!755 = !DILocation(line: 575, column: 23, scope: !704)
!756 = !DILocation(line: 576, column: 41, scope: !704)
!757 = !DILocation(line: 576, column: 23, scope: !704)
!758 = !DILocation(line: 576, column: 14, scope: !704)
!759 = !DILocation(line: 566, column: 13, scope: !704)
!760 = !DILocation(line: 567, column: 22, scope: !704)
!761 = !DILocation(line: 567, column: 13, scope: !704)
!762 = !DILocation(line: 568, column: 31, scope: !704)
!763 = !DILocation(line: 568, column: 22, scope: !704)
!764 = !DILocation(line: 568, column: 13, scope: !704)
!765 = !DILocation(line: 569, column: 40, scope: !704)
!766 = !DILocation(line: 569, column: 31, scope: !704)
!767 = !DILocation(line: 569, column: 22, scope: !704)
!768 = !DILocation(line: 569, column: 13, scope: !704)
!769 = !DILocation(line: 570, column: 49, scope: !704)
!770 = !DILocation(line: 570, column: 40, scope: !704)
!771 = !DILocation(line: 570, column: 31, scope: !704)
!772 = !DILocation(line: 570, column: 22, scope: !704)
!773 = !DILocation(line: 570, column: 13, scope: !704)
!774 = !DILocation(line: 574, column: 69, scope: !704)
!775 = !DILocation(line: 574, column: 13, scope: !704)
!776 = !DILocation(line: 574, column: 67, scope: !704)
!777 = !DILocation(line: 574, column: 58, scope: !704)
!778 = !DILocation(line: 574, column: 49, scope: !704)
!779 = !DILocation(line: 571, column: 13, scope: !704)
!780 = !DILocation(line: 575, column: 13, scope: !704)
!781 = !DILocation(line: 575, column: 58, scope: !704)
!782 = !DILocation(line: 575, column: 49, scope: !704)
!783 = !DILocation(line: 575, column: 31, scope: !704)
!784 = !DILocation(line: 572, column: 13, scope: !704)
!785 = !DILocation(line: 576, column: 13, scope: !704)
!786 = !DILocation(line: 576, column: 49, scope: !704)
!787 = !DILocation(line: 576, column: 31, scope: !704)
!788 = !DILocation(line: 576, column: 22, scope: !704)
!789 = !DILocation(line: 573, column: 13, scope: !704)
!790 = !DILocation(line: 574, column: 40, scope: !704)
!791 = !DILocation(line: 577, column: 23, scope: !704)
!792 = !DILocation(line: 577, column: 13, scope: !704)
!793 = !DILocation(line: 577, column: 31, scope: !704)
!794 = !DILocation(line: 577, column: 14, scope: !704)
!795 = !DILocation(line: 577, column: 22, scope: !704)
!796 = !DILocation(line: 577, column: 5, scope: !704)
!797 = !DILocation(line: 578, column: 33, scope: !704)
!798 = !DILocation(line: 578, column: 23, scope: !704)
!799 = !DILocation(line: 578, column: 31, scope: !704)
!800 = !DILocation(line: 578, column: 14, scope: !704)
!801 = !DILocation(line: 578, column: 22, scope: !704)
!802 = !DILocation(line: 578, column: 5, scope: !704)
!803 = !DILocation(line: 578, column: 13, scope: !704)
!804 = !DILocation(line: 579, column: 24, scope: !704)
!805 = !DILocation(line: 579, column: 14, scope: !704)
!806 = !DILocation(line: 579, column: 22, scope: !704)
!807 = !DILocation(line: 579, column: 5, scope: !704)
!808 = !DILocation(line: 579, column: 13, scope: !704)
!809 = !DILocation(line: 580, column: 15, scope: !704)
!810 = !DILocation(line: 580, column: 5, scope: !704)
!811 = !DILocation(line: 580, column: 13, scope: !704)
!812 = !DILocation(line: 581, column: 1, scope: !704)
!813 = distinct !DISubprogram(name: "predict_8x8_ddr", scope: !1, file: !1, line: 582, type: !581, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !814)
!814 = !{!815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833}
!815 = !DILocalVariable(name: "src", arg: 1, scope: !813, file: !1, line: 582, type: !118)
!816 = !DILocalVariable(name: "edge", arg: 2, scope: !813, file: !1, line: 582, type: !118)
!817 = !DILocalVariable(name: "t0", scope: !813, file: !1, line: 584, type: !112)
!818 = !DILocalVariable(name: "t1", scope: !813, file: !1, line: 584, type: !112)
!819 = !DILocalVariable(name: "t2", scope: !813, file: !1, line: 584, type: !112)
!820 = !DILocalVariable(name: "t3", scope: !813, file: !1, line: 584, type: !112)
!821 = !DILocalVariable(name: "t4", scope: !813, file: !1, line: 584, type: !112)
!822 = !DILocalVariable(name: "t5", scope: !813, file: !1, line: 584, type: !112)
!823 = !DILocalVariable(name: "t6", scope: !813, file: !1, line: 584, type: !112)
!824 = !DILocalVariable(name: "t7", scope: !813, file: !1, line: 584, type: !112)
!825 = !DILocalVariable(name: "l0", scope: !813, file: !1, line: 585, type: !112)
!826 = !DILocalVariable(name: "l1", scope: !813, file: !1, line: 585, type: !112)
!827 = !DILocalVariable(name: "l2", scope: !813, file: !1, line: 585, type: !112)
!828 = !DILocalVariable(name: "l3", scope: !813, file: !1, line: 585, type: !112)
!829 = !DILocalVariable(name: "l4", scope: !813, file: !1, line: 585, type: !112)
!830 = !DILocalVariable(name: "l5", scope: !813, file: !1, line: 585, type: !112)
!831 = !DILocalVariable(name: "l6", scope: !813, file: !1, line: 585, type: !112)
!832 = !DILocalVariable(name: "l7", scope: !813, file: !1, line: 585, type: !112)
!833 = !DILocalVariable(name: "lt", scope: !813, file: !1, line: 586, type: !112)
!834 = !DILocation(line: 0, scope: !813)
!835 = !DILocation(line: 584, column: 5, scope: !813)
!836 = !DILocation(line: 585, column: 5, scope: !813)
!837 = !DILocation(line: 586, column: 5, scope: !813)
!838 = !DILocation(line: 587, column: 15, scope: !813)
!839 = !DILocation(line: 587, column: 5, scope: !813)
!840 = !DILocation(line: 588, column: 24, scope: !813)
!841 = !DILocation(line: 588, column: 14, scope: !813)
!842 = !DILocation(line: 588, column: 5, scope: !813)
!843 = !DILocation(line: 589, column: 23, scope: !813)
!844 = !DILocation(line: 589, column: 14, scope: !813)
!845 = !DILocation(line: 589, column: 5, scope: !813)
!846 = !DILocation(line: 590, column: 5, scope: !813)
!847 = !DILocation(line: 591, column: 14, scope: !813)
!848 = !DILocation(line: 591, column: 5, scope: !813)
!849 = !DILocation(line: 592, column: 23, scope: !813)
!850 = !DILocation(line: 592, column: 14, scope: !813)
!851 = !DILocation(line: 592, column: 5, scope: !813)
!852 = !DILocation(line: 593, column: 59, scope: !813)
!853 = !DILocation(line: 593, column: 50, scope: !813)
!854 = !DILocation(line: 593, column: 41, scope: !813)
!855 = !DILocation(line: 593, column: 32, scope: !813)
!856 = !DILocation(line: 593, column: 23, scope: !813)
!857 = !DILocation(line: 593, column: 14, scope: !813)
!858 = !DILocation(line: 593, column: 5, scope: !813)
!859 = !DILocation(line: 594, column: 78, scope: !813)
!860 = !DILocation(line: 594, column: 68, scope: !813)
!861 = !DILocation(line: 594, column: 59, scope: !813)
!862 = !DILocation(line: 594, column: 50, scope: !813)
!863 = !DILocation(line: 594, column: 41, scope: !813)
!864 = !DILocation(line: 594, column: 32, scope: !813)
!865 = !DILocation(line: 594, column: 23, scope: !813)
!866 = !DILocation(line: 594, column: 14, scope: !813)
!867 = !DILocation(line: 595, column: 69, scope: !813)
!868 = !DILocation(line: 595, column: 59, scope: !813)
!869 = !DILocation(line: 595, column: 50, scope: !813)
!870 = !DILocation(line: 595, column: 41, scope: !813)
!871 = !DILocation(line: 595, column: 32, scope: !813)
!872 = !DILocation(line: 595, column: 23, scope: !813)
!873 = !DILocation(line: 595, column: 14, scope: !813)
!874 = !DILocation(line: 595, column: 5, scope: !813)
!875 = !DILocation(line: 596, column: 60, scope: !813)
!876 = !DILocation(line: 596, column: 50, scope: !813)
!877 = !DILocation(line: 596, column: 41, scope: !813)
!878 = !DILocation(line: 596, column: 32, scope: !813)
!879 = !DILocation(line: 596, column: 23, scope: !813)
!880 = !DILocation(line: 596, column: 14, scope: !813)
!881 = !DILocation(line: 596, column: 5, scope: !813)
!882 = !DILocation(line: 597, column: 41, scope: !813)
!883 = !DILocation(line: 597, column: 32, scope: !813)
!884 = !DILocation(line: 597, column: 23, scope: !813)
!885 = !DILocation(line: 597, column: 14, scope: !813)
!886 = !DILocation(line: 597, column: 5, scope: !813)
!887 = !DILocation(line: 598, column: 32, scope: !813)
!888 = !DILocation(line: 598, column: 23, scope: !813)
!889 = !DILocation(line: 598, column: 14, scope: !813)
!890 = !DILocation(line: 598, column: 5, scope: !813)
!891 = !DILocation(line: 599, column: 23, scope: !813)
!892 = !DILocation(line: 599, column: 14, scope: !813)
!893 = !DILocation(line: 600, column: 14, scope: !813)
!894 = !DILocation(line: 589, column: 33, scope: !813)
!895 = !DILocation(line: 593, column: 69, scope: !813)
!896 = !DILocation(line: 587, column: 13, scope: !813)
!897 = !DILocation(line: 588, column: 22, scope: !813)
!898 = !DILocation(line: 588, column: 13, scope: !813)
!899 = !DILocation(line: 590, column: 13, scope: !813)
!900 = !DILocation(line: 591, column: 13, scope: !813)
!901 = !DILocation(line: 591, column: 22, scope: !813)
!902 = !DILocation(line: 589, column: 31, scope: !813)
!903 = !DILocation(line: 589, column: 22, scope: !813)
!904 = !DILocation(line: 589, column: 13, scope: !813)
!905 = !DILocation(line: 592, column: 13, scope: !813)
!906 = !DILocation(line: 592, column: 31, scope: !813)
!907 = !DILocation(line: 592, column: 22, scope: !813)
!908 = !DILocation(line: 593, column: 67, scope: !813)
!909 = !DILocation(line: 593, column: 58, scope: !813)
!910 = !DILocation(line: 593, column: 49, scope: !813)
!911 = !DILocation(line: 593, column: 40, scope: !813)
!912 = !DILocation(line: 593, column: 31, scope: !813)
!913 = !DILocation(line: 593, column: 22, scope: !813)
!914 = !DILocation(line: 593, column: 13, scope: !813)
!915 = !DILocation(line: 594, column: 76, scope: !813)
!916 = !DILocation(line: 594, column: 67, scope: !813)
!917 = !DILocation(line: 594, column: 58, scope: !813)
!918 = !DILocation(line: 594, column: 49, scope: !813)
!919 = !DILocation(line: 594, column: 40, scope: !813)
!920 = !DILocation(line: 594, column: 31, scope: !813)
!921 = !DILocation(line: 594, column: 22, scope: !813)
!922 = !DILocation(line: 594, column: 13, scope: !813)
!923 = !DILocation(line: 595, column: 67, scope: !813)
!924 = !DILocation(line: 595, column: 58, scope: !813)
!925 = !DILocation(line: 595, column: 49, scope: !813)
!926 = !DILocation(line: 595, column: 40, scope: !813)
!927 = !DILocation(line: 595, column: 31, scope: !813)
!928 = !DILocation(line: 595, column: 22, scope: !813)
!929 = !DILocation(line: 595, column: 13, scope: !813)
!930 = !DILocation(line: 597, column: 51, scope: !813)
!931 = !DILocation(line: 596, column: 58, scope: !813)
!932 = !DILocation(line: 596, column: 49, scope: !813)
!933 = !DILocation(line: 596, column: 40, scope: !813)
!934 = !DILocation(line: 596, column: 31, scope: !813)
!935 = !DILocation(line: 596, column: 22, scope: !813)
!936 = !DILocation(line: 596, column: 13, scope: !813)
!937 = !DILocation(line: 597, column: 49, scope: !813)
!938 = !DILocation(line: 597, column: 40, scope: !813)
!939 = !DILocation(line: 597, column: 31, scope: !813)
!940 = !DILocation(line: 597, column: 22, scope: !813)
!941 = !DILocation(line: 597, column: 13, scope: !813)
!942 = !DILocation(line: 598, column: 42, scope: !813)
!943 = !DILocation(line: 598, column: 22, scope: !813)
!944 = !DILocation(line: 598, column: 40, scope: !813)
!945 = !DILocation(line: 598, column: 31, scope: !813)
!946 = !DILocation(line: 599, column: 22, scope: !813)
!947 = !DILocation(line: 599, column: 31, scope: !813)
!948 = !DILocation(line: 600, column: 22, scope: !813)
!949 = !DILocation(line: 598, column: 13, scope: !813)
!950 = !DILocation(line: 603, column: 1, scope: !813)
!951 = distinct !DISubprogram(name: "predict_8x8_vr", scope: !1, file: !1, line: 604, type: !581, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971}
!953 = !DILocalVariable(name: "src", arg: 1, scope: !951, file: !1, line: 604, type: !118)
!954 = !DILocalVariable(name: "edge", arg: 2, scope: !951, file: !1, line: 604, type: !118)
!955 = !DILocalVariable(name: "t0", scope: !951, file: !1, line: 606, type: !112)
!956 = !DILocalVariable(name: "t1", scope: !951, file: !1, line: 606, type: !112)
!957 = !DILocalVariable(name: "t2", scope: !951, file: !1, line: 606, type: !112)
!958 = !DILocalVariable(name: "t3", scope: !951, file: !1, line: 606, type: !112)
!959 = !DILocalVariable(name: "t4", scope: !951, file: !1, line: 606, type: !112)
!960 = !DILocalVariable(name: "t5", scope: !951, file: !1, line: 606, type: !112)
!961 = !DILocalVariable(name: "t6", scope: !951, file: !1, line: 606, type: !112)
!962 = !DILocalVariable(name: "t7", scope: !951, file: !1, line: 606, type: !112)
!963 = !DILocalVariable(name: "l0", scope: !951, file: !1, line: 607, type: !112)
!964 = !DILocalVariable(name: "l1", scope: !951, file: !1, line: 607, type: !112)
!965 = !DILocalVariable(name: "l2", scope: !951, file: !1, line: 607, type: !112)
!966 = !DILocalVariable(name: "l3", scope: !951, file: !1, line: 607, type: !112)
!967 = !DILocalVariable(name: "l4", scope: !951, file: !1, line: 607, type: !112)
!968 = !DILocalVariable(name: "l5", scope: !951, file: !1, line: 607, type: !112)
!969 = !DILocalVariable(name: "l6", scope: !951, file: !1, line: 607, type: !112)
!970 = !DILocalVariable(name: "l7", scope: !951, file: !1, line: 607, type: !112)
!971 = !DILocalVariable(name: "lt", scope: !951, file: !1, line: 608, type: !112)
!972 = !DILocation(line: 0, scope: !951)
!973 = !DILocation(line: 606, column: 5, scope: !951)
!974 = !DILocation(line: 607, column: 5, scope: !951)
!975 = !DILocation(line: 608, column: 5, scope: !951)
!976 = !DILocation(line: 609, column: 15, scope: !951)
!977 = !DILocation(line: 609, column: 5, scope: !951)
!978 = !DILocation(line: 609, column: 13, scope: !951)
!979 = !DILocation(line: 610, column: 15, scope: !951)
!980 = !DILocation(line: 610, column: 5, scope: !951)
!981 = !DILocation(line: 610, column: 13, scope: !951)
!982 = !DILocation(line: 611, column: 24, scope: !951)
!983 = !DILocation(line: 611, column: 14, scope: !951)
!984 = !DILocation(line: 611, column: 22, scope: !951)
!985 = !DILocation(line: 611, column: 5, scope: !951)
!986 = !DILocation(line: 611, column: 13, scope: !951)
!987 = !DILocation(line: 612, column: 24, scope: !951)
!988 = !DILocation(line: 612, column: 14, scope: !951)
!989 = !DILocation(line: 612, column: 22, scope: !951)
!990 = !DILocation(line: 612, column: 5, scope: !951)
!991 = !DILocation(line: 612, column: 13, scope: !951)
!992 = !DILocation(line: 613, column: 33, scope: !951)
!993 = !DILocation(line: 613, column: 23, scope: !951)
!994 = !DILocation(line: 613, column: 31, scope: !951)
!995 = !DILocation(line: 613, column: 14, scope: !951)
!996 = !DILocation(line: 613, column: 22, scope: !951)
!997 = !DILocation(line: 613, column: 5, scope: !951)
!998 = !DILocation(line: 613, column: 13, scope: !951)
!999 = !DILocation(line: 614, column: 33, scope: !951)
!1000 = !DILocation(line: 614, column: 23, scope: !951)
!1001 = !DILocation(line: 614, column: 31, scope: !951)
!1002 = !DILocation(line: 614, column: 14, scope: !951)
!1003 = !DILocation(line: 614, column: 22, scope: !951)
!1004 = !DILocation(line: 614, column: 5, scope: !951)
!1005 = !DILocation(line: 614, column: 13, scope: !951)
!1006 = !DILocation(line: 615, column: 42, scope: !951)
!1007 = !DILocation(line: 615, column: 32, scope: !951)
!1008 = !DILocation(line: 615, column: 40, scope: !951)
!1009 = !DILocation(line: 615, column: 23, scope: !951)
!1010 = !DILocation(line: 615, column: 31, scope: !951)
!1011 = !DILocation(line: 615, column: 14, scope: !951)
!1012 = !DILocation(line: 615, column: 22, scope: !951)
!1013 = !DILocation(line: 615, column: 5, scope: !951)
!1014 = !DILocation(line: 615, column: 13, scope: !951)
!1015 = !DILocation(line: 616, column: 42, scope: !951)
!1016 = !DILocation(line: 616, column: 32, scope: !951)
!1017 = !DILocation(line: 616, column: 40, scope: !951)
!1018 = !DILocation(line: 616, column: 23, scope: !951)
!1019 = !DILocation(line: 616, column: 31, scope: !951)
!1020 = !DILocation(line: 616, column: 14, scope: !951)
!1021 = !DILocation(line: 616, column: 22, scope: !951)
!1022 = !DILocation(line: 616, column: 13, scope: !951)
!1023 = !DILocation(line: 617, column: 42, scope: !951)
!1024 = !DILocation(line: 617, column: 32, scope: !951)
!1025 = !DILocation(line: 617, column: 40, scope: !951)
!1026 = !DILocation(line: 617, column: 23, scope: !951)
!1027 = !DILocation(line: 617, column: 31, scope: !951)
!1028 = !DILocation(line: 617, column: 14, scope: !951)
!1029 = !DILocation(line: 617, column: 22, scope: !951)
!1030 = !DILocation(line: 617, column: 5, scope: !951)
!1031 = !DILocation(line: 617, column: 13, scope: !951)
!1032 = !DILocation(line: 618, column: 42, scope: !951)
!1033 = !DILocation(line: 618, column: 32, scope: !951)
!1034 = !DILocation(line: 618, column: 40, scope: !951)
!1035 = !DILocation(line: 618, column: 23, scope: !951)
!1036 = !DILocation(line: 618, column: 31, scope: !951)
!1037 = !DILocation(line: 618, column: 14, scope: !951)
!1038 = !DILocation(line: 618, column: 22, scope: !951)
!1039 = !DILocation(line: 618, column: 5, scope: !951)
!1040 = !DILocation(line: 618, column: 13, scope: !951)
!1041 = !DILocation(line: 619, column: 42, scope: !951)
!1042 = !DILocation(line: 619, column: 32, scope: !951)
!1043 = !DILocation(line: 619, column: 40, scope: !951)
!1044 = !DILocation(line: 619, column: 23, scope: !951)
!1045 = !DILocation(line: 619, column: 31, scope: !951)
!1046 = !DILocation(line: 619, column: 14, scope: !951)
!1047 = !DILocation(line: 619, column: 22, scope: !951)
!1048 = !DILocation(line: 619, column: 5, scope: !951)
!1049 = !DILocation(line: 619, column: 13, scope: !951)
!1050 = !DILocation(line: 620, column: 42, scope: !951)
!1051 = !DILocation(line: 620, column: 32, scope: !951)
!1052 = !DILocation(line: 620, column: 40, scope: !951)
!1053 = !DILocation(line: 620, column: 23, scope: !951)
!1054 = !DILocation(line: 620, column: 31, scope: !951)
!1055 = !DILocation(line: 620, column: 14, scope: !951)
!1056 = !DILocation(line: 620, column: 22, scope: !951)
!1057 = !DILocation(line: 620, column: 5, scope: !951)
!1058 = !DILocation(line: 620, column: 13, scope: !951)
!1059 = !DILocation(line: 621, column: 42, scope: !951)
!1060 = !DILocation(line: 621, column: 32, scope: !951)
!1061 = !DILocation(line: 621, column: 40, scope: !951)
!1062 = !DILocation(line: 621, column: 23, scope: !951)
!1063 = !DILocation(line: 621, column: 31, scope: !951)
!1064 = !DILocation(line: 621, column: 14, scope: !951)
!1065 = !DILocation(line: 621, column: 22, scope: !951)
!1066 = !DILocation(line: 621, column: 5, scope: !951)
!1067 = !DILocation(line: 621, column: 13, scope: !951)
!1068 = !DILocation(line: 622, column: 42, scope: !951)
!1069 = !DILocation(line: 622, column: 32, scope: !951)
!1070 = !DILocation(line: 622, column: 40, scope: !951)
!1071 = !DILocation(line: 622, column: 23, scope: !951)
!1072 = !DILocation(line: 622, column: 31, scope: !951)
!1073 = !DILocation(line: 622, column: 14, scope: !951)
!1074 = !DILocation(line: 622, column: 22, scope: !951)
!1075 = !DILocation(line: 622, column: 5, scope: !951)
!1076 = !DILocation(line: 622, column: 13, scope: !951)
!1077 = !DILocation(line: 623, column: 42, scope: !951)
!1078 = !DILocation(line: 623, column: 32, scope: !951)
!1079 = !DILocation(line: 623, column: 40, scope: !951)
!1080 = !DILocation(line: 623, column: 23, scope: !951)
!1081 = !DILocation(line: 623, column: 31, scope: !951)
!1082 = !DILocation(line: 623, column: 14, scope: !951)
!1083 = !DILocation(line: 623, column: 22, scope: !951)
!1084 = !DILocation(line: 623, column: 5, scope: !951)
!1085 = !DILocation(line: 623, column: 13, scope: !951)
!1086 = !DILocation(line: 624, column: 42, scope: !951)
!1087 = !DILocation(line: 624, column: 32, scope: !951)
!1088 = !DILocation(line: 624, column: 40, scope: !951)
!1089 = !DILocation(line: 624, column: 23, scope: !951)
!1090 = !DILocation(line: 624, column: 31, scope: !951)
!1091 = !DILocation(line: 624, column: 14, scope: !951)
!1092 = !DILocation(line: 624, column: 22, scope: !951)
!1093 = !DILocation(line: 624, column: 5, scope: !951)
!1094 = !DILocation(line: 624, column: 13, scope: !951)
!1095 = !DILocation(line: 625, column: 33, scope: !951)
!1096 = !DILocation(line: 625, column: 23, scope: !951)
!1097 = !DILocation(line: 625, column: 31, scope: !951)
!1098 = !DILocation(line: 625, column: 14, scope: !951)
!1099 = !DILocation(line: 625, column: 22, scope: !951)
!1100 = !DILocation(line: 625, column: 5, scope: !951)
!1101 = !DILocation(line: 625, column: 13, scope: !951)
!1102 = !DILocation(line: 626, column: 33, scope: !951)
!1103 = !DILocation(line: 626, column: 23, scope: !951)
!1104 = !DILocation(line: 626, column: 31, scope: !951)
!1105 = !DILocation(line: 626, column: 14, scope: !951)
!1106 = !DILocation(line: 626, column: 22, scope: !951)
!1107 = !DILocation(line: 626, column: 5, scope: !951)
!1108 = !DILocation(line: 626, column: 13, scope: !951)
!1109 = !DILocation(line: 627, column: 24, scope: !951)
!1110 = !DILocation(line: 627, column: 14, scope: !951)
!1111 = !DILocation(line: 627, column: 22, scope: !951)
!1112 = !DILocation(line: 627, column: 5, scope: !951)
!1113 = !DILocation(line: 627, column: 13, scope: !951)
!1114 = !DILocation(line: 628, column: 24, scope: !951)
!1115 = !DILocation(line: 628, column: 14, scope: !951)
!1116 = !DILocation(line: 628, column: 22, scope: !951)
!1117 = !DILocation(line: 628, column: 5, scope: !951)
!1118 = !DILocation(line: 628, column: 13, scope: !951)
!1119 = !DILocation(line: 629, column: 15, scope: !951)
!1120 = !DILocation(line: 629, column: 5, scope: !951)
!1121 = !DILocation(line: 629, column: 13, scope: !951)
!1122 = !DILocation(line: 630, column: 15, scope: !951)
!1123 = !DILocation(line: 630, column: 5, scope: !951)
!1124 = !DILocation(line: 630, column: 13, scope: !951)
!1125 = !DILocation(line: 631, column: 1, scope: !951)
!1126 = distinct !DISubprogram(name: "predict_8x8_hd", scope: !1, file: !1, line: 632, type: !581, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157}
!1128 = !DILocalVariable(name: "src", arg: 1, scope: !1126, file: !1, line: 632, type: !118)
!1129 = !DILocalVariable(name: "edge", arg: 2, scope: !1126, file: !1, line: 632, type: !118)
!1130 = !DILocalVariable(name: "t0", scope: !1126, file: !1, line: 634, type: !112)
!1131 = !DILocalVariable(name: "t1", scope: !1126, file: !1, line: 634, type: !112)
!1132 = !DILocalVariable(name: "t2", scope: !1126, file: !1, line: 634, type: !112)
!1133 = !DILocalVariable(name: "t3", scope: !1126, file: !1, line: 634, type: !112)
!1134 = !DILocalVariable(name: "t4", scope: !1126, file: !1, line: 634, type: !112)
!1135 = !DILocalVariable(name: "t5", scope: !1126, file: !1, line: 634, type: !112)
!1136 = !DILocalVariable(name: "t6", scope: !1126, file: !1, line: 634, type: !112)
!1137 = !DILocalVariable(name: "t7", scope: !1126, file: !1, line: 634, type: !112)
!1138 = !DILocalVariable(name: "l0", scope: !1126, file: !1, line: 635, type: !112)
!1139 = !DILocalVariable(name: "l1", scope: !1126, file: !1, line: 635, type: !112)
!1140 = !DILocalVariable(name: "l2", scope: !1126, file: !1, line: 635, type: !112)
!1141 = !DILocalVariable(name: "l3", scope: !1126, file: !1, line: 635, type: !112)
!1142 = !DILocalVariable(name: "l4", scope: !1126, file: !1, line: 635, type: !112)
!1143 = !DILocalVariable(name: "l5", scope: !1126, file: !1, line: 635, type: !112)
!1144 = !DILocalVariable(name: "l6", scope: !1126, file: !1, line: 635, type: !112)
!1145 = !DILocalVariable(name: "l7", scope: !1126, file: !1, line: 635, type: !112)
!1146 = !DILocalVariable(name: "lt", scope: !1126, file: !1, line: 636, type: !112)
!1147 = !DILocalVariable(name: "p1", scope: !1126, file: !1, line: 637, type: !112)
!1148 = !DILocalVariable(name: "p2", scope: !1126, file: !1, line: 638, type: !112)
!1149 = !DILocalVariable(name: "p3", scope: !1126, file: !1, line: 639, type: !112)
!1150 = !DILocalVariable(name: "p4", scope: !1126, file: !1, line: 640, type: !112)
!1151 = !DILocalVariable(name: "p5", scope: !1126, file: !1, line: 641, type: !112)
!1152 = !DILocalVariable(name: "p6", scope: !1126, file: !1, line: 642, type: !112)
!1153 = !DILocalVariable(name: "p7", scope: !1126, file: !1, line: 643, type: !112)
!1154 = !DILocalVariable(name: "p8", scope: !1126, file: !1, line: 644, type: !112)
!1155 = !DILocalVariable(name: "p9", scope: !1126, file: !1, line: 645, type: !112)
!1156 = !DILocalVariable(name: "p10", scope: !1126, file: !1, line: 646, type: !112)
!1157 = !DILocalVariable(name: "p11", scope: !1126, file: !1, line: 647, type: !112)
!1158 = !DILocation(line: 0, scope: !1126)
!1159 = !DILocation(line: 634, column: 5, scope: !1126)
!1160 = !DILocation(line: 635, column: 5, scope: !1126)
!1161 = !DILocation(line: 636, column: 5, scope: !1126)
!1162 = !DILocation(line: 637, column: 24, scope: !1126)
!1163 = !DILocation(line: 637, column: 35, scope: !1126)
!1164 = !DILocalVariable(name: "a", arg: 1, scope: !1165, file: !52, line: 324, type: !112)
!1165 = distinct !DISubprogram(name: "pack8to16", scope: !52, file: !52, line: 324, type: !1166, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!67, !112, !112}
!1168 = !{!1164, !1169}
!1169 = !DILocalVariable(name: "b", arg: 2, scope: !1165, file: !52, line: 324, type: !112)
!1170 = !DILocation(line: 0, scope: !1165, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 637, column: 14, scope: !1126)
!1172 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1171)
!1173 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1171)
!1174 = !DILocation(line: 638, column: 24, scope: !1126)
!1175 = !DILocation(line: 638, column: 35, scope: !1126)
!1176 = !DILocation(line: 0, scope: !1165, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 638, column: 14, scope: !1126)
!1178 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1177)
!1179 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1177)
!1180 = !DILocation(line: 639, column: 24, scope: !1126)
!1181 = !DILocation(line: 639, column: 35, scope: !1126)
!1182 = !DILocation(line: 0, scope: !1165, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 639, column: 14, scope: !1126)
!1184 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1183)
!1185 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1183)
!1186 = !DILocation(line: 640, column: 24, scope: !1126)
!1187 = !DILocation(line: 640, column: 35, scope: !1126)
!1188 = !DILocation(line: 0, scope: !1165, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 640, column: 14, scope: !1126)
!1190 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1189)
!1191 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1189)
!1192 = !DILocation(line: 641, column: 24, scope: !1126)
!1193 = !DILocation(line: 641, column: 35, scope: !1126)
!1194 = !DILocation(line: 0, scope: !1165, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 641, column: 14, scope: !1126)
!1196 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1195)
!1197 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1195)
!1198 = !DILocation(line: 642, column: 24, scope: !1126)
!1199 = !DILocation(line: 642, column: 35, scope: !1126)
!1200 = !DILocation(line: 0, scope: !1165, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 642, column: 14, scope: !1126)
!1202 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1201)
!1203 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1201)
!1204 = !DILocation(line: 643, column: 24, scope: !1126)
!1205 = !DILocation(line: 643, column: 35, scope: !1126)
!1206 = !DILocation(line: 0, scope: !1165, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 643, column: 14, scope: !1126)
!1208 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1207)
!1209 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1207)
!1210 = !DILocation(line: 644, column: 24, scope: !1126)
!1211 = !DILocation(line: 644, column: 35, scope: !1126)
!1212 = !DILocation(line: 0, scope: !1165, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 644, column: 14, scope: !1126)
!1214 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1213)
!1215 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1213)
!1216 = !DILocation(line: 645, column: 24, scope: !1126)
!1217 = !DILocation(line: 645, column: 38, scope: !1126)
!1218 = !DILocation(line: 0, scope: !1165, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 645, column: 14, scope: !1126)
!1220 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1219)
!1221 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1219)
!1222 = !DILocation(line: 646, column: 25, scope: !1126)
!1223 = !DILocation(line: 646, column: 39, scope: !1126)
!1224 = !DILocation(line: 0, scope: !1165, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 646, column: 15, scope: !1126)
!1226 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1225)
!1227 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1225)
!1228 = !DILocation(line: 647, column: 25, scope: !1126)
!1229 = !DILocation(line: 647, column: 39, scope: !1126)
!1230 = !DILocation(line: 0, scope: !1165, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 647, column: 15, scope: !1126)
!1232 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1231)
!1233 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1231)
!1234 = !DILocalVariable(name: "a", arg: 1, scope: !1235, file: !52, line: 316, type: !112)
!1235 = distinct !DISubprogram(name: "pack16to32", scope: !52, file: !52, line: 316, type: !1166, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1236)
!1236 = !{!1234, !1237}
!1237 = !DILocalVariable(name: "b", arg: 2, scope: !1235, file: !52, line: 316, type: !112)
!1238 = !DILocation(line: 0, scope: !1235, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 648, column: 17, scope: !1126)
!1240 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1239)
!1241 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1239)
!1242 = !DILocation(line: 648, column: 5, scope: !1126)
!1243 = !DILocation(line: 648, column: 15, scope: !1126)
!1244 = !DILocation(line: 0, scope: !1235, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 649, column: 17, scope: !1126)
!1246 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1245)
!1247 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1245)
!1248 = !DILocation(line: 649, column: 5, scope: !1126)
!1249 = !DILocation(line: 649, column: 15, scope: !1126)
!1250 = !DILocation(line: 0, scope: !1235, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 650, column: 28, scope: !1126)
!1252 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1251)
!1253 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1251)
!1254 = !DILocation(line: 650, column: 16, scope: !1126)
!1255 = !DILocation(line: 650, column: 26, scope: !1126)
!1256 = !DILocation(line: 650, column: 5, scope: !1126)
!1257 = !DILocation(line: 650, column: 15, scope: !1126)
!1258 = !DILocation(line: 0, scope: !1235, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 651, column: 28, scope: !1126)
!1260 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1259)
!1261 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1259)
!1262 = !DILocation(line: 651, column: 16, scope: !1126)
!1263 = !DILocation(line: 651, column: 26, scope: !1126)
!1264 = !DILocation(line: 651, column: 5, scope: !1126)
!1265 = !DILocation(line: 651, column: 15, scope: !1126)
!1266 = !DILocation(line: 0, scope: !1235, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 652, column: 28, scope: !1126)
!1268 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1267)
!1269 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1267)
!1270 = !DILocation(line: 652, column: 16, scope: !1126)
!1271 = !DILocation(line: 652, column: 26, scope: !1126)
!1272 = !DILocation(line: 652, column: 5, scope: !1126)
!1273 = !DILocation(line: 652, column: 15, scope: !1126)
!1274 = !DILocation(line: 0, scope: !1235, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 653, column: 28, scope: !1126)
!1276 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1275)
!1277 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1275)
!1278 = !DILocation(line: 653, column: 16, scope: !1126)
!1279 = !DILocation(line: 653, column: 26, scope: !1126)
!1280 = !DILocation(line: 653, column: 5, scope: !1126)
!1281 = !DILocation(line: 653, column: 15, scope: !1126)
!1282 = !DILocation(line: 0, scope: !1235, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 654, column: 28, scope: !1126)
!1284 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1283)
!1285 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1283)
!1286 = !DILocation(line: 654, column: 16, scope: !1126)
!1287 = !DILocation(line: 654, column: 26, scope: !1126)
!1288 = !DILocation(line: 654, column: 5, scope: !1126)
!1289 = !DILocation(line: 654, column: 15, scope: !1126)
!1290 = !DILocation(line: 0, scope: !1235, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 655, column: 28, scope: !1126)
!1292 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1291)
!1293 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1291)
!1294 = !DILocation(line: 655, column: 26, scope: !1126)
!1295 = !DILocation(line: 655, column: 5, scope: !1126)
!1296 = !DILocation(line: 655, column: 15, scope: !1126)
!1297 = !DILocation(line: 0, scope: !1235, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 656, column: 17, scope: !1126)
!1299 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1298)
!1300 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1298)
!1301 = !DILocation(line: 656, column: 5, scope: !1126)
!1302 = !DILocation(line: 656, column: 15, scope: !1126)
!1303 = !DILocation(line: 0, scope: !1235, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 657, column: 17, scope: !1126)
!1305 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1304)
!1306 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1304)
!1307 = !DILocation(line: 657, column: 5, scope: !1126)
!1308 = !DILocation(line: 657, column: 15, scope: !1126)
!1309 = !DILocation(line: 658, column: 1, scope: !1126)
!1310 = distinct !DISubprogram(name: "predict_8x8_vl", scope: !1, file: !1, line: 659, type: !581, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329}
!1312 = !DILocalVariable(name: "src", arg: 1, scope: !1310, file: !1, line: 659, type: !118)
!1313 = !DILocalVariable(name: "edge", arg: 2, scope: !1310, file: !1, line: 659, type: !118)
!1314 = !DILocalVariable(name: "t0", scope: !1310, file: !1, line: 661, type: !112)
!1315 = !DILocalVariable(name: "t1", scope: !1310, file: !1, line: 661, type: !112)
!1316 = !DILocalVariable(name: "t2", scope: !1310, file: !1, line: 661, type: !112)
!1317 = !DILocalVariable(name: "t3", scope: !1310, file: !1, line: 661, type: !112)
!1318 = !DILocalVariable(name: "t4", scope: !1310, file: !1, line: 661, type: !112)
!1319 = !DILocalVariable(name: "t5", scope: !1310, file: !1, line: 661, type: !112)
!1320 = !DILocalVariable(name: "t6", scope: !1310, file: !1, line: 661, type: !112)
!1321 = !DILocalVariable(name: "t7", scope: !1310, file: !1, line: 661, type: !112)
!1322 = !DILocalVariable(name: "t8", scope: !1310, file: !1, line: 662, type: !112)
!1323 = !DILocalVariable(name: "t9", scope: !1310, file: !1, line: 662, type: !112)
!1324 = !DILocalVariable(name: "t10", scope: !1310, file: !1, line: 662, type: !112)
!1325 = !DILocalVariable(name: "t11", scope: !1310, file: !1, line: 662, type: !112)
!1326 = !DILocalVariable(name: "t12", scope: !1310, file: !1, line: 662, type: !112)
!1327 = !DILocalVariable(name: "t13", scope: !1310, file: !1, line: 662, type: !112)
!1328 = !DILocalVariable(name: "t14", scope: !1310, file: !1, line: 662, type: !112)
!1329 = !DILocalVariable(name: "t15", scope: !1310, file: !1, line: 662, type: !112)
!1330 = !DILocation(line: 0, scope: !1310)
!1331 = !DILocation(line: 661, column: 5, scope: !1310)
!1332 = !DILocation(line: 662, column: 5, scope: !1310)
!1333 = !DILocation(line: 663, column: 15, scope: !1310)
!1334 = !DILocation(line: 663, column: 13, scope: !1310)
!1335 = !DILocation(line: 664, column: 15, scope: !1310)
!1336 = !DILocation(line: 664, column: 5, scope: !1310)
!1337 = !DILocation(line: 664, column: 13, scope: !1310)
!1338 = !DILocation(line: 665, column: 24, scope: !1310)
!1339 = !DILocation(line: 665, column: 14, scope: !1310)
!1340 = !DILocation(line: 665, column: 22, scope: !1310)
!1341 = !DILocation(line: 665, column: 5, scope: !1310)
!1342 = !DILocation(line: 665, column: 13, scope: !1310)
!1343 = !DILocation(line: 666, column: 24, scope: !1310)
!1344 = !DILocation(line: 666, column: 14, scope: !1310)
!1345 = !DILocation(line: 666, column: 22, scope: !1310)
!1346 = !DILocation(line: 666, column: 5, scope: !1310)
!1347 = !DILocation(line: 666, column: 13, scope: !1310)
!1348 = !DILocation(line: 667, column: 33, scope: !1310)
!1349 = !DILocation(line: 667, column: 23, scope: !1310)
!1350 = !DILocation(line: 667, column: 31, scope: !1310)
!1351 = !DILocation(line: 667, column: 14, scope: !1310)
!1352 = !DILocation(line: 667, column: 22, scope: !1310)
!1353 = !DILocation(line: 667, column: 5, scope: !1310)
!1354 = !DILocation(line: 667, column: 13, scope: !1310)
!1355 = !DILocation(line: 668, column: 33, scope: !1310)
!1356 = !DILocation(line: 668, column: 23, scope: !1310)
!1357 = !DILocation(line: 668, column: 31, scope: !1310)
!1358 = !DILocation(line: 668, column: 14, scope: !1310)
!1359 = !DILocation(line: 668, column: 22, scope: !1310)
!1360 = !DILocation(line: 668, column: 5, scope: !1310)
!1361 = !DILocation(line: 668, column: 13, scope: !1310)
!1362 = !DILocation(line: 669, column: 42, scope: !1310)
!1363 = !DILocation(line: 669, column: 32, scope: !1310)
!1364 = !DILocation(line: 669, column: 40, scope: !1310)
!1365 = !DILocation(line: 669, column: 23, scope: !1310)
!1366 = !DILocation(line: 669, column: 31, scope: !1310)
!1367 = !DILocation(line: 669, column: 14, scope: !1310)
!1368 = !DILocation(line: 669, column: 22, scope: !1310)
!1369 = !DILocation(line: 669, column: 5, scope: !1310)
!1370 = !DILocation(line: 669, column: 13, scope: !1310)
!1371 = !DILocation(line: 670, column: 42, scope: !1310)
!1372 = !DILocation(line: 670, column: 32, scope: !1310)
!1373 = !DILocation(line: 670, column: 40, scope: !1310)
!1374 = !DILocation(line: 670, column: 23, scope: !1310)
!1375 = !DILocation(line: 670, column: 31, scope: !1310)
!1376 = !DILocation(line: 670, column: 14, scope: !1310)
!1377 = !DILocation(line: 670, column: 22, scope: !1310)
!1378 = !DILocation(line: 670, column: 5, scope: !1310)
!1379 = !DILocation(line: 670, column: 13, scope: !1310)
!1380 = !DILocation(line: 671, column: 42, scope: !1310)
!1381 = !DILocation(line: 671, column: 32, scope: !1310)
!1382 = !DILocation(line: 671, column: 40, scope: !1310)
!1383 = !DILocation(line: 671, column: 23, scope: !1310)
!1384 = !DILocation(line: 671, column: 31, scope: !1310)
!1385 = !DILocation(line: 671, column: 14, scope: !1310)
!1386 = !DILocation(line: 671, column: 22, scope: !1310)
!1387 = !DILocation(line: 671, column: 5, scope: !1310)
!1388 = !DILocation(line: 671, column: 13, scope: !1310)
!1389 = !DILocation(line: 672, column: 42, scope: !1310)
!1390 = !DILocation(line: 672, column: 32, scope: !1310)
!1391 = !DILocation(line: 672, column: 40, scope: !1310)
!1392 = !DILocation(line: 672, column: 23, scope: !1310)
!1393 = !DILocation(line: 672, column: 31, scope: !1310)
!1394 = !DILocation(line: 672, column: 14, scope: !1310)
!1395 = !DILocation(line: 672, column: 22, scope: !1310)
!1396 = !DILocation(line: 672, column: 5, scope: !1310)
!1397 = !DILocation(line: 672, column: 13, scope: !1310)
!1398 = !DILocation(line: 673, column: 42, scope: !1310)
!1399 = !DILocation(line: 673, column: 32, scope: !1310)
!1400 = !DILocation(line: 673, column: 40, scope: !1310)
!1401 = !DILocation(line: 673, column: 23, scope: !1310)
!1402 = !DILocation(line: 673, column: 31, scope: !1310)
!1403 = !DILocation(line: 673, column: 14, scope: !1310)
!1404 = !DILocation(line: 673, column: 22, scope: !1310)
!1405 = !DILocation(line: 673, column: 5, scope: !1310)
!1406 = !DILocation(line: 673, column: 13, scope: !1310)
!1407 = !DILocation(line: 674, column: 42, scope: !1310)
!1408 = !DILocation(line: 674, column: 32, scope: !1310)
!1409 = !DILocation(line: 674, column: 40, scope: !1310)
!1410 = !DILocation(line: 674, column: 23, scope: !1310)
!1411 = !DILocation(line: 674, column: 31, scope: !1310)
!1412 = !DILocation(line: 674, column: 14, scope: !1310)
!1413 = !DILocation(line: 674, column: 22, scope: !1310)
!1414 = !DILocation(line: 674, column: 5, scope: !1310)
!1415 = !DILocation(line: 674, column: 13, scope: !1310)
!1416 = !DILocation(line: 675, column: 42, scope: !1310)
!1417 = !DILocation(line: 675, column: 32, scope: !1310)
!1418 = !DILocation(line: 675, column: 40, scope: !1310)
!1419 = !DILocation(line: 675, column: 23, scope: !1310)
!1420 = !DILocation(line: 675, column: 31, scope: !1310)
!1421 = !DILocation(line: 675, column: 14, scope: !1310)
!1422 = !DILocation(line: 675, column: 22, scope: !1310)
!1423 = !DILocation(line: 675, column: 5, scope: !1310)
!1424 = !DILocation(line: 675, column: 13, scope: !1310)
!1425 = !DILocation(line: 676, column: 42, scope: !1310)
!1426 = !DILocation(line: 676, column: 32, scope: !1310)
!1427 = !DILocation(line: 676, column: 40, scope: !1310)
!1428 = !DILocation(line: 676, column: 23, scope: !1310)
!1429 = !DILocation(line: 676, column: 31, scope: !1310)
!1430 = !DILocation(line: 676, column: 14, scope: !1310)
!1431 = !DILocation(line: 676, column: 22, scope: !1310)
!1432 = !DILocation(line: 676, column: 5, scope: !1310)
!1433 = !DILocation(line: 676, column: 13, scope: !1310)
!1434 = !DILocation(line: 677, column: 42, scope: !1310)
!1435 = !DILocation(line: 677, column: 32, scope: !1310)
!1436 = !DILocation(line: 677, column: 40, scope: !1310)
!1437 = !DILocation(line: 677, column: 23, scope: !1310)
!1438 = !DILocation(line: 677, column: 31, scope: !1310)
!1439 = !DILocation(line: 677, column: 14, scope: !1310)
!1440 = !DILocation(line: 677, column: 22, scope: !1310)
!1441 = !DILocation(line: 677, column: 5, scope: !1310)
!1442 = !DILocation(line: 677, column: 13, scope: !1310)
!1443 = !DILocation(line: 678, column: 42, scope: !1310)
!1444 = !DILocation(line: 678, column: 32, scope: !1310)
!1445 = !DILocation(line: 678, column: 40, scope: !1310)
!1446 = !DILocation(line: 678, column: 23, scope: !1310)
!1447 = !DILocation(line: 678, column: 31, scope: !1310)
!1448 = !DILocation(line: 678, column: 14, scope: !1310)
!1449 = !DILocation(line: 678, column: 22, scope: !1310)
!1450 = !DILocation(line: 678, column: 5, scope: !1310)
!1451 = !DILocation(line: 678, column: 13, scope: !1310)
!1452 = !DILocation(line: 679, column: 33, scope: !1310)
!1453 = !DILocation(line: 679, column: 23, scope: !1310)
!1454 = !DILocation(line: 679, column: 31, scope: !1310)
!1455 = !DILocation(line: 679, column: 14, scope: !1310)
!1456 = !DILocation(line: 679, column: 22, scope: !1310)
!1457 = !DILocation(line: 679, column: 5, scope: !1310)
!1458 = !DILocation(line: 679, column: 13, scope: !1310)
!1459 = !DILocation(line: 680, column: 33, scope: !1310)
!1460 = !DILocation(line: 680, column: 23, scope: !1310)
!1461 = !DILocation(line: 680, column: 31, scope: !1310)
!1462 = !DILocation(line: 680, column: 14, scope: !1310)
!1463 = !DILocation(line: 680, column: 22, scope: !1310)
!1464 = !DILocation(line: 680, column: 5, scope: !1310)
!1465 = !DILocation(line: 680, column: 13, scope: !1310)
!1466 = !DILocation(line: 681, column: 24, scope: !1310)
!1467 = !DILocation(line: 681, column: 14, scope: !1310)
!1468 = !DILocation(line: 681, column: 22, scope: !1310)
!1469 = !DILocation(line: 681, column: 5, scope: !1310)
!1470 = !DILocation(line: 681, column: 13, scope: !1310)
!1471 = !DILocation(line: 682, column: 24, scope: !1310)
!1472 = !DILocation(line: 682, column: 14, scope: !1310)
!1473 = !DILocation(line: 682, column: 22, scope: !1310)
!1474 = !DILocation(line: 682, column: 5, scope: !1310)
!1475 = !DILocation(line: 682, column: 13, scope: !1310)
!1476 = !DILocation(line: 683, column: 15, scope: !1310)
!1477 = !DILocation(line: 683, column: 5, scope: !1310)
!1478 = !DILocation(line: 683, column: 13, scope: !1310)
!1479 = !DILocation(line: 684, column: 15, scope: !1310)
!1480 = !DILocation(line: 684, column: 5, scope: !1310)
!1481 = !DILocation(line: 684, column: 13, scope: !1310)
!1482 = !DILocation(line: 685, column: 1, scope: !1310)
!1483 = distinct !DISubprogram(name: "predict_8x8_hu", scope: !1, file: !1, line: 686, type: !581, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1484)
!1484 = !{!1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1485 = !DILocalVariable(name: "src", arg: 1, scope: !1483, file: !1, line: 686, type: !118)
!1486 = !DILocalVariable(name: "edge", arg: 2, scope: !1483, file: !1, line: 686, type: !118)
!1487 = !DILocalVariable(name: "l0", scope: !1483, file: !1, line: 688, type: !112)
!1488 = !DILocalVariable(name: "l1", scope: !1483, file: !1, line: 688, type: !112)
!1489 = !DILocalVariable(name: "l2", scope: !1483, file: !1, line: 688, type: !112)
!1490 = !DILocalVariable(name: "l3", scope: !1483, file: !1, line: 688, type: !112)
!1491 = !DILocalVariable(name: "l4", scope: !1483, file: !1, line: 688, type: !112)
!1492 = !DILocalVariable(name: "l5", scope: !1483, file: !1, line: 688, type: !112)
!1493 = !DILocalVariable(name: "l6", scope: !1483, file: !1, line: 688, type: !112)
!1494 = !DILocalVariable(name: "l7", scope: !1483, file: !1, line: 688, type: !112)
!1495 = !DILocalVariable(name: "p1", scope: !1483, file: !1, line: 689, type: !112)
!1496 = !DILocalVariable(name: "p2", scope: !1483, file: !1, line: 690, type: !112)
!1497 = !DILocalVariable(name: "p3", scope: !1483, file: !1, line: 691, type: !112)
!1498 = !DILocalVariable(name: "p4", scope: !1483, file: !1, line: 692, type: !112)
!1499 = !DILocalVariable(name: "p5", scope: !1483, file: !1, line: 693, type: !112)
!1500 = !DILocalVariable(name: "p6", scope: !1483, file: !1, line: 694, type: !112)
!1501 = !DILocalVariable(name: "p7", scope: !1483, file: !1, line: 695, type: !112)
!1502 = !DILocalVariable(name: "p8", scope: !1483, file: !1, line: 696, type: !112)
!1503 = !DILocation(line: 0, scope: !1483)
!1504 = !DILocation(line: 688, column: 5, scope: !1483)
!1505 = !DILocation(line: 689, column: 24, scope: !1483)
!1506 = !DILocation(line: 689, column: 35, scope: !1483)
!1507 = !DILocation(line: 0, scope: !1165, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 689, column: 14, scope: !1483)
!1509 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1508)
!1510 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1508)
!1511 = !DILocation(line: 690, column: 24, scope: !1483)
!1512 = !DILocation(line: 690, column: 35, scope: !1483)
!1513 = !DILocation(line: 0, scope: !1165, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 690, column: 14, scope: !1483)
!1515 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1514)
!1516 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1514)
!1517 = !DILocation(line: 691, column: 24, scope: !1483)
!1518 = !DILocation(line: 691, column: 35, scope: !1483)
!1519 = !DILocation(line: 0, scope: !1165, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 691, column: 14, scope: !1483)
!1521 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1520)
!1522 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1520)
!1523 = !DILocation(line: 692, column: 24, scope: !1483)
!1524 = !DILocation(line: 692, column: 35, scope: !1483)
!1525 = !DILocation(line: 0, scope: !1165, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 692, column: 14, scope: !1483)
!1527 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1526)
!1528 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1526)
!1529 = !DILocation(line: 693, column: 24, scope: !1483)
!1530 = !DILocation(line: 693, column: 35, scope: !1483)
!1531 = !DILocation(line: 0, scope: !1165, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 693, column: 14, scope: !1483)
!1533 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1532)
!1534 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1532)
!1535 = !DILocation(line: 694, column: 24, scope: !1483)
!1536 = !DILocation(line: 694, column: 35, scope: !1483)
!1537 = !DILocation(line: 0, scope: !1165, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 694, column: 14, scope: !1483)
!1539 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1538)
!1540 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1538)
!1541 = !DILocation(line: 695, column: 24, scope: !1483)
!1542 = !DILocation(line: 695, column: 35, scope: !1483)
!1543 = !DILocation(line: 0, scope: !1165, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 695, column: 14, scope: !1483)
!1545 = !DILocation(line: 329, column: 17, scope: !1165, inlinedAt: !1544)
!1546 = !DILocation(line: 329, column: 13, scope: !1165, inlinedAt: !1544)
!1547 = !DILocation(line: 0, scope: !1165, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 696, column: 14, scope: !1483)
!1549 = !DILocation(line: 0, scope: !1235, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 697, column: 17, scope: !1483)
!1551 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1550)
!1552 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1550)
!1553 = !DILocation(line: 697, column: 15, scope: !1483)
!1554 = !DILocation(line: 0, scope: !1235, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 698, column: 17, scope: !1483)
!1556 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1555)
!1557 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1555)
!1558 = !DILocation(line: 698, column: 5, scope: !1483)
!1559 = !DILocation(line: 698, column: 15, scope: !1483)
!1560 = !DILocation(line: 0, scope: !1235, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 699, column: 28, scope: !1483)
!1562 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1561)
!1563 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1561)
!1564 = !DILocation(line: 699, column: 16, scope: !1483)
!1565 = !DILocation(line: 699, column: 26, scope: !1483)
!1566 = !DILocation(line: 699, column: 5, scope: !1483)
!1567 = !DILocation(line: 699, column: 15, scope: !1483)
!1568 = !DILocation(line: 0, scope: !1235, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 700, column: 28, scope: !1483)
!1570 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1569)
!1571 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1569)
!1572 = !DILocation(line: 700, column: 16, scope: !1483)
!1573 = !DILocation(line: 700, column: 26, scope: !1483)
!1574 = !DILocation(line: 700, column: 5, scope: !1483)
!1575 = !DILocation(line: 700, column: 15, scope: !1483)
!1576 = !DILocation(line: 0, scope: !1235, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 701, column: 28, scope: !1483)
!1578 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1577)
!1579 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1577)
!1580 = !DILocation(line: 701, column: 16, scope: !1483)
!1581 = !DILocation(line: 701, column: 26, scope: !1483)
!1582 = !DILocation(line: 701, column: 5, scope: !1483)
!1583 = !DILocation(line: 701, column: 15, scope: !1483)
!1584 = !DILocation(line: 0, scope: !1235, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 702, column: 28, scope: !1483)
!1586 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1585)
!1587 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1585)
!1588 = !DILocation(line: 702, column: 16, scope: !1483)
!1589 = !DILocation(line: 702, column: 26, scope: !1483)
!1590 = !DILocation(line: 702, column: 5, scope: !1483)
!1591 = !DILocation(line: 702, column: 15, scope: !1483)
!1592 = !DILocation(line: 0, scope: !1235, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 703, column: 28, scope: !1483)
!1594 = !DILocation(line: 321, column: 17, scope: !1235, inlinedAt: !1593)
!1595 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1593)
!1596 = !DILocation(line: 703, column: 16, scope: !1483)
!1597 = !DILocation(line: 703, column: 26, scope: !1483)
!1598 = !DILocation(line: 703, column: 5, scope: !1483)
!1599 = !DILocation(line: 703, column: 15, scope: !1483)
!1600 = !DILocation(line: 0, scope: !1235, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 704, column: 54, scope: !1483)
!1602 = !DILocation(line: 321, column: 13, scope: !1235, inlinedAt: !1601)
!1603 = !DILocation(line: 704, column: 41, scope: !1483)
!1604 = !DILocation(line: 704, column: 52, scope: !1483)
!1605 = !DILocation(line: 704, column: 28, scope: !1483)
!1606 = !DILocation(line: 704, column: 39, scope: !1483)
!1607 = !DILocation(line: 704, column: 16, scope: !1483)
!1608 = !DILocation(line: 704, column: 26, scope: !1483)
!1609 = !DILocation(line: 704, column: 5, scope: !1483)
!1610 = !DILocation(line: 704, column: 15, scope: !1483)
!1611 = !DILocation(line: 705, column: 1, scope: !1483)
!1612 = distinct !DISubprogram(name: "predict_8x8_dc_left", scope: !1, file: !1, line: 528, type: !581, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625}
!1614 = !DILocalVariable(name: "src", arg: 1, scope: !1612, file: !1, line: 528, type: !118)
!1615 = !DILocalVariable(name: "edge", arg: 2, scope: !1612, file: !1, line: 528, type: !118)
!1616 = !DILocalVariable(name: "l0", scope: !1612, file: !1, line: 530, type: !112)
!1617 = !DILocalVariable(name: "l1", scope: !1612, file: !1, line: 530, type: !112)
!1618 = !DILocalVariable(name: "l2", scope: !1612, file: !1, line: 530, type: !112)
!1619 = !DILocalVariable(name: "l3", scope: !1612, file: !1, line: 530, type: !112)
!1620 = !DILocalVariable(name: "l4", scope: !1612, file: !1, line: 530, type: !112)
!1621 = !DILocalVariable(name: "l5", scope: !1612, file: !1, line: 530, type: !112)
!1622 = !DILocalVariable(name: "l6", scope: !1612, file: !1, line: 530, type: !112)
!1623 = !DILocalVariable(name: "l7", scope: !1612, file: !1, line: 530, type: !112)
!1624 = !DILocalVariable(name: "dc", scope: !1612, file: !1, line: 531, type: !67)
!1625 = !DILocalVariable(name: "y", scope: !1626, file: !1, line: 532, type: !112)
!1626 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 532, column: 5)
!1627 = !DILocation(line: 0, scope: !1612)
!1628 = !DILocation(line: 530, column: 5, scope: !1612)
!1629 = !DILocation(line: 531, column: 23, scope: !1612)
!1630 = !DILocation(line: 531, column: 26, scope: !1612)
!1631 = !DILocation(line: 531, column: 29, scope: !1612)
!1632 = !DILocation(line: 531, column: 32, scope: !1612)
!1633 = !DILocation(line: 531, column: 35, scope: !1612)
!1634 = !DILocation(line: 531, column: 38, scope: !1612)
!1635 = !DILocation(line: 531, column: 41, scope: !1612)
!1636 = !DILocation(line: 531, column: 44, scope: !1612)
!1637 = !DILocation(line: 531, column: 48, scope: !1612)
!1638 = !DILocation(line: 531, column: 54, scope: !1612)
!1639 = !DILocation(line: 0, scope: !1626)
!1640 = !DILocation(line: 532, column: 5, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !1, line: 532, column: 5)
!1642 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 532, column: 5)
!1643 = !DILocation(line: 533, column: 1, scope: !1612)
!1644 = distinct !DISubprogram(name: "predict_8x8_dc_top", scope: !1, file: !1, line: 534, type: !581, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1645)
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657}
!1646 = !DILocalVariable(name: "src", arg: 1, scope: !1644, file: !1, line: 534, type: !118)
!1647 = !DILocalVariable(name: "edge", arg: 2, scope: !1644, file: !1, line: 534, type: !118)
!1648 = !DILocalVariable(name: "t0", scope: !1644, file: !1, line: 536, type: !112)
!1649 = !DILocalVariable(name: "t1", scope: !1644, file: !1, line: 536, type: !112)
!1650 = !DILocalVariable(name: "t2", scope: !1644, file: !1, line: 536, type: !112)
!1651 = !DILocalVariable(name: "t3", scope: !1644, file: !1, line: 536, type: !112)
!1652 = !DILocalVariable(name: "t4", scope: !1644, file: !1, line: 536, type: !112)
!1653 = !DILocalVariable(name: "t5", scope: !1644, file: !1, line: 536, type: !112)
!1654 = !DILocalVariable(name: "t6", scope: !1644, file: !1, line: 536, type: !112)
!1655 = !DILocalVariable(name: "t7", scope: !1644, file: !1, line: 536, type: !112)
!1656 = !DILocalVariable(name: "dc", scope: !1644, file: !1, line: 537, type: !67)
!1657 = !DILocalVariable(name: "y", scope: !1658, file: !1, line: 538, type: !112)
!1658 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 538, column: 5)
!1659 = !DILocation(line: 0, scope: !1644)
!1660 = !DILocation(line: 536, column: 5, scope: !1644)
!1661 = !DILocation(line: 537, column: 23, scope: !1644)
!1662 = !DILocation(line: 537, column: 26, scope: !1644)
!1663 = !DILocation(line: 537, column: 29, scope: !1644)
!1664 = !DILocation(line: 537, column: 32, scope: !1644)
!1665 = !DILocation(line: 537, column: 35, scope: !1644)
!1666 = !DILocation(line: 537, column: 38, scope: !1644)
!1667 = !DILocation(line: 537, column: 41, scope: !1644)
!1668 = !DILocation(line: 537, column: 44, scope: !1644)
!1669 = !DILocation(line: 537, column: 48, scope: !1644)
!1670 = !DILocation(line: 537, column: 54, scope: !1644)
!1671 = !DILocation(line: 0, scope: !1658)
!1672 = !DILocation(line: 538, column: 5, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !1, line: 538, column: 5)
!1674 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 538, column: 5)
!1675 = !DILocation(line: 539, column: 1, scope: !1644)
!1676 = distinct !DISubprogram(name: "predict_8x8_dc_128", scope: !1, file: !1, line: 524, type: !581, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1677)
!1677 = !{!1678, !1679, !1680}
!1678 = !DILocalVariable(name: "src", arg: 1, scope: !1676, file: !1, line: 524, type: !118)
!1679 = !DILocalVariable(name: "edge", arg: 2, scope: !1676, file: !1, line: 524, type: !118)
!1680 = !DILocalVariable(name: "y", scope: !1681, file: !1, line: 526, type: !112)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 526, column: 5)
!1682 = !DILocation(line: 0, scope: !1676)
!1683 = !DILocation(line: 0, scope: !1681)
!1684 = !DILocation(line: 526, column: 5, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 526, column: 5)
!1686 = distinct !DILexicalBlock(scope: !1681, file: !1, line: 526, column: 5)
!1687 = !DILocation(line: 527, column: 1, scope: !1676)
!1688 = distinct !DISubprogram(name: "predict_8x8_filter", scope: !1, file: !1, line: 458, type: !586, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1689)
!1689 = !{!1690, !1691, !1692, !1693, !1694, !1695}
!1690 = !DILocalVariable(name: "src", arg: 1, scope: !1688, file: !1, line: 458, type: !118)
!1691 = !DILocalVariable(name: "edge", arg: 2, scope: !1688, file: !1, line: 458, type: !118)
!1692 = !DILocalVariable(name: "i_neighbor", arg: 3, scope: !1688, file: !1, line: 458, type: !112)
!1693 = !DILocalVariable(name: "i_filters", arg: 4, scope: !1688, file: !1, line: 458, type: !112)
!1694 = !DILocalVariable(name: "have_lt", scope: !1688, file: !1, line: 465, type: !112)
!1695 = !DILocalVariable(name: "have_tr", scope: !1696, file: !1, line: 477, type: !112)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !1, line: 476, column: 5)
!1697 = distinct !DILexicalBlock(scope: !1688, file: !1, line: 475, column: 9)
!1698 = !DILocation(line: 0, scope: !1688)
!1699 = !DILocation(line: 465, column: 30, scope: !1688)
!1700 = !DILocation(line: 466, column: 19, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1688, file: !1, line: 466, column: 9)
!1702 = !DILocation(line: 466, column: 9, scope: !1688)
!1703 = !DILocation(line: 468, column: 21, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 467, column: 5)
!1705 = !DILocation(line: 468, column: 35, scope: !1704)
!1706 = !DILocation(line: 468, column: 34, scope: !1704)
!1707 = !DILocation(line: 468, column: 48, scope: !1704)
!1708 = !DILocation(line: 468, column: 31, scope: !1704)
!1709 = !DILocation(line: 468, column: 46, scope: !1704)
!1710 = !DILocation(line: 468, column: 58, scope: !1704)
!1711 = !DILocation(line: 468, column: 63, scope: !1704)
!1712 = !DILocation(line: 468, column: 20, scope: !1704)
!1713 = !DILocation(line: 468, column: 9, scope: !1704)
!1714 = !DILocation(line: 468, column: 18, scope: !1704)
!1715 = !DILocation(line: 469, column: 22, scope: !1704)
!1716 = !DILocation(line: 469, scope: !1704)
!1717 = !DILocation(line: 470, column: 22, scope: !1704)
!1718 = !DILocation(line: 470, column: 21, scope: !1704)
!1719 = !DILocation(line: 470, column: 34, scope: !1704)
!1720 = !DILocation(line: 470, column: 18, scope: !1704)
!1721 = !DILocation(line: 470, column: 32, scope: !1704)
!1722 = !DILocation(line: 470, column: 44, scope: !1704)
!1723 = !DILocation(line: 470, column: 49, scope: !1704)
!1724 = !DILocation(line: 469, column: 20, scope: !1704)
!1725 = !DILocation(line: 469, column: 9, scope: !1704)
!1726 = !DILocation(line: 469, column: 18, scope: !1704)
!1727 = !DILocation(line: 471, column: 9, scope: !1704)
!1728 = !DILocation(line: 471, column: 15, scope: !1704)
!1729 = !DILocation(line: 471, column: 21, scope: !1704)
!1730 = !DILocation(line: 471, column: 27, scope: !1704)
!1731 = !DILocation(line: 471, column: 33, scope: !1704)
!1732 = !DILocation(line: 471, column: 39, scope: !1704)
!1733 = !DILocation(line: 472, column: 20, scope: !1704)
!1734 = !DILocation(line: 472, column: 34, scope: !1704)
!1735 = !DILocation(line: 472, column: 33, scope: !1704)
!1736 = !DILocation(line: 472, column: 30, scope: !1704)
!1737 = !DILocation(line: 472, column: 44, scope: !1704)
!1738 = !DILocation(line: 472, column: 49, scope: !1704)
!1739 = !DILocation(line: 472, column: 19, scope: !1704)
!1740 = !DILocation(line: 472, column: 9, scope: !1704)
!1741 = !DILocation(line: 472, column: 17, scope: !1704)
!1742 = !DILocation(line: 473, column: 5, scope: !1704)
!1743 = !DILocation(line: 475, column: 19, scope: !1697)
!1744 = !DILocation(line: 475, column: 9, scope: !1688)
!1745 = !DILocation(line: 477, column: 34, scope: !1696)
!1746 = !DILocation(line: 0, scope: !1696)
!1747 = !DILocation(line: 478, column: 22, scope: !1696)
!1748 = !DILocation(line: 478, scope: !1696)
!1749 = !DILocation(line: 479, column: 22, scope: !1696)
!1750 = !DILocation(line: 479, column: 21, scope: !1696)
!1751 = !DILocation(line: 479, column: 34, scope: !1696)
!1752 = !DILocation(line: 479, column: 18, scope: !1696)
!1753 = !DILocation(line: 479, column: 32, scope: !1696)
!1754 = !DILocation(line: 479, column: 44, scope: !1696)
!1755 = !DILocation(line: 479, column: 49, scope: !1696)
!1756 = !DILocation(line: 478, column: 20, scope: !1696)
!1757 = !DILocation(line: 478, column: 9, scope: !1696)
!1758 = !DILocation(line: 478, column: 18, scope: !1696)
!1759 = !DILocation(line: 480, column: 9, scope: !1696)
!1760 = !DILocation(line: 480, column: 15, scope: !1696)
!1761 = !DILocation(line: 480, column: 21, scope: !1696)
!1762 = !DILocation(line: 480, column: 27, scope: !1696)
!1763 = !DILocation(line: 480, column: 33, scope: !1696)
!1764 = !DILocation(line: 480, column: 39, scope: !1696)
!1765 = !DILocation(line: 481, column: 21, scope: !1696)
!1766 = !DILocation(line: 481, column: 35, scope: !1696)
!1767 = !DILocation(line: 481, column: 34, scope: !1696)
!1768 = !DILocation(line: 481, column: 31, scope: !1696)
!1769 = !DILocation(line: 482, column: 21, scope: !1696)
!1770 = !DILocation(line: 482, column: 18, scope: !1696)
!1771 = !DILocation(line: 482, column: 54, scope: !1696)
!1772 = !DILocation(line: 482, column: 59, scope: !1696)
!1773 = !DILocation(line: 481, column: 20, scope: !1696)
!1774 = !DILocation(line: 481, column: 9, scope: !1696)
!1775 = !DILocation(line: 481, column: 18, scope: !1696)
!1776 = !DILocation(line: 484, column: 23, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1696, file: !1, line: 484, column: 13)
!1778 = !DILocation(line: 484, column: 13, scope: !1696)
!1779 = !DILocation(line: 482, column: 31, scope: !1696)
!1780 = !DILocation(line: 488, column: 17, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !1, line: 487, column: 13)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !1, line: 486, column: 17)
!1783 = distinct !DILexicalBlock(scope: !1777, file: !1, line: 485, column: 9)
!1784 = !DILocation(line: 488, column: 23, scope: !1781)
!1785 = !DILocation(line: 488, column: 29, scope: !1781)
!1786 = !DILocation(line: 488, column: 36, scope: !1781)
!1787 = !DILocation(line: 488, column: 43, scope: !1781)
!1788 = !DILocation(line: 488, column: 50, scope: !1781)
!1789 = !DILocation(line: 488, column: 57, scope: !1781)
!1790 = !DILocation(line: 490, column: 29, scope: !1781)
!1791 = !DILocation(line: 490, column: 44, scope: !1781)
!1792 = !DILocation(line: 490, column: 43, scope: !1781)
!1793 = !DILocation(line: 490, column: 40, scope: !1781)
!1794 = !DILocation(line: 490, column: 55, scope: !1781)
!1795 = !DILocation(line: 490, column: 60, scope: !1781)
!1796 = !DILocation(line: 490, column: 28, scope: !1781)
!1797 = !DILocation(line: 490, column: 17, scope: !1781)
!1798 = !DILocation(line: 490, column: 26, scope: !1781)
!1799 = !DILocation(line: 491, column: 13, scope: !1781)
!1800 = !DILocation(line: 494, column: 34, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1782, file: !1, line: 493, column: 13)
!1802 = !DILocation(line: 494, column: 44, scope: !1801)
!1803 = !DILocation(line: 494, column: 17, scope: !1801)
!1804 = !DILocation(line: 494, column: 32, scope: !1801)
!1805 = !DILocation(line: 495, column: 28, scope: !1801)
!1806 = !DILocation(line: 0, scope: !1782)
!1807 = !DILocation(line: 499, column: 1, scope: !1688)
!1808 = distinct !DISubprogram(name: "x264_predict_4x4_init", scope: !1, file: !1, line: 783, type: !110, scopeLine: 784, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1809)
!1809 = !{!1810, !1811}
!1810 = !DILocalVariable(name: "cpu", arg: 1, scope: !1808, file: !1, line: 783, type: !112)
!1811 = !DILocalVariable(name: "pf", arg: 2, scope: !1808, file: !1, line: 783, type: !113)
!1812 = !DILocation(line: 0, scope: !1808)
!1813 = !DILocation(line: 785, column: 27, scope: !1808)
!1814 = !DILocation(line: 786, column: 5, scope: !1808)
!1815 = !DILocation(line: 786, column: 27, scope: !1808)
!1816 = !DILocation(line: 787, column: 5, scope: !1808)
!1817 = !DILocation(line: 787, column: 27, scope: !1808)
!1818 = !DILocation(line: 788, column: 5, scope: !1808)
!1819 = !DILocation(line: 788, column: 27, scope: !1808)
!1820 = !DILocation(line: 789, column: 5, scope: !1808)
!1821 = !DILocation(line: 789, column: 27, scope: !1808)
!1822 = !DILocation(line: 790, column: 5, scope: !1808)
!1823 = !DILocation(line: 790, column: 27, scope: !1808)
!1824 = !DILocation(line: 791, column: 5, scope: !1808)
!1825 = !DILocation(line: 791, column: 27, scope: !1808)
!1826 = !DILocation(line: 792, column: 5, scope: !1808)
!1827 = !DILocation(line: 792, column: 27, scope: !1808)
!1828 = !DILocation(line: 793, column: 5, scope: !1808)
!1829 = !DILocation(line: 793, column: 27, scope: !1808)
!1830 = !DILocation(line: 794, column: 5, scope: !1808)
!1831 = !DILocation(line: 794, column: 27, scope: !1808)
!1832 = !DILocation(line: 795, column: 5, scope: !1808)
!1833 = !DILocation(line: 795, column: 27, scope: !1808)
!1834 = !DILocation(line: 796, column: 5, scope: !1808)
!1835 = !DILocation(line: 796, column: 27, scope: !1808)
!1836 = !DILocation(line: 805, column: 1, scope: !1808)
!1837 = distinct !DISubprogram(name: "predict_4x4_v", scope: !1, file: !1, line: 334, type: !116, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1838)
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "src", arg: 1, scope: !1837, file: !1, line: 334, type: !118)
!1840 = !DILocation(line: 0, scope: !1837)
!1841 = !DILocation(line: 336, column: 5, scope: !1837)
!1842 = !DILocation(line: 337, column: 1, scope: !1837)
!1843 = distinct !DISubprogram(name: "predict_4x4_h", scope: !1, file: !1, line: 327, type: !116, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1844)
!1844 = !{!1845}
!1845 = !DILocalVariable(name: "src", arg: 1, scope: !1843, file: !1, line: 327, type: !118)
!1846 = !DILocation(line: 0, scope: !1843)
!1847 = !DILocation(line: 329, column: 18, scope: !1843)
!1848 = !DILocation(line: 329, column: 28, scope: !1843)
!1849 = !DILocation(line: 329, column: 16, scope: !1843)
!1850 = !DILocation(line: 330, column: 18, scope: !1843)
!1851 = !DILocation(line: 330, column: 28, scope: !1843)
!1852 = !DILocation(line: 330, column: 5, scope: !1843)
!1853 = !DILocation(line: 330, column: 16, scope: !1843)
!1854 = !DILocation(line: 331, column: 18, scope: !1843)
!1855 = !DILocation(line: 331, column: 28, scope: !1843)
!1856 = !DILocation(line: 331, column: 5, scope: !1843)
!1857 = !DILocation(line: 331, column: 16, scope: !1843)
!1858 = !DILocation(line: 332, column: 18, scope: !1843)
!1859 = !DILocation(line: 332, column: 28, scope: !1843)
!1860 = !DILocation(line: 332, column: 5, scope: !1843)
!1861 = !DILocation(line: 332, column: 16, scope: !1843)
!1862 = !DILocation(line: 333, column: 1, scope: !1843)
!1863 = distinct !DISubprogram(name: "predict_4x4_dc", scope: !1, file: !1, line: 321, type: !116, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1864)
!1864 = !{!1865, !1866}
!1865 = !DILocalVariable(name: "src", arg: 1, scope: !1863, file: !1, line: 321, type: !118)
!1866 = !DILocalVariable(name: "dc", scope: !1863, file: !1, line: 323, type: !67)
!1867 = !DILocation(line: 0, scope: !1863)
!1868 = !DILocation(line: 323, column: 21, scope: !1863)
!1869 = !DILocation(line: 323, column: 33, scope: !1863)
!1870 = !DILocation(line: 323, column: 45, scope: !1863)
!1871 = !DILocation(line: 323, column: 57, scope: !1863)
!1872 = !DILocation(line: 324, column: 21, scope: !1863)
!1873 = !DILocation(line: 324, column: 33, scope: !1863)
!1874 = !DILocation(line: 324, column: 45, scope: !1863)
!1875 = !DILocation(line: 324, column: 57, scope: !1863)
!1876 = !DILocation(line: 323, column: 31, scope: !1863)
!1877 = !DILocation(line: 323, column: 43, scope: !1863)
!1878 = !DILocation(line: 323, column: 55, scope: !1863)
!1879 = !DILocation(line: 323, column: 67, scope: !1863)
!1880 = !DILocation(line: 324, column: 31, scope: !1863)
!1881 = !DILocation(line: 324, column: 43, scope: !1863)
!1882 = !DILocation(line: 324, column: 55, scope: !1863)
!1883 = !DILocation(line: 324, column: 67, scope: !1863)
!1884 = !DILocation(line: 324, column: 72, scope: !1863)
!1885 = !DILocation(line: 324, column: 78, scope: !1863)
!1886 = !DILocation(line: 325, column: 5, scope: !1863)
!1887 = !DILocation(line: 326, column: 1, scope: !1863)
!1888 = distinct !DISubprogram(name: "predict_4x4_ddl", scope: !1, file: !1, line: 360, type: !116, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1889)
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898}
!1890 = !DILocalVariable(name: "src", arg: 1, scope: !1888, file: !1, line: 360, type: !118)
!1891 = !DILocalVariable(name: "t0", scope: !1888, file: !1, line: 362, type: !112)
!1892 = !DILocalVariable(name: "t1", scope: !1888, file: !1, line: 362, type: !112)
!1893 = !DILocalVariable(name: "t2", scope: !1888, file: !1, line: 362, type: !112)
!1894 = !DILocalVariable(name: "t3", scope: !1888, file: !1, line: 362, type: !112)
!1895 = !DILocalVariable(name: "t4", scope: !1888, file: !1, line: 363, type: !112)
!1896 = !DILocalVariable(name: "t5", scope: !1888, file: !1, line: 363, type: !112)
!1897 = !DILocalVariable(name: "t6", scope: !1888, file: !1, line: 363, type: !112)
!1898 = !DILocalVariable(name: "t7", scope: !1888, file: !1, line: 363, type: !112)
!1899 = !DILocation(line: 0, scope: !1888)
!1900 = !DILocation(line: 362, column: 5, scope: !1888)
!1901 = !DILocation(line: 363, column: 5, scope: !1888)
!1902 = !DILocation(line: 364, column: 15, scope: !1888)
!1903 = !DILocation(line: 364, column: 13, scope: !1888)
!1904 = !DILocation(line: 365, column: 24, scope: !1888)
!1905 = !DILocation(line: 365, column: 14, scope: !1888)
!1906 = !DILocation(line: 365, column: 22, scope: !1888)
!1907 = !DILocation(line: 365, column: 5, scope: !1888)
!1908 = !DILocation(line: 365, column: 13, scope: !1888)
!1909 = !DILocation(line: 366, column: 33, scope: !1888)
!1910 = !DILocation(line: 366, column: 23, scope: !1888)
!1911 = !DILocation(line: 366, column: 31, scope: !1888)
!1912 = !DILocation(line: 366, column: 14, scope: !1888)
!1913 = !DILocation(line: 366, column: 22, scope: !1888)
!1914 = !DILocation(line: 366, column: 5, scope: !1888)
!1915 = !DILocation(line: 366, column: 13, scope: !1888)
!1916 = !DILocation(line: 367, column: 42, scope: !1888)
!1917 = !DILocation(line: 367, column: 32, scope: !1888)
!1918 = !DILocation(line: 367, column: 40, scope: !1888)
!1919 = !DILocation(line: 367, column: 23, scope: !1888)
!1920 = !DILocation(line: 367, column: 31, scope: !1888)
!1921 = !DILocation(line: 367, column: 14, scope: !1888)
!1922 = !DILocation(line: 367, column: 22, scope: !1888)
!1923 = !DILocation(line: 367, column: 5, scope: !1888)
!1924 = !DILocation(line: 367, column: 13, scope: !1888)
!1925 = !DILocation(line: 368, column: 33, scope: !1888)
!1926 = !DILocation(line: 368, column: 23, scope: !1888)
!1927 = !DILocation(line: 368, column: 31, scope: !1888)
!1928 = !DILocation(line: 368, column: 14, scope: !1888)
!1929 = !DILocation(line: 368, column: 22, scope: !1888)
!1930 = !DILocation(line: 368, column: 5, scope: !1888)
!1931 = !DILocation(line: 368, column: 13, scope: !1888)
!1932 = !DILocation(line: 369, column: 24, scope: !1888)
!1933 = !DILocation(line: 369, column: 14, scope: !1888)
!1934 = !DILocation(line: 369, column: 22, scope: !1888)
!1935 = !DILocation(line: 369, column: 5, scope: !1888)
!1936 = !DILocation(line: 369, column: 13, scope: !1888)
!1937 = !DILocation(line: 370, column: 15, scope: !1888)
!1938 = !DILocation(line: 370, column: 5, scope: !1888)
!1939 = !DILocation(line: 370, column: 13, scope: !1888)
!1940 = !DILocation(line: 371, column: 1, scope: !1888)
!1941 = distinct !DISubprogram(name: "predict_4x4_ddr", scope: !1, file: !1, line: 372, type: !116, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1942)
!1942 = !{!1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952}
!1943 = !DILocalVariable(name: "src", arg: 1, scope: !1941, file: !1, line: 372, type: !118)
!1944 = !DILocalVariable(name: "lt", scope: !1941, file: !1, line: 374, type: !112)
!1945 = !DILocalVariable(name: "l0", scope: !1941, file: !1, line: 375, type: !112)
!1946 = !DILocalVariable(name: "l1", scope: !1941, file: !1, line: 375, type: !112)
!1947 = !DILocalVariable(name: "l2", scope: !1941, file: !1, line: 375, type: !112)
!1948 = !DILocalVariable(name: "l3", scope: !1941, file: !1, line: 375, type: !112)
!1949 = !DILocalVariable(name: "t0", scope: !1941, file: !1, line: 376, type: !112)
!1950 = !DILocalVariable(name: "t1", scope: !1941, file: !1, line: 376, type: !112)
!1951 = !DILocalVariable(name: "t2", scope: !1941, file: !1, line: 376, type: !112)
!1952 = !DILocalVariable(name: "t3", scope: !1941, file: !1, line: 376, type: !112)
!1953 = !DILocation(line: 0, scope: !1941)
!1954 = !DILocation(line: 374, column: 14, scope: !1941)
!1955 = !DILocation(line: 375, column: 5, scope: !1941)
!1956 = !DILocation(line: 376, column: 5, scope: !1941)
!1957 = !DILocation(line: 377, column: 15, scope: !1941)
!1958 = !DILocation(line: 377, column: 5, scope: !1941)
!1959 = !DILocation(line: 377, column: 13, scope: !1941)
!1960 = !DILocation(line: 378, column: 24, scope: !1941)
!1961 = !DILocation(line: 378, column: 14, scope: !1941)
!1962 = !DILocation(line: 378, column: 22, scope: !1941)
!1963 = !DILocation(line: 378, column: 5, scope: !1941)
!1964 = !DILocation(line: 378, column: 13, scope: !1941)
!1965 = !DILocation(line: 379, column: 33, scope: !1941)
!1966 = !DILocation(line: 379, column: 23, scope: !1941)
!1967 = !DILocation(line: 379, column: 31, scope: !1941)
!1968 = !DILocation(line: 379, column: 14, scope: !1941)
!1969 = !DILocation(line: 379, column: 22, scope: !1941)
!1970 = !DILocation(line: 379, column: 5, scope: !1941)
!1971 = !DILocation(line: 379, column: 13, scope: !1941)
!1972 = !DILocation(line: 380, column: 42, scope: !1941)
!1973 = !DILocation(line: 380, column: 32, scope: !1941)
!1974 = !DILocation(line: 380, column: 40, scope: !1941)
!1975 = !DILocation(line: 380, column: 23, scope: !1941)
!1976 = !DILocation(line: 380, column: 31, scope: !1941)
!1977 = !DILocation(line: 380, column: 14, scope: !1941)
!1978 = !DILocation(line: 380, column: 22, scope: !1941)
!1979 = !DILocation(line: 380, column: 13, scope: !1941)
!1980 = !DILocation(line: 381, column: 33, scope: !1941)
!1981 = !DILocation(line: 381, column: 23, scope: !1941)
!1982 = !DILocation(line: 381, column: 31, scope: !1941)
!1983 = !DILocation(line: 381, column: 14, scope: !1941)
!1984 = !DILocation(line: 381, column: 22, scope: !1941)
!1985 = !DILocation(line: 381, column: 5, scope: !1941)
!1986 = !DILocation(line: 381, column: 13, scope: !1941)
!1987 = !DILocation(line: 382, column: 24, scope: !1941)
!1988 = !DILocation(line: 382, column: 14, scope: !1941)
!1989 = !DILocation(line: 382, column: 22, scope: !1941)
!1990 = !DILocation(line: 382, column: 5, scope: !1941)
!1991 = !DILocation(line: 382, column: 13, scope: !1941)
!1992 = !DILocation(line: 383, column: 15, scope: !1941)
!1993 = !DILocation(line: 383, column: 5, scope: !1941)
!1994 = !DILocation(line: 383, column: 13, scope: !1941)
!1995 = !DILocation(line: 384, column: 1, scope: !1941)
!1996 = distinct !DISubprogram(name: "predict_4x4_vr", scope: !1, file: !1, line: 386, type: !116, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1997)
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007}
!1998 = !DILocalVariable(name: "src", arg: 1, scope: !1996, file: !1, line: 386, type: !118)
!1999 = !DILocalVariable(name: "lt", scope: !1996, file: !1, line: 388, type: !112)
!2000 = !DILocalVariable(name: "l0", scope: !1996, file: !1, line: 389, type: !112)
!2001 = !DILocalVariable(name: "l1", scope: !1996, file: !1, line: 389, type: !112)
!2002 = !DILocalVariable(name: "l2", scope: !1996, file: !1, line: 389, type: !112)
!2003 = !DILocalVariable(name: "l3", scope: !1996, file: !1, line: 389, type: !112)
!2004 = !DILocalVariable(name: "t0", scope: !1996, file: !1, line: 390, type: !112)
!2005 = !DILocalVariable(name: "t1", scope: !1996, file: !1, line: 390, type: !112)
!2006 = !DILocalVariable(name: "t2", scope: !1996, file: !1, line: 390, type: !112)
!2007 = !DILocalVariable(name: "t3", scope: !1996, file: !1, line: 390, type: !112)
!2008 = !DILocation(line: 0, scope: !1996)
!2009 = !DILocation(line: 388, column: 14, scope: !1996)
!2010 = !DILocation(line: 389, column: 5, scope: !1996)
!2011 = !DILocation(line: 390, column: 5, scope: !1996)
!2012 = !DILocation(line: 391, column: 15, scope: !1996)
!2013 = !DILocation(line: 391, column: 5, scope: !1996)
!2014 = !DILocation(line: 391, column: 13, scope: !1996)
!2015 = !DILocation(line: 392, column: 15, scope: !1996)
!2016 = !DILocation(line: 392, column: 5, scope: !1996)
!2017 = !DILocation(line: 392, column: 13, scope: !1996)
!2018 = !DILocation(line: 393, column: 24, scope: !1996)
!2019 = !DILocation(line: 393, column: 14, scope: !1996)
!2020 = !DILocation(line: 393, column: 22, scope: !1996)
!2021 = !DILocation(line: 393, column: 5, scope: !1996)
!2022 = !DILocation(line: 393, column: 13, scope: !1996)
!2023 = !DILocation(line: 394, column: 24, scope: !1996)
!2024 = !DILocation(line: 394, column: 14, scope: !1996)
!2025 = !DILocation(line: 394, column: 22, scope: !1996)
!2026 = !DILocation(line: 394, column: 13, scope: !1996)
!2027 = !DILocation(line: 395, column: 24, scope: !1996)
!2028 = !DILocation(line: 395, column: 14, scope: !1996)
!2029 = !DILocation(line: 395, column: 22, scope: !1996)
!2030 = !DILocation(line: 395, column: 5, scope: !1996)
!2031 = !DILocation(line: 395, column: 13, scope: !1996)
!2032 = !DILocation(line: 396, column: 24, scope: !1996)
!2033 = !DILocation(line: 396, column: 14, scope: !1996)
!2034 = !DILocation(line: 396, column: 22, scope: !1996)
!2035 = !DILocation(line: 396, column: 5, scope: !1996)
!2036 = !DILocation(line: 396, column: 13, scope: !1996)
!2037 = !DILocation(line: 397, column: 24, scope: !1996)
!2038 = !DILocation(line: 397, column: 14, scope: !1996)
!2039 = !DILocation(line: 397, column: 22, scope: !1996)
!2040 = !DILocation(line: 397, column: 5, scope: !1996)
!2041 = !DILocation(line: 397, column: 13, scope: !1996)
!2042 = !DILocation(line: 398, column: 24, scope: !1996)
!2043 = !DILocation(line: 398, column: 14, scope: !1996)
!2044 = !DILocation(line: 398, column: 22, scope: !1996)
!2045 = !DILocation(line: 398, column: 5, scope: !1996)
!2046 = !DILocation(line: 398, column: 13, scope: !1996)
!2047 = !DILocation(line: 399, column: 15, scope: !1996)
!2048 = !DILocation(line: 399, column: 5, scope: !1996)
!2049 = !DILocation(line: 399, column: 13, scope: !1996)
!2050 = !DILocation(line: 400, column: 15, scope: !1996)
!2051 = !DILocation(line: 400, column: 5, scope: !1996)
!2052 = !DILocation(line: 400, column: 13, scope: !1996)
!2053 = !DILocation(line: 401, column: 1, scope: !1996)
!2054 = distinct !DISubprogram(name: "predict_4x4_hd", scope: !1, file: !1, line: 403, type: !116, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2055)
!2055 = !{!2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065}
!2056 = !DILocalVariable(name: "src", arg: 1, scope: !2054, file: !1, line: 403, type: !118)
!2057 = !DILocalVariable(name: "lt", scope: !2054, file: !1, line: 405, type: !112)
!2058 = !DILocalVariable(name: "l0", scope: !2054, file: !1, line: 406, type: !112)
!2059 = !DILocalVariable(name: "l1", scope: !2054, file: !1, line: 406, type: !112)
!2060 = !DILocalVariable(name: "l2", scope: !2054, file: !1, line: 406, type: !112)
!2061 = !DILocalVariable(name: "l3", scope: !2054, file: !1, line: 406, type: !112)
!2062 = !DILocalVariable(name: "t0", scope: !2054, file: !1, line: 407, type: !112)
!2063 = !DILocalVariable(name: "t1", scope: !2054, file: !1, line: 407, type: !112)
!2064 = !DILocalVariable(name: "t2", scope: !2054, file: !1, line: 407, type: !112)
!2065 = !DILocalVariable(name: "t3", scope: !2054, file: !1, line: 407, type: !112)
!2066 = !DILocation(line: 0, scope: !2054)
!2067 = !DILocation(line: 405, column: 13, scope: !2054)
!2068 = !DILocation(line: 406, column: 5, scope: !2054)
!2069 = !DILocation(line: 407, column: 5, scope: !2054)
!2070 = !DILocation(line: 408, column: 15, scope: !2054)
!2071 = !DILocation(line: 408, column: 5, scope: !2054)
!2072 = !DILocation(line: 408, column: 13, scope: !2054)
!2073 = !DILocation(line: 409, column: 15, scope: !2054)
!2074 = !DILocation(line: 409, column: 5, scope: !2054)
!2075 = !DILocation(line: 409, column: 13, scope: !2054)
!2076 = !DILocation(line: 410, column: 24, scope: !2054)
!2077 = !DILocation(line: 410, column: 14, scope: !2054)
!2078 = !DILocation(line: 410, column: 22, scope: !2054)
!2079 = !DILocation(line: 410, column: 5, scope: !2054)
!2080 = !DILocation(line: 410, column: 13, scope: !2054)
!2081 = !DILocation(line: 411, column: 24, scope: !2054)
!2082 = !DILocation(line: 411, column: 14, scope: !2054)
!2083 = !DILocation(line: 411, column: 22, scope: !2054)
!2084 = !DILocation(line: 411, column: 5, scope: !2054)
!2085 = !DILocation(line: 411, column: 13, scope: !2054)
!2086 = !DILocation(line: 412, column: 24, scope: !2054)
!2087 = !DILocation(line: 412, column: 14, scope: !2054)
!2088 = !DILocation(line: 412, column: 22, scope: !2054)
!2089 = !DILocation(line: 412, column: 5, scope: !2054)
!2090 = !DILocation(line: 412, column: 13, scope: !2054)
!2091 = !DILocation(line: 413, column: 24, scope: !2054)
!2092 = !DILocation(line: 413, column: 14, scope: !2054)
!2093 = !DILocation(line: 413, column: 22, scope: !2054)
!2094 = !DILocation(line: 413, column: 5, scope: !2054)
!2095 = !DILocation(line: 413, column: 13, scope: !2054)
!2096 = !DILocation(line: 414, column: 24, scope: !2054)
!2097 = !DILocation(line: 414, column: 14, scope: !2054)
!2098 = !DILocation(line: 414, column: 22, scope: !2054)
!2099 = !DILocation(line: 414, column: 13, scope: !2054)
!2100 = !DILocation(line: 415, column: 24, scope: !2054)
!2101 = !DILocation(line: 415, column: 14, scope: !2054)
!2102 = !DILocation(line: 415, column: 22, scope: !2054)
!2103 = !DILocation(line: 415, column: 5, scope: !2054)
!2104 = !DILocation(line: 415, column: 13, scope: !2054)
!2105 = !DILocation(line: 416, column: 15, scope: !2054)
!2106 = !DILocation(line: 416, column: 5, scope: !2054)
!2107 = !DILocation(line: 416, column: 13, scope: !2054)
!2108 = !DILocation(line: 417, column: 15, scope: !2054)
!2109 = !DILocation(line: 417, column: 5, scope: !2054)
!2110 = !DILocation(line: 417, column: 13, scope: !2054)
!2111 = !DILocation(line: 418, column: 1, scope: !2054)
!2112 = distinct !DISubprogram(name: "predict_4x4_vl", scope: !1, file: !1, line: 420, type: !116, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2113)
!2113 = !{!2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122}
!2114 = !DILocalVariable(name: "src", arg: 1, scope: !2112, file: !1, line: 420, type: !118)
!2115 = !DILocalVariable(name: "t0", scope: !2112, file: !1, line: 422, type: !112)
!2116 = !DILocalVariable(name: "t1", scope: !2112, file: !1, line: 422, type: !112)
!2117 = !DILocalVariable(name: "t2", scope: !2112, file: !1, line: 422, type: !112)
!2118 = !DILocalVariable(name: "t3", scope: !2112, file: !1, line: 422, type: !112)
!2119 = !DILocalVariable(name: "t4", scope: !2112, file: !1, line: 423, type: !112)
!2120 = !DILocalVariable(name: "t5", scope: !2112, file: !1, line: 423, type: !112)
!2121 = !DILocalVariable(name: "t6", scope: !2112, file: !1, line: 423, type: !112)
!2122 = !DILocalVariable(name: "t7", scope: !2112, file: !1, line: 423, type: !112)
!2123 = !DILocation(line: 0, scope: !2112)
!2124 = !DILocation(line: 422, column: 5, scope: !2112)
!2125 = !DILocation(line: 423, column: 5, scope: !2112)
!2126 = !DILocation(line: 424, column: 15, scope: !2112)
!2127 = !DILocation(line: 424, column: 13, scope: !2112)
!2128 = !DILocation(line: 425, column: 15, scope: !2112)
!2129 = !DILocation(line: 425, column: 5, scope: !2112)
!2130 = !DILocation(line: 425, column: 13, scope: !2112)
!2131 = !DILocation(line: 426, column: 24, scope: !2112)
!2132 = !DILocation(line: 426, column: 14, scope: !2112)
!2133 = !DILocation(line: 426, column: 22, scope: !2112)
!2134 = !DILocation(line: 426, column: 5, scope: !2112)
!2135 = !DILocation(line: 426, column: 13, scope: !2112)
!2136 = !DILocation(line: 427, column: 24, scope: !2112)
!2137 = !DILocation(line: 427, column: 14, scope: !2112)
!2138 = !DILocation(line: 427, column: 22, scope: !2112)
!2139 = !DILocation(line: 427, column: 5, scope: !2112)
!2140 = !DILocation(line: 427, column: 13, scope: !2112)
!2141 = !DILocation(line: 428, column: 24, scope: !2112)
!2142 = !DILocation(line: 428, column: 14, scope: !2112)
!2143 = !DILocation(line: 428, column: 22, scope: !2112)
!2144 = !DILocation(line: 428, column: 5, scope: !2112)
!2145 = !DILocation(line: 428, column: 13, scope: !2112)
!2146 = !DILocation(line: 429, column: 24, scope: !2112)
!2147 = !DILocation(line: 429, column: 14, scope: !2112)
!2148 = !DILocation(line: 429, column: 22, scope: !2112)
!2149 = !DILocation(line: 429, column: 5, scope: !2112)
!2150 = !DILocation(line: 429, column: 13, scope: !2112)
!2151 = !DILocation(line: 430, column: 24, scope: !2112)
!2152 = !DILocation(line: 430, column: 14, scope: !2112)
!2153 = !DILocation(line: 430, column: 22, scope: !2112)
!2154 = !DILocation(line: 430, column: 5, scope: !2112)
!2155 = !DILocation(line: 430, column: 13, scope: !2112)
!2156 = !DILocation(line: 431, column: 24, scope: !2112)
!2157 = !DILocation(line: 431, column: 14, scope: !2112)
!2158 = !DILocation(line: 431, column: 22, scope: !2112)
!2159 = !DILocation(line: 431, column: 5, scope: !2112)
!2160 = !DILocation(line: 431, column: 13, scope: !2112)
!2161 = !DILocation(line: 432, column: 15, scope: !2112)
!2162 = !DILocation(line: 432, column: 5, scope: !2112)
!2163 = !DILocation(line: 432, column: 13, scope: !2112)
!2164 = !DILocation(line: 433, column: 15, scope: !2112)
!2165 = !DILocation(line: 433, column: 5, scope: !2112)
!2166 = !DILocation(line: 433, column: 13, scope: !2112)
!2167 = !DILocation(line: 434, column: 1, scope: !2112)
!2168 = distinct !DISubprogram(name: "predict_4x4_hu", scope: !1, file: !1, line: 436, type: !116, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2169)
!2169 = !{!2170, !2171, !2172, !2173, !2174}
!2170 = !DILocalVariable(name: "src", arg: 1, scope: !2168, file: !1, line: 436, type: !118)
!2171 = !DILocalVariable(name: "l0", scope: !2168, file: !1, line: 438, type: !112)
!2172 = !DILocalVariable(name: "l1", scope: !2168, file: !1, line: 438, type: !112)
!2173 = !DILocalVariable(name: "l2", scope: !2168, file: !1, line: 438, type: !112)
!2174 = !DILocalVariable(name: "l3", scope: !2168, file: !1, line: 438, type: !112)
!2175 = !DILocation(line: 0, scope: !2168)
!2176 = !DILocation(line: 438, column: 5, scope: !2168)
!2177 = !DILocation(line: 439, column: 15, scope: !2168)
!2178 = !DILocation(line: 439, column: 13, scope: !2168)
!2179 = !DILocation(line: 440, column: 15, scope: !2168)
!2180 = !DILocation(line: 440, column: 5, scope: !2168)
!2181 = !DILocation(line: 440, column: 13, scope: !2168)
!2182 = !DILocation(line: 441, column: 24, scope: !2168)
!2183 = !DILocation(line: 441, column: 14, scope: !2168)
!2184 = !DILocation(line: 441, column: 22, scope: !2168)
!2185 = !DILocation(line: 441, column: 5, scope: !2168)
!2186 = !DILocation(line: 441, column: 13, scope: !2168)
!2187 = !DILocation(line: 442, column: 24, scope: !2168)
!2188 = !DILocation(line: 442, column: 14, scope: !2168)
!2189 = !DILocation(line: 442, column: 22, scope: !2168)
!2190 = !DILocation(line: 442, column: 5, scope: !2168)
!2191 = !DILocation(line: 442, column: 13, scope: !2168)
!2192 = !DILocation(line: 443, column: 24, scope: !2168)
!2193 = !DILocation(line: 443, column: 14, scope: !2168)
!2194 = !DILocation(line: 443, column: 22, scope: !2168)
!2195 = !DILocation(line: 443, column: 5, scope: !2168)
!2196 = !DILocation(line: 443, column: 13, scope: !2168)
!2197 = !DILocation(line: 444, column: 24, scope: !2168)
!2198 = !DILocation(line: 444, column: 14, scope: !2168)
!2199 = !DILocation(line: 444, column: 22, scope: !2168)
!2200 = !DILocation(line: 444, column: 5, scope: !2168)
!2201 = !DILocation(line: 444, column: 13, scope: !2168)
!2202 = !DILocation(line: 446, column: 5, scope: !2168)
!2203 = !DILocation(line: 446, column: 13, scope: !2168)
!2204 = !DILocation(line: 445, column: 23, scope: !2168)
!2205 = !DILocation(line: 445, column: 31, scope: !2168)
!2206 = !DILocation(line: 445, column: 5, scope: !2168)
!2207 = !DILocation(line: 445, column: 13, scope: !2168)
!2208 = !DILocation(line: 447, column: 1, scope: !2168)
!2209 = distinct !DISubprogram(name: "predict_4x4_dc_left", scope: !1, file: !1, line: 311, type: !116, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2210)
!2210 = !{!2211, !2212}
!2211 = !DILocalVariable(name: "src", arg: 1, scope: !2209, file: !1, line: 311, type: !118)
!2212 = !DILocalVariable(name: "dc", scope: !2209, file: !1, line: 313, type: !67)
!2213 = !DILocation(line: 0, scope: !2209)
!2214 = !DILocation(line: 313, column: 21, scope: !2209)
!2215 = !DILocation(line: 313, column: 33, scope: !2209)
!2216 = !DILocation(line: 313, column: 45, scope: !2209)
!2217 = !DILocation(line: 313, column: 57, scope: !2209)
!2218 = !DILocation(line: 313, column: 31, scope: !2209)
!2219 = !DILocation(line: 313, column: 43, scope: !2209)
!2220 = !DILocation(line: 313, column: 55, scope: !2209)
!2221 = !DILocation(line: 313, column: 67, scope: !2209)
!2222 = !DILocation(line: 313, column: 72, scope: !2209)
!2223 = !DILocation(line: 313, column: 78, scope: !2209)
!2224 = !DILocation(line: 314, column: 5, scope: !2209)
!2225 = !DILocation(line: 315, column: 1, scope: !2209)
!2226 = distinct !DISubprogram(name: "predict_4x4_dc_top", scope: !1, file: !1, line: 316, type: !116, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2227)
!2227 = !{!2228, !2229}
!2228 = !DILocalVariable(name: "src", arg: 1, scope: !2226, file: !1, line: 316, type: !118)
!2229 = !DILocalVariable(name: "dc", scope: !2226, file: !1, line: 318, type: !67)
!2230 = !DILocation(line: 0, scope: !2226)
!2231 = !DILocation(line: 318, column: 21, scope: !2226)
!2232 = !DILocation(line: 318, column: 33, scope: !2226)
!2233 = !DILocation(line: 318, column: 45, scope: !2226)
!2234 = !DILocation(line: 318, column: 57, scope: !2226)
!2235 = !DILocation(line: 318, column: 31, scope: !2226)
!2236 = !DILocation(line: 318, column: 43, scope: !2226)
!2237 = !DILocation(line: 318, column: 55, scope: !2226)
!2238 = !DILocation(line: 318, column: 67, scope: !2226)
!2239 = !DILocation(line: 318, column: 72, scope: !2226)
!2240 = !DILocation(line: 318, column: 78, scope: !2226)
!2241 = !DILocation(line: 319, column: 5, scope: !2226)
!2242 = !DILocation(line: 320, column: 1, scope: !2226)
!2243 = distinct !DISubprogram(name: "predict_4x4_dc_128", scope: !1, file: !1, line: 307, type: !116, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2244)
!2244 = !{!2245}
!2245 = !DILocalVariable(name: "src", arg: 1, scope: !2243, file: !1, line: 307, type: !118)
!2246 = !DILocation(line: 0, scope: !2243)
!2247 = !DILocation(line: 309, column: 5, scope: !2243)
!2248 = !DILocation(line: 310, column: 1, scope: !2243)
