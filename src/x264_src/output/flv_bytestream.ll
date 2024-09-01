; ModuleID = 'x264_src/output/flv_bytestream.c'
source_filename = "x264_src/output/flv_bytestream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @dbl2int(double noundef %value) local_unnamed_addr #0 {
entry:
  %0 = bitcast double %value to i64
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_byte(ptr nocapture noundef %c, i8 noundef zeroext %b) local_unnamed_addr #1 {
entry:
  %d_cur.i = getelementptr inbounds i8, ptr %c, i64 8
  %0 = load i32, ptr %d_cur.i, align 8
  %add.i = add i32 %0, 1
  %d_max.i = getelementptr inbounds i8, ptr %c, i64 12
  %1 = load i32, ptr %d_max.i, align 4
  %cmp.i = icmp ugt i32 %add.i, %1
  br i1 %cmp.i, label %while.cond.i, label %entry.if.end7_crit_edge.i

entry.if.end7_crit_edge.i:                        ; preds = %entry
  %.pre.i = load ptr, ptr %c, align 8
  br label %if.end7.i

while.cond.i:                                     ; preds = %entry, %while.cond.i
  %dn.0.i = phi i32 [ %shl.i, %while.cond.i ], [ 16, %entry ]
  %cmp1.i = icmp ugt i32 %add.i, %dn.0.i
  %shl.i = shl i32 %dn.0.i, 1
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %2 = load ptr, ptr %c, align 8
  %conv.i = zext i32 %dn.0.i to i64
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #10
  %tobool.not.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.not.i, label %flv_append_data.exit, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %c, align 8
  store i32 %dn.0.i, ptr %d_max.i, align 4
  %.pre27.i = load i32, ptr %d_cur.i, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %entry.if.end7_crit_edge.i
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge.i ], [ %.pre27.i, %if.end.i ]
  %4 = phi ptr [ %.pre.i, %entry.if.end7_crit_edge.i ], [ %call.i, %if.end.i ]
  %idx.ext.i = zext i32 %3 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i
  store i8 %b, ptr %add.ptr.i, align 1
  store i32 %add.i, ptr %d_cur.i, align 8
  br label %flv_append_data.exit

flv_append_data.exit:                             ; preds = %while.end.i, %if.end7.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @flv_append_data(ptr nocapture noundef %c, ptr nocapture noundef readonly %data, i32 noundef %size) local_unnamed_addr #1 {
entry:
  %d_cur = getelementptr inbounds i8, ptr %c, i64 8
  %0 = load i32, ptr %d_cur, align 8
  %add = add i32 %0, %size
  %d_max = getelementptr inbounds i8, ptr %c, i64 12
  %1 = load i32, ptr %d_max, align 4
  %cmp = icmp ugt i32 %add, %1
  br i1 %cmp, label %while.cond, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = load ptr, ptr %c, align 8
  br label %if.end7

while.cond:                                       ; preds = %entry, %while.cond
  %dn.0 = phi i32 [ %shl, %while.cond ], [ 16, %entry ]
  %cmp1 = icmp ugt i32 %add, %dn.0
  %shl = shl i32 %dn.0, 1
  br i1 %cmp1, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %2 = load ptr, ptr %c, align 8
  %conv = zext i32 %dn.0 to i64
  %call = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv) #10
  %tobool.not.not = icmp eq ptr %call, null
  br i1 %tobool.not.not, label %cleanup12, label %if.end

if.end:                                           ; preds = %while.end
  store ptr %call, ptr %c, align 8
  store i32 %dn.0, ptr %d_max, align 4
  %.pre27 = load i32, ptr %d_cur, align 8
  br label %if.end7

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.end
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge ], [ %.pre27, %if.end ]
  %4 = phi ptr [ %.pre, %entry.if.end7_crit_edge ], [ %call, %if.end ]
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %conv10 = zext i32 %size to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %data, i64 %conv10, i1 false)
  store i32 %add, ptr %d_cur, align 8
  br label %cleanup12

cleanup12:                                        ; preds = %while.end, %if.end7
  %retval.1 = phi i32 [ 0, %if.end7 ], [ -1, %while.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be32(ptr nocapture noundef %c, i32 noundef %val) local_unnamed_addr #1 {
entry:
  %shr = lshr i32 %val, 24
  %conv = trunc nuw i32 %shr to i8
  %d_cur.i.i = getelementptr inbounds i8, ptr %c, i64 8
  %0 = load i32, ptr %d_cur.i.i, align 8
  %add.i.i = add i32 %0, 1
  %d_max.i.i = getelementptr inbounds i8, ptr %c, i64 12
  %1 = load i32, ptr %d_max.i.i, align 4
  %cmp.i.i = icmp ugt i32 %add.i.i, %1
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i

entry.if.end7_crit_edge.i.i:                      ; preds = %entry
  %.pre.i.i = load ptr, ptr %c, align 8
  br label %if.end7.i.i

while.cond.i.i:                                   ; preds = %entry, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %entry ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %2 = load ptr, ptr %c, align 8
  %conv.i.i = zext i32 %dn.0.i.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i.i) #10
  %tobool.not.not.i.i = icmp eq ptr %call.i.i, null
  %.pre = load i32, ptr %d_cur.i.i, align 8
  br i1 %tobool.not.not.i.i, label %x264_put_byte.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge.i.i ], [ %.pre, %if.end.i.i ]
  %4 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %idx.ext.i.i = zext i32 %3 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i.i
  store i8 %conv, ptr %add.ptr.i.i, align 1
  store i32 %add.i.i, ptr %d_cur.i.i, align 8
  br label %x264_put_byte.exit

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
  %5 = phi i32 [ %.pre, %while.end.i.i ], [ %add.i.i, %if.end7.i.i ]
  %shr1 = lshr i32 %val, 16
  %conv2 = trunc i32 %shr1 to i8
  %add.i.i13 = add i32 %5, 1
  %6 = load i32, ptr %d_max.i.i, align 4
  %cmp.i.i15 = icmp ugt i32 %add.i.i13, %6
  br i1 %cmp.i.i15, label %while.cond.i.i21, label %entry.if.end7_crit_edge.i.i16

