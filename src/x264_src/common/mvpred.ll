; ModuleID = 'x264_src/common/mvpred.c'
source_filename = "x264_src/common/mvpred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @x264_mb_predict_mv(ptr nocapture noundef readonly %h, i32 noundef %i_list, i32 noundef %idx, i32 noundef %i_width, ptr nocapture noundef writeonly %mvp) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4
  %ref = getelementptr inbounds i8, ptr %h, i64 25120
  %idxprom1 = sext i32 %i_list to i64
  %idxprom3 = sext i32 %0 to i64
  %arrayidx4 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom3
  %1 = load i8, ptr %arrayidx4, align 1
  %sub = add nsw i32 %0, -1
  %idxprom10 = sext i32 %sub to i64
  %arrayidx11 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom10
  %2 = load i8, ptr %arrayidx11, align 1
  %mv = getelementptr inbounds i8, ptr %h, i64 25200
  %arrayidx19 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom1, i64 %idxprom10
  %sub25 = add nsw i32 %0, -8
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom26
  %3 = load i8, ptr %arrayidx27, align 1
  %arrayidx36 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom1, i64 %idxprom26
  %add = add nsw i32 %sub25, %i_width
  %idxprom44 = sext i32 %add to i64
  %arrayidx45 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom44
  %4 = load i8, ptr %arrayidx45, align 1
  %and = and i32 %idx, 3
  %and57 = and i32 %i_width, 1
  %add58 = or disjoint i32 %and57, 2
  %cmp = icmp uge i32 %and, %add58
  %cmp60 = icmp eq i8 %4, -2
  %or.cond = select i1 %cmp, i1 true, i1 %cmp60
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub68 = add nsw i32 %0, -9
  %idxprom69 = sext i32 %sub68 to i64
  %arrayidx70 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom69
  %5 = load i8, ptr %arrayidx70, align 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %idxprom69.pn = phi i64 [ %idxprom69, %if.then ], [ %idxprom44, %entry ]
  %i_refc.0.in = phi i8 [ %5, %if.then ], [ %4, %entry ]
  %mv_c.0 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom1, i64 %idxprom69.pn
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388
  %6 = load i32, ptr %i_partition, align 4
  switch i32 %6, label %if.end118 [
    i32 14, label %if.then85
    i32 15, label %if.then103
  ]

if.then85:                                        ; preds = %if.end
  %cmp86 = icmp eq i32 %idx, 0
  br i1 %cmp86, label %if.then88, label %if.else

if.then88:                                        ; preds = %if.then85
  %cmp89 = icmp eq i8 %3, %1
  br i1 %cmp89, label %if.then91, label %if.end118

if.then91:                                        ; preds = %if.then88
  %7 = load i32, ptr %arrayidx36, align 4
  store i32 %7, ptr %mvp, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then85
  %cmp93 = icmp eq i8 %2, %1
  br i1 %cmp93, label %if.then95, label %if.end118

if.then95:                                        ; preds = %if.else
  %8 = load i32, ptr %arrayidx19, align 4
  store i32 %8, ptr %mvp, align 4
  br label %cleanup

if.then103:                                       ; preds = %if.end
  %cmp104 = icmp eq i32 %idx, 0
  br i1 %cmp104, label %if.then106, label %if.else111

if.then106:                                       ; preds = %if.then103
  %cmp107 = icmp eq i8 %2, %1
  br i1 %cmp107, label %if.then109, label %if.end118

if.then109:                                       ; preds = %if.then106
  %9 = load i32, ptr %arrayidx19, align 4
  store i32 %9, ptr %mvp, align 4
  br label %cleanup

if.else111:                                       ; preds = %if.then103
  %cmp112 = icmp eq i8 %i_refc.0.in, %1
  br i1 %cmp112, label %if.then114, label %if.end118

if.then114:                                       ; preds = %if.else111
  %10 = load i32, ptr %mv_c.0, align 4
  store i32 %10, ptr %mvp, align 4
  br label %cleanup

if.end118:                                        ; preds = %if.end, %if.else111, %if.then106, %if.then88, %if.else
  %cmp119 = icmp eq i8 %2, %1
  %conv120 = zext i1 %cmp119 to i32
  %cmp121 = icmp eq i8 %3, %1
  %conv122 = zext i1 %cmp121 to i32
  %add123 = add nuw nsw i32 %conv122, %conv120
  %cmp124 = icmp eq i8 %i_refc.0.in, %1
  %conv125 = zext i1 %cmp124 to i32
  %add126 = add nuw nsw i32 %add123, %conv125
  %cmp127 = icmp ugt i32 %add126, 1
  br i1 %cmp127, label %median, label %if.else130

median:                                           ; preds = %if.else144, %if.end118
  %11 = load i16, ptr %arrayidx19, align 2
  %conv.i = sext i16 %11 to i32
  %12 = load i16, ptr %arrayidx36, align 2
  %conv2.i = sext i16 %12 to i32
  %13 = load i16, ptr %mv_c.0, align 2
  %conv4.i = sext i16 %13 to i32
  %sub.i.i = sub nsw i32 %conv.i, %conv2.i
  %and.i.i = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 0)
  %sub2.i.i = tail call i32 @llvm.smax.i32(i32 %conv.i, i32 %conv2.i)
  %add.i.i = add nsw i32 %and.i.i, %conv2.i
  %sub7.i.i = tail call i32 @llvm.smax.i32(i32 %add.i.i, i32 %conv4.i)
  %sub8.i.i = sub nsw i32 %sub2.i.i, %sub7.i.i
  %and11.i.i = tail call i32 @llvm.smin.i32(i32 %sub8.i.i, i32 0)
  %add12.i.i = add nsw i32 %and11.i.i, %sub7.i.i
  %conv5.i = trunc i32 %add12.i.i to i16
  store i16 %conv5.i, ptr %mvp, align 2
  %arrayidx7.i = getelementptr inbounds i8, ptr %arrayidx19, i64 2
  %14 = load i16, ptr %arrayidx7.i, align 2
  %conv8.i = sext i16 %14 to i32
  %arrayidx9.i = getelementptr inbounds i8, ptr %arrayidx36, i64 2
  %15 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = sext i16 %15 to i32
  %arrayidx11.i = getelementptr inbounds i8, ptr %mv_c.0, i64 2
  %16 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = sext i16 %16 to i32
  %sub.i20.i = sub nsw i32 %conv8.i, %conv10.i
  %and.i21.i = tail call i32 @llvm.smin.i32(i32 %sub.i20.i, i32 0)
  %sub2.i22.i = tail call i32 @llvm.smax.i32(i32 %conv8.i, i32 %conv10.i)
  %add.i23.i = add nsw i32 %and.i21.i, %conv10.i
  %sub7.i24.i = tail call i32 @llvm.smax.i32(i32 %add.i23.i, i32 %conv12.i)
  %sub8.i25.i = sub nsw i32 %sub2.i22.i, %sub7.i24.i
  %and11.i26.i = tail call i32 @llvm.smin.i32(i32 %sub8.i25.i, i32 0)
  %add12.i27.i = add nsw i32 %and11.i26.i, %sub7.i24.i
  %conv14.i = trunc i32 %add12.i27.i to i16
  %arrayidx15.i = getelementptr inbounds i8, ptr %mvp, i64 2
  store i16 %conv14.i, ptr %arrayidx15.i, align 2
  br label %cleanup

if.else130:                                       ; preds = %if.end118
  %cmp131 = icmp eq i32 %add126, 1
  br i1 %cmp131, label %if.then133, label %if.else144

if.then133:                                       ; preds = %if.else130
  br i1 %cmp119, label %if.then136, label %if.else137

if.then136:                                       ; preds = %if.then133
  %17 = load i32, ptr %arrayidx19, align 4
  store i32 %17, ptr %mvp, align 4
  br label %cleanup

if.else137:                                       ; preds = %if.then133
  br i1 %cmp121, label %if.then140, label %if.else141

if.then140:                                       ; preds = %if.else137
  %18 = load i32, ptr %arrayidx36, align 4
  store i32 %18, ptr %mvp, align 4
  br label %cleanup

if.else141:                                       ; preds = %if.else137
  %19 = load i32, ptr %mv_c.0, align 4
  store i32 %19, ptr %mvp, align 4
  br label %cleanup

if.else144:                                       ; preds = %if.else130
  %cmp145 = icmp eq i8 %3, -2
  %cmp147 = icmp eq i8 %i_refc.0.in, -2
  %or.cond164 = select i1 %cmp145, i1 %cmp147, i1 false
  %cmp150 = icmp ne i8 %2, -2
  %or.cond165 = select i1 %or.cond164, i1 %cmp150, i1 false
  br i1 %or.cond165, label %if.then152, label %median

if.then152:                                       ; preds = %if.else144
  %20 = load i32, ptr %arrayidx19, align 4
  store i32 %20, ptr %mvp, align 4
  br label %cleanup

cleanup:                                          ; preds = %median, %if.then136, %if.else141, %if.then140, %if.then152, %if.then114, %if.then109, %if.then95, %if.then91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_16x16(ptr nocapture noundef readonly %h, i32 noundef %i_list, i32 noundef %i_ref, ptr nocapture noundef writeonly %mvp) local_unnamed_addr #1 {
entry:
  %ref = getelementptr inbounds i8, ptr %h, i64 25120
  %idxprom = sext i32 %i_list to i64
  %arrayidx = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds i8, ptr %arrayidx, i64 11
  %0 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %0 to i32
  %mv = getelementptr inbounds i8, ptr %h, i64 25200
  %arrayidx5 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom
  %arrayidx6 = getelementptr inbounds i8, ptr %arrayidx5, i64 44
  %arrayidx12 = getelementptr inbounds i8, ptr %arrayidx, i64 4
  %1 = load i8, ptr %arrayidx12, align 4
  %conv13 = sext i8 %1 to i32
  %arrayidx19 = getelementptr inbounds i8, ptr %arrayidx5, i64 16
  %arrayidx26 = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %2 = load i8, ptr %arrayidx26, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %arrayidx5, i64 32
  %cmp = icmp eq i8 %2, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx41 = getelementptr inbounds i8, ptr %arrayidx, i64 3
  %3 = load i8, ptr %arrayidx41, align 1
  %arrayidx48 = getelementptr inbounds i8, ptr %arrayidx5, i64 12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mv_c.0 = phi ptr [ %arrayidx48, %if.then ], [ %arrayidx33, %entry ]
  %i_refc.0.in = phi i8 [ %3, %if.then ], [ %2, %entry ]
  %i_refc.0 = sext i8 %i_refc.0.in to i32
  %cmp50 = icmp eq i32 %conv, %i_ref
  %conv51 = zext i1 %cmp50 to i32
  %cmp52 = icmp eq i32 %conv13, %i_ref
  %conv53 = zext i1 %cmp52 to i32
  %add = add nuw nsw i32 %conv53, %conv51
  %cmp54 = icmp eq i32 %i_refc.0, %i_ref
  %conv55 = zext i1 %cmp54 to i32
  %add56 = add nuw nsw i32 %add, %conv55
  %cmp57 = icmp ugt i32 %add56, 1
  br i1 %cmp57, label %median, label %if.else

median:                                           ; preds = %if.else73, %if.end
  %4 = load i16, ptr %arrayidx6, align 2
  %conv.i = sext i16 %4 to i32
  %5 = load i16, ptr %arrayidx19, align 2
  %conv2.i = sext i16 %5 to i32
  %6 = load i16, ptr %mv_c.0, align 2
  %conv4.i = sext i16 %6 to i32
  %sub.i.i = sub nsw i32 %conv.i, %conv2.i
  %and.i.i = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 0)
  %sub2.i.i = tail call i32 @llvm.smax.i32(i32 %conv.i, i32 %conv2.i)
  %add.i.i = add nsw i32 %and.i.i, %conv2.i
  %sub7.i.i = tail call i32 @llvm.smax.i32(i32 %add.i.i, i32 %conv4.i)
  %sub8.i.i = sub nsw i32 %sub2.i.i, %sub7.i.i
  %and11.i.i = tail call i32 @llvm.smin.i32(i32 %sub8.i.i, i32 0)
  %add12.i.i = add nsw i32 %and11.i.i, %sub7.i.i
  %conv5.i = trunc i32 %add12.i.i to i16
  store i16 %conv5.i, ptr %mvp, align 2
  %arrayidx7.i = getelementptr inbounds i8, ptr %arrayidx5, i64 46
  %7 = load i16, ptr %arrayidx7.i, align 2
  %conv8.i = sext i16 %7 to i32
  %arrayidx9.i = getelementptr inbounds i8, ptr %arrayidx5, i64 18
  %8 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = sext i16 %8 to i32
  %arrayidx11.i = getelementptr inbounds i8, ptr %mv_c.0, i64 2
  %9 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = sext i16 %9 to i32
  %sub.i20.i = sub nsw i32 %conv8.i, %conv10.i
  %and.i21.i = tail call i32 @llvm.smin.i32(i32 %sub.i20.i, i32 0)
  %sub2.i22.i = tail call i32 @llvm.smax.i32(i32 %conv8.i, i32 %conv10.i)
  %add.i23.i = add nsw i32 %and.i21.i, %conv10.i
  %sub7.i24.i = tail call i32 @llvm.smax.i32(i32 %add.i23.i, i32 %conv12.i)
  %sub8.i25.i = sub nsw i32 %sub2.i22.i, %sub7.i24.i
  %and11.i26.i = tail call i32 @llvm.smin.i32(i32 %sub8.i25.i, i32 0)
  %add12.i27.i = add nsw i32 %and11.i26.i, %sub7.i24.i
  %conv14.i = trunc i32 %add12.i27.i to i16
  %arrayidx15.i = getelementptr inbounds i8, ptr %mvp, i64 2
  store i16 %conv14.i, ptr %arrayidx15.i, align 2
  br label %if.end85

if.else:                                          ; preds = %if.end
  %cmp60 = icmp eq i32 %add56, 1
  br i1 %cmp60, label %if.then62, label %if.else73

if.then62:                                        ; preds = %if.else
  br i1 %cmp50, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.then62
  %10 = load i32, ptr %arrayidx6, align 4
  store i32 %10, ptr %mvp, align 4
  br label %if.end85

if.else66:                                        ; preds = %if.then62
  br i1 %cmp52, label %if.then69, label %if.else70

if.then69:                                        ; preds = %if.else66
  %11 = load i32, ptr %arrayidx19, align 4
  store i32 %11, ptr %mvp, align 4
  br label %if.end85

if.else70:                                        ; preds = %if.else66
  %12 = load i32, ptr %mv_c.0, align 4
  store i32 %12, ptr %mvp, align 4
  br label %if.end85

if.else73:                                        ; preds = %if.else
  %cmp74 = icmp eq i8 %1, -2
  %cmp76 = icmp eq i8 %i_refc.0.in, -2
  %or.cond = and i1 %cmp74, %cmp76
  %cmp79 = icmp ne i8 %0, -2
  %or.cond86 = select i1 %or.cond, i1 %cmp79, i1 false
  br i1 %or.cond86, label %if.then81, label %median

if.then81:                                        ; preds = %if.else73
  %13 = load i32, ptr %arrayidx6, align 4
  store i32 %13, ptr %mvp, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.then69, %if.else70, %if.then65, %median
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_pskip(ptr nocapture noundef readonly %h, ptr nocapture noundef writeonly %mv) local_unnamed_addr #1 {
entry:
  %arrayidx1 = getelementptr inbounds i8, ptr %h, i64 25131
  %0 = load i8, ptr %arrayidx1, align 1
  %arrayidx6 = getelementptr inbounds i8, ptr %h, i64 25124
  %1 = load i8, ptr %arrayidx6, align 4
  %conv7 = sext i8 %1 to i32
  %arrayidx17 = getelementptr inbounds i8, ptr %h, i64 25216
  %cmp = icmp eq i8 %0, -2
  %cmp20 = icmp eq i8 %1, -2
  %or.cond = select i1 %cmp, i1 true, i1 %cmp20
  br i1 %or.cond, label %if.then, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %entry
  %conv = sext i8 %0 to i32
  %arrayidx12 = getelementptr inbounds i8, ptr %h, i64 25244
  %2 = load i32, ptr %arrayidx12, align 4
  %or = or i32 %2, %conv
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false22
  %3 = load i32, ptr %arrayidx17, align 4
  %or24 = or i32 %3, %conv7
  %tobool25.not = icmp eq i32 %or24, 0
  br i1 %tobool25.not, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false23, %lor.lhs.false22, %entry
  store i32 0, ptr %mv, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false23
  %arrayidx26.i = getelementptr inbounds i8, ptr %h, i64 25128
  %4 = load i8, ptr %arrayidx26.i, align 8
  %arrayidx33.i = getelementptr inbounds i8, ptr %h, i64 25232
  %cmp.i = icmp eq i8 %4, -2
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  %arrayidx41.i = getelementptr inbounds i8, ptr %h, i64 25123
  %5 = load i8, ptr %arrayidx41.i, align 1
  %arrayidx48.i = getelementptr inbounds i8, ptr %h, i64 25212
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else
  %mv_c.0.i = phi ptr [ %arrayidx48.i, %if.then.i ], [ %arrayidx33.i, %if.else ]
  %i_refc.0.in.i = phi i8 [ %5, %if.then.i ], [ %4, %if.else ]
  %cmp50.i = icmp eq i8 %0, 0
  %conv51.i = zext i1 %cmp50.i to i32
  %cmp52.i = icmp eq i8 %1, 0
  %conv53.i = zext i1 %cmp52.i to i32
  %add.i = add nuw nsw i32 %conv53.i, %conv51.i
  %cmp54.i = icmp eq i8 %i_refc.0.in.i, 0
  %conv55.i = zext i1 %cmp54.i to i32
  %add56.i = add nuw nsw i32 %add.i, %conv55.i
  %cmp60.i = icmp eq i32 %add56.i, 1
  br i1 %cmp60.i, label %if.then62.i, label %median.i

