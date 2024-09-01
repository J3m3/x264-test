; ModuleID = 'x264_src/input/y4m.c'
source_filename = "x264_src/input/y4m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@y4m_input = dso_local local_unnamed_addr constant %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr @x264_picture_alloc, ptr @read_frame, ptr null, ptr @x264_picture_clean, ptr @close_file }, align 8, !dbg !0
@stdin = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !40
@.str.2 = private unnamed_addr constant [10 x i8] c"YUV4MPEG2\00", align 1, !dbg !45
@.str.4 = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1, !dbg !53
@.str.5 = private unnamed_addr constant [7 x i8] c"YSCSS=\00", align 1, !dbg !58
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"y4m [error]: colorspace unhandled\0A\00", align 1, !dbg !63
@.str.7 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1, !dbg !68
@.str.8 = private unnamed_addr constant [43 x i8] c"y4m [error]: bad header magic (%x <=> %s)\0A\00", align 1, !dbg !70
@.str.9 = private unnamed_addr constant [32 x i8] c"y4m [error]: bad frame header!\0A\00", align 1, !dbg !75

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @open_file(ptr nocapture noundef readonly %psz_filename, ptr nocapture noundef writeonly %p_handle, ptr nocapture noundef writeonly %info, ptr nocapture readnone %opt) #0 !dbg !348 {
entry:
  %n = alloca i32, align 4, !DIAssignID !434
    #dbg_assign(i1 undef, !422, !DIExpression(), !434, ptr %n, !DIExpression(), !435)
  %d = alloca i32, align 4, !DIAssignID !436
    #dbg_assign(i1 undef, !423, !DIExpression(), !436, ptr %d, !DIExpression(), !435)
  %header = alloca [90 x i8], align 16, !DIAssignID !437
    #dbg_assign(i1 undef, !424, !DIExpression(), !437, ptr %header, !DIExpression(), !435)
  %tokend = alloca ptr, align 8, !DIAssignID !438
    #dbg_assign(i1 undef, !428, !DIExpression(), !438, ptr %tokend, !DIExpression(), !435)
    #dbg_value(ptr %psz_filename, !350, !DIExpression(), !435)
    #dbg_value(ptr %p_handle, !351, !DIExpression(), !435)
    #dbg_value(ptr %info, !352, !DIExpression(), !435)
    #dbg_value(ptr poison, !353, !DIExpression(), !435)
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #11, !dbg !439
    #dbg_value(ptr %call, !354, !DIExpression(), !435)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12, !dbg !440
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #12, !dbg !440
  call void @llvm.lifetime.start.p0(i64 90, ptr nonnull %header) #12, !dbg !441
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tokend) #12, !dbg !442
    #dbg_value(i32 0, !430, !DIExpression(), !435)
    #dbg_value(i32 0, !431, !DIExpression(), !435)
  %tobool.not = icmp eq ptr %call, null, !dbg !443
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !445

if.end:                                           ; preds = %entry
  %next_frame = getelementptr inbounds i8, ptr %call, i64 16, !dbg !446
  store i32 0, ptr %next_frame, align 8, !dbg !447
  %vfr = getelementptr inbounds i8, ptr %info, i64 40, !dbg !448
  store i32 0, ptr %vfr, align 4, !dbg !449
  %0 = load i8, ptr %psz_filename, align 1
  %.not = icmp eq i8 %0, 45
  br i1 %.not, label %sub_1, label %if.else

sub_1:                                            ; preds = %if.end
  %1 = getelementptr inbounds i8, ptr %psz_filename, i64 1
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0, !dbg !450
  br i1 %3, label %if.then3, label %if.else, !dbg !452

if.then3:                                         ; preds = %sub_1
  %4 = load ptr, ptr @stdin, align 8, !dbg !453
  br label %if.end6, !dbg !454

if.else:                                          ; preds = %if.end, %sub_1
  %call4 = tail call noalias ptr @fopen64(ptr noundef nonnull %psz_filename, ptr noundef nonnull @.str.1), !dbg !455
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %5 = phi ptr [ %4, %if.then3 ], [ %call4, %if.else ], !dbg !456
  store ptr %5, ptr %call, align 8, !dbg !456
  %cmp = icmp eq ptr %5, null, !dbg !457
  br i1 %cmp, label %cleanup, label %if.end9, !dbg !459

if.end9:                                          ; preds = %if.end6
  %frame_header_len = getelementptr inbounds i8, ptr %call, i64 24, !dbg !460
  store i32 6, ptr %frame_header_len, align 8, !dbg !461
    #dbg_value(i32 0, !421, !DIExpression(), !435)
  br label %for.body, !dbg !462

for.body:                                         ; preds = %if.end9, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end9 ], [ %add, %for.inc ]
    #dbg_value(i64 %indvars.iv, !421, !DIExpression(), !435)
  %call12 = tail call i32 @fgetc(ptr noundef nonnull %5), !dbg !464
  %conv = trunc i32 %call12 to i8, !dbg !464
  %arrayidx = getelementptr inbounds [90 x i8], ptr %header, i64 0, i64 %indvars.iv, !dbg !467
  store i8 %conv, ptr %arrayidx, align 1, !dbg !468
  %sext.mask = and i32 %call12, 255, !dbg !469
  %cmp16 = icmp eq i32 %sext.mask, 10, !dbg !469
  %add = add nuw i64 %indvars.iv, 1, !dbg !471
  br i1 %cmp16, label %lor.lhs.false, label %for.inc, !dbg !472

for.inc:                                          ; preds = %for.body
    #dbg_value(i64 %add, !421, !DIExpression(), !435)
  %exitcond.not = icmp eq i64 %add, 80, !dbg !473
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !462, !llvm.loop !474

lor.lhs.false:                                    ; preds = %for.body
  %idxprom19 = and i64 %add, 4294967295, !dbg !476
  %arrayidx20 = getelementptr inbounds [90 x i8], ptr %header, i64 0, i64 %idxprom19, !dbg !476
  store i8 32, ptr %arrayidx20, align 1, !dbg !478
  %add21 = add nuw i64 %indvars.iv, 2, !dbg !479
  %idxprom22 = and i64 %add21, 4294967295, !dbg !480
  %arrayidx23 = getelementptr inbounds [90 x i8], ptr %header, i64 0, i64 %idxprom22, !dbg !480
  store i8 0, ptr %arrayidx23, align 1, !dbg !481
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %header, ptr noundef nonnull dereferenceable(9) @.str.2, i64 9), !dbg !482
  %tobool28.not = icmp eq i32 %bcmp, 0, !dbg !482
  br i1 %tobool28.not, label %if.end30, label %cleanup, !dbg !484

if.end30:                                         ; preds = %lor.lhs.false
  %6 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !485
  %add31 = add nuw nsw i32 %6, 1, !dbg !486
  %idxprom32 = zext nneg i32 %add31 to i64, !dbg !487
  %arrayidx33 = getelementptr inbounds i8, ptr %header, i64 %idxprom32, !dbg !487
    #dbg_value(ptr %arrayidx33, !429, !DIExpression(), !435)
  %seq_header_len = getelementptr inbounds i8, ptr %call, i64 20, !dbg !488
  store i32 %add31, ptr %seq_header_len, align 4, !dbg !489
    #dbg_value(ptr %header, !432, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !490)
    #dbg_value(i32 0, !431, !DIExpression(), !435)
    #dbg_value(i32 0, !430, !DIExpression(), !435)
  %cmp37189 = icmp ugt i64 %indvars.iv, 9, !dbg !491
  br i1 %cmp37189, label %for.body39.lr.ph, label %if.end117, !dbg !493

for.body39.lr.ph:                                 ; preds = %if.end30
  %arrayidx35 = getelementptr inbounds i8, ptr %header, i64 10, !dbg !494
    #dbg_value(ptr %arrayidx35, !432, !DIExpression(), !490)
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
  br label %for.body39, !dbg !493

for.cond.cleanup:                                 ; preds = %for.inc102
  %cmp105 = icmp eq i32 %colorspace.2.fr, 0, !dbg !495
  %spec.select = select i1 %cmp105, i32 %alt_colorspace.2, i32 %colorspace.2.fr, !dbg !497
    #dbg_value(i32 poison, !430, !DIExpression(), !435)
  %cmp113.not = icmp ult i32 %spec.select, 2, !dbg !498
  br i1 %cmp113.not, label %if.end117, label %if.then115, !dbg !500

for.body39:                                       ; preds = %for.body39.lr.ph, %for.inc102
  %tokstart.0192 = phi ptr [ %arrayidx35, %for.body39.lr.ph ], [ %incdec.ptr103, %for.inc102 ]
  %alt_colorspace.0191 = phi i32 [ 0, %for.body39.lr.ph ], [ %alt_colorspace.2, %for.inc102 ]
  %colorspace.0190 = phi i32 [ 0, %for.body39.lr.ph ], [ %colorspace.2.fr, %for.inc102 ]
    #dbg_value(ptr %tokstart.0192, !432, !DIExpression(), !490)
    #dbg_value(i32 %alt_colorspace.0191, !431, !DIExpression(), !435)
    #dbg_value(i32 %colorspace.0190, !430, !DIExpression(), !435)
  %7 = load i8, ptr %tokstart.0192, align 1, !dbg !501
  %cmp41 = icmp eq i8 %7, 32, !dbg !504
  br i1 %cmp41, label %for.inc102, label %if.end44, !dbg !505

if.end44:                                         ; preds = %for.body39
  %incdec.ptr = getelementptr inbounds i8, ptr %tokstart.0192, i64 1, !dbg !506
    #dbg_value(ptr %incdec.ptr, !432, !DIExpression(), !490)
  switch i8 %7, label %for.inc102 [
    i8 87, label %sw.bb
    i8 72, label %sw.bb49
    i8 67, label %sub_0179
    i8 73, label %sw.bb60
    i8 70, label %sw.bb69
    i8 65, label %sw.bb79
    i8 88, label %sw.bb90
  ], !dbg !507

