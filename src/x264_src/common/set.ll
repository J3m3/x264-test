; ModuleID = 'x264_src/common/set.c'
source_filename = "x264_src/common/set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dequant4_scale = internal unnamed_addr constant [6 x [3 x i8]] [[3 x i8] c"\0A\0D\10", [3 x i8] c"\0B\0E\12", [3 x i8] c"\0D\10\14", [3 x i8] c"\0E\12\17", [3 x i8] c"\10\14\19", [3 x i8] c"\12\17\1D"], align 16, !dbg !0
@quant4_scale = internal unnamed_addr constant [6 x [3 x i16]] [[3 x i16] [i16 13107, i16 8066, i16 5243], [3 x i16] [i16 11916, i16 7490, i16 4660], [3 x i16] [i16 10082, i16 6554, i16 4194], [3 x i16] [i16 9362, i16 5825, i16 3647], [3 x i16] [i16 8192, i16 5243, i16 3355], [3 x i16] [i16 7282, i16 4559, i16 2893]], align 16, !dbg !60
@quant8_scan = internal unnamed_addr constant [16 x i8] c"\00\03\04\03\03\01\05\01\04\05\02\05\03\01\05\01", align 16, !dbg !72
@dequant8_scale = internal unnamed_addr constant [6 x [6 x i8]] [[6 x i8] c"\14\12 \13\19\18", [6 x i8] c"\16\13#\15\1C\1A", [6 x i8] c"\1A\17*\18!\1F", [6 x i8] c"\1C\19-\1A#!", [6 x i8] c" \1C3\1E(&", [6 x i8] c"$ :\22.+"], align 16, !dbg !79
@quant8_scale = internal unnamed_addr constant [6 x [6 x i16]] [[6 x i16] [i16 13107, i16 11428, i16 20972, i16 12222, i16 16777, i16 15481], [6 x i16] [i16 11916, i16 10826, i16 19174, i16 11058, i16 14980, i16 14290], [6 x i16] [i16 10082, i16 8943, i16 15978, i16 9675, i16 12710, i16 11985], [6 x i16] [i16 9362, i16 8228, i16 14913, i16 8931, i16 11984, i16 11259], [6 x i16] [i16 8192, i16 7346, i16 13159, i16 7740, i16 10486, i16 9777], [6 x i16] [i16 7282, i16 6428, i16 11570, i16 6830, i16 9118, i16 8640]], align 16, !dbg !83
@.str = private unnamed_addr constant [64 x i8] c"Quantization overflow.  Your CQM is incompatible with QP < %d,\0A\00", align 1, !dbg !16
@.str.1 = private unnamed_addr constant [26 x i8] c"but min QP is set to %d.\0A\00", align 1, !dbg !22
@.str.2 = private unnamed_addr constant [40 x i8] c"but min chroma QP is implied to be %d.\0A\00", align 1, !dbg !27
@.str.3 = private unnamed_addr constant [22 x i8] c"can't open file '%s'\0A\00", align 1, !dbg !32
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !37
@.str.5 = private unnamed_addr constant [14 x i8] c"INTRA4X4_LUMA\00", align 1, !dbg !42
@x264_cqm_jvt4i = internal constant [16 x i8] c"\06\0D\14\1C\0D\14\1C \14\1C %\1C %*", align 16, !dbg !115
@.str.6 = private unnamed_addr constant [16 x i8] c"INTRA4X4_CHROMA\00", align 1, !dbg !47
@.str.7 = private unnamed_addr constant [14 x i8] c"INTER4X4_LUMA\00", align 1, !dbg !52
@x264_cqm_jvt4p = internal constant [16 x i8] c"\0A\0E\14\18\0E\14\18\1B\14\18\1B\1E\18\1B\1E\22", align 16, !dbg !117
@.str.8 = private unnamed_addr constant [16 x i8] c"INTER4X4_CHROMA\00", align 1, !dbg !54
@.str.9 = private unnamed_addr constant [14 x i8] c"INTRA8X8_LUMA\00", align 1, !dbg !56
@x264_cqm_jvt8i = internal constant [64 x i8] c"\06\0A\0D\10\12\17\19\1B\0A\0B\10\12\17\19\1B\1D\0D\10\12\17\19\1B\1D\1F\10\12\17\19\1B\1D\1F!\12\17\19\1B\1D\1F!$\17\19\1B\1D\1F!$&\19\1B\1D\1F!$&(\1B\1D\1F!$&(*", align 16, !dbg !119
@.str.10 = private unnamed_addr constant [14 x i8] c"INTER8X8_LUMA\00", align 1, !dbg !58
@x264_cqm_jvt8p = internal constant [64 x i8] c"\09\0D\0F\11\13\15\16\18\0D\0D\11\13\15\16\18\19\0F\11\13\15\16\18\19\1B\11\13\15\16\18\19\1B\1C\13\15\16\18\19\1B\1C\1E\15\16\18\19\1B\1C\1E \16\18\19\1B\1C\1E !\18\19\1B\1C\1E !#", align 16, !dbg !122
@.str.11 = private unnamed_addr constant [4 x i8] c"INT\00", align 1, !dbg !86
@.str.12 = private unnamed_addr constant [5 x i8] c" \09\0A,\00", align 1, !dbg !91
@.str.13 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1, !dbg !96
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !101
@.str.15 = private unnamed_addr constant [30 x i8] c"bad coefficient in list '%s'\0A\00", align 1, !dbg !105
@.str.16 = private unnamed_addr constant [38 x i8] c"not enough coefficients in list '%s'\0A\00", align 1, !dbg !110

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_cqm_init(ptr noundef %h) local_unnamed_addr #0 !dbg !133 {
entry:
  %def_quant4 = alloca [6 x [16 x i32]], align 16, !DIAssignID !1502
    #dbg_assign(i1 undef, !1426, !DIExpression(), !1502, ptr %def_quant4, !DIExpression(), !1503)
  %def_quant8 = alloca [6 x [64 x i32]], align 16, !DIAssignID !1504
    #dbg_assign(i1 undef, !1429, !DIExpression(), !1504, ptr %def_quant8, !DIExpression(), !1503)
  %def_dequant4 = alloca [6 x [16 x i32]], align 16, !DIAssignID !1505
    #dbg_assign(i1 undef, !1432, !DIExpression(), !1505, ptr %def_dequant4, !DIExpression(), !1503)
  %def_dequant8 = alloca [6 x [64 x i32]], align 16, !DIAssignID !1506
    #dbg_assign(i1 undef, !1433, !DIExpression(), !1506, ptr %def_dequant8, !DIExpression(), !1503)
  %quant4_mf = alloca [4 x [6 x [16 x i32]]], align 16, !DIAssignID !1507
    #dbg_assign(i1 undef, !1434, !DIExpression(), !1507, ptr %quant4_mf, !DIExpression(), !1503)
  %quant8_mf = alloca [2 x [6 x [64 x i32]]], align 16, !DIAssignID !1508
    #dbg_assign(i1 undef, !1437, !DIExpression(), !1508, ptr %quant8_mf, !DIExpression(), !1503)
  %deadzone = alloca [4 x i32], align 16, !DIAssignID !1509
    #dbg_assign(i1 undef, !1440, !DIExpression(), !1509, ptr %deadzone, !DIExpression(), !1503)
    #dbg_value(ptr %h, !1425, !DIExpression(), !1503)
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %def_quant4) #9, !dbg !1510
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %def_quant8) #9, !dbg !1511
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %def_dequant4) #9, !dbg !1512
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %def_dequant8) #9, !dbg !1513
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %quant4_mf) #9, !dbg !1514
  call void @llvm.lifetime.start.p0(i64 3072, ptr nonnull %quant8_mf) #9, !dbg !1515
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %deadzone) #9, !dbg !1516
  %i_luma_deadzone = getelementptr inbounds i8, ptr %h, i64 468, !dbg !1517
  %arrayidx = getelementptr inbounds i8, ptr %h, i64 472, !dbg !1518
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1518
  %sub = sub nsw i32 32, %0, !dbg !1519
  store i32 %sub, ptr %deadzone, align 16, !dbg !1520, !DIAssignID !1521
    #dbg_assign(i32 %sub, !1440, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1521, ptr %deadzone, !DIExpression(), !1503)
  %arrayinit.element = getelementptr inbounds i8, ptr %deadzone, i64 4, !dbg !1520
  %1 = load i32, ptr %i_luma_deadzone, align 4, !dbg !1522
  %sub5 = sub nsw i32 32, %1, !dbg !1523
  store i32 %sub5, ptr %arrayinit.element, align 4, !dbg !1520, !DIAssignID !1524
    #dbg_assign(i32 %sub5, !1440, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1524, ptr %arrayinit.element, !DIExpression(), !1503)
  %arrayinit.element6 = getelementptr inbounds i8, ptr %deadzone, i64 8, !dbg !1520
  store i32 21, ptr %arrayinit.element6, align 8, !dbg !1520, !DIAssignID !1525
    #dbg_assign(i32 21, !1440, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !1525, ptr %arrayinit.element6, !DIExpression(), !1503)
  %arrayinit.element7 = getelementptr inbounds i8, ptr %deadzone, i64 12, !dbg !1520
  store i32 11, ptr %arrayinit.element7, align 4, !dbg !1520, !DIAssignID !1526
    #dbg_assign(i32 11, !1440, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !1526, ptr %arrayinit.element7, !DIExpression(), !1503)
    #dbg_value(i32 -1, !1441, !DIExpression(), !1503)
    #dbg_value(i32 -1, !1442, !DIExpression(), !1503)
    #dbg_value(i32 0, !1443, !DIExpression(), !1527)
  %pps = getelementptr inbounds i8, ptr %h, i64 3328
  %quant4_mf41 = getelementptr inbounds i8, ptr %h, i64 3440
  %dequant4_mf56 = getelementptr inbounds i8, ptr %h, i64 3344
  %unquant4_mf73 = getelementptr inbounds i8, ptr %h, i64 3392
  %quant4_bias129 = getelementptr inbounds i8, ptr %h, i64 3488
    #dbg_value(i64 0, !1443, !DIExpression(), !1527)
    #dbg_value(i32 0, !1449, !DIExpression(), !1528)
  %call40 = tail call ptr @x264_malloc(i32 noundef 1664) #9, !dbg !1529
  store ptr %call40, ptr %quant4_mf41, align 8, !dbg !1529
  %tobool47.not = icmp eq ptr %call40, null, !dbg !1533
  br i1 %tobool47.not, label %fail, label %do.body50, !dbg !1529

do.body50:                                        ; preds = %entry
  %call55 = tail call ptr @x264_malloc(i32 noundef 384) #9, !dbg !1535
  store ptr %call55, ptr %dequant4_mf56, align 8, !dbg !1535
  %tobool62.not = icmp eq ptr %call55, null, !dbg !1537
  br i1 %tobool62.not, label %fail, label %do.body67, !dbg !1535

do.body67:                                        ; preds = %do.body50
  %call72 = tail call ptr @x264_malloc(i32 noundef 3328) #9, !dbg !1539
  store ptr %call72, ptr %unquant4_mf73, align 8, !dbg !1539
  %tobool79.not = icmp eq ptr %call72, null, !dbg !1541
  br i1 %tobool79.not, label %fail, label %do.body123, !dbg !1539

do.body123:                                       ; preds = %do.body67
    #dbg_value(i32 0, !1449, !DIExpression(), !1528)
  %call128 = tail call ptr @x264_malloc(i32 noundef 1664) #9, !dbg !1543
  store ptr %call128, ptr %quant4_bias129, align 8, !dbg !1543
  %tobool135.not = icmp eq ptr %call128, null, !dbg !1546
  br i1 %tobool135.not, label %fail, label %for.body10.lr.ph.1, !dbg !1543

for.body10.lr.ph.1:                               ; preds = %do.body123
    #dbg_value(i64 1, !1443, !DIExpression(), !1527)
    #dbg_value(i32 0, !1449, !DIExpression(), !1528)
  %2 = load ptr, ptr %pps, align 16
  %scaling_list.1 = getelementptr inbounds i8, ptr %2, i64 72
  %arrayidx11.1 = getelementptr inbounds i8, ptr %2, i64 80
  %3 = load ptr, ptr %arrayidx11.1, align 8
  br label %for.body10.1, !dbg !1548

for.body10.1:                                     ; preds = %for.cond8.1, %for.body10.lr.ph.1
  %indvars.iv.1 = phi i64 [ 0, %for.body10.lr.ph.1 ], [ %indvars.iv.next.1, %for.cond8.1 ]
    #dbg_value(i64 %indvars.iv.1, !1449, !DIExpression(), !1528)
  %arrayidx16.1 = getelementptr inbounds [6 x ptr], ptr %scaling_list.1, i64 0, i64 %indvars.iv.1, !dbg !1550
  %4 = load ptr, ptr %arrayidx16.1, align 8, !dbg !1550
  %bcmp.1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %3, ptr noundef nonnull dereferenceable(16) %4, i64 16), !dbg !1550
  %tobool.not.1 = icmp eq i32 %bcmp.1, 0, !dbg !1550
    #dbg_value(i64 %indvars.iv.1, !1449, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1528)
  br i1 %tobool.not.1, label %if.then19.1, label %for.cond8.1, !dbg !1553

for.cond8.1:                                      ; preds = %for.body10.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1, !dbg !1553
    #dbg_value(i32 poison, !1449, !DIExpression(), !1528)
  %exitcond.not.1 = icmp eq i64 %indvars.iv.1, 0, !dbg !1553
  br i1 %exitcond.not.1, label %do.body.1, label %for.body10.1, !dbg !1548, !llvm.loop !1554

if.then19.1:                                      ; preds = %for.body10.1
  %arrayidx22.1 = getelementptr inbounds [4 x ptr], ptr %quant4_mf41, i64 0, i64 %indvars.iv.1, !dbg !1555
  %5 = load ptr, ptr %arrayidx22.1, align 8, !dbg !1555
  %arrayidx25.1 = getelementptr inbounds i8, ptr %h, i64 3448, !dbg !1555
  store ptr %5, ptr %arrayidx25.1, align 8, !dbg !1555
  %arrayidx27.1 = getelementptr inbounds [4 x ptr], ptr %dequant4_mf56, i64 0, i64 %indvars.iv.1, !dbg !1555
  %6 = load ptr, ptr %arrayidx27.1, align 8, !dbg !1555
  %arrayidx30.1 = getelementptr inbounds i8, ptr %h, i64 3352, !dbg !1555
  store ptr %6, ptr %arrayidx30.1, align 8, !dbg !1555
  %arrayidx32.1 = getelementptr inbounds [4 x ptr], ptr %unquant4_mf73, i64 0, i64 %indvars.iv.1, !dbg !1555
  %7 = load ptr, ptr %arrayidx32.1, align 8, !dbg !1555
  %arrayidx35.1 = getelementptr inbounds i8, ptr %h, i64 3400, !dbg !1555
  store ptr %7, ptr %arrayidx35.1, align 8, !dbg !1555
  br label %for.body88.lr.ph.1, !dbg !1555

do.body.1:                                        ; preds = %for.cond8.1
  %call40.1 = tail call ptr @x264_malloc(i32 noundef 1664) #9, !dbg !1529
  %arrayidx43.1 = getelementptr inbounds i8, ptr %h, i64 3448, !dbg !1529
  store ptr %call40.1, ptr %arrayidx43.1, align 8, !dbg !1529
  %tobool47.not.1 = icmp eq ptr %call40.1, null, !dbg !1533
  br i1 %tobool47.not.1, label %fail, label %do.body50.1, !dbg !1529

do.body50.1:                                      ; preds = %do.body.1
  %call55.1 = tail call ptr @x264_malloc(i32 noundef 384) #9, !dbg !1535
  %arrayidx58.1 = getelementptr inbounds i8, ptr %h, i64 3352, !dbg !1535
  store ptr %call55.1, ptr %arrayidx58.1, align 8, !dbg !1535
  %tobool62.not.1 = icmp eq ptr %call55.1, null, !dbg !1537
  br i1 %tobool62.not.1, label %fail, label %do.body67.1, !dbg !1535

do.body67.1:                                      ; preds = %do.body50.1
  %call72.1 = tail call ptr @x264_malloc(i32 noundef 3328) #9, !dbg !1539
  %arrayidx75.1 = getelementptr inbounds i8, ptr %h, i64 3400, !dbg !1539
  store ptr %call72.1, ptr %arrayidx75.1, align 8, !dbg !1539
  %tobool79.not.1 = icmp eq ptr %call72.1, null, !dbg !1541
  br i1 %tobool79.not.1, label %fail, label %for.body88.lr.ph.1, !dbg !1539

for.body88.lr.ph.1:                               ; preds = %if.then19.1, %do.body67.1
    #dbg_value(i32 0, !1449, !DIExpression(), !1528)
  %arrayidx92.1 = getelementptr inbounds i8, ptr %deadzone, i64 4
  %8 = load i32, ptr %arrayidx92.1, align 4
  br label %for.body88.1, !dbg !1557

for.body88.1:                                     ; preds = %for.inc111.1, %for.body88.lr.ph.1
  %indvars.iv1196.1 = phi i64 [ 0, %for.body88.lr.ph.1 ], [ %indvars.iv.next1197.1, %for.inc111.1 ]
    #dbg_value(i64 %indvars.iv1196.1, !1449, !DIExpression(), !1528)
  %arrayidx90.1 = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1196.1, !dbg !1559
  %9 = load i32, ptr %arrayidx90.1, align 4, !dbg !1559
  %cmp93.1 = icmp eq i32 %9, %8, !dbg !1559
  br i1 %cmp93.1, label %land.lhs.true.1, label %for.inc111.1, !dbg !1559

land.lhs.true.1:                                  ; preds = %for.body88.1
  %10 = load ptr, ptr %pps, align 16, !dbg !1559
  %scaling_list96.1 = getelementptr inbounds i8, ptr %10, i64 72, !dbg !1559
  %arrayidx99.1 = getelementptr inbounds i8, ptr %10, i64 80, !dbg !1559
  %11 = load ptr, ptr %arrayidx99.1, align 8, !dbg !1559
  %arrayidx104.1 = getelementptr inbounds [6 x ptr], ptr %scaling_list96.1, i64 0, i64 %indvars.iv1196.1, !dbg !1559
  %12 = load ptr, ptr %arrayidx104.1, align 8, !dbg !1559
  %bcmp1139.1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %11, ptr noundef nonnull dereferenceable(16) %12, i64 16), !dbg !1559
  %tobool108.not.1 = icmp eq i32 %bcmp1139.1, 0, !dbg !1559
  br i1 %tobool108.not.1, label %if.then116.1, label %for.inc111.1, !dbg !1562

for.inc111.1:                                     ; preds = %land.lhs.true.1, %for.body88.1
  %indvars.iv.next1197.1 = add nuw nsw i64 %indvars.iv1196.1, 1, !dbg !1562
    #dbg_value(i64 %indvars.iv.next1197.1, !1449, !DIExpression(), !1528)
  %exitcond1200.not.1 = icmp eq i64 %indvars.iv1196.1, 0, !dbg !1562
  br i1 %exitcond1200.not.1, label %do.body123.1, label %for.body88.1, !dbg !1557, !llvm.loop !1563

if.then116.1:                                     ; preds = %land.lhs.true.1
  %arrayidx118.1 = getelementptr inbounds [4 x ptr], ptr %quant4_bias129, i64 0, i64 %indvars.iv1196.1, !dbg !1564
  %13 = load ptr, ptr %arrayidx118.1, align 8, !dbg !1564
  %arrayidx121.1 = getelementptr inbounds i8, ptr %h, i64 3496, !dbg !1564
  store ptr %13, ptr %arrayidx121.1, align 8, !dbg !1564
  br label %for.body10.lr.ph.2, !dbg !1564

do.body123.1:                                     ; preds = %for.inc111.1
  %call128.1 = tail call ptr @x264_malloc(i32 noundef 1664) #9, !dbg !1543
  %arrayidx131.1 = getelementptr inbounds i8, ptr %h, i64 3496, !dbg !1543
  store ptr %call128.1, ptr %arrayidx131.1, align 8, !dbg !1543
  %tobool135.not.1 = icmp eq ptr %call128.1, null, !dbg !1546
  br i1 %tobool135.not.1, label %fail, label %for.body10.lr.ph.2, !dbg !1543

for.body10.lr.ph.2:                               ; preds = %if.then116.1, %do.body123.1
    #dbg_value(i64 2, !1443, !DIExpression(), !1527)
    #dbg_value(i32 0, !1449, !DIExpression(), !1528)
  %14 = load ptr, ptr %pps, align 16
  %scaling_list.2 = getelementptr inbounds i8, ptr %14, i64 72
  %arrayidx11.2 = getelementptr inbounds i8, ptr %14, i64 88
  %15 = load ptr, ptr %arrayidx11.2, align 8
  br label %for.body10.2, !dbg !1548

for.body10.2:                                     ; preds = %for.cond8.2, %for.body10.lr.ph.2
  %indvars.iv.2 = phi i64 [ 0, %for.body10.lr.ph.2 ], [ %indvars.iv.next.2, %for.cond8.2 ]
    #dbg_value(i64 %indvars.iv.2, !1449, !DIExpression(), !1528)
  %arrayidx16.2 = getelementptr inbounds [6 x ptr], ptr %scaling_list.2, i64 0, i64 %indvars.iv.2, !dbg !1550
  %16 = load ptr, ptr %arrayidx16.2, align 8, !dbg !1550
  %bcmp.2 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %15, ptr noundef nonnull dereferenceable(16) %16, i64 16), !dbg !1550
  %tobool.not.2 = icmp eq i32 %bcmp.2, 0, !dbg !1550
    #dbg_value(i64 %indvars.iv.2, !1449, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1528)
  br i1 %tobool.not.2, label %if.then19.2, label %for.cond8.2, !dbg !1553

for.cond8.2:                                      ; preds = %for.body10.2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1, !dbg !1553
    #dbg_value(i32 poison, !1449, !DIExpression(), !1528)
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 2, !dbg !1553
  br i1 %exitcond.not.2, label %do.body.2, label %for.body10.2, !dbg !1548, !llvm.loop !1554

if.then19.2:                                      ; preds = %for.body10.2
  %arrayidx22.2 = getelementptr inbounds [4 x ptr], ptr %quant4_mf41, i64 0, i64 %indvars.iv.2, !dbg !1555
  %17 = load ptr, ptr %arrayidx22.2, align 8, !dbg !1555
  %arrayidx25.2 = getelementptr inbounds i8, ptr %h, i64 3456, !dbg !1555
  store ptr %17, ptr %arrayidx25.2, align 8, !dbg !1555
  %arrayidx27.2 = getelementptr inbounds [4 x ptr], ptr %dequant4_mf56, i64 0, i64 %indvars.iv.2, !dbg !1555
  %18 = load ptr, ptr %arrayidx27.2, align 8, !dbg !1555
  %arrayidx30.2 = getelementptr inbounds i8, ptr %h, i64 3360, !dbg !1555
  store ptr %18, ptr %arrayidx30.2, align 8, !dbg !1555
  %arrayidx32.2 = getelementptr inbounds [4 x ptr], ptr %unquant4_mf73, i64 0, i64 %indvars.iv.2, !dbg !1555
  %19 = load ptr, ptr %arrayidx32.2, align 8, !dbg !1555
  %arrayidx35.2 = getelementptr inbounds i8, ptr %h, i64 3408, !dbg !1555
  store ptr %19, ptr %arrayidx35.2, align 8, !dbg !1555
  br label %for.body88.lr.ph.2, !dbg !1555

do.body.2:                                        ; preds = %for.cond8.2
  %call40.2 = tail call ptr @x264_malloc(i32 noundef 1664) #9, !dbg !1529
  %arrayidx43.2 = getelementptr inbounds i8, ptr %h, i64 3456, !dbg !1529
  store ptr %call40.2, ptr %arrayidx43.2, align 8, !dbg !1529
  %tobool47.not.2 = icmp eq ptr %call40.2, null, !dbg !1533
  br i1 %tobool47.not.2, label %fail, label %do.body50.2, !dbg !1529

do.body50.2:                                      ; preds = %do.body.2
  %call55.2 = tail call ptr @x264_malloc(i32 noundef 384) #9, !dbg !1535
  %arrayidx58.2 = getelementptr inbounds i8, ptr %h, i64 3360, !dbg !1535
  store ptr %call55.2, ptr %arrayidx58.2, align 8, !dbg !1535
  %tobool62.not.2 = icmp eq ptr %call55.2, null, !dbg !1537
  br i1 %tobool62.not.2, label %fail, label %do.body67.2, !dbg !1535

do.body67.2:                                      ; preds = %do.body50.2
  %call72.2 = tail call ptr @x264_malloc(i32 noundef 3328) #9, !dbg !1539
  %arrayidx75.2 = getelementptr inbounds i8, ptr %h, i64 3408, !dbg !1539
  store ptr %call72.2, ptr %arrayidx75.2, align 8, !dbg !1539
  %tobool79.not.2 = icmp eq ptr %call72.2, null, !dbg !1541
  br i1 %tobool79.not.2, label %fail, label %for.body88.lr.ph.2, !dbg !1539

for.body88.lr.ph.2:                               ; preds = %if.then19.2, %do.body67.2
    #dbg_value(i32 0, !1449, !DIExpression(), !1528)
  %arrayidx92.2 = getelementptr inbounds i8, ptr %deadzone, i64 8
  %20 = load i32, ptr %arrayidx92.2, align 8
  br label %for.body88.2, !dbg !1557

for.body88.2:                                     ; preds = %for.inc111.2, %for.body88.lr.ph.2
  %indvars.iv1196.2 = phi i64 [ 0, %for.body88.lr.ph.2 ], [ %indvars.iv.next1197.2, %for.inc111.2 ]
    #dbg_value(i64 %indvars.iv1196.2, !1449, !DIExpression(), !1528)
  %arrayidx90.2 = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1196.2, !dbg !1559
  %21 = load i32, ptr %arrayidx90.2, align 4, !dbg !1559
  %cmp93.2 = icmp eq i32 %21, %20, !dbg !1559
  br i1 %cmp93.2, label %land.lhs.true.2, label %for.inc111.2, !dbg !1559

land.lhs.true.2:                                  ; preds = %for.body88.2
  %22 = load ptr, ptr %pps, align 16, !dbg !1559
  %scaling_list96.2 = getelementptr inbounds i8, ptr %22, i64 72, !dbg !1559
  %arrayidx99.2 = getelementptr inbounds i8, ptr %22, i64 88, !dbg !1559
  %23 = load ptr, ptr %arrayidx99.2, align 8, !dbg !1559
  %arrayidx104.2 = getelementptr inbounds [6 x ptr], ptr %scaling_list96.2, i64 0, i64 %indvars.iv1196.2, !dbg !1559
  %24 = load ptr, ptr %arrayidx104.2, align 8, !dbg !1559
  %bcmp1139.2 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %23, ptr noundef nonnull dereferenceable(16) %24, i64 16), !dbg !1559
  %tobool108.not.2 = icmp eq i32 %bcmp1139.2, 0, !dbg !1559
  br i1 %tobool108.not.2, label %if.then116.2, label %for.inc111.2, !dbg !1562

for.inc111.2:                                     ; preds = %land.lhs.true.2, %for.body88.2
  %indvars.iv.next1197.2 = add nuw nsw i64 %indvars.iv1196.2, 1, !dbg !1562
    #dbg_value(i64 %indvars.iv.next1197.2, !1449, !DIExpression(), !1528)
  %exitcond1200.not.2 = icmp eq i64 %indvars.iv.next1197.2, 2, !dbg !1562
  br i1 %exitcond1200.not.2, label %do.body123.2, label %for.body88.2, !dbg !1557, !llvm.loop !1563

if.then116.2:                                     ; preds = %land.lhs.true.2
  %arrayidx118.2 = getelementptr inbounds [4 x ptr], ptr %quant4_bias129, i64 0, i64 %indvars.iv1196.2, !dbg !1564
  %25 = load ptr, ptr %arrayidx118.2, align 8, !dbg !1564
  %arrayidx121.2 = getelementptr inbounds i8, ptr %h, i64 3504, !dbg !1564
  store ptr %25, ptr %arrayidx121.2, align 8, !dbg !1564
  br label %for.body10.lr.ph.3, !dbg !1564

do.body123.2:                                     ; preds = %for.inc111.2
  %call128.2 = tail call ptr @x264_malloc(i32 noundef 1664) #9, !dbg !1543
  %arrayidx131.2 = getelementptr inbounds i8, ptr %h, i64 3504, !dbg !1543
  store ptr %call128.2, ptr %arrayidx131.2, align 8, !dbg !1543
  %tobool135.not.2 = icmp eq ptr %call128.2, null, !dbg !1546
  br i1 %tobool135.not.2, label %fail, label %for.body10.lr.ph.3, !dbg !1543

for.body10.lr.ph.3:                               ; preds = %if.then116.2, %do.body123.2
    #dbg_value(i64 3, !1443, !DIExpression(), !1527)
    #dbg_value(i32 0, !1449, !DIExpression(), !1528)
  %26 = load ptr, ptr %pps, align 16
  %scaling_list.3 = getelementptr inbounds i8, ptr %26, i64 72
  %arrayidx11.3 = getelementptr inbounds i8, ptr %26, i64 96
  %27 = load ptr, ptr %arrayidx11.3, align 8
  br label %for.body10.3, !dbg !1548

for.body10.3:                                     ; preds = %for.cond8.3, %for.body10.lr.ph.3
  %indvars.iv.3 = phi i64 [ 0, %for.body10.lr.ph.3 ], [ %indvars.iv.next.3, %for.cond8.3 ]
    #dbg_value(i64 %indvars.iv.3, !1449, !DIExpression(), !1528)
  %arrayidx16.3 = getelementptr inbounds [6 x ptr], ptr %scaling_list.3, i64 0, i64 %indvars.iv.3, !dbg !1550
  %28 = load ptr, ptr %arrayidx16.3, align 8, !dbg !1550
  %bcmp.3 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %27, ptr noundef nonnull dereferenceable(16) %28, i64 16), !dbg !1550
  %tobool.not.3 = icmp eq i32 %bcmp.3, 0, !dbg !1550
    #dbg_value(i64 %indvars.iv.3, !1449, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1528)
  br i1 %tobool.not.3, label %if.then19.3, label %for.cond8.3, !dbg !1553

for.cond8.3:                                      ; preds = %for.body10.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1, !dbg !1553
    #dbg_value(i32 poison, !1449, !DIExpression(), !1528)
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 3, !dbg !1553
  br i1 %exitcond.not.3, label %do.body.3, label %for.body10.3, !dbg !1548, !llvm.loop !1554

if.then19.3:                                      ; preds = %for.body10.3
  %arrayidx22.3 = getelementptr inbounds [4 x ptr], ptr %quant4_mf41, i64 0, i64 %indvars.iv.3, !dbg !1555
  %29 = load ptr, ptr %arrayidx22.3, align 8, !dbg !1555
  %arrayidx25.3 = getelementptr inbounds i8, ptr %h, i64 3464, !dbg !1555
  store ptr %29, ptr %arrayidx25.3, align 8, !dbg !1555
  %arrayidx27.3 = getelementptr inbounds [4 x ptr], ptr %dequant4_mf56, i64 0, i64 %indvars.iv.3, !dbg !1555
  %30 = load ptr, ptr %arrayidx27.3, align 8, !dbg !1555
  %arrayidx30.3 = getelementptr inbounds i8, ptr %h, i64 3368, !dbg !1555
  store ptr %30, ptr %arrayidx30.3, align 8, !dbg !1555
  %arrayidx32.3 = getelementptr inbounds [4 x ptr], ptr %unquant4_mf73, i64 0, i64 %indvars.iv.3, !dbg !1555
  %31 = load ptr, ptr %arrayidx32.3, align 8, !dbg !1555
  %arrayidx35.3 = getelementptr inbounds i8, ptr %h, i64 3416, !dbg !1555
  store ptr %31, ptr %arrayidx35.3, align 8, !dbg !1555
  br label %for.body88.lr.ph.3, !dbg !1555

do.body.3:                                        ; preds = %for.cond8.3
  %call40.3 = tail call ptr @x264_malloc(i32 noundef 1664) #9, !dbg !1529
  %arrayidx43.3 = getelementptr inbounds i8, ptr %h, i64 3464, !dbg !1529
  store ptr %call40.3, ptr %arrayidx43.3, align 8, !dbg !1529
  %tobool47.not.3 = icmp eq ptr %call40.3, null, !dbg !1533
  br i1 %tobool47.not.3, label %fail, label %do.body50.3, !dbg !1529

do.body50.3:                                      ; preds = %do.body.3
  %call55.3 = tail call ptr @x264_malloc(i32 noundef 384) #9, !dbg !1535
  %arrayidx58.3 = getelementptr inbounds i8, ptr %h, i64 3368, !dbg !1535
  store ptr %call55.3, ptr %arrayidx58.3, align 8, !dbg !1535
  %tobool62.not.3 = icmp eq ptr %call55.3, null, !dbg !1537
  br i1 %tobool62.not.3, label %fail, label %do.body67.3, !dbg !1535

do.body67.3:                                      ; preds = %do.body50.3
  %call72.3 = tail call ptr @x264_malloc(i32 noundef 3328) #9, !dbg !1539
  %arrayidx75.3 = getelementptr inbounds i8, ptr %h, i64 3416, !dbg !1539
  store ptr %call72.3, ptr %arrayidx75.3, align 8, !dbg !1539
  %tobool79.not.3 = icmp eq ptr %call72.3, null, !dbg !1541
  br i1 %tobool79.not.3, label %fail, label %for.body88.lr.ph.3, !dbg !1539

