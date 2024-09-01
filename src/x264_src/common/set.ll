; ModuleID = 'x264_src/common/set.c'
source_filename = "x264_src/common/set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dequant4_scale = internal unnamed_addr constant [6 x [3 x i8]] [[3 x i8] c"\0A\0D\10", [3 x i8] c"\0B\0E\12", [3 x i8] c"\0D\10\14", [3 x i8] c"\0E\12\17", [3 x i8] c"\10\14\19", [3 x i8] c"\12\17\1D"], align 16
@quant4_scale = internal unnamed_addr constant [6 x [3 x i16]] [[3 x i16] [i16 13107, i16 8066, i16 5243], [3 x i16] [i16 11916, i16 7490, i16 4660], [3 x i16] [i16 10082, i16 6554, i16 4194], [3 x i16] [i16 9362, i16 5825, i16 3647], [3 x i16] [i16 8192, i16 5243, i16 3355], [3 x i16] [i16 7282, i16 4559, i16 2893]], align 16
@quant8_scan = internal unnamed_addr constant [16 x i8] c"\00\03\04\03\03\01\05\01\04\05\02\05\03\01\05\01", align 16
@dequant8_scale = internal unnamed_addr constant [6 x [6 x i8]] [[6 x i8] c"\14\12 \13\19\18", [6 x i8] c"\16\13#\15\1C\1A", [6 x i8] c"\1A\17*\18!\1F", [6 x i8] c"\1C\19-\1A#!", [6 x i8] c" \1C3\1E(&", [6 x i8] c"$ :\22.+"], align 16
@quant8_scale = internal unnamed_addr constant [6 x [6 x i16]] [[6 x i16] [i16 13107, i16 11428, i16 20972, i16 12222, i16 16777, i16 15481], [6 x i16] [i16 11916, i16 10826, i16 19174, i16 11058, i16 14980, i16 14290], [6 x i16] [i16 10082, i16 8943, i16 15978, i16 9675, i16 12710, i16 11985], [6 x i16] [i16 9362, i16 8228, i16 14913, i16 8931, i16 11984, i16 11259], [6 x i16] [i16 8192, i16 7346, i16 13159, i16 7740, i16 10486, i16 9777], [6 x i16] [i16 7282, i16 6428, i16 11570, i16 6830, i16 9118, i16 8640]], align 16
@.str = private unnamed_addr constant [64 x i8] c"Quantization overflow.  Your CQM is incompatible with QP < %d,\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"but min QP is set to %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"but min chroma QP is implied to be %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"can't open file '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"INTRA4X4_LUMA\00", align 1
@x264_cqm_jvt4i = internal constant [16 x i8] c"\06\0D\14\1C\0D\14\1C \14\1C %\1C %*", align 16
@.str.6 = private unnamed_addr constant [16 x i8] c"INTRA4X4_CHROMA\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"INTER4X4_LUMA\00", align 1
@x264_cqm_jvt4p = internal constant [16 x i8] c"\0A\0E\14\18\0E\14\18\1B\14\18\1B\1E\18\1B\1E\22", align 16
@.str.8 = private unnamed_addr constant [16 x i8] c"INTER4X4_CHROMA\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"INTRA8X8_LUMA\00", align 1
@x264_cqm_jvt8i = internal constant [64 x i8] c"\06\0A\0D\10\12\17\19\1B\0A\0B\10\12\17\19\1B\1D\0D\10\12\17\19\1B\1D\1F\10\12\17\19\1B\1D\1F!\12\17\19\1B\1D\1F!$\17\19\1B\1D\1F!$&\19\1B\1D\1F!$&(\1B\1D\1F!$&(*", align 16
@.str.10 = private unnamed_addr constant [14 x i8] c"INTER8X8_LUMA\00", align 1
@x264_cqm_jvt8p = internal constant [64 x i8] c"\09\0D\0F\11\13\15\16\18\0D\0D\11\13\15\16\18\19\0F\11\13\15\16\18\19\1B\11\13\15\16\18\19\1B\1C\13\15\16\18\19\1B\1C\1E\15\16\18\19\1B\1C\1E \16\18\19\1B\1C\1E !\18\19\1B\1C\1E !#", align 16
@.str.11 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" \09\0A,\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"bad coefficient in list '%s'\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"not enough coefficients in list '%s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_cqm_init(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %def_quant4 = alloca [6 x [16 x i32]], align 16
  %def_quant8 = alloca [6 x [64 x i32]], align 16
  %def_dequant4 = alloca [6 x [16 x i32]], align 16
  %def_dequant8 = alloca [6 x [64 x i32]], align 16
  %quant4_mf = alloca [4 x [6 x [16 x i32]]], align 16
  %quant8_mf = alloca [2 x [6 x [64 x i32]]], align 16
  %deadzone = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %def_quant4) #9
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %def_quant8) #9
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %def_dequant4) #9
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %def_dequant8) #9
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %quant4_mf) #9
  call void @llvm.lifetime.start.p0(i64 3072, ptr nonnull %quant8_mf) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %deadzone) #9
  %i_luma_deadzone = getelementptr inbounds i8, ptr %h, i64 468
  %arrayidx = getelementptr inbounds i8, ptr %h, i64 472
  %0 = load i32, ptr %arrayidx, align 4
  %sub = sub nsw i32 32, %0
  store i32 %sub, ptr %deadzone, align 16
  %arrayinit.element = getelementptr inbounds i8, ptr %deadzone, i64 4
  %1 = load i32, ptr %i_luma_deadzone, align 4
  %sub5 = sub nsw i32 32, %1
  store i32 %sub5, ptr %arrayinit.element, align 4
  %arrayinit.element6 = getelementptr inbounds i8, ptr %deadzone, i64 8
  store i32 21, ptr %arrayinit.element6, align 8
  %arrayinit.element7 = getelementptr inbounds i8, ptr %deadzone, i64 12
  store i32 11, ptr %arrayinit.element7, align 4
  %pps = getelementptr inbounds i8, ptr %h, i64 3328
  %quant4_mf41 = getelementptr inbounds i8, ptr %h, i64 3440
  %dequant4_mf56 = getelementptr inbounds i8, ptr %h, i64 3344
  %unquant4_mf73 = getelementptr inbounds i8, ptr %h, i64 3392
  %quant4_bias129 = getelementptr inbounds i8, ptr %h, i64 3488
  %call40 = tail call ptr @x264_malloc(i32 noundef 1664) #9
  store ptr %call40, ptr %quant4_mf41, align 8
  %tobool47.not = icmp eq ptr %call40, null
  br i1 %tobool47.not, label %fail, label %do.body50

do.body50:                                        ; preds = %entry
  %call55 = tail call ptr @x264_malloc(i32 noundef 384) #9
  store ptr %call55, ptr %dequant4_mf56, align 8
  %tobool62.not = icmp eq ptr %call55, null
  br i1 %tobool62.not, label %fail, label %do.body67

do.body67:                                        ; preds = %do.body50
  %call72 = tail call ptr @x264_malloc(i32 noundef 3328) #9
  store ptr %call72, ptr %unquant4_mf73, align 8
  %tobool79.not = icmp eq ptr %call72, null
  br i1 %tobool79.not, label %fail, label %do.body123

do.body123:                                       ; preds = %do.body67
  %call128 = tail call ptr @x264_malloc(i32 noundef 1664) #9
  store ptr %call128, ptr %quant4_bias129, align 8
  %tobool135.not = icmp eq ptr %call128, null
  br i1 %tobool135.not, label %fail, label %for.body10.lr.ph.1

for.body10.lr.ph.1:                               ; preds = %do.body123
  %2 = load ptr, ptr %pps, align 16
  %scaling_list.1 = getelementptr inbounds i8, ptr %2, i64 72
  %arrayidx11.1 = getelementptr inbounds i8, ptr %2, i64 80
  %3 = load ptr, ptr %arrayidx11.1, align 8
  br label %for.body10.1

for.body10.1:                                     ; preds = %for.cond8.1, %for.body10.lr.ph.1
  %indvars.iv.1 = phi i64 [ 0, %for.body10.lr.ph.1 ], [ %indvars.iv.next.1, %for.cond8.1 ]
  %arrayidx16.1 = getelementptr inbounds [6 x ptr], ptr %scaling_list.1, i64 0, i64 %indvars.iv.1
  %4 = load ptr, ptr %arrayidx16.1, align 8
  %bcmp.1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %3, ptr noundef nonnull dereferenceable(16) %4, i64 16)
  %tobool.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool.not.1, label %if.then19.1, label %for.cond8.1

for.cond8.1:                                      ; preds = %for.body10.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.not.1 = icmp eq i64 %indvars.iv.1, 0
  br i1 %exitcond.not.1, label %do.body.1, label %for.body10.1

if.then19.1:                                      ; preds = %for.body10.1
  %arrayidx22.1 = getelementptr inbounds [4 x ptr], ptr %quant4_mf41, i64 0, i64 %indvars.iv.1
  %5 = load ptr, ptr %arrayidx22.1, align 8
  %arrayidx25.1 = getelementptr inbounds i8, ptr %h, i64 3448
  store ptr %5, ptr %arrayidx25.1, align 8
  %arrayidx27.1 = getelementptr inbounds [4 x ptr], ptr %dequant4_mf56, i64 0, i64 %indvars.iv.1
  %6 = load ptr, ptr %arrayidx27.1, align 8
  %arrayidx30.1 = getelementptr inbounds i8, ptr %h, i64 3352
  store ptr %6, ptr %arrayidx30.1, align 8
  %arrayidx32.1 = getelementptr inbounds [4 x ptr], ptr %unquant4_mf73, i64 0, i64 %indvars.iv.1
  %7 = load ptr, ptr %arrayidx32.1, align 8
  %arrayidx35.1 = getelementptr inbounds i8, ptr %h, i64 3400
  store ptr %7, ptr %arrayidx35.1, align 8
  br label %for.body88.lr.ph.1

do.body.1:                                        ; preds = %for.cond8.1
  %call40.1 = tail call ptr @x264_malloc(i32 noundef 1664) #9
  %arrayidx43.1 = getelementptr inbounds i8, ptr %h, i64 3448
  store ptr %call40.1, ptr %arrayidx43.1, align 8
  %tobool47.not.1 = icmp eq ptr %call40.1, null
  br i1 %tobool47.not.1, label %fail, label %do.body50.1

do.body50.1:                                      ; preds = %do.body.1
  %call55.1 = tail call ptr @x264_malloc(i32 noundef 384) #9
  %arrayidx58.1 = getelementptr inbounds i8, ptr %h, i64 3352
  store ptr %call55.1, ptr %arrayidx58.1, align 8
  %tobool62.not.1 = icmp eq ptr %call55.1, null
  br i1 %tobool62.not.1, label %fail, label %do.body67.1

do.body67.1:                                      ; preds = %do.body50.1
  %call72.1 = tail call ptr @x264_malloc(i32 noundef 3328) #9
  %arrayidx75.1 = getelementptr inbounds i8, ptr %h, i64 3400
  store ptr %call72.1, ptr %arrayidx75.1, align 8
  %tobool79.not.1 = icmp eq ptr %call72.1, null
  br i1 %tobool79.not.1, label %fail, label %for.body88.lr.ph.1

for.body88.lr.ph.1:                               ; preds = %if.then19.1, %do.body67.1
  %arrayidx92.1 = getelementptr inbounds i8, ptr %deadzone, i64 4
  %8 = load i32, ptr %arrayidx92.1, align 4
  br label %for.body88.1

for.body88.1:                                     ; preds = %for.inc111.1, %for.body88.lr.ph.1
  %indvars.iv1196.1 = phi i64 [ 0, %for.body88.lr.ph.1 ], [ %indvars.iv.next1197.1, %for.inc111.1 ]
  %arrayidx90.1 = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1196.1
  %9 = load i32, ptr %arrayidx90.1, align 4
  %cmp93.1 = icmp eq i32 %9, %8
  br i1 %cmp93.1, label %land.lhs.true.1, label %for.inc111.1

land.lhs.true.1:                                  ; preds = %for.body88.1
  %10 = load ptr, ptr %pps, align 16
  %scaling_list96.1 = getelementptr inbounds i8, ptr %10, i64 72
  %arrayidx99.1 = getelementptr inbounds i8, ptr %10, i64 80
  %11 = load ptr, ptr %arrayidx99.1, align 8
  %arrayidx104.1 = getelementptr inbounds [6 x ptr], ptr %scaling_list96.1, i64 0, i64 %indvars.iv1196.1
  %12 = load ptr, ptr %arrayidx104.1, align 8
  %bcmp1139.1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %11, ptr noundef nonnull dereferenceable(16) %12, i64 16)
  %tobool108.not.1 = icmp eq i32 %bcmp1139.1, 0
  br i1 %tobool108.not.1, label %if.then116.1, label %for.inc111.1

for.inc111.1:                                     ; preds = %land.lhs.true.1, %for.body88.1
  %indvars.iv.next1197.1 = add nuw nsw i64 %indvars.iv1196.1, 1
  %exitcond1200.not.1 = icmp eq i64 %indvars.iv1196.1, 0
  br i1 %exitcond1200.not.1, label %do.body123.1, label %for.body88.1

if.then116.1:                                     ; preds = %land.lhs.true.1
  %arrayidx118.1 = getelementptr inbounds [4 x ptr], ptr %quant4_bias129, i64 0, i64 %indvars.iv1196.1
  %13 = load ptr, ptr %arrayidx118.1, align 8
  %arrayidx121.1 = getelementptr inbounds i8, ptr %h, i64 3496
  store ptr %13, ptr %arrayidx121.1, align 8
  br label %for.body10.lr.ph.2

do.body123.1:                                     ; preds = %for.inc111.1
  %call128.1 = tail call ptr @x264_malloc(i32 noundef 1664) #9
  %arrayidx131.1 = getelementptr inbounds i8, ptr %h, i64 3496
  store ptr %call128.1, ptr %arrayidx131.1, align 8
  %tobool135.not.1 = icmp eq ptr %call128.1, null
  br i1 %tobool135.not.1, label %fail, label %for.body10.lr.ph.2

for.body10.lr.ph.2:                               ; preds = %if.then116.1, %do.body123.1
  %14 = load ptr, ptr %pps, align 16
  %scaling_list.2 = getelementptr inbounds i8, ptr %14, i64 72
  %arrayidx11.2 = getelementptr inbounds i8, ptr %14, i64 88
  %15 = load ptr, ptr %arrayidx11.2, align 8
  br label %for.body10.2

for.body10.2:                                     ; preds = %for.cond8.2, %for.body10.lr.ph.2
  %indvars.iv.2 = phi i64 [ 0, %for.body10.lr.ph.2 ], [ %indvars.iv.next.2, %for.cond8.2 ]
  %arrayidx16.2 = getelementptr inbounds [6 x ptr], ptr %scaling_list.2, i64 0, i64 %indvars.iv.2
  %16 = load ptr, ptr %arrayidx16.2, align 8
  %bcmp.2 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %15, ptr noundef nonnull dereferenceable(16) %16, i64 16)
  %tobool.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool.not.2, label %if.then19.2, label %for.cond8.2