median.i:                                         ; preds = %if.end.i
  %sext = shl i32 %2, 16
  %conv.i.i = ashr exact i32 %sext, 16
  %sext33 = shl i32 %3, 16
  %conv2.i.i = ashr exact i32 %sext33, 16
  %6 = load i16, ptr %mv_c.0.i, align 2
  %conv4.i.i = sext i16 %6 to i32
  %sub.i.i.i = sub nsw i32 %conv.i.i, %conv2.i.i
  %and.i.i.i = tail call i32 @llvm.smin.i32(i32 %sub.i.i.i, i32 0)
  %sub2.i.i.i = tail call i32 @llvm.smax.i32(i32 %conv.i.i, i32 %conv2.i.i)
  %add.i.i.i = add nsw i32 %and.i.i.i, %conv2.i.i
  %sub7.i.i.i = tail call i32 @llvm.smax.i32(i32 %add.i.i.i, i32 %conv4.i.i)
  %sub8.i.i.i = sub nsw i32 %sub2.i.i.i, %sub7.i.i.i
  %and11.i.i.i = tail call i32 @llvm.smin.i32(i32 %sub8.i.i.i, i32 0)
  %add12.i.i.i = add nsw i32 %and11.i.i.i, %sub7.i.i.i
  %conv5.i.i = trunc i32 %add12.i.i.i to i16
  store i16 %conv5.i.i, ptr %mv, align 2
  %arrayidx7.i.i = getelementptr inbounds i8, ptr %h, i64 25246
  %7 = load i16, ptr %arrayidx7.i.i, align 2
  %conv8.i.i = sext i16 %7 to i32
  %arrayidx9.i.i = getelementptr inbounds i8, ptr %h, i64 25218
  %8 = load i16, ptr %arrayidx9.i.i, align 2
  %conv10.i.i = sext i16 %8 to i32
  %arrayidx11.i.i = getelementptr inbounds i8, ptr %mv_c.0.i, i64 2
  %9 = load i16, ptr %arrayidx11.i.i, align 2
  %conv12.i.i = sext i16 %9 to i32
  %sub.i20.i.i = sub nsw i32 %conv8.i.i, %conv10.i.i
  %and.i21.i.i = tail call i32 @llvm.smin.i32(i32 %sub.i20.i.i, i32 0)
  %sub2.i22.i.i = tail call i32 @llvm.smax.i32(i32 %conv8.i.i, i32 %conv10.i.i)
  %add.i23.i.i = add nsw i32 %and.i21.i.i, %conv10.i.i
  %sub7.i24.i.i = tail call i32 @llvm.smax.i32(i32 %add.i23.i.i, i32 %conv12.i.i)
  %sub8.i25.i.i = sub nsw i32 %sub2.i22.i.i, %sub7.i24.i.i
  %and11.i26.i.i = tail call i32 @llvm.smin.i32(i32 %sub8.i25.i.i, i32 0)
  %add12.i27.i.i = add nsw i32 %and11.i26.i.i, %sub7.i24.i.i
  %conv14.i.i = trunc i32 %add12.i27.i.i to i16
  %arrayidx15.i.i = getelementptr inbounds i8, ptr %mv, i64 2
  store i16 %conv14.i.i, ptr %arrayidx15.i.i, align 2
  br label %if.end

if.then62.i:                                      ; preds = %if.end.i
  br i1 %cmp50.i, label %if.then65.i, label %if.else66.i

if.then65.i:                                      ; preds = %if.then62.i
  store i32 %2, ptr %mv, align 4
  br label %if.end

if.else66.i:                                      ; preds = %if.then62.i
  br i1 %cmp52.i, label %if.then69.i, label %if.else70.i

if.then69.i:                                      ; preds = %if.else66.i
  store i32 %3, ptr %mv, align 4
  br label %if.end

if.else70.i:                                      ; preds = %if.else66.i
  %10 = load i32, ptr %mv_c.0.i, align 4
  store i32 %10, ptr %mv, align 4
  br label %if.end

if.end:                                           ; preds = %if.else70.i, %if.then69.i, %if.then65.i, %median.i, %if.then
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @x264_mb_predict_mv_direct16x16(ptr noundef %h, ptr noundef writeonly %b_changed) local_unnamed_addr #2 {
entry:
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %h, i64 404
  %0 = load i32, ptr %i_direct_mv_pred, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cleanup376, label %if.else

if.else:                                          ; preds = %entry
  %b_direct_spatial_mv_pred = getelementptr inbounds i8, ptr %h, i64 7304
  %1 = load i32, ptr %b_direct_spatial_mv_pred, align 8
  %tobool.not = icmp eq i32 %1, 0
  %i_mb_xy.i482 = getelementptr inbounds i8, ptr %h, i64 16392
  %2 = load i32, ptr %i_mb_xy.i482, align 8
  %idxprom.i483 = sext i32 %2 to i64
  br i1 %tobool.not, label %if.else2, label %if.then1

if.then1:                                         ; preds = %if.else
  %fref1.i = getelementptr inbounds i8, ptr %h, i64 14864
  %3 = load ptr, ptr %fref1.i, align 16
  %ref1.i = getelementptr inbounds i8, ptr %3, i64 6712
  %4 = load ptr, ptr %ref1.i, align 8
  %i_b8_xy.i = getelementptr inbounds i8, ptr %h, i64 16396
  %5 = load i32, ptr %i_b8_xy.i, align 4
  %idxprom.i = sext i32 %5 to i64
  %arrayidx7.i = getelementptr inbounds i8, ptr %3, i64 6720
  %6 = load ptr, ptr %arrayidx7.i, align 8
  %mv14.i = getelementptr inbounds i8, ptr %3, i64 3552
  %7 = load ptr, ptr %mv14.i, align 16
  %i_b4_xy.i = getelementptr inbounds i8, ptr %h, i64 16400
  %8 = load i32, ptr %i_b4_xy.i, align 16
  %arrayidx22.i = getelementptr inbounds i8, ptr %3, i64 3560
  %9 = load ptr, ptr %arrayidx22.i, align 8
  %mb_type.i = getelementptr inbounds i8, ptr %3, i64 3536
  %10 = load ptr, ptr %mb_type.i, align 16
  %arrayidx31.i = getelementptr inbounds i8, ptr %10, i64 %idxprom.i483
  %11 = load i8, ptr %arrayidx31.i, align 1
  %mb_partition.i = getelementptr inbounds i8, ptr %3, i64 3544
  %12 = load ptr, ptr %mb_partition.i, align 8
  %arrayidx37.i = getelementptr inbounds i8, ptr %12, i64 %idxprom.i483
  %13 = load i8, ptr %arrayidx37.i, align 1
  %conv38.i = zext i8 %13 to i32
  %i_partition.i = getelementptr inbounds i8, ptr %h, i64 17388
  store i32 %conv38.i, ptr %i_partition.i, align 4
  %mv49.i = getelementptr inbounds i8, ptr %h, i64 25200
  %arrayidx45.i = getelementptr inbounds i8, ptr %h, i64 25131
  %14 = load i8, ptr %arrayidx45.i, align 1
  %conv46.i = sext i8 %14 to i32
  %arrayidx52.i = getelementptr inbounds i8, ptr %h, i64 25244
  %arrayidx58.i = getelementptr inbounds i8, ptr %h, i64 25124
  %15 = load i8, ptr %arrayidx58.i, align 4
  %conv59.i = sext i8 %15 to i32
  %arrayidx65.i = getelementptr inbounds i8, ptr %h, i64 25216
  %arrayidx72.i = getelementptr inbounds i8, ptr %h, i64 25128
  %16 = load i8, ptr %arrayidx72.i, align 8
  %arrayidx79.i = getelementptr inbounds i8, ptr %h, i64 25232
  %cmp81.i = icmp eq i8 %16, -2
  br i1 %cmp81.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then1
  %arrayidx88.i = getelementptr inbounds i8, ptr %h, i64 25123
  %17 = load i8, ptr %arrayidx88.i, align 1
  %arrayidx95.i = getelementptr inbounds i8, ptr %h, i64 25212
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then1
  %mv_c.0.i = phi ptr [ %arrayidx95.i, %if.then.i ], [ %arrayidx79.i, %if.then1 ]
  %i_refc.0.in.i = phi i8 [ %17, %if.then.i ], [ %16, %if.then1 ]
  %i_refc.0.i = sext i8 %i_refc.0.in.i to i32
  %cond.i = tail call i32 @llvm.umin.i32(i32 %conv59.i, i32 %i_refc.0.i)
  %conv46.cond.i = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %conv46.i)
  %cmp111.i = icmp slt i32 %conv46.cond.i, 0
  br i1 %cmp111.i, label %if.end151.i, label %if.else.i

if.else.i:                                        ; preds = %if.end.i
  %cmp117.i = icmp uge i32 %cond.i, %conv46.i
  %conv118.i = zext i1 %cmp117.i to i32
  %cmp119.i = icmp eq i32 %conv46.cond.i, %conv59.i
  %conv120.i = zext i1 %cmp119.i to i32
  %add.i = add nuw nsw i32 %conv120.i, %conv118.i
  %cmp121.i = icmp eq i32 %conv46.cond.i, %i_refc.0.i
  %conv122.i = zext i1 %cmp121.i to i32
  %add123.i = add nuw nsw i32 %add.i, %conv122.i
  %cmp124.i = icmp ugt i32 %add123.i, 1
  br i1 %cmp124.i, label %if.then126.i, label %if.else130.i

if.then126.i:                                     ; preds = %if.else.i
  %18 = load i16, ptr %arrayidx52.i, align 2
  %conv.i.i = sext i16 %18 to i32
  %19 = load i16, ptr %arrayidx65.i, align 2
  %conv2.i.i = sext i16 %19 to i32
  %20 = load i16, ptr %mv_c.0.i, align 2
  %conv4.i.i = sext i16 %20 to i32
  %sub.i.i.i = sub nsw i32 %conv.i.i, %conv2.i.i
  %and.i.i.i = tail call i32 @llvm.smin.i32(i32 %sub.i.i.i, i32 0)
  %sub2.i.i.i = tail call i32 @llvm.smax.i32(i32 %conv.i.i, i32 %conv2.i.i)
  %add.i.i.i = add nsw i32 %and.i.i.i, %conv2.i.i
  %sub7.i.i.i = tail call i32 @llvm.smax.i32(i32 %add.i.i.i, i32 %conv4.i.i)
  %sub8.i.i.i = sub nsw i32 %sub2.i.i.i, %sub7.i.i.i
  %and11.i.i.i = tail call i32 @llvm.smin.i32(i32 %sub8.i.i.i, i32 0)
  %add12.i.i.i = add nsw i32 %and11.i.i.i, %sub7.i.i.i
  %arrayidx7.i.i = getelementptr inbounds i8, ptr %h, i64 25246
  %21 = load i16, ptr %arrayidx7.i.i, align 2
  %conv8.i.i = sext i16 %21 to i32
  %arrayidx9.i.i = getelementptr inbounds i8, ptr %h, i64 25218
  %22 = load i16, ptr %arrayidx9.i.i, align 2
  %conv10.i.i = sext i16 %22 to i32
  %arrayidx11.i.i = getelementptr inbounds i8, ptr %mv_c.0.i, i64 2
  %23 = load i16, ptr %arrayidx11.i.i, align 2
  %conv12.i.i = sext i16 %23 to i32
  %sub.i20.i.i = sub nsw i32 %conv8.i.i, %conv10.i.i
  %and.i21.i.i = tail call i32 @llvm.smin.i32(i32 %sub.i20.i.i, i32 0)
  %sub2.i22.i.i = tail call i32 @llvm.smax.i32(i32 %conv8.i.i, i32 %conv10.i.i)
  %add.i23.i.i = add nsw i32 %and.i21.i.i, %conv10.i.i
  %sub7.i24.i.i = tail call i32 @llvm.smax.i32(i32 %add.i23.i.i, i32 %conv12.i.i)
  %sub8.i25.i.i = sub nsw i32 %sub2.i22.i.i, %sub7.i24.i.i
  %and11.i26.i.i = tail call i32 @llvm.smin.i32(i32 %sub8.i25.i.i, i32 0)
  %add12.i27.i.i = add nsw i32 %and11.i26.i.i, %sub7.i24.i.i
  %conv14.i.i = trunc i32 %add12.i27.i.i to i16
  br label %if.end151.i

if.else130.i:                                     ; preds = %if.else.i
  br i1 %cmp117.i, label %if.then133.i, label %if.else137.i

if.then133.i:                                     ; preds = %if.else130.i
  %24 = load i32, ptr %arrayidx52.i, align 4
  %mv.sroa.0.sroa.9.0.extract.shift498.i = lshr i32 %24, 16
  %mv.sroa.0.sroa.9.0.extract.trunc499.i = trunc nuw i32 %mv.sroa.0.sroa.9.0.extract.shift498.i to i16
  br label %if.end151.i

if.else137.i:                                     ; preds = %if.else130.i
  br i1 %cmp119.i, label %if.then140.i, label %if.else144.i

if.then140.i:                                     ; preds = %if.else137.i
  %25 = load i32, ptr %arrayidx65.i, align 4
  %mv.sroa.0.sroa.9.0.extract.shift496.i = lshr i32 %25, 16
  %mv.sroa.0.sroa.9.0.extract.trunc497.i = trunc nuw i32 %mv.sroa.0.sroa.9.0.extract.shift496.i to i16
  br label %if.end151.i

if.else144.i:                                     ; preds = %if.else137.i
  %26 = load i32, ptr %mv_c.0.i, align 4
  %mv.sroa.0.sroa.9.0.extract.shift.i = lshr i32 %26, 16
  %mv.sroa.0.sroa.9.0.extract.trunc.i = trunc nuw i32 %mv.sroa.0.sroa.9.0.extract.shift.i to i16
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.else144.i, %if.then140.i, %if.then133.i, %if.then126.i, %if.end.i
  %mv.sroa.0.sroa.9.0.i = phi i16 [ %conv14.i.i, %if.then126.i ], [ %mv.sroa.0.sroa.9.0.extract.trunc499.i, %if.then133.i ], [ %mv.sroa.0.sroa.9.0.extract.trunc497.i, %if.then140.i ], [ %mv.sroa.0.sroa.9.0.extract.trunc.i, %if.else144.i ], [ 0, %if.end.i ]
  %mv.sroa.0.sroa.0.0.i = phi i32 [ %add12.i.i.i, %if.then126.i ], [ %24, %if.then133.i ], [ %25, %if.then140.i ], [ %26, %if.else144.i ], [ 0, %if.end.i ]
  %i_ref.0.i = phi i32 [ %conv46.cond.i, %if.then126.i ], [ %conv46.cond.i, %if.then133.i ], [ %conv59.i, %if.then140.i ], [ %conv46.cond.i, %if.else144.i ], [ -1, %if.end.i ]
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %h, i64 25132
  %conv.i404.i = and i32 %i_ref.0.i, 255
  %cond14.i.i.i = mul nuw i32 %conv.i404.i, 16843009
  store i32 %cond14.i.i.i, ptr %arrayidx4.i.i, align 4
  %add.ptr49.i.i.i = getelementptr inbounds i8, ptr %h, i64 25140
  store i32 %cond14.i.i.i, ptr %add.ptr49.i.i.i, align 4
  %add.ptr56.i.i.i = getelementptr inbounds i8, ptr %h, i64 25148
  store i32 %cond14.i.i.i, ptr %add.ptr56.i.i.i, align 4
  %add.ptr59.i.i.i = getelementptr inbounds i8, ptr %h, i64 25156
  store i32 %cond14.i.i.i, ptr %add.ptr59.i.i.i, align 4
  %mv.sroa.0.sroa.9.0.insert.ext.i = zext i16 %mv.sroa.0.sroa.9.0.i to i32
  %mv.sroa.0.sroa.9.0.insert.shift.i = shl nuw i32 %mv.sroa.0.sroa.9.0.insert.ext.i, 16
  %mv.sroa.0.sroa.0.0.insert.ext.i = and i32 %mv.sroa.0.sroa.0.0.i, 65535
  %mv.sroa.0.sroa.0.0.insert.insert.i = or disjoint i32 %mv.sroa.0.sroa.9.0.insert.shift.i, %mv.sroa.0.sroa.0.0.insert.ext.i
  %arrayidx4.i407.i = getelementptr inbounds i8, ptr %h, i64 25248
  %conv15.i.i408.i = zext i32 %mv.sroa.0.sroa.0.0.insert.insert.i to i64
  %add.i.i409.i = mul nuw i64 %conv15.i.i408.i, 4294967297
  store i64 %add.i.i409.i, ptr %arrayidx4.i407.i, align 8
  %add.ptr95.i.i.i = getelementptr inbounds i8, ptr %h, i64 25256
  store i64 %add.i.i409.i, ptr %add.ptr95.i.i.i, align 8
  %add.ptr98.i.i.i = getelementptr inbounds i8, ptr %h, i64 25280
  store i64 %add.i.i409.i, ptr %add.ptr98.i.i.i, align 8
  %add.ptr103.i.i.i = getelementptr inbounds i8, ptr %h, i64 25288
  store i64 %add.i.i409.i, ptr %add.ptr103.i.i.i, align 8
  %add.ptr106.i.i.i = getelementptr inbounds i8, ptr %h, i64 25312
  store i64 %add.i.i409.i, ptr %add.ptr106.i.i.i, align 8
  %add.ptr95.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25320
  store i64 %add.i.i409.i, ptr %add.ptr95.i.i.1.i, align 8
  %add.ptr98.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25344
  store i64 %add.i.i409.i, ptr %add.ptr98.i.i.1.i, align 8
  %add.ptr103.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25352
  store i64 %add.i.i409.i, ptr %add.ptr103.i.i.1.i, align 8
  %arrayidx45.1.i = getelementptr inbounds i8, ptr %h, i64 25171
  %27 = load i8, ptr %arrayidx45.1.i, align 1
  %conv46.1.i = sext i8 %27 to i32
  %arrayidx52.1.i = getelementptr inbounds i8, ptr %h, i64 25404
  %arrayidx58.1.i = getelementptr inbounds i8, ptr %h, i64 25164
  %28 = load i8, ptr %arrayidx58.1.i, align 4
  %conv59.1.i = sext i8 %28 to i32
  %arrayidx65.1.i = getelementptr inbounds i8, ptr %h, i64 25376
  %arrayidx72.1.i = getelementptr inbounds i8, ptr %h, i64 25168
  %29 = load i8, ptr %arrayidx72.1.i, align 8
  %arrayidx79.1.i = getelementptr inbounds i8, ptr %h, i64 25392
  %cmp81.1.i = icmp eq i8 %29, -2
  br i1 %cmp81.1.i, label %if.then.1.i, label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end151.i
  %arrayidx88.1.i = getelementptr inbounds i8, ptr %h, i64 25163
  %30 = load i8, ptr %arrayidx88.1.i, align 1
  %arrayidx95.1.i = getelementptr inbounds i8, ptr %h, i64 25372
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end151.i
  %mv_c.0.1.i = phi ptr [ %arrayidx95.1.i, %if.then.1.i ], [ %arrayidx79.1.i, %if.end151.i ]
  %i_refc.0.in.1.i = phi i8 [ %30, %if.then.1.i ], [ %29, %if.end151.i ]
  %i_refc.0.1.i = sext i8 %i_refc.0.in.1.i to i32
  %cond.1.i = tail call i32 @llvm.umin.i32(i32 %conv59.1.i, i32 %i_refc.0.1.i)
  %conv46.cond.1.i = tail call i32 @llvm.umin.i32(i32 %cond.1.i, i32 %conv46.1.i)
  %cmp111.1.i = icmp slt i32 %conv46.cond.1.i, 0
  br i1 %cmp111.1.i, label %if.end151.1.i, label %if.else.1.i

