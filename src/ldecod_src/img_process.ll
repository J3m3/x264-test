; ModuleID = 'ldecod_src/img_process.c'
source_filename = "ldecod_src/img_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @init_process_image(ptr nocapture noundef readnone %p_Vid, ptr nocapture noundef readnone %p_Inp) local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @clear_process_image(ptr nocapture noundef readnone %p_Vid, ptr nocapture noundef readnone %p_Inp) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @process_image(ptr noundef readonly %p_Vid, ptr nocapture noundef readonly %p_Inp) local_unnamed_addr #1 {
entry:
  %ProcessInput = getelementptr inbounds i8, ptr %p_Inp, i64 1064
  %0 = load i32, ptr %ProcessInput, align 8
  switch i32 %0, label %sw.bb [
    i32 4, label %sw.bb36
    i32 1, label %sw.bb2
    i32 2, label %sw.bb12
    i32 3, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  %imgData0 = getelementptr inbounds i8, ptr %p_Vid, i64 849624
  %frm_data.i = getelementptr inbounds i8, ptr %p_Vid, i64 849440
  %1 = load ptr, ptr %frm_data.i, align 8
  %2 = load ptr, ptr %1, align 8
  %frm_data2.i = getelementptr inbounds i8, ptr %p_Vid, i64 849760
  %3 = load ptr, ptr %frm_data2.i, align 8
  %4 = load ptr, ptr %3, align 8
  %height.i = getelementptr inbounds i8, ptr %p_Vid, i64 849652
  %5 = load i32, ptr %height.i, align 4
  %width.i = getelementptr inbounds i8, ptr %p_Vid, i64 849640
  %6 = load i32, ptr %width.i, align 8
  %mul.i = mul nsw i32 %6, %5
  %conv.i = sext i32 %mul.i to i64
  %mul8.i = shl nsw i64 %conv.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 2 %4, i64 %mul8.i, i1 false)
  %7 = load i32, ptr %imgData0, align 8
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %CPImage.exit, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %arrayidx12.i = getelementptr inbounds i8, ptr %p_Vid, i64 849448
  %8 = load ptr, ptr %arrayidx12.i, align 8
  %9 = load ptr, ptr %8, align 8
  %arrayidx15.i = getelementptr inbounds i8, ptr %p_Vid, i64 849768
  %10 = load ptr, ptr %arrayidx15.i, align 8
  %11 = load ptr, ptr %10, align 8
  %arrayidx19.i = getelementptr inbounds i8, ptr %p_Vid, i64 849656
  %12 = load i32, ptr %arrayidx19.i, align 4
  %arrayidx22.i = getelementptr inbounds i8, ptr %p_Vid, i64 849644
  %13 = load i32, ptr %arrayidx22.i, align 4
  %mul23.i = mul nsw i32 %13, %12
  %conv24.i = sext i32 %mul23.i to i64
  %mul25.i = shl nsw i64 %conv24.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %9, ptr align 2 %11, i64 %mul25.i, i1 false)
  %arrayidx27.i = getelementptr inbounds i8, ptr %p_Vid, i64 849456
  %14 = load ptr, ptr %arrayidx27.i, align 8
  %15 = load ptr, ptr %14, align 8
  %arrayidx30.i = getelementptr inbounds i8, ptr %p_Vid, i64 849776
  %16 = load ptr, ptr %arrayidx30.i, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %arrayidx19.i, align 4
  %19 = load i32, ptr %arrayidx22.i, align 4
  %mul38.i = mul nsw i32 %19, %18
  %conv39.i = sext i32 %mul38.i to i64
  %mul40.i = shl nsw i64 %conv39.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %15, ptr align 2 %17, i64 %mul40.i, i1 false)
  br label %CPImage.exit

CPImage.exit:                                     ; preds = %sw.bb, %if.then.i
  %enable_32_pulldown = getelementptr inbounds i8, ptr %p_Inp, i64 1068
  %20 = load i32, ptr %enable_32_pulldown, align 4
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %sw.epilog, label %if.then

if.then:                                          ; preds = %CPImage.exit
  %imgData4 = getelementptr inbounds i8, ptr %p_Vid, i64 850904
  %height.i83 = getelementptr inbounds i8, ptr %p_Vid, i64 850932
  %21 = load i32, ptr %height.i83, align 4
  %cmp80.i = icmp sgt i32 %21, 1
  br i1 %cmp80.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %frm_data3.i = getelementptr inbounds i8, ptr %p_Vid, i64 851040
  %width.i87 = getelementptr inbounds i8, ptr %p_Vid, i64 850920
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %22 = load ptr, ptr %frm_data.i, align 8
  %arrayidx2.i = getelementptr inbounds ptr, ptr %22, i64 %indvars.iv.i
  %23 = load ptr, ptr %arrayidx2.i, align 8
  %24 = load ptr, ptr %frm_data3.i, align 8
  %arrayidx6.i = getelementptr inbounds ptr, ptr %24, i64 %indvars.iv.i
  %25 = load ptr, ptr %arrayidx6.i, align 8
  %26 = load i32, ptr %width.i87, align 8
  %conv.i88 = sext i32 %26 to i64
  %mul.i89 = shl nsw i64 %conv.i88, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %23, ptr align 2 %25, i64 %mul.i89, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %27 = load i32, ptr %height.i83, align 4
  %28 = sext i32 %27 to i64
  %cmp.i = icmp slt i64 %indvars.iv.next.i, %28
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i, %if.then
  %29 = load i32, ptr %imgData4, align 8
  %cmp10.not.i = icmp eq i32 %29, 0
  br i1 %cmp10.not.i, label %sw.epilog, label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %for.end.i
  %arrayidx15.i84 = getelementptr inbounds i8, ptr %p_Vid, i64 850936
  %30 = load i32, ptr %arrayidx15.i84, align 4
  %cmp1682.i = icmp sgt i32 %30, 1
  br i1 %cmp1682.i, label %for.body18.lr.ph.i, label %for.cond35.preheader.i

for.body18.lr.ph.i:                               ; preds = %for.cond12.preheader.i
  %arrayidx20.i = getelementptr inbounds i8, ptr %p_Vid, i64 849448
  %arrayidx24.i = getelementptr inbounds i8, ptr %p_Vid, i64 851048
  %arrayidx29.i = getelementptr inbounds i8, ptr %p_Vid, i64 850924
  br label %for.body18.i

for.cond35.preheader.i:                           ; preds = %for.body18.i, %for.cond12.preheader.i
  %arrayidx38.i = getelementptr inbounds i8, ptr %p_Vid, i64 850940
  %31 = load i32, ptr %arrayidx38.i, align 4
  %cmp3984.i = icmp sgt i32 %31, 1
  br i1 %cmp3984.i, label %for.body41.lr.ph.i, label %sw.epilog

for.body41.lr.ph.i:                               ; preds = %for.cond35.preheader.i
  %arrayidx43.i = getelementptr inbounds i8, ptr %p_Vid, i64 849456
  %arrayidx47.i = getelementptr inbounds i8, ptr %p_Vid, i64 851056
  %arrayidx52.i = getelementptr inbounds i8, ptr %p_Vid, i64 850928
  br label %for.body41.i

for.body18.i:                                     ; preds = %for.body18.i, %for.body18.lr.ph.i
  %indvars.iv87.i = phi i64 [ 1, %for.body18.lr.ph.i ], [ %indvars.iv.next88.i, %for.body18.i ]
  %32 = load ptr, ptr %arrayidx20.i, align 8
  %arrayidx22.i85 = getelementptr inbounds ptr, ptr %32, i64 %indvars.iv87.i
  %33 = load ptr, ptr %arrayidx22.i85, align 8
  %34 = load ptr, ptr %arrayidx24.i, align 8
  %arrayidx26.i = getelementptr inbounds ptr, ptr %34, i64 %indvars.iv87.i
  %35 = load ptr, ptr %arrayidx26.i, align 8
  %36 = load i32, ptr %arrayidx29.i, align 4
  %conv30.i = sext i32 %36 to i64
  %mul31.i = shl nsw i64 %conv30.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr align 2 %35, i64 %mul31.i, i1 false)
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 2
  %37 = load i32, ptr %arrayidx15.i84, align 4
  %38 = sext i32 %37 to i64
  %cmp16.i = icmp slt i64 %indvars.iv.next88.i, %38
  br i1 %cmp16.i, label %for.body18.i, label %for.cond35.preheader.i

for.body41.i:                                     ; preds = %for.body41.i, %for.body41.lr.ph.i
  %indvars.iv90.i = phi i64 [ 1, %for.body41.lr.ph.i ], [ %indvars.iv.next91.i, %for.body41.i ]
  %39 = load ptr, ptr %arrayidx43.i, align 8
  %arrayidx45.i = getelementptr inbounds ptr, ptr %39, i64 %indvars.iv90.i
  %40 = load ptr, ptr %arrayidx45.i, align 8
  %41 = load ptr, ptr %arrayidx47.i, align 8
  %arrayidx49.i = getelementptr inbounds ptr, ptr %41, i64 %indvars.iv90.i
  %42 = load ptr, ptr %arrayidx49.i, align 8
  %43 = load i32, ptr %arrayidx52.i, align 8
  %conv53.i = sext i32 %43 to i64
  %mul54.i = shl nsw i64 %conv53.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %40, ptr align 2 %42, i64 %mul54.i, i1 false)
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 2
  %44 = load i32, ptr %arrayidx38.i, align 4
  %45 = sext i32 %44 to i64
  %cmp39.i = icmp slt i64 %indvars.iv.next91.i, %45
  br i1 %cmp39.i, label %for.body41.i, label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %imgData04 = getelementptr inbounds i8, ptr %p_Vid, i64 849624
  %frm_data.i90 = getelementptr inbounds i8, ptr %p_Vid, i64 849440
  %46 = load ptr, ptr %frm_data.i90, align 8
  %47 = load ptr, ptr %46, align 8
  %frm_data2.i91 = getelementptr inbounds i8, ptr %p_Vid, i64 849760
  %48 = load ptr, ptr %frm_data2.i91, align 8
  %49 = load ptr, ptr %48, align 8
  %height.i92 = getelementptr inbounds i8, ptr %p_Vid, i64 849652
  %50 = load i32, ptr %height.i92, align 4
  %width.i93 = getelementptr inbounds i8, ptr %p_Vid, i64 849640
  %51 = load i32, ptr %width.i93, align 8
  %mul.i94 = mul nsw i32 %51, %50
  %conv.i95 = sext i32 %mul.i94 to i64
  %mul8.i96 = shl nsw i64 %conv.i95, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %47, ptr align 2 %49, i64 %mul8.i96, i1 false)
  %52 = load i32, ptr %imgData04, align 8
  %cmp.not.i97 = icmp eq i32 %52, 0
  br i1 %cmp.not.i97, label %FilterImage.exit, label %if.then.i98

if.then.i98:                                      ; preds = %sw.bb2
  %arrayidx12.i99 = getelementptr inbounds i8, ptr %p_Vid, i64 849448
  %53 = load ptr, ptr %arrayidx12.i99, align 8
  %54 = load ptr, ptr %53, align 8
  %arrayidx15.i100 = getelementptr inbounds i8, ptr %p_Vid, i64 849768
  %55 = load ptr, ptr %arrayidx15.i100, align 8
  %56 = load ptr, ptr %55, align 8
  %arrayidx19.i101 = getelementptr inbounds i8, ptr %p_Vid, i64 849656
  %57 = load i32, ptr %arrayidx19.i101, align 4
  %arrayidx22.i102 = getelementptr inbounds i8, ptr %p_Vid, i64 849644
  %58 = load i32, ptr %arrayidx22.i102, align 4
  %mul23.i103 = mul nsw i32 %58, %57
  %conv24.i104 = sext i32 %mul23.i103 to i64
  %mul25.i105 = shl nsw i64 %conv24.i104, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %54, ptr align 2 %56, i64 %mul25.i105, i1 false)
  %arrayidx27.i106 = getelementptr inbounds i8, ptr %p_Vid, i64 849456
  %59 = load ptr, ptr %arrayidx27.i106, align 8
  %60 = load ptr, ptr %59, align 8
  %arrayidx30.i107 = getelementptr inbounds i8, ptr %p_Vid, i64 849776
  %61 = load ptr, ptr %arrayidx30.i107, align 8
  %62 = load ptr, ptr %61, align 8
  %63 = load i32, ptr %arrayidx19.i101, align 4
  %64 = load i32, ptr %arrayidx22.i102, align 4
  %mul38.i108 = mul nsw i32 %64, %63
  %conv39.i109 = sext i32 %mul38.i108 to i64
  %mul40.i110 = shl nsw i64 %conv39.i109, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %60, ptr align 2 %62, i64 %mul40.i110, i1 false)
  br label %FilterImage.exit

FilterImage.exit:                                 ; preds = %sw.bb2, %if.then.i98
  %enable_32_pulldown5 = getelementptr inbounds i8, ptr %p_Inp, i64 1068
  %65 = load i32, ptr %enable_32_pulldown5, align 4
  %tobool6.not = icmp eq i32 %65, 0
  br i1 %tobool6.not, label %sw.epilog, label %if.then7

if.then7:                                         ; preds = %FilterImage.exit
  %imgData32 = getelementptr inbounds i8, ptr %p_Vid, i64 850584
  %imgData48 = getelementptr inbounds i8, ptr %p_Vid, i64 850904
  %frm_data.i111 = getelementptr inbounds i8, ptr %p_Vid, i64 850720
  %66 = load ptr, ptr %frm_data.i111, align 8
  %67 = load ptr, ptr %66, align 8
  %frm_data2.i112 = getelementptr inbounds i8, ptr %p_Vid, i64 851040
  %68 = load ptr, ptr %frm_data2.i112, align 8
  %69 = load ptr, ptr %68, align 8
  %height.i113 = getelementptr inbounds i8, ptr %p_Vid, i64 850932
  %70 = load i32, ptr %height.i113, align 4
  %width.i114 = getelementptr inbounds i8, ptr %p_Vid, i64 850920
  %71 = load i32, ptr %width.i114, align 8
  %mul.i115 = mul nsw i32 %71, %70
  %conv.i116 = sext i32 %mul.i115 to i64
  %mul8.i117 = shl nsw i64 %conv.i116, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %67, ptr align 2 %69, i64 %mul8.i117, i1 false)
  %72 = load i32, ptr %imgData48, align 8
  %cmp.not.i118 = icmp eq i32 %72, 0
  br i1 %cmp.not.i118, label %FilterImage.exit132, label %if.then.i119

