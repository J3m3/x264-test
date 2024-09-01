; ModuleID = 'ldecod_src/intra16x16_pred_normal.c'
source_filename = "ldecod_src/intra16x16_pred_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [47 x i8] c"illegal 16x16 intra prediction mode input: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"invalid 16x16 intra pred Mode VERT_PRED_16\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"invalid 16x16 intra pred Mode HOR_PRED_16\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"invalid 16x16 intra pred Mode PLANE_16\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @intrapred_16x16_normal(ptr noundef %currMB, i32 noundef %pl, i32 noundef %predmode) local_unnamed_addr #0 {
entry:
  %a.i78 = alloca %struct.pix_pos, align 4
  %b.i79 = alloca %struct.pix_pos, align 4
  %d.i = alloca %struct.pix_pos, align 4
  %a.i40 = alloca %struct.pix_pos, align 4
  %b.i41 = alloca %struct.pix_pos, align 4
  %a.i = alloca %struct.pix_pos, align 4
  %b.i = alloca %struct.pix_pos, align 4
  switch i32 %predmode, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1.i = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1.i, align 8
  %tobool.not.i = icmp eq i32 %pl, 0
  %dec_picture2.i = getelementptr inbounds i8, ptr %0, i64 13520
  %2 = load ptr, ptr %dec_picture2.i, align 8
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %sw.bb
  %imgUV.i = getelementptr inbounds i8, ptr %2, i64 136
  %3 = load ptr, ptr %imgUV.i, align 8
  %sub.i = add i32 %pl, -1
  %idxprom.i = zext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds ptr, ptr %3, i64 %idxprom.i
  br label %cond.end.i

cond.false.i:                                     ; preds = %sw.bb
  %imgY3.i = getelementptr inbounds i8, ptr %2, i64 128
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.in.i = phi ptr [ %arrayidx.i, %cond.true.i ], [ %imgY3.i, %cond.false.i ]
  %cond.i = load ptr, ptr %cond.in.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %b.i) #6
  %getNeighbour.i = getelementptr inbounds i8, ptr %1, i64 856744
  %4 = load ptr, ptr %getNeighbour.i, align 8
  %mb_size.i = getelementptr inbounds i8, ptr %1, i64 849124
  call void %4(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size.i, ptr noundef nonnull %b.i) #6
  %active_pps.i = getelementptr inbounds i8, ptr %1, i64 8
  %5 = load ptr, ptr %active_pps.i, align 8
  %constrained_intra_pred_flag.i = getelementptr inbounds i8, ptr %5, i64 2204
  %6 = load i32, ptr %constrained_intra_pred_flag.i, align 4
  %tobool5.not.i = icmp eq i32 %6, 0
  %7 = load i32, ptr %b.i, align 4
  br i1 %tobool5.not.i, label %if.end.i, label %if.else.i

if.else.i:                                        ; preds = %cond.end.i
  %tobool7.not.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i, label %if.then15.i, label %cond.true8.i

cond.true8.i:                                     ; preds = %if.else.i
  %intra_block.i = getelementptr inbounds i8, ptr %0, i64 13544
  %8 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.i = getelementptr inbounds i8, ptr %b.i, i64 4
  %9 = load i32, ptr %mb_addr.i, align 4
  %idxprom9.i = sext i32 %9 to i64
  %arrayidx10.i = getelementptr inbounds i8, ptr %8, i64 %idxprom9.i
  %10 = load i8, ptr %arrayidx10.i, align 1
  %conv.i = sext i8 %10 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %cond.true8.i, %cond.end.i
  %up_avail.0.i = phi i32 [ %conv.i, %cond.true8.i ], [ %7, %cond.end.i ]
  %tobool14.not.i = icmp eq i32 %up_avail.0.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %intra16x16_vert_pred.exit

if.then15.i:                                      ; preds = %if.end.i, %if.else.i
  call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #6
  br label %intra16x16_vert_pred.exit

intra16x16_vert_pred.exit:                        ; preds = %if.end.i, %if.then15.i
  %mb_pred.i = getelementptr inbounds i8, ptr %0, i64 1248
  %11 = load ptr, ptr %mb_pred.i, align 8
  %idxprom17.i = zext i32 %pl to i64
  %arrayidx18.i = getelementptr inbounds ptr, ptr %11, i64 %idxprom17.i
  %12 = load ptr, ptr %arrayidx18.i, align 8
  %pos_y.i = getelementptr inbounds i8, ptr %b.i, i64 14
  %13 = load i16, ptr %pos_y.i, align 2
  %idxprom20.i = sext i16 %13 to i64
  %arrayidx21.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom20.i
  %14 = load ptr, ptr %arrayidx21.i, align 8
  %pos_x.i = getelementptr inbounds i8, ptr %b.i, i64 12
  %15 = load i16, ptr %pos_x.i, align 4
  %idxprom22.i = sext i16 %15 to i64
  %arrayidx23.i = getelementptr inbounds i16, ptr %14, i64 %idxprom22.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %12, i64 8
  %16 = load ptr, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %16, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr25.i = getelementptr inbounds i8, ptr %12, i64 16
  %17 = load ptr, ptr %incdec.ptr.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %17, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr26.i = getelementptr inbounds i8, ptr %12, i64 24
  %18 = load ptr, ptr %incdec.ptr25.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %18, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr27.i = getelementptr inbounds i8, ptr %12, i64 32
  %19 = load ptr, ptr %incdec.ptr26.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %19, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr.1.i = getelementptr inbounds i8, ptr %12, i64 40
  %20 = load ptr, ptr %incdec.ptr27.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %20, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr25.1.i = getelementptr inbounds i8, ptr %12, i64 48
  %21 = load ptr, ptr %incdec.ptr.1.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %21, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr26.1.i = getelementptr inbounds i8, ptr %12, i64 56
  %22 = load ptr, ptr %incdec.ptr25.1.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %22, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr27.1.i = getelementptr inbounds i8, ptr %12, i64 64
  %23 = load ptr, ptr %incdec.ptr26.1.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %23, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr.2.i = getelementptr inbounds i8, ptr %12, i64 72
  %24 = load ptr, ptr %incdec.ptr27.1.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %24, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr25.2.i = getelementptr inbounds i8, ptr %12, i64 80
  %25 = load ptr, ptr %incdec.ptr.2.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %25, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr26.2.i = getelementptr inbounds i8, ptr %12, i64 88
  %26 = load ptr, ptr %incdec.ptr25.2.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %26, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr27.2.i = getelementptr inbounds i8, ptr %12, i64 96
  %27 = load ptr, ptr %incdec.ptr26.2.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %27, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr.3.i = getelementptr inbounds i8, ptr %12, i64 104
  %28 = load ptr, ptr %incdec.ptr27.2.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %28, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr25.3.i = getelementptr inbounds i8, ptr %12, i64 112
  %29 = load ptr, ptr %incdec.ptr.3.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %29, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %incdec.ptr26.3.i = getelementptr inbounds i8, ptr %12, i64 120
  %30 = load ptr, ptr %incdec.ptr25.3.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %30, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  %31 = load ptr, ptr %incdec.ptr26.3.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %31, ptr noundef nonnull align 2 dereferenceable(32) %arrayidx23.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %b.i) #6
  br label %return

sw.bb1:                                           ; preds = %entry
  %32 = load ptr, ptr %currMB, align 8
  %p_Vid1.i15 = getelementptr inbounds i8, ptr %currMB, i64 8
  %33 = load ptr, ptr %p_Vid1.i15, align 8
  %tobool.not.i16 = icmp eq i32 %pl, 0
  %dec_picture2.i17 = getelementptr inbounds i8, ptr %32, i64 13520
  %34 = load ptr, ptr %dec_picture2.i17, align 8
  br i1 %tobool.not.i16, label %cond.false.i38, label %cond.true.i18

cond.true.i18:                                    ; preds = %sw.bb1
  %imgUV.i19 = getelementptr inbounds i8, ptr %34, i64 136
  %35 = load ptr, ptr %imgUV.i19, align 8
  %sub.i20 = add i32 %pl, -1
  %idxprom.i21 = zext i32 %sub.i20 to i64
  %arrayidx.i22 = getelementptr inbounds ptr, ptr %35, i64 %idxprom.i21
  br label %cond.end.i23

cond.false.i38:                                   ; preds = %sw.bb1
  %imgY3.i39 = getelementptr inbounds i8, ptr %34, i64 128
  br label %cond.end.i23

