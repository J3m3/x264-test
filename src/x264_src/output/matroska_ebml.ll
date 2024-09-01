; ModuleID = 'x264_src/output/matroska_ebml.c'
source_filename = "x264_src/output/matroska_ebml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Haali Matroska Writer b0\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @mk_create_writer(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 {
entry:
  %calloc = tail call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104)
  %tobool.not = icmp eq ptr %calloc, null
  br i1 %tobool.not, label %cleanup, label %if.else.i

if.else.i:                                        ; preds = %entry
  %freelist.i = getelementptr inbounds i8, ptr %calloc, i64 40
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56)
  %tobool4.not.i = icmp eq ptr %calloc.i, null
  br i1 %tobool4.not.i, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else.i
  tail call void @free(ptr noundef nonnull %calloc) #11
  br label %cleanup

if.end5:                                          ; preds = %if.else.i
  %owner.i = getelementptr inbounds i8, ptr %calloc.i, i64 24
  store ptr %calloc, ptr %owner.i, align 8
  %actlist.i = getelementptr inbounds i8, ptr %calloc, i64 48
  %prev21.i = getelementptr inbounds i8, ptr %calloc.i, i64 8
  store ptr %actlist.i, ptr %prev21.i, align 8
  store ptr %calloc.i, ptr %actlist.i, align 8
  %root = getelementptr inbounds i8, ptr %calloc, i64 16
  store ptr %calloc.i, ptr %root, align 8
  %0 = load i8, ptr %filename, align 1
  %.not = icmp eq i8 %0, 45
  br i1 %.not, label %if.end5.tail, label %if.else

if.end5.tail:                                     ; preds = %if.end5
  %1 = getelementptr inbounds i8, ptr %filename, i64 1
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5.tail
  %4 = load ptr, ptr @stdout, align 8
  br label %if.end11

if.else:                                          ; preds = %if.end5, %if.end5.tail
  %call9 = tail call noalias ptr @fopen64(ptr noundef nonnull %filename, ptr noundef nonnull @.str.1)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %storemerge = phi ptr [ %4, %if.then8 ], [ %call9, %if.else ]
  store ptr %storemerge, ptr %calloc, align 8
  %tobool13.not = icmp eq ptr %storemerge, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %5 = load ptr, ptr %freelist.i, align 8
  %tobool.not24.i = icmp eq ptr %5, null
  br i1 %tobool.not24.i, label %for.cond.cleanup.i, label %for.body.i

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.then14
  %6 = load ptr, ptr %actlist.i, align 8
  %tobool4.not26.i = icmp eq ptr %6, null
  br i1 %tobool4.not26.i, label %mk_destroy_contexts.exit, label %for.body6.i

for.body.i:                                       ; preds = %if.then14, %for.body.i
  %cur.025.i = phi ptr [ %7, %for.body.i ], [ %5, %if.then14 ]
  %7 = load ptr, ptr %cur.025.i, align 8
  %data.i = getelementptr inbounds i8, ptr %cur.025.i, i64 40
  %8 = load ptr, ptr %data.i, align 8
  tail call void @free(ptr noundef %8) #11
  tail call void @free(ptr noundef nonnull %cur.025.i) #11
  %tobool.not.i30 = icmp eq ptr %7, null
  br i1 %tobool.not.i30, label %for.cond.cleanup.i, label %for.body.i

for.body6.i:                                      ; preds = %for.cond.cleanup.i, %for.body6.i
  %cur2.027.i = phi ptr [ %9, %for.body6.i ], [ %6, %for.cond.cleanup.i ]
  %9 = load ptr, ptr %cur2.027.i, align 8
  %data8.i = getelementptr inbounds i8, ptr %cur2.027.i, i64 40
  %10 = load ptr, ptr %data8.i, align 8
  tail call void @free(ptr noundef %10) #11
  tail call void @free(ptr noundef nonnull %cur2.027.i) #11
  %tobool4.not.i32 = icmp eq ptr %9, null
  br i1 %tobool4.not.i32, label %mk_destroy_contexts.exit, label %for.body6.i

mk_destroy_contexts.exit:                         ; preds = %for.body6.i, %for.cond.cleanup.i
  tail call void @free(ptr noundef %calloc) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %timescale = getelementptr inbounds i8, ptr %calloc, i64 64
  store i64 1000000, ptr %timescale, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end15, %mk_destroy_contexts.exit, %if.then4
  %retval.0 = phi ptr [ %calloc, %if.end15 ], [ null, %mk_destroy_contexts.exit ], [ null, %if.then4 ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define internal fastcc ptr @mk_create_context(ptr noundef %w, ptr noundef %parent, i32 noundef %id) unnamed_addr #3 {
entry:
  %freelist = getelementptr inbounds i8, ptr %w, i64 40
  %0 = load ptr, ptr %freelist, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %freelist, align 8
  br label %if.end6

if.else:                                          ; preds = %entry
  %calloc = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56)
  %tobool4.not = icmp eq ptr %calloc, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.else, %if.then
  %c.0 = phi ptr [ %0, %if.then ], [ %calloc, %if.else ]
  %parent7 = getelementptr inbounds i8, ptr %c.0, i64 16
  store ptr %parent, ptr %parent7, align 8
  %owner = getelementptr inbounds i8, ptr %c.0, i64 24
  store ptr %w, ptr %owner, align 8
  %id8 = getelementptr inbounds i8, ptr %c.0, i64 32
  store i32 %id, ptr %id8, align 8
  %actlist = getelementptr inbounds i8, ptr %w, i64 48
  %2 = load ptr, ptr %actlist, align 8
  %tobool10.not = icmp eq ptr %2, null
  br i1 %tobool10.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.end6
  %prev = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %c.0, ptr %prev, align 8
  %.pre = load ptr, ptr %owner, align 8
  %actlist17.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 48
  %.pre43 = load ptr, ptr %actlist17.phi.trans.insert, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end6
  %3 = phi ptr [ %.pre43, %if.then11 ], [ null, %if.end6 ]
  %4 = phi ptr [ %.pre, %if.then11 ], [ %w, %if.end6 ]
  %actlist17 = getelementptr inbounds i8, ptr %4, i64 48
  store ptr %3, ptr %c.0, align 8
  %prev21 = getelementptr inbounds i8, ptr %c.0, i64 8
  store ptr %actlist17, ptr %prev21, align 8
  store ptr %c.0, ptr %actlist17, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end15
  %retval.0 = phi ptr [ %c.0, %if.end15 ], [ null, %if.else ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mk_writeHeader(ptr noundef %w, ptr nocapture noundef readonly %writing_app, ptr nocapture noundef readonly %codec_id, ptr nocapture noundef readonly %codec_private, i32 noundef %codec_private_size, i64 noundef %default_frame_duration, i64 noundef %timescale, i32 noundef %width, i32 noundef %height, i32 noundef %d_width, i32 noundef %d_height) local_unnamed_addr #0 {
entry:
  %wrote_header = getelementptr inbounds i8, ptr %w, i64 96
  %0 = load i8, ptr %wrote_header, align 8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %timescale1 = getelementptr inbounds i8, ptr %w, i64 64
  store i64 %timescale, ptr %timescale1, align 8
  %def_duration = getelementptr inbounds i8, ptr %w, i64 56
  store i64 %default_frame_duration, ptr %def_duration, align 8
  %root = getelementptr inbounds i8, ptr %w, i64 16
  %1 = load ptr, ptr %root, align 8
  %freelist.i = getelementptr inbounds i8, ptr %w, i64 40
  %2 = load ptr, ptr %freelist.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %freelist.i, align 8
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56)
  %tobool4.not.i = icmp eq ptr %calloc.i, null
  br i1 %tobool4.not.i, label %cleanup, label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %c.0.i = phi ptr [ %2, %if.then.i ], [ %calloc.i, %if.else.i ]
  %parent7.i = getelementptr inbounds i8, ptr %c.0.i, i64 16
  store ptr %1, ptr %parent7.i, align 8
  %owner.i = getelementptr inbounds i8, ptr %c.0.i, i64 24
  store ptr %w, ptr %owner.i, align 8
  %id8.i = getelementptr inbounds i8, ptr %c.0.i, i64 32
  store i32 440786851, ptr %id8.i, align 8
  %actlist.i = getelementptr inbounds i8, ptr %w, i64 48
  %4 = load ptr, ptr %actlist.i, align 8
  %tobool10.not.i = icmp eq ptr %4, null
  br i1 %tobool10.not.i, label %do.body, label %if.then11.i

if.then11.i:                                      ; preds = %if.end6.i
  %prev.i = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %c.0.i, ptr %prev.i, align 8
  %.pre.i = load ptr, ptr %owner.i, align 8
  %actlist17.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 48
  %.pre43.i = load ptr, ptr %actlist17.phi.trans.insert.i, align 8
  br label %do.body

do.body:                                          ; preds = %if.then11.i, %if.end6.i
  %5 = phi ptr [ %.pre43.i, %if.then11.i ], [ null, %if.end6.i ]
  %6 = phi ptr [ %.pre.i, %if.then11.i ], [ %w, %if.end6.i ]
  %actlist17.i = getelementptr inbounds i8, ptr %6, i64 48
  store ptr %5, ptr %c.0.i, align 8
  %prev21.i = getelementptr inbounds i8, ptr %c.0.i, i64 8
  store ptr %actlist17.i, ptr %prev21.i, align 8
  store ptr %c.0.i, ptr %actlist17.i, align 8
  %d_max.i86.i = getelementptr inbounds i8, ptr %c.0.i, i64 52
  %7 = load i32, ptr %d_max.i86.i, align 4
  %d_cur.i84.i = getelementptr inbounds i8, ptr %c.0.i, i64 48
  %8 = load i32, ptr %d_cur.i84.i, align 8
  %add.i58.i = add i32 %8, 2
  %cmp.i60.i = icmp ugt i32 %add.i58.i, %7
  br i1 %cmp.i60.i, label %if.then.i68.i, label %entry.if.end11_crit_edge.i61.i

entry.if.end11_crit_edge.i61.i:                   ; preds = %do.body
  %data12.phi.trans.insert.i62.i = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i63.i = load ptr, ptr %data12.phi.trans.insert.i62.i, align 8
  br label %land.rhs.preheader.i

if.then.i68.i:                                    ; preds = %do.body
  %tobool.not.i69.i = icmp eq i32 %7, 0
  %shl.i70.i = shl i32 %7, 1
  %spec.select.i71.i = select i1 %tobool.not.i69.i, i32 16, i32 %shl.i70.i
  br label %while.cond.i72.i

while.cond.i72.i:                                 ; preds = %while.cond.i72.i, %if.then.i68.i
  %dn.0.i73.i = phi i32 [ %spec.select.i71.i, %if.then.i68.i ], [ %shl4.i75.i, %while.cond.i72.i ]
  %cmp3.i74.i = icmp ugt i32 %add.i58.i, %dn.0.i73.i
  %shl4.i75.i = shl i32 %dn.0.i73.i, 1
  br i1 %cmp3.i74.i, label %while.cond.i72.i, label %while.end.i76.i

while.end.i76.i:                                  ; preds = %while.cond.i72.i
  %data5.i77.i = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %9 = load ptr, ptr %data5.i77.i, align 8
  %conv.i78.i = zext i32 %dn.0.i73.i to i64
  %call.i79.i = tail call ptr @realloc(ptr noundef %9, i64 noundef %conv.i78.i) #12
  %tobool6.not.not.i80.i = icmp eq ptr %call.i79.i, null
  br i1 %tobool6.not.not.i80.i, label %cleanup, label %if.end.i81.i

if.end.i81.i:                                     ; preds = %while.end.i76.i
  store ptr %call.i79.i, ptr %data5.i77.i, align 8
  store i32 %dn.0.i73.i, ptr %d_max.i86.i, align 4
  %.pre34.i82.i = load i32, ptr %d_cur.i84.i, align 8
  br label %land.rhs.preheader.i

land.rhs.preheader.i:                             ; preds = %if.end.i81.i, %entry.if.end11_crit_edge.i61.i
  %10 = phi i32 [ %8, %entry.if.end11_crit_edge.i61.i ], [ %.pre34.i82.i, %if.end.i81.i ]
  %11 = phi ptr [ %.pre.i63.i, %entry.if.end11_crit_edge.i61.i ], [ %call.i79.i, %if.end.i81.i ]
  %idx.ext.i65.i = zext i32 %10 to i64
  %add.ptr.i66.i = getelementptr inbounds i8, ptr %11, i64 %idx.ext.i65.i
  store i8 66, ptr %add.ptr.i66.i, align 1
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i66.i, i64 1
  store i8 -122, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i, align 1
  store i32 %add.i58.i, ptr %d_cur.i84.i, align 8
  %add.i.i506 = add i32 %8, 3
  %12 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i.i508 = icmp ugt i32 %add.i.i506, %12
  br i1 %cmp.i.i508, label %if.then.i.i515, label %entry.if.end11_crit_edge.i.i509

entry.if.end11_crit_edge.i.i509:                  ; preds = %land.rhs.preheader.i
  %data12.phi.trans.insert.i.i510 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i511 = load ptr, ptr %data12.phi.trans.insert.i.i510, align 8
  br label %do.body31.i

if.then.i.i515:                                   ; preds = %land.rhs.preheader.i
  %tobool.not.i.i516 = icmp eq i32 %12, 0
  %shl.i.i517 = shl i32 %12, 1
  %spec.select.i.i518 = select i1 %tobool.not.i.i516, i32 16, i32 %shl.i.i517
  br label %while.cond.i.i519

while.cond.i.i519:                                ; preds = %while.cond.i.i519, %if.then.i.i515
  %dn.0.i.i520 = phi i32 [ %spec.select.i.i518, %if.then.i.i515 ], [ %shl4.i.i522, %while.cond.i.i519 ]
  %cmp3.i.i521 = icmp ugt i32 %add.i.i506, %dn.0.i.i520
  %shl4.i.i522 = shl i32 %dn.0.i.i520, 1
  br i1 %cmp3.i.i521, label %while.cond.i.i519, label %while.end.i.i523

while.end.i.i523:                                 ; preds = %while.cond.i.i519
  %data5.i.i524 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %13 = load ptr, ptr %data5.i.i524, align 8
  %conv.i.i525 = zext i32 %dn.0.i.i520 to i64
  %call.i.i526 = tail call ptr @realloc(ptr noundef %13, i64 noundef %conv.i.i525) #12
  %tobool6.not.not.i.i527 = icmp eq ptr %call.i.i526, null
  br i1 %tobool6.not.not.i.i527, label %cleanup, label %if.end.i.i528

if.end.i.i528:                                    ; preds = %while.end.i.i523
  store ptr %call.i.i526, ptr %data5.i.i524, align 8
  store i32 %dn.0.i.i520, ptr %d_max.i86.i, align 4
  %.pre34.i.i529 = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body31.i

do.body31.i:                                      ; preds = %if.end.i.i528, %entry.if.end11_crit_edge.i.i509
  %14 = phi i32 [ %add.i58.i, %entry.if.end11_crit_edge.i.i509 ], [ %.pre34.i.i529, %if.end.i.i528 ]
  %15 = phi ptr [ %.pre.i.i511, %entry.if.end11_crit_edge.i.i509 ], [ %call.i.i526, %if.end.i.i528 ]
  %idx.ext.i.i512 = zext i32 %14 to i64
  %add.ptr.i.i513 = getelementptr inbounds i8, ptr %15, i64 %idx.ext.i.i512
  store i8 -127, ptr %add.ptr.i.i513, align 1
  store i32 %add.i.i506, ptr %d_cur.i84.i, align 8
  %add.i.i = add i32 %8, 4
  %16 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i.i = icmp ugt i32 %add.i.i, %16
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body31.i
  %data12.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8
  br label %do.body8

if.then.i.i:                                      ; preds = %do.body31.i
  %tobool.not.i.i = icmp eq i32 %16, 0
  %shl.i.i = shl i32 %16, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ]
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl4.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %17 = load ptr, ptr %data5.i.i, align 8
  %conv.i.i = zext i32 %dn.0.i.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %17, i64 noundef %conv.i.i) #12
  %tobool6.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.not.i.i, label %cleanup, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8
  store i32 %dn.0.i.i, ptr %d_max.i86.i, align 4
  %.pre34.i.i = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body8

do.body8:                                         ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %18 = phi i32 [ %add.i.i506, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ]
  %19 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %idx.ext.i.i = zext i32 %18 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %19, i64 %idx.ext.i.i
  store i8 1, ptr %add.ptr.i.i, align 1
  store i32 %add.i.i, ptr %d_cur.i84.i, align 8
  %20 = load i32, ptr %d_max.i86.i, align 4
  %add.i58.i561 = add i32 %8, 6
  %cmp.i60.i562 = icmp ugt i32 %add.i58.i561, %20
  br i1 %cmp.i60.i562, label %if.then.i68.i571, label %entry.if.end11_crit_edge.i61.i563

entry.if.end11_crit_edge.i61.i563:                ; preds = %do.body8
  %data12.phi.trans.insert.i62.i564 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i63.i565 = load ptr, ptr %data12.phi.trans.insert.i62.i564, align 8
  br label %land.rhs.preheader.i317

if.then.i68.i571:                                 ; preds = %do.body8
  %tobool.not.i69.i572 = icmp eq i32 %20, 0
  %shl.i70.i573 = shl i32 %20, 1
  %spec.select.i71.i574 = select i1 %tobool.not.i69.i572, i32 16, i32 %shl.i70.i573
  br label %while.cond.i72.i575

while.cond.i72.i575:                              ; preds = %while.cond.i72.i575, %if.then.i68.i571
  %dn.0.i73.i576 = phi i32 [ %spec.select.i71.i574, %if.then.i68.i571 ], [ %shl4.i75.i578, %while.cond.i72.i575 ]
  %cmp3.i74.i577 = icmp ugt i32 %add.i58.i561, %dn.0.i73.i576
  %shl4.i75.i578 = shl i32 %dn.0.i73.i576, 1
  br i1 %cmp3.i74.i577, label %while.cond.i72.i575, label %while.end.i76.i579

while.end.i76.i579:                               ; preds = %while.cond.i72.i575
  %data5.i77.i580 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %21 = load ptr, ptr %data5.i77.i580, align 8
  %conv.i78.i581 = zext i32 %dn.0.i73.i576 to i64
  %call.i79.i582 = tail call ptr @realloc(ptr noundef %21, i64 noundef %conv.i78.i581) #12
  %tobool6.not.not.i80.i583 = icmp eq ptr %call.i79.i582, null
  br i1 %tobool6.not.not.i80.i583, label %cleanup, label %if.end.i81.i584

if.end.i81.i584:                                  ; preds = %while.end.i76.i579
  store ptr %call.i79.i582, ptr %data5.i77.i580, align 8
  store i32 %dn.0.i73.i576, ptr %d_max.i86.i, align 4
  %.pre34.i82.i585 = load i32, ptr %d_cur.i84.i, align 8
  br label %land.rhs.preheader.i317

land.rhs.preheader.i317:                          ; preds = %if.end.i81.i584, %entry.if.end11_crit_edge.i61.i563
  %22 = phi i32 [ %add.i.i, %entry.if.end11_crit_edge.i61.i563 ], [ %.pre34.i82.i585, %if.end.i81.i584 ]
  %23 = phi ptr [ %.pre.i63.i565, %entry.if.end11_crit_edge.i61.i563 ], [ %call.i79.i582, %if.end.i81.i584 ]
  %idx.ext.i65.i567 = zext i32 %22 to i64
  %add.ptr.i66.i568 = getelementptr inbounds i8, ptr %23, i64 %idx.ext.i65.i567
  store i8 66, ptr %add.ptr.i66.i568, align 1
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i569 = getelementptr inbounds i8, ptr %add.ptr.i66.i568, i64 1
  store i8 -9, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i569, align 1
  store i32 %add.i58.i561, ptr %d_cur.i84.i, align 8
  %add.i.i533 = add i32 %8, 7
  %24 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i.i535 = icmp ugt i32 %add.i.i533, %24
  br i1 %cmp.i.i535, label %if.then.i.i543, label %entry.if.end11_crit_edge.i.i536

entry.if.end11_crit_edge.i.i536:                  ; preds = %land.rhs.preheader.i317
  %data12.phi.trans.insert.i.i537 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i538 = load ptr, ptr %data12.phi.trans.insert.i.i537, align 8
  br label %do.body31.i320

