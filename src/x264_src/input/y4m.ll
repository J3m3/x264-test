; ModuleID = 'x264_src/input/y4m.c'
source_filename = "x264_src/input/y4m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@y4m_input = dso_local local_unnamed_addr constant %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr @x264_picture_alloc, ptr @read_frame, ptr null, ptr @x264_picture_clean, ptr @close_file }, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"YUV4MPEG2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"YSCSS=\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"y4m [error]: colorspace unhandled\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"y4m [error]: bad header magic (%x <=> %s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"y4m [error]: bad frame header!\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @open_file(ptr nocapture noundef readonly %psz_filename, ptr nocapture noundef writeonly %p_handle, ptr nocapture noundef writeonly %info, ptr nocapture readnone %opt) #0 {
entry:
  %n = alloca i32, align 4
  %d = alloca i32, align 4
  %header = alloca [90 x i8], align 16
  %tokend = alloca ptr, align 8
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #12
  call void @llvm.lifetime.start.p0(i64 90, ptr nonnull %header) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tokend) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %next_frame = getelementptr inbounds i8, ptr %call, i64 16
  store i32 0, ptr %next_frame, align 8
  %vfr = getelementptr inbounds i8, ptr %info, i64 40
  store i32 0, ptr %vfr, align 4
  %0 = load i8, ptr %psz_filename, align 1
  %.not = icmp eq i8 %0, 45
  br i1 %.not, label %sub_1, label %if.else

sub_1:                                            ; preds = %if.end
  %1 = getelementptr inbounds i8, ptr %psz_filename, i64 1
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %if.then3, label %if.else

if.then3:                                         ; preds = %sub_1
  %4 = load ptr, ptr @stdin, align 8
  br label %if.end6

if.else:                                          ; preds = %if.end, %sub_1
  %call4 = tail call noalias ptr @fopen64(ptr noundef nonnull %psz_filename, ptr noundef nonnull @.str.1)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %5 = phi ptr [ %4, %if.then3 ], [ %call4, %if.else ]
  store ptr %5, ptr %call, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %frame_header_len = getelementptr inbounds i8, ptr %call, i64 24
  store i32 6, ptr %frame_header_len, align 8
  br label %for.body

for.body:                                         ; preds = %if.end9, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end9 ], [ %add, %for.inc ]
  %call12 = tail call i32 @fgetc(ptr noundef nonnull %5)
  %conv = trunc i32 %call12 to i8
  %arrayidx = getelementptr inbounds [90 x i8], ptr %header, i64 0, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx, align 1
  %sext.mask = and i32 %call12, 255
  %cmp16 = icmp eq i32 %sext.mask, 10
  %add = add nuw i64 %indvars.iv, 1
  br i1 %cmp16, label %lor.lhs.false, label %for.inc

for.inc:                                          ; preds = %for.body
  %exitcond.not = icmp eq i64 %add, 80
  br i1 %exitcond.not, label %cleanup, label %for.body

lor.lhs.false:                                    ; preds = %for.body
  %idxprom19 = and i64 %add, 4294967295
  %arrayidx20 = getelementptr inbounds [90 x i8], ptr %header, i64 0, i64 %idxprom19
  store i8 32, ptr %arrayidx20, align 1
  %add21 = add nuw i64 %indvars.iv, 2
  %idxprom22 = and i64 %add21, 4294967295
  %arrayidx23 = getelementptr inbounds [90 x i8], ptr %header, i64 0, i64 %idxprom22
  store i8 0, ptr %arrayidx23, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %header, ptr noundef nonnull dereferenceable(9) @.str.2, i64 9)
  %tobool28.not = icmp eq i32 %bcmp, 0
  br i1 %tobool28.not, label %if.end30, label %cleanup

if.end30:                                         ; preds = %lor.lhs.false
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  %add31 = add nuw nsw i32 %6, 1
  %idxprom32 = zext nneg i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %header, i64 %idxprom32
  %seq_header_len = getelementptr inbounds i8, ptr %call, i64 20
  store i32 %add31, ptr %seq_header_len, align 4
  %cmp37189 = icmp ugt i64 %indvars.iv, 9
  br i1 %cmp37189, label %for.body39.lr.ph, label %if.end117