entry.if.end7_crit_edge.i.i16:                    ; preds = %x264_put_byte.exit
  %.pre.i.i17 = load ptr, ptr %c, align 8
  br label %if.end7.i.i18

while.cond.i.i21:                                 ; preds = %x264_put_byte.exit, %while.cond.i.i21
  %dn.0.i.i22 = phi i32 [ %shl.i.i24, %while.cond.i.i21 ], [ 16, %x264_put_byte.exit ]
  %cmp1.i.i23 = icmp ugt i32 %add.i.i13, %dn.0.i.i22
  %shl.i.i24 = shl i32 %dn.0.i.i22, 1
  br i1 %cmp1.i.i23, label %while.cond.i.i21, label %while.end.i.i25

while.end.i.i25:                                  ; preds = %while.cond.i.i21
  %7 = load ptr, ptr %c, align 8
  %conv.i.i26 = zext i32 %dn.0.i.i22 to i64
  %call.i.i27 = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i.i26) #10
  %tobool.not.not.i.i28 = icmp eq ptr %call.i.i27, null
  %.pre72 = load i32, ptr %d_cur.i.i, align 8
  br i1 %tobool.not.not.i.i28, label %x264_put_byte.exit31, label %if.end.i.i29

if.end.i.i29:                                     ; preds = %while.end.i.i25
  store ptr %call.i.i27, ptr %c, align 8
  store i32 %dn.0.i.i22, ptr %d_max.i.i, align 4
  br label %if.end7.i.i18

if.end7.i.i18:                                    ; preds = %if.end.i.i29, %entry.if.end7_crit_edge.i.i16
  %8 = phi i32 [ %5, %entry.if.end7_crit_edge.i.i16 ], [ %.pre72, %if.end.i.i29 ]
  %9 = phi ptr [ %.pre.i.i17, %entry.if.end7_crit_edge.i.i16 ], [ %call.i.i27, %if.end.i.i29 ]
  %idx.ext.i.i19 = zext i32 %8 to i64
  %add.ptr.i.i20 = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i.i19
  store i8 %conv2, ptr %add.ptr.i.i20, align 1
  store i32 %add.i.i13, ptr %d_cur.i.i, align 8
  br label %x264_put_byte.exit31

x264_put_byte.exit31:                             ; preds = %while.end.i.i25, %if.end7.i.i18
  %10 = phi i32 [ %.pre72, %while.end.i.i25 ], [ %add.i.i13, %if.end7.i.i18 ]
  %shr3 = lshr i32 %val, 8
  %conv4 = trunc i32 %shr3 to i8
  %add.i.i33 = add i32 %10, 1
  %11 = load i32, ptr %d_max.i.i, align 4
  %cmp.i.i35 = icmp ugt i32 %add.i.i33, %11
  br i1 %cmp.i.i35, label %while.cond.i.i41, label %entry.if.end7_crit_edge.i.i36

entry.if.end7_crit_edge.i.i36:                    ; preds = %x264_put_byte.exit31
  %.pre.i.i37 = load ptr, ptr %c, align 8
  br label %if.end7.i.i38

while.cond.i.i41:                                 ; preds = %x264_put_byte.exit31, %while.cond.i.i41
  %dn.0.i.i42 = phi i32 [ %shl.i.i44, %while.cond.i.i41 ], [ 16, %x264_put_byte.exit31 ]
  %cmp1.i.i43 = icmp ugt i32 %add.i.i33, %dn.0.i.i42
  %shl.i.i44 = shl i32 %dn.0.i.i42, 1
  br i1 %cmp1.i.i43, label %while.cond.i.i41, label %while.end.i.i45

while.end.i.i45:                                  ; preds = %while.cond.i.i41
  %12 = load ptr, ptr %c, align 8
  %conv.i.i46 = zext i32 %dn.0.i.i42 to i64
  %call.i.i47 = tail call ptr @realloc(ptr noundef %12, i64 noundef %conv.i.i46) #10
  %tobool.not.not.i.i48 = icmp eq ptr %call.i.i47, null
  %.pre73 = load i32, ptr %d_cur.i.i, align 8
  br i1 %tobool.not.not.i.i48, label %x264_put_byte.exit51, label %if.end.i.i49

if.end.i.i49:                                     ; preds = %while.end.i.i45
  store ptr %call.i.i47, ptr %c, align 8
  store i32 %dn.0.i.i42, ptr %d_max.i.i, align 4
  br label %if.end7.i.i38