for.cond8.2:                                      ; preds = %for.body10.2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 2
  br i1 %exitcond.not.2, label %do.body.2, label %for.body10.2

if.then19.2:                                      ; preds = %for.body10.2
  %arrayidx22.2 = getelementptr inbounds [4 x ptr], ptr %quant4_mf41, i64 0, i64 %indvars.iv.2
  %17 = load ptr, ptr %arrayidx22.2, align 8
  %arrayidx25.2 = getelementptr inbounds i8, ptr %h, i64 3456
  store ptr %17, ptr %arrayidx25.2, align 8
  %arrayidx27.2 = getelementptr inbounds [4 x ptr], ptr %dequant4_mf56, i64 0, i64 %indvars.iv.2
  %18 = load ptr, ptr %arrayidx27.2, align 8
  %arrayidx30.2 = getelementptr inbounds i8, ptr %h, i64 3360
  store ptr %18, ptr %arrayidx30.2, align 8
  %arrayidx32.2 = getelementptr inbounds [4 x ptr], ptr %unquant4_mf73, i64 0, i64 %indvars.iv.2
  %19 = load ptr, ptr %arrayidx32.2, align 8
  %arrayidx35.2 = getelementptr inbounds i8, ptr %h, i64 3408
  store ptr %19, ptr %arrayidx35.2, align 8
  br label %for.body88.lr.ph.2

do.body.2:                                        ; preds = %for.cond8.2
  %call40.2 = tail call ptr @x264_malloc(i32 noundef 1664) #9
  %arrayidx43.2 = getelementptr inbounds i8, ptr %h, i64 3456
  store ptr %call40.2, ptr %arrayidx43.2, align 8
  %tobool47.not.2 = icmp eq ptr %call40.2, null
  br i1 %tobool47.not.2, label %fail, label %do.body50.2

do.body50.2:                                      ; preds = %do.body.2
  %call55.2 = tail call ptr @x264_malloc(i32 noundef 384) #9
  %arrayidx58.2 = getelementptr inbounds i8, ptr %h, i64 3360
  store ptr %call55.2, ptr %arrayidx58.2, align 8
  %tobool62.not.2 = icmp eq ptr %call55.2, null
  br i1 %tobool62.not.2, label %fail, label %do.body67.2

do.body67.2:                                      ; preds = %do.body50.2
  %call72.2 = tail call ptr @x264_malloc(i32 noundef 3328) #9
  %arrayidx75.2 = getelementptr inbounds i8, ptr %h, i64 3408
  store ptr %call72.2, ptr %arrayidx75.2, align 8
  %tobool79.not.2 = icmp eq ptr %call72.2, null
  br i1 %tobool79.not.2, label %fail, label %for.body88.lr.ph.2

for.body88.lr.ph.2:                               ; preds = %if.then19.2, %do.body67.2
  %arrayidx92.2 = getelementptr inbounds i8, ptr %deadzone, i64 8
  %20 = load i32, ptr %arrayidx92.2, align 8
  br label %for.body88.2

for.body88.2:                                     ; preds = %for.inc111.2, %for.body88.lr.ph.2
  %indvars.iv1196.2 = phi i64 [ 0, %for.body88.lr.ph.2 ], [ %indvars.iv.next1197.2, %for.inc111.2 ]
  %arrayidx90.2 = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1196.2
  %21 = load i32, ptr %arrayidx90.2, align 4
  %cmp93.2 = icmp eq i32 %21, %20
  br i1 %cmp93.2, label %land.lhs.true.2, label %for.inc111.2

land.lhs.true.2:                                  ; preds = %for.body88.2
  %22 = load ptr, ptr %pps, align 16
  %scaling_list96.2 = getelementptr inbounds i8, ptr %22, i64 72
  %arrayidx99.2 = getelementptr inbounds i8, ptr %22, i64 88
  %23 = load ptr, ptr %arrayidx99.2, align 8
  %arrayidx104.2 = getelementptr inbounds [6 x ptr], ptr %scaling_list96.2, i64 0, i64 %indvars.iv1196.2
  %24 = load ptr, ptr %arrayidx104.2, align 8
  %bcmp1139.2 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %23, ptr noundef nonnull dereferenceable(16) %24, i64 16)
  %tobool108.not.2 = icmp eq i32 %bcmp1139.2, 0
  br i1 %tobool108.not.2, label %if.then116.2, label %for.inc111.2

for.inc111.2:                                     ; preds = %land.lhs.true.2, %for.body88.2
  %indvars.iv.next1197.2 = add nuw nsw i64 %indvars.iv1196.2, 1
  %exitcond1200.not.2 = icmp eq i64 %indvars.iv.next1197.2, 2
  br i1 %exitcond1200.not.2, label %do.body123.2, label %for.body88.2

if.then116.2:                                     ; preds = %land.lhs.true.2
  %arrayidx118.2 = getelementptr inbounds [4 x ptr], ptr %quant4_bias129, i64 0, i64 %indvars.iv1196.2
  %25 = load ptr, ptr %arrayidx118.2, align 8
  %arrayidx121.2 = getelementptr inbounds i8, ptr %h, i64 3504
  store ptr %25, ptr %arrayidx121.2, align 8
  br label %for.body10.lr.ph.3

do.body123.2:                                     ; preds = %for.inc111.2
  %call128.2 = tail call ptr @x264_malloc(i32 noundef 1664) #9
  %arrayidx131.2 = getelementptr inbounds i8, ptr %h, i64 3504
  store ptr %call128.2, ptr %arrayidx131.2, align 8
  %tobool135.not.2 = icmp eq ptr %call128.2, null
  br i1 %tobool135.not.2, label %fail, label %for.body10.lr.ph.3

for.body10.lr.ph.3:                               ; preds = %if.then116.2, %do.body123.2
  %26 = load ptr, ptr %pps, align 16
  %scaling_list.3 = getelementptr inbounds i8, ptr %26, i64 72
  %arrayidx11.3 = getelementptr inbounds i8, ptr %26, i64 96
  %27 = load ptr, ptr %arrayidx11.3, align 8
  br label %for.body10.3

for.body10.3:                                     ; preds = %for.cond8.3, %for.body10.lr.ph.3
  %indvars.iv.3 = phi i64 [ 0, %for.body10.lr.ph.3 ], [ %indvars.iv.next.3, %for.cond8.3 ]
  %arrayidx16.3 = getelementptr inbounds [6 x ptr], ptr %scaling_list.3, i64 0, i64 %indvars.iv.3
  %28 = load ptr, ptr %arrayidx16.3, align 8
  %bcmp.3 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %27, ptr noundef nonnull dereferenceable(16) %28, i64 16)
  %tobool.not.3 = icmp eq i32 %bcmp.3, 0
  br i1 %tobool.not.3, label %if.then19.3, label %for.cond8.3

for.cond8.3:                                      ; preds = %for.body10.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 3
  br i1 %exitcond.not.3, label %do.body.3, label %for.body10.3

if.then19.3:                                      ; preds = %for.body10.3
  %arrayidx22.3 = getelementptr inbounds [4 x ptr], ptr %quant4_mf41, i64 0, i64 %indvars.iv.3
  %29 = load ptr, ptr %arrayidx22.3, align 8
  %arrayidx25.3 = getelementptr inbounds i8, ptr %h, i64 3464
  store ptr %29, ptr %arrayidx25.3, align 8
  %arrayidx27.3 = getelementptr inbounds [4 x ptr], ptr %dequant4_mf56, i64 0, i64 %indvars.iv.3
  %30 = load ptr, ptr %arrayidx27.3, align 8
  %arrayidx30.3 = getelementptr inbounds i8, ptr %h, i64 3368
  store ptr %30, ptr %arrayidx30.3, align 8
  %arrayidx32.3 = getelementptr inbounds [4 x ptr], ptr %unquant4_mf73, i64 0, i64 %indvars.iv.3
  %31 = load ptr, ptr %arrayidx32.3, align 8
  %arrayidx35.3 = getelementptr inbounds i8, ptr %h, i64 3416
  store ptr %31, ptr %arrayidx35.3, align 8
  br label %for.body88.lr.ph.3

do.body.3:                                        ; preds = %for.cond8.3
  %call40.3 = tail call ptr @x264_malloc(i32 noundef 1664) #9
  %arrayidx43.3 = getelementptr inbounds i8, ptr %h, i64 3464
  store ptr %call40.3, ptr %arrayidx43.3, align 8
  %tobool47.not.3 = icmp eq ptr %call40.3, null
  br i1 %tobool47.not.3, label %fail, label %do.body50.3

do.body50.3:                                      ; preds = %do.body.3
  %call55.3 = tail call ptr @x264_malloc(i32 noundef 384) #9
  %arrayidx58.3 = getelementptr inbounds i8, ptr %h, i64 3368
  store ptr %call55.3, ptr %arrayidx58.3, align 8
  %tobool62.not.3 = icmp eq ptr %call55.3, null
  br i1 %tobool62.not.3, label %fail, label %do.body67.3

do.body67.3:                                      ; preds = %do.body50.3
  %call72.3 = tail call ptr @x264_malloc(i32 noundef 3328) #9
  %arrayidx75.3 = getelementptr inbounds i8, ptr %h, i64 3416
  store ptr %call72.3, ptr %arrayidx75.3, align 8
  %tobool79.not.3 = icmp eq ptr %call72.3, null
  br i1 %tobool79.not.3, label %fail, label %for.body88.lr.ph.3

for.body88.lr.ph.3:                               ; preds = %if.then19.3, %do.body67.3
  %arrayidx92.3 = getelementptr inbounds i8, ptr %deadzone, i64 12
  %32 = load i32, ptr %arrayidx92.3, align 4
  br label %for.body88.3

for.body88.3:                                     ; preds = %for.inc111.3, %for.body88.lr.ph.3
  %indvars.iv1196.3 = phi i64 [ 0, %for.body88.lr.ph.3 ], [ %indvars.iv.next1197.3, %for.inc111.3 ]
  %arrayidx90.3 = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1196.3
  %33 = load i32, ptr %arrayidx90.3, align 4
  %cmp93.3 = icmp eq i32 %33, %32
  br i1 %cmp93.3, label %land.lhs.true.3, label %for.inc111.3

land.lhs.true.3:                                  ; preds = %for.body88.3
  %34 = load ptr, ptr %pps, align 16
  %scaling_list96.3 = getelementptr inbounds i8, ptr %34, i64 72
  %arrayidx99.3 = getelementptr inbounds i8, ptr %34, i64 96
  %35 = load ptr, ptr %arrayidx99.3, align 8
  %arrayidx104.3 = getelementptr inbounds [6 x ptr], ptr %scaling_list96.3, i64 0, i64 %indvars.iv1196.3
  %36 = load ptr, ptr %arrayidx104.3, align 8
  %bcmp1139.3 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %35, ptr noundef nonnull dereferenceable(16) %36, i64 16)
  %tobool108.not.3 = icmp eq i32 %bcmp1139.3, 0
  br i1 %tobool108.not.3, label %if.then116.3, label %for.inc111.3

for.inc111.3:                                     ; preds = %land.lhs.true.3, %for.body88.3
  %indvars.iv.next1197.3 = add nuw nsw i64 %indvars.iv1196.3, 1
  %exitcond1200.not.3 = icmp eq i64 %indvars.iv.next1197.3, 3
  br i1 %exitcond1200.not.3, label %do.body123.3, label %for.body88.3

if.then116.3:                                     ; preds = %land.lhs.true.3
  %arrayidx118.3 = getelementptr inbounds [4 x ptr], ptr %quant4_bias129, i64 0, i64 %indvars.iv1196.3
  %37 = load ptr, ptr %arrayidx118.3, align 8
  %arrayidx121.3 = getelementptr inbounds i8, ptr %h, i64 3512
  store ptr %37, ptr %arrayidx121.3, align 8
  br label %for.inc143.3

do.body123.3:                                     ; preds = %for.inc111.3
  %call128.3 = tail call ptr @x264_malloc(i32 noundef 1664) #9
  %arrayidx131.3 = getelementptr inbounds i8, ptr %h, i64 3512
  store ptr %call128.3, ptr %arrayidx131.3, align 8
  %tobool135.not.3 = icmp eq ptr %call128.3, null
  br i1 %tobool135.not.3, label %fail, label %for.inc143.3

for.inc143.3:                                     ; preds = %do.body123.3, %if.then116.3
  %quant8_mf206 = getelementptr inbounds i8, ptr %h, i64 3472
  %dequant8_mf223 = getelementptr inbounds i8, ptr %h, i64 3376
  %unquant8_mf240 = getelementptr inbounds i8, ptr %h, i64 3424
  %arrayidx188 = getelementptr inbounds i8, ptr %h, i64 3480
  %arrayidx193 = getelementptr inbounds i8, ptr %h, i64 3384
  %arrayidx198 = getelementptr inbounds i8, ptr %h, i64 3432
  %cmp260 = icmp eq i32 %1, %0
  %quant8_bias297 = getelementptr inbounds i8, ptr %h, i64 3520
  %arrayidx289 = getelementptr inbounds i8, ptr %h, i64 3528
  %call205 = tail call ptr @x264_malloc(i32 noundef 6656) #9
  store ptr %call205, ptr %quant8_mf206, align 8
  %tobool212.not = icmp eq ptr %call205, null
  br i1 %tobool212.not, label %fail, label %do.body217

do.body217:                                       ; preds = %for.inc143.3
  %call222 = tail call ptr @x264_malloc(i32 noundef 1536) #9
  store ptr %call222, ptr %dequant8_mf223, align 8
  %tobool229.not = icmp eq ptr %call222, null
  br i1 %tobool229.not, label %fail, label %do.body234

do.body234:                                       ; preds = %do.body217
  %call239 = tail call ptr @x264_malloc(i32 noundef 13312) #9
  store ptr %call239, ptr %unquant8_mf240, align 8
  %tobool246.not = icmp eq ptr %call239, null
  br i1 %tobool246.not, label %fail, label %do.body291

do.body291:                                       ; preds = %do.body234
  %call296 = tail call ptr @x264_malloc(i32 noundef 6656) #9
  store ptr %call296, ptr %quant8_bias297, align 8
  %tobool303.not = icmp eq ptr %call296, null
  br i1 %tobool303.not, label %fail, label %for.body160.peel.1

for.body160.peel.1:                               ; preds = %do.body291
  %38 = load ptr, ptr %pps, align 16
  %arrayidx165.peel.1 = getelementptr inbounds i8, ptr %38, i64 112
  %39 = load ptr, ptr %arrayidx165.peel.1, align 8
  %arrayidx170.peel.1 = getelementptr inbounds i8, ptr %38, i64 104
  %40 = load ptr, ptr %arrayidx170.peel.1, align 8
  %bcmp1140.peel.1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %39, ptr noundef nonnull dereferenceable(64) %40, i64 64)
  %tobool174.not.peel.1 = icmp eq i32 %bcmp1140.peel.1, 0
  br i1 %tobool174.not.peel.1, label %if.then182.1, label %do.body200.1

