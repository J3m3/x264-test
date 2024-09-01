; ModuleID = 'x264_src/input/timecode.c'
source_filename = "x264_src/input/timecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@timecode_input = dso_local local_unnamed_addr global %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr null, ptr @read_frame, ptr @release_frame, ptr null, ptr @close_file }, align 8, !dbg !0
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"timecode [error]: malloc failed\0A\00", align 1, !dbg !14
@input = external local_unnamed_addr global %struct.cli_input_t, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%lu/%lu\00", align 1, !dbg !20
@.str.2 = private unnamed_addr constant [64 x i8] c"timecode [error]: timebase you specified exceeds H.264 maximum\0A\00", align 1, !dbg !25
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !30
@.str.4 = private unnamed_addr constant [35 x i8] c"timecode [error]: can't open `%s'\0A\00", align 1, !dbg !35
@.str.6 = private unnamed_addr constant [22 x i8] c"# timecode format v%d\00", align 1, !dbg !45
@.str.7 = private unnamed_addr constant [47 x i8] c"timecode [error]: unsupported timecode format\0A\00", align 1, !dbg !50
@.str.8 = private unnamed_addr constant [11 x i8] c"assume %lf\00", align 1, !dbg !55
@.str.9 = private unnamed_addr constant [11 x i8] c"Assume %lf\00", align 1, !dbg !60
@.str.10 = private unnamed_addr constant [63 x i8] c"timecode [error]: tcfile parsing error: assumed fps not found\0A\00", align 1, !dbg !62
@.str.11 = private unnamed_addr constant [44 x i8] c"timecode [error]: invalid assumed fps %.6f\0A\00", align 1, !dbg !67
@.str.12 = private unnamed_addr constant [37 x i8] c"# TDecimate Mode 3:  Last Frame = %d\00", align 1, !dbg !72
@.str.13 = private unnamed_addr constant [10 x i8] c"%d,%d,%lf\00", align 1, !dbg !77
@.str.14 = private unnamed_addr constant [40 x i8] c"timecode [error]: invalid input tcfile\0A\00", align 1, !dbg !82
@.str.15 = private unnamed_addr constant [55 x i8] c"timecode [error]: invalid input tcfile at line %d: %s\0A\00", align 1, !dbg !87
@.str.16 = private unnamed_addr constant [60 x i8] c"timecode [error]: input tcfile doesn't have any timecodes!\0A\00", align 1, !dbg !92
@.str.17 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1, !dbg !97
@.str.18 = private unnamed_addr constant [52 x i8] c"timecode [error]: invalid input tcfile for frame 0\0A\00", align 1, !dbg !102
@.str.19 = private unnamed_addr constant [53 x i8] c"timecode [error]: invalid input tcfile for frame %d\0A\00", align 1, !dbg !107
@.str.20 = private unnamed_addr constant [56 x i8] c"timecode [info]: automatic timebase generation %lu/%lu\0A\00", align 1, !dbg !112
@.str.21 = private unnamed_addr constant [117 x i8] c"timecode [error]: automatic timebase generation failed.\0A                  Specify an appropriate timebase manually.\0A\00", align 1, !dbg !117
@.str.22 = private unnamed_addr constant [61 x i8] c"timecode [error]: invalid timebase or timecode for frame %d\0A\00", align 1, !dbg !122
@.str.23 = private unnamed_addr constant [126 x i8] c"timecode [error]: tcfile fps correction failed.\0A                  Specify an appropriate timebase manually or remake tcfile.\0A\00", align 1, !dbg !127
@.str.24 = private unnamed_addr constant [102 x i8] c"timecode [error]: automatic timebase generation failed.\0A                  Specify timebase manually.\0A\00", align 1, !dbg !132
@.str.25 = private unnamed_addr constant [118 x i8] c"timecode [info]: input timecode file missing data for frame %d and later\0A                 assuming constant fps %.6f\0A\00", align 1, !dbg !137

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @open_file(ptr noundef %psz_filename, ptr nocapture noundef %p_handle, ptr nocapture noundef %info, ptr nocapture noundef readonly %opt) #0 !dbg !411 {
entry:
  %buff.i = alloca [256 x i8], align 16, !DIAssignID !496
    #dbg_assign(i1 undef, !497, !DIExpression(), !496, ptr %buff.i, !DIExpression(), !550)
  %tcfv.i = alloca i32, align 4, !DIAssignID !553
    #dbg_assign(i1 undef, !506, !DIExpression(), !553, ptr %tcfv.i, !DIExpression(), !550)
  %seq_fps.i = alloca double, align 8, !DIAssignID !554
    #dbg_assign(i1 undef, !518, !DIExpression(), !554, ptr %seq_fps.i, !DIExpression(), !555)
  %start.i = alloca i32, align 4, !DIAssignID !556
    #dbg_assign(i1 undef, !519, !DIExpression(), !556, ptr %start.i, !DIExpression(), !555)
  %end.i = alloca i32, align 4, !DIAssignID !557
    #dbg_value(ptr %psz_filename, !413, !DIExpression(), !558)
    #dbg_value(ptr %p_handle, !414, !DIExpression(), !558)
    #dbg_value(ptr %info, !415, !DIExpression(), !558)
    #dbg_value(ptr %opt, !416, !DIExpression(), !558)
    #dbg_value(i32 0, !417, !DIExpression(), !558)
  %call = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14, !dbg !559
    #dbg_value(ptr %call, !476, !DIExpression(), !558)
  %tobool.not = icmp eq ptr %call, null, !dbg !560
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !562

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !563
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 32, i64 1, ptr %0) #15, !dbg !565
  br label %cleanup, !dbg !566

if.end:                                           ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %call, ptr noundef nonnull align 8 dereferenceable(56) @input, i64 56, i1 false), !dbg !567
  %2 = load ptr, ptr %p_handle, align 8, !dbg !568
  %p_handle2 = getelementptr inbounds i8, ptr %call, i64 56, !dbg !569
  store ptr %2, ptr %p_handle2, align 8, !dbg !570
  %3 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 8), align 8, !dbg !571
  %call4 = tail call i32 %3(ptr noundef %2) #16, !dbg !572
  %frame_total = getelementptr inbounds i8, ptr %call, i64 64, !dbg !573
  store i32 %call4, ptr %frame_total, align 8, !dbg !574
  %seek = getelementptr inbounds i8, ptr %opt, i64 24, !dbg !575
  %4 = load i32, ptr %seek, align 8, !dbg !575
  %seek5 = getelementptr inbounds i8, ptr %call, i64 96, !dbg !576
  store i32 %4, ptr %seek5, align 8, !dbg !577
  %timebase = getelementptr inbounds i8, ptr %opt, i64 16, !dbg !578
  %5 = load ptr, ptr %timebase, align 8, !dbg !578
  %tobool6.not = icmp eq ptr %5, null, !dbg !580
  br i1 %tobool6.not, label %if.end22.thread, label %if.then7, !dbg !581

if.end22.thread:                                  ; preds = %if.end
    #dbg_value(i32 0, !417, !DIExpression(), !558)
  %auto_timebase_num113 = getelementptr inbounds i8, ptr %call, i64 68, !dbg !582
  store i32 1, ptr %auto_timebase_num113, align 4, !dbg !583
  %auto_timebase_den116 = getelementptr inbounds i8, ptr %call, i64 72, !dbg !584
  store i32 1, ptr %auto_timebase_den116, align 8, !dbg !585
  br label %if.then27, !dbg !586

if.then7:                                         ; preds = %if.end
  %timebase_num = getelementptr inbounds i8, ptr %call, i64 80, !dbg !587
  %timebase_den = getelementptr inbounds i8, ptr %call, i64 88, !dbg !589
  %call9 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %timebase_num, ptr noundef nonnull %timebase_den) #16, !dbg !590
    #dbg_value(i32 %call9, !417, !DIExpression(), !558)
  %cmp = icmp eq i32 %call9, 1, !dbg !591
  br i1 %cmp, label %if.then10, label %if.end14thread-pre-split, !dbg !593

if.then10:                                        ; preds = %if.then7
  %6 = load ptr, ptr %timebase, align 8, !dbg !594
  %call12 = tail call i64 @strtoul(ptr nocapture noundef %6, ptr noundef null, i32 noundef 10) #16, !dbg !595
  store i64 %call12, ptr %timebase_num, align 8, !dbg !596
  br label %if.end14, !dbg !597

if.end14thread-pre-split:                         ; preds = %if.then7
  %.pr = load i64, ptr %timebase_num, align 8, !dbg !598
  br label %if.end14, !dbg !598

if.end14:                                         ; preds = %if.end14thread-pre-split, %if.then10
  %7 = phi i64 [ %.pr, %if.end14thread-pre-split ], [ %call12, %if.then10 ], !dbg !598
  %cmp16 = icmp ugt i64 %7, 4294967295, !dbg !600
  br i1 %cmp16, label %if.then19, label %lor.lhs.false, !dbg !601

lor.lhs.false:                                    ; preds = %if.end14
  %8 = load i64, ptr %timebase_den, align 8, !dbg !602
  %cmp18 = icmp ugt i64 %8, 4294967295, !dbg !603
  br i1 %cmp18, label %if.then19, label %if.end22, !dbg !604

if.then19:                                        ; preds = %lor.lhs.false, %if.end14
  %9 = load ptr, ptr @stderr, align 8, !dbg !605
  %10 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 63, i64 1, ptr %9) #15, !dbg !607
  br label %cleanup, !dbg !608

if.end22:                                         ; preds = %lor.lhs.false
    #dbg_value(i32 %call9, !417, !DIExpression(), !558)
  %tobool23.not = icmp eq i32 %call9, 0, !dbg !609
  %lnot.ext = zext i1 %tobool23.not to i32, !dbg !609
  %auto_timebase_num = getelementptr inbounds i8, ptr %call, i64 68, !dbg !582
  store i32 %lnot.ext, ptr %auto_timebase_num, align 4, !dbg !583
  %cmp24 = icmp slt i32 %call9, 2, !dbg !610
  %conv = zext i1 %cmp24 to i32, !dbg !610
  %auto_timebase_den = getelementptr inbounds i8, ptr %call, i64 72, !dbg !584
  store i32 %conv, ptr %auto_timebase_den, align 8, !dbg !585
  br i1 %tobool23.not, label %if.then27, label %if.end30, !dbg !586

if.then27:                                        ; preds = %if.end22.thread, %if.end22
  %.pr123 = phi i32 [ 1, %if.end22.thread ], [ %conv, %if.end22 ], !dbg !611
  %auto_timebase_den122 = phi ptr [ %auto_timebase_den116, %if.end22.thread ], [ %auto_timebase_den, %if.end22 ]
  %auto_timebase_num118 = phi ptr [ %auto_timebase_num113, %if.end22.thread ], [ %auto_timebase_num, %if.end22 ]
  %fps_den = getelementptr inbounds i8, ptr %info, i64 8, !dbg !613
  %11 = load i32, ptr %fps_den, align 4, !dbg !613
  %conv28 = zext i32 %11 to i64, !dbg !615
  %timebase_num29 = getelementptr inbounds i8, ptr %call, i64 80, !dbg !616
  store i64 %conv28, ptr %timebase_num29, align 8, !dbg !617
  br label %if.end30, !dbg !618

if.end30:                                         ; preds = %if.then27, %if.end22
  %12 = phi i32 [ %.pr123, %if.then27 ], [ %conv, %if.end22 ], !dbg !611
  %auto_timebase_den121 = phi ptr [ %auto_timebase_den122, %if.then27 ], [ %auto_timebase_den, %if.end22 ]
  %auto_timebase_num117 = phi ptr [ %auto_timebase_num118, %if.then27 ], [ %auto_timebase_num, %if.end22 ]
  %tobool32.not = icmp eq i32 %12, 0, !dbg !619
  br i1 %tobool32.not, label %if.end35, label %if.then33, !dbg !620

if.then33:                                        ; preds = %if.end30
  %timebase_den34 = getelementptr inbounds i8, ptr %call, i64 88, !dbg !621
  store i64 0, ptr %timebase_den34, align 8, !dbg !622
  br label %if.end35, !dbg !623

if.end35:                                         ; preds = %if.then33, %if.end30
  %picture_alloc = getelementptr inbounds i8, ptr %call, i64 16, !dbg !624
  %13 = load ptr, ptr %picture_alloc, align 8, !dbg !624
  store ptr %13, ptr getelementptr inbounds (i8, ptr @timecode_input, i64 16), align 8, !dbg !625
  %picture_clean = getelementptr inbounds i8, ptr %call, i64 40, !dbg !626
  %14 = load ptr, ptr %picture_clean, align 8, !dbg !626
  store ptr %14, ptr getelementptr inbounds (i8, ptr @timecode_input, i64 40), align 8, !dbg !627
  store ptr %call, ptr %p_handle, align 8, !dbg !628
  %call38 = tail call noalias ptr @fopen64(ptr noundef %psz_filename, ptr noundef nonnull @.str.3), !dbg !629
    #dbg_value(ptr %call38, !418, !DIExpression(), !558)
  %tobool39.not = icmp eq ptr %call38, null, !dbg !630
  br i1 %tobool39.not, label %if.then40, label %if.else, !dbg !632

if.then40:                                        ; preds = %if.end35
  %15 = load ptr, ptr @stderr, align 8, !dbg !633
  %call41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef %psz_filename) #17, !dbg !635
  br label %cleanup, !dbg !636

if.else:                                          ; preds = %if.end35
    #dbg_assign(i1 undef, !520, !DIExpression(), !557, ptr %end.i, !DIExpression(), !555)
    #dbg_value(ptr %call38, !502, !DIExpression(), !550)
    #dbg_value(ptr %call, !503, !DIExpression(), !550)
    #dbg_value(ptr %info, !504, !DIExpression(), !550)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buff.i) #16, !dbg !637
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcfv.i) #16, !dbg !638
    #dbg_value(ptr null, !511, !DIExpression(), !550)
    #dbg_value(ptr null, !513, !DIExpression(), !550)
  %call.i = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call38, ptr noundef nonnull @.str.6, ptr noundef nonnull %tcfv.i) #16, !dbg !639
    #dbg_value(i32 %call.i, !505, !DIExpression(), !550)
  %cmp.not.i = icmp eq i32 %call.i, 1, !dbg !640
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i, !dbg !642

lor.lhs.false.i:                                  ; preds = %if.else
  %16 = load i32, ptr %tcfv.i, align 4, !dbg !643
  %17 = add i32 %16, -3, !dbg !644
  %or.cond.i = icmp ult i32 %17, -2, !dbg !644
  br i1 %or.cond.i, label %if.then.i, label %if.end.i, !dbg !644

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.else
  %18 = load ptr, ptr @stderr, align 8, !dbg !645
  %19 = call i64 @fwrite(ptr nonnull @.str.7, i64 46, i64 1, ptr %18) #15, !dbg !647
  br label %if.then52, !dbg !648

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp4.i = icmp eq i32 %16, 1, !dbg !649
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i, !dbg !650

if.then5.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seq_fps.i) #16, !dbg !651
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start.i) #16, !dbg !652
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end.i) #16, !dbg !652
  %20 = load i32, ptr %seek5, align 8, !dbg !653
  store i32 %20, ptr %end.i, align 4, !dbg !654, !DIAssignID !655
    #dbg_assign(i32 %20, !520, !DIExpression(), !655, ptr %end.i, !DIExpression(), !555)
    #dbg_value(i32 -1, !521, !DIExpression(), !555)
    #dbg_value(i32 -1, !522, !DIExpression(), !555)
  %assume_fps6.i = getelementptr inbounds i8, ptr %call, i64 112, !dbg !656
  store double 0.000000e+00, ptr %assume_fps6.i, align 8, !dbg !657
    #dbg_value(i32 2, !507, !DIExpression(), !550)
  %call71020.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef nonnull %call38), !dbg !658
  %cmp8.not1021.i = icmp eq ptr %call71020.i, null, !dbg !661
  br i1 %cmp8.not1021.i, label %for.end.i, label %for.body.i, !dbg !662

for.body.i:                                       ; preds = %if.then5.i, %for.inc.i
  %num.01022.i = phi i32 [ %inc.i, %for.inc.i ], [ 2, %if.then5.i ]
    #dbg_value(i32 %num.01022.i, !507, !DIExpression(), !550)
  %21 = load i8, ptr %buff.i, align 16, !dbg !663
  switch i8 %21, label %if.end22.i [
    i8 35, label %for.inc.i
    i8 13, label %for.inc.i
    i8 10, label %for.inc.i
  ], !dbg !666

if.end22.i:                                       ; preds = %for.body.i
  %call25.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.8, ptr noundef nonnull %assume_fps6.i) #16, !dbg !667
  %cmp26.not.i = icmp eq i32 %call25.i, 1, !dbg !669
  br i1 %cmp26.not.i, label %for.end.i, label %land.lhs.true28.i, !dbg !670

land.lhs.true28.i:                                ; preds = %if.end22.i
  %call31.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %assume_fps6.i) #16, !dbg !671
  %cmp32.not.i = icmp eq i32 %call31.i, 1, !dbg !672
  br i1 %cmp32.not.i, label %for.end.i, label %if.then34.i, !dbg !673

if.then34.i:                                      ; preds = %land.lhs.true28.i
  %22 = load ptr, ptr @stderr, align 8, !dbg !674
  %23 = call i64 @fwrite(ptr nonnull @.str.10, i64 62, i64 1, ptr %22) #15, !dbg !676
  br label %cleanup342.thread.i, !dbg !677

for.inc.i:                                        ; preds = %for.body.i, %for.body.i, %for.body.i
  %inc.i = add nuw nsw i32 %num.01022.i, 1, !dbg !678
    #dbg_value(i32 %inc.i, !507, !DIExpression(), !550)
  %call7.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38), !dbg !658
  %cmp8.not.i = icmp eq ptr %call7.i, null, !dbg !661
  br i1 %cmp8.not.i, label %for.end.i, label %for.body.i, !dbg !662, !llvm.loop !679

for.end.i:                                        ; preds = %for.inc.i, %land.lhs.true28.i, %if.end22.i, %if.then5.i
  %num.0991.i = phi i32 [ %num.01022.i, %if.end22.i ], [ %num.01022.i, %land.lhs.true28.i ], [ 2, %if.then5.i ], [ %inc.i, %for.inc.i ]
  %24 = load double, ptr %assume_fps6.i, align 8, !dbg !681
  %cmp38.i = fcmp ugt double %24, 0.000000e+00, !dbg !683
  br i1 %cmp38.i, label %if.end43.i, label %if.then40.i, !dbg !684

if.then40.i:                                      ; preds = %for.end.i
  %25 = load ptr, ptr @stderr, align 8, !dbg !685
  %call42.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.11, double noundef %24) #17, !dbg !687
  br label %cleanup342.thread.i, !dbg !688

if.end43.i:                                       ; preds = %for.end.i
  %call44.i = call i64 @ftell(ptr noundef %call38), !dbg !689
    #dbg_value(i64 %call44.i, !514, !DIExpression(), !555)
  %stored_pts_num.i = getelementptr inbounds i8, ptr %call, i64 100, !dbg !690
  store i32 0, ptr %stored_pts_num.i, align 4, !dbg !691
    #dbg_value(i32 0, !508, !DIExpression(), !550)
    #dbg_value(i32 %num.0991.i, !507, !DIExpression(), !550)
    #dbg_value(i32 -1, !522, !DIExpression(), !555)
    #dbg_value(i32 -1, !521, !DIExpression(), !555)
  %call471024.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38), !dbg !692
  %cmp48.not1025.i = icmp eq ptr %call471024.i, null, !dbg !695
  br i1 %cmp48.not1025.i, label %for.end107.i, label %for.body50.i, !dbg !696

for.body50.i:                                     ; preds = %if.end43.i, %for.inc105.i
  %num.11029.i = phi i32 [ %inc106.i, %for.inc105.i ], [ %num.0991.i, %if.end43.i ]
  %seq_num.01028.i = phi i32 [ %seq_num.1.i, %for.inc105.i ], [ 0, %if.end43.i ]
  %prev_end.01027.i = phi i32 [ %prev_end.1.i, %for.inc105.i ], [ -1, %if.end43.i ]
  %prev_start.01026.i = phi i32 [ %prev_start.1.i, %for.inc105.i ], [ -1, %if.end43.i ]
    #dbg_value(i32 %num.11029.i, !507, !DIExpression(), !550)
    #dbg_value(i32 %seq_num.01028.i, !508, !DIExpression(), !550)
    #dbg_value(i32 %prev_end.01027.i, !522, !DIExpression(), !555)
    #dbg_value(i32 %prev_start.01026.i, !521, !DIExpression(), !555)
  %26 = load i8, ptr %buff.i, align 16, !dbg !697
  switch i8 %26, label %if.end74.i [
    i8 35, label %if.then65.i
    i8 13, label %if.then65.i
    i8 10, label %if.then65.i
  ], !dbg !700

if.then65.i:                                      ; preds = %for.body50.i, %for.body50.i, %for.body50.i
  %call67.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %end.i) #16, !dbg !701
  %cmp68.i = icmp eq i32 %call67.i, 1, !dbg !704
  br i1 %cmp68.i, label %if.then70.i, label %for.inc105.i, !dbg !705

if.then70.i:                                      ; preds = %if.then65.i
  %27 = load i32, ptr %end.i, align 4, !dbg !706
  %add.i = add nsw i32 %27, 1, !dbg !707
  %28 = load i32, ptr %seek5, align 8, !dbg !708
  %sub.i = sub i32 %add.i, %28, !dbg !709
  store i32 %sub.i, ptr %stored_pts_num.i, align 4, !dbg !710
  br label %for.inc105.i, !dbg !711

if.end74.i:                                       ; preds = %for.body50.i
  %call76.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, ptr noundef nonnull %seq_fps.i) #16, !dbg !712
    #dbg_value(i32 %call76.i, !505, !DIExpression(), !550)
  switch i32 %call76.i, label %if.then82.i [
    i32 -1, label %if.end84.i
    i32 3, label %if.end84.i
  ], !dbg !713

if.then82.i:                                      ; preds = %if.end74.i
  %29 = load ptr, ptr @stderr, align 8, !dbg !715
  %30 = call i64 @fwrite(ptr nonnull @.str.14, i64 39, i64 1, ptr %29) #15, !dbg !717
  br label %cleanup342.thread.i, !dbg !718

if.end84.i:                                       ; preds = %if.end74.i, %if.end74.i
  %31 = load i32, ptr %start.i, align 4, !dbg !719
  %32 = load i32, ptr %end.i, align 4, !dbg !721
  %cmp85.i = icmp sle i32 %31, %32, !dbg !722
  %cmp88.not.i = icmp sgt i32 %31, %prev_start.01026.i
  %or.cond927.i = select i1 %cmp85.i, i1 %cmp88.not.i, i1 false, !dbg !723
  br i1 %or.cond927.i, label %lor.lhs.false90.i, label %if.then96.i, !dbg !723

lor.lhs.false90.i:                                ; preds = %if.end84.i
  %cmp91.i = icmp sle i32 %32, %prev_end.01027.i, !dbg !724
  %33 = load double, ptr %seq_fps.i, align 8
  %cmp94.i = fcmp ole double %33, 0.000000e+00
  %or.cond691.i = select i1 %cmp91.i, i1 true, i1 %cmp94.i, !dbg !725
  br i1 %or.cond691.i, label %if.then96.i, label %if.end99.i, !dbg !725

if.then96.i:                                      ; preds = %lor.lhs.false90.i, %if.end84.i
  %34 = load ptr, ptr @stderr, align 8, !dbg !726
  %call98.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.15, i32 noundef %num.11029.i, ptr noundef nonnull %buff.i) #17, !dbg !728
  br label %cleanup342.thread.i, !dbg !729

if.end99.i:                                       ; preds = %lor.lhs.false90.i
    #dbg_value(i32 %31, !521, !DIExpression(), !555)
    #dbg_value(i32 %32, !522, !DIExpression(), !555)
  %35 = load i32, ptr %auto_timebase_den121, align 8, !dbg !730
  %tobool.not.i = icmp eq i32 %35, 0, !dbg !732
  br i1 %tobool.not.i, label %lor.lhs.false100.i, label %if.then102.i, !dbg !733

lor.lhs.false100.i:                               ; preds = %if.end99.i
  %36 = load i32, ptr %auto_timebase_num117, align 4, !dbg !734
  %tobool101.not.i = icmp eq i32 %36, 0, !dbg !735
  br i1 %tobool101.not.i, label %for.inc105.i, label %if.then102.i, !dbg !736

if.then102.i:                                     ; preds = %lor.lhs.false100.i, %if.end99.i
  %inc103.i = add nsw i32 %seq_num.01028.i, 1, !dbg !737
    #dbg_value(i32 %inc103.i, !508, !DIExpression(), !550)
  br label %for.inc105.i, !dbg !737

for.inc105.i:                                     ; preds = %if.then102.i, %lor.lhs.false100.i, %if.then70.i, %if.then65.i
  %prev_start.1.i = phi i32 [ %prev_start.01026.i, %if.then70.i ], [ %prev_start.01026.i, %if.then65.i ], [ %31, %if.then102.i ], [ %31, %lor.lhs.false100.i ], !dbg !555
  %prev_end.1.i = phi i32 [ %prev_end.01027.i, %if.then70.i ], [ %prev_end.01027.i, %if.then65.i ], [ %32, %if.then102.i ], [ %32, %lor.lhs.false100.i ], !dbg !555
  %seq_num.1.i = phi i32 [ %seq_num.01028.i, %if.then70.i ], [ %seq_num.01028.i, %if.then65.i ], [ %inc103.i, %if.then102.i ], [ %seq_num.01028.i, %lor.lhs.false100.i ], !dbg !738
    #dbg_value(i32 %seq_num.1.i, !508, !DIExpression(), !550)
    #dbg_value(i32 %prev_end.1.i, !522, !DIExpression(), !555)
    #dbg_value(i32 %prev_start.1.i, !521, !DIExpression(), !555)
  %inc106.i = add nuw nsw i32 %num.11029.i, 1, !dbg !739
    #dbg_value(i32 %inc106.i, !507, !DIExpression(), !550)
  %call47.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38), !dbg !692
  %cmp48.not.i = icmp eq ptr %call47.i, null, !dbg !695
  br i1 %cmp48.not.i, label %for.end107.i, label %for.body50.i, !dbg !696, !llvm.loop !740

for.end107.i:                                     ; preds = %for.inc105.i, %if.end43.i
  %seq_num.0.lcssa.i = phi i32 [ 0, %if.end43.i ], [ %seq_num.1.i, %for.inc105.i ], !dbg !742
  %37 = load i32, ptr %stored_pts_num.i, align 4, !dbg !743
  %tobool109.not.i = icmp eq i32 %37, 0, !dbg !745
  %.pre1102.i = load i32, ptr %seek5, align 8, !dbg !746
  br i1 %tobool109.not.i, label %if.then110.i, label %if.end115.i, !dbg !747

if.then110.i:                                     ; preds = %for.end107.i
  %38 = load i32, ptr %end.i, align 4, !dbg !748
  %reass.sub = sub i32 %38, %.pre1102.i, !dbg !749
  %sub113.i = add i32 %reass.sub, 1, !dbg !749
  store i32 %sub113.i, ptr %stored_pts_num.i, align 4, !dbg !750
  br label %if.end115.i, !dbg !751

if.end115.i:                                      ; preds = %if.then110.i, %for.end107.i
  %39 = phi i32 [ %sub113.i, %if.then110.i ], [ %37, %for.end107.i ], !dbg !752
  %add118.i = add nsw i32 %39, %.pre1102.i, !dbg !753
    #dbg_value(i32 %add118.i, !509, !DIExpression(), !550)
  %call119.i = call i32 @fseek(ptr noundef %call38, i64 noundef %call44.i, i32 noundef 0), !dbg !754
  %conv120.i = sext i32 %add118.i to i64, !dbg !755
  %mul.i = shl nsw i64 %conv120.i, 3, !dbg !756
  %call121.i = call noalias ptr @malloc(i64 noundef %mul.i) #14, !dbg !757
    #dbg_value(ptr %call121.i, !511, !DIExpression(), !550)
  %tobool122.not.i = icmp eq ptr %call121.i, null, !dbg !758
  br i1 %tobool122.not.i, label %cleanup342.thread.i, label %if.end124.i, !dbg !760