for.body88.lr.ph.3:                               ; preds = %if.then19.3, %do.body67.3
    #dbg_value(i32 0, !1449, !DIExpression(), !1528)
  %arrayidx92.3 = getelementptr inbounds i8, ptr %deadzone, i64 12
  %32 = load i32, ptr %arrayidx92.3, align 4
  br label %for.body88.3, !dbg !1557

for.body88.3:                                     ; preds = %for.inc111.3, %for.body88.lr.ph.3
  %indvars.iv1196.3 = phi i64 [ 0, %for.body88.lr.ph.3 ], [ %indvars.iv.next1197.3, %for.inc111.3 ]
    #dbg_value(i64 %indvars.iv1196.3, !1449, !DIExpression(), !1528)
  %arrayidx90.3 = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1196.3, !dbg !1559
  %33 = load i32, ptr %arrayidx90.3, align 4, !dbg !1559
  %cmp93.3 = icmp eq i32 %33, %32, !dbg !1559
  br i1 %cmp93.3, label %land.lhs.true.3, label %for.inc111.3, !dbg !1559

land.lhs.true.3:                                  ; preds = %for.body88.3
  %34 = load ptr, ptr %pps, align 16, !dbg !1559
  %scaling_list96.3 = getelementptr inbounds i8, ptr %34, i64 72, !dbg !1559
  %arrayidx99.3 = getelementptr inbounds i8, ptr %34, i64 96, !dbg !1559
  %35 = load ptr, ptr %arrayidx99.3, align 8, !dbg !1559
  %arrayidx104.3 = getelementptr inbounds [6 x ptr], ptr %scaling_list96.3, i64 0, i64 %indvars.iv1196.3, !dbg !1559
  %36 = load ptr, ptr %arrayidx104.3, align 8, !dbg !1559
  %bcmp1139.3 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %35, ptr noundef nonnull dereferenceable(16) %36, i64 16), !dbg !1559
  %tobool108.not.3 = icmp eq i32 %bcmp1139.3, 0, !dbg !1559
  br i1 %tobool108.not.3, label %if.then116.3, label %for.inc111.3, !dbg !1562

for.inc111.3:                                     ; preds = %land.lhs.true.3, %for.body88.3
  %indvars.iv.next1197.3 = add nuw nsw i64 %indvars.iv1196.3, 1, !dbg !1562
    #dbg_value(i64 %indvars.iv.next1197.3, !1449, !DIExpression(), !1528)
  %exitcond1200.not.3 = icmp eq i64 %indvars.iv.next1197.3, 3, !dbg !1562
  br i1 %exitcond1200.not.3, label %do.body123.3, label %for.body88.3, !dbg !1557, !llvm.loop !1563

if.then116.3:                                     ; preds = %land.lhs.true.3
  %arrayidx118.3 = getelementptr inbounds [4 x ptr], ptr %quant4_bias129, i64 0, i64 %indvars.iv1196.3, !dbg !1564
  %37 = load ptr, ptr %arrayidx118.3, align 8, !dbg !1564
  %arrayidx121.3 = getelementptr inbounds i8, ptr %h, i64 3512, !dbg !1564
  store ptr %37, ptr %arrayidx121.3, align 8, !dbg !1564
  br label %for.inc143.3, !dbg !1564

do.body123.3:                                     ; preds = %for.inc111.3
  %call128.3 = tail call ptr @x264_malloc(i32 noundef 1664) #9, !dbg !1543
  %arrayidx131.3 = getelementptr inbounds i8, ptr %h, i64 3512, !dbg !1543
  store ptr %call128.3, ptr %arrayidx131.3, align 8, !dbg !1543
  %tobool135.not.3 = icmp eq ptr %call128.3, null, !dbg !1546
  br i1 %tobool135.not.3, label %fail, label %for.inc143.3, !dbg !1543

for.inc143.3:                                     ; preds = %do.body123.3, %if.then116.3
    #dbg_value(i64 4, !1443, !DIExpression(), !1527)
    #dbg_value(i32 0, !1450, !DIExpression(), !1565)
  %quant8_mf206 = getelementptr inbounds i8, ptr %h, i64 3472
  %dequant8_mf223 = getelementptr inbounds i8, ptr %h, i64 3376
  %unquant8_mf240 = getelementptr inbounds i8, ptr %h, i64 3424
  %arrayidx188 = getelementptr inbounds i8, ptr %h, i64 3480
  %arrayidx193 = getelementptr inbounds i8, ptr %h, i64 3384
  %arrayidx198 = getelementptr inbounds i8, ptr %h, i64 3432
  %cmp260 = icmp eq i32 %1, %0
  %quant8_bias297 = getelementptr inbounds i8, ptr %h, i64 3520
  %arrayidx289 = getelementptr inbounds i8, ptr %h, i64 3528
    #dbg_value(i64 0, !1450, !DIExpression(), !1565)
    #dbg_value(i32 0, !1456, !DIExpression(), !1566)
  %call205 = tail call ptr @x264_malloc(i32 noundef 6656) #9, !dbg !1567
  store ptr %call205, ptr %quant8_mf206, align 8, !dbg !1567
  %tobool212.not = icmp eq ptr %call205, null, !dbg !1571
  br i1 %tobool212.not, label %fail, label %do.body217, !dbg !1567

do.body217:                                       ; preds = %for.inc143.3
  %call222 = tail call ptr @x264_malloc(i32 noundef 1536) #9, !dbg !1573
  store ptr %call222, ptr %dequant8_mf223, align 8, !dbg !1573
  %tobool229.not = icmp eq ptr %call222, null, !dbg !1575
  br i1 %tobool229.not, label %fail, label %do.body234, !dbg !1573

do.body234:                                       ; preds = %do.body217
  %call239 = tail call ptr @x264_malloc(i32 noundef 13312) #9, !dbg !1577
  store ptr %call239, ptr %unquant8_mf240, align 8, !dbg !1577
  %tobool246.not = icmp eq ptr %call239, null, !dbg !1579
  br i1 %tobool246.not, label %fail, label %do.body291, !dbg !1577

do.body291:                                       ; preds = %do.body234
    #dbg_value(i32 0, !1456, !DIExpression(), !1566)
  %call296 = tail call ptr @x264_malloc(i32 noundef 6656) #9, !dbg !1581
  store ptr %call296, ptr %quant8_bias297, align 8, !dbg !1581
  %tobool303.not = icmp eq ptr %call296, null, !dbg !1584
  br i1 %tobool303.not, label %fail, label %for.body160.peel.1, !dbg !1581

for.body160.peel.1:                               ; preds = %do.body291
    #dbg_value(i64 1, !1450, !DIExpression(), !1565)
    #dbg_value(i32 0, !1456, !DIExpression(), !1566)
  %38 = load ptr, ptr %pps, align 16, !dbg !1586
  %arrayidx165.peel.1 = getelementptr inbounds i8, ptr %38, i64 112, !dbg !1586
  %39 = load ptr, ptr %arrayidx165.peel.1, align 8, !dbg !1586
  %arrayidx170.peel.1 = getelementptr inbounds i8, ptr %38, i64 104, !dbg !1586
  %40 = load ptr, ptr %arrayidx170.peel.1, align 8, !dbg !1586
  %bcmp1140.peel.1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %39, ptr noundef nonnull dereferenceable(64) %40, i64 64), !dbg !1586
  %tobool174.not.peel.1 = icmp eq i32 %bcmp1140.peel.1, 0, !dbg !1586
  br i1 %tobool174.not.peel.1, label %if.then182.1, label %do.body200.1, !dbg !1590

do.body200.1:                                     ; preds = %for.body160.peel.1
    #dbg_value(i32 1, !1456, !DIExpression(), !1566)
  %call205.1 = tail call ptr @x264_malloc(i32 noundef 6656) #9, !dbg !1567
  %arrayidx208.1 = getelementptr inbounds i8, ptr %h, i64 3480, !dbg !1567
  store ptr %call205.1, ptr %arrayidx208.1, align 8, !dbg !1567
  %tobool212.not.1 = icmp eq ptr %call205.1, null, !dbg !1571
  br i1 %tobool212.not.1, label %fail, label %do.body217.1, !dbg !1567

do.body217.1:                                     ; preds = %do.body200.1
  %call222.1 = tail call ptr @x264_malloc(i32 noundef 1536) #9, !dbg !1573
  %arrayidx225.1 = getelementptr inbounds i8, ptr %h, i64 3384, !dbg !1573
  store ptr %call222.1, ptr %arrayidx225.1, align 8, !dbg !1573
  %tobool229.not.1 = icmp eq ptr %call222.1, null, !dbg !1575
  br i1 %tobool229.not.1, label %fail, label %do.body234.1, !dbg !1573

do.body234.1:                                     ; preds = %do.body217.1
  %call239.1 = tail call ptr @x264_malloc(i32 noundef 13312) #9, !dbg !1577
  %arrayidx242.1 = getelementptr inbounds i8, ptr %h, i64 3432, !dbg !1577
  store ptr %call239.1, ptr %arrayidx242.1, align 8, !dbg !1577
  %tobool246.not.1 = icmp eq ptr %call239.1, null, !dbg !1579
  br i1 %tobool246.not.1, label %fail, label %for.body255.lr.ph.1, !dbg !1577

if.then182.1:                                     ; preds = %for.body160.peel.1
  %41 = load ptr, ptr %quant8_mf206, align 8, !dbg !1591
  store ptr %41, ptr %arrayidx188, align 8, !dbg !1591
  %42 = load ptr, ptr %dequant8_mf223, align 8, !dbg !1591
  store ptr %42, ptr %arrayidx193, align 8, !dbg !1591
  %43 = load ptr, ptr %unquant8_mf240, align 8, !dbg !1591
  store ptr %43, ptr %arrayidx198, align 8, !dbg !1591
  br label %for.body255.lr.ph.1, !dbg !1591

for.body255.lr.ph.1:                              ; preds = %do.body234.1, %if.then182.1
    #dbg_value(i32 0, !1456, !DIExpression(), !1566)
  br i1 %cmp260, label %for.body255.lr.ph.split.us.1, label %do.body291.1

for.body255.lr.ph.split.us.1:                     ; preds = %for.body255.lr.ph.1
  %44 = load ptr, ptr %pps, align 16
  %arrayidx267.us.1 = getelementptr inbounds i8, ptr %44, i64 112
  %45 = load ptr, ptr %arrayidx267.us.1, align 8
  %arrayidx272.us.1 = getelementptr inbounds i8, ptr %44, i64 104
  %46 = load ptr, ptr %arrayidx272.us.1, align 8
  %bcmp1141.us.1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %45, ptr noundef nonnull dereferenceable(64) %46, i64 64), !dbg !1503
  %tobool276.not.us.1 = icmp eq i32 %bcmp1141.us.1, 0
  br i1 %tobool276.not.us.1, label %if.then284.split.us.1, label %do.body291.1, !dbg !1593

if.then284.split.us.1:                            ; preds = %for.body255.lr.ph.split.us.1
  %47 = load ptr, ptr %quant8_bias297, align 8, !dbg !1596
  store ptr %47, ptr %arrayidx289, align 8, !dbg !1596
  br label %for.cond325.preheader.preheader, !dbg !1596

do.body291.1:                                     ; preds = %for.body255.lr.ph.split.us.1, %for.body255.lr.ph.1
  %call296.1 = tail call ptr @x264_malloc(i32 noundef 6656) #9, !dbg !1581
  %arrayidx299.1 = getelementptr inbounds i8, ptr %h, i64 3528, !dbg !1581
  store ptr %call296.1, ptr %arrayidx299.1, align 8, !dbg !1581
  %tobool303.not.1 = icmp eq ptr %call296.1, null, !dbg !1584
  br i1 %tobool303.not.1, label %fail, label %for.cond325.preheader.preheader, !dbg !1581

for.cond325.preheader.preheader:                  ; preds = %do.body291.1, %if.then284.split.us.1
  br label %for.cond325.preheader, !dbg !1597

for.cond325.preheader:                            ; preds = %for.cond325.preheader.preheader, %for.cond.cleanup359
  %indvars.iv1217 = phi i64 [ %indvars.iv.next1218, %for.cond.cleanup359 ], [ 0, %for.cond325.preheader.preheader ]
    #dbg_value(i64 %indvars.iv1217, !1457, !DIExpression(), !1598)
    #dbg_value(i64 0, !1459, !DIExpression(), !1599)
    #dbg_value(i32 0, !1463, !DIExpression(), !1600)
  %arrayidx336 = getelementptr inbounds [6 x [3 x i8]], ptr @dequant4_scale, i64 0, i64 %indvars.iv1217, i64 0, !dbg !1601
  %48 = load i8, ptr %arrayidx336, align 1, !dbg !1601
  %conv337 = zext i8 %48 to i32, !dbg !1601
  %arrayidx341 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 0, !dbg !1602
  store i32 %conv337, ptr %arrayidx341, align 16, !dbg !1603
  %arrayidx345 = getelementptr inbounds [6 x [3 x i16]], ptr @quant4_scale, i64 0, i64 %indvars.iv1217, i64 0, !dbg !1604
  %49 = load i16, ptr %arrayidx345, align 2, !dbg !1604
  %conv346 = zext i16 %49 to i32, !dbg !1604
  %arrayidx350 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 0, !dbg !1605
  store i32 %conv346, ptr %arrayidx350, align 16, !dbg !1606
    #dbg_value(i64 1, !1459, !DIExpression(), !1599)
    #dbg_value(i32 1, !1463, !DIExpression(), !1600)
  %arrayidx336.1 = getelementptr inbounds [6 x [3 x i8]], ptr @dequant4_scale, i64 0, i64 %indvars.iv1217, i64 1, !dbg !1601
  %50 = load i8, ptr %arrayidx336.1, align 1, !dbg !1601
  %conv337.1 = zext i8 %50 to i32, !dbg !1601
  %arrayidx341.1 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 1, !dbg !1602
  store i32 %conv337.1, ptr %arrayidx341.1, align 4, !dbg !1603
  %arrayidx345.1 = getelementptr inbounds [6 x [3 x i16]], ptr @quant4_scale, i64 0, i64 %indvars.iv1217, i64 1, !dbg !1604
  %51 = load i16, ptr %arrayidx345.1, align 2, !dbg !1604
  %conv346.1 = zext i16 %51 to i32, !dbg !1604
  %arrayidx350.1 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 1, !dbg !1605
  store i32 %conv346.1, ptr %arrayidx350.1, align 4, !dbg !1606
    #dbg_value(i64 2, !1459, !DIExpression(), !1599)
    #dbg_value(i32 0, !1463, !DIExpression(), !1600)
  %arrayidx341.2 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 2, !dbg !1602
  store i32 %conv337, ptr %arrayidx341.2, align 8, !dbg !1603
  %arrayidx350.2 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 2, !dbg !1605
  store i32 %conv346, ptr %arrayidx350.2, align 8, !dbg !1606
    #dbg_value(i64 3, !1459, !DIExpression(), !1599)
    #dbg_value(i32 1, !1463, !DIExpression(), !1600)
  %arrayidx341.3 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 3, !dbg !1602
  store i32 %conv337.1, ptr %arrayidx341.3, align 4, !dbg !1603
  %arrayidx350.3 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 3, !dbg !1605
  store i32 %conv346.1, ptr %arrayidx350.3, align 4, !dbg !1606
    #dbg_value(i64 4, !1459, !DIExpression(), !1599)
  %arrayidx341.4 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 4, !dbg !1602
  store i32 %conv337.1, ptr %arrayidx341.4, align 16, !dbg !1603
  %arrayidx350.4 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 4, !dbg !1605
  store i32 %conv346.1, ptr %arrayidx350.4, align 16, !dbg !1606
    #dbg_value(i64 5, !1459, !DIExpression(), !1599)
    #dbg_value(i32 2, !1463, !DIExpression(), !1600)
  %arrayidx336.5 = getelementptr inbounds [6 x [3 x i8]], ptr @dequant4_scale, i64 0, i64 %indvars.iv1217, i64 2, !dbg !1601
  %52 = load i8, ptr %arrayidx336.5, align 1, !dbg !1601
  %conv337.5 = zext i8 %52 to i32, !dbg !1601
  %arrayidx341.5 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 5, !dbg !1602
  store i32 %conv337.5, ptr %arrayidx341.5, align 4, !dbg !1603
  %arrayidx345.5 = getelementptr inbounds [6 x [3 x i16]], ptr @quant4_scale, i64 0, i64 %indvars.iv1217, i64 2, !dbg !1604
  %53 = load i16, ptr %arrayidx345.5, align 2, !dbg !1604
  %conv346.5 = zext i16 %53 to i32, !dbg !1604
  %arrayidx350.5 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 5, !dbg !1605
  store i32 %conv346.5, ptr %arrayidx350.5, align 4, !dbg !1606
    #dbg_value(i64 6, !1459, !DIExpression(), !1599)
    #dbg_value(i32 1, !1463, !DIExpression(), !1600)
  %arrayidx341.6 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 6, !dbg !1602
  store i32 %conv337.1, ptr %arrayidx341.6, align 8, !dbg !1603
  %arrayidx350.6 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 6, !dbg !1605
  store i32 %conv346.1, ptr %arrayidx350.6, align 8, !dbg !1606
    #dbg_value(i64 7, !1459, !DIExpression(), !1599)
    #dbg_value(i32 2, !1463, !DIExpression(), !1600)
  %arrayidx341.7 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 7, !dbg !1602
  store i32 %conv337.5, ptr %arrayidx341.7, align 4, !dbg !1603
  %arrayidx350.7 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 7, !dbg !1605
  store i32 %conv346.5, ptr %arrayidx350.7, align 4, !dbg !1606
    #dbg_value(i64 8, !1459, !DIExpression(), !1599)
    #dbg_value(i32 0, !1463, !DIExpression(), !1600)
  %arrayidx341.8 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 8, !dbg !1602
  store i32 %conv337, ptr %arrayidx341.8, align 16, !dbg !1603
  %arrayidx350.8 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 8, !dbg !1605
  store i32 %conv346, ptr %arrayidx350.8, align 16, !dbg !1606
    #dbg_value(i64 9, !1459, !DIExpression(), !1599)
    #dbg_value(i32 1, !1463, !DIExpression(), !1600)
  %arrayidx341.9 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 9, !dbg !1602
  store i32 %conv337.1, ptr %arrayidx341.9, align 4, !dbg !1603
  %arrayidx350.9 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 9, !dbg !1605
  store i32 %conv346.1, ptr %arrayidx350.9, align 4, !dbg !1606
    #dbg_value(i64 10, !1459, !DIExpression(), !1599)
    #dbg_value(i32 0, !1463, !DIExpression(), !1600)
  %arrayidx341.10 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 10, !dbg !1602
  store i32 %conv337, ptr %arrayidx341.10, align 8, !dbg !1603
  %arrayidx350.10 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 10, !dbg !1605
  store i32 %conv346, ptr %arrayidx350.10, align 8, !dbg !1606
    #dbg_value(i64 11, !1459, !DIExpression(), !1599)
    #dbg_value(i32 1, !1463, !DIExpression(), !1600)
  %arrayidx341.11 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 11, !dbg !1602
  store i32 %conv337.1, ptr %arrayidx341.11, align 4, !dbg !1603
  %arrayidx350.11 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 11, !dbg !1605
  store i32 %conv346.1, ptr %arrayidx350.11, align 4, !dbg !1606
    #dbg_value(i64 12, !1459, !DIExpression(), !1599)
  %arrayidx341.12 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 12, !dbg !1602
  store i32 %conv337.1, ptr %arrayidx341.12, align 16, !dbg !1603
  %arrayidx350.12 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 12, !dbg !1605
  store i32 %conv346.1, ptr %arrayidx350.12, align 16, !dbg !1606
    #dbg_value(i64 13, !1459, !DIExpression(), !1599)
    #dbg_value(i32 2, !1463, !DIExpression(), !1600)
  %arrayidx341.13 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 13, !dbg !1602
  store i32 %conv337.5, ptr %arrayidx341.13, align 4, !dbg !1603
  %arrayidx350.13 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 13, !dbg !1605
  store i32 %conv346.5, ptr %arrayidx350.13, align 4, !dbg !1606
    #dbg_value(i64 14, !1459, !DIExpression(), !1599)
    #dbg_value(i32 1, !1463, !DIExpression(), !1600)
  %arrayidx341.14 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 14, !dbg !1602
  store i32 %conv337.1, ptr %arrayidx341.14, align 8, !dbg !1603
  %arrayidx350.14 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 14, !dbg !1605
  store i32 %conv346.1, ptr %arrayidx350.14, align 8, !dbg !1606
    #dbg_value(i64 15, !1459, !DIExpression(), !1599)
    #dbg_value(i32 2, !1463, !DIExpression(), !1600)
  %arrayidx341.15 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1217, i64 15, !dbg !1602
  store i32 %conv337.5, ptr %arrayidx341.15, align 4, !dbg !1603
  %arrayidx350.15 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1217, i64 15, !dbg !1605
  store i32 %conv346.5, ptr %arrayidx350.15, align 4, !dbg !1606
    #dbg_value(i64 16, !1459, !DIExpression(), !1599)
    #dbg_value(i32 0, !1466, !DIExpression(), !1607)
  br label %vector.body, !dbg !1608

vector.body:                                      ; preds = %vector.body, %for.cond325.preheader
  %index = phi i64 [ 0, %for.cond325.preheader ], [ %index.next, %vector.body ], !dbg !1609
  %54 = or disjoint i64 %index, 1, !dbg !1608
  %55 = or disjoint i64 %index, 2, !dbg !1608
  %56 = or disjoint i64 %index, 3, !dbg !1608
  %57 = lshr exact i64 %index, 1, !dbg !1610
  %58 = lshr exact i64 %index, 1, !dbg !1610
  %59 = lshr exact i64 %index, 1, !dbg !1610
  %60 = lshr exact i64 %index, 1, !dbg !1610
  %61 = and i64 %57, 12, !dbg !1611
  %62 = and i64 %58, 12, !dbg !1611
  %63 = and i64 %59, 12, !dbg !1611
  %64 = and i64 %60, 12, !dbg !1611
  %65 = or disjoint i64 %62, 1, !dbg !1612
  %66 = or disjoint i64 %63, 2, !dbg !1612
  %67 = or disjoint i64 %64, 3, !dbg !1612
  %68 = getelementptr inbounds [16 x i8], ptr @quant8_scan, i64 0, i64 %61, !dbg !1613
  %69 = getelementptr inbounds [16 x i8], ptr @quant8_scan, i64 0, i64 %65, !dbg !1613
  %70 = getelementptr inbounds [16 x i8], ptr @quant8_scan, i64 0, i64 %66, !dbg !1613
  %71 = getelementptr inbounds [16 x i8], ptr @quant8_scan, i64 0, i64 %67, !dbg !1613
  %72 = load i8, ptr %68, align 4, !dbg !1613
  %73 = load i8, ptr %69, align 1, !dbg !1613
  %74 = load i8, ptr %70, align 2, !dbg !1613
  %75 = load i8, ptr %71, align 1, !dbg !1613
  %76 = zext i8 %72 to i64, !dbg !1614
  %77 = zext i8 %73 to i64, !dbg !1614
  %78 = zext i8 %74 to i64, !dbg !1614
  %79 = zext i8 %75 to i64, !dbg !1614
  %80 = getelementptr inbounds [6 x [6 x i8]], ptr @dequant8_scale, i64 0, i64 %indvars.iv1217, i64 %76, !dbg !1614
  %81 = getelementptr inbounds [6 x [6 x i8]], ptr @dequant8_scale, i64 0, i64 %indvars.iv1217, i64 %77, !dbg !1614
  %82 = getelementptr inbounds [6 x [6 x i8]], ptr @dequant8_scale, i64 0, i64 %indvars.iv1217, i64 %78, !dbg !1614
  %83 = getelementptr inbounds [6 x [6 x i8]], ptr @dequant8_scale, i64 0, i64 %indvars.iv1217, i64 %79, !dbg !1614
  %84 = load i8, ptr %80, align 1, !dbg !1614
  %85 = load i8, ptr %81, align 1, !dbg !1614
  %86 = load i8, ptr %82, align 1, !dbg !1614
  %87 = load i8, ptr %83, align 1, !dbg !1614
  %88 = zext i8 %84 to i32, !dbg !1614
  %89 = zext i8 %85 to i32, !dbg !1614
  %90 = zext i8 %86 to i32, !dbg !1614
  %91 = zext i8 %87 to i32, !dbg !1614
  %92 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1217, i64 %index, !dbg !1615
  %93 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1217, i64 %54, !dbg !1615
  %94 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1217, i64 %55, !dbg !1615
  %95 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1217, i64 %56, !dbg !1615
  store i32 %88, ptr %92, align 16, !dbg !1616
  store i32 %89, ptr %93, align 4, !dbg !1616
  store i32 %90, ptr %94, align 8, !dbg !1616
  store i32 %91, ptr %95, align 4, !dbg !1616
  %96 = getelementptr inbounds [6 x [6 x i16]], ptr @quant8_scale, i64 0, i64 %indvars.iv1217, i64 %76, !dbg !1617
  %97 = getelementptr inbounds [6 x [6 x i16]], ptr @quant8_scale, i64 0, i64 %indvars.iv1217, i64 %77, !dbg !1617
  %98 = getelementptr inbounds [6 x [6 x i16]], ptr @quant8_scale, i64 0, i64 %indvars.iv1217, i64 %78, !dbg !1617
  %99 = getelementptr inbounds [6 x [6 x i16]], ptr @quant8_scale, i64 0, i64 %indvars.iv1217, i64 %79, !dbg !1617
  %100 = load i16, ptr %96, align 2, !dbg !1617
  %101 = load i16, ptr %97, align 2, !dbg !1617
  %102 = load i16, ptr %98, align 2, !dbg !1617
  %103 = load i16, ptr %99, align 2, !dbg !1617
  %104 = zext i16 %100 to i32, !dbg !1617
  %105 = zext i16 %101 to i32, !dbg !1617
  %106 = zext i16 %102 to i32, !dbg !1617
  %107 = zext i16 %103 to i32, !dbg !1617
  %108 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1217, i64 %index, !dbg !1618
  %109 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1217, i64 %54, !dbg !1618
  %110 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1217, i64 %55, !dbg !1618
  %111 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1217, i64 %56, !dbg !1618
  store i32 %104, ptr %108, align 16, !dbg !1619
  store i32 %105, ptr %109, align 4, !dbg !1619
  store i32 %106, ptr %110, align 8, !dbg !1619
  store i32 %107, ptr %111, align 4, !dbg !1619
  %index.next = add nuw i64 %index, 4, !dbg !1609
  %112 = icmp eq i64 %index.next, 64, !dbg !1609
  br i1 %112, label %for.cond.cleanup359, label %vector.body, !dbg !1609, !llvm.loop !1620

for.cond395.preheader:                            ; preds = %for.cond.cleanup359
    #dbg_value(i32 0, !1471, !DIExpression(), !1624)
  %.pre.pre = load ptr, ptr %pps, align 16, !dbg !1625
  %arrayidx425.1 = getelementptr inbounds i8, ptr %h, i64 3352
  %arrayidx425.2 = getelementptr inbounds i8, ptr %h, i64 3360
  %arrayidx425.3 = getelementptr inbounds i8, ptr %h, i64 3368
  %arrayidx492.1 = getelementptr inbounds i8, ptr %h, i64 3384
  br label %for.cond400.preheader, !dbg !1628

for.cond.cleanup359:                              ; preds = %vector.body
  %indvars.iv.next1218 = add nuw nsw i64 %indvars.iv1217, 1, !dbg !1629
    #dbg_value(i64 %indvars.iv.next1218, !1457, !DIExpression(), !1598)
  %exitcond1220.not = icmp eq i64 %indvars.iv.next1218, 6, !dbg !1630
  br i1 %exitcond1220.not, label %for.cond395.preheader, label %for.cond325.preheader, !dbg !1597, !llvm.loop !1631

for.cond400.preheader:                            ; preds = %for.cond395.preheader, %for.cond.cleanup475.1
  %.pre = phi ptr [ %.pre.pre, %for.cond395.preheader ], [ %152, %for.cond.cleanup475.1 ], !dbg !1625
  %indvars.iv1237 = phi i64 [ 0, %for.cond395.preheader ], [ %indvars.iv.next1238, %for.cond.cleanup475.1 ]
    #dbg_value(i64 %indvars.iv1237, !1471, !DIExpression(), !1624)
    #dbg_value(i64 0, !1473, !DIExpression(), !1633)
    #dbg_value(i32 0, !1477, !DIExpression(), !1634)
  %scaling_list416.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 72
  %.pre1279 = load ptr, ptr %scaling_list416.phi.trans.insert, align 8, !dbg !1635
  br label %for.body410, !dbg !1636

for.cond540.preheader:                            ; preds = %for.cond.cleanup475.1
  %b_transform_8x8 = getelementptr inbounds i8, ptr %h, i64 392
    #dbg_value(i32 0, !1485, !DIExpression(), !1637)
    #dbg_value(i32 -1, !1441, !DIExpression(), !1503)
    #dbg_value(i32 -1, !1442, !DIExpression(), !1503)
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
  br label %for.cond547.preheader, !dbg !1638

for.cond.cleanup409:                              ; preds = %for.body410
    #dbg_value(i64 1, !1473, !DIExpression(), !1633)
    #dbg_value(i32 0, !1477, !DIExpression(), !1634)
  %arrayidx418.1.phi.trans.insert = getelementptr inbounds i8, ptr %144, i64 80
  %.pre1280 = load ptr, ptr %arrayidx418.1.phi.trans.insert, align 8, !dbg !1635
  br label %for.body410.1, !dbg !1636

for.body410.1:                                    ; preds = %for.body410.1, %for.cond.cleanup409
  %115 = phi ptr [ %.pre1280, %for.cond.cleanup409 ], [ %121, %for.body410.1 ], !dbg !1635
  %indvars.iv1221.1 = phi i64 [ 0, %for.cond.cleanup409 ], [ %indvars.iv.next1222.1, %for.body410.1 ]
    #dbg_value(i64 %indvars.iv1221.1, !1477, !DIExpression(), !1634)
  %arrayidx414.1 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221.1, !dbg !1639
  %116 = load i32, ptr %arrayidx414.1, align 4, !dbg !1639
  %arrayidx420.1 = getelementptr inbounds i8, ptr %115, i64 %indvars.iv1221.1, !dbg !1635
  %117 = load i8, ptr %arrayidx420.1, align 1, !dbg !1635
  %conv421.1 = zext i8 %117 to i32, !dbg !1635
  %mul422.1 = mul nsw i32 %116, %conv421.1, !dbg !1640
  %118 = load ptr, ptr %arrayidx425.1, align 8, !dbg !1641
  %arrayidx429.1 = getelementptr inbounds [16 x i32], ptr %118, i64 %indvars.iv1237, i64 %indvars.iv1221.1, !dbg !1641
  store i32 %mul422.1, ptr %arrayidx429.1, align 4, !dbg !1642
  %arrayidx433.1 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221.1, !dbg !1643
  %119 = load i32, ptr %arrayidx433.1, align 4, !dbg !1643
  %mul434.1 = shl nsw i32 %119, 4, !dbg !1643
  %120 = load ptr, ptr %pps, align 16, !dbg !1643
  %arrayidx438.1 = getelementptr inbounds i8, ptr %120, i64 80, !dbg !1643
  %121 = load ptr, ptr %arrayidx438.1, align 8, !dbg !1643
  %arrayidx440.1 = getelementptr inbounds i8, ptr %121, i64 %indvars.iv1221.1, !dbg !1643
  %122 = load i8, ptr %arrayidx440.1, align 1, !dbg !1643
  %conv441.1 = zext i8 %122 to i32, !dbg !1643
  %shr442.1 = lshr i32 %conv441.1, 1, !dbg !1643
  %add443.1 = add nsw i32 %shr442.1, %mul434.1, !dbg !1643
  %div.1 = sdiv i32 %add443.1, %conv441.1, !dbg !1643
  %arrayidx456.1 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 1, i64 %indvars.iv1237, i64 %indvars.iv1221.1, !dbg !1644
  store i32 %div.1, ptr %arrayidx456.1, align 4, !dbg !1645
  %indvars.iv.next1222.1 = add nuw nsw i64 %indvars.iv1221.1, 1, !dbg !1646
    #dbg_value(i64 %indvars.iv.next1222.1, !1477, !DIExpression(), !1634)
  %exitcond1224.1.not = icmp eq i64 %indvars.iv.next1222.1, 16, !dbg !1647
  br i1 %exitcond1224.1.not, label %for.cond.cleanup409.1, label %for.body410.1, !dbg !1636, !llvm.loop !1648

for.cond.cleanup409.1:                            ; preds = %for.body410.1
    #dbg_value(i64 2, !1473, !DIExpression(), !1633)
    #dbg_value(i32 0, !1477, !DIExpression(), !1634)
  %arrayidx418.2.phi.trans.insert = getelementptr inbounds i8, ptr %120, i64 88
  %.pre1281 = load ptr, ptr %arrayidx418.2.phi.trans.insert, align 8, !dbg !1635
  br label %for.body410.2, !dbg !1636