do.body200.1:                                     ; preds = %for.body160.peel.1
  %call205.1 = tail call ptr @x264_malloc(i32 noundef 6656) #9
  %arrayidx208.1 = getelementptr inbounds i8, ptr %h, i64 3480
  store ptr %call205.1, ptr %arrayidx208.1, align 8
  %tobool212.not.1 = icmp eq ptr %call205.1, null
  br i1 %tobool212.not.1, label %fail, label %do.body217.1

do.body217.1:                                     ; preds = %do.body200.1
  %call222.1 = tail call ptr @x264_malloc(i32 noundef 1536) #9
  %arrayidx225.1 = getelementptr inbounds i8, ptr %h, i64 3384
  store ptr %call222.1, ptr %arrayidx225.1, align 8
  %tobool229.not.1 = icmp eq ptr %call222.1, null
  br i1 %tobool229.not.1, label %fail, label %do.body234.1

do.body234.1:                                     ; preds = %do.body217.1
  %call239.1 = tail call ptr @x264_malloc(i32 noundef 13312) #9
  %arrayidx242.1 = getelementptr inbounds i8, ptr %h, i64 3432
  store ptr %call239.1, ptr %arrayidx242.1, align 8
  %tobool246.not.1 = icmp eq ptr %call239.1, null
  br i1 %tobool246.not.1, label %fail, label %for.body255.lr.ph.1

if.then182.1:                                     ; preds = %for.body160.peel.1
  %41 = load ptr, ptr %quant8_mf206, align 8
  store ptr %41, ptr %arrayidx188, align 8
  %42 = load ptr, ptr %dequant8_mf223, align 8
  store ptr %42, ptr %arrayidx193, align 8
  %43 = load ptr, ptr %unquant8_mf240, align 8
  store ptr %43, ptr %arrayidx198, align 8
  br label %for.body255.lr.ph.1

for.body255.lr.ph.1:                              ; preds = %do.body234.1, %if.then182.1
  br i1 %cmp260, label %for.body255.lr.ph.split.us.1, label %do.body291.1

for.body255.lr.ph.split.us.1:                     ; preds = %for.body255.lr.ph.1
  %44 = load ptr, ptr %pps, align 16
  %arrayidx267.us.1 = getelementptr inbounds i8, ptr %44, i64 112
  %45 = load ptr, ptr %arrayidx267.us.1, align 8
  %arrayidx272.us.1 = getelementptr inbounds i8, ptr %44, i64 104
  %46 = load ptr, ptr %arrayidx272.us.1, align 8
  %bcmp1141.us.1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %45, ptr noundef nonnull dereferenceable(64) %46, i64 64)
  %tobool276.not.us.1 = icmp eq i32 %bcmp1141.us.1, 0
  br i1 %tobool276.not.us.1, label %if.then284.split.us.1, label %do.body291.1

if.then284.split.us.1:                            ; preds = %for.body255.lr.ph.split.us.1
  %47 = load ptr, ptr %quant8_bias297, align 8
  store ptr %47, ptr %arrayidx289, align 8
  br label %for.cond325.preheader.preheader

do.body291.1:                                     ; preds = %for.body255.lr.ph.split.us.1, %for.body255.lr.ph.1
  %call296.1 = tail call ptr @x264_malloc(i32 noundef 6656) #9
  %arrayidx299.1 = getelementptr inbounds i8, ptr %h, i64 3528
  store ptr %call296.1, ptr %arrayidx299.1, align 8
  %tobool303.not.1 = icmp eq ptr %call296.1, null
  br i1 %tobool303.not.1, label %fail, label %for.cond325.preheader.preheader

for.cond325.preheader.preheader:                  ; preds = %do.body291.1, %if.then284.split.us.1
  br label %for.cond325.preheader

for.cond325.preheader:                            ; preds = %for.cond325.preheader.preheader, %for.cond.cleanup359
  %indvars.iv1217 = phi i64 [ %indvars.iv.next1218, %for.cond.cleanup359 ], [ 0, %for.cond325.preheader.preheader ]
  %arrayidx336 = getelementptr inbounds [6 x [3 x i8]], ptr @dequant4_scale, i64 0, i64 %indvars.iv1217, i64 0
  %48 = load i8, ptr %arrayidx336, align 1
  %conv337 = zext i8 %48 to i32
  %arrayidx341 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 0
  store i32 %conv337, ptr %arrayidx341, align 16
  %arrayidx345 = getelementptr inbounds [6 x [3 x i16]], ptr @quant4_scale, i64 0, i64 %indvars.iv1217, i64 0
  %49 = load i16, ptr %arrayidx345, align 2
  %conv346 = zext i16 %49 to i32
  %arrayidx350 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 0
  store i32 %conv346, ptr %arrayidx350, align 16
  %arrayidx336.1 = getelementptr inbounds [6 x [3 x i8]], ptr @dequant4_scale, i64 0, i64 %indvars.iv1217, i64 1
  %50 = load i8, ptr %arrayidx336.1, align 1
  %conv337.1 = zext i8 %50 to i32
  %arrayidx341.1 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 1
  store i32 %conv337.1, ptr %arrayidx341.1, align 4
  %arrayidx345.1 = getelementptr inbounds [6 x [3 x i16]], ptr @quant4_scale, i64 0, i64 %indvars.iv1217, i64 1
  %51 = load i16, ptr %arrayidx345.1, align 2
  %conv346.1 = zext i16 %51 to i32
  %arrayidx350.1 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 1
  store i32 %conv346.1, ptr %arrayidx350.1, align 4
  %arrayidx341.2 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 2
  store i32 %conv337, ptr %arrayidx341.2, align 8
  %arrayidx350.2 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 2
  store i32 %conv346, ptr %arrayidx350.2, align 8
  %arrayidx341.3 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 3
  store i32 %conv337.1, ptr %arrayidx341.3, align 4
  %arrayidx350.3 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 3
  store i32 %conv346.1, ptr %arrayidx350.3, align 4
  %arrayidx341.4 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 4
  store i32 %conv337.1, ptr %arrayidx341.4, align 16
  %arrayidx350.4 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 4
  store i32 %conv346.1, ptr %arrayidx350.4, align 16
  %arrayidx336.5 = getelementptr inbounds [6 x [3 x i8]], ptr @dequant4_scale, i64 0, i64 %indvars.iv1217, i64 2
  %52 = load i8, ptr %arrayidx336.5, align 1
  %conv337.5 = zext i8 %52 to i32
  %arrayidx341.5 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 5
  store i32 %conv337.5, ptr %arrayidx341.5, align 4
  %arrayidx345.5 = getelementptr inbounds [6 x [3 x i16]], ptr @quant4_scale, i64 0, i64 %indvars.iv1217, i64 2
  %53 = load i16, ptr %arrayidx345.5, align 2
  %conv346.5 = zext i16 %53 to i32
  %arrayidx350.5 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 5
  store i32 %conv346.5, ptr %arrayidx350.5, align 4
  %arrayidx341.6 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 6
  store i32 %conv337.1, ptr %arrayidx341.6, align 8
  %arrayidx350.6 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 6
  store i32 %conv346.1, ptr %arrayidx350.6, align 8
  %arrayidx341.7 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 7
  store i32 %conv337.5, ptr %arrayidx341.7, align 4
  %arrayidx350.7 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 7
  store i32 %conv346.5, ptr %arrayidx350.7, align 4
  %arrayidx341.8 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 8
  store i32 %conv337, ptr %arrayidx341.8, align 16
  %arrayidx350.8 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 8
  store i32 %conv346, ptr %arrayidx350.8, align 16
  %arrayidx341.9 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 9
  store i32 %conv337.1, ptr %arrayidx341.9, align 4
  %arrayidx350.9 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 9
  store i32 %conv346.1, ptr %arrayidx350.9, align 4
  %arrayidx341.10 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 10
  store i32 %conv337, ptr %arrayidx341.10, align 8
  %arrayidx350.10 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 10
  store i32 %conv346, ptr %arrayidx350.10, align 8
  %arrayidx341.11 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 11
  store i32 %conv337.1, ptr %arrayidx341.11, align 4
  %arrayidx350.11 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 11
  store i32 %conv346.1, ptr %arrayidx350.11, align 4
  %arrayidx341.12 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 12
  store i32 %conv337.1, ptr %arrayidx341.12, align 16
  %arrayidx350.12 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 12
  store i32 %conv346.1, ptr %arrayidx350.12, align 16
  %arrayidx341.13 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 13
  store i32 %conv337.5, ptr %arrayidx341.13, align 4
  %arrayidx350.13 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 13
  store i32 %conv346.5, ptr %arrayidx350.13, align 4
  %arrayidx341.14 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 14
  store i32 %conv337.1, ptr %arrayidx341.14, align 8
  %arrayidx350.14 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 14
  store i32 %conv346.1, ptr %arrayidx350.14, align 8
  %arrayidx341.15 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 15
  store i32 %conv337.5, ptr %arrayidx341.15, align 4
  %arrayidx350.15 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 15
  store i32 %conv346.5, ptr %arrayidx350.15, align 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.cond325.preheader
  %index = phi i64 [ 0, %for.cond325.preheader ], [ %index.next, %vector.body ]
  %54 = or disjoint i64 %index, 1
  %55 = or disjoint i64 %index, 2
  %56 = or disjoint i64 %index, 3
  %57 = lshr exact i64 %index, 1
  %58 = lshr exact i64 %index, 1
  %59 = lshr exact i64 %index, 1
  %60 = lshr exact i64 %index, 1
  %61 = and i64 %57, 12
  %62 = and i64 %58, 12
  %63 = and i64 %59, 12
  %64 = and i64 %60, 12
  %65 = or disjoint i64 %62, 1
  %66 = or disjoint i64 %63, 2
  %67 = or disjoint i64 %64, 3
  %68 = getelementptr inbounds [16 x i8], ptr @quant8_scan, i64 0, i64 %61
  %69 = getelementptr inbounds [16 x i8], ptr @quant8_scan, i64 0, i64 %65
  %70 = getelementptr inbounds [16 x i8], ptr @quant8_scan, i64 0, i64 %66
  %71 = getelementptr inbounds [16 x i8], ptr @quant8_scan, i64 0, i64 %67
  %72 = load i8, ptr %68, align 4
  %73 = load i8, ptr %69, align 1
  %74 = load i8, ptr %70, align 2
  %75 = load i8, ptr %71, align 1
  %76 = zext i8 %72 to i64
  %77 = zext i8 %73 to i64
  %78 = zext i8 %74 to i64
  %79 = zext i8 %75 to i64
  %80 = getelementptr inbounds [6 x [6 x i8]], ptr @dequant8_scale, i64 0, i64 %indvars.iv1217, i64 %76
  %81 = getelementptr inbounds [6 x [6 x i8]], ptr @dequant8_scale, i64 0, i64 %indvars.iv1217, i64 %77
  %82 = getelementptr inbounds [6 x [6 x i8]], ptr @dequant8_scale, i64 0, i64 %indvars.iv1217, i64 %78
  %83 = getelementptr inbounds [6 x [6 x i8]], ptr @dequant8_scale, i64 0, i64 %indvars.iv1217, i64 %79
  %84 = load i8, ptr %80, align 1
  %85 = load i8, ptr %81, align 1
  %86 = load i8, ptr %82, align 1
  %87 = load i8, ptr %83, align 1
  %88 = zext i8 %84 to i32
  %89 = zext i8 %85 to i32
  %90 = zext i8 %86 to i32
  %91 = zext i8 %87 to i32
  %92 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1217, i64 %index
  %93 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1217, i64 %54
  %94 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1217, i64 %55
  %95 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1217, i64 %56
  store i32 %88, ptr %92, align 16
  store i32 %89, ptr %93, align 4
  store i32 %90, ptr %94, align 8
  store i32 %91, ptr %95, align 4
  %96 = getelementptr inbounds [6 x [6 x i16]], ptr @quant8_scale, i64 0, i64 %indvars.iv1217, i64 %76
  %97 = getelementptr inbounds [6 x [6 x i16]], ptr @quant8_scale, i64 0, i64 %indvars.iv1217, i64 %77
  %98 = getelementptr inbounds [6 x [6 x i16]], ptr @quant8_scale, i64 0, i64 %indvars.iv1217, i64 %78
  %99 = getelementptr inbounds [6 x [6 x i16]], ptr @quant8_scale, i64 0, i64 %indvars.iv1217, i64 %79
  %100 = load i16, ptr %96, align 2
  %101 = load i16, ptr %97, align 2
  %102 = load i16, ptr %98, align 2
  %103 = load i16, ptr %99, align 2
  %104 = zext i16 %100 to i32
  %105 = zext i16 %101 to i32
  %106 = zext i16 %102 to i32
  %107 = zext i16 %103 to i32
  %108 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1217, i64 %index
  %109 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1217, i64 %54
  %110 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1217, i64 %55
  %111 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1217, i64 %56
  store i32 %104, ptr %108, align 16
  store i32 %105, ptr %109, align 4
  store i32 %106, ptr %110, align 8
  store i32 %107, ptr %111, align 4
  %index.next = add nuw i64 %index, 4
  %112 = icmp eq i64 %index.next, 64
  br i1 %112, label %for.cond.cleanup359, label %vector.body, !llvm.loop !5

for.cond395.preheader:                            ; preds = %for.cond.cleanup359
  %.pre.pre = load ptr, ptr %pps, align 16
  %arrayidx425.1 = getelementptr inbounds i8, ptr %h, i64 3352
  %arrayidx425.2 = getelementptr inbounds i8, ptr %h, i64 3360
  %arrayidx425.3 = getelementptr inbounds i8, ptr %h, i64 3368
  %arrayidx492.1 = getelementptr inbounds i8, ptr %h, i64 3384
  br label %for.cond400.preheader

for.cond.cleanup359:                              ; preds = %vector.body
  %indvars.iv.next1218 = add nuw nsw i64 %indvars.iv1217, 1
  %exitcond1220.not = icmp eq i64 %indvars.iv.next1218, 6
  br i1 %exitcond1220.not, label %for.cond395.preheader, label %for.cond325.preheader

for.cond400.preheader:                            ; preds = %for.cond395.preheader, %for.cond.cleanup475.1
  %.pre = phi ptr [ %.pre.pre, %for.cond395.preheader ], [ %152, %for.cond.cleanup475.1 ]
  %indvars.iv1237 = phi i64 [ 0, %for.cond395.preheader ], [ %indvars.iv.next1238, %for.cond.cleanup475.1 ]
  %scaling_list416.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 72
  %.pre1279 = load ptr, ptr %scaling_list416.phi.trans.insert, align 8
  br label %for.body410