if.then.i.i543:                                   ; preds = %land.rhs.preheader.i317
  %tobool.not.i.i544 = icmp eq i32 %24, 0
  %shl.i.i545 = shl i32 %24, 1
  %spec.select.i.i546 = select i1 %tobool.not.i.i544, i32 16, i32 %shl.i.i545
  br label %while.cond.i.i547

while.cond.i.i547:                                ; preds = %while.cond.i.i547, %if.then.i.i543
  %dn.0.i.i548 = phi i32 [ %spec.select.i.i546, %if.then.i.i543 ], [ %shl4.i.i550, %while.cond.i.i547 ]
  %cmp3.i.i549 = icmp ugt i32 %add.i.i533, %dn.0.i.i548
  %shl4.i.i550 = shl i32 %dn.0.i.i548, 1
  br i1 %cmp3.i.i549, label %while.cond.i.i547, label %while.end.i.i551

while.end.i.i551:                                 ; preds = %while.cond.i.i547
  %data5.i.i552 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %25 = load ptr, ptr %data5.i.i552, align 8
  %conv.i.i553 = zext i32 %dn.0.i.i548 to i64
  %call.i.i554 = tail call ptr @realloc(ptr noundef %25, i64 noundef %conv.i.i553) #12
  %tobool6.not.not.i.i555 = icmp eq ptr %call.i.i554, null
  br i1 %tobool6.not.not.i.i555, label %cleanup, label %if.end.i.i556

if.end.i.i556:                                    ; preds = %while.end.i.i551
  store ptr %call.i.i554, ptr %data5.i.i552, align 8
  store i32 %dn.0.i.i548, ptr %d_max.i86.i, align 4
  %.pre34.i.i557 = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body31.i320

do.body31.i320:                                   ; preds = %if.end.i.i556, %entry.if.end11_crit_edge.i.i536
  %26 = phi i32 [ %add.i58.i561, %entry.if.end11_crit_edge.i.i536 ], [ %.pre34.i.i557, %if.end.i.i556 ]
  %27 = phi ptr [ %.pre.i.i538, %entry.if.end11_crit_edge.i.i536 ], [ %call.i.i554, %if.end.i.i556 ]
  %idx.ext.i.i540 = zext i32 %26 to i64
  %add.ptr.i.i541 = getelementptr inbounds i8, ptr %27, i64 %idx.ext.i.i540
  store i8 -127, ptr %add.ptr.i.i541, align 1
  store i32 %add.i.i533, ptr %d_cur.i84.i, align 8
  %add.i.i323 = add i32 %8, 8
  %28 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i.i325 = icmp ugt i32 %add.i.i323, %28
  br i1 %cmp.i.i325, label %if.then.i.i333, label %entry.if.end11_crit_edge.i.i326

entry.if.end11_crit_edge.i.i326:                  ; preds = %do.body31.i320
  %data12.phi.trans.insert.i.i327 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i328 = load ptr, ptr %data12.phi.trans.insert.i.i327, align 8
  br label %do.body15

if.then.i.i333:                                   ; preds = %do.body31.i320
  %tobool.not.i.i334 = icmp eq i32 %28, 0
  %shl.i.i335 = shl i32 %28, 1
  %spec.select.i.i336 = select i1 %tobool.not.i.i334, i32 16, i32 %shl.i.i335
  br label %while.cond.i.i337

while.cond.i.i337:                                ; preds = %while.cond.i.i337, %if.then.i.i333
  %dn.0.i.i338 = phi i32 [ %spec.select.i.i336, %if.then.i.i333 ], [ %shl4.i.i340, %while.cond.i.i337 ]
  %cmp3.i.i339 = icmp ugt i32 %add.i.i323, %dn.0.i.i338
  %shl4.i.i340 = shl i32 %dn.0.i.i338, 1
  br i1 %cmp3.i.i339, label %while.cond.i.i337, label %while.end.i.i341

while.end.i.i341:                                 ; preds = %while.cond.i.i337
  %data5.i.i342 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %29 = load ptr, ptr %data5.i.i342, align 8
  %conv.i.i343 = zext i32 %dn.0.i.i338 to i64
  %call.i.i344 = tail call ptr @realloc(ptr noundef %29, i64 noundef %conv.i.i343) #12
  %tobool6.not.not.i.i345 = icmp eq ptr %call.i.i344, null
  br i1 %tobool6.not.not.i.i345, label %cleanup, label %if.end.i.i346

if.end.i.i346:                                    ; preds = %while.end.i.i341
  store ptr %call.i.i344, ptr %data5.i.i342, align 8
  store i32 %dn.0.i.i338, ptr %d_max.i86.i, align 4
  %.pre34.i.i347 = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body15

do.body15:                                        ; preds = %if.end.i.i346, %entry.if.end11_crit_edge.i.i326
  %30 = phi i32 [ %add.i.i533, %entry.if.end11_crit_edge.i.i326 ], [ %.pre34.i.i347, %if.end.i.i346 ]
  %31 = phi ptr [ %.pre.i.i328, %entry.if.end11_crit_edge.i.i326 ], [ %call.i.i344, %if.end.i.i346 ]
  %idx.ext.i.i330 = zext i32 %30 to i64
  %add.ptr.i.i331 = getelementptr inbounds i8, ptr %31, i64 %idx.ext.i.i330
  store i8 1, ptr %add.ptr.i.i331, align 1
  store i32 %add.i.i323, ptr %d_cur.i84.i, align 8
  %32 = load i32, ptr %d_max.i86.i, align 4
  %add.i58.i617 = add i32 %8, 10
  %cmp.i60.i618 = icmp ugt i32 %add.i58.i617, %32
  br i1 %cmp.i60.i618, label %if.then.i68.i627, label %entry.if.end11_crit_edge.i61.i619

entry.if.end11_crit_edge.i61.i619:                ; preds = %do.body15
  %data12.phi.trans.insert.i62.i620 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i63.i621 = load ptr, ptr %data12.phi.trans.insert.i62.i620, align 8
  br label %land.rhs.preheader.i359

if.then.i68.i627:                                 ; preds = %do.body15
  %tobool.not.i69.i628 = icmp eq i32 %32, 0
  %shl.i70.i629 = shl i32 %32, 1
  %spec.select.i71.i630 = select i1 %tobool.not.i69.i628, i32 16, i32 %shl.i70.i629
  br label %while.cond.i72.i631

while.cond.i72.i631:                              ; preds = %while.cond.i72.i631, %if.then.i68.i627
  %dn.0.i73.i632 = phi i32 [ %spec.select.i71.i630, %if.then.i68.i627 ], [ %shl4.i75.i634, %while.cond.i72.i631 ]
  %cmp3.i74.i633 = icmp ugt i32 %add.i58.i617, %dn.0.i73.i632
  %shl4.i75.i634 = shl i32 %dn.0.i73.i632, 1
  br i1 %cmp3.i74.i633, label %while.cond.i72.i631, label %while.end.i76.i635

while.end.i76.i635:                               ; preds = %while.cond.i72.i631
  %data5.i77.i636 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %33 = load ptr, ptr %data5.i77.i636, align 8
  %conv.i78.i637 = zext i32 %dn.0.i73.i632 to i64
  %call.i79.i638 = tail call ptr @realloc(ptr noundef %33, i64 noundef %conv.i78.i637) #12
  %tobool6.not.not.i80.i639 = icmp eq ptr %call.i79.i638, null
  br i1 %tobool6.not.not.i80.i639, label %cleanup, label %if.end.i81.i640

if.end.i81.i640:                                  ; preds = %while.end.i76.i635
  store ptr %call.i79.i638, ptr %data5.i77.i636, align 8
  store i32 %dn.0.i73.i632, ptr %d_max.i86.i, align 4
  %.pre34.i82.i641 = load i32, ptr %d_cur.i84.i, align 8
  br label %land.rhs.preheader.i359

land.rhs.preheader.i359:                          ; preds = %if.end.i81.i640, %entry.if.end11_crit_edge.i61.i619
  %34 = phi i32 [ %add.i.i323, %entry.if.end11_crit_edge.i61.i619 ], [ %.pre34.i82.i641, %if.end.i81.i640 ]
  %35 = phi ptr [ %.pre.i63.i621, %entry.if.end11_crit_edge.i61.i619 ], [ %call.i79.i638, %if.end.i81.i640 ]
  %idx.ext.i65.i623 = zext i32 %34 to i64
  %add.ptr.i66.i624 = getelementptr inbounds i8, ptr %35, i64 %idx.ext.i65.i623
  store i8 66, ptr %add.ptr.i66.i624, align 1
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i625 = getelementptr inbounds i8, ptr %add.ptr.i66.i624, i64 1
  store i8 -14, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i625, align 1
  store i32 %add.i58.i617, ptr %d_cur.i84.i, align 8
  %add.i.i589 = add i32 %8, 11
  %36 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i.i591 = icmp ugt i32 %add.i.i589, %36
  br i1 %cmp.i.i591, label %if.then.i.i599, label %entry.if.end11_crit_edge.i.i592

entry.if.end11_crit_edge.i.i592:                  ; preds = %land.rhs.preheader.i359
  %data12.phi.trans.insert.i.i593 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i594 = load ptr, ptr %data12.phi.trans.insert.i.i593, align 8
  br label %do.body31.i362

if.then.i.i599:                                   ; preds = %land.rhs.preheader.i359
  %tobool.not.i.i600 = icmp eq i32 %36, 0
  %shl.i.i601 = shl i32 %36, 1
  %spec.select.i.i602 = select i1 %tobool.not.i.i600, i32 16, i32 %shl.i.i601
  br label %while.cond.i.i603

while.cond.i.i603:                                ; preds = %while.cond.i.i603, %if.then.i.i599
  %dn.0.i.i604 = phi i32 [ %spec.select.i.i602, %if.then.i.i599 ], [ %shl4.i.i606, %while.cond.i.i603 ]
  %cmp3.i.i605 = icmp ugt i32 %add.i.i589, %dn.0.i.i604
  %shl4.i.i606 = shl i32 %dn.0.i.i604, 1
  br i1 %cmp3.i.i605, label %while.cond.i.i603, label %while.end.i.i607

while.end.i.i607:                                 ; preds = %while.cond.i.i603
  %data5.i.i608 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %37 = load ptr, ptr %data5.i.i608, align 8
  %conv.i.i609 = zext i32 %dn.0.i.i604 to i64
  %call.i.i610 = tail call ptr @realloc(ptr noundef %37, i64 noundef %conv.i.i609) #12
  %tobool6.not.not.i.i611 = icmp eq ptr %call.i.i610, null
  br i1 %tobool6.not.not.i.i611, label %cleanup, label %if.end.i.i612

if.end.i.i612:                                    ; preds = %while.end.i.i607
  store ptr %call.i.i610, ptr %data5.i.i608, align 8
  store i32 %dn.0.i.i604, ptr %d_max.i86.i, align 4
  %.pre34.i.i613 = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body31.i362

do.body31.i362:                                   ; preds = %if.end.i.i612, %entry.if.end11_crit_edge.i.i592
  %38 = phi i32 [ %add.i58.i617, %entry.if.end11_crit_edge.i.i592 ], [ %.pre34.i.i613, %if.end.i.i612 ]
  %39 = phi ptr [ %.pre.i.i594, %entry.if.end11_crit_edge.i.i592 ], [ %call.i.i610, %if.end.i.i612 ]
  %idx.ext.i.i596 = zext i32 %38 to i64
  %add.ptr.i.i597 = getelementptr inbounds i8, ptr %39, i64 %idx.ext.i.i596
  store i8 -127, ptr %add.ptr.i.i597, align 1
  store i32 %add.i.i589, ptr %d_cur.i84.i, align 8
  %add.i.i365 = add i32 %8, 12
  %40 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i.i367 = icmp ugt i32 %add.i.i365, %40
  br i1 %cmp.i.i367, label %if.then.i.i375, label %entry.if.end11_crit_edge.i.i368

entry.if.end11_crit_edge.i.i368:                  ; preds = %do.body31.i362
  %data12.phi.trans.insert.i.i369 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i370 = load ptr, ptr %data12.phi.trans.insert.i.i369, align 8
  br label %do.body22

if.then.i.i375:                                   ; preds = %do.body31.i362
  %tobool.not.i.i376 = icmp eq i32 %40, 0
  %shl.i.i377 = shl i32 %40, 1
  %spec.select.i.i378 = select i1 %tobool.not.i.i376, i32 16, i32 %shl.i.i377
  br label %while.cond.i.i379

while.cond.i.i379:                                ; preds = %while.cond.i.i379, %if.then.i.i375
  %dn.0.i.i380 = phi i32 [ %spec.select.i.i378, %if.then.i.i375 ], [ %shl4.i.i382, %while.cond.i.i379 ]
  %cmp3.i.i381 = icmp ugt i32 %add.i.i365, %dn.0.i.i380
  %shl4.i.i382 = shl i32 %dn.0.i.i380, 1
  br i1 %cmp3.i.i381, label %while.cond.i.i379, label %while.end.i.i383

while.end.i.i383:                                 ; preds = %while.cond.i.i379
  %data5.i.i384 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %41 = load ptr, ptr %data5.i.i384, align 8
  %conv.i.i385 = zext i32 %dn.0.i.i380 to i64
  %call.i.i386 = tail call ptr @realloc(ptr noundef %41, i64 noundef %conv.i.i385) #12
  %tobool6.not.not.i.i387 = icmp eq ptr %call.i.i386, null
  br i1 %tobool6.not.not.i.i387, label %cleanup, label %if.end.i.i388

if.end.i.i388:                                    ; preds = %while.end.i.i383
  store ptr %call.i.i386, ptr %data5.i.i384, align 8
  store i32 %dn.0.i.i380, ptr %d_max.i86.i, align 4
  %.pre34.i.i389 = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body22

do.body22:                                        ; preds = %if.end.i.i388, %entry.if.end11_crit_edge.i.i368
  %42 = phi i32 [ %add.i.i589, %entry.if.end11_crit_edge.i.i368 ], [ %.pre34.i.i389, %if.end.i.i388 ]
  %43 = phi ptr [ %.pre.i.i370, %entry.if.end11_crit_edge.i.i368 ], [ %call.i.i386, %if.end.i.i388 ]
  %idx.ext.i.i372 = zext i32 %42 to i64
  %add.ptr.i.i373 = getelementptr inbounds i8, ptr %43, i64 %idx.ext.i.i372
  store i8 4, ptr %add.ptr.i.i373, align 1
  store i32 %add.i.i365, ptr %d_cur.i84.i, align 8
  %44 = load i32, ptr %d_max.i86.i, align 4
  %add.i58.i673 = add i32 %8, 14
  %cmp.i60.i674 = icmp ugt i32 %add.i58.i673, %44
  br i1 %cmp.i60.i674, label %if.then.i68.i683, label %entry.if.end11_crit_edge.i61.i675

entry.if.end11_crit_edge.i61.i675:                ; preds = %do.body22
  %data12.phi.trans.insert.i62.i676 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i63.i677 = load ptr, ptr %data12.phi.trans.insert.i62.i676, align 8
  br label %land.rhs.preheader.i401

if.then.i68.i683:                                 ; preds = %do.body22
  %tobool.not.i69.i684 = icmp eq i32 %44, 0
  %shl.i70.i685 = shl i32 %44, 1
  %spec.select.i71.i686 = select i1 %tobool.not.i69.i684, i32 16, i32 %shl.i70.i685
  br label %while.cond.i72.i687

while.cond.i72.i687:                              ; preds = %while.cond.i72.i687, %if.then.i68.i683
  %dn.0.i73.i688 = phi i32 [ %spec.select.i71.i686, %if.then.i68.i683 ], [ %shl4.i75.i690, %while.cond.i72.i687 ]
  %cmp3.i74.i689 = icmp ugt i32 %add.i58.i673, %dn.0.i73.i688
  %shl4.i75.i690 = shl i32 %dn.0.i73.i688, 1
  br i1 %cmp3.i74.i689, label %while.cond.i72.i687, label %while.end.i76.i691

while.end.i76.i691:                               ; preds = %while.cond.i72.i687
  %data5.i77.i692 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %45 = load ptr, ptr %data5.i77.i692, align 8
  %conv.i78.i693 = zext i32 %dn.0.i73.i688 to i64
  %call.i79.i694 = tail call ptr @realloc(ptr noundef %45, i64 noundef %conv.i78.i693) #12
  %tobool6.not.not.i80.i695 = icmp eq ptr %call.i79.i694, null
  br i1 %tobool6.not.not.i80.i695, label %cleanup, label %if.end.i81.i696

if.end.i81.i696:                                  ; preds = %while.end.i76.i691
  store ptr %call.i79.i694, ptr %data5.i77.i692, align 8
  store i32 %dn.0.i73.i688, ptr %d_max.i86.i, align 4
  %.pre34.i82.i697 = load i32, ptr %d_cur.i84.i, align 8
  br label %land.rhs.preheader.i401

land.rhs.preheader.i401:                          ; preds = %if.end.i81.i696, %entry.if.end11_crit_edge.i61.i675
  %46 = phi i32 [ %add.i.i365, %entry.if.end11_crit_edge.i61.i675 ], [ %.pre34.i82.i697, %if.end.i81.i696 ]
  %47 = phi ptr [ %.pre.i63.i677, %entry.if.end11_crit_edge.i61.i675 ], [ %call.i79.i694, %if.end.i81.i696 ]
  %idx.ext.i65.i679 = zext i32 %46 to i64
  %add.ptr.i66.i680 = getelementptr inbounds i8, ptr %47, i64 %idx.ext.i65.i679
  store i8 66, ptr %add.ptr.i66.i680, align 1
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i681 = getelementptr inbounds i8, ptr %add.ptr.i66.i680, i64 1
  store i8 -13, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i681, align 1
  store i32 %add.i58.i673, ptr %d_cur.i84.i, align 8
  %add.i.i645 = add i32 %8, 15
  %48 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i.i647 = icmp ugt i32 %add.i.i645, %48
  br i1 %cmp.i.i647, label %if.then.i.i655, label %entry.if.end11_crit_edge.i.i648

entry.if.end11_crit_edge.i.i648:                  ; preds = %land.rhs.preheader.i401
  %data12.phi.trans.insert.i.i649 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i650 = load ptr, ptr %data12.phi.trans.insert.i.i649, align 8
  br label %do.body31.i404

if.then.i.i655:                                   ; preds = %land.rhs.preheader.i401
  %tobool.not.i.i656 = icmp eq i32 %48, 0
  %shl.i.i657 = shl i32 %48, 1
  %spec.select.i.i658 = select i1 %tobool.not.i.i656, i32 16, i32 %shl.i.i657
  br label %while.cond.i.i659

while.cond.i.i659:                                ; preds = %while.cond.i.i659, %if.then.i.i655
  %dn.0.i.i660 = phi i32 [ %spec.select.i.i658, %if.then.i.i655 ], [ %shl4.i.i662, %while.cond.i.i659 ]
  %cmp3.i.i661 = icmp ugt i32 %add.i.i645, %dn.0.i.i660
  %shl4.i.i662 = shl i32 %dn.0.i.i660, 1
  br i1 %cmp3.i.i661, label %while.cond.i.i659, label %while.end.i.i663

while.end.i.i663:                                 ; preds = %while.cond.i.i659
  %data5.i.i664 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %49 = load ptr, ptr %data5.i.i664, align 8
  %conv.i.i665 = zext i32 %dn.0.i.i660 to i64
  %call.i.i666 = tail call ptr @realloc(ptr noundef %49, i64 noundef %conv.i.i665) #12
  %tobool6.not.not.i.i667 = icmp eq ptr %call.i.i666, null
  br i1 %tobool6.not.not.i.i667, label %cleanup, label %if.end.i.i668

if.end.i.i668:                                    ; preds = %while.end.i.i663
  store ptr %call.i.i666, ptr %data5.i.i664, align 8
  store i32 %dn.0.i.i660, ptr %d_max.i86.i, align 4
  %.pre34.i.i669 = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body31.i404

do.body31.i404:                                   ; preds = %if.end.i.i668, %entry.if.end11_crit_edge.i.i648
  %50 = phi i32 [ %add.i58.i673, %entry.if.end11_crit_edge.i.i648 ], [ %.pre34.i.i669, %if.end.i.i668 ]
  %51 = phi ptr [ %.pre.i.i650, %entry.if.end11_crit_edge.i.i648 ], [ %call.i.i666, %if.end.i.i668 ]
  %idx.ext.i.i652 = zext i32 %50 to i64
  %add.ptr.i.i653 = getelementptr inbounds i8, ptr %51, i64 %idx.ext.i.i652
  store i8 -127, ptr %add.ptr.i.i653, align 1
  store i32 %add.i.i645, ptr %d_cur.i84.i, align 8
  %add.i.i407 = add i32 %8, 16
  %52 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i.i409 = icmp ugt i32 %add.i.i407, %52
  br i1 %cmp.i.i409, label %if.then.i.i417, label %entry.if.end11_crit_edge.i.i410

