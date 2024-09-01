; ModuleID = 'ldecod_src/intra16x16_pred_mbaff.c'
source_filename = "ldecod_src/intra16x16_pred_mbaff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [47 x i8] c"illegal 16x16 intra prediction mode input: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"invalid 16x16 intra pred Mode VERT_PRED_16\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"invalid 16x16 intra pred Mode HOR_PRED_16\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"invalid 16x16 intra pred Mode PLANE_16\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @intrapred_16x16_mbaff(ptr noundef %currMB, i32 noundef %pl, i32 noundef %predmode) local_unnamed_addr #0 {
entry:
  %b.i106 = alloca %struct.pix_pos, align 4
  %left.i107 = alloca [17 x %struct.pix_pos], align 16
  %b.i37 = alloca %struct.pix_pos, align 4
  %left.i38 = alloca [17 x %struct.pix_pos], align 16
  %left.i = alloca [17 x %struct.pix_pos], align 16
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
  br i1 %tobool14.not.i, label %if.then15.i, label %intra16x16_vert_pred_mbaff.exit

if.then15.i:                                      ; preds = %if.end.i, %if.else.i
  call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #6
  br label %intra16x16_vert_pred_mbaff.exit

intra16x16_vert_pred_mbaff.exit:                  ; preds = %if.end.i, %if.then15.i
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
  br i1 %tobool.not.i16, label %cond.false.i35, label %cond.true.i18

cond.true.i18:                                    ; preds = %sw.bb1
  %imgUV.i19 = getelementptr inbounds i8, ptr %34, i64 136
  %35 = load ptr, ptr %imgUV.i19, align 8
  %sub.i20 = add i32 %pl, -1
  %idxprom.i21 = zext i32 %sub.i20 to i64
  %arrayidx.i22 = getelementptr inbounds ptr, ptr %35, i64 %idxprom.i21
  br label %cond.end.i23

cond.false.i35:                                   ; preds = %sw.bb1
  %imgY3.i36 = getelementptr inbounds i8, ptr %34, i64 128
  br label %cond.end.i23

cond.end.i23:                                     ; preds = %cond.false.i35, %cond.true.i18
  %cond.in.i24 = phi ptr [ %arrayidx.i22, %cond.true.i18 ], [ %imgY3.i36, %cond.false.i35 ]
  %cond.i25 = load ptr, ptr %cond.in.i24, align 8
  %mb_pred4.i = getelementptr inbounds i8, ptr %32, i64 1248
  %36 = load ptr, ptr %mb_pred4.i, align 8
  %idxprom5.i = zext i32 %pl to i64
  %arrayidx6.i = getelementptr inbounds ptr, ptr %36, i64 %idxprom5.i
  %37 = load ptr, ptr %arrayidx6.i, align 8
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %left.i) #6
  %getNeighbour.i26 = getelementptr inbounds i8, ptr %33, i64 856744
  %mb_size.i27 = getelementptr inbounds i8, ptr %33, i64 849124
  %38 = load ptr, ptr %getNeighbour.i26, align 8
  call void %38(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %left.i) #6
  %39 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.1.i = getelementptr inbounds i8, ptr %left.i, i64 16
  call void %39(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.1.i) #6
  %40 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.2.i = getelementptr inbounds i8, ptr %left.i, i64 32
  call void %40(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.2.i) #6
  %41 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.3.i = getelementptr inbounds i8, ptr %left.i, i64 48
  call void %41(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 2, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.3.i) #6
  %42 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.4.i = getelementptr inbounds i8, ptr %left.i, i64 64
  call void %42(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 3, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.4.i) #6
  %43 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.5.i = getelementptr inbounds i8, ptr %left.i, i64 80
  call void %43(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 4, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.5.i) #6
  %44 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.6.i = getelementptr inbounds i8, ptr %left.i, i64 96
  call void %44(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 5, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.6.i) #6
  %45 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.7.i = getelementptr inbounds i8, ptr %left.i, i64 112
  call void %45(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 6, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.7.i) #6
  %46 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.8.i = getelementptr inbounds i8, ptr %left.i, i64 128
  call void %46(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 7, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.8.i) #6
  %47 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.9.i = getelementptr inbounds i8, ptr %left.i, i64 144
  call void %47(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 8, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.9.i) #6
  %48 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.10.i = getelementptr inbounds i8, ptr %left.i, i64 160
  call void %48(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 9, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.10.i) #6
  %49 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.11.i = getelementptr inbounds i8, ptr %left.i, i64 176
  call void %49(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 10, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.11.i) #6
  %50 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.12.i = getelementptr inbounds i8, ptr %left.i, i64 192
  call void %50(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 11, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.12.i) #6
  %51 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.13.i = getelementptr inbounds i8, ptr %left.i, i64 208
  call void %51(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 12, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.13.i) #6
  %52 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.14.i = getelementptr inbounds i8, ptr %left.i, i64 224
  call void %52(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 13, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.14.i) #6
  %53 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.15.i = getelementptr inbounds i8, ptr %left.i, i64 240
  call void %53(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 14, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.15.i) #6
  %54 = load ptr, ptr %getNeighbour.i26, align 8
  %arrayidx11.16.i = getelementptr inbounds i8, ptr %left.i, i64 256
  call void %54(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 15, ptr noundef nonnull %mb_size.i27, ptr noundef nonnull %arrayidx11.16.i) #6
  %active_pps.i28 = getelementptr inbounds i8, ptr %33, i64 8
  %55 = load ptr, ptr %active_pps.i28, align 8
  %constrained_intra_pred_flag.i29 = getelementptr inbounds i8, ptr %55, i64 2204
  %56 = load i32, ptr %constrained_intra_pred_flag.i29, align 4
  %tobool12.not.i = icmp eq i32 %56, 0
  br i1 %tobool12.not.i, label %if.then.i, label %for.cond16.preheader.i

for.cond16.preheader.i:                           ; preds = %cond.end.i23
  %intra_block.i30 = getelementptr inbounds i8, ptr %32, i64 13544
  %57 = load i32, ptr %arrayidx11.1.i, align 16
  %tobool22.not.i = icmp eq i32 %57, 0
  br i1 %tobool22.not.i, label %cond.end29.i, label %cond.true23.i

if.then.i:                                        ; preds = %cond.end.i23
  %58 = load i32, ptr %arrayidx11.1.i, align 16
  br label %if.end.i32

cond.true23.i:                                    ; preds = %for.cond16.preheader.i
  %59 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.i31 = getelementptr inbounds i8, ptr %left.i, i64 20
  %60 = load i32, ptr %mb_addr.i31, align 4
  %idxprom26.i = sext i32 %60 to i64
  %arrayidx27.i = getelementptr inbounds i8, ptr %59, i64 %idxprom26.i
  %61 = load i8, ptr %arrayidx27.i, align 1
  %conv112.i = zext i8 %61 to i32
  br label %cond.end29.i

cond.end29.i:                                     ; preds = %cond.true23.i, %for.cond16.preheader.i
  %cond30.i = phi i32 [ %conv112.i, %cond.true23.i ], [ 0, %for.cond16.preheader.i ]
  %and.i = and i32 %cond30.i, 1
  %62 = load i32, ptr %arrayidx11.2.i, align 16
  %tobool22.not.1.i = icmp eq i32 %62, 0
  br i1 %tobool22.not.1.i, label %cond.end29.1.i, label %cond.true23.1.i

cond.true23.1.i:                                  ; preds = %cond.end29.i
  %63 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.1.i = getelementptr inbounds i8, ptr %left.i, i64 36
  %64 = load i32, ptr %mb_addr.1.i, align 4
  %idxprom26.1.i = sext i32 %64 to i64
  %arrayidx27.1.i = getelementptr inbounds i8, ptr %63, i64 %idxprom26.1.i
  %65 = load i8, ptr %arrayidx27.1.i, align 1
  %conv.1113.i = zext i8 %65 to i32
  br label %cond.end29.1.i

cond.end29.1.i:                                   ; preds = %cond.true23.1.i, %cond.end29.i
  %cond30.1.i = phi i32 [ %conv.1113.i, %cond.true23.1.i ], [ 0, %cond.end29.i ]
  %and.1.i = and i32 %and.i, %cond30.1.i
  %66 = load i32, ptr %arrayidx11.3.i, align 16
  %tobool22.not.2.i = icmp eq i32 %66, 0
  br i1 %tobool22.not.2.i, label %cond.end29.2.i, label %cond.true23.2.i

cond.true23.2.i:                                  ; preds = %cond.end29.1.i
  %67 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.2.i = getelementptr inbounds i8, ptr %left.i, i64 52
  %68 = load i32, ptr %mb_addr.2.i, align 4
  %idxprom26.2.i = sext i32 %68 to i64
  %arrayidx27.2.i = getelementptr inbounds i8, ptr %67, i64 %idxprom26.2.i
  %69 = load i8, ptr %arrayidx27.2.i, align 1
  %conv.2114.i = zext i8 %69 to i32
  br label %cond.end29.2.i

cond.end29.2.i:                                   ; preds = %cond.true23.2.i, %cond.end29.1.i
  %cond30.2.i = phi i32 [ %conv.2114.i, %cond.true23.2.i ], [ 0, %cond.end29.1.i ]
  %and.2.i = and i32 %and.1.i, %cond30.2.i
  %70 = load i32, ptr %arrayidx11.4.i, align 16
  %tobool22.not.3.i = icmp eq i32 %70, 0
  br i1 %tobool22.not.3.i, label %cond.end29.3.i, label %cond.true23.3.i

cond.true23.3.i:                                  ; preds = %cond.end29.2.i
  %71 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.3.i = getelementptr inbounds i8, ptr %left.i, i64 68
  %72 = load i32, ptr %mb_addr.3.i, align 4
  %idxprom26.3.i = sext i32 %72 to i64
  %arrayidx27.3.i = getelementptr inbounds i8, ptr %71, i64 %idxprom26.3.i
  %73 = load i8, ptr %arrayidx27.3.i, align 1
  %conv.3115.i = zext i8 %73 to i32
  br label %cond.end29.3.i

cond.end29.3.i:                                   ; preds = %cond.true23.3.i, %cond.end29.2.i
  %cond30.3.i = phi i32 [ %conv.3115.i, %cond.true23.3.i ], [ 0, %cond.end29.2.i ]
  %and.3.i = and i32 %and.2.i, %cond30.3.i
  %74 = load i32, ptr %arrayidx11.5.i, align 16
  %tobool22.not.4.i = icmp eq i32 %74, 0
  br i1 %tobool22.not.4.i, label %cond.end29.4.i, label %cond.true23.4.i

cond.true23.4.i:                                  ; preds = %cond.end29.3.i
  %75 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.4.i = getelementptr inbounds i8, ptr %left.i, i64 84
  %76 = load i32, ptr %mb_addr.4.i, align 4
  %idxprom26.4.i = sext i32 %76 to i64
  %arrayidx27.4.i = getelementptr inbounds i8, ptr %75, i64 %idxprom26.4.i
  %77 = load i8, ptr %arrayidx27.4.i, align 1
  %conv.4116.i = zext i8 %77 to i32
  br label %cond.end29.4.i

cond.end29.4.i:                                   ; preds = %cond.true23.4.i, %cond.end29.3.i
  %cond30.4.i = phi i32 [ %conv.4116.i, %cond.true23.4.i ], [ 0, %cond.end29.3.i ]
  %and.4.i = and i32 %and.3.i, %cond30.4.i
  %78 = load i32, ptr %arrayidx11.6.i, align 16
  %tobool22.not.5.i = icmp eq i32 %78, 0
  br i1 %tobool22.not.5.i, label %cond.end29.5.i, label %cond.true23.5.i

cond.true23.5.i:                                  ; preds = %cond.end29.4.i
  %79 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.5.i = getelementptr inbounds i8, ptr %left.i, i64 100
  %80 = load i32, ptr %mb_addr.5.i, align 4
  %idxprom26.5.i = sext i32 %80 to i64
  %arrayidx27.5.i = getelementptr inbounds i8, ptr %79, i64 %idxprom26.5.i
  %81 = load i8, ptr %arrayidx27.5.i, align 1
  %conv.5117.i = zext i8 %81 to i32
  br label %cond.end29.5.i

cond.end29.5.i:                                   ; preds = %cond.true23.5.i, %cond.end29.4.i
  %cond30.5.i = phi i32 [ %conv.5117.i, %cond.true23.5.i ], [ 0, %cond.end29.4.i ]
  %and.5.i = and i32 %and.4.i, %cond30.5.i
  %82 = load i32, ptr %arrayidx11.7.i, align 16
  %tobool22.not.6.i = icmp eq i32 %82, 0
  br i1 %tobool22.not.6.i, label %cond.end29.6.i, label %cond.true23.6.i

cond.true23.6.i:                                  ; preds = %cond.end29.5.i
  %83 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.6.i = getelementptr inbounds i8, ptr %left.i, i64 116
  %84 = load i32, ptr %mb_addr.6.i, align 4
  %idxprom26.6.i = sext i32 %84 to i64
  %arrayidx27.6.i = getelementptr inbounds i8, ptr %83, i64 %idxprom26.6.i
  %85 = load i8, ptr %arrayidx27.6.i, align 1
  %conv.6118.i = zext i8 %85 to i32
  br label %cond.end29.6.i

cond.end29.6.i:                                   ; preds = %cond.true23.6.i, %cond.end29.5.i
  %cond30.6.i = phi i32 [ %conv.6118.i, %cond.true23.6.i ], [ 0, %cond.end29.5.i ]
  %and.6.i = and i32 %and.5.i, %cond30.6.i
  %86 = load i32, ptr %arrayidx11.8.i, align 16
  %tobool22.not.7.i = icmp eq i32 %86, 0
  br i1 %tobool22.not.7.i, label %cond.end29.7.i, label %cond.true23.7.i

cond.true23.7.i:                                  ; preds = %cond.end29.6.i
  %87 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.7.i = getelementptr inbounds i8, ptr %left.i, i64 132
  %88 = load i32, ptr %mb_addr.7.i, align 4
  %idxprom26.7.i = sext i32 %88 to i64
  %arrayidx27.7.i = getelementptr inbounds i8, ptr %87, i64 %idxprom26.7.i
  %89 = load i8, ptr %arrayidx27.7.i, align 1
  %conv.7.i163 = zext i8 %89 to i32
  br label %cond.end29.7.i

cond.end29.7.i:                                   ; preds = %cond.true23.7.i, %cond.end29.6.i
  %cond30.7.i = phi i32 [ %conv.7.i163, %cond.true23.7.i ], [ 0, %cond.end29.6.i ]
  %and.7.i = and i32 %and.6.i, %cond30.7.i
  %90 = load i32, ptr %arrayidx11.9.i, align 16
  %tobool22.not.8.i = icmp eq i32 %90, 0
  br i1 %tobool22.not.8.i, label %cond.end29.8.i, label %cond.true23.8.i

cond.true23.8.i:                                  ; preds = %cond.end29.7.i
  %91 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.8.i = getelementptr inbounds i8, ptr %left.i, i64 148
  %92 = load i32, ptr %mb_addr.8.i, align 4
  %idxprom26.8.i = sext i32 %92 to i64
  %arrayidx27.8.i = getelementptr inbounds i8, ptr %91, i64 %idxprom26.8.i
  %93 = load i8, ptr %arrayidx27.8.i, align 1
  %conv.8.i164 = zext i8 %93 to i32
  br label %cond.end29.8.i

cond.end29.8.i:                                   ; preds = %cond.true23.8.i, %cond.end29.7.i
  %cond30.8.i = phi i32 [ %conv.8.i164, %cond.true23.8.i ], [ 0, %cond.end29.7.i ]
  %and.8.i = and i32 %and.7.i, %cond30.8.i
  %94 = load i32, ptr %arrayidx11.10.i, align 16
  %tobool22.not.9.i = icmp eq i32 %94, 0
  br i1 %tobool22.not.9.i, label %cond.end29.9.i, label %cond.true23.9.i

cond.true23.9.i:                                  ; preds = %cond.end29.8.i
  %95 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.9.i = getelementptr inbounds i8, ptr %left.i, i64 164
  %96 = load i32, ptr %mb_addr.9.i, align 4
  %idxprom26.9.i = sext i32 %96 to i64
  %arrayidx27.9.i = getelementptr inbounds i8, ptr %95, i64 %idxprom26.9.i
  %97 = load i8, ptr %arrayidx27.9.i, align 1
  %conv.9.i165 = zext i8 %97 to i32
  br label %cond.end29.9.i

cond.end29.9.i:                                   ; preds = %cond.true23.9.i, %cond.end29.8.i
  %cond30.9.i = phi i32 [ %conv.9.i165, %cond.true23.9.i ], [ 0, %cond.end29.8.i ]
  %and.9.i = and i32 %and.8.i, %cond30.9.i
  %98 = load i32, ptr %arrayidx11.11.i, align 16
  %tobool22.not.10.i = icmp eq i32 %98, 0
  br i1 %tobool22.not.10.i, label %cond.end29.10.i, label %cond.true23.10.i

cond.true23.10.i:                                 ; preds = %cond.end29.9.i
  %99 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.10.i = getelementptr inbounds i8, ptr %left.i, i64 180
  %100 = load i32, ptr %mb_addr.10.i, align 4
  %idxprom26.10.i = sext i32 %100 to i64
  %arrayidx27.10.i = getelementptr inbounds i8, ptr %99, i64 %idxprom26.10.i
  %101 = load i8, ptr %arrayidx27.10.i, align 1
  %conv.10.i166 = zext i8 %101 to i32
  br label %cond.end29.10.i

cond.end29.10.i:                                  ; preds = %cond.true23.10.i, %cond.end29.9.i
  %cond30.10.i = phi i32 [ %conv.10.i166, %cond.true23.10.i ], [ 0, %cond.end29.9.i ]
  %and.10.i = and i32 %and.9.i, %cond30.10.i
  %102 = load i32, ptr %arrayidx11.12.i, align 16
  %tobool22.not.11.i = icmp eq i32 %102, 0
  br i1 %tobool22.not.11.i, label %cond.end29.11.i, label %cond.true23.11.i

cond.true23.11.i:                                 ; preds = %cond.end29.10.i
  %103 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.11.i = getelementptr inbounds i8, ptr %left.i, i64 196
  %104 = load i32, ptr %mb_addr.11.i, align 4
  %idxprom26.11.i = sext i32 %104 to i64
  %arrayidx27.11.i = getelementptr inbounds i8, ptr %103, i64 %idxprom26.11.i
  %105 = load i8, ptr %arrayidx27.11.i, align 1
  %conv.11.i = sext i8 %105 to i32
  br label %cond.end29.11.i