if.else.1.i:                                      ; preds = %if.end.1.i
  %cmp117.1.i = icmp uge i32 %cond.1.i, %conv46.1.i
  %conv118.1.i = zext i1 %cmp117.1.i to i32
  %cmp119.1.i = icmp eq i32 %conv46.cond.1.i, %conv59.1.i
  %conv120.1.i = zext i1 %cmp119.1.i to i32
  %add.1.i = add nuw nsw i32 %conv120.1.i, %conv118.1.i
  %cmp121.1.i = icmp eq i32 %conv46.cond.1.i, %i_refc.0.1.i
  %conv122.1.i = zext i1 %cmp121.1.i to i32
  %add123.1.i = add nuw nsw i32 %add.1.i, %conv122.1.i
  %cmp124.1.i = icmp ugt i32 %add123.1.i, 1
  br i1 %cmp124.1.i, label %if.then126.1.i, label %if.else130.1.i

if.else130.1.i:                                   ; preds = %if.else.1.i
  br i1 %cmp117.1.i, label %if.then133.1.i, label %if.else137.1.i

if.else137.1.i:                                   ; preds = %if.else130.1.i
  br i1 %cmp119.1.i, label %if.then140.1.i, label %if.else144.1.i

if.else144.1.i:                                   ; preds = %if.else137.1.i
  %31 = load i32, ptr %mv_c.0.1.i, align 4
  %mv.sroa.11.sroa.9.0.extract.shift.i = lshr i32 %31, 16
  %mv.sroa.11.sroa.9.0.extract.trunc.i = trunc nuw i32 %mv.sroa.11.sroa.9.0.extract.shift.i to i16
  br label %if.end151.1.i

if.then140.1.i:                                   ; preds = %if.else137.1.i
  %32 = load i32, ptr %arrayidx65.1.i, align 4
  %mv.sroa.11.sroa.9.0.extract.shift483.i = lshr i32 %32, 16
  %mv.sroa.11.sroa.9.0.extract.trunc484.i = trunc nuw i32 %mv.sroa.11.sroa.9.0.extract.shift483.i to i16
  br label %if.end151.1.i

if.then133.1.i:                                   ; preds = %if.else130.1.i
  %33 = load i32, ptr %arrayidx52.1.i, align 4
  %mv.sroa.11.sroa.9.0.extract.shift485.i = lshr i32 %33, 16
  %mv.sroa.11.sroa.9.0.extract.trunc486.i = trunc nuw i32 %mv.sroa.11.sroa.9.0.extract.shift485.i to i16
  br label %if.end151.1.i

if.then126.1.i:                                   ; preds = %if.else.1.i
  %34 = load i16, ptr %arrayidx52.1.i, align 2
  %conv.i.1.i = sext i16 %34 to i32
  %35 = load i16, ptr %arrayidx65.1.i, align 2
  %conv2.i.1.i = sext i16 %35 to i32
  %36 = load i16, ptr %mv_c.0.1.i, align 2
  %conv4.i.1.i = sext i16 %36 to i32
  %sub.i.i.1.i = sub nsw i32 %conv.i.1.i, %conv2.i.1.i
  %and.i.i.1.i = tail call i32 @llvm.smin.i32(i32 %sub.i.i.1.i, i32 0)
  %sub2.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %conv.i.1.i, i32 %conv2.i.1.i)
  %add.i.i.1.i = add nsw i32 %and.i.i.1.i, %conv2.i.1.i
  %sub7.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %add.i.i.1.i, i32 %conv4.i.1.i)
  %sub8.i.i.1.i = sub nsw i32 %sub2.i.i.1.i, %sub7.i.i.1.i
  %and11.i.i.1.i = tail call i32 @llvm.smin.i32(i32 %sub8.i.i.1.i, i32 0)
  %add12.i.i.1.i = add nsw i32 %and11.i.i.1.i, %sub7.i.i.1.i
  %arrayidx7.i.1.i = getelementptr inbounds i8, ptr %h, i64 25406
  %37 = load i16, ptr %arrayidx7.i.1.i, align 2
  %conv8.i.1.i = sext i16 %37 to i32
  %arrayidx9.i.1.i = getelementptr inbounds i8, ptr %h, i64 25378
  %38 = load i16, ptr %arrayidx9.i.1.i, align 2
  %conv10.i.1.i = sext i16 %38 to i32
  %arrayidx11.i.1.i = getelementptr inbounds i8, ptr %mv_c.0.1.i, i64 2
  %39 = load i16, ptr %arrayidx11.i.1.i, align 2
  %conv12.i.1.i = sext i16 %39 to i32
  %sub.i20.i.1.i = sub nsw i32 %conv8.i.1.i, %conv10.i.1.i
  %and.i21.i.1.i = tail call i32 @llvm.smin.i32(i32 %sub.i20.i.1.i, i32 0)
  %sub2.i22.i.1.i = tail call i32 @llvm.smax.i32(i32 %conv8.i.1.i, i32 %conv10.i.1.i)
  %add.i23.i.1.i = add nsw i32 %and.i21.i.1.i, %conv10.i.1.i
  %sub7.i24.i.1.i = tail call i32 @llvm.smax.i32(i32 %add.i23.i.1.i, i32 %conv12.i.1.i)
  %sub8.i25.i.1.i = sub nsw i32 %sub2.i22.i.1.i, %sub7.i24.i.1.i
  %and11.i26.i.1.i = tail call i32 @llvm.smin.i32(i32 %sub8.i25.i.1.i, i32 0)
  %add12.i27.i.1.i = add nsw i32 %and11.i26.i.1.i, %sub7.i24.i.1.i
  %conv14.i.1.i = trunc i32 %add12.i27.i.1.i to i16
  br label %if.end151.1.i

if.end151.1.i:                                    ; preds = %if.then126.1.i, %if.then133.1.i, %if.then140.1.i, %if.else144.1.i, %if.end.1.i
  %mv.sroa.11.sroa.9.0.i = phi i16 [ %conv14.i.1.i, %if.then126.1.i ], [ %mv.sroa.11.sroa.9.0.extract.trunc486.i, %if.then133.1.i ], [ %mv.sroa.11.sroa.9.0.extract.trunc484.i, %if.then140.1.i ], [ %mv.sroa.11.sroa.9.0.extract.trunc.i, %if.else144.1.i ], [ 0, %if.end.1.i ]
  %mv.sroa.11.sroa.0.0.i = phi i32 [ %add12.i.i.1.i, %if.then126.1.i ], [ %33, %if.then133.1.i ], [ %32, %if.then140.1.i ], [ %31, %if.else144.1.i ], [ 0, %if.end.1.i ]
  %i_ref.0.1.i = phi i32 [ %conv46.cond.1.i, %if.then126.1.i ], [ %conv46.cond.1.i, %if.then133.1.i ], [ %conv59.1.i, %if.then140.1.i ], [ %conv46.cond.1.i, %if.else144.1.i ], [ -1, %if.end.1.i ]
  %arrayidx4.i.1.i = getelementptr inbounds i8, ptr %h, i64 25172
  %conv.i404.1.i = and i32 %i_ref.0.1.i, 255
  %cond14.i.i.1.i = mul nuw i32 %conv.i404.1.i, 16843009
  store i32 %cond14.i.i.1.i, ptr %arrayidx4.i.1.i, align 4
  %add.ptr49.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25180
  store i32 %cond14.i.i.1.i, ptr %add.ptr49.i.i.1.i, align 4
  %add.ptr56.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25188
  store i32 %cond14.i.i.1.i, ptr %add.ptr56.i.i.1.i, align 4
  %add.ptr59.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25196
  store i32 %cond14.i.i.1.i, ptr %add.ptr59.i.i.1.i, align 4
  %mv.sroa.11.sroa.9.0.insert.ext487.i = zext i16 %mv.sroa.11.sroa.9.0.i to i32
  %mv.sroa.11.sroa.9.0.insert.shift488.i = shl nuw i32 %mv.sroa.11.sroa.9.0.insert.ext487.i, 16
  %mv.sroa.11.sroa.0.0.insert.ext480.i = and i32 %mv.sroa.11.sroa.0.0.i, 65535
  %mv.sroa.11.sroa.0.0.insert.insert482.i = or disjoint i32 %mv.sroa.11.sroa.9.0.insert.shift488.i, %mv.sroa.11.sroa.0.0.insert.ext480.i
  %arrayidx4.i407.1.i = getelementptr inbounds i8, ptr %h, i64 25408
  %conv15.i.i408.1.i = zext i32 %mv.sroa.11.sroa.0.0.insert.insert482.i to i64
  %add.i.i409.1.i = mul nuw i64 %conv15.i.i408.1.i, 4294967297
  store i64 %add.i.i409.1.i, ptr %arrayidx4.i407.1.i, align 8
  %add.ptr95.i.i.1474.i = getelementptr inbounds i8, ptr %h, i64 25416
  store i64 %add.i.i409.1.i, ptr %add.ptr95.i.i.1474.i, align 8
  %add.ptr98.i.i.1475.i = getelementptr inbounds i8, ptr %h, i64 25440
  store i64 %add.i.i409.1.i, ptr %add.ptr98.i.i.1475.i, align 8
  %add.ptr103.i.i.1476.i = getelementptr inbounds i8, ptr %h, i64 25448
  store i64 %add.i.i409.1.i, ptr %add.ptr103.i.i.1476.i, align 8
  %add.ptr106.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25472
  store i64 %add.i.i409.1.i, ptr %add.ptr106.i.i.1.i, align 8
  %add.ptr95.i.i.1.1.i = getelementptr inbounds i8, ptr %h, i64 25480
  store i64 %add.i.i409.1.i, ptr %add.ptr95.i.i.1.1.i, align 8
  %add.ptr98.i.i.1.1.i = getelementptr inbounds i8, ptr %h, i64 25504
  store i64 %add.i.i409.1.i, ptr %add.ptr98.i.i.1.1.i, align 8
  %add.ptr103.i.i.1.1.i = getelementptr inbounds i8, ptr %h, i64 25512
  store i64 %add.i.i409.1.i, ptr %add.ptr103.i.i.1.1.i, align 8
  %arrayidx3.i = getelementptr inbounds i8, ptr %4, i64 %idxprom.i
  %arrayidx11.i = getelementptr inbounds i8, ptr %6, i64 %idxprom.i
  %idxprom17.i = sext i32 %8 to i64
  %40 = trunc nsw i32 %i_ref.0.1.i to i16
  %ref.sroa.5.0.insert.ext.i = shl nsw i16 %40, 8
  %41 = trunc nsw i32 %i_ref.0.i to i16
  %ref.sroa.0.0.insert.ext.i = and i16 %41, 128
  %ref.sroa.5.0.insert.ext.masked.i = and i16 %ref.sroa.5.0.insert.ext.i, -32768
  %42 = or disjoint i16 %ref.sroa.5.0.insert.ext.masked.i, %ref.sroa.0.0.insert.ext.i
  %cmp161.i = icmp eq i16 %42, -32640
  br i1 %cmp161.i, label %if.then163.i, label %if.end164.i

if.then163.i:                                     ; preds = %if.end151.1.i
  store i32 0, ptr %arrayidx4.i.i, align 4
  store i32 0, ptr %add.ptr49.i.i.i, align 4
  store i32 0, ptr %add.ptr56.i.i.i, align 4
  store i32 0, ptr %add.ptr59.i.i.i, align 4
  store i32 0, ptr %arrayidx4.i.1.i, align 4
  store i32 0, ptr %add.ptr49.i.i.1.i, align 4
  store i32 0, ptr %add.ptr56.i.i.1.i, align 4
  store i32 0, ptr %add.ptr59.i.i.1.i, align 4
  br label %if.end4

if.end164.i:                                      ; preds = %if.end151.1.i
  %i_threads.i = getelementptr inbounds i8, ptr %h, i64 4
  %43 = load i32, ptr %i_threads.i, align 4
  %cmp165.i = icmp sgt i32 %43, 1
  br i1 %cmp165.i, label %land.lhs.true.i, label %if.end183.i

land.lhs.true.i:                                  ; preds = %if.end164.i
  %conv169.i = sext i16 %mv.sroa.0.sroa.9.0.i to i32
  %arrayidx171.i = getelementptr inbounds i8, ptr %h, i64 16468
  %44 = load i32, ptr %arrayidx171.i, align 4
  %cmp172.i = icmp slt i32 %44, %conv169.i
  %conv176.i = sext i16 %mv.sroa.11.sroa.9.0.i to i32
  %cmp180.i = icmp slt i32 %44, %conv176.i
  %or.cond.i = select i1 %cmp172.i, i1 true, i1 %cmp180.i
  br i1 %or.cond.i, label %cleanup376, label %if.end183.i

if.end183.i:                                      ; preds = %land.lhs.true.i, %if.end164.i
  %mv.sroa.11.0.insert.shift.i = shl nuw i64 %conv15.i.i408.1.i, 32
  %mv.sroa.0.0.insert.insert.i = or disjoint i64 %mv.sroa.11.0.insert.shift.i, %conv15.i.i408.i
  %tobool.i = icmp eq i64 %mv.sroa.0.0.insert.insert.i, 0
  %45 = icmp ult i8 %11, 4
  %or.cond307.i = select i1 %tobool.i, i1 true, i1 %45
  br i1 %or.cond307.i, label %if.end4, label %lor.lhs.false197.i

lor.lhs.false197.i:                               ; preds = %if.end183.i
  %tobool200.i = icmp ne i32 %i_ref.0.i, 0
  %tobool204.i = icmp ne i32 %i_ref.0.1.i, 0
  %or.cond308.i = select i1 %tobool200.i, i1 %tobool204.i, i1 false
  br i1 %or.cond308.i, label %if.end4, label %if.end206.i

if.end206.i:                                      ; preds = %lor.lhs.false197.i
  %sub.i = sub nsw i32 16, %conv38.i
  %add207.i = sub nsw i32 17, %conv38.i
  %cmp208.i = icmp eq i8 %13, 14
  %add210.i = select i1 %cmp208.i, i32 2, i32 1
  %shr214.i = ashr i32 %sub.i, 1
  %shr215.i = lshr i32 4, %shr214.i
  %cmp217471.i = icmp ult i8 %13, 17
  br i1 %cmp217471.i, label %for.body220.lr.ph.i, label %if.end4

for.body220.lr.ph.i:                              ; preds = %if.end206.i
  %and212.i = and i32 %sub.i, 1
  %shr.i = lshr exact i32 4, %and212.i
  %i_b8_stride.i = getelementptr inbounds i8, ptr %h, i64 16376
  %i_b4_stride.i = getelementptr inbounds i8, ptr %h, i64 16380
  %cmp271.i = icmp eq i32 %i_ref.0.i, 0
  %mul5.i.i = shl nuw nsw i32 %shr.i, 2
  %46 = add nsw i32 %mul5.i.i, -2
  %47 = tail call i32 @llvm.fshl.i32(i32 2, i32 %46, i32 31)
  %cmp67.i.i.i = icmp eq i32 %shr214.i, 2
  %cmp74.i.i.i = icmp eq i32 %shr214.i, 1
  %cmp279.i = icmp eq i32 %i_ref.0.1.i, 0
  %48 = add nsw i32 %shr215.i, -2
  %49 = lshr i32 %48, 1
  %50 = add nuw i32 %49, 1
  %xtraiter = and i32 %50, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %51 = icmp ult i32 %48, 14
  %xtraiter569 = and i32 %50, 7
  %lcmp.mod570.not = icmp eq i32 %xtraiter569, 0
  %52 = icmp ult i32 %48, 14
  br label %for.body220.i