if.end7.i.i38:                                    ; preds = %if.end.i.i49, %entry.if.end7_crit_edge.i.i36
  %13 = phi i32 [ %10, %entry.if.end7_crit_edge.i.i36 ], [ %.pre73, %if.end.i.i49 ]
  %14 = phi ptr [ %.pre.i.i37, %entry.if.end7_crit_edge.i.i36 ], [ %call.i.i47, %if.end.i.i49 ]
  %idx.ext.i.i39 = zext i32 %13 to i64
  %add.ptr.i.i40 = getelementptr inbounds i8, ptr %14, i64 %idx.ext.i.i39
  store i8 %conv4, ptr %add.ptr.i.i40, align 1
  store i32 %add.i.i33, ptr %d_cur.i.i, align 8
  br label %x264_put_byte.exit51

x264_put_byte.exit51:                             ; preds = %while.end.i.i45, %if.end7.i.i38
  %15 = phi i32 [ %.pre73, %while.end.i.i45 ], [ %add.i.i33, %if.end7.i.i38 ]
  %conv5 = trunc i32 %val to i8
  %add.i.i53 = add i32 %15, 1
  %16 = load i32, ptr %d_max.i.i, align 4
  %cmp.i.i55 = icmp ugt i32 %add.i.i53, %16
  br i1 %cmp.i.i55, label %while.cond.i.i61, label %entry.if.end7_crit_edge.i.i56

entry.if.end7_crit_edge.i.i56:                    ; preds = %x264_put_byte.exit51
  %.pre.i.i57 = load ptr, ptr %c, align 8
  br label %if.end7.i.i58

while.cond.i.i61:                                 ; preds = %x264_put_byte.exit51, %while.cond.i.i61
  %dn.0.i.i62 = phi i32 [ %shl.i.i64, %while.cond.i.i61 ], [ 16, %x264_put_byte.exit51 ]
  %cmp1.i.i63 = icmp ugt i32 %add.i.i53, %dn.0.i.i62
  %shl.i.i64 = shl i32 %dn.0.i.i62, 1
  br i1 %cmp1.i.i63, label %while.cond.i.i61, label %while.end.i.i65

while.end.i.i65:                                  ; preds = %while.cond.i.i61
  %17 = load ptr, ptr %c, align 8
  %conv.i.i66 = zext i32 %dn.0.i.i62 to i64
  %call.i.i67 = tail call ptr @realloc(ptr noundef %17, i64 noundef %conv.i.i66) #10
  %tobool.not.not.i.i68 = icmp eq ptr %call.i.i67, null
  br i1 %tobool.not.not.i.i68, label %x264_put_byte.exit71, label %if.end.i.i69

if.end.i.i69:                                     ; preds = %while.end.i.i65
  store ptr %call.i.i67, ptr %c, align 8
  store i32 %dn.0.i.i62, ptr %d_max.i.i, align 4
  %.pre27.i.i70 = load i32, ptr %d_cur.i.i, align 8
  br label %if.end7.i.i58

if.end7.i.i58:                                    ; preds = %if.end.i.i69, %entry.if.end7_crit_edge.i.i56
  %18 = phi i32 [ %15, %entry.if.end7_crit_edge.i.i56 ], [ %.pre27.i.i70, %if.end.i.i69 ]
  %19 = phi ptr [ %.pre.i.i57, %entry.if.end7_crit_edge.i.i56 ], [ %call.i.i67, %if.end.i.i69 ]
  %idx.ext.i.i59 = zext i32 %18 to i64
  %add.ptr.i.i60 = getelementptr inbounds i8, ptr %19, i64 %idx.ext.i.i59
  store i8 %conv5, ptr %add.ptr.i.i60, align 1
  store i32 %add.i.i53, ptr %d_cur.i.i, align 8
  br label %x264_put_byte.exit71

x264_put_byte.exit71:                             ; preds = %while.end.i.i65, %if.end7.i.i58
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be64(ptr nocapture noundef %c, i64 noundef %val) local_unnamed_addr #1 {
entry:
  %shr = lshr i64 %val, 32
  %conv = trunc nuw i64 %shr to i32
  tail call void @x264_put_be32(ptr noundef %c, i32 noundef %conv)
  %conv1 = trunc i64 %val to i32
  tail call void @x264_put_be32(ptr noundef %c, i32 noundef %conv1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be16(ptr nocapture noundef %c, i16 noundef zeroext %val) local_unnamed_addr #1 {
entry:
  %0 = lshr i16 %val, 8
  %conv1 = trunc nuw i16 %0 to i8
  %d_cur.i.i = getelementptr inbounds i8, ptr %c, i64 8
  %1 = load i32, ptr %d_cur.i.i, align 8
  %add.i.i = add i32 %1, 1
  %d_max.i.i = getelementptr inbounds i8, ptr %c, i64 12
  %2 = load i32, ptr %d_max.i.i, align 4
  %cmp.i.i = icmp ugt i32 %add.i.i, %2
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i

entry.if.end7_crit_edge.i.i:                      ; preds = %entry
  %.pre.i.i = load ptr, ptr %c, align 8
  br label %if.end7.i.i

while.cond.i.i:                                   ; preds = %entry, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %entry ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %3 = load ptr, ptr %c, align 8
  %conv.i.i = zext i32 %dn.0.i.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %3, i64 noundef %conv.i.i) #10
  %tobool.not.not.i.i = icmp eq ptr %call.i.i, null
  %.pre = load i32, ptr %d_cur.i.i, align 8
  br i1 %tobool.not.not.i.i, label %x264_put_byte.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %4 = phi i32 [ %1, %entry.if.end7_crit_edge.i.i ], [ %.pre, %if.end.i.i ]
  %5 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %idx.ext.i.i = zext i32 %4 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %5, i64 %idx.ext.i.i
  store i8 %conv1, ptr %add.ptr.i.i, align 1
  store i32 %add.i.i, ptr %d_cur.i.i, align 8
  br label %x264_put_byte.exit

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
  %6 = phi i32 [ %.pre, %while.end.i.i ], [ %add.i.i, %if.end7.i.i ]
  %conv2 = trunc i16 %val to i8
  %add.i.i6 = add i32 %6, 1
  %7 = load i32, ptr %d_max.i.i, align 4
  %cmp.i.i8 = icmp ugt i32 %add.i.i6, %7
  br i1 %cmp.i.i8, label %while.cond.i.i14, label %entry.if.end7_crit_edge.i.i9