entry.if.end11_crit_edge.i.i410:                  ; preds = %do.body31.i404
  %data12.phi.trans.insert.i.i411 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i412 = load ptr, ptr %data12.phi.trans.insert.i.i411, align 8
  br label %do.body29

if.then.i.i417:                                   ; preds = %do.body31.i404
  %tobool.not.i.i418 = icmp eq i32 %52, 0
  %shl.i.i419 = shl i32 %52, 1
  %spec.select.i.i420 = select i1 %tobool.not.i.i418, i32 16, i32 %shl.i.i419
  br label %while.cond.i.i421

while.cond.i.i421:                                ; preds = %while.cond.i.i421, %if.then.i.i417
  %dn.0.i.i422 = phi i32 [ %spec.select.i.i420, %if.then.i.i417 ], [ %shl4.i.i424, %while.cond.i.i421 ]
  %cmp3.i.i423 = icmp ugt i32 %add.i.i407, %dn.0.i.i422
  %shl4.i.i424 = shl i32 %dn.0.i.i422, 1
  br i1 %cmp3.i.i423, label %while.cond.i.i421, label %while.end.i.i425

while.end.i.i425:                                 ; preds = %while.cond.i.i421
  %data5.i.i426 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %53 = load ptr, ptr %data5.i.i426, align 8
  %conv.i.i427 = zext i32 %dn.0.i.i422 to i64
  %call.i.i428 = tail call ptr @realloc(ptr noundef %53, i64 noundef %conv.i.i427) #12
  %tobool6.not.not.i.i429 = icmp eq ptr %call.i.i428, null
  br i1 %tobool6.not.not.i.i429, label %cleanup, label %if.end.i.i430

if.end.i.i430:                                    ; preds = %while.end.i.i425
  store ptr %call.i.i428, ptr %data5.i.i426, align 8
  store i32 %dn.0.i.i422, ptr %d_max.i86.i, align 4
  %.pre34.i.i431 = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body29

do.body29:                                        ; preds = %if.end.i.i430, %entry.if.end11_crit_edge.i.i410
  %54 = phi i32 [ %add.i.i645, %entry.if.end11_crit_edge.i.i410 ], [ %.pre34.i.i431, %if.end.i.i430 ]
  %55 = phi ptr [ %.pre.i.i412, %entry.if.end11_crit_edge.i.i410 ], [ %call.i.i428, %if.end.i.i430 ]
  %idx.ext.i.i414 = zext i32 %54 to i64
  %add.ptr.i.i415 = getelementptr inbounds i8, ptr %55, i64 %idx.ext.i.i414
  store i8 8, ptr %add.ptr.i.i415, align 1
  store i32 %add.i.i407, ptr %d_cur.i84.i, align 8
  %56 = load i32, ptr %d_max.i86.i, align 4
  %add.i58.i701 = add i32 %8, 18
  %cmp.i60.i702 = icmp ugt i32 %add.i58.i701, %56
  br i1 %cmp.i60.i702, label %if.then.i68.i711, label %entry.if.end11_crit_edge.i61.i703

entry.if.end11_crit_edge.i61.i703:                ; preds = %do.body29
  %data12.phi.trans.insert.i62.i704 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i63.i705 = load ptr, ptr %data12.phi.trans.insert.i62.i704, align 8
  br label %do.body2.i

if.then.i68.i711:                                 ; preds = %do.body29
  %tobool.not.i69.i712 = icmp eq i32 %56, 0
  %shl.i70.i713 = shl i32 %56, 1
  %spec.select.i71.i714 = select i1 %tobool.not.i69.i712, i32 16, i32 %shl.i70.i713
  br label %while.cond.i72.i715

while.cond.i72.i715:                              ; preds = %while.cond.i72.i715, %if.then.i68.i711
  %dn.0.i73.i716 = phi i32 [ %spec.select.i71.i714, %if.then.i68.i711 ], [ %shl4.i75.i718, %while.cond.i72.i715 ]
  %cmp3.i74.i717 = icmp ugt i32 %add.i58.i701, %dn.0.i73.i716
  %shl4.i75.i718 = shl i32 %dn.0.i73.i716, 1
  br i1 %cmp3.i74.i717, label %while.cond.i72.i715, label %while.end.i76.i719

while.end.i76.i719:                               ; preds = %while.cond.i72.i715
  %data5.i77.i720 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %57 = load ptr, ptr %data5.i77.i720, align 8
  %conv.i78.i721 = zext i32 %dn.0.i73.i716 to i64
  %call.i79.i722 = tail call ptr @realloc(ptr noundef %57, i64 noundef %conv.i78.i721) #12
  %tobool6.not.not.i80.i723 = icmp eq ptr %call.i79.i722, null
  br i1 %tobool6.not.not.i80.i723, label %cleanup, label %if.end.i81.i724

if.end.i81.i724:                                  ; preds = %while.end.i76.i719
  store ptr %call.i79.i722, ptr %data5.i77.i720, align 8
  store i32 %dn.0.i73.i716, ptr %d_max.i86.i, align 4
  %.pre34.i82.i725 = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.end.i81.i724, %entry.if.end11_crit_edge.i61.i703
  %58 = phi i32 [ %add.i.i407, %entry.if.end11_crit_edge.i61.i703 ], [ %.pre34.i82.i725, %if.end.i81.i724 ]
  %59 = phi ptr [ %.pre.i63.i705, %entry.if.end11_crit_edge.i61.i703 ], [ %call.i79.i722, %if.end.i81.i724 ]
  %idx.ext.i65.i707 = zext i32 %58 to i64
  %add.ptr.i66.i708 = getelementptr inbounds i8, ptr %59, i64 %idx.ext.i65.i707
  store i8 66, ptr %add.ptr.i66.i708, align 1
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i709 = getelementptr inbounds i8, ptr %add.ptr.i66.i708, i64 1
  store i8 -126, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i709, align 1
  store i32 %add.i58.i701, ptr %d_cur.i84.i, align 8
  %call3.i = tail call fastcc i32 @mk_write_size(ptr noundef nonnull %c.0.i, i32 noundef 8)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %cleanup, label %do.body10.i

do.body10.i:                                      ; preds = %do.body2.i
  %60 = load i32, ptr %d_cur.i84.i, align 8
  %add.i.i436 = add i32 %60, 8
  %61 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i.i438 = icmp ugt i32 %add.i.i436, %61
  br i1 %cmp.i.i438, label %if.then.i.i446, label %entry.if.end11_crit_edge.i.i439

entry.if.end11_crit_edge.i.i439:                  ; preds = %do.body10.i
  %data12.phi.trans.insert.i.i440 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i441 = load ptr, ptr %data12.phi.trans.insert.i.i440, align 8
  br label %do.body36

if.then.i.i446:                                   ; preds = %do.body10.i
  %tobool.not.i.i447 = icmp eq i32 %61, 0
  %shl.i.i448 = shl i32 %61, 1
  %spec.select.i.i449 = select i1 %tobool.not.i.i447, i32 16, i32 %shl.i.i448
  br label %while.cond.i.i450

while.cond.i.i450:                                ; preds = %while.cond.i.i450, %if.then.i.i446
  %dn.0.i.i451 = phi i32 [ %spec.select.i.i449, %if.then.i.i446 ], [ %shl4.i.i453, %while.cond.i.i450 ]
  %cmp3.i.i452 = icmp ugt i32 %add.i.i436, %dn.0.i.i451
  %shl4.i.i453 = shl i32 %dn.0.i.i451, 1
  br i1 %cmp3.i.i452, label %while.cond.i.i450, label %while.end.i.i454

while.end.i.i454:                                 ; preds = %while.cond.i.i450
  %data5.i.i455 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %62 = load ptr, ptr %data5.i.i455, align 8
  %conv.i.i456 = zext i32 %dn.0.i.i451 to i64
  %call.i.i457 = tail call ptr @realloc(ptr noundef %62, i64 noundef %conv.i.i456) #12
  %tobool6.not.not.i.i458 = icmp eq ptr %call.i.i457, null
  br i1 %tobool6.not.not.i.i458, label %cleanup, label %if.end.i.i459

if.end.i.i459:                                    ; preds = %while.end.i.i454
  store ptr %call.i.i457, ptr %data5.i.i455, align 8
  store i32 %dn.0.i.i451, ptr %d_max.i86.i, align 4
  %.pre34.i.i460 = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body36

do.body36:                                        ; preds = %if.end.i.i459, %entry.if.end11_crit_edge.i.i439
  %63 = phi i32 [ %60, %entry.if.end11_crit_edge.i.i439 ], [ %.pre34.i.i460, %if.end.i.i459 ]
  %64 = phi ptr [ %.pre.i.i441, %entry.if.end11_crit_edge.i.i439 ], [ %call.i.i457, %if.end.i.i459 ]
  %idx.ext.i.i443 = zext i32 %63 to i64
  %add.ptr.i.i444 = getelementptr inbounds i8, ptr %64, i64 %idx.ext.i.i443
  store i64 7019831366685843821, ptr %add.ptr.i.i444, align 1
  store i32 %add.i.i436, ptr %d_cur.i84.i, align 8
  %65 = load i32, ptr %d_max.i86.i, align 4
  %add.i58.i729 = add i32 %60, 10
  %cmp.i60.i730 = icmp ugt i32 %add.i58.i729, %65
  br i1 %cmp.i60.i730, label %if.then.i68.i739, label %entry.if.end11_crit_edge.i61.i731

entry.if.end11_crit_edge.i61.i731:                ; preds = %do.body36
  %data12.phi.trans.insert.i62.i732 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i63.i733 = load ptr, ptr %data12.phi.trans.insert.i62.i732, align 8
  br label %land.rhs.preheader.i471

if.then.i68.i739:                                 ; preds = %do.body36
  %tobool.not.i69.i740 = icmp eq i32 %65, 0
  %shl.i70.i741 = shl i32 %65, 1
  %spec.select.i71.i742 = select i1 %tobool.not.i69.i740, i32 16, i32 %shl.i70.i741
  br label %while.cond.i72.i743

while.cond.i72.i743:                              ; preds = %while.cond.i72.i743, %if.then.i68.i739
  %dn.0.i73.i744 = phi i32 [ %spec.select.i71.i742, %if.then.i68.i739 ], [ %shl4.i75.i746, %while.cond.i72.i743 ]
  %cmp3.i74.i745 = icmp ugt i32 %add.i58.i729, %dn.0.i73.i744
  %shl4.i75.i746 = shl i32 %dn.0.i73.i744, 1
  br i1 %cmp3.i74.i745, label %while.cond.i72.i743, label %while.end.i76.i747

while.end.i76.i747:                               ; preds = %while.cond.i72.i743
  %data5.i77.i748 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %66 = load ptr, ptr %data5.i77.i748, align 8
  %conv.i78.i749 = zext i32 %dn.0.i73.i744 to i64
  %call.i79.i750 = tail call ptr @realloc(ptr noundef %66, i64 noundef %conv.i78.i749) #12
  %tobool6.not.not.i80.i751 = icmp eq ptr %call.i79.i750, null
  br i1 %tobool6.not.not.i80.i751, label %cleanup, label %if.end.i81.i752

if.end.i81.i752:                                  ; preds = %while.end.i76.i747
  store ptr %call.i79.i750, ptr %data5.i77.i748, align 8
  store i32 %dn.0.i73.i744, ptr %d_max.i86.i, align 4
  %.pre34.i82.i753 = load i32, ptr %d_cur.i84.i, align 8
  br label %land.rhs.preheader.i471

land.rhs.preheader.i471:                          ; preds = %if.end.i81.i752, %entry.if.end11_crit_edge.i61.i731
  %67 = phi i32 [ %add.i.i436, %entry.if.end11_crit_edge.i61.i731 ], [ %.pre34.i82.i753, %if.end.i81.i752 ]
  %68 = phi ptr [ %.pre.i63.i733, %entry.if.end11_crit_edge.i61.i731 ], [ %call.i79.i750, %if.end.i81.i752 ]
  %idx.ext.i65.i735 = zext i32 %67 to i64
  %add.ptr.i66.i736 = getelementptr inbounds i8, ptr %68, i64 %idx.ext.i65.i735
  store i8 66, ptr %add.ptr.i66.i736, align 1
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i737 = getelementptr inbounds i8, ptr %add.ptr.i66.i736, i64 1
  store i8 -121, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i737, align 1
  store i32 %add.i58.i729, ptr %d_cur.i84.i, align 8
  %call24.i472 = tail call fastcc i32 @mk_write_size(ptr noundef nonnull %c.0.i, i32 noundef 1)
  %cmp25.i473 = icmp slt i32 %call24.i472, 0
  br i1 %cmp25.i473, label %cleanup, label %do.body31.i474

do.body31.i474:                                   ; preds = %land.rhs.preheader.i471
  %69 = load i32, ptr %d_cur.i84.i, align 8
  %add.i.i477 = add i32 %69, 1
  %70 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i.i479 = icmp ugt i32 %add.i.i477, %70
  br i1 %cmp.i.i479, label %if.then.i.i488, label %entry.if.end11_crit_edge.i.i480

entry.if.end11_crit_edge.i.i480:                  ; preds = %do.body31.i474
  %data12.phi.trans.insert.i.i481 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %.pre.i.i482 = load ptr, ptr %data12.phi.trans.insert.i.i481, align 8
  br label %do.body43

if.then.i.i488:                                   ; preds = %do.body31.i474
  %tobool.not.i.i489 = icmp eq i32 %70, 0
  %shl.i.i490 = shl i32 %70, 1
  %spec.select.i.i491 = select i1 %tobool.not.i.i489, i32 16, i32 %shl.i.i490
  br label %while.cond.i.i492

while.cond.i.i492:                                ; preds = %while.cond.i.i492, %if.then.i.i488
  %dn.0.i.i493 = phi i32 [ %spec.select.i.i491, %if.then.i.i488 ], [ %shl4.i.i495, %while.cond.i.i492 ]
  %cmp3.i.i494 = icmp ugt i32 %add.i.i477, %dn.0.i.i493
  %shl4.i.i495 = shl i32 %dn.0.i.i493, 1
  br i1 %cmp3.i.i494, label %while.cond.i.i492, label %while.end.i.i496

while.end.i.i496:                                 ; preds = %while.cond.i.i492
  %data5.i.i497 = getelementptr inbounds i8, ptr %c.0.i, i64 40
  %71 = load ptr, ptr %data5.i.i497, align 8
  %conv.i.i498 = zext i32 %dn.0.i.i493 to i64
  %call.i.i499 = tail call ptr @realloc(ptr noundef %71, i64 noundef %conv.i.i498) #12
  %tobool6.not.not.i.i500 = icmp eq ptr %call.i.i499, null
  br i1 %tobool6.not.not.i.i500, label %cleanup, label %if.end.i.i501

if.end.i.i501:                                    ; preds = %while.end.i.i496
  store ptr %call.i.i499, ptr %data5.i.i497, align 8
  store i32 %dn.0.i.i493, ptr %d_max.i86.i, align 4
  %.pre34.i.i502 = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body43

do.body43:                                        ; preds = %if.end.i.i501, %entry.if.end11_crit_edge.i.i480
  %72 = phi i32 [ %69, %entry.if.end11_crit_edge.i.i480 ], [ %.pre34.i.i502, %if.end.i.i501 ]
  %73 = phi ptr [ %.pre.i.i482, %entry.if.end11_crit_edge.i.i480 ], [ %call.i.i499, %if.end.i.i501 ]
  %idx.ext.i.i484 = zext i32 %72 to i64
  %add.ptr.i.i485 = getelementptr inbounds i8, ptr %73, i64 %idx.ext.i.i484
  store i8 2, ptr %add.ptr.i.i485, align 1
  store i32 %add.i.i477, ptr %d_cur.i84.i, align 8
  %call44 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %c.0.i, i32 noundef 17029, i64 noundef 2)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %cleanup, label %do.body50

do.body50:                                        ; preds = %do.body43
  %call51 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %c.0.i, ptr noundef null)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %cleanup, label %do.end56

do.end56:                                         ; preds = %do.body50
  %74 = load ptr, ptr %root, align 8
  %call58 = tail call fastcc ptr @mk_create_context(ptr noundef %w, ptr noundef %74, i32 noundef 408125543)
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %cleanup, label %do.body62

do.body62:                                        ; preds = %do.end56
  %call63 = tail call fastcc i32 @mk_flush_context_id(ptr noundef nonnull %call58)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %cleanup, label %do.body69

do.body69:                                        ; preds = %do.body62
  %call70 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call58, ptr noundef null)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %cleanup, label %do.end75

do.end75:                                         ; preds = %do.body69
  %75 = load ptr, ptr %root, align 8
  %call77 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %w, ptr noundef %75, i32 noundef 357149030)
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %cleanup, label %do.body81

do.body81:                                        ; preds = %do.end75
  %call82 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %call77, i32 noundef 19840, ptr noundef nonnull @.str.3)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %cleanup, label %do.body88

do.body88:                                        ; preds = %do.body81
  %call89 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %call77, i32 noundef 22337, ptr noundef %writing_app)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %cleanup, label %do.body95

do.body95:                                        ; preds = %do.body88
  %76 = load i64, ptr %timescale1, align 8
  %call97 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call77, i32 noundef 2807729, i64 noundef %76)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %cleanup, label %do.body103

do.body103:                                       ; preds = %do.body95
  %call104 = tail call fastcc i32 @mk_write_float(ptr noundef nonnull %call77)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %cleanup, label %do.end109

do.end109:                                        ; preds = %do.body103
  %d_cur = getelementptr inbounds i8, ptr %call77, i64 48
  %77 = load i32, ptr %d_cur, align 8
  %sub = add i32 %77, -4
  %duration_ptr = getelementptr inbounds i8, ptr %w, i64 8
  store i32 %sub, ptr %duration_ptr, align 8
  %call112 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call77, ptr noundef nonnull %duration_ptr)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %cleanup, label %do.end117

do.end117:                                        ; preds = %do.end109
  %78 = load ptr, ptr %root, align 8
  %call119 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %w, ptr noundef %78, i32 noundef 374648427)
  %tobool120.not = icmp eq ptr %call119, null
  br i1 %tobool120.not, label %cleanup, label %if.end122

if.end122:                                        ; preds = %do.end117
  %call123 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %w, ptr noundef nonnull %call119, i32 noundef 174)
  %tobool124.not = icmp eq ptr %call123, null
  br i1 %tobool124.not, label %cleanup, label %do.body127

do.body127:                                       ; preds = %if.end122
  %call128 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 215, i64 noundef 1)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %cleanup, label %do.body134

do.body134:                                       ; preds = %do.body127
  %call135 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 29637, i64 noundef 1)
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %cleanup, label %do.body141

do.body141:                                       ; preds = %do.body134
  %call142 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 131, i64 noundef 1)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %cleanup, label %do.body148

do.body148:                                       ; preds = %do.body141
  %call149 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 156, i64 noundef 0)
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %cleanup, label %do.body155

do.body155:                                       ; preds = %do.body148
  %call156 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %call123, i32 noundef 134, ptr noundef %codec_id)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %cleanup, label %do.end161

do.end161:                                        ; preds = %do.body155
  %tobool162.not = icmp eq i32 %codec_private_size, 0
  br i1 %tobool162.not, label %if.end171, label %do.body164

do.body164:                                       ; preds = %do.end161
  %call165 = tail call fastcc i32 @mk_write_bin(ptr noundef nonnull %call123, ptr noundef %codec_private, i32 noundef %codec_private_size)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %cleanup, label %if.end171

if.end171:                                        ; preds = %do.body164, %do.end161
  %tobool172.not = icmp eq i64 %default_frame_duration, 0
  br i1 %tobool172.not, label %if.end181, label %do.body174

do.body174:                                       ; preds = %if.end171
  %call175 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call123, i32 noundef 2352003, i64 noundef %default_frame_duration)
  %cmp176 = icmp slt i32 %call175, 0
  br i1 %cmp176, label %cleanup, label %if.end181