for.body220.i:                                    ; preds = %cleanup.i, %for.body220.lr.ph.i
  %i8.0472.i = phi i32 [ 0, %for.body220.lr.ph.i ], [ %add291.i, %cleanup.i ]
  %and221.i = and i32 %i8.0472.i, 1
  %shr222.i = lshr i32 %i8.0472.i, 1
  %53 = load i32, ptr %i_b8_stride.i, align 8
  %mul.i = mul nsw i32 %53, %shr222.i
  %add224.i = add nsw i32 %mul.i, %and221.i
  %54 = load i32, ptr %i_b4_stride.i, align 4
  %mul226.i = mul nsw i32 %54, %shr222.i
  %add227.i = add nsw i32 %mul226.i, %and221.i
  %mul228.i = mul nsw i32 %add227.i, 3
  %idxprom229.i = sext i32 %add224.i to i64
  %arrayidx230.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 %idxprom229.i
  %55 = load i8, ptr %arrayidx230.i, align 1
  %cmp232.i = icmp eq i8 %55, 0
  br i1 %cmp232.i, label %if.end250.i, label %if.else235.i

if.else235.i:                                     ; preds = %for.body220.i
  %cmp239.i = icmp slt i8 %55, 0
  br i1 %cmp239.i, label %land.lhs.true241.i, label %cleanup.i

land.lhs.true241.i:                               ; preds = %if.else235.i
  %arrayidx243.i = getelementptr inbounds i8, ptr %arrayidx11.i, i64 %idxprom229.i
  %56 = load i8, ptr %arrayidx243.i, align 1
  %cmp245.i = icmp eq i8 %56, 0
  br i1 %cmp245.i, label %if.end250.i, label %cleanup.i

if.end250.i:                                      ; preds = %land.lhs.true241.i, %for.body220.i
  %.pn.i = phi ptr [ %7, %for.body220.i ], [ %9, %land.lhs.true241.i ]
  %idx.0.sroa.phi.sroa.speculated.i = getelementptr inbounds [2 x i16], ptr %.pn.i, i64 %idxprom17.i
  %idxprom253.i = sext i32 %mul228.i to i64
  %arrayidx254.i = getelementptr inbounds [2 x i16], ptr %idx.0.sroa.phi.sroa.speculated.i, i64 %idxprom253.i
  %57 = load i16, ptr %arrayidx254.i, align 2
  %58 = tail call i16 @llvm.abs.i16(i16 %57, i1 false)
  %cmp257.i = icmp ult i16 %58, 2
  br i1 %cmp257.i, label %land.lhs.true259.i, label %cleanup.i

land.lhs.true259.i:                               ; preds = %if.end250.i
  %arrayidx264.i = getelementptr inbounds i8, ptr %arrayidx254.i, i64 2
  %59 = load i16, ptr %arrayidx264.i, align 2
  %60 = tail call i16 @llvm.abs.i16(i16 %59, i1 false)
  %cmp266.i = icmp ult i16 %60, 2
  br i1 %cmp266.i, label %if.then268.i, label %cleanup.i

if.then268.i:                                     ; preds = %land.lhs.true259.i
  br i1 %cmp271.i, label %if.then273.i, label %if.end276.i

if.then273.i:                                     ; preds = %if.then268.i
  %mul274.i = shl nuw nsw i32 %and221.i, 1
  %mul275.i = shl i32 %i8.0472.i, 3
  %add.i.i = or disjoint i32 %mul274.i, %mul275.i
  %add2.i.i = or i32 %add.i.i, 12
  %idxprom3.i.i = sext i32 %add2.i.i to i64
  %arrayidx4.i422.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv49.i, i64 0, i64 0, i64 %idxprom3.i.i
  switch i32 %47, label %if.end276.i [
    i32 7, label %do.body.i.i426.i.preheader
    i32 3, label %if.then63.i.i.i
  ]

do.body.i.i426.i.preheader:                       ; preds = %if.then273.i
  br i1 %lcmp.mod.not, label %do.body.i.i426.i.prol.loopexit, label %do.body.i.i426.i.prol

do.body.i.i426.i.prol:                            ; preds = %do.body.i.i426.i.preheader, %do.body.i.i426.i.prol
  %d.0.i.i427.i.prol = phi ptr [ %add.ptr106.i.i433.i.prol, %do.body.i.i426.i.prol ], [ %arrayidx4.i422.i, %do.body.i.i426.i.preheader ]
  %h.addr.0.i.i428.i.prol = phi i32 [ %sub.i.i432.i.prol, %do.body.i.i426.i.prol ], [ %shr215.i, %do.body.i.i426.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %do.body.i.i426.i.prol ], [ 0, %do.body.i.i426.i.preheader ]
  %add.ptr98.i.i430.i.prol = getelementptr inbounds i8, ptr %d.0.i.i427.i.prol, i64 32
  %sub.i.i432.i.prol = add nsw i32 %h.addr.0.i.i428.i.prol, -2
  %add.ptr106.i.i433.i.prol = getelementptr inbounds i8, ptr %d.0.i.i427.i.prol, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %d.0.i.i427.i.prol, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.prol, i8 0, i64 16, i1 false)
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %do.body.i.i426.i.prol.loopexit, label %do.body.i.i426.i.prol, !llvm.loop !5

do.body.i.i426.i.prol.loopexit:                   ; preds = %do.body.i.i426.i.prol, %do.body.i.i426.i.preheader
  %d.0.i.i427.i.unr = phi ptr [ %arrayidx4.i422.i, %do.body.i.i426.i.preheader ], [ %add.ptr106.i.i433.i.prol, %do.body.i.i426.i.prol ]
  %h.addr.0.i.i428.i.unr = phi i32 [ %shr215.i, %do.body.i.i426.i.preheader ], [ %sub.i.i432.i.prol, %do.body.i.i426.i.prol ]
  br i1 %51, label %if.end276.i, label %do.body.i.i426.i

if.then63.i.i.i:                                  ; preds = %if.then273.i
  store i64 0, ptr %arrayidx4.i422.i, align 8
  br i1 %cmp67.i.i.i, label %if.end276.i, label %if.end70.i.i.i

if.end70.i.i.i:                                   ; preds = %if.then63.i.i.i
  %add.ptr73.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i422.i, i64 32
  store i64 0, ptr %add.ptr73.i.i.i, align 8
  br i1 %cmp74.i.i.i, label %if.end276.i, label %if.end77.i.i.i

if.end77.i.i.i:                                   ; preds = %if.end70.i.i.i
  %add.ptr80.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i422.i, i64 64
  store i64 0, ptr %add.ptr80.i.i.i, align 8
  %add.ptr83.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i422.i, i64 96
  store i64 0, ptr %add.ptr83.i.i.i, align 8
  br label %if.end276.i

do.body.i.i426.i:                                 ; preds = %do.body.i.i426.i.prol.loopexit, %do.body.i.i426.i
  %d.0.i.i427.i = phi ptr [ %add.ptr106.i.i433.i.7, %do.body.i.i426.i ], [ %d.0.i.i427.i.unr, %do.body.i.i426.i.prol.loopexit ]
  %h.addr.0.i.i428.i = phi i32 [ %sub.i.i432.i.7, %do.body.i.i426.i ], [ %h.addr.0.i.i428.i.unr, %do.body.i.i426.i.prol.loopexit ]
  %add.ptr98.i.i430.i = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 32
  %add.ptr106.i.i433.i = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %d.0.i.i427.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i, i8 0, i64 16, i1 false)
  %add.ptr98.i.i430.i.1 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 96
  %add.ptr106.i.i433.i.1 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.1, i8 0, i64 16, i1 false)
  %add.ptr98.i.i430.i.2 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 160
  %add.ptr106.i.i433.i.2 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i.1, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.2, i8 0, i64 16, i1 false)
  %add.ptr98.i.i430.i.3 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 224
  %add.ptr106.i.i433.i.3 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i.2, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.3, i8 0, i64 16, i1 false)
  %add.ptr98.i.i430.i.4 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 288
  %add.ptr106.i.i433.i.4 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i.3, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.4, i8 0, i64 16, i1 false)
  %add.ptr98.i.i430.i.5 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 352
  %add.ptr106.i.i433.i.5 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i.4, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.5, i8 0, i64 16, i1 false)
  %add.ptr98.i.i430.i.6 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 416
  %add.ptr106.i.i433.i.6 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i.5, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.6, i8 0, i64 16, i1 false)
  %add.ptr98.i.i430.i.7 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 480
  %sub.i.i432.i.7 = add nsw i32 %h.addr.0.i.i428.i, -16
  %add.ptr106.i.i433.i.7 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 512
  %tobool.not.i.i434.i.7 = icmp eq i32 %sub.i.i432.i.7, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i.6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.7, i8 0, i64 16, i1 false)
  br i1 %tobool.not.i.i434.i.7, label %if.end276.i, label %do.body.i.i426.i

if.end276.i:                                      ; preds = %do.body.i.i426.i.prol.loopexit, %do.body.i.i426.i, %if.end77.i.i.i, %if.end70.i.i.i, %if.then63.i.i.i, %if.then273.i, %if.then268.i
  br i1 %cmp279.i, label %if.then281.i, label %cleanup.i

if.then281.i:                                     ; preds = %if.end276.i
  %mul282.i = shl nuw nsw i32 %and221.i, 1
  %mul283.i = shl i32 %i8.0472.i, 3
  %add.i437.i = or disjoint i32 %mul282.i, %mul283.i
  %add2.i439.i = or i32 %add.i437.i, 12
  %idxprom3.i440.i = sext i32 %add2.i439.i to i64
  %arrayidx4.i441.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv49.i, i64 0, i64 1, i64 %idxprom3.i440.i
  switch i32 %47, label %cleanup.i [
    i32 7, label %do.body.i.i459.i.preheader
    i32 3, label %if.then63.i.i443.i
  ]

do.body.i.i459.i.preheader:                       ; preds = %if.then281.i
  br i1 %lcmp.mod570.not, label %do.body.i.i459.i.prol.loopexit, label %do.body.i.i459.i.prol

do.body.i.i459.i.prol:                            ; preds = %do.body.i.i459.i.preheader, %do.body.i.i459.i.prol
  %d.0.i.i460.i.prol = phi ptr [ %add.ptr106.i.i466.i.prol, %do.body.i.i459.i.prol ], [ %arrayidx4.i441.i, %do.body.i.i459.i.preheader ]
  %h.addr.0.i.i461.i.prol = phi i32 [ %sub.i.i465.i.prol, %do.body.i.i459.i.prol ], [ %shr215.i, %do.body.i.i459.i.preheader ]
  %prol.iter571 = phi i32 [ %prol.iter571.next, %do.body.i.i459.i.prol ], [ 0, %do.body.i.i459.i.preheader ]
  %add.ptr98.i.i463.i.prol = getelementptr inbounds i8, ptr %d.0.i.i460.i.prol, i64 32
  %sub.i.i465.i.prol = add nsw i32 %h.addr.0.i.i461.i.prol, -2
  %add.ptr106.i.i466.i.prol = getelementptr inbounds i8, ptr %d.0.i.i460.i.prol, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %d.0.i.i460.i.prol, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.prol, i8 0, i64 16, i1 false)
  %prol.iter571.next = add i32 %prol.iter571, 1
  %prol.iter571.cmp.not = icmp eq i32 %prol.iter571.next, %xtraiter569
  br i1 %prol.iter571.cmp.not, label %do.body.i.i459.i.prol.loopexit, label %do.body.i.i459.i.prol, !llvm.loop !7

do.body.i.i459.i.prol.loopexit:                   ; preds = %do.body.i.i459.i.prol, %do.body.i.i459.i.preheader
  %d.0.i.i460.i.unr = phi ptr [ %arrayidx4.i441.i, %do.body.i.i459.i.preheader ], [ %add.ptr106.i.i466.i.prol, %do.body.i.i459.i.prol ]
  %h.addr.0.i.i461.i.unr = phi i32 [ %shr215.i, %do.body.i.i459.i.preheader ], [ %sub.i.i465.i.prol, %do.body.i.i459.i.prol ]
  br i1 %52, label %cleanup.i, label %do.body.i.i459.i

if.then63.i.i443.i:                               ; preds = %if.then281.i
  store i64 0, ptr %arrayidx4.i441.i, align 8
  br i1 %cmp67.i.i.i, label %cleanup.i, label %if.end70.i.i445.i

if.end70.i.i445.i:                                ; preds = %if.then63.i.i443.i
  %add.ptr73.i.i446.i = getelementptr inbounds i8, ptr %arrayidx4.i441.i, i64 32
  store i64 0, ptr %add.ptr73.i.i446.i, align 8
  br i1 %cmp74.i.i.i, label %cleanup.i, label %if.end77.i.i448.i

if.end77.i.i448.i:                                ; preds = %if.end70.i.i445.i
  %add.ptr80.i.i449.i = getelementptr inbounds i8, ptr %arrayidx4.i441.i, i64 64
  store i64 0, ptr %add.ptr80.i.i449.i, align 8
  %add.ptr83.i.i450.i = getelementptr inbounds i8, ptr %arrayidx4.i441.i, i64 96
  store i64 0, ptr %add.ptr83.i.i450.i, align 8
  br label %cleanup.i

do.body.i.i459.i:                                 ; preds = %do.body.i.i459.i.prol.loopexit, %do.body.i.i459.i
  %d.0.i.i460.i = phi ptr [ %add.ptr106.i.i466.i.7, %do.body.i.i459.i ], [ %d.0.i.i460.i.unr, %do.body.i.i459.i.prol.loopexit ]
  %h.addr.0.i.i461.i = phi i32 [ %sub.i.i465.i.7, %do.body.i.i459.i ], [ %h.addr.0.i.i461.i.unr, %do.body.i.i459.i.prol.loopexit ]
  %add.ptr98.i.i463.i = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 32
  %add.ptr106.i.i466.i = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %d.0.i.i460.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i, i8 0, i64 16, i1 false)
  %add.ptr98.i.i463.i.1 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 96
  %add.ptr106.i.i466.i.1 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.1, i8 0, i64 16, i1 false)
  %add.ptr98.i.i463.i.2 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 160
  %add.ptr106.i.i466.i.2 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i.1, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.2, i8 0, i64 16, i1 false)
  %add.ptr98.i.i463.i.3 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 224
  %add.ptr106.i.i466.i.3 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i.2, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.3, i8 0, i64 16, i1 false)
  %add.ptr98.i.i463.i.4 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 288
  %add.ptr106.i.i466.i.4 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i.3, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.4, i8 0, i64 16, i1 false)
  %add.ptr98.i.i463.i.5 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 352
  %add.ptr106.i.i466.i.5 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i.4, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.5, i8 0, i64 16, i1 false)
  %add.ptr98.i.i463.i.6 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 416
  %add.ptr106.i.i466.i.6 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i.5, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.6, i8 0, i64 16, i1 false)
  %add.ptr98.i.i463.i.7 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 480
  %sub.i.i465.i.7 = add nsw i32 %h.addr.0.i.i461.i, -16
  %add.ptr106.i.i466.i.7 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 512
  %tobool.not.i.i467.i.7 = icmp eq i32 %sub.i.i465.i.7, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i.6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.7, i8 0, i64 16, i1 false)
  br i1 %tobool.not.i.i467.i.7, label %cleanup.i, label %do.body.i.i459.i

cleanup.i:                                        ; preds = %do.body.i.i459.i.prol.loopexit, %do.body.i.i459.i, %if.end77.i.i448.i, %if.end70.i.i445.i, %if.then63.i.i443.i, %if.then281.i, %if.end276.i, %land.lhs.true259.i, %if.end250.i, %land.lhs.true241.i, %if.else235.i
  %add291.i = add nuw nsw i32 %i8.0472.i, %add210.i
  %cmp217.i = icmp slt i32 %add291.i, %add207.i
  br i1 %cmp217.i, label %for.body220.i, label %if.end4

if.else2:                                         ; preds = %if.else
  %i_mb_stride.i = getelementptr inbounds i8, ptr %h, i64 16372
  %61 = load i32, ptr %i_mb_stride.i, align 4
  %mul.i479 = shl nsw i32 %61, 4
  %i_mb_y.i = getelementptr inbounds i8, ptr %h, i64 16388
  %62 = load i32, ptr %i_mb_y.i, align 4
  %mul2.i = mul nsw i32 %mul.i479, %62
  %i_mb_x.i = getelementptr inbounds i8, ptr %h, i64 16384
  %63 = load i32, ptr %i_mb_x.i, align 16
  %mul4.i = shl nsw i32 %63, 2
  %mul7.i = shl nsw i32 %61, 2
  %mul10.i = mul nsw i32 %mul7.i, %62
  %mul13.i = shl nsw i32 %63, 1
  %add14.i = add nsw i32 %mul13.i, %mul10.i
  %fref1.i480 = getelementptr inbounds i8, ptr %h, i64 14864
  %64 = load ptr, ptr %fref1.i480, align 16
  %mb_type.i481 = getelementptr inbounds i8, ptr %64, i64 3536
  %65 = load ptr, ptr %mb_type.i481, align 16
  %arrayidx16.i = getelementptr inbounds i8, ptr %65, i64 %idxprom.i483
  %66 = load i8, ptr %arrayidx16.i, align 1
  %mb_partition.i484 = getelementptr inbounds i8, ptr %64, i64 3544
  %67 = load ptr, ptr %mb_partition.i484, align 8
  %arrayidx22.i485 = getelementptr inbounds i8, ptr %67, i64 %idxprom.i483
  %68 = load i8, ptr %arrayidx22.i485, align 1
  %conv23.i = zext i8 %68 to i32
  %ref1.i.i = getelementptr inbounds i8, ptr %h, i64 25120
  %arrayidx4.i.i486 = getelementptr inbounds i8, ptr %h, i64 25172
  store i32 0, ptr %arrayidx4.i.i486, align 4
  %add.ptr49.i.i.i487 = getelementptr inbounds i8, ptr %h, i64 25180
  store i32 0, ptr %add.ptr49.i.i.i487, align 4
  %add.ptr56.i.i.i488 = getelementptr inbounds i8, ptr %h, i64 25188
  store i32 0, ptr %add.ptr56.i.i.i488, align 4
  %add.ptr59.i.i.i489 = getelementptr inbounds i8, ptr %h, i64 25196
  store i32 0, ptr %add.ptr59.i.i.i489, align 4
  %i_partition.i490 = getelementptr inbounds i8, ptr %h, i64 17388
  store i32 %conv23.i, ptr %i_partition.i490, align 4
  %or.cond154.i = icmp ult i8 %66, 4
  br i1 %or.cond154.i, label %if.then.i508, label %if.end.i491