cond.end.i23:                                     ; preds = %cond.false.i38, %cond.true.i18
  %cond.in.i24 = phi ptr [ %arrayidx.i22, %cond.true.i18 ], [ %imgY3.i39, %cond.false.i38 ]
  %cond.i25 = load ptr, ptr %cond.in.i24, align 8
  %mb_pred4.i = getelementptr inbounds i8, ptr %32, i64 1248
  %36 = load ptr, ptr %mb_pred4.i, align 8
  %idxprom5.i = zext i32 %pl to i64
  %arrayidx6.i = getelementptr inbounds ptr, ptr %36, i64 %idxprom5.i
  %37 = load ptr, ptr %arrayidx6.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %a.i) #6
  %mb_size.i26 = getelementptr inbounds i8, ptr %33, i64 849124
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size.i26, ptr noundef nonnull %a.i) #6
  %active_pps.i27 = getelementptr inbounds i8, ptr %33, i64 8
  %38 = load ptr, ptr %active_pps.i27, align 8
  %constrained_intra_pred_flag.i28 = getelementptr inbounds i8, ptr %38, i64 2204
  %39 = load i32, ptr %constrained_intra_pred_flag.i28, align 4
  %tobool9.not.i = icmp eq i32 %39, 0
  %40 = load i32, ptr %a.i, align 4
  br i1 %tobool9.not.i, label %if.end.i33, label %if.else.i29

if.else.i29:                                      ; preds = %cond.end.i23
  %tobool11.not.i = icmp eq i32 %40, 0
  br i1 %tobool11.not.i, label %if.then19.i, label %cond.true12.i

cond.true12.i:                                    ; preds = %if.else.i29
  %intra_block.i30 = getelementptr inbounds i8, ptr %32, i64 13544
  %41 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.i31 = getelementptr inbounds i8, ptr %a.i, i64 4
  %42 = load i32, ptr %mb_addr.i31, align 4
  %idxprom13.i = sext i32 %42 to i64
  %arrayidx14.i = getelementptr inbounds i8, ptr %41, i64 %idxprom13.i
  %43 = load i8, ptr %arrayidx14.i, align 1
  %conv.i32 = sext i8 %43 to i32
  br label %if.end.i33

if.end.i33:                                       ; preds = %cond.true12.i, %cond.end.i23
  %left_avail.0.i = phi i32 [ %conv.i32, %cond.true12.i ], [ %40, %cond.end.i23 ]
  %tobool18.not.i = icmp eq i32 %left_avail.0.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %for.body.i

if.then19.i:                                      ; preds = %if.end.i33, %if.else.i29
  call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i33, %if.then19.i
  %pos_y21.i = getelementptr inbounds i8, ptr %a.i, i64 14
  %44 = load i16, ptr %pos_y21.i, align 2
  %45 = sext i16 %44 to i64
  %pos_x23.i = getelementptr inbounds i8, ptr %a.i, i64 12
  %46 = load i16, ptr %pos_x23.i, align 4
  %idxprom30.i = sext i16 %46 to i64
  %47 = load ptr, ptr %37, align 8
  %arrayidx29.i = getelementptr inbounds ptr, ptr %cond.i25, i64 %45
  %48 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr inbounds i16, ptr %48, i64 %idxprom30.i
  %49 = load i16, ptr %arrayidx31.i, align 2
  %incdec.ptr38.1.i = getelementptr inbounds i8, ptr %47, i64 16
  %50 = insertelement <8 x i16> poison, i16 %49, i64 0
  %51 = shufflevector <8 x i16> %50, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %51, ptr %47, align 2
  store <8 x i16> %51, ptr %incdec.ptr38.1.i, align 2
  %arrayidx27.i.1 = getelementptr inbounds i8, ptr %37, i64 8
  %52 = load ptr, ptr %arrayidx27.i.1, align 8
  %53 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.1 = getelementptr i8, ptr %53, i64 8
  %54 = load ptr, ptr %arrayidx29.i.1, align 8
  %arrayidx31.i.1 = getelementptr inbounds i16, ptr %54, i64 %idxprom30.i
  %55 = load i16, ptr %arrayidx31.i.1, align 2
  %incdec.ptr38.1.i.1 = getelementptr inbounds i8, ptr %52, i64 16
  %56 = insertelement <8 x i16> poison, i16 %55, i64 0
  %57 = shufflevector <8 x i16> %56, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %57, ptr %52, align 2
  store <8 x i16> %57, ptr %incdec.ptr38.1.i.1, align 2
  %arrayidx27.i.2 = getelementptr inbounds i8, ptr %37, i64 16
  %58 = load ptr, ptr %arrayidx27.i.2, align 8
  %59 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.2 = getelementptr i8, ptr %59, i64 16
  %60 = load ptr, ptr %arrayidx29.i.2, align 8
  %arrayidx31.i.2 = getelementptr inbounds i16, ptr %60, i64 %idxprom30.i
  %61 = load i16, ptr %arrayidx31.i.2, align 2
  %incdec.ptr38.1.i.2 = getelementptr inbounds i8, ptr %58, i64 16
  %62 = insertelement <8 x i16> poison, i16 %61, i64 0
  %63 = shufflevector <8 x i16> %62, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %63, ptr %58, align 2
  store <8 x i16> %63, ptr %incdec.ptr38.1.i.2, align 2
  %arrayidx27.i.3 = getelementptr inbounds i8, ptr %37, i64 24
  %64 = load ptr, ptr %arrayidx27.i.3, align 8
  %65 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.3 = getelementptr i8, ptr %65, i64 24
  %66 = load ptr, ptr %arrayidx29.i.3, align 8
  %arrayidx31.i.3 = getelementptr inbounds i16, ptr %66, i64 %idxprom30.i
  %67 = load i16, ptr %arrayidx31.i.3, align 2
  %incdec.ptr38.1.i.3 = getelementptr inbounds i8, ptr %64, i64 16
  %68 = insertelement <8 x i16> poison, i16 %67, i64 0
  %69 = shufflevector <8 x i16> %68, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %69, ptr %64, align 2
  store <8 x i16> %69, ptr %incdec.ptr38.1.i.3, align 2
  %arrayidx27.i.4 = getelementptr inbounds i8, ptr %37, i64 32
  %70 = load ptr, ptr %arrayidx27.i.4, align 8
  %71 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.4 = getelementptr i8, ptr %71, i64 32
  %72 = load ptr, ptr %arrayidx29.i.4, align 8
  %arrayidx31.i.4 = getelementptr inbounds i16, ptr %72, i64 %idxprom30.i
  %73 = load i16, ptr %arrayidx31.i.4, align 2
  %incdec.ptr38.1.i.4 = getelementptr inbounds i8, ptr %70, i64 16
  %74 = insertelement <8 x i16> poison, i16 %73, i64 0
  %75 = shufflevector <8 x i16> %74, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %75, ptr %70, align 2
  store <8 x i16> %75, ptr %incdec.ptr38.1.i.4, align 2
  %arrayidx27.i.5 = getelementptr inbounds i8, ptr %37, i64 40
  %76 = load ptr, ptr %arrayidx27.i.5, align 8
  %77 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.5 = getelementptr i8, ptr %77, i64 40
  %78 = load ptr, ptr %arrayidx29.i.5, align 8
  %arrayidx31.i.5 = getelementptr inbounds i16, ptr %78, i64 %idxprom30.i
  %79 = load i16, ptr %arrayidx31.i.5, align 2
  %incdec.ptr38.1.i.5 = getelementptr inbounds i8, ptr %76, i64 16
  %80 = insertelement <8 x i16> poison, i16 %79, i64 0
  %81 = shufflevector <8 x i16> %80, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %81, ptr %76, align 2
  store <8 x i16> %81, ptr %incdec.ptr38.1.i.5, align 2
  %arrayidx27.i.6 = getelementptr inbounds i8, ptr %37, i64 48
  %82 = load ptr, ptr %arrayidx27.i.6, align 8
  %83 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.6 = getelementptr i8, ptr %83, i64 48
  %84 = load ptr, ptr %arrayidx29.i.6, align 8
  %arrayidx31.i.6 = getelementptr inbounds i16, ptr %84, i64 %idxprom30.i
  %85 = load i16, ptr %arrayidx31.i.6, align 2
  %incdec.ptr38.1.i.6 = getelementptr inbounds i8, ptr %82, i64 16
  %86 = insertelement <8 x i16> poison, i16 %85, i64 0
  %87 = shufflevector <8 x i16> %86, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %87, ptr %82, align 2
  store <8 x i16> %87, ptr %incdec.ptr38.1.i.6, align 2
  %arrayidx27.i.7 = getelementptr inbounds i8, ptr %37, i64 56
  %88 = load ptr, ptr %arrayidx27.i.7, align 8
  %89 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.7 = getelementptr i8, ptr %89, i64 56
  %90 = load ptr, ptr %arrayidx29.i.7, align 8
  %arrayidx31.i.7 = getelementptr inbounds i16, ptr %90, i64 %idxprom30.i
  %91 = load i16, ptr %arrayidx31.i.7, align 2
  %incdec.ptr38.1.i.7 = getelementptr inbounds i8, ptr %88, i64 16
  %92 = insertelement <8 x i16> poison, i16 %91, i64 0
  %93 = shufflevector <8 x i16> %92, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %93, ptr %88, align 2
  store <8 x i16> %93, ptr %incdec.ptr38.1.i.7, align 2
  %arrayidx27.i.8 = getelementptr inbounds i8, ptr %37, i64 64
  %94 = load ptr, ptr %arrayidx27.i.8, align 8
  %95 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.8 = getelementptr i8, ptr %95, i64 64
  %96 = load ptr, ptr %arrayidx29.i.8, align 8
  %arrayidx31.i.8 = getelementptr inbounds i16, ptr %96, i64 %idxprom30.i
  %97 = load i16, ptr %arrayidx31.i.8, align 2
  %incdec.ptr38.1.i.8 = getelementptr inbounds i8, ptr %94, i64 16
  %98 = insertelement <8 x i16> poison, i16 %97, i64 0
  %99 = shufflevector <8 x i16> %98, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %99, ptr %94, align 2
  store <8 x i16> %99, ptr %incdec.ptr38.1.i.8, align 2
  %arrayidx27.i.9 = getelementptr inbounds i8, ptr %37, i64 72
  %100 = load ptr, ptr %arrayidx27.i.9, align 8
  %101 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.9 = getelementptr i8, ptr %101, i64 72
  %102 = load ptr, ptr %arrayidx29.i.9, align 8
  %arrayidx31.i.9 = getelementptr inbounds i16, ptr %102, i64 %idxprom30.i
  %103 = load i16, ptr %arrayidx31.i.9, align 2
  %incdec.ptr38.1.i.9 = getelementptr inbounds i8, ptr %100, i64 16
  %104 = insertelement <8 x i16> poison, i16 %103, i64 0
  %105 = shufflevector <8 x i16> %104, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %105, ptr %100, align 2
  store <8 x i16> %105, ptr %incdec.ptr38.1.i.9, align 2
  %arrayidx27.i.10 = getelementptr inbounds i8, ptr %37, i64 80
  %106 = load ptr, ptr %arrayidx27.i.10, align 8
  %107 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.10 = getelementptr i8, ptr %107, i64 80
  %108 = load ptr, ptr %arrayidx29.i.10, align 8
  %arrayidx31.i.10 = getelementptr inbounds i16, ptr %108, i64 %idxprom30.i
  %109 = load i16, ptr %arrayidx31.i.10, align 2
  %incdec.ptr38.1.i.10 = getelementptr inbounds i8, ptr %106, i64 16
  %110 = insertelement <8 x i16> poison, i16 %109, i64 0
  %111 = shufflevector <8 x i16> %110, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %111, ptr %106, align 2
  store <8 x i16> %111, ptr %incdec.ptr38.1.i.10, align 2
  %arrayidx27.i.11 = getelementptr inbounds i8, ptr %37, i64 88
  %112 = load ptr, ptr %arrayidx27.i.11, align 8
  %113 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.11 = getelementptr i8, ptr %113, i64 88
  %114 = load ptr, ptr %arrayidx29.i.11, align 8
  %arrayidx31.i.11 = getelementptr inbounds i16, ptr %114, i64 %idxprom30.i
  %115 = load i16, ptr %arrayidx31.i.11, align 2
  %incdec.ptr38.1.i.11 = getelementptr inbounds i8, ptr %112, i64 16
  %116 = insertelement <8 x i16> poison, i16 %115, i64 0
  %117 = shufflevector <8 x i16> %116, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %117, ptr %112, align 2
  store <8 x i16> %117, ptr %incdec.ptr38.1.i.11, align 2
  %arrayidx27.i.12 = getelementptr inbounds i8, ptr %37, i64 96
  %118 = load ptr, ptr %arrayidx27.i.12, align 8
  %119 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.12 = getelementptr i8, ptr %119, i64 96
  %120 = load ptr, ptr %arrayidx29.i.12, align 8
  %arrayidx31.i.12 = getelementptr inbounds i16, ptr %120, i64 %idxprom30.i
  %121 = load i16, ptr %arrayidx31.i.12, align 2
  %incdec.ptr38.1.i.12 = getelementptr inbounds i8, ptr %118, i64 16
  %122 = insertelement <8 x i16> poison, i16 %121, i64 0
  %123 = shufflevector <8 x i16> %122, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %123, ptr %118, align 2
  store <8 x i16> %123, ptr %incdec.ptr38.1.i.12, align 2
  %arrayidx27.i.13 = getelementptr inbounds i8, ptr %37, i64 104
  %124 = load ptr, ptr %arrayidx27.i.13, align 8
  %125 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.13 = getelementptr i8, ptr %125, i64 104
  %126 = load ptr, ptr %arrayidx29.i.13, align 8
  %arrayidx31.i.13 = getelementptr inbounds i16, ptr %126, i64 %idxprom30.i
  %127 = load i16, ptr %arrayidx31.i.13, align 2
  %incdec.ptr38.1.i.13 = getelementptr inbounds i8, ptr %124, i64 16
  %128 = insertelement <8 x i16> poison, i16 %127, i64 0
  %129 = shufflevector <8 x i16> %128, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %129, ptr %124, align 2
  store <8 x i16> %129, ptr %incdec.ptr38.1.i.13, align 2
  %arrayidx27.i.14 = getelementptr inbounds i8, ptr %37, i64 112
  %130 = load ptr, ptr %arrayidx27.i.14, align 8
  %131 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.14 = getelementptr i8, ptr %131, i64 112
  %132 = load ptr, ptr %arrayidx29.i.14, align 8
  %arrayidx31.i.14 = getelementptr inbounds i16, ptr %132, i64 %idxprom30.i
  %133 = load i16, ptr %arrayidx31.i.14, align 2
  %incdec.ptr38.1.i.14 = getelementptr inbounds i8, ptr %130, i64 16
  %134 = insertelement <8 x i16> poison, i16 %133, i64 0
  %135 = shufflevector <8 x i16> %134, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %135, ptr %130, align 2
  store <8 x i16> %135, ptr %incdec.ptr38.1.i.14, align 2
  %arrayidx27.i.15 = getelementptr inbounds i8, ptr %37, i64 120
  %136 = load ptr, ptr %arrayidx27.i.15, align 8
  %137 = getelementptr ptr, ptr %cond.i25, i64 %45
  %arrayidx29.i.15 = getelementptr i8, ptr %137, i64 120
  %138 = load ptr, ptr %arrayidx29.i.15, align 8
  %arrayidx31.i.15 = getelementptr inbounds i16, ptr %138, i64 %idxprom30.i
  %139 = load i16, ptr %arrayidx31.i.15, align 2
  %incdec.ptr38.1.i.15 = getelementptr inbounds i8, ptr %136, i64 16
  %140 = insertelement <8 x i16> poison, i16 %139, i64 0
  %141 = shufflevector <8 x i16> %140, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %141, ptr %136, align 2
  store <8 x i16> %141, ptr %incdec.ptr38.1.i.15, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %a.i) #6
  br label %return