if.end181:                                        ; preds = %do.body174, %if.end171
  %call182 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %w, ptr noundef nonnull %call123, i32 noundef 224)
  %tobool183.not = icmp eq ptr %call182, null
  br i1 %tobool183.not, label %cleanup, label %do.body186

do.body186:                                       ; preds = %if.end181
  %conv = zext i32 %width to i64
  %call187 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call182, i32 noundef 176, i64 noundef %conv)
  %cmp188 = icmp slt i32 %call187, 0
  br i1 %cmp188, label %cleanup, label %do.body194

do.body194:                                       ; preds = %do.body186
  %conv195 = zext i32 %height to i64
  %call196 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call182, i32 noundef 186, i64 noundef %conv195)
  %cmp197 = icmp slt i32 %call196, 0
  br i1 %cmp197, label %cleanup, label %do.body203

do.body203:                                       ; preds = %do.body194
  %conv204 = zext i32 %d_width to i64
  %call205 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call182, i32 noundef 21680, i64 noundef %conv204)
  %cmp206 = icmp slt i32 %call205, 0
  br i1 %cmp206, label %cleanup, label %do.body212

do.body212:                                       ; preds = %do.body203
  %conv213 = zext i32 %d_height to i64
  %call214 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %call182, i32 noundef 21690, i64 noundef %conv213)
  %cmp215 = icmp slt i32 %call214, 0
  br i1 %cmp215, label %cleanup, label %do.body221

do.body221:                                       ; preds = %do.body212
  %call222 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call182, ptr noundef null)
  %cmp223 = icmp slt i32 %call222, 0
  br i1 %cmp223, label %cleanup, label %do.body229

do.body229:                                       ; preds = %do.body221
  %call230 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call123, ptr noundef null)
  %cmp231 = icmp slt i32 %call230, 0
  br i1 %cmp231, label %cleanup, label %do.body237

do.body237:                                       ; preds = %do.body229
  %call238 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %call119, ptr noundef null)
  %cmp239 = icmp slt i32 %call238, 0
  br i1 %cmp239, label %cleanup, label %do.body245

do.body245:                                       ; preds = %do.body237
  %79 = load ptr, ptr %root, align 8
  %call247 = tail call fastcc i32 @mk_flush_context_data(ptr noundef %79)
  %cmp248 = icmp slt i32 %call247, 0
  br i1 %cmp248, label %cleanup, label %do.end253

do.end253:                                        ; preds = %do.body245
  store i8 1, ptr %wrote_header, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end.i76.i747, %while.end.i.i496, %land.rhs.preheader.i471, %while.end.i76.i719, %while.end.i.i454, %do.body2.i, %while.end.i.i663, %while.end.i76.i691, %while.end.i.i425, %while.end.i.i607, %while.end.i76.i635, %while.end.i.i383, %while.end.i.i551, %while.end.i76.i579, %while.end.i.i341, %while.end.i.i523, %while.end.i76.i, %while.end.i.i, %if.else.i, %do.body245, %do.body237, %do.body229, %do.body221, %do.body212, %do.body203, %do.body194, %do.body186, %if.end181, %do.body174, %do.body164, %do.body155, %do.body148, %do.body141, %do.body134, %do.body127, %if.end122, %do.end117, %do.end109, %do.body103, %do.body95, %do.body88, %do.body81, %do.end75, %do.body69, %do.body62, %do.end56, %do.body50, %do.body43, %entry, %do.end253
  %retval.0 = phi i32 [ 0, %do.end253 ], [ -1, %entry ], [ -1, %do.body43 ], [ -1, %do.body50 ], [ -1, %do.end56 ], [ -1, %do.body62 ], [ -1, %do.body69 ], [ -1, %do.end75 ], [ -1, %do.body81 ], [ -1, %do.body88 ], [ -1, %do.body95 ], [ -1, %do.body103 ], [ -1, %do.end109 ], [ -1, %do.end117 ], [ -1, %if.end122 ], [ -1, %do.body127 ], [ -1, %do.body134 ], [ -1, %do.body141 ], [ -1, %do.body148 ], [ -1, %do.body155 ], [ -1, %do.body164 ], [ -1, %do.body174 ], [ -1, %if.end181 ], [ -1, %do.body186 ], [ -1, %do.body194 ], [ -1, %do.body203 ], [ -1, %do.body212 ], [ -1, %do.body221 ], [ -1, %do.body229 ], [ -1, %do.body237 ], [ -1, %do.body245 ], [ -1, %if.else.i ], [ -1, %while.end.i.i ], [ -1, %while.end.i76.i ], [ -1, %while.end.i.i523 ], [ -1, %while.end.i.i341 ], [ -1, %while.end.i76.i579 ], [ -1, %while.end.i.i551 ], [ -1, %while.end.i.i383 ], [ -1, %while.end.i76.i635 ], [ -1, %while.end.i.i607 ], [ -1, %while.end.i.i425 ], [ -1, %while.end.i76.i691 ], [ -1, %while.end.i.i663 ], [ -1, %do.body2.i ], [ -1, %while.end.i.i454 ], [ -1, %while.end.i76.i719 ], [ -1, %land.rhs.preheader.i471 ], [ -1, %while.end.i.i496 ], [ -1, %while.end.i76.i747 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_write_uint(ptr nocapture noundef %c, i32 noundef %id, i64 noundef %ui) unnamed_addr #0 {
entry:
  %c_ui = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c_ui) #11
  %shr = lshr i64 %ui, 56
  %conv = trunc nuw i64 %shr to i8
  store i8 %conv, ptr %c_ui, align 1
  %arrayinit.element = getelementptr inbounds i8, ptr %c_ui, i64 1
  %shr1 = lshr i64 %ui, 48
  %conv2 = trunc i64 %shr1 to i8
  store i8 %conv2, ptr %arrayinit.element, align 1
  %arrayinit.element3 = getelementptr inbounds i8, ptr %c_ui, i64 2
  %shr4 = lshr i64 %ui, 40
  %conv5 = trunc i64 %shr4 to i8
  store i8 %conv5, ptr %arrayinit.element3, align 1
  %arrayinit.element6 = getelementptr inbounds i8, ptr %c_ui, i64 3
  %shr7 = lshr i64 %ui, 32
  %conv8 = trunc i64 %shr7 to i8
  store i8 %conv8, ptr %arrayinit.element6, align 1
  %arrayinit.element9 = getelementptr inbounds i8, ptr %c_ui, i64 4
  %shr10 = lshr i64 %ui, 24
  %conv11 = trunc i64 %shr10 to i8
  store i8 %conv11, ptr %arrayinit.element9, align 1
  %arrayinit.element12 = getelementptr inbounds i8, ptr %c_ui, i64 5
  %shr13 = lshr i64 %ui, 16
  %conv14 = trunc i64 %shr13 to i8
  store i8 %conv14, ptr %arrayinit.element12, align 1
  %arrayinit.element15 = getelementptr inbounds i8, ptr %c_ui, i64 6
  %shr16 = lshr i64 %ui, 8
  %conv17 = trunc i64 %shr16 to i8
  store i8 %conv17, ptr %arrayinit.element15, align 1
  %arrayinit.element18 = getelementptr inbounds i8, ptr %c_ui, i64 7
  %conv19 = trunc i64 %ui to i8
  store i8 %conv19, ptr %arrayinit.element18, align 1
  %call = tail call fastcc i32 @mk_write_id(ptr noundef %c, i32 noundef %id)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %tobool.not = icmp ult i64 %ui, 72057594037927936
  br i1 %tobool.not, label %while.body, label %do.body23

while.body:                                       ; preds = %land.rhs.preheader
  %tobool.not.1 = icmp eq i8 %conv2, 0
  br i1 %tobool.not.1, label %while.body.1, label %do.body23

while.body.1:                                     ; preds = %while.body
  %tobool.not.2 = icmp eq i8 %conv5, 0
  br i1 %tobool.not.2, label %while.body.2, label %do.body23

while.body.2:                                     ; preds = %while.body.1
  %tobool.not.3 = icmp eq i8 %conv8, 0
  br i1 %tobool.not.3, label %while.body.3, label %do.body23

while.body.3:                                     ; preds = %while.body.2
  %tobool.not.4 = icmp eq i8 %conv11, 0
  br i1 %tobool.not.4, label %while.body.4, label %do.body23

while.body.4:                                     ; preds = %while.body.3
  %tobool.not.5 = icmp eq i8 %conv14, 0
  br i1 %tobool.not.5, label %while.body.5, label %do.body23

while.body.5:                                     ; preds = %while.body.4
  %tobool.not.6 = icmp eq i8 %conv17, 0
  %spec.select = select i1 %tobool.not.6, i32 7, i32 6
  br label %do.body23

do.body23:                                        ; preds = %while.body.5, %while.body.4, %while.body.3, %while.body.2, %while.body.1, %while.body, %land.rhs.preheader
  %i.0.lcssa = phi i32 [ 0, %land.rhs.preheader ], [ 1, %while.body ], [ 2, %while.body.1 ], [ 3, %while.body.2 ], [ 4, %while.body.3 ], [ 5, %while.body.4 ], [ %spec.select, %while.body.5 ]
  %sub = sub nuw nsw i32 8, %i.0.lcssa
  %call24 = tail call fastcc i32 @mk_write_size(ptr noundef %c, i32 noundef %sub)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %cleanup, label %do.body31

do.body31:                                        ; preds = %do.body23
  %idx.ext = zext nneg i32 %i.0.lcssa to i64
  %add.ptr = getelementptr inbounds i8, ptr %c_ui, i64 %idx.ext
  %d_cur.i = getelementptr inbounds i8, ptr %c, i64 48
  %0 = load i32, ptr %d_cur.i, align 8
  %add.i = add i32 %0, %sub
  %d_max.i = getelementptr inbounds i8, ptr %c, i64 52
  %1 = load i32, ptr %d_max.i, align 4
  %cmp.i = icmp ugt i32 %add.i, %1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %do.body31
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8
  br label %mk_append_context_data.exit

if.then.i:                                        ; preds = %do.body31
  %tobool.not.i = icmp eq i32 %1, 0
  %shl.i = shl i32 %1, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %c, i64 40
  %2 = load ptr, ptr %data5.i, align 8
  %conv.i = zext i32 %dn.0.i to i64
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #12
  %tobool6.not.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8
  store i32 %dn.0.i, ptr %d_max.i, align 4
  %.pre34.i = load i32, ptr %d_cur.i, align 8
  br label %mk_append_context_data.exit

mk_append_context_data.exit:                      ; preds = %entry.if.end11_crit_edge.i, %if.end.i
  %3 = phi i32 [ %0, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ]
  %4 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ]
  %idx.ext.i = zext i32 %3 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i
  %conv14.i = zext nneg i32 %sub to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %add.ptr, i64 %conv14.i, i1 false)
  store i32 %add.i, ptr %d_cur.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %mk_append_context_data.exit, %while.end.i, %do.body23, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %do.body23 ], [ 0, %mk_append_context_data.exit ], [ -1, %while.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c_ui) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_write_string(ptr nocapture noundef %c, i32 noundef %id, ptr nocapture noundef readonly %str) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #13
  %call1 = tail call fastcc i32 @mk_write_id(ptr noundef %c, i32 noundef %id)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %cleanup, label %do.body2

do.body2:                                         ; preds = %entry
  %conv = trunc i64 %call to i32
  %call3 = tail call fastcc i32 @mk_write_size(ptr noundef %c, i32 noundef %conv)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %cleanup, label %do.body10

do.body10:                                        ; preds = %do.body2
  %d_cur.i = getelementptr inbounds i8, ptr %c, i64 48
  %0 = load i32, ptr %d_cur.i, align 8
  %add.i = add i32 %0, %conv
  %d_max.i = getelementptr inbounds i8, ptr %c, i64 52
  %1 = load i32, ptr %d_max.i, align 4
  %cmp.i = icmp ugt i32 %add.i, %1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %do.body10
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8
  br label %mk_append_context_data.exit

if.then.i:                                        ; preds = %do.body10
  %tobool.not.i = icmp eq i32 %1, 0
  %shl.i = shl i32 %1, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %c, i64 40
  %2 = load ptr, ptr %data5.i, align 8
  %conv.i = zext i32 %dn.0.i to i64
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #12
  %tobool6.not.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8
  store i32 %dn.0.i, ptr %d_max.i, align 4
  %.pre34.i = load i32, ptr %d_cur.i, align 8
  br label %mk_append_context_data.exit

mk_append_context_data.exit:                      ; preds = %entry.if.end11_crit_edge.i, %if.end.i
  %3 = phi i32 [ %0, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ]
  %4 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ]
  %idx.ext.i = zext i32 %3 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i
  %conv14.i = and i64 %call, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr readonly align 1 %str, i64 %conv14.i, i1 false)
  store i32 %add.i, ptr %d_cur.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %mk_append_context_data.exit, %while.end.i, %do.body2, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %do.body2 ], [ 0, %mk_append_context_data.exit ], [ -1, %while.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_close_context(ptr noundef %c, ptr noundef %off) unnamed_addr #0 {
entry:
  %id = getelementptr inbounds i8, ptr %c, i64 32
  %0 = load i32, ptr %id, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %parent = getelementptr inbounds i8, ptr %c, i64 16
  %1 = load ptr, ptr %parent, align 8
  %call = tail call fastcc i32 @mk_write_id(ptr noundef %1, i32 noundef %0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %return, label %do.body3

do.body3:                                         ; preds = %do.body
  %2 = load ptr, ptr %parent, align 8
  %d_cur = getelementptr inbounds i8, ptr %c, i64 48
  %3 = load i32, ptr %d_cur, align 8
  %call5 = tail call fastcc i32 @mk_write_size(ptr noundef %2, i32 noundef %3)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %return, label %if.end10

if.end10:                                         ; preds = %do.body3, %entry
  %parent11 = getelementptr inbounds i8, ptr %c, i64 16
  %4 = load ptr, ptr %parent11, align 8
  %tobool12 = icmp ne ptr %4, null
  %tobool13 = icmp ne ptr %off, null
  %or.cond = and i1 %tobool13, %tobool12
  br i1 %or.cond, label %if.then14, label %do.body18

if.then14:                                        ; preds = %if.end10
  %d_cur16 = getelementptr inbounds i8, ptr %4, i64 48
  %5 = load i32, ptr %d_cur16, align 8
  %6 = load i32, ptr %off, align 4
  %add = add i32 %6, %5
  store i32 %add, ptr %off, align 4
  br label %do.body18

do.body18:                                        ; preds = %if.end10, %if.then14
  %d_cur.i = getelementptr inbounds i8, ptr %c, i64 48
  %7 = load i32, ptr %d_cur.i, align 8
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.end23, label %if.end.i

if.end.i:                                         ; preds = %do.body18
  %8 = load ptr, ptr %parent11, align 8
  %tobool1.not.i = icmp eq ptr %8, null
  %data7.i = getelementptr inbounds i8, ptr %c, i64 40
  %9 = load ptr, ptr %data7.i, align 8
  br i1 %tobool1.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  %d_cur.i.i = getelementptr inbounds i8, ptr %8, i64 48
  %10 = load i32, ptr %d_cur.i.i, align 8
  %add.i.i = add i32 %10, %7
  %d_max.i.i = getelementptr inbounds i8, ptr %8, i64 52
  %11 = load i32, ptr %d_max.i.i, align 4
  %cmp.i.i = icmp ugt i32 %add.i.i, %11
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body.i
  %data12.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %8, i64 40
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8
  br label %mk_append_context_data.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  %tobool.not.i.i = icmp eq i32 %11, 0
  %shl.i.i = shl i32 %11, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ]
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl4.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds i8, ptr %8, i64 40
  %12 = load ptr, ptr %data5.i.i, align 8
  %conv.i.i = zext i32 %dn.0.i.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %12, i64 noundef %conv.i.i) #12
  %tobool6.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.not.i.i, label %return, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4
  %.pre34.i.i = load i32, ptr %d_cur.i.i, align 8
  br label %mk_append_context_data.exit.i

mk_append_context_data.exit.i:                    ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %13 = phi i32 [ %10, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ]
  %14 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %idx.ext.i.i = zext i32 %13 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %14, i64 %idx.ext.i.i
  %conv14.i.i = zext i32 %7 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i.i, ptr readonly align 1 %9, i64 %conv14.i.i, i1 false)
  store i32 %add.i.i, ptr %d_cur.i.i, align 8
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i
  %conv.i = zext i32 %7 to i64
  %owner.i = getelementptr inbounds i8, ptr %c, i64 24
  %15 = load ptr, ptr %owner.i, align 8
  %16 = load ptr, ptr %15, align 8
  %call9.i = tail call i64 @fwrite(ptr noundef %9, i64 noundef %conv.i, i64 noundef 1, ptr noundef %16)
  %cmp10.not.i = icmp eq i64 %call9.i, 1
  br i1 %cmp10.not.i, label %if.end14.i, label %return

if.end14.i:                                       ; preds = %if.else.i, %mk_append_context_data.exit.i
  store i32 0, ptr %d_cur.i, align 8
  br label %do.end23

do.end23:                                         ; preds = %if.end14.i, %do.body18
  %17 = load ptr, ptr %c, align 8
  %tobool24.not = icmp eq ptr %17, null
  %prev30.phi.trans.insert = getelementptr inbounds i8, ptr %c, i64 8
  %.pre55 = load ptr, ptr %prev30.phi.trans.insert, align 8
  br i1 %tobool24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %do.end23
  %prev27 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %.pre55, ptr %prev27, align 8
  %.pre = load ptr, ptr %c, align 8
  br label %if.end28

if.end28:                                         ; preds = %do.end23, %if.then25
  %18 = phi ptr [ %.pre, %if.then25 ], [ null, %do.end23 ]
  store ptr %18, ptr %.pre55, align 8
  %owner = getelementptr inbounds i8, ptr %c, i64 24
  %19 = load ptr, ptr %owner, align 8
  %freelist = getelementptr inbounds i8, ptr %19, i64 40
  %20 = load ptr, ptr %freelist, align 8
  store ptr %20, ptr %c, align 8
  store ptr %c, ptr %freelist, align 8
  br label %return