if.then.i508:                                     ; preds = %if.else2
  %arrayidx4.i221.i = getelementptr inbounds i8, ptr %h, i64 25132
  store i32 0, ptr %arrayidx4.i221.i, align 4
  %add.ptr49.i.i222.i = getelementptr inbounds i8, ptr %h, i64 25140
  store i32 0, ptr %add.ptr49.i.i222.i, align 4
  %add.ptr56.i.i223.i = getelementptr inbounds i8, ptr %h, i64 25148
  store i32 0, ptr %add.ptr56.i.i223.i, align 4
  %add.ptr59.i.i224.i = getelementptr inbounds i8, ptr %h, i64 25156
  store i32 0, ptr %add.ptr59.i.i224.i, align 4
  %arrayidx4.i225.i = getelementptr inbounds i8, ptr %h, i64 25248
  %add.ptr98.i.i.i509 = getelementptr inbounds i8, ptr %h, i64 25280
  %add.ptr106.i.i.i510 = getelementptr inbounds i8, ptr %h, i64 25312
  %add.ptr98.i.i.1.i511 = getelementptr inbounds i8, ptr %h, i64 25344
  %arrayidx4.i227.i = getelementptr inbounds i8, ptr %h, i64 25408
  %add.ptr98.i.i232.i = getelementptr inbounds i8, ptr %h, i64 25440
  %add.ptr106.i.i235.i = getelementptr inbounds i8, ptr %h, i64 25472
  %add.ptr98.i.i232.1.i = getelementptr inbounds i8, ptr %h, i64 25504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx4.i225.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i.i509, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i.i510, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i.1.i511, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx4.i227.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i232.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i235.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i232.1.i, i8 0, i64 16, i1 false)
  br label %if.end4

if.end.i491:                                      ; preds = %if.else2
  %sub.i492 = sub nsw i32 16, %conv23.i
  %add34.i = sub nsw i32 17, %conv23.i
  %cmp35.i = icmp eq i8 %68, 14
  %add37.i = select i1 %cmp35.i, i32 2, i32 1
  %shr40.i = ashr i32 %sub.i492, 1
  %shr41.i = lshr i32 4, %shr40.i
  %cmp42.not352.i = icmp ugt i8 %68, 16
  br i1 %cmp42.not352.i, label %if.end4, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.i491
  %and.i = and i32 %sub.i492, 1
  %shr.i493 = lshr exact i32 4, %and.i
  %i_b8_stride.i494 = getelementptr inbounds i8, ptr %h, i64 16376
  %map_col_to_list0.i = getelementptr inbounds i8, ptr %h, i64 26632
  %b_mbaff.i = getelementptr inbounds i8, ptr %h, i64 7268
  %dist_scale_factor72.i = getelementptr inbounds i8, ptr %h, i64 26360
  %i_b4_stride.i495 = getelementptr inbounds i8, ptr %h, i64 16380
  %add81.i = add i32 %mul4.i, %mul2.i
  %i_threads.i496 = getelementptr inbounds i8, ptr %h, i64 4
  %arrayidx101.i = getelementptr inbounds i8, ptr %h, i64 16468
  %cmp67.i.i.i497 = icmp eq i32 %shr40.i, 2
  %cmp74.i.i.i498 = icmp eq i32 %shr40.i, 1
  %mv1.i251.i = getelementptr inbounds i8, ptr %h, i64 25200
  %mul5.i.i499 = shl nuw nsw i32 %shr.i493, 2
  %69 = add nsw i32 %mul5.i.i499, -2
  %70 = tail call i32 @llvm.fshl.i32(i32 2, i32 %69, i32 31)
  %invariant.gep.i = getelementptr i8, ptr %h, i64 25232
  %invariant.gep357.i = getelementptr i8, ptr %h, i64 25264
  %invariant.gep359.i = getelementptr i8, ptr %h, i64 25296
  %switch.not.i = icmp eq i32 %and.i, 0
  %71 = add nsw i32 %shr41.i, -2
  %72 = lshr i32 %71, 1
  %narrow = add nuw i32 %72, 1
  %73 = zext i32 %narrow to i64
  %74 = add nsw i32 %shr41.i, -2
  %75 = lshr i32 %74, 1
  %narrow565 = add nuw i32 %75, 1
  %76 = zext i32 %narrow565 to i64
  %min.iters.check547 = icmp ult i32 %74, 6
  %n.vec550 = and i64 %76, 4294967292
  %77 = shl nuw nsw i64 %n.vec550, 6
  %.cast553 = trunc nuw i64 %n.vec550 to i32
  %78 = mul i32 %.cast553, -2
  %ind.end554 = or disjoint i32 %shr41.i, %78
  %cmp.n564 = icmp eq i64 %n.vec550, %76
  %min.iters.check = icmp ult i32 %71, 6
  %n.vec = and i64 %73, 4294967292
  %79 = shl nuw nsw i64 %n.vec, 6
  %.cast = trunc nuw i64 %n.vec to i32
  %80 = mul i32 %.cast, -2
  %ind.end540 = or disjoint i32 %shr41.i, %80
  %cmp.n = icmp eq i64 %n.vec, %73
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %i8.0353.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add140.i, %for.inc.i ]
  %and44.i = and i32 %i8.0353.i, 1
  %shr45.i = lshr i32 %i8.0353.i, 1
  %add46.i = or disjoint i32 %add14.i, %and44.i
  %81 = load i32, ptr %i_b8_stride.i494, align 8
  %mul48.i = mul nsw i32 %81, %shr45.i
  %add49.i = add nsw i32 %add46.i, %mul48.i
  %82 = load ptr, ptr %fref1.i480, align 16
  %ref.i = getelementptr inbounds i8, ptr %82, i64 6712
  %83 = load ptr, ptr %ref.i, align 8
  %idxprom53.i = sext i32 %add49.i to i64
  %arrayidx54.i = getelementptr inbounds i8, ptr %83, i64 %idxprom53.i
  %84 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = sext i8 %84 to i32
  %85 = load i32, ptr %b_mbaff.i, align 4
  %shr57.i = ashr i32 %conv55.i, %85
  %add58.i = add nsw i32 %shr57.i, 2
  %idxprom59.i = sext i32 %add58.i to i64
  %arrayidx60.i = getelementptr inbounds [18 x i8], ptr %map_col_to_list0.i, i64 0, i64 %idxprom59.i
  %86 = load i8, ptr %arrayidx60.i, align 1
  %conv61.i = sext i8 %86 to i32
  %shl.i = shl i32 %conv61.i, %85
  %and66.i = and i32 %85, %conv55.i
  %add67.i = add nsw i32 %shl.i, %and66.i
  %cmp68.i = icmp sgt i32 %add67.i, -1
  br i1 %cmp68.i, label %if.then70.i, label %cleanup376

if.then70.i:                                      ; preds = %for.body.i
  %87 = load ptr, ptr %dist_scale_factor72.i, align 8
  %idxprom73.i = zext nneg i32 %add67.i to i64
  %arrayidx74.i = getelementptr inbounds [4 x i16], ptr %87, i64 %idxprom73.i
  %88 = load i16, ptr %arrayidx74.i, align 2
  %conv76.i = sext i16 %88 to i32
  %mv.i = getelementptr inbounds i8, ptr %82, i64 3552
  %89 = load ptr, ptr %mv.i, align 16
  %90 = load i32, ptr %i_b4_stride.i495, align 4
  %mul84.i = mul i32 %90, %shr45.i
  %reass.add.i = add i32 %mul84.i, %and44.i
  %reass.mul.i = mul i32 %reass.add.i, 3
  %add85.i = add i32 %add81.i, %reass.mul.i
  %idxprom86.i = sext i32 %add85.i to i64
  %arrayidx87.i = getelementptr inbounds [2 x i16], ptr %89, i64 %idxprom86.i
  %91 = load i16, ptr %arrayidx87.i, align 2
  %conv89.i = sext i16 %91 to i32
  %mul90.i = mul nsw i32 %conv89.i, %conv76.i
  %add91.i = add nsw i32 %mul90.i, 128
  %shr92.i = ashr i32 %add91.i, 8
  %arrayidx93.i = getelementptr inbounds i8, ptr %arrayidx87.i, i64 2
  %92 = load i16, ptr %arrayidx93.i, align 2
  %conv94.i = sext i16 %92 to i32
  %mul95.i = mul nsw i32 %conv94.i, %conv76.i
  %add96.i = add nsw i32 %mul95.i, 128
  %shr97.i = ashr i32 %add96.i, 8
  %93 = load i32, ptr %i_threads.i496, align 4
  %cmp98.i = icmp sgt i32 %93, 1
  br i1 %cmp98.i, label %land.lhs.true.i505, label %if.end114.i

land.lhs.true.i505:                               ; preds = %if.then70.i
  %94 = load i32, ptr %arrayidx101.i, align 4
  %cmp102.i = icmp sgt i32 %shr97.i, %94
  %sub107.i = sub nsw i32 %shr97.i, %conv94.i
  %cmp111.i506 = icmp sgt i32 %sub107.i, %94
  %or.cond.i507 = select i1 %cmp102.i, i1 true, i1 %cmp111.i506
  br i1 %or.cond.i507, label %cleanup376, label %if.end114.i

if.end114.i:                                      ; preds = %land.lhs.true.i505, %if.then70.i
  %mul115.i = shl nuw nsw i32 %and44.i, 1
  %conv117.i = trunc i32 %add67.i to i16
  %mul116.i = shl i32 %i8.0353.i, 3
  %add.i.i500 = or disjoint i32 %mul115.i, %mul116.i
  %add2.i.i501 = or i32 %add.i.i500, 12
  %idxprom3.i.i502 = sext i32 %add2.i.i501 to i64
  %arrayidx4.i239.i = getelementptr inbounds [2 x [40 x i8]], ptr %ref1.i.i, i64 0, i64 0, i64 %idxprom3.i.i502
  %conv.i.i503 = and i32 %add67.i, 255
  %95 = and i16 %conv117.i, 255
  %conv.i.i.i = mul nuw i16 %95, 257
  %cond14.i.i.i504 = mul nuw i32 %conv.i.i503, 16843009
  br i1 %switch.not.i, label %if.then39.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end114.i
  store i16 %conv.i.i.i, ptr %arrayidx4.i239.i, align 2
  br i1 %cmp67.i.i.i497, label %x264_macroblock_cache_ref.exit.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %add.ptr26.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i239.i, i64 8
  store i16 %conv.i.i.i, ptr %add.ptr26.i.i.i, align 2
  br i1 %cmp74.i.i.i498, label %x264_macroblock_cache_ref.exit.i, label %if.end30.i.i.i

if.end30.i.i.i:                                   ; preds = %if.end.i.i.i
  %add.ptr33.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i239.i, i64 16
  store i16 %conv.i.i.i, ptr %add.ptr33.i.i.i, align 2
  %add.ptr36.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i239.i, i64 24
  store i16 %conv.i.i.i, ptr %add.ptr36.i.i.i, align 2
  br label %x264_macroblock_cache_ref.exit.i

if.then39.i.i.i:                                  ; preds = %if.end114.i
  store i32 %cond14.i.i.i504, ptr %arrayidx4.i239.i, align 4
  br i1 %cmp67.i.i.i497, label %x264_macroblock_cache_ref.exit.i, label %if.end46.i.i.i

if.end46.i.i.i:                                   ; preds = %if.then39.i.i.i
  %add.ptr49.i.i247.i = getelementptr inbounds i8, ptr %arrayidx4.i239.i, i64 8
  store i32 %cond14.i.i.i504, ptr %add.ptr49.i.i247.i, align 4
  br i1 %cmp74.i.i.i498, label %x264_macroblock_cache_ref.exit.i, label %if.end53.i.i.i

if.end53.i.i.i:                                   ; preds = %if.end46.i.i.i
  %add.ptr56.i.i248.i = getelementptr inbounds i8, ptr %arrayidx4.i239.i, i64 16
  store i32 %cond14.i.i.i504, ptr %add.ptr56.i.i248.i, align 4
  %add.ptr59.i.i249.i = getelementptr inbounds i8, ptr %arrayidx4.i239.i, i64 24
  store i32 %cond14.i.i.i504, ptr %add.ptr59.i.i249.i, align 4
  br label %x264_macroblock_cache_ref.exit.i

x264_macroblock_cache_ref.exit.i:                 ; preds = %if.end53.i.i.i, %if.end46.i.i.i, %if.then39.i.i.i, %if.end30.i.i.i, %if.end.i.i.i, %if.then.i.i.i
  %and.i.i = and i32 %shr92.i, 65535
  %shl.i.i = shl i32 %shr97.i, 16
  %add.i250.i = or disjoint i32 %shl.i.i, %and.i.i
  %arrayidx4.i256.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv1.i251.i, i64 0, i64 0, i64 %idxprom3.i.i502
  %conv15.i.i257.i = zext i32 %add.i250.i to i64
  %add.i.i258.i = mul nuw i64 %conv15.i.i257.i, 4294967297
  switch i32 %70, label %x264_macroblock_cache_mv.exit284.i [
    i32 7, label %do.body.i.i275.i.preheader
    i32 3, label %if.then63.i.i259.i
  ]

do.body.i.i275.i.preheader:                       ; preds = %x264_macroblock_cache_ref.exit.i
  br i1 %min.iters.check547, label %do.body.i.i275.i.preheader567, label %vector.ph548

do.body.i.i275.i.preheader567:                    ; preds = %middle.block545, %do.body.i.i275.i.preheader
  %d.0.i.i276.i.ph = phi ptr [ %arrayidx4.i256.i, %do.body.i.i275.i.preheader ], [ %ind.end551, %middle.block545 ]
  %h.addr.0.i.i277.i.ph = phi i32 [ %shr41.i, %do.body.i.i275.i.preheader ], [ %ind.end554, %middle.block545 ]
  %96 = add nsw i32 %h.addr.0.i.i277.i.ph, -2
  %97 = lshr i32 %96, 1
  %98 = add nuw i32 %97, 1
  %xtraiter572 = and i32 %98, 3
  %lcmp.mod573.not = icmp eq i32 %xtraiter572, 0
  br i1 %lcmp.mod573.not, label %do.body.i.i275.i.prol.loopexit, label %do.body.i.i275.i.prol

do.body.i.i275.i.prol:                            ; preds = %do.body.i.i275.i.preheader567, %do.body.i.i275.i.prol
  %d.0.i.i276.i.prol = phi ptr [ %add.ptr106.i.i282.i.prol, %do.body.i.i275.i.prol ], [ %d.0.i.i276.i.ph, %do.body.i.i275.i.preheader567 ]
  %h.addr.0.i.i277.i.prol = phi i32 [ %sub.i.i281.i.prol, %do.body.i.i275.i.prol ], [ %h.addr.0.i.i277.i.ph, %do.body.i.i275.i.preheader567 ]
  %prol.iter574 = phi i32 [ %prol.iter574.next, %do.body.i.i275.i.prol ], [ 0, %do.body.i.i275.i.preheader567 ]
  store i64 %add.i.i258.i, ptr %d.0.i.i276.i.prol, align 8
  %add.ptr95.i.i278.i.prol = getelementptr inbounds i8, ptr %d.0.i.i276.i.prol, i64 8
  store i64 %add.i.i258.i, ptr %add.ptr95.i.i278.i.prol, align 8
  %add.ptr98.i.i279.i.prol = getelementptr inbounds i8, ptr %d.0.i.i276.i.prol, i64 32
  store i64 %add.i.i258.i, ptr %add.ptr98.i.i279.i.prol, align 8
  %add.ptr103.i.i280.i.prol = getelementptr inbounds i8, ptr %d.0.i.i276.i.prol, i64 40
  store i64 %add.i.i258.i, ptr %add.ptr103.i.i280.i.prol, align 8
  %sub.i.i281.i.prol = add nsw i32 %h.addr.0.i.i277.i.prol, -2
  %add.ptr106.i.i282.i.prol = getelementptr inbounds i8, ptr %d.0.i.i276.i.prol, i64 64
  %prol.iter574.next = add i32 %prol.iter574, 1
  %prol.iter574.cmp.not = icmp eq i32 %prol.iter574.next, %xtraiter572
  br i1 %prol.iter574.cmp.not, label %do.body.i.i275.i.prol.loopexit, label %do.body.i.i275.i.prol, !llvm.loop !8

do.body.i.i275.i.prol.loopexit:                   ; preds = %do.body.i.i275.i.prol, %do.body.i.i275.i.preheader567
  %d.0.i.i276.i.unr = phi ptr [ %d.0.i.i276.i.ph, %do.body.i.i275.i.preheader567 ], [ %add.ptr106.i.i282.i.prol, %do.body.i.i275.i.prol ]
  %h.addr.0.i.i277.i.unr = phi i32 [ %h.addr.0.i.i277.i.ph, %do.body.i.i275.i.preheader567 ], [ %sub.i.i281.i.prol, %do.body.i.i275.i.prol ]
  %99 = icmp ult i32 %96, 6
  br i1 %99, label %x264_macroblock_cache_mv.exit284.i, label %do.body.i.i275.i

vector.ph548:                                     ; preds = %do.body.i.i275.i.preheader
  %ind.end551 = getelementptr i8, ptr %arrayidx4.i256.i, i64 %77
  br label %vector.body556

