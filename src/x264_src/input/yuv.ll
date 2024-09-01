; ModuleID = 'x264_src/input/yuv.c'
source_filename = "x264_src/input/yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@yuv_input = dso_local local_unnamed_addr constant %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr @x264_picture_alloc, ptr @read_frame, ptr null, ptr @x264_picture_clean, ptr @close_file }, align 8, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1, !dbg !13
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"yuv [error]: rawyuv input requires a resolution.\0A\00", align 1, !dbg !19
@stdin = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !29

; Function Attrs: nofree nounwind uwtable
define internal range(i32 -1, 1) i32 @open_file(ptr nocapture noundef readonly %psz_filename, ptr nocapture noundef writeonly %p_handle, ptr noundef %info, ptr nocapture noundef readonly %opt) #0 !dbg !310 {
entry:
    #dbg_value(ptr %psz_filename, !312, !DIExpression(), !385)
    #dbg_value(ptr %p_handle, !313, !DIExpression(), !385)
    #dbg_value(ptr %info, !314, !DIExpression(), !385)
    #dbg_value(ptr %opt, !315, !DIExpression(), !385)
  %call = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #7, !dbg !386
    #dbg_value(ptr %call, !316, !DIExpression(), !385)
  %tobool.not = icmp eq ptr %call, null, !dbg !387
  br i1 %tobool.not, label %cleanup42, label %if.end, !dbg !389

if.end:                                           ; preds = %entry
  %resolution = getelementptr inbounds i8, ptr %opt, i64 8, !dbg !390
  %0 = load ptr, ptr %resolution, align 8, !dbg !390
  %tobool1.not = icmp eq ptr %0, null, !dbg !391
  %width = getelementptr inbounds i8, ptr %info, i64 44, !dbg !392
  %height = getelementptr inbounds i8, ptr %info, i64 12, !dbg !392
  br i1 %tobool1.not, label %for.cond.preheader, label %if.else, !dbg !393

for.cond.preheader:                               ; preds = %if.end
    #dbg_value(ptr %psz_filename, !381, !DIExpression(), !394)
  %1 = load i8, ptr %psz_filename, align 1, !dbg !395
  %tobool3.not66 = icmp eq i8 %1, 0, !dbg !397
  br i1 %tobool3.not66, label %if.end18, label %for.body, !dbg !397

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %2 = phi i8 [ %4, %for.inc ], [ %1, %for.cond.preheader ]
  %p.067 = phi ptr [ %incdec.ptr, %for.inc ], [ %psz_filename, %for.cond.preheader ]
    #dbg_value(ptr %p.067, !381, !DIExpression(), !394)
  %3 = add i8 %2, -48, !dbg !398
  %or.cond = icmp ult i8 %3, 10, !dbg !398
  br i1 %or.cond, label %land.lhs.true8, label %for.inc, !dbg !398

land.lhs.true8:                                   ; preds = %for.body
  %call9 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %p.067, ptr noundef nonnull @.str, ptr noundef nonnull %width, ptr noundef nonnull %height) #8, !dbg !400
  %cmp10 = icmp eq i32 %call9, 2, !dbg !401
  br i1 %cmp10, label %if.end18, label %for.inc, !dbg !402

for.inc:                                          ; preds = %for.body, %land.lhs.true8
  %incdec.ptr = getelementptr inbounds i8, ptr %p.067, i64 1, !dbg !403
    #dbg_value(ptr %incdec.ptr, !381, !DIExpression(), !394)
  %4 = load i8, ptr %incdec.ptr, align 1, !dbg !395
  %tobool3.not = icmp eq i8 %4, 0, !dbg !397
  br i1 %tobool3.not, label %if.end18, label %for.body, !dbg !397, !llvm.loop !404

if.else:                                          ; preds = %if.end
  %call17 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull %width, ptr noundef nonnull %height) #8, !dbg !406
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true8, %for.inc, %for.cond.preheader, %if.else
  %width19 = getelementptr inbounds i8, ptr %info, i64 44, !dbg !407
  %5 = load i32, ptr %width19, align 4, !dbg !407
  %tobool20.not = icmp eq i32 %5, 0, !dbg !409
  br i1 %tobool20.not, label %if.then23, label %lor.lhs.false, !dbg !410

lor.lhs.false:                                    ; preds = %if.end18
  %height21 = getelementptr inbounds i8, ptr %info, i64 12, !dbg !411
  %6 = load i32, ptr %height21, align 4, !dbg !411
  %tobool22.not = icmp eq i32 %6, 0, !dbg !412
  br i1 %tobool22.not, label %if.then23, label %if.end25, !dbg !413

if.then23:                                        ; preds = %lor.lhs.false, %if.end18
  %7 = load ptr, ptr @stderr, align 8, !dbg !414
  %8 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 49, i64 1, ptr %7) #9, !dbg !416
  br label %cleanup42, !dbg !417

if.end25:                                         ; preds = %lor.lhs.false
  %next_frame = getelementptr inbounds i8, ptr %call, i64 16, !dbg !418
  store i32 0, ptr %next_frame, align 8, !dbg !419
  %vfr = getelementptr inbounds i8, ptr %info, i64 40, !dbg !420
  store i32 0, ptr %vfr, align 4, !dbg !421
  %width27 = getelementptr inbounds i8, ptr %call, i64 8, !dbg !422
  store i32 %5, ptr %width27, align 8, !dbg !423
  %height29 = getelementptr inbounds i8, ptr %call, i64 12, !dbg !424
  store i32 %6, ptr %height29, align 4, !dbg !425
  %9 = load i8, ptr %psz_filename, align 1
  %.not = icmp eq i8 %9, 45
  br i1 %.not, label %if.end25.tail, label %if.else33

if.end25.tail:                                    ; preds = %if.end25
  %10 = getelementptr inbounds i8, ptr %psz_filename, i64 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0, !dbg !426
  br i1 %12, label %if.then32, label %if.else33, !dbg !428