return:                                           ; preds = %while.end.i.i, %if.else.i, %do.body3, %do.body, %if.end28
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -1, %do.body ], [ -1, %do.body3 ], [ -1, %if.else.i ], [ -1, %while.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_flush_context_id(ptr nocapture noundef %c) unnamed_addr #0 {
entry:
  %id = getelementptr inbounds i8, ptr %c, i64 32
  %0 = load i32, ptr %id, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %parent = getelementptr inbounds i8, ptr %c, i64 16
  %1 = load ptr, ptr %parent, align 8
  %call = tail call fastcc i32 @mk_write_id(ptr noundef %1, i32 noundef %0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %do.body4

do.body4:                                         ; preds = %do.body
  %2 = load ptr, ptr %parent, align 8
  %d_cur.i = getelementptr inbounds i8, ptr %2, i64 48
  %3 = load i32, ptr %d_cur.i, align 8
  %add.i = add i32 %3, 1
  %d_max.i = getelementptr inbounds i8, ptr %2, i64 52
  %4 = load i32, ptr %d_max.i, align 4
  %cmp.i = icmp ugt i32 %add.i, %4
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %do.body4
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %2, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8
  br label %do.end11

if.then.i:                                        ; preds = %do.body4
  %tobool.not.i = icmp eq i32 %4, 0
  %shl.i = shl i32 %4, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %2, i64 40
  %5 = load ptr, ptr %data5.i, align 8
  %conv.i = zext i32 %dn.0.i to i64
  %call.i = tail call ptr @realloc(ptr noundef %5, i64 noundef %conv.i) #12
  %tobool6.not.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8
  store i32 %dn.0.i, ptr %d_max.i, align 4
  %.pre34.i = load i32, ptr %d_cur.i, align 8
  br label %do.end11

do.end11:                                         ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %6 = phi i32 [ %3, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ]
  %7 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ]
  %idx.ext.i = zext i32 %6 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %7, i64 %idx.ext.i
  store i8 -1, ptr %add.ptr.i, align 1
  store i32 %add.i, ptr %d_cur.i, align 8
  store i32 0, ptr %id, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %do.body, %entry, %do.end11
  %retval.0 = phi i32 [ 0, %do.end11 ], [ 0, %entry ], [ -1, %do.body ], [ -1, %while.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_write_float(ptr nocapture noundef %c) unnamed_addr #0 {
entry:
  %d_max.i86.i = getelementptr inbounds i8, ptr %c, i64 52
  %0 = load i32, ptr %d_max.i86.i, align 4
  %d_cur.i84.i = getelementptr inbounds i8, ptr %c, i64 48
  %1 = load i32, ptr %d_cur.i84.i, align 8
  %add.i58.i = add i32 %1, 2
  %cmp.i60.i = icmp ugt i32 %add.i58.i, %0
  br i1 %cmp.i60.i, label %if.then.i68.i, label %entry.if.end11_crit_edge.i61.i

entry.if.end11_crit_edge.i61.i:                   ; preds = %entry
  %data12.phi.trans.insert.i62.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i63.i = load ptr, ptr %data12.phi.trans.insert.i62.i, align 8
  br label %do.body1

if.then.i68.i:                                    ; preds = %entry
  %tobool.not.i69.i = icmp eq i32 %0, 0
  %shl.i70.i = shl i32 %0, 1
  %spec.select.i71.i = select i1 %tobool.not.i69.i, i32 16, i32 %shl.i70.i
  br label %while.cond.i72.i

while.cond.i72.i:                                 ; preds = %while.cond.i72.i, %if.then.i68.i
  %dn.0.i73.i = phi i32 [ %spec.select.i71.i, %if.then.i68.i ], [ %shl4.i75.i, %while.cond.i72.i ]
  %cmp3.i74.i = icmp ugt i32 %add.i58.i, %dn.0.i73.i
  %shl4.i75.i = shl i32 %dn.0.i73.i, 1
  br i1 %cmp3.i74.i, label %while.cond.i72.i, label %while.end.i76.i

while.end.i76.i:                                  ; preds = %while.cond.i72.i
  %data5.i77.i = getelementptr inbounds i8, ptr %c, i64 40
  %2 = load ptr, ptr %data5.i77.i, align 8
  %conv.i78.i = zext i32 %dn.0.i73.i to i64
  %call.i79.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i78.i) #12
  %tobool6.not.not.i80.i = icmp eq ptr %call.i79.i, null
  br i1 %tobool6.not.not.i80.i, label %return, label %if.end.i81.i

if.end.i81.i:                                     ; preds = %while.end.i76.i
  store ptr %call.i79.i, ptr %data5.i77.i, align 8
  store i32 %dn.0.i73.i, ptr %d_max.i86.i, align 4
  %.pre34.i82.i = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body1

do.body1:                                         ; preds = %if.end.i81.i, %entry.if.end11_crit_edge.i61.i
  %3 = phi i32 [ %1, %entry.if.end11_crit_edge.i61.i ], [ %.pre34.i82.i, %if.end.i81.i ]
  %4 = phi ptr [ %.pre.i63.i, %entry.if.end11_crit_edge.i61.i ], [ %call.i79.i, %if.end.i81.i ]
  %idx.ext.i65.i = zext i32 %3 to i64
  %add.ptr.i66.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i65.i
  store i8 68, ptr %add.ptr.i66.i, align 1
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i66.i, i64 1
  store i8 -119, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i, align 1
  store i32 %add.i58.i, ptr %d_cur.i84.i, align 8
  %add.i.i = add i32 %1, 3
  %5 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i.i = icmp ugt i32 %add.i.i, %5
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body1
  %data12.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8
  br label %do.body7

if.then.i.i:                                      ; preds = %do.body1
  %tobool.not.i.i = icmp eq i32 %5, 0
  %shl.i.i = shl i32 %5, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ]
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl4.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds i8, ptr %c, i64 40
  %6 = load ptr, ptr %data5.i.i, align 8
  %conv.i.i = zext i32 %dn.0.i.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %6, i64 noundef %conv.i.i) #12
  %tobool6.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.not.i.i, label %return, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8
  store i32 %dn.0.i.i, ptr %d_max.i86.i, align 4
  %.pre34.i.i = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body7

do.body7:                                         ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %7 = phi i32 [ %add.i58.i, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ]
  %8 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %idx.ext.i.i = zext i32 %7 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %8, i64 %idx.ext.i.i
  store i8 -124, ptr %add.ptr.i.i, align 1
  store i32 %add.i.i, ptr %d_cur.i84.i, align 8
  %add.i.i17 = add i32 %1, 7
  %9 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i.i19 = icmp ugt i32 %add.i.i17, %9
  br i1 %cmp.i.i19, label %if.then.i.i26, label %entry.if.end11_crit_edge.i.i20

entry.if.end11_crit_edge.i.i20:                   ; preds = %do.body7
  %data12.phi.trans.insert.i.i21 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i.i22 = load ptr, ptr %data12.phi.trans.insert.i.i21, align 8
  br label %mk_write_float_raw.exit

if.then.i.i26:                                    ; preds = %do.body7
  %tobool.not.i.i27 = icmp eq i32 %9, 0
  %shl.i.i28 = shl i32 %9, 1
  %spec.select.i.i29 = select i1 %tobool.not.i.i27, i32 16, i32 %shl.i.i28
  br label %while.cond.i.i30

while.cond.i.i30:                                 ; preds = %while.cond.i.i30, %if.then.i.i26
  %dn.0.i.i31 = phi i32 [ %spec.select.i.i29, %if.then.i.i26 ], [ %shl4.i.i33, %while.cond.i.i30 ]
  %cmp3.i.i32 = icmp ugt i32 %add.i.i17, %dn.0.i.i31
  %shl4.i.i33 = shl i32 %dn.0.i.i31, 1
  br i1 %cmp3.i.i32, label %while.cond.i.i30, label %while.end.i.i34

while.end.i.i34:                                  ; preds = %while.cond.i.i30
  %data5.i.i35 = getelementptr inbounds i8, ptr %c, i64 40
  %10 = load ptr, ptr %data5.i.i35, align 8
  %conv.i.i36 = zext i32 %dn.0.i.i31 to i64
  %call.i.i37 = tail call ptr @realloc(ptr noundef %10, i64 noundef %conv.i.i36) #12
  %tobool6.not.not.i.i38 = icmp eq ptr %call.i.i37, null
  br i1 %tobool6.not.not.i.i38, label %return, label %if.end.i.i39

if.end.i.i39:                                     ; preds = %while.end.i.i34
  store ptr %call.i.i37, ptr %data5.i.i35, align 8
  store i32 %dn.0.i.i31, ptr %d_max.i86.i, align 4
  %.pre34.i.i40 = load i32, ptr %d_cur.i84.i, align 8
  br label %mk_write_float_raw.exit

mk_write_float_raw.exit:                          ; preds = %entry.if.end11_crit_edge.i.i20, %if.end.i.i39
  %11 = phi i32 [ %add.i.i, %entry.if.end11_crit_edge.i.i20 ], [ %.pre34.i.i40, %if.end.i.i39 ]
  %12 = phi ptr [ %.pre.i.i22, %entry.if.end11_crit_edge.i.i20 ], [ %call.i.i37, %if.end.i.i39 ]
  %idx.ext.i.i24 = zext i32 %11 to i64
  %add.ptr.i.i25 = getelementptr inbounds i8, ptr %12, i64 %idx.ext.i.i24
  store i32 0, ptr %add.ptr.i.i25, align 1
  store i32 %add.i.i17, ptr %d_cur.i84.i, align 8
  br label %return

return:                                           ; preds = %while.end.i.i, %while.end.i76.i, %mk_write_float_raw.exit, %while.end.i.i34
  %retval.0 = phi i32 [ 0, %mk_write_float_raw.exit ], [ -1, %while.end.i.i34 ], [ -1, %while.end.i76.i ], [ -1, %while.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_write_bin(ptr nocapture noundef %c, ptr nocapture noundef readonly %data, i32 noundef %size) unnamed_addr #0 {
entry:
  %d_max.i86.i = getelementptr inbounds i8, ptr %c, i64 52
  %0 = load i32, ptr %d_max.i86.i, align 4
  %d_cur.i84.i = getelementptr inbounds i8, ptr %c, i64 48
  %1 = load i32, ptr %d_cur.i84.i, align 8
  %add.i58.i = add i32 %1, 2
  %cmp.i60.i = icmp ugt i32 %add.i58.i, %0
  br i1 %cmp.i60.i, label %if.then.i68.i, label %entry.if.end11_crit_edge.i61.i

entry.if.end11_crit_edge.i61.i:                   ; preds = %entry
  %data12.phi.trans.insert.i62.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i63.i = load ptr, ptr %data12.phi.trans.insert.i62.i, align 8
  br label %do.body1

if.then.i68.i:                                    ; preds = %entry
  %tobool.not.i69.i = icmp eq i32 %0, 0
  %shl.i70.i = shl i32 %0, 1
  %spec.select.i71.i = select i1 %tobool.not.i69.i, i32 16, i32 %shl.i70.i
  br label %while.cond.i72.i

while.cond.i72.i:                                 ; preds = %while.cond.i72.i, %if.then.i68.i
  %dn.0.i73.i = phi i32 [ %spec.select.i71.i, %if.then.i68.i ], [ %shl4.i75.i, %while.cond.i72.i ]
  %cmp3.i74.i = icmp ugt i32 %add.i58.i, %dn.0.i73.i
  %shl4.i75.i = shl i32 %dn.0.i73.i, 1
  br i1 %cmp3.i74.i, label %while.cond.i72.i, label %while.end.i76.i

while.end.i76.i:                                  ; preds = %while.cond.i72.i
  %data5.i77.i = getelementptr inbounds i8, ptr %c, i64 40
  %2 = load ptr, ptr %data5.i77.i, align 8
  %conv.i78.i = zext i32 %dn.0.i73.i to i64
  %call.i79.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i78.i) #12
  %tobool6.not.not.i80.i = icmp eq ptr %call.i79.i, null
  br i1 %tobool6.not.not.i80.i, label %return, label %if.end.i81.i

if.end.i81.i:                                     ; preds = %while.end.i76.i
  store ptr %call.i79.i, ptr %data5.i77.i, align 8
  store i32 %dn.0.i73.i, ptr %d_max.i86.i, align 4
  %.pre34.i82.i = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body1

do.body1:                                         ; preds = %if.end.i81.i, %entry.if.end11_crit_edge.i61.i
  %3 = phi i32 [ %1, %entry.if.end11_crit_edge.i61.i ], [ %.pre34.i82.i, %if.end.i81.i ]
  %4 = phi ptr [ %.pre.i63.i, %entry.if.end11_crit_edge.i61.i ], [ %call.i79.i, %if.end.i81.i ]
  %idx.ext.i65.i = zext i32 %3 to i64
  %add.ptr.i66.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i65.i
  store i8 99, ptr %add.ptr.i66.i, align 1
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i66.i, i64 1
  store i8 -94, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx.i, align 1
  store i32 %add.i58.i, ptr %d_cur.i84.i, align 8
  %call2 = tail call fastcc i32 @mk_write_size(ptr noundef nonnull %c, i32 noundef %size)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %return, label %do.body7

do.body7:                                         ; preds = %do.body1
  %5 = load i32, ptr %d_cur.i84.i, align 8
  %add.i = add i32 %5, %size
  %6 = load i32, ptr %d_max.i86.i, align 4
  %cmp.i = icmp ugt i32 %add.i, %6
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %do.body7
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8
  br label %mk_append_context_data.exit

if.then.i:                                        ; preds = %do.body7
  %tobool.not.i = icmp eq i32 %6, 0
  %shl.i = shl i32 %6, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %c, i64 40
  %7 = load ptr, ptr %data5.i, align 8
  %conv.i = zext i32 %dn.0.i to i64
  %call.i = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i) #12
  %tobool6.not.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.not.i, label %return, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8
  store i32 %dn.0.i, ptr %d_max.i86.i, align 4
  %.pre34.i = load i32, ptr %d_cur.i84.i, align 8
  br label %mk_append_context_data.exit

mk_append_context_data.exit:                      ; preds = %entry.if.end11_crit_edge.i, %if.end.i
  %8 = phi i32 [ %5, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ]
  %9 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ]
  %idx.ext.i = zext i32 %8 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i
  %conv14.i = zext i32 %size to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr readonly align 1 %data, i64 %conv14.i, i1 false)
  store i32 %add.i, ptr %d_cur.i84.i, align 8
  br label %return

return:                                           ; preds = %while.end.i76.i, %mk_append_context_data.exit, %while.end.i, %do.body1
  %retval.0 = phi i32 [ -1, %do.body1 ], [ 0, %mk_append_context_data.exit ], [ -1, %while.end.i ], [ -1, %while.end.i76.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_flush_context_data(ptr nocapture noundef %c) unnamed_addr #0 {
entry:
  %d_cur = getelementptr inbounds i8, ptr %c, i64 48
  %0 = load i32, ptr %d_cur, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds i8, ptr %c, i64 16
  %1 = load ptr, ptr %parent, align 8
  %tobool1.not = icmp eq ptr %1, null
  %data7 = getelementptr inbounds i8, ptr %c, i64 40
  %2 = load ptr, ptr %data7, align 8
  br i1 %tobool1.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end
  %d_cur.i = getelementptr inbounds i8, ptr %1, i64 48
  %3 = load i32, ptr %d_cur.i, align 8
  %add.i = add i32 %3, %0
  %d_max.i = getelementptr inbounds i8, ptr %1, i64 52
  %4 = load i32, ptr %d_max.i, align 4
  %cmp.i = icmp ugt i32 %add.i, %4
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %do.body
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %1, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8
  br label %mk_append_context_data.exit

if.then.i:                                        ; preds = %do.body
  %tobool.not.i = icmp eq i32 %4, 0
  %shl.i = shl i32 %4, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %1, i64 40
  %5 = load ptr, ptr %data5.i, align 8
  %conv.i = zext i32 %dn.0.i to i64
  %call.i = tail call ptr @realloc(ptr noundef %5, i64 noundef %conv.i) #12
  %tobool6.not.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.not.i, label %return, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8
  store i32 %dn.0.i, ptr %d_max.i, align 4
  %.pre34.i = load i32, ptr %d_cur.i, align 8
  br label %mk_append_context_data.exit

mk_append_context_data.exit:                      ; preds = %entry.if.end11_crit_edge.i, %if.end.i
  %6 = phi i32 [ %3, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ]
  %7 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ]
  %idx.ext.i = zext i32 %6 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %7, i64 %idx.ext.i
  %conv14.i = zext i32 %0 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr readonly align 1 %2, i64 %conv14.i, i1 false)
  store i32 %add.i, ptr %d_cur.i, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end
  %conv = zext i32 %0 to i64
  %owner = getelementptr inbounds i8, ptr %c, i64 24
  %8 = load ptr, ptr %owner, align 8
  %9 = load ptr, ptr %8, align 8
  %call9 = tail call i64 @fwrite(ptr noundef %2, i64 noundef %conv, i64 noundef 1, ptr noundef %9)
  %cmp10.not = icmp eq i64 %call9, 1
  br i1 %cmp10.not, label %if.end14, label %return

if.end14:                                         ; preds = %mk_append_context_data.exit, %if.else
  store i32 0, ptr %d_cur, align 8
  br label %return

return:                                           ; preds = %while.end.i, %if.else, %entry, %if.end14
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 0, %entry ], [ -1, %if.else ], [ -1, %while.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mk_start_frame(ptr noundef %w) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @mk_flush_frame(ptr noundef %w)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %in_frame = getelementptr inbounds i8, ptr %w, i64 97
  store i8 1, ptr %in_frame, align 1
  %keyframe = getelementptr inbounds i8, ptr %w, i64 98
  store i8 0, ptr %keyframe, align 2
  %skippable = getelementptr inbounds i8, ptr %w, i64 99
  store i8 0, ptr %skippable, align 1
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_flush_frame(ptr noundef %w) unnamed_addr #0 {
entry:
  %in_frame = getelementptr inbounds i8, ptr %w, i64 97
  %0 = load i8, ptr %in_frame, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %frame_tc = getelementptr inbounds i8, ptr %w, i64 80
  %1 = load i64, ptr %frame_tc, align 8
  %timescale = getelementptr inbounds i8, ptr %w, i64 64
  %2 = load i64, ptr %timescale, align 8
  %div = sdiv i64 %1, %2
  %cluster_tc_scaled = getelementptr inbounds i8, ptr %w, i64 72
  %3 = load i64, ptr %cluster_tc_scaled, align 8
  %sub = sub nsw i64 %div, %3
  %4 = add i64 %sub, -32768
  %or.cond = icmp ult i64 %4, -65536
  br i1 %or.cond, label %do.body, label %if.end6

do.body:                                          ; preds = %if.end
  %call = tail call fastcc i32 @mk_close_cluster(ptr noundef nonnull %w)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %do.body, %if.end
  %cluster = getelementptr inbounds i8, ptr %w, i64 24
  %5 = load ptr, ptr %cluster, align 8
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.then8, label %if.end28

if.then8:                                         ; preds = %if.end6
  %6 = load i64, ptr %frame_tc, align 8
  %7 = load i64, ptr %timescale, align 8
  %div11 = sdiv i64 %6, %7
  store i64 %div11, ptr %cluster_tc_scaled, align 8
  %root = getelementptr inbounds i8, ptr %w, i64 16
  %8 = load ptr, ptr %root, align 8
  %freelist.i = getelementptr inbounds i8, ptr %w, i64 40
  %9 = load ptr, ptr %freelist.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %freelist.i, align 8
  br label %if.end6.i

if.else.i:                                        ; preds = %if.then8
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56)
  %tobool4.not.i = icmp eq ptr %calloc.i, null
  br i1 %tobool4.not.i, label %mk_create_context.exit.thread, label %if.end6.i

mk_create_context.exit.thread:                    ; preds = %if.else.i
  store ptr null, ptr %cluster, align 8
  br label %cleanup

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %c.0.i = phi ptr [ %9, %if.then.i ], [ %calloc.i, %if.else.i ]
  %parent7.i = getelementptr inbounds i8, ptr %c.0.i, i64 16
  store ptr %8, ptr %parent7.i, align 8
  %owner.i = getelementptr inbounds i8, ptr %c.0.i, i64 24
  store ptr %w, ptr %owner.i, align 8
  %id8.i = getelementptr inbounds i8, ptr %c.0.i, i64 32
  store i32 524531317, ptr %id8.i, align 8
  %actlist.i = getelementptr inbounds i8, ptr %w, i64 48
  %11 = load ptr, ptr %actlist.i, align 8
  %tobool10.not.i = icmp eq ptr %11, null
  br i1 %tobool10.not.i, label %do.body19, label %if.then11.i

if.then11.i:                                      ; preds = %if.end6.i
  %prev.i = getelementptr inbounds i8, ptr %11, i64 8
  store ptr %c.0.i, ptr %prev.i, align 8
  %.pre.i = load ptr, ptr %owner.i, align 8
  %actlist17.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 48
  %.pre43.i = load ptr, ptr %actlist17.phi.trans.insert.i, align 8
  br label %do.body19

do.body19:                                        ; preds = %if.then11.i, %if.end6.i
  %12 = phi ptr [ %.pre43.i, %if.then11.i ], [ null, %if.end6.i ]
  %13 = phi ptr [ %.pre.i, %if.then11.i ], [ %w, %if.end6.i ]
  %actlist17.i = getelementptr inbounds i8, ptr %13, i64 48
  store ptr %12, ptr %c.0.i, align 8
  %prev21.i = getelementptr inbounds i8, ptr %c.0.i, i64 8
  store ptr %actlist17.i, ptr %prev21.i, align 8
  store ptr %c.0.i, ptr %actlist17.i, align 8
  store ptr %c.0.i, ptr %cluster, align 8
  %14 = load i64, ptr %cluster_tc_scaled, align 8
  %call22 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %c.0.i, i32 noundef 231, i64 noundef %14)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %cleanup, label %if.end28

if.end28:                                         ; preds = %do.body19, %if.end6
  %delta.0 = phi i64 [ %sub, %if.end6 ], [ 0, %do.body19 ]
  %frame = getelementptr inbounds i8, ptr %w, i64 32
  %15 = load ptr, ptr %frame, align 8
  %tobool29.not = icmp eq ptr %15, null
  br i1 %tobool29.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end28
  %d_cur = getelementptr inbounds i8, ptr %15, i64 48
  %16 = load i32, ptr %d_cur, align 8
  %17 = add i32 %16, 4
  br label %cond.end