entry.if.end7_crit_edge.i.i9:                     ; preds = %x264_put_byte.exit
  %.pre.i.i10 = load ptr, ptr %c, align 8
  br label %if.end7.i.i11

while.cond.i.i14:                                 ; preds = %x264_put_byte.exit, %while.cond.i.i14
  %dn.0.i.i15 = phi i32 [ %shl.i.i17, %while.cond.i.i14 ], [ 16, %x264_put_byte.exit ]
  %cmp1.i.i16 = icmp ugt i32 %add.i.i6, %dn.0.i.i15
  %shl.i.i17 = shl i32 %dn.0.i.i15, 1
  br i1 %cmp1.i.i16, label %while.cond.i.i14, label %while.end.i.i18

while.end.i.i18:                                  ; preds = %while.cond.i.i14
  %8 = load ptr, ptr %c, align 8
  %conv.i.i19 = zext i32 %dn.0.i.i15 to i64
  %call.i.i20 = tail call ptr @realloc(ptr noundef %8, i64 noundef %conv.i.i19) #10
  %tobool.not.not.i.i21 = icmp eq ptr %call.i.i20, null
  br i1 %tobool.not.not.i.i21, label %x264_put_byte.exit24, label %if.end.i.i22

if.end.i.i22:                                     ; preds = %while.end.i.i18
  store ptr %call.i.i20, ptr %c, align 8
  store i32 %dn.0.i.i15, ptr %d_max.i.i, align 4
  %.pre27.i.i23 = load i32, ptr %d_cur.i.i, align 8
  br label %if.end7.i.i11

if.end7.i.i11:                                    ; preds = %if.end.i.i22, %entry.if.end7_crit_edge.i.i9
  %9 = phi i32 [ %6, %entry.if.end7_crit_edge.i.i9 ], [ %.pre27.i.i23, %if.end.i.i22 ]
  %10 = phi ptr [ %.pre.i.i10, %entry.if.end7_crit_edge.i.i9 ], [ %call.i.i20, %if.end.i.i22 ]
  %idx.ext.i.i12 = zext i32 %9 to i64
  %add.ptr.i.i13 = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i.i12
  store i8 %conv2, ptr %add.ptr.i.i13, align 1
  store i32 %add.i.i6, ptr %d_cur.i.i, align 8
  br label %x264_put_byte.exit24

x264_put_byte.exit24:                             ; preds = %while.end.i.i18, %if.end7.i.i11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be24(ptr nocapture noundef %c, i32 noundef %val) local_unnamed_addr #1 {
entry:
  %shr = lshr i32 %val, 8
  %0 = lshr i32 %val, 16
  %conv1.i = trunc i32 %0 to i8
  %d_cur.i.i.i = getelementptr inbounds i8, ptr %c, i64 8
  %1 = load i32, ptr %d_cur.i.i.i, align 8
  %add.i.i.i = add i32 %1, 1
  %d_max.i.i.i = getelementptr inbounds i8, ptr %c, i64 12
  %2 = load i32, ptr %d_max.i.i.i, align 4
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, %2
  br i1 %cmp.i.i.i, label %while.cond.i.i.i, label %entry.if.end7_crit_edge.i.i.i

entry.if.end7_crit_edge.i.i.i:                    ; preds = %entry
  %.pre.i.i.i = load ptr, ptr %c, align 8
  br label %if.end7.i.i.i

