; ModuleID = 'x264_src/encoder/me.c'
source_filename = "x264_src/encoder/me.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.mvsad_t = type { i32, [2 x i16] }

@x264_pixel_size = internal unnamed_addr constant [7 x %struct.anon] [%struct.anon { i32 16, i32 16 }, %struct.anon { i32 16, i32 8 }, %struct.anon { i32 8, i32 16 }, %struct.anon { i32 8, i32 8 }, %struct.anon { i32 8, i32 4 }, %struct.anon { i32 4, i32 8 }, %struct.anon { i32 4, i32 4 }], align 16
@hex2 = internal unnamed_addr constant [8 x [2 x i8]] [[2 x i8] c"\FF\FE", [2 x i8] c"\FE\00", [2 x i8] c"\FF\02", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\FE", [2 x i8] c"\FF\FE", [2 x i8] c"\FE\00"], align 16
@mod6m1 = internal unnamed_addr constant [8 x i8] c"\05\00\01\02\03\04\05\00", align 1
@square1 = internal unnamed_addr constant [9 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\FF", [2 x i8] c"\00\01", [2 x i8] c"\FF\00", [2 x i8] c"\01\00", [2 x i8] c"\FF\FF", [2 x i8] c"\FF\01", [2 x i8] c"\01\FF", [2 x i8] c"\01\01"], align 16
@x264_me_search_ref.x264_pixel_size_shift = internal unnamed_addr constant [7 x i8] c"\00\01\01\02\03\03\04", align 1
@x264_me_search_ref.range_mul = internal unnamed_addr constant [4 x [4 x i8]] [[4 x i8] c"\03\03\04\04", [4 x i8] c"\03\04\04\04", [4 x i8] c"\04\04\04\05", [4 x i8] c"\04\04\05\06"], align 16
@x264_me_search_ref.hex4 = internal unnamed_addr constant [16 x [2 x i8]] [[2 x i8] c"\00\FC", [2 x i8] c"\00\04", [2 x i8] c"\FE\FD", [2 x i8] c"\02\FD", [2 x i8] c"\FC\FE", [2 x i8] c"\04\FE", [2 x i8] c"\FC\FF", [2 x i8] c"\04\FF", [2 x i8] c"\FC\00", [2 x i8] c"\04\00", [2 x i8] c"\FC\01", [2 x i8] c"\04\01", [2 x i8] c"\FC\02", [2 x i8] c"\04\02", [2 x i8] c"\FE\03", [2 x i8] c"\02\03"], align 16
@x264_me_search_ref.zero = internal global [128 x i8] zeroinitializer, align 16
@x264_lambda_tab = external local_unnamed_addr constant [52 x i8], align 16
@subpel_iterations = internal unnamed_addr constant [11 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\01\01\00\00", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\02\01\00", [4 x i8] c"\00\02\01\01", [4 x i8] c"\00\02\01\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\04\0A", [4 x i8] c"\00\00\04\0A", [4 x i8] c"\00\00\04\0A"], align 16
@x264_iter_kludge = dso_local local_unnamed_addr global i32 0, align 4
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16
@block_idx_xy_fdec = internal unnamed_addr constant [16 x i16] [i16 0, i16 4, i16 128, i16 132, i16 8, i16 12, i16 136, i16 140, i16 256, i16 260, i16 384, i16 388, i16 264, i16 268, i16 392, i16 396], align 16
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16
@x264_me_refine_bidir.dia4d = internal unnamed_addr constant [33 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\00\00\01\00", [4 x i8] c"\00\00\FF\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00\FF\00\00", [4 x i8] c"\01\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\FF\FF", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\FF\FF\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\FF\FF\00\00", [4 x i8] c"\01\00\00\01", [4 x i8] c"\FF\00\00\FF", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\FF\00\FF", [4 x i8] c"\01\00\01\00", [4 x i8] c"\FF\00\FF\00", [4 x i8] c"\00\00\FF\01", [4 x i8] c"\00\00\01\FF", [4 x i8] c"\00\FF\01\00", [4 x i8] c"\00\01\FF\00", [4 x i8] c"\FF\01\00\00", [4 x i8] c"\01\FF\00\00", [4 x i8] c"\01\00\00\FF", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\00\FF\00\01", [4 x i8] c"\00\01\00\FF", [4 x i8] c"\FF\00\01\00", [4 x i8] c"\01\00\FF\00"], align 8
@weight_none = external constant [3 x %struct.x264_weight_t], align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_search_ref(ptr noundef readonly %h, ptr noundef %m, ptr nocapture noundef readonly %mvc, i32 noundef %i_mvc, ptr noundef %p_halfpel_thresh) local_unnamed_addr #0 {
entry:
  %pix = alloca [256 x i8], align 16
  %costs = alloca [16 x i32], align 16
  %stride2 = alloca i32, align 4
  %stride291 = alloca i32, align 4
  %mvc_fpel = alloca [16 x [2 x i16]], align 8
  %enc_dc = alloca [4 x i32], align 16
  %sads = alloca [3 x i32], align 4
  %0 = load i32, ptr %m, align 16
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 8
  %h4 = getelementptr inbounds i8, ptr %arrayidx, i64 4
  %2 = load i32, ptr %h4, align 4
  %i_stride = getelementptr inbounds i8, ptr %m, i64 120
  %3 = load i32, ptr %i_stride, align 8
  %i_me_range8 = getelementptr inbounds i8, ptr %h, i64 416
  %4 = load i32, ptr %i_me_range8, align 16
  %p_fenc9 = getelementptr inbounds i8, ptr %m, i64 88
  %5 = load ptr, ptr %p_fenc9, align 8
  %p_fref_w11 = getelementptr inbounds i8, ptr %m, i64 80
  %6 = load ptr, ptr %p_fref_w11, align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %pix) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %costs) #6
  %mv_min_fpel = getelementptr inbounds i8, ptr %h, i64 16472
  %mv_max_fpel = getelementptr inbounds i8, ptr %h, i64 16480
  %7 = load <2 x i32>, ptr %mv_min_fpel, align 8
  %8 = load <2 x i32>, ptr %mv_max_fpel, align 16
  %9 = extractelement <2 x i32> %7, i64 0
  %shl = shl i32 %9, 2
  %10 = extractelement <2 x i32> %7, i64 1
  %shl21 = shl i32 %10, 2
  %11 = extractelement <2 x i32> %8, i64 0
  %shl22 = shl i32 %11, 2
  %12 = extractelement <2 x i32> %8, i64 1
  %shl23 = shl i32 %12, 2
  %.neg = mul i32 %9, -65536
  %sub25 = sub nsw i32 0, %10
  %and = and i32 %sub25, 32767
  %or = or disjoint i32 %and, %.neg
  %shl26 = shl i32 %11, 16
  %and27 = and i32 %12, 32767
  %or28 = or disjoint i32 %and27, %shl26
  %or29 = or disjoint i32 %or28, 32768
  %p_cost_mv = getelementptr inbounds i8, ptr %m, i64 8
  %13 = load ptr, ptr %p_cost_mv, align 8
  %mvp = getelementptr inbounds i8, ptr %m, i64 128
  %14 = load i16, ptr %mvp, align 16
  %conv = sext i16 %14 to i32
  %idx.ext = sext i16 %14 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i16, ptr %13, i64 %idx.neg
  %arrayidx33 = getelementptr inbounds i8, ptr %m, i64 130
  %15 = load i16, ptr %arrayidx33, align 2
  %idx.ext35 = sext i16 %15 to i64
  %idx.neg36 = sub nsw i64 0, %idx.ext35
  %add.ptr37 = getelementptr inbounds i16, ptr %13, i64 %idx.neg36
  %cmp.i = icmp sgt i32 %shl, %conv
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv, i32 %shl22)
  %cond5.i = select i1 %cmp.i, i32 %shl, i32 %cond.i
  %conv43 = sext i16 %15 to i32
  %cmp.i6193 = icmp sgt i32 %shl21, %conv43
  %cond.i6194 = tail call i32 @llvm.smin.i32(i32 %conv43, i32 %shl23)
  %cond5.i6195 = select i1 %cmp.i6193, i32 %shl21, i32 %cond.i6194
  %add = add nsw i32 %cond5.i, 2
  %shr = ashr i32 %add, 2
  %add45 = add nsw i32 %cond5.i6195, 2
  %shr46 = ashr i32 %add45, 2
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 16408
  %16 = load i32, ptr %i_subpel_refine, align 8
  %cmp = icmp sgt i32 %16, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and.i = and i32 %cond5.i, 65535
  %shl.i = shl i32 %cond5.i6195, 16
  %add.i = or disjoint i32 %shl.i, %and.i
  %tobool.not = icmp eq i32 %i_mvc, 0
  br i1 %tobool.not, label %for.cond.cleanup, label %if.end68

if.end68:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride2) #6
  store i32 16, ptr %stride2, align 4
  %get_ref = getelementptr inbounds i8, ptr %h, i64 32624
  %17 = load ptr, ptr %get_ref, align 8
  %p_fref = getelementptr inbounds i8, ptr %m, i64 32
  %weight = getelementptr inbounds i8, ptr %m, i64 24
  %18 = load ptr, ptr %weight, align 8
  %call53 = call ptr %17(ptr noundef nonnull %pix, ptr noundef nonnull %stride2, ptr noundef nonnull %p_fref, i32 noundef %3, i32 noundef %cond5.i, i32 noundef %cond5.i6195, i32 noundef %1, i32 noundef %2, ptr noundef %18) #6
  %fpelcmp = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx55 = getelementptr inbounds [7 x ptr], ptr %fpelcmp, i64 0, i64 %idxprom
  %19 = load ptr, ptr %arrayidx55, align 8
  %20 = load i32, ptr %stride2, align 4
  %call56 = call i32 %19(ptr noundef %5, i32 noundef 16, ptr noundef %call53, i32 noundef %20) #6
  %idxprom57 = sext i32 %cond5.i to i64
  %arrayidx58 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom57
  %21 = load i16, ptr %arrayidx58, align 2
  %conv59 = zext i16 %21 to i32
  %add60 = add nsw i32 %call56, %conv59
  %idxprom61 = sext i32 %cond5.i6195 to i64
  %arrayidx62 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom61
  %22 = load i16, ptr %arrayidx62, align 2
  %conv63 = zext i16 %22 to i32
  %add64 = add nsw i32 %add60, %conv63
  %cmp65 = icmp slt i32 %add64, 268435456
  %bpred_cost.0 = call i32 @llvm.smin.i32(i32 %add64, i32 268435456)
  %bpred_my.0 = select i1 %cmp65, i32 %cond5.i6195, i32 0
  %bpred_mx.0 = select i1 %cmp65, i32 %cond5.i, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride2) #6
  %cmp696246 = icmp sgt i32 %i_mvc, 0
  br i1 %cmp696246, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %if.end68
  %get_ref94 = getelementptr inbounds i8, ptr %h, i64 32624
  %p_fref96 = getelementptr inbounds i8, ptr %m, i64 32
  %weight98 = getelementptr inbounds i8, ptr %m, i64 24
  %fpelcmp103 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx105 = getelementptr inbounds [7 x ptr], ptr %fpelcmp103, i64 0, i64 %idxprom
  %wide.trip.count6430 = zext nneg i32 %i_mvc to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc, %if.then, %if.end68
  %bpred_cost.2.lcssa = phi i32 [ %bpred_cost.0, %if.end68 ], [ 268435456, %if.then ], [ %bpred_cost.4, %for.inc ]
  %bpred_my.2.lcssa = phi i32 [ %bpred_my.0, %if.end68 ], [ 0, %if.then ], [ %bpred_my.4, %for.inc ]
  %bpred_mx.2.lcssa = phi i32 [ %bpred_mx.0, %if.end68 ], [ 0, %if.then ], [ %bpred_mx.4, %for.inc ]
  %add120 = add nsw i32 %bpred_mx.2.lcssa, 2
  %shr121 = ashr i32 %add120, 2
  %add122 = add nsw i32 %bpred_my.2.lcssa, 2
  %shr123 = ashr i32 %add122, 2
  %fpelcmp126 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx128 = getelementptr inbounds [7 x ptr], ptr %fpelcmp126, i64 0, i64 %idxprom
  %23 = load ptr, ptr %arrayidx128, align 8
  %mul = mul nsw i32 %shr123, %3
  %add129 = add nsw i32 %mul, %shr121
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds i8, ptr %6, i64 %idxprom130
  %call132 = call i32 %23(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx131, i32 noundef %3) #6
  %shl133 = and i32 %add120, -4
  %idxprom134 = sext i32 %shl133 to i64
  %arrayidx135 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom134
  %24 = load i16, ptr %arrayidx135, align 2
  %conv136 = zext i16 %24 to i32
  %shl137 = and i32 %add122, -4
  %idxprom138 = sext i32 %shl137 to i64
  %arrayidx139 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom138
  %25 = load i16, ptr %arrayidx139, align 2
  %conv140 = zext i16 %25 to i32
  %add141 = add i32 %call132, %conv136
  %add142 = add i32 %add141, %conv140
  %spec.select = call i32 @llvm.smin.i32(i32 %add142, i32 268435456)
  br label %if.end241

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv6427 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next6428, %for.inc ]
  %bpred_mx.26250 = phi i32 [ %bpred_mx.0, %for.body.lr.ph ], [ %bpred_mx.4, %for.inc ]
  %bpred_my.26249 = phi i32 [ %bpred_my.0, %for.body.lr.ph ], [ %bpred_my.4, %for.inc ]
  %bpred_cost.26248 = phi i32 [ %bpred_cost.0, %for.body.lr.ph ], [ %bpred_cost.4, %for.inc ]
  %arrayidx72 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %indvars.iv6427
  %26 = load i32, ptr %arrayidx72, align 4
  %tobool74.not = icmp eq i32 %26, 0
  %cmp78.not = icmp eq i32 %add.i, %26
  %or.cond6169 = select i1 %tobool74.not, i1 true, i1 %cmp78.not
  br i1 %or.cond6169, label %for.inc, label %if.then80

if.then80:                                        ; preds = %for.body
  %sext6580 = shl i32 %26, 16
  %conv84 = ashr exact i32 %sext6580, 16
  %cmp.i6196 = icmp sgt i32 %shl, %conv84
  %cond.i6197 = call i32 @llvm.smin.i32(i32 %conv84, i32 %shl22)
  %cond5.i6198 = select i1 %cmp.i6196, i32 %shl, i32 %cond.i6197
  %conv89 = ashr i32 %26, 16
  %cmp.i6199 = icmp sgt i32 %shl21, %conv89
  %cond.i6200 = call i32 @llvm.smin.i32(i32 %conv89, i32 %shl23)
  %cond5.i6201 = select i1 %cmp.i6199, i32 %shl21, i32 %cond.i6200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride291) #6
  store i32 16, ptr %stride291, align 4
  %27 = load ptr, ptr %get_ref94, align 8
  %28 = load ptr, ptr %weight98, align 8
  %call100 = call ptr %27(ptr noundef nonnull %pix, ptr noundef nonnull %stride291, ptr noundef nonnull %p_fref96, i32 noundef %3, i32 noundef %cond5.i6198, i32 noundef %cond5.i6201, i32 noundef %1, i32 noundef %2, ptr noundef %28) #6
  %29 = load ptr, ptr %arrayidx105, align 8
  %30 = load i32, ptr %stride291, align 4
  %call106 = call i32 %29(ptr noundef %5, i32 noundef 16, ptr noundef %call100, i32 noundef %30) #6
  %idxprom107 = sext i32 %cond5.i6198 to i64
  %arrayidx108 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom107
  %31 = load i16, ptr %arrayidx108, align 2
  %conv109 = zext i16 %31 to i32
  %add110 = add nsw i32 %call106, %conv109
  %idxprom111 = sext i32 %cond5.i6201 to i64
  %arrayidx112 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom111
  %32 = load i16, ptr %arrayidx112, align 2
  %conv113 = zext i16 %32 to i32
  %add114 = add nsw i32 %add110, %conv113
  %cmp115 = icmp slt i32 %add114, %bpred_cost.26248
  %bpred_cost.3 = call i32 @llvm.smin.i32(i32 %add114, i32 %bpred_cost.26248)
  %bpred_my.3 = select i1 %cmp115, i32 %cond5.i6201, i32 %bpred_my.26249
  %bpred_mx.3 = select i1 %cmp115, i32 %cond5.i6198, i32 %bpred_mx.26250
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride291) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then80
  %bpred_cost.4 = phi i32 [ %bpred_cost.3, %if.then80 ], [ %bpred_cost.26248, %for.body ]
  %bpred_my.4 = phi i32 [ %bpred_my.3, %if.then80 ], [ %bpred_my.26249, %for.body ]
  %bpred_mx.4 = phi i32 [ %bpred_mx.3, %if.then80 ], [ %bpred_mx.26250, %for.body ]
  %indvars.iv.next6428 = add nuw nsw i64 %indvars.iv6427, 1
  %exitcond6431.not = icmp eq i64 %indvars.iv.next6428, %wide.trip.count6430
  br i1 %exitcond6431.not, label %for.cond.cleanup, label %for.body

if.else:                                          ; preds = %entry
  %fpelcmp148 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx150 = getelementptr inbounds [7 x ptr], ptr %fpelcmp148, i64 0, i64 %idxprom
  %33 = load ptr, ptr %arrayidx150, align 8
  %mul151 = mul nsw i32 %shr46, %3
  %add152 = add nsw i32 %mul151, %shr
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds i8, ptr %6, i64 %idxprom153
  %call155 = tail call i32 %33(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx154, i32 noundef %3) #6
  %and.i6202 = and i32 %shr, 65535
  %shl.i6203 = shl i32 %shr46, 16
  %add.i6204 = or disjoint i32 %shl.i6203, %and.i6202
  %cmp157 = icmp sgt i32 %i_mvc, 0
  br i1 %cmp157, label %for.body.preheader.i, label %if.end241

for.body.preheader.i:                             ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mvc_fpel) #6
  %wide.trip.count.i = zext nneg i32 %i_mvc to i64
  %min.iters.check = icmp ult i32 %i_mvc, 16
  br i1 %min.iters.check, label %for.body.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483632
  %broadcast.splat = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat6639 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat6641 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat6643 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %34 = or disjoint i64 %index, 4
  %35 = or disjoint i64 %index, 8
  %36 = or disjoint i64 %index, 12
  %37 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %index
  %38 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %34
  %39 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %35
  %40 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %36
  %wide.vec = load <8 x i16>, ptr %37, align 2
  %wide.vec6628 = load <8 x i16>, ptr %38, align 2
  %wide.vec6629 = load <8 x i16>, ptr %39, align 2
  %wide.vec6630 = load <8 x i16>, ptr %40, align 2
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec6631 = shufflevector <8 x i16> %wide.vec6628, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec6632 = shufflevector <8 x i16> %wide.vec6629, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec6633 = shufflevector <8 x i16> %wide.vec6630, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec6634 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %strided.vec6635 = shufflevector <8 x i16> %wide.vec6628, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %strided.vec6636 = shufflevector <8 x i16> %wide.vec6629, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %strided.vec6637 = shufflevector <8 x i16> %wide.vec6630, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %41 = sext <4 x i16> %strided.vec to <4 x i32>
  %42 = sext <4 x i16> %strided.vec6631 to <4 x i32>
  %43 = sext <4 x i16> %strided.vec6632 to <4 x i32>
  %44 = sext <4 x i16> %strided.vec6633 to <4 x i32>
  %45 = add nsw <4 x i32> %41, <i32 2, i32 2, i32 2, i32 2>
  %46 = add nsw <4 x i32> %42, <i32 2, i32 2, i32 2, i32 2>
  %47 = add nsw <4 x i32> %43, <i32 2, i32 2, i32 2, i32 2>
  %48 = add nsw <4 x i32> %44, <i32 2, i32 2, i32 2, i32 2>
  %49 = ashr <4 x i32> %45, <i32 2, i32 2, i32 2, i32 2>
  %50 = ashr <4 x i32> %46, <i32 2, i32 2, i32 2, i32 2>
  %51 = ashr <4 x i32> %47, <i32 2, i32 2, i32 2, i32 2>
  %52 = ashr <4 x i32> %48, <i32 2, i32 2, i32 2, i32 2>
  %53 = sext <4 x i16> %strided.vec6634 to <4 x i32>
  %54 = sext <4 x i16> %strided.vec6635 to <4 x i32>
  %55 = sext <4 x i16> %strided.vec6636 to <4 x i32>
  %56 = sext <4 x i16> %strided.vec6637 to <4 x i32>
  %57 = add nsw <4 x i32> %53, <i32 2, i32 2, i32 2, i32 2>
  %58 = add nsw <4 x i32> %54, <i32 2, i32 2, i32 2, i32 2>
  %59 = add nsw <4 x i32> %55, <i32 2, i32 2, i32 2, i32 2>
  %60 = add nsw <4 x i32> %56, <i32 2, i32 2, i32 2, i32 2>
  %61 = ashr <4 x i32> %57, <i32 2, i32 2, i32 2, i32 2>
  %62 = ashr <4 x i32> %58, <i32 2, i32 2, i32 2, i32 2>
  %63 = ashr <4 x i32> %59, <i32 2, i32 2, i32 2, i32 2>
  %64 = ashr <4 x i32> %60, <i32 2, i32 2, i32 2, i32 2>
  %65 = icmp slt <4 x i32> %49, %broadcast.splat
  %66 = icmp slt <4 x i32> %50, %broadcast.splat
  %67 = icmp slt <4 x i32> %51, %broadcast.splat
  %68 = icmp slt <4 x i32> %52, %broadcast.splat
  %69 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %49, <4 x i32> %broadcast.splat6639)
  %70 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %50, <4 x i32> %broadcast.splat6639)
  %71 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %51, <4 x i32> %broadcast.splat6639)
  %72 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %52, <4 x i32> %broadcast.splat6639)
  %73 = select <4 x i1> %65, <4 x i32> %broadcast.splat, <4 x i32> %69
  %74 = select <4 x i1> %66, <4 x i32> %broadcast.splat, <4 x i32> %70
  %75 = select <4 x i1> %67, <4 x i32> %broadcast.splat, <4 x i32> %71
  %76 = select <4 x i1> %68, <4 x i32> %broadcast.splat, <4 x i32> %72
  %77 = icmp slt <4 x i32> %61, %broadcast.splat6641
  %78 = icmp slt <4 x i32> %62, %broadcast.splat6641
  %79 = icmp slt <4 x i32> %63, %broadcast.splat6641
  %80 = icmp slt <4 x i32> %64, %broadcast.splat6641
  %81 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %61, <4 x i32> %broadcast.splat6643)
  %82 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %62, <4 x i32> %broadcast.splat6643)
  %83 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %63, <4 x i32> %broadcast.splat6643)
  %84 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %64, <4 x i32> %broadcast.splat6643)
  %85 = select <4 x i1> %77, <4 x i32> %broadcast.splat6641, <4 x i32> %81
  %86 = select <4 x i1> %78, <4 x i32> %broadcast.splat6641, <4 x i32> %82
  %87 = select <4 x i1> %79, <4 x i32> %broadcast.splat6641, <4 x i32> %83
  %88 = select <4 x i1> %80, <4 x i32> %broadcast.splat6641, <4 x i32> %84
  %89 = getelementptr inbounds [2 x i16], ptr %mvc_fpel, i64 %index
  %90 = getelementptr inbounds [2 x i16], ptr %mvc_fpel, i64 %34
  %91 = getelementptr inbounds [2 x i16], ptr %mvc_fpel, i64 %35
  %92 = getelementptr inbounds [2 x i16], ptr %mvc_fpel, i64 %36
  %93 = shufflevector <4 x i32> %73, <4 x i32> %85, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %93 to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %89, align 8
  %94 = shufflevector <4 x i32> %74, <4 x i32> %86, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec6644 = trunc <8 x i32> %94 to <8 x i16>
  store <8 x i16> %interleaved.vec6644, ptr %90, align 8
  %95 = shufflevector <4 x i32> %75, <4 x i32> %87, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec6645 = trunc <8 x i32> %95 to <8 x i16>
  store <8 x i16> %interleaved.vec6645, ptr %91, align 8
  %96 = shufflevector <4 x i32> %76, <4 x i32> %88, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec6646 = trunc <8 x i32> %96 to <8 x i16>
  store <8 x i16> %interleaved.vec6646, ptr %92, align 8
  %index.next = add nuw i64 %index, 16
  %97 = icmp eq i64 %index.next, %n.vec
  br i1 %97, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %for.body167.preheader, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %middle.block, %for.body.preheader.i
  %indvars.iv.i.ph = phi i64 [ 0, %for.body.preheader.i ], [ %n.vec, %middle.block ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds [2 x i16], ptr %mvc, i64 %indvars.iv.i
  %arrayidx10.i = getelementptr inbounds [2 x i16], ptr %mvc_fpel, i64 %indvars.iv.i
  %98 = load <2 x i16>, ptr %arrayidx.i, align 2
  %99 = sext <2 x i16> %98 to <2 x i32>
  %100 = add nsw <2 x i32> %99, <i32 2, i32 2>
  %101 = ashr <2 x i32> %100, <i32 2, i32 2>
  %102 = icmp slt <2 x i32> %101, %7
  %103 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %101, <2 x i32> %8)
  %104 = select <2 x i1> %102, <2 x i32> %7, <2 x i32> %103
  %105 = trunc <2 x i32> %104 to <2 x i16>
  store <2 x i16> %105, ptr %arrayidx10.i, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body167.preheader, label %for.body.i, !llvm.loop !8

for.body167.preheader:                            ; preds = %for.body.i, %middle.block
  %shl161 = shl i32 %call155, 4
  %106 = add nuw i32 %i_mvc, 1
  %wide.trip.count = zext i32 %106 to i64
  br label %for.body167

for.cond.cleanup166:                              ; preds = %for.inc220
  %and223 = and i32 %bcost.3, 15
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %if.end238, label %if.then225

for.body167:                                      ; preds = %for.body167.preheader, %for.inc220
  %indvars.iv = phi i64 [ 1, %for.body167.preheader ], [ %indvars.iv.next, %for.inc220 ]
  %bcost.16245 = phi i32 [ %shl161, %for.body167.preheader ], [ %bcost.3, %for.inc220 ]
  %107 = add nsw i64 %indvars.iv, -1
  %arrayidx170 = getelementptr inbounds [16 x [2 x i16]], ptr %mvc_fpel, i64 0, i64 %107
  %108 = load i32, ptr %arrayidx170, align 4
  %tobool172.not = icmp eq i32 %108, 0
  br i1 %tobool172.not, label %for.inc220, label %land.lhs.true173

land.lhs.true173:                                 ; preds = %for.body167
  %arrayidx176 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %107
  %109 = load i32, ptr %arrayidx176, align 4
  %cmp178.not = icmp eq i32 %add.i6204, %109
  br i1 %cmp178.not, label %for.inc220, label %if.then180

if.then180:                                       ; preds = %land.lhs.true173
  %sext = shl i32 %108, 16
  %conv186 = ashr exact i32 %sext, 16
  %conv192 = ashr i32 %108, 16
  %110 = load ptr, ptr %arrayidx150, align 8
  %mul198 = mul nsw i32 %3, %conv192
  %add199 = add nsw i32 %mul198, %conv186
  %idxprom200 = sext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds i8, ptr %6, i64 %idxprom200
  %call202 = tail call i32 %110(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx201, i32 noundef %3) #6
  %shl203 = ashr exact i32 %sext, 14
  %idxprom204 = sext i32 %shl203 to i64
  %arrayidx205 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom204
  %111 = load i16, ptr %arrayidx205, align 2
  %conv206 = zext i16 %111 to i32
  %shl207 = shl nsw i32 %conv192, 2
  %idxprom208 = sext i32 %shl207 to i64
  %arrayidx209 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom208
  %112 = load i16, ptr %arrayidx209, align 2
  %conv210 = zext i16 %112 to i32
  %add211 = add i32 %call202, %conv206
  %add212 = add i32 %add211, %conv210
  %shl213 = shl i32 %add212, 4
  %113 = trunc nuw nsw i64 %indvars.iv to i32
  %add214 = add nsw i32 %shl213, %113
  %spec.select6170 = tail call i32 @llvm.smin.i32(i32 %add214, i32 %bcost.16245)
  br label %for.inc220

for.inc220:                                       ; preds = %for.body167, %land.lhs.true173, %if.then180
  %bcost.3 = phi i32 [ %spec.select6170, %if.then180 ], [ %bcost.16245, %land.lhs.true173 ], [ %bcost.16245, %for.body167 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup166, label %for.body167

if.then225:                                       ; preds = %for.cond.cleanup166
  %sub227 = add nsw i32 %and223, -1
  %idxprom228 = zext nneg i32 %sub227 to i64
  %arrayidx229 = getelementptr inbounds [16 x [2 x i16]], ptr %mvc_fpel, i64 0, i64 %idxprom228
  %114 = load i16, ptr %arrayidx229, align 4
  %conv231 = sext i16 %114 to i32
  %arrayidx236 = getelementptr inbounds i8, ptr %arrayidx229, i64 2
  %115 = load i16, ptr %arrayidx236, align 2
  %conv237 = sext i16 %115 to i32
  br label %if.end238

if.end238:                                        ; preds = %if.then225, %for.cond.cleanup166
  %bmy.1 = phi i32 [ %conv237, %if.then225 ], [ %shr46, %for.cond.cleanup166 ]
  %bmx.1 = phi i32 [ %conv231, %if.then225 ], [ %shr, %for.cond.cleanup166 ]
  %shr239 = ashr i32 %bcost.3, 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mvc_fpel) #6
  br label %if.end241

if.end241:                                        ; preds = %if.else, %if.end238, %for.cond.cleanup
  %pmv.0 = phi i32 [ %add.i, %for.cond.cleanup ], [ %add.i6204, %if.end238 ], [ %add.i6204, %if.else ]
  %bpred_cost.5 = phi i32 [ %bpred_cost.2.lcssa, %for.cond.cleanup ], [ 268435456, %if.end238 ], [ 268435456, %if.else ]
  %bpred_my.5 = phi i32 [ %bpred_my.2.lcssa, %for.cond.cleanup ], [ 0, %if.end238 ], [ 0, %if.else ]
  %bpred_mx.5 = phi i32 [ %bpred_mx.2.lcssa, %for.cond.cleanup ], [ 0, %if.end238 ], [ 0, %if.else ]
  %bcost.4 = phi i32 [ %spec.select, %for.cond.cleanup ], [ %shr239, %if.end238 ], [ %call155, %if.else ]
  %bmy.2 = phi i32 [ %shr123, %for.cond.cleanup ], [ %bmy.1, %if.end238 ], [ %shr46, %if.else ]
  %bmx.2 = phi i32 [ %shr121, %for.cond.cleanup ], [ %bmx.1, %if.end238 ], [ %shr, %if.else ]
  %tobool242.not = icmp eq i32 %pmv.0, 0
  br i1 %tobool242.not, label %if.end264, label %if.then243

if.then243:                                       ; preds = %if.end241
  %fpelcmp246 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx248 = getelementptr inbounds [7 x ptr], ptr %fpelcmp246, i64 0, i64 %idxprom
  %116 = load ptr, ptr %arrayidx248, align 8
  %call253 = call i32 %116(ptr noundef %5, i32 noundef 16, ptr noundef %6, i32 noundef %3) #6
  %117 = load i16, ptr %add.ptr, align 2
  %conv255 = zext i16 %117 to i32
  %118 = load i16, ptr %add.ptr37, align 2
  %conv257 = zext i16 %118 to i32
  %add258 = add i32 %call253, %conv255
  %add259 = add i32 %add258, %conv257
  %cmp260 = icmp slt i32 %add259, %bcost.4
  %bcost.5 = call i32 @llvm.smin.i32(i32 %add259, i32 %bcost.4)
  %bmy.3 = select i1 %cmp260, i32 0, i32 %bmy.2
  %bmx.3 = select i1 %cmp260, i32 0, i32 %bmx.2
  br label %if.end264

if.end264:                                        ; preds = %if.then243, %if.end241
  %bcost.6 = phi i32 [ %bcost.5, %if.then243 ], [ %bcost.4, %if.end241 ]
  %bmy.4 = phi i32 [ %bmy.3, %if.then243 ], [ %bmy.2, %if.end241 ]
  %bmx.4 = phi i32 [ %bmx.3, %if.then243 ], [ %bmx.2, %if.end241 ]
  %i_me_method = getelementptr inbounds i8, ptr %h, i64 16404
  %119 = load i32, ptr %i_me_method, align 4
  switch i32 %119, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %me_hex2
    i32 2, label %sw.bb1041
    i32 3, label %sw.bb3557
    i32 4, label %sw.bb3557
  ]

sw.bb:                                            ; preds = %if.end264
  %shl266 = shl i32 %bcost.6, 4
  %fpelcmp_x4 = getelementptr inbounds i8, ptr %h, i64 32040
  %arrayidx275 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x4, i64 0, i64 %idxprom
  %mul277 = sub nsw i32 0, %3
  %idx.ext278 = sext i32 %mul277 to i64
  %idx.ext282 = sext i32 %3 to i64
  %arrayidx317 = getelementptr inbounds i8, ptr %costs, i64 4
  %arrayidx330 = getelementptr inbounds i8, ptr %costs, i64 8
  %arrayidx343 = getelementptr inbounds i8, ptr %costs, i64 12
  br label %do.body

do.body:                                          ; preds = %land.rhs, %sw.bb
  %i267.0 = phi i32 [ %4, %sw.bb ], [ %dec, %land.rhs ]
  %bcost.7 = phi i32 [ %shl266, %sw.bb ], [ %and395, %land.rhs ]
  %bmy.5 = phi i32 [ %bmy.4, %sw.bb ], [ %sub394, %land.rhs ]
  %bmx.5 = phi i32 [ %bmx.4, %sw.bb ], [ %sub391, %land.rhs ]
  %idx.ext268 = sext i32 %bmx.5 to i64
  %add.ptr269 = getelementptr inbounds i8, ptr %6, i64 %idx.ext268
  %mul270 = mul nsw i32 %bmy.5, %3
  %idx.ext271 = sext i32 %mul270 to i64
  %add.ptr272 = getelementptr inbounds i8, ptr %add.ptr269, i64 %idx.ext271
  %120 = load ptr, ptr %arrayidx275, align 8
  %add.ptr279 = getelementptr inbounds i8, ptr %add.ptr272, i64 %idx.ext278
  %add.ptr283 = getelementptr inbounds i8, ptr %add.ptr272, i64 %idx.ext282
  %add.ptr284 = getelementptr inbounds i8, ptr %add.ptr272, i64 -1
  %add.ptr288 = getelementptr inbounds i8, ptr %add.ptr272, i64 1
  call void %120(ptr noundef %5, ptr noundef %add.ptr279, ptr noundef %add.ptr283, ptr noundef nonnull %add.ptr284, ptr noundef nonnull %add.ptr288, i32 noundef %3, ptr noundef nonnull %costs) #6
  %shl294 = shl i32 %bmx.5, 2
  %idxprom295 = sext i32 %shl294 to i64
  %arrayidx296 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom295
  %121 = load i16, ptr %arrayidx296, align 2
  %conv297 = zext i16 %121 to i32
  %add298 = shl i32 %bmy.5, 2
  %shl299 = add i32 %add298, -4
  %idxprom300 = sext i32 %shl299 to i64
  %arrayidx301 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom300
  %122 = load i16, ptr %arrayidx301, align 2
  %conv302 = zext i16 %122 to i32
  %add303 = add nuw nsw i32 %conv302, %conv297
  %123 = load i32, ptr %costs, align 16
  %add305 = add nsw i32 %add303, %123
  store i32 %add305, ptr %costs, align 16
  %124 = load i16, ptr %arrayidx296, align 2
  %conv310 = zext i16 %124 to i32
  %shl312 = add i32 %add298, 4
  %idxprom313 = sext i32 %shl312 to i64
  %arrayidx314 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom313
  %125 = load i16, ptr %arrayidx314, align 2
  %conv315 = zext i16 %125 to i32
  %add316 = add nuw nsw i32 %conv315, %conv310
  %126 = load i32, ptr %arrayidx317, align 4
  %add318 = add nsw i32 %add316, %126
  store i32 %add318, ptr %arrayidx317, align 4
  %shl320 = add i32 %shl294, -4
  %idxprom321 = sext i32 %shl320 to i64
  %arrayidx322 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom321
  %127 = load i16, ptr %arrayidx322, align 2
  %conv323 = zext i16 %127 to i32
  %idxprom326 = sext i32 %add298 to i64
  %arrayidx327 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom326
  %128 = load i16, ptr %arrayidx327, align 2
  %conv328 = zext i16 %128 to i32
  %add329 = add nuw nsw i32 %conv328, %conv323
  %129 = load i32, ptr %arrayidx330, align 8
  %add331 = add nsw i32 %add329, %129
  store i32 %add331, ptr %arrayidx330, align 8
  %shl333 = add i32 %shl294, 4
  %idxprom334 = sext i32 %shl333 to i64
  %arrayidx335 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom334
  %130 = load i16, ptr %arrayidx335, align 2
  %conv336 = zext i16 %130 to i32
  %131 = load i16, ptr %arrayidx327, align 2
  %conv341 = zext i16 %131 to i32
  %add342 = add nuw nsw i32 %conv341, %conv336
  %132 = load i32, ptr %arrayidx343, align 4
  %add344 = add nsw i32 %add342, %132
  store i32 %add344, ptr %arrayidx343, align 4
  %shl346 = shl i32 %add305, 4
  %add347 = or disjoint i32 %shl346, 1
  %spec.select6171 = call i32 @llvm.smin.i32(i32 %add347, i32 %bcost.7)
  %shl356 = shl i32 %add318, 4
  %add357 = or disjoint i32 %shl356, 3
  %bcost.9 = call i32 @llvm.smin.i32(i32 %add357, i32 %spec.select6171)
  %shl366 = shl i32 %add331, 4
  %add367 = or disjoint i32 %shl366, 4
  %bcost.10 = call i32 @llvm.smin.i32(i32 %add367, i32 %bcost.9)
  %shl376 = shl i32 %add344, 4
  %add377 = or disjoint i32 %shl376, 12
  %bcost.11 = call i32 @llvm.smin.i32(i32 %add377, i32 %bcost.10)
  %and385 = and i32 %bcost.11, 15
  %tobool386.not = icmp eq i32 %and385, 0
  br i1 %tobool386.not, label %do.end, label %if.end388

if.end388:                                        ; preds = %do.body
  %shl389 = shl i32 %bcost.11, 28
  %shr390 = ashr i32 %shl389, 30
  %sub391 = sub nsw i32 %bmx.5, %shr390
  %shl392 = shl i32 %bcost.11, 30
  %shr393 = ashr exact i32 %shl392, 30
  %sub394 = sub nsw i32 %bmy.5, %shr393
  %and395 = and i32 %bcost.11, -16
  %dec = add nsw i32 %i267.0, -1
  %tobool396.not = icmp eq i32 %dec, 0
  br i1 %tobool396.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %if.end388
  %shl397 = shl i32 %sub391, 16
  %and398 = and i32 %sub394, 32767
  %or399 = or disjoint i32 %shl397, %and398
  %add400 = add i32 %or399, %or
  %sub404 = sub i32 %or29, %or399
  %or405 = or i32 %add400, %sub404
  %and406 = and i32 %or405, -2147467264
  %tobool407.not = icmp eq i32 %and406, 0
  br i1 %tobool407.not, label %do.body, label %do.end

do.end:                                           ; preds = %if.end388, %do.body, %land.rhs
  %bcost.12 = phi i32 [ %and395, %land.rhs ], [ %and395, %if.end388 ], [ %bcost.11, %do.body ]
  %bmy.6 = phi i32 [ %sub394, %land.rhs ], [ %sub394, %if.end388 ], [ %bmy.5, %do.body ]
  %bmx.6 = phi i32 [ %sub391, %land.rhs ], [ %sub391, %if.end388 ], [ %bmx.5, %do.body ]
  %shr408 = ashr i32 %bcost.12, 4
  br label %sw.epilog

me_hex2:                                          ; preds = %if.end1267, %cleanup3553, %if.end264
  %bcost.13 = phi i32 [ %bcost.133, %cleanup3553 ], [ %bcost.6, %if.end264 ], [ %bcost.42, %if.end1267 ]
  %bmy.7 = phi i32 [ %bmy.94, %cleanup3553 ], [ %bmy.4, %if.end264 ], [ %bmy.18, %if.end1267 ]
  %bmx.7 = phi i32 [ %bmx.94, %cleanup3553 ], [ %bmx.4, %if.end264 ], [ %bmx.18, %if.end1267 ]
  %i_me_range.0 = phi i32 [ %i_me_range.1, %cleanup3553 ], [ %4, %if.end264 ], [ %4, %if.end1267 ]
  %idx.ext411 = sext i32 %bmx.7 to i64
  %add.ptr412 = getelementptr inbounds i8, ptr %6, i64 %idx.ext411
  %mul413 = mul nsw i32 %bmy.7, %3
  %idx.ext414 = sext i32 %mul413 to i64
  %add.ptr415 = getelementptr inbounds i8, ptr %add.ptr412, i64 %idx.ext414
  %fpelcmp_x3 = getelementptr inbounds i8, ptr %h, i64 31984
  %arrayidx418 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x3, i64 0, i64 %idxprom
  %133 = load ptr, ptr %arrayidx418, align 8
  %add.ptr419 = getelementptr inbounds i8, ptr %add.ptr415, i64 -2
  %add.ptr423 = getelementptr inbounds i8, ptr %add.ptr415, i64 -1
  %mul424 = shl nsw i32 %3, 1
  %idx.ext425 = sext i32 %mul424 to i64
  %add.ptr426 = getelementptr inbounds i8, ptr %add.ptr423, i64 %idx.ext425
  %add.ptr427 = getelementptr inbounds i8, ptr %add.ptr415, i64 1
  %add.ptr430 = getelementptr inbounds i8, ptr %add.ptr427, i64 %idx.ext425
  call void %133(ptr noundef %5, ptr noundef nonnull %add.ptr419, ptr noundef nonnull %add.ptr426, ptr noundef nonnull %add.ptr430, i32 noundef %3, ptr noundef nonnull %costs) #6
  %add432 = shl i32 %bmx.7, 2
  %shl433 = add i32 %add432, -8
  %idxprom434 = sext i32 %shl433 to i64
  %arrayidx435 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom434
  %134 = load i16, ptr %arrayidx435, align 2
  %conv436 = zext i16 %134 to i32
  %shl438 = shl i32 %bmy.7, 2
  %idxprom439 = sext i32 %shl438 to i64
  %arrayidx440 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom439
  %135 = load i16, ptr %arrayidx440, align 2
  %conv441 = zext i16 %135 to i32
  %add442 = add nuw nsw i32 %conv441, %conv436
  %136 = load i32, ptr %costs, align 16
  %add444 = add nsw i32 %add442, %136
  store i32 %add444, ptr %costs, align 16
  %shl446 = add i32 %add432, -4
  %idxprom447 = sext i32 %shl446 to i64
  %arrayidx448 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom447
  %137 = load i16, ptr %arrayidx448, align 2
  %conv449 = zext i16 %137 to i32
  %shl451 = add i32 %shl438, 8
  %idxprom452 = sext i32 %shl451 to i64
  %arrayidx453 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom452
  %138 = load i16, ptr %arrayidx453, align 2
  %conv454 = zext i16 %138 to i32
  %add455 = add nuw nsw i32 %conv454, %conv449
  %arrayidx456 = getelementptr inbounds i8, ptr %costs, i64 4
  %139 = load i32, ptr %arrayidx456, align 4
  %add457 = add nsw i32 %add455, %139
  store i32 %add457, ptr %arrayidx456, align 4
  %shl459 = add i32 %add432, 4
  %idxprom460 = sext i32 %shl459 to i64
  %arrayidx461 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom460
  %140 = load i16, ptr %arrayidx461, align 2
  %conv462 = zext i16 %140 to i32
  %141 = load i16, ptr %arrayidx453, align 2
  %conv467 = zext i16 %141 to i32
  %add468 = add nuw nsw i32 %conv467, %conv462
  %arrayidx469 = getelementptr inbounds i8, ptr %costs, i64 8
  %142 = load i32, ptr %arrayidx469, align 8
  %add470 = add nsw i32 %add468, %142
  store i32 %add470, ptr %arrayidx469, align 8
  %143 = load ptr, ptr %arrayidx418, align 8
  %add.ptr481 = getelementptr inbounds i8, ptr %add.ptr415, i64 2
  %mul486 = mul nsw i32 %3, -2
  %idx.ext487 = sext i32 %mul486 to i64
  %add.ptr488 = getelementptr inbounds i8, ptr %add.ptr427, i64 %idx.ext487
  %add.ptr492 = getelementptr inbounds i8, ptr %add.ptr423, i64 %idx.ext487
  %add.ptr494 = getelementptr inbounds i8, ptr %costs, i64 12
  call void %143(ptr noundef %5, ptr noundef nonnull %add.ptr481, ptr noundef nonnull %add.ptr488, ptr noundef nonnull %add.ptr492, i32 noundef %3, ptr noundef nonnull %add.ptr494) #6
  %shl496 = add i32 %add432, 8
  %idxprom497 = sext i32 %shl496 to i64
  %arrayidx498 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom497
  %144 = load i16, ptr %arrayidx498, align 2
  %conv499 = zext i16 %144 to i32
  %145 = load i16, ptr %arrayidx440, align 2
  %conv504 = zext i16 %145 to i32
  %add505 = add nuw nsw i32 %conv504, %conv499
  %146 = load i32, ptr %add.ptr494, align 4
  %add509 = add nsw i32 %add505, %146
  store i32 %add509, ptr %add.ptr494, align 4
  %147 = load i16, ptr %arrayidx461, align 2
  %conv514 = zext i16 %147 to i32
  %shl516 = add i32 %shl438, -8
  %idxprom517 = sext i32 %shl516 to i64
  %arrayidx518 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom517
  %148 = load i16, ptr %arrayidx518, align 2
  %conv519 = zext i16 %148 to i32
  %add520 = add nuw nsw i32 %conv519, %conv514
  %arrayidx523 = getelementptr inbounds i8, ptr %costs, i64 16
  %149 = load i32, ptr %arrayidx523, align 16
  %add524 = add nsw i32 %add520, %149
  store i32 %add524, ptr %arrayidx523, align 16
  %150 = load i16, ptr %arrayidx448, align 2
  %conv529 = zext i16 %150 to i32
  %151 = load i16, ptr %arrayidx518, align 2
  %conv534 = zext i16 %151 to i32
  %add535 = add nuw nsw i32 %conv534, %conv529
  %arrayidx538 = getelementptr inbounds i8, ptr %costs, i64 20
  %152 = load i32, ptr %arrayidx538, align 4
  %add539 = add nsw i32 %add535, %152
  store i32 %add539, ptr %arrayidx538, align 4
  %shl540 = shl i32 %bcost.13, 3
  %153 = load i32, ptr %costs, align 16
  %shl542 = shl i32 %153, 3
  %add543 = or disjoint i32 %shl542, 2
  %spec.select6172 = call i32 @llvm.smin.i32(i32 %add543, i32 %shl540)
  %154 = load i32, ptr %arrayidx456, align 4
  %shl552 = shl i32 %154, 3
  %add553 = or disjoint i32 %shl552, 3
  %bcost.15 = call i32 @llvm.smin.i32(i32 %add553, i32 %spec.select6172)
  %155 = load i32, ptr %arrayidx469, align 8
  %shl562 = shl i32 %155, 3
  %add563 = or disjoint i32 %shl562, 4
  %bcost.16 = call i32 @llvm.smin.i32(i32 %add563, i32 %bcost.15)
  %shl572 = shl i32 %add509, 3
  %add573 = or disjoint i32 %shl572, 5
  %bcost.17 = call i32 @llvm.smin.i32(i32 %add573, i32 %bcost.16)
  %shl582 = shl i32 %add524, 3
  %add583 = or disjoint i32 %shl582, 6
  %bcost.18 = call i32 @llvm.smin.i32(i32 %add583, i32 %bcost.17)
  %shl592 = shl i32 %add539, 3
  %add593 = or disjoint i32 %shl592, 7
  %bcost.19 = call i32 @llvm.smin.i32(i32 %add593, i32 %bcost.18)
  %and601 = and i32 %bcost.19, 7
  %tobool602.not = icmp eq i32 %and601, 0
  br i1 %tobool602.not, label %if.end822, label %if.then603

if.then603:                                       ; preds = %me_hex2
  %add606 = add nsw i32 %and601, -1
  %idxprom607 = zext nneg i32 %add606 to i64
  %arrayidx608 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %idxprom607
  %156 = load i8, ptr %arrayidx608, align 2
  %conv610 = sext i8 %156 to i32
  %add611 = add nsw i32 %bmx.7, %conv610
  %arrayidx615 = getelementptr inbounds i8, ptr %arrayidx608, i64 1
  %157 = load i8, ptr %arrayidx615, align 1
  %conv616 = sext i8 %157 to i32
  %add617 = add nsw i32 %bmy.7, %conv616
  %shr619 = ashr i32 %i_me_range.0, 1
  %cmp6226409 = icmp sgt i32 %shr619, 1
  br i1 %cmp6226409, label %land.rhs624.preheader, label %if.end822

land.rhs624.preheader:                            ; preds = %if.then603
  %sub605 = add nsw i32 %and601, -2
  br label %land.rhs624

land.rhs624:                                      ; preds = %land.rhs624.preheader, %if.end799
  %158 = phi i8 [ %176, %if.end799 ], [ %157, %land.rhs624.preheader ]
  %159 = phi i8 [ %175, %if.end799 ], [ %156, %land.rhs624.preheader ]
  %i618.06414.in = phi i32 [ %i618.06414, %if.end799 ], [ %shr619, %land.rhs624.preheader ]
  %bmx.86413 = phi i32 [ %add812, %if.end799 ], [ %add611, %land.rhs624.preheader ]
  %bmy.86412 = phi i32 [ %add818, %if.end799 ], [ %add617, %land.rhs624.preheader ]
  %bcost.206411 = phi i32 [ %bcost.23, %if.end799 ], [ %bcost.19, %land.rhs624.preheader ]
  %dir.06410 = phi i32 [ %conv806, %if.end799 ], [ %sub605, %land.rhs624.preheader ]
  %i618.06414 = add nsw i32 %i618.06414.in, -1
  %shl625 = shl i32 %bmx.86413, 16
  %and626 = and i32 %bmy.86412, 32767
  %or627 = or disjoint i32 %shl625, %and626
  %add628 = add i32 %or627, %or
  %sub632 = sub i32 %or29, %or627
  %or633 = or i32 %add628, %sub632
  %and634 = and i32 %or633, -2147467264
  %tobool635.not = icmp eq i32 %and634, 0
  br i1 %tobool635.not, label %for.body639, label %if.end822

for.body639:                                      ; preds = %land.rhs624
  %idx.ext641 = sext i32 %bmx.86413 to i64
  %add.ptr642 = getelementptr inbounds i8, ptr %6, i64 %idx.ext641
  %mul643 = mul nsw i32 %bmy.86412, %3
  %idx.ext644 = sext i32 %mul643 to i64
  %add.ptr645 = getelementptr inbounds i8, ptr %add.ptr642, i64 %idx.ext644
  %160 = load ptr, ptr %arrayidx418, align 8
  %idxprom651 = sext i32 %dir.06410 to i64
  %arrayidx652 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %idxprom651
  %161 = load i8, ptr %arrayidx652, align 2
  %idx.ext655 = sext i8 %161 to i64
  %add.ptr656 = getelementptr inbounds i8, ptr %add.ptr645, i64 %idx.ext655
  %arrayidx660 = getelementptr inbounds i8, ptr %arrayidx652, i64 1
  %162 = load i8, ptr %arrayidx660, align 1
  %conv661 = sext i8 %162 to i32
  %mul662 = mul nsw i32 %3, %conv661
  %idx.ext663 = sext i32 %mul662 to i64
  %add.ptr664 = getelementptr inbounds i8, ptr %add.ptr656, i64 %idx.ext663
  %idx.ext670 = sext i8 %159 to i64
  %add.ptr671 = getelementptr inbounds i8, ptr %add.ptr645, i64 %idx.ext670
  %conv676 = sext i8 %158 to i32
  %mul677 = mul nsw i32 %3, %conv676
  %idx.ext678 = sext i32 %mul677 to i64
  %add.ptr679 = getelementptr inbounds i8, ptr %add.ptr671, i64 %idx.ext678
  %add680 = add nsw i32 %dir.06410, 2
  %idxprom681 = zext nneg i32 %add680 to i64
  %arrayidx682 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %idxprom681
  %163 = load i8, ptr %arrayidx682, align 2
  %idx.ext685 = sext i8 %163 to i64
  %add.ptr686 = getelementptr inbounds i8, ptr %add.ptr645, i64 %idx.ext685
  %arrayidx690 = getelementptr inbounds i8, ptr %arrayidx682, i64 1
  %164 = load i8, ptr %arrayidx690, align 1
  %conv691 = sext i8 %164 to i32
  %mul692 = mul nsw i32 %3, %conv691
  %idx.ext693 = sext i32 %mul692 to i64
  %add.ptr694 = getelementptr inbounds i8, ptr %add.ptr686, i64 %idx.ext693
  call void %160(ptr noundef %5, ptr noundef %add.ptr664, ptr noundef %add.ptr679, ptr noundef %add.ptr694, i32 noundef %3, ptr noundef nonnull %costs) #6
  %conv700 = sext i8 %161 to i32
  %add701 = add nsw i32 %bmx.86413, %conv700
  %shl702 = shl i32 %add701, 2
  %idxprom703 = sext i32 %shl702 to i64
  %arrayidx704 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom703
  %165 = load i16, ptr %arrayidx704, align 2
  %conv705 = zext i16 %165 to i32
  %add711 = add nsw i32 %bmy.86412, %conv661
  %shl712 = shl i32 %add711, 2
  %idxprom713 = sext i32 %shl712 to i64
  %arrayidx714 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom713
  %166 = load i16, ptr %arrayidx714, align 2
  %conv715 = zext i16 %166 to i32
  %add716 = add nuw nsw i32 %conv715, %conv705
  %167 = load i32, ptr %costs, align 16
  %add718 = add nsw i32 %add716, %167
  store i32 %add718, ptr %costs, align 16
  %conv723 = sext i8 %159 to i32
  %add724 = add nsw i32 %bmx.86413, %conv723
  %shl725 = shl i32 %add724, 2
  %idxprom726 = sext i32 %shl725 to i64
  %arrayidx727 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom726
  %168 = load i16, ptr %arrayidx727, align 2
  %conv728 = zext i16 %168 to i32
  %add734 = add nsw i32 %bmy.86412, %conv676
  %shl735 = shl i32 %add734, 2
  %idxprom736 = sext i32 %shl735 to i64
  %arrayidx737 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom736
  %169 = load i16, ptr %arrayidx737, align 2
  %conv738 = zext i16 %169 to i32
  %add739 = add nuw nsw i32 %conv738, %conv728
  %170 = load i32, ptr %arrayidx456, align 4
  %add741 = add nsw i32 %add739, %170
  store i32 %add741, ptr %arrayidx456, align 4
  %conv746 = sext i8 %163 to i32
  %add747 = add nsw i32 %bmx.86413, %conv746
  %shl748 = shl i32 %add747, 2
  %idxprom749 = sext i32 %shl748 to i64
  %arrayidx750 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom749
  %171 = load i16, ptr %arrayidx750, align 2
  %conv751 = zext i16 %171 to i32
  %add757 = add nsw i32 %bmy.86412, %conv691
  %shl758 = shl i32 %add757, 2
  %idxprom759 = sext i32 %shl758 to i64
  %arrayidx760 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom759
  %172 = load i16, ptr %arrayidx760, align 2
  %conv761 = zext i16 %172 to i32
  %add762 = add nuw nsw i32 %conv761, %conv751
  %173 = load i32, ptr %arrayidx469, align 8
  %add764 = add nsw i32 %add762, %173
  store i32 %add764, ptr %arrayidx469, align 8
  %and765 = and i32 %bcost.206411, -8
  %shl767 = shl i32 %add718, 3
  %add768 = or disjoint i32 %shl767, 1
  %spec.select6173 = call i32 @llvm.smin.i32(i32 %add768, i32 %and765)
  %shl777 = shl i32 %add741, 3
  %add778 = or disjoint i32 %shl777, 2
  %bcost.22 = call i32 @llvm.smin.i32(i32 %add778, i32 %spec.select6173)
  %shl787 = shl i32 %add764, 3
  %add788 = or disjoint i32 %shl787, 3
  %bcost.23 = call i32 @llvm.smin.i32(i32 %add788, i32 %bcost.22)
  %and796 = and i32 %bcost.23, 3
  %tobool797.not = icmp eq i32 %and796, 0
  br i1 %tobool797.not, label %if.end822, label %if.end799

if.end799:                                        ; preds = %for.body639
  %add802 = add nsw i32 %dir.06410, -1
  %add803 = add nsw i32 %add802, %and796
  %idxprom804 = sext i32 %add803 to i64
  %arrayidx805 = getelementptr inbounds [8 x i8], ptr @mod6m1, i64 0, i64 %idxprom804
  %174 = load i8, ptr %arrayidx805, align 1
  %conv806 = zext i8 %174 to i32
  %add807 = add nuw nsw i32 %conv806, 1
  %idxprom808 = zext nneg i32 %add807 to i64
  %arrayidx809 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %idxprom808
  %175 = load i8, ptr %arrayidx809, align 2
  %conv811 = sext i8 %175 to i32
  %add812 = add nsw i32 %bmx.86413, %conv811
  %arrayidx816 = getelementptr inbounds i8, ptr %arrayidx809, i64 1
  %176 = load i8, ptr %arrayidx816, align 1
  %conv817 = sext i8 %176 to i32
  %add818 = add nsw i32 %bmy.86412, %conv817
  %cmp622 = icmp ugt i32 %i618.06414.in, 2
  br i1 %cmp622, label %land.rhs624, label %if.end822

if.end822:                                        ; preds = %for.body639, %land.rhs624, %if.end799, %if.then603, %me_hex2
  %bcost.25 = phi i32 [ %bcost.19, %me_hex2 ], [ %bcost.19, %if.then603 ], [ %bcost.23, %for.body639 ], [ %bcost.206411, %land.rhs624 ], [ %bcost.23, %if.end799 ]
  %bmy.9 = phi i32 [ %bmy.7, %me_hex2 ], [ %add617, %if.then603 ], [ %bmy.86412, %for.body639 ], [ %bmy.86412, %land.rhs624 ], [ %add818, %if.end799 ]
  %bmx.9 = phi i32 [ %bmx.7, %me_hex2 ], [ %add611, %if.then603 ], [ %bmx.86413, %for.body639 ], [ %bmx.86413, %land.rhs624 ], [ %add812, %if.end799 ]
  %shr823 = ashr i32 %bcost.25, 3
  %idx.ext826 = sext i32 %bmx.9 to i64
  %add.ptr827 = getelementptr inbounds i8, ptr %6, i64 %idx.ext826
  %mul828 = mul nsw i32 %bmy.9, %3
  %idx.ext829 = sext i32 %mul828 to i64
  %add.ptr830 = getelementptr inbounds i8, ptr %add.ptr827, i64 %idx.ext829
  %fpelcmp_x4832 = getelementptr inbounds i8, ptr %h, i64 32040
  %arrayidx834 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x4832, i64 0, i64 %idxprom
  %177 = load ptr, ptr %arrayidx834, align 8
  %mul836 = sub nsw i32 0, %3
  %idx.ext837 = sext i32 %mul836 to i64
  %add.ptr838 = getelementptr inbounds i8, ptr %add.ptr830, i64 %idx.ext837
  %idx.ext841 = sext i32 %3 to i64
  %add.ptr842 = getelementptr inbounds i8, ptr %add.ptr830, i64 %idx.ext841
  %add.ptr843 = getelementptr inbounds i8, ptr %add.ptr830, i64 -1
  %add.ptr847 = getelementptr inbounds i8, ptr %add.ptr830, i64 1
  call void %177(ptr noundef %5, ptr noundef %add.ptr838, ptr noundef %add.ptr842, ptr noundef nonnull %add.ptr843, ptr noundef nonnull %add.ptr847, i32 noundef %3, ptr noundef nonnull %costs) #6
  %shl853 = shl i32 %bmx.9, 2
  %idxprom854 = sext i32 %shl853 to i64
  %arrayidx855 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom854
  %178 = load i16, ptr %arrayidx855, align 2
  %conv856 = zext i16 %178 to i32
  %add857 = shl i32 %bmy.9, 2
  %shl858 = add i32 %add857, -4
  %idxprom859 = sext i32 %shl858 to i64
  %arrayidx860 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom859
  %179 = load i16, ptr %arrayidx860, align 2
  %conv861 = zext i16 %179 to i32
  %add862 = add nuw nsw i32 %conv861, %conv856
  %180 = load i32, ptr %costs, align 16
  %add864 = add nsw i32 %add862, %180
  store i32 %add864, ptr %costs, align 16
  %181 = load i16, ptr %arrayidx855, align 2
  %conv869 = zext i16 %181 to i32
  %shl871 = add i32 %add857, 4
  %idxprom872 = sext i32 %shl871 to i64
  %arrayidx873 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom872
  %182 = load i16, ptr %arrayidx873, align 2
  %conv874 = zext i16 %182 to i32
  %add875 = add nuw nsw i32 %conv874, %conv869
  %183 = load i32, ptr %arrayidx456, align 4
  %add877 = add nsw i32 %add875, %183
  store i32 %add877, ptr %arrayidx456, align 4
  %shl879 = add i32 %shl853, -4
  %idxprom880 = sext i32 %shl879 to i64
  %arrayidx881 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom880
  %184 = load i16, ptr %arrayidx881, align 2
  %conv882 = zext i16 %184 to i32
  %idxprom885 = sext i32 %add857 to i64
  %arrayidx886 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom885
  %185 = load i16, ptr %arrayidx886, align 2
  %conv887 = zext i16 %185 to i32
  %add888 = add nuw nsw i32 %conv887, %conv882
  %186 = load i32, ptr %arrayidx469, align 8
  %add890 = add nsw i32 %add888, %186
  store i32 %add890, ptr %arrayidx469, align 8
  %shl892 = add i32 %shl853, 4
  %idxprom893 = sext i32 %shl892 to i64
  %arrayidx894 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom893
  %187 = load i16, ptr %arrayidx894, align 2
  %conv895 = zext i16 %187 to i32
  %188 = load i16, ptr %arrayidx886, align 2
  %conv900 = zext i16 %188 to i32
  %add901 = add nuw nsw i32 %conv900, %conv895
  %189 = load i32, ptr %add.ptr494, align 4
  %add903 = add nsw i32 %add901, %189
  store i32 %add903, ptr %add.ptr494, align 4
  %cmp905 = icmp slt i32 %add864, %shr823
  %spec.select6174 = zext i1 %cmp905 to i64
  %spec.select6175 = call i32 @llvm.smin.i32(i32 %add864, i32 %shr823)
  %cmp911 = icmp slt i32 %add877, %spec.select6175
  %dir824.1 = select i1 %cmp911, i64 2, i64 %spec.select6174
  %bcost.27 = call i32 @llvm.smin.i32(i32 %add877, i32 %spec.select6175)
  %cmp917 = icmp slt i32 %add890, %bcost.27
  %dir824.2 = select i1 %cmp917, i64 3, i64 %dir824.1
  %bcost.28 = call i32 @llvm.smin.i32(i32 %add890, i32 %bcost.27)
  %cmp923 = icmp slt i32 %add903, %bcost.28
  %dir824.3 = select i1 %cmp923, i64 4, i64 %dir824.2
  %bcost.29 = call i32 @llvm.smin.i32(i32 %add903, i32 %bcost.28)
  %190 = load ptr, ptr %arrayidx834, align 8
  %add.ptr941 = getelementptr inbounds i8, ptr %add.ptr843, i64 %idx.ext837
  %add.ptr945 = getelementptr inbounds i8, ptr %add.ptr843, i64 %idx.ext841
  %add.ptr949 = getelementptr inbounds i8, ptr %add.ptr847, i64 %idx.ext837
  %add.ptr953 = getelementptr inbounds i8, ptr %add.ptr847, i64 %idx.ext841
  call void %190(ptr noundef %5, ptr noundef nonnull %add.ptr941, ptr noundef nonnull %add.ptr945, ptr noundef nonnull %add.ptr949, ptr noundef nonnull %add.ptr953, i32 noundef %3, ptr noundef nonnull %costs) #6
  %191 = load i16, ptr %arrayidx881, align 2
  %conv959 = zext i16 %191 to i32
  %192 = load i16, ptr %arrayidx860, align 2
  %conv964 = zext i16 %192 to i32
  %add965 = add nuw nsw i32 %conv964, %conv959
  %193 = load i32, ptr %costs, align 16
  %add967 = add nsw i32 %add965, %193
  store i32 %add967, ptr %costs, align 16
  %194 = load i16, ptr %arrayidx881, align 2
  %conv972 = zext i16 %194 to i32
  %195 = load i16, ptr %arrayidx873, align 2
  %conv977 = zext i16 %195 to i32
  %add978 = add nuw nsw i32 %conv977, %conv972
  %196 = load i32, ptr %arrayidx456, align 4
  %add980 = add nsw i32 %add978, %196
  store i32 %add980, ptr %arrayidx456, align 4
  %197 = load i16, ptr %arrayidx894, align 2
  %conv985 = zext i16 %197 to i32
  %198 = load i16, ptr %arrayidx860, align 2
  %conv990 = zext i16 %198 to i32
  %add991 = add nuw nsw i32 %conv990, %conv985
  %199 = load i32, ptr %arrayidx469, align 8
  %add993 = add nsw i32 %add991, %199
  store i32 %add993, ptr %arrayidx469, align 8
  %200 = load i16, ptr %arrayidx894, align 2
  %conv998 = zext i16 %200 to i32
  %201 = load i16, ptr %arrayidx873, align 2
  %conv1003 = zext i16 %201 to i32
  %add1004 = add nuw nsw i32 %conv1003, %conv998
  %202 = load i32, ptr %add.ptr494, align 4
  %add1006 = add nsw i32 %add1004, %202
  store i32 %add1006, ptr %add.ptr494, align 4
  %cmp1008 = icmp slt i32 %add967, %bcost.29
  %dir824.4 = select i1 %cmp1008, i64 5, i64 %dir824.3
  %bcost.30 = call i32 @llvm.smin.i32(i32 %add967, i32 %bcost.29)
  %cmp1014 = icmp slt i32 %add980, %bcost.30
  %dir824.5 = select i1 %cmp1014, i64 6, i64 %dir824.4
  %bcost.31 = call i32 @llvm.smin.i32(i32 %add980, i32 %bcost.30)
  %cmp1020 = icmp slt i32 %add993, %bcost.31
  %dir824.6 = select i1 %cmp1020, i64 7, i64 %dir824.5
  %bcost.32 = call i32 @llvm.smin.i32(i32 %add993, i32 %bcost.31)
  %cmp1026 = icmp slt i32 %add1006, %bcost.32
  %dir824.7 = select i1 %cmp1026, i64 8, i64 %dir824.6
  %bcost.33 = call i32 @llvm.smin.i32(i32 %add1006, i32 %bcost.32)
  %arrayidx1032 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %dir824.7
  %203 = load i8, ptr %arrayidx1032, align 2
  %conv1034 = sext i8 %203 to i32
  %add1035 = add nsw i32 %bmx.9, %conv1034
  %arrayidx1038 = getelementptr inbounds i8, ptr %arrayidx1032, i64 1
  %204 = load i8, ptr %arrayidx1038, align 1
  %conv1039 = sext i8 %204 to i32
  %add1040 = add nsw i32 %bmy.9, %conv1039
  br label %sw.epilog

sw.bb1041:                                        ; preds = %if.end264
  %idx.ext1043 = sext i32 %shr to i64
  %add.ptr1044 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1043
  %mul1045 = mul nsw i32 %shr46, %3
  %idx.ext1046 = sext i32 %mul1045 to i64
  %add.ptr1047 = getelementptr inbounds i8, ptr %add.ptr1044, i64 %idx.ext1046
  %fpelcmp_x41049 = getelementptr inbounds i8, ptr %h, i64 32040
  %arrayidx1051 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x41049, i64 0, i64 %idxprom
  %205 = load ptr, ptr %arrayidx1051, align 8
  %mul1053 = sub nsw i32 0, %3
  %idx.ext1054 = sext i32 %mul1053 to i64
  %add.ptr1055 = getelementptr inbounds i8, ptr %add.ptr1047, i64 %idx.ext1054
  %idx.ext1058 = sext i32 %3 to i64
  %add.ptr1059 = getelementptr inbounds i8, ptr %add.ptr1047, i64 %idx.ext1058
  %add.ptr1060 = getelementptr inbounds i8, ptr %add.ptr1047, i64 -1
  %add.ptr1064 = getelementptr inbounds i8, ptr %add.ptr1047, i64 1
  call void %205(ptr noundef %5, ptr noundef %add.ptr1055, ptr noundef %add.ptr1059, ptr noundef nonnull %add.ptr1060, ptr noundef nonnull %add.ptr1064, i32 noundef %3, ptr noundef nonnull %costs) #6
  %shl1070 = and i32 %add, -4
  %idxprom1071 = sext i32 %shl1070 to i64
  %arrayidx1072 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1071
  %206 = load i16, ptr %arrayidx1072, align 2
  %conv1073 = zext i16 %206 to i32
  %add1074 = add nsw i32 %shr46, -1
  %shl1075 = shl i32 %add1074, 2
  %idxprom1076 = sext i32 %shl1075 to i64
  %arrayidx1077 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1076
  %207 = load i16, ptr %arrayidx1077, align 2
  %conv1078 = zext i16 %207 to i32
  %add1079 = add nuw nsw i32 %conv1078, %conv1073
  %208 = load i32, ptr %costs, align 16
  %add1081 = add nsw i32 %add1079, %208
  store i32 %add1081, ptr %costs, align 16
  %209 = load i16, ptr %arrayidx1072, align 2
  %conv1086 = zext i16 %209 to i32
  %add1087 = add nsw i32 %shr46, 1
  %shl1088 = shl i32 %add1087, 2
  %idxprom1089 = sext i32 %shl1088 to i64
  %arrayidx1090 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1089
  %210 = load i16, ptr %arrayidx1090, align 2
  %conv1091 = zext i16 %210 to i32
  %add1092 = add nuw nsw i32 %conv1091, %conv1086
  %arrayidx1093 = getelementptr inbounds i8, ptr %costs, i64 4
  %211 = load i32, ptr %arrayidx1093, align 4
  %add1094 = add nsw i32 %add1092, %211
  store i32 %add1094, ptr %arrayidx1093, align 4
  %add1095 = add nsw i32 %shr, -1
  %shl1096 = shl i32 %add1095, 2
  %idxprom1097 = sext i32 %shl1096 to i64
  %arrayidx1098 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1097
  %212 = load i16, ptr %arrayidx1098, align 2
  %conv1099 = zext i16 %212 to i32
  %shl1101 = and i32 %add45, -4
  %idxprom1102 = sext i32 %shl1101 to i64
  %arrayidx1103 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1102
  %213 = load i16, ptr %arrayidx1103, align 2
  %conv1104 = zext i16 %213 to i32
  %add1105 = add nuw nsw i32 %conv1104, %conv1099
  %arrayidx1106 = getelementptr inbounds i8, ptr %costs, i64 8
  %214 = load i32, ptr %arrayidx1106, align 8
  %add1107 = add nsw i32 %add1105, %214
  store i32 %add1107, ptr %arrayidx1106, align 8
  %add1108 = add nsw i32 %shr, 1
  %shl1109 = shl i32 %add1108, 2
  %idxprom1110 = sext i32 %shl1109 to i64
  %arrayidx1111 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1110
  %215 = load i16, ptr %arrayidx1111, align 2
  %conv1112 = zext i16 %215 to i32
  %216 = load i16, ptr %arrayidx1103, align 2
  %conv1117 = zext i16 %216 to i32
  %add1118 = add nuw nsw i32 %conv1117, %conv1112
  %arrayidx1119 = getelementptr inbounds i8, ptr %costs, i64 12
  %217 = load i32, ptr %arrayidx1119, align 4
  %add1120 = add nsw i32 %add1118, %217
  store i32 %add1120, ptr %arrayidx1119, align 4
  %cmp1122 = icmp slt i32 %add1081, %bcost.6
  %bcost.34 = call i32 @llvm.smin.i32(i32 %add1081, i32 %bcost.6)
  %bmy.10 = select i1 %cmp1122, i32 %add1074, i32 %bmy.4
  %cmp1130 = icmp slt i32 %add1094, %bcost.34
  %bcost.35 = call i32 @llvm.smin.i32(i32 %add1094, i32 %bcost.34)
  %bmy.11 = select i1 %cmp1130, i32 %add1087, i32 %bmy.10
  %218 = or i1 %cmp1122, %cmp1130
  %bmx.11 = select i1 %218, i32 %shr, i32 %bmx.4
  %cmp1138 = icmp slt i32 %add1107, %bcost.35
  %bcost.36 = call i32 @llvm.smin.i32(i32 %add1107, i32 %bcost.35)
  %bmx.12 = select i1 %cmp1138, i32 %add1095, i32 %bmx.11
  %cmp1146 = icmp slt i32 %add1120, %bcost.36
  %bcost.37 = call i32 @llvm.smin.i32(i32 %add1120, i32 %bcost.36)
  %219 = or i1 %cmp1138, %cmp1146
  %bmy.13 = select i1 %219, i32 %shr46, i32 %bmy.11
  %bmx.13 = select i1 %cmp1146, i32 %add1108, i32 %bmx.12
  %or1153 = or i32 %shr46, %shr
  %tobool1154.not = icmp eq i32 %or1153, 0
  br i1 %tobool1154.not, label %if.end1267, label %if.then1155

if.then1155:                                      ; preds = %sw.bb1041
  %220 = load ptr, ptr %arrayidx1051, align 8
  %add.ptr1169 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1054
  %add.ptr1173 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1058
  %add.ptr1174 = getelementptr inbounds i8, ptr %6, i64 -1
  %add.ptr1178 = getelementptr inbounds i8, ptr %6, i64 1
  call void %220(ptr noundef %5, ptr noundef %add.ptr1169, ptr noundef %add.ptr1173, ptr noundef nonnull %add.ptr1174, ptr noundef nonnull %add.ptr1178, i32 noundef %3, ptr noundef nonnull %costs) #6
  %221 = load i16, ptr %add.ptr, align 2
  %conv1187 = zext i16 %221 to i32
  %arrayidx1191 = getelementptr inbounds i8, ptr %add.ptr37, i64 -8
  %222 = load i16, ptr %arrayidx1191, align 2
  %conv1192 = zext i16 %222 to i32
  %add1193 = add nuw nsw i32 %conv1192, %conv1187
  %223 = load i32, ptr %costs, align 16
  %add1195 = add nsw i32 %add1193, %223
  store i32 %add1195, ptr %costs, align 16
  %224 = load i16, ptr %add.ptr, align 2
  %conv1200 = zext i16 %224 to i32
  %arrayidx1204 = getelementptr inbounds i8, ptr %add.ptr37, i64 8
  %225 = load i16, ptr %arrayidx1204, align 2
  %conv1205 = zext i16 %225 to i32
  %add1206 = add nuw nsw i32 %conv1205, %conv1200
  %226 = load i32, ptr %arrayidx1093, align 4
  %add1208 = add nsw i32 %add1206, %226
  store i32 %add1208, ptr %arrayidx1093, align 4
  %arrayidx1212 = getelementptr inbounds i8, ptr %add.ptr, i64 -8
  %227 = load i16, ptr %arrayidx1212, align 2
  %conv1213 = zext i16 %227 to i32
  %228 = load i16, ptr %add.ptr37, align 2
  %conv1218 = zext i16 %228 to i32
  %add1219 = add nuw nsw i32 %conv1218, %conv1213
  %229 = load i32, ptr %arrayidx1106, align 8
  %add1221 = add nsw i32 %add1219, %229
  store i32 %add1221, ptr %arrayidx1106, align 8
  %arrayidx1225 = getelementptr inbounds i8, ptr %add.ptr, i64 8
  %230 = load i16, ptr %arrayidx1225, align 2
  %conv1226 = zext i16 %230 to i32
  %231 = load i16, ptr %add.ptr37, align 2
  %conv1231 = zext i16 %231 to i32
  %add1232 = add nuw nsw i32 %conv1231, %conv1226
  %232 = load i32, ptr %arrayidx1119, align 4
  %add1234 = add nsw i32 %add1232, %232
  store i32 %add1234, ptr %arrayidx1119, align 4
  %cmp1236 = icmp slt i32 %add1195, %bcost.37
  %bcost.38 = call i32 @llvm.smin.i32(i32 %add1195, i32 %bcost.37)
  %bmy.14 = select i1 %cmp1236, i32 -1, i32 %bmy.13
  %cmp1244 = icmp slt i32 %add1208, %bcost.38
  %bcost.39 = call i32 @llvm.smin.i32(i32 %add1208, i32 %bcost.38)
  %bmy.15 = select i1 %cmp1244, i32 1, i32 %bmy.14
  %233 = or i1 %cmp1236, %cmp1244
  %bmx.15 = select i1 %233, i32 0, i32 %bmx.13
  %cmp1252 = icmp slt i32 %add1221, %bcost.39
  %bcost.40 = call i32 @llvm.smin.i32(i32 %add1221, i32 %bcost.39)
  %bmx.16 = select i1 %cmp1252, i32 -1, i32 %bmx.15
  %cmp1260 = icmp slt i32 %add1234, %bcost.40
  %bcost.41 = call i32 @llvm.smin.i32(i32 %add1234, i32 %bcost.40)
  %234 = or i1 %cmp1252, %cmp1260
  %bmy.17 = select i1 %234, i32 0, i32 %bmy.15
  %bmx.17 = select i1 %cmp1260, i32 1, i32 %bmx.16
  br label %if.end1267

if.end1267:                                       ; preds = %if.then1155, %sw.bb1041
  %bcost.42 = phi i32 [ %bcost.41, %if.then1155 ], [ %bcost.37, %sw.bb1041 ]
  %bmy.18 = phi i32 [ %bmy.17, %if.then1155 ], [ %bmy.13, %sw.bb1041 ]
  %bmx.18 = phi i32 [ %bmx.17, %if.then1155 ], [ %bmx.13, %sw.bb1041 ]
  %cmp1268 = icmp eq i32 %0, 6
  br i1 %cmp1268, label %me_hex2, label %if.end1271

if.end1271:                                       ; preds = %if.end1267
  %or1272 = or i32 %bmx.18, %bmy.18
  %tobool1273.not = icmp eq i32 %or1272, 0
  br i1 %tobool1273.not, label %land.lhs.true1398, label %land.lhs.true1274

land.lhs.true1274:                                ; preds = %if.end1271
  %235 = icmp eq i32 %bmx.18, %shr
  %236 = icmp eq i32 %bmy.18, %shr46
  %tobool1278.not = and i1 %236, %235
  br i1 %tobool1278.not, label %land.lhs.true1398, label %if.end1391

if.end1391:                                       ; preds = %land.lhs.true1274
  %idx.ext1281 = sext i32 %bmx.18 to i64
  %add.ptr1282 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1281
  %mul1283 = mul nsw i32 %bmy.18, %3
  %idx.ext1284 = sext i32 %mul1283 to i64
  %add.ptr1285 = getelementptr inbounds i8, ptr %add.ptr1282, i64 %idx.ext1284
  %237 = load ptr, ptr %arrayidx1051, align 8
  %add.ptr1293 = getelementptr inbounds i8, ptr %add.ptr1285, i64 %idx.ext1054
  %add.ptr1297 = getelementptr inbounds i8, ptr %add.ptr1285, i64 %idx.ext1058
  %add.ptr1298 = getelementptr inbounds i8, ptr %add.ptr1285, i64 -1
  %add.ptr1302 = getelementptr inbounds i8, ptr %add.ptr1285, i64 1
  call void %237(ptr noundef %5, ptr noundef %add.ptr1293, ptr noundef %add.ptr1297, ptr noundef nonnull %add.ptr1298, ptr noundef nonnull %add.ptr1302, i32 noundef %3, ptr noundef nonnull %costs) #6
  %shl1308 = shl i32 %bmx.18, 2
  %idxprom1309 = sext i32 %shl1308 to i64
  %arrayidx1310 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1309
  %238 = load i16, ptr %arrayidx1310, align 2
  %conv1311 = zext i16 %238 to i32
  %add1312 = add nsw i32 %bmy.18, -1
  %shl1313 = shl i32 %add1312, 2
  %idxprom1314 = sext i32 %shl1313 to i64
  %arrayidx1315 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1314
  %239 = load i16, ptr %arrayidx1315, align 2
  %conv1316 = zext i16 %239 to i32
  %add1317 = add nuw nsw i32 %conv1316, %conv1311
  %240 = load i32, ptr %costs, align 16
  %add1319 = add nsw i32 %add1317, %240
  store i32 %add1319, ptr %costs, align 16
  %241 = load i16, ptr %arrayidx1310, align 2
  %conv1324 = zext i16 %241 to i32
  %add1325 = add nsw i32 %bmy.18, 1
  %shl1326 = shl i32 %add1325, 2
  %idxprom1327 = sext i32 %shl1326 to i64
  %arrayidx1328 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1327
  %242 = load i16, ptr %arrayidx1328, align 2
  %conv1329 = zext i16 %242 to i32
  %add1330 = add nuw nsw i32 %conv1329, %conv1324
  %243 = load i32, ptr %arrayidx1093, align 4
  %add1332 = add nsw i32 %add1330, %243
  store i32 %add1332, ptr %arrayidx1093, align 4
  %add1333 = add nsw i32 %bmx.18, -1
  %shl1334 = shl i32 %add1333, 2
  %idxprom1335 = sext i32 %shl1334 to i64
  %arrayidx1336 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1335
  %244 = load i16, ptr %arrayidx1336, align 2
  %conv1337 = zext i16 %244 to i32
  %shl1339 = shl i32 %bmy.18, 2
  %idxprom1340 = sext i32 %shl1339 to i64
  %arrayidx1341 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1340
  %245 = load i16, ptr %arrayidx1341, align 2
  %conv1342 = zext i16 %245 to i32
  %add1343 = add nuw nsw i32 %conv1342, %conv1337
  %246 = load i32, ptr %arrayidx1106, align 8
  %add1345 = add nsw i32 %add1343, %246
  store i32 %add1345, ptr %arrayidx1106, align 8
  %add1346 = add nsw i32 %bmx.18, 1
  %shl1347 = shl i32 %add1346, 2
  %idxprom1348 = sext i32 %shl1347 to i64
  %arrayidx1349 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1348
  %247 = load i16, ptr %arrayidx1349, align 2
  %conv1350 = zext i16 %247 to i32
  %248 = load i16, ptr %arrayidx1341, align 2
  %conv1355 = zext i16 %248 to i32
  %add1356 = add nuw nsw i32 %conv1355, %conv1350
  %249 = load i32, ptr %arrayidx1119, align 4
  %add1358 = add nsw i32 %add1356, %249
  store i32 %add1358, ptr %arrayidx1119, align 4
  %cmp1360 = icmp slt i32 %add1319, %bcost.42
  %spec.select6176 = call i32 @llvm.smin.i32(i32 %add1319, i32 %bcost.42)
  %spec.select6177 = select i1 %cmp1360, i32 %add1312, i32 %bmy.18
  %cmp1368 = icmp slt i32 %add1332, %spec.select6176
  %bcost.44 = call i32 @llvm.smin.i32(i32 %add1332, i32 %spec.select6176)
  %bmy.20 = select i1 %cmp1368, i32 %add1325, i32 %spec.select6177
  %cmp1376 = icmp slt i32 %add1345, %bcost.44
  %bcost.45 = call i32 @llvm.smin.i32(i32 %add1345, i32 %bcost.44)
  %bmx.21 = select i1 %cmp1376, i32 %add1333, i32 %bmx.18
  %cmp1384 = icmp slt i32 %add1358, %bcost.45
  %bcost.46 = call i32 @llvm.smin.i32(i32 %add1358, i32 %bcost.45)
  %250 = or i1 %cmp1376, %cmp1384
  %bmy.22 = select i1 %250, i32 %bmy.18, i32 %bmy.20
  %bmx.22 = select i1 %cmp1384, i32 %add1346, i32 %bmx.21
  %cmp1392 = icmp eq i32 %bcost.46, %bcost.42
  br i1 %cmp1392, label %land.lhs.true1398, label %if.end2306

land.lhs.true1398:                                ; preds = %if.end1271, %land.lhs.true1274, %if.end1391
  %bmx.236220 = phi i32 [ %bmx.22, %if.end1391 ], [ %shr, %land.lhs.true1274 ], [ %bmx.18, %if.end1271 ]
  %bmy.236218 = phi i32 [ %bmy.22, %if.end1391 ], [ %shr46, %land.lhs.true1274 ], [ %bmy.18, %if.end1271 ]
  %arrayidx1400 = getelementptr inbounds [7 x i8], ptr @x264_me_search_ref.x264_pixel_size_shift, i64 0, i64 %idxprom
  %251 = load i8, ptr %arrayidx1400, align 1
  %conv1401 = zext nneg i8 %251 to i32
  %shr1402 = lshr i32 2000, %conv1401
  %cmp1403 = icmp slt i32 %bcost.42, %shr1402
  br i1 %cmp1403, label %if.then1405, label %if.end2306

if.then1405:                                      ; preds = %land.lhs.true1398
  %idx.ext1407 = sext i32 %bmx.236220 to i64
  %add.ptr1408 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1407
  %mul1409 = mul nsw i32 %bmy.236218, %3
  %idx.ext1410 = sext i32 %mul1409 to i64
  %add.ptr1411 = getelementptr inbounds i8, ptr %add.ptr1408, i64 %idx.ext1410
  %252 = load ptr, ptr %arrayidx1051, align 8
  %mul1417 = mul nsw i32 %3, -2
  %idx.ext1418 = sext i32 %mul1417 to i64
  %add.ptr1419 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %idx.ext1418
  %add.ptr1420 = getelementptr inbounds i8, ptr %add.ptr1411, i64 -1
  %add.ptr1423 = getelementptr inbounds i8, ptr %add.ptr1420, i64 %idx.ext1054
  %add.ptr1424 = getelementptr inbounds i8, ptr %add.ptr1411, i64 1
  %add.ptr1427 = getelementptr inbounds i8, ptr %add.ptr1424, i64 %idx.ext1054
  %add.ptr1428 = getelementptr inbounds i8, ptr %add.ptr1411, i64 -2
  call void %252(ptr noundef %5, ptr noundef %add.ptr1419, ptr noundef nonnull %add.ptr1423, ptr noundef nonnull %add.ptr1427, ptr noundef nonnull %add.ptr1428, i32 noundef %3, ptr noundef nonnull %costs) #6
  %shl1434 = shl i32 %bmx.236220, 2
  %idxprom1435 = sext i32 %shl1434 to i64
  %arrayidx1436 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1435
  %253 = load i16, ptr %arrayidx1436, align 2
  %conv1437 = zext i16 %253 to i32
  %add1438 = add nsw i32 %bmy.236218, -2
  %shl1439 = shl i32 %add1438, 2
  %idxprom1440 = sext i32 %shl1439 to i64
  %arrayidx1441 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1440
  %254 = load i16, ptr %arrayidx1441, align 2
  %conv1442 = zext i16 %254 to i32
  %add1443 = add nuw nsw i32 %conv1442, %conv1437
  %255 = load i32, ptr %costs, align 16
  %add1445 = add nsw i32 %add1443, %255
  store i32 %add1445, ptr %costs, align 16
  %add1446 = add nsw i32 %bmx.236220, -1
  %shl1447 = shl i32 %add1446, 2
  %idxprom1448 = sext i32 %shl1447 to i64
  %arrayidx1449 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1448
  %256 = load i16, ptr %arrayidx1449, align 2
  %conv1450 = zext i16 %256 to i32
  %add1451 = add nsw i32 %bmy.236218, -1
  %shl1452 = shl i32 %add1451, 2
  %idxprom1453 = sext i32 %shl1452 to i64
  %arrayidx1454 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1453
  %257 = load i16, ptr %arrayidx1454, align 2
  %conv1455 = zext i16 %257 to i32
  %add1456 = add nuw nsw i32 %conv1455, %conv1450
  %258 = load i32, ptr %arrayidx1093, align 4
  %add1458 = add nsw i32 %add1456, %258
  store i32 %add1458, ptr %arrayidx1093, align 4
  %add1459 = add nsw i32 %bmx.236220, 1
  %shl1460 = shl i32 %add1459, 2
  %idxprom1461 = sext i32 %shl1460 to i64
  %arrayidx1462 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1461
  %259 = load i16, ptr %arrayidx1462, align 2
  %conv1463 = zext i16 %259 to i32
  %260 = load i16, ptr %arrayidx1454, align 2
  %conv1468 = zext i16 %260 to i32
  %add1469 = add nuw nsw i32 %conv1468, %conv1463
  %261 = load i32, ptr %arrayidx1106, align 8
  %add1471 = add nsw i32 %add1469, %261
  store i32 %add1471, ptr %arrayidx1106, align 8
  %add1472 = add nsw i32 %bmx.236220, -2
  %shl1473 = shl i32 %add1472, 2
  %idxprom1474 = sext i32 %shl1473 to i64
  %arrayidx1475 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1474
  %262 = load i16, ptr %arrayidx1475, align 2
  %conv1476 = zext i16 %262 to i32
  %shl1478 = shl i32 %bmy.236218, 2
  %idxprom1479 = sext i32 %shl1478 to i64
  %arrayidx1480 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1479
  %263 = load i16, ptr %arrayidx1480, align 2
  %conv1481 = zext i16 %263 to i32
  %add1482 = add nuw nsw i32 %conv1481, %conv1476
  %264 = load i32, ptr %arrayidx1119, align 4
  %add1484 = add nsw i32 %add1482, %264
  store i32 %add1484, ptr %arrayidx1119, align 4
  %cmp1486 = icmp slt i32 %add1445, %bcost.42
  %spec.select6179 = call i32 @llvm.smin.i32(i32 %add1445, i32 %bcost.42)
  %spec.select6180 = select i1 %cmp1486, i32 %add1438, i32 %bmy.236218
  %cmp1494 = icmp slt i32 %add1458, %spec.select6179
  %bcost.49 = call i32 @llvm.smin.i32(i32 %add1458, i32 %spec.select6179)
  %bmx.25 = select i1 %cmp1494, i32 %add1446, i32 %bmx.236220
  %cmp1502 = icmp slt i32 %add1471, %bcost.49
  %bcost.50 = call i32 @llvm.smin.i32(i32 %add1471, i32 %bcost.49)
  %265 = or i1 %cmp1494, %cmp1502
  %bmy.26 = select i1 %265, i32 %add1451, i32 %spec.select6180
  %bmx.26 = select i1 %cmp1502, i32 %add1459, i32 %bmx.25
  %cmp1510 = icmp slt i32 %add1484, %bcost.50
  %bcost.51 = call i32 @llvm.smin.i32(i32 %add1484, i32 %bcost.50)
  %bmx.27 = select i1 %cmp1510, i32 %add1472, i32 %bmx.26
  %266 = load ptr, ptr %arrayidx1051, align 8
  %add.ptr1527 = getelementptr inbounds i8, ptr %add.ptr1411, i64 2
  %add.ptr1534 = getelementptr inbounds i8, ptr %add.ptr1420, i64 %idx.ext1058
  %add.ptr1538 = getelementptr inbounds i8, ptr %add.ptr1424, i64 %idx.ext1058
  %mul1540 = shl nsw i32 %3, 1
  %idx.ext1541 = sext i32 %mul1540 to i64
  %add.ptr1542 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %idx.ext1541
  call void %266(ptr noundef %5, ptr noundef nonnull %add.ptr1527, ptr noundef nonnull %add.ptr1534, ptr noundef nonnull %add.ptr1538, ptr noundef %add.ptr1542, i32 noundef %3, ptr noundef nonnull %costs) #6
  %add1544 = add nsw i32 %bmx.236220, 2
  %shl1545 = shl i32 %add1544, 2
  %idxprom1546 = sext i32 %shl1545 to i64
  %arrayidx1547 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1546
  %267 = load i16, ptr %arrayidx1547, align 2
  %conv1548 = zext i16 %267 to i32
  %268 = load i16, ptr %arrayidx1480, align 2
  %conv1553 = zext i16 %268 to i32
  %add1554 = add nuw nsw i32 %conv1553, %conv1548
  %269 = load i32, ptr %costs, align 16
  %add1556 = add nsw i32 %add1554, %269
  store i32 %add1556, ptr %costs, align 16
  %270 = load i16, ptr %arrayidx1449, align 2
  %conv1561 = zext i16 %270 to i32
  %add1562 = add nsw i32 %bmy.236218, 1
  %shl1563 = shl i32 %add1562, 2
  %idxprom1564 = sext i32 %shl1563 to i64
  %arrayidx1565 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1564
  %271 = load i16, ptr %arrayidx1565, align 2
  %conv1566 = zext i16 %271 to i32
  %add1567 = add nuw nsw i32 %conv1566, %conv1561
  %272 = load i32, ptr %arrayidx1093, align 4
  %add1569 = add nsw i32 %add1567, %272
  store i32 %add1569, ptr %arrayidx1093, align 4
  %273 = load i16, ptr %arrayidx1462, align 2
  %conv1574 = zext i16 %273 to i32
  %274 = load i16, ptr %arrayidx1565, align 2
  %conv1579 = zext i16 %274 to i32
  %add1580 = add nuw nsw i32 %conv1579, %conv1574
  %275 = load i32, ptr %arrayidx1106, align 8
  %add1582 = add nsw i32 %add1580, %275
  store i32 %add1582, ptr %arrayidx1106, align 8
  %276 = load i16, ptr %arrayidx1436, align 2
  %conv1587 = zext i16 %276 to i32
  %add1588 = add nsw i32 %bmy.236218, 2
  %shl1589 = shl i32 %add1588, 2
  %idxprom1590 = sext i32 %shl1589 to i64
  %arrayidx1591 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1590
  %277 = load i16, ptr %arrayidx1591, align 2
  %conv1592 = zext i16 %277 to i32
  %add1593 = add nuw nsw i32 %conv1592, %conv1587
  %278 = load i32, ptr %arrayidx1119, align 4
  %add1595 = add nsw i32 %add1593, %278
  store i32 %add1595, ptr %arrayidx1119, align 4
  %cmp1597 = icmp slt i32 %add1556, %bcost.51
  %bcost.52 = call i32 @llvm.smin.i32(i32 %add1556, i32 %bcost.51)
  %279 = or i1 %cmp1510, %cmp1597
  %bmy.28 = select i1 %279, i32 %bmy.236218, i32 %bmy.26
  %bmx.28 = select i1 %cmp1597, i32 %add1544, i32 %bmx.27
  %cmp1605 = icmp slt i32 %add1569, %bcost.52
  %bcost.53 = call i32 @llvm.smin.i32(i32 %add1569, i32 %bcost.52)
  %bmx.29 = select i1 %cmp1605, i32 %add1446, i32 %bmx.28
  %cmp1613 = icmp slt i32 %add1582, %bcost.53
  %bcost.54 = call i32 @llvm.smin.i32(i32 %add1582, i32 %bcost.53)
  %280 = or i1 %cmp1605, %cmp1613
  %bmy.30 = select i1 %280, i32 %add1562, i32 %bmy.28
  %bmx.30 = select i1 %cmp1613, i32 %add1459, i32 %bmx.29
  %cmp1621 = icmp slt i32 %add1595, %bcost.54
  %bcost.55 = call i32 @llvm.smin.i32(i32 %add1595, i32 %bcost.54)
  %bmy.31 = select i1 %cmp1621, i32 %add1588, i32 %bmy.30
  %bmx.31 = select i1 %cmp1621, i32 %bmx.236220, i32 %bmx.30
  %cmp1628 = icmp eq i32 %bcost.55, %bcost.6
  %shr1634 = lshr i32 500, %conv1401
  %cmp1635 = icmp slt i32 %bcost.55, %shr1634
  %or.cond6239 = select i1 %cmp1628, i1 %cmp1635, i1 false
  br i1 %or.cond6239, label %sw.epilog, label %if.end1638

if.end1638:                                       ; preds = %if.then1405
  %cmp1639 = icmp eq i32 %bcost.55, %bcost.42
  br i1 %cmp1639, label %if.then1641, label %if.end2306

if.then1641:                                      ; preds = %if.end1638
  %shr1642 = ashr i32 %4, 1
  %or1643 = or i32 %shr1642, 1
  %sub1645 = sub nsw i32 %11, %bmx.236220
  %sub1646 = sub nsw i32 %bmx.236220, %9
  %sub1645.sub1646 = call i32 @llvm.smin.i32(i32 %sub1645, i32 %sub1646)
  %cmp1651.not = icmp sle i32 %or1643, %sub1645.sub1646
  %cmp16566336 = icmp sgt i32 %or1643, 5
  %or.cond6622 = and i1 %cmp1651.not, %cmp16566336
  br i1 %or.cond6622, label %for.body1658.preheader, label %if.end1789

for.body1658.preheader:                           ; preds = %if.then1641
  %sub1655 = add nsw i32 %or1643, -2
  %281 = zext nneg i32 %sub1655 to i64
  br label %for.body1658

for.body1658:                                     ; preds = %for.body1658.preheader, %for.body1658
  %indvars.iv6479 = phi i64 [ 3, %for.body1658.preheader ], [ %indvars.iv.next6480, %for.body1658 ]
  %bmx.326340 = phi i32 [ %bmx.31, %for.body1658.preheader ], [ %bmx.36, %for.body1658 ]
  %bmy.326339 = phi i32 [ %bmy.31, %for.body1658.preheader ], [ %bmy.36, %for.body1658 ]
  %bcost.566338 = phi i32 [ %bcost.42, %for.body1658.preheader ], [ %bcost.60, %for.body1658 ]
  %282 = load ptr, ptr %arrayidx1051, align 8
  %add.ptr1670 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %indvars.iv6479
  %283 = sub nsw i64 0, %indvars.iv6479
  %add.ptr1676 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %283
  %284 = add nuw nsw i64 %indvars.iv6479, 2
  %add.ptr1682 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %284
  %285 = sub nuw nsw i64 -2, %indvars.iv6479
  %add.ptr1689 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %285
  call void %282(ptr noundef %5, ptr noundef nonnull %add.ptr1670, ptr noundef nonnull %add.ptr1676, ptr noundef nonnull %add.ptr1682, ptr noundef nonnull %add.ptr1689, i32 noundef %3, ptr noundef nonnull %costs) #6
  %286 = trunc i64 %indvars.iv6479 to i32
  %287 = add i32 %bmx.236220, %286
  %shl1695 = shl i32 %287, 2
  %idxprom1696 = sext i32 %shl1695 to i64
  %arrayidx1697 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1696
  %288 = load i16, ptr %arrayidx1697, align 2
  %conv1698 = zext i16 %288 to i32
  %289 = load i16, ptr %arrayidx1480, align 2
  %conv1703 = zext i16 %289 to i32
  %add1704 = add nuw nsw i32 %conv1703, %conv1698
  %290 = load i32, ptr %costs, align 16
  %add1706 = add nsw i32 %add1704, %290
  store i32 %add1706, ptr %costs, align 16
  %291 = trunc nuw nsw i64 %indvars.iv6479 to i32
  %add1708 = sub i32 %bmx.236220, %291
  %shl1709 = shl i32 %add1708, 2
  %idxprom1710 = sext i32 %shl1709 to i64
  %arrayidx1711 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1710
  %292 = load i16, ptr %arrayidx1711, align 2
  %conv1712 = zext i16 %292 to i32
  %293 = load i16, ptr %arrayidx1480, align 2
  %conv1717 = zext i16 %293 to i32
  %add1718 = add nuw nsw i32 %conv1717, %conv1712
  %294 = load i32, ptr %arrayidx1093, align 4
  %add1720 = add nsw i32 %add1718, %294
  store i32 %add1720, ptr %arrayidx1093, align 4
  %295 = trunc i64 %284 to i32
  %296 = add i32 %bmx.236220, %295
  %shl1723 = shl i32 %296, 2
  %idxprom1724 = sext i32 %shl1723 to i64
  %arrayidx1725 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1724
  %297 = load i16, ptr %arrayidx1725, align 2
  %conv1726 = zext i16 %297 to i32
  %298 = load i16, ptr %arrayidx1480, align 2
  %conv1731 = zext i16 %298 to i32
  %add1732 = add nuw nsw i32 %conv1731, %conv1726
  %299 = load i32, ptr %arrayidx1106, align 8
  %add1734 = add nsw i32 %add1732, %299
  store i32 %add1734, ptr %arrayidx1106, align 8
  %300 = trunc i64 %285 to i32
  %301 = add i32 %bmx.236220, %300
  %shl1738 = shl i32 %301, 2
  %idxprom1739 = sext i32 %shl1738 to i64
  %arrayidx1740 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1739
  %302 = load i16, ptr %arrayidx1740, align 2
  %conv1741 = zext i16 %302 to i32
  %303 = load i16, ptr %arrayidx1480, align 2
  %conv1746 = zext i16 %303 to i32
  %add1747 = add nuw nsw i32 %conv1746, %conv1741
  %304 = load i32, ptr %arrayidx1119, align 4
  %add1749 = add nsw i32 %add1747, %304
  store i32 %add1749, ptr %arrayidx1119, align 4
  %cmp1751 = icmp slt i32 %add1706, %bcost.566338
  %bcost.57 = call i32 @llvm.smin.i32(i32 %add1706, i32 %bcost.566338)
  %bmx.33 = select i1 %cmp1751, i32 %287, i32 %bmx.326340
  %cmp1759 = icmp slt i32 %add1720, %bcost.57
  %bcost.58 = call i32 @llvm.smin.i32(i32 %add1720, i32 %bcost.57)
  %305 = or i1 %cmp1751, %cmp1759
  %bmx.34 = select i1 %cmp1759, i32 %add1708, i32 %bmx.33
  %cmp1768 = icmp slt i32 %add1734, %bcost.58
  %bcost.59 = call i32 @llvm.smin.i32(i32 %add1734, i32 %bcost.58)
  %bmx.35 = select i1 %cmp1768, i32 %296, i32 %bmx.34
  %cmp1777 = icmp slt i32 %add1749, %bcost.59
  %bcost.60 = call i32 @llvm.smin.i32(i32 %add1749, i32 %bcost.59)
  %306 = or i1 %cmp1768, %cmp1777
  %307 = select i1 %306, i1 true, i1 %305
  %bmy.36 = select i1 %307, i32 %bmy.236218, i32 %bmy.326339
  %bmx.36 = select i1 %cmp1777, i32 %301, i32 %bmx.35
  %indvars.iv.next6480 = add nuw nsw i64 %indvars.iv6479, 4
  %cmp1656 = icmp ult i64 %indvars.iv.next6480, %281
  br i1 %cmp1656, label %for.body1658, label %if.end1789.loopexit

if.end1789.loopexit:                              ; preds = %for.body1658
  %308 = trunc nuw nsw i64 %indvars.iv.next6480 to i32
  br label %if.end1789

if.end1789:                                       ; preds = %if.end1789.loopexit, %if.then1641
  %i1644.1 = phi i32 [ 3, %if.then1641 ], [ %308, %if.end1789.loopexit ]
  %bcost.61 = phi i32 [ %bcost.42, %if.then1641 ], [ %bcost.60, %if.end1789.loopexit ]
  %bmy.37 = phi i32 [ %bmy.31, %if.then1641 ], [ %bmy.36, %if.end1789.loopexit ]
  %bmx.37 = phi i32 [ %bmx.31, %if.then1641 ], [ %bmx.36, %if.end1789.loopexit ]
  %cmp17916345 = icmp slt i32 %i1644.1, %or1643
  br i1 %cmp17916345, label %for.body1793.lr.ph, label %for.end1860

for.body1793.lr.ph:                               ; preds = %if.end1789
  %fpelcmp1800 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx1802 = getelementptr inbounds [7 x ptr], ptr %fpelcmp1800, i64 0, i64 %idxprom
  %309 = zext nneg i32 %i1644.1 to i64
  %310 = sext i32 %11 to i64
  %311 = sext i32 %9 to i64
  %312 = sext i32 %or1643 to i64
  %invariant.gep6606 = getelementptr i8, ptr %6, i64 %idx.ext1410
  %invariant.gep6608 = getelementptr i8, ptr %6, i64 %idx.ext1410
  br label %for.body1793

for.body1793:                                     ; preds = %for.body1793.lr.ph, %for.inc1858
  %indvars.iv6488 = phi i64 [ %309, %for.body1793.lr.ph ], [ %indvars.iv.next6489, %for.inc1858 ]
  %bmx.386349 = phi i32 [ %bmx.37, %for.body1793.lr.ph ], [ %bmx.42, %for.inc1858 ]
  %bmy.386348 = phi i32 [ %bmy.37, %for.body1793.lr.ph ], [ %bmy.42, %for.inc1858 ]
  %bcost.626347 = phi i32 [ %bcost.61, %for.body1793.lr.ph ], [ %bcost.66, %for.inc1858 ]
  %313 = add nsw i64 %indvars.iv6488, %idx.ext1407
  %cmp1795.not = icmp sgt i64 %313, %310
  br i1 %cmp1795.not, label %if.end1825, label %if.then1797

if.then1797:                                      ; preds = %for.body1793
  %314 = load ptr, ptr %arrayidx1802, align 8
  %gep6607 = getelementptr i8, ptr %invariant.gep6606, i64 %313
  %call1808 = call i32 %314(ptr noundef %5, i32 noundef 16, ptr noundef %gep6607, i32 noundef %3) #6
  %315 = trunc nsw i64 %313 to i32
  %shl1810 = shl i32 %315, 2
  %idxprom1811 = sext i32 %shl1810 to i64
  %arrayidx1812 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1811
  %316 = load i16, ptr %arrayidx1812, align 2
  %conv1813 = zext i16 %316 to i32
  %317 = load i16, ptr %arrayidx1480, align 2
  %conv1817 = zext i16 %317 to i32
  %add1818 = add i32 %call1808, %conv1813
  %add1819 = add i32 %add1818, %conv1817
  %cmp1820 = icmp slt i32 %add1819, %bcost.626347
  %bcost.63 = call i32 @llvm.smin.i32(i32 %add1819, i32 %bcost.626347)
  %bmy.39 = select i1 %cmp1820, i32 %bmy.236218, i32 %bmy.386348
  %bmx.39 = select i1 %cmp1820, i32 %315, i32 %bmx.386349
  br label %if.end1825

if.end1825:                                       ; preds = %if.then1797, %for.body1793
  %bcost.64 = phi i32 [ %bcost.63, %if.then1797 ], [ %bcost.626347, %for.body1793 ]
  %bmy.40 = phi i32 [ %bmy.39, %if.then1797 ], [ %bmy.386348, %for.body1793 ]
  %bmx.40 = phi i32 [ %bmx.39, %if.then1797 ], [ %bmx.386349, %for.body1793 ]
  %318 = sub nsw i64 %idx.ext1407, %indvars.iv6488
  %cmp1827.not = icmp slt i64 %318, %311
  br i1 %cmp1827.not, label %for.inc1858, label %if.then1829

if.then1829:                                      ; preds = %if.end1825
  %319 = load ptr, ptr %arrayidx1802, align 8
  %gep6609 = getelementptr i8, ptr %invariant.gep6608, i64 %318
  %call1840 = call i32 %319(ptr noundef %5, i32 noundef 16, ptr noundef %gep6609, i32 noundef %3) #6
  %320 = trunc nsw i64 %318 to i32
  %shl1842 = shl i32 %320, 2
  %idxprom1843 = sext i32 %shl1842 to i64
  %arrayidx1844 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1843
  %321 = load i16, ptr %arrayidx1844, align 2
  %conv1845 = zext i16 %321 to i32
  %322 = load i16, ptr %arrayidx1480, align 2
  %conv1849 = zext i16 %322 to i32
  %add1850 = add i32 %call1840, %conv1845
  %add1851 = add i32 %add1850, %conv1849
  %cmp1852 = icmp slt i32 %add1851, %bcost.64
  %bcost.65 = call i32 @llvm.smin.i32(i32 %add1851, i32 %bcost.64)
  %bmy.41 = select i1 %cmp1852, i32 %bmy.236218, i32 %bmy.40
  %bmx.41 = select i1 %cmp1852, i32 %320, i32 %bmx.40
  br label %for.inc1858

for.inc1858:                                      ; preds = %if.end1825, %if.then1829
  %bcost.66 = phi i32 [ %bcost.65, %if.then1829 ], [ %bcost.64, %if.end1825 ]
  %bmy.42 = phi i32 [ %bmy.41, %if.then1829 ], [ %bmy.40, %if.end1825 ]
  %bmx.42 = phi i32 [ %bmx.41, %if.then1829 ], [ %bmx.40, %if.end1825 ]
  %indvars.iv.next6489 = add nuw nsw i64 %indvars.iv6488, 2
  %cmp1791 = icmp slt i64 %indvars.iv.next6489, %312
  br i1 %cmp1791, label %for.body1793, label %for.end1860

for.end1860:                                      ; preds = %for.inc1858, %if.end1789
  %bcost.62.lcssa = phi i32 [ %bcost.61, %if.end1789 ], [ %bcost.66, %for.inc1858 ]
  %bmy.38.lcssa = phi i32 [ %bmy.37, %if.end1789 ], [ %bmy.42, %for.inc1858 ]
  %bmx.38.lcssa = phi i32 [ %bmx.37, %if.end1789 ], [ %bmx.42, %for.inc1858 ]
  %sub1861 = sub nsw i32 %12, %bmy.236218
  %sub1862 = sub nsw i32 %bmy.236218, %10
  %sub1861.sub1862 = call i32 @llvm.smin.i32(i32 %sub1861, i32 %sub1862)
  %cmp1871.not = icmp sle i32 %or1643, %sub1861.sub1862
  %cmp18766353 = icmp sgt i32 %or1643, 5
  %or.cond6623 = and i1 %cmp1871.not, %cmp18766353
  br i1 %or.cond6623, label %for.body1878.preheader, label %if.end2005

for.body1878.preheader:                           ; preds = %for.end1860
  %sub1875 = add nsw i32 %or1643, -2
  %323 = zext nneg i32 %sub1875 to i64
  br label %for.body1878

for.body1878:                                     ; preds = %for.body1878.preheader, %for.body1878
  %indvars.iv6495 = phi i64 [ 3, %for.body1878.preheader ], [ %indvars.iv.next6496, %for.body1878 ]
  %bmx.436357 = phi i32 [ %bmx.38.lcssa, %for.body1878.preheader ], [ %bmx.47, %for.body1878 ]
  %bmy.436356 = phi i32 [ %bmy.38.lcssa, %for.body1878.preheader ], [ %bmy.47, %for.body1878 ]
  %bcost.676355 = phi i32 [ %bcost.62.lcssa, %for.body1878.preheader ], [ %bcost.71, %for.body1878 ]
  %324 = load ptr, ptr %arrayidx1051, align 8
  %325 = mul nsw i64 %indvars.iv6495, %idx.ext1058
  %add.ptr1892 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %325
  %.neg6583 = mul i64 %325, -4294967296
  %idx.ext1896 = ashr exact i64 %.neg6583, 32
  %add.ptr1897 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %idx.ext1896
  %326 = add nuw nsw i64 %indvars.iv6495, 2
  %327 = mul nsw i64 %326, %idx.ext1058
  %add.ptr1902 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %327
  %328 = sub nuw nsw i64 -2, %indvars.iv6495
  %329 = mul nsw i64 %328, %idx.ext1058
  %add.ptr1908 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %329
  call void %324(ptr noundef %5, ptr noundef %add.ptr1892, ptr noundef %add.ptr1897, ptr noundef %add.ptr1902, ptr noundef %add.ptr1908, i32 noundef %3, ptr noundef nonnull %costs) #6
  %330 = load i16, ptr %arrayidx1436, align 2
  %conv1914 = zext i16 %330 to i32
  %331 = trunc i64 %indvars.iv6495 to i32
  %332 = add i32 %bmy.236218, %331
  %shl1916 = shl i32 %332, 2
  %idxprom1917 = sext i32 %shl1916 to i64
  %arrayidx1918 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1917
  %333 = load i16, ptr %arrayidx1918, align 2
  %conv1919 = zext i16 %333 to i32
  %add1920 = add nuw nsw i32 %conv1919, %conv1914
  %334 = load i32, ptr %costs, align 16
  %add1922 = add nsw i32 %add1920, %334
  store i32 %add1922, ptr %costs, align 16
  %335 = load i16, ptr %arrayidx1436, align 2
  %conv1927 = zext i16 %335 to i32
  %336 = trunc nuw nsw i64 %indvars.iv6495 to i32
  %add1929 = sub i32 %bmy.236218, %336
  %shl1930 = shl i32 %add1929, 2
  %idxprom1931 = sext i32 %shl1930 to i64
  %arrayidx1932 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1931
  %337 = load i16, ptr %arrayidx1932, align 2
  %conv1933 = zext i16 %337 to i32
  %add1934 = add nuw nsw i32 %conv1933, %conv1927
  %338 = load i32, ptr %arrayidx1093, align 4
  %add1936 = add nsw i32 %add1934, %338
  store i32 %add1936, ptr %arrayidx1093, align 4
  %339 = load i16, ptr %arrayidx1436, align 2
  %conv1941 = zext i16 %339 to i32
  %340 = trunc i64 %326 to i32
  %341 = add i32 %bmy.236218, %340
  %shl1944 = shl i32 %341, 2
  %idxprom1945 = sext i32 %shl1944 to i64
  %arrayidx1946 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1945
  %342 = load i16, ptr %arrayidx1946, align 2
  %conv1947 = zext i16 %342 to i32
  %add1948 = add nuw nsw i32 %conv1947, %conv1941
  %343 = load i32, ptr %arrayidx1106, align 8
  %add1950 = add nsw i32 %add1948, %343
  store i32 %add1950, ptr %arrayidx1106, align 8
  %344 = load i16, ptr %arrayidx1436, align 2
  %conv1955 = zext i16 %344 to i32
  %345 = trunc i64 %328 to i32
  %346 = add i32 %bmy.236218, %345
  %shl1959 = shl i32 %346, 2
  %idxprom1960 = sext i32 %shl1959 to i64
  %arrayidx1961 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1960
  %347 = load i16, ptr %arrayidx1961, align 2
  %conv1962 = zext i16 %347 to i32
  %add1963 = add nuw nsw i32 %conv1962, %conv1955
  %348 = load i32, ptr %arrayidx1119, align 4
  %add1965 = add nsw i32 %add1963, %348
  store i32 %add1965, ptr %arrayidx1119, align 4
  %cmp1967 = icmp slt i32 %add1922, %bcost.676355
  %bcost.68 = call i32 @llvm.smin.i32(i32 %add1922, i32 %bcost.676355)
  %bmy.44 = select i1 %cmp1967, i32 %332, i32 %bmy.436356
  %cmp1975 = icmp slt i32 %add1936, %bcost.68
  %bcost.69 = call i32 @llvm.smin.i32(i32 %add1936, i32 %bcost.68)
  %bmy.45 = select i1 %cmp1975, i32 %add1929, i32 %bmy.44
  %349 = or i1 %cmp1967, %cmp1975
  %cmp1984 = icmp slt i32 %add1950, %bcost.69
  %bcost.70 = call i32 @llvm.smin.i32(i32 %add1950, i32 %bcost.69)
  %bmy.46 = select i1 %cmp1984, i32 %341, i32 %bmy.45
  %cmp1993 = icmp slt i32 %add1965, %bcost.70
  %bcost.71 = call i32 @llvm.smin.i32(i32 %add1965, i32 %bcost.70)
  %bmy.47 = select i1 %cmp1993, i32 %346, i32 %bmy.46
  %350 = or i1 %cmp1984, %cmp1993
  %351 = select i1 %350, i1 true, i1 %349
  %bmx.47 = select i1 %351, i32 %bmx.236220, i32 %bmx.436357
  %indvars.iv.next6496 = add nuw nsw i64 %indvars.iv6495, 4
  %cmp1876 = icmp ult i64 %indvars.iv.next6496, %323
  br i1 %cmp1876, label %for.body1878, label %if.end2005.loopexit

if.end2005.loopexit:                              ; preds = %for.body1878
  %352 = trunc nuw nsw i64 %indvars.iv.next6496 to i32
  br label %if.end2005

if.end2005:                                       ; preds = %if.end2005.loopexit, %for.end1860
  %i1644.4 = phi i32 [ 3, %for.end1860 ], [ %352, %if.end2005.loopexit ]
  %bcost.72 = phi i32 [ %bcost.62.lcssa, %for.end1860 ], [ %bcost.71, %if.end2005.loopexit ]
  %bmy.48 = phi i32 [ %bmy.38.lcssa, %for.end1860 ], [ %bmy.47, %if.end2005.loopexit ]
  %bmx.48 = phi i32 [ %bmx.38.lcssa, %for.end1860 ], [ %bmx.47, %if.end2005.loopexit ]
  %cmp20076362 = icmp slt i32 %i1644.4, %or1643
  br i1 %cmp20076362, label %for.body2009.lr.ph, label %for.end2076

for.body2009.lr.ph:                               ; preds = %if.end2005
  %fpelcmp2016 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx2018 = getelementptr inbounds [7 x ptr], ptr %fpelcmp2016, i64 0, i64 %idxprom
  %353 = zext nneg i32 %i1644.4 to i64
  %354 = sext i32 %bmy.236218 to i64
  %355 = sext i32 %12 to i64
  %356 = sext i32 %10 to i64
  %357 = sext i32 %or1643 to i64
  %invariant.gep6610 = getelementptr i8, ptr %6, i64 %idx.ext1407
  %invariant.gep6612 = getelementptr i8, ptr %6, i64 %idx.ext1407
  br label %for.body2009

for.body2009:                                     ; preds = %for.body2009.lr.ph, %for.inc2074
  %indvars.iv6506 = phi i64 [ %353, %for.body2009.lr.ph ], [ %indvars.iv.next6507, %for.inc2074 ]
  %bmx.496366 = phi i32 [ %bmx.48, %for.body2009.lr.ph ], [ %bmx.53, %for.inc2074 ]
  %bmy.496365 = phi i32 [ %bmy.48, %for.body2009.lr.ph ], [ %bmy.53, %for.inc2074 ]
  %bcost.736364 = phi i32 [ %bcost.72, %for.body2009.lr.ph ], [ %bcost.77, %for.inc2074 ]
  %358 = add nsw i64 %indvars.iv6506, %354
  %cmp2011.not = icmp sgt i64 %358, %355
  br i1 %cmp2011.not, label %if.end2041, label %if.then2013

if.then2013:                                      ; preds = %for.body2009
  %359 = load ptr, ptr %arrayidx2018, align 8
  %360 = mul nsw i64 %358, %idx.ext1058
  %gep6611 = getelementptr i8, ptr %invariant.gep6610, i64 %360
  %call2024 = call i32 %359(ptr noundef %5, i32 noundef 16, ptr noundef %gep6611, i32 noundef %3) #6
  %361 = load i16, ptr %arrayidx1436, align 2
  %conv2028 = zext i16 %361 to i32
  %362 = trunc nsw i64 %358 to i32
  %shl2030 = shl i32 %362, 2
  %idxprom2031 = sext i32 %shl2030 to i64
  %arrayidx2032 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2031
  %363 = load i16, ptr %arrayidx2032, align 2
  %conv2033 = zext i16 %363 to i32
  %add2034 = add i32 %call2024, %conv2028
  %add2035 = add i32 %add2034, %conv2033
  %cmp2036 = icmp slt i32 %add2035, %bcost.736364
  %bcost.74 = call i32 @llvm.smin.i32(i32 %add2035, i32 %bcost.736364)
  %bmy.50 = select i1 %cmp2036, i32 %362, i32 %bmy.496365
  %bmx.50 = select i1 %cmp2036, i32 %bmx.236220, i32 %bmx.496366
  br label %if.end2041

if.end2041:                                       ; preds = %if.then2013, %for.body2009
  %bcost.75 = phi i32 [ %bcost.74, %if.then2013 ], [ %bcost.736364, %for.body2009 ]
  %bmy.51 = phi i32 [ %bmy.50, %if.then2013 ], [ %bmy.496365, %for.body2009 ]
  %bmx.51 = phi i32 [ %bmx.50, %if.then2013 ], [ %bmx.496366, %for.body2009 ]
  %364 = sub nsw i64 %354, %indvars.iv6506
  %cmp2043.not = icmp slt i64 %364, %356
  br i1 %cmp2043.not, label %for.inc2074, label %if.then2045

if.then2045:                                      ; preds = %if.end2041
  %365 = load ptr, ptr %arrayidx2018, align 8
  %366 = mul nsw i64 %364, %idx.ext1058
  %gep6613 = getelementptr i8, ptr %invariant.gep6612, i64 %366
  %call2056 = call i32 %365(ptr noundef %5, i32 noundef 16, ptr noundef %gep6613, i32 noundef %3) #6
  %367 = load i16, ptr %arrayidx1436, align 2
  %conv2060 = zext i16 %367 to i32
  %368 = trunc nsw i64 %364 to i32
  %shl2062 = shl i32 %368, 2
  %idxprom2063 = sext i32 %shl2062 to i64
  %arrayidx2064 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2063
  %369 = load i16, ptr %arrayidx2064, align 2
  %conv2065 = zext i16 %369 to i32
  %add2066 = add i32 %call2056, %conv2060
  %add2067 = add i32 %add2066, %conv2065
  %cmp2068 = icmp slt i32 %add2067, %bcost.75
  %bcost.76 = call i32 @llvm.smin.i32(i32 %add2067, i32 %bcost.75)
  %bmy.52 = select i1 %cmp2068, i32 %368, i32 %bmy.51
  %bmx.52 = select i1 %cmp2068, i32 %bmx.236220, i32 %bmx.51
  br label %for.inc2074

for.inc2074:                                      ; preds = %if.end2041, %if.then2045
  %bcost.77 = phi i32 [ %bcost.76, %if.then2045 ], [ %bcost.75, %if.end2041 ]
  %bmy.53 = phi i32 [ %bmy.52, %if.then2045 ], [ %bmy.51, %if.end2041 ]
  %bmx.53 = phi i32 [ %bmx.52, %if.then2045 ], [ %bmx.51, %if.end2041 ]
  %indvars.iv.next6507 = add nuw nsw i64 %indvars.iv6506, 2
  %cmp2007 = icmp slt i64 %indvars.iv.next6507, %357
  br i1 %cmp2007, label %for.body2009, label %for.end2076

for.end2076:                                      ; preds = %for.inc2074, %if.end2005
  %bcost.73.lcssa = phi i32 [ %bcost.72, %if.end2005 ], [ %bcost.77, %for.inc2074 ]
  %bmy.49.lcssa = phi i32 [ %bmy.48, %if.end2005 ], [ %bmy.53, %for.inc2074 ]
  %bmx.49.lcssa = phi i32 [ %bmx.48, %if.end2005 ], [ %bmx.53, %for.inc2074 ]
  %370 = load ptr, ptr %arrayidx1051, align 8
  %add.ptr2090 = getelementptr inbounds i8, ptr %add.ptr1420, i64 %idx.ext1418
  %add.ptr2094 = getelementptr inbounds i8, ptr %add.ptr1424, i64 %idx.ext1418
  %add.ptr2098 = getelementptr inbounds i8, ptr %add.ptr1428, i64 %idx.ext1054
  %add.ptr2102 = getelementptr inbounds i8, ptr %add.ptr1527, i64 %idx.ext1054
  call void %370(ptr noundef %5, ptr noundef nonnull %add.ptr2090, ptr noundef nonnull %add.ptr2094, ptr noundef nonnull %add.ptr2098, ptr noundef nonnull %add.ptr2102, i32 noundef %3, ptr noundef nonnull %costs) #6
  %371 = load i16, ptr %arrayidx1449, align 2
  %conv2108 = zext i16 %371 to i32
  %372 = load i16, ptr %arrayidx1441, align 2
  %conv2113 = zext i16 %372 to i32
  %add2114 = add nuw nsw i32 %conv2113, %conv2108
  %373 = load i32, ptr %costs, align 16
  %add2116 = add nsw i32 %add2114, %373
  store i32 %add2116, ptr %costs, align 16
  %374 = load i16, ptr %arrayidx1462, align 2
  %conv2121 = zext i16 %374 to i32
  %375 = load i16, ptr %arrayidx1441, align 2
  %conv2126 = zext i16 %375 to i32
  %add2127 = add nuw nsw i32 %conv2126, %conv2121
  %376 = load i32, ptr %arrayidx1093, align 4
  %add2129 = add nsw i32 %add2127, %376
  store i32 %add2129, ptr %arrayidx1093, align 4
  %377 = load i16, ptr %arrayidx1475, align 2
  %conv2134 = zext i16 %377 to i32
  %378 = load i16, ptr %arrayidx1454, align 2
  %conv2139 = zext i16 %378 to i32
  %add2140 = add nuw nsw i32 %conv2139, %conv2134
  %379 = load i32, ptr %arrayidx1106, align 8
  %add2142 = add nsw i32 %add2140, %379
  store i32 %add2142, ptr %arrayidx1106, align 8
  %380 = load i16, ptr %arrayidx1547, align 2
  %conv2147 = zext i16 %380 to i32
  %381 = load i16, ptr %arrayidx1454, align 2
  %conv2152 = zext i16 %381 to i32
  %add2153 = add nuw nsw i32 %conv2152, %conv2147
  %382 = load i32, ptr %arrayidx1119, align 4
  %add2155 = add nsw i32 %add2153, %382
  store i32 %add2155, ptr %arrayidx1119, align 4
  %cmp2157 = icmp slt i32 %add2116, %bcost.73.lcssa
  %bcost.78 = call i32 @llvm.smin.i32(i32 %add2116, i32 %bcost.73.lcssa)
  %bmx.54 = select i1 %cmp2157, i32 %add1446, i32 %bmx.49.lcssa
  %cmp2165 = icmp slt i32 %add2129, %bcost.78
  %bcost.79 = call i32 @llvm.smin.i32(i32 %add2129, i32 %bcost.78)
  %383 = or i1 %cmp2157, %cmp2165
  %bmy.55 = select i1 %383, i32 %add1438, i32 %bmy.49.lcssa
  %bmx.55 = select i1 %cmp2165, i32 %add1459, i32 %bmx.54
  %cmp2173 = icmp slt i32 %add2142, %bcost.79
  %bcost.80 = call i32 @llvm.smin.i32(i32 %add2142, i32 %bcost.79)
  %bmx.56 = select i1 %cmp2173, i32 %add1472, i32 %bmx.55
  %cmp2181 = icmp slt i32 %add2155, %bcost.80
  %bcost.81 = call i32 @llvm.smin.i32(i32 %add2155, i32 %bcost.80)
  %384 = or i1 %cmp2173, %cmp2181
  %bmy.57 = select i1 %384, i32 %add1451, i32 %bmy.55
  %bmx.57 = select i1 %cmp2181, i32 %add1544, i32 %bmx.56
  %385 = load ptr, ptr %arrayidx1051, align 8
  %add.ptr2201 = getelementptr inbounds i8, ptr %add.ptr1428, i64 %idx.ext1058
  %add.ptr2205 = getelementptr inbounds i8, ptr %add.ptr1527, i64 %idx.ext1058
  %add.ptr2209 = getelementptr inbounds i8, ptr %add.ptr1420, i64 %idx.ext1541
  %add.ptr2213 = getelementptr inbounds i8, ptr %add.ptr1424, i64 %idx.ext1541
  call void %385(ptr noundef %5, ptr noundef nonnull %add.ptr2201, ptr noundef nonnull %add.ptr2205, ptr noundef nonnull %add.ptr2209, ptr noundef nonnull %add.ptr2213, i32 noundef %3, ptr noundef nonnull %costs) #6
  %386 = load i16, ptr %arrayidx1475, align 2
  %conv2219 = zext i16 %386 to i32
  %387 = load i16, ptr %arrayidx1565, align 2
  %conv2224 = zext i16 %387 to i32
  %add2225 = add nuw nsw i32 %conv2224, %conv2219
  %388 = load i32, ptr %costs, align 16
  %add2227 = add nsw i32 %add2225, %388
  store i32 %add2227, ptr %costs, align 16
  %389 = load i16, ptr %arrayidx1547, align 2
  %conv2232 = zext i16 %389 to i32
  %390 = load i16, ptr %arrayidx1565, align 2
  %conv2237 = zext i16 %390 to i32
  %add2238 = add nuw nsw i32 %conv2237, %conv2232
  %391 = load i32, ptr %arrayidx1093, align 4
  %add2240 = add nsw i32 %add2238, %391
  store i32 %add2240, ptr %arrayidx1093, align 4
  %392 = load i16, ptr %arrayidx1449, align 2
  %conv2245 = zext i16 %392 to i32
  %393 = load i16, ptr %arrayidx1591, align 2
  %conv2250 = zext i16 %393 to i32
  %add2251 = add nuw nsw i32 %conv2250, %conv2245
  %394 = load i32, ptr %arrayidx1106, align 8
  %add2253 = add nsw i32 %add2251, %394
  store i32 %add2253, ptr %arrayidx1106, align 8
  %395 = load i16, ptr %arrayidx1462, align 2
  %conv2258 = zext i16 %395 to i32
  %396 = load i16, ptr %arrayidx1591, align 2
  %conv2263 = zext i16 %396 to i32
  %add2264 = add nuw nsw i32 %conv2263, %conv2258
  %397 = load i32, ptr %arrayidx1119, align 4
  %add2266 = add nsw i32 %add2264, %397
  store i32 %add2266, ptr %arrayidx1119, align 4
  %cmp2268 = icmp slt i32 %add2227, %bcost.81
  %bcost.82 = call i32 @llvm.smin.i32(i32 %add2227, i32 %bcost.81)
  %bmx.58 = select i1 %cmp2268, i32 %add1472, i32 %bmx.57
  %cmp2276 = icmp slt i32 %add2240, %bcost.82
  %bcost.83 = call i32 @llvm.smin.i32(i32 %add2240, i32 %bcost.82)
  %398 = or i1 %cmp2268, %cmp2276
  %bmy.59 = select i1 %398, i32 %add1562, i32 %bmy.57
  %bmx.59 = select i1 %cmp2276, i32 %add1544, i32 %bmx.58
  %cmp2284 = icmp slt i32 %add2253, %bcost.83
  %bcost.84 = call i32 @llvm.smin.i32(i32 %add2253, i32 %bcost.83)
  %bmx.60 = select i1 %cmp2284, i32 %add1446, i32 %bmx.59
  %cmp2292 = icmp slt i32 %add2266, %bcost.84
  %bcost.85 = call i32 @llvm.smin.i32(i32 %add2266, i32 %bcost.84)
  %399 = or i1 %cmp2284, %cmp2292
  %bmy.61 = select i1 %399, i32 %add1588, i32 %bmy.59
  %bmx.61 = select i1 %cmp2292, i32 %add1459, i32 %bmx.60
  %cmp2299.not = icmp eq i32 %bcost.85, %bcost.42
  %add2303 = add nsw i32 %or1643, 2
  br i1 %cmp2299.not, label %sw.epilog, label %if.end2306

if.end2306:                                       ; preds = %if.end1638, %for.end2076, %land.lhs.true1398, %if.end1391
  %bmx.236221 = phi i32 [ %bmx.236220, %for.end2076 ], [ %bmx.236220, %if.end1638 ], [ %bmx.236220, %land.lhs.true1398 ], [ %bmx.22, %if.end1391 ]
  %bmy.236219 = phi i32 [ %bmy.236218, %for.end2076 ], [ %bmy.236218, %if.end1638 ], [ %bmy.236218, %land.lhs.true1398 ], [ %bmy.22, %if.end1391 ]
  %cross_start.2 = phi i32 [ %add2303, %for.end2076 ], [ 3, %if.end1638 ], [ 3, %land.lhs.true1398 ], [ 1, %if.end1391 ]
  %bcost.86 = phi i32 [ %bcost.85, %for.end2076 ], [ %bcost.55, %if.end1638 ], [ %bcost.42, %land.lhs.true1398 ], [ %bcost.46, %if.end1391 ]
  %bmy.62 = phi i32 [ %bmy.61, %for.end2076 ], [ %bmy.31, %if.end1638 ], [ %bmy.236218, %land.lhs.true1398 ], [ %bmy.22, %if.end1391 ]
  %bmx.62 = phi i32 [ %bmx.61, %for.end2076 ], [ %bmx.31, %if.end1638 ], [ %bmx.236220, %land.lhs.true1398 ], [ %bmx.22, %if.end1391 ]
  switch i32 %i_mvc, label %if.else2332 [
    i32 0, label %if.end2410
    i32 1, label %if.then2311
  ]

if.then2311:                                      ; preds = %if.end2306
  %cmp2312 = icmp eq i32 %0, 0
  br i1 %cmp2312, label %if.end2357, label %if.else2315

if.else2315:                                      ; preds = %if.then2311
  %400 = load i16, ptr %mvp, align 16
  %conv2318 = sext i16 %400 to i32
  %401 = load i16, ptr %mvc, align 2
  %conv2321 = sext i16 %401 to i32
  %sub2322 = sub nsw i32 %conv2318, %conv2321
  %402 = call i32 @llvm.abs.i32(i32 %sub2322, i1 true)
  %403 = load i16, ptr %arrayidx33, align 2
  %conv2325 = sext i16 %403 to i32
  %arrayidx2327 = getelementptr inbounds i8, ptr %mvc, i64 2
  %404 = load i16, ptr %arrayidx2327, align 2
  %conv2328 = sext i16 %404 to i32
  %sub2329 = sub nsw i32 %conv2325, %conv2328
  %405 = call i32 @llvm.abs.i32(i32 %sub2329, i1 true)
  %add2330 = add nuw nsw i32 %405, %402
  br label %if.end2357

if.else2332:                                      ; preds = %if.end2306
  %sub2333 = add nsw i32 %i_mvc, -1
  %cmp2334.not = icmp eq i32 %0, 0
  br i1 %cmp2334.not, label %if.end2353, label %if.then2336

if.then2336:                                      ; preds = %if.else2332
  %406 = load i16, ptr %mvp, align 16
  %conv2339 = sext i16 %406 to i32
  %407 = load i16, ptr %mvc, align 2
  %conv2342 = sext i16 %407 to i32
  %sub2343 = sub nsw i32 %conv2339, %conv2342
  %408 = call i32 @llvm.abs.i32(i32 %sub2343, i1 true)
  %409 = load i16, ptr %arrayidx33, align 2
  %conv2346 = sext i16 %409 to i32
  %arrayidx2348 = getelementptr inbounds i8, ptr %mvc, i64 2
  %410 = load i16, ptr %arrayidx2348, align 2
  %conv2349 = sext i16 %410 to i32
  %sub2350 = sub nsw i32 %conv2346, %conv2349
  %411 = call i32 @llvm.abs.i32(i32 %sub2350, i1 true)
  %add2351 = add nuw nsw i32 %411, %408
  br label %if.end2353

if.end2353:                                       ; preds = %if.then2336, %if.else2332
  %denom.0 = phi i32 [ %i_mvc, %if.then2336 ], [ %sub2333, %if.else2332 ]
  %mvd.0 = phi i32 [ %add2351, %if.then2336 ], [ 0, %if.else2332 ]
  %cmp30.i = icmp sgt i32 %i_mvc, 1
  br i1 %cmp30.i, label %for.body.preheader.i6206, label %x264_predictor_difference.exit

for.body.preheader.i6206:                         ; preds = %if.end2353
  %.pre.i = load i16, ptr %mvc, align 2
  %arrayidx11.phi.trans.insert.i = getelementptr inbounds i8, ptr %mvc, i64 2
  %.pre35.i = load i16, ptr %arrayidx11.phi.trans.insert.i, align 2
  %narrow = add nsw i32 %i_mvc, -2
  %412 = zext nneg i32 %narrow to i64
  %413 = add nuw nsw i64 %412, 1
  %min.iters.check6649 = icmp ult i32 %narrow, 15
  br i1 %min.iters.check6649, label %for.body.i6207.preheader, label %vector.ph6650

vector.ph6650:                                    ; preds = %for.body.preheader.i6206
  %n.vec6652 = and i64 %413, 4294967280
  %vector.recur.init = insertelement <4 x i16> poison, i16 %.pre35.i, i64 3
  %vector.recur.init6656 = insertelement <4 x i16> poison, i16 %.pre.i, i64 3
  br label %vector.body6654

vector.body6654:                                  ; preds = %vector.body6654, %vector.ph6650
  %index6655 = phi i64 [ 0, %vector.ph6650 ], [ %index.next6673, %vector.body6654 ]
  %vector.recur = phi <4 x i16> [ %vector.recur.init, %vector.ph6650 ], [ %strided.vec6672, %vector.body6654 ]
  %vector.recur6657 = phi <4 x i16> [ %vector.recur.init6656, %vector.ph6650 ], [ %strided.vec6668, %vector.body6654 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph6650 ], [ %466, %vector.body6654 ]
  %vec.phi6658 = phi <4 x i32> [ zeroinitializer, %vector.ph6650 ], [ %467, %vector.body6654 ]
  %vec.phi6659 = phi <4 x i32> [ zeroinitializer, %vector.ph6650 ], [ %468, %vector.body6654 ]
  %vec.phi6660 = phi <4 x i32> [ zeroinitializer, %vector.ph6650 ], [ %469, %vector.body6654 ]
  %414 = or disjoint i64 %index6655, 1
  %415 = or disjoint i64 %index6655, 5
  %416 = or disjoint i64 %index6655, 9
  %417 = or disjoint i64 %index6655, 13
  %418 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %414
  %419 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %415
  %420 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %416
  %421 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %417
  %wide.vec6661 = load <8 x i16>, ptr %418, align 2
  %wide.vec6662 = load <8 x i16>, ptr %419, align 2
  %wide.vec6663 = load <8 x i16>, ptr %420, align 2
  %wide.vec6664 = load <8 x i16>, ptr %421, align 2
  %strided.vec6665 = shufflevector <8 x i16> %wide.vec6661, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec6666 = shufflevector <8 x i16> %wide.vec6662, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec6667 = shufflevector <8 x i16> %wide.vec6663, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec6668 = shufflevector <8 x i16> %wide.vec6664, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec6669 = shufflevector <8 x i16> %wide.vec6661, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %strided.vec6670 = shufflevector <8 x i16> %wide.vec6662, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %strided.vec6671 = shufflevector <8 x i16> %wide.vec6663, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %strided.vec6672 = shufflevector <8 x i16> %wide.vec6664, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %422 = shufflevector <4 x i16> %vector.recur6657, <4 x i16> %strided.vec6665, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %423 = shufflevector <4 x i16> %strided.vec6665, <4 x i16> %strided.vec6666, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %424 = shufflevector <4 x i16> %strided.vec6666, <4 x i16> %strided.vec6667, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %425 = shufflevector <4 x i16> %strided.vec6667, <4 x i16> %strided.vec6668, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %426 = sext <4 x i16> %422 to <4 x i32>
  %427 = sext <4 x i16> %423 to <4 x i32>
  %428 = sext <4 x i16> %424 to <4 x i32>
  %429 = sext <4 x i16> %425 to <4 x i32>
  %430 = shufflevector <4 x i16> %vector.recur, <4 x i16> %strided.vec6669, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %431 = shufflevector <4 x i16> %strided.vec6669, <4 x i16> %strided.vec6670, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %432 = shufflevector <4 x i16> %strided.vec6670, <4 x i16> %strided.vec6671, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %433 = shufflevector <4 x i16> %strided.vec6671, <4 x i16> %strided.vec6672, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %434 = sext <4 x i16> %strided.vec6665 to <4 x i32>
  %435 = sext <4 x i16> %strided.vec6666 to <4 x i32>
  %436 = sext <4 x i16> %strided.vec6667 to <4 x i32>
  %437 = sext <4 x i16> %strided.vec6668 to <4 x i32>
  %438 = sub nsw <4 x i32> %426, %434
  %439 = sub nsw <4 x i32> %427, %435
  %440 = sub nsw <4 x i32> %428, %436
  %441 = sub nsw <4 x i32> %429, %437
  %442 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %438, i1 true)
  %443 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %439, i1 true)
  %444 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %440, i1 true)
  %445 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %441, i1 true)
  %446 = sext <4 x i16> %430 to <4 x i32>
  %447 = sext <4 x i16> %431 to <4 x i32>
  %448 = sext <4 x i16> %432 to <4 x i32>
  %449 = sext <4 x i16> %433 to <4 x i32>
  %450 = sext <4 x i16> %strided.vec6669 to <4 x i32>
  %451 = sext <4 x i16> %strided.vec6670 to <4 x i32>
  %452 = sext <4 x i16> %strided.vec6671 to <4 x i32>
  %453 = sext <4 x i16> %strided.vec6672 to <4 x i32>
  %454 = sub nsw <4 x i32> %446, %450
  %455 = sub nsw <4 x i32> %447, %451
  %456 = sub nsw <4 x i32> %448, %452
  %457 = sub nsw <4 x i32> %449, %453
  %458 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %454, i1 true)
  %459 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %455, i1 true)
  %460 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %456, i1 true)
  %461 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %457, i1 true)
  %462 = add <4 x i32> %442, %vec.phi
  %463 = add <4 x i32> %443, %vec.phi6658
  %464 = add <4 x i32> %444, %vec.phi6659
  %465 = add <4 x i32> %445, %vec.phi6660
  %466 = add <4 x i32> %462, %458
  %467 = add <4 x i32> %463, %459
  %468 = add <4 x i32> %464, %460
  %469 = add <4 x i32> %465, %461
  %index.next6673 = add nuw i64 %index6655, 16
  %470 = icmp eq i64 %index.next6673, %n.vec6652
  br i1 %470, label %middle.block6647, label %vector.body6654, !llvm.loop !9

middle.block6647:                                 ; preds = %vector.body6654
  %bin.rdx = add <4 x i32> %467, %466
  %bin.rdx6674 = add <4 x i32> %468, %bin.rdx
  %bin.rdx6675 = add <4 x i32> %469, %bin.rdx6674
  %471 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx6675)
  %vector.recur.extract = extractelement <8 x i16> %wide.vec6664, i64 7
  %vector.recur.extract6676 = extractelement <8 x i16> %wide.vec6664, i64 6
  %cmp.n6677 = icmp eq i64 %413, %n.vec6652
  br i1 %cmp.n6677, label %x264_predictor_difference.exit, label %for.body.i6207.preheader

for.body.i6207.preheader:                         ; preds = %middle.block6647, %for.body.preheader.i6206
  %.ph = phi i16 [ %.pre35.i, %for.body.preheader.i6206 ], [ %vector.recur.extract, %middle.block6647 ]
  %.ph6679 = phi i16 [ %.pre.i, %for.body.preheader.i6206 ], [ %vector.recur.extract6676, %middle.block6647 ]
  %indvars.iv.i6208.ph = phi i64 [ 0, %for.body.preheader.i6206 ], [ %n.vec6652, %middle.block6647 ]
  %sum.031.i.ph = phi i32 [ 0, %for.body.preheader.i6206 ], [ %471, %middle.block6647 ]
  br label %for.body.i6207

for.body.i6207:                                   ; preds = %for.body.i6207.preheader, %for.body.i6207
  %472 = phi i16 [ %476, %for.body.i6207 ], [ %.ph, %for.body.i6207.preheader ]
  %473 = phi i16 [ %474, %for.body.i6207 ], [ %.ph6679, %for.body.i6207.preheader ]
  %indvars.iv.i6208 = phi i64 [ %indvars.iv.next.i6209, %for.body.i6207 ], [ %indvars.iv.i6208.ph, %for.body.i6207.preheader ]
  %sum.031.i = phi i32 [ %add20.i, %for.body.i6207 ], [ %sum.031.i.ph, %for.body.i6207.preheader ]
  %conv3.i = sext i16 %473 to i32
  %indvars.iv.next.i6209 = add nuw nsw i64 %indvars.iv.i6208, 1
  %arrayidx5.i = getelementptr inbounds [2 x i16], ptr %mvc, i64 %indvars.iv.next.i6209
  %474 = load i16, ptr %arrayidx5.i, align 2
  %conv7.i = sext i16 %474 to i32
  %sub8.i = sub nsw i32 %conv3.i, %conv7.i
  %475 = call i32 @llvm.abs.i32(i32 %sub8.i, i1 true)
  %conv12.i = sext i16 %472 to i32
  %arrayidx16.i6210 = getelementptr inbounds i8, ptr %arrayidx5.i, i64 2
  %476 = load i16, ptr %arrayidx16.i6210, align 2
  %conv17.i = sext i16 %476 to i32
  %sub18.i = sub nsw i32 %conv12.i, %conv17.i
  %477 = call i32 @llvm.abs.i32(i32 %sub18.i, i1 true)
  %add19.i = add nuw nsw i32 %475, %sum.031.i
  %add20.i = add nuw nsw i32 %add19.i, %477
  %exitcond.not.i6211 = icmp eq i64 %indvars.iv.i6208, %412
  br i1 %exitcond.not.i6211, label %x264_predictor_difference.exit, label %for.body.i6207, !llvm.loop !10

x264_predictor_difference.exit:                   ; preds = %for.body.i6207, %middle.block6647, %if.end2353
  %sum.0.lcssa.i = phi i32 [ 0, %if.end2353 ], [ %471, %middle.block6647 ], [ %add20.i, %for.body.i6207 ]
  %add2356 = add nsw i32 %sum.0.lcssa.i, %mvd.0
  br label %if.end2357

if.end2357:                                       ; preds = %if.then2311, %if.else2315, %x264_predictor_difference.exit
  %denom.1 = phi i32 [ 1, %if.else2315 ], [ %denom.0, %x264_predictor_difference.exit ], [ 1, %if.then2311 ]
  %mvd.1 = phi i32 [ %add2330, %if.else2315 ], [ %add2356, %x264_predictor_difference.exit ], [ 25, %if.then2311 ]
  %arrayidx2359 = getelementptr inbounds [7 x i8], ptr @x264_me_search_ref.x264_pixel_size_shift, i64 0, i64 %idxprom
  %478 = load i8, ptr %arrayidx2359, align 1
  %conv2360 = zext i8 %478 to i32
  %shr2361 = lshr i32 1000, %conv2360
  %cmp2362 = icmp slt i32 %bcost.86, %shr2361
  br i1 %cmp2362, label %cond.end2383, label %cond.false2365

cond.false2365:                                   ; preds = %if.end2357
  %shr2369 = lshr i32 2000, %conv2360
  %cmp2370 = icmp ult i32 %bcost.86, %shr2369
  br i1 %cmp2370, label %cond.end2383, label %cond.false2373

cond.false2373:                                   ; preds = %cond.false2365
  %shr2377 = lshr i32 4000, %conv2360
  %cmp2378 = icmp ult i32 %bcost.86, %shr2377
  %cond2380 = select i1 %cmp2378, i64 2, i64 3
  br label %cond.end2383

cond.end2383:                                     ; preds = %cond.false2373, %cond.false2365, %if.end2357
  %cond2384 = phi i64 [ 0, %if.end2357 ], [ %cond2380, %cond.false2373 ], [ 1, %cond.false2365 ]
  %mul2385 = mul nsw i32 %denom.1, 10
  %cmp2386 = icmp slt i32 %mvd.1, %mul2385
  br i1 %cmp2386, label %cond.end2401, label %cond.false2389

cond.false2389:                                   ; preds = %cond.end2383
  %mul2390 = mul nsw i32 %denom.1, 20
  %cmp2391 = icmp slt i32 %mvd.1, %mul2390
  br i1 %cmp2391, label %cond.end2401, label %cond.false2394

cond.false2394:                                   ; preds = %cond.false2389
  %mul2395 = mul nsw i32 %denom.1, 40
  %cmp2396 = icmp slt i32 %mvd.1, %mul2395
  %cond2398 = select i1 %cmp2396, i64 2, i64 3
  br label %cond.end2401

cond.end2401:                                     ; preds = %cond.false2394, %cond.false2389, %cond.end2383
  %cond2402 = phi i64 [ 0, %cond.end2383 ], [ %cond2398, %cond.false2394 ], [ 1, %cond.false2389 ]
  %arrayidx2406 = getelementptr inbounds [4 x [4 x i8]], ptr @x264_me_search_ref.range_mul, i64 0, i64 %cond2402, i64 %cond2384
  %479 = load i8, ptr %arrayidx2406, align 1
  %conv2407 = zext i8 %479 to i32
  %mul2408 = mul nsw i32 %4, %conv2407
  %shr2409 = ashr i32 %mul2408, 2
  br label %if.end2410

if.end2410:                                       ; preds = %if.end2306, %cond.end2401
  %i_me_range.1 = phi i32 [ %shr2409, %cond.end2401 ], [ %4, %if.end2306 ]
  %sub2412 = sub nsw i32 %11, %bmx.236221
  %sub2413 = sub nsw i32 %bmx.236221, %9
  %sub2412.sub2413 = call i32 @llvm.smin.i32(i32 %sub2412, i32 %sub2413)
  %cmp2422.not = icmp sgt i32 %i_me_range.1, %sub2412.sub2413
  br i1 %cmp2422.not, label %if.end2560, label %for.cond2425.preheader

for.cond2425.preheader:                           ; preds = %if.end2410
  %sub2426 = add nsw i32 %i_me_range.1, -2
  %cmp24276370 = icmp slt i32 %cross_start.2, %sub2426
  br i1 %cmp24276370, label %for.body2429.lr.ph, label %if.end2560

for.body2429.lr.ph:                               ; preds = %for.cond2425.preheader
  %idx.ext2431 = sext i32 %bmx.236221 to i64
  %add.ptr2432 = getelementptr inbounds i8, ptr %6, i64 %idx.ext2431
  %mul2433 = mul nsw i32 %bmy.236219, %3
  %idx.ext2434 = sext i32 %mul2433 to i64
  %add.ptr2435 = getelementptr inbounds i8, ptr %add.ptr2432, i64 %idx.ext2434
  %shl2471 = shl i32 %bmy.236219, 2
  %idxprom2472 = sext i32 %shl2471 to i64
  %arrayidx2473 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2472
  %480 = sext i32 %cross_start.2 to i64
  %481 = sext i32 %sub2426 to i64
  br label %for.body2429

for.body2429:                                     ; preds = %for.body2429.lr.ph, %for.body2429
  %indvars.iv6515 = phi i64 [ %480, %for.body2429.lr.ph ], [ %indvars.iv.next6516, %for.body2429 ]
  %bmx.636374 = phi i32 [ %bmx.62, %for.body2429.lr.ph ], [ %bmx.67, %for.body2429 ]
  %bmy.636373 = phi i32 [ %bmy.62, %for.body2429.lr.ph ], [ %bmy.67, %for.body2429 ]
  %bcost.876372 = phi i32 [ %bcost.86, %for.body2429.lr.ph ], [ %bcost.91, %for.body2429 ]
  %482 = load ptr, ptr %arrayidx1051, align 8
  %add.ptr2441 = getelementptr inbounds i8, ptr %add.ptr2435, i64 %indvars.iv6515
  %483 = sub nsw i64 0, %indvars.iv6515
  %add.ptr2447 = getelementptr inbounds i8, ptr %add.ptr2435, i64 %483
  %484 = add nsw i64 %indvars.iv6515, 2
  %add.ptr2453 = getelementptr inbounds i8, ptr %add.ptr2435, i64 %484
  %485 = sub nsw i64 -2, %indvars.iv6515
  %add.ptr2460 = getelementptr inbounds i8, ptr %add.ptr2435, i64 %485
  call void %482(ptr noundef %5, ptr noundef %add.ptr2441, ptr noundef %add.ptr2447, ptr noundef %add.ptr2453, ptr noundef %add.ptr2460, i32 noundef %3, ptr noundef nonnull %costs) #6
  %486 = trunc i64 %indvars.iv6515 to i32
  %487 = add i32 %bmx.236221, %486
  %shl2466 = shl i32 %487, 2
  %idxprom2467 = sext i32 %shl2466 to i64
  %arrayidx2468 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2467
  %488 = load i16, ptr %arrayidx2468, align 2
  %conv2469 = zext i16 %488 to i32
  %489 = load i16, ptr %arrayidx2473, align 2
  %conv2474 = zext i16 %489 to i32
  %add2475 = add nuw nsw i32 %conv2474, %conv2469
  %490 = load i32, ptr %costs, align 16
  %add2477 = add nsw i32 %add2475, %490
  store i32 %add2477, ptr %costs, align 16
  %491 = trunc nsw i64 %indvars.iv6515 to i32
  %add2479 = sub i32 %bmx.236221, %491
  %shl2480 = shl i32 %add2479, 2
  %idxprom2481 = sext i32 %shl2480 to i64
  %arrayidx2482 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2481
  %492 = load i16, ptr %arrayidx2482, align 2
  %conv2483 = zext i16 %492 to i32
  %493 = load i16, ptr %arrayidx2473, align 2
  %conv2488 = zext i16 %493 to i32
  %add2489 = add nuw nsw i32 %conv2488, %conv2483
  %494 = load i32, ptr %arrayidx1093, align 4
  %add2491 = add nsw i32 %add2489, %494
  store i32 %add2491, ptr %arrayidx1093, align 4
  %495 = trunc i64 %484 to i32
  %496 = add i32 %bmx.236221, %495
  %shl2494 = shl i32 %496, 2
  %idxprom2495 = sext i32 %shl2494 to i64
  %arrayidx2496 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2495
  %497 = load i16, ptr %arrayidx2496, align 2
  %conv2497 = zext i16 %497 to i32
  %498 = load i16, ptr %arrayidx2473, align 2
  %conv2502 = zext i16 %498 to i32
  %add2503 = add nuw nsw i32 %conv2502, %conv2497
  %499 = load i32, ptr %arrayidx1106, align 8
  %add2505 = add nsw i32 %add2503, %499
  store i32 %add2505, ptr %arrayidx1106, align 8
  %500 = trunc i64 %485 to i32
  %501 = add i32 %bmx.236221, %500
  %shl2509 = shl i32 %501, 2
  %idxprom2510 = sext i32 %shl2509 to i64
  %arrayidx2511 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2510
  %502 = load i16, ptr %arrayidx2511, align 2
  %conv2512 = zext i16 %502 to i32
  %503 = load i16, ptr %arrayidx2473, align 2
  %conv2517 = zext i16 %503 to i32
  %add2518 = add nuw nsw i32 %conv2517, %conv2512
  %504 = load i32, ptr %arrayidx1119, align 4
  %add2520 = add nsw i32 %add2518, %504
  store i32 %add2520, ptr %arrayidx1119, align 4
  %cmp2522 = icmp slt i32 %add2477, %bcost.876372
  %bcost.88 = call i32 @llvm.smin.i32(i32 %add2477, i32 %bcost.876372)
  %bmx.64 = select i1 %cmp2522, i32 %487, i32 %bmx.636374
  %cmp2530 = icmp slt i32 %add2491, %bcost.88
  %bcost.89 = call i32 @llvm.smin.i32(i32 %add2491, i32 %bcost.88)
  %505 = or i1 %cmp2522, %cmp2530
  %bmx.65 = select i1 %cmp2530, i32 %add2479, i32 %bmx.64
  %cmp2539 = icmp slt i32 %add2505, %bcost.89
  %bcost.90 = call i32 @llvm.smin.i32(i32 %add2505, i32 %bcost.89)
  %bmx.66 = select i1 %cmp2539, i32 %496, i32 %bmx.65
  %cmp2548 = icmp slt i32 %add2520, %bcost.90
  %bcost.91 = call i32 @llvm.smin.i32(i32 %add2520, i32 %bcost.90)
  %506 = or i1 %cmp2539, %cmp2548
  %507 = select i1 %506, i1 true, i1 %505
  %bmy.67 = select i1 %507, i32 %bmy.236219, i32 %bmy.636373
  %bmx.67 = select i1 %cmp2548, i32 %501, i32 %bmx.66
  %indvars.iv.next6516 = add nsw i64 %indvars.iv6515, 4
  %cmp2427 = icmp slt i64 %indvars.iv.next6516, %481
  br i1 %cmp2427, label %for.body2429, label %if.end2560.loopexit

if.end2560.loopexit:                              ; preds = %for.body2429
  %508 = trunc nsw i64 %indvars.iv.next6516 to i32
  br label %if.end2560

if.end2560:                                       ; preds = %if.end2560.loopexit, %for.cond2425.preheader, %if.end2410
  %i2411.1 = phi i32 [ %cross_start.2, %if.end2410 ], [ %cross_start.2, %for.cond2425.preheader ], [ %508, %if.end2560.loopexit ]
  %bcost.92 = phi i32 [ %bcost.86, %if.end2410 ], [ %bcost.86, %for.cond2425.preheader ], [ %bcost.91, %if.end2560.loopexit ]
  %bmy.68 = phi i32 [ %bmy.62, %if.end2410 ], [ %bmy.62, %for.cond2425.preheader ], [ %bmy.67, %if.end2560.loopexit ]
  %bmx.68 = phi i32 [ %bmx.62, %if.end2410 ], [ %bmx.62, %for.cond2425.preheader ], [ %bmx.67, %if.end2560.loopexit ]
  %cmp25626379 = icmp slt i32 %i2411.1, %i_me_range.1
  br i1 %cmp25626379, label %for.body2564.lr.ph, label %for.end2631

for.body2564.lr.ph:                               ; preds = %if.end2560
  %fpelcmp2571 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx2573 = getelementptr inbounds [7 x ptr], ptr %fpelcmp2571, i64 0, i64 %idxprom
  %mul2574 = mul nsw i32 %bmy.236219, %3
  %shl2585 = shl i32 %bmy.236219, 2
  %idxprom2586 = sext i32 %shl2585 to i64
  %arrayidx2587 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2586
  %509 = sext i32 %i2411.1 to i64
  %510 = sext i32 %bmx.236221 to i64
  %511 = sext i32 %11 to i64
  %512 = sext i32 %mul2574 to i64
  %513 = sext i32 %9 to i64
  %514 = sext i32 %i_me_range.1 to i64
  %invariant.gep6614 = getelementptr i8, ptr %6, i64 %512
  %invariant.gep6616 = getelementptr i8, ptr %6, i64 %512
  br label %for.body2564

for.body2564:                                     ; preds = %for.body2564.lr.ph, %for.inc2629
  %indvars.iv6524 = phi i64 [ %509, %for.body2564.lr.ph ], [ %indvars.iv.next6525, %for.inc2629 ]
  %bmx.696383 = phi i32 [ %bmx.68, %for.body2564.lr.ph ], [ %bmx.73, %for.inc2629 ]
  %bmy.696382 = phi i32 [ %bmy.68, %for.body2564.lr.ph ], [ %bmy.73, %for.inc2629 ]
  %bcost.936381 = phi i32 [ %bcost.92, %for.body2564.lr.ph ], [ %bcost.97, %for.inc2629 ]
  %515 = add nsw i64 %indvars.iv6524, %510
  %cmp2566.not = icmp sgt i64 %515, %511
  br i1 %cmp2566.not, label %if.end2596, label %if.then2568

if.then2568:                                      ; preds = %for.body2564
  %516 = load ptr, ptr %arrayidx2573, align 8
  %gep6615 = getelementptr i8, ptr %invariant.gep6614, i64 %515
  %call2579 = call i32 %516(ptr noundef %5, i32 noundef 16, ptr noundef %gep6615, i32 noundef %3) #6
  %517 = trunc nsw i64 %515 to i32
  %shl2581 = shl i32 %517, 2
  %idxprom2582 = sext i32 %shl2581 to i64
  %arrayidx2583 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2582
  %518 = load i16, ptr %arrayidx2583, align 2
  %conv2584 = zext i16 %518 to i32
  %519 = load i16, ptr %arrayidx2587, align 2
  %conv2588 = zext i16 %519 to i32
  %add2589 = add i32 %call2579, %conv2584
  %add2590 = add i32 %add2589, %conv2588
  %cmp2591 = icmp slt i32 %add2590, %bcost.936381
  %bcost.94 = call i32 @llvm.smin.i32(i32 %add2590, i32 %bcost.936381)
  %bmy.70 = select i1 %cmp2591, i32 %bmy.236219, i32 %bmy.696382
  %bmx.70 = select i1 %cmp2591, i32 %517, i32 %bmx.696383
  br label %if.end2596

if.end2596:                                       ; preds = %if.then2568, %for.body2564
  %bcost.95 = phi i32 [ %bcost.94, %if.then2568 ], [ %bcost.936381, %for.body2564 ]
  %bmy.71 = phi i32 [ %bmy.70, %if.then2568 ], [ %bmy.696382, %for.body2564 ]
  %bmx.71 = phi i32 [ %bmx.70, %if.then2568 ], [ %bmx.696383, %for.body2564 ]
  %520 = sub nsw i64 %510, %indvars.iv6524
  %cmp2598.not = icmp slt i64 %520, %513
  br i1 %cmp2598.not, label %for.inc2629, label %if.then2600

if.then2600:                                      ; preds = %if.end2596
  %521 = load ptr, ptr %arrayidx2573, align 8
  %gep6617 = getelementptr i8, ptr %invariant.gep6616, i64 %520
  %call2611 = call i32 %521(ptr noundef %5, i32 noundef 16, ptr noundef %gep6617, i32 noundef %3) #6
  %522 = trunc nsw i64 %520 to i32
  %shl2613 = shl i32 %522, 2
  %idxprom2614 = sext i32 %shl2613 to i64
  %arrayidx2615 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2614
  %523 = load i16, ptr %arrayidx2615, align 2
  %conv2616 = zext i16 %523 to i32
  %524 = load i16, ptr %arrayidx2587, align 2
  %conv2620 = zext i16 %524 to i32
  %add2621 = add i32 %call2611, %conv2616
  %add2622 = add i32 %add2621, %conv2620
  %cmp2623 = icmp slt i32 %add2622, %bcost.95
  %bcost.96 = call i32 @llvm.smin.i32(i32 %add2622, i32 %bcost.95)
  %bmy.72 = select i1 %cmp2623, i32 %bmy.236219, i32 %bmy.71
  %bmx.72 = select i1 %cmp2623, i32 %522, i32 %bmx.71
  br label %for.inc2629

for.inc2629:                                      ; preds = %if.end2596, %if.then2600
  %bcost.97 = phi i32 [ %bcost.96, %if.then2600 ], [ %bcost.95, %if.end2596 ]
  %bmy.73 = phi i32 [ %bmy.72, %if.then2600 ], [ %bmy.71, %if.end2596 ]
  %bmx.73 = phi i32 [ %bmx.72, %if.then2600 ], [ %bmx.71, %if.end2596 ]
  %indvars.iv.next6525 = add nsw i64 %indvars.iv6524, 2
  %cmp2562 = icmp slt i64 %indvars.iv.next6525, %514
  br i1 %cmp2562, label %for.body2564, label %for.end2631

for.end2631:                                      ; preds = %for.inc2629, %if.end2560
  %bcost.93.lcssa = phi i32 [ %bcost.92, %if.end2560 ], [ %bcost.97, %for.inc2629 ]
  %bmy.69.lcssa = phi i32 [ %bmy.68, %if.end2560 ], [ %bmy.73, %for.inc2629 ]
  %bmx.69.lcssa = phi i32 [ %bmx.68, %if.end2560 ], [ %bmx.73, %for.inc2629 ]
  %shr2632 = ashr i32 %i_me_range.1, 1
  %sub2633 = sub nsw i32 %12, %bmy.236219
  %sub2634 = sub nsw i32 %bmy.236219, %10
  %sub2633.sub2634 = call i32 @llvm.smin.i32(i32 %sub2633, i32 %sub2634)
  %cmp2643.not = icmp sgt i32 %shr2632, %sub2633.sub2634
  br i1 %cmp2643.not, label %if.end2778, label %for.cond2646.preheader

for.cond2646.preheader:                           ; preds = %for.end2631
  %sub2648 = add nsw i32 %shr2632, -2
  %cmp26496387 = icmp slt i32 %cross_start.2, %sub2648
  br i1 %cmp26496387, label %for.body2651.lr.ph, label %if.end2778

for.body2651.lr.ph:                               ; preds = %for.cond2646.preheader
  %idx.ext2653 = sext i32 %bmx.236221 to i64
  %add.ptr2654 = getelementptr inbounds i8, ptr %6, i64 %idx.ext2653
  %mul2655 = mul nsw i32 %bmy.236219, %3
  %idx.ext2656 = sext i32 %mul2655 to i64
  %add.ptr2657 = getelementptr inbounds i8, ptr %add.ptr2654, i64 %idx.ext2656
  %shl2684 = shl i32 %bmx.236221, 2
  %idxprom2685 = sext i32 %shl2684 to i64
  %arrayidx2686 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2685
  %525 = sext i32 %cross_start.2 to i64
  %526 = sext i32 %sub2648 to i64
  br label %for.body2651

for.body2651:                                     ; preds = %for.body2651.lr.ph, %for.body2651
  %indvars.iv6531 = phi i64 [ %525, %for.body2651.lr.ph ], [ %indvars.iv.next6532, %for.body2651 ]
  %bmx.746391 = phi i32 [ %bmx.69.lcssa, %for.body2651.lr.ph ], [ %bmx.78, %for.body2651 ]
  %bmy.746390 = phi i32 [ %bmy.69.lcssa, %for.body2651.lr.ph ], [ %bmy.78, %for.body2651 ]
  %bcost.986389 = phi i32 [ %bcost.93.lcssa, %for.body2651.lr.ph ], [ %bcost.102, %for.body2651 ]
  %527 = load ptr, ptr %arrayidx1051, align 8
  %528 = mul nsw i64 %indvars.iv6531, %idx.ext1058
  %add.ptr2665 = getelementptr inbounds i8, ptr %add.ptr2657, i64 %528
  %.neg6585 = mul i64 %528, -4294967296
  %idx.ext2669 = ashr exact i64 %.neg6585, 32
  %add.ptr2670 = getelementptr inbounds i8, ptr %add.ptr2657, i64 %idx.ext2669
  %529 = add nsw i64 %indvars.iv6531, 2
  %530 = mul nsw i64 %529, %idx.ext1058
  %add.ptr2675 = getelementptr inbounds i8, ptr %add.ptr2657, i64 %530
  %531 = sub nsw i64 -2, %indvars.iv6531
  %532 = mul nsw i64 %531, %idx.ext1058
  %add.ptr2681 = getelementptr inbounds i8, ptr %add.ptr2657, i64 %532
  call void %527(ptr noundef %5, ptr noundef %add.ptr2665, ptr noundef %add.ptr2670, ptr noundef %add.ptr2675, ptr noundef %add.ptr2681, i32 noundef %3, ptr noundef nonnull %costs) #6
  %533 = load i16, ptr %arrayidx2686, align 2
  %conv2687 = zext i16 %533 to i32
  %534 = trunc i64 %indvars.iv6531 to i32
  %535 = add i32 %bmy.236219, %534
  %shl2689 = shl i32 %535, 2
  %idxprom2690 = sext i32 %shl2689 to i64
  %arrayidx2691 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2690
  %536 = load i16, ptr %arrayidx2691, align 2
  %conv2692 = zext i16 %536 to i32
  %add2693 = add nuw nsw i32 %conv2692, %conv2687
  %537 = load i32, ptr %costs, align 16
  %add2695 = add nsw i32 %add2693, %537
  store i32 %add2695, ptr %costs, align 16
  %538 = load i16, ptr %arrayidx2686, align 2
  %conv2700 = zext i16 %538 to i32
  %539 = trunc nsw i64 %indvars.iv6531 to i32
  %add2702 = sub i32 %bmy.236219, %539
  %shl2703 = shl i32 %add2702, 2
  %idxprom2704 = sext i32 %shl2703 to i64
  %arrayidx2705 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2704
  %540 = load i16, ptr %arrayidx2705, align 2
  %conv2706 = zext i16 %540 to i32
  %add2707 = add nuw nsw i32 %conv2706, %conv2700
  %541 = load i32, ptr %arrayidx1093, align 4
  %add2709 = add nsw i32 %add2707, %541
  store i32 %add2709, ptr %arrayidx1093, align 4
  %542 = load i16, ptr %arrayidx2686, align 2
  %conv2714 = zext i16 %542 to i32
  %543 = trunc i64 %529 to i32
  %544 = add i32 %bmy.236219, %543
  %shl2717 = shl i32 %544, 2
  %idxprom2718 = sext i32 %shl2717 to i64
  %arrayidx2719 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2718
  %545 = load i16, ptr %arrayidx2719, align 2
  %conv2720 = zext i16 %545 to i32
  %add2721 = add nuw nsw i32 %conv2720, %conv2714
  %546 = load i32, ptr %arrayidx1106, align 8
  %add2723 = add nsw i32 %add2721, %546
  store i32 %add2723, ptr %arrayidx1106, align 8
  %547 = load i16, ptr %arrayidx2686, align 2
  %conv2728 = zext i16 %547 to i32
  %548 = trunc i64 %531 to i32
  %549 = add i32 %bmy.236219, %548
  %shl2732 = shl i32 %549, 2
  %idxprom2733 = sext i32 %shl2732 to i64
  %arrayidx2734 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2733
  %550 = load i16, ptr %arrayidx2734, align 2
  %conv2735 = zext i16 %550 to i32
  %add2736 = add nuw nsw i32 %conv2735, %conv2728
  %551 = load i32, ptr %arrayidx1119, align 4
  %add2738 = add nsw i32 %add2736, %551
  store i32 %add2738, ptr %arrayidx1119, align 4
  %cmp2740 = icmp slt i32 %add2695, %bcost.986389
  %bcost.99 = call i32 @llvm.smin.i32(i32 %add2695, i32 %bcost.986389)
  %bmy.75 = select i1 %cmp2740, i32 %535, i32 %bmy.746390
  %cmp2748 = icmp slt i32 %add2709, %bcost.99
  %bcost.100 = call i32 @llvm.smin.i32(i32 %add2709, i32 %bcost.99)
  %bmy.76 = select i1 %cmp2748, i32 %add2702, i32 %bmy.75
  %552 = or i1 %cmp2740, %cmp2748
  %cmp2757 = icmp slt i32 %add2723, %bcost.100
  %bcost.101 = call i32 @llvm.smin.i32(i32 %add2723, i32 %bcost.100)
  %bmy.77 = select i1 %cmp2757, i32 %544, i32 %bmy.76
  %cmp2766 = icmp slt i32 %add2738, %bcost.101
  %bcost.102 = call i32 @llvm.smin.i32(i32 %add2738, i32 %bcost.101)
  %bmy.78 = select i1 %cmp2766, i32 %549, i32 %bmy.77
  %553 = or i1 %cmp2757, %cmp2766
  %554 = select i1 %553, i1 true, i1 %552
  %bmx.78 = select i1 %554, i32 %bmx.236221, i32 %bmx.746391
  %indvars.iv.next6532 = add nsw i64 %indvars.iv6531, 4
  %cmp2649 = icmp slt i64 %indvars.iv.next6532, %526
  br i1 %cmp2649, label %for.body2651, label %if.end2778.loopexit

if.end2778.loopexit:                              ; preds = %for.body2651
  %555 = trunc nsw i64 %indvars.iv.next6532 to i32
  br label %if.end2778

if.end2778:                                       ; preds = %if.end2778.loopexit, %for.cond2646.preheader, %for.end2631
  %i2411.4 = phi i32 [ %cross_start.2, %for.end2631 ], [ %cross_start.2, %for.cond2646.preheader ], [ %555, %if.end2778.loopexit ]
  %bcost.103 = phi i32 [ %bcost.93.lcssa, %for.end2631 ], [ %bcost.93.lcssa, %for.cond2646.preheader ], [ %bcost.102, %if.end2778.loopexit ]
  %bmy.79 = phi i32 [ %bmy.69.lcssa, %for.end2631 ], [ %bmy.69.lcssa, %for.cond2646.preheader ], [ %bmy.78, %if.end2778.loopexit ]
  %bmx.79 = phi i32 [ %bmx.69.lcssa, %for.end2631 ], [ %bmx.69.lcssa, %for.cond2646.preheader ], [ %bmx.78, %if.end2778.loopexit ]
  %cmp27816396 = icmp slt i32 %i2411.4, %shr2632
  br i1 %cmp27816396, label %for.body2783.lr.ph, label %if.end2778.for.end2850_crit_edge

if.end2778.for.end2850_crit_edge:                 ; preds = %if.end2778
  %.pre6578 = sext i32 %bmx.236221 to i64
  br label %for.end2850

for.body2783.lr.ph:                               ; preds = %if.end2778
  %fpelcmp2790 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx2792 = getelementptr inbounds [7 x ptr], ptr %fpelcmp2790, i64 0, i64 %idxprom
  %shl2799 = shl i32 %bmx.236221, 2
  %idxprom2800 = sext i32 %shl2799 to i64
  %arrayidx2801 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2800
  %556 = sext i32 %i2411.4 to i64
  %557 = sext i32 %bmy.236219 to i64
  %558 = sext i32 %12 to i64
  %559 = sext i32 %bmx.236221 to i64
  %560 = sext i32 %10 to i64
  %561 = sext i32 %shr2632 to i64
  %invariant.gep6618 = getelementptr i8, ptr %6, i64 %559
  %invariant.gep6620 = getelementptr i8, ptr %6, i64 %559
  br label %for.body2783

for.body2783:                                     ; preds = %for.body2783.lr.ph, %for.inc2848
  %indvars.iv6542 = phi i64 [ %556, %for.body2783.lr.ph ], [ %indvars.iv.next6543, %for.inc2848 ]
  %bmx.806400 = phi i32 [ %bmx.79, %for.body2783.lr.ph ], [ %bmx.84, %for.inc2848 ]
  %bmy.806399 = phi i32 [ %bmy.79, %for.body2783.lr.ph ], [ %bmy.84, %for.inc2848 ]
  %bcost.1046398 = phi i32 [ %bcost.103, %for.body2783.lr.ph ], [ %bcost.108, %for.inc2848 ]
  %562 = add nsw i64 %indvars.iv6542, %557
  %cmp2785.not = icmp sgt i64 %562, %558
  br i1 %cmp2785.not, label %if.end2815, label %if.then2787

if.then2787:                                      ; preds = %for.body2783
  %563 = load ptr, ptr %arrayidx2792, align 8
  %564 = mul nsw i64 %562, %idx.ext1058
  %gep6619 = getelementptr i8, ptr %invariant.gep6618, i64 %564
  %call2798 = call i32 %563(ptr noundef %5, i32 noundef 16, ptr noundef %gep6619, i32 noundef %3) #6
  %565 = load i16, ptr %arrayidx2801, align 2
  %conv2802 = zext i16 %565 to i32
  %566 = trunc nsw i64 %562 to i32
  %shl2804 = shl i32 %566, 2
  %idxprom2805 = sext i32 %shl2804 to i64
  %arrayidx2806 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2805
  %567 = load i16, ptr %arrayidx2806, align 2
  %conv2807 = zext i16 %567 to i32
  %add2808 = add i32 %call2798, %conv2802
  %add2809 = add i32 %add2808, %conv2807
  %cmp2810 = icmp slt i32 %add2809, %bcost.1046398
  %bcost.105 = call i32 @llvm.smin.i32(i32 %add2809, i32 %bcost.1046398)
  %bmy.81 = select i1 %cmp2810, i32 %566, i32 %bmy.806399
  %bmx.81 = select i1 %cmp2810, i32 %bmx.236221, i32 %bmx.806400
  br label %if.end2815

if.end2815:                                       ; preds = %if.then2787, %for.body2783
  %bcost.106 = phi i32 [ %bcost.105, %if.then2787 ], [ %bcost.1046398, %for.body2783 ]
  %bmy.82 = phi i32 [ %bmy.81, %if.then2787 ], [ %bmy.806399, %for.body2783 ]
  %bmx.82 = phi i32 [ %bmx.81, %if.then2787 ], [ %bmx.806400, %for.body2783 ]
  %568 = sub nsw i64 %557, %indvars.iv6542
  %cmp2817.not = icmp slt i64 %568, %560
  br i1 %cmp2817.not, label %for.inc2848, label %if.then2819

if.then2819:                                      ; preds = %if.end2815
  %569 = load ptr, ptr %arrayidx2792, align 8
  %570 = mul nsw i64 %568, %idx.ext1058
  %gep6621 = getelementptr i8, ptr %invariant.gep6620, i64 %570
  %call2830 = call i32 %569(ptr noundef %5, i32 noundef 16, ptr noundef %gep6621, i32 noundef %3) #6
  %571 = load i16, ptr %arrayidx2801, align 2
  %conv2834 = zext i16 %571 to i32
  %572 = trunc nsw i64 %568 to i32
  %shl2836 = shl i32 %572, 2
  %idxprom2837 = sext i32 %shl2836 to i64
  %arrayidx2838 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2837
  %573 = load i16, ptr %arrayidx2838, align 2
  %conv2839 = zext i16 %573 to i32
  %add2840 = add i32 %call2830, %conv2834
  %add2841 = add i32 %add2840, %conv2839
  %cmp2842 = icmp slt i32 %add2841, %bcost.106
  %bcost.107 = call i32 @llvm.smin.i32(i32 %add2841, i32 %bcost.106)
  %bmy.83 = select i1 %cmp2842, i32 %572, i32 %bmy.82
  %bmx.83 = select i1 %cmp2842, i32 %bmx.236221, i32 %bmx.82
  br label %for.inc2848

for.inc2848:                                      ; preds = %if.end2815, %if.then2819
  %bcost.108 = phi i32 [ %bcost.107, %if.then2819 ], [ %bcost.106, %if.end2815 ]
  %bmy.84 = phi i32 [ %bmy.83, %if.then2819 ], [ %bmy.82, %if.end2815 ]
  %bmx.84 = phi i32 [ %bmx.83, %if.then2819 ], [ %bmx.82, %if.end2815 ]
  %indvars.iv.next6543 = add nsw i64 %indvars.iv6542, 2
  %cmp2781 = icmp slt i64 %indvars.iv.next6543, %561
  br i1 %cmp2781, label %for.body2783, label %for.end2850

for.end2850:                                      ; preds = %for.inc2848, %if.end2778.for.end2850_crit_edge
  %idx.ext2852.pre-phi = phi i64 [ %.pre6578, %if.end2778.for.end2850_crit_edge ], [ %559, %for.inc2848 ]
  %bcost.104.lcssa = phi i32 [ %bcost.103, %if.end2778.for.end2850_crit_edge ], [ %bcost.108, %for.inc2848 ]
  %bmy.80.lcssa = phi i32 [ %bmy.79, %if.end2778.for.end2850_crit_edge ], [ %bmy.84, %for.inc2848 ]
  %bmx.80.lcssa = phi i32 [ %bmx.79, %if.end2778.for.end2850_crit_edge ], [ %bmx.84, %for.inc2848 ]
  %add.ptr2853 = getelementptr inbounds i8, ptr %6, i64 %idx.ext2852.pre-phi
  %mul2854 = mul nsw i32 %bmy.236219, %3
  %idx.ext2855 = sext i32 %mul2854 to i64
  %add.ptr2856 = getelementptr inbounds i8, ptr %add.ptr2853, i64 %idx.ext2855
  %574 = load ptr, ptr %arrayidx1051, align 8
  %add.ptr2861 = getelementptr inbounds i8, ptr %add.ptr2856, i64 -2
  %mul2862 = mul nsw i32 %3, -2
  %idx.ext2863 = sext i32 %mul2862 to i64
  %add.ptr2864 = getelementptr inbounds i8, ptr %add.ptr2861, i64 %idx.ext2863
  %mul2866 = shl nsw i32 %3, 1
  %idx.ext2867 = sext i32 %mul2866 to i64
  %add.ptr2868 = getelementptr inbounds i8, ptr %add.ptr2861, i64 %idx.ext2867
  %add.ptr2869 = getelementptr inbounds i8, ptr %add.ptr2856, i64 2
  %add.ptr2872 = getelementptr inbounds i8, ptr %add.ptr2869, i64 %idx.ext2863
  %add.ptr2876 = getelementptr inbounds i8, ptr %add.ptr2869, i64 %idx.ext2867
  call void %574(ptr noundef %5, ptr noundef nonnull %add.ptr2864, ptr noundef nonnull %add.ptr2868, ptr noundef nonnull %add.ptr2872, ptr noundef nonnull %add.ptr2876, i32 noundef %3, ptr noundef nonnull %costs) #6
  %add2878 = add nsw i32 %bmx.236221, -2
  %shl2879 = shl i32 %add2878, 2
  %idxprom2880 = sext i32 %shl2879 to i64
  %arrayidx2881 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2880
  %575 = load i16, ptr %arrayidx2881, align 2
  %conv2882 = zext i16 %575 to i32
  %add2883 = add nsw i32 %bmy.236219, -2
  %shl2884 = shl i32 %add2883, 2
  %idxprom2885 = sext i32 %shl2884 to i64
  %arrayidx2886 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2885
  %576 = load i16, ptr %arrayidx2886, align 2
  %conv2887 = zext i16 %576 to i32
  %add2888 = add nuw nsw i32 %conv2887, %conv2882
  %577 = load i32, ptr %costs, align 16
  %add2890 = add nsw i32 %add2888, %577
  store i32 %add2890, ptr %costs, align 16
  %578 = load i16, ptr %arrayidx2881, align 2
  %conv2895 = zext i16 %578 to i32
  %add2896 = add nsw i32 %bmy.236219, 2
  %shl2897 = shl i32 %add2896, 2
  %idxprom2898 = sext i32 %shl2897 to i64
  %arrayidx2899 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2898
  %579 = load i16, ptr %arrayidx2899, align 2
  %conv2900 = zext i16 %579 to i32
  %add2901 = add nuw nsw i32 %conv2900, %conv2895
  %580 = load i32, ptr %arrayidx1093, align 4
  %add2903 = add nsw i32 %add2901, %580
  store i32 %add2903, ptr %arrayidx1093, align 4
  %add2904 = add nsw i32 %bmx.236221, 2
  %shl2905 = shl i32 %add2904, 2
  %idxprom2906 = sext i32 %shl2905 to i64
  %arrayidx2907 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2906
  %581 = load i16, ptr %arrayidx2907, align 2
  %conv2908 = zext i16 %581 to i32
  %582 = load i16, ptr %arrayidx2886, align 2
  %conv2913 = zext i16 %582 to i32
  %add2914 = add nuw nsw i32 %conv2913, %conv2908
  %583 = load i32, ptr %arrayidx1106, align 8
  %add2916 = add nsw i32 %add2914, %583
  store i32 %add2916, ptr %arrayidx1106, align 8
  %584 = load i16, ptr %arrayidx2907, align 2
  %conv2921 = zext i16 %584 to i32
  %585 = load i16, ptr %arrayidx2899, align 2
  %conv2926 = zext i16 %585 to i32
  %add2927 = add nuw nsw i32 %conv2926, %conv2921
  %586 = load i32, ptr %arrayidx1119, align 4
  %add2929 = add nsw i32 %add2927, %586
  store i32 %add2929, ptr %arrayidx1119, align 4
  %cmp2931 = icmp slt i32 %add2890, %bcost.104.lcssa
  %bcost.109 = call i32 @llvm.smin.i32(i32 %add2890, i32 %bcost.104.lcssa)
  %bmy.85 = select i1 %cmp2931, i32 %add2883, i32 %bmy.80.lcssa
  %cmp2939 = icmp slt i32 %add2903, %bcost.109
  %bcost.110 = call i32 @llvm.smin.i32(i32 %add2903, i32 %bcost.109)
  %bmy.86 = select i1 %cmp2939, i32 %add2896, i32 %bmy.85
  %587 = or i1 %cmp2931, %cmp2939
  %bmx.86 = select i1 %587, i32 %add2878, i32 %bmx.80.lcssa
  %cmp2947 = icmp slt i32 %add2916, %bcost.110
  %bcost.111 = call i32 @llvm.smin.i32(i32 %add2916, i32 %bcost.110)
  %bmy.87 = select i1 %cmp2947, i32 %add2883, i32 %bmy.86
  %cmp2955 = icmp slt i32 %add2929, %bcost.111
  %bcost.112 = call i32 @llvm.smin.i32(i32 %add2929, i32 %bcost.111)
  %bmy.88 = select i1 %cmp2955, i32 %add2896, i32 %bmy.87
  %588 = or i1 %cmp2947, %cmp2955
  %bmx.88 = select i1 %588, i32 %add2904, i32 %bmx.86
  %mul2962 = shl nsw i32 %bmx.88, 2
  %idx.ext2963 = sext i32 %mul2962 to i64
  %add.ptr2964 = getelementptr inbounds i16, ptr %add.ptr, i64 %idx.ext2963
  %mul2965 = shl nsw i32 %bmy.88, 2
  %idx.ext2966 = sext i32 %mul2965 to i64
  %add.ptr2967 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idx.ext2966
  %sub2971 = sub nsw i32 %11, %bmx.88
  %sub2972 = sub nsw i32 %bmx.88, %9
  %sub2973 = sub nsw i32 %12, %bmy.88
  %sub2974 = sub nsw i32 %bmy.88, %10
  %sub2973.sub2974 = call i32 @llvm.smin.i32(i32 %sub2973, i32 %sub2974)
  %cond2999 = call i32 @llvm.smin.i32(i32 %sub2972, i32 %sub2973.sub2974)
  %cond3034 = call i32 @llvm.smin.i32(i32 %sub2971, i32 %cond2999)
  %idx.ext3101 = sext i32 %bmx.88 to i64
  %add.ptr3102 = getelementptr inbounds i8, ptr %6, i64 %idx.ext3101
  %add.ptr3174 = getelementptr inbounds i8, ptr %costs, i64 16
  %add.ptr3209 = getelementptr inbounds i8, ptr %costs, i64 32
  %add.ptr3244 = getelementptr inbounds i8, ptr %costs, i64 48
  %arrayidx3312 = getelementptr inbounds i8, ptr %costs, i64 20
  %arrayidx3323 = getelementptr inbounds i8, ptr %costs, i64 24
  %arrayidx3334 = getelementptr inbounds i8, ptr %costs, i64 28
  %arrayidx3356 = getelementptr inbounds i8, ptr %costs, i64 36
  %arrayidx3367 = getelementptr inbounds i8, ptr %costs, i64 40
  %arrayidx3378 = getelementptr inbounds i8, ptr %costs, i64 44
  %arrayidx3400 = getelementptr inbounds i8, ptr %costs, i64 52
  %arrayidx3411 = getelementptr inbounds i8, ptr %costs, i64 56
  %arrayidx3422 = getelementptr inbounds i8, ptr %costs, i64 60
  %fpelcmp3071 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx3073 = getelementptr inbounds [7 x ptr], ptr %fpelcmp3071, i64 0, i64 %idxprom
  %shr3533 = ashr i32 %i_me_range.1, 2
  %589 = sext i32 %bmy.88 to i64
  %590 = sext i32 %cond3034 to i64
  %591 = mul nsw i64 %589, %idx.ext1058
  %592 = getelementptr i8, ptr %6, i64 %591
  %scevgep = getelementptr i8, ptr %592, i64 %idx.ext3101
  %smax6572 = call i32 @llvm.smax.i32(i32 %shr3533, i32 1)
  %593 = add nuw nsw i32 %smax6572, 1
  %wide.trip.count6573 = zext nneg i32 %593 to i64
  br label %do.body2969

do.body2969:                                      ; preds = %do.cond3531, %for.end2850
  %indvars.iv6555 = phi i64 [ %indvars.iv.next6556, %do.cond3531 ], [ 1, %for.end2850 ]
  %bcost.113 = phi i32 [ %bcost.133, %do.cond3531 ], [ %bcost.112, %for.end2850 ]
  %bmy.89 = phi i32 [ %bmy.94, %do.cond3531 ], [ %bmy.88, %for.end2850 ]
  %bmx.89 = phi i32 [ %bmx.94, %do.cond3531 ], [ %bmx.88, %for.end2850 ]
  %594 = shl nsw i64 %indvars.iv6555, 2
  %cmp3035 = icmp sgt i64 %594, %590
  br i1 %cmp3035, label %for.body3042.preheader, label %if.else3098

for.body3042.preheader:                           ; preds = %do.body2969
  %595 = trunc nuw nsw i64 %indvars.iv6555 to i32
  br label %for.body3042

for.body3042:                                     ; preds = %for.body3042.preheader, %if.end3093
  %indvars.iv6551 = phi i64 [ 0, %for.body3042.preheader ], [ %indvars.iv.next6552, %if.end3093 ]
  %bmx.906407 = phi i32 [ %bmx.89, %for.body3042.preheader ], [ %bmx.92, %if.end3093 ]
  %bmy.906406 = phi i32 [ %bmy.89, %for.body3042.preheader ], [ %bmy.92, %if.end3093 ]
  %bcost.1146405 = phi i32 [ %bcost.113, %for.body3042.preheader ], [ %bcost.116, %if.end3093 ]
  %arrayidx3045 = getelementptr inbounds [16 x [2 x i8]], ptr @x264_me_search_ref.hex4, i64 0, i64 %indvars.iv6551
  %596 = load i8, ptr %arrayidx3045, align 2
  %conv3047 = sext i8 %596 to i32
  %mul3048 = mul nsw i32 %595, %conv3047
  %add3049 = add nsw i32 %mul3048, %bmx.88
  %arrayidx3053 = getelementptr inbounds i8, ptr %arrayidx3045, i64 1
  %597 = load i8, ptr %arrayidx3053, align 1
  %conv3054 = sext i8 %597 to i32
  %mul3055 = mul nsw i32 %595, %conv3054
  %add3056 = add nsw i32 %mul3055, %bmy.88
  %shl3057 = shl i32 %add3049, 16
  %and3058 = and i32 %add3056, 32767
  %or3059 = or disjoint i32 %and3058, %shl3057
  %add3060 = add i32 %or3059, %or
  %sub3064 = sub i32 %or29, %or3059
  %or3065 = or i32 %add3060, %sub3064
  %and3066 = and i32 %or3065, -2147467264
  %tobool3067.not = icmp eq i32 %and3066, 0
  br i1 %tobool3067.not, label %if.then3068, label %if.end3093

if.then3068:                                      ; preds = %for.body3042
  %598 = load ptr, ptr %arrayidx3073, align 8
  %mul3074 = mul nsw i32 %add3056, %3
  %add3075 = add nsw i32 %mul3074, %add3049
  %idxprom3076 = sext i32 %add3075 to i64
  %arrayidx3077 = getelementptr inbounds i8, ptr %6, i64 %idxprom3076
  %call3078 = call i32 %598(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx3077, i32 noundef %3) #6
  %shl3079 = shl i32 %add3049, 2
  %idxprom3080 = sext i32 %shl3079 to i64
  %arrayidx3081 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom3080
  %599 = load i16, ptr %arrayidx3081, align 2
  %conv3082 = zext i16 %599 to i32
  %shl3083 = shl i32 %add3056, 2
  %idxprom3084 = sext i32 %shl3083 to i64
  %arrayidx3085 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom3084
  %600 = load i16, ptr %arrayidx3085, align 2
  %conv3086 = zext i16 %600 to i32
  %add3087 = add i32 %call3078, %conv3082
  %add3088 = add i32 %add3087, %conv3086
  %cmp3089 = icmp slt i32 %add3088, %bcost.1146405
  %bcost.115 = call i32 @llvm.smin.i32(i32 %add3088, i32 %bcost.1146405)
  %bmy.91 = select i1 %cmp3089, i32 %add3056, i32 %bmy.906406
  %bmx.91 = select i1 %cmp3089, i32 %add3049, i32 %bmx.906407
  br label %if.end3093

if.end3093:                                       ; preds = %if.then3068, %for.body3042
  %bcost.116 = phi i32 [ %bcost.1146405, %for.body3042 ], [ %bcost.115, %if.then3068 ]
  %bmy.92 = phi i32 [ %bmy.906406, %for.body3042 ], [ %bmy.91, %if.then3068 ]
  %bmx.92 = phi i32 [ %bmx.906407, %for.body3042 ], [ %bmx.91, %if.then3068 ]
  %indvars.iv.next6552 = add nuw nsw i64 %indvars.iv6551, 1
  %exitcond6554.not = icmp eq i64 %indvars.iv.next6552, 16
  br i1 %exitcond6554.not, label %do.cond3531, label %for.body3042

if.else3098:                                      ; preds = %do.body2969
  %601 = sub nsw i64 %589, %594
  %602 = mul nsw i64 %601, %idx.ext1058
  %add.ptr3107 = getelementptr inbounds i8, ptr %add.ptr3102, i64 %602
  %603 = mul nsw i64 %indvars.iv6555, %idx.ext1058
  %604 = load ptr, ptr %arrayidx1051, align 8
  %605 = shl nsw i64 %603, 3
  %add.ptr3124 = getelementptr inbounds i8, ptr %add.ptr3107, i64 %605
  %606 = shl nuw nsw i64 %indvars.iv6555, 1
  %idx.neg3127 = sub nsw i64 0, %606
  %add.ptr3128 = getelementptr inbounds i8, ptr %add.ptr3107, i64 %idx.neg3127
  %add.ptr3131 = getelementptr inbounds i8, ptr %add.ptr3128, i64 %603
  %add.ptr3134 = getelementptr inbounds i8, ptr %add.ptr3107, i64 %606
  %add.ptr3137 = getelementptr inbounds i8, ptr %add.ptr3134, i64 %603
  call void %604(ptr noundef %5, ptr noundef %add.ptr3107, ptr noundef %add.ptr3124, ptr noundef nonnull %add.ptr3131, ptr noundef nonnull %add.ptr3137, i32 noundef %3, ptr noundef nonnull %costs) #6
  %607 = shl nsw i64 %603, 1
  %add.ptr3142 = getelementptr inbounds i8, ptr %add.ptr3107, i64 %607
  %608 = load ptr, ptr %arrayidx1051, align 8
  %idx.neg3149 = sub nsw i64 0, %594
  %add.ptr3150 = getelementptr inbounds i8, ptr %add.ptr3142, i64 %idx.neg3149
  %add.ptr3156 = getelementptr inbounds i8, ptr %add.ptr3142, i64 %594
  %add.ptr3166 = getelementptr inbounds i8, ptr %add.ptr3150, i64 %603
  %add.ptr3172 = getelementptr inbounds i8, ptr %add.ptr3156, i64 %603
  call void %608(ptr noundef %5, ptr noundef nonnull %add.ptr3150, ptr noundef nonnull %add.ptr3156, ptr noundef nonnull %add.ptr3166, ptr noundef nonnull %add.ptr3172, i32 noundef %3, ptr noundef nonnull %add.ptr3174) #6
  %609 = load ptr, ptr %arrayidx1051, align 8
  %add.ptr3185 = getelementptr inbounds i8, ptr %scevgep, i64 %idx.neg3149
  %add.ptr3191 = getelementptr inbounds i8, ptr %scevgep, i64 %594
  %add.ptr3201 = getelementptr inbounds i8, ptr %add.ptr3185, i64 %603
  %add.ptr3207 = getelementptr inbounds i8, ptr %add.ptr3191, i64 %603
  call void %609(ptr noundef %5, ptr noundef nonnull %add.ptr3185, ptr noundef nonnull %add.ptr3191, ptr noundef nonnull %add.ptr3201, ptr noundef nonnull %add.ptr3207, i32 noundef %3, ptr noundef nonnull %add.ptr3209) #6
  %add.ptr3212 = getelementptr inbounds i8, ptr %scevgep, i64 %607
  %610 = load ptr, ptr %arrayidx1051, align 8
  %add.ptr3220 = getelementptr inbounds i8, ptr %add.ptr3212, i64 %idx.neg3149
  %add.ptr3226 = getelementptr inbounds i8, ptr %add.ptr3212, i64 %594
  %add.ptr3233 = getelementptr inbounds i8, ptr %add.ptr3212, i64 %idx.neg3127
  %add.ptr3236 = getelementptr inbounds i8, ptr %add.ptr3233, i64 %603
  %add.ptr3239 = getelementptr inbounds i8, ptr %add.ptr3212, i64 %606
  %add.ptr3242 = getelementptr inbounds i8, ptr %add.ptr3239, i64 %603
  call void %610(ptr noundef %5, ptr noundef nonnull %add.ptr3220, ptr noundef nonnull %add.ptr3226, ptr noundef nonnull %add.ptr3236, ptr noundef nonnull %add.ptr3242, i32 noundef %3, ptr noundef nonnull %add.ptr3244) #6
  %611 = load i16, ptr %add.ptr2964, align 2
  %conv3251 = zext i16 %611 to i32
  %612 = mul nsw i64 %indvars.iv6555, -16
  %arrayidx3254 = getelementptr inbounds i16, ptr %add.ptr2967, i64 %612
  %613 = load i16, ptr %arrayidx3254, align 2
  %conv3255 = zext i16 %613 to i32
  %add3256 = add nuw nsw i32 %conv3255, %conv3251
  %614 = load i32, ptr %costs, align 16
  %add3258 = add nsw i32 %add3256, %614
  store i32 %add3258, ptr %costs, align 16
  %615 = load i16, ptr %add.ptr2964, align 2
  %conv3262 = zext i16 %615 to i32
  %616 = shl nsw i64 %indvars.iv6555, 4
  %arrayidx3265 = getelementptr inbounds i16, ptr %add.ptr2967, i64 %616
  %617 = load i16, ptr %arrayidx3265, align 2
  %conv3266 = zext i16 %617 to i32
  %add3267 = add nuw nsw i32 %conv3266, %conv3262
  %618 = load i32, ptr %arrayidx1093, align 4
  %add3269 = add nsw i32 %add3267, %618
  store i32 %add3269, ptr %arrayidx1093, align 4
  %619 = mul nsw i64 %indvars.iv6555, -8
  %arrayidx3272 = getelementptr inbounds i16, ptr %add.ptr2964, i64 %619
  %620 = load i16, ptr %arrayidx3272, align 2
  %conv3273 = zext i16 %620 to i32
  %arrayidx3276.idx = mul i64 %indvars.iv6555, -24
  %arrayidx3276 = getelementptr inbounds i8, ptr %add.ptr2967, i64 %arrayidx3276.idx
  %621 = load i16, ptr %arrayidx3276, align 2
  %conv3277 = zext i16 %621 to i32
  %add3278 = add nuw nsw i32 %conv3277, %conv3273
  %622 = load i32, ptr %arrayidx1106, align 8
  %add3280 = add nsw i32 %add3278, %622
  store i32 %add3280, ptr %arrayidx1106, align 8
  %623 = shl nsw i64 %indvars.iv6555, 3
  %arrayidx3283 = getelementptr inbounds i16, ptr %add.ptr2964, i64 %623
  %624 = load i16, ptr %arrayidx3283, align 2
  %conv3284 = zext i16 %624 to i32
  %625 = load i16, ptr %arrayidx3276, align 2
  %conv3288 = zext i16 %625 to i32
  %add3289 = add nuw nsw i32 %conv3288, %conv3284
  %626 = load i32, ptr %arrayidx1119, align 4
  %add3291 = add nsw i32 %add3289, %626
  store i32 %add3291, ptr %arrayidx1119, align 4
  %arrayidx3294 = getelementptr inbounds i16, ptr %add.ptr2964, i64 %612
  %627 = load i16, ptr %arrayidx3294, align 2
  %conv3295 = zext i16 %627 to i32
  %arrayidx3298 = getelementptr inbounds i16, ptr %add.ptr2967, i64 %619
  %628 = load i16, ptr %arrayidx3298, align 2
  %conv3299 = zext i16 %628 to i32
  %add3300 = add nuw nsw i32 %conv3299, %conv3295
  %629 = load i32, ptr %add.ptr3174, align 16
  %add3302 = add nsw i32 %add3300, %629
  store i32 %add3302, ptr %add.ptr3174, align 16
  %arrayidx3305 = getelementptr inbounds i16, ptr %add.ptr2964, i64 %616
  %630 = load i16, ptr %arrayidx3305, align 2
  %conv3306 = zext i16 %630 to i32
  %631 = load i16, ptr %arrayidx3298, align 2
  %conv3310 = zext i16 %631 to i32
  %add3311 = add nuw nsw i32 %conv3310, %conv3306
  %632 = load i32, ptr %arrayidx3312, align 4
  %add3313 = add nsw i32 %add3311, %632
  store i32 %add3313, ptr %arrayidx3312, align 4
  %633 = load i16, ptr %arrayidx3294, align 2
  %conv3317 = zext i16 %633 to i32
  %arrayidx3320.idx = mul i64 %indvars.iv6555, -8
  %arrayidx3320 = getelementptr inbounds i8, ptr %add.ptr2967, i64 %arrayidx3320.idx
  %634 = load i16, ptr %arrayidx3320, align 2
  %conv3321 = zext i16 %634 to i32
  %add3322 = add nuw nsw i32 %conv3321, %conv3317
  %635 = load i32, ptr %arrayidx3323, align 8
  %add3324 = add nsw i32 %add3322, %635
  store i32 %add3324, ptr %arrayidx3323, align 8
  %636 = load i16, ptr %arrayidx3305, align 2
  %conv3328 = zext i16 %636 to i32
  %637 = load i16, ptr %arrayidx3320, align 2
  %conv3332 = zext i16 %637 to i32
  %add3333 = add nuw nsw i32 %conv3332, %conv3328
  %638 = load i32, ptr %arrayidx3334, align 4
  %add3335 = add nsw i32 %add3333, %638
  store i32 %add3335, ptr %arrayidx3334, align 4
  %639 = load i16, ptr %arrayidx3294, align 2
  %conv3339 = zext i16 %639 to i32
  %640 = load i16, ptr %add.ptr2967, align 2
  %conv3343 = zext i16 %640 to i32
  %add3344 = add nuw nsw i32 %conv3343, %conv3339
  %641 = load i32, ptr %add.ptr3209, align 16
  %add3346 = add nsw i32 %add3344, %641
  store i32 %add3346, ptr %add.ptr3209, align 16
  %642 = load i16, ptr %arrayidx3305, align 2
  %conv3350 = zext i16 %642 to i32
  %643 = load i16, ptr %add.ptr2967, align 2
  %conv3354 = zext i16 %643 to i32
  %add3355 = add nuw nsw i32 %conv3354, %conv3350
  %644 = load i32, ptr %arrayidx3356, align 4
  %add3357 = add nsw i32 %add3355, %644
  store i32 %add3357, ptr %arrayidx3356, align 4
  %645 = load i16, ptr %arrayidx3294, align 2
  %conv3361 = zext i16 %645 to i32
  %arrayidx3364 = getelementptr inbounds i16, ptr %add.ptr2967, i64 %594
  %646 = load i16, ptr %arrayidx3364, align 2
  %conv3365 = zext i16 %646 to i32
  %add3366 = add nuw nsw i32 %conv3365, %conv3361
  %647 = load i32, ptr %arrayidx3367, align 8
  %add3368 = add nsw i32 %add3366, %647
  store i32 %add3368, ptr %arrayidx3367, align 8
  %648 = load i16, ptr %arrayidx3305, align 2
  %conv3372 = zext i16 %648 to i32
  %649 = load i16, ptr %arrayidx3364, align 2
  %conv3376 = zext i16 %649 to i32
  %add3377 = add nuw nsw i32 %conv3376, %conv3372
  %650 = load i32, ptr %arrayidx3378, align 4
  %add3379 = add nsw i32 %add3377, %650
  store i32 %add3379, ptr %arrayidx3378, align 4
  %651 = load i16, ptr %arrayidx3294, align 2
  %conv3383 = zext i16 %651 to i32
  %arrayidx3386 = getelementptr inbounds i16, ptr %add.ptr2967, i64 %623
  %652 = load i16, ptr %arrayidx3386, align 2
  %conv3387 = zext i16 %652 to i32
  %add3388 = add nuw nsw i32 %conv3387, %conv3383
  %653 = load i32, ptr %add.ptr3244, align 16
  %add3390 = add nsw i32 %add3388, %653
  store i32 %add3390, ptr %add.ptr3244, align 16
  %654 = load i16, ptr %arrayidx3305, align 2
  %conv3394 = zext i16 %654 to i32
  %655 = load i16, ptr %arrayidx3386, align 2
  %conv3398 = zext i16 %655 to i32
  %add3399 = add nuw nsw i32 %conv3398, %conv3394
  %656 = load i32, ptr %arrayidx3400, align 4
  %add3401 = add nsw i32 %add3399, %656
  store i32 %add3401, ptr %arrayidx3400, align 4
  %657 = load i16, ptr %arrayidx3272, align 2
  %conv3405 = zext i16 %657 to i32
  %arrayidx3408.idx = mul i64 %indvars.iv6555, 24
  %arrayidx3408 = getelementptr inbounds i8, ptr %add.ptr2967, i64 %arrayidx3408.idx
  %658 = load i16, ptr %arrayidx3408, align 2
  %conv3409 = zext i16 %658 to i32
  %add3410 = add nuw nsw i32 %conv3409, %conv3405
  %659 = load i32, ptr %arrayidx3411, align 8
  %add3412 = add nsw i32 %add3410, %659
  store i32 %add3412, ptr %arrayidx3411, align 8
  %660 = load i16, ptr %arrayidx3283, align 2
  %conv3416 = zext i16 %660 to i32
  %661 = load i16, ptr %arrayidx3408, align 2
  %conv3420 = zext i16 %661 to i32
  %add3421 = add nuw nsw i32 %conv3420, %conv3416
  %662 = load i32, ptr %arrayidx3422, align 4
  %add3423 = add nsw i32 %add3421, %662
  store i32 %add3423, ptr %arrayidx3422, align 4
  %cmp3425 = icmp slt i32 %add3258, %bcost.113
  %spec.select6184 = select i1 %cmp3425, i32 12, i32 0
  %spec.select6185 = call i32 @llvm.smin.i32(i32 %add3258, i32 %bcost.113)
  %cmp3431 = icmp slt i32 %add3269, %spec.select6185
  %dir3099.1 = select i1 %cmp3431, i32 4, i32 %spec.select6184
  %bcost.118 = call i32 @llvm.smin.i32(i32 %add3269, i32 %spec.select6185)
  %cmp3437 = icmp slt i32 %add3280, %bcost.118
  %dir3099.2 = select i1 %cmp3437, i32 -19, i32 %dir3099.1
  %bcost.119 = call i32 @llvm.smin.i32(i32 %add3280, i32 %bcost.118)
  %cmp3443 = icmp slt i32 %add3291, %bcost.119
  %dir3099.3 = select i1 %cmp3443, i32 45, i32 %dir3099.2
  %bcost.120 = call i32 @llvm.smin.i32(i32 %add3291, i32 %bcost.119)
  %cmp3449 = icmp slt i32 %add3302, %bcost.120
  %dir3099.4 = select i1 %cmp3449, i32 -50, i32 %dir3099.3
  %bcost.121 = call i32 @llvm.smin.i32(i32 %add3302, i32 %bcost.120)
  %cmp3455 = icmp slt i32 %add3313, %bcost.121
  %dir3099.5 = select i1 %cmp3455, i32 78, i32 %dir3099.4
  %bcost.122 = call i32 @llvm.smin.i32(i32 %add3313, i32 %bcost.121)
  %cmp3461 = icmp slt i32 %add3324, %bcost.122
  %dir3099.6 = select i1 %cmp3461, i32 -49, i32 %dir3099.5
  %bcost.123 = call i32 @llvm.smin.i32(i32 %add3324, i32 %bcost.122)
  %cmp3467 = icmp slt i32 %add3335, %bcost.123
  %dir3099.7 = select i1 %cmp3467, i32 79, i32 %dir3099.6
  %bcost.124 = call i32 @llvm.smin.i32(i32 %add3335, i32 %bcost.123)
  %cmp3473 = icmp slt i32 %add3346, %bcost.124
  %dir3099.8 = select i1 %cmp3473, i32 -64, i32 %dir3099.7
  %bcost.125 = call i32 @llvm.smin.i32(i32 %add3346, i32 %bcost.124)
  %cmp3479 = icmp slt i32 %add3357, %bcost.125
  %dir3099.9 = select i1 %cmp3479, i32 64, i32 %dir3099.8
  %bcost.126 = call i32 @llvm.smin.i32(i32 %add3357, i32 %bcost.125)
  %cmp3485 = icmp slt i32 %add3368, %bcost.126
  %dir3099.10 = select i1 %cmp3485, i32 -63, i32 %dir3099.9
  %bcost.127 = call i32 @llvm.smin.i32(i32 %add3368, i32 %bcost.126)
  %cmp3491 = icmp slt i32 %add3379, %bcost.127
  %dir3099.11 = select i1 %cmp3491, i32 65, i32 %dir3099.10
  %bcost.128 = call i32 @llvm.smin.i32(i32 %add3379, i32 %bcost.127)
  %cmp3497 = icmp slt i32 %add3390, %bcost.128
  %dir3099.12 = select i1 %cmp3497, i32 -62, i32 %dir3099.11
  %bcost.129 = call i32 @llvm.smin.i32(i32 %add3390, i32 %bcost.128)
  %cmp3503 = icmp slt i32 %add3401, %bcost.129
  %dir3099.13 = select i1 %cmp3503, i32 66, i32 %dir3099.12
  %bcost.130 = call i32 @llvm.smin.i32(i32 %add3401, i32 %bcost.129)
  %cmp3509 = icmp slt i32 %add3412, %bcost.130
  %dir3099.14 = select i1 %cmp3509, i32 -29, i32 %dir3099.13
  %bcost.131 = call i32 @llvm.smin.i32(i32 %add3412, i32 %bcost.130)
  %cmp3515 = icmp slt i32 %add3423, %bcost.131
  %dir3099.15 = select i1 %cmp3515, i32 35, i32 %dir3099.14
  %bcost.132 = call i32 @llvm.smin.i32(i32 %add3423, i32 %bcost.131)
  %tobool3520.not = icmp eq i32 %dir3099.15, 0
  br i1 %tobool3520.not, label %do.cond3531, label %if.then3521

if.then3521:                                      ; preds = %if.else3098
  %shr3522 = ashr i32 %dir3099.15, 4
  %663 = trunc nuw nsw i64 %indvars.iv6555 to i32
  %mul3523 = mul nsw i32 %shr3522, %663
  %add3524 = add nsw i32 %mul3523, %bmx.88
  %shl3525 = shl i32 %dir3099.15, 28
  %shr3526 = ashr exact i32 %shl3525, 28
  %mul3527 = mul nsw i32 %shr3526, %663
  %add3528 = add nsw i32 %mul3527, %bmy.88
  br label %do.cond3531

do.cond3531:                                      ; preds = %if.end3093, %if.else3098, %if.then3521
  %bcost.133 = phi i32 [ %bcost.132, %if.then3521 ], [ %bcost.132, %if.else3098 ], [ %bcost.116, %if.end3093 ]
  %bmy.94 = phi i32 [ %add3528, %if.then3521 ], [ %bmy.89, %if.else3098 ], [ %bmy.92, %if.end3093 ]
  %bmx.94 = phi i32 [ %add3524, %if.then3521 ], [ %bmx.89, %if.else3098 ], [ %bmx.92, %if.end3093 ]
  %indvars.iv.next6556 = add nuw nsw i64 %indvars.iv6555, 1
  %exitcond6574.not = icmp eq i64 %indvars.iv.next6556, %wide.trip.count6573
  br i1 %exitcond6574.not, label %cleanup3553, label %do.body2969

cleanup3553:                                      ; preds = %do.cond3531
  %cmp3537.not = icmp sle i32 %bmy.94, %12
  %cmp3540.not = icmp sge i32 %bmy.94, %10
  %or.cond6186.not6241 = select i1 %cmp3537.not, i1 %cmp3540.not, i1 false
  %cmp3543.not = icmp sle i32 %bmx.94, %11
  %or.cond6187.not6240 = select i1 %or.cond6186.not6241, i1 %cmp3543.not, i1 false
  %cmp3546.not = icmp sge i32 %bmx.94, %9
  %or.cond6188.not = select i1 %or.cond6187.not6240, i1 %cmp3546.not, i1 false
  br i1 %or.cond6188.not, label %me_hex2, label %sw.epilog

sw.bb3557:                                        ; preds = %if.end264, %if.end264
  %sub3558 = sub nsw i32 %bmx.4, %4
  %cond3565 = call i32 @llvm.smax.i32(i32 %sub3558, i32 %9)
  %sub3566 = sub i32 %bmy.4, %4
  %cond3573 = call i32 @llvm.smax.i32(i32 %sub3566, i32 %10)
  %add3574 = add nsw i32 %bmx.4, %4
  %cond3581 = call i32 @llvm.smin.i32(i32 %add3574, i32 %11)
  %add3582 = add i32 %bmy.4, %4
  %cond3589 = call i32 @llvm.smin.i32(i32 %add3582, i32 %12)
  %reass.sub = sub i32 %cond3581, %cond3565
  %add3591 = add i32 %reass.sub, 3
  %and3592 = and i32 %add3591, -4
  %integral = getelementptr inbounds i8, ptr %m, i64 112
  %664 = load ptr, ptr %integral, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %enc_dc) #6
  %cmp3593.inv = icmp sgt i32 %0, 3
  %cond3595 = select i1 %cmp3593.inv, i64 6, i64 3
  %arrayidx3597 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %cond3595
  %665 = load i32, ptr %arrayidx3597, align 8
  %scratch_buffer = getelementptr inbounds i8, ptr %h, i64 31176
  %666 = load ptr, ptr %scratch_buffer, align 8
  %cost_mv_fpel = getelementptr inbounds i8, ptr %h, i64 4272
  %i_qp = getelementptr inbounds i8, ptr %h, i64 25792
  %667 = load i32, ptr %i_qp, align 16
  %idxprom3600 = sext i32 %667 to i64
  %arrayidx3601 = getelementptr inbounds [52 x i8], ptr @x264_lambda_tab, i64 0, i64 %idxprom3600
  %668 = load i8, ptr %arrayidx3601, align 1
  %idxprom3602 = zext i8 %668 to i64
  %669 = load i16, ptr %mvp, align 16
  %conv3606 = sext i16 %669 to i32
  %sub3607 = sub nsw i32 0, %conv3606
  %and3608 = and i32 %sub3607, 3
  %idxprom3609 = zext nneg i32 %and3608 to i64
  %arrayidx3610 = getelementptr inbounds [92 x [4 x ptr]], ptr %cost_mv_fpel, i64 0, i64 %idxprom3602, i64 %idxprom3609
  %670 = load ptr, ptr %arrayidx3610, align 8
  %shr3615 = ashr i32 %sub3607, 2
  %idx.ext3616 = sext i32 %shr3615 to i64
  %add.ptr3617 = getelementptr inbounds i16, ptr %670, i64 %idx.ext3616
  %pixf3618 = getelementptr inbounds i8, ptr %h, i64 31560
  %sad_x4 = getelementptr inbounds i8, ptr %h, i64 32296
  %arrayidx3620 = getelementptr inbounds [7 x ptr], ptr %sad_x4, i64 0, i64 %cond3595
  %671 = load ptr, ptr %arrayidx3620, align 8
  %idx.ext3621 = sext i32 %665 to i64
  %add.ptr3622 = getelementptr inbounds i8, ptr %5, i64 %idx.ext3621
  %mul3623 = shl nsw i32 %665, 4
  %idx.ext3624 = sext i32 %mul3623 to i64
  %add.ptr3625 = getelementptr inbounds i8, ptr %5, i64 %idx.ext3624
  %add.ptr3630 = getelementptr inbounds i8, ptr %add.ptr3622, i64 %idx.ext3624
  call void %671(ptr noundef nonnull @x264_me_search_ref.zero, ptr noundef %5, ptr noundef %add.ptr3622, ptr noundef %add.ptr3625, ptr noundef %add.ptr3630, i32 noundef 16, ptr noundef nonnull %enc_dc) #6
  %cmp3632 = icmp eq i32 %665, 4
  br i1 %cmp3632, label %if.then3634, label %if.end3640

if.then3634:                                      ; preds = %sw.bb3557
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %672 = load ptr, ptr %fenc, align 8
  %i_lines = getelementptr inbounds i8, ptr %672, i64 128
  %673 = load i32, ptr %i_lines, align 16
  %add3636 = add nsw i32 %673, 64
  %mul3637 = mul nsw i32 %add3636, %3
  %idx.ext3638 = sext i32 %mul3637 to i64
  %add.ptr3639 = getelementptr inbounds i16, ptr %664, i64 %idx.ext3638
  br label %if.end3640

if.end3640:                                       ; preds = %if.then3634, %sw.bb3557
  %sums_base.0 = phi ptr [ %add.ptr3639, %if.then3634 ], [ %664, %sw.bb3557 ]
  switch i32 %0, label %if.end3650 [
    i32 5, label %if.then3648
    i32 2, label %if.then3648
    i32 0, label %if.then3648
  ]

if.then3648:                                      ; preds = %if.end3640, %if.end3640, %if.end3640
  %mul3649 = mul nsw i32 %665, %3
  br label %if.end3650

if.end3650:                                       ; preds = %if.end3640, %if.then3648
  %delta.0 = phi i32 [ %mul3649, %if.then3648 ], [ %665, %if.end3640 ]
  switch i32 %0, label %if.end3659 [
    i32 5, label %if.then3656
    i32 2, label %if.then3656
  ]

if.then3656:                                      ; preds = %if.end3650, %if.end3650
  %arrayidx3657 = getelementptr inbounds i8, ptr %enc_dc, i64 8
  %674 = load i32, ptr %arrayidx3657, align 8
  %arrayidx3658 = getelementptr inbounds i8, ptr %enc_dc, i64 4
  store i32 %674, ptr %arrayidx3658, align 4
  br label %if.end3659

if.end3659:                                       ; preds = %if.end3650, %if.then3656
  %675 = load i32, ptr %i_me_method, align 4
  %cmp3662 = icmp eq i32 %675, 4
  br i1 %cmp3662, label %if.then3664, label %for.cond4015.preheader

for.cond4015.preheader:                           ; preds = %if.end3659
  %cmp4016.not6275 = icmp sgt i32 %cond3573, %cond3589
  br i1 %cmp4016.not6275, label %if.end4202, label %for.body4019.lr.ph

for.body4019.lr.ph:                               ; preds = %for.cond4015.preheader
  %ads4032 = getelementptr inbounds i8, ptr %h, i64 32464
  %arrayidx4034 = getelementptr inbounds [7 x ptr], ptr %ads4032, i64 0, i64 %idxprom
  %idx.ext4036 = sext i32 %cond3565 to i64
  %add.ptr4037 = getelementptr inbounds i16, ptr %sums_base.0, i64 %idx.ext4036
  %add.ptr4042 = getelementptr inbounds i16, ptr %add.ptr3617, i64 %idx.ext4036
  %fpelcmp_x34050 = getelementptr inbounds i8, ptr %h, i64 31984
  %arrayidx4052 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x34050, i64 0, i64 %idxprom
  %arrayidx4102 = getelementptr inbounds i8, ptr %costs, i64 4
  %arrayidx4113 = getelementptr inbounds i8, ptr %costs, i64 8
  %fpelcmp4157 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx4159 = getelementptr inbounds [7 x ptr], ptr %fpelcmp4157, i64 0, i64 %idxprom
  %676 = call i32 @llvm.smax.i32(i32 %10, i32 %sub3566)
  %smax = sext i32 %676 to i64
  %677 = sext i32 %3 to i64
  %678 = add i32 %cond3589, %676
  %679 = add i32 %678, 1
  %680 = sub i32 %679, %cond3573
  br label %for.body4019

if.then3664:                                      ; preds = %if.end3659
  %add3665 = add nsw i32 %and3592, 15
  %and3666 = and i32 %add3665, -16
  %idx.ext3667 = sext i32 %and3666 to i64
  %add.ptr3668 = getelementptr inbounds i16, ptr %666, i64 %idx.ext3667
  %cmp3669 = icmp slt i32 %4, 17
  %cmp3673 = icmp slt i32 %4, 25
  %cond3675 = select i1 %cmp3673, i32 11, i32 12
  %cond3677 = select i1 %cmp3669, i32 10, i32 %cond3675
  %arrayidx3680 = getelementptr inbounds [7 x ptr], ptr %pixf3618, i64 0, i64 %idxprom
  %681 = load ptr, ptr %arrayidx3680, align 8
  %mul3681 = mul nsw i32 %bmy.4, %3
  %idx.ext3682 = sext i32 %mul3681 to i64
  %add.ptr3683 = getelementptr inbounds i8, ptr %6, i64 %idx.ext3682
  %idx.ext3684 = sext i32 %bmx.4 to i64
  %add.ptr3685 = getelementptr inbounds i8, ptr %add.ptr3683, i64 %idx.ext3684
  %call3686 = call i32 %681(ptr noundef %5, i32 noundef 16, ptr noundef %add.ptr3685, i32 noundef %3) #6
  %shl3687 = shl nsw i32 %bmx.4, 2
  %idxprom3688 = sext i32 %shl3687 to i64
  %arrayidx3689 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom3688
  %682 = load i16, ptr %arrayidx3689, align 2
  %conv3690 = zext i16 %682 to i32
  %shl3691 = shl nsw i32 %bmy.4, 2
  %idxprom3692 = sext i32 %shl3691 to i64
  %arrayidx3693 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom3692
  %683 = load i16, ptr %arrayidx3693, align 2
  %conv3694 = zext i16 %683 to i32
  %add3695 = add i32 %call3686, %conv3690
  %add3696 = add i32 %add3695, %conv3694
  %cmp3699.not6302 = icmp sgt i32 %cond3573, %cond3589
  br i1 %cmp3699.not6302, label %for.cond.cleanup3701, label %for.body3702.lr.ph

for.body3702.lr.ph:                               ; preds = %if.then3664
  %ads = getelementptr inbounds i8, ptr %h, i64 32464
  %arrayidx3715 = getelementptr inbounds [7 x ptr], ptr %ads, i64 0, i64 %idxprom
  %idx.ext3717 = sext i32 %cond3565 to i64
  %add.ptr3718 = getelementptr inbounds i16, ptr %sums_base.0, i64 %idx.ext3717
  %add.ptr3723 = getelementptr inbounds i16, ptr %add.ptr3617, i64 %idx.ext3717
  %add.ptr3732 = getelementptr inbounds i8, ptr %6, i64 %idx.ext3717
  %sad_x3 = getelementptr inbounds i8, ptr %h, i64 32240
  %arrayidx3738 = getelementptr inbounds [7 x ptr], ptr %sad_x3, i64 0, i64 %idxprom
  %684 = trunc i32 %cond3565 to i16
  %685 = call i32 @llvm.smax.i32(i32 %10, i32 %sub3566)
  %smax6453 = sext i32 %685 to i64
  %686 = sext i32 %3 to i64
  %687 = add i32 %cond3589, %685
  %688 = add i32 %687, 1
  %689 = sub i32 %688, %cond3573
  %arrayidx3765.1 = getelementptr inbounds i8, ptr %sads, i64 4
  %invariant.gep6602 = getelementptr inbounds i8, ptr %666, i64 2
  %arrayidx3765.2 = getelementptr inbounds i8, ptr %sads, i64 8
  %invariant.gep6604 = getelementptr inbounds i8, ptr %666, i64 4
  br label %for.body3702

for.cond.cleanup3701:                             ; preds = %cleanup3864, %if.then3664
  %nmvsad.0.lcssa = phi i32 [ 0, %if.then3664 ], [ %nmvsad.6, %cleanup3864 ]
  %bsad.0.lcssa = phi i32 [ %add3696, %if.then3664 ], [ %bsad.8, %cleanup3864 ]
  %shr3872 = ashr i32 %4, 1
  %mul3873 = mul nsw i32 %bsad.0.lcssa, %cond3677
  %shr3874 = ashr i32 %mul3873, 3
  %mul3875 = and i32 %4, -2
  %cmp38766316 = icmp sgt i32 %nmvsad.0.lcssa, %mul3875
  %cmp38796317 = icmp sgt i32 %shr3874, %bsad.0.lcssa
  %690 = select i1 %cmp38766316, i1 %cmp38796317, i1 false
  br i1 %690, label %while.body.preheader, label %while.cond3919.preheader

while.body.preheader:                             ; preds = %for.cond.cleanup3701
  %invariant.gep6698 = getelementptr i8, ptr %add.ptr3668, i64 8
  br label %while.body

for.body3702:                                     ; preds = %for.body3702.lr.ph, %cleanup3864
  %indvars.iv6454 = phi i64 [ %smax6453, %for.body3702.lr.ph ], [ %indvars.iv.next6455, %cleanup3864 ]
  %bsad.06304 = phi i32 [ %add3696, %for.body3702.lr.ph ], [ %bsad.8, %cleanup3864 ]
  %nmvsad.06303 = phi i32 [ 0, %for.body3702.lr.ph ], [ %nmvsad.6, %cleanup3864 ]
  %691 = trunc nsw i64 %indvars.iv6454 to i32
  %shl3704 = shl i32 %691, 2
  %idxprom3705 = sext i32 %shl3704 to i64
  %arrayidx3706 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom3705
  %692 = load i16, ptr %arrayidx3706, align 2
  %conv3707 = zext i16 %692 to i32
  %cmp3708.not = icmp sgt i32 %bsad.06304, %conv3707
  br i1 %cmp3708.not, label %if.end3711, label %cleanup3864

if.end3711:                                       ; preds = %for.body3702
  %sub3712 = sub nsw i32 %bsad.06304, %conv3707
  %693 = load ptr, ptr %arrayidx3715, align 8
  %694 = mul nsw i64 %indvars.iv6454, %686
  %add.ptr3721 = getelementptr inbounds i16, ptr %add.ptr3718, i64 %694
  %mul3724 = mul nsw i32 %sub3712, 17
  %div = sdiv i32 %mul3724, 16
  %call3725 = call i32 %693(ptr noundef nonnull %enc_dc, ptr noundef %add.ptr3721, i32 noundef %delta.0, ptr noundef %add.ptr3723, ptr noundef %666, i32 noundef %and3592, i32 noundef %div) #6
  %sub3727 = add nsw i32 %call3725, -2
  %cmp37286287 = icmp sgt i32 %call3725, 2
  br i1 %cmp37286287, label %for.body3730.lr.ph, label %for.cond3809.preheader

for.body3730.lr.ph:                               ; preds = %if.end3711
  %add.ptr3735 = getelementptr inbounds i8, ptr %add.ptr3732, i64 %694
  %conv3795 = trunc i64 %indvars.iv6454 to i16
  br label %for.body3730

for.cond3809.preheader:                           ; preds = %if.end3801.2, %if.end3711
  %nmvsad.1.lcssa = phi i32 [ %nmvsad.06303, %if.end3711 ], [ %nmvsad.3.2, %if.end3801.2 ]
  %bsad.1.lcssa = phi i32 [ %sub3712, %if.end3711 ], [ %bsad.4.2, %if.end3801.2 ]
  %i3703.0.lcssa = phi i32 [ 0, %if.end3711 ], [ %712, %if.end3801.2 ]
  %invariant.gep6294 = getelementptr i8, ptr %6, i64 %694
  %cmp38106296 = icmp slt i32 %i3703.0.lcssa, %call3725
  br i1 %cmp38106296, label %for.body3812.lr.ph, label %for.end3862

for.body3812.lr.ph:                               ; preds = %for.cond3809.preheader
  %conv3853 = trunc i64 %indvars.iv6454 to i16
  %695 = zext i32 %i3703.0.lcssa to i64
  br label %for.body3812

for.body3730:                                     ; preds = %for.body3730.lr.ph, %if.end3801.2
  %indvars.iv6447 = phi i64 [ 0, %for.body3730.lr.ph ], [ %indvars.iv.next6448, %if.end3801.2 ]
  %bsad.16289 = phi i32 [ %sub3712, %for.body3730.lr.ph ], [ %bsad.4.2, %if.end3801.2 ]
  %nmvsad.16288 = phi i32 [ %nmvsad.06303, %for.body3730.lr.ph ], [ %nmvsad.3.2, %if.end3801.2 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sads) #6
  %696 = load ptr, ptr %arrayidx3738, align 8
  %arrayidx3740 = getelementptr inbounds i16, ptr %666, i64 %indvars.iv6447
  %697 = load i16, ptr %arrayidx3740, align 2
  %idx.ext3742 = sext i16 %697 to i64
  %add.ptr3743 = getelementptr inbounds i8, ptr %add.ptr3735, i64 %idx.ext3742
  %arrayidx3746 = getelementptr inbounds i8, ptr %arrayidx3740, i64 2
  %698 = load i16, ptr %arrayidx3746, align 2
  %idx.ext3748 = sext i16 %698 to i64
  %add.ptr3749 = getelementptr inbounds i8, ptr %add.ptr3735, i64 %idx.ext3748
  %arrayidx3752 = getelementptr inbounds i8, ptr %arrayidx3740, i64 4
  %699 = load i16, ptr %arrayidx3752, align 2
  %idx.ext3754 = sext i16 %699 to i64
  %add.ptr3755 = getelementptr inbounds i8, ptr %add.ptr3735, i64 %idx.ext3754
  call void %696(ptr noundef %5, ptr noundef %add.ptr3743, ptr noundef %add.ptr3749, ptr noundef %add.ptr3755, i32 noundef %3, ptr noundef nonnull %sads) #6
  %700 = load i32, ptr %sads, align 4
  %701 = load i16, ptr %arrayidx3740, align 2
  %idxprom3769 = sext i16 %701 to i64
  %arrayidx3770 = getelementptr inbounds i16, ptr %add.ptr3617, i64 %idxprom3769
  %702 = load i16, ptr %arrayidx3770, align 2
  %conv3771 = zext i16 %702 to i32
  %add3772 = add nsw i32 %700, %conv3771
  %mul3773 = mul nsw i32 %bsad.16289, %cond3677
  %shr3774 = ashr i32 %mul3773, 3
  %cmp3775 = icmp slt i32 %add3772, %shr3774
  br i1 %cmp3775, label %if.then3777, label %if.end3801

if.then3777:                                      ; preds = %for.body3730
  %spec.select6189 = call i32 @llvm.smin.i32(i32 %add3772, i32 %bsad.16289)
  %add3782 = add nsw i32 %add3772, %conv3707
  %idxprom3783 = sext i32 %nmvsad.16288 to i64
  %arrayidx3784 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3783
  store i32 %add3782, ptr %arrayidx3784, align 4
  %703 = load i16, ptr %arrayidx3740, align 2
  %conv3791 = add i16 %703, %684
  %mv = getelementptr inbounds i8, ptr %arrayidx3784, i64 4
  store i16 %conv3791, ptr %mv, align 4
  %arrayidx3799 = getelementptr inbounds i8, ptr %arrayidx3784, i64 6
  store i16 %conv3795, ptr %arrayidx3799, align 2
  %inc3800 = add nsw i32 %nmvsad.16288, 1
  %.pre = mul nsw i32 %spec.select6189, %cond3677
  %.pre6575 = ashr i32 %.pre, 3
  br label %if.end3801

if.end3801:                                       ; preds = %if.then3777, %for.body3730
  %shr3774.1.pre-phi = phi i32 [ %.pre6575, %if.then3777 ], [ %shr3774, %for.body3730 ]
  %nmvsad.3 = phi i32 [ %inc3800, %if.then3777 ], [ %nmvsad.16288, %for.body3730 ]
  %bsad.4 = phi i32 [ %spec.select6189, %if.then3777 ], [ %bsad.16289, %for.body3730 ]
  %704 = load i32, ptr %arrayidx3765.1, align 4
  %gep6603 = getelementptr inbounds i16, ptr %invariant.gep6602, i64 %indvars.iv6447
  %705 = load i16, ptr %gep6603, align 2
  %idxprom3769.1 = sext i16 %705 to i64
  %arrayidx3770.1 = getelementptr inbounds i16, ptr %add.ptr3617, i64 %idxprom3769.1
  %706 = load i16, ptr %arrayidx3770.1, align 2
  %conv3771.1 = zext i16 %706 to i32
  %add3772.1 = add nsw i32 %704, %conv3771.1
  %cmp3775.1 = icmp slt i32 %add3772.1, %shr3774.1.pre-phi
  br i1 %cmp3775.1, label %if.then3777.1, label %if.end3801.1

if.then3777.1:                                    ; preds = %if.end3801
  %spec.select6189.1 = call i32 @llvm.smin.i32(i32 %add3772.1, i32 %bsad.4)
  %add3782.1 = add nsw i32 %add3772.1, %conv3707
  %idxprom3783.1 = sext i32 %nmvsad.3 to i64
  %arrayidx3784.1 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3783.1
  store i32 %add3782.1, ptr %arrayidx3784.1, align 4
  %707 = load i16, ptr %gep6603, align 2
  %conv3791.1 = add i16 %707, %684
  %mv.1 = getelementptr inbounds i8, ptr %arrayidx3784.1, i64 4
  store i16 %conv3791.1, ptr %mv.1, align 4
  %arrayidx3799.1 = getelementptr inbounds i8, ptr %arrayidx3784.1, i64 6
  store i16 %conv3795, ptr %arrayidx3799.1, align 2
  %inc3800.1 = add nsw i32 %nmvsad.3, 1
  %.pre6576 = mul nsw i32 %spec.select6189.1, %cond3677
  %.pre6577 = ashr i32 %.pre6576, 3
  br label %if.end3801.1

if.end3801.1:                                     ; preds = %if.then3777.1, %if.end3801
  %shr3774.2.pre-phi = phi i32 [ %.pre6577, %if.then3777.1 ], [ %shr3774.1.pre-phi, %if.end3801 ]
  %nmvsad.3.1 = phi i32 [ %inc3800.1, %if.then3777.1 ], [ %nmvsad.3, %if.end3801 ]
  %bsad.4.1 = phi i32 [ %spec.select6189.1, %if.then3777.1 ], [ %bsad.4, %if.end3801 ]
  %708 = load i32, ptr %arrayidx3765.2, align 4
  %gep6605 = getelementptr inbounds i16, ptr %invariant.gep6604, i64 %indvars.iv6447
  %709 = load i16, ptr %gep6605, align 2
  %idxprom3769.2 = sext i16 %709 to i64
  %arrayidx3770.2 = getelementptr inbounds i16, ptr %add.ptr3617, i64 %idxprom3769.2
  %710 = load i16, ptr %arrayidx3770.2, align 2
  %conv3771.2 = zext i16 %710 to i32
  %add3772.2 = add nsw i32 %708, %conv3771.2
  %cmp3775.2 = icmp slt i32 %add3772.2, %shr3774.2.pre-phi
  br i1 %cmp3775.2, label %if.then3777.2, label %if.end3801.2

if.then3777.2:                                    ; preds = %if.end3801.1
  %spec.select6189.2 = call i32 @llvm.smin.i32(i32 %add3772.2, i32 %bsad.4.1)
  %add3782.2 = add nsw i32 %add3772.2, %conv3707
  %idxprom3783.2 = sext i32 %nmvsad.3.1 to i64
  %arrayidx3784.2 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3783.2
  store i32 %add3782.2, ptr %arrayidx3784.2, align 4
  %711 = load i16, ptr %gep6605, align 2
  %conv3791.2 = add i16 %711, %684
  %mv.2 = getelementptr inbounds i8, ptr %arrayidx3784.2, i64 4
  store i16 %conv3791.2, ptr %mv.2, align 4
  %arrayidx3799.2 = getelementptr inbounds i8, ptr %arrayidx3784.2, i64 6
  store i16 %conv3795, ptr %arrayidx3799.2, align 2
  %inc3800.2 = add nsw i32 %nmvsad.3.1, 1
  br label %if.end3801.2

if.end3801.2:                                     ; preds = %if.then3777.2, %if.end3801.1
  %nmvsad.3.2 = phi i32 [ %inc3800.2, %if.then3777.2 ], [ %nmvsad.3.1, %if.end3801.1 ]
  %bsad.4.2 = phi i32 [ %spec.select6189.2, %if.then3777.2 ], [ %bsad.4.1, %if.end3801.1 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sads) #6
  %indvars.iv.next6448 = add nuw nsw i64 %indvars.iv6447, 3
  %712 = trunc nuw i64 %indvars.iv.next6448 to i32
  %cmp3728 = icmp sgt i32 %sub3727, %712
  br i1 %cmp3728, label %for.body3730, label %for.cond3809.preheader

for.body3812:                                     ; preds = %for.body3812.lr.ph, %if.end3859
  %indvars.iv6450 = phi i64 [ %695, %for.body3812.lr.ph ], [ %indvars.iv.next6451, %if.end3859 ]
  %bsad.56298 = phi i32 [ %bsad.1.lcssa, %for.body3812.lr.ph ], [ %bsad.7, %if.end3859 ]
  %nmvsad.46297 = phi i32 [ %nmvsad.1.lcssa, %for.body3812.lr.ph ], [ %nmvsad.5, %if.end3859 ]
  %arrayidx3815 = getelementptr inbounds i16, ptr %666, i64 %indvars.iv6450
  %713 = load i16, ptr %arrayidx3815, align 2
  %conv3816 = sext i16 %713 to i32
  %add3817 = add nsw i32 %cond3565, %conv3816
  %714 = load ptr, ptr %arrayidx3680, align 8
  %idx.ext3823 = sext i32 %add3817 to i64
  %gep6295 = getelementptr i8, ptr %invariant.gep6294, i64 %idx.ext3823
  %call3828 = call i32 %714(ptr noundef %5, i32 noundef 16, ptr noundef %gep6295, i32 noundef %3) #6
  %715 = load i16, ptr %arrayidx3815, align 2
  %idxprom3831 = sext i16 %715 to i64
  %arrayidx3832 = getelementptr inbounds i16, ptr %add.ptr3617, i64 %idxprom3831
  %716 = load i16, ptr %arrayidx3832, align 2
  %conv3833 = zext i16 %716 to i32
  %add3834 = add nsw i32 %call3828, %conv3833
  %mul3835 = mul nsw i32 %bsad.56298, %cond3677
  %shr3836 = ashr i32 %mul3835, 3
  %cmp3837 = icmp slt i32 %add3834, %shr3836
  br i1 %cmp3837, label %if.then3839, label %if.end3859

if.then3839:                                      ; preds = %for.body3812
  %spec.select6190 = call i32 @llvm.smin.i32(i32 %add3834, i32 %bsad.56298)
  %add3844 = add nsw i32 %add3834, %conv3707
  %idxprom3845 = sext i32 %nmvsad.46297 to i64
  %arrayidx3846 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3845
  store i32 %add3844, ptr %arrayidx3846, align 4
  %conv3848 = trunc i32 %add3817 to i16
  %mv3851 = getelementptr inbounds i8, ptr %arrayidx3846, i64 4
  store i16 %conv3848, ptr %mv3851, align 4
  %arrayidx3857 = getelementptr inbounds i8, ptr %arrayidx3846, i64 6
  store i16 %conv3853, ptr %arrayidx3857, align 2
  %inc3858 = add nsw i32 %nmvsad.46297, 1
  br label %if.end3859

if.end3859:                                       ; preds = %if.then3839, %for.body3812
  %nmvsad.5 = phi i32 [ %inc3858, %if.then3839 ], [ %nmvsad.46297, %for.body3812 ]
  %bsad.7 = phi i32 [ %spec.select6190, %if.then3839 ], [ %bsad.56298, %for.body3812 ]
  %indvars.iv.next6451 = add nuw nsw i64 %indvars.iv6450, 1
  %717 = trunc nuw i64 %indvars.iv.next6451 to i32
  %cmp3810 = icmp sgt i32 %call3725, %717
  br i1 %cmp3810, label %for.body3812, label %for.end3862

for.end3862:                                      ; preds = %if.end3859, %for.cond3809.preheader
  %nmvsad.4.lcssa = phi i32 [ %nmvsad.1.lcssa, %for.cond3809.preheader ], [ %nmvsad.5, %if.end3859 ]
  %bsad.5.lcssa = phi i32 [ %bsad.1.lcssa, %for.cond3809.preheader ], [ %bsad.7, %if.end3859 ]
  %add3863 = add nsw i32 %bsad.5.lcssa, %conv3707
  br label %cleanup3864

cleanup3864:                                      ; preds = %for.body3702, %for.end3862
  %nmvsad.6 = phi i32 [ %nmvsad.4.lcssa, %for.end3862 ], [ %nmvsad.06303, %for.body3702 ]
  %bsad.8 = phi i32 [ %add3863, %for.end3862 ], [ %bsad.06304, %for.body3702 ]
  %indvars.iv.next6455 = add nsw i64 %indvars.iv6454, 1
  %lftr.wideiv6457 = trunc i64 %indvars.iv.next6455 to i32
  %exitcond6458.not = icmp eq i32 %689, %lftr.wideiv6457
  br i1 %exitcond6458.not, label %for.cond.cleanup3701, label %for.body3702

while.cond.loopexit:                              ; preds = %for.inc3896, %for.body3904.prol.loopexit, %for.body3904, %for.end3898
  %i3882.1.lcssa = phi i32 [ %i3882.0.lcssa, %for.end3898 ], [ %add3914.lcssa.unr, %for.body3904.prol.loopexit ], [ %add3914.1, %for.body3904 ], [ %nmvsad.76318, %for.inc3896 ]
  %cmp3876 = icmp sgt i32 %i3882.1.lcssa, %mul3875
  %cmp3879 = icmp sgt i32 %shr3884, %bsad.0.lcssa
  %718 = select i1 %cmp3876, i1 %cmp3879, i1 false
  br i1 %718, label %while.body, label %while.cond3919.preheader

while.cond3919.preheader:                         ; preds = %while.cond.loopexit, %for.cond.cleanup3701
  %nmvsad.7.lcssa = phi i32 [ %nmvsad.0.lcssa, %for.cond.cleanup3701 ], [ %i3882.1.lcssa, %while.cond.loopexit ]
  %cmp39206325 = icmp sgt i32 %nmvsad.7.lcssa, %shr3872
  br i1 %cmp39206325, label %for.cond3924.preheader.preheader, label %for.cond3950.preheader

for.cond3924.preheader.preheader:                 ; preds = %while.cond3919.preheader
  %719 = sext i32 %nmvsad.7.lcssa to i64
  %720 = sext i32 %shr3872 to i64
  br label %for.cond3924.preheader

while.body:                                       ; preds = %while.body.preheader, %while.cond.loopexit
  %sad_thresh.06319 = phi i32 [ %shr3884, %while.cond.loopexit ], [ %shr3874, %while.body.preheader ]
  %nmvsad.76318 = phi i32 [ %i3882.1.lcssa, %while.cond.loopexit ], [ %nmvsad.0.lcssa, %while.body.preheader ]
  %add3883 = add nsw i32 %sad_thresh.06319, %bsad.0.lcssa
  %shr3884 = ashr i32 %add3883, 1
  %cmp38866308 = icmp sgt i32 %nmvsad.76318, 0
  br i1 %cmp38866308, label %land.rhs3888.preheader, label %for.end3898

land.rhs3888.preheader:                           ; preds = %while.body
  %721 = zext nneg i32 %nmvsad.76318 to i64
  br label %land.rhs3888

land.rhs3888:                                     ; preds = %land.rhs3888.preheader, %for.inc3896
  %indvars.iv6459 = phi i64 [ 0, %land.rhs3888.preheader ], [ %indvars.iv.next6460, %for.inc3896 ]
  %arrayidx3890 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv6459
  %722 = load i32, ptr %arrayidx3890, align 4
  %cmp3892.not = icmp sgt i32 %722, %shr3884
  br i1 %cmp3892.not, label %for.end3898.loopexit, label %for.inc3896

for.inc3896:                                      ; preds = %land.rhs3888
  %indvars.iv.next6460 = add nuw nsw i64 %indvars.iv6459, 1
  %exitcond6462.not = icmp eq i64 %indvars.iv.next6460, %721
  br i1 %exitcond6462.not, label %while.cond.loopexit, label %land.rhs3888

for.end3898.loopexit:                             ; preds = %land.rhs3888
  %723 = trunc nuw nsw i64 %indvars.iv6459 to i32
  br label %for.end3898

for.end3898:                                      ; preds = %for.end3898.loopexit, %while.body
  %i3882.0.lcssa = phi i32 [ 0, %while.body ], [ %723, %for.end3898.loopexit ]
  %cmp39016312 = icmp slt i32 %i3882.0.lcssa, %nmvsad.76318
  br i1 %cmp39016312, label %for.body3904.lr.ph, label %while.cond.loopexit

for.body3904.lr.ph:                               ; preds = %for.end3898
  %add3911.neg = xor i32 %shr3884, -1
  %724 = zext i32 %i3882.0.lcssa to i64
  %725 = sub i32 %nmvsad.76318, %i3882.0.lcssa
  %.neg6691 = add i32 %i3882.0.lcssa, 1
  %xtraiter = and i32 %725, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body3904.prol.loopexit, label %for.body3904.prol

for.body3904.prol:                                ; preds = %for.body3904.lr.ph
  %arrayidx3907.prol = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %724
  %726 = load i64, ptr %arrayidx3907.prol, align 8
  %idxprom3908.prol = sext i32 %i3882.0.lcssa to i64
  %arrayidx3909.prol = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3908.prol
  store i64 %726, ptr %arrayidx3909.prol, align 8
  %conv3910.prol = trunc i64 %726 to i32
  %sub3912.prol = add i32 %conv3910.prol, %add3911.neg
  %shr3913.prol = lshr i32 %sub3912.prol, 31
  %add3914.prol = add i32 %shr3913.prol, %i3882.0.lcssa
  %indvars.iv.next6464.prol = add nuw nsw i64 %724, 1
  br label %for.body3904.prol.loopexit

for.body3904.prol.loopexit:                       ; preds = %for.body3904.prol, %for.body3904.lr.ph
  %indvars.iv6463.unr = phi i64 [ %724, %for.body3904.lr.ph ], [ %indvars.iv.next6464.prol, %for.body3904.prol ]
  %i3882.16313.unr = phi i32 [ %i3882.0.lcssa, %for.body3904.lr.ph ], [ %add3914.prol, %for.body3904.prol ]
  %add3914.lcssa.unr = phi i32 [ poison, %for.body3904.lr.ph ], [ %add3914.prol, %for.body3904.prol ]
  %727 = icmp eq i32 %nmvsad.76318, %.neg6691
  br i1 %727, label %while.cond.loopexit, label %for.body3904

for.body3904:                                     ; preds = %for.body3904.prol.loopexit, %for.body3904
  %indvars.iv6463 = phi i64 [ %indvars.iv.next6464.1, %for.body3904 ], [ %indvars.iv6463.unr, %for.body3904.prol.loopexit ]
  %i3882.16313 = phi i32 [ %add3914.1, %for.body3904 ], [ %i3882.16313.unr, %for.body3904.prol.loopexit ]
  %arrayidx3907 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv6463
  %728 = load i64, ptr %arrayidx3907, align 8
  %idxprom3908 = sext i32 %i3882.16313 to i64
  %arrayidx3909 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3908
  store i64 %728, ptr %arrayidx3909, align 8
  %conv3910 = trunc i64 %728 to i32
  %sub3912 = add i32 %conv3910, %add3911.neg
  %shr3913 = lshr i32 %sub3912, 31
  %add3914 = add i32 %shr3913, %i3882.16313
  %gep6699 = getelementptr %struct.mvsad_t, ptr %invariant.gep6698, i64 %indvars.iv6463
  %729 = load i64, ptr %gep6699, align 8
  %idxprom3908.1 = sext i32 %add3914 to i64
  %arrayidx3909.1 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3908.1
  store i64 %729, ptr %arrayidx3909.1, align 8
  %conv3910.1 = trunc i64 %729 to i32
  %sub3912.1 = add i32 %conv3910.1, %add3911.neg
  %shr3913.1 = lshr i32 %sub3912.1, 31
  %add3914.1 = add i32 %shr3913.1, %add3914
  %indvars.iv.next6464.1 = add nuw nsw i64 %indvars.iv6463, 2
  %730 = trunc nuw i64 %indvars.iv.next6464.1 to i32
  %cmp3901.1 = icmp sgt i32 %nmvsad.76318, %730
  br i1 %cmp3901.1, label %for.body3904, label %while.cond.loopexit

for.cond3924.preheader:                           ; preds = %for.cond3924.preheader.preheader, %for.cond.cleanup3927
  %indvar = phi i32 [ 0, %for.cond3924.preheader.preheader ], [ %indvar.next, %for.cond.cleanup3927 ]
  %indvars.iv6471 = phi i64 [ %719, %for.cond3924.preheader.preheader ], [ %indvars.iv.next6472, %for.cond.cleanup3927 ]
  %731 = sub i32 %nmvsad.7.lcssa, %indvar
  %732 = zext i32 %731 to i64
  %733 = add nsw i64 %732, -1
  %cmp39256321 = icmp sgt i64 %indvars.iv6471, 1
  br i1 %cmp39256321, label %for.body3928.preheader, label %for.cond.cleanup3927

for.body3928.preheader:                           ; preds = %for.cond3924.preheader
  %734 = add nsw i64 %732, -2
  %xtraiter6688 = and i64 %733, 3
  %735 = icmp ult i64 %734, 3
  br i1 %735, label %for.cond.cleanup3927.loopexit.unr-lcssa, label %for.body3928.preheader.new

for.body3928.preheader.new:                       ; preds = %for.body3928.preheader
  %unroll_iter = and i64 %733, -4
  br label %for.body3928

for.cond3950.preheader.loopexit:                  ; preds = %for.cond.cleanup3927
  %736 = trunc nsw i64 %indvars.iv.next6472 to i32
  br label %for.cond3950.preheader

for.cond3950.preheader:                           ; preds = %for.cond3950.preheader.loopexit, %while.cond3919.preheader
  %nmvsad.8.lcssa = phi i32 [ %nmvsad.7.lcssa, %while.cond3919.preheader ], [ %736, %for.cond3950.preheader.loopexit ]
  %cmp39516328 = icmp sgt i32 %nmvsad.8.lcssa, 0
  br i1 %cmp39516328, label %for.body3954.lr.ph, label %if.end4202

for.body3954.lr.ph:                               ; preds = %for.cond3950.preheader
  %fpelcmp3957 = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx3959 = getelementptr inbounds [7 x ptr], ptr %fpelcmp3957, i64 0, i64 %idxprom
  %wide.trip.count6477 = zext nneg i32 %nmvsad.8.lcssa to i64
  br label %for.body3954

for.cond.cleanup3927.loopexit.unr-lcssa:          ; preds = %for.body3928, %for.body3928.preheader
  %spec.select6191.lcssa.ph = phi i32 [ poison, %for.body3928.preheader ], [ %spec.select6191.3, %for.body3928 ]
  %indvars.iv6466.unr = phi i64 [ 1, %for.body3928.preheader ], [ %indvars.iv.next6467.3, %for.body3928 ]
  %bi.06322.unr = phi i32 [ 0, %for.body3928.preheader ], [ %spec.select6191.3, %for.body3928 ]
  %lcmp.mod6689.not = icmp eq i64 %xtraiter6688, 0
  br i1 %lcmp.mod6689.not, label %for.cond.cleanup3927, label %for.body3928.epil

for.body3928.epil:                                ; preds = %for.cond.cleanup3927.loopexit.unr-lcssa, %for.body3928.epil
  %indvars.iv6466.epil = phi i64 [ %indvars.iv.next6467.epil, %for.body3928.epil ], [ %indvars.iv6466.unr, %for.cond.cleanup3927.loopexit.unr-lcssa ]
  %bi.06322.epil = phi i32 [ %spec.select6191.epil, %for.body3928.epil ], [ %bi.06322.unr, %for.cond.cleanup3927.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body3928.epil ], [ 0, %for.cond.cleanup3927.loopexit.unr-lcssa ]
  %arrayidx3930.epil = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv6466.epil
  %737 = load i32, ptr %arrayidx3930.epil, align 4
  %idxprom3932.epil = sext i32 %bi.06322.epil to i64
  %arrayidx3933.epil = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3932.epil
  %738 = load i32, ptr %arrayidx3933.epil, align 4
  %cmp3935.epil = icmp sgt i32 %737, %738
  %739 = trunc nuw nsw i64 %indvars.iv6466.epil to i32
  %spec.select6191.epil = select i1 %cmp3935.epil, i32 %739, i32 %bi.06322.epil
  %indvars.iv.next6467.epil = add nuw nsw i64 %indvars.iv6466.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter6688
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup3927, label %for.body3928.epil, !llvm.loop !11

for.cond.cleanup3927:                             ; preds = %for.cond.cleanup3927.loopexit.unr-lcssa, %for.body3928.epil, %for.cond3924.preheader
  %bi.0.lcssa = phi i32 [ 0, %for.cond3924.preheader ], [ %spec.select6191.lcssa.ph, %for.cond.cleanup3927.loopexit.unr-lcssa ], [ %spec.select6191.epil, %for.body3928.epil ]
  %indvars.iv.next6472 = add nsw i64 %indvars.iv6471, -1
  %arrayidx3945 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv.next6472
  %740 = load i64, ptr %arrayidx3945, align 8
  %idxprom3946 = sext i32 %bi.0.lcssa to i64
  %arrayidx3947 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3946
  store i64 %740, ptr %arrayidx3947, align 8
  %cmp3920 = icmp sgt i64 %indvars.iv.next6472, %720
  %indvar.next = add i32 %indvar, 1
  br i1 %cmp3920, label %for.cond3924.preheader, label %for.cond3950.preheader.loopexit

for.body3928:                                     ; preds = %for.body3928, %for.body3928.preheader.new
  %indvars.iv6466 = phi i64 [ 1, %for.body3928.preheader.new ], [ %indvars.iv.next6467.3, %for.body3928 ]
  %bi.06322 = phi i32 [ 0, %for.body3928.preheader.new ], [ %spec.select6191.3, %for.body3928 ]
  %niter = phi i64 [ 0, %for.body3928.preheader.new ], [ %niter.next.3, %for.body3928 ]
  %arrayidx3930 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv6466
  %741 = load i32, ptr %arrayidx3930, align 4
  %idxprom3932 = sext i32 %bi.06322 to i64
  %arrayidx3933 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3932
  %742 = load i32, ptr %arrayidx3933, align 4
  %cmp3935 = icmp sgt i32 %741, %742
  %743 = trunc nuw nsw i64 %indvars.iv6466 to i32
  %spec.select6191 = select i1 %cmp3935, i32 %743, i32 %bi.06322
  %indvars.iv.next6467 = add nuw nsw i64 %indvars.iv6466, 1
  %arrayidx3930.1 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv.next6467
  %744 = load i32, ptr %arrayidx3930.1, align 4
  %idxprom3932.1 = sext i32 %spec.select6191 to i64
  %arrayidx3933.1 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3932.1
  %745 = load i32, ptr %arrayidx3933.1, align 4
  %cmp3935.1 = icmp sgt i32 %744, %745
  %746 = trunc nuw nsw i64 %indvars.iv.next6467 to i32
  %spec.select6191.1 = select i1 %cmp3935.1, i32 %746, i32 %spec.select6191
  %indvars.iv.next6467.1 = add nuw nsw i64 %indvars.iv6466, 2
  %arrayidx3930.2 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv.next6467.1
  %747 = load i32, ptr %arrayidx3930.2, align 4
  %idxprom3932.2 = sext i32 %spec.select6191.1 to i64
  %arrayidx3933.2 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3932.2
  %748 = load i32, ptr %arrayidx3933.2, align 4
  %cmp3935.2 = icmp sgt i32 %747, %748
  %749 = trunc nuw nsw i64 %indvars.iv.next6467.1 to i32
  %spec.select6191.2 = select i1 %cmp3935.2, i32 %749, i32 %spec.select6191.1
  %indvars.iv.next6467.2 = add nuw nsw i64 %indvars.iv6466, 3
  %arrayidx3930.3 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv.next6467.2
  %750 = load i32, ptr %arrayidx3930.3, align 4
  %idxprom3932.3 = sext i32 %spec.select6191.2 to i64
  %arrayidx3933.3 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %idxprom3932.3
  %751 = load i32, ptr %arrayidx3933.3, align 4
  %cmp3935.3 = icmp sgt i32 %750, %751
  %752 = trunc nuw nsw i64 %indvars.iv.next6467.2 to i32
  %spec.select6191.3 = select i1 %cmp3935.3, i32 %752, i32 %spec.select6191.2
  %indvars.iv.next6467.3 = add nuw nsw i64 %indvars.iv6466, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond.cleanup3927.loopexit.unr-lcssa, label %for.body3928

for.body3954:                                     ; preds = %for.body3954.lr.ph, %for.body3954
  %indvars.iv6474 = phi i64 [ 0, %for.body3954.lr.ph ], [ %indvars.iv.next6475, %for.body3954 ]
  %bmx.966332 = phi i32 [ %bmx.4, %for.body3954.lr.ph ], [ %bmx.97, %for.body3954 ]
  %bmy.966331 = phi i32 [ %bmy.4, %for.body3954.lr.ph ], [ %bmy.97, %for.body3954 ]
  %bcost.1356330 = phi i32 [ %bcost.6, %for.body3954.lr.ph ], [ %bcost.136, %for.body3954 ]
  %753 = load ptr, ptr %arrayidx3959, align 8
  %mv3962 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3668, i64 %indvars.iv6474, i32 1
  %arrayidx3963 = getelementptr inbounds i8, ptr %mv3962, i64 2
  %754 = load i16, ptr %arrayidx3963, align 2
  %conv3964 = sext i16 %754 to i32
  %mul3965 = mul nsw i32 %3, %conv3964
  %755 = load i16, ptr %mv3962, align 4
  %conv3970 = sext i16 %755 to i32
  %add3971 = add nsw i32 %mul3965, %conv3970
  %idxprom3972 = sext i32 %add3971 to i64
  %arrayidx3973 = getelementptr inbounds i8, ptr %6, i64 %idxprom3972
  %call3974 = call i32 %753(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx3973, i32 noundef %3) #6
  %756 = load i16, ptr %mv3962, align 4
  %conv3979 = sext i16 %756 to i32
  %shl3980 = shl nsw i32 %conv3979, 2
  %idxprom3981 = sext i32 %shl3980 to i64
  %arrayidx3982 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom3981
  %757 = load i16, ptr %arrayidx3982, align 2
  %conv3983 = zext i16 %757 to i32
  %758 = load i16, ptr %arrayidx3963, align 2
  %conv3988 = sext i16 %758 to i32
  %shl3989 = shl nsw i32 %conv3988, 2
  %idxprom3990 = sext i32 %shl3989 to i64
  %arrayidx3991 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom3990
  %759 = load i16, ptr %arrayidx3991, align 2
  %conv3992 = zext i16 %759 to i32
  %add3993 = add i32 %call3974, %conv3983
  %add3994 = add i32 %add3993, %conv3992
  %cmp3995 = icmp slt i32 %add3994, %bcost.1356330
  %bcost.136 = call i32 @llvm.smin.i32(i32 %add3994, i32 %bcost.1356330)
  %bmy.97 = select i1 %cmp3995, i32 %conv3988, i32 %bmy.966331
  %bmx.97 = select i1 %cmp3995, i32 %conv3979, i32 %bmx.966332
  %indvars.iv.next6475 = add nuw nsw i64 %indvars.iv6474, 1
  %exitcond6478.not = icmp eq i64 %indvars.iv.next6475, %wide.trip.count6477
  br i1 %exitcond6478.not, label %if.end4202, label %for.body3954

for.body4019:                                     ; preds = %for.body4019.lr.ph, %cleanup4194
  %indvars.iv6438 = phi i64 [ %smax, %for.body4019.lr.ph ], [ %indvars.iv.next6439, %cleanup4194 ]
  %bmx.986280 = phi i32 [ %bmx.4, %for.body4019.lr.ph ], [ %bmx.105, %cleanup4194 ]
  %bmy.986279 = phi i32 [ %bmy.4, %for.body4019.lr.ph ], [ %bmy.105, %cleanup4194 ]
  %bcost.1376278 = phi i32 [ %bcost.6, %for.body4019.lr.ph ], [ %bcost.144, %cleanup4194 ]
  %760 = trunc nsw i64 %indvars.iv6438 to i32
  %shl4022 = shl i32 %760, 2
  %idxprom4023 = sext i32 %shl4022 to i64
  %arrayidx4024 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom4023
  %761 = load i16, ptr %arrayidx4024, align 2
  %conv4025 = zext i16 %761 to i32
  %cmp4026.not = icmp sgt i32 %bcost.1376278, %conv4025
  br i1 %cmp4026.not, label %if.end4029, label %cleanup4194

if.end4029:                                       ; preds = %for.body4019
  %sub4030 = sub nsw i32 %bcost.1376278, %conv4025
  %762 = load ptr, ptr %arrayidx4034, align 8
  %763 = mul nsw i64 %indvars.iv6438, %677
  %add.ptr4040 = getelementptr inbounds i16, ptr %add.ptr4037, i64 %763
  %call4043 = call i32 %762(ptr noundef nonnull %enc_dc, ptr noundef %add.ptr4040, i32 noundef %delta.0, ptr noundef %add.ptr4042, ptr noundef %666, i32 noundef %and3592, i32 noundef %sub4030) #6
  %sub4045 = add nsw i32 %call4043, -2
  %invariant.gep = getelementptr i8, ptr %6, i64 %763
  %cmp40466258 = icmp sgt i32 %call4043, 2
  br i1 %cmp40466258, label %for.body4048, label %for.end4149

for.body4048:                                     ; preds = %if.end4029, %for.inc4147
  %indvars.iv6432 = phi i64 [ %indvars.iv.next6433, %for.inc4147 ], [ 0, %if.end4029 ]
  %bmx.996262 = phi i32 [ %bmx.102, %for.inc4147 ], [ %bmx.986280, %if.end4029 ]
  %bmy.996261 = phi i32 [ %bmy.102, %for.inc4147 ], [ %bmy.986279, %if.end4029 ]
  %bcost.1386260 = phi i32 [ %bcost.141, %for.inc4147 ], [ %sub4030, %if.end4029 ]
  %764 = load ptr, ptr %arrayidx4052, align 8
  %arrayidx4054 = getelementptr inbounds i16, ptr %666, i64 %indvars.iv6432
  %765 = load i16, ptr %arrayidx4054, align 2
  %conv4055 = sext i16 %765 to i32
  %add4056 = add nsw i32 %cond3565, %conv4055
  %idx.ext4057 = sext i32 %add4056 to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %idx.ext4057
  %arrayidx4064 = getelementptr inbounds i8, ptr %arrayidx4054, i64 2
  %766 = load i16, ptr %arrayidx4064, align 2
  %conv4065 = sext i16 %766 to i32
  %add4066 = add nsw i32 %cond3565, %conv4065
  %idx.ext4067 = sext i32 %add4066 to i64
  %gep6255 = getelementptr i8, ptr %invariant.gep, i64 %idx.ext4067
  %arrayidx4074 = getelementptr inbounds i8, ptr %arrayidx4054, i64 4
  %767 = load i16, ptr %arrayidx4074, align 2
  %conv4075 = sext i16 %767 to i32
  %add4076 = add nsw i32 %cond3565, %conv4075
  %idx.ext4077 = sext i32 %add4076 to i64
  %gep6257 = getelementptr i8, ptr %invariant.gep, i64 %idx.ext4077
  call void %764(ptr noundef %5, ptr noundef %gep, ptr noundef %gep6255, ptr noundef %gep6257, i32 noundef %3, ptr noundef nonnull %costs) #6
  %768 = load i16, ptr %arrayidx4054, align 2
  %conv4085 = sext i16 %768 to i32
  %add4086 = add nsw i32 %cond3565, %conv4085
  %shl4087 = shl i32 %add4086, 2
  %idxprom4088 = sext i32 %shl4087 to i64
  %arrayidx4089 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4088
  %769 = load i16, ptr %arrayidx4089, align 2
  %conv4090 = zext i16 %769 to i32
  %770 = load i32, ptr %costs, align 16
  %add4092 = add nsw i32 %770, %conv4090
  store i32 %add4092, ptr %costs, align 16
  %771 = load i16, ptr %arrayidx4064, align 2
  %conv4096 = sext i16 %771 to i32
  %add4097 = add nsw i32 %cond3565, %conv4096
  %shl4098 = shl i32 %add4097, 2
  %idxprom4099 = sext i32 %shl4098 to i64
  %arrayidx4100 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4099
  %772 = load i16, ptr %arrayidx4100, align 2
  %conv4101 = zext i16 %772 to i32
  %773 = load i32, ptr %arrayidx4102, align 4
  %add4103 = add nsw i32 %773, %conv4101
  store i32 %add4103, ptr %arrayidx4102, align 4
  %774 = load i16, ptr %arrayidx4074, align 2
  %conv4107 = sext i16 %774 to i32
  %add4108 = add nsw i32 %cond3565, %conv4107
  %shl4109 = shl i32 %add4108, 2
  %idxprom4110 = sext i32 %shl4109 to i64
  %arrayidx4111 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4110
  %775 = load i16, ptr %arrayidx4111, align 2
  %conv4112 = zext i16 %775 to i32
  %776 = load i32, ptr %arrayidx4113, align 8
  %add4114 = add nsw i32 %776, %conv4112
  store i32 %add4114, ptr %arrayidx4113, align 8
  %cmp4116 = icmp slt i32 %add4092, %bcost.1386260
  br i1 %cmp4116, label %if.then4118, label %if.end4124

if.then4118:                                      ; preds = %for.body4048
  %777 = load i16, ptr %arrayidx4054, align 2
  %conv4122 = sext i16 %777 to i32
  %add4123 = add nsw i32 %cond3565, %conv4122
  br label %if.end4124

if.end4124:                                       ; preds = %if.then4118, %for.body4048
  %bcost.139 = phi i32 [ %add4092, %if.then4118 ], [ %bcost.1386260, %for.body4048 ]
  %bmy.100 = phi i32 [ %760, %if.then4118 ], [ %bmy.996261, %for.body4048 ]
  %bmx.100 = phi i32 [ %add4123, %if.then4118 ], [ %bmx.996262, %for.body4048 ]
  %cmp4126 = icmp slt i32 %add4103, %bcost.139
  br i1 %cmp4126, label %if.then4128, label %if.end4135

if.then4128:                                      ; preds = %if.end4124
  %778 = load i16, ptr %arrayidx4064, align 2
  %conv4133 = sext i16 %778 to i32
  %add4134 = add nsw i32 %cond3565, %conv4133
  br label %if.end4135

if.end4135:                                       ; preds = %if.then4128, %if.end4124
  %bcost.140 = phi i32 [ %add4103, %if.then4128 ], [ %bcost.139, %if.end4124 ]
  %bmy.101 = phi i32 [ %760, %if.then4128 ], [ %bmy.100, %if.end4124 ]
  %bmx.101 = phi i32 [ %add4134, %if.then4128 ], [ %bmx.100, %if.end4124 ]
  %cmp4137 = icmp slt i32 %add4114, %bcost.140
  br i1 %cmp4137, label %if.then4139, label %for.inc4147

if.then4139:                                      ; preds = %if.end4135
  %779 = load i16, ptr %arrayidx4074, align 2
  %conv4144 = sext i16 %779 to i32
  %add4145 = add nsw i32 %cond3565, %conv4144
  br label %for.inc4147

for.inc4147:                                      ; preds = %if.end4135, %if.then4139
  %bcost.141 = phi i32 [ %add4114, %if.then4139 ], [ %bcost.140, %if.end4135 ]
  %bmy.102 = phi i32 [ %760, %if.then4139 ], [ %bmy.101, %if.end4135 ]
  %bmx.102 = phi i32 [ %add4145, %if.then4139 ], [ %bmx.101, %if.end4135 ]
  %indvars.iv.next6433 = add nuw nsw i64 %indvars.iv6432, 3
  %780 = trunc nuw i64 %indvars.iv.next6433 to i32
  %cmp4046 = icmp sgt i32 %sub4045, %780
  br i1 %cmp4046, label %for.body4048, label %for.end4149

for.end4149:                                      ; preds = %for.inc4147, %if.end4029
  %i4020.0.lcssa = phi i32 [ 0, %if.end4029 ], [ %780, %for.inc4147 ]
  %bcost.138.lcssa = phi i32 [ %sub4030, %if.end4029 ], [ %bcost.141, %for.inc4147 ]
  %bmy.99.lcssa = phi i32 [ %bmy.986279, %if.end4029 ], [ %bmy.102, %for.inc4147 ]
  %bmx.99.lcssa = phi i32 [ %bmx.986280, %if.end4029 ], [ %bmx.102, %for.inc4147 ]
  %add4150 = add nsw i32 %bcost.138.lcssa, %conv4025
  %cmp41526267 = icmp slt i32 %i4020.0.lcssa, %call4043
  br i1 %cmp41526267, label %for.body4154.lr.ph, label %cleanup4194

for.body4154.lr.ph:                               ; preds = %for.end4149
  %781 = trunc nsw i64 %763 to i32
  %add4164 = add i32 %cond3565, %781
  %782 = zext i32 %i4020.0.lcssa to i64
  br label %for.body4154

for.body4154:                                     ; preds = %for.body4154.lr.ph, %for.body4154
  %indvars.iv6435 = phi i64 [ %782, %for.body4154.lr.ph ], [ %indvars.iv.next6436, %for.body4154 ]
  %bmx.1036271 = phi i32 [ %bmx.99.lcssa, %for.body4154.lr.ph ], [ %bmx.104, %for.body4154 ]
  %bmy.1036270 = phi i32 [ %bmy.99.lcssa, %for.body4154.lr.ph ], [ %bmy.104, %for.body4154 ]
  %bcost.1426269 = phi i32 [ %add4150, %for.body4154.lr.ph ], [ %bcost.143, %for.body4154 ]
  %783 = load ptr, ptr %arrayidx4159, align 8
  %arrayidx4162 = getelementptr inbounds i16, ptr %666, i64 %indvars.iv6435
  %784 = load i16, ptr %arrayidx4162, align 2
  %conv4163 = sext i16 %784 to i32
  %add4165 = add i32 %add4164, %conv4163
  %idxprom4166 = sext i32 %add4165 to i64
  %arrayidx4167 = getelementptr inbounds i8, ptr %6, i64 %idxprom4166
  %call4168 = call i32 %783(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx4167, i32 noundef %3) #6
  %785 = load i16, ptr %arrayidx4162, align 2
  %conv4171 = sext i16 %785 to i32
  %add4172 = add nsw i32 %cond3565, %conv4171
  %shl4173 = shl i32 %add4172, 2
  %idxprom4174 = sext i32 %shl4173 to i64
  %arrayidx4175 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4174
  %786 = load i16, ptr %arrayidx4175, align 2
  %conv4176 = zext i16 %786 to i32
  %787 = load i16, ptr %arrayidx4024, align 2
  %conv4180 = zext i16 %787 to i32
  %add4181 = add i32 %call4168, %conv4176
  %add4182 = add i32 %add4181, %conv4180
  %cmp4183 = icmp slt i32 %add4182, %bcost.1426269
  %bcost.143 = call i32 @llvm.smin.i32(i32 %add4182, i32 %bcost.1426269)
  %bmy.104 = select i1 %cmp4183, i32 %760, i32 %bmy.1036270
  %bmx.104 = select i1 %cmp4183, i32 %add4172, i32 %bmx.1036271
  %indvars.iv.next6436 = add nuw nsw i64 %indvars.iv6435, 1
  %788 = trunc nuw i64 %indvars.iv.next6436 to i32
  %cmp4152 = icmp sgt i32 %call4043, %788
  br i1 %cmp4152, label %for.body4154, label %cleanup4194

cleanup4194:                                      ; preds = %for.body4154, %for.end4149, %for.body4019
  %bcost.144 = phi i32 [ %bcost.1376278, %for.body4019 ], [ %add4150, %for.end4149 ], [ %bcost.143, %for.body4154 ]
  %bmy.105 = phi i32 [ %bmy.986279, %for.body4019 ], [ %bmy.99.lcssa, %for.end4149 ], [ %bmy.104, %for.body4154 ]
  %bmx.105 = phi i32 [ %bmx.986280, %for.body4019 ], [ %bmx.99.lcssa, %for.end4149 ], [ %bmx.104, %for.body4154 ]
  %indvars.iv.next6439 = add nsw i64 %indvars.iv6438, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next6439 to i32
  %exitcond6441.not = icmp eq i32 %680, %lftr.wideiv
  br i1 %exitcond6441.not, label %if.end4202, label %for.body4019

if.end4202:                                       ; preds = %cleanup4194, %for.body3954, %for.cond4015.preheader, %for.cond3950.preheader
  %bcost.145 = phi i32 [ %bcost.6, %for.cond3950.preheader ], [ %bcost.6, %for.cond4015.preheader ], [ %bcost.136, %for.body3954 ], [ %bcost.144, %cleanup4194 ]
  %bmy.106 = phi i32 [ %bmy.4, %for.cond3950.preheader ], [ %bmy.4, %for.cond4015.preheader ], [ %bmy.97, %for.body3954 ], [ %bmy.105, %cleanup4194 ]
  %bmx.106 = phi i32 [ %bmx.4, %for.cond3950.preheader ], [ %bmx.4, %for.cond4015.preheader ], [ %bmx.97, %for.body3954 ], [ %bmx.105, %cleanup4194 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %enc_dc) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end2076, %if.then1405, %cleanup3553, %if.end264, %if.end4202, %if.end822, %do.end
  %bcost.146 = phi i32 [ %bcost.6, %if.end264 ], [ %bcost.145, %if.end4202 ], [ %bcost.133, %cleanup3553 ], [ %bcost.33, %if.end822 ], [ %shr408, %do.end ], [ %bcost.6, %if.then1405 ], [ %bcost.42, %for.end2076 ]
  %bmy.107 = phi i32 [ %bmy.4, %if.end264 ], [ %bmy.106, %if.end4202 ], [ %bmy.94, %cleanup3553 ], [ %add1040, %if.end822 ], [ %bmy.6, %do.end ], [ %bmy.31, %if.then1405 ], [ %bmy.61, %for.end2076 ]
  %bmx.107 = phi i32 [ %bmx.4, %if.end264 ], [ %bmx.106, %if.end4202 ], [ %bmx.94, %cleanup3553 ], [ %add1035, %if.end822 ], [ %bmx.6, %do.end ], [ %bmx.31, %if.then1405 ], [ %bmx.61, %for.end2076 ]
  %cmp4203 = icmp slt i32 %bpred_cost.5, %bcost.146
  %conv4206 = trunc i32 %bpred_mx.5 to i16
  %conv4209 = trunc i32 %bpred_my.5 to i16
  %bmx.107.tr = trunc i32 %bmx.107 to i16
  %conv4215 = shl i16 %bmx.107.tr, 2
  %bmy.107.tr = trunc i32 %bmy.107 to i16
  %conv4219 = shl i16 %bmy.107.tr, 2
  %conv4215.sink = select i1 %cmp4203, i16 %conv4206, i16 %conv4215
  %conv4219.sink = select i1 %cmp4203, i16 %conv4209, i16 %conv4219
  %789 = call i32 @llvm.smin.i32(i32 %bpred_cost.5, i32 %bcost.146)
  %790 = getelementptr inbounds i8, ptr %m, i64 140
  store i16 %conv4215.sink, ptr %790, align 4
  %791 = getelementptr inbounds i8, ptr %m, i64 142
  store i16 %conv4219.sink, ptr %791, align 2
  %792 = getelementptr inbounds i8, ptr %m, i64 136
  store i32 %789, ptr %792, align 8
  %idxprom4226 = sext i16 %conv4215.sink to i64
  %arrayidx4227 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4226
  %793 = load i16, ptr %arrayidx4227, align 2
  %conv4228 = zext i16 %793 to i32
  %idxprom4231 = sext i16 %conv4219.sink to i64
  %arrayidx4232 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom4231
  %794 = load i16, ptr %arrayidx4232, align 2
  %conv4233 = zext i16 %794 to i32
  %add4234 = add nuw nsw i32 %conv4233, %conv4228
  %cost_mv = getelementptr inbounds i8, ptr %m, i64 132
  store i32 %add4234, ptr %cost_mv, align 4
  %cmp4235 = icmp eq i32 %bmx.107, %shr
  %cmp4238 = icmp eq i32 %bmy.107, %shr46
  %or.cond = select i1 %cmp4235, i1 %cmp4238, i1 false
  br i1 %or.cond, label %land.lhs.true4240, label %if.end4249

land.lhs.true4240:                                ; preds = %sw.epilog
  %795 = load i32, ptr %i_subpel_refine, align 8
  %cmp4243 = icmp slt i32 %795, 3
  br i1 %cmp4243, label %if.then4245, label %if.then4254

if.then4245:                                      ; preds = %land.lhs.true4240
  %add4248 = add nsw i32 %789, %add4234
  store i32 %add4248, ptr %792, align 8
  br label %if.end4249

if.end4249:                                       ; preds = %if.then4245, %sw.epilog
  %.pr = load i32, ptr %i_subpel_refine, align 8
  %cmp4252 = icmp sgt i32 %.pr, 1
  br i1 %cmp4252, label %if.then4254, label %if.end4267

if.then4254:                                      ; preds = %land.lhs.true4240, %if.end4249
  %796 = phi i32 [ %.pr, %if.end4249 ], [ %795, %land.lhs.true4240 ]
  %idxprom4257 = zext nneg i32 %796 to i64
  %arrayidx4258 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %idxprom4257
  %arrayidx4259 = getelementptr inbounds i8, ptr %arrayidx4258, i64 2
  %797 = load i8, ptr %arrayidx4259, align 2
  %conv4260 = zext i8 %797 to i32
  %arrayidx4265 = getelementptr inbounds i8, ptr %arrayidx4258, i64 3
  %798 = load i8, ptr %arrayidx4265, align 1
  %conv4266 = zext i8 %798 to i32
  call fastcc void @refine_subpel(ptr noundef nonnull %h, ptr noundef nonnull %m, i32 noundef %conv4260, i32 noundef %conv4266, ptr noundef %p_halfpel_thresh, i32 noundef 0)
  br label %if.end4267

if.end4267:                                       ; preds = %if.then4254, %if.end4249
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %costs) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %pix) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @refine_subpel(ptr nocapture noundef readonly %h, ptr noundef %m, i32 noundef %hpel_iters, i32 noundef %qpel_iters, ptr noundef %p_halfpel_thresh, i32 noundef %b_refine_qpel) unnamed_addr #0 {
entry:
  %pix = alloca [1152 x i8], align 16
  %stride = alloca i32, align 4
  %costs = alloca [4 x i32], align 16
  %stride78 = alloca i32, align 4
  %stride245 = alloca i32, align 4
  %stride433 = alloca i32, align 4
  %stride572 = alloca i32, align 4
  %stride711 = alloca i32, align 4
  %stride850 = alloca i32, align 4
  %costs1025 = alloca [4 x i32], align 16
  %0 = load i32, ptr %m, align 16
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 8
  %h4 = getelementptr inbounds i8, ptr %arrayidx, i64 4
  %2 = load i32, ptr %h4, align 4
  %p_cost_mv = getelementptr inbounds i8, ptr %m, i64 8
  %3 = load ptr, ptr %p_cost_mv, align 8
  %mvp = getelementptr inbounds i8, ptr %m, i64 128
  %4 = load i16, ptr %mvp, align 16
  %idx.ext = sext i16 %4 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i16, ptr %3, i64 %idx.neg
  %arrayidx8 = getelementptr inbounds i8, ptr %m, i64 130
  %5 = load i16, ptr %arrayidx8, align 2
  %idx.ext10 = sext i16 %5 to i64
  %idx.neg11 = sub nsw i64 0, %idx.ext10
  %add.ptr12 = getelementptr inbounds i16, ptr %3, i64 %idx.neg11
  %b_chroma_me15 = getelementptr inbounds i8, ptr %h, i64 16412
  %6 = load i32, ptr %b_chroma_me15, align 4
  %tobool = icmp ne i32 %6, 0
  %cmp = icmp slt i32 %0, 4
  %7 = and i1 %cmp, %tobool
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %8 = load i32, ptr %b_interlaced, align 4
  %i_ref = getelementptr inbounds i8, ptr %m, i64 20
  %9 = load i32, ptr %i_ref, align 4
  %and = and i32 %9, %8
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388
  %10 = load i32, ptr %i_mb_y, align 4
  %and20 = shl i32 %10, 2
  %mul = and i32 %and20, 4
  %sub = add nsw i32 %mul, -2
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry ]
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %pix) #6
  %mv = getelementptr inbounds i8, ptr %m, i64 140
  %11 = load i16, ptr %mv, align 4
  %conv22 = sext i16 %11 to i32
  %arrayidx24 = getelementptr inbounds i8, ptr %m, i64 142
  %12 = load i16, ptr %arrayidx24, align 2
  %conv25 = sext i16 %12 to i32
  %cost = getelementptr inbounds i8, ptr %m, i64 136
  %13 = load i32, ptr %cost, align 8
  %tobool26.not = icmp eq i32 %hpel_iters, 0
  br i1 %tobool26.not, label %cleanup228, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 16408
  %14 = load i32, ptr %i_subpel_refine, align 8
  %cmp28 = icmp slt i32 %14, 3
  br i1 %cmp28, label %if.then, label %if.end75

if.then:                                          ; preds = %land.lhs.true
  %conv32 = sext i16 %4 to i32
  %mv_min_spel = getelementptr inbounds i8, ptr %h, i64 16456
  %15 = load i32, ptr %mv_min_spel, align 8
  %add = add nsw i32 %15, 2
  %mv_max_spel = getelementptr inbounds i8, ptr %h, i64 16464
  %16 = load i32, ptr %mv_max_spel, align 16
  %sub37 = add nsw i32 %16, -2
  %cmp.i = icmp sgt i32 %add, %conv32
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv32, i32 %sub37)
  %cond5.i = select i1 %cmp.i, i32 %add, i32 %cond.i
  %conv40 = sext i16 %5 to i32
  %arrayidx43 = getelementptr inbounds i8, ptr %h, i64 16460
  %17 = load i32, ptr %arrayidx43, align 4
  %add44 = add nsw i32 %17, 2
  %arrayidx47 = getelementptr inbounds i8, ptr %h, i64 16468
  %18 = load i32, ptr %arrayidx47, align 4
  %sub48 = add nsw i32 %18, -2
  %cmp.i1770 = icmp sgt i32 %add44, %conv40
  %cond.i1771 = tail call i32 @llvm.smin.i32(i32 %conv40, i32 %sub48)
  %cond5.i1772 = select i1 %cmp.i1770, i32 %add44, i32 %cond.i1771
  %19 = icmp eq i32 %cond5.i, %conv22
  %20 = icmp eq i32 %cond5.i1772, %conv25
  %tobool52.not = and i1 %19, %20
  br i1 %tobool52.not, label %if.end75, label %if.then53

if.then53:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride) #6
  store i32 16, ptr %stride, align 4
  %get_ref = getelementptr inbounds i8, ptr %h, i64 32624
  %21 = load ptr, ptr %get_ref, align 8
  %p_fref = getelementptr inbounds i8, ptr %m, i64 32
  %i_stride = getelementptr inbounds i8, ptr %m, i64 120
  %22 = load i32, ptr %i_stride, align 8
  %weight = getelementptr inbounds i8, ptr %m, i64 24
  %23 = load ptr, ptr %weight, align 8
  %call57 = call ptr %21(ptr noundef nonnull %pix, ptr noundef nonnull %stride, ptr noundef nonnull %p_fref, i32 noundef %22, i32 noundef %cond5.i, i32 noundef %cond5.i1772, i32 noundef %1, i32 noundef %2, ptr noundef %23) #6
  %fpelcmp = getelementptr inbounds i8, ptr %h, i64 31928
  %arrayidx60 = getelementptr inbounds [7 x ptr], ptr %fpelcmp, i64 0, i64 %idxprom
  %24 = load ptr, ptr %arrayidx60, align 8
  %p_fenc = getelementptr inbounds i8, ptr %m, i64 88
  %25 = load ptr, ptr %p_fenc, align 8
  %26 = load i32, ptr %stride, align 4
  %call62 = call i32 %24(ptr noundef %25, i32 noundef 16, ptr noundef %call57, i32 noundef %26) #6
  %idxprom63 = sext i32 %cond5.i to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2
  %conv65 = zext i16 %27 to i32
  %add66 = add nsw i32 %call62, %conv65
  %idxprom67 = sext i32 %cond5.i1772 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom67
  %28 = load i16, ptr %arrayidx68, align 2
  %conv69 = zext i16 %28 to i32
  %add70 = add nsw i32 %add66, %conv69
  %cmp71 = icmp slt i32 %add70, %13
  %bcost.0 = call i32 @llvm.smin.i32(i32 %add70, i32 %13)
  %bmy.0 = select i1 %cmp71, i32 %cond5.i1772, i32 %conv25
  %bmx.0 = select i1 %cmp71, i32 %cond5.i, i32 %conv22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then, %if.then53, %land.lhs.true
  %bcost.2 = phi i32 [ %13, %land.lhs.true ], [ %bcost.0, %if.then53 ], [ %13, %if.then ]
  %bmy.2 = phi i32 [ %conv25, %land.lhs.true ], [ %bmy.0, %if.then53 ], [ %conv25, %if.then ]
  %bmx.2 = phi i32 [ %conv22, %land.lhs.true ], [ %bmx.0, %if.then53 ], [ %conv22, %if.then ]
  %cmp761799 = icmp sgt i32 %hpel_iters, 0
  br i1 %cmp761799, label %for.body.lr.ph, label %cleanup228

for.body.lr.ph:                                   ; preds = %if.end75
  %get_ref80 = getelementptr inbounds i8, ptr %h, i64 32624
  %p_fref82 = getelementptr inbounds i8, ptr %m, i64 32
  %i_stride84 = getelementptr inbounds i8, ptr %m, i64 120
  %add87 = add nsw i32 %2, 1
  %weight88 = getelementptr inbounds i8, ptr %m, i64 24
  %add.ptr94 = getelementptr inbounds i8, ptr %pix, i64 32
  %add100 = add nsw i32 %1, 4
  %fpelcmp_x4 = getelementptr inbounds i8, ptr %h, i64 32040
  %arrayidx109 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x4, i64 0, i64 %idxprom
  %p_fenc110 = getelementptr inbounds i8, ptr %m, i64 88
  %arrayidx138 = getelementptr inbounds i8, ptr %costs, i64 4
  %arrayidx163 = getelementptr inbounds i8, ptr %costs, i64 8
  %arrayidx188 = getelementptr inbounds i8, ptr %costs, i64 12
  br label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %i.01800, -1
  %cmp76 = icmp sgt i32 %i.01800, 1
  br i1 %cmp76, label %for.body, label %cleanup228

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %bmx.31803 = phi i32 [ %bmx.2, %for.body.lr.ph ], [ %bmx.5, %for.cond ]
  %bmy.31802 = phi i32 [ %bmy.2, %for.body.lr.ph ], [ %bmy.7, %for.cond ]
  %bcost.31801 = phi i32 [ %bcost.2, %for.body.lr.ph ], [ %bcost.7, %for.cond ]
  %i.01800 = phi i32 [ %hpel_iters, %for.body.lr.ph ], [ %dec, %for.cond ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %costs) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride78) #6
  store i32 64, ptr %stride78, align 4
  %29 = load ptr, ptr %get_ref80, align 8
  %30 = load i32, ptr %i_stride84, align 8
  %sub86 = add nsw i32 %bmy.31802, -2
  %31 = load ptr, ptr %weight88, align 8
  %call90 = call ptr %29(ptr noundef nonnull %pix, ptr noundef nonnull %stride78, ptr noundef nonnull %p_fref82, i32 noundef %30, i32 noundef %bmx.31803, i32 noundef %sub86, i32 noundef %1, i32 noundef %add87, ptr noundef %31) #6
  %32 = load ptr, ptr %get_ref80, align 8
  %33 = load i32, ptr %i_stride84, align 8
  %sub99 = add nsw i32 %bmx.31803, -2
  %34 = load ptr, ptr %weight88, align 8
  %call103 = call ptr %32(ptr noundef nonnull %add.ptr94, ptr noundef nonnull %stride78, ptr noundef nonnull %p_fref82, i32 noundef %33, i32 noundef %sub99, i32 noundef %bmy.31802, i32 noundef %add100, i32 noundef %2, ptr noundef %34) #6
  %35 = load i32, ptr %stride78, align 4
  %idx.ext104 = sext i32 %35 to i64
  %add.ptr105 = getelementptr inbounds i8, ptr %call90, i64 %idx.ext104
  %add.ptr106 = getelementptr inbounds i8, ptr %call103, i64 1
  %36 = load ptr, ptr %arrayidx109, align 8
  %37 = load ptr, ptr %p_fenc110, align 8
  call void %36(ptr noundef %37, ptr noundef %call90, ptr noundef %add.ptr105, ptr noundef %call103, ptr noundef nonnull %add.ptr106, i32 noundef %35, ptr noundef nonnull %costs) #6
  %38 = load i32, ptr %costs, align 16
  %idxprom114 = sext i32 %bmx.31803 to i64
  %arrayidx115 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom114
  %39 = load i16, ptr %arrayidx115, align 2
  %conv116 = zext i16 %39 to i32
  %add117 = add nsw i32 %38, %conv116
  %idxprom119 = sext i32 %sub86 to i64
  %arrayidx120 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom119
  %40 = load i16, ptr %arrayidx120, align 2
  %conv121 = zext i16 %40 to i32
  %add122 = add nsw i32 %add117, %conv121
  %cmp123 = icmp slt i32 %add122, %bcost.31801
  %spec.select = call i32 @llvm.smin.i32(i32 %add122, i32 %bcost.31801)
  %spec.select1761 = select i1 %cmp123, i32 %sub86, i32 %bmy.31802
  %41 = load i32, ptr %arrayidx138, align 4
  %add142 = add nsw i32 %41, %conv116
  %add143 = add nsw i32 %bmy.31802, 2
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom144
  %42 = load i16, ptr %arrayidx145, align 2
  %conv146 = zext i16 %42 to i32
  %add147 = add nsw i32 %add142, %conv146
  %cmp148 = icmp slt i32 %add147, %spec.select
  %bcost.5 = call i32 @llvm.smin.i32(i32 %add147, i32 %spec.select)
  %bmy.5 = select i1 %cmp148, i32 %add143, i32 %spec.select1761
  %43 = load i32, ptr %arrayidx163, align 8
  %idxprom165 = sext i32 %sub99 to i64
  %arrayidx166 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom165
  %44 = load i16, ptr %arrayidx166, align 2
  %conv167 = zext i16 %44 to i32
  %add168 = add nsw i32 %43, %conv167
  %idxprom169 = sext i32 %bmy.31802 to i64
  %arrayidx170 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom169
  %45 = load i16, ptr %arrayidx170, align 2
  %conv171 = zext i16 %45 to i32
  %add172 = add nsw i32 %add168, %conv171
  %cmp173 = icmp slt i32 %add172, %bcost.5
  %bcost.6 = call i32 @llvm.smin.i32(i32 %add172, i32 %bcost.5)
  %bmx.4 = select i1 %cmp173, i32 %sub99, i32 %bmx.31803
  %46 = load i32, ptr %arrayidx188, align 4
  %add189 = add nsw i32 %bmx.31803, 2
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom190
  %47 = load i16, ptr %arrayidx191, align 2
  %conv192 = zext i16 %47 to i32
  %add193 = add i32 %46, %conv171
  %add197 = add i32 %add193, %conv192
  %cmp198 = icmp slt i32 %add197, %bcost.6
  %bcost.7 = call i32 @llvm.smin.i32(i32 %add197, i32 %bcost.6)
  %48 = or i1 %cmp173, %cmp198
  %bmy.7 = select i1 %48, i32 %bmy.31802, i32 %bmy.5
  %bmx.5 = select i1 %cmp198, i32 %add189, i32 %bmx.4
  %cmp215 = icmp ne i32 %bmy.7, %bmy.31802
  %49 = or i1 %cmp173, %cmp215
  %and2171759.not = or i1 %cmp198, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride78) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %costs) #6
  br i1 %and2171759.not, label %for.cond, label %cleanup228

cleanup228:                                       ; preds = %for.body, %for.cond, %cond.end, %if.end75
  %bcost.8 = phi i32 [ %bcost.2, %if.end75 ], [ %13, %cond.end ], [ %bcost.7, %for.cond ], [ %bcost.7, %for.body ]
  %bmy.8 = phi i32 [ %bmy.2, %if.end75 ], [ %conv25, %cond.end ], [ %bmy.31802, %for.body ], [ %bmy.7, %for.cond ]
  %bmx.6 = phi i32 [ %bmx.2, %if.end75 ], [ %conv22, %cond.end ], [ %bmx.5, %for.cond ], [ %bmx.5, %for.body ]
  %tobool229 = icmp ne i32 %b_refine_qpel, 0
  br i1 %tobool229, label %if.end369, label %land.lhs.true230

land.lhs.true230:                                 ; preds = %cleanup228
  %mbcmp_unaligned = getelementptr inbounds i8, ptr %h, i64 31872
  %50 = load ptr, ptr %mbcmp_unaligned, align 8
  %fpelcmp234 = getelementptr inbounds i8, ptr %h, i64 31928
  %51 = load ptr, ptr %fpelcmp234, align 8
  %cmp236 = icmp ne ptr %50, %51
  %or.cond = select i1 %cmp236, i1 true, i1 %7
  br i1 %or.cond, label %if.then244, label %if.end369

if.then244:                                       ; preds = %land.lhs.true230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride245) #6
  store i32 16, ptr %stride245, align 4
  %get_ref248 = getelementptr inbounds i8, ptr %h, i64 32624
  %52 = load ptr, ptr %get_ref248, align 8
  %p_fref250 = getelementptr inbounds i8, ptr %m, i64 32
  %i_stride252 = getelementptr inbounds i8, ptr %m, i64 120
  %53 = load i32, ptr %i_stride252, align 8
  %weight254 = getelementptr inbounds i8, ptr %m, i64 24
  %54 = load ptr, ptr %weight254, align 8
  %call256 = call ptr %52(ptr noundef nonnull %pix, ptr noundef nonnull %stride245, ptr noundef nonnull %p_fref250, i32 noundef %53, i32 noundef %bmx.6, i32 noundef %bmy.8, i32 noundef %1, i32 noundef %2, ptr noundef %54) #6
  %arrayidx261 = getelementptr inbounds [7 x ptr], ptr %mbcmp_unaligned, i64 0, i64 %idxprom
  %55 = load ptr, ptr %arrayidx261, align 8
  %p_fenc262 = getelementptr inbounds i8, ptr %m, i64 88
  %56 = load ptr, ptr %p_fenc262, align 8
  %57 = load i32, ptr %stride245, align 4
  %call264 = call i32 %55(ptr noundef %56, i32 noundef 16, ptr noundef %call256, i32 noundef %57) #6
  %idxprom265 = sext i32 %bmx.6 to i64
  %arrayidx266 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom265
  %58 = load i16, ptr %arrayidx266, align 2
  %conv267 = zext i16 %58 to i32
  %add268 = add nsw i32 %call264, %conv267
  %idxprom269 = sext i32 %bmy.8 to i64
  %arrayidx270 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom269
  %59 = load i16, ptr %arrayidx270, align 2
  %conv271 = zext i16 %59 to i32
  %add272 = add nsw i32 %add268, %conv271
  %cmp275 = icmp slt i32 %add272, 268435456
  %or.cond1762 = select i1 %7, i1 %cmp275, i1 false
  br i1 %or.cond1762, label %if.then277, label %if.end363

if.then277:                                       ; preds = %if.then244
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632
  %60 = load ptr, ptr %mc_chroma, align 8
  %arrayidx281 = getelementptr inbounds i8, ptr %m, i64 64
  %61 = load ptr, ptr %arrayidx281, align 16
  %arrayidx283 = getelementptr inbounds i8, ptr %m, i64 124
  %62 = load i32, ptr %arrayidx283, align 4
  %add284 = add nsw i32 %bmy.8, %cond
  %div = sdiv i32 %1, 2
  %div285 = sdiv i32 %2, 2
  call void %60(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %61, i32 noundef %62, i32 noundef %bmx.6, i32 noundef %add284, i32 noundef %div, i32 noundef %div285) #6
  %63 = load ptr, ptr %weight254, align 8
  %weightfn = getelementptr inbounds i8, ptr %63, i64 112
  %64 = load ptr, ptr %weightfn, align 16
  %tobool288.not = icmp eq ptr %64, null
  br i1 %tobool288.not, label %if.end306, label %if.then289

if.then289:                                       ; preds = %if.then277
  %arrayidx287 = getelementptr inbounds i8, ptr %63, i64 64
  %shr = ashr i32 %1, 3
  %idxprom296 = sext i32 %shr to i64
  %arrayidx297 = getelementptr inbounds ptr, ptr %64, i64 %idxprom296
  %65 = load ptr, ptr %arrayidx297, align 8
  %shr305 = ashr i32 %2, 1
  call void %65(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx287, i32 noundef %shr305) #6
  br label %if.end306

if.end306:                                        ; preds = %if.then289, %if.then277
  %mbcmp = getelementptr inbounds i8, ptr %h, i64 31816
  %add308 = add nsw i32 %0, 3
  %idxprom309 = sext i32 %add308 to i64
  %arrayidx310 = getelementptr inbounds [7 x ptr], ptr %mbcmp, i64 0, i64 %idxprom309
  %66 = load ptr, ptr %arrayidx310, align 8
  %arrayidx312 = getelementptr inbounds i8, ptr %m, i64 96
  %67 = load ptr, ptr %arrayidx312, align 8
  %call314 = call i32 %66(ptr noundef %67, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6
  %add315 = add nsw i32 %call314, %add272
  %cmp316 = icmp slt i32 %add315, 268435456
  br i1 %cmp316, label %if.then318, label %if.end363

if.then318:                                       ; preds = %if.end306
  %68 = load ptr, ptr %mc_chroma, align 8
  %arrayidx323 = getelementptr inbounds i8, ptr %m, i64 72
  %69 = load ptr, ptr %arrayidx323, align 8
  %70 = load i32, ptr %arrayidx283, align 4
  call void %68(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %69, i32 noundef %70, i32 noundef %bmx.6, i32 noundef %add284, i32 noundef %div, i32 noundef %div285) #6
  %71 = load ptr, ptr %weight254, align 8
  %weightfn331 = getelementptr inbounds i8, ptr %71, i64 176
  %72 = load ptr, ptr %weightfn331, align 16
  %tobool332.not = icmp eq ptr %72, null
  br i1 %tobool332.not, label %if.end351, label %if.then333

if.then333:                                       ; preds = %if.then318
  %arrayidx330 = getelementptr inbounds i8, ptr %71, i64 128
  %shr340 = ashr i32 %1, 3
  %idxprom341 = sext i32 %shr340 to i64
  %arrayidx342 = getelementptr inbounds ptr, ptr %72, i64 %idxprom341
  %73 = load ptr, ptr %arrayidx342, align 8
  %shr350 = ashr i32 %2, 1
  call void %73(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx330, i32 noundef %shr350) #6
  br label %if.end351

if.end351:                                        ; preds = %if.then333, %if.then318
  %74 = load ptr, ptr %arrayidx310, align 8
  %arrayidx358 = getelementptr inbounds i8, ptr %m, i64 104
  %75 = load ptr, ptr %arrayidx358, align 8
  %call360 = call i32 %74(ptr noundef %75, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6
  %add361 = add nsw i32 %call360, %add315
  br label %if.end363

if.end363:                                        ; preds = %if.end306, %if.end351, %if.then244
  %cost257.0 = phi i32 [ %add361, %if.end351 ], [ %add315, %if.end306 ], [ %add272, %if.then244 ]
  %spec.select1763 = call i32 @llvm.smin.i32(i32 %cost257.0, i32 268435456)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride245) #6
  br label %if.end369

if.end369:                                        ; preds = %if.end363, %land.lhs.true230, %cleanup228
  %bcost.10 = phi i32 [ %bcost.8, %cleanup228 ], [ %spec.select1763, %if.end363 ], [ %bcost.8, %land.lhs.true230 ]
  %tobool370.not = icmp eq ptr %p_halfpel_thresh, null
  br i1 %tobool370.not, label %if.end389, label %if.then371

if.then371:                                       ; preds = %if.end369
  %mul372 = mul nsw i32 %bcost.10, 7
  %shr373 = ashr i32 %mul372, 3
  %76 = load i32, ptr %p_halfpel_thresh, align 4
  %cmp374 = icmp sgt i32 %shr373, %76
  br i1 %cmp374, label %if.then376, label %if.else

if.then376:                                       ; preds = %if.then371
  store i32 %bcost.10, ptr %cost, align 8
  %conv378 = trunc i32 %bmx.6 to i16
  store i16 %conv378, ptr %mv, align 4
  %conv381 = trunc i32 %bmy.8 to i16
  store i16 %conv381, ptr %arrayidx24, align 2
  br label %cleanup1200

if.else:                                          ; preds = %if.then371
  %cmp384 = icmp slt i32 %bcost.10, %76
  br i1 %cmp384, label %if.then386, label %if.end389

if.then386:                                       ; preds = %if.else
  store i32 %bcost.10, ptr %p_halfpel_thresh, align 4
  br label %if.end389

if.end389:                                        ; preds = %if.then386, %if.else, %if.end369
  %i_subpel_refine391 = getelementptr inbounds i8, ptr %h, i64 16408
  %77 = load i32, ptr %i_subpel_refine391, align 8
  %cmp392 = icmp sgt i32 %77, 1
  %mv_min_spel402 = getelementptr inbounds i8, ptr %h, i64 16456
  %arrayidx403 = getelementptr inbounds i8, ptr %h, i64 16460
  br i1 %cmp392, label %for.cond396.preheader, label %if.else1000

for.cond396.preheader:                            ; preds = %if.end389
  %mv_max_spel408 = getelementptr inbounds i8, ptr %h, i64 16464
  %arrayidx409 = getelementptr inbounds i8, ptr %h, i64 16468
  %cmp3971809 = icmp sgt i32 %qpel_iters, 0
  br i1 %cmp3971809, label %for.body400.lr.ph, label %if.end1185

for.body400.lr.ph:                                ; preds = %for.cond396.preheader
  %get_ref436 = getelementptr inbounds i8, ptr %h, i64 32624
  %p_fref438 = getelementptr inbounds i8, ptr %m, i64 32
  %i_stride440 = getelementptr inbounds i8, ptr %m, i64 120
  %weight443 = getelementptr inbounds i8, ptr %m, i64 24
  %mbcmp_unaligned448 = getelementptr inbounds i8, ptr %h, i64 31872
  %arrayidx450 = getelementptr inbounds [7 x ptr], ptr %mbcmp_unaligned448, i64 0, i64 %idxprom
  %p_fenc451 = getelementptr inbounds i8, ptr %m, i64 88
  %mc_chroma469 = getelementptr inbounds i8, ptr %h, i64 32632
  %arrayidx472 = getelementptr inbounds i8, ptr %m, i64 64
  %arrayidx474 = getelementptr inbounds i8, ptr %m, i64 124
  %div477 = sdiv i32 %1, 2
  %div478 = sdiv i32 %2, 2
  %shr490 = ashr i32 %1, 3
  %idxprom491 = sext i32 %shr490 to i64
  %shr500 = ashr i32 %2, 1
  %mbcmp503 = getelementptr inbounds i8, ptr %h, i64 31816
  %add504 = add nsw i32 %0, 3
  %idxprom505 = sext i32 %add504 to i64
  %arrayidx506 = getelementptr inbounds [7 x ptr], ptr %mbcmp503, i64 0, i64 %idxprom505
  %arrayidx508 = getelementptr inbounds i8, ptr %m, i64 96
  %arrayidx519 = getelementptr inbounds i8, ptr %m, i64 72
  %arrayidx555 = getelementptr inbounds i8, ptr %m, i64 104
  br label %for.body400

for.cond396:                                      ; preds = %if.end983
  %dec997 = add nsw i32 %i395.01810, -1
  %cmp397 = icmp sgt i32 %i395.01810, 1
  br i1 %cmp397, label %for.body400, label %if.end1185

for.body400:                                      ; preds = %for.body400.lr.ph, %for.cond396
  %bmx.91817 = phi i32 [ %bmx.6, %for.body400.lr.ph ], [ %bmx.17, %for.cond396 ]
  %bmy.111814 = phi i32 [ %bmy.8, %for.body400.lr.ph ], [ %bmy.19, %for.cond396 ]
  %bcost.111813 = phi i32 [ %bcost.10, %for.body400.lr.ph ], [ %bcost.19, %for.cond396 ]
  %bdir.01811 = phi i32 [ -1, %for.body400.lr.ph ], [ %bdir.8, %for.cond396 ]
  %i395.01810 = phi i32 [ %qpel_iters, %for.body400.lr.ph ], [ %dec997, %for.cond396 ]
  %78 = load i32, ptr %arrayidx403, align 4
  %cmp404.not = icmp sgt i32 %bmy.111814, %78
  br i1 %cmp404.not, label %lor.lhs.false406, label %if.end1185

lor.lhs.false406:                                 ; preds = %for.body400
  %79 = load i32, ptr %arrayidx409, align 4
  %cmp410.not = icmp slt i32 %bmy.111814, %79
  br i1 %cmp410.not, label %lor.lhs.false412, label %if.end1185

lor.lhs.false412:                                 ; preds = %lor.lhs.false406
  %80 = load i32, ptr %mv_min_spel402, align 8
  %cmp416.not = icmp sgt i32 %bmx.91817, %80
  br i1 %cmp416.not, label %lor.lhs.false418, label %if.end1185

lor.lhs.false418:                                 ; preds = %lor.lhs.false412
  %81 = load i32, ptr %mv_max_spel408, align 16
  %cmp422.not = icmp slt i32 %bmx.91817, %81
  br i1 %cmp422.not, label %if.end425, label %if.end1185

if.end425:                                        ; preds = %lor.lhs.false418
  %cmp430 = icmp ne i32 %bdir.01811, 1
  %or.cond1218 = select i1 %tobool229, i1 true, i1 %cmp430
  br i1 %or.cond1218, label %if.then432, label %if.end425.if.then571_crit_edge

if.end425.if.then571_crit_edge:                   ; preds = %if.end425
  %.pre = sext i32 %bmx.91817 to i64
  br label %if.then571

if.then432:                                       ; preds = %if.end425
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride433) #6
  store i32 16, ptr %stride433, align 4
  %82 = load ptr, ptr %get_ref436, align 8
  %83 = load i32, ptr %i_stride440, align 8
  %sub442 = add nsw i32 %bmy.111814, -1
  %84 = load ptr, ptr %weight443, align 8
  %call445 = call ptr %82(ptr noundef nonnull %pix, ptr noundef nonnull %stride433, ptr noundef nonnull %p_fref438, i32 noundef %83, i32 noundef %bmx.91817, i32 noundef %sub442, i32 noundef %1, i32 noundef %2, ptr noundef %84) #6
  %85 = load ptr, ptr %arrayidx450, align 8
  %86 = load ptr, ptr %p_fenc451, align 8
  %87 = load i32, ptr %stride433, align 4
  %call453 = call i32 %85(ptr noundef %86, i32 noundef 16, ptr noundef %call445, i32 noundef %87) #6
  %idxprom454 = sext i32 %bmx.91817 to i64
  %arrayidx455 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom454
  %88 = load i16, ptr %arrayidx455, align 2
  %conv456 = zext i16 %88 to i32
  %add457 = add nsw i32 %call453, %conv456
  %idxprom459 = sext i32 %sub442 to i64
  %arrayidx460 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom459
  %89 = load i16, ptr %arrayidx460, align 2
  %conv461 = zext i16 %89 to i32
  %add462 = add nsw i32 %add457, %conv461
  %cmp465 = icmp slt i32 %add462, %bcost.111813
  %or.cond1764 = select i1 %7, i1 %cmp465, i1 false
  br i1 %or.cond1764, label %if.then467, label %if.end566

if.then467:                                       ; preds = %if.then432
  %90 = load ptr, ptr %mc_chroma469, align 8
  %91 = load ptr, ptr %arrayidx472, align 16
  %92 = load i32, ptr %arrayidx474, align 4
  %add476 = add nsw i32 %sub442, %cond
  call void %90(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %91, i32 noundef %92, i32 noundef %bmx.91817, i32 noundef %add476, i32 noundef %div477, i32 noundef %div478) #6
  %93 = load ptr, ptr %weight443, align 8
  %weightfn481 = getelementptr inbounds i8, ptr %93, i64 112
  %94 = load ptr, ptr %weightfn481, align 16
  %tobool482.not = icmp eq ptr %94, null
  br i1 %tobool482.not, label %if.end501, label %if.then483

if.then483:                                       ; preds = %if.then467
  %arrayidx480 = getelementptr inbounds i8, ptr %93, i64 64
  %arrayidx492 = getelementptr inbounds ptr, ptr %94, i64 %idxprom491
  %95 = load ptr, ptr %arrayidx492, align 8
  call void %95(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx480, i32 noundef %shr500) #6
  br label %if.end501

if.end501:                                        ; preds = %if.then483, %if.then467
  %96 = load ptr, ptr %arrayidx506, align 8
  %97 = load ptr, ptr %arrayidx508, align 8
  %call510 = call i32 %96(ptr noundef %97, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6
  %add511 = add nsw i32 %call510, %add462
  %cmp512 = icmp slt i32 %add511, %bcost.111813
  br i1 %cmp512, label %if.then514, label %if.end566

if.then514:                                       ; preds = %if.end501
  %98 = load ptr, ptr %mc_chroma469, align 8
  %99 = load ptr, ptr %arrayidx519, align 8
  %100 = load i32, ptr %arrayidx474, align 4
  call void %98(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %99, i32 noundef %100, i32 noundef %bmx.91817, i32 noundef %add476, i32 noundef %div477, i32 noundef %div478) #6
  %101 = load ptr, ptr %weight443, align 8
  %weightfn528 = getelementptr inbounds i8, ptr %101, i64 176
  %102 = load ptr, ptr %weightfn528, align 16
  %tobool529.not = icmp eq ptr %102, null
  br i1 %tobool529.not, label %if.end548, label %if.then530

if.then530:                                       ; preds = %if.then514
  %arrayidx527 = getelementptr inbounds i8, ptr %101, i64 128
  %arrayidx539 = getelementptr inbounds ptr, ptr %102, i64 %idxprom491
  %103 = load ptr, ptr %arrayidx539, align 8
  call void %103(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx527, i32 noundef %shr500) #6
  br label %if.end548

if.end548:                                        ; preds = %if.then530, %if.then514
  %104 = load ptr, ptr %arrayidx506, align 8
  %105 = load ptr, ptr %arrayidx555, align 8
  %call557 = call i32 %104(ptr noundef %105, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6
  %add558 = add nsw i32 %call557, %add511
  br label %if.end566

if.end566:                                        ; preds = %if.then432, %if.end548, %if.end501
  %cost446.0 = phi i32 [ %add558, %if.end548 ], [ %add511, %if.end501 ], [ %add462, %if.then432 ]
  %cmp561 = icmp slt i32 %cost446.0, %bcost.111813
  %bdir.1 = select i1 %cmp561, i32 0, i32 %bdir.01811
  %bcost.12 = call i32 @llvm.smin.i32(i32 %cost446.0, i32 %bcost.111813)
  %bmy.12 = select i1 %cmp561, i32 %sub442, i32 %bmy.111814
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride433) #6
  %cmp569 = icmp ne i32 %bdir.01811, 0
  %or.cond1219 = select i1 %tobool229, i1 true, i1 %cmp569
  br i1 %or.cond1219, label %if.then571, label %if.then710

if.then571:                                       ; preds = %if.end425.if.then571_crit_edge, %if.end566
  %idxprom593.pre-phi = phi i64 [ %.pre, %if.end425.if.then571_crit_edge ], [ %idxprom454, %if.end566 ]
  %bmy.131780 = phi i32 [ %bmy.111814, %if.end425.if.then571_crit_edge ], [ %bmy.12, %if.end566 ]
  %bcost.131779 = phi i32 [ %bcost.111813, %if.end425.if.then571_crit_edge ], [ %bcost.12, %if.end566 ]
  %bdir.21778 = phi i32 [ 1, %if.end425.if.then571_crit_edge ], [ %bdir.1, %if.end566 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride572) #6
  store i32 16, ptr %stride572, align 4
  %106 = load ptr, ptr %get_ref436, align 8
  %107 = load i32, ptr %i_stride440, align 8
  %add581 = add nsw i32 %bmy.111814, 1
  %108 = load ptr, ptr %weight443, align 8
  %call584 = call ptr %106(ptr noundef nonnull %pix, ptr noundef nonnull %stride572, ptr noundef nonnull %p_fref438, i32 noundef %107, i32 noundef %bmx.91817, i32 noundef %add581, i32 noundef %1, i32 noundef %2, ptr noundef %108) #6
  %109 = load ptr, ptr %arrayidx450, align 8
  %110 = load ptr, ptr %p_fenc451, align 8
  %111 = load i32, ptr %stride572, align 4
  %call592 = call i32 %109(ptr noundef %110, i32 noundef 16, ptr noundef %call584, i32 noundef %111) #6
  %arrayidx594 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom593.pre-phi
  %112 = load i16, ptr %arrayidx594, align 2
  %conv595 = zext i16 %112 to i32
  %add596 = add nsw i32 %call592, %conv595
  %idxprom598 = sext i32 %add581 to i64
  %arrayidx599 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom598
  %113 = load i16, ptr %arrayidx599, align 2
  %conv600 = zext i16 %113 to i32
  %add601 = add nsw i32 %add596, %conv600
  %cmp604 = icmp slt i32 %add601, %bcost.131779
  %or.cond1765 = select i1 %7, i1 %cmp604, i1 false
  br i1 %or.cond1765, label %if.then606, label %if.end705

if.then606:                                       ; preds = %if.then571
  %114 = load ptr, ptr %mc_chroma469, align 8
  %115 = load ptr, ptr %arrayidx472, align 16
  %116 = load i32, ptr %arrayidx474, align 4
  %add615 = add nsw i32 %add581, %cond
  call void %114(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %115, i32 noundef %116, i32 noundef %bmx.91817, i32 noundef %add615, i32 noundef %div477, i32 noundef %div478) #6
  %117 = load ptr, ptr %weight443, align 8
  %weightfn620 = getelementptr inbounds i8, ptr %117, i64 112
  %118 = load ptr, ptr %weightfn620, align 16
  %tobool621.not = icmp eq ptr %118, null
  br i1 %tobool621.not, label %if.end640, label %if.then622

if.then622:                                       ; preds = %if.then606
  %arrayidx619 = getelementptr inbounds i8, ptr %117, i64 64
  %arrayidx631 = getelementptr inbounds ptr, ptr %118, i64 %idxprom491
  %119 = load ptr, ptr %arrayidx631, align 8
  call void %119(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx619, i32 noundef %shr500) #6
  br label %if.end640

if.end640:                                        ; preds = %if.then622, %if.then606
  %120 = load ptr, ptr %arrayidx506, align 8
  %121 = load ptr, ptr %arrayidx508, align 8
  %call649 = call i32 %120(ptr noundef %121, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6
  %add650 = add nsw i32 %call649, %add601
  %cmp651 = icmp slt i32 %add650, %bcost.131779
  br i1 %cmp651, label %if.then653, label %if.end705

if.then653:                                       ; preds = %if.end640
  %122 = load ptr, ptr %mc_chroma469, align 8
  %123 = load ptr, ptr %arrayidx519, align 8
  %124 = load i32, ptr %arrayidx474, align 4
  call void %122(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %123, i32 noundef %124, i32 noundef %bmx.91817, i32 noundef %add615, i32 noundef %div477, i32 noundef %div478) #6
  %125 = load ptr, ptr %weight443, align 8
  %weightfn667 = getelementptr inbounds i8, ptr %125, i64 176
  %126 = load ptr, ptr %weightfn667, align 16
  %tobool668.not = icmp eq ptr %126, null
  br i1 %tobool668.not, label %if.end687, label %if.then669

if.then669:                                       ; preds = %if.then653
  %arrayidx666 = getelementptr inbounds i8, ptr %125, i64 128
  %arrayidx678 = getelementptr inbounds ptr, ptr %126, i64 %idxprom491
  %127 = load ptr, ptr %arrayidx678, align 8
  call void %127(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx666, i32 noundef %shr500) #6
  br label %if.end687

if.end687:                                        ; preds = %if.then669, %if.then653
  %128 = load ptr, ptr %arrayidx506, align 8
  %129 = load ptr, ptr %arrayidx555, align 8
  %call696 = call i32 %128(ptr noundef %129, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6
  %add697 = add nsw i32 %call696, %add650
  br label %if.end705

if.end705:                                        ; preds = %if.then571, %if.end687, %if.end640
  %cost585.0 = phi i32 [ %add697, %if.end687 ], [ %add650, %if.end640 ], [ %add601, %if.then571 ]
  %cmp700 = icmp slt i32 %cost585.0, %bcost.131779
  %bdir.3 = select i1 %cmp700, i32 1, i32 %bdir.21778
  %bcost.14 = call i32 @llvm.smin.i32(i32 %cost585.0, i32 %bcost.131779)
  %bmy.14 = select i1 %cmp700, i32 %add581, i32 %bmy.131780
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride572) #6
  %cmp708 = icmp ne i32 %bdir.01811, 3
  %or.cond1220 = select i1 %tobool229, i1 true, i1 %cmp708
  br i1 %or.cond1220, label %if.then710, label %if.end705.if.then849_crit_edge

if.end705.if.then849_crit_edge:                   ; preds = %if.end705
  %.pre1836 = sext i32 %bmy.111814 to i64
  br label %if.then849

if.then710:                                       ; preds = %if.end566, %if.end705
  %bmy.151788 = phi i32 [ %bmy.14, %if.end705 ], [ %bmy.12, %if.end566 ]
  %bcost.151787 = phi i32 [ %bcost.14, %if.end705 ], [ %bcost.12, %if.end566 ]
  %bdir.41786 = phi i32 [ %bdir.3, %if.end705 ], [ %bdir.1, %if.end566 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride711) #6
  store i32 16, ptr %stride711, align 4
  %130 = load ptr, ptr %get_ref436, align 8
  %131 = load i32, ptr %i_stride440, align 8
  %sub720 = add nsw i32 %bmx.91817, -1
  %132 = load ptr, ptr %weight443, align 8
  %call723 = call ptr %130(ptr noundef nonnull %pix, ptr noundef nonnull %stride711, ptr noundef nonnull %p_fref438, i32 noundef %131, i32 noundef %sub720, i32 noundef %bmy.111814, i32 noundef %1, i32 noundef %2, ptr noundef %132) #6
  %133 = load ptr, ptr %arrayidx450, align 8
  %134 = load ptr, ptr %p_fenc451, align 8
  %135 = load i32, ptr %stride711, align 4
  %call731 = call i32 %133(ptr noundef %134, i32 noundef 16, ptr noundef %call723, i32 noundef %135) #6
  %idxprom733 = sext i32 %sub720 to i64
  %arrayidx734 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom733
  %136 = load i16, ptr %arrayidx734, align 2
  %conv735 = zext i16 %136 to i32
  %add736 = add nsw i32 %call731, %conv735
  %idxprom737 = sext i32 %bmy.111814 to i64
  %arrayidx738 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom737
  %137 = load i16, ptr %arrayidx738, align 2
  %conv739 = zext i16 %137 to i32
  %add740 = add nsw i32 %add736, %conv739
  %cmp743 = icmp slt i32 %add740, %bcost.151787
  %or.cond1766 = select i1 %7, i1 %cmp743, i1 false
  br i1 %or.cond1766, label %if.then745, label %if.end838

if.then745:                                       ; preds = %if.then710
  %138 = load ptr, ptr %mc_chroma469, align 8
  %139 = load ptr, ptr %arrayidx472, align 16
  %140 = load i32, ptr %arrayidx474, align 4
  %add754 = add nsw i32 %bmy.111814, %cond
  call void %138(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %139, i32 noundef %140, i32 noundef %sub720, i32 noundef %add754, i32 noundef %div477, i32 noundef %div478) #6
  %141 = load ptr, ptr %weight443, align 8
  %weightfn759 = getelementptr inbounds i8, ptr %141, i64 112
  %142 = load ptr, ptr %weightfn759, align 16
  %tobool760.not = icmp eq ptr %142, null
  br i1 %tobool760.not, label %if.end779, label %if.then761

if.then761:                                       ; preds = %if.then745
  %arrayidx758 = getelementptr inbounds i8, ptr %141, i64 64
  %arrayidx770 = getelementptr inbounds ptr, ptr %142, i64 %idxprom491
  %143 = load ptr, ptr %arrayidx770, align 8
  call void %143(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx758, i32 noundef %shr500) #6
  br label %if.end779

if.end779:                                        ; preds = %if.then761, %if.then745
  %144 = load ptr, ptr %arrayidx506, align 8
  %145 = load ptr, ptr %arrayidx508, align 8
  %call788 = call i32 %144(ptr noundef %145, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6
  %add789 = add nsw i32 %call788, %add740
  %cmp790 = icmp slt i32 %add789, %bcost.151787
  br i1 %cmp790, label %if.then792, label %if.end838

if.then792:                                       ; preds = %if.end779
  %146 = load ptr, ptr %mc_chroma469, align 8
  %147 = load ptr, ptr %arrayidx519, align 8
  %148 = load i32, ptr %arrayidx474, align 4
  call void %146(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %147, i32 noundef %148, i32 noundef %sub720, i32 noundef %add754, i32 noundef %div477, i32 noundef %div478) #6
  %149 = load ptr, ptr %weight443, align 8
  %weightfn806 = getelementptr inbounds i8, ptr %149, i64 176
  %150 = load ptr, ptr %weightfn806, align 16
  %tobool807.not = icmp eq ptr %150, null
  br i1 %tobool807.not, label %if.end826, label %if.then808

if.then808:                                       ; preds = %if.then792
  %arrayidx805 = getelementptr inbounds i8, ptr %149, i64 128
  %arrayidx817 = getelementptr inbounds ptr, ptr %150, i64 %idxprom491
  %151 = load ptr, ptr %arrayidx817, align 8
  call void %151(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx805, i32 noundef %shr500) #6
  br label %if.end826

if.end826:                                        ; preds = %if.then808, %if.then792
  %152 = load ptr, ptr %arrayidx506, align 8
  %153 = load ptr, ptr %arrayidx555, align 8
  %call835 = call i32 %152(ptr noundef %153, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6
  %add836 = add nsw i32 %call835, %add789
  br label %if.end838

if.end838:                                        ; preds = %if.end779, %if.end826, %if.then710
  %cost724.0 = phi i32 [ %add836, %if.end826 ], [ %add789, %if.end779 ], [ %add740, %if.then710 ]
  %cmp839 = icmp slt i32 %cost724.0, %bcost.151787
  br i1 %cmp839, label %if.then841, label %if.end844

if.then841:                                       ; preds = %if.end838
  br label %if.end844

if.end844:                                        ; preds = %if.end838, %if.then841
  %bdir.5 = phi i32 [ 2, %if.then841 ], [ %bdir.41786, %if.end838 ]
  %bcost.16 = phi i32 [ %cost724.0, %if.then841 ], [ %bcost.151787, %if.end838 ]
  %bmy.16 = phi i32 [ %bmy.111814, %if.then841 ], [ %bmy.151788, %if.end838 ]
  %bmx.14 = phi i32 [ %sub720, %if.then841 ], [ %bmx.91817, %if.end838 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride711) #6
  %cmp847 = icmp ne i32 %bdir.01811, 2
  %or.cond1221 = select i1 %tobool229, i1 true, i1 %cmp847
  br i1 %or.cond1221, label %if.then849, label %if.end983

if.then849:                                       ; preds = %if.end705.if.then849_crit_edge, %if.end844
  %idxprom876.pre-phi = phi i64 [ %.pre1836, %if.end705.if.then849_crit_edge ], [ %idxprom737, %if.end844 ]
  %bmx.151798 = phi i32 [ %bmx.91817, %if.end705.if.then849_crit_edge ], [ %bmx.14, %if.end844 ]
  %bmy.171797 = phi i32 [ %bmy.14, %if.end705.if.then849_crit_edge ], [ %bmy.16, %if.end844 ]
  %bcost.171796 = phi i32 [ %bcost.14, %if.end705.if.then849_crit_edge ], [ %bcost.16, %if.end844 ]
  %bdir.61795 = phi i32 [ %bdir.3, %if.end705.if.then849_crit_edge ], [ %bdir.5, %if.end844 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride850) #6
  store i32 16, ptr %stride850, align 4
  %154 = load ptr, ptr %get_ref436, align 8
  %155 = load i32, ptr %i_stride440, align 8
  %add859 = add nsw i32 %bmx.91817, 1
  %156 = load ptr, ptr %weight443, align 8
  %call862 = call ptr %154(ptr noundef nonnull %pix, ptr noundef nonnull %stride850, ptr noundef nonnull %p_fref438, i32 noundef %155, i32 noundef %add859, i32 noundef %bmy.111814, i32 noundef %1, i32 noundef %2, ptr noundef %156) #6
  %157 = load ptr, ptr %arrayidx450, align 8
  %158 = load ptr, ptr %p_fenc451, align 8
  %159 = load i32, ptr %stride850, align 4
  %call870 = call i32 %157(ptr noundef %158, i32 noundef 16, ptr noundef %call862, i32 noundef %159) #6
  %idxprom872 = sext i32 %add859 to i64
  %arrayidx873 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom872
  %160 = load i16, ptr %arrayidx873, align 2
  %conv874 = zext i16 %160 to i32
  %add875 = add nsw i32 %call870, %conv874
  %arrayidx877 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom876.pre-phi
  %161 = load i16, ptr %arrayidx877, align 2
  %conv878 = zext i16 %161 to i32
  %add879 = add nsw i32 %add875, %conv878
  %cmp882 = icmp slt i32 %add879, %bcost.171796
  %or.cond1767 = select i1 %7, i1 %cmp882, i1 false
  br i1 %or.cond1767, label %if.then884, label %if.end977

if.then884:                                       ; preds = %if.then849
  %162 = load ptr, ptr %mc_chroma469, align 8
  %163 = load ptr, ptr %arrayidx472, align 16
  %164 = load i32, ptr %arrayidx474, align 4
  %add893 = add nsw i32 %bmy.111814, %cond
  call void %162(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %163, i32 noundef %164, i32 noundef %add859, i32 noundef %add893, i32 noundef %div477, i32 noundef %div478) #6
  %165 = load ptr, ptr %weight443, align 8
  %weightfn898 = getelementptr inbounds i8, ptr %165, i64 112
  %166 = load ptr, ptr %weightfn898, align 16
  %tobool899.not = icmp eq ptr %166, null
  br i1 %tobool899.not, label %if.end918, label %if.then900

if.then900:                                       ; preds = %if.then884
  %arrayidx897 = getelementptr inbounds i8, ptr %165, i64 64
  %arrayidx909 = getelementptr inbounds ptr, ptr %166, i64 %idxprom491
  %167 = load ptr, ptr %arrayidx909, align 8
  call void %167(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx897, i32 noundef %shr500) #6
  br label %if.end918

if.end918:                                        ; preds = %if.then900, %if.then884
  %168 = load ptr, ptr %arrayidx506, align 8
  %169 = load ptr, ptr %arrayidx508, align 8
  %call927 = call i32 %168(ptr noundef %169, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6
  %add928 = add nsw i32 %call927, %add879
  %cmp929 = icmp slt i32 %add928, %bcost.171796
  br i1 %cmp929, label %if.then931, label %if.end977

if.then931:                                       ; preds = %if.end918
  %170 = load ptr, ptr %mc_chroma469, align 8
  %171 = load ptr, ptr %arrayidx519, align 8
  %172 = load i32, ptr %arrayidx474, align 4
  call void %170(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %171, i32 noundef %172, i32 noundef %add859, i32 noundef %add893, i32 noundef %div477, i32 noundef %div478) #6
  %173 = load ptr, ptr %weight443, align 8
  %weightfn945 = getelementptr inbounds i8, ptr %173, i64 176
  %174 = load ptr, ptr %weightfn945, align 16
  %tobool946.not = icmp eq ptr %174, null
  br i1 %tobool946.not, label %if.end965, label %if.then947

if.then947:                                       ; preds = %if.then931
  %arrayidx944 = getelementptr inbounds i8, ptr %173, i64 128
  %arrayidx956 = getelementptr inbounds ptr, ptr %174, i64 %idxprom491
  %175 = load ptr, ptr %arrayidx956, align 8
  call void %175(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx944, i32 noundef %shr500) #6
  br label %if.end965

if.end965:                                        ; preds = %if.then947, %if.then931
  %176 = load ptr, ptr %arrayidx506, align 8
  %177 = load ptr, ptr %arrayidx555, align 8
  %call974 = call i32 %176(ptr noundef %177, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #6
  %add975 = add nsw i32 %call974, %add928
  br label %if.end977

if.end977:                                        ; preds = %if.end918, %if.end965, %if.then849
  %cost863.0 = phi i32 [ %add975, %if.end965 ], [ %add928, %if.end918 ], [ %add879, %if.then849 ]
  %cmp978 = icmp slt i32 %cost863.0, %bcost.171796
  br i1 %cmp978, label %if.then980, label %if.end982

if.then980:                                       ; preds = %if.end977
  br label %if.end982

if.end982:                                        ; preds = %if.then980, %if.end977
  %bdir.7 = phi i32 [ 3, %if.then980 ], [ %bdir.61795, %if.end977 ]
  %bcost.18 = phi i32 [ %cost863.0, %if.then980 ], [ %bcost.171796, %if.end977 ]
  %bmy.18 = phi i32 [ %bmy.111814, %if.then980 ], [ %bmy.171797, %if.end977 ]
  %bmx.16 = phi i32 [ %add859, %if.then980 ], [ %bmx.151798, %if.end977 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride850) #6
  br label %if.end983

if.end983:                                        ; preds = %if.end844, %if.end982
  %bdir.8 = phi i32 [ %bdir.7, %if.end982 ], [ %bdir.5, %if.end844 ]
  %bcost.19 = phi i32 [ %bcost.18, %if.end982 ], [ %bcost.16, %if.end844 ]
  %bmy.19 = phi i32 [ %bmy.18, %if.end982 ], [ %bmy.16, %if.end844 ]
  %bmx.17 = phi i32 [ %bmx.16, %if.end982 ], [ %bmx.14, %if.end844 ]
  %cmp984 = icmp ne i32 %bmx.17, %bmx.91817
  %cmp986 = icmp ne i32 %bmy.19, %bmy.111814
  %and9881760.not = or i1 %cmp986, %cmp984
  br i1 %and9881760.not, label %for.cond396, label %if.end1185

if.else1000:                                      ; preds = %if.end389
  %178 = load i32, ptr %arrayidx403, align 4
  %cmp1004 = icmp sgt i32 %bmy.8, %178
  br i1 %cmp1004, label %land.lhs.true1006, label %if.end1185

land.lhs.true1006:                                ; preds = %if.else1000
  %mv_max_spel1008 = getelementptr inbounds i8, ptr %h, i64 16464
  %arrayidx1009 = getelementptr inbounds i8, ptr %h, i64 16468
  %179 = load i32, ptr %arrayidx1009, align 4
  %cmp1010 = icmp slt i32 %bmy.8, %179
  br i1 %cmp1010, label %land.lhs.true1012, label %if.end1185

land.lhs.true1012:                                ; preds = %land.lhs.true1006
  %180 = load i32, ptr %mv_min_spel402, align 8
  %cmp1016 = icmp sgt i32 %bmx.6, %180
  br i1 %cmp1016, label %land.lhs.true1018, label %if.end1185

land.lhs.true1018:                                ; preds = %land.lhs.true1012
  %181 = load i32, ptr %mv_max_spel1008, align 16
  %cmp1022 = icmp slt i32 %bmx.6, %181
  br i1 %cmp1022, label %if.then1024, label %if.end1185

if.then1024:                                      ; preds = %land.lhs.true1018
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %costs1025) #6
  %mc1028 = getelementptr inbounds i8, ptr %h, i64 32616
  %182 = load ptr, ptr %mc1028, align 8
  %p_fref1030 = getelementptr inbounds i8, ptr %m, i64 32
  %i_stride1032 = getelementptr inbounds i8, ptr %m, i64 120
  %183 = load i32, ptr %i_stride1032, align 8
  %sub1034 = add nsw i32 %bmy.8, -1
  %weight1035 = getelementptr inbounds i8, ptr %m, i64 24
  %184 = load ptr, ptr %weight1035, align 8
  call void %182(ptr noundef nonnull %pix, i32 noundef 64, ptr noundef nonnull %p_fref1030, i32 noundef %183, i32 noundef %bmx.6, i32 noundef %sub1034, i32 noundef %1, i32 noundef %2, ptr noundef %184) #6
  %185 = load ptr, ptr %mc1028, align 8
  %add.ptr1040 = getelementptr inbounds i8, ptr %pix, i64 16
  %186 = load i32, ptr %i_stride1032, align 8
  %add1045 = add nsw i32 %bmy.8, 1
  %187 = load ptr, ptr %weight1035, align 8
  call void %185(ptr noundef nonnull %add.ptr1040, i32 noundef 64, ptr noundef nonnull %p_fref1030, i32 noundef %186, i32 noundef %bmx.6, i32 noundef %add1045, i32 noundef %1, i32 noundef %2, ptr noundef %187) #6
  %188 = load ptr, ptr %mc1028, align 8
  %add.ptr1051 = getelementptr inbounds i8, ptr %pix, i64 32
  %189 = load i32, ptr %i_stride1032, align 8
  %sub1056 = add nsw i32 %bmx.6, -1
  %190 = load ptr, ptr %weight1035, align 8
  call void %188(ptr noundef nonnull %add.ptr1051, i32 noundef 64, ptr noundef nonnull %p_fref1030, i32 noundef %189, i32 noundef %sub1056, i32 noundef %bmy.8, i32 noundef %1, i32 noundef %2, ptr noundef %190) #6
  %191 = load ptr, ptr %mc1028, align 8
  %add.ptr1062 = getelementptr inbounds i8, ptr %pix, i64 48
  %192 = load i32, ptr %i_stride1032, align 8
  %add1067 = add nsw i32 %bmx.6, 1
  %193 = load ptr, ptr %weight1035, align 8
  call void %191(ptr noundef nonnull %add.ptr1062, i32 noundef 64, ptr noundef nonnull %p_fref1030, i32 noundef %192, i32 noundef %add1067, i32 noundef %bmy.8, i32 noundef %1, i32 noundef %2, ptr noundef %193) #6
  %fpelcmp_x41071 = getelementptr inbounds i8, ptr %h, i64 32040
  %arrayidx1073 = getelementptr inbounds [7 x ptr], ptr %fpelcmp_x41071, i64 0, i64 %idxprom
  %194 = load ptr, ptr %arrayidx1073, align 8
  %p_fenc1074 = getelementptr inbounds i8, ptr %m, i64 88
  %195 = load ptr, ptr %p_fenc1074, align 8
  call void %194(ptr noundef %195, ptr noundef nonnull %pix, ptr noundef nonnull %add.ptr1040, ptr noundef nonnull %add.ptr1051, ptr noundef nonnull %add.ptr1062, i32 noundef 64, ptr noundef nonnull %costs1025) #6
  %196 = load i32, ptr %costs1025, align 16
  %idxprom1085 = sext i32 %bmx.6 to i64
  %arrayidx1086 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1085
  %197 = load i16, ptr %arrayidx1086, align 2
  %conv1087 = zext i16 %197 to i32
  %add1088 = add nsw i32 %196, %conv1087
  %idxprom1090 = sext i32 %sub1034 to i64
  %arrayidx1091 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom1090
  %198 = load i16, ptr %arrayidx1091, align 2
  %conv1092 = zext i16 %198 to i32
  %add1093 = add nsw i32 %add1088, %conv1092
  %cmp1094 = icmp slt i32 %add1093, %bcost.10
  %spec.select1768 = call i32 @llvm.smin.i32(i32 %add1093, i32 %bcost.10)
  %spec.select1769 = select i1 %cmp1094, i32 %sub1034, i32 %bmy.8
  %arrayidx1109 = getelementptr inbounds i8, ptr %costs1025, i64 4
  %199 = load i32, ptr %arrayidx1109, align 4
  %add1113 = add nsw i32 %199, %conv1087
  %idxprom1115 = sext i32 %add1045 to i64
  %arrayidx1116 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom1115
  %200 = load i16, ptr %arrayidx1116, align 2
  %conv1117 = zext i16 %200 to i32
  %add1118 = add nsw i32 %add1113, %conv1117
  %cmp1119 = icmp slt i32 %add1118, %spec.select1768
  %bcost.22 = call i32 @llvm.smin.i32(i32 %add1118, i32 %spec.select1768)
  %bmy.22 = select i1 %cmp1119, i32 %add1045, i32 %spec.select1769
  %arrayidx1134 = getelementptr inbounds i8, ptr %costs1025, i64 8
  %201 = load i32, ptr %arrayidx1134, align 8
  %idxprom1136 = sext i32 %sub1056 to i64
  %arrayidx1137 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1136
  %202 = load i16, ptr %arrayidx1137, align 2
  %conv1138 = zext i16 %202 to i32
  %add1139 = add nsw i32 %201, %conv1138
  %idxprom1140 = sext i32 %bmy.8 to i64
  %arrayidx1141 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom1140
  %203 = load i16, ptr %arrayidx1141, align 2
  %conv1142 = zext i16 %203 to i32
  %add1143 = add nsw i32 %add1139, %conv1142
  %cmp1144 = icmp slt i32 %add1143, %bcost.22
  %bcost.23 = call i32 @llvm.smin.i32(i32 %add1143, i32 %bcost.22)
  %bmx.19 = select i1 %cmp1144, i32 %sub1056, i32 %bmx.6
  %arrayidx1159 = getelementptr inbounds i8, ptr %costs1025, i64 12
  %204 = load i32, ptr %arrayidx1159, align 4
  %idxprom1161 = sext i32 %add1067 to i64
  %arrayidx1162 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1161
  %205 = load i16, ptr %arrayidx1162, align 2
  %conv1163 = zext i16 %205 to i32
  %add1164 = add i32 %204, %conv1142
  %add1168 = add i32 %add1164, %conv1163
  %cmp1169 = icmp slt i32 %add1168, %bcost.23
  %bcost.24 = call i32 @llvm.smin.i32(i32 %add1168, i32 %bcost.23)
  %206 = or i1 %cmp1144, %cmp1169
  %bmy.24 = select i1 %206, i32 %bmy.8, i32 %bmy.22
  %bmx.20 = select i1 %cmp1169, i32 %add1067, i32 %bmx.19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %costs1025) #6
  br label %if.end1185

if.end1185:                                       ; preds = %for.body400, %lor.lhs.false406, %lor.lhs.false412, %lor.lhs.false418, %for.cond396, %if.end983, %for.cond396.preheader, %if.else1000, %land.lhs.true1006, %land.lhs.true1012, %land.lhs.true1018, %if.then1024
  %bcost.25 = phi i32 [ %bcost.24, %if.then1024 ], [ %bcost.10, %land.lhs.true1018 ], [ %bcost.10, %land.lhs.true1012 ], [ %bcost.10, %land.lhs.true1006 ], [ %bcost.10, %if.else1000 ], [ %bcost.10, %for.cond396.preheader ], [ %bcost.111813, %for.body400 ], [ %bcost.111813, %lor.lhs.false406 ], [ %bcost.111813, %lor.lhs.false412 ], [ %bcost.111813, %lor.lhs.false418 ], [ %bcost.19, %for.cond396 ], [ %bcost.19, %if.end983 ]
  %bmy.25 = phi i32 [ %bmy.24, %if.then1024 ], [ %bmy.8, %land.lhs.true1018 ], [ %bmy.8, %land.lhs.true1012 ], [ %bmy.8, %land.lhs.true1006 ], [ %bmy.8, %if.else1000 ], [ %bmy.8, %for.cond396.preheader ], [ %bmy.111814, %for.body400 ], [ %bmy.111814, %lor.lhs.false406 ], [ %bmy.111814, %lor.lhs.false412 ], [ %bmy.111814, %lor.lhs.false418 ], [ %bmy.19, %for.cond396 ], [ %bmy.111814, %if.end983 ]
  %bmx.21 = phi i32 [ %bmx.20, %if.then1024 ], [ %bmx.6, %land.lhs.true1018 ], [ %bmx.6, %land.lhs.true1012 ], [ %bmx.6, %land.lhs.true1006 ], [ %bmx.6, %if.else1000 ], [ %bmx.6, %for.cond396.preheader ], [ %bmx.91817, %for.body400 ], [ %bmx.91817, %lor.lhs.false406 ], [ %bmx.91817, %lor.lhs.false412 ], [ %bmx.91817, %lor.lhs.false418 ], [ %bmx.17, %for.cond396 ], [ %bmx.91817, %if.end983 ]
  store i32 %bcost.25, ptr %cost, align 8
  %conv1187 = trunc i32 %bmx.21 to i16
  store i16 %conv1187, ptr %mv, align 4
  %conv1190 = trunc i32 %bmy.25 to i16
  store i16 %conv1190, ptr %arrayidx24, align 2
  %idxprom1193 = sext i32 %bmx.21 to i64
  %arrayidx1194 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1193
  %207 = load i16, ptr %arrayidx1194, align 2
  %conv1195 = zext i16 %207 to i32
  %idxprom1196 = sext i32 %bmy.25 to i64
  %arrayidx1197 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom1196
  %208 = load i16, ptr %arrayidx1197, align 2
  %conv1198 = zext i16 %208 to i32
  %add1199 = add nuw nsw i32 %conv1198, %conv1195
  %cost_mv = getelementptr inbounds i8, ptr %m, i64 132
  store i32 %add1199, ptr %cost_mv, align 4
  br label %cleanup1200

cleanup1200:                                      ; preds = %if.end1185, %if.then376
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %pix) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_qpel(ptr nocapture noundef readonly %h, ptr noundef %m) local_unnamed_addr #0 {
entry:
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 16408
  %0 = load i32, ptr %i_subpel_refine, align 8
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr inbounds i8, ptr %arrayidx, i64 1
  %2 = load i8, ptr %arrayidx6, align 1
  %3 = load i32, ptr %m, align 16
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %i_ref_cost = getelementptr inbounds i8, ptr %m, i64 16
  %4 = load i32, ptr %i_ref_cost, align 16
  %cost = getelementptr inbounds i8, ptr %m, i64 136
  %5 = load i32, ptr %cost, align 8
  %sub = sub nsw i32 %5, %4
  store i32 %sub, ptr %cost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv7 = zext i8 %2 to i32
  %conv = zext i8 %1 to i32
  tail call fastcc void @refine_subpel(ptr noundef nonnull %h, ptr noundef nonnull %m, i32 noundef %conv, i32 noundef %conv7, ptr noundef null, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_qpel_refdupe(ptr nocapture noundef readonly %h, ptr noundef %m, ptr noundef %p_halfpel_thresh) local_unnamed_addr #0 {
entry:
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 16408
  %0 = load i32, ptr %i_subpel_refine, align 8
  %idxprom = sext i32 %0 to i64
  %1 = add nsw i64 %idxprom, -8
  %cmp = icmp ult i64 %1, 3
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %arrayidx1 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %idxprom, i64 3
  %2 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %conv, %cond.false ], [ 2, %entry ]
  tail call fastcc void @refine_subpel(ptr noundef nonnull %h, ptr noundef %m, i32 noundef 0, i32 noundef %cond, ptr noundef %p_halfpel_thresh, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_bidir_satd(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight) local_unnamed_addr #0 {
entry:
  tail call fastcc void @x264_me_refine_bidir(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_me_refine_bidir(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight, i32 noundef %i8, i32 noundef %i_lambda2, i32 noundef %rd) unnamed_addr #3 {
entry:
  %pixy_buf = alloca [2 x [9 x [256 x i8]]], align 16
  %pixu_buf = alloca [2 x [9 x [64 x i8]]], align 8
  %pixv_buf = alloca [2 x [9 x [64 x i8]]], align 8
  %src = alloca [2 x [9 x ptr]], align 16
  %stride = alloca [2 x [9 x i32]], align 16
  %visited = alloca [8 x [8 x [8 x i8]]], align 16
  %mv = getelementptr inbounds i8, ptr %h, i64 25200
  %mul = shl nsw i32 %i8, 2
  %idxprom = sext i32 %mul to i64
  %arrayidx1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx1, align 16
  %idxprom2 = sext i32 %0 to i64
  %arrayidx3 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %idxprom2
  %arrayidx7 = getelementptr inbounds i8, ptr %h, i64 25360
  %arrayidx12 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx7, i64 0, i64 %idxprom2
  %1 = load i32, ptr %m0, align 16
  %idxprom15 = sext i32 %1 to i64
  %arrayidx16 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %idxprom15
  %2 = load i32, ptr %arrayidx16, align 8
  %h19 = getelementptr inbounds i8, ptr %arrayidx16, i64 4
  %3 = load i32, ptr %h19, align 4
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %pixy_buf) #6
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %pixu_buf) #6
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %pixv_buf) #6
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %src) #6
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  %4 = load ptr, ptr %p_fdec, align 16
  %shr = ashr i32 %i8, 1
  %mul23 = shl nsw i32 %shr, 8
  %and = and i32 %i8, 1
  %mul24 = shl nuw nsw i32 %and, 3
  %add = or disjoint i32 %mul23, %mul24
  %idxprom25 = sext i32 %add to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %4, i64 %idxprom25
  %arrayidx30 = getelementptr inbounds i8, ptr %h, i64 21400
  %5 = load ptr, ptr %arrayidx30, align 8
  %mul33 = shl nsw i32 %shr, 7
  %mul35 = shl nuw nsw i32 %and, 2
  %add36 = or disjoint i32 %mul33, %mul35
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %5, i64 %idxprom37
  %arrayidx42 = getelementptr inbounds i8, ptr %h, i64 21408
  %6 = load ptr, ptr %arrayidx42, align 16
  %arrayidx50 = getelementptr inbounds i8, ptr %6, i64 %idxprom37
  %ref = getelementptr inbounds i8, ptr %h, i64 25120
  %arrayidx58 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %idxprom2
  %7 = load i8, ptr %arrayidx58, align 1
  %conv = sext i8 %7 to i32
  %arrayidx62 = getelementptr inbounds i8, ptr %h, i64 25160
  %arrayidx67 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %idxprom2
  %8 = load i8, ptr %arrayidx67, align 1
  %conv68 = sext i8 %8 to i32
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %9 = load i32, ptr %b_interlaced, align 4
  %and70 = and i32 %9, %conv
  %tobool.not = icmp eq i32 %and70, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388
  %10 = load i32, ptr %i_mb_y, align 4
  %and72 = shl i32 %10, 2
  %mul73 = and i32 %and72, 4
  %sub = add nsw i32 %mul73, -2
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry ]
  %and76 = and i32 %9, %conv68
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %cond.end85, label %cond.true78

cond.true78:                                      ; preds = %cond.end
  %i_mb_y80 = getelementptr inbounds i8, ptr %h, i64 16388
  %11 = load i32, ptr %i_mb_y80, align 4
  %and81 = shl i32 %11, 2
  %mul82 = and i32 %and81, 4
  %sub83 = add nsw i32 %mul82, -2
  br label %cond.end85

cond.end85:                                       ; preds = %cond.end, %cond.true78
  %cond86 = phi i32 [ %sub83, %cond.true78 ], [ 0, %cond.end ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %stride) #6
  %mv87 = getelementptr inbounds i8, ptr %m0, i64 140
  %12 = load i16, ptr %mv87, align 4
  %conv89 = sext i16 %12 to i32
  %arrayidx91 = getelementptr inbounds i8, ptr %m0, i64 142
  %13 = load i16, ptr %arrayidx91, align 2
  %conv92 = sext i16 %13 to i32
  %mv93 = getelementptr inbounds i8, ptr %m1, i64 140
  %14 = load i16, ptr %mv93, align 4
  %conv95 = sext i16 %14 to i32
  %arrayidx97 = getelementptr inbounds i8, ptr %m1, i64 142
  %15 = load i16, ptr %arrayidx97, align 2
  %conv98 = sext i16 %15 to i32
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %visited) #6
  %mv_min_spel = getelementptr inbounds i8, ptr %h, i64 16456
  %arrayidx100 = getelementptr inbounds i8, ptr %h, i64 16460
  %16 = load i32, ptr %arrayidx100, align 4
  %add101 = add nsw i32 %16, 8
  %cmp = icmp sgt i32 %add101, %conv92
  %cmp107 = icmp sgt i32 %add101, %conv98
  %or.cond932 = select i1 %cmp, i1 true, i1 %cmp107
  br i1 %or.cond932, label %cleanup659, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %cond.end85
  %mv_max_spel = getelementptr inbounds i8, ptr %h, i64 16464
  %arrayidx111 = getelementptr inbounds i8, ptr %h, i64 16468
  %17 = load i32, ptr %arrayidx111, align 4
  %sub112 = add nsw i32 %17, -8
  %cmp113 = icmp slt i32 %sub112, %conv92
  %cmp120 = icmp slt i32 %sub112, %conv98
  %or.cond933 = select i1 %cmp113, i1 true, i1 %cmp120
  br i1 %or.cond933, label %cleanup659, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false109
  %18 = load i32, ptr %mv_min_spel, align 8
  %add126 = add nsw i32 %18, 8
  %cmp127 = icmp sgt i32 %add126, %conv89
  %cmp134 = icmp sgt i32 %add126, %conv95
  %or.cond934 = select i1 %cmp127, i1 true, i1 %cmp134
  br i1 %or.cond934, label %cleanup659, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %lor.lhs.false122
  %19 = load i32, ptr %mv_max_spel, align 16
  %sub140 = add nsw i32 %19, -8
  %cmp141 = icmp slt i32 %sub140, %conv89
  %cmp148 = icmp slt i32 %sub140, %conv95
  %or.cond935 = select i1 %cmp141, i1 true, i1 %cmp148
  br i1 %or.cond935, label %cleanup659, label %if.end

if.end:                                           ; preds = %lor.lhs.false136
  %tobool150.not = icmp eq i32 %rd, 0
  br i1 %tobool150.not, label %if.end164, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %cmp152 = icmp ne i32 %1, 0
  %cmp155 = icmp ne i32 %i8, 0
  %or.cond = and i1 %cmp155, %cmp152
  br i1 %or.cond, label %if.then157, label %if.end164

if.then157:                                       ; preds = %land.lhs.true
  %shr158 = ashr i32 %2, 2
  %mvp = getelementptr inbounds i8, ptr %m0, i64 128
  tail call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %mul, i32 noundef %shr158, ptr noundef nonnull %mvp) #6
  %mvp162 = getelementptr inbounds i8, ptr %m1, i64 128
  tail call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 1, i32 noundef %mul, i32 noundef %shr158, ptr noundef nonnull %mvp162) #6
  br label %if.end164

if.end164:                                        ; preds = %if.then157, %land.lhs.true, %if.end
  %p_cost_mv = getelementptr inbounds i8, ptr %m0, i64 8
  %20 = load ptr, ptr %p_cost_mv, align 8
  %mvp165 = getelementptr inbounds i8, ptr %m0, i64 128
  %21 = load i16, ptr %mvp165, align 16
  %idx.ext = sext i16 %21 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i16, ptr %20, i64 %idx.neg
  %arrayidx170 = getelementptr inbounds i8, ptr %m0, i64 130
  %22 = load i16, ptr %arrayidx170, align 2
  %idx.ext172 = sext i16 %22 to i64
  %idx.neg173 = sub nsw i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i16, ptr %20, i64 %idx.neg173
  %p_cost_mv175 = getelementptr inbounds i8, ptr %m1, i64 8
  %23 = load ptr, ptr %p_cost_mv175, align 8
  %mvp176 = getelementptr inbounds i8, ptr %m1, i64 128
  %24 = load i16, ptr %mvp176, align 16
  %idx.ext179 = sext i16 %24 to i64
  %idx.neg180 = sub nsw i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i16, ptr %23, i64 %idx.neg180
  %arrayidx184 = getelementptr inbounds i8, ptr %m1, i64 130
  %25 = load i16, ptr %arrayidx184, align 2
  %idx.ext186 = sext i16 %25 to i64
  %idx.neg187 = sub nsw i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i16, ptr %23, i64 %idx.neg187
  %memzero_aligned = getelementptr inbounds i8, ptr %h, i64 32824
  %26 = load ptr, ptr %memzero_aligned, align 8
  call void %26(ptr noundef nonnull %visited, i32 noundef 512) #6
  %get_ref = getelementptr inbounds i8, ptr %h, i64 32624
  %p_fref = getelementptr inbounds i8, ptr %m0, i64 32
  %i_stride = getelementptr inbounds i8, ptr %m0, i64 120
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632
  %arrayidx244 = getelementptr inbounds i8, ptr %m0, i64 64
  %arrayidx246 = getelementptr inbounds i8, ptr %m0, i64 124
  %shr248 = ashr i32 %2, 1
  %shr249 = ashr i32 %3, 1
  %arrayidx257 = getelementptr inbounds i8, ptr %m0, i64 72
  %arrayidx298 = getelementptr inbounds i8, ptr %stride, i64 36
  %arrayidx303 = getelementptr inbounds i8, ptr %pixy_buf, i64 2304
  %p_fref310 = getelementptr inbounds i8, ptr %m1, i64 32
  %i_stride312 = getelementptr inbounds i8, ptr %m1, i64 120
  %arrayidx315 = getelementptr inbounds i8, ptr %src, i64 72
  %arrayidx322 = getelementptr inbounds i8, ptr %pixu_buf, i64 576
  %arrayidx327 = getelementptr inbounds i8, ptr %m1, i64 64
  %arrayidx329 = getelementptr inbounds i8, ptr %m1, i64 124
  %arrayidx335 = getelementptr inbounds i8, ptr %pixv_buf, i64 576
  %arrayidx340 = getelementptr inbounds i8, ptr %m1, i64 72
  %avg = getelementptr inbounds i8, ptr %h, i64 32640
  %arrayidx433 = getelementptr inbounds [10 x ptr], ptr %avg, i64 0, i64 %idxprom15
  %mbcmp = getelementptr inbounds i8, ptr %h, i64 31816
  %arrayidx447 = getelementptr inbounds [7 x ptr], ptr %mbcmp, i64 0, i64 %idxprom15
  %p_fenc = getelementptr inbounds i8, ptr %m0, i64 88
  %add482 = add nsw i32 %1, 3
  %idxprom483 = sext i32 %add482 to i64
  %arrayidx484 = getelementptr inbounds [10 x ptr], ptr %avg, i64 0, i64 %idxprom483
  br label %for.body

for.body:                                         ; preds = %if.end164, %for.inc554
  %bm0x.01087 = phi i32 [ %conv89, %if.end164 ], [ %add530, %for.inc554 ]
  %bm0y.01086 = phi i32 [ %conv92, %if.end164 ], [ %add535, %for.inc554 ]
  %bm1x.01085 = phi i32 [ %conv95, %if.end164 ], [ %add540, %for.inc554 ]
  %bm1y.01084 = phi i32 [ %conv98, %if.end164 ], [ %add545, %for.inc554 ]
  %bcost.01083 = phi i32 [ 268435456, %if.end164 ], [ %bcost.3, %for.inc554 ]
  %mc_list0.01082 = phi i32 [ 1, %if.end164 ], [ %conv549, %for.inc554 ]
  %mc_list1.01081 = phi i32 [ 1, %if.end164 ], [ %conv553, %for.inc554 ]
  %bcostrd.01080 = phi i64 [ 1152921504606846976, %if.end164 ], [ %bcostrd.4, %for.inc554 ]
  %pass.01079 = phi i32 [ 0, %if.end164 ], [ %inc555, %for.inc554 ]
  %tobool192.not = icmp ne i32 %mc_list0.01082, 0
  %27 = load i32, ptr @x264_iter_kludge, align 4
  %cmp1951071 = icmp slt i32 %27, 9
  %or.cond1088 = select i1 %tobool192.not, i1 %cmp1951071, i1 false
  br i1 %or.cond1088, label %for.body198.preheader, label %if.end264

for.body198.preheader:                            ; preds = %for.body
  %28 = sext i32 %27 to i64
  br label %for.body198

for.body198:                                      ; preds = %for.body198.preheader, %if.end263
  %indvars.iv = phi i64 [ %28, %for.body198.preheader ], [ %indvars.iv.next, %if.end263 ]
  %arrayidx200 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %indvars.iv
  %29 = load i8, ptr %arrayidx200, align 2
  %conv202 = sext i8 %29 to i32
  %mul203 = mul nsw i32 %conv202, 3
  %add204 = add nsw i32 %mul203, 4
  %arrayidx207 = getelementptr inbounds i8, ptr %arrayidx200, i64 1
  %30 = load i8, ptr %arrayidx207, align 1
  %conv208 = sext i8 %30 to i32
  %add209 = add nsw i32 %add204, %conv208
  %add214 = add nsw i32 %bm0x.01087, %conv202
  %add219 = add nsw i32 %bm0y.01086, %conv208
  %idxprom221 = sext i32 %add209 to i64
  %arrayidx222 = getelementptr inbounds [9 x i32], ptr %stride, i64 0, i64 %idxprom221
  store i32 %2, ptr %arrayidx222, align 4
  %31 = load ptr, ptr %get_ref, align 8
  %arrayidx226 = getelementptr inbounds [9 x [256 x i8]], ptr %pixy_buf, i64 0, i64 %idxprom221
  %32 = load i32, ptr %i_stride, align 8
  %call = call ptr %31(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %arrayidx222, ptr noundef nonnull %p_fref, i32 noundef %32, i32 noundef %add214, i32 noundef %add219, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @weight_none) #6
  %arrayidx235 = getelementptr inbounds [9 x ptr], ptr %src, i64 0, i64 %idxprom221
  store ptr %call, ptr %arrayidx235, align 8
  br i1 %tobool150.not, label %if.end263, label %if.then237

if.then237:                                       ; preds = %for.body198
  %33 = load ptr, ptr %mc_chroma, align 8
  %arrayidx241 = getelementptr inbounds [9 x [64 x i8]], ptr %pixu_buf, i64 0, i64 %idxprom221
  %34 = load ptr, ptr %arrayidx244, align 16
  %35 = load i32, ptr %arrayidx246, align 4
  %add247 = add nsw i32 %add219, %cond
  call void %33(ptr noundef nonnull %arrayidx241, i32 noundef 8, ptr noundef %34, i32 noundef %35, i32 noundef %add214, i32 noundef %add247, i32 noundef %shr248, i32 noundef %shr249) #6
  %36 = load ptr, ptr %mc_chroma, align 8
  %arrayidx254 = getelementptr inbounds [9 x [64 x i8]], ptr %pixv_buf, i64 0, i64 %idxprom221
  %37 = load ptr, ptr %arrayidx257, align 8
  %38 = load i32, ptr %arrayidx246, align 4
  call void %36(ptr noundef nonnull %arrayidx254, i32 noundef 8, ptr noundef %37, i32 noundef %38, i32 noundef %add214, i32 noundef %add247, i32 noundef %shr248, i32 noundef %shr249) #6
  br label %if.end263

if.end263:                                        ; preds = %if.then237, %for.body198
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %39 = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %39, 9
  br i1 %exitcond.not, label %if.end264.loopexit, label %for.body198

if.end264.loopexit:                               ; preds = %if.end263
  %.pre = load i32, ptr @x264_iter_kludge, align 4
  br label %if.end264

if.end264:                                        ; preds = %if.end264.loopexit, %for.body
  %40 = phi i32 [ %.pre, %if.end264.loopexit ], [ %27, %for.body ]
  %tobool265.not = icmp ne i32 %mc_list1.01081, 0
  %cmp2691073 = icmp slt i32 %40, 9
  %or.cond1089 = select i1 %tobool265.not, i1 %cmp2691073, i1 false
  br i1 %or.cond1089, label %for.body272.preheader, label %if.end350

for.body272.preheader:                            ; preds = %if.end264
  %41 = sext i32 %40 to i64
  br label %for.body272

for.body272:                                      ; preds = %for.body272.preheader, %if.end346
  %indvars.iv1091 = phi i64 [ %41, %for.body272.preheader ], [ %indvars.iv.next1092, %if.end346 ]
  %arrayidx276 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %indvars.iv1091
  %42 = load i8, ptr %arrayidx276, align 2
  %conv278 = sext i8 %42 to i32
  %mul279 = mul nsw i32 %conv278, 3
  %add280 = add nsw i32 %mul279, 4
  %arrayidx283 = getelementptr inbounds i8, ptr %arrayidx276, i64 1
  %43 = load i8, ptr %arrayidx283, align 1
  %conv284 = sext i8 %43 to i32
  %add285 = add nsw i32 %add280, %conv284
  %add291 = add nsw i32 %bm1x.01085, %conv278
  %add297 = add nsw i32 %bm1y.01084, %conv284
  %idxprom299 = sext i32 %add285 to i64
  %arrayidx300 = getelementptr inbounds [9 x i32], ptr %arrayidx298, i64 0, i64 %idxprom299
  store i32 %2, ptr %arrayidx300, align 4
  %44 = load ptr, ptr %get_ref, align 8
  %arrayidx305 = getelementptr inbounds [9 x [256 x i8]], ptr %arrayidx303, i64 0, i64 %idxprom299
  %45 = load i32, ptr %i_stride312, align 8
  %call314 = call ptr %44(ptr noundef nonnull %arrayidx305, ptr noundef nonnull %arrayidx300, ptr noundef nonnull %p_fref310, i32 noundef %45, i32 noundef %add291, i32 noundef %add297, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @weight_none) #6
  %arrayidx317 = getelementptr inbounds [9 x ptr], ptr %arrayidx315, i64 0, i64 %idxprom299
  store ptr %call314, ptr %arrayidx317, align 8
  br i1 %tobool150.not, label %if.end346, label %if.then319

if.then319:                                       ; preds = %for.body272
  %46 = load ptr, ptr %mc_chroma, align 8
  %arrayidx324 = getelementptr inbounds [9 x [64 x i8]], ptr %arrayidx322, i64 0, i64 %idxprom299
  %47 = load ptr, ptr %arrayidx327, align 16
  %48 = load i32, ptr %arrayidx329, align 4
  %add330 = add nsw i32 %add297, %cond86
  call void %46(ptr noundef nonnull %arrayidx324, i32 noundef 8, ptr noundef %47, i32 noundef %48, i32 noundef %add291, i32 noundef %add330, i32 noundef %shr248, i32 noundef %shr249) #6
  %49 = load ptr, ptr %mc_chroma, align 8
  %arrayidx337 = getelementptr inbounds [9 x [64 x i8]], ptr %arrayidx335, i64 0, i64 %idxprom299
  %50 = load ptr, ptr %arrayidx340, align 8
  %51 = load i32, ptr %arrayidx329, align 4
  call void %49(ptr noundef nonnull %arrayidx337, i32 noundef 8, ptr noundef %50, i32 noundef %51, i32 noundef %add291, i32 noundef %add330, i32 noundef %shr248, i32 noundef %shr249) #6
  br label %if.end346

if.end346:                                        ; preds = %if.then319, %for.body272
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, 1
  %52 = and i64 %indvars.iv.next1092, 4294967295
  %exitcond1095.not = icmp eq i64 %52, 9
  br i1 %exitcond1095.not, label %if.end350, label %for.body272

if.end350:                                        ; preds = %if.end346, %if.end264
  %tobool352 = icmp ne i32 %pass.01079, 0
  %53 = zext i1 %tobool352 to i64
  br label %for.body358

for.cond.cleanup357:                              ; preds = %if.end519
  %tobool523.not.not = icmp eq i32 %bestj.3, 0
  br i1 %tobool523.not.not, label %cleanup556, label %for.inc554

for.body358:                                      ; preds = %if.end350, %if.end519
  %indvars.iv1096 = phi i64 [ %53, %if.end350 ], [ %indvars.iv.next1097, %if.end519 ]
  %bcost.11078 = phi i32 [ %bcost.01083, %if.end350 ], [ %bcost.3, %if.end519 ]
  %bcostrd.11077 = phi i64 [ %bcostrd.01080, %if.end350 ], [ %bcostrd.4, %if.end519 ]
  %bestj.01075 = phi i32 [ 0, %if.end350 ], [ %bestj.3, %if.end519 ]
  %arrayidx360 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %indvars.iv1096
  %54 = load i8, ptr %arrayidx360, align 4
  %conv362 = sext i8 %54 to i32
  %add363 = add nsw i32 %bm0x.01087, %conv362
  %arrayidx366 = getelementptr inbounds i8, ptr %arrayidx360, i64 1
  %55 = load i8, ptr %arrayidx366, align 1
  %conv367 = sext i8 %55 to i32
  %add368 = add nsw i32 %bm0y.01086, %conv367
  %arrayidx371 = getelementptr inbounds i8, ptr %arrayidx360, i64 2
  %56 = load i8, ptr %arrayidx371, align 2
  %conv372 = sext i8 %56 to i32
  %add373 = add nsw i32 %bm1x.01085, %conv372
  %arrayidx376 = getelementptr inbounds i8, ptr %arrayidx360, i64 3
  %57 = load i8, ptr %arrayidx376, align 1
  %conv377 = sext i8 %57 to i32
  %add378 = add nsw i32 %bm1y.01084, %conv377
  br i1 %tobool352, label %lor.lhs.false380, label %for.body358.if.then395_crit_edge

for.body358.if.then395_crit_edge:                 ; preds = %for.body358
  %.pre1101 = and i32 %add378, 7
  %.pre1102 = shl nuw nsw i32 1, %.pre1101
  %.pre1103 = and i32 %add363, 7
  %.pre1104 = zext nneg i32 %.pre1103 to i64
  %.pre1105 = and i32 %add368, 7
  %.pre1106 = zext nneg i32 %.pre1105 to i64
  %.pre1107 = and i32 %add373, 7
  %.pre1108 = zext nneg i32 %.pre1107 to i64
  br label %if.then395

lor.lhs.false380:                                 ; preds = %for.body358
  %and381 = and i32 %add363, 7
  %idxprom382 = zext nneg i32 %and381 to i64
  %and384 = and i32 %add368, 7
  %idxprom385 = zext nneg i32 %and384 to i64
  %and387 = and i32 %add373, 7
  %idxprom388 = zext nneg i32 %and387 to i64
  %arrayidx389 = getelementptr inbounds [8 x [8 x [8 x i8]]], ptr %visited, i64 0, i64 %idxprom382, i64 %idxprom385, i64 %idxprom388
  %58 = load i8, ptr %arrayidx389, align 1
  %conv390 = zext i8 %58 to i32
  %and391 = and i32 %add378, 7
  %shl392 = shl nuw nsw i32 1, %and391
  %and393 = and i32 %shl392, %conv390
  %tobool394.not = icmp eq i32 %and393, 0
  br i1 %tobool394.not, label %if.then395, label %if.end519

if.then395:                                       ; preds = %for.body358.if.then395_crit_edge, %lor.lhs.false380
  %idxprom427.pre-phi = phi i64 [ %.pre1108, %for.body358.if.then395_crit_edge ], [ %idxprom388, %lor.lhs.false380 ]
  %idxprom424.pre-phi = phi i64 [ %.pre1106, %for.body358.if.then395_crit_edge ], [ %idxprom385, %lor.lhs.false380 ]
  %idxprom421.pre-phi = phi i64 [ %.pre1104, %for.body358.if.then395_crit_edge ], [ %idxprom382, %lor.lhs.false380 ]
  %shl419.pre-phi = phi i32 [ %.pre1102, %for.body358.if.then395_crit_edge ], [ %shl392, %lor.lhs.false380 ]
  %conv399 = sext i8 %54 to i64
  %mul400 = mul nsw i64 %conv399, 3
  %add401 = add nsw i64 %mul400, 4
  %conv405 = sext i8 %55 to i64
  %add406 = add nsw i64 %add401, %conv405
  %conv410 = sext i8 %56 to i64
  %mul411 = mul nsw i64 %conv410, 3
  %add412 = add nsw i64 %mul411, 4
  %conv416 = sext i8 %57 to i64
  %add417 = add nsw i64 %add412, %conv416
  %arrayidx428 = getelementptr inbounds [8 x [8 x [8 x i8]]], ptr %visited, i64 0, i64 %idxprom421.pre-phi, i64 %idxprom424.pre-phi, i64 %idxprom427.pre-phi
  %59 = load i8, ptr %arrayidx428, align 1
  %60 = trunc nuw i32 %shl419.pre-phi to i8
  %conv430 = or i8 %59, %60
  store i8 %conv430, ptr %arrayidx428, align 1
  %61 = load ptr, ptr %arrayidx433, align 8
  %arrayidx436 = getelementptr inbounds [9 x ptr], ptr %src, i64 0, i64 %add406
  %62 = load ptr, ptr %arrayidx436, align 8
  %arrayidx439 = getelementptr inbounds [9 x i32], ptr %stride, i64 0, i64 %add406
  %63 = load i32, ptr %arrayidx439, align 4
  %arrayidx442 = getelementptr inbounds [9 x ptr], ptr %arrayidx315, i64 0, i64 %add417
  %64 = load ptr, ptr %arrayidx442, align 8
  %arrayidx445 = getelementptr inbounds [9 x i32], ptr %arrayidx298, i64 0, i64 %add417
  %65 = load i32, ptr %arrayidx445, align 4
  call void %61(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef %62, i32 noundef %63, ptr noundef %64, i32 noundef %65, i32 noundef %i_weight) #6
  %66 = load ptr, ptr %arrayidx447, align 8
  %67 = load ptr, ptr %p_fenc, align 8
  %call449 = call i32 %66(ptr noundef %67, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6
  %idxprom450 = sext i32 %add363 to i64
  %arrayidx451 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom450
  %68 = load i16, ptr %arrayidx451, align 2
  %conv452 = zext i16 %68 to i32
  %add453 = add nsw i32 %call449, %conv452
  %idxprom454 = sext i32 %add368 to i64
  %arrayidx455 = getelementptr inbounds i16, ptr %add.ptr174, i64 %idxprom454
  %69 = load i16, ptr %arrayidx455, align 2
  %conv456 = zext i16 %69 to i32
  %add457 = add nsw i32 %add453, %conv456
  %idxprom458 = sext i32 %add373 to i64
  %arrayidx459 = getelementptr inbounds i16, ptr %add.ptr181, i64 %idxprom458
  %70 = load i16, ptr %arrayidx459, align 2
  %conv460 = zext i16 %70 to i32
  %add461 = add nsw i32 %add457, %conv460
  %idxprom462 = sext i32 %add378 to i64
  %arrayidx463 = getelementptr inbounds i16, ptr %add.ptr188, i64 %idxprom462
  %71 = load i16, ptr %arrayidx463, align 2
  %conv464 = zext i16 %71 to i32
  %add465 = add nsw i32 %add461, %conv464
  br i1 %tobool150.not, label %if.else, label %if.then467

if.then467:                                       ; preds = %if.then395
  %mul468 = mul nsw i32 %bcost.11078, 17
  %div = sdiv i32 %mul468, 16
  %cmp469 = icmp slt i32 %add465, %div
  br i1 %cmp469, label %if.then471, label %if.end519

if.then471:                                       ; preds = %if.then467
  %cond477 = call i32 @llvm.smin.i32(i32 %add465, i32 %bcost.11078)
  %and.i = and i32 %add363, 65535
  %shl.i = shl i32 %add368, 16
  %add.i = or disjoint i32 %shl.i, %and.i
  store i32 %add.i, ptr %arrayidx3, align 4
  %and.i940 = and i32 %add373, 65535
  %shl.i941 = shl i32 %add378, 16
  %add.i942 = or disjoint i32 %shl.i941, %and.i940
  store i32 %add.i942, ptr %arrayidx12, align 4
  %72 = load ptr, ptr %arrayidx484, align 8
  %arrayidx487 = getelementptr inbounds [9 x [64 x i8]], ptr %pixu_buf, i64 0, i64 %add406
  %arrayidx491 = getelementptr inbounds [9 x [64 x i8]], ptr %arrayidx322, i64 0, i64 %add417
  call void %72(ptr noundef %arrayidx38, i32 noundef 32, ptr noundef nonnull %arrayidx487, i32 noundef 8, ptr noundef nonnull %arrayidx491, i32 noundef 8, i32 noundef %i_weight) #6
  %73 = load ptr, ptr %arrayidx484, align 8
  %arrayidx500 = getelementptr inbounds [9 x [64 x i8]], ptr %pixv_buf, i64 0, i64 %add406
  %arrayidx504 = getelementptr inbounds [9 x [64 x i8]], ptr %arrayidx335, i64 0, i64 %add417
  call void %73(ptr noundef %arrayidx50, i32 noundef 32, ptr noundef nonnull %arrayidx500, i32 noundef 8, ptr noundef nonnull %arrayidx504, i32 noundef 8, i32 noundef %i_weight) #6
  %74 = load i32, ptr %m0, align 16
  %call508 = call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %mul, i32 noundef %74) #6
  %cmp509 = icmp ult i64 %call508, %bcostrd.11077
  %75 = trunc nuw nsw i64 %indvars.iv1096 to i32
  %spec.select = select i1 %cmp509, i32 %75, i32 %bestj.01075
  %spec.select936 = call i64 @llvm.umin.i64(i64 %call508, i64 %bcostrd.11077)
  br label %if.end519

if.else:                                          ; preds = %if.then395
  %cmp514 = icmp slt i32 %add465, %bcost.11078
  %76 = trunc nuw nsw i64 %indvars.iv1096 to i32
  %spec.select937 = select i1 %cmp514, i32 %76, i32 %bestj.01075
  %spec.select938 = call i32 @llvm.smin.i32(i32 %add465, i32 %bcost.11078)
  br label %if.end519

if.end519:                                        ; preds = %if.else, %if.then471, %if.then467, %lor.lhs.false380
  %bestj.3 = phi i32 [ %bestj.01075, %lor.lhs.false380 ], [ %spec.select, %if.then471 ], [ %bestj.01075, %if.then467 ], [ %spec.select937, %if.else ]
  %bcostrd.4 = phi i64 [ %bcostrd.11077, %lor.lhs.false380 ], [ %spec.select936, %if.then471 ], [ %bcostrd.11077, %if.then467 ], [ %bcostrd.11077, %if.else ]
  %bcost.3 = phi i32 [ %bcost.11078, %lor.lhs.false380 ], [ %cond477, %if.then471 ], [ %bcost.11078, %if.then467 ], [ %spec.select938, %if.else ]
  %indvars.iv.next1097 = add nuw nsw i64 %indvars.iv1096, 1
  %exitcond1099.not = icmp eq i64 %indvars.iv.next1097, 33
  br i1 %exitcond1099.not, label %for.cond.cleanup357, label %for.body358

for.inc554:                                       ; preds = %for.cond.cleanup357
  %idxprom526 = sext i32 %bestj.3 to i64
  %arrayidx527 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %idxprom526
  %77 = load i8, ptr %arrayidx527, align 4
  %conv529 = sext i8 %77 to i32
  %add530 = add nsw i32 %bm0x.01087, %conv529
  %arrayidx533 = getelementptr inbounds i8, ptr %arrayidx527, i64 1
  %78 = load i8, ptr %arrayidx533, align 1
  %conv534 = sext i8 %78 to i32
  %add535 = add nsw i32 %bm0y.01086, %conv534
  %arrayidx538 = getelementptr inbounds i8, ptr %arrayidx527, i64 2
  %79 = load i8, ptr %arrayidx538, align 2
  %conv539 = sext i8 %79 to i32
  %add540 = add nsw i32 %bm1x.01085, %conv539
  %arrayidx543 = getelementptr inbounds i8, ptr %arrayidx527, i64 3
  %80 = load i8, ptr %arrayidx543, align 1
  %conv544 = sext i8 %80 to i32
  %add545 = add nsw i32 %bm1y.01084, %conv544
  %81 = load i16, ptr %arrayidx527, align 4
  %conv549 = zext i16 %81 to i32
  %82 = load i16, ptr %arrayidx538, align 2
  %conv553 = zext i16 %82 to i32
  %inc555 = add nuw nsw i32 %pass.01079, 1
  %exitcond1100.not = icmp eq i32 %inc555, 8
  br i1 %exitcond1100.not, label %cleanup556, label %for.body

cleanup556:                                       ; preds = %for.cond.cleanup357, %for.inc554
  %bm1y.0.lcssa = phi i32 [ %bm1y.01084, %for.cond.cleanup357 ], [ %add545, %for.inc554 ]
  %bm1x.0.lcssa = phi i32 [ %bm1x.01085, %for.cond.cleanup357 ], [ %add540, %for.inc554 ]
  %bm0y.0.lcssa = phi i32 [ %bm0y.01086, %for.cond.cleanup357 ], [ %add535, %for.inc554 ]
  %bm0x.0.lcssa = phi i32 [ %bm0x.01087, %for.cond.cleanup357 ], [ %add530, %for.inc554 ]
  br i1 %tobool150.not, label %if.end646, label %if.then559

if.then559:                                       ; preds = %cleanup556
  %mul561 = shl nuw nsw i32 %and, 1
  %shr564 = ashr i32 %2, 2
  %shr565 = ashr i32 %3, 2
  %and.i943 = and i32 %bm0x.0.lcssa, 65535
  %shl.i944 = shl i32 %bm0y.0.lcssa, 16
  %add.i945 = or disjoint i32 %and.i943, %shl.i944
  %mul563 = shl i32 %i8, 3
  %add.i946 = or disjoint i32 %mul561, %mul563
  %add2.i = or i32 %add.i946, 12
  %idxprom3.i = sext i32 %add2.i to i64
  %arrayidx4.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 0, i64 %idxprom3.i
  %mul5.i = and i32 %2, -4
  %conv15.i.i = zext i32 %add.i945 to i64
  %add.i.i = mul nuw i64 %conv15.i.i, 4294967297
  %83 = add i32 %mul5.i, -2
  %84 = call i32 @llvm.fshl.i32(i32 2, i32 %83, i32 31)
  switch i32 %84, label %x264_macroblock_cache_mv.exit [
    i32 7, label %do.body.i.i.preheader
    i32 1, label %if.then39.i.i
    i32 3, label %if.then63.i.i
  ]

do.body.i.i.preheader:                            ; preds = %if.then559
  %85 = add nsw i32 %shr565, -2
  %86 = lshr i32 %85, 1
  %narrow = add nuw i32 %86, 1
  %87 = zext i32 %narrow to i64
  %min.iters.check = icmp ult i32 %85, 6
  br i1 %min.iters.check, label %do.body.i.i.preheader1180, label %vector.ph

do.body.i.i.preheader1180:                        ; preds = %middle.block, %do.body.i.i.preheader
  %d.0.i.i.ph = phi ptr [ %arrayidx4.i, %do.body.i.i.preheader ], [ %ind.end, %middle.block ]
  %h.addr.0.i.i.ph = phi i32 [ %shr565, %do.body.i.i.preheader ], [ %ind.end1109, %middle.block ]
  %88 = add nsw i32 %h.addr.0.i.i.ph, -2
  %89 = lshr i32 %88, 1
  %90 = add nuw i32 %89, 1
  %xtraiter = and i32 %90, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %do.body.i.i.prol.loopexit, label %do.body.i.i.prol

do.body.i.i.prol:                                 ; preds = %do.body.i.i.preheader1180, %do.body.i.i.prol
  %d.0.i.i.prol = phi ptr [ %add.ptr106.i.i.prol, %do.body.i.i.prol ], [ %d.0.i.i.ph, %do.body.i.i.preheader1180 ]
  %h.addr.0.i.i.prol = phi i32 [ %sub.i.i.prol, %do.body.i.i.prol ], [ %h.addr.0.i.i.ph, %do.body.i.i.preheader1180 ]
  %prol.iter = phi i32 [ %prol.iter.next, %do.body.i.i.prol ], [ 0, %do.body.i.i.preheader1180 ]
  store i64 %add.i.i, ptr %d.0.i.i.prol, align 8
  %add.ptr95.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 8
  store i64 %add.i.i, ptr %add.ptr95.i.i.prol, align 8
  %add.ptr98.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 32
  store i64 %add.i.i, ptr %add.ptr98.i.i.prol, align 8
  %add.ptr103.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 40
  store i64 %add.i.i, ptr %add.ptr103.i.i.prol, align 8
  %sub.i.i.prol = add nsw i32 %h.addr.0.i.i.prol, -2
  %add.ptr106.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 64
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %do.body.i.i.prol.loopexit, label %do.body.i.i.prol, !llvm.loop !13

do.body.i.i.prol.loopexit:                        ; preds = %do.body.i.i.prol, %do.body.i.i.preheader1180
  %d.0.i.i.unr = phi ptr [ %d.0.i.i.ph, %do.body.i.i.preheader1180 ], [ %add.ptr106.i.i.prol, %do.body.i.i.prol ]
  %h.addr.0.i.i.unr = phi i32 [ %h.addr.0.i.i.ph, %do.body.i.i.preheader1180 ], [ %sub.i.i.prol, %do.body.i.i.prol ]
  %91 = icmp ult i32 %88, 6
  br i1 %91, label %x264_macroblock_cache_mv.exit, label %do.body.i.i

vector.ph:                                        ; preds = %do.body.i.i.preheader
  %n.vec = and i64 %87, 4294967292
  %92 = shl nuw nsw i64 %n.vec, 6
  %ind.end = getelementptr i8, ptr %arrayidx4.i, i64 %92
  %.cast = trunc nuw i64 %n.vec to i32
  %93 = shl i32 %.cast, 1
  %ind.end1109 = sub i32 %shr565, %93
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 6
  %94 = or disjoint i64 %offset.idx, 64
  %95 = or disjoint i64 %offset.idx, 128
  %96 = or disjoint i64 %offset.idx, 192
  %next.gep = getelementptr i8, ptr %arrayidx4.i, i64 %offset.idx
  %next.gep1111 = getelementptr i8, ptr %arrayidx4.i, i64 %94
  %next.gep1112 = getelementptr i8, ptr %arrayidx4.i, i64 %95
  %next.gep1113 = getelementptr i8, ptr %arrayidx4.i, i64 %96
  store i64 %add.i.i, ptr %next.gep, align 8
  store i64 %add.i.i, ptr %next.gep1111, align 8
  store i64 %add.i.i, ptr %next.gep1112, align 8
  store i64 %add.i.i, ptr %next.gep1113, align 8
  %97 = getelementptr inbounds i8, ptr %next.gep, i64 8
  %98 = getelementptr inbounds i8, ptr %next.gep1111, i64 8
  %99 = getelementptr inbounds i8, ptr %next.gep1112, i64 8
  %100 = getelementptr inbounds i8, ptr %next.gep1113, i64 8
  store i64 %add.i.i, ptr %97, align 8
  store i64 %add.i.i, ptr %98, align 8
  store i64 %add.i.i, ptr %99, align 8
  store i64 %add.i.i, ptr %100, align 8
  %101 = getelementptr inbounds i8, ptr %next.gep, i64 32
  %102 = getelementptr inbounds i8, ptr %next.gep1111, i64 32
  %103 = getelementptr inbounds i8, ptr %next.gep1112, i64 32
  %104 = getelementptr inbounds i8, ptr %next.gep1113, i64 32
  store i64 %add.i.i, ptr %101, align 8
  store i64 %add.i.i, ptr %102, align 8
  store i64 %add.i.i, ptr %103, align 8
  store i64 %add.i.i, ptr %104, align 8
  %105 = getelementptr inbounds i8, ptr %next.gep, i64 40
  %106 = getelementptr inbounds i8, ptr %next.gep1111, i64 40
  %107 = getelementptr inbounds i8, ptr %next.gep1112, i64 40
  %108 = getelementptr inbounds i8, ptr %next.gep1113, i64 40
  store i64 %add.i.i, ptr %105, align 8
  store i64 %add.i.i, ptr %106, align 8
  store i64 %add.i.i, ptr %107, align 8
  store i64 %add.i.i, ptr %108, align 8
  %index.next = add nuw i64 %index, 4
  %109 = icmp eq i64 %index.next, %n.vec
  br i1 %109, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %87
  br i1 %cmp.n, label %x264_macroblock_cache_mv.exit, label %do.body.i.i.preheader1180

if.then39.i.i:                                    ; preds = %if.then559
  store i32 %add.i945, ptr %arrayidx4.i, align 4
  %cmp43.i.i = icmp eq i32 %shr565, 1
  br i1 %cmp43.i.i, label %x264_macroblock_cache_mv.exit, label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then39.i.i
  %add.ptr49.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 32
  store i32 %add.i945, ptr %add.ptr49.i.i, align 4
  %cmp50.i.i = icmp eq i32 %shr565, 2
  br i1 %cmp50.i.i, label %x264_macroblock_cache_mv.exit, label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.end46.i.i
  %add.ptr56.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 64
  store i32 %add.i945, ptr %add.ptr56.i.i, align 4
  %add.ptr59.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 96
  store i32 %add.i945, ptr %add.ptr59.i.i, align 4
  br label %x264_macroblock_cache_mv.exit

if.then63.i.i:                                    ; preds = %if.then559
  store i64 %add.i.i, ptr %arrayidx4.i, align 8
  %cmp67.i.i = icmp eq i32 %shr565, 1
  br i1 %cmp67.i.i, label %x264_macroblock_cache_mv.exit, label %if.end70.i.i

if.end70.i.i:                                     ; preds = %if.then63.i.i
  %add.ptr73.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 32
  store i64 %add.i.i, ptr %add.ptr73.i.i, align 8
  %cmp74.i.i = icmp eq i32 %shr565, 2
  br i1 %cmp74.i.i, label %x264_macroblock_cache_mv.exit, label %if.end77.i.i

if.end77.i.i:                                     ; preds = %if.end70.i.i
  %add.ptr80.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 64
  store i64 %add.i.i, ptr %add.ptr80.i.i, align 8
  %add.ptr83.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 96
  store i64 %add.i.i, ptr %add.ptr83.i.i, align 8
  br label %x264_macroblock_cache_mv.exit

do.body.i.i:                                      ; preds = %do.body.i.i.prol.loopexit, %do.body.i.i
  %d.0.i.i = phi ptr [ %add.ptr106.i.i.3, %do.body.i.i ], [ %d.0.i.i.unr, %do.body.i.i.prol.loopexit ]
  %h.addr.0.i.i = phi i32 [ %sub.i.i.3, %do.body.i.i ], [ %h.addr.0.i.i.unr, %do.body.i.i.prol.loopexit ]
  store i64 %add.i.i, ptr %d.0.i.i, align 8
  %add.ptr95.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 8
  store i64 %add.i.i, ptr %add.ptr95.i.i, align 8
  %add.ptr98.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 32
  store i64 %add.i.i, ptr %add.ptr98.i.i, align 8
  %add.ptr103.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 40
  store i64 %add.i.i, ptr %add.ptr103.i.i, align 8
  %add.ptr106.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 64
  store i64 %add.i.i, ptr %add.ptr106.i.i, align 8
  %add.ptr95.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 72
  store i64 %add.i.i, ptr %add.ptr95.i.i.1, align 8
  %add.ptr98.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 96
  store i64 %add.i.i, ptr %add.ptr98.i.i.1, align 8
  %add.ptr103.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 104
  store i64 %add.i.i, ptr %add.ptr103.i.i.1, align 8
  %add.ptr106.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 128
  store i64 %add.i.i, ptr %add.ptr106.i.i.1, align 8
  %add.ptr95.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 136
  store i64 %add.i.i, ptr %add.ptr95.i.i.2, align 8
  %add.ptr98.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 160
  store i64 %add.i.i, ptr %add.ptr98.i.i.2, align 8
  %add.ptr103.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 168
  store i64 %add.i.i, ptr %add.ptr103.i.i.2, align 8
  %add.ptr106.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 192
  store i64 %add.i.i, ptr %add.ptr106.i.i.2, align 8
  %add.ptr95.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 200
  store i64 %add.i.i, ptr %add.ptr95.i.i.3, align 8
  %add.ptr98.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 224
  store i64 %add.i.i, ptr %add.ptr98.i.i.3, align 8
  %add.ptr103.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 232
  store i64 %add.i.i, ptr %add.ptr103.i.i.3, align 8
  %sub.i.i.3 = add nsw i32 %h.addr.0.i.i, -8
  %add.ptr106.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 256
  %tobool.not.i.i.3 = icmp eq i32 %sub.i.i.3, 0
  br i1 %tobool.not.i.i.3, label %x264_macroblock_cache_mv.exit, label %do.body.i.i, !llvm.loop !15

x264_macroblock_cache_mv.exit:                    ; preds = %do.body.i.i.prol.loopexit, %do.body.i.i, %middle.block, %if.then559, %if.then39.i.i, %if.end46.i.i, %if.end53.i.i, %if.then63.i.i, %if.end70.i.i, %if.end77.i.i
  %110 = load i16, ptr %mvp165, align 16
  %conv569 = sext i16 %110 to i32
  %sub570 = sub nsw i32 %bm0x.0.lcssa, %conv569
  %111 = call i32 @llvm.abs.i32(i32 %sub570, i1 true)
  %spec.select939 = call i32 @llvm.umin.i32(i32 %111, i32 33)
  %112 = load i16, ptr %arrayidx170, align 2
  %conv583 = sext i16 %112 to i32
  %sub584 = sub nsw i32 %bm0y.0.lcssa, %conv583
  %113 = call i32 @llvm.abs.i32(i32 %sub584, i1 true)
  %cond594 = call i32 @llvm.umin.i32(i32 %113, i32 33)
  %shl.i947 = shl nuw nsw i32 %cond594, 8
  %add.i948 = or disjoint i32 %shl.i947, %spec.select939
  %conv596 = trunc nuw nsw i32 %add.i948 to i16
  %mvd1.i = getelementptr inbounds i8, ptr %h, i64 25520
  %arrayidx4.i953 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd1.i, i64 0, i64 0, i64 %idxprom3.i
  %cond14.i.i = mul nuw nsw i32 %add.i948, 65537
  %conv15.i.i954 = zext nneg i32 %cond14.i.i to i64
  %add.i.i955 = mul nuw nsw i64 %conv15.i.i954, 4294967297
  %114 = add i32 %shr564, 2147483647
  %115 = and i32 %114, 2147483647
  switch i32 %115, label %x264_macroblock_cache_mvd.exit [
    i32 0, label %if.then.i.i
    i32 1, label %if.then39.i.i973
    i32 3, label %if.then63.i.i965
    i32 7, label %do.body.i.i956.preheader
  ]

do.body.i.i956.preheader:                         ; preds = %x264_macroblock_cache_mv.exit
  %116 = add nsw i32 %shr565, -2
  %117 = lshr i32 %116, 1
  %narrow1174 = add nuw i32 %117, 1
  %118 = zext i32 %narrow1174 to i64
  %min.iters.check1116 = icmp ult i32 %116, 6
  br i1 %min.iters.check1116, label %do.body.i.i956.preheader1179, label %vector.ph1117

do.body.i.i956.preheader1179:                     ; preds = %middle.block1114, %do.body.i.i956.preheader
  %d.0.i.i957.ph = phi ptr [ %arrayidx4.i953, %do.body.i.i956.preheader ], [ %ind.end1120, %middle.block1114 ]
  %h.addr.0.i.i958.ph = phi i32 [ %shr565, %do.body.i.i956.preheader ], [ %ind.end1123, %middle.block1114 ]
  %119 = add nsw i32 %h.addr.0.i.i958.ph, -2
  %120 = lshr i32 %119, 1
  %121 = add nuw i32 %120, 1
  %xtraiter1181 = and i32 %121, 3
  %lcmp.mod1182.not = icmp eq i32 %xtraiter1181, 0
  br i1 %lcmp.mod1182.not, label %do.body.i.i956.prol.loopexit, label %do.body.i.i956.prol

do.body.i.i956.prol:                              ; preds = %do.body.i.i956.preheader1179, %do.body.i.i956.prol
  %d.0.i.i957.prol = phi ptr [ %add.ptr106.i.i963.prol, %do.body.i.i956.prol ], [ %d.0.i.i957.ph, %do.body.i.i956.preheader1179 ]
  %h.addr.0.i.i958.prol = phi i32 [ %sub.i.i962.prol, %do.body.i.i956.prol ], [ %h.addr.0.i.i958.ph, %do.body.i.i956.preheader1179 ]
  %prol.iter1183 = phi i32 [ %prol.iter1183.next, %do.body.i.i956.prol ], [ 0, %do.body.i.i956.preheader1179 ]
  store i64 %add.i.i955, ptr %d.0.i.i957.prol, align 8
  %add.ptr95.i.i959.prol = getelementptr inbounds i8, ptr %d.0.i.i957.prol, i64 8
  store i64 %add.i.i955, ptr %add.ptr95.i.i959.prol, align 8
  %add.ptr98.i.i960.prol = getelementptr inbounds i8, ptr %d.0.i.i957.prol, i64 16
  store i64 %add.i.i955, ptr %add.ptr98.i.i960.prol, align 8
  %add.ptr103.i.i961.prol = getelementptr inbounds i8, ptr %d.0.i.i957.prol, i64 24
  store i64 %add.i.i955, ptr %add.ptr103.i.i961.prol, align 8
  %sub.i.i962.prol = add nsw i32 %h.addr.0.i.i958.prol, -2
  %add.ptr106.i.i963.prol = getelementptr inbounds i8, ptr %d.0.i.i957.prol, i64 32
  %prol.iter1183.next = add i32 %prol.iter1183, 1
  %prol.iter1183.cmp.not = icmp eq i32 %prol.iter1183.next, %xtraiter1181
  br i1 %prol.iter1183.cmp.not, label %do.body.i.i956.prol.loopexit, label %do.body.i.i956.prol, !llvm.loop !16

do.body.i.i956.prol.loopexit:                     ; preds = %do.body.i.i956.prol, %do.body.i.i956.preheader1179
  %d.0.i.i957.unr = phi ptr [ %d.0.i.i957.ph, %do.body.i.i956.preheader1179 ], [ %add.ptr106.i.i963.prol, %do.body.i.i956.prol ]
  %h.addr.0.i.i958.unr = phi i32 [ %h.addr.0.i.i958.ph, %do.body.i.i956.preheader1179 ], [ %sub.i.i962.prol, %do.body.i.i956.prol ]
  %122 = icmp ult i32 %119, 6
  br i1 %122, label %x264_macroblock_cache_mvd.exit, label %do.body.i.i956

vector.ph1117:                                    ; preds = %do.body.i.i956.preheader
  %n.vec1119 = and i64 %118, 4294967292
  %123 = shl nuw nsw i64 %n.vec1119, 5
  %ind.end1120 = getelementptr i8, ptr %arrayidx4.i953, i64 %123
  %.cast1122 = trunc nuw i64 %n.vec1119 to i32
  %124 = shl i32 %.cast1122, 1
  %ind.end1123 = sub i32 %shr565, %124
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %vector.ph1117
  %index1126 = phi i64 [ 0, %vector.ph1117 ], [ %index.next1132, %vector.body1125 ]
  %offset.idx1127 = shl i64 %index1126, 5
  %125 = or disjoint i64 %offset.idx1127, 32
  %126 = or disjoint i64 %offset.idx1127, 64
  %127 = or disjoint i64 %offset.idx1127, 96
  %next.gep1128 = getelementptr i8, ptr %arrayidx4.i953, i64 %offset.idx1127
  %next.gep1129 = getelementptr i8, ptr %arrayidx4.i953, i64 %125
  %next.gep1130 = getelementptr i8, ptr %arrayidx4.i953, i64 %126
  %next.gep1131 = getelementptr i8, ptr %arrayidx4.i953, i64 %127
  store i64 %add.i.i955, ptr %next.gep1128, align 8
  store i64 %add.i.i955, ptr %next.gep1129, align 8
  store i64 %add.i.i955, ptr %next.gep1130, align 8
  store i64 %add.i.i955, ptr %next.gep1131, align 8
  %128 = getelementptr inbounds i8, ptr %next.gep1128, i64 8
  %129 = getelementptr inbounds i8, ptr %next.gep1129, i64 8
  %130 = getelementptr inbounds i8, ptr %next.gep1130, i64 8
  %131 = getelementptr inbounds i8, ptr %next.gep1131, i64 8
  store i64 %add.i.i955, ptr %128, align 8
  store i64 %add.i.i955, ptr %129, align 8
  store i64 %add.i.i955, ptr %130, align 8
  store i64 %add.i.i955, ptr %131, align 8
  %132 = getelementptr inbounds i8, ptr %next.gep1128, i64 16
  %133 = getelementptr inbounds i8, ptr %next.gep1129, i64 16
  %134 = getelementptr inbounds i8, ptr %next.gep1130, i64 16
  %135 = getelementptr inbounds i8, ptr %next.gep1131, i64 16
  store i64 %add.i.i955, ptr %132, align 8
  store i64 %add.i.i955, ptr %133, align 8
  store i64 %add.i.i955, ptr %134, align 8
  store i64 %add.i.i955, ptr %135, align 8
  %136 = getelementptr inbounds i8, ptr %next.gep1128, i64 24
  %137 = getelementptr inbounds i8, ptr %next.gep1129, i64 24
  %138 = getelementptr inbounds i8, ptr %next.gep1130, i64 24
  %139 = getelementptr inbounds i8, ptr %next.gep1131, i64 24
  store i64 %add.i.i955, ptr %136, align 8
  store i64 %add.i.i955, ptr %137, align 8
  store i64 %add.i.i955, ptr %138, align 8
  store i64 %add.i.i955, ptr %139, align 8
  %index.next1132 = add nuw i64 %index1126, 4
  %140 = icmp eq i64 %index.next1132, %n.vec1119
  br i1 %140, label %middle.block1114, label %vector.body1125, !llvm.loop !17

middle.block1114:                                 ; preds = %vector.body1125
  %cmp.n1133 = icmp eq i64 %n.vec1119, %118
  br i1 %cmp.n1133, label %x264_macroblock_cache_mvd.exit, label %do.body.i.i956.preheader1179

if.then.i.i:                                      ; preds = %x264_macroblock_cache_mv.exit
  store i16 %conv596, ptr %arrayidx4.i953, align 2
  %cmp21.i.i = icmp eq i32 %shr565, 1
  br i1 %cmp21.i.i, label %x264_macroblock_cache_mvd.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %add.ptr26.i.i = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 16
  store i16 %conv596, ptr %add.ptr26.i.i, align 2
  %cmp27.i.i = icmp eq i32 %shr565, 2
  br i1 %cmp27.i.i, label %x264_macroblock_cache_mvd.exit, label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.end.i.i
  %add.ptr33.i.i = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 32
  store i16 %conv596, ptr %add.ptr33.i.i, align 2
  %add.ptr36.i.i = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 48
  store i16 %conv596, ptr %add.ptr36.i.i, align 2
  br label %x264_macroblock_cache_mvd.exit

if.then39.i.i973:                                 ; preds = %x264_macroblock_cache_mv.exit
  store i32 %cond14.i.i, ptr %arrayidx4.i953, align 4
  %cmp43.i.i974 = icmp eq i32 %shr565, 1
  br i1 %cmp43.i.i974, label %x264_macroblock_cache_mvd.exit, label %if.end46.i.i975

if.end46.i.i975:                                  ; preds = %if.then39.i.i973
  %add.ptr49.i.i976 = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 16
  store i32 %cond14.i.i, ptr %add.ptr49.i.i976, align 4
  %cmp50.i.i977 = icmp eq i32 %shr565, 2
  br i1 %cmp50.i.i977, label %x264_macroblock_cache_mvd.exit, label %if.end53.i.i978

if.end53.i.i978:                                  ; preds = %if.end46.i.i975
  %add.ptr56.i.i979 = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 32
  store i32 %cond14.i.i, ptr %add.ptr56.i.i979, align 4
  %add.ptr59.i.i980 = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 48
  store i32 %cond14.i.i, ptr %add.ptr59.i.i980, align 4
  br label %x264_macroblock_cache_mvd.exit

if.then63.i.i965:                                 ; preds = %x264_macroblock_cache_mv.exit
  store i64 %add.i.i955, ptr %arrayidx4.i953, align 8
  %cmp67.i.i966 = icmp eq i32 %shr565, 1
  br i1 %cmp67.i.i966, label %x264_macroblock_cache_mvd.exit, label %if.end70.i.i967

if.end70.i.i967:                                  ; preds = %if.then63.i.i965
  %add.ptr73.i.i968 = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 16
  store i64 %add.i.i955, ptr %add.ptr73.i.i968, align 8
  %cmp74.i.i969 = icmp eq i32 %shr565, 2
  br i1 %cmp74.i.i969, label %x264_macroblock_cache_mvd.exit, label %if.end77.i.i970

if.end77.i.i970:                                  ; preds = %if.end70.i.i967
  %add.ptr80.i.i971 = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 32
  store i64 %add.i.i955, ptr %add.ptr80.i.i971, align 8
  %add.ptr83.i.i972 = getelementptr inbounds i8, ptr %arrayidx4.i953, i64 48
  store i64 %add.i.i955, ptr %add.ptr83.i.i972, align 8
  br label %x264_macroblock_cache_mvd.exit

do.body.i.i956:                                   ; preds = %do.body.i.i956.prol.loopexit, %do.body.i.i956
  %d.0.i.i957 = phi ptr [ %add.ptr106.i.i963.3, %do.body.i.i956 ], [ %d.0.i.i957.unr, %do.body.i.i956.prol.loopexit ]
  %h.addr.0.i.i958 = phi i32 [ %sub.i.i962.3, %do.body.i.i956 ], [ %h.addr.0.i.i958.unr, %do.body.i.i956.prol.loopexit ]
  store i64 %add.i.i955, ptr %d.0.i.i957, align 8
  %add.ptr95.i.i959 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 8
  store i64 %add.i.i955, ptr %add.ptr95.i.i959, align 8
  %add.ptr98.i.i960 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 16
  store i64 %add.i.i955, ptr %add.ptr98.i.i960, align 8
  %add.ptr103.i.i961 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 24
  store i64 %add.i.i955, ptr %add.ptr103.i.i961, align 8
  %add.ptr106.i.i963 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 32
  store i64 %add.i.i955, ptr %add.ptr106.i.i963, align 8
  %add.ptr95.i.i959.1 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 40
  store i64 %add.i.i955, ptr %add.ptr95.i.i959.1, align 8
  %add.ptr98.i.i960.1 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 48
  store i64 %add.i.i955, ptr %add.ptr98.i.i960.1, align 8
  %add.ptr103.i.i961.1 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 56
  store i64 %add.i.i955, ptr %add.ptr103.i.i961.1, align 8
  %add.ptr106.i.i963.1 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 64
  store i64 %add.i.i955, ptr %add.ptr106.i.i963.1, align 8
  %add.ptr95.i.i959.2 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 72
  store i64 %add.i.i955, ptr %add.ptr95.i.i959.2, align 8
  %add.ptr98.i.i960.2 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 80
  store i64 %add.i.i955, ptr %add.ptr98.i.i960.2, align 8
  %add.ptr103.i.i961.2 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 88
  store i64 %add.i.i955, ptr %add.ptr103.i.i961.2, align 8
  %add.ptr106.i.i963.2 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 96
  store i64 %add.i.i955, ptr %add.ptr106.i.i963.2, align 8
  %add.ptr95.i.i959.3 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 104
  store i64 %add.i.i955, ptr %add.ptr95.i.i959.3, align 8
  %add.ptr98.i.i960.3 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 112
  store i64 %add.i.i955, ptr %add.ptr98.i.i960.3, align 8
  %add.ptr103.i.i961.3 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 120
  store i64 %add.i.i955, ptr %add.ptr103.i.i961.3, align 8
  %sub.i.i962.3 = add nsw i32 %h.addr.0.i.i958, -8
  %add.ptr106.i.i963.3 = getelementptr inbounds i8, ptr %d.0.i.i957, i64 128
  %tobool.not.i.i964.3 = icmp eq i32 %sub.i.i962.3, 0
  br i1 %tobool.not.i.i964.3, label %x264_macroblock_cache_mvd.exit, label %do.body.i.i956, !llvm.loop !18

x264_macroblock_cache_mvd.exit:                   ; preds = %do.body.i.i956.prol.loopexit, %do.body.i.i956, %middle.block1114, %x264_macroblock_cache_mv.exit, %if.then.i.i, %if.end.i.i, %if.end30.i.i, %if.then39.i.i973, %if.end46.i.i975, %if.end53.i.i978, %if.then63.i.i965, %if.end70.i.i967, %if.end77.i.i970
  %and.i981 = and i32 %bm1x.0.lcssa, 65535
  %shl.i982 = shl i32 %bm1y.0.lcssa, 16
  %add.i983 = or disjoint i32 %and.i981, %shl.i982
  %arrayidx4.i989 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 1, i64 %idxprom3.i
  %conv15.i.i991 = zext i32 %add.i983 to i64
  %add.i.i992 = mul nuw i64 %conv15.i.i991, 4294967297
  switch i32 %84, label %x264_macroblock_cache_mv.exit1018 [
    i32 7, label %do.body.i.i1009.preheader
    i32 1, label %if.then39.i.i1001
    i32 3, label %if.then63.i.i993
  ]

do.body.i.i1009.preheader:                        ; preds = %x264_macroblock_cache_mvd.exit
  %141 = add nsw i32 %shr565, -2
  %142 = lshr i32 %141, 1
  %narrow1175 = add nuw i32 %142, 1
  %143 = zext i32 %narrow1175 to i64
  %min.iters.check1136 = icmp ult i32 %141, 6
  br i1 %min.iters.check1136, label %do.body.i.i1009.preheader1178, label %vector.ph1137

do.body.i.i1009.preheader1178:                    ; preds = %middle.block1134, %do.body.i.i1009.preheader
  %d.0.i.i1010.ph = phi ptr [ %arrayidx4.i989, %do.body.i.i1009.preheader ], [ %ind.end1140, %middle.block1134 ]
  %h.addr.0.i.i1011.ph = phi i32 [ %shr565, %do.body.i.i1009.preheader ], [ %ind.end1143, %middle.block1134 ]
  %144 = add nsw i32 %h.addr.0.i.i1011.ph, -2
  %145 = lshr i32 %144, 1
  %146 = add nuw i32 %145, 1
  %xtraiter1184 = and i32 %146, 3
  %lcmp.mod1185.not = icmp eq i32 %xtraiter1184, 0
  br i1 %lcmp.mod1185.not, label %do.body.i.i1009.prol.loopexit, label %do.body.i.i1009.prol

do.body.i.i1009.prol:                             ; preds = %do.body.i.i1009.preheader1178, %do.body.i.i1009.prol
  %d.0.i.i1010.prol = phi ptr [ %add.ptr106.i.i1016.prol, %do.body.i.i1009.prol ], [ %d.0.i.i1010.ph, %do.body.i.i1009.preheader1178 ]
  %h.addr.0.i.i1011.prol = phi i32 [ %sub.i.i1015.prol, %do.body.i.i1009.prol ], [ %h.addr.0.i.i1011.ph, %do.body.i.i1009.preheader1178 ]
  %prol.iter1186 = phi i32 [ %prol.iter1186.next, %do.body.i.i1009.prol ], [ 0, %do.body.i.i1009.preheader1178 ]
  store i64 %add.i.i992, ptr %d.0.i.i1010.prol, align 8
  %add.ptr95.i.i1012.prol = getelementptr inbounds i8, ptr %d.0.i.i1010.prol, i64 8
  store i64 %add.i.i992, ptr %add.ptr95.i.i1012.prol, align 8
  %add.ptr98.i.i1013.prol = getelementptr inbounds i8, ptr %d.0.i.i1010.prol, i64 32
  store i64 %add.i.i992, ptr %add.ptr98.i.i1013.prol, align 8
  %add.ptr103.i.i1014.prol = getelementptr inbounds i8, ptr %d.0.i.i1010.prol, i64 40
  store i64 %add.i.i992, ptr %add.ptr103.i.i1014.prol, align 8
  %sub.i.i1015.prol = add nsw i32 %h.addr.0.i.i1011.prol, -2
  %add.ptr106.i.i1016.prol = getelementptr inbounds i8, ptr %d.0.i.i1010.prol, i64 64
  %prol.iter1186.next = add i32 %prol.iter1186, 1
  %prol.iter1186.cmp.not = icmp eq i32 %prol.iter1186.next, %xtraiter1184
  br i1 %prol.iter1186.cmp.not, label %do.body.i.i1009.prol.loopexit, label %do.body.i.i1009.prol, !llvm.loop !19

do.body.i.i1009.prol.loopexit:                    ; preds = %do.body.i.i1009.prol, %do.body.i.i1009.preheader1178
  %d.0.i.i1010.unr = phi ptr [ %d.0.i.i1010.ph, %do.body.i.i1009.preheader1178 ], [ %add.ptr106.i.i1016.prol, %do.body.i.i1009.prol ]
  %h.addr.0.i.i1011.unr = phi i32 [ %h.addr.0.i.i1011.ph, %do.body.i.i1009.preheader1178 ], [ %sub.i.i1015.prol, %do.body.i.i1009.prol ]
  %147 = icmp ult i32 %144, 6
  br i1 %147, label %x264_macroblock_cache_mv.exit1018, label %do.body.i.i1009

vector.ph1137:                                    ; preds = %do.body.i.i1009.preheader
  %n.vec1139 = and i64 %143, 4294967292
  %148 = shl nuw nsw i64 %n.vec1139, 6
  %ind.end1140 = getelementptr i8, ptr %arrayidx4.i989, i64 %148
  %.cast1142 = trunc nuw i64 %n.vec1139 to i32
  %149 = shl i32 %.cast1142, 1
  %ind.end1143 = sub i32 %shr565, %149
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %vector.ph1137
  %index1146 = phi i64 [ 0, %vector.ph1137 ], [ %index.next1152, %vector.body1145 ]
  %offset.idx1147 = shl i64 %index1146, 6
  %150 = or disjoint i64 %offset.idx1147, 64
  %151 = or disjoint i64 %offset.idx1147, 128
  %152 = or disjoint i64 %offset.idx1147, 192
  %next.gep1148 = getelementptr i8, ptr %arrayidx4.i989, i64 %offset.idx1147
  %next.gep1149 = getelementptr i8, ptr %arrayidx4.i989, i64 %150
  %next.gep1150 = getelementptr i8, ptr %arrayidx4.i989, i64 %151
  %next.gep1151 = getelementptr i8, ptr %arrayidx4.i989, i64 %152
  store i64 %add.i.i992, ptr %next.gep1148, align 8
  store i64 %add.i.i992, ptr %next.gep1149, align 8
  store i64 %add.i.i992, ptr %next.gep1150, align 8
  store i64 %add.i.i992, ptr %next.gep1151, align 8
  %153 = getelementptr inbounds i8, ptr %next.gep1148, i64 8
  %154 = getelementptr inbounds i8, ptr %next.gep1149, i64 8
  %155 = getelementptr inbounds i8, ptr %next.gep1150, i64 8
  %156 = getelementptr inbounds i8, ptr %next.gep1151, i64 8
  store i64 %add.i.i992, ptr %153, align 8
  store i64 %add.i.i992, ptr %154, align 8
  store i64 %add.i.i992, ptr %155, align 8
  store i64 %add.i.i992, ptr %156, align 8
  %157 = getelementptr inbounds i8, ptr %next.gep1148, i64 32
  %158 = getelementptr inbounds i8, ptr %next.gep1149, i64 32
  %159 = getelementptr inbounds i8, ptr %next.gep1150, i64 32
  %160 = getelementptr inbounds i8, ptr %next.gep1151, i64 32
  store i64 %add.i.i992, ptr %157, align 8
  store i64 %add.i.i992, ptr %158, align 8
  store i64 %add.i.i992, ptr %159, align 8
  store i64 %add.i.i992, ptr %160, align 8
  %161 = getelementptr inbounds i8, ptr %next.gep1148, i64 40
  %162 = getelementptr inbounds i8, ptr %next.gep1149, i64 40
  %163 = getelementptr inbounds i8, ptr %next.gep1150, i64 40
  %164 = getelementptr inbounds i8, ptr %next.gep1151, i64 40
  store i64 %add.i.i992, ptr %161, align 8
  store i64 %add.i.i992, ptr %162, align 8
  store i64 %add.i.i992, ptr %163, align 8
  store i64 %add.i.i992, ptr %164, align 8
  %index.next1152 = add nuw i64 %index1146, 4
  %165 = icmp eq i64 %index.next1152, %n.vec1139
  br i1 %165, label %middle.block1134, label %vector.body1145, !llvm.loop !20

middle.block1134:                                 ; preds = %vector.body1145
  %cmp.n1153 = icmp eq i64 %n.vec1139, %143
  br i1 %cmp.n1153, label %x264_macroblock_cache_mv.exit1018, label %do.body.i.i1009.preheader1178

if.then39.i.i1001:                                ; preds = %x264_macroblock_cache_mvd.exit
  store i32 %add.i983, ptr %arrayidx4.i989, align 4
  %cmp43.i.i1002 = icmp eq i32 %shr565, 1
  br i1 %cmp43.i.i1002, label %x264_macroblock_cache_mv.exit1018, label %if.end46.i.i1003

if.end46.i.i1003:                                 ; preds = %if.then39.i.i1001
  %add.ptr49.i.i1004 = getelementptr inbounds i8, ptr %arrayidx4.i989, i64 32
  store i32 %add.i983, ptr %add.ptr49.i.i1004, align 4
  %cmp50.i.i1005 = icmp eq i32 %shr565, 2
  br i1 %cmp50.i.i1005, label %x264_macroblock_cache_mv.exit1018, label %if.end53.i.i1006

if.end53.i.i1006:                                 ; preds = %if.end46.i.i1003
  %add.ptr56.i.i1007 = getelementptr inbounds i8, ptr %arrayidx4.i989, i64 64
  store i32 %add.i983, ptr %add.ptr56.i.i1007, align 4
  %add.ptr59.i.i1008 = getelementptr inbounds i8, ptr %arrayidx4.i989, i64 96
  store i32 %add.i983, ptr %add.ptr59.i.i1008, align 4
  br label %x264_macroblock_cache_mv.exit1018

if.then63.i.i993:                                 ; preds = %x264_macroblock_cache_mvd.exit
  store i64 %add.i.i992, ptr %arrayidx4.i989, align 8
  %cmp67.i.i994 = icmp eq i32 %shr565, 1
  br i1 %cmp67.i.i994, label %x264_macroblock_cache_mv.exit1018, label %if.end70.i.i995

if.end70.i.i995:                                  ; preds = %if.then63.i.i993
  %add.ptr73.i.i996 = getelementptr inbounds i8, ptr %arrayidx4.i989, i64 32
  store i64 %add.i.i992, ptr %add.ptr73.i.i996, align 8
  %cmp74.i.i997 = icmp eq i32 %shr565, 2
  br i1 %cmp74.i.i997, label %x264_macroblock_cache_mv.exit1018, label %if.end77.i.i998

if.end77.i.i998:                                  ; preds = %if.end70.i.i995
  %add.ptr80.i.i999 = getelementptr inbounds i8, ptr %arrayidx4.i989, i64 64
  store i64 %add.i.i992, ptr %add.ptr80.i.i999, align 8
  %add.ptr83.i.i1000 = getelementptr inbounds i8, ptr %arrayidx4.i989, i64 96
  store i64 %add.i.i992, ptr %add.ptr83.i.i1000, align 8
  br label %x264_macroblock_cache_mv.exit1018

do.body.i.i1009:                                  ; preds = %do.body.i.i1009.prol.loopexit, %do.body.i.i1009
  %d.0.i.i1010 = phi ptr [ %add.ptr106.i.i1016.3, %do.body.i.i1009 ], [ %d.0.i.i1010.unr, %do.body.i.i1009.prol.loopexit ]
  %h.addr.0.i.i1011 = phi i32 [ %sub.i.i1015.3, %do.body.i.i1009 ], [ %h.addr.0.i.i1011.unr, %do.body.i.i1009.prol.loopexit ]
  store i64 %add.i.i992, ptr %d.0.i.i1010, align 8
  %add.ptr95.i.i1012 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 8
  store i64 %add.i.i992, ptr %add.ptr95.i.i1012, align 8
  %add.ptr98.i.i1013 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 32
  store i64 %add.i.i992, ptr %add.ptr98.i.i1013, align 8
  %add.ptr103.i.i1014 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 40
  store i64 %add.i.i992, ptr %add.ptr103.i.i1014, align 8
  %add.ptr106.i.i1016 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 64
  store i64 %add.i.i992, ptr %add.ptr106.i.i1016, align 8
  %add.ptr95.i.i1012.1 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 72
  store i64 %add.i.i992, ptr %add.ptr95.i.i1012.1, align 8
  %add.ptr98.i.i1013.1 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 96
  store i64 %add.i.i992, ptr %add.ptr98.i.i1013.1, align 8
  %add.ptr103.i.i1014.1 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 104
  store i64 %add.i.i992, ptr %add.ptr103.i.i1014.1, align 8
  %add.ptr106.i.i1016.1 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 128
  store i64 %add.i.i992, ptr %add.ptr106.i.i1016.1, align 8
  %add.ptr95.i.i1012.2 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 136
  store i64 %add.i.i992, ptr %add.ptr95.i.i1012.2, align 8
  %add.ptr98.i.i1013.2 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 160
  store i64 %add.i.i992, ptr %add.ptr98.i.i1013.2, align 8
  %add.ptr103.i.i1014.2 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 168
  store i64 %add.i.i992, ptr %add.ptr103.i.i1014.2, align 8
  %add.ptr106.i.i1016.2 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 192
  store i64 %add.i.i992, ptr %add.ptr106.i.i1016.2, align 8
  %add.ptr95.i.i1012.3 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 200
  store i64 %add.i.i992, ptr %add.ptr95.i.i1012.3, align 8
  %add.ptr98.i.i1013.3 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 224
  store i64 %add.i.i992, ptr %add.ptr98.i.i1013.3, align 8
  %add.ptr103.i.i1014.3 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 232
  store i64 %add.i.i992, ptr %add.ptr103.i.i1014.3, align 8
  %sub.i.i1015.3 = add nsw i32 %h.addr.0.i.i1011, -8
  %add.ptr106.i.i1016.3 = getelementptr inbounds i8, ptr %d.0.i.i1010, i64 256
  %tobool.not.i.i1017.3 = icmp eq i32 %sub.i.i1015.3, 0
  br i1 %tobool.not.i.i1017.3, label %x264_macroblock_cache_mv.exit1018, label %do.body.i.i1009, !llvm.loop !21

x264_macroblock_cache_mv.exit1018:                ; preds = %do.body.i.i1009.prol.loopexit, %do.body.i.i1009, %middle.block1134, %x264_macroblock_cache_mvd.exit, %if.then39.i.i1001, %if.end46.i.i1003, %if.end53.i.i1006, %if.then63.i.i993, %if.end70.i.i995, %if.end77.i.i998
  %166 = load i16, ptr %mvp176, align 16
  %conv612 = sext i16 %166 to i32
  %sub613 = sub nsw i32 %bm1x.0.lcssa, %conv612
  %167 = call i32 @llvm.abs.i32(i32 %sub613, i1 true)
  %cond623 = call i32 @llvm.umin.i32(i32 %167, i32 33)
  %168 = load i16, ptr %arrayidx184, align 2
  %conv626 = sext i16 %168 to i32
  %sub627 = sub nsw i32 %bm1y.0.lcssa, %conv626
  %169 = call i32 @llvm.abs.i32(i32 %sub627, i1 true)
  %cond637 = call i32 @llvm.umin.i32(i32 %169, i32 33)
  %shl.i1019 = shl nuw nsw i32 %cond637, 8
  %add.i1020 = or disjoint i32 %shl.i1019, %cond623
  %conv639 = trunc nuw nsw i32 %add.i1020 to i16
  %arrayidx4.i1026 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd1.i, i64 0, i64 1, i64 %idxprom3.i
  %cond14.i.i1028 = mul nuw nsw i32 %add.i1020, 65537
  %conv15.i.i1029 = zext nneg i32 %cond14.i.i1028 to i64
  %add.i.i1030 = mul nuw nsw i64 %conv15.i.i1029, 4294967297
  switch i32 %115, label %if.end646 [
    i32 0, label %if.then.i.i1056
    i32 1, label %if.then39.i.i1048
    i32 3, label %if.then63.i.i1040
    i32 7, label %do.body.i.i1031.preheader
  ]

do.body.i.i1031.preheader:                        ; preds = %x264_macroblock_cache_mv.exit1018
  %170 = add nsw i32 %shr565, -2
  %171 = lshr i32 %170, 1
  %narrow1176 = add nuw i32 %171, 1
  %172 = zext i32 %narrow1176 to i64
  %min.iters.check1156 = icmp ult i32 %170, 6
  br i1 %min.iters.check1156, label %do.body.i.i1031.preheader1177, label %vector.ph1157

do.body.i.i1031.preheader1177:                    ; preds = %middle.block1154, %do.body.i.i1031.preheader
  %d.0.i.i1032.ph = phi ptr [ %arrayidx4.i1026, %do.body.i.i1031.preheader ], [ %ind.end1160, %middle.block1154 ]
  %h.addr.0.i.i1033.ph = phi i32 [ %shr565, %do.body.i.i1031.preheader ], [ %ind.end1163, %middle.block1154 ]
  %173 = add nsw i32 %h.addr.0.i.i1033.ph, -2
  %174 = lshr i32 %173, 1
  %175 = add nuw i32 %174, 1
  %xtraiter1187 = and i32 %175, 3
  %lcmp.mod1188.not = icmp eq i32 %xtraiter1187, 0
  br i1 %lcmp.mod1188.not, label %do.body.i.i1031.prol.loopexit, label %do.body.i.i1031.prol

do.body.i.i1031.prol:                             ; preds = %do.body.i.i1031.preheader1177, %do.body.i.i1031.prol
  %d.0.i.i1032.prol = phi ptr [ %add.ptr106.i.i1038.prol, %do.body.i.i1031.prol ], [ %d.0.i.i1032.ph, %do.body.i.i1031.preheader1177 ]
  %h.addr.0.i.i1033.prol = phi i32 [ %sub.i.i1037.prol, %do.body.i.i1031.prol ], [ %h.addr.0.i.i1033.ph, %do.body.i.i1031.preheader1177 ]
  %prol.iter1189 = phi i32 [ %prol.iter1189.next, %do.body.i.i1031.prol ], [ 0, %do.body.i.i1031.preheader1177 ]
  store i64 %add.i.i1030, ptr %d.0.i.i1032.prol, align 8
  %add.ptr95.i.i1034.prol = getelementptr inbounds i8, ptr %d.0.i.i1032.prol, i64 8
  store i64 %add.i.i1030, ptr %add.ptr95.i.i1034.prol, align 8
  %add.ptr98.i.i1035.prol = getelementptr inbounds i8, ptr %d.0.i.i1032.prol, i64 16
  store i64 %add.i.i1030, ptr %add.ptr98.i.i1035.prol, align 8
  %add.ptr103.i.i1036.prol = getelementptr inbounds i8, ptr %d.0.i.i1032.prol, i64 24
  store i64 %add.i.i1030, ptr %add.ptr103.i.i1036.prol, align 8
  %sub.i.i1037.prol = add nsw i32 %h.addr.0.i.i1033.prol, -2
  %add.ptr106.i.i1038.prol = getelementptr inbounds i8, ptr %d.0.i.i1032.prol, i64 32
  %prol.iter1189.next = add i32 %prol.iter1189, 1
  %prol.iter1189.cmp.not = icmp eq i32 %prol.iter1189.next, %xtraiter1187
  br i1 %prol.iter1189.cmp.not, label %do.body.i.i1031.prol.loopexit, label %do.body.i.i1031.prol, !llvm.loop !22

do.body.i.i1031.prol.loopexit:                    ; preds = %do.body.i.i1031.prol, %do.body.i.i1031.preheader1177
  %d.0.i.i1032.unr = phi ptr [ %d.0.i.i1032.ph, %do.body.i.i1031.preheader1177 ], [ %add.ptr106.i.i1038.prol, %do.body.i.i1031.prol ]
  %h.addr.0.i.i1033.unr = phi i32 [ %h.addr.0.i.i1033.ph, %do.body.i.i1031.preheader1177 ], [ %sub.i.i1037.prol, %do.body.i.i1031.prol ]
  %176 = icmp ult i32 %173, 6
  br i1 %176, label %if.end646, label %do.body.i.i1031

vector.ph1157:                                    ; preds = %do.body.i.i1031.preheader
  %n.vec1159 = and i64 %172, 4294967292
  %177 = shl nuw nsw i64 %n.vec1159, 5
  %ind.end1160 = getelementptr i8, ptr %arrayidx4.i1026, i64 %177
  %.cast1162 = trunc nuw i64 %n.vec1159 to i32
  %178 = shl i32 %.cast1162, 1
  %ind.end1163 = sub i32 %shr565, %178
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %vector.ph1157
  %index1166 = phi i64 [ 0, %vector.ph1157 ], [ %index.next1172, %vector.body1165 ]
  %offset.idx1167 = shl i64 %index1166, 5
  %179 = or disjoint i64 %offset.idx1167, 32
  %180 = or disjoint i64 %offset.idx1167, 64
  %181 = or disjoint i64 %offset.idx1167, 96
  %next.gep1168 = getelementptr i8, ptr %arrayidx4.i1026, i64 %offset.idx1167
  %next.gep1169 = getelementptr i8, ptr %arrayidx4.i1026, i64 %179
  %next.gep1170 = getelementptr i8, ptr %arrayidx4.i1026, i64 %180
  %next.gep1171 = getelementptr i8, ptr %arrayidx4.i1026, i64 %181
  store i64 %add.i.i1030, ptr %next.gep1168, align 8
  store i64 %add.i.i1030, ptr %next.gep1169, align 8
  store i64 %add.i.i1030, ptr %next.gep1170, align 8
  store i64 %add.i.i1030, ptr %next.gep1171, align 8
  %182 = getelementptr inbounds i8, ptr %next.gep1168, i64 8
  %183 = getelementptr inbounds i8, ptr %next.gep1169, i64 8
  %184 = getelementptr inbounds i8, ptr %next.gep1170, i64 8
  %185 = getelementptr inbounds i8, ptr %next.gep1171, i64 8
  store i64 %add.i.i1030, ptr %182, align 8
  store i64 %add.i.i1030, ptr %183, align 8
  store i64 %add.i.i1030, ptr %184, align 8
  store i64 %add.i.i1030, ptr %185, align 8
  %186 = getelementptr inbounds i8, ptr %next.gep1168, i64 16
  %187 = getelementptr inbounds i8, ptr %next.gep1169, i64 16
  %188 = getelementptr inbounds i8, ptr %next.gep1170, i64 16
  %189 = getelementptr inbounds i8, ptr %next.gep1171, i64 16
  store i64 %add.i.i1030, ptr %186, align 8
  store i64 %add.i.i1030, ptr %187, align 8
  store i64 %add.i.i1030, ptr %188, align 8
  store i64 %add.i.i1030, ptr %189, align 8
  %190 = getelementptr inbounds i8, ptr %next.gep1168, i64 24
  %191 = getelementptr inbounds i8, ptr %next.gep1169, i64 24
  %192 = getelementptr inbounds i8, ptr %next.gep1170, i64 24
  %193 = getelementptr inbounds i8, ptr %next.gep1171, i64 24
  store i64 %add.i.i1030, ptr %190, align 8
  store i64 %add.i.i1030, ptr %191, align 8
  store i64 %add.i.i1030, ptr %192, align 8
  store i64 %add.i.i1030, ptr %193, align 8
  %index.next1172 = add nuw i64 %index1166, 4
  %194 = icmp eq i64 %index.next1172, %n.vec1159
  br i1 %194, label %middle.block1154, label %vector.body1165, !llvm.loop !23

middle.block1154:                                 ; preds = %vector.body1165
  %cmp.n1173 = icmp eq i64 %n.vec1159, %172
  br i1 %cmp.n1173, label %if.end646, label %do.body.i.i1031.preheader1177

if.then.i.i1056:                                  ; preds = %x264_macroblock_cache_mv.exit1018
  store i16 %conv639, ptr %arrayidx4.i1026, align 2
  %cmp21.i.i1057 = icmp eq i32 %shr565, 1
  br i1 %cmp21.i.i1057, label %if.end646, label %if.end.i.i1058

if.end.i.i1058:                                   ; preds = %if.then.i.i1056
  %add.ptr26.i.i1059 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 16
  store i16 %conv639, ptr %add.ptr26.i.i1059, align 2
  %cmp27.i.i1060 = icmp eq i32 %shr565, 2
  br i1 %cmp27.i.i1060, label %if.end646, label %if.end30.i.i1061

if.end30.i.i1061:                                 ; preds = %if.end.i.i1058
  %add.ptr33.i.i1062 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 32
  store i16 %conv639, ptr %add.ptr33.i.i1062, align 2
  %add.ptr36.i.i1063 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 48
  store i16 %conv639, ptr %add.ptr36.i.i1063, align 2
  br label %if.end646

if.then39.i.i1048:                                ; preds = %x264_macroblock_cache_mv.exit1018
  store i32 %cond14.i.i1028, ptr %arrayidx4.i1026, align 4
  %cmp43.i.i1049 = icmp eq i32 %shr565, 1
  br i1 %cmp43.i.i1049, label %if.end646, label %if.end46.i.i1050

if.end46.i.i1050:                                 ; preds = %if.then39.i.i1048
  %add.ptr49.i.i1051 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 16
  store i32 %cond14.i.i1028, ptr %add.ptr49.i.i1051, align 4
  %cmp50.i.i1052 = icmp eq i32 %shr565, 2
  br i1 %cmp50.i.i1052, label %if.end646, label %if.end53.i.i1053

if.end53.i.i1053:                                 ; preds = %if.end46.i.i1050
  %add.ptr56.i.i1054 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 32
  store i32 %cond14.i.i1028, ptr %add.ptr56.i.i1054, align 4
  %add.ptr59.i.i1055 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 48
  store i32 %cond14.i.i1028, ptr %add.ptr59.i.i1055, align 4
  br label %if.end646

if.then63.i.i1040:                                ; preds = %x264_macroblock_cache_mv.exit1018
  store i64 %add.i.i1030, ptr %arrayidx4.i1026, align 8
  %cmp67.i.i1041 = icmp eq i32 %shr565, 1
  br i1 %cmp67.i.i1041, label %if.end646, label %if.end70.i.i1042

if.end70.i.i1042:                                 ; preds = %if.then63.i.i1040
  %add.ptr73.i.i1043 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 16
  store i64 %add.i.i1030, ptr %add.ptr73.i.i1043, align 8
  %cmp74.i.i1044 = icmp eq i32 %shr565, 2
  br i1 %cmp74.i.i1044, label %if.end646, label %if.end77.i.i1045

if.end77.i.i1045:                                 ; preds = %if.end70.i.i1042
  %add.ptr80.i.i1046 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 32
  store i64 %add.i.i1030, ptr %add.ptr80.i.i1046, align 8
  %add.ptr83.i.i1047 = getelementptr inbounds i8, ptr %arrayidx4.i1026, i64 48
  store i64 %add.i.i1030, ptr %add.ptr83.i.i1047, align 8
  br label %if.end646

do.body.i.i1031:                                  ; preds = %do.body.i.i1031.prol.loopexit, %do.body.i.i1031
  %d.0.i.i1032 = phi ptr [ %add.ptr106.i.i1038.3, %do.body.i.i1031 ], [ %d.0.i.i1032.unr, %do.body.i.i1031.prol.loopexit ]
  %h.addr.0.i.i1033 = phi i32 [ %sub.i.i1037.3, %do.body.i.i1031 ], [ %h.addr.0.i.i1033.unr, %do.body.i.i1031.prol.loopexit ]
  store i64 %add.i.i1030, ptr %d.0.i.i1032, align 8
  %add.ptr95.i.i1034 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 8
  store i64 %add.i.i1030, ptr %add.ptr95.i.i1034, align 8
  %add.ptr98.i.i1035 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 16
  store i64 %add.i.i1030, ptr %add.ptr98.i.i1035, align 8
  %add.ptr103.i.i1036 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 24
  store i64 %add.i.i1030, ptr %add.ptr103.i.i1036, align 8
  %add.ptr106.i.i1038 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 32
  store i64 %add.i.i1030, ptr %add.ptr106.i.i1038, align 8
  %add.ptr95.i.i1034.1 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 40
  store i64 %add.i.i1030, ptr %add.ptr95.i.i1034.1, align 8
  %add.ptr98.i.i1035.1 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 48
  store i64 %add.i.i1030, ptr %add.ptr98.i.i1035.1, align 8
  %add.ptr103.i.i1036.1 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 56
  store i64 %add.i.i1030, ptr %add.ptr103.i.i1036.1, align 8
  %add.ptr106.i.i1038.1 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 64
  store i64 %add.i.i1030, ptr %add.ptr106.i.i1038.1, align 8
  %add.ptr95.i.i1034.2 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 72
  store i64 %add.i.i1030, ptr %add.ptr95.i.i1034.2, align 8
  %add.ptr98.i.i1035.2 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 80
  store i64 %add.i.i1030, ptr %add.ptr98.i.i1035.2, align 8
  %add.ptr103.i.i1036.2 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 88
  store i64 %add.i.i1030, ptr %add.ptr103.i.i1036.2, align 8
  %add.ptr106.i.i1038.2 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 96
  store i64 %add.i.i1030, ptr %add.ptr106.i.i1038.2, align 8
  %add.ptr95.i.i1034.3 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 104
  store i64 %add.i.i1030, ptr %add.ptr95.i.i1034.3, align 8
  %add.ptr98.i.i1035.3 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 112
  store i64 %add.i.i1030, ptr %add.ptr98.i.i1035.3, align 8
  %add.ptr103.i.i1036.3 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 120
  store i64 %add.i.i1030, ptr %add.ptr103.i.i1036.3, align 8
  %sub.i.i1037.3 = add nsw i32 %h.addr.0.i.i1033, -8
  %add.ptr106.i.i1038.3 = getelementptr inbounds i8, ptr %d.0.i.i1032, i64 128
  %tobool.not.i.i1039.3 = icmp eq i32 %sub.i.i1037.3, 0
  br i1 %tobool.not.i.i1039.3, label %if.end646, label %do.body.i.i1031, !llvm.loop !24

if.end646:                                        ; preds = %do.body.i.i1031.prol.loopexit, %do.body.i.i1031, %middle.block1154, %if.end77.i.i1045, %if.end70.i.i1042, %if.then63.i.i1040, %if.end53.i.i1053, %if.end46.i.i1050, %if.then39.i.i1048, %if.end30.i.i1061, %if.end.i.i1058, %if.then.i.i1056, %x264_macroblock_cache_mv.exit1018, %cleanup556
  %conv647 = trunc i32 %bm0x.0.lcssa to i16
  store i16 %conv647, ptr %mv87, align 4
  %conv650 = trunc i32 %bm0y.0.lcssa to i16
  store i16 %conv650, ptr %arrayidx91, align 2
  %conv653 = trunc i32 %bm1x.0.lcssa to i16
  store i16 %conv653, ptr %mv93, align 4
  %conv656 = trunc i32 %bm1y.0.lcssa to i16
  store i16 %conv656, ptr %arrayidx97, align 2
  br label %cleanup659

cleanup659:                                       ; preds = %cond.end85, %lor.lhs.false109, %lor.lhs.false122, %lor.lhs.false136, %if.end646
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %visited) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %stride) #6
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %src) #6
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %pixv_buf) #6
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %pixu_buf) #6
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %pixy_buf) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_bidir_rd(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight, i32 noundef %i8, i32 noundef %i_lambda2) local_unnamed_addr #0 {
entry:
  %b_skip_mc = getelementptr inbounds i8, ptr %h, i64 17420
  store i32 1, ptr %b_skip_mc, align 4
  tail call fastcc void @x264_me_refine_bidir(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight, i32 noundef %i8, i32 noundef %i_lambda2, i32 noundef 1)
  store i32 0, ptr %b_skip_mc, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_qpel_rd(ptr noundef %h, ptr noundef %m, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %i_list) local_unnamed_addr #0 {
entry:
  %mv = getelementptr inbounds i8, ptr %h, i64 25200
  %idxprom = sext i32 %i_list to i64
  %idxprom1 = sext i32 %i4 to i64
  %arrayidx2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom1
  %0 = load i32, ptr %arrayidx2, align 4
  %idxprom3 = sext i32 %0 to i64
  %arrayidx4 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom, i64 %idxprom3
  %1 = load i32, ptr %m, align 16
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %idxprom5
  %2 = load i32, ptr %arrayidx6, align 8
  %h10 = getelementptr inbounds i8, ptr %arrayidx6, i64 4
  %3 = load i32, ptr %h10, align 4
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %4 = load i32, ptr %b_interlaced, align 4
  %i_ref = getelementptr inbounds i8, ptr %m, i64 20
  %5 = load i32, ptr %i_ref, align 4
  %and = and i32 %5, %4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388
  %6 = load i32, ptr %i_mb_y, align 4
  %and15 = shl i32 %6, 2
  %mul = and i32 %and15, 4
  %sub = add nsw i32 %mul, -2
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry ]
  %mv16 = getelementptr inbounds i8, ptr %m, i64 140
  %7 = load i16, ptr %mv16, align 4
  %conv = sext i16 %7 to i32
  %arrayidx19 = getelementptr inbounds i8, ptr %m, i64 142
  %8 = load i16, ptr %arrayidx19, align 2
  %conv20 = sext i16 %8 to i32
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  %9 = load ptr, ptr %p_fdec, align 16
  %arrayidx24 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %idxprom1
  %10 = load i16, ptr %arrayidx24, align 2
  %idxprom25 = zext i16 %10 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %9, i64 %idxprom25
  %arrayidx30 = getelementptr inbounds i8, ptr %h, i64 21400
  %11 = load ptr, ptr %arrayidx30, align 8
  %12 = shl i32 %i4, 4
  %mul33 = and i32 %12, -128
  %and34 = and i32 %i4, 4
  %add = or disjoint i32 %mul33, %and34
  %idxprom36 = sext i32 %add to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %11, i64 %idxprom36
  %arrayidx41 = getelementptr inbounds i8, ptr %h, i64 21408
  %13 = load ptr, ptr %arrayidx41, align 16
  %arrayidx49 = getelementptr inbounds i8, ptr %13, i64 %idxprom36
  %b_skip_mc = getelementptr inbounds i8, ptr %h, i64 17420
  store i32 1, ptr %b_skip_mc, align 4
  %14 = load i32, ptr %m, align 16
  %cmp = icmp ne i32 %14, 0
  %cmp53 = icmp ne i32 %i4, 0
  %or.cond = and i1 %cmp53, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %shr55 = ashr i32 %2, 2
  %mvp = getelementptr inbounds i8, ptr %m, i64 128
  tail call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %i_list, i32 noundef %i4, i32 noundef %shr55, ptr noundef nonnull %mvp) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %mvp57 = getelementptr inbounds i8, ptr %m, i64 128
  %15 = load i16, ptr %mvp57, align 16
  %conv59 = sext i16 %15 to i32
  %arrayidx61 = getelementptr inbounds i8, ptr %m, i64 130
  %16 = load i16, ptr %arrayidx61, align 2
  %conv62 = sext i16 %16 to i32
  %p_cost_mv = getelementptr inbounds i8, ptr %m, i64 8
  %17 = load ptr, ptr %p_cost_mv, align 8
  %idx.ext = sext i16 %15 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i16, ptr %17, i64 %idx.neg
  %idx.ext64 = sext i16 %16 to i64
  %idx.neg65 = sub nsw i64 0, %idx.ext64
  %add.ptr66 = getelementptr inbounds i16, ptr %17, i64 %idx.neg65
  %mc = getelementptr inbounds i8, ptr %h, i64 32616
  %18 = load ptr, ptr %mc, align 8
  %p_fref = getelementptr inbounds i8, ptr %m, i64 32
  %i_stride = getelementptr inbounds i8, ptr %m, i64 120
  %19 = load i32, ptr %i_stride, align 8
  %weight = getelementptr inbounds i8, ptr %m, i64 24
  %20 = load ptr, ptr %weight, align 8
  tail call void %18(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %19, i32 noundef %conv, i32 noundef %conv20, i32 noundef %2, i32 noundef %3, ptr noundef %20) #6
  %mbcmp = getelementptr inbounds i8, ptr %h, i64 31816
  %arrayidx71 = getelementptr inbounds [7 x ptr], ptr %mbcmp, i64 0, i64 %idxprom5
  %21 = load ptr, ptr %arrayidx71, align 8
  %p_fenc = getelementptr inbounds i8, ptr %m, i64 88
  %22 = load ptr, ptr %p_fenc, align 8
  %call = tail call i32 %21(ptr noundef %22, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6
  %idxprom73 = sext i16 %7 to i64
  %arrayidx74 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom73
  %23 = load i16, ptr %arrayidx74, align 2
  %conv75 = zext i16 %23 to i32
  %add76 = add nsw i32 %call, %conv75
  %idxprom77 = sext i16 %8 to i64
  %arrayidx78 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom77
  %24 = load i16, ptr %arrayidx78, align 2
  %conv79 = zext i16 %24 to i32
  %add80 = add nsw i32 %add76, %conv79
  %25 = load i32, ptr %m, align 16
  %cmp86.not = icmp eq i32 %25, 0
  br i1 %cmp86.not, label %if.else, label %if.then88

if.then88:                                        ; preds = %if.end
  %cmp90 = icmp sgt i32 %add80, -1
  br i1 %cmp90, label %if.then92, label %if.end125

if.then92:                                        ; preds = %if.then88
  %and.i = and i32 %conv, 65535
  %shl.i = shl nsw i32 %conv20, 16
  %add.i = or disjoint i32 %shl.i, %and.i
  store i32 %add.i, ptr %arrayidx4, align 4
  %26 = load i32, ptr %m, align 16
  %cmp95 = icmp slt i32 %26, 4
  br i1 %cmp95, label %if.then97, label %if.end115

if.then97:                                        ; preds = %if.then92
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632
  %27 = load ptr, ptr %mc_chroma, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %m, i64 64
  %28 = load ptr, ptr %arrayidx100, align 16
  %arrayidx102 = getelementptr inbounds i8, ptr %m, i64 124
  %29 = load i32, ptr %arrayidx102, align 4
  %add103 = add nsw i32 %cond, %conv20
  %shr104 = ashr i32 %2, 1
  %shr105 = ashr i32 %3, 1
  tail call void %27(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %28, i32 noundef %29, i32 noundef %conv, i32 noundef %add103, i32 noundef %shr104, i32 noundef %shr105) #6
  %30 = load ptr, ptr %mc_chroma, align 8
  %arrayidx109 = getelementptr inbounds i8, ptr %m, i64 72
  %31 = load ptr, ptr %arrayidx109, align 8
  %32 = load i32, ptr %arrayidx102, align 4
  tail call void %30(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %31, i32 noundef %32, i32 noundef %conv, i32 noundef %add103, i32 noundef %shr104, i32 noundef %shr105) #6
  %.pre = load i32, ptr %m, align 16
  br label %if.end115

if.end115:                                        ; preds = %if.then97, %if.then92
  %33 = phi i32 [ %.pre, %if.then97 ], [ %26, %if.then92 ]
  %call117 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %33) #6
  %spec.select = tail call i64 @llvm.umin.i64(i64 %call117, i64 1152921504606846976)
  br label %if.end125

if.else:                                          ; preds = %if.end
  %cost123 = getelementptr inbounds i8, ptr %m, i64 136
  %34 = load i32, ptr %cost123, align 8
  %conv124 = sext i32 %34 to i64
  br label %if.end125

if.end125:                                        ; preds = %if.then88, %if.end115, %if.else
  %bcost.1 = phi i64 [ %spec.select, %if.end115 ], [ 1152921504606846976, %if.then88 ], [ %conv124, %if.else ]
  %cmp126.not = icmp eq i16 %7, %15
  %cmp128.not = icmp eq i16 %8, %16
  %or.cond1288 = select i1 %cmp126.not, i1 %cmp128.not, i1 false
  br i1 %or.cond1288, label %if.end230, label %land.lhs.true130

land.lhs.true130:                                 ; preds = %if.end125
  %mv_min_spel = getelementptr inbounds i8, ptr %h, i64 16456
  %35 = load i32, ptr %mv_min_spel, align 8
  %cmp133.not = icmp sgt i32 %35, %conv59
  br i1 %cmp133.not, label %if.end230, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %land.lhs.true130
  %mv_max_spel = getelementptr inbounds i8, ptr %h, i64 16464
  %36 = load i32, ptr %mv_max_spel, align 16
  %cmp138.not = icmp slt i32 %36, %conv59
  br i1 %cmp138.not, label %if.end230, label %land.lhs.true140

land.lhs.true140:                                 ; preds = %land.lhs.true135
  %arrayidx143 = getelementptr inbounds i8, ptr %h, i64 16460
  %37 = load i32, ptr %arrayidx143, align 4
  %cmp144.not = icmp sgt i32 %37, %conv62
  br i1 %cmp144.not, label %if.end230, label %land.lhs.true146

land.lhs.true146:                                 ; preds = %land.lhs.true140
  %arrayidx149 = getelementptr inbounds i8, ptr %h, i64 16468
  %38 = load i32, ptr %arrayidx149, align 4
  %cmp150.not = icmp slt i32 %38, %conv62
  br i1 %cmp150.not, label %if.end230, label %if.then152

if.then152:                                       ; preds = %land.lhs.true146
  %39 = load ptr, ptr %mc, align 8
  %40 = load i32, ptr %i_stride, align 8
  %41 = load ptr, ptr %weight, align 8
  tail call void %39(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %40, i32 noundef %conv59, i32 noundef %conv62, i32 noundef %2, i32 noundef %3, ptr noundef %41) #6
  %42 = load ptr, ptr %arrayidx71, align 8
  %43 = load ptr, ptr %p_fenc, align 8
  %call167 = tail call i32 %42(ptr noundef %43, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6
  %44 = load i16, ptr %17, align 2
  %conv170 = zext i16 %44 to i32
  %reass.add = shl nuw nsw i32 %conv170, 1
  %add175 = add i32 %reass.add, %call167
  %spec.select1289 = tail call i32 @llvm.smin.i32(i32 %add175, i32 %add80)
  %mul180 = mul nsw i32 %spec.select1289, 17
  %div181 = sdiv i32 %mul180, 16
  %cmp182.not = icmp sgt i32 %add175, %div181
  br i1 %cmp182.not, label %if.end216, label %if.then184

if.then184:                                       ; preds = %if.then152
  %and.i1295 = and i32 %conv59, 65535
  %shl.i1296 = shl nsw i32 %conv62, 16
  %add.i1297 = or disjoint i32 %shl.i1296, %and.i1295
  store i32 %add.i1297, ptr %arrayidx4, align 4
  %45 = load i32, ptr %m, align 16
  %cmp188 = icmp slt i32 %45, 4
  br i1 %cmp188, label %if.then190, label %if.end209

if.then190:                                       ; preds = %if.then184
  %mc_chroma192 = getelementptr inbounds i8, ptr %h, i64 32632
  %46 = load ptr, ptr %mc_chroma192, align 8
  %arrayidx194 = getelementptr inbounds i8, ptr %m, i64 64
  %47 = load ptr, ptr %arrayidx194, align 16
  %arrayidx196 = getelementptr inbounds i8, ptr %m, i64 124
  %48 = load i32, ptr %arrayidx196, align 4
  %add197 = add nsw i32 %cond, %conv62
  %shr198 = ashr i32 %2, 1
  %shr199 = ashr i32 %3, 1
  tail call void %46(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %47, i32 noundef %48, i32 noundef %conv59, i32 noundef %add197, i32 noundef %shr198, i32 noundef %shr199) #6
  %49 = load ptr, ptr %mc_chroma192, align 8
  %arrayidx203 = getelementptr inbounds i8, ptr %m, i64 72
  %50 = load ptr, ptr %arrayidx203, align 8
  %51 = load i32, ptr %arrayidx196, align 4
  tail call void %49(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %50, i32 noundef %51, i32 noundef %conv59, i32 noundef %add197, i32 noundef %shr198, i32 noundef %shr199) #6
  %.pre1405 = load i32, ptr %m, align 16
  br label %if.end209

if.end209:                                        ; preds = %if.then190, %if.then184
  %52 = phi i32 [ %.pre1405, %if.then190 ], [ %45, %if.then184 ]
  %call211 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %52) #6
  %cmp212 = icmp ult i64 %call211, %bcost.1
  %bmy.2 = select i1 %cmp212, i32 %conv62, i32 %conv20
  %bmx.2 = select i1 %cmp212, i32 %conv59, i32 %conv
  %bcost.2 = tail call i64 @llvm.umin.i64(i64 %call211, i64 %bcost.1)
  br label %if.end216

if.end216:                                        ; preds = %if.end209, %if.then152
  %bmy.3 = phi i32 [ %bmy.2, %if.end209 ], [ %conv20, %if.then152 ]
  %bmx.3 = phi i32 [ %bmx.2, %if.end209 ], [ %conv, %if.then152 ]
  %bcost.3 = phi i64 [ %bcost.2, %if.end209 ], [ %bcost.1, %if.then152 ]
  %cmp217 = icmp eq i32 %bmx.3, %conv59
  %cmp220 = icmp eq i32 %bmy.3, %conv62
  %or.cond1290 = select i1 %cmp217, i1 %cmp220, i1 false
  br i1 %or.cond1290, label %if.then222, label %if.end230

if.then222:                                       ; preds = %if.end216
  %53 = load i16, ptr %mv16, align 4
  %conv225 = sext i16 %53 to i32
  %54 = load i16, ptr %arrayidx19, align 2
  %conv228 = sext i16 %54 to i32
  br label %if.end230

if.end230:                                        ; preds = %if.end125, %if.end216, %if.then222, %land.lhs.true146, %land.lhs.true140, %land.lhs.true135, %land.lhs.true130
  %bsatd.2 = phi i32 [ %spec.select1289, %if.then222 ], [ %spec.select1289, %if.end216 ], [ %add80, %land.lhs.true146 ], [ %add80, %land.lhs.true140 ], [ %add80, %land.lhs.true135 ], [ %add80, %land.lhs.true130 ], [ %add80, %if.end125 ]
  %pmy.0 = phi i32 [ %conv228, %if.then222 ], [ %conv62, %if.end216 ], [ %conv62, %land.lhs.true146 ], [ %conv62, %land.lhs.true140 ], [ %conv62, %land.lhs.true135 ], [ %conv62, %land.lhs.true130 ], [ %conv62, %if.end125 ]
  %pmx.0 = phi i32 [ %conv225, %if.then222 ], [ %conv59, %if.end216 ], [ %conv59, %land.lhs.true146 ], [ %conv59, %land.lhs.true140 ], [ %conv59, %land.lhs.true135 ], [ %conv59, %land.lhs.true130 ], [ %conv59, %if.end125 ]
  %bmy.4 = phi i32 [ %conv62, %if.then222 ], [ %bmy.3, %if.end216 ], [ %conv20, %land.lhs.true146 ], [ %conv20, %land.lhs.true140 ], [ %conv20, %land.lhs.true135 ], [ %conv20, %land.lhs.true130 ], [ %conv20, %if.end125 ]
  %bmx.4 = phi i32 [ %conv59, %if.then222 ], [ %bmx.3, %if.end216 ], [ %conv, %land.lhs.true146 ], [ %conv, %land.lhs.true140 ], [ %conv, %land.lhs.true135 ], [ %conv, %land.lhs.true130 ], [ %conv, %if.end125 ]
  %bcost.4 = phi i64 [ %bcost.3, %if.then222 ], [ %bcost.3, %if.end216 ], [ %bcost.1, %land.lhs.true146 ], [ %bcost.1, %land.lhs.true140 ], [ %bcost.1, %land.lhs.true135 ], [ %bcost.1, %land.lhs.true130 ], [ %bcost.1, %if.end125 ]
  %mv_min_spel232 = getelementptr inbounds i8, ptr %h, i64 16456
  %arrayidx233 = getelementptr inbounds i8, ptr %h, i64 16460
  %55 = load i32, ptr %arrayidx233, align 4
  %add234 = add nsw i32 %55, 3
  %cmp235 = icmp slt i32 %bmy.4, %add234
  br i1 %cmp235, label %cleanup846, label %lor.lhs.false237

lor.lhs.false237:                                 ; preds = %if.end230
  %mv_max_spel239 = getelementptr inbounds i8, ptr %h, i64 16464
  %arrayidx240 = getelementptr inbounds i8, ptr %h, i64 16468
  %56 = load i32, ptr %arrayidx240, align 4
  %sub241 = add nsw i32 %56, -3
  %cmp242 = icmp sgt i32 %bmy.4, %sub241
  br i1 %cmp242, label %cleanup846, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %lor.lhs.false237
  %57 = load i32, ptr %mv_min_spel232, align 8
  %add248 = add nsw i32 %57, 3
  %cmp249 = icmp slt i32 %bmx.4, %add248
  br i1 %cmp249, label %cleanup846, label %lor.lhs.false251

lor.lhs.false251:                                 ; preds = %lor.lhs.false244
  %58 = load i32, ptr %mv_max_spel239, align 16
  %sub255 = add nsw i32 %58, -3
  %cmp256 = icmp sgt i32 %bmx.4, %sub255
  br i1 %cmp256, label %cleanup846, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false251
  %mc_chroma359 = getelementptr inbounds i8, ptr %h, i64 32632
  %arrayidx361 = getelementptr inbounds i8, ptr %m, i64 64
  %arrayidx363 = getelementptr inbounds i8, ptr %m, i64 124
  %shr377 = ashr i32 %2, 1
  %shr378 = ashr i32 %3, 1
  %arrayidx382 = getelementptr inbounds i8, ptr %m, i64 72
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc
  %cmp420.not = icmp eq i32 %dir.4, -2
  br i1 %cmp420.not, label %if.end622, label %for.body427

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %bcost.51375 = phi i64 [ %bcost.4, %for.cond.preheader ], [ %bcost.7, %for.inc ]
  %bmx.51374 = phi i32 [ %bmx.4, %for.cond.preheader ], [ %bmx.7, %for.inc ]
  %bmy.51373 = phi i32 [ %bmy.4, %for.cond.preheader ], [ %bmy.7, %for.inc ]
  %bsatd.31371 = phi i32 [ %bsatd.2, %for.cond.preheader ], [ %bsatd.41351, %for.inc ]
  %dir.21370 = phi i32 [ -2, %for.cond.preheader ], [ %dir.4, %for.inc ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx266 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %indvars.iv.next
  %59 = load i8, ptr %arrayidx266, align 2
  %conv268 = sext i8 %59 to i32
  %add269 = add nsw i32 %bmx.4, %conv268
  %cmp270 = icmp eq i32 %add269, %pmx.0
  %arrayidx276 = getelementptr inbounds i8, ptr %arrayidx266, i64 1
  %60 = load i8, ptr %arrayidx276, align 1
  %conv277 = sext i8 %60 to i32
  %add278 = add nsw i32 %bmy.4, %conv277
  %cmp279 = icmp eq i32 %add278, %pmy.0
  %or.cond1437 = select i1 %cmp270, i1 %cmp279, i1 false
  br i1 %or.cond1437, label %for.inc, label %if.end334

if.end334:                                        ; preds = %for.body
  %61 = load ptr, ptr %mc, align 8
  %62 = load i32, ptr %i_stride, align 8
  %63 = load ptr, ptr %weight, align 8
  tail call void %61(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %62, i32 noundef %add269, i32 noundef %add278, i32 noundef %2, i32 noundef %3, ptr noundef %63) #6
  %64 = load ptr, ptr %arrayidx71, align 8
  %65 = load ptr, ptr %p_fenc, align 8
  %call308 = tail call i32 %64(ptr noundef %65, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6
  %idxprom315 = sext i32 %add269 to i64
  %arrayidx316 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom315
  %66 = load i16, ptr %arrayidx316, align 2
  %conv317 = zext i16 %66 to i32
  %add318 = add nsw i32 %call308, %conv317
  %idxprom325 = sext i32 %add278 to i64
  %arrayidx326 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom325
  %67 = load i16, ptr %arrayidx326, align 2
  %conv327 = zext i16 %67 to i32
  %add328 = add nsw i32 %add318, %conv327
  %spec.select1291 = tail call i32 @llvm.smin.i32(i32 %add328, i32 %bsatd.31371)
  %mul335 = mul nsw i32 %spec.select1291, 17
  %div336 = sdiv i32 %mul335, 16
  %cmp337.not = icmp sgt i32 %add328, %div336
  br i1 %cmp337.not, label %for.inc, label %if.then339

if.then339:                                       ; preds = %if.end334
  %and.i1298 = and i32 %add269, 65535
  %shl.i1299 = shl i32 %add278, 16
  %add.i1300 = or disjoint i32 %shl.i1299, %and.i1298
  store i32 %add.i1300, ptr %arrayidx4, align 4
  %68 = load i32, ptr %m, align 16
  %cmp355 = icmp slt i32 %68, 4
  br i1 %cmp355, label %if.then357, label %if.end400

if.then357:                                       ; preds = %if.then339
  %69 = load ptr, ptr %mc_chroma359, align 8
  %70 = load ptr, ptr %arrayidx361, align 16
  %71 = load i32, ptr %arrayidx363, align 4
  %add376 = add nsw i32 %add278, %cond
  tail call void %69(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %70, i32 noundef %71, i32 noundef %add269, i32 noundef %add376, i32 noundef %shr377, i32 noundef %shr378) #6
  %72 = load ptr, ptr %mc_chroma359, align 8
  %73 = load ptr, ptr %arrayidx382, align 8
  %74 = load i32, ptr %arrayidx363, align 4
  tail call void %72(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %73, i32 noundef %74, i32 noundef %add269, i32 noundef %add376, i32 noundef %shr377, i32 noundef %shr378) #6
  %.pre1407 = load i32, ptr %m, align 16
  br label %if.end400

if.end400:                                        ; preds = %if.then357, %if.then339
  %75 = phi i32 [ %.pre1407, %if.then357 ], [ %68, %if.then339 ]
  %call402 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %75) #6
  %cmp403 = icmp ult i64 %call402, %bcost.51375
  br i1 %cmp403, label %if.then405, label %for.inc

if.then405:                                       ; preds = %if.end400
  %76 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end400, %if.then405, %if.end334
  %bsatd.41351 = phi i32 [ %spec.select1291, %if.end334 ], [ %spec.select1291, %if.then405 ], [ %spec.select1291, %if.end400 ], [ %bsatd.31371, %for.body ]
  %dir.4 = phi i32 [ %dir.21370, %if.end334 ], [ %76, %if.then405 ], [ %dir.21370, %if.end400 ], [ %dir.21370, %for.body ]
  %bmy.7 = phi i32 [ %bmy.51373, %if.end334 ], [ %add278, %if.then405 ], [ %bmy.51373, %if.end400 ], [ %bmy.51373, %for.body ]
  %bmx.7 = phi i32 [ %bmx.51374, %if.end334 ], [ %add269, %if.then405 ], [ %bmx.51374, %if.end400 ], [ %bmx.51374, %for.body ]
  %bcost.7 = phi i64 [ %bcost.51375, %if.end334 ], [ %call402, %if.then405 ], [ %bcost.51375, %if.end400 ], [ %bcost.51375, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

for.cond423:                                      ; preds = %for.inc611.2.thread, %for.inc611.2
  %bcost.11.21436 = phi i64 [ %call591.2, %for.inc611.2.thread ], [ %bcost.11.1, %for.inc611.2 ]
  %bmx.11.21435 = phi i32 [ %add458.2, %for.inc611.2.thread ], [ %bmx.11.1, %for.inc611.2 ]
  %bmy.11.21434 = phi i32 [ %add467.2, %for.inc611.2.thread ], [ %bmy.11.1, %for.inc611.2 ]
  %dir.8.21433 = phi i32 [ %134, %for.inc611.2.thread ], [ %dir.8.1, %for.inc611.2 ]
  %bsatd.71357.21432 = phi i32 [ %spec.select1292.2, %for.inc611.2.thread ], [ %bsatd.71357.2, %for.inc611.2 ]
  %inc619 = add nuw nsw i32 %i.01384, 1
  %exitcond1400.not = icmp eq i32 %inc619, 10
  br i1 %exitcond1400.not, label %if.end622, label %for.body427

for.body427:                                      ; preds = %for.cond.cleanup, %for.cond423
  %bcost.81387 = phi i64 [ %bcost.11.21436, %for.cond423 ], [ %bcost.7, %for.cond.cleanup ]
  %bmx.81386 = phi i32 [ %bmx.11.21435, %for.cond423 ], [ %bmx.7, %for.cond.cleanup ]
  %bmy.81385 = phi i32 [ %bmy.11.21434, %for.cond423 ], [ %bmy.7, %for.cond.cleanup ]
  %i.01384 = phi i32 [ %inc619, %for.cond423 ], [ 1, %for.cond.cleanup ]
  %bsatd.51383 = phi i32 [ %bsatd.71357.21432, %for.cond423 ], [ %bsatd.41351, %for.cond.cleanup ]
  %dir.51382 = phi i32 [ %dir.8.21433, %for.cond423 ], [ %dir.4, %for.cond.cleanup ]
  %add428 = add nsw i32 %dir.51382, 1
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds [8 x i8], ptr @mod6m1, i64 0, i64 %idxprom429
  %77 = load i8, ptr %arrayidx430, align 1
  %conv431 = zext i8 %77 to i32
  %78 = load i32, ptr %arrayidx233, align 4
  %add435 = add nsw i32 %78, 3
  %cmp436 = icmp slt i32 %bmy.81385, %add435
  br i1 %cmp436, label %if.end622, label %lor.lhs.false438

lor.lhs.false438:                                 ; preds = %for.body427
  %79 = load i32, ptr %arrayidx240, align 4
  %sub442 = add nsw i32 %79, -3
  %cmp443 = icmp sgt i32 %bmy.81385, %sub442
  br i1 %cmp443, label %if.end622, label %for.cond448.preheader

for.cond448.preheader:                            ; preds = %lor.lhs.false438
  %sub607 = add nsw i32 %conv431, -1
  %80 = zext i8 %77 to i64
  %arrayidx455 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %80
  %81 = load i8, ptr %arrayidx455, align 2
  %conv457 = sext i8 %81 to i32
  %add458 = add nsw i32 %bmx.81386, %conv457
  %cmp459 = icmp eq i32 %add458, %pmx.0
  %arrayidx465 = getelementptr inbounds i8, ptr %arrayidx455, i64 1
  %82 = load i8, ptr %arrayidx465, align 1
  %conv466 = sext i8 %82 to i32
  %add467 = add nsw i32 %bmy.81385, %conv466
  %cmp468 = icmp eq i32 %add467, %pmy.0
  %or.cond1438 = select i1 %cmp459, i1 %cmp468, i1 false
  br i1 %or.cond1438, label %for.inc611, label %if.end523

if.end523:                                        ; preds = %for.cond448.preheader
  %83 = load ptr, ptr %mc, align 8
  %84 = load i32, ptr %i_stride, align 8
  %85 = load ptr, ptr %weight, align 8
  tail call void %83(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %84, i32 noundef %add458, i32 noundef %add467, i32 noundef %2, i32 noundef %3, ptr noundef %85) #6
  %86 = load ptr, ptr %arrayidx71, align 8
  %87 = load ptr, ptr %p_fenc, align 8
  %call497 = tail call i32 %86(ptr noundef %87, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6
  %idxprom504 = sext i32 %add458 to i64
  %arrayidx505 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom504
  %88 = load i16, ptr %arrayidx505, align 2
  %conv506 = zext i16 %88 to i32
  %add507 = add nsw i32 %call497, %conv506
  %idxprom514 = sext i32 %add467 to i64
  %arrayidx515 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom514
  %89 = load i16, ptr %arrayidx515, align 2
  %conv516 = zext i16 %89 to i32
  %add517 = add nsw i32 %add507, %conv516
  %spec.select1292 = tail call i32 @llvm.smin.i32(i32 %add517, i32 %bsatd.51383)
  %mul524 = mul nsw i32 %spec.select1292, 17
  %div525 = sdiv i32 %mul524, 16
  %cmp526.not = icmp sgt i32 %add517, %div525
  br i1 %cmp526.not, label %for.inc611, label %if.then528

if.then528:                                       ; preds = %if.end523
  %and.i1301 = and i32 %add458, 65535
  %shl.i1302 = shl i32 %add467, 16
  %add.i1303 = or disjoint i32 %shl.i1302, %and.i1301
  store i32 %add.i1303, ptr %arrayidx4, align 4
  %90 = load i32, ptr %m, align 16
  %cmp544 = icmp slt i32 %90, 4
  br i1 %cmp544, label %if.then546, label %if.end589

if.then546:                                       ; preds = %if.then528
  %91 = load ptr, ptr %mc_chroma359, align 8
  %92 = load ptr, ptr %arrayidx361, align 16
  %93 = load i32, ptr %arrayidx363, align 4
  %add565 = add nsw i32 %add467, %cond
  tail call void %91(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %92, i32 noundef %93, i32 noundef %add458, i32 noundef %add565, i32 noundef %shr377, i32 noundef %shr378) #6
  %94 = load ptr, ptr %mc_chroma359, align 8
  %95 = load ptr, ptr %arrayidx382, align 8
  %96 = load i32, ptr %arrayidx363, align 4
  tail call void %94(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %95, i32 noundef %96, i32 noundef %add458, i32 noundef %add565, i32 noundef %shr377, i32 noundef %shr378) #6
  %.pre1409 = load i32, ptr %m, align 16
  br label %if.end589

if.end589:                                        ; preds = %if.then546, %if.then528
  %97 = phi i32 [ %.pre1409, %if.then546 ], [ %90, %if.then528 ]
  %call591 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %97) #6
  %cmp592 = icmp ult i64 %call591, %bcost.81387
  br i1 %cmp592, label %if.then594, label %for.inc611

if.then594:                                       ; preds = %if.end589
  br label %for.inc611

for.inc611:                                       ; preds = %for.cond448.preheader, %if.end589, %if.then594, %if.end523
  %bsatd.71357 = phi i32 [ %spec.select1292, %if.end523 ], [ %spec.select1292, %if.then594 ], [ %spec.select1292, %if.end589 ], [ %bsatd.51383, %for.cond448.preheader ]
  %dir.8 = phi i32 [ -2, %if.end523 ], [ %sub607, %if.then594 ], [ -2, %if.end589 ], [ -2, %for.cond448.preheader ]
  %bmy.11 = phi i32 [ %bmy.81385, %if.end523 ], [ %add467, %if.then594 ], [ %bmy.81385, %if.end589 ], [ %bmy.81385, %for.cond448.preheader ]
  %bmx.11 = phi i32 [ %bmx.81386, %if.end523 ], [ %add458, %if.then594 ], [ %bmx.81386, %if.end589 ], [ %bmx.81386, %for.cond448.preheader ]
  %bcost.11 = phi i64 [ %bcost.81387, %if.end523 ], [ %call591, %if.then594 ], [ %bcost.81387, %if.end589 ], [ %bcost.81387, %for.cond448.preheader ]
  %98 = add nuw nsw i64 %80, 1
  %arrayidx455.1 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %98
  %99 = load i8, ptr %arrayidx455.1, align 2
  %conv457.1 = sext i8 %99 to i32
  %add458.1 = add nsw i32 %bmx.81386, %conv457.1
  %cmp459.1 = icmp eq i32 %add458.1, %pmx.0
  %arrayidx465.1 = getelementptr inbounds i8, ptr %arrayidx455.1, i64 1
  %100 = load i8, ptr %arrayidx465.1, align 1
  %conv466.1 = sext i8 %100 to i32
  %add467.1 = add nsw i32 %bmy.81385, %conv466.1
  %cmp468.1 = icmp eq i32 %add467.1, %pmy.0
  %or.cond1439 = select i1 %cmp459.1, i1 %cmp468.1, i1 false
  br i1 %or.cond1439, label %for.inc611.1, label %if.end523.1

if.end523.1:                                      ; preds = %for.inc611
  %101 = load ptr, ptr %mc, align 8
  %102 = load i32, ptr %i_stride, align 8
  %103 = load ptr, ptr %weight, align 8
  tail call void %101(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %102, i32 noundef %add458.1, i32 noundef %add467.1, i32 noundef %2, i32 noundef %3, ptr noundef %103) #6
  %104 = load ptr, ptr %arrayidx71, align 8
  %105 = load ptr, ptr %p_fenc, align 8
  %call497.1 = tail call i32 %104(ptr noundef %105, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6
  %idxprom504.1 = sext i32 %add458.1 to i64
  %arrayidx505.1 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom504.1
  %106 = load i16, ptr %arrayidx505.1, align 2
  %conv506.1 = zext i16 %106 to i32
  %add507.1 = add nsw i32 %call497.1, %conv506.1
  %idxprom514.1 = sext i32 %add467.1 to i64
  %arrayidx515.1 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom514.1
  %107 = load i16, ptr %arrayidx515.1, align 2
  %conv516.1 = zext i16 %107 to i32
  %add517.1 = add nsw i32 %add507.1, %conv516.1
  %spec.select1292.1 = tail call i32 @llvm.smin.i32(i32 %add517.1, i32 %bsatd.71357)
  %mul524.1 = mul nsw i32 %spec.select1292.1, 17
  %div525.1 = sdiv i32 %mul524.1, 16
  %cmp526.not.1 = icmp sgt i32 %add517.1, %div525.1
  br i1 %cmp526.not.1, label %for.inc611.1, label %if.then528.1

if.then528.1:                                     ; preds = %if.end523.1
  %and.i1301.1 = and i32 %add458.1, 65535
  %shl.i1302.1 = shl i32 %add467.1, 16
  %add.i1303.1 = or disjoint i32 %shl.i1302.1, %and.i1301.1
  store i32 %add.i1303.1, ptr %arrayidx4, align 4
  %108 = load i32, ptr %m, align 16
  %cmp544.1 = icmp slt i32 %108, 4
  br i1 %cmp544.1, label %if.then546.1, label %if.end589.1

if.then546.1:                                     ; preds = %if.then528.1
  %109 = load ptr, ptr %mc_chroma359, align 8
  %110 = load ptr, ptr %arrayidx361, align 16
  %111 = load i32, ptr %arrayidx363, align 4
  %add565.1 = add nsw i32 %add467.1, %cond
  tail call void %109(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %110, i32 noundef %111, i32 noundef %add458.1, i32 noundef %add565.1, i32 noundef %shr377, i32 noundef %shr378) #6
  %112 = load ptr, ptr %mc_chroma359, align 8
  %113 = load ptr, ptr %arrayidx382, align 8
  %114 = load i32, ptr %arrayidx363, align 4
  tail call void %112(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %113, i32 noundef %114, i32 noundef %add458.1, i32 noundef %add565.1, i32 noundef %shr377, i32 noundef %shr378) #6
  %.pre1411 = load i32, ptr %m, align 16
  br label %if.end589.1

if.end589.1:                                      ; preds = %if.then546.1, %if.then528.1
  %115 = phi i32 [ %.pre1411, %if.then546.1 ], [ %108, %if.then528.1 ]
  %call591.1 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %115) #6
  %cmp592.1 = icmp ult i64 %call591.1, %bcost.11
  br i1 %cmp592.1, label %if.then594.1, label %for.inc611.1

if.then594.1:                                     ; preds = %if.end589.1
  br label %for.inc611.1

for.inc611.1:                                     ; preds = %for.inc611, %if.then594.1, %if.end589.1, %if.end523.1
  %bsatd.71357.1 = phi i32 [ %spec.select1292.1, %if.end523.1 ], [ %spec.select1292.1, %if.then594.1 ], [ %spec.select1292.1, %if.end589.1 ], [ %bsatd.71357, %for.inc611 ]
  %dir.8.1 = phi i32 [ %dir.8, %if.end523.1 ], [ %conv431, %if.then594.1 ], [ %dir.8, %if.end589.1 ], [ %dir.8, %for.inc611 ]
  %bmy.11.1 = phi i32 [ %bmy.11, %if.end523.1 ], [ %add467.1, %if.then594.1 ], [ %bmy.11, %if.end589.1 ], [ %bmy.11, %for.inc611 ]
  %bmx.11.1 = phi i32 [ %bmx.11, %if.end523.1 ], [ %add458.1, %if.then594.1 ], [ %bmx.11, %if.end589.1 ], [ %bmx.11, %for.inc611 ]
  %bcost.11.1 = phi i64 [ %bcost.11, %if.end523.1 ], [ %call591.1, %if.then594.1 ], [ %bcost.11, %if.end589.1 ], [ %bcost.11, %for.inc611 ]
  %116 = add nuw nsw i64 %80, 2
  %arrayidx455.2 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %116
  %117 = load i8, ptr %arrayidx455.2, align 2
  %conv457.2 = sext i8 %117 to i32
  %add458.2 = add nsw i32 %bmx.81386, %conv457.2
  %cmp459.2 = icmp eq i32 %add458.2, %pmx.0
  %arrayidx465.2 = getelementptr inbounds i8, ptr %arrayidx455.2, i64 1
  %118 = load i8, ptr %arrayidx465.2, align 1
  %conv466.2 = sext i8 %118 to i32
  %add467.2 = add nsw i32 %bmy.81385, %conv466.2
  %cmp468.2 = icmp eq i32 %add467.2, %pmy.0
  %or.cond1440 = select i1 %cmp459.2, i1 %cmp468.2, i1 false
  br i1 %or.cond1440, label %for.inc611.2, label %if.end523.2

if.end523.2:                                      ; preds = %for.inc611.1
  %119 = load ptr, ptr %mc, align 8
  %120 = load i32, ptr %i_stride, align 8
  %121 = load ptr, ptr %weight, align 8
  tail call void %119(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %120, i32 noundef %add458.2, i32 noundef %add467.2, i32 noundef %2, i32 noundef %3, ptr noundef %121) #6
  %122 = load ptr, ptr %arrayidx71, align 8
  %123 = load ptr, ptr %p_fenc, align 8
  %call497.2 = tail call i32 %122(ptr noundef %123, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6
  %idxprom504.2 = sext i32 %add458.2 to i64
  %arrayidx505.2 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom504.2
  %124 = load i16, ptr %arrayidx505.2, align 2
  %conv506.2 = zext i16 %124 to i32
  %add507.2 = add nsw i32 %call497.2, %conv506.2
  %idxprom514.2 = sext i32 %add467.2 to i64
  %arrayidx515.2 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom514.2
  %125 = load i16, ptr %arrayidx515.2, align 2
  %conv516.2 = zext i16 %125 to i32
  %add517.2 = add nsw i32 %add507.2, %conv516.2
  %spec.select1292.2 = tail call i32 @llvm.smin.i32(i32 %add517.2, i32 %bsatd.71357.1)
  %mul524.2 = mul nsw i32 %spec.select1292.2, 17
  %div525.2 = sdiv i32 %mul524.2, 16
  %cmp526.not.2 = icmp sgt i32 %add517.2, %div525.2
  br i1 %cmp526.not.2, label %for.inc611.2, label %if.then528.2

if.then528.2:                                     ; preds = %if.end523.2
  %and.i1301.2 = and i32 %add458.2, 65535
  %shl.i1302.2 = shl i32 %add467.2, 16
  %add.i1303.2 = or disjoint i32 %shl.i1302.2, %and.i1301.2
  store i32 %add.i1303.2, ptr %arrayidx4, align 4
  %126 = load i32, ptr %m, align 16
  %cmp544.2 = icmp slt i32 %126, 4
  br i1 %cmp544.2, label %if.then546.2, label %if.end589.2

if.then546.2:                                     ; preds = %if.then528.2
  %127 = load ptr, ptr %mc_chroma359, align 8
  %128 = load ptr, ptr %arrayidx361, align 16
  %129 = load i32, ptr %arrayidx363, align 4
  %add565.2 = add nsw i32 %add467.2, %cond
  tail call void %127(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %128, i32 noundef %129, i32 noundef %add458.2, i32 noundef %add565.2, i32 noundef %shr377, i32 noundef %shr378) #6
  %130 = load ptr, ptr %mc_chroma359, align 8
  %131 = load ptr, ptr %arrayidx382, align 8
  %132 = load i32, ptr %arrayidx363, align 4
  tail call void %130(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %131, i32 noundef %132, i32 noundef %add458.2, i32 noundef %add565.2, i32 noundef %shr377, i32 noundef %shr378) #6
  %.pre1413 = load i32, ptr %m, align 16
  br label %if.end589.2

if.end589.2:                                      ; preds = %if.then546.2, %if.then528.2
  %133 = phi i32 [ %.pre1413, %if.then546.2 ], [ %126, %if.then528.2 ]
  %call591.2 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %133) #6
  %cmp592.2 = icmp ult i64 %call591.2, %bcost.11.1
  br i1 %cmp592.2, label %for.inc611.2.thread, label %for.inc611.2

for.inc611.2.thread:                              ; preds = %if.end589.2
  %134 = add nuw nsw i32 %conv431, 1
  br label %for.cond423

for.inc611.2:                                     ; preds = %for.inc611.1, %if.end589.2, %if.end523.2
  %bsatd.71357.2 = phi i32 [ %spec.select1292.2, %if.end523.2 ], [ %spec.select1292.2, %if.end589.2 ], [ %bsatd.71357.1, %for.inc611.1 ]
  %cmp614.not = icmp eq i32 %dir.8.1, -2
  br i1 %cmp614.not, label %if.end622, label %for.cond423

if.end622:                                        ; preds = %for.body427, %lor.lhs.false438, %for.inc611.2, %for.cond423, %for.cond.cleanup
  %bsatd.10 = phi i32 [ %bsatd.41351, %for.cond.cleanup ], [ %bsatd.51383, %for.body427 ], [ %bsatd.51383, %lor.lhs.false438 ], [ %bsatd.71357.21432, %for.cond423 ], [ %bsatd.71357.2, %for.inc611.2 ]
  %bmy.14 = phi i32 [ %bmy.7, %for.cond.cleanup ], [ %bmy.81385, %for.body427 ], [ %bmy.81385, %lor.lhs.false438 ], [ %bmy.11.21434, %for.cond423 ], [ %bmy.11.1, %for.inc611.2 ]
  %bmx.14 = phi i32 [ %bmx.7, %for.cond.cleanup ], [ %bmx.81386, %for.body427 ], [ %bmx.81386, %lor.lhs.false438 ], [ %bmx.11.21435, %for.cond423 ], [ %bmx.11.1, %for.inc611.2 ]
  %bcost.14 = phi i64 [ %bcost.7, %for.cond.cleanup ], [ %bcost.81387, %for.body427 ], [ %bcost.81387, %lor.lhs.false438 ], [ %bcost.11.21436, %for.cond423 ], [ %bcost.11.1, %for.inc611.2 ]
  br label %for.body628

for.cond.cleanup627:                              ; preds = %for.inc785
  %conv789 = trunc i64 %bcost.17 to i32
  %cost790 = getelementptr inbounds i8, ptr %m, i64 136
  store i32 %conv789, ptr %cost790, align 8
  %conv791 = trunc i32 %bmx.17 to i16
  store i16 %conv791, ptr %mv16, align 4
  %conv794 = trunc i32 %bmy.17 to i16
  store i16 %conv794, ptr %arrayidx19, align 2
  %arrayidx798 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %idxprom1
  %135 = load i8, ptr %arrayidx798, align 1
  %conv799 = zext i8 %135 to i64
  %arrayidx801 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %idxprom1
  %136 = load i8, ptr %arrayidx801, align 1
  %conv802 = zext i8 %136 to i64
  %shr803 = ashr i32 %2, 2
  %shr804 = ashr i32 %3, 2
  %and.i1304 = and i32 %bmx.17, 65535
  %shl.i1305 = shl i32 %bmy.17, 16
  %add.i1306 = or disjoint i32 %and.i1304, %shl.i1305
  %add.i1307 = add nuw nsw i64 %conv799, 12
  %mul.i = shl nuw nsw i64 %conv802, 3
  %add2.i = add nuw nsw i64 %add.i1307, %mul.i
  %arrayidx4.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom, i64 %add2.i
  %mul5.i = and i32 %2, -4
  %conv15.i.i = zext i32 %add.i1306 to i64
  %add.i.i = mul nuw i64 %conv15.i.i, 4294967297
  %137 = add i32 %mul5.i, -2
  %138 = tail call i32 @llvm.fshl.i32(i32 2, i32 %137, i32 31)
  switch i32 %138, label %x264_macroblock_cache_mv.exit [
    i32 7, label %do.body.i.i.preheader
    i32 1, label %if.then39.i.i
    i32 3, label %if.then63.i.i
  ]

do.body.i.i.preheader:                            ; preds = %for.cond.cleanup627
  %139 = add nsw i32 %shr804, -2
  %140 = lshr i32 %139, 1
  %narrow = add nuw i32 %140, 1
  %141 = zext i32 %narrow to i64
  %min.iters.check = icmp ult i32 %139, 6
  br i1 %min.iters.check, label %do.body.i.i.preheader1469, label %vector.ph

do.body.i.i.preheader1469:                        ; preds = %middle.block, %do.body.i.i.preheader
  %d.0.i.i.ph = phi ptr [ %arrayidx4.i, %do.body.i.i.preheader ], [ %ind.end, %middle.block ]
  %h.addr.0.i.i.ph = phi i32 [ %shr804, %do.body.i.i.preheader ], [ %ind.end1442, %middle.block ]
  %142 = add nsw i32 %h.addr.0.i.i.ph, -2
  %143 = lshr i32 %142, 1
  %144 = add nuw i32 %143, 1
  %xtraiter = and i32 %144, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %do.body.i.i.prol.loopexit, label %do.body.i.i.prol

do.body.i.i.prol:                                 ; preds = %do.body.i.i.preheader1469, %do.body.i.i.prol
  %d.0.i.i.prol = phi ptr [ %add.ptr106.i.i.prol, %do.body.i.i.prol ], [ %d.0.i.i.ph, %do.body.i.i.preheader1469 ]
  %h.addr.0.i.i.prol = phi i32 [ %sub.i.i.prol, %do.body.i.i.prol ], [ %h.addr.0.i.i.ph, %do.body.i.i.preheader1469 ]
  %prol.iter = phi i32 [ %prol.iter.next, %do.body.i.i.prol ], [ 0, %do.body.i.i.preheader1469 ]
  store i64 %add.i.i, ptr %d.0.i.i.prol, align 8
  %add.ptr95.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 8
  store i64 %add.i.i, ptr %add.ptr95.i.i.prol, align 8
  %add.ptr98.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 32
  store i64 %add.i.i, ptr %add.ptr98.i.i.prol, align 8
  %add.ptr103.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 40
  store i64 %add.i.i, ptr %add.ptr103.i.i.prol, align 8
  %sub.i.i.prol = add nsw i32 %h.addr.0.i.i.prol, -2
  %add.ptr106.i.i.prol = getelementptr inbounds i8, ptr %d.0.i.i.prol, i64 64
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %do.body.i.i.prol.loopexit, label %do.body.i.i.prol, !llvm.loop !25

do.body.i.i.prol.loopexit:                        ; preds = %do.body.i.i.prol, %do.body.i.i.preheader1469
  %d.0.i.i.unr = phi ptr [ %d.0.i.i.ph, %do.body.i.i.preheader1469 ], [ %add.ptr106.i.i.prol, %do.body.i.i.prol ]
  %h.addr.0.i.i.unr = phi i32 [ %h.addr.0.i.i.ph, %do.body.i.i.preheader1469 ], [ %sub.i.i.prol, %do.body.i.i.prol ]
  %145 = icmp ult i32 %142, 6
  br i1 %145, label %x264_macroblock_cache_mv.exit, label %do.body.i.i

vector.ph:                                        ; preds = %do.body.i.i.preheader
  %n.vec = and i64 %141, 4294967292
  %146 = shl nuw nsw i64 %n.vec, 6
  %ind.end = getelementptr i8, ptr %arrayidx4.i, i64 %146
  %.cast = trunc nuw i64 %n.vec to i32
  %147 = shl i32 %.cast, 1
  %ind.end1442 = sub i32 %shr804, %147
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 6
  %148 = or disjoint i64 %offset.idx, 64
  %149 = or disjoint i64 %offset.idx, 128
  %150 = or disjoint i64 %offset.idx, 192
  %next.gep = getelementptr i8, ptr %arrayidx4.i, i64 %offset.idx
  %next.gep1444 = getelementptr i8, ptr %arrayidx4.i, i64 %148
  %next.gep1445 = getelementptr i8, ptr %arrayidx4.i, i64 %149
  %next.gep1446 = getelementptr i8, ptr %arrayidx4.i, i64 %150
  store i64 %add.i.i, ptr %next.gep, align 8
  store i64 %add.i.i, ptr %next.gep1444, align 8
  store i64 %add.i.i, ptr %next.gep1445, align 8
  store i64 %add.i.i, ptr %next.gep1446, align 8
  %151 = getelementptr inbounds i8, ptr %next.gep, i64 8
  %152 = getelementptr inbounds i8, ptr %next.gep1444, i64 8
  %153 = getelementptr inbounds i8, ptr %next.gep1445, i64 8
  %154 = getelementptr inbounds i8, ptr %next.gep1446, i64 8
  store i64 %add.i.i, ptr %151, align 8
  store i64 %add.i.i, ptr %152, align 8
  store i64 %add.i.i, ptr %153, align 8
  store i64 %add.i.i, ptr %154, align 8
  %155 = getelementptr inbounds i8, ptr %next.gep, i64 32
  %156 = getelementptr inbounds i8, ptr %next.gep1444, i64 32
  %157 = getelementptr inbounds i8, ptr %next.gep1445, i64 32
  %158 = getelementptr inbounds i8, ptr %next.gep1446, i64 32
  store i64 %add.i.i, ptr %155, align 8
  store i64 %add.i.i, ptr %156, align 8
  store i64 %add.i.i, ptr %157, align 8
  store i64 %add.i.i, ptr %158, align 8
  %159 = getelementptr inbounds i8, ptr %next.gep, i64 40
  %160 = getelementptr inbounds i8, ptr %next.gep1444, i64 40
  %161 = getelementptr inbounds i8, ptr %next.gep1445, i64 40
  %162 = getelementptr inbounds i8, ptr %next.gep1446, i64 40
  store i64 %add.i.i, ptr %159, align 8
  store i64 %add.i.i, ptr %160, align 8
  store i64 %add.i.i, ptr %161, align 8
  store i64 %add.i.i, ptr %162, align 8
  %index.next = add nuw i64 %index, 4
  %163 = icmp eq i64 %index.next, %n.vec
  br i1 %163, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %141
  br i1 %cmp.n, label %x264_macroblock_cache_mv.exit, label %do.body.i.i.preheader1469

if.then39.i.i:                                    ; preds = %for.cond.cleanup627
  store i32 %add.i1306, ptr %arrayidx4.i, align 4
  %cmp43.i.i = icmp eq i32 %shr804, 1
  br i1 %cmp43.i.i, label %x264_macroblock_cache_mv.exit, label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then39.i.i
  %add.ptr49.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 32
  store i32 %add.i1306, ptr %add.ptr49.i.i, align 4
  %cmp50.i.i = icmp eq i32 %shr804, 2
  br i1 %cmp50.i.i, label %x264_macroblock_cache_mv.exit, label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.end46.i.i
  %add.ptr56.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 64
  store i32 %add.i1306, ptr %add.ptr56.i.i, align 4
  %add.ptr59.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 96
  store i32 %add.i1306, ptr %add.ptr59.i.i, align 4
  br label %x264_macroblock_cache_mv.exit

if.then63.i.i:                                    ; preds = %for.cond.cleanup627
  store i64 %add.i.i, ptr %arrayidx4.i, align 8
  %cmp67.i.i = icmp eq i32 %shr804, 1
  br i1 %cmp67.i.i, label %x264_macroblock_cache_mv.exit, label %if.end70.i.i

if.end70.i.i:                                     ; preds = %if.then63.i.i
  %add.ptr73.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 32
  store i64 %add.i.i, ptr %add.ptr73.i.i, align 8
  %cmp74.i.i = icmp eq i32 %shr804, 2
  br i1 %cmp74.i.i, label %x264_macroblock_cache_mv.exit, label %if.end77.i.i

if.end77.i.i:                                     ; preds = %if.end70.i.i
  %add.ptr80.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 64
  store i64 %add.i.i, ptr %add.ptr80.i.i, align 8
  %add.ptr83.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 96
  store i64 %add.i.i, ptr %add.ptr83.i.i, align 8
  br label %x264_macroblock_cache_mv.exit

do.body.i.i:                                      ; preds = %do.body.i.i.prol.loopexit, %do.body.i.i
  %d.0.i.i = phi ptr [ %add.ptr106.i.i.3, %do.body.i.i ], [ %d.0.i.i.unr, %do.body.i.i.prol.loopexit ]
  %h.addr.0.i.i = phi i32 [ %sub.i.i.3, %do.body.i.i ], [ %h.addr.0.i.i.unr, %do.body.i.i.prol.loopexit ]
  store i64 %add.i.i, ptr %d.0.i.i, align 8
  %add.ptr95.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 8
  store i64 %add.i.i, ptr %add.ptr95.i.i, align 8
  %add.ptr98.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 32
  store i64 %add.i.i, ptr %add.ptr98.i.i, align 8
  %add.ptr103.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 40
  store i64 %add.i.i, ptr %add.ptr103.i.i, align 8
  %add.ptr106.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 64
  store i64 %add.i.i, ptr %add.ptr106.i.i, align 8
  %add.ptr95.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 72
  store i64 %add.i.i, ptr %add.ptr95.i.i.1, align 8
  %add.ptr98.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 96
  store i64 %add.i.i, ptr %add.ptr98.i.i.1, align 8
  %add.ptr103.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 104
  store i64 %add.i.i, ptr %add.ptr103.i.i.1, align 8
  %add.ptr106.i.i.1 = getelementptr inbounds i8, ptr %d.0.i.i, i64 128
  store i64 %add.i.i, ptr %add.ptr106.i.i.1, align 8
  %add.ptr95.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 136
  store i64 %add.i.i, ptr %add.ptr95.i.i.2, align 8
  %add.ptr98.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 160
  store i64 %add.i.i, ptr %add.ptr98.i.i.2, align 8
  %add.ptr103.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 168
  store i64 %add.i.i, ptr %add.ptr103.i.i.2, align 8
  %add.ptr106.i.i.2 = getelementptr inbounds i8, ptr %d.0.i.i, i64 192
  store i64 %add.i.i, ptr %add.ptr106.i.i.2, align 8
  %add.ptr95.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 200
  store i64 %add.i.i, ptr %add.ptr95.i.i.3, align 8
  %add.ptr98.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 224
  store i64 %add.i.i, ptr %add.ptr98.i.i.3, align 8
  %add.ptr103.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 232
  store i64 %add.i.i, ptr %add.ptr103.i.i.3, align 8
  %sub.i.i.3 = add nsw i32 %h.addr.0.i.i, -8
  %add.ptr106.i.i.3 = getelementptr inbounds i8, ptr %d.0.i.i, i64 256
  %tobool.not.i.i.3 = icmp eq i32 %sub.i.i.3, 0
  br i1 %tobool.not.i.i.3, label %x264_macroblock_cache_mv.exit, label %do.body.i.i, !llvm.loop !27

x264_macroblock_cache_mv.exit:                    ; preds = %do.body.i.i.prol.loopexit, %do.body.i.i, %middle.block, %for.cond.cleanup627, %if.then39.i.i, %if.end46.i.i, %if.end53.i.i, %if.then63.i.i, %if.end70.i.i, %if.end77.i.i
  %164 = load i16, ptr %mvp57, align 16
  %conv808 = sext i16 %164 to i32
  %sub809 = sub nsw i32 %bmx.17, %conv808
  %165 = tail call i32 @llvm.abs.i32(i32 %sub809, i1 true)
  %spec.select1293 = tail call i32 @llvm.umin.i32(i32 %165, i32 33)
  %166 = load i16, ptr %arrayidx61, align 2
  %conv822 = sext i16 %166 to i32
  %sub823 = sub nsw i32 %bmy.17, %conv822
  %167 = tail call i32 @llvm.abs.i32(i32 %sub823, i1 true)
  %cond833 = tail call i32 @llvm.umin.i32(i32 %167, i32 33)
  %shl.i1308 = shl nuw nsw i32 %cond833, 8
  %add.i1309 = or disjoint i32 %shl.i1308, %spec.select1293
  %conv835 = trunc nuw nsw i32 %add.i1309 to i16
  %mvd1.i = getelementptr inbounds i8, ptr %h, i64 25520
  %arrayidx4.i1315 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd1.i, i64 0, i64 %idxprom, i64 %add2.i
  %cond14.i.i = mul nuw nsw i32 %add.i1309, 65537
  %conv15.i.i1316 = zext nneg i32 %cond14.i.i to i64
  %add.i.i1317 = mul nuw nsw i64 %conv15.i.i1316, 4294967297
  %168 = add i32 %shr803, 2147483647
  %169 = and i32 %168, 2147483647
  switch i32 %169, label %cleanup846 [
    i32 0, label %if.then.i.i
    i32 1, label %if.then39.i.i1335
    i32 3, label %if.then63.i.i1327
    i32 7, label %do.body.i.i1318.preheader
  ]

do.body.i.i1318.preheader:                        ; preds = %x264_macroblock_cache_mv.exit
  %170 = add nsw i32 %shr804, -2
  %171 = lshr i32 %170, 1
  %narrow1467 = add nuw i32 %171, 1
  %172 = zext i32 %narrow1467 to i64
  %min.iters.check1449 = icmp ult i32 %170, 6
  br i1 %min.iters.check1449, label %do.body.i.i1318.preheader1468, label %vector.ph1450

do.body.i.i1318.preheader1468:                    ; preds = %middle.block1447, %do.body.i.i1318.preheader
  %d.0.i.i1319.ph = phi ptr [ %arrayidx4.i1315, %do.body.i.i1318.preheader ], [ %ind.end1453, %middle.block1447 ]
  %h.addr.0.i.i1320.ph = phi i32 [ %shr804, %do.body.i.i1318.preheader ], [ %ind.end1456, %middle.block1447 ]
  %173 = add nsw i32 %h.addr.0.i.i1320.ph, -2
  %174 = lshr i32 %173, 1
  %175 = add nuw i32 %174, 1
  %xtraiter1470 = and i32 %175, 3
  %lcmp.mod1471.not = icmp eq i32 %xtraiter1470, 0
  br i1 %lcmp.mod1471.not, label %do.body.i.i1318.prol.loopexit, label %do.body.i.i1318.prol

do.body.i.i1318.prol:                             ; preds = %do.body.i.i1318.preheader1468, %do.body.i.i1318.prol
  %d.0.i.i1319.prol = phi ptr [ %add.ptr106.i.i1325.prol, %do.body.i.i1318.prol ], [ %d.0.i.i1319.ph, %do.body.i.i1318.preheader1468 ]
  %h.addr.0.i.i1320.prol = phi i32 [ %sub.i.i1324.prol, %do.body.i.i1318.prol ], [ %h.addr.0.i.i1320.ph, %do.body.i.i1318.preheader1468 ]
  %prol.iter1472 = phi i32 [ %prol.iter1472.next, %do.body.i.i1318.prol ], [ 0, %do.body.i.i1318.preheader1468 ]
  store i64 %add.i.i1317, ptr %d.0.i.i1319.prol, align 8
  %add.ptr95.i.i1321.prol = getelementptr inbounds i8, ptr %d.0.i.i1319.prol, i64 8
  store i64 %add.i.i1317, ptr %add.ptr95.i.i1321.prol, align 8
  %add.ptr98.i.i1322.prol = getelementptr inbounds i8, ptr %d.0.i.i1319.prol, i64 16
  store i64 %add.i.i1317, ptr %add.ptr98.i.i1322.prol, align 8
  %add.ptr103.i.i1323.prol = getelementptr inbounds i8, ptr %d.0.i.i1319.prol, i64 24
  store i64 %add.i.i1317, ptr %add.ptr103.i.i1323.prol, align 8
  %sub.i.i1324.prol = add nsw i32 %h.addr.0.i.i1320.prol, -2
  %add.ptr106.i.i1325.prol = getelementptr inbounds i8, ptr %d.0.i.i1319.prol, i64 32
  %prol.iter1472.next = add i32 %prol.iter1472, 1
  %prol.iter1472.cmp.not = icmp eq i32 %prol.iter1472.next, %xtraiter1470
  br i1 %prol.iter1472.cmp.not, label %do.body.i.i1318.prol.loopexit, label %do.body.i.i1318.prol, !llvm.loop !28

do.body.i.i1318.prol.loopexit:                    ; preds = %do.body.i.i1318.prol, %do.body.i.i1318.preheader1468
  %d.0.i.i1319.unr = phi ptr [ %d.0.i.i1319.ph, %do.body.i.i1318.preheader1468 ], [ %add.ptr106.i.i1325.prol, %do.body.i.i1318.prol ]
  %h.addr.0.i.i1320.unr = phi i32 [ %h.addr.0.i.i1320.ph, %do.body.i.i1318.preheader1468 ], [ %sub.i.i1324.prol, %do.body.i.i1318.prol ]
  %176 = icmp ult i32 %173, 6
  br i1 %176, label %cleanup846, label %do.body.i.i1318

vector.ph1450:                                    ; preds = %do.body.i.i1318.preheader
  %n.vec1452 = and i64 %172, 4294967292
  %177 = shl nuw nsw i64 %n.vec1452, 5
  %ind.end1453 = getelementptr i8, ptr %arrayidx4.i1315, i64 %177
  %.cast1455 = trunc nuw i64 %n.vec1452 to i32
  %178 = shl i32 %.cast1455, 1
  %ind.end1456 = sub i32 %shr804, %178
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1450
  %index1459 = phi i64 [ 0, %vector.ph1450 ], [ %index.next1465, %vector.body1458 ]
  %offset.idx1460 = shl i64 %index1459, 5
  %179 = or disjoint i64 %offset.idx1460, 32
  %180 = or disjoint i64 %offset.idx1460, 64
  %181 = or disjoint i64 %offset.idx1460, 96
  %next.gep1461 = getelementptr i8, ptr %arrayidx4.i1315, i64 %offset.idx1460
  %next.gep1462 = getelementptr i8, ptr %arrayidx4.i1315, i64 %179
  %next.gep1463 = getelementptr i8, ptr %arrayidx4.i1315, i64 %180
  %next.gep1464 = getelementptr i8, ptr %arrayidx4.i1315, i64 %181
  store i64 %add.i.i1317, ptr %next.gep1461, align 8
  store i64 %add.i.i1317, ptr %next.gep1462, align 8
  store i64 %add.i.i1317, ptr %next.gep1463, align 8
  store i64 %add.i.i1317, ptr %next.gep1464, align 8
  %182 = getelementptr inbounds i8, ptr %next.gep1461, i64 8
  %183 = getelementptr inbounds i8, ptr %next.gep1462, i64 8
  %184 = getelementptr inbounds i8, ptr %next.gep1463, i64 8
  %185 = getelementptr inbounds i8, ptr %next.gep1464, i64 8
  store i64 %add.i.i1317, ptr %182, align 8
  store i64 %add.i.i1317, ptr %183, align 8
  store i64 %add.i.i1317, ptr %184, align 8
  store i64 %add.i.i1317, ptr %185, align 8
  %186 = getelementptr inbounds i8, ptr %next.gep1461, i64 16
  %187 = getelementptr inbounds i8, ptr %next.gep1462, i64 16
  %188 = getelementptr inbounds i8, ptr %next.gep1463, i64 16
  %189 = getelementptr inbounds i8, ptr %next.gep1464, i64 16
  store i64 %add.i.i1317, ptr %186, align 8
  store i64 %add.i.i1317, ptr %187, align 8
  store i64 %add.i.i1317, ptr %188, align 8
  store i64 %add.i.i1317, ptr %189, align 8
  %190 = getelementptr inbounds i8, ptr %next.gep1461, i64 24
  %191 = getelementptr inbounds i8, ptr %next.gep1462, i64 24
  %192 = getelementptr inbounds i8, ptr %next.gep1463, i64 24
  %193 = getelementptr inbounds i8, ptr %next.gep1464, i64 24
  store i64 %add.i.i1317, ptr %190, align 8
  store i64 %add.i.i1317, ptr %191, align 8
  store i64 %add.i.i1317, ptr %192, align 8
  store i64 %add.i.i1317, ptr %193, align 8
  %index.next1465 = add nuw i64 %index1459, 4
  %194 = icmp eq i64 %index.next1465, %n.vec1452
  br i1 %194, label %middle.block1447, label %vector.body1458, !llvm.loop !29

middle.block1447:                                 ; preds = %vector.body1458
  %cmp.n1466 = icmp eq i64 %n.vec1452, %172
  br i1 %cmp.n1466, label %cleanup846, label %do.body.i.i1318.preheader1468

if.then.i.i:                                      ; preds = %x264_macroblock_cache_mv.exit
  store i16 %conv835, ptr %arrayidx4.i1315, align 2
  %cmp21.i.i = icmp eq i32 %shr804, 1
  br i1 %cmp21.i.i, label %cleanup846, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %add.ptr26.i.i = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 16
  store i16 %conv835, ptr %add.ptr26.i.i, align 2
  %cmp27.i.i = icmp eq i32 %shr804, 2
  br i1 %cmp27.i.i, label %cleanup846, label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.end.i.i
  %add.ptr33.i.i = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 32
  store i16 %conv835, ptr %add.ptr33.i.i, align 2
  %add.ptr36.i.i = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 48
  store i16 %conv835, ptr %add.ptr36.i.i, align 2
  br label %cleanup846

if.then39.i.i1335:                                ; preds = %x264_macroblock_cache_mv.exit
  store i32 %cond14.i.i, ptr %arrayidx4.i1315, align 4
  %cmp43.i.i1336 = icmp eq i32 %shr804, 1
  br i1 %cmp43.i.i1336, label %cleanup846, label %if.end46.i.i1337

if.end46.i.i1337:                                 ; preds = %if.then39.i.i1335
  %add.ptr49.i.i1338 = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 16
  store i32 %cond14.i.i, ptr %add.ptr49.i.i1338, align 4
  %cmp50.i.i1339 = icmp eq i32 %shr804, 2
  br i1 %cmp50.i.i1339, label %cleanup846, label %if.end53.i.i1340

if.end53.i.i1340:                                 ; preds = %if.end46.i.i1337
  %add.ptr56.i.i1341 = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 32
  store i32 %cond14.i.i, ptr %add.ptr56.i.i1341, align 4
  %add.ptr59.i.i1342 = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 48
  store i32 %cond14.i.i, ptr %add.ptr59.i.i1342, align 4
  br label %cleanup846

if.then63.i.i1327:                                ; preds = %x264_macroblock_cache_mv.exit
  store i64 %add.i.i1317, ptr %arrayidx4.i1315, align 8
  %cmp67.i.i1328 = icmp eq i32 %shr804, 1
  br i1 %cmp67.i.i1328, label %cleanup846, label %if.end70.i.i1329

if.end70.i.i1329:                                 ; preds = %if.then63.i.i1327
  %add.ptr73.i.i1330 = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 16
  store i64 %add.i.i1317, ptr %add.ptr73.i.i1330, align 8
  %cmp74.i.i1331 = icmp eq i32 %shr804, 2
  br i1 %cmp74.i.i1331, label %cleanup846, label %if.end77.i.i1332

if.end77.i.i1332:                                 ; preds = %if.end70.i.i1329
  %add.ptr80.i.i1333 = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 32
  store i64 %add.i.i1317, ptr %add.ptr80.i.i1333, align 8
  %add.ptr83.i.i1334 = getelementptr inbounds i8, ptr %arrayidx4.i1315, i64 48
  store i64 %add.i.i1317, ptr %add.ptr83.i.i1334, align 8
  br label %cleanup846

do.body.i.i1318:                                  ; preds = %do.body.i.i1318.prol.loopexit, %do.body.i.i1318
  %d.0.i.i1319 = phi ptr [ %add.ptr106.i.i1325.3, %do.body.i.i1318 ], [ %d.0.i.i1319.unr, %do.body.i.i1318.prol.loopexit ]
  %h.addr.0.i.i1320 = phi i32 [ %sub.i.i1324.3, %do.body.i.i1318 ], [ %h.addr.0.i.i1320.unr, %do.body.i.i1318.prol.loopexit ]
  store i64 %add.i.i1317, ptr %d.0.i.i1319, align 8
  %add.ptr95.i.i1321 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 8
  store i64 %add.i.i1317, ptr %add.ptr95.i.i1321, align 8
  %add.ptr98.i.i1322 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 16
  store i64 %add.i.i1317, ptr %add.ptr98.i.i1322, align 8
  %add.ptr103.i.i1323 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 24
  store i64 %add.i.i1317, ptr %add.ptr103.i.i1323, align 8
  %add.ptr106.i.i1325 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 32
  store i64 %add.i.i1317, ptr %add.ptr106.i.i1325, align 8
  %add.ptr95.i.i1321.1 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 40
  store i64 %add.i.i1317, ptr %add.ptr95.i.i1321.1, align 8
  %add.ptr98.i.i1322.1 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 48
  store i64 %add.i.i1317, ptr %add.ptr98.i.i1322.1, align 8
  %add.ptr103.i.i1323.1 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 56
  store i64 %add.i.i1317, ptr %add.ptr103.i.i1323.1, align 8
  %add.ptr106.i.i1325.1 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 64
  store i64 %add.i.i1317, ptr %add.ptr106.i.i1325.1, align 8
  %add.ptr95.i.i1321.2 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 72
  store i64 %add.i.i1317, ptr %add.ptr95.i.i1321.2, align 8
  %add.ptr98.i.i1322.2 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 80
  store i64 %add.i.i1317, ptr %add.ptr98.i.i1322.2, align 8
  %add.ptr103.i.i1323.2 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 88
  store i64 %add.i.i1317, ptr %add.ptr103.i.i1323.2, align 8
  %add.ptr106.i.i1325.2 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 96
  store i64 %add.i.i1317, ptr %add.ptr106.i.i1325.2, align 8
  %add.ptr95.i.i1321.3 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 104
  store i64 %add.i.i1317, ptr %add.ptr95.i.i1321.3, align 8
  %add.ptr98.i.i1322.3 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 112
  store i64 %add.i.i1317, ptr %add.ptr98.i.i1322.3, align 8
  %add.ptr103.i.i1323.3 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 120
  store i64 %add.i.i1317, ptr %add.ptr103.i.i1323.3, align 8
  %sub.i.i1324.3 = add nsw i32 %h.addr.0.i.i1320, -8
  %add.ptr106.i.i1325.3 = getelementptr inbounds i8, ptr %d.0.i.i1319, i64 128
  %tobool.not.i.i1326.3 = icmp eq i32 %sub.i.i1324.3, 0
  br i1 %tobool.not.i.i1326.3, label %cleanup846, label %do.body.i.i1318, !llvm.loop !30

for.body628:                                      ; preds = %if.end622, %for.inc785
  %indvars.iv1401 = phi i64 [ 0, %if.end622 ], [ %indvars.iv.next1402, %for.inc785 ]
  %bcost.151392 = phi i64 [ %bcost.14, %if.end622 ], [ %bcost.17, %for.inc785 ]
  %bmx.151390 = phi i32 [ %bmx.14, %if.end622 ], [ %bmx.17, %for.inc785 ]
  %bmy.151389 = phi i32 [ %bmy.14, %if.end622 ], [ %bmy.17, %for.inc785 ]
  %bsatd.111388 = phi i32 [ %bsatd.10, %if.end622 ], [ %bsatd.121369, %for.inc785 ]
  %indvars.iv.next1402 = add nuw nsw i64 %indvars.iv1401, 1
  %arrayidx631 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %indvars.iv.next1402
  %195 = load i8, ptr %arrayidx631, align 2
  %conv633 = sext i8 %195 to i32
  %add634 = add nsw i32 %bmx.14, %conv633
  %cmp635 = icmp eq i32 %add634, %pmx.0
  %arrayidx641 = getelementptr inbounds i8, ptr %arrayidx631, i64 1
  %196 = load i8, ptr %arrayidx641, align 1
  %conv642 = sext i8 %196 to i32
  %add643 = add nsw i32 %bmy.14, %conv642
  %cmp644 = icmp eq i32 %add643, %pmy.0
  %or.cond1441 = select i1 %cmp635, i1 %cmp644, i1 false
  br i1 %or.cond1441, label %for.inc785, label %if.end699

if.end699:                                        ; preds = %for.body628
  %197 = load ptr, ptr %mc, align 8
  %198 = load i32, ptr %i_stride, align 8
  %199 = load ptr, ptr %weight, align 8
  tail call void %197(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %198, i32 noundef %add634, i32 noundef %add643, i32 noundef %2, i32 noundef %3, ptr noundef %199) #6
  %200 = load ptr, ptr %arrayidx71, align 8
  %201 = load ptr, ptr %p_fenc, align 8
  %call673 = tail call i32 %200(ptr noundef %201, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #6
  %idxprom680 = sext i32 %add634 to i64
  %arrayidx681 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom680
  %202 = load i16, ptr %arrayidx681, align 2
  %conv682 = zext i16 %202 to i32
  %add683 = add nsw i32 %call673, %conv682
  %idxprom690 = sext i32 %add643 to i64
  %arrayidx691 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom690
  %203 = load i16, ptr %arrayidx691, align 2
  %conv692 = zext i16 %203 to i32
  %add693 = add nsw i32 %add683, %conv692
  %spec.select1294 = tail call i32 @llvm.smin.i32(i32 %add693, i32 %bsatd.111388)
  %mul700 = mul nsw i32 %spec.select1294, 17
  %div701 = sdiv i32 %mul700, 16
  %cmp702.not = icmp sgt i32 %add693, %div701
  br i1 %cmp702.not, label %for.inc785, label %if.then704

if.then704:                                       ; preds = %if.end699
  %and.i1343 = and i32 %add634, 65535
  %shl.i1344 = shl i32 %add643, 16
  %add.i1345 = or disjoint i32 %shl.i1344, %and.i1343
  store i32 %add.i1345, ptr %arrayidx4, align 4
  %204 = load i32, ptr %m, align 16
  %cmp720 = icmp slt i32 %204, 4
  br i1 %cmp720, label %if.then722, label %if.end765

if.then722:                                       ; preds = %if.then704
  %205 = load ptr, ptr %mc_chroma359, align 8
  %206 = load ptr, ptr %arrayidx361, align 16
  %207 = load i32, ptr %arrayidx363, align 4
  %add741 = add nsw i32 %add643, %cond
  tail call void %205(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %206, i32 noundef %207, i32 noundef %add634, i32 noundef %add741, i32 noundef %shr377, i32 noundef %shr378) #6
  %208 = load ptr, ptr %mc_chroma359, align 8
  %209 = load ptr, ptr %arrayidx382, align 8
  %210 = load i32, ptr %arrayidx363, align 4
  tail call void %208(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %209, i32 noundef %210, i32 noundef %add634, i32 noundef %add741, i32 noundef %shr377, i32 noundef %shr378) #6
  %.pre1415 = load i32, ptr %m, align 16
  br label %if.end765

if.end765:                                        ; preds = %if.then722, %if.then704
  %211 = phi i32 [ %.pre1415, %if.then722 ], [ %204, %if.then704 ]
  %call767 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %211) #6
  %cmp768 = icmp ult i64 %call767, %bcost.151392
  br i1 %cmp768, label %if.then770, label %for.inc785

if.then770:                                       ; preds = %if.end765
  br label %for.inc785

for.inc785:                                       ; preds = %for.body628, %if.end765, %if.then770, %if.end699
  %bsatd.121369 = phi i32 [ %spec.select1294, %if.end699 ], [ %spec.select1294, %if.then770 ], [ %spec.select1294, %if.end765 ], [ %bsatd.111388, %for.body628 ]
  %bmy.17 = phi i32 [ %bmy.151389, %if.end699 ], [ %add643, %if.then770 ], [ %bmy.151389, %if.end765 ], [ %bmy.151389, %for.body628 ]
  %bmx.17 = phi i32 [ %bmx.151390, %if.end699 ], [ %add634, %if.then770 ], [ %bmx.151390, %if.end765 ], [ %bmx.151390, %for.body628 ]
  %bcost.17 = phi i64 [ %bcost.151392, %if.end699 ], [ %call767, %if.then770 ], [ %bcost.151392, %if.end765 ], [ %bcost.151392, %for.body628 ]
  %exitcond1404.not = icmp eq i64 %indvars.iv.next1402, 8
  br i1 %exitcond1404.not, label %for.cond.cleanup627, label %for.body628

cleanup846:                                       ; preds = %do.body.i.i1318.prol.loopexit, %do.body.i.i1318, %middle.block1447, %if.end77.i.i1332, %if.end70.i.i1329, %if.then63.i.i1327, %if.end53.i.i1340, %if.end46.i.i1337, %if.then39.i.i1335, %if.end30.i.i, %if.end.i.i, %if.then.i.i, %x264_macroblock_cache_mv.exit, %if.end230, %lor.lhs.false237, %lor.lhs.false244, %lor.lhs.false251
  store i32 0, ptr %b_skip_mc, align 4
  ret void
}

declare void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @x264_rd_cost_part(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = distinct !{!8, !7, !6}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !7, !6}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !6, !7}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !6, !7}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !6, !7}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !6, !7}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !6, !7}
!30 = distinct !{!30, !6}