cond.end:                                         ; preds = %if.end28, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 4, %if.end28 ]
  %18 = load ptr, ptr %cluster, align 8
  %d_max.i86.i = getelementptr inbounds i8, ptr %18, i64 52
  %19 = load i32, ptr %d_max.i86.i, align 4
  %d_cur.i84.i = getelementptr inbounds i8, ptr %18, i64 48
  %20 = load i32, ptr %d_cur.i84.i, align 8
  %add.i85.i = add i32 %20, 1
  %cmp.i87.i = icmp ugt i32 %add.i85.i, %19
  br i1 %cmp.i87.i, label %if.then.i95.i, label %entry.if.end11_crit_edge.i88.i

entry.if.end11_crit_edge.i88.i:                   ; preds = %cond.end
  %data12.phi.trans.insert.i89.i = getelementptr inbounds i8, ptr %18, i64 40
  %.pre.i90.i = load ptr, ptr %data12.phi.trans.insert.i89.i, align 8
  br label %do.body39

if.then.i95.i:                                    ; preds = %cond.end
  %tobool.not.i96.i = icmp eq i32 %19, 0
  %shl.i97.i = shl i32 %19, 1
  %spec.select.i98.i = select i1 %tobool.not.i96.i, i32 16, i32 %shl.i97.i
  br label %while.cond.i99.i

while.cond.i99.i:                                 ; preds = %while.cond.i99.i, %if.then.i95.i
  %dn.0.i100.i = phi i32 [ %spec.select.i98.i, %if.then.i95.i ], [ %shl4.i102.i, %while.cond.i99.i ]
  %cmp3.i101.i = icmp ugt i32 %add.i85.i, %dn.0.i100.i
  %shl4.i102.i = shl i32 %dn.0.i100.i, 1
  br i1 %cmp3.i101.i, label %while.cond.i99.i, label %while.end.i103.i

while.end.i103.i:                                 ; preds = %while.cond.i99.i
  %data5.i104.i = getelementptr inbounds i8, ptr %18, i64 40
  %21 = load ptr, ptr %data5.i104.i, align 8
  %conv.i105.i = zext i32 %dn.0.i100.i to i64
  %call.i106.i = tail call ptr @realloc(ptr noundef %21, i64 noundef %conv.i105.i) #12
  %tobool6.not.not.i107.i = icmp eq ptr %call.i106.i, null
  br i1 %tobool6.not.not.i107.i, label %cleanup, label %if.end.i108.i

if.end.i108.i:                                    ; preds = %while.end.i103.i
  store ptr %call.i106.i, ptr %data5.i104.i, align 8
  store i32 %dn.0.i100.i, ptr %d_max.i86.i, align 4
  %.pre34.i109.i = load i32, ptr %d_cur.i84.i, align 8
  br label %do.body39

do.body39:                                        ; preds = %if.end.i108.i, %entry.if.end11_crit_edge.i88.i
  %22 = phi i32 [ %20, %entry.if.end11_crit_edge.i88.i ], [ %.pre34.i109.i, %if.end.i108.i ]
  %23 = phi ptr [ %.pre.i90.i, %entry.if.end11_crit_edge.i88.i ], [ %call.i106.i, %if.end.i108.i ]
  %idx.ext.i92.i = zext i32 %22 to i64
  %add.ptr.i93.i = getelementptr inbounds i8, ptr %23, i64 %idx.ext.i92.i
  store i8 -93, ptr %add.ptr.i93.i, align 1
  store i32 %add.i85.i, ptr %d_cur.i84.i, align 8
  %24 = load ptr, ptr %cluster, align 8
  %call41 = tail call fastcc i32 @mk_write_size(ptr noundef %24, i32 noundef %cond)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %cleanup, label %do.body47

do.body47:                                        ; preds = %do.body39
  %25 = load ptr, ptr %cluster, align 8
  %d_cur.i.i = getelementptr inbounds i8, ptr %25, i64 48
  %26 = load i32, ptr %d_cur.i.i, align 8
  %add.i.i = add i32 %26, 1
  %d_max.i.i = getelementptr inbounds i8, ptr %25, i64 52
  %27 = load i32, ptr %d_max.i.i, align 4
  %cmp.i.i = icmp ugt i32 %add.i.i, %27
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body47
  %data12.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %25, i64 40
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8
  br label %do.end54

if.then.i.i:                                      ; preds = %do.body47
  %tobool.not.i.i = icmp eq i32 %27, 0
  %shl.i.i = shl i32 %27, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ]
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl4.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds i8, ptr %25, i64 40
  %28 = load ptr, ptr %data5.i.i, align 8
  %conv.i.i = zext i32 %dn.0.i.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %28, i64 noundef %conv.i.i) #12
  %tobool6.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.not.i.i, label %cleanup, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4
  %.pre34.i.i = load i32, ptr %d_cur.i.i, align 8
  br label %do.end54

do.end54:                                         ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %29 = phi i32 [ %26, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ]
  %30 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %idx.ext.i.i = zext i32 %29 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %30, i64 %idx.ext.i.i
  store i8 -127, ptr %add.ptr.i.i, align 1
  store i32 %add.i.i, ptr %d_cur.i.i, align 8
  %shr = lshr i64 %delta.0, 8
  %conv = trunc i64 %shr to i8
  %conv55 = trunc i64 %delta.0 to i8
  %keyframe = getelementptr inbounds i8, ptr %w, i64 98
  %31 = load i8, ptr %keyframe, align 2
  %shl = shl i8 %31, 7
  %skippable = getelementptr inbounds i8, ptr %w, i64 99
  %32 = load i8, ptr %skippable, align 1
  %or = or i8 %shl, %32
  %33 = load ptr, ptr %cluster, align 8
  %d_cur.i = getelementptr inbounds i8, ptr %33, i64 48
  %34 = load i32, ptr %d_cur.i, align 8
  %add.i = add i32 %34, 3
  %d_max.i = getelementptr inbounds i8, ptr %33, i64 52
  %35 = load i32, ptr %d_max.i, align 4
  %cmp.i = icmp ugt i32 %add.i, %35
  br i1 %cmp.i, label %if.then.i143, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %do.end54
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %33, i64 40
  %.pre.i142 = load ptr, ptr %data12.phi.trans.insert.i, align 8
  br label %do.end69

if.then.i143:                                     ; preds = %do.end54
  %tobool.not.i144 = icmp eq i32 %35, 0
  %shl.i = shl i32 %35, 1
  %spec.select.i = select i1 %tobool.not.i144, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i143
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i143 ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %33, i64 40
  %36 = load ptr, ptr %data5.i, align 8
  %conv.i = zext i32 %dn.0.i to i64
  %call.i = tail call ptr @realloc(ptr noundef %36, i64 noundef %conv.i) #12
  %tobool6.not.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8
  store i32 %dn.0.i, ptr %d_max.i, align 4
  %.pre34.i = load i32, ptr %d_cur.i, align 8
  br label %do.end69

do.end69:                                         ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %37 = phi i32 [ %34, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ]
  %38 = phi ptr [ %.pre.i142, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ]
  %idx.ext.i = zext i32 %37 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %38, i64 %idx.ext.i
  store i8 %conv, ptr %add.ptr.i, align 1
  %c_delta_flags.sroa.4.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  store i8 %conv55, ptr %c_delta_flags.sroa.4.0.add.ptr.i.sroa_idx, align 1
  %c_delta_flags.sroa.5.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  store i8 %or, ptr %c_delta_flags.sroa.5.0.add.ptr.i.sroa_idx, align 1
  store i32 %add.i, ptr %d_cur.i, align 8
  %39 = load ptr, ptr %frame, align 8
  %tobool71.not = icmp eq ptr %39, null
  br i1 %tobool71.not, label %if.end87, label %do.body73

do.body73:                                        ; preds = %do.end69
  %40 = load ptr, ptr %cluster, align 8
  %data = getelementptr inbounds i8, ptr %39, i64 40
  %41 = load ptr, ptr %data, align 8
  %d_cur77 = getelementptr inbounds i8, ptr %39, i64 48
  %42 = load i32, ptr %d_cur77, align 8
  %d_cur.i145 = getelementptr inbounds i8, ptr %40, i64 48
  %43 = load i32, ptr %d_cur.i145, align 8
  %add.i146 = add i32 %43, %42
  %d_max.i147 = getelementptr inbounds i8, ptr %40, i64 52
  %44 = load i32, ptr %d_max.i147, align 4
  %cmp.i148 = icmp ugt i32 %add.i146, %44
  br i1 %cmp.i148, label %if.then.i156, label %entry.if.end11_crit_edge.i149

entry.if.end11_crit_edge.i149:                    ; preds = %do.body73
  %data12.phi.trans.insert.i150 = getelementptr inbounds i8, ptr %40, i64 40
  %.pre.i151 = load ptr, ptr %data12.phi.trans.insert.i150, align 8
  br label %do.end84

if.then.i156:                                     ; preds = %do.body73
  %tobool.not.i157 = icmp eq i32 %44, 0
  %shl.i158 = shl i32 %44, 1
  %spec.select.i159 = select i1 %tobool.not.i157, i32 16, i32 %shl.i158
  br label %while.cond.i160

while.cond.i160:                                  ; preds = %while.cond.i160, %if.then.i156
  %dn.0.i161 = phi i32 [ %spec.select.i159, %if.then.i156 ], [ %shl4.i163, %while.cond.i160 ]
  %cmp3.i162 = icmp ugt i32 %add.i146, %dn.0.i161
  %shl4.i163 = shl i32 %dn.0.i161, 1
  br i1 %cmp3.i162, label %while.cond.i160, label %while.end.i164

while.end.i164:                                   ; preds = %while.cond.i160
  %data5.i165 = getelementptr inbounds i8, ptr %40, i64 40
  %45 = load ptr, ptr %data5.i165, align 8
  %conv.i166 = zext i32 %dn.0.i161 to i64
  %call.i167 = tail call ptr @realloc(ptr noundef %45, i64 noundef %conv.i166) #12
  %tobool6.not.not.i168 = icmp eq ptr %call.i167, null
  br i1 %tobool6.not.not.i168, label %cleanup, label %if.end.i169

if.end.i169:                                      ; preds = %while.end.i164
  store ptr %call.i167, ptr %data5.i165, align 8
  store i32 %dn.0.i161, ptr %d_max.i147, align 4
  %.pre34.i170 = load i32, ptr %d_cur.i145, align 8
  br label %do.end84

do.end84:                                         ; preds = %if.end.i169, %entry.if.end11_crit_edge.i149
  %46 = phi i32 [ %43, %entry.if.end11_crit_edge.i149 ], [ %.pre34.i170, %if.end.i169 ]
  %47 = phi ptr [ %.pre.i151, %entry.if.end11_crit_edge.i149 ], [ %call.i167, %if.end.i169 ]
  %idx.ext.i153 = zext i32 %46 to i64
  %add.ptr.i154 = getelementptr inbounds i8, ptr %47, i64 %idx.ext.i153
  %conv14.i = zext i32 %42 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i154, ptr readonly align 1 %41, i64 %conv14.i, i1 false)
  store i32 %add.i146, ptr %d_cur.i145, align 8
  %48 = load ptr, ptr %frame, align 8
  %d_cur86 = getelementptr inbounds i8, ptr %48, i64 48
  store i32 0, ptr %d_cur86, align 8
  br label %if.end87

if.end87:                                         ; preds = %do.end84, %do.end69
  store i8 0, ptr %in_frame, align 1
  %49 = load ptr, ptr %cluster, align 8
  %d_cur90 = getelementptr inbounds i8, ptr %49, i64 48
  %50 = load i32, ptr %d_cur90, align 8
  %cmp91 = icmp ugt i32 %50, 1048576
  br i1 %cmp91, label %do.body94, label %if.end102

do.body94:                                        ; preds = %if.end87
  %call95 = tail call fastcc i32 @mk_close_cluster(ptr noundef nonnull %w)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %cleanup, label %if.end102

if.end102:                                        ; preds = %do.body94, %if.end87
  br label %cleanup

cleanup:                                          ; preds = %while.end.i164, %while.end.i, %while.end.i.i, %while.end.i103.i, %mk_create_context.exit.thread, %do.body94, %do.body39, %do.body19, %do.body, %entry, %if.end102
  %retval.0 = phi i32 [ 0, %if.end102 ], [ 0, %entry ], [ -1, %do.body ], [ -1, %do.body19 ], [ -1, %do.body39 ], [ -1, %do.body94 ], [ -1, %mk_create_context.exit.thread ], [ -1, %while.end.i103.i ], [ -1, %while.end.i.i ], [ -1, %while.end.i ], [ -1, %while.end.i164 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @mk_set_frame_flags(ptr nocapture noundef %w, i64 noundef %timestamp, i32 noundef %keyframe, i32 noundef %skippable) local_unnamed_addr #6 {
entry:
  %in_frame = getelementptr inbounds i8, ptr %w, i64 97
  %0 = load i8, ptr %in_frame, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %frame_tc = getelementptr inbounds i8, ptr %w, i64 80
  store i64 %timestamp, ptr %frame_tc, align 8
  %cmp = icmp ne i32 %keyframe, 0
  %conv1 = zext i1 %cmp to i8
  %keyframe2 = getelementptr inbounds i8, ptr %w, i64 98
  store i8 %conv1, ptr %keyframe2, align 2
  %cmp3 = icmp ne i32 %skippable, 0
  %conv5 = zext i1 %cmp3 to i8
  %skippable6 = getelementptr inbounds i8, ptr %w, i64 99
  store i8 %conv5, ptr %skippable6, align 1
  %max_frame_tc = getelementptr inbounds i8, ptr %w, i64 88
  %1 = load i64, ptr %max_frame_tc, align 8
  %cmp7 = icmp slt i64 %1, %timestamp
  br i1 %cmp7, label %if.then9, label %return

if.then9:                                         ; preds = %if.end
  store i64 %timestamp, ptr %max_frame_tc, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then9, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.then9 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mk_add_frame_data(ptr noundef %w, ptr nocapture noundef readonly %data, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %in_frame = getelementptr inbounds i8, ptr %w, i64 97
  %0 = load i8, ptr %in_frame, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %frame = getelementptr inbounds i8, ptr %w, i64 32
  %1 = load ptr, ptr %frame, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %freelist.i = getelementptr inbounds i8, ptr %w, i64 40
  %2 = load ptr, ptr %freelist.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %freelist.i, align 8
  br label %if.end6.i

if.else.i:                                        ; preds = %if.then2
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56)
  %tobool4.not.i = icmp eq ptr %calloc.i, null
  br i1 %tobool4.not.i, label %mk_create_context.exit.thread, label %if.end6.i

mk_create_context.exit.thread:                    ; preds = %if.else.i
  store ptr null, ptr %frame, align 8
  br label %return

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %c.0.i = phi ptr [ %2, %if.then.i ], [ %calloc.i, %if.else.i ]
  %parent7.i = getelementptr inbounds i8, ptr %c.0.i, i64 16
  store ptr null, ptr %parent7.i, align 8
  %owner.i = getelementptr inbounds i8, ptr %c.0.i, i64 24
  store ptr %w, ptr %owner.i, align 8
  %id8.i = getelementptr inbounds i8, ptr %c.0.i, i64 32
  store i32 0, ptr %id8.i, align 8
  %actlist.i = getelementptr inbounds i8, ptr %w, i64 48
  %4 = load ptr, ptr %actlist.i, align 8
  %tobool10.not.i = icmp eq ptr %4, null
  br i1 %tobool10.not.i, label %mk_create_context.exit, label %if.then11.i

if.then11.i:                                      ; preds = %if.end6.i
  %prev.i = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %c.0.i, ptr %prev.i, align 8
  %.pre.i = load ptr, ptr %owner.i, align 8
  %actlist17.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 48
  %.pre43.i = load ptr, ptr %actlist17.phi.trans.insert.i, align 8
  br label %mk_create_context.exit

mk_create_context.exit:                           ; preds = %if.end6.i, %if.then11.i
  %5 = phi ptr [ %.pre43.i, %if.then11.i ], [ null, %if.end6.i ]
  %6 = phi ptr [ %.pre.i, %if.then11.i ], [ %w, %if.end6.i ]
  %actlist17.i = getelementptr inbounds i8, ptr %6, i64 48
  store ptr %5, ptr %c.0.i, align 8
  %prev21.i = getelementptr inbounds i8, ptr %c.0.i, i64 8
  store ptr %actlist17.i, ptr %prev21.i, align 8
  store ptr %c.0.i, ptr %actlist17.i, align 8
  store ptr %c.0.i, ptr %frame, align 8
  br label %if.end7

if.end7:                                          ; preds = %mk_create_context.exit, %if.end
  %7 = phi ptr [ %c.0.i, %mk_create_context.exit ], [ %1, %if.end ]
  %d_cur.i = getelementptr inbounds i8, ptr %7, i64 48
  %8 = load i32, ptr %d_cur.i, align 8
  %add.i = add i32 %8, %size
  %d_max.i = getelementptr inbounds i8, ptr %7, i64 52
  %9 = load i32, ptr %d_max.i, align 4
  %cmp.i = icmp ugt i32 %add.i, %9
  br i1 %cmp.i, label %if.then.i15, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %if.end7
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %7, i64 40
  %.pre.i14 = load ptr, ptr %data12.phi.trans.insert.i, align 8
  br label %if.end11.i

if.then.i15:                                      ; preds = %if.end7
  %tobool.not.i16 = icmp eq i32 %9, 0
  %shl.i = shl i32 %9, 1
  %spec.select.i = select i1 %tobool.not.i16, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i15
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i15 ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %7, i64 40
  %10 = load ptr, ptr %data5.i, align 8
  %conv.i = zext i32 %dn.0.i to i64
  %call.i = tail call ptr @realloc(ptr noundef %10, i64 noundef %conv.i) #12
  %tobool6.not.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.not.i, label %return, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8
  store i32 %dn.0.i, ptr %d_max.i, align 4
  %.pre34.i = load i32, ptr %d_cur.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %11 = phi i32 [ %8, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ]
  %12 = phi ptr [ %.pre.i14, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ]
  %idx.ext.i = zext i32 %11 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %12, i64 %idx.ext.i
  %conv14.i = zext i32 %size to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr readonly align 1 %data, i64 %conv14.i, i1 false)
  store i32 %add.i, ptr %d_cur.i, align 8
  br label %return