sw.bb:                                            ; preds = %if.end44
  %call46 = call i64 @strtol(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull %tokend, i32 noundef 10) #12, !dbg !508
  %conv47 = trunc i64 %call46 to i32, !dbg !508
  store i32 %conv47, ptr %width, align 4, !dbg !510
  store i32 %conv47, ptr %width48, align 8, !dbg !511
  %8 = load ptr, ptr %tokend, align 8, !dbg !512
    #dbg_value(ptr %8, !432, !DIExpression(), !490)
  br label %for.inc102, !dbg !513

sw.bb49:                                          ; preds = %if.end44
  %call50 = call i64 @strtol(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull %tokend, i32 noundef 10) #12, !dbg !514
  %conv51 = trunc i64 %call50 to i32, !dbg !514
  store i32 %conv51, ptr %height, align 4, !dbg !515
  store i32 %conv51, ptr %height52, align 4, !dbg !516
  %9 = load ptr, ptr %tokend, align 8, !dbg !517
    #dbg_value(ptr %9, !432, !DIExpression(), !490)
  br label %for.inc102, !dbg !518

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
  %tobool55.not = icmp eq i32 %21, 0, !dbg !519
  %. = select i1 %tobool55.not, i32 1, i32 9
    #dbg_value(i32 %., !430, !DIExpression(), !435)
  %call59 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %incdec.ptr, i32 noundef 32) #13, !dbg !521
    #dbg_value(ptr %call59, !432, !DIExpression(), !490)
  br label %for.inc102, !dbg !522

sw.bb60:                                          ; preds = %if.end44
  %incdec.ptr61 = getelementptr inbounds i8, ptr %tokstart.0192, i64 2, !dbg !523
    #dbg_value(ptr %incdec.ptr61, !432, !DIExpression(), !490)
  %22 = load i8, ptr %incdec.ptr, align 1, !dbg !524
  switch i8 %22, label %for.inc102 [
    i8 116, label %sw.bb63
    i8 98, label %sw.bb64
    i8 109, label %sw.bb67
  ], !dbg !525

sw.bb63:                                          ; preds = %sw.bb60
  store i32 1, ptr %interlaced68, align 4, !dbg !526
  store i32 1, ptr %tff66, align 4, !dbg !528
  br label %for.inc102, !dbg !529

sw.bb64:                                          ; preds = %sw.bb60
  store i32 1, ptr %interlaced68, align 4, !dbg !530
  store i32 0, ptr %tff66, align 4, !dbg !531
  br label %for.inc102, !dbg !532

sw.bb67:                                          ; preds = %sw.bb60
  store i32 1, ptr %interlaced68, align 4, !dbg !533
  br label %for.inc102, !dbg !534

sw.bb69:                                          ; preds = %if.end44
  %call70 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.4, ptr noundef nonnull %n, ptr noundef nonnull %d) #12, !dbg !535
  %cmp71 = icmp eq i32 %call70, 2, !dbg !537
  %23 = load i32, ptr %n, align 4
  %tobool73 = icmp ne i32 %23, 0
  %or.cond = select i1 %cmp71, i1 %tobool73, i1 false, !dbg !538
  %24 = load i32, ptr %d, align 4
  %tobool75 = icmp ne i32 %24, 0
  %or.cond126 = select i1 %or.cond, i1 %tobool75, i1 false, !dbg !538
  br i1 %or.cond126, label %if.then76, label %if.end77, !dbg !538

if.then76:                                        ; preds = %sw.bb69
  call void @x264_reduce_fraction(ptr noundef nonnull %n, ptr noundef nonnull %d) #12, !dbg !539
  %25 = load i32, ptr %n, align 4, !dbg !541
  store i32 %25, ptr %fps_num, align 4, !dbg !542
  %26 = load i32, ptr %d, align 4, !dbg !543
  store i32 %26, ptr %fps_den, align 4, !dbg !544
  br label %if.end77, !dbg !545

if.end77:                                         ; preds = %if.then76, %sw.bb69
  %call78 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %incdec.ptr, i32 noundef 32) #13, !dbg !546
    #dbg_value(ptr %call78, !432, !DIExpression(), !490)
  br label %for.inc102, !dbg !547

sw.bb79:                                          ; preds = %if.end44
  %call80 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.4, ptr noundef nonnull %n, ptr noundef nonnull %d) #12, !dbg !548
  %cmp81 = icmp eq i32 %call80, 2, !dbg !550
  %27 = load i32, ptr %n, align 4
  %tobool84 = icmp ne i32 %27, 0
  %or.cond127 = select i1 %cmp81, i1 %tobool84, i1 false, !dbg !551
  %28 = load i32, ptr %d, align 4
  %tobool86 = icmp ne i32 %28, 0
  %or.cond128 = select i1 %or.cond127, i1 %tobool86, i1 false, !dbg !551
  br i1 %or.cond128, label %if.then87, label %if.end88, !dbg !551

if.then87:                                        ; preds = %sw.bb79
  call void @x264_reduce_fraction(ptr noundef nonnull %n, ptr noundef nonnull %d) #12, !dbg !552
  %29 = load i32, ptr %n, align 4, !dbg !554
  store i32 %29, ptr %sar_width, align 4, !dbg !555
  %30 = load i32, ptr %d, align 4, !dbg !556
  store i32 %30, ptr %sar_height, align 4, !dbg !557
  br label %if.end88, !dbg !558

if.end88:                                         ; preds = %if.then87, %sw.bb79
  %call89 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %incdec.ptr, i32 noundef 32) #13, !dbg !559
    #dbg_value(ptr %call89, !432, !DIExpression(), !490)
  br label %for.inc102, !dbg !560

sw.bb90:                                          ; preds = %if.end44
  %call91 = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.5, ptr noundef nonnull dereferenceable(1) %incdec.ptr, i64 noundef 6) #13, !dbg !561
  %tobool92.not = icmp eq i32 %call91, 0, !dbg !561
  br i1 %tobool92.not, label %if.then93, label %if.end99, !dbg !563

if.then93:                                        ; preds = %sw.bb90
  %add.ptr = getelementptr inbounds i8, ptr %tokstart.0192, i64 7, !dbg !564
    #dbg_value(ptr %add.ptr, !432, !DIExpression(), !490)
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
  %tobool95.not = icmp eq i32 %42, 0, !dbg !566
  %.177 = select i1 %tobool95.not, i32 1, i32 9
  br label %if.end99

if.end99:                                         ; preds = %if.then93.tail, %sw.bb90
  %alt_colorspace.1 = phi i32 [ %alt_colorspace.0191, %sw.bb90 ], [ %.177, %if.then93.tail ], !dbg !435
  %tokstart.1 = phi ptr [ %incdec.ptr, %sw.bb90 ], [ %add.ptr, %if.then93.tail ], !dbg !568
    #dbg_value(ptr %tokstart.1, !432, !DIExpression(), !490)
    #dbg_value(i32 %alt_colorspace.1, !431, !DIExpression(), !435)
  %call100 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %tokstart.1, i32 noundef 32) #13, !dbg !569
    #dbg_value(ptr %call100, !432, !DIExpression(), !490)
  br label %for.inc102, !dbg !570

for.inc102:                                       ; preds = %sw.bb, %sw.bb49, %sw.bb53.tail, %if.end77, %if.end88, %if.end99, %if.end44, %sw.bb60, %sw.bb67, %sw.bb64, %sw.bb63, %for.body39
  %colorspace.2 = phi i32 [ %colorspace.0190, %for.body39 ], [ %colorspace.0190, %if.end44 ], [ %colorspace.0190, %if.end99 ], [ %colorspace.0190, %if.end88 ], [ %colorspace.0190, %if.end77 ], [ %colorspace.0190, %sw.bb60 ], [ %colorspace.0190, %sw.bb67 ], [ %colorspace.0190, %sw.bb64 ], [ %colorspace.0190, %sw.bb63 ], [ %., %sw.bb53.tail ], [ %colorspace.0190, %sw.bb49 ], [ %colorspace.0190, %sw.bb ], !dbg !435
  %alt_colorspace.2 = phi i32 [ %alt_colorspace.0191, %for.body39 ], [ %alt_colorspace.0191, %if.end44 ], [ %alt_colorspace.1, %if.end99 ], [ %alt_colorspace.0191, %if.end88 ], [ %alt_colorspace.0191, %if.end77 ], [ %alt_colorspace.0191, %sw.bb60 ], [ %alt_colorspace.0191, %sw.bb67 ], [ %alt_colorspace.0191, %sw.bb64 ], [ %alt_colorspace.0191, %sw.bb63 ], [ %alt_colorspace.0191, %sw.bb53.tail ], [ %alt_colorspace.0191, %sw.bb49 ], [ %alt_colorspace.0191, %sw.bb ], !dbg !571
  %tokstart.2 = phi ptr [ %tokstart.0192, %for.body39 ], [ %incdec.ptr, %if.end44 ], [ %call100, %if.end99 ], [ %call89, %if.end88 ], [ %call78, %if.end77 ], [ %incdec.ptr61, %sw.bb60 ], [ %incdec.ptr61, %sw.bb67 ], [ %incdec.ptr61, %sw.bb64 ], [ %incdec.ptr61, %sw.bb63 ], [ %call59, %sw.bb53.tail ], [ %9, %sw.bb49 ], [ %8, %sw.bb ], !dbg !490
    #dbg_value(ptr %tokstart.2, !432, !DIExpression(), !490)
    #dbg_value(i32 %alt_colorspace.2, !431, !DIExpression(), !435)
    #dbg_value(i32 %colorspace.2, !430, !DIExpression(), !435)
  %colorspace.2.fr = freeze i32 %colorspace.2, !dbg !495
  %incdec.ptr103 = getelementptr inbounds i8, ptr %tokstart.2, i64 1, !dbg !572
    #dbg_value(ptr %incdec.ptr103, !432, !DIExpression(), !490)
  %cmp37 = icmp ult ptr %incdec.ptr103, %arrayidx33, !dbg !491
  br i1 %cmp37, label %for.body39, label %for.cond.cleanup, !dbg !493, !llvm.loop !573

