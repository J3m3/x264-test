; ModuleID = 'x264_src/input/timecode.c'
source_filename = "x264_src/input/timecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@timecode_input = dso_local local_unnamed_addr global %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr null, ptr @read_frame, ptr @release_frame, ptr null, ptr @close_file }, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"timecode [error]: malloc failed\0A\00", align 1
@input = external local_unnamed_addr global %struct.cli_input_t, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%lu/%lu\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"timecode [error]: timebase you specified exceeds H.264 maximum\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"timecode [error]: can't open `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"# timecode format v%d\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"timecode [error]: unsupported timecode format\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"assume %lf\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Assume %lf\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"timecode [error]: tcfile parsing error: assumed fps not found\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"timecode [error]: invalid assumed fps %.6f\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"# TDecimate Mode 3:  Last Frame = %d\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d,%d,%lf\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"timecode [error]: invalid input tcfile\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"timecode [error]: invalid input tcfile at line %d: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"timecode [error]: input tcfile doesn't have any timecodes!\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"timecode [error]: invalid input tcfile for frame 0\0A\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"timecode [error]: invalid input tcfile for frame %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"timecode [info]: automatic timebase generation %lu/%lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [117 x i8] c"timecode [error]: automatic timebase generation failed.\0A                  Specify an appropriate timebase manually.\0A\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"timecode [error]: invalid timebase or timecode for frame %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [126 x i8] c"timecode [error]: tcfile fps correction failed.\0A                  Specify an appropriate timebase manually or remake tcfile.\0A\00", align 1
@.str.24 = private unnamed_addr constant [102 x i8] c"timecode [error]: automatic timebase generation failed.\0A                  Specify timebase manually.\0A\00", align 1
@.str.25 = private unnamed_addr constant [118 x i8] c"timecode [info]: input timecode file missing data for frame %d and later\0A                 assuming constant fps %.6f\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @open_file(ptr noundef %psz_filename, ptr nocapture noundef %p_handle, ptr nocapture noundef %info, ptr nocapture noundef readonly %opt) #0 {
entry:
  %buff.i = alloca [256 x i8], align 16
  %tcfv.i = alloca i32, align 4
  %seq_fps.i = alloca double, align 8
  %start.i = alloca i32, align 4
  %end.i = alloca i32, align 4
  %call = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 32, i64 1, ptr %0) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %call, ptr noundef nonnull align 8 dereferenceable(56) @input, i64 56, i1 false)
  %2 = load ptr, ptr %p_handle, align 8
  %p_handle2 = getelementptr inbounds i8, ptr %call, i64 56
  store ptr %2, ptr %p_handle2, align 8
  %3 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 8), align 8
  %call4 = tail call i32 %3(ptr noundef %2) #16
  %frame_total = getelementptr inbounds i8, ptr %call, i64 64
  store i32 %call4, ptr %frame_total, align 8
  %seek = getelementptr inbounds i8, ptr %opt, i64 24
  %4 = load i32, ptr %seek, align 8
  %seek5 = getelementptr inbounds i8, ptr %call, i64 96
  store i32 %4, ptr %seek5, align 8
  %timebase = getelementptr inbounds i8, ptr %opt, i64 16
  %5 = load ptr, ptr %timebase, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end22.thread, label %if.then7

if.end22.thread:                                  ; preds = %if.end
  %auto_timebase_num113 = getelementptr inbounds i8, ptr %call, i64 68
  store i32 1, ptr %auto_timebase_num113, align 4
  %auto_timebase_den116 = getelementptr inbounds i8, ptr %call, i64 72
  store i32 1, ptr %auto_timebase_den116, align 8
  br label %if.then27

if.then7:                                         ; preds = %if.end
  %timebase_num = getelementptr inbounds i8, ptr %call, i64 80
  %timebase_den = getelementptr inbounds i8, ptr %call, i64 88
  %call9 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %timebase_num, ptr noundef nonnull %timebase_den) #16
  %cmp = icmp eq i32 %call9, 1
  br i1 %cmp, label %if.then10, label %if.end14thread-pre-split

if.then10:                                        ; preds = %if.then7
  %6 = load ptr, ptr %timebase, align 8
  %call12 = tail call i64 @strtoul(ptr nocapture noundef %6, ptr noundef null, i32 noundef 10) #16
  store i64 %call12, ptr %timebase_num, align 8
  br label %if.end14

if.end14thread-pre-split:                         ; preds = %if.then7
  %.pr = load i64, ptr %timebase_num, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end14thread-pre-split, %if.then10
  %7 = phi i64 [ %.pr, %if.end14thread-pre-split ], [ %call12, %if.then10 ]
  %cmp16 = icmp ugt i64 %7, 4294967295
  br i1 %cmp16, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %8 = load i64, ptr %timebase_den, align 8
  %cmp18 = icmp ugt i64 %8, 4294967295
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %lor.lhs.false, %if.end14
  %9 = load ptr, ptr @stderr, align 8
  %10 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 63, i64 1, ptr %9) #15
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %tobool23.not = icmp eq i32 %call9, 0
  %lnot.ext = zext i1 %tobool23.not to i32
  %auto_timebase_num = getelementptr inbounds i8, ptr %call, i64 68
  store i32 %lnot.ext, ptr %auto_timebase_num, align 4
  %cmp24 = icmp slt i32 %call9, 2
  %conv = zext i1 %cmp24 to i32
  %auto_timebase_den = getelementptr inbounds i8, ptr %call, i64 72
  store i32 %conv, ptr %auto_timebase_den, align 8
  br i1 %tobool23.not, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end22.thread, %if.end22
  %.pr123 = phi i32 [ 1, %if.end22.thread ], [ %conv, %if.end22 ]
  %auto_timebase_den122 = phi ptr [ %auto_timebase_den116, %if.end22.thread ], [ %auto_timebase_den, %if.end22 ]
  %auto_timebase_num118 = phi ptr [ %auto_timebase_num113, %if.end22.thread ], [ %auto_timebase_num, %if.end22 ]
  %fps_den = getelementptr inbounds i8, ptr %info, i64 8
  %11 = load i32, ptr %fps_den, align 4
  %conv28 = zext i32 %11 to i64
  %timebase_num29 = getelementptr inbounds i8, ptr %call, i64 80
  store i64 %conv28, ptr %timebase_num29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end22
  %12 = phi i32 [ %.pr123, %if.then27 ], [ %conv, %if.end22 ]
  %auto_timebase_den121 = phi ptr [ %auto_timebase_den122, %if.then27 ], [ %auto_timebase_den, %if.end22 ]
  %auto_timebase_num117 = phi ptr [ %auto_timebase_num118, %if.then27 ], [ %auto_timebase_num, %if.end22 ]
  %tobool32.not = icmp eq i32 %12, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end30
  %timebase_den34 = getelementptr inbounds i8, ptr %call, i64 88
  store i64 0, ptr %timebase_den34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30
  %picture_alloc = getelementptr inbounds i8, ptr %call, i64 16
  %13 = load ptr, ptr %picture_alloc, align 8
  store ptr %13, ptr getelementptr inbounds (i8, ptr @timecode_input, i64 16), align 8
  %picture_clean = getelementptr inbounds i8, ptr %call, i64 40
  %14 = load ptr, ptr %picture_clean, align 8
  store ptr %14, ptr getelementptr inbounds (i8, ptr @timecode_input, i64 40), align 8
  store ptr %call, ptr %p_handle, align 8
  %call38 = tail call noalias ptr @fopen64(ptr noundef %psz_filename, ptr noundef nonnull @.str.3)
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end35
  %15 = load ptr, ptr @stderr, align 8
  %call41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef %psz_filename) #17
  br label %cleanup

if.else:                                          ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buff.i) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcfv.i) #16
  %call.i = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call38, ptr noundef nonnull @.str.6, ptr noundef nonnull %tcfv.i) #16
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else
  %16 = load i32, ptr %tcfv.i, align 4
  %17 = add i32 %16, -3
  %or.cond.i = icmp ult i32 %17, -2
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.else
  %18 = load ptr, ptr @stderr, align 8
  %19 = call i64 @fwrite(ptr nonnull @.str.7, i64 46, i64 1, ptr %18) #15
  br label %if.then52

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp4.i = icmp eq i32 %16, 1
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seq_fps.i) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start.i) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end.i) #16
  %20 = load i32, ptr %seek5, align 8
  store i32 %20, ptr %end.i, align 4
  %assume_fps6.i = getelementptr inbounds i8, ptr %call, i64 112
  store double 0.000000e+00, ptr %assume_fps6.i, align 8
  %call71020.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef nonnull %call38)
  %cmp8.not1021.i = icmp eq ptr %call71020.i, null
  br i1 %cmp8.not1021.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %if.then5.i, %for.inc.i
  %num.01022.i = phi i32 [ %inc.i, %for.inc.i ], [ 2, %if.then5.i ]
  %21 = load i8, ptr %buff.i, align 16
  switch i8 %21, label %if.end22.i [
    i8 35, label %for.inc.i
    i8 13, label %for.inc.i
    i8 10, label %for.inc.i
  ]

if.end22.i:                                       ; preds = %for.body.i
  %call25.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.8, ptr noundef nonnull %assume_fps6.i) #16
  %cmp26.not.i = icmp eq i32 %call25.i, 1
  br i1 %cmp26.not.i, label %for.end.i, label %land.lhs.true28.i

land.lhs.true28.i:                                ; preds = %if.end22.i
  %call31.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %assume_fps6.i) #16
  %cmp32.not.i = icmp eq i32 %call31.i, 1
  br i1 %cmp32.not.i, label %for.end.i, label %if.then34.i

if.then34.i:                                      ; preds = %land.lhs.true28.i
  %22 = load ptr, ptr @stderr, align 8
  %23 = call i64 @fwrite(ptr nonnull @.str.10, i64 62, i64 1, ptr %22) #15
  br label %cleanup342.thread.i

for.inc.i:                                        ; preds = %for.body.i, %for.body.i, %for.body.i
  %inc.i = add nuw nsw i32 %num.01022.i, 1
  %call7.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38)
  %cmp8.not.i = icmp eq ptr %call7.i, null
  br i1 %cmp8.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %land.lhs.true28.i, %if.end22.i, %if.then5.i
  %num.0991.i = phi i32 [ %num.01022.i, %if.end22.i ], [ %num.01022.i, %land.lhs.true28.i ], [ 2, %if.then5.i ], [ %inc.i, %for.inc.i ]
  %24 = load double, ptr %assume_fps6.i, align 8
  %cmp38.i = fcmp ugt double %24, 0.000000e+00
  br i1 %cmp38.i, label %if.end43.i, label %if.then40.i

