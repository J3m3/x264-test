; ModuleID = 'ldecod_src/mbuffer_mvc.c'
source_filename = "ldecod_src/mbuffer_mvc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"init_lists: fs_list0\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"init_lists: fs_listlt\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"init_lists: fs_listinterview0\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"init_lists: fs_list1\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"init_lists: fs_listinterview1\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Invalid remapping_of_pic_nums_idc command\00", align 1
@.str.7 = private unnamed_addr constant [98 x i8] c"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture', invalid bitstream\00", align 1
@.str.9 = private unnamed_addr constant [98 x i8] c"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture', invalid bitstream\00", align 1
@str = private unnamed_addr constant [79 x i8] c"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture'\00", align 1
@str.10 = private unnamed_addr constant [79 x i8] c"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @reorder_short_term(ptr nocapture noundef readonly %currSlice, i32 noundef %cur_list, i32 noundef %num_ref_idx_lX_active_minus1, i32 noundef %picNumLX, ptr nocapture noundef %refIdxLX, i32 noundef %currViewID) local_unnamed_addr #0 {
entry:
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  %idxprom = sext i32 %cur_list to i64
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %idxprom
  %0 = load ptr, ptr %arrayidx, align 8
  %p_Dpb = getelementptr inbounds i8, ptr %currSlice, i64 40
  %1 = load ptr, ptr %p_Dpb, align 8
  %call = tail call ptr @get_short_term_pic(ptr noundef %1, i32 noundef %picNumLX) #10
  %add = add i32 %num_ref_idx_lX_active_minus1, 1
  %2 = load i32, ptr %refIdxLX, align 4
  %cmp63.not = icmp sgt i32 %2, %num_ref_idx_lX_active_minus1
  br i1 %cmp63.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  %.pre = sext i32 %2 to i64
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %3 = sext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %3, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %4 = getelementptr ptr, ptr %0, i64 %indvars.iv
  %arrayidx2 = getelementptr i8, ptr %4, i64 -8
  %5 = load ptr, ptr %arrayidx2, align 8
  store ptr %5, ptr %4, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %6 = load i32, ptr %refIdxLX, align 4
  %7 = sext i32 %6 to i64
  %cmp = icmp sgt i64 %indvars.iv.next, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry.for.end_crit_edge
  %idxprom5.pre-phi = phi i64 [ %.pre, %entry.for.end_crit_edge ], [ %7, %for.body ]
  %.lcssa = phi i32 [ %2, %entry.for.end_crit_edge ], [ %6, %for.body ]
  %inc = add nsw i32 %.lcssa, 1
  store i32 %inc, ptr %refIdxLX, align 4
  %arrayidx6 = getelementptr inbounds ptr, ptr %0, i64 %idxprom5.pre-phi
  store ptr %call, ptr %arrayidx6, align 8
  %8 = load i32, ptr %refIdxLX, align 4
  %cmp9.not65 = icmp sgt i32 %8, %add
  br i1 %cmp9.not65, label %for.end36, label %for.body10.lr.ph

for.body10.lr.ph:                                 ; preds = %for.end
  %cmp21.not = icmp eq i32 %currViewID, -1
  %9 = sext i32 %8 to i64
  %10 = sext i32 %num_ref_idx_lX_active_minus1 to i64
  br i1 %cmp21.not, label %for.body10.us, label %for.body10

for.body10.us:                                    ; preds = %for.body10.lr.ph, %for.inc34.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.inc34.us ], [ %9, %for.body10.lr.ph ]
  %nIdx.066.us = phi i32 [ %nIdx.1.us, %for.inc34.us ], [ %8, %for.body10.lr.ph ]
  %arrayidx12.us = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv74
  %11 = load ptr, ptr %arrayidx12.us, align 8
  %tobool.not.us = icmp eq ptr %11, null
  br i1 %tobool.not.us, label %for.inc34.us, label %if.then.us

if.then.us:                                       ; preds = %for.body10.us
  %is_long_term.us = getelementptr inbounds i8, ptr %11, i64 40
  %12 = load i8, ptr %is_long_term.us, align 8
  %tobool15.not.us = icmp eq i8 %12, 0
  br i1 %tobool15.not.us, label %lor.lhs.false.us, label %if.then27.us

lor.lhs.false.us:                                 ; preds = %if.then.us
  %pic_num.us = getelementptr inbounds i8, ptr %11, i64 28
  %13 = load i32, ptr %pic_num.us, align 4
  %cmp18.not.us = icmp eq i32 %13, %picNumLX
  br i1 %cmp18.not.us, label %for.inc34.us, label %if.then27.us

if.then27.us:                                     ; preds = %lor.lhs.false.us, %if.then.us
  %inc30.us = add nsw i32 %nIdx.066.us, 1
  %idxprom31.us = sext i32 %nIdx.066.us to i64
  %arrayidx32.us = getelementptr inbounds ptr, ptr %0, i64 %idxprom31.us
  store ptr %11, ptr %arrayidx32.us, align 8
  br label %for.inc34.us

for.inc34.us:                                     ; preds = %lor.lhs.false.us, %if.then27.us, %for.body10.us
  %nIdx.1.us = phi i32 [ %inc30.us, %if.then27.us ], [ %nIdx.066.us, %for.body10.us ], [ %nIdx.066.us, %lor.lhs.false.us ]
  %indvars.iv.next75 = add nsw i64 %indvars.iv74, 1
  %cmp9.not.us = icmp sgt i64 %indvars.iv74, %10
  br i1 %cmp9.not.us, label %for.end36, label %for.body10.us

for.body10:                                       ; preds = %for.body10.lr.ph, %for.inc34
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc34 ], [ %9, %for.body10.lr.ph ]
  %nIdx.066 = phi i32 [ %nIdx.1, %for.inc34 ], [ %8, %for.body10.lr.ph ]
  %arrayidx12 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv71
  %14 = load ptr, ptr %arrayidx12, align 8
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %for.inc34, label %if.then

if.then:                                          ; preds = %for.body10
  %is_long_term = getelementptr inbounds i8, ptr %14, i64 40
  %15 = load i8, ptr %is_long_term, align 8
  %tobool15.not = icmp eq i8 %15, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %if.then27

lor.lhs.false:                                    ; preds = %if.then
  %pic_num = getelementptr inbounds i8, ptr %14, i64 28
  %16 = load i32, ptr %pic_num, align 4
  %cmp18.not = icmp eq i32 %16, %picNumLX
  br i1 %cmp18.not, label %lor.lhs.false20, label %if.then27

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %view_id = getelementptr inbounds i8, ptr %14, i64 344
  %17 = load i32, ptr %view_id, align 8
  %cmp25.not = icmp eq i32 %17, %currViewID
  br i1 %cmp25.not, label %for.inc34, label %if.then27

if.then27:                                        ; preds = %lor.lhs.false20, %lor.lhs.false, %if.then
  %inc30 = add nsw i32 %nIdx.066, 1
  %idxprom31 = sext i32 %nIdx.066 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %0, i64 %idxprom31
  store ptr %14, ptr %arrayidx32, align 8
  br label %for.inc34

for.inc34:                                        ; preds = %for.body10, %if.then27, %lor.lhs.false20
  %nIdx.1 = phi i32 [ %inc30, %if.then27 ], [ %nIdx.066, %lor.lhs.false20 ], [ %nIdx.066, %for.body10 ]
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, 1
  %cmp9.not = icmp sgt i64 %indvars.iv71, %10
  br i1 %cmp9.not, label %for.end36, label %for.body10

for.end36:                                        ; preds = %for.inc34, %for.inc34.us, %for.end
  ret void
}

declare ptr @get_short_term_pic(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @reorder_long_term(ptr nocapture noundef readonly %currSlice, ptr nocapture noundef %RefPicListX, i32 noundef %num_ref_idx_lX_active_minus1, i32 noundef %LongTermPicNum, ptr nocapture noundef %refIdxLX, i32 noundef %currViewID) local_unnamed_addr #0 {
entry:
  %p_Dpb = getelementptr inbounds i8, ptr %currSlice, i64 40
  %0 = load ptr, ptr %p_Dpb, align 8
  %call = tail call ptr @get_long_term_pic(ptr noundef %0, i32 noundef %LongTermPicNum) #10
  %add = add i32 %num_ref_idx_lX_active_minus1, 1
  %1 = load i32, ptr %refIdxLX, align 4
  %cmp57.not = icmp sgt i32 %1, %num_ref_idx_lX_active_minus1
  br i1 %cmp57.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  %.pre = sext i32 %1 to i64
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %2 = sext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %2, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %3 = getelementptr ptr, ptr %RefPicListX, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %3, i64 -8
  %4 = load ptr, ptr %arrayidx, align 8
  store ptr %4, ptr %3, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = load i32, ptr %refIdxLX, align 4
  %6 = sext i32 %5 to i64
  %cmp = icmp sgt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry.for.end_crit_edge
  %idxprom3.pre-phi = phi i64 [ %.pre, %entry.for.end_crit_edge ], [ %6, %for.body ]
  %.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %5, %for.body ]
  %inc = add nsw i32 %.lcssa, 1
  store i32 %inc, ptr %refIdxLX, align 4
  %arrayidx4 = getelementptr inbounds ptr, ptr %RefPicListX, i64 %idxprom3.pre-phi
  store ptr %call, ptr %arrayidx4, align 8
  %7 = load i32, ptr %refIdxLX, align 4
  %cmp7.not59 = icmp sgt i32 %7, %add
  br i1 %cmp7.not59, label %for.end31, label %for.body8.lr.ph

for.body8.lr.ph:                                  ; preds = %for.end
  %cmp18.not = icmp eq i32 %currViewID, -1
  %8 = sext i32 %7 to i64
  %9 = sext i32 %num_ref_idx_lX_active_minus1 to i64
  br i1 %cmp18.not, label %for.body8.us, label %for.body8

for.body8.us:                                     ; preds = %for.body8.lr.ph, %for.inc29.us
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc29.us ], [ %8, %for.body8.lr.ph ]
  %nIdx.060.us = phi i32 [ %nIdx.1.us, %for.inc29.us ], [ %7, %for.body8.lr.ph ]
  %arrayidx10.us = getelementptr inbounds ptr, ptr %RefPicListX, i64 %indvars.iv68
  %10 = load ptr, ptr %arrayidx10.us, align 8
  %tobool.not.us = icmp eq ptr %10, null
  br i1 %tobool.not.us, label %for.inc29.us, label %if.then.us

if.then.us:                                       ; preds = %for.body8.us
  %is_long_term.us = getelementptr inbounds i8, ptr %10, i64 40
  %11 = load i8, ptr %is_long_term.us, align 8
  %tobool13.not.us = icmp eq i8 %11, 0
  br i1 %tobool13.not.us, label %if.then22.us, label %lor.lhs.false.us

lor.lhs.false.us:                                 ; preds = %if.then.us
  %long_term_pic_num.us = getelementptr inbounds i8, ptr %10, i64 32
  %12 = load i32, ptr %long_term_pic_num.us, align 8
  %cmp16.not.us = icmp eq i32 %12, %LongTermPicNum
  br i1 %cmp16.not.us, label %for.inc29.us, label %if.then22.us

if.then22.us:                                     ; preds = %lor.lhs.false.us, %if.then.us
  %inc25.us = add nsw i32 %nIdx.060.us, 1
  %idxprom26.us = sext i32 %nIdx.060.us to i64
  %arrayidx27.us = getelementptr inbounds ptr, ptr %RefPicListX, i64 %idxprom26.us
  store ptr %10, ptr %arrayidx27.us, align 8
  br label %for.inc29.us

for.inc29.us:                                     ; preds = %lor.lhs.false.us, %if.then22.us, %for.body8.us
  %nIdx.1.us = phi i32 [ %inc25.us, %if.then22.us ], [ %nIdx.060.us, %for.body8.us ], [ %nIdx.060.us, %lor.lhs.false.us ]
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, 1
  %cmp7.not.us = icmp sgt i64 %indvars.iv68, %9
  br i1 %cmp7.not.us, label %for.end31, label %for.body8.us

for.body8:                                        ; preds = %for.body8.lr.ph, %for.inc29
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.inc29 ], [ %8, %for.body8.lr.ph ]
  %nIdx.060 = phi i32 [ %nIdx.1, %for.inc29 ], [ %7, %for.body8.lr.ph ]
  %arrayidx10 = getelementptr inbounds ptr, ptr %RefPicListX, i64 %indvars.iv65
  %13 = load ptr, ptr %arrayidx10, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.inc29, label %if.then

if.then:                                          ; preds = %for.body8
  %is_long_term = getelementptr inbounds i8, ptr %13, i64 40
  %14 = load i8, ptr %is_long_term, align 8
  %tobool13.not = icmp eq i8 %14, 0
  br i1 %tobool13.not, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %long_term_pic_num = getelementptr inbounds i8, ptr %13, i64 32
  %15 = load i32, ptr %long_term_pic_num, align 8
  %cmp16.not = icmp eq i32 %15, %LongTermPicNum
  br i1 %cmp16.not, label %lor.lhs.false17, label %if.then22

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %view_id = getelementptr inbounds i8, ptr %13, i64 344
  %16 = load i32, ptr %view_id, align 8
  %cmp21.not = icmp eq i32 %16, %currViewID
  br i1 %cmp21.not, label %for.inc29, label %if.then22

if.then22:                                        ; preds = %lor.lhs.false17, %lor.lhs.false, %if.then
  %inc25 = add nsw i32 %nIdx.060, 1
  %idxprom26 = sext i32 %nIdx.060 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %RefPicListX, i64 %idxprom26
  store ptr %13, ptr %arrayidx27, align 8
  br label %for.inc29

for.inc29:                                        ; preds = %for.body8, %if.then22, %lor.lhs.false17
  %nIdx.1 = phi i32 [ %inc25, %if.then22 ], [ %nIdx.060, %lor.lhs.false17 ], [ %nIdx.060, %for.body8 ]
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, 1
  %cmp7.not = icmp sgt i64 %indvars.iv65, %9
  br i1 %cmp7.not, label %for.end31, label %for.body8

for.end31:                                        ; preds = %for.inc29, %for.inc29.us, %for.end
  ret void
}

declare ptr @get_long_term_pic(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_lists_i_slice_mvc(ptr nocapture noundef writeonly %currSlice) local_unnamed_addr #2 {
entry:
  %listinterviewidx0 = getelementptr inbounds i8, ptr %currSlice, i64 13308
  store i32 0, ptr %listinterviewidx0, align 4
  %listinterviewidx1 = getelementptr inbounds i8, ptr %currSlice, i64 13312
  store i32 0, ptr %listinterviewidx1, align 8
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 0, ptr %listXsize, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 0, ptr %arrayidx2, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_lists_p_slice_mvc(ptr noundef %currSlice) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %p_Dpb2 = getelementptr inbounds i8, ptr %currSlice, i64 40
  %1 = load ptr, ptr %p_Dpb2, align 8
  %ThisPOC = getelementptr inbounds i8, ptr %currSlice, i64 104
  %2 = load i32, ptr %ThisPOC, align 8
  %view_id = getelementptr inbounds i8, ptr %currSlice, i64 1176
  %3 = load i32, ptr %view_id, align 8
  %anchor_pic_flag3 = getelementptr inbounds i8, ptr %currSlice, i64 1184
  %4 = load i32, ptr %anchor_pic_flag3, align 8
  %listinterviewidx0 = getelementptr inbounds i8, ptr %currSlice, i64 13308
  store i32 0, ptr %listinterviewidx0, align 4
  %listinterviewidx1 = getelementptr inbounds i8, ptr %currSlice, i64 13312
  store i32 0, ptr %listinterviewidx1, align 8
  %structure = getelementptr inbounds i8, ptr %currSlice, i64 184
  %5 = load i32, ptr %structure, align 8
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 48
  %6 = load i32, ptr %ref_frames_in_buffer, align 8
  %cmp4408.not = icmp eq i32 %6, 0
  br i1 %cmp4408.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fs_ref = getelementptr inbounds i8, ptr %1, i64 24
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %7 = phi i32 [ %6, %for.body.lr.ph ], [ %16, %for.inc ]
  %indvars.iv429 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next430, %for.inc ]
  %list0idx.0409 = phi i32 [ 0, %for.body.lr.ph ], [ %list0idx.1, %for.inc ]
  %8 = load ptr, ptr %fs_ref, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv429
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = load i32, ptr %9, align 8
  %cmp5 = icmp eq i32 %10, 3
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  %frame = getelementptr inbounds i8, ptr %9, i64 48
  %11 = load ptr, ptr %frame, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %11, i64 44
  %12 = load i32, ptr %used_for_reference, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then6
  %is_long_term = getelementptr inbounds i8, ptr %11, i64 40
  %13 = load i8, ptr %is_long_term, align 8
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %view_id20 = getelementptr inbounds i8, ptr %11, i64 344
  %14 = load i32, ptr %view_id20, align 8
  %cmp21 = icmp eq i32 %14, %3
  br i1 %cmp21, label %if.then22, label %for.inc