cond.end29.11.i:                                  ; preds = %cond.true23.11.i, %cond.end29.10.i
  %cond30.11.i = phi i32 [ %conv.11.i, %cond.true23.11.i ], [ 0, %cond.end29.10.i ]
  %and.11.i = and i32 %and.10.i, %cond30.11.i
  %106 = load i32, ptr %arrayidx11.13.i, align 16
  %tobool22.not.12.i = icmp eq i32 %106, 0
  br i1 %tobool22.not.12.i, label %cond.end29.12.i, label %cond.true23.12.i

cond.true23.12.i:                                 ; preds = %cond.end29.11.i
  %107 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.12.i = getelementptr inbounds i8, ptr %left.i, i64 212
  %108 = load i32, ptr %mb_addr.12.i, align 4
  %idxprom26.12.i = sext i32 %108 to i64
  %arrayidx27.12.i = getelementptr inbounds i8, ptr %107, i64 %idxprom26.12.i
  %109 = load i8, ptr %arrayidx27.12.i, align 1
  %conv.12.i = sext i8 %109 to i32
  br label %cond.end29.12.i

cond.end29.12.i:                                  ; preds = %cond.true23.12.i, %cond.end29.11.i
  %cond30.12.i = phi i32 [ %conv.12.i, %cond.true23.12.i ], [ 0, %cond.end29.11.i ]
  %and.12.i = and i32 %and.11.i, %cond30.12.i
  %110 = load i32, ptr %arrayidx11.14.i, align 16
  %tobool22.not.13.i = icmp eq i32 %110, 0
  br i1 %tobool22.not.13.i, label %cond.end29.13.i, label %cond.true23.13.i

cond.true23.13.i:                                 ; preds = %cond.end29.12.i
  %111 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.13.i = getelementptr inbounds i8, ptr %left.i, i64 228
  %112 = load i32, ptr %mb_addr.13.i, align 4
  %idxprom26.13.i = sext i32 %112 to i64
  %arrayidx27.13.i = getelementptr inbounds i8, ptr %111, i64 %idxprom26.13.i
  %113 = load i8, ptr %arrayidx27.13.i, align 1
  %conv.13.i = sext i8 %113 to i32
  br label %cond.end29.13.i

cond.end29.13.i:                                  ; preds = %cond.true23.13.i, %cond.end29.12.i
  %cond30.13.i = phi i32 [ %conv.13.i, %cond.true23.13.i ], [ 0, %cond.end29.12.i ]
  %and.13.i = and i32 %and.12.i, %cond30.13.i
  %114 = load i32, ptr %arrayidx11.15.i, align 16
  %tobool22.not.14.i = icmp eq i32 %114, 0
  br i1 %tobool22.not.14.i, label %cond.end29.14.i, label %cond.true23.14.i

cond.true23.14.i:                                 ; preds = %cond.end29.13.i
  %115 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.14.i = getelementptr inbounds i8, ptr %left.i, i64 244
  %116 = load i32, ptr %mb_addr.14.i, align 4
  %idxprom26.14.i = sext i32 %116 to i64
  %arrayidx27.14.i = getelementptr inbounds i8, ptr %115, i64 %idxprom26.14.i
  %117 = load i8, ptr %arrayidx27.14.i, align 1
  %conv.14.i = sext i8 %117 to i32
  br label %cond.end29.14.i

cond.end29.14.i:                                  ; preds = %cond.true23.14.i, %cond.end29.13.i
  %cond30.14.i = phi i32 [ %conv.14.i, %cond.true23.14.i ], [ 0, %cond.end29.13.i ]
  %and.14.i = and i32 %and.13.i, %cond30.14.i
  %118 = load i32, ptr %arrayidx11.16.i, align 16
  %tobool22.not.15.i = icmp eq i32 %118, 0
  br i1 %tobool22.not.15.i, label %cond.end29.15.i, label %cond.true23.15.i

cond.true23.15.i:                                 ; preds = %cond.end29.14.i
  %119 = load ptr, ptr %intra_block.i30, align 8
  %mb_addr.15.i = getelementptr inbounds i8, ptr %left.i, i64 260
  %120 = load i32, ptr %mb_addr.15.i, align 4
  %idxprom26.15.i = sext i32 %120 to i64
  %arrayidx27.15.i = getelementptr inbounds i8, ptr %119, i64 %idxprom26.15.i
  %121 = load i8, ptr %arrayidx27.15.i, align 1
  %conv.15.i = sext i8 %121 to i32
  br label %cond.end29.15.i

cond.end29.15.i:                                  ; preds = %cond.true23.15.i, %cond.end29.14.i
  %cond30.15.i = phi i32 [ %conv.15.i, %cond.true23.15.i ], [ 0, %cond.end29.14.i ]
  %and.15.i = and i32 %and.14.i, %cond30.15.i
  br label %if.end.i32

if.end.i32:                                       ; preds = %cond.end29.15.i, %if.then.i
  %left_avail.1.i = phi i32 [ %58, %if.then.i ], [ %and.15.i, %cond.end29.15.i ]
  %tobool47.not.i = icmp eq i32 %left_avail.1.i, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %for.body53.i.preheader

if.then48.i:                                      ; preds = %if.end.i32
  call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #6
  br label %for.body53.i.preheader

for.body53.i.preheader:                           ; preds = %if.then48.i, %if.end.i32
  br label %for.body53.i

for.body53.i:                                     ; preds = %for.body53.i.preheader, %for.body53.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body53.i ], [ 0, %for.body53.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx55.i = getelementptr inbounds [17 x %struct.pix_pos], ptr %left.i, i64 0, i64 %indvars.iv.next.i
  %pos_y.i33 = getelementptr inbounds i8, ptr %arrayidx55.i, i64 14
  %122 = load i16, ptr %pos_y.i33, align 2
  %idxprom56.i = sext i16 %122 to i64
  %arrayidx57.i = getelementptr inbounds ptr, ptr %cond.i25, i64 %idxprom56.i
  %123 = load ptr, ptr %arrayidx57.i, align 8
  %pos_x.i34 = getelementptr inbounds i8, ptr %arrayidx55.i, i64 12
  %124 = load i16, ptr %pos_x.i34, align 4
  %idxprom61.i = sext i16 %124 to i64
  %arrayidx62.i = getelementptr inbounds i16, ptr %123, i64 %idxprom61.i
  %125 = load i16, ptr %arrayidx62.i, align 2
  %arrayidx68.i = getelementptr inbounds ptr, ptr %37, i64 %indvars.iv.i
  %126 = load ptr, ptr %arrayidx68.i, align 8
  store i16 %125, ptr %126, align 2
  %127 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.1.i = getelementptr inbounds i8, ptr %127, i64 2
  store i16 %125, ptr %arrayidx70.1.i, align 2
  %128 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.2.i = getelementptr inbounds i8, ptr %128, i64 4
  store i16 %125, ptr %arrayidx70.2.i, align 2
  %129 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.3.i = getelementptr inbounds i8, ptr %129, i64 6
  store i16 %125, ptr %arrayidx70.3.i, align 2
  %130 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.4.i = getelementptr inbounds i8, ptr %130, i64 8
  store i16 %125, ptr %arrayidx70.4.i, align 2
  %131 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.5.i = getelementptr inbounds i8, ptr %131, i64 10
  store i16 %125, ptr %arrayidx70.5.i, align 2
  %132 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.6.i = getelementptr inbounds i8, ptr %132, i64 12
  store i16 %125, ptr %arrayidx70.6.i, align 2
  %133 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.7.i = getelementptr inbounds i8, ptr %133, i64 14
  store i16 %125, ptr %arrayidx70.7.i, align 2
  %134 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.8.i = getelementptr inbounds i8, ptr %134, i64 16
  store i16 %125, ptr %arrayidx70.8.i, align 2
  %135 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.9.i = getelementptr inbounds i8, ptr %135, i64 18
  store i16 %125, ptr %arrayidx70.9.i, align 2
  %136 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.10.i = getelementptr inbounds i8, ptr %136, i64 20
  store i16 %125, ptr %arrayidx70.10.i, align 2
  %137 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.11.i = getelementptr inbounds i8, ptr %137, i64 22
  store i16 %125, ptr %arrayidx70.11.i, align 2
  %138 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.12.i = getelementptr inbounds i8, ptr %138, i64 24
  store i16 %125, ptr %arrayidx70.12.i, align 2
  %139 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.13.i = getelementptr inbounds i8, ptr %139, i64 26
  store i16 %125, ptr %arrayidx70.13.i, align 2
  %140 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.14.i = getelementptr inbounds i8, ptr %140, i64 28
  store i16 %125, ptr %arrayidx70.14.i, align 2
  %141 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.15.i = getelementptr inbounds i8, ptr %141, i64 30
  store i16 %125, ptr %arrayidx70.15.i, align 2
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %intra16x16_hor_pred_mbaff.exit, label %for.body53.i

intra16x16_hor_pred_mbaff.exit:                   ; preds = %for.body53.i
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %left.i) #6
  br label %return

sw.bb3:                                           ; preds = %entry
  %142 = load ptr, ptr %currMB, align 8
  %p_Vid1.i39 = getelementptr inbounds i8, ptr %currMB, i64 8
  %143 = load ptr, ptr %p_Vid1.i39, align 8
  %tobool.not.i40 = icmp eq i32 %pl, 0
  %dec_picture2.i41 = getelementptr inbounds i8, ptr %142, i64 13520
  %144 = load ptr, ptr %dec_picture2.i41, align 8
  br i1 %tobool.not.i40, label %cond.false.i104, label %cond.true.i42

cond.true.i42:                                    ; preds = %sw.bb3
  %imgUV.i43 = getelementptr inbounds i8, ptr %144, i64 136
  %145 = load ptr, ptr %imgUV.i43, align 8
  %sub.i44 = add i32 %pl, -1
  %idxprom.i45 = zext i32 %sub.i44 to i64
  %arrayidx.i46 = getelementptr inbounds ptr, ptr %145, i64 %idxprom.i45
  br label %cond.end.i47

cond.false.i104:                                  ; preds = %sw.bb3
  %imgY3.i105 = getelementptr inbounds i8, ptr %144, i64 128
  br label %cond.end.i47

cond.end.i47:                                     ; preds = %cond.false.i104, %cond.true.i42
  %cond.in.i48 = phi ptr [ %arrayidx.i46, %cond.true.i42 ], [ %imgY3.i105, %cond.false.i104 ]
  %cond.i49 = load ptr, ptr %cond.in.i48, align 8
  %mb_pred4.i50 = getelementptr inbounds i8, ptr %142, i64 1248
  %146 = load ptr, ptr %mb_pred4.i50, align 8
  %idxprom5.i51 = zext i32 %pl to i64
  %arrayidx6.i52 = getelementptr inbounds ptr, ptr %146, i64 %idxprom5.i51
  %147 = load ptr, ptr %arrayidx6.i52, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %b.i37) #6
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %left.i38) #6
  %getNeighbour.i53 = getelementptr inbounds i8, ptr %143, i64 856744
  %mb_size.i54 = getelementptr inbounds i8, ptr %143, i64 849124
  %148 = load ptr, ptr %getNeighbour.i53, align 8
  call void %148(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %left.i38) #6
  %149 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.1.i55 = getelementptr inbounds i8, ptr %left.i38, i64 16
  call void %149(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.1.i55) #6
  %150 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.2.i56 = getelementptr inbounds i8, ptr %left.i38, i64 32
  call void %150(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.2.i56) #6
  %151 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.3.i57 = getelementptr inbounds i8, ptr %left.i38, i64 48
  call void %151(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 2, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.3.i57) #6
  %152 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.4.i58 = getelementptr inbounds i8, ptr %left.i38, i64 64
  call void %152(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 3, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.4.i58) #6
  %153 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.5.i59 = getelementptr inbounds i8, ptr %left.i38, i64 80
  call void %153(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 4, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.5.i59) #6
  %154 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.6.i60 = getelementptr inbounds i8, ptr %left.i38, i64 96
  call void %154(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 5, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.6.i60) #6
  %155 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.7.i61 = getelementptr inbounds i8, ptr %left.i38, i64 112
  call void %155(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 6, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.7.i61) #6
  %156 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.8.i62 = getelementptr inbounds i8, ptr %left.i38, i64 128
  call void %156(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 7, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.8.i62) #6
  %157 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.9.i63 = getelementptr inbounds i8, ptr %left.i38, i64 144
  call void %157(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 8, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.9.i63) #6
  %158 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.10.i64 = getelementptr inbounds i8, ptr %left.i38, i64 160
  call void %158(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 9, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.10.i64) #6
  %159 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.11.i65 = getelementptr inbounds i8, ptr %left.i38, i64 176
  call void %159(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 10, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.11.i65) #6
  %160 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.12.i66 = getelementptr inbounds i8, ptr %left.i38, i64 192
  call void %160(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 11, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.12.i66) #6
  %161 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.13.i67 = getelementptr inbounds i8, ptr %left.i38, i64 208
  call void %161(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 12, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.13.i67) #6
  %162 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.14.i68 = getelementptr inbounds i8, ptr %left.i38, i64 224
  call void %162(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 13, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.14.i68) #6
  %163 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.15.i69 = getelementptr inbounds i8, ptr %left.i38, i64 240
  call void %163(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 14, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.15.i69) #6
  %164 = load ptr, ptr %getNeighbour.i53, align 8
  %arrayidx11.16.i70 = getelementptr inbounds i8, ptr %left.i38, i64 256
  call void %164(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 15, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %arrayidx11.16.i70) #6
  %165 = load ptr, ptr %getNeighbour.i53, align 8
  call void %165(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size.i54, ptr noundef nonnull %b.i37) #6
  %active_pps.i71 = getelementptr inbounds i8, ptr %143, i64 8
  %166 = load ptr, ptr %active_pps.i71, align 8
  %constrained_intra_pred_flag.i72 = getelementptr inbounds i8, ptr %166, i64 2204
  %167 = load i32, ptr %constrained_intra_pred_flag.i72, align 4
  %tobool16.not.i = icmp eq i32 %167, 0
  %168 = load i32, ptr %b.i37, align 4
  br i1 %tobool16.not.i, label %if.then.i103, label %if.else.i73

if.then.i103:                                     ; preds = %cond.end.i47
  %169 = load i32, ptr %arrayidx11.1.i55, align 16
  br label %if.end.i95

if.else.i73:                                      ; preds = %cond.end.i47
  %tobool22.not.i74 = icmp eq i32 %168, 0
  br i1 %tobool22.not.i74, label %cond.end27.i, label %cond.true23.i75

cond.true23.i75:                                  ; preds = %if.else.i73
  %intra_block.i76 = getelementptr inbounds i8, ptr %142, i64 13544
  %170 = load ptr, ptr %intra_block.i76, align 8
  %mb_addr.i77 = getelementptr inbounds i8, ptr %b.i37, i64 4
  %171 = load i32, ptr %mb_addr.i77, align 4
  %idxprom24.i = sext i32 %171 to i64
  %arrayidx25.i = getelementptr inbounds i8, ptr %170, i64 %idxprom24.i
  %172 = load i8, ptr %arrayidx25.i, align 1
  %conv.i78 = sext i8 %172 to i32
  br label %cond.end27.i

cond.end27.i:                                     ; preds = %cond.true23.i75, %if.else.i73
  %cond28.i = phi i32 [ %conv.i78, %cond.true23.i75 ], [ 0, %if.else.i73 ]
  %intra_block38.i = getelementptr inbounds i8, ptr %142, i64 13544
  %173 = load i32, ptr %arrayidx11.1.i55, align 16
  %tobool36.not.i = icmp eq i32 %173, 0
  br i1 %tobool36.not.i, label %cond.end46.i, label %cond.true37.i

cond.true37.i:                                    ; preds = %cond.end27.i
  %174 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.i = getelementptr inbounds i8, ptr %left.i38, i64 20
  %175 = load i32, ptr %mb_addr41.i, align 4
  %idxprom42.i = sext i32 %175 to i64
  %arrayidx43.i = getelementptr inbounds i8, ptr %174, i64 %idxprom42.i
  %176 = load i8, ptr %arrayidx43.i, align 1
  %conv44225.i = zext i8 %176 to i32
  br label %cond.end46.i

cond.end46.i:                                     ; preds = %cond.true37.i, %cond.end27.i
  %cond47.i = phi i32 [ %conv44225.i, %cond.true37.i ], [ 0, %cond.end27.i ]
  %and.i79 = and i32 %cond47.i, 1
  %177 = load i32, ptr %arrayidx11.2.i56, align 16
  %tobool36.not.1.i = icmp eq i32 %177, 0
  br i1 %tobool36.not.1.i, label %cond.end46.1.i, label %cond.true37.1.i

cond.true37.1.i:                                  ; preds = %cond.end46.i
  %178 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.1.i = getelementptr inbounds i8, ptr %left.i38, i64 36
  %179 = load i32, ptr %mb_addr41.1.i, align 4
  %idxprom42.1.i = sext i32 %179 to i64
  %arrayidx43.1.i = getelementptr inbounds i8, ptr %178, i64 %idxprom42.1.i
  %180 = load i8, ptr %arrayidx43.1.i, align 1
  %conv44.1226.i = zext i8 %180 to i32
  br label %cond.end46.1.i

cond.end46.1.i:                                   ; preds = %cond.true37.1.i, %cond.end46.i
  %cond47.1.i = phi i32 [ %conv44.1226.i, %cond.true37.1.i ], [ 0, %cond.end46.i ]
  %and.1.i80 = and i32 %and.i79, %cond47.1.i
  %181 = load i32, ptr %arrayidx11.3.i57, align 16
  %tobool36.not.2.i = icmp eq i32 %181, 0
  br i1 %tobool36.not.2.i, label %cond.end46.2.i, label %cond.true37.2.i

cond.true37.2.i:                                  ; preds = %cond.end46.1.i
  %182 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.2.i = getelementptr inbounds i8, ptr %left.i38, i64 52
  %183 = load i32, ptr %mb_addr41.2.i, align 4
  %idxprom42.2.i = sext i32 %183 to i64
  %arrayidx43.2.i = getelementptr inbounds i8, ptr %182, i64 %idxprom42.2.i
  %184 = load i8, ptr %arrayidx43.2.i, align 1
  %conv44.2227.i = zext i8 %184 to i32
  br label %cond.end46.2.i

