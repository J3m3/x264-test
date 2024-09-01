; ModuleID = 'x264_src/output/matroska.c'
source_filename = "x264_src/output/matroska.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }

@mkv_output = dso_local local_unnamed_addr constant %struct.cli_output_t { ptr @open_file, ptr @set_param, ptr @write_headers, ptr @write_frame, ptr @close_file }, align 8, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"x264\00", align 1, !dbg !13
@.str.1 = private unnamed_addr constant [16 x i8] c"V_MPEG4/ISO/AVC\00", align 1, !dbg !19

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @open_file(ptr noundef %psz_filename, ptr nocapture noundef writeonly %p_handle) #0 !dbg !276 {
entry:
    #dbg_value(ptr %psz_filename, !278, !DIExpression(), !299)
    #dbg_value(ptr %p_handle, !279, !DIExpression(), !299)
  store ptr null, ptr %p_handle, align 8, !dbg !300
  %calloc = tail call dereferenceable_or_null(48) ptr @calloc(i64 1, i64 48), !dbg !301
    #dbg_value(ptr %calloc, !280, !DIExpression(), !299)
  %tobool.not = icmp eq ptr %calloc, null, !dbg !302
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !304

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @mk_create_writer(ptr noundef %psz_filename) #7, !dbg !305
  store ptr %call1, ptr %calloc, align 8, !dbg !306
  %tobool3.not = icmp eq ptr %call1, null, !dbg !307
  br i1 %tobool3.not, label %if.then4, label %if.end5, !dbg !309

if.then4:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %calloc) #7, !dbg !310
  br label %cleanup, !dbg !312

if.end5:                                          ; preds = %if.end
  store ptr %calloc, ptr %p_handle, align 8, !dbg !313
  br label %cleanup, !dbg !314

cleanup:                                          ; preds = %entry, %if.end5, %if.then4
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -1, %if.then4 ], [ -1, %entry ], !dbg !299
  ret i32 %retval.0, !dbg !315
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @set_param(ptr nocapture noundef writeonly %handle, ptr nocapture noundef readonly %p_param) #1 !dbg !316 {
entry:
    #dbg_value(ptr %handle, !318, !DIExpression(), !326)
    #dbg_value(ptr %p_param, !319, !DIExpression(), !326)
    #dbg_value(ptr %handle, !320, !DIExpression(), !326)
  %i_fps_num = getelementptr inbounds i8, ptr %p_param, i64 652, !dbg !327
  %0 = load i32, ptr %i_fps_num, align 4, !dbg !327
  %cmp.not = icmp eq i32 %0, 0, !dbg !329
  br i1 %cmp.not, label %if.end, label %land.lhs.true, !dbg !330

land.lhs.true:                                    ; preds = %entry
  %b_vfr_input = getelementptr inbounds i8, ptr %p_param, i64 648, !dbg !331
  %1 = load i32, ptr %b_vfr_input, align 8, !dbg !331
  %tobool.not = icmp eq i32 %1, 0, !dbg !332
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %land.lhs.true
  %i_fps_den = getelementptr inbounds i8, ptr %p_param, i64 656, !dbg !334
  %2 = load i32, ptr %i_fps_den, align 8, !dbg !334
  %conv = zext i32 %2 to i64, !dbg !336
  %mul = mul nuw nsw i64 %conv, 1000000000, !dbg !337
  %conv2 = zext i32 %0 to i64, !dbg !338
  %div = udiv i64 %mul, %conv2, !dbg !339
  br label %if.end, !dbg !340

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %.sink = phi i64 [ %div, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %frame_duration3 = getelementptr inbounds i8, ptr %handle, i64 24, !dbg !341
  store i64 %.sink, ptr %frame_duration3, align 8, !dbg !341
  %i_width = getelementptr inbounds i8, ptr %p_param, i64 20, !dbg !342
  %3 = load i32, ptr %i_width, align 4, !dbg !342
  %width = getelementptr inbounds i8, ptr %handle, i64 8, !dbg !343
  store i32 %3, ptr %width, align 8, !dbg !344
  %i_height = getelementptr inbounds i8, ptr %p_param, i64 24, !dbg !345
  %4 = load i32, ptr %i_height, align 8, !dbg !345
  %height = getelementptr inbounds i8, ptr %handle, i64 12, !dbg !346
  store i32 %4, ptr %height, align 4, !dbg !347
  %i_sar_width = getelementptr inbounds i8, ptr %p_param, i64 48, !dbg !348
  %5 = load i32, ptr %i_sar_width, align 4, !dbg !348
  %tobool4.not = icmp eq i32 %5, 0, !dbg !350
  br i1 %tobool4.not, label %if.else21, label %land.lhs.true5, !dbg !351

land.lhs.true5:                                   ; preds = %if.end
  %vui = getelementptr inbounds i8, ptr %p_param, i64 44, !dbg !352
  %6 = load i32, ptr %vui, align 4, !dbg !353
  %tobool7.not = icmp eq i32 %6, 0, !dbg !354
  br i1 %tobool7.not, label %if.else21, label %if.then8, !dbg !355

if.then8:                                         ; preds = %land.lhs.true5
  %7 = load i32, ptr %i_width, align 4, !dbg !356
  %conv10 = sext i32 %7 to i64, !dbg !358
  %conv13 = sext i32 %5 to i64, !dbg !359
  %mul14 = mul nsw i64 %conv10, %conv13, !dbg !360
    #dbg_value(i64 %mul14, !321, !DIExpression(), !326)
  %conv16 = sext i32 %4 to i64, !dbg !361
  %conv19 = sext i32 %6 to i64, !dbg !362
  %mul20 = mul nsw i64 %conv16, %conv19, !dbg !363
    #dbg_value(i64 %mul20, !322, !DIExpression(), !326)
  br label %if.end26, !dbg !364

if.else21:                                        ; preds = %land.lhs.true5, %if.end
  %8 = load i32, ptr %i_width, align 4, !dbg !365
  %conv23 = sext i32 %8 to i64, !dbg !367
    #dbg_value(i64 %conv23, !321, !DIExpression(), !326)
  %conv25 = sext i32 %4 to i64, !dbg !368
    #dbg_value(i64 %conv25, !322, !DIExpression(), !326)
  br label %if.end26

if.end26:                                         ; preds = %if.else21, %if.then8
  %dh.0 = phi i64 [ %mul20, %if.then8 ], [ %conv25, %if.else21 ], !dbg !369
  %dw.0 = phi i64 [ %mul14, %if.then8 ], [ %conv23, %if.else21 ], !dbg !369
    #dbg_value(i64 %dw.0, !321, !DIExpression(), !326)
    #dbg_value(i64 %dh.0, !322, !DIExpression(), !326)
  %cmp27 = icmp sgt i64 %dw.0, 0, !dbg !370
  %cmp30 = icmp sgt i64 %dh.0, 0
  %or.cond = select i1 %cmp27, i1 %cmp30, i1 false, !dbg !371
  br i1 %or.cond, label %while.body.i, label %if.end35, !dbg !371

while.body.i:                                     ; preds = %if.end26, %while.body.i
  %a.addr.0.i = phi i64 [ %b.addr.0.i, %while.body.i ], [ %dw.0, %if.end26 ]
  %b.addr.0.i = phi i64 [ %rem.i, %while.body.i ], [ %dh.0, %if.end26 ]
    #dbg_value(i64 %b.addr.0.i, !372, !DIExpression(), !380)
    #dbg_value(i64 %a.addr.0.i, !377, !DIExpression(), !380)
  %rem.i = urem i64 %a.addr.0.i, %b.addr.0.i, !dbg !382
    #dbg_value(i64 %rem.i, !378, !DIExpression(), !383)
  %tobool.not.not.i = icmp eq i64 %rem.i, 0, !dbg !384
    #dbg_value(i64 poison, !372, !DIExpression(), !380)
    #dbg_value(i64 poison, !377, !DIExpression(), !380)
  br i1 %tobool.not.not.i, label %gcd.exit, label %while.body.i

gcd.exit:                                         ; preds = %while.body.i
    #dbg_value(i64 %b.addr.0.i, !323, !DIExpression(), !386)
  %div33 = sdiv i64 %dw.0, %b.addr.0.i, !dbg !387
    #dbg_value(i64 %div33, !321, !DIExpression(), !326)
  %div34 = sdiv i64 %dh.0, %b.addr.0.i, !dbg !388
    #dbg_value(i64 %div34, !322, !DIExpression(), !326)
  br label %if.end35, !dbg !389

if.end35:                                         ; preds = %gcd.exit, %if.end26
  %dh.1 = phi i64 [ %div34, %gcd.exit ], [ %dh.0, %if.end26 ], !dbg !326
  %dw.1 = phi i64 [ %div33, %gcd.exit ], [ %dw.0, %if.end26 ], !dbg !326
    #dbg_value(i64 %dw.1, !321, !DIExpression(), !326)
    #dbg_value(i64 %dh.1, !322, !DIExpression(), !326)
  %conv36 = trunc i64 %dw.1 to i32, !dbg !390
  %d_width = getelementptr inbounds i8, ptr %handle, i64 16, !dbg !391
  store i32 %conv36, ptr %d_width, align 8, !dbg !392
  %conv37 = trunc i64 %dh.1 to i32, !dbg !393
  %d_height = getelementptr inbounds i8, ptr %handle, i64 20, !dbg !394
  store i32 %conv37, ptr %d_height, align 4, !dbg !395
  %i_timebase_num = getelementptr inbounds i8, ptr %p_param, i64 660, !dbg !396
  %9 = load i32, ptr %i_timebase_num, align 4, !dbg !396
  %i_timebase_num38 = getelementptr inbounds i8, ptr %handle, i64 36, !dbg !397
  store i32 %9, ptr %i_timebase_num38, align 4, !dbg !398
  %i_timebase_den = getelementptr inbounds i8, ptr %p_param, i64 664, !dbg !399
  %10 = load i32, ptr %i_timebase_den, align 8, !dbg !399
  %i_timebase_den39 = getelementptr inbounds i8, ptr %handle, i64 40, !dbg !400
  store i32 %10, ptr %i_timebase_den39, align 8, !dbg !401
  ret i32 0, !dbg !402
}