for.body39.lr.ph:                                 ; preds = %if.end30
  %arrayidx35 = getelementptr inbounds i8, ptr %header, i64 10
  %sar_width = getelementptr inbounds i8, ptr %info, i64 20
  %sar_height = getelementptr inbounds i8, ptr %info, i64 24
  %fps_num = getelementptr inbounds i8, ptr %info, i64 4
  %fps_den = getelementptr inbounds i8, ptr %info, i64 8
  %interlaced68 = getelementptr inbounds i8, ptr %info, i64 16
  %tff66 = getelementptr inbounds i8, ptr %info, i64 28
  %height = getelementptr inbounds i8, ptr %info, i64 12
  %height52 = getelementptr inbounds i8, ptr %call, i64 12
  %width = getelementptr inbounds i8, ptr %info, i64 44
  %width48 = getelementptr inbounds i8, ptr %call, i64 8
  br label %for.body39

for.cond.cleanup:                                 ; preds = %for.inc102
  %cmp105 = icmp eq i32 %colorspace.2.fr, 0
  %spec.select = select i1 %cmp105, i32 %alt_colorspace.2, i32 %colorspace.2.fr
  %cmp113.not = icmp ult i32 %spec.select, 2
  br i1 %cmp113.not, label %if.end117, label %if.then115

for.body39:                                       ; preds = %for.body39.lr.ph, %for.inc102
  %tokstart.0192 = phi ptr [ %arrayidx35, %for.body39.lr.ph ], [ %incdec.ptr103, %for.inc102 ]
  %alt_colorspace.0191 = phi i32 [ 0, %for.body39.lr.ph ], [ %alt_colorspace.2, %for.inc102 ]
  %colorspace.0190 = phi i32 [ 0, %for.body39.lr.ph ], [ %colorspace.2.fr, %for.inc102 ]
  %7 = load i8, ptr %tokstart.0192, align 1
  %cmp41 = icmp eq i8 %7, 32
  br i1 %cmp41, label %for.inc102, label %if.end44

if.end44:                                         ; preds = %for.body39
  %incdec.ptr = getelementptr inbounds i8, ptr %tokstart.0192, i64 1
  switch i8 %7, label %for.inc102 [
    i8 87, label %sw.bb
    i8 72, label %sw.bb49
    i8 67, label %sub_0179
    i8 73, label %sw.bb60
    i8 70, label %sw.bb69
    i8 65, label %sw.bb79
    i8 88, label %sw.bb90
  ]

sw.bb:                                            ; preds = %if.end44
  %call46 = call i64 @strtol(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull %tokend, i32 noundef 10) #12
  %conv47 = trunc i64 %call46 to i32
  store i32 %conv47, ptr %width, align 4
  store i32 %conv47, ptr %width48, align 8
  %8 = load ptr, ptr %tokend, align 8
  br label %for.inc102

sw.bb49:                                          ; preds = %if.end44
  %call50 = call i64 @strtol(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull %tokend, i32 noundef 10) #12
  %conv51 = trunc i64 %call50 to i32
  store i32 %conv51, ptr %height, align 4
  store i32 %conv51, ptr %height52, align 4
  %9 = load ptr, ptr %tokend, align 8
  br label %for.inc102

sub_0179:                                         ; preds = %if.end44
  %10 = load i8, ptr %incdec.ptr, align 1
  %11 = zext i8 %10 to i32
  %12 = sub nsw i32 52, %11
  %.not196 = icmp eq i8 %10, 52
  br i1 %.not196, label %sub_1180, label %sw.bb53.tail

sub_1180:                                         ; preds = %sub_0179
  %13 = getelementptr inbounds i8, ptr %tokstart.0192, i64 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = sub nsw i32 50, %15
  %.not197 = icmp eq i8 %14, 50
  br i1 %.not197, label %sub_2, label %sw.bb53.tail

sub_2:                                            ; preds = %sub_1180
  %17 = getelementptr inbounds i8, ptr %tokstart.0192, i64 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 48, %19
  br label %sw.bb53.tail

sw.bb53.tail:                                     ; preds = %sub_0179, %sub_1180, %sub_2
  %21 = phi i32 [ %12, %sub_0179 ], [ %16, %sub_1180 ], [ %20, %sub_2 ]
  %tobool55.not = icmp eq i32 %21, 0
  %. = select i1 %tobool55.not, i32 1, i32 9
  %call59 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %incdec.ptr, i32 noundef 32) #13
  br label %for.inc102