if.then.i119:                                     ; preds = %if.then7
  %arrayidx12.i120 = getelementptr inbounds i8, ptr %p_Vid, i64 850728
  %73 = load ptr, ptr %arrayidx12.i120, align 8
  %74 = load ptr, ptr %73, align 8
  %arrayidx15.i121 = getelementptr inbounds i8, ptr %p_Vid, i64 851048
  %75 = load ptr, ptr %arrayidx15.i121, align 8
  %76 = load ptr, ptr %75, align 8
  %arrayidx19.i122 = getelementptr inbounds i8, ptr %p_Vid, i64 850936
  %77 = load i32, ptr %arrayidx19.i122, align 4
  %arrayidx22.i123 = getelementptr inbounds i8, ptr %p_Vid, i64 850924
  %78 = load i32, ptr %arrayidx22.i123, align 4
  %mul23.i124 = mul nsw i32 %78, %77
  %conv24.i125 = sext i32 %mul23.i124 to i64
  %mul25.i126 = shl nsw i64 %conv24.i125, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %74, ptr align 2 %76, i64 %mul25.i126, i1 false)
  %arrayidx27.i127 = getelementptr inbounds i8, ptr %p_Vid, i64 850736
  %79 = load ptr, ptr %arrayidx27.i127, align 8
  %80 = load ptr, ptr %79, align 8
  %arrayidx30.i128 = getelementptr inbounds i8, ptr %p_Vid, i64 851056
  %81 = load ptr, ptr %arrayidx30.i128, align 8
  %82 = load ptr, ptr %81, align 8
  %83 = load i32, ptr %arrayidx19.i122, align 4
  %84 = load i32, ptr %arrayidx22.i123, align 4
  %mul38.i129 = mul nsw i32 %84, %83
  %conv39.i130 = sext i32 %mul38.i129 to i64
  %mul40.i131 = shl nsw i64 %conv39.i130, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %80, ptr align 2 %82, i64 %mul40.i131, i1 false)
  br label %FilterImage.exit132

FilterImage.exit132:                              ; preds = %if.then7, %if.then.i119
  %height.i133 = getelementptr inbounds i8, ptr %p_Vid, i64 850612
  %85 = load i32, ptr %height.i133, align 4
  %cmp80.i134 = icmp sgt i32 %85, 1
  br i1 %cmp80.i134, label %for.body.lr.ph.i167, label %for.end.i135

for.body.lr.ph.i167:                              ; preds = %FilterImage.exit132
  %width.i170 = getelementptr inbounds i8, ptr %p_Vid, i64 850600
  br label %for.body.i171

for.body.i171:                                    ; preds = %for.body.i171, %for.body.lr.ph.i167
  %indvars.iv.i172 = phi i64 [ 1, %for.body.lr.ph.i167 ], [ %indvars.iv.next.i177, %for.body.i171 ]
  %86 = load ptr, ptr %frm_data.i90, align 8
  %arrayidx2.i173 = getelementptr inbounds ptr, ptr %86, i64 %indvars.iv.i172
  %87 = load ptr, ptr %arrayidx2.i173, align 8
  %88 = load ptr, ptr %frm_data.i111, align 8
  %arrayidx6.i174 = getelementptr inbounds ptr, ptr %88, i64 %indvars.iv.i172
  %89 = load ptr, ptr %arrayidx6.i174, align 8
  %90 = load i32, ptr %width.i170, align 8
  %conv.i175 = sext i32 %90 to i64
  %mul.i176 = shl nsw i64 %conv.i175, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %87, ptr align 2 %89, i64 %mul.i176, i1 false)
  %indvars.iv.next.i177 = add nuw nsw i64 %indvars.iv.i172, 2
  %91 = load i32, ptr %height.i133, align 4
  %92 = sext i32 %91 to i64
  %cmp.i178 = icmp slt i64 %indvars.iv.next.i177, %92
  br i1 %cmp.i178, label %for.body.i171, label %for.end.i135

for.end.i135:                                     ; preds = %for.body.i171, %FilterImage.exit132
  %93 = load i32, ptr %imgData32, align 8
  %cmp10.not.i136 = icmp eq i32 %93, 0
  br i1 %cmp10.not.i136, label %sw.epilog, label %for.cond12.preheader.i137

for.cond12.preheader.i137:                        ; preds = %for.end.i135
  %arrayidx15.i138 = getelementptr inbounds i8, ptr %p_Vid, i64 850616
  %94 = load i32, ptr %arrayidx15.i138, align 4
  %cmp1682.i139 = icmp sgt i32 %94, 1
  br i1 %cmp1682.i139, label %for.body18.lr.ph.i155, label %for.cond35.preheader.i140

for.body18.lr.ph.i155:                            ; preds = %for.cond12.preheader.i137
  %arrayidx20.i156 = getelementptr inbounds i8, ptr %p_Vid, i64 849448
  %arrayidx24.i157 = getelementptr inbounds i8, ptr %p_Vid, i64 850728
  %arrayidx29.i158 = getelementptr inbounds i8, ptr %p_Vid, i64 850604
  br label %for.body18.i159

for.cond35.preheader.i140:                        ; preds = %for.body18.i159, %for.cond12.preheader.i137
  %arrayidx38.i141 = getelementptr inbounds i8, ptr %p_Vid, i64 850620
  %95 = load i32, ptr %arrayidx38.i141, align 4
  %cmp3984.i142 = icmp sgt i32 %95, 1
  br i1 %cmp3984.i142, label %for.body41.lr.ph.i143, label %sw.epilog

for.body41.lr.ph.i143:                            ; preds = %for.cond35.preheader.i140
  %arrayidx43.i144 = getelementptr inbounds i8, ptr %p_Vid, i64 849456
  %arrayidx47.i145 = getelementptr inbounds i8, ptr %p_Vid, i64 850736
  %arrayidx52.i146 = getelementptr inbounds i8, ptr %p_Vid, i64 850608
  br label %for.body41.i147

for.body18.i159:                                  ; preds = %for.body18.i159, %for.body18.lr.ph.i155
  %indvars.iv87.i160 = phi i64 [ 1, %for.body18.lr.ph.i155 ], [ %indvars.iv.next88.i165, %for.body18.i159 ]
  %96 = load ptr, ptr %arrayidx20.i156, align 8
  %arrayidx22.i161 = getelementptr inbounds ptr, ptr %96, i64 %indvars.iv87.i160
  %97 = load ptr, ptr %arrayidx22.i161, align 8
  %98 = load ptr, ptr %arrayidx24.i157, align 8
  %arrayidx26.i162 = getelementptr inbounds ptr, ptr %98, i64 %indvars.iv87.i160
  %99 = load ptr, ptr %arrayidx26.i162, align 8
  %100 = load i32, ptr %arrayidx29.i158, align 4
  %conv30.i163 = sext i32 %100 to i64
  %mul31.i164 = shl nsw i64 %conv30.i163, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %97, ptr align 2 %99, i64 %mul31.i164, i1 false)
  %indvars.iv.next88.i165 = add nuw nsw i64 %indvars.iv87.i160, 2
  %101 = load i32, ptr %arrayidx15.i138, align 4
  %102 = sext i32 %101 to i64
  %cmp16.i166 = icmp slt i64 %indvars.iv.next88.i165, %102
  br i1 %cmp16.i166, label %for.body18.i159, label %for.cond35.preheader.i140

for.body41.i147:                                  ; preds = %for.body41.i147, %for.body41.lr.ph.i143
  %indvars.iv90.i148 = phi i64 [ 1, %for.body41.lr.ph.i143 ], [ %indvars.iv.next91.i153, %for.body41.i147 ]
  %103 = load ptr, ptr %arrayidx43.i144, align 8
  %arrayidx45.i149 = getelementptr inbounds ptr, ptr %103, i64 %indvars.iv90.i148
  %104 = load ptr, ptr %arrayidx45.i149, align 8
  %105 = load ptr, ptr %arrayidx47.i145, align 8
  %arrayidx49.i150 = getelementptr inbounds ptr, ptr %105, i64 %indvars.iv90.i148
  %106 = load ptr, ptr %arrayidx49.i150, align 8
  %107 = load i32, ptr %arrayidx52.i146, align 8
  %conv53.i151 = sext i32 %107 to i64
  %mul54.i152 = shl nsw i64 %conv53.i151, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %104, ptr align 2 %106, i64 %mul54.i152, i1 false)
  %indvars.iv.next91.i153 = add nuw nsw i64 %indvars.iv90.i148, 2
  %108 = load i32, ptr %arrayidx38.i141, align 4
  %109 = sext i32 %108 to i64
  %cmp39.i154 = icmp slt i64 %indvars.iv.next91.i153, %109
  br i1 %cmp39.i154, label %for.body41.i147, label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %imgData014 = getelementptr inbounds i8, ptr %p_Vid, i64 849624
  %frm_data.i180 = getelementptr inbounds i8, ptr %p_Vid, i64 849440
  %110 = load ptr, ptr %frm_data.i180, align 8
  %111 = load ptr, ptr %110, align 8
  %frm_data2.i181 = getelementptr inbounds i8, ptr %p_Vid, i64 849760
  %112 = load ptr, ptr %frm_data2.i181, align 8
  %113 = load ptr, ptr %112, align 8
  %height.i182 = getelementptr inbounds i8, ptr %p_Vid, i64 849652
  %114 = load i32, ptr %height.i182, align 4
  %width.i183 = getelementptr inbounds i8, ptr %p_Vid, i64 849640
  %115 = load i32, ptr %width.i183, align 8
  %mul.i184 = mul nsw i32 %115, %114
  %conv.i185 = sext i32 %mul.i184 to i64
  %mul8.i186 = shl nsw i64 %conv.i185, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %111, ptr align 2 %113, i64 %mul8.i186, i1 false)
  %116 = load i32, ptr %imgData014, align 8
  %cmp.not.i187 = icmp eq i32 %116, 0
  br i1 %cmp.not.i187, label %YV12toYUV.exit, label %if.then.i188

if.then.i188:                                     ; preds = %sw.bb12
  %arrayidx12.i189 = getelementptr inbounds i8, ptr %p_Vid, i64 849448
  %117 = load ptr, ptr %arrayidx12.i189, align 8
  %118 = load ptr, ptr %117, align 8
  %arrayidx15.i190 = getelementptr inbounds i8, ptr %p_Vid, i64 849776
  %119 = load ptr, ptr %arrayidx15.i190, align 8
  %120 = load ptr, ptr %119, align 8
  %arrayidx19.i191 = getelementptr inbounds i8, ptr %p_Vid, i64 849656
  %121 = load i32, ptr %arrayidx19.i191, align 4
  %arrayidx22.i192 = getelementptr inbounds i8, ptr %p_Vid, i64 849644
  %122 = load i32, ptr %arrayidx22.i192, align 4
  %mul23.i193 = mul nsw i32 %122, %121
  %conv24.i194 = sext i32 %mul23.i193 to i64
  %mul25.i195 = shl nsw i64 %conv24.i194, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %118, ptr align 2 %120, i64 %mul25.i195, i1 false)
  %arrayidx27.i196 = getelementptr inbounds i8, ptr %p_Vid, i64 849456
  %123 = load ptr, ptr %arrayidx27.i196, align 8
  %124 = load ptr, ptr %123, align 8
  %arrayidx30.i197 = getelementptr inbounds i8, ptr %p_Vid, i64 849768
  %125 = load ptr, ptr %arrayidx30.i197, align 8
  %126 = load ptr, ptr %125, align 8
  %127 = load i32, ptr %arrayidx19.i191, align 4
  %128 = load i32, ptr %arrayidx22.i192, align 4
  %mul38.i198 = mul nsw i32 %128, %127
  %conv39.i199 = sext i32 %mul38.i198 to i64
  %mul40.i200 = shl nsw i64 %conv39.i199, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %124, ptr align 2 %126, i64 %mul40.i200, i1 false)
  br label %YV12toYUV.exit

YV12toYUV.exit:                                   ; preds = %sw.bb12, %if.then.i188
  %enable_32_pulldown15 = getelementptr inbounds i8, ptr %p_Inp, i64 1068
  %129 = load i32, ptr %enable_32_pulldown15, align 4
  %tobool16.not = icmp eq i32 %129, 0
  br i1 %tobool16.not, label %sw.epilog, label %if.then17

if.then17:                                        ; preds = %YV12toYUV.exit
  %imgData3218 = getelementptr inbounds i8, ptr %p_Vid, i64 850584
  %imgData419 = getelementptr inbounds i8, ptr %p_Vid, i64 850904
  %frm_data.i201 = getelementptr inbounds i8, ptr %p_Vid, i64 850720
  %130 = load ptr, ptr %frm_data.i201, align 8
  %131 = load ptr, ptr %130, align 8
  %frm_data2.i202 = getelementptr inbounds i8, ptr %p_Vid, i64 851040
  %132 = load ptr, ptr %frm_data2.i202, align 8
  %133 = load ptr, ptr %132, align 8
  %height.i203 = getelementptr inbounds i8, ptr %p_Vid, i64 850932
  %134 = load i32, ptr %height.i203, align 4
  %width.i204 = getelementptr inbounds i8, ptr %p_Vid, i64 850920
  %135 = load i32, ptr %width.i204, align 8
  %mul.i205 = mul nsw i32 %135, %134
  %conv.i206 = sext i32 %mul.i205 to i64
  %mul8.i207 = shl nsw i64 %conv.i206, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %131, ptr align 2 %133, i64 %mul8.i207, i1 false)
  %136 = load i32, ptr %imgData419, align 8
  %cmp.not.i208 = icmp eq i32 %136, 0
  br i1 %cmp.not.i208, label %YV12toYUV.exit222, label %if.then.i209