; Function Attrs: nounwind uwtable
define internal i32 @write_headers(ptr nocapture noundef %handle, ptr nocapture noundef readonly %p_nal) #0 !dbg !403 {
entry:
    #dbg_value(ptr %handle, !405, !DIExpression(), !417)
    #dbg_value(ptr %p_nal, !406, !DIExpression(), !417)
    #dbg_value(ptr %handle, !407, !DIExpression(), !417)
  %i_payload = getelementptr inbounds i8, ptr %p_nal, i64 8, !dbg !418
  %0 = load i32, ptr %i_payload, align 8, !dbg !418
  %sub = add nsw i32 %0, -4, !dbg !419
    #dbg_value(i32 %sub, !408, !DIExpression(), !417)
  %i_payload2 = getelementptr inbounds i8, ptr %p_nal, i64 32, !dbg !420
  %1 = load i32, ptr %i_payload2, align 8, !dbg !420
  %sub3 = add nsw i32 %1, -4, !dbg !421
    #dbg_value(i32 %sub3, !409, !DIExpression(), !417)
  %i_payload5 = getelementptr inbounds i8, ptr %p_nal, i64 56, !dbg !422
  %2 = load i32, ptr %i_payload5, align 8, !dbg !422
    #dbg_value(i32 %2, !410, !DIExpression(), !417)
  %p_payload = getelementptr inbounds i8, ptr %p_nal, i64 16, !dbg !423
  %3 = load ptr, ptr %p_payload, align 8, !dbg !423
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 4, !dbg !424
    #dbg_value(ptr %add.ptr, !411, !DIExpression(), !417)
  %p_payload8 = getelementptr inbounds i8, ptr %p_nal, i64 40, !dbg !425
  %4 = load ptr, ptr %p_payload8, align 8, !dbg !425
  %add.ptr9 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !426
    #dbg_value(ptr %add.ptr9, !412, !DIExpression(), !417)
  %p_payload11 = getelementptr inbounds i8, ptr %p_nal, i64 64, !dbg !427
  %5 = load ptr, ptr %p_payload11, align 8, !dbg !427
    #dbg_value(ptr %5, !413, !DIExpression(), !417)
  %width = getelementptr inbounds i8, ptr %handle, i64 8, !dbg !428
  %6 = load i32, ptr %width, align 8, !dbg !428
  %tobool.not = icmp eq i32 %6, 0, !dbg !430
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false, !dbg !431

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds i8, ptr %handle, i64 12, !dbg !432
  %7 = load i32, ptr %height, align 4, !dbg !432
  %tobool12.not = icmp eq i32 %7, 0, !dbg !433
  br i1 %tobool12.not, label %cleanup, label %lor.lhs.false13, !dbg !434

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %d_width = getelementptr inbounds i8, ptr %handle, i64 16, !dbg !435
  %8 = load i32, ptr %d_width, align 8, !dbg !435
  %tobool14.not = icmp eq i32 %8, 0, !dbg !436
  br i1 %tobool14.not, label %cleanup, label %lor.lhs.false15, !dbg !437

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %d_height = getelementptr inbounds i8, ptr %handle, i64 20, !dbg !438
  %9 = load i32, ptr %d_height, align 4, !dbg !438
  %tobool16.not = icmp eq i32 %9, 0, !dbg !439
  br i1 %tobool16.not, label %cleanup, label %if.end, !dbg !440

if.end:                                           ; preds = %lor.lhs.false15
  %add18 = add nsw i32 %0, 7, !dbg !441
  %add19 = add nsw i32 %add18, %sub3, !dbg !442
    #dbg_value(i32 %add19, !416, !DIExpression(), !417)
  %conv = sext i32 %add19 to i64, !dbg !443
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #8, !dbg !444
    #dbg_value(ptr %call, !415, !DIExpression(), !417)
  %tobool20.not = icmp eq ptr %call, null, !dbg !445
  br i1 %tobool20.not, label %cleanup, label %if.end22, !dbg !447