if.end124.i:                                      ; preds = %if.end115.i
  %40 = load i32, ptr %auto_timebase_den121, align 8, !dbg !761
  %tobool126.not.i = icmp eq i32 %40, 0, !dbg !763
  br i1 %tobool126.not.i, label %lor.lhs.false127.i, label %if.then130.i, !dbg !764

lor.lhs.false127.i:                               ; preds = %if.end124.i
  %41 = load i32, ptr %auto_timebase_num117, align 4, !dbg !765
  %tobool129.not.i = icmp eq i32 %41, 0, !dbg !766
  br i1 %tobool129.not.i, label %if.end138.i, label %if.then130.i, !dbg !767

if.then130.i:                                     ; preds = %lor.lhs.false127.i, %if.end124.i
  %add131.i = add nsw i32 %seq_num.0.lcssa.i, 1, !dbg !768
  %conv132.i = sext i32 %add131.i to i64, !dbg !770
  %mul133.i = shl nsw i64 %conv132.i, 3, !dbg !771
  %call134.i = call noalias ptr @malloc(i64 noundef %mul133.i) #14, !dbg !772
    #dbg_value(ptr %call134.i, !513, !DIExpression(), !550)
  %tobool135.not.i = icmp eq ptr %call134.i, null, !dbg !773
  br i1 %tobool135.not.i, label %cleanup342.thread949.i, label %if.end138.i, !dbg !775

if.end138.i:                                      ; preds = %if.then130.i, %lor.lhs.false127.i
  %fpss.0.i = phi ptr [ %call134.i, %if.then130.i ], [ null, %lor.lhs.false127.i ], !dbg !550
    #dbg_value(ptr %fpss.0.i, !513, !DIExpression(), !550)
  %42 = load double, ptr %assume_fps6.i, align 8, !dbg !776
  %call140.i = call fastcc double @correct_fps(double noundef %42, ptr noundef nonnull %call), !dbg !777
    #dbg_value(double %call140.i, !517, !DIExpression(), !555)
  %cmp141.i = fcmp olt double %call140.i, 0.000000e+00, !dbg !778
  br i1 %cmp141.i, label %cleanup342.thread949.i, label %if.end144.i, !dbg !780

if.end144.i:                                      ; preds = %if.end138.i
  store double 0.000000e+00, ptr %call121.i, align 8, !dbg !781
    #dbg_value(i32 0, !508, !DIExpression(), !550)
    #dbg_value(i32 0, !507, !DIExpression(), !550)
  %sub147.i = add nsw i32 %add118.i, -1
  %cmp1481049.i = icmp sgt i32 %add118.i, 1
  br i1 %cmp1481049.i, label %for.body150.lr.ph.lr.ph.i, label %for.end230.i, !dbg !782

for.body150.lr.ph.lr.ph.i:                        ; preds = %if.end144.i
  %div.i = fdiv double 1.000000e+00, %call140.i
  %43 = zext nneg i32 %sub147.i to i64, !dbg !782
  br label %for.body150.us.preheader.i, !dbg !782

for.body150.us.preheader.i:                       ; preds = %if.end229.i, %for.body150.lr.ph.lr.ph.i
  %num.2.ph1051.i = phi i32 [ 0, %for.body150.lr.ph.lr.ph.i ], [ %num.5.i, %if.end229.i ]
  %seq_num.2.ph1050.i = phi i32 [ 0, %for.body150.lr.ph.lr.ph.i ], [ %seq_num.4.i, %if.end229.i ]
    #dbg_value(i32 %num.2.ph1051.i, !507, !DIExpression(), !550)
    #dbg_value(i32 %seq_num.2.ph1050.i, !508, !DIExpression(), !550)
  br label %for.body150.us.i, !dbg !784

for.body150.us.i:                                 ; preds = %for.body150.us.i.backedge, %for.body150.us.preheader.i
  %call152.us.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38), !dbg !788
  %44 = load i8, ptr %buff.i, align 16, !dbg !789
  switch i8 %44, label %if.end168.i [
    i8 35, label %for.body150.us.i.backedge
    i8 13, label %for.body150.us.i.backedge
    i8 10, label %for.body150.us.i.backedge
  ], !dbg !784

for.body150.us.i.backedge:                        ; preds = %for.body150.us.i, %for.body150.us.i, %for.body150.us.i
  br label %for.body150.us.i, !dbg !788

if.end168.i:                                      ; preds = %for.body150.us.i
  %call170.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, ptr noundef nonnull %seq_fps.i) #16, !dbg !790
    #dbg_value(i32 %call170.i, !505, !DIExpression(), !550)
  %cmp171.not.i = icmp eq i32 %call170.i, 3, !dbg !791
  br i1 %cmp171.not.i, label %if.end168.if.end175_crit_edge.i, label %if.then173.i, !dbg !793

if.end168.if.end175_crit_edge.i:                  ; preds = %if.end168.i
  %.pre1103.i = load i32, ptr %start.i, align 4
  br label %if.end175.i, !dbg !793

if.then173.i:                                     ; preds = %if.end168.i
  store i32 %sub147.i, ptr %end.i, align 4, !dbg !794, !DIAssignID !795
    #dbg_assign(i32 poison, !520, !DIExpression(), !795, ptr %end.i, !DIExpression(), !555)
  store i32 %sub147.i, ptr %start.i, align 4, !dbg !796, !DIAssignID !797
    #dbg_assign(i32 poison, !519, !DIExpression(), !797, ptr %start.i, !DIExpression(), !555)
  br label %if.end175.i, !dbg !798

if.end175.i:                                      ; preds = %if.then173.i, %if.end168.if.end175_crit_edge.i
  %45 = phi i32 [ %.pre1103.i, %if.end168.if.end175_crit_edge.i ], [ %sub147.i, %if.then173.i ]
    #dbg_value(i32 %num.2.ph1051.i, !507, !DIExpression(), !550)
  %cmp1771040.i = icmp slt i32 %num.2.ph1051.i, %45, !dbg !799
  %cmp1801041.i = icmp slt i32 %num.2.ph1051.i, %sub147.i, !dbg !802
  %46 = and i1 %cmp1801041.i, %cmp1771040.i, !dbg !802
  br i1 %46, label %for.body182.preheader.i, label %for.end190.i, !dbg !803

for.body182.preheader.i:                          ; preds = %if.end175.i
  %47 = sext i32 %num.2.ph1051.i to i64, !dbg !803
  %48 = sext i32 %45 to i64, !dbg !803
  %arrayidx183.phi.trans.insert.i = getelementptr inbounds double, ptr %call121.i, i64 %47
  %.pre1104.i = load double, ptr %arrayidx183.phi.trans.insert.i, align 8, !dbg !804
  br label %for.body182.i, !dbg !803

for.body182.i:                                    ; preds = %for.body182.i, %for.body182.preheader.i
  %49 = phi double [ %.pre1104.i, %for.body182.preheader.i ], [ %add184.i, %for.body182.i ], !dbg !804
  %indvars.iv1084.i = phi i64 [ %47, %for.body182.preheader.i ], [ %indvars.iv.next1085.i, %for.body182.i ]
    #dbg_value(i64 %indvars.iv1084.i, !507, !DIExpression(), !550)
  %add184.i = fadd double %div.i, %49, !dbg !805
  %indvars.iv.next1085.i = add nsw i64 %indvars.iv1084.i, 1, !dbg !806
  %arrayidx187.i = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1085.i, !dbg !807
  store double %add184.i, ptr %arrayidx187.i, align 8, !dbg !808
    #dbg_value(i64 %indvars.iv.next1085.i, !507, !DIExpression(), !550)
  %cmp177.i = icmp slt i64 %indvars.iv.next1085.i, %48, !dbg !799
  %cmp180.i = icmp slt i64 %indvars.iv.next1085.i, %43, !dbg !802
  %50 = and i1 %cmp180.i, %cmp177.i, !dbg !802
  br i1 %50, label %for.body182.i, label %for.end190.loopexit.i, !dbg !803, !llvm.loop !809

for.end190.loopexit.i:                            ; preds = %for.body182.i
  %51 = trunc nsw i64 %indvars.iv.next1085.i to i32, !dbg !811
  br i1 %cmp180.i, label %if.then194.i, label %if.end229.i, !dbg !811

for.end190.i:                                     ; preds = %if.end175.i
  br i1 %cmp1801041.i, label %if.then194.i, label %if.end229.i, !dbg !811

if.then194.i:                                     ; preds = %for.end190.i, %for.end190.loopexit.i
  %52 = load i32, ptr %auto_timebase_den121, align 8, !dbg !812
  %tobool196.not.i = icmp eq i32 %52, 0, !dbg !816
  br i1 %tobool196.not.i, label %lor.lhs.false197.i, label %if.then200.i, !dbg !817

lor.lhs.false197.i:                               ; preds = %if.then194.i
  %53 = load i32, ptr %auto_timebase_num117, align 4, !dbg !818
  %tobool199.not.i = icmp eq i32 %53, 0, !dbg !819
  br i1 %tobool199.not.i, label %lor.lhs.false197.if.end204_crit_edge.i, label %if.then200.i, !dbg !820

lor.lhs.false197.if.end204_crit_edge.i:           ; preds = %lor.lhs.false197.i
  %.pre1105.i = load double, ptr %seq_fps.i, align 8, !dbg !821
  br label %if.end204.i, !dbg !820

if.then200.i:                                     ; preds = %lor.lhs.false197.i, %if.then194.i
  %54 = load double, ptr %seq_fps.i, align 8, !dbg !822
  %inc201.i = add nsw i32 %seq_num.2.ph1050.i, 1, !dbg !823
    #dbg_value(i32 %inc201.i, !508, !DIExpression(), !550)
  %idxprom202.i = sext i32 %seq_num.2.ph1050.i to i64, !dbg !824
  %arrayidx203.i = getelementptr inbounds double, ptr %fpss.0.i, i64 %idxprom202.i, !dbg !824
  store double %54, ptr %arrayidx203.i, align 8, !dbg !825
  br label %if.end204.i, !dbg !824

if.end204.i:                                      ; preds = %if.then200.i, %lor.lhs.false197.if.end204_crit_edge.i
  %55 = phi double [ %54, %if.then200.i ], [ %.pre1105.i, %lor.lhs.false197.if.end204_crit_edge.i ], !dbg !821
  %seq_num.3.i = phi i32 [ %inc201.i, %if.then200.i ], [ %seq_num.2.ph1050.i, %lor.lhs.false197.if.end204_crit_edge.i ], !dbg !826
    #dbg_value(i32 %seq_num.3.i, !508, !DIExpression(), !550)
  %call205.i = call fastcc double @correct_fps(double noundef %55, ptr noundef nonnull %call), !dbg !827
  store double %call205.i, ptr %seq_fps.i, align 8, !dbg !828, !DIAssignID !829
    #dbg_assign(double %call205.i, !518, !DIExpression(), !829, ptr %seq_fps.i, !DIExpression(), !555)
  %cmp206.i = fcmp olt double %call205.i, 0.000000e+00, !dbg !830
  br i1 %cmp206.i, label %cleanup342.thread949.i, label %if.end209.i, !dbg !832

if.end209.i:                                      ; preds = %if.end204.i
  %56 = load i32, ptr %start.i, align 4, !dbg !833
    #dbg_value(i32 %56, !507, !DIExpression(), !550)
  %57 = load i32, ptr %end.i, align 4
  %cmp2111045.i = icmp sle i32 %56, %57, !dbg !835
  %cmp2151046.i = icmp slt i32 %56, %sub147.i, !dbg !837
  %58 = and i1 %cmp2151046.i, %cmp2111045.i, !dbg !837
  br i1 %58, label %for.body218.lr.ph.i, label %if.end229.i, !dbg !838

for.body218.lr.ph.i:                              ; preds = %if.end209.i
  %div221.i = fdiv double 1.000000e+00, %call205.i
  %59 = sext i32 %56 to i64, !dbg !838
  %60 = sext i32 %57 to i64, !dbg !838
  %arrayidx220.phi.trans.insert.i = getelementptr inbounds double, ptr %call121.i, i64 %59
  %.pre1106.i = load double, ptr %arrayidx220.phi.trans.insert.i, align 8, !dbg !839
  br label %for.body218.i, !dbg !838

for.body218.i:                                    ; preds = %for.body218.i, %for.body218.lr.ph.i
  %61 = phi double [ %.pre1106.i, %for.body218.lr.ph.i ], [ %add222.i, %for.body218.i ], !dbg !839
  %indvars.iv1087.i = phi i64 [ %59, %for.body218.lr.ph.i ], [ %indvars.iv.next1088.i, %for.body218.i ]
    #dbg_value(i64 %indvars.iv1087.i, !507, !DIExpression(), !550)
  %add222.i = fadd double %div221.i, %61, !dbg !840
  %indvars.iv.next1088.i = add nsw i64 %indvars.iv1087.i, 1, !dbg !841
  %arrayidx225.i = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1088.i, !dbg !842
  store double %add222.i, ptr %arrayidx225.i, align 8, !dbg !843
    #dbg_value(i64 %indvars.iv.next1088.i, !507, !DIExpression(), !550)
  %cmp211.i = icmp slt i64 %indvars.iv1087.i, %60, !dbg !835
  %cmp215.i = icmp slt i64 %indvars.iv.next1088.i, %43, !dbg !837
  %62 = and i1 %cmp211.i, %cmp215.i, !dbg !837
  br i1 %62, label %for.body218.i, label %if.end229.loopexit.i, !dbg !838, !llvm.loop !844

if.end229.loopexit.i:                             ; preds = %for.body218.i
  %63 = trunc nsw i64 %indvars.iv.next1088.i to i32
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.end229.loopexit.i, %if.end209.i, %for.end190.i, %for.end190.loopexit.i
  %seq_num.4.i = phi i32 [ %seq_num.2.ph1050.i, %for.end190.i ], [ %seq_num.3.i, %if.end209.i ], [ %seq_num.3.i, %if.end229.loopexit.i ], [ %seq_num.2.ph1050.i, %for.end190.loopexit.i ], !dbg !826
  %num.5.i = phi i32 [ %num.2.ph1051.i, %for.end190.i ], [ %56, %if.end209.i ], [ %63, %if.end229.loopexit.i ], [ %51, %for.end190.loopexit.i ], !dbg !826
    #dbg_value(i32 %num.5.i, !507, !DIExpression(), !550)
    #dbg_value(i32 %seq_num.4.i, !508, !DIExpression(), !550)
  %cmp148.i = icmp slt i32 %num.5.i, %sub147.i
  br i1 %cmp148.i, label %for.body150.us.preheader.i, label %for.end230.i, !dbg !782, !llvm.loop !846

for.end230.i:                                     ; preds = %if.end229.i, %if.end144.i
  %seq_num.2.ph.lcssa985.i = phi i32 [ 0, %if.end144.i ], [ %seq_num.4.i, %if.end229.i ]
  %64 = load i32, ptr %auto_timebase_den121, align 8, !dbg !848
  %tobool232.not.i = icmp eq i32 %64, 0, !dbg !850
  br i1 %tobool232.not.i, label %lor.lhs.false233.i, label %if.then336.i, !dbg !851

lor.lhs.false233.i:                               ; preds = %for.end230.i
  %65 = load i32, ptr %auto_timebase_num117, align 4, !dbg !852
  %tobool235.not.i = icmp eq i32 %65, 0, !dbg !853
  br i1 %tobool235.not.i, label %if.end334.i, label %if.then246.i, !dbg !854

if.then246.i:                                     ; preds = %lor.lhs.false233.i
  %66 = load double, ptr %assume_fps6.i, align 8, !dbg !855
  %idxprom238.i = sext i32 %seq_num.2.ph.lcssa985.i to i64, !dbg !856
  %arrayidx239.i = getelementptr inbounds double, ptr %fpss.0.i, i64 %idxprom238.i, !dbg !856
  store double %66, ptr %arrayidx239.i, align 8, !dbg !857
  %add247.i = add nsw i32 %seq_num.2.ph.lcssa985.i, 1, !dbg !858
  %call248.i = call fastcc i32 @try_mkv_timebase_den(ptr noundef %fpss.0.i, ptr noundef nonnull %call, i32 noundef %add247.i), !dbg !860
  %cmp249.i = icmp sgt i32 %call248.i, -1, !dbg !861
  br i1 %cmp249.i, label %if.end252.i, label %cleanup342.thread949.i, !dbg !862

if.end252.i:                                      ; preds = %if.then246.i
  %call253.i = call i32 @fseek(ptr noundef %call38, i64 noundef %call44.i, i32 noundef 0), !dbg !863
  %67 = load double, ptr %assume_fps6.i, align 8, !dbg !864
    #dbg_value(double %67, !865, !DIExpression(), !871)
    #dbg_value(ptr undef, !870, !DIExpression(), !871)
  %call.i.i = call double @log10(double noundef %67) #16, !dbg !873
  %68 = call double @llvm.floor.f64(double %call.i.i), !dbg !874
  %call1.i.i = call double @pow(double noundef 1.000000e+01, double noundef %68) #16, !dbg !875
    #dbg_value(double %call1.i.i, !523, !DIExpression(), !876)
  %div.i.i = fdiv double %67, %call1.i.i, !dbg !877
    #dbg_value(double %div.i.i, !526, !DIExpression(), !876)
  %div256.i = fdiv double 1.000000e+09, %div.i.i, !dbg !878
  %69 = call double @llvm.round.f64(double %div256.i), !dbg !879
  %div257.i = fdiv double %69, %call1.i.i, !dbg !880
  %div258.i = fdiv double 1.000000e+09, %div257.i, !dbg !881
    #dbg_value(double %div258.i, !517, !DIExpression(), !555)
    #dbg_value(i32 0, !507, !DIExpression(), !550)
  br i1 %cmp1481049.i, label %for.body263.lr.ph.lr.ph.i, label %if.then336.i, !dbg !882

for.body263.lr.ph.lr.ph.i:                        ; preds = %if.end252.i
  %div304.i = fdiv double 1.000000e+00, %div258.i
  %70 = zext nneg i32 %sub147.i to i64, !dbg !882
  %invariant.gep = getelementptr i8, ptr %call121.i, i64 8
  %invariant.gep180 = getelementptr i8, ptr %call121.i, i64 16
  %invariant.gep182 = getelementptr i8, ptr %call121.i, i64 24
  br label %for.body263.us.preheader.i, !dbg !882

for.cond259.loopexit.loopexit.i:                  ; preds = %for.body320.i
  %71 = trunc nsw i64 %indvars.iv.next1096.i to i32
  br label %for.cond259.loopexit.i

for.cond259.loopexit.i:                           ; preds = %for.cond312.preheader.i, %for.cond259.loopexit.loopexit.i
  %num.8.lcssa.i = phi i32 [ %76, %for.cond312.preheader.i ], [ %71, %for.cond259.loopexit.loopexit.i ], !dbg !884
  %cmp261.i = icmp slt i32 %num.8.lcssa.i, %sub147.i
    #dbg_value(i32 %num.8.lcssa.i, !507, !DIExpression(), !550)
  br i1 %cmp261.i, label %for.body263.us.preheader.i, label %if.end334.i, !dbg !882

for.body263.us.preheader.i:                       ; preds = %for.cond259.loopexit.i, %for.body263.lr.ph.lr.ph.i
  %num.6.ph1062.i = phi i32 [ 0, %for.body263.lr.ph.lr.ph.i ], [ %num.8.lcssa.i, %for.cond259.loopexit.i ]
    #dbg_value(i32 %num.6.ph1062.i, !507, !DIExpression(), !550)
  br label %for.body263.us.i, !dbg !888

for.body263.us.i:                                 ; preds = %for.body263.us.i.backedge, %for.body263.us.preheader.i
  %call265.us.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38), !dbg !890
  %72 = load i8, ptr %buff.i, align 16, !dbg !891
  switch i8 %72, label %if.end281.i [
    i8 35, label %for.body263.us.i.backedge
    i8 13, label %for.body263.us.i.backedge
    i8 10, label %for.body263.us.i.backedge
  ], !dbg !888

for.body263.us.i.backedge:                        ; preds = %for.body263.us.i, %for.body263.us.i, %for.body263.us.i
  br label %for.body263.us.i, !dbg !890

if.end281.i:                                      ; preds = %for.body263.us.i
  %call283.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, ptr noundef nonnull %seq_fps.i) #16, !dbg !892
    #dbg_value(i32 %call283.i, !505, !DIExpression(), !550)
  %cmp284.not.i = icmp eq i32 %call283.i, 3, !dbg !893
  br i1 %cmp284.not.i, label %if.end288.i, label %if.then286.i, !dbg !895

if.then286.i:                                     ; preds = %if.end281.i
  store i32 %sub147.i, ptr %end.i, align 4, !dbg !896, !DIAssignID !897
    #dbg_assign(i32 %sub147.i, !520, !DIExpression(), !897, ptr %end.i, !DIExpression(), !555)
  store i32 %sub147.i, ptr %start.i, align 4, !dbg !898, !DIAssignID !899
    #dbg_assign(i32 %sub147.i, !519, !DIExpression(), !899, ptr %start.i, !DIExpression(), !555)
  br label %if.end288.i, !dbg !900

if.end288.i:                                      ; preds = %if.then286.i, %if.end281.i
  %73 = load double, ptr %seq_fps.i, align 8, !dbg !901
    #dbg_value(double %73, !865, !DIExpression(), !902)
    #dbg_value(ptr undef, !870, !DIExpression(), !902)
  %call.i929.i = call double @log10(double noundef %73) #16, !dbg !904
  %74 = call double @llvm.floor.f64(double %call.i929.i), !dbg !905
  %call1.i930.i = call double @pow(double noundef 1.000000e+01, double noundef %74) #16, !dbg !906
    #dbg_value(double %call1.i930.i, !523, !DIExpression(), !876)
  %div.i931.i = fdiv double %73, %call1.i930.i, !dbg !907
    #dbg_value(double %div.i931.i, !527, !DIExpression(), !876)
  %div290.i = fdiv double 1.000000e+09, %div.i931.i, !dbg !908
  %75 = call double @llvm.round.f64(double %div290.i), !dbg !909
  %div291.i = fdiv double %75, %call1.i930.i, !dbg !910
  %div292.i = fdiv double 1.000000e+09, %div291.i, !dbg !911
  store double %div292.i, ptr %seq_fps.i, align 8, !dbg !912, !DIAssignID !913
    #dbg_assign(double %div292.i, !518, !DIExpression(), !913, ptr %seq_fps.i, !DIExpression(), !555)
  %76 = load i32, ptr %start.i, align 4
  %invariant.smin.i = call i32 @llvm.smin.i32(i32 %sub147.i, i32 %76), !dbg !914
    #dbg_value(i32 %num.6.ph1062.i, !507, !DIExpression(), !550)
  %77 = icmp slt i32 %num.6.ph1062.i, %invariant.smin.i, !dbg !915
  br i1 %77, label %for.body301.preheader.i, label %for.cond312.preheader.i, !dbg !918

for.body301.preheader.i:                          ; preds = %if.end288.i
  %78 = sext i32 %num.6.ph1062.i to i64, !dbg !918
  %wide.trip.count1093.i = sext i32 %invariant.smin.i to i64, !dbg !915
  %arrayidx303.phi.trans.insert.i = getelementptr inbounds double, ptr %call121.i, i64 %78
  %.pre1107.i = load double, ptr %arrayidx303.phi.trans.insert.i, align 8, !dbg !919
  %79 = sub nsw i64 %wide.trip.count1093.i, %78, !dbg !918
  %xtraiter = and i64 %79, 3, !dbg !918
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !918
  br i1 %lcmp.mod.not, label %for.body301.i.prol.loopexit, label %for.body301.i.prol, !dbg !918

for.body301.i.prol:                               ; preds = %for.body301.preheader.i, %for.body301.i.prol
  %80 = phi double [ %add305.i.prol, %for.body301.i.prol ], [ %.pre1107.i, %for.body301.preheader.i ], !dbg !919
  %indvars.iv1090.i.prol = phi i64 [ %indvars.iv.next1091.i.prol, %for.body301.i.prol ], [ %78, %for.body301.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body301.i.prol ], [ 0, %for.body301.preheader.i ]
    #dbg_value(i64 %indvars.iv1090.i.prol, !507, !DIExpression(), !550)
  %add305.i.prol = fadd double %div304.i, %80, !dbg !920
  %indvars.iv.next1091.i.prol = add nsw i64 %indvars.iv1090.i.prol, 1, !dbg !921
  %arrayidx308.i.prol = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1091.i.prol, !dbg !922
  store double %add305.i.prol, ptr %arrayidx308.i.prol, align 8, !dbg !923
    #dbg_value(i64 %indvars.iv.next1091.i.prol, !507, !DIExpression(), !550)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !918
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !918
  br i1 %prol.iter.cmp.not, label %for.body301.i.prol.loopexit, label %for.body301.i.prol, !dbg !918, !llvm.loop !924

for.body301.i.prol.loopexit:                      ; preds = %for.body301.i.prol, %for.body301.preheader.i
  %.unr = phi double [ %.pre1107.i, %for.body301.preheader.i ], [ %add305.i.prol, %for.body301.i.prol ]
  %indvars.iv1090.i.unr = phi i64 [ %78, %for.body301.preheader.i ], [ %indvars.iv.next1091.i.prol, %for.body301.i.prol ]
  %81 = sub nsw i64 %78, %wide.trip.count1093.i, !dbg !918
  %82 = icmp ugt i64 %81, -4, !dbg !918
  br i1 %82, label %for.cond312.preheader.i, label %for.body301.i, !dbg !918

for.cond312.preheader.i:                          ; preds = %for.body301.i.prol.loopexit, %for.body301.i, %if.end288.i
  %83 = load i32, ptr %end.i, align 4
    #dbg_value(i32 poison, !507, !DIExpression(), !550)
  %cmp3131057.i = icmp sle i32 %76, %83, !dbg !926
  %cmp3171058.i = icmp slt i32 %76, %sub147.i, !dbg !928
  %84 = and i1 %cmp3171058.i, %cmp3131057.i, !dbg !928
  br i1 %84, label %for.body320.lr.ph.i, label %for.cond259.loopexit.i, !dbg !929, !llvm.loop !930

for.body320.lr.ph.i:                              ; preds = %for.cond312.preheader.i
  %div323.i = fdiv double 1.000000e+00, %div292.i
  %85 = sext i32 %76 to i64, !dbg !929
  %86 = sext i32 %83 to i64, !dbg !929
  %arrayidx322.phi.trans.insert.i = getelementptr inbounds double, ptr %call121.i, i64 %85
  %.pre1108.i = load double, ptr %arrayidx322.phi.trans.insert.i, align 8, !dbg !932
  br label %for.body320.i, !dbg !929