vector.body556:                                   ; preds = %vector.body556, %vector.ph548
  %index557 = phi i64 [ 0, %vector.ph548 ], [ %index.next563, %vector.body556 ]
  %offset.idx558 = shl i64 %index557, 6
  %100 = or disjoint i64 %offset.idx558, 64
  %101 = or disjoint i64 %offset.idx558, 128
  %102 = or disjoint i64 %offset.idx558, 192
  %next.gep559 = getelementptr i8, ptr %arrayidx4.i256.i, i64 %offset.idx558
  %next.gep560 = getelementptr i8, ptr %arrayidx4.i256.i, i64 %100
  %next.gep561 = getelementptr i8, ptr %arrayidx4.i256.i, i64 %101
  %next.gep562 = getelementptr i8, ptr %arrayidx4.i256.i, i64 %102
  store i64 %add.i.i258.i, ptr %next.gep559, align 8
  store i64 %add.i.i258.i, ptr %next.gep560, align 8
  store i64 %add.i.i258.i, ptr %next.gep561, align 8
  store i64 %add.i.i258.i, ptr %next.gep562, align 8
  %103 = getelementptr inbounds i8, ptr %next.gep559, i64 8
  %104 = getelementptr inbounds i8, ptr %next.gep560, i64 8
  %105 = getelementptr inbounds i8, ptr %next.gep561, i64 8
  %106 = getelementptr inbounds i8, ptr %next.gep562, i64 8
  store i64 %add.i.i258.i, ptr %103, align 8
  store i64 %add.i.i258.i, ptr %104, align 8
  store i64 %add.i.i258.i, ptr %105, align 8
  store i64 %add.i.i258.i, ptr %106, align 8
  %107 = getelementptr inbounds i8, ptr %next.gep559, i64 32
  %108 = getelementptr inbounds i8, ptr %next.gep560, i64 32
  %109 = getelementptr inbounds i8, ptr %next.gep561, i64 32
  %110 = getelementptr inbounds i8, ptr %next.gep562, i64 32
  store i64 %add.i.i258.i, ptr %107, align 8
  store i64 %add.i.i258.i, ptr %108, align 8
  store i64 %add.i.i258.i, ptr %109, align 8
  store i64 %add.i.i258.i, ptr %110, align 8
  %111 = getelementptr inbounds i8, ptr %next.gep559, i64 40
  %112 = getelementptr inbounds i8, ptr %next.gep560, i64 40
  %113 = getelementptr inbounds i8, ptr %next.gep561, i64 40
  %114 = getelementptr inbounds i8, ptr %next.gep562, i64 40
  store i64 %add.i.i258.i, ptr %111, align 8
  store i64 %add.i.i258.i, ptr %112, align 8
  store i64 %add.i.i258.i, ptr %113, align 8
  store i64 %add.i.i258.i, ptr %114, align 8
  %index.next563 = add nuw i64 %index557, 4
  %115 = icmp eq i64 %index.next563, %n.vec550
  br i1 %115, label %middle.block545, label %vector.body556, !llvm.loop !9

middle.block545:                                  ; preds = %vector.body556
  br i1 %cmp.n564, label %x264_macroblock_cache_mv.exit284.i, label %do.body.i.i275.i.preheader567

if.then63.i.i259.i:                               ; preds = %x264_macroblock_cache_ref.exit.i
  store i64 %add.i.i258.i, ptr %arrayidx4.i256.i, align 8
  br i1 %cmp67.i.i.i497, label %x264_macroblock_cache_mv.exit284.thread336.i, label %if.end70.i.i261.i

if.end70.i.i261.i:                                ; preds = %if.then63.i.i259.i
  %add.ptr73.i.i262.i = getelementptr inbounds i8, ptr %arrayidx4.i256.i, i64 32
  store i64 %add.i.i258.i, ptr %add.ptr73.i.i262.i, align 8
  br i1 %cmp74.i.i.i498, label %x264_macroblock_cache_mv.exit284.thread336.i, label %if.end77.i.i264.i

if.end77.i.i264.i:                                ; preds = %if.end70.i.i261.i
  %add.ptr80.i.i265.i = getelementptr inbounds i8, ptr %arrayidx4.i256.i, i64 64
  store i64 %add.i.i258.i, ptr %add.ptr80.i.i265.i, align 8
  %add.ptr83.i.i266.i = getelementptr inbounds i8, ptr %arrayidx4.i256.i, i64 96
  store i64 %add.i.i258.i, ptr %add.ptr83.i.i266.i, align 8
  br label %x264_macroblock_cache_mv.exit284.thread336.i

do.body.i.i275.i:                                 ; preds = %do.body.i.i275.i.prol.loopexit, %do.body.i.i275.i
  %d.0.i.i276.i = phi ptr [ %add.ptr106.i.i282.i.3, %do.body.i.i275.i ], [ %d.0.i.i276.i.unr, %do.body.i.i275.i.prol.loopexit ]
  %h.addr.0.i.i277.i = phi i32 [ %sub.i.i281.i.3, %do.body.i.i275.i ], [ %h.addr.0.i.i277.i.unr, %do.body.i.i275.i.prol.loopexit ]
  store i64 %add.i.i258.i, ptr %d.0.i.i276.i, align 8
  %add.ptr95.i.i278.i = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 8
  store i64 %add.i.i258.i, ptr %add.ptr95.i.i278.i, align 8
  %add.ptr98.i.i279.i = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 32
  store i64 %add.i.i258.i, ptr %add.ptr98.i.i279.i, align 8
  %add.ptr103.i.i280.i = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 40
  store i64 %add.i.i258.i, ptr %add.ptr103.i.i280.i, align 8
  %add.ptr106.i.i282.i = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 64
  store i64 %add.i.i258.i, ptr %add.ptr106.i.i282.i, align 8
  %add.ptr95.i.i278.i.1 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 72
  store i64 %add.i.i258.i, ptr %add.ptr95.i.i278.i.1, align 8
  %add.ptr98.i.i279.i.1 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 96
  store i64 %add.i.i258.i, ptr %add.ptr98.i.i279.i.1, align 8
  %add.ptr103.i.i280.i.1 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 104
  store i64 %add.i.i258.i, ptr %add.ptr103.i.i280.i.1, align 8
  %add.ptr106.i.i282.i.1 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 128
  store i64 %add.i.i258.i, ptr %add.ptr106.i.i282.i.1, align 8
  %add.ptr95.i.i278.i.2 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 136
  store i64 %add.i.i258.i, ptr %add.ptr95.i.i278.i.2, align 8
  %add.ptr98.i.i279.i.2 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 160
  store i64 %add.i.i258.i, ptr %add.ptr98.i.i279.i.2, align 8
  %add.ptr103.i.i280.i.2 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 168
  store i64 %add.i.i258.i, ptr %add.ptr103.i.i280.i.2, align 8
  %add.ptr106.i.i282.i.2 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 192
  store i64 %add.i.i258.i, ptr %add.ptr106.i.i282.i.2, align 8
  %add.ptr95.i.i278.i.3 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 200
  store i64 %add.i.i258.i, ptr %add.ptr95.i.i278.i.3, align 8
  %add.ptr98.i.i279.i.3 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 224
  store i64 %add.i.i258.i, ptr %add.ptr98.i.i279.i.3, align 8
  %add.ptr103.i.i280.i.3 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 232
  store i64 %add.i.i258.i, ptr %add.ptr103.i.i280.i.3, align 8
  %sub.i.i281.i.3 = add nsw i32 %h.addr.0.i.i277.i, -8
  %add.ptr106.i.i282.i.3 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 256
  %tobool.not.i.i283.i.3 = icmp eq i32 %sub.i.i281.i.3, 0
  br i1 %tobool.not.i.i283.i.3, label %x264_macroblock_cache_mv.exit284.i, label %do.body.i.i275.i, !llvm.loop !12

x264_macroblock_cache_mv.exit284.thread336.i:     ; preds = %if.end77.i.i264.i, %if.end70.i.i261.i, %if.then63.i.i259.i
  %116 = load i16, ptr %arrayidx87.i, align 2
  %117 = load i16, ptr %arrayidx93.i, align 2
  %conv126339.i = zext i16 %117 to i32
  %sub127340.i = sub nsw i32 %shr97.i, %conv126339.i
  %shr92.tr.i = trunc i32 %shr92.i to i16
  %sub124338.narrow.i = sub i16 %shr92.tr.i, %116
  %and.i285341.i = zext i16 %sub124338.narrow.i to i32
  %shl.i286342.i = shl i32 %sub127340.i, 16
  %add.i287343.i = or disjoint i32 %shl.i286342.i, %and.i285341.i
  %arrayidx4.i293344.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv1.i251.i, i64 0, i64 1, i64 %idxprom3.i.i502
  %conv15.i.i295345.i = zext i32 %add.i287343.i to i64
  %add.i.i296346.i = mul nuw i64 %conv15.i.i295345.i, 4294967297
  br label %if.then63.i.i297.i

x264_macroblock_cache_mv.exit284.i:               ; preds = %do.body.i.i275.i.prol.loopexit, %do.body.i.i275.i, %middle.block545, %x264_macroblock_cache_ref.exit.i
  %118 = load i16, ptr %arrayidx87.i, align 2
  %119 = load i16, ptr %arrayidx93.i, align 2
  %conv126.i = zext i16 %119 to i32
  %sub127.i = sub nsw i32 %shr97.i, %conv126.i
  %shr92.tr351.i = trunc i32 %shr92.i to i16
  %sub124.narrow.i = sub i16 %shr92.tr351.i, %118
  %and.i285.i = zext i16 %sub124.narrow.i to i32
  %shl.i286.i = shl i32 %sub127.i, 16
  %add.i287.i = or disjoint i32 %shl.i286.i, %and.i285.i
  %arrayidx4.i293.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv1.i251.i, i64 0, i64 1, i64 %idxprom3.i.i502
  %conv15.i.i295.i = zext i32 %add.i287.i to i64
  %add.i.i296.i = mul nuw i64 %conv15.i.i295.i, 4294967297
  switch i32 %70, label %for.inc.i [
    i32 7, label %do.body.i.i313.i.preheader
    i32 3, label %if.then63.i.i297.i
  ]

do.body.i.i313.i.preheader:                       ; preds = %x264_macroblock_cache_mv.exit284.i
  br i1 %min.iters.check, label %do.body.i.i313.i.preheader566, label %vector.ph

do.body.i.i313.i.preheader566:                    ; preds = %middle.block, %do.body.i.i313.i.preheader
  %d.0.i.i314.i.ph = phi ptr [ %arrayidx4.i293.i, %do.body.i.i313.i.preheader ], [ %ind.end, %middle.block ]
  %h.addr.0.i.i315.i.ph = phi i32 [ %shr41.i, %do.body.i.i313.i.preheader ], [ %ind.end540, %middle.block ]
  %120 = add nsw i32 %h.addr.0.i.i315.i.ph, -2
  %121 = lshr i32 %120, 1
  %122 = add nuw i32 %121, 1
  %xtraiter575 = and i32 %122, 3
  %lcmp.mod576.not = icmp eq i32 %xtraiter575, 0
  br i1 %lcmp.mod576.not, label %do.body.i.i313.i.prol.loopexit, label %do.body.i.i313.i.prol

do.body.i.i313.i.prol:                            ; preds = %do.body.i.i313.i.preheader566, %do.body.i.i313.i.prol
  %d.0.i.i314.i.prol = phi ptr [ %add.ptr106.i.i320.i.prol, %do.body.i.i313.i.prol ], [ %d.0.i.i314.i.ph, %do.body.i.i313.i.preheader566 ]
  %h.addr.0.i.i315.i.prol = phi i32 [ %sub.i.i319.i.prol, %do.body.i.i313.i.prol ], [ %h.addr.0.i.i315.i.ph, %do.body.i.i313.i.preheader566 ]
  %prol.iter577 = phi i32 [ %prol.iter577.next, %do.body.i.i313.i.prol ], [ 0, %do.body.i.i313.i.preheader566 ]
  store i64 %add.i.i296.i, ptr %d.0.i.i314.i.prol, align 8
  %add.ptr95.i.i316.i.prol = getelementptr inbounds i8, ptr %d.0.i.i314.i.prol, i64 8
  store i64 %add.i.i296.i, ptr %add.ptr95.i.i316.i.prol, align 8
  %add.ptr98.i.i317.i.prol = getelementptr inbounds i8, ptr %d.0.i.i314.i.prol, i64 32
  store i64 %add.i.i296.i, ptr %add.ptr98.i.i317.i.prol, align 8
  %add.ptr103.i.i318.i.prol = getelementptr inbounds i8, ptr %d.0.i.i314.i.prol, i64 40
  store i64 %add.i.i296.i, ptr %add.ptr103.i.i318.i.prol, align 8
  %sub.i.i319.i.prol = add nsw i32 %h.addr.0.i.i315.i.prol, -2
  %add.ptr106.i.i320.i.prol = getelementptr inbounds i8, ptr %d.0.i.i314.i.prol, i64 64
  %prol.iter577.next = add i32 %prol.iter577, 1
  %prol.iter577.cmp.not = icmp eq i32 %prol.iter577.next, %xtraiter575
  br i1 %prol.iter577.cmp.not, label %do.body.i.i313.i.prol.loopexit, label %do.body.i.i313.i.prol, !llvm.loop !13

do.body.i.i313.i.prol.loopexit:                   ; preds = %do.body.i.i313.i.prol, %do.body.i.i313.i.preheader566
  %d.0.i.i314.i.unr = phi ptr [ %d.0.i.i314.i.ph, %do.body.i.i313.i.preheader566 ], [ %add.ptr106.i.i320.i.prol, %do.body.i.i313.i.prol ]
  %h.addr.0.i.i315.i.unr = phi i32 [ %h.addr.0.i.i315.i.ph, %do.body.i.i313.i.preheader566 ], [ %sub.i.i319.i.prol, %do.body.i.i313.i.prol ]
  %123 = icmp ult i32 %120, 6
  br i1 %123, label %for.inc.i, label %do.body.i.i313.i

vector.ph:                                        ; preds = %do.body.i.i313.i.preheader
  %ind.end = getelementptr i8, ptr %arrayidx4.i293.i, i64 %79
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 6
  %124 = or disjoint i64 %offset.idx, 64
  %125 = or disjoint i64 %offset.idx, 128
  %126 = or disjoint i64 %offset.idx, 192
  %next.gep = getelementptr i8, ptr %arrayidx4.i293.i, i64 %offset.idx
  %next.gep542 = getelementptr i8, ptr %arrayidx4.i293.i, i64 %124
  %next.gep543 = getelementptr i8, ptr %arrayidx4.i293.i, i64 %125
  %next.gep544 = getelementptr i8, ptr %arrayidx4.i293.i, i64 %126
  store i64 %add.i.i296.i, ptr %next.gep, align 8
  store i64 %add.i.i296.i, ptr %next.gep542, align 8
  store i64 %add.i.i296.i, ptr %next.gep543, align 8
  store i64 %add.i.i296.i, ptr %next.gep544, align 8
  %127 = getelementptr inbounds i8, ptr %next.gep, i64 8
  %128 = getelementptr inbounds i8, ptr %next.gep542, i64 8
  %129 = getelementptr inbounds i8, ptr %next.gep543, i64 8
  %130 = getelementptr inbounds i8, ptr %next.gep544, i64 8
  store i64 %add.i.i296.i, ptr %127, align 8
  store i64 %add.i.i296.i, ptr %128, align 8
  store i64 %add.i.i296.i, ptr %129, align 8
  store i64 %add.i.i296.i, ptr %130, align 8
  %131 = getelementptr inbounds i8, ptr %next.gep, i64 32
  %132 = getelementptr inbounds i8, ptr %next.gep542, i64 32
  %133 = getelementptr inbounds i8, ptr %next.gep543, i64 32
  %134 = getelementptr inbounds i8, ptr %next.gep544, i64 32
  store i64 %add.i.i296.i, ptr %131, align 8
  store i64 %add.i.i296.i, ptr %132, align 8
  store i64 %add.i.i296.i, ptr %133, align 8
  store i64 %add.i.i296.i, ptr %134, align 8
  %135 = getelementptr inbounds i8, ptr %next.gep, i64 40
  %136 = getelementptr inbounds i8, ptr %next.gep542, i64 40
  %137 = getelementptr inbounds i8, ptr %next.gep543, i64 40
  %138 = getelementptr inbounds i8, ptr %next.gep544, i64 40
  store i64 %add.i.i296.i, ptr %135, align 8
  store i64 %add.i.i296.i, ptr %136, align 8
  store i64 %add.i.i296.i, ptr %137, align 8
  store i64 %add.i.i296.i, ptr %138, align 8
  %index.next = add nuw i64 %index, 4
  %139 = icmp eq i64 %index.next, %n.vec
  br i1 %139, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc.i, label %do.body.i.i313.i.preheader566

if.then63.i.i297.i:                               ; preds = %x264_macroblock_cache_mv.exit284.i, %x264_macroblock_cache_mv.exit284.thread336.i
  %add.i.i296348.i = phi i64 [ %add.i.i296346.i, %x264_macroblock_cache_mv.exit284.thread336.i ], [ %add.i.i296.i, %x264_macroblock_cache_mv.exit284.i ]
  %arrayidx4.i293347.i = phi ptr [ %arrayidx4.i293344.i, %x264_macroblock_cache_mv.exit284.thread336.i ], [ %arrayidx4.i293.i, %x264_macroblock_cache_mv.exit284.i ]
  store i64 %add.i.i296348.i, ptr %arrayidx4.i293347.i, align 8
  br i1 %cmp67.i.i.i497, label %for.inc.i, label %if.end70.i.i299.i

if.end70.i.i299.i:                                ; preds = %if.then63.i.i297.i
  %gep.i = getelementptr [2 x [40 x [2 x i16]]], ptr %invariant.gep.i, i64 0, i64 1, i64 %idxprom3.i.i502
  store i64 %add.i.i296348.i, ptr %gep.i, align 8
  br i1 %cmp74.i.i.i498, label %for.inc.i, label %if.end77.i.i302.i