if.end22:                                         ; preds = %if.end
  store i8 1, ptr %call, align 1, !dbg !448
  %arrayidx24 = getelementptr inbounds i8, ptr %3, i64 5, !dbg !449
  %10 = load i8, ptr %arrayidx24, align 1, !dbg !449
  %arrayidx25 = getelementptr inbounds i8, ptr %call, i64 1, !dbg !450
  store i8 %10, ptr %arrayidx25, align 1, !dbg !451
  %arrayidx26 = getelementptr inbounds i8, ptr %3, i64 6, !dbg !452
  %11 = load i8, ptr %arrayidx26, align 1, !dbg !452
  %arrayidx27 = getelementptr inbounds i8, ptr %call, i64 2, !dbg !453
  store i8 %11, ptr %arrayidx27, align 1, !dbg !454
  %arrayidx28 = getelementptr inbounds i8, ptr %3, i64 7, !dbg !455
  %12 = load i8, ptr %arrayidx28, align 1, !dbg !455
  %arrayidx29 = getelementptr inbounds i8, ptr %call, i64 3, !dbg !456
  store i8 %12, ptr %arrayidx29, align 1, !dbg !457
  %arrayidx30 = getelementptr inbounds i8, ptr %call, i64 4, !dbg !458
  store i8 -1, ptr %arrayidx30, align 1, !dbg !459
  %arrayidx31 = getelementptr inbounds i8, ptr %call, i64 5, !dbg !460
  store i8 -31, ptr %arrayidx31, align 1, !dbg !461
  %shr = lshr i32 %sub, 8, !dbg !462
  %conv32 = trunc i32 %shr to i8, !dbg !463
  %arrayidx33 = getelementptr inbounds i8, ptr %call, i64 6, !dbg !464
  store i8 %conv32, ptr %arrayidx33, align 1, !dbg !465
  %conv34 = trunc i32 %sub to i8, !dbg !466
  %arrayidx35 = getelementptr inbounds i8, ptr %call, i64 7, !dbg !467
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !468
  %add.ptr36 = getelementptr inbounds i8, ptr %call, i64 8, !dbg !469
  %conv37 = sext i32 %sub to i64, !dbg !470
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr36, ptr nonnull align 1 %add.ptr, i64 %conv37, i1 false), !dbg !471
  %13 = sext i32 %0 to i64, !dbg !472
  %14 = getelementptr i8, ptr %call, i64 %13, !dbg !472
  %arrayidx39 = getelementptr i8, ptr %14, i64 4, !dbg !472
  store i8 1, ptr %arrayidx39, align 1, !dbg !473
  %shr40 = lshr i32 %sub3, 8, !dbg !474
  %conv41 = trunc i32 %shr40 to i8, !dbg !475
  %arrayidx44 = getelementptr i8, ptr %14, i64 5, !dbg !476
  store i8 %conv41, ptr %arrayidx44, align 1, !dbg !477
  %conv45 = trunc i32 %sub3 to i8, !dbg !478
  %arrayidx48 = getelementptr i8, ptr %14, i64 6, !dbg !479
  store i8 %conv45, ptr %arrayidx48, align 1, !dbg !480
  %add.ptr49 = getelementptr inbounds i8, ptr %call, i64 11, !dbg !481
  %add.ptr50 = getelementptr inbounds i8, ptr %add.ptr49, i64 %conv37, !dbg !482
  %conv51 = sext i32 %sub3 to i64, !dbg !483
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr50, ptr nonnull align 1 %add.ptr9, i64 %conv51, i1 false), !dbg !484
  %15 = load ptr, ptr %handle, align 8, !dbg !485
  %frame_duration = getelementptr inbounds i8, ptr %handle, i64 24, !dbg !486
  %16 = load i64, ptr %frame_duration, align 8, !dbg !486
  %call56 = tail call i32 @mk_writeHeader(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %call, i32 noundef %add19, i64 noundef %16, i64 noundef 50000, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #7, !dbg !487
    #dbg_value(i32 %call56, !414, !DIExpression(), !417)
  %cmp = icmp slt i32 %call56, 0, !dbg !488
  br i1 %cmp, label %cleanup, label %if.end59, !dbg !490

if.end59:                                         ; preds = %if.end22
  tail call void @free(ptr noundef nonnull %call) #7, !dbg !491
  %b_writing_frame = getelementptr inbounds i8, ptr %handle, i64 32, !dbg !492
  %17 = load i8, ptr %b_writing_frame, align 8, !dbg !492
  %tobool60.not = icmp eq i8 %17, 0, !dbg !494
  br i1 %tobool60.not, label %if.then61, label %if.end69, !dbg !495

if.then61:                                        ; preds = %if.end59
  %18 = load ptr, ptr %handle, align 8, !dbg !496
  %call63 = tail call i32 @mk_start_frame(ptr noundef %18) #7, !dbg !499
  %cmp64 = icmp slt i32 %call63, 0, !dbg !500
  br i1 %cmp64, label %cleanup, label %if.end67, !dbg !501

if.end67:                                         ; preds = %if.then61
  store i8 1, ptr %b_writing_frame, align 8, !dbg !502
  br label %if.end69, !dbg !503

if.end69:                                         ; preds = %if.end67, %if.end59
  %19 = load ptr, ptr %handle, align 8, !dbg !504
  %call71 = tail call i32 @mk_add_frame_data(ptr noundef %19, ptr noundef %5, i32 noundef %2) #7, !dbg !506
  %cmp72 = icmp slt i32 %call71, 0, !dbg !507
  br i1 %cmp72, label %cleanup, label %if.end75, !dbg !508

if.end75:                                         ; preds = %if.end69
  %add76 = add nsw i32 %2, %sub, !dbg !509
  %add77 = add nsw i32 %add76, %sub3, !dbg !510
  br label %cleanup, !dbg !511

cleanup:                                          ; preds = %if.end69, %if.then61, %if.end22, %if.end, %entry, %lor.lhs.false, %lor.lhs.false13, %lor.lhs.false15, %if.end75
  %retval.0 = phi i32 [ %add77, %if.end75 ], [ -1, %lor.lhs.false15 ], [ -1, %lor.lhs.false13 ], [ -1, %lor.lhs.false ], [ -1, %entry ], [ -1, %if.end ], [ %call56, %if.end22 ], [ -1, %if.then61 ], [ -1, %if.end69 ], !dbg !417
  ret i32 %retval.0, !dbg !512
}

; Function Attrs: nounwind uwtable
define internal i32 @write_frame(ptr nocapture noundef %handle, ptr noundef %p_nalu, i32 noundef %i_size, ptr nocapture noundef readonly %p_picture) #0 !dbg !513 {
entry:
    #dbg_value(ptr %handle, !515, !DIExpression(), !521)
    #dbg_value(ptr %p_nalu, !516, !DIExpression(), !521)
    #dbg_value(i32 %i_size, !517, !DIExpression(), !521)
    #dbg_value(ptr %p_picture, !518, !DIExpression(), !521)
    #dbg_value(ptr %handle, !519, !DIExpression(), !521)
  %b_writing_frame = getelementptr inbounds i8, ptr %handle, i64 32, !dbg !522
  %0 = load i8, ptr %b_writing_frame, align 8, !dbg !522
  %tobool.not = icmp eq i8 %0, 0, !dbg !524
  br i1 %tobool.not, label %if.then, label %if.end3, !dbg !525

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle, align 8, !dbg !526
  %call = tail call i32 @mk_start_frame(ptr noundef %1) #7, !dbg !529
  %cmp = icmp slt i32 %call, 0, !dbg !530
  br i1 %cmp, label %cleanup22, label %if.end, !dbg !531

if.end:                                           ; preds = %if.then
  store i8 1, ptr %b_writing_frame, align 8, !dbg !532
  br label %if.end3, !dbg !533

if.end3:                                          ; preds = %if.end, %entry
  %2 = load ptr, ptr %handle, align 8, !dbg !534
  %call5 = tail call i32 @mk_add_frame_data(ptr noundef %2, ptr noundef %p_nalu, i32 noundef %i_size) #7, !dbg !536
  %cmp6 = icmp slt i32 %call5, 0, !dbg !537
  br i1 %cmp6, label %cleanup22, label %if.end8, !dbg !538

if.end8:                                          ; preds = %if.end3
  %i_pts = getelementptr inbounds i8, ptr %p_picture, i64 16, !dbg !539
  %3 = load i64, ptr %i_pts, align 8, !dbg !539
  %conv = sitofp i64 %3 to double, !dbg !540
  %mul = fmul double %conv, 1.000000e+09, !dbg !541
  %i_timebase_num = getelementptr inbounds i8, ptr %handle, i64 36, !dbg !542
  %4 = load i32, ptr %i_timebase_num, align 4, !dbg !542
  %conv9 = uitofp i32 %4 to double, !dbg !543
  %mul10 = fmul double %mul, %conv9, !dbg !544
  %i_timebase_den = getelementptr inbounds i8, ptr %handle, i64 40, !dbg !545
  %5 = load i32, ptr %i_timebase_den, align 8, !dbg !545
  %conv11 = uitofp i32 %5 to double, !dbg !546
  %div = fdiv double %mul10, %conv11, !dbg !547
  %add = fadd double %div, 5.000000e-01, !dbg !548
  %conv12 = fptosi double %add to i64, !dbg !549
    #dbg_value(i64 %conv12, !520, !DIExpression(), !521)
  store i8 0, ptr %b_writing_frame, align 8, !dbg !550
  %6 = load ptr, ptr %handle, align 8, !dbg !551
  %b_keyframe = getelementptr inbounds i8, ptr %p_picture, i64 12, !dbg !553
  %7 = load i32, ptr %b_keyframe, align 4, !dbg !553
  %8 = load i32, ptr %p_picture, align 8, !dbg !554
  %cmp15 = icmp eq i32 %8, 5, !dbg !555
  %conv16 = zext i1 %cmp15 to i32, !dbg !555
  %call17 = tail call i32 @mk_set_frame_flags(ptr noundef %6, i64 noundef %conv12, i32 noundef %7, i32 noundef %conv16) #7, !dbg !556
  %cmp18.inv = icmp sgt i32 %call17, -1, !dbg !521
  %.i_size = select i1 %cmp18.inv, i32 %i_size, i32 -1, !dbg !521
  br label %cleanup22