for.cond540.preheader:                            ; preds = %for.cond.cleanup475.1
  %b_transform_8x8 = getelementptr inbounds i8, ptr %h, i64 392
  %113 = load i32, ptr %deadzone, align 16
  %shl617 = shl i32 %113, 10
  %arrayidx572.1 = getelementptr inbounds i8, ptr %h, i64 3400
  %arrayidx610.1 = getelementptr inbounds i8, ptr %h, i64 3448
  %shl617.1 = shl i32 %sub5, 10
  %arrayidx638.1 = getelementptr inbounds i8, ptr %h, i64 3496
  %arrayidx572.2 = getelementptr inbounds i8, ptr %h, i64 3408
  %arrayidx610.2 = getelementptr inbounds i8, ptr %h, i64 3456
  %arrayidx638.2 = getelementptr inbounds i8, ptr %h, i64 3504
  %arrayidx572.3 = getelementptr inbounds i8, ptr %h, i64 3416
  %arrayidx610.3 = getelementptr inbounds i8, ptr %h, i64 3464
  %arrayidx638.3 = getelementptr inbounds i8, ptr %h, i64 3512
  %114 = load i32, ptr %deadzone, align 16
  %shl754 = shl i32 %114, 10
  %arrayidx709.1 = getelementptr inbounds i8, ptr %h, i64 3432
  %arrayidx747.1 = getelementptr inbounds i8, ptr %h, i64 3480
  %shl754.1 = shl i32 %sub5, 10
  %arrayidx775.1 = getelementptr inbounds i8, ptr %h, i64 3528
  %shl754.us = shl i32 %114, 10
  %arrayidx709.us.1 = getelementptr inbounds i8, ptr %h, i64 3432
  %arrayidx747.us.1 = getelementptr inbounds i8, ptr %h, i64 3480
  %shl754.us.1 = shl i32 %sub5, 10
  %arrayidx775.us.1 = getelementptr inbounds i8, ptr %h, i64 3528
  br label %for.cond547.preheader

for.cond.cleanup409:                              ; preds = %for.body410
  %arrayidx418.1.phi.trans.insert = getelementptr inbounds i8, ptr %144, i64 80
  %.pre1280 = load ptr, ptr %arrayidx418.1.phi.trans.insert, align 8
  br label %for.body410.1

for.body410.1:                                    ; preds = %for.body410.1, %for.cond.cleanup409
  %115 = phi ptr [ %.pre1280, %for.cond.cleanup409 ], [ %121, %for.body410.1 ]
  %indvars.iv1221.1 = phi i64 [ 0, %for.cond.cleanup409 ], [ %indvars.iv.next1222.1, %for.body410.1 ]
  %arrayidx414.1 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221.1
  %116 = load i32, ptr %arrayidx414.1, align 4
  %arrayidx420.1 = getelementptr inbounds i8, ptr %115, i64 %indvars.iv1221.1
  %117 = load i8, ptr %arrayidx420.1, align 1
  %conv421.1 = zext i8 %117 to i32
  %mul422.1 = mul nsw i32 %116, %conv421.1
  %118 = load ptr, ptr %arrayidx425.1, align 8
  %arrayidx429.1 = getelementptr inbounds [16 x i32], ptr %118, i64 %indvars.iv1237, i64 %indvars.iv1221.1
  store i32 %mul422.1, ptr %arrayidx429.1, align 4
  %arrayidx433.1 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221.1
  %119 = load i32, ptr %arrayidx433.1, align 4
  %mul434.1 = shl nsw i32 %119, 4
  %120 = load ptr, ptr %pps, align 16
  %arrayidx438.1 = getelementptr inbounds i8, ptr %120, i64 80
  %121 = load ptr, ptr %arrayidx438.1, align 8
  %arrayidx440.1 = getelementptr inbounds i8, ptr %121, i64 %indvars.iv1221.1
  %122 = load i8, ptr %arrayidx440.1, align 1
  %conv441.1 = zext i8 %122 to i32
  %shr442.1 = lshr i32 %conv441.1, 1
  %add443.1 = add nsw i32 %shr442.1, %mul434.1
  %div.1 = sdiv i32 %add443.1, %conv441.1
  %arrayidx456.1 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 1, i64 %indvars.iv1237, i64 %indvars.iv1221.1
  store i32 %div.1, ptr %arrayidx456.1, align 4
  %indvars.iv.next1222.1 = add nuw nsw i64 %indvars.iv1221.1, 1
  %exitcond1224.1.not = icmp eq i64 %indvars.iv.next1222.1, 16
  br i1 %exitcond1224.1.not, label %for.cond.cleanup409.1, label %for.body410.1

for.cond.cleanup409.1:                            ; preds = %for.body410.1
  %arrayidx418.2.phi.trans.insert = getelementptr inbounds i8, ptr %120, i64 88
  %.pre1281 = load ptr, ptr %arrayidx418.2.phi.trans.insert, align 8
  br label %for.body410.2

for.body410.2:                                    ; preds = %for.body410.2, %for.cond.cleanup409.1
  %123 = phi ptr [ %.pre1281, %for.cond.cleanup409.1 ], [ %129, %for.body410.2 ]
  %indvars.iv1221.2 = phi i64 [ 0, %for.cond.cleanup409.1 ], [ %indvars.iv.next1222.2, %for.body410.2 ]
  %arrayidx414.2 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221.2
  %124 = load i32, ptr %arrayidx414.2, align 4
  %arrayidx420.2 = getelementptr inbounds i8, ptr %123, i64 %indvars.iv1221.2
  %125 = load i8, ptr %arrayidx420.2, align 1
  %conv421.2 = zext i8 %125 to i32
  %mul422.2 = mul nsw i32 %124, %conv421.2
  %126 = load ptr, ptr %arrayidx425.2, align 8
  %arrayidx429.2 = getelementptr inbounds [16 x i32], ptr %126, i64 %indvars.iv1237, i64 %indvars.iv1221.2
  store i32 %mul422.2, ptr %arrayidx429.2, align 4
  %arrayidx433.2 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221.2
  %127 = load i32, ptr %arrayidx433.2, align 4
  %mul434.2 = shl nsw i32 %127, 4
  %128 = load ptr, ptr %pps, align 16
  %arrayidx438.2 = getelementptr inbounds i8, ptr %128, i64 88
  %129 = load ptr, ptr %arrayidx438.2, align 8
  %arrayidx440.2 = getelementptr inbounds i8, ptr %129, i64 %indvars.iv1221.2
  %130 = load i8, ptr %arrayidx440.2, align 1
  %conv441.2 = zext i8 %130 to i32
  %shr442.2 = lshr i32 %conv441.2, 1
  %add443.2 = add nsw i32 %shr442.2, %mul434.2
  %div.2 = sdiv i32 %add443.2, %conv441.2
  %arrayidx456.2 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 2, i64 %indvars.iv1237, i64 %indvars.iv1221.2
  store i32 %div.2, ptr %arrayidx456.2, align 4
  %indvars.iv.next1222.2 = add nuw nsw i64 %indvars.iv1221.2, 1
  %exitcond1224.2.not = icmp eq i64 %indvars.iv.next1222.2, 16
  br i1 %exitcond1224.2.not, label %for.cond.cleanup409.2, label %for.body410.2

for.cond.cleanup409.2:                            ; preds = %for.body410.2
  %arrayidx418.3.phi.trans.insert = getelementptr inbounds i8, ptr %128, i64 96
  %.pre1282 = load ptr, ptr %arrayidx418.3.phi.trans.insert, align 8
  br label %for.body410.3

for.body410.3:                                    ; preds = %for.body410.3, %for.cond.cleanup409.2
  %131 = phi ptr [ %.pre1282, %for.cond.cleanup409.2 ], [ %137, %for.body410.3 ]
  %indvars.iv1221.3 = phi i64 [ 0, %for.cond.cleanup409.2 ], [ %indvars.iv.next1222.3, %for.body410.3 ]
  %arrayidx414.3 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221.3
  %132 = load i32, ptr %arrayidx414.3, align 4
  %arrayidx420.3 = getelementptr inbounds i8, ptr %131, i64 %indvars.iv1221.3
  %133 = load i8, ptr %arrayidx420.3, align 1
  %conv421.3 = zext i8 %133 to i32
  %mul422.3 = mul nsw i32 %132, %conv421.3
  %134 = load ptr, ptr %arrayidx425.3, align 8
  %arrayidx429.3 = getelementptr inbounds [16 x i32], ptr %134, i64 %indvars.iv1237, i64 %indvars.iv1221.3
  store i32 %mul422.3, ptr %arrayidx429.3, align 4
  %arrayidx433.3 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221.3
  %135 = load i32, ptr %arrayidx433.3, align 4
  %mul434.3 = shl nsw i32 %135, 4
  %136 = load ptr, ptr %pps, align 16
  %arrayidx438.3 = getelementptr inbounds i8, ptr %136, i64 96
  %137 = load ptr, ptr %arrayidx438.3, align 8
  %arrayidx440.3 = getelementptr inbounds i8, ptr %137, i64 %indvars.iv1221.3
  %138 = load i8, ptr %arrayidx440.3, align 1
  %conv441.3 = zext i8 %138 to i32
  %shr442.3 = lshr i32 %conv441.3, 1
  %add443.3 = add nsw i32 %shr442.3, %mul434.3
  %div.3 = sdiv i32 %add443.3, %conv441.3
  %arrayidx456.3 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 3, i64 %indvars.iv1237, i64 %indvars.iv1221.3
  store i32 %div.3, ptr %arrayidx456.3, align 4
  %indvars.iv.next1222.3 = add nuw nsw i64 %indvars.iv1221.3, 1
  %exitcond1224.3.not = icmp eq i64 %indvars.iv.next1222.3, 16
  br i1 %exitcond1224.3.not, label %for.cond.cleanup409.3, label %for.body410.3

for.cond.cleanup409.3:                            ; preds = %for.body410.3
  %arrayidx485.phi.trans.insert = getelementptr inbounds i8, ptr %136, i64 104
  %.pre1283 = load ptr, ptr %arrayidx485.phi.trans.insert, align 8
  br label %for.body476

for.body410:                                      ; preds = %for.cond400.preheader, %for.body410
  %139 = phi ptr [ %.pre1279, %for.cond400.preheader ], [ %145, %for.body410 ]
  %indvars.iv1221 = phi i64 [ 0, %for.cond400.preheader ], [ %indvars.iv.next1222, %for.body410 ]
  %arrayidx414 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221
  %140 = load i32, ptr %arrayidx414, align 4
  %arrayidx420 = getelementptr inbounds i8, ptr %139, i64 %indvars.iv1221
  %141 = load i8, ptr %arrayidx420, align 1
  %conv421 = zext i8 %141 to i32
  %mul422 = mul nsw i32 %140, %conv421
  %142 = load ptr, ptr %dequant4_mf56, align 8
  %arrayidx429 = getelementptr inbounds [16 x i32], ptr %142, i64 %indvars.iv1237, i64 %indvars.iv1221
  store i32 %mul422, ptr %arrayidx429, align 4
  %arrayidx433 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221
  %143 = load i32, ptr %arrayidx433, align 4
  %mul434 = shl nsw i32 %143, 4
  %144 = load ptr, ptr %pps, align 16
  %scaling_list436 = getelementptr inbounds i8, ptr %144, i64 72
  %145 = load ptr, ptr %scaling_list436, align 8
  %arrayidx440 = getelementptr inbounds i8, ptr %145, i64 %indvars.iv1221
  %146 = load i8, ptr %arrayidx440, align 1
  %conv441 = zext i8 %146 to i32
  %shr442 = lshr i32 %conv441, 1
  %add443 = add nsw i32 %shr442, %mul434
  %div = sdiv i32 %add443, %conv441
  %arrayidx456 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221
  store i32 %div, ptr %arrayidx456, align 4
  %indvars.iv.next1222 = add nuw nsw i64 %indvars.iv1221, 1
  %exitcond1224.not = icmp eq i64 %indvars.iv.next1222, 16
  br i1 %exitcond1224.not, label %for.cond.cleanup409, label %for.body410

for.cond.cleanup475:                              ; preds = %for.body476
  %arrayidx485.1.phi.trans.insert = getelementptr inbounds i8, ptr %160, i64 112
  %.pre1284 = load ptr, ptr %arrayidx485.1.phi.trans.insert, align 8
  br label %for.body476.1

for.body476.1:                                    ; preds = %for.body476.1, %for.cond.cleanup475
  %147 = phi ptr [ %.pre1284, %for.cond.cleanup475 ], [ %153, %for.body476.1 ]
  %indvars.iv1229.1 = phi i64 [ 0, %for.cond.cleanup475 ], [ %indvars.iv.next1230.1, %for.body476.1 ]
  %arrayidx480.1 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1229.1
  %148 = load i32, ptr %arrayidx480.1, align 4
  %arrayidx487.1 = getelementptr inbounds i8, ptr %147, i64 %indvars.iv1229.1
  %149 = load i8, ptr %arrayidx487.1, align 1
  %conv488.1 = zext i8 %149 to i32
  %mul489.1 = mul nsw i32 %148, %conv488.1
  %150 = load ptr, ptr %arrayidx492.1, align 8
  %arrayidx496.1 = getelementptr inbounds [64 x i32], ptr %150, i64 %indvars.iv1237, i64 %indvars.iv1229.1
  store i32 %mul489.1, ptr %arrayidx496.1, align 4
  %arrayidx500.1 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1229.1
  %151 = load i32, ptr %arrayidx500.1, align 4
  %mul501.1 = shl nsw i32 %151, 4
  %152 = load ptr, ptr %pps, align 16
  %arrayidx506.1 = getelementptr inbounds i8, ptr %152, i64 112
  %153 = load ptr, ptr %arrayidx506.1, align 8
  %arrayidx508.1 = getelementptr inbounds i8, ptr %153, i64 %indvars.iv1229.1
  %154 = load i8, ptr %arrayidx508.1, align 1
  %conv509.1 = zext i8 %154 to i32
  %shr510.1 = lshr i32 %conv509.1, 1
  %add511.1 = add nsw i32 %shr510.1, %mul501.1
  %div520.1 = sdiv i32 %add511.1, %conv509.1
  %arrayidx526.1 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 1, i64 %indvars.iv1237, i64 %indvars.iv1229.1
  store i32 %div520.1, ptr %arrayidx526.1, align 4
  %indvars.iv.next1230.1 = add nuw nsw i64 %indvars.iv1229.1, 1
  %exitcond1232.1.not = icmp eq i64 %indvars.iv.next1230.1, 64
  br i1 %exitcond1232.1.not, label %for.cond.cleanup475.1, label %for.body476.1

for.cond.cleanup475.1:                            ; preds = %for.body476.1
  %indvars.iv.next1238 = add nuw nsw i64 %indvars.iv1237, 1
  %exitcond1240.not = icmp eq i64 %indvars.iv.next1238, 6
  br i1 %exitcond1240.not, label %for.cond540.preheader, label %for.cond400.preheader

