; ModuleID = 'x264_src/encoder/lookahead.c'
source_filename = "x264_src/encoder/lookahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_lookahead_init(ptr nocapture noundef readonly %h, i32 noundef %i_slicetype_length) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @x264_malloc(i32 noundef 120) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %fail, label %do.end

do.end:                                           ; preds = %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %call, i8 0, i64 120, i1 false)
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
  %0 = load i32, ptr %i_threads, align 4
  %cmp78 = icmp sgt i32 %0, 0
  br i1 %cmp78, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %do.end
  %i_keyint_max = getelementptr inbounds i8, ptr %h, i64 84
  %1 = load i32, ptr %i_keyint_max, align 4
  %sub = sub nsw i32 0, %1
  %i_last_keyframe = getelementptr inbounds i8, ptr %call, i64 4
  store i32 %sub, ptr %i_last_keyframe, align 4
  %b_mb_tree = getelementptr inbounds i8, ptr %h, i64 552
  %2 = load i32, ptr %b_mb_tree, align 8
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %land.rhs

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv
  %3 = load ptr, ptr %arrayidx, align 8
  %lookahead = getelementptr inbounds i8, ptr %3, i64 33328
  store ptr %call, ptr %lookahead, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %i_threads, align 4
  %5 = sext i32 %4 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp, label %for.body, label %for.cond.cleanup

lor.lhs.false:                                    ; preds = %for.cond.cleanup
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %h, i64 528
  %6 = load i32, ptr %i_vbv_buffer_size, align 8
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %i_lookahead = getelementptr inbounds i8, ptr %h, i64 556
  %7 = load i32, ptr %i_lookahead, align 4
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true, %for.cond.cleanup
  %b_stat_read = getelementptr inbounds i8, ptr %h, i64 576
  %8 = load i32, ptr %b_stat_read, align 8
  %tobool15.not = icmp eq i32 %8, 0
  %9 = zext i1 %tobool15.not to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false
  %conv = phi i8 [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ %9, %land.rhs ]
  %b_analyse_keyframe = getelementptr inbounds i8, ptr %call, i64 2
  store i8 %conv, ptr %b_analyse_keyframe, align 2
  %i_slicetype_length16 = getelementptr inbounds i8, ptr %call, i64 8
  store i32 %i_slicetype_length, ptr %i_slicetype_length16, align 8
  %ifbuf = getelementptr inbounds i8, ptr %call, i64 24
  %i_sync_lookahead = getelementptr inbounds i8, ptr %h, i64 16
  %10 = load i32, ptr %i_sync_lookahead, align 16
  %add = add nsw i32 %10, 3
  %call18 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %ifbuf, i32 noundef %add) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %fail

lor.lhs.false20:                                  ; preds = %land.end
  %next = getelementptr inbounds i8, ptr %call, i64 56
  %i_delay = getelementptr inbounds i8, ptr %h, i64 14612
  %11 = load i32, ptr %i_delay, align 4
  %add21 = add nsw i32 %11, 3
  %call22 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %next, i32 noundef %add21) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %fail

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %ofbuf = getelementptr inbounds i8, ptr %call, i64 88
  %12 = load i32, ptr %i_delay, align 4
  %add27 = add nsw i32 %12, 3
  %call28 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %ofbuf, i32 noundef %add27) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %fail

if.end31:                                         ; preds = %lor.lhs.false24
  %13 = load i32, ptr %i_sync_lookahead, align 16
  %tobool34.not = icmp eq i32 %13, 0
  br i1 %tobool34.not, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.end31
  %thread37 = getelementptr inbounds i8, ptr %h, i64 704
  %14 = load i32, ptr %i_threads, align 4
  %idxprom40 = sext i32 %14 to i64
  %arrayidx41 = getelementptr inbounds [129 x ptr], ptr %thread37, i64 0, i64 %idxprom40
  %15 = load ptr, ptr %arrayidx41, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33344) %15, ptr noundef nonnull align 16 dereferenceable(33344) %h, i64 33344, i1 false)
  %call42 = tail call i32 @x264_macroblock_cache_allocate(ptr noundef %15) #5
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %fail

if.end45:                                         ; preds = %if.end36
  %call46 = tail call i32 @x264_macroblock_thread_allocate(ptr noundef nonnull %15, i32 noundef 1) #5
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %fail, label %if.end50

if.end50:                                         ; preds = %if.end45
  %b_thread_active = getelementptr inbounds i8, ptr %call, i64 1
  store i8 1, ptr %b_thread_active, align 1
  br label %cleanup