sw.bb60:                                          ; preds = %if.end44
  %incdec.ptr61 = getelementptr inbounds i8, ptr %tokstart.0192, i64 2
  %22 = load i8, ptr %incdec.ptr, align 1
  switch i8 %22, label %for.inc102 [
    i8 116, label %sw.bb63
    i8 98, label %sw.bb64
    i8 109, label %sw.bb67
  ]

sw.bb63:                                          ; preds = %sw.bb60
  store i32 1, ptr %interlaced68, align 4
  store i32 1, ptr %tff66, align 4
  br label %for.inc102

sw.bb64:                                          ; preds = %sw.bb60
  store i32 1, ptr %interlaced68, align 4
  store i32 0, ptr %tff66, align 4
  br label %for.inc102

sw.bb67:                                          ; preds = %sw.bb60
  store i32 1, ptr %interlaced68, align 4
  br label %for.inc102

sw.bb69:                                          ; preds = %if.end44
  %call70 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.4, ptr noundef nonnull %n, ptr noundef nonnull %d) #12
  %cmp71 = icmp eq i32 %call70, 2
  %23 = load i32, ptr %n, align 4
  %tobool73 = icmp ne i32 %23, 0
  %or.cond = select i1 %cmp71, i1 %tobool73, i1 false
  %24 = load i32, ptr %d, align 4
  %tobool75 = icmp ne i32 %24, 0
  %or.cond126 = select i1 %or.cond, i1 %tobool75, i1 false
  br i1 %or.cond126, label %if.then76, label %if.end77

if.then76:                                        ; preds = %sw.bb69
  call void @x264_reduce_fraction(ptr noundef nonnull %n, ptr noundef nonnull %d) #12
  %25 = load i32, ptr %n, align 4
  store i32 %25, ptr %fps_num, align 4
  %26 = load i32, ptr %d, align 4
  store i32 %26, ptr %fps_den, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %sw.bb69
  %call78 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %incdec.ptr, i32 noundef 32) #13
  br label %for.inc102

sw.bb79:                                          ; preds = %if.end44
  %call80 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.4, ptr noundef nonnull %n, ptr noundef nonnull %d) #12
  %cmp81 = icmp eq i32 %call80, 2
  %27 = load i32, ptr %n, align 4
  %tobool84 = icmp ne i32 %27, 0
  %or.cond127 = select i1 %cmp81, i1 %tobool84, i1 false
  %28 = load i32, ptr %d, align 4
  %tobool86 = icmp ne i32 %28, 0
  %or.cond128 = select i1 %or.cond127, i1 %tobool86, i1 false
  br i1 %or.cond128, label %if.then87, label %if.end88

if.then87:                                        ; preds = %sw.bb79
  call void @x264_reduce_fraction(ptr noundef nonnull %n, ptr noundef nonnull %d) #12
  %29 = load i32, ptr %n, align 4
  store i32 %29, ptr %sar_width, align 4
  %30 = load i32, ptr %d, align 4
  store i32 %30, ptr %sar_height, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %sw.bb79
  %call89 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %incdec.ptr, i32 noundef 32) #13
  br label %for.inc102

sw.bb90:                                          ; preds = %if.end44
  %call91 = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.5, ptr noundef nonnull dereferenceable(1) %incdec.ptr, i64 noundef 6) #13
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then93, label %if.end99

if.then93:                                        ; preds = %sw.bb90
  %add.ptr = getelementptr inbounds i8, ptr %tokstart.0192, i64 7
  %31 = load i8, ptr %add.ptr, align 1
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 52, %32
  %.not194 = icmp eq i8 %31, 52
  br i1 %.not194, label %sub_1183, label %if.then93.tail

sub_1183:                                         ; preds = %if.then93
  %34 = getelementptr inbounds i8, ptr %tokstart.0192, i64 8
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = sub nsw i32 50, %36
  %.not195 = icmp eq i8 %35, 50
  br i1 %.not195, label %sub_2184, label %if.then93.tail

sub_2184:                                         ; preds = %sub_1183
  %38 = getelementptr inbounds i8, ptr %tokstart.0192, i64 9
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 48, %40
  br label %if.then93.tail