if.then40.i:                                      ; preds = %for.end.i
  %25 = load ptr, ptr @stderr, align 8
  %call42.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.11, double noundef %24) #17
  br label %cleanup342.thread.i

if.end43.i:                                       ; preds = %for.end.i
  %call44.i = call i64 @ftell(ptr noundef %call38)
  %stored_pts_num.i = getelementptr inbounds i8, ptr %call, i64 100
  store i32 0, ptr %stored_pts_num.i, align 4
  %call471024.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38)
  %cmp48.not1025.i = icmp eq ptr %call471024.i, null
  br i1 %cmp48.not1025.i, label %for.end107.i, label %for.body50.i

for.body50.i:                                     ; preds = %if.end43.i, %for.inc105.i
  %num.11029.i = phi i32 [ %inc106.i, %for.inc105.i ], [ %num.0991.i, %if.end43.i ]
  %seq_num.01028.i = phi i32 [ %seq_num.1.i, %for.inc105.i ], [ 0, %if.end43.i ]
  %prev_end.01027.i = phi i32 [ %prev_end.1.i, %for.inc105.i ], [ -1, %if.end43.i ]
  %prev_start.01026.i = phi i32 [ %prev_start.1.i, %for.inc105.i ], [ -1, %if.end43.i ]
  %26 = load i8, ptr %buff.i, align 16
  switch i8 %26, label %if.end74.i [
    i8 35, label %if.then65.i
    i8 13, label %if.then65.i
    i8 10, label %if.then65.i
  ]

if.then65.i:                                      ; preds = %for.body50.i, %for.body50.i, %for.body50.i
  %call67.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %end.i) #16
  %cmp68.i = icmp eq i32 %call67.i, 1
  br i1 %cmp68.i, label %if.then70.i, label %for.inc105.i

if.then70.i:                                      ; preds = %if.then65.i
  %27 = load i32, ptr %end.i, align 4
  %add.i = add nsw i32 %27, 1
  %28 = load i32, ptr %seek5, align 8
  %sub.i = sub i32 %add.i, %28
  store i32 %sub.i, ptr %stored_pts_num.i, align 4
  br label %for.inc105.i

if.end74.i:                                       ; preds = %for.body50.i
  %call76.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, ptr noundef nonnull %seq_fps.i) #16
  switch i32 %call76.i, label %if.then82.i [
    i32 -1, label %if.end84.i
    i32 3, label %if.end84.i
  ]

if.then82.i:                                      ; preds = %if.end74.i
  %29 = load ptr, ptr @stderr, align 8
  %30 = call i64 @fwrite(ptr nonnull @.str.14, i64 39, i64 1, ptr %29) #15
  br label %cleanup342.thread.i

if.end84.i:                                       ; preds = %if.end74.i, %if.end74.i
  %31 = load i32, ptr %start.i, align 4
  %32 = load i32, ptr %end.i, align 4
  %cmp85.i = icmp sle i32 %31, %32
  %cmp88.not.i = icmp sgt i32 %31, %prev_start.01026.i
  %or.cond927.i = select i1 %cmp85.i, i1 %cmp88.not.i, i1 false
  br i1 %or.cond927.i, label %lor.lhs.false90.i, label %if.then96.i

lor.lhs.false90.i:                                ; preds = %if.end84.i
  %cmp91.i = icmp sle i32 %32, %prev_end.01027.i
  %33 = load double, ptr %seq_fps.i, align 8
  %cmp94.i = fcmp ole double %33, 0.000000e+00
  %or.cond691.i = select i1 %cmp91.i, i1 true, i1 %cmp94.i
  br i1 %or.cond691.i, label %if.then96.i, label %if.end99.i

if.then96.i:                                      ; preds = %lor.lhs.false90.i, %if.end84.i
  %34 = load ptr, ptr @stderr, align 8
  %call98.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.15, i32 noundef %num.11029.i, ptr noundef nonnull %buff.i) #17
  br label %cleanup342.thread.i

if.end99.i:                                       ; preds = %lor.lhs.false90.i
  %35 = load i32, ptr %auto_timebase_den121, align 8
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %lor.lhs.false100.i, label %if.then102.i

lor.lhs.false100.i:                               ; preds = %if.end99.i
  %36 = load i32, ptr %auto_timebase_num117, align 4
  %tobool101.not.i = icmp eq i32 %36, 0
  br i1 %tobool101.not.i, label %for.inc105.i, label %if.then102.i

if.then102.i:                                     ; preds = %lor.lhs.false100.i, %if.end99.i
  %inc103.i = add nsw i32 %seq_num.01028.i, 1
  br label %for.inc105.i

for.inc105.i:                                     ; preds = %if.then102.i, %lor.lhs.false100.i, %if.then70.i, %if.then65.i
  %prev_start.1.i = phi i32 [ %prev_start.01026.i, %if.then70.i ], [ %prev_start.01026.i, %if.then65.i ], [ %31, %if.then102.i ], [ %31, %lor.lhs.false100.i ]
  %prev_end.1.i = phi i32 [ %prev_end.01027.i, %if.then70.i ], [ %prev_end.01027.i, %if.then65.i ], [ %32, %if.then102.i ], [ %32, %lor.lhs.false100.i ]
  %seq_num.1.i = phi i32 [ %seq_num.01028.i, %if.then70.i ], [ %seq_num.01028.i, %if.then65.i ], [ %inc103.i, %if.then102.i ], [ %seq_num.01028.i, %lor.lhs.false100.i ]
  %inc106.i = add nuw nsw i32 %num.11029.i, 1
  %call47.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38)
  %cmp48.not.i = icmp eq ptr %call47.i, null
  br i1 %cmp48.not.i, label %for.end107.i, label %for.body50.i

for.end107.i:                                     ; preds = %for.inc105.i, %if.end43.i
  %seq_num.0.lcssa.i = phi i32 [ 0, %if.end43.i ], [ %seq_num.1.i, %for.inc105.i ]
  %37 = load i32, ptr %stored_pts_num.i, align 4
  %tobool109.not.i = icmp eq i32 %37, 0
  %.pre1102.i = load i32, ptr %seek5, align 8
  br i1 %tobool109.not.i, label %if.then110.i, label %if.end115.i

if.then110.i:                                     ; preds = %for.end107.i
  %38 = load i32, ptr %end.i, align 4
  %reass.sub = sub i32 %38, %.pre1102.i
  %sub113.i = add i32 %reass.sub, 1
  store i32 %sub113.i, ptr %stored_pts_num.i, align 4
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then110.i, %for.end107.i
  %39 = phi i32 [ %sub113.i, %if.then110.i ], [ %37, %for.end107.i ]
  %add118.i = add nsw i32 %39, %.pre1102.i
  %call119.i = call i32 @fseek(ptr noundef %call38, i64 noundef %call44.i, i32 noundef 0)
  %conv120.i = sext i32 %add118.i to i64
  %mul.i = shl nsw i64 %conv120.i, 3
  %call121.i = call noalias ptr @malloc(i64 noundef %mul.i) #14
  %tobool122.not.i = icmp eq ptr %call121.i, null
  br i1 %tobool122.not.i, label %cleanup342.thread.i, label %if.end124.i

if.end124.i:                                      ; preds = %if.end115.i
  %40 = load i32, ptr %auto_timebase_den121, align 8
  %tobool126.not.i = icmp eq i32 %40, 0
  br i1 %tobool126.not.i, label %lor.lhs.false127.i, label %if.then130.i

lor.lhs.false127.i:                               ; preds = %if.end124.i
  %41 = load i32, ptr %auto_timebase_num117, align 4
  %tobool129.not.i = icmp eq i32 %41, 0
  br i1 %tobool129.not.i, label %if.end138.i, label %if.then130.i

if.then130.i:                                     ; preds = %lor.lhs.false127.i, %if.end124.i
  %add131.i = add nsw i32 %seq_num.0.lcssa.i, 1
  %conv132.i = sext i32 %add131.i to i64
  %mul133.i = shl nsw i64 %conv132.i, 3
  %call134.i = call noalias ptr @malloc(i64 noundef %mul133.i) #14
  %tobool135.not.i = icmp eq ptr %call134.i, null
  br i1 %tobool135.not.i, label %cleanup342.thread949.i, label %if.end138.i

if.end138.i:                                      ; preds = %if.then130.i, %lor.lhs.false127.i
  %fpss.0.i = phi ptr [ %call134.i, %if.then130.i ], [ null, %lor.lhs.false127.i ]
  %42 = load double, ptr %assume_fps6.i, align 8
  %call140.i = call fastcc double @correct_fps(double noundef %42, ptr noundef nonnull %call)
  %cmp141.i = fcmp olt double %call140.i, 0.000000e+00
  br i1 %cmp141.i, label %cleanup342.thread949.i, label %if.end144.i

if.end144.i:                                      ; preds = %if.end138.i
  store double 0.000000e+00, ptr %call121.i, align 8
  %sub147.i = add nsw i32 %add118.i, -1
  %cmp1481049.i = icmp sgt i32 %add118.i, 1
  br i1 %cmp1481049.i, label %for.body150.lr.ph.lr.ph.i, label %for.end230.i

for.body150.lr.ph.lr.ph.i:                        ; preds = %if.end144.i
  %div.i = fdiv double 1.000000e+00, %call140.i
  %43 = zext nneg i32 %sub147.i to i64
  br label %for.body150.us.preheader.i

for.body150.us.preheader.i:                       ; preds = %if.end229.i, %for.body150.lr.ph.lr.ph.i
  %num.2.ph1051.i = phi i32 [ 0, %for.body150.lr.ph.lr.ph.i ], [ %num.5.i, %if.end229.i ]
  %seq_num.2.ph1050.i = phi i32 [ 0, %for.body150.lr.ph.lr.ph.i ], [ %seq_num.4.i, %if.end229.i ]
  br label %for.body150.us.i

for.body150.us.i:                                 ; preds = %for.body150.us.i.backedge, %for.body150.us.preheader.i
  %call152.us.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38)
  %44 = load i8, ptr %buff.i, align 16
  switch i8 %44, label %if.end168.i [
    i8 35, label %for.body150.us.i.backedge
    i8 13, label %for.body150.us.i.backedge
    i8 10, label %for.body150.us.i.backedge
  ]

for.body150.us.i.backedge:                        ; preds = %for.body150.us.i, %for.body150.us.i, %for.body150.us.i
  br label %for.body150.us.i

if.end168.i:                                      ; preds = %for.body150.us.i
  %call170.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, ptr noundef nonnull %seq_fps.i) #16
  %cmp171.not.i = icmp eq i32 %call170.i, 3
  br i1 %cmp171.not.i, label %if.end168.if.end175_crit_edge.i, label %if.then173.i

if.end168.if.end175_crit_edge.i:                  ; preds = %if.end168.i
  %.pre1103.i = load i32, ptr %start.i, align 4
  br label %if.end175.i