sw.bb3:                                           ; preds = %entry
  %142 = load ptr, ptr %currMB, align 8
  %p_Vid1.i42 = getelementptr inbounds i8, ptr %currMB, i64 8
  %143 = load ptr, ptr %p_Vid1.i42, align 8
  %tobool.not.i43 = icmp eq i32 %pl, 0
  %dec_picture2.i44 = getelementptr inbounds i8, ptr %142, i64 13520
  %144 = load ptr, ptr %dec_picture2.i44, align 8
  br i1 %tobool.not.i43, label %cond.false.i76, label %cond.true.i45

cond.true.i45:                                    ; preds = %sw.bb3
  %imgUV.i46 = getelementptr inbounds i8, ptr %144, i64 136
  %145 = load ptr, ptr %imgUV.i46, align 8
  %sub.i47 = add i32 %pl, -1
  %idxprom.i48 = zext i32 %sub.i47 to i64
  %arrayidx.i49 = getelementptr inbounds ptr, ptr %145, i64 %idxprom.i48
  br label %cond.end.i50

cond.false.i76:                                   ; preds = %sw.bb3
  %imgY3.i77 = getelementptr inbounds i8, ptr %144, i64 128
  br label %cond.end.i50

cond.end.i50:                                     ; preds = %cond.false.i76, %cond.true.i45
  %cond.in.i51 = phi ptr [ %arrayidx.i49, %cond.true.i45 ], [ %imgY3.i77, %cond.false.i76 ]
  %cond.i52 = load ptr, ptr %cond.in.i51, align 8
  %mb_pred4.i53 = getelementptr inbounds i8, ptr %142, i64 1248
  %146 = load ptr, ptr %mb_pred4.i53, align 8
  %idxprom5.i54 = zext i32 %pl to i64
  %arrayidx6.i55 = getelementptr inbounds ptr, ptr %146, i64 %idxprom5.i54
  %147 = load ptr, ptr %arrayidx6.i55, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %a.i40) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %b.i41) #6
  %mb_size.i56 = getelementptr inbounds i8, ptr %143, i64 849124
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size.i56, ptr noundef nonnull %a.i40) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size.i56, ptr noundef nonnull %b.i41) #6
  %active_pps.i57 = getelementptr inbounds i8, ptr %143, i64 8
  %148 = load ptr, ptr %active_pps.i57, align 8
  %constrained_intra_pred_flag.i58 = getelementptr inbounds i8, ptr %148, i64 2204
  %149 = load i32, ptr %constrained_intra_pred_flag.i58, align 4
  %tobool12.not.i = icmp eq i32 %149, 0
  %150 = load i32, ptr %b.i41, align 4
  br i1 %tobool12.not.i, label %if.then.i, label %if.else.i59