while.cond.i.i.i:                                 ; preds = %entry, %while.cond.i.i.i
  %dn.0.i.i.i = phi i32 [ %shl.i.i.i, %while.cond.i.i.i ], [ 16, %entry ]
  %cmp1.i.i.i = icmp ugt i32 %add.i.i.i, %dn.0.i.i.i
  %shl.i.i.i = shl i32 %dn.0.i.i.i, 1
  br i1 %cmp1.i.i.i, label %while.cond.i.i.i, label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %3 = load ptr, ptr %c, align 8
  %conv.i.i.i = zext i32 %dn.0.i.i.i to i64
  %call.i.i.i = tail call ptr @realloc(ptr noundef %3, i64 noundef %conv.i.i.i) #10
  %tobool.not.not.i.i.i = icmp eq ptr %call.i.i.i, null
  %.pre.i = load i32, ptr %d_cur.i.i.i, align 8
  br i1 %tobool.not.not.i.i.i, label %x264_put_byte.exit.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.end.i.i.i
  store ptr %call.i.i.i, ptr %c, align 8
  store i32 %dn.0.i.i.i, ptr %d_max.i.i.i, align 4
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i, %entry.if.end7_crit_edge.i.i.i
  %4 = phi i32 [ %1, %entry.if.end7_crit_edge.i.i.i ], [ %.pre.i, %if.end.i.i.i ]
  %5 = phi ptr [ %.pre.i.i.i, %entry.if.end7_crit_edge.i.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %idx.ext.i.i.i = zext i32 %4 to i64
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %5, i64 %idx.ext.i.i.i
  store i8 %conv1.i, ptr %add.ptr.i.i.i, align 1
  store i32 %add.i.i.i, ptr %d_cur.i.i.i, align 8
  br label %x264_put_byte.exit.i

x264_put_byte.exit.i:                             ; preds = %if.end7.i.i.i, %while.end.i.i.i
  %6 = phi i32 [ %.pre.i, %while.end.i.i.i ], [ %add.i.i.i, %if.end7.i.i.i ]
  %conv2.i = trunc i32 %shr to i8
  %add.i.i6.i = add i32 %6, 1
  %7 = load i32, ptr %d_max.i.i.i, align 4
  %cmp.i.i8.i = icmp ugt i32 %add.i.i6.i, %7
  br i1 %cmp.i.i8.i, label %while.cond.i.i14.i, label %entry.if.end7_crit_edge.i.i9.i

entry.if.end7_crit_edge.i.i9.i:                   ; preds = %x264_put_byte.exit.i
  %.pre.i.i10.i = load ptr, ptr %c, align 8
  br label %if.end7.i.i11.i

while.cond.i.i14.i:                               ; preds = %x264_put_byte.exit.i, %while.cond.i.i14.i
  %dn.0.i.i15.i = phi i32 [ %shl.i.i17.i, %while.cond.i.i14.i ], [ 16, %x264_put_byte.exit.i ]
  %cmp1.i.i16.i = icmp ugt i32 %add.i.i6.i, %dn.0.i.i15.i
  %shl.i.i17.i = shl i32 %dn.0.i.i15.i, 1
  br i1 %cmp1.i.i16.i, label %while.cond.i.i14.i, label %while.end.i.i18.i

while.end.i.i18.i:                                ; preds = %while.cond.i.i14.i
  %8 = load ptr, ptr %c, align 8
  %conv.i.i19.i = zext i32 %dn.0.i.i15.i to i64
  %call.i.i20.i = tail call ptr @realloc(ptr noundef %8, i64 noundef %conv.i.i19.i) #10
  %tobool.not.not.i.i21.i = icmp eq ptr %call.i.i20.i, null
  %.pre = load i32, ptr %d_cur.i.i.i, align 8
  br i1 %tobool.not.not.i.i21.i, label %x264_put_be16.exit, label %if.end.i.i22.i

if.end.i.i22.i:                                   ; preds = %while.end.i.i18.i
  store ptr %call.i.i20.i, ptr %c, align 8
  store i32 %dn.0.i.i15.i, ptr %d_max.i.i.i, align 4
  br label %if.end7.i.i11.i

if.end7.i.i11.i:                                  ; preds = %if.end.i.i22.i, %entry.if.end7_crit_edge.i.i9.i
  %9 = phi i32 [ %6, %entry.if.end7_crit_edge.i.i9.i ], [ %.pre, %if.end.i.i22.i ]
  %10 = phi ptr [ %.pre.i.i10.i, %entry.if.end7_crit_edge.i.i9.i ], [ %call.i.i20.i, %if.end.i.i22.i ]
  %idx.ext.i.i12.i = zext i32 %9 to i64
  %add.ptr.i.i13.i = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i.i12.i
  store i8 %conv2.i, ptr %add.ptr.i.i13.i, align 1
  store i32 %add.i.i6.i, ptr %d_cur.i.i.i, align 8
  br label %x264_put_be16.exit

x264_put_be16.exit:                               ; preds = %while.end.i.i18.i, %if.end7.i.i11.i
  %11 = phi i32 [ %.pre, %while.end.i.i18.i ], [ %add.i.i6.i, %if.end7.i.i11.i ]
  %conv1 = trunc i32 %val to i8
  %add.i.i = add i32 %11, 1
  %12 = load i32, ptr %d_max.i.i.i, align 4
  %cmp.i.i = icmp ugt i32 %add.i.i, %12
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i

entry.if.end7_crit_edge.i.i:                      ; preds = %x264_put_be16.exit
  %.pre.i.i = load ptr, ptr %c, align 8
  br label %if.end7.i.i

while.cond.i.i:                                   ; preds = %x264_put_be16.exit, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %x264_put_be16.exit ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %13 = load ptr, ptr %c, align 8
  %conv.i.i = zext i32 %dn.0.i.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %13, i64 noundef %conv.i.i) #10
  %tobool.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.not.i.i, label %x264_put_byte.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8
  store i32 %dn.0.i.i, ptr %d_max.i.i.i, align 4
  %.pre27.i.i = load i32, ptr %d_cur.i.i.i, align 8
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %14 = phi i32 [ %11, %entry.if.end7_crit_edge.i.i ], [ %.pre27.i.i, %if.end.i.i ]
  %15 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %idx.ext.i.i = zext i32 %14 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %15, i64 %idx.ext.i.i
  store i8 %conv1, ptr %add.ptr.i.i, align 1
  store i32 %add.i.i, ptr %d_cur.i.i.i, align 8
  br label %x264_put_byte.exit

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_tag(ptr nocapture noundef %c, ptr nocapture noundef readonly %tag) local_unnamed_addr #1 {
entry:
  %0 = load i8, ptr %tag, align 1
  %tobool.not2 = icmp eq i8 %0, 0
  br i1 %tobool.not2, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %d_cur.i.i = getelementptr inbounds i8, ptr %c, i64 8
  %d_max.i.i = getelementptr inbounds i8, ptr %c, i64 12
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %x264_put_byte.exit
  %1 = phi i8 [ %0, %while.body.lr.ph ], [ %7, %x264_put_byte.exit ]
  %tag.addr.03 = phi ptr [ %tag, %while.body.lr.ph ], [ %incdec.ptr, %x264_put_byte.exit ]
  %incdec.ptr = getelementptr inbounds i8, ptr %tag.addr.03, i64 1
  %2 = load i32, ptr %d_cur.i.i, align 8
  %add.i.i = add i32 %2, 1
  %3 = load i32, ptr %d_max.i.i, align 4
  %cmp.i.i = icmp ugt i32 %add.i.i, %3
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i