for.body301.i:                                    ; preds = %for.body301.i.prol.loopexit, %for.body301.i
  %87 = phi double [ %add305.i.3, %for.body301.i ], [ %.unr, %for.body301.i.prol.loopexit ], !dbg !919
  %indvars.iv1090.i = phi i64 [ %indvars.iv.next1091.i.3, %for.body301.i ], [ %indvars.iv1090.i.unr, %for.body301.i.prol.loopexit ]
    #dbg_value(i64 %indvars.iv1090.i, !507, !DIExpression(), !550)
  %add305.i = fadd double %div304.i, %87, !dbg !920
  %gep = getelementptr double, ptr %invariant.gep, i64 %indvars.iv1090.i, !dbg !922
  store double %add305.i, ptr %gep, align 8, !dbg !923
    #dbg_value(i64 %indvars.iv1090.i, !507, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !550)
  %add305.i.1 = fadd double %div304.i, %add305.i, !dbg !920
  %gep181 = getelementptr double, ptr %invariant.gep180, i64 %indvars.iv1090.i, !dbg !922
  store double %add305.i.1, ptr %gep181, align 8, !dbg !923
    #dbg_value(i64 %indvars.iv1090.i, !507, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !550)
  %add305.i.2 = fadd double %div304.i, %add305.i.1, !dbg !920
  %gep183 = getelementptr double, ptr %invariant.gep182, i64 %indvars.iv1090.i, !dbg !922
  store double %add305.i.2, ptr %gep183, align 8, !dbg !923
    #dbg_value(i64 %indvars.iv1090.i, !507, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !550)
  %add305.i.3 = fadd double %div304.i, %add305.i.2, !dbg !920
  %indvars.iv.next1091.i.3 = add nsw i64 %indvars.iv1090.i, 4, !dbg !921
  %arrayidx308.i.3 = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1091.i.3, !dbg !922
  store double %add305.i.3, ptr %arrayidx308.i.3, align 8, !dbg !923
    #dbg_value(i64 %indvars.iv.next1091.i.3, !507, !DIExpression(), !550)
  %exitcond1094.not.i.3 = icmp eq i64 %indvars.iv.next1091.i.3, %wide.trip.count1093.i, !dbg !915
  br i1 %exitcond1094.not.i.3, label %for.cond312.preheader.i, label %for.body301.i, !dbg !918, !llvm.loop !933

for.body320.i:                                    ; preds = %for.body320.i, %for.body320.lr.ph.i
  %88 = phi double [ %.pre1108.i, %for.body320.lr.ph.i ], [ %add324.i, %for.body320.i ], !dbg !932
  %indvars.iv1095.i = phi i64 [ %85, %for.body320.lr.ph.i ], [ %indvars.iv.next1096.i, %for.body320.i ]
    #dbg_value(i64 %indvars.iv1095.i, !507, !DIExpression(), !550)
  %add324.i = fadd double %div323.i, %88, !dbg !935
  %indvars.iv.next1096.i = add nsw i64 %indvars.iv1095.i, 1, !dbg !936
  %arrayidx327.i = getelementptr inbounds double, ptr %call121.i, i64 %indvars.iv.next1096.i, !dbg !937
  store double %add324.i, ptr %arrayidx327.i, align 8, !dbg !938
    #dbg_value(i64 %indvars.iv.next1096.i, !507, !DIExpression(), !550)
  %cmp313.i = icmp slt i64 %indvars.iv1095.i, %86, !dbg !926
  %cmp317.i = icmp slt i64 %indvars.iv.next1096.i, %70, !dbg !928
  %89 = and i1 %cmp313.i, %cmp317.i, !dbg !928
  br i1 %89, label %for.body320.i, label %for.cond259.loopexit.loopexit.i, !dbg !929, !llvm.loop !939

if.end334.i:                                      ; preds = %for.cond259.loopexit.i, %lor.lhs.false233.i
  %assume_fps.1.i = phi double [ %call140.i, %lor.lhs.false233.i ], [ %div258.i, %for.cond259.loopexit.i ], !dbg !941
    #dbg_value(double %assume_fps.1.i, !517, !DIExpression(), !555)
  %tobool335.not.i = icmp eq ptr %fpss.0.i, null, !dbg !942
  br i1 %tobool335.not.i, label %if.end337.i, label %if.then336.i, !dbg !944

if.then336.i:                                     ; preds = %if.end334.i, %if.end252.i, %for.end230.i
  %assume_fps.1943.i = phi double [ %assume_fps.1.i, %if.end334.i ], [ %div258.i, %if.end252.i ], [ %call140.i, %for.end230.i ]
  call void @free(ptr noundef nonnull %fpss.0.i) #16, !dbg !945
  br label %if.end337.i, !dbg !945

if.end337.i:                                      ; preds = %if.then336.i, %if.end334.i
  %assume_fps.1944.i = phi double [ %assume_fps.1943.i, %if.then336.i ], [ %assume_fps.1.i, %if.end334.i ]
  store double %assume_fps.1944.i, ptr %assume_fps6.i, align 8, !dbg !946
  %idxprom340.i = sext i32 %sub147.i to i64, !dbg !947
  %arrayidx341.i = getelementptr inbounds double, ptr %call121.i, i64 %idxprom340.i, !dbg !947
  %90 = load double, ptr %arrayidx341.i, align 8, !dbg !947
  %last_timecode.i = getelementptr inbounds i8, ptr %call, i64 120, !dbg !948
  store double %90, ptr %last_timecode.i, align 8, !dbg !949
    #dbg_value(ptr %call121.i, !511, !DIExpression(), !550)
    #dbg_value(ptr %fpss.0.i, !513, !DIExpression(), !550)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #16, !dbg !950
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #16, !dbg !950
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq_fps.i) #16, !dbg !950
  br label %if.end583.i

cleanup342.thread.i:                              ; preds = %if.end115.i, %if.then96.i, %if.then82.i, %if.then40.i, %if.then34.i
    #dbg_value(ptr poison, !511, !DIExpression(), !550)
    #dbg_value(ptr poison, !513, !DIExpression(), !550)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #16, !dbg !950
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #16, !dbg !950
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq_fps.i) #16, !dbg !950
  br label %if.then52

cleanup342.thread949.i:                           ; preds = %if.end204.i, %if.then246.i, %if.end138.i, %if.then130.i
  %fpss.1.ph.i = phi ptr [ %fpss.0.i, %if.end138.i ], [ null, %if.then130.i ], [ %fpss.0.i, %if.then246.i ], [ %fpss.0.i, %if.end204.i ]
    #dbg_value(ptr %call121.i, !511, !DIExpression(), !550)
    #dbg_value(ptr %fpss.1.ph.i, !513, !DIExpression(), !550)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #16, !dbg !950
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #16, !dbg !950
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq_fps.i) #16, !dbg !950
  br label %if.then671.i

if.else.i:                                        ; preds = %if.end.i
  %call352.i = call i64 @ftell(ptr noundef nonnull %call38), !dbg !951
    #dbg_value(i64 %call352.i, !528, !DIExpression(), !952)
  %stored_pts_num353.i = getelementptr inbounds i8, ptr %call, i64 100, !dbg !953
  store i32 0, ptr %stored_pts_num353.i, align 4, !dbg !954
    #dbg_value(i32 0, !507, !DIExpression(), !550)
  %call3559971001.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef nonnull %call38), !dbg !955
  %cmp356.not9981002.i = icmp eq ptr %call3559971001.i, null, !dbg !956
  br i1 %cmp356.not9981002.i, label %while.end.i, label %while.body.lr.ph.i, !dbg !957

while.body.lr.ph.i:                               ; preds = %if.else.i, %if.end376.i
  %num.9.ph1004.i = phi i32 [ %num.9999.i, %if.end376.i ], [ 0, %if.else.i ]
  %file_pos351.0.ph1003.i = phi i64 [ %file_pos351.1.i, %if.end376.i ], [ %call352.i, %if.else.i ]
    #dbg_value(i32 %num.9.ph1004.i, !507, !DIExpression(), !550)
    #dbg_value(i64 %file_pos351.0.ph1003.i, !528, !DIExpression(), !952)
  br label %while.body.i, !dbg !957

while.body.i:                                     ; preds = %if.end384.i, %while.body.lr.ph.i
  %num.9999.i = phi i32 [ %num.9.ph1004.i, %while.body.lr.ph.i ], [ %inc385.i, %if.end384.i ]
    #dbg_value(i32 %num.9999.i, !507, !DIExpression(), !550)
  %91 = load i8, ptr %buff.i, align 16, !dbg !958
  switch i8 %91, label %if.end377.i [
    i8 35, label %if.then372.i
    i8 13, label %if.then372.i
    i8 10, label %if.then372.i
  ], !dbg !961

if.then372.i:                                     ; preds = %while.body.i, %while.body.i, %while.body.i
  %tobool373.not.i = icmp eq i32 %num.9999.i, 0, !dbg !962
  br i1 %tobool373.not.i, label %if.then374.i, label %if.end376.i, !dbg !965

if.then374.i:                                     ; preds = %if.then372.i
  %call375.i = call i64 @ftell(ptr noundef %call38), !dbg !966
    #dbg_value(i64 %call375.i, !528, !DIExpression(), !952)
  br label %if.end376.i, !dbg !967

if.end376.i:                                      ; preds = %if.then374.i, %if.then372.i
  %file_pos351.1.i = phi i64 [ %file_pos351.0.ph1003.i, %if.then372.i ], [ %call375.i, %if.then374.i ], !dbg !952
    #dbg_value(i32 %num.9999.i, !507, !DIExpression(), !550)
    #dbg_value(i64 %file_pos351.1.i, !528, !DIExpression(), !952)
  %call355997.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38), !dbg !955
  %cmp356.not998.i = icmp eq ptr %call355997.i, null, !dbg !956
  br i1 %cmp356.not998.i, label %while.end.i, label %while.body.lr.ph.i, !dbg !957, !llvm.loop !968

if.end377.i:                                      ; preds = %while.body.i
  %92 = load i32, ptr %seek5, align 8, !dbg !970
  %cmp379.not.i = icmp slt i32 %num.9999.i, %92, !dbg !972
  br i1 %cmp379.not.i, label %if.end384.i, label %if.then381.i, !dbg !973

if.then381.i:                                     ; preds = %if.end377.i
  %93 = load i32, ptr %stored_pts_num353.i, align 4, !dbg !974
  %inc383.i = add nsw i32 %93, 1, !dbg !974
  store i32 %inc383.i, ptr %stored_pts_num353.i, align 4, !dbg !974
  br label %if.end384.i, !dbg !974

if.end384.i:                                      ; preds = %if.then381.i, %if.end377.i
  %inc385.i = add nsw i32 %num.9999.i, 1, !dbg !975
    #dbg_value(i32 %inc385.i, !507, !DIExpression(), !550)
    #dbg_value(i64 %file_pos351.0.ph1003.i, !528, !DIExpression(), !952)
  %call355.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38), !dbg !955
  %cmp356.not.i = icmp eq ptr %call355.i, null, !dbg !956
  br i1 %cmp356.not.i, label %while.end.i, label %while.body.i, !dbg !957, !llvm.loop !976

while.end.i:                                      ; preds = %if.end376.i, %if.end384.i, %if.else.i
  %file_pos351.0.ph.lcssa.i = phi i64 [ %call352.i, %if.else.i ], [ %file_pos351.0.ph1003.i, %if.end384.i ], [ %file_pos351.1.i, %if.end376.i ]
  %94 = load i32, ptr %stored_pts_num353.i, align 4, !dbg !977
  %95 = load i32, ptr %seek5, align 8, !dbg !978
  %add388.i = add nsw i32 %95, %94, !dbg !979
    #dbg_value(i32 %add388.i, !509, !DIExpression(), !550)
  %tobool389.not.i = icmp eq i32 %add388.i, 0, !dbg !980
  br i1 %tobool389.not.i, label %if.then390.i, label %if.end392.i, !dbg !982

if.then390.i:                                     ; preds = %while.end.i
  %96 = load ptr, ptr @stderr, align 8, !dbg !983
  %97 = call i64 @fwrite(ptr nonnull @.str.16, i64 59, i64 1, ptr %96) #15, !dbg !985
  br label %if.then52, !dbg !986

if.end392.i:                                      ; preds = %while.end.i
  %call393.i = call i32 @fseek(ptr noundef %call38, i64 noundef %file_pos351.0.ph.lcssa.i, i32 noundef 0), !dbg !987
  %conv394.i = sext i32 %add388.i to i64, !dbg !988
  %mul395.i = shl nsw i64 %conv394.i, 3, !dbg !989
  %call396.i = call noalias ptr @malloc(i64 noundef %mul395.i) #14, !dbg !990
    #dbg_value(ptr %call396.i, !511, !DIExpression(), !550)
  %tobool397.not.i = icmp eq ptr %call396.i, null, !dbg !991
  br i1 %tobool397.not.i, label %if.then52, label %if.end399.i, !dbg !993

if.end399.i:                                      ; preds = %if.end392.i
  %call401.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38), !dbg !994
  %call404.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %call396.i) #16, !dbg !995
    #dbg_value(i32 %call404.i, !505, !DIExpression(), !550)
  %cmp405.not.i = icmp eq i32 %call404.i, 1, !dbg !996
  br i1 %cmp405.not.i, label %for.cond410.preheader.i, label %if.then407.i, !dbg !998

for.cond410.preheader.i:                          ; preds = %if.end399.i
  %cmp4111006.i = icmp sgt i32 %add388.i, 1
  br i1 %cmp4111006.i, label %for.body413.lr.ph.preheader.i, label %for.end453.i, !dbg !999

for.body413.lr.ph.preheader.i:                    ; preds = %for.cond410.preheader.i
  %wide.trip.count.i = zext nneg i32 %add388.i to i64
  br label %for.body413.lr.ph.i, !dbg !999

if.then407.i:                                     ; preds = %if.end399.i
  %98 = load ptr, ptr @stderr, align 8, !dbg !1001
  %99 = call i64 @fwrite(ptr nonnull @.str.18, i64 51, i64 1, ptr %98) #15, !dbg !1003
  br label %if.then671.thread.i, !dbg !1004

if.end431.i:                                      ; preds = %for.body413.us.i, %for.body413.lr.ph.split.i
  %arrayidx434.i = getelementptr inbounds double, ptr %call396.i, i64 %indvars.iv.i, !dbg !1005
  %call435.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %arrayidx434.i) #16, !dbg !1008
    #dbg_value(i32 %call435.i, !505, !DIExpression(), !550)
  %100 = load double, ptr %arrayidx434.i, align 8, !dbg !1009
  %mul438.i = fmul double %100, 1.000000e-03, !dbg !1009
  store double %mul438.i, ptr %arrayidx434.i, align 8, !dbg !1009
  %cmp439.not.i = icmp eq i32 %call435.i, 1, !dbg !1010
  br i1 %cmp439.not.i, label %lor.lhs.false441.i, label %if.then449.i, !dbg !1012

lor.lhs.false441.i:                               ; preds = %if.end431.i
  %arrayidx446.i = getelementptr i8, ptr %arrayidx434.i, i64 -8, !dbg !1013
  %101 = load double, ptr %arrayidx446.i, align 8, !dbg !1013
  %cmp447.i = fcmp ugt double %mul438.i, %101, !dbg !1014
  br i1 %cmp447.i, label %if.end451.i, label %if.then449.i, !dbg !1015

if.then449.i:                                     ; preds = %lor.lhs.false441.i, %if.end431.i
  %102 = trunc nuw nsw i64 %indvars.iv.i to i32
  %103 = load ptr, ptr @stderr, align 8, !dbg !1016
  %call450.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.19, i32 noundef %102) #17, !dbg !1018
  br label %if.then671.thread.i, !dbg !1019

if.end451.i:                                      ; preds = %lor.lhs.false441.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1020
    #dbg_value(i64 %indvars.iv.next.i, !507, !DIExpression(), !550)
  %cmp411.i = icmp slt i64 %indvars.iv.next.i, %conv394.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end453.i, label %for.body413.lr.ph.i, !dbg !999, !llvm.loop !1021

for.body413.lr.ph.i:                              ; preds = %if.end451.i, %for.body413.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %for.body413.lr.ph.preheader.i ], [ %indvars.iv.next.i, %if.end451.i ]
  %cmp4111008.i = phi i1 [ true, %for.body413.lr.ph.preheader.i ], [ %cmp411.i, %if.end451.i ]
    #dbg_value(i64 %indvars.iv.i, !507, !DIExpression(), !550)
  br i1 %cmp4111008.i, label %for.body413.us.i, label %for.body413.lr.ph.split.i

for.body413.us.i:                                 ; preds = %for.body413.lr.ph.i, %for.body413.us.i.backedge
  %call415.us.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38), !dbg !1023
  %104 = load i8, ptr %buff.i, align 16, !dbg !1024
  switch i8 %104, label %if.end431.i [
    i8 35, label %for.body413.us.i.backedge
    i8 13, label %for.body413.us.i.backedge
    i8 10, label %for.body413.us.i.backedge
  ], !dbg !1026

for.body413.us.i.backedge:                        ; preds = %for.body413.us.i, %for.body413.us.i, %for.body413.us.i
  br label %for.body413.us.i, !dbg !1023

for.body413.lr.ph.split.i:                        ; preds = %for.body413.lr.ph.i
  %call415.i = call ptr @fgets(ptr noundef nonnull %buff.i, i32 noundef 256, ptr noundef %call38), !dbg !1023
  %105 = load i8, ptr %buff.i, align 16, !dbg !1024
  switch i8 %105, label %if.end431.i [
    i8 35, label %for.end453.i
    i8 13, label %for.end453.i
    i8 10, label %for.end453.i
  ], !dbg !1026

for.end453.i:                                     ; preds = %for.body413.lr.ph.split.i, %for.body413.lr.ph.split.i, %for.body413.lr.ph.split.i, %if.end451.i, %for.cond410.preheader.i
  %cmp454.i = icmp eq i32 %add388.i, 1, !dbg !1027
  br i1 %cmp454.i, label %if.end555.thread.i, label %if.else458.i, !dbg !1028

if.end555.thread.i:                               ; preds = %for.end453.i
  %fps_num.i = getelementptr inbounds i8, ptr %info, i64 4, !dbg !1029
  %106 = load i32, ptr %fps_num.i, align 4, !dbg !1029
  %conv457.i = zext i32 %106 to i64, !dbg !1030
  %timebase_den.i = getelementptr inbounds i8, ptr %call, i64 88, !dbg !1031
  store i64 %conv457.i, ptr %timebase_den.i, align 8, !dbg !1032
    #dbg_value(ptr null, !513, !DIExpression(), !550)
  br label %if.else568.i, !dbg !1033

if.else458.i:                                     ; preds = %for.end453.i
  %107 = load i32, ptr %auto_timebase_den121, align 8, !dbg !1034
  %tobool460.not.i = icmp eq i32 %107, 0, !dbg !1035
  br i1 %tobool460.not.i, label %if.end555.i, label %if.then461.i, !dbg !1036

if.then461.i:                                     ; preds = %if.else458.i
  %sub462.i = add nsw i32 %add388.i, -1, !dbg !1037
  %conv463.i = sext i32 %sub462.i to i64, !dbg !1038
  %mul464.i = shl nsw i64 %conv463.i, 3, !dbg !1039
  %call465.i = call noalias ptr @malloc(i64 noundef %mul464.i) #14, !dbg !1040
    #dbg_value(ptr %call465.i, !513, !DIExpression(), !550)
  %tobool466.not.i = icmp eq ptr %call465.i, null, !dbg !1041
  br i1 %tobool466.not.i, label %if.then671.thread.i, label %for.cond469.preheader.i, !dbg !1043

for.cond469.preheader.i:                          ; preds = %if.then461.i
    #dbg_value(i32 0, !507, !DIExpression(), !550)
  br i1 %cmp4111006.i, label %for.body473.lr.ph.i, label %for.end540.i, !dbg !1044

for.body473.lr.ph.i:                              ; preds = %for.cond469.preheader.i
  %timebase_den483.i = getelementptr inbounds i8, ptr %call, i64 88
  %timebase_num.i = getelementptr inbounds i8, ptr %call, i64 80
  %wide.trip.count1082.i = zext nneg i32 %sub462.i to i64, !dbg !1045
  %.pre.i = load i64, ptr %timebase_den483.i, align 8, !dbg !1046
  br label %for.body473.i, !dbg !1044

for.body473.i:                                    ; preds = %for.inc538.i, %for.body473.lr.ph.i
  %108 = phi i64 [ %.pre.i, %for.body473.lr.ph.i ], [ %118, %for.inc538.i ], !dbg !1046
  %indvars.iv1079.i = phi i64 [ 0, %for.body473.lr.ph.i ], [ %indvars.iv.next1080.i, %for.inc538.i ]
    #dbg_value(i64 %indvars.iv1079.i, !507, !DIExpression(), !550)
  %indvars.iv.next1080.i = add nuw nsw i64 %indvars.iv1079.i, 1, !dbg !1047
  %arrayidx476.i = getelementptr inbounds double, ptr %call396.i, i64 %indvars.iv.next1080.i, !dbg !1048
  %109 = load double, ptr %arrayidx476.i, align 8, !dbg !1048
  %arrayidx478.i = getelementptr inbounds double, ptr %call396.i, i64 %indvars.iv1079.i, !dbg !1049
  %110 = load double, ptr %arrayidx478.i, align 8, !dbg !1049
  %sub479.i = fsub double %109, %110, !dbg !1050
  %div480.i = fdiv double 1.000000e+00, %sub479.i, !dbg !1051
  %arrayidx482.i = getelementptr inbounds double, ptr %call465.i, i64 %indvars.iv1079.i, !dbg !1052
  store double %div480.i, ptr %arrayidx482.i, align 8, !dbg !1053
  %111 = and i64 %108, 2147483648, !dbg !1054
  %cmp485.i = icmp eq i64 %111, 0, !dbg !1054
  br i1 %cmp485.i, label %if.then487.i, label %for.inc538.i, !dbg !1055

if.then487.i:                                     ; preds = %for.body473.i
    #dbg_value(i32 1, !530, !DIExpression(), !1056)
    #dbg_value(double %div480.i, !865, !DIExpression(), !1057)
    #dbg_value(ptr undef, !870, !DIExpression(), !1057)
  %call.i932.i = call double @log10(double noundef %div480.i) #16, !dbg !1059
  %112 = call double @llvm.floor.f64(double %call.i932.i), !dbg !1060
  %call1.i933.i = call double @pow(double noundef 1.000000e+01, double noundef %112) #16, !dbg !1061
    #dbg_value(double %call1.i933.i, !541, !DIExpression(), !1056)
  %div.i934.i = fdiv double %div480.i, %call1.i933.i, !dbg !1062
    #dbg_value(double %div.i934.i, !542, !DIExpression(), !1056)
  %113 = load i64, ptr %timebase_num.i, align 8
  %conv4971009.i = uitofp i64 %113 to double, !dbg !1063
  %mul4981010.i = fmul double %div.i934.i, %conv4971009.i, !dbg !1065
  %114 = call double @llvm.round.f64(double %mul4981010.i), !dbg !1066
  %mul4991011.i = fmul double %call1.i933.i, %114, !dbg !1067
  %conv5001012.i = fptoui double %mul4991011.i to i64, !dbg !1066
  %cmp5011013.i = icmp ugt i64 %conv5001012.i, 4294967295, !dbg !1068
  br i1 %cmp5011013.i, label %land.lhs.true516.i, label %lor.lhs.false503.i, !dbg !1070

while.cond493.i:                                  ; preds = %lor.lhs.false503.i
  %indvars.iv.next1077.i = add nuw nsw i64 %indvars.iv1076.i, 1, !dbg !1071
    #dbg_value(i32 poison, !530, !DIExpression(), !1056)
  %mul496.i = mul i64 %indvars.iv.next1077.i, %113, !dbg !1072
    #dbg_value(i64 %mul496.i, !540, !DIExpression(), !1056)
  %conv497.i = uitofp i64 %mul496.i to double, !dbg !1063
  %mul498.i = fmul double %div.i934.i, %conv497.i, !dbg !1065
  %115 = call double @llvm.round.f64(double %mul498.i), !dbg !1066
  %mul499.i = fmul double %call1.i933.i, %115, !dbg !1067
  %conv500.i = fptoui double %mul499.i to i64, !dbg !1066
    #dbg_value(i64 %conv500.i, !539, !DIExpression(), !1056)
  %cmp501.i = icmp ugt i64 %conv500.i, 4294967295, !dbg !1068
  br i1 %cmp501.i, label %land.lhs.true516.i, label %lor.lhs.false503.i, !dbg !1070, !llvm.loop !1073

lor.lhs.false503.i:                               ; preds = %if.then487.i, %while.cond493.i
  %indvars.iv1076.i = phi i64 [ %indvars.iv.next1077.i, %while.cond493.i ], [ 1, %if.then487.i ]
  %conv5001016.i = phi i64 [ %conv500.i, %while.cond493.i ], [ %conv5001012.i, %if.then487.i ]
  %conv4971015.i = phi double [ %conv497.i, %while.cond493.i ], [ %conv4971009.i, %if.then487.i ]
    #dbg_value(i64 %indvars.iv1076.i, !530, !DIExpression(), !1056)
  %conv504.i = uitofp nneg i64 %conv5001016.i to double, !dbg !1076
  %div506.i = fdiv double %conv504.i, %conv4971015.i, !dbg !1077
  %div507.i = fdiv double %div506.i, %call1.i933.i, !dbg !1078
  %sub508.i = fsub double %div507.i, %div.i934.i, !dbg !1079
  %116 = call double @llvm.fabs.f64(double %sub508.i), !dbg !1080
  %cmp509.i = fcmp olt double %116, 5.000000e-06, !dbg !1081
    #dbg_value(i64 %indvars.iv1076.i, !530, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1056)
  br i1 %cmp509.i, label %while.end514.i, label %while.cond493.i, !dbg !1082

while.end514.i:                                   ; preds = %lor.lhs.false503.i
  %tobool515.not.i = icmp eq i64 %conv5001016.i, 0, !dbg !1083
  br i1 %tobool515.not.i, label %cond.false.i, label %land.lhs.true516.i, !dbg !1084

land.lhs.true516.i:                               ; preds = %while.cond493.i, %while.end514.i, %if.then487.i
  %conv500993.i = phi i64 [ %conv5001016.i, %while.end514.i ], [ %conv5001012.i, %if.then487.i ], [ %conv500.i, %while.cond493.i ]
  %117 = load i64, ptr %timebase_den483.i, align 8, !dbg !1085
  %tobool518.not.i = icmp eq i64 %117, 0, !dbg !1086
  br i1 %tobool518.not.i, label %cond.false.i, label %while.body.i.i.i, !dbg !1083

while.body.i.i.i:                                 ; preds = %land.lhs.true516.i, %while.body.i.i.i
  %a.addr.0.i.i.i = phi i64 [ %b.addr.0.i.i.i, %while.body.i.i.i ], [ %117, %land.lhs.true516.i ]
  %b.addr.0.i.i.i = phi i64 [ %rem.i.i.i, %while.body.i.i.i ], [ %conv500993.i, %land.lhs.true516.i ]
    #dbg_value(i64 %b.addr.0.i.i.i, !1087, !DIExpression(), !1095)
    #dbg_value(i64 %a.addr.0.i.i.i, !1092, !DIExpression(), !1095)
  %rem.i.i.i = srem i64 %a.addr.0.i.i.i, %b.addr.0.i.i.i, !dbg !1102
    #dbg_value(i64 %rem.i.i.i, !1093, !DIExpression(), !1103)
  %tobool.not.not.i.i.i = icmp eq i64 %rem.i.i.i, 0, !dbg !1104
    #dbg_value(i64 poison, !1087, !DIExpression(), !1095)
    #dbg_value(i64 poison, !1092, !DIExpression(), !1095)
  br i1 %tobool.not.not.i.i.i, label %lcm.exit.i, label %while.body.i.i.i

lcm.exit.i:                                       ; preds = %while.body.i.i.i
  %div.i935.i = sdiv i64 %117, %b.addr.0.i.i.i, !dbg !1106
  %mul.i.i = mul nsw i64 %div.i935.i, %conv500993.i, !dbg !1107
  br label %cond.end.i, !dbg !1083

cond.false.i:                                     ; preds = %land.lhs.true516.i, %while.end514.i
  %conv500994.i = phi i64 [ %conv500993.i, %land.lhs.true516.i ], [ 0, %while.end514.i ]
  %sext.i = shl i64 %conv500994.i, 32, !dbg !1108
  %conv522.i = ashr exact i64 %sext.i, 32, !dbg !1108
  br label %cond.end.i, !dbg !1083