for.body410.2:                                    ; preds = %for.body410.2, %for.cond.cleanup409.1
  %123 = phi ptr [ %.pre1281, %for.cond.cleanup409.1 ], [ %129, %for.body410.2 ], !dbg !1635
  %indvars.iv1221.2 = phi i64 [ 0, %for.cond.cleanup409.1 ], [ %indvars.iv.next1222.2, %for.body410.2 ]
    #dbg_value(i64 %indvars.iv1221.2, !1477, !DIExpression(), !1634)
  %arrayidx414.2 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221.2, !dbg !1639
  %124 = load i32, ptr %arrayidx414.2, align 4, !dbg !1639
  %arrayidx420.2 = getelementptr inbounds i8, ptr %123, i64 %indvars.iv1221.2, !dbg !1635
  %125 = load i8, ptr %arrayidx420.2, align 1, !dbg !1635
  %conv421.2 = zext i8 %125 to i32, !dbg !1635
  %mul422.2 = mul nsw i32 %124, %conv421.2, !dbg !1640
  %126 = load ptr, ptr %arrayidx425.2, align 8, !dbg !1641
  %arrayidx429.2 = getelementptr inbounds [16 x i32], ptr %126, i64 %indvars.iv1237, i64 %indvars.iv1221.2, !dbg !1641
  store i32 %mul422.2, ptr %arrayidx429.2, align 4, !dbg !1642
  %arrayidx433.2 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221.2, !dbg !1643
  %127 = load i32, ptr %arrayidx433.2, align 4, !dbg !1643
  %mul434.2 = shl nsw i32 %127, 4, !dbg !1643
  %128 = load ptr, ptr %pps, align 16, !dbg !1643
  %arrayidx438.2 = getelementptr inbounds i8, ptr %128, i64 88, !dbg !1643
  %129 = load ptr, ptr %arrayidx438.2, align 8, !dbg !1643
  %arrayidx440.2 = getelementptr inbounds i8, ptr %129, i64 %indvars.iv1221.2, !dbg !1643
  %130 = load i8, ptr %arrayidx440.2, align 1, !dbg !1643
  %conv441.2 = zext i8 %130 to i32, !dbg !1643
  %shr442.2 = lshr i32 %conv441.2, 1, !dbg !1643
  %add443.2 = add nsw i32 %shr442.2, %mul434.2, !dbg !1643
  %div.2 = sdiv i32 %add443.2, %conv441.2, !dbg !1643
  %arrayidx456.2 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 2, i64 %indvars.iv1237, i64 %indvars.iv1221.2, !dbg !1644
  store i32 %div.2, ptr %arrayidx456.2, align 4, !dbg !1645
  %indvars.iv.next1222.2 = add nuw nsw i64 %indvars.iv1221.2, 1, !dbg !1646
    #dbg_value(i64 %indvars.iv.next1222.2, !1477, !DIExpression(), !1634)
  %exitcond1224.2.not = icmp eq i64 %indvars.iv.next1222.2, 16, !dbg !1647
  br i1 %exitcond1224.2.not, label %for.cond.cleanup409.2, label %for.body410.2, !dbg !1636, !llvm.loop !1648

for.cond.cleanup409.2:                            ; preds = %for.body410.2
    #dbg_value(i64 3, !1473, !DIExpression(), !1633)
    #dbg_value(i32 0, !1477, !DIExpression(), !1634)
  %arrayidx418.3.phi.trans.insert = getelementptr inbounds i8, ptr %128, i64 96
  %.pre1282 = load ptr, ptr %arrayidx418.3.phi.trans.insert, align 8, !dbg !1635
  br label %for.body410.3, !dbg !1636

for.body410.3:                                    ; preds = %for.body410.3, %for.cond.cleanup409.2
  %131 = phi ptr [ %.pre1282, %for.cond.cleanup409.2 ], [ %137, %for.body410.3 ], !dbg !1635
  %indvars.iv1221.3 = phi i64 [ 0, %for.cond.cleanup409.2 ], [ %indvars.iv.next1222.3, %for.body410.3 ]
    #dbg_value(i64 %indvars.iv1221.3, !1477, !DIExpression(), !1634)
  %arrayidx414.3 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221.3, !dbg !1639
  %132 = load i32, ptr %arrayidx414.3, align 4, !dbg !1639
  %arrayidx420.3 = getelementptr inbounds i8, ptr %131, i64 %indvars.iv1221.3, !dbg !1635
  %133 = load i8, ptr %arrayidx420.3, align 1, !dbg !1635
  %conv421.3 = zext i8 %133 to i32, !dbg !1635
  %mul422.3 = mul nsw i32 %132, %conv421.3, !dbg !1640
  %134 = load ptr, ptr %arrayidx425.3, align 8, !dbg !1641
  %arrayidx429.3 = getelementptr inbounds [16 x i32], ptr %134, i64 %indvars.iv1237, i64 %indvars.iv1221.3, !dbg !1641
  store i32 %mul422.3, ptr %arrayidx429.3, align 4, !dbg !1642
  %arrayidx433.3 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221.3, !dbg !1643
  %135 = load i32, ptr %arrayidx433.3, align 4, !dbg !1643
  %mul434.3 = shl nsw i32 %135, 4, !dbg !1643
  %136 = load ptr, ptr %pps, align 16, !dbg !1643
  %arrayidx438.3 = getelementptr inbounds i8, ptr %136, i64 96, !dbg !1643
  %137 = load ptr, ptr %arrayidx438.3, align 8, !dbg !1643
  %arrayidx440.3 = getelementptr inbounds i8, ptr %137, i64 %indvars.iv1221.3, !dbg !1643
  %138 = load i8, ptr %arrayidx440.3, align 1, !dbg !1643
  %conv441.3 = zext i8 %138 to i32, !dbg !1643
  %shr442.3 = lshr i32 %conv441.3, 1, !dbg !1643
  %add443.3 = add nsw i32 %shr442.3, %mul434.3, !dbg !1643
  %div.3 = sdiv i32 %add443.3, %conv441.3, !dbg !1643
  %arrayidx456.3 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 3, i64 %indvars.iv1237, i64 %indvars.iv1221.3, !dbg !1644
  store i32 %div.3, ptr %arrayidx456.3, align 4, !dbg !1645
  %indvars.iv.next1222.3 = add nuw nsw i64 %indvars.iv1221.3, 1, !dbg !1646
    #dbg_value(i64 %indvars.iv.next1222.3, !1477, !DIExpression(), !1634)
  %exitcond1224.3.not = icmp eq i64 %indvars.iv.next1222.3, 16, !dbg !1647
  br i1 %exitcond1224.3.not, label %for.cond.cleanup409.3, label %for.body410.3, !dbg !1636, !llvm.loop !1648

for.cond.cleanup409.3:                            ; preds = %for.body410.3
    #dbg_value(i64 4, !1473, !DIExpression(), !1633)
    #dbg_value(i64 0, !1480, !DIExpression(), !1650)
    #dbg_value(i32 0, !1482, !DIExpression(), !1651)
  %arrayidx485.phi.trans.insert = getelementptr inbounds i8, ptr %136, i64 104
  %.pre1283 = load ptr, ptr %arrayidx485.phi.trans.insert, align 8, !dbg !1652
  br label %for.body476, !dbg !1655

for.body410:                                      ; preds = %for.cond400.preheader, %for.body410
  %139 = phi ptr [ %.pre1279, %for.cond400.preheader ], [ %145, %for.body410 ], !dbg !1635
  %indvars.iv1221 = phi i64 [ 0, %for.cond400.preheader ], [ %indvars.iv.next1222, %for.body410 ]
    #dbg_value(i64 %indvars.iv1221, !1477, !DIExpression(), !1634)
  %arrayidx414 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221, !dbg !1639
  %140 = load i32, ptr %arrayidx414, align 4, !dbg !1639
  %arrayidx420 = getelementptr inbounds i8, ptr %139, i64 %indvars.iv1221, !dbg !1635
  %141 = load i8, ptr %arrayidx420, align 1, !dbg !1635
  %conv421 = zext i8 %141 to i32, !dbg !1635
  %mul422 = mul nsw i32 %140, %conv421, !dbg !1640
  %142 = load ptr, ptr %dequant4_mf56, align 8, !dbg !1641
  %arrayidx429 = getelementptr inbounds [16 x i32], ptr %142, i64 %indvars.iv1237, i64 %indvars.iv1221, !dbg !1641
  store i32 %mul422, ptr %arrayidx429, align 4, !dbg !1642
  %arrayidx433 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221, !dbg !1643
  %143 = load i32, ptr %arrayidx433, align 4, !dbg !1643
  %mul434 = shl nsw i32 %143, 4, !dbg !1643
  %144 = load ptr, ptr %pps, align 16, !dbg !1643
  %scaling_list436 = getelementptr inbounds i8, ptr %144, i64 72, !dbg !1643
  %145 = load ptr, ptr %scaling_list436, align 8, !dbg !1643
  %arrayidx440 = getelementptr inbounds i8, ptr %145, i64 %indvars.iv1221, !dbg !1643
  %146 = load i8, ptr %arrayidx440, align 1, !dbg !1643
  %conv441 = zext i8 %146 to i32, !dbg !1643
  %shr442 = lshr i32 %conv441, 1, !dbg !1643
  %add443 = add nsw i32 %shr442, %mul434, !dbg !1643
  %div = sdiv i32 %add443, %conv441, !dbg !1643
  %arrayidx456 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1221, !dbg !1644
  store i32 %div, ptr %arrayidx456, align 4, !dbg !1645
  %indvars.iv.next1222 = add nuw nsw i64 %indvars.iv1221, 1, !dbg !1646
    #dbg_value(i64 %indvars.iv.next1222, !1477, !DIExpression(), !1634)
  %exitcond1224.not = icmp eq i64 %indvars.iv.next1222, 16, !dbg !1647
  br i1 %exitcond1224.not, label %for.cond.cleanup409, label %for.body410, !dbg !1636, !llvm.loop !1648

for.cond.cleanup475:                              ; preds = %for.body476
    #dbg_value(i64 1, !1480, !DIExpression(), !1650)
    #dbg_value(i32 0, !1482, !DIExpression(), !1651)
  %arrayidx485.1.phi.trans.insert = getelementptr inbounds i8, ptr %160, i64 112
  %.pre1284 = load ptr, ptr %arrayidx485.1.phi.trans.insert, align 8, !dbg !1652
  br label %for.body476.1, !dbg !1655

for.body476.1:                                    ; preds = %for.body476.1, %for.cond.cleanup475
  %147 = phi ptr [ %.pre1284, %for.cond.cleanup475 ], [ %153, %for.body476.1 ], !dbg !1652
  %indvars.iv1229.1 = phi i64 [ 0, %for.cond.cleanup475 ], [ %indvars.iv.next1230.1, %for.body476.1 ]
    #dbg_value(i64 %indvars.iv1229.1, !1482, !DIExpression(), !1651)
  %arrayidx480.1 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1229.1, !dbg !1656
  %148 = load i32, ptr %arrayidx480.1, align 4, !dbg !1656
  %arrayidx487.1 = getelementptr inbounds i8, ptr %147, i64 %indvars.iv1229.1, !dbg !1652
  %149 = load i8, ptr %arrayidx487.1, align 1, !dbg !1652
  %conv488.1 = zext i8 %149 to i32, !dbg !1652
  %mul489.1 = mul nsw i32 %148, %conv488.1, !dbg !1657
  %150 = load ptr, ptr %arrayidx492.1, align 8, !dbg !1658
  %arrayidx496.1 = getelementptr inbounds [64 x i32], ptr %150, i64 %indvars.iv1237, i64 %indvars.iv1229.1, !dbg !1658
  store i32 %mul489.1, ptr %arrayidx496.1, align 4, !dbg !1659
  %arrayidx500.1 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1229.1, !dbg !1660
  %151 = load i32, ptr %arrayidx500.1, align 4, !dbg !1660
  %mul501.1 = shl nsw i32 %151, 4, !dbg !1660
  %152 = load ptr, ptr %pps, align 16, !dbg !1660
  %arrayidx506.1 = getelementptr inbounds i8, ptr %152, i64 112, !dbg !1660
  %153 = load ptr, ptr %arrayidx506.1, align 8, !dbg !1660
  %arrayidx508.1 = getelementptr inbounds i8, ptr %153, i64 %indvars.iv1229.1, !dbg !1660
  %154 = load i8, ptr %arrayidx508.1, align 1, !dbg !1660
  %conv509.1 = zext i8 %154 to i32, !dbg !1660
  %shr510.1 = lshr i32 %conv509.1, 1, !dbg !1660
  %add511.1 = add nsw i32 %shr510.1, %mul501.1, !dbg !1660
  %div520.1 = sdiv i32 %add511.1, %conv509.1, !dbg !1660
  %arrayidx526.1 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 1, i64 %indvars.iv1237, i64 %indvars.iv1229.1, !dbg !1661
  store i32 %div520.1, ptr %arrayidx526.1, align 4, !dbg !1662
  %indvars.iv.next1230.1 = add nuw nsw i64 %indvars.iv1229.1, 1, !dbg !1663
    #dbg_value(i64 %indvars.iv.next1230.1, !1482, !DIExpression(), !1651)
  %exitcond1232.1.not = icmp eq i64 %indvars.iv.next1230.1, 64, !dbg !1664
  br i1 %exitcond1232.1.not, label %for.cond.cleanup475.1, label %for.body476.1, !dbg !1655, !llvm.loop !1665

for.cond.cleanup475.1:                            ; preds = %for.body476.1
    #dbg_value(i64 2, !1480, !DIExpression(), !1650)
  %indvars.iv.next1238 = add nuw nsw i64 %indvars.iv1237, 1, !dbg !1667
    #dbg_value(i64 %indvars.iv.next1238, !1471, !DIExpression(), !1624)
  %exitcond1240.not = icmp eq i64 %indvars.iv.next1238, 6, !dbg !1668
  br i1 %exitcond1240.not, label %for.cond540.preheader, label %for.cond400.preheader, !dbg !1628, !llvm.loop !1669

for.body476:                                      ; preds = %for.cond.cleanup409.3, %for.body476
  %155 = phi ptr [ %.pre1283, %for.cond.cleanup409.3 ], [ %161, %for.body476 ], !dbg !1652
  %indvars.iv1229 = phi i64 [ 0, %for.cond.cleanup409.3 ], [ %indvars.iv.next1230, %for.body476 ]
    #dbg_value(i64 %indvars.iv1229, !1482, !DIExpression(), !1651)
  %arrayidx480 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1229, !dbg !1656
  %156 = load i32, ptr %arrayidx480, align 4, !dbg !1656
  %arrayidx487 = getelementptr inbounds i8, ptr %155, i64 %indvars.iv1229, !dbg !1652
  %157 = load i8, ptr %arrayidx487, align 1, !dbg !1652
  %conv488 = zext i8 %157 to i32, !dbg !1652
  %mul489 = mul nsw i32 %156, %conv488, !dbg !1657
  %158 = load ptr, ptr %dequant8_mf223, align 8, !dbg !1658
  %arrayidx496 = getelementptr inbounds [64 x i32], ptr %158, i64 %indvars.iv1237, i64 %indvars.iv1229, !dbg !1658
  store i32 %mul489, ptr %arrayidx496, align 4, !dbg !1659
  %arrayidx500 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1229, !dbg !1660
  %159 = load i32, ptr %arrayidx500, align 4, !dbg !1660
  %mul501 = shl nsw i32 %159, 4, !dbg !1660
  %160 = load ptr, ptr %pps, align 16, !dbg !1660
  %arrayidx506 = getelementptr inbounds i8, ptr %160, i64 104, !dbg !1660
  %161 = load ptr, ptr %arrayidx506, align 8, !dbg !1660
  %arrayidx508 = getelementptr inbounds i8, ptr %161, i64 %indvars.iv1229, !dbg !1660
  %162 = load i8, ptr %arrayidx508, align 1, !dbg !1660
  %conv509 = zext i8 %162 to i32, !dbg !1660
  %shr510 = lshr i32 %conv509, 1, !dbg !1660
  %add511 = add nsw i32 %shr510, %mul501, !dbg !1660
  %div520 = sdiv i32 %add511, %conv509, !dbg !1660
  %arrayidx526 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 0, i64 %indvars.iv1237, i64 %indvars.iv1229, !dbg !1661
  store i32 %div520, ptr %arrayidx526, align 4, !dbg !1662
  %indvars.iv.next1230 = add nuw nsw i64 %indvars.iv1229, 1, !dbg !1663
    #dbg_value(i64 %indvars.iv.next1230, !1482, !DIExpression(), !1651)
  %exitcond1232.not = icmp eq i64 %indvars.iv.next1230, 64, !dbg !1664
  br i1 %exitcond1232.not, label %for.cond.cleanup475, label %for.body476, !dbg !1655, !llvm.loop !1665

for.cond547.preheader:                            ; preds = %for.cond540.preheader, %if.end795
  %indvars.iv1275 = phi i64 [ 0, %for.cond540.preheader ], [ %indvars.iv.next1276, %if.end795 ]
  %max_qp_err.01186 = phi i32 [ -1, %for.cond540.preheader ], [ %max_qp_err.7, %if.end795 ]
  %max_chroma_qp_err.01185 = phi i32 [ -1, %for.cond540.preheader ], [ %.us-phi1176, %if.end795 ]
    #dbg_value(i64 %indvars.iv1275, !1485, !DIExpression(), !1637)
    #dbg_value(i32 %max_qp_err.01186, !1441, !DIExpression(), !1503)
    #dbg_value(i32 %max_chroma_qp_err.01185, !1442, !DIExpression(), !1503)
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
    #dbg_value(i32 0, !1490, !DIExpression(), !1671)
  br i1 %cmp579, label %for.cond553.preheader.us, label %for.body557

for.cond553.preheader.us:                         ; preds = %for.cond547.preheader, %for.cond.cleanup556.split.us.us
  %indvars.iv1257 = phi i64 [ %indvars.iv.next1258, %for.cond.cleanup556.split.us.us ], [ 0, %for.cond547.preheader ]
  %max_qp_err.11174.us = phi i32 [ %.us-phi1178, %for.cond.cleanup556.split.us.us ], [ %max_qp_err.01186, %for.cond547.preheader ]
  %max_chroma_qp_err.11173.us = phi i32 [ %.us-phi, %for.cond.cleanup556.split.us.us ], [ %max_chroma_qp_err.01185, %for.cond547.preheader ]
    #dbg_value(i64 %indvars.iv1257, !1490, !DIExpression(), !1671)
    #dbg_value(i32 %max_qp_err.11174.us, !1441, !DIExpression(), !1503)
    #dbg_value(i32 %max_chroma_qp_err.11173.us, !1442, !DIExpression(), !1503)
  %arrayidx572.us = getelementptr inbounds [4 x ptr], ptr %unquant4_mf73, i64 0, i64 %indvars.iv1257
  %arrayidx610.us = getelementptr inbounds [4 x ptr], ptr %quant4_mf41, i64 0, i64 %indvars.iv1257
  %arrayidx616.us = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1257
  %164 = load i32, ptr %arrayidx616.us, align 4
  %shl617.us = shl i32 %164, 10
  %arrayidx638.us = getelementptr inbounds [4 x ptr], ptr %quant4_bias129, i64 0, i64 %indvars.iv1257
  %or.cond.us = icmp ult i64 %indvars.iv1257, 2
    #dbg_value(i32 0, !1492, !DIExpression(), !1672)
  br i1 %or.cond.us, label %for.body557.us.us, label %for.body557.us.us.us

for.body557.us.us.us:                             ; preds = %for.cond553.preheader.us, %for.body557.us.us.us
  %indvars.iv1249 = phi i64 [ %indvars.iv.next1250, %for.body557.us.us.us ], [ 0, %for.cond553.preheader.us ]
  %max_chroma_qp_err.21169.us.us.us = phi i32 [ %max_chroma_qp_err.3.us.us.us, %for.body557.us.us.us ], [ %max_chroma_qp_err.11173.us, %for.cond553.preheader.us ]
    #dbg_value(i64 %indvars.iv1249, !1492, !DIExpression(), !1672)
    #dbg_value(i32 poison, !1441, !DIExpression(), !1503)
    #dbg_value(i32 %max_chroma_qp_err.21169.us.us.us, !1442, !DIExpression(), !1503)
  %arrayidx566.us.us.us = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 %indvars.iv1257, i64 %idxprom563, i64 %indvars.iv1249, !dbg !1673
  %165 = load i32, ptr %arrayidx566.us.us.us, align 4, !dbg !1673
  %conv567.us.us.us = sext i32 %165 to i64, !dbg !1673
  %div568.us.us.us = udiv i64 %shl, %conv567.us.us.us, !dbg !1676
  %conv569.us.us.us = trunc nuw i64 %div568.us.us.us to i32, !dbg !1677
  %166 = load ptr, ptr %arrayidx572.us, align 8, !dbg !1678
  %arrayidx576.us.us.us = getelementptr inbounds [16 x i32], ptr %166, i64 %indvars.iv1275, i64 %indvars.iv1249, !dbg !1678
  store i32 %conv569.us.us.us, ptr %arrayidx576.us.us.us, align 4, !dbg !1679
  %shl591.us.us.us = shl i32 %165, %sub590, !dbg !1680
    #dbg_value(i32 poison, !1487, !DIExpression(), !1681)
  %conv607.us.us.us = trunc i32 %shl591.us.us.us to i16, !dbg !1682
  %167 = load ptr, ptr %arrayidx610.us, align 8, !dbg !1683
  %arrayidx614.us.us.us = getelementptr inbounds [16 x i16], ptr %167, i64 %indvars.iv1275, i64 %indvars.iv1249, !dbg !1683
  store i16 %conv607.us.us.us, ptr %arrayidx614.us.us.us, align 2, !dbg !1684
  %shr618.us.us.us = ashr i32 %shl591.us.us.us, 1, !dbg !1685
  %add619.us.us.us = add nsw i32 %shl617.us, %shr618.us.us.us, !dbg !1685
  %div620.us.us.us = sdiv i32 %add619.us.us.us, %shl591.us.us.us, !dbg !1685
  %div621.us.us.us = sdiv i32 32768, %shl591.us.us.us, !dbg !1685
  %div620.div621.us.us.us = tail call i32 @llvm.smin.i32(i32 %div620.us.us.us, i32 %div621.us.us.us), !dbg !1685
  %conv635.us.us.us = trunc i32 %div620.div621.us.us.us to i16, !dbg !1685
  %168 = load ptr, ptr %arrayidx638.us, align 8, !dbg !1686
  %arrayidx642.us.us.us = getelementptr inbounds [16 x i16], ptr %168, i64 %indvars.iv1275, i64 %indvars.iv1249, !dbg !1686
  store i16 %conv635.us.us.us, ptr %arrayidx642.us.us.us, align 2, !dbg !1687
  %cmp643.us.us.us = icmp slt i32 %shl591.us.us.us, 65536, !dbg !1688
  %169 = tail call i32 @llvm.smax.i32(i32 %163, i32 %max_chroma_qp_err.21169.us.us.us), !dbg !1690
  %max_chroma_qp_err.3.us.us.us = select i1 %cmp643.us.us.us, i32 %max_chroma_qp_err.21169.us.us.us, i32 %169, !dbg !1690
    #dbg_value(i32 %max_chroma_qp_err.3.us.us.us, !1442, !DIExpression(), !1503)
  %indvars.iv.next1250 = add nuw nsw i64 %indvars.iv1249, 1, !dbg !1692
    #dbg_value(i64 %indvars.iv.next1250, !1492, !DIExpression(), !1672)
  %exitcond1252.not = icmp eq i64 %indvars.iv.next1250, 16, !dbg !1693
  br i1 %exitcond1252.not, label %for.cond.cleanup556.split.us.us, label %for.body557.us.us.us, !dbg !1694, !llvm.loop !1695

for.body557.us.us:                                ; preds = %for.cond553.preheader.us, %for.body557.us.us
  %indvars.iv1253 = phi i64 [ %indvars.iv.next1254, %for.body557.us.us ], [ 0, %for.cond553.preheader.us ]
  %max_qp_err.21170.us.us = phi i32 [ %spec.select, %for.body557.us.us ], [ %max_qp_err.11174.us, %for.cond553.preheader.us ]
    #dbg_value(i64 %indvars.iv1253, !1492, !DIExpression(), !1672)
    #dbg_value(i32 %max_qp_err.21170.us.us, !1441, !DIExpression(), !1503)
    #dbg_value(i32 poison, !1442, !DIExpression(), !1503)
  %arrayidx566.us.us = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 %indvars.iv1257, i64 %idxprom563, i64 %indvars.iv1253, !dbg !1673
  %170 = load i32, ptr %arrayidx566.us.us, align 4, !dbg !1673
  %conv567.us.us = sext i32 %170 to i64, !dbg !1673
  %div568.us.us = udiv i64 %shl, %conv567.us.us, !dbg !1676
  %conv569.us.us = trunc nuw i64 %div568.us.us to i32, !dbg !1677
  %171 = load ptr, ptr %arrayidx572.us, align 8, !dbg !1678
  %arrayidx576.us.us = getelementptr inbounds [16 x i32], ptr %171, i64 %indvars.iv1275, i64 %indvars.iv1253, !dbg !1678
  store i32 %conv569.us.us, ptr %arrayidx576.us.us, align 4, !dbg !1679
  %shl591.us.us = shl i32 %170, %sub590, !dbg !1680
    #dbg_value(i32 poison, !1487, !DIExpression(), !1681)
  %conv607.us.us = trunc i32 %shl591.us.us to i16, !dbg !1682
  %172 = load ptr, ptr %arrayidx610.us, align 8, !dbg !1683
  %arrayidx614.us.us = getelementptr inbounds [16 x i16], ptr %172, i64 %indvars.iv1275, i64 %indvars.iv1253, !dbg !1683
  store i16 %conv607.us.us, ptr %arrayidx614.us.us, align 2, !dbg !1684
  %shr618.us.us = ashr i32 %shl591.us.us, 1, !dbg !1685
  %add619.us.us = add nsw i32 %shl617.us, %shr618.us.us, !dbg !1685
  %div620.us.us = sdiv i32 %add619.us.us, %shl591.us.us, !dbg !1685
  %div621.us.us = sdiv i32 32768, %shl591.us.us, !dbg !1685
  %div620.div621.us.us = tail call i32 @llvm.smin.i32(i32 %div620.us.us, i32 %div621.us.us), !dbg !1685
  %conv635.us.us = trunc i32 %div620.div621.us.us to i16, !dbg !1685
  %173 = load ptr, ptr %arrayidx638.us, align 8, !dbg !1686
  %arrayidx642.us.us = getelementptr inbounds [16 x i16], ptr %173, i64 %indvars.iv1275, i64 %indvars.iv1253, !dbg !1686
  store i16 %conv635.us.us, ptr %arrayidx642.us.us, align 2, !dbg !1687
  %cmp643.us.us = icmp sgt i32 %shl591.us.us, 65535, !dbg !1688
  %174 = tail call i32 @llvm.smax.i32(i32 %163, i32 %max_qp_err.21170.us.us), !dbg !1697
  %spec.select = select i1 %cmp643.us.us, i32 %174, i32 %max_qp_err.21170.us.us, !dbg !1697
    #dbg_value(i32 %spec.select, !1441, !DIExpression(), !1503)
  %indvars.iv.next1254 = add nuw nsw i64 %indvars.iv1253, 1, !dbg !1692
    #dbg_value(i64 %indvars.iv.next1254, !1492, !DIExpression(), !1672)
  %exitcond1256.not = icmp eq i64 %indvars.iv.next1254, 16, !dbg !1693
  br i1 %exitcond1256.not, label %for.cond.cleanup556.split.us.us, label %for.body557.us.us, !dbg !1694, !llvm.loop !1695

for.cond.cleanup556.split.us.us:                  ; preds = %for.body557.us.us.us, %for.body557.us.us
  %.us-phi = phi i32 [ %max_chroma_qp_err.11173.us, %for.body557.us.us ], [ %max_chroma_qp_err.3.us.us.us, %for.body557.us.us.us ], !dbg !1698
  %.us-phi1178 = phi i32 [ %spec.select, %for.body557.us.us ], [ %max_qp_err.11174.us, %for.body557.us.us.us ], !dbg !1698
  %indvars.iv.next1258 = add nuw nsw i64 %indvars.iv1257, 1, !dbg !1698
    #dbg_value(i64 %indvars.iv.next1258, !1490, !DIExpression(), !1671)
    #dbg_value(i32 poison, !1441, !DIExpression(), !1503)
    #dbg_value(i32 poison, !1442, !DIExpression(), !1503)
  %exitcond1260.not = icmp eq i64 %indvars.iv.next1258, 4, !dbg !1699
  br i1 %exitcond1260.not, label %for.cond.cleanup550, label %for.cond553.preheader.us, !dbg !1700, !llvm.loop !1701

for.cond.cleanup543:                              ; preds = %if.end795
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812, !dbg !1703
  %175 = load i32, ptr %b_lossless, align 4, !dbg !1703
  %tobool800.not = icmp eq i32 %175, 0, !dbg !1705
  br i1 %tobool800.not, label %land.lhs.true801, label %cleanup833, !dbg !1706

for.cond.cleanup550:                              ; preds = %for.body557.3, %for.cond.cleanup556.split.us.us
  %.us-phi1176 = phi i32 [ %.us-phi, %for.cond.cleanup556.split.us.us ], [ %max_chroma_qp_err.3.3, %for.body557.3 ], !dbg !1707
  %.us-phi1177 = phi i32 [ %.us-phi1178, %for.cond.cleanup556.split.us.us ], [ %max_qp_err.3.1, %for.body557.3 ], !dbg !1707
  %176 = load i32, ptr %b_transform_8x8, align 8, !dbg !1707
  %tobool678.not = icmp eq i32 %176, 0, !dbg !1708
  br i1 %tobool678.not, label %if.end795, label %for.cond681.preheader, !dbg !1709

for.cond681.preheader:                            ; preds = %for.cond.cleanup550
  %add694 = add nuw nsw i32 %div558, 24
  %sh_prom695 = zext nneg i32 %add694 to i64
  %shl696 = shl nuw i64 1, %sh_prom695
  %cmp715 = icmp ult i64 %indvars.iv1275, 6
  %shl738 = shl nuw nsw i32 1, %sub578
  %sub726 = sub nsw i32 0, %div558
    #dbg_value(i64 0, !1495, !DIExpression(), !1710)
    #dbg_value(i32 %.us-phi1177, !1441, !DIExpression(), !1503)
    #dbg_value(i32 0, !1498, !DIExpression(), !1711)
  br i1 %cmp715, label %for.body691.us.us, label %for.body691

for.body691.us.us:                                ; preds = %for.cond681.preheader, %for.body691.us.us
  %indvars.iv1268 = phi i64 [ %indvars.iv.next1269, %for.body691.us.us ], [ 0, %for.cond681.preheader ]
  %max_qp_err.51179.us.us = phi i32 [ %max_qp_err.6.us.us, %for.body691.us.us ], [ %.us-phi1177, %for.cond681.preheader ]
    #dbg_value(i64 %indvars.iv1268, !1498, !DIExpression(), !1711)
    #dbg_value(i32 %max_qp_err.51179.us.us, !1441, !DIExpression(), !1503)
  %arrayidx703.us.us = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 0, i64 %idxprom563, i64 %indvars.iv1268, !dbg !1712
  %177 = load i32, ptr %arrayidx703.us.us, align 4, !dbg !1712
  %conv704.us.us = sext i32 %177 to i64, !dbg !1712
  %div705.us.us = udiv i64 %shl696, %conv704.us.us, !dbg !1715
  %conv706.us.us = trunc nuw i64 %div705.us.us to i32, !dbg !1716
  %178 = load ptr, ptr %unquant8_mf240, align 8, !dbg !1717
  %arrayidx713.us.us = getelementptr inbounds [64 x i32], ptr %178, i64 %indvars.iv1275, i64 %indvars.iv1268, !dbg !1717
  store i32 %conv706.us.us, ptr %arrayidx713.us.us, align 4, !dbg !1718
  %shl727.us.us = shl nuw nsw i32 %177, %sub726, !dbg !1719
    #dbg_value(i32 poison, !1487, !DIExpression(), !1681)
  %conv744.us.us = trunc i32 %shl727.us.us to i16, !dbg !1720
  %179 = load ptr, ptr %quant8_mf206, align 8, !dbg !1721
  %arrayidx751.us.us = getelementptr inbounds [64 x i16], ptr %179, i64 %indvars.iv1275, i64 %indvars.iv1268, !dbg !1721
  store i16 %conv744.us.us, ptr %arrayidx751.us.us, align 2, !dbg !1722
  %shr755.us.us = ashr i32 %shl727.us.us, 1, !dbg !1723
  %add756.us.us = add nsw i32 %shl754.us, %shr755.us.us, !dbg !1723
  %div757.us.us = sdiv i32 %add756.us.us, %shl727.us.us, !dbg !1723
  %div758.us.us = sdiv i32 32768, %shl727.us.us, !dbg !1723
  %div757.div758.us.us = tail call i32 @llvm.smin.i32(i32 %div757.us.us, i32 %div758.us.us), !dbg !1723
  %conv772.us.us = trunc i32 %div757.div758.us.us to i16, !dbg !1723
  %180 = load ptr, ptr %quant8_bias297, align 8, !dbg !1724
  %arrayidx779.us.us = getelementptr inbounds [64 x i16], ptr %180, i64 %indvars.iv1275, i64 %indvars.iv1268, !dbg !1724
  store i16 %conv772.us.us, ptr %arrayidx779.us.us, align 2, !dbg !1725
  %cmp780.us.us = icmp sgt i32 %shl727.us.us, 65535, !dbg !1726
  %181 = tail call i32 @llvm.smax.i32(i32 %163, i32 %max_qp_err.51179.us.us), !dbg !1728
  %max_qp_err.6.us.us = select i1 %cmp780.us.us, i32 %181, i32 %max_qp_err.51179.us.us, !dbg !1728
    #dbg_value(i32 %max_qp_err.6.us.us, !1441, !DIExpression(), !1503)
  %indvars.iv.next1269 = add nuw nsw i64 %indvars.iv1268, 1, !dbg !1729
    #dbg_value(i64 %indvars.iv.next1269, !1498, !DIExpression(), !1711)
  %exitcond1271.not = icmp eq i64 %indvars.iv.next1269, 64, !dbg !1730
  br i1 %exitcond1271.not, label %for.body691.us.us.1, label %for.body691.us.us, !dbg !1731, !llvm.loop !1732