if.then32:                                        ; preds = %if.end25.tail
  %13 = load ptr, ptr @stdin, align 8, !dbg !429
  br label %if.end36, !dbg !430

if.else33:                                        ; preds = %if.end25, %if.end25.tail
  %call34 = tail call noalias ptr @fopen64(ptr noundef nonnull %psz_filename, ptr noundef nonnull @.str.3), !dbg !431
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then32
  %storemerge = phi ptr [ %13, %if.then32 ], [ %call34, %if.else33 ], !dbg !432
  store ptr %storemerge, ptr %call, align 8, !dbg !432
  %cmp38 = icmp eq ptr %storemerge, null, !dbg !433
  br i1 %cmp38, label %cleanup42, label %if.end41, !dbg !435

if.end41:                                         ; preds = %if.end36
  store ptr %call, ptr %p_handle, align 8, !dbg !436
  br label %cleanup42, !dbg !437

cleanup42:                                        ; preds = %if.end36, %entry, %if.end41, %if.then23
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -1, %if.then23 ], [ -1, %entry ], [ -1, %if.end36 ], !dbg !385
  ret i32 %retval.0, !dbg !438
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %handle) #0 !dbg !439 {
entry:
    #dbg_value(ptr %handle, !441, !DIExpression(), !447)
    #dbg_value(ptr %handle, !442, !DIExpression(), !447)
    #dbg_value(i32 0, !443, !DIExpression(), !447)
  %0 = load ptr, ptr %handle, align 8, !dbg !448
  %call2 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2), !dbg !449
  %1 = load ptr, ptr %handle, align 8, !dbg !450
  %call4 = tail call i64 @ftell(ptr noundef %1), !dbg !451
    #dbg_value(i64 %call4, !444, !DIExpression(), !452)
  %2 = load ptr, ptr %handle, align 8, !dbg !453
  %call6 = tail call i32 @fseek(ptr noundef %2, i64 noundef 0, i32 noundef 0), !dbg !454
    #dbg_value(i64 poison, !443, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !447)
  %width = getelementptr inbounds i8, ptr %handle, i64 8, !dbg !455
  %3 = load i32, ptr %width, align 8, !dbg !455
  %height = getelementptr inbounds i8, ptr %handle, i64 12, !dbg !456
  %4 = load i32, ptr %height, align 4, !dbg !456
  %mul = mul i32 %3, 3, !dbg !457
  %mul7 = mul i32 %mul, %4, !dbg !458
  %div = sdiv i32 %mul7, 2, !dbg !459
  %conv = sext i32 %div to i64, !dbg !460
  %div8 = udiv i64 %call4, %conv, !dbg !461
    #dbg_value(i64 %div8, !443, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !447)
  %conv9 = trunc i64 %div8 to i32, !dbg !462
    #dbg_value(i32 %conv9, !443, !DIExpression(), !447)
    #dbg_value(i32 %conv9, !443, !DIExpression(), !447)
  ret i32 %conv9, !dbg !463
}

declare i32 @x264_picture_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nofree nounwind uwtable
define internal range(i32 -1, 1) i32 @read_frame(ptr nocapture noundef readonly %p_pic, ptr nocapture noundef %handle, i32 noundef %i_frame) #0 !dbg !464 {
entry:
    #dbg_value(ptr %p_pic, !466, !DIExpression(), !470)
    #dbg_value(ptr %handle, !467, !DIExpression(), !470)
    #dbg_value(i32 %i_frame, !468, !DIExpression(), !470)
    #dbg_value(ptr %handle, !469, !DIExpression(), !470)
  %next_frame = getelementptr inbounds i8, ptr %handle, i64 16, !dbg !471
  %0 = load i32, ptr %next_frame, align 8, !dbg !471
  %cmp = icmp slt i32 %0, %i_frame, !dbg !473
  br i1 %cmp, label %if.then, label %if.end16, !dbg !474

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle, align 8, !dbg !475
  %conv = sext i32 %i_frame to i64, !dbg !478
  %width = getelementptr inbounds i8, ptr %handle, i64 8, !dbg !479
  %2 = load i32, ptr %width, align 8, !dbg !479
  %conv3 = sext i32 %2 to i64, !dbg !480
  %height = getelementptr inbounds i8, ptr %handle, i64 12, !dbg !481
  %3 = load i32, ptr %height, align 4, !dbg !481
  %conv4 = sext i32 %3 to i64, !dbg !482
  %mul = mul nsw i64 %conv, 3, !dbg !483
  %mul5 = mul i64 %mul, %conv3, !dbg !484
  %mul6 = mul i64 %mul5, %conv4, !dbg !485
  %div35 = lshr i64 %mul6, 1, !dbg !486
  %call7 = tail call i32 @fseek(ptr noundef %1, i64 noundef %div35, i32 noundef 0), !dbg !487
  br label %if.end16, !dbg !487

if.end16:                                         ; preds = %if.then, %entry
    #dbg_value(ptr %p_pic, !488, !DIExpression(), !494)
    #dbg_value(ptr %handle, !493, !DIExpression(), !494)
  %plane.i = getelementptr inbounds i8, ptr %p_pic, i64 64, !dbg !497
  %4 = load ptr, ptr %plane.i, align 8, !dbg !498
  %width.i = getelementptr inbounds i8, ptr %handle, i64 8, !dbg !499
  %5 = load i32, ptr %width.i, align 8, !dbg !499
  %height.i = getelementptr inbounds i8, ptr %handle, i64 12, !dbg !500
  %6 = load i32, ptr %height.i, align 4, !dbg !500
  %mul.i = mul nsw i32 %6, %5, !dbg !501
  %conv.i = sext i32 %mul.i to i64, !dbg !502
  %7 = load ptr, ptr %handle, align 8, !dbg !503
  %call.i = tail call i64 @fread(ptr noundef %4, i64 noundef %conv.i, i64 noundef 1, ptr noundef %7), !dbg !504
  %cmp.i = icmp eq i64 %call.i, 0, !dbg !505
  br i1 %cmp.i, label %cleanup, label %lor.lhs.false.i, !dbg !506