cond.end.i:                                       ; preds = %cond.false.i, %lcm.exit.i
  %cond.i = phi i64 [ %mul.i.i, %lcm.exit.i ], [ %conv522.i, %cond.false.i ], !dbg !1083
  store i64 %cond.i, ptr %timebase_den483.i, align 8, !dbg !1109
  %cmp525.i = icmp ugt i64 %cond.i, 4294967295, !dbg !1110
  br i1 %cmp525.i, label %if.then527.i, label %for.inc538.i, !dbg !1112

if.then527.i:                                     ; preds = %cond.end.i
  store i32 0, ptr %auto_timebase_den121, align 8, !dbg !1113
  br label %for.inc538.i, !dbg !1115

for.inc538.i:                                     ; preds = %if.then527.i, %cond.end.i, %for.body473.i
  %118 = phi i64 [ %cond.i, %if.then527.i ], [ %cond.i, %cond.end.i ], [ %108, %for.body473.i ]
    #dbg_value(i64 %indvars.iv.next1080.i, !507, !DIExpression(), !550)
  %exitcond1083.not.i = icmp eq i64 %indvars.iv.next1080.i, %wide.trip.count1082.i, !dbg !1045
  br i1 %exitcond1083.not.i, label %for.end540.i, label %for.body473.i, !dbg !1044, !llvm.loop !1116

for.end540.i:                                     ; preds = %for.inc538.i, %for.cond469.preheader.i
  %119 = load i32, ptr %auto_timebase_num117, align 4, !dbg !1118
  %tobool542.not.i = icmp eq i32 %119, 0, !dbg !1120
  br i1 %tobool542.not.i, label %if.end553.i, label %land.lhs.true543.i, !dbg !1121

land.lhs.true543.i:                               ; preds = %for.end540.i
  %120 = load i32, ptr %auto_timebase_den121, align 8, !dbg !1122
  %tobool545.not.i = icmp eq i32 %120, 0, !dbg !1123
  br i1 %tobool545.not.i, label %if.then546.i, label %if.end553.i, !dbg !1124

if.then546.i:                                     ; preds = %land.lhs.true543.i
  %call548.i = call fastcc i32 @try_mkv_timebase_den(ptr noundef nonnull %call465.i, ptr noundef nonnull %call, i32 noundef %sub462.i), !dbg !1125
  %cmp549.i = icmp slt i32 %call548.i, 0, !dbg !1127
  br i1 %cmp549.i, label %if.then671.i, label %if.end553.i, !dbg !1128

if.end553.i:                                      ; preds = %if.then546.i, %land.lhs.true543.i, %for.end540.i
  call void @free(ptr noundef %call465.i) #16, !dbg !1129
  br label %if.end555.i, !dbg !1130

if.end555.i:                                      ; preds = %if.end553.i, %if.else458.i
  %fpss.2.i = phi ptr [ %call465.i, %if.end553.i ], [ null, %if.else458.i ], !dbg !550
    #dbg_value(ptr %fpss.2.i, !513, !DIExpression(), !550)
  br i1 %cmp4111006.i, label %if.then558.i, label %if.end555.i.if.else568.i_crit_edge, !dbg !1033

if.end555.i.if.else568.i_crit_edge:               ; preds = %if.end555.i
  %fps_num569.i.phi.trans.insert = getelementptr inbounds i8, ptr %info, i64 4
  %.pre = load i32, ptr %fps_num569.i.phi.trans.insert, align 4, !dbg !1131
  br label %if.else568.i, !dbg !1033

if.then558.i:                                     ; preds = %if.end555.i
  %121 = zext nneg i32 %add388.i to i64, !dbg !1133
  %122 = getelementptr double, ptr %call396.i, i64 %121, !dbg !1133
  %arrayidx561.i = getelementptr i8, ptr %122, i64 -8, !dbg !1133
  %123 = load double, ptr %arrayidx561.i, align 8, !dbg !1133
  %arrayidx564.i = getelementptr i8, ptr %122, i64 -16, !dbg !1134
  %124 = load double, ptr %arrayidx564.i, align 8, !dbg !1134
  %sub565.i = fsub double %123, %124, !dbg !1135
  %div566.i = fdiv double 1.000000e+00, %sub565.i, !dbg !1136
  %assume_fps567.i = getelementptr inbounds i8, ptr %call, i64 112, !dbg !1137
  store double %div566.i, ptr %assume_fps567.i, align 8, !dbg !1138
  br label %cleanup580.i, !dbg !1139

if.else568.i:                                     ; preds = %if.end555.i.if.else568.i_crit_edge, %if.end555.thread.i
  %125 = phi i32 [ %106, %if.end555.thread.i ], [ %.pre, %if.end555.i.if.else568.i_crit_edge ], !dbg !1131
  %fpss.2957.i = phi ptr [ null, %if.end555.thread.i ], [ %fpss.2.i, %if.end555.i.if.else568.i_crit_edge ]
  %conv570.i = uitofp i32 %125 to double, !dbg !1140
  %fps_den571.i = getelementptr inbounds i8, ptr %info, i64 8, !dbg !1141
  %126 = load i32, ptr %fps_den571.i, align 4, !dbg !1141
  %conv572.i = uitofp i32 %126 to double, !dbg !1142
  %div573.i = fdiv double %conv570.i, %conv572.i, !dbg !1143
  %assume_fps574.i = getelementptr inbounds i8, ptr %call, i64 112, !dbg !1144
  store double %div573.i, ptr %assume_fps574.i, align 8, !dbg !1145
  %.phi.trans.insert.i = getelementptr double, ptr %call396.i, i64 %conv394.i
  %arrayidx578.phi.trans.insert.i = getelementptr i8, ptr %.phi.trans.insert.i, i64 -8
  %.pre1101.i = load double, ptr %arrayidx578.phi.trans.insert.i, align 8, !dbg !1146
  br label %cleanup580.i

cleanup580.i:                                     ; preds = %if.else568.i, %if.then558.i
  %127 = phi double [ %.pre1101.i, %if.else568.i ], [ %123, %if.then558.i ], !dbg !1146
  %fpss.2956.i = phi ptr [ %fpss.2957.i, %if.else568.i ], [ %fpss.2.i, %if.then558.i ]
  %last_timecode579.i = getelementptr inbounds i8, ptr %call, i64 120, !dbg !1147
  store double %127, ptr %last_timecode579.i, align 8, !dbg !1148
    #dbg_value(ptr %call396.i, !511, !DIExpression(), !550)
    #dbg_value(ptr %fpss.2956.i, !513, !DIExpression(), !550)
  br label %if.end583.i

if.end583.i:                                      ; preds = %cleanup580.i, %if.end337.i
  %fpss.4.i = phi ptr [ %fpss.0.i, %if.end337.i ], [ %fpss.2956.i, %cleanup580.i ], !dbg !1149
  %timecodes.2.i = phi ptr [ %call121.i, %if.end337.i ], [ %call396.i, %cleanup580.i ], !dbg !550
    #dbg_value(ptr %timecodes.2.i, !511, !DIExpression(), !550)
    #dbg_value(ptr %fpss.4.i, !513, !DIExpression(), !550)
  %128 = load i32, ptr %auto_timebase_den121, align 8, !dbg !1150
  %tobool585.not.i = icmp eq i32 %128, 0, !dbg !1151
  br i1 %tobool585.not.i, label %lor.lhs.false586.i, label %if.then589.i, !dbg !1152

lor.lhs.false586.i:                               ; preds = %if.end583.i
  %129 = load i32, ptr %auto_timebase_num117, align 4, !dbg !1153
  %tobool588.not.i = icmp eq i32 %129, 0, !dbg !1154
  br i1 %tobool588.not.i, label %if.else601.i, label %if.then589.i, !dbg !1155

if.then589.i:                                     ; preds = %lor.lhs.false586.i, %if.end583.i
  %timebase_num591.i = getelementptr inbounds i8, ptr %call, i64 80, !dbg !1156
  %130 = load i64, ptr %timebase_num591.i, align 8, !dbg !1156
  %timebase_den592.i = getelementptr inbounds i8, ptr %call, i64 88, !dbg !1157
  %131 = load i64, ptr %timebase_den592.i, align 8, !dbg !1157
    #dbg_value(i64 %130, !1092, !DIExpression(), !1158)
    #dbg_value(i64 %131, !1087, !DIExpression(), !1158)
  br label %while.body.i.i, !dbg !1160

while.body.i.i:                                   ; preds = %while.body.i.i, %if.then589.i
  %a.addr.0.i.i = phi i64 [ %130, %if.then589.i ], [ %b.addr.0.i.i, %while.body.i.i ]
  %b.addr.0.i.i = phi i64 [ %131, %if.then589.i ], [ %rem.i.i, %while.body.i.i ]
    #dbg_value(i64 %b.addr.0.i.i, !1087, !DIExpression(), !1158)
    #dbg_value(i64 %a.addr.0.i.i, !1092, !DIExpression(), !1158)
  %rem.i.i = srem i64 %a.addr.0.i.i, %b.addr.0.i.i, !dbg !1161
    #dbg_value(i64 %rem.i.i, !1093, !DIExpression(), !1162)
  %tobool.not.not.i.i = icmp eq i64 %rem.i.i, 0, !dbg !1163
    #dbg_value(i64 poison, !1087, !DIExpression(), !1158)
    #dbg_value(i64 poison, !1092, !DIExpression(), !1158)
  br i1 %tobool.not.not.i.i, label %gcd.exit.i, label %while.body.i.i

gcd.exit.i:                                       ; preds = %while.body.i.i
    #dbg_value(i64 %b.addr.0.i.i, !543, !DIExpression(), !1164)
  %div595.i = udiv i64 %130, %b.addr.0.i.i, !dbg !1165
  store i64 %div595.i, ptr %timebase_num591.i, align 8, !dbg !1165
  %div597.i = udiv i64 %131, %b.addr.0.i.i, !dbg !1166
  store i64 %div597.i, ptr %timebase_den592.i, align 8, !dbg !1166
  %132 = load ptr, ptr @stderr, align 8, !dbg !1167
  %call600.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.20, i64 noundef %div595.i, i64 noundef %div597.i) #17, !dbg !1168
  br label %if.end611.i, !dbg !1169

if.else601.i:                                     ; preds = %lor.lhs.false586.i
  %timebase_den602.i = getelementptr inbounds i8, ptr %call, i64 88, !dbg !1170
  %133 = load i64, ptr %timebase_den602.i, align 8, !dbg !1170
  %134 = add i64 %133, -4294967296, !dbg !1172
  %or.cond928.i = icmp ult i64 %134, -4294967295, !dbg !1172
  br i1 %or.cond928.i, label %if.then608.i, label %if.end611.i, !dbg !1172

if.then608.i:                                     ; preds = %if.else601.i
  %135 = load ptr, ptr @stderr, align 8, !dbg !1173
  %136 = call i64 @fwrite(ptr nonnull @.str.21, i64 116, i64 1, ptr %135) #15, !dbg !1175
  br label %if.then671.i, !dbg !1176

if.end611.i:                                      ; preds = %if.else601.i, %gcd.exit.i
  %stored_pts_num612.i = getelementptr inbounds i8, ptr %call, i64 100, !dbg !1177
  %137 = load i32, ptr %stored_pts_num612.i, align 4, !dbg !1177
  %conv613.i = sext i32 %137 to i64, !dbg !1178
  %mul614.i = shl nsw i64 %conv613.i, 3, !dbg !1179
  %call615.i = call noalias ptr @malloc(i64 noundef %mul614.i) #14, !dbg !1180
  %pts.i = getelementptr inbounds i8, ptr %call, i64 104, !dbg !1181
  store ptr %call615.i, ptr %pts.i, align 8, !dbg !1182
  %tobool617.not.i = icmp eq ptr %call615.i, null, !dbg !1183
  br i1 %tobool617.not.i, label %if.then671.i, label %if.end619.i, !dbg !1185

if.end619.i:                                      ; preds = %if.end611.i
  %138 = load i32, ptr %seek5, align 8, !dbg !1186
  %idxprom621.i = sext i32 %138 to i64, !dbg !1187
  %arrayidx622.i = getelementptr inbounds double, ptr %timecodes.2.i, i64 %idxprom621.i, !dbg !1187
  %139 = load double, ptr %arrayidx622.i, align 8, !dbg !1187
  %timebase_den623.i = getelementptr inbounds i8, ptr %call, i64 88, !dbg !1188
  %140 = load i64, ptr %timebase_den623.i, align 8, !dbg !1188
  %conv624.i = uitofp i64 %140 to double, !dbg !1189
  %timebase_num625.i = getelementptr inbounds i8, ptr %call, i64 80, !dbg !1190
  %141 = load i64, ptr %timebase_num625.i, align 8, !dbg !1190
  %conv626.i = uitofp i64 %141 to double, !dbg !1191
  %div627.i = fdiv double %conv624.i, %conv626.i, !dbg !1192
  %142 = call double @llvm.fmuladd.f64(double %139, double %div627.i, double 5.000000e-01), !dbg !1193
  %conv629.i = fptosi double %142 to i64, !dbg !1194
    #dbg_value(i64 %conv629.i, !510, !DIExpression(), !550)
  store i64 0, ptr %call615.i, align 8, !dbg !1195
    #dbg_value(i32 1, !507, !DIExpression(), !550)
  %cmp6341064.i = icmp sgt i32 %137, 1, !dbg !1196
  br i1 %cmp6341064.i, label %for.body636.i, label %if.end58, !dbg !1199

for.body636.i:                                    ; preds = %if.end619.i, %for.inc667.i
  %143 = phi ptr [ %154, %for.inc667.i ], [ %call615.i, %if.end619.i ], !dbg !1200
  %indvars.iv1098.i = phi i64 [ %indvars.iv.next1099.i, %for.inc667.i ], [ 1, %if.end619.i ]
    #dbg_value(i64 %indvars.iv1098.i, !507, !DIExpression(), !550)
  %144 = load i32, ptr %seek5, align 8, !dbg !1202
  %145 = trunc nuw nsw i64 %indvars.iv1098.i to i32, !dbg !1203
  %add638.i = add nsw i32 %144, %145, !dbg !1203
  %idxprom639.i = sext i32 %add638.i to i64, !dbg !1204
  %arrayidx640.i = getelementptr inbounds double, ptr %timecodes.2.i, i64 %idxprom639.i, !dbg !1204
  %146 = load double, ptr %arrayidx640.i, align 8, !dbg !1204
  %147 = load <2 x i64>, ptr %timebase_num625.i, align 8, !dbg !1205
  %148 = uitofp <2 x i64> %147 to <2 x double>, !dbg !1206
  %149 = extractelement <2 x double> %148, i64 0, !dbg !1207
  %150 = extractelement <2 x double> %148, i64 1, !dbg !1207
  %div645.i = fdiv double %150, %149, !dbg !1207
  %151 = call double @llvm.fmuladd.f64(double %146, double %div645.i, double 5.000000e-01), !dbg !1208
  %conv647.i = fptosi double %151 to i64, !dbg !1209
  %arrayidx650.i = getelementptr inbounds i64, ptr %143, i64 %indvars.iv1098.i, !dbg !1210
  store i64 %conv647.i, ptr %arrayidx650.i, align 8, !dbg !1211
  %152 = load ptr, ptr %pts.i, align 8, !dbg !1212
  %arrayidx653.i = getelementptr inbounds i64, ptr %152, i64 %indvars.iv1098.i, !dbg !1213
  %153 = load i64, ptr %arrayidx653.i, align 8, !dbg !1214
  %sub654.i = sub nsw i64 %153, %conv629.i, !dbg !1214
  store i64 %sub654.i, ptr %arrayidx653.i, align 8, !dbg !1214
  %154 = load ptr, ptr %pts.i, align 8, !dbg !1215
  %arrayidx657.i = getelementptr inbounds i64, ptr %154, i64 %indvars.iv1098.i, !dbg !1217
  %155 = load i64, ptr %arrayidx657.i, align 8, !dbg !1217
  %arrayidx661.i = getelementptr i8, ptr %arrayidx657.i, i64 -8, !dbg !1218
  %156 = load i64, ptr %arrayidx661.i, align 8, !dbg !1218
  %cmp662.not.i = icmp sgt i64 %155, %156, !dbg !1219
  br i1 %cmp662.not.i, label %for.inc667.i, label %fail.thread.i, !dbg !1220

fail.thread.i:                                    ; preds = %for.body636.i
  %157 = load ptr, ptr @stderr, align 8, !dbg !1221
  %call665.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef nonnull @.str.22, i32 noundef %145) #17, !dbg !1223
    #dbg_value(ptr %timecodes.2.i, !511, !DIExpression(), !550)
    #dbg_value(ptr %fpss.4.i, !513, !DIExpression(), !550)
    #dbg_label(!546, !1224)
  br label %if.then671.i, !dbg !1225

for.inc667.i:                                     ; preds = %for.body636.i
  %indvars.iv.next1099.i = add nuw nsw i64 %indvars.iv1098.i, 1, !dbg !1226
    #dbg_value(i64 %indvars.iv.next1099.i, !507, !DIExpression(), !550)
  %158 = load i32, ptr %stored_pts_num612.i, align 4, !dbg !1227
  %159 = sext i32 %158 to i64, !dbg !1196
  %cmp634.i = icmp slt i64 %indvars.iv.next1099.i, %159, !dbg !1196
  br i1 %cmp634.i, label %for.body636.i, label %if.end58, !dbg !1199, !llvm.loop !1228

if.then671.thread.i:                              ; preds = %if.then461.i, %if.then449.i, %if.then407.i
  call void @free(ptr noundef nonnull %call396.i) #16, !dbg !1230
  br label %if.then52, !dbg !1232

if.then671.i:                                     ; preds = %fail.thread.i, %if.end611.i, %if.then608.i, %if.then546.i, %cleanup342.thread949.i
  %timecodes.3971.i = phi ptr [ %timecodes.2.i, %fail.thread.i ], [ %timecodes.2.i, %if.end611.i ], [ %timecodes.2.i, %if.then608.i ], [ %call121.i, %cleanup342.thread949.i ], [ %call396.i, %if.then546.i ]
  %fpss.5969.i = phi ptr [ %fpss.4.i, %fail.thread.i ], [ %fpss.4.i, %if.end611.i ], [ %fpss.4.i, %if.then608.i ], [ %fpss.1.ph.i, %cleanup342.thread949.i ], [ %call465.i, %if.then546.i ]
  call void @free(ptr noundef nonnull %timecodes.3971.i) #16, !dbg !1230
  %tobool673.not.i = icmp eq ptr %fpss.5969.i, null, !dbg !1233
  br i1 %tobool673.not.i, label %if.then52, label %if.then674.i, !dbg !1232

if.then674.i:                                     ; preds = %if.then671.i
  call void @free(ptr noundef nonnull %fpss.5969.i) #16, !dbg !1235
  br label %if.then52, !dbg !1235

if.then52:                                        ; preds = %if.then.i, %if.then674.i, %if.then671.i, %cleanup342.thread.i, %if.then390.i, %if.end392.i, %if.then671.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcfv.i) #16, !dbg !1236
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buff.i) #16, !dbg !1236
  %pts = getelementptr inbounds i8, ptr %call, i64 104, !dbg !1237
  %160 = load ptr, ptr %pts, align 8, !dbg !1237
  %tobool53.not = icmp eq ptr %160, null, !dbg !1240
  br i1 %tobool53.not, label %if.end56, label %if.then54, !dbg !1241

if.then54:                                        ; preds = %if.then52
  call void @free(ptr noundef nonnull %160) #16, !dbg !1242
  br label %if.end56, !dbg !1242

if.end56:                                         ; preds = %if.then54, %if.then52
  %call57 = call i32 @fclose(ptr noundef nonnull %call38), !dbg !1243
  br label %cleanup, !dbg !1244

if.end58:                                         ; preds = %for.inc667.i, %if.end619.i
  call void @free(ptr noundef %timecodes.2.i) #16, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcfv.i) #16, !dbg !1236
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buff.i) #16, !dbg !1236
  %call59 = call i32 @fclose(ptr noundef nonnull %call38), !dbg !1246
  %timebase_num62 = getelementptr inbounds i8, ptr %info, i64 32, !dbg !1247
  %161 = load <2 x i64>, ptr %timebase_num625.i, align 8, !dbg !1248
  %162 = trunc <2 x i64> %161 to <2 x i32>, !dbg !1249
  store <2 x i32> %162, ptr %timebase_num62, align 4, !dbg !1250
  %vfr = getelementptr inbounds i8, ptr %info, i64 40, !dbg !1251
  store i32 1, ptr %vfr, align 4, !dbg !1252
  br label %cleanup, !dbg !1253

cleanup:                                          ; preds = %if.end58, %if.end56, %if.then40, %if.then19, %if.then
  %retval.0 = phi i32 [ -1, %if.then19 ], [ -1, %if.end56 ], [ 0, %if.end58 ], [ -1, %if.then40 ], [ -1, %if.then ], !dbg !558
  ret i32 %retval.0, !dbg !1254
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %handle) #1 !dbg !1255 {
entry:
    #dbg_value(ptr %handle, !1257, !DIExpression(), !1259)
    #dbg_value(ptr %handle, !1258, !DIExpression(), !1259)
  %frame_total = getelementptr inbounds i8, ptr %handle, i64 64, !dbg !1260
  %0 = load i32, ptr %frame_total, align 8, !dbg !1260
  ret i32 %0, !dbg !1261
}

; Function Attrs: nounwind uwtable
define internal i32 @read_frame(ptr noundef %p_pic, ptr nocapture noundef %handle, i32 noundef %i_frame) #0 !dbg !1262 {
entry:
    #dbg_value(ptr %p_pic, !1264, !DIExpression(), !1269)
    #dbg_value(ptr %handle, !1265, !DIExpression(), !1269)
    #dbg_value(i32 %i_frame, !1266, !DIExpression(), !1269)
    #dbg_value(ptr %handle, !1267, !DIExpression(), !1269)
  %read_frame = getelementptr inbounds i8, ptr %handle, i64 24, !dbg !1270
  %0 = load ptr, ptr %read_frame, align 8, !dbg !1270
  %p_handle = getelementptr inbounds i8, ptr %handle, i64 56, !dbg !1271
  %1 = load ptr, ptr %p_handle, align 8, !dbg !1271
  %call = tail call i32 %0(ptr noundef %p_pic, ptr noundef %1, i32 noundef %i_frame) #16, !dbg !1272
    #dbg_value(i32 %call, !1268, !DIExpression(), !1269)
  %seek = getelementptr inbounds i8, ptr %handle, i64 96, !dbg !1273
  %2 = load i32, ptr %seek, align 8, !dbg !1273
  %sub = sub nsw i32 %i_frame, %2, !dbg !1275
  %stored_pts_num = getelementptr inbounds i8, ptr %handle, i64 100, !dbg !1276
  %3 = load i32, ptr %stored_pts_num, align 4, !dbg !1276
  %cmp = icmp slt i32 %sub, %3, !dbg !1277
  %pts = getelementptr inbounds i8, ptr %handle, i64 104, !dbg !1278
  %4 = load ptr, ptr %pts, align 8, !dbg !1278
  br i1 %cmp, label %if.then, label %if.else, !dbg !1279

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %sub to i64, !dbg !1280
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %idxprom, !dbg !1280
  %5 = load i64, ptr %arrayidx, align 8, !dbg !1280
  br label %if.end14, !dbg !1282

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %4, null, !dbg !1283
  br i1 %tobool.not, label %if.end, label %if.then4, !dbg !1286

if.then4:                                         ; preds = %if.else
  %6 = load ptr, ptr @stderr, align 8, !dbg !1287
  %assume_fps = getelementptr inbounds i8, ptr %handle, i64 112, !dbg !1289
  %7 = load double, ptr %assume_fps, align 8, !dbg !1289
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.25, i32 noundef %i_frame, double noundef %7) #17, !dbg !1290
  %8 = load ptr, ptr %pts, align 8, !dbg !1291
  tail call void @free(ptr noundef %8) #16, !dbg !1292
  store ptr null, ptr %pts, align 8, !dbg !1293
  br label %if.end, !dbg !1294

if.end:                                           ; preds = %if.then4, %if.else
  %assume_fps8 = getelementptr inbounds i8, ptr %handle, i64 112, !dbg !1295
  %9 = load double, ptr %assume_fps8, align 8, !dbg !1295
  %div = fdiv double 1.000000e+00, %9, !dbg !1296
  %last_timecode = getelementptr inbounds i8, ptr %handle, i64 120, !dbg !1297
  %10 = load double, ptr %last_timecode, align 8, !dbg !1298
  %add = fadd double %10, %div, !dbg !1298
  store double %add, ptr %last_timecode, align 8, !dbg !1298
  %timebase_num = getelementptr inbounds i8, ptr %handle, i64 80, !dbg !1299
  %11 = load <2 x i64>, ptr %timebase_num, align 8, !dbg !1299
  %12 = uitofp <2 x i64> %11 to <2 x double>, !dbg !1300
  %13 = extractelement <2 x double> %12, i64 0, !dbg !1301
  %14 = extractelement <2 x double> %12, i64 1, !dbg !1301
  %div11 = fdiv double %14, %13, !dbg !1301
  %15 = tail call double @llvm.fmuladd.f64(double %add, double %div11, double 5.000000e-01), !dbg !1302
  %conv12 = fptosi double %15 to i64, !dbg !1303
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %conv12.sink = phi i64 [ %conv12, %if.end ], [ %5, %if.then ]
  %i_pts13 = getelementptr inbounds i8, ptr %p_pic, i64 16, !dbg !1278
  store i64 %conv12.sink, ptr %i_pts13, align 8, !dbg !1278
  ret i32 %call, !dbg !1304
}

; Function Attrs: nounwind uwtable
define internal i32 @release_frame(ptr noundef %pic, ptr nocapture noundef readonly %handle) #0 !dbg !1305 {
entry:
    #dbg_value(ptr %pic, !1307, !DIExpression(), !1310)
    #dbg_value(ptr %handle, !1308, !DIExpression(), !1310)
    #dbg_value(ptr %handle, !1309, !DIExpression(), !1310)
  %release_frame = getelementptr inbounds i8, ptr %handle, i64 32, !dbg !1311
  %0 = load ptr, ptr %release_frame, align 8, !dbg !1311
  %tobool.not = icmp eq ptr %0, null, !dbg !1313
  br i1 %tobool.not, label %cleanup, label %if.then, !dbg !1314

if.then:                                          ; preds = %entry
  %p_handle = getelementptr inbounds i8, ptr %handle, i64 56, !dbg !1315
  %1 = load ptr, ptr %p_handle, align 8, !dbg !1315
  %call = tail call i32 %0(ptr noundef %pic, ptr noundef %1) #16, !dbg !1316
  br label %cleanup, !dbg !1317

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ], !dbg !1310
  ret i32 %retval.0, !dbg !1318
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @close_file(ptr nocapture noundef %handle) #0 !dbg !1319 {
entry:
    #dbg_value(ptr %handle, !1321, !DIExpression(), !1323)
    #dbg_value(ptr %handle, !1322, !DIExpression(), !1323)
  %pts = getelementptr inbounds i8, ptr %handle, i64 104, !dbg !1324
  %0 = load ptr, ptr %pts, align 8, !dbg !1324
  %tobool.not = icmp eq ptr %0, null, !dbg !1326
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1327

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #16, !dbg !1328
  br label %if.end, !dbg !1328