for.body476:                                      ; preds = %for.cond.cleanup409.3, %for.body476
  %155 = phi ptr [ %.pre1283, %for.cond.cleanup409.3 ], [ %161, %for.body476 ]
  %indvars.iv1229 = phi i64 [ 0, %for.cond.cleanup409.3 ], [ %indvars.iv.next1230, %for.body476 ]
  %arrayidx480 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1229
  %156 = load i32, ptr %arrayidx480, align 4
  %arrayidx487 = getelementptr inbounds i8, ptr %155, i64 %indvars.iv1229
  %157 = load i8, ptr %arrayidx487, align 1
  %conv488 = zext i8 %157 to i32
  %mul489 = mul nsw i32 %156, %conv488
  %158 = load ptr, ptr %dequant8_mf223, align 8
  %arrayidx496 = getelementptr inbounds [64 x i32], ptr %158, i64 %indvars.iv1237, i64 %indvars.iv1229
  store i32 %mul489, ptr %arrayidx496, align 4
  %arrayidx500 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1229
  %159 = load i32, ptr %arrayidx500, align 4
  %mul501 = shl nsw i32 %159, 4
  %160 = load ptr, ptr %pps, align 16
  %arrayidx506 = getelementptr inbounds i8, ptr %160, i64 104
  %161 = load ptr, ptr %arrayidx506, align 8
  %arrayidx508 = getelementptr inbounds i8, ptr %161, i64 %indvars.iv1229
  %162 = load i8, ptr %arrayidx508, align 1
  %conv509 = zext i8 %162 to i32
  %shr510 = lshr i32 %conv509, 1
  %add511 = add nsw i32 %shr510, %mul501
  %div520 = sdiv i32 %add511, %conv509
  %arrayidx526 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1229
  store i32 %div520, ptr %arrayidx526, align 4
  %indvars.iv.next1230 = add nuw nsw i64 %indvars.iv1229, 1
  %exitcond1232.not = icmp eq i64 %indvars.iv.next1230, 64
  br i1 %exitcond1232.not, label %for.cond.cleanup475, label %for.body476

for.cond547.preheader:                            ; preds = %for.cond540.preheader, %if.end795
  %indvars.iv1275 = phi i64 [ 0, %for.cond540.preheader ], [ %indvars.iv.next1276, %if.end795 ]
  %max_qp_err.01186 = phi i32 [ -1, %for.cond540.preheader ], [ %max_qp_err.7, %if.end795 ]
  %max_chroma_qp_err.01185 = phi i32 [ -1, %for.cond540.preheader ], [ %.us-phi1176, %if.end795 ]
  %163 = trunc nuw nsw i64 %indvars.iv1275 to i32
  %div558 = udiv i32 %163, 6
  %add560 = add nuw nsw i32 %div558, 23
  %sh_prom = zext nneg i32 %add560 to i64
  %shl = shl nuw i64 1, %sh_prom
  %rem = urem i32 %163, 6
  %idxprom563 = zext nneg i32 %rem to i64
  %cmp579 = icmp ult i64 %indvars.iv1275, 12
  %sub578 = add nsw i32 %div558, -1
  %sub601 = add nsw i32 %div558, -2
  %shl602 = shl nuw nsw i32 1, %sub601
  %sub590 = sub nsw i32 1, %div558
  br i1 %cmp579, label %for.cond553.preheader.us, label %for.body557

for.cond553.preheader.us:                         ; preds = %for.cond547.preheader, %for.cond.cleanup556.split.us.us
  %indvars.iv1257 = phi i64 [ %indvars.iv.next1258, %for.cond.cleanup556.split.us.us ], [ 0, %for.cond547.preheader ]
  %max_qp_err.11174.us = phi i32 [ %.us-phi1178, %for.cond.cleanup556.split.us.us ], [ %max_qp_err.01186, %for.cond547.preheader ]
  %max_chroma_qp_err.11173.us = phi i32 [ %.us-phi, %for.cond.cleanup556.split.us.us ], [ %max_chroma_qp_err.01185, %for.cond547.preheader ]
  %arrayidx572.us = getelementptr inbounds [4 x ptr], ptr %unquant4_mf73, i64 0, i64 %indvars.iv1257
  %arrayidx610.us = getelementptr inbounds [4 x ptr], ptr %quant4_mf41, i64 0, i64 %indvars.iv1257
  %arrayidx616.us = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1257
  %164 = load i32, ptr %arrayidx616.us, align 4
  %shl617.us = shl i32 %164, 10
  %arrayidx638.us = getelementptr inbounds [4 x ptr], ptr %quant4_bias129, i64 0, i64 %indvars.iv1257
  %or.cond.us = icmp ult i64 %indvars.iv1257, 2
  br i1 %or.cond.us, label %for.body557.us.us, label %for.body557.us.us.us

for.body557.us.us.us:                             ; preds = %for.cond553.preheader.us, %for.body557.us.us.us
  %indvars.iv1249 = phi i64 [ %indvars.iv.next1250, %for.body557.us.us.us ], [ 0, %for.cond553.preheader.us ]
  %max_chroma_qp_err.21169.us.us.us = phi i32 [ %max_chroma_qp_err.3.us.us.us, %for.body557.us.us.us ], [ %max_chroma_qp_err.11173.us, %for.cond553.preheader.us ]
  %arrayidx566.us.us.us = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 %indvars.iv1257, i64 %idxprom563, i64 %indvars.iv1249
  %165 = load i32, ptr %arrayidx566.us.us.us, align 4
  %conv567.us.us.us = sext i32 %165 to i64
  %div568.us.us.us = udiv i64 %shl, %conv567.us.us.us
  %conv569.us.us.us = trunc nuw i64 %div568.us.us.us to i32
  %166 = load ptr, ptr %arrayidx572.us, align 8
  %arrayidx576.us.us.us = getelementptr inbounds [16 x i32], ptr %166, i64 %indvars.iv1275, i64 %indvars.iv1249
  store i32 %conv569.us.us.us, ptr %arrayidx576.us.us.us, align 4
  %shl591.us.us.us = shl i32 %165, %sub590
  %conv607.us.us.us = trunc i32 %shl591.us.us.us to i16
  %167 = load ptr, ptr %arrayidx610.us, align 8
  %arrayidx614.us.us.us = getelementptr inbounds [16 x i16], ptr %167, i64 %indvars.iv1275, i64 %indvars.iv1249
  store i16 %conv607.us.us.us, ptr %arrayidx614.us.us.us, align 2
  %shr618.us.us.us = ashr i32 %shl591.us.us.us, 1
  %add619.us.us.us = add nsw i32 %shl617.us, %shr618.us.us.us
  %div620.us.us.us = sdiv i32 %add619.us.us.us, %shl591.us.us.us
  %div621.us.us.us = sdiv i32 32768, %shl591.us.us.us
  %div620.div621.us.us.us = tail call i32 @llvm.smin.i32(i32 %div620.us.us.us, i32 %div621.us.us.us)
  %conv635.us.us.us = trunc i32 %div620.div621.us.us.us to i16
  %168 = load ptr, ptr %arrayidx638.us, align 8
  %arrayidx642.us.us.us = getelementptr inbounds [16 x i16], ptr %168, i64 %indvars.iv1275, i64 %indvars.iv1249
  store i16 %conv635.us.us.us, ptr %arrayidx642.us.us.us, align 2
  %cmp643.us.us.us = icmp slt i32 %shl591.us.us.us, 65536
  %169 = tail call i32 @llvm.smax.i32(i32 %163, i32 %max_chroma_qp_err.21169.us.us.us)
  %max_chroma_qp_err.3.us.us.us = select i1 %cmp643.us.us.us, i32 %max_chroma_qp_err.21169.us.us.us, i32 %169
  %indvars.iv.next1250 = add nuw nsw i64 %indvars.iv1249, 1
  %exitcond1252.not = icmp eq i64 %indvars.iv.next1250, 16
  br i1 %exitcond1252.not, label %for.cond.cleanup556.split.us.us, label %for.body557.us.us.us

for.body557.us.us:                                ; preds = %for.cond553.preheader.us, %for.body557.us.us
  %indvars.iv1253 = phi i64 [ %indvars.iv.next1254, %for.body557.us.us ], [ 0, %for.cond553.preheader.us ]
  %max_qp_err.21170.us.us = phi i32 [ %spec.select, %for.body557.us.us ], [ %max_qp_err.11174.us, %for.cond553.preheader.us ]
  %arrayidx566.us.us = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 %indvars.iv1257, i64 %idxprom563, i64 %indvars.iv1253
  %170 = load i32, ptr %arrayidx566.us.us, align 4
  %conv567.us.us = sext i32 %170 to i64
  %div568.us.us = udiv i64 %shl, %conv567.us.us
  %conv569.us.us = trunc nuw i64 %div568.us.us to i32
  %171 = load ptr, ptr %arrayidx572.us, align 8
  %arrayidx576.us.us = getelementptr inbounds [16 x i32], ptr %171, i64 %indvars.iv1275, i64 %indvars.iv1253
  store i32 %conv569.us.us, ptr %arrayidx576.us.us, align 4
  %shl591.us.us = shl i32 %170, %sub590
  %conv607.us.us = trunc i32 %shl591.us.us to i16
  %172 = load ptr, ptr %arrayidx610.us, align 8
  %arrayidx614.us.us = getelementptr inbounds [16 x i16], ptr %172, i64 %indvars.iv1275, i64 %indvars.iv1253
  store i16 %conv607.us.us, ptr %arrayidx614.us.us, align 2
  %shr618.us.us = ashr i32 %shl591.us.us, 1
  %add619.us.us = add nsw i32 %shl617.us, %shr618.us.us
  %div620.us.us = sdiv i32 %add619.us.us, %shl591.us.us
  %div621.us.us = sdiv i32 32768, %shl591.us.us
  %div620.div621.us.us = tail call i32 @llvm.smin.i32(i32 %div620.us.us, i32 %div621.us.us)
  %conv635.us.us = trunc i32 %div620.div621.us.us to i16
  %173 = load ptr, ptr %arrayidx638.us, align 8
  %arrayidx642.us.us = getelementptr inbounds [16 x i16], ptr %173, i64 %indvars.iv1275, i64 %indvars.iv1253
  store i16 %conv635.us.us, ptr %arrayidx642.us.us, align 2
  %cmp643.us.us = icmp sgt i32 %shl591.us.us, 65535
  %174 = tail call i32 @llvm.smax.i32(i32 %163, i32 %max_qp_err.21170.us.us)
  %spec.select = select i1 %cmp643.us.us, i32 %174, i32 %max_qp_err.21170.us.us
  %indvars.iv.next1254 = add nuw nsw i64 %indvars.iv1253, 1
  %exitcond1256.not = icmp eq i64 %indvars.iv.next1254, 16
  br i1 %exitcond1256.not, label %for.cond.cleanup556.split.us.us, label %for.body557.us.us

for.cond.cleanup556.split.us.us:                  ; preds = %for.body557.us.us.us, %for.body557.us.us
  %.us-phi = phi i32 [ %max_chroma_qp_err.11173.us, %for.body557.us.us ], [ %max_chroma_qp_err.3.us.us.us, %for.body557.us.us.us ]
  %.us-phi1178 = phi i32 [ %spec.select, %for.body557.us.us ], [ %max_qp_err.11174.us, %for.body557.us.us.us ]
  %indvars.iv.next1258 = add nuw nsw i64 %indvars.iv1257, 1
  %exitcond1260.not = icmp eq i64 %indvars.iv.next1258, 4
  br i1 %exitcond1260.not, label %for.cond.cleanup550, label %for.cond553.preheader.us

for.cond.cleanup543:                              ; preds = %if.end795
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812
  %175 = load i32, ptr %b_lossless, align 4
  %tobool800.not = icmp eq i32 %175, 0
  br i1 %tobool800.not, label %land.lhs.true801, label %cleanup833

for.cond.cleanup550:                              ; preds = %for.body557.3, %for.cond.cleanup556.split.us.us
  %.us-phi1176 = phi i32 [ %.us-phi, %for.cond.cleanup556.split.us.us ], [ %max_chroma_qp_err.3.3, %for.body557.3 ]
  %.us-phi1177 = phi i32 [ %.us-phi1178, %for.cond.cleanup556.split.us.us ], [ %max_qp_err.3.1, %for.body557.3 ]
  %176 = load i32, ptr %b_transform_8x8, align 8
  %tobool678.not = icmp eq i32 %176, 0
  br i1 %tobool678.not, label %if.end795, label %for.cond681.preheader

for.cond681.preheader:                            ; preds = %for.cond.cleanup550
  %add694 = add nuw nsw i32 %div558, 24
  %sh_prom695 = zext nneg i32 %add694 to i64
  %shl696 = shl nuw i64 1, %sh_prom695
  %cmp715 = icmp ult i64 %indvars.iv1275, 6
  %shl738 = shl nuw nsw i32 1, %sub578
  %sub726 = sub nsw i32 0, %div558
  br i1 %cmp715, label %for.body691.us.us, label %for.body691

for.body691.us.us:                                ; preds = %for.cond681.preheader, %for.body691.us.us
  %indvars.iv1268 = phi i64 [ %indvars.iv.next1269, %for.body691.us.us ], [ 0, %for.cond681.preheader ]
  %max_qp_err.51179.us.us = phi i32 [ %max_qp_err.6.us.us, %for.body691.us.us ], [ %.us-phi1177, %for.cond681.preheader ]
  %arrayidx703.us.us = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 0, i64 %idxprom563, i64 %indvars.iv1268
  %177 = load i32, ptr %arrayidx703.us.us, align 4
  %conv704.us.us = sext i32 %177 to i64
  %div705.us.us = udiv i64 %shl696, %conv704.us.us
  %conv706.us.us = trunc nuw i64 %div705.us.us to i32
  %178 = load ptr, ptr %unquant8_mf240, align 8
  %arrayidx713.us.us = getelementptr inbounds [64 x i32], ptr %178, i64 %indvars.iv1275, i64 %indvars.iv1268
  store i32 %conv706.us.us, ptr %arrayidx713.us.us, align 4
  %shl727.us.us = shl nuw nsw i32 %177, %sub726
  %conv744.us.us = trunc i32 %shl727.us.us to i16
  %179 = load ptr, ptr %quant8_mf206, align 8
  %arrayidx751.us.us = getelementptr inbounds [64 x i16], ptr %179, i64 %indvars.iv1275, i64 %indvars.iv1268
  store i16 %conv744.us.us, ptr %arrayidx751.us.us, align 2
  %shr755.us.us = ashr i32 %shl727.us.us, 1
  %add756.us.us = add nsw i32 %shl754.us, %shr755.us.us
  %div757.us.us = sdiv i32 %add756.us.us, %shl727.us.us
  %div758.us.us = sdiv i32 32768, %shl727.us.us
  %div757.div758.us.us = tail call i32 @llvm.smin.i32(i32 %div757.us.us, i32 %div758.us.us)
  %conv772.us.us = trunc i32 %div757.div758.us.us to i16
  %180 = load ptr, ptr %quant8_bias297, align 8
  %arrayidx779.us.us = getelementptr inbounds [64 x i16], ptr %180, i64 %indvars.iv1275, i64 %indvars.iv1268
  store i16 %conv772.us.us, ptr %arrayidx779.us.us, align 2
  %cmp780.us.us = icmp sgt i32 %shl727.us.us, 65535
  %181 = tail call i32 @llvm.smax.i32(i32 %163, i32 %max_qp_err.51179.us.us)
  %max_qp_err.6.us.us = select i1 %cmp780.us.us, i32 %181, i32 %max_qp_err.51179.us.us
  %indvars.iv.next1269 = add nuw nsw i64 %indvars.iv1268, 1
  %exitcond1271.not = icmp eq i64 %indvars.iv.next1269, 64
  br i1 %exitcond1271.not, label %for.body691.us.us.1, label %for.body691.us.us