fail:                                             ; preds = %if.end45, %if.end36, %land.end, %lor.lhs.false20, %lor.lhs.false24, %entry
  tail call void @x264_free(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %fail, %if.end50
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %if.end50 ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @x264_synch_frame_list_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @x264_macroblock_cache_allocate(ptr noundef) local_unnamed_addr #1

declare i32 @x264_macroblock_thread_allocate(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @x264_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_lookahead_delete(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %i_sync_lookahead = getelementptr inbounds i8, ptr %h, i64 16
  %0 = load i32, ptr %i_sync_lookahead, align 16
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %lookahead = getelementptr inbounds i8, ptr %h, i64 33328
  %1 = load ptr, ptr %lookahead, align 16
  store volatile i8 1, ptr %1, align 8
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
  %2 = load i32, ptr %i_threads, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  tail call void @x264_macroblock_cache_free(ptr noundef %3) #5
  %4 = load i32, ptr %i_threads, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom5
  %5 = load ptr, ptr %arrayidx6, align 8
  tail call void @x264_macroblock_thread_free(ptr noundef %5, i32 noundef 1) #5
  %6 = load i32, ptr %i_threads, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom10
  %7 = load ptr, ptr %arrayidx11, align 8
  tail call void @x264_free(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %lookahead12 = getelementptr inbounds i8, ptr %h, i64 33328
  %8 = load ptr, ptr %lookahead12, align 16
  %ifbuf = getelementptr inbounds i8, ptr %8, i64 24
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %ifbuf) #5
  %9 = load ptr, ptr %lookahead12, align 16
  %next = getelementptr inbounds i8, ptr %9, i64 56
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %next) #5
  %10 = load ptr, ptr %lookahead12, align 16
  %last_nonb = getelementptr inbounds i8, ptr %10, i64 16
  %11 = load ptr, ptr %last_nonb, align 8
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end
  tail call void @x264_frame_push_unused(ptr noundef nonnull %h, ptr noundef nonnull %11) #5
  %.pre = load ptr, ptr %lookahead12, align 16
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end
  %12 = phi ptr [ %.pre, %if.then16 ], [ %10, %if.end ]
  %ofbuf = getelementptr inbounds i8, ptr %12, i64 88
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %ofbuf) #5
  %13 = load ptr, ptr %lookahead12, align 16
  tail call void @x264_free(ptr noundef %13) #5
  ret void
}

declare void @x264_macroblock_cache_free(ptr noundef) local_unnamed_addr #1