if.then.i209:                                     ; preds = %if.then17
  %arrayidx12.i210 = getelementptr inbounds i8, ptr %p_Vid, i64 850728
  %137 = load ptr, ptr %arrayidx12.i210, align 8
  %138 = load ptr, ptr %137, align 8
  %arrayidx15.i211 = getelementptr inbounds i8, ptr %p_Vid, i64 851056
  %139 = load ptr, ptr %arrayidx15.i211, align 8
  %140 = load ptr, ptr %139, align 8
  %arrayidx19.i212 = getelementptr inbounds i8, ptr %p_Vid, i64 850936
  %141 = load i32, ptr %arrayidx19.i212, align 4
  %arrayidx22.i213 = getelementptr inbounds i8, ptr %p_Vid, i64 850924
  %142 = load i32, ptr %arrayidx22.i213, align 4
  %mul23.i214 = mul nsw i32 %142, %141
  %conv24.i215 = sext i32 %mul23.i214 to i64
  %mul25.i216 = shl nsw i64 %conv24.i215, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %138, ptr align 2 %140, i64 %mul25.i216, i1 false)
  %arrayidx27.i217 = getelementptr inbounds i8, ptr %p_Vid, i64 850736
  %143 = load ptr, ptr %arrayidx27.i217, align 8
  %144 = load ptr, ptr %143, align 8
  %arrayidx30.i218 = getelementptr inbounds i8, ptr %p_Vid, i64 851048
  %145 = load ptr, ptr %arrayidx30.i218, align 8
  %146 = load ptr, ptr %145, align 8
  %147 = load i32, ptr %arrayidx19.i212, align 4
  %148 = load i32, ptr %arrayidx22.i213, align 4
  %mul38.i219 = mul nsw i32 %148, %147
  %conv39.i220 = sext i32 %mul38.i219 to i64
  %mul40.i221 = shl nsw i64 %conv39.i220, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %144, ptr align 2 %146, i64 %mul40.i221, i1 false)
  br label %YV12toYUV.exit222

YV12toYUV.exit222:                                ; preds = %if.then17, %if.then.i209
  %height.i223 = getelementptr inbounds i8, ptr %p_Vid, i64 850612
  %149 = load i32, ptr %height.i223, align 4
  %cmp80.i224 = icmp sgt i32 %149, 1
  br i1 %cmp80.i224, label %for.body.lr.ph.i257, label %for.end.i225

for.body.lr.ph.i257:                              ; preds = %YV12toYUV.exit222
  %width.i260 = getelementptr inbounds i8, ptr %p_Vid, i64 850600
  br label %for.body.i261

for.body.i261:                                    ; preds = %for.body.i261, %for.body.lr.ph.i257
  %indvars.iv.i262 = phi i64 [ 1, %for.body.lr.ph.i257 ], [ %indvars.iv.next.i267, %for.body.i261 ]
  %150 = load ptr, ptr %frm_data.i180, align 8
  %arrayidx2.i263 = getelementptr inbounds ptr, ptr %150, i64 %indvars.iv.i262
  %151 = load ptr, ptr %arrayidx2.i263, align 8
  %152 = load ptr, ptr %frm_data.i201, align 8
  %arrayidx6.i264 = getelementptr inbounds ptr, ptr %152, i64 %indvars.iv.i262
  %153 = load ptr, ptr %arrayidx6.i264, align 8
  %154 = load i32, ptr %width.i260, align 8
  %conv.i265 = sext i32 %154 to i64
  %mul.i266 = shl nsw i64 %conv.i265, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %151, ptr align 2 %153, i64 %mul.i266, i1 false)
  %indvars.iv.next.i267 = add nuw nsw i64 %indvars.iv.i262, 2
  %155 = load i32, ptr %height.i223, align 4
  %156 = sext i32 %155 to i64
  %cmp.i268 = icmp slt i64 %indvars.iv.next.i267, %156
  br i1 %cmp.i268, label %for.body.i261, label %for.end.i225

for.end.i225:                                     ; preds = %for.body.i261, %YV12toYUV.exit222
  %157 = load i32, ptr %imgData3218, align 8
  %cmp10.not.i226 = icmp eq i32 %157, 0
  br i1 %cmp10.not.i226, label %sw.epilog, label %for.cond12.preheader.i227

for.cond12.preheader.i227:                        ; preds = %for.end.i225
  %arrayidx15.i228 = getelementptr inbounds i8, ptr %p_Vid, i64 850616
  %158 = load i32, ptr %arrayidx15.i228, align 4
  %cmp1682.i229 = icmp sgt i32 %158, 1
  br i1 %cmp1682.i229, label %for.body18.lr.ph.i245, label %for.cond35.preheader.i230

for.body18.lr.ph.i245:                            ; preds = %for.cond12.preheader.i227
  %arrayidx20.i246 = getelementptr inbounds i8, ptr %p_Vid, i64 849448
  %arrayidx24.i247 = getelementptr inbounds i8, ptr %p_Vid, i64 850728
  %arrayidx29.i248 = getelementptr inbounds i8, ptr %p_Vid, i64 850604
  br label %for.body18.i249

for.cond35.preheader.i230:                        ; preds = %for.body18.i249, %for.cond12.preheader.i227
  %arrayidx38.i231 = getelementptr inbounds i8, ptr %p_Vid, i64 850620
  %159 = load i32, ptr %arrayidx38.i231, align 4
  %cmp3984.i232 = icmp sgt i32 %159, 1
  br i1 %cmp3984.i232, label %for.body41.lr.ph.i233, label %sw.epilog

for.body41.lr.ph.i233:                            ; preds = %for.cond35.preheader.i230
  %arrayidx43.i234 = getelementptr inbounds i8, ptr %p_Vid, i64 849456
  %arrayidx47.i235 = getelementptr inbounds i8, ptr %p_Vid, i64 850736
  %arrayidx52.i236 = getelementptr inbounds i8, ptr %p_Vid, i64 850608
  br label %for.body41.i237

for.body18.i249:                                  ; preds = %for.body18.i249, %for.body18.lr.ph.i245
  %indvars.iv87.i250 = phi i64 [ 1, %for.body18.lr.ph.i245 ], [ %indvars.iv.next88.i255, %for.body18.i249 ]
  %160 = load ptr, ptr %arrayidx20.i246, align 8
  %arrayidx22.i251 = getelementptr inbounds ptr, ptr %160, i64 %indvars.iv87.i250
  %161 = load ptr, ptr %arrayidx22.i251, align 8
  %162 = load ptr, ptr %arrayidx24.i247, align 8
  %arrayidx26.i252 = getelementptr inbounds ptr, ptr %162, i64 %indvars.iv87.i250
  %163 = load ptr, ptr %arrayidx26.i252, align 8
  %164 = load i32, ptr %arrayidx29.i248, align 4
  %conv30.i253 = sext i32 %164 to i64
  %mul31.i254 = shl nsw i64 %conv30.i253, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %161, ptr align 2 %163, i64 %mul31.i254, i1 false)
  %indvars.iv.next88.i255 = add nuw nsw i64 %indvars.iv87.i250, 2
  %165 = load i32, ptr %arrayidx15.i228, align 4
  %166 = sext i32 %165 to i64
  %cmp16.i256 = icmp slt i64 %indvars.iv.next88.i255, %166
  br i1 %cmp16.i256, label %for.body18.i249, label %for.cond35.preheader.i230

for.body41.i237:                                  ; preds = %for.body41.i237, %for.body41.lr.ph.i233
  %indvars.iv90.i238 = phi i64 [ 1, %for.body41.lr.ph.i233 ], [ %indvars.iv.next91.i243, %for.body41.i237 ]
  %167 = load ptr, ptr %arrayidx43.i234, align 8
  %arrayidx45.i239 = getelementptr inbounds ptr, ptr %167, i64 %indvars.iv90.i238
  %168 = load ptr, ptr %arrayidx45.i239, align 8
  %169 = load ptr, ptr %arrayidx47.i235, align 8
  %arrayidx49.i240 = getelementptr inbounds ptr, ptr %169, i64 %indvars.iv90.i238
  %170 = load ptr, ptr %arrayidx49.i240, align 8
  %171 = load i32, ptr %arrayidx52.i236, align 8
  %conv53.i241 = sext i32 %171 to i64
  %mul54.i242 = shl nsw i64 %conv53.i241, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %168, ptr align 2 %170, i64 %mul54.i242, i1 false)
  %indvars.iv.next91.i243 = add nuw nsw i64 %indvars.iv90.i238, 2
  %172 = load i32, ptr %arrayidx38.i231, align 4
  %173 = sext i32 %172 to i64
  %cmp39.i244 = icmp slt i64 %indvars.iv.next91.i243, %173
  br i1 %cmp39.i244, label %for.body41.i237, label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %imgData24 = getelementptr inbounds i8, ptr %p_Vid, i64 849304
  %imgData025 = getelementptr inbounds i8, ptr %p_Vid, i64 849624
  %imgData126 = getelementptr inbounds i8, ptr %p_Vid, i64 849944
  %imgData2 = getelementptr inbounds i8, ptr %p_Vid, i64 850264
  tail call fastcc void @MuxImages(ptr noundef nonnull %imgData24, ptr noundef nonnull %imgData025, ptr noundef nonnull %imgData126, ptr noundef nonnull %imgData2)
  %enable_32_pulldown27 = getelementptr inbounds i8, ptr %p_Inp, i64 1068
  %174 = load i32, ptr %enable_32_pulldown27, align 4
  %tobool28.not = icmp eq i32 %174, 0
  br i1 %tobool28.not, label %sw.epilog, label %if.then29

if.then29:                                        ; preds = %sw.bb23
  %imgData3230 = getelementptr inbounds i8, ptr %p_Vid, i64 850584
  %imgData431 = getelementptr inbounds i8, ptr %p_Vid, i64 850904
  %imgData5 = getelementptr inbounds i8, ptr %p_Vid, i64 851224
  %imgData6 = getelementptr inbounds i8, ptr %p_Vid, i64 851544
  tail call fastcc void @MuxImages(ptr noundef nonnull %imgData3230, ptr noundef nonnull %imgData431, ptr noundef nonnull %imgData5, ptr noundef nonnull %imgData6)
  %height.i270 = getelementptr inbounds i8, ptr %p_Vid, i64 850612
  %175 = load i32, ptr %height.i270, align 4
  %cmp80.i271 = icmp sgt i32 %175, 1
  br i1 %cmp80.i271, label %for.body.lr.ph.i304, label %for.end.i272

for.body.lr.ph.i304:                              ; preds = %if.then29
  %frm_data.i305 = getelementptr inbounds i8, ptr %p_Vid, i64 849440
  %frm_data3.i306 = getelementptr inbounds i8, ptr %p_Vid, i64 850720
  %width.i307 = getelementptr inbounds i8, ptr %p_Vid, i64 850600
  br label %for.body.i308

for.body.i308:                                    ; preds = %for.body.i308, %for.body.lr.ph.i304
  %indvars.iv.i309 = phi i64 [ 1, %for.body.lr.ph.i304 ], [ %indvars.iv.next.i314, %for.body.i308 ]
  %176 = load ptr, ptr %frm_data.i305, align 8
  %arrayidx2.i310 = getelementptr inbounds ptr, ptr %176, i64 %indvars.iv.i309
  %177 = load ptr, ptr %arrayidx2.i310, align 8
  %178 = load ptr, ptr %frm_data3.i306, align 8
  %arrayidx6.i311 = getelementptr inbounds ptr, ptr %178, i64 %indvars.iv.i309
  %179 = load ptr, ptr %arrayidx6.i311, align 8
  %180 = load i32, ptr %width.i307, align 8
  %conv.i312 = sext i32 %180 to i64
  %mul.i313 = shl nsw i64 %conv.i312, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %177, ptr align 2 %179, i64 %mul.i313, i1 false)
  %indvars.iv.next.i314 = add nuw nsw i64 %indvars.iv.i309, 2
  %181 = load i32, ptr %height.i270, align 4
  %182 = sext i32 %181 to i64
  %cmp.i315 = icmp slt i64 %indvars.iv.next.i314, %182
  br i1 %cmp.i315, label %for.body.i308, label %for.end.i272

for.end.i272:                                     ; preds = %for.body.i308, %if.then29
  %183 = load i32, ptr %imgData3230, align 8
  %cmp10.not.i273 = icmp eq i32 %183, 0
  br i1 %cmp10.not.i273, label %sw.epilog, label %for.cond12.preheader.i274

for.cond12.preheader.i274:                        ; preds = %for.end.i272
  %arrayidx15.i275 = getelementptr inbounds i8, ptr %p_Vid, i64 850616
  %184 = load i32, ptr %arrayidx15.i275, align 4
  %cmp1682.i276 = icmp sgt i32 %184, 1
  br i1 %cmp1682.i276, label %for.body18.lr.ph.i292, label %for.cond35.preheader.i277

for.body18.lr.ph.i292:                            ; preds = %for.cond12.preheader.i274
  %arrayidx20.i293 = getelementptr inbounds i8, ptr %p_Vid, i64 849448
  %arrayidx24.i294 = getelementptr inbounds i8, ptr %p_Vid, i64 850728
  %arrayidx29.i295 = getelementptr inbounds i8, ptr %p_Vid, i64 850604
  br label %for.body18.i296

for.cond35.preheader.i277:                        ; preds = %for.body18.i296, %for.cond12.preheader.i274
  %arrayidx38.i278 = getelementptr inbounds i8, ptr %p_Vid, i64 850620
  %185 = load i32, ptr %arrayidx38.i278, align 4
  %cmp3984.i279 = icmp sgt i32 %185, 1
  br i1 %cmp3984.i279, label %for.body41.lr.ph.i280, label %sw.epilog

for.body41.lr.ph.i280:                            ; preds = %for.cond35.preheader.i277
  %arrayidx43.i281 = getelementptr inbounds i8, ptr %p_Vid, i64 849456
  %arrayidx47.i282 = getelementptr inbounds i8, ptr %p_Vid, i64 850736
  %arrayidx52.i283 = getelementptr inbounds i8, ptr %p_Vid, i64 850608
  br label %for.body41.i284