for.body691.us.us.1:                              ; preds = %for.body691.us.us, %for.body691.us.us.1
  %indvars.iv1268.1 = phi i64 [ %indvars.iv.next1269.1, %for.body691.us.us.1 ], [ 0, %for.body691.us.us ]
  %max_qp_err.51179.us.us.1 = phi i32 [ %max_qp_err.6.us.us.1, %for.body691.us.us.1 ], [ %max_qp_err.6.us.us, %for.body691.us.us ]
  %arrayidx703.us.us.1 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 1, i64 %idxprom563, i64 %indvars.iv1268.1
  %182 = load i32, ptr %arrayidx703.us.us.1, align 4
  %conv704.us.us.1 = sext i32 %182 to i64
  %div705.us.us.1 = udiv i64 %shl696, %conv704.us.us.1
  %conv706.us.us.1 = trunc nuw i64 %div705.us.us.1 to i32
  %183 = load ptr, ptr %arrayidx709.us.1, align 8
  %arrayidx713.us.us.1 = getelementptr inbounds [64 x i32], ptr %183, i64 %indvars.iv1275, i64 %indvars.iv1268.1
  store i32 %conv706.us.us.1, ptr %arrayidx713.us.us.1, align 4
  %shl727.us.us.1 = shl nuw nsw i32 %182, %sub726
  %conv744.us.us.1 = trunc i32 %shl727.us.us.1 to i16
  %184 = load ptr, ptr %arrayidx747.us.1, align 8
  %arrayidx751.us.us.1 = getelementptr inbounds [64 x i16], ptr %184, i64 %indvars.iv1275, i64 %indvars.iv1268.1
  store i16 %conv744.us.us.1, ptr %arrayidx751.us.us.1, align 2
  %shr755.us.us.1 = ashr i32 %shl727.us.us.1, 1
  %add756.us.us.1 = add nsw i32 %shl754.us.1, %shr755.us.us.1
  %div757.us.us.1 = sdiv i32 %add756.us.us.1, %shl727.us.us.1
  %div758.us.us.1 = sdiv i32 32768, %shl727.us.us.1
  %div757.div758.us.us.1 = tail call i32 @llvm.smin.i32(i32 %div757.us.us.1, i32 %div758.us.us.1)
  %conv772.us.us.1 = trunc i32 %div757.div758.us.us.1 to i16
  %185 = load ptr, ptr %arrayidx775.us.1, align 8
  %arrayidx779.us.us.1 = getelementptr inbounds [64 x i16], ptr %185, i64 %indvars.iv1275, i64 %indvars.iv1268.1
  store i16 %conv772.us.us.1, ptr %arrayidx779.us.us.1, align 2
  %cmp780.us.us.1 = icmp sgt i32 %shl727.us.us.1, 65535
  %186 = tail call i32 @llvm.smax.i32(i32 %163, i32 %max_qp_err.51179.us.us.1)
  %max_qp_err.6.us.us.1 = select i1 %cmp780.us.us.1, i32 %186, i32 %max_qp_err.51179.us.us.1
  %indvars.iv.next1269.1 = add nuw nsw i64 %indvars.iv1268.1, 1
  %exitcond1271.1.not = icmp eq i64 %indvars.iv.next1269.1, 64
  br i1 %exitcond1271.1.not, label %if.end795, label %for.body691.us.us.1

for.body557.1:                                    ; preds = %for.body557, %for.body557.1
  %indvars.iv1241.1 = phi i64 [ %indvars.iv.next1242.1, %for.body557.1 ], [ 0, %for.body557 ]
  %max_qp_err.21170.1 = phi i32 [ %max_qp_err.3.1, %for.body557.1 ], [ %max_qp_err.3, %for.body557 ]
  %arrayidx566.1 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 1, i64 %idxprom563, i64 %indvars.iv1241.1
  %187 = load i32, ptr %arrayidx566.1, align 4
  %conv567.1 = sext i32 %187 to i64
  %div568.1 = udiv i64 %shl, %conv567.1
  %conv569.1 = trunc i64 %div568.1 to i32
  %188 = load ptr, ptr %arrayidx572.1, align 8
  %arrayidx576.1 = getelementptr inbounds [16 x i32], ptr %188, i64 %indvars.iv1275, i64 %indvars.iv1241.1
  store i32 %conv569.1, ptr %arrayidx576.1, align 4
  %add603.1 = add nsw i32 %187, %shl602
  %shr606.1 = ashr i32 %add603.1, %sub578
  %conv607.1 = trunc i32 %shr606.1 to i16
  %189 = load ptr, ptr %arrayidx610.1, align 8
  %arrayidx614.1 = getelementptr inbounds [16 x i16], ptr %189, i64 %indvars.iv1275, i64 %indvars.iv1241.1
  store i16 %conv607.1, ptr %arrayidx614.1, align 2
  %shr618.1 = ashr i32 %shr606.1, 1
  %add619.1 = add nsw i32 %shl617.1, %shr618.1
  %div620.1 = sdiv i32 %add619.1, %shr606.1
  %div621.1 = sdiv i32 32768, %shr606.1
  %div620.div621.1 = tail call i32 @llvm.smin.i32(i32 %div620.1, i32 %div621.1)
  %conv635.1 = trunc i32 %div620.div621.1 to i16
  %190 = load ptr, ptr %arrayidx638.1, align 8
  %arrayidx642.1 = getelementptr inbounds [16 x i16], ptr %190, i64 %indvars.iv1275, i64 %indvars.iv1241.1
  store i16 %conv635.1, ptr %arrayidx642.1, align 2
  %cmp643.1 = icmp sgt i32 %shr606.1, 65535
  %191 = sext i32 %max_qp_err.21170.1 to i64
  %cmp646.1 = icmp sgt i64 %indvars.iv1275, %191
  %or.cond1142.1 = select i1 %cmp643.1, i1 %cmp646.1, i1 false
  %max_qp_err.3.1 = select i1 %or.cond1142.1, i32 %163, i32 %max_qp_err.21170.1
  %indvars.iv.next1242.1 = add nuw nsw i64 %indvars.iv1241.1, 1
  %exitcond1244.1.not = icmp eq i64 %indvars.iv.next1242.1, 16
  br i1 %exitcond1244.1.not, label %for.body557.2, label %for.body557.1

for.body557.2:                                    ; preds = %for.body557.1, %for.body557.2
  %indvars.iv1241.2 = phi i64 [ %indvars.iv.next1242.2, %for.body557.2 ], [ 0, %for.body557.1 ]
  %max_chroma_qp_err.21169.2 = phi i32 [ %max_chroma_qp_err.3.2, %for.body557.2 ], [ %max_chroma_qp_err.01185, %for.body557.1 ]
  %arrayidx566.2 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 2, i64 %idxprom563, i64 %indvars.iv1241.2
  %192 = load i32, ptr %arrayidx566.2, align 4
  %conv567.2 = sext i32 %192 to i64
  %div568.2 = udiv i64 %shl, %conv567.2
  %conv569.2 = trunc i64 %div568.2 to i32
  %193 = load ptr, ptr %arrayidx572.2, align 8
  %arrayidx576.2 = getelementptr inbounds [16 x i32], ptr %193, i64 %indvars.iv1275, i64 %indvars.iv1241.2
  store i32 %conv569.2, ptr %arrayidx576.2, align 4
  %add603.2 = add nsw i32 %192, %shl602
  %shr606.2 = ashr i32 %add603.2, %sub578
  %conv607.2 = trunc i32 %shr606.2 to i16
  %194 = load ptr, ptr %arrayidx610.2, align 8
  %arrayidx614.2 = getelementptr inbounds [16 x i16], ptr %194, i64 %indvars.iv1275, i64 %indvars.iv1241.2
  store i16 %conv607.2, ptr %arrayidx614.2, align 2
  %shr618.2 = ashr i32 %shr606.2, 1
  %add619.2 = add nsw i32 %shr618.2, 21504
  %div620.2 = sdiv i32 %add619.2, %shr606.2
  %div621.2 = sdiv i32 32768, %shr606.2
  %div620.div621.2 = tail call i32 @llvm.smin.i32(i32 %div620.2, i32 %div621.2)
  %conv635.2 = trunc i32 %div620.div621.2 to i16
  %195 = load ptr, ptr %arrayidx638.2, align 8
  %arrayidx642.2 = getelementptr inbounds [16 x i16], ptr %195, i64 %indvars.iv1275, i64 %indvars.iv1241.2
  store i16 %conv635.2, ptr %arrayidx642.2, align 2
  %cmp643.2 = icmp slt i32 %shr606.2, 65536
  %196 = sext i32 %max_chroma_qp_err.21169.2 to i64
  %cmp658.2 = icmp sle i64 %indvars.iv1275, %196
  %or.cond1144.2 = select i1 %cmp643.2, i1 true, i1 %cmp658.2
  %max_chroma_qp_err.3.2 = select i1 %or.cond1144.2, i32 %max_chroma_qp_err.21169.2, i32 %163
  %indvars.iv.next1242.2 = add nuw nsw i64 %indvars.iv1241.2, 1
  %exitcond1244.2.not = icmp eq i64 %indvars.iv.next1242.2, 16
  br i1 %exitcond1244.2.not, label %for.body557.3, label %for.body557.2

for.body557.3:                                    ; preds = %for.body557.2, %for.body557.3
  %indvars.iv1241.3 = phi i64 [ %indvars.iv.next1242.3, %for.body557.3 ], [ 0, %for.body557.2 ]
  %max_chroma_qp_err.21169.3 = phi i32 [ %max_chroma_qp_err.3.3, %for.body557.3 ], [ %max_chroma_qp_err.3.2, %for.body557.2 ]
  %arrayidx566.3 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 3, i64 %idxprom563, i64 %indvars.iv1241.3
  %197 = load i32, ptr %arrayidx566.3, align 4
  %conv567.3 = sext i32 %197 to i64
  %div568.3 = udiv i64 %shl, %conv567.3
  %conv569.3 = trunc i64 %div568.3 to i32
  %198 = load ptr, ptr %arrayidx572.3, align 8
  %arrayidx576.3 = getelementptr inbounds [16 x i32], ptr %198, i64 %indvars.iv1275, i64 %indvars.iv1241.3
  store i32 %conv569.3, ptr %arrayidx576.3, align 4
  %add603.3 = add nsw i32 %197, %shl602
  %shr606.3 = ashr i32 %add603.3, %sub578
  %conv607.3 = trunc i32 %shr606.3 to i16
  %199 = load ptr, ptr %arrayidx610.3, align 8
  %arrayidx614.3 = getelementptr inbounds [16 x i16], ptr %199, i64 %indvars.iv1275, i64 %indvars.iv1241.3
  store i16 %conv607.3, ptr %arrayidx614.3, align 2
  %shr618.3 = ashr i32 %shr606.3, 1
  %add619.3 = add nsw i32 %shr618.3, 11264
  %div620.3 = sdiv i32 %add619.3, %shr606.3
  %div621.3 = sdiv i32 32768, %shr606.3
  %div620.div621.3 = tail call i32 @llvm.smin.i32(i32 %div620.3, i32 %div621.3)
  %conv635.3 = trunc i32 %div620.div621.3 to i16
  %200 = load ptr, ptr %arrayidx638.3, align 8
  %arrayidx642.3 = getelementptr inbounds [16 x i16], ptr %200, i64 %indvars.iv1275, i64 %indvars.iv1241.3
  store i16 %conv635.3, ptr %arrayidx642.3, align 2
  %cmp643.3 = icmp slt i32 %shr606.3, 65536
  %201 = sext i32 %max_chroma_qp_err.21169.3 to i64
  %cmp658.3 = icmp sle i64 %indvars.iv1275, %201
  %or.cond1144.3 = select i1 %cmp643.3, i1 true, i1 %cmp658.3
  %max_chroma_qp_err.3.3 = select i1 %or.cond1144.3, i32 %max_chroma_qp_err.21169.3, i32 %163
  %indvars.iv.next1242.3 = add nuw nsw i64 %indvars.iv1241.3, 1
  %exitcond1244.3.not = icmp eq i64 %indvars.iv.next1242.3, 16
  br i1 %exitcond1244.3.not, label %for.cond.cleanup550, label %for.body557.3

for.body557:                                      ; preds = %for.cond547.preheader, %for.body557
  %indvars.iv1241 = phi i64 [ %indvars.iv.next1242, %for.body557 ], [ 0, %for.cond547.preheader ]
  %max_qp_err.21170 = phi i32 [ %max_qp_err.3, %for.body557 ], [ %max_qp_err.01186, %for.cond547.preheader ]
  %arrayidx566 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 0, i64 %idxprom563, i64 %indvars.iv1241
  %202 = load i32, ptr %arrayidx566, align 4
  %conv567 = sext i32 %202 to i64
  %div568 = udiv i64 %shl, %conv567
  %conv569 = trunc i64 %div568 to i32
  %203 = load ptr, ptr %unquant4_mf73, align 8
  %arrayidx576 = getelementptr inbounds [16 x i32], ptr %203, i64 %indvars.iv1275, i64 %indvars.iv1241
  store i32 %conv569, ptr %arrayidx576, align 4
  %add603 = add nsw i32 %202, %shl602
  %shr606 = ashr i32 %add603, %sub578
  %conv607 = trunc i32 %shr606 to i16
  %204 = load ptr, ptr %quant4_mf41, align 8
  %arrayidx614 = getelementptr inbounds [16 x i16], ptr %204, i64 %indvars.iv1275, i64 %indvars.iv1241
  store i16 %conv607, ptr %arrayidx614, align 2
  %shr618 = ashr i32 %shr606, 1
  %add619 = add nsw i32 %shl617, %shr618
  %div620 = sdiv i32 %add619, %shr606
  %div621 = sdiv i32 32768, %shr606
  %div620.div621 = tail call i32 @llvm.smin.i32(i32 %div620, i32 %div621)
  %conv635 = trunc i32 %div620.div621 to i16
  %205 = load ptr, ptr %quant4_bias129, align 8
  %arrayidx642 = getelementptr inbounds [16 x i16], ptr %205, i64 %indvars.iv1275, i64 %indvars.iv1241
  store i16 %conv635, ptr %arrayidx642, align 2
  %cmp643 = icmp sgt i32 %shr606, 65535
  %206 = sext i32 %max_qp_err.21170 to i64
  %cmp646 = icmp sgt i64 %indvars.iv1275, %206
  %or.cond1142 = select i1 %cmp643, i1 %cmp646, i1 false
  %max_qp_err.3 = select i1 %or.cond1142, i32 %163, i32 %max_qp_err.21170
  %indvars.iv.next1242 = add nuw nsw i64 %indvars.iv1241, 1
  %exitcond1244.not = icmp eq i64 %indvars.iv.next1242, 16
  br i1 %exitcond1244.not, label %for.body557.1, label %for.body557