if.then.i:                                        ; preds = %cond.end.i50
  %151 = load i32, ptr %a.i40, align 4
  br label %if.end.i65

if.else.i59:                                      ; preds = %cond.end.i50
  %tobool15.not.i = icmp eq i32 %150, 0
  br i1 %tobool15.not.i, label %cond.end20.i.thread, label %cond.end20.i

cond.end20.i:                                     ; preds = %if.else.i59
  %intra_block.i60 = getelementptr inbounds i8, ptr %142, i64 13544
  %152 = load ptr, ptr %intra_block.i60, align 8
  %mb_addr.i61 = getelementptr inbounds i8, ptr %b.i41, i64 4
  %153 = load i32, ptr %mb_addr.i61, align 4
  %idxprom17.i62 = sext i32 %153 to i64
  %arrayidx18.i63 = getelementptr inbounds i8, ptr %152, i64 %idxprom17.i62
  %154 = load i8, ptr %arrayidx18.i63, align 1
  %conv.i64 = sext i8 %154 to i32
  %155 = load i32, ptr %a.i40, align 4
  %tobool23.not.i = icmp eq i32 %155, 0
  br i1 %tobool23.not.i, label %if.end.i65.thread, label %cond.true24.i

cond.end20.i.thread:                              ; preds = %if.else.i59
  %156 = load i32, ptr %a.i40, align 4
  %tobool23.not.i138 = icmp eq i32 %156, 0
  br i1 %tobool23.not.i138, label %if.else84.i, label %cond.end20.i.thread.cond.true24.i_crit_edge

cond.end20.i.thread.cond.true24.i_crit_edge:      ; preds = %cond.end20.i.thread
  %intra_block25.i.phi.trans.insert = getelementptr inbounds i8, ptr %142, i64 13544
  %.pre = load ptr, ptr %intra_block25.i.phi.trans.insert, align 8
  br label %cond.true24.i

cond.true24.i:                                    ; preds = %cond.end20.i.thread.cond.true24.i_crit_edge, %cond.end20.i
  %157 = phi ptr [ %.pre, %cond.end20.i.thread.cond.true24.i_crit_edge ], [ %152, %cond.end20.i ]
  %cond21.i139 = phi i32 [ 0, %cond.end20.i.thread.cond.true24.i_crit_edge ], [ %conv.i64, %cond.end20.i ]
  %mb_addr26.i = getelementptr inbounds i8, ptr %a.i40, i64 4
  %158 = load i32, ptr %mb_addr26.i, align 4
  %idxprom27.i = sext i32 %158 to i64
  %arrayidx28.i = getelementptr inbounds i8, ptr %157, i64 %idxprom27.i
  %159 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = sext i8 %159 to i32
  br label %if.end.i65

if.end.i65:                                       ; preds = %cond.true24.i, %if.then.i
  %up_avail.0.i66 = phi i32 [ %150, %if.then.i ], [ %cond21.i139, %cond.true24.i ]
  %left_avail.0.i67 = phi i32 [ %151, %if.then.i ], [ %conv29.i, %cond.true24.i ]
  %tobool33.not.i = icmp eq i32 %up_avail.0.i66, 0
  br i1 %tobool33.not.i, label %if.end41.i, label %if.end41.i.thread

if.end.i65.thread:                                ; preds = %cond.end20.i
  %tobool33.not.i127 = icmp eq i8 %154, 0
  br i1 %tobool33.not.i127, label %if.else84.i, label %if.end41.i.thread

if.end41.i:                                       ; preds = %if.end.i65
  %tobool42.i.not = icmp eq i32 %left_avail.0.i67, 0
  br i1 %tobool42.i.not, label %if.else84.i, label %if.then43.i

if.end41.i.thread:                                ; preds = %if.end.i65, %if.end.i65.thread
  %left_avail.0.i67129 = phi i32 [ 0, %if.end.i65.thread ], [ %left_avail.0.i67, %if.end.i65 ]
  %pos_y.i68 = getelementptr inbounds i8, ptr %b.i41, i64 14
  %160 = load i16, ptr %pos_y.i68, align 2
  %idxprom35.i = sext i16 %160 to i64
  %arrayidx36.i = getelementptr inbounds ptr, ptr %cond.i52, i64 %idxprom35.i
  %161 = load ptr, ptr %arrayidx36.i, align 8
  %pos_x.i69 = getelementptr inbounds i8, ptr %b.i41, i64 12
  %162 = load i16, ptr %pos_x.i69, align 4
  %idxprom37.i = sext i16 %162 to i64
  %arrayidx38.i = getelementptr inbounds i16, ptr %161, i64 %idxprom37.i
  %163 = load <16 x i16>, ptr %arrayidx38.i, align 2
  %164 = zext <16 x i16> %163 to <16 x i32>
  %165 = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %164)
  %tobool42.i120.not = icmp eq i32 %left_avail.0.i67129, 0
  br i1 %tobool42.i120.not, label %if.then81.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end41.i.thread, %if.end41.i
  %tobool33.not.i130 = phi i1 [ false, %if.end41.i.thread ], [ true, %if.end41.i ]
  %s1.1.i122 = phi i32 [ %165, %if.end41.i.thread ], [ 0, %if.end41.i ]
  %pos_y45.i = getelementptr inbounds i8, ptr %a.i40, i64 14
  %166 = load i16, ptr %pos_y45.i, align 2
  %pos_x48.i = getelementptr inbounds i8, ptr %a.i40, i64 12
  %167 = load i16, ptr %pos_x48.i, align 4
  %idxprom57.i = sext i16 %167 to i64
  %168 = sext i16 %166 to i64
  %arrayidx56.i = getelementptr inbounds ptr, ptr %cond.i52, i64 %168
  %169 = load ptr, ptr %arrayidx56.i, align 8
  %arrayidx58.i = getelementptr inbounds i16, ptr %169, i64 %idxprom57.i
  %170 = load i16, ptr %arrayidx58.i, align 2
  %conv59.i = zext i16 %170 to i32
  %arrayidx56.1.i = getelementptr i8, ptr %arrayidx56.i, i64 8
  %171 = load ptr, ptr %arrayidx56.1.i, align 8
  %arrayidx58.1.i = getelementptr inbounds i16, ptr %171, i64 %idxprom57.i
  %172 = load i16, ptr %arrayidx58.1.i, align 2
  %conv59.1.i = zext i16 %172 to i32
  %add60.1.i = add nuw nsw i32 %conv59.1.i, %conv59.i
  %arrayidx56.2.i = getelementptr i8, ptr %arrayidx56.i, i64 16
  %173 = load ptr, ptr %arrayidx56.2.i, align 8
  %arrayidx58.2.i = getelementptr inbounds i16, ptr %173, i64 %idxprom57.i
  %174 = load i16, ptr %arrayidx58.2.i, align 2
  %conv59.2.i = zext i16 %174 to i32
  %add60.2.i = add nuw nsw i32 %add60.1.i, %conv59.2.i
  %arrayidx56.3.i = getelementptr i8, ptr %arrayidx56.i, i64 24
  %175 = load ptr, ptr %arrayidx56.3.i, align 8
  %arrayidx58.3.i = getelementptr inbounds i16, ptr %175, i64 %idxprom57.i
  %176 = load i16, ptr %arrayidx58.3.i, align 2
  %conv59.3.i = zext i16 %176 to i32
  %add60.3.i = add nuw nsw i32 %add60.2.i, %conv59.3.i
  %arrayidx56.4.i = getelementptr i8, ptr %arrayidx56.i, i64 32
  %177 = load ptr, ptr %arrayidx56.4.i, align 8
  %arrayidx58.4.i = getelementptr inbounds i16, ptr %177, i64 %idxprom57.i
  %178 = load i16, ptr %arrayidx58.4.i, align 2
  %conv59.4.i = zext i16 %178 to i32
  %add60.4.i = add nuw nsw i32 %add60.3.i, %conv59.4.i
  %arrayidx56.5.i = getelementptr i8, ptr %arrayidx56.i, i64 40
  %179 = load ptr, ptr %arrayidx56.5.i, align 8
  %arrayidx58.5.i = getelementptr inbounds i16, ptr %179, i64 %idxprom57.i
  %180 = load i16, ptr %arrayidx58.5.i, align 2
  %conv59.5.i = zext i16 %180 to i32
  %add60.5.i = add nuw nsw i32 %add60.4.i, %conv59.5.i
  %arrayidx56.6.i = getelementptr i8, ptr %arrayidx56.i, i64 48
  %181 = load ptr, ptr %arrayidx56.6.i, align 8
  %arrayidx58.6.i = getelementptr inbounds i16, ptr %181, i64 %idxprom57.i
  %182 = load i16, ptr %arrayidx58.6.i, align 2
  %conv59.6.i = zext i16 %182 to i32
  %add60.6.i = add nuw nsw i32 %add60.5.i, %conv59.6.i
  %arrayidx56.7.i = getelementptr i8, ptr %arrayidx56.i, i64 56
  %183 = load ptr, ptr %arrayidx56.7.i, align 8
  %arrayidx58.7.i = getelementptr inbounds i16, ptr %183, i64 %idxprom57.i
  %184 = load i16, ptr %arrayidx58.7.i, align 2
  %conv59.7.i = zext i16 %184 to i32
  %add60.7.i = add nuw nsw i32 %add60.6.i, %conv59.7.i
  %arrayidx56.8.i = getelementptr i8, ptr %arrayidx56.i, i64 64
  %185 = load ptr, ptr %arrayidx56.8.i, align 8
  %arrayidx58.8.i = getelementptr inbounds i16, ptr %185, i64 %idxprom57.i
  %186 = load i16, ptr %arrayidx58.8.i, align 2
  %conv59.8.i = zext i16 %186 to i32
  %add60.8.i = add nuw nsw i32 %add60.7.i, %conv59.8.i
  %arrayidx56.9.i = getelementptr i8, ptr %arrayidx56.i, i64 72
  %187 = load ptr, ptr %arrayidx56.9.i, align 8
  %arrayidx58.9.i = getelementptr inbounds i16, ptr %187, i64 %idxprom57.i
  %188 = load i16, ptr %arrayidx58.9.i, align 2
  %conv59.9.i = zext i16 %188 to i32
  %add60.9.i = add nuw nsw i32 %add60.8.i, %conv59.9.i
  %arrayidx56.10.i = getelementptr i8, ptr %arrayidx56.i, i64 80
  %189 = load ptr, ptr %arrayidx56.10.i, align 8
  %arrayidx58.10.i = getelementptr inbounds i16, ptr %189, i64 %idxprom57.i
  %190 = load i16, ptr %arrayidx58.10.i, align 2
  %conv59.10.i = zext i16 %190 to i32
  %add60.10.i = add nuw nsw i32 %add60.9.i, %conv59.10.i
  %arrayidx56.11.i = getelementptr i8, ptr %arrayidx56.i, i64 88
  %191 = load ptr, ptr %arrayidx56.11.i, align 8
  %arrayidx58.11.i = getelementptr inbounds i16, ptr %191, i64 %idxprom57.i
  %192 = load i16, ptr %arrayidx58.11.i, align 2
  %conv59.11.i = zext i16 %192 to i32
  %add60.11.i = add nuw nsw i32 %add60.10.i, %conv59.11.i
  %arrayidx56.12.i = getelementptr i8, ptr %arrayidx56.i, i64 96
  %193 = load ptr, ptr %arrayidx56.12.i, align 8
  %arrayidx58.12.i = getelementptr inbounds i16, ptr %193, i64 %idxprom57.i
  %194 = load i16, ptr %arrayidx58.12.i, align 2
  %conv59.12.i = zext i16 %194 to i32
  %add60.12.i = add nuw nsw i32 %add60.11.i, %conv59.12.i
  %arrayidx56.13.i = getelementptr i8, ptr %arrayidx56.i, i64 104
  %195 = load ptr, ptr %arrayidx56.13.i, align 8
  %arrayidx58.13.i = getelementptr inbounds i16, ptr %195, i64 %idxprom57.i
  %196 = load i16, ptr %arrayidx58.13.i, align 2
  %conv59.13.i = zext i16 %196 to i32
  %add60.13.i = add nuw nsw i32 %add60.12.i, %conv59.13.i
  %arrayidx56.14.i = getelementptr i8, ptr %arrayidx56.i, i64 112
  %197 = load ptr, ptr %arrayidx56.14.i, align 8
  %arrayidx58.14.i = getelementptr inbounds i16, ptr %197, i64 %idxprom57.i
  %198 = load i16, ptr %arrayidx58.14.i, align 2
  %conv59.14.i = zext i16 %198 to i32
  %add60.14.i = add nuw nsw i32 %add60.13.i, %conv59.14.i
  %arrayidx56.15.i = getelementptr i8, ptr %arrayidx56.i, i64 120
  %199 = load ptr, ptr %arrayidx56.15.i, align 8
  %arrayidx58.15.i = getelementptr inbounds i16, ptr %199, i64 %idxprom57.i
  %200 = load i16, ptr %arrayidx58.15.i, align 2
  %conv59.15.i = zext i16 %200 to i32
  %add60.15.i = add nuw nsw i32 %add60.14.i, %conv59.15.i
  br i1 %tobool33.not.i130, label %if.then74.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.then43.i
  %add68.i = add nuw nsw i32 %s1.1.i122, 16
  %add69.i = add nuw nsw i32 %add68.i, %add60.15.i
  %shr.i = lshr i32 %add69.i, 5
  br label %if.end89.i