if.then93.tail:                                   ; preds = %if.then93, %sub_1183, %sub_2184
  %42 = phi i32 [ %33, %if.then93 ], [ %37, %sub_1183 ], [ %41, %sub_2184 ]
  %tobool95.not = icmp eq i32 %42, 0
  %.177 = select i1 %tobool95.not, i32 1, i32 9
  br label %if.end99

if.end99:                                         ; preds = %if.then93.tail, %sw.bb90
  %alt_colorspace.1 = phi i32 [ %alt_colorspace.0191, %sw.bb90 ], [ %.177, %if.then93.tail ]
  %tokstart.1 = phi ptr [ %incdec.ptr, %sw.bb90 ], [ %add.ptr, %if.then93.tail ]
  %call100 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %tokstart.1, i32 noundef 32) #13
  br label %for.inc102

for.inc102:                                       ; preds = %sw.bb, %sw.bb49, %sw.bb53.tail, %if.end77, %if.end88, %if.end99, %if.end44, %sw.bb60, %sw.bb67, %sw.bb64, %sw.bb63, %for.body39
  %colorspace.2 = phi i32 [ %colorspace.0190, %for.body39 ], [ %colorspace.0190, %if.end44 ], [ %colorspace.0190, %if.end99 ], [ %colorspace.0190, %if.end88 ], [ %colorspace.0190, %if.end77 ], [ %colorspace.0190, %sw.bb60 ], [ %colorspace.0190, %sw.bb67 ], [ %colorspace.0190, %sw.bb64 ], [ %colorspace.0190, %sw.bb63 ], [ %., %sw.bb53.tail ], [ %colorspace.0190, %sw.bb49 ], [ %colorspace.0190, %sw.bb ]
  %alt_colorspace.2 = phi i32 [ %alt_colorspace.0191, %for.body39 ], [ %alt_colorspace.0191, %if.end44 ], [ %alt_colorspace.1, %if.end99 ], [ %alt_colorspace.0191, %if.end88 ], [ %alt_colorspace.0191, %if.end77 ], [ %alt_colorspace.0191, %sw.bb60 ], [ %alt_colorspace.0191, %sw.bb67 ], [ %alt_colorspace.0191, %sw.bb64 ], [ %alt_colorspace.0191, %sw.bb63 ], [ %alt_colorspace.0191, %sw.bb53.tail ], [ %alt_colorspace.0191, %sw.bb49 ], [ %alt_colorspace.0191, %sw.bb ]
  %tokstart.2 = phi ptr [ %tokstart.0192, %for.body39 ], [ %incdec.ptr, %if.end44 ], [ %call100, %if.end99 ], [ %call89, %if.end88 ], [ %call78, %if.end77 ], [ %incdec.ptr61, %sw.bb60 ], [ %incdec.ptr61, %sw.bb67 ], [ %incdec.ptr61, %sw.bb64 ], [ %incdec.ptr61, %sw.bb63 ], [ %call59, %sw.bb53.tail ], [ %9, %sw.bb49 ], [ %8, %sw.bb ]
  %colorspace.2.fr = freeze i32 %colorspace.2
  %incdec.ptr103 = getelementptr inbounds i8, ptr %tokstart.2, i64 1
  %cmp37 = icmp ult ptr %incdec.ptr103, %arrayidx33
  br i1 %cmp37, label %for.body39, label %for.cond.cleanup

if.then115:                                       ; preds = %for.cond.cleanup
  %43 = load ptr, ptr @stderr, align 8
  %44 = call i64 @fwrite(ptr nonnull @.str.6, i64 34, i64 1, ptr %43) #14
  br label %cleanup

if.end117:                                        ; preds = %if.end30, %for.cond.cleanup
  store ptr %call, ptr %p_handle, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %lor.lhs.false, %if.end6, %entry, %if.end117, %if.then115
  %retval.0 = phi i32 [ -1, %if.then115 ], [ 0, %if.end117 ], [ -1, %entry ], [ -1, %if.end6 ], [ -1, %lor.lhs.false ], [ -1, %for.inc ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tokend) #12
  call void @llvm.lifetime.end.p0(i64 90, ptr nonnull %header) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %handle) #1 {