for.body691.1:                                    ; preds = %for.body691, %for.body691.1
  %indvars.iv1261.1 = phi i64 [ %indvars.iv.next1262.1, %for.body691.1 ], [ 0, %for.body691 ]
  %max_qp_err.51179.1 = phi i32 [ %max_qp_err.6.1, %for.body691.1 ], [ %max_qp_err.6, %for.body691 ]
  %arrayidx703.1 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 1, i64 %idxprom563, i64 %indvars.iv1261.1
  %207 = load i32, ptr %arrayidx703.1, align 4
  %conv704.1 = sext i32 %207 to i64
  %div705.1 = udiv i64 %shl696, %conv704.1
  %conv706.1 = trunc i64 %div705.1 to i32
  %208 = load ptr, ptr %arrayidx709.1, align 8
  %arrayidx713.1 = getelementptr inbounds [64 x i32], ptr %208, i64 %indvars.iv1275, i64 %indvars.iv1261.1
  store i32 %conv706.1, ptr %arrayidx713.1, align 4
  %add739.1 = add nsw i32 %207, %shl738
  %shr741.1 = ashr i32 %add739.1, %div558
  %conv744.1 = trunc i32 %shr741.1 to i16
  %209 = load ptr, ptr %arrayidx747.1, align 8
  %arrayidx751.1 = getelementptr inbounds [64 x i16], ptr %209, i64 %indvars.iv1275, i64 %indvars.iv1261.1
  store i16 %conv744.1, ptr %arrayidx751.1, align 2
  %shr755.1 = ashr i32 %shr741.1, 1
  %add756.1 = add nsw i32 %shl754.1, %shr755.1
  %div757.1 = sdiv i32 %add756.1, %shr741.1
  %div758.1 = sdiv i32 32768, %shr741.1
  %div757.div758.1 = tail call i32 @llvm.smin.i32(i32 %div757.1, i32 %div758.1)
  %conv772.1 = trunc i32 %div757.div758.1 to i16
  %210 = load ptr, ptr %arrayidx775.1, align 8
  %arrayidx779.1 = getelementptr inbounds [64 x i16], ptr %210, i64 %indvars.iv1275, i64 %indvars.iv1261.1
  store i16 %conv772.1, ptr %arrayidx779.1, align 2
  %cmp780.1 = icmp sgt i32 %shr741.1, 65535
  %211 = tail call i32 @llvm.smax.i32(i32 %163, i32 %max_qp_err.51179.1)
  %max_qp_err.6.1 = select i1 %cmp780.1, i32 %211, i32 %max_qp_err.51179.1
  %indvars.iv.next1262.1 = add nuw nsw i64 %indvars.iv1261.1, 1
  %exitcond1264.1.not = icmp eq i64 %indvars.iv.next1262.1, 64
  br i1 %exitcond1264.1.not, label %if.end795, label %for.body691.1

for.body691:                                      ; preds = %for.cond681.preheader, %for.body691
  %indvars.iv1261 = phi i64 [ %indvars.iv.next1262, %for.body691 ], [ 0, %for.cond681.preheader ]
  %max_qp_err.51179 = phi i32 [ %max_qp_err.6, %for.body691 ], [ %.us-phi1177, %for.cond681.preheader ]
  %arrayidx703 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 0, i64 %idxprom563, i64 %indvars.iv1261
  %212 = load i32, ptr %arrayidx703, align 4
  %conv704 = sext i32 %212 to i64
  %div705 = udiv i64 %shl696, %conv704
  %conv706 = trunc i64 %div705 to i32
  %213 = load ptr, ptr %unquant8_mf240, align 8
  %arrayidx713 = getelementptr inbounds [64 x i32], ptr %213, i64 %indvars.iv1275, i64 %indvars.iv1261
  store i32 %conv706, ptr %arrayidx713, align 4
  %add739 = add nsw i32 %212, %shl738
  %shr741 = ashr i32 %add739, %div558
  %conv744 = trunc i32 %shr741 to i16
  %214 = load ptr, ptr %quant8_mf206, align 8
  %arrayidx751 = getelementptr inbounds [64 x i16], ptr %214, i64 %indvars.iv1275, i64 %indvars.iv1261
  store i16 %conv744, ptr %arrayidx751, align 2
  %shr755 = ashr i32 %shr741, 1
  %add756 = add nsw i32 %shl754, %shr755
  %div757 = sdiv i32 %add756, %shr741
  %div758 = sdiv i32 32768, %shr741
  %div757.div758 = tail call i32 @llvm.smin.i32(i32 %div757, i32 %div758)
  %conv772 = trunc i32 %div757.div758 to i16
  %215 = load ptr, ptr %quant8_bias297, align 8
  %arrayidx779 = getelementptr inbounds [64 x i16], ptr %215, i64 %indvars.iv1275, i64 %indvars.iv1261
  store i16 %conv772, ptr %arrayidx779, align 2
  %cmp780 = icmp sgt i32 %shr741, 65535
  %216 = tail call i32 @llvm.smax.i32(i32 %163, i32 %max_qp_err.51179)
  %max_qp_err.6 = select i1 %cmp780, i32 %216, i32 %max_qp_err.51179
  %indvars.iv.next1262 = add nuw nsw i64 %indvars.iv1261, 1
  %exitcond1264.not = icmp eq i64 %indvars.iv.next1262, 64
  br i1 %exitcond1264.not, label %for.body691.1, label %for.body691

if.end795:                                        ; preds = %for.body691.1, %for.body691.us.us.1, %for.cond.cleanup550
  %max_qp_err.7 = phi i32 [ %.us-phi1177, %for.cond.cleanup550 ], [ %max_qp_err.6.us.us.1, %for.body691.us.us.1 ], [ %max_qp_err.6.1, %for.body691.1 ]
  %indvars.iv.next1276 = add nuw nsw i64 %indvars.iv1275, 1
  %exitcond1278.not = icmp eq i64 %indvars.iv.next1276, 52
  br i1 %exitcond1278.not, label %for.cond.cleanup543, label %for.cond547.preheader

land.lhs.true801:                                 ; preds = %for.cond.cleanup543
  %i_qp_min = getelementptr inbounds i8, ptr %h, i64 496
  %217 = load i32, ptr %i_qp_min, align 8
  %cmp803.not = icmp slt i32 %max_qp_err.7, %217
  br i1 %cmp803.not, label %land.lhs.true814, label %if.then805

if.then805:                                       ; preds = %land.lhs.true801
  %add806 = add nsw i32 %max_qp_err.7, 1
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %add806) #9
  %218 = load i32, ptr %i_qp_min, align 8
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %218) #9
  br label %cleanup833

land.lhs.true814:                                 ; preds = %land.lhs.true801
  %chroma_qp_table = getelementptr inbounds i8, ptr %h, i64 7216
  %219 = load ptr, ptr %chroma_qp_table, align 16
  %idxprom818 = sext i32 %217 to i64
  %arrayidx819 = getelementptr inbounds i8, ptr %219, i64 %idxprom818
  %220 = load i8, ptr %arrayidx819, align 1
  %conv820 = zext i8 %220 to i32
  %cmp821.not = icmp slt i32 %.us-phi1176, %conv820
  br i1 %cmp821.not, label %cleanup833, label %if.then823

if.then823:                                       ; preds = %land.lhs.true814
  %add824 = add nuw nsw i32 %.us-phi1176, 1
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %add824) #9
  %221 = load ptr, ptr %chroma_qp_table, align 16
  %222 = load i32, ptr %i_qp_min, align 8
  %idxprom829 = sext i32 %222 to i64
  %arrayidx830 = getelementptr inbounds i8, ptr %221, i64 %idxprom829
  %223 = load i8, ptr %arrayidx830, align 1
  %conv831 = zext i8 %223 to i32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %conv831) #9
  br label %cleanup833

fail:                                             ; preds = %entry, %do.body50, %do.body67, %do.body123, %do.body.1, %do.body50.1, %do.body67.1, %do.body123.1, %do.body.2, %do.body50.2, %do.body67.2, %do.body123.2, %do.body.3, %do.body50.3, %do.body67.3, %do.body123.3, %for.inc143.3, %do.body217, %do.body234, %do.body291, %do.body200.1, %do.body217.1, %do.body234.1, %do.body291.1
  tail call void @x264_cqm_delete(ptr noundef nonnull %h)
  br label %cleanup833

cleanup833:                                       ; preds = %for.cond.cleanup543, %land.lhs.true814, %fail, %if.then823, %if.then805
  %retval.0 = phi i32 [ -1, %fail ], [ -1, %if.then823 ], [ -1, %if.then805 ], [ 0, %land.lhs.true814 ], [ 0, %for.cond.cleanup543 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %deadzone) #9
  call void @llvm.lifetime.end.p0(i64 3072, ptr nonnull %quant8_mf) #9
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %quant4_mf) #9
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %def_dequant8) #9
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %def_dequant4) #9
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %def_quant8) #9
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %def_quant4) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_cqm_delete(ptr nocapture noundef readonly %h) local_unnamed_addr #0 {
for.body3.lr.ph.1:
  %quant4_mf = getelementptr inbounds i8, ptr %h, i64 3440
  %dequant4_mf = getelementptr inbounds i8, ptr %h, i64 3344
  %unquant4_mf = getelementptr inbounds i8, ptr %h, i64 3392
  %quant4_bias = getelementptr inbounds i8, ptr %h, i64 3488
  %0 = load ptr, ptr %quant4_mf, align 8
  tail call void @x264_free(ptr noundef %0) #9
  %1 = load ptr, ptr %dequant4_mf, align 8
  tail call void @x264_free(ptr noundef %1) #9
  %2 = load ptr, ptr %unquant4_mf, align 8
  tail call void @x264_free(ptr noundef %2) #9
  %3 = load ptr, ptr %quant4_bias, align 8
  tail call void @x264_free(ptr noundef %3) #9
  %arrayidx.1 = getelementptr inbounds i8, ptr %h, i64 3448
  %4 = load ptr, ptr %arrayidx.1, align 8
  %5 = load ptr, ptr %quant4_mf, align 8
  %cmp7.1.not = icmp eq ptr %4, %5
  br i1 %cmp7.1.not, label %for.body20.lr.ph.1, label %if.then9.1

if.then9.1:                                       ; preds = %for.body3.lr.ph.1
  %arrayidx12.1 = getelementptr inbounds i8, ptr %h, i64 3448
  %6 = load ptr, ptr %arrayidx12.1, align 8
  tail call void @x264_free(ptr noundef %6) #9
  %arrayidx14.1 = getelementptr inbounds i8, ptr %h, i64 3352
  %7 = load ptr, ptr %arrayidx14.1, align 8
  tail call void @x264_free(ptr noundef %7) #9
  %arrayidx16.1 = getelementptr inbounds i8, ptr %h, i64 3400
  %8 = load ptr, ptr %arrayidx16.1, align 8
  tail call void @x264_free(ptr noundef %8) #9
  br label %for.body20.lr.ph.1

for.body20.lr.ph.1:                               ; preds = %for.body3.lr.ph.1, %if.then9.1
  %arrayidx22.1 = getelementptr inbounds i8, ptr %h, i64 3496
  %9 = load ptr, ptr %arrayidx22.1, align 8
  %10 = load ptr, ptr %quant4_bias, align 8
  %cmp26.1.not = icmp eq ptr %9, %10
  br i1 %cmp26.1.not, label %for.body3.lr.ph.2, label %if.then33.1

if.then33.1:                                      ; preds = %for.body20.lr.ph.1
  %arrayidx36.1 = getelementptr inbounds i8, ptr %h, i64 3496
  %11 = load ptr, ptr %arrayidx36.1, align 8
  tail call void @x264_free(ptr noundef %11) #9
  br label %for.body3.lr.ph.2

for.body3.lr.ph.2:                                ; preds = %for.body20.lr.ph.1, %if.then33.1
  %arrayidx.2 = getelementptr inbounds i8, ptr %h, i64 3456
  %12 = load ptr, ptr %arrayidx.2, align 8
  %13 = load ptr, ptr %quant4_mf, align 8
  %cmp7.2 = icmp eq ptr %12, %13
  br i1 %cmp7.2, label %for.body20.lr.ph.2, label %for.inc.2

for.inc.2:                                        ; preds = %for.body3.lr.ph.2
  %arrayidx6.2.1 = getelementptr inbounds i8, ptr %h, i64 3448
  %14 = load ptr, ptr %arrayidx6.2.1, align 8
  %cmp7.2.1 = icmp eq ptr %12, %14
  br i1 %cmp7.2.1, label %for.body20.lr.ph.2, label %if.then9.2

if.then9.2:                                       ; preds = %for.inc.2
  %arrayidx12.2 = getelementptr inbounds i8, ptr %h, i64 3456
  %15 = load ptr, ptr %arrayidx12.2, align 8
  tail call void @x264_free(ptr noundef %15) #9
  %arrayidx14.2 = getelementptr inbounds i8, ptr %h, i64 3360
  %16 = load ptr, ptr %arrayidx14.2, align 8
  tail call void @x264_free(ptr noundef %16) #9
  %arrayidx16.2 = getelementptr inbounds i8, ptr %h, i64 3408
  %17 = load ptr, ptr %arrayidx16.2, align 8
  tail call void @x264_free(ptr noundef %17) #9
  br label %for.body20.lr.ph.2

for.body20.lr.ph.2:                               ; preds = %for.inc.2, %for.body3.lr.ph.2, %if.then9.2
  %arrayidx22.2 = getelementptr inbounds i8, ptr %h, i64 3504
  %18 = load ptr, ptr %arrayidx22.2, align 8
  %19 = load ptr, ptr %quant4_bias, align 8
  %cmp26.2 = icmp eq ptr %18, %19
  br i1 %cmp26.2, label %for.body3.lr.ph.3, label %for.inc29.2

for.inc29.2:                                      ; preds = %for.body20.lr.ph.2
  %arrayidx25.2.1 = getelementptr inbounds i8, ptr %h, i64 3496
  %20 = load ptr, ptr %arrayidx25.2.1, align 8
  %cmp26.2.1 = icmp eq ptr %18, %20
  br i1 %cmp26.2.1, label %for.body3.lr.ph.3, label %if.then33.2

if.then33.2:                                      ; preds = %for.inc29.2
  %arrayidx36.2 = getelementptr inbounds i8, ptr %h, i64 3504
  %21 = load ptr, ptr %arrayidx36.2, align 8
  tail call void @x264_free(ptr noundef %21) #9
  br label %for.body3.lr.ph.3