for.body18.i296:                                  ; preds = %for.body18.i296, %for.body18.lr.ph.i292
  %indvars.iv87.i297 = phi i64 [ 1, %for.body18.lr.ph.i292 ], [ %indvars.iv.next88.i302, %for.body18.i296 ]
  %186 = load ptr, ptr %arrayidx20.i293, align 8
  %arrayidx22.i298 = getelementptr inbounds ptr, ptr %186, i64 %indvars.iv87.i297
  %187 = load ptr, ptr %arrayidx22.i298, align 8
  %188 = load ptr, ptr %arrayidx24.i294, align 8
  %arrayidx26.i299 = getelementptr inbounds ptr, ptr %188, i64 %indvars.iv87.i297
  %189 = load ptr, ptr %arrayidx26.i299, align 8
  %190 = load i32, ptr %arrayidx29.i295, align 4
  %conv30.i300 = sext i32 %190 to i64
  %mul31.i301 = shl nsw i64 %conv30.i300, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %187, ptr align 2 %189, i64 %mul31.i301, i1 false)
  %indvars.iv.next88.i302 = add nuw nsw i64 %indvars.iv87.i297, 2
  %191 = load i32, ptr %arrayidx15.i275, align 4
  %192 = sext i32 %191 to i64
  %cmp16.i303 = icmp slt i64 %indvars.iv.next88.i302, %192
  br i1 %cmp16.i303, label %for.body18.i296, label %for.cond35.preheader.i277

for.body41.i284:                                  ; preds = %for.body41.i284, %for.body41.lr.ph.i280
  %indvars.iv90.i285 = phi i64 [ 1, %for.body41.lr.ph.i280 ], [ %indvars.iv.next91.i290, %for.body41.i284 ]
  %193 = load ptr, ptr %arrayidx43.i281, align 8
  %arrayidx45.i286 = getelementptr inbounds ptr, ptr %193, i64 %indvars.iv90.i285
  %194 = load ptr, ptr %arrayidx45.i286, align 8
  %195 = load ptr, ptr %arrayidx47.i282, align 8
  %arrayidx49.i287 = getelementptr inbounds ptr, ptr %195, i64 %indvars.iv90.i285
  %196 = load ptr, ptr %arrayidx49.i287, align 8
  %197 = load i32, ptr %arrayidx52.i283, align 8
  %conv53.i288 = sext i32 %197 to i64
  %mul54.i289 = shl nsw i64 %conv53.i288, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %194, ptr align 2 %196, i64 %mul54.i289, i1 false)
  %indvars.iv.next91.i290 = add nuw nsw i64 %indvars.iv90.i285, 2
  %198 = load i32, ptr %arrayidx38.i278, align 4
  %199 = sext i32 %198 to i64
  %cmp39.i291 = icmp slt i64 %indvars.iv.next91.i290, %199
  br i1 %cmp39.i291, label %for.body41.i284, label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %imgData37 = getelementptr inbounds i8, ptr %p_Vid, i64 849304
  %imgData038 = getelementptr inbounds i8, ptr %p_Vid, i64 849624
  tail call fastcc void @FilterImageSep(ptr noundef nonnull %imgData37, ptr noundef nonnull %imgData038)
  %enable_32_pulldown39 = getelementptr inbounds i8, ptr %p_Inp, i64 1068
  %200 = load i32, ptr %enable_32_pulldown39, align 4
  %tobool40.not = icmp eq i32 %200, 0
  br i1 %tobool40.not, label %sw.epilog, label %if.then41

if.then41:                                        ; preds = %sw.bb36
  %imgData443 = getelementptr inbounds i8, ptr %p_Vid, i64 850904
  tail call fastcc void @FilterImageSep(ptr noundef nonnull %imgData37, ptr noundef nonnull %imgData443)
  %imgData3245 = getelementptr inbounds i8, ptr %p_Vid, i64 850584
  %height.i317 = getelementptr inbounds i8, ptr %p_Vid, i64 850612
  %201 = load i32, ptr %height.i317, align 4
  %cmp80.i318 = icmp sgt i32 %201, 1
  br i1 %cmp80.i318, label %for.body.lr.ph.i351, label %for.end.i319

for.body.lr.ph.i351:                              ; preds = %if.then41
  %frm_data.i352 = getelementptr inbounds i8, ptr %p_Vid, i64 849440
  %frm_data3.i353 = getelementptr inbounds i8, ptr %p_Vid, i64 850720
  %width.i354 = getelementptr inbounds i8, ptr %p_Vid, i64 850600
  br label %for.body.i355

for.body.i355:                                    ; preds = %for.body.i355, %for.body.lr.ph.i351
  %indvars.iv.i356 = phi i64 [ 1, %for.body.lr.ph.i351 ], [ %indvars.iv.next.i361, %for.body.i355 ]
  %202 = load ptr, ptr %frm_data.i352, align 8
  %arrayidx2.i357 = getelementptr inbounds ptr, ptr %202, i64 %indvars.iv.i356
  %203 = load ptr, ptr %arrayidx2.i357, align 8
  %204 = load ptr, ptr %frm_data3.i353, align 8
  %arrayidx6.i358 = getelementptr inbounds ptr, ptr %204, i64 %indvars.iv.i356
  %205 = load ptr, ptr %arrayidx6.i358, align 8
  %206 = load i32, ptr %width.i354, align 8
  %conv.i359 = sext i32 %206 to i64
  %mul.i360 = shl nsw i64 %conv.i359, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %203, ptr align 2 %205, i64 %mul.i360, i1 false)
  %indvars.iv.next.i361 = add nuw nsw i64 %indvars.iv.i356, 2
  %207 = load i32, ptr %height.i317, align 4
  %208 = sext i32 %207 to i64
  %cmp.i362 = icmp slt i64 %indvars.iv.next.i361, %208
  br i1 %cmp.i362, label %for.body.i355, label %for.end.i319

for.end.i319:                                     ; preds = %for.body.i355, %if.then41
  %209 = load i32, ptr %imgData3245, align 8
  %cmp10.not.i320 = icmp eq i32 %209, 0
  br i1 %cmp10.not.i320, label %sw.epilog, label %for.cond12.preheader.i321

for.cond12.preheader.i321:                        ; preds = %for.end.i319
  %arrayidx15.i322 = getelementptr inbounds i8, ptr %p_Vid, i64 850616
  %210 = load i32, ptr %arrayidx15.i322, align 4
  %cmp1682.i323 = icmp sgt i32 %210, 1
  br i1 %cmp1682.i323, label %for.body18.lr.ph.i339, label %for.cond35.preheader.i324

for.body18.lr.ph.i339:                            ; preds = %for.cond12.preheader.i321
  %arrayidx20.i340 = getelementptr inbounds i8, ptr %p_Vid, i64 849448
  %arrayidx24.i341 = getelementptr inbounds i8, ptr %p_Vid, i64 850728
  %arrayidx29.i342 = getelementptr inbounds i8, ptr %p_Vid, i64 850604
  br label %for.body18.i343

for.cond35.preheader.i324:                        ; preds = %for.body18.i343, %for.cond12.preheader.i321
  %arrayidx38.i325 = getelementptr inbounds i8, ptr %p_Vid, i64 850620
  %211 = load i32, ptr %arrayidx38.i325, align 4
  %cmp3984.i326 = icmp sgt i32 %211, 1
  br i1 %cmp3984.i326, label %for.body41.lr.ph.i327, label %sw.epilog

for.body41.lr.ph.i327:                            ; preds = %for.cond35.preheader.i324
  %arrayidx43.i328 = getelementptr inbounds i8, ptr %p_Vid, i64 849456
  %arrayidx47.i329 = getelementptr inbounds i8, ptr %p_Vid, i64 850736
  %arrayidx52.i330 = getelementptr inbounds i8, ptr %p_Vid, i64 850608
  br label %for.body41.i331

for.body18.i343:                                  ; preds = %for.body18.i343, %for.body18.lr.ph.i339
  %indvars.iv87.i344 = phi i64 [ 1, %for.body18.lr.ph.i339 ], [ %indvars.iv.next88.i349, %for.body18.i343 ]
  %212 = load ptr, ptr %arrayidx20.i340, align 8
  %arrayidx22.i345 = getelementptr inbounds ptr, ptr %212, i64 %indvars.iv87.i344
  %213 = load ptr, ptr %arrayidx22.i345, align 8
  %214 = load ptr, ptr %arrayidx24.i341, align 8
  %arrayidx26.i346 = getelementptr inbounds ptr, ptr %214, i64 %indvars.iv87.i344
  %215 = load ptr, ptr %arrayidx26.i346, align 8
  %216 = load i32, ptr %arrayidx29.i342, align 4
  %conv30.i347 = sext i32 %216 to i64
  %mul31.i348 = shl nsw i64 %conv30.i347, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %213, ptr align 2 %215, i64 %mul31.i348, i1 false)
  %indvars.iv.next88.i349 = add nuw nsw i64 %indvars.iv87.i344, 2
  %217 = load i32, ptr %arrayidx15.i322, align 4
  %218 = sext i32 %217 to i64
  %cmp16.i350 = icmp slt i64 %indvars.iv.next88.i349, %218
  br i1 %cmp16.i350, label %for.body18.i343, label %for.cond35.preheader.i324

for.body41.i331:                                  ; preds = %for.body41.i331, %for.body41.lr.ph.i327
  %indvars.iv90.i332 = phi i64 [ 1, %for.body41.lr.ph.i327 ], [ %indvars.iv.next91.i337, %for.body41.i331 ]
  %219 = load ptr, ptr %arrayidx43.i328, align 8
  %arrayidx45.i333 = getelementptr inbounds ptr, ptr %219, i64 %indvars.iv90.i332
  %220 = load ptr, ptr %arrayidx45.i333, align 8
  %221 = load ptr, ptr %arrayidx47.i329, align 8
  %arrayidx49.i334 = getelementptr inbounds ptr, ptr %221, i64 %indvars.iv90.i332
  %222 = load ptr, ptr %arrayidx49.i334, align 8
  %223 = load i32, ptr %arrayidx52.i330, align 8
  %conv53.i335 = sext i32 %223 to i64
  %mul54.i336 = shl nsw i64 %conv53.i335, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %220, ptr align 2 %222, i64 %mul54.i336, i1 false)
  %indvars.iv.next91.i337 = add nuw nsw i64 %indvars.iv90.i332, 2
  %224 = load i32, ptr %arrayidx38.i325, align 4
  %225 = sext i32 %224 to i64
  %cmp39.i338 = icmp slt i64 %indvars.iv.next91.i337, %225
  br i1 %cmp39.i338, label %for.body41.i331, label %sw.epilog

sw.epilog:                                        ; preds = %for.body41.i284, %for.body41.i237, %for.body41.i147, %for.body41.i331, %for.body41.i, %for.cond35.preheader.i324, %for.end.i319, %for.cond35.preheader.i277, %for.end.i272, %for.cond35.preheader.i230, %for.end.i225, %for.cond35.preheader.i140, %for.end.i135, %for.cond35.preheader.i, %for.end.i, %sw.bb36, %sw.bb23, %YV12toYUV.exit, %FilterImage.exit, %CPImage.exit
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MuxImages(ptr nocapture noundef readonly %imgOut, ptr nocapture noundef readonly %imgIn0, ptr nocapture noundef readonly %imgIn1, ptr nocapture noundef readonly %Map) unnamed_addr #2 {
entry:
  %height = getelementptr inbounds i8, ptr %imgOut, i64 28
  %0 = load i32, ptr %height, align 4
  %cmp184 = icmp sgt i32 %0, 0
  br i1 %cmp184, label %for.cond1.preheader.lr.ph, label %for.end45

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %width = getelementptr inbounds i8, ptr %imgOut, i64 16
  %frm_data = getelementptr inbounds i8, ptr %imgIn0, i64 136
  %max_value = getelementptr inbounds i8, ptr %Map, i64 100
  %frm_data12 = getelementptr inbounds i8, ptr %Map, i64 136
  %frm_data19 = getelementptr inbounds i8, ptr %imgIn1, i64 136
  %bit_depth = getelementptr inbounds i8, ptr %Map, i64 88
  %frm_data37 = getelementptr inbounds i8, ptr %imgOut, i64 136
  %1 = load i32, ptr %width, align 8
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %for.cond1.preheader, label %for.end45

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc43
  %3 = phi i32 [ %20, %for.inc43 ], [ %0, %for.cond1.preheader.lr.ph ]
  %4 = phi i32 [ %21, %for.inc43 ], [ %1, %for.cond1.preheader.lr.ph ]
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %for.inc43 ], [ 0, %for.cond1.preheader.lr.ph ]
  %cmp4182 = icmp sgt i32 %4, 0
  br i1 %cmp4182, label %for.body5, label %for.inc43

for.body5:                                        ; preds = %for.cond1.preheader, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.cond1.preheader ]
  %5 = load ptr, ptr %frm_data, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv195
  %6 = load ptr, ptr %arrayidx7, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %6, i64 %indvars.iv
  %7 = load i16, ptr %arrayidx9, align 2
  %conv = zext i16 %7 to i32
  %8 = load i32, ptr %max_value, align 4
  %9 = load ptr, ptr %frm_data12, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv195
  %10 = load ptr, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr inbounds i16, ptr %10, i64 %indvars.iv
  %11 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %11 to i32
  %sub = sub nsw i32 %8, %conv18
  %mul = mul nsw i32 %sub, %conv
  %12 = load ptr, ptr %frm_data19, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv195
  %13 = load ptr, ptr %arrayidx22, align 8
  %arrayidx24 = getelementptr inbounds i16, ptr %13, i64 %indvars.iv
  %14 = load i16, ptr %arrayidx24, align 2
  %conv25 = zext i16 %14 to i32
  %mul33 = mul nuw nsw i32 %conv25, %conv18
  %add = add nsw i32 %mul33, %mul
  %15 = load i32, ptr %bit_depth, align 8
  %sub.i = add nsw i32 %15, -1
  %shl.i = shl nuw i32 1, %sub.i
  %add.i = add nsw i32 %add, %shl.i
  %shr.i = ashr i32 %add.i, %15
  %conv36 = trunc i32 %shr.i to i16
  %16 = load ptr, ptr %frm_data37, align 8
  %arrayidx40 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv195
  %17 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42 = getelementptr inbounds i16, ptr %17, i64 %indvars.iv
  store i16 %conv36, ptr %arrayidx42, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %18 = load i32, ptr %width, align 8
  %19 = sext i32 %18 to i64
  %cmp4 = icmp slt i64 %indvars.iv.next, %19
  br i1 %cmp4, label %for.body5, label %for.inc43.loopexit