lor.lhs.false.i:                                  ; preds = %if.end16
  %arrayidx4.i = getelementptr inbounds i8, ptr %p_pic, i64 72, !dbg !507
  %8 = load ptr, ptr %arrayidx4.i, align 8, !dbg !507
  %9 = load i32, ptr %width.i, align 8, !dbg !508
  %10 = load i32, ptr %height.i, align 4, !dbg !509
  %mul7.i = mul nsw i32 %10, %9, !dbg !510
  %div.i = sdiv i32 %mul7.i, 4, !dbg !511
  %conv8.i = sext i32 %div.i to i64, !dbg !512
  %11 = load ptr, ptr %handle, align 8, !dbg !513
  %call10.i = tail call i64 @fread(ptr noundef %8, i64 noundef %conv8.i, i64 noundef 1, ptr noundef %11), !dbg !514
  %cmp11.i = icmp eq i64 %call10.i, 0, !dbg !515
  br i1 %cmp11.i, label %cleanup, label %read_frame_internal.exit, !dbg !516

read_frame_internal.exit:                         ; preds = %lor.lhs.false.i
  %arrayidx15.i = getelementptr inbounds i8, ptr %p_pic, i64 80, !dbg !517
  %12 = load ptr, ptr %arrayidx15.i, align 8, !dbg !517
  %13 = load i32, ptr %width.i, align 8, !dbg !518
  %14 = load i32, ptr %height.i, align 4, !dbg !519
  %mul18.i = mul nsw i32 %14, %13, !dbg !520
  %div19.i = sdiv i32 %mul18.i, 4, !dbg !521
  %conv20.i = sext i32 %div19.i to i64, !dbg !522
  %15 = load ptr, ptr %handle, align 8, !dbg !523
  %call22.i = tail call i64 @fread(ptr noundef %12, i64 noundef %conv20.i, i64 noundef 1, ptr noundef %15), !dbg !524
  %cmp23.i.not = icmp eq i64 %call22.i, 0, !dbg !525
  br i1 %cmp23.i.not, label %cleanup, label %if.end20, !dbg !526

if.end20:                                         ; preds = %read_frame_internal.exit
  %add = add nsw i32 %i_frame, 1, !dbg !527
  store i32 %add, ptr %next_frame, align 8, !dbg !528
  br label %cleanup, !dbg !529

cleanup:                                          ; preds = %if.end16, %lor.lhs.false.i, %read_frame_internal.exit, %if.end20
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -1, %read_frame_internal.exit ], [ -1, %lor.lhs.false.i ], [ -1, %if.end16 ], !dbg !470
  ret i32 %retval.0, !dbg !530
}

