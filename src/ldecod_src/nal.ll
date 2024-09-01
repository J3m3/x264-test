; ModuleID = 'ldecod_src/nal.c'
source_filename = "ldecod_src/nal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [40 x i8] c" Panic: All zero data sequence in RBSP \00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @RBSPtoSODB(ptr nocapture noundef readonly %streamBuffer, i32 noundef %last_byte_pos) local_unnamed_addr #0 {
entry:
  %0 = sext i32 %last_byte_pos to i64
  %1 = getelementptr i8, ptr %streamBuffer, i64 %0
  %arrayidx = getelementptr i8, ptr %1, i64 -1
  %2 = load i8, ptr %arrayidx, align 1
  %3 = and i8 %2, 1
  %invariant.gep = getelementptr i8, ptr %streamBuffer, i64 -1
  %cmp22 = icmp eq i8 %3, 0
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %if.end7
  %bitoffset.024 = phi i32 [ %bitoffset.1, %if.end7 ], [ 0, %entry ]
  %last_byte_pos.addr.023 = phi i32 [ %last_byte_pos.addr.1, %if.end7 ], [ %last_byte_pos, %entry ]
  %inc = add nsw i32 %bitoffset.024, 1
  %cmp2 = icmp eq i32 %inc, 8
  br i1 %cmp2, label %if.then, label %if.end7

if.then:                                          ; preds = %while.body
  %cmp4 = icmp eq i32 %last_byte_pos.addr.023, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %dec = add nsw i32 %last_byte_pos.addr.023, -1
  br label %if.end7

if.end7:                                          ; preds = %if.end, %while.body
  %last_byte_pos.addr.1 = phi i32 [ %dec, %if.end ], [ %last_byte_pos.addr.023, %while.body ]
  %bitoffset.1 = phi i32 [ 0, %if.end ], [ %inc, %while.body ]
  %4 = sext i32 %last_byte_pos.addr.1 to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %4
  %5 = load i8, ptr %gep, align 1
  %conv11 = zext i8 %5 to i32
  %shl12 = shl nuw i32 1, %bitoffset.1
  %and13 = and i32 %shl12, %conv11
  %cmp = icmp eq i32 %and13, 0
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %if.end7, %entry
  %last_byte_pos.addr.0.lcssa = phi i32 [ %last_byte_pos, %entry ], [ %last_byte_pos.addr.1, %if.end7 ]
  ret i32 %last_byte_pos.addr.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @EBSPtoRBSP(ptr nocapture noundef %streamBuffer, i32 noundef %end_bytepos, i32 noundef %begin_bytepos) local_unnamed_addr #1 {
entry:
  %cmp = icmp slt i32 %end_bytepos, %begin_bytepos
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp173 = icmp slt i32 %begin_bytepos, %end_bytepos
  br i1 %cmp173, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add nsw i32 %end_bytepos, -1
  %0 = sext i32 %begin_bytepos to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end31
  %indvars.iv = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end31 ]
  %count.076 = phi i32 [ 0, %for.body.lr.ph ], [ %count.2, %if.end31 ]
  %i.074 = phi i32 [ %begin_bytepos, %for.body.lr.ph ], [ %inc45, %if.end31 ]
  %cmp2 = icmp eq i32 %count.076, 2
  br i1 %cmp2, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %for.body
  %idxprom = sext i32 %i.074 to i64
  %arrayidx = getelementptr inbounds i8, ptr %streamBuffer, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  %cmp3 = icmp ult i8 %1, 3
  br i1 %cmp3, label %cleanup, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true
  %cmp13 = icmp eq i8 %1, 3
  br i1 %cmp13, label %if.then15, label %if.end31

if.then15:                                        ; preds = %land.lhs.true9
  %cmp16 = icmp slt i32 %i.074, %sub
  br i1 %cmp16, label %land.lhs.true18, label %if.end25

land.lhs.true18:                                  ; preds = %if.then15
  %arrayidx20 = getelementptr i8, ptr %arrayidx, i64 1
  %2 = load i8, ptr %arrayidx20, align 1
  %cmp22 = icmp ugt i8 %2, 3
  br i1 %cmp22, label %cleanup, label %if.end25

if.end25:                                         ; preds = %land.lhs.true18, %if.then15
  %cmp27 = icmp eq i32 %i.074, %sub
  br i1 %cmp27, label %cleanup.loopexit.split.loop.exit81, label %if.end30

if.end30:                                         ; preds = %if.end25
  %inc = add nsw i32 %i.074, 1
  br label %if.end31

if.end31:                                         ; preds = %for.body, %if.end30, %land.lhs.true9
  %i.1 = phi i32 [ %inc, %if.end30 ], [ %i.074, %land.lhs.true9 ], [ %i.074, %for.body ]
  %count.1 = phi i32 [ 0, %if.end30 ], [ 2, %land.lhs.true9 ], [ %count.076, %for.body ]
  %idxprom32 = sext i32 %i.1 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %streamBuffer, i64 %idxprom32
  %3 = load i8, ptr %arrayidx33, align 1
  %arrayidx35 = getelementptr inbounds i8, ptr %streamBuffer, i64 %indvars.iv
  store i8 %3, ptr %arrayidx35, align 1
  %cmp39 = icmp eq i8 %3, 0
  %inc42 = add nsw i32 %count.1, 1
  %count.2 = select i1 %cmp39, i32 %inc42, i32 0
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %inc45 = add nsw i32 %i.1, 1
  %cmp1 = icmp slt i32 %inc45, %end_bytepos
  br i1 %cmp1, label %for.body, label %cleanup.loopexit.split.loop.exit

cleanup.loopexit.split.loop.exit:                 ; preds = %if.end31
  %indvars.le = trunc i64 %indvars.iv.next to i32
  br label %cleanup

cleanup.loopexit.split.loop.exit81:               ; preds = %if.end25
  %4 = trunc nsw i64 %indvars.iv to i32
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true18, %land.lhs.true, %cleanup.loopexit.split.loop.exit, %cleanup.loopexit.split.loop.exit81, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ %end_bytepos, %entry ], [ %begin_bytepos, %for.cond.preheader ], [ %indvars.le, %cleanup.loopexit.split.loop.exit ], [ %4, %cleanup.loopexit.split.loop.exit81 ], [ -1, %land.lhs.true ], [ -1, %land.lhs.true18 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