if.then115:                                       ; preds = %for.cond.cleanup
  %43 = load ptr, ptr @stderr, align 8, !dbg !575
  %44 = call i64 @fwrite(ptr nonnull @.str.6, i64 34, i64 1, ptr %43) #14, !dbg !577
  br label %cleanup, !dbg !578

if.end117:                                        ; preds = %if.end30, %for.cond.cleanup
  store ptr %call, ptr %p_handle, align 8, !dbg !579
  br label %cleanup, !dbg !580

cleanup:                                          ; preds = %for.inc, %lor.lhs.false, %if.end6, %entry, %if.end117, %if.then115
  %retval.0 = phi i32 [ -1, %if.then115 ], [ 0, %if.end117 ], [ -1, %entry ], [ -1, %if.end6 ], [ -1, %lor.lhs.false ], [ -1, %for.inc ], !dbg !435
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tokend) #12, !dbg !581
  call void @llvm.lifetime.end.p0(i64 90, ptr nonnull %header) #12, !dbg !581
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #12, !dbg !581
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12, !dbg !581
  ret i32 %retval.0, !dbg !581
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %handle) #1 !dbg !582 {
entry:
    #dbg_value(ptr %handle, !584, !DIExpression(), !591)
    #dbg_value(ptr %handle, !585, !DIExpression(), !591)
    #dbg_value(i32 0, !586, !DIExpression(), !591)
  %0 = load ptr, ptr %handle, align 8, !dbg !592
  %call2 = tail call i64 @ftell(ptr noundef %0), !dbg !593
    #dbg_value(i64 %call2, !587, !DIExpression(), !594)
  %1 = load ptr, ptr %handle, align 8, !dbg !595
  %call4 = tail call i32 @fseek(ptr noundef %1, i64 noundef 0, i32 noundef 2), !dbg !596
  %2 = load ptr, ptr %handle, align 8, !dbg !597
  %call6 = tail call i64 @ftell(ptr noundef %2), !dbg !598
    #dbg_value(i64 %call6, !590, !DIExpression(), !594)
  %3 = load ptr, ptr %handle, align 8, !dbg !599
  %call8 = tail call i32 @fseek(ptr noundef %3, i64 noundef %call2, i32 noundef 0), !dbg !600
    #dbg_value(i64 poison, !586, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !591)
  %seq_header_len = getelementptr inbounds i8, ptr %handle, i64 20, !dbg !601
  %4 = load i32, ptr %seq_header_len, align 4, !dbg !601
  %conv = sext i32 %4 to i64, !dbg !602
  %sub = sub i64 %call6, %conv, !dbg !603
  %width = getelementptr inbounds i8, ptr %handle, i64 8, !dbg !604
  %5 = load i32, ptr %width, align 8, !dbg !604
  %height = getelementptr inbounds i8, ptr %handle, i64 12, !dbg !605
  %6 = load i32, ptr %height, align 4, !dbg !605
  %mul = mul i32 %5, 3, !dbg !606
  %mul9 = mul i32 %mul, %6, !dbg !607
  %div = sdiv i32 %mul9, 2, !dbg !608
  %frame_header_len = getelementptr inbounds i8, ptr %handle, i64 24, !dbg !609
  %7 = load i32, ptr %frame_header_len, align 8, !dbg !609
  %add = add nsw i32 %div, %7, !dbg !610
  %conv10 = sext i32 %add to i64, !dbg !611
  %div11 = udiv i64 %sub, %conv10, !dbg !612
    #dbg_value(i64 %div11, !586, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !591)
  %conv12 = trunc i64 %div11 to i32, !dbg !613
    #dbg_value(i32 %conv12, !586, !DIExpression(), !591)
    #dbg_value(i32 %conv12, !586, !DIExpression(), !591)
  ret i32 %conv12, !dbg !614
}

declare i32 @x264_picture_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nofree nounwind uwtable
define internal range(i32 -1, 1) i32 @read_frame(ptr nocapture noundef readonly %p_pic, ptr nocapture noundef %handle, i32 noundef %i_frame) #1 !dbg !615 {
entry:
  %header.i = alloca [16 x i8], align 16, !DIAssignID !621
    #dbg_value(ptr %p_pic, !617, !DIExpression(), !622)
    #dbg_value(ptr %handle, !618, !DIExpression(), !622)
    #dbg_value(i32 %i_frame, !619, !DIExpression(), !622)
    #dbg_value(ptr %handle, !620, !DIExpression(), !622)
  %next_frame = getelementptr inbounds i8, ptr %handle, i64 16, !dbg !623
  %0 = load i32, ptr %next_frame, align 8, !dbg !623
  %cmp = icmp slt i32 %0, %i_frame, !dbg !625
  br i1 %cmp, label %if.then, label %if.end17, !dbg !626

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle, align 8, !dbg !627
  %conv = sext i32 %i_frame to i64, !dbg !630
  %width = getelementptr inbounds i8, ptr %handle, i64 8, !dbg !631
  %2 = load i32, ptr %width, align 8, !dbg !631
  %height = getelementptr inbounds i8, ptr %handle, i64 12, !dbg !632
  %3 = load i32, ptr %height, align 4, !dbg !632
  %mul = mul i32 %2, 3, !dbg !633
  %mul3 = mul i32 %mul, %3, !dbg !634
  %div = sdiv i32 %mul3, 2, !dbg !635
  %frame_header_len = getelementptr inbounds i8, ptr %handle, i64 24, !dbg !636
  %4 = load i32, ptr %frame_header_len, align 8, !dbg !636
  %add = add nsw i32 %div, %4, !dbg !637
  %conv4 = sext i32 %add to i64, !dbg !638
  %mul5 = mul nsw i64 %conv4, %conv, !dbg !639
  %seq_header_len = getelementptr inbounds i8, ptr %handle, i64 20, !dbg !640
  %5 = load i32, ptr %seq_header_len, align 4, !dbg !640
  %conv6 = sext i32 %5 to i64, !dbg !641
  %add7 = add nsw i64 %mul5, %conv6, !dbg !642
  %call8 = tail call i32 @fseek(ptr noundef %1, i64 noundef %add7, i32 noundef 0), !dbg !643
  br label %if.end17, !dbg !643

if.end17:                                         ; preds = %if.then, %entry
    #dbg_assign(i1 undef, !644, !DIExpression(), !621, ptr %header.i, !DIExpression(), !654)
    #dbg_value(ptr %p_pic, !649, !DIExpression(), !654)
    #dbg_value(ptr %handle, !650, !DIExpression(), !654)
    #dbg_value(i32 5, !651, !DIExpression(), !654)
    #dbg_value(i32 0, !652, !DIExpression(), !654)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %header.i) #12, !dbg !657
  %6 = load ptr, ptr %handle, align 8, !dbg !658
  %call.i = call i64 @fread(ptr noundef nonnull %header.i, i64 noundef 1, i64 noundef 5, ptr noundef %6), !dbg !660
  %7 = and i64 %call.i, 4294967295, !dbg !661
  %cmp.not.i = icmp eq i64 %7, 5, !dbg !661
  br i1 %cmp.not.i, label %if.end.i, label %read_frame_internal.exit.thread, !dbg !662

if.end.i:                                         ; preds = %if.end17
  %arrayidx.i = getelementptr inbounds i8, ptr %header.i, i64 5, !dbg !663
  store i8 0, ptr %arrayidx.i, align 1, !dbg !664
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %header.i, ptr noundef nonnull dereferenceable(5) @.str.7, i64 5), !dbg !665
  %tobool.not.i = icmp eq i32 %bcmp.i, 0, !dbg !665
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then6.i, !dbg !667

if.then6.i:                                       ; preds = %if.end.i
  %8 = load ptr, ptr @stderr, align 8, !dbg !668
  %9 = load i32, ptr %header.i, align 16, !dbg !670
  %call9.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.8, i32 noundef %9, ptr noundef nonnull %header.i) #15, !dbg !671
  br label %read_frame_internal.exit.thread, !dbg !672

land.rhs.i:                                       ; preds = %if.end.i, %while.body.i
  %i.080.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %if.end.i ]
    #dbg_value(i32 %i.080.i, !652, !DIExpression(), !654)
  %10 = load ptr, ptr %handle, align 8, !dbg !673
  %call14.i = tail call i32 @fgetc(ptr noundef %10), !dbg !674
  %cmp15.not.i = icmp eq i32 %call14.i, 10, !dbg !675
  br i1 %cmp15.not.i, label %if.end21.i, label %while.body.i, !dbg !676

while.body.i:                                     ; preds = %land.rhs.i
  %inc.i = add nuw nsw i32 %i.080.i, 1, !dbg !677
    #dbg_value(i32 %inc.i, !652, !DIExpression(), !654)
  %exitcond.not.i = icmp eq i32 %inc.i, 80, !dbg !678
  br i1 %exitcond.not.i, label %if.then19.i, label %land.rhs.i, !dbg !679, !llvm.loop !680

if.then19.i:                                      ; preds = %while.body.i
  %11 = load ptr, ptr @stderr, align 8, !dbg !681
  %12 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 31, i64 1, ptr %11) #14, !dbg !684
  br label %read_frame_internal.exit.thread, !dbg !685

if.end21.i:                                       ; preds = %land.rhs.i
  %add22.i = add nuw nsw i32 %i.080.i, 6, !dbg !686
  %frame_header_len.i = getelementptr inbounds i8, ptr %handle, i64 24, !dbg !687
  store i32 %add22.i, ptr %frame_header_len.i, align 8, !dbg !688
  %plane.i = getelementptr inbounds i8, ptr %p_pic, i64 64, !dbg !689
  %13 = load ptr, ptr %plane.i, align 8, !dbg !691
  %width.i = getelementptr inbounds i8, ptr %handle, i64 8, !dbg !692
  %14 = load i32, ptr %width.i, align 8, !dbg !692
  %height.i = getelementptr inbounds i8, ptr %handle, i64 12, !dbg !693
  %15 = load i32, ptr %height.i, align 4, !dbg !693
  %mul.i = mul nsw i32 %15, %14, !dbg !694
  %conv24.i = sext i32 %mul.i to i64, !dbg !695
  %16 = load ptr, ptr %handle, align 8, !dbg !696
  %call26.i = tail call i64 @fread(ptr noundef %13, i64 noundef %conv24.i, i64 noundef 1, ptr noundef %16), !dbg !697
  %cmp27.i = icmp eq i64 %call26.i, 0, !dbg !698
  br i1 %cmp27.i, label %read_frame_internal.exit.thread, label %lor.lhs.false.i, !dbg !699