cond.end46.2.i:                                   ; preds = %cond.true37.2.i, %cond.end46.1.i
  %cond47.2.i = phi i32 [ %conv44.2227.i, %cond.true37.2.i ], [ 0, %cond.end46.1.i ]
  %and.2.i81 = and i32 %and.1.i80, %cond47.2.i
  %185 = load i32, ptr %arrayidx11.4.i58, align 16
  %tobool36.not.3.i = icmp eq i32 %185, 0
  br i1 %tobool36.not.3.i, label %cond.end46.3.i, label %cond.true37.3.i

cond.true37.3.i:                                  ; preds = %cond.end46.2.i
  %186 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.3.i = getelementptr inbounds i8, ptr %left.i38, i64 68
  %187 = load i32, ptr %mb_addr41.3.i, align 4
  %idxprom42.3.i = sext i32 %187 to i64
  %arrayidx43.3.i = getelementptr inbounds i8, ptr %186, i64 %idxprom42.3.i
  %188 = load i8, ptr %arrayidx43.3.i, align 1
  %conv44.3228.i = zext i8 %188 to i32
  br label %cond.end46.3.i

cond.end46.3.i:                                   ; preds = %cond.true37.3.i, %cond.end46.2.i
  %cond47.3.i = phi i32 [ %conv44.3228.i, %cond.true37.3.i ], [ 0, %cond.end46.2.i ]
  %and.3.i82 = and i32 %and.2.i81, %cond47.3.i
  %189 = load i32, ptr %arrayidx11.5.i59, align 16
  %tobool36.not.4.i = icmp eq i32 %189, 0
  br i1 %tobool36.not.4.i, label %cond.end46.4.i, label %cond.true37.4.i

cond.true37.4.i:                                  ; preds = %cond.end46.3.i
  %190 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.4.i = getelementptr inbounds i8, ptr %left.i38, i64 84
  %191 = load i32, ptr %mb_addr41.4.i, align 4
  %idxprom42.4.i = sext i32 %191 to i64
  %arrayidx43.4.i = getelementptr inbounds i8, ptr %190, i64 %idxprom42.4.i
  %192 = load i8, ptr %arrayidx43.4.i, align 1
  %conv44.4229.i = zext i8 %192 to i32
  br label %cond.end46.4.i

cond.end46.4.i:                                   ; preds = %cond.true37.4.i, %cond.end46.3.i
  %cond47.4.i = phi i32 [ %conv44.4229.i, %cond.true37.4.i ], [ 0, %cond.end46.3.i ]
  %and.4.i83 = and i32 %and.3.i82, %cond47.4.i
  %193 = load i32, ptr %arrayidx11.6.i60, align 16
  %tobool36.not.5.i = icmp eq i32 %193, 0
  br i1 %tobool36.not.5.i, label %cond.end46.5.i, label %cond.true37.5.i

cond.true37.5.i:                                  ; preds = %cond.end46.4.i
  %194 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.5.i = getelementptr inbounds i8, ptr %left.i38, i64 100
  %195 = load i32, ptr %mb_addr41.5.i, align 4
  %idxprom42.5.i = sext i32 %195 to i64
  %arrayidx43.5.i = getelementptr inbounds i8, ptr %194, i64 %idxprom42.5.i
  %196 = load i8, ptr %arrayidx43.5.i, align 1
  %conv44.5230.i = zext i8 %196 to i32
  br label %cond.end46.5.i

cond.end46.5.i:                                   ; preds = %cond.true37.5.i, %cond.end46.4.i
  %cond47.5.i = phi i32 [ %conv44.5230.i, %cond.true37.5.i ], [ 0, %cond.end46.4.i ]
  %and.5.i84 = and i32 %and.4.i83, %cond47.5.i
  %197 = load i32, ptr %arrayidx11.7.i61, align 16
  %tobool36.not.6.i = icmp eq i32 %197, 0
  br i1 %tobool36.not.6.i, label %cond.end46.6.i, label %cond.true37.6.i

cond.true37.6.i:                                  ; preds = %cond.end46.5.i
  %198 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.6.i = getelementptr inbounds i8, ptr %left.i38, i64 116
  %199 = load i32, ptr %mb_addr41.6.i, align 4
  %idxprom42.6.i = sext i32 %199 to i64
  %arrayidx43.6.i = getelementptr inbounds i8, ptr %198, i64 %idxprom42.6.i
  %200 = load i8, ptr %arrayidx43.6.i, align 1
  %conv44.6231.i = zext i8 %200 to i32
  br label %cond.end46.6.i

cond.end46.6.i:                                   ; preds = %cond.true37.6.i, %cond.end46.5.i
  %cond47.6.i = phi i32 [ %conv44.6231.i, %cond.true37.6.i ], [ 0, %cond.end46.5.i ]
  %and.6.i85 = and i32 %and.5.i84, %cond47.6.i
  %201 = load i32, ptr %arrayidx11.8.i62, align 16
  %tobool36.not.7.i = icmp eq i32 %201, 0
  br i1 %tobool36.not.7.i, label %cond.end46.7.i, label %cond.true37.7.i

cond.true37.7.i:                                  ; preds = %cond.end46.6.i
  %202 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.7.i = getelementptr inbounds i8, ptr %left.i38, i64 132
  %203 = load i32, ptr %mb_addr41.7.i, align 4
  %idxprom42.7.i = sext i32 %203 to i64
  %arrayidx43.7.i = getelementptr inbounds i8, ptr %202, i64 %idxprom42.7.i
  %204 = load i8, ptr %arrayidx43.7.i, align 1
  %conv44.7.i167 = zext i8 %204 to i32
  br label %cond.end46.7.i

cond.end46.7.i:                                   ; preds = %cond.true37.7.i, %cond.end46.6.i
  %cond47.7.i = phi i32 [ %conv44.7.i167, %cond.true37.7.i ], [ 0, %cond.end46.6.i ]
  %and.7.i86 = and i32 %and.6.i85, %cond47.7.i
  %205 = load i32, ptr %arrayidx11.9.i63, align 16
  %tobool36.not.8.i = icmp eq i32 %205, 0
  br i1 %tobool36.not.8.i, label %cond.end46.8.i, label %cond.true37.8.i

cond.true37.8.i:                                  ; preds = %cond.end46.7.i
  %206 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.8.i = getelementptr inbounds i8, ptr %left.i38, i64 148
  %207 = load i32, ptr %mb_addr41.8.i, align 4
  %idxprom42.8.i = sext i32 %207 to i64
  %arrayidx43.8.i = getelementptr inbounds i8, ptr %206, i64 %idxprom42.8.i
  %208 = load i8, ptr %arrayidx43.8.i, align 1
  %conv44.8.i168 = zext i8 %208 to i32
  br label %cond.end46.8.i

cond.end46.8.i:                                   ; preds = %cond.true37.8.i, %cond.end46.7.i
  %cond47.8.i = phi i32 [ %conv44.8.i168, %cond.true37.8.i ], [ 0, %cond.end46.7.i ]
  %and.8.i87 = and i32 %and.7.i86, %cond47.8.i
  %209 = load i32, ptr %arrayidx11.10.i64, align 16
  %tobool36.not.9.i = icmp eq i32 %209, 0
  br i1 %tobool36.not.9.i, label %cond.end46.9.i, label %cond.true37.9.i

cond.true37.9.i:                                  ; preds = %cond.end46.8.i
  %210 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.9.i = getelementptr inbounds i8, ptr %left.i38, i64 164
  %211 = load i32, ptr %mb_addr41.9.i, align 4
  %idxprom42.9.i = sext i32 %211 to i64
  %arrayidx43.9.i = getelementptr inbounds i8, ptr %210, i64 %idxprom42.9.i
  %212 = load i8, ptr %arrayidx43.9.i, align 1
  %conv44.9.i169 = zext i8 %212 to i32
  br label %cond.end46.9.i

cond.end46.9.i:                                   ; preds = %cond.true37.9.i, %cond.end46.8.i
  %cond47.9.i = phi i32 [ %conv44.9.i169, %cond.true37.9.i ], [ 0, %cond.end46.8.i ]
  %and.9.i88 = and i32 %and.8.i87, %cond47.9.i
  %213 = load i32, ptr %arrayidx11.11.i65, align 16
  %tobool36.not.10.i = icmp eq i32 %213, 0
  br i1 %tobool36.not.10.i, label %cond.end46.10.i, label %cond.true37.10.i

cond.true37.10.i:                                 ; preds = %cond.end46.9.i
  %214 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.10.i = getelementptr inbounds i8, ptr %left.i38, i64 180
  %215 = load i32, ptr %mb_addr41.10.i, align 4
  %idxprom42.10.i = sext i32 %215 to i64
  %arrayidx43.10.i = getelementptr inbounds i8, ptr %214, i64 %idxprom42.10.i
  %216 = load i8, ptr %arrayidx43.10.i, align 1
  %conv44.10.i170 = zext i8 %216 to i32
  br label %cond.end46.10.i

cond.end46.10.i:                                  ; preds = %cond.true37.10.i, %cond.end46.9.i
  %cond47.10.i = phi i32 [ %conv44.10.i170, %cond.true37.10.i ], [ 0, %cond.end46.9.i ]
  %and.10.i89 = and i32 %and.9.i88, %cond47.10.i
  %217 = load i32, ptr %arrayidx11.12.i66, align 16
  %tobool36.not.11.i = icmp eq i32 %217, 0
  br i1 %tobool36.not.11.i, label %cond.end46.11.i, label %cond.true37.11.i

cond.true37.11.i:                                 ; preds = %cond.end46.10.i
  %218 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.11.i = getelementptr inbounds i8, ptr %left.i38, i64 196
  %219 = load i32, ptr %mb_addr41.11.i, align 4
  %idxprom42.11.i = sext i32 %219 to i64
  %arrayidx43.11.i = getelementptr inbounds i8, ptr %218, i64 %idxprom42.11.i
  %220 = load i8, ptr %arrayidx43.11.i, align 1
  %conv44.11.i = sext i8 %220 to i32
  br label %cond.end46.11.i

cond.end46.11.i:                                  ; preds = %cond.true37.11.i, %cond.end46.10.i
  %cond47.11.i = phi i32 [ %conv44.11.i, %cond.true37.11.i ], [ 0, %cond.end46.10.i ]
  %and.11.i90 = and i32 %and.10.i89, %cond47.11.i
  %221 = load i32, ptr %arrayidx11.13.i67, align 16
  %tobool36.not.12.i = icmp eq i32 %221, 0
  br i1 %tobool36.not.12.i, label %cond.end46.12.i, label %cond.true37.12.i

cond.true37.12.i:                                 ; preds = %cond.end46.11.i
  %222 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.12.i = getelementptr inbounds i8, ptr %left.i38, i64 212
  %223 = load i32, ptr %mb_addr41.12.i, align 4
  %idxprom42.12.i = sext i32 %223 to i64
  %arrayidx43.12.i = getelementptr inbounds i8, ptr %222, i64 %idxprom42.12.i
  %224 = load i8, ptr %arrayidx43.12.i, align 1
  %conv44.12.i = sext i8 %224 to i32
  br label %cond.end46.12.i

cond.end46.12.i:                                  ; preds = %cond.true37.12.i, %cond.end46.11.i
  %cond47.12.i = phi i32 [ %conv44.12.i, %cond.true37.12.i ], [ 0, %cond.end46.11.i ]
  %and.12.i91 = and i32 %and.11.i90, %cond47.12.i
  %225 = load i32, ptr %arrayidx11.14.i68, align 16
  %tobool36.not.13.i = icmp eq i32 %225, 0
  br i1 %tobool36.not.13.i, label %cond.end46.13.i, label %cond.true37.13.i

cond.true37.13.i:                                 ; preds = %cond.end46.12.i
  %226 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.13.i = getelementptr inbounds i8, ptr %left.i38, i64 228
  %227 = load i32, ptr %mb_addr41.13.i, align 4
  %idxprom42.13.i = sext i32 %227 to i64
  %arrayidx43.13.i = getelementptr inbounds i8, ptr %226, i64 %idxprom42.13.i
  %228 = load i8, ptr %arrayidx43.13.i, align 1
  %conv44.13.i = sext i8 %228 to i32
  br label %cond.end46.13.i

cond.end46.13.i:                                  ; preds = %cond.true37.13.i, %cond.end46.12.i
  %cond47.13.i = phi i32 [ %conv44.13.i, %cond.true37.13.i ], [ 0, %cond.end46.12.i ]
  %and.13.i92 = and i32 %and.12.i91, %cond47.13.i
  %229 = load i32, ptr %arrayidx11.15.i69, align 16
  %tobool36.not.14.i = icmp eq i32 %229, 0
  br i1 %tobool36.not.14.i, label %cond.end46.14.i, label %cond.true37.14.i

cond.true37.14.i:                                 ; preds = %cond.end46.13.i
  %230 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.14.i = getelementptr inbounds i8, ptr %left.i38, i64 244
  %231 = load i32, ptr %mb_addr41.14.i, align 4
  %idxprom42.14.i = sext i32 %231 to i64
  %arrayidx43.14.i = getelementptr inbounds i8, ptr %230, i64 %idxprom42.14.i
  %232 = load i8, ptr %arrayidx43.14.i, align 1
  %conv44.14.i = sext i8 %232 to i32
  br label %cond.end46.14.i

cond.end46.14.i:                                  ; preds = %cond.true37.14.i, %cond.end46.13.i
  %cond47.14.i = phi i32 [ %conv44.14.i, %cond.true37.14.i ], [ 0, %cond.end46.13.i ]
  %and.14.i93 = and i32 %and.13.i92, %cond47.14.i
  %233 = load i32, ptr %arrayidx11.16.i70, align 16
  %tobool36.not.15.i = icmp eq i32 %233, 0
  br i1 %tobool36.not.15.i, label %cond.end46.15.i, label %cond.true37.15.i

cond.true37.15.i:                                 ; preds = %cond.end46.14.i
  %234 = load ptr, ptr %intra_block38.i, align 8
  %mb_addr41.15.i = getelementptr inbounds i8, ptr %left.i38, i64 260
  %235 = load i32, ptr %mb_addr41.15.i, align 4
  %idxprom42.15.i = sext i32 %235 to i64
  %arrayidx43.15.i = getelementptr inbounds i8, ptr %234, i64 %idxprom42.15.i
  %236 = load i8, ptr %arrayidx43.15.i, align 1
  %conv44.15.i = sext i8 %236 to i32
  br label %cond.end46.15.i

cond.end46.15.i:                                  ; preds = %cond.true37.15.i, %cond.end46.14.i
  %cond47.15.i = phi i32 [ %conv44.15.i, %cond.true37.15.i ], [ 0, %cond.end46.14.i ]
  %and.15.i94 = and i32 %and.14.i93, %cond47.15.i
  br label %if.end.i95

if.end.i95:                                       ; preds = %cond.end46.15.i, %if.then.i103
  %up_avail.0.i96 = phi i32 [ %168, %if.then.i103 ], [ %cond28.i, %cond.end46.15.i ]
  %left_avail.1.i97 = phi i32 [ %169, %if.then.i103 ], [ %and.15.i94, %cond.end46.15.i ]
  %tobool68.not.i = icmp eq i32 %up_avail.0.i96, 0
  %tobool78.not.i = icmp eq i32 %left_avail.1.i97, 0
  %pos_y.i98 = getelementptr inbounds i8, ptr %b.i37, i64 14
  %237 = load i16, ptr %pos_y.i98, align 2
  %idxprom70.i = sext i16 %237 to i64
  %arrayidx71.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom70.i
  %pos_x.i99 = getelementptr inbounds i8, ptr %b.i37, i64 12
  %238 = load i16, ptr %pos_x.i99, align 4
  br i1 %tobool78.not.i, label %if.end.split.us.i, label %if.end.split.i

if.end.split.us.i:                                ; preds = %if.end.i95
  br i1 %tobool68.not.i, label %if.else117.i, label %if.then114.i

if.end.split.i:                                   ; preds = %if.end.i95
  br i1 %tobool68.not.i, label %if.else103.i, label %for.end97.i