declare void @x264_picture_clean(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @close_file(ptr noundef %handle) #2 !dbg !531 {
entry:
    #dbg_value(ptr %handle, !533, !DIExpression(), !535)
    #dbg_value(ptr %handle, !534, !DIExpression(), !535)
  %tobool.not = icmp eq ptr %handle, null, !dbg !536
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false, !dbg !538

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %handle, align 8, !dbg !539
  %tobool1.not = icmp eq ptr %0, null, !dbg !540
  br i1 %tobool1.not, label %cleanup, label %if.end, !dbg !541

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !542
  tail call void @free(ptr noundef nonnull %handle) #8, !dbg !543
  br label %cleanup, !dbg !544

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret i32 0, !dbg !545
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !546 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !550 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !555 noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !558 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !561 noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !564 noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !569 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !572 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!302, !303, !304, !305, !306, !307, !308}
!llvm.ident = !{!309}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "yuv_input", scope: !2, file: !3, line: 127, type: !34, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/input/yuv.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4e80518590cb4689aaf4976a13133997")
!4 = !{!5, !6, !7}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 45, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!11 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!12 = !{!0, !13, !19, !24, !29}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 48, elements: !17)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18}
!18 = !DISubrange(count: 6)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 400, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 50)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 16, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 2)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 24, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 3)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_t", file: !36, line: 63, baseType: !37)
!36 = !DIFile(filename: "x264_src/input/input.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f28c863d273681dfcaca9779e9fcbd53")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 54, size: 448, elements: !38)
!38 = !{!39, !74, !78, !289, !293, !297, !301}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !37, file: !36, line: 56, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!6, !43, !44, !47, !66}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !46, line: 30, baseType: !5)
!46 = !DIFile(filename: "x264_src/muxers.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "video_info_t", file: !36, line: 52, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 38, size: 384, elements: !50)
!50 = !{!51, !52, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "csp", scope: !49, file: !36, line: 40, baseType: !6, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "fps_num", scope: !49, file: !36, line: 41, baseType: !53, size: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 26, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 42, baseType: !55)
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fps_den", scope: !49, file: !36, line: 42, baseType: !53, size: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !49, file: !36, line: 43, baseType: !6, size: 32, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !49, file: !36, line: 44, baseType: !6, size: 32, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !49, file: !36, line: 45, baseType: !53, size: 32, offset: 160)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !49, file: !36, line: 46, baseType: !53, size: 32, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tff", scope: !49, file: !36, line: 47, baseType: !6, size: 32, offset: 224)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_num", scope: !49, file: !36, line: 48, baseType: !53, size: 32, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_den", scope: !49, file: !36, line: 49, baseType: !53, size: 32, offset: 288)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "vfr", scope: !49, file: !36, line: 50, baseType: !6, size: 32, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !49, file: !36, line: 51, baseType: !6, size: 32, offset: 352)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_opt_t", file: !36, line: 35, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 29, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !68, file: !36, line: 31, baseType: !43, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !68, file: !36, line: 32, baseType: !43, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "timebase", scope: !68, file: !36, line: 33, baseType: !43, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !68, file: !36, line: 34, baseType: !6, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_total", scope: !37, file: !36, line: 57, baseType: !75, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!6, !45}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "picture_alloc", scope: !37, file: !36, line: 58, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!6, !82, !6, !6, !6}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !84, line: 549, baseType: !85)
!84 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 513, size: 1088, elements: !86)
!86 = !{!87, !88, !89, !90, !91, !96, !97, !266, !279, !288}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !85, file: !84, line: 521, baseType: !6, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !85, file: !84, line: 523, baseType: !6, size: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !85, file: !84, line: 526, baseType: !6, size: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !85, file: !84, line: 529, baseType: !6, size: 32, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !85, file: !84, line: 531, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !93, line: 27, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !10, line: 44, baseType: !95)
!95 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !85, file: !84, line: 534, baseType: !92, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !85, file: !84, line: 541, baseType: !98, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !84, line: 376, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !84, line: 176, size: 5632, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !150, !151, !152, !153, !157, !158, !171, !172, !173, !174, !175, !204, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !100, file: !84, line: 179, baseType: !55, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !100, file: !84, line: 180, baseType: !6, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !100, file: !84, line: 181, baseType: !6, size: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !100, file: !84, line: 182, baseType: !6, size: 32, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !100, file: !84, line: 183, baseType: !6, size: 32, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !100, file: !84, line: 186, baseType: !6, size: 32, offset: 160)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !100, file: !84, line: 187, baseType: !6, size: 32, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !100, file: !84, line: 188, baseType: !6, size: 32, offset: 224)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !100, file: !84, line: 189, baseType: !6, size: 32, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !100, file: !84, line: 190, baseType: !6, size: 32, offset: 288)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !100, file: !84, line: 198, baseType: !6, size: 32, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !100, file: !84, line: 215, baseType: !114, size: 288, offset: 352)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !84, line: 200, size: 288, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !114, file: !84, line: 203, baseType: !6, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !114, file: !84, line: 204, baseType: !6, size: 32, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !114, file: !84, line: 206, baseType: !6, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !114, file: !84, line: 209, baseType: !6, size: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !114, file: !84, line: 210, baseType: !6, size: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !114, file: !84, line: 211, baseType: !6, size: 32, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !114, file: !84, line: 212, baseType: !6, size: 32, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !114, file: !84, line: 213, baseType: !6, size: 32, offset: 224)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !114, file: !84, line: 214, baseType: !6, size: 32, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !100, file: !84, line: 218, baseType: !6, size: 32, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !100, file: !84, line: 219, baseType: !6, size: 32, offset: 672)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !100, file: !84, line: 220, baseType: !6, size: 32, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !100, file: !84, line: 221, baseType: !6, size: 32, offset: 736)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !100, file: !84, line: 222, baseType: !6, size: 32, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !100, file: !84, line: 224, baseType: !6, size: 32, offset: 800)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !100, file: !84, line: 225, baseType: !6, size: 32, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !100, file: !84, line: 226, baseType: !6, size: 32, offset: 864)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !100, file: !84, line: 227, baseType: !6, size: 32, offset: 896)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !100, file: !84, line: 229, baseType: !6, size: 32, offset: 928)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !100, file: !84, line: 230, baseType: !6, size: 32, offset: 960)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !100, file: !84, line: 231, baseType: !6, size: 32, offset: 992)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !100, file: !84, line: 233, baseType: !6, size: 32, offset: 1024)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !100, file: !84, line: 234, baseType: !6, size: 32, offset: 1056)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !100, file: !84, line: 236, baseType: !6, size: 32, offset: 1088)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !100, file: !84, line: 237, baseType: !6, size: 32, offset: 1120)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !100, file: !84, line: 239, baseType: !6, size: 32, offset: 1152)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !100, file: !84, line: 240, baseType: !43, size: 64, offset: 1216)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !100, file: !84, line: 241, baseType: !144, size: 128, offset: 1280)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, elements: !148)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 38, baseType: !147)
!147 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!148 = !{!149}
!149 = !DISubrange(count: 16)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !100, file: !84, line: 242, baseType: !144, size: 128, offset: 1408)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !100, file: !84, line: 243, baseType: !144, size: 128, offset: 1536)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !100, file: !84, line: 244, baseType: !144, size: 128, offset: 1664)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !100, file: !84, line: 245, baseType: !154, size: 512, offset: 1792)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 512, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !100, file: !84, line: 246, baseType: !154, size: 512, offset: 2304)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !100, file: !84, line: 249, baseType: !159, size: 64, offset: 2816)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !5, !6, !162, !164}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !166)
!166 = !{!167, !168, !169, !170}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !165, file: !3, line: 127, baseType: !55, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !165, file: !3, line: 127, baseType: !55, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !165, file: !3, line: 127, baseType: !5, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !165, file: !3, line: 127, baseType: !5, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !100, file: !84, line: 250, baseType: !5, size: 64, offset: 2880)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !100, file: !84, line: 251, baseType: !6, size: 32, offset: 2944)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !100, file: !84, line: 252, baseType: !6, size: 32, offset: 2976)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !100, file: !84, line: 253, baseType: !43, size: 64, offset: 3008)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !100, file: !84, line: 287, baseType: !176, size: 800, offset: 3072)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !84, line: 256, size: 800, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !198, !199, !200, !202, !203}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !176, file: !84, line: 258, baseType: !55, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !176, file: !84, line: 259, baseType: !55, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !176, file: !84, line: 261, baseType: !6, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !176, file: !84, line: 262, baseType: !6, size: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !176, file: !84, line: 263, baseType: !6, size: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !176, file: !84, line: 264, baseType: !6, size: 32, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !176, file: !84, line: 265, baseType: !6, size: 32, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !176, file: !84, line: 267, baseType: !6, size: 32, offset: 224)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !176, file: !84, line: 268, baseType: !6, size: 32, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !176, file: !84, line: 269, baseType: !6, size: 32, offset: 288)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !176, file: !84, line: 270, baseType: !6, size: 32, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !176, file: !84, line: 271, baseType: !6, size: 32, offset: 352)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !176, file: !84, line: 272, baseType: !6, size: 32, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !176, file: !84, line: 273, baseType: !6, size: 32, offset: 416)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !176, file: !84, line: 274, baseType: !6, size: 32, offset: 448)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !176, file: !84, line: 275, baseType: !6, size: 32, offset: 480)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !176, file: !84, line: 276, baseType: !6, size: 32, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !176, file: !84, line: 277, baseType: !6, size: 32, offset: 544)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !176, file: !84, line: 278, baseType: !197, size: 32, offset: 576)
!197 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !176, file: !84, line: 279, baseType: !197, size: 32, offset: 608)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !176, file: !84, line: 280, baseType: !6, size: 32, offset: 640)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !176, file: !84, line: 283, baseType: !201, size: 64, offset: 672)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !27)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !176, file: !84, line: 285, baseType: !6, size: 32, offset: 736)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !176, file: !84, line: 286, baseType: !6, size: 32, offset: 768)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !100, file: !84, line: 327, baseType: !205, size: 1152, offset: 3904)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !84, line: 290, size: 1152, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !244, !245}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !205, file: !84, line: 292, baseType: !6, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !205, file: !84, line: 294, baseType: !6, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !205, file: !84, line: 295, baseType: !6, size: 32, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !205, file: !84, line: 296, baseType: !6, size: 32, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !205, file: !84, line: 297, baseType: !6, size: 32, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !205, file: !84, line: 299, baseType: !6, size: 32, offset: 160)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !205, file: !84, line: 300, baseType: !197, size: 32, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !205, file: !84, line: 301, baseType: !197, size: 32, offset: 224)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !205, file: !84, line: 302, baseType: !197, size: 32, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !205, file: !84, line: 303, baseType: !6, size: 32, offset: 288)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !205, file: !84, line: 304, baseType: !6, size: 32, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !205, file: !84, line: 305, baseType: !197, size: 32, offset: 352)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !205, file: !84, line: 306, baseType: !197, size: 32, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !205, file: !84, line: 307, baseType: !197, size: 32, offset: 416)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !205, file: !84, line: 309, baseType: !6, size: 32, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !205, file: !84, line: 310, baseType: !197, size: 32, offset: 480)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !205, file: !84, line: 311, baseType: !6, size: 32, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !205, file: !84, line: 312, baseType: !6, size: 32, offset: 544)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !205, file: !84, line: 315, baseType: !6, size: 32, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !205, file: !84, line: 316, baseType: !43, size: 64, offset: 640)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !205, file: !84, line: 317, baseType: !6, size: 32, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !205, file: !84, line: 318, baseType: !43, size: 64, offset: 768)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !205, file: !84, line: 321, baseType: !197, size: 32, offset: 832)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !205, file: !84, line: 322, baseType: !197, size: 32, offset: 864)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !205, file: !84, line: 323, baseType: !197, size: 32, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !205, file: !84, line: 324, baseType: !233, size: 64, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !84, line: 174, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 167, size: 256, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !235, file: !84, line: 169, baseType: !6, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !235, file: !84, line: 169, baseType: !6, size: 32, offset: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !235, file: !84, line: 170, baseType: !6, size: 32, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !235, file: !84, line: 171, baseType: !6, size: 32, offset: 96)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !235, file: !84, line: 172, baseType: !197, size: 32, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !235, file: !84, line: 173, baseType: !243, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !205, file: !84, line: 325, baseType: !6, size: 32, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !205, file: !84, line: 326, baseType: !43, size: 64, offset: 1088)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !100, file: !84, line: 330, baseType: !6, size: 32, offset: 5056)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !100, file: !84, line: 331, baseType: !6, size: 32, offset: 5088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !100, file: !84, line: 332, baseType: !6, size: 32, offset: 5120)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !100, file: !84, line: 334, baseType: !6, size: 32, offset: 5152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !100, file: !84, line: 335, baseType: !6, size: 32, offset: 5184)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !100, file: !84, line: 336, baseType: !53, size: 32, offset: 5216)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !100, file: !84, line: 337, baseType: !53, size: 32, offset: 5248)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !100, file: !84, line: 338, baseType: !53, size: 32, offset: 5280)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !100, file: !84, line: 339, baseType: !53, size: 32, offset: 5312)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !100, file: !84, line: 340, baseType: !6, size: 32, offset: 5344)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !100, file: !84, line: 344, baseType: !6, size: 32, offset: 5376)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !100, file: !84, line: 356, baseType: !6, size: 32, offset: 5408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !100, file: !84, line: 364, baseType: !6, size: 32, offset: 5440)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !100, file: !84, line: 367, baseType: !6, size: 32, offset: 5472)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !100, file: !84, line: 368, baseType: !6, size: 32, offset: 5504)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !100, file: !84, line: 369, baseType: !6, size: 32, offset: 5536)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !100, file: !84, line: 375, baseType: !263, size: 64, offset: 5568)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !5}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !85, file: !84, line: 543, baseType: !267, size: 448, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !84, line: 511, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 505, size: 448, elements: !269)
!269 = !{!270, !271, !272, !276}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !268, file: !84, line: 507, baseType: !6, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !268, file: !84, line: 508, baseType: !6, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !268, file: !84, line: 509, baseType: !273, size: 128, offset: 64)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 4)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !268, file: !84, line: 510, baseType: !277, size: 256, offset: 192)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !274)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !85, file: !84, line: 545, baseType: !280, size: 256, offset: 768)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !84, line: 503, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 496, size: 256, elements: !282)
!282 = !{!283, !285, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !281, file: !84, line: 498, baseType: !284, size: 64)
!284 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !281, file: !84, line: 499, baseType: !284, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !281, file: !84, line: 500, baseType: !284, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !281, file: !84, line: 502, baseType: !284, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !85, file: !84, line: 548, baseType: !5, size: 64, offset: 1024)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "read_frame", scope: !37, file: !36, line: 59, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!6, !82, !45, !6}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "release_frame", scope: !37, file: !36, line: 60, baseType: !294, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!6, !82, !45}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "picture_clean", scope: !37, file: !36, line: 61, baseType: !298, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !82}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !37, file: !36, line: 62, baseType: !75, size: 64, offset: 384)
!302 = !{i32 7, !"Dwarf Version", i32 5}
!303 = !{i32 2, !"Debug Info Version", i32 3}
!304 = !{i32 1, !"wchar_size", i32 4}
!305 = !{i32 8, !"PIC Level", i32 2}
!306 = !{i32 7, !"PIE Level", i32 2}
!307 = !{i32 7, !"uwtable", i32 2}
!308 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!309 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!310 = distinct !DISubprogram(name: "open_file", scope: !3, file: !3, line: 33, type: !41, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!311 = !{!312, !313, !314, !315, !316, !381}
!312 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !310, file: !3, line: 33, type: !43)
!313 = !DILocalVariable(name: "p_handle", arg: 2, scope: !310, file: !3, line: 33, type: !44)
!314 = !DILocalVariable(name: "info", arg: 3, scope: !310, file: !3, line: 33, type: !47)
!315 = !DILocalVariable(name: "opt", arg: 4, scope: !310, file: !3, line: 33, type: !66)
!316 = !DILocalVariable(name: "h", scope: !310, file: !3, line: 35, type: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "yuv_hnd_t", file: !3, line: 31, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 26, size: 192, elements: !320)
!320 = !{!321, !378, !379, !380}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "fh", scope: !319, file: !3, line: 28, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !325)
!324 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !327)
!326 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !343, !345, !346, !347, !349, !351, !353, !357, !360, !362, !365, !368, !369, !370, !373, !374}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !325, file: !326, line: 51, baseType: !6, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !325, file: !326, line: 54, baseType: !43, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !325, file: !326, line: 55, baseType: !43, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !325, file: !326, line: 56, baseType: !43, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !325, file: !326, line: 57, baseType: !43, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !325, file: !326, line: 58, baseType: !43, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !325, file: !326, line: 59, baseType: !43, size: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !325, file: !326, line: 60, baseType: !43, size: 64, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !325, file: !326, line: 61, baseType: !43, size: 64, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !325, file: !326, line: 64, baseType: !43, size: 64, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !325, file: !326, line: 65, baseType: !43, size: 64, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !325, file: !326, line: 66, baseType: !43, size: 64, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !325, file: !326, line: 68, baseType: !341, size: 64, offset: 768)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !326, line: 36, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !325, file: !326, line: 70, baseType: !344, size: 64, offset: 832)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !325, file: !326, line: 72, baseType: !6, size: 32, offset: 896)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !325, file: !326, line: 73, baseType: !6, size: 32, offset: 928)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !325, file: !326, line: 74, baseType: !348, size: 64, offset: 960)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !10, line: 152, baseType: !95)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !325, file: !326, line: 77, baseType: !350, size: 16, offset: 1024)
!350 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !325, file: !326, line: 78, baseType: !352, size: 8, offset: 1040)
!352 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !325, file: !326, line: 79, baseType: !354, size: 8, offset: 1048)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 1)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !325, file: !326, line: 81, baseType: !358, size: 64, offset: 1088)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !326, line: 43, baseType: null)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !325, file: !326, line: 89, baseType: !361, size: 64, offset: 1152)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !10, line: 153, baseType: !95)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !325, file: !326, line: 91, baseType: !363, size: 64, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !326, line: 37, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !325, file: !326, line: 92, baseType: !366, size: 64, offset: 1280)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !326, line: 38, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !325, file: !326, line: 93, baseType: !344, size: 64, offset: 1344)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !325, file: !326, line: 94, baseType: !5, size: 64, offset: 1408)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !325, file: !326, line: 95, baseType: !371, size: 64, offset: 1472)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !372, line: 18, baseType: !11)
!372 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !325, file: !326, line: 96, baseType: !6, size: 32, offset: 1536)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !325, file: !326, line: 98, baseType: !375, size: 160, offset: 1568)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 160, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 20)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !319, file: !3, line: 29, baseType: !6, size: 32, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !319, file: !3, line: 29, baseType: !6, size: 32, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next_frame", scope: !319, file: !3, line: 30, baseType: !6, size: 32, offset: 128)
!381 = !DILocalVariable(name: "p", scope: !382, file: !3, line: 42, type: !43)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 42, column: 9)
!383 = distinct !DILexicalBlock(scope: !384, file: !3, line: 40, column: 5)
!384 = distinct !DILexicalBlock(scope: !310, file: !3, line: 39, column: 9)
!385 = !DILocation(line: 0, scope: !310)
!386 = !DILocation(line: 35, column: 20, scope: !310)
!387 = !DILocation(line: 36, column: 10, scope: !388)
!388 = distinct !DILexicalBlock(scope: !310, file: !3, line: 36, column: 9)
!389 = !DILocation(line: 36, column: 9, scope: !310)
!390 = !DILocation(line: 39, column: 15, scope: !384)
!391 = !DILocation(line: 39, column: 10, scope: !384)
!392 = !DILocation(line: 0, scope: !384)
!393 = !DILocation(line: 39, column: 9, scope: !310)
!394 = !DILocation(line: 0, scope: !382)
!395 = !DILocation(line: 42, column: 38, scope: !396)
!396 = distinct !DILexicalBlock(scope: !382, file: !3, line: 42, column: 9)
!397 = !DILocation(line: 42, column: 9, scope: !382)
!398 = !DILocation(line: 43, column: 27, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !3, line: 43, column: 17)
!400 = !DILocation(line: 43, column: 43, scope: !399)
!401 = !DILocation(line: 43, column: 93, scope: !399)
!402 = !DILocation(line: 43, column: 17, scope: !396)
!403 = !DILocation(line: 42, column: 43, scope: !396)
!404 = distinct !{!404, !397, !405}
!405 = !DILocation(line: 44, column: 17, scope: !382)
!406 = !DILocation(line: 47, column: 9, scope: !384)
!407 = !DILocation(line: 48, column: 16, scope: !408)
!408 = distinct !DILexicalBlock(scope: !310, file: !3, line: 48, column: 9)
!409 = !DILocation(line: 48, column: 10, scope: !408)
!410 = !DILocation(line: 48, column: 22, scope: !408)
!411 = !DILocation(line: 48, column: 32, scope: !408)
!412 = !DILocation(line: 48, column: 26, scope: !408)
!413 = !DILocation(line: 48, column: 9, scope: !310)
!414 = !DILocation(line: 50, column: 18, scope: !415)
!415 = distinct !DILexicalBlock(scope: !408, file: !3, line: 49, column: 5)
!416 = !DILocation(line: 50, column: 9, scope: !415)
!417 = !DILocation(line: 51, column: 9, scope: !415)
!418 = !DILocation(line: 54, column: 8, scope: !310)
!419 = !DILocation(line: 54, column: 19, scope: !310)
!420 = !DILocation(line: 55, column: 11, scope: !310)
!421 = !DILocation(line: 55, column: 19, scope: !310)
!422 = !DILocation(line: 56, column: 8, scope: !310)
!423 = !DILocation(line: 56, column: 19, scope: !310)
!424 = !DILocation(line: 57, column: 8, scope: !310)
!425 = !DILocation(line: 57, column: 19, scope: !310)
!426 = !DILocation(line: 59, column: 10, scope: !427)
!427 = distinct !DILexicalBlock(scope: !310, file: !3, line: 59, column: 9)
!428 = !DILocation(line: 59, column: 9, scope: !310)
!429 = !DILocation(line: 60, column: 17, scope: !427)
!430 = !DILocation(line: 60, column: 9, scope: !427)
!431 = !DILocation(line: 62, column: 17, scope: !427)
!432 = !DILocation(line: 0, scope: !427)
!433 = !DILocation(line: 63, column: 15, scope: !434)
!434 = distinct !DILexicalBlock(scope: !310, file: !3, line: 63, column: 9)
!435 = !DILocation(line: 63, column: 9, scope: !310)
!436 = !DILocation(line: 66, column: 15, scope: !310)
!437 = !DILocation(line: 67, column: 5, scope: !310)
!438 = !DILocation(line: 68, column: 1, scope: !310)
!439 = distinct !DISubprogram(name: "get_frame_total", scope: !3, file: !3, line: 70, type: !76, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !440)
!440 = !{!441, !442, !443, !444}
!441 = !DILocalVariable(name: "handle", arg: 1, scope: !439, file: !3, line: 70, type: !45)
!442 = !DILocalVariable(name: "h", scope: !439, file: !3, line: 72, type: !317)
!443 = !DILocalVariable(name: "i_frame_total", scope: !439, file: !3, line: 73, type: !6)
!444 = !DILocalVariable(name: "i_size", scope: !445, file: !3, line: 78, type: !7)
!445 = distinct !DILexicalBlock(scope: !446, file: !3, line: 76, column: 5)
!446 = distinct !DILexicalBlock(scope: !439, file: !3, line: 75, column: 9)
!447 = !DILocation(line: 0, scope: !439)
!448 = !DILocation(line: 77, column: 19, scope: !445)
!449 = !DILocation(line: 77, column: 9, scope: !445)
!450 = !DILocation(line: 78, column: 37, scope: !445)
!451 = !DILocation(line: 78, column: 27, scope: !445)
!452 = !DILocation(line: 0, scope: !445)
!453 = !DILocation(line: 79, column: 19, scope: !445)
!454 = !DILocation(line: 79, column: 9, scope: !445)
!455 = !DILocation(line: 80, column: 45, scope: !445)
!456 = !DILocation(line: 80, column: 56, scope: !445)
!457 = !DILocation(line: 80, column: 51, scope: !445)
!458 = !DILocation(line: 80, column: 63, scope: !445)
!459 = !DILocation(line: 80, column: 67, scope: !445)
!460 = !DILocation(line: 80, column: 40, scope: !445)
!461 = !DILocation(line: 80, column: 38, scope: !445)
!462 = !DILocation(line: 80, column: 25, scope: !445)
!463 = !DILocation(line: 83, column: 5, scope: !439)
!464 = distinct !DISubprogram(name: "read_frame", scope: !3, file: !3, line: 93, type: !291, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !465)
!465 = !{!466, !467, !468, !469}
!466 = !DILocalVariable(name: "p_pic", arg: 1, scope: !464, file: !3, line: 93, type: !82)
!467 = !DILocalVariable(name: "handle", arg: 2, scope: !464, file: !3, line: 93, type: !45)
!468 = !DILocalVariable(name: "i_frame", arg: 3, scope: !464, file: !3, line: 93, type: !6)
!469 = !DILocalVariable(name: "h", scope: !464, file: !3, line: 95, type: !317)
!470 = !DILocation(line: 0, scope: !464)
!471 = !DILocation(line: 97, column: 22, scope: !472)
!472 = distinct !DILexicalBlock(scope: !464, file: !3, line: 97, column: 9)
!473 = !DILocation(line: 97, column: 17, scope: !472)
!474 = !DILocation(line: 97, column: 9, scope: !464)
!475 = !DILocation(line: 100, column: 23, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 99, column: 13)
!477 = distinct !DILexicalBlock(scope: !472, file: !3, line: 98, column: 5)
!478 = !DILocation(line: 100, column: 27, scope: !476)
!479 = !DILocation(line: 100, column: 50, scope: !476)
!480 = !DILocation(line: 100, column: 47, scope: !476)
!481 = !DILocation(line: 100, column: 61, scope: !476)
!482 = !DILocation(line: 100, column: 58, scope: !476)
!483 = !DILocation(line: 100, column: 45, scope: !476)
!484 = !DILocation(line: 100, column: 56, scope: !476)
!485 = !DILocation(line: 100, column: 68, scope: !476)
!486 = !DILocation(line: 100, column: 72, scope: !476)
!487 = !DILocation(line: 100, column: 13, scope: !476)
!488 = !DILocalVariable(name: "p_pic", arg: 1, scope: !489, file: !3, line: 86, type: !82)
!489 = distinct !DISubprogram(name: "read_frame_internal", scope: !3, file: !3, line: 86, type: !490, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !492)
!490 = !DISubroutineType(types: !491)
!491 = !{!6, !82, !317}
!492 = !{!488, !493}
!493 = !DILocalVariable(name: "h", arg: 2, scope: !489, file: !3, line: 86, type: !317)
!494 = !DILocation(line: 0, scope: !489, inlinedAt: !495)
!495 = distinct !DILocation(line: 110, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !464, file: !3, line: 110, column: 9)
!497 = !DILocation(line: 88, column: 30, scope: !489, inlinedAt: !495)
!498 = !DILocation(line: 88, column: 19, scope: !489, inlinedAt: !495)
!499 = !DILocation(line: 88, column: 43, scope: !489, inlinedAt: !495)
!500 = !DILocation(line: 88, column: 54, scope: !489, inlinedAt: !495)
!501 = !DILocation(line: 88, column: 49, scope: !489, inlinedAt: !495)
!502 = !DILocation(line: 88, column: 40, scope: !489, inlinedAt: !495)
!503 = !DILocation(line: 88, column: 68, scope: !489, inlinedAt: !495)
!504 = !DILocation(line: 88, column: 12, scope: !489, inlinedAt: !495)
!505 = !DILocation(line: 88, column: 73, scope: !489, inlinedAt: !495)
!506 = !DILocation(line: 89, column: 9, scope: !489, inlinedAt: !495)
!507 = !DILocation(line: 89, column: 19, scope: !489, inlinedAt: !495)
!508 = !DILocation(line: 89, column: 43, scope: !489, inlinedAt: !495)
!509 = !DILocation(line: 89, column: 54, scope: !489, inlinedAt: !495)
!510 = !DILocation(line: 89, column: 49, scope: !489, inlinedAt: !495)
!511 = !DILocation(line: 89, column: 61, scope: !489, inlinedAt: !495)
!512 = !DILocation(line: 89, column: 40, scope: !489, inlinedAt: !495)
!513 = !DILocation(line: 89, column: 72, scope: !489, inlinedAt: !495)
!514 = !DILocation(line: 89, column: 12, scope: !489, inlinedAt: !495)
!515 = !DILocation(line: 89, column: 77, scope: !489, inlinedAt: !495)
!516 = !DILocation(line: 90, column: 9, scope: !489, inlinedAt: !495)
!517 = !DILocation(line: 90, column: 19, scope: !489, inlinedAt: !495)
!518 = !DILocation(line: 90, column: 43, scope: !489, inlinedAt: !495)
!519 = !DILocation(line: 90, column: 54, scope: !489, inlinedAt: !495)
!520 = !DILocation(line: 90, column: 49, scope: !489, inlinedAt: !495)
!521 = !DILocation(line: 90, column: 61, scope: !489, inlinedAt: !495)
!522 = !DILocation(line: 90, column: 40, scope: !489, inlinedAt: !495)
!523 = !DILocation(line: 90, column: 72, scope: !489, inlinedAt: !495)
!524 = !DILocation(line: 90, column: 12, scope: !489, inlinedAt: !495)
!525 = !DILocation(line: 90, column: 77, scope: !489, inlinedAt: !495)
!526 = !DILocation(line: 110, column: 9, scope: !464)
!527 = !DILocation(line: 113, column: 28, scope: !464)
!528 = !DILocation(line: 113, column: 19, scope: !464)
!529 = !DILocation(line: 114, column: 5, scope: !464)
!530 = !DILocation(line: 115, column: 1, scope: !464)
!531 = distinct !DISubprogram(name: "close_file", scope: !3, file: !3, line: 117, type: !76, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !532)
!532 = !{!533, !534}
!533 = !DILocalVariable(name: "handle", arg: 1, scope: !531, file: !3, line: 117, type: !45)
!534 = !DILocalVariable(name: "h", scope: !531, file: !3, line: 119, type: !317)
!535 = !DILocation(line: 0, scope: !531)
!536 = !DILocation(line: 120, column: 10, scope: !537)
!537 = distinct !DILexicalBlock(scope: !531, file: !3, line: 120, column: 9)
!538 = !DILocation(line: 120, column: 12, scope: !537)
!539 = !DILocation(line: 120, column: 19, scope: !537)
!540 = !DILocation(line: 120, column: 16, scope: !537)
!541 = !DILocation(line: 120, column: 9, scope: !531)
!542 = !DILocation(line: 122, column: 5, scope: !531)
!543 = !DILocation(line: 123, column: 5, scope: !531)
!544 = !DILocation(line: 124, column: 5, scope: !531)
!545 = !DILocation(line: 125, column: 1, scope: !531)
!546 = !DISubprogram(name: "malloc", scope: !547, file: !547, line: 540, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!547 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!548 = !DISubroutineType(types: !549)
!549 = !{!5, !371}
!550 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !551, file: !551, line: 439, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!551 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!552 = !DISubroutineType(types: !553)
!553 = !{!6, !554, !554, null}
!554 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !162)
!555 = !DISubprogram(name: "fopen", linkageName: "fopen64", scope: !551, file: !551, line: 270, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DISubroutineType(types: !557)
!557 = !{!322, !554, !554}
!558 = !DISubprogram(name: "fseek", scope: !551, file: !551, line: 713, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!559 = !DISubroutineType(types: !560)
!560 = !{!6, !322, !95, !6}
!561 = !DISubprogram(name: "ftell", scope: !551, file: !551, line: 718, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DISubroutineType(types: !563)
!563 = !{!95, !322}
!564 = !DISubprogram(name: "fread", scope: !551, file: !551, line: 675, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DISubroutineType(types: !566)
!566 = !{!11, !567, !371, !371, !568}
!567 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!568 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !322)
!569 = !DISubprogram(name: "fclose", scope: !551, file: !551, line: 178, type: !570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = !DISubroutineType(types: !571)
!571 = !{!6, !322}
!572 = !DISubprogram(name: "free", scope: !547, file: !547, line: 555, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