if.end77.i.i302.i:                                ; preds = %if.end70.i.i299.i
  %gep358.i = getelementptr [2 x [40 x [2 x i16]]], ptr %invariant.gep357.i, i64 0, i64 1, i64 %idxprom3.i.i502
  store i64 %add.i.i296348.i, ptr %gep358.i, align 8
  %gep360.i = getelementptr [2 x [40 x [2 x i16]]], ptr %invariant.gep359.i, i64 0, i64 1, i64 %idxprom3.i.i502
  store i64 %add.i.i296348.i, ptr %gep360.i, align 8
  br label %for.inc.i

do.body.i.i313.i:                                 ; preds = %do.body.i.i313.i.prol.loopexit, %do.body.i.i313.i
  %d.0.i.i314.i = phi ptr [ %add.ptr106.i.i320.i.3, %do.body.i.i313.i ], [ %d.0.i.i314.i.unr, %do.body.i.i313.i.prol.loopexit ]
  %h.addr.0.i.i315.i = phi i32 [ %sub.i.i319.i.3, %do.body.i.i313.i ], [ %h.addr.0.i.i315.i.unr, %do.body.i.i313.i.prol.loopexit ]
  store i64 %add.i.i296.i, ptr %d.0.i.i314.i, align 8
  %add.ptr95.i.i316.i = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 8
  store i64 %add.i.i296.i, ptr %add.ptr95.i.i316.i, align 8
  %add.ptr98.i.i317.i = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 32
  store i64 %add.i.i296.i, ptr %add.ptr98.i.i317.i, align 8
  %add.ptr103.i.i318.i = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 40
  store i64 %add.i.i296.i, ptr %add.ptr103.i.i318.i, align 8
  %add.ptr106.i.i320.i = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 64
  store i64 %add.i.i296.i, ptr %add.ptr106.i.i320.i, align 8
  %add.ptr95.i.i316.i.1 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 72
  store i64 %add.i.i296.i, ptr %add.ptr95.i.i316.i.1, align 8
  %add.ptr98.i.i317.i.1 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 96
  store i64 %add.i.i296.i, ptr %add.ptr98.i.i317.i.1, align 8
  %add.ptr103.i.i318.i.1 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 104
  store i64 %add.i.i296.i, ptr %add.ptr103.i.i318.i.1, align 8
  %add.ptr106.i.i320.i.1 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 128
  store i64 %add.i.i296.i, ptr %add.ptr106.i.i320.i.1, align 8
  %add.ptr95.i.i316.i.2 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 136
  store i64 %add.i.i296.i, ptr %add.ptr95.i.i316.i.2, align 8
  %add.ptr98.i.i317.i.2 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 160
  store i64 %add.i.i296.i, ptr %add.ptr98.i.i317.i.2, align 8
  %add.ptr103.i.i318.i.2 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 168
  store i64 %add.i.i296.i, ptr %add.ptr103.i.i318.i.2, align 8
  %add.ptr106.i.i320.i.2 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 192
  store i64 %add.i.i296.i, ptr %add.ptr106.i.i320.i.2, align 8
  %add.ptr95.i.i316.i.3 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 200
  store i64 %add.i.i296.i, ptr %add.ptr95.i.i316.i.3, align 8
  %add.ptr98.i.i317.i.3 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 224
  store i64 %add.i.i296.i, ptr %add.ptr98.i.i317.i.3, align 8
  %add.ptr103.i.i318.i.3 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 232
  store i64 %add.i.i296.i, ptr %add.ptr103.i.i318.i.3, align 8
  %sub.i.i319.i.3 = add nsw i32 %h.addr.0.i.i315.i, -8
  %add.ptr106.i.i320.i.3 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 256
  %tobool.not.i.i321.i.3 = icmp eq i32 %sub.i.i319.i.3, 0
  br i1 %tobool.not.i.i321.i.3, label %for.inc.i, label %do.body.i.i313.i, !llvm.loop !15

for.inc.i:                                        ; preds = %do.body.i.i313.i.prol.loopexit, %do.body.i.i313.i, %middle.block, %if.end77.i.i302.i, %if.end70.i.i299.i, %if.then63.i.i297.i, %x264_macroblock_cache_mv.exit284.i
  %add140.i = add nuw nsw i32 %i8.0353.i, %add37.i
  %cmp42.not.not.i = icmp slt i32 %add140.i, %add34.i
  br i1 %cmp42.not.not.i, label %for.body.i, label %if.end4

if.end4:                                          ; preds = %cleanup.i, %for.inc.i, %if.end.i491, %if.then.i508, %if.end206.i, %lor.lhs.false197.i, %if.end183.i, %if.then163.i
  %cmp5.not = icmp eq ptr %b_changed, null
  br i1 %cmp5.not, label %for.cond.preheader, label %if.then7

if.then7:                                         ; preds = %if.end4
  %direct_mv = getelementptr inbounds i8, ptr %h, i64 25720
  %140 = load i32, ptr %direct_mv, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %h, i64 25248
  %141 = load i32, ptr %arrayidx12, align 4
  %xor = xor i32 %141, %140
  %arrayidx17 = getelementptr inbounds i8, ptr %h, i64 25736
  %142 = load i32, ptr %arrayidx17, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %h, i64 25408
  %143 = load i32, ptr %arrayidx25, align 4
  %xor27 = xor i32 %143, %142
  %or = or i32 %xor27, %xor
  %direct_ref = getelementptr inbounds i8, ptr %h, i64 25752
  %144 = load i8, ptr %direct_ref, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %h, i64 25132
  %145 = load i8, ptr %arrayidx36, align 1
  %xor38471 = xor i8 %145, %144
  %xor38 = sext i8 %xor38471 to i32
  %or39 = or i32 %or, %xor38
  %arrayidx43 = getelementptr inbounds i8, ptr %h, i64 25756
  %146 = load i8, ptr %arrayidx43, align 4
  %arrayidx51 = getelementptr inbounds i8, ptr %h, i64 25172
  %147 = load i8, ptr %arrayidx51, align 1
  %xor53472 = xor i8 %147, %146
  %xor53 = sext i8 %xor53472 to i32
  %or54 = or i32 %or39, %xor53
  %tobool55.not = icmp eq i32 %or54, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %if.end249.thread535

land.lhs.true56:                                  ; preds = %if.then7
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388
  %148 = load i32, ptr %i_partition, align 4
  %cmp58.not = icmp eq i32 %148, 16
  br i1 %cmp58.not, label %if.end249.thread, label %if.end121

if.end121:                                        ; preds = %land.lhs.true56
  %arrayidx65 = getelementptr inbounds i8, ptr %h, i64 25732
  %149 = load i32, ptr %arrayidx65, align 4
  %arrayidx72 = getelementptr inbounds i8, ptr %h, i64 25320
  %150 = load i32, ptr %arrayidx72, align 4
  %xor74 = xor i32 %150, %149
  %arrayidx80 = getelementptr inbounds i8, ptr %h, i64 25748
  %151 = load i32, ptr %arrayidx80, align 4
  %arrayidx87 = getelementptr inbounds i8, ptr %h, i64 25480
  %152 = load i32, ptr %arrayidx87, align 4
  %xor89 = xor i32 %152, %151
  %or90 = or i32 %xor89, %xor74
  %arrayidx95 = getelementptr inbounds i8, ptr %h, i64 25755
  %153 = load i8, ptr %arrayidx95, align 1
  %arrayidx102 = getelementptr inbounds i8, ptr %h, i64 25150
  %154 = load i8, ptr %arrayidx102, align 1
  %xor104473 = xor i8 %154, %153
  %xor104 = sext i8 %xor104473 to i32
  %or105 = or i32 %or90, %xor104
  %arrayidx110 = getelementptr inbounds i8, ptr %h, i64 25759
  %155 = load i8, ptr %arrayidx110, align 1
  %arrayidx117 = getelementptr inbounds i8, ptr %h, i64 25190
  %156 = load i8, ptr %arrayidx117, align 1
  %xor119474 = xor i8 %156, %155
  %xor119 = sext i8 %xor119474 to i32
  %or120 = or i32 %or105, %xor119
  %tobool122.not = icmp eq i32 %or120, 0
  br i1 %tobool122.not, label %land.lhs.true123, label %if.end249.thread535

land.lhs.true123:                                 ; preds = %if.end121
  %cmp126 = icmp eq i32 %148, 13
  br i1 %cmp126, label %if.end249, label %if.end249.thread

if.end249.thread:                                 ; preds = %land.lhs.true56, %land.lhs.true123
  store i32 0, ptr %b_changed, align 4
  br label %cleanup376

if.end249.thread535:                              ; preds = %if.end121, %if.then7
  %changed.1.ph = phi i32 [ %or54, %if.then7 ], [ %or120, %if.end121 ]
  store i32 %changed.1.ph, ptr %b_changed, align 4
  br label %for.cond.preheader

if.end249:                                        ; preds = %land.lhs.true123
  %arrayidx133 = getelementptr inbounds i8, ptr %h, i64 25724
  %157 = load i32, ptr %arrayidx133, align 4
  %arrayidx140 = getelementptr inbounds i8, ptr %h, i64 25256
  %158 = load i32, ptr %arrayidx140, align 4
  %xor142 = xor i32 %158, %157
  %arrayidx148 = getelementptr inbounds i8, ptr %h, i64 25740
  %159 = load i32, ptr %arrayidx148, align 4
  %arrayidx155 = getelementptr inbounds i8, ptr %h, i64 25416
  %160 = load i32, ptr %arrayidx155, align 4
  %xor157 = xor i32 %160, %159
  %or158 = or i32 %xor157, %xor142
  %arrayidx163 = getelementptr inbounds i8, ptr %h, i64 25728
  %161 = load i32, ptr %arrayidx163, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %h, i64 25312
  %162 = load i32, ptr %arrayidx170, align 4
  %xor172 = xor i32 %162, %161
  %or173 = or i32 %or158, %xor172
  %arrayidx178 = getelementptr inbounds i8, ptr %h, i64 25744
  %163 = load i32, ptr %arrayidx178, align 8
  %arrayidx185 = getelementptr inbounds i8, ptr %h, i64 25472
  %164 = load i32, ptr %arrayidx185, align 4
  %xor187 = xor i32 %164, %163
  %or188 = or i32 %or173, %xor187
  %arrayidx193 = getelementptr inbounds i8, ptr %h, i64 25753
  %165 = load i8, ptr %arrayidx193, align 1
  %arrayidx200 = getelementptr inbounds i8, ptr %h, i64 25134
  %166 = load i8, ptr %arrayidx200, align 1
  %xor202475 = xor i8 %166, %165
  %xor202 = sext i8 %xor202475 to i32
  %or203 = or i32 %or188, %xor202
  %arrayidx208 = getelementptr inbounds i8, ptr %h, i64 25757
  %167 = load i8, ptr %arrayidx208, align 1
  %arrayidx215 = getelementptr inbounds i8, ptr %h, i64 25174
  %168 = load i8, ptr %arrayidx215, align 1
  %xor217476 = xor i8 %168, %167
  %xor217 = sext i8 %xor217476 to i32
  %or218 = or i32 %or203, %xor217
  %arrayidx223 = getelementptr inbounds i8, ptr %h, i64 25754
  %169 = load i8, ptr %arrayidx223, align 2
  %arrayidx230 = getelementptr inbounds i8, ptr %h, i64 25148
  %170 = load i8, ptr %arrayidx230, align 1
  %xor232477 = xor i8 %170, %169
  %xor232 = sext i8 %xor232477 to i32
  %or233 = or i32 %or218, %xor232
  %arrayidx238 = getelementptr inbounds i8, ptr %h, i64 25758
  %171 = load i8, ptr %arrayidx238, align 2
  %arrayidx245 = getelementptr inbounds i8, ptr %h, i64 25188
  %172 = load i8, ptr %arrayidx245, align 1
  %xor247478 = xor i8 %172, %171
  %xor247 = sext i8 %xor247478 to i32
  %or248 = or i32 %or233, %xor247
  store i32 %or248, ptr %b_changed, align 4
  %tobool250.not.not = icmp eq i32 %or248, 0
  br i1 %tobool250.not.not, label %cleanup376, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end249.thread535, %if.end249, %if.end4
  %direct_mv268 = getelementptr inbounds i8, ptr %h, i64 25720
  %direct_ref327 = getelementptr inbounds i8, ptr %h, i64 25752
  %i_partition371 = getelementptr inbounds i8, ptr %h, i64 17388
  %173 = load i32, ptr %i_partition371, align 4
  %direct_partition = getelementptr inbounds i8, ptr %h, i64 25760
  %arrayidx264 = getelementptr inbounds i8, ptr %h, i64 25248
  %174 = load i32, ptr %arrayidx264, align 4
  store i32 %174, ptr %direct_mv268, align 8
  %arrayidx279 = getelementptr inbounds i8, ptr %h, i64 25256
  %175 = load i32, ptr %arrayidx279, align 4
  %arrayidx286 = getelementptr inbounds i8, ptr %h, i64 25724
  store i32 %175, ptr %arrayidx286, align 4
  %arrayidx294 = getelementptr inbounds i8, ptr %h, i64 25312
  %176 = load i32, ptr %arrayidx294, align 4
  %arrayidx301 = getelementptr inbounds i8, ptr %h, i64 25728
  store i32 %176, ptr %arrayidx301, align 8
  %arrayidx309 = getelementptr inbounds i8, ptr %h, i64 25320
  %177 = load i32, ptr %arrayidx309, align 4
  %arrayidx316 = getelementptr inbounds i8, ptr %h, i64 25732
  store i32 %177, ptr %arrayidx316, align 4
  %arrayidx324 = getelementptr inbounds i8, ptr %h, i64 25132
  %178 = load i8, ptr %arrayidx324, align 1
  store i8 %178, ptr %direct_ref327, align 4
  %arrayidx337 = getelementptr inbounds i8, ptr %h, i64 25134
  %179 = load i8, ptr %arrayidx337, align 1
  %arrayidx343 = getelementptr inbounds i8, ptr %h, i64 25753
  store i8 %179, ptr %arrayidx343, align 1
  %arrayidx350 = getelementptr inbounds i8, ptr %h, i64 25148
  %180 = load i8, ptr %arrayidx350, align 1
  %arrayidx356 = getelementptr inbounds i8, ptr %h, i64 25754
  store i8 %180, ptr %arrayidx356, align 2
  %arrayidx363 = getelementptr inbounds i8, ptr %h, i64 25150
  %181 = load i8, ptr %arrayidx363, align 1
  %arrayidx369 = getelementptr inbounds i8, ptr %h, i64 25755
  store i8 %181, ptr %arrayidx369, align 1
  %arrayidx264.1 = getelementptr inbounds i8, ptr %h, i64 25408
  %182 = load i32, ptr %arrayidx264.1, align 4
  %arrayidx270.1 = getelementptr inbounds i8, ptr %h, i64 25736
  store i32 %182, ptr %arrayidx270.1, align 8
  %arrayidx279.1 = getelementptr inbounds i8, ptr %h, i64 25416
  %183 = load i32, ptr %arrayidx279.1, align 4
  %arrayidx286.1 = getelementptr inbounds i8, ptr %h, i64 25740
  store i32 %183, ptr %arrayidx286.1, align 4
  %arrayidx294.1 = getelementptr inbounds i8, ptr %h, i64 25472
  %184 = load i32, ptr %arrayidx294.1, align 4
  %arrayidx301.1 = getelementptr inbounds i8, ptr %h, i64 25744
  store i32 %184, ptr %arrayidx301.1, align 8
  %arrayidx309.1 = getelementptr inbounds i8, ptr %h, i64 25480
  %185 = load i32, ptr %arrayidx309.1, align 4
  %arrayidx316.1 = getelementptr inbounds i8, ptr %h, i64 25748
  store i32 %185, ptr %arrayidx316.1, align 4
  %arrayidx324.1 = getelementptr inbounds i8, ptr %h, i64 25172
  %186 = load i8, ptr %arrayidx324.1, align 1
  %arrayidx329.1 = getelementptr inbounds i8, ptr %h, i64 25756
  store i8 %186, ptr %arrayidx329.1, align 4
  %arrayidx337.1 = getelementptr inbounds i8, ptr %h, i64 25174
  %187 = load i8, ptr %arrayidx337.1, align 1
  %arrayidx343.1 = getelementptr inbounds i8, ptr %h, i64 25757
  store i8 %187, ptr %arrayidx343.1, align 1
  %arrayidx350.1 = getelementptr inbounds i8, ptr %h, i64 25188
  %188 = load i8, ptr %arrayidx350.1, align 1
  %arrayidx356.1 = getelementptr inbounds i8, ptr %h, i64 25758
  store i8 %188, ptr %arrayidx356.1, align 2
  %arrayidx363.1 = getelementptr inbounds i8, ptr %h, i64 25190
  %189 = load i8, ptr %arrayidx363.1, align 1
  %arrayidx369.1 = getelementptr inbounds i8, ptr %h, i64 25759
  store i8 %189, ptr %arrayidx369.1, align 1
  store i32 %173, ptr %direct_partition, align 16
  br label %cleanup376