for.end97.i:                                      ; preds = %if.end.split.i
  %239 = load ptr, ptr %arrayidx71.i, align 8
  %240 = sext i16 %238 to i64
  %arrayidx74.i = getelementptr inbounds i16, ptr %239, i64 %240
  %241 = load i16, ptr %arrayidx74.i, align 2
  %conv75.i = zext i16 %241 to i32
  %pos_y83.i = getelementptr inbounds i8, ptr %left.i38, i64 30
  %242 = load i16, ptr %pos_y83.i, align 2
  %idxprom84.i = sext i16 %242 to i64
  %arrayidx85.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.i
  %243 = load ptr, ptr %arrayidx85.i, align 8
  %pos_x89.i = getelementptr inbounds i8, ptr %left.i38, i64 28
  %244 = load i16, ptr %pos_x89.i, align 4
  %idxprom90.i = sext i16 %244 to i64
  %arrayidx91.i = getelementptr inbounds i16, ptr %243, i64 %idxprom90.i
  %245 = load i16, ptr %arrayidx91.i, align 2
  %conv92.i = zext i16 %245 to i32
  %arrayidx74.1.i = getelementptr i8, ptr %arrayidx74.i, i64 2
  %246 = load i16, ptr %arrayidx74.1.i, align 2
  %conv75.1.i = zext i16 %246 to i32
  %pos_y83.1.i = getelementptr inbounds i8, ptr %left.i38, i64 46
  %247 = load i16, ptr %pos_y83.1.i, align 2
  %idxprom84.1.i = sext i16 %247 to i64
  %arrayidx85.1.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.1.i
  %248 = load ptr, ptr %arrayidx85.1.i, align 8
  %pos_x89.1.i = getelementptr inbounds i8, ptr %left.i38, i64 44
  %249 = load i16, ptr %pos_x89.1.i, align 4
  %idxprom90.1.i = sext i16 %249 to i64
  %arrayidx91.1.i = getelementptr inbounds i16, ptr %248, i64 %idxprom90.1.i
  %250 = load i16, ptr %arrayidx91.1.i, align 2
  %conv92.1.i = zext i16 %250 to i32
  %arrayidx74.2.i = getelementptr i8, ptr %arrayidx74.i, i64 4
  %251 = load i16, ptr %arrayidx74.2.i, align 2
  %conv75.2.i = zext i16 %251 to i32
  %pos_y83.2.i = getelementptr inbounds i8, ptr %left.i38, i64 62
  %252 = load i16, ptr %pos_y83.2.i, align 2
  %idxprom84.2.i = sext i16 %252 to i64
  %arrayidx85.2.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.2.i
  %253 = load ptr, ptr %arrayidx85.2.i, align 8
  %pos_x89.2.i = getelementptr inbounds i8, ptr %left.i38, i64 60
  %254 = load i16, ptr %pos_x89.2.i, align 4
  %idxprom90.2.i = sext i16 %254 to i64
  %arrayidx91.2.i = getelementptr inbounds i16, ptr %253, i64 %idxprom90.2.i
  %255 = load i16, ptr %arrayidx91.2.i, align 2
  %conv92.2.i = zext i16 %255 to i32
  %arrayidx74.3.i = getelementptr i8, ptr %arrayidx74.i, i64 6
  %256 = load i16, ptr %arrayidx74.3.i, align 2
  %conv75.3.i = zext i16 %256 to i32
  %pos_y83.3.i = getelementptr inbounds i8, ptr %left.i38, i64 78
  %257 = load i16, ptr %pos_y83.3.i, align 2
  %idxprom84.3.i = sext i16 %257 to i64
  %arrayidx85.3.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.3.i
  %258 = load ptr, ptr %arrayidx85.3.i, align 8
  %pos_x89.3.i = getelementptr inbounds i8, ptr %left.i38, i64 76
  %259 = load i16, ptr %pos_x89.3.i, align 4
  %idxprom90.3.i = sext i16 %259 to i64
  %arrayidx91.3.i = getelementptr inbounds i16, ptr %258, i64 %idxprom90.3.i
  %260 = load i16, ptr %arrayidx91.3.i, align 2
  %conv92.3.i = zext i16 %260 to i32
  %arrayidx74.4.i = getelementptr i8, ptr %arrayidx74.i, i64 8
  %261 = load i16, ptr %arrayidx74.4.i, align 2
  %conv75.4.i = zext i16 %261 to i32
  %pos_y83.4.i = getelementptr inbounds i8, ptr %left.i38, i64 94
  %262 = load i16, ptr %pos_y83.4.i, align 2
  %idxprom84.4.i = sext i16 %262 to i64
  %arrayidx85.4.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.4.i
  %263 = load ptr, ptr %arrayidx85.4.i, align 8
  %pos_x89.4.i = getelementptr inbounds i8, ptr %left.i38, i64 92
  %264 = load i16, ptr %pos_x89.4.i, align 4
  %idxprom90.4.i = sext i16 %264 to i64
  %arrayidx91.4.i = getelementptr inbounds i16, ptr %263, i64 %idxprom90.4.i
  %265 = load i16, ptr %arrayidx91.4.i, align 2
  %conv92.4.i = zext i16 %265 to i32
  %arrayidx74.5.i = getelementptr i8, ptr %arrayidx74.i, i64 10
  %266 = load i16, ptr %arrayidx74.5.i, align 2
  %conv75.5.i = zext i16 %266 to i32
  %pos_y83.5.i = getelementptr inbounds i8, ptr %left.i38, i64 110
  %267 = load i16, ptr %pos_y83.5.i, align 2
  %idxprom84.5.i = sext i16 %267 to i64
  %arrayidx85.5.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.5.i
  %268 = load ptr, ptr %arrayidx85.5.i, align 8
  %pos_x89.5.i = getelementptr inbounds i8, ptr %left.i38, i64 108
  %269 = load i16, ptr %pos_x89.5.i, align 4
  %idxprom90.5.i = sext i16 %269 to i64
  %arrayidx91.5.i = getelementptr inbounds i16, ptr %268, i64 %idxprom90.5.i
  %270 = load i16, ptr %arrayidx91.5.i, align 2
  %conv92.5.i = zext i16 %270 to i32
  %arrayidx74.6.i = getelementptr i8, ptr %arrayidx74.i, i64 12
  %271 = load i16, ptr %arrayidx74.6.i, align 2
  %conv75.6.i = zext i16 %271 to i32
  %pos_y83.6.i = getelementptr inbounds i8, ptr %left.i38, i64 126
  %272 = load i16, ptr %pos_y83.6.i, align 2
  %idxprom84.6.i = sext i16 %272 to i64
  %arrayidx85.6.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.6.i
  %273 = load ptr, ptr %arrayidx85.6.i, align 8
  %pos_x89.6.i = getelementptr inbounds i8, ptr %left.i38, i64 124
  %274 = load i16, ptr %pos_x89.6.i, align 4
  %idxprom90.6.i = sext i16 %274 to i64
  %arrayidx91.6.i = getelementptr inbounds i16, ptr %273, i64 %idxprom90.6.i
  %275 = load i16, ptr %arrayidx91.6.i, align 2
  %conv92.6.i = zext i16 %275 to i32
  %arrayidx74.7.i = getelementptr i8, ptr %arrayidx74.i, i64 14
  %276 = load i16, ptr %arrayidx74.7.i, align 2
  %conv75.7.i = zext i16 %276 to i32
  %pos_y83.7.i = getelementptr inbounds i8, ptr %left.i38, i64 142
  %277 = load i16, ptr %pos_y83.7.i, align 2
  %idxprom84.7.i = sext i16 %277 to i64
  %arrayidx85.7.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.7.i
  %278 = load ptr, ptr %arrayidx85.7.i, align 8
  %pos_x89.7.i = getelementptr inbounds i8, ptr %left.i38, i64 140
  %279 = load i16, ptr %pos_x89.7.i, align 4
  %idxprom90.7.i = sext i16 %279 to i64
  %arrayidx91.7.i = getelementptr inbounds i16, ptr %278, i64 %idxprom90.7.i
  %280 = load i16, ptr %arrayidx91.7.i, align 2
  %conv92.7.i = zext i16 %280 to i32
  %arrayidx74.8.i = getelementptr i8, ptr %arrayidx74.i, i64 16
  %281 = load i16, ptr %arrayidx74.8.i, align 2
  %conv75.8.i = zext i16 %281 to i32
  %pos_y83.8.i = getelementptr inbounds i8, ptr %left.i38, i64 158
  %282 = load i16, ptr %pos_y83.8.i, align 2
  %idxprom84.8.i = sext i16 %282 to i64
  %arrayidx85.8.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.8.i
  %283 = load ptr, ptr %arrayidx85.8.i, align 8
  %pos_x89.8.i = getelementptr inbounds i8, ptr %left.i38, i64 156
  %284 = load i16, ptr %pos_x89.8.i, align 4
  %idxprom90.8.i = sext i16 %284 to i64
  %arrayidx91.8.i = getelementptr inbounds i16, ptr %283, i64 %idxprom90.8.i
  %285 = load i16, ptr %arrayidx91.8.i, align 2
  %conv92.8.i = zext i16 %285 to i32
  %arrayidx74.9.i = getelementptr i8, ptr %arrayidx74.i, i64 18
  %286 = load i16, ptr %arrayidx74.9.i, align 2
  %conv75.9.i = zext i16 %286 to i32
  %pos_y83.9.i = getelementptr inbounds i8, ptr %left.i38, i64 174
  %287 = load i16, ptr %pos_y83.9.i, align 2
  %idxprom84.9.i = sext i16 %287 to i64
  %arrayidx85.9.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.9.i
  %288 = load ptr, ptr %arrayidx85.9.i, align 8
  %pos_x89.9.i = getelementptr inbounds i8, ptr %left.i38, i64 172
  %289 = load i16, ptr %pos_x89.9.i, align 4
  %idxprom90.9.i = sext i16 %289 to i64
  %arrayidx91.9.i = getelementptr inbounds i16, ptr %288, i64 %idxprom90.9.i
  %290 = load i16, ptr %arrayidx91.9.i, align 2
  %conv92.9.i = zext i16 %290 to i32
  %arrayidx74.10.i = getelementptr i8, ptr %arrayidx74.i, i64 20
  %291 = load i16, ptr %arrayidx74.10.i, align 2
  %conv75.10.i = zext i16 %291 to i32
  %pos_y83.10.i = getelementptr inbounds i8, ptr %left.i38, i64 190
  %292 = load i16, ptr %pos_y83.10.i, align 2
  %idxprom84.10.i = sext i16 %292 to i64
  %arrayidx85.10.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.10.i
  %293 = load ptr, ptr %arrayidx85.10.i, align 8
  %pos_x89.10.i = getelementptr inbounds i8, ptr %left.i38, i64 188
  %294 = load i16, ptr %pos_x89.10.i, align 4
  %idxprom90.10.i = sext i16 %294 to i64
  %arrayidx91.10.i = getelementptr inbounds i16, ptr %293, i64 %idxprom90.10.i
  %295 = load i16, ptr %arrayidx91.10.i, align 2
  %conv92.10.i = zext i16 %295 to i32
  %arrayidx74.11.i = getelementptr i8, ptr %arrayidx74.i, i64 22
  %296 = load i16, ptr %arrayidx74.11.i, align 2
  %conv75.11.i = zext i16 %296 to i32
  %pos_y83.11.i = getelementptr inbounds i8, ptr %left.i38, i64 206
  %297 = load i16, ptr %pos_y83.11.i, align 2
  %idxprom84.11.i = sext i16 %297 to i64
  %arrayidx85.11.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.11.i
  %298 = load ptr, ptr %arrayidx85.11.i, align 8
  %pos_x89.11.i = getelementptr inbounds i8, ptr %left.i38, i64 204
  %299 = load i16, ptr %pos_x89.11.i, align 4
  %idxprom90.11.i = sext i16 %299 to i64
  %arrayidx91.11.i = getelementptr inbounds i16, ptr %298, i64 %idxprom90.11.i
  %300 = load i16, ptr %arrayidx91.11.i, align 2
  %conv92.11.i = zext i16 %300 to i32
  %arrayidx74.12.i = getelementptr i8, ptr %arrayidx74.i, i64 24
  %301 = load i16, ptr %arrayidx74.12.i, align 2
  %conv75.12.i = zext i16 %301 to i32
  %pos_y83.12.i = getelementptr inbounds i8, ptr %left.i38, i64 222
  %302 = load i16, ptr %pos_y83.12.i, align 2
  %idxprom84.12.i = sext i16 %302 to i64
  %arrayidx85.12.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.12.i
  %303 = load ptr, ptr %arrayidx85.12.i, align 8
  %pos_x89.12.i = getelementptr inbounds i8, ptr %left.i38, i64 220
  %304 = load i16, ptr %pos_x89.12.i, align 4
  %idxprom90.12.i = sext i16 %304 to i64
  %arrayidx91.12.i = getelementptr inbounds i16, ptr %303, i64 %idxprom90.12.i
  %305 = load i16, ptr %arrayidx91.12.i, align 2
  %conv92.12.i = zext i16 %305 to i32
  %arrayidx74.13.i = getelementptr i8, ptr %arrayidx74.i, i64 26
  %306 = load i16, ptr %arrayidx74.13.i, align 2
  %conv75.13.i = zext i16 %306 to i32
  %pos_y83.13.i = getelementptr inbounds i8, ptr %left.i38, i64 238
  %307 = load i16, ptr %pos_y83.13.i, align 2
  %idxprom84.13.i = sext i16 %307 to i64
  %arrayidx85.13.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.13.i
  %308 = load ptr, ptr %arrayidx85.13.i, align 8
  %pos_x89.13.i = getelementptr inbounds i8, ptr %left.i38, i64 236
  %309 = load i16, ptr %pos_x89.13.i, align 4
  %idxprom90.13.i = sext i16 %309 to i64
  %arrayidx91.13.i = getelementptr inbounds i16, ptr %308, i64 %idxprom90.13.i
  %310 = load i16, ptr %arrayidx91.13.i, align 2
  %conv92.13.i = zext i16 %310 to i32
  %arrayidx74.14.i = getelementptr i8, ptr %arrayidx74.i, i64 28
  %311 = load i16, ptr %arrayidx74.14.i, align 2
  %conv75.14.i = zext i16 %311 to i32
  %pos_y83.14.i = getelementptr inbounds i8, ptr %left.i38, i64 254
  %312 = load i16, ptr %pos_y83.14.i, align 2
  %idxprom84.14.i = sext i16 %312 to i64
  %arrayidx85.14.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.14.i
  %313 = load ptr, ptr %arrayidx85.14.i, align 8
  %pos_x89.14.i = getelementptr inbounds i8, ptr %left.i38, i64 252
  %314 = load i16, ptr %pos_x89.14.i, align 4
  %idxprom90.14.i = sext i16 %314 to i64
  %arrayidx91.14.i = getelementptr inbounds i16, ptr %313, i64 %idxprom90.14.i
  %315 = load i16, ptr %arrayidx91.14.i, align 2
  %conv92.14.i = zext i16 %315 to i32
  %arrayidx74.15.i = getelementptr i8, ptr %arrayidx74.i, i64 30
  %316 = load i16, ptr %arrayidx74.15.i, align 2
  %conv75.15.i = zext i16 %316 to i32
  %pos_y83.15.i = getelementptr inbounds i8, ptr %left.i38, i64 270
  %317 = load i16, ptr %pos_y83.15.i, align 2
  %idxprom84.15.i = sext i16 %317 to i64
  %arrayidx85.15.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.15.i
  %318 = load ptr, ptr %arrayidx85.15.i, align 8
  %pos_x89.15.i = getelementptr inbounds i8, ptr %left.i38, i64 268
  %319 = load i16, ptr %pos_x89.15.i, align 4
  %idxprom90.15.i = sext i16 %319 to i64
  %arrayidx91.15.i = getelementptr inbounds i16, ptr %318, i64 %idxprom90.15.i
  %320 = load i16, ptr %arrayidx91.15.i, align 2
  %conv92.15.i = zext i16 %320 to i32
  %add93.1.i = add nuw nsw i32 %conv75.i, 16
  %add93.2.i = add nuw nsw i32 %add93.1.i, %conv92.i
  %add93.3.i = add nuw nsw i32 %add93.2.i, %conv75.1.i
  %add93.4.i = add nuw nsw i32 %add93.3.i, %conv92.1.i
  %add93.5.i = add nuw nsw i32 %add93.4.i, %conv75.2.i
  %add93.6.i = add nuw nsw i32 %add93.5.i, %conv92.2.i
  %add93.7.i = add nuw nsw i32 %add93.6.i, %conv75.3.i
  %add93.8.i = add nuw nsw i32 %add93.7.i, %conv92.3.i
  %add93.9.i = add nuw nsw i32 %add93.8.i, %conv75.4.i
  %add93.10.i = add nuw nsw i32 %add93.9.i, %conv92.4.i
  %add93.11.i = add nuw nsw i32 %add93.10.i, %conv75.5.i
  %add93.12.i = add nuw nsw i32 %add93.11.i, %conv92.5.i
  %add93.13.i = add nuw nsw i32 %add93.12.i, %conv75.6.i
  %add93.14.i = add nuw nsw i32 %add93.13.i, %conv92.6.i
  %add93.15.i = add nuw nsw i32 %add93.14.i, %conv75.7.i
  %add101.i = add nuw nsw i32 %add93.15.i, %conv92.7.i
  %add76.1.i = add nuw nsw i32 %add101.i, %conv75.8.i
  %add76.2.i = add nuw nsw i32 %add76.1.i, %conv92.8.i
  %add76.3.i = add nuw nsw i32 %add76.2.i, %conv75.9.i
  %add76.4.i = add nuw nsw i32 %add76.3.i, %conv92.9.i
  %add76.5.i = add nuw nsw i32 %add76.4.i, %conv75.10.i
  %add76.6.i = add nuw nsw i32 %add76.5.i, %conv92.10.i
  %add76.7.i = add nuw nsw i32 %add76.6.i, %conv75.11.i
  %add76.8.i = add nuw nsw i32 %add76.7.i, %conv92.11.i
  %add76.9.i = add nuw nsw i32 %add76.8.i, %conv75.12.i
  %add76.10.i = add nuw nsw i32 %add76.9.i, %conv92.12.i
  %add76.11.i = add nuw nsw i32 %add76.10.i, %conv75.13.i
  %add76.12.i = add nuw nsw i32 %add76.11.i, %conv92.13.i
  %add76.13.i = add nuw nsw i32 %add76.12.i, %conv75.14.i
  %add76.14.i = add nuw nsw i32 %add76.13.i, %conv92.14.i
  %add76.15.i = add nuw nsw i32 %add76.14.i, %conv75.15.i
  %add102.i = add nuw nsw i32 %add76.15.i, %conv92.15.i
  %shr.i = lshr i32 %add102.i, 5
  br label %if.end122.i