cleanup22:                                        ; preds = %if.end3, %if.then, %if.end8
  %retval.1 = phi i32 [ %.i_size, %if.end8 ], [ -1, %if.then ], [ -1, %if.end3 ], !dbg !521
  ret i32 %retval.1, !dbg !557
}

; Function Attrs: nounwind uwtable
define internal i32 @close_file(ptr nocapture noundef %handle, i64 noundef %largest_pts, i64 noundef %second_largest_pts) #0 !dbg !558 {
entry:
    #dbg_value(ptr %handle, !560, !DIExpression(), !566)
    #dbg_value(i64 %largest_pts, !561, !DIExpression(), !566)
    #dbg_value(i64 %second_largest_pts, !562, !DIExpression(), !566)
    #dbg_value(ptr %handle, !563, !DIExpression(), !566)
  %sub = sub nsw i64 %largest_pts, %second_largest_pts, !dbg !567
  %i_timebase_num = getelementptr inbounds i8, ptr %handle, i64 36, !dbg !568
  %0 = load i32, ptr %i_timebase_num, align 4, !dbg !568
  %conv = zext i32 %0 to i64, !dbg !569
  %mul = mul nsw i64 %sub, %conv, !dbg !570
  %i_timebase_den = getelementptr inbounds i8, ptr %handle, i64 40, !dbg !571
  %1 = load i32, ptr %i_timebase_den, align 8, !dbg !571
  %conv1 = zext i32 %1 to i64, !dbg !572
  %div = sdiv i64 %mul, %conv1, !dbg !573
  %conv2 = sitofp i64 %div to double, !dbg !574
  %add = fadd double %conv2, 5.000000e-01, !dbg !575
  %conv3 = fptosi double %add to i64, !dbg !576
    #dbg_value(i64 %conv3, !565, !DIExpression(), !566)
  %2 = load ptr, ptr %handle, align 8, !dbg !577
  %call = tail call i32 @mk_close(ptr noundef %2, i64 noundef %conv3) #7, !dbg !578
    #dbg_value(i32 %call, !564, !DIExpression(), !566)
  tail call void @free(ptr noundef %handle) #7, !dbg !579
  ret i32 %call, !dbg !580
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !581 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare !dbg !588 ptr @mk_create_writer(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !591 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !592 i32 @mk_writeHeader(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !597 i32 @mk_start_frame(ptr noundef) local_unnamed_addr #3

declare !dbg !600 i32 @mk_add_frame_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !603 i32 @mk_set_frame_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !606 i32 @mk_close(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!268, !269, !270, !271, !272, !273, !274}
!llvm.ident = !{!275}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mkv_output", scope: !2, file: !3, line: 211, type: !24, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/output/matroska.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1a7ca5fe13daa7a376c13c3ae71ee0de")
!4 = !{!5, !6, !11}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !9, line: 44, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!10 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!0, !13, !19}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !3, line: 149, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 40, elements: !17)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18}
!18 = !DISubrange(count: 5)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !3, line: 149, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 16)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_output_t", file: !26, line: 34, baseType: !27)
!26 = !DIFile(filename: "x264_src/output/output.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "2609bd03b72b40b15579de35b2e5f690")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 27, size: 320, elements: !28)
!28 = !{!29, !37, !214, !227, !264}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !27, file: !26, line: 29, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!11, !33, !34}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !36, line: 30, baseType: !5)
!36 = !DIFile(filename: "x264_src/muxers.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!37 = !DIDerivedType(tag: DW_TAG_member, name: "set_param", scope: !27, file: !26, line: 30, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!11, !35, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !43, line: 376, baseType: !44)
!43 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !43, line: 176, size: 5632, elements: !45)
!45 = !{!46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !94, !95, !96, !97, !101, !102, !115, !116, !117, !118, !119, !150, !192, !193, !194, !195, !196, !197, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !44, file: !43, line: 179, baseType: !47, size: 32)
!47 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !44, file: !43, line: 180, baseType: !11, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !44, file: !43, line: 181, baseType: !11, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !44, file: !43, line: 182, baseType: !11, size: 32, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !44, file: !43, line: 183, baseType: !11, size: 32, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !44, file: !43, line: 186, baseType: !11, size: 32, offset: 160)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !44, file: !43, line: 187, baseType: !11, size: 32, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !44, file: !43, line: 188, baseType: !11, size: 32, offset: 224)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !44, file: !43, line: 189, baseType: !11, size: 32, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !44, file: !43, line: 190, baseType: !11, size: 32, offset: 288)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !44, file: !43, line: 198, baseType: !11, size: 32, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !44, file: !43, line: 215, baseType: !59, size: 288, offset: 352)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !43, line: 200, size: 288, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !59, file: !43, line: 203, baseType: !11, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !59, file: !43, line: 204, baseType: !11, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !59, file: !43, line: 206, baseType: !11, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !59, file: !43, line: 209, baseType: !11, size: 32, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !59, file: !43, line: 210, baseType: !11, size: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !59, file: !43, line: 211, baseType: !11, size: 32, offset: 160)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !59, file: !43, line: 212, baseType: !11, size: 32, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !59, file: !43, line: 213, baseType: !11, size: 32, offset: 224)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !59, file: !43, line: 214, baseType: !11, size: 32, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !44, file: !43, line: 218, baseType: !11, size: 32, offset: 640)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !44, file: !43, line: 219, baseType: !11, size: 32, offset: 672)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !44, file: !43, line: 220, baseType: !11, size: 32, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !44, file: !43, line: 221, baseType: !11, size: 32, offset: 736)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !44, file: !43, line: 222, baseType: !11, size: 32, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !44, file: !43, line: 224, baseType: !11, size: 32, offset: 800)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !44, file: !43, line: 225, baseType: !11, size: 32, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !44, file: !43, line: 226, baseType: !11, size: 32, offset: 864)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !44, file: !43, line: 227, baseType: !11, size: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !44, file: !43, line: 229, baseType: !11, size: 32, offset: 928)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !44, file: !43, line: 230, baseType: !11, size: 32, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !44, file: !43, line: 231, baseType: !11, size: 32, offset: 992)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !44, file: !43, line: 233, baseType: !11, size: 32, offset: 1024)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !44, file: !43, line: 234, baseType: !11, size: 32, offset: 1056)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !44, file: !43, line: 236, baseType: !11, size: 32, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !44, file: !43, line: 237, baseType: !11, size: 32, offset: 1120)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !44, file: !43, line: 239, baseType: !11, size: 32, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !44, file: !43, line: 240, baseType: !33, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !44, file: !43, line: 241, baseType: !89, size: 128, offset: 1280)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !22)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !91, line: 24, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !93)
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !44, file: !43, line: 242, baseType: !89, size: 128, offset: 1408)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !44, file: !43, line: 243, baseType: !89, size: 128, offset: 1536)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !44, file: !43, line: 244, baseType: !89, size: 128, offset: 1664)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !44, file: !43, line: 245, baseType: !98, size: 512, offset: 1792)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 512, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !44, file: !43, line: 246, baseType: !98, size: 512, offset: 2304)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !44, file: !43, line: 249, baseType: !103, size: 64, offset: 2816)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !5, !11, !106, !108}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !110)
!110 = !{!111, !112, !113, !114}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !109, file: !3, line: 211, baseType: !47, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !109, file: !3, line: 211, baseType: !47, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !109, file: !3, line: 211, baseType: !5, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !109, file: !3, line: 211, baseType: !5, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !44, file: !43, line: 250, baseType: !5, size: 64, offset: 2880)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !44, file: !43, line: 251, baseType: !11, size: 32, offset: 2944)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !44, file: !43, line: 252, baseType: !11, size: 32, offset: 2976)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !44, file: !43, line: 253, baseType: !33, size: 64, offset: 3008)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !44, file: !43, line: 287, baseType: !120, size: 800, offset: 3072)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !43, line: 256, size: 800, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !142, !143, !144, !148, !149}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !120, file: !43, line: 258, baseType: !47, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !120, file: !43, line: 259, baseType: !47, size: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !120, file: !43, line: 261, baseType: !11, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !120, file: !43, line: 262, baseType: !11, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !120, file: !43, line: 263, baseType: !11, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !120, file: !43, line: 264, baseType: !11, size: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !120, file: !43, line: 265, baseType: !11, size: 32, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !120, file: !43, line: 267, baseType: !11, size: 32, offset: 224)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !120, file: !43, line: 268, baseType: !11, size: 32, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !120, file: !43, line: 269, baseType: !11, size: 32, offset: 288)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !120, file: !43, line: 270, baseType: !11, size: 32, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !120, file: !43, line: 271, baseType: !11, size: 32, offset: 352)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !120, file: !43, line: 272, baseType: !11, size: 32, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !120, file: !43, line: 273, baseType: !11, size: 32, offset: 416)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !120, file: !43, line: 274, baseType: !11, size: 32, offset: 448)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !120, file: !43, line: 275, baseType: !11, size: 32, offset: 480)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !120, file: !43, line: 276, baseType: !11, size: 32, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !120, file: !43, line: 277, baseType: !11, size: 32, offset: 544)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !120, file: !43, line: 278, baseType: !141, size: 32, offset: 576)
!141 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !120, file: !43, line: 279, baseType: !141, size: 32, offset: 608)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !120, file: !43, line: 280, baseType: !11, size: 32, offset: 640)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !120, file: !43, line: 283, baseType: !145, size: 64, offset: 672)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 2)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !120, file: !43, line: 285, baseType: !11, size: 32, offset: 736)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !120, file: !43, line: 286, baseType: !11, size: 32, offset: 768)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !44, file: !43, line: 327, baseType: !151, size: 1152, offset: 3904)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !43, line: 290, size: 1152, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !190, !191}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !151, file: !43, line: 292, baseType: !11, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !151, file: !43, line: 294, baseType: !11, size: 32, offset: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !151, file: !43, line: 295, baseType: !11, size: 32, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !151, file: !43, line: 296, baseType: !11, size: 32, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !151, file: !43, line: 297, baseType: !11, size: 32, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !151, file: !43, line: 299, baseType: !11, size: 32, offset: 160)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !151, file: !43, line: 300, baseType: !141, size: 32, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !151, file: !43, line: 301, baseType: !141, size: 32, offset: 224)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !151, file: !43, line: 302, baseType: !141, size: 32, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !151, file: !43, line: 303, baseType: !11, size: 32, offset: 288)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !151, file: !43, line: 304, baseType: !11, size: 32, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !151, file: !43, line: 305, baseType: !141, size: 32, offset: 352)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !151, file: !43, line: 306, baseType: !141, size: 32, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !151, file: !43, line: 307, baseType: !141, size: 32, offset: 416)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !151, file: !43, line: 309, baseType: !11, size: 32, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !151, file: !43, line: 310, baseType: !141, size: 32, offset: 480)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !151, file: !43, line: 311, baseType: !11, size: 32, offset: 512)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !151, file: !43, line: 312, baseType: !11, size: 32, offset: 544)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !151, file: !43, line: 315, baseType: !11, size: 32, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !151, file: !43, line: 316, baseType: !33, size: 64, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !151, file: !43, line: 317, baseType: !11, size: 32, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !151, file: !43, line: 318, baseType: !33, size: 64, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !151, file: !43, line: 321, baseType: !141, size: 32, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !151, file: !43, line: 322, baseType: !141, size: 32, offset: 864)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !151, file: !43, line: 323, baseType: !141, size: 32, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !151, file: !43, line: 324, baseType: !179, size: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !43, line: 174, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 167, size: 256, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !181, file: !43, line: 169, baseType: !11, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !181, file: !43, line: 169, baseType: !11, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !181, file: !43, line: 170, baseType: !11, size: 32, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !181, file: !43, line: 171, baseType: !11, size: 32, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !181, file: !43, line: 172, baseType: !141, size: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !181, file: !43, line: 173, baseType: !189, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !151, file: !43, line: 325, baseType: !11, size: 32, offset: 1024)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !151, file: !43, line: 326, baseType: !33, size: 64, offset: 1088)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !44, file: !43, line: 330, baseType: !11, size: 32, offset: 5056)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !44, file: !43, line: 331, baseType: !11, size: 32, offset: 5088)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !44, file: !43, line: 332, baseType: !11, size: 32, offset: 5120)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !44, file: !43, line: 334, baseType: !11, size: 32, offset: 5152)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !44, file: !43, line: 335, baseType: !11, size: 32, offset: 5184)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !44, file: !43, line: 336, baseType: !198, size: 32, offset: 5216)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !91, line: 26, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !47)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !44, file: !43, line: 337, baseType: !198, size: 32, offset: 5248)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !44, file: !43, line: 338, baseType: !198, size: 32, offset: 5280)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !44, file: !43, line: 339, baseType: !198, size: 32, offset: 5312)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !44, file: !43, line: 340, baseType: !11, size: 32, offset: 5344)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !44, file: !43, line: 344, baseType: !11, size: 32, offset: 5376)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !44, file: !43, line: 356, baseType: !11, size: 32, offset: 5408)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !44, file: !43, line: 364, baseType: !11, size: 32, offset: 5440)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !44, file: !43, line: 367, baseType: !11, size: 32, offset: 5472)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !44, file: !43, line: 368, baseType: !11, size: 32, offset: 5504)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !44, file: !43, line: 369, baseType: !11, size: 32, offset: 5536)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !44, file: !43, line: 375, baseType: !211, size: 64, offset: 5568)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !5}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "write_headers", scope: !27, file: !26, line: 31, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!11, !35, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !43, line: 604, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 593, size: 192, elements: !221)
!221 = !{!222, !223, !224, !225}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !220, file: !43, line: 595, baseType: !11, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !220, file: !43, line: 596, baseType: !11, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !220, file: !43, line: 599, baseType: !11, size: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !220, file: !43, line: 603, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame", scope: !27, file: !26, line: 32, baseType: !228, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!11, !35, !226, !11, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !43, line: 549, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 513, size: 1088, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !254, !263}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !233, file: !43, line: 521, baseType: !11, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !233, file: !43, line: 523, baseType: !11, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !233, file: !43, line: 526, baseType: !11, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !233, file: !43, line: 529, baseType: !11, size: 32, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !233, file: !43, line: 531, baseType: !6, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !233, file: !43, line: 534, baseType: !6, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !233, file: !43, line: 541, baseType: !41, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !233, file: !43, line: 543, baseType: !243, size: 448, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !43, line: 511, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 505, size: 448, elements: !245)
!245 = !{!246, !247, !248, !252}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !244, file: !43, line: 507, baseType: !11, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !244, file: !43, line: 508, baseType: !11, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !244, file: !43, line: 509, baseType: !249, size: 128, offset: 64)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 4)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !244, file: !43, line: 510, baseType: !253, size: 256, offset: 192)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !250)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !233, file: !43, line: 545, baseType: !255, size: 256, offset: 768)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !43, line: 503, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 496, size: 256, elements: !257)
!257 = !{!258, !260, !261, !262}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !256, file: !43, line: 498, baseType: !259, size: 64)
!259 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !256, file: !43, line: 499, baseType: !259, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !256, file: !43, line: 500, baseType: !259, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !256, file: !43, line: 502, baseType: !259, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !233, file: !43, line: 548, baseType: !5, size: 64, offset: 1024)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !27, file: !26, line: 33, baseType: !265, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!11, !35, !6, !6}
!268 = !{i32 7, !"Dwarf Version", i32 5}
!269 = !{i32 2, !"Debug Info Version", i32 3}
!270 = !{i32 1, !"wchar_size", i32 4}
!271 = !{i32 8, !"PIC Level", i32 2}
!272 = !{i32 7, !"PIE Level", i32 2}
!273 = !{i32 7, !"uwtable", i32 2}
!274 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!275 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!276 = distinct !DISubprogram(name: "open_file", scope: !3, file: !3, line: 38, type: !31, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!277 = !{!278, !279, !280}
!278 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !276, file: !3, line: 38, type: !33)
!279 = !DILocalVariable(name: "p_handle", arg: 2, scope: !276, file: !3, line: 38, type: !34)
!280 = !DILocalVariable(name: "p_mkv", scope: !276, file: !3, line: 40, type: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "mkv_hnd_t", file: !3, line: 36, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 24, size: 384, elements: !284)
!284 = !{!285, !290, !291, !292, !293, !294, !295, !297, !298}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !283, file: !3, line: 26, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "mk_writer", file: !288, line: 24, baseType: !289)
!288 = !DIFile(filename: "x264_src/output/matroska_ebml.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1745c5eb41455b01e98496f56a8b1e8e")
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "mk_writer", file: !288, line: 24, flags: DIFlagFwdDecl)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !283, file: !3, line: 28, baseType: !11, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !283, file: !3, line: 28, baseType: !11, size: 32, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "d_width", scope: !283, file: !3, line: 28, baseType: !11, size: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "d_height", scope: !283, file: !3, line: 28, baseType: !11, size: 32, offset: 160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "frame_duration", scope: !283, file: !3, line: 30, baseType: !6, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "b_writing_frame", scope: !283, file: !3, line: 32, baseType: !296, size: 8, offset: 256)
!296 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !283, file: !3, line: 33, baseType: !198, size: 32, offset: 288)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !283, file: !3, line: 34, baseType: !198, size: 32, offset: 320)
!299 = !DILocation(line: 0, scope: !276)
!300 = !DILocation(line: 42, column: 15, scope: !276)
!301 = !DILocation(line: 44, column: 14, scope: !276)
!302 = !DILocation(line: 45, column: 10, scope: !303)
!303 = distinct !DILexicalBlock(scope: !276, file: !3, line: 45, column: 9)
!304 = !DILocation(line: 45, column: 9, scope: !276)
!305 = !DILocation(line: 50, column: 16, scope: !276)
!306 = !DILocation(line: 50, column: 14, scope: !276)
!307 = !DILocation(line: 51, column: 10, scope: !308)
!308 = distinct !DILexicalBlock(scope: !276, file: !3, line: 51, column: 9)
!309 = !DILocation(line: 51, column: 9, scope: !276)
!310 = !DILocation(line: 53, column: 9, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !3, line: 52, column: 5)
!312 = !DILocation(line: 54, column: 9, scope: !311)
!313 = !DILocation(line: 57, column: 15, scope: !276)
!314 = !DILocation(line: 59, column: 5, scope: !276)
!315 = !DILocation(line: 60, column: 1, scope: !276)
!316 = distinct !DISubprogram(name: "set_param", scope: !3, file: !3, line: 62, type: !39, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !317)
!317 = !{!318, !319, !320, !321, !322, !323}
!318 = !DILocalVariable(name: "handle", arg: 1, scope: !316, file: !3, line: 62, type: !35)
!319 = !DILocalVariable(name: "p_param", arg: 2, scope: !316, file: !3, line: 62, type: !41)
!320 = !DILocalVariable(name: "p_mkv", scope: !316, file: !3, line: 64, type: !281)
!321 = !DILocalVariable(name: "dw", scope: !316, file: !3, line: 65, type: !6)
!322 = !DILocalVariable(name: "dh", scope: !316, file: !3, line: 65, type: !6)
!323 = !DILocalVariable(name: "x", scope: !324, file: !3, line: 93, type: !6)
!324 = distinct !DILexicalBlock(scope: !325, file: !3, line: 92, column: 5)
!325 = distinct !DILexicalBlock(scope: !316, file: !3, line: 91, column: 9)
!326 = !DILocation(line: 0, scope: !316)
!327 = !DILocation(line: 67, column: 18, scope: !328)
!328 = distinct !DILexicalBlock(scope: !316, file: !3, line: 67, column: 9)
!329 = !DILocation(line: 67, column: 28, scope: !328)
!330 = !DILocation(line: 67, column: 32, scope: !328)
!331 = !DILocation(line: 67, column: 45, scope: !328)
!332 = !DILocation(line: 67, column: 36, scope: !328)
!333 = !DILocation(line: 67, column: 9, scope: !316)
!334 = !DILocation(line: 69, column: 51, scope: !335)
!335 = distinct !DILexicalBlock(scope: !328, file: !3, line: 68, column: 5)
!336 = !DILocation(line: 69, column: 33, scope: !335)
!337 = !DILocation(line: 69, column: 61, scope: !335)
!338 = !DILocation(line: 70, column: 55, scope: !335)
!339 = !DILocation(line: 70, column: 53, scope: !335)
!340 = !DILocation(line: 71, column: 5, scope: !335)
!341 = !DILocation(line: 0, scope: !328)
!342 = !DILocation(line: 77, column: 29, scope: !316)
!343 = !DILocation(line: 77, column: 12, scope: !316)
!344 = !DILocation(line: 77, column: 18, scope: !316)
!345 = !DILocation(line: 78, column: 30, scope: !316)
!346 = !DILocation(line: 78, column: 12, scope: !316)
!347 = !DILocation(line: 78, column: 19, scope: !316)
!348 = !DILocation(line: 80, column: 22, scope: !349)
!349 = distinct !DILexicalBlock(scope: !316, file: !3, line: 80, column: 9)
!350 = !DILocation(line: 80, column: 9, scope: !349)
!351 = !DILocation(line: 80, column: 34, scope: !349)
!352 = !DILocation(line: 80, column: 18, scope: !349)
!353 = !DILocation(line: 80, column: 50, scope: !349)
!354 = !DILocation(line: 80, column: 37, scope: !349)
!355 = !DILocation(line: 80, column: 9, scope: !316)
!356 = !DILocation(line: 82, column: 32, scope: !357)
!357 = distinct !DILexicalBlock(scope: !349, file: !3, line: 81, column: 5)
!358 = !DILocation(line: 82, column: 14, scope: !357)
!359 = !DILocation(line: 82, column: 43, scope: !357)
!360 = !DILocation(line: 82, column: 41, scope: !357)
!361 = !DILocation(line: 83, column: 14, scope: !357)
!362 = !DILocation(line: 83, column: 43, scope: !357)
!363 = !DILocation(line: 83, column: 41, scope: !357)
!364 = !DILocation(line: 84, column: 5, scope: !357)
!365 = !DILocation(line: 87, column: 23, scope: !366)
!366 = distinct !DILexicalBlock(scope: !349, file: !3, line: 86, column: 5)
!367 = !DILocation(line: 87, column: 14, scope: !366)
!368 = !DILocation(line: 88, column: 14, scope: !366)
!369 = !DILocation(line: 0, scope: !349)
!370 = !DILocation(line: 91, column: 12, scope: !325)
!371 = !DILocation(line: 91, column: 16, scope: !325)
!372 = !DILocalVariable(name: "b", arg: 2, scope: !373, file: !36, line: 32, type: !6)
!373 = distinct !DISubprogram(name: "gcd", scope: !36, file: !36, line: 32, type: !374, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{!6, !6, !6}
!376 = !{!377, !372, !378}
!377 = !DILocalVariable(name: "a", arg: 1, scope: !373, file: !36, line: 32, type: !6)
!378 = !DILocalVariable(name: "c", scope: !379, file: !36, line: 36, type: !6)
!379 = distinct !DILexicalBlock(scope: !373, file: !36, line: 35, column: 5)
!380 = !DILocation(line: 0, scope: !373, inlinedAt: !381)
!381 = distinct !DILocation(line: 93, column: 21, scope: !324)
!382 = !DILocation(line: 36, column: 23, scope: !379, inlinedAt: !381)
!383 = !DILocation(line: 0, scope: !379, inlinedAt: !381)
!384 = !DILocation(line: 37, column: 14, scope: !385, inlinedAt: !381)
!385 = distinct !DILexicalBlock(scope: !379, file: !36, line: 37, column: 13)
!386 = !DILocation(line: 0, scope: !324)
!387 = !DILocation(line: 94, column: 12, scope: !324)
!388 = !DILocation(line: 95, column: 12, scope: !324)
!389 = !DILocation(line: 96, column: 5, scope: !324)
!390 = !DILocation(line: 98, column: 22, scope: !316)
!391 = !DILocation(line: 98, column: 12, scope: !316)
!392 = !DILocation(line: 98, column: 20, scope: !316)
!393 = !DILocation(line: 99, column: 23, scope: !316)
!394 = !DILocation(line: 99, column: 12, scope: !316)
!395 = !DILocation(line: 99, column: 21, scope: !316)
!396 = !DILocation(line: 100, column: 38, scope: !316)
!397 = !DILocation(line: 100, column: 12, scope: !316)
!398 = !DILocation(line: 100, column: 27, scope: !316)
!399 = !DILocation(line: 101, column: 38, scope: !316)
!400 = !DILocation(line: 101, column: 12, scope: !316)
!401 = !DILocation(line: 101, column: 27, scope: !316)
!402 = !DILocation(line: 103, column: 5, scope: !316)
!403 = distinct !DISubprogram(name: "write_headers", scope: !3, file: !3, line: 106, type: !216, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416}
!405 = !DILocalVariable(name: "handle", arg: 1, scope: !403, file: !3, line: 106, type: !35)
!406 = !DILocalVariable(name: "p_nal", arg: 2, scope: !403, file: !3, line: 106, type: !218)
!407 = !DILocalVariable(name: "p_mkv", scope: !403, file: !3, line: 108, type: !281)
!408 = !DILocalVariable(name: "sps_size", scope: !403, file: !3, line: 110, type: !11)
!409 = !DILocalVariable(name: "pps_size", scope: !403, file: !3, line: 111, type: !11)
!410 = !DILocalVariable(name: "sei_size", scope: !403, file: !3, line: 112, type: !11)
!411 = !DILocalVariable(name: "sps", scope: !403, file: !3, line: 114, type: !226)
!412 = !DILocalVariable(name: "pps", scope: !403, file: !3, line: 115, type: !226)
!413 = !DILocalVariable(name: "sei", scope: !403, file: !3, line: 116, type: !226)
!414 = !DILocalVariable(name: "ret", scope: !403, file: !3, line: 118, type: !11)
!415 = !DILocalVariable(name: "avcC", scope: !403, file: !3, line: 119, type: !226)
!416 = !DILocalVariable(name: "avcC_len", scope: !403, file: !3, line: 120, type: !11)
!417 = !DILocation(line: 0, scope: !403)
!418 = !DILocation(line: 110, column: 29, scope: !403)
!419 = !DILocation(line: 110, column: 39, scope: !403)
!420 = !DILocation(line: 111, column: 29, scope: !403)
!421 = !DILocation(line: 111, column: 39, scope: !403)
!422 = !DILocation(line: 112, column: 29, scope: !403)
!423 = !DILocation(line: 114, column: 29, scope: !403)
!424 = !DILocation(line: 114, column: 39, scope: !403)
!425 = !DILocation(line: 115, column: 29, scope: !403)
!426 = !DILocation(line: 115, column: 39, scope: !403)
!427 = !DILocation(line: 116, column: 29, scope: !403)
!428 = !DILocation(line: 122, column: 17, scope: !429)
!429 = distinct !DILexicalBlock(scope: !403, file: !3, line: 122, column: 9)
!430 = !DILocation(line: 122, column: 10, scope: !429)
!431 = !DILocation(line: 122, column: 23, scope: !429)
!432 = !DILocation(line: 122, column: 34, scope: !429)
!433 = !DILocation(line: 122, column: 27, scope: !429)
!434 = !DILocation(line: 122, column: 41, scope: !429)
!435 = !DILocation(line: 123, column: 17, scope: !429)
!436 = !DILocation(line: 123, column: 10, scope: !429)
!437 = !DILocation(line: 123, column: 25, scope: !429)
!438 = !DILocation(line: 123, column: 36, scope: !429)
!439 = !DILocation(line: 123, column: 29, scope: !429)
!440 = !DILocation(line: 122, column: 9, scope: !403)
!441 = !DILocation(line: 126, column: 41, scope: !403)
!442 = !DILocation(line: 126, column: 45, scope: !403)
!443 = !DILocation(line: 127, column: 20, scope: !403)
!444 = !DILocation(line: 127, column: 12, scope: !403)
!445 = !DILocation(line: 128, column: 10, scope: !446)
!446 = distinct !DILexicalBlock(scope: !403, file: !3, line: 128, column: 9)
!447 = !DILocation(line: 128, column: 9, scope: !403)
!448 = !DILocation(line: 131, column: 13, scope: !403)
!449 = !DILocation(line: 132, column: 15, scope: !403)
!450 = !DILocation(line: 132, column: 5, scope: !403)
!451 = !DILocation(line: 132, column: 13, scope: !403)
!452 = !DILocation(line: 133, column: 15, scope: !403)
!453 = !DILocation(line: 133, column: 5, scope: !403)
!454 = !DILocation(line: 133, column: 13, scope: !403)
!455 = !DILocation(line: 134, column: 15, scope: !403)
!456 = !DILocation(line: 134, column: 5, scope: !403)
!457 = !DILocation(line: 134, column: 13, scope: !403)
!458 = !DILocation(line: 135, column: 5, scope: !403)
!459 = !DILocation(line: 135, column: 13, scope: !403)
!460 = !DILocation(line: 136, column: 5, scope: !403)
!461 = !DILocation(line: 136, column: 13, scope: !403)
!462 = !DILocation(line: 138, column: 24, scope: !403)
!463 = !DILocation(line: 138, column: 15, scope: !403)
!464 = !DILocation(line: 138, column: 5, scope: !403)
!465 = !DILocation(line: 138, column: 13, scope: !403)
!466 = !DILocation(line: 139, column: 15, scope: !403)
!467 = !DILocation(line: 139, column: 5, scope: !403)
!468 = !DILocation(line: 139, column: 13, scope: !403)
!469 = !DILocation(line: 141, column: 17, scope: !403)
!470 = !DILocation(line: 141, column: 26, scope: !403)
!471 = !DILocation(line: 141, column: 5, scope: !403)
!472 = !DILocation(line: 143, column: 5, scope: !403)
!473 = !DILocation(line: 143, column: 22, scope: !403)
!474 = !DILocation(line: 144, column: 33, scope: !403)
!475 = !DILocation(line: 144, column: 24, scope: !403)
!476 = !DILocation(line: 144, column: 5, scope: !403)
!477 = !DILocation(line: 144, column: 22, scope: !403)
!478 = !DILocation(line: 145, column: 25, scope: !403)
!479 = !DILocation(line: 145, column: 5, scope: !403)
!480 = !DILocation(line: 145, column: 23, scope: !403)
!481 = !DILocation(line: 147, column: 17, scope: !403)
!482 = !DILocation(line: 147, column: 20, scope: !403)
!483 = !DILocation(line: 147, column: 36, scope: !403)
!484 = !DILocation(line: 147, column: 5, scope: !403)
!485 = !DILocation(line: 149, column: 34, scope: !403)
!486 = !DILocation(line: 150, column: 50, scope: !403)
!487 = !DILocation(line: 149, column: 11, scope: !403)
!488 = !DILocation(line: 153, column: 13, scope: !489)
!489 = distinct !DILexicalBlock(scope: !403, file: !3, line: 153, column: 9)
!490 = !DILocation(line: 153, column: 9, scope: !403)
!491 = !DILocation(line: 156, column: 5, scope: !403)
!492 = !DILocation(line: 160, column: 17, scope: !493)
!493 = distinct !DILexicalBlock(scope: !403, file: !3, line: 160, column: 9)
!494 = !DILocation(line: 160, column: 10, scope: !493)
!495 = !DILocation(line: 160, column: 9, scope: !403)
!496 = !DILocation(line: 162, column: 36, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 162, column: 13)
!498 = distinct !DILexicalBlock(scope: !493, file: !3, line: 161, column: 5)
!499 = !DILocation(line: 162, column: 13, scope: !497)
!500 = !DILocation(line: 162, column: 40, scope: !497)
!501 = !DILocation(line: 162, column: 13, scope: !498)
!502 = !DILocation(line: 164, column: 32, scope: !498)
!503 = !DILocation(line: 165, column: 5, scope: !498)
!504 = !DILocation(line: 166, column: 35, scope: !505)
!505 = distinct !DILexicalBlock(scope: !403, file: !3, line: 166, column: 9)
!506 = !DILocation(line: 166, column: 9, scope: !505)
!507 = !DILocation(line: 166, column: 54, scope: !505)
!508 = !DILocation(line: 166, column: 9, scope: !403)
!509 = !DILocation(line: 169, column: 21, scope: !403)
!510 = !DILocation(line: 169, column: 32, scope: !403)
!511 = !DILocation(line: 169, column: 5, scope: !403)
!512 = !DILocation(line: 170, column: 1, scope: !403)
!513 = distinct !DISubprogram(name: "write_frame", scope: !3, file: !3, line: 172, type: !229, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !514)
!514 = !{!515, !516, !517, !518, !519, !520}
!515 = !DILocalVariable(name: "handle", arg: 1, scope: !513, file: !3, line: 172, type: !35)
!516 = !DILocalVariable(name: "p_nalu", arg: 2, scope: !513, file: !3, line: 172, type: !226)
!517 = !DILocalVariable(name: "i_size", arg: 3, scope: !513, file: !3, line: 172, type: !11)
!518 = !DILocalVariable(name: "p_picture", arg: 4, scope: !513, file: !3, line: 172, type: !231)
!519 = !DILocalVariable(name: "p_mkv", scope: !513, file: !3, line: 174, type: !281)
!520 = !DILocalVariable(name: "i_stamp", scope: !513, file: !3, line: 186, type: !6)
!521 = !DILocation(line: 0, scope: !513)
!522 = !DILocation(line: 176, column: 17, scope: !523)
!523 = distinct !DILexicalBlock(scope: !513, file: !3, line: 176, column: 9)
!524 = !DILocation(line: 176, column: 10, scope: !523)
!525 = !DILocation(line: 176, column: 9, scope: !513)
!526 = !DILocation(line: 178, column: 36, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 178, column: 13)
!528 = distinct !DILexicalBlock(scope: !523, file: !3, line: 177, column: 5)
!529 = !DILocation(line: 178, column: 13, scope: !527)
!530 = !DILocation(line: 178, column: 40, scope: !527)
!531 = !DILocation(line: 178, column: 13, scope: !528)
!532 = !DILocation(line: 180, column: 32, scope: !528)
!533 = !DILocation(line: 181, column: 5, scope: !528)
!534 = !DILocation(line: 183, column: 35, scope: !535)
!535 = distinct !DILexicalBlock(scope: !513, file: !3, line: 183, column: 9)
!536 = !DILocation(line: 183, column: 9, scope: !535)
!537 = !DILocation(line: 183, column: 55, scope: !535)
!538 = !DILocation(line: 183, column: 9, scope: !513)
!539 = !DILocation(line: 186, column: 45, scope: !513)
!540 = !DILocation(line: 186, column: 34, scope: !513)
!541 = !DILocation(line: 186, column: 51, scope: !513)
!542 = !DILocation(line: 186, column: 66, scope: !513)
!543 = !DILocation(line: 186, column: 59, scope: !513)
!544 = !DILocation(line: 186, column: 57, scope: !513)
!545 = !DILocation(line: 186, column: 90, scope: !513)
!546 = !DILocation(line: 186, column: 83, scope: !513)
!547 = !DILocation(line: 186, column: 81, scope: !513)
!548 = !DILocation(line: 186, column: 106, scope: !513)
!549 = !DILocation(line: 186, column: 23, scope: !513)
!550 = !DILocation(line: 188, column: 28, scope: !513)
!551 = !DILocation(line: 190, column: 36, scope: !552)
!552 = distinct !DILexicalBlock(scope: !513, file: !3, line: 190, column: 9)
!553 = !DILocation(line: 190, column: 59, scope: !552)
!554 = !DILocation(line: 190, column: 82, scope: !552)
!555 = !DILocation(line: 190, column: 89, scope: !552)
!556 = !DILocation(line: 190, column: 9, scope: !552)
!557 = !DILocation(line: 194, column: 1, scope: !513)
!558 = distinct !DISubprogram(name: "close_file", scope: !3, file: !3, line: 196, type: !266, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !559)
!559 = !{!560, !561, !562, !563, !564, !565}
!560 = !DILocalVariable(name: "handle", arg: 1, scope: !558, file: !3, line: 196, type: !35)
!561 = !DILocalVariable(name: "largest_pts", arg: 2, scope: !558, file: !3, line: 196, type: !6)
!562 = !DILocalVariable(name: "second_largest_pts", arg: 3, scope: !558, file: !3, line: 196, type: !6)
!563 = !DILocalVariable(name: "p_mkv", scope: !558, file: !3, line: 198, type: !281)
!564 = !DILocalVariable(name: "ret", scope: !558, file: !3, line: 199, type: !11)
!565 = !DILocalVariable(name: "i_last_delta", scope: !558, file: !3, line: 200, type: !6)
!566 = !DILocation(line: 0, scope: !558)
!567 = !DILocation(line: 202, column: 44, scope: !558)
!568 = !DILocation(line: 202, column: 75, scope: !558)
!569 = !DILocation(line: 202, column: 68, scope: !558)
!570 = !DILocation(line: 202, column: 66, scope: !558)
!571 = !DILocation(line: 202, column: 99, scope: !558)
!572 = !DILocation(line: 202, column: 92, scope: !558)
!573 = !DILocation(line: 202, column: 90, scope: !558)
!574 = !DILocation(line: 202, column: 30, scope: !558)
!575 = !DILocation(line: 202, column: 115, scope: !558)
!576 = !DILocation(line: 202, column: 20, scope: !558)
!577 = !DILocation(line: 204, column: 28, scope: !558)
!578 = !DILocation(line: 204, column: 11, scope: !558)
!579 = !DILocation(line: 206, column: 5, scope: !558)
!580 = !DILocation(line: 208, column: 5, scope: !558)
!581 = !DISubprogram(name: "malloc", scope: !582, file: !582, line: 540, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!582 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!583 = !DISubroutineType(types: !584)
!584 = !{!5, !585}
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !586, line: 18, baseType: !587)
!586 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!587 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!588 = !DISubprogram(name: "mk_create_writer", scope: !288, file: !288, line: 26, type: !589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!589 = !DISubroutineType(types: !590)
!590 = !{!286, !106}
!591 = !DISubprogram(name: "free", scope: !582, file: !582, line: 555, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!592 = !DISubprogram(name: "mk_writeHeader", scope: !288, file: !288, line: 28, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!593 = !DISubroutineType(types: !594)
!594 = !{!11, !286, !106, !106, !595, !47, !6, !6, !47, !47, !47, !47}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!597 = !DISubprogram(name: "mk_start_frame", scope: !288, file: !288, line: 36, type: !598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!598 = !DISubroutineType(types: !599)
!599 = !{!11, !286}
!600 = !DISubprogram(name: "mk_add_frame_data", scope: !288, file: !288, line: 37, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DISubroutineType(types: !602)
!602 = !{!11, !286, !595, !47}
!603 = !DISubprogram(name: "mk_set_frame_flags", scope: !288, file: !288, line: 38, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!604 = !DISubroutineType(types: !605)
!605 = !{!11, !286, !6, !11, !11}
!606 = !DISubprogram(name: "mk_close", scope: !288, file: !288, line: 39, type: !607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!607 = !DISubroutineType(types: !608)
!608 = !{!11, !286, !6}