for.body691.us.us.1:                              ; preds = %for.body691.us.us, %for.body691.us.us.1
  %indvars.iv1268.1 = phi i64 [ %indvars.iv.next1269.1, %for.body691.us.us.1 ], [ 0, %for.body691.us.us ]
  %max_qp_err.51179.us.us.1 = phi i32 [ %max_qp_err.6.us.us.1, %for.body691.us.us.1 ], [ %max_qp_err.6.us.us, %for.body691.us.us ]
    #dbg_value(i64 %indvars.iv1268.1, !1498, !DIExpression(), !1711)
    #dbg_value(i32 %max_qp_err.51179.us.us.1, !1441, !DIExpression(), !1503)
  %arrayidx703.us.us.1 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 1, i64 %idxprom563, i64 %indvars.iv1268.1, !dbg !1712
  %182 = load i32, ptr %arrayidx703.us.us.1, align 4, !dbg !1712
  %conv704.us.us.1 = sext i32 %182 to i64, !dbg !1712
  %div705.us.us.1 = udiv i64 %shl696, %conv704.us.us.1, !dbg !1715
  %conv706.us.us.1 = trunc nuw i64 %div705.us.us.1 to i32, !dbg !1716
  %183 = load ptr, ptr %arrayidx709.us.1, align 8, !dbg !1717
  %arrayidx713.us.us.1 = getelementptr inbounds [64 x i32], ptr %183, i64 %indvars.iv1275, i64 %indvars.iv1268.1, !dbg !1717
  store i32 %conv706.us.us.1, ptr %arrayidx713.us.us.1, align 4, !dbg !1718
  %shl727.us.us.1 = shl nuw nsw i32 %182, %sub726, !dbg !1719
    #dbg_value(i32 poison, !1487, !DIExpression(), !1681)
  %conv744.us.us.1 = trunc i32 %shl727.us.us.1 to i16, !dbg !1720
  %184 = load ptr, ptr %arrayidx747.us.1, align 8, !dbg !1721
  %arrayidx751.us.us.1 = getelementptr inbounds [64 x i16], ptr %184, i64 %indvars.iv1275, i64 %indvars.iv1268.1, !dbg !1721
  store i16 %conv744.us.us.1, ptr %arrayidx751.us.us.1, align 2, !dbg !1722
  %shr755.us.us.1 = ashr i32 %shl727.us.us.1, 1, !dbg !1723
  %add756.us.us.1 = add nsw i32 %shl754.us.1, %shr755.us.us.1, !dbg !1723
  %div757.us.us.1 = sdiv i32 %add756.us.us.1, %shl727.us.us.1, !dbg !1723
  %div758.us.us.1 = sdiv i32 32768, %shl727.us.us.1, !dbg !1723
  %div757.div758.us.us.1 = tail call i32 @llvm.smin.i32(i32 %div757.us.us.1, i32 %div758.us.us.1), !dbg !1723
  %conv772.us.us.1 = trunc i32 %div757.div758.us.us.1 to i16, !dbg !1723
  %185 = load ptr, ptr %arrayidx775.us.1, align 8, !dbg !1724
  %arrayidx779.us.us.1 = getelementptr inbounds [64 x i16], ptr %185, i64 %indvars.iv1275, i64 %indvars.iv1268.1, !dbg !1724
  store i16 %conv772.us.us.1, ptr %arrayidx779.us.us.1, align 2, !dbg !1725
  %cmp780.us.us.1 = icmp sgt i32 %shl727.us.us.1, 65535, !dbg !1726
  %186 = tail call i32 @llvm.smax.i32(i32 %163, i32 %max_qp_err.51179.us.us.1), !dbg !1728
  %max_qp_err.6.us.us.1 = select i1 %cmp780.us.us.1, i32 %186, i32 %max_qp_err.51179.us.us.1, !dbg !1728
    #dbg_value(i32 %max_qp_err.6.us.us.1, !1441, !DIExpression(), !1503)
  %indvars.iv.next1269.1 = add nuw nsw i64 %indvars.iv1268.1, 1, !dbg !1729
    #dbg_value(i64 %indvars.iv.next1269.1, !1498, !DIExpression(), !1711)
  %exitcond1271.1.not = icmp eq i64 %indvars.iv.next1269.1, 64, !dbg !1730
  br i1 %exitcond1271.1.not, label %if.end795, label %for.body691.us.us.1, !dbg !1731, !llvm.loop !1732

for.body557.1:                                    ; preds = %for.body557, %for.body557.1
  %indvars.iv1241.1 = phi i64 [ %indvars.iv.next1242.1, %for.body557.1 ], [ 0, %for.body557 ]
  %max_qp_err.21170.1 = phi i32 [ %max_qp_err.3.1, %for.body557.1 ], [ %max_qp_err.3, %for.body557 ]
    #dbg_value(i64 %indvars.iv1241.1, !1492, !DIExpression(), !1672)
    #dbg_value(i32 %max_qp_err.21170.1, !1441, !DIExpression(), !1503)
    #dbg_value(i32 %max_chroma_qp_err.01185, !1442, !DIExpression(), !1503)
  %arrayidx566.1 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 1, i64 %idxprom563, i64 %indvars.iv1241.1, !dbg !1673
  %187 = load i32, ptr %arrayidx566.1, align 4, !dbg !1673
  %conv567.1 = sext i32 %187 to i64, !dbg !1673
  %div568.1 = udiv i64 %shl, %conv567.1, !dbg !1676
  %conv569.1 = trunc i64 %div568.1 to i32, !dbg !1677
  %188 = load ptr, ptr %arrayidx572.1, align 8, !dbg !1678
  %arrayidx576.1 = getelementptr inbounds [16 x i32], ptr %188, i64 %indvars.iv1275, i64 %indvars.iv1241.1, !dbg !1678
  store i32 %conv569.1, ptr %arrayidx576.1, align 4, !dbg !1679
  %add603.1 = add nsw i32 %187, %shl602, !dbg !1680
  %shr606.1 = ashr i32 %add603.1, %sub578, !dbg !1680
    #dbg_value(i32 %shr606.1, !1487, !DIExpression(), !1681)
  %conv607.1 = trunc i32 %shr606.1 to i16, !dbg !1682
  %189 = load ptr, ptr %arrayidx610.1, align 8, !dbg !1683
  %arrayidx614.1 = getelementptr inbounds [16 x i16], ptr %189, i64 %indvars.iv1275, i64 %indvars.iv1241.1, !dbg !1683
  store i16 %conv607.1, ptr %arrayidx614.1, align 2, !dbg !1684
  %shr618.1 = ashr i32 %shr606.1, 1, !dbg !1685
  %add619.1 = add nsw i32 %shl617.1, %shr618.1, !dbg !1685
  %div620.1 = sdiv i32 %add619.1, %shr606.1, !dbg !1685
  %div621.1 = sdiv i32 32768, %shr606.1, !dbg !1685
  %div620.div621.1 = tail call i32 @llvm.smin.i32(i32 %div620.1, i32 %div621.1), !dbg !1685
  %conv635.1 = trunc i32 %div620.div621.1 to i16, !dbg !1685
  %190 = load ptr, ptr %arrayidx638.1, align 8, !dbg !1686
  %arrayidx642.1 = getelementptr inbounds [16 x i16], ptr %190, i64 %indvars.iv1275, i64 %indvars.iv1241.1, !dbg !1686
  store i16 %conv635.1, ptr %arrayidx642.1, align 2, !dbg !1687
  %cmp643.1 = icmp sgt i32 %shr606.1, 65535, !dbg !1688
  %191 = sext i32 %max_qp_err.21170.1 to i64
  %cmp646.1 = icmp sgt i64 %indvars.iv1275, %191
  %or.cond1142.1 = select i1 %cmp643.1, i1 %cmp646.1, i1 false, !dbg !1697
  %max_qp_err.3.1 = select i1 %or.cond1142.1, i32 %163, i32 %max_qp_err.21170.1, !dbg !1697
    #dbg_value(i32 %max_qp_err.3.1, !1441, !DIExpression(), !1503)
  %indvars.iv.next1242.1 = add nuw nsw i64 %indvars.iv1241.1, 1, !dbg !1692
    #dbg_value(i64 %indvars.iv.next1242.1, !1492, !DIExpression(), !1672)
  %exitcond1244.1.not = icmp eq i64 %indvars.iv.next1242.1, 16, !dbg !1693
  br i1 %exitcond1244.1.not, label %for.body557.2, label %for.body557.1, !dbg !1694, !llvm.loop !1695

for.body557.2:                                    ; preds = %for.body557.1, %for.body557.2
  %indvars.iv1241.2 = phi i64 [ %indvars.iv.next1242.2, %for.body557.2 ], [ 0, %for.body557.1 ]
  %max_chroma_qp_err.21169.2 = phi i32 [ %max_chroma_qp_err.3.2, %for.body557.2 ], [ %max_chroma_qp_err.01185, %for.body557.1 ]
    #dbg_value(i64 %indvars.iv1241.2, !1492, !DIExpression(), !1672)
    #dbg_value(i32 %max_qp_err.3.1, !1441, !DIExpression(), !1503)
    #dbg_value(i32 %max_chroma_qp_err.21169.2, !1442, !DIExpression(), !1503)
  %arrayidx566.2 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 2, i64 %idxprom563, i64 %indvars.iv1241.2, !dbg !1673
  %192 = load i32, ptr %arrayidx566.2, align 4, !dbg !1673
  %conv567.2 = sext i32 %192 to i64, !dbg !1673
  %div568.2 = udiv i64 %shl, %conv567.2, !dbg !1676
  %conv569.2 = trunc i64 %div568.2 to i32, !dbg !1677
  %193 = load ptr, ptr %arrayidx572.2, align 8, !dbg !1678
  %arrayidx576.2 = getelementptr inbounds [16 x i32], ptr %193, i64 %indvars.iv1275, i64 %indvars.iv1241.2, !dbg !1678
  store i32 %conv569.2, ptr %arrayidx576.2, align 4, !dbg !1679
  %add603.2 = add nsw i32 %192, %shl602, !dbg !1680
  %shr606.2 = ashr i32 %add603.2, %sub578, !dbg !1680
    #dbg_value(i32 %shr606.2, !1487, !DIExpression(), !1681)
  %conv607.2 = trunc i32 %shr606.2 to i16, !dbg !1682
  %194 = load ptr, ptr %arrayidx610.2, align 8, !dbg !1683
  %arrayidx614.2 = getelementptr inbounds [16 x i16], ptr %194, i64 %indvars.iv1275, i64 %indvars.iv1241.2, !dbg !1683
  store i16 %conv607.2, ptr %arrayidx614.2, align 2, !dbg !1684
  %shr618.2 = ashr i32 %shr606.2, 1, !dbg !1685
  %add619.2 = add nsw i32 %shr618.2, 21504, !dbg !1685
  %div620.2 = sdiv i32 %add619.2, %shr606.2, !dbg !1685
  %div621.2 = sdiv i32 32768, %shr606.2, !dbg !1685
  %div620.div621.2 = tail call i32 @llvm.smin.i32(i32 %div620.2, i32 %div621.2), !dbg !1685
  %conv635.2 = trunc i32 %div620.div621.2 to i16, !dbg !1685
  %195 = load ptr, ptr %arrayidx638.2, align 8, !dbg !1686
  %arrayidx642.2 = getelementptr inbounds [16 x i16], ptr %195, i64 %indvars.iv1275, i64 %indvars.iv1241.2, !dbg !1686
  store i16 %conv635.2, ptr %arrayidx642.2, align 2, !dbg !1687
  %cmp643.2 = icmp slt i32 %shr606.2, 65536, !dbg !1688
  %196 = sext i32 %max_chroma_qp_err.21169.2 to i64
  %cmp658.2 = icmp sle i64 %indvars.iv1275, %196
  %or.cond1144.2 = select i1 %cmp643.2, i1 true, i1 %cmp658.2, !dbg !1690
  %max_chroma_qp_err.3.2 = select i1 %or.cond1144.2, i32 %max_chroma_qp_err.21169.2, i32 %163, !dbg !1690
    #dbg_value(i32 %max_chroma_qp_err.3.2, !1442, !DIExpression(), !1503)
  %indvars.iv.next1242.2 = add nuw nsw i64 %indvars.iv1241.2, 1, !dbg !1692
    #dbg_value(i64 %indvars.iv.next1242.2, !1492, !DIExpression(), !1672)
  %exitcond1244.2.not = icmp eq i64 %indvars.iv.next1242.2, 16, !dbg !1693
  br i1 %exitcond1244.2.not, label %for.body557.3, label %for.body557.2, !dbg !1694, !llvm.loop !1695

for.body557.3:                                    ; preds = %for.body557.2, %for.body557.3
  %indvars.iv1241.3 = phi i64 [ %indvars.iv.next1242.3, %for.body557.3 ], [ 0, %for.body557.2 ]
  %max_chroma_qp_err.21169.3 = phi i32 [ %max_chroma_qp_err.3.3, %for.body557.3 ], [ %max_chroma_qp_err.3.2, %for.body557.2 ]
    #dbg_value(i64 %indvars.iv1241.3, !1492, !DIExpression(), !1672)
    #dbg_value(i32 %max_qp_err.3.1, !1441, !DIExpression(), !1503)
    #dbg_value(i32 %max_chroma_qp_err.21169.3, !1442, !DIExpression(), !1503)
  %arrayidx566.3 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 3, i64 %idxprom563, i64 %indvars.iv1241.3, !dbg !1673
  %197 = load i32, ptr %arrayidx566.3, align 4, !dbg !1673
  %conv567.3 = sext i32 %197 to i64, !dbg !1673
  %div568.3 = udiv i64 %shl, %conv567.3, !dbg !1676
  %conv569.3 = trunc i64 %div568.3 to i32, !dbg !1677
  %198 = load ptr, ptr %arrayidx572.3, align 8, !dbg !1678
  %arrayidx576.3 = getelementptr inbounds [16 x i32], ptr %198, i64 %indvars.iv1275, i64 %indvars.iv1241.3, !dbg !1678
  store i32 %conv569.3, ptr %arrayidx576.3, align 4, !dbg !1679
  %add603.3 = add nsw i32 %197, %shl602, !dbg !1680
  %shr606.3 = ashr i32 %add603.3, %sub578, !dbg !1680
    #dbg_value(i32 %shr606.3, !1487, !DIExpression(), !1681)
  %conv607.3 = trunc i32 %shr606.3 to i16, !dbg !1682
  %199 = load ptr, ptr %arrayidx610.3, align 8, !dbg !1683
  %arrayidx614.3 = getelementptr inbounds [16 x i16], ptr %199, i64 %indvars.iv1275, i64 %indvars.iv1241.3, !dbg !1683
  store i16 %conv607.3, ptr %arrayidx614.3, align 2, !dbg !1684
  %shr618.3 = ashr i32 %shr606.3, 1, !dbg !1685
  %add619.3 = add nsw i32 %shr618.3, 11264, !dbg !1685
  %div620.3 = sdiv i32 %add619.3, %shr606.3, !dbg !1685
  %div621.3 = sdiv i32 32768, %shr606.3, !dbg !1685
  %div620.div621.3 = tail call i32 @llvm.smin.i32(i32 %div620.3, i32 %div621.3), !dbg !1685
  %conv635.3 = trunc i32 %div620.div621.3 to i16, !dbg !1685
  %200 = load ptr, ptr %arrayidx638.3, align 8, !dbg !1686
  %arrayidx642.3 = getelementptr inbounds [16 x i16], ptr %200, i64 %indvars.iv1275, i64 %indvars.iv1241.3, !dbg !1686
  store i16 %conv635.3, ptr %arrayidx642.3, align 2, !dbg !1687
  %cmp643.3 = icmp slt i32 %shr606.3, 65536, !dbg !1688
  %201 = sext i32 %max_chroma_qp_err.21169.3 to i64
  %cmp658.3 = icmp sle i64 %indvars.iv1275, %201
  %or.cond1144.3 = select i1 %cmp643.3, i1 true, i1 %cmp658.3, !dbg !1690
  %max_chroma_qp_err.3.3 = select i1 %or.cond1144.3, i32 %max_chroma_qp_err.21169.3, i32 %163, !dbg !1690
    #dbg_value(i32 %max_chroma_qp_err.3.3, !1442, !DIExpression(), !1503)
  %indvars.iv.next1242.3 = add nuw nsw i64 %indvars.iv1241.3, 1, !dbg !1692
    #dbg_value(i64 %indvars.iv.next1242.3, !1492, !DIExpression(), !1672)
  %exitcond1244.3.not = icmp eq i64 %indvars.iv.next1242.3, 16, !dbg !1693
  br i1 %exitcond1244.3.not, label %for.cond.cleanup550, label %for.body557.3, !dbg !1694, !llvm.loop !1695

for.body557:                                      ; preds = %for.cond547.preheader, %for.body557
  %indvars.iv1241 = phi i64 [ %indvars.iv.next1242, %for.body557 ], [ 0, %for.cond547.preheader ]
  %max_qp_err.21170 = phi i32 [ %max_qp_err.3, %for.body557 ], [ %max_qp_err.01186, %for.cond547.preheader ]
    #dbg_value(i64 %indvars.iv1241, !1492, !DIExpression(), !1672)
    #dbg_value(i32 %max_qp_err.21170, !1441, !DIExpression(), !1503)
    #dbg_value(i32 %max_chroma_qp_err.01185, !1442, !DIExpression(), !1503)
  %arrayidx566 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 0, i64 %idxprom563, i64 %indvars.iv1241, !dbg !1673
  %202 = load i32, ptr %arrayidx566, align 4, !dbg !1673
  %conv567 = sext i32 %202 to i64, !dbg !1673
  %div568 = udiv i64 %shl, %conv567, !dbg !1676
  %conv569 = trunc i64 %div568 to i32, !dbg !1677
  %203 = load ptr, ptr %unquant4_mf73, align 8, !dbg !1678
  %arrayidx576 = getelementptr inbounds [16 x i32], ptr %203, i64 %indvars.iv1275, i64 %indvars.iv1241, !dbg !1678
  store i32 %conv569, ptr %arrayidx576, align 4, !dbg !1679
  %add603 = add nsw i32 %202, %shl602, !dbg !1680
  %shr606 = ashr i32 %add603, %sub578, !dbg !1680
    #dbg_value(i32 %shr606, !1487, !DIExpression(), !1681)
  %conv607 = trunc i32 %shr606 to i16, !dbg !1682
  %204 = load ptr, ptr %quant4_mf41, align 8, !dbg !1683
  %arrayidx614 = getelementptr inbounds [16 x i16], ptr %204, i64 %indvars.iv1275, i64 %indvars.iv1241, !dbg !1683
  store i16 %conv607, ptr %arrayidx614, align 2, !dbg !1684
  %shr618 = ashr i32 %shr606, 1, !dbg !1685
  %add619 = add nsw i32 %shl617, %shr618, !dbg !1685
  %div620 = sdiv i32 %add619, %shr606, !dbg !1685
  %div621 = sdiv i32 32768, %shr606, !dbg !1685
  %div620.div621 = tail call i32 @llvm.smin.i32(i32 %div620, i32 %div621), !dbg !1685
  %conv635 = trunc i32 %div620.div621 to i16, !dbg !1685
  %205 = load ptr, ptr %quant4_bias129, align 8, !dbg !1686
  %arrayidx642 = getelementptr inbounds [16 x i16], ptr %205, i64 %indvars.iv1275, i64 %indvars.iv1241, !dbg !1686
  store i16 %conv635, ptr %arrayidx642, align 2, !dbg !1687
  %cmp643 = icmp sgt i32 %shr606, 65535, !dbg !1688
  %206 = sext i32 %max_qp_err.21170 to i64
  %cmp646 = icmp sgt i64 %indvars.iv1275, %206
  %or.cond1142 = select i1 %cmp643, i1 %cmp646, i1 false, !dbg !1697
  %max_qp_err.3 = select i1 %or.cond1142, i32 %163, i32 %max_qp_err.21170, !dbg !1697
    #dbg_value(i32 %max_qp_err.3, !1441, !DIExpression(), !1503)
  %indvars.iv.next1242 = add nuw nsw i64 %indvars.iv1241, 1, !dbg !1692
    #dbg_value(i64 %indvars.iv.next1242, !1492, !DIExpression(), !1672)
  %exitcond1244.not = icmp eq i64 %indvars.iv.next1242, 16, !dbg !1693
  br i1 %exitcond1244.not, label %for.body557.1, label %for.body557, !dbg !1694, !llvm.loop !1695

for.body691.1:                                    ; preds = %for.body691, %for.body691.1
  %indvars.iv1261.1 = phi i64 [ %indvars.iv.next1262.1, %for.body691.1 ], [ 0, %for.body691 ]
  %max_qp_err.51179.1 = phi i32 [ %max_qp_err.6.1, %for.body691.1 ], [ %max_qp_err.6, %for.body691 ]
    #dbg_value(i64 %indvars.iv1261.1, !1498, !DIExpression(), !1711)
    #dbg_value(i32 %max_qp_err.51179.1, !1441, !DIExpression(), !1503)
  %arrayidx703.1 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 1, i64 %idxprom563, i64 %indvars.iv1261.1, !dbg !1712
  %207 = load i32, ptr %arrayidx703.1, align 4, !dbg !1712
  %conv704.1 = sext i32 %207 to i64, !dbg !1712
  %div705.1 = udiv i64 %shl696, %conv704.1, !dbg !1715
  %conv706.1 = trunc i64 %div705.1 to i32, !dbg !1716
  %208 = load ptr, ptr %arrayidx709.1, align 8, !dbg !1717
  %arrayidx713.1 = getelementptr inbounds [64 x i32], ptr %208, i64 %indvars.iv1275, i64 %indvars.iv1261.1, !dbg !1717
  store i32 %conv706.1, ptr %arrayidx713.1, align 4, !dbg !1718
  %add739.1 = add nsw i32 %207, %shl738, !dbg !1719
  %shr741.1 = ashr i32 %add739.1, %div558, !dbg !1719
    #dbg_value(i32 %shr741.1, !1487, !DIExpression(), !1681)
  %conv744.1 = trunc i32 %shr741.1 to i16, !dbg !1720
  %209 = load ptr, ptr %arrayidx747.1, align 8, !dbg !1721
  %arrayidx751.1 = getelementptr inbounds [64 x i16], ptr %209, i64 %indvars.iv1275, i64 %indvars.iv1261.1, !dbg !1721
  store i16 %conv744.1, ptr %arrayidx751.1, align 2, !dbg !1722
  %shr755.1 = ashr i32 %shr741.1, 1, !dbg !1723
  %add756.1 = add nsw i32 %shl754.1, %shr755.1, !dbg !1723
  %div757.1 = sdiv i32 %add756.1, %shr741.1, !dbg !1723
  %div758.1 = sdiv i32 32768, %shr741.1, !dbg !1723
  %div757.div758.1 = tail call i32 @llvm.smin.i32(i32 %div757.1, i32 %div758.1), !dbg !1723
  %conv772.1 = trunc i32 %div757.div758.1 to i16, !dbg !1723
  %210 = load ptr, ptr %arrayidx775.1, align 8, !dbg !1724
  %arrayidx779.1 = getelementptr inbounds [64 x i16], ptr %210, i64 %indvars.iv1275, i64 %indvars.iv1261.1, !dbg !1724
  store i16 %conv772.1, ptr %arrayidx779.1, align 2, !dbg !1725
  %cmp780.1 = icmp sgt i32 %shr741.1, 65535, !dbg !1726
  %211 = tail call i32 @llvm.smax.i32(i32 %163, i32 %max_qp_err.51179.1), !dbg !1728
  %max_qp_err.6.1 = select i1 %cmp780.1, i32 %211, i32 %max_qp_err.51179.1, !dbg !1728
    #dbg_value(i32 %max_qp_err.6.1, !1441, !DIExpression(), !1503)
  %indvars.iv.next1262.1 = add nuw nsw i64 %indvars.iv1261.1, 1, !dbg !1729
    #dbg_value(i64 %indvars.iv.next1262.1, !1498, !DIExpression(), !1711)
  %exitcond1264.1.not = icmp eq i64 %indvars.iv.next1262.1, 64, !dbg !1730
  br i1 %exitcond1264.1.not, label %if.end795, label %for.body691.1, !dbg !1731, !llvm.loop !1732

for.body691:                                      ; preds = %for.cond681.preheader, %for.body691
  %indvars.iv1261 = phi i64 [ %indvars.iv.next1262, %for.body691 ], [ 0, %for.cond681.preheader ]
  %max_qp_err.51179 = phi i32 [ %max_qp_err.6, %for.body691 ], [ %.us-phi1177, %for.cond681.preheader ]
    #dbg_value(i64 %indvars.iv1261, !1498, !DIExpression(), !1711)
    #dbg_value(i32 %max_qp_err.51179, !1441, !DIExpression(), !1503)
  %arrayidx703 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 0, i64 %idxprom563, i64 %indvars.iv1261, !dbg !1712
  %212 = load i32, ptr %arrayidx703, align 4, !dbg !1712
  %conv704 = sext i32 %212 to i64, !dbg !1712
  %div705 = udiv i64 %shl696, %conv704, !dbg !1715
  %conv706 = trunc i64 %div705 to i32, !dbg !1716
  %213 = load ptr, ptr %unquant8_mf240, align 8, !dbg !1717
  %arrayidx713 = getelementptr inbounds [64 x i32], ptr %213, i64 %indvars.iv1275, i64 %indvars.iv1261, !dbg !1717
  store i32 %conv706, ptr %arrayidx713, align 4, !dbg !1718
  %add739 = add nsw i32 %212, %shl738, !dbg !1719
  %shr741 = ashr i32 %add739, %div558, !dbg !1719
    #dbg_value(i32 %shr741, !1487, !DIExpression(), !1681)
  %conv744 = trunc i32 %shr741 to i16, !dbg !1720
  %214 = load ptr, ptr %quant8_mf206, align 8, !dbg !1721
  %arrayidx751 = getelementptr inbounds [64 x i16], ptr %214, i64 %indvars.iv1275, i64 %indvars.iv1261, !dbg !1721
  store i16 %conv744, ptr %arrayidx751, align 2, !dbg !1722
  %shr755 = ashr i32 %shr741, 1, !dbg !1723
  %add756 = add nsw i32 %shl754, %shr755, !dbg !1723
  %div757 = sdiv i32 %add756, %shr741, !dbg !1723
  %div758 = sdiv i32 32768, %shr741, !dbg !1723
  %div757.div758 = tail call i32 @llvm.smin.i32(i32 %div757, i32 %div758), !dbg !1723
  %conv772 = trunc i32 %div757.div758 to i16, !dbg !1723
  %215 = load ptr, ptr %quant8_bias297, align 8, !dbg !1724
  %arrayidx779 = getelementptr inbounds [64 x i16], ptr %215, i64 %indvars.iv1275, i64 %indvars.iv1261, !dbg !1724
  store i16 %conv772, ptr %arrayidx779, align 2, !dbg !1725
  %cmp780 = icmp sgt i32 %shr741, 65535, !dbg !1726
  %216 = tail call i32 @llvm.smax.i32(i32 %163, i32 %max_qp_err.51179), !dbg !1728
  %max_qp_err.6 = select i1 %cmp780, i32 %216, i32 %max_qp_err.51179, !dbg !1728
    #dbg_value(i32 %max_qp_err.6, !1441, !DIExpression(), !1503)
  %indvars.iv.next1262 = add nuw nsw i64 %indvars.iv1261, 1, !dbg !1729
    #dbg_value(i64 %indvars.iv.next1262, !1498, !DIExpression(), !1711)
  %exitcond1264.not = icmp eq i64 %indvars.iv.next1262, 64, !dbg !1730
  br i1 %exitcond1264.not, label %for.body691.1, label %for.body691, !dbg !1731, !llvm.loop !1732

if.end795:                                        ; preds = %for.body691.1, %for.body691.us.us.1, %for.cond.cleanup550
  %max_qp_err.7 = phi i32 [ %.us-phi1177, %for.cond.cleanup550 ], [ %max_qp_err.6.us.us.1, %for.body691.us.us.1 ], [ %max_qp_err.6.1, %for.body691.1 ], !dbg !1734
    #dbg_value(i32 %max_qp_err.7, !1441, !DIExpression(), !1503)
  %indvars.iv.next1276 = add nuw nsw i64 %indvars.iv1275, 1, !dbg !1735
    #dbg_value(i64 %indvars.iv.next1276, !1485, !DIExpression(), !1637)
    #dbg_value(i32 %.us-phi1176, !1442, !DIExpression(), !1503)
  %exitcond1278.not = icmp eq i64 %indvars.iv.next1276, 52, !dbg !1736
  br i1 %exitcond1278.not, label %for.cond.cleanup543, label %for.cond547.preheader, !dbg !1638, !llvm.loop !1737

land.lhs.true801:                                 ; preds = %for.cond.cleanup543
  %i_qp_min = getelementptr inbounds i8, ptr %h, i64 496, !dbg !1739
  %217 = load i32, ptr %i_qp_min, align 8, !dbg !1739
  %cmp803.not = icmp slt i32 %max_qp_err.7, %217, !dbg !1740
  br i1 %cmp803.not, label %land.lhs.true814, label %if.then805, !dbg !1741

if.then805:                                       ; preds = %land.lhs.true801
  %add806 = add nsw i32 %max_qp_err.7, 1, !dbg !1742
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %add806) #9, !dbg !1744
  %218 = load i32, ptr %i_qp_min, align 8, !dbg !1745
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %218) #9, !dbg !1746
  br label %cleanup833, !dbg !1747

land.lhs.true814:                                 ; preds = %land.lhs.true801
  %chroma_qp_table = getelementptr inbounds i8, ptr %h, i64 7216, !dbg !1748
  %219 = load ptr, ptr %chroma_qp_table, align 16, !dbg !1748
  %idxprom818 = sext i32 %217 to i64, !dbg !1750
  %arrayidx819 = getelementptr inbounds i8, ptr %219, i64 %idxprom818, !dbg !1750
  %220 = load i8, ptr %arrayidx819, align 1, !dbg !1750
  %conv820 = zext i8 %220 to i32, !dbg !1750
  %cmp821.not = icmp slt i32 %.us-phi1176, %conv820, !dbg !1751
  br i1 %cmp821.not, label %cleanup833, label %if.then823, !dbg !1752

if.then823:                                       ; preds = %land.lhs.true814
  %add824 = add nuw nsw i32 %.us-phi1176, 1, !dbg !1753
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %add824) #9, !dbg !1755
  %221 = load ptr, ptr %chroma_qp_table, align 16, !dbg !1756
  %222 = load i32, ptr %i_qp_min, align 8, !dbg !1757
  %idxprom829 = sext i32 %222 to i64, !dbg !1758
  %arrayidx830 = getelementptr inbounds i8, ptr %221, i64 %idxprom829, !dbg !1758
  %223 = load i8, ptr %arrayidx830, align 1, !dbg !1758
  %conv831 = zext i8 %223 to i32, !dbg !1758
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %conv831) #9, !dbg !1759
  br label %cleanup833, !dbg !1760

fail:                                             ; preds = %entry, %do.body50, %do.body67, %do.body123, %do.body.1, %do.body50.1, %do.body67.1, %do.body123.1, %do.body.2, %do.body50.2, %do.body67.2, %do.body123.2, %do.body.3, %do.body50.3, %do.body67.3, %do.body123.3, %for.inc143.3, %do.body217, %do.body234, %do.body291, %do.body200.1, %do.body217.1, %do.body234.1, %do.body291.1
    #dbg_label(!1501, !1761)
  tail call void @x264_cqm_delete(ptr noundef nonnull %h), !dbg !1762
  br label %cleanup833, !dbg !1763

cleanup833:                                       ; preds = %for.cond.cleanup543, %land.lhs.true814, %fail, %if.then823, %if.then805
  %retval.0 = phi i32 [ -1, %fail ], [ -1, %if.then823 ], [ -1, %if.then805 ], [ 0, %land.lhs.true814 ], [ 0, %for.cond.cleanup543 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %deadzone) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 3072, ptr nonnull %quant8_mf) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %quant4_mf) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %def_dequant8) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %def_dequant4) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %def_quant8) #9, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %def_quant4) #9, !dbg !1764
  ret i32 %retval.0, !dbg !1764
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !1765 ptr @x264_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !1768 void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_cqm_delete(ptr nocapture noundef readonly %h) local_unnamed_addr #0 !dbg !1771 {
for.body3.lr.ph.1:
    #dbg_value(ptr %h, !1775, !DIExpression(), !1786)
    #dbg_value(i32 0, !1776, !DIExpression(), !1787)
  %quant4_mf = getelementptr inbounds i8, ptr %h, i64 3440
  %dequant4_mf = getelementptr inbounds i8, ptr %h, i64 3344
  %unquant4_mf = getelementptr inbounds i8, ptr %h, i64 3392
  %quant4_bias = getelementptr inbounds i8, ptr %h, i64 3488
    #dbg_value(i64 0, !1776, !DIExpression(), !1787)
    #dbg_value(i32 0, !1778, !DIExpression(), !1788)
  %0 = load ptr, ptr %quant4_mf, align 8, !dbg !1789
  tail call void @x264_free(ptr noundef %0) #9, !dbg !1789
  %1 = load ptr, ptr %dequant4_mf, align 8, !dbg !1789
  tail call void @x264_free(ptr noundef %1) #9, !dbg !1789
  %2 = load ptr, ptr %unquant4_mf, align 8, !dbg !1789
  tail call void @x264_free(ptr noundef %2) #9, !dbg !1789
  %3 = load ptr, ptr %quant4_bias, align 8, !dbg !1792
  tail call void @x264_free(ptr noundef %3) #9, !dbg !1792
    #dbg_value(i64 1, !1776, !DIExpression(), !1787)
  %arrayidx.1 = getelementptr inbounds i8, ptr %h, i64 3448, !dbg !1794
  %4 = load ptr, ptr %arrayidx.1, align 8
    #dbg_value(i64 0, !1778, !DIExpression(), !1788)
  %5 = load ptr, ptr %quant4_mf, align 8, !dbg !1794
  %cmp7.1.not = icmp eq ptr %4, %5, !dbg !1794
  br i1 %cmp7.1.not, label %for.body20.lr.ph.1, label %if.then9.1, !dbg !1798