if.else103.i:                                     ; preds = %if.end.split.i
  %pos_y83.us.i = getelementptr inbounds i8, ptr %left.i38, i64 30
  %321 = load i16, ptr %pos_y83.us.i, align 2
  %idxprom84.us.i = sext i16 %321 to i64
  %arrayidx85.us.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.i
  %322 = load ptr, ptr %arrayidx85.us.i, align 8
  %pos_x89.us.i = getelementptr inbounds i8, ptr %left.i38, i64 28
  %323 = load i16, ptr %pos_x89.us.i, align 4
  %idxprom90.us.i = sext i16 %323 to i64
  %arrayidx91.us.i = getelementptr inbounds i16, ptr %322, i64 %idxprom90.us.i
  %324 = load i16, ptr %arrayidx91.us.i, align 2
  %conv92.us.i = zext i16 %324 to i32
  %pos_y83.us.1.i = getelementptr inbounds i8, ptr %left.i38, i64 46
  %325 = load i16, ptr %pos_y83.us.1.i, align 2
  %idxprom84.us.1.i = sext i16 %325 to i64
  %arrayidx85.us.1.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.1.i
  %326 = load ptr, ptr %arrayidx85.us.1.i, align 8
  %pos_x89.us.1.i = getelementptr inbounds i8, ptr %left.i38, i64 44
  %327 = load i16, ptr %pos_x89.us.1.i, align 4
  %idxprom90.us.1.i = sext i16 %327 to i64
  %arrayidx91.us.1.i = getelementptr inbounds i16, ptr %326, i64 %idxprom90.us.1.i
  %328 = load i16, ptr %arrayidx91.us.1.i, align 2
  %conv92.us.1.i = zext i16 %328 to i32
  %pos_y83.us.2.i = getelementptr inbounds i8, ptr %left.i38, i64 62
  %329 = load i16, ptr %pos_y83.us.2.i, align 2
  %idxprom84.us.2.i = sext i16 %329 to i64
  %arrayidx85.us.2.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.2.i
  %330 = load ptr, ptr %arrayidx85.us.2.i, align 8
  %pos_x89.us.2.i = getelementptr inbounds i8, ptr %left.i38, i64 60
  %331 = load i16, ptr %pos_x89.us.2.i, align 4
  %idxprom90.us.2.i = sext i16 %331 to i64
  %arrayidx91.us.2.i = getelementptr inbounds i16, ptr %330, i64 %idxprom90.us.2.i
  %332 = load i16, ptr %arrayidx91.us.2.i, align 2
  %conv92.us.2.i = zext i16 %332 to i32
  %pos_y83.us.3.i = getelementptr inbounds i8, ptr %left.i38, i64 78
  %333 = load i16, ptr %pos_y83.us.3.i, align 2
  %idxprom84.us.3.i = sext i16 %333 to i64
  %arrayidx85.us.3.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.3.i
  %334 = load ptr, ptr %arrayidx85.us.3.i, align 8
  %pos_x89.us.3.i = getelementptr inbounds i8, ptr %left.i38, i64 76
  %335 = load i16, ptr %pos_x89.us.3.i, align 4
  %idxprom90.us.3.i = sext i16 %335 to i64
  %arrayidx91.us.3.i = getelementptr inbounds i16, ptr %334, i64 %idxprom90.us.3.i
  %336 = load i16, ptr %arrayidx91.us.3.i, align 2
  %conv92.us.3.i = zext i16 %336 to i32
  %pos_y83.us.4.i = getelementptr inbounds i8, ptr %left.i38, i64 94
  %337 = load i16, ptr %pos_y83.us.4.i, align 2
  %idxprom84.us.4.i = sext i16 %337 to i64
  %arrayidx85.us.4.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.4.i
  %338 = load ptr, ptr %arrayidx85.us.4.i, align 8
  %pos_x89.us.4.i = getelementptr inbounds i8, ptr %left.i38, i64 92
  %339 = load i16, ptr %pos_x89.us.4.i, align 4
  %idxprom90.us.4.i = sext i16 %339 to i64
  %arrayidx91.us.4.i = getelementptr inbounds i16, ptr %338, i64 %idxprom90.us.4.i
  %340 = load i16, ptr %arrayidx91.us.4.i, align 2
  %conv92.us.4.i = zext i16 %340 to i32
  %pos_y83.us.5.i = getelementptr inbounds i8, ptr %left.i38, i64 110
  %341 = load i16, ptr %pos_y83.us.5.i, align 2
  %idxprom84.us.5.i = sext i16 %341 to i64
  %arrayidx85.us.5.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.5.i
  %342 = load ptr, ptr %arrayidx85.us.5.i, align 8
  %pos_x89.us.5.i = getelementptr inbounds i8, ptr %left.i38, i64 108
  %343 = load i16, ptr %pos_x89.us.5.i, align 4
  %idxprom90.us.5.i = sext i16 %343 to i64
  %arrayidx91.us.5.i = getelementptr inbounds i16, ptr %342, i64 %idxprom90.us.5.i
  %344 = load i16, ptr %arrayidx91.us.5.i, align 2
  %conv92.us.5.i = zext i16 %344 to i32
  %pos_y83.us.6.i = getelementptr inbounds i8, ptr %left.i38, i64 126
  %345 = load i16, ptr %pos_y83.us.6.i, align 2
  %idxprom84.us.6.i = sext i16 %345 to i64
  %arrayidx85.us.6.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.6.i
  %346 = load ptr, ptr %arrayidx85.us.6.i, align 8
  %pos_x89.us.6.i = getelementptr inbounds i8, ptr %left.i38, i64 124
  %347 = load i16, ptr %pos_x89.us.6.i, align 4
  %idxprom90.us.6.i = sext i16 %347 to i64
  %arrayidx91.us.6.i = getelementptr inbounds i16, ptr %346, i64 %idxprom90.us.6.i
  %348 = load i16, ptr %arrayidx91.us.6.i, align 2
  %conv92.us.6.i = zext i16 %348 to i32
  %pos_y83.us.7.i = getelementptr inbounds i8, ptr %left.i38, i64 142
  %349 = load i16, ptr %pos_y83.us.7.i, align 2
  %idxprom84.us.7.i = sext i16 %349 to i64
  %arrayidx85.us.7.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.7.i
  %350 = load ptr, ptr %arrayidx85.us.7.i, align 8
  %pos_x89.us.7.i = getelementptr inbounds i8, ptr %left.i38, i64 140
  %351 = load i16, ptr %pos_x89.us.7.i, align 4
  %idxprom90.us.7.i = sext i16 %351 to i64
  %arrayidx91.us.7.i = getelementptr inbounds i16, ptr %350, i64 %idxprom90.us.7.i
  %352 = load i16, ptr %arrayidx91.us.7.i, align 2
  %conv92.us.7.i = zext i16 %352 to i32
  %pos_y83.us.8.i = getelementptr inbounds i8, ptr %left.i38, i64 158
  %353 = load i16, ptr %pos_y83.us.8.i, align 2
  %idxprom84.us.8.i = sext i16 %353 to i64
  %arrayidx85.us.8.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.8.i
  %354 = load ptr, ptr %arrayidx85.us.8.i, align 8
  %pos_x89.us.8.i = getelementptr inbounds i8, ptr %left.i38, i64 156
  %355 = load i16, ptr %pos_x89.us.8.i, align 4
  %idxprom90.us.8.i = sext i16 %355 to i64
  %arrayidx91.us.8.i = getelementptr inbounds i16, ptr %354, i64 %idxprom90.us.8.i
  %356 = load i16, ptr %arrayidx91.us.8.i, align 2
  %conv92.us.8.i = zext i16 %356 to i32
  %pos_y83.us.9.i = getelementptr inbounds i8, ptr %left.i38, i64 174
  %357 = load i16, ptr %pos_y83.us.9.i, align 2
  %idxprom84.us.9.i = sext i16 %357 to i64
  %arrayidx85.us.9.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.9.i
  %358 = load ptr, ptr %arrayidx85.us.9.i, align 8
  %pos_x89.us.9.i = getelementptr inbounds i8, ptr %left.i38, i64 172
  %359 = load i16, ptr %pos_x89.us.9.i, align 4
  %idxprom90.us.9.i = sext i16 %359 to i64
  %arrayidx91.us.9.i = getelementptr inbounds i16, ptr %358, i64 %idxprom90.us.9.i
  %360 = load i16, ptr %arrayidx91.us.9.i, align 2
  %conv92.us.9.i = zext i16 %360 to i32
  %pos_y83.us.10.i = getelementptr inbounds i8, ptr %left.i38, i64 190
  %361 = load i16, ptr %pos_y83.us.10.i, align 2
  %idxprom84.us.10.i = sext i16 %361 to i64
  %arrayidx85.us.10.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.10.i
  %362 = load ptr, ptr %arrayidx85.us.10.i, align 8
  %pos_x89.us.10.i = getelementptr inbounds i8, ptr %left.i38, i64 188
  %363 = load i16, ptr %pos_x89.us.10.i, align 4
  %idxprom90.us.10.i = sext i16 %363 to i64
  %arrayidx91.us.10.i = getelementptr inbounds i16, ptr %362, i64 %idxprom90.us.10.i
  %364 = load i16, ptr %arrayidx91.us.10.i, align 2
  %conv92.us.10.i = zext i16 %364 to i32
  %pos_y83.us.11.i = getelementptr inbounds i8, ptr %left.i38, i64 206
  %365 = load i16, ptr %pos_y83.us.11.i, align 2
  %idxprom84.us.11.i = sext i16 %365 to i64
  %arrayidx85.us.11.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.11.i
  %366 = load ptr, ptr %arrayidx85.us.11.i, align 8
  %pos_x89.us.11.i = getelementptr inbounds i8, ptr %left.i38, i64 204
  %367 = load i16, ptr %pos_x89.us.11.i, align 4
  %idxprom90.us.11.i = sext i16 %367 to i64
  %arrayidx91.us.11.i = getelementptr inbounds i16, ptr %366, i64 %idxprom90.us.11.i
  %368 = load i16, ptr %arrayidx91.us.11.i, align 2
  %conv92.us.11.i = zext i16 %368 to i32
  %pos_y83.us.12.i = getelementptr inbounds i8, ptr %left.i38, i64 222
  %369 = load i16, ptr %pos_y83.us.12.i, align 2
  %idxprom84.us.12.i = sext i16 %369 to i64
  %arrayidx85.us.12.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.12.i
  %370 = load ptr, ptr %arrayidx85.us.12.i, align 8
  %pos_x89.us.12.i = getelementptr inbounds i8, ptr %left.i38, i64 220
  %371 = load i16, ptr %pos_x89.us.12.i, align 4
  %idxprom90.us.12.i = sext i16 %371 to i64
  %arrayidx91.us.12.i = getelementptr inbounds i16, ptr %370, i64 %idxprom90.us.12.i
  %372 = load i16, ptr %arrayidx91.us.12.i, align 2
  %conv92.us.12.i = zext i16 %372 to i32
  %pos_y83.us.13.i = getelementptr inbounds i8, ptr %left.i38, i64 238
  %373 = load i16, ptr %pos_y83.us.13.i, align 2
  %idxprom84.us.13.i = sext i16 %373 to i64
  %arrayidx85.us.13.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.13.i
  %374 = load ptr, ptr %arrayidx85.us.13.i, align 8
  %pos_x89.us.13.i = getelementptr inbounds i8, ptr %left.i38, i64 236
  %375 = load i16, ptr %pos_x89.us.13.i, align 4
  %idxprom90.us.13.i = sext i16 %375 to i64
  %arrayidx91.us.13.i = getelementptr inbounds i16, ptr %374, i64 %idxprom90.us.13.i
  %376 = load i16, ptr %arrayidx91.us.13.i, align 2
  %conv92.us.13.i = zext i16 %376 to i32
  %pos_y83.us.14.i = getelementptr inbounds i8, ptr %left.i38, i64 254
  %377 = load i16, ptr %pos_y83.us.14.i, align 2
  %idxprom84.us.14.i = sext i16 %377 to i64
  %arrayidx85.us.14.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.14.i
  %378 = load ptr, ptr %arrayidx85.us.14.i, align 8
  %pos_x89.us.14.i = getelementptr inbounds i8, ptr %left.i38, i64 252
  %379 = load i16, ptr %pos_x89.us.14.i, align 4
  %idxprom90.us.14.i = sext i16 %379 to i64
  %arrayidx91.us.14.i = getelementptr inbounds i16, ptr %378, i64 %idxprom90.us.14.i
  %380 = load i16, ptr %arrayidx91.us.14.i, align 2
  %conv92.us.14.i = zext i16 %380 to i32
  %pos_y83.us.15.i = getelementptr inbounds i8, ptr %left.i38, i64 270
  %381 = load i16, ptr %pos_y83.us.15.i, align 2
  %idxprom84.us.15.i = sext i16 %381 to i64
  %arrayidx85.us.15.i = getelementptr inbounds ptr, ptr %cond.i49, i64 %idxprom84.us.15.i
  %382 = load ptr, ptr %arrayidx85.us.15.i, align 8
  %pos_x89.us.15.i = getelementptr inbounds i8, ptr %left.i38, i64 268
  %383 = load i16, ptr %pos_x89.us.15.i, align 4
  %idxprom90.us.15.i = sext i16 %383 to i64
  %arrayidx91.us.15.i = getelementptr inbounds i16, ptr %382, i64 %idxprom90.us.15.i
  %384 = load i16, ptr %arrayidx91.us.15.i, align 2
  %conv92.us.15.i = zext i16 %384 to i32
  %add93.us.1.i = add nuw nsw i32 %conv92.us.i, 8
  %add93.us.2.i = add nuw nsw i32 %add93.us.1.i, %conv92.us.1.i
  %add93.us.3.i = add nuw nsw i32 %add93.us.2.i, %conv92.us.2.i
  %add93.us.4.i = add nuw nsw i32 %add93.us.3.i, %conv92.us.3.i
  %add93.us.5.i = add nuw nsw i32 %add93.us.4.i, %conv92.us.4.i
  %add93.us.6.i = add nuw nsw i32 %add93.us.5.i, %conv92.us.5.i
  %add93.us.7.i = add nuw nsw i32 %add93.us.6.i, %conv92.us.6.i
  %add93.us.8.i = add nuw nsw i32 %add93.us.7.i, %conv92.us.7.i
  %add93.us.9.i = add nuw nsw i32 %add93.us.8.i, %conv92.us.8.i
  %add93.us.10.i = add nuw nsw i32 %add93.us.9.i, %conv92.us.9.i
  %add93.us.11.i = add nuw nsw i32 %add93.us.10.i, %conv92.us.10.i
  %add93.us.12.i = add nuw nsw i32 %add93.us.11.i, %conv92.us.11.i
  %add93.us.13.i = add nuw nsw i32 %add93.us.12.i, %conv92.us.12.i
  %add93.us.14.i = add nuw nsw i32 %add93.us.13.i, %conv92.us.13.i
  %add93.us.15.i = add nuw nsw i32 %add93.us.14.i, %conv92.us.14.i
  %add108.i = add nuw nsw i32 %add93.us.15.i, %conv92.us.15.i
  %shr109.i = lshr i32 %add108.i, 4
  br label %if.end122.i

if.then114.i:                                     ; preds = %if.end.split.us.i
  %385 = load ptr, ptr %arrayidx71.i, align 8
  %386 = sext i16 %238 to i64
  %arrayidx74.us.i = getelementptr inbounds i16, ptr %385, i64 %386
  %387 = load <16 x i16>, ptr %arrayidx74.us.i, align 2
  %388 = zext <16 x i16> %387 to <16 x i32>
  %389 = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %388)
  %op.rdx = add i32 %389, 8
  %390 = lshr i32 %op.rdx, 4
  br label %if.end122.i

if.else117.i:                                     ; preds = %if.end.split.us.i
  %dc_pred_value_comp.i = getelementptr inbounds i8, ptr %143, i64 849060
  %arrayidx119.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i, i64 0, i64 %idxprom5.i51
  %391 = load i32, ptr %arrayidx119.i, align 4
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.else117.i, %if.then114.i, %if.else103.i, %for.end97.i
  %s0.0.i = phi i32 [ %shr.i, %for.end97.i ], [ %shr109.i, %if.else103.i ], [ %391, %if.else117.i ], [ %390, %if.then114.i ]
  %conv131.i = trunc i32 %s0.0.i to i16
  br label %for.cond127.preheader.i

for.cond127.preheader.i:                          ; preds = %for.cond127.preheader.i, %if.end122.i
  %indvars.iv.i100 = phi i64 [ 0, %if.end122.i ], [ %indvars.iv.next.i101, %for.cond127.preheader.i ]
  %arrayidx133.i = getelementptr inbounds ptr, ptr %147, i64 %indvars.iv.i100
  %392 = load ptr, ptr %arrayidx133.i, align 8
  store i16 %conv131.i, ptr %392, align 2
  %393 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.1.i = getelementptr inbounds i8, ptr %393, i64 2
  store i16 %conv131.i, ptr %arrayidx135.1.i, align 2
  %394 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.2.i = getelementptr inbounds i8, ptr %394, i64 4
  store i16 %conv131.i, ptr %arrayidx135.2.i, align 2
  %395 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.3.i = getelementptr inbounds i8, ptr %395, i64 6
  store i16 %conv131.i, ptr %arrayidx135.3.i, align 2
  %396 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.4.i = getelementptr inbounds i8, ptr %396, i64 8
  store i16 %conv131.i, ptr %arrayidx135.4.i, align 2
  %397 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.5.i = getelementptr inbounds i8, ptr %397, i64 10
  store i16 %conv131.i, ptr %arrayidx135.5.i, align 2
  %398 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.6.i = getelementptr inbounds i8, ptr %398, i64 12
  store i16 %conv131.i, ptr %arrayidx135.6.i, align 2
  %399 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.7.i = getelementptr inbounds i8, ptr %399, i64 14
  store i16 %conv131.i, ptr %arrayidx135.7.i, align 2
  %400 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.8.i = getelementptr inbounds i8, ptr %400, i64 16
  store i16 %conv131.i, ptr %arrayidx135.8.i, align 2
  %401 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.9.i = getelementptr inbounds i8, ptr %401, i64 18
  store i16 %conv131.i, ptr %arrayidx135.9.i, align 2
  %402 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.10.i = getelementptr inbounds i8, ptr %402, i64 20
  store i16 %conv131.i, ptr %arrayidx135.10.i, align 2
  %403 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.11.i = getelementptr inbounds i8, ptr %403, i64 22
  store i16 %conv131.i, ptr %arrayidx135.11.i, align 2
  %404 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.12.i = getelementptr inbounds i8, ptr %404, i64 24
  store i16 %conv131.i, ptr %arrayidx135.12.i, align 2
  %405 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.13.i = getelementptr inbounds i8, ptr %405, i64 26
  store i16 %conv131.i, ptr %arrayidx135.13.i, align 2
  %406 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.14.i = getelementptr inbounds i8, ptr %406, i64 28
  store i16 %conv131.i, ptr %arrayidx135.14.i, align 2
  %407 = load ptr, ptr %arrayidx133.i, align 8
  %arrayidx135.15.i = getelementptr inbounds i8, ptr %407, i64 30
  store i16 %conv131.i, ptr %arrayidx135.15.i, align 2
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i100, 1
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i101, 16
  br i1 %exitcond.not.i102, label %intra16x16_dc_pred_mbaff.exit, label %for.cond127.preheader.i

intra16x16_dc_pred_mbaff.exit:                    ; preds = %for.cond127.preheader.i
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %left.i38) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %b.i37) #6
  br label %return

sw.bb5:                                           ; preds = %entry
  %408 = load ptr, ptr %currMB, align 8
  %p_Vid1.i108 = getelementptr inbounds i8, ptr %currMB, i64 8
  %409 = load ptr, ptr %p_Vid1.i108, align 8
  %tobool.not.i109 = icmp eq i32 %pl, 0
  %dec_picture2.i110 = getelementptr inbounds i8, ptr %408, i64 13520
  %410 = load ptr, ptr %dec_picture2.i110, align 8
  br i1 %tobool.not.i109, label %cond.false.i160, label %cond.true.i111