if.then173.i:                                     ; preds = %if.end168.i
  store i32 %sub147.i, ptr %end.i, align 4
  store i32 %sub147.i, ptr %start.i, align 4
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.then173.i, %if.end168.if.end175_crit_edge.i
  %45 = phi i32 [ %.pre1103.i, %if.end168.if.end175_crit_edge.i ], [ %sub147.i, %if.then173.i ]
  %cmp1771040.i = icmp slt i32 %num.2.ph1051.i, %45
  %cmp1801041.i = icmp slt i32 %num.2.ph1051.i, %sub147.i
  %46 = and i1 %cmp1801041.i, %cmp1771040.i
  br i1 %46, label %for.body182.preheader.i, label %for.end190.i

for.body182.preheader.i:                          ; preds = %if.end175.i
  %47 = sext i32 %num.2.ph1051.i to i64
  %48 = sext i32 %45 to i64
  %arrayidx183.phi.trans.insert.i = getelementptr inbounds double, ptr %call121.i, i64 %47
  %.pre1104.i = load double, ptr %arrayidx183.phi.trans.insert.i, align 8
  br label %for.body182.i

for.body182.i:                                    ; preds = %for.body182.i, %for.body182.preheader.i
  %49 = phi double [ %.pre1104.i, %for.body182.preheader.i ], [ %add184.i, %for.body182.i ]
  %indvars.iv1084.i = phi i64 [ %47, %for.body182.preheader.i ], [ %indvars.iv.next1085.i, %for.body182.i ]
  %add184.i = fadd double %div.i, %49
  %indvars.iv.next1085.i = add nsw i64 %indvars.iv1084.i, 1
  %arrayidx187.i = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1085.i
  store double %add184.i, ptr %arrayidx187.i, align 8
  %cmp177.i = icmp slt i64 %indvars.iv.next1085.i, %48
  %cmp180.i = icmp slt i64 %indvars.iv.next1085.i, %43
  %50 = and i1 %cmp180.i, %cmp177.i
  br i1 %50, label %for.body182.i, label %for.end190.loopexit.i

for.end190.loopexit.i:                            ; preds = %for.body182.i
  %51 = trunc nsw i64 %indvars.iv.next1085.i to i32
  br i1 %cmp180.i, label %if.then194.i, label %if.end229.i

for.end190.i:                                     ; preds = %if.end175.i
  br i1 %cmp1801041.i, label %if.then194.i, label %if.end229.i

if.then194.i:                                     ; preds = %for.end190.i, %for.end190.loopexit.i
  %52 = load i32, ptr %auto_timebase_den121, align 8
  %tobool196.not.i = icmp eq i32 %52, 0
  br i1 %tobool196.not.i, label %lor.lhs.false197.i, label %if.then200.i

lor.lhs.false197.i:                               ; preds = %if.then194.i
  %53 = load i32, ptr %auto_timebase_num117, align 4
  %tobool199.not.i = icmp eq i32 %53, 0
  br i1 %tobool199.not.i, label %lor.lhs.false197.if.end204_crit_edge.i, label %if.then200.i

lor.lhs.false197.if.end204_crit_edge.i:           ; preds = %lor.lhs.false197.i
  %.pre1105.i = load double, ptr %seq_fps.i, align 8
  br label %if.end204.i

if.then200.i:                                     ; preds = %lor.lhs.false197.i, %if.then194.i
  %54 = load double, ptr %seq_fps.i, align 8
  %inc201.i = add nsw i32 %seq_num.2.ph1050.i, 1
  %idxprom202.i = sext i32 %seq_num.2.ph1050.i to i64
  %arrayidx203.i = getelementptr inbounds double, ptr %fpss.0.i, i64 %idxprom202.i
  store double %54, ptr %arrayidx203.i, align 8
  br label %if.end204.i

if.end204.i:                                      ; preds = %if.then200.i, %lor.lhs.false197.if.end204_crit_edge.i
  %55 = phi double [ %54, %if.then200.i ], [ %.pre1105.i, %lor.lhs.false197.if.end204_crit_edge.i ]
  %seq_num.3.i = phi i32 [ %inc201.i, %if.then200.i ], [ %seq_num.2.ph1050.i, %lor.lhs.false197.if.end204_crit_edge.i ]
  %call205.i = call fastcc double @correct_fps(double noundef %55, ptr noundef nonnull %call)
  store double %call205.i, ptr %seq_fps.i, align 8
  %cmp206.i = fcmp olt double %call205.i, 0.000000e+00
  br i1 %cmp206.i, label %cleanup342.thread949.i, label %if.end209.i

if.end209.i:                                      ; preds = %if.end204.i
  %56 = load i32, ptr %start.i, align 4
  %57 = load i32, ptr %end.i, align 4
  %cmp2111045.i = icmp sle i32 %56, %57
  %cmp2151046.i = icmp slt i32 %56, %sub147.i
  %58 = and i1 %cmp2151046.i, %cmp2111045.i
  br i1 %58, label %for.body218.lr.ph.i, label %if.end229.i

for.body218.lr.ph.i:                              ; preds = %if.end209.i
  %div221.i = fdiv double 1.000000e+00, %call205.i
  %59 = sext i32 %56 to i64
  %60 = sext i32 %57 to i64
  %arrayidx220.phi.trans.insert.i = getelementptr inbounds double, ptr %call121.i, i64 %59
  %.pre1106.i = load double, ptr %arrayidx220.phi.trans.insert.i, align 8
  br label %for.body218.i

for.body218.i:                                    ; preds = %for.body218.i, %for.body218.lr.ph.i
  %61 = phi double [ %.pre1106.i, %for.body218.lr.ph.i ], [ %add222.i, %for.body218.i ]
  %indvars.iv1087.i = phi i64 [ %59, %for.body218.lr.ph.i ], [ %indvars.iv.next1088.i, %for.body218.i ]
  %add222.i = fadd double %div221.i, %61
  %indvars.iv.next1088.i = add nsw i64 %indvars.iv1087.i, 1
  %arrayidx225.i = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1088.i
  store double %add222.i, ptr %arrayidx225.i, align 8
  %cmp211.i = icmp slt i64 %indvars.iv1087.i, %60
  %cmp215.i = icmp slt i64 %indvars.iv.next1088.i, %43
  %62 = and i1 %cmp211.i, %cmp215.i
  br i1 %62, label %for.body218.i, label %if.end229.loopexit.i

if.end229.loopexit.i:                             ; preds = %for.body218.i
  %63 = trunc nsw i64 %indvars.iv.next1088.i to i32
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.end229.loopexit.i, %if.end209.i, %for.end190.i, %for.end190.loopexit.i
  %seq_num.4.i = phi i32 [ %seq_num.2.ph1050.i, %for.end190.i ], [ %seq_num.3.i, %if.end209.i ], [ %seq_num.3.i, %if.end229.loopexit.i ], [ %seq_num.2.ph1050.i, %for.end190.loopexit.i ]
  %num.5.i = phi i32 [ %num.2.ph1051.i, %for.end190.i ], [ %56, %if.end209.i ], [ %63, %if.end229.loopexit.i ], [ %51, %for.end190.loopexit.i ]
  %cmp148.i = icmp slt i32 %num.5.i, %sub147.i
  br i1 %cmp148.i, label %for.body150.us.preheader.i, label %for.end230.i

for.end230.i:                                     ; preds = %if.end229.i, %if.end144.i
  %seq_num.2.ph.lcssa985.i = phi i32 [ 0, %if.end144.i ], [ %seq_num.4.i, %if.end229.i ]
  %64 = load i32, ptr %auto_timebase_den121, align 8
  %tobool232.not.i = icmp eq i32 %64, 0
  br i1 %tobool232.not.i, label %lor.lhs.false233.i, label %if.then336.i

lor.lhs.false233.i:                               ; preds = %for.end230.i
  %65 = load i32, ptr %auto_timebase_num117, align 4
  %tobool235.not.i = icmp eq i32 %65, 0
  br i1 %tobool235.not.i, label %if.end334.i, label %if.then246.i

if.then246.i:                                     ; preds = %lor.lhs.false233.i
  %66 = load double, ptr %assume_fps6.i, align 8
  %idxprom238.i = sext i32 %seq_num.2.ph.lcssa985.i to i64
  %arrayidx239.i = getelementptr inbounds double, ptr %fpss.0.i, i64 %idxprom238.i
  store double %66, ptr %arrayidx239.i, align 8
  %add247.i = add nsw i32 %seq_num.2.ph.lcssa985.i, 1
  %call248.i = call fastcc i32 @try_mkv_timebase_den(ptr noundef %fpss.0.i, ptr noundef nonnull %call, i32 noundef %add247.i)
  %cmp249.i = icmp sgt i32 %call248.i, -1
  br i1 %cmp249.i, label %if.end252.i, label %cleanup342.thread949.i

if.end252.i:                                      ; preds = %if.then246.i
  %call253.i = call i32 @fseek(ptr noundef %call38, i64 noundef %call44.i, i32 noundef 0)
  %67 = load double, ptr %assume_fps6.i, align 8
  %call.i.i = call double @log10(double noundef %67) #16
  %68 = call double @llvm.floor.f64(double %call.i.i)
  %call1.i.i = call double @pow(double noundef 1.000000e+01, double noundef %68) #16
  %div.i.i = fdiv double %67, %call1.i.i
  %div256.i = fdiv double 1.000000e+09, %div.i.i
  %69 = call double @llvm.round.f64(double %div256.i)
  %div257.i = fdiv double %69, %call1.i.i
  %div258.i = fdiv double 1.000000e+09, %div257.i
  br i1 %cmp1481049.i, label %for.body263.lr.ph.lr.ph.i, label %if.then336.i

for.body263.lr.ph.lr.ph.i:                        ; preds = %if.end252.i
  %div304.i = fdiv double 1.000000e+00, %div258.i
  %70 = zext nneg i32 %sub147.i to i64
  %invariant.gep = getelementptr i8, ptr %call121.i, i64 8
  %invariant.gep180 = getelementptr i8, ptr %call121.i, i64 16
  %invariant.gep182 = getelementptr i8, ptr %call121.i, i64 24
  br label %for.body263.us.preheader.i

for.cond259.loopexit.loopexit.i:                  ; preds = %for.body320.i
  %71 = trunc nsw i64 %indvars.iv.next1096.i to i32
  br label %for.cond259.loopexit.i

for.cond259.loopexit.i:                           ; preds = %for.cond312.preheader.i, %for.cond259.loopexit.loopexit.i
  %num.8.lcssa.i = phi i32 [ %76, %for.cond312.preheader.i ], [ %71, %for.cond259.loopexit.loopexit.i ]
  %cmp261.i = icmp slt i32 %num.8.lcssa.i, %sub147.i
  br i1 %cmp261.i, label %for.body263.us.preheader.i, label %if.end334.i