if.then9.1:                                       ; preds = %for.body3.lr.ph.1
  %arrayidx12.1 = getelementptr inbounds i8, ptr %h, i64 3448, !dbg !1789
  %6 = load ptr, ptr %arrayidx12.1, align 8, !dbg !1789
  tail call void @x264_free(ptr noundef %6) #9, !dbg !1789
  %arrayidx14.1 = getelementptr inbounds i8, ptr %h, i64 3352, !dbg !1789
  %7 = load ptr, ptr %arrayidx14.1, align 8, !dbg !1789
  tail call void @x264_free(ptr noundef %7) #9, !dbg !1789
  %arrayidx16.1 = getelementptr inbounds i8, ptr %h, i64 3400, !dbg !1789
  %8 = load ptr, ptr %arrayidx16.1, align 8, !dbg !1789
  tail call void @x264_free(ptr noundef %8) #9, !dbg !1789
  br label %for.body20.lr.ph.1, !dbg !1789

for.body20.lr.ph.1:                               ; preds = %for.body3.lr.ph.1, %if.then9.1
    #dbg_value(i32 0, !1778, !DIExpression(), !1788)
  %arrayidx22.1 = getelementptr inbounds i8, ptr %h, i64 3496, !dbg !1799
  %9 = load ptr, ptr %arrayidx22.1, align 8
    #dbg_value(i64 0, !1778, !DIExpression(), !1788)
  %10 = load ptr, ptr %quant4_bias, align 8, !dbg !1799
  %cmp26.1.not = icmp eq ptr %9, %10, !dbg !1799
  br i1 %cmp26.1.not, label %for.body3.lr.ph.2, label %if.then33.1, !dbg !1798

if.then33.1:                                      ; preds = %for.body20.lr.ph.1
  %arrayidx36.1 = getelementptr inbounds i8, ptr %h, i64 3496, !dbg !1792
  %11 = load ptr, ptr %arrayidx36.1, align 8, !dbg !1792
  tail call void @x264_free(ptr noundef %11) #9, !dbg !1792
  br label %for.body3.lr.ph.2, !dbg !1792

for.body3.lr.ph.2:                                ; preds = %for.body20.lr.ph.1, %if.then33.1
    #dbg_value(i64 2, !1776, !DIExpression(), !1787)
    #dbg_value(i32 0, !1778, !DIExpression(), !1788)
  %arrayidx.2 = getelementptr inbounds i8, ptr %h, i64 3456, !dbg !1794
  %12 = load ptr, ptr %arrayidx.2, align 8
    #dbg_value(i64 0, !1778, !DIExpression(), !1788)
  %13 = load ptr, ptr %quant4_mf, align 8, !dbg !1794
  %cmp7.2 = icmp eq ptr %12, %13, !dbg !1794
  br i1 %cmp7.2, label %for.body20.lr.ph.2, label %for.inc.2, !dbg !1803

for.inc.2:                                        ; preds = %for.body3.lr.ph.2
    #dbg_value(i64 1, !1778, !DIExpression(), !1788)
  %arrayidx6.2.1 = getelementptr inbounds i8, ptr %h, i64 3448, !dbg !1794
  %14 = load ptr, ptr %arrayidx6.2.1, align 8, !dbg !1794
  %cmp7.2.1 = icmp eq ptr %12, %14, !dbg !1794
  br i1 %cmp7.2.1, label %for.body20.lr.ph.2, label %if.then9.2, !dbg !1803

if.then9.2:                                       ; preds = %for.inc.2
    #dbg_value(i64 2, !1778, !DIExpression(), !1788)
  %arrayidx12.2 = getelementptr inbounds i8, ptr %h, i64 3456, !dbg !1789
  %15 = load ptr, ptr %arrayidx12.2, align 8, !dbg !1789
  tail call void @x264_free(ptr noundef %15) #9, !dbg !1789
  %arrayidx14.2 = getelementptr inbounds i8, ptr %h, i64 3360, !dbg !1789
  %16 = load ptr, ptr %arrayidx14.2, align 8, !dbg !1789
  tail call void @x264_free(ptr noundef %16) #9, !dbg !1789
  %arrayidx16.2 = getelementptr inbounds i8, ptr %h, i64 3408, !dbg !1789
  %17 = load ptr, ptr %arrayidx16.2, align 8, !dbg !1789
  tail call void @x264_free(ptr noundef %17) #9, !dbg !1789
  br label %for.body20.lr.ph.2, !dbg !1789

for.body20.lr.ph.2:                               ; preds = %for.inc.2, %for.body3.lr.ph.2, %if.then9.2
    #dbg_value(i32 0, !1778, !DIExpression(), !1788)
  %arrayidx22.2 = getelementptr inbounds i8, ptr %h, i64 3504, !dbg !1799
  %18 = load ptr, ptr %arrayidx22.2, align 8
    #dbg_value(i64 0, !1778, !DIExpression(), !1788)
  %19 = load ptr, ptr %quant4_bias, align 8, !dbg !1799
  %cmp26.2 = icmp eq ptr %18, %19, !dbg !1799
  br i1 %cmp26.2, label %for.body3.lr.ph.3, label %for.inc29.2, !dbg !1804

for.inc29.2:                                      ; preds = %for.body20.lr.ph.2
    #dbg_value(i64 1, !1778, !DIExpression(), !1788)
  %arrayidx25.2.1 = getelementptr inbounds i8, ptr %h, i64 3496, !dbg !1799
  %20 = load ptr, ptr %arrayidx25.2.1, align 8, !dbg !1799
  %cmp26.2.1 = icmp eq ptr %18, %20, !dbg !1799
  br i1 %cmp26.2.1, label %for.body3.lr.ph.3, label %if.then33.2, !dbg !1804

if.then33.2:                                      ; preds = %for.inc29.2
    #dbg_value(i64 2, !1778, !DIExpression(), !1788)
  %arrayidx36.2 = getelementptr inbounds i8, ptr %h, i64 3504, !dbg !1792
  %21 = load ptr, ptr %arrayidx36.2, align 8, !dbg !1792
  tail call void @x264_free(ptr noundef %21) #9, !dbg !1792
  br label %for.body3.lr.ph.3, !dbg !1792

for.body3.lr.ph.3:                                ; preds = %for.inc29.2, %for.body20.lr.ph.2, %if.then33.2
    #dbg_value(i64 3, !1776, !DIExpression(), !1787)
    #dbg_value(i32 0, !1778, !DIExpression(), !1788)
  %arrayidx.3 = getelementptr inbounds i8, ptr %h, i64 3464, !dbg !1794
  %22 = load ptr, ptr %arrayidx.3, align 8
    #dbg_value(i64 0, !1778, !DIExpression(), !1788)
  %23 = load ptr, ptr %quant4_mf, align 8, !dbg !1794
  %cmp7.3 = icmp eq ptr %22, %23, !dbg !1794
  br i1 %cmp7.3, label %for.body20.lr.ph.3, label %for.inc.3, !dbg !1803

for.inc.3:                                        ; preds = %for.body3.lr.ph.3
    #dbg_value(i64 1, !1778, !DIExpression(), !1788)
  %arrayidx6.3.1 = getelementptr inbounds i8, ptr %h, i64 3448, !dbg !1794
  %24 = load ptr, ptr %arrayidx6.3.1, align 8, !dbg !1794
  %cmp7.3.1 = icmp eq ptr %22, %24, !dbg !1794
  br i1 %cmp7.3.1, label %for.body20.lr.ph.3, label %for.inc.3.1, !dbg !1803

for.inc.3.1:                                      ; preds = %for.inc.3
    #dbg_value(i64 2, !1778, !DIExpression(), !1788)
  %arrayidx6.3.2 = getelementptr inbounds i8, ptr %h, i64 3456, !dbg !1794
  %25 = load ptr, ptr %arrayidx6.3.2, align 8, !dbg !1794
  %cmp7.3.2 = icmp eq ptr %22, %25, !dbg !1794
  br i1 %cmp7.3.2, label %for.body20.lr.ph.3, label %if.then9.3, !dbg !1803

if.then9.3:                                       ; preds = %for.inc.3.1
    #dbg_value(i64 3, !1778, !DIExpression(), !1788)
  %arrayidx12.3 = getelementptr inbounds i8, ptr %h, i64 3464, !dbg !1789
  %26 = load ptr, ptr %arrayidx12.3, align 8, !dbg !1789
  tail call void @x264_free(ptr noundef %26) #9, !dbg !1789
  %arrayidx14.3 = getelementptr inbounds i8, ptr %h, i64 3368, !dbg !1789
  %27 = load ptr, ptr %arrayidx14.3, align 8, !dbg !1789
  tail call void @x264_free(ptr noundef %27) #9, !dbg !1789
  %arrayidx16.3 = getelementptr inbounds i8, ptr %h, i64 3416, !dbg !1789
  %28 = load ptr, ptr %arrayidx16.3, align 8, !dbg !1789
  tail call void @x264_free(ptr noundef %28) #9, !dbg !1789
  br label %for.body20.lr.ph.3, !dbg !1789

for.body20.lr.ph.3:                               ; preds = %for.inc.3.1, %for.inc.3, %for.body3.lr.ph.3, %if.then9.3
    #dbg_value(i32 0, !1778, !DIExpression(), !1788)
  %arrayidx22.3 = getelementptr inbounds i8, ptr %h, i64 3512, !dbg !1799
  %29 = load ptr, ptr %arrayidx22.3, align 8
    #dbg_value(i64 0, !1778, !DIExpression(), !1788)
  %30 = load ptr, ptr %quant4_bias, align 8, !dbg !1799
  %cmp26.3 = icmp eq ptr %29, %30, !dbg !1799
  br i1 %cmp26.3, label %for.body49.peel.1, label %for.inc29.3, !dbg !1804

for.inc29.3:                                      ; preds = %for.body20.lr.ph.3
    #dbg_value(i64 1, !1778, !DIExpression(), !1788)
  %arrayidx25.3.1 = getelementptr inbounds i8, ptr %h, i64 3496, !dbg !1799
  %31 = load ptr, ptr %arrayidx25.3.1, align 8, !dbg !1799
  %cmp26.3.1 = icmp eq ptr %29, %31, !dbg !1799
  br i1 %cmp26.3.1, label %for.body49.peel.1, label %for.inc29.3.1, !dbg !1804

for.inc29.3.1:                                    ; preds = %for.inc29.3
    #dbg_value(i64 2, !1778, !DIExpression(), !1788)
  %arrayidx25.3.2 = getelementptr inbounds i8, ptr %h, i64 3504, !dbg !1799
  %32 = load ptr, ptr %arrayidx25.3.2, align 8, !dbg !1799
  %cmp26.3.2 = icmp eq ptr %29, %32, !dbg !1799
  br i1 %cmp26.3.2, label %for.body49.peel.1, label %if.then33.3, !dbg !1804

if.then33.3:                                      ; preds = %for.inc29.3.1
    #dbg_value(i64 3, !1778, !DIExpression(), !1788)
  %arrayidx36.3 = getelementptr inbounds i8, ptr %h, i64 3512, !dbg !1792
  %33 = load ptr, ptr %arrayidx36.3, align 8, !dbg !1792
  tail call void @x264_free(ptr noundef %33) #9, !dbg !1792
  br label %for.body49.peel.1, !dbg !1792

for.body49.peel.1:                                ; preds = %for.inc29.3.1, %for.inc29.3, %for.body20.lr.ph.3, %if.then33.3
    #dbg_value(i64 4, !1776, !DIExpression(), !1787)
  %quant8_mf = getelementptr inbounds i8, ptr %h, i64 3472
  %arrayidx51 = getelementptr inbounds i8, ptr %h, i64 3480
    #dbg_value(i32 0, !1781, !DIExpression(), !1805)
  %dequant8_mf = getelementptr inbounds i8, ptr %h, i64 3376
  %unquant8_mf = getelementptr inbounds i8, ptr %h, i64 3424
  %quant8_bias = getelementptr inbounds i8, ptr %h, i64 3520
  %arrayidx75 = getelementptr inbounds i8, ptr %h, i64 3528
    #dbg_value(i64 0, !1781, !DIExpression(), !1805)
    #dbg_value(i32 0, !1783, !DIExpression(), !1806)
  %34 = load ptr, ptr %quant8_mf, align 8, !dbg !1807
  tail call void @x264_free(ptr noundef %34) #9, !dbg !1807
  %35 = load ptr, ptr %dequant8_mf, align 8, !dbg !1807
  tail call void @x264_free(ptr noundef %35) #9, !dbg !1807
  %36 = load ptr, ptr %unquant8_mf, align 8, !dbg !1807
  tail call void @x264_free(ptr noundef %36) #9, !dbg !1807
  %37 = load ptr, ptr %quant8_bias, align 8, !dbg !1810
  tail call void @x264_free(ptr noundef %37) #9, !dbg !1810
    #dbg_value(i64 1, !1781, !DIExpression(), !1805)
  %38 = load ptr, ptr %arrayidx51, align 8, !dbg !1812
  %39 = load ptr, ptr %quant8_mf, align 8, !dbg !1812
  %cmp55.peel.1.not = icmp eq ptr %38, %39, !dbg !1812
  br i1 %cmp55.peel.1.not, label %for.body73.peel.1, label %if.then62.1, !dbg !1816

if.then62.1:                                      ; preds = %for.body49.peel.1
  %arrayidx65.1 = getelementptr inbounds i8, ptr %h, i64 3480, !dbg !1807
  %40 = load ptr, ptr %arrayidx65.1, align 8, !dbg !1807
  tail call void @x264_free(ptr noundef %40) #9, !dbg !1807
  %arrayidx67.1 = getelementptr inbounds i8, ptr %h, i64 3384, !dbg !1807
  %41 = load ptr, ptr %arrayidx67.1, align 8, !dbg !1807
  tail call void @x264_free(ptr noundef %41) #9, !dbg !1807
  %arrayidx69.1 = getelementptr inbounds i8, ptr %h, i64 3432, !dbg !1807
  %42 = load ptr, ptr %arrayidx69.1, align 8, !dbg !1807
  tail call void @x264_free(ptr noundef %42) #9, !dbg !1807
  br label %for.body73.peel.1, !dbg !1807

for.body73.peel.1:                                ; preds = %for.body49.peel.1, %if.then62.1
    #dbg_value(i32 0, !1783, !DIExpression(), !1806)
  %43 = load ptr, ptr %arrayidx75, align 8, !dbg !1817
  %44 = load ptr, ptr %quant8_bias, align 8, !dbg !1817
  %cmp79.peel.1.not = icmp eq ptr %43, %44, !dbg !1817
  br i1 %cmp79.peel.1.not, label %if.end90.1, label %if.then86.1, !dbg !1816

if.then86.1:                                      ; preds = %for.body73.peel.1
  %arrayidx89.1 = getelementptr inbounds i8, ptr %h, i64 3528, !dbg !1810
  %45 = load ptr, ptr %arrayidx89.1, align 8, !dbg !1810
  tail call void @x264_free(ptr noundef %45) #9, !dbg !1810
  br label %if.end90.1, !dbg !1810

if.end90.1:                                       ; preds = %if.then86.1, %for.body73.peel.1
    #dbg_value(i64 2, !1781, !DIExpression(), !1805)
  ret void, !dbg !1821
}

declare !dbg !1822 void @x264_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_cqm_parse_file(ptr noundef %h, ptr noundef %filename) local_unnamed_addr #0 !dbg !1823 {
entry:
    #dbg_value(ptr %h, !1827, !DIExpression(), !1832)
    #dbg_value(ptr %filename, !1828, !DIExpression(), !1832)
    #dbg_value(i32 0, !1830, !DIExpression(), !1832)
  %i_cqm_preset = getelementptr inbounds i8, ptr %h, i64 144, !dbg !1833
  store i32 2, ptr %i_cqm_preset, align 16, !dbg !1834
  %call = tail call ptr @x264_slurp_file(ptr noundef %filename) #9, !dbg !1835
    #dbg_value(ptr %call, !1831, !DIExpression(), !1832)
  %tobool.not = icmp eq ptr %call, null, !dbg !1836
  br i1 %tobool.not, label %if.then, label %while.cond.preheader, !dbg !1838

while.cond.preheader:                             ; preds = %entry
  %call156 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call, i32 noundef 35) #10, !dbg !1839
  %cmp.not57 = icmp eq ptr %call156, null, !dbg !1840
  br i1 %cmp.not57, label %while.end, label %while.body, !dbg !1841

if.then:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %filename) #9, !dbg !1842
  br label %cleanup, !dbg !1844

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call158 = phi ptr [ %call1, %while.body ], [ %call156, %while.cond.preheader ]
  %call2 = tail call i64 @strcspn(ptr noundef nonnull %call158, ptr noundef nonnull @.str.4) #10, !dbg !1845
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %call158, i8 32, i64 %call2, i1 false), !dbg !1846
  %call1 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call, i32 noundef 35) #10, !dbg !1839
    #dbg_value(ptr %call1, !1829, !DIExpression(), !1832)
  %cmp.not = icmp eq ptr %call1, null, !dbg !1840
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !1841, !llvm.loop !1847

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %cqm_4iy = getelementptr inbounds i8, ptr %h, i64 160, !dbg !1849
  %call4 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.5, ptr noundef nonnull %cqm_4iy, ptr noundef nonnull @x264_cqm_jvt4i, i32 noundef 16), !dbg !1850
    #dbg_value(i32 %call4, !1830, !DIExpression(), !1832)
  %cqm_4ic = getelementptr inbounds i8, ptr %h, i64 176, !dbg !1851
  %call7 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.6, ptr noundef nonnull %cqm_4ic, ptr noundef nonnull @x264_cqm_jvt4i, i32 noundef 16), !dbg !1852
  %or8 = or i32 %call7, %call4, !dbg !1853
    #dbg_value(i32 %or8, !1830, !DIExpression(), !1832)
  %cqm_4py = getelementptr inbounds i8, ptr %h, i64 192, !dbg !1854
  %call11 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %cqm_4py, ptr noundef nonnull @x264_cqm_jvt4p, i32 noundef 16), !dbg !1855
  %or12 = or i32 %or8, %call11, !dbg !1856
    #dbg_value(i32 %or12, !1830, !DIExpression(), !1832)
  %cqm_4pc = getelementptr inbounds i8, ptr %h, i64 208, !dbg !1857
  %call15 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.8, ptr noundef nonnull %cqm_4pc, ptr noundef nonnull @x264_cqm_jvt4p, i32 noundef 16), !dbg !1858
  %or16 = or i32 %or12, %call15, !dbg !1859
    #dbg_value(i32 %or16, !1830, !DIExpression(), !1832)
  %cqm_8iy = getelementptr inbounds i8, ptr %h, i64 224, !dbg !1860
  %call19 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.9, ptr noundef nonnull %cqm_8iy, ptr noundef nonnull @x264_cqm_jvt8i, i32 noundef 64), !dbg !1861
  %or20 = or i32 %or16, %call19, !dbg !1862
    #dbg_value(i32 %or20, !1830, !DIExpression(), !1832)
  %cqm_8py = getelementptr inbounds i8, ptr %h, i64 288, !dbg !1863
  %call23 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.10, ptr noundef nonnull %cqm_8py, ptr noundef nonnull @x264_cqm_jvt8p, i32 noundef 64), !dbg !1864
  %or24 = or i32 %or20, %call23, !dbg !1865
    #dbg_value(i32 %or24, !1830, !DIExpression(), !1832)
  tail call void @x264_free(ptr noundef nonnull %call) #9, !dbg !1866
  br label %cleanup, !dbg !1867

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %or24, %while.end ], [ -1, %if.then ], !dbg !1832
  ret i32 %retval.0, !dbg !1868
}

declare !dbg !1869 ptr @x264_slurp_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1872 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1876 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef readonly %buf, ptr noundef %name, ptr nocapture noundef writeonly %cqm, ptr nocapture noundef readonly %jvt, i32 noundef %length) unnamed_addr #0 !dbg !1879 {
entry:
  %coef = alloca i32, align 4, !DIAssignID !1896
    #dbg_assign(i1 undef, !1892, !DIExpression(), !1896, ptr %coef, !DIExpression(), !1897)
    #dbg_value(ptr %h, !1883, !DIExpression(), !1898)
    #dbg_value(ptr %buf, !1884, !DIExpression(), !1898)
    #dbg_value(ptr %name, !1885, !DIExpression(), !1898)
    #dbg_value(ptr %cqm, !1886, !DIExpression(), !1898)
    #dbg_value(ptr %jvt, !1887, !DIExpression(), !1898)
    #dbg_value(i32 %length, !1888, !DIExpression(), !1898)
  %call = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %buf, ptr noundef nonnull dereferenceable(1) %name) #10, !dbg !1899
    #dbg_value(ptr %call, !1890, !DIExpression(), !1898)
  %tobool.not = icmp eq ptr %call, null, !dbg !1900
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1902

if.then:                                          ; preds = %entry
  %conv = zext nneg i32 %length to i64, !dbg !1903
  tail call void @llvm.memset.p0.i64(ptr align 1 %cqm, i8 16, i64 %conv, i1 false), !dbg !1905
  br label %cleanup43, !dbg !1906

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #10, !dbg !1907
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %call1, !dbg !1908
    #dbg_value(ptr %add.ptr, !1890, !DIExpression(), !1898)
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1909
  %.off = add i8 %0, -85, !dbg !1911
  %switch = icmp ult i8 %.off, 2, !dbg !1911
  %spec.select.idx = zext i1 %switch to i64, !dbg !1911
  %spec.select = getelementptr inbounds i8, ptr %add.ptr, i64 %spec.select.idx, !dbg !1911
    #dbg_value(ptr %spec.select, !1890, !DIExpression(), !1898)
  %call9 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %spec.select, ptr noundef nonnull dereferenceable(1) @.str.11) #10, !dbg !1912
    #dbg_value(ptr %call9, !1891, !DIExpression(), !1898)
    #dbg_value(i32 0, !1889, !DIExpression(), !1898)
    #dbg_value(ptr %spec.select, !1890, !DIExpression(), !1898)
  %cmp1076 = icmp sgt i32 %length, 0, !dbg !1913
  br i1 %cmp1076, label %land.lhs.true.preheader, label %for.end, !dbg !1914

land.lhs.true.preheader:                          ; preds = %if.end
  %wide.trip.count = zext nneg i32 %length to i64, !dbg !1913
    #dbg_value(ptr %spec.select, !1890, !DIExpression(), !1898)
    #dbg_value(i64 0, !1889, !DIExpression(), !1898)
  %call12.peel = tail call ptr @strpbrk(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.12) #10, !dbg !1915
    #dbg_value(ptr %call12.peel, !1890, !DIExpression(), !1898)
  %tobool13.not.peel = icmp eq ptr %call12.peel, null, !dbg !1916
  br i1 %tobool13.not.peel, label %for.end, label %land.rhs.peel, !dbg !1917

land.rhs.peel:                                    ; preds = %land.lhs.true.preheader
  %call14.peel = tail call ptr @strpbrk(ptr noundef nonnull %call12.peel, ptr noundef nonnull @.str.13) #10, !dbg !1918
    #dbg_value(ptr %call14.peel, !1890, !DIExpression(), !1898)
  %tobool15.not.peel = icmp eq ptr %call14.peel, null, !dbg !1917
  br i1 %tobool15.not.peel, label %for.end, label %for.body.peel, !dbg !1919

for.body.peel:                                    ; preds = %land.rhs.peel
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coef) #9, !dbg !1920
  store i32 -1, ptr %coef, align 4, !dbg !1921, !DIAssignID !1922
    #dbg_assign(i32 -1, !1892, !DIExpression(), !1922, ptr %coef, !DIExpression(), !1897)
  %call16.peel = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call14.peel, ptr noundef nonnull @.str.14, ptr noundef nonnull %coef) #9, !dbg !1923
  %1 = load i32, ptr %coef, align 4
  %cmp20.peel = icmp eq i32 %1, 0
  br i1 %cmp20.peel, label %if.then22, label %if.end24.peel, !dbg !1924

if.end24.peel:                                    ; preds = %for.body.peel
  %2 = add i32 %1, -256, !dbg !1926
  %or.cond45.peel = icmp ult i32 %2, -255, !dbg !1926
  br i1 %or.cond45.peel, label %if.then30, label %for.inc.peel, !dbg !1926

for.inc.peel:                                     ; preds = %if.end24.peel
  %conv32.peel = trunc nuw i32 %1 to i8, !dbg !1928
  store i8 %conv32.peel, ptr %cqm, align 1, !dbg !1929
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coef) #9, !dbg !1930
    #dbg_value(ptr %call14.peel, !1890, !DIExpression(), !1898)
    #dbg_value(i64 1, !1889, !DIExpression(), !1898)
  %exitcond.peel.not = icmp eq i32 %length, 1, !dbg !1913
  br i1 %exitcond.peel.not, label %for.end, label %land.lhs.true, !dbg !1914

land.lhs.true:                                    ; preds = %for.inc.peel, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.inc.peel ]
  %p.178 = phi ptr [ %call14, %for.inc ], [ %call14.peel, %for.inc.peel ]
    #dbg_value(ptr %p.178, !1890, !DIExpression(), !1898)
    #dbg_value(i64 %indvars.iv, !1889, !DIExpression(), !1898)
  %call12 = call ptr @strpbrk(ptr noundef nonnull %p.178, ptr noundef nonnull @.str.12) #10, !dbg !1915
    #dbg_value(ptr %call12, !1890, !DIExpression(), !1898)
  %tobool13.not = icmp eq ptr %call12, null, !dbg !1916
  br i1 %tobool13.not, label %for.end.loopexit.split.loop.exit, label %land.rhs, !dbg !1917

land.rhs:                                         ; preds = %land.lhs.true
  %call14 = call ptr @strpbrk(ptr noundef nonnull %call12, ptr noundef nonnull @.str.13) #10, !dbg !1918
    #dbg_value(ptr %call14, !1890, !DIExpression(), !1898)
  %tobool15.not = icmp eq ptr %call14, null, !dbg !1917
  br i1 %tobool15.not, label %for.end.loopexit.split.loop.exit89, label %if.end24, !dbg !1919

if.then22:                                        ; preds = %for.body.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cqm, ptr align 1 %jvt, i64 %wide.trip.count, i1 false), !dbg !1931
  br label %cleanup.thread, !dbg !1933

if.end24:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coef) #9, !dbg !1920
  store i32 -1, ptr %coef, align 4, !dbg !1921, !DIAssignID !1922
    #dbg_assign(i32 -1, !1892, !DIExpression(), !1922, ptr %coef, !DIExpression(), !1897)
  %call16 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call14, ptr noundef nonnull @.str.14, ptr noundef nonnull %coef) #9, !dbg !1923
  %3 = load i32, ptr %coef, align 4
  %4 = add i32 %3, -256, !dbg !1926
  %or.cond45 = icmp ult i32 %4, -255, !dbg !1926
  br i1 %or.cond45, label %if.then30, label %for.inc, !dbg !1926

if.then30:                                        ; preds = %if.end24, %if.end24.peel
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %name) #9, !dbg !1934
  br label %cleanup.thread, !dbg !1936

cleanup.thread:                                   ; preds = %if.then22, %if.then30
  %retval.1.ph = phi i32 [ -1, %if.then30 ], [ 0, %if.then22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coef) #9, !dbg !1930
  br label %cleanup43

for.inc:                                          ; preds = %if.end24
  %conv32 = trunc nuw i32 %3 to i8, !dbg !1928
  %arrayidx = getelementptr inbounds i8, ptr %cqm, i64 %indvars.iv, !dbg !1937
  store i8 %conv32, ptr %arrayidx, align 1, !dbg !1929
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coef) #9, !dbg !1930
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1938
    #dbg_value(ptr %call14, !1890, !DIExpression(), !1898)
    #dbg_value(i64 %indvars.iv.next, !1889, !DIExpression(), !1898)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1913
  br i1 %exitcond.not, label %for.end, label %land.lhs.true, !dbg !1914, !llvm.loop !1939

for.end.loopexit.split.loop.exit:                 ; preds = %land.lhs.true
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end, !dbg !1942

for.end.loopexit.split.loop.exit89:               ; preds = %land.rhs
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end, !dbg !1942

for.end:                                          ; preds = %for.inc, %for.end.loopexit.split.loop.exit, %for.end.loopexit.split.loop.exit89, %land.lhs.true.preheader, %land.rhs.peel, %for.inc.peel, %if.end
  %i.0.lcssa = phi i32 [ 0, %if.end ], [ 0, %land.lhs.true.preheader ], [ 0, %land.rhs.peel ], [ 1, %for.inc.peel ], [ %5, %for.end.loopexit.split.loop.exit ], [ %6, %for.end.loopexit.split.loop.exit89 ], [ %length, %for.inc ], !dbg !1944
  %p.2 = phi ptr [ %spec.select, %if.end ], [ null, %land.lhs.true.preheader ], [ null, %land.rhs.peel ], [ %call14.peel, %for.inc.peel ], [ null, %for.end.loopexit.split.loop.exit ], [ null, %for.end.loopexit.split.loop.exit89 ], [ %call14, %for.inc ], !dbg !1898
    #dbg_value(ptr %p.2, !1890, !DIExpression(), !1898)
  %tobool33.not = icmp eq ptr %call9, null, !dbg !1942
  %cmp35 = icmp ule ptr %p.2, %call9
  %or.cond69.not73 = or i1 %tobool33.not, %cmp35, !dbg !1945
  %cmp38.not = icmp eq i32 %i.0.lcssa, %length
  %or.cond70 = and i1 %cmp38.not, %or.cond69.not73, !dbg !1945
  br i1 %or.cond70, label %cleanup43, label %if.then40, !dbg !1945

if.then40:                                        ; preds = %for.end
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %name) #9, !dbg !1946
  br label %cleanup43, !dbg !1948