if.then74.i:                                      ; preds = %if.then43.i
  %add75.i = add nuw nsw i32 %add60.15.i, 8
  %shr76.i = lshr i32 %add75.i, 4
  br label %if.end89.i

if.then81.i:                                      ; preds = %if.end41.i.thread
  %add82.i = add nuw nsw i32 %165, 8
  %shr83.i = lshr i32 %add82.i, 4
  br label %if.end89.i

if.else84.i:                                      ; preds = %cond.end20.i.thread, %if.end.i65.thread, %if.end41.i
  %dc_pred_value_comp.i = getelementptr inbounds i8, ptr %143, i64 849060
  %arrayidx86.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i, i64 0, i64 %idxprom5.i54
  %201 = load i32, ptr %arrayidx86.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.else84.i, %if.then81.i, %if.then74.i, %if.then67.i
  %s0.0.i = phi i32 [ %shr.i, %if.then67.i ], [ %shr76.i, %if.then74.i ], [ %201, %if.else84.i ], [ %shr83.i, %if.then81.i ]
  %conv98.i = trunc i32 %s0.0.i to i16
  br label %for.cond94.preheader.i

for.cond94.preheader.i:                           ; preds = %for.cond94.preheader.i, %if.end89.i
  %indvars.iv.i74 = phi i64 [ 0, %if.end89.i ], [ %indvars.iv.next194.i, %for.cond94.preheader.i ]
  %arrayidx100.i = getelementptr inbounds ptr, ptr %147, i64 %indvars.iv.i74
  %202 = load ptr, ptr %arrayidx100.i, align 8
  store i16 %conv98.i, ptr %202, align 2
  %203 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx108.i = getelementptr inbounds i8, ptr %203, i64 2
  store i16 %conv98.i, ptr %arrayidx108.i, align 2
  %204 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx114.i = getelementptr inbounds i8, ptr %204, i64 4
  store i16 %conv98.i, ptr %arrayidx114.i, align 2
  %205 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx120.i = getelementptr inbounds i8, ptr %205, i64 6
  store i16 %conv98.i, ptr %arrayidx120.i, align 2
  %206 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx102.1.i = getelementptr inbounds i8, ptr %206, i64 8
  store i16 %conv98.i, ptr %arrayidx102.1.i, align 2
  %207 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx108.1.i = getelementptr inbounds i8, ptr %207, i64 10
  store i16 %conv98.i, ptr %arrayidx108.1.i, align 2
  %208 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx114.1.i = getelementptr inbounds i8, ptr %208, i64 12
  store i16 %conv98.i, ptr %arrayidx114.1.i, align 2
  %209 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx120.1.i = getelementptr inbounds i8, ptr %209, i64 14
  store i16 %conv98.i, ptr %arrayidx120.1.i, align 2
  %210 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx102.2.i = getelementptr inbounds i8, ptr %210, i64 16
  store i16 %conv98.i, ptr %arrayidx102.2.i, align 2
  %211 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx108.2.i = getelementptr inbounds i8, ptr %211, i64 18
  store i16 %conv98.i, ptr %arrayidx108.2.i, align 2
  %212 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx114.2.i = getelementptr inbounds i8, ptr %212, i64 20
  store i16 %conv98.i, ptr %arrayidx114.2.i, align 2
  %213 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx120.2.i = getelementptr inbounds i8, ptr %213, i64 22
  store i16 %conv98.i, ptr %arrayidx120.2.i, align 2
  %214 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx102.3.i = getelementptr inbounds i8, ptr %214, i64 24
  store i16 %conv98.i, ptr %arrayidx102.3.i, align 2
  %215 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx108.3.i = getelementptr inbounds i8, ptr %215, i64 26
  store i16 %conv98.i, ptr %arrayidx108.3.i, align 2
  %216 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx114.3.i = getelementptr inbounds i8, ptr %216, i64 28
  store i16 %conv98.i, ptr %arrayidx114.3.i, align 2
  %217 = load ptr, ptr %arrayidx100.i, align 8
  %arrayidx120.3.i = getelementptr inbounds i8, ptr %217, i64 30
  store i16 %conv98.i, ptr %arrayidx120.3.i, align 2
  %indvars.iv.next194.i = add nuw nsw i64 %indvars.iv.i74, 1
  %exitcond.not.i75 = icmp eq i64 %indvars.iv.next194.i, 16
  br i1 %exitcond.not.i75, label %intra16x16_dc_pred.exit, label %for.cond94.preheader.i