for.inc43.loopexit:                               ; preds = %for.body5
  %.pre = load i32, ptr %height, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %for.inc43.loopexit, %for.cond1.preheader
  %20 = phi i32 [ %.pre, %for.inc43.loopexit ], [ %3, %for.cond1.preheader ]
  %21 = phi i32 [ %18, %for.inc43.loopexit ], [ %4, %for.cond1.preheader ]
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1
  %22 = sext i32 %20 to i64
  %cmp = icmp slt i64 %indvars.iv.next196, %22
  br i1 %cmp, label %for.cond1.preheader, label %for.end45, !llvm.loop !5

for.end45:                                        ; preds = %for.inc43, %for.cond1.preheader.lr.ph, %entry
  %23 = load i32, ptr %imgOut, align 8
  %cmp47.not = icmp eq i32 %23, 0
  br i1 %cmp47.not, label %if.end, label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.end45
  %arrayidx56 = getelementptr inbounds i8, ptr %imgOut, i64 32
  %arrayidx63 = getelementptr inbounds i8, ptr %imgOut, i64 20
  %24 = load i32, ptr %arrayidx56, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %for.cond60.preheader.lr.ph, label %if.end

for.cond60.preheader.lr.ph:                       ; preds = %for.cond49.preheader
  %arrayidx69 = getelementptr inbounds i8, ptr %imgIn0, i64 144
  %arrayidx78 = getelementptr inbounds i8, ptr %Map, i64 104
  %arrayidx81 = getelementptr inbounds i8, ptr %Map, i64 144
  %arrayidx91 = getelementptr inbounds i8, ptr %imgIn1, i64 144
  %arrayidx110 = getelementptr inbounds i8, ptr %Map, i64 92
  %arrayidx115 = getelementptr inbounds i8, ptr %imgOut, i64 144
  %26 = load i32, ptr %arrayidx63, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %for.cond60.preheader, label %for.cond60.preheader.lr.ph.1

for.cond60.preheader:                             ; preds = %for.cond60.preheader.lr.ph, %for.inc123
  %28 = phi i32 [ %45, %for.inc123 ], [ %24, %for.cond60.preheader.lr.ph ]
  %29 = phi i32 [ %46, %for.inc123 ], [ %26, %for.cond60.preheader.lr.ph ]
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %for.inc123 ], [ 0, %for.cond60.preheader.lr.ph ]
  %cmp64186 = icmp sgt i32 %29, 0
  br i1 %cmp64186, label %for.body66, label %for.inc123

for.body66:                                       ; preds = %for.cond60.preheader, %for.body66
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %for.body66 ], [ 0, %for.cond60.preheader ]
  %30 = load ptr, ptr %arrayidx69, align 8
  %arrayidx71 = getelementptr inbounds ptr, ptr %30, i64 %indvars.iv201
  %31 = load ptr, ptr %arrayidx71, align 8
  %arrayidx73 = getelementptr inbounds i16, ptr %31, i64 %indvars.iv198
  %32 = load i16, ptr %arrayidx73, align 2
  %conv74 = zext i16 %32 to i32
  %33 = load i32, ptr %arrayidx78, align 4
  %34 = load ptr, ptr %arrayidx81, align 8
  %arrayidx83 = getelementptr inbounds ptr, ptr %34, i64 %indvars.iv201
  %35 = load ptr, ptr %arrayidx83, align 8
  %arrayidx85 = getelementptr inbounds i16, ptr %35, i64 %indvars.iv198
  %36 = load i16, ptr %arrayidx85, align 2
  %conv86 = zext i16 %36 to i32
  %sub87 = sub nsw i32 %33, %conv86
  %mul88 = mul nsw i32 %sub87, %conv74
  %37 = load ptr, ptr %arrayidx91, align 8
  %arrayidx93 = getelementptr inbounds ptr, ptr %37, i64 %indvars.iv201
  %38 = load ptr, ptr %arrayidx93, align 8
  %arrayidx95 = getelementptr inbounds i16, ptr %38, i64 %indvars.iv198
  %39 = load i16, ptr %arrayidx95, align 2
  %conv96 = zext i16 %39 to i32
  %mul105 = mul nuw nsw i32 %conv96, %conv86
  %add106 = add nsw i32 %mul105, %mul88
  %40 = load i32, ptr %arrayidx110, align 4
  %sub.i178 = add nsw i32 %40, -1
  %shl.i179 = shl nuw i32 1, %sub.i178
  %add.i180 = add nsw i32 %add106, %shl.i179
  %shr.i181 = ashr i32 %add.i180, %40
  %conv112 = trunc i32 %shr.i181 to i16
  %41 = load ptr, ptr %arrayidx115, align 8
  %arrayidx117 = getelementptr inbounds ptr, ptr %41, i64 %indvars.iv201
  %42 = load ptr, ptr %arrayidx117, align 8
  %arrayidx119 = getelementptr inbounds i16, ptr %42, i64 %indvars.iv198
  store i16 %conv112, ptr %arrayidx119, align 2
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1
  %43 = load i32, ptr %arrayidx63, align 4
  %44 = sext i32 %43 to i64
  %cmp64 = icmp slt i64 %indvars.iv.next199, %44
  br i1 %cmp64, label %for.body66, label %for.inc123.loopexit

for.inc123.loopexit:                              ; preds = %for.body66
  %.pre207 = load i32, ptr %arrayidx56, align 4
  br label %for.inc123

for.inc123:                                       ; preds = %for.inc123.loopexit, %for.cond60.preheader
  %45 = phi i32 [ %.pre207, %for.inc123.loopexit ], [ %28, %for.cond60.preheader ]
  %46 = phi i32 [ %43, %for.inc123.loopexit ], [ %29, %for.cond60.preheader ]
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1
  %47 = sext i32 %45 to i64
  %cmp57 = icmp slt i64 %indvars.iv.next202, %47
  br i1 %cmp57, label %for.cond60.preheader, label %for.inc126, !llvm.loop !7

for.inc126:                                       ; preds = %for.inc123
  %cmp57188.1 = icmp sgt i32 %45, 0
  br i1 %cmp57188.1, label %for.cond60.preheader.lr.ph.1, label %if.end

for.cond60.preheader.lr.ph.1:                     ; preds = %for.cond60.preheader.lr.ph, %for.inc126
  %48 = phi i32 [ %45, %for.inc126 ], [ %24, %for.cond60.preheader.lr.ph ]
  %arrayidx69.1 = getelementptr inbounds i8, ptr %imgIn0, i64 152
  %arrayidx78.1 = getelementptr inbounds i8, ptr %Map, i64 108
  %arrayidx81.1 = getelementptr inbounds i8, ptr %Map, i64 152
  %arrayidx91.1 = getelementptr inbounds i8, ptr %imgIn1, i64 152
  %arrayidx110.1 = getelementptr inbounds i8, ptr %Map, i64 96
  %arrayidx115.1 = getelementptr inbounds i8, ptr %imgOut, i64 152
  %49 = load i32, ptr %arrayidx63, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %for.cond60.preheader.1, label %if.end

for.cond60.preheader.1:                           ; preds = %for.cond60.preheader.lr.ph.1, %for.inc123.1
  %51 = phi i32 [ %68, %for.inc123.1 ], [ %48, %for.cond60.preheader.lr.ph.1 ]
  %52 = phi i32 [ %69, %for.inc123.1 ], [ %49, %for.cond60.preheader.lr.ph.1 ]
  %indvars.iv201.1 = phi i64 [ %indvars.iv.next202.1, %for.inc123.1 ], [ 0, %for.cond60.preheader.lr.ph.1 ]
  %cmp64186.1 = icmp sgt i32 %52, 0
  br i1 %cmp64186.1, label %for.body66.1, label %for.inc123.1

for.body66.1:                                     ; preds = %for.cond60.preheader.1, %for.body66.1
  %indvars.iv198.1 = phi i64 [ %indvars.iv.next199.1, %for.body66.1 ], [ 0, %for.cond60.preheader.1 ]
  %53 = load ptr, ptr %arrayidx69.1, align 8
  %arrayidx71.1 = getelementptr inbounds ptr, ptr %53, i64 %indvars.iv201.1
  %54 = load ptr, ptr %arrayidx71.1, align 8
  %arrayidx73.1 = getelementptr inbounds i16, ptr %54, i64 %indvars.iv198.1
  %55 = load i16, ptr %arrayidx73.1, align 2
  %conv74.1 = zext i16 %55 to i32
  %56 = load i32, ptr %arrayidx78.1, align 4
  %57 = load ptr, ptr %arrayidx81.1, align 8
  %arrayidx83.1 = getelementptr inbounds ptr, ptr %57, i64 %indvars.iv201.1
  %58 = load ptr, ptr %arrayidx83.1, align 8
  %arrayidx85.1 = getelementptr inbounds i16, ptr %58, i64 %indvars.iv198.1
  %59 = load i16, ptr %arrayidx85.1, align 2
  %conv86.1 = zext i16 %59 to i32
  %sub87.1 = sub nsw i32 %56, %conv86.1
  %mul88.1 = mul nsw i32 %sub87.1, %conv74.1
  %60 = load ptr, ptr %arrayidx91.1, align 8
  %arrayidx93.1 = getelementptr inbounds ptr, ptr %60, i64 %indvars.iv201.1
  %61 = load ptr, ptr %arrayidx93.1, align 8
  %arrayidx95.1 = getelementptr inbounds i16, ptr %61, i64 %indvars.iv198.1
  %62 = load i16, ptr %arrayidx95.1, align 2
  %conv96.1 = zext i16 %62 to i32
  %mul105.1 = mul nuw nsw i32 %conv96.1, %conv86.1
  %add106.1 = add nsw i32 %mul105.1, %mul88.1
  %63 = load i32, ptr %arrayidx110.1, align 4
  %sub.i178.1 = add nsw i32 %63, -1
  %shl.i179.1 = shl nuw i32 1, %sub.i178.1
  %add.i180.1 = add nsw i32 %add106.1, %shl.i179.1
  %shr.i181.1 = ashr i32 %add.i180.1, %63
  %conv112.1 = trunc i32 %shr.i181.1 to i16
  %64 = load ptr, ptr %arrayidx115.1, align 8
  %arrayidx117.1 = getelementptr inbounds ptr, ptr %64, i64 %indvars.iv201.1
  %65 = load ptr, ptr %arrayidx117.1, align 8
  %arrayidx119.1 = getelementptr inbounds i16, ptr %65, i64 %indvars.iv198.1
  store i16 %conv112.1, ptr %arrayidx119.1, align 2
  %indvars.iv.next199.1 = add nuw nsw i64 %indvars.iv198.1, 1
  %66 = load i32, ptr %arrayidx63, align 4
  %67 = sext i32 %66 to i64
  %cmp64.1 = icmp slt i64 %indvars.iv.next199.1, %67
  br i1 %cmp64.1, label %for.body66.1, label %for.inc123.loopexit.1

for.inc123.loopexit.1:                            ; preds = %for.body66.1
  %.pre208 = load i32, ptr %arrayidx56, align 4
  br label %for.inc123.1

for.inc123.1:                                     ; preds = %for.inc123.loopexit.1, %for.cond60.preheader.1
  %68 = phi i32 [ %.pre208, %for.inc123.loopexit.1 ], [ %51, %for.cond60.preheader.1 ]
  %69 = phi i32 [ %66, %for.inc123.loopexit.1 ], [ %52, %for.cond60.preheader.1 ]
  %indvars.iv.next202.1 = add nuw nsw i64 %indvars.iv201.1, 1
  %70 = sext i32 %68 to i64
  %cmp57.1 = icmp slt i64 %indvars.iv.next202.1, %70
  br i1 %cmp57.1, label %for.cond60.preheader.1, label %if.end, !llvm.loop !7

if.end:                                           ; preds = %for.inc123.1, %for.inc126, %for.cond60.preheader.lr.ph.1, %for.cond49.preheader, %for.end45
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @FilterImageSep(ptr nocapture noundef readonly %imgOut, ptr nocapture noundef readonly %imgIn) unnamed_addr #3 {
entry:
  %width = getelementptr inbounds i8, ptr %imgOut, i64 16
  %0 = load i32, ptr %width, align 8
  %sub = add nsw i32 %0, -1
  %height = getelementptr inbounds i8, ptr %imgOut, i64 28
  %1 = load i32, ptr %height, align 4
  %sub3 = add nsw i32 %1, -1
  %height5 = getelementptr inbounds i8, ptr %imgIn, i64 28
  %2 = load i32, ptr %height5, align 4
  %width8 = getelementptr inbounds i8, ptr %imgIn, i64 16
  %3 = load i32, ptr %width8, align 8
  %call = tail call ptr @new_mem2Dint(i32 noundef %2, i32 noundef %3) #7
  %4 = load i32, ptr %height, align 4
  %cmp574 = icmp sgt i32 %4, 0
  br i1 %cmp574, label %for.cond13.preheader.lr.ph, label %for.end161

for.cond13.preheader.lr.ph:                       ; preds = %entry
  %frm_data = getelementptr inbounds i8, ptr %imgIn, i64 136
  %5 = load i32, ptr %width, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %for.cond13.preheader.preheader, label %for.end161

for.cond13.preheader.preheader:                   ; preds = %for.cond13.preheader.lr.ph
  %cond.i4.i.peel = tail call i32 @llvm.smin.i32(i32 %sub, i32 0)
  %idxprom23.peel = sext i32 %cond.i4.i.peel to i64
  %cond.i4.i503.peel = tail call i32 @llvm.smin.i32(i32 %sub, i32 1)
  %idxprom51.peel = sext i32 %cond.i4.i503.peel to i64
  %cond.i4.i505.peel = tail call i32 @llvm.smin.i32(i32 %sub, i32 2)
  %idxprom62.peel = sext i32 %cond.i4.i505.peel to i64
  %cond.i4.i507.peel = tail call i32 @llvm.smin.i32(i32 %sub, i32 3)
  %idxprom73.peel = sext i32 %cond.i4.i507.peel to i64
  %cond.i4.i507.peel622 = tail call i32 @llvm.smin.i32(i32 %sub, i32 4)
  %idxprom73.peel623 = sext i32 %cond.i4.i507.peel622 to i64
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond13.preheader.preheader, %for.inc82
  %7 = phi i32 [ %4, %for.cond13.preheader.preheader ], [ %45, %for.inc82 ]
  %8 = phi i32 [ %5, %for.cond13.preheader.preheader ], [ %46, %for.inc82 ]
  %indvars.iv636 = phi i64 [ 0, %for.cond13.preheader.preheader ], [ %indvars.iv.next637, %for.inc82 ]
  %cmp17572 = icmp sgt i32 %8, 0
  br i1 %cmp17572, label %for.body18.lr.ph, label %for.inc82