for.body263.us.preheader.i:                       ; preds = %for.cond259.loopexit.i, %for.body263.lr.ph.lr.ph.i
  %num.6.ph1062.i = phi i32 [ 0, %for.body263.lr.ph.lr.ph.i ], [ %num.8.lcssa.i, %for.cond259.loopexit.i ]
  br label %for.body263.us.i

for.body263.us.i:                                 ; preds = %for.body263.us.i.backedge, %for.body263.us.preheader.i
  %call265.us.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38)
  %72 = load i8, ptr %buff.i, align 16
  switch i8 %72, label %if.end281.i [
    i8 35, label %for.body263.us.i.backedge
    i8 13, label %for.body263.us.i.backedge
    i8 10, label %for.body263.us.i.backedge
  ]

for.body263.us.i.backedge:                        ; preds = %for.body263.us.i, %for.body263.us.i, %for.body263.us.i
  br label %for.body263.us.i

if.end281.i:                                      ; preds = %for.body263.us.i
  %call283.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, ptr noundef nonnull %seq_fps.i) #16
  %cmp284.not.i = icmp eq i32 %call283.i, 3
  br i1 %cmp284.not.i, label %if.end288.i, label %if.then286.i

if.then286.i:                                     ; preds = %if.end281.i
  store i32 %sub147.i, ptr %end.i, align 4
  store i32 %sub147.i, ptr %start.i, align 4
  br label %if.end288.i

if.end288.i:                                      ; preds = %if.then286.i, %if.end281.i
  %73 = load double, ptr %seq_fps.i, align 8
  %call.i929.i = call double @log10(double noundef %73) #16
  %74 = call double @llvm.floor.f64(double %call.i929.i)
  %call1.i930.i = call double @pow(double noundef 1.000000e+01, double noundef %74) #16
  %div.i931.i = fdiv double %73, %call1.i930.i
  %div290.i = fdiv double 1.000000e+09, %div.i931.i
  %75 = call double @llvm.round.f64(double %div290.i)
  %div291.i = fdiv double %75, %call1.i930.i
  %div292.i = fdiv double 1.000000e+09, %div291.i
  store double %div292.i, ptr %seq_fps.i, align 8
  %76 = load i32, ptr %start.i, align 4
  %invariant.smin.i = call i32 @llvm.smin.i32(i32 %sub147.i, i32 %76)
  %77 = icmp slt i32 %num.6.ph1062.i, %invariant.smin.i
  br i1 %77, label %for.body301.preheader.i, label %for.cond312.preheader.i

for.body301.preheader.i:                          ; preds = %if.end288.i
  %78 = sext i32 %num.6.ph1062.i to i64
  %wide.trip.count1093.i = sext i32 %invariant.smin.i to i64
  %arrayidx303.phi.trans.insert.i = getelementptr inbounds double, ptr %call121.i, i64 %78
  %.pre1107.i = load double, ptr %arrayidx303.phi.trans.insert.i, align 8
  %79 = sub nsw i64 %wide.trip.count1093.i, %78
  %xtraiter = and i64 %79, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body301.i.prol.loopexit, label %for.body301.i.prol

for.body301.i.prol:                               ; preds = %for.body301.preheader.i, %for.body301.i.prol
  %80 = phi double [ %add305.i.prol, %for.body301.i.prol ], [ %.pre1107.i, %for.body301.preheader.i ]
  %indvars.iv1090.i.prol = phi i64 [ %indvars.iv.next1091.i.prol, %for.body301.i.prol ], [ %78, %for.body301.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body301.i.prol ], [ 0, %for.body301.preheader.i ]
  %add305.i.prol = fadd double %div304.i, %80
  %indvars.iv.next1091.i.prol = add nsw i64 %indvars.iv1090.i.prol, 1
  %arrayidx308.i.prol = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1091.i.prol
  store double %add305.i.prol, ptr %arrayidx308.i.prol, align 8
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body301.i.prol.loopexit, label %for.body301.i.prol, !llvm.loop !5

for.body301.i.prol.loopexit:                      ; preds = %for.body301.i.prol, %for.body301.preheader.i
  %.unr = phi double [ %.pre1107.i, %for.body301.preheader.i ], [ %add305.i.prol, %for.body301.i.prol ]
  %indvars.iv1090.i.unr = phi i64 [ %78, %for.body301.preheader.i ], [ %indvars.iv.next1091.i.prol, %for.body301.i.prol ]
  %81 = sub nsw i64 %78, %wide.trip.count1093.i
  %82 = icmp ugt i64 %81, -4
  br i1 %82, label %for.cond312.preheader.i, label %for.body301.i

for.cond312.preheader.i:                          ; preds = %for.body301.i.prol.loopexit, %for.body301.i, %if.end288.i
  %83 = load i32, ptr %end.i, align 4
  %cmp3131057.i = icmp sle i32 %76, %83
  %cmp3171058.i = icmp slt i32 %76, %sub147.i
  %84 = and i1 %cmp3171058.i, %cmp3131057.i
  br i1 %84, label %for.body320.lr.ph.i, label %for.cond259.loopexit.i

for.body320.lr.ph.i:                              ; preds = %for.cond312.preheader.i
  %div323.i = fdiv double 1.000000e+00, %div292.i
  %85 = sext i32 %76 to i64
  %86 = sext i32 %83 to i64
  %arrayidx322.phi.trans.insert.i = getelementptr inbounds double, ptr %call121.i, i64 %85
  %.pre1108.i = load double, ptr %arrayidx322.phi.trans.insert.i, align 8
  br label %for.body320.i

for.body301.i:                                    ; preds = %for.body301.i.prol.loopexit, %for.body301.i
  %87 = phi double [ %add305.i.3, %for.body301.i ], [ %.unr, %for.body301.i.prol.loopexit ]
  %indvars.iv1090.i = phi i64 [ %indvars.iv.next1091.i.3, %for.body301.i ], [ %indvars.iv1090.i.unr, %for.body301.i.prol.loopexit ]
  %add305.i = fadd double %div304.i, %87
  %gep = getelementptr double, ptr %invariant.gep, i64 %indvars.iv1090.i
  store double %add305.i, ptr %gep, align 8
  %add305.i.1 = fadd double %div304.i, %add305.i
  %gep181 = getelementptr double, ptr %invariant.gep180, i64 %indvars.iv1090.i
  store double %add305.i.1, ptr %gep181, align 8
  %add305.i.2 = fadd double %div304.i, %add305.i.1
  %gep183 = getelementptr double, ptr %invariant.gep182, i64 %indvars.iv1090.i
  store double %add305.i.2, ptr %gep183, align 8
  %add305.i.3 = fadd double %div304.i, %add305.i.2
  %indvars.iv.next1091.i.3 = add nsw i64 %indvars.iv1090.i, 4
  %arrayidx308.i.3 = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1091.i.3
  store double %add305.i.3, ptr %arrayidx308.i.3, align 8
  %exitcond1094.not.i.3 = icmp eq i64 %indvars.iv.next1091.i.3, %wide.trip.count1093.i
  br i1 %exitcond1094.not.i.3, label %for.cond312.preheader.i, label %for.body301.i

for.body320.i:                                    ; preds = %for.body320.i, %for.body320.lr.ph.i
  %88 = phi double [ %.pre1108.i, %for.body320.lr.ph.i ], [ %add324.i, %for.body320.i ]
  %indvars.iv1095.i = phi i64 [ %85, %for.body320.lr.ph.i ], [ %indvars.iv.next1096.i, %for.body320.i ]
  %add324.i = fadd double %div323.i, %88
  %indvars.iv.next1096.i = add nsw i64 %indvars.iv1095.i, 1
  %arrayidx327.i = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1096.i
  store double %add324.i, ptr %arrayidx327.i, align 8
  %cmp313.i = icmp slt i64 %indvars.iv1095.i, %86
  %cmp317.i = icmp slt i64 %indvars.iv.next1096.i, %70
  %89 = and i1 %cmp313.i, %cmp317.i
  br i1 %89, label %for.body320.i, label %for.cond259.loopexit.loopexit.i

if.end334.i:                                      ; preds = %for.cond259.loopexit.i, %lor.lhs.false233.i
  %assume_fps.1.i = phi double [ %call140.i, %lor.lhs.false233.i ], [ %div258.i, %for.cond259.loopexit.i ]
  %tobool335.not.i = icmp eq ptr %fpss.0.i, null
  br i1 %tobool335.not.i, label %if.end337.i, label %if.then336.i

if.then336.i:                                     ; preds = %if.end334.i, %if.end252.i, %for.end230.i
  %assume_fps.1943.i = phi double [ %assume_fps.1.i, %if.end334.i ], [ %div258.i, %if.end252.i ], [ %call140.i, %for.end230.i ]
  call void @free(ptr noundef nonnull %fpss.0.i) #16
  br label %if.end337.i

if.end337.i:                                      ; preds = %if.then336.i, %if.end334.i
  %assume_fps.1944.i = phi double [ %assume_fps.1943.i, %if.then336.i ], [ %assume_fps.1.i, %if.end334.i ]
  store double %assume_fps.1944.i, ptr %assume_fps6.i, align 8
  %idxprom340.i = sext i32 %sub147.i to i64
  %arrayidx341.i = getelementptr inbounds double, ptr %call121.i, i64 %idxprom340.i
  %90 = load double, ptr %arrayidx341.i, align 8
  %last_timecode.i = getelementptr inbounds i8, ptr %call, i64 120
  store double %90, ptr %last_timecode.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq_fps.i) #16
  br label %if.end583.i

cleanup342.thread.i:                              ; preds = %if.end115.i, %if.then96.i, %if.then82.i, %if.then40.i, %if.then34.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq_fps.i) #16
  br label %if.then52

cleanup342.thread949.i:                           ; preds = %if.end204.i, %if.then246.i, %if.end138.i, %if.then130.i
  %fpss.1.ph.i = phi ptr [ %fpss.0.i, %if.end138.i ], [ null, %if.then130.i ], [ %fpss.0.i, %if.then246.i ], [ %fpss.0.i, %if.end204.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq_fps.i) #16
  br label %if.then671.i