entry:
  %0 = load ptr, ptr %handle, align 8
  %call2 = tail call i64 @ftell(ptr noundef %0)
  %1 = load ptr, ptr %handle, align 8
  %call4 = tail call i32 @fseek(ptr noundef %1, i64 noundef 0, i32 noundef 2)
  %2 = load ptr, ptr %handle, align 8
  %call6 = tail call i64 @ftell(ptr noundef %2)
  %3 = load ptr, ptr %handle, align 8
  %call8 = tail call i32 @fseek(ptr noundef %3, i64 noundef %call2, i32 noundef 0)
  %seq_header_len = getelementptr inbounds i8, ptr %handle, i64 20
  %4 = load i32, ptr %seq_header_len, align 4
  %conv = sext i32 %4 to i64
  %sub = sub i64 %call6, %conv
  %width = getelementptr inbounds i8, ptr %handle, i64 8
  %5 = load i32, ptr %width, align 8
  %height = getelementptr inbounds i8, ptr %handle, i64 12
  %6 = load i32, ptr %height, align 4
  %mul = mul i32 %5, 3
  %mul9 = mul i32 %mul, %6
  %div = sdiv i32 %mul9, 2
  %frame_header_len = getelementptr inbounds i8, ptr %handle, i64 24
  %7 = load i32, ptr %frame_header_len, align 8
  %add = add nsw i32 %div, %7
  %conv10 = sext i32 %add to i64
  %div11 = udiv i64 %sub, %conv10
  %conv12 = trunc i64 %div11 to i32
  ret i32 %conv12
}

declare i32 @x264_picture_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nofree nounwind uwtable
define internal range(i32 -1, 1) i32 @read_frame(ptr nocapture noundef readonly %p_pic, ptr nocapture noundef %handle, i32 noundef %i_frame) #1 {
entry:
  %header.i = alloca [16 x i8], align 16
  %next_frame = getelementptr inbounds i8, ptr %handle, i64 16
  %0 = load i32, ptr %next_frame, align 8
  %cmp = icmp slt i32 %0, %i_frame
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle, align 8
  %conv = sext i32 %i_frame to i64
  %width = getelementptr inbounds i8, ptr %handle, i64 8
  %2 = load i32, ptr %width, align 8
  %height = getelementptr inbounds i8, ptr %handle, i64 12
  %3 = load i32, ptr %height, align 4
  %mul = mul i32 %2, 3
  %mul3 = mul i32 %mul, %3
  %div = sdiv i32 %mul3, 2
  %frame_header_len = getelementptr inbounds i8, ptr %handle, i64 24
  %4 = load i32, ptr %frame_header_len, align 8
  %add = add nsw i32 %div, %4
  %conv4 = sext i32 %add to i64
  %mul5 = mul nsw i64 %conv4, %conv
  %seq_header_len = getelementptr inbounds i8, ptr %handle, i64 20
  %5 = load i32, ptr %seq_header_len, align 4
  %conv6 = sext i32 %5 to i64
  %add7 = add nsw i64 %mul5, %conv6
  %call8 = tail call i32 @fseek(ptr noundef %1, i64 noundef %add7, i32 noundef 0)
  br label %if.end17

if.end17:                                         ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %header.i) #12
  %6 = load ptr, ptr %handle, align 8
  %call.i = call i64 @fread(ptr noundef nonnull %header.i, i64 noundef 1, i64 noundef 5, ptr noundef %6)
  %7 = and i64 %call.i, 4294967295
  %cmp.not.i = icmp eq i64 %7, 5
  br i1 %cmp.not.i, label %if.end.i, label %read_frame_internal.exit.thread

if.end.i:                                         ; preds = %if.end17
  %arrayidx.i = getelementptr inbounds i8, ptr %header.i, i64 5
  store i8 0, ptr %arrayidx.i, align 1
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %header.i, ptr noundef nonnull dereferenceable(5) @.str.7, i64 5)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %8 = load ptr, ptr @stderr, align 8
  %9 = load i32, ptr %header.i, align 16
  %call9.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.8, i32 noundef %9, ptr noundef nonnull %header.i) #15
  br label %read_frame_internal.exit.thread