if.then22:                                        ; preds = %land.lhs.true15
  %15 = load ptr, ptr %listX, align 8
  %inc = add nsw i32 %list0idx.0409, 1
  %idxprom28 = sext i32 %list0idx.0409 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %15, i64 %idxprom28
  store ptr %11, ptr %arrayidx29, align 8
  %.pre452 = load i32, ptr %ref_frames_in_buffer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then22, %land.lhs.true15, %land.lhs.true, %if.then6
  %16 = phi i32 [ %7, %land.lhs.true ], [ %.pre452, %if.then22 ], [ %7, %land.lhs.true15 ], [ %7, %if.then6 ], [ %7, %for.body ]
  %list0idx.1 = phi i32 [ %list0idx.0409, %land.lhs.true ], [ %inc, %if.then22 ], [ %list0idx.0409, %land.lhs.true15 ], [ %list0idx.0409, %if.then6 ], [ %list0idx.0409, %for.body ]
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1
  %17 = zext i32 %16 to i64
  %cmp4 = icmp ult i64 %indvars.iv.next430, %17
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %list0idx.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %list0idx.1, %for.inc ]
  %listX32 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %18 = load ptr, ptr %listX32, align 8
  %conv = sext i32 %list0idx.0.lcssa to i64
  tail call void @qsort(ptr noundef %18, i64 noundef %conv, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #10
  %conv34 = trunc i32 %list0idx.0.lcssa to i8
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 %conv34, ptr %listXsize, align 8
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 52
  %19 = load i32, ptr %ltref_frames_in_buffer, align 4
  %cmp37412.not = icmp eq i32 %19, 0
  br i1 %cmp37412.not, label %for.end75, label %for.body39.lr.ph

for.body39.lr.ph:                                 ; preds = %for.end
  %fs_ltref = getelementptr inbounds i8, ptr %1, i64 32
  br label %for.body39

for.body39:                                       ; preds = %for.body39.lr.ph, %for.inc73
  %20 = phi i32 [ %19, %for.body39.lr.ph ], [ %28, %for.inc73 ]
  %indvars.iv432 = phi i64 [ 0, %for.body39.lr.ph ], [ %indvars.iv.next433, %for.inc73 ]
  %list0idx.2413 = phi i32 [ %list0idx.0.lcssa, %for.body39.lr.ph ], [ %list0idx.3, %for.inc73 ]
  %21 = load ptr, ptr %fs_ltref, align 8
  %arrayidx41 = getelementptr inbounds ptr, ptr %21, i64 %indvars.iv432
  %22 = load ptr, ptr %arrayidx41, align 8
  %23 = load i32, ptr %22, align 8
  %cmp43 = icmp eq i32 %23, 3
  br i1 %cmp43, label %if.then45, label %for.inc73

if.then45:                                        ; preds = %for.body39
  %frame49 = getelementptr inbounds i8, ptr %22, i64 48
  %24 = load ptr, ptr %frame49, align 8
  %is_long_term50 = getelementptr inbounds i8, ptr %24, i64 40
  %25 = load i8, ptr %is_long_term50, align 8
  %tobool52.not = icmp eq i8 %25, 0
  br i1 %tobool52.not, label %for.inc73, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.then45
  %view_id58 = getelementptr inbounds i8, ptr %24, i64 344
  %26 = load i32, ptr %view_id58, align 8
  %cmp59 = icmp eq i32 %26, %3
  br i1 %cmp59, label %if.then61, label %for.inc73

if.then61:                                        ; preds = %land.lhs.true53
  %27 = load ptr, ptr %listX32, align 8
  %inc68 = add nsw i32 %list0idx.2413, 1
  %idxprom69 = sext i32 %list0idx.2413 to i64
  %arrayidx70 = getelementptr inbounds ptr, ptr %27, i64 %idxprom69
  store ptr %24, ptr %arrayidx70, align 8
  %.pre453 = load i32, ptr %ltref_frames_in_buffer, align 4
  br label %for.inc73

for.inc73:                                        ; preds = %for.body39, %if.then61, %land.lhs.true53, %if.then45
  %28 = phi i32 [ %.pre453, %if.then61 ], [ %20, %land.lhs.true53 ], [ %20, %if.then45 ], [ %20, %for.body39 ]
  %list0idx.3 = phi i32 [ %inc68, %if.then61 ], [ %list0idx.2413, %land.lhs.true53 ], [ %list0idx.2413, %if.then45 ], [ %list0idx.2413, %for.body39 ]
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1
  %29 = zext i32 %28 to i64
  %cmp37 = icmp ult i64 %indvars.iv.next433, %29
  br i1 %cmp37, label %for.body39, label %for.end75.loopexit

for.end75.loopexit:                               ; preds = %for.inc73
  %.pre454 = load i8, ptr %listXsize, align 8
  %.pre458 = trunc i32 %list0idx.3 to i8
  br label %for.end75

for.end75:                                        ; preds = %for.end75.loopexit, %for.end
  %conv87.pre-phi = phi i8 [ %.pre458, %for.end75.loopexit ], [ %conv34, %for.end ]
  %30 = phi i8 [ %.pre454, %for.end75.loopexit ], [ %conv34, %for.end ]
  %list0idx.2.lcssa = phi i32 [ %list0idx.3, %for.end75.loopexit ], [ %list0idx.0.lcssa, %for.end ]
  %31 = load ptr, ptr %listX32, align 8
  %idxprom81 = sext i8 %30 to i64
  %arrayidx82 = getelementptr inbounds ptr, ptr %31, i64 %idxprom81
  %conv85 = sext i8 %30 to i32
  %sub = sub nsw i32 %list0idx.2.lcssa, %conv85
  %conv86 = sext i32 %sub to i64
  tail call void @qsort(ptr noundef %arrayidx82, i64 noundef %conv86, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #10
  store i8 %conv87.pre-phi, ptr %listXsize, align 8
  br label %if.end165

if.else:                                          ; preds = %entry
  %size = getelementptr inbounds i8, ptr %1, i64 40
  %32 = load i32, ptr %size, align 8
  %conv90 = zext i32 %32 to i64
  %call = tail call noalias ptr @calloc(i64 noundef %conv90, i64 noundef 8) #11
  %cmp91 = icmp eq ptr %call, null
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.else
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
  %.pre = load i32, ptr %size, align 8
  %.pre459 = zext i32 %.pre to i64
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.else
  %conv96.pre-phi = phi i64 [ %.pre459, %if.then93 ], [ %conv90, %if.else ]
  %call97 = tail call noalias ptr @calloc(i64 noundef %conv96.pre-phi, i64 noundef 8) #11
  %cmp98 = icmp eq ptr %call97, null
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end94
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #10
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end94
  %ref_frames_in_buffer103 = getelementptr inbounds i8, ptr %1, i64 48
  %33 = load i32, ptr %ref_frames_in_buffer103, align 8
  %cmp104401.not = icmp eq i32 %33, 0
  br i1 %cmp104401.not, label %for.end128, label %for.body106.lr.ph

for.body106.lr.ph:                                ; preds = %if.end101
  %fs_ref107 = getelementptr inbounds i8, ptr %1, i64 24
  %.pre450 = load ptr, ptr %fs_ref107, align 8
  %34 = zext i32 %33 to i64
  %xtraiter = and i64 %34, 1
  %35 = icmp eq i32 %33, 1
  br i1 %35, label %for.end128.loopexit.unr-lcssa, label %for.body106.lr.ph.new

for.body106.lr.ph.new:                            ; preds = %for.body106.lr.ph
  %unroll_iter = and i64 %34, 4294967294
  br label %for.body106

for.body106:                                      ; preds = %for.inc126.1, %for.body106.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body106.lr.ph.new ], [ %indvars.iv.next.1, %for.inc126.1 ]
  %list0idx.4402 = phi i32 [ 0, %for.body106.lr.ph.new ], [ %list0idx.5.1, %for.inc126.1 ]
  %niter = phi i64 [ 0, %for.body106.lr.ph.new ], [ %niter.next.1, %for.inc126.1 ]
  %arrayidx109 = getelementptr inbounds ptr, ptr %.pre450, i64 %indvars.iv
  %36 = load ptr, ptr %arrayidx109, align 8
  %is_reference = getelementptr inbounds i8, ptr %36, i64 4
  %37 = load i32, ptr %is_reference, align 4
  %tobool110.not = icmp eq i32 %37, 0
  br i1 %tobool110.not, label %for.inc126, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %for.body106
  %view_id115 = getelementptr inbounds i8, ptr %36, i64 72
  %38 = load i32, ptr %view_id115, align 8
  %cmp116 = icmp eq i32 %38, %3
  br i1 %cmp116, label %if.then118, label %for.inc126

if.then118:                                       ; preds = %land.lhs.true111
  %inc122 = add nsw i32 %list0idx.4402, 1
  %idxprom123 = sext i32 %list0idx.4402 to i64
  %arrayidx124 = getelementptr inbounds ptr, ptr %call, i64 %idxprom123
  store ptr %36, ptr %arrayidx124, align 8
  br label %for.inc126

for.inc126:                                       ; preds = %for.body106, %land.lhs.true111, %if.then118
  %list0idx.5 = phi i32 [ %inc122, %if.then118 ], [ %list0idx.4402, %land.lhs.true111 ], [ %list0idx.4402, %for.body106 ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %arrayidx109.1 = getelementptr inbounds ptr, ptr %.pre450, i64 %indvars.iv.next
  %39 = load ptr, ptr %arrayidx109.1, align 8
  %is_reference.1 = getelementptr inbounds i8, ptr %39, i64 4
  %40 = load i32, ptr %is_reference.1, align 4
  %tobool110.not.1 = icmp eq i32 %40, 0
  br i1 %tobool110.not.1, label %for.inc126.1, label %land.lhs.true111.1

land.lhs.true111.1:                               ; preds = %for.inc126
  %view_id115.1 = getelementptr inbounds i8, ptr %39, i64 72
  %41 = load i32, ptr %view_id115.1, align 8
  %cmp116.1 = icmp eq i32 %41, %3
  br i1 %cmp116.1, label %if.then118.1, label %for.inc126.1

if.then118.1:                                     ; preds = %land.lhs.true111.1
  %inc122.1 = add nsw i32 %list0idx.5, 1
  %idxprom123.1 = sext i32 %list0idx.5 to i64
  %arrayidx124.1 = getelementptr inbounds ptr, ptr %call, i64 %idxprom123.1
  store ptr %39, ptr %arrayidx124.1, align 8
  br label %for.inc126.1

for.inc126.1:                                     ; preds = %if.then118.1, %land.lhs.true111.1, %for.inc126
  %list0idx.5.1 = phi i32 [ %inc122.1, %if.then118.1 ], [ %list0idx.5, %land.lhs.true111.1 ], [ %list0idx.5, %for.inc126 ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %for.end128.loopexit.unr-lcssa, label %for.body106

for.end128.loopexit.unr-lcssa:                    ; preds = %for.inc126.1, %for.body106.lr.ph
  %list0idx.5.lcssa.ph = phi i32 [ poison, %for.body106.lr.ph ], [ %list0idx.5.1, %for.inc126.1 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body106.lr.ph ], [ %indvars.iv.next.1, %for.inc126.1 ]
  %list0idx.4402.unr = phi i32 [ 0, %for.body106.lr.ph ], [ %list0idx.5.1, %for.inc126.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end128, label %for.body106.epil

for.body106.epil:                                 ; preds = %for.end128.loopexit.unr-lcssa
  %arrayidx109.epil = getelementptr inbounds ptr, ptr %.pre450, i64 %indvars.iv.unr
  %42 = load ptr, ptr %arrayidx109.epil, align 8
  %is_reference.epil = getelementptr inbounds i8, ptr %42, i64 4
  %43 = load i32, ptr %is_reference.epil, align 4
  %tobool110.not.epil = icmp eq i32 %43, 0
  br i1 %tobool110.not.epil, label %for.end128, label %land.lhs.true111.epil

land.lhs.true111.epil:                            ; preds = %for.body106.epil
  %view_id115.epil = getelementptr inbounds i8, ptr %42, i64 72
  %44 = load i32, ptr %view_id115.epil, align 8
  %cmp116.epil = icmp eq i32 %44, %3
  br i1 %cmp116.epil, label %if.then118.epil, label %for.end128

if.then118.epil:                                  ; preds = %land.lhs.true111.epil
  %inc122.epil = add nsw i32 %list0idx.4402.unr, 1
  %idxprom123.epil = sext i32 %list0idx.4402.unr to i64
  %arrayidx124.epil = getelementptr inbounds ptr, ptr %call, i64 %idxprom123.epil
  store ptr %42, ptr %arrayidx124.epil, align 8
  br label %for.end128

for.end128:                                       ; preds = %for.end128.loopexit.unr-lcssa, %if.then118.epil, %land.lhs.true111.epil, %for.body106.epil, %if.end101
  %list0idx.4.lcssa = phi i32 [ 0, %if.end101 ], [ %list0idx.5.lcssa.ph, %for.end128.loopexit.unr-lcssa ], [ %inc122.epil, %if.then118.epil ], [ %list0idx.4402.unr, %land.lhs.true111.epil ], [ %list0idx.4402.unr, %for.body106.epil ]
  %conv129 = sext i32 %list0idx.4.lcssa to i64
  tail call void @qsort(ptr noundef %call, i64 noundef %conv129, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #10
  %listXsize130 = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 0, ptr %listXsize130, align 8
  %45 = load i32, ptr %structure, align 8
  %listX133 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %46 = load ptr, ptr %listX133, align 8
  tail call void @gen_pic_list_from_frame_list(i32 noundef %45, ptr noundef %call, i32 noundef %list0idx.4.lcssa, ptr noundef %46, ptr noundef nonnull %listXsize130, i32 noundef 0) #10
  %ltref_frames_in_buffer138 = getelementptr inbounds i8, ptr %1, i64 52
  %47 = load i32, ptr %ltref_frames_in_buffer138, align 4
  %cmp139404.not = icmp eq i32 %47, 0
  br i1 %cmp139404.not, label %for.end158, label %for.body141.lr.ph

for.body141.lr.ph:                                ; preds = %for.end128
  %fs_ltref142 = getelementptr inbounds i8, ptr %1, i64 32
  %.pre451 = load ptr, ptr %fs_ltref142, align 8
  %48 = zext i32 %47 to i64
  %xtraiter465 = and i64 %48, 1
  %49 = icmp eq i32 %47, 1
  br i1 %49, label %for.end158.loopexit.unr-lcssa, label %for.body141.lr.ph.new

for.body141.lr.ph.new:                            ; preds = %for.body141.lr.ph
  %unroll_iter468 = and i64 %48, 4294967294
  br label %for.body141

for.body141:                                      ; preds = %for.inc156.1, %for.body141.lr.ph.new
  %indvars.iv426 = phi i64 [ 0, %for.body141.lr.ph.new ], [ %indvars.iv.next427.1, %for.inc156.1 ]
  %listltidx.0405 = phi i32 [ 0, %for.body141.lr.ph.new ], [ %listltidx.1.1, %for.inc156.1 ]
  %niter469 = phi i64 [ 0, %for.body141.lr.ph.new ], [ %niter469.next.1, %for.inc156.1 ]
  %arrayidx144 = getelementptr inbounds ptr, ptr %.pre451, i64 %indvars.iv426
  %50 = load ptr, ptr %arrayidx144, align 8
  %view_id145 = getelementptr inbounds i8, ptr %50, i64 72
  %51 = load i32, ptr %view_id145, align 8
  %cmp146 = icmp eq i32 %51, %3
  br i1 %cmp146, label %if.then148, label %for.inc156

if.then148:                                       ; preds = %for.body141
  %inc152 = add nsw i32 %listltidx.0405, 1
  %idxprom153 = sext i32 %listltidx.0405 to i64
  %arrayidx154 = getelementptr inbounds ptr, ptr %call97, i64 %idxprom153
  store ptr %50, ptr %arrayidx154, align 8
  br label %for.inc156

for.inc156:                                       ; preds = %for.body141, %if.then148
  %listltidx.1 = phi i32 [ %inc152, %if.then148 ], [ %listltidx.0405, %for.body141 ]
  %indvars.iv.next427 = or disjoint i64 %indvars.iv426, 1
  %arrayidx144.1 = getelementptr inbounds ptr, ptr %.pre451, i64 %indvars.iv.next427
  %52 = load ptr, ptr %arrayidx144.1, align 8
  %view_id145.1 = getelementptr inbounds i8, ptr %52, i64 72
  %53 = load i32, ptr %view_id145.1, align 8
  %cmp146.1 = icmp eq i32 %53, %3
  br i1 %cmp146.1, label %if.then148.1, label %for.inc156.1

if.then148.1:                                     ; preds = %for.inc156
  %inc152.1 = add nsw i32 %listltidx.1, 1
  %idxprom153.1 = sext i32 %listltidx.1 to i64
  %arrayidx154.1 = getelementptr inbounds ptr, ptr %call97, i64 %idxprom153.1
  store ptr %52, ptr %arrayidx154.1, align 8
  br label %for.inc156.1

for.inc156.1:                                     ; preds = %if.then148.1, %for.inc156
  %listltidx.1.1 = phi i32 [ %inc152.1, %if.then148.1 ], [ %listltidx.1, %for.inc156 ]
  %indvars.iv.next427.1 = add nuw nsw i64 %indvars.iv426, 2
  %niter469.next.1 = add i64 %niter469, 2
  %niter469.ncmp.1.not = icmp eq i64 %niter469.next.1, %unroll_iter468
  br i1 %niter469.ncmp.1.not, label %for.end158.loopexit.unr-lcssa, label %for.body141

for.end158.loopexit.unr-lcssa:                    ; preds = %for.inc156.1, %for.body141.lr.ph
  %listltidx.1.lcssa.ph = phi i32 [ poison, %for.body141.lr.ph ], [ %listltidx.1.1, %for.inc156.1 ]
  %indvars.iv426.unr = phi i64 [ 0, %for.body141.lr.ph ], [ %indvars.iv.next427.1, %for.inc156.1 ]
  %listltidx.0405.unr = phi i32 [ 0, %for.body141.lr.ph ], [ %listltidx.1.1, %for.inc156.1 ]
  %lcmp.mod466.not = icmp eq i64 %xtraiter465, 0
  br i1 %lcmp.mod466.not, label %for.end158, label %for.body141.epil

for.body141.epil:                                 ; preds = %for.end158.loopexit.unr-lcssa
  %arrayidx144.epil = getelementptr inbounds ptr, ptr %.pre451, i64 %indvars.iv426.unr
  %54 = load ptr, ptr %arrayidx144.epil, align 8
  %view_id145.epil = getelementptr inbounds i8, ptr %54, i64 72
  %55 = load i32, ptr %view_id145.epil, align 8
  %cmp146.epil = icmp eq i32 %55, %3
  br i1 %cmp146.epil, label %if.then148.epil, label %for.end158

if.then148.epil:                                  ; preds = %for.body141.epil
  %inc152.epil = add nsw i32 %listltidx.0405.unr, 1
  %idxprom153.epil = sext i32 %listltidx.0405.unr to i64
  %arrayidx154.epil = getelementptr inbounds ptr, ptr %call97, i64 %idxprom153.epil
  store ptr %54, ptr %arrayidx154.epil, align 8
  br label %for.end158

for.end158:                                       ; preds = %for.end158.loopexit.unr-lcssa, %if.then148.epil, %for.body141.epil, %for.end128
  %listltidx.0.lcssa = phi i32 [ 0, %for.end128 ], [ %listltidx.1.lcssa.ph, %for.end158.loopexit.unr-lcssa ], [ %inc152.epil, %if.then148.epil ], [ %listltidx.0405.unr, %for.body141.epil ]
  %conv159 = sext i32 %listltidx.0.lcssa to i64
  tail call void @qsort(ptr noundef %call97, i64 noundef %conv159, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #10
  %56 = load i32, ptr %structure, align 8
  %57 = load ptr, ptr %listX133, align 8
  tail call void @gen_pic_list_from_frame_list(i32 noundef %56, ptr noundef %call97, i32 noundef %listltidx.0.lcssa, ptr noundef %57, ptr noundef nonnull %listXsize130, i32 noundef 1) #10
  tail call void @free(ptr noundef %call) #10
  tail call void @free(ptr noundef %call97) #10
  br label %if.end165

if.end165:                                        ; preds = %for.end158, %for.end75
  %listXsize166 = getelementptr inbounds i8, ptr %currSlice, i64 256
  %arrayidx167 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 0, ptr %arrayidx167, align 1
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32
  %58 = load i32, ptr %svc_extension_flag, align 8
  %cmp168 = icmp eq i32 %58, 0
  br i1 %cmp168, label %if.then170, label %if.end220

if.then170:                                       ; preds = %if.end165
  %size171 = getelementptr inbounds i8, ptr %1, i64 40
  %59 = load i32, ptr %size171, align 8
  %conv172 = zext i32 %59 to i64
  %call173 = tail call noalias ptr @calloc(i64 noundef %conv172, i64 noundef 8) #11
  %fs_listinterview0 = getelementptr inbounds i8, ptr %currSlice, i64 13320
  store ptr %call173, ptr %fs_listinterview0, align 8
  %cmp175 = icmp eq ptr %call173, null
  br i1 %cmp175, label %if.then177, label %if.end178

if.then177:                                       ; preds = %if.then170
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #10
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %if.then170
  %60 = load i32, ptr %structure, align 8
  %cmp183 = icmp eq i32 %60, 0
  br i1 %cmp183, label %if.then185, label %if.else208

if.then185:                                       ; preds = %if.end178
  %61 = load i8, ptr %listXsize166, align 8
  %62 = load ptr, ptr %fs_listinterview0, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, ptr noundef %62, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %63 = load i32, ptr %listinterviewidx0, align 4
  %cmp190416.not = icmp eq i32 %63, 0
  br i1 %cmp190416.not, label %for.end204, label %for.body192.lr.ph

for.body192.lr.ph:                                ; preds = %if.then185
  %listX197 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %64 = sext i8 %61 to i64
  br label %for.body192

for.body192:                                      ; preds = %for.body192.lr.ph, %for.body192
  %indvars.iv437 = phi i64 [ %64, %for.body192.lr.ph ], [ %indvars.iv.next438, %for.body192 ]
  %indvars.iv435 = phi i64 [ 0, %for.body192.lr.ph ], [ %indvars.iv.next436, %for.body192 ]
  %65 = load ptr, ptr %fs_listinterview0, align 8
  %arrayidx195 = getelementptr inbounds ptr, ptr %65, i64 %indvars.iv435
  %66 = load ptr, ptr %arrayidx195, align 8
  %frame196 = getelementptr inbounds i8, ptr %66, i64 48
  %67 = load ptr, ptr %frame196, align 8
  %68 = load ptr, ptr %listX197, align 8
  %indvars.iv.next438 = add nsw i64 %indvars.iv437, 1
  %arrayidx201 = getelementptr inbounds ptr, ptr %68, i64 %indvars.iv437
  store ptr %67, ptr %arrayidx201, align 8
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1
  %69 = load i32, ptr %listinterviewidx0, align 4
  %70 = zext i32 %69 to i64
  %cmp190 = icmp ult i64 %indvars.iv.next436, %70
  br i1 %cmp190, label %for.body192, label %for.end204.loopexit

for.end204.loopexit:                              ; preds = %for.body192
  %71 = trunc i64 %indvars.iv.next438 to i8
  br label %for.end204

for.end204:                                       ; preds = %for.end204.loopexit, %if.then185
  %list0idx.6.lcssa = phi i8 [ %61, %if.then185 ], [ %71, %for.end204.loopexit ]
  store i8 %list0idx.6.lcssa, ptr %listXsize166, align 8
  br label %if.end220

if.else208:                                       ; preds = %if.end178
  %72 = load ptr, ptr %fs_listinterview0, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef %60, i32 noundef 0, ptr noundef %72, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %73 = load i32, ptr %structure, align 8
  %74 = load ptr, ptr %fs_listinterview0, align 8
  %75 = load i32, ptr %listinterviewidx0, align 4
  %listX215 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %76 = load ptr, ptr %listX215, align 8
  switch i32 %73, label %if.end220 [
    i32 1, label %for.cond.preheader.i
    i32 2, label %if.then7.i
  ]

for.cond.preheader.i:                             ; preds = %if.else208
  %cmp134.i = icmp sgt i32 %75, 0
  br i1 %cmp134.i, label %for.body.preheader.i, label %if.end220

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %wide.trip.count43.i = zext nneg i32 %75 to i64
  %.pre45.i = load i8, ptr %listXsize166, align 1
  %xtraiter474 = and i64 %wide.trip.count43.i, 1
  %77 = icmp eq i32 %75, 1
  br i1 %77, label %if.end220.loopexit.unr-lcssa, label %for.body.preheader.i.new

for.body.preheader.i.new:                         ; preds = %for.body.preheader.i
  %unroll_iter477 = and i64 %wide.trip.count43.i, 2147483646
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i.new
  %78 = phi i8 [ %.pre45.i, %for.body.preheader.i.new ], [ %inc.i.1, %for.body.i ]
  %indvars.iv40.i = phi i64 [ 0, %for.body.preheader.i.new ], [ %indvars.iv.next41.i.1, %for.body.i ]
  %niter478 = phi i64 [ 0, %for.body.preheader.i.new ], [ %niter478.next.1, %for.body.i ]
  %arrayidx.i = getelementptr inbounds ptr, ptr %74, i64 %indvars.iv40.i
  %79 = load ptr, ptr %arrayidx.i, align 8
  %top_field.i = getelementptr inbounds i8, ptr %79, i64 56
  %80 = load ptr, ptr %top_field.i, align 8
  %idxprom2.i = sext i8 %78 to i64
  %arrayidx3.i = getelementptr inbounds ptr, ptr %76, i64 %idxprom2.i
  store ptr %80, ptr %arrayidx3.i, align 8
  %81 = load i8, ptr %listXsize166, align 1
  %inc.i = add i8 %81, 1
  store i8 %inc.i, ptr %listXsize166, align 1
  %indvars.iv.next41.i = or disjoint i64 %indvars.iv40.i, 1
  %arrayidx.i.1 = getelementptr inbounds ptr, ptr %74, i64 %indvars.iv.next41.i
  %82 = load ptr, ptr %arrayidx.i.1, align 8
  %top_field.i.1 = getelementptr inbounds i8, ptr %82, i64 56
  %83 = load ptr, ptr %top_field.i.1, align 8
  %idxprom2.i.1 = sext i8 %inc.i to i64
  %arrayidx3.i.1 = getelementptr inbounds ptr, ptr %76, i64 %idxprom2.i.1
  store ptr %83, ptr %arrayidx3.i.1, align 8
  %84 = load i8, ptr %listXsize166, align 1
  %inc.i.1 = add i8 %84, 1
  store i8 %inc.i.1, ptr %listXsize166, align 1
  %indvars.iv.next41.i.1 = add nuw nsw i64 %indvars.iv40.i, 2
  %niter478.next.1 = add i64 %niter478, 2
  %niter478.ncmp.1 = icmp eq i64 %niter478.next.1, %unroll_iter477
  br i1 %niter478.ncmp.1, label %if.end220.loopexit.unr-lcssa, label %for.body.i

if.then7.i:                                       ; preds = %if.else208
  %cmp936.i = icmp sgt i32 %75, 0
  br i1 %cmp936.i, label %for.body11.preheader.i, label %if.end220

for.body11.preheader.i:                           ; preds = %if.then7.i
  %wide.trip.count.i = zext nneg i32 %75 to i64
  %.pre.i = load i8, ptr %listXsize166, align 1
  %xtraiter470 = and i64 %wide.trip.count.i, 1
  %85 = icmp eq i32 %75, 1
  br i1 %85, label %if.end220.loopexit463.unr-lcssa, label %for.body11.preheader.i.new

for.body11.preheader.i.new:                       ; preds = %for.body11.preheader.i
  %unroll_iter472 = and i64 %wide.trip.count.i, 2147483646
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i, %for.body11.preheader.i.new
  %86 = phi i8 [ %.pre.i, %for.body11.preheader.i.new ], [ %inc17.i.1, %for.body11.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body11.preheader.i.new ], [ %indvars.iv.next.i.1, %for.body11.i ]
  %niter473 = phi i64 [ 0, %for.body11.preheader.i.new ], [ %niter473.next.1, %for.body11.i ]
  %arrayidx13.i = getelementptr inbounds ptr, ptr %74, i64 %indvars.iv.i
  %87 = load ptr, ptr %arrayidx13.i, align 8
  %bottom_field.i = getelementptr inbounds i8, ptr %87, i64 64
  %88 = load ptr, ptr %bottom_field.i, align 8
  %idxprom15.i = sext i8 %86 to i64
  %arrayidx16.i = getelementptr inbounds ptr, ptr %76, i64 %idxprom15.i
  store ptr %88, ptr %arrayidx16.i, align 8
  %89 = load i8, ptr %listXsize166, align 1
  %inc17.i = add i8 %89, 1
  store i8 %inc17.i, ptr %listXsize166, align 1
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %arrayidx13.i.1 = getelementptr inbounds ptr, ptr %74, i64 %indvars.iv.next.i
  %90 = load ptr, ptr %arrayidx13.i.1, align 8
  %bottom_field.i.1 = getelementptr inbounds i8, ptr %90, i64 64
  %91 = load ptr, ptr %bottom_field.i.1, align 8
  %idxprom15.i.1 = sext i8 %inc17.i to i64
  %arrayidx16.i.1 = getelementptr inbounds ptr, ptr %76, i64 %idxprom15.i.1
  store ptr %91, ptr %arrayidx16.i.1, align 8
  %92 = load i8, ptr %listXsize166, align 1
  %inc17.i.1 = add i8 %92, 1
  store i8 %inc17.i.1, ptr %listXsize166, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter473.next.1 = add i64 %niter473, 2
  %niter473.ncmp.1 = icmp eq i64 %niter473.next.1, %unroll_iter472
  br i1 %niter473.ncmp.1, label %if.end220.loopexit463.unr-lcssa, label %for.body11.i

if.end220.loopexit.unr-lcssa:                     ; preds = %for.body.i, %for.body.preheader.i
  %.unr475 = phi i8 [ %.pre45.i, %for.body.preheader.i ], [ %inc.i.1, %for.body.i ]
  %indvars.iv40.i.unr = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next41.i.1, %for.body.i ]
  %lcmp.mod476.not = icmp eq i64 %xtraiter474, 0
  br i1 %lcmp.mod476.not, label %if.end220, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %if.end220.loopexit.unr-lcssa
  %arrayidx.i.epil = getelementptr inbounds ptr, ptr %74, i64 %indvars.iv40.i.unr
  %93 = load ptr, ptr %arrayidx.i.epil, align 8
  %top_field.i.epil = getelementptr inbounds i8, ptr %93, i64 56
  %94 = load ptr, ptr %top_field.i.epil, align 8
  %idxprom2.i.epil = sext i8 %.unr475 to i64
  %arrayidx3.i.epil = getelementptr inbounds ptr, ptr %76, i64 %idxprom2.i.epil
  store ptr %94, ptr %arrayidx3.i.epil, align 8
  %95 = load i8, ptr %listXsize166, align 1
  %inc.i.epil = add i8 %95, 1
  store i8 %inc.i.epil, ptr %listXsize166, align 1
  br label %if.end220

if.end220.loopexit463.unr-lcssa:                  ; preds = %for.body11.i, %for.body11.preheader.i
  %.unr = phi i8 [ %.pre.i, %for.body11.preheader.i ], [ %inc17.i.1, %for.body11.i ]
  %indvars.iv.i.unr = phi i64 [ 0, %for.body11.preheader.i ], [ %indvars.iv.next.i.1, %for.body11.i ]
  %lcmp.mod471.not = icmp eq i64 %xtraiter470, 0
  br i1 %lcmp.mod471.not, label %if.end220, label %for.body11.i.epil

for.body11.i.epil:                                ; preds = %if.end220.loopexit463.unr-lcssa
  %arrayidx13.i.epil = getelementptr inbounds ptr, ptr %74, i64 %indvars.iv.i.unr
  %96 = load ptr, ptr %arrayidx13.i.epil, align 8
  %bottom_field.i.epil = getelementptr inbounds i8, ptr %96, i64 64
  %97 = load ptr, ptr %bottom_field.i.epil, align 8
  %idxprom15.i.epil = sext i8 %.unr to i64
  %arrayidx16.i.epil = getelementptr inbounds ptr, ptr %76, i64 %idxprom15.i.epil
  store ptr %97, ptr %arrayidx16.i.epil, align 8
  %98 = load i8, ptr %listXsize166, align 1
  %inc17.i.epil = add i8 %98, 1
  store i8 %inc17.i.epil, ptr %listXsize166, align 1
  br label %if.end220

if.end220:                                        ; preds = %for.body11.i.epil, %if.end220.loopexit463.unr-lcssa, %for.body.i.epil, %if.end220.loopexit.unr-lcssa, %if.then7.i, %for.cond.preheader.i, %if.else208, %for.end204, %if.end165
  %99 = load i8, ptr %listXsize166, align 8
  %conv223 = sext i8 %99 to i32
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  %100 = load i32, ptr %num_ref_idx_active, align 8
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %conv223, i32 %100)
  %conv226 = trunc i32 %cond.i to i8
  store i8 %conv226, ptr %listXsize166, align 8
  %101 = load i8, ptr %arrayidx167, align 1
  %conv231 = sext i8 %101 to i32
  %arrayidx233 = getelementptr inbounds i8, ptr %currSlice, i64 140
  %102 = load i32, ptr %arrayidx233, align 4
  %cond.i399 = tail call noundef i32 @llvm.smin.i32(i32 %conv231, i32 %102)
  %conv235 = trunc i32 %cond.i399 to i8
  store i8 %conv235, ptr %arrayidx167, align 1
  %sext = shl i32 %cond.i, 24
  %conv240 = ashr exact i32 %sext, 24
  %cmp242420 = icmp ult i32 %conv240, 33
  br i1 %cmp242420, label %for.body244.lr.ph, label %for.end251

for.body244.lr.ph:                                ; preds = %if.end220
  %no_reference_picture = getelementptr inbounds i8, ptr %0, i64 856488
  %listX245 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %103 = zext nneg i32 %conv240 to i64
  %.pre455 = load ptr, ptr %no_reference_picture, align 8
  br label %for.body244

for.body244:                                      ; preds = %for.body244.lr.ph, %for.body244
  %indvars.iv442 = phi i64 [ %103, %for.body244.lr.ph ], [ %indvars.iv.next443, %for.body244 ]
  %104 = load ptr, ptr %listX245, align 8
  %arrayidx248 = getelementptr inbounds ptr, ptr %104, i64 %indvars.iv442
  store ptr %.pre455, ptr %arrayidx248, align 8
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1
  %105 = and i64 %indvars.iv.next443, 4294967295
  %exitcond.not = icmp eq i64 %105, 33
  br i1 %exitcond.not, label %for.end251.loopexit, label %for.body244

for.end251.loopexit:                              ; preds = %for.body244
  %.pre456 = load i8, ptr %arrayidx167, align 1
  br label %for.end251

for.end251:                                       ; preds = %for.end251.loopexit, %if.end220
  %106 = phi i8 [ %.pre456, %for.end251.loopexit ], [ %conv235, %if.end220 ]
  %cmp256422 = icmp ult i8 %106, 33
  br i1 %cmp256422, label %for.body258.lr.ph, label %for.end266

for.body258.lr.ph:                                ; preds = %for.end251
  %no_reference_picture259 = getelementptr inbounds i8, ptr %0, i64 856488
  %arrayidx261 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %107 = zext nneg i8 %106 to i64
  %.pre457 = load ptr, ptr %no_reference_picture259, align 8
  br label %for.body258

for.body258:                                      ; preds = %for.body258.lr.ph, %for.body258
  %indvars.iv445 = phi i64 [ %107, %for.body258.lr.ph ], [ %indvars.iv.next446, %for.body258 ]
  %108 = load ptr, ptr %arrayidx261, align 8
  %arrayidx263 = getelementptr inbounds ptr, ptr %108, i64 %indvars.iv445
  store ptr %.pre457, ptr %arrayidx263, align 8
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1
  %109 = and i64 %indvars.iv.next446, 4294967295
  %exitcond449.not = icmp eq i64 %109, 33
  br i1 %exitcond449.not, label %for.end266, label %for.body258

for.end266:                                       ; preds = %for.body258, %for.end251
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_pic_num_desc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #4 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %pic_num = getelementptr inbounds i8, ptr %0, i64 28
  %1 = load i32, ptr %pic_num, align 4
  %2 = load ptr, ptr %arg2, align 8
  %pic_num3 = getelementptr inbounds i8, ptr %2, i64 28
  %3 = load i32, ptr %pic_num3, align 4
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_lt_pic_num_asc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #4 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %long_term_pic_num = getelementptr inbounds i8, ptr %0, i64 32
  %1 = load i32, ptr %long_term_pic_num, align 8
  %2 = load ptr, ptr %arg2, align 8
  %long_term_pic_num3 = getelementptr inbounds i8, ptr %2, i64 32
  %3 = load i32, ptr %long_term_pic_num3, align 8
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_fs_by_frame_num_desc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #4 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %frame_num_wrap = getelementptr inbounds i8, ptr %0, i64 28
  %1 = load i32, ptr %frame_num_wrap, align 4
  %2 = load ptr, ptr %arg2, align 8
  %frame_num_wrap3 = getelementptr inbounds i8, ptr %2, i64 28
  %3 = load i32, ptr %frame_num_wrap3, align 4
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

declare void @gen_pic_list_from_frame_list(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_fs_by_lt_pic_idx_asc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #4 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %long_term_frame_idx = getelementptr inbounds i8, ptr %0, i64 32
  %1 = load i32, ptr %long_term_frame_idx, align 8
  %2 = load ptr, ptr %arg2, align 8
  %long_term_frame_idx3 = getelementptr inbounds i8, ptr %2, i64 32
  %3 = load i32, ptr %long_term_frame_idx3, align 8
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

declare void @append_interview_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_lists_b_slice_mvc(ptr noundef %currSlice) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %p_Dpb2 = getelementptr inbounds i8, ptr %currSlice, i64 40
  %1 = load ptr, ptr %p_Dpb2, align 8
  %ThisPOC = getelementptr inbounds i8, ptr %currSlice, i64 104
  %2 = load i32, ptr %ThisPOC, align 8
  %view_id = getelementptr inbounds i8, ptr %currSlice, i64 1176
  %3 = load i32, ptr %view_id, align 8
  %anchor_pic_flag3 = getelementptr inbounds i8, ptr %currSlice, i64 1184
  %4 = load i32, ptr %anchor_pic_flag3, align 8
  %listinterviewidx0 = getelementptr inbounds i8, ptr %currSlice, i64 13308
  store i32 0, ptr %listinterviewidx0, align 4
  %listinterviewidx1 = getelementptr inbounds i8, ptr %currSlice, i64 13312
  store i32 0, ptr %listinterviewidx1, align 8
  %structure = getelementptr inbounds i8, ptr %currSlice, i64 184
  %5 = load i32, ptr %structure, align 8
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 48
  %6 = load i32, ptr %ref_frames_in_buffer, align 8
  %cmp4919.not = icmp eq i32 %6, 0
  br i1 %cmp4919.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fs_ref = getelementptr inbounds i8, ptr %1, i64 24
  %framepoc = getelementptr inbounds i8, ptr %currSlice, i64 76
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %7 = phi i32 [ %6, %for.body.lr.ph ], [ %18, %for.inc ]
  %indvars.iv966 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next967, %for.inc ]
  %list0idx.0920 = phi i32 [ 0, %for.body.lr.ph ], [ %list0idx.1, %for.inc ]
  %8 = load ptr, ptr %fs_ref, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv966
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = load i32, ptr %9, align 8
  %cmp5 = icmp eq i32 %10, 3
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  %frame = getelementptr inbounds i8, ptr %9, i64 48
  %11 = load ptr, ptr %frame, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %11, i64 44
  %12 = load i32, ptr %used_for_reference, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then6
  %is_long_term = getelementptr inbounds i8, ptr %11, i64 40
  %13 = load i8, ptr %is_long_term, align 8
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %view_id20 = getelementptr inbounds i8, ptr %11, i64 344
  %14 = load i32, ptr %view_id20, align 8
  %cmp21 = icmp eq i32 %14, %3
  br i1 %cmp21, label %if.then22, label %for.inc

if.then22:                                        ; preds = %land.lhs.true15
  %15 = load i32, ptr %framepoc, align 4
  %poc = getelementptr inbounds i8, ptr %11, i64 4
  %16 = load i32, ptr %poc, align 4
  %cmp27.not = icmp slt i32 %15, %16
  br i1 %cmp27.not, label %for.inc, label %if.then28

if.then28:                                        ; preds = %if.then22
  %17 = load ptr, ptr %listX, align 8
  %inc = add nsw i32 %list0idx.0920, 1
  %idxprom34 = sext i32 %list0idx.0920 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %17, i64 %idxprom34
  store ptr %11, ptr %arrayidx35, align 8
  %.pre1020 = load i32, ptr %ref_frames_in_buffer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then22, %if.then28, %land.lhs.true15, %land.lhs.true, %if.then6
  %18 = phi i32 [ %7, %land.lhs.true ], [ %.pre1020, %if.then28 ], [ %7, %if.then22 ], [ %7, %land.lhs.true15 ], [ %7, %if.then6 ], [ %7, %for.body ]
  %list0idx.1 = phi i32 [ %list0idx.0920, %land.lhs.true ], [ %inc, %if.then28 ], [ %list0idx.0920, %if.then22 ], [ %list0idx.0920, %land.lhs.true15 ], [ %list0idx.0920, %if.then6 ], [ %list0idx.0920, %for.body ]
  %indvars.iv.next967 = add nuw nsw i64 %indvars.iv966, 1
  %19 = zext i32 %18 to i64
  %cmp4 = icmp ult i64 %indvars.iv.next967, %19
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %list0idx.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %list0idx.1, %for.inc ]
  %listX39 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %20 = load ptr, ptr %listX39, align 8
  %conv = sext i32 %list0idx.0.lcssa to i64
  tail call void @qsort(ptr noundef %20, i64 noundef %conv, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #10
  %21 = load i32, ptr %ref_frames_in_buffer, align 8
  %cmp43923.not = icmp eq i32 %21, 0
  br i1 %cmp43923.not, label %for.end98, label %for.body45.lr.ph

for.body45.lr.ph:                                 ; preds = %for.end
  %fs_ref46 = getelementptr inbounds i8, ptr %1, i64 24
  %framepoc75 = getelementptr inbounds i8, ptr %currSlice, i64 76
  br label %for.body45

for.body45:                                       ; preds = %for.body45.lr.ph, %for.inc96
  %22 = phi i32 [ %21, %for.body45.lr.ph ], [ %33, %for.inc96 ]
  %indvars.iv969 = phi i64 [ 0, %for.body45.lr.ph ], [ %indvars.iv.next970, %for.inc96 ]
  %list0idx.2924 = phi i32 [ %list0idx.0.lcssa, %for.body45.lr.ph ], [ %list0idx.3, %for.inc96 ]
  %23 = load ptr, ptr %fs_ref46, align 8
  %arrayidx48 = getelementptr inbounds ptr, ptr %23, i64 %indvars.iv969
  %24 = load ptr, ptr %arrayidx48, align 8
  %25 = load i32, ptr %24, align 8
  %cmp50 = icmp eq i32 %25, 3
  br i1 %cmp50, label %if.then52, label %for.inc96

if.then52:                                        ; preds = %for.body45
  %frame56 = getelementptr inbounds i8, ptr %24, i64 48
  %26 = load ptr, ptr %frame56, align 8
  %used_for_reference57 = getelementptr inbounds i8, ptr %26, i64 44
  %27 = load i32, ptr %used_for_reference57, align 4
  %tobool58.not = icmp eq i32 %27, 0
  br i1 %tobool58.not, label %for.inc96, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.then52
  %is_long_term64 = getelementptr inbounds i8, ptr %26, i64 40
  %28 = load i8, ptr %is_long_term64, align 8
  %tobool65.not = icmp eq i8 %28, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %for.inc96

land.lhs.true66:                                  ; preds = %land.lhs.true59
  %view_id71 = getelementptr inbounds i8, ptr %26, i64 344
  %29 = load i32, ptr %view_id71, align 8
  %cmp72 = icmp eq i32 %29, %3
  br i1 %cmp72, label %if.then74, label %for.inc96

if.then74:                                        ; preds = %land.lhs.true66
  %30 = load i32, ptr %framepoc75, align 4
  %poc80 = getelementptr inbounds i8, ptr %26, i64 4
  %31 = load i32, ptr %poc80, align 4
  %cmp81 = icmp slt i32 %30, %31
  br i1 %cmp81, label %if.then83, label %for.inc96

if.then83:                                        ; preds = %if.then74
  %32 = load ptr, ptr %listX39, align 8
  %inc90 = add nsw i32 %list0idx.2924, 1
  %idxprom91 = sext i32 %list0idx.2924 to i64
  %arrayidx92 = getelementptr inbounds ptr, ptr %32, i64 %idxprom91
  store ptr %26, ptr %arrayidx92, align 8
  %.pre1021 = load i32, ptr %ref_frames_in_buffer, align 8
  br label %for.inc96

for.inc96:                                        ; preds = %for.body45, %if.then74, %if.then83, %land.lhs.true66, %land.lhs.true59, %if.then52
  %33 = phi i32 [ %22, %land.lhs.true59 ], [ %.pre1021, %if.then83 ], [ %22, %if.then74 ], [ %22, %land.lhs.true66 ], [ %22, %if.then52 ], [ %22, %for.body45 ]
  %list0idx.3 = phi i32 [ %list0idx.2924, %land.lhs.true59 ], [ %inc90, %if.then83 ], [ %list0idx.2924, %if.then74 ], [ %list0idx.2924, %land.lhs.true66 ], [ %list0idx.2924, %if.then52 ], [ %list0idx.2924, %for.body45 ]
  %indvars.iv.next970 = add nuw nsw i64 %indvars.iv969, 1
  %34 = zext i32 %33 to i64
  %cmp43 = icmp ult i64 %indvars.iv.next970, %34
  br i1 %cmp43, label %for.body45, label %for.end98

for.end98:                                        ; preds = %for.inc96, %for.end
  %list0idx.2.lcssa = phi i32 [ %list0idx.0.lcssa, %for.end ], [ %list0idx.3, %for.inc96 ]
  %35 = load ptr, ptr %listX39, align 8
  %arrayidx102 = getelementptr inbounds ptr, ptr %35, i64 %conv
  %sub = sub nsw i32 %list0idx.2.lcssa, %list0idx.0.lcssa
  %conv103 = sext i32 %sub to i64
  tail call void @qsort(ptr noundef %arrayidx102, i64 noundef %conv103, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #10
  %cmp105927 = icmp sgt i32 %list0idx.0.lcssa, 0
  br i1 %cmp105927, label %for.body107.lr.ph, label %for.cond120.preheader

for.body107.lr.ph:                                ; preds = %for.end98
  %arrayidx113 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %wide.trip.count977 = zext nneg i32 %list0idx.0.lcssa to i64
  %xtraiter1045 = and i64 %wide.trip.count977, 3
  %36 = icmp ult i32 %list0idx.0.lcssa, 4
  br i1 %36, label %for.cond120.preheader.loopexit.unr-lcssa, label %for.body107.lr.ph.new

for.body107.lr.ph.new:                            ; preds = %for.body107.lr.ph
  %unroll_iter1047 = and i64 %wide.trip.count977, 2147483644
  br label %for.body107

for.cond120.preheader.loopexit.unr-lcssa:         ; preds = %for.body107, %for.body107.lr.ph
  %indvars.iv972.unr = phi i64 [ 0, %for.body107.lr.ph ], [ %indvars.iv.next973.3, %for.body107 ]
  %lcmp.mod1046.not = icmp eq i64 %xtraiter1045, 0
  br i1 %lcmp.mod1046.not, label %for.cond120.preheader, label %for.body107.epil

for.body107.epil:                                 ; preds = %for.cond120.preheader.loopexit.unr-lcssa, %for.body107.epil
  %indvars.iv972.epil = phi i64 [ %indvars.iv.next973.epil, %for.body107.epil ], [ %indvars.iv972.unr, %for.cond120.preheader.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body107.epil ], [ 0, %for.cond120.preheader.loopexit.unr-lcssa ]
  %37 = load ptr, ptr %listX39, align 8
  %arrayidx111.epil = getelementptr inbounds ptr, ptr %37, i64 %indvars.iv972.epil
  %38 = load ptr, ptr %arrayidx111.epil, align 8
  %39 = load ptr, ptr %arrayidx113, align 8
  %40 = getelementptr ptr, ptr %39, i64 %indvars.iv972.epil
  %arrayidx116.epil = getelementptr ptr, ptr %40, i64 %conv103
  store ptr %38, ptr %arrayidx116.epil, align 8
  %indvars.iv.next973.epil = add nuw nsw i64 %indvars.iv972.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1045
  br i1 %epil.iter.cmp.not, label %for.cond120.preheader, label %for.body107.epil, !llvm.loop !5

for.cond120.preheader:                            ; preds = %for.cond120.preheader.loopexit.unr-lcssa, %for.body107.epil, %for.end98
  %cmp121929 = icmp slt i32 %list0idx.0.lcssa, %list0idx.2.lcssa
  br i1 %cmp121929, label %for.body123.lr.ph, label %for.end135

for.body123.lr.ph:                                ; preds = %for.cond120.preheader
  %arrayidx129 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %wide.trip.count983 = sext i32 %list0idx.2.lcssa to i64
  %41 = sub nsw i64 %wide.trip.count983, %conv
  %xtraiter1049 = and i64 %41, 1
  %lcmp.mod1050.not = icmp eq i64 %xtraiter1049, 0
  br i1 %lcmp.mod1050.not, label %for.body123.prol.loopexit, label %for.body123.prol

for.body123.prol:                                 ; preds = %for.body123.lr.ph
  %42 = load ptr, ptr %listX39, align 8
  %arrayidx127.prol = getelementptr inbounds ptr, ptr %42, i64 %conv
  %43 = load ptr, ptr %arrayidx127.prol, align 8
  %44 = load ptr, ptr %arrayidx129, align 8
  store ptr %43, ptr %44, align 8
  %indvars.iv.next980.prol = add nsw i64 %conv, 1
  br label %for.body123.prol.loopexit

for.body123.prol.loopexit:                        ; preds = %for.body123.prol, %for.body123.lr.ph
  %indvars.iv979.unr = phi i64 [ %conv, %for.body123.lr.ph ], [ %indvars.iv.next980.prol, %for.body123.prol ]
  %45 = add nsw i64 %wide.trip.count983, -1
  %46 = icmp eq i64 %45, %conv
  br i1 %46, label %for.end135, label %for.body123

for.body107:                                      ; preds = %for.body107, %for.body107.lr.ph.new
  %indvars.iv972 = phi i64 [ 0, %for.body107.lr.ph.new ], [ %indvars.iv.next973.3, %for.body107 ]
  %niter1048 = phi i64 [ 0, %for.body107.lr.ph.new ], [ %niter1048.next.3, %for.body107 ]
  %47 = load ptr, ptr %listX39, align 8
  %arrayidx111 = getelementptr inbounds ptr, ptr %47, i64 %indvars.iv972
  %48 = load ptr, ptr %arrayidx111, align 8
  %49 = load ptr, ptr %arrayidx113, align 8
  %50 = getelementptr ptr, ptr %49, i64 %indvars.iv972
  %arrayidx116 = getelementptr ptr, ptr %50, i64 %conv103
  store ptr %48, ptr %arrayidx116, align 8
  %indvars.iv.next973 = or disjoint i64 %indvars.iv972, 1
  %51 = load ptr, ptr %listX39, align 8
  %arrayidx111.1 = getelementptr inbounds ptr, ptr %51, i64 %indvars.iv.next973
  %52 = load ptr, ptr %arrayidx111.1, align 8
  %53 = load ptr, ptr %arrayidx113, align 8
  %54 = getelementptr ptr, ptr %53, i64 %indvars.iv.next973
  %arrayidx116.1 = getelementptr ptr, ptr %54, i64 %conv103
  store ptr %52, ptr %arrayidx116.1, align 8
  %indvars.iv.next973.1 = or disjoint i64 %indvars.iv972, 2
  %55 = load ptr, ptr %listX39, align 8
  %arrayidx111.2 = getelementptr inbounds ptr, ptr %55, i64 %indvars.iv.next973.1
  %56 = load ptr, ptr %arrayidx111.2, align 8
  %57 = load ptr, ptr %arrayidx113, align 8
  %58 = getelementptr ptr, ptr %57, i64 %indvars.iv.next973.1
  %arrayidx116.2 = getelementptr ptr, ptr %58, i64 %conv103
  store ptr %56, ptr %arrayidx116.2, align 8
  %indvars.iv.next973.2 = or disjoint i64 %indvars.iv972, 3
  %59 = load ptr, ptr %listX39, align 8
  %arrayidx111.3 = getelementptr inbounds ptr, ptr %59, i64 %indvars.iv.next973.2
  %60 = load ptr, ptr %arrayidx111.3, align 8
  %61 = load ptr, ptr %arrayidx113, align 8
  %62 = getelementptr ptr, ptr %61, i64 %indvars.iv.next973.2
  %arrayidx116.3 = getelementptr ptr, ptr %62, i64 %conv103
  store ptr %60, ptr %arrayidx116.3, align 8
  %indvars.iv.next973.3 = add nuw nsw i64 %indvars.iv972, 4
  %niter1048.next.3 = add i64 %niter1048, 4
  %niter1048.ncmp.3 = icmp eq i64 %niter1048.next.3, %unroll_iter1047
  br i1 %niter1048.ncmp.3, label %for.cond120.preheader.loopexit.unr-lcssa, label %for.body107

for.body123:                                      ; preds = %for.body123.prol.loopexit, %for.body123
  %indvars.iv979 = phi i64 [ %indvars.iv.next980.1, %for.body123 ], [ %indvars.iv979.unr, %for.body123.prol.loopexit ]
  %63 = load ptr, ptr %listX39, align 8
  %arrayidx127 = getelementptr inbounds ptr, ptr %63, i64 %indvars.iv979
  %64 = load ptr, ptr %arrayidx127, align 8
  %65 = load ptr, ptr %arrayidx129, align 8
  %66 = sub nsw i64 %indvars.iv979, %conv
  %arrayidx132 = getelementptr inbounds ptr, ptr %65, i64 %66
  store ptr %64, ptr %arrayidx132, align 8
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, 1
  %67 = load ptr, ptr %listX39, align 8
  %arrayidx127.1 = getelementptr inbounds ptr, ptr %67, i64 %indvars.iv.next980
  %68 = load ptr, ptr %arrayidx127.1, align 8
  %69 = load ptr, ptr %arrayidx129, align 8
  %70 = sub nsw i64 %indvars.iv.next980, %conv
  %arrayidx132.1 = getelementptr inbounds ptr, ptr %69, i64 %70
  store ptr %68, ptr %arrayidx132.1, align 8
  %indvars.iv.next980.1 = add nsw i64 %indvars.iv979, 2
  %exitcond984.not.1 = icmp eq i64 %indvars.iv.next980.1, %wide.trip.count983
  br i1 %exitcond984.not.1, label %for.end135, label %for.body123

for.end135:                                       ; preds = %for.body123.prol.loopexit, %for.body123, %for.cond120.preheader
  %conv136 = trunc i32 %list0idx.2.lcssa to i8
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  %arrayidx137 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 %conv136, ptr %arrayidx137, align 1
  store i8 %conv136, ptr %listXsize, align 8
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 52
  %71 = load i32, ptr %ltref_frames_in_buffer, align 4
  %cmp141931.not = icmp eq i32 %71, 0
  br i1 %cmp141931.not, label %for.end187, label %for.body143.lr.ph

for.body143.lr.ph:                                ; preds = %for.end135
  %fs_ltref = getelementptr inbounds i8, ptr %1, i64 32
  %arrayidx179 = getelementptr inbounds i8, ptr %currSlice, i64 272
  br label %for.body143

for.body143:                                      ; preds = %for.body143.lr.ph, %for.inc185
  %72 = phi i32 [ %71, %for.body143.lr.ph ], [ %84, %for.inc185 ]
  %indvars.iv985 = phi i64 [ 0, %for.body143.lr.ph ], [ %indvars.iv.next986, %for.inc185 ]
  %list0idx.4932 = phi i32 [ %list0idx.2.lcssa, %for.body143.lr.ph ], [ %list0idx.5, %for.inc185 ]
  %73 = load ptr, ptr %fs_ltref, align 8
  %arrayidx145 = getelementptr inbounds ptr, ptr %73, i64 %indvars.iv985
  %74 = load ptr, ptr %arrayidx145, align 8
  %75 = load i32, ptr %74, align 8
  %cmp147 = icmp eq i32 %75, 3
  br i1 %cmp147, label %if.then149, label %for.inc185

if.then149:                                       ; preds = %for.body143
  %frame153 = getelementptr inbounds i8, ptr %74, i64 48
  %76 = load ptr, ptr %frame153, align 8
  %is_long_term154 = getelementptr inbounds i8, ptr %76, i64 40
  %77 = load i8, ptr %is_long_term154, align 8
  %tobool156.not = icmp eq i8 %77, 0
  br i1 %tobool156.not, label %for.inc185, label %land.lhs.true157

land.lhs.true157:                                 ; preds = %if.then149
  %view_id162 = getelementptr inbounds i8, ptr %76, i64 344
  %78 = load i32, ptr %view_id162, align 8
  %cmp163 = icmp eq i32 %78, %3
  br i1 %cmp163, label %if.then165, label %for.inc185

if.then165:                                       ; preds = %land.lhs.true157
  %79 = load ptr, ptr %listX39, align 8
  %idxprom172 = sext i32 %list0idx.4932 to i64
  %arrayidx173 = getelementptr inbounds ptr, ptr %79, i64 %idxprom172
  store ptr %76, ptr %arrayidx173, align 8
  %80 = load ptr, ptr %fs_ltref, align 8
  %arrayidx176 = getelementptr inbounds ptr, ptr %80, i64 %indvars.iv985
  %81 = load ptr, ptr %arrayidx176, align 8
  %frame177 = getelementptr inbounds i8, ptr %81, i64 48
  %82 = load ptr, ptr %frame177, align 8
  %83 = load ptr, ptr %arrayidx179, align 8
  %inc180 = add nsw i32 %list0idx.4932, 1
  %arrayidx182 = getelementptr inbounds ptr, ptr %83, i64 %idxprom172
  store ptr %82, ptr %arrayidx182, align 8
  %.pre1022 = load i32, ptr %ltref_frames_in_buffer, align 4
  br label %for.inc185

for.inc185:                                       ; preds = %for.body143, %if.then165, %land.lhs.true157, %if.then149
  %84 = phi i32 [ %.pre1022, %if.then165 ], [ %72, %land.lhs.true157 ], [ %72, %if.then149 ], [ %72, %for.body143 ]
  %list0idx.5 = phi i32 [ %inc180, %if.then165 ], [ %list0idx.4932, %land.lhs.true157 ], [ %list0idx.4932, %if.then149 ], [ %list0idx.4932, %for.body143 ]
  %indvars.iv.next986 = add nuw nsw i64 %indvars.iv985, 1
  %85 = zext i32 %84 to i64
  %cmp141 = icmp ult i64 %indvars.iv.next986, %85
  br i1 %cmp141, label %for.body143, label %for.end187.loopexit

for.end187.loopexit:                              ; preds = %for.inc185
  %.pre1023 = load i8, ptr %listXsize, align 8
  %.pre1029 = trunc i32 %list0idx.5 to i8
  br label %for.end187

for.end187:                                       ; preds = %for.end187.loopexit, %for.end135
  %conv212.pre-phi = phi i8 [ %.pre1029, %for.end187.loopexit ], [ %conv136, %for.end135 ]
  %86 = phi i8 [ %.pre1023, %for.end187.loopexit ], [ %conv136, %for.end135 ]
  %list0idx.4.lcssa = phi i32 [ %list0idx.5, %for.end187.loopexit ], [ %list0idx.2.lcssa, %for.end135 ]
  %87 = load ptr, ptr %listX39, align 8
  %idxprom193 = sext i8 %86 to i64
  %arrayidx194 = getelementptr inbounds ptr, ptr %87, i64 %idxprom193
  %conv197 = sext i8 %86 to i32
  %sub198 = sub nsw i32 %list0idx.4.lcssa, %conv197
  %conv199 = sext i32 %sub198 to i64
  tail call void @qsort(ptr noundef %arrayidx194, i64 noundef %conv199, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #10
  %arrayidx201 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %88 = load ptr, ptr %arrayidx201, align 8
  %89 = load i8, ptr %listXsize, align 8
  %idxprom205 = sext i8 %89 to i64
  %arrayidx206 = getelementptr inbounds ptr, ptr %88, i64 %idxprom205
  %conv209 = sext i8 %89 to i32
  %sub210 = sub nsw i32 %list0idx.4.lcssa, %conv209
  %conv211 = sext i32 %sub210 to i64
  tail call void @qsort(ptr noundef %arrayidx206, i64 noundef %conv211, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #10
  store i8 %conv212.pre-phi, ptr %arrayidx137, align 1
  store i8 %conv212.pre-phi, ptr %listXsize, align 8
  br label %if.end391

if.else:                                          ; preds = %entry
  %size = getelementptr inbounds i8, ptr %1, i64 40
  %90 = load i32, ptr %size, align 8
  %conv217 = zext i32 %90 to i64
  %call = tail call noalias ptr @calloc(i64 noundef %conv217, i64 noundef 8) #11
  %cmp218 = icmp eq ptr %call, null
  br i1 %cmp218, label %if.then220, label %if.end221

if.then220:                                       ; preds = %if.else
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
  %.pre = load i32, ptr %size, align 8
  %.pre1030 = zext i32 %.pre to i64
  br label %if.end221

if.end221:                                        ; preds = %if.then220, %if.else
  %conv223.pre-phi = phi i64 [ %.pre1030, %if.then220 ], [ %conv217, %if.else ]
  %call224 = tail call noalias ptr @calloc(i64 noundef %conv223.pre-phi, i64 noundef 8) #11
  %cmp225 = icmp eq ptr %call224, null
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %if.end221
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #10
  %.pre1016 = load i32, ptr %size, align 8
  %.pre1031 = zext i32 %.pre1016 to i64
  br label %if.end228

if.end228:                                        ; preds = %if.then227, %if.end221
  %conv230.pre-phi = phi i64 [ %.pre1031, %if.then227 ], [ %conv223.pre-phi, %if.end221 ]
  %call231 = tail call noalias ptr @calloc(i64 noundef %conv230.pre-phi, i64 noundef 8) #11
  %cmp232 = icmp eq ptr %call231, null
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %if.end228
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #10
  br label %if.end235

if.end235:                                        ; preds = %if.then234, %if.end228
  %listXsize236 = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 0, ptr %listXsize236, align 8
  %arrayidx239 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 1, ptr %arrayidx239, align 1
  %ref_frames_in_buffer241 = getelementptr inbounds i8, ptr %1, i64 48
  %91 = load i32, ptr %ref_frames_in_buffer241, align 8
  %cmp242904.not = icmp eq i32 %91, 0
  br i1 %cmp242904.not, label %for.end276, label %for.body244.lr.ph

for.body244.lr.ph:                                ; preds = %if.end235
  %fs_ref245 = getelementptr inbounds i8, ptr %1, i64 24
  %.pre1017 = load ptr, ptr %fs_ref245, align 8
  %92 = zext i32 %91 to i64
  br label %for.body244

for.body244:                                      ; preds = %for.body244.lr.ph, %for.inc274
  %indvars.iv = phi i64 [ 0, %for.body244.lr.ph ], [ %indvars.iv.next, %for.inc274 ]
  %list0idx.6905 = phi i32 [ 0, %for.body244.lr.ph ], [ %list0idx.7, %for.inc274 ]
  %arrayidx247 = getelementptr inbounds ptr, ptr %.pre1017, i64 %indvars.iv
  %93 = load ptr, ptr %arrayidx247, align 8
  %94 = load i32, ptr %93, align 8
  %tobool249.not = icmp eq i32 %94, 0
  br i1 %tobool249.not, label %for.inc274, label %if.then250

if.then250:                                       ; preds = %for.body244
  %95 = load i32, ptr %ThisPOC, align 8
  %poc255 = getelementptr inbounds i8, ptr %93, i64 40
  %96 = load i32, ptr %poc255, align 8
  %cmp256.not = icmp slt i32 %95, %96
  br i1 %cmp256.not, label %for.inc274, label %land.lhs.true258

land.lhs.true258:                                 ; preds = %if.then250
  %view_id262 = getelementptr inbounds i8, ptr %93, i64 72
  %97 = load i32, ptr %view_id262, align 8
  %cmp263 = icmp eq i32 %97, %3
  br i1 %cmp263, label %if.then265, label %for.inc274

if.then265:                                       ; preds = %land.lhs.true258
  %inc269 = add nsw i32 %list0idx.6905, 1
  %idxprom270 = sext i32 %list0idx.6905 to i64
  %arrayidx271 = getelementptr inbounds ptr, ptr %call, i64 %idxprom270
  store ptr %93, ptr %arrayidx271, align 8
  br label %for.inc274

for.inc274:                                       ; preds = %for.body244, %if.then265, %land.lhs.true258, %if.then250
  %list0idx.7 = phi i32 [ %inc269, %if.then265 ], [ %list0idx.6905, %land.lhs.true258 ], [ %list0idx.6905, %if.then250 ], [ %list0idx.6905, %for.body244 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp242 = icmp ult i64 %indvars.iv.next, %92
  br i1 %cmp242, label %for.body244, label %for.end276

for.end276:                                       ; preds = %for.inc274, %if.end235
  %list0idx.6.lcssa = phi i32 [ 0, %if.end235 ], [ %list0idx.7, %for.inc274 ]
  %conv277 = sext i32 %list0idx.6.lcssa to i64
  tail call void @qsort(ptr noundef %call, i64 noundef %conv277, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #10
  %98 = load i32, ptr %ref_frames_in_buffer241, align 8
  %cmp280907.not = icmp eq i32 %98, 0
  br i1 %cmp280907.not, label %for.end314, label %for.body282.lr.ph

for.body282.lr.ph:                                ; preds = %for.end276
  %fs_ref283 = getelementptr inbounds i8, ptr %1, i64 24
  %.pre1018 = load ptr, ptr %fs_ref283, align 8
  %99 = zext i32 %98 to i64
  br label %for.body282

for.body282:                                      ; preds = %for.body282.lr.ph, %for.inc312
  %indvars.iv951 = phi i64 [ 0, %for.body282.lr.ph ], [ %indvars.iv.next952, %for.inc312 ]
  %list0idx.8908 = phi i32 [ %list0idx.6.lcssa, %for.body282.lr.ph ], [ %list0idx.9, %for.inc312 ]
  %arrayidx285 = getelementptr inbounds ptr, ptr %.pre1018, i64 %indvars.iv951
  %100 = load ptr, ptr %arrayidx285, align 8
  %101 = load i32, ptr %100, align 8
  %tobool287.not = icmp eq i32 %101, 0
  br i1 %tobool287.not, label %for.inc312, label %if.then288

if.then288:                                       ; preds = %for.body282
  %102 = load i32, ptr %ThisPOC, align 8
  %poc293 = getelementptr inbounds i8, ptr %100, i64 40
  %103 = load i32, ptr %poc293, align 8
  %cmp294 = icmp slt i32 %102, %103
  br i1 %cmp294, label %land.lhs.true296, label %for.inc312

land.lhs.true296:                                 ; preds = %if.then288
  %view_id300 = getelementptr inbounds i8, ptr %100, i64 72
  %104 = load i32, ptr %view_id300, align 8
  %cmp301 = icmp eq i32 %104, %3
  br i1 %cmp301, label %if.then303, label %for.inc312

if.then303:                                       ; preds = %land.lhs.true296
  %inc307 = add nsw i32 %list0idx.8908, 1
  %idxprom308 = sext i32 %list0idx.8908 to i64
  %arrayidx309 = getelementptr inbounds ptr, ptr %call, i64 %idxprom308
  store ptr %100, ptr %arrayidx309, align 8
  br label %for.inc312

for.inc312:                                       ; preds = %for.body282, %if.then303, %land.lhs.true296, %if.then288
  %list0idx.9 = phi i32 [ %inc307, %if.then303 ], [ %list0idx.8908, %land.lhs.true296 ], [ %list0idx.8908, %if.then288 ], [ %list0idx.8908, %for.body282 ]
  %indvars.iv.next952 = add nuw nsw i64 %indvars.iv951, 1
  %cmp280 = icmp ult i64 %indvars.iv.next952, %99
  br i1 %cmp280, label %for.body282, label %for.end314

for.end314:                                       ; preds = %for.inc312, %for.end276
  %list0idx.8.lcssa = phi i32 [ %list0idx.6.lcssa, %for.end276 ], [ %list0idx.9, %for.inc312 ]
  %arrayidx316 = getelementptr inbounds ptr, ptr %call, i64 %conv277
  %sub317 = sub nsw i32 %list0idx.8.lcssa, %list0idx.6.lcssa
  %conv318 = sext i32 %sub317 to i64
  tail call void @qsort(ptr noundef %arrayidx316, i64 noundef %conv318, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #10
  %cmp320911 = icmp sgt i32 %list0idx.6.lcssa, 0
  br i1 %cmp320911, label %for.body322.preheader, label %for.cond332.preheader

for.body322.preheader:                            ; preds = %for.end314
  %wide.trip.count = zext nneg i32 %list0idx.6.lcssa to i64
  %invariant.gep = getelementptr ptr, ptr %call224, i64 %conv318
  %min.iters.check = icmp ult i32 %list0idx.6.lcssa, 8
  br i1 %min.iters.check, label %for.body322.preheader1043, label %vector.ph

for.body322.preheader1043:                        ; preds = %middle.block, %for.body322.preheader
  %indvars.iv954.ph = phi i64 [ 0, %for.body322.preheader ], [ %n.vec, %middle.block ]
  br label %for.body322

vector.ph:                                        ; preds = %for.body322.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %105 = getelementptr inbounds ptr, ptr %call, i64 %index
  %106 = getelementptr inbounds i8, ptr %105, i64 16
  %107 = getelementptr inbounds i8, ptr %105, i64 32
  %108 = getelementptr inbounds i8, ptr %105, i64 48
  %wide.load = load <2 x ptr>, ptr %105, align 8
  %wide.load1038 = load <2 x ptr>, ptr %106, align 8
  %wide.load1039 = load <2 x ptr>, ptr %107, align 8
  %wide.load1040 = load <2 x ptr>, ptr %108, align 8
  %109 = getelementptr ptr, ptr %invariant.gep, i64 %index
  %110 = getelementptr i8, ptr %109, i64 16
  %111 = getelementptr i8, ptr %109, i64 32
  %112 = getelementptr i8, ptr %109, i64 48
  store <2 x ptr> %wide.load, ptr %109, align 8
  store <2 x ptr> %wide.load1038, ptr %110, align 8
  store <2 x ptr> %wide.load1039, ptr %111, align 8
  store <2 x ptr> %wide.load1040, ptr %112, align 8
  %index.next = add nuw i64 %index, 8
  %113 = icmp eq i64 %index.next, %n.vec
  br i1 %113, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond332.preheader, label %for.body322.preheader1043

for.cond332.preheader:                            ; preds = %for.body322, %middle.block, %for.end314
  %cmp333913 = icmp slt i32 %list0idx.6.lcssa, %list0idx.8.lcssa
  br i1 %cmp333913, label %for.body335.preheader, label %for.end343

for.body335.preheader:                            ; preds = %for.cond332.preheader
  %114 = shl nsw i64 %conv277, 3
  %scevgep = getelementptr i8, ptr %call, i64 %114
  %115 = xor i32 %list0idx.6.lcssa, -1
  %116 = add i32 %list0idx.8.lcssa, %115
  %117 = zext i32 %116 to i64
  %118 = shl nuw nsw i64 %117, 3
  %119 = add nuw nsw i64 %118, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %call224, ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i64 %119, i1 false)
  br label %for.end343

for.body322:                                      ; preds = %for.body322.preheader1043, %for.body322
  %indvars.iv954 = phi i64 [ %indvars.iv.next955, %for.body322 ], [ %indvars.iv954.ph, %for.body322.preheader1043 ]
  %arrayidx324 = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv954
  %120 = load ptr, ptr %arrayidx324, align 8
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv954
  store ptr %120, ptr %gep, align 8
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next955, %wide.trip.count
  br i1 %exitcond.not, label %for.cond332.preheader, label %for.body322, !llvm.loop !10

for.end343:                                       ; preds = %for.body335.preheader, %for.cond332.preheader
  store i8 0, ptr %listXsize236, align 8
  store i8 0, ptr %arrayidx239, align 1
  %121 = load i32, ptr %structure, align 8
  %listX349 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %122 = load ptr, ptr %listX349, align 8
  tail call void @gen_pic_list_from_frame_list(i32 noundef %121, ptr noundef %call, i32 noundef %list0idx.8.lcssa, ptr noundef %122, ptr noundef nonnull %listXsize236, i32 noundef 0) #10
  %123 = load i32, ptr %structure, align 8
  %arrayidx355 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %124 = load ptr, ptr %arrayidx355, align 8
  tail call void @gen_pic_list_from_frame_list(i32 noundef %123, ptr noundef %call224, i32 noundef %list0idx.8.lcssa, ptr noundef %124, ptr noundef nonnull %arrayidx239, i32 noundef 0) #10
  %ltref_frames_in_buffer359 = getelementptr inbounds i8, ptr %1, i64 52
  %125 = load i32, ptr %ltref_frames_in_buffer359, align 4
  %cmp360915.not = icmp eq i32 %125, 0
  br i1 %cmp360915.not, label %for.end379, label %for.body362.lr.ph

for.body362.lr.ph:                                ; preds = %for.end343
  %fs_ltref363 = getelementptr inbounds i8, ptr %1, i64 32
  %.pre1019 = load ptr, ptr %fs_ltref363, align 8
  %126 = zext i32 %125 to i64
  %xtraiter = and i64 %126, 1
  %127 = icmp eq i32 %125, 1
  br i1 %127, label %for.end379.loopexit.unr-lcssa, label %for.body362.lr.ph.new

for.body362.lr.ph.new:                            ; preds = %for.body362.lr.ph
  %unroll_iter = and i64 %126, 4294967294
  br label %for.body362

for.body362:                                      ; preds = %for.inc377.1, %for.body362.lr.ph.new
  %indvars.iv963 = phi i64 [ 0, %for.body362.lr.ph.new ], [ %indvars.iv.next964.1, %for.inc377.1 ]
  %listltidx.0916 = phi i32 [ 0, %for.body362.lr.ph.new ], [ %listltidx.1.1, %for.inc377.1 ]
  %niter = phi i64 [ 0, %for.body362.lr.ph.new ], [ %niter.next.1, %for.inc377.1 ]
  %arrayidx365 = getelementptr inbounds ptr, ptr %.pre1019, i64 %indvars.iv963
  %128 = load ptr, ptr %arrayidx365, align 8
  %view_id366 = getelementptr inbounds i8, ptr %128, i64 72
  %129 = load i32, ptr %view_id366, align 8
  %cmp367 = icmp eq i32 %129, %3
  br i1 %cmp367, label %if.then369, label %for.inc377

if.then369:                                       ; preds = %for.body362
  %inc373 = add nsw i32 %listltidx.0916, 1
  %idxprom374 = sext i32 %listltidx.0916 to i64
  %arrayidx375 = getelementptr inbounds ptr, ptr %call231, i64 %idxprom374
  store ptr %128, ptr %arrayidx375, align 8
  br label %for.inc377

for.inc377:                                       ; preds = %for.body362, %if.then369
  %listltidx.1 = phi i32 [ %inc373, %if.then369 ], [ %listltidx.0916, %for.body362 ]
  %indvars.iv.next964 = or disjoint i64 %indvars.iv963, 1
  %arrayidx365.1 = getelementptr inbounds ptr, ptr %.pre1019, i64 %indvars.iv.next964
  %130 = load ptr, ptr %arrayidx365.1, align 8
  %view_id366.1 = getelementptr inbounds i8, ptr %130, i64 72
  %131 = load i32, ptr %view_id366.1, align 8
  %cmp367.1 = icmp eq i32 %131, %3
  br i1 %cmp367.1, label %if.then369.1, label %for.inc377.1

if.then369.1:                                     ; preds = %for.inc377
  %inc373.1 = add nsw i32 %listltidx.1, 1
  %idxprom374.1 = sext i32 %listltidx.1 to i64
  %arrayidx375.1 = getelementptr inbounds ptr, ptr %call231, i64 %idxprom374.1
  store ptr %130, ptr %arrayidx375.1, align 8
  br label %for.inc377.1

for.inc377.1:                                     ; preds = %if.then369.1, %for.inc377
  %listltidx.1.1 = phi i32 [ %inc373.1, %if.then369.1 ], [ %listltidx.1, %for.inc377 ]
  %indvars.iv.next964.1 = add nuw nsw i64 %indvars.iv963, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %for.end379.loopexit.unr-lcssa, label %for.body362

for.end379.loopexit.unr-lcssa:                    ; preds = %for.inc377.1, %for.body362.lr.ph
  %listltidx.1.lcssa.ph = phi i32 [ poison, %for.body362.lr.ph ], [ %listltidx.1.1, %for.inc377.1 ]
  %indvars.iv963.unr = phi i64 [ 0, %for.body362.lr.ph ], [ %indvars.iv.next964.1, %for.inc377.1 ]
  %listltidx.0916.unr = phi i32 [ 0, %for.body362.lr.ph ], [ %listltidx.1.1, %for.inc377.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end379, label %for.body362.epil

for.body362.epil:                                 ; preds = %for.end379.loopexit.unr-lcssa
  %arrayidx365.epil = getelementptr inbounds ptr, ptr %.pre1019, i64 %indvars.iv963.unr
  %132 = load ptr, ptr %arrayidx365.epil, align 8
  %view_id366.epil = getelementptr inbounds i8, ptr %132, i64 72
  %133 = load i32, ptr %view_id366.epil, align 8
  %cmp367.epil = icmp eq i32 %133, %3
  br i1 %cmp367.epil, label %if.then369.epil, label %for.end379

if.then369.epil:                                  ; preds = %for.body362.epil
  %inc373.epil = add nsw i32 %listltidx.0916.unr, 1
  %idxprom374.epil = sext i32 %listltidx.0916.unr to i64
  %arrayidx375.epil = getelementptr inbounds ptr, ptr %call231, i64 %idxprom374.epil
  store ptr %132, ptr %arrayidx375.epil, align 8
  br label %for.end379

for.end379:                                       ; preds = %for.end379.loopexit.unr-lcssa, %if.then369.epil, %for.body362.epil, %for.end343
  %listltidx.0.lcssa = phi i32 [ 0, %for.end343 ], [ %listltidx.1.lcssa.ph, %for.end379.loopexit.unr-lcssa ], [ %inc373.epil, %if.then369.epil ], [ %listltidx.0916.unr, %for.body362.epil ]
  %conv380 = sext i32 %listltidx.0.lcssa to i64
  tail call void @qsort(ptr noundef %call231, i64 noundef %conv380, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #10
  %134 = load i32, ptr %structure, align 8
  %135 = load ptr, ptr %listX349, align 8
  tail call void @gen_pic_list_from_frame_list(i32 noundef %134, ptr noundef %call231, i32 noundef %listltidx.0.lcssa, ptr noundef %135, ptr noundef nonnull %listXsize236, i32 noundef 1) #10
  %136 = load i32, ptr %structure, align 8
  %137 = load ptr, ptr %arrayidx355, align 8
  tail call void @gen_pic_list_from_frame_list(i32 noundef %136, ptr noundef %call231, i32 noundef %listltidx.0.lcssa, ptr noundef %137, ptr noundef nonnull %arrayidx239, i32 noundef 1) #10
  tail call void @free(ptr noundef %call) #10
  tail call void @free(ptr noundef %call224) #10
  tail call void @free(ptr noundef %call231) #10
  %.pre1024 = load i8, ptr %listXsize236, align 8
  %.pre1025 = load i8, ptr %arrayidx239, align 1
  br label %if.end391

if.end391:                                        ; preds = %for.end379, %for.end187
  %138 = phi i8 [ %.pre1025, %for.end379 ], [ %conv212.pre-phi, %for.end187 ]
  %139 = phi i8 [ %.pre1024, %for.end379 ], [ %conv212.pre-phi, %for.end187 ]
  %listXsize392 = getelementptr inbounds i8, ptr %currSlice, i64 256
  %arrayidx396 = getelementptr inbounds i8, ptr %currSlice, i64 257
  %cmp398 = icmp eq i8 %139, %138
  %cmp404 = icmp sgt i8 %139, 1
  %or.cond = and i1 %cmp404, %cmp398
  br i1 %or.cond, label %for.cond407.preheader, label %if.end444

for.cond407.preheader:                            ; preds = %if.end391
  %listX414 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %140 = load ptr, ptr %listX414, align 8
  %arrayidx419 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %141 = load ptr, ptr %arrayidx419, align 8
  %wide.trip.count991 = zext i8 %138 to i64
  br label %for.body413

for.cond407:                                      ; preds = %for.body413
  %indvars.iv.next989 = add nuw nsw i64 %indvars.iv988, 1
  %exitcond992.not = icmp eq i64 %indvars.iv.next989, %wide.trip.count991
  br i1 %exitcond992.not, label %if.then430, label %for.body413

for.body413:                                      ; preds = %for.cond407.preheader, %for.cond407
  %indvars.iv988 = phi i64 [ 0, %for.cond407.preheader ], [ %indvars.iv.next989, %for.cond407 ]
  %arrayidx417 = getelementptr inbounds ptr, ptr %140, i64 %indvars.iv988
  %142 = load ptr, ptr %arrayidx417, align 8
  %arrayidx421 = getelementptr inbounds ptr, ptr %141, i64 %indvars.iv988
  %143 = load ptr, ptr %arrayidx421, align 8
  %cmp422.not = icmp eq ptr %142, %143
  br i1 %cmp422.not, label %for.cond407, label %if.end444

if.then430:                                       ; preds = %for.cond407
  %144 = load ptr, ptr %141, align 8
  %arrayidx436 = getelementptr inbounds i8, ptr %141, i64 8
  %145 = load ptr, ptr %arrayidx436, align 8
  store ptr %145, ptr %141, align 8
  %146 = load ptr, ptr %arrayidx419, align 8
  %arrayidx442 = getelementptr inbounds i8, ptr %146, i64 8
  store ptr %144, ptr %arrayidx442, align 8
  br label %if.end444

if.end444:                                        ; preds = %for.body413, %if.then430, %if.end391
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32
  %147 = load i32, ptr %svc_extension_flag, align 8
  %cmp445 = icmp eq i32 %147, 0
  br i1 %cmp445, label %if.then447, label %if.end540

if.then447:                                       ; preds = %if.end444
  %size448 = getelementptr inbounds i8, ptr %1, i64 40
  %148 = load i32, ptr %size448, align 8
  %conv449 = zext i32 %148 to i64
  %call450 = tail call noalias ptr @calloc(i64 noundef %conv449, i64 noundef 8) #11
  %fs_listinterview0 = getelementptr inbounds i8, ptr %currSlice, i64 13320
  store ptr %call450, ptr %fs_listinterview0, align 8
  %cmp452 = icmp eq ptr %call450, null
  br i1 %cmp452, label %if.then454, label %if.end455

if.then454:                                       ; preds = %if.then447
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #10
  br label %if.end455

if.end455:                                        ; preds = %if.then454, %if.then447
  %149 = load i32, ptr %size448, align 8
  %conv457 = zext i32 %149 to i64
  %call458 = tail call noalias ptr @calloc(i64 noundef %conv457, i64 noundef 8) #11
  %fs_listinterview1 = getelementptr inbounds i8, ptr %currSlice, i64 13328
  store ptr %call458, ptr %fs_listinterview1, align 8
  %cmp460 = icmp eq ptr %call458, null
  br i1 %cmp460, label %if.then462, label %if.end463

if.then462:                                       ; preds = %if.end455
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #10
  br label %if.end463

if.end463:                                        ; preds = %if.then462, %if.end455
  %150 = load i32, ptr %structure, align 8
  %cmp468 = icmp eq i32 %150, 0
  br i1 %cmp468, label %if.then470, label %if.else518

if.then470:                                       ; preds = %if.end463
  %151 = load i8, ptr %listXsize392, align 8
  %152 = load ptr, ptr %fs_listinterview0, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, ptr noundef %152, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %153 = load ptr, ptr %fs_listinterview1, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1, ptr noundef %153, ptr noundef nonnull %listinterviewidx1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %154 = load i32, ptr %listinterviewidx0, align 4
  %cmp477936.not = icmp eq i32 %154, 0
  br i1 %cmp477936.not, label %for.end491, label %for.body479.lr.ph

for.body479.lr.ph:                                ; preds = %if.then470
  %listX484 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %155 = sext i8 %151 to i64
  br label %for.body479

for.body479:                                      ; preds = %for.body479.lr.ph, %for.body479
  %indvars.iv995 = phi i64 [ %155, %for.body479.lr.ph ], [ %indvars.iv.next996, %for.body479 ]
  %indvars.iv993 = phi i64 [ 0, %for.body479.lr.ph ], [ %indvars.iv.next994, %for.body479 ]
  %156 = load ptr, ptr %fs_listinterview0, align 8
  %arrayidx482 = getelementptr inbounds ptr, ptr %156, i64 %indvars.iv993
  %157 = load ptr, ptr %arrayidx482, align 8
  %frame483 = getelementptr inbounds i8, ptr %157, i64 48
  %158 = load ptr, ptr %frame483, align 8
  %159 = load ptr, ptr %listX484, align 8
  %indvars.iv.next996 = add nsw i64 %indvars.iv995, 1
  %arrayidx488 = getelementptr inbounds ptr, ptr %159, i64 %indvars.iv995
  store ptr %158, ptr %arrayidx488, align 8
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 1
  %160 = load i32, ptr %listinterviewidx0, align 4
  %161 = zext i32 %160 to i64
  %cmp477 = icmp ult i64 %indvars.iv.next994, %161
  br i1 %cmp477, label %for.body479, label %for.end491.loopexit

for.end491.loopexit:                              ; preds = %for.body479
  %162 = trunc i64 %indvars.iv.next996 to i8
  br label %for.end491

for.end491:                                       ; preds = %for.end491.loopexit, %if.then470
  %list0idx.10.lcssa = phi i8 [ %151, %if.then470 ], [ %162, %for.end491.loopexit ]
  store i8 %list0idx.10.lcssa, ptr %listXsize392, align 8
  %163 = load i8, ptr %arrayidx396, align 1
  %164 = load i32, ptr %listinterviewidx1, align 8
  %cmp500940.not = icmp eq i32 %164, 0
  br i1 %cmp500940.not, label %for.end514, label %for.body502.lr.ph

for.body502.lr.ph:                                ; preds = %for.end491
  %arrayidx508 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %165 = sext i8 %163 to i64
  br label %for.body502

for.body502:                                      ; preds = %for.body502.lr.ph, %for.body502
  %indvars.iv1002 = phi i64 [ %165, %for.body502.lr.ph ], [ %indvars.iv.next1003, %for.body502 ]
  %indvars.iv1000 = phi i64 [ 0, %for.body502.lr.ph ], [ %indvars.iv.next1001, %for.body502 ]
  %166 = load ptr, ptr %fs_listinterview1, align 8
  %arrayidx505 = getelementptr inbounds ptr, ptr %166, i64 %indvars.iv1000
  %167 = load ptr, ptr %arrayidx505, align 8
  %frame506 = getelementptr inbounds i8, ptr %167, i64 48
  %168 = load ptr, ptr %frame506, align 8
  %169 = load ptr, ptr %arrayidx508, align 8
  %indvars.iv.next1003 = add nsw i64 %indvars.iv1002, 1
  %arrayidx511 = getelementptr inbounds ptr, ptr %169, i64 %indvars.iv1002
  store ptr %168, ptr %arrayidx511, align 8
  %indvars.iv.next1001 = add nuw nsw i64 %indvars.iv1000, 1
  %170 = load i32, ptr %listinterviewidx1, align 8
  %171 = zext i32 %170 to i64
  %cmp500 = icmp ult i64 %indvars.iv.next1001, %171
  br i1 %cmp500, label %for.body502, label %for.end514.loopexit

for.end514.loopexit:                              ; preds = %for.body502
  %172 = trunc i64 %indvars.iv.next1003 to i8
  br label %for.end514

for.end514:                                       ; preds = %for.end514.loopexit, %for.end491
  %list0idx.11.lcssa = phi i8 [ %163, %for.end491 ], [ %172, %for.end514.loopexit ]
  store i8 %list0idx.11.lcssa, ptr %arrayidx396, align 1
  br label %if.end540

if.else518:                                       ; preds = %if.end463
  %173 = load ptr, ptr %fs_listinterview0, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef %150, i32 noundef 0, ptr noundef %173, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %174 = load i32, ptr %structure, align 8
  %175 = load ptr, ptr %fs_listinterview0, align 8
  %176 = load i32, ptr %listinterviewidx0, align 4
  %listX525 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %177 = load ptr, ptr %listX525, align 8
  switch i32 %174, label %gen_pic_list_from_frame_interview_list.exit [
    i32 1, label %for.cond.preheader.i
    i32 2, label %if.then7.i
  ]

for.cond.preheader.i:                             ; preds = %if.else518
  %cmp134.i = icmp sgt i32 %176, 0
  br i1 %cmp134.i, label %for.body.preheader.i, label %gen_pic_list_from_frame_interview_list.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %wide.trip.count43.i = zext nneg i32 %176 to i64
  %.pre45.i = load i8, ptr %listXsize392, align 1
  %xtraiter1056 = and i64 %wide.trip.count43.i, 1
  %178 = icmp eq i32 %176, 1
  br i1 %178, label %gen_pic_list_from_frame_interview_list.exit.loopexit.unr-lcssa, label %for.body.preheader.i.new

for.body.preheader.i.new:                         ; preds = %for.body.preheader.i
  %unroll_iter1060 = and i64 %wide.trip.count43.i, 2147483646
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i.new
  %179 = phi i8 [ %.pre45.i, %for.body.preheader.i.new ], [ %inc.i.1, %for.body.i ]
  %indvars.iv40.i = phi i64 [ 0, %for.body.preheader.i.new ], [ %indvars.iv.next41.i.1, %for.body.i ]
  %niter1061 = phi i64 [ 0, %for.body.preheader.i.new ], [ %niter1061.next.1, %for.body.i ]
  %arrayidx.i = getelementptr inbounds ptr, ptr %175, i64 %indvars.iv40.i
  %180 = load ptr, ptr %arrayidx.i, align 8
  %top_field.i = getelementptr inbounds i8, ptr %180, i64 56
  %181 = load ptr, ptr %top_field.i, align 8
  %idxprom2.i = sext i8 %179 to i64
  %arrayidx3.i = getelementptr inbounds ptr, ptr %177, i64 %idxprom2.i
  store ptr %181, ptr %arrayidx3.i, align 8
  %182 = load i8, ptr %listXsize392, align 1
  %inc.i = add i8 %182, 1
  store i8 %inc.i, ptr %listXsize392, align 1
  %indvars.iv.next41.i = or disjoint i64 %indvars.iv40.i, 1
  %arrayidx.i.1 = getelementptr inbounds ptr, ptr %175, i64 %indvars.iv.next41.i
  %183 = load ptr, ptr %arrayidx.i.1, align 8
  %top_field.i.1 = getelementptr inbounds i8, ptr %183, i64 56
  %184 = load ptr, ptr %top_field.i.1, align 8
  %idxprom2.i.1 = sext i8 %inc.i to i64
  %arrayidx3.i.1 = getelementptr inbounds ptr, ptr %177, i64 %idxprom2.i.1
  store ptr %184, ptr %arrayidx3.i.1, align 8
  %185 = load i8, ptr %listXsize392, align 1
  %inc.i.1 = add i8 %185, 1
  store i8 %inc.i.1, ptr %listXsize392, align 1
  %indvars.iv.next41.i.1 = add nuw nsw i64 %indvars.iv40.i, 2
  %niter1061.next.1 = add i64 %niter1061, 2
  %niter1061.ncmp.1 = icmp eq i64 %niter1061.next.1, %unroll_iter1060
  br i1 %niter1061.ncmp.1, label %gen_pic_list_from_frame_interview_list.exit.loopexit.unr-lcssa, label %for.body.i

if.then7.i:                                       ; preds = %if.else518
  %cmp936.i = icmp sgt i32 %176, 0
  br i1 %cmp936.i, label %for.body11.preheader.i, label %gen_pic_list_from_frame_interview_list.exit

for.body11.preheader.i:                           ; preds = %if.then7.i
  %wide.trip.count.i = zext nneg i32 %176 to i64
  %.pre.i = load i8, ptr %listXsize392, align 1
  %xtraiter1051 = and i64 %wide.trip.count.i, 1
  %186 = icmp eq i32 %176, 1
  br i1 %186, label %gen_pic_list_from_frame_interview_list.exit.loopexit1042.unr-lcssa, label %for.body11.preheader.i.new

for.body11.preheader.i.new:                       ; preds = %for.body11.preheader.i
  %unroll_iter1054 = and i64 %wide.trip.count.i, 2147483646
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i, %for.body11.preheader.i.new
  %187 = phi i8 [ %.pre.i, %for.body11.preheader.i.new ], [ %inc17.i.1, %for.body11.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body11.preheader.i.new ], [ %indvars.iv.next.i.1, %for.body11.i ]
  %niter1055 = phi i64 [ 0, %for.body11.preheader.i.new ], [ %niter1055.next.1, %for.body11.i ]
  %arrayidx13.i = getelementptr inbounds ptr, ptr %175, i64 %indvars.iv.i
  %188 = load ptr, ptr %arrayidx13.i, align 8
  %bottom_field.i = getelementptr inbounds i8, ptr %188, i64 64
  %189 = load ptr, ptr %bottom_field.i, align 8
  %idxprom15.i = sext i8 %187 to i64
  %arrayidx16.i = getelementptr inbounds ptr, ptr %177, i64 %idxprom15.i
  store ptr %189, ptr %arrayidx16.i, align 8
  %190 = load i8, ptr %listXsize392, align 1
  %inc17.i = add i8 %190, 1
  store i8 %inc17.i, ptr %listXsize392, align 1
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %arrayidx13.i.1 = getelementptr inbounds ptr, ptr %175, i64 %indvars.iv.next.i
  %191 = load ptr, ptr %arrayidx13.i.1, align 8
  %bottom_field.i.1 = getelementptr inbounds i8, ptr %191, i64 64
  %192 = load ptr, ptr %bottom_field.i.1, align 8
  %idxprom15.i.1 = sext i8 %inc17.i to i64
  %arrayidx16.i.1 = getelementptr inbounds ptr, ptr %177, i64 %idxprom15.i.1
  store ptr %192, ptr %arrayidx16.i.1, align 8
  %193 = load i8, ptr %listXsize392, align 1
  %inc17.i.1 = add i8 %193, 1
  store i8 %inc17.i.1, ptr %listXsize392, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter1055.next.1 = add i64 %niter1055, 2
  %niter1055.ncmp.1 = icmp eq i64 %niter1055.next.1, %unroll_iter1054
  br i1 %niter1055.ncmp.1, label %gen_pic_list_from_frame_interview_list.exit.loopexit1042.unr-lcssa, label %for.body11.i

gen_pic_list_from_frame_interview_list.exit.loopexit.unr-lcssa: ; preds = %for.body.i, %for.body.preheader.i
  %.unr1058 = phi i8 [ %.pre45.i, %for.body.preheader.i ], [ %inc.i.1, %for.body.i ]
  %indvars.iv40.i.unr = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next41.i.1, %for.body.i ]
  %lcmp.mod1059.not = icmp eq i64 %xtraiter1056, 0
  br i1 %lcmp.mod1059.not, label %gen_pic_list_from_frame_interview_list.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %gen_pic_list_from_frame_interview_list.exit.loopexit.unr-lcssa
  %arrayidx.i.epil = getelementptr inbounds ptr, ptr %175, i64 %indvars.iv40.i.unr
  %194 = load ptr, ptr %arrayidx.i.epil, align 8
  %top_field.i.epil = getelementptr inbounds i8, ptr %194, i64 56
  %195 = load ptr, ptr %top_field.i.epil, align 8
  %idxprom2.i.epil = sext i8 %.unr1058 to i64
  %arrayidx3.i.epil = getelementptr inbounds ptr, ptr %177, i64 %idxprom2.i.epil
  store ptr %195, ptr %arrayidx3.i.epil, align 8
  %196 = load i8, ptr %listXsize392, align 1
  %inc.i.epil = add i8 %196, 1
  store i8 %inc.i.epil, ptr %listXsize392, align 1
  br label %gen_pic_list_from_frame_interview_list.exit

gen_pic_list_from_frame_interview_list.exit.loopexit1042.unr-lcssa: ; preds = %for.body11.i, %for.body11.preheader.i
  %.unr = phi i8 [ %.pre.i, %for.body11.preheader.i ], [ %inc17.i.1, %for.body11.i ]
  %indvars.iv.i.unr = phi i64 [ 0, %for.body11.preheader.i ], [ %indvars.iv.next.i.1, %for.body11.i ]
  %lcmp.mod1053.not = icmp eq i64 %xtraiter1051, 0
  br i1 %lcmp.mod1053.not, label %gen_pic_list_from_frame_interview_list.exit, label %for.body11.i.epil

for.body11.i.epil:                                ; preds = %gen_pic_list_from_frame_interview_list.exit.loopexit1042.unr-lcssa
  %arrayidx13.i.epil = getelementptr inbounds ptr, ptr %175, i64 %indvars.iv.i.unr
  %197 = load ptr, ptr %arrayidx13.i.epil, align 8
  %bottom_field.i.epil = getelementptr inbounds i8, ptr %197, i64 64
  %198 = load ptr, ptr %bottom_field.i.epil, align 8
  %idxprom15.i.epil = sext i8 %.unr to i64
  %arrayidx16.i.epil = getelementptr inbounds ptr, ptr %177, i64 %idxprom15.i.epil
  store ptr %198, ptr %arrayidx16.i.epil, align 8
  %199 = load i8, ptr %listXsize392, align 1
  %inc17.i.epil = add i8 %199, 1
  store i8 %inc17.i.epil, ptr %listXsize392, align 1
  br label %gen_pic_list_from_frame_interview_list.exit

gen_pic_list_from_frame_interview_list.exit:      ; preds = %for.body11.i.epil, %gen_pic_list_from_frame_interview_list.exit.loopexit1042.unr-lcssa, %for.body.i.epil, %gen_pic_list_from_frame_interview_list.exit.loopexit.unr-lcssa, %if.else518, %for.cond.preheader.i, %if.then7.i
  %200 = load i32, ptr %structure, align 8
  %201 = load ptr, ptr %fs_listinterview1, align 8
  tail call void @append_interview_list(ptr noundef %1, i32 noundef %200, i32 noundef 1, ptr noundef %201, ptr noundef nonnull %listinterviewidx1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %202 = load i32, ptr %structure, align 8
  %203 = load ptr, ptr %fs_listinterview1, align 8
  %204 = load i32, ptr %listinterviewidx1, align 8
  %arrayidx536 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %205 = load ptr, ptr %arrayidx536, align 8
  switch i32 %202, label %if.end540 [
    i32 1, label %for.cond.preheader.i886
    i32 2, label %if.then7.i872
  ]

for.cond.preheader.i886:                          ; preds = %gen_pic_list_from_frame_interview_list.exit
  %cmp134.i887 = icmp sgt i32 %204, 0
  br i1 %cmp134.i887, label %for.body.preheader.i888, label %if.end540

for.body.preheader.i888:                          ; preds = %for.cond.preheader.i886
  %wide.trip.count43.i889 = zext nneg i32 %204 to i64
  %.pre45.i890 = load i8, ptr %arrayidx396, align 1
  %xtraiter1068 = and i64 %wide.trip.count43.i889, 1
  %206 = icmp eq i32 %204, 1
  br i1 %206, label %if.end540.loopexit.unr-lcssa, label %for.body.preheader.i888.new

for.body.preheader.i888.new:                      ; preds = %for.body.preheader.i888
  %unroll_iter1072 = and i64 %wide.trip.count43.i889, 2147483646
  br label %for.body.i891

for.body.i891:                                    ; preds = %for.body.i891, %for.body.preheader.i888.new
  %207 = phi i8 [ %.pre45.i890, %for.body.preheader.i888.new ], [ %inc.i897.1, %for.body.i891 ]
  %indvars.iv40.i892 = phi i64 [ 0, %for.body.preheader.i888.new ], [ %indvars.iv.next41.i898.1, %for.body.i891 ]
  %niter1073 = phi i64 [ 0, %for.body.preheader.i888.new ], [ %niter1073.next.1, %for.body.i891 ]
  %arrayidx.i893 = getelementptr inbounds ptr, ptr %203, i64 %indvars.iv40.i892
  %208 = load ptr, ptr %arrayidx.i893, align 8
  %top_field.i894 = getelementptr inbounds i8, ptr %208, i64 56
  %209 = load ptr, ptr %top_field.i894, align 8
  %idxprom2.i895 = sext i8 %207 to i64
  %arrayidx3.i896 = getelementptr inbounds ptr, ptr %205, i64 %idxprom2.i895
  store ptr %209, ptr %arrayidx3.i896, align 8
  %210 = load i8, ptr %arrayidx396, align 1
  %inc.i897 = add i8 %210, 1
  store i8 %inc.i897, ptr %arrayidx396, align 1
  %indvars.iv.next41.i898 = or disjoint i64 %indvars.iv40.i892, 1
  %arrayidx.i893.1 = getelementptr inbounds ptr, ptr %203, i64 %indvars.iv.next41.i898
  %211 = load ptr, ptr %arrayidx.i893.1, align 8
  %top_field.i894.1 = getelementptr inbounds i8, ptr %211, i64 56
  %212 = load ptr, ptr %top_field.i894.1, align 8
  %idxprom2.i895.1 = sext i8 %inc.i897 to i64
  %arrayidx3.i896.1 = getelementptr inbounds ptr, ptr %205, i64 %idxprom2.i895.1
  store ptr %212, ptr %arrayidx3.i896.1, align 8
  %213 = load i8, ptr %arrayidx396, align 1
  %inc.i897.1 = add i8 %213, 1
  store i8 %inc.i897.1, ptr %arrayidx396, align 1
  %indvars.iv.next41.i898.1 = add nuw nsw i64 %indvars.iv40.i892, 2
  %niter1073.next.1 = add i64 %niter1073, 2
  %niter1073.ncmp.1 = icmp eq i64 %niter1073.next.1, %unroll_iter1072
  br i1 %niter1073.ncmp.1, label %if.end540.loopexit.unr-lcssa, label %for.body.i891

if.then7.i872:                                    ; preds = %gen_pic_list_from_frame_interview_list.exit
  %cmp936.i873 = icmp sgt i32 %204, 0
  br i1 %cmp936.i873, label %for.body11.preheader.i874, label %if.end540

for.body11.preheader.i874:                        ; preds = %if.then7.i872
  %wide.trip.count.i875 = zext nneg i32 %204 to i64
  %.pre.i876 = load i8, ptr %arrayidx396, align 1
  %xtraiter1062 = and i64 %wide.trip.count.i875, 1
  %214 = icmp eq i32 %204, 1
  br i1 %214, label %if.end540.loopexit1041.unr-lcssa, label %for.body11.preheader.i874.new

for.body11.preheader.i874.new:                    ; preds = %for.body11.preheader.i874
  %unroll_iter1066 = and i64 %wide.trip.count.i875, 2147483646
  br label %for.body11.i877

for.body11.i877:                                  ; preds = %for.body11.i877, %for.body11.preheader.i874.new
  %215 = phi i8 [ %.pre.i876, %for.body11.preheader.i874.new ], [ %inc17.i883.1, %for.body11.i877 ]
  %indvars.iv.i878 = phi i64 [ 0, %for.body11.preheader.i874.new ], [ %indvars.iv.next.i884.1, %for.body11.i877 ]
  %niter1067 = phi i64 [ 0, %for.body11.preheader.i874.new ], [ %niter1067.next.1, %for.body11.i877 ]
  %arrayidx13.i879 = getelementptr inbounds ptr, ptr %203, i64 %indvars.iv.i878
  %216 = load ptr, ptr %arrayidx13.i879, align 8
  %bottom_field.i880 = getelementptr inbounds i8, ptr %216, i64 64
  %217 = load ptr, ptr %bottom_field.i880, align 8
  %idxprom15.i881 = sext i8 %215 to i64
  %arrayidx16.i882 = getelementptr inbounds ptr, ptr %205, i64 %idxprom15.i881
  store ptr %217, ptr %arrayidx16.i882, align 8
  %218 = load i8, ptr %arrayidx396, align 1
  %inc17.i883 = add i8 %218, 1
  store i8 %inc17.i883, ptr %arrayidx396, align 1
  %indvars.iv.next.i884 = or disjoint i64 %indvars.iv.i878, 1
  %arrayidx13.i879.1 = getelementptr inbounds ptr, ptr %203, i64 %indvars.iv.next.i884
  %219 = load ptr, ptr %arrayidx13.i879.1, align 8
  %bottom_field.i880.1 = getelementptr inbounds i8, ptr %219, i64 64
  %220 = load ptr, ptr %bottom_field.i880.1, align 8
  %idxprom15.i881.1 = sext i8 %inc17.i883 to i64
  %arrayidx16.i882.1 = getelementptr inbounds ptr, ptr %205, i64 %idxprom15.i881.1
  store ptr %220, ptr %arrayidx16.i882.1, align 8
  %221 = load i8, ptr %arrayidx396, align 1
  %inc17.i883.1 = add i8 %221, 1
  store i8 %inc17.i883.1, ptr %arrayidx396, align 1
  %indvars.iv.next.i884.1 = add nuw nsw i64 %indvars.iv.i878, 2
  %niter1067.next.1 = add i64 %niter1067, 2
  %niter1067.ncmp.1 = icmp eq i64 %niter1067.next.1, %unroll_iter1066
  br i1 %niter1067.ncmp.1, label %if.end540.loopexit1041.unr-lcssa, label %for.body11.i877

if.end540.loopexit.unr-lcssa:                     ; preds = %for.body.i891, %for.body.preheader.i888
  %.unr1070 = phi i8 [ %.pre45.i890, %for.body.preheader.i888 ], [ %inc.i897.1, %for.body.i891 ]
  %indvars.iv40.i892.unr = phi i64 [ 0, %for.body.preheader.i888 ], [ %indvars.iv.next41.i898.1, %for.body.i891 ]
  %lcmp.mod1071.not = icmp eq i64 %xtraiter1068, 0
  br i1 %lcmp.mod1071.not, label %if.end540, label %for.body.i891.epil

for.body.i891.epil:                               ; preds = %if.end540.loopexit.unr-lcssa
  %arrayidx.i893.epil = getelementptr inbounds ptr, ptr %203, i64 %indvars.iv40.i892.unr
  %222 = load ptr, ptr %arrayidx.i893.epil, align 8
  %top_field.i894.epil = getelementptr inbounds i8, ptr %222, i64 56
  %223 = load ptr, ptr %top_field.i894.epil, align 8
  %idxprom2.i895.epil = sext i8 %.unr1070 to i64
  %arrayidx3.i896.epil = getelementptr inbounds ptr, ptr %205, i64 %idxprom2.i895.epil
  store ptr %223, ptr %arrayidx3.i896.epil, align 8
  %224 = load i8, ptr %arrayidx396, align 1
  %inc.i897.epil = add i8 %224, 1
  store i8 %inc.i897.epil, ptr %arrayidx396, align 1
  br label %if.end540

if.end540.loopexit1041.unr-lcssa:                 ; preds = %for.body11.i877, %for.body11.preheader.i874
  %.unr1064 = phi i8 [ %.pre.i876, %for.body11.preheader.i874 ], [ %inc17.i883.1, %for.body11.i877 ]
  %indvars.iv.i878.unr = phi i64 [ 0, %for.body11.preheader.i874 ], [ %indvars.iv.next.i884.1, %for.body11.i877 ]
  %lcmp.mod1065.not = icmp eq i64 %xtraiter1062, 0
  br i1 %lcmp.mod1065.not, label %if.end540, label %for.body11.i877.epil

for.body11.i877.epil:                             ; preds = %if.end540.loopexit1041.unr-lcssa
  %arrayidx13.i879.epil = getelementptr inbounds ptr, ptr %203, i64 %indvars.iv.i878.unr
  %225 = load ptr, ptr %arrayidx13.i879.epil, align 8
  %bottom_field.i880.epil = getelementptr inbounds i8, ptr %225, i64 64
  %226 = load ptr, ptr %bottom_field.i880.epil, align 8
  %idxprom15.i881.epil = sext i8 %.unr1064 to i64
  %arrayidx16.i882.epil = getelementptr inbounds ptr, ptr %205, i64 %idxprom15.i881.epil
  store ptr %226, ptr %arrayidx16.i882.epil, align 8
  %227 = load i8, ptr %arrayidx396, align 1
  %inc17.i883.epil = add i8 %227, 1
  store i8 %inc17.i883.epil, ptr %arrayidx396, align 1
  br label %if.end540

if.end540:                                        ; preds = %for.body11.i877.epil, %if.end540.loopexit1041.unr-lcssa, %for.body.i891.epil, %if.end540.loopexit.unr-lcssa, %if.then7.i872, %for.cond.preheader.i886, %gen_pic_list_from_frame_interview_list.exit, %for.end514, %if.end444
  %228 = load i8, ptr %listXsize392, align 8
  %conv543 = sext i8 %228 to i32
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  %229 = load i32, ptr %num_ref_idx_active, align 8
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %conv543, i32 %229)
  %conv546 = trunc i32 %cond.i to i8
  store i8 %conv546, ptr %listXsize392, align 8
  %230 = load i8, ptr %arrayidx396, align 1
  %conv551 = sext i8 %230 to i32
  %arrayidx553 = getelementptr inbounds i8, ptr %currSlice, i64 140
  %231 = load i32, ptr %arrayidx553, align 4
  %cond.i901 = tail call noundef i32 @llvm.smin.i32(i32 %conv551, i32 %231)
  %conv555 = trunc i32 %cond.i901 to i8
  store i8 %conv555, ptr %arrayidx396, align 1
  %sext = shl i32 %cond.i, 24
  %conv560 = ashr exact i32 %sext, 24
  %cmp562944 = icmp ult i32 %conv560, 33
  br i1 %cmp562944, label %for.body564.lr.ph, label %for.end571

for.body564.lr.ph:                                ; preds = %if.end540
  %no_reference_picture = getelementptr inbounds i8, ptr %0, i64 856488
  %listX565 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %232 = zext nneg i32 %conv560 to i64
  %.pre1026 = load ptr, ptr %no_reference_picture, align 8
  br label %for.body564

for.body564:                                      ; preds = %for.body564.lr.ph, %for.body564
  %indvars.iv1007 = phi i64 [ %232, %for.body564.lr.ph ], [ %indvars.iv.next1008, %for.body564 ]
  %233 = load ptr, ptr %listX565, align 8
  %arrayidx568 = getelementptr inbounds ptr, ptr %233, i64 %indvars.iv1007
  store ptr %.pre1026, ptr %arrayidx568, align 8
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 1
  %234 = and i64 %indvars.iv.next1008, 4294967295
  %exitcond1010.not = icmp eq i64 %234, 33
  br i1 %exitcond1010.not, label %for.end571.loopexit, label %for.body564

for.end571.loopexit:                              ; preds = %for.body564
  %.pre1027 = load i8, ptr %arrayidx396, align 1
  br label %for.end571

for.end571:                                       ; preds = %for.end571.loopexit, %if.end540
  %235 = phi i8 [ %.pre1027, %for.end571.loopexit ], [ %conv555, %if.end540 ]
  %cmp576946 = icmp ult i8 %235, 33
  br i1 %cmp576946, label %for.body578.lr.ph, label %for.end586

for.body578.lr.ph:                                ; preds = %for.end571
  %no_reference_picture579 = getelementptr inbounds i8, ptr %0, i64 856488
  %arrayidx581 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %236 = zext nneg i8 %235 to i64
  %.pre1028 = load ptr, ptr %no_reference_picture579, align 8
  br label %for.body578

for.body578:                                      ; preds = %for.body578.lr.ph, %for.body578
  %indvars.iv1011 = phi i64 [ %236, %for.body578.lr.ph ], [ %indvars.iv.next1012, %for.body578 ]
  %237 = load ptr, ptr %arrayidx581, align 8
  %arrayidx583 = getelementptr inbounds ptr, ptr %237, i64 %indvars.iv1011
  store ptr %.pre1028, ptr %arrayidx583, align 8
  %indvars.iv.next1012 = add nuw nsw i64 %indvars.iv1011, 1
  %238 = and i64 %indvars.iv.next1012, 4294967295
  %exitcond1015.not = icmp eq i64 %238, 33
  br i1 %exitcond1015.not, label %for.end586, label %for.body578

for.end586:                                       ; preds = %for.body578, %for.end571
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_poc_desc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #4 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %poc = getelementptr inbounds i8, ptr %0, i64 4
  %1 = load i32, ptr %poc, align 4
  %2 = load ptr, ptr %arg2, align 8
  %poc3 = getelementptr inbounds i8, ptr %2, i64 4
  %3 = load i32, ptr %poc3, align 4
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_poc_asc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #4 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %poc = getelementptr inbounds i8, ptr %0, i64 4
  %1 = load i32, ptr %poc, align 4
  %2 = load ptr, ptr %arg2, align 8
  %poc3 = getelementptr inbounds i8, ptr %2, i64 4
  %3 = load i32, ptr %poc3, align 4
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_fs_by_poc_desc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #4 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %poc = getelementptr inbounds i8, ptr %0, i64 40
  %1 = load i32, ptr %poc, align 8
  %2 = load ptr, ptr %arg2, align 8
  %poc3 = getelementptr inbounds i8, ptr %2, i64 40
  %3 = load i32, ptr %poc3, align 8
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_fs_by_poc_asc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #4 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %poc = getelementptr inbounds i8, ptr %0, i64 40
  %1 = load i32, ptr %poc, align 8
  %2 = load ptr, ptr %arg2, align 8
  %poc3 = getelementptr inbounds i8, ptr %2, i64 40
  %3 = load i32, ptr %poc3, align 8
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @init_lists_mvc(ptr noundef %currSlice) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %p_Dpb2 = getelementptr inbounds i8, ptr %currSlice, i64 40
  %1 = load ptr, ptr %p_Dpb2, align 8
  %ThisPOC = getelementptr inbounds i8, ptr %currSlice, i64 104
  %2 = load i32, ptr %ThisPOC, align 8
  %view_id = getelementptr inbounds i8, ptr %currSlice, i64 1176
  %3 = load i32, ptr %view_id, align 8
  %anchor_pic_flag3 = getelementptr inbounds i8, ptr %currSlice, i64 1184
  %4 = load i32, ptr %anchor_pic_flag3, align 8
  %listinterviewidx0 = getelementptr inbounds i8, ptr %currSlice, i64 13308
  store i32 0, ptr %listinterviewidx0, align 4
  %listinterviewidx1 = getelementptr inbounds i8, ptr %currSlice, i64 13312
  store i32 0, ptr %listinterviewidx1, align 8
  %slice_type = getelementptr inbounds i8, ptr %currSlice, i64 164
  %5 = load i32, ptr %slice_type, align 4
  switch i32 %5, label %if.else183 [
    i32 2, label %if.then
    i32 4, label %if.then
    i32 0, label %if.then13
    i32 3, label %if.then13
  ]

if.then:                                          ; preds = %entry, %entry
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 0, ptr %listXsize, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 0, ptr %arrayidx7, align 1
  br label %cleanup

if.then13:                                        ; preds = %entry, %entry
  %structure = getelementptr inbounds i8, ptr %currSlice, i64 184
  %6 = load i32, ptr %structure, align 8
  %cmp14 = icmp eq i32 %6, 0
  br i1 %cmp14, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.then13
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 48
  %7 = load i32, ptr %ref_frames_in_buffer, align 8
  %cmp161356.not = icmp eq i32 %7, 0
  br i1 %cmp161356.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fs_ref = getelementptr inbounds i8, ptr %1, i64 24
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %8 = phi i32 [ %7, %for.body.lr.ph ], [ %17, %for.inc ]
  %indvars.iv1422 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1423, %for.inc ]
  %list0idx.01357 = phi i32 [ 0, %for.body.lr.ph ], [ %list0idx.1, %for.inc ]
  %9 = load ptr, ptr %fs_ref, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv1422
  %10 = load ptr, ptr %arrayidx17, align 8
  %11 = load i32, ptr %10, align 8
  %cmp18 = icmp eq i32 %11, 3
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body
  %frame = getelementptr inbounds i8, ptr %10, i64 48
  %12 = load ptr, ptr %frame, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %12, i64 44
  %13 = load i32, ptr %used_for_reference, align 4
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then19
  %is_long_term = getelementptr inbounds i8, ptr %12, i64 40
  %14 = load i8, ptr %is_long_term, align 8
  %tobool27.not = icmp eq i8 %14, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %for.inc

land.lhs.true28:                                  ; preds = %land.lhs.true
  %view_id33 = getelementptr inbounds i8, ptr %12, i64 344
  %15 = load i32, ptr %view_id33, align 8
  %cmp34 = icmp eq i32 %15, %3
  br i1 %cmp34, label %if.then35, label %for.inc

if.then35:                                        ; preds = %land.lhs.true28
  %16 = load ptr, ptr %listX, align 8
  %inc = add nsw i32 %list0idx.01357, 1
  %idxprom41 = sext i32 %list0idx.01357 to i64
  %arrayidx42 = getelementptr inbounds ptr, ptr %16, i64 %idxprom41
  store ptr %12, ptr %arrayidx42, align 8
  %.pre1505 = load i32, ptr %ref_frames_in_buffer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then35, %land.lhs.true28, %land.lhs.true, %if.then19
  %17 = phi i32 [ %8, %land.lhs.true ], [ %.pre1505, %if.then35 ], [ %8, %land.lhs.true28 ], [ %8, %if.then19 ], [ %8, %for.body ]
  %list0idx.1 = phi i32 [ %list0idx.01357, %land.lhs.true ], [ %inc, %if.then35 ], [ %list0idx.01357, %land.lhs.true28 ], [ %list0idx.01357, %if.then19 ], [ %list0idx.01357, %for.body ]
  %indvars.iv.next1423 = add nuw nsw i64 %indvars.iv1422, 1
  %18 = zext i32 %17 to i64
  %cmp16 = icmp ult i64 %indvars.iv.next1423, %18
  br i1 %cmp16, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %list0idx.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %list0idx.1, %for.inc ]
  %listX46 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %19 = load ptr, ptr %listX46, align 8
  %conv = sext i32 %list0idx.0.lcssa to i64
  tail call void @qsort(ptr noundef %19, i64 noundef %conv, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #10
  %conv48 = trunc i32 %list0idx.0.lcssa to i8
  %listXsize49 = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 %conv48, ptr %listXsize49, align 8
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 52
  %20 = load i32, ptr %ltref_frames_in_buffer, align 4
  %cmp521360.not = icmp eq i32 %20, 0
  br i1 %cmp521360.not, label %for.end90, label %for.body54.lr.ph

for.body54.lr.ph:                                 ; preds = %for.end
  %fs_ltref = getelementptr inbounds i8, ptr %1, i64 32
  br label %for.body54

for.body54:                                       ; preds = %for.body54.lr.ph, %for.inc88
  %21 = phi i32 [ %20, %for.body54.lr.ph ], [ %29, %for.inc88 ]
  %indvars.iv1425 = phi i64 [ 0, %for.body54.lr.ph ], [ %indvars.iv.next1426, %for.inc88 ]
  %list0idx.21361 = phi i32 [ %list0idx.0.lcssa, %for.body54.lr.ph ], [ %list0idx.3, %for.inc88 ]
  %22 = load ptr, ptr %fs_ltref, align 8
  %arrayidx56 = getelementptr inbounds ptr, ptr %22, i64 %indvars.iv1425
  %23 = load ptr, ptr %arrayidx56, align 8
  %24 = load i32, ptr %23, align 8
  %cmp58 = icmp eq i32 %24, 3
  br i1 %cmp58, label %if.then60, label %for.inc88

if.then60:                                        ; preds = %for.body54
  %frame64 = getelementptr inbounds i8, ptr %23, i64 48
  %25 = load ptr, ptr %frame64, align 8
  %is_long_term65 = getelementptr inbounds i8, ptr %25, i64 40
  %26 = load i8, ptr %is_long_term65, align 8
  %tobool67.not = icmp eq i8 %26, 0
  br i1 %tobool67.not, label %for.inc88, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.then60
  %view_id73 = getelementptr inbounds i8, ptr %25, i64 344
  %27 = load i32, ptr %view_id73, align 8
  %cmp74 = icmp eq i32 %27, %3
  br i1 %cmp74, label %if.then76, label %for.inc88

if.then76:                                        ; preds = %land.lhs.true68
  %28 = load ptr, ptr %listX46, align 8
  %inc83 = add nsw i32 %list0idx.21361, 1
  %idxprom84 = sext i32 %list0idx.21361 to i64
  %arrayidx85 = getelementptr inbounds ptr, ptr %28, i64 %idxprom84
  store ptr %25, ptr %arrayidx85, align 8
  %.pre1506 = load i32, ptr %ltref_frames_in_buffer, align 4
  br label %for.inc88

for.inc88:                                        ; preds = %for.body54, %if.then76, %land.lhs.true68, %if.then60
  %29 = phi i32 [ %.pre1506, %if.then76 ], [ %21, %land.lhs.true68 ], [ %21, %if.then60 ], [ %21, %for.body54 ]
  %list0idx.3 = phi i32 [ %inc83, %if.then76 ], [ %list0idx.21361, %land.lhs.true68 ], [ %list0idx.21361, %if.then60 ], [ %list0idx.21361, %for.body54 ]
  %indvars.iv.next1426 = add nuw nsw i64 %indvars.iv1425, 1
  %30 = zext i32 %29 to i64
  %cmp52 = icmp ult i64 %indvars.iv.next1426, %30
  br i1 %cmp52, label %for.body54, label %for.end90.loopexit

for.end90.loopexit:                               ; preds = %for.inc88
  %.pre1507 = load i8, ptr %listXsize49, align 8
  %.pre1524 = trunc i32 %list0idx.3 to i8
  br label %for.end90

for.end90:                                        ; preds = %for.end90.loopexit, %for.end
  %conv102.pre-phi = phi i8 [ %.pre1524, %for.end90.loopexit ], [ %conv48, %for.end ]
  %31 = phi i8 [ %.pre1507, %for.end90.loopexit ], [ %conv48, %for.end ]
  %list0idx.2.lcssa = phi i32 [ %list0idx.3, %for.end90.loopexit ], [ %list0idx.0.lcssa, %for.end ]
  %32 = load ptr, ptr %listX46, align 8
  %idxprom96 = sext i8 %31 to i64
  %arrayidx97 = getelementptr inbounds ptr, ptr %32, i64 %idxprom96
  %conv100 = sext i8 %31 to i32
  %sub = sub nsw i32 %list0idx.2.lcssa, %conv100
  %conv101 = sext i32 %sub to i64
  tail call void @qsort(ptr noundef %arrayidx97, i64 noundef %conv101, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #10
  store i8 %conv102.pre-phi, ptr %listXsize49, align 8
  br label %if.end180

if.else:                                          ; preds = %if.then13
  %size = getelementptr inbounds i8, ptr %1, i64 40
  %33 = load i32, ptr %size, align 8
  %conv105 = zext i32 %33 to i64
  %call = tail call noalias ptr @calloc(i64 noundef %conv105, i64 noundef 8) #11
  %cmp106 = icmp eq ptr %call, null
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.else
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
  %.pre = load i32, ptr %size, align 8
  %.pre1525 = zext i32 %.pre to i64
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.else
  %conv111.pre-phi = phi i64 [ %.pre1525, %if.then108 ], [ %conv105, %if.else ]
  %call112 = tail call noalias ptr @calloc(i64 noundef %conv111.pre-phi, i64 noundef 8) #11
  %cmp113 = icmp eq ptr %call112, null
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end109
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #10
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end109
  %ref_frames_in_buffer118 = getelementptr inbounds i8, ptr %1, i64 48
  %34 = load i32, ptr %ref_frames_in_buffer118, align 8
  %cmp1191349.not = icmp eq i32 %34, 0
  br i1 %cmp1191349.not, label %for.end143, label %for.body121.lr.ph

for.body121.lr.ph:                                ; preds = %if.end116
  %fs_ref122 = getelementptr inbounds i8, ptr %1, i64 24
  %.pre1503 = load ptr, ptr %fs_ref122, align 8
  %35 = zext i32 %34 to i64
  %xtraiter = and i64 %35, 1
  %36 = icmp eq i32 %34, 1
  br i1 %36, label %for.end143.loopexit.unr-lcssa, label %for.body121.lr.ph.new

for.body121.lr.ph.new:                            ; preds = %for.body121.lr.ph
  %unroll_iter = and i64 %35, 4294967294
  br label %for.body121

for.body121:                                      ; preds = %for.inc141.1, %for.body121.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body121.lr.ph.new ], [ %indvars.iv.next.1, %for.inc141.1 ]
  %list0idx.41350 = phi i32 [ 0, %for.body121.lr.ph.new ], [ %list0idx.5.1, %for.inc141.1 ]
  %niter = phi i64 [ 0, %for.body121.lr.ph.new ], [ %niter.next.1, %for.inc141.1 ]
  %arrayidx124 = getelementptr inbounds ptr, ptr %.pre1503, i64 %indvars.iv
  %37 = load ptr, ptr %arrayidx124, align 8
  %is_reference = getelementptr inbounds i8, ptr %37, i64 4
  %38 = load i32, ptr %is_reference, align 4
  %tobool125.not = icmp eq i32 %38, 0
  br i1 %tobool125.not, label %for.inc141, label %land.lhs.true126

land.lhs.true126:                                 ; preds = %for.body121
  %view_id130 = getelementptr inbounds i8, ptr %37, i64 72
  %39 = load i32, ptr %view_id130, align 8
  %cmp131 = icmp eq i32 %39, %3
  br i1 %cmp131, label %if.then133, label %for.inc141

if.then133:                                       ; preds = %land.lhs.true126
  %inc137 = add nsw i32 %list0idx.41350, 1
  %idxprom138 = sext i32 %list0idx.41350 to i64
  %arrayidx139 = getelementptr inbounds ptr, ptr %call, i64 %idxprom138
  store ptr %37, ptr %arrayidx139, align 8
  br label %for.inc141

for.inc141:                                       ; preds = %for.body121, %land.lhs.true126, %if.then133
  %list0idx.5 = phi i32 [ %inc137, %if.then133 ], [ %list0idx.41350, %land.lhs.true126 ], [ %list0idx.41350, %for.body121 ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %arrayidx124.1 = getelementptr inbounds ptr, ptr %.pre1503, i64 %indvars.iv.next
  %40 = load ptr, ptr %arrayidx124.1, align 8
  %is_reference.1 = getelementptr inbounds i8, ptr %40, i64 4
  %41 = load i32, ptr %is_reference.1, align 4
  %tobool125.not.1 = icmp eq i32 %41, 0
  br i1 %tobool125.not.1, label %for.inc141.1, label %land.lhs.true126.1

land.lhs.true126.1:                               ; preds = %for.inc141
  %view_id130.1 = getelementptr inbounds i8, ptr %40, i64 72
  %42 = load i32, ptr %view_id130.1, align 8
  %cmp131.1 = icmp eq i32 %42, %3
  br i1 %cmp131.1, label %if.then133.1, label %for.inc141.1

if.then133.1:                                     ; preds = %land.lhs.true126.1
  %inc137.1 = add nsw i32 %list0idx.5, 1
  %idxprom138.1 = sext i32 %list0idx.5 to i64
  %arrayidx139.1 = getelementptr inbounds ptr, ptr %call, i64 %idxprom138.1
  store ptr %40, ptr %arrayidx139.1, align 8
  br label %for.inc141.1

for.inc141.1:                                     ; preds = %if.then133.1, %land.lhs.true126.1, %for.inc141
  %list0idx.5.1 = phi i32 [ %inc137.1, %if.then133.1 ], [ %list0idx.5, %land.lhs.true126.1 ], [ %list0idx.5, %for.inc141 ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %for.end143.loopexit.unr-lcssa, label %for.body121

for.end143.loopexit.unr-lcssa:                    ; preds = %for.inc141.1, %for.body121.lr.ph
  %list0idx.5.lcssa.ph = phi i32 [ poison, %for.body121.lr.ph ], [ %list0idx.5.1, %for.inc141.1 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body121.lr.ph ], [ %indvars.iv.next.1, %for.inc141.1 ]
  %list0idx.41350.unr = phi i32 [ 0, %for.body121.lr.ph ], [ %list0idx.5.1, %for.inc141.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end143, label %for.body121.epil

for.body121.epil:                                 ; preds = %for.end143.loopexit.unr-lcssa
  %arrayidx124.epil = getelementptr inbounds ptr, ptr %.pre1503, i64 %indvars.iv.unr
  %43 = load ptr, ptr %arrayidx124.epil, align 8
  %is_reference.epil = getelementptr inbounds i8, ptr %43, i64 4
  %44 = load i32, ptr %is_reference.epil, align 4
  %tobool125.not.epil = icmp eq i32 %44, 0
  br i1 %tobool125.not.epil, label %for.end143, label %land.lhs.true126.epil

land.lhs.true126.epil:                            ; preds = %for.body121.epil
  %view_id130.epil = getelementptr inbounds i8, ptr %43, i64 72
  %45 = load i32, ptr %view_id130.epil, align 8
  %cmp131.epil = icmp eq i32 %45, %3
  br i1 %cmp131.epil, label %if.then133.epil, label %for.end143

if.then133.epil:                                  ; preds = %land.lhs.true126.epil
  %inc137.epil = add nsw i32 %list0idx.41350.unr, 1
  %idxprom138.epil = sext i32 %list0idx.41350.unr to i64
  %arrayidx139.epil = getelementptr inbounds ptr, ptr %call, i64 %idxprom138.epil
  store ptr %43, ptr %arrayidx139.epil, align 8
  br label %for.end143

for.end143:                                       ; preds = %for.end143.loopexit.unr-lcssa, %if.then133.epil, %land.lhs.true126.epil, %for.body121.epil, %if.end116
  %list0idx.4.lcssa = phi i32 [ 0, %if.end116 ], [ %list0idx.5.lcssa.ph, %for.end143.loopexit.unr-lcssa ], [ %inc137.epil, %if.then133.epil ], [ %list0idx.41350.unr, %land.lhs.true126.epil ], [ %list0idx.41350.unr, %for.body121.epil ]
  %conv144 = sext i32 %list0idx.4.lcssa to i64
  tail call void @qsort(ptr noundef %call, i64 noundef %conv144, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #10
  %listXsize145 = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 0, ptr %listXsize145, align 8
  %46 = load i32, ptr %structure, align 8
  %listX148 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %47 = load ptr, ptr %listX148, align 8
  tail call void @gen_pic_list_from_frame_list(i32 noundef %46, ptr noundef %call, i32 noundef %list0idx.4.lcssa, ptr noundef %47, ptr noundef nonnull %listXsize145, i32 noundef 0) #10
  %ltref_frames_in_buffer153 = getelementptr inbounds i8, ptr %1, i64 52
  %48 = load i32, ptr %ltref_frames_in_buffer153, align 4
  %cmp1541352.not = icmp eq i32 %48, 0
  br i1 %cmp1541352.not, label %for.end173, label %for.body156.lr.ph

for.body156.lr.ph:                                ; preds = %for.end143
  %fs_ltref157 = getelementptr inbounds i8, ptr %1, i64 32
  %.pre1504 = load ptr, ptr %fs_ltref157, align 8
  %49 = zext i32 %48 to i64
  %xtraiter1574 = and i64 %49, 1
  %50 = icmp eq i32 %48, 1
  br i1 %50, label %for.end173.loopexit.unr-lcssa, label %for.body156.lr.ph.new

for.body156.lr.ph.new:                            ; preds = %for.body156.lr.ph
  %unroll_iter1577 = and i64 %49, 4294967294
  br label %for.body156

for.body156:                                      ; preds = %for.inc171.1, %for.body156.lr.ph.new
  %indvars.iv1419 = phi i64 [ 0, %for.body156.lr.ph.new ], [ %indvars.iv.next1420.1, %for.inc171.1 ]
  %listltidx.01353 = phi i32 [ 0, %for.body156.lr.ph.new ], [ %listltidx.1.1, %for.inc171.1 ]
  %niter1578 = phi i64 [ 0, %for.body156.lr.ph.new ], [ %niter1578.next.1, %for.inc171.1 ]
  %arrayidx159 = getelementptr inbounds ptr, ptr %.pre1504, i64 %indvars.iv1419
  %51 = load ptr, ptr %arrayidx159, align 8
  %view_id160 = getelementptr inbounds i8, ptr %51, i64 72
  %52 = load i32, ptr %view_id160, align 8
  %cmp161 = icmp eq i32 %52, %3
  br i1 %cmp161, label %if.then163, label %for.inc171

if.then163:                                       ; preds = %for.body156
  %inc167 = add nsw i32 %listltidx.01353, 1
  %idxprom168 = sext i32 %listltidx.01353 to i64
  %arrayidx169 = getelementptr inbounds ptr, ptr %call112, i64 %idxprom168
  store ptr %51, ptr %arrayidx169, align 8
  br label %for.inc171

for.inc171:                                       ; preds = %for.body156, %if.then163
  %listltidx.1 = phi i32 [ %inc167, %if.then163 ], [ %listltidx.01353, %for.body156 ]
  %indvars.iv.next1420 = or disjoint i64 %indvars.iv1419, 1
  %arrayidx159.1 = getelementptr inbounds ptr, ptr %.pre1504, i64 %indvars.iv.next1420
  %53 = load ptr, ptr %arrayidx159.1, align 8
  %view_id160.1 = getelementptr inbounds i8, ptr %53, i64 72
  %54 = load i32, ptr %view_id160.1, align 8
  %cmp161.1 = icmp eq i32 %54, %3
  br i1 %cmp161.1, label %if.then163.1, label %for.inc171.1

if.then163.1:                                     ; preds = %for.inc171
  %inc167.1 = add nsw i32 %listltidx.1, 1
  %idxprom168.1 = sext i32 %listltidx.1 to i64
  %arrayidx169.1 = getelementptr inbounds ptr, ptr %call112, i64 %idxprom168.1
  store ptr %53, ptr %arrayidx169.1, align 8
  br label %for.inc171.1

for.inc171.1:                                     ; preds = %if.then163.1, %for.inc171
  %listltidx.1.1 = phi i32 [ %inc167.1, %if.then163.1 ], [ %listltidx.1, %for.inc171 ]
  %indvars.iv.next1420.1 = add nuw nsw i64 %indvars.iv1419, 2
  %niter1578.next.1 = add i64 %niter1578, 2
  %niter1578.ncmp.1.not = icmp eq i64 %niter1578.next.1, %unroll_iter1577
  br i1 %niter1578.ncmp.1.not, label %for.end173.loopexit.unr-lcssa, label %for.body156

for.end173.loopexit.unr-lcssa:                    ; preds = %for.inc171.1, %for.body156.lr.ph
  %listltidx.1.lcssa.ph = phi i32 [ poison, %for.body156.lr.ph ], [ %listltidx.1.1, %for.inc171.1 ]
  %indvars.iv1419.unr = phi i64 [ 0, %for.body156.lr.ph ], [ %indvars.iv.next1420.1, %for.inc171.1 ]
  %listltidx.01353.unr = phi i32 [ 0, %for.body156.lr.ph ], [ %listltidx.1.1, %for.inc171.1 ]
  %lcmp.mod1575.not = icmp eq i64 %xtraiter1574, 0
  br i1 %lcmp.mod1575.not, label %for.end173, label %for.body156.epil

for.body156.epil:                                 ; preds = %for.end173.loopexit.unr-lcssa
  %arrayidx159.epil = getelementptr inbounds ptr, ptr %.pre1504, i64 %indvars.iv1419.unr
  %55 = load ptr, ptr %arrayidx159.epil, align 8
  %view_id160.epil = getelementptr inbounds i8, ptr %55, i64 72
  %56 = load i32, ptr %view_id160.epil, align 8
  %cmp161.epil = icmp eq i32 %56, %3
  br i1 %cmp161.epil, label %if.then163.epil, label %for.end173

if.then163.epil:                                  ; preds = %for.body156.epil
  %inc167.epil = add nsw i32 %listltidx.01353.unr, 1
  %idxprom168.epil = sext i32 %listltidx.01353.unr to i64
  %arrayidx169.epil = getelementptr inbounds ptr, ptr %call112, i64 %idxprom168.epil
  store ptr %55, ptr %arrayidx169.epil, align 8
  br label %for.end173

for.end173:                                       ; preds = %for.end173.loopexit.unr-lcssa, %if.then163.epil, %for.body156.epil, %for.end143
  %listltidx.0.lcssa = phi i32 [ 0, %for.end143 ], [ %listltidx.1.lcssa.ph, %for.end173.loopexit.unr-lcssa ], [ %inc167.epil, %if.then163.epil ], [ %listltidx.01353.unr, %for.body156.epil ]
  %conv174 = sext i32 %listltidx.0.lcssa to i64
  tail call void @qsort(ptr noundef %call112, i64 noundef %conv174, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #10
  %57 = load i32, ptr %structure, align 8
  %58 = load ptr, ptr %listX148, align 8
  tail call void @gen_pic_list_from_frame_list(i32 noundef %57, ptr noundef %call112, i32 noundef %listltidx.0.lcssa, ptr noundef %58, ptr noundef nonnull %listXsize145, i32 noundef 1) #10
  tail call void @free(ptr noundef %call) #10
  tail call void @free(ptr noundef %call112) #10
  br label %if.end180

if.end180:                                        ; preds = %for.end173, %for.end90
  %arrayidx182 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 0, ptr %arrayidx182, align 1
  br label %if.end605

if.else183:                                       ; preds = %entry
  %structure184 = getelementptr inbounds i8, ptr %currSlice, i64 184
  %59 = load i32, ptr %structure184, align 8
  %cmp185 = icmp eq i32 %59, 0
  br i1 %cmp185, label %for.cond188.preheader, label %if.else427

for.cond188.preheader:                            ; preds = %if.else183
  %ref_frames_in_buffer189 = getelementptr inbounds i8, ptr %1, i64 48
  %60 = load i32, ptr %ref_frames_in_buffer189, align 8
  %cmp1901380.not = icmp eq i32 %60, 0
  br i1 %cmp1901380.not, label %for.end243, label %for.body192.lr.ph

for.body192.lr.ph:                                ; preds = %for.cond188.preheader
  %fs_ref193 = getelementptr inbounds i8, ptr %1, i64 24
  %framepoc = getelementptr inbounds i8, ptr %currSlice, i64 76
  %listX233 = getelementptr inbounds i8, ptr %currSlice, i64 264
  br label %for.body192

for.body192:                                      ; preds = %for.body192.lr.ph, %for.inc241
  %61 = phi i32 [ %60, %for.body192.lr.ph ], [ %72, %for.inc241 ]
  %indvars.iv1446 = phi i64 [ 0, %for.body192.lr.ph ], [ %indvars.iv.next1447, %for.inc241 ]
  %list0idx.61381 = phi i32 [ 0, %for.body192.lr.ph ], [ %list0idx.7, %for.inc241 ]
  %62 = load ptr, ptr %fs_ref193, align 8
  %arrayidx195 = getelementptr inbounds ptr, ptr %62, i64 %indvars.iv1446
  %63 = load ptr, ptr %arrayidx195, align 8
  %64 = load i32, ptr %63, align 8
  %cmp197 = icmp eq i32 %64, 3
  br i1 %cmp197, label %if.then199, label %for.inc241

if.then199:                                       ; preds = %for.body192
  %frame203 = getelementptr inbounds i8, ptr %63, i64 48
  %65 = load ptr, ptr %frame203, align 8
  %used_for_reference204 = getelementptr inbounds i8, ptr %65, i64 44
  %66 = load i32, ptr %used_for_reference204, align 4
  %tobool205.not = icmp eq i32 %66, 0
  br i1 %tobool205.not, label %for.inc241, label %land.lhs.true206

land.lhs.true206:                                 ; preds = %if.then199
  %is_long_term211 = getelementptr inbounds i8, ptr %65, i64 40
  %67 = load i8, ptr %is_long_term211, align 8
  %tobool212.not = icmp eq i8 %67, 0
  br i1 %tobool212.not, label %land.lhs.true213, label %for.inc241

land.lhs.true213:                                 ; preds = %land.lhs.true206
  %view_id218 = getelementptr inbounds i8, ptr %65, i64 344
  %68 = load i32, ptr %view_id218, align 8
  %cmp219 = icmp eq i32 %68, %3
  br i1 %cmp219, label %if.then221, label %for.inc241

if.then221:                                       ; preds = %land.lhs.true213
  %69 = load i32, ptr %framepoc, align 4
  %poc = getelementptr inbounds i8, ptr %65, i64 4
  %70 = load i32, ptr %poc, align 4
  %cmp226.not = icmp slt i32 %69, %70
  br i1 %cmp226.not, label %for.inc241, label %if.then228

if.then228:                                       ; preds = %if.then221
  %71 = load ptr, ptr %listX233, align 8
  %inc235 = add nsw i32 %list0idx.61381, 1
  %idxprom236 = sext i32 %list0idx.61381 to i64
  %arrayidx237 = getelementptr inbounds ptr, ptr %71, i64 %idxprom236
  store ptr %65, ptr %arrayidx237, align 8
  %.pre1513 = load i32, ptr %ref_frames_in_buffer189, align 8
  br label %for.inc241

for.inc241:                                       ; preds = %for.body192, %if.then221, %if.then228, %land.lhs.true213, %land.lhs.true206, %if.then199
  %72 = phi i32 [ %61, %land.lhs.true206 ], [ %.pre1513, %if.then228 ], [ %61, %if.then221 ], [ %61, %land.lhs.true213 ], [ %61, %if.then199 ], [ %61, %for.body192 ]
  %list0idx.7 = phi i32 [ %list0idx.61381, %land.lhs.true206 ], [ %inc235, %if.then228 ], [ %list0idx.61381, %if.then221 ], [ %list0idx.61381, %land.lhs.true213 ], [ %list0idx.61381, %if.then199 ], [ %list0idx.61381, %for.body192 ]
  %indvars.iv.next1447 = add nuw nsw i64 %indvars.iv1446, 1
  %73 = zext i32 %72 to i64
  %cmp190 = icmp ult i64 %indvars.iv.next1447, %73
  br i1 %cmp190, label %for.body192, label %for.end243

for.end243:                                       ; preds = %for.inc241, %for.cond188.preheader
  %list0idx.6.lcssa = phi i32 [ 0, %for.cond188.preheader ], [ %list0idx.7, %for.inc241 ]
  %listX244 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %74 = load ptr, ptr %listX244, align 8
  %conv246 = sext i32 %list0idx.6.lcssa to i64
  tail call void @qsort(ptr noundef %74, i64 noundef %conv246, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #10
  %75 = load i32, ptr %ref_frames_in_buffer189, align 8
  %cmp2491384.not = icmp eq i32 %75, 0
  br i1 %cmp2491384.not, label %for.end304, label %for.body251.lr.ph

for.body251.lr.ph:                                ; preds = %for.end243
  %fs_ref252 = getelementptr inbounds i8, ptr %1, i64 24
  %framepoc281 = getelementptr inbounds i8, ptr %currSlice, i64 76
  br label %for.body251

for.body251:                                      ; preds = %for.body251.lr.ph, %for.inc302
  %76 = phi i32 [ %75, %for.body251.lr.ph ], [ %87, %for.inc302 ]
  %indvars.iv1449 = phi i64 [ 0, %for.body251.lr.ph ], [ %indvars.iv.next1450, %for.inc302 ]
  %list0idx.81385 = phi i32 [ %list0idx.6.lcssa, %for.body251.lr.ph ], [ %list0idx.9, %for.inc302 ]
  %77 = load ptr, ptr %fs_ref252, align 8
  %arrayidx254 = getelementptr inbounds ptr, ptr %77, i64 %indvars.iv1449
  %78 = load ptr, ptr %arrayidx254, align 8
  %79 = load i32, ptr %78, align 8
  %cmp256 = icmp eq i32 %79, 3
  br i1 %cmp256, label %if.then258, label %for.inc302

if.then258:                                       ; preds = %for.body251
  %frame262 = getelementptr inbounds i8, ptr %78, i64 48
  %80 = load ptr, ptr %frame262, align 8
  %used_for_reference263 = getelementptr inbounds i8, ptr %80, i64 44
  %81 = load i32, ptr %used_for_reference263, align 4
  %tobool264.not = icmp eq i32 %81, 0
  br i1 %tobool264.not, label %for.inc302, label %land.lhs.true265

land.lhs.true265:                                 ; preds = %if.then258
  %is_long_term270 = getelementptr inbounds i8, ptr %80, i64 40
  %82 = load i8, ptr %is_long_term270, align 8
  %tobool271.not = icmp eq i8 %82, 0
  br i1 %tobool271.not, label %land.lhs.true272, label %for.inc302

land.lhs.true272:                                 ; preds = %land.lhs.true265
  %view_id277 = getelementptr inbounds i8, ptr %80, i64 344
  %83 = load i32, ptr %view_id277, align 8
  %cmp278 = icmp eq i32 %83, %3
  br i1 %cmp278, label %if.then280, label %for.inc302

if.then280:                                       ; preds = %land.lhs.true272
  %84 = load i32, ptr %framepoc281, align 4
  %poc286 = getelementptr inbounds i8, ptr %80, i64 4
  %85 = load i32, ptr %poc286, align 4
  %cmp287 = icmp slt i32 %84, %85
  br i1 %cmp287, label %if.then289, label %for.inc302

if.then289:                                       ; preds = %if.then280
  %86 = load ptr, ptr %listX244, align 8
  %inc296 = add nsw i32 %list0idx.81385, 1
  %idxprom297 = sext i32 %list0idx.81385 to i64
  %arrayidx298 = getelementptr inbounds ptr, ptr %86, i64 %idxprom297
  store ptr %80, ptr %arrayidx298, align 8
  %.pre1514 = load i32, ptr %ref_frames_in_buffer189, align 8
  br label %for.inc302

for.inc302:                                       ; preds = %for.body251, %if.then280, %if.then289, %land.lhs.true272, %land.lhs.true265, %if.then258
  %87 = phi i32 [ %76, %land.lhs.true265 ], [ %.pre1514, %if.then289 ], [ %76, %if.then280 ], [ %76, %land.lhs.true272 ], [ %76, %if.then258 ], [ %76, %for.body251 ]
  %list0idx.9 = phi i32 [ %list0idx.81385, %land.lhs.true265 ], [ %inc296, %if.then289 ], [ %list0idx.81385, %if.then280 ], [ %list0idx.81385, %land.lhs.true272 ], [ %list0idx.81385, %if.then258 ], [ %list0idx.81385, %for.body251 ]
  %indvars.iv.next1450 = add nuw nsw i64 %indvars.iv1449, 1
  %88 = zext i32 %87 to i64
  %cmp249 = icmp ult i64 %indvars.iv.next1450, %88
  br i1 %cmp249, label %for.body251, label %for.end304

for.end304:                                       ; preds = %for.inc302, %for.end243
  %list0idx.8.lcssa = phi i32 [ %list0idx.6.lcssa, %for.end243 ], [ %list0idx.9, %for.inc302 ]
  %89 = load ptr, ptr %listX244, align 8
  %arrayidx308 = getelementptr inbounds ptr, ptr %89, i64 %conv246
  %sub309 = sub nsw i32 %list0idx.8.lcssa, %list0idx.6.lcssa
  %conv310 = sext i32 %sub309 to i64
  tail call void @qsort(ptr noundef %arrayidx308, i64 noundef %conv310, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #10
  %cmp3121388 = icmp sgt i32 %list0idx.6.lcssa, 0
  br i1 %cmp3121388, label %for.body314.lr.ph, label %for.cond327.preheader

for.body314.lr.ph:                                ; preds = %for.end304
  %arrayidx320 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %wide.trip.count1457 = zext nneg i32 %list0idx.6.lcssa to i64
  %xtraiter1584 = and i64 %wide.trip.count1457, 3
  %90 = icmp ult i32 %list0idx.6.lcssa, 4
  br i1 %90, label %for.cond327.preheader.loopexit.unr-lcssa, label %for.body314.lr.ph.new

for.body314.lr.ph.new:                            ; preds = %for.body314.lr.ph
  %unroll_iter1586 = and i64 %wide.trip.count1457, 2147483644
  br label %for.body314

for.cond327.preheader.loopexit.unr-lcssa:         ; preds = %for.body314, %for.body314.lr.ph
  %indvars.iv1452.unr = phi i64 [ 0, %for.body314.lr.ph ], [ %indvars.iv.next1453.3, %for.body314 ]
  %lcmp.mod1585.not = icmp eq i64 %xtraiter1584, 0
  br i1 %lcmp.mod1585.not, label %for.cond327.preheader, label %for.body314.epil

for.body314.epil:                                 ; preds = %for.cond327.preheader.loopexit.unr-lcssa, %for.body314.epil
  %indvars.iv1452.epil = phi i64 [ %indvars.iv.next1453.epil, %for.body314.epil ], [ %indvars.iv1452.unr, %for.cond327.preheader.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body314.epil ], [ 0, %for.cond327.preheader.loopexit.unr-lcssa ]
  %91 = load ptr, ptr %listX244, align 8
  %arrayidx318.epil = getelementptr inbounds ptr, ptr %91, i64 %indvars.iv1452.epil
  %92 = load ptr, ptr %arrayidx318.epil, align 8
  %93 = load ptr, ptr %arrayidx320, align 8
  %94 = getelementptr ptr, ptr %93, i64 %indvars.iv1452.epil
  %arrayidx323.epil = getelementptr ptr, ptr %94, i64 %conv310
  store ptr %92, ptr %arrayidx323.epil, align 8
  %indvars.iv.next1453.epil = add nuw nsw i64 %indvars.iv1452.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1584
  br i1 %epil.iter.cmp.not, label %for.cond327.preheader, label %for.body314.epil, !llvm.loop !11

for.cond327.preheader:                            ; preds = %for.cond327.preheader.loopexit.unr-lcssa, %for.body314.epil, %for.end304
  %cmp3281390 = icmp slt i32 %list0idx.6.lcssa, %list0idx.8.lcssa
  br i1 %cmp3281390, label %for.body330.lr.ph, label %for.end342

for.body330.lr.ph:                                ; preds = %for.cond327.preheader
  %arrayidx336 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %wide.trip.count1463 = sext i32 %list0idx.8.lcssa to i64
  %95 = sub nsw i64 %wide.trip.count1463, %conv246
  %xtraiter1588 = and i64 %95, 1
  %lcmp.mod1589.not = icmp eq i64 %xtraiter1588, 0
  br i1 %lcmp.mod1589.not, label %for.body330.prol.loopexit, label %for.body330.prol

for.body330.prol:                                 ; preds = %for.body330.lr.ph
  %96 = load ptr, ptr %listX244, align 8
  %arrayidx334.prol = getelementptr inbounds ptr, ptr %96, i64 %conv246
  %97 = load ptr, ptr %arrayidx334.prol, align 8
  %98 = load ptr, ptr %arrayidx336, align 8
  store ptr %97, ptr %98, align 8
  %indvars.iv.next1460.prol = add nsw i64 %conv246, 1
  br label %for.body330.prol.loopexit

for.body330.prol.loopexit:                        ; preds = %for.body330.prol, %for.body330.lr.ph
  %indvars.iv1459.unr = phi i64 [ %conv246, %for.body330.lr.ph ], [ %indvars.iv.next1460.prol, %for.body330.prol ]
  %99 = add nsw i64 %wide.trip.count1463, -1
  %100 = icmp eq i64 %99, %conv246
  br i1 %100, label %for.end342, label %for.body330

for.body314:                                      ; preds = %for.body314, %for.body314.lr.ph.new
  %indvars.iv1452 = phi i64 [ 0, %for.body314.lr.ph.new ], [ %indvars.iv.next1453.3, %for.body314 ]
  %niter1587 = phi i64 [ 0, %for.body314.lr.ph.new ], [ %niter1587.next.3, %for.body314 ]
  %101 = load ptr, ptr %listX244, align 8
  %arrayidx318 = getelementptr inbounds ptr, ptr %101, i64 %indvars.iv1452
  %102 = load ptr, ptr %arrayidx318, align 8
  %103 = load ptr, ptr %arrayidx320, align 8
  %104 = getelementptr ptr, ptr %103, i64 %indvars.iv1452
  %arrayidx323 = getelementptr ptr, ptr %104, i64 %conv310
  store ptr %102, ptr %arrayidx323, align 8
  %indvars.iv.next1453 = or disjoint i64 %indvars.iv1452, 1
  %105 = load ptr, ptr %listX244, align 8
  %arrayidx318.1 = getelementptr inbounds ptr, ptr %105, i64 %indvars.iv.next1453
  %106 = load ptr, ptr %arrayidx318.1, align 8
  %107 = load ptr, ptr %arrayidx320, align 8
  %108 = getelementptr ptr, ptr %107, i64 %indvars.iv.next1453
  %arrayidx323.1 = getelementptr ptr, ptr %108, i64 %conv310
  store ptr %106, ptr %arrayidx323.1, align 8
  %indvars.iv.next1453.1 = or disjoint i64 %indvars.iv1452, 2
  %109 = load ptr, ptr %listX244, align 8
  %arrayidx318.2 = getelementptr inbounds ptr, ptr %109, i64 %indvars.iv.next1453.1
  %110 = load ptr, ptr %arrayidx318.2, align 8
  %111 = load ptr, ptr %arrayidx320, align 8
  %112 = getelementptr ptr, ptr %111, i64 %indvars.iv.next1453.1
  %arrayidx323.2 = getelementptr ptr, ptr %112, i64 %conv310
  store ptr %110, ptr %arrayidx323.2, align 8
  %indvars.iv.next1453.2 = or disjoint i64 %indvars.iv1452, 3
  %113 = load ptr, ptr %listX244, align 8
  %arrayidx318.3 = getelementptr inbounds ptr, ptr %113, i64 %indvars.iv.next1453.2
  %114 = load ptr, ptr %arrayidx318.3, align 8
  %115 = load ptr, ptr %arrayidx320, align 8
  %116 = getelementptr ptr, ptr %115, i64 %indvars.iv.next1453.2
  %arrayidx323.3 = getelementptr ptr, ptr %116, i64 %conv310
  store ptr %114, ptr %arrayidx323.3, align 8
  %indvars.iv.next1453.3 = add nuw nsw i64 %indvars.iv1452, 4
  %niter1587.next.3 = add i64 %niter1587, 4
  %niter1587.ncmp.3 = icmp eq i64 %niter1587.next.3, %unroll_iter1586
  br i1 %niter1587.ncmp.3, label %for.cond327.preheader.loopexit.unr-lcssa, label %for.body314

for.body330:                                      ; preds = %for.body330.prol.loopexit, %for.body330
  %indvars.iv1459 = phi i64 [ %indvars.iv.next1460.1, %for.body330 ], [ %indvars.iv1459.unr, %for.body330.prol.loopexit ]
  %117 = load ptr, ptr %listX244, align 8
  %arrayidx334 = getelementptr inbounds ptr, ptr %117, i64 %indvars.iv1459
  %118 = load ptr, ptr %arrayidx334, align 8
  %119 = load ptr, ptr %arrayidx336, align 8
  %120 = sub nsw i64 %indvars.iv1459, %conv246
  %arrayidx339 = getelementptr inbounds ptr, ptr %119, i64 %120
  store ptr %118, ptr %arrayidx339, align 8
  %indvars.iv.next1460 = add nsw i64 %indvars.iv1459, 1
  %121 = load ptr, ptr %listX244, align 8
  %arrayidx334.1 = getelementptr inbounds ptr, ptr %121, i64 %indvars.iv.next1460
  %122 = load ptr, ptr %arrayidx334.1, align 8
  %123 = load ptr, ptr %arrayidx336, align 8
  %124 = sub nsw i64 %indvars.iv.next1460, %conv246
  %arrayidx339.1 = getelementptr inbounds ptr, ptr %123, i64 %124
  store ptr %122, ptr %arrayidx339.1, align 8
  %indvars.iv.next1460.1 = add nsw i64 %indvars.iv1459, 2
  %exitcond1464.not.1 = icmp eq i64 %indvars.iv.next1460.1, %wide.trip.count1463
  br i1 %exitcond1464.not.1, label %for.end342, label %for.body330

for.end342:                                       ; preds = %for.body330.prol.loopexit, %for.body330, %for.cond327.preheader
  %conv343 = trunc i32 %list0idx.8.lcssa to i8
  %listXsize344 = getelementptr inbounds i8, ptr %currSlice, i64 256
  %arrayidx345 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 %conv343, ptr %arrayidx345, align 1
  store i8 %conv343, ptr %listXsize344, align 8
  %ltref_frames_in_buffer349 = getelementptr inbounds i8, ptr %1, i64 52
  %125 = load i32, ptr %ltref_frames_in_buffer349, align 4
  %cmp3501392.not = icmp eq i32 %125, 0
  br i1 %cmp3501392.not, label %for.end397, label %for.body352.lr.ph

for.body352.lr.ph:                                ; preds = %for.end342
  %fs_ltref353 = getelementptr inbounds i8, ptr %1, i64 32
  %arrayidx389 = getelementptr inbounds i8, ptr %currSlice, i64 272
  br label %for.body352

for.body352:                                      ; preds = %for.body352.lr.ph, %for.inc395
  %126 = phi i32 [ %125, %for.body352.lr.ph ], [ %138, %for.inc395 ]
  %indvars.iv1465 = phi i64 [ 0, %for.body352.lr.ph ], [ %indvars.iv.next1466, %for.inc395 ]
  %list0idx.101393 = phi i32 [ %list0idx.8.lcssa, %for.body352.lr.ph ], [ %list0idx.11, %for.inc395 ]
  %127 = load ptr, ptr %fs_ltref353, align 8
  %arrayidx355 = getelementptr inbounds ptr, ptr %127, i64 %indvars.iv1465
  %128 = load ptr, ptr %arrayidx355, align 8
  %129 = load i32, ptr %128, align 8
  %cmp357 = icmp eq i32 %129, 3
  br i1 %cmp357, label %if.then359, label %for.inc395

if.then359:                                       ; preds = %for.body352
  %frame363 = getelementptr inbounds i8, ptr %128, i64 48
  %130 = load ptr, ptr %frame363, align 8
  %is_long_term364 = getelementptr inbounds i8, ptr %130, i64 40
  %131 = load i8, ptr %is_long_term364, align 8
  %tobool366.not = icmp eq i8 %131, 0
  br i1 %tobool366.not, label %for.inc395, label %land.lhs.true367

land.lhs.true367:                                 ; preds = %if.then359
  %view_id372 = getelementptr inbounds i8, ptr %130, i64 344
  %132 = load i32, ptr %view_id372, align 8
  %cmp373 = icmp eq i32 %132, %3
  br i1 %cmp373, label %if.then375, label %for.inc395

if.then375:                                       ; preds = %land.lhs.true367
  %133 = load ptr, ptr %listX244, align 8
  %idxprom382 = sext i32 %list0idx.101393 to i64
  %arrayidx383 = getelementptr inbounds ptr, ptr %133, i64 %idxprom382
  store ptr %130, ptr %arrayidx383, align 8
  %134 = load ptr, ptr %fs_ltref353, align 8
  %arrayidx386 = getelementptr inbounds ptr, ptr %134, i64 %indvars.iv1465
  %135 = load ptr, ptr %arrayidx386, align 8
  %frame387 = getelementptr inbounds i8, ptr %135, i64 48
  %136 = load ptr, ptr %frame387, align 8
  %137 = load ptr, ptr %arrayidx389, align 8
  %inc390 = add nsw i32 %list0idx.101393, 1
  %arrayidx392 = getelementptr inbounds ptr, ptr %137, i64 %idxprom382
  store ptr %136, ptr %arrayidx392, align 8
  %.pre1515 = load i32, ptr %ltref_frames_in_buffer349, align 4
  br label %for.inc395

for.inc395:                                       ; preds = %for.body352, %if.then375, %land.lhs.true367, %if.then359
  %138 = phi i32 [ %.pre1515, %if.then375 ], [ %126, %land.lhs.true367 ], [ %126, %if.then359 ], [ %126, %for.body352 ]
  %list0idx.11 = phi i32 [ %inc390, %if.then375 ], [ %list0idx.101393, %land.lhs.true367 ], [ %list0idx.101393, %if.then359 ], [ %list0idx.101393, %for.body352 ]
  %indvars.iv.next1466 = add nuw nsw i64 %indvars.iv1465, 1
  %139 = zext i32 %138 to i64
  %cmp350 = icmp ult i64 %indvars.iv.next1466, %139
  br i1 %cmp350, label %for.body352, label %for.end397.loopexit

for.end397.loopexit:                              ; preds = %for.inc395
  %.pre1516 = load i8, ptr %listXsize344, align 8
  %.pre1521 = trunc i32 %list0idx.11 to i8
  br label %for.end397

for.end397:                                       ; preds = %for.end397.loopexit, %for.end342
  %conv422.pre-phi = phi i8 [ %.pre1521, %for.end397.loopexit ], [ %conv343, %for.end342 ]
  %140 = phi i8 [ %.pre1516, %for.end397.loopexit ], [ %conv343, %for.end342 ]
  %list0idx.10.lcssa = phi i32 [ %list0idx.11, %for.end397.loopexit ], [ %list0idx.8.lcssa, %for.end342 ]
  %141 = load ptr, ptr %listX244, align 8
  %idxprom403 = sext i8 %140 to i64
  %arrayidx404 = getelementptr inbounds ptr, ptr %141, i64 %idxprom403
  %conv407 = sext i8 %140 to i32
  %sub408 = sub nsw i32 %list0idx.10.lcssa, %conv407
  %conv409 = sext i32 %sub408 to i64
  tail call void @qsort(ptr noundef %arrayidx404, i64 noundef %conv409, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #10
  %arrayidx411 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %142 = load ptr, ptr %arrayidx411, align 8
  %143 = load i8, ptr %listXsize344, align 8
  %idxprom415 = sext i8 %143 to i64
  %arrayidx416 = getelementptr inbounds ptr, ptr %142, i64 %idxprom415
  %conv419 = sext i8 %143 to i32
  %sub420 = sub nsw i32 %list0idx.10.lcssa, %conv419
  %conv421 = sext i32 %sub420 to i64
  tail call void @qsort(ptr noundef %arrayidx416, i64 noundef %conv421, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #10
  store i8 %conv422.pre-phi, ptr %arrayidx345, align 1
  store i8 %conv422.pre-phi, ptr %listXsize344, align 8
  br label %if.end605

if.else427:                                       ; preds = %if.else183
  %size428 = getelementptr inbounds i8, ptr %1, i64 40
  %144 = load i32, ptr %size428, align 8
  %conv429 = zext i32 %144 to i64
  %call430 = tail call noalias ptr @calloc(i64 noundef %conv429, i64 noundef 8) #11
  %cmp431 = icmp eq ptr %call430, null
  br i1 %cmp431, label %if.then433, label %if.end434

if.then433:                                       ; preds = %if.else427
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
  %.pre1508 = load i32, ptr %size428, align 8
  %.pre1522 = zext i32 %.pre1508 to i64
  br label %if.end434

if.end434:                                        ; preds = %if.then433, %if.else427
  %conv436.pre-phi = phi i64 [ %.pre1522, %if.then433 ], [ %conv429, %if.else427 ]
  %call437 = tail call noalias ptr @calloc(i64 noundef %conv436.pre-phi, i64 noundef 8) #11
  %cmp438 = icmp eq ptr %call437, null
  br i1 %cmp438, label %if.then440, label %if.end441

if.then440:                                       ; preds = %if.end434
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #10
  %.pre1509 = load i32, ptr %size428, align 8
  %.pre1523 = zext i32 %.pre1509 to i64
  br label %if.end441

if.end441:                                        ; preds = %if.then440, %if.end434
  %conv443.pre-phi = phi i64 [ %.pre1523, %if.then440 ], [ %conv436.pre-phi, %if.end434 ]
  %call444 = tail call noalias ptr @calloc(i64 noundef %conv443.pre-phi, i64 noundef 8) #11
  %cmp445 = icmp eq ptr %call444, null
  br i1 %cmp445, label %if.then447, label %if.end448

if.then447:                                       ; preds = %if.end441
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #10
  br label %if.end448

if.end448:                                        ; preds = %if.then447, %if.end441
  %listXsize449 = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 0, ptr %listXsize449, align 8
  %arrayidx452 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 1, ptr %arrayidx452, align 1
  %ref_frames_in_buffer454 = getelementptr inbounds i8, ptr %1, i64 48
  %145 = load i32, ptr %ref_frames_in_buffer454, align 8
  %cmp4551364.not = icmp eq i32 %145, 0
  br i1 %cmp4551364.not, label %for.end489, label %for.body457.lr.ph

for.body457.lr.ph:                                ; preds = %if.end448
  %fs_ref458 = getelementptr inbounds i8, ptr %1, i64 24
  %.pre1510 = load ptr, ptr %fs_ref458, align 8
  %146 = zext i32 %145 to i64
  br label %for.body457

for.body457:                                      ; preds = %for.body457.lr.ph, %for.inc487
  %indvars.iv1428 = phi i64 [ 0, %for.body457.lr.ph ], [ %indvars.iv.next1429, %for.inc487 ]
  %list0idx.121365 = phi i32 [ 0, %for.body457.lr.ph ], [ %list0idx.13, %for.inc487 ]
  %arrayidx460 = getelementptr inbounds ptr, ptr %.pre1510, i64 %indvars.iv1428
  %147 = load ptr, ptr %arrayidx460, align 8
  %148 = load i32, ptr %147, align 8
  %tobool462.not = icmp eq i32 %148, 0
  br i1 %tobool462.not, label %for.inc487, label %if.then463

if.then463:                                       ; preds = %for.body457
  %149 = load i32, ptr %ThisPOC, align 8
  %poc468 = getelementptr inbounds i8, ptr %147, i64 40
  %150 = load i32, ptr %poc468, align 8
  %cmp469.not = icmp slt i32 %149, %150
  br i1 %cmp469.not, label %for.inc487, label %land.lhs.true471

land.lhs.true471:                                 ; preds = %if.then463
  %view_id475 = getelementptr inbounds i8, ptr %147, i64 72
  %151 = load i32, ptr %view_id475, align 8
  %cmp476 = icmp eq i32 %151, %3
  br i1 %cmp476, label %if.then478, label %for.inc487

if.then478:                                       ; preds = %land.lhs.true471
  %inc482 = add nsw i32 %list0idx.121365, 1
  %idxprom483 = sext i32 %list0idx.121365 to i64
  %arrayidx484 = getelementptr inbounds ptr, ptr %call430, i64 %idxprom483
  store ptr %147, ptr %arrayidx484, align 8
  br label %for.inc487

for.inc487:                                       ; preds = %for.body457, %if.then478, %land.lhs.true471, %if.then463
  %list0idx.13 = phi i32 [ %inc482, %if.then478 ], [ %list0idx.121365, %land.lhs.true471 ], [ %list0idx.121365, %if.then463 ], [ %list0idx.121365, %for.body457 ]
  %indvars.iv.next1429 = add nuw nsw i64 %indvars.iv1428, 1
  %cmp455 = icmp ult i64 %indvars.iv.next1429, %146
  br i1 %cmp455, label %for.body457, label %for.end489

for.end489:                                       ; preds = %for.inc487, %if.end448
  %list0idx.12.lcssa = phi i32 [ 0, %if.end448 ], [ %list0idx.13, %for.inc487 ]
  %conv490 = sext i32 %list0idx.12.lcssa to i64
  tail call void @qsort(ptr noundef %call430, i64 noundef %conv490, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #10
  %152 = load i32, ptr %ref_frames_in_buffer454, align 8
  %cmp4931368.not = icmp eq i32 %152, 0
  br i1 %cmp4931368.not, label %for.end527, label %for.body495.lr.ph

for.body495.lr.ph:                                ; preds = %for.end489
  %fs_ref496 = getelementptr inbounds i8, ptr %1, i64 24
  %.pre1511 = load ptr, ptr %fs_ref496, align 8
  %153 = zext i32 %152 to i64
  br label %for.body495

for.body495:                                      ; preds = %for.body495.lr.ph, %for.inc525
  %indvars.iv1431 = phi i64 [ 0, %for.body495.lr.ph ], [ %indvars.iv.next1432, %for.inc525 ]
  %list0idx.141369 = phi i32 [ %list0idx.12.lcssa, %for.body495.lr.ph ], [ %list0idx.15, %for.inc525 ]
  %arrayidx498 = getelementptr inbounds ptr, ptr %.pre1511, i64 %indvars.iv1431
  %154 = load ptr, ptr %arrayidx498, align 8
  %155 = load i32, ptr %154, align 8
  %tobool500.not = icmp eq i32 %155, 0
  br i1 %tobool500.not, label %for.inc525, label %if.then501

if.then501:                                       ; preds = %for.body495
  %156 = load i32, ptr %ThisPOC, align 8
  %poc506 = getelementptr inbounds i8, ptr %154, i64 40
  %157 = load i32, ptr %poc506, align 8
  %cmp507 = icmp slt i32 %156, %157
  br i1 %cmp507, label %land.lhs.true509, label %for.inc525

land.lhs.true509:                                 ; preds = %if.then501
  %view_id513 = getelementptr inbounds i8, ptr %154, i64 72
  %158 = load i32, ptr %view_id513, align 8
  %cmp514 = icmp eq i32 %158, %3
  br i1 %cmp514, label %if.then516, label %for.inc525

if.then516:                                       ; preds = %land.lhs.true509
  %inc520 = add nsw i32 %list0idx.141369, 1
  %idxprom521 = sext i32 %list0idx.141369 to i64
  %arrayidx522 = getelementptr inbounds ptr, ptr %call430, i64 %idxprom521
  store ptr %154, ptr %arrayidx522, align 8
  br label %for.inc525

for.inc525:                                       ; preds = %for.body495, %if.then516, %land.lhs.true509, %if.then501
  %list0idx.15 = phi i32 [ %inc520, %if.then516 ], [ %list0idx.141369, %land.lhs.true509 ], [ %list0idx.141369, %if.then501 ], [ %list0idx.141369, %for.body495 ]
  %indvars.iv.next1432 = add nuw nsw i64 %indvars.iv1431, 1
  %cmp493 = icmp ult i64 %indvars.iv.next1432, %153
  br i1 %cmp493, label %for.body495, label %for.end527

for.end527:                                       ; preds = %for.inc525, %for.end489
  %list0idx.14.lcssa = phi i32 [ %list0idx.12.lcssa, %for.end489 ], [ %list0idx.15, %for.inc525 ]
  %arrayidx529 = getelementptr inbounds ptr, ptr %call430, i64 %conv490
  %sub530 = sub nsw i32 %list0idx.14.lcssa, %list0idx.12.lcssa
  %conv531 = sext i32 %sub530 to i64
  tail call void @qsort(ptr noundef %arrayidx529, i64 noundef %conv531, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #10
  %cmp5331372 = icmp sgt i32 %list0idx.12.lcssa, 0
  br i1 %cmp5331372, label %for.body535.preheader, label %for.cond545.preheader

for.body535.preheader:                            ; preds = %for.end527
  %wide.trip.count = zext nneg i32 %list0idx.12.lcssa to i64
  %invariant.gep = getelementptr ptr, ptr %call437, i64 %conv531
  %min.iters.check = icmp ult i32 %list0idx.12.lcssa, 8
  br i1 %min.iters.check, label %for.body535.preheader1572, label %vector.ph

for.body535.preheader1572:                        ; preds = %middle.block, %for.body535.preheader
  %indvars.iv1434.ph = phi i64 [ 0, %for.body535.preheader ], [ %n.vec, %middle.block ]
  br label %for.body535

vector.ph:                                        ; preds = %for.body535.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %159 = getelementptr inbounds ptr, ptr %call430, i64 %index
  %160 = getelementptr inbounds i8, ptr %159, i64 16
  %161 = getelementptr inbounds i8, ptr %159, i64 32
  %162 = getelementptr inbounds i8, ptr %159, i64 48
  %wide.load = load <2 x ptr>, ptr %159, align 8
  %wide.load1537 = load <2 x ptr>, ptr %160, align 8
  %wide.load1538 = load <2 x ptr>, ptr %161, align 8
  %wide.load1539 = load <2 x ptr>, ptr %162, align 8
  %163 = getelementptr ptr, ptr %invariant.gep, i64 %index
  %164 = getelementptr i8, ptr %163, i64 16
  %165 = getelementptr i8, ptr %163, i64 32
  %166 = getelementptr i8, ptr %163, i64 48
  store <2 x ptr> %wide.load, ptr %163, align 8
  store <2 x ptr> %wide.load1537, ptr %164, align 8
  store <2 x ptr> %wide.load1538, ptr %165, align 8
  store <2 x ptr> %wide.load1539, ptr %166, align 8
  %index.next = add nuw i64 %index, 8
  %167 = icmp eq i64 %index.next, %n.vec
  br i1 %167, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond545.preheader, label %for.body535.preheader1572

for.cond545.preheader:                            ; preds = %for.body535, %middle.block, %for.end527
  %cmp5461374 = icmp slt i32 %list0idx.12.lcssa, %list0idx.14.lcssa
  br i1 %cmp5461374, label %for.body548.preheader, label %for.end556

for.body548.preheader:                            ; preds = %for.cond545.preheader
  %168 = shl nsw i64 %conv490, 3
  %scevgep = getelementptr i8, ptr %call430, i64 %168
  %169 = xor i32 %list0idx.12.lcssa, -1
  %170 = add i32 %list0idx.14.lcssa, %169
  %171 = zext i32 %170 to i64
  %172 = shl nuw nsw i64 %171, 3
  %173 = add nuw nsw i64 %172, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %call437, ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i64 %173, i1 false)
  br label %for.end556

for.body535:                                      ; preds = %for.body535.preheader1572, %for.body535
  %indvars.iv1434 = phi i64 [ %indvars.iv.next1435, %for.body535 ], [ %indvars.iv1434.ph, %for.body535.preheader1572 ]
  %arrayidx537 = getelementptr inbounds ptr, ptr %call430, i64 %indvars.iv1434
  %174 = load ptr, ptr %arrayidx537, align 8
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv1434
  store ptr %174, ptr %gep, align 8
  %indvars.iv.next1435 = add nuw nsw i64 %indvars.iv1434, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next1435, %wide.trip.count
  br i1 %exitcond.not, label %for.cond545.preheader, label %for.body535, !llvm.loop !13

for.end556:                                       ; preds = %for.body548.preheader, %for.cond545.preheader
  store i8 0, ptr %listXsize449, align 8
  store i8 0, ptr %arrayidx452, align 1
  %175 = load i32, ptr %structure184, align 8
  %listX562 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %176 = load ptr, ptr %listX562, align 8
  tail call void @gen_pic_list_from_frame_list(i32 noundef %175, ptr noundef %call430, i32 noundef %list0idx.14.lcssa, ptr noundef %176, ptr noundef nonnull %listXsize449, i32 noundef 0) #10
  %177 = load i32, ptr %structure184, align 8
  %arrayidx568 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %178 = load ptr, ptr %arrayidx568, align 8
  tail call void @gen_pic_list_from_frame_list(i32 noundef %177, ptr noundef %call437, i32 noundef %list0idx.14.lcssa, ptr noundef %178, ptr noundef nonnull %arrayidx452, i32 noundef 0) #10
  %ltref_frames_in_buffer572 = getelementptr inbounds i8, ptr %1, i64 52
  %179 = load i32, ptr %ltref_frames_in_buffer572, align 4
  %cmp5731376.not = icmp eq i32 %179, 0
  br i1 %cmp5731376.not, label %for.end592, label %for.body575.lr.ph

for.body575.lr.ph:                                ; preds = %for.end556
  %fs_ltref576 = getelementptr inbounds i8, ptr %1, i64 32
  %.pre1512 = load ptr, ptr %fs_ltref576, align 8
  %180 = zext i32 %179 to i64
  %xtraiter1579 = and i64 %180, 1
  %181 = icmp eq i32 %179, 1
  br i1 %181, label %for.end592.loopexit.unr-lcssa, label %for.body575.lr.ph.new

for.body575.lr.ph.new:                            ; preds = %for.body575.lr.ph
  %unroll_iter1582 = and i64 %180, 4294967294
  br label %for.body575

for.body575:                                      ; preds = %for.inc590.1, %for.body575.lr.ph.new
  %indvars.iv1443 = phi i64 [ 0, %for.body575.lr.ph.new ], [ %indvars.iv.next1444.1, %for.inc590.1 ]
  %listltidx.21377 = phi i32 [ 0, %for.body575.lr.ph.new ], [ %listltidx.3.1, %for.inc590.1 ]
  %niter1583 = phi i64 [ 0, %for.body575.lr.ph.new ], [ %niter1583.next.1, %for.inc590.1 ]
  %arrayidx578 = getelementptr inbounds ptr, ptr %.pre1512, i64 %indvars.iv1443
  %182 = load ptr, ptr %arrayidx578, align 8
  %view_id579 = getelementptr inbounds i8, ptr %182, i64 72
  %183 = load i32, ptr %view_id579, align 8
  %cmp580 = icmp eq i32 %183, %3
  br i1 %cmp580, label %if.then582, label %for.inc590

if.then582:                                       ; preds = %for.body575
  %inc586 = add nsw i32 %listltidx.21377, 1
  %idxprom587 = sext i32 %listltidx.21377 to i64
  %arrayidx588 = getelementptr inbounds ptr, ptr %call444, i64 %idxprom587
  store ptr %182, ptr %arrayidx588, align 8
  br label %for.inc590

for.inc590:                                       ; preds = %for.body575, %if.then582
  %listltidx.3 = phi i32 [ %inc586, %if.then582 ], [ %listltidx.21377, %for.body575 ]
  %indvars.iv.next1444 = or disjoint i64 %indvars.iv1443, 1
  %arrayidx578.1 = getelementptr inbounds ptr, ptr %.pre1512, i64 %indvars.iv.next1444
  %184 = load ptr, ptr %arrayidx578.1, align 8
  %view_id579.1 = getelementptr inbounds i8, ptr %184, i64 72
  %185 = load i32, ptr %view_id579.1, align 8
  %cmp580.1 = icmp eq i32 %185, %3
  br i1 %cmp580.1, label %if.then582.1, label %for.inc590.1

if.then582.1:                                     ; preds = %for.inc590
  %inc586.1 = add nsw i32 %listltidx.3, 1
  %idxprom587.1 = sext i32 %listltidx.3 to i64
  %arrayidx588.1 = getelementptr inbounds ptr, ptr %call444, i64 %idxprom587.1
  store ptr %184, ptr %arrayidx588.1, align 8
  br label %for.inc590.1

for.inc590.1:                                     ; preds = %if.then582.1, %for.inc590
  %listltidx.3.1 = phi i32 [ %inc586.1, %if.then582.1 ], [ %listltidx.3, %for.inc590 ]
  %indvars.iv.next1444.1 = add nuw nsw i64 %indvars.iv1443, 2
  %niter1583.next.1 = add i64 %niter1583, 2
  %niter1583.ncmp.1.not = icmp eq i64 %niter1583.next.1, %unroll_iter1582
  br i1 %niter1583.ncmp.1.not, label %for.end592.loopexit.unr-lcssa, label %for.body575

for.end592.loopexit.unr-lcssa:                    ; preds = %for.inc590.1, %for.body575.lr.ph
  %listltidx.3.lcssa.ph = phi i32 [ poison, %for.body575.lr.ph ], [ %listltidx.3.1, %for.inc590.1 ]
  %indvars.iv1443.unr = phi i64 [ 0, %for.body575.lr.ph ], [ %indvars.iv.next1444.1, %for.inc590.1 ]
  %listltidx.21377.unr = phi i32 [ 0, %for.body575.lr.ph ], [ %listltidx.3.1, %for.inc590.1 ]
  %lcmp.mod1580.not = icmp eq i64 %xtraiter1579, 0
  br i1 %lcmp.mod1580.not, label %for.end592, label %for.body575.epil

for.body575.epil:                                 ; preds = %for.end592.loopexit.unr-lcssa
  %arrayidx578.epil = getelementptr inbounds ptr, ptr %.pre1512, i64 %indvars.iv1443.unr
  %186 = load ptr, ptr %arrayidx578.epil, align 8
  %view_id579.epil = getelementptr inbounds i8, ptr %186, i64 72
  %187 = load i32, ptr %view_id579.epil, align 8
  %cmp580.epil = icmp eq i32 %187, %3
  br i1 %cmp580.epil, label %if.then582.epil, label %for.end592

if.then582.epil:                                  ; preds = %for.body575.epil
  %inc586.epil = add nsw i32 %listltidx.21377.unr, 1
  %idxprom587.epil = sext i32 %listltidx.21377.unr to i64
  %arrayidx588.epil = getelementptr inbounds ptr, ptr %call444, i64 %idxprom587.epil
  store ptr %186, ptr %arrayidx588.epil, align 8
  br label %for.end592

for.end592:                                       ; preds = %for.end592.loopexit.unr-lcssa, %if.then582.epil, %for.body575.epil, %for.end556
  %listltidx.2.lcssa = phi i32 [ 0, %for.end556 ], [ %listltidx.3.lcssa.ph, %for.end592.loopexit.unr-lcssa ], [ %inc586.epil, %if.then582.epil ], [ %listltidx.21377.unr, %for.body575.epil ]
  %conv593 = sext i32 %listltidx.2.lcssa to i64
  tail call void @qsort(ptr noundef %call444, i64 noundef %conv593, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #10
  %188 = load i32, ptr %structure184, align 8
  %189 = load ptr, ptr %listX562, align 8
  tail call void @gen_pic_list_from_frame_list(i32 noundef %188, ptr noundef %call444, i32 noundef %listltidx.2.lcssa, ptr noundef %189, ptr noundef nonnull %listXsize449, i32 noundef 1) #10
  %190 = load i32, ptr %structure184, align 8
  %191 = load ptr, ptr %arrayidx568, align 8
  tail call void @gen_pic_list_from_frame_list(i32 noundef %190, ptr noundef %call444, i32 noundef %listltidx.2.lcssa, ptr noundef %191, ptr noundef nonnull %arrayidx452, i32 noundef 1) #10
  tail call void @free(ptr noundef %call430) #10
  tail call void @free(ptr noundef %call437) #10
  tail call void @free(ptr noundef %call444) #10
  %.pre1517 = load i8, ptr %arrayidx452, align 1
  br label %if.end605

if.end605:                                        ; preds = %for.end397, %for.end592, %if.end180
  %192 = phi i8 [ %conv422.pre-phi, %for.end397 ], [ %.pre1517, %for.end592 ], [ 0, %if.end180 ]
  %listXsize606 = getelementptr inbounds i8, ptr %currSlice, i64 256
  %193 = load i8, ptr %listXsize606, align 8
  %arrayidx610 = getelementptr inbounds i8, ptr %currSlice, i64 257
  %cmp612 = icmp eq i8 %193, %192
  %cmp618 = icmp sgt i8 %193, 1
  %or.cond = and i1 %cmp618, %cmp612
  br i1 %or.cond, label %for.cond621.preheader, label %if.end658

for.cond621.preheader:                            ; preds = %if.end605
  %listX628 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %194 = load ptr, ptr %listX628, align 8
  %arrayidx633 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %195 = load ptr, ptr %arrayidx633, align 8
  %wide.trip.count1471 = zext i8 %192 to i64
  %min.iters.check1542 = icmp ult i8 %192, 8
  br i1 %min.iters.check1542, label %for.body627.preheader, label %vector.ph1543

vector.ph1543:                                    ; preds = %for.cond621.preheader
  %n.vec1545 = and i64 %wide.trip.count1471, 248
  br label %vector.body1547

vector.body1547:                                  ; preds = %vector.body1547, %vector.ph1543
  %index1548 = phi i64 [ 0, %vector.ph1543 ], [ %index.next1560, %vector.body1547 ]
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph1543 ], [ %208, %vector.body1547 ]
  %vec.phi1549 = phi <2 x i1> [ zeroinitializer, %vector.ph1543 ], [ %209, %vector.body1547 ]
  %vec.phi1550 = phi <2 x i1> [ zeroinitializer, %vector.ph1543 ], [ %210, %vector.body1547 ]
  %vec.phi1551 = phi <2 x i1> [ zeroinitializer, %vector.ph1543 ], [ %211, %vector.body1547 ]
  %196 = getelementptr inbounds ptr, ptr %194, i64 %index1548
  %197 = getelementptr inbounds i8, ptr %196, i64 16
  %198 = getelementptr inbounds i8, ptr %196, i64 32
  %199 = getelementptr inbounds i8, ptr %196, i64 48
  %wide.load1552 = load <2 x ptr>, ptr %196, align 8
  %wide.load1553 = load <2 x ptr>, ptr %197, align 8
  %wide.load1554 = load <2 x ptr>, ptr %198, align 8
  %wide.load1555 = load <2 x ptr>, ptr %199, align 8
  %200 = getelementptr inbounds ptr, ptr %195, i64 %index1548
  %201 = getelementptr inbounds i8, ptr %200, i64 16
  %202 = getelementptr inbounds i8, ptr %200, i64 32
  %203 = getelementptr inbounds i8, ptr %200, i64 48
  %wide.load1556 = load <2 x ptr>, ptr %200, align 8
  %wide.load1557 = load <2 x ptr>, ptr %201, align 8
  %wide.load1558 = load <2 x ptr>, ptr %202, align 8
  %wide.load1559 = load <2 x ptr>, ptr %203, align 8
  %204 = icmp ne <2 x ptr> %wide.load1552, %wide.load1556
  %205 = icmp ne <2 x ptr> %wide.load1553, %wide.load1557
  %206 = icmp ne <2 x ptr> %wide.load1554, %wide.load1558
  %207 = icmp ne <2 x ptr> %wide.load1555, %wide.load1559
  %208 = or <2 x i1> %vec.phi, %204
  %209 = or <2 x i1> %vec.phi1549, %205
  %210 = or <2 x i1> %vec.phi1550, %206
  %211 = or <2 x i1> %vec.phi1551, %207
  %index.next1560 = add nuw i64 %index1548, 8
  %212 = icmp eq i64 %index.next1560, %n.vec1545
  br i1 %212, label %middle.block1540, label %vector.body1547, !llvm.loop !14

middle.block1540:                                 ; preds = %vector.body1547
  %bin.rdx = or <2 x i1> %209, %208
  %bin.rdx1561 = or <2 x i1> %210, %bin.rdx
  %bin.rdx1562 = or <2 x i1> %211, %bin.rdx1561
  %bin.rdx1562.fr = freeze <2 x i1> %bin.rdx1562
  %213 = bitcast <2 x i1> %bin.rdx1562.fr to i2
  %.not = icmp ne i2 %213, 0
  %rdx.select = zext i1 %.not to i32
  %cmp.n1563 = icmp eq i64 %n.vec1545, %wide.trip.count1471
  br i1 %cmp.n1563, label %for.end642, label %for.body627.preheader

for.body627.preheader:                            ; preds = %middle.block1540, %for.cond621.preheader
  %indvars.iv1468.ph = phi i64 [ 0, %for.cond621.preheader ], [ %n.vec1545, %middle.block1540 ]
  %diff.01397.ph = phi i32 [ 0, %for.cond621.preheader ], [ %rdx.select, %middle.block1540 ]
  br label %for.body627

for.body627:                                      ; preds = %for.body627.preheader, %for.body627
  %indvars.iv1468 = phi i64 [ %indvars.iv.next1469, %for.body627 ], [ %indvars.iv1468.ph, %for.body627.preheader ]
  %diff.01397 = phi i32 [ %spec.select, %for.body627 ], [ %diff.01397.ph, %for.body627.preheader ]
  %arrayidx631 = getelementptr inbounds ptr, ptr %194, i64 %indvars.iv1468
  %214 = load ptr, ptr %arrayidx631, align 8
  %arrayidx635 = getelementptr inbounds ptr, ptr %195, i64 %indvars.iv1468
  %215 = load ptr, ptr %arrayidx635, align 8
  %cmp636.not = icmp eq ptr %214, %215
  %spec.select = select i1 %cmp636.not, i32 %diff.01397, i32 1
  %indvars.iv.next1469 = add nuw nsw i64 %indvars.iv1468, 1
  %exitcond1472.not = icmp eq i64 %indvars.iv.next1469, %wide.trip.count1471
  br i1 %exitcond1472.not, label %for.end642, label %for.body627, !llvm.loop !15

for.end642:                                       ; preds = %for.body627, %middle.block1540
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block1540 ], [ %spec.select, %for.body627 ]
  %tobool643.not = icmp eq i32 %spec.select.lcssa, 0
  br i1 %tobool643.not, label %if.then644, label %if.end658

if.then644:                                       ; preds = %for.end642
  %216 = load ptr, ptr %195, align 8
  %arrayidx650 = getelementptr inbounds i8, ptr %195, i64 8
  %217 = load ptr, ptr %arrayidx650, align 8
  store ptr %217, ptr %195, align 8
  %218 = load ptr, ptr %arrayidx633, align 8
  %arrayidx656 = getelementptr inbounds i8, ptr %218, i64 8
  store ptr %216, ptr %arrayidx656, align 8
  br label %if.end658

if.end658:                                        ; preds = %for.end642, %if.then644, %if.end605
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32
  %219 = load i32, ptr %svc_extension_flag, align 8
  %cmp659 = icmp eq i32 %219, 0
  br i1 %cmp659, label %if.then661, label %if.end814

if.then661:                                       ; preds = %if.end658
  %220 = load i32, ptr %slice_type, align 4
  switch i32 %220, label %if.else719 [
    i32 0, label %if.then669
    i32 3, label %if.then669
  ]

if.then669:                                       ; preds = %if.then661, %if.then661
  %size670 = getelementptr inbounds i8, ptr %1, i64 40
  %221 = load i32, ptr %size670, align 8
  %conv671 = zext i32 %221 to i64
  %call672 = tail call noalias ptr @calloc(i64 noundef %conv671, i64 noundef 8) #11
  %fs_listinterview0 = getelementptr inbounds i8, ptr %currSlice, i64 13320
  store ptr %call672, ptr %fs_listinterview0, align 8
  %cmp674 = icmp eq ptr %call672, null
  br i1 %cmp674, label %if.then676, label %if.end677

if.then676:                                       ; preds = %if.then669
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #10
  br label %if.end677

if.end677:                                        ; preds = %if.then676, %if.then669
  %structure681 = getelementptr inbounds i8, ptr %currSlice, i64 184
  %222 = load i32, ptr %structure681, align 8
  %cmp682 = icmp eq i32 %222, 0
  br i1 %cmp682, label %if.then684, label %if.else707

if.then684:                                       ; preds = %if.end677
  %223 = load i8, ptr %listXsize606, align 8
  %224 = load ptr, ptr %fs_listinterview0, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, ptr noundef %224, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %225 = load i32, ptr %listinterviewidx0, align 4
  %cmp6891398.not = icmp eq i32 %225, 0
  br i1 %cmp6891398.not, label %for.end703, label %for.body691.lr.ph

for.body691.lr.ph:                                ; preds = %if.then684
  %listX696 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %226 = sext i8 %223 to i64
  br label %for.body691

for.body691:                                      ; preds = %for.body691.lr.ph, %for.body691
  %indvars.iv1475 = phi i64 [ %226, %for.body691.lr.ph ], [ %indvars.iv.next1476, %for.body691 ]
  %indvars.iv1473 = phi i64 [ 0, %for.body691.lr.ph ], [ %indvars.iv.next1474, %for.body691 ]
  %227 = load ptr, ptr %fs_listinterview0, align 8
  %arrayidx694 = getelementptr inbounds ptr, ptr %227, i64 %indvars.iv1473
  %228 = load ptr, ptr %arrayidx694, align 8
  %frame695 = getelementptr inbounds i8, ptr %228, i64 48
  %229 = load ptr, ptr %frame695, align 8
  %230 = load ptr, ptr %listX696, align 8
  %indvars.iv.next1476 = add nsw i64 %indvars.iv1475, 1
  %arrayidx700 = getelementptr inbounds ptr, ptr %230, i64 %indvars.iv1475
  store ptr %229, ptr %arrayidx700, align 8
  %indvars.iv.next1474 = add nuw nsw i64 %indvars.iv1473, 1
  %231 = load i32, ptr %listinterviewidx0, align 4
  %232 = zext i32 %231 to i64
  %cmp689 = icmp ult i64 %indvars.iv.next1474, %232
  br i1 %cmp689, label %for.body691, label %for.end703.loopexit

for.end703.loopexit:                              ; preds = %for.body691
  %233 = trunc i64 %indvars.iv.next1476 to i8
  br label %for.end703

for.end703:                                       ; preds = %for.end703.loopexit, %if.then684
  %list0idx.16.lcssa = phi i8 [ %223, %if.then684 ], [ %233, %for.end703.loopexit ]
  store i8 %list0idx.16.lcssa, ptr %listXsize606, align 8
  br label %if.end814

if.else707:                                       ; preds = %if.end677
  %234 = load ptr, ptr %fs_listinterview0, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef %222, i32 noundef 0, ptr noundef %234, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %235 = load i32, ptr %structure681, align 8
  %236 = load ptr, ptr %fs_listinterview0, align 8
  %237 = load i32, ptr %listinterviewidx0, align 4
  %listX714 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %238 = load ptr, ptr %listX714, align 8
  switch i32 %235, label %if.end814 [
    i32 1, label %for.cond.preheader.i
    i32 2, label %if.then7.i
  ]

for.cond.preheader.i:                             ; preds = %if.else707
  %cmp134.i = icmp sgt i32 %237, 0
  br i1 %cmp134.i, label %for.body.preheader.i, label %if.end814

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %wide.trip.count43.i = zext nneg i32 %237 to i64
  %.pre45.i = load i8, ptr %listXsize606, align 1
  %xtraiter1595 = and i64 %wide.trip.count43.i, 1
  %239 = icmp eq i32 %237, 1
  br i1 %239, label %if.end814.loopexit1566.unr-lcssa, label %for.body.preheader.i.new

for.body.preheader.i.new:                         ; preds = %for.body.preheader.i
  %unroll_iter1599 = and i64 %wide.trip.count43.i, 2147483646
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i.new
  %240 = phi i8 [ %.pre45.i, %for.body.preheader.i.new ], [ %inc.i.1, %for.body.i ]
  %indvars.iv40.i = phi i64 [ 0, %for.body.preheader.i.new ], [ %indvars.iv.next41.i.1, %for.body.i ]
  %niter1600 = phi i64 [ 0, %for.body.preheader.i.new ], [ %niter1600.next.1, %for.body.i ]
  %arrayidx.i = getelementptr inbounds ptr, ptr %236, i64 %indvars.iv40.i
  %241 = load ptr, ptr %arrayidx.i, align 8
  %top_field.i = getelementptr inbounds i8, ptr %241, i64 56
  %242 = load ptr, ptr %top_field.i, align 8
  %idxprom2.i = sext i8 %240 to i64
  %arrayidx3.i = getelementptr inbounds ptr, ptr %238, i64 %idxprom2.i
  store ptr %242, ptr %arrayidx3.i, align 8
  %243 = load i8, ptr %listXsize606, align 1
  %inc.i = add i8 %243, 1
  store i8 %inc.i, ptr %listXsize606, align 1
  %indvars.iv.next41.i = or disjoint i64 %indvars.iv40.i, 1
  %arrayidx.i.1 = getelementptr inbounds ptr, ptr %236, i64 %indvars.iv.next41.i
  %244 = load ptr, ptr %arrayidx.i.1, align 8
  %top_field.i.1 = getelementptr inbounds i8, ptr %244, i64 56
  %245 = load ptr, ptr %top_field.i.1, align 8
  %idxprom2.i.1 = sext i8 %inc.i to i64
  %arrayidx3.i.1 = getelementptr inbounds ptr, ptr %238, i64 %idxprom2.i.1
  store ptr %245, ptr %arrayidx3.i.1, align 8
  %246 = load i8, ptr %listXsize606, align 1
  %inc.i.1 = add i8 %246, 1
  store i8 %inc.i.1, ptr %listXsize606, align 1
  %indvars.iv.next41.i.1 = add nuw nsw i64 %indvars.iv40.i, 2
  %niter1600.next.1 = add i64 %niter1600, 2
  %niter1600.ncmp.1 = icmp eq i64 %niter1600.next.1, %unroll_iter1599
  br i1 %niter1600.ncmp.1, label %if.end814.loopexit1566.unr-lcssa, label %for.body.i

if.then7.i:                                       ; preds = %if.else707
  %cmp936.i = icmp sgt i32 %237, 0
  br i1 %cmp936.i, label %for.body11.preheader.i, label %if.end814

for.body11.preheader.i:                           ; preds = %if.then7.i
  %wide.trip.count.i = zext nneg i32 %237 to i64
  %.pre.i = load i8, ptr %listXsize606, align 1
  %xtraiter1590 = and i64 %wide.trip.count.i, 1
  %247 = icmp eq i32 %237, 1
  br i1 %247, label %if.end814.loopexit1567.unr-lcssa, label %for.body11.preheader.i.new

for.body11.preheader.i.new:                       ; preds = %for.body11.preheader.i
  %unroll_iter1593 = and i64 %wide.trip.count.i, 2147483646
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i, %for.body11.preheader.i.new
  %248 = phi i8 [ %.pre.i, %for.body11.preheader.i.new ], [ %inc17.i.1, %for.body11.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body11.preheader.i.new ], [ %indvars.iv.next.i.1, %for.body11.i ]
  %niter1594 = phi i64 [ 0, %for.body11.preheader.i.new ], [ %niter1594.next.1, %for.body11.i ]
  %arrayidx13.i = getelementptr inbounds ptr, ptr %236, i64 %indvars.iv.i
  %249 = load ptr, ptr %arrayidx13.i, align 8
  %bottom_field.i = getelementptr inbounds i8, ptr %249, i64 64
  %250 = load ptr, ptr %bottom_field.i, align 8
  %idxprom15.i = sext i8 %248 to i64
  %arrayidx16.i = getelementptr inbounds ptr, ptr %238, i64 %idxprom15.i
  store ptr %250, ptr %arrayidx16.i, align 8
  %251 = load i8, ptr %listXsize606, align 1
  %inc17.i = add i8 %251, 1
  store i8 %inc17.i, ptr %listXsize606, align 1
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %arrayidx13.i.1 = getelementptr inbounds ptr, ptr %236, i64 %indvars.iv.next.i
  %252 = load ptr, ptr %arrayidx13.i.1, align 8
  %bottom_field.i.1 = getelementptr inbounds i8, ptr %252, i64 64
  %253 = load ptr, ptr %bottom_field.i.1, align 8
  %idxprom15.i.1 = sext i8 %inc17.i to i64
  %arrayidx16.i.1 = getelementptr inbounds ptr, ptr %238, i64 %idxprom15.i.1
  store ptr %253, ptr %arrayidx16.i.1, align 8
  %254 = load i8, ptr %listXsize606, align 1
  %inc17.i.1 = add i8 %254, 1
  store i8 %inc17.i.1, ptr %listXsize606, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter1594.next.1 = add i64 %niter1594, 2
  %niter1594.ncmp.1 = icmp eq i64 %niter1594.next.1, %unroll_iter1593
  br i1 %niter1594.ncmp.1, label %if.end814.loopexit1567.unr-lcssa, label %for.body11.i

if.else719:                                       ; preds = %if.then661
  %size720 = getelementptr inbounds i8, ptr %1, i64 40
  %255 = load i32, ptr %size720, align 8
  %conv721 = zext i32 %255 to i64
  %call722 = tail call noalias ptr @calloc(i64 noundef %conv721, i64 noundef 8) #11
  %fs_listinterview0723 = getelementptr inbounds i8, ptr %currSlice, i64 13320
  store ptr %call722, ptr %fs_listinterview0723, align 8
  %cmp725 = icmp eq ptr %call722, null
  br i1 %cmp725, label %if.then727, label %if.end728

if.then727:                                       ; preds = %if.else719
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #10
  br label %if.end728

if.end728:                                        ; preds = %if.then727, %if.else719
  %256 = load i32, ptr %size720, align 8
  %conv730 = zext i32 %256 to i64
  %call731 = tail call noalias ptr @calloc(i64 noundef %conv730, i64 noundef 8) #11
  %fs_listinterview1 = getelementptr inbounds i8, ptr %currSlice, i64 13328
  store ptr %call731, ptr %fs_listinterview1, align 8
  %cmp733 = icmp eq ptr %call731, null
  br i1 %cmp733, label %if.then735, label %if.end736

if.then735:                                       ; preds = %if.end728
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #10
  br label %if.end736

if.end736:                                        ; preds = %if.then735, %if.end728
  %structure740 = getelementptr inbounds i8, ptr %currSlice, i64 184
  %257 = load i32, ptr %structure740, align 8
  %cmp741 = icmp eq i32 %257, 0
  br i1 %cmp741, label %if.then743, label %if.else791

if.then743:                                       ; preds = %if.end736
  %258 = load i8, ptr %listXsize606, align 8
  %259 = load ptr, ptr %fs_listinterview0723, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, ptr noundef %259, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %260 = load ptr, ptr %fs_listinterview1, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1, ptr noundef %260, ptr noundef nonnull %listinterviewidx1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %261 = load i32, ptr %listinterviewidx0, align 4
  %cmp7501402.not = icmp eq i32 %261, 0
  br i1 %cmp7501402.not, label %for.end764, label %for.body752.lr.ph

for.body752.lr.ph:                                ; preds = %if.then743
  %listX757 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %262 = sext i8 %258 to i64
  br label %for.body752

for.body752:                                      ; preds = %for.body752.lr.ph, %for.body752
  %indvars.iv1482 = phi i64 [ %262, %for.body752.lr.ph ], [ %indvars.iv.next1483, %for.body752 ]
  %indvars.iv1480 = phi i64 [ 0, %for.body752.lr.ph ], [ %indvars.iv.next1481, %for.body752 ]
  %263 = load ptr, ptr %fs_listinterview0723, align 8
  %arrayidx755 = getelementptr inbounds ptr, ptr %263, i64 %indvars.iv1480
  %264 = load ptr, ptr %arrayidx755, align 8
  %frame756 = getelementptr inbounds i8, ptr %264, i64 48
  %265 = load ptr, ptr %frame756, align 8
  %266 = load ptr, ptr %listX757, align 8
  %indvars.iv.next1483 = add nsw i64 %indvars.iv1482, 1
  %arrayidx761 = getelementptr inbounds ptr, ptr %266, i64 %indvars.iv1482
  store ptr %265, ptr %arrayidx761, align 8
  %indvars.iv.next1481 = add nuw nsw i64 %indvars.iv1480, 1
  %267 = load i32, ptr %listinterviewidx0, align 4
  %268 = zext i32 %267 to i64
  %cmp750 = icmp ult i64 %indvars.iv.next1481, %268
  br i1 %cmp750, label %for.body752, label %for.end764.loopexit

for.end764.loopexit:                              ; preds = %for.body752
  %269 = trunc i64 %indvars.iv.next1483 to i8
  br label %for.end764

for.end764:                                       ; preds = %for.end764.loopexit, %if.then743
  %list0idx.17.lcssa = phi i8 [ %258, %if.then743 ], [ %269, %for.end764.loopexit ]
  store i8 %list0idx.17.lcssa, ptr %listXsize606, align 8
  %270 = load i8, ptr %arrayidx610, align 1
  %271 = load i32, ptr %listinterviewidx1, align 8
  %cmp7731406.not = icmp eq i32 %271, 0
  br i1 %cmp7731406.not, label %for.end787, label %for.body775.lr.ph

for.body775.lr.ph:                                ; preds = %for.end764
  %arrayidx781 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %272 = sext i8 %270 to i64
  br label %for.body775

for.body775:                                      ; preds = %for.body775.lr.ph, %for.body775
  %indvars.iv1489 = phi i64 [ %272, %for.body775.lr.ph ], [ %indvars.iv.next1490, %for.body775 ]
  %indvars.iv1487 = phi i64 [ 0, %for.body775.lr.ph ], [ %indvars.iv.next1488, %for.body775 ]
  %273 = load ptr, ptr %fs_listinterview1, align 8
  %arrayidx778 = getelementptr inbounds ptr, ptr %273, i64 %indvars.iv1487
  %274 = load ptr, ptr %arrayidx778, align 8
  %frame779 = getelementptr inbounds i8, ptr %274, i64 48
  %275 = load ptr, ptr %frame779, align 8
  %276 = load ptr, ptr %arrayidx781, align 8
  %indvars.iv.next1490 = add nsw i64 %indvars.iv1489, 1
  %arrayidx784 = getelementptr inbounds ptr, ptr %276, i64 %indvars.iv1489
  store ptr %275, ptr %arrayidx784, align 8
  %indvars.iv.next1488 = add nuw nsw i64 %indvars.iv1487, 1
  %277 = load i32, ptr %listinterviewidx1, align 8
  %278 = zext i32 %277 to i64
  %cmp773 = icmp ult i64 %indvars.iv.next1488, %278
  br i1 %cmp773, label %for.body775, label %for.end787.loopexit

for.end787.loopexit:                              ; preds = %for.body775
  %279 = trunc i64 %indvars.iv.next1490 to i8
  br label %for.end787

for.end787:                                       ; preds = %for.end787.loopexit, %for.end764
  %list0idx.18.lcssa = phi i8 [ %270, %for.end764 ], [ %279, %for.end787.loopexit ]
  store i8 %list0idx.18.lcssa, ptr %arrayidx610, align 1
  br label %if.end814

if.else791:                                       ; preds = %if.end736
  %280 = load ptr, ptr %fs_listinterview0723, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef %257, i32 noundef 0, ptr noundef %280, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %281 = load i32, ptr %structure740, align 8
  %282 = load ptr, ptr %fs_listinterview0723, align 8
  %283 = load i32, ptr %listinterviewidx0, align 4
  %listX798 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %284 = load ptr, ptr %listX798, align 8
  switch i32 %281, label %gen_pic_list_from_frame_interview_list.exit1314 [
    i32 1, label %for.cond.preheader.i1300
    i32 2, label %if.then7.i1286
  ]

for.cond.preheader.i1300:                         ; preds = %if.else791
  %cmp134.i1301 = icmp sgt i32 %283, 0
  br i1 %cmp134.i1301, label %for.body.preheader.i1302, label %gen_pic_list_from_frame_interview_list.exit1314

for.body.preheader.i1302:                         ; preds = %for.cond.preheader.i1300
  %wide.trip.count43.i1303 = zext nneg i32 %283 to i64
  %.pre45.i1304 = load i8, ptr %listXsize606, align 1
  %xtraiter1607 = and i64 %wide.trip.count43.i1303, 1
  %285 = icmp eq i32 %283, 1
  br i1 %285, label %gen_pic_list_from_frame_interview_list.exit1314.loopexit.unr-lcssa, label %for.body.preheader.i1302.new

for.body.preheader.i1302.new:                     ; preds = %for.body.preheader.i1302
  %unroll_iter1611 = and i64 %wide.trip.count43.i1303, 2147483646
  br label %for.body.i1305

for.body.i1305:                                   ; preds = %for.body.i1305, %for.body.preheader.i1302.new
  %286 = phi i8 [ %.pre45.i1304, %for.body.preheader.i1302.new ], [ %inc.i1311.1, %for.body.i1305 ]
  %indvars.iv40.i1306 = phi i64 [ 0, %for.body.preheader.i1302.new ], [ %indvars.iv.next41.i1312.1, %for.body.i1305 ]
  %niter1612 = phi i64 [ 0, %for.body.preheader.i1302.new ], [ %niter1612.next.1, %for.body.i1305 ]
  %arrayidx.i1307 = getelementptr inbounds ptr, ptr %282, i64 %indvars.iv40.i1306
  %287 = load ptr, ptr %arrayidx.i1307, align 8
  %top_field.i1308 = getelementptr inbounds i8, ptr %287, i64 56
  %288 = load ptr, ptr %top_field.i1308, align 8
  %idxprom2.i1309 = sext i8 %286 to i64
  %arrayidx3.i1310 = getelementptr inbounds ptr, ptr %284, i64 %idxprom2.i1309
  store ptr %288, ptr %arrayidx3.i1310, align 8
  %289 = load i8, ptr %listXsize606, align 1
  %inc.i1311 = add i8 %289, 1
  store i8 %inc.i1311, ptr %listXsize606, align 1
  %indvars.iv.next41.i1312 = or disjoint i64 %indvars.iv40.i1306, 1
  %arrayidx.i1307.1 = getelementptr inbounds ptr, ptr %282, i64 %indvars.iv.next41.i1312
  %290 = load ptr, ptr %arrayidx.i1307.1, align 8
  %top_field.i1308.1 = getelementptr inbounds i8, ptr %290, i64 56
  %291 = load ptr, ptr %top_field.i1308.1, align 8
  %idxprom2.i1309.1 = sext i8 %inc.i1311 to i64
  %arrayidx3.i1310.1 = getelementptr inbounds ptr, ptr %284, i64 %idxprom2.i1309.1
  store ptr %291, ptr %arrayidx3.i1310.1, align 8
  %292 = load i8, ptr %listXsize606, align 1
  %inc.i1311.1 = add i8 %292, 1
  store i8 %inc.i1311.1, ptr %listXsize606, align 1
  %indvars.iv.next41.i1312.1 = add nuw nsw i64 %indvars.iv40.i1306, 2
  %niter1612.next.1 = add i64 %niter1612, 2
  %niter1612.ncmp.1 = icmp eq i64 %niter1612.next.1, %unroll_iter1611
  br i1 %niter1612.ncmp.1, label %gen_pic_list_from_frame_interview_list.exit1314.loopexit.unr-lcssa, label %for.body.i1305

if.then7.i1286:                                   ; preds = %if.else791
  %cmp936.i1287 = icmp sgt i32 %283, 0
  br i1 %cmp936.i1287, label %for.body11.preheader.i1288, label %gen_pic_list_from_frame_interview_list.exit1314

for.body11.preheader.i1288:                       ; preds = %if.then7.i1286
  %wide.trip.count.i1289 = zext nneg i32 %283 to i64
  %.pre.i1290 = load i8, ptr %listXsize606, align 1
  %xtraiter1601 = and i64 %wide.trip.count.i1289, 1
  %293 = icmp eq i32 %283, 1
  br i1 %293, label %gen_pic_list_from_frame_interview_list.exit1314.loopexit1565.unr-lcssa, label %for.body11.preheader.i1288.new

for.body11.preheader.i1288.new:                   ; preds = %for.body11.preheader.i1288
  %unroll_iter1605 = and i64 %wide.trip.count.i1289, 2147483646
  br label %for.body11.i1291

for.body11.i1291:                                 ; preds = %for.body11.i1291, %for.body11.preheader.i1288.new
  %294 = phi i8 [ %.pre.i1290, %for.body11.preheader.i1288.new ], [ %inc17.i1297.1, %for.body11.i1291 ]
  %indvars.iv.i1292 = phi i64 [ 0, %for.body11.preheader.i1288.new ], [ %indvars.iv.next.i1298.1, %for.body11.i1291 ]
  %niter1606 = phi i64 [ 0, %for.body11.preheader.i1288.new ], [ %niter1606.next.1, %for.body11.i1291 ]
  %arrayidx13.i1293 = getelementptr inbounds ptr, ptr %282, i64 %indvars.iv.i1292
  %295 = load ptr, ptr %arrayidx13.i1293, align 8
  %bottom_field.i1294 = getelementptr inbounds i8, ptr %295, i64 64
  %296 = load ptr, ptr %bottom_field.i1294, align 8
  %idxprom15.i1295 = sext i8 %294 to i64
  %arrayidx16.i1296 = getelementptr inbounds ptr, ptr %284, i64 %idxprom15.i1295
  store ptr %296, ptr %arrayidx16.i1296, align 8
  %297 = load i8, ptr %listXsize606, align 1
  %inc17.i1297 = add i8 %297, 1
  store i8 %inc17.i1297, ptr %listXsize606, align 1
  %indvars.iv.next.i1298 = or disjoint i64 %indvars.iv.i1292, 1
  %arrayidx13.i1293.1 = getelementptr inbounds ptr, ptr %282, i64 %indvars.iv.next.i1298
  %298 = load ptr, ptr %arrayidx13.i1293.1, align 8
  %bottom_field.i1294.1 = getelementptr inbounds i8, ptr %298, i64 64
  %299 = load ptr, ptr %bottom_field.i1294.1, align 8
  %idxprom15.i1295.1 = sext i8 %inc17.i1297 to i64
  %arrayidx16.i1296.1 = getelementptr inbounds ptr, ptr %284, i64 %idxprom15.i1295.1
  store ptr %299, ptr %arrayidx16.i1296.1, align 8
  %300 = load i8, ptr %listXsize606, align 1
  %inc17.i1297.1 = add i8 %300, 1
  store i8 %inc17.i1297.1, ptr %listXsize606, align 1
  %indvars.iv.next.i1298.1 = add nuw nsw i64 %indvars.iv.i1292, 2
  %niter1606.next.1 = add i64 %niter1606, 2
  %niter1606.ncmp.1 = icmp eq i64 %niter1606.next.1, %unroll_iter1605
  br i1 %niter1606.ncmp.1, label %gen_pic_list_from_frame_interview_list.exit1314.loopexit1565.unr-lcssa, label %for.body11.i1291

gen_pic_list_from_frame_interview_list.exit1314.loopexit.unr-lcssa: ; preds = %for.body.i1305, %for.body.preheader.i1302
  %.unr1609 = phi i8 [ %.pre45.i1304, %for.body.preheader.i1302 ], [ %inc.i1311.1, %for.body.i1305 ]
  %indvars.iv40.i1306.unr = phi i64 [ 0, %for.body.preheader.i1302 ], [ %indvars.iv.next41.i1312.1, %for.body.i1305 ]
  %lcmp.mod1610.not = icmp eq i64 %xtraiter1607, 0
  br i1 %lcmp.mod1610.not, label %gen_pic_list_from_frame_interview_list.exit1314, label %for.body.i1305.epil

for.body.i1305.epil:                              ; preds = %gen_pic_list_from_frame_interview_list.exit1314.loopexit.unr-lcssa
  %arrayidx.i1307.epil = getelementptr inbounds ptr, ptr %282, i64 %indvars.iv40.i1306.unr
  %301 = load ptr, ptr %arrayidx.i1307.epil, align 8
  %top_field.i1308.epil = getelementptr inbounds i8, ptr %301, i64 56
  %302 = load ptr, ptr %top_field.i1308.epil, align 8
  %idxprom2.i1309.epil = sext i8 %.unr1609 to i64
  %arrayidx3.i1310.epil = getelementptr inbounds ptr, ptr %284, i64 %idxprom2.i1309.epil
  store ptr %302, ptr %arrayidx3.i1310.epil, align 8
  %303 = load i8, ptr %listXsize606, align 1
  %inc.i1311.epil = add i8 %303, 1
  store i8 %inc.i1311.epil, ptr %listXsize606, align 1
  br label %gen_pic_list_from_frame_interview_list.exit1314

gen_pic_list_from_frame_interview_list.exit1314.loopexit1565.unr-lcssa: ; preds = %for.body11.i1291, %for.body11.preheader.i1288
  %.unr1603 = phi i8 [ %.pre.i1290, %for.body11.preheader.i1288 ], [ %inc17.i1297.1, %for.body11.i1291 ]
  %indvars.iv.i1292.unr = phi i64 [ 0, %for.body11.preheader.i1288 ], [ %indvars.iv.next.i1298.1, %for.body11.i1291 ]
  %lcmp.mod1604.not = icmp eq i64 %xtraiter1601, 0
  br i1 %lcmp.mod1604.not, label %gen_pic_list_from_frame_interview_list.exit1314, label %for.body11.i1291.epil

for.body11.i1291.epil:                            ; preds = %gen_pic_list_from_frame_interview_list.exit1314.loopexit1565.unr-lcssa
  %arrayidx13.i1293.epil = getelementptr inbounds ptr, ptr %282, i64 %indvars.iv.i1292.unr
  %304 = load ptr, ptr %arrayidx13.i1293.epil, align 8
  %bottom_field.i1294.epil = getelementptr inbounds i8, ptr %304, i64 64
  %305 = load ptr, ptr %bottom_field.i1294.epil, align 8
  %idxprom15.i1295.epil = sext i8 %.unr1603 to i64
  %arrayidx16.i1296.epil = getelementptr inbounds ptr, ptr %284, i64 %idxprom15.i1295.epil
  store ptr %305, ptr %arrayidx16.i1296.epil, align 8
  %306 = load i8, ptr %listXsize606, align 1
  %inc17.i1297.epil = add i8 %306, 1
  store i8 %inc17.i1297.epil, ptr %listXsize606, align 1
  br label %gen_pic_list_from_frame_interview_list.exit1314

gen_pic_list_from_frame_interview_list.exit1314:  ; preds = %for.body11.i1291.epil, %gen_pic_list_from_frame_interview_list.exit1314.loopexit1565.unr-lcssa, %for.body.i1305.epil, %gen_pic_list_from_frame_interview_list.exit1314.loopexit.unr-lcssa, %if.else791, %for.cond.preheader.i1300, %if.then7.i1286
  %307 = load i32, ptr %structure740, align 8
  %308 = load ptr, ptr %fs_listinterview1, align 8
  tail call void @append_interview_list(ptr noundef %1, i32 noundef %307, i32 noundef 1, ptr noundef %308, ptr noundef nonnull %listinterviewidx1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  %309 = load i32, ptr %structure740, align 8
  %310 = load ptr, ptr %fs_listinterview1, align 8
  %311 = load i32, ptr %listinterviewidx1, align 8
  %arrayidx809 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %312 = load ptr, ptr %arrayidx809, align 8
  switch i32 %309, label %if.end814 [
    i32 1, label %for.cond.preheader.i1329
    i32 2, label %if.then7.i1315
  ]

for.cond.preheader.i1329:                         ; preds = %gen_pic_list_from_frame_interview_list.exit1314
  %cmp134.i1330 = icmp sgt i32 %311, 0
  br i1 %cmp134.i1330, label %for.body.preheader.i1331, label %if.end814

for.body.preheader.i1331:                         ; preds = %for.cond.preheader.i1329
  %wide.trip.count43.i1332 = zext nneg i32 %311 to i64
  %.pre45.i1333 = load i8, ptr %arrayidx610, align 1
  %xtraiter1619 = and i64 %wide.trip.count43.i1332, 1
  %313 = icmp eq i32 %311, 1
  br i1 %313, label %if.end814.loopexit.unr-lcssa, label %for.body.preheader.i1331.new

for.body.preheader.i1331.new:                     ; preds = %for.body.preheader.i1331
  %unroll_iter1623 = and i64 %wide.trip.count43.i1332, 2147483646
  br label %for.body.i1334

for.body.i1334:                                   ; preds = %for.body.i1334, %for.body.preheader.i1331.new
  %314 = phi i8 [ %.pre45.i1333, %for.body.preheader.i1331.new ], [ %inc.i1340.1, %for.body.i1334 ]
  %indvars.iv40.i1335 = phi i64 [ 0, %for.body.preheader.i1331.new ], [ %indvars.iv.next41.i1341.1, %for.body.i1334 ]
  %niter1624 = phi i64 [ 0, %for.body.preheader.i1331.new ], [ %niter1624.next.1, %for.body.i1334 ]
  %arrayidx.i1336 = getelementptr inbounds ptr, ptr %310, i64 %indvars.iv40.i1335
  %315 = load ptr, ptr %arrayidx.i1336, align 8
  %top_field.i1337 = getelementptr inbounds i8, ptr %315, i64 56
  %316 = load ptr, ptr %top_field.i1337, align 8
  %idxprom2.i1338 = sext i8 %314 to i64
  %arrayidx3.i1339 = getelementptr inbounds ptr, ptr %312, i64 %idxprom2.i1338
  store ptr %316, ptr %arrayidx3.i1339, align 8
  %317 = load i8, ptr %arrayidx610, align 1
  %inc.i1340 = add i8 %317, 1
  store i8 %inc.i1340, ptr %arrayidx610, align 1
  %indvars.iv.next41.i1341 = or disjoint i64 %indvars.iv40.i1335, 1
  %arrayidx.i1336.1 = getelementptr inbounds ptr, ptr %310, i64 %indvars.iv.next41.i1341
  %318 = load ptr, ptr %arrayidx.i1336.1, align 8
  %top_field.i1337.1 = getelementptr inbounds i8, ptr %318, i64 56
  %319 = load ptr, ptr %top_field.i1337.1, align 8
  %idxprom2.i1338.1 = sext i8 %inc.i1340 to i64
  %arrayidx3.i1339.1 = getelementptr inbounds ptr, ptr %312, i64 %idxprom2.i1338.1
  store ptr %319, ptr %arrayidx3.i1339.1, align 8
  %320 = load i8, ptr %arrayidx610, align 1
  %inc.i1340.1 = add i8 %320, 1
  store i8 %inc.i1340.1, ptr %arrayidx610, align 1
  %indvars.iv.next41.i1341.1 = add nuw nsw i64 %indvars.iv40.i1335, 2
  %niter1624.next.1 = add i64 %niter1624, 2
  %niter1624.ncmp.1 = icmp eq i64 %niter1624.next.1, %unroll_iter1623
  br i1 %niter1624.ncmp.1, label %if.end814.loopexit.unr-lcssa, label %for.body.i1334

if.then7.i1315:                                   ; preds = %gen_pic_list_from_frame_interview_list.exit1314
  %cmp936.i1316 = icmp sgt i32 %311, 0
  br i1 %cmp936.i1316, label %for.body11.preheader.i1317, label %if.end814

for.body11.preheader.i1317:                       ; preds = %if.then7.i1315
  %wide.trip.count.i1318 = zext nneg i32 %311 to i64
  %.pre.i1319 = load i8, ptr %arrayidx610, align 1
  %xtraiter1613 = and i64 %wide.trip.count.i1318, 1
  %321 = icmp eq i32 %311, 1
  br i1 %321, label %if.end814.loopexit1564.unr-lcssa, label %for.body11.preheader.i1317.new

for.body11.preheader.i1317.new:                   ; preds = %for.body11.preheader.i1317
  %unroll_iter1617 = and i64 %wide.trip.count.i1318, 2147483646
  br label %for.body11.i1320

for.body11.i1320:                                 ; preds = %for.body11.i1320, %for.body11.preheader.i1317.new
  %322 = phi i8 [ %.pre.i1319, %for.body11.preheader.i1317.new ], [ %inc17.i1326.1, %for.body11.i1320 ]
  %indvars.iv.i1321 = phi i64 [ 0, %for.body11.preheader.i1317.new ], [ %indvars.iv.next.i1327.1, %for.body11.i1320 ]
  %niter1618 = phi i64 [ 0, %for.body11.preheader.i1317.new ], [ %niter1618.next.1, %for.body11.i1320 ]
  %arrayidx13.i1322 = getelementptr inbounds ptr, ptr %310, i64 %indvars.iv.i1321
  %323 = load ptr, ptr %arrayidx13.i1322, align 8
  %bottom_field.i1323 = getelementptr inbounds i8, ptr %323, i64 64
  %324 = load ptr, ptr %bottom_field.i1323, align 8
  %idxprom15.i1324 = sext i8 %322 to i64
  %arrayidx16.i1325 = getelementptr inbounds ptr, ptr %312, i64 %idxprom15.i1324
  store ptr %324, ptr %arrayidx16.i1325, align 8
  %325 = load i8, ptr %arrayidx610, align 1
  %inc17.i1326 = add i8 %325, 1
  store i8 %inc17.i1326, ptr %arrayidx610, align 1
  %indvars.iv.next.i1327 = or disjoint i64 %indvars.iv.i1321, 1
  %arrayidx13.i1322.1 = getelementptr inbounds ptr, ptr %310, i64 %indvars.iv.next.i1327
  %326 = load ptr, ptr %arrayidx13.i1322.1, align 8
  %bottom_field.i1323.1 = getelementptr inbounds i8, ptr %326, i64 64
  %327 = load ptr, ptr %bottom_field.i1323.1, align 8
  %idxprom15.i1324.1 = sext i8 %inc17.i1326 to i64
  %arrayidx16.i1325.1 = getelementptr inbounds ptr, ptr %312, i64 %idxprom15.i1324.1
  store ptr %327, ptr %arrayidx16.i1325.1, align 8
  %328 = load i8, ptr %arrayidx610, align 1
  %inc17.i1326.1 = add i8 %328, 1
  store i8 %inc17.i1326.1, ptr %arrayidx610, align 1
  %indvars.iv.next.i1327.1 = add nuw nsw i64 %indvars.iv.i1321, 2
  %niter1618.next.1 = add i64 %niter1618, 2
  %niter1618.ncmp.1 = icmp eq i64 %niter1618.next.1, %unroll_iter1617
  br i1 %niter1618.ncmp.1, label %if.end814.loopexit1564.unr-lcssa, label %for.body11.i1320

if.end814.loopexit.unr-lcssa:                     ; preds = %for.body.i1334, %for.body.preheader.i1331
  %.unr1621 = phi i8 [ %.pre45.i1333, %for.body.preheader.i1331 ], [ %inc.i1340.1, %for.body.i1334 ]
  %indvars.iv40.i1335.unr = phi i64 [ 0, %for.body.preheader.i1331 ], [ %indvars.iv.next41.i1341.1, %for.body.i1334 ]
  %lcmp.mod1622.not = icmp eq i64 %xtraiter1619, 0
  br i1 %lcmp.mod1622.not, label %if.end814, label %for.body.i1334.epil

for.body.i1334.epil:                              ; preds = %if.end814.loopexit.unr-lcssa
  %arrayidx.i1336.epil = getelementptr inbounds ptr, ptr %310, i64 %indvars.iv40.i1335.unr
  %329 = load ptr, ptr %arrayidx.i1336.epil, align 8
  %top_field.i1337.epil = getelementptr inbounds i8, ptr %329, i64 56
  %330 = load ptr, ptr %top_field.i1337.epil, align 8
  %idxprom2.i1338.epil = sext i8 %.unr1621 to i64
  %arrayidx3.i1339.epil = getelementptr inbounds ptr, ptr %312, i64 %idxprom2.i1338.epil
  store ptr %330, ptr %arrayidx3.i1339.epil, align 8
  %331 = load i8, ptr %arrayidx610, align 1
  %inc.i1340.epil = add i8 %331, 1
  store i8 %inc.i1340.epil, ptr %arrayidx610, align 1
  br label %if.end814

if.end814.loopexit1564.unr-lcssa:                 ; preds = %for.body11.i1320, %for.body11.preheader.i1317
  %.unr1615 = phi i8 [ %.pre.i1319, %for.body11.preheader.i1317 ], [ %inc17.i1326.1, %for.body11.i1320 ]
  %indvars.iv.i1321.unr = phi i64 [ 0, %for.body11.preheader.i1317 ], [ %indvars.iv.next.i1327.1, %for.body11.i1320 ]
  %lcmp.mod1616.not = icmp eq i64 %xtraiter1613, 0
  br i1 %lcmp.mod1616.not, label %if.end814, label %for.body11.i1320.epil

for.body11.i1320.epil:                            ; preds = %if.end814.loopexit1564.unr-lcssa
  %arrayidx13.i1322.epil = getelementptr inbounds ptr, ptr %310, i64 %indvars.iv.i1321.unr
  %332 = load ptr, ptr %arrayidx13.i1322.epil, align 8
  %bottom_field.i1323.epil = getelementptr inbounds i8, ptr %332, i64 64
  %333 = load ptr, ptr %bottom_field.i1323.epil, align 8
  %idxprom15.i1324.epil = sext i8 %.unr1615 to i64
  %arrayidx16.i1325.epil = getelementptr inbounds ptr, ptr %312, i64 %idxprom15.i1324.epil
  store ptr %333, ptr %arrayidx16.i1325.epil, align 8
  %334 = load i8, ptr %arrayidx610, align 1
  %inc17.i1326.epil = add i8 %334, 1
  store i8 %inc17.i1326.epil, ptr %arrayidx610, align 1
  br label %if.end814

if.end814.loopexit1566.unr-lcssa:                 ; preds = %for.body.i, %for.body.preheader.i
  %.unr1597 = phi i8 [ %.pre45.i, %for.body.preheader.i ], [ %inc.i.1, %for.body.i ]
  %indvars.iv40.i.unr = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next41.i.1, %for.body.i ]
  %lcmp.mod1598.not = icmp eq i64 %xtraiter1595, 0
  br i1 %lcmp.mod1598.not, label %if.end814, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %if.end814.loopexit1566.unr-lcssa
  %arrayidx.i.epil = getelementptr inbounds ptr, ptr %236, i64 %indvars.iv40.i.unr
  %335 = load ptr, ptr %arrayidx.i.epil, align 8
  %top_field.i.epil = getelementptr inbounds i8, ptr %335, i64 56
  %336 = load ptr, ptr %top_field.i.epil, align 8
  %idxprom2.i.epil = sext i8 %.unr1597 to i64
  %arrayidx3.i.epil = getelementptr inbounds ptr, ptr %238, i64 %idxprom2.i.epil
  store ptr %336, ptr %arrayidx3.i.epil, align 8
  %337 = load i8, ptr %listXsize606, align 1
  %inc.i.epil = add i8 %337, 1
  store i8 %inc.i.epil, ptr %listXsize606, align 1
  br label %if.end814

if.end814.loopexit1567.unr-lcssa:                 ; preds = %for.body11.i, %for.body11.preheader.i
  %.unr = phi i8 [ %.pre.i, %for.body11.preheader.i ], [ %inc17.i.1, %for.body11.i ]
  %indvars.iv.i.unr = phi i64 [ 0, %for.body11.preheader.i ], [ %indvars.iv.next.i.1, %for.body11.i ]
  %lcmp.mod1592.not = icmp eq i64 %xtraiter1590, 0
  br i1 %lcmp.mod1592.not, label %if.end814, label %for.body11.i.epil

for.body11.i.epil:                                ; preds = %if.end814.loopexit1567.unr-lcssa
  %arrayidx13.i.epil = getelementptr inbounds ptr, ptr %236, i64 %indvars.iv.i.unr
  %338 = load ptr, ptr %arrayidx13.i.epil, align 8
  %bottom_field.i.epil = getelementptr inbounds i8, ptr %338, i64 64
  %339 = load ptr, ptr %bottom_field.i.epil, align 8
  %idxprom15.i.epil = sext i8 %.unr to i64
  %arrayidx16.i.epil = getelementptr inbounds ptr, ptr %238, i64 %idxprom15.i.epil
  store ptr %339, ptr %arrayidx16.i.epil, align 8
  %340 = load i8, ptr %listXsize606, align 1
  %inc17.i.epil = add i8 %340, 1
  store i8 %inc17.i.epil, ptr %listXsize606, align 1
  br label %if.end814

if.end814:                                        ; preds = %for.body11.i.epil, %if.end814.loopexit1567.unr-lcssa, %for.body.i.epil, %if.end814.loopexit1566.unr-lcssa, %for.body11.i1320.epil, %if.end814.loopexit1564.unr-lcssa, %for.body.i1334.epil, %if.end814.loopexit.unr-lcssa, %if.then7.i1315, %for.cond.preheader.i1329, %gen_pic_list_from_frame_interview_list.exit1314, %if.then7.i, %for.cond.preheader.i, %if.else707, %for.end703, %for.end787, %if.end658
  %341 = load i8, ptr %listXsize606, align 8
  %conv817 = sext i8 %341 to i32
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  %342 = load i32, ptr %num_ref_idx_active, align 8
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %conv817, i32 %342)
  %conv820 = trunc i32 %cond.i to i8
  store i8 %conv820, ptr %listXsize606, align 8
  %343 = load i8, ptr %arrayidx610, align 1
  %conv825 = sext i8 %343 to i32
  %arrayidx827 = getelementptr inbounds i8, ptr %currSlice, i64 140
  %344 = load i32, ptr %arrayidx827, align 4
  %cond.i1344 = tail call noundef i32 @llvm.smin.i32(i32 %conv825, i32 %344)
  %conv829 = trunc i32 %cond.i1344 to i8
  store i8 %conv829, ptr %arrayidx610, align 1
  %sext = shl i32 %cond.i, 24
  %conv834 = ashr exact i32 %sext, 24
  %cmp8361410 = icmp ult i32 %conv834, 33
  br i1 %cmp8361410, label %for.body838.lr.ph, label %for.end845

for.body838.lr.ph:                                ; preds = %if.end814
  %no_reference_picture = getelementptr inbounds i8, ptr %0, i64 856488
  %listX839 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %345 = zext nneg i32 %conv834 to i64
  %.pre1518 = load ptr, ptr %no_reference_picture, align 8
  br label %for.body838

for.body838:                                      ; preds = %for.body838.lr.ph, %for.body838
  %indvars.iv1494 = phi i64 [ %345, %for.body838.lr.ph ], [ %indvars.iv.next1495, %for.body838 ]
  %346 = load ptr, ptr %listX839, align 8
  %arrayidx842 = getelementptr inbounds ptr, ptr %346, i64 %indvars.iv1494
  store ptr %.pre1518, ptr %arrayidx842, align 8
  %indvars.iv.next1495 = add nuw nsw i64 %indvars.iv1494, 1
  %347 = and i64 %indvars.iv.next1495, 4294967295
  %exitcond1497.not = icmp eq i64 %347, 33
  br i1 %exitcond1497.not, label %for.end845.loopexit, label %for.body838

for.end845.loopexit:                              ; preds = %for.body838
  %.pre1519 = load i8, ptr %arrayidx610, align 1
  br label %for.end845

for.end845:                                       ; preds = %for.end845.loopexit, %if.end814
  %348 = phi i8 [ %.pre1519, %for.end845.loopexit ], [ %conv829, %if.end814 ]
  %cmp8501412 = icmp ult i8 %348, 33
  br i1 %cmp8501412, label %for.body852.lr.ph, label %cleanup

for.body852.lr.ph:                                ; preds = %for.end845
  %no_reference_picture853 = getelementptr inbounds i8, ptr %0, i64 856488
  %arrayidx855 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %349 = zext nneg i8 %348 to i64
  %.pre1520 = load ptr, ptr %no_reference_picture853, align 8
  br label %for.body852

for.body852:                                      ; preds = %for.body852.lr.ph, %for.body852
  %indvars.iv1498 = phi i64 [ %349, %for.body852.lr.ph ], [ %indvars.iv.next1499, %for.body852 ]
  %350 = load ptr, ptr %arrayidx855, align 8
  %arrayidx857 = getelementptr inbounds ptr, ptr %350, i64 %indvars.iv1498
  store ptr %.pre1520, ptr %arrayidx857, align 8
  %indvars.iv.next1499 = add nuw nsw i64 %indvars.iv1498, 1
  %351 = and i64 %indvars.iv.next1499, 4294967295
  %exitcond1502.not = icmp eq i64 %351, 33
  br i1 %exitcond1502.not, label %cleanup, label %for.body852

cleanup:                                          ; preds = %for.body852, %for.end845, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @reorder_ref_pic_list_mvc(ptr nocapture noundef %currSlice, i32 noundef %cur_list, ptr nocapture noundef readonly %anchor_ref, ptr nocapture noundef readonly %non_anchor_ref, i32 noundef %view_id, i32 noundef %anchor_pic_flag, i32 noundef %currPOC, i32 noundef %listidx) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %reordering_of_pic_nums_idc2 = getelementptr inbounds i8, ptr %currSlice, i64 1112
  %idxprom = sext i32 %cur_list to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %reordering_of_pic_nums_idc2, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  %abs_diff_pic_num_minus13 = getelementptr inbounds i8, ptr %currSlice, i64 1128
  %arrayidx5 = getelementptr inbounds [2 x ptr], ptr %abs_diff_pic_num_minus13, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx5, align 8
  %long_term_pic_idx6 = getelementptr inbounds i8, ptr %currSlice, i64 1144
  %arrayidx8 = getelementptr inbounds [2 x ptr], ptr %long_term_pic_idx6, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx8, align 8
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  %arrayidx10 = getelementptr inbounds [2 x i32], ptr %num_ref_idx_active, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx10, align 4
  %sub = add nsw i32 %4, -1
  %abs_diff_view_idx_minus111 = getelementptr inbounds i8, ptr %currSlice, i64 1160
  %arrayidx13 = getelementptr inbounds [2 x ptr], ptr %abs_diff_view_idx_minus111, i64 0, i64 %idxprom
  %5 = load ptr, ptr %arrayidx13, align 8
  %structure = getelementptr inbounds i8, ptr %0, i64 848876
  %6 = load i32, ptr %structure, align 4
  %cmp = icmp eq i32 %6, 0
  %MaxFrameNum = getelementptr inbounds i8, ptr %0, i64 848992
  %7 = load i32, ptr %MaxFrameNum, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %frame_num = getelementptr inbounds i8, ptr %currSlice, i64 172
  %8 = load i32, ptr %frame_num, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %mul = shl nsw i32 %7, 1
  %frame_num15 = getelementptr inbounds i8, ptr %currSlice, i64 172
  %9 = load i32, ptr %frame_num15, align 4
  %mul16 = shl i32 %9, 1
  %add = or disjoint i32 %mul16, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %maxPicNum.0 = phi i32 [ %7, %if.then ], [ %mul, %if.else ]
  %currPicNum.0 = phi i32 [ %8, %if.then ], [ %add, %if.else ]
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32
  %10 = load i32, ptr %svc_extension_flag, align 8
  %cmp17 = icmp eq i32 %10, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end
  %call = tail call i32 @GetVOIdx(ptr noundef nonnull %0, i32 noundef %view_id) #10
  %call19 = tail call i32 @get_maxViewIdx(ptr noundef nonnull %0, i32 noundef %view_id, i32 noundef %anchor_pic_flag, i32 noundef 0) #10
  %11 = sext i32 %call to i64
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end
  %maxViewIdx.0 = phi i32 [ %call19, %if.then18 ], [ 0, %if.end ]
  %curr_VOIdx.0 = phi i64 [ %11, %if.then18 ], [ -1, %if.end ]
  %12 = load i32, ptr %1, align 4
  %cmp23.not275 = icmp eq i32 %12, 3
  br i1 %cmp23.not275, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end20
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  %arrayidx84 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %idxprom
  %p_Dpb.i215 = getelementptr inbounds i8, ptr %currSlice, i64 40
  %13 = sext i32 %4 to i64
  %cmp18.not.i226 = icmp eq i32 %view_id, -1
  %14 = sext i32 %sub to i64
  %tobool.not = icmp eq i32 %anchor_pic_flag, 0
  %cmp.i.i = icmp eq i32 %listidx, 0
  %listinterview_size.0.in.v.i.i = select i1 %cmp.i.i, i64 13308, i64 13312
  %listinterview_size.0.in.i.i = getelementptr inbounds i8, ptr %currSlice, i64 %listinterview_size.0.in.v.i.i
  %fs_listinterview.0.in.v.i.i = select i1 %cmp.i.i, i64 13320, i64 13328
  %fs_listinterview.0.in.i.i = getelementptr inbounds i8, ptr %currSlice, i64 %fs_listinterview.0.in.v.i.i
  %arrayidx117.arrayidx112.v = select i1 %tobool.not, ptr %non_anchor_ref, ptr %anchor_ref
  %arrayidx117.arrayidx112 = getelementptr inbounds ptr, ptr %arrayidx117.arrayidx112.v, i64 %curr_VOIdx.0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %15 = phi i32 [ %12, %for.body.lr.ph ], [ %98, %for.inc ]
  %picViewIdxLXPred.1279 = phi i32 [ -1, %for.body.lr.ph ], [ %picViewIdxLXPred.2, %for.inc ]
  %picNumLXPred.0278 = phi i32 [ %currPicNum.0, %for.body.lr.ph ], [ %picNumLXPred.1, %for.inc ]
  %refIdxLX.0276 = phi i32 [ 0, %for.body.lr.ph ], [ %refIdxLX.2, %for.inc ]
  %cmp26 = icmp sgt i32 %15, 5
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body
  %arrayidx22281 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 500) #10
  %.pr = load i32, ptr %arrayidx22281, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %for.body
  %16 = phi i32 [ %.pr, %if.then27 ], [ %15, %for.body ]
  %cmp31 = icmp slt i32 %16, 2
  br i1 %cmp31, label %if.then32, label %if.else78

if.then32:                                        ; preds = %if.end28
  %cmp35 = icmp eq i32 %16, 0
  %arrayidx38 = getelementptr inbounds i32, ptr %2, i64 %indvars.iv
  %17 = load i32, ptr %arrayidx38, align 4
  br i1 %cmp35, label %if.then36, label %if.else54

if.then36:                                        ; preds = %if.then32
  %add39.neg = xor i32 %17, -1
  %sub40 = add i32 %picNumLXPred.0278, %add39.neg
  %cmp41 = icmp slt i32 %sub40, 0
  %add47 = select i1 %cmp41, i32 %maxPicNum.0, i32 0
  %spec.select213 = add nsw i32 %add47, %sub40
  br label %if.end72

if.else54:                                        ; preds = %if.then32
  %add57 = add i32 %picNumLXPred.0278, 1
  %add58 = add i32 %add57, %17
  %cmp59.not = icmp slt i32 %add58, %maxPicNum.0
  %sub65 = select i1 %cmp59.not, i32 0, i32 %maxPicNum.0
  %spec.select214 = sub nsw i32 %add58, %sub65
  br label %if.end72

if.end72:                                         ; preds = %if.else54, %if.then36
  %picNumLXNoWrap.0 = phi i32 [ %spec.select213, %if.then36 ], [ %spec.select214, %if.else54 ]
  %cmp73 = icmp sgt i32 %picNumLXNoWrap.0, %currPicNum.0
  %sub75 = select i1 %cmp73, i32 %maxPicNum.0, i32 0
  %picNumLX.0 = sub nsw i32 %picNumLXNoWrap.0, %sub75
  %18 = load ptr, ptr %arrayidx84, align 8
  %19 = load ptr, ptr %p_Dpb.i215, align 8
  %call.i = tail call ptr @get_short_term_pic(ptr noundef %19, i32 noundef %picNumLX.0) #10
  %cmp63.not.i.not = icmp slt i32 %refIdxLX.0276, %4
  %20 = sext i32 %refIdxLX.0276 to i64
  br i1 %cmp63.not.i.not, label %for.body.i.preheader, label %for.end.i.thread

for.body.i.preheader:                             ; preds = %if.end72
  %21 = sub nsw i64 %13, %20
  %min.iters.check = icmp ult i64 %21, 8
  br i1 %min.iters.check, label %for.body.i.preheader374, label %vector.ph

for.body.i.preheader374:                          ; preds = %middle.block, %for.body.i.preheader
  %indvars.iv.i.ph = phi i64 [ %13, %for.body.i.preheader ], [ %ind.end, %middle.block ]
  br label %for.body.i

vector.ph:                                        ; preds = %for.body.i.preheader
  %n.vec = and i64 %21, -8
  %ind.end = sub nsw i64 %13, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = sub i64 %13, %index
  %22 = getelementptr ptr, ptr %18, i64 %offset.idx
  %23 = getelementptr i8, ptr %22, i64 -16
  %24 = getelementptr i8, ptr %22, i64 -32
  %25 = getelementptr i8, ptr %22, i64 -48
  %26 = getelementptr i8, ptr %22, i64 -64
  %wide.load = load <2 x ptr>, ptr %23, align 8
  %wide.load313 = load <2 x ptr>, ptr %24, align 8
  %wide.load315 = load <2 x ptr>, ptr %25, align 8
  %wide.load317 = load <2 x ptr>, ptr %26, align 8
  %27 = getelementptr i8, ptr %22, i64 -8
  %28 = getelementptr i8, ptr %22, i64 -24
  %29 = getelementptr i8, ptr %22, i64 -40
  %30 = getelementptr i8, ptr %22, i64 -56
  store <2 x ptr> %wide.load, ptr %27, align 8
  store <2 x ptr> %wide.load313, ptr %28, align 8
  store <2 x ptr> %wide.load315, ptr %29, align 8
  store <2 x ptr> %wide.load317, ptr %30, align 8
  %index.next = add nuw i64 %index, 8
  %31 = icmp eq i64 %index.next, %n.vec
  br i1 %31, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %21, %n.vec
  br i1 %cmp.n, label %for.end.i, label %for.body.i.preheader374

for.end.i.thread:                                 ; preds = %if.end72
  %inc.i295 = add nsw i32 %refIdxLX.0276, 1
  %arrayidx6.i296 = getelementptr inbounds ptr, ptr %18, i64 %20
  store ptr %call.i, ptr %arrayidx6.i296, align 8
  br label %for.inc

for.body.i:                                       ; preds = %for.body.i.preheader374, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.i.ph, %for.body.i.preheader374 ]
  %32 = getelementptr ptr, ptr %18, i64 %indvars.iv.i
  %arrayidx2.i = getelementptr i8, ptr %32, i64 -8
  %33 = load ptr, ptr %arrayidx2.i, align 8
  store ptr %33, ptr %32, align 8
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %cmp.i = icmp sgt i64 %indvars.iv.next.i, %20
  br i1 %cmp.i, label %for.body.i, label %for.end.i, !llvm.loop !17

for.end.i:                                        ; preds = %for.body.i, %middle.block
  %inc.i = add nsw i32 %refIdxLX.0276, 1
  %arrayidx6.i = getelementptr inbounds ptr, ptr %18, i64 %20
  store ptr %call.i, ptr %arrayidx6.i, align 8
  br i1 %cmp63.not.i.not, label %for.body10.lr.ph.i, label %for.inc

for.body10.lr.ph.i:                               ; preds = %for.end.i
  %34 = sext i32 %inc.i to i64
  br i1 %cmp18.not.i226, label %for.body10.us.i, label %for.body10.i

for.body10.us.i:                                  ; preds = %for.body10.lr.ph.i, %for.inc34.us.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %for.inc34.us.i ], [ %34, %for.body10.lr.ph.i ]
  %nIdx.066.us.i = phi i32 [ %nIdx.1.us.i, %for.inc34.us.i ], [ %inc.i, %for.body10.lr.ph.i ]
  %arrayidx12.us.i = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv74.i
  %35 = load ptr, ptr %arrayidx12.us.i, align 8
  %tobool.not.us.i = icmp eq ptr %35, null
  br i1 %tobool.not.us.i, label %for.inc34.us.i, label %if.then.us.i

if.then.us.i:                                     ; preds = %for.body10.us.i
  %is_long_term.us.i = getelementptr inbounds i8, ptr %35, i64 40
  %36 = load i8, ptr %is_long_term.us.i, align 8
  %tobool15.not.us.i = icmp eq i8 %36, 0
  br i1 %tobool15.not.us.i, label %lor.lhs.false.us.i, label %if.then27.us.i

lor.lhs.false.us.i:                               ; preds = %if.then.us.i
  %pic_num.us.i = getelementptr inbounds i8, ptr %35, i64 28
  %37 = load i32, ptr %pic_num.us.i, align 4
  %cmp18.not.us.i = icmp eq i32 %37, %picNumLX.0
  br i1 %cmp18.not.us.i, label %for.inc34.us.i, label %if.then27.us.i

if.then27.us.i:                                   ; preds = %lor.lhs.false.us.i, %if.then.us.i
  %inc30.us.i = add nsw i32 %nIdx.066.us.i, 1
  %idxprom31.us.i = sext i32 %nIdx.066.us.i to i64
  %arrayidx32.us.i = getelementptr inbounds ptr, ptr %18, i64 %idxprom31.us.i
  store ptr %35, ptr %arrayidx32.us.i, align 8
  br label %for.inc34.us.i

for.inc34.us.i:                                   ; preds = %if.then27.us.i, %lor.lhs.false.us.i, %for.body10.us.i
  %nIdx.1.us.i = phi i32 [ %inc30.us.i, %if.then27.us.i ], [ %nIdx.066.us.i, %for.body10.us.i ], [ %nIdx.066.us.i, %lor.lhs.false.us.i ]
  %indvars.iv.next75.i = add nsw i64 %indvars.iv74.i, 1
  %cmp9.not.us.i = icmp sgt i64 %indvars.iv74.i, %14
  br i1 %cmp9.not.us.i, label %for.inc, label %for.body10.us.i

for.body10.i:                                     ; preds = %for.body10.lr.ph.i, %for.inc34.i
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i, %for.inc34.i ], [ %34, %for.body10.lr.ph.i ]
  %nIdx.066.i = phi i32 [ %nIdx.1.i, %for.inc34.i ], [ %inc.i, %for.body10.lr.ph.i ]
  %arrayidx12.i = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv71.i
  %38 = load ptr, ptr %arrayidx12.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %for.inc34.i, label %if.then.i

if.then.i:                                        ; preds = %for.body10.i
  %is_long_term.i = getelementptr inbounds i8, ptr %38, i64 40
  %39 = load i8, ptr %is_long_term.i, align 8
  %tobool15.not.i = icmp eq i8 %39, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i, label %if.then27.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %pic_num.i = getelementptr inbounds i8, ptr %38, i64 28
  %40 = load i32, ptr %pic_num.i, align 4
  %cmp18.not.i = icmp eq i32 %40, %picNumLX.0
  br i1 %cmp18.not.i, label %lor.lhs.false20.i, label %if.then27.i

lor.lhs.false20.i:                                ; preds = %lor.lhs.false.i
  %view_id.i = getelementptr inbounds i8, ptr %38, i64 344
  %41 = load i32, ptr %view_id.i, align 8
  %cmp25.not.i = icmp eq i32 %41, %view_id
  br i1 %cmp25.not.i, label %for.inc34.i, label %if.then27.i

if.then27.i:                                      ; preds = %lor.lhs.false20.i, %lor.lhs.false.i, %if.then.i
  %inc30.i = add nsw i32 %nIdx.066.i, 1
  %idxprom31.i = sext i32 %nIdx.066.i to i64
  %arrayidx32.i = getelementptr inbounds ptr, ptr %18, i64 %idxprom31.i
  store ptr %38, ptr %arrayidx32.i, align 8
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %if.then27.i, %lor.lhs.false20.i, %for.body10.i
  %nIdx.1.i = phi i32 [ %inc30.i, %if.then27.i ], [ %nIdx.066.i, %lor.lhs.false20.i ], [ %nIdx.066.i, %for.body10.i ]
  %indvars.iv.next72.i = add nsw i64 %indvars.iv71.i, 1
  %cmp9.not.i = icmp sgt i64 %indvars.iv71.i, %14
  br i1 %cmp9.not.i, label %for.inc, label %for.body10.i

if.else78:                                        ; preds = %if.end28
  switch i32 %16, label %if.else100 [
    i32 2, label %if.then82
    i32 4, label %if.then91
  ]

if.then82:                                        ; preds = %if.else78
  %42 = load ptr, ptr %arrayidx84, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv
  %43 = load i32, ptr %arrayidx86, align 4
  %44 = load ptr, ptr %p_Dpb.i215, align 8
  %call.i216 = tail call ptr @get_long_term_pic(ptr noundef %44, i32 noundef %43) #10
  %cmp57.not.i.not = icmp slt i32 %refIdxLX.0276, %4
  %45 = sext i32 %refIdxLX.0276 to i64
  br i1 %cmp57.not.i.not, label %for.body.i218.preheader, label %for.end.i223.thread

for.body.i218.preheader:                          ; preds = %if.then82
  %46 = sub nsw i64 %13, %45
  %min.iters.check350 = icmp ult i64 %46, 8
  br i1 %min.iters.check350, label %for.body.i218.preheader380, label %vector.ph351

for.body.i218.preheader380:                       ; preds = %middle.block348, %for.body.i218.preheader
  %indvars.iv.i219.ph = phi i64 [ %13, %for.body.i218.preheader ], [ %ind.end354, %middle.block348 ]
  br label %for.body.i218

vector.ph351:                                     ; preds = %for.body.i218.preheader
  %n.vec353 = and i64 %46, -8
  %ind.end354 = sub nsw i64 %13, %n.vec353
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph351
  %index357 = phi i64 [ 0, %vector.ph351 ], [ %index.next371, %vector.body356 ]
  %offset.idx358 = sub i64 %13, %index357
  %47 = getelementptr ptr, ptr %42, i64 %offset.idx358
  %48 = getelementptr i8, ptr %47, i64 -16
  %49 = getelementptr i8, ptr %47, i64 -32
  %50 = getelementptr i8, ptr %47, i64 -48
  %51 = getelementptr i8, ptr %47, i64 -64
  %wide.load359 = load <2 x ptr>, ptr %48, align 8
  %wide.load361 = load <2 x ptr>, ptr %49, align 8
  %wide.load363 = load <2 x ptr>, ptr %50, align 8
  %wide.load365 = load <2 x ptr>, ptr %51, align 8
  %52 = getelementptr i8, ptr %47, i64 -8
  %53 = getelementptr i8, ptr %47, i64 -24
  %54 = getelementptr i8, ptr %47, i64 -40
  %55 = getelementptr i8, ptr %47, i64 -56
  store <2 x ptr> %wide.load359, ptr %52, align 8
  store <2 x ptr> %wide.load361, ptr %53, align 8
  store <2 x ptr> %wide.load363, ptr %54, align 8
  store <2 x ptr> %wide.load365, ptr %55, align 8
  %index.next371 = add nuw i64 %index357, 8
  %56 = icmp eq i64 %index.next371, %n.vec353
  br i1 %56, label %middle.block348, label %vector.body356, !llvm.loop !18

middle.block348:                                  ; preds = %vector.body356
  %cmp.n372 = icmp eq i64 %46, %n.vec353
  br i1 %cmp.n372, label %for.end.i223, label %for.body.i218.preheader380

for.end.i223.thread:                              ; preds = %if.then82
  %inc.i225298 = add nsw i32 %refIdxLX.0276, 1
  %arrayidx4.i299 = getelementptr inbounds ptr, ptr %42, i64 %45
  store ptr %call.i216, ptr %arrayidx4.i299, align 8
  br label %for.inc

for.body.i218:                                    ; preds = %for.body.i218.preheader380, %for.body.i218
  %indvars.iv.i219 = phi i64 [ %indvars.iv.next.i221, %for.body.i218 ], [ %indvars.iv.i219.ph, %for.body.i218.preheader380 ]
  %57 = getelementptr ptr, ptr %42, i64 %indvars.iv.i219
  %arrayidx.i220 = getelementptr i8, ptr %57, i64 -8
  %58 = load ptr, ptr %arrayidx.i220, align 8
  store ptr %58, ptr %57, align 8
  %indvars.iv.next.i221 = add nsw i64 %indvars.iv.i219, -1
  %cmp.i222 = icmp sgt i64 %indvars.iv.next.i221, %45
  br i1 %cmp.i222, label %for.body.i218, label %for.end.i223, !llvm.loop !19

for.end.i223:                                     ; preds = %for.body.i218, %middle.block348
  %inc.i225 = add nsw i32 %refIdxLX.0276, 1
  %arrayidx4.i = getelementptr inbounds ptr, ptr %42, i64 %45
  store ptr %call.i216, ptr %arrayidx4.i, align 8
  br i1 %cmp57.not.i.not, label %for.body8.lr.ph.i, label %for.inc

for.body8.lr.ph.i:                                ; preds = %for.end.i223
  %59 = sext i32 %inc.i225 to i64
  br i1 %cmp18.not.i226, label %for.body8.us.i, label %for.body8.i

for.body8.us.i:                                   ; preds = %for.body8.lr.ph.i, %for.inc29.us.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %for.inc29.us.i ], [ %59, %for.body8.lr.ph.i ]
  %nIdx.060.us.i = phi i32 [ %nIdx.1.us.i238, %for.inc29.us.i ], [ %inc.i225, %for.body8.lr.ph.i ]
  %arrayidx10.us.i = getelementptr inbounds ptr, ptr %42, i64 %indvars.iv68.i
  %60 = load ptr, ptr %arrayidx10.us.i, align 8
  %tobool.not.us.i234 = icmp eq ptr %60, null
  br i1 %tobool.not.us.i234, label %for.inc29.us.i, label %if.then.us.i235

if.then.us.i235:                                  ; preds = %for.body8.us.i
  %is_long_term.us.i236 = getelementptr inbounds i8, ptr %60, i64 40
  %61 = load i8, ptr %is_long_term.us.i236, align 8
  %tobool13.not.us.i = icmp eq i8 %61, 0
  br i1 %tobool13.not.us.i, label %if.then22.us.i, label %lor.lhs.false.us.i237

lor.lhs.false.us.i237:                            ; preds = %if.then.us.i235
  %long_term_pic_num.us.i = getelementptr inbounds i8, ptr %60, i64 32
  %62 = load i32, ptr %long_term_pic_num.us.i, align 8
  %cmp16.not.us.i = icmp eq i32 %62, %43
  br i1 %cmp16.not.us.i, label %for.inc29.us.i, label %if.then22.us.i

if.then22.us.i:                                   ; preds = %lor.lhs.false.us.i237, %if.then.us.i235
  %inc25.us.i = add nsw i32 %nIdx.060.us.i, 1
  %idxprom26.us.i = sext i32 %nIdx.060.us.i to i64
  %arrayidx27.us.i = getelementptr inbounds ptr, ptr %42, i64 %idxprom26.us.i
  store ptr %60, ptr %arrayidx27.us.i, align 8
  br label %for.inc29.us.i

for.inc29.us.i:                                   ; preds = %if.then22.us.i, %lor.lhs.false.us.i237, %for.body8.us.i
  %nIdx.1.us.i238 = phi i32 [ %inc25.us.i, %if.then22.us.i ], [ %nIdx.060.us.i, %for.body8.us.i ], [ %nIdx.060.us.i, %lor.lhs.false.us.i237 ]
  %indvars.iv.next69.i = add nsw i64 %indvars.iv68.i, 1
  %cmp7.not.us.i = icmp sgt i64 %indvars.iv68.i, %14
  br i1 %cmp7.not.us.i, label %for.inc, label %for.body8.us.i

for.body8.i:                                      ; preds = %for.body8.lr.ph.i, %for.inc29.i
  %indvars.iv65.i = phi i64 [ %indvars.iv.next66.i, %for.inc29.i ], [ %59, %for.body8.lr.ph.i ]
  %nIdx.060.i = phi i32 [ %nIdx.1.i231, %for.inc29.i ], [ %inc.i225, %for.body8.lr.ph.i ]
  %arrayidx10.i = getelementptr inbounds ptr, ptr %42, i64 %indvars.iv65.i
  %63 = load ptr, ptr %arrayidx10.i, align 8
  %tobool.not.i227 = icmp eq ptr %63, null
  br i1 %tobool.not.i227, label %for.inc29.i, label %if.then.i228

if.then.i228:                                     ; preds = %for.body8.i
  %is_long_term.i229 = getelementptr inbounds i8, ptr %63, i64 40
  %64 = load i8, ptr %is_long_term.i229, align 8
  %tobool13.not.i = icmp eq i8 %64, 0
  br i1 %tobool13.not.i, label %if.then22.i, label %lor.lhs.false.i230

lor.lhs.false.i230:                               ; preds = %if.then.i228
  %long_term_pic_num.i = getelementptr inbounds i8, ptr %63, i64 32
  %65 = load i32, ptr %long_term_pic_num.i, align 8
  %cmp16.not.i = icmp eq i32 %65, %43
  br i1 %cmp16.not.i, label %lor.lhs.false17.i, label %if.then22.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false.i230
  %view_id.i232 = getelementptr inbounds i8, ptr %63, i64 344
  %66 = load i32, ptr %view_id.i232, align 8
  %cmp21.not.i233 = icmp eq i32 %66, %view_id
  br i1 %cmp21.not.i233, label %for.inc29.i, label %if.then22.i

if.then22.i:                                      ; preds = %lor.lhs.false17.i, %lor.lhs.false.i230, %if.then.i228
  %inc25.i = add nsw i32 %nIdx.060.i, 1
  %idxprom26.i = sext i32 %nIdx.060.i to i64
  %arrayidx27.i = getelementptr inbounds ptr, ptr %42, i64 %idxprom26.i
  store ptr %63, ptr %arrayidx27.i, align 8
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %if.then22.i, %lor.lhs.false17.i, %for.body8.i
  %nIdx.1.i231 = phi i32 [ %inc25.i, %if.then22.i ], [ %nIdx.060.i, %lor.lhs.false17.i ], [ %nIdx.060.i, %for.body8.i ]
  %indvars.iv.next66.i = add nsw i64 %indvars.iv65.i, 1
  %cmp7.not.i = icmp sgt i64 %indvars.iv65.i, %14
  br i1 %cmp7.not.i, label %for.inc, label %for.body8.i

if.then91:                                        ; preds = %if.else78
  %arrayidx93 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv
  %67 = load i32, ptr %arrayidx93, align 4
  %add94.neg = xor i32 %67, -1
  %sub95 = add i32 %picViewIdxLXPred.1279, %add94.neg
  %cmp96 = icmp slt i32 %sub95, 0
  %add98 = select i1 %cmp96, i32 %maxViewIdx.0, i32 0
  %spec.select = add nsw i32 %add98, %sub95
  br label %if.end109

if.else100:                                       ; preds = %if.else78
  %arrayidx102 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv
  %68 = load i32, ptr %arrayidx102, align 4
  %add103 = add i32 %picViewIdxLXPred.1279, 1
  %add104 = add i32 %add103, %68
  %cmp105.not = icmp slt i32 %add104, %maxViewIdx.0
  %sub107 = select i1 %cmp105.not, i32 0, i32 %maxViewIdx.0
  %spec.select212 = sub nsw i32 %add104, %sub107
  br label %if.end109

if.end109:                                        ; preds = %if.else100, %if.then91
  %picViewIdxLX.0 = phi i32 [ %spec.select, %if.then91 ], [ %spec.select212, %if.else100 ]
  %idxprom118 = sext i32 %picViewIdxLX.0 to i64
  %69 = load ptr, ptr %arrayidx117.arrayidx112, align 8
  %arrayidx119 = getelementptr inbounds i32, ptr %69, i64 %idxprom118
  %targetViewID.0 = load i32, ptr %arrayidx119, align 4
  %70 = load ptr, ptr %arrayidx84, align 8
  %fs_listinterview.0.i.i = load ptr, ptr %fs_listinterview.0.in.i.i, align 8
  %listinterview_size.0.i.i = load i32, ptr %listinterview_size.0.in.i.i, align 4
  %cmp165.not.i.i = icmp eq i32 %listinterview_size.0.i.i, 0
  br i1 %cmp165.not.i.i, label %for.inc, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end109
  %wide.trip.count.i.i = zext i32 %listinterview_size.0.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %fs_listinterview.0.i.i, i64 %indvars.iv.i.i
  %71 = load ptr, ptr %arrayidx.i.i, align 8
  %view_id.i.i = getelementptr inbounds i8, ptr %71, i64 72
  %72 = load i32, ptr %view_id.i.i, align 8
  %cmp2.i.i = icmp eq i32 %72, %targetViewID.0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %for.inc.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  %73 = load i32, ptr %structure, align 4
  switch i32 %73, label %for.inc.i.i [
    i32 0, label %land.lhs.true.i.i
    i32 1, label %land.lhs.true15.i.i
    i32 2, label %land.lhs.true27.i.i
  ]

land.lhs.true.i.i:                                ; preds = %if.then3.i.i
  %frame.i.i = getelementptr inbounds i8, ptr %71, i64 48
  %74 = load ptr, ptr %frame.i.i, align 8
  %poc.i.i = getelementptr inbounds i8, ptr %74, i64 4
  %75 = load i32, ptr %poc.i.i, align 4
  %cmp7.i.i = icmp eq i32 %75, %currPOC
  br i1 %cmp7.i.i, label %if.then.i241, label %for.inc.i.i

land.lhs.true15.i.i:                              ; preds = %if.then3.i.i
  %top_field.i.i = getelementptr inbounds i8, ptr %71, i64 56
  %76 = load ptr, ptr %top_field.i.i, align 8
  %poc18.i.i = getelementptr inbounds i8, ptr %76, i64 4
  %77 = load i32, ptr %poc18.i.i, align 4
  %cmp19.i.i = icmp eq i32 %77, %currPOC
  br i1 %cmp19.i.i, label %if.then.i241, label %for.inc.i.i

land.lhs.true27.i.i:                              ; preds = %if.then3.i.i
  %bottom_field.i.i = getelementptr inbounds i8, ptr %71, i64 64
  %78 = load ptr, ptr %bottom_field.i.i, align 8
  %poc30.i.i = getelementptr inbounds i8, ptr %78, i64 4
  %79 = load i32, ptr %poc30.i.i, align 4
  %cmp31.i.i = icmp eq i32 %79, %currPOC
  br i1 %cmp31.i.i, label %if.then.i241, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true27.i.i, %land.lhs.true15.i.i, %land.lhs.true.i.i, %if.then3.i.i, %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.inc, label %for.body.i.i

if.then.i241:                                     ; preds = %land.lhs.true27.i.i, %land.lhs.true15.i.i, %land.lhs.true.i.i
  %retval.0.i.ph.i = phi ptr [ %74, %land.lhs.true.i.i ], [ %76, %land.lhs.true15.i.i ], [ %78, %land.lhs.true27.i.i ]
  %cmp50.not.i.not = icmp slt i32 %refIdxLX.0276, %4
  %80 = sext i32 %refIdxLX.0276 to i64
  br i1 %cmp50.not.i.not, label %for.body.i243.preheader, label %for.end.i248.thread

for.body.i243.preheader:                          ; preds = %if.then.i241
  %81 = sub nsw i64 %13, %80
  %min.iters.check325 = icmp ult i64 %81, 8
  br i1 %min.iters.check325, label %for.body.i243.preheader376, label %vector.ph326

for.body.i243.preheader376:                       ; preds = %middle.block323, %for.body.i243.preheader
  %indvars.iv.i244.ph = phi i64 [ %13, %for.body.i243.preheader ], [ %ind.end329, %middle.block323 ]
  br label %for.body.i243

vector.ph326:                                     ; preds = %for.body.i243.preheader
  %n.vec328 = and i64 %81, -8
  %ind.end329 = sub nsw i64 %13, %n.vec328
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph326
  %index332 = phi i64 [ 0, %vector.ph326 ], [ %index.next346, %vector.body331 ]
  %offset.idx333 = sub i64 %13, %index332
  %82 = getelementptr ptr, ptr %70, i64 %offset.idx333
  %83 = getelementptr i8, ptr %82, i64 -16
  %84 = getelementptr i8, ptr %82, i64 -32
  %85 = getelementptr i8, ptr %82, i64 -48
  %86 = getelementptr i8, ptr %82, i64 -64
  %wide.load334 = load <2 x ptr>, ptr %83, align 8
  %wide.load336 = load <2 x ptr>, ptr %84, align 8
  %wide.load338 = load <2 x ptr>, ptr %85, align 8
  %wide.load340 = load <2 x ptr>, ptr %86, align 8
  %87 = getelementptr i8, ptr %82, i64 -8
  %88 = getelementptr i8, ptr %82, i64 -24
  %89 = getelementptr i8, ptr %82, i64 -40
  %90 = getelementptr i8, ptr %82, i64 -56
  store <2 x ptr> %wide.load334, ptr %87, align 8
  store <2 x ptr> %wide.load336, ptr %88, align 8
  store <2 x ptr> %wide.load338, ptr %89, align 8
  store <2 x ptr> %wide.load340, ptr %90, align 8
  %index.next346 = add nuw i64 %index332, 8
  %91 = icmp eq i64 %index.next346, %n.vec328
  br i1 %91, label %middle.block323, label %vector.body331, !llvm.loop !20

middle.block323:                                  ; preds = %vector.body331
  %cmp.n347 = icmp eq i64 %81, %n.vec328
  br i1 %cmp.n347, label %for.end.i248, label %for.body.i243.preheader376

for.end.i248.thread:                              ; preds = %if.then.i241
  %inc.i251301 = add nsw i32 %refIdxLX.0276, 1
  %arrayidx4.i252302 = getelementptr inbounds ptr, ptr %70, i64 %80
  store ptr %retval.0.i.ph.i, ptr %arrayidx4.i252302, align 8
  br label %for.inc

for.body.i243:                                    ; preds = %for.body.i243.preheader376, %for.body.i243
  %indvars.iv.i244 = phi i64 [ %indvars.iv.next.i246, %for.body.i243 ], [ %indvars.iv.i244.ph, %for.body.i243.preheader376 ]
  %92 = getelementptr ptr, ptr %70, i64 %indvars.iv.i244
  %arrayidx.i245 = getelementptr i8, ptr %92, i64 -8
  %93 = load ptr, ptr %arrayidx.i245, align 8
  store ptr %93, ptr %92, align 8
  %indvars.iv.next.i246 = add nsw i64 %indvars.iv.i244, -1
  %cmp.i247 = icmp sgt i64 %indvars.iv.next.i246, %80
  br i1 %cmp.i247, label %for.body.i243, label %for.end.i248, !llvm.loop !21

for.end.i248:                                     ; preds = %for.body.i243, %middle.block323
  %inc.i251 = add nsw i32 %refIdxLX.0276, 1
  %arrayidx4.i252 = getelementptr inbounds ptr, ptr %70, i64 %80
  store ptr %retval.0.i.ph.i, ptr %arrayidx4.i252, align 8
  br i1 %cmp50.not.i.not, label %for.body8.preheader.i, label %for.inc

for.body8.preheader.i:                            ; preds = %for.end.i248
  %94 = sext i32 %inc.i251 to i64
  br label %for.body8.i253

for.body8.i253:                                   ; preds = %for.inc21.i, %for.body8.preheader.i
  %indvars.iv58.i = phi i64 [ %94, %for.body8.preheader.i ], [ %indvars.iv.next59.i, %for.inc21.i ]
  %nIdx.053.i = phi i32 [ %inc.i251, %for.body8.preheader.i ], [ %nIdx.1.i256, %for.inc21.i ]
  %arrayidx10.i254 = getelementptr inbounds ptr, ptr %70, i64 %indvars.iv58.i
  %95 = load ptr, ptr %arrayidx10.i254, align 8
  %view_id.i255 = getelementptr inbounds i8, ptr %95, i64 344
  %96 = load i32, ptr %view_id.i255, align 8
  %cmp11.not.i = icmp eq i32 %96, %targetViewID.0
  br i1 %cmp11.not.i, label %lor.lhs.false.i258, label %if.then15.i

lor.lhs.false.i258:                               ; preds = %for.body8.i253
  %poc.i = getelementptr inbounds i8, ptr %95, i64 4
  %97 = load i32, ptr %poc.i, align 4
  %cmp14.not.i = icmp eq i32 %97, %currPOC
  br i1 %cmp14.not.i, label %for.inc21.i, label %if.then15.i

if.then15.i:                                      ; preds = %lor.lhs.false.i258, %for.body8.i253
  %inc18.i = add nsw i32 %nIdx.053.i, 1
  %idxprom19.i = sext i32 %nIdx.053.i to i64
  %arrayidx20.i = getelementptr inbounds ptr, ptr %70, i64 %idxprom19.i
  store ptr %95, ptr %arrayidx20.i, align 8
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %if.then15.i, %lor.lhs.false.i258
  %nIdx.1.i256 = phi i32 [ %inc18.i, %if.then15.i ], [ %nIdx.053.i, %lor.lhs.false.i258 ]
  %indvars.iv.next59.i = add nsw i64 %indvars.iv58.i, 1
  %cmp7.not.i257 = icmp sgt i64 %indvars.iv58.i, %14
  br i1 %cmp7.not.i257, label %for.inc, label %for.body8.i253

for.inc:                                          ; preds = %for.inc29.i, %for.inc29.us.i, %for.inc.i.i, %for.inc21.i, %for.inc34.i, %for.inc34.us.i, %for.end.i248.thread, %for.end.i223.thread, %for.end.i.thread, %for.end.i248, %if.end109, %for.end.i223, %for.end.i
  %refIdxLX.2 = phi i32 [ %inc.i, %for.end.i ], [ %inc.i225, %for.end.i223 ], [ %refIdxLX.0276, %if.end109 ], [ %inc.i251, %for.end.i248 ], [ %inc.i295, %for.end.i.thread ], [ %inc.i225298, %for.end.i223.thread ], [ %inc.i251301, %for.end.i248.thread ], [ %inc.i, %for.inc34.us.i ], [ %inc.i, %for.inc34.i ], [ %inc.i251, %for.inc21.i ], [ %refIdxLX.0276, %for.inc.i.i ], [ %inc.i225, %for.inc29.us.i ], [ %inc.i225, %for.inc29.i ]
  %picNumLXPred.1 = phi i32 [ %picNumLXNoWrap.0, %for.end.i ], [ %picNumLXPred.0278, %for.end.i223 ], [ %picNumLXPred.0278, %if.end109 ], [ %picNumLXPred.0278, %for.end.i248 ], [ %picNumLXNoWrap.0, %for.end.i.thread ], [ %picNumLXPred.0278, %for.end.i223.thread ], [ %picNumLXPred.0278, %for.end.i248.thread ], [ %picNumLXNoWrap.0, %for.inc34.us.i ], [ %picNumLXNoWrap.0, %for.inc34.i ], [ %picNumLXPred.0278, %for.inc21.i ], [ %picNumLXPred.0278, %for.inc.i.i ], [ %picNumLXPred.0278, %for.inc29.us.i ], [ %picNumLXPred.0278, %for.inc29.i ]
  %picViewIdxLXPred.2 = phi i32 [ %picViewIdxLXPred.1279, %for.end.i ], [ %picViewIdxLXPred.1279, %for.end.i223 ], [ %picViewIdxLX.0, %if.end109 ], [ %picViewIdxLX.0, %for.end.i248 ], [ %picViewIdxLXPred.1279, %for.end.i.thread ], [ %picViewIdxLXPred.1279, %for.end.i223.thread ], [ %picViewIdxLX.0, %for.end.i248.thread ], [ %picViewIdxLXPred.1279, %for.inc34.us.i ], [ %picViewIdxLXPred.1279, %for.inc34.i ], [ %picViewIdxLX.0, %for.inc21.i ], [ %picViewIdxLX.0, %for.inc.i.i ], [ %picViewIdxLXPred.1279, %for.inc29.us.i ], [ %picViewIdxLXPred.1279, %for.inc29.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx22 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv.next
  %98 = load i32, ptr %arrayidx22, align 4
  %cmp23.not = icmp eq i32 %98, 3
  br i1 %cmp23.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end20
  %conv = trunc i32 %4 to i8
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  %arrayidx128 = getelementptr inbounds [6 x i8], ptr %listXsize, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx128, align 1
  ret void
}

declare i32 @GetVOIdx(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @get_maxViewIdx(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @reorder_lists_mvc(ptr noundef %currSlice, i32 noundef %currPOC) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %slice_type = getelementptr inbounds i8, ptr %currSlice, i64 164
  %1 = load i32, ptr %slice_type, align 4
  switch i32 %1, label %if.then [
    i32 2, label %if.end55
    i32 4, label %if.end55
  ]

if.then:                                          ; preds = %entry
  %ref_pic_list_reordering_flag = getelementptr inbounds i8, ptr %currSlice, i64 1104
  %2 = load i32, ptr %ref_pic_list_reordering_flag, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %active_subset_sps = getelementptr inbounds i8, ptr %0, i64 699416
  %3 = load ptr, ptr %active_subset_sps, align 8
  %anchor_ref_l0 = getelementptr inbounds i8, ptr %3, i64 4152
  %4 = load ptr, ptr %anchor_ref_l0, align 8
  %non_anchor_ref_l0 = getelementptr inbounds i8, ptr %3, i64 4184
  %5 = load ptr, ptr %non_anchor_ref_l0, align 8
  %view_id = getelementptr inbounds i8, ptr %currSlice, i64 1176
  %6 = load i32, ptr %view_id, align 8
  %anchor_pic_flag = getelementptr inbounds i8, ptr %currSlice, i64 1184
  %7 = load i32, ptr %anchor_pic_flag, align 8
  tail call void @reorder_ref_pic_list_mvc(ptr noundef nonnull %currSlice, i32 noundef 0, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %currPOC, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %no_reference_picture = getelementptr inbounds i8, ptr %0, i64 856488
  %8 = load ptr, ptr %no_reference_picture, align 8
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  %9 = load ptr, ptr %listX, align 8
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  %10 = load i32, ptr %num_ref_idx_active, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr ptr, ptr %9, i64 %11
  %arrayidx8 = getelementptr i8, ptr %12, i64 -8
  %13 = load ptr, ptr %arrayidx8, align 8
  %cmp9 = icmp eq ptr %8, %13
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end
  %non_conforming_stream = getelementptr inbounds i8, ptr %0, i64 848948
  %14 = load i32, ptr %non_conforming_stream, align 4
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then10
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end18

if.else:                                          ; preds = %if.then10
  tail call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #10
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.else, %if.then12
  %15 = load i32, ptr %num_ref_idx_active, align 8
  %conv = trunc i32 %15 to i8
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 %conv, ptr %listXsize, align 8
  %.pr = load i32, ptr %slice_type, align 4
  %cmp20 = icmp eq i32 %.pr, 1
  br i1 %cmp20, label %if.then22, label %if.end55

if.then22:                                        ; preds = %if.end18
  %arrayidx24 = getelementptr inbounds i8, ptr %currSlice, i64 1108
  %16 = load i32, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq i32 %16, 0
  br i1 %tobool25.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.then22
  %active_subset_sps27 = getelementptr inbounds i8, ptr %0, i64 699416
  %17 = load ptr, ptr %active_subset_sps27, align 8
  %anchor_ref_l1 = getelementptr inbounds i8, ptr %17, i64 4168
  %18 = load ptr, ptr %anchor_ref_l1, align 8
  %non_anchor_ref_l1 = getelementptr inbounds i8, ptr %17, i64 4200
  %19 = load ptr, ptr %non_anchor_ref_l1, align 8
  %view_id29 = getelementptr inbounds i8, ptr %currSlice, i64 1176
  %20 = load i32, ptr %view_id29, align 8
  %anchor_pic_flag30 = getelementptr inbounds i8, ptr %currSlice, i64 1184
  %21 = load i32, ptr %anchor_pic_flag30, align 8
  tail call void @reorder_ref_pic_list_mvc(ptr noundef nonnull %currSlice, i32 noundef 1, ptr noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %currPOC, i32 noundef 1)
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then22
  %22 = load ptr, ptr %no_reference_picture, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %23 = load ptr, ptr %arrayidx34, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %currSlice, i64 140
  %24 = load i32, ptr %arrayidx36, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr ptr, ptr %23, i64 %25
  %arrayidx39 = getelementptr i8, ptr %26, i64 -8
  %27 = load ptr, ptr %arrayidx39, align 8
  %cmp40 = icmp eq ptr %22, %27
  br i1 %cmp40, label %if.then42, label %if.end49

if.then42:                                        ; preds = %if.end31
  %non_conforming_stream43 = getelementptr inbounds i8, ptr %0, i64 848948
  %28 = load i32, ptr %non_conforming_stream43, align 4
  %tobool44.not = icmp eq i32 %28, 0
  br i1 %tobool44.not, label %if.else47, label %if.then45

if.then45:                                        ; preds = %if.then42
  %puts97 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %if.end49

if.else47:                                        ; preds = %if.then42
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 500) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.else47, %if.end31
  %29 = load i32, ptr %arrayidx36, align 4
  %conv52 = trunc i32 %29 to i8
  %arrayidx54 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 %conv52, ptr %arrayidx54, align 1
  br label %if.end55

if.end55:                                         ; preds = %entry, %entry, %if.end49, %if.end18
  tail call void @free_ref_pic_list_reordering_buffer(ptr noundef nonnull %currSlice) #10
  ret void
}

declare void @free_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = distinct !{!10, !9, !8}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !8, !9}
!13 = distinct !{!13, !9, !8}
!14 = distinct !{!14, !8, !9}
!15 = distinct !{!15, !9, !8}
!16 = distinct !{!16, !8, !9}
!17 = distinct !{!17, !9, !8}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !9, !8}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !9, !8}