return:                                           ; preds = %if.end11.i, %while.end.i, %mk_create_context.exit.thread, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %mk_create_context.exit.thread ], [ 0, %if.end11.i ], [ -1, %while.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mk_close(ptr noundef %w, i64 noundef %last_delta) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @mk_flush_frame(ptr noundef %w)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @mk_close_cluster(ptr noundef %w)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %ret.0 = phi i32 [ -1, %if.then ], [ 0, %lor.lhs.false ]
  %wrote_header = getelementptr inbounds i8, ptr %w, i64 96
  %0 = load i8, ptr %wrote_header, align 8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %1 = load ptr, ptr %w, align 8
  %duration_ptr = getelementptr inbounds i8, ptr %w, i64 8
  %2 = load i32, ptr %duration_ptr, align 8
  %conv8 = zext i32 %2 to i64
  %call9 = tail call i32 @fseek(ptr noundef %1, i64 noundef %conv8, i32 noundef 0)
  %def_duration = getelementptr inbounds i8, ptr %w, i64 56
  %3 = load i64, ptr %def_duration, align 8
  %tobool10.not = icmp eq i64 %3, 0
  %cond = select i1 %tobool10.not, i64 %last_delta, i64 %3
  %max_frame_tc = getelementptr inbounds i8, ptr %w, i64 88
  %4 = load i64, ptr %max_frame_tc, align 8
  %add = add nsw i64 %cond, %4
  %root = getelementptr inbounds i8, ptr %w, i64 16
  %5 = load ptr, ptr %root, align 8
  %conv12 = sitofp i64 %add to double
  %timescale = getelementptr inbounds i8, ptr %w, i64 64
  %6 = load i64, ptr %timescale, align 8
  %conv13 = sitofp i64 %6 to double
  %div = fdiv double %conv12, %conv13
  %conv14 = fptrunc double %div to float
  %7 = bitcast float %conv14 to i32
  %shr.i = lshr i32 %7, 24
  %conv.i = trunc nuw i32 %shr.i to i8
  %shr1.i = lshr i32 %7, 16
  %conv2.i = trunc i32 %shr1.i to i8
  %shr4.i = lshr i32 %7, 8
  %conv5.i = trunc i32 %shr4.i to i8
  %conv7.i = trunc i32 %7 to i8
  %d_cur.i.i = getelementptr inbounds i8, ptr %5, i64 48
  %8 = load i32, ptr %d_cur.i.i, align 8
  %add.i.i = add i32 %8, 4
  %d_max.i.i = getelementptr inbounds i8, ptr %5, i64 52
  %9 = load i32, ptr %d_max.i.i, align 4
  %cmp.i.i = icmp ugt i32 %add.i.i, %9
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i

entry.if.end11_crit_edge.i.i:                     ; preds = %land.lhs.true
  %data12.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %5, i64 40
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8
  br label %lor.lhs.false18

if.then.i.i:                                      ; preds = %land.lhs.true
  %tobool.not.i.i = icmp eq i32 %9, 0
  %shl.i.i = shl i32 %9, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ]
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl4.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds i8, ptr %5, i64 40
  %10 = load ptr, ptr %data5.i.i, align 8
  %conv.i.i = zext i32 %dn.0.i.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %10, i64 noundef %conv.i.i) #12
  %tobool6.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.not.i.i, label %if.end25, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4
  %.pre34.i.i = load i32, ptr %d_cur.i.i, align 8
  br label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %11 = phi i32 [ %8, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ]
  %12 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %idx.ext.i.i = zext i32 %11 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %12, i64 %idx.ext.i.i
  store i8 %conv.i, ptr %add.ptr.i.i, align 1
  %c_f.sroa.4.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 1
  store i8 %conv2.i, ptr %c_f.sroa.4.0.add.ptr.i.sroa_idx.i, align 1
  %c_f.sroa.5.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 2
  store i8 %conv5.i, ptr %c_f.sroa.5.0.add.ptr.i.sroa_idx.i, align 1
  %c_f.sroa.6.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 3
  store i8 %conv7.i, ptr %c_f.sroa.6.0.add.ptr.i.sroa_idx.i, align 1
  store i32 %add.i.i, ptr %d_cur.i.i, align 8
  %13 = load ptr, ptr %root, align 8
  %d_cur.i = getelementptr inbounds i8, ptr %13, i64 48
  %14 = load i32, ptr %d_cur.i, align 8
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end25, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false18
  %parent.i = getelementptr inbounds i8, ptr %13, i64 16
  %15 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %15, null
  %data7.i = getelementptr inbounds i8, ptr %13, i64 40
  %16 = load ptr, ptr %data7.i, align 8
  br i1 %tobool1.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  %d_cur.i.i42 = getelementptr inbounds i8, ptr %15, i64 48
  %17 = load i32, ptr %d_cur.i.i42, align 8
  %add.i.i43 = add i32 %17, %14
  %d_max.i.i44 = getelementptr inbounds i8, ptr %15, i64 52
  %18 = load i32, ptr %d_max.i.i44, align 4
  %cmp.i.i45 = icmp ugt i32 %add.i.i43, %18
  br i1 %cmp.i.i45, label %if.then.i.i51, label %entry.if.end11_crit_edge.i.i46

entry.if.end11_crit_edge.i.i46:                   ; preds = %do.body.i
  %data12.phi.trans.insert.i.i47 = getelementptr inbounds i8, ptr %15, i64 40
  %.pre.i.i48 = load ptr, ptr %data12.phi.trans.insert.i.i47, align 8
  br label %mk_append_context_data.exit.i

if.then.i.i51:                                    ; preds = %do.body.i
  %tobool.not.i.i52 = icmp eq i32 %18, 0
  %shl.i.i53 = shl i32 %18, 1
  %spec.select.i.i54 = select i1 %tobool.not.i.i52, i32 16, i32 %shl.i.i53
  br label %while.cond.i.i55

while.cond.i.i55:                                 ; preds = %while.cond.i.i55, %if.then.i.i51
  %dn.0.i.i56 = phi i32 [ %spec.select.i.i54, %if.then.i.i51 ], [ %shl4.i.i58, %while.cond.i.i55 ]
  %cmp3.i.i57 = icmp ugt i32 %add.i.i43, %dn.0.i.i56
  %shl4.i.i58 = shl i32 %dn.0.i.i56, 1
  br i1 %cmp3.i.i57, label %while.cond.i.i55, label %while.end.i.i59

while.end.i.i59:                                  ; preds = %while.cond.i.i55
  %data5.i.i60 = getelementptr inbounds i8, ptr %15, i64 40
  %19 = load ptr, ptr %data5.i.i60, align 8
  %conv.i.i61 = zext i32 %dn.0.i.i56 to i64
  %call.i.i62 = tail call ptr @realloc(ptr noundef %19, i64 noundef %conv.i.i61) #12
  %tobool6.not.not.i.i63 = icmp eq ptr %call.i.i62, null
  br i1 %tobool6.not.not.i.i63, label %if.end25, label %if.end.i.i64

if.end.i.i64:                                     ; preds = %while.end.i.i59
  store ptr %call.i.i62, ptr %data5.i.i60, align 8
  store i32 %dn.0.i.i56, ptr %d_max.i.i44, align 4
  %.pre34.i.i65 = load i32, ptr %d_cur.i.i42, align 8
  br label %mk_append_context_data.exit.i

mk_append_context_data.exit.i:                    ; preds = %if.end.i.i64, %entry.if.end11_crit_edge.i.i46
  %20 = phi i32 [ %17, %entry.if.end11_crit_edge.i.i46 ], [ %.pre34.i.i65, %if.end.i.i64 ]
  %21 = phi ptr [ %.pre.i.i48, %entry.if.end11_crit_edge.i.i46 ], [ %call.i.i62, %if.end.i.i64 ]
  %idx.ext.i.i49 = zext i32 %20 to i64
  %add.ptr.i.i50 = getelementptr inbounds i8, ptr %21, i64 %idx.ext.i.i49
  %conv14.i.i = zext i32 %14 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i.i50, ptr readonly align 1 %16, i64 %conv14.i.i, i1 false)
  store i32 %add.i.i43, ptr %d_cur.i.i42, align 8
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i
  %conv.i66 = zext i32 %14 to i64
  %owner.i = getelementptr inbounds i8, ptr %13, i64 24
  %22 = load ptr, ptr %owner.i, align 8
  %23 = load ptr, ptr %22, align 8
  %call9.i = tail call i64 @fwrite(ptr noundef %16, i64 noundef %conv.i66, i64 noundef 1, ptr noundef %23)
  %cmp10.not.i = icmp eq i64 %call9.i, 1
  br i1 %cmp10.not.i, label %if.end14.i, label %if.end25

if.end14.i:                                       ; preds = %if.else.i, %mk_append_context_data.exit.i
  store i32 0, ptr %d_cur.i, align 8
  br label %if.end25

if.end25:                                         ; preds = %while.end.i.i59, %if.else.i, %while.end.i.i, %if.end14.i, %lor.lhs.false18, %if.end
  %ret.2 = phi i32 [ %ret.0, %if.end ], [ %ret.0, %lor.lhs.false18 ], [ %ret.0, %if.end14.i ], [ -1, %while.end.i.i ], [ -1, %if.else.i ], [ -1, %while.end.i.i59 ]
  %freelist.i = getelementptr inbounds i8, ptr %w, i64 40
  %24 = load ptr, ptr %freelist.i, align 8
  %tobool.not24.i = icmp eq ptr %24, null
  br i1 %tobool.not24.i, label %for.cond.cleanup.i, label %for.body.i

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.end25
  %actlist.i = getelementptr inbounds i8, ptr %w, i64 48
  %25 = load ptr, ptr %actlist.i, align 8
  %tobool4.not26.i = icmp eq ptr %25, null
  br i1 %tobool4.not26.i, label %mk_destroy_contexts.exit, label %for.body6.i

for.body.i:                                       ; preds = %if.end25, %for.body.i
  %cur.025.i = phi ptr [ %26, %for.body.i ], [ %24, %if.end25 ]
  %26 = load ptr, ptr %cur.025.i, align 8
  %data.i = getelementptr inbounds i8, ptr %cur.025.i, i64 40
  %27 = load ptr, ptr %data.i, align 8
  tail call void @free(ptr noundef %27) #11
  tail call void @free(ptr noundef nonnull %cur.025.i) #11
  %tobool.not.i67 = icmp eq ptr %26, null
  br i1 %tobool.not.i67, label %for.cond.cleanup.i, label %for.body.i

for.body6.i:                                      ; preds = %for.cond.cleanup.i, %for.body6.i
  %cur2.027.i = phi ptr [ %28, %for.body6.i ], [ %25, %for.cond.cleanup.i ]
  %28 = load ptr, ptr %cur2.027.i, align 8
  %data8.i = getelementptr inbounds i8, ptr %cur2.027.i, i64 40
  %29 = load ptr, ptr %data8.i, align 8
  tail call void @free(ptr noundef %29) #11
  tail call void @free(ptr noundef nonnull %cur2.027.i) #11
  %tobool4.not.i = icmp eq ptr %28, null
  br i1 %tobool4.not.i, label %mk_destroy_contexts.exit, label %for.body6.i

mk_destroy_contexts.exit:                         ; preds = %for.body6.i, %for.cond.cleanup.i
  %root.i = getelementptr inbounds i8, ptr %w, i64 16
  store ptr null, ptr %root.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %freelist.i, i8 0, i64 16, i1 false)
  %30 = load ptr, ptr %w, align 8
  %call27 = tail call i32 @fclose(ptr noundef %30)
  tail call void @free(ptr noundef %w) #11
  ret i32 %ret.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_close_cluster(ptr nocapture noundef %w) unnamed_addr #0 {
entry:
  %cluster = getelementptr inbounds i8, ptr %w, i64 24
  %0 = load ptr, ptr %cluster, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %return, label %do.body

do.body:                                          ; preds = %entry
  %call = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %0, ptr noundef null)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %return, label %do.end

do.end:                                           ; preds = %do.body
  store ptr null, ptr %cluster, align 8
  %root = getelementptr inbounds i8, ptr %w, i64 16
  %1 = load ptr, ptr %root, align 8
  %d_cur.i = getelementptr inbounds i8, ptr %1, i64 48
  %2 = load i32, ptr %d_cur.i, align 8
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %return, label %if.end.i

if.end.i:                                         ; preds = %do.end
  %parent.i = getelementptr inbounds i8, ptr %1, i64 16
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  %data7.i = getelementptr inbounds i8, ptr %1, i64 40
  %4 = load ptr, ptr %data7.i, align 8
  br i1 %tobool1.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  %d_cur.i.i = getelementptr inbounds i8, ptr %3, i64 48
  %5 = load i32, ptr %d_cur.i.i, align 8
  %add.i.i = add i32 %5, %2
  %d_max.i.i = getelementptr inbounds i8, ptr %3, i64 52
  %6 = load i32, ptr %d_max.i.i, align 4
  %cmp.i.i = icmp ugt i32 %add.i.i, %6
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body.i
  %data12.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %3, i64 40
  %.pre.i.i = load ptr, ptr %data12.phi.trans.insert.i.i, align 8
  br label %mk_append_context_data.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  %tobool.not.i.i = icmp eq i32 %6, 0
  %shl.i.i = shl i32 %6, 1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 16, i32 %shl.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ]
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl4.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds i8, ptr %3, i64 40
  %7 = load ptr, ptr %data5.i.i, align 8
  %conv.i.i = zext i32 %dn.0.i.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i.i) #12
  %tobool6.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.not.i.i, label %return, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %data5.i.i, align 8
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4
  %.pre34.i.i = load i32, ptr %d_cur.i.i, align 8
  br label %mk_append_context_data.exit.i

mk_append_context_data.exit.i:                    ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %8 = phi i32 [ %5, %entry.if.end11_crit_edge.i.i ], [ %.pre34.i.i, %if.end.i.i ]
  %9 = phi ptr [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %idx.ext.i.i = zext i32 %8 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i.i
  %conv14.i.i = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i.i, ptr readonly align 1 %4, i64 %conv14.i.i, i1 false)
  store i32 %add.i.i, ptr %d_cur.i.i, align 8
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i
  %conv.i = zext i32 %2 to i64
  %owner.i = getelementptr inbounds i8, ptr %1, i64 24
  %10 = load ptr, ptr %owner.i, align 8
  %11 = load ptr, ptr %10, align 8
  %call9.i = tail call i64 @fwrite(ptr noundef %4, i64 noundef %conv.i, i64 noundef 1, ptr noundef %11)
  %cmp10.not.i = icmp eq i64 %call9.i, 1
  br i1 %cmp10.not.i, label %if.end14.i, label %return

if.end14.i:                                       ; preds = %if.else.i, %mk_append_context_data.exit.i
  store i32 0, ptr %d_cur.i, align 8
  br label %return

return:                                           ; preds = %do.end, %if.end14.i, %if.else.i, %while.end.i.i, %do.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %do.body ], [ 0, %do.end ], [ 0, %if.end14.i ], [ -1, %if.else.i ], [ -1, %while.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_write_id(ptr nocapture noundef %c, i32 noundef %id) unnamed_addr #0 {
entry:
  %shr = lshr i32 %id, 24
  %conv = trunc nuw i32 %shr to i8
  %shr1 = lshr i32 %id, 16
  %conv2 = trunc i32 %shr1 to i8
  %shr4 = lshr i32 %id, 8
  %conv5 = trunc i32 %shr4 to i8
  %conv7 = trunc i32 %id to i8
  %tobool.not = icmp ult i32 %id, 16777216
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %d_cur.i = getelementptr inbounds i8, ptr %c, i64 48
  %0 = load i32, ptr %d_cur.i, align 8
  %add.i = add i32 %0, 4
  %d_max.i = getelementptr inbounds i8, ptr %c, i64 52
  %1 = load i32, ptr %d_max.i, align 4
  %cmp.i = icmp ugt i32 %add.i, %1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %if.then
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8
  br label %if.end11.i

if.then.i:                                        ; preds = %if.then
  %tobool.not.i = icmp eq i32 %1, 0
  %shl.i = shl i32 %1, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %c, i64 40
  %2 = load ptr, ptr %data5.i, align 8
  %conv.i = zext i32 %dn.0.i to i64
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #12
  %tobool6.not.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8
  store i32 %dn.0.i, ptr %d_max.i, align 4
  %.pre34.i = load i32, ptr %d_cur.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %3 = phi i32 [ %0, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ]
  %4 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ]
  %idx.ext.i = zext i32 %3 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i
  store i8 %conv, ptr %add.ptr.i, align 1
  %c_id.sroa.5.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  store i8 %conv2, ptr %c_id.sroa.5.0.add.ptr.i.sroa_idx, align 1
  %c_id.sroa.8.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  store i8 %conv5, ptr %c_id.sroa.8.0.add.ptr.i.sroa_idx, align 1
  %c_id.sroa.11.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 3
  store i8 %conv7, ptr %c_id.sroa.11.0.add.ptr.i.sroa_idx, align 1
  store i32 %add.i, ptr %d_cur.i, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool9.not = icmp eq i8 %conv2, 0
  %d_max.i86 = getelementptr inbounds i8, ptr %c, i64 52
  %5 = load i32, ptr %d_max.i86, align 4
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %d_cur.i30 = getelementptr inbounds i8, ptr %c, i64 48
  %6 = load i32, ptr %d_cur.i30, align 8
  %add.i31 = add i32 %6, 3
  %cmp.i33 = icmp ugt i32 %add.i31, %5
  br i1 %cmp.i33, label %if.then.i41, label %entry.if.end11_crit_edge.i34

entry.if.end11_crit_edge.i34:                     ; preds = %if.then10
  %data12.phi.trans.insert.i35 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i36 = load ptr, ptr %data12.phi.trans.insert.i35, align 8
  br label %if.end11.i37

if.then.i41:                                      ; preds = %if.then10
  %tobool.not.i42 = icmp eq i32 %5, 0
  %shl.i43 = shl i32 %5, 1
  %spec.select.i44 = select i1 %tobool.not.i42, i32 16, i32 %shl.i43
  br label %while.cond.i45

while.cond.i45:                                   ; preds = %while.cond.i45, %if.then.i41
  %dn.0.i46 = phi i32 [ %spec.select.i44, %if.then.i41 ], [ %shl4.i48, %while.cond.i45 ]
  %cmp3.i47 = icmp ugt i32 %add.i31, %dn.0.i46
  %shl4.i48 = shl i32 %dn.0.i46, 1
  br i1 %cmp3.i47, label %while.cond.i45, label %while.end.i49

while.end.i49:                                    ; preds = %while.cond.i45
  %data5.i50 = getelementptr inbounds i8, ptr %c, i64 40
  %7 = load ptr, ptr %data5.i50, align 8
  %conv.i51 = zext i32 %dn.0.i46 to i64
  %call.i52 = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i51) #12
  %tobool6.not.not.i53 = icmp eq ptr %call.i52, null
  br i1 %tobool6.not.not.i53, label %cleanup, label %if.end.i54

if.end.i54:                                       ; preds = %while.end.i49
  store ptr %call.i52, ptr %data5.i50, align 8
  store i32 %dn.0.i46, ptr %d_max.i86, align 4
  %.pre34.i55 = load i32, ptr %d_cur.i30, align 8
  br label %if.end11.i37

if.end11.i37:                                     ; preds = %if.end.i54, %entry.if.end11_crit_edge.i34
  %8 = phi i32 [ %6, %entry.if.end11_crit_edge.i34 ], [ %.pre34.i55, %if.end.i54 ]
  %9 = phi ptr [ %.pre.i36, %entry.if.end11_crit_edge.i34 ], [ %call.i52, %if.end.i54 ]
  %idx.ext.i38 = zext i32 %8 to i64
  %add.ptr.i39 = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i38
  store i8 %conv2, ptr %add.ptr.i39, align 1
  %c_id.sroa.8.1.add.ptr.i39.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i39, i64 1
  store i8 %conv5, ptr %c_id.sroa.8.1.add.ptr.i39.sroa_idx, align 1
  %c_id.sroa.11.1.add.ptr.i39.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i39, i64 2
  store i8 %conv7, ptr %c_id.sroa.11.1.add.ptr.i39.sroa_idx, align 1
  store i32 %add.i31, ptr %d_cur.i30, align 8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %tobool15.not = icmp eq i8 %conv5, 0
  %d_cur.i84 = getelementptr inbounds i8, ptr %c, i64 48
  %10 = load i32, ptr %d_cur.i84, align 8
  br i1 %tobool15.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end13
  %add.i58 = add i32 %10, 2
  %cmp.i60 = icmp ugt i32 %add.i58, %5
  br i1 %cmp.i60, label %if.then.i68, label %entry.if.end11_crit_edge.i61

entry.if.end11_crit_edge.i61:                     ; preds = %if.then16
  %data12.phi.trans.insert.i62 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i63 = load ptr, ptr %data12.phi.trans.insert.i62, align 8
  br label %if.end11.i64

if.then.i68:                                      ; preds = %if.then16
  %tobool.not.i69 = icmp eq i32 %5, 0
  %shl.i70 = shl i32 %5, 1
  %spec.select.i71 = select i1 %tobool.not.i69, i32 16, i32 %shl.i70
  br label %while.cond.i72

while.cond.i72:                                   ; preds = %while.cond.i72, %if.then.i68
  %dn.0.i73 = phi i32 [ %spec.select.i71, %if.then.i68 ], [ %shl4.i75, %while.cond.i72 ]
  %cmp3.i74 = icmp ugt i32 %add.i58, %dn.0.i73
  %shl4.i75 = shl i32 %dn.0.i73, 1
  br i1 %cmp3.i74, label %while.cond.i72, label %while.end.i76

while.end.i76:                                    ; preds = %while.cond.i72
  %data5.i77 = getelementptr inbounds i8, ptr %c, i64 40
  %11 = load ptr, ptr %data5.i77, align 8
  %conv.i78 = zext i32 %dn.0.i73 to i64
  %call.i79 = tail call ptr @realloc(ptr noundef %11, i64 noundef %conv.i78) #12
  %tobool6.not.not.i80 = icmp eq ptr %call.i79, null
  br i1 %tobool6.not.not.i80, label %cleanup, label %if.end.i81

if.end.i81:                                       ; preds = %while.end.i76
  store ptr %call.i79, ptr %data5.i77, align 8
  store i32 %dn.0.i73, ptr %d_max.i86, align 4
  %.pre34.i82 = load i32, ptr %d_cur.i84, align 8
  br label %if.end11.i64