declare void @x264_macroblock_thread_free(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @x264_synch_frame_list_delete(ptr noundef) local_unnamed_addr #1

declare void @x264_frame_push_unused(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_lookahead_put_frame(ptr nocapture noundef readonly %h, ptr noundef %frame) local_unnamed_addr #0 {
entry:
  %i_sync_lookahead = getelementptr inbounds i8, ptr %h, i64 16
  %0 = load i32, ptr %i_sync_lookahead, align 16
  %tobool.not = icmp eq i32 %0, 0
  %lookahead1 = getelementptr inbounds i8, ptr %h, i64 33328
  %1 = load ptr, ptr %lookahead1, align 16
  %. = select i1 %tobool.not, i64 56, i64 24
  %next = getelementptr inbounds i8, ptr %1, i64 %.
  tail call void @x264_synch_frame_list_push(ptr noundef nonnull %next, ptr noundef %frame) #5
  ret void
}

declare void @x264_synch_frame_list_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @x264_lookahead_is_empty(ptr nocapture noundef readonly %h) local_unnamed_addr #4 {
entry:
  %lookahead = getelementptr inbounds i8, ptr %h, i64 33328
  %0 = load ptr, ptr %lookahead, align 16
  %i_size = getelementptr inbounds i8, ptr %0, i64 68
  %1 = load i32, ptr %i_size, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %i_size2 = getelementptr inbounds i8, ptr %0, i64 100
  %2 = load i32, ptr %i_size2, align 4
  %tobool3.not = icmp eq i32 %2, 0
  %3 = zext i1 %tobool3.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %land.ext = phi i32 [ 0, %entry ], [ %3, %land.rhs ]
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_lookahead_get_frames(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %i_sync_lookahead = getelementptr inbounds i8, ptr %h, i64 16
  %0 = load i32, ptr %i_sync_lookahead, align 16
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %lookahead = getelementptr inbounds i8, ptr %h, i64 33328
  %1 = load ptr, ptr %lookahead, align 16
  %i_size = getelementptr inbounds i8, ptr %1, i64 100
  %2 = load i32, ptr %i_size, align 4
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %while.cond.preheader.split, label %if.end.i

while.cond.preheader.split:                       ; preds = %while.cond.preheader
  %b_thread_active = getelementptr inbounds i8, ptr %1, i64 1
  %3 = load i8, ptr %b_thread_active, align 1
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end34, label %while.cond

while.cond:                                       ; preds = %while.cond.preheader.split, %while.cond
  br label %while.cond

if.end.i:                                         ; preds = %while.cond.preheader
  %ofbuf.i = getelementptr inbounds i8, ptr %1, i64 88
  %4 = load ptr, ptr %ofbuf.i, align 8
  %5 = load ptr, ptr %4, align 8
  %i_bframes.i = getelementptr inbounds i8, ptr %5, i64 86
  %6 = load i8, ptr %i_bframes.i, align 2
  %conv.i = zext i8 %6 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %frames.i = getelementptr inbounds i8, ptr %h, i64 14416
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %if.end.i
  %i_frames.015.i = phi i32 [ %add.i, %if.end.i ], [ %dec.i, %while.body.i ]
  %dec.i = add nsw i32 %i_frames.015.i, -1
  %7 = load ptr, ptr %frames.i, align 16
  %8 = load ptr, ptr %lookahead, align 16
  %ofbuf5.i = getelementptr inbounds i8, ptr %8, i64 88
  %9 = load ptr, ptr %ofbuf5.i, align 8
  %call.i = tail call ptr @x264_frame_shift(ptr noundef %9) #5
  tail call void @x264_frame_push(ptr noundef %7, ptr noundef %call.i) #5
  %10 = load ptr, ptr %lookahead, align 16
  %i_size9.i = getelementptr inbounds i8, ptr %10, i64 100
  %11 = load i32, ptr %i_size9.i, align 4
  %dec10.i = add nsw i32 %11, -1
  store i32 %dec10.i, ptr %i_size9.i, align 4
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %if.end34, label %while.body.i

if.else:                                          ; preds = %entry
  %frames = getelementptr inbounds i8, ptr %h, i64 14416
  %12 = load ptr, ptr %frames, align 16
  %13 = load ptr, ptr %12, align 8
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end34

lor.lhs.false:                                    ; preds = %if.else
  %lookahead5 = getelementptr inbounds i8, ptr %h, i64 33328
  %14 = load ptr, ptr %lookahead5, align 16
  %i_size6 = getelementptr inbounds i8, ptr %14, i64 68
  %15 = load i32, ptr %i_size6, align 4
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.end34, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @x264_slicetype_decide(ptr noundef nonnull %h) #5
  %16 = load ptr, ptr %lookahead5, align 16
  %next10 = getelementptr inbounds i8, ptr %16, i64 56
  %17 = load ptr, ptr %next10, align 8
  %18 = load ptr, ptr %17, align 8
  %last_nonb.i = getelementptr inbounds i8, ptr %16, i64 16
  %19 = load ptr, ptr %last_nonb.i, align 8
  %tobool.not.i52 = icmp eq ptr %19, null
  br i1 %tobool.not.i52, label %x264_lookahead_update_last_nonb.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  tail call void @x264_frame_push_unused(ptr noundef nonnull %h, ptr noundef nonnull %19) #5
  %.pre.i = load ptr, ptr %lookahead5, align 16
  br label %x264_lookahead_update_last_nonb.exit

x264_lookahead_update_last_nonb.exit:             ; preds = %if.end, %if.then.i
  %20 = phi ptr [ %.pre.i, %if.then.i ], [ %16, %if.end ]
  %last_nonb4.i = getelementptr inbounds i8, ptr %20, i64 16
  store ptr %18, ptr %last_nonb4.i, align 8
  %i_reference_count.i = getelementptr inbounds i8, ptr %18, i64 15600
  %21 = load i32, ptr %i_reference_count.i, align 16
  %inc.i = add nsw i32 %21, 1
  store i32 %inc.i, ptr %i_reference_count.i, align 16
  %22 = load ptr, ptr %lookahead5, align 16
  %ofbuf13 = getelementptr inbounds i8, ptr %22, i64 88
  %next15 = getelementptr inbounds i8, ptr %22, i64 56
  %23 = load ptr, ptr %next15, align 8
  %24 = load ptr, ptr %23, align 8
  %i_bframes = getelementptr inbounds i8, ptr %24, i64 86
  %25 = load i8, ptr %i_bframes, align 2
  %conv20 = zext i8 %25 to i32
  %add = add nuw nsw i32 %conv20, 1
  %i_size.i54 = getelementptr inbounds i8, ptr %22, i64 100
  %i_size2.i = getelementptr inbounds i8, ptr %22, i64 68
  br label %while.body.i55

while.body.i55:                                   ; preds = %while.body.i55, %x264_lookahead_update_last_nonb.exit
  %i.09.i = phi i32 [ %add, %x264_lookahead_update_last_nonb.exit ], [ %dec.i56, %while.body.i55 ]
  %dec.i56 = add nsw i32 %i.09.i, -1
  %26 = load ptr, ptr %next15, align 8
  %call.i57 = tail call ptr @x264_frame_shift(ptr noundef %26) #5
  %27 = load ptr, ptr %ofbuf13, align 8
  %28 = load i32, ptr %i_size.i54, align 4
  %inc.i58 = add nsw i32 %28, 1
  store i32 %inc.i58, ptr %i_size.i54, align 4
  %idxprom.i = sext i32 %28 to i64
  %arrayidx.i = getelementptr inbounds ptr, ptr %27, i64 %idxprom.i
  store ptr %call.i57, ptr %arrayidx.i, align 8
  %29 = load i32, ptr %i_size2.i, align 4
  %dec3.i = add nsw i32 %29, -1
  store i32 %dec3.i, ptr %i_size2.i, align 4
  %tobool.not.i59 = icmp eq i32 %dec.i56, 0
  br i1 %tobool.not.i59, label %x264_lookahead_shift.exit, label %while.body.i55

x264_lookahead_shift.exit:                        ; preds = %while.body.i55
  %30 = load ptr, ptr %lookahead5, align 16
  %b_analyse_keyframe = getelementptr inbounds i8, ptr %30, i64 2
  %31 = load i8, ptr %b_analyse_keyframe, align 2
  %tobool23.not = icmp eq i8 %31, 0
  br i1 %tobool23.not, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %x264_lookahead_shift.exit
  %last_nonb = getelementptr inbounds i8, ptr %30, i64 16
  %32 = load ptr, ptr %last_nonb, align 8
  %i_type = getelementptr inbounds i8, ptr %32, i64 4
  %33 = load i32, ptr %i_type, align 4
  %.off = add i32 %33, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true
  tail call void @x264_slicetype_analyse(ptr noundef nonnull %h, i32 noundef 1) #5
  %.pre = load ptr, ptr %lookahead5, align 16
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true, %if.then32, %x264_lookahead_shift.exit
  %34 = phi ptr [ %30, %land.lhs.true ], [ %.pre, %if.then32 ], [ %30, %x264_lookahead_shift.exit ]
  %i_size.i61 = getelementptr inbounds i8, ptr %34, i64 100
  %35 = load i32, ptr %i_size.i61, align 4
  %tobool.not.i62 = icmp eq i32 %35, 0
  br i1 %tobool.not.i62, label %if.end34, label %if.end.i63

if.end.i63:                                       ; preds = %if.end33
  %ofbuf.i64 = getelementptr inbounds i8, ptr %34, i64 88
  %36 = load ptr, ptr %ofbuf.i64, align 8
  %37 = load ptr, ptr %36, align 8
  %i_bframes.i65 = getelementptr inbounds i8, ptr %37, i64 86
  %38 = load i8, ptr %i_bframes.i65, align 2
  %conv.i66 = zext i8 %38 to i32
  %add.i67 = add nuw nsw i32 %conv.i66, 1
  br label %while.body.i69

while.body.i69:                                   ; preds = %while.body.i69, %if.end.i63
  %i_frames.015.i70 = phi i32 [ %add.i67, %if.end.i63 ], [ %dec.i71, %while.body.i69 ]
  %dec.i71 = add nsw i32 %i_frames.015.i70, -1
  %39 = load ptr, ptr %frames, align 16
  %40 = load ptr, ptr %lookahead5, align 16
  %ofbuf5.i72 = getelementptr inbounds i8, ptr %40, i64 88
  %41 = load ptr, ptr %ofbuf5.i72, align 8
  %call.i73 = tail call ptr @x264_frame_shift(ptr noundef %41) #5
  tail call void @x264_frame_push(ptr noundef %39, ptr noundef %call.i73) #5
  %42 = load ptr, ptr %lookahead5, align 16
  %i_size9.i74 = getelementptr inbounds i8, ptr %42, i64 100
  %43 = load i32, ptr %i_size9.i74, align 4
  %dec10.i75 = add nsw i32 %43, -1
  store i32 %dec10.i75, ptr %i_size9.i74, align 4
  %tobool3.not.i76 = icmp eq i32 %dec.i71, 0
  br i1 %tobool3.not.i76, label %if.end34, label %while.body.i69

if.end34:                                         ; preds = %while.body.i, %while.body.i69, %while.cond.preheader.split, %if.end33, %if.else, %lor.lhs.false
  ret void
}

declare void @x264_slicetype_decide(ptr noundef) local_unnamed_addr #1

declare void @x264_slicetype_analyse(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @x264_frame_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @x264_frame_shift(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