cond.true.i111:                                   ; preds = %sw.bb5
  %imgUV.i112 = getelementptr inbounds i8, ptr %410, i64 136
  %411 = load ptr, ptr %imgUV.i112, align 8
  %sub.i113 = add i32 %pl, -1
  %idxprom.i114 = zext i32 %sub.i113 to i64
  %arrayidx.i115 = getelementptr inbounds ptr, ptr %411, i64 %idxprom.i114
  br label %cond.end.i116

cond.false.i160:                                  ; preds = %sw.bb5
  %imgY3.i161 = getelementptr inbounds i8, ptr %410, i64 128
  br label %cond.end.i116

cond.end.i116:                                    ; preds = %cond.false.i160, %cond.true.i111
  %cond.in.i117 = phi ptr [ %arrayidx.i115, %cond.true.i111 ], [ %imgY3.i161, %cond.false.i160 ]
  %cond.i118 = load ptr, ptr %cond.in.i117, align 8
  %mb_pred4.i119 = getelementptr inbounds i8, ptr %408, i64 1248
  %412 = load ptr, ptr %mb_pred4.i119, align 8
  %idxprom5.i120 = zext i32 %pl to i64
  %arrayidx6.i121 = getelementptr inbounds ptr, ptr %412, i64 %idxprom5.i120
  %413 = load ptr, ptr %arrayidx6.i121, align 8
  %max_pel_value_comp.i = getelementptr inbounds i8, ptr %409, i64 849072
  %arrayidx9.i = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp.i, i64 0, i64 %idxprom5.i120
  %414 = load i32, ptr %arrayidx9.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %b.i106) #6
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %left.i107) #6
  %getNeighbour.i122 = getelementptr inbounds i8, ptr %409, i64 856744
  %mb_size.i123 = getelementptr inbounds i8, ptr %409, i64 849124
  %415 = load ptr, ptr %getNeighbour.i122, align 8
  call void %415(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %left.i107) #6
  %416 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.1.i = getelementptr inbounds i8, ptr %left.i107, i64 16
  call void %416(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.1.i) #6
  %417 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.2.i = getelementptr inbounds i8, ptr %left.i107, i64 32
  call void %417(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.2.i) #6
  %418 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.3.i = getelementptr inbounds i8, ptr %left.i107, i64 48
  call void %418(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 2, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.3.i) #6
  %419 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.4.i = getelementptr inbounds i8, ptr %left.i107, i64 64
  call void %419(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 3, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.4.i) #6
  %420 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.5.i = getelementptr inbounds i8, ptr %left.i107, i64 80
  call void %420(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 4, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.5.i) #6
  %421 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.6.i = getelementptr inbounds i8, ptr %left.i107, i64 96
  call void %421(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 5, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.6.i) #6
  %422 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.7.i = getelementptr inbounds i8, ptr %left.i107, i64 112
  call void %422(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 6, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.7.i) #6
  %423 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.8.i = getelementptr inbounds i8, ptr %left.i107, i64 128
  call void %423(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 7, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.8.i) #6
  %424 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.9.i = getelementptr inbounds i8, ptr %left.i107, i64 144
  call void %424(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 8, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.9.i) #6
  %425 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.10.i = getelementptr inbounds i8, ptr %left.i107, i64 160
  call void %425(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 9, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.10.i) #6
  %426 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.11.i = getelementptr inbounds i8, ptr %left.i107, i64 176
  call void %426(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 10, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.11.i) #6
  %427 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.12.i = getelementptr inbounds i8, ptr %left.i107, i64 192
  call void %427(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 11, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.12.i) #6
  %428 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.13.i = getelementptr inbounds i8, ptr %left.i107, i64 208
  call void %428(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 12, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.13.i) #6
  %429 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.14.i = getelementptr inbounds i8, ptr %left.i107, i64 224
  call void %429(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 13, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.14.i) #6
  %430 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.15.i = getelementptr inbounds i8, ptr %left.i107, i64 240
  call void %430(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 14, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.15.i) #6
  %431 = load ptr, ptr %getNeighbour.i122, align 8
  %arrayidx13.16.i = getelementptr inbounds i8, ptr %left.i107, i64 256
  call void %431(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 15, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %arrayidx13.16.i) #6
  %432 = load ptr, ptr %getNeighbour.i122, align 8
  call void %432(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size.i123, ptr noundef nonnull %b.i106) #6
  %active_pps.i124 = getelementptr inbounds i8, ptr %409, i64 8
  %433 = load ptr, ptr %active_pps.i124, align 8
  %constrained_intra_pred_flag.i125 = getelementptr inbounds i8, ptr %433, i64 2204
  %434 = load i32, ptr %constrained_intra_pred_flag.i125, align 4
  %tobool18.not.i = icmp eq i32 %434, 0
  %435 = load i32, ptr %b.i106, align 4
  br i1 %tobool18.not.i, label %if.then.i159, label %if.else.i126

if.then.i159:                                     ; preds = %cond.end.i116
  %436 = load i32, ptr %arrayidx13.1.i, align 16
  %437 = load i32, ptr %left.i107, align 16
  br label %if.end.i150

if.else.i126:                                     ; preds = %cond.end.i116
  %tobool24.not.i = icmp eq i32 %435, 0
  br i1 %tobool24.not.i, label %cond.end29.i132, label %cond.true25.i

cond.true25.i:                                    ; preds = %if.else.i126
  %intra_block.i127 = getelementptr inbounds i8, ptr %408, i64 13544
  %438 = load ptr, ptr %intra_block.i127, align 8
  %mb_addr.i128 = getelementptr inbounds i8, ptr %b.i106, i64 4
  %439 = load i32, ptr %mb_addr.i128, align 4
  %idxprom26.i129 = sext i32 %439 to i64
  %arrayidx27.i130 = getelementptr inbounds i8, ptr %438, i64 %idxprom26.i129
  %440 = load i8, ptr %arrayidx27.i130, align 1
  %conv.i131 = sext i8 %440 to i32
  br label %cond.end29.i132

cond.end29.i132:                                  ; preds = %cond.true25.i, %if.else.i126
  %cond30.i133 = phi i32 [ %conv.i131, %cond.true25.i ], [ 0, %if.else.i126 ]
  %intra_block40.i = getelementptr inbounds i8, ptr %408, i64 13544
  %441 = load i32, ptr %arrayidx13.1.i, align 16
  %tobool38.not.i = icmp eq i32 %441, 0
  br i1 %tobool38.not.i, label %cond.end48.i, label %cond.true39.i

cond.true39.i:                                    ; preds = %cond.end29.i132
  %442 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.i = getelementptr inbounds i8, ptr %left.i107, i64 20
  %443 = load i32, ptr %mb_addr43.i, align 4
  %idxprom44.i = sext i32 %443 to i64
  %arrayidx45.i = getelementptr inbounds i8, ptr %442, i64 %idxprom44.i
  %444 = load i8, ptr %arrayidx45.i, align 1
  %conv46286.i = zext i8 %444 to i32
  br label %cond.end48.i

cond.end48.i:                                     ; preds = %cond.true39.i, %cond.end29.i132
  %cond49.i = phi i32 [ %conv46286.i, %cond.true39.i ], [ 0, %cond.end29.i132 ]
  %and.i134 = and i32 %cond49.i, 1
  %445 = load i32, ptr %arrayidx13.2.i, align 16
  %tobool38.not.1.i = icmp eq i32 %445, 0
  br i1 %tobool38.not.1.i, label %cond.end48.1.i, label %cond.true39.1.i

cond.true39.1.i:                                  ; preds = %cond.end48.i
  %446 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.1.i = getelementptr inbounds i8, ptr %left.i107, i64 36
  %447 = load i32, ptr %mb_addr43.1.i, align 4
  %idxprom44.1.i = sext i32 %447 to i64
  %arrayidx45.1.i = getelementptr inbounds i8, ptr %446, i64 %idxprom44.1.i
  %448 = load i8, ptr %arrayidx45.1.i, align 1
  %conv46.1287.i = zext i8 %448 to i32
  br label %cond.end48.1.i

cond.end48.1.i:                                   ; preds = %cond.true39.1.i, %cond.end48.i
  %cond49.1.i = phi i32 [ %conv46.1287.i, %cond.true39.1.i ], [ 0, %cond.end48.i ]
  %and.1.i135 = and i32 %and.i134, %cond49.1.i
  %449 = load i32, ptr %arrayidx13.3.i, align 16
  %tobool38.not.2.i = icmp eq i32 %449, 0
  br i1 %tobool38.not.2.i, label %cond.end48.2.i, label %cond.true39.2.i

cond.true39.2.i:                                  ; preds = %cond.end48.1.i
  %450 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.2.i = getelementptr inbounds i8, ptr %left.i107, i64 52
  %451 = load i32, ptr %mb_addr43.2.i, align 4
  %idxprom44.2.i = sext i32 %451 to i64
  %arrayidx45.2.i = getelementptr inbounds i8, ptr %450, i64 %idxprom44.2.i
  %452 = load i8, ptr %arrayidx45.2.i, align 1
  %conv46.2288.i = zext i8 %452 to i32
  br label %cond.end48.2.i

cond.end48.2.i:                                   ; preds = %cond.true39.2.i, %cond.end48.1.i
  %cond49.2.i = phi i32 [ %conv46.2288.i, %cond.true39.2.i ], [ 0, %cond.end48.1.i ]
  %and.2.i136 = and i32 %and.1.i135, %cond49.2.i
  %453 = load i32, ptr %arrayidx13.4.i, align 16
  %tobool38.not.3.i = icmp eq i32 %453, 0
  br i1 %tobool38.not.3.i, label %cond.end48.3.i, label %cond.true39.3.i

cond.true39.3.i:                                  ; preds = %cond.end48.2.i
  %454 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.3.i = getelementptr inbounds i8, ptr %left.i107, i64 68
  %455 = load i32, ptr %mb_addr43.3.i, align 4
  %idxprom44.3.i = sext i32 %455 to i64
  %arrayidx45.3.i = getelementptr inbounds i8, ptr %454, i64 %idxprom44.3.i
  %456 = load i8, ptr %arrayidx45.3.i, align 1
  %conv46.3289.i = zext i8 %456 to i32
  br label %cond.end48.3.i

cond.end48.3.i:                                   ; preds = %cond.true39.3.i, %cond.end48.2.i
  %cond49.3.i = phi i32 [ %conv46.3289.i, %cond.true39.3.i ], [ 0, %cond.end48.2.i ]
  %and.3.i137 = and i32 %and.2.i136, %cond49.3.i
  %457 = load i32, ptr %arrayidx13.5.i, align 16
  %tobool38.not.4.i = icmp eq i32 %457, 0
  br i1 %tobool38.not.4.i, label %cond.end48.4.i, label %cond.true39.4.i

cond.true39.4.i:                                  ; preds = %cond.end48.3.i
  %458 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.4.i = getelementptr inbounds i8, ptr %left.i107, i64 84
  %459 = load i32, ptr %mb_addr43.4.i, align 4
  %idxprom44.4.i = sext i32 %459 to i64
  %arrayidx45.4.i = getelementptr inbounds i8, ptr %458, i64 %idxprom44.4.i
  %460 = load i8, ptr %arrayidx45.4.i, align 1
  %conv46.4290.i = zext i8 %460 to i32
  br label %cond.end48.4.i

cond.end48.4.i:                                   ; preds = %cond.true39.4.i, %cond.end48.3.i
  %cond49.4.i = phi i32 [ %conv46.4290.i, %cond.true39.4.i ], [ 0, %cond.end48.3.i ]
  %and.4.i138 = and i32 %and.3.i137, %cond49.4.i
  %461 = load i32, ptr %arrayidx13.6.i, align 16
  %tobool38.not.5.i = icmp eq i32 %461, 0
  br i1 %tobool38.not.5.i, label %cond.end48.5.i, label %cond.true39.5.i

cond.true39.5.i:                                  ; preds = %cond.end48.4.i
  %462 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.5.i = getelementptr inbounds i8, ptr %left.i107, i64 100
  %463 = load i32, ptr %mb_addr43.5.i, align 4
  %idxprom44.5.i = sext i32 %463 to i64
  %arrayidx45.5.i = getelementptr inbounds i8, ptr %462, i64 %idxprom44.5.i
  %464 = load i8, ptr %arrayidx45.5.i, align 1
  %conv46.5291.i = zext i8 %464 to i32
  br label %cond.end48.5.i

cond.end48.5.i:                                   ; preds = %cond.true39.5.i, %cond.end48.4.i
  %cond49.5.i = phi i32 [ %conv46.5291.i, %cond.true39.5.i ], [ 0, %cond.end48.4.i ]
  %and.5.i139 = and i32 %and.4.i138, %cond49.5.i
  %465 = load i32, ptr %arrayidx13.7.i, align 16
  %tobool38.not.6.i = icmp eq i32 %465, 0
  br i1 %tobool38.not.6.i, label %cond.end48.6.i, label %cond.true39.6.i

cond.true39.6.i:                                  ; preds = %cond.end48.5.i
  %466 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.6.i = getelementptr inbounds i8, ptr %left.i107, i64 116
  %467 = load i32, ptr %mb_addr43.6.i, align 4
  %idxprom44.6.i = sext i32 %467 to i64
  %arrayidx45.6.i = getelementptr inbounds i8, ptr %466, i64 %idxprom44.6.i
  %468 = load i8, ptr %arrayidx45.6.i, align 1
  %conv46.6292.i = zext i8 %468 to i32
  br label %cond.end48.6.i

cond.end48.6.i:                                   ; preds = %cond.true39.6.i, %cond.end48.5.i
  %cond49.6.i = phi i32 [ %conv46.6292.i, %cond.true39.6.i ], [ 0, %cond.end48.5.i ]
  %and.6.i140 = and i32 %and.5.i139, %cond49.6.i
  %469 = load i32, ptr %arrayidx13.8.i, align 16
  %tobool38.not.7.i = icmp eq i32 %469, 0
  br i1 %tobool38.not.7.i, label %cond.end48.7.i, label %cond.true39.7.i

cond.true39.7.i:                                  ; preds = %cond.end48.6.i
  %470 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.7.i = getelementptr inbounds i8, ptr %left.i107, i64 132
  %471 = load i32, ptr %mb_addr43.7.i, align 4
  %idxprom44.7.i = sext i32 %471 to i64
  %arrayidx45.7.i = getelementptr inbounds i8, ptr %470, i64 %idxprom44.7.i
  %472 = load i8, ptr %arrayidx45.7.i, align 1
  %conv46.7.i171 = zext i8 %472 to i32
  br label %cond.end48.7.i

cond.end48.7.i:                                   ; preds = %cond.true39.7.i, %cond.end48.6.i
  %cond49.7.i = phi i32 [ %conv46.7.i171, %cond.true39.7.i ], [ 0, %cond.end48.6.i ]
  %and.7.i141 = and i32 %and.6.i140, %cond49.7.i
  %473 = load i32, ptr %arrayidx13.9.i, align 16
  %tobool38.not.8.i = icmp eq i32 %473, 0
  br i1 %tobool38.not.8.i, label %cond.end48.8.i, label %cond.true39.8.i

cond.true39.8.i:                                  ; preds = %cond.end48.7.i
  %474 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.8.i = getelementptr inbounds i8, ptr %left.i107, i64 148
  %475 = load i32, ptr %mb_addr43.8.i, align 4
  %idxprom44.8.i = sext i32 %475 to i64
  %arrayidx45.8.i = getelementptr inbounds i8, ptr %474, i64 %idxprom44.8.i
  %476 = load i8, ptr %arrayidx45.8.i, align 1
  %conv46.8.i172 = zext i8 %476 to i32
  br label %cond.end48.8.i

cond.end48.8.i:                                   ; preds = %cond.true39.8.i, %cond.end48.7.i
  %cond49.8.i = phi i32 [ %conv46.8.i172, %cond.true39.8.i ], [ 0, %cond.end48.7.i ]
  %and.8.i142 = and i32 %and.7.i141, %cond49.8.i
  %477 = load i32, ptr %arrayidx13.10.i, align 16
  %tobool38.not.9.i = icmp eq i32 %477, 0
  br i1 %tobool38.not.9.i, label %cond.end48.9.i, label %cond.true39.9.i

cond.true39.9.i:                                  ; preds = %cond.end48.8.i
  %478 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.9.i = getelementptr inbounds i8, ptr %left.i107, i64 164
  %479 = load i32, ptr %mb_addr43.9.i, align 4
  %idxprom44.9.i = sext i32 %479 to i64
  %arrayidx45.9.i = getelementptr inbounds i8, ptr %478, i64 %idxprom44.9.i
  %480 = load i8, ptr %arrayidx45.9.i, align 1
  %conv46.9.i173 = zext i8 %480 to i32
  br label %cond.end48.9.i

cond.end48.9.i:                                   ; preds = %cond.true39.9.i, %cond.end48.8.i
  %cond49.9.i = phi i32 [ %conv46.9.i173, %cond.true39.9.i ], [ 0, %cond.end48.8.i ]
  %and.9.i143 = and i32 %and.8.i142, %cond49.9.i
  %481 = load i32, ptr %arrayidx13.11.i, align 16
  %tobool38.not.10.i = icmp eq i32 %481, 0
  br i1 %tobool38.not.10.i, label %cond.end48.10.i, label %cond.true39.10.i

cond.true39.10.i:                                 ; preds = %cond.end48.9.i
  %482 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.10.i = getelementptr inbounds i8, ptr %left.i107, i64 180
  %483 = load i32, ptr %mb_addr43.10.i, align 4
  %idxprom44.10.i = sext i32 %483 to i64
  %arrayidx45.10.i = getelementptr inbounds i8, ptr %482, i64 %idxprom44.10.i
  %484 = load i8, ptr %arrayidx45.10.i, align 1
  %conv46.10.i174 = zext i8 %484 to i32
  br label %cond.end48.10.i

cond.end48.10.i:                                  ; preds = %cond.true39.10.i, %cond.end48.9.i
  %cond49.10.i = phi i32 [ %conv46.10.i174, %cond.true39.10.i ], [ 0, %cond.end48.9.i ]
  %and.10.i144 = and i32 %and.9.i143, %cond49.10.i
  %485 = load i32, ptr %arrayidx13.12.i, align 16
  %tobool38.not.11.i = icmp eq i32 %485, 0
  br i1 %tobool38.not.11.i, label %cond.end48.11.i, label %cond.true39.11.i