for.body18.lr.ph:                                 ; preds = %for.cond13.preheader
  %arrayidx79 = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv636
  %9 = load ptr, ptr %frm_data, align 8
  %arrayidx20.peel = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv636
  %10 = load ptr, ptr %arrayidx20.peel, align 8
  %arrayidx24.peel = getelementptr inbounds i16, ptr %10, i64 %idxprom23.peel
  %11 = load i16, ptr %arrayidx24.peel, align 2
  %conv.peel = zext i16 %11 to i32
  %arrayidx52.peel = getelementptr inbounds i16, ptr %10, i64 %idxprom51.peel
  %12 = load i16, ptr %arrayidx52.peel, align 2
  %conv53.peel = zext i16 %12 to i32
  %arrayidx63.peel = getelementptr inbounds i16, ptr %10, i64 %idxprom62.peel
  %13 = load i16, ptr %arrayidx63.peel, align 2
  %conv64.peel = zext i16 %13 to i32
  %arrayidx74.peel = getelementptr inbounds i16, ptr %10, i64 %idxprom73.peel
  %14 = load i16, ptr %arrayidx74.peel, align 2
  %conv75.peel = zext i16 %14 to i32
  %reass.add568.peel = add nuw nsw i32 %conv53.peel, %conv.peel
  %reass.mul569.peel = mul nuw nsw i32 %reass.add568.peel, 20
  %reass.add570.peel = add nuw nsw i32 %conv64.peel, %conv.peel
  %reass.mul571.peel = mul nsw i32 %reass.add570.peel, -5
  %add55.peel = add nuw nsw i32 %conv75.peel, %conv.peel
  %add66.peel = add nuw nsw i32 %add55.peel, %reass.mul569.peel
  %add77.peel = add nsw i32 %add66.peel, %reass.mul571.peel
  %15 = load ptr, ptr %arrayidx79, align 8
  store i32 %add77.peel, ptr %15, align 4
  %16 = load i32, ptr %width, align 8
  %cmp17.peel = icmp sgt i32 %16, 1
  br i1 %cmp17.peel, label %for.body18.peel.next, label %for.inc82.loopexit

for.body18.peel.next:                             ; preds = %for.body18.lr.ph
  %17 = load ptr, ptr %frm_data, align 8
  %arrayidx20.peel598 = getelementptr inbounds ptr, ptr %17, i64 %indvars.iv636
  %18 = load ptr, ptr %arrayidx20.peel598, align 8
  %arrayidx24.peel602 = getelementptr inbounds i16, ptr %18, i64 %idxprom23.peel
  %19 = load i16, ptr %arrayidx24.peel602, align 2
  %conv.peel603 = zext i16 %19 to i32
  %arrayidx41.peel611 = getelementptr inbounds i16, ptr %18, i64 %idxprom51.peel
  %20 = load i16, ptr %arrayidx41.peel611, align 2
  %conv42.peel612 = zext i16 %20 to i32
  %arrayidx52.peel616 = getelementptr inbounds i16, ptr %18, i64 %idxprom62.peel
  %21 = load i16, ptr %arrayidx52.peel616, align 2
  %conv53.peel617 = zext i16 %21 to i32
  %arrayidx63.peel620 = getelementptr inbounds i16, ptr %18, i64 %idxprom73.peel
  %22 = load i16, ptr %arrayidx63.peel620, align 2
  %conv64.peel621 = zext i16 %22 to i32
  %arrayidx74.peel624 = getelementptr inbounds i16, ptr %18, i64 %idxprom73.peel623
  %23 = load i16, ptr %arrayidx74.peel624, align 2
  %conv75.peel625 = zext i16 %23 to i32
  %reass.add568.peel626 = add nuw nsw i32 %conv53.peel617, %conv42.peel612
  %reass.mul569.peel627 = mul nuw nsw i32 %reass.add568.peel626, 20
  %reass.add570.peel628 = add nuw nsw i32 %conv64.peel621, %conv.peel603
  %reass.mul571.peel629 = mul nsw i32 %reass.add570.peel628, -5
  %add55.peel630 = add nuw nsw i32 %conv75.peel625, %conv.peel603
  %add66.peel631 = add nuw nsw i32 %add55.peel630, %reass.mul569.peel627
  %add77.peel632 = add nsw i32 %add66.peel631, %reass.mul571.peel629
  %24 = load ptr, ptr %arrayidx79, align 8
  %arrayidx81.peel633 = getelementptr inbounds i8, ptr %24, i64 4
  store i32 %add77.peel632, ptr %arrayidx81.peel633, align 4
  %25 = load i32, ptr %width, align 8
  %cmp17.peel634 = icmp sgt i32 %25, 2
  br i1 %cmp17.peel634, label %for.body18, label %for.inc82.loopexit

for.cond85.preheader:                             ; preds = %for.inc82
  %cmp89578 = icmp sgt i32 %45, 0
  br i1 %cmp89578, label %for.cond92.preheader.lr.ph, label %for.end161

for.cond92.preheader.lr.ph:                       ; preds = %for.cond85.preheader
  %.pr = load i32, ptr %width, align 8
  %max_value = getelementptr inbounds i8, ptr %imgOut, i64 100
  %frm_data150 = getelementptr inbounds i8, ptr %imgOut, i64 136
  %26 = icmp sgt i32 %.pr, 0
  br i1 %26, label %for.cond92.preheader, label %for.end161

for.body18:                                       ; preds = %for.body18.peel.next, %for.body18
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body18 ], [ 2, %for.body18.peel.next ]
  %27 = load ptr, ptr %frm_data, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %27, i64 %indvars.iv636
  %28 = load ptr, ptr %arrayidx20, align 8
  %29 = trunc nuw nsw i64 %indvars.iv to i32
  %cond.i.i = add nsw i32 %29, -2
  %cond.i4.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i, i32 %sub)
  %idxprom23 = sext i32 %cond.i4.i to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %28, i64 %idxprom23
  %30 = load i16, ptr %arrayidx24, align 2
  %conv = zext i16 %30 to i32
  %cond.i.i498 = add nsw i32 %29, -1
  %cond.i4.i499 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i498, i32 %sub)
  %idxprom31 = sext i32 %cond.i4.i499 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %28, i64 %idxprom31
  %31 = load i16, ptr %arrayidx32, align 2
  %conv33 = zext i16 %31 to i32
  %cond.i4.i501 = tail call noundef i32 @llvm.smin.i32(i32 %29, i32 %sub)
  %idxprom40 = sext i32 %cond.i4.i501 to i64
  %arrayidx41 = getelementptr inbounds i16, ptr %28, i64 %idxprom40
  %32 = load i16, ptr %arrayidx41, align 2
  %conv42 = zext i16 %32 to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %33 = trunc nuw nsw i64 %indvars.iv.next to i32
  %cond.i4.i503 = tail call noundef i32 @llvm.smin.i32(i32 %33, i32 %sub)
  %idxprom51 = sext i32 %cond.i4.i503 to i64
  %arrayidx52 = getelementptr inbounds i16, ptr %28, i64 %idxprom51
  %34 = load i16, ptr %arrayidx52, align 2
  %conv53 = zext i16 %34 to i32
  %35 = trunc i64 %indvars.iv to i32
  %36 = add i32 %35, 2
  %cond.i4.i505 = tail call noundef i32 @llvm.smin.i32(i32 %36, i32 %sub)
  %idxprom62 = sext i32 %cond.i4.i505 to i64
  %arrayidx63 = getelementptr inbounds i16, ptr %28, i64 %idxprom62
  %37 = load i16, ptr %arrayidx63, align 2
  %conv64 = zext i16 %37 to i32
  %38 = trunc i64 %indvars.iv to i32
  %39 = add i32 %38, 3
  %cond.i4.i507 = tail call noundef i32 @llvm.smin.i32(i32 %39, i32 %sub)
  %idxprom73 = sext i32 %cond.i4.i507 to i64
  %arrayidx74 = getelementptr inbounds i16, ptr %28, i64 %idxprom73
  %40 = load i16, ptr %arrayidx74, align 2
  %conv75 = zext i16 %40 to i32
  %reass.add568 = add nuw nsw i32 %conv53, %conv42
  %reass.mul569 = mul nuw nsw i32 %reass.add568, 20
  %reass.add570 = add nuw nsw i32 %conv64, %conv33
  %reass.mul571 = mul nsw i32 %reass.add570, -5
  %add55 = add nuw nsw i32 %conv75, %conv
  %add66 = add nuw nsw i32 %add55, %reass.mul569
  %add77 = add nsw i32 %add66, %reass.mul571
  %41 = load ptr, ptr %arrayidx79, align 8
  %arrayidx81 = getelementptr inbounds i32, ptr %41, i64 %indvars.iv
  store i32 %add77, ptr %arrayidx81, align 4
  %42 = load i32, ptr %width, align 8
  %43 = sext i32 %42 to i64
  %cmp17 = icmp slt i64 %indvars.iv.next, %43
  br i1 %cmp17, label %for.body18, label %for.inc82.loopexit, !llvm.loop !8

for.inc82.loopexit:                               ; preds = %for.body18, %for.body18.peel.next, %for.body18.lr.ph
  %44 = phi i32 [ %25, %for.body18.peel.next ], [ %16, %for.body18.lr.ph ], [ %42, %for.body18 ]
  %.pre = load i32, ptr %height, align 4
  br label %for.inc82

for.inc82:                                        ; preds = %for.inc82.loopexit, %for.cond13.preheader
  %45 = phi i32 [ %.pre, %for.inc82.loopexit ], [ %7, %for.cond13.preheader ]
  %46 = phi i32 [ %44, %for.inc82.loopexit ], [ %8, %for.cond13.preheader ]
  %indvars.iv.next637 = add nuw nsw i64 %indvars.iv636, 1
  %47 = sext i32 %45 to i64
  %cmp = icmp slt i64 %indvars.iv.next637, %47
  br i1 %cmp, label %for.cond13.preheader, label %for.cond85.preheader, !llvm.loop !10

for.cond92.preheader:                             ; preds = %for.cond92.preheader.lr.ph, %for.inc159
  %48 = phi i32 [ %76, %for.inc159 ], [ %45, %for.cond92.preheader.lr.ph ]
  %49 = phi i32 [ %77, %for.inc159 ], [ %.pr, %for.cond92.preheader.lr.ph ]
  %indvars.iv642 = phi i64 [ %indvars.iv.next643.pre-phi, %for.inc159 ], [ 0, %for.cond92.preheader.lr.ph ]
  %cmp96576 = icmp sgt i32 %49, 0
  br i1 %cmp96576, label %for.body98.lr.ph, label %for.cond92.preheader.for.inc159_crit_edge

for.cond92.preheader.for.inc159_crit_edge:        ; preds = %for.cond92.preheader
  %.pre711 = add nuw nsw i64 %indvars.iv642, 1
  br label %for.inc159

for.body98.lr.ph:                                 ; preds = %for.cond92.preheader
  %50 = trunc nuw nsw i64 %indvars.iv642 to i32
  %51 = tail call i32 @llvm.smax.i32(i32 %50, i32 2)
  %cond.i.i508 = add nsw i32 %51, -2
  %cond.i4.i509 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i508, i32 %sub3)
  %idxprom103 = sext i32 %cond.i4.i509 to i64
  %arrayidx104 = getelementptr inbounds ptr, ptr %call, i64 %idxprom103
  %52 = tail call i32 @llvm.smax.i32(i32 %50, i32 1)
  %cond.i.i510 = add nsw i32 %52, -1
  %cond.i4.i511 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i510, i32 %sub3)
  %idxprom110 = sext i32 %cond.i4.i511 to i64
  %arrayidx111 = getelementptr inbounds ptr, ptr %call, i64 %idxprom110
  %cond.i4.i513 = tail call noundef i32 @llvm.smin.i32(i32 %50, i32 %sub3)
  %idxprom117 = sext i32 %cond.i4.i513 to i64
  %arrayidx118 = getelementptr inbounds ptr, ptr %call, i64 %idxprom117
  %53 = add nuw nsw i64 %indvars.iv642, 1
  %54 = trunc nuw nsw i64 %53 to i32
  %cond.i4.i515 = tail call noundef i32 @llvm.smin.i32(i32 %54, i32 %sub3)
  %idxprom125 = sext i32 %cond.i4.i515 to i64
  %arrayidx126 = getelementptr inbounds ptr, ptr %call, i64 %idxprom125
  %55 = trunc i64 %indvars.iv642 to i32
  %56 = add i32 %55, 2
  %cond.i4.i517 = tail call noundef i32 @llvm.smin.i32(i32 %56, i32 %sub3)
  %idxprom133 = sext i32 %cond.i4.i517 to i64
  %arrayidx134 = getelementptr inbounds ptr, ptr %call, i64 %idxprom133
  %57 = trunc i64 %indvars.iv642 to i32
  %58 = add i32 %57, 3
  %cond.i4.i519 = tail call noundef i32 @llvm.smin.i32(i32 %58, i32 %sub3)
  %idxprom141 = sext i32 %cond.i4.i519 to i64
  %arrayidx142 = getelementptr inbounds ptr, ptr %call, i64 %idxprom141
  br label %for.body98