lor.lhs.false.i:                                  ; preds = %if.end21.i
  %arrayidx31.i = getelementptr inbounds i8, ptr %p_pic, i64 72, !dbg !700
  %17 = load ptr, ptr %arrayidx31.i, align 8, !dbg !700
  %18 = load i32, ptr %width.i, align 8, !dbg !701
  %19 = load i32, ptr %height.i, align 4, !dbg !702
  %mul34.i = mul nsw i32 %19, %18, !dbg !703
  %div.i = sdiv i32 %mul34.i, 4, !dbg !704
  %conv35.i = sext i32 %div.i to i64, !dbg !705
  %20 = load ptr, ptr %handle, align 8, !dbg !706
  %call37.i = tail call i64 @fread(ptr noundef %17, i64 noundef %conv35.i, i64 noundef 1, ptr noundef %20), !dbg !707
  %cmp38.i = icmp eq i64 %call37.i, 0, !dbg !708
  br i1 %cmp38.i, label %read_frame_internal.exit.thread, label %read_frame_internal.exit, !dbg !709

read_frame_internal.exit.thread:                  ; preds = %if.then6.i, %if.then19.i, %if.end17, %lor.lhs.false.i, %if.end21.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %header.i) #12, !dbg !710
  br label %cleanup, !dbg !711

read_frame_internal.exit:                         ; preds = %lor.lhs.false.i
  %arrayidx43.i = getelementptr inbounds i8, ptr %p_pic, i64 80, !dbg !712
  %21 = load ptr, ptr %arrayidx43.i, align 8, !dbg !712
  %22 = load i32, ptr %width.i, align 8, !dbg !713
  %23 = load i32, ptr %height.i, align 4, !dbg !714
  %mul46.i = mul nsw i32 %23, %22, !dbg !715
  %div47.i = sdiv i32 %mul46.i, 4, !dbg !716
  %conv48.i = sext i32 %div47.i to i64, !dbg !717
  %24 = load ptr, ptr %handle, align 8, !dbg !718
  %call50.i = tail call i64 @fread(ptr noundef %21, i64 noundef %conv48.i, i64 noundef 1, ptr noundef %24), !dbg !719
  %cmp51.i.not = icmp eq i64 %call50.i, 0, !dbg !720
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %header.i) #12, !dbg !710
  br i1 %cmp51.i.not, label %cleanup, label %if.end21, !dbg !711

if.end21:                                         ; preds = %read_frame_internal.exit
  %add22 = add nsw i32 %i_frame, 1, !dbg !721
  store i32 %add22, ptr %next_frame, align 8, !dbg !722
  br label %cleanup, !dbg !723

cleanup:                                          ; preds = %read_frame_internal.exit.thread, %read_frame_internal.exit, %if.end21
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -1, %read_frame_internal.exit ], [ -1, %read_frame_internal.exit.thread ], !dbg !622
  ret i32 %retval.0, !dbg !724
}