if.else.i:                                        ; preds = %if.end.i
  %call352.i = call i64 @ftell(ptr noundef nonnull %call38)
  %stored_pts_num353.i = getelementptr inbounds i8, ptr %call, i64 100
  store i32 0, ptr %stored_pts_num353.i, align 4
  %call3559971001.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef nonnull %call38)
  %cmp356.not9981002.i = icmp eq ptr %call3559971001.i, null
  br i1 %cmp356.not9981002.i, label %while.end.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.else.i, %if.end376.i
  %num.9.ph1004.i = phi i32 [ %num.9999.i, %if.end376.i ], [ 0, %if.else.i ]
  %file_pos351.0.ph1003.i = phi i64 [ %file_pos351.1.i, %if.end376.i ], [ %call352.i, %if.else.i ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end384.i, %while.body.lr.ph.i
  %num.9999.i = phi i32 [ %num.9.ph1004.i, %while.body.lr.ph.i ], [ %inc385.i, %if.end384.i ]
  %91 = load i8, ptr %buff.i, align 16
  switch i8 %91, label %if.end377.i [
    i8 35, label %if.then372.i
    i8 13, label %if.then372.i
    i8 10, label %if.then372.i
  ]

if.then372.i:                                     ; preds = %while.body.i, %while.body.i, %while.body.i
  %tobool373.not.i = icmp eq i32 %num.9999.i, 0
  br i1 %tobool373.not.i, label %if.then374.i, label %if.end376.i

if.then374.i:                                     ; preds = %if.then372.i
  %call375.i = call i64 @ftell(ptr noundef %call38)
  br label %if.end376.i

if.end376.i:                                      ; preds = %if.then374.i, %if.then372.i
  %file_pos351.1.i = phi i64 [ %file_pos351.0.ph1003.i, %if.then372.i ], [ %call375.i, %if.then374.i ]
  %call355997.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38)
  %cmp356.not998.i = icmp eq ptr %call355997.i, null
  br i1 %cmp356.not998.i, label %while.end.i, label %while.body.lr.ph.i

if.end377.i:                                      ; preds = %while.body.i
  %92 = load i32, ptr %seek5, align 8
  %cmp379.not.i = icmp slt i32 %num.9999.i, %92
  br i1 %cmp379.not.i, label %if.end384.i, label %if.then381.i

if.then381.i:                                     ; preds = %if.end377.i
  %93 = load i32, ptr %stored_pts_num353.i, align 4
  %inc383.i = add nsw i32 %93, 1
  store i32 %inc383.i, ptr %stored_pts_num353.i, align 4
  br label %if.end384.i

if.end384.i:                                      ; preds = %if.then381.i, %if.end377.i
  %inc385.i = add nsw i32 %num.9999.i, 1
  %call355.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38)
  %cmp356.not.i = icmp eq ptr %call355.i, null
  br i1 %cmp356.not.i, label %while.end.i, label %while.body.i

while.end.i:                                      ; preds = %if.end376.i, %if.end384.i, %if.else.i
  %file_pos351.0.ph.lcssa.i = phi i64 [ %call352.i, %if.else.i ], [ %file_pos351.0.ph1003.i, %if.end384.i ], [ %file_pos351.1.i, %if.end376.i ]
  %94 = load i32, ptr %stored_pts_num353.i, align 4
  %95 = load i32, ptr %seek5, align 8
  %add388.i = add nsw i32 %95, %94
  %tobool389.not.i = icmp eq i32 %add388.i, 0
  br i1 %tobool389.not.i, label %if.then390.i, label %if.end392.i

if.then390.i:                                     ; preds = %while.end.i
  %96 = load ptr, ptr @stderr, align 8
  %97 = call i64 @fwrite(ptr nonnull @.str.16, i64 59, i64 1, ptr %96) #15
  br label %if.then52

if.end392.i:                                      ; preds = %while.end.i
  %call393.i = call i32 @fseek(ptr noundef %call38, i64 noundef %file_pos351.0.ph.lcssa.i, i32 noundef 0)
  %conv394.i = sext i32 %add388.i to i64
  %mul395.i = shl nsw i64 %conv394.i, 3
  %call396.i = call noalias ptr @malloc(i64 noundef %mul395.i) #14
  %tobool397.not.i = icmp eq ptr %call396.i, null
  br i1 %tobool397.not.i, label %if.then52, label %if.end399.i

if.end399.i:                                      ; preds = %if.end392.i
  %call401.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38)
  %call404.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %call396.i) #16
  %cmp405.not.i = icmp eq i32 %call404.i, 1
  br i1 %cmp405.not.i, label %for.cond410.preheader.i, label %if.then407.i

for.cond410.preheader.i:                          ; preds = %if.end399.i
  %cmp4111006.i = icmp sgt i32 %add388.i, 1
  br i1 %cmp4111006.i, label %for.body413.lr.ph.preheader.i, label %for.end453.i

for.body413.lr.ph.preheader.i:                    ; preds = %for.cond410.preheader.i
  %wide.trip.count.i = zext nneg i32 %add388.i to i64
  br label %for.body413.lr.ph.i

if.then407.i:                                     ; preds = %if.end399.i
  %98 = load ptr, ptr @stderr, align 8
  %99 = call i64 @fwrite(ptr nonnull @.str.18, i64 51, i64 1, ptr %98) #15
  br label %if.then671.thread.i

if.end431.i:                                      ; preds = %for.body413.us.i, %for.body413.lr.ph.split.i
  %arrayidx434.i = getelementptr inbounds double, ptr %call396.i, i64 %indvars.iv.i
  %call435.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %arrayidx434.i) #16
  %100 = load double, ptr %arrayidx434.i, align 8
  %mul438.i = fmul double %100, 1.000000e-03
  store double %mul438.i, ptr %arrayidx434.i, align 8
  %cmp439.not.i = icmp eq i32 %call435.i, 1
  br i1 %cmp439.not.i, label %lor.lhs.false441.i, label %if.then449.i

lor.lhs.false441.i:                               ; preds = %if.end431.i
  %arrayidx446.i = getelementptr i8, ptr %arrayidx434.i, i64 -8
  %101 = load double, ptr %arrayidx446.i, align 8
  %cmp447.i = fcmp ugt double %mul438.i, %101
  br i1 %cmp447.i, label %if.end451.i, label %if.then449.i

if.then449.i:                                     ; preds = %lor.lhs.false441.i, %if.end431.i
  %102 = trunc nuw nsw i64 %indvars.iv.i to i32
  %103 = load ptr, ptr @stderr, align 8
  %call450.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.19, i32 noundef %102) #17
  br label %if.then671.thread.i

if.end451.i:                                      ; preds = %lor.lhs.false441.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %cmp411.i = icmp slt i64 %indvars.iv.next.i, %conv394.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end453.i, label %for.body413.lr.ph.i

for.body413.lr.ph.i:                              ; preds = %if.end451.i, %for.body413.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %for.body413.lr.ph.preheader.i ], [ %indvars.iv.next.i, %if.end451.i ]
  %cmp4111008.i = phi i1 [ true, %for.body413.lr.ph.preheader.i ], [ %cmp411.i, %if.end451.i ]
  br i1 %cmp4111008.i, label %for.body413.us.i, label %for.body413.lr.ph.split.i

for.body413.us.i:                                 ; preds = %for.body413.lr.ph.i, %for.body413.us.i.backedge
  %call415.us.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38)
  %104 = load i8, ptr %buff.i, align 16
  switch i8 %104, label %if.end431.i [
    i8 35, label %for.body413.us.i.backedge
    i8 13, label %for.body413.us.i.backedge
    i8 10, label %for.body413.us.i.backedge
  ]

for.body413.us.i.backedge:                        ; preds = %for.body413.us.i, %for.body413.us.i, %for.body413.us.i
  br label %for.body413.us.i

for.body413.lr.ph.split.i:                        ; preds = %for.body413.lr.ph.i
  %call415.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38)
  %105 = load i8, ptr %buff.i, align 16
  switch i8 %105, label %if.end431.i [
    i8 35, label %for.end453.i
    i8 13, label %for.end453.i
    i8 10, label %for.end453.i
  ]

for.end453.i:                                     ; preds = %for.body413.lr.ph.split.i, %for.body413.lr.ph.split.i, %for.body413.lr.ph.split.i, %if.end451.i, %for.cond410.preheader.i
  %cmp454.i = icmp eq i32 %add388.i, 1
  br i1 %cmp454.i, label %if.end555.thread.i, label %if.else458.i

if.end555.thread.i:                               ; preds = %for.end453.i
  %fps_num.i = getelementptr inbounds i8, ptr %info, i64 4
  %106 = load i32, ptr %fps_num.i, align 4
  %conv457.i = zext i32 %106 to i64
  %timebase_den.i = getelementptr inbounds i8, ptr %call, i64 88
  store i64 %conv457.i, ptr %timebase_den.i, align 8
  br label %if.else568.i

if.else458.i:                                     ; preds = %for.end453.i
  %107 = load i32, ptr %auto_timebase_den121, align 8
  %tobool460.not.i = icmp eq i32 %107, 0
  br i1 %tobool460.not.i, label %if.end555.i, label %if.then461.i

if.then461.i:                                     ; preds = %if.else458.i
  %sub462.i = add nsw i32 %add388.i, -1
  %conv463.i = sext i32 %sub462.i to i64
  %mul464.i = shl nsw i64 %conv463.i, 3
  %call465.i = call noalias ptr @malloc(i64 noundef %mul464.i) #14
  %tobool466.not.i = icmp eq ptr %call465.i, null
  br i1 %tobool466.not.i, label %if.then671.thread.i, label %for.cond469.preheader.i

for.cond469.preheader.i:                          ; preds = %if.then461.i
  br i1 %cmp4111006.i, label %for.body473.lr.ph.i, label %for.end540.i

for.body473.lr.ph.i:                              ; preds = %for.cond469.preheader.i
  %timebase_den483.i = getelementptr inbounds i8, ptr %call, i64 88
  %timebase_num.i = getelementptr inbounds i8, ptr %call, i64 80
  %wide.trip.count1082.i = zext nneg i32 %sub462.i to i64
  %.pre.i = load i64, ptr %timebase_den483.i, align 8
  br label %for.body473.i

for.body473.i:                                    ; preds = %for.inc538.i, %for.body473.lr.ph.i
  %108 = phi i64 [ %.pre.i, %for.body473.lr.ph.i ], [ %118, %for.inc538.i ]
  %indvars.iv1079.i = phi i64 [ 0, %for.body473.lr.ph.i ], [ %indvars.iv.next1080.i, %for.inc538.i ]
  %indvars.iv.next1080.i = add nuw nsw i64 %indvars.iv1079.i, 1
  %arrayidx476.i = getelementptr inbounds double, ptr %call396.i, i64 %indvars.iv.next1080.i
  %109 = load double, ptr %arrayidx476.i, align 8
  %arrayidx478.i = getelementptr inbounds double, ptr %call396.i, i64 %indvars.iv1079.i
  %110 = load double, ptr %arrayidx478.i, align 8
  %sub479.i = fsub double %109, %110
  %div480.i = fdiv double 1.000000e+00, %sub479.i
  %arrayidx482.i = getelementptr inbounds double, ptr %call465.i, i64 %indvars.iv1079.i
  store double %div480.i, ptr %arrayidx482.i, align 8
  %111 = and i64 %108, 2147483648
  %cmp485.i = icmp eq i64 %111, 0
  br i1 %cmp485.i, label %if.then487.i, label %for.inc538.i