cond.true39.11.i:                                 ; preds = %cond.end48.10.i
  %486 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.11.i = getelementptr inbounds i8, ptr %left.i107, i64 196
  %487 = load i32, ptr %mb_addr43.11.i, align 4
  %idxprom44.11.i = sext i32 %487 to i64
  %arrayidx45.11.i = getelementptr inbounds i8, ptr %486, i64 %idxprom44.11.i
  %488 = load i8, ptr %arrayidx45.11.i, align 1
  %conv46.11.i = sext i8 %488 to i32
  br label %cond.end48.11.i

cond.end48.11.i:                                  ; preds = %cond.true39.11.i, %cond.end48.10.i
  %cond49.11.i = phi i32 [ %conv46.11.i, %cond.true39.11.i ], [ 0, %cond.end48.10.i ]
  %and.11.i145 = and i32 %and.10.i144, %cond49.11.i
  %489 = load i32, ptr %arrayidx13.13.i, align 16
  %tobool38.not.12.i = icmp eq i32 %489, 0
  br i1 %tobool38.not.12.i, label %cond.end48.12.i, label %cond.true39.12.i

cond.true39.12.i:                                 ; preds = %cond.end48.11.i
  %490 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.12.i = getelementptr inbounds i8, ptr %left.i107, i64 212
  %491 = load i32, ptr %mb_addr43.12.i, align 4
  %idxprom44.12.i = sext i32 %491 to i64
  %arrayidx45.12.i = getelementptr inbounds i8, ptr %490, i64 %idxprom44.12.i
  %492 = load i8, ptr %arrayidx45.12.i, align 1
  %conv46.12.i = sext i8 %492 to i32
  br label %cond.end48.12.i

cond.end48.12.i:                                  ; preds = %cond.true39.12.i, %cond.end48.11.i
  %cond49.12.i = phi i32 [ %conv46.12.i, %cond.true39.12.i ], [ 0, %cond.end48.11.i ]
  %and.12.i146 = and i32 %and.11.i145, %cond49.12.i
  %493 = load i32, ptr %arrayidx13.14.i, align 16
  %tobool38.not.13.i = icmp eq i32 %493, 0
  br i1 %tobool38.not.13.i, label %cond.end48.13.i, label %cond.true39.13.i

cond.true39.13.i:                                 ; preds = %cond.end48.12.i
  %494 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.13.i = getelementptr inbounds i8, ptr %left.i107, i64 228
  %495 = load i32, ptr %mb_addr43.13.i, align 4
  %idxprom44.13.i = sext i32 %495 to i64
  %arrayidx45.13.i = getelementptr inbounds i8, ptr %494, i64 %idxprom44.13.i
  %496 = load i8, ptr %arrayidx45.13.i, align 1
  %conv46.13.i = sext i8 %496 to i32
  br label %cond.end48.13.i

cond.end48.13.i:                                  ; preds = %cond.true39.13.i, %cond.end48.12.i
  %cond49.13.i = phi i32 [ %conv46.13.i, %cond.true39.13.i ], [ 0, %cond.end48.12.i ]
  %and.13.i147 = and i32 %and.12.i146, %cond49.13.i
  %497 = load i32, ptr %arrayidx13.15.i, align 16
  %tobool38.not.14.i = icmp eq i32 %497, 0
  br i1 %tobool38.not.14.i, label %cond.end48.14.i, label %cond.true39.14.i

cond.true39.14.i:                                 ; preds = %cond.end48.13.i
  %498 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.14.i = getelementptr inbounds i8, ptr %left.i107, i64 244
  %499 = load i32, ptr %mb_addr43.14.i, align 4
  %idxprom44.14.i = sext i32 %499 to i64
  %arrayidx45.14.i = getelementptr inbounds i8, ptr %498, i64 %idxprom44.14.i
  %500 = load i8, ptr %arrayidx45.14.i, align 1
  %conv46.14.i = sext i8 %500 to i32
  br label %cond.end48.14.i

cond.end48.14.i:                                  ; preds = %cond.true39.14.i, %cond.end48.13.i
  %cond49.14.i = phi i32 [ %conv46.14.i, %cond.true39.14.i ], [ 0, %cond.end48.13.i ]
  %and.14.i148 = and i32 %and.13.i147, %cond49.14.i
  %501 = load i32, ptr %arrayidx13.16.i, align 16
  %tobool38.not.15.i = icmp eq i32 %501, 0
  br i1 %tobool38.not.15.i, label %cond.end48.15.i, label %cond.true39.15.i

cond.true39.15.i:                                 ; preds = %cond.end48.14.i
  %502 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr43.15.i = getelementptr inbounds i8, ptr %left.i107, i64 260
  %503 = load i32, ptr %mb_addr43.15.i, align 4
  %idxprom44.15.i = sext i32 %503 to i64
  %arrayidx45.15.i = getelementptr inbounds i8, ptr %502, i64 %idxprom44.15.i
  %504 = load i8, ptr %arrayidx45.15.i, align 1
  %conv46.15.i = sext i8 %504 to i32
  br label %cond.end48.15.i

cond.end48.15.i:                                  ; preds = %cond.true39.15.i, %cond.end48.14.i
  %cond49.15.i = phi i32 [ %conv46.15.i, %cond.true39.15.i ], [ 0, %cond.end48.14.i ]
  %505 = load i32, ptr %left.i107, align 16
  %tobool55.not.i = icmp eq i32 %505, 0
  br i1 %tobool55.not.i, label %if.then70.i, label %cond.true56.i

cond.true56.i:                                    ; preds = %cond.end48.15.i
  %and.15.i149 = and i32 %and.14.i148, %cond49.15.i
  %506 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr59.i = getelementptr inbounds i8, ptr %left.i107, i64 4
  %507 = load i32, ptr %mb_addr59.i, align 4
  %idxprom60.i = sext i32 %507 to i64
  %arrayidx61.i = getelementptr inbounds i8, ptr %506, i64 %idxprom60.i
  %508 = load i8, ptr %arrayidx61.i, align 1
  %conv62.i = sext i8 %508 to i32
  br label %if.end.i150

if.end.i150:                                      ; preds = %cond.true56.i, %if.then.i159
  %up_avail.0.i151 = phi i32 [ %435, %if.then.i159 ], [ %cond30.i133, %cond.true56.i ]
  %left_avail.1.i152 = phi i32 [ %436, %if.then.i159 ], [ %and.15.i149, %cond.true56.i ]
  %left_up_avail.0.i = phi i32 [ %437, %if.then.i159 ], [ %conv62.i, %cond.true56.i ]
  %tobool66.i = icmp ne i32 %up_avail.0.i151, 0
  %tobool67.i = icmp ne i32 %left_up_avail.0.i, 0
  %or.cond.i = select i1 %tobool66.i, i1 %tobool67.i, i1 false
  %tobool69.i = icmp ne i32 %left_avail.1.i152, 0
  %or.cond202.i = select i1 %or.cond.i, i1 %tobool69.i, i1 false
  br i1 %or.cond202.i, label %if.end71.i, label %if.then70.i

if.then70.i:                                      ; preds = %if.end.i150, %cond.end48.15.i
  call void @error(ptr noundef nonnull @.str.3, i32 noundef 500) #6
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then70.i, %if.end.i150
  %pos_y.i153 = getelementptr inbounds i8, ptr %b.i106, i64 14
  %509 = load i16, ptr %pos_y.i153, align 2
  %idxprom72.i = sext i16 %509 to i64
  %arrayidx73.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom72.i
  %510 = load ptr, ptr %arrayidx73.i, align 8
  %pos_x.i154 = getelementptr inbounds i8, ptr %b.i106, i64 12
  %511 = load i16, ptr %pos_x.i154, align 4
  %conv74.i = sext i16 %511 to i64
  %512 = getelementptr i16, ptr %510, i64 %conv74.i
  %arrayidx82.i = getelementptr i8, ptr %512, i64 16
  %513 = load i16, ptr %arrayidx82.i, align 2
  %conv83.i = zext i16 %513 to i32
  %arrayidx86.i = getelementptr i8, ptr %512, i64 12
  %514 = load i16, ptr %arrayidx86.i, align 2
  %conv87.i = zext i16 %514 to i32
  %sub88.i = sub nsw i32 %conv83.i, %conv87.i
  %pos_y93.i = getelementptr inbounds i8, ptr %left.i107, i64 158
  %515 = load i16, ptr %pos_y93.i, align 2
  %idxprom94.i = sext i16 %515 to i64
  %arrayidx95.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom94.i
  %516 = load ptr, ptr %arrayidx95.i, align 8
  %pos_x99.i = getelementptr inbounds i8, ptr %left.i107, i64 156
  %517 = load i16, ptr %pos_x99.i, align 4
  %idxprom100.i = sext i16 %517 to i64
  %arrayidx101.i = getelementptr inbounds i16, ptr %516, i64 %idxprom100.i
  %518 = load i16, ptr %arrayidx101.i, align 2
  %conv102.i = zext i16 %518 to i32
  %pos_y106.i = getelementptr inbounds i8, ptr %left.i107, i64 126
  %519 = load i16, ptr %pos_y106.i, align 2
  %idxprom107.i = sext i16 %519 to i64
  %arrayidx108.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom107.i
  %520 = load ptr, ptr %arrayidx108.i, align 8
  %pos_x112.i = getelementptr inbounds i8, ptr %left.i107, i64 124
  %521 = load i16, ptr %pos_x112.i, align 4
  %idxprom113.i = sext i16 %521 to i64
  %arrayidx114.i = getelementptr inbounds i16, ptr %520, i64 %idxprom113.i
  %522 = load i16, ptr %arrayidx114.i, align 2
  %conv115.i = zext i16 %522 to i32
  %sub116.i = sub nsw i32 %conv102.i, %conv115.i
  %arrayidx82.1.i = getelementptr i8, ptr %512, i64 18
  %523 = load i16, ptr %arrayidx82.1.i, align 2
  %conv83.1.i = zext i16 %523 to i32
  %arrayidx86.1.i = getelementptr i8, ptr %512, i64 10
  %524 = load i16, ptr %arrayidx86.1.i, align 2
  %conv87.1.i = zext i16 %524 to i32
  %sub88.1.i = sub nsw i32 %conv83.1.i, %conv87.1.i
  %mul.1.i = shl nsw i32 %sub88.1.i, 1
  %add89.1.i = add nsw i32 %sub88.i, %mul.1.i
  %pos_y93.1.i = getelementptr inbounds i8, ptr %left.i107, i64 174
  %525 = load i16, ptr %pos_y93.1.i, align 2
  %idxprom94.1.i = sext i16 %525 to i64
  %arrayidx95.1.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom94.1.i
  %526 = load ptr, ptr %arrayidx95.1.i, align 8
  %pos_x99.1.i = getelementptr inbounds i8, ptr %left.i107, i64 172
  %527 = load i16, ptr %pos_x99.1.i, align 4
  %idxprom100.1.i = sext i16 %527 to i64
  %arrayidx101.1.i = getelementptr inbounds i16, ptr %526, i64 %idxprom100.1.i
  %528 = load i16, ptr %arrayidx101.1.i, align 2
  %conv102.1.i = zext i16 %528 to i32
  %pos_y106.1.i = getelementptr inbounds i8, ptr %left.i107, i64 110
  %529 = load i16, ptr %pos_y106.1.i, align 2
  %idxprom107.1.i = sext i16 %529 to i64
  %arrayidx108.1.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom107.1.i
  %530 = load ptr, ptr %arrayidx108.1.i, align 8
  %pos_x112.1.i = getelementptr inbounds i8, ptr %left.i107, i64 108
  %531 = load i16, ptr %pos_x112.1.i, align 4
  %idxprom113.1.i = sext i16 %531 to i64
  %arrayidx114.1.i = getelementptr inbounds i16, ptr %530, i64 %idxprom113.1.i
  %532 = load i16, ptr %arrayidx114.1.i, align 2
  %conv115.1.i = zext i16 %532 to i32
  %sub116.1.i = sub nsw i32 %conv102.1.i, %conv115.1.i
  %mul117.1.i = shl nsw i32 %sub116.1.i, 1
  %add118.1.i = add nsw i32 %sub116.i, %mul117.1.i
  %arrayidx82.2.i = getelementptr i8, ptr %512, i64 20
  %533 = load i16, ptr %arrayidx82.2.i, align 2
  %conv83.2.i = zext i16 %533 to i32
  %arrayidx86.2.i = getelementptr i8, ptr %512, i64 8
  %534 = load i16, ptr %arrayidx86.2.i, align 2
  %conv87.2.i = zext i16 %534 to i32
  %sub88.2.i = sub nsw i32 %conv83.2.i, %conv87.2.i
  %mul.2.i = mul nsw i32 %sub88.2.i, 3
  %add89.2.i = add nsw i32 %add89.1.i, %mul.2.i
  %pos_y93.2.i = getelementptr inbounds i8, ptr %left.i107, i64 190
  %535 = load i16, ptr %pos_y93.2.i, align 2
  %idxprom94.2.i = sext i16 %535 to i64
  %arrayidx95.2.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom94.2.i
  %536 = load ptr, ptr %arrayidx95.2.i, align 8
  %pos_x99.2.i = getelementptr inbounds i8, ptr %left.i107, i64 188
  %537 = load i16, ptr %pos_x99.2.i, align 4
  %idxprom100.2.i = sext i16 %537 to i64
  %arrayidx101.2.i = getelementptr inbounds i16, ptr %536, i64 %idxprom100.2.i
  %538 = load i16, ptr %arrayidx101.2.i, align 2
  %conv102.2.i = zext i16 %538 to i32
  %pos_y106.2.i = getelementptr inbounds i8, ptr %left.i107, i64 94
  %539 = load i16, ptr %pos_y106.2.i, align 2
  %idxprom107.2.i = sext i16 %539 to i64
  %arrayidx108.2.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom107.2.i
  %540 = load ptr, ptr %arrayidx108.2.i, align 8
  %pos_x112.2.i = getelementptr inbounds i8, ptr %left.i107, i64 92
  %541 = load i16, ptr %pos_x112.2.i, align 4
  %idxprom113.2.i = sext i16 %541 to i64
  %arrayidx114.2.i = getelementptr inbounds i16, ptr %540, i64 %idxprom113.2.i
  %542 = load i16, ptr %arrayidx114.2.i, align 2
  %conv115.2.i = zext i16 %542 to i32
  %sub116.2.i = sub nsw i32 %conv102.2.i, %conv115.2.i
  %mul117.2.i = mul nsw i32 %sub116.2.i, 3
  %add118.2.i = add nsw i32 %add118.1.i, %mul117.2.i
  %arrayidx82.3.i = getelementptr i8, ptr %512, i64 22
  %543 = load i16, ptr %arrayidx82.3.i, align 2
  %conv83.3.i = zext i16 %543 to i32
  %arrayidx86.3.i = getelementptr i8, ptr %512, i64 6
  %544 = load i16, ptr %arrayidx86.3.i, align 2
  %conv87.3.i = zext i16 %544 to i32
  %sub88.3.i = sub nsw i32 %conv83.3.i, %conv87.3.i
  %mul.3.i = shl nsw i32 %sub88.3.i, 2
  %add89.3.i = add nsw i32 %add89.2.i, %mul.3.i
  %pos_y93.3.i = getelementptr inbounds i8, ptr %left.i107, i64 206
  %545 = load i16, ptr %pos_y93.3.i, align 2
  %idxprom94.3.i = sext i16 %545 to i64
  %arrayidx95.3.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom94.3.i
  %546 = load ptr, ptr %arrayidx95.3.i, align 8
  %pos_x99.3.i = getelementptr inbounds i8, ptr %left.i107, i64 204
  %547 = load i16, ptr %pos_x99.3.i, align 4
  %idxprom100.3.i = sext i16 %547 to i64
  %arrayidx101.3.i = getelementptr inbounds i16, ptr %546, i64 %idxprom100.3.i
  %548 = load i16, ptr %arrayidx101.3.i, align 2
  %conv102.3.i = zext i16 %548 to i32
  %pos_y106.3.i = getelementptr inbounds i8, ptr %left.i107, i64 78
  %549 = load i16, ptr %pos_y106.3.i, align 2
  %idxprom107.3.i = sext i16 %549 to i64
  %arrayidx108.3.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom107.3.i
  %550 = load ptr, ptr %arrayidx108.3.i, align 8
  %pos_x112.3.i = getelementptr inbounds i8, ptr %left.i107, i64 76
  %551 = load i16, ptr %pos_x112.3.i, align 4
  %idxprom113.3.i = sext i16 %551 to i64
  %arrayidx114.3.i = getelementptr inbounds i16, ptr %550, i64 %idxprom113.3.i
  %552 = load i16, ptr %arrayidx114.3.i, align 2
  %conv115.3.i = zext i16 %552 to i32
  %sub116.3.i = sub nsw i32 %conv102.3.i, %conv115.3.i
  %mul117.3.i = shl nsw i32 %sub116.3.i, 2
  %add118.3.i = add nsw i32 %add118.2.i, %mul117.3.i
  %arrayidx82.4.i = getelementptr i8, ptr %512, i64 24
  %553 = load i16, ptr %arrayidx82.4.i, align 2
  %conv83.4.i = zext i16 %553 to i32
  %arrayidx86.4.i = getelementptr i8, ptr %512, i64 4
  %554 = load i16, ptr %arrayidx86.4.i, align 2
  %conv87.4.i = zext i16 %554 to i32
  %sub88.4.i = sub nsw i32 %conv83.4.i, %conv87.4.i
  %mul.4.i = mul nsw i32 %sub88.4.i, 5
  %add89.4.i = add nsw i32 %add89.3.i, %mul.4.i
  %pos_y93.4.i = getelementptr inbounds i8, ptr %left.i107, i64 222
  %555 = load i16, ptr %pos_y93.4.i, align 2
  %idxprom94.4.i = sext i16 %555 to i64
  %arrayidx95.4.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom94.4.i
  %556 = load ptr, ptr %arrayidx95.4.i, align 8
  %pos_x99.4.i = getelementptr inbounds i8, ptr %left.i107, i64 220
  %557 = load i16, ptr %pos_x99.4.i, align 4
  %idxprom100.4.i = sext i16 %557 to i64
  %arrayidx101.4.i = getelementptr inbounds i16, ptr %556, i64 %idxprom100.4.i
  %558 = load i16, ptr %arrayidx101.4.i, align 2
  %conv102.4.i = zext i16 %558 to i32
  %pos_y106.4.i = getelementptr inbounds i8, ptr %left.i107, i64 62
  %559 = load i16, ptr %pos_y106.4.i, align 2
  %idxprom107.4.i = sext i16 %559 to i64
  %arrayidx108.4.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom107.4.i
  %560 = load ptr, ptr %arrayidx108.4.i, align 8
  %pos_x112.4.i = getelementptr inbounds i8, ptr %left.i107, i64 60
  %561 = load i16, ptr %pos_x112.4.i, align 4
  %idxprom113.4.i = sext i16 %561 to i64
  %arrayidx114.4.i = getelementptr inbounds i16, ptr %560, i64 %idxprom113.4.i
  %562 = load i16, ptr %arrayidx114.4.i, align 2
  %conv115.4.i = zext i16 %562 to i32
  %sub116.4.i = sub nsw i32 %conv102.4.i, %conv115.4.i
  %mul117.4.i = mul nsw i32 %sub116.4.i, 5
  %add118.4.i = add nsw i32 %add118.3.i, %mul117.4.i
  %arrayidx82.5.i = getelementptr i8, ptr %512, i64 26
  %563 = load i16, ptr %arrayidx82.5.i, align 2
  %conv83.5.i = zext i16 %563 to i32
  %arrayidx86.5.i = getelementptr i8, ptr %512, i64 2
  %564 = load i16, ptr %arrayidx86.5.i, align 2
  %conv87.5.i = zext i16 %564 to i32
  %sub88.5.i = sub nsw i32 %conv83.5.i, %conv87.5.i
  %mul.5.i = mul nsw i32 %sub88.5.i, 6
  %add89.5.i = add nsw i32 %add89.4.i, %mul.5.i
  %pos_y93.5.i = getelementptr inbounds i8, ptr %left.i107, i64 238
  %565 = load i16, ptr %pos_y93.5.i, align 2
  %idxprom94.5.i = sext i16 %565 to i64
  %arrayidx95.5.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom94.5.i
  %566 = load ptr, ptr %arrayidx95.5.i, align 8
  %pos_x99.5.i = getelementptr inbounds i8, ptr %left.i107, i64 236
  %567 = load i16, ptr %pos_x99.5.i, align 4
  %idxprom100.5.i = sext i16 %567 to i64
  %arrayidx101.5.i = getelementptr inbounds i16, ptr %566, i64 %idxprom100.5.i
  %568 = load i16, ptr %arrayidx101.5.i, align 2
  %conv102.5.i = zext i16 %568 to i32
  %pos_y106.5.i = getelementptr inbounds i8, ptr %left.i107, i64 46
  %569 = load i16, ptr %pos_y106.5.i, align 2
  %idxprom107.5.i = sext i16 %569 to i64
  %arrayidx108.5.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom107.5.i
  %570 = load ptr, ptr %arrayidx108.5.i, align 8
  %pos_x112.5.i = getelementptr inbounds i8, ptr %left.i107, i64 44
  %571 = load i16, ptr %pos_x112.5.i, align 4
  %idxprom113.5.i = sext i16 %571 to i64
  %arrayidx114.5.i = getelementptr inbounds i16, ptr %570, i64 %idxprom113.5.i
  %572 = load i16, ptr %arrayidx114.5.i, align 2
  %conv115.5.i = zext i16 %572 to i32
  %sub116.5.i = sub nsw i32 %conv102.5.i, %conv115.5.i
  %mul117.5.i = mul nsw i32 %sub116.5.i, 6
  %add118.5.i = add nsw i32 %add118.4.i, %mul117.5.i
  %arrayidx82.6.i = getelementptr i8, ptr %512, i64 28
  %573 = load i16, ptr %arrayidx82.6.i, align 2
  %conv83.6.i = zext i16 %573 to i32
  %574 = load i16, ptr %512, align 2
  %conv87.6.i = zext i16 %574 to i32
  %sub88.6.i = sub nsw i32 %conv83.6.i, %conv87.6.i
  %mul.6.i = mul nsw i32 %sub88.6.i, 7
  %add89.6.i = add nsw i32 %add89.5.i, %mul.6.i
  %pos_y93.6.i = getelementptr inbounds i8, ptr %left.i107, i64 254
  %575 = load i16, ptr %pos_y93.6.i, align 2
  %idxprom94.6.i = sext i16 %575 to i64
  %arrayidx95.6.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom94.6.i
  %576 = load ptr, ptr %arrayidx95.6.i, align 8
  %pos_x99.6.i = getelementptr inbounds i8, ptr %left.i107, i64 252
  %577 = load i16, ptr %pos_x99.6.i, align 4
  %idxprom100.6.i = sext i16 %577 to i64
  %arrayidx101.6.i = getelementptr inbounds i16, ptr %576, i64 %idxprom100.6.i
  %578 = load i16, ptr %arrayidx101.6.i, align 2
  %conv102.6.i = zext i16 %578 to i32
  %pos_y106.6.i = getelementptr inbounds i8, ptr %left.i107, i64 30
  %579 = load i16, ptr %pos_y106.6.i, align 2
  %idxprom107.6.i = sext i16 %579 to i64
  %arrayidx108.6.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom107.6.i
  %580 = load ptr, ptr %arrayidx108.6.i, align 8
  %pos_x112.6.i = getelementptr inbounds i8, ptr %left.i107, i64 28
  %581 = load i16, ptr %pos_x112.6.i, align 4
  %idxprom113.6.i = sext i16 %581 to i64
  %arrayidx114.6.i = getelementptr inbounds i16, ptr %580, i64 %idxprom113.6.i
  %582 = load i16, ptr %arrayidx114.6.i, align 2
  %conv115.6.i = zext i16 %582 to i32
  %sub116.6.i = sub nsw i32 %conv102.6.i, %conv115.6.i
  %mul117.6.i = mul nsw i32 %sub116.6.i, 7
  %add118.6.i = add nsw i32 %add118.5.i, %mul117.6.i
  %arrayidx122.i = getelementptr i8, ptr %512, i64 30
  %583 = load i16, ptr %arrayidx122.i, align 2
  %conv123.i = zext i16 %583 to i32
  %pos_y125.i = getelementptr inbounds i8, ptr %left.i107, i64 14
  %584 = load i16, ptr %pos_y125.i, align 2
  %idxprom126.i = sext i16 %584 to i64
  %arrayidx127.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom126.i
  %585 = load ptr, ptr %arrayidx127.i, align 8
  %pos_x129.i = getelementptr inbounds i8, ptr %left.i107, i64 12
  %586 = load i16, ptr %pos_x129.i, align 4
  %idxprom130.i = sext i16 %586 to i64
  %arrayidx131.i = getelementptr inbounds i16, ptr %585, i64 %idxprom130.i
  %587 = load i16, ptr %arrayidx131.i, align 2
  %conv132.i = zext i16 %587 to i32
  %sub133.i = sub nsw i32 %conv123.i, %conv132.i
  %mul134.i = shl nsw i32 %sub133.i, 3
  %add135.i = add nsw i32 %add89.6.i, %mul134.i
  %pos_y137.i = getelementptr inbounds i8, ptr %left.i107, i64 270
  %588 = load i16, ptr %pos_y137.i, align 2
  %idxprom138.i = sext i16 %588 to i64
  %arrayidx139.i = getelementptr inbounds ptr, ptr %cond.i118, i64 %idxprom138.i
  %589 = load ptr, ptr %arrayidx139.i, align 8
  %pos_x141.i = getelementptr inbounds i8, ptr %left.i107, i64 268
  %590 = load i16, ptr %pos_x141.i, align 4
  %idxprom142.i = sext i16 %590 to i64
  %arrayidx143.i = getelementptr inbounds i16, ptr %589, i64 %idxprom142.i
  %591 = load i16, ptr %arrayidx143.i, align 2
  %conv144.i = zext i16 %591 to i32
  %sub154.i = sub nsw i32 %conv144.i, %conv132.i
  %mul155.i = shl nsw i32 %sub154.i, 3
  %add156.i = add nsw i32 %add118.6.i, %mul155.i
  %mul157.i = mul nsw i32 %add135.i, 5
  %add158.i = add nsw i32 %mul157.i, 32
  %shr.i155 = ashr i32 %add158.i, 6
  %mul159.i = mul nsw i32 %add156.i, 5
  %add160.i = add nsw i32 %mul159.i, 32
  %shr161.i = ashr i32 %add160.i, 6
  %add173.i = add nuw nsw i32 %conv144.i, %conv123.i
  %mul174.i = shl nuw nsw i32 %add173.i, 4
  %add185.i = add nuw nsw i32 %mul174.i, 16
  %592 = mul nsw i32 %shr.i155, -7
  %593 = mul nsw i32 %shr.i155, -6
  %594 = mul nsw i32 %shr.i155, -5
  %595 = shl nsw i32 %shr.i155, 2
  %596 = mul nsw i32 %shr.i155, -3
  %597 = shl nsw i32 %shr.i155, 1
  %598 = mul nsw i32 %shr.i155, 3
  %599 = mul nsw i32 %shr.i155, 5
  %600 = mul nsw i32 %shr.i155, 6
  %601 = mul nsw i32 %shr.i155, 7
  %602 = shl nsw i32 %shr.i155, 3
  br label %for.cond179.preheader.i