for.body98:                                       ; preds = %for.body98.lr.ph, %rshift_rnd_sign.exit
  %indvars.iv639 = phi i64 [ 0, %for.body98.lr.ph ], [ %indvars.iv.next640, %rshift_rnd_sign.exit ]
  %59 = load i32, ptr %max_value, align 4
  %60 = load ptr, ptr %arrayidx104, align 8
  %arrayidx106 = getelementptr inbounds i32, ptr %60, i64 %indvars.iv639
  %61 = load i32, ptr %arrayidx106, align 4
  %62 = load ptr, ptr %arrayidx111, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %62, i64 %indvars.iv639
  %63 = load i32, ptr %arrayidx113, align 4
  %64 = load ptr, ptr %arrayidx118, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %64, i64 %indvars.iv639
  %65 = load i32, ptr %arrayidx120, align 4
  %66 = load ptr, ptr %arrayidx126, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %66, i64 %indvars.iv639
  %67 = load i32, ptr %arrayidx128, align 4
  %68 = load ptr, ptr %arrayidx134, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv639
  %69 = load i32, ptr %arrayidx136, align 4
  %70 = load ptr, ptr %arrayidx142, align 8
  %arrayidx144 = getelementptr inbounds i32, ptr %70, i64 %indvars.iv639
  %71 = load i32, ptr %arrayidx144, align 4
  %reass.add564 = add i32 %67, %65
  %reass.mul565 = mul i32 %reass.add564, 20
  %reass.add566 = add i32 %69, %63
  %reass.mul567 = mul i32 %reass.add566, -5
  %add130 = add i32 %reass.mul565, %61
  %add138 = add i32 %add130, %71
  %add146 = add i32 %add138, %reass.mul567
  %cmp.i = icmp sgt i32 %add146, 0
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %for.body98
  %add.i = add nuw nsw i32 %add146, 512
  %shr.i = lshr i32 %add.i, 10
  br label %rshift_rnd_sign.exit

cond.false.i:                                     ; preds = %for.body98
  %add3.i = sub i32 512, %add146
  %shr4.i = lshr i32 %add3.i, 10
  %sub5.i = sub nsw i32 0, %shr4.i
  br label %rshift_rnd_sign.exit

rshift_rnd_sign.exit:                             ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ %sub5.i, %cond.false.i ]
  %cond.i.i520 = tail call noundef i32 @llvm.smax.i32(i32 %cond.i, i32 0)
  %cond.i4.i521 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i520, i32 %59)
  %conv149 = trunc i32 %cond.i4.i521 to i16
  %72 = load ptr, ptr %frm_data150, align 8
  %arrayidx153 = getelementptr inbounds ptr, ptr %72, i64 %indvars.iv642
  %73 = load ptr, ptr %arrayidx153, align 8
  %arrayidx155 = getelementptr inbounds i16, ptr %73, i64 %indvars.iv639
  store i16 %conv149, ptr %arrayidx155, align 2
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1
  %74 = load i32, ptr %width, align 8
  %75 = sext i32 %74 to i64
  %cmp96 = icmp slt i64 %indvars.iv.next640, %75
  br i1 %cmp96, label %for.body98, label %for.inc159.loopexit

for.inc159.loopexit:                              ; preds = %rshift_rnd_sign.exit
  %.pre708 = load i32, ptr %height, align 4
  br label %for.inc159

for.inc159:                                       ; preds = %for.cond92.preheader.for.inc159_crit_edge, %for.inc159.loopexit
  %indvars.iv.next643.pre-phi = phi i64 [ %.pre711, %for.cond92.preheader.for.inc159_crit_edge ], [ %53, %for.inc159.loopexit ]
  %76 = phi i32 [ %48, %for.cond92.preheader.for.inc159_crit_edge ], [ %.pre708, %for.inc159.loopexit ]
  %77 = phi i32 [ %49, %for.cond92.preheader.for.inc159_crit_edge ], [ %74, %for.inc159.loopexit ]
  %78 = sext i32 %76 to i64
  %cmp89 = icmp slt i64 %indvars.iv.next643.pre-phi, %78
  br i1 %cmp89, label %for.cond92.preheader, label %for.end161, !llvm.loop !11

for.end161:                                       ; preds = %for.inc159, %for.cond13.preheader.lr.ph, %entry, %for.cond92.preheader.lr.ph, %for.cond85.preheader
  %79 = load i32, ptr %imgOut, align 8
  %cmp163.not = icmp eq i32 %79, 0
  br i1 %cmp163.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end161
  %arrayidx167 = getelementptr inbounds i8, ptr %imgOut, i64 20
  %80 = load i32, ptr %arrayidx167, align 4
  %sub168 = add nsw i32 %80, -1
  %arrayidx171 = getelementptr inbounds i8, ptr %imgOut, i64 32
  %81 = load i32, ptr %arrayidx171, align 4
  %sub172 = add nsw i32 %81, -1
  %frm_data191 = getelementptr inbounds i8, ptr %imgIn, i64 136
  %max_value286 = getelementptr inbounds i8, ptr %imgOut, i64 100
  %frm_data338 = getelementptr inbounds i8, ptr %imgOut, i64 136
  %cond.i4.i523.peel = tail call i32 @llvm.smin.i32(i32 %sub168, i32 0)
  %idxprom198.peel = sext i32 %cond.i4.i523.peel to i64
  %cond.i4.i529.peel = tail call i32 @llvm.smin.i32(i32 %sub168, i32 1)
  %idxprom232.peel = sext i32 %cond.i4.i529.peel to i64
  %cond.i4.i531.peel = tail call i32 @llvm.smin.i32(i32 %sub168, i32 2)
  %idxprom244.peel = sext i32 %cond.i4.i531.peel to i64
  %cond.i4.i533.peel = tail call i32 @llvm.smin.i32(i32 %sub168, i32 3)
  %idxprom256.peel = sext i32 %cond.i4.i533.peel to i64
  %cond.i4.i533.peel679 = tail call i32 @llvm.smin.i32(i32 %sub168, i32 4)
  %idxprom256.peel680 = sext i32 %cond.i4.i533.peel679 to i64
  br label %for.cond177.preheader

for.cond177.preheader:                            ; preds = %if.then, %for.inc351
  %82 = phi i32 [ %81, %if.then ], [ %173, %for.inc351 ]
  %83 = phi i32 [ %80, %if.then ], [ %174, %for.inc351 ]
  %84 = phi i32 [ %80, %if.then ], [ %175, %for.inc351 ]
  %85 = phi i32 [ %81, %if.then ], [ %176, %for.inc351 ]
  %86 = phi i32 [ %80, %if.then ], [ %177, %for.inc351 ]
  %87 = phi i32 [ %80, %if.then ], [ %178, %for.inc351 ]
  %indvars.iv705 = phi i64 [ 1, %if.then ], [ %indvars.iv.next706, %for.inc351 ]
  %cmp181582 = icmp sgt i32 %85, 0
  br i1 %cmp181582, label %for.cond184.preheader.lr.ph, label %for.inc351

for.cond184.preheader.lr.ph:                      ; preds = %for.cond177.preheader
  %arrayidx193 = getelementptr inbounds [3 x ptr], ptr %frm_data191, i64 0, i64 %indvars.iv705
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %for.cond184.preheader, label %for.cond278.preheader.lr.ph

for.cond271.preheader:                            ; preds = %for.inc268
  %cmp275586 = icmp sgt i32 %138, 0
  br i1 %cmp275586, label %for.cond278.preheader.lr.ph, label %for.inc351

for.cond278.preheader.lr.ph:                      ; preds = %for.cond184.preheader.lr.ph, %for.cond271.preheader
  %89 = phi i32 [ %138, %for.cond271.preheader ], [ %85, %for.cond184.preheader.lr.ph ]
  %90 = phi i32 [ %137, %for.cond271.preheader ], [ %84, %for.cond184.preheader.lr.ph ]
  %91 = phi i32 [ %136, %for.cond271.preheader ], [ %83, %for.cond184.preheader.lr.ph ]
  %92 = phi i32 [ %135, %for.cond271.preheader ], [ %82, %for.cond184.preheader.lr.ph ]
  %arrayidx288 = getelementptr inbounds [3 x i32], ptr %max_value286, i64 0, i64 %indvars.iv705
  %arrayidx340 = getelementptr inbounds [3 x ptr], ptr %frm_data338, i64 0, i64 %indvars.iv705
  %93 = icmp sgt i32 %90, 0
  br i1 %93, label %for.cond278.preheader, label %for.inc351

for.cond184.preheader:                            ; preds = %for.cond184.preheader.lr.ph, %for.inc268
  %94 = phi i32 [ %135, %for.inc268 ], [ %82, %for.cond184.preheader.lr.ph ]
  %95 = phi i32 [ %136, %for.inc268 ], [ %83, %for.cond184.preheader.lr.ph ]
  %96 = phi i32 [ %137, %for.inc268 ], [ %84, %for.cond184.preheader.lr.ph ]
  %97 = phi i32 [ %138, %for.inc268 ], [ %85, %for.cond184.preheader.lr.ph ]
  %98 = phi i32 [ %139, %for.inc268 ], [ %85, %for.cond184.preheader.lr.ph ]
  %99 = phi i32 [ %140, %for.inc268 ], [ %86, %for.cond184.preheader.lr.ph ]
  %indvars.iv693 = phi i64 [ %indvars.iv.next694, %for.inc268 ], [ 0, %for.cond184.preheader.lr.ph ]
  %cmp188580 = icmp sgt i32 %99, 0
  br i1 %cmp188580, label %for.body190.lr.ph, label %for.inc268

for.body190.lr.ph:                                ; preds = %for.cond184.preheader
  %arrayidx262 = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv693
  %100 = load ptr, ptr %arrayidx193, align 8
  %arrayidx195.peel = getelementptr inbounds ptr, ptr %100, i64 %indvars.iv693
  %101 = load ptr, ptr %arrayidx195.peel, align 8
  %arrayidx199.peel = getelementptr inbounds i16, ptr %101, i64 %idxprom198.peel
  %102 = load i16, ptr %arrayidx199.peel, align 2
  %conv200.peel = zext i16 %102 to i32
  %arrayidx233.peel = getelementptr inbounds i16, ptr %101, i64 %idxprom232.peel
  %103 = load i16, ptr %arrayidx233.peel, align 2
  %conv234.peel = zext i16 %103 to i32
  %arrayidx245.peel = getelementptr inbounds i16, ptr %101, i64 %idxprom244.peel
  %104 = load i16, ptr %arrayidx245.peel, align 2
  %conv246.peel = zext i16 %104 to i32
  %arrayidx257.peel = getelementptr inbounds i16, ptr %101, i64 %idxprom256.peel
  %105 = load i16, ptr %arrayidx257.peel, align 2
  %conv258.peel = zext i16 %105 to i32
  %reass.add560.peel = add nuw nsw i32 %conv234.peel, %conv200.peel
  %reass.mul561.peel = mul nuw nsw i32 %reass.add560.peel, 20
  %reass.add562.peel = add nuw nsw i32 %conv246.peel, %conv200.peel
  %reass.mul563.peel = mul nsw i32 %reass.add562.peel, -5
  %add236.peel = add nuw nsw i32 %conv258.peel, %conv200.peel
  %add248.peel = add nuw nsw i32 %add236.peel, %reass.mul561.peel
  %add260.peel = add nsw i32 %add248.peel, %reass.mul563.peel
  %106 = load ptr, ptr %arrayidx262, align 8
  store i32 %add260.peel, ptr %106, align 4
  %107 = load i32, ptr %arrayidx167, align 4
  %cmp188.peel = icmp sgt i32 %107, 1
  br i1 %cmp188.peel, label %for.body190.peel.next, label %for.inc268.loopexit

for.body190.peel.next:                            ; preds = %for.body190.lr.ph
  %108 = load ptr, ptr %arrayidx193, align 8
  %arrayidx195.peel655 = getelementptr inbounds ptr, ptr %108, i64 %indvars.iv693
  %109 = load ptr, ptr %arrayidx195.peel655, align 8
  %arrayidx199.peel659 = getelementptr inbounds i16, ptr %109, i64 %idxprom198.peel
  %110 = load i16, ptr %arrayidx199.peel659, align 2
  %conv200.peel660 = zext i16 %110 to i32
  %arrayidx221.peel668 = getelementptr inbounds i16, ptr %109, i64 %idxprom232.peel
  %111 = load i16, ptr %arrayidx221.peel668, align 2
  %conv222.peel669 = zext i16 %111 to i32
  %arrayidx233.peel673 = getelementptr inbounds i16, ptr %109, i64 %idxprom244.peel
  %112 = load i16, ptr %arrayidx233.peel673, align 2
  %conv234.peel674 = zext i16 %112 to i32
  %arrayidx245.peel677 = getelementptr inbounds i16, ptr %109, i64 %idxprom256.peel
  %113 = load i16, ptr %arrayidx245.peel677, align 2
  %conv246.peel678 = zext i16 %113 to i32
  %arrayidx257.peel681 = getelementptr inbounds i16, ptr %109, i64 %idxprom256.peel680
  %114 = load i16, ptr %arrayidx257.peel681, align 2
  %conv258.peel682 = zext i16 %114 to i32
  %reass.add560.peel683 = add nuw nsw i32 %conv234.peel674, %conv222.peel669
  %reass.mul561.peel684 = mul nuw nsw i32 %reass.add560.peel683, 20
  %reass.add562.peel685 = add nuw nsw i32 %conv246.peel678, %conv200.peel660
  %reass.mul563.peel686 = mul nsw i32 %reass.add562.peel685, -5
  %add236.peel687 = add nuw nsw i32 %conv258.peel682, %conv200.peel660
  %add248.peel688 = add nuw nsw i32 %add236.peel687, %reass.mul561.peel684
  %add260.peel689 = add nsw i32 %add248.peel688, %reass.mul563.peel686
  %115 = load ptr, ptr %arrayidx262, align 8
  %arrayidx264.peel690 = getelementptr inbounds i8, ptr %115, i64 4
  store i32 %add260.peel689, ptr %arrayidx264.peel690, align 4
  %116 = load i32, ptr %arrayidx167, align 4
  %cmp188.peel691 = icmp sgt i32 %116, 2
  br i1 %cmp188.peel691, label %for.body190, label %for.inc268.loopexit