intra16x16_dc_pred.exit:                          ; preds = %for.cond94.preheader.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %b.i41) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %a.i40) #6
  br label %return

sw.bb5:                                           ; preds = %entry
  %218 = load ptr, ptr %currMB, align 8
  %p_Vid1.i80 = getelementptr inbounds i8, ptr %currMB, i64 8
  %219 = load ptr, ptr %p_Vid1.i80, align 8
  %tobool.not.i81 = icmp eq i32 %pl, 0
  %dec_picture2.i82 = getelementptr inbounds i8, ptr %218, i64 13520
  %220 = load ptr, ptr %dec_picture2.i82, align 8
  br i1 %tobool.not.i81, label %cond.false.i117, label %cond.true.i83

cond.true.i83:                                    ; preds = %sw.bb5
  %imgUV.i84 = getelementptr inbounds i8, ptr %220, i64 136
  %221 = load ptr, ptr %imgUV.i84, align 8
  %sub.i85 = add i32 %pl, -1
  %idxprom.i86 = zext i32 %sub.i85 to i64
  %arrayidx.i87 = getelementptr inbounds ptr, ptr %221, i64 %idxprom.i86
  br label %cond.end.i88

cond.false.i117:                                  ; preds = %sw.bb5
  %imgY3.i118 = getelementptr inbounds i8, ptr %220, i64 128
  br label %cond.end.i88

cond.end.i88:                                     ; preds = %cond.false.i117, %cond.true.i83
  %cond.in.i89 = phi ptr [ %arrayidx.i87, %cond.true.i83 ], [ %imgY3.i118, %cond.false.i117 ]
  %cond.i90 = load ptr, ptr %cond.in.i89, align 8
  %mb_pred4.i91 = getelementptr inbounds i8, ptr %218, i64 1248
  %222 = load ptr, ptr %mb_pred4.i91, align 8
  %idxprom5.i92 = zext i32 %pl to i64
  %arrayidx6.i93 = getelementptr inbounds ptr, ptr %222, i64 %idxprom5.i92
  %223 = load ptr, ptr %arrayidx6.i93, align 8
  %max_pel_value_comp.i = getelementptr inbounds i8, ptr %219, i64 849072
  %arrayidx9.i = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp.i, i64 0, i64 %idxprom5.i92
  %224 = load i32, ptr %arrayidx9.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %a.i78) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %b.i79) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %d.i) #6
  %mb_size.i94 = getelementptr inbounds i8, ptr %219, i64 849124
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %mb_size.i94, ptr noundef nonnull %d.i) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size.i94, ptr noundef nonnull %a.i78) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size.i94, ptr noundef nonnull %b.i79) #6
  %active_pps.i95 = getelementptr inbounds i8, ptr %219, i64 8
  %225 = load ptr, ptr %active_pps.i95, align 8
  %constrained_intra_pred_flag.i96 = getelementptr inbounds i8, ptr %225, i64 2204
  %226 = load i32, ptr %constrained_intra_pred_flag.i96, align 4
  %tobool17.not.i = icmp eq i32 %226, 0
  %227 = load i32, ptr %b.i79, align 4
  br i1 %tobool17.not.i, label %if.then.i116, label %if.else.i97

if.then.i116:                                     ; preds = %cond.end.i88
  %228 = load i32, ptr %a.i78, align 4
  %229 = load i32, ptr %d.i, align 4
  br label %if.end.i101

if.else.i97:                                      ; preds = %cond.end.i88
  %tobool21.not.i = icmp eq i32 %227, 0
  br i1 %tobool21.not.i, label %cond.end26.i, label %cond.true22.i

cond.true22.i:                                    ; preds = %if.else.i97
  %intra_block.i98 = getelementptr inbounds i8, ptr %218, i64 13544
  %230 = load ptr, ptr %intra_block.i98, align 8
  %mb_addr.i99 = getelementptr inbounds i8, ptr %b.i79, i64 4
  %231 = load i32, ptr %mb_addr.i99, align 4
  %idxprom23.i = sext i32 %231 to i64
  %arrayidx24.i = getelementptr inbounds i8, ptr %230, i64 %idxprom23.i
  %232 = load i8, ptr %arrayidx24.i, align 1
  %conv.i100 = sext i8 %232 to i32
  br label %cond.end26.i

cond.end26.i:                                     ; preds = %cond.true22.i, %if.else.i97
  %cond27.i = phi i32 [ %conv.i100, %cond.true22.i ], [ 0, %if.else.i97 ]
  %233 = load i32, ptr %a.i78, align 4
  %tobool29.not.i = icmp eq i32 %233, 0
  br i1 %tobool29.not.i, label %cond.end37.i, label %cond.true30.i

cond.true30.i:                                    ; preds = %cond.end26.i
  %intra_block31.i = getelementptr inbounds i8, ptr %218, i64 13544
  %234 = load ptr, ptr %intra_block31.i, align 8
  %mb_addr32.i = getelementptr inbounds i8, ptr %a.i78, i64 4
  %235 = load i32, ptr %mb_addr32.i, align 4
  %idxprom33.i = sext i32 %235 to i64
  %arrayidx34.i = getelementptr inbounds i8, ptr %234, i64 %idxprom33.i
  %236 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = sext i8 %236 to i32
  br label %cond.end37.i

cond.end37.i:                                     ; preds = %cond.true30.i, %cond.end26.i
  %cond38.i = phi i32 [ %conv35.i, %cond.true30.i ], [ 0, %cond.end26.i ]
  %237 = load i32, ptr %d.i, align 4
  %tobool40.not.i = icmp eq i32 %237, 0
  br i1 %tobool40.not.i, label %if.then54.i, label %cond.true41.i

cond.true41.i:                                    ; preds = %cond.end37.i
  %intra_block42.i = getelementptr inbounds i8, ptr %218, i64 13544
  %238 = load ptr, ptr %intra_block42.i, align 8
  %mb_addr43.i = getelementptr inbounds i8, ptr %d.i, i64 4
  %239 = load i32, ptr %mb_addr43.i, align 4
  %idxprom44.i = sext i32 %239 to i64
  %arrayidx45.i = getelementptr inbounds i8, ptr %238, i64 %idxprom44.i
  %240 = load i8, ptr %arrayidx45.i, align 1
  %conv46.i = sext i8 %240 to i32
  br label %if.end.i101