if.then487.i:                                     ; preds = %for.body473.i
  %call.i932.i = call double @log10(double noundef %div480.i) #16
  %112 = call double @llvm.floor.f64(double %call.i932.i)
  %call1.i933.i = call double @pow(double noundef 1.000000e+01, double noundef %112) #16
  %div.i934.i = fdiv double %div480.i, %call1.i933.i
  %113 = load i64, ptr %timebase_num.i, align 8
  %conv4971009.i = uitofp i64 %113 to double
  %mul4981010.i = fmul double %div.i934.i, %conv4971009.i
  %114 = call double @llvm.round.f64(double %mul4981010.i)
  %mul4991011.i = fmul double %call1.i933.i, %114
  %conv5001012.i = fptoui double %mul4991011.i to i64
  %cmp5011013.i = icmp ugt i64 %conv5001012.i, 4294967295
  br i1 %cmp5011013.i, label %land.lhs.true516.i, label %lor.lhs.false503.i

while.cond493.i:                                  ; preds = %lor.lhs.false503.i
  %indvars.iv.next1077.i = add nuw nsw i64 %indvars.iv1076.i, 1
  %mul496.i = mul i64 %indvars.iv.next1077.i, %113
  %conv497.i = uitofp i64 %mul496.i to double
  %mul498.i = fmul double %div.i934.i, %conv497.i
  %115 = call double @llvm.round.f64(double %mul498.i)
  %mul499.i = fmul double %call1.i933.i, %115
  %conv500.i = fptoui double %mul499.i to i64
  %cmp501.i = icmp ugt i64 %conv500.i, 4294967295
  br i1 %cmp501.i, label %land.lhs.true516.i, label %lor.lhs.false503.i

lor.lhs.false503.i:                               ; preds = %if.then487.i, %while.cond493.i
  %indvars.iv1076.i = phi i64 [ %indvars.iv.next1077.i, %while.cond493.i ], [ 1, %if.then487.i ]
  %conv5001016.i = phi i64 [ %conv500.i, %while.cond493.i ], [ %conv5001012.i, %if.then487.i ]
  %conv4971015.i = phi double [ %conv497.i, %while.cond493.i ], [ %conv4971009.i, %if.then487.i ]
  %conv504.i = uitofp nneg i64 %conv5001016.i to double
  %div506.i = fdiv double %conv504.i, %conv4971015.i
  %div507.i = fdiv double %div506.i, %call1.i933.i
  %sub508.i = fsub double %div507.i, %div.i934.i
  %116 = call double @llvm.fabs.f64(double %sub508.i)
  %cmp509.i = fcmp olt double %116, 5.000000e-06
  br i1 %cmp509.i, label %while.end514.i, label %while.cond493.i

while.end514.i:                                   ; preds = %lor.lhs.false503.i
  %tobool515.not.i = icmp eq i64 %conv5001016.i, 0
  br i1 %tobool515.not.i, label %cond.false.i, label %land.lhs.true516.i

land.lhs.true516.i:                               ; preds = %while.cond493.i, %while.end514.i, %if.then487.i
  %conv500993.i = phi i64 [ %conv5001016.i, %while.end514.i ], [ %conv5001012.i, %if.then487.i ], [ %conv500.i, %while.cond493.i ]
  %117 = load i64, ptr %timebase_den483.i, align 8
  %tobool518.not.i = icmp eq i64 %117, 0
  br i1 %tobool518.not.i, label %cond.false.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %land.lhs.true516.i, %while.body.i.i.i
  %a.addr.0.i.i.i = phi i64 [ %b.addr.0.i.i.i, %while.body.i.i.i ], [ %117, %land.lhs.true516.i ]
  %b.addr.0.i.i.i = phi i64 [ %rem.i.i.i, %while.body.i.i.i ], [ %conv500993.i, %land.lhs.true516.i ]
  %rem.i.i.i = srem i64 %a.addr.0.i.i.i, %b.addr.0.i.i.i
  %tobool.not.not.i.i.i = icmp eq i64 %rem.i.i.i, 0
  br i1 %tobool.not.not.i.i.i, label %lcm.exit.i, label %while.body.i.i.i

lcm.exit.i:                                       ; preds = %while.body.i.i.i
  %div.i935.i = sdiv i64 %117, %b.addr.0.i.i.i
  %mul.i.i = mul nsw i64 %div.i935.i, %conv500993.i
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true516.i, %while.end514.i
  %conv500994.i = phi i64 [ %conv500993.i, %land.lhs.true516.i ], [ 0, %while.end514.i ]
  %sext.i = shl i64 %conv500994.i, 32
  %conv522.i = ashr exact i64 %sext.i, 32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %lcm.exit.i
  %cond.i = phi i64 [ %mul.i.i, %lcm.exit.i ], [ %conv522.i, %cond.false.i ]
  store i64 %cond.i, ptr %timebase_den483.i, align 8
  %cmp525.i = icmp ugt i64 %cond.i, 4294967295
  br i1 %cmp525.i, label %if.then527.i, label %for.inc538.i

if.then527.i:                                     ; preds = %cond.end.i
  store i32 0, ptr %auto_timebase_den121, align 8
  br label %for.inc538.i

for.inc538.i:                                     ; preds = %if.then527.i, %cond.end.i, %for.body473.i
  %118 = phi i64 [ %cond.i, %if.then527.i ], [ %cond.i, %cond.end.i ], [ %108, %for.body473.i ]
  %exitcond1083.not.i = icmp eq i64 %indvars.iv.next1080.i, %wide.trip.count1082.i
  br i1 %exitcond1083.not.i, label %for.end540.i, label %for.body473.i

for.end540.i:                                     ; preds = %for.inc538.i, %for.cond469.preheader.i
  %119 = load i32, ptr %auto_timebase_num117, align 4
  %tobool542.not.i = icmp eq i32 %119, 0
  br i1 %tobool542.not.i, label %if.end553.i, label %land.lhs.true543.i

land.lhs.true543.i:                               ; preds = %for.end540.i
  %120 = load i32, ptr %auto_timebase_den121, align 8
  %tobool545.not.i = icmp eq i32 %120, 0
  br i1 %tobool545.not.i, label %if.then546.i, label %if.end553.i

if.then546.i:                                     ; preds = %land.lhs.true543.i
  %call548.i = call fastcc i32 @try_mkv_timebase_den(ptr noundef nonnull %call465.i, ptr noundef nonnull %call, i32 noundef %sub462.i)
  %cmp549.i = icmp slt i32 %call548.i, 0
  br i1 %cmp549.i, label %if.then671.i, label %if.end553.i

if.end553.i:                                      ; preds = %if.then546.i, %land.lhs.true543.i, %for.end540.i
  call void @free(ptr noundef %call465.i) #16
  br label %if.end555.i

if.end555.i:                                      ; preds = %if.end553.i, %if.else458.i
  %fpss.2.i = phi ptr [ %call465.i, %if.end553.i ], [ null, %if.else458.i ]
  br i1 %cmp4111006.i, label %if.then558.i, label %if.end555.i.if.else568.i_crit_edge

if.end555.i.if.else568.i_crit_edge:               ; preds = %if.end555.i
  %fps_num569.i.phi.trans.insert = getelementptr inbounds i8, ptr %info, i64 4
  %.pre = load i32, ptr %fps_num569.i.phi.trans.insert, align 4
  br label %if.else568.i

if.then558.i:                                     ; preds = %if.end555.i
  %121 = zext nneg i32 %add388.i to i64
  %122 = getelementptr double, ptr %call396.i, i64 %121
  %arrayidx561.i = getelementptr i8, ptr %122, i64 -8
  %123 = load double, ptr %arrayidx561.i, align 8
  %arrayidx564.i = getelementptr i8, ptr %122, i64 -16
  %124 = load double, ptr %arrayidx564.i, align 8
  %sub565.i = fsub double %123, %124
  %div566.i = fdiv double 1.000000e+00, %sub565.i
  %assume_fps567.i = getelementptr inbounds i8, ptr %call, i64 112
  store double %div566.i, ptr %assume_fps567.i, align 8
  br label %cleanup580.i

if.else568.i:                                     ; preds = %if.end555.i.if.else568.i_crit_edge, %if.end555.thread.i
  %125 = phi i32 [ %106, %if.end555.thread.i ], [ %.pre, %if.end555.i.if.else568.i_crit_edge ]
  %fpss.2957.i = phi ptr [ null, %if.end555.thread.i ], [ %fpss.2.i, %if.end555.i.if.else568.i_crit_edge ]
  %conv570.i = uitofp i32 %125 to double
  %fps_den571.i = getelementptr inbounds i8, ptr %info, i64 8
  %126 = load i32, ptr %fps_den571.i, align 4
  %conv572.i = uitofp i32 %126 to double
  %div573.i = fdiv double %conv570.i, %conv572.i
  %assume_fps574.i = getelementptr inbounds i8, ptr %call, i64 112
  store double %div573.i, ptr %assume_fps574.i, align 8
  %.phi.trans.insert.i = getelementptr double, ptr %call396.i, i64 %conv394.i
  %arrayidx578.phi.trans.insert.i = getelementptr i8, ptr %.phi.trans.insert.i, i64 -8
  %.pre1101.i = load double, ptr %arrayidx578.phi.trans.insert.i, align 8
  br label %cleanup580.i

cleanup580.i:                                     ; preds = %if.else568.i, %if.then558.i
  %127 = phi double [ %.pre1101.i, %if.else568.i ], [ %123, %if.then558.i ]
  %fpss.2956.i = phi ptr [ %fpss.2957.i, %if.else568.i ], [ %fpss.2.i, %if.then558.i ]
  %last_timecode579.i = getelementptr inbounds i8, ptr %call, i64 120
  store double %127, ptr %last_timecode579.i, align 8
  br label %if.end583.i

if.end583.i:                                      ; preds = %cleanup580.i, %if.end337.i
  %fpss.4.i = phi ptr [ %fpss.0.i, %if.end337.i ], [ %fpss.2956.i, %cleanup580.i ]
  %timecodes.2.i = phi ptr [ %call121.i, %if.end337.i ], [ %call396.i, %cleanup580.i ]
  %128 = load i32, ptr %auto_timebase_den121, align 8
  %tobool585.not.i = icmp eq i32 %128, 0
  br i1 %tobool585.not.i, label %lor.lhs.false586.i, label %if.then589.i