if.end:                                           ; preds = %if.then, %entry
  %close_file = getelementptr inbounds i8, ptr %handle, i64 48, !dbg !1329
  %1 = load ptr, ptr %close_file, align 8, !dbg !1329
  %p_handle = getelementptr inbounds i8, ptr %handle, i64 56, !dbg !1330
  %2 = load ptr, ptr %p_handle, align 8, !dbg !1330
  %call = tail call i32 %1(ptr noundef %2) #16, !dbg !1331
  tail call void @free(ptr noundef nonnull %handle) #16, !dbg !1332
  ret i32 0, !dbg !1333
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1334 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1338 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare !dbg !1344 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !1347 i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1352 noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1355 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1358 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1359 i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !1360 noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1364 noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1367 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @correct_fps(double noundef %fps, ptr nocapture noundef %h) unnamed_addr #9 !dbg !1370 {
entry:
    #dbg_value(double %fps, !1374, !DIExpression(), !1381)
    #dbg_value(ptr %h, !1375, !DIExpression(), !1381)
    #dbg_value(i32 1, !1376, !DIExpression(), !1381)
    #dbg_value(double %fps, !865, !DIExpression(), !1382)
    #dbg_value(ptr undef, !870, !DIExpression(), !1382)
  %call.i = tail call double @log10(double noundef %fps) #16, !dbg !1384
  %0 = tail call double @llvm.floor.f64(double %call.i), !dbg !1385
  %call1.i = tail call double @pow(double noundef 1.000000e+01, double noundef %0) #16, !dbg !1386
    #dbg_value(double %call1.i, !1379, !DIExpression(), !1381)
  %div.i = fdiv double %fps, %call1.i, !dbg !1387
    #dbg_value(double %div.i, !1380, !DIExpression(), !1381)
  %timebase_num = getelementptr inbounds i8, ptr %h, i64 80
  %1 = load i64, ptr %timebase_num, align 8
    #dbg_value(i32 1, !1376, !DIExpression(), !1381)
  %conv151 = uitofp i64 %1 to double, !dbg !1388
  %mul252 = fmul double %div.i, %conv151, !dbg !1390
  %2 = tail call double @llvm.round.f64(double %mul252), !dbg !1391
  %mul353 = fmul double %call1.i, %2, !dbg !1392
  %conv454 = fptoui double %mul353 to i64, !dbg !1391
  %cmp55 = icmp ugt i64 %conv454, 4294967295, !dbg !1393
  br i1 %cmp55, label %if.then, label %if.end, !dbg !1395

while.cond:                                       ; preds = %if.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1396
    #dbg_value(i64 %indvars.iv.next, !1376, !DIExpression(), !1381)
    #dbg_value(i64 %indvars.iv.next, !1376, !DIExpression(), !1381)
  %mul = mul i64 %1, %indvars.iv.next, !dbg !1397
    #dbg_value(i64 %mul, !1378, !DIExpression(), !1381)
  %conv1 = uitofp i64 %mul to double, !dbg !1388
  %mul2 = fmul double %div.i, %conv1, !dbg !1390
  %3 = tail call double @llvm.round.f64(double %mul2), !dbg !1391
  %mul3 = fmul double %call1.i, %3, !dbg !1392
  %conv4 = fptoui double %mul3 to i64, !dbg !1391
    #dbg_value(i64 %conv4, !1377, !DIExpression(), !1381)
  %cmp = icmp ugt i64 %conv4, 4294967295, !dbg !1393
  br i1 %cmp, label %if.then, label %if.end, !dbg !1395, !llvm.loop !1398

if.then:                                          ; preds = %while.cond, %entry
  %4 = load ptr, ptr @stderr, align 8, !dbg !1401
  %5 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 125, i64 1, ptr %4) #15, !dbg !1403
  br label %cleanup, !dbg !1404

if.end:                                           ; preds = %entry, %while.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 1, %entry ]
  %conv458 = phi i64 [ %conv4, %while.cond ], [ %conv454, %entry ]
  %conv157 = phi double [ %conv1, %while.cond ], [ %conv151, %entry ]
    #dbg_value(i64 %indvars.iv, !1376, !DIExpression(), !1381)
  %conv7 = uitofp nneg i64 %conv458 to double, !dbg !1405
  %div = fdiv double %conv7, %conv157, !dbg !1407
  %div9 = fdiv double %div, %call1.i, !dbg !1408
  %sub = fsub double %div9, %div.i, !dbg !1409
  %6 = tail call double @llvm.fabs.f64(double %sub), !dbg !1410
  %cmp10 = fcmp olt double %6, 5.000000e-06, !dbg !1411
    #dbg_value(i64 %indvars.iv, !1376, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1381)
  br i1 %cmp10, label %while.end, label %while.cond, !dbg !1412

while.end:                                        ; preds = %if.end
  %auto_timebase_den = getelementptr inbounds i8, ptr %h, i64 72, !dbg !1413
  %7 = load i32, ptr %auto_timebase_den, align 8, !dbg !1413
  %tobool.not = icmp eq i32 %7, 0, !dbg !1415
  br i1 %tobool.not, label %cleanup, label %if.then14, !dbg !1416

if.then14:                                        ; preds = %while.end
  %timebase_den = getelementptr inbounds i8, ptr %h, i64 88, !dbg !1417
  %8 = load i64, ptr %timebase_den, align 8, !dbg !1417
  %tobool15.not = icmp eq i64 %8, 0, !dbg !1419
  br i1 %tobool15.not, label %cond.false, label %while.body.i.i, !dbg !1419

while.body.i.i:                                   ; preds = %if.then14, %while.body.i.i
  %a.addr.0.i.i = phi i64 [ %b.addr.0.i.i, %while.body.i.i ], [ %8, %if.then14 ]
  %b.addr.0.i.i = phi i64 [ %rem.i.i, %while.body.i.i ], [ %conv458, %if.then14 ]
    #dbg_value(i64 %b.addr.0.i.i, !1087, !DIExpression(), !1420)
    #dbg_value(i64 %a.addr.0.i.i, !1092, !DIExpression(), !1420)
  %rem.i.i = srem i64 %a.addr.0.i.i, %b.addr.0.i.i, !dbg !1423
    #dbg_value(i64 %rem.i.i, !1093, !DIExpression(), !1424)
  %tobool.not.not.i.i = icmp eq i64 %rem.i.i, 0, !dbg !1425
    #dbg_value(i64 poison, !1087, !DIExpression(), !1420)
    #dbg_value(i64 poison, !1092, !DIExpression(), !1420)
  br i1 %tobool.not.not.i.i, label %lcm.exit, label %while.body.i.i

lcm.exit:                                         ; preds = %while.body.i.i
  %div.i49 = sdiv i64 %8, %b.addr.0.i.i, !dbg !1426
  %mul.i = mul nsw i64 %div.i49, %conv458, !dbg !1427
  br label %cond.end, !dbg !1419

cond.false:                                       ; preds = %if.then14
  %sext = shl nuw i64 %conv458, 32, !dbg !1428
  %conv19 = ashr exact i64 %sext, 32, !dbg !1428
  br label %cond.end, !dbg !1419

cond.end:                                         ; preds = %cond.false, %lcm.exit
  %cond = phi i64 [ %mul.i, %lcm.exit ], [ %conv19, %cond.false ], !dbg !1419
  store i64 %cond, ptr %timebase_den, align 8, !dbg !1429
  %cmp22 = icmp ugt i64 %cond, 4294967295, !dbg !1430
  br i1 %cmp22, label %if.then24, label %cleanup, !dbg !1432

if.then24:                                        ; preds = %cond.end
  store i32 0, ptr %auto_timebase_den, align 8, !dbg !1433
  br label %cleanup, !dbg !1434

cleanup:                                          ; preds = %while.end, %if.then24, %cond.end, %if.then
  %retval.0 = phi double [ -1.000000e+00, %if.then ], [ %div, %cond.end ], [ %div, %if.then24 ], [ %div, %while.end ], !dbg !1381
  ret double %retval.0, !dbg !1435
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @try_mkv_timebase_den(ptr nocapture noundef readonly %fpss, ptr nocapture noundef %h, i32 noundef %loop_num) unnamed_addr #9 !dbg !1436 {
entry:
    #dbg_value(ptr %fpss, !1440, !DIExpression(), !1450)
    #dbg_value(ptr %h, !1441, !DIExpression(), !1450)
    #dbg_value(i32 %loop_num, !1442, !DIExpression(), !1450)
  %timebase_num = getelementptr inbounds i8, ptr %h, i64 80, !dbg !1451
  store i64 0, ptr %timebase_num, align 8, !dbg !1452
  %timebase_den = getelementptr inbounds i8, ptr %h, i64 88, !dbg !1453
  store i64 1000000000, ptr %timebase_den, align 8, !dbg !1454
    #dbg_value(i32 0, !1443, !DIExpression(), !1455)
  %cmp.not33 = icmp sgt i32 %loop_num, 0, !dbg !1456
  br i1 %cmp.not33, label %for.body.preheader, label %cleanup17, !dbg !1457

for.body.preheader:                               ; preds = %entry
  %0 = zext nneg i32 %loop_num to i64, !dbg !1457
  %wide.trip.count = zext nneg i32 %loop_num to i64, !dbg !1456
  br label %for.body, !dbg !1457

for.cond:                                         ; preds = %cond.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1458
    #dbg_value(i64 %indvars.iv.next, !1443, !DIExpression(), !1455)
    #dbg_value(i64 %indvars.iv.next, !1443, !DIExpression(), !1455)
  %cmp.not = icmp ult i64 %indvars.iv.next, %0, !dbg !1456
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1456
  br i1 %exitcond.not, label %cleanup17, label %for.body, !dbg !1457, !llvm.loop !1459

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %cmp.not35 = phi i1 [ true, %for.body.preheader ], [ %cmp.not, %for.cond ]
    #dbg_value(i64 %indvars.iv, !1443, !DIExpression(), !1455)
  %arrayidx = getelementptr inbounds double, ptr %fpss, i64 %indvars.iv, !dbg !1461
  %1 = load double, ptr %arrayidx, align 8, !dbg !1461
    #dbg_value(double %1, !865, !DIExpression(), !1462)
    #dbg_value(ptr undef, !870, !DIExpression(), !1462)
  %call.i = tail call double @log10(double noundef %1) #16, !dbg !1464
  %2 = tail call double @llvm.floor.f64(double %call.i), !dbg !1465
  %call1.i = tail call double @pow(double noundef 1.000000e+01, double noundef %2) #16, !dbg !1466
    #dbg_value(double %call1.i, !1448, !DIExpression(), !1467)
  %div.i = fdiv double %1, %call1.i, !dbg !1468
    #dbg_value(double %div.i, !1449, !DIExpression(), !1467)
  %div = fdiv double 1.000000e+09, %div.i, !dbg !1469
  %3 = tail call double @llvm.round.f64(double %div), !dbg !1470
  %div1 = fdiv double %3, %call1.i, !dbg !1471
  %conv = fptoui double %div1 to i64, !dbg !1470
    #dbg_value(i64 %conv, !1445, !DIExpression(), !1467)
  %tobool.not = icmp eq i64 %conv, 0, !dbg !1472
  br i1 %tobool.not, label %cond.false, label %land.lhs.true, !dbg !1473

land.lhs.true:                                    ; preds = %for.body
  %4 = load i64, ptr %timebase_num, align 8, !dbg !1474
  %tobool3.not = icmp eq i64 %4, 0, !dbg !1475
  br i1 %tobool3.not, label %cond.false, label %while.body.i, !dbg !1472

while.body.i:                                     ; preds = %land.lhs.true, %while.body.i
  %a.addr.0.i = phi i64 [ %b.addr.0.i, %while.body.i ], [ %4, %land.lhs.true ]
  %b.addr.0.i = phi i64 [ %rem.i, %while.body.i ], [ %conv, %land.lhs.true ]
    #dbg_value(i64 %b.addr.0.i, !1087, !DIExpression(), !1476)
    #dbg_value(i64 %a.addr.0.i, !1092, !DIExpression(), !1476)
  %rem.i = srem i64 %a.addr.0.i, %b.addr.0.i, !dbg !1478
    #dbg_value(i64 %rem.i, !1093, !DIExpression(), !1479)
  %tobool.not.not.i = icmp eq i64 %rem.i, 0, !dbg !1480
    #dbg_value(i64 poison, !1087, !DIExpression(), !1476)
    #dbg_value(i64 poison, !1092, !DIExpression(), !1476)
  br i1 %tobool.not.not.i, label %cond.end, label %while.body.i

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %sext = shl i64 %conv, 32, !dbg !1481
  %conv7 = ashr exact i64 %sext, 32, !dbg !1481
  br label %cond.end, !dbg !1472

cond.end:                                         ; preds = %while.body.i, %cond.false
  %cond = phi i64 [ %conv7, %cond.false ], [ %b.addr.0.i, %while.body.i ], !dbg !1472
  store i64 %cond, ptr %timebase_num, align 8, !dbg !1482
  %5 = add i64 %cond, -4294967296, !dbg !1483
  %or.cond = icmp ult i64 %5, -4294967295, !dbg !1483
    #dbg_value(i64 %indvars.iv, !1443, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1455)
  br i1 %or.cond, label %if.then, label %for.cond, !dbg !1483

if.then:                                          ; preds = %cond.end
  %6 = load ptr, ptr @stderr, align 8, !dbg !1485
  %7 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 101, i64 1, ptr %6) #15, !dbg !1487
  br label %cleanup17