if.end11.i64:                                     ; preds = %if.end.i81, %entry.if.end11_crit_edge.i61
  %12 = phi i32 [ %10, %entry.if.end11_crit_edge.i61 ], [ %.pre34.i82, %if.end.i81 ]
  %13 = phi ptr [ %.pre.i63, %entry.if.end11_crit_edge.i61 ], [ %call.i79, %if.end.i81 ]
  %idx.ext.i65 = zext i32 %12 to i64
  %add.ptr.i66 = getelementptr inbounds i8, ptr %13, i64 %idx.ext.i65
  store i8 %conv5, ptr %add.ptr.i66, align 1
  %c_id.sroa.11.2.add.ptr.i66.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i66, i64 1
  store i8 %conv7, ptr %c_id.sroa.11.2.add.ptr.i66.sroa_idx, align 1
  store i32 %add.i58, ptr %d_cur.i84, align 8
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %add.i85 = add i32 %10, 1
  %cmp.i87 = icmp ugt i32 %add.i85, %5
  br i1 %cmp.i87, label %if.then.i95, label %entry.if.end11_crit_edge.i88

entry.if.end11_crit_edge.i88:                     ; preds = %if.end20
  %data12.phi.trans.insert.i89 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i90 = load ptr, ptr %data12.phi.trans.insert.i89, align 8
  br label %if.end11.i91

if.then.i95:                                      ; preds = %if.end20
  %tobool.not.i96 = icmp eq i32 %5, 0
  %shl.i97 = shl i32 %5, 1
  %spec.select.i98 = select i1 %tobool.not.i96, i32 16, i32 %shl.i97
  br label %while.cond.i99

while.cond.i99:                                   ; preds = %while.cond.i99, %if.then.i95
  %dn.0.i100 = phi i32 [ %spec.select.i98, %if.then.i95 ], [ %shl4.i102, %while.cond.i99 ]
  %cmp3.i101 = icmp ugt i32 %add.i85, %dn.0.i100
  %shl4.i102 = shl i32 %dn.0.i100, 1
  br i1 %cmp3.i101, label %while.cond.i99, label %while.end.i103

while.end.i103:                                   ; preds = %while.cond.i99
  %data5.i104 = getelementptr inbounds i8, ptr %c, i64 40
  %14 = load ptr, ptr %data5.i104, align 8
  %conv.i105 = zext i32 %dn.0.i100 to i64
  %call.i106 = tail call ptr @realloc(ptr noundef %14, i64 noundef %conv.i105) #12
  %tobool6.not.not.i107 = icmp eq ptr %call.i106, null
  br i1 %tobool6.not.not.i107, label %cleanup, label %if.end.i108

if.end.i108:                                      ; preds = %while.end.i103
  store ptr %call.i106, ptr %data5.i104, align 8
  store i32 %dn.0.i100, ptr %d_max.i86, align 4
  %.pre34.i109 = load i32, ptr %d_cur.i84, align 8
  br label %if.end11.i91

if.end11.i91:                                     ; preds = %if.end.i108, %entry.if.end11_crit_edge.i88
  %15 = phi i32 [ %10, %entry.if.end11_crit_edge.i88 ], [ %.pre34.i109, %if.end.i108 ]
  %16 = phi ptr [ %.pre.i90, %entry.if.end11_crit_edge.i88 ], [ %call.i106, %if.end.i108 ]
  %idx.ext.i92 = zext i32 %15 to i64
  %add.ptr.i93 = getelementptr inbounds i8, ptr %16, i64 %idx.ext.i92
  store i8 %conv7, ptr %add.ptr.i93, align 1
  store i32 %add.i85, ptr %d_cur.i84, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i91, %while.end.i103, %if.end11.i64, %while.end.i76, %if.end11.i37, %while.end.i49, %if.end11.i, %while.end.i
  %retval.0 = phi i32 [ 0, %if.end11.i ], [ -1, %while.end.i ], [ 0, %if.end11.i37 ], [ -1, %while.end.i49 ], [ 0, %if.end11.i64 ], [ -1, %while.end.i76 ], [ 0, %if.end11.i91 ], [ -1, %while.end.i103 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mk_write_size(ptr nocapture noundef %c, i32 noundef %size) unnamed_addr #0 {
entry:
  %shr = lshr i32 %size, 24
  %conv = trunc nuw i32 %shr to i8
  %shr2 = lshr i32 %size, 16
  %conv3 = trunc i32 %shr2 to i8
  %shr5 = lshr i32 %size, 8
  %conv6 = trunc i32 %shr5 to i8
  %conv8 = trunc i32 %size to i8
  %cmp = icmp ult i32 %size, 127
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv11 = or disjoint i8 %conv8, -128
  %d_cur.i = getelementptr inbounds i8, ptr %c, i64 48
  %0 = load i32, ptr %d_cur.i, align 8
  %add.i = add i32 %0, 1
  %d_max.i = getelementptr inbounds i8, ptr %c, i64 52
  %1 = load i32, ptr %d_max.i, align 4
  %cmp.i = icmp ugt i32 %add.i, %1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %if.then
  %data12.phi.trans.insert.i = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i = load ptr, ptr %data12.phi.trans.insert.i, align 8
  br label %if.end11.i

if.then.i:                                        ; preds = %if.then
  %tobool.not.i = icmp eq i32 %1, 0
  %shl.i = shl i32 %1, 1
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds i8, ptr %c, i64 40
  %2 = load ptr, ptr %data5.i, align 8
  %conv.i = zext i32 %dn.0.i to i64
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #12
  %tobool6.not.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %data5.i, align 8
  store i32 %dn.0.i, ptr %d_max.i, align 4
  %.pre34.i = load i32, ptr %d_cur.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %3 = phi i32 [ %0, %entry.if.end11_crit_edge.i ], [ %.pre34.i, %if.end.i ]
  %4 = phi ptr [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ]
  %idx.ext.i = zext i32 %3 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i
  store i8 %conv11, ptr %add.ptr.i, align 1
  store i32 %add.i, ptr %d_cur.i, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp12 = icmp ult i32 %size, 16383
  br i1 %cmp12, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end
  %5 = or disjoint i8 %conv6, 64
  %d_cur.i58 = getelementptr inbounds i8, ptr %c, i64 48
  %6 = load i32, ptr %d_cur.i58, align 8
  %add.i59 = add i32 %6, 2
  %d_max.i60 = getelementptr inbounds i8, ptr %c, i64 52
  %7 = load i32, ptr %d_max.i60, align 4
  %cmp.i61 = icmp ugt i32 %add.i59, %7
  br i1 %cmp.i61, label %if.then.i69, label %entry.if.end11_crit_edge.i62

entry.if.end11_crit_edge.i62:                     ; preds = %if.then14
  %data12.phi.trans.insert.i63 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i64 = load ptr, ptr %data12.phi.trans.insert.i63, align 8
  br label %if.end11.i65

if.then.i69:                                      ; preds = %if.then14
  %tobool.not.i70 = icmp eq i32 %7, 0
  %shl.i71 = shl i32 %7, 1
  %spec.select.i72 = select i1 %tobool.not.i70, i32 16, i32 %shl.i71
  br label %while.cond.i73

while.cond.i73:                                   ; preds = %while.cond.i73, %if.then.i69
  %dn.0.i74 = phi i32 [ %spec.select.i72, %if.then.i69 ], [ %shl4.i76, %while.cond.i73 ]
  %cmp3.i75 = icmp ugt i32 %add.i59, %dn.0.i74
  %shl4.i76 = shl i32 %dn.0.i74, 1
  br i1 %cmp3.i75, label %while.cond.i73, label %while.end.i77

while.end.i77:                                    ; preds = %while.cond.i73
  %data5.i78 = getelementptr inbounds i8, ptr %c, i64 40
  %8 = load ptr, ptr %data5.i78, align 8
  %conv.i79 = zext i32 %dn.0.i74 to i64
  %call.i80 = tail call ptr @realloc(ptr noundef %8, i64 noundef %conv.i79) #12
  %tobool6.not.not.i81 = icmp eq ptr %call.i80, null
  br i1 %tobool6.not.not.i81, label %cleanup, label %if.end.i82

if.end.i82:                                       ; preds = %while.end.i77
  store ptr %call.i80, ptr %data5.i78, align 8
  store i32 %dn.0.i74, ptr %d_max.i60, align 4
  %.pre34.i83 = load i32, ptr %d_cur.i58, align 8
  br label %if.end11.i65

if.end11.i65:                                     ; preds = %if.end.i82, %entry.if.end11_crit_edge.i62
  %9 = phi i32 [ %6, %entry.if.end11_crit_edge.i62 ], [ %.pre34.i83, %if.end.i82 ]
  %10 = phi ptr [ %.pre.i64, %entry.if.end11_crit_edge.i62 ], [ %call.i80, %if.end.i82 ]
  %idx.ext.i66 = zext i32 %9 to i64
  %add.ptr.i67 = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i66
  store i8 %5, ptr %add.ptr.i67, align 1
  %c_size.sroa.16.3.add.ptr.i67.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i67, i64 1
  store i8 %conv8, ptr %c_size.sroa.16.3.add.ptr.i67.sroa_idx, align 1
  store i32 %add.i59, ptr %d_cur.i58, align 8
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %cmp23 = icmp ult i32 %size, 2097151
  br i1 %cmp23, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end22
  %11 = or disjoint i8 %conv3, 32
  %d_cur.i85 = getelementptr inbounds i8, ptr %c, i64 48
  %12 = load i32, ptr %d_cur.i85, align 8
  %add.i86 = add i32 %12, 3
  %d_max.i87 = getelementptr inbounds i8, ptr %c, i64 52
  %13 = load i32, ptr %d_max.i87, align 4
  %cmp.i88 = icmp ugt i32 %add.i86, %13
  br i1 %cmp.i88, label %if.then.i96, label %entry.if.end11_crit_edge.i89

entry.if.end11_crit_edge.i89:                     ; preds = %if.then25
  %data12.phi.trans.insert.i90 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i91 = load ptr, ptr %data12.phi.trans.insert.i90, align 8
  br label %if.end11.i92

if.then.i96:                                      ; preds = %if.then25
  %tobool.not.i97 = icmp eq i32 %13, 0
  %shl.i98 = shl i32 %13, 1
  %spec.select.i99 = select i1 %tobool.not.i97, i32 16, i32 %shl.i98
  br label %while.cond.i100

while.cond.i100:                                  ; preds = %while.cond.i100, %if.then.i96
  %dn.0.i101 = phi i32 [ %spec.select.i99, %if.then.i96 ], [ %shl4.i103, %while.cond.i100 ]
  %cmp3.i102 = icmp ugt i32 %add.i86, %dn.0.i101
  %shl4.i103 = shl i32 %dn.0.i101, 1
  br i1 %cmp3.i102, label %while.cond.i100, label %while.end.i104

while.end.i104:                                   ; preds = %while.cond.i100
  %data5.i105 = getelementptr inbounds i8, ptr %c, i64 40
  %14 = load ptr, ptr %data5.i105, align 8
  %conv.i106 = zext i32 %dn.0.i101 to i64
  %call.i107 = tail call ptr @realloc(ptr noundef %14, i64 noundef %conv.i106) #12
  %tobool6.not.not.i108 = icmp eq ptr %call.i107, null
  br i1 %tobool6.not.not.i108, label %cleanup, label %if.end.i109

if.end.i109:                                      ; preds = %while.end.i104
  store ptr %call.i107, ptr %data5.i105, align 8
  store i32 %dn.0.i101, ptr %d_max.i87, align 4
  %.pre34.i110 = load i32, ptr %d_cur.i85, align 8
  br label %if.end11.i92

if.end11.i92:                                     ; preds = %if.end.i109, %entry.if.end11_crit_edge.i89
  %15 = phi i32 [ %12, %entry.if.end11_crit_edge.i89 ], [ %.pre34.i110, %if.end.i109 ]
  %16 = phi ptr [ %.pre.i91, %entry.if.end11_crit_edge.i89 ], [ %call.i107, %if.end.i109 ]
  %idx.ext.i93 = zext i32 %15 to i64
  %add.ptr.i94 = getelementptr inbounds i8, ptr %16, i64 %idx.ext.i93
  store i8 %11, ptr %add.ptr.i94, align 1
  %c_size.sroa.12.2.add.ptr.i94.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i94, i64 1
  store i8 %conv6, ptr %c_size.sroa.12.2.add.ptr.i94.sroa_idx, align 1
  %c_size.sroa.16.2.add.ptr.i94.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i94, i64 2
  store i8 %conv8, ptr %c_size.sroa.16.2.add.ptr.i94.sroa_idx, align 1
  store i32 %add.i86, ptr %d_cur.i85, align 8
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %cmp34 = icmp ult i32 %size, 268435455
  br i1 %cmp34, label %if.then36, label %if.end44

if.then36:                                        ; preds = %if.end33
  %17 = or disjoint i8 %conv, 16
  %d_cur.i112 = getelementptr inbounds i8, ptr %c, i64 48
  %18 = load i32, ptr %d_cur.i112, align 8
  %add.i113 = add i32 %18, 4
  %d_max.i114 = getelementptr inbounds i8, ptr %c, i64 52
  %19 = load i32, ptr %d_max.i114, align 4
  %cmp.i115 = icmp ugt i32 %add.i113, %19
  br i1 %cmp.i115, label %if.then.i123, label %entry.if.end11_crit_edge.i116

entry.if.end11_crit_edge.i116:                    ; preds = %if.then36
  %data12.phi.trans.insert.i117 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i118 = load ptr, ptr %data12.phi.trans.insert.i117, align 8
  br label %if.end11.i119

if.then.i123:                                     ; preds = %if.then36
  %tobool.not.i124 = icmp eq i32 %19, 0
  %shl.i125 = shl i32 %19, 1
  %spec.select.i126 = select i1 %tobool.not.i124, i32 16, i32 %shl.i125
  br label %while.cond.i127

while.cond.i127:                                  ; preds = %while.cond.i127, %if.then.i123
  %dn.0.i128 = phi i32 [ %spec.select.i126, %if.then.i123 ], [ %shl4.i130, %while.cond.i127 ]
  %cmp3.i129 = icmp ugt i32 %add.i113, %dn.0.i128
  %shl4.i130 = shl i32 %dn.0.i128, 1
  br i1 %cmp3.i129, label %while.cond.i127, label %while.end.i131

while.end.i131:                                   ; preds = %while.cond.i127
  %data5.i132 = getelementptr inbounds i8, ptr %c, i64 40
  %20 = load ptr, ptr %data5.i132, align 8
  %conv.i133 = zext i32 %dn.0.i128 to i64
  %call.i134 = tail call ptr @realloc(ptr noundef %20, i64 noundef %conv.i133) #12
  %tobool6.not.not.i135 = icmp eq ptr %call.i134, null
  br i1 %tobool6.not.not.i135, label %cleanup, label %if.end.i136

if.end.i136:                                      ; preds = %while.end.i131
  store ptr %call.i134, ptr %data5.i132, align 8
  store i32 %dn.0.i128, ptr %d_max.i114, align 4
  %.pre34.i137 = load i32, ptr %d_cur.i112, align 8
  br label %if.end11.i119

if.end11.i119:                                    ; preds = %if.end.i136, %entry.if.end11_crit_edge.i116
  %21 = phi i32 [ %18, %entry.if.end11_crit_edge.i116 ], [ %.pre34.i137, %if.end.i136 ]
  %22 = phi ptr [ %.pre.i118, %entry.if.end11_crit_edge.i116 ], [ %call.i134, %if.end.i136 ]
  %idx.ext.i120 = zext i32 %21 to i64
  %add.ptr.i121 = getelementptr inbounds i8, ptr %22, i64 %idx.ext.i120
  store i8 %17, ptr %add.ptr.i121, align 1
  %c_size.sroa.8.1.add.ptr.i121.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i121, i64 1
  store i8 %conv3, ptr %c_size.sroa.8.1.add.ptr.i121.sroa_idx, align 1
  %c_size.sroa.12.1.add.ptr.i121.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i121, i64 2
  store i8 %conv6, ptr %c_size.sroa.12.1.add.ptr.i121.sroa_idx, align 1
  %c_size.sroa.16.1.add.ptr.i121.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i121, i64 3
  store i8 %conv8, ptr %c_size.sroa.16.1.add.ptr.i121.sroa_idx, align 1
  store i32 %add.i113, ptr %d_cur.i112, align 8
  br label %cleanup

if.end44:                                         ; preds = %if.end33
  %d_cur.i139 = getelementptr inbounds i8, ptr %c, i64 48
  %23 = load i32, ptr %d_cur.i139, align 8
  %add.i140 = add i32 %23, 5
  %d_max.i141 = getelementptr inbounds i8, ptr %c, i64 52
  %24 = load i32, ptr %d_max.i141, align 4
  %cmp.i142 = icmp ugt i32 %add.i140, %24
  br i1 %cmp.i142, label %if.then.i150, label %entry.if.end11_crit_edge.i143

entry.if.end11_crit_edge.i143:                    ; preds = %if.end44
  %data12.phi.trans.insert.i144 = getelementptr inbounds i8, ptr %c, i64 40
  %.pre.i145 = load ptr, ptr %data12.phi.trans.insert.i144, align 8
  br label %if.end11.i146

if.then.i150:                                     ; preds = %if.end44
  %tobool.not.i151 = icmp eq i32 %24, 0
  %shl.i152 = shl i32 %24, 1
  %spec.select.i153 = select i1 %tobool.not.i151, i32 16, i32 %shl.i152
  br label %while.cond.i154

while.cond.i154:                                  ; preds = %while.cond.i154, %if.then.i150
  %dn.0.i155 = phi i32 [ %spec.select.i153, %if.then.i150 ], [ %shl4.i157, %while.cond.i154 ]
  %cmp3.i156 = icmp ugt i32 %add.i140, %dn.0.i155
  %shl4.i157 = shl i32 %dn.0.i155, 1
  br i1 %cmp3.i156, label %while.cond.i154, label %while.end.i158

while.end.i158:                                   ; preds = %while.cond.i154
  %data5.i159 = getelementptr inbounds i8, ptr %c, i64 40
  %25 = load ptr, ptr %data5.i159, align 8
  %conv.i160 = zext i32 %dn.0.i155 to i64
  %call.i161 = tail call ptr @realloc(ptr noundef %25, i64 noundef %conv.i160) #12
  %tobool6.not.not.i162 = icmp eq ptr %call.i161, null
  br i1 %tobool6.not.not.i162, label %cleanup, label %if.end.i163

if.end.i163:                                      ; preds = %while.end.i158
  store ptr %call.i161, ptr %data5.i159, align 8
  store i32 %dn.0.i155, ptr %d_max.i141, align 4
  %.pre34.i164 = load i32, ptr %d_cur.i139, align 8
  br label %if.end11.i146

if.end11.i146:                                    ; preds = %if.end.i163, %entry.if.end11_crit_edge.i143
  %26 = phi i32 [ %23, %entry.if.end11_crit_edge.i143 ], [ %.pre34.i164, %if.end.i163 ]
  %27 = phi ptr [ %.pre.i145, %entry.if.end11_crit_edge.i143 ], [ %call.i161, %if.end.i163 ]
  %idx.ext.i147 = zext i32 %26 to i64
  %add.ptr.i148 = getelementptr inbounds i8, ptr %27, i64 %idx.ext.i147
  store i8 8, ptr %add.ptr.i148, align 1
  %c_size.sroa.4.0.add.ptr.i148.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i148, i64 1
  store i8 %conv, ptr %c_size.sroa.4.0.add.ptr.i148.sroa_idx, align 1
  %c_size.sroa.8.0.add.ptr.i148.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i148, i64 2
  store i8 %conv3, ptr %c_size.sroa.8.0.add.ptr.i148.sroa_idx, align 1
  %c_size.sroa.12.0.add.ptr.i148.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i148, i64 3
  store i8 %conv6, ptr %c_size.sroa.12.0.add.ptr.i148.sroa_idx, align 1
  %c_size.sroa.16.0.add.ptr.i148.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i148, i64 4
  store i8 %conv8, ptr %c_size.sroa.16.0.add.ptr.i148.sroa_idx, align 1
  store i32 %add.i140, ptr %d_cur.i139, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i146, %while.end.i158, %if.end11.i119, %while.end.i131, %if.end11.i92, %while.end.i104, %if.end11.i65, %while.end.i77, %if.end11.i, %while.end.i
  %retval.0 = phi i32 [ 0, %if.end11.i ], [ -1, %while.end.i ], [ 0, %if.end11.i65 ], [ -1, %while.end.i77 ], [ 0, %if.end11.i92 ], [ -1, %while.end.i104 ], [ 0, %if.end11.i119 ], [ -1, %while.end.i131 ], [ 0, %if.end11.i146 ], [ -1, %while.end.i158 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