lor.lhs.false586.i:                               ; preds = %if.end583.i
  %129 = load i32, ptr %auto_timebase_num117, align 4
  %tobool588.not.i = icmp eq i32 %129, 0
  br i1 %tobool588.not.i, label %if.else601.i, label %if.then589.i

if.then589.i:                                     ; preds = %lor.lhs.false586.i, %if.end583.i
  %timebase_num591.i = getelementptr inbounds i8, ptr %call, i64 80
  %130 = load i64, ptr %timebase_num591.i, align 8
  %timebase_den592.i = getelementptr inbounds i8, ptr %call, i64 88
  %131 = load i64, ptr %timebase_den592.i, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.then589.i
  %a.addr.0.i.i = phi i64 [ %130, %if.then589.i ], [ %b.addr.0.i.i, %while.body.i.i ]
  %b.addr.0.i.i = phi i64 [ %131, %if.then589.i ], [ %rem.i.i, %while.body.i.i ]
  %rem.i.i = srem i64 %a.addr.0.i.i, %b.addr.0.i.i
  %tobool.not.not.i.i = icmp eq i64 %rem.i.i, 0
  br i1 %tobool.not.not.i.i, label %gcd.exit.i, label %while.body.i.i

gcd.exit.i:                                       ; preds = %while.body.i.i
  %div595.i = udiv i64 %130, %b.addr.0.i.i
  store i64 %div595.i, ptr %timebase_num591.i, align 8
  %div597.i = udiv i64 %131, %b.addr.0.i.i
  store i64 %div597.i, ptr %timebase_den592.i, align 8
  %132 = load ptr, ptr @stderr, align 8
  %call600.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.20, i64 noundef %div595.i, i64 noundef %div597.i) #17
  br label %if.end611.i

if.else601.i:                                     ; preds = %lor.lhs.false586.i
  %timebase_den602.i = getelementptr inbounds i8, ptr %call, i64 88
  %133 = load i64, ptr %timebase_den602.i, align 8
  %134 = add i64 %133, -4294967296
  %or.cond928.i = icmp ult i64 %134, -4294967295
  br i1 %or.cond928.i, label %if.then608.i, label %if.end611.i

if.then608.i:                                     ; preds = %if.else601.i
  %135 = load ptr, ptr @stderr, align 8
  %136 = call i64 @fwrite(ptr nonnull @.str.21, i64 116, i64 1, ptr %135) #15
  br label %if.then671.i

if.end611.i:                                      ; preds = %if.else601.i, %gcd.exit.i
  %stored_pts_num612.i = getelementptr inbounds i8, ptr %call, i64 100
  %137 = load i32, ptr %stored_pts_num612.i, align 4
  %conv613.i = sext i32 %137 to i64
  %mul614.i = shl nsw i64 %conv613.i, 3
  %call615.i = call noalias ptr @malloc(i64 noundef %mul614.i) #14
  %pts.i = getelementptr inbounds i8, ptr %call, i64 104
  store ptr %call615.i, ptr %pts.i, align 8
  %tobool617.not.i = icmp eq ptr %call615.i, null
  br i1 %tobool617.not.i, label %if.then671.i, label %if.end619.i

if.end619.i:                                      ; preds = %if.end611.i
  %138 = load i32, ptr %seek5, align 8
  %idxprom621.i = sext i32 %138 to i64
  %arrayidx622.i = getelementptr inbounds double, ptr %timecodes.2.i, i64 %idxprom621.i
  %139 = load double, ptr %arrayidx622.i, align 8
  %timebase_den623.i = getelementptr inbounds i8, ptr %call, i64 88
  %140 = load i64, ptr %timebase_den623.i, align 8
  %conv624.i = uitofp i64 %140 to double
  %timebase_num625.i = getelementptr inbounds i8, ptr %call, i64 80
  %141 = load i64, ptr %timebase_num625.i, align 8
  %conv626.i = uitofp i64 %141 to double
  %div627.i = fdiv double %conv624.i, %conv626.i
  %142 = call double @llvm.fmuladd.f64(double %139, double %div627.i, double 5.000000e-01)
  %conv629.i = fptosi double %142 to i64
  store i64 0, ptr %call615.i, align 8
  %cmp6341064.i = icmp sgt i32 %137, 1
  br i1 %cmp6341064.i, label %for.body636.i, label %if.end58

for.body636.i:                                    ; preds = %if.end619.i, %for.inc667.i
  %143 = phi ptr [ %154, %for.inc667.i ], [ %call615.i, %if.end619.i ]
  %indvars.iv1098.i = phi i64 [ %indvars.iv.next1099.i, %for.inc667.i ], [ 1, %if.end619.i ]
  %144 = load i32, ptr %seek5, align 8
  %145 = trunc nuw nsw i64 %indvars.iv1098.i to i32
  %add638.i = add nsw i32 %144, %145
  %idxprom639.i = sext i32 %add638.i to i64
  %arrayidx640.i = getelementptr inbounds double, ptr %timecodes.2.i, i64 %idxprom639.i
  %146 = load double, ptr %arrayidx640.i, align 8
  %147 = load <2 x i64>, ptr %timebase_num625.i, align 8
  %148 = uitofp <2 x i64> %147 to <2 x double>
  %149 = extractelement <2 x double> %148, i64 0
  %150 = extractelement <2 x double> %148, i64 1
  %div645.i = fdiv double %150, %149
  %151 = call double @llvm.fmuladd.f64(double %146, double %div645.i, double 5.000000e-01)
  %conv647.i = fptosi double %151 to i64
  %arrayidx650.i = getelementptr inbounds i64, ptr %143, i64 %indvars.iv1098.i
  store i64 %conv647.i, ptr %arrayidx650.i, align 8
  %152 = load ptr, ptr %pts.i, align 8
  %arrayidx653.i = getelementptr inbounds i64, ptr %152, i64 %indvars.iv1098.i
  %153 = load i64, ptr %arrayidx653.i, align 8
  %sub654.i = sub nsw i64 %153, %conv629.i
  store i64 %sub654.i, ptr %arrayidx653.i, align 8
  %154 = load ptr, ptr %pts.i, align 8
  %arrayidx657.i = getelementptr inbounds i64, ptr %154, i64 %indvars.iv1098.i
  %155 = load i64, ptr %arrayidx657.i, align 8
  %arrayidx661.i = getelementptr i8, ptr %arrayidx657.i, i64 -8
  %156 = load i64, ptr %arrayidx661.i, align 8
  %cmp662.not.i = icmp sgt i64 %155, %156
  br i1 %cmp662.not.i, label %for.inc667.i, label %fail.thread.i

fail.thread.i:                                    ; preds = %for.body636.i
  %157 = load ptr, ptr @stderr, align 8
  %call665.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef nonnull @.str.22, i32 noundef %145) #17
  br label %if.then671.i

for.inc667.i:                                     ; preds = %for.body636.i
  %indvars.iv.next1099.i = add nuw nsw i64 %indvars.iv1098.i, 1
  %158 = load i32, ptr %stored_pts_num612.i, align 4
  %159 = sext i32 %158 to i64
  %cmp634.i = icmp slt i64 %indvars.iv.next1099.i, %159
  br i1 %cmp634.i, label %for.body636.i, label %if.end58

if.then671.thread.i:                              ; preds = %if.then461.i, %if.then449.i, %if.then407.i
  call void @free(ptr noundef nonnull %call396.i) #16
  br label %if.then52

if.then671.i:                                     ; preds = %fail.thread.i, %if.end611.i, %if.then608.i, %if.then546.i, %cleanup342.thread949.i
  %timecodes.3971.i = phi ptr [ %timecodes.2.i, %fail.thread.i ], [ %timecodes.2.i, %if.end611.i ], [ %timecodes.2.i, %if.then608.i ], [ %call121.i, %cleanup342.thread949.i ], [ %call396.i, %if.then546.i ]
  %fpss.5969.i = phi ptr [ %fpss.4.i, %fail.thread.i ], [ %fpss.4.i, %if.end611.i ], [ %fpss.4.i, %if.then608.i ], [ %fpss.1.ph.i, %cleanup342.thread949.i ], [ %call465.i, %if.then546.i ]
  call void @free(ptr noundef nonnull %timecodes.3971.i) #16
  %tobool673.not.i = icmp eq ptr %fpss.5969.i, null
  br i1 %tobool673.not.i, label %if.then52, label %if.then674.i

if.then674.i:                                     ; preds = %if.then671.i
  call void @free(ptr noundef nonnull %fpss.5969.i) #16
  br label %if.then52

if.then52:                                        ; preds = %if.then.i, %if.then674.i, %if.then671.i, %cleanup342.thread.i, %if.then390.i, %if.end392.i, %if.then671.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcfv.i) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buff.i) #16
  %pts = getelementptr inbounds i8, ptr %call, i64 104
  %160 = load ptr, ptr %pts, align 8
  %tobool53.not = icmp eq ptr %160, null
  br i1 %tobool53.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.then52
  call void @free(ptr noundef nonnull %160) #16
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.then52
  %call57 = call i32 @fclose(ptr noundef nonnull %call38)
  br label %cleanup

if.end58:                                         ; preds = %for.inc667.i, %if.end619.i
  call void @free(ptr noundef %timecodes.2.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcfv.i) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buff.i) #16
  %call59 = call i32 @fclose(ptr noundef nonnull %call38)
  %timebase_num62 = getelementptr inbounds i8, ptr %info, i64 32
  %161 = load <2 x i64>, ptr %timebase_num625.i, align 8
  %162 = trunc <2 x i64> %161 to <2 x i32>
  store <2 x i32> %162, ptr %timebase_num62, align 4
  %vfr = getelementptr inbounds i8, ptr %info, i64 40
  store i32 1, ptr %vfr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end56, %if.then40, %if.then19, %if.then
  %retval.0 = phi i32 [ -1, %if.then19 ], [ -1, %if.end56 ], [ 0, %if.end58 ], [ -1, %if.then40 ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %handle) #1 {