for.body190:                                      ; preds = %for.body190.peel.next, %for.body190
  %indvars.iv648 = phi i64 [ %indvars.iv.next649, %for.body190 ], [ 2, %for.body190.peel.next ]
  %117 = load ptr, ptr %arrayidx193, align 8
  %arrayidx195 = getelementptr inbounds ptr, ptr %117, i64 %indvars.iv693
  %118 = load ptr, ptr %arrayidx195, align 8
  %119 = trunc nuw nsw i64 %indvars.iv648 to i32
  %cond.i.i522 = add nsw i32 %119, -2
  %cond.i4.i523 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i522, i32 %sub168)
  %idxprom198 = sext i32 %cond.i4.i523 to i64
  %arrayidx199 = getelementptr inbounds i16, ptr %118, i64 %idxprom198
  %120 = load i16, ptr %arrayidx199, align 2
  %conv200 = zext i16 %120 to i32
  %cond.i.i524 = add nsw i32 %119, -1
  %cond.i4.i525 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i524, i32 %sub168)
  %idxprom209 = sext i32 %cond.i4.i525 to i64
  %arrayidx210 = getelementptr inbounds i16, ptr %118, i64 %idxprom209
  %121 = load i16, ptr %arrayidx210, align 2
  %conv211 = zext i16 %121 to i32
  %cond.i4.i527 = tail call noundef i32 @llvm.smin.i32(i32 %119, i32 %sub168)
  %idxprom220 = sext i32 %cond.i4.i527 to i64
  %arrayidx221 = getelementptr inbounds i16, ptr %118, i64 %idxprom220
  %122 = load i16, ptr %arrayidx221, align 2
  %conv222 = zext i16 %122 to i32
  %indvars.iv.next649 = add nuw nsw i64 %indvars.iv648, 1
  %123 = trunc nuw nsw i64 %indvars.iv.next649 to i32
  %cond.i4.i529 = tail call noundef i32 @llvm.smin.i32(i32 %123, i32 %sub168)
  %idxprom232 = sext i32 %cond.i4.i529 to i64
  %arrayidx233 = getelementptr inbounds i16, ptr %118, i64 %idxprom232
  %124 = load i16, ptr %arrayidx233, align 2
  %conv234 = zext i16 %124 to i32
  %125 = trunc i64 %indvars.iv648 to i32
  %126 = add i32 %125, 2
  %cond.i4.i531 = tail call noundef i32 @llvm.smin.i32(i32 %126, i32 %sub168)
  %idxprom244 = sext i32 %cond.i4.i531 to i64
  %arrayidx245 = getelementptr inbounds i16, ptr %118, i64 %idxprom244
  %127 = load i16, ptr %arrayidx245, align 2
  %conv246 = zext i16 %127 to i32
  %128 = trunc i64 %indvars.iv648 to i32
  %129 = add i32 %128, 3
  %cond.i4.i533 = tail call noundef i32 @llvm.smin.i32(i32 %129, i32 %sub168)
  %idxprom256 = sext i32 %cond.i4.i533 to i64
  %arrayidx257 = getelementptr inbounds i16, ptr %118, i64 %idxprom256
  %130 = load i16, ptr %arrayidx257, align 2
  %conv258 = zext i16 %130 to i32
  %reass.add560 = add nuw nsw i32 %conv234, %conv222
  %reass.mul561 = mul nuw nsw i32 %reass.add560, 20
  %reass.add562 = add nuw nsw i32 %conv246, %conv211
  %reass.mul563 = mul nsw i32 %reass.add562, -5
  %add236 = add nuw nsw i32 %conv258, %conv200
  %add248 = add nuw nsw i32 %add236, %reass.mul561
  %add260 = add nsw i32 %add248, %reass.mul563
  %131 = load ptr, ptr %arrayidx262, align 8
  %arrayidx264 = getelementptr inbounds i32, ptr %131, i64 %indvars.iv648
  store i32 %add260, ptr %arrayidx264, align 4
  %132 = load i32, ptr %arrayidx167, align 4
  %133 = sext i32 %132 to i64
  %cmp188 = icmp slt i64 %indvars.iv.next649, %133
  br i1 %cmp188, label %for.body190, label %for.inc268.loopexit, !llvm.loop !12

for.inc268.loopexit:                              ; preds = %for.body190, %for.body190.peel.next, %for.body190.lr.ph
  %134 = phi i32 [ %116, %for.body190.peel.next ], [ %107, %for.body190.lr.ph ], [ %132, %for.body190 ]
  %.pre709 = load i32, ptr %arrayidx171, align 4
  br label %for.inc268

for.inc268:                                       ; preds = %for.inc268.loopexit, %for.cond184.preheader
  %135 = phi i32 [ %.pre709, %for.inc268.loopexit ], [ %94, %for.cond184.preheader ]
  %136 = phi i32 [ %134, %for.inc268.loopexit ], [ %95, %for.cond184.preheader ]
  %137 = phi i32 [ %134, %for.inc268.loopexit ], [ %96, %for.cond184.preheader ]
  %138 = phi i32 [ %.pre709, %for.inc268.loopexit ], [ %97, %for.cond184.preheader ]
  %139 = phi i32 [ %.pre709, %for.inc268.loopexit ], [ %98, %for.cond184.preheader ]
  %140 = phi i32 [ %134, %for.inc268.loopexit ], [ %99, %for.cond184.preheader ]
  %indvars.iv.next694 = add nuw nsw i64 %indvars.iv693, 1
  %141 = sext i32 %139 to i64
  %cmp181 = icmp slt i64 %indvars.iv.next694, %141
  br i1 %cmp181, label %for.cond184.preheader, label %for.cond271.preheader, !llvm.loop !13

for.cond278.preheader:                            ; preds = %for.cond278.preheader.lr.ph, %for.inc348
  %142 = phi i32 [ %170, %for.inc348 ], [ %92, %for.cond278.preheader.lr.ph ]
  %143 = phi i32 [ %171, %for.inc348 ], [ %91, %for.cond278.preheader.lr.ph ]
  %indvars.iv699 = phi i64 [ %indvars.iv.next700.pre-phi, %for.inc348 ], [ 0, %for.cond278.preheader.lr.ph ]
  %cmp282584 = icmp sgt i32 %143, 0
  br i1 %cmp282584, label %for.body284.lr.ph, label %for.cond278.preheader.for.inc348_crit_edge

for.cond278.preheader.for.inc348_crit_edge:       ; preds = %for.cond278.preheader
  %.pre712 = add nuw nsw i64 %indvars.iv699, 1
  br label %for.inc348

for.body284.lr.ph:                                ; preds = %for.cond278.preheader
  %144 = trunc nuw nsw i64 %indvars.iv699 to i32
  %145 = tail call i32 @llvm.smax.i32(i32 %144, i32 2)
  %cond.i.i534 = add nsw i32 %145, -2
  %cond.i4.i535 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i534, i32 %sub172)
  %idxprom291 = sext i32 %cond.i4.i535 to i64
  %arrayidx292 = getelementptr inbounds ptr, ptr %call, i64 %idxprom291
  %146 = tail call i32 @llvm.smax.i32(i32 %144, i32 1)
  %cond.i.i536 = add nsw i32 %146, -1
  %cond.i4.i537 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i536, i32 %sub172)
  %idxprom298 = sext i32 %cond.i4.i537 to i64
  %arrayidx299 = getelementptr inbounds ptr, ptr %call, i64 %idxprom298
  %cond.i4.i539 = tail call noundef i32 @llvm.smin.i32(i32 %144, i32 %sub172)
  %idxprom305 = sext i32 %cond.i4.i539 to i64
  %arrayidx306 = getelementptr inbounds ptr, ptr %call, i64 %idxprom305
  %147 = add nuw nsw i64 %indvars.iv699, 1
  %148 = trunc nuw nsw i64 %147 to i32
  %cond.i4.i541 = tail call noundef i32 @llvm.smin.i32(i32 %148, i32 %sub172)
  %idxprom313 = sext i32 %cond.i4.i541 to i64
  %arrayidx314 = getelementptr inbounds ptr, ptr %call, i64 %idxprom313
  %149 = trunc i64 %indvars.iv699 to i32
  %150 = add i32 %149, 2
  %cond.i4.i543 = tail call noundef i32 @llvm.smin.i32(i32 %150, i32 %sub172)
  %idxprom321 = sext i32 %cond.i4.i543 to i64
  %arrayidx322 = getelementptr inbounds ptr, ptr %call, i64 %idxprom321
  %151 = trunc i64 %indvars.iv699 to i32
  %152 = add i32 %151, 3
  %cond.i4.i545 = tail call noundef i32 @llvm.smin.i32(i32 %152, i32 %sub172)
  %idxprom329 = sext i32 %cond.i4.i545 to i64
  %arrayidx330 = getelementptr inbounds ptr, ptr %call, i64 %idxprom329
  br label %for.body284

for.body284:                                      ; preds = %for.body284.lr.ph, %rshift_rnd_sign.exit555
  %indvars.iv696 = phi i64 [ 0, %for.body284.lr.ph ], [ %indvars.iv.next697, %rshift_rnd_sign.exit555 ]
  %153 = load i32, ptr %arrayidx288, align 4
  %154 = load ptr, ptr %arrayidx292, align 8
  %arrayidx294 = getelementptr inbounds i32, ptr %154, i64 %indvars.iv696
  %155 = load i32, ptr %arrayidx294, align 4
  %156 = load ptr, ptr %arrayidx299, align 8
  %arrayidx301 = getelementptr inbounds i32, ptr %156, i64 %indvars.iv696
  %157 = load i32, ptr %arrayidx301, align 4
  %158 = load ptr, ptr %arrayidx306, align 8
  %arrayidx308 = getelementptr inbounds i32, ptr %158, i64 %indvars.iv696
  %159 = load i32, ptr %arrayidx308, align 4
  %160 = load ptr, ptr %arrayidx314, align 8
  %arrayidx316 = getelementptr inbounds i32, ptr %160, i64 %indvars.iv696
  %161 = load i32, ptr %arrayidx316, align 4
  %162 = load ptr, ptr %arrayidx322, align 8
  %arrayidx324 = getelementptr inbounds i32, ptr %162, i64 %indvars.iv696
  %163 = load i32, ptr %arrayidx324, align 4
  %164 = load ptr, ptr %arrayidx330, align 8
  %arrayidx332 = getelementptr inbounds i32, ptr %164, i64 %indvars.iv696
  %165 = load i32, ptr %arrayidx332, align 4
  %reass.add = add i32 %161, %159
  %reass.mul = mul i32 %reass.add, 20
  %reass.add558 = add i32 %163, %157
  %reass.mul559 = mul i32 %reass.add558, -5
  %add318 = add i32 %reass.mul, %155
  %add326 = add i32 %add318, %165
  %add334 = add i32 %add326, %reass.mul559
  %cmp.i546 = icmp sgt i32 %add334, 0
  br i1 %cmp.i546, label %cond.true.i552, label %cond.false.i547

cond.true.i552:                                   ; preds = %for.body284
  %add.i553 = add nuw nsw i32 %add334, 512
  %shr.i554 = lshr i32 %add.i553, 10
  br label %rshift_rnd_sign.exit555

cond.false.i547:                                  ; preds = %for.body284
  %add3.i548 = sub i32 512, %add334
  %shr4.i549 = lshr i32 %add3.i548, 10
  %sub5.i550 = sub nsw i32 0, %shr4.i549
  br label %rshift_rnd_sign.exit555

rshift_rnd_sign.exit555:                          ; preds = %cond.true.i552, %cond.false.i547
  %cond.i551 = phi i32 [ %shr.i554, %cond.true.i552 ], [ %sub5.i550, %cond.false.i547 ]
  %cond.i.i556 = tail call noundef i32 @llvm.smax.i32(i32 %cond.i551, i32 0)
  %cond.i4.i557 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i556, i32 %153)
  %conv337 = trunc i32 %cond.i4.i557 to i16
  %166 = load ptr, ptr %arrayidx340, align 8
  %arrayidx342 = getelementptr inbounds ptr, ptr %166, i64 %indvars.iv699
  %167 = load ptr, ptr %arrayidx342, align 8
  %arrayidx344 = getelementptr inbounds i16, ptr %167, i64 %indvars.iv696
  store i16 %conv337, ptr %arrayidx344, align 2
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1
  %168 = load i32, ptr %arrayidx167, align 4
  %169 = sext i32 %168 to i64
  %cmp282 = icmp slt i64 %indvars.iv.next697, %169
  br i1 %cmp282, label %for.body284, label %for.inc348.loopexit

for.inc348.loopexit:                              ; preds = %rshift_rnd_sign.exit555
  %.pre710 = load i32, ptr %arrayidx171, align 4
  br label %for.inc348

for.inc348:                                       ; preds = %for.cond278.preheader.for.inc348_crit_edge, %for.inc348.loopexit
  %indvars.iv.next700.pre-phi = phi i64 [ %.pre712, %for.cond278.preheader.for.inc348_crit_edge ], [ %147, %for.inc348.loopexit ]
  %170 = phi i32 [ %142, %for.cond278.preheader.for.inc348_crit_edge ], [ %.pre710, %for.inc348.loopexit ]
  %171 = phi i32 [ %143, %for.cond278.preheader.for.inc348_crit_edge ], [ %168, %for.inc348.loopexit ]
  %172 = sext i32 %170 to i64
  %cmp275 = icmp slt i64 %indvars.iv.next700.pre-phi, %172
  br i1 %cmp275, label %for.cond278.preheader, label %for.inc351, !llvm.loop !14

for.inc351:                                       ; preds = %for.inc348, %for.cond177.preheader, %for.cond278.preheader.lr.ph, %for.cond271.preheader
  %173 = phi i32 [ %135, %for.cond271.preheader ], [ %92, %for.cond278.preheader.lr.ph ], [ %82, %for.cond177.preheader ], [ %170, %for.inc348 ]
  %174 = phi i32 [ %136, %for.cond271.preheader ], [ %91, %for.cond278.preheader.lr.ph ], [ %83, %for.cond177.preheader ], [ %171, %for.inc348 ]
  %175 = phi i32 [ %137, %for.cond271.preheader ], [ %90, %for.cond278.preheader.lr.ph ], [ %84, %for.cond177.preheader ], [ %171, %for.inc348 ]
  %176 = phi i32 [ %138, %for.cond271.preheader ], [ %89, %for.cond278.preheader.lr.ph ], [ %85, %for.cond177.preheader ], [ %170, %for.inc348 ]
  %177 = phi i32 [ %140, %for.cond271.preheader ], [ %90, %for.cond278.preheader.lr.ph ], [ %86, %for.cond177.preheader ], [ %171, %for.inc348 ]
  %178 = phi i32 [ %140, %for.cond271.preheader ], [ %90, %for.cond278.preheader.lr.ph ], [ %87, %for.cond177.preheader ], [ %171, %for.inc348 ]
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next706, 3
  br i1 %exitcond.not, label %if.end, label %for.cond177.preheader

if.end:                                           ; preds = %for.inc351, %for.end161
  tail call void @free_mem2Dint(ptr noundef %call) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @new_mem2Dint(i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unswitch.partial.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.peeled.count", i32 2}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