cleanup17:                                        ; preds = %for.cond, %entry, %if.then
  %cmp.not32 = phi i1 [ %cmp.not35, %if.then ], [ false, %entry ], [ %cmp.not, %for.cond ]
  %spec.select = sext i1 %cmp.not32 to i32
  ret i32 %spec.select, !dbg !1488
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1489 double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1493 double @log10(double noundef) local_unnamed_addr #11

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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!403, !404, !405, !406, !407, !408, !409}
!llvm.ident = !{!410}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "timecode_input", scope: !2, file: !3, line: 499, type: !142, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/input/timecode.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "38d56a1630a2a8343c423fb69854a920")
!4 = !{!5, !6, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !11, line: 44, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!12 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!13 = !{!0, !14, !20, !25, !30, !35, !40, !45, !50, !55, !60, !62, !67, !72, !77, !82, !87, !92, !97, !102, !107, !112, !117, !122, !127, !132, !137}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !3, line: 391, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 264, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 33)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 8)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !3, line: 405, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 64)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !3, line: 420, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 3)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 280, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 35)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 428, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 576, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 72)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 176, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 22)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 376, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 47)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 88, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 11)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !57, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 504, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 63)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 352, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 44)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !3, line: 150, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 296, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 37)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !3, line: 154, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 80, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 10)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !3, line: 157, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 320, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 40)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 440, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 55)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !3, line: 264, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 480, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 60)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !3, line: 274, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 416, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 52)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 289, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 424, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 53)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !3, line: 345, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 448, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 56)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 349, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 936, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 117)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !3, line: 365, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 488, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 61)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1008, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 126)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 816, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 102)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !3, line: 469, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 944, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 118)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_t", file: !143, line: 63, baseType: !144)
!143 = !DIFile(filename: "x264_src/input/input.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f28c863d273681dfcaca9779e9fcbd53")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 54, size: 448, elements: !145)
!145 = !{!146, !182, !186, !390, !394, !398, !402}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !144, file: !143, line: 56, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!6, !150, !151, !154, !174}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !153, line: 30, baseType: !5)
!153 = !DIFile(filename: "x264_src/muxers.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "video_info_t", file: !143, line: 52, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 38, size: 384, elements: !157)
!157 = !{!158, !159, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "csp", scope: !156, file: !143, line: 40, baseType: !6, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "fps_num", scope: !156, file: !143, line: 41, baseType: !160, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !161, line: 26, baseType: !162)
!161 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !11, line: 42, baseType: !163)
!163 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "fps_den", scope: !156, file: !143, line: 42, baseType: !160, size: 32, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !156, file: !143, line: 43, baseType: !6, size: 32, offset: 96)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !156, file: !143, line: 44, baseType: !6, size: 32, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !156, file: !143, line: 45, baseType: !160, size: 32, offset: 160)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !156, file: !143, line: 46, baseType: !160, size: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tff", scope: !156, file: !143, line: 47, baseType: !6, size: 32, offset: 224)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_num", scope: !156, file: !143, line: 48, baseType: !160, size: 32, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_den", scope: !156, file: !143, line: 49, baseType: !160, size: 32, offset: 288)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "vfr", scope: !156, file: !143, line: 50, baseType: !6, size: 32, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !156, file: !143, line: 51, baseType: !6, size: 32, offset: 352)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_opt_t", file: !143, line: 35, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 29, size: 256, elements: !177)
!177 = !{!178, !179, !180, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !176, file: !143, line: 31, baseType: !150, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !176, file: !143, line: 32, baseType: !150, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "timebase", scope: !176, file: !143, line: 33, baseType: !150, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !176, file: !143, line: 34, baseType: !6, size: 32, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_total", scope: !144, file: !143, line: 57, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!6, !152}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "picture_alloc", scope: !144, file: !143, line: 58, baseType: !187, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!6, !190, !6, !6, !6}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !192, line: 549, baseType: !193)
!192 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 513, size: 1088, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !370, !381, !389}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !193, file: !192, line: 521, baseType: !6, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !193, file: !192, line: 523, baseType: !6, size: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !193, file: !192, line: 526, baseType: !6, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !193, file: !192, line: 529, baseType: !6, size: 32, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !193, file: !192, line: 531, baseType: !8, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !193, file: !192, line: 534, baseType: !8, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !193, file: !192, line: 541, baseType: !202, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !192, line: 376, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !192, line: 176, size: 5632, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !254, !255, !256, !257, !259, !260, !273, !274, !275, !276, !277, !308, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !204, file: !192, line: 179, baseType: !163, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !204, file: !192, line: 180, baseType: !6, size: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !204, file: !192, line: 181, baseType: !6, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !204, file: !192, line: 182, baseType: !6, size: 32, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !204, file: !192, line: 183, baseType: !6, size: 32, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !204, file: !192, line: 186, baseType: !6, size: 32, offset: 160)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !204, file: !192, line: 187, baseType: !6, size: 32, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !204, file: !192, line: 188, baseType: !6, size: 32, offset: 224)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !204, file: !192, line: 189, baseType: !6, size: 32, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !204, file: !192, line: 190, baseType: !6, size: 32, offset: 288)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !204, file: !192, line: 198, baseType: !6, size: 32, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !204, file: !192, line: 215, baseType: !218, size: 288, offset: 352)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !192, line: 200, size: 288, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !218, file: !192, line: 203, baseType: !6, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !218, file: !192, line: 204, baseType: !6, size: 32, offset: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !218, file: !192, line: 206, baseType: !6, size: 32, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !218, file: !192, line: 209, baseType: !6, size: 32, offset: 96)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !218, file: !192, line: 210, baseType: !6, size: 32, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !218, file: !192, line: 211, baseType: !6, size: 32, offset: 160)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !218, file: !192, line: 212, baseType: !6, size: 32, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !218, file: !192, line: 213, baseType: !6, size: 32, offset: 224)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !218, file: !192, line: 214, baseType: !6, size: 32, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !204, file: !192, line: 218, baseType: !6, size: 32, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !204, file: !192, line: 219, baseType: !6, size: 32, offset: 672)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !204, file: !192, line: 220, baseType: !6, size: 32, offset: 704)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !204, file: !192, line: 221, baseType: !6, size: 32, offset: 736)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !204, file: !192, line: 222, baseType: !6, size: 32, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !204, file: !192, line: 224, baseType: !6, size: 32, offset: 800)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !204, file: !192, line: 225, baseType: !6, size: 32, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !204, file: !192, line: 226, baseType: !6, size: 32, offset: 864)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !204, file: !192, line: 227, baseType: !6, size: 32, offset: 896)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !204, file: !192, line: 229, baseType: !6, size: 32, offset: 928)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !204, file: !192, line: 230, baseType: !6, size: 32, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !204, file: !192, line: 231, baseType: !6, size: 32, offset: 992)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !204, file: !192, line: 233, baseType: !6, size: 32, offset: 1024)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !204, file: !192, line: 234, baseType: !6, size: 32, offset: 1056)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !204, file: !192, line: 236, baseType: !6, size: 32, offset: 1088)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !204, file: !192, line: 237, baseType: !6, size: 32, offset: 1120)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !204, file: !192, line: 239, baseType: !6, size: 32, offset: 1152)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !204, file: !192, line: 240, baseType: !150, size: 64, offset: 1216)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !204, file: !192, line: 241, baseType: !248, size: 128, offset: 1280)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 128, elements: !252)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !161, line: 24, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !11, line: 38, baseType: !251)
!251 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!252 = !{!253}
!253 = !DISubrange(count: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !204, file: !192, line: 242, baseType: !248, size: 128, offset: 1408)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !204, file: !192, line: 243, baseType: !248, size: 128, offset: 1536)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !204, file: !192, line: 244, baseType: !248, size: 128, offset: 1664)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !204, file: !192, line: 245, baseType: !258, size: 512, offset: 1792)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 512, elements: !28)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !204, file: !192, line: 246, baseType: !258, size: 512, offset: 2304)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !204, file: !192, line: 249, baseType: !261, size: 64, offset: 2816)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !5, !6, !264, !266}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !268)
!268 = !{!269, !270, !271, !272}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !267, file: !3, line: 499, baseType: !163, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !267, file: !3, line: 499, baseType: !163, size: 32, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !267, file: !3, line: 499, baseType: !5, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !267, file: !3, line: 499, baseType: !5, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !204, file: !192, line: 250, baseType: !5, size: 64, offset: 2880)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !204, file: !192, line: 251, baseType: !6, size: 32, offset: 2944)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !204, file: !192, line: 252, baseType: !6, size: 32, offset: 2976)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !204, file: !192, line: 253, baseType: !150, size: 64, offset: 3008)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !204, file: !192, line: 287, baseType: !278, size: 800, offset: 3072)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !192, line: 256, size: 800, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !300, !301, !302, !306, !307}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !278, file: !192, line: 258, baseType: !163, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !278, file: !192, line: 259, baseType: !163, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !278, file: !192, line: 261, baseType: !6, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !278, file: !192, line: 262, baseType: !6, size: 32, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !278, file: !192, line: 263, baseType: !6, size: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !278, file: !192, line: 264, baseType: !6, size: 32, offset: 160)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !278, file: !192, line: 265, baseType: !6, size: 32, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !278, file: !192, line: 267, baseType: !6, size: 32, offset: 224)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !278, file: !192, line: 268, baseType: !6, size: 32, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !278, file: !192, line: 269, baseType: !6, size: 32, offset: 288)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !278, file: !192, line: 270, baseType: !6, size: 32, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !278, file: !192, line: 271, baseType: !6, size: 32, offset: 352)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !278, file: !192, line: 272, baseType: !6, size: 32, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !278, file: !192, line: 273, baseType: !6, size: 32, offset: 416)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !278, file: !192, line: 274, baseType: !6, size: 32, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !278, file: !192, line: 275, baseType: !6, size: 32, offset: 480)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !278, file: !192, line: 276, baseType: !6, size: 32, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !278, file: !192, line: 277, baseType: !6, size: 32, offset: 544)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !278, file: !192, line: 278, baseType: !299, size: 32, offset: 576)
!299 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !278, file: !192, line: 279, baseType: !299, size: 32, offset: 608)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !278, file: !192, line: 280, baseType: !6, size: 32, offset: 640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !278, file: !192, line: 283, baseType: !303, size: 64, offset: 672)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 2)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !278, file: !192, line: 285, baseType: !6, size: 32, offset: 736)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !278, file: !192, line: 286, baseType: !6, size: 32, offset: 768)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !204, file: !192, line: 327, baseType: !309, size: 1152, offset: 3904)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !192, line: 290, size: 1152, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !348, !349}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !309, file: !192, line: 292, baseType: !6, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !309, file: !192, line: 294, baseType: !6, size: 32, offset: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !309, file: !192, line: 295, baseType: !6, size: 32, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !309, file: !192, line: 296, baseType: !6, size: 32, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !309, file: !192, line: 297, baseType: !6, size: 32, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !309, file: !192, line: 299, baseType: !6, size: 32, offset: 160)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !309, file: !192, line: 300, baseType: !299, size: 32, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !309, file: !192, line: 301, baseType: !299, size: 32, offset: 224)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !309, file: !192, line: 302, baseType: !299, size: 32, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !309, file: !192, line: 303, baseType: !6, size: 32, offset: 288)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !309, file: !192, line: 304, baseType: !6, size: 32, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !309, file: !192, line: 305, baseType: !299, size: 32, offset: 352)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !309, file: !192, line: 306, baseType: !299, size: 32, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !309, file: !192, line: 307, baseType: !299, size: 32, offset: 416)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !309, file: !192, line: 309, baseType: !6, size: 32, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !309, file: !192, line: 310, baseType: !299, size: 32, offset: 480)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !309, file: !192, line: 311, baseType: !6, size: 32, offset: 512)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !309, file: !192, line: 312, baseType: !6, size: 32, offset: 544)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !309, file: !192, line: 315, baseType: !6, size: 32, offset: 576)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !309, file: !192, line: 316, baseType: !150, size: 64, offset: 640)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !309, file: !192, line: 317, baseType: !6, size: 32, offset: 704)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !309, file: !192, line: 318, baseType: !150, size: 64, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !309, file: !192, line: 321, baseType: !299, size: 32, offset: 832)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !309, file: !192, line: 322, baseType: !299, size: 32, offset: 864)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !309, file: !192, line: 323, baseType: !299, size: 32, offset: 896)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !309, file: !192, line: 324, baseType: !337, size: 64, offset: 960)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !192, line: 174, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 167, size: 256, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !339, file: !192, line: 169, baseType: !6, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !339, file: !192, line: 169, baseType: !6, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !339, file: !192, line: 170, baseType: !6, size: 32, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !339, file: !192, line: 171, baseType: !6, size: 32, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !339, file: !192, line: 172, baseType: !299, size: 32, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !339, file: !192, line: 173, baseType: !347, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !309, file: !192, line: 325, baseType: !6, size: 32, offset: 1024)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !309, file: !192, line: 326, baseType: !150, size: 64, offset: 1088)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !204, file: !192, line: 330, baseType: !6, size: 32, offset: 5056)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !204, file: !192, line: 331, baseType: !6, size: 32, offset: 5088)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !204, file: !192, line: 332, baseType: !6, size: 32, offset: 5120)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !204, file: !192, line: 334, baseType: !6, size: 32, offset: 5152)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !204, file: !192, line: 335, baseType: !6, size: 32, offset: 5184)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !204, file: !192, line: 336, baseType: !160, size: 32, offset: 5216)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !204, file: !192, line: 337, baseType: !160, size: 32, offset: 5248)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !204, file: !192, line: 338, baseType: !160, size: 32, offset: 5280)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !204, file: !192, line: 339, baseType: !160, size: 32, offset: 5312)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !204, file: !192, line: 340, baseType: !6, size: 32, offset: 5344)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !204, file: !192, line: 344, baseType: !6, size: 32, offset: 5376)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !204, file: !192, line: 356, baseType: !6, size: 32, offset: 5408)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !204, file: !192, line: 364, baseType: !6, size: 32, offset: 5440)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !204, file: !192, line: 367, baseType: !6, size: 32, offset: 5472)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !204, file: !192, line: 368, baseType: !6, size: 32, offset: 5504)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !204, file: !192, line: 369, baseType: !6, size: 32, offset: 5536)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !204, file: !192, line: 375, baseType: !367, size: 64, offset: 5568)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !5}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !193, file: !192, line: 543, baseType: !371, size: 448, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !192, line: 511, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 505, size: 448, elements: !373)
!373 = !{!374, !375, !376, !378}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !372, file: !192, line: 507, baseType: !6, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !372, file: !192, line: 508, baseType: !6, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !372, file: !192, line: 509, baseType: !377, size: 128, offset: 64)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !100)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !372, file: !192, line: 510, baseType: !379, size: 256, offset: 192)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 256, elements: !100)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !193, file: !192, line: 545, baseType: !382, size: 256, offset: 768)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !192, line: 503, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 496, size: 256, elements: !384)
!384 = !{!385, !386, !387, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !383, file: !192, line: 498, baseType: !7, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !383, file: !192, line: 499, baseType: !7, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !383, file: !192, line: 500, baseType: !7, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !383, file: !192, line: 502, baseType: !7, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !193, file: !192, line: 548, baseType: !5, size: 64, offset: 1024)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "read_frame", scope: !144, file: !143, line: 59, baseType: !391, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!6, !190, !152, !6}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "release_frame", scope: !144, file: !143, line: 60, baseType: !395, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!6, !190, !152}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "picture_clean", scope: !144, file: !143, line: 61, baseType: !399, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !190}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !144, file: !143, line: 62, baseType: !183, size: 64, offset: 384)
!403 = !{i32 7, !"Dwarf Version", i32 5}
!404 = !{i32 2, !"Debug Info Version", i32 3}
!405 = !{i32 1, !"wchar_size", i32 4}
!406 = !{i32 8, !"PIC Level", i32 2}
!407 = !{i32 7, !"PIE Level", i32 2}
!408 = !{i32 7, !"uwtable", i32 2}
!409 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!410 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!411 = distinct !DISubprogram(name: "open_file", scope: !3, file: !3, line: 384, type: !148, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !476}
!413 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !411, file: !3, line: 384, type: !150)
!414 = !DILocalVariable(name: "p_handle", arg: 2, scope: !411, file: !3, line: 384, type: !151)
!415 = !DILocalVariable(name: "info", arg: 3, scope: !411, file: !3, line: 384, type: !154)
!416 = !DILocalVariable(name: "opt", arg: 4, scope: !411, file: !3, line: 384, type: !174)
!417 = !DILocalVariable(name: "ret", scope: !411, file: !3, line: 386, type: !6)
!418 = !DILocalVariable(name: "tcfile_in", scope: !411, file: !3, line: 387, type: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !421, line: 7, baseType: !422)
!421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !423, line: 49, size: 1728, elements: !424)
!423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !440, !442, !443, !444, !446, !448, !450, !454, !457, !459, !462, !465, !466, !467, !471, !472}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !422, file: !423, line: 51, baseType: !6, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !422, file: !423, line: 54, baseType: !150, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !422, file: !423, line: 55, baseType: !150, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !422, file: !423, line: 56, baseType: !150, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !422, file: !423, line: 57, baseType: !150, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !422, file: !423, line: 58, baseType: !150, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !422, file: !423, line: 59, baseType: !150, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !422, file: !423, line: 60, baseType: !150, size: 64, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !422, file: !423, line: 61, baseType: !150, size: 64, offset: 512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !422, file: !423, line: 64, baseType: !150, size: 64, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !422, file: !423, line: 65, baseType: !150, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !422, file: !423, line: 66, baseType: !150, size: 64, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !422, file: !423, line: 68, baseType: !438, size: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !423, line: 36, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !422, file: !423, line: 70, baseType: !441, size: 64, offset: 832)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !422, file: !423, line: 72, baseType: !6, size: 32, offset: 896)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !422, file: !423, line: 73, baseType: !6, size: 32, offset: 928)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !422, file: !423, line: 74, baseType: !445, size: 64, offset: 960)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !11, line: 152, baseType: !12)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !422, file: !423, line: 77, baseType: !447, size: 16, offset: 1024)
!447 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !422, file: !423, line: 78, baseType: !449, size: 8, offset: 1040)
!449 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !422, file: !423, line: 79, baseType: !451, size: 8, offset: 1048)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 1)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !422, file: !423, line: 81, baseType: !455, size: 64, offset: 1088)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !423, line: 43, baseType: null)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !422, file: !423, line: 89, baseType: !458, size: 64, offset: 1152)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !11, line: 153, baseType: !12)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !422, file: !423, line: 91, baseType: !460, size: 64, offset: 1216)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !423, line: 37, flags: DIFlagFwdDecl)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !422, file: !423, line: 92, baseType: !463, size: 64, offset: 1280)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !423, line: 38, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !422, file: !423, line: 93, baseType: !441, size: 64, offset: 1344)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !422, file: !423, line: 94, baseType: !5, size: 64, offset: 1408)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !422, file: !423, line: 95, baseType: !468, size: 64, offset: 1472)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !469, line: 18, baseType: !470)
!469 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!470 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !422, file: !423, line: 96, baseType: !6, size: 32, offset: 1536)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !422, file: !423, line: 98, baseType: !473, size: 160, offset: 1568)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 20)
!476 = !DILocalVariable(name: "h", scope: !411, file: !3, line: 388, type: !477)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "timecode_hnd_t", file: !3, line: 42, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 28, size: 1024, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !489, !490, !491, !492, !494, !495}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !479, file: !3, line: 30, baseType: !142, size: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "p_handle", scope: !479, file: !3, line: 31, baseType: !152, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "frame_total", scope: !479, file: !3, line: 32, baseType: !6, size: 32, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "auto_timebase_num", scope: !479, file: !3, line: 33, baseType: !6, size: 32, offset: 544)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "auto_timebase_den", scope: !479, file: !3, line: 34, baseType: !6, size: 32, offset: 576)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_num", scope: !479, file: !3, line: 35, baseType: !487, size: 64, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !161, line: 27, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !11, line: 45, baseType: !470)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_den", scope: !479, file: !3, line: 36, baseType: !487, size: 64, offset: 704)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !479, file: !3, line: 37, baseType: !6, size: 32, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "stored_pts_num", scope: !479, file: !3, line: 38, baseType: !6, size: 32, offset: 800)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pts", scope: !479, file: !3, line: 39, baseType: !493, size: 64, offset: 832)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "assume_fps", scope: !479, file: !3, line: 40, baseType: !7, size: 64, offset: 896)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "last_timecode", scope: !479, file: !3, line: 41, baseType: !7, size: 64, offset: 960)
!496 = distinct !DIAssignID()
!497 = !DILocalVariable(name: "buff", scope: !498, file: !3, line: 106, type: !547)
!498 = distinct !DISubprogram(name: "parse_tcfile", scope: !3, file: !3, line: 104, type: !499, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{!6, !419, !477, !154}
!501 = !{!502, !503, !504, !497, !505, !506, !507, !508, !509, !510, !511, !513, !514, !517, !518, !519, !520, !521, !522, !523, !526, !527, !528, !530, !539, !540, !541, !542, !543, !546}
!502 = !DILocalVariable(name: "tcfile_in", arg: 1, scope: !498, file: !3, line: 104, type: !419)
!503 = !DILocalVariable(name: "h", arg: 2, scope: !498, file: !3, line: 104, type: !477)
!504 = !DILocalVariable(name: "info", arg: 3, scope: !498, file: !3, line: 104, type: !154)
!505 = !DILocalVariable(name: "ret", scope: !498, file: !3, line: 107, type: !6)
!506 = !DILocalVariable(name: "tcfv", scope: !498, file: !3, line: 107, type: !6)
!507 = !DILocalVariable(name: "num", scope: !498, file: !3, line: 107, type: !6)
!508 = !DILocalVariable(name: "seq_num", scope: !498, file: !3, line: 107, type: !6)
!509 = !DILocalVariable(name: "timecodes_num", scope: !498, file: !3, line: 107, type: !6)
!510 = !DILocalVariable(name: "pts_seek_offset", scope: !498, file: !3, line: 108, type: !8)
!511 = !DILocalVariable(name: "timecodes", scope: !498, file: !3, line: 109, type: !512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!513 = !DILocalVariable(name: "fpss", scope: !498, file: !3, line: 110, type: !512)
!514 = !DILocalVariable(name: "file_pos", scope: !515, file: !3, line: 121, type: !487)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 120, column: 5)
!516 = distinct !DILexicalBlock(scope: !498, file: !3, line: 119, column: 9)
!517 = !DILocalVariable(name: "assume_fps", scope: !515, file: !3, line: 122, type: !7)
!518 = !DILocalVariable(name: "seq_fps", scope: !515, file: !3, line: 122, type: !7)
!519 = !DILocalVariable(name: "start", scope: !515, file: !3, line: 123, type: !6)
!520 = !DILocalVariable(name: "end", scope: !515, file: !3, line: 123, type: !6)
!521 = !DILocalVariable(name: "prev_start", scope: !515, file: !3, line: 124, type: !6)
!522 = !DILocalVariable(name: "prev_end", scope: !515, file: !3, line: 124, type: !6)
!523 = !DILocalVariable(name: "exponent", scope: !524, file: !3, line: 215, type: !7)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 214, column: 9)
!525 = distinct !DILexicalBlock(scope: !515, file: !3, line: 213, column: 13)
!526 = !DILocalVariable(name: "assume_fps_sig", scope: !524, file: !3, line: 216, type: !7)
!527 = !DILocalVariable(name: "seq_fps_sig", scope: !524, file: !3, line: 216, type: !7)
!528 = !DILocalVariable(name: "file_pos", scope: !529, file: !3, line: 246, type: !487)
!529 = distinct !DILexicalBlock(scope: !516, file: !3, line: 245, column: 5)
!530 = !DILocalVariable(name: "i", scope: !531, file: !3, line: 307, type: !6)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 306, column: 17)
!532 = distinct !DILexicalBlock(scope: !533, file: !3, line: 305, column: 21)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 303, column: 13)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 302, column: 13)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 302, column: 13)
!536 = distinct !DILexicalBlock(scope: !537, file: !3, line: 298, column: 9)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 297, column: 18)
!538 = distinct !DILexicalBlock(scope: !529, file: !3, line: 295, column: 13)
!539 = !DILocalVariable(name: "fps_num", scope: !531, file: !3, line: 308, type: !487)
!540 = !DILocalVariable(name: "fps_den", scope: !531, file: !3, line: 308, type: !487)
!541 = !DILocalVariable(name: "exponent", scope: !531, file: !3, line: 309, type: !7)
!542 = !DILocalVariable(name: "fps_sig", scope: !531, file: !3, line: 310, type: !7)
!543 = !DILocalVariable(name: "i", scope: !544, file: !3, line: 342, type: !487)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 341, column: 5)
!545 = distinct !DILexicalBlock(scope: !498, file: !3, line: 340, column: 9)
!546 = !DILabel(scope: !498, name: "fail", file: !3, line: 373)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 256)
!550 = !DILocation(line: 0, scope: !498, inlinedAt: !551)
!551 = distinct !DILocation(line: 433, column: 9, scope: !552)
!552 = distinct !DILexicalBlock(scope: !411, file: !3, line: 433, column: 9)
!553 = distinct !DIAssignID()
!554 = distinct !DIAssignID()
!555 = !DILocation(line: 0, scope: !515, inlinedAt: !551)
!556 = distinct !DIAssignID()
!557 = distinct !DIAssignID()
!558 = !DILocation(line: 0, scope: !411)
!559 = !DILocation(line: 388, column: 25, scope: !411)
!560 = !DILocation(line: 389, column: 10, scope: !561)
!561 = distinct !DILexicalBlock(scope: !411, file: !3, line: 389, column: 9)
!562 = !DILocation(line: 389, column: 9, scope: !411)
!563 = !DILocation(line: 391, column: 18, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !3, line: 390, column: 5)
!565 = !DILocation(line: 391, column: 9, scope: !564)
!566 = !DILocation(line: 392, column: 9, scope: !564)
!567 = !DILocation(line: 394, column: 16, scope: !411)
!568 = !DILocation(line: 395, column: 19, scope: !411)
!569 = !DILocation(line: 395, column: 8, scope: !411)
!570 = !DILocation(line: 395, column: 17, scope: !411)
!571 = !DILocation(line: 396, column: 28, scope: !411)
!572 = !DILocation(line: 396, column: 22, scope: !411)
!573 = !DILocation(line: 396, column: 8, scope: !411)
!574 = !DILocation(line: 396, column: 20, scope: !411)
!575 = !DILocation(line: 397, column: 20, scope: !411)
!576 = !DILocation(line: 397, column: 8, scope: !411)
!577 = !DILocation(line: 397, column: 13, scope: !411)
!578 = !DILocation(line: 398, column: 14, scope: !579)
!579 = distinct !DILexicalBlock(scope: !411, file: !3, line: 398, column: 9)
!580 = !DILocation(line: 398, column: 9, scope: !579)
!581 = !DILocation(line: 398, column: 9, scope: !411)
!582 = !DILocation(line: 409, column: 8, scope: !411)
!583 = !DILocation(line: 409, column: 26, scope: !411)
!584 = !DILocation(line: 410, column: 8, scope: !411)
!585 = !DILocation(line: 410, column: 26, scope: !411)
!586 = !DILocation(line: 411, column: 9, scope: !411)
!587 = !DILocation(line: 400, column: 63, scope: !588)
!588 = distinct !DILexicalBlock(scope: !579, file: !3, line: 399, column: 5)
!589 = !DILocation(line: 400, column: 81, scope: !588)
!590 = !DILocation(line: 400, column: 15, scope: !588)
!591 = !DILocation(line: 401, column: 17, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !3, line: 401, column: 13)
!593 = !DILocation(line: 401, column: 13, scope: !588)
!594 = !DILocation(line: 402, column: 45, scope: !592)
!595 = !DILocation(line: 402, column: 31, scope: !592)
!596 = !DILocation(line: 402, column: 29, scope: !592)
!597 = !DILocation(line: 402, column: 13, scope: !592)
!598 = !DILocation(line: 403, column: 16, scope: !599)
!599 = distinct !DILexicalBlock(scope: !588, file: !3, line: 403, column: 13)
!600 = !DILocation(line: 403, column: 29, scope: !599)
!601 = !DILocation(line: 403, column: 42, scope: !599)
!602 = !DILocation(line: 403, column: 48, scope: !599)
!603 = !DILocation(line: 403, column: 61, scope: !599)
!604 = !DILocation(line: 403, column: 13, scope: !588)
!605 = !DILocation(line: 405, column: 22, scope: !606)
!606 = distinct !DILexicalBlock(scope: !599, file: !3, line: 404, column: 9)
!607 = !DILocation(line: 405, column: 13, scope: !606)
!608 = !DILocation(line: 406, column: 13, scope: !606)
!609 = !DILocation(line: 409, column: 28, scope: !411)
!610 = !DILocation(line: 410, column: 32, scope: !411)
!611 = !DILocation(line: 413, column: 12, scope: !612)
!612 = distinct !DILexicalBlock(scope: !411, file: !3, line: 413, column: 9)
!613 = !DILocation(line: 412, column: 33, scope: !614)
!614 = distinct !DILexicalBlock(scope: !411, file: !3, line: 411, column: 9)
!615 = !DILocation(line: 412, column: 27, scope: !614)
!616 = !DILocation(line: 412, column: 12, scope: !614)
!617 = !DILocation(line: 412, column: 25, scope: !614)
!618 = !DILocation(line: 412, column: 9, scope: !614)
!619 = !DILocation(line: 413, column: 9, scope: !612)
!620 = !DILocation(line: 413, column: 9, scope: !411)
!621 = !DILocation(line: 414, column: 12, scope: !612)
!622 = !DILocation(line: 414, column: 25, scope: !612)
!623 = !DILocation(line: 414, column: 9, scope: !612)
!624 = !DILocation(line: 415, column: 45, scope: !411)
!625 = !DILocation(line: 415, column: 34, scope: !411)
!626 = !DILocation(line: 416, column: 45, scope: !411)
!627 = !DILocation(line: 416, column: 34, scope: !411)
!628 = !DILocation(line: 418, column: 15, scope: !411)
!629 = !DILocation(line: 420, column: 17, scope: !411)
!630 = !DILocation(line: 421, column: 10, scope: !631)
!631 = distinct !DILexicalBlock(scope: !411, file: !3, line: 421, column: 9)
!632 = !DILocation(line: 421, column: 9, scope: !411)
!633 = !DILocation(line: 423, column: 18, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !3, line: 422, column: 5)
!635 = !DILocation(line: 423, column: 9, scope: !634)
!636 = !DILocation(line: 424, column: 9, scope: !634)
!637 = !DILocation(line: 106, column: 5, scope: !498, inlinedAt: !551)
!638 = !DILocation(line: 107, column: 5, scope: !498, inlinedAt: !551)
!639 = !DILocation(line: 112, column: 11, scope: !498, inlinedAt: !551)
!640 = !DILocation(line: 113, column: 13, scope: !641, inlinedAt: !551)
!641 = distinct !DILexicalBlock(scope: !498, file: !3, line: 113, column: 9)
!642 = !DILocation(line: 113, column: 18, scope: !641, inlinedAt: !551)
!643 = !DILocation(line: 113, column: 22, scope: !641, inlinedAt: !551)
!644 = !DILocation(line: 113, column: 32, scope: !641, inlinedAt: !551)
!645 = !DILocation(line: 115, column: 18, scope: !646, inlinedAt: !551)
!646 = distinct !DILexicalBlock(scope: !641, file: !3, line: 114, column: 5)
!647 = !DILocation(line: 115, column: 9, scope: !646, inlinedAt: !551)
!648 = !DILocation(line: 116, column: 9, scope: !646, inlinedAt: !551)
!649 = !DILocation(line: 119, column: 14, scope: !516, inlinedAt: !551)
!650 = !DILocation(line: 119, column: 9, scope: !498, inlinedAt: !551)
!651 = !DILocation(line: 122, column: 9, scope: !515, inlinedAt: !551)
!652 = !DILocation(line: 123, column: 9, scope: !515, inlinedAt: !551)
!653 = !DILocation(line: 123, column: 29, scope: !515, inlinedAt: !551)
!654 = !DILocation(line: 123, column: 20, scope: !515, inlinedAt: !551)
!655 = distinct !DIAssignID()
!656 = !DILocation(line: 126, column: 12, scope: !515, inlinedAt: !551)
!657 = !DILocation(line: 126, column: 23, scope: !515, inlinedAt: !551)
!658 = !DILocation(line: 127, column: 23, scope: !659, inlinedAt: !551)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 127, column: 9)
!660 = distinct !DILexicalBlock(scope: !515, file: !3, line: 127, column: 9)
!661 = !DILocation(line: 127, column: 62, scope: !659, inlinedAt: !551)
!662 = !DILocation(line: 127, column: 9, scope: !660, inlinedAt: !551)
!663 = !DILocation(line: 129, column: 17, scope: !664, inlinedAt: !551)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 129, column: 17)
!665 = distinct !DILexicalBlock(scope: !659, file: !3, line: 128, column: 9)
!666 = !DILocation(line: 129, column: 32, scope: !664, inlinedAt: !551)
!667 = !DILocation(line: 131, column: 17, scope: !668, inlinedAt: !551)
!668 = distinct !DILexicalBlock(scope: !665, file: !3, line: 131, column: 17)
!669 = !DILocation(line: 131, column: 62, scope: !668, inlinedAt: !551)
!670 = !DILocation(line: 131, column: 67, scope: !668, inlinedAt: !551)
!671 = !DILocation(line: 131, column: 70, scope: !668, inlinedAt: !551)
!672 = !DILocation(line: 131, column: 115, scope: !668, inlinedAt: !551)
!673 = !DILocation(line: 131, column: 17, scope: !665, inlinedAt: !551)
!674 = !DILocation(line: 133, column: 26, scope: !675, inlinedAt: !551)
!675 = distinct !DILexicalBlock(scope: !668, file: !3, line: 132, column: 13)
!676 = !DILocation(line: 133, column: 17, scope: !675, inlinedAt: !551)
!677 = !DILocation(line: 134, column: 17, scope: !675, inlinedAt: !551)
!678 = !DILocation(line: 127, column: 74, scope: !659, inlinedAt: !551)
!679 = distinct !{!679, !662, !680}
!680 = !DILocation(line: 137, column: 9, scope: !660, inlinedAt: !551)
!681 = !DILocation(line: 138, column: 16, scope: !682, inlinedAt: !551)
!682 = distinct !DILexicalBlock(scope: !515, file: !3, line: 138, column: 13)
!683 = !DILocation(line: 138, column: 27, scope: !682, inlinedAt: !551)
!684 = !DILocation(line: 138, column: 13, scope: !515, inlinedAt: !551)
!685 = !DILocation(line: 140, column: 22, scope: !686, inlinedAt: !551)
!686 = distinct !DILexicalBlock(scope: !682, file: !3, line: 139, column: 9)
!687 = !DILocation(line: 140, column: 13, scope: !686, inlinedAt: !551)
!688 = !DILocation(line: 141, column: 13, scope: !686, inlinedAt: !551)
!689 = !DILocation(line: 144, column: 20, scope: !515, inlinedAt: !551)
!690 = !DILocation(line: 145, column: 12, scope: !515, inlinedAt: !551)
!691 = !DILocation(line: 145, column: 27, scope: !515, inlinedAt: !551)
!692 = !DILocation(line: 146, column: 27, scope: !693, inlinedAt: !551)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 146, column: 9)
!694 = distinct !DILexicalBlock(scope: !515, file: !3, line: 146, column: 9)
!695 = !DILocation(line: 146, column: 66, scope: !693, inlinedAt: !551)
!696 = !DILocation(line: 146, column: 9, scope: !694, inlinedAt: !551)
!697 = !DILocation(line: 148, column: 17, scope: !698, inlinedAt: !551)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 148, column: 17)
!699 = distinct !DILexicalBlock(scope: !693, file: !3, line: 147, column: 9)
!700 = !DILocation(line: 148, column: 32, scope: !698, inlinedAt: !551)
!701 = !DILocation(line: 150, column: 21, scope: !702, inlinedAt: !551)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 150, column: 21)
!703 = distinct !DILexicalBlock(scope: !698, file: !3, line: 149, column: 13)
!704 = !DILocation(line: 150, column: 82, scope: !702, inlinedAt: !551)
!705 = !DILocation(line: 150, column: 21, scope: !703, inlinedAt: !551)
!706 = !DILocation(line: 151, column: 41, scope: !702, inlinedAt: !551)
!707 = !DILocation(line: 151, column: 45, scope: !702, inlinedAt: !551)
!708 = !DILocation(line: 151, column: 54, scope: !702, inlinedAt: !551)
!709 = !DILocation(line: 151, column: 49, scope: !702, inlinedAt: !551)
!710 = !DILocation(line: 151, column: 39, scope: !702, inlinedAt: !551)
!711 = !DILocation(line: 151, column: 21, scope: !702, inlinedAt: !551)
!712 = !DILocation(line: 154, column: 19, scope: !699, inlinedAt: !551)
!713 = !DILocation(line: 155, column: 26, scope: !714, inlinedAt: !551)
!714 = distinct !DILexicalBlock(scope: !699, file: !3, line: 155, column: 17)
!715 = !DILocation(line: 157, column: 26, scope: !716, inlinedAt: !551)
!716 = distinct !DILexicalBlock(scope: !714, file: !3, line: 156, column: 13)
!717 = !DILocation(line: 157, column: 17, scope: !716, inlinedAt: !551)
!718 = !DILocation(line: 158, column: 17, scope: !716, inlinedAt: !551)
!719 = !DILocation(line: 160, column: 17, scope: !720, inlinedAt: !551)
!720 = distinct !DILexicalBlock(scope: !699, file: !3, line: 160, column: 17)
!721 = !DILocation(line: 160, column: 25, scope: !720, inlinedAt: !551)
!722 = !DILocation(line: 160, column: 23, scope: !720, inlinedAt: !551)
!723 = !DILocation(line: 160, column: 29, scope: !720, inlinedAt: !551)
!724 = !DILocation(line: 160, column: 59, scope: !720, inlinedAt: !551)
!725 = !DILocation(line: 160, column: 71, scope: !720, inlinedAt: !551)
!726 = !DILocation(line: 162, column: 26, scope: !727, inlinedAt: !551)
!727 = distinct !DILexicalBlock(scope: !720, file: !3, line: 161, column: 13)
!728 = !DILocation(line: 162, column: 17, scope: !727, inlinedAt: !551)
!729 = !DILocation(line: 163, column: 17, scope: !727, inlinedAt: !551)
!730 = !DILocation(line: 167, column: 20, scope: !731, inlinedAt: !551)
!731 = distinct !DILexicalBlock(scope: !699, file: !3, line: 167, column: 17)
!732 = !DILocation(line: 167, column: 17, scope: !731, inlinedAt: !551)
!733 = !DILocation(line: 167, column: 38, scope: !731, inlinedAt: !551)
!734 = !DILocation(line: 167, column: 44, scope: !731, inlinedAt: !551)
!735 = !DILocation(line: 167, column: 41, scope: !731, inlinedAt: !551)
!736 = !DILocation(line: 167, column: 17, scope: !699, inlinedAt: !551)
!737 = !DILocation(line: 168, column: 17, scope: !731, inlinedAt: !551)
!738 = !DILocation(line: 0, scope: !694, inlinedAt: !551)
!739 = !DILocation(line: 146, column: 78, scope: !693, inlinedAt: !551)
!740 = distinct !{!740, !696, !741}
!741 = !DILocation(line: 169, column: 9, scope: !694, inlinedAt: !551)
!742 = !DILocation(line: 146, column: 22, scope: !694, inlinedAt: !551)
!743 = !DILocation(line: 170, column: 17, scope: !744, inlinedAt: !551)
!744 = distinct !DILexicalBlock(scope: !515, file: !3, line: 170, column: 13)
!745 = !DILocation(line: 170, column: 14, scope: !744, inlinedAt: !551)
!746 = !DILocation(line: 172, column: 48, scope: !515, inlinedAt: !551)
!747 = !DILocation(line: 170, column: 13, scope: !515, inlinedAt: !551)
!748 = !DILocation(line: 171, column: 33, scope: !744, inlinedAt: !551)
!749 = !DILocation(line: 171, column: 41, scope: !744, inlinedAt: !551)
!750 = !DILocation(line: 171, column: 31, scope: !744, inlinedAt: !551)
!751 = !DILocation(line: 171, column: 13, scope: !744, inlinedAt: !551)
!752 = !DILocation(line: 172, column: 28, scope: !515, inlinedAt: !551)
!753 = !DILocation(line: 172, column: 43, scope: !515, inlinedAt: !551)
!754 = !DILocation(line: 173, column: 9, scope: !515, inlinedAt: !551)
!755 = !DILocation(line: 175, column: 29, scope: !515, inlinedAt: !551)
!756 = !DILocation(line: 175, column: 43, scope: !515, inlinedAt: !551)
!757 = !DILocation(line: 175, column: 21, scope: !515, inlinedAt: !551)
!758 = !DILocation(line: 176, column: 14, scope: !759, inlinedAt: !551)
!759 = distinct !DILexicalBlock(scope: !515, file: !3, line: 176, column: 13)
!760 = !DILocation(line: 176, column: 13, scope: !515, inlinedAt: !551)
!761 = !DILocation(line: 178, column: 16, scope: !762, inlinedAt: !551)
!762 = distinct !DILexicalBlock(scope: !515, file: !3, line: 178, column: 13)
!763 = !DILocation(line: 178, column: 13, scope: !762, inlinedAt: !551)
!764 = !DILocation(line: 178, column: 34, scope: !762, inlinedAt: !551)
!765 = !DILocation(line: 178, column: 40, scope: !762, inlinedAt: !551)
!766 = !DILocation(line: 178, column: 37, scope: !762, inlinedAt: !551)
!767 = !DILocation(line: 178, column: 13, scope: !515, inlinedAt: !551)
!768 = !DILocation(line: 180, column: 37, scope: !769, inlinedAt: !551)
!769 = distinct !DILexicalBlock(scope: !762, file: !3, line: 179, column: 9)
!770 = !DILocation(line: 180, column: 28, scope: !769, inlinedAt: !551)
!771 = !DILocation(line: 180, column: 42, scope: !769, inlinedAt: !551)
!772 = !DILocation(line: 180, column: 20, scope: !769, inlinedAt: !551)
!773 = !DILocation(line: 181, column: 18, scope: !774, inlinedAt: !551)
!774 = distinct !DILexicalBlock(scope: !769, file: !3, line: 181, column: 17)
!775 = !DILocation(line: 181, column: 17, scope: !769, inlinedAt: !551)
!776 = !DILocation(line: 185, column: 38, scope: !515, inlinedAt: !551)
!777 = !DILocation(line: 185, column: 22, scope: !515, inlinedAt: !551)
!778 = !DILocation(line: 186, column: 24, scope: !779, inlinedAt: !551)
!779 = distinct !DILexicalBlock(scope: !515, file: !3, line: 186, column: 13)
!780 = !DILocation(line: 186, column: 13, scope: !515, inlinedAt: !551)
!781 = !DILocation(line: 188, column: 22, scope: !515, inlinedAt: !551)
!782 = !DILocation(line: 189, column: 9, scope: !783, inlinedAt: !551)
!783 = distinct !DILexicalBlock(scope: !515, file: !3, line: 189, column: 9)
!784 = !DILocation(line: 192, column: 32, scope: !785, inlinedAt: !551)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 192, column: 17)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 190, column: 9)
!787 = distinct !DILexicalBlock(scope: !783, file: !3, line: 189, column: 9)
!788 = !DILocation(line: 191, column: 13, scope: !786, inlinedAt: !551)
!789 = !DILocation(line: 192, column: 17, scope: !785, inlinedAt: !551)
!790 = !DILocation(line: 194, column: 19, scope: !786, inlinedAt: !551)
!791 = !DILocation(line: 195, column: 21, scope: !792, inlinedAt: !551)
!792 = distinct !DILexicalBlock(scope: !786, file: !3, line: 195, column: 17)
!793 = !DILocation(line: 195, column: 17, scope: !786, inlinedAt: !551)
!794 = !DILocation(line: 196, column: 29, scope: !792, inlinedAt: !551)
!795 = distinct !DIAssignID()
!796 = !DILocation(line: 196, column: 23, scope: !792, inlinedAt: !551)
!797 = distinct !DIAssignID()
!798 = !DILocation(line: 196, column: 17, scope: !792, inlinedAt: !551)
!799 = !DILocation(line: 197, column: 24, scope: !800, inlinedAt: !551)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 197, column: 13)
!801 = distinct !DILexicalBlock(scope: !786, file: !3, line: 197, column: 13)
!802 = !DILocation(line: 197, column: 32, scope: !800, inlinedAt: !551)
!803 = !DILocation(line: 197, column: 13, scope: !801, inlinedAt: !551)
!804 = !DILocation(line: 198, column: 38, scope: !800, inlinedAt: !551)
!805 = !DILocation(line: 198, column: 53, scope: !800, inlinedAt: !551)
!806 = !DILocation(line: 198, column: 31, scope: !800, inlinedAt: !551)
!807 = !DILocation(line: 198, column: 17, scope: !800, inlinedAt: !551)
!808 = !DILocation(line: 198, column: 36, scope: !800, inlinedAt: !551)
!809 = distinct !{!809, !803, !810}
!810 = !DILocation(line: 198, column: 59, scope: !801, inlinedAt: !551)
!811 = !DILocation(line: 199, column: 17, scope: !786, inlinedAt: !551)
!812 = !DILocation(line: 201, column: 24, scope: !813, inlinedAt: !551)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 201, column: 21)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 200, column: 13)
!815 = distinct !DILexicalBlock(scope: !786, file: !3, line: 199, column: 17)
!816 = !DILocation(line: 201, column: 21, scope: !813, inlinedAt: !551)
!817 = !DILocation(line: 201, column: 42, scope: !813, inlinedAt: !551)
!818 = !DILocation(line: 201, column: 48, scope: !813, inlinedAt: !551)
!819 = !DILocation(line: 201, column: 45, scope: !813, inlinedAt: !551)
!820 = !DILocation(line: 201, column: 21, scope: !814, inlinedAt: !551)
!821 = !DILocation(line: 203, column: 40, scope: !814, inlinedAt: !551)
!822 = !DILocation(line: 202, column: 39, scope: !813, inlinedAt: !551)
!823 = !DILocation(line: 202, column: 33, scope: !813, inlinedAt: !551)
!824 = !DILocation(line: 202, column: 21, scope: !813, inlinedAt: !551)
!825 = !DILocation(line: 202, column: 37, scope: !813, inlinedAt: !551)
!826 = !DILocation(line: 0, scope: !783, inlinedAt: !551)
!827 = !DILocation(line: 203, column: 27, scope: !814, inlinedAt: !551)
!828 = !DILocation(line: 203, column: 25, scope: !814, inlinedAt: !551)
!829 = distinct !DIAssignID()
!830 = !DILocation(line: 204, column: 29, scope: !831, inlinedAt: !551)
!831 = distinct !DILexicalBlock(scope: !814, file: !3, line: 204, column: 21)
!832 = !DILocation(line: 204, column: 21, scope: !814, inlinedAt: !551)
!833 = !DILocation(line: 206, column: 28, scope: !834, inlinedAt: !551)
!834 = distinct !DILexicalBlock(scope: !814, file: !3, line: 206, column: 17)
!835 = !DILocation(line: 206, column: 39, scope: !836, inlinedAt: !551)
!836 = distinct !DILexicalBlock(scope: !834, file: !3, line: 206, column: 17)
!837 = !DILocation(line: 206, column: 46, scope: !836, inlinedAt: !551)
!838 = !DILocation(line: 206, column: 17, scope: !834, inlinedAt: !551)
!839 = !DILocation(line: 207, column: 42, scope: !836, inlinedAt: !551)
!840 = !DILocation(line: 207, column: 57, scope: !836, inlinedAt: !551)
!841 = !DILocation(line: 207, column: 35, scope: !836, inlinedAt: !551)
!842 = !DILocation(line: 207, column: 21, scope: !836, inlinedAt: !551)
!843 = !DILocation(line: 207, column: 40, scope: !836, inlinedAt: !551)
!844 = distinct !{!844, !838, !845}
!845 = !DILocation(line: 207, column: 63, scope: !834, inlinedAt: !551)
!846 = distinct !{!846, !782, !847}
!847 = !DILocation(line: 209, column: 9, scope: !783, inlinedAt: !551)
!848 = !DILocation(line: 210, column: 16, scope: !849, inlinedAt: !551)
!849 = distinct !DILexicalBlock(scope: !515, file: !3, line: 210, column: 13)
!850 = !DILocation(line: 210, column: 13, scope: !849, inlinedAt: !551)
!851 = !DILocation(line: 210, column: 34, scope: !849, inlinedAt: !551)
!852 = !DILocation(line: 210, column: 40, scope: !849, inlinedAt: !551)
!853 = !DILocation(line: 210, column: 37, scope: !849, inlinedAt: !551)
!854 = !DILocation(line: 210, column: 13, scope: !515, inlinedAt: !551)
!855 = !DILocation(line: 211, column: 32, scope: !849, inlinedAt: !551)
!856 = !DILocation(line: 211, column: 13, scope: !849, inlinedAt: !551)
!857 = !DILocation(line: 211, column: 27, scope: !849, inlinedAt: !551)
!858 = !DILocation(line: 217, column: 56, scope: !859, inlinedAt: !551)
!859 = distinct !DILexicalBlock(scope: !524, file: !3, line: 217, column: 17)
!860 = !DILocation(line: 217, column: 17, scope: !859, inlinedAt: !551)
!861 = !DILocation(line: 217, column: 62, scope: !859, inlinedAt: !551)
!862 = !DILocation(line: 217, column: 17, scope: !524, inlinedAt: !551)
!863 = !DILocation(line: 219, column: 13, scope: !524, inlinedAt: !551)
!864 = !DILocation(line: 220, column: 43, scope: !524, inlinedAt: !551)
!865 = !DILocalVariable(name: "value", arg: 1, scope: !866, file: !3, line: 44, type: !7)
!866 = distinct !DISubprogram(name: "sigexp10", scope: !3, file: !3, line: 44, type: !867, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{!7, !7, !512}
!869 = !{!865, !870}
!870 = !DILocalVariable(name: "exponent", arg: 2, scope: !866, file: !3, line: 44, type: !512)
!871 = !DILocation(line: 0, scope: !866, inlinedAt: !872)
!872 = distinct !DILocation(line: 220, column: 30, scope: !524, inlinedAt: !551)
!873 = !DILocation(line: 47, column: 33, scope: !866, inlinedAt: !872)
!874 = !DILocation(line: 47, column: 26, scope: !866, inlinedAt: !872)
!875 = !DILocation(line: 47, column: 17, scope: !866, inlinedAt: !872)
!876 = !DILocation(line: 0, scope: !524, inlinedAt: !551)
!877 = !DILocation(line: 48, column: 18, scope: !866, inlinedAt: !872)
!878 = !DILocation(line: 221, column: 71, scope: !524, inlinedAt: !551)
!879 = !DILocation(line: 221, column: 47, scope: !524, inlinedAt: !551)
!880 = !DILocation(line: 221, column: 90, scope: !524, inlinedAt: !551)
!881 = !DILocation(line: 221, column: 43, scope: !524, inlinedAt: !551)
!882 = !DILocation(line: 222, column: 13, scope: !883, inlinedAt: !551)
!883 = distinct !DILexicalBlock(scope: !524, file: !3, line: 222, column: 13)
!884 = !DILocation(line: 234, scope: !885, inlinedAt: !551)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 234, column: 17)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 223, column: 13)
!887 = distinct !DILexicalBlock(scope: !883, file: !3, line: 222, column: 13)
!888 = !DILocation(line: 225, column: 36, scope: !889, inlinedAt: !551)
!889 = distinct !DILexicalBlock(scope: !886, file: !3, line: 225, column: 21)
!890 = !DILocation(line: 224, column: 17, scope: !886, inlinedAt: !551)
!891 = !DILocation(line: 225, column: 21, scope: !889, inlinedAt: !551)
!892 = !DILocation(line: 227, column: 23, scope: !886, inlinedAt: !551)
!893 = !DILocation(line: 228, column: 25, scope: !894, inlinedAt: !551)
!894 = distinct !DILexicalBlock(scope: !886, file: !3, line: 228, column: 21)
!895 = !DILocation(line: 228, column: 21, scope: !886, inlinedAt: !551)
!896 = !DILocation(line: 229, column: 33, scope: !894, inlinedAt: !551)
!897 = distinct !DIAssignID()
!898 = !DILocation(line: 229, column: 27, scope: !894, inlinedAt: !551)
!899 = distinct !DIAssignID()
!900 = !DILocation(line: 229, column: 21, scope: !894, inlinedAt: !551)
!901 = !DILocation(line: 230, column: 41, scope: !886, inlinedAt: !551)
!902 = !DILocation(line: 0, scope: !866, inlinedAt: !903)
!903 = distinct !DILocation(line: 230, column: 31, scope: !886, inlinedAt: !551)
!904 = !DILocation(line: 47, column: 33, scope: !866, inlinedAt: !903)
!905 = !DILocation(line: 47, column: 26, scope: !866, inlinedAt: !903)
!906 = !DILocation(line: 47, column: 17, scope: !866, inlinedAt: !903)
!907 = !DILocation(line: 48, column: 18, scope: !866, inlinedAt: !903)
!908 = !DILocation(line: 231, column: 72, scope: !886, inlinedAt: !551)
!909 = !DILocation(line: 231, column: 48, scope: !886, inlinedAt: !551)
!910 = !DILocation(line: 231, column: 88, scope: !886, inlinedAt: !551)
!911 = !DILocation(line: 231, column: 44, scope: !886, inlinedAt: !551)
!912 = !DILocation(line: 231, column: 25, scope: !886, inlinedAt: !551)
!913 = distinct !DIAssignID()
!914 = !DILocation(line: 232, column: 17, scope: !886, inlinedAt: !551)
!915 = !DILocation(line: 232, column: 36, scope: !916, inlinedAt: !551)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 232, column: 17)
!917 = distinct !DILexicalBlock(scope: !886, file: !3, line: 232, column: 17)
!918 = !DILocation(line: 232, column: 17, scope: !917, inlinedAt: !551)
!919 = !DILocation(line: 233, column: 42, scope: !916, inlinedAt: !551)
!920 = !DILocation(line: 233, column: 57, scope: !916, inlinedAt: !551)
!921 = !DILocation(line: 233, column: 35, scope: !916, inlinedAt: !551)
!922 = !DILocation(line: 233, column: 21, scope: !916, inlinedAt: !551)
!923 = !DILocation(line: 233, column: 40, scope: !916, inlinedAt: !551)
!924 = distinct !{!924, !925}
!925 = !{!"llvm.loop.unroll.disable"}
!926 = !DILocation(line: 234, column: 39, scope: !927, inlinedAt: !551)
!927 = distinct !DILexicalBlock(scope: !885, file: !3, line: 234, column: 17)
!928 = !DILocation(line: 234, column: 46, scope: !927, inlinedAt: !551)
!929 = !DILocation(line: 234, column: 17, scope: !885, inlinedAt: !551)
!930 = distinct !{!930, !882, !931}
!931 = !DILocation(line: 236, column: 13, scope: !883, inlinedAt: !551)
!932 = !DILocation(line: 235, column: 42, scope: !927, inlinedAt: !551)
!933 = distinct !{!933, !918, !934}
!934 = !DILocation(line: 233, column: 63, scope: !917, inlinedAt: !551)
!935 = !DILocation(line: 235, column: 57, scope: !927, inlinedAt: !551)
!936 = !DILocation(line: 235, column: 35, scope: !927, inlinedAt: !551)
!937 = !DILocation(line: 235, column: 21, scope: !927, inlinedAt: !551)
!938 = !DILocation(line: 235, column: 40, scope: !927, inlinedAt: !551)
!939 = distinct !{!939, !929, !940}
!940 = !DILocation(line: 235, column: 63, scope: !885, inlinedAt: !551)
!941 = !DILocation(line: 185, column: 20, scope: !515, inlinedAt: !551)
!942 = !DILocation(line: 238, column: 13, scope: !943, inlinedAt: !551)
!943 = distinct !DILexicalBlock(scope: !515, file: !3, line: 238, column: 13)
!944 = !DILocation(line: 238, column: 13, scope: !515, inlinedAt: !551)
!945 = !DILocation(line: 239, column: 13, scope: !943, inlinedAt: !551)
!946 = !DILocation(line: 241, column: 23, scope: !515, inlinedAt: !551)
!947 = !DILocation(line: 242, column: 28, scope: !515, inlinedAt: !551)
!948 = !DILocation(line: 242, column: 12, scope: !515, inlinedAt: !551)
!949 = !DILocation(line: 242, column: 26, scope: !515, inlinedAt: !551)
!950 = !DILocation(line: 243, column: 5, scope: !516, inlinedAt: !551)
!951 = !DILocation(line: 246, column: 29, scope: !529, inlinedAt: !551)
!952 = !DILocation(line: 0, scope: !529, inlinedAt: !551)
!953 = !DILocation(line: 248, column: 18, scope: !529, inlinedAt: !551)
!954 = !DILocation(line: 248, column: 33, scope: !529, inlinedAt: !551)
!955 = !DILocation(line: 249, column: 16, scope: !529, inlinedAt: !551)
!956 = !DILocation(line: 249, column: 55, scope: !529, inlinedAt: !551)
!957 = !DILocation(line: 249, column: 9, scope: !529, inlinedAt: !551)
!958 = !DILocation(line: 251, column: 17, scope: !959, inlinedAt: !551)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 251, column: 17)
!960 = distinct !DILexicalBlock(scope: !529, file: !3, line: 250, column: 9)
!961 = !DILocation(line: 251, column: 32, scope: !959, inlinedAt: !551)
!962 = !DILocation(line: 253, column: 22, scope: !963, inlinedAt: !551)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 253, column: 21)
!964 = distinct !DILexicalBlock(scope: !959, file: !3, line: 252, column: 13)
!965 = !DILocation(line: 253, column: 21, scope: !964, inlinedAt: !551)
!966 = !DILocation(line: 254, column: 32, scope: !963, inlinedAt: !551)
!967 = !DILocation(line: 254, column: 21, scope: !963, inlinedAt: !551)
!968 = distinct !{!968, !957, !969}
!969 = !DILocation(line: 260, column: 9, scope: !529, inlinedAt: !551)
!970 = !DILocation(line: 257, column: 27, scope: !971, inlinedAt: !551)
!971 = distinct !DILexicalBlock(scope: !960, file: !3, line: 257, column: 17)
!972 = !DILocation(line: 257, column: 21, scope: !971, inlinedAt: !551)
!973 = !DILocation(line: 257, column: 17, scope: !960, inlinedAt: !551)
!974 = !DILocation(line: 258, column: 17, scope: !971, inlinedAt: !551)
!975 = !DILocation(line: 259, column: 13, scope: !960, inlinedAt: !551)
!976 = distinct !{!976, !957, !969}
!977 = !DILocation(line: 261, column: 28, scope: !529, inlinedAt: !551)
!978 = !DILocation(line: 261, column: 48, scope: !529, inlinedAt: !551)
!979 = !DILocation(line: 261, column: 43, scope: !529, inlinedAt: !551)
!980 = !DILocation(line: 262, column: 14, scope: !981, inlinedAt: !551)
!981 = distinct !DILexicalBlock(scope: !529, file: !3, line: 262, column: 13)
!982 = !DILocation(line: 262, column: 13, scope: !529, inlinedAt: !551)
!983 = !DILocation(line: 264, column: 22, scope: !984, inlinedAt: !551)
!984 = distinct !DILexicalBlock(scope: !981, file: !3, line: 263, column: 9)
!985 = !DILocation(line: 264, column: 13, scope: !984, inlinedAt: !551)
!986 = !DILocation(line: 265, column: 13, scope: !984, inlinedAt: !551)
!987 = !DILocation(line: 267, column: 9, scope: !529, inlinedAt: !551)
!988 = !DILocation(line: 269, column: 29, scope: !529, inlinedAt: !551)
!989 = !DILocation(line: 269, column: 43, scope: !529, inlinedAt: !551)
!990 = !DILocation(line: 269, column: 21, scope: !529, inlinedAt: !551)
!991 = !DILocation(line: 270, column: 14, scope: !992, inlinedAt: !551)
!992 = distinct !DILexicalBlock(scope: !529, file: !3, line: 270, column: 13)
!993 = !DILocation(line: 270, column: 13, scope: !529, inlinedAt: !551)
!994 = !DILocation(line: 273, column: 9, scope: !529, inlinedAt: !551)
!995 = !DILocation(line: 274, column: 15, scope: !529, inlinedAt: !551)
!996 = !DILocation(line: 275, column: 17, scope: !997, inlinedAt: !551)
!997 = distinct !DILexicalBlock(scope: !529, file: !3, line: 275, column: 13)
!998 = !DILocation(line: 275, column: 13, scope: !529, inlinedAt: !551)
!999 = !DILocation(line: 280, column: 9, scope: !1000, inlinedAt: !551)
!1000 = distinct !DILexicalBlock(scope: !529, file: !3, line: 280, column: 9)
!1001 = !DILocation(line: 277, column: 22, scope: !1002, inlinedAt: !551)
!1002 = distinct !DILexicalBlock(scope: !997, file: !3, line: 276, column: 9)
!1003 = !DILocation(line: 277, column: 13, scope: !1002, inlinedAt: !551)
!1004 = !DILocation(line: 278, column: 13, scope: !1002, inlinedAt: !551)
!1005 = !DILocation(line: 285, column: 41, scope: !1006, inlinedAt: !551)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 281, column: 9)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 280, column: 9)
!1008 = !DILocation(line: 285, column: 19, scope: !1006, inlinedAt: !551)
!1009 = !DILocation(line: 286, column: 28, scope: !1006, inlinedAt: !551)
!1010 = !DILocation(line: 287, column: 21, scope: !1011, inlinedAt: !551)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 287, column: 17)
!1012 = !DILocation(line: 287, column: 26, scope: !1011, inlinedAt: !551)
!1013 = !DILocation(line: 287, column: 47, scope: !1011, inlinedAt: !551)
!1014 = !DILocation(line: 287, column: 44, scope: !1011, inlinedAt: !551)
!1015 = !DILocation(line: 287, column: 17, scope: !1006, inlinedAt: !551)
!1016 = !DILocation(line: 289, column: 26, scope: !1017, inlinedAt: !551)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 288, column: 13)
!1018 = !DILocation(line: 289, column: 17, scope: !1017, inlinedAt: !551)
!1019 = !DILocation(line: 290, column: 17, scope: !1017, inlinedAt: !551)
!1020 = !DILocation(line: 292, column: 13, scope: !1006, inlinedAt: !551)
!1021 = distinct !{!1021, !999, !1022}
!1022 = !DILocation(line: 293, column: 9, scope: !1000, inlinedAt: !551)
!1023 = !DILocation(line: 282, column: 13, scope: !1006, inlinedAt: !551)
!1024 = !DILocation(line: 283, column: 17, scope: !1025, inlinedAt: !551)
!1025 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 283, column: 17)
!1026 = !DILocation(line: 283, column: 32, scope: !1025, inlinedAt: !551)
!1027 = !DILocation(line: 295, column: 27, scope: !538, inlinedAt: !551)
!1028 = !DILocation(line: 295, column: 13, scope: !529, inlinedAt: !551)
!1029 = !DILocation(line: 296, column: 37, scope: !538, inlinedAt: !551)
!1030 = !DILocation(line: 296, column: 31, scope: !538, inlinedAt: !551)
!1031 = !DILocation(line: 296, column: 16, scope: !538, inlinedAt: !551)
!1032 = !DILocation(line: 296, column: 29, scope: !538, inlinedAt: !551)
!1033 = !DILocation(line: 333, column: 13, scope: !529, inlinedAt: !551)
!1034 = !DILocation(line: 297, column: 21, scope: !537, inlinedAt: !551)
!1035 = !DILocation(line: 297, column: 18, scope: !537, inlinedAt: !551)
!1036 = !DILocation(line: 297, column: 18, scope: !538, inlinedAt: !551)
!1037 = !DILocation(line: 299, column: 43, scope: !536, inlinedAt: !551)
!1038 = !DILocation(line: 299, column: 28, scope: !536, inlinedAt: !551)
!1039 = !DILocation(line: 299, column: 48, scope: !536, inlinedAt: !551)
!1040 = !DILocation(line: 299, column: 20, scope: !536, inlinedAt: !551)
!1041 = !DILocation(line: 300, column: 18, scope: !1042, inlinedAt: !551)
!1042 = distinct !DILexicalBlock(scope: !536, file: !3, line: 300, column: 17)
!1043 = !DILocation(line: 300, column: 17, scope: !536, inlinedAt: !551)
!1044 = !DILocation(line: 302, column: 13, scope: !535, inlinedAt: !551)
!1045 = !DILocation(line: 302, column: 31, scope: !534, inlinedAt: !551)
!1046 = !DILocation(line: 305, column: 30, scope: !532, inlinedAt: !551)
!1047 = !DILocation(line: 304, column: 48, scope: !533, inlinedAt: !551)
!1048 = !DILocation(line: 304, column: 34, scope: !533, inlinedAt: !551)
!1049 = !DILocation(line: 304, column: 55, scope: !533, inlinedAt: !551)
!1050 = !DILocation(line: 304, column: 53, scope: !533, inlinedAt: !551)
!1051 = !DILocation(line: 304, column: 31, scope: !533, inlinedAt: !551)
!1052 = !DILocation(line: 304, column: 17, scope: !533, inlinedAt: !551)
!1053 = !DILocation(line: 304, column: 27, scope: !533, inlinedAt: !551)
!1054 = !DILocation(line: 305, column: 43, scope: !532, inlinedAt: !551)
!1055 = !DILocation(line: 305, column: 21, scope: !533, inlinedAt: !551)
!1056 = !DILocation(line: 0, scope: !531, inlinedAt: !551)
!1057 = !DILocation(line: 0, scope: !866, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 310, column: 38, scope: !531, inlinedAt: !551)
!1059 = !DILocation(line: 47, column: 33, scope: !866, inlinedAt: !1058)
!1060 = !DILocation(line: 47, column: 26, scope: !866, inlinedAt: !1058)
!1061 = !DILocation(line: 47, column: 17, scope: !866, inlinedAt: !1058)
!1062 = !DILocation(line: 48, column: 18, scope: !866, inlinedAt: !1058)
!1063 = !DILocation(line: 314, column: 42, scope: !1064, inlinedAt: !551)
!1064 = distinct !DILexicalBlock(scope: !531, file: !3, line: 312, column: 21)
!1065 = !DILocation(line: 314, column: 50, scope: !1064, inlinedAt: !551)
!1066 = !DILocation(line: 314, column: 35, scope: !1064, inlinedAt: !551)
!1067 = !DILocation(line: 314, column: 62, scope: !1064, inlinedAt: !551)
!1068 = !DILocation(line: 315, column: 37, scope: !1069, inlinedAt: !551)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 315, column: 29)
!1070 = !DILocation(line: 315, column: 50, scope: !1069, inlinedAt: !551)
!1071 = !DILocation(line: 317, column: 25, scope: !1064, inlinedAt: !551)
!1072 = !DILocation(line: 313, column: 37, scope: !1064, inlinedAt: !551)
!1073 = distinct !{!1073, !1074, !1075}
!1074 = !DILocation(line: 311, column: 21, scope: !531, inlinedAt: !551)
!1075 = !DILocation(line: 318, column: 21, scope: !531, inlinedAt: !551)
!1076 = !DILocation(line: 315, column: 60, scope: !1069, inlinedAt: !551)
!1077 = !DILocation(line: 315, column: 76, scope: !1069, inlinedAt: !551)
!1078 = !DILocation(line: 315, column: 87, scope: !1069, inlinedAt: !551)
!1079 = !DILocation(line: 315, column: 98, scope: !1069, inlinedAt: !551)
!1080 = !DILocation(line: 315, column: 53, scope: !1069, inlinedAt: !551)
!1081 = !DILocation(line: 315, column: 110, scope: !1069, inlinedAt: !551)
!1082 = !DILocation(line: 315, column: 29, scope: !1064, inlinedAt: !551)
!1083 = !DILocation(line: 319, column: 39, scope: !531, inlinedAt: !551)
!1084 = !DILocation(line: 319, column: 47, scope: !531, inlinedAt: !551)
!1085 = !DILocation(line: 319, column: 53, scope: !531, inlinedAt: !551)
!1086 = !DILocation(line: 319, column: 50, scope: !531, inlinedAt: !551)
!1087 = !DILocalVariable(name: "b", arg: 2, scope: !1088, file: !153, line: 32, type: !8)
!1088 = distinct !DISubprogram(name: "gcd", scope: !153, file: !153, line: 32, type: !1089, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1091)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!8, !8, !8}
!1091 = !{!1092, !1087, !1093}
!1092 = !DILocalVariable(name: "a", arg: 1, scope: !1088, file: !153, line: 32, type: !8)
!1093 = !DILocalVariable(name: "c", scope: !1094, file: !153, line: 36, type: !8)
!1094 = distinct !DILexicalBlock(scope: !1088, file: !153, line: 35, column: 5)
!1095 = !DILocation(line: 0, scope: !1088, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 46, column: 18, scope: !1097, inlinedAt: !1101)
!1097 = distinct !DISubprogram(name: "lcm", scope: !153, file: !153, line: 44, type: !1089, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1098)
!1098 = !{!1099, !1100}
!1099 = !DILocalVariable(name: "a", arg: 1, scope: !1097, file: !153, line: 44, type: !8)
!1100 = !DILocalVariable(name: "b", arg: 2, scope: !1097, file: !153, line: 44, type: !8)
!1101 = distinct !DILocation(line: 319, column: 68, scope: !531, inlinedAt: !551)
!1102 = !DILocation(line: 36, column: 23, scope: !1094, inlinedAt: !1096)
!1103 = !DILocation(line: 0, scope: !1094, inlinedAt: !1096)
!1104 = !DILocation(line: 37, column: 14, scope: !1105, inlinedAt: !1096)
!1105 = distinct !DILexicalBlock(scope: !1094, file: !153, line: 37, column: 13)
!1106 = !DILocation(line: 46, column: 16, scope: !1097, inlinedAt: !1101)
!1107 = !DILocation(line: 46, column: 32, scope: !1097, inlinedAt: !1101)
!1108 = !DILocation(line: 319, column: 102, scope: !531, inlinedAt: !551)
!1109 = !DILocation(line: 319, column: 37, scope: !531, inlinedAt: !551)
!1110 = !DILocation(line: 320, column: 41, scope: !1111, inlinedAt: !551)
!1111 = distinct !DILexicalBlock(scope: !531, file: !3, line: 320, column: 25)
!1112 = !DILocation(line: 320, column: 25, scope: !531, inlinedAt: !551)
!1113 = !DILocation(line: 322, column: 46, scope: !1114, inlinedAt: !551)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 321, column: 21)
!1115 = !DILocation(line: 323, column: 25, scope: !1114, inlinedAt: !551)
!1116 = distinct !{!1116, !1044, !1117}
!1117 = !DILocation(line: 326, column: 13, scope: !535, inlinedAt: !551)
!1118 = !DILocation(line: 327, column: 20, scope: !1119, inlinedAt: !551)
!1119 = distinct !DILexicalBlock(scope: !536, file: !3, line: 327, column: 17)
!1120 = !DILocation(line: 327, column: 17, scope: !1119, inlinedAt: !551)
!1121 = !DILocation(line: 327, column: 38, scope: !1119, inlinedAt: !551)
!1122 = !DILocation(line: 327, column: 45, scope: !1119, inlinedAt: !551)
!1123 = !DILocation(line: 327, column: 42, scope: !1119, inlinedAt: !551)
!1124 = !DILocation(line: 327, column: 17, scope: !536, inlinedAt: !551)
!1125 = !DILocation(line: 328, column: 21, scope: !1126, inlinedAt: !551)
!1126 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 328, column: 21)
!1127 = !DILocation(line: 328, column: 72, scope: !1126, inlinedAt: !551)
!1128 = !DILocation(line: 328, column: 21, scope: !1119, inlinedAt: !551)
!1129 = !DILocation(line: 330, column: 13, scope: !536, inlinedAt: !551)
!1130 = !DILocation(line: 331, column: 9, scope: !536, inlinedAt: !551)
!1131 = !DILocation(line: 336, column: 43, scope: !1132, inlinedAt: !551)
!1132 = distinct !DILexicalBlock(scope: !529, file: !3, line: 333, column: 13)
!1133 = !DILocation(line: 334, column: 34, scope: !1132, inlinedAt: !551)
!1134 = !DILocation(line: 334, column: 65, scope: !1132, inlinedAt: !551)
!1135 = !DILocation(line: 334, column: 63, scope: !1132, inlinedAt: !551)
!1136 = !DILocation(line: 334, column: 31, scope: !1132, inlinedAt: !551)
!1137 = !DILocation(line: 334, column: 16, scope: !1132, inlinedAt: !551)
!1138 = !DILocation(line: 334, column: 27, scope: !1132, inlinedAt: !551)
!1139 = !DILocation(line: 334, column: 13, scope: !1132, inlinedAt: !551)
!1140 = !DILocation(line: 336, column: 29, scope: !1132, inlinedAt: !551)
!1141 = !DILocation(line: 336, column: 59, scope: !1132, inlinedAt: !551)
!1142 = !DILocation(line: 336, column: 53, scope: !1132, inlinedAt: !551)
!1143 = !DILocation(line: 336, column: 51, scope: !1132, inlinedAt: !551)
!1144 = !DILocation(line: 336, column: 16, scope: !1132, inlinedAt: !551)
!1145 = !DILocation(line: 336, column: 27, scope: !1132, inlinedAt: !551)
!1146 = !DILocation(line: 337, column: 28, scope: !529, inlinedAt: !551)
!1147 = !DILocation(line: 337, column: 12, scope: !529, inlinedAt: !551)
!1148 = !DILocation(line: 337, column: 26, scope: !529, inlinedAt: !551)
!1149 = !DILocation(line: 110, column: 13, scope: !498, inlinedAt: !551)
!1150 = !DILocation(line: 340, column: 12, scope: !545, inlinedAt: !551)
!1151 = !DILocation(line: 340, column: 9, scope: !545, inlinedAt: !551)
!1152 = !DILocation(line: 340, column: 30, scope: !545, inlinedAt: !551)
!1153 = !DILocation(line: 340, column: 36, scope: !545, inlinedAt: !551)
!1154 = !DILocation(line: 340, column: 33, scope: !545, inlinedAt: !551)
!1155 = !DILocation(line: 340, column: 9, scope: !498, inlinedAt: !551)
!1156 = !DILocation(line: 342, column: 30, scope: !544, inlinedAt: !551)
!1157 = !DILocation(line: 342, column: 47, scope: !544, inlinedAt: !551)
!1158 = !DILocation(line: 0, scope: !1088, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 342, column: 22, scope: !544, inlinedAt: !551)
!1160 = !DILocation(line: 34, column: 5, scope: !1088, inlinedAt: !1159)
!1161 = !DILocation(line: 36, column: 23, scope: !1094, inlinedAt: !1159)
!1162 = !DILocation(line: 0, scope: !1094, inlinedAt: !1159)
!1163 = !DILocation(line: 37, column: 14, scope: !1105, inlinedAt: !1159)
!1164 = !DILocation(line: 0, scope: !544, inlinedAt: !551)
!1165 = !DILocation(line: 343, column: 25, scope: !544, inlinedAt: !551)
!1166 = !DILocation(line: 344, column: 25, scope: !544, inlinedAt: !551)
!1167 = !DILocation(line: 345, column: 18, scope: !544, inlinedAt: !551)
!1168 = !DILocation(line: 345, column: 9, scope: !544, inlinedAt: !551)
!1169 = !DILocation(line: 346, column: 5, scope: !544, inlinedAt: !551)
!1170 = !DILocation(line: 347, column: 17, scope: !1171, inlinedAt: !551)
!1171 = distinct !DILexicalBlock(scope: !545, file: !3, line: 347, column: 14)
!1172 = !DILocation(line: 347, column: 43, scope: !1171, inlinedAt: !551)
!1173 = !DILocation(line: 349, column: 18, scope: !1174, inlinedAt: !551)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 348, column: 5)
!1175 = !DILocation(line: 349, column: 9, scope: !1174, inlinedAt: !551)
!1176 = !DILocation(line: 351, column: 9, scope: !1174, inlinedAt: !551)
!1177 = !DILocation(line: 354, column: 25, scope: !498, inlinedAt: !551)
!1178 = !DILocation(line: 354, column: 22, scope: !498, inlinedAt: !551)
!1179 = !DILocation(line: 354, column: 40, scope: !498, inlinedAt: !551)
!1180 = !DILocation(line: 354, column: 14, scope: !498, inlinedAt: !551)
!1181 = !DILocation(line: 354, column: 8, scope: !498, inlinedAt: !551)
!1182 = !DILocation(line: 354, column: 12, scope: !498, inlinedAt: !551)
!1183 = !DILocation(line: 355, column: 10, scope: !1184, inlinedAt: !551)
!1184 = distinct !DILexicalBlock(scope: !498, file: !3, line: 355, column: 9)
!1185 = !DILocation(line: 355, column: 9, scope: !498, inlinedAt: !551)
!1186 = !DILocation(line: 357, column: 47, scope: !498, inlinedAt: !551)
!1187 = !DILocation(line: 357, column: 34, scope: !498, inlinedAt: !551)
!1188 = !DILocation(line: 357, column: 67, scope: !498, inlinedAt: !551)
!1189 = !DILocation(line: 357, column: 56, scope: !498, inlinedAt: !551)
!1190 = !DILocation(line: 357, column: 85, scope: !498, inlinedAt: !551)
!1191 = !DILocation(line: 357, column: 82, scope: !498, inlinedAt: !551)
!1192 = !DILocation(line: 357, column: 80, scope: !498, inlinedAt: !551)
!1193 = !DILocation(line: 357, column: 99, scope: !498, inlinedAt: !551)
!1194 = !DILocation(line: 357, column: 23, scope: !498, inlinedAt: !551)
!1195 = !DILocation(line: 358, column: 15, scope: !498, inlinedAt: !551)
!1196 = !DILocation(line: 359, column: 23, scope: !1197, inlinedAt: !551)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 359, column: 5)
!1198 = distinct !DILexicalBlock(scope: !498, file: !3, line: 359, column: 5)
!1199 = !DILocation(line: 359, column: 5, scope: !1198, inlinedAt: !551)
!1200 = !DILocation(line: 361, column: 12, scope: !1201, inlinedAt: !551)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 360, column: 5)
!1202 = !DILocation(line: 361, column: 47, scope: !1201, inlinedAt: !551)
!1203 = !DILocation(line: 361, column: 52, scope: !1201, inlinedAt: !551)
!1204 = !DILocation(line: 361, column: 34, scope: !1201, inlinedAt: !551)
!1205 = !DILocation(line: 361, column: 91, scope: !1201, inlinedAt: !551)
!1206 = !DILocation(line: 361, column: 62, scope: !1201, inlinedAt: !551)
!1207 = !DILocation(line: 361, column: 86, scope: !1201, inlinedAt: !551)
!1208 = !DILocation(line: 361, column: 105, scope: !1201, inlinedAt: !551)
!1209 = !DILocation(line: 361, column: 23, scope: !1201, inlinedAt: !551)
!1210 = !DILocation(line: 361, column: 9, scope: !1201, inlinedAt: !551)
!1211 = !DILocation(line: 361, column: 21, scope: !1201, inlinedAt: !551)
!1212 = !DILocation(line: 362, column: 12, scope: !1201, inlinedAt: !551)
!1213 = !DILocation(line: 362, column: 9, scope: !1201, inlinedAt: !551)
!1214 = !DILocation(line: 362, column: 21, scope: !1201, inlinedAt: !551)
!1215 = !DILocation(line: 363, column: 16, scope: !1216, inlinedAt: !551)
!1216 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 363, column: 13)
!1217 = !DILocation(line: 363, column: 13, scope: !1216, inlinedAt: !551)
!1218 = !DILocation(line: 363, column: 28, scope: !1216, inlinedAt: !551)
!1219 = !DILocation(line: 363, column: 25, scope: !1216, inlinedAt: !551)
!1220 = !DILocation(line: 363, column: 13, scope: !1201, inlinedAt: !551)
!1221 = !DILocation(line: 365, column: 22, scope: !1222, inlinedAt: !551)
!1222 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 364, column: 9)
!1223 = !DILocation(line: 365, column: 13, scope: !1222, inlinedAt: !551)
!1224 = !DILocation(line: 373, column: 1, scope: !498, inlinedAt: !551)
!1225 = !DILocation(line: 374, column: 9, scope: !498, inlinedAt: !551)
!1226 = !DILocation(line: 359, column: 47, scope: !1197, inlinedAt: !551)
!1227 = !DILocation(line: 359, column: 28, scope: !1197, inlinedAt: !551)
!1228 = distinct !{!1228, !1199, !1229}
!1229 = !DILocation(line: 368, column: 5, scope: !1198, inlinedAt: !551)
!1230 = !DILocation(line: 375, column: 9, scope: !1231, inlinedAt: !551)
!1231 = distinct !DILexicalBlock(scope: !498, file: !3, line: 374, column: 9)
!1232 = !DILocation(line: 376, column: 9, scope: !498, inlinedAt: !551)
!1233 = !DILocation(line: 376, column: 9, scope: !1234, inlinedAt: !551)
!1234 = distinct !DILexicalBlock(scope: !498, file: !3, line: 376, column: 9)
!1235 = !DILocation(line: 377, column: 9, scope: !1234, inlinedAt: !551)
!1236 = !DILocation(line: 379, column: 1, scope: !498, inlinedAt: !551)
!1237 = !DILocation(line: 435, column: 16, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 435, column: 13)
!1239 = distinct !DILexicalBlock(scope: !552, file: !3, line: 434, column: 5)
!1240 = !DILocation(line: 435, column: 13, scope: !1238)
!1241 = !DILocation(line: 435, column: 13, scope: !1239)
!1242 = !DILocation(line: 436, column: 13, scope: !1238)
!1243 = !DILocation(line: 437, column: 9, scope: !1239)
!1244 = !DILocation(line: 438, column: 9, scope: !1239)
!1245 = !DILocation(line: 370, column: 5, scope: !498, inlinedAt: !551)
!1246 = !DILocation(line: 440, column: 5, scope: !411)
!1247 = !DILocation(line: 442, column: 11, scope: !411)
!1248 = !DILocation(line: 442, column: 29, scope: !411)
!1249 = !DILocation(line: 442, column: 26, scope: !411)
!1250 = !DILocation(line: 442, column: 24, scope: !411)
!1251 = !DILocation(line: 444, column: 11, scope: !411)
!1252 = !DILocation(line: 444, column: 15, scope: !411)
!1253 = !DILocation(line: 446, column: 5, scope: !411)
!1254 = !DILocation(line: 447, column: 1, scope: !411)
!1255 = distinct !DISubprogram(name: "get_frame_total", scope: !3, file: !3, line: 449, type: !184, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1256)
!1256 = !{!1257, !1258}
!1257 = !DILocalVariable(name: "handle", arg: 1, scope: !1255, file: !3, line: 449, type: !152)
!1258 = !DILocalVariable(name: "h", scope: !1255, file: !3, line: 451, type: !477)
!1259 = !DILocation(line: 0, scope: !1255)
!1260 = !DILocation(line: 452, column: 15, scope: !1255)
!1261 = !DILocation(line: 452, column: 5, scope: !1255)
!1262 = distinct !DISubprogram(name: "read_frame", scope: !3, file: !3, line: 455, type: !392, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1263)
!1263 = !{!1264, !1265, !1266, !1267, !1268}
!1264 = !DILocalVariable(name: "p_pic", arg: 1, scope: !1262, file: !3, line: 455, type: !190)
!1265 = !DILocalVariable(name: "handle", arg: 2, scope: !1262, file: !3, line: 455, type: !152)
!1266 = !DILocalVariable(name: "i_frame", arg: 3, scope: !1262, file: !3, line: 455, type: !6)
!1267 = !DILocalVariable(name: "h", scope: !1262, file: !3, line: 457, type: !477)
!1268 = !DILocalVariable(name: "ret", scope: !1262, file: !3, line: 458, type: !6)
!1269 = !DILocation(line: 0, scope: !1262)
!1270 = !DILocation(line: 458, column: 24, scope: !1262)
!1271 = !DILocation(line: 458, column: 46, scope: !1262)
!1272 = !DILocation(line: 458, column: 15, scope: !1262)
!1273 = !DILocation(line: 460, column: 22, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 460, column: 9)
!1275 = !DILocation(line: 460, column: 17, scope: !1274)
!1276 = !DILocation(line: 460, column: 32, scope: !1274)
!1277 = !DILocation(line: 460, column: 27, scope: !1274)
!1278 = !DILocation(line: 0, scope: !1274)
!1279 = !DILocation(line: 460, column: 9, scope: !1262)
!1280 = !DILocation(line: 463, column: 24, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 461, column: 5)
!1282 = !DILocation(line: 464, column: 5, scope: !1281)
!1283 = !DILocation(line: 467, column: 13, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 467, column: 13)
!1285 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 466, column: 5)
!1286 = !DILocation(line: 467, column: 13, scope: !1285)
!1287 = !DILocation(line: 469, column: 22, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 468, column: 9)
!1289 = !DILocation(line: 470, column: 91, scope: !1288)
!1290 = !DILocation(line: 469, column: 13, scope: !1288)
!1291 = !DILocation(line: 471, column: 22, scope: !1288)
!1292 = !DILocation(line: 471, column: 13, scope: !1288)
!1293 = !DILocation(line: 472, column: 20, scope: !1288)
!1294 = !DILocation(line: 473, column: 9, scope: !1288)
!1295 = !DILocation(line: 474, column: 36, scope: !1285)
!1296 = !DILocation(line: 474, column: 31, scope: !1285)
!1297 = !DILocation(line: 474, column: 12, scope: !1285)
!1298 = !DILocation(line: 474, column: 26, scope: !1285)
!1299 = !DILocation(line: 475, column: 84, scope: !1285)
!1300 = !DILocation(line: 475, column: 55, scope: !1285)
!1301 = !DILocation(line: 475, column: 79, scope: !1285)
!1302 = !DILocation(line: 475, column: 98, scope: !1285)
!1303 = !DILocation(line: 475, column: 24, scope: !1285)
!1304 = !DILocation(line: 478, column: 5, scope: !1262)
!1305 = distinct !DISubprogram(name: "release_frame", scope: !3, file: !3, line: 481, type: !396, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1306)
!1306 = !{!1307, !1308, !1309}
!1307 = !DILocalVariable(name: "pic", arg: 1, scope: !1305, file: !3, line: 481, type: !190)
!1308 = !DILocalVariable(name: "handle", arg: 2, scope: !1305, file: !3, line: 481, type: !152)
!1309 = !DILocalVariable(name: "h", scope: !1305, file: !3, line: 483, type: !477)
!1310 = !DILocation(line: 0, scope: !1305)
!1311 = !DILocation(line: 484, column: 18, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 484, column: 9)
!1313 = !DILocation(line: 484, column: 9, scope: !1312)
!1314 = !DILocation(line: 484, column: 9, scope: !1305)
!1315 = !DILocation(line: 485, column: 48, scope: !1312)
!1316 = !DILocation(line: 485, column: 16, scope: !1312)
!1317 = !DILocation(line: 485, column: 9, scope: !1312)
!1318 = !DILocation(line: 487, column: 1, scope: !1305)
!1319 = distinct !DISubprogram(name: "close_file", scope: !3, file: !3, line: 489, type: !184, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1320)
!1320 = !{!1321, !1322}
!1321 = !DILocalVariable(name: "handle", arg: 1, scope: !1319, file: !3, line: 489, type: !152)
!1322 = !DILocalVariable(name: "h", scope: !1319, file: !3, line: 491, type: !477)
!1323 = !DILocation(line: 0, scope: !1319)
!1324 = !DILocation(line: 492, column: 12, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 492, column: 9)
!1326 = !DILocation(line: 492, column: 9, scope: !1325)
!1327 = !DILocation(line: 492, column: 9, scope: !1319)
!1328 = !DILocation(line: 493, column: 9, scope: !1325)
!1329 = !DILocation(line: 494, column: 14, scope: !1319)
!1330 = !DILocation(line: 494, column: 29, scope: !1319)
!1331 = !DILocation(line: 494, column: 5, scope: !1319)
!1332 = !DILocation(line: 495, column: 5, scope: !1319)
!1333 = !DILocation(line: 496, column: 5, scope: !1319)
!1334 = !DISubprogram(name: "malloc", scope: !1335, file: !1335, line: 540, type: !1336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1335 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!5, !468}
!1338 = !DISubprogram(name: "fprintf", scope: !1339, file: !1339, line: 350, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1339 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!6, !1342, !1343, null}
!1342 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !419)
!1343 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !264)
!1344 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1339, file: !1339, line: 439, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!6, !1343, !1343, null}
!1347 = !DISubprogram(name: "strtoul", scope: !1335, file: !1335, line: 181, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!470, !1343, !1350, !6}
!1350 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1352 = !DISubprogram(name: "fopen", linkageName: "fopen64", scope: !1339, file: !1339, line: 270, type: !1353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!419, !1343, !1343}
!1355 = !DISubprogram(name: "fclose", scope: !1339, file: !1339, line: 178, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!6, !419}
!1358 = !DISubprogram(name: "free", scope: !1335, file: !1335, line: 555, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1359 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1339, file: !1339, line: 434, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1360 = !DISubprogram(name: "fgets", scope: !1339, file: !1339, line: 592, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!150, !1363, !6, !1342}
!1363 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)
!1364 = !DISubprogram(name: "ftell", scope: !1339, file: !1339, line: 718, type: !1365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!12, !419}
!1367 = !DISubprogram(name: "fseek", scope: !1339, file: !1339, line: 713, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!6, !419, !12, !6}
!1370 = distinct !DISubprogram(name: "correct_fps", scope: !3, file: !3, line: 54, type: !1371, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!7, !7, !477}
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1374 = !DILocalVariable(name: "fps", arg: 1, scope: !1370, file: !3, line: 54, type: !7)
!1375 = !DILocalVariable(name: "h", arg: 2, scope: !1370, file: !3, line: 54, type: !477)
!1376 = !DILocalVariable(name: "i", scope: !1370, file: !3, line: 56, type: !6)
!1377 = !DILocalVariable(name: "fps_num", scope: !1370, file: !3, line: 57, type: !487)
!1378 = !DILocalVariable(name: "fps_den", scope: !1370, file: !3, line: 57, type: !487)
!1379 = !DILocalVariable(name: "exponent", scope: !1370, file: !3, line: 58, type: !7)
!1380 = !DILocalVariable(name: "fps_sig", scope: !1370, file: !3, line: 59, type: !7)
!1381 = !DILocation(line: 0, scope: !1370)
!1382 = !DILocation(line: 0, scope: !866, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 59, column: 22, scope: !1370)
!1384 = !DILocation(line: 47, column: 33, scope: !866, inlinedAt: !1383)
!1385 = !DILocation(line: 47, column: 26, scope: !866, inlinedAt: !1383)
!1386 = !DILocation(line: 47, column: 17, scope: !866, inlinedAt: !1383)
!1387 = !DILocation(line: 48, column: 18, scope: !866, inlinedAt: !1383)
!1388 = !DILocation(line: 63, column: 26, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 61, column: 5)
!1390 = !DILocation(line: 63, column: 34, scope: !1389)
!1391 = !DILocation(line: 63, column: 19, scope: !1389)
!1392 = !DILocation(line: 63, column: 46, scope: !1389)
!1393 = !DILocation(line: 64, column: 21, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 64, column: 13)
!1395 = !DILocation(line: 64, column: 13, scope: !1389)
!1396 = !DILocation(line: 72, column: 9, scope: !1389)
!1397 = !DILocation(line: 62, column: 21, scope: !1389)
!1398 = distinct !{!1398, !1399, !1400}
!1399 = !DILocation(line: 60, column: 5, scope: !1370)
!1400 = !DILocation(line: 73, column: 5, scope: !1370)
!1401 = !DILocation(line: 66, column: 22, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 65, column: 9)
!1403 = !DILocation(line: 66, column: 13, scope: !1402)
!1404 = !DILocation(line: 68, column: 13, scope: !1402)
!1405 = !DILocation(line: 70, column: 20, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 70, column: 13)
!1407 = !DILocation(line: 70, column: 36, scope: !1406)
!1408 = !DILocation(line: 70, column: 47, scope: !1406)
!1409 = !DILocation(line: 70, column: 58, scope: !1406)
!1410 = !DILocation(line: 70, column: 13, scope: !1406)
!1411 = !DILocation(line: 70, column: 70, scope: !1406)
!1412 = !DILocation(line: 70, column: 13, scope: !1389)
!1413 = !DILocation(line: 74, column: 12, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 74, column: 9)
!1415 = !DILocation(line: 74, column: 9, scope: !1414)
!1416 = !DILocation(line: 74, column: 9, scope: !1370)
!1417 = !DILocation(line: 76, column: 30, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 75, column: 5)
!1419 = !DILocation(line: 76, column: 27, scope: !1418)
!1420 = !DILocation(line: 0, scope: !1088, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 46, column: 18, scope: !1097, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 76, column: 45, scope: !1418)
!1423 = !DILocation(line: 36, column: 23, scope: !1094, inlinedAt: !1421)
!1424 = !DILocation(line: 0, scope: !1094, inlinedAt: !1421)
!1425 = !DILocation(line: 37, column: 14, scope: !1105, inlinedAt: !1421)
!1426 = !DILocation(line: 46, column: 16, scope: !1097, inlinedAt: !1422)
!1427 = !DILocation(line: 46, column: 32, scope: !1097, inlinedAt: !1422)
!1428 = !DILocation(line: 76, column: 79, scope: !1418)
!1429 = !DILocation(line: 76, column: 25, scope: !1418)
!1430 = !DILocation(line: 77, column: 29, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 77, column: 13)
!1432 = !DILocation(line: 77, column: 13, scope: !1418)
!1433 = !DILocation(line: 78, column: 34, scope: !1431)
!1434 = !DILocation(line: 78, column: 13, scope: !1431)
!1435 = !DILocation(line: 81, column: 1, scope: !1370)
!1436 = distinct !DISubprogram(name: "try_mkv_timebase_den", scope: !3, file: !3, line: 83, type: !1437, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!6, !512, !477, !6}
!1439 = !{!1440, !1441, !1442, !1443, !1445, !1448, !1449}
!1440 = !DILocalVariable(name: "fpss", arg: 1, scope: !1436, file: !3, line: 83, type: !512)
!1441 = !DILocalVariable(name: "h", arg: 2, scope: !1436, file: !3, line: 83, type: !477)
!1442 = !DILocalVariable(name: "loop_num", arg: 3, scope: !1436, file: !3, line: 83, type: !6)
!1443 = !DILocalVariable(name: "num", scope: !1444, file: !3, line: 87, type: !6)
!1444 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 87, column: 5)
!1445 = !DILocalVariable(name: "fps_den", scope: !1446, file: !3, line: 89, type: !487)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 88, column: 5)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 87, column: 5)
!1448 = !DILocalVariable(name: "exponent", scope: !1446, file: !3, line: 90, type: !7)
!1449 = !DILocalVariable(name: "fps_sig", scope: !1446, file: !3, line: 91, type: !7)
!1450 = !DILocation(line: 0, scope: !1436)
!1451 = !DILocation(line: 85, column: 8, scope: !1436)
!1452 = !DILocation(line: 85, column: 21, scope: !1436)
!1453 = !DILocation(line: 86, column: 8, scope: !1436)
!1454 = !DILocation(line: 86, column: 21, scope: !1436)
!1455 = !DILocation(line: 0, scope: !1444)
!1456 = !DILocation(line: 87, column: 27, scope: !1447)
!1457 = !DILocation(line: 87, column: 5, scope: !1444)
!1458 = !DILocation(line: 87, column: 42, scope: !1447)
!1459 = distinct !{!1459, !1457, !1460}
!1460 = !DILocation(line: 100, column: 5, scope: !1444)
!1461 = !DILocation(line: 91, column: 36, scope: !1446)
!1462 = !DILocation(line: 0, scope: !866, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 91, column: 26, scope: !1446)
!1464 = !DILocation(line: 47, column: 33, scope: !866, inlinedAt: !1463)
!1465 = !DILocation(line: 47, column: 26, scope: !866, inlinedAt: !1463)
!1466 = !DILocation(line: 47, column: 17, scope: !866, inlinedAt: !1463)
!1467 = !DILocation(line: 0, scope: !1446)
!1468 = !DILocation(line: 48, column: 18, scope: !866, inlinedAt: !1463)
!1469 = !DILocation(line: 92, column: 43, scope: !1446)
!1470 = !DILocation(line: 92, column: 19, scope: !1446)
!1471 = !DILocation(line: 92, column: 55, scope: !1446)
!1472 = !DILocation(line: 93, column: 27, scope: !1446)
!1473 = !DILocation(line: 93, column: 35, scope: !1446)
!1474 = !DILocation(line: 93, column: 41, scope: !1446)
!1475 = !DILocation(line: 93, column: 38, scope: !1446)
!1476 = !DILocation(line: 0, scope: !1088, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 93, column: 56, scope: !1446)
!1478 = !DILocation(line: 36, column: 23, scope: !1094, inlinedAt: !1477)
!1479 = !DILocation(line: 0, scope: !1094, inlinedAt: !1477)
!1480 = !DILocation(line: 37, column: 14, scope: !1105, inlinedAt: !1477)
!1481 = !DILocation(line: 93, column: 90, scope: !1446)
!1482 = !DILocation(line: 93, column: 25, scope: !1446)
!1483 = !DILocation(line: 94, column: 42, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 94, column: 13)
!1485 = !DILocation(line: 96, column: 22, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 95, column: 9)
!1487 = !DILocation(line: 96, column: 13, scope: !1486)
!1488 = !DILocation(line: 102, column: 1, scope: !1436)
!1489 = !DISubprogram(name: "pow", scope: !1490, file: !1490, line: 140, type: !1491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1490 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!7, !7, !7}
!1493 = !DISubprogram(name: "log10", scope: !1490, file: !1490, line: 107, type: !1494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!7, !7}