entry.if.end7_crit_edge.i.i:                      ; preds = %while.body
  %.pre.i.i = load ptr, ptr %c, align 8
  br label %if.end7.i.i

while.cond.i.i:                                   ; preds = %while.body, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %while.body ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %4 = load ptr, ptr %c, align 8
  %conv.i.i = zext i32 %dn.0.i.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %4, i64 noundef %conv.i.i) #10
  %tobool.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.not.i.i, label %x264_put_byte.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4
  %.pre27.i.i = load i32, ptr %d_cur.i.i, align 8
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %5 = phi i32 [ %2, %entry.if.end7_crit_edge.i.i ], [ %.pre27.i.i, %if.end.i.i ]
  %6 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %idx.ext.i.i = zext i32 %5 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %6, i64 %idx.ext.i.i
  store i8 %1, ptr %add.ptr.i.i, align 1
  store i32 %add.i.i, ptr %d_cur.i.i, align 8
  br label %x264_put_byte.exit

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
  %7 = load i8, ptr %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %x264_put_byte.exit, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_amf_string(ptr nocapture noundef %c, ptr nocapture noundef readonly %str) local_unnamed_addr #1 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #11
  %0 = lshr i64 %call, 8
  %conv1.i = trunc i64 %0 to i8
  %d_cur.i.i.i = getelementptr inbounds i8, ptr %c, i64 8
  %1 = load i32, ptr %d_cur.i.i.i, align 8
  %add.i.i.i = add i32 %1, 1
  %d_max.i.i.i = getelementptr inbounds i8, ptr %c, i64 12
  %2 = load i32, ptr %d_max.i.i.i, align 4
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, %2
  br i1 %cmp.i.i.i, label %while.cond.i.i.i, label %entry.if.end7_crit_edge.i.i.i

entry.if.end7_crit_edge.i.i.i:                    ; preds = %entry
  %.pre.i.i.i = load ptr, ptr %c, align 8
  br label %if.end7.i.i.i