declare void @x264_picture_clean(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @close_file(ptr noundef %handle) #0 !dbg !725 {
entry:
    #dbg_value(ptr %handle, !727, !DIExpression(), !729)
    #dbg_value(ptr %handle, !728, !DIExpression(), !729)
  %tobool.not = icmp eq ptr %handle, null, !dbg !730
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false, !dbg !732

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %handle, align 8, !dbg !733
  %tobool1.not = icmp eq ptr %0, null, !dbg !734
  br i1 %tobool1.not, label %cleanup, label %if.end, !dbg !735

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !736
  tail call void @free(ptr noundef nonnull %handle) #12, !dbg !737
  br label %cleanup, !dbg !738

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret i32 0, !dbg !739
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !740 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !744 noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !749 noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !752 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !756 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !761 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !764 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare !dbg !767 void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare !dbg !771 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !775 noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !778 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !781 noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !785 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !786 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!340, !341, !342, !343, !344, !345, !346}
!llvm.ident = !{!347}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "y4m_input", scope: !2, file: !3, line: 265, type: !80, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !35, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/input/y4m.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "bd4a78066023f04fd68f7bcf30d32bbf")
!4 = !{!5, !6, !7, !12}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 45, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!11 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !14, line: 89, baseType: !15)
!14 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!15 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !14, line: 89, size: 32, elements: !16)
!16 = !{!17, !21, !28}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !15, file: !14, line: 89, baseType: !18, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 26, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 42, baseType: !20)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !15, file: !14, line: 89, baseType: !22, size: 32)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !26)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 25, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !10, line: 40, baseType: !25)
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !{!27}
!27 = !DISubrange(count: 2)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !15, file: !14, line: 89, baseType: !29, size: 32)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !33)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 38, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34}
!34 = !DISubrange(count: 4)
!35 = !{!0, !36, !40, !45, !50, !53, !58, !63, !68, !70, !75}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16, elements: !26)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 24, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 3)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 80, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 10)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32, elements: !33)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 48, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 6)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 56, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 7)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !3, line: 167, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 280, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 35)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !3, line: 205, type: !55, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 344, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 43)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 32)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_t", file: !82, line: 63, baseType: !83)
!82 = !DIFile(filename: "x264_src/input/input.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f28c863d273681dfcaca9779e9fcbd53")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 54, size: 448, elements: !84)
!84 = !{!85, !117, !121, !327, !331, !335, !339}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !83, file: !82, line: 56, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!6, !89, !90, !93, !109}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !92, line: 30, baseType: !5)
!92 = !DIFile(filename: "x264_src/muxers.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "video_info_t", file: !82, line: 52, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 38, size: 384, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "csp", scope: !95, file: !82, line: 40, baseType: !6, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "fps_num", scope: !95, file: !82, line: 41, baseType: !18, size: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "fps_den", scope: !95, file: !82, line: 42, baseType: !18, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !95, file: !82, line: 43, baseType: !6, size: 32, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !95, file: !82, line: 44, baseType: !6, size: 32, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !95, file: !82, line: 45, baseType: !18, size: 32, offset: 160)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !95, file: !82, line: 46, baseType: !18, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tff", scope: !95, file: !82, line: 47, baseType: !6, size: 32, offset: 224)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_num", scope: !95, file: !82, line: 48, baseType: !18, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_den", scope: !95, file: !82, line: 49, baseType: !18, size: 32, offset: 288)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "vfr", scope: !95, file: !82, line: 50, baseType: !6, size: 32, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !95, file: !82, line: 51, baseType: !6, size: 32, offset: 352)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_opt_t", file: !82, line: 35, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 29, size: 256, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !111, file: !82, line: 31, baseType: !89, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !111, file: !82, line: 32, baseType: !89, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "timebase", scope: !111, file: !82, line: 33, baseType: !89, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !111, file: !82, line: 34, baseType: !6, size: 32, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_total", scope: !83, file: !82, line: 57, baseType: !118, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!6, !91}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "picture_alloc", scope: !83, file: !82, line: 58, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!6, !125, !6, !6, !6}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !127, line: 549, baseType: !128)
!127 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 513, size: 1088, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !139, !140, !306, !317, !326}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !128, file: !127, line: 521, baseType: !6, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !128, file: !127, line: 523, baseType: !6, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !128, file: !127, line: 526, baseType: !6, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !128, file: !127, line: 529, baseType: !6, size: 32, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !128, file: !127, line: 531, baseType: !135, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !136, line: 27, baseType: !137)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !10, line: 44, baseType: !138)
!138 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !128, file: !127, line: 534, baseType: !135, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !128, file: !127, line: 541, baseType: !141, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !127, line: 376, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !127, line: 176, size: 5632, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !190, !191, !192, !193, !197, !198, !211, !212, !213, !214, !215, !244, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !143, file: !127, line: 179, baseType: !20, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !143, file: !127, line: 180, baseType: !6, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !143, file: !127, line: 181, baseType: !6, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !143, file: !127, line: 182, baseType: !6, size: 32, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !143, file: !127, line: 183, baseType: !6, size: 32, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !143, file: !127, line: 186, baseType: !6, size: 32, offset: 160)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !143, file: !127, line: 187, baseType: !6, size: 32, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !143, file: !127, line: 188, baseType: !6, size: 32, offset: 224)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !143, file: !127, line: 189, baseType: !6, size: 32, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !143, file: !127, line: 190, baseType: !6, size: 32, offset: 288)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !143, file: !127, line: 198, baseType: !6, size: 32, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !143, file: !127, line: 215, baseType: !157, size: 288, offset: 352)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !143, file: !127, line: 200, size: 288, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !157, file: !127, line: 203, baseType: !6, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !157, file: !127, line: 204, baseType: !6, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !157, file: !127, line: 206, baseType: !6, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !157, file: !127, line: 209, baseType: !6, size: 32, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !157, file: !127, line: 210, baseType: !6, size: 32, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !157, file: !127, line: 211, baseType: !6, size: 32, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !157, file: !127, line: 212, baseType: !6, size: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !157, file: !127, line: 213, baseType: !6, size: 32, offset: 224)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !157, file: !127, line: 214, baseType: !6, size: 32, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !143, file: !127, line: 218, baseType: !6, size: 32, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !143, file: !127, line: 219, baseType: !6, size: 32, offset: 672)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !143, file: !127, line: 220, baseType: !6, size: 32, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !143, file: !127, line: 221, baseType: !6, size: 32, offset: 736)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !143, file: !127, line: 222, baseType: !6, size: 32, offset: 768)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !143, file: !127, line: 224, baseType: !6, size: 32, offset: 800)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !143, file: !127, line: 225, baseType: !6, size: 32, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !143, file: !127, line: 226, baseType: !6, size: 32, offset: 864)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !143, file: !127, line: 227, baseType: !6, size: 32, offset: 896)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !143, file: !127, line: 229, baseType: !6, size: 32, offset: 928)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !143, file: !127, line: 230, baseType: !6, size: 32, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !143, file: !127, line: 231, baseType: !6, size: 32, offset: 992)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !143, file: !127, line: 233, baseType: !6, size: 32, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !143, file: !127, line: 234, baseType: !6, size: 32, offset: 1056)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !143, file: !127, line: 236, baseType: !6, size: 32, offset: 1088)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !143, file: !127, line: 237, baseType: !6, size: 32, offset: 1120)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !143, file: !127, line: 239, baseType: !6, size: 32, offset: 1152)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !143, file: !127, line: 240, baseType: !89, size: 64, offset: 1216)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !143, file: !127, line: 241, baseType: !187, size: 128, offset: 1280)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 16)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !143, file: !127, line: 242, baseType: !187, size: 128, offset: 1408)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !143, file: !127, line: 243, baseType: !187, size: 128, offset: 1536)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !143, file: !127, line: 244, baseType: !187, size: 128, offset: 1664)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !143, file: !127, line: 245, baseType: !194, size: 512, offset: 1792)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !143, file: !127, line: 246, baseType: !194, size: 512, offset: 2304)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !143, file: !127, line: 249, baseType: !199, size: 64, offset: 2816)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !5, !6, !202, !204}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !206)
!206 = !{!207, !208, !209, !210}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !205, file: !3, line: 265, baseType: !20, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !205, file: !3, line: 265, baseType: !20, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !205, file: !3, line: 265, baseType: !5, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !205, file: !3, line: 265, baseType: !5, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !143, file: !127, line: 250, baseType: !5, size: 64, offset: 2880)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !143, file: !127, line: 251, baseType: !6, size: 32, offset: 2944)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !143, file: !127, line: 252, baseType: !6, size: 32, offset: 2976)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !143, file: !127, line: 253, baseType: !89, size: 64, offset: 3008)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !143, file: !127, line: 287, baseType: !216, size: 800, offset: 3072)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !143, file: !127, line: 256, size: 800, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !238, !239, !240, !242, !243}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !216, file: !127, line: 258, baseType: !20, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !216, file: !127, line: 259, baseType: !20, size: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !216, file: !127, line: 261, baseType: !6, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !216, file: !127, line: 262, baseType: !6, size: 32, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !216, file: !127, line: 263, baseType: !6, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !216, file: !127, line: 264, baseType: !6, size: 32, offset: 160)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !216, file: !127, line: 265, baseType: !6, size: 32, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !216, file: !127, line: 267, baseType: !6, size: 32, offset: 224)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !216, file: !127, line: 268, baseType: !6, size: 32, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !216, file: !127, line: 269, baseType: !6, size: 32, offset: 288)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !216, file: !127, line: 270, baseType: !6, size: 32, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !216, file: !127, line: 271, baseType: !6, size: 32, offset: 352)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !216, file: !127, line: 272, baseType: !6, size: 32, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !216, file: !127, line: 273, baseType: !6, size: 32, offset: 416)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !216, file: !127, line: 274, baseType: !6, size: 32, offset: 448)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !216, file: !127, line: 275, baseType: !6, size: 32, offset: 480)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !216, file: !127, line: 276, baseType: !6, size: 32, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !216, file: !127, line: 277, baseType: !6, size: 32, offset: 544)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !216, file: !127, line: 278, baseType: !237, size: 32, offset: 576)
!237 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !216, file: !127, line: 279, baseType: !237, size: 32, offset: 608)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !216, file: !127, line: 280, baseType: !6, size: 32, offset: 640)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !216, file: !127, line: 283, baseType: !241, size: 64, offset: 672)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !26)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !216, file: !127, line: 285, baseType: !6, size: 32, offset: 736)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !216, file: !127, line: 286, baseType: !6, size: 32, offset: 768)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !143, file: !127, line: 327, baseType: !245, size: 1152, offset: 3904)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !143, file: !127, line: 290, size: 1152, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !284, !285}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !245, file: !127, line: 292, baseType: !6, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !245, file: !127, line: 294, baseType: !6, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !245, file: !127, line: 295, baseType: !6, size: 32, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !245, file: !127, line: 296, baseType: !6, size: 32, offset: 96)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !245, file: !127, line: 297, baseType: !6, size: 32, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !245, file: !127, line: 299, baseType: !6, size: 32, offset: 160)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !245, file: !127, line: 300, baseType: !237, size: 32, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !245, file: !127, line: 301, baseType: !237, size: 32, offset: 224)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !245, file: !127, line: 302, baseType: !237, size: 32, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !245, file: !127, line: 303, baseType: !6, size: 32, offset: 288)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !245, file: !127, line: 304, baseType: !6, size: 32, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !245, file: !127, line: 305, baseType: !237, size: 32, offset: 352)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !245, file: !127, line: 306, baseType: !237, size: 32, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !245, file: !127, line: 307, baseType: !237, size: 32, offset: 416)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !245, file: !127, line: 309, baseType: !6, size: 32, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !245, file: !127, line: 310, baseType: !237, size: 32, offset: 480)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !245, file: !127, line: 311, baseType: !6, size: 32, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !245, file: !127, line: 312, baseType: !6, size: 32, offset: 544)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !245, file: !127, line: 315, baseType: !6, size: 32, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !245, file: !127, line: 316, baseType: !89, size: 64, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !245, file: !127, line: 317, baseType: !6, size: 32, offset: 704)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !245, file: !127, line: 318, baseType: !89, size: 64, offset: 768)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !245, file: !127, line: 321, baseType: !237, size: 32, offset: 832)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !245, file: !127, line: 322, baseType: !237, size: 32, offset: 864)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !245, file: !127, line: 323, baseType: !237, size: 32, offset: 896)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !245, file: !127, line: 324, baseType: !273, size: 64, offset: 960)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !127, line: 174, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 167, size: 256, elements: !276)
!276 = !{!277, !278, !279, !280, !281, !282}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !275, file: !127, line: 169, baseType: !6, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !275, file: !127, line: 169, baseType: !6, size: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !275, file: !127, line: 170, baseType: !6, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !275, file: !127, line: 171, baseType: !6, size: 32, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !275, file: !127, line: 172, baseType: !237, size: 32, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !275, file: !127, line: 173, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !245, file: !127, line: 325, baseType: !6, size: 32, offset: 1024)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !245, file: !127, line: 326, baseType: !89, size: 64, offset: 1088)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !143, file: !127, line: 330, baseType: !6, size: 32, offset: 5056)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !143, file: !127, line: 331, baseType: !6, size: 32, offset: 5088)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !143, file: !127, line: 332, baseType: !6, size: 32, offset: 5120)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !143, file: !127, line: 334, baseType: !6, size: 32, offset: 5152)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !143, file: !127, line: 335, baseType: !6, size: 32, offset: 5184)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !143, file: !127, line: 336, baseType: !18, size: 32, offset: 5216)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !143, file: !127, line: 337, baseType: !18, size: 32, offset: 5248)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !143, file: !127, line: 338, baseType: !18, size: 32, offset: 5280)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !143, file: !127, line: 339, baseType: !18, size: 32, offset: 5312)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !143, file: !127, line: 340, baseType: !6, size: 32, offset: 5344)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !143, file: !127, line: 344, baseType: !6, size: 32, offset: 5376)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !143, file: !127, line: 356, baseType: !6, size: 32, offset: 5408)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !143, file: !127, line: 364, baseType: !6, size: 32, offset: 5440)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !143, file: !127, line: 367, baseType: !6, size: 32, offset: 5472)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !143, file: !127, line: 368, baseType: !6, size: 32, offset: 5504)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !143, file: !127, line: 369, baseType: !6, size: 32, offset: 5536)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !143, file: !127, line: 375, baseType: !303, size: 64, offset: 5568)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !5}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !128, file: !127, line: 543, baseType: !307, size: 448, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !127, line: 511, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 505, size: 448, elements: !309)
!309 = !{!310, !311, !312, !314}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !308, file: !127, line: 507, baseType: !6, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !308, file: !127, line: 508, baseType: !6, size: 32, offset: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !308, file: !127, line: 509, baseType: !313, size: 128, offset: 64)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !33)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !308, file: !127, line: 510, baseType: !315, size: 256, offset: 192)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 256, elements: !33)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !128, file: !127, line: 545, baseType: !318, size: 256, offset: 768)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !127, line: 503, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 496, size: 256, elements: !320)
!320 = !{!321, !323, !324, !325}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !319, file: !127, line: 498, baseType: !322, size: 64)
!322 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !319, file: !127, line: 499, baseType: !322, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !319, file: !127, line: 500, baseType: !322, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !319, file: !127, line: 502, baseType: !322, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !128, file: !127, line: 548, baseType: !5, size: 64, offset: 1024)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "read_frame", scope: !83, file: !82, line: 59, baseType: !328, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!6, !125, !91, !6}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "release_frame", scope: !83, file: !82, line: 60, baseType: !332, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!6, !125, !91}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "picture_clean", scope: !83, file: !82, line: 61, baseType: !336, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !125}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !83, file: !82, line: 62, baseType: !118, size: 64, offset: 384)
!340 = !{i32 7, !"Dwarf Version", i32 5}
!341 = !{i32 2, !"Debug Info Version", i32 3}
!342 = !{i32 1, !"wchar_size", i32 4}
!343 = !{i32 8, !"PIC Level", i32 2}
!344 = !{i32 7, !"PIE Level", i32 2}
!345 = !{i32 7, !"uwtable", i32 2}
!346 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!347 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!348 = distinct !DISubprogram(name: "open_file", scope: !3, file: !3, line: 40, type: !87, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !349)
!349 = !{!350, !351, !352, !353, !354, !421, !422, !423, !424, !428, !429, !430, !431, !432}
!350 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !348, file: !3, line: 40, type: !89)
!351 = !DILocalVariable(name: "p_handle", arg: 2, scope: !348, file: !3, line: 40, type: !90)
!352 = !DILocalVariable(name: "info", arg: 3, scope: !348, file: !3, line: 40, type: !93)
!353 = !DILocalVariable(name: "opt", arg: 4, scope: !348, file: !3, line: 40, type: !109)
!354 = !DILocalVariable(name: "h", scope: !348, file: !3, line: 42, type: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "y4m_hnd_t", file: !3, line: 33, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 26, size: 256, elements: !358)
!358 = !{!359, !415, !416, !417, !418, !419, !420}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "fh", scope: !357, file: !3, line: 28, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !362, line: 7, baseType: !363)
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !364, line: 49, size: 1728, elements: !365)
!364 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !381, !383, !384, !385, !387, !388, !390, !394, !397, !399, !402, !405, !406, !407, !410, !411}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !363, file: !364, line: 51, baseType: !6, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !363, file: !364, line: 54, baseType: !89, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !363, file: !364, line: 55, baseType: !89, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !363, file: !364, line: 56, baseType: !89, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !363, file: !364, line: 57, baseType: !89, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !363, file: !364, line: 58, baseType: !89, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !363, file: !364, line: 59, baseType: !89, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !363, file: !364, line: 60, baseType: !89, size: 64, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !363, file: !364, line: 61, baseType: !89, size: 64, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !363, file: !364, line: 64, baseType: !89, size: 64, offset: 576)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !363, file: !364, line: 65, baseType: !89, size: 64, offset: 640)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !363, file: !364, line: 66, baseType: !89, size: 64, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !363, file: !364, line: 68, baseType: !379, size: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !364, line: 36, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !363, file: !364, line: 70, baseType: !382, size: 64, offset: 832)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !363, file: !364, line: 72, baseType: !6, size: 32, offset: 896)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !363, file: !364, line: 73, baseType: !6, size: 32, offset: 928)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !363, file: !364, line: 74, baseType: !386, size: 64, offset: 960)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !10, line: 152, baseType: !138)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !363, file: !364, line: 77, baseType: !25, size: 16, offset: 1024)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !363, file: !364, line: 78, baseType: !389, size: 8, offset: 1040)
!389 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !363, file: !364, line: 79, baseType: !391, size: 8, offset: 1048)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 1)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !363, file: !364, line: 81, baseType: !395, size: 64, offset: 1088)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !364, line: 43, baseType: null)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !363, file: !364, line: 89, baseType: !398, size: 64, offset: 1152)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !10, line: 153, baseType: !138)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !363, file: !364, line: 91, baseType: !400, size: 64, offset: 1216)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !364, line: 37, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !363, file: !364, line: 92, baseType: !403, size: 64, offset: 1280)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !364, line: 38, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !363, file: !364, line: 93, baseType: !382, size: 64, offset: 1344)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !363, file: !364, line: 94, baseType: !5, size: 64, offset: 1408)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !363, file: !364, line: 95, baseType: !408, size: 64, offset: 1472)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !409, line: 18, baseType: !11)
!409 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !363, file: !364, line: 96, baseType: !6, size: 32, offset: 1536)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !363, file: !364, line: 98, baseType: !412, size: 160, offset: 1568)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 160, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 20)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !357, file: !3, line: 29, baseType: !6, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !357, file: !3, line: 29, baseType: !6, size: 32, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next_frame", scope: !357, file: !3, line: 30, baseType: !6, size: 32, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "seq_header_len", scope: !357, file: !3, line: 31, baseType: !6, size: 32, offset: 160)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "frame_header_len", scope: !357, file: !3, line: 31, baseType: !6, size: 32, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "frame_size", scope: !357, file: !3, line: 32, baseType: !6, size: 32, offset: 224)
!421 = !DILocalVariable(name: "i", scope: !348, file: !3, line: 43, type: !6)
!422 = !DILocalVariable(name: "n", scope: !348, file: !3, line: 44, type: !18)
!423 = !DILocalVariable(name: "d", scope: !348, file: !3, line: 44, type: !18)
!424 = !DILocalVariable(name: "header", scope: !348, file: !3, line: 45, type: !425)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 720, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 90)
!428 = !DILocalVariable(name: "tokend", scope: !348, file: !3, line: 46, type: !89)
!429 = !DILocalVariable(name: "header_end", scope: !348, file: !3, line: 46, type: !89)
!430 = !DILocalVariable(name: "colorspace", scope: !348, file: !3, line: 47, type: !6)
!431 = !DILocalVariable(name: "alt_colorspace", scope: !348, file: !3, line: 48, type: !6)
!432 = !DILocalVariable(name: "tokstart", scope: !433, file: !3, line: 83, type: !89)
!433 = distinct !DILexicalBlock(scope: !348, file: !3, line: 83, column: 5)
!434 = distinct !DIAssignID()
!435 = !DILocation(line: 0, scope: !348)
!436 = distinct !DIAssignID()
!437 = distinct !DIAssignID()
!438 = distinct !DIAssignID()
!439 = !DILocation(line: 42, column: 20, scope: !348)
!440 = !DILocation(line: 44, column: 5, scope: !348)
!441 = !DILocation(line: 45, column: 5, scope: !348)
!442 = !DILocation(line: 46, column: 5, scope: !348)
!443 = !DILocation(line: 49, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !348, file: !3, line: 49, column: 9)
!445 = !DILocation(line: 49, column: 9, scope: !348)
!446 = !DILocation(line: 52, column: 8, scope: !348)
!447 = !DILocation(line: 52, column: 19, scope: !348)
!448 = !DILocation(line: 53, column: 11, scope: !348)
!449 = !DILocation(line: 53, column: 15, scope: !348)
!450 = !DILocation(line: 55, column: 10, scope: !451)
!451 = distinct !DILexicalBlock(scope: !348, file: !3, line: 55, column: 9)
!452 = !DILocation(line: 55, column: 9, scope: !348)
!453 = !DILocation(line: 56, column: 17, scope: !451)
!454 = !DILocation(line: 56, column: 9, scope: !451)
!455 = !DILocation(line: 58, column: 17, scope: !451)
!456 = !DILocation(line: 0, scope: !451)
!457 = !DILocation(line: 59, column: 15, scope: !458)
!458 = distinct !DILexicalBlock(scope: !348, file: !3, line: 59, column: 9)
!459 = !DILocation(line: 59, column: 9, scope: !348)
!460 = !DILocation(line: 62, column: 8, scope: !348)
!461 = !DILocation(line: 62, column: 25, scope: !348)
!462 = !DILocation(line: 65, column: 5, scope: !463)
!463 = distinct !DILexicalBlock(scope: !348, file: !3, line: 65, column: 5)
!464 = !DILocation(line: 67, column: 21, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !3, line: 66, column: 5)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 65, column: 5)
!467 = !DILocation(line: 67, column: 9, scope: !465)
!468 = !DILocation(line: 67, column: 19, scope: !465)
!469 = !DILocation(line: 68, column: 23, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !3, line: 68, column: 13)
!471 = !DILocation(line: 0, scope: !466)
!472 = !DILocation(line: 68, column: 13, scope: !465)
!473 = !DILocation(line: 65, column: 19, scope: !466)
!474 = distinct !{!474, !462, !475}
!475 = !DILocation(line: 76, column: 5, scope: !463)
!476 = !DILocation(line: 72, column: 13, scope: !477)
!477 = distinct !DILexicalBlock(scope: !470, file: !3, line: 69, column: 9)
!478 = !DILocation(line: 72, column: 25, scope: !477)
!479 = !DILocation(line: 73, column: 21, scope: !477)
!480 = !DILocation(line: 73, column: 13, scope: !477)
!481 = !DILocation(line: 73, column: 25, scope: !477)
!482 = !DILocation(line: 77, column: 33, scope: !483)
!483 = distinct !DILexicalBlock(scope: !348, file: !3, line: 77, column: 9)
!484 = !DILocation(line: 77, column: 9, scope: !348)
!485 = !DILocation(line: 72, column: 21, scope: !477)
!486 = !DILocation(line: 81, column: 27, scope: !348)
!487 = !DILocation(line: 81, column: 19, scope: !348)
!488 = !DILocation(line: 82, column: 8, scope: !348)
!489 = !DILocation(line: 82, column: 23, scope: !348)
!490 = !DILocation(line: 0, scope: !433)
!491 = !DILocation(line: 83, column: 68, scope: !492)
!492 = distinct !DILexicalBlock(scope: !433, file: !3, line: 83, column: 5)
!493 = !DILocation(line: 83, column: 5, scope: !433)
!494 = !DILocation(line: 83, column: 28, scope: !433)
!495 = !DILocation(line: 158, column: 20, scope: !496)
!496 = distinct !DILexicalBlock(scope: !348, file: !3, line: 158, column: 9)
!497 = !DILocation(line: 158, column: 9, scope: !348)
!498 = !DILocation(line: 165, column: 20, scope: !499)
!499 = distinct !DILexicalBlock(scope: !348, file: !3, line: 165, column: 9)
!500 = !DILocation(line: 165, column: 9, scope: !348)
!501 = !DILocation(line: 85, column: 13, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 85, column: 13)
!503 = distinct !DILexicalBlock(scope: !492, file: !3, line: 84, column: 5)
!504 = !DILocation(line: 85, column: 23, scope: !502)
!505 = !DILocation(line: 85, column: 13, scope: !503)
!506 = !DILocation(line: 87, column: 26, scope: !503)
!507 = !DILocation(line: 87, column: 9, scope: !503)
!508 = !DILocation(line: 90, column: 42, scope: !509)
!509 = distinct !DILexicalBlock(scope: !503, file: !3, line: 88, column: 9)
!510 = !DILocation(line: 90, column: 40, scope: !509)
!511 = !DILocation(line: 90, column: 26, scope: !509)
!512 = !DILocation(line: 91, column: 26, scope: !509)
!513 = !DILocation(line: 92, column: 17, scope: !509)
!514 = !DILocation(line: 94, column: 44, scope: !509)
!515 = !DILocation(line: 94, column: 42, scope: !509)
!516 = !DILocation(line: 94, column: 27, scope: !509)
!517 = !DILocation(line: 95, column: 26, scope: !509)
!518 = !DILocation(line: 96, column: 17, scope: !509)
!519 = !DILocation(line: 98, column: 22, scope: !520)
!520 = distinct !DILexicalBlock(scope: !509, file: !3, line: 98, column: 21)
!521 = !DILocation(line: 102, column: 28, scope: !509)
!522 = !DILocation(line: 103, column: 17, scope: !509)
!523 = !DILocation(line: 105, column: 34, scope: !509)
!524 = !DILocation(line: 105, column: 25, scope: !509)
!525 = !DILocation(line: 105, column: 17, scope: !509)
!526 = !DILocation(line: 108, column: 42, scope: !527)
!527 = distinct !DILexicalBlock(scope: !509, file: !3, line: 106, column: 17)
!528 = !DILocation(line: 109, column: 35, scope: !527)
!529 = !DILocation(line: 110, column: 25, scope: !527)
!530 = !DILocation(line: 112, column: 42, scope: !527)
!531 = !DILocation(line: 113, column: 35, scope: !527)
!532 = !DILocation(line: 114, column: 25, scope: !527)
!533 = !DILocation(line: 116, column: 42, scope: !527)
!534 = !DILocation(line: 117, column: 25, scope: !527)
!535 = !DILocation(line: 125, column: 21, scope: !536)
!536 = distinct !DILexicalBlock(scope: !509, file: !3, line: 125, column: 21)
!537 = !DILocation(line: 125, column: 57, scope: !536)
!538 = !DILocation(line: 125, column: 62, scope: !536)
!539 = !DILocation(line: 127, column: 21, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !3, line: 126, column: 17)
!541 = !DILocation(line: 128, column: 37, scope: !540)
!542 = !DILocation(line: 128, column: 35, scope: !540)
!543 = !DILocation(line: 129, column: 37, scope: !540)
!544 = !DILocation(line: 129, column: 35, scope: !540)
!545 = !DILocation(line: 130, column: 17, scope: !540)
!546 = !DILocation(line: 131, column: 28, scope: !509)
!547 = !DILocation(line: 132, column: 17, scope: !509)
!548 = !DILocation(line: 135, column: 21, scope: !549)
!549 = distinct !DILexicalBlock(scope: !509, file: !3, line: 135, column: 21)
!550 = !DILocation(line: 135, column: 57, scope: !549)
!551 = !DILocation(line: 135, column: 62, scope: !549)
!552 = !DILocation(line: 137, column: 21, scope: !553)
!553 = distinct !DILexicalBlock(scope: !549, file: !3, line: 136, column: 17)
!554 = !DILocation(line: 138, column: 40, scope: !553)
!555 = !DILocation(line: 138, column: 38, scope: !553)
!556 = !DILocation(line: 139, column: 40, scope: !553)
!557 = !DILocation(line: 139, column: 38, scope: !553)
!558 = !DILocation(line: 140, column: 17, scope: !553)
!559 = !DILocation(line: 141, column: 28, scope: !509)
!560 = !DILocation(line: 142, column: 17, scope: !509)
!561 = !DILocation(line: 144, column: 22, scope: !562)
!562 = distinct !DILexicalBlock(scope: !509, file: !3, line: 144, column: 21)
!563 = !DILocation(line: 144, column: 21, scope: !509)
!564 = !DILocation(line: 147, column: 30, scope: !565)
!565 = distinct !DILexicalBlock(scope: !562, file: !3, line: 145, column: 17)
!566 = !DILocation(line: 148, column: 26, scope: !567)
!567 = distinct !DILexicalBlock(scope: !565, file: !3, line: 148, column: 25)
!568 = !DILocation(line: 0, scope: !503)
!569 = !DILocation(line: 153, column: 28, scope: !509)
!570 = !DILocation(line: 154, column: 17, scope: !509)
!571 = !DILocation(line: 48, column: 9, scope: !348)
!572 = !DILocation(line: 83, column: 90, scope: !492)
!573 = distinct !{!573, !493, !574}
!574 = !DILocation(line: 156, column: 5, scope: !433)
!575 = !DILocation(line: 167, column: 18, scope: !576)
!576 = distinct !DILexicalBlock(scope: !499, file: !3, line: 166, column: 5)
!577 = !DILocation(line: 167, column: 9, scope: !576)
!578 = !DILocation(line: 168, column: 9, scope: !576)
!579 = !DILocation(line: 171, column: 15, scope: !348)
!580 = !DILocation(line: 172, column: 5, scope: !348)
!581 = !DILocation(line: 173, column: 1, scope: !348)
!582 = distinct !DISubprogram(name: "get_frame_total", scope: !3, file: !3, line: 176, type: !119, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !583)
!583 = !{!584, !585, !586, !587, !590}
!584 = !DILocalVariable(name: "handle", arg: 1, scope: !582, file: !3, line: 176, type: !91)
!585 = !DILocalVariable(name: "h", scope: !582, file: !3, line: 178, type: !355)
!586 = !DILocalVariable(name: "i_frame_total", scope: !582, file: !3, line: 179, type: !6)
!587 = !DILocalVariable(name: "init_pos", scope: !588, file: !3, line: 183, type: !7)
!588 = distinct !DILexicalBlock(scope: !589, file: !3, line: 182, column: 5)
!589 = distinct !DILexicalBlock(scope: !582, file: !3, line: 181, column: 9)
!590 = !DILocalVariable(name: "i_size", scope: !588, file: !3, line: 185, type: !7)
!591 = !DILocation(line: 0, scope: !582)
!592 = !DILocation(line: 183, column: 39, scope: !588)
!593 = !DILocation(line: 183, column: 29, scope: !588)
!594 = !DILocation(line: 0, scope: !588)
!595 = !DILocation(line: 184, column: 19, scope: !588)
!596 = !DILocation(line: 184, column: 9, scope: !588)
!597 = !DILocation(line: 185, column: 37, scope: !588)
!598 = !DILocation(line: 185, column: 27, scope: !588)
!599 = !DILocation(line: 186, column: 19, scope: !588)
!600 = !DILocation(line: 186, column: 9, scope: !588)
!601 = !DILocation(line: 187, column: 44, scope: !588)
!602 = !DILocation(line: 187, column: 41, scope: !588)
!603 = !DILocation(line: 187, column: 39, scope: !588)
!604 = !DILocation(line: 188, column: 38, scope: !588)
!605 = !DILocation(line: 188, column: 47, scope: !588)
!606 = !DILocation(line: 188, column: 43, scope: !588)
!607 = !DILocation(line: 188, column: 33, scope: !588)
!608 = !DILocation(line: 188, column: 54, scope: !588)
!609 = !DILocation(line: 188, column: 60, scope: !588)
!610 = !DILocation(line: 188, column: 56, scope: !588)
!611 = !DILocation(line: 188, column: 31, scope: !588)
!612 = !DILocation(line: 187, column: 60, scope: !588)
!613 = !DILocation(line: 187, column: 25, scope: !588)
!614 = !DILocation(line: 191, column: 5, scope: !582)
!615 = distinct !DISubprogram(name: "read_frame", scope: !3, file: !3, line: 230, type: !329, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!616 = !{!617, !618, !619, !620}
!617 = !DILocalVariable(name: "p_pic", arg: 1, scope: !615, file: !3, line: 230, type: !125)
!618 = !DILocalVariable(name: "handle", arg: 2, scope: !615, file: !3, line: 230, type: !91)
!619 = !DILocalVariable(name: "i_frame", arg: 3, scope: !615, file: !3, line: 230, type: !6)
!620 = !DILocalVariable(name: "h", scope: !615, file: !3, line: 232, type: !355)
!621 = distinct !DIAssignID()
!622 = !DILocation(line: 0, scope: !615)
!623 = !DILocation(line: 234, column: 22, scope: !624)
!624 = distinct !DILexicalBlock(scope: !615, file: !3, line: 234, column: 9)
!625 = !DILocation(line: 234, column: 17, scope: !624)
!626 = !DILocation(line: 234, column: 9, scope: !615)
!627 = !DILocation(line: 237, column: 23, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 236, column: 13)
!629 = distinct !DILexicalBlock(scope: !624, file: !3, line: 235, column: 5)
!630 = !DILocation(line: 237, column: 27, scope: !628)
!631 = !DILocation(line: 237, column: 52, scope: !628)
!632 = !DILocation(line: 237, column: 61, scope: !628)
!633 = !DILocation(line: 237, column: 57, scope: !628)
!634 = !DILocation(line: 237, column: 47, scope: !628)
!635 = !DILocation(line: 237, column: 68, scope: !628)
!636 = !DILocation(line: 237, column: 74, scope: !628)
!637 = !DILocation(line: 237, column: 70, scope: !628)
!638 = !DILocation(line: 237, column: 45, scope: !628)
!639 = !DILocation(line: 237, column: 44, scope: !628)
!640 = !DILocation(line: 238, column: 23, scope: !628)
!641 = !DILocation(line: 238, column: 20, scope: !628)
!642 = !DILocation(line: 238, column: 18, scope: !628)
!643 = !DILocation(line: 237, column: 13, scope: !628)
!644 = !DILocalVariable(name: "header", scope: !645, file: !3, line: 198, type: !653)
!645 = distinct !DISubprogram(name: "read_frame_internal", scope: !3, file: !3, line: 194, type: !646, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{!6, !125, !355}
!648 = !{!649, !650, !651, !652, !644}
!649 = !DILocalVariable(name: "p_pic", arg: 1, scope: !645, file: !3, line: 194, type: !125)
!650 = !DILocalVariable(name: "h", arg: 2, scope: !645, file: !3, line: 194, type: !355)
!651 = !DILocalVariable(name: "slen", scope: !645, file: !3, line: 196, type: !6)
!652 = !DILocalVariable(name: "i", scope: !645, file: !3, line: 197, type: !6)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !188)
!654 = !DILocation(line: 0, scope: !645, inlinedAt: !655)
!655 = distinct !DILocation(line: 248, column: 9, scope: !656)
!656 = distinct !DILexicalBlock(scope: !615, file: !3, line: 248, column: 9)
!657 = !DILocation(line: 198, column: 5, scope: !645, inlinedAt: !655)
!658 = !DILocation(line: 201, column: 42, scope: !659, inlinedAt: !655)
!659 = distinct !DILexicalBlock(scope: !645, file: !3, line: 201, column: 9)
!660 = !DILocation(line: 201, column: 15, scope: !659, inlinedAt: !655)
!661 = !DILocation(line: 201, column: 47, scope: !659, inlinedAt: !655)
!662 = !DILocation(line: 201, column: 9, scope: !645, inlinedAt: !655)
!663 = !DILocation(line: 204, column: 5, scope: !645, inlinedAt: !655)
!664 = !DILocation(line: 204, column: 18, scope: !645, inlinedAt: !655)
!665 = !DILocation(line: 205, column: 9, scope: !666, inlinedAt: !655)
!666 = distinct !DILexicalBlock(scope: !645, file: !3, line: 205, column: 9)
!667 = !DILocation(line: 205, column: 9, scope: !645, inlinedAt: !655)
!668 = !DILocation(line: 207, column: 18, scope: !669, inlinedAt: !655)
!669 = distinct !DILexicalBlock(scope: !666, file: !3, line: 206, column: 5)
!670 = !DILocation(line: 208, column: 18, scope: !669, inlinedAt: !655)
!671 = !DILocation(line: 207, column: 9, scope: !669, inlinedAt: !655)
!672 = !DILocation(line: 209, column: 9, scope: !669, inlinedAt: !655)
!673 = !DILocation(line: 213, column: 46, scope: !645, inlinedAt: !655)
!674 = !DILocation(line: 213, column: 36, scope: !645, inlinedAt: !655)
!675 = !DILocation(line: 213, column: 51, scope: !645, inlinedAt: !655)
!676 = !DILocation(line: 213, column: 5, scope: !645, inlinedAt: !655)
!677 = !DILocation(line: 214, column: 10, scope: !645, inlinedAt: !655)
!678 = !DILocation(line: 213, column: 14, scope: !645, inlinedAt: !655)
!679 = !DILocation(line: 213, column: 33, scope: !645, inlinedAt: !655)
!680 = distinct !{!680, !676, !677}
!681 = !DILocation(line: 217, column: 18, scope: !682, inlinedAt: !655)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 216, column: 5)
!683 = distinct !DILexicalBlock(scope: !645, file: !3, line: 215, column: 9)
!684 = !DILocation(line: 217, column: 9, scope: !682, inlinedAt: !655)
!685 = !DILocation(line: 218, column: 9, scope: !682, inlinedAt: !655)
!686 = !DILocation(line: 220, column: 33, scope: !645, inlinedAt: !655)
!687 = !DILocation(line: 220, column: 8, scope: !645, inlinedAt: !655)
!688 = !DILocation(line: 220, column: 25, scope: !645, inlinedAt: !655)
!689 = !DILocation(line: 222, column: 27, scope: !690, inlinedAt: !655)
!690 = distinct !DILexicalBlock(scope: !645, file: !3, line: 222, column: 9)
!691 = !DILocation(line: 222, column: 16, scope: !690, inlinedAt: !655)
!692 = !DILocation(line: 222, column: 40, scope: !690, inlinedAt: !655)
!693 = !DILocation(line: 222, column: 51, scope: !690, inlinedAt: !655)
!694 = !DILocation(line: 222, column: 46, scope: !690, inlinedAt: !655)
!695 = !DILocation(line: 222, column: 37, scope: !690, inlinedAt: !655)
!696 = !DILocation(line: 222, column: 65, scope: !690, inlinedAt: !655)
!697 = !DILocation(line: 222, column: 9, scope: !690, inlinedAt: !655)
!698 = !DILocation(line: 222, column: 70, scope: !690, inlinedAt: !655)
!699 = !DILocation(line: 223, column: 6, scope: !690, inlinedAt: !655)
!700 = !DILocation(line: 223, column: 16, scope: !690, inlinedAt: !655)
!701 = !DILocation(line: 223, column: 40, scope: !690, inlinedAt: !655)
!702 = !DILocation(line: 223, column: 51, scope: !690, inlinedAt: !655)
!703 = !DILocation(line: 223, column: 46, scope: !690, inlinedAt: !655)
!704 = !DILocation(line: 223, column: 58, scope: !690, inlinedAt: !655)
!705 = !DILocation(line: 223, column: 37, scope: !690, inlinedAt: !655)
!706 = !DILocation(line: 223, column: 69, scope: !690, inlinedAt: !655)
!707 = !DILocation(line: 223, column: 9, scope: !690, inlinedAt: !655)
!708 = !DILocation(line: 223, column: 74, scope: !690, inlinedAt: !655)
!709 = !DILocation(line: 224, column: 6, scope: !690, inlinedAt: !655)
!710 = !DILocation(line: 228, column: 1, scope: !645, inlinedAt: !655)
!711 = !DILocation(line: 248, column: 9, scope: !615)
!712 = !DILocation(line: 224, column: 16, scope: !690, inlinedAt: !655)
!713 = !DILocation(line: 224, column: 40, scope: !690, inlinedAt: !655)
!714 = !DILocation(line: 224, column: 51, scope: !690, inlinedAt: !655)
!715 = !DILocation(line: 224, column: 46, scope: !690, inlinedAt: !655)
!716 = !DILocation(line: 224, column: 58, scope: !690, inlinedAt: !655)
!717 = !DILocation(line: 224, column: 37, scope: !690, inlinedAt: !655)
!718 = !DILocation(line: 224, column: 69, scope: !690, inlinedAt: !655)
!719 = !DILocation(line: 224, column: 9, scope: !690, inlinedAt: !655)
!720 = !DILocation(line: 224, column: 74, scope: !690, inlinedAt: !655)
!721 = !DILocation(line: 251, column: 28, scope: !615)
!722 = !DILocation(line: 251, column: 19, scope: !615)
!723 = !DILocation(line: 252, column: 5, scope: !615)
!724 = !DILocation(line: 253, column: 1, scope: !615)
!725 = distinct !DISubprogram(name: "close_file", scope: !3, file: !3, line: 255, type: !119, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !726)
!726 = !{!727, !728}
!727 = !DILocalVariable(name: "handle", arg: 1, scope: !725, file: !3, line: 255, type: !91)
!728 = !DILocalVariable(name: "h", scope: !725, file: !3, line: 257, type: !355)
!729 = !DILocation(line: 0, scope: !725)
!730 = !DILocation(line: 258, column: 10, scope: !731)
!731 = distinct !DILexicalBlock(scope: !725, file: !3, line: 258, column: 9)
!732 = !DILocation(line: 258, column: 12, scope: !731)
!733 = !DILocation(line: 258, column: 19, scope: !731)
!734 = !DILocation(line: 258, column: 16, scope: !731)
!735 = !DILocation(line: 258, column: 9, scope: !725)
!736 = !DILocation(line: 260, column: 5, scope: !725)
!737 = !DILocation(line: 261, column: 5, scope: !725)
!738 = !DILocation(line: 262, column: 5, scope: !725)
!739 = !DILocation(line: 263, column: 1, scope: !725)
!740 = !DISubprogram(name: "malloc", scope: !741, file: !741, line: 540, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!741 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!742 = !DISubroutineType(types: !743)
!743 = !{!5, !408}
!744 = !DISubprogram(name: "fopen", linkageName: "fopen64", scope: !745, file: !745, line: 270, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!745 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!746 = !DISubroutineType(types: !747)
!747 = !{!360, !748, !748}
!748 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)
!749 = !DISubprogram(name: "fgetc", scope: !745, file: !745, line: 513, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!750 = !DISubroutineType(types: !751)
!751 = !{!6, !360}
!752 = !DISubprogram(name: "strncmp", scope: !753, file: !753, line: 159, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!753 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!754 = !DISubroutineType(types: !755)
!755 = !{!6, !202, !202, !408}
!756 = !DISubprogram(name: "strtol", scope: !741, file: !741, line: 177, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!757 = !DISubroutineType(types: !758)
!758 = !{!138, !748, !759, !6}
!759 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!761 = !DISubprogram(name: "strchr", scope: !753, file: !753, line: 246, type: !762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!762 = !DISubroutineType(types: !763)
!763 = !{!89, !202, !6}
!764 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !745, file: !745, line: 439, type: !765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DISubroutineType(types: !766)
!766 = !{!6, !748, !748, null}
!767 = !DISubprogram(name: "x264_reduce_fraction", scope: !14, file: !14, line: 192, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !770, !770}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!771 = !DISubprogram(name: "fprintf", scope: !745, file: !745, line: 350, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!772 = !DISubroutineType(types: !773)
!773 = !{!6, !774, !748, null}
!774 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !360)
!775 = !DISubprogram(name: "ftell", scope: !745, file: !745, line: 718, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!776 = !DISubroutineType(types: !777)
!777 = !{!138, !360}
!778 = !DISubprogram(name: "fseek", scope: !745, file: !745, line: 713, type: !779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!779 = !DISubroutineType(types: !780)
!780 = !{!6, !360, !138, !6}
!781 = !DISubprogram(name: "fread", scope: !745, file: !745, line: 675, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!782 = !DISubroutineType(types: !783)
!783 = !{!11, !784, !408, !408, !774}
!784 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!785 = !DISubprogram(name: "fclose", scope: !745, file: !745, line: 178, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!786 = !DISubprogram(name: "free", scope: !741, file: !741, line: 555, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