cleanup376:                                       ; preds = %land.lhs.true.i505, %for.body.i, %for.cond.preheader, %land.lhs.true.i, %if.end249.thread, %if.end249, %entry
  %retval.1 = phi i32 [ 1, %if.end249 ], [ 0, %entry ], [ 1, %if.end249.thread ], [ 0, %land.lhs.true.i ], [ 1, %for.cond.preheader ], [ 0, %for.body.i ], [ 0, %land.lhs.true.i505 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_ref16x16(ptr nocapture noundef readonly %h, i32 noundef %i_list, i32 noundef %i_ref, ptr nocapture noundef writeonly %mvc, ptr nocapture noundef writeonly %i_mvc) local_unnamed_addr #1 {
entry:
  %mvr1 = getelementptr inbounds i8, ptr %h, i64 16720
  %idxprom = sext i32 %i_list to i64
  %idxprom2 = sext i32 %i_ref to i64
  %arrayidx3 = getelementptr inbounds [2 x [32 x ptr]], ptr %mvr1, i64 0, i64 %idxprom, i64 %idxprom2
  %0 = load ptr, ptr %arrayidx3, align 8
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %1 = load i32, ptr %i_type, align 16
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %ref = getelementptr inbounds i8, ptr %h, i64 25120
  %arrayidx8 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom, i64 30
  %2 = load i8, ptr %arrayidx8, align 1
  %conv = sext i8 %2 to i32
  %cmp9 = icmp eq i32 %conv, %i_ref
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %mv = getelementptr inbounds i8, ptr %h, i64 25200
  %arrayidx16 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom, i64 30
  %3 = load i32, ptr %arrayidx16, align 4
  store i32 %3, ptr %mvc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %i.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %cmp20 = icmp eq i32 %i_ref, 0
  br i1 %cmp20, label %land.lhs.true22, label %if.end58

land.lhs.true22:                                  ; preds = %if.end
  %b_have_lowres = getelementptr inbounds i8, ptr %h, i64 14672
  %4 = load i32, ptr %b_have_lowres, align 16
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end58, label %if.then23

if.then23:                                        ; preds = %land.lhs.true22
  %tobool24.not = icmp eq i32 %i_list, 0
  %fenc32 = getelementptr inbounds i8, ptr %h, i64 14680
  %5 = load ptr, ptr %fenc32, align 8
  br i1 %tobool24.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then23
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864
  %6 = load ptr, ptr %fref1, align 16
  br label %cond.end

cond.false:                                       ; preds = %if.then23
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  %7 = load ptr, ptr %fref0, align 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %.sink403 = phi ptr [ %7, %cond.false ], [ %5, %cond.true ]
  %.pn = phi ptr [ %5, %cond.false ], [ %6, %cond.true ]
  %8 = phi i64 [ 3576, %cond.false ], [ 3712, %cond.true ]
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %.sink.in = getelementptr inbounds i8, ptr %.pn, i64 56
  %.sink = load i32, ptr %.sink.in, align 8
  %i_frame38 = getelementptr inbounds i8, ptr %.sink403, i64 56
  %10 = load i32, ptr %i_frame38, align 8
  %11 = xor i32 %10, -1
  %sub40 = add i32 %.sink, %11
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds [17 x ptr], ptr %9, i64 0, i64 %idxprom41
  %cond = load ptr, ptr %arrayidx42, align 8
  %12 = load i16, ptr %cond, align 2
  %cmp46.not = icmp eq i16 %12, 32767
  br i1 %cmp46.not, label %if.end58, label %if.then48

if.then48:                                        ; preds = %cond.end
  %i_mb_xy = getelementptr inbounds i8, ptr %h, i64 16392
  %13 = load i32, ptr %i_mb_xy, align 8
  %idxprom50 = sext i32 %13 to i64
  %arrayidx51 = getelementptr inbounds [2 x i16], ptr %cond, i64 %idxprom50
  %14 = load i32, ptr %arrayidx51, align 4
  %mul = shl i32 %14, 1
  %and = and i32 %mul, -65538
  %idxprom53 = zext nneg i32 %i.0 to i64
  %arrayidx54 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom53
  store i32 %and, ptr %arrayidx54, align 4
  %inc56 = add nuw nsw i32 %i.0, 1
  br label %if.end58

if.end58:                                         ; preds = %cond.end, %if.then48, %land.lhs.true22, %if.end
  %i.2 = phi i32 [ %i.0, %land.lhs.true22 ], [ %i.0, %if.end ], [ %inc56, %if.then48 ], [ %i.0, %cond.end ]
  %i_neighbour_frame = getelementptr inbounds i8, ptr %h, i64 16576
  %15 = load i32, ptr %i_neighbour_frame, align 16
  %and60 = and i32 %15, 1
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end71, label %if.then62

if.then62:                                        ; preds = %if.end58
  %i_mb_left_xy = getelementptr inbounds i8, ptr %h, i64 16600
  %16 = load i32, ptr %i_mb_left_xy, align 8
  %idxprom64 = sext i32 %16 to i64
  %arrayidx65 = getelementptr inbounds [2 x i16], ptr %0, i64 %idxprom64
  %17 = load i32, ptr %arrayidx65, align 4
  %idxprom67 = zext nneg i32 %i.2 to i64
  %arrayidx68 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom67
  store i32 %17, ptr %arrayidx68, align 4
  %inc70 = add nuw nsw i32 %i.2, 1
  %.pre = load i32, ptr %i_neighbour_frame, align 16
  br label %if.end71

if.end71:                                         ; preds = %if.then62, %if.end58
  %18 = phi i32 [ %.pre, %if.then62 ], [ %15, %if.end58 ]
  %i.3 = phi i32 [ %inc70, %if.then62 ], [ %i.2, %if.end58 ]
  %and74 = and i32 %18, 2
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end113, label %if.then76

if.then76:                                        ; preds = %if.end71
  %i_mb_top_xy = getelementptr inbounds i8, ptr %h, i64 16604
  %19 = load i32, ptr %i_mb_top_xy, align 4
  %idxprom78 = sext i32 %19 to i64
  %arrayidx79 = getelementptr inbounds [2 x i16], ptr %0, i64 %idxprom78
  %20 = load i32, ptr %arrayidx79, align 4
  %idxprom81 = zext nneg i32 %i.3 to i64
  %arrayidx82 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom81
  store i32 %20, ptr %arrayidx82, align 4
  %inc84 = add nuw nsw i32 %i.3, 1
  %21 = load i32, ptr %i_neighbour_frame, align 16
  %and87 = and i32 %21, 8
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end98, label %if.then89

if.then89:                                        ; preds = %if.then76
  %i_mb_topleft_xy = getelementptr inbounds i8, ptr %h, i64 16608
  %22 = load i32, ptr %i_mb_topleft_xy, align 16
  %idxprom91 = sext i32 %22 to i64
  %arrayidx92 = getelementptr inbounds [2 x i16], ptr %0, i64 %idxprom91
  %23 = load i32, ptr %arrayidx92, align 4
  %idxprom94 = zext nneg i32 %inc84 to i64
  %arrayidx95 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom94
  store i32 %23, ptr %arrayidx95, align 4
  %inc97 = add nuw nsw i32 %i.3, 2
  %.pre399 = load i32, ptr %i_neighbour_frame, align 16
  br label %if.end98

if.end98:                                         ; preds = %if.then89, %if.then76
  %24 = phi i32 [ %.pre399, %if.then89 ], [ %21, %if.then76 ]
  %i.4 = phi i32 [ %inc97, %if.then89 ], [ %inc84, %if.then76 ]
  %and101 = and i32 %24, 4
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end113, label %if.then103

if.then103:                                       ; preds = %if.end98
  %i_mb_topright_xy = getelementptr inbounds i8, ptr %h, i64 16612
  %25 = load i32, ptr %i_mb_topright_xy, align 4
  %idxprom105 = sext i32 %25 to i64
  %arrayidx106 = getelementptr inbounds [2 x i16], ptr %0, i64 %idxprom105
  %26 = load i32, ptr %arrayidx106, align 4
  %idxprom108 = zext nneg i32 %i.4 to i64
  %arrayidx109 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom108
  store i32 %26, ptr %arrayidx109, align 4
  %inc111 = add nuw nsw i32 %i.4, 1
  br label %if.end113

if.end113:                                        ; preds = %if.end98, %if.then103, %if.end71
  %i.5 = phi i32 [ %inc111, %if.then103 ], [ %i.4, %if.end98 ], [ %i.3, %if.end71 ]
  %fref0114 = getelementptr inbounds i8, ptr %h, i64 14704
  %27 = load ptr, ptr %fref0114, align 16
  %i_ref116 = getelementptr inbounds i8, ptr %27, i64 6728
  %28 = load i32, ptr %i_ref116, align 8
  %cmp118 = icmp sgt i32 %28, 0
  br i1 %cmp118, label %if.then120, label %if.end288

if.then120:                                       ; preds = %if.end113
  %tobool123.not = icmp eq i32 %i_list, 0
  %fref1125 = getelementptr inbounds i8, ptr %h, i64 14864
  %cond131 = select i1 %tobool123.not, ptr %fref0114, ptr %fref1125
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388
  %29 = load i32, ptr %i_mb_y, align 4
  %and133 = and i32 %29, 1
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %30 = load ptr, ptr %fdec, align 16
  %31 = load i32, ptr %30, align 16
  %i_delta_poc_bottom = getelementptr inbounds i8, ptr %h, i64 7288
  %32 = load i32, ptr %i_delta_poc_bottom, align 8
  %mul135 = mul nuw nsw i32 %32, %and133
  %add = add nsw i32 %mul135, %31
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %33 = load i32, ptr %b_mbaff, align 4
  %shr = ashr i32 %i_ref, %33
  %idxprom137 = sext i32 %shr to i64
  %arrayidx138 = getelementptr inbounds ptr, ptr %cond131, i64 %idxprom137
  %34 = load ptr, ptr %arrayidx138, align 8
  %35 = load i32, ptr %34, align 16
  %tobool142.not = icmp eq i32 %33, 0
  br i1 %tobool142.not, label %if.end150, label %land.lhs.true143

land.lhs.true143:                                 ; preds = %if.then120
  %and133398 = xor i32 %29, %i_ref
  %xor = and i32 %and133398, 1
  %tobool145.not = icmp eq i32 %xor, 0
  %add149 = select i1 %tobool145.not, i32 0, i32 %32
  %spec.select = add nsw i32 %35, %add149
  br label %if.end150

if.end150:                                        ; preds = %land.lhs.true143, %if.then120
  %refpoc.0 = phi i32 [ %35, %if.then120 ], [ %spec.select, %land.lhs.true143 ]
  %i_mb_xy152 = getelementptr inbounds i8, ptr %h, i64 16392
  %36 = load i32, ptr %i_mb_xy152, align 8
  %i_mb_stride = getelementptr inbounds i8, ptr %h, i64 16372
  %sub157 = sub i32 %add, %refpoc.0
  %inv_ref_poc = getelementptr inbounds i8, ptr %27, i64 6864
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %37 = load i32, ptr %b_interlaced, align 4
  %and159 = and i32 %37, %and133
  %idxprom160 = zext nneg i32 %and159 to i64
  %arrayidx161 = getelementptr inbounds [2 x i16], ptr %inv_ref_poc, i64 0, i64 %idxprom160
  %38 = load i16, ptr %arrayidx161, align 2
  %conv162 = sext i16 %38 to i32
  %mul163 = mul nsw i32 %sub157, %conv162
  %mv16x16 = getelementptr inbounds i8, ptr %27, i64 3568
  %39 = load ptr, ptr %mv16x16, align 16
  %idxprom164 = sext i32 %36 to i64
  %arrayidx165 = getelementptr inbounds [2 x i16], ptr %39, i64 %idxprom164
  %40 = load i16, ptr %arrayidx165, align 2
  %conv167 = sext i16 %40 to i32
  %mul168 = mul nsw i32 %mul163, %conv167
  %add169 = add nsw i32 %mul168, 128
  %shr170 = lshr i32 %add169, 8
  %conv171 = trunc i32 %shr170 to i16
  %idxprom172 = zext nneg i32 %i.5 to i64
  %arrayidx173 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom172
  store i16 %conv171, ptr %arrayidx173, align 2
  %41 = load ptr, ptr %mv16x16, align 16
  %arrayidx178 = getelementptr inbounds [2 x i16], ptr %41, i64 %idxprom164, i64 1
  %42 = load i16, ptr %arrayidx178, align 2
  %conv179 = sext i16 %42 to i32
  %mul180 = mul nsw i32 %mul163, %conv179
  %add181 = add nsw i32 %mul180, 128
  %shr182 = lshr i32 %add181, 8
  %conv183 = trunc i32 %shr182 to i16
  %arrayidx186 = getelementptr inbounds i8, ptr %arrayidx173, i64 2
  store i16 %conv183, ptr %arrayidx186, align 2
  %inc187 = add nuw nsw i32 %i.5, 1
  %i_mb_x = getelementptr inbounds i8, ptr %h, i64 16384
  %43 = load i32, ptr %i_mb_x, align 16
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %44 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %44, i64 1084
  %45 = load i32, ptr %i_mb_width, align 4
  %sub189 = add nsw i32 %45, -1
  %cmp190 = icmp slt i32 %43, %sub189
  br i1 %cmp190, label %if.then192, label %if.end236

if.then192:                                       ; preds = %if.end150
  %46 = load i32, ptr %i_mb_xy152, align 8
  %add196 = add nsw i32 %46, 1
  %47 = load i32, ptr %b_interlaced, align 4
  %and206 = and i32 %47, %and133
  %idxprom207 = zext nneg i32 %and206 to i64
  %arrayidx208 = getelementptr inbounds [2 x i16], ptr %inv_ref_poc, i64 0, i64 %idxprom207
  %48 = load i16, ptr %arrayidx208, align 2
  %conv209 = sext i16 %48 to i32
  %mul210 = mul nsw i32 %sub157, %conv209
  %49 = load ptr, ptr %mv16x16, align 16
  %idxprom212 = sext i32 %add196 to i64
  %arrayidx213 = getelementptr inbounds [2 x i16], ptr %49, i64 %idxprom212
  %50 = load i16, ptr %arrayidx213, align 2
  %conv215 = sext i16 %50 to i32
  %mul216 = mul nsw i32 %mul210, %conv215
  %add217 = add nsw i32 %mul216, 128
  %shr218 = lshr i32 %add217, 8
  %conv219 = trunc i32 %shr218 to i16
  %idxprom220 = zext nneg i32 %inc187 to i64
  %arrayidx221 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom220
  store i16 %conv219, ptr %arrayidx221, align 2
  %51 = load ptr, ptr %mv16x16, align 16
  %arrayidx226 = getelementptr inbounds [2 x i16], ptr %51, i64 %idxprom212, i64 1
  %52 = load i16, ptr %arrayidx226, align 2
  %conv227 = sext i16 %52 to i32
  %mul228 = mul nsw i32 %mul210, %conv227
  %add229 = add nsw i32 %mul228, 128
  %shr230 = lshr i32 %add229, 8
  %conv231 = trunc i32 %shr230 to i16
  %arrayidx234 = getelementptr inbounds i8, ptr %arrayidx221, i64 2
  store i16 %conv231, ptr %arrayidx234, align 2
  %inc235 = add nuw nsw i32 %i.5, 2
  %.pre400 = load ptr, ptr %sps, align 16
  br label %if.end236

if.end236:                                        ; preds = %if.then192, %if.end150
  %53 = phi ptr [ %.pre400, %if.then192 ], [ %44, %if.end150 ]
  %i.6 = phi i32 [ %inc235, %if.then192 ], [ %inc187, %if.end150 ]
  %54 = load i32, ptr %i_mb_y, align 4
  %i_mb_height = getelementptr inbounds i8, ptr %53, i64 1088
  %55 = load i32, ptr %i_mb_height, align 4
  %sub240 = add nsw i32 %55, -1
  %cmp241 = icmp slt i32 %54, %sub240
  br i1 %cmp241, label %if.then243, label %if.end288

if.then243:                                       ; preds = %if.end236
  %56 = load i32, ptr %i_mb_xy152, align 8
  %57 = load i32, ptr %i_mb_stride, align 4
  %add251 = add nsw i32 %57, %56
  %58 = load i32, ptr %b_interlaced, align 4
  %and257 = and i32 %58, %and133
  %idxprom258 = zext nneg i32 %and257 to i64
  %arrayidx259 = getelementptr inbounds [2 x i16], ptr %inv_ref_poc, i64 0, i64 %idxprom258
  %59 = load i16, ptr %arrayidx259, align 2
  %conv260 = sext i16 %59 to i32
  %mul261 = mul nsw i32 %sub157, %conv260
  %60 = load ptr, ptr %mv16x16, align 16
  %idxprom263 = sext i32 %add251 to i64
  %arrayidx264 = getelementptr inbounds [2 x i16], ptr %60, i64 %idxprom263
  %61 = load i16, ptr %arrayidx264, align 2
  %conv266 = sext i16 %61 to i32
  %mul267 = mul nsw i32 %mul261, %conv266
  %add268 = add nsw i32 %mul267, 128
  %shr269 = lshr i32 %add268, 8
  %conv270 = trunc i32 %shr269 to i16
  %idxprom271 = zext nneg i32 %i.6 to i64
  %arrayidx272 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom271
  store i16 %conv270, ptr %arrayidx272, align 2
  %62 = load ptr, ptr %mv16x16, align 16
  %arrayidx277 = getelementptr inbounds [2 x i16], ptr %62, i64 %idxprom263, i64 1
  %63 = load i16, ptr %arrayidx277, align 2
  %conv278 = sext i16 %63 to i32
  %mul279 = mul nsw i32 %mul261, %conv278
  %add280 = add nsw i32 %mul279, 128
  %shr281 = lshr i32 %add280, 8
  %conv282 = trunc i32 %shr281 to i16
  %arrayidx285 = getelementptr inbounds i8, ptr %arrayidx272, i64 2
  store i16 %conv282, ptr %arrayidx285, align 2
  %inc286 = add nuw nsw i32 %i.6, 1
  br label %if.end288

if.end288:                                        ; preds = %if.end236, %if.then243, %if.end113
  %i.8 = phi i32 [ %i.5, %if.end113 ], [ %inc286, %if.then243 ], [ %i.6, %if.end236 ]
  store i32 %i.8, ptr %i_mvc, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10}