while.cond.i.i.i:                                 ; preds = %entry, %while.cond.i.i.i
  %dn.0.i.i.i = phi i32 [ %shl.i.i.i, %while.cond.i.i.i ], [ 16, %entry ]
  %cmp1.i.i.i = icmp ugt i32 %add.i.i.i, %dn.0.i.i.i
  %shl.i.i.i = shl i32 %dn.0.i.i.i, 1
  br i1 %cmp1.i.i.i, label %while.cond.i.i.i, label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %3 = load ptr, ptr %c, align 8
  %conv.i.i.i = zext i32 %dn.0.i.i.i to i64
  %call.i.i.i = tail call ptr @realloc(ptr noundef %3, i64 noundef %conv.i.i.i) #10
  %tobool.not.not.i.i.i = icmp eq ptr %call.i.i.i, null
  %.pre.i = load i32, ptr %d_cur.i.i.i, align 8
  br i1 %tobool.not.not.i.i.i, label %x264_put_byte.exit.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.end.i.i.i
  store ptr %call.i.i.i, ptr %c, align 8
  store i32 %dn.0.i.i.i, ptr %d_max.i.i.i, align 4
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i, %entry.if.end7_crit_edge.i.i.i
  %4 = phi i32 [ %1, %entry.if.end7_crit_edge.i.i.i ], [ %.pre.i, %if.end.i.i.i ]
  %5 = phi ptr [ %.pre.i.i.i, %entry.if.end7_crit_edge.i.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %idx.ext.i.i.i = zext i32 %4 to i64
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %5, i64 %idx.ext.i.i.i
  store i8 %conv1.i, ptr %add.ptr.i.i.i, align 1
  store i32 %add.i.i.i, ptr %d_cur.i.i.i, align 8
  br label %x264_put_byte.exit.i

x264_put_byte.exit.i:                             ; preds = %if.end7.i.i.i, %while.end.i.i.i
  %6 = phi i32 [ %.pre.i, %while.end.i.i.i ], [ %add.i.i.i, %if.end7.i.i.i ]
  %conv2.i = trunc i64 %call to i8
  %add.i.i6.i = add i32 %6, 1
  %7 = load i32, ptr %d_max.i.i.i, align 4
  %cmp.i.i8.i = icmp ugt i32 %add.i.i6.i, %7
  br i1 %cmp.i.i8.i, label %while.cond.i.i14.i, label %entry.if.end7_crit_edge.i.i9.i

entry.if.end7_crit_edge.i.i9.i:                   ; preds = %x264_put_byte.exit.i
  %.pre.i.i10.i = load ptr, ptr %c, align 8
  br label %if.end7.i.i11.i

while.cond.i.i14.i:                               ; preds = %x264_put_byte.exit.i, %while.cond.i.i14.i
  %dn.0.i.i15.i = phi i32 [ %shl.i.i17.i, %while.cond.i.i14.i ], [ 16, %x264_put_byte.exit.i ]
  %cmp1.i.i16.i = icmp ugt i32 %add.i.i6.i, %dn.0.i.i15.i
  %shl.i.i17.i = shl i32 %dn.0.i.i15.i, 1
  br i1 %cmp1.i.i16.i, label %while.cond.i.i14.i, label %while.end.i.i18.i

while.end.i.i18.i:                                ; preds = %while.cond.i.i14.i
  %8 = load ptr, ptr %c, align 8
  %conv.i.i19.i = zext i32 %dn.0.i.i15.i to i64
  %call.i.i20.i = tail call ptr @realloc(ptr noundef %8, i64 noundef %conv.i.i19.i) #10
  %tobool.not.not.i.i21.i = icmp eq ptr %call.i.i20.i, null
  %.pre = load i32, ptr %d_cur.i.i.i, align 8
  br i1 %tobool.not.not.i.i21.i, label %x264_put_be16.exit, label %if.end.i.i22.i

if.end.i.i22.i:                                   ; preds = %while.end.i.i18.i
  store ptr %call.i.i20.i, ptr %c, align 8
  store i32 %dn.0.i.i15.i, ptr %d_max.i.i.i, align 4
  br label %if.end7.i.i11.i

if.end7.i.i11.i:                                  ; preds = %if.end.i.i22.i, %entry.if.end7_crit_edge.i.i9.i
  %9 = phi i32 [ %6, %entry.if.end7_crit_edge.i.i9.i ], [ %.pre, %if.end.i.i22.i ]
  %10 = phi ptr [ %.pre.i.i10.i, %entry.if.end7_crit_edge.i.i9.i ], [ %call.i.i20.i, %if.end.i.i22.i ]
  %idx.ext.i.i12.i = zext i32 %9 to i64
  %add.ptr.i.i13.i = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i.i12.i
  store i8 %conv2.i, ptr %add.ptr.i.i13.i, align 1
  store i32 %add.i.i6.i, ptr %d_cur.i.i.i, align 8
  br label %x264_put_be16.exit

x264_put_be16.exit:                               ; preds = %while.end.i.i18.i, %if.end7.i.i11.i
  %11 = phi i32 [ %.pre, %while.end.i.i18.i ], [ %add.i.i6.i, %if.end7.i.i11.i ]
  %12 = trunc i64 %call to i32
  %conv1 = and i32 %12, 65535
  %add.i = add i32 %11, %conv1
  %13 = load i32, ptr %d_max.i.i.i, align 4
  %cmp.i = icmp ugt i32 %add.i, %13
  br i1 %cmp.i, label %while.cond.i, label %entry.if.end7_crit_edge.i

entry.if.end7_crit_edge.i:                        ; preds = %x264_put_be16.exit
  %.pre.i6 = load ptr, ptr %c, align 8
  br label %if.end7.i

while.cond.i:                                     ; preds = %x264_put_be16.exit, %while.cond.i
  %dn.0.i = phi i32 [ %shl.i, %while.cond.i ], [ 16, %x264_put_be16.exit ]
  %cmp1.i = icmp ugt i32 %add.i, %dn.0.i
  %shl.i = shl i32 %dn.0.i, 1
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %14 = load ptr, ptr %c, align 8
  %conv.i = zext i32 %dn.0.i to i64
  %call.i = tail call ptr @realloc(ptr noundef %14, i64 noundef %conv.i) #10
  %tobool.not.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.not.i, label %flv_append_data.exit, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %c, align 8
  store i32 %dn.0.i, ptr %d_max.i.i.i, align 4
  %.pre27.i = load i32, ptr %d_cur.i.i.i, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %entry.if.end7_crit_edge.i
  %15 = phi i32 [ %11, %entry.if.end7_crit_edge.i ], [ %.pre27.i, %if.end.i ]
  %16 = phi ptr [ %.pre.i6, %entry.if.end7_crit_edge.i ], [ %call.i, %if.end.i ]
  %idx.ext.i = zext i32 %15 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %16, i64 %idx.ext.i
  %conv10.i = and i64 %call, 65535
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr readonly align 1 %str, i64 %conv10.i, i1 false)
  store i32 %add.i, ptr %d_cur.i.i.i, align 8
  br label %flv_append_data.exit