for.body3.lr.ph.3:                                ; preds = %for.inc29.2, %for.body20.lr.ph.2, %if.then33.2
  %arrayidx.3 = getelementptr inbounds i8, ptr %h, i64 3464
  %22 = load ptr, ptr %arrayidx.3, align 8
  %23 = load ptr, ptr %quant4_mf, align 8
  %cmp7.3 = icmp eq ptr %22, %23
  br i1 %cmp7.3, label %for.body20.lr.ph.3, label %for.inc.3

for.inc.3:                                        ; preds = %for.body3.lr.ph.3
  %arrayidx6.3.1 = getelementptr inbounds i8, ptr %h, i64 3448
  %24 = load ptr, ptr %arrayidx6.3.1, align 8
  %cmp7.3.1 = icmp eq ptr %22, %24
  br i1 %cmp7.3.1, label %for.body20.lr.ph.3, label %for.inc.3.1

for.inc.3.1:                                      ; preds = %for.inc.3
  %arrayidx6.3.2 = getelementptr inbounds i8, ptr %h, i64 3456
  %25 = load ptr, ptr %arrayidx6.3.2, align 8
  %cmp7.3.2 = icmp eq ptr %22, %25
  br i1 %cmp7.3.2, label %for.body20.lr.ph.3, label %if.then9.3

if.then9.3:                                       ; preds = %for.inc.3.1
  %arrayidx12.3 = getelementptr inbounds i8, ptr %h, i64 3464
  %26 = load ptr, ptr %arrayidx12.3, align 8
  tail call void @x264_free(ptr noundef %26) #9
  %arrayidx14.3 = getelementptr inbounds i8, ptr %h, i64 3368
  %27 = load ptr, ptr %arrayidx14.3, align 8
  tail call void @x264_free(ptr noundef %27) #9
  %arrayidx16.3 = getelementptr inbounds i8, ptr %h, i64 3416
  %28 = load ptr, ptr %arrayidx16.3, align 8
  tail call void @x264_free(ptr noundef %28) #9
  br label %for.body20.lr.ph.3

for.body20.lr.ph.3:                               ; preds = %for.inc.3.1, %for.inc.3, %for.body3.lr.ph.3, %if.then9.3
  %arrayidx22.3 = getelementptr inbounds i8, ptr %h, i64 3512
  %29 = load ptr, ptr %arrayidx22.3, align 8
  %30 = load ptr, ptr %quant4_bias, align 8
  %cmp26.3 = icmp eq ptr %29, %30
  br i1 %cmp26.3, label %for.body49.peel.1, label %for.inc29.3

for.inc29.3:                                      ; preds = %for.body20.lr.ph.3
  %arrayidx25.3.1 = getelementptr inbounds i8, ptr %h, i64 3496
  %31 = load ptr, ptr %arrayidx25.3.1, align 8
  %cmp26.3.1 = icmp eq ptr %29, %31
  br i1 %cmp26.3.1, label %for.body49.peel.1, label %for.inc29.3.1

for.inc29.3.1:                                    ; preds = %for.inc29.3
  %arrayidx25.3.2 = getelementptr inbounds i8, ptr %h, i64 3504
  %32 = load ptr, ptr %arrayidx25.3.2, align 8
  %cmp26.3.2 = icmp eq ptr %29, %32
  br i1 %cmp26.3.2, label %for.body49.peel.1, label %if.then33.3

if.then33.3:                                      ; preds = %for.inc29.3.1
  %arrayidx36.3 = getelementptr inbounds i8, ptr %h, i64 3512
  %33 = load ptr, ptr %arrayidx36.3, align 8
  tail call void @x264_free(ptr noundef %33) #9
  br label %for.body49.peel.1

for.body49.peel.1:                                ; preds = %for.inc29.3.1, %for.inc29.3, %for.body20.lr.ph.3, %if.then33.3
  %quant8_mf = getelementptr inbounds i8, ptr %h, i64 3472
  %arrayidx51 = getelementptr inbounds i8, ptr %h, i64 3480
  %dequant8_mf = getelementptr inbounds i8, ptr %h, i64 3376
  %unquant8_mf = getelementptr inbounds i8, ptr %h, i64 3424
  %quant8_bias = getelementptr inbounds i8, ptr %h, i64 3520
  %arrayidx75 = getelementptr inbounds i8, ptr %h, i64 3528
  %34 = load ptr, ptr %quant8_mf, align 8
  tail call void @x264_free(ptr noundef %34) #9
  %35 = load ptr, ptr %dequant8_mf, align 8
  tail call void @x264_free(ptr noundef %35) #9
  %36 = load ptr, ptr %unquant8_mf, align 8
  tail call void @x264_free(ptr noundef %36) #9
  %37 = load ptr, ptr %quant8_bias, align 8
  tail call void @x264_free(ptr noundef %37) #9
  %38 = load ptr, ptr %arrayidx51, align 8
  %39 = load ptr, ptr %quant8_mf, align 8
  %cmp55.peel.1.not = icmp eq ptr %38, %39
  br i1 %cmp55.peel.1.not, label %for.body73.peel.1, label %if.then62.1

if.then62.1:                                      ; preds = %for.body49.peel.1
  %arrayidx65.1 = getelementptr inbounds i8, ptr %h, i64 3480
  %40 = load ptr, ptr %arrayidx65.1, align 8
  tail call void @x264_free(ptr noundef %40) #9
  %arrayidx67.1 = getelementptr inbounds i8, ptr %h, i64 3384
  %41 = load ptr, ptr %arrayidx67.1, align 8
  tail call void @x264_free(ptr noundef %41) #9
  %arrayidx69.1 = getelementptr inbounds i8, ptr %h, i64 3432
  %42 = load ptr, ptr %arrayidx69.1, align 8
  tail call void @x264_free(ptr noundef %42) #9
  br label %for.body73.peel.1

for.body73.peel.1:                                ; preds = %for.body49.peel.1, %if.then62.1
  %43 = load ptr, ptr %arrayidx75, align 8
  %44 = load ptr, ptr %quant8_bias, align 8
  %cmp79.peel.1.not = icmp eq ptr %43, %44
  br i1 %cmp79.peel.1.not, label %if.end90.1, label %if.then86.1

if.then86.1:                                      ; preds = %for.body73.peel.1
  %arrayidx89.1 = getelementptr inbounds i8, ptr %h, i64 3528
  %45 = load ptr, ptr %arrayidx89.1, align 8
  tail call void @x264_free(ptr noundef %45) #9
  br label %if.end90.1

if.end90.1:                                       ; preds = %if.then86.1, %for.body73.peel.1
  ret void
}

declare void @x264_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_cqm_parse_file(ptr noundef %h, ptr noundef %filename) local_unnamed_addr #0 {
entry:
  %i_cqm_preset = getelementptr inbounds i8, ptr %h, i64 144
  store i32 2, ptr %i_cqm_preset, align 16
  %call = tail call ptr @x264_slurp_file(ptr noundef %filename) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call156 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call, i32 noundef 35) #10
  %cmp.not57 = icmp eq ptr %call156, null
  br i1 %cmp.not57, label %while.end, label %while.body

if.then:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %filename) #9
  br label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call158 = phi ptr [ %call1, %while.body ], [ %call156, %while.cond.preheader ]
  %call2 = tail call i64 @strcspn(ptr noundef nonnull %call158, ptr noundef nonnull @.str.4) #10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %call158, i8 32, i64 %call2, i1 false)
  %call1 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call, i32 noundef 35) #10
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %cqm_4iy = getelementptr inbounds i8, ptr %h, i64 160
  %call4 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.5, ptr noundef nonnull %cqm_4iy, ptr noundef nonnull @x264_cqm_jvt4i, i32 noundef 16)
  %cqm_4ic = getelementptr inbounds i8, ptr %h, i64 176
  %call7 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.6, ptr noundef nonnull %cqm_4ic, ptr noundef nonnull @x264_cqm_jvt4i, i32 noundef 16)
  %or8 = or i32 %call7, %call4
  %cqm_4py = getelementptr inbounds i8, ptr %h, i64 192
  %call11 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %cqm_4py, ptr noundef nonnull @x264_cqm_jvt4p, i32 noundef 16)
  %or12 = or i32 %or8, %call11
  %cqm_4pc = getelementptr inbounds i8, ptr %h, i64 208
  %call15 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.8, ptr noundef nonnull %cqm_4pc, ptr noundef nonnull @x264_cqm_jvt4p, i32 noundef 16)
  %or16 = or i32 %or12, %call15
  %cqm_8iy = getelementptr inbounds i8, ptr %h, i64 224
  %call19 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.9, ptr noundef nonnull %cqm_8iy, ptr noundef nonnull @x264_cqm_jvt8i, i32 noundef 64)
  %or20 = or i32 %or16, %call19
  %cqm_8py = getelementptr inbounds i8, ptr %h, i64 288
  %call23 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.10, ptr noundef nonnull %cqm_8py, ptr noundef nonnull @x264_cqm_jvt8p, i32 noundef 64)
  %or24 = or i32 %or20, %call23
  tail call void @x264_free(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %or24, %while.end ], [ -1, %if.then ]
  ret i32 %retval.0
}

declare ptr @x264_slurp_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef readonly %buf, ptr noundef %name, ptr nocapture noundef writeonly %cqm, ptr nocapture noundef readonly %jvt, i32 noundef %length) unnamed_addr #0 {
entry:
  %coef = alloca i32, align 4
  %call = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %buf, ptr noundef nonnull dereferenceable(1) %name) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = zext nneg i32 %length to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %cqm, i8 16, i64 %conv, i1 false)
  br label %cleanup43

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #10
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %call1
  %0 = load i8, ptr %add.ptr, align 1
  %.off = add i8 %0, -85
  %switch = icmp ult i8 %.off, 2
  %spec.select.idx = zext i1 %switch to i64
  %spec.select = getelementptr inbounds i8, ptr %add.ptr, i64 %spec.select.idx
  %call9 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %spec.select, ptr noundef nonnull dereferenceable(1) @.str.11) #10
  %cmp1076 = icmp sgt i32 %length, 0
  br i1 %cmp1076, label %land.lhs.true.preheader, label %for.end

land.lhs.true.preheader:                          ; preds = %if.end
  %wide.trip.count = zext nneg i32 %length to i64
  %call12.peel = tail call ptr @strpbrk(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.12) #10
  %tobool13.not.peel = icmp eq ptr %call12.peel, null
  br i1 %tobool13.not.peel, label %for.end, label %land.rhs.peel

land.rhs.peel:                                    ; preds = %land.lhs.true.preheader
  %call14.peel = tail call ptr @strpbrk(ptr noundef nonnull %call12.peel, ptr noundef nonnull @.str.13) #10
  %tobool15.not.peel = icmp eq ptr %call14.peel, null
  br i1 %tobool15.not.peel, label %for.end, label %for.body.peel

for.body.peel:                                    ; preds = %land.rhs.peel
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coef) #9
  store i32 -1, ptr %coef, align 4
  %call16.peel = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call14.peel, ptr noundef nonnull @.str.14, ptr noundef nonnull %coef) #9
  %1 = load i32, ptr %coef, align 4
  %cmp20.peel = icmp eq i32 %1, 0
  br i1 %cmp20.peel, label %if.then22, label %if.end24.peel

if.end24.peel:                                    ; preds = %for.body.peel
  %2 = add i32 %1, -256
  %or.cond45.peel = icmp ult i32 %2, -255
  br i1 %or.cond45.peel, label %if.then30, label %for.inc.peel

for.inc.peel:                                     ; preds = %if.end24.peel
  %conv32.peel = trunc nuw i32 %1 to i8
  store i8 %conv32.peel, ptr %cqm, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coef) #9
  %exitcond.peel.not = icmp eq i32 %length, 1
  br i1 %exitcond.peel.not, label %for.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.peel, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.inc.peel ]
  %p.178 = phi ptr [ %call14, %for.inc ], [ %call14.peel, %for.inc.peel ]
  %call12 = call ptr @strpbrk(ptr noundef nonnull %p.178, ptr noundef nonnull @.str.12) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %for.end.loopexit.split.loop.exit, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call14 = call ptr @strpbrk(ptr noundef nonnull %call12, ptr noundef nonnull @.str.13) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %for.end.loopexit.split.loop.exit89, label %if.end24

if.then22:                                        ; preds = %for.body.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cqm, ptr align 1 %jvt, i64 %wide.trip.count, i1 false)
  br label %cleanup.thread

if.end24:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coef) #9
  store i32 -1, ptr %coef, align 4
  %call16 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call14, ptr noundef nonnull @.str.14, ptr noundef nonnull %coef) #9
  %3 = load i32, ptr %coef, align 4
  %4 = add i32 %3, -256
  %or.cond45 = icmp ult i32 %4, -255
  br i1 %or.cond45, label %if.then30, label %for.inc

if.then30:                                        ; preds = %if.end24, %if.end24.peel
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %name) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then22, %if.then30
  %retval.1.ph = phi i32 [ -1, %if.then30 ], [ 0, %if.then22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coef) #9
  br label %cleanup43

for.inc:                                          ; preds = %if.end24
  %conv32 = trunc nuw i32 %3 to i8
  %arrayidx = getelementptr inbounds i8, ptr %cqm, i64 %indvars.iv
  store i8 %conv32, ptr %arrayidx, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coef) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %land.lhs.true, !llvm.loop !8

for.end.loopexit.split.loop.exit:                 ; preds = %land.lhs.true
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end.loopexit.split.loop.exit89:               ; preds = %land.rhs
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.end.loopexit.split.loop.exit, %for.end.loopexit.split.loop.exit89, %land.lhs.true.preheader, %land.rhs.peel, %for.inc.peel, %if.end
  %i.0.lcssa = phi i32 [ 0, %if.end ], [ 0, %land.lhs.true.preheader ], [ 0, %land.rhs.peel ], [ 1, %for.inc.peel ], [ %5, %for.end.loopexit.split.loop.exit ], [ %6, %for.end.loopexit.split.loop.exit89 ], [ %length, %for.inc ]
  %p.2 = phi ptr [ %spec.select, %if.end ], [ null, %land.lhs.true.preheader ], [ null, %land.rhs.peel ], [ %call14.peel, %for.inc.peel ], [ null, %for.end.loopexit.split.loop.exit ], [ null, %for.end.loopexit.split.loop.exit89 ], [ %call14, %for.inc ]
  %tobool33.not = icmp eq ptr %call9, null
  %cmp35 = icmp ule ptr %p.2, %call9
  %or.cond69.not73 = or i1 %tobool33.not, %cmp35
  %cmp38.not = icmp eq i32 %i.0.lcssa, %length
  %or.cond70 = and i1 %cmp38.not, %or.cond69.not73
  br i1 %or.cond70, label %cleanup43, label %if.then40

if.then40:                                        ; preds = %for.end
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %name) #9
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup.thread, %if.then40, %for.end, %if.then
  %retval.3 = phi i32 [ 0, %if.then ], [ -1, %if.then40 ], [ 0, %for.end ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.peeled.count", i32 1}