entry:
  %frame_total = getelementptr inbounds i8, ptr %handle, i64 64
  %0 = load i32, ptr %frame_total, align 8
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal i32 @read_frame(ptr noundef %p_pic, ptr nocapture noundef %handle, i32 noundef %i_frame) #0 {
entry:
  %read_frame = getelementptr inbounds i8, ptr %handle, i64 24
  %0 = load ptr, ptr %read_frame, align 8
  %p_handle = getelementptr inbounds i8, ptr %handle, i64 56
  %1 = load ptr, ptr %p_handle, align 8
  %call = tail call i32 %0(ptr noundef %p_pic, ptr noundef %1, i32 noundef %i_frame) #16
  %seek = getelementptr inbounds i8, ptr %handle, i64 96
  %2 = load i32, ptr %seek, align 8
  %sub = sub nsw i32 %i_frame, %2
  %stored_pts_num = getelementptr inbounds i8, ptr %handle, i64 100
  %3 = load i32, ptr %stored_pts_num, align 4
  %cmp = icmp slt i32 %sub, %3
  %pts = getelementptr inbounds i8, ptr %handle, i64 104
  %4 = load ptr, ptr %pts, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %idxprom
  %5 = load i64, ptr %arrayidx, align 8
  br label %if.end14

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.else
  %6 = load ptr, ptr @stderr, align 8
  %assume_fps = getelementptr inbounds i8, ptr %handle, i64 112
  %7 = load double, ptr %assume_fps, align 8
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.25, i32 noundef %i_frame, double noundef %7) #17
  %8 = load ptr, ptr %pts, align 8
  tail call void @free(ptr noundef %8) #16
  store ptr null, ptr %pts, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  %assume_fps8 = getelementptr inbounds i8, ptr %handle, i64 112
  %9 = load double, ptr %assume_fps8, align 8
  %div = fdiv double 1.000000e+00, %9
  %last_timecode = getelementptr inbounds i8, ptr %handle, i64 120
  %10 = load double, ptr %last_timecode, align 8
  %add = fadd double %10, %div
  store double %add, ptr %last_timecode, align 8
  %timebase_num = getelementptr inbounds i8, ptr %handle, i64 80
  %11 = load <2 x i64>, ptr %timebase_num, align 8
  %12 = uitofp <2 x i64> %11 to <2 x double>
  %13 = extractelement <2 x double> %12, i64 0
  %14 = extractelement <2 x double> %12, i64 1
  %div11 = fdiv double %14, %13
  %15 = tail call double @llvm.fmuladd.f64(double %add, double %div11, double 5.000000e-01)
  %conv12 = fptosi double %15 to i64
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %conv12.sink = phi i64 [ %conv12, %if.end ], [ %5, %if.then ]
  %i_pts13 = getelementptr inbounds i8, ptr %p_pic, i64 16
  store i64 %conv12.sink, ptr %i_pts13, align 8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @release_frame(ptr noundef %pic, ptr nocapture noundef readonly %handle) #0 {
entry:
  %release_frame = getelementptr inbounds i8, ptr %handle, i64 32
  %0 = load ptr, ptr %release_frame, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %p_handle = getelementptr inbounds i8, ptr %handle, i64 56
  %1 = load ptr, ptr %p_handle, align 8
  %call = tail call i32 %0(ptr noundef %pic, ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @close_file(ptr nocapture noundef %handle) #0 {
entry:
  %pts = getelementptr inbounds i8, ptr %handle, i64 104
  %0 = load ptr, ptr %pts, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %close_file = getelementptr inbounds i8, ptr %handle, i64 48
  %1 = load ptr, ptr %close_file, align 8
  %p_handle = getelementptr inbounds i8, ptr %handle, i64 56
  %2 = load ptr, ptr %p_handle, align 8
  %call = tail call i32 %1(ptr noundef %2) #16
  tail call void @free(ptr noundef nonnull %handle) #16
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @correct_fps(double noundef %fps, ptr nocapture noundef %h) unnamed_addr #9 {
entry:
  %call.i = tail call double @log10(double noundef %fps) #16
  %0 = tail call double @llvm.floor.f64(double %call.i)
  %call1.i = tail call double @pow(double noundef 1.000000e+01, double noundef %0) #16
  %div.i = fdiv double %fps, %call1.i
  %timebase_num = getelementptr inbounds i8, ptr %h, i64 80
  %1 = load i64, ptr %timebase_num, align 8
  %conv151 = uitofp i64 %1 to double
  %mul252 = fmul double %div.i, %conv151
  %2 = tail call double @llvm.round.f64(double %mul252)
  %mul353 = fmul double %call1.i, %2
  %conv454 = fptoui double %mul353 to i64
  %cmp55 = icmp ugt i64 %conv454, 4294967295
  br i1 %cmp55, label %if.then, label %if.end

while.cond:                                       ; preds = %if.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %mul = mul i64 %1, %indvars.iv.next
  %conv1 = uitofp i64 %mul to double
  %mul2 = fmul double %div.i, %conv1
  %3 = tail call double @llvm.round.f64(double %mul2)
  %mul3 = fmul double %call1.i, %3
  %conv4 = fptoui double %mul3 to i64
  %cmp = icmp ugt i64 %conv4, 4294967295
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.cond, %entry
  %4 = load ptr, ptr @stderr, align 8
  %5 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 125, i64 1, ptr %4) #15
  br label %cleanup

if.end:                                           ; preds = %entry, %while.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 1, %entry ]
  %conv458 = phi i64 [ %conv4, %while.cond ], [ %conv454, %entry ]
  %conv157 = phi double [ %conv1, %while.cond ], [ %conv151, %entry ]
  %conv7 = uitofp nneg i64 %conv458 to double
  %div = fdiv double %conv7, %conv157
  %div9 = fdiv double %div, %call1.i
  %sub = fsub double %div9, %div.i
  %6 = tail call double @llvm.fabs.f64(double %sub)
  %cmp10 = fcmp olt double %6, 5.000000e-06
  br i1 %cmp10, label %while.end, label %while.cond

while.end:                                        ; preds = %if.end
  %auto_timebase_den = getelementptr inbounds i8, ptr %h, i64 72
  %7 = load i32, ptr %auto_timebase_den, align 8
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %cleanup, label %if.then14

if.then14:                                        ; preds = %while.end
  %timebase_den = getelementptr inbounds i8, ptr %h, i64 88
  %8 = load i64, ptr %timebase_den, align 8
  %tobool15.not = icmp eq i64 %8, 0
  br i1 %tobool15.not, label %cond.false, label %while.body.i.i

while.body.i.i:                                   ; preds = %if.then14, %while.body.i.i
  %a.addr.0.i.i = phi i64 [ %b.addr.0.i.i, %while.body.i.i ], [ %8, %if.then14 ]
  %b.addr.0.i.i = phi i64 [ %rem.i.i, %while.body.i.i ], [ %conv458, %if.then14 ]
  %rem.i.i = srem i64 %a.addr.0.i.i, %b.addr.0.i.i
  %tobool.not.not.i.i = icmp eq i64 %rem.i.i, 0
  br i1 %tobool.not.not.i.i, label %lcm.exit, label %while.body.i.i

lcm.exit:                                         ; preds = %while.body.i.i
  %div.i49 = sdiv i64 %8, %b.addr.0.i.i
  %mul.i = mul nsw i64 %div.i49, %conv458
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  %sext = shl nuw i64 %conv458, 32
  %conv19 = ashr exact i64 %sext, 32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lcm.exit
  %cond = phi i64 [ %mul.i, %lcm.exit ], [ %conv19, %cond.false ]
  store i64 %cond, ptr %timebase_den, align 8
  %cmp22 = icmp ugt i64 %cond, 4294967295
  br i1 %cmp22, label %if.then24, label %cleanup

if.then24:                                        ; preds = %cond.end
  store i32 0, ptr %auto_timebase_den, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then24, %cond.end, %if.then
  %retval.0 = phi double [ -1.000000e+00, %if.then ], [ %div, %cond.end ], [ %div, %if.then24 ], [ %div, %while.end ]
  ret double %retval.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @try_mkv_timebase_den(ptr nocapture noundef readonly %fpss, ptr nocapture noundef %h, i32 noundef %loop_num) unnamed_addr #9 {
entry:
  %timebase_num = getelementptr inbounds i8, ptr %h, i64 80
  store i64 0, ptr %timebase_num, align 8
  %timebase_den = getelementptr inbounds i8, ptr %h, i64 88
  store i64 1000000000, ptr %timebase_den, align 8
  %cmp.not33 = icmp sgt i32 %loop_num, 0
  br i1 %cmp.not33, label %for.body.preheader, label %cleanup17

for.body.preheader:                               ; preds = %entry
  %0 = zext nneg i32 %loop_num to i64
  %wide.trip.count = zext nneg i32 %loop_num to i64
  br label %for.body

for.cond:                                         ; preds = %cond.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp.not = icmp ult i64 %indvars.iv.next, %0
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup17, label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %cmp.not35 = phi i1 [ true, %for.body.preheader ], [ %cmp.not, %for.cond ]
  %arrayidx = getelementptr inbounds double, ptr %fpss, i64 %indvars.iv
  %1 = load double, ptr %arrayidx, align 8
  %call.i = tail call double @log10(double noundef %1) #16
  %2 = tail call double @llvm.floor.f64(double %call.i)
  %call1.i = tail call double @pow(double noundef 1.000000e+01, double noundef %2) #16
  %div.i = fdiv double %1, %call1.i
  %div = fdiv double 1.000000e+09, %div.i
  %3 = tail call double @llvm.round.f64(double %div)
  %div1 = fdiv double %3, %call1.i
  %conv = fptoui double %div1 to i64
  %tobool.not = icmp eq i64 %conv, 0
  br i1 %tobool.not, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %4 = load i64, ptr %timebase_num, align 8
  %tobool3.not = icmp eq i64 %4, 0
  br i1 %tobool3.not, label %cond.false, label %while.body.i

while.body.i:                                     ; preds = %land.lhs.true, %while.body.i
  %a.addr.0.i = phi i64 [ %b.addr.0.i, %while.body.i ], [ %4, %land.lhs.true ]
  %b.addr.0.i = phi i64 [ %rem.i, %while.body.i ], [ %conv, %land.lhs.true ]
  %rem.i = srem i64 %a.addr.0.i, %b.addr.0.i
  %tobool.not.not.i = icmp eq i64 %rem.i, 0
  br i1 %tobool.not.not.i, label %cond.end, label %while.body.i

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %sext = shl i64 %conv, 32
  %conv7 = ashr exact i64 %sext, 32
  br label %cond.end

cond.end:                                         ; preds = %while.body.i, %cond.false
  %cond = phi i64 [ %conv7, %cond.false ], [ %b.addr.0.i, %while.body.i ]
  store i64 %cond, ptr %timebase_num, align 8
  %5 = add i64 %cond, -4294967296
  %or.cond = icmp ult i64 %5, -4294967295
  br i1 %or.cond, label %if.then, label %for.cond

if.then:                                          ; preds = %cond.end
  %6 = load ptr, ptr @stderr, align 8
  %7 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 101, i64 1, ptr %6) #15
  br label %cleanup17

cleanup17:                                        ; preds = %for.cond, %entry, %if.then
  %cmp.not32 = phi i1 [ %cmp.not35, %if.then ], [ false, %entry ], [ %cmp.not, %for.cond ]
  %spec.select = sext i1 %cmp.not32 to i32
  ret i32 %spec.select
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