flv_append_data.exit:                             ; preds = %while.end.i, %if.end7.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_amf_double(ptr nocapture noundef %c, double noundef %d) local_unnamed_addr #1 {
entry:
  %d_cur.i.i = getelementptr inbounds i8, ptr %c, i64 8
  %0 = load i32, ptr %d_cur.i.i, align 8
  %add.i.i = add i32 %0, 1
  %d_max.i.i = getelementptr inbounds i8, ptr %c, i64 12
  %1 = load i32, ptr %d_max.i.i, align 4
  %cmp.i.i = icmp ugt i32 %add.i.i, %1
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i

entry.if.end7_crit_edge.i.i:                      ; preds = %entry
  %.pre.i.i = load ptr, ptr %c, align 8
  br label %if.end7.i.i

while.cond.i.i:                                   ; preds = %entry, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %entry ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %2 = load ptr, ptr %c, align 8
  %conv.i.i = zext i32 %dn.0.i.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i.i) #10
  %tobool.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.not.i.i, label %x264_put_byte.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4
  %.pre27.i.i = load i32, ptr %d_cur.i.i, align 8
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge.i.i ], [ %.pre27.i.i, %if.end.i.i ]
  %4 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %idx.ext.i.i = zext i32 %3 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i.i
  store i8 0, ptr %add.ptr.i.i, align 1
  store i32 %add.i.i, ptr %d_cur.i.i, align 8
  br label %x264_put_byte.exit

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
  %5 = bitcast double %d to i64
  %shr.i = lshr i64 %5, 32
  %conv.i = trunc nuw i64 %shr.i to i32
  tail call void @x264_put_be32(ptr noundef nonnull %c, i32 noundef %conv.i)
  %conv1.i = trunc i64 %5 to i32
  tail call void @x264_put_be32(ptr noundef nonnull %c, i32 noundef %conv1.i)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @flv_create_writer(ptr nocapture noundef readonly %filename) local_unnamed_addr #1 {
entry:
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32)
  %tobool.not = icmp eq ptr %calloc, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8, ptr %filename, align 1
  %.not = icmp eq i8 %0, 45
  br i1 %.not, label %if.end.tail, label %if.else

if.end.tail:                                      ; preds = %if.end
  %1 = getelementptr inbounds i8, ptr %filename, i64 1
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end.tail
  %4 = load ptr, ptr @stdout, align 8
  br label %if.end6

if.else:                                          ; preds = %if.end, %if.end.tail
  %call4 = tail call noalias ptr @fopen64(ptr noundef nonnull %filename, ptr noundef nonnull @.str.1)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %call4.sink = phi ptr [ %4, %if.then3 ], [ %call4, %if.else ]
  %5 = getelementptr inbounds i8, ptr %calloc, i64 16
  store ptr %call4.sink, ptr %5, align 8
  %tobool8.not = icmp eq ptr %call4.sink, null
  br i1 %tobool8.not, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end6
  tail call void @free(ptr noundef nonnull %calloc) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry, %if.then9
  %retval.0 = phi ptr [ null, %if.then9 ], [ null, %entry ], [ %calloc, %if.end6 ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @rewrite_amf_be24(ptr nocapture noundef readonly %c, i32 noundef %length, i32 noundef %start) local_unnamed_addr #7 {
entry:
  %shr = lshr i32 %length, 16
  %conv = trunc i32 %shr to i8
  %0 = load ptr, ptr %c, align 8
  %idx.ext = zext i32 %start to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  store i8 %conv, ptr %add.ptr, align 1
  %shr2 = lshr i32 %length, 8
  %conv3 = trunc i32 %shr2 to i8
  %1 = load ptr, ptr %c, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr6, i64 1
  store i8 %conv3, ptr %add.ptr7, align 1
  %conv9 = trunc i32 %length to i8
  %2 = load ptr, ptr %c, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  %add.ptr13 = getelementptr inbounds i8, ptr %add.ptr12, i64 2
  store i8 %conv9, ptr %add.ptr13, align 1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, 1) i32 @flv_flush_data(ptr nocapture noundef %c) local_unnamed_addr #8 {
entry:
  %d_cur = getelementptr inbounds i8, ptr %c, i64 8
  %0 = load i32, ptr %d_cur, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %c, align 8
  %conv = zext i32 %0 to i64
  %fp = getelementptr inbounds i8, ptr %c, i64 16
  %2 = load ptr, ptr %fp, align 8
  %call = tail call i64 @fwrite(ptr noundef %1, i64 noundef %conv, i64 noundef 1, ptr noundef %2)
  %cmp.not = icmp eq i64 %call, 1
  br i1 %cmp.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %d_cur, align 8
  %conv6 = zext i32 %3 to i64
  %d_total = getelementptr inbounds i8, ptr %c, i64 24
  %4 = load i64, ptr %d_total, align 8
  %add = add i64 %4, %conv6
  store i64 %add, ptr %d_total, align 8
  store i32 0, ptr %d_cur, align 8
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 0, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