land.rhs.i:                                       ; preds = %if.end.i, %while.body.i
  %i.080.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %if.end.i ]
  %10 = load ptr, ptr %handle, align 8
  %call14.i = tail call i32 @fgetc(ptr noundef %10)
  %cmp15.not.i = icmp eq i32 %call14.i, 10
  br i1 %cmp15.not.i, label %if.end21.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %inc.i = add nuw nsw i32 %i.080.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 80
  br i1 %exitcond.not.i, label %if.then19.i, label %land.rhs.i

if.then19.i:                                      ; preds = %while.body.i
  %11 = load ptr, ptr @stderr, align 8
  %12 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 31, i64 1, ptr %11) #14
  br label %read_frame_internal.exit.thread

if.end21.i:                                       ; preds = %land.rhs.i
  %add22.i = add nuw nsw i32 %i.080.i, 6
  %frame_header_len.i = getelementptr inbounds i8, ptr %handle, i64 24
  store i32 %add22.i, ptr %frame_header_len.i, align 8
  %plane.i = getelementptr inbounds i8, ptr %p_pic, i64 64
  %13 = load ptr, ptr %plane.i, align 8
  %width.i = getelementptr inbounds i8, ptr %handle, i64 8
  %14 = load i32, ptr %width.i, align 8
  %height.i = getelementptr inbounds i8, ptr %handle, i64 12
  %15 = load i32, ptr %height.i, align 4
  %mul.i = mul nsw i32 %15, %14
  %conv24.i = sext i32 %mul.i to i64
  %16 = load ptr, ptr %handle, align 8
  %call26.i = tail call i64 @fread(ptr noundef %13, i64 noundef %conv24.i, i64 noundef 1, ptr noundef %16)
  %cmp27.i = icmp eq i64 %call26.i, 0
  br i1 %cmp27.i, label %read_frame_internal.exit.thread, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end21.i
  %arrayidx31.i = getelementptr inbounds i8, ptr %p_pic, i64 72
  %17 = load ptr, ptr %arrayidx31.i, align 8
  %18 = load i32, ptr %width.i, align 8
  %19 = load i32, ptr %height.i, align 4
  %mul34.i = mul nsw i32 %19, %18
  %div.i = sdiv i32 %mul34.i, 4
  %conv35.i = sext i32 %div.i to i64
  %20 = load ptr, ptr %handle, align 8
  %call37.i = tail call i64 @fread(ptr noundef %17, i64 noundef %conv35.i, i64 noundef 1, ptr noundef %20)
  %cmp38.i = icmp eq i64 %call37.i, 0
  br i1 %cmp38.i, label %read_frame_internal.exit.thread, label %read_frame_internal.exit

read_frame_internal.exit.thread:                  ; preds = %if.then6.i, %if.then19.i, %if.end17, %lor.lhs.false.i, %if.end21.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %header.i) #12
  br label %cleanup

read_frame_internal.exit:                         ; preds = %lor.lhs.false.i
  %arrayidx43.i = getelementptr inbounds i8, ptr %p_pic, i64 80
  %21 = load ptr, ptr %arrayidx43.i, align 8
  %22 = load i32, ptr %width.i, align 8
  %23 = load i32, ptr %height.i, align 4
  %mul46.i = mul nsw i32 %23, %22
  %div47.i = sdiv i32 %mul46.i, 4
  %conv48.i = sext i32 %div47.i to i64
  %24 = load ptr, ptr %handle, align 8
  %call50.i = tail call i64 @fread(ptr noundef %21, i64 noundef %conv48.i, i64 noundef 1, ptr noundef %24)
  %cmp51.i.not = icmp eq i64 %call50.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %header.i) #12
  br i1 %cmp51.i.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %read_frame_internal.exit
  %add22 = add nsw i32 %i_frame, 1
  store i32 %add22, ptr %next_frame, align 8
  br label %cleanup

cleanup:                                          ; preds = %read_frame_internal.exit.thread, %read_frame_internal.exit, %if.end21
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -1, %read_frame_internal.exit ], [ -1, %read_frame_internal.exit.thread ]
  ret i32 %retval.0
}

declare void @x264_picture_clean(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @close_file(ptr noundef %handle) #0 {
entry:
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %handle, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @fclose(ptr noundef nonnull %0)
  tail call void @free(ptr noundef nonnull %handle) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold }
attributes #15 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