if.end.i101:                                      ; preds = %cond.true41.i, %if.then.i116
  %up_avail.0.i102 = phi i32 [ %227, %if.then.i116 ], [ %cond27.i, %cond.true41.i ]
  %left_avail.0.i103 = phi i32 [ %228, %if.then.i116 ], [ %cond38.i, %cond.true41.i ]
  %left_up_avail.0.i = phi i32 [ %229, %if.then.i116 ], [ %conv46.i, %cond.true41.i ]
  %tobool50.i = icmp ne i32 %up_avail.0.i102, 0
  %tobool51.i = icmp ne i32 %left_up_avail.0.i, 0
  %or.cond.i = select i1 %tobool50.i, i1 %tobool51.i, i1 false
  %tobool53.i = icmp ne i32 %left_avail.0.i103, 0
  %or.cond182.i = select i1 %or.cond.i, i1 %tobool53.i, i1 false
  br i1 %or.cond182.i, label %if.end55.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.end.i101, %cond.end37.i
  call void @error(ptr noundef nonnull @.str.3, i32 noundef 500) #6
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %if.end.i101
  %pos_y56.i = getelementptr inbounds i8, ptr %b.i79, i64 14
  %241 = load i16, ptr %pos_y56.i, align 2
  %idxprom57.i104 = sext i16 %241 to i64
  %arrayidx58.i105 = getelementptr inbounds ptr, ptr %cond.i90, i64 %idxprom57.i104
  %242 = load ptr, ptr %arrayidx58.i105, align 8
  %pos_x59.i = getelementptr inbounds i8, ptr %b.i79, i64 12
  %243 = load i16, ptr %pos_x59.i, align 4
  %conv60.i = sext i16 %243 to i64
  %244 = getelementptr i16, ptr %242, i64 %conv60.i
  %pos_y63.i = getelementptr inbounds i8, ptr %a.i78, i64 14
  %245 = load i16, ptr %pos_y63.i, align 2
  %conv64.i = sext i16 %245 to i64
  %pos_x66.i = getelementptr inbounds i8, ptr %a.i78, i64 12
  %246 = load i16, ptr %pos_x66.i, align 4
  %idxprom81.i = sext i16 %246 to i64
  %arrayidx70.i = getelementptr i8, ptr %244, i64 16
  %247 = load i16, ptr %arrayidx70.i, align 2
  %conv71.i = zext i16 %247 to i32
  %arrayidx74.i = getelementptr i8, ptr %244, i64 12
  %248 = load i16, ptr %arrayidx74.i, align 2
  %conv75.i = zext i16 %248 to i32
  %sub76.i = sub nsw i32 %conv71.i, %conv75.i
  %249 = getelementptr ptr, ptr %cond.i90, i64 %conv64.i
  %arrayidx80.i = getelementptr i8, ptr %249, i64 64
  %250 = load ptr, ptr %arrayidx80.i, align 8
  %arrayidx82.i = getelementptr inbounds i16, ptr %250, i64 %idxprom81.i
  %251 = load i16, ptr %arrayidx82.i, align 2
  %conv83.i = zext i16 %251 to i32
  %arrayidx86.i106 = getelementptr i8, ptr %249, i64 48
  %252 = load ptr, ptr %arrayidx86.i106, align 8
  %arrayidx88.i = getelementptr inbounds i16, ptr %252, i64 %idxprom81.i
  %253 = load i16, ptr %arrayidx88.i, align 2
  %conv89.i = zext i16 %253 to i32
  %sub90.i = sub nsw i32 %conv83.i, %conv89.i
  %arrayidx70.1.i = getelementptr i8, ptr %244, i64 18
  %254 = load i16, ptr %arrayidx70.1.i, align 2
  %conv71.1.i = zext i16 %254 to i32
  %arrayidx74.1.i = getelementptr i8, ptr %244, i64 10
  %255 = load i16, ptr %arrayidx74.1.i, align 2
  %conv75.1.i = zext i16 %255 to i32
  %sub76.1.i = sub nsw i32 %conv71.1.i, %conv75.1.i
  %mul.1.i = shl nsw i32 %sub76.1.i, 1
  %add77.1.i = add nsw i32 %sub76.i, %mul.1.i
  %arrayidx80.1.i = getelementptr i8, ptr %249, i64 72
  %256 = load ptr, ptr %arrayidx80.1.i, align 8
  %arrayidx82.1.i = getelementptr inbounds i16, ptr %256, i64 %idxprom81.i
  %257 = load i16, ptr %arrayidx82.1.i, align 2
  %conv83.1.i = zext i16 %257 to i32
  %arrayidx86.1.i = getelementptr i8, ptr %249, i64 40
  %258 = load ptr, ptr %arrayidx86.1.i, align 8
  %arrayidx88.1.i = getelementptr inbounds i16, ptr %258, i64 %idxprom81.i
  %259 = load i16, ptr %arrayidx88.1.i, align 2
  %conv89.1.i = zext i16 %259 to i32
  %sub90.1.i = sub nsw i32 %conv83.1.i, %conv89.1.i
  %mul91.1.i = shl nsw i32 %sub90.1.i, 1
  %add92.1.i = add nsw i32 %sub90.i, %mul91.1.i
  %arrayidx70.2.i = getelementptr i8, ptr %244, i64 20
  %260 = load i16, ptr %arrayidx70.2.i, align 2
  %conv71.2.i = zext i16 %260 to i32
  %arrayidx74.2.i = getelementptr i8, ptr %244, i64 8
  %261 = load i16, ptr %arrayidx74.2.i, align 2
  %conv75.2.i = zext i16 %261 to i32
  %sub76.2.i = sub nsw i32 %conv71.2.i, %conv75.2.i
  %mul.2.i = mul nsw i32 %sub76.2.i, 3
  %add77.2.i = add nsw i32 %add77.1.i, %mul.2.i
  %arrayidx80.2.i = getelementptr i8, ptr %249, i64 80
  %262 = load ptr, ptr %arrayidx80.2.i, align 8
  %arrayidx82.2.i = getelementptr inbounds i16, ptr %262, i64 %idxprom81.i
  %263 = load i16, ptr %arrayidx82.2.i, align 2
  %conv83.2.i = zext i16 %263 to i32
  %arrayidx86.2.i = getelementptr i8, ptr %249, i64 32
  %264 = load ptr, ptr %arrayidx86.2.i, align 8
  %arrayidx88.2.i = getelementptr inbounds i16, ptr %264, i64 %idxprom81.i
  %265 = load i16, ptr %arrayidx88.2.i, align 2
  %conv89.2.i = zext i16 %265 to i32
  %sub90.2.i = sub nsw i32 %conv83.2.i, %conv89.2.i
  %mul91.2.i = mul nsw i32 %sub90.2.i, 3
  %add92.2.i = add nsw i32 %add92.1.i, %mul91.2.i
  %arrayidx70.3.i = getelementptr i8, ptr %244, i64 22
  %266 = load i16, ptr %arrayidx70.3.i, align 2
  %conv71.3.i = zext i16 %266 to i32
  %arrayidx74.3.i = getelementptr i8, ptr %244, i64 6
  %267 = load i16, ptr %arrayidx74.3.i, align 2
  %conv75.3.i = zext i16 %267 to i32
  %sub76.3.i = sub nsw i32 %conv71.3.i, %conv75.3.i
  %mul.3.i = shl nsw i32 %sub76.3.i, 2
  %add77.3.i = add nsw i32 %add77.2.i, %mul.3.i
  %arrayidx80.3.i = getelementptr i8, ptr %249, i64 88
  %268 = load ptr, ptr %arrayidx80.3.i, align 8
  %arrayidx82.3.i = getelementptr inbounds i16, ptr %268, i64 %idxprom81.i
  %269 = load i16, ptr %arrayidx82.3.i, align 2
  %conv83.3.i = zext i16 %269 to i32
  %arrayidx86.3.i = getelementptr i8, ptr %249, i64 24
  %270 = load ptr, ptr %arrayidx86.3.i, align 8
  %arrayidx88.3.i = getelementptr inbounds i16, ptr %270, i64 %idxprom81.i
  %271 = load i16, ptr %arrayidx88.3.i, align 2
  %conv89.3.i = zext i16 %271 to i32
  %sub90.3.i = sub nsw i32 %conv83.3.i, %conv89.3.i
  %mul91.3.i = shl nsw i32 %sub90.3.i, 2
  %add92.3.i = add nsw i32 %add92.2.i, %mul91.3.i
  %arrayidx70.4.i = getelementptr i8, ptr %244, i64 24
  %272 = load i16, ptr %arrayidx70.4.i, align 2
  %conv71.4.i = zext i16 %272 to i32
  %arrayidx74.4.i = getelementptr i8, ptr %244, i64 4
  %273 = load i16, ptr %arrayidx74.4.i, align 2
  %conv75.4.i = zext i16 %273 to i32
  %sub76.4.i = sub nsw i32 %conv71.4.i, %conv75.4.i
  %mul.4.i = mul nsw i32 %sub76.4.i, 5
  %add77.4.i = add nsw i32 %add77.3.i, %mul.4.i
  %arrayidx80.4.i = getelementptr i8, ptr %249, i64 96
  %274 = load ptr, ptr %arrayidx80.4.i, align 8
  %arrayidx82.4.i = getelementptr inbounds i16, ptr %274, i64 %idxprom81.i
  %275 = load i16, ptr %arrayidx82.4.i, align 2
  %conv83.4.i = zext i16 %275 to i32
  %arrayidx86.4.i = getelementptr i8, ptr %249, i64 16
  %276 = load ptr, ptr %arrayidx86.4.i, align 8
  %arrayidx88.4.i = getelementptr inbounds i16, ptr %276, i64 %idxprom81.i
  %277 = load i16, ptr %arrayidx88.4.i, align 2
  %conv89.4.i = zext i16 %277 to i32
  %sub90.4.i = sub nsw i32 %conv83.4.i, %conv89.4.i
  %mul91.4.i = mul nsw i32 %sub90.4.i, 5
  %add92.4.i = add nsw i32 %add92.3.i, %mul91.4.i
  %arrayidx70.5.i = getelementptr i8, ptr %244, i64 26
  %278 = load i16, ptr %arrayidx70.5.i, align 2
  %conv71.5.i = zext i16 %278 to i32
  %arrayidx74.5.i = getelementptr i8, ptr %244, i64 2
  %279 = load i16, ptr %arrayidx74.5.i, align 2
  %conv75.5.i = zext i16 %279 to i32
  %sub76.5.i = sub nsw i32 %conv71.5.i, %conv75.5.i
  %mul.5.i = mul nsw i32 %sub76.5.i, 6
  %add77.5.i = add nsw i32 %add77.4.i, %mul.5.i
  %arrayidx80.5.i = getelementptr i8, ptr %249, i64 104
  %280 = load ptr, ptr %arrayidx80.5.i, align 8
  %arrayidx82.5.i = getelementptr inbounds i16, ptr %280, i64 %idxprom81.i
  %281 = load i16, ptr %arrayidx82.5.i, align 2
  %conv83.5.i = zext i16 %281 to i32
  %arrayidx86.5.i = getelementptr i8, ptr %249, i64 8
  %282 = load ptr, ptr %arrayidx86.5.i, align 8
  %arrayidx88.5.i = getelementptr inbounds i16, ptr %282, i64 %idxprom81.i
  %283 = load i16, ptr %arrayidx88.5.i, align 2
  %conv89.5.i = zext i16 %283 to i32
  %sub90.5.i = sub nsw i32 %conv83.5.i, %conv89.5.i
  %mul91.5.i = mul nsw i32 %sub90.5.i, 6
  %add92.5.i = add nsw i32 %add92.4.i, %mul91.5.i
  %arrayidx70.6.i = getelementptr i8, ptr %244, i64 28
  %284 = load i16, ptr %arrayidx70.6.i, align 2
  %conv71.6.i = zext i16 %284 to i32
  %285 = load i16, ptr %244, align 2
  %conv75.6.i = zext i16 %285 to i32
  %sub76.6.i = sub nsw i32 %conv71.6.i, %conv75.6.i
  %mul.6.i = mul nsw i32 %sub76.6.i, 7
  %add77.6.i = add nsw i32 %add77.5.i, %mul.6.i
  %arrayidx80.6.i = getelementptr i8, ptr %249, i64 112
  %286 = load ptr, ptr %arrayidx80.6.i, align 8
  %arrayidx82.6.i = getelementptr inbounds i16, ptr %286, i64 %idxprom81.i
  %287 = load i16, ptr %arrayidx82.6.i, align 2
  %conv83.6.i = zext i16 %287 to i32
  %288 = load ptr, ptr %249, align 8
  %arrayidx88.6.i = getelementptr inbounds i16, ptr %288, i64 %idxprom81.i
  %289 = load i16, ptr %arrayidx88.6.i, align 2
  %conv89.6.i = zext i16 %289 to i32
  %sub90.6.i = sub nsw i32 %conv83.6.i, %conv89.6.i
  %mul91.6.i = mul nsw i32 %sub90.6.i, 7
  %add92.6.i = add nsw i32 %add92.5.i, %mul91.6.i
  %arrayidx93.i = getelementptr i8, ptr %244, i64 30
  %290 = load i16, ptr %arrayidx93.i, align 2
  %conv94.i = zext i16 %290 to i32
  %pos_y95.i = getelementptr inbounds i8, ptr %d.i, i64 14
  %291 = load i16, ptr %pos_y95.i, align 2
  %idxprom96.i = sext i16 %291 to i64
  %arrayidx97.i = getelementptr inbounds ptr, ptr %cond.i90, i64 %idxprom96.i
  %292 = load ptr, ptr %arrayidx97.i, align 8
  %pos_x98.i = getelementptr inbounds i8, ptr %d.i, i64 12
  %293 = load i16, ptr %pos_x98.i, align 4
  %idxprom99.i = sext i16 %293 to i64
  %arrayidx100.i107 = getelementptr inbounds i16, ptr %292, i64 %idxprom99.i
  %294 = load i16, ptr %arrayidx100.i107, align 2
  %conv101.i = zext i16 %294 to i32
  %sub102.i = sub nsw i32 %conv94.i, %conv101.i
  %mul103.i = shl nsw i32 %sub102.i, 3
  %add104.i = add nsw i32 %add77.6.i, %mul103.i
  %arrayidx107.i = getelementptr i8, ptr %249, i64 120
  %295 = load ptr, ptr %arrayidx107.i, align 8
  %arrayidx109.i = getelementptr inbounds i16, ptr %295, i64 %idxprom81.i
  %296 = load i16, ptr %arrayidx109.i, align 2
  %conv110.i = zext i16 %296 to i32
  %sub118.i = sub nsw i32 %conv110.i, %conv101.i
  %mul119.i = shl nsw i32 %sub118.i, 3
  %add120.i = add nsw i32 %add92.6.i, %mul119.i
  %mul121.i = mul nsw i32 %add104.i, 5
  %add122.i = add nsw i32 %mul121.i, 32
  %shr.i108 = ashr i32 %add122.i, 6
  %mul123.i = mul nsw i32 %add120.i, 5
  %add124.i = add nsw i32 %mul123.i, 32
  %shr125.i = ashr i32 %add124.i, 6
  %add134.i = add nuw nsw i32 %conv110.i, %conv94.i
  %mul135.i = shl nuw nsw i32 %add134.i, 4
  %add142.i = add nuw nsw i32 %mul135.i, 16
  %297 = insertelement <2 x i32> poison, i32 %shr.i108, i64 0
  %298 = shufflevector <2 x i32> %297, <2 x i32> poison, <2 x i32> zeroinitializer
  %299 = mul nsw <2 x i32> %298, <i32 -7, i32 -6>
  %mul163.i = mul nsw i32 %shr.i108, -5
  %300 = shl nsw i32 %shr.i108, 2
  %mul151.1.i = mul nsw i32 %shr.i108, -3
  %301 = shl nsw i32 %shr.i108, 1
  %mul163.2.i = mul nsw i32 %shr.i108, 3
  %302 = mul nsw <2 x i32> %298, <i32 5, i32 6>
  %mul163.3.i = mul nsw i32 %shr.i108, 7
  %mul170.3.i = shl nsw i32 %shr.i108, 3
  %303 = insertelement <8 x i32> poison, i32 %224, i64 0
  %304 = shufflevector <8 x i32> %303, <8 x i32> poison, <8 x i32> zeroinitializer
  %305 = insertelement <8 x i32> poison, i32 %shr.i108, i64 0
  %306 = insertelement <8 x i32> %305, i32 %301, i64 1
  %307 = insertelement <8 x i32> %306, i32 %mul163.2.i, i64 2
  %308 = insertelement <8 x i32> %307, i32 %300, i64 3
  %309 = insertelement <2 x i32> poison, i32 %301, i64 0
  %310 = insertelement <2 x i32> %309, i32 %shr.i108, i64 1
  %311 = shufflevector <2 x i32> %302, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %312 = shufflevector <8 x i32> %308, <8 x i32> %311, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %313 = insertelement <8 x i32> %312, i32 %mul163.3.i, i64 6
  %314 = insertelement <8 x i32> %313, i32 %mul170.3.i, i64 7
  br label %for.body139.i