cleanup43:                                        ; preds = %cleanup.thread, %if.then40, %for.end, %if.then
  %retval.3 = phi i32 [ 0, %if.then ], [ -1, %if.then40 ], [ 0, %for.end ], [ %retval.1.ph, %cleanup.thread ], !dbg !1898
  ret i32 %retval.3, !dbg !1949
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1950 ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1953 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1956 ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1957 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dequant4_scale", scope: !2, file: !3, line: 26, type: !124, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/common/set.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "ded33432ae52d5d9fe6b2433f07446f2")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cqm4_e", file: !6, line: 39, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "CQM_4IY", value: 0)
!10 = !DIEnumerator(name: "CQM_4PY", value: 1)
!11 = !DIEnumerator(name: "CQM_4IC", value: 2)
!12 = !DIEnumerator(name: "CQM_4PC", value: 3)
!13 = !{!14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !{!16, !22, !27, !32, !37, !42, !47, !52, !54, !56, !58, !0, !60, !72, !79, !83, !86, !91, !96, !101, !105, !110, !115, !117, !119, !122}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 64)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 208, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 26)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 320, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 40)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 272, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 176, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 22)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 16, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 2)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !3, line: 279, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 112, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 14)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 280, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 16)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !44, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !3, line: 282, type: !49, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !3, line: 283, type: !44, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !44, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "quant4_scale", scope: !2, file: !3, line: 35, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 288, elements: !69)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !65, line: 25, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !67, line: 40, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !{!70, !71}
!70 = !DISubrange(count: 6)
!71 = !DISubrange(count: 3)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "quant8_scan", scope: !2, file: !3, line: 45, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !50)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !65, line: 24, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !67, line: 38, baseType: !78)
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "dequant8_scale", scope: !2, file: !3, line: 49, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 288, elements: !82)
!82 = !{!70, !70}
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "quant8_scale", scope: !2, file: !3, line: 58, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 576, elements: !82)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !3, line: 234, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 4)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !3, line: 236, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 40, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 5)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !3, line: 236, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 88, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 11)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !3, line: 239, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !104)
!104 = !{!71}
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 240, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 30)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 304, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 38)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "x264_cqm_jvt4i", scope: !2, file: !6, line: 189, type: !74, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "x264_cqm_jvt4p", scope: !2, file: !6, line: 196, type: !74, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "x264_cqm_jvt8i", scope: !2, file: !6, line: 203, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 512, elements: !20)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "x264_cqm_jvt8p", scope: !2, file: !6, line: 214, type: !121, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 144, elements: !69)
!125 = !{i32 7, !"Dwarf Version", i32 5}
!126 = !{i32 2, !"Debug Info Version", i32 3}
!127 = !{i32 1, !"wchar_size", i32 4}
!128 = !{i32 8, !"PIC Level", i32 2}
!129 = !{i32 7, !"PIE Level", i32 2}
!130 = !{i32 7, !"uwtable", i32 2}
!131 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!132 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!133 = distinct !DISubprogram(name: "x264_cqm_init", scope: !3, file: !3, line: 68, type: !134, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1424)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !137}
!136 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !141, line: 381, size: 266752, elements: !142)
!141 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!142 = !{!143, !307, !311, !312, !313, !314, !315, !316, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !451, !453, !479, !481, !482, !483, !487, !491, !492, !493, !497, !501, !502, !503, !508, !511, !512, !590, !607, !770, !771, !772, !773, !777, !778, !779, !780, !781, !782, !783, !798, !990, !994, !1053, !1056, !1058, !1060, !1061, !1064, !1069, !1078, !1079, !1087, !1089, !1094, !1170, !1256, !1300, !1322, !1371, !1400}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !140, file: !141, line: 384, baseType: !144, size: 5632)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !139, line: 376, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !139, line: 176, size: 5632, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !189, !191, !192, !193, !194, !196, !197, !210, !211, !212, !213, !214, !243, !285, !286, !287, !288, !289, !290, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !145, file: !139, line: 179, baseType: !7, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !145, file: !139, line: 180, baseType: !136, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !145, file: !139, line: 181, baseType: !136, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !145, file: !139, line: 182, baseType: !136, size: 32, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !145, file: !139, line: 183, baseType: !136, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !145, file: !139, line: 186, baseType: !136, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !145, file: !139, line: 187, baseType: !136, size: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !145, file: !139, line: 188, baseType: !136, size: 32, offset: 224)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !145, file: !139, line: 189, baseType: !136, size: 32, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !145, file: !139, line: 190, baseType: !136, size: 32, offset: 288)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !145, file: !139, line: 198, baseType: !136, size: 32, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !145, file: !139, line: 215, baseType: !159, size: 288, offset: 352)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !145, file: !139, line: 200, size: 288, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !159, file: !139, line: 203, baseType: !136, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !159, file: !139, line: 204, baseType: !136, size: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !159, file: !139, line: 206, baseType: !136, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !159, file: !139, line: 209, baseType: !136, size: 32, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !159, file: !139, line: 210, baseType: !136, size: 32, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !159, file: !139, line: 211, baseType: !136, size: 32, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !159, file: !139, line: 212, baseType: !136, size: 32, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !159, file: !139, line: 213, baseType: !136, size: 32, offset: 224)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !159, file: !139, line: 214, baseType: !136, size: 32, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !145, file: !139, line: 218, baseType: !136, size: 32, offset: 640)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !145, file: !139, line: 219, baseType: !136, size: 32, offset: 672)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !145, file: !139, line: 220, baseType: !136, size: 32, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !145, file: !139, line: 221, baseType: !136, size: 32, offset: 736)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !145, file: !139, line: 222, baseType: !136, size: 32, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !145, file: !139, line: 224, baseType: !136, size: 32, offset: 800)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !145, file: !139, line: 225, baseType: !136, size: 32, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !145, file: !139, line: 226, baseType: !136, size: 32, offset: 864)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !145, file: !139, line: 227, baseType: !136, size: 32, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !145, file: !139, line: 229, baseType: !136, size: 32, offset: 928)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !145, file: !139, line: 230, baseType: !136, size: 32, offset: 960)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !145, file: !139, line: 231, baseType: !136, size: 32, offset: 992)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !145, file: !139, line: 233, baseType: !136, size: 32, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !145, file: !139, line: 234, baseType: !136, size: 32, offset: 1056)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !145, file: !139, line: 236, baseType: !136, size: 32, offset: 1088)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !145, file: !139, line: 237, baseType: !136, size: 32, offset: 1120)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !145, file: !139, line: 239, baseType: !136, size: 32, offset: 1152)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !145, file: !139, line: 240, baseType: !188, size: 64, offset: 1216)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !145, file: !139, line: 241, baseType: !190, size: 128, offset: 1280)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 128, elements: !50)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !145, file: !139, line: 242, baseType: !190, size: 128, offset: 1408)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !145, file: !139, line: 243, baseType: !190, size: 128, offset: 1536)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !145, file: !139, line: 244, baseType: !190, size: 128, offset: 1664)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !145, file: !139, line: 245, baseType: !195, size: 512, offset: 1792)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 512, elements: !20)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !145, file: !139, line: 246, baseType: !195, size: 512, offset: 2304)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !145, file: !139, line: 249, baseType: !198, size: 64, offset: 2816)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !14, !136, !201, !203}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !205)
!205 = !{!206, !207, !208, !209}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !204, file: !3, baseType: !7, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !204, file: !3, baseType: !7, size: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !204, file: !3, baseType: !14, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !204, file: !3, baseType: !14, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !145, file: !139, line: 250, baseType: !14, size: 64, offset: 2880)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !145, file: !139, line: 251, baseType: !136, size: 32, offset: 2944)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !145, file: !139, line: 252, baseType: !136, size: 32, offset: 2976)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !145, file: !139, line: 253, baseType: !188, size: 64, offset: 3008)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !145, file: !139, line: 287, baseType: !215, size: 800, offset: 3072)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !145, file: !139, line: 256, size: 800, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !237, !238, !239, !241, !242}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !215, file: !139, line: 258, baseType: !7, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !215, file: !139, line: 259, baseType: !7, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !215, file: !139, line: 261, baseType: !136, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !215, file: !139, line: 262, baseType: !136, size: 32, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !215, file: !139, line: 263, baseType: !136, size: 32, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !215, file: !139, line: 264, baseType: !136, size: 32, offset: 160)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !215, file: !139, line: 265, baseType: !136, size: 32, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !215, file: !139, line: 267, baseType: !136, size: 32, offset: 224)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !215, file: !139, line: 268, baseType: !136, size: 32, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !215, file: !139, line: 269, baseType: !136, size: 32, offset: 288)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !215, file: !139, line: 270, baseType: !136, size: 32, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !215, file: !139, line: 271, baseType: !136, size: 32, offset: 352)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !215, file: !139, line: 272, baseType: !136, size: 32, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !215, file: !139, line: 273, baseType: !136, size: 32, offset: 416)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !215, file: !139, line: 274, baseType: !136, size: 32, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !215, file: !139, line: 275, baseType: !136, size: 32, offset: 480)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !215, file: !139, line: 276, baseType: !136, size: 32, offset: 512)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !215, file: !139, line: 277, baseType: !136, size: 32, offset: 544)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !215, file: !139, line: 278, baseType: !236, size: 32, offset: 576)
!236 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !215, file: !139, line: 279, baseType: !236, size: 32, offset: 608)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !215, file: !139, line: 280, baseType: !136, size: 32, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !215, file: !139, line: 283, baseType: !240, size: 64, offset: 672)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !40)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !215, file: !139, line: 285, baseType: !136, size: 32, offset: 736)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !215, file: !139, line: 286, baseType: !136, size: 32, offset: 768)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !145, file: !139, line: 327, baseType: !244, size: 1152, offset: 3904)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !145, file: !139, line: 290, size: 1152, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !283, !284}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !244, file: !139, line: 292, baseType: !136, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !244, file: !139, line: 294, baseType: !136, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !244, file: !139, line: 295, baseType: !136, size: 32, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !244, file: !139, line: 296, baseType: !136, size: 32, offset: 96)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !244, file: !139, line: 297, baseType: !136, size: 32, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !244, file: !139, line: 299, baseType: !136, size: 32, offset: 160)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !244, file: !139, line: 300, baseType: !236, size: 32, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !244, file: !139, line: 301, baseType: !236, size: 32, offset: 224)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !244, file: !139, line: 302, baseType: !236, size: 32, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !244, file: !139, line: 303, baseType: !136, size: 32, offset: 288)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !244, file: !139, line: 304, baseType: !136, size: 32, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !244, file: !139, line: 305, baseType: !236, size: 32, offset: 352)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !244, file: !139, line: 306, baseType: !236, size: 32, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !244, file: !139, line: 307, baseType: !236, size: 32, offset: 416)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !244, file: !139, line: 309, baseType: !136, size: 32, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !244, file: !139, line: 310, baseType: !236, size: 32, offset: 480)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !244, file: !139, line: 311, baseType: !136, size: 32, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !244, file: !139, line: 312, baseType: !136, size: 32, offset: 544)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !244, file: !139, line: 315, baseType: !136, size: 32, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !244, file: !139, line: 316, baseType: !188, size: 64, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !244, file: !139, line: 317, baseType: !136, size: 32, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !244, file: !139, line: 318, baseType: !188, size: 64, offset: 768)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !244, file: !139, line: 321, baseType: !236, size: 32, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !244, file: !139, line: 322, baseType: !236, size: 32, offset: 864)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !244, file: !139, line: 323, baseType: !236, size: 32, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !244, file: !139, line: 324, baseType: !272, size: 64, offset: 960)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !139, line: 174, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 167, size: 256, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !274, file: !139, line: 169, baseType: !136, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !274, file: !139, line: 169, baseType: !136, size: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !274, file: !139, line: 170, baseType: !136, size: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !274, file: !139, line: 171, baseType: !136, size: 32, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !274, file: !139, line: 172, baseType: !236, size: 32, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !274, file: !139, line: 173, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !244, file: !139, line: 325, baseType: !136, size: 32, offset: 1024)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !244, file: !139, line: 326, baseType: !188, size: 64, offset: 1088)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !145, file: !139, line: 330, baseType: !136, size: 32, offset: 5056)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !145, file: !139, line: 331, baseType: !136, size: 32, offset: 5088)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !145, file: !139, line: 332, baseType: !136, size: 32, offset: 5120)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !145, file: !139, line: 334, baseType: !136, size: 32, offset: 5152)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !145, file: !139, line: 335, baseType: !136, size: 32, offset: 5184)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !145, file: !139, line: 336, baseType: !291, size: 32, offset: 5216)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !65, line: 26, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !67, line: 42, baseType: !7)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !145, file: !139, line: 337, baseType: !291, size: 32, offset: 5248)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !145, file: !139, line: 338, baseType: !291, size: 32, offset: 5280)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !145, file: !139, line: 339, baseType: !291, size: 32, offset: 5312)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !145, file: !139, line: 340, baseType: !136, size: 32, offset: 5344)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !145, file: !139, line: 344, baseType: !136, size: 32, offset: 5376)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !145, file: !139, line: 356, baseType: !136, size: 32, offset: 5408)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !145, file: !139, line: 364, baseType: !136, size: 32, offset: 5440)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !145, file: !139, line: 367, baseType: !136, size: 32, offset: 5472)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !145, file: !139, line: 368, baseType: !136, size: 32, offset: 5504)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !145, file: !139, line: 369, baseType: !136, size: 32, offset: 5536)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !145, file: !139, line: 375, baseType: !304, size: 64, offset: 5568)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !14}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !140, file: !141, line: 386, baseType: !308, size: 8256, offset: 5632)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 8256, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 129)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !140, file: !141, line: 387, baseType: !136, size: 32, offset: 13888)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !140, file: !141, line: 388, baseType: !136, size: 32, offset: 13920)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !140, file: !141, line: 389, baseType: !136, size: 32, offset: 13952)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !140, file: !141, line: 390, baseType: !136, size: 32, offset: 13984)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !140, file: !141, line: 391, baseType: !136, size: 32, offset: 14016)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !140, file: !141, line: 402, baseType: !317, size: 576, offset: 14080)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !141, line: 394, size: 576, elements: !318)
!318 = !{!319, !320, !321, !331, !332, !333}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !317, file: !141, line: 396, baseType: !136, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !317, file: !141, line: 397, baseType: !136, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !317, file: !141, line: 398, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !139, line: 604, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 593, size: 192, elements: !325)
!325 = !{!326, !327, !328, !329}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !324, file: !139, line: 595, baseType: !136, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !324, file: !139, line: 596, baseType: !136, size: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !324, file: !139, line: 599, baseType: !136, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !324, file: !139, line: 603, baseType: !330, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !317, file: !141, line: 399, baseType: !136, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !317, file: !141, line: 400, baseType: !330, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !317, file: !141, line: 401, baseType: !334, size: 320, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !335, line: 56, baseType: !336)
!335 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !335, line: 47, size: 320, elements: !337)
!337 = !{!338, !339, !340, !341, !345, !346}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !336, file: !335, line: 49, baseType: !330, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !336, file: !335, line: 50, baseType: !330, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !336, file: !335, line: 51, baseType: !330, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !336, file: !335, line: 53, baseType: !342, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !343, line: 87, baseType: !344)
!343 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!344 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !336, file: !335, line: 54, baseType: !136, size: 32, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !336, file: !335, line: 55, baseType: !136, size: 32, offset: 288)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !140, file: !141, line: 404, baseType: !330, size: 64, offset: 14656)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !140, file: !141, line: 405, baseType: !136, size: 32, offset: 14720)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !140, file: !141, line: 410, baseType: !136, size: 32, offset: 14752)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !140, file: !141, line: 411, baseType: !136, size: 32, offset: 14784)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !140, file: !141, line: 413, baseType: !136, size: 32, offset: 14816)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !140, file: !141, line: 415, baseType: !136, size: 32, offset: 14848)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !140, file: !141, line: 416, baseType: !136, size: 32, offset: 14880)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !140, file: !141, line: 418, baseType: !136, size: 32, offset: 14912)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !140, file: !141, line: 419, baseType: !136, size: 32, offset: 14944)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !140, file: !141, line: 420, baseType: !136, size: 32, offset: 14976)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !140, file: !141, line: 421, baseType: !136, size: 32, offset: 15008)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !140, file: !141, line: 422, baseType: !136, size: 32, offset: 15040)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !140, file: !141, line: 424, baseType: !136, size: 32, offset: 15072)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !140, file: !141, line: 425, baseType: !136, size: 32, offset: 15104)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !140, file: !141, line: 427, baseType: !136, size: 32, offset: 15136)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !140, file: !141, line: 430, baseType: !363, size: 10400, offset: 15168)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 10400, elements: !449)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !6, line: 154, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 52, size: 10400, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !384, !385, !386, !387, !388, !389, !390, !391, !392, !399, !400, !448}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !365, file: !6, line: 54, baseType: !136, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !365, file: !6, line: 56, baseType: !136, size: 32, offset: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !365, file: !6, line: 57, baseType: !136, size: 32, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !365, file: !6, line: 59, baseType: !136, size: 32, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !365, file: !6, line: 60, baseType: !136, size: 32, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !365, file: !6, line: 61, baseType: !136, size: 32, offset: 160)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !365, file: !6, line: 63, baseType: !136, size: 32, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !365, file: !6, line: 65, baseType: !136, size: 32, offset: 224)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !365, file: !6, line: 67, baseType: !136, size: 32, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !365, file: !6, line: 69, baseType: !136, size: 32, offset: 288)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !365, file: !6, line: 70, baseType: !136, size: 32, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !365, file: !6, line: 71, baseType: !136, size: 32, offset: 352)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !365, file: !6, line: 72, baseType: !136, size: 32, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !365, file: !6, line: 73, baseType: !381, size: 8192, offset: 416)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 8192, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !365, file: !6, line: 75, baseType: !136, size: 32, offset: 8608)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !365, file: !6, line: 76, baseType: !136, size: 32, offset: 8640)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !365, file: !6, line: 77, baseType: !136, size: 32, offset: 8672)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !365, file: !6, line: 78, baseType: !136, size: 32, offset: 8704)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !365, file: !6, line: 79, baseType: !136, size: 32, offset: 8736)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !365, file: !6, line: 80, baseType: !136, size: 32, offset: 8768)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !365, file: !6, line: 81, baseType: !136, size: 32, offset: 8800)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !365, file: !6, line: 83, baseType: !136, size: 32, offset: 8832)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !365, file: !6, line: 90, baseType: !393, size: 128, offset: 8864)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !6, line: 84, size: 128, elements: !394)
!394 = !{!395, !396, !397, !398}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !393, file: !6, line: 86, baseType: !136, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !393, file: !6, line: 87, baseType: !136, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !393, file: !6, line: 88, baseType: !136, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !393, file: !6, line: 89, baseType: !136, size: 32, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !365, file: !6, line: 92, baseType: !136, size: 32, offset: 8992)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !365, file: !6, line: 150, baseType: !401, size: 1344, offset: 9024)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !6, line: 93, size: 1344, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !401, file: !6, line: 95, baseType: !136, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !401, file: !6, line: 96, baseType: !136, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !401, file: !6, line: 97, baseType: !136, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !401, file: !6, line: 99, baseType: !136, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !401, file: !6, line: 100, baseType: !136, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !401, file: !6, line: 102, baseType: !136, size: 32, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !401, file: !6, line: 103, baseType: !136, size: 32, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !401, file: !6, line: 104, baseType: !136, size: 32, offset: 224)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !401, file: !6, line: 105, baseType: !136, size: 32, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !401, file: !6, line: 106, baseType: !136, size: 32, offset: 288)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !401, file: !6, line: 107, baseType: !136, size: 32, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !401, file: !6, line: 108, baseType: !136, size: 32, offset: 352)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !401, file: !6, line: 110, baseType: !136, size: 32, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !401, file: !6, line: 111, baseType: !136, size: 32, offset: 416)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !401, file: !6, line: 112, baseType: !136, size: 32, offset: 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !401, file: !6, line: 114, baseType: !136, size: 32, offset: 480)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !401, file: !6, line: 115, baseType: !291, size: 32, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !401, file: !6, line: 116, baseType: !291, size: 32, offset: 544)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !401, file: !6, line: 117, baseType: !136, size: 32, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !401, file: !6, line: 119, baseType: !136, size: 32, offset: 608)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !401, file: !6, line: 120, baseType: !136, size: 32, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !401, file: !6, line: 137, baseType: !425, size: 384, offset: 672)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !401, file: !6, line: 122, size: 384, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !425, file: !6, line: 124, baseType: !136, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !425, file: !6, line: 125, baseType: !136, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !425, file: !6, line: 126, baseType: !136, size: 32, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !425, file: !6, line: 127, baseType: !136, size: 32, offset: 96)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !425, file: !6, line: 128, baseType: !136, size: 32, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !425, file: !6, line: 129, baseType: !136, size: 32, offset: 160)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !425, file: !6, line: 130, baseType: !136, size: 32, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !425, file: !6, line: 131, baseType: !136, size: 32, offset: 224)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !425, file: !6, line: 133, baseType: !136, size: 32, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !425, file: !6, line: 134, baseType: !136, size: 32, offset: 288)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !425, file: !6, line: 135, baseType: !136, size: 32, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !425, file: !6, line: 136, baseType: !136, size: 32, offset: 352)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !401, file: !6, line: 139, baseType: !136, size: 32, offset: 1056)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !401, file: !6, line: 140, baseType: !136, size: 32, offset: 1088)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !401, file: !6, line: 141, baseType: !136, size: 32, offset: 1120)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !401, file: !6, line: 142, baseType: !136, size: 32, offset: 1152)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !401, file: !6, line: 143, baseType: !136, size: 32, offset: 1184)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !401, file: !6, line: 144, baseType: !136, size: 32, offset: 1216)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !401, file: !6, line: 145, baseType: !136, size: 32, offset: 1248)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !401, file: !6, line: 146, baseType: !136, size: 32, offset: 1280)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !401, file: !6, line: 147, baseType: !136, size: 32, offset: 1312)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !365, file: !6, line: 152, baseType: !136, size: 32, offset: 10368)
!449 = !{!450}
!450 = !DISubrange(count: 1)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !140, file: !141, line: 431, baseType: !452, size: 64, offset: 25600)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !140, file: !141, line: 432, baseType: !454, size: 960, offset: 25664)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 960, elements: !449)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !6, line: 186, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 156, size: 960, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !456, file: !6, line: 158, baseType: !136, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !456, file: !6, line: 159, baseType: !136, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !456, file: !6, line: 161, baseType: !136, size: 32, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !456, file: !6, line: 163, baseType: !136, size: 32, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !456, file: !6, line: 164, baseType: !136, size: 32, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !456, file: !6, line: 166, baseType: !136, size: 32, offset: 160)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !456, file: !6, line: 167, baseType: !136, size: 32, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !456, file: !6, line: 169, baseType: !136, size: 32, offset: 224)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !456, file: !6, line: 170, baseType: !136, size: 32, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !456, file: !6, line: 172, baseType: !136, size: 32, offset: 288)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !456, file: !6, line: 173, baseType: !136, size: 32, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !456, file: !6, line: 175, baseType: !136, size: 32, offset: 352)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !456, file: !6, line: 177, baseType: !136, size: 32, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !456, file: !6, line: 178, baseType: !136, size: 32, offset: 416)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !456, file: !6, line: 179, baseType: !136, size: 32, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !456, file: !6, line: 181, baseType: !136, size: 32, offset: 480)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !456, file: !6, line: 183, baseType: !136, size: 32, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !456, file: !6, line: 184, baseType: !476, size: 384, offset: 576)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 384, elements: !478)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!478 = !{!70}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !140, file: !141, line: 433, baseType: !480, size: 64, offset: 26624)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !140, file: !141, line: 434, baseType: !136, size: 32, offset: 26688)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !140, file: !141, line: 437, baseType: !136, size: 32, offset: 26720)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !140, file: !141, line: 440, baseType: !484, size: 256, offset: 26752)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 256, elements: !89)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 512, elements: !50)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !140, file: !141, line: 441, baseType: !488, size: 128, offset: 27008)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 128, elements: !40)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 2048, elements: !20)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !140, file: !141, line: 443, baseType: !484, size: 256, offset: 27136)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !140, file: !141, line: 444, baseType: !488, size: 128, offset: 27392)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !140, file: !141, line: 446, baseType: !494, size: 256, offset: 27520)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 256, elements: !89)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !50)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !140, file: !141, line: 447, baseType: !498, size: 128, offset: 27776)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 128, elements: !40)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1024, elements: !20)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !140, file: !141, line: 448, baseType: !494, size: 256, offset: 27904)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !140, file: !141, line: 449, baseType: !498, size: 128, offset: 28160)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !140, file: !141, line: 454, baseType: !504, size: 5888, offset: 28288)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 5888, elements: !506)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!506 = !{!507}
!507 = !DISubrange(count: 92)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !140, file: !141, line: 455, baseType: !509, size: 23552, offset: 34176)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 23552, elements: !510)
!510 = !{!507, !90}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !140, file: !141, line: 457, baseType: !477, size: 64, offset: 57728)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !140, file: !141, line: 460, baseType: !513, size: 53376, offset: 57856)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !141, line: 364, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 302, size: 53376, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !544, !574, !575, !576, !582, !583, !584, !585, !586, !587, !588, !589}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !514, file: !141, line: 304, baseType: !452, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !514, file: !141, line: 305, baseType: !480, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !514, file: !141, line: 307, baseType: !136, size: 32, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !514, file: !141, line: 308, baseType: !136, size: 32, offset: 160)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !514, file: !141, line: 309, baseType: !136, size: 32, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !514, file: !141, line: 311, baseType: !136, size: 32, offset: 224)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !514, file: !141, line: 313, baseType: !136, size: 32, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !514, file: !141, line: 315, baseType: !136, size: 32, offset: 288)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !514, file: !141, line: 316, baseType: !136, size: 32, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !514, file: !141, line: 317, baseType: !136, size: 32, offset: 352)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !514, file: !141, line: 319, baseType: !136, size: 32, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !514, file: !141, line: 321, baseType: !136, size: 32, offset: 416)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !514, file: !141, line: 322, baseType: !136, size: 32, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !514, file: !141, line: 324, baseType: !240, size: 64, offset: 480)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !514, file: !141, line: 325, baseType: !136, size: 32, offset: 544)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !514, file: !141, line: 327, baseType: !136, size: 32, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !514, file: !141, line: 329, baseType: !136, size: 32, offset: 608)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !514, file: !141, line: 330, baseType: !136, size: 32, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !514, file: !141, line: 331, baseType: !136, size: 32, offset: 672)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !514, file: !141, line: 333, baseType: !136, size: 32, offset: 704)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !514, file: !141, line: 334, baseType: !136, size: 32, offset: 736)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !514, file: !141, line: 339, baseType: !538, size: 2048, offset: 768)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 2048, elements: !543)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !141, line: 335, size: 64, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !539, file: !141, line: 337, baseType: !136, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !539, file: !141, line: 338, baseType: !136, size: 32, offset: 32)
!543 = !{!41, !51}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !514, file: !141, line: 342, baseType: !545, size: 49152, align: 128, offset: 2816)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 49152, align: 128, elements: !572)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !547, line: 36, baseType: !548, align: 128)
!547 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !547, line: 26, size: 512, elements: !549)
!549 = !{!550, !558, !559, !562, !563, !564}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !548, file: !547, line: 30, baseType: !551, size: 128, align: 128)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 128, elements: !556)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !553, line: 25, baseType: !554)
!553 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !67, line: 39, baseType: !555)
!555 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!556 = !{!557}
!557 = !DISubrange(count: 8)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !548, file: !547, line: 31, baseType: !551, size: 128, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !548, file: !547, line: 32, baseType: !560, size: 32, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !553, line: 26, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !67, line: 41, baseType: !136)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !548, file: !547, line: 33, baseType: !560, size: 32, offset: 288)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !548, file: !547, line: 34, baseType: !560, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !548, file: !547, line: 35, baseType: !565, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !547, line: 25, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !330, !136, !330, !136, !570, !136}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!572 = !{!573, !71}
!573 = !DISubrange(count: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !514, file: !141, line: 344, baseType: !136, size: 32, offset: 51968)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !514, file: !141, line: 345, baseType: !136, size: 32, offset: 52000)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !514, file: !141, line: 350, baseType: !577, size: 1024, offset: 52032)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 1024, elements: !50)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !141, line: 346, size: 64, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !578, file: !141, line: 348, baseType: !136, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !578, file: !141, line: 349, baseType: !136, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !514, file: !141, line: 352, baseType: !136, size: 32, offset: 53056)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !514, file: !141, line: 354, baseType: !136, size: 32, offset: 53088)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !514, file: !141, line: 355, baseType: !136, size: 32, offset: 53120)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !514, file: !141, line: 356, baseType: !136, size: 32, offset: 53152)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !514, file: !141, line: 357, baseType: !136, size: 32, offset: 53184)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !514, file: !141, line: 360, baseType: !136, size: 32, offset: 53216)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !514, file: !141, line: 361, baseType: !136, size: 32, offset: 53248)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !514, file: !141, line: 362, baseType: !136, size: 32, offset: 53280)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !140, file: !141, line: 463, baseType: !591, size: 4096, offset: 111232)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !592, line: 46, baseType: !593)
!592 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !592, line: 27, size: 4096, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !593, file: !592, line: 30, baseType: !136, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !593, file: !592, line: 31, baseType: !136, size: 32, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !593, file: !592, line: 34, baseType: !136, size: 32, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !593, file: !592, line: 35, baseType: !136, size: 32, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !593, file: !592, line: 37, baseType: !330, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !593, file: !592, line: 38, baseType: !330, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !593, file: !592, line: 39, baseType: !330, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !593, file: !592, line: 42, baseType: !136, size: 32, align: 128, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !593, file: !592, line: 45, baseType: !604, size: 3680, offset: 416)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 3680, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 460)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !140, file: !141, line: 494, baseType: !608, size: 2112, offset: 115328)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !141, line: 465, size: 2112, elements: !609)
!609 = !{!610, !750, !752, !753, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !766, !767, !768, !769}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !608, file: !141, line: 468, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !614, line: 146, baseType: !615)
!614 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !614, line: 31, size: 125056, elements: !616)
!616 = !{!617, !618, !619, !620, !623, !624, !625, !626, !627, !628, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !646, !647, !648, !649, !650, !651, !653, !655, !656, !657, !658, !659, !662, !664, !665, !667, !672, !673, !677, !678, !682, !686, !689, !691, !692, !694, !695, !697, !698, !699, !702, !704, !705, !706, !708, !709, !710, !711, !712, !713, !714, !715, !717, !718, !722, !731, !735, !737, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !615, file: !614, line: 34, baseType: !136, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !615, file: !614, line: 35, baseType: !136, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !615, file: !614, line: 36, baseType: !136, size: 32, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !615, file: !614, line: 37, baseType: !621, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !553, line: 27, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !67, line: 44, baseType: !344)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !615, file: !614, line: 38, baseType: !621, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !615, file: !614, line: 39, baseType: !136, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !615, file: !614, line: 40, baseType: !136, size: 32, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !615, file: !614, line: 41, baseType: !136, size: 32, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !615, file: !614, line: 42, baseType: !136, size: 32, offset: 352)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !615, file: !614, line: 43, baseType: !629, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !615, file: !614, line: 45, baseType: !136, size: 32, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !615, file: !614, line: 46, baseType: !136, size: 32, offset: 480)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !615, file: !614, line: 47, baseType: !136, size: 32, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !615, file: !614, line: 48, baseType: !136, size: 32, offset: 544)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !615, file: !614, line: 49, baseType: !136, size: 32, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !615, file: !614, line: 50, baseType: !136, size: 32, offset: 608)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !615, file: !614, line: 51, baseType: !136, size: 32, offset: 640)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !615, file: !614, line: 52, baseType: !76, size: 8, offset: 672)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !615, file: !614, line: 53, baseType: !76, size: 8, offset: 680)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !615, file: !614, line: 54, baseType: !76, size: 8, offset: 688)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !615, file: !614, line: 55, baseType: !236, size: 32, offset: 704)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !615, file: !614, line: 56, baseType: !236, size: 32, offset: 736)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !615, file: !614, line: 57, baseType: !136, size: 32, offset: 768)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !615, file: !614, line: 60, baseType: !136, size: 32, offset: 800)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !615, file: !614, line: 61, baseType: !645, size: 96, offset: 832)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 96, elements: !104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !615, file: !614, line: 62, baseType: !645, size: 96, offset: 928)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !615, file: !614, line: 63, baseType: !645, size: 96, offset: 1024)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !615, file: !614, line: 64, baseType: !136, size: 32, offset: 1120)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !615, file: !614, line: 65, baseType: !136, size: 32, offset: 1152)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !615, file: !614, line: 66, baseType: !136, size: 32, offset: 1184)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !615, file: !614, line: 67, baseType: !652, size: 192, offset: 1216)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 192, elements: !104)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !615, file: !614, line: 68, baseType: !654, size: 256, offset: 1408)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 256, elements: !89)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !615, file: !614, line: 69, baseType: !654, size: 256, offset: 1664)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !615, file: !614, line: 70, baseType: !505, size: 64, offset: 1920)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !615, file: !614, line: 74, baseType: !654, size: 256, offset: 1984)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !615, file: !614, line: 75, baseType: !654, size: 256, offset: 2240)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !615, file: !614, line: 77, baseType: !660, size: 24576, align: 128, offset: 2560)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 24576, align: 128, elements: !661)
!661 = !{!51, !71}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !615, file: !614, line: 78, baseType: !663, size: 1024, offset: 27136)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 1024, elements: !50)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !615, file: !614, line: 79, baseType: !136, size: 32, offset: 28160)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !615, file: !614, line: 80, baseType: !666, size: 64, offset: 28224)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !615, file: !614, line: 83, baseType: !668, size: 64, offset: 28288)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !553, line: 24, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !67, line: 37, baseType: !671)
!671 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !615, file: !614, line: 84, baseType: !330, size: 64, offset: 28352)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !615, file: !614, line: 85, baseType: !674, size: 128, offset: 28416)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 128, elements: !40)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 32, elements: !40)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !615, file: !614, line: 86, baseType: !675, size: 64, offset: 28544)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !615, file: !614, line: 87, baseType: !679, size: 2176, offset: 28608)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 2176, elements: !680)
!680 = !{!41, !681}
!681 = !DISubrange(count: 17)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !615, file: !614, line: 92, baseType: !683, size: 20736, offset: 30784)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 20736, elements: !684)
!684 = !{!685, !685}
!685 = !DISubrange(count: 18)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !615, file: !614, line: 96, baseType: !687, size: 2176, offset: 51520)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 2176, elements: !680)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !615, file: !614, line: 97, baseType: !690, size: 128, offset: 53696)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 128, elements: !40)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !615, file: !614, line: 98, baseType: !240, size: 64, offset: 53824)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !615, file: !614, line: 99, baseType: !693, size: 1024, offset: 53888)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1024, elements: !543)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !615, file: !614, line: 100, baseType: !676, size: 32, offset: 54912)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !615, file: !614, line: 105, baseType: !696, size: 10368, offset: 54944)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 10368, elements: !684)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !615, file: !614, line: 106, baseType: !696, size: 10368, offset: 65312)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !615, file: !614, line: 107, baseType: !136, size: 32, offset: 75680)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !615, file: !614, line: 108, baseType: !700, size: 576, offset: 75712)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 576, elements: !701)
!701 = !{!685}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !615, file: !614, line: 109, baseType: !703, size: 20736, offset: 76288)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 20736, elements: !684)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !615, file: !614, line: 110, baseType: !688, size: 64, offset: 97024)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !615, file: !614, line: 111, baseType: !688, size: 64, offset: 97088)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !615, file: !614, line: 112, baseType: !707, size: 64, offset: 97152)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !615, file: !614, line: 113, baseType: !707, size: 64, offset: 97216)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !615, file: !614, line: 114, baseType: !707, size: 64, offset: 97280)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !615, file: !614, line: 115, baseType: !136, size: 32, offset: 97344)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !615, file: !614, line: 116, baseType: !505, size: 64, offset: 97408)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !615, file: !614, line: 117, baseType: !505, size: 64, offset: 97472)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !615, file: !614, line: 118, baseType: !505, size: 64, offset: 97536)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !615, file: !614, line: 119, baseType: !136, size: 32, offset: 97600)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !615, file: !614, line: 120, baseType: !716, size: 576, offset: 97632)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 576, elements: !701)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !615, file: !614, line: 121, baseType: !291, size: 32, offset: 98208)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !615, file: !614, line: 122, baseType: !719, size: 64, offset: 98240)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !65, line: 27, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !67, line: 45, baseType: !721)
!721 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !615, file: !614, line: 125, baseType: !723, size: 256, offset: 98304)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !139, line: 503, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 496, size: 256, elements: !725)
!725 = !{!726, !728, !729, !730}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !724, file: !139, line: 498, baseType: !727, size: 64)
!727 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !724, file: !139, line: 499, baseType: !727, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !724, file: !139, line: 500, baseType: !727, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !724, file: !139, line: 502, baseType: !727, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !615, file: !614, line: 128, baseType: !732, size: 2008, offset: 98560)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 2008, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 251)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !615, file: !614, line: 129, baseType: !736, size: 8032, offset: 100576)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 8032, elements: !733)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !615, file: !614, line: 130, baseType: !738, size: 16064, offset: 108608)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 16064, elements: !733)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !615, file: !614, line: 131, baseType: !136, size: 32, offset: 124672)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !615, file: !614, line: 132, baseType: !136, size: 32, offset: 124704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !615, file: !614, line: 135, baseType: !136, size: 32, offset: 124736)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !615, file: !614, line: 136, baseType: !136, size: 32, offset: 124768)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !615, file: !614, line: 137, baseType: !136, size: 32, offset: 124800)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !615, file: !614, line: 138, baseType: !136, size: 32, offset: 124832)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !615, file: !614, line: 139, baseType: !136, size: 32, offset: 124864)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !615, file: !614, line: 142, baseType: !236, size: 32, offset: 124896)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !615, file: !614, line: 143, baseType: !136, size: 32, offset: 124928)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !615, file: !614, line: 144, baseType: !136, size: 32, offset: 124960)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !615, file: !614, line: 145, baseType: !136, size: 32, offset: 124992)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !608, file: !141, line: 470, baseType: !751, size: 128, offset: 64)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 128, elements: !40)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !608, file: !141, line: 473, baseType: !611, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !608, file: !141, line: 476, baseType: !754, size: 1152, offset: 256)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 1152, elements: !701)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !608, file: !141, line: 478, baseType: !136, size: 32, offset: 1408)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !608, file: !141, line: 480, baseType: !136, size: 32, offset: 1440)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !608, file: !141, line: 482, baseType: !136, size: 32, offset: 1472)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !608, file: !141, line: 483, baseType: !136, size: 32, offset: 1504)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !608, file: !141, line: 484, baseType: !136, size: 32, offset: 1536)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !608, file: !141, line: 485, baseType: !136, size: 32, offset: 1568)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !608, file: !141, line: 486, baseType: !136, size: 32, offset: 1600)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !608, file: !141, line: 487, baseType: !621, size: 64, offset: 1664)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !608, file: !141, line: 488, baseType: !621, size: 64, offset: 1728)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !608, file: !141, line: 489, baseType: !765, size: 128, offset: 1792)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 128, elements: !40)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !608, file: !141, line: 490, baseType: !621, size: 64, offset: 1920)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !608, file: !141, line: 491, baseType: !621, size: 64, offset: 1984)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !608, file: !141, line: 492, baseType: !136, size: 32, offset: 2048)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !608, file: !141, line: 493, baseType: !136, size: 32, offset: 2080)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !140, file: !141, line: 497, baseType: !612, size: 64, offset: 117440)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !140, file: !141, line: 500, baseType: !612, size: 64, offset: 117504)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !140, file: !141, line: 503, baseType: !136, size: 32, offset: 117568)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !140, file: !141, line: 504, baseType: !774, size: 1216, offset: 117632)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 1216, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 19)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !140, file: !141, line: 505, baseType: !136, size: 32, offset: 118848)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !140, file: !141, line: 506, baseType: !774, size: 1216, offset: 118912)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !140, file: !141, line: 507, baseType: !240, size: 64, offset: 120128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !140, file: !141, line: 510, baseType: !136, size: 32, offset: 120192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !140, file: !141, line: 511, baseType: !136, size: 32, offset: 120224)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !140, file: !141, line: 512, baseType: !621, size: 64, offset: 120256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !140, file: !141, line: 522, baseType: !784, size: 10624, offset: 120320)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !141, line: 515, size: 10624, elements: !785)
!785 = !{!786, !788, !791, !794}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !784, file: !141, line: 517, baseType: !787, size: 256, align: 128)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 256, elements: !50)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !784, file: !141, line: 518, baseType: !789, size: 128, align: 128, offset: 256)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 128, elements: !790)
!790 = !{!41, !90}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !784, file: !141, line: 520, baseType: !792, size: 4096, align: 128, offset: 384)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 4096, elements: !793)
!793 = !{!90, !21}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !784, file: !141, line: 521, baseType: !795, size: 6144, align: 128, offset: 4480)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 6144, elements: !796)
!796 = !{!797, !51}
!797 = !DISubrange(count: 24)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !140, file: !141, line: 732, baseType: !799, size: 82688, offset: 130944)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !141, line: 525, size: 82688, elements: !800)
!800 = !{!801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !828, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !846, !849, !853, !854, !855, !860, !861, !864, !865, !866, !867, !868, !869, !870, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !930, !959, !960, !961, !962, !963, !964, !965, !966, !967, !970, !971, !972, !975, !978, !980, !983, !985, !986}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !799, file: !141, line: 527, baseType: !136, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !799, file: !141, line: 530, baseType: !136, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !799, file: !141, line: 531, baseType: !136, size: 32, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !799, file: !141, line: 532, baseType: !136, size: 32, offset: 96)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !799, file: !141, line: 535, baseType: !136, size: 32, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !799, file: !141, line: 536, baseType: !136, size: 32, offset: 160)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !799, file: !141, line: 537, baseType: !136, size: 32, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !799, file: !141, line: 538, baseType: !136, size: 32, offset: 224)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !799, file: !141, line: 539, baseType: !136, size: 32, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !799, file: !141, line: 542, baseType: !136, size: 32, offset: 288)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !799, file: !141, line: 543, baseType: !136, size: 32, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !799, file: !141, line: 544, baseType: !136, size: 32, offset: 352)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !799, file: !141, line: 545, baseType: !136, size: 32, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !799, file: !141, line: 546, baseType: !136, size: 32, offset: 416)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !799, file: !141, line: 547, baseType: !136, size: 32, offset: 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !799, file: !141, line: 548, baseType: !136, size: 32, offset: 480)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !799, file: !141, line: 549, baseType: !136, size: 32, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !799, file: !141, line: 551, baseType: !136, size: 32, offset: 544)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !799, file: !141, line: 554, baseType: !240, size: 64, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !799, file: !141, line: 555, baseType: !240, size: 64, offset: 640)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !799, file: !141, line: 558, baseType: !240, size: 64, offset: 704)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !799, file: !141, line: 559, baseType: !240, size: 64, offset: 768)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !799, file: !141, line: 561, baseType: !240, size: 64, offset: 832)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !799, file: !141, line: 562, baseType: !240, size: 64, offset: 896)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !799, file: !141, line: 565, baseType: !7, size: 32, offset: 960)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !799, file: !141, line: 566, baseType: !827, size: 128, offset: 992)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !89)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !799, file: !141, line: 567, baseType: !829, size: 512, offset: 1120)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !50)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !799, file: !141, line: 568, baseType: !7, size: 32, offset: 1632)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !799, file: !141, line: 569, baseType: !7, size: 32, offset: 1664)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !799, file: !141, line: 570, baseType: !136, size: 32, offset: 1696)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !799, file: !141, line: 571, baseType: !136, size: 32, offset: 1728)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !799, file: !141, line: 572, baseType: !136, size: 32, offset: 1760)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !799, file: !141, line: 573, baseType: !136, size: 32, offset: 1792)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !799, file: !141, line: 574, baseType: !136, size: 32, offset: 1824)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !799, file: !141, line: 575, baseType: !136, size: 32, offset: 1856)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !799, file: !141, line: 576, baseType: !136, size: 32, offset: 1888)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !799, file: !141, line: 577, baseType: !136, size: 32, offset: 1920)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !799, file: !141, line: 578, baseType: !136, size: 32, offset: 1952)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !799, file: !141, line: 585, baseType: !668, size: 64, offset: 1984)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !799, file: !141, line: 586, baseType: !330, size: 64, offset: 2048)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !799, file: !141, line: 587, baseType: !668, size: 64, offset: 2112)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !799, file: !141, line: 588, baseType: !845, size: 64, offset: 2176)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !799, file: !141, line: 589, baseType: !847, size: 64, offset: 2240)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 64, elements: !556)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !799, file: !141, line: 591, baseType: !850, size: 64, offset: 2304)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 192, elements: !852)
!852 = !{!797}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !799, file: !141, line: 592, baseType: !668, size: 64, offset: 2368)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !799, file: !141, line: 593, baseType: !674, size: 128, offset: 2432)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !799, file: !141, line: 594, baseType: !856, size: 128, offset: 2560)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 128, elements: !40)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 128, elements: !859)
!859 = !{!557, !41}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !799, file: !141, line: 595, baseType: !690, size: 128, offset: 2688)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !799, file: !141, line: 596, baseType: !862, size: 4096, offset: 2816)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 4096, elements: !863)
!863 = !{!41, !573}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !799, file: !141, line: 597, baseType: !668, size: 64, offset: 6912)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !799, file: !141, line: 598, baseType: !668, size: 64, offset: 6976)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !799, file: !141, line: 599, baseType: !505, size: 64, offset: 7040)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !799, file: !141, line: 603, baseType: !663, size: 1024, offset: 7104)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !799, file: !141, line: 606, baseType: !136, size: 32, offset: 8128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !799, file: !141, line: 607, baseType: !136, size: 32, offset: 8160)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !799, file: !141, line: 608, baseType: !871, size: 32, align: 32, offset: 8192)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 32, elements: !89)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !799, file: !141, line: 609, baseType: !136, size: 32, offset: 8224)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !799, file: !141, line: 611, baseType: !136, size: 32, offset: 8256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !799, file: !141, line: 612, baseType: !136, size: 32, offset: 8288)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !799, file: !141, line: 614, baseType: !136, size: 32, offset: 8320)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !799, file: !141, line: 615, baseType: !136, size: 32, offset: 8352)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !799, file: !141, line: 621, baseType: !136, size: 32, offset: 8384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !799, file: !141, line: 624, baseType: !136, size: 32, offset: 8416)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !799, file: !141, line: 626, baseType: !136, size: 32, offset: 8448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !799, file: !141, line: 627, baseType: !136, size: 32, offset: 8480)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !799, file: !141, line: 671, baseType: !882, size: 60672, offset: 8576)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !799, file: !141, line: 629, size: 60672, elements: !883)
!883 = !{!884, !888, !892, !894, !895, !898, !902, !904, !905, !906, !907, !908, !911, !915, !918, !919, !920, !921, !922, !925, !927, !929}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !882, file: !141, line: 634, baseType: !885, size: 3072, align: 128)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 3072, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 384)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !882, file: !141, line: 635, baseType: !889, size: 6912, align: 128, offset: 3072)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 6912, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 864)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !882, file: !141, line: 638, baseType: !893, size: 2048, align: 128, offset: 9984)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 2048, elements: !382)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !882, file: !141, line: 639, baseType: !893, size: 2048, align: 128, offset: 12032)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !882, file: !141, line: 640, baseType: !896, size: 3072, align: 128, offset: 14080)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 3072, elements: !897)
!897 = !{!71, !21}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !882, file: !141, line: 641, baseType: !899, size: 3840, align: 128, offset: 17152)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 3840, elements: !900)
!900 = !{!901, !51}
!901 = !DISubrange(count: 15)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !882, file: !141, line: 642, baseType: !903, size: 128, offset: 20992)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 128, elements: !89)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !882, file: !141, line: 643, baseType: !903, size: 128, offset: 21120)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !882, file: !141, line: 644, baseType: !136, size: 32, offset: 21248)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !882, file: !141, line: 645, baseType: !136, size: 32, offset: 21280)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !882, file: !141, line: 648, baseType: !792, size: 4096, align: 128, offset: 21376)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !882, file: !141, line: 649, baseType: !909, size: 4096, align: 128, offset: 25472)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 4096, elements: !910)
!910 = !{!51, !51}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !882, file: !141, line: 652, baseType: !912, size: 576, align: 128, offset: 29568)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 576, elements: !913)
!913 = !{!914}
!914 = !DISubrange(count: 9)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !882, file: !141, line: 653, baseType: !916, size: 1024, align: 128, offset: 30208)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 1024, elements: !917)
!917 = !{!573}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !882, file: !141, line: 656, baseType: !652, size: 192, offset: 31232)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !882, file: !141, line: 658, baseType: !652, size: 192, offset: 31424)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !882, file: !141, line: 661, baseType: !652, size: 192, offset: 31616)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !882, file: !141, line: 664, baseType: !240, size: 64, offset: 31808)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !882, file: !141, line: 665, baseType: !923, size: 24576, offset: 31872)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 24576, elements: !924)
!924 = !{!41, !573, !70}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !882, file: !141, line: 666, baseType: !926, size: 2048, offset: 56448)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 2048, elements: !917)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !882, file: !141, line: 667, baseType: !928, size: 2048, offset: 58496)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 2048, elements: !543)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !882, file: !141, line: 670, baseType: !645, size: 96, offset: 60544)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !799, file: !141, line: 704, baseType: !931, size: 6144, offset: 69248)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !799, file: !141, line: 674, size: 6144, elements: !932)
!932 = !{!933, !935, !939, !942, !945, !947, !948, !951, !953, !954, !955, !956, !957, !958}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !931, file: !141, line: 677, baseType: !934, size: 320, align: 64)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 320, elements: !30)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !931, file: !141, line: 680, baseType: !936, size: 384, align: 128, offset: 384)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 384, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 48)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !931, file: !141, line: 683, baseType: !940, size: 640, align: 32, offset: 768)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 640, elements: !941)
!941 = !{!41, !31}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !931, file: !141, line: 686, baseType: !943, size: 2560, align: 128, offset: 1408)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 2560, elements: !944)
!944 = !{!41, !31, !41}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !931, file: !141, line: 687, baseType: !946, size: 1280, align: 64, offset: 3968)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1280, elements: !944)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !931, file: !141, line: 690, baseType: !934, size: 320, align: 32, offset: 5248)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !931, file: !141, line: 692, baseType: !949, size: 256, align: 32, offset: 5568)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 256, elements: !950)
!950 = !{!41, !90, !41}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !931, file: !141, line: 693, baseType: !952, size: 64, align: 32, offset: 5824)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 64, elements: !790)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !931, file: !141, line: 694, baseType: !136, size: 32, offset: 5888)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !931, file: !141, line: 695, baseType: !676, size: 32, align: 32, offset: 5920)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !931, file: !141, line: 698, baseType: !136, size: 32, offset: 5952)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !931, file: !141, line: 699, baseType: !136, size: 32, offset: 5984)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !931, file: !141, line: 702, baseType: !136, size: 32, offset: 6016)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !931, file: !141, line: 703, baseType: !136, size: 32, offset: 6048)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !799, file: !141, line: 707, baseType: !136, size: 32, offset: 75392)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !799, file: !141, line: 708, baseType: !136, size: 32, offset: 75424)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !799, file: !141, line: 709, baseType: !136, size: 32, offset: 75456)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !799, file: !141, line: 710, baseType: !136, size: 32, offset: 75488)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !799, file: !141, line: 711, baseType: !136, size: 32, offset: 75520)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !799, file: !141, line: 712, baseType: !136, size: 32, offset: 75552)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !799, file: !141, line: 713, baseType: !136, size: 32, offset: 75584)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !799, file: !141, line: 714, baseType: !136, size: 32, offset: 75616)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !799, file: !141, line: 717, baseType: !968, size: 128, offset: 75648)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, elements: !969)
!969 = !{!41, !41}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !799, file: !141, line: 718, baseType: !136, size: 32, offset: 75776)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !799, file: !141, line: 719, baseType: !136, size: 32, offset: 75808)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !799, file: !141, line: 722, baseType: !973, size: 4096, offset: 75840)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 4096, elements: !974)
!974 = !{!41, !573, !90}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !799, file: !141, line: 723, baseType: !976, size: 64, offset: 79936)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 64, elements: !89)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !799, file: !141, line: 724, baseType: !979, size: 2048, offset: 80000)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 2048, elements: !974)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !799, file: !141, line: 725, baseType: !981, size: 64, offset: 82048)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 32, elements: !89)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !799, file: !141, line: 728, baseType: !984, size: 144, offset: 82112)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 144, elements: !701)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !799, file: !141, line: 729, baseType: !136, size: 32, offset: 82272)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !799, file: !141, line: 730, baseType: !987, size: 272, offset: 82304)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 272, elements: !988)
!988 = !{!989}
!989 = !DISubrange(count: 34)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !140, file: !141, line: 735, baseType: !991, size: 64, offset: 213632)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !141, line: 379, baseType: !993)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !141, line: 379, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !140, file: !141, line: 793, baseType: !995, size: 29504, offset: 213696)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !141, line: 738, size: 29504, elements: !996)
!996 = !{!997, !1024, !1026, !1028, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1040, !1042, !1043, !1046, !1048, !1050, !1051, !1052}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !995, file: !141, line: 764, baseType: !998, size: 5632)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !141, line: 741, size: 5632, elements: !999)
!999 = !{!1000, !1001, !1002, !1003, !1005, !1006, !1007, !1008, !1009, !1011, !1014, !1016, !1020, !1021, !1023}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !998, file: !141, line: 744, baseType: !136, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !998, file: !141, line: 746, baseType: !136, size: 32, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !998, file: !141, line: 748, baseType: !136, size: 32, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !998, file: !141, line: 750, baseType: !1004, size: 608, offset: 96)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 608, elements: !775)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !998, file: !141, line: 751, baseType: !136, size: 32, offset: 704)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !998, file: !141, line: 752, baseType: !136, size: 32, offset: 736)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !998, file: !141, line: 753, baseType: !136, size: 32, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !998, file: !141, line: 754, baseType: !240, size: 64, offset: 800)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !998, file: !141, line: 755, baseType: !1010, size: 2048, offset: 864)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 2048, elements: !863)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !998, file: !141, line: 756, baseType: !1012, size: 544, offset: 2912)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 544, elements: !1013)
!1013 = !{!681}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !998, file: !141, line: 757, baseType: !1015, size: 192, offset: 3456)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 192, elements: !478)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !998, file: !141, line: 758, baseType: !1017, size: 1664, offset: 3648)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1664, elements: !1018)
!1018 = !{!90, !1019}
!1019 = !DISubrange(count: 13)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !998, file: !141, line: 760, baseType: !240, size: 64, offset: 5312)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !998, file: !141, line: 762, baseType: !1022, size: 192, offset: 5376)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 192, elements: !104)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !998, file: !141, line: 763, baseType: !727, size: 64, offset: 5568)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !995, file: !141, line: 769, baseType: !1025, size: 160, offset: 5632)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 160, elements: !94)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !995, file: !141, line: 770, baseType: !1027, size: 320, offset: 5824)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 320, elements: !94)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !995, file: !141, line: 771, baseType: !1029, size: 320, offset: 6144)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 320, elements: !94)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !995, file: !141, line: 772, baseType: !1012, size: 544, offset: 6464)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !995, file: !141, line: 774, baseType: !1027, size: 320, offset: 7040)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !995, file: !141, line: 775, baseType: !1029, size: 320, offset: 7360)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !995, file: !141, line: 776, baseType: !1029, size: 320, offset: 7680)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !995, file: !141, line: 777, baseType: !1029, size: 320, offset: 8000)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !995, file: !141, line: 778, baseType: !1029, size: 320, offset: 8320)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !995, file: !141, line: 779, baseType: !1029, size: 320, offset: 8640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !995, file: !141, line: 781, baseType: !1038, size: 6080, offset: 8960)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 6080, elements: !1039)
!1039 = !{!95, !776}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !995, file: !141, line: 782, baseType: !1041, size: 2176, offset: 15040)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 2176, elements: !680)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !995, file: !141, line: 783, baseType: !765, size: 128, offset: 17216)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !995, file: !141, line: 784, baseType: !1044, size: 8192, offset: 17344)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 8192, elements: !1045)
!1045 = !{!41, !41, !573}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !995, file: !141, line: 785, baseType: !1047, size: 384, offset: 25536)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 384, elements: !478)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !995, file: !141, line: 786, baseType: !1049, size: 3328, offset: 25920)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 3328, elements: !1018)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !995, file: !141, line: 788, baseType: !240, size: 64, offset: 29248)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !995, file: !141, line: 789, baseType: !240, size: 64, offset: 29312)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !995, file: !141, line: 791, baseType: !645, size: 96, offset: 29376)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !140, file: !141, line: 795, baseType: !1054, size: 4096, align: 128, offset: 243200)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 4096, elements: !1055)
!1055 = !{!41, !21}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !140, file: !141, line: 796, baseType: !1057, size: 2048, align: 128, offset: 247296)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2048, elements: !1055)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !140, file: !141, line: 797, baseType: !1059, size: 64, offset: 249344)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 64, elements: !40)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !140, file: !141, line: 800, baseType: !14, size: 64, offset: 249408)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !140, file: !141, line: 801, baseType: !1062, size: 384, offset: 249472)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 384, elements: !1063)
!1063 = !{!41, !71}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !140, file: !141, line: 802, baseType: !1065, size: 128, offset: 249856)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 128, elements: !40)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !1068)
!1068 = !{!41, !90, !90}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !140, file: !141, line: 805, baseType: !1070, size: 448, offset: 249984)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 448, elements: !1076)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1072, line: 27, baseType: !1073)
!1072 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !330}
!1076 = !{!1077}
!1077 = !DISubrange(count: 7)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !140, file: !141, line: 806, baseType: !1070, size: 448, offset: 250432)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !140, file: !141, line: 807, baseType: !1080, size: 768, offset: 250880)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 768, elements: !1085)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1072, line: 28, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !330, !330}
!1085 = !{!1086}
!1086 = !DISubrange(count: 12)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !140, file: !141, line: 808, baseType: !1088, size: 768, offset: 251648)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 768, elements: !1085)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !140, file: !141, line: 809, baseType: !1090, size: 64, offset: 252416)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1072, line: 29, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !330, !330, !136, !136}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !140, file: !141, line: 811, baseType: !1095, size: 8448, offset: 252480)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1096, line: 110, baseType: !1097)
!1096 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1096, line: 63, size: 8448, elements: !1098)
!1098 = !{!1099, !1105, !1106, !1107, !1108, !1110, !1111, !1112, !1113, !1119, !1125, !1126, !1130, !1135, !1136, !1142, !1146, !1147, !1148, !1149, !1150, !1155, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1097, file: !1096, line: 65, baseType: !1100, size: 448)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1101, size: 448, elements: !1076)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1096, line: 26, baseType: !1102)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!136, !330, !136, !330, !136}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1097, file: !1096, line: 66, baseType: !1100, size: 448, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1097, file: !1096, line: 67, baseType: !1100, size: 448, offset: 896)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1097, file: !1096, line: 68, baseType: !1100, size: 448, offset: 1344)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1097, file: !1096, line: 69, baseType: !1109, size: 256, offset: 1792)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1101, size: 256, elements: !89)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1097, file: !1096, line: 70, baseType: !1100, size: 448, offset: 2048)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1097, file: !1096, line: 71, baseType: !1100, size: 448, offset: 2496)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1097, file: !1096, line: 72, baseType: !1100, size: 448, offset: 2944)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1097, file: !1096, line: 73, baseType: !1114, size: 448, offset: 3392)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 448, elements: !1076)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1096, line: 27, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !330, !330, !330, !330, !136, !688}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1097, file: !1096, line: 74, baseType: !1120, size: 448, offset: 3840)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1121, size: 448, elements: !1076)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1096, line: 28, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !330, !330, !330, !330, !330, !136, !688}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1097, file: !1096, line: 75, baseType: !1100, size: 448, offset: 4288)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1097, file: !1096, line: 76, baseType: !1127, size: 64, offset: 4736)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!136, !330, !136, !330, !136, !688}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1097, file: !1096, line: 78, baseType: !1131, size: 256, offset: 4800)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 256, elements: !89)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!719, !330, !136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1097, file: !1096, line: 79, baseType: !1131, size: 256, offset: 5056)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1097, file: !1096, line: 81, baseType: !1137, size: 64, offset: 5312)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !477, !136, !477, !136, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, elements: !89)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1097, file: !1096, line: 83, baseType: !1143, size: 64, offset: 5376)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!236, !1140, !1140, !136}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1097, file: !1096, line: 86, baseType: !1114, size: 448, offset: 5440)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1097, file: !1096, line: 87, baseType: !1120, size: 448, offset: 5888)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1097, file: !1096, line: 88, baseType: !1114, size: 448, offset: 6336)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1097, file: !1096, line: 89, baseType: !1120, size: 448, offset: 6784)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1097, file: !1096, line: 93, baseType: !1151, size: 448, offset: 7232)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 448, elements: !1076)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!136, !688, !505, !136, !505, !845, !136, !136}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1097, file: !1096, line: 98, baseType: !1156, size: 64, offset: 7680)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !330, !330, !688}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1097, file: !1096, line: 99, baseType: !1156, size: 64, offset: 7744)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1097, file: !1096, line: 100, baseType: !1156, size: 64, offset: 7808)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1097, file: !1096, line: 101, baseType: !1156, size: 64, offset: 7872)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1097, file: !1096, line: 102, baseType: !1156, size: 64, offset: 7936)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1097, file: !1096, line: 103, baseType: !1156, size: 64, offset: 8000)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1097, file: !1096, line: 104, baseType: !1156, size: 64, offset: 8064)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1097, file: !1096, line: 105, baseType: !1156, size: 64, offset: 8128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1097, file: !1096, line: 106, baseType: !1156, size: 64, offset: 8192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1097, file: !1096, line: 107, baseType: !1156, size: 64, offset: 8256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1097, file: !1096, line: 108, baseType: !1156, size: 64, offset: 8320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1097, file: !1096, line: 109, baseType: !1156, size: 64, offset: 8384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !140, file: !141, line: 812, baseType: !1171, size: 2368, offset: 260928)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !547, line: 111, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 58, size: 2368, elements: !1173)
!1173 = !{!1174, !1181, !1185, !1189, !1196, !1201, !1202, !1206, !1210, !1211, !1215, !1223, !1227, !1231, !1232, !1236, !1240, !1244, !1245, !1246, !1247, !1252}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1172, file: !547, line: 60, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !330, !136, !1178, !136, !136, !136, !136, !136, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1172, file: !547, line: 65, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!330, !330, !688, !1178, !136, !136, !136, !136, !136, !1179}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1172, file: !547, line: 71, baseType: !1186, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !330, !136, !330, !136, !136, !136, !136, !136}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1172, file: !547, line: 75, baseType: !1190, size: 640, offset: 192)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, size: 640, elements: !1194)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !330, !136, !330, !136, !330, !136, !136}
!1194 = !{!1195}
!1195 = !DISubrange(count: 10)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1172, file: !547, line: 78, baseType: !1197, size: 448, offset: 832)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1198, size: 448, elements: !1076)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !330, !136, !330, !136, !136}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1172, file: !547, line: 79, baseType: !1198, size: 64, offset: 1280)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1172, file: !547, line: 81, baseType: !1203, size: 64, offset: 1344)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !330, !136, !330, !136, !136, !136}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1172, file: !547, line: 84, baseType: !1207, size: 64, offset: 1408)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !330, !330, !330, !330, !136, !136, !136, !845}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1172, file: !547, line: 88, baseType: !1198, size: 64, offset: 1472)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1172, file: !547, line: 91, baseType: !1212, size: 64, offset: 1536)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !330, !136, !136}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1172, file: !547, line: 93, baseType: !1216, size: 64, offset: 1600)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!14, !14, !1219, !1221}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1222, line: 18, baseType: !721)
!1222 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1172, file: !547, line: 94, baseType: !1224, size: 64, offset: 1664)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !14, !136}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1172, file: !547, line: 97, baseType: !1228, size: 64, offset: 1728)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !505, !330, !136}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1172, file: !547, line: 98, baseType: !1228, size: 64, offset: 1792)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1172, file: !547, line: 99, baseType: !1233, size: 64, offset: 1856)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !505, !505, !136}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1172, file: !547, line: 100, baseType: !1237, size: 64, offset: 1920)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !505, !136}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1172, file: !547, line: 102, baseType: !1241, size: 64, offset: 1984)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !330, !330, !330, !330, !330, !136, !136, !136, !136}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1172, file: !547, line: 104, baseType: !565, size: 64, offset: 2048)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1172, file: !547, line: 105, baseType: !565, size: 64, offset: 2112)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1172, file: !547, line: 106, baseType: !565, size: 64, offset: 2176)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1172, file: !547, line: 107, baseType: !1248, size: 64, offset: 2240)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !137, !1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1172, file: !547, line: 109, baseType: !1253, size: 64, offset: 2304)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !688, !505, !505, !505, !505, !136}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !140, file: !141, line: 813, baseType: !1257, size: 960, offset: 263296)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1258, line: 115, baseType: !1259)
!1258 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1258, line: 89, size: 960, elements: !1260)
!1260 = !{!1261, !1265, !1269, !1274, !1275, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1291, !1295, !1299}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1259, file: !1258, line: 94, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !845, !330, !330}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1259, file: !1258, line: 95, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !330, !845}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1259, file: !1258, line: 97, baseType: !1270, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !1273, !330, !330}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1259, file: !1258, line: 98, baseType: !1262, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1259, file: !1258, line: 99, baseType: !1276, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !330, !1273}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1259, file: !1258, line: 100, baseType: !1266, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1259, file: !1258, line: 102, baseType: !1270, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1259, file: !1258, line: 103, baseType: !1276, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1259, file: !1258, line: 104, baseType: !1266, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1259, file: !1258, line: 106, baseType: !1262, size: 64, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1259, file: !1258, line: 107, baseType: !1266, size: 64, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1259, file: !1258, line: 109, baseType: !1286, size: 64, offset: 704)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !1289, !330, !330}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 1024, elements: !20)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1259, file: !1258, line: 110, baseType: !1292, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{null, !330, !1289}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1259, file: !1258, line: 112, baseType: !1296, size: 64, offset: 832)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !845}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1259, file: !1258, line: 113, baseType: !1296, size: 64, offset: 896)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !140, file: !141, line: 814, baseType: !1301, size: 384, offset: 264256)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1258, line: 126, baseType: !1302)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1258, line: 117, size: 384, elements: !1303)
!1303 = !{!1304, !1308, !1309, !1313, !1314, !1318}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1302, file: !1258, line: 119, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !845, !845}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1302, file: !1258, line: 120, baseType: !1305, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1302, file: !1258, line: 121, baseType: !1310, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!136, !845, !477, !330}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1302, file: !1258, line: 122, baseType: !1310, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1302, file: !1258, line: 123, baseType: !1315, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!136, !845, !477, !330, !845}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1302, file: !1258, line: 124, baseType: !1319, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !845, !845, !330}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !140, file: !141, line: 815, baseType: !1323, size: 1408, offset: 264640)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1324, line: 44, baseType: !1325)
!1324 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1324, line: 26, size: 1408, elements: !1326)
!1326 = !{!1327, !1331, !1332, !1336, !1337, !1341, !1345, !1346, !1351, !1355, !1356, !1357, !1359}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1325, file: !1324, line: 28, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!136, !845, !505, !505}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1325, file: !1324, line: 29, baseType: !1328, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1325, file: !1324, line: 30, baseType: !1333, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!136, !845, !136, !136}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1325, file: !1324, line: 31, baseType: !1333, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1325, file: !1324, line: 33, baseType: !1338, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !845, !489, !136}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1325, file: !1324, line: 34, baseType: !1342, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{null, !845, !485, !136}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1325, file: !1324, line: 35, baseType: !1342, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1325, file: !1324, line: 37, baseType: !1347, size: 64, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !845, !1350, !505, !136}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1325, file: !1324, line: 39, baseType: !1352, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!136, !845}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1325, file: !1324, line: 40, baseType: !1352, size: 64, offset: 576)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1325, file: !1324, line: 41, baseType: !1352, size: 64, offset: 640)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1325, file: !1324, line: 42, baseType: !1358, size: 384, offset: 704)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 384, elements: !478)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1325, file: !1324, line: 43, baseType: !1360, size: 320, offset: 1088)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 320, elements: !94)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!136, !845, !1364}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !335, line: 63, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 58, size: 416, elements: !1367)
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1366, file: !335, line: 60, baseType: !136, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1366, file: !335, line: 61, baseType: !787, size: 256, offset: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1366, file: !335, line: 62, baseType: !190, size: 128, offset: 288)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !140, file: !141, line: 816, baseType: !1372, size: 576, offset: 266048)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !614, line: 170, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 161, size: 576, elements: !1374)
!1374 = !{!1375, !1381, !1382, !1388, !1389}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1373, file: !614, line: 163, baseType: !1376, size: 128)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 128, elements: !40)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !614, line: 159, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !330, !136, !136, !136, !668}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1373, file: !614, line: 164, baseType: !1376, size: 128, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1373, file: !614, line: 165, baseType: !1383, size: 128, offset: 256)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 128, elements: !40)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !614, line: 160, baseType: !1385)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !330, !136, !136, !136}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1373, file: !614, line: 166, baseType: !1383, size: 128, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1373, file: !614, line: 167, baseType: !1390, size: 64, offset: 512)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !330, !1393, !1394, !1397, !136, !136}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 1280, elements: !1396)
!1396 = !{!31, !41}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 128, elements: !1399)
!1399 = !{!90, !90}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !140, file: !141, line: 821, baseType: !1401, size: 64, offset: 266624)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !141, line: 377, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !141, line: 366, size: 960, elements: !1404)
!1404 = !{!1405, !1407, !1408, !1409, !1410, !1411, !1412, !1422, !1423}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1403, file: !141, line: 368, baseType: !1406, size: 8)
!1406 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !76)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1403, file: !141, line: 369, baseType: !76, size: 8, offset: 8)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1403, file: !141, line: 370, baseType: !76, size: 8, offset: 16)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1403, file: !141, line: 371, baseType: !136, size: 32, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1403, file: !141, line: 372, baseType: !136, size: 32, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1403, file: !141, line: 373, baseType: !612, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1403, file: !141, line: 374, baseType: !1413, size: 256, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !614, line: 157, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 149, size: 256, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1421}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1414, file: !614, line: 151, baseType: !611, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1414, file: !614, line: 152, baseType: !136, size: 32, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1414, file: !614, line: 153, baseType: !136, size: 32, offset: 96)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1414, file: !614, line: 154, baseType: !136, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1414, file: !614, line: 155, baseType: !136, size: 32, offset: 160)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1414, file: !614, line: 156, baseType: !136, size: 32, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1403, file: !141, line: 375, baseType: !1413, size: 256, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1403, file: !141, line: 376, baseType: !1413, size: 256, offset: 704)
!1424 = !{!1425, !1426, !1429, !1432, !1433, !1434, !1437, !1440, !1441, !1442, !1443, !1445, !1448, !1449, !1450, !1452, !1455, !1456, !1457, !1459, !1463, !1466, !1468, !1471, !1473, !1477, !1480, !1482, !1485, !1487, !1490, !1492, !1495, !1498, !1501}
!1425 = !DILocalVariable(name: "h", arg: 1, scope: !133, file: !3, line: 68, type: !137)
!1426 = !DILocalVariable(name: "def_quant4", scope: !133, file: !3, line: 70, type: !1427)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 3072, elements: !1428)
!1428 = !{!70, !51}
!1429 = !DILocalVariable(name: "def_quant8", scope: !133, file: !3, line: 71, type: !1430)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 12288, elements: !1431)
!1431 = !{!70, !21}
!1432 = !DILocalVariable(name: "def_dequant4", scope: !133, file: !3, line: 72, type: !1427)
!1433 = !DILocalVariable(name: "def_dequant8", scope: !133, file: !3, line: 73, type: !1430)
!1434 = !DILocalVariable(name: "quant4_mf", scope: !133, file: !3, line: 74, type: !1435)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 12288, elements: !1436)
!1436 = !{!90, !70, !51}
!1437 = !DILocalVariable(name: "quant8_mf", scope: !133, file: !3, line: 75, type: !1438)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 24576, elements: !1439)
!1439 = !{!41, !70, !21}
!1440 = !DILocalVariable(name: "deadzone", scope: !133, file: !3, line: 76, type: !1141)
!1441 = !DILocalVariable(name: "max_qp_err", scope: !133, file: !3, line: 79, type: !136)
!1442 = !DILocalVariable(name: "max_chroma_qp_err", scope: !133, file: !3, line: 80, type: !136)
!1443 = !DILocalVariable(name: "i", scope: !1444, file: !3, line: 113, type: !136)
!1444 = distinct !DILexicalBlock(scope: !133, file: !3, line: 113, column: 5)
!1445 = !DILocalVariable(name: "size", scope: !1446, file: !3, line: 113, type: !136)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 113, column: 5)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 113, column: 5)
!1448 = !DILocalVariable(name: "start", scope: !1446, file: !3, line: 113, type: !136)
!1449 = !DILocalVariable(name: "j", scope: !1446, file: !3, line: 113, type: !136)
!1450 = !DILocalVariable(name: "i", scope: !1451, file: !3, line: 114, type: !136)
!1451 = distinct !DILexicalBlock(scope: !133, file: !3, line: 114, column: 5)
!1452 = !DILocalVariable(name: "size", scope: !1453, file: !3, line: 114, type: !136)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 114, column: 5)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 114, column: 5)
!1455 = !DILocalVariable(name: "start", scope: !1453, file: !3, line: 114, type: !136)
!1456 = !DILocalVariable(name: "j", scope: !1453, file: !3, line: 114, type: !136)
!1457 = !DILocalVariable(name: "q", scope: !1458, file: !3, line: 116, type: !136)
!1458 = distinct !DILexicalBlock(scope: !133, file: !3, line: 116, column: 5)
!1459 = !DILocalVariable(name: "i", scope: !1460, file: !3, line: 118, type: !136)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 118, column: 9)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 117, column: 5)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 116, column: 5)
!1463 = !DILocalVariable(name: "j", scope: !1464, file: !3, line: 120, type: !136)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 119, column: 9)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 118, column: 9)
!1466 = !DILocalVariable(name: "i", scope: !1467, file: !3, line: 124, type: !136)
!1467 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 124, column: 9)
!1468 = !DILocalVariable(name: "j", scope: !1469, file: !3, line: 126, type: !136)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 125, column: 9)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 124, column: 9)
!1471 = !DILocalVariable(name: "q", scope: !1472, file: !3, line: 132, type: !136)
!1472 = distinct !DILexicalBlock(scope: !133, file: !3, line: 132, column: 5)
!1473 = !DILocalVariable(name: "i_list", scope: !1474, file: !3, line: 134, type: !136)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 134, column: 9)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 133, column: 5)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 132, column: 5)
!1477 = !DILocalVariable(name: "i", scope: !1478, file: !3, line: 135, type: !136)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 135, column: 13)
!1479 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 134, column: 9)
!1480 = !DILocalVariable(name: "i_list", scope: !1481, file: !3, line: 140, type: !136)
!1481 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 140, column: 9)
!1482 = !DILocalVariable(name: "i", scope: !1483, file: !3, line: 141, type: !136)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 141, column: 13)
!1484 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 140, column: 9)
!1485 = !DILocalVariable(name: "q", scope: !1486, file: !3, line: 147, type: !136)
!1486 = distinct !DILexicalBlock(scope: !133, file: !3, line: 147, column: 5)
!1487 = !DILocalVariable(name: "j", scope: !1488, file: !3, line: 149, type: !136)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 148, column: 5)
!1489 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 147, column: 5)
!1490 = !DILocalVariable(name: "i_list", scope: !1491, file: !3, line: 150, type: !136)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 150, column: 9)
!1492 = !DILocalVariable(name: "i", scope: !1493, file: !3, line: 151, type: !136)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 151, column: 13)
!1494 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 150, column: 9)
!1495 = !DILocalVariable(name: "i_list", scope: !1496, file: !3, line: 163, type: !136)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 163, column: 13)
!1497 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 162, column: 13)
!1498 = !DILocalVariable(name: "i", scope: !1499, file: !3, line: 164, type: !136)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 164, column: 17)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 163, column: 13)
!1501 = !DILabel(scope: !133, name: "fail", file: !3, line: 187)
!1502 = distinct !DIAssignID()
!1503 = !DILocation(line: 0, scope: !133)
!1504 = distinct !DIAssignID()
!1505 = distinct !DIAssignID()
!1506 = distinct !DIAssignID()
!1507 = distinct !DIAssignID()
!1508 = distinct !DIAssignID()
!1509 = distinct !DIAssignID()
!1510 = !DILocation(line: 70, column: 5, scope: !133)
!1511 = !DILocation(line: 71, column: 5, scope: !133)
!1512 = !DILocation(line: 72, column: 5, scope: !133)
!1513 = !DILocation(line: 73, column: 5, scope: !133)
!1514 = !DILocation(line: 74, column: 5, scope: !133)
!1515 = !DILocation(line: 75, column: 5, scope: !133)
!1516 = !DILocation(line: 76, column: 5, scope: !133)
!1517 = !DILocation(line: 76, column: 47, scope: !133)
!1518 = !DILocation(line: 76, column: 30, scope: !133)
!1519 = !DILocation(line: 76, column: 28, scope: !133)
!1520 = !DILocation(line: 76, column: 23, scope: !133)
!1521 = distinct !DIAssignID()
!1522 = !DILocation(line: 77, column: 30, scope: !133)
!1523 = !DILocation(line: 77, column: 28, scope: !133)
!1524 = distinct !DIAssignID()
!1525 = distinct !DIAssignID()
!1526 = distinct !DIAssignID()
!1527 = !DILocation(line: 0, scope: !1444)
!1528 = !DILocation(line: 0, scope: !1446)
!1529 = !DILocation(line: 113, column: 5, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 113, column: 5)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 113, column: 5)
!1532 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 113, column: 5)
!1533 = !DILocation(line: 113, column: 5, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 113, column: 5)
!1535 = !DILocation(line: 113, column: 5, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 113, column: 5)
!1537 = !DILocation(line: 113, column: 5, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 113, column: 5)
!1539 = !DILocation(line: 113, column: 5, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 113, column: 5)
!1541 = !DILocation(line: 113, column: 5, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 113, column: 5)
!1543 = !DILocation(line: 113, column: 5, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 113, column: 5)
!1545 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 113, column: 5)
!1546 = !DILocation(line: 113, column: 5, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 113, column: 5)
!1548 = !DILocation(line: 113, column: 5, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 113, column: 5)
!1550 = !DILocation(line: 113, column: 5, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 113, column: 5)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 113, column: 5)
!1553 = !DILocation(line: 113, column: 5, scope: !1552)
!1554 = distinct !{!1554, !1548, !1548}
!1555 = !DILocation(line: 113, column: 5, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 113, column: 5)
!1557 = !DILocation(line: 113, column: 5, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 113, column: 5)
!1559 = !DILocation(line: 113, column: 5, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 113, column: 5)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 113, column: 5)
!1562 = !DILocation(line: 113, column: 5, scope: !1561)
!1563 = distinct !{!1563, !1557, !1557}
!1564 = !DILocation(line: 113, column: 5, scope: !1545)
!1565 = !DILocation(line: 0, scope: !1451)
!1566 = !DILocation(line: 0, scope: !1453)
!1567 = !DILocation(line: 114, column: 5, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 114, column: 5)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 114, column: 5)
!1570 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 114, column: 5)
!1571 = !DILocation(line: 114, column: 5, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 114, column: 5)
!1573 = !DILocation(line: 114, column: 5, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 114, column: 5)
!1575 = !DILocation(line: 114, column: 5, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 114, column: 5)
!1577 = !DILocation(line: 114, column: 5, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 114, column: 5)
!1579 = !DILocation(line: 114, column: 5, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 114, column: 5)
!1581 = !DILocation(line: 114, column: 5, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 114, column: 5)
!1583 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 114, column: 5)
!1584 = !DILocation(line: 114, column: 5, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 114, column: 5)
!1586 = !DILocation(line: 114, column: 5, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 114, column: 5)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 114, column: 5)
!1589 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 114, column: 5)
!1590 = !DILocation(line: 114, column: 5, scope: !1588)
!1591 = !DILocation(line: 114, column: 5, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 114, column: 5)
!1593 = !DILocation(line: 114, column: 5, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 114, column: 5)
!1595 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 114, column: 5)
!1596 = !DILocation(line: 114, column: 5, scope: !1583)
!1597 = !DILocation(line: 116, column: 5, scope: !1458)
!1598 = !DILocation(line: 0, scope: !1458)
!1599 = !DILocation(line: 0, scope: !1460)
!1600 = !DILocation(line: 0, scope: !1464)
!1601 = !DILocation(line: 121, column: 34, scope: !1464)
!1602 = !DILocation(line: 121, column: 13, scope: !1464)
!1603 = !DILocation(line: 121, column: 32, scope: !1464)
!1604 = !DILocation(line: 122, column: 36, scope: !1464)
!1605 = !DILocation(line: 122, column: 13, scope: !1464)
!1606 = !DILocation(line: 122, column: 32, scope: !1464)
!1607 = !DILocation(line: 0, scope: !1467)
!1608 = !DILocation(line: 124, column: 9, scope: !1467)
!1609 = !DILocation(line: 124, column: 34, scope: !1470)
!1610 = !DILocation(line: 126, column: 36, scope: !1469)
!1611 = !DILocation(line: 126, column: 40, scope: !1469)
!1612 = !DILocation(line: 126, column: 45, scope: !1469)
!1613 = !DILocation(line: 126, column: 21, scope: !1469)
!1614 = !DILocation(line: 127, column: 34, scope: !1469)
!1615 = !DILocation(line: 127, column: 13, scope: !1469)
!1616 = !DILocation(line: 127, column: 32, scope: !1469)
!1617 = !DILocation(line: 128, column: 36, scope: !1469)
!1618 = !DILocation(line: 128, column: 13, scope: !1469)
!1619 = !DILocation(line: 128, column: 32, scope: !1469)
!1620 = distinct !{!1620, !1608, !1621, !1622, !1623}
!1621 = !DILocation(line: 129, column: 9, scope: !1467)
!1622 = !{!"llvm.loop.isvectorized", i32 1}
!1623 = !{!"llvm.loop.unroll.runtime.disable"}
!1624 = !DILocation(line: 0, scope: !1472)
!1625 = !DILocation(line: 137, column: 72, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 136, column: 13)
!1627 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 135, column: 13)
!1628 = !DILocation(line: 132, column: 5, scope: !1472)
!1629 = !DILocation(line: 116, column: 29, scope: !1462)
!1630 = !DILocation(line: 116, column: 23, scope: !1462)
!1631 = distinct !{!1631, !1597, !1632}
!1632 = !DILocation(line: 130, column: 5, scope: !1458)
!1633 = !DILocation(line: 0, scope: !1474)
!1634 = !DILocation(line: 0, scope: !1478)
!1635 = !DILocation(line: 137, column: 69, scope: !1626)
!1636 = !DILocation(line: 135, column: 13, scope: !1478)
!1637 = !DILocation(line: 0, scope: !1486)
!1638 = !DILocation(line: 147, column: 5, scope: !1486)
!1639 = !DILocation(line: 137, column: 48, scope: !1626)
!1640 = !DILocation(line: 137, column: 67, scope: !1626)
!1641 = !DILocation(line: 137, column: 17, scope: !1626)
!1642 = !DILocation(line: 137, column: 46, scope: !1626)
!1643 = !DILocation(line: 138, column: 48, scope: !1626)
!1644 = !DILocation(line: 138, column: 22, scope: !1626)
!1645 = !DILocation(line: 138, column: 46, scope: !1626)
!1646 = !DILocation(line: 135, column: 38, scope: !1627)
!1647 = !DILocation(line: 135, column: 31, scope: !1627)
!1648 = distinct !{!1648, !1636, !1649}
!1649 = !DILocation(line: 139, column: 13, scope: !1478)
!1650 = !DILocation(line: 0, scope: !1481)
!1651 = !DILocation(line: 0, scope: !1483)
!1652 = !DILocation(line: 143, column: 69, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 142, column: 13)
!1654 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 141, column: 13)
!1655 = !DILocation(line: 141, column: 13, scope: !1483)
!1656 = !DILocation(line: 143, column: 48, scope: !1653)
!1657 = !DILocation(line: 143, column: 67, scope: !1653)
!1658 = !DILocation(line: 143, column: 17, scope: !1653)
!1659 = !DILocation(line: 143, column: 46, scope: !1653)
!1660 = !DILocation(line: 144, column: 48, scope: !1653)
!1661 = !DILocation(line: 144, column: 22, scope: !1653)
!1662 = !DILocation(line: 144, column: 46, scope: !1653)
!1663 = !DILocation(line: 141, column: 38, scope: !1654)
!1664 = !DILocation(line: 141, column: 31, scope: !1654)
!1665 = distinct !{!1665, !1655, !1666}
!1666 = !DILocation(line: 145, column: 13, scope: !1483)
!1667 = !DILocation(line: 132, column: 29, scope: !1476)
!1668 = !DILocation(line: 132, column: 23, scope: !1476)
!1669 = distinct !{!1669, !1628, !1670}
!1670 = !DILocation(line: 146, column: 5, scope: !1472)
!1671 = !DILocation(line: 0, scope: !1491)
!1672 = !DILocation(line: 0, scope: !1493)
!1673 = !DILocation(line: 153, column: 75, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 152, column: 13)
!1675 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 151, column: 13)
!1676 = !DILocation(line: 153, column: 73, scope: !1674)
!1677 = !DILocation(line: 153, column: 48, scope: !1674)
!1678 = !DILocation(line: 153, column: 17, scope: !1674)
!1679 = !DILocation(line: 153, column: 46, scope: !1674)
!1680 = !DILocation(line: 154, column: 50, scope: !1674)
!1681 = !DILocation(line: 0, scope: !1488)
!1682 = !DILocation(line: 154, column: 46, scope: !1674)
!1683 = !DILocation(line: 154, column: 17, scope: !1674)
!1684 = !DILocation(line: 154, column: 44, scope: !1674)
!1685 = !DILocation(line: 156, column: 48, scope: !1674)
!1686 = !DILocation(line: 156, column: 17, scope: !1674)
!1687 = !DILocation(line: 156, column: 46, scope: !1674)
!1688 = !DILocation(line: 157, column: 23, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 157, column: 21)
!1690 = !DILocation(line: 159, column: 32, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 159, column: 21)
!1692 = !DILocation(line: 151, column: 38, scope: !1675)
!1693 = !DILocation(line: 151, column: 31, scope: !1675)
!1694 = !DILocation(line: 151, column: 13, scope: !1493)
!1695 = distinct !{!1695, !1694, !1696}
!1696 = !DILocation(line: 161, column: 13, scope: !1493)
!1697 = !DILocation(line: 157, column: 32, scope: !1689)
!1698 = !DILocation(line: 150, column: 48, scope: !1494)
!1699 = !DILocation(line: 150, column: 37, scope: !1494)
!1700 = !DILocation(line: 150, column: 9, scope: !1491)
!1701 = distinct !{!1701, !1700, !1702}
!1702 = !DILocation(line: 161, column: 13, scope: !1491)
!1703 = !DILocation(line: 174, column: 16, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !133, file: !3, line: 174, column: 9)
!1705 = !DILocation(line: 174, column: 10, scope: !1704)
!1706 = !DILocation(line: 174, column: 27, scope: !1704)
!1707 = !DILocation(line: 162, column: 30, scope: !1497)
!1708 = !DILocation(line: 162, column: 13, scope: !1497)
!1709 = !DILocation(line: 162, column: 13, scope: !1488)
!1710 = !DILocation(line: 0, scope: !1496)
!1711 = !DILocation(line: 0, scope: !1499)
!1712 = !DILocation(line: 166, column: 79, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 165, column: 17)
!1714 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 164, column: 17)
!1715 = !DILocation(line: 166, column: 77, scope: !1713)
!1716 = !DILocation(line: 166, column: 52, scope: !1713)
!1717 = !DILocation(line: 166, column: 21, scope: !1713)
!1718 = !DILocation(line: 166, column: 50, scope: !1713)
!1719 = !DILocation(line: 167, column: 54, scope: !1713)
!1720 = !DILocation(line: 167, column: 50, scope: !1713)
!1721 = !DILocation(line: 167, column: 21, scope: !1713)
!1722 = !DILocation(line: 167, column: 48, scope: !1713)
!1723 = !DILocation(line: 168, column: 52, scope: !1713)
!1724 = !DILocation(line: 168, column: 21, scope: !1713)
!1725 = !DILocation(line: 168, column: 50, scope: !1713)
!1726 = !DILocation(line: 169, column: 27, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 169, column: 25)
!1728 = !DILocation(line: 169, column: 36, scope: !1727)
!1729 = !DILocation(line: 164, column: 42, scope: !1714)
!1730 = !DILocation(line: 164, column: 35, scope: !1714)
!1731 = !DILocation(line: 164, column: 17, scope: !1499)
!1732 = distinct !{!1732, !1731, !1733}
!1733 = !DILocation(line: 171, column: 17, scope: !1499)
!1734 = !DILocation(line: 79, column: 9, scope: !133)
!1735 = !DILocation(line: 147, column: 30, scope: !1489)
!1736 = !DILocation(line: 147, column: 23, scope: !1489)
!1737 = distinct !{!1737, !1638, !1738}
!1738 = !DILocation(line: 172, column: 5, scope: !1486)
!1739 = !DILocation(line: 174, column: 56, scope: !1704)
!1740 = !DILocation(line: 174, column: 41, scope: !1704)
!1741 = !DILocation(line: 174, column: 9, scope: !133)
!1742 = !DILocation(line: 176, column: 116, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 175, column: 5)
!1744 = !DILocation(line: 176, column: 9, scope: !1743)
!1745 = !DILocation(line: 177, column: 80, scope: !1743)
!1746 = !DILocation(line: 177, column: 9, scope: !1743)
!1747 = !DILocation(line: 178, column: 9, scope: !1743)
!1748 = !DILocation(line: 180, column: 54, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !133, file: !3, line: 180, column: 9)
!1750 = !DILocation(line: 180, column: 51, scope: !1749)
!1751 = !DILocation(line: 180, column: 48, scope: !1749)
!1752 = !DILocation(line: 180, column: 9, scope: !133)
!1753 = !DILocation(line: 182, column: 123, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 181, column: 5)
!1755 = !DILocation(line: 182, column: 9, scope: !1754)
!1756 = !DILocation(line: 183, column: 85, scope: !1754)
!1757 = !DILocation(line: 183, column: 113, scope: !1754)
!1758 = !DILocation(line: 183, column: 82, scope: !1754)
!1759 = !DILocation(line: 183, column: 9, scope: !1754)
!1760 = !DILocation(line: 184, column: 9, scope: !1754)
!1761 = !DILocation(line: 187, column: 1, scope: !133)
!1762 = !DILocation(line: 188, column: 5, scope: !133)
!1763 = !DILocation(line: 189, column: 5, scope: !133)
!1764 = !DILocation(line: 190, column: 1, scope: !133)
!1765 = !DISubprogram(name: "x264_malloc", scope: !141, file: !141, line: 174, type: !1766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!14, !136}
!1768 = !DISubprogram(name: "x264_log", scope: !141, file: !141, line: 190, type: !1769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !137, !136, !201, null}
!1771 = distinct !DISubprogram(name: "x264_cqm_delete", scope: !3, file: !3, line: 212, type: !1772, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1774)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !137}
!1774 = !{!1775, !1776, !1778, !1781, !1783}
!1775 = !DILocalVariable(name: "h", arg: 1, scope: !1771, file: !3, line: 212, type: !137)
!1776 = !DILocalVariable(name: "i", scope: !1777, file: !3, line: 214, type: !136)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 214, column: 5)
!1778 = !DILocalVariable(name: "j", scope: !1779, file: !3, line: 214, type: !136)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 214, column: 5)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 214, column: 5)
!1781 = !DILocalVariable(name: "i", scope: !1782, file: !3, line: 215, type: !136)
!1782 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 215, column: 5)
!1783 = !DILocalVariable(name: "j", scope: !1784, file: !3, line: 215, type: !136)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 215, column: 5)
!1785 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 215, column: 5)
!1786 = !DILocation(line: 0, scope: !1771)
!1787 = !DILocation(line: 0, scope: !1777)
!1788 = !DILocation(line: 0, scope: !1779)
!1789 = !DILocation(line: 214, column: 5, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 214, column: 5)
!1791 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 214, column: 5)
!1792 = !DILocation(line: 214, column: 5, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 214, column: 5)
!1794 = !DILocation(line: 214, column: 5, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 214, column: 5)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 214, column: 5)
!1797 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 214, column: 5)
!1798 = !DILocation(line: 214, column: 5, scope: !1779)
!1799 = !DILocation(line: 214, column: 5, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 214, column: 5)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 214, column: 5)
!1802 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 214, column: 5)
!1803 = !DILocation(line: 214, column: 5, scope: !1796)
!1804 = !DILocation(line: 214, column: 5, scope: !1801)
!1805 = !DILocation(line: 0, scope: !1782)
!1806 = !DILocation(line: 0, scope: !1784)
!1807 = !DILocation(line: 215, column: 5, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 215, column: 5)
!1809 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 215, column: 5)
!1810 = !DILocation(line: 215, column: 5, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 215, column: 5)
!1812 = !DILocation(line: 215, column: 5, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 215, column: 5)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 215, column: 5)
!1815 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 215, column: 5)
!1816 = !DILocation(line: 215, column: 5, scope: !1784)
!1817 = !DILocation(line: 215, column: 5, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 215, column: 5)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 215, column: 5)
!1820 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 215, column: 5)
!1821 = !DILocation(line: 216, column: 1, scope: !1771)
!1822 = !DISubprogram(name: "x264_free", scope: !141, file: !141, line: 175, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1823 = distinct !DISubprogram(name: "x264_cqm_parse_file", scope: !3, file: !3, line: 262, type: !1824, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!136, !137, !201}
!1826 = !{!1827, !1828, !1829, !1830, !1831}
!1827 = !DILocalVariable(name: "h", arg: 1, scope: !1823, file: !3, line: 262, type: !137)
!1828 = !DILocalVariable(name: "filename", arg: 2, scope: !1823, file: !3, line: 262, type: !201)
!1829 = !DILocalVariable(name: "p", scope: !1823, file: !3, line: 264, type: !188)
!1830 = !DILocalVariable(name: "b_error", scope: !1823, file: !3, line: 265, type: !136)
!1831 = !DILocalVariable(name: "buf", scope: !1823, file: !3, line: 269, type: !188)
!1832 = !DILocation(line: 0, scope: !1823)
!1833 = !DILocation(line: 267, column: 14, scope: !1823)
!1834 = !DILocation(line: 267, column: 27, scope: !1823)
!1835 = !DILocation(line: 269, column: 17, scope: !1823)
!1836 = !DILocation(line: 270, column: 10, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 270, column: 9)
!1838 = !DILocation(line: 270, column: 9, scope: !1823)
!1839 = !DILocation(line: 276, column: 17, scope: !1823)
!1840 = !DILocation(line: 276, column: 37, scope: !1823)
!1841 = !DILocation(line: 276, column: 5, scope: !1823)
!1842 = !DILocation(line: 272, column: 9, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 271, column: 5)
!1844 = !DILocation(line: 273, column: 9, scope: !1843)
!1845 = !DILocation(line: 277, column: 25, scope: !1823)
!1846 = !DILocation(line: 277, column: 9, scope: !1823)
!1847 = distinct !{!1847, !1841, !1848}
!1848 = !DILocation(line: 277, column: 44, scope: !1823)
!1849 = !DILocation(line: 279, column: 75, scope: !1823)
!1850 = !DILocation(line: 279, column: 16, scope: !1823)
!1851 = !DILocation(line: 280, column: 75, scope: !1823)
!1852 = !DILocation(line: 280, column: 16, scope: !1823)
!1853 = !DILocation(line: 280, column: 13, scope: !1823)
!1854 = !DILocation(line: 281, column: 75, scope: !1823)
!1855 = !DILocation(line: 281, column: 16, scope: !1823)
!1856 = !DILocation(line: 281, column: 13, scope: !1823)
!1857 = !DILocation(line: 282, column: 75, scope: !1823)
!1858 = !DILocation(line: 282, column: 16, scope: !1823)
!1859 = !DILocation(line: 282, column: 13, scope: !1823)
!1860 = !DILocation(line: 283, column: 75, scope: !1823)
!1861 = !DILocation(line: 283, column: 16, scope: !1823)
!1862 = !DILocation(line: 283, column: 13, scope: !1823)
!1863 = !DILocation(line: 284, column: 75, scope: !1823)
!1864 = !DILocation(line: 284, column: 16, scope: !1823)
!1865 = !DILocation(line: 284, column: 13, scope: !1823)
!1866 = !DILocation(line: 286, column: 5, scope: !1823)
!1867 = !DILocation(line: 287, column: 5, scope: !1823)
!1868 = !DILocation(line: 288, column: 1, scope: !1823)
!1869 = !DISubprogram(name: "x264_slurp_file", scope: !141, file: !141, line: 178, type: !1870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!188, !201}
!1872 = !DISubprogram(name: "strchr", scope: !1873, file: !1873, line: 246, type: !1874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1873 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!188, !201, !136}
!1876 = !DISubprogram(name: "strcspn", scope: !1873, file: !1873, line: 293, type: !1877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!721, !201, !201}
!1879 = distinct !DISubprogram(name: "x264_cqm_parse_jmlist", scope: !3, file: !3, line: 218, type: !1880, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1882)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!136, !137, !201, !201, !330, !477, !136}
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892}
!1883 = !DILocalVariable(name: "h", arg: 1, scope: !1879, file: !3, line: 218, type: !137)
!1884 = !DILocalVariable(name: "buf", arg: 2, scope: !1879, file: !3, line: 218, type: !201)
!1885 = !DILocalVariable(name: "name", arg: 3, scope: !1879, file: !3, line: 218, type: !201)
!1886 = !DILocalVariable(name: "cqm", arg: 4, scope: !1879, file: !3, line: 219, type: !330)
!1887 = !DILocalVariable(name: "jvt", arg: 5, scope: !1879, file: !3, line: 219, type: !477)
!1888 = !DILocalVariable(name: "length", arg: 6, scope: !1879, file: !3, line: 219, type: !136)
!1889 = !DILocalVariable(name: "i", scope: !1879, file: !3, line: 221, type: !136)
!1890 = !DILocalVariable(name: "p", scope: !1879, file: !3, line: 223, type: !188)
!1891 = !DILocalVariable(name: "nextvar", scope: !1879, file: !3, line: 234, type: !188)
!1892 = !DILocalVariable(name: "coef", scope: !1893, file: !3, line: 238, type: !136)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 237, column: 5)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 236, column: 5)
!1895 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 236, column: 5)
!1896 = distinct !DIAssignID()
!1897 = !DILocation(line: 0, scope: !1893)
!1898 = !DILocation(line: 0, scope: !1879)
!1899 = !DILocation(line: 223, column: 15, scope: !1879)
!1900 = !DILocation(line: 224, column: 10, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 224, column: 9)
!1902 = !DILocation(line: 224, column: 9, scope: !1879)
!1903 = !DILocation(line: 226, column: 26, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 225, column: 5)
!1905 = !DILocation(line: 226, column: 9, scope: !1904)
!1906 = !DILocation(line: 227, column: 9, scope: !1904)
!1907 = !DILocation(line: 230, column: 10, scope: !1879)
!1908 = !DILocation(line: 230, column: 7, scope: !1879)
!1909 = !DILocation(line: 231, column: 9, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 231, column: 9)
!1911 = !DILocation(line: 231, column: 19, scope: !1910)
!1912 = !DILocation(line: 234, column: 21, scope: !1879)
!1913 = !DILocation(line: 236, column: 19, scope: !1894)
!1914 = !DILocation(line: 236, column: 28, scope: !1894)
!1915 = !DILocation(line: 236, column: 36, scope: !1894)
!1916 = !DILocation(line: 236, column: 34, scope: !1894)
!1917 = !DILocation(line: 236, column: 60, scope: !1894)
!1918 = !DILocation(line: 236, column: 68, scope: !1894)
!1919 = !DILocation(line: 236, column: 5, scope: !1895)
!1920 = !DILocation(line: 238, column: 9, scope: !1893)
!1921 = !DILocation(line: 238, column: 13, scope: !1893)
!1922 = distinct !DIAssignID()
!1923 = !DILocation(line: 239, column: 9, scope: !1893)
!1924 = !DILocation(line: 240, column: 20, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 240, column: 13)
!1926 = !DILocation(line: 245, column: 22, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 245, column: 13)
!1928 = !DILocation(line: 250, column: 18, scope: !1893)
!1929 = !DILocation(line: 250, column: 16, scope: !1893)
!1930 = !DILocation(line: 251, column: 5, scope: !1894)
!1931 = !DILocation(line: 242, column: 13, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 241, column: 9)
!1933 = !DILocation(line: 243, column: 13, scope: !1932)
!1934 = !DILocation(line: 247, column: 13, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 246, column: 9)
!1936 = !DILocation(line: 248, column: 13, scope: !1935)
!1937 = !DILocation(line: 250, column: 9, scope: !1893)
!1938 = !DILocation(line: 236, column: 98, scope: !1894)
!1939 = distinct !{!1939, !1919, !1940, !1941}
!1940 = !DILocation(line: 251, column: 5, scope: !1895)
!1941 = !{!"llvm.loop.peeled.count", i32 1}
!1942 = !DILocation(line: 253, column: 10, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 253, column: 9)
!1944 = !DILocation(line: 236, scope: !1895)
!1945 = !DILocation(line: 253, column: 18, scope: !1943)
!1946 = !DILocation(line: 255, column: 9, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 254, column: 5)
!1948 = !DILocation(line: 256, column: 9, scope: !1947)
!1949 = !DILocation(line: 260, column: 1, scope: !1879)
!1950 = !DISubprogram(name: "strstr", scope: !1873, file: !1873, line: 350, type: !1951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!188, !201, !201}
!1953 = !DISubprogram(name: "strlen", scope: !1873, file: !1873, line: 407, type: !1954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!721, !201}
!1956 = !DISubprogram(name: "strpbrk", scope: !1873, file: !1873, line: 323, type: !1951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1957 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1958, file: !1958, line: 439, type: !1959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1958 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!136, !1961, !1961, null}
!1961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !201)