for.cond179.preheader.i:                          ; preds = %for.cond179.preheader.i, %if.end71.i
  %indvars.iv.i156 = phi i64 [ 0, %if.end71.i ], [ %indvars.iv.next.i157, %for.cond179.preheader.i ]
  %603 = trunc i64 %indvars.iv.i156 to i32
  %604 = add i32 %603, -7
  %605 = mul i32 %604, %shr161.i
  %add188.i = add i32 %add185.i, %605
  %arrayidx193.i = getelementptr inbounds ptr, ptr %413, i64 %indvars.iv.i156
  %add189.i = add i32 %add188.i, %592
  %shr190.i = ashr i32 %add189.i, 5
  %cond.i.i.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.i, i32 0)
  %cond.i4.i.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.i, i32 %414)
  %conv191.i = trunc i32 %cond.i4.i.i to i16
  %606 = load ptr, ptr %arrayidx193.i, align 8
  store i16 %conv191.i, ptr %606, align 2
  %add189.1.i = add i32 %add188.i, %593
  %shr190.1.i = ashr i32 %add189.1.i, 5
  %cond.i.i.1.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.1.i, i32 0)
  %cond.i4.i.1.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.1.i, i32 %414)
  %conv191.1.i = trunc i32 %cond.i4.i.1.i to i16
  %607 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.1.i = getelementptr inbounds i8, ptr %607, i64 2
  store i16 %conv191.1.i, ptr %arrayidx195.1.i, align 2
  %add189.2.i = add i32 %add188.i, %594
  %shr190.2.i = ashr i32 %add189.2.i, 5
  %cond.i.i.2.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.2.i, i32 0)
  %cond.i4.i.2.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.2.i, i32 %414)
  %conv191.2.i = trunc i32 %cond.i4.i.2.i to i16
  %608 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.2.i = getelementptr inbounds i8, ptr %608, i64 4
  store i16 %conv191.2.i, ptr %arrayidx195.2.i, align 2
  %add189.3.i = sub i32 %add188.i, %595
  %shr190.3.i = ashr i32 %add189.3.i, 5
  %cond.i.i.3.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.3.i, i32 0)
  %cond.i4.i.3.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.3.i, i32 %414)
  %conv191.3.i = trunc i32 %cond.i4.i.3.i to i16
  %609 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.3.i = getelementptr inbounds i8, ptr %609, i64 6
  store i16 %conv191.3.i, ptr %arrayidx195.3.i, align 2
  %add189.4.i = add i32 %add188.i, %596
  %shr190.4.i = ashr i32 %add189.4.i, 5
  %cond.i.i.4.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.4.i, i32 0)
  %cond.i4.i.4.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.4.i, i32 %414)
  %conv191.4.i = trunc i32 %cond.i4.i.4.i to i16
  %610 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.4.i = getelementptr inbounds i8, ptr %610, i64 8
  store i16 %conv191.4.i, ptr %arrayidx195.4.i, align 2
  %add189.5.i = sub i32 %add188.i, %597
  %shr190.5.i = ashr i32 %add189.5.i, 5
  %cond.i.i.5.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.5.i, i32 0)
  %cond.i4.i.5.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.5.i, i32 %414)
  %conv191.5.i = trunc i32 %cond.i4.i.5.i to i16
  %611 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.5.i = getelementptr inbounds i8, ptr %611, i64 10
  store i16 %conv191.5.i, ptr %arrayidx195.5.i, align 2
  %add189.6.i = sub i32 %add188.i, %shr.i155
  %shr190.6.i = ashr i32 %add189.6.i, 5
  %cond.i.i.6.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.6.i, i32 0)
  %cond.i4.i.6.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.6.i, i32 %414)
  %conv191.6.i = trunc i32 %cond.i4.i.6.i to i16
  %612 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.6.i = getelementptr inbounds i8, ptr %612, i64 12
  store i16 %conv191.6.i, ptr %arrayidx195.6.i, align 2
  %shr190.7.i = ashr i32 %add188.i, 5
  %cond.i.i.7.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.7.i, i32 0)
  %cond.i4.i.7.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.7.i, i32 %414)
  %conv191.7.i = trunc i32 %cond.i4.i.7.i to i16
  %613 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.7.i = getelementptr inbounds i8, ptr %613, i64 14
  store i16 %conv191.7.i, ptr %arrayidx195.7.i, align 2
  %add189.8.i = add i32 %add188.i, %shr.i155
  %shr190.8.i = ashr i32 %add189.8.i, 5
  %cond.i.i.8.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.8.i, i32 0)
  %cond.i4.i.8.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.8.i, i32 %414)
  %conv191.8.i = trunc i32 %cond.i4.i.8.i to i16
  %614 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.8.i = getelementptr inbounds i8, ptr %614, i64 16
  store i16 %conv191.8.i, ptr %arrayidx195.8.i, align 2
  %add189.9.i = add i32 %add188.i, %597
  %shr190.9.i = ashr i32 %add189.9.i, 5
  %cond.i.i.9.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.9.i, i32 0)
  %cond.i4.i.9.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.9.i, i32 %414)
  %conv191.9.i = trunc i32 %cond.i4.i.9.i to i16
  %615 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.9.i = getelementptr inbounds i8, ptr %615, i64 18
  store i16 %conv191.9.i, ptr %arrayidx195.9.i, align 2
  %add189.10.i = add i32 %add188.i, %598
  %shr190.10.i = ashr i32 %add189.10.i, 5
  %cond.i.i.10.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.10.i, i32 0)
  %cond.i4.i.10.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.10.i, i32 %414)
  %conv191.10.i = trunc i32 %cond.i4.i.10.i to i16
  %616 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.10.i = getelementptr inbounds i8, ptr %616, i64 20
  store i16 %conv191.10.i, ptr %arrayidx195.10.i, align 2
  %add189.11.i = add i32 %add188.i, %595
  %shr190.11.i = ashr i32 %add189.11.i, 5
  %cond.i.i.11.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.11.i, i32 0)
  %cond.i4.i.11.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.11.i, i32 %414)
  %conv191.11.i = trunc i32 %cond.i4.i.11.i to i16
  %617 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.11.i = getelementptr inbounds i8, ptr %617, i64 22
  store i16 %conv191.11.i, ptr %arrayidx195.11.i, align 2
  %add189.12.i = add i32 %add188.i, %599
  %shr190.12.i = ashr i32 %add189.12.i, 5
  %cond.i.i.12.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.12.i, i32 0)
  %cond.i4.i.12.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.12.i, i32 %414)
  %conv191.12.i = trunc i32 %cond.i4.i.12.i to i16
  %618 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.12.i = getelementptr inbounds i8, ptr %618, i64 24
  store i16 %conv191.12.i, ptr %arrayidx195.12.i, align 2
  %add189.13.i = add i32 %add188.i, %600
  %shr190.13.i = ashr i32 %add189.13.i, 5
  %cond.i.i.13.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.13.i, i32 0)
  %cond.i4.i.13.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.13.i, i32 %414)
  %conv191.13.i = trunc i32 %cond.i4.i.13.i to i16
  %619 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.13.i = getelementptr inbounds i8, ptr %619, i64 26
  store i16 %conv191.13.i, ptr %arrayidx195.13.i, align 2
  %add189.14.i = add i32 %add188.i, %601
  %shr190.14.i = ashr i32 %add189.14.i, 5
  %cond.i.i.14.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.14.i, i32 0)
  %cond.i4.i.14.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.14.i, i32 %414)
  %conv191.14.i = trunc i32 %cond.i4.i.14.i to i16
  %620 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.14.i = getelementptr inbounds i8, ptr %620, i64 28
  store i16 %conv191.14.i, ptr %arrayidx195.14.i, align 2
  %add189.15.i = add i32 %add188.i, %602
  %shr190.15.i = ashr i32 %add189.15.i, 5
  %cond.i.i.15.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr190.15.i, i32 0)
  %cond.i4.i.15.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.15.i, i32 %414)
  %conv191.15.i = trunc i32 %cond.i4.i.15.i to i16
  %621 = load ptr, ptr %arrayidx193.i, align 8
  %arrayidx195.15.i = getelementptr inbounds i8, ptr %621, i64 30
  store i16 %conv191.15.i, ptr %arrayidx195.15.i, align 2
  %indvars.iv.next.i157 = add nuw nsw i64 %indvars.iv.i156, 1
  %exitcond.not.i158 = icmp eq i64 %indvars.iv.next.i157, 16
  br i1 %exitcond.not.i158, label %intra16x16_plane_pred_mbaff.exit, label %for.cond179.preheader.i

intra16x16_plane_pred_mbaff.exit:                 ; preds = %for.cond179.preheader.i
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %left.i107) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %b.i106) #6
  br label %return

sw.default:                                       ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %predmode)
  br label %return

return:                                           ; preds = %sw.default, %intra16x16_plane_pred_mbaff.exit, %intra16x16_dc_pred_mbaff.exit, %intra16x16_hor_pred_mbaff.exit, %intra16x16_vert_pred_mbaff.exit
  %retval.0 = phi i32 [ 1, %sw.default ], [ 0, %intra16x16_plane_pred_mbaff.exit ], [ 0, %intra16x16_dc_pred_mbaff.exit ], [ 0, %intra16x16_hor_pred_mbaff.exit ], [ 0, %intra16x16_vert_pred_mbaff.exit ]
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #5

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