for.body139.i:                                    ; preds = %for.body139.i, %if.end55.i
  %indvars.iv.i109 = phi i64 [ 0, %if.end55.i ], [ %indvars.iv.next.i114, %for.body139.i ]
  %315 = trunc i64 %indvars.iv.i109 to i32
  %316 = add i32 %315, -7
  %317 = mul i32 %316, %shr125.i
  %arrayidx145.i = getelementptr inbounds ptr, ptr %223, i64 %indvars.iv.i109
  %318 = load ptr, ptr %arrayidx145.i, align 8
  %incdec.ptr175.1.i = getelementptr inbounds i8, ptr %318, i64 16
  %add143.i = add i32 %add142.i, %317
  %319 = insertelement <2 x i32> poison, i32 %add143.i, i64 0
  %320 = shufflevector <2 x i32> %319, <2 x i32> poison, <2 x i32> zeroinitializer
  %321 = add nsw <2 x i32> %320, %299
  %add164.i = add nsw i32 %add143.i, %mul163.i
  %add171.i = sub i32 %add143.i, %300
  %add152.1.i = add nsw i32 %add143.i, %mul151.1.i
  %322 = sub <2 x i32> %320, %310
  %323 = shufflevector <2 x i32> %321, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %324 = insertelement <8 x i32> %323, i32 %add164.i, i64 2
  %325 = insertelement <8 x i32> %324, i32 %add171.i, i64 3
  %326 = insertelement <8 x i32> %325, i32 %add152.1.i, i64 4
  %327 = shufflevector <2 x i32> %322, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %328 = shufflevector <8 x i32> %326, <8 x i32> %327, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %329 = insertelement <8 x i32> %328, i32 %add143.i, i64 7
  %330 = ashr <8 x i32> %329, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %331 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %330, <8 x i32> zeroinitializer)
  %332 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %331, <8 x i32> %304)
  %333 = trunc <8 x i32> %332 to <8 x i16>
  store <8 x i16> %333, ptr %318, align 2
  %334 = insertelement <8 x i32> poison, i32 %add143.i, i64 0
  %335 = shufflevector <8 x i32> %334, <8 x i32> poison, <8 x i32> zeroinitializer
  %336 = add nsw <8 x i32> %335, %314
  %337 = ashr <8 x i32> %336, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %338 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %337, <8 x i32> zeroinitializer)
  %339 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %338, <8 x i32> %304)
  %340 = trunc <8 x i32> %339 to <8 x i16>
  store <8 x i16> %340, ptr %incdec.ptr175.1.i, align 2
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i109, 1
  %exitcond.not.i115 = icmp eq i64 %indvars.iv.next.i114, 16
  br i1 %exitcond.not.i115, label %intra16x16_plane_pred.exit, label %for.body139.i

intra16x16_plane_pred.exit:                       ; preds = %for.body139.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %d.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %b.i79) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %a.i78) #6
  br label %return

sw.default:                                       ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %predmode)
  br label %return

return:                                           ; preds = %sw.default, %intra16x16_plane_pred.exit, %intra16x16_dc_pred.exit, %for.body.i, %intra16x16_vert_pred.exit
  %retval.0 = phi i32 [ 1, %sw.default ], [ 0, %intra16x16_plane_pred.exit ], [ 0, %intra16x16_dc_pred.exit ], [ 0, %for.body.i ], [ 0, %intra16x16_vert_pred.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
