; ModuleID = 'x264_src/input/thread.c'
source_filename = "x264_src/input/thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }

@thread_input = dso_local local_unnamed_addr global %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr null, ptr @read_frame, ptr @release_frame, ptr null, ptr @close_file }, align 8, !dbg !0
@input = external local_unnamed_addr global %struct.cli_input_t, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"x264 [error]: malloc failed\0A\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @open_file(ptr nocapture readnone %psz_filename, ptr nocapture noundef %p_handle, ptr nocapture noundef readonly %info, ptr nocapture readnone %opt) #0 !dbg !293 {
entry:
    #dbg_value(ptr poison, !295, !DIExpression(), !319)
    #dbg_value(ptr %p_handle, !296, !DIExpression(), !319)
    #dbg_value(ptr %info, !297, !DIExpression(), !319)
    #dbg_value(ptr poison, !298, !DIExpression(), !319)
  %call = tail call noalias dereferenceable_or_null(224) ptr @malloc(i64 noundef 224) #7, !dbg !320
    #dbg_value(ptr %call, !299, !DIExpression(), !319)
  %tobool.not = icmp eq ptr %call, null, !dbg !321
  br i1 %tobool.not, label %if.then, label %lor.lhs.false, !dbg !323

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 16), align 8, !dbg !324
  %pic = getelementptr inbounds i8, ptr %call, i64 64, !dbg !325
  %1 = load i32, ptr %info, align 4, !dbg !326
  %width = getelementptr inbounds i8, ptr %info, i64 44, !dbg !327
  %2 = load i32, ptr %width, align 4, !dbg !327
  %height = getelementptr inbounds i8, ptr %info, i64 12, !dbg !328
  %3 = load i32, ptr %height, align 4, !dbg !328
  %call1 = tail call i32 %0(ptr noundef nonnull %pic, i32 noundef %1, i32 noundef %2, i32 noundef %3) #8, !dbg !329
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !329
  br i1 %tobool2.not, label %if.end, label %if.then, !dbg !330

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr @stderr, align 8, !dbg !331
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %4) #9, !dbg !333
  br label %cleanup, !dbg !334

if.end:                                           ; preds = %lor.lhs.false
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %call, ptr noundef nonnull align 8 dereferenceable(56) @input, i64 56, i1 false), !dbg !335
  %6 = load ptr, ptr %p_handle, align 8, !dbg !336
  %p_handle4 = getelementptr inbounds i8, ptr %call, i64 56, !dbg !337
  store ptr %6, ptr %p_handle4, align 8, !dbg !338
  %in_progress = getelementptr inbounds i8, ptr %call, i64 212, !dbg !339
  store i32 0, ptr %in_progress, align 4, !dbg !340
  %next_frame = getelementptr inbounds i8, ptr %call, i64 204, !dbg !341
  store i32 -1, ptr %next_frame, align 4, !dbg !342
  %call5 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #7, !dbg !343
  %next_args = getelementptr inbounds i8, ptr %call, i64 216, !dbg !344
  store ptr %call5, ptr %next_args, align 8, !dbg !345
  %tobool7.not = icmp eq ptr %call5, null, !dbg !346
  br i1 %tobool7.not, label %cleanup, label %if.end9, !dbg !348

if.end9:                                          ; preds = %if.end
  store ptr %call, ptr %call5, align 8, !dbg !349
  %status = getelementptr inbounds i8, ptr %call5, i64 20, !dbg !350
  store i32 0, ptr %status, align 4, !dbg !351
  %7 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 8), align 8, !dbg !352
  %call14 = tail call i32 %7(ptr noundef %6) #8, !dbg !353
  %frame_total = getelementptr inbounds i8, ptr %call, i64 208, !dbg !354
  store i32 %call14, ptr %frame_total, align 8, !dbg !355
  %picture_alloc = getelementptr inbounds i8, ptr %call, i64 16, !dbg !356
  %8 = load ptr, ptr %picture_alloc, align 8, !dbg !356
  store ptr %8, ptr getelementptr inbounds (i8, ptr @thread_input, i64 16), align 8, !dbg !357
  %picture_clean = getelementptr inbounds i8, ptr %call, i64 40, !dbg !358
  %9 = load ptr, ptr %picture_clean, align 8, !dbg !358
  store ptr %9, ptr getelementptr inbounds (i8, ptr @thread_input, i64 40), align 8, !dbg !359
  store ptr %call, ptr %p_handle, align 8, !dbg !360
  br label %cleanup, !dbg !361

cleanup:                                          ; preds = %if.end, %if.end9, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end9 ], [ -1, %if.end ], !dbg !319
  ret i32 %retval.0, !dbg !362
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %handle) #1 !dbg !363 {
entry:
    #dbg_value(ptr %handle, !365, !DIExpression(), !367)
    #dbg_value(ptr %handle, !366, !DIExpression(), !367)
  %frame_total = getelementptr inbounds i8, ptr %handle, i64 208, !dbg !368
  %0 = load i32, ptr %frame_total, align 8, !dbg !368
  ret i32 %0, !dbg !369
}

; Function Attrs: nounwind uwtable
define internal i32 @read_frame(ptr noundef %p_pic, ptr noundef %handle, i32 noundef %i_frame) #0 !dbg !370 {
entry:
  %t = alloca %struct.x264_picture_t, align 8, !DIAssignID !380
    #dbg_assign(i1 undef, !377, !DIExpression(), !380, ptr %t, !DIExpression(), !381)
    #dbg_value(ptr %p_pic, !372, !DIExpression(), !382)
    #dbg_value(ptr %handle, !373, !DIExpression(), !382)
    #dbg_value(i32 %i_frame, !374, !DIExpression(), !382)
    #dbg_value(ptr %handle, !375, !DIExpression(), !382)
    #dbg_value(i32 0, !376, !DIExpression(), !382)
  %next_frame = getelementptr inbounds i8, ptr %handle, i64 204, !dbg !383
  %0 = load i32, ptr %next_frame, align 4, !dbg !383
  %cmp = icmp sgt i32 %0, -1, !dbg !385
  br i1 %cmp, label %if.then, label %if.end, !dbg !386

if.then:                                          ; preds = %entry
  %next_args = getelementptr inbounds i8, ptr %handle, i64 216, !dbg !387
  %1 = load ptr, ptr %next_args, align 8, !dbg !387
  %status = getelementptr inbounds i8, ptr %1, i64 20, !dbg !389
  %2 = load i32, ptr %status, align 4, !dbg !389
    #dbg_value(i32 %2, !376, !DIExpression(), !382)
  %in_progress = getelementptr inbounds i8, ptr %handle, i64 212, !dbg !390
  store i32 0, ptr %in_progress, align 4, !dbg !391
  br label %if.end, !dbg !392

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %2, %if.then ], [ 0, %entry ], !dbg !382
    #dbg_value(i32 %ret.0, !376, !DIExpression(), !382)
  %cmp2 = icmp eq i32 %0, %i_frame, !dbg !393
  br i1 %cmp2, label %do.body, label %if.else, !dbg !394

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %t), !dbg !395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %t, ptr noundef nonnull align 8 dereferenceable(136) %p_pic, i64 136, i1 false), !dbg !395, !DIAssignID !396
    #dbg_assign(i1 undef, !377, !DIExpression(), !396, ptr %t, !DIExpression(), !381)
  %pic = getelementptr inbounds i8, ptr %handle, i64 64, !dbg !395
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %p_pic, ptr noundef nonnull align 8 dereferenceable(136) %pic, i64 136, i1 false), !dbg !395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %pic, ptr noundef nonnull align 8 dereferenceable(136) %t, i64 136, i1 false), !dbg !395
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %t), !dbg !397
  br label %if.end6, !dbg !395

if.else:                                          ; preds = %if.end
  %read_frame = getelementptr inbounds i8, ptr %handle, i64 24, !dbg !398
  %3 = load ptr, ptr %read_frame, align 8, !dbg !398
  %p_handle = getelementptr inbounds i8, ptr %handle, i64 56, !dbg !399
  %4 = load ptr, ptr %p_handle, align 8, !dbg !399
  %call = tail call i32 %3(ptr noundef %p_pic, ptr noundef %4, i32 noundef %i_frame) #8, !dbg !400
  %or5 = or i32 %call, %ret.0, !dbg !401
    #dbg_value(i32 %or5, !376, !DIExpression(), !382)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.body
  %ret.1 = phi i32 [ %ret.0, %do.body ], [ %or5, %if.else ], !dbg !382
    #dbg_value(i32 %ret.1, !376, !DIExpression(), !382)
  %frame_total = getelementptr inbounds i8, ptr %handle, i64 208, !dbg !402
  %5 = load i32, ptr %frame_total, align 8, !dbg !402
  %tobool.not = icmp eq i32 %5, 0, !dbg !404
  %add = add nsw i32 %i_frame, 1
  %cmp8 = icmp slt i32 %add, %5
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp8, !dbg !405
  br i1 %or.cond, label %if.then9, label %if.else18, !dbg !405

if.then9:                                         ; preds = %if.end6
  %next_args11 = getelementptr inbounds i8, ptr %handle, i64 216, !dbg !406
  %6 = load ptr, ptr %next_args11, align 8, !dbg !406
  %i_frame12 = getelementptr inbounds i8, ptr %6, i64 16, !dbg !408
  store i32 %add, ptr %i_frame12, align 8, !dbg !409
  store i32 %add, ptr %next_frame, align 4, !dbg !410
  %pic14 = getelementptr inbounds i8, ptr %handle, i64 64, !dbg !411
  %7 = load ptr, ptr %next_args11, align 8, !dbg !412
  %pic16 = getelementptr inbounds i8, ptr %7, i64 8, !dbg !413
  store ptr %pic14, ptr %pic16, align 8, !dbg !414
  %in_progress17 = getelementptr inbounds i8, ptr %handle, i64 212, !dbg !415
  store i32 1, ptr %in_progress17, align 4, !dbg !416
  br label %if.end20, !dbg !417

if.else18:                                        ; preds = %if.end6
  store i32 -1, ptr %next_frame, align 4, !dbg !418
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then9
  ret i32 %ret.1, !dbg !419
}

; Function Attrs: nounwind uwtable
define internal i32 @release_frame(ptr noundef %pic, ptr nocapture noundef readonly %handle) #0 !dbg !420 {
entry:
    #dbg_value(ptr %pic, !422, !DIExpression(), !425)
    #dbg_value(ptr %handle, !423, !DIExpression(), !425)
    #dbg_value(ptr %handle, !424, !DIExpression(), !425)
  %release_frame = getelementptr inbounds i8, ptr %handle, i64 32, !dbg !426
  %0 = load ptr, ptr %release_frame, align 8, !dbg !426
  %tobool.not = icmp eq ptr %0, null, !dbg !428
  br i1 %tobool.not, label %cleanup, label %if.then, !dbg !429

if.then:                                          ; preds = %entry
  %p_handle = getelementptr inbounds i8, ptr %handle, i64 56, !dbg !430
  %1 = load ptr, ptr %p_handle, align 8, !dbg !430
  %call = tail call i32 %0(ptr noundef %pic, ptr noundef %1) #8, !dbg !431
  br label %cleanup, !dbg !432

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ], !dbg !425
  ret i32 %retval.0, !dbg !433
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @close_file(ptr noundef %handle) #0 !dbg !434 {
entry:
    #dbg_value(ptr %handle, !436, !DIExpression(), !438)
    #dbg_value(ptr %handle, !437, !DIExpression(), !438)
  %close_file = getelementptr inbounds i8, ptr %handle, i64 48, !dbg !439
  %0 = load ptr, ptr %close_file, align 8, !dbg !439
  %p_handle = getelementptr inbounds i8, ptr %handle, i64 56, !dbg !440
  %1 = load ptr, ptr %p_handle, align 8, !dbg !440
  %call = tail call i32 %0(ptr noundef %1) #8, !dbg !441
  %picture_clean = getelementptr inbounds i8, ptr %handle, i64 40, !dbg !442
  %2 = load ptr, ptr %picture_clean, align 8, !dbg !442
  %pic = getelementptr inbounds i8, ptr %handle, i64 64, !dbg !443
  tail call void %2(ptr noundef nonnull %pic) #8, !dbg !444
  %next_args = getelementptr inbounds i8, ptr %handle, i64 216, !dbg !445
  %3 = load ptr, ptr %next_args, align 8, !dbg !445
  tail call void @free(ptr noundef %3) #8, !dbg !446
  tail call void @free(ptr noundef %handle) #8, !dbg !447
  ret i32 0, !dbg !448
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !449 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !456 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!285, !286, !287, !288, !289, !290, !291}
!llvm.ident = !{!292}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "thread_input", scope: !2, file: !3, line: 137, type: !13, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/input/thread.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "74a3b61dd0b7a18fcd2cda8c6734464e")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 232, elements: !11)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{!12}
!12 = !DISubrange(count: 29)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_t", file: !14, line: 63, baseType: !15)
!14 = !DIFile(filename: "x264_src/input/input.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f28c863d273681dfcaca9779e9fcbd53")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 54, size: 448, elements: !16)
!16 = !{!17, !55, !59, !272, !276, !280, !284}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !15, file: !14, line: 56, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !22, !23, !26, !47}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !25, line: 30, baseType: !5)
!25 = !DIFile(filename: "x264_src/muxers.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "video_info_t", file: !14, line: 52, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 38, size: 384, elements: !29)
!29 = !{!30, !31, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "csp", scope: !28, file: !14, line: 40, baseType: !21, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "fps_num", scope: !28, file: !14, line: 41, baseType: !32, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !33, line: 26, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !35, line: 42, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "fps_den", scope: !28, file: !14, line: 42, baseType: !32, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !28, file: !14, line: 43, baseType: !21, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !28, file: !14, line: 44, baseType: !21, size: 32, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !28, file: !14, line: 45, baseType: !32, size: 32, offset: 160)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !28, file: !14, line: 46, baseType: !32, size: 32, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tff", scope: !28, file: !14, line: 47, baseType: !21, size: 32, offset: 224)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_num", scope: !28, file: !14, line: 48, baseType: !32, size: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_den", scope: !28, file: !14, line: 49, baseType: !32, size: 32, offset: 288)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "vfr", scope: !28, file: !14, line: 50, baseType: !21, size: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !28, file: !14, line: 51, baseType: !21, size: 32, offset: 352)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_opt_t", file: !14, line: 35, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 29, size: 256, elements: !50)
!50 = !{!51, !52, !53, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !49, file: !14, line: 31, baseType: !22, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !49, file: !14, line: 32, baseType: !22, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "timebase", scope: !49, file: !14, line: 33, baseType: !22, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !49, file: !14, line: 34, baseType: !21, size: 32, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_total", scope: !15, file: !14, line: 57, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!21, !24}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "picture_alloc", scope: !15, file: !14, line: 58, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!21, !63, !21, !21, !21}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !65, line: 549, baseType: !66)
!65 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 513, size: 1088, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !77, !78, !249, !262, !271}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !66, file: !65, line: 521, baseType: !21, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !66, file: !65, line: 523, baseType: !21, size: 32, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !66, file: !65, line: 526, baseType: !21, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !66, file: !65, line: 529, baseType: !21, size: 32, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !66, file: !65, line: 531, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !74, line: 27, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !35, line: 44, baseType: !76)
!76 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !66, file: !65, line: 534, baseType: !73, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !66, file: !65, line: 541, baseType: !79, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !65, line: 376, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !65, line: 176, size: 5632, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !131, !132, !133, !134, !138, !139, !152, !153, !154, !155, !156, !187, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !81, file: !65, line: 179, baseType: !36, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !81, file: !65, line: 180, baseType: !21, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !81, file: !65, line: 181, baseType: !21, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !81, file: !65, line: 182, baseType: !21, size: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !81, file: !65, line: 183, baseType: !21, size: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !81, file: !65, line: 186, baseType: !21, size: 32, offset: 160)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !81, file: !65, line: 187, baseType: !21, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !81, file: !65, line: 188, baseType: !21, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !81, file: !65, line: 189, baseType: !21, size: 32, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !81, file: !65, line: 190, baseType: !21, size: 32, offset: 288)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !81, file: !65, line: 198, baseType: !21, size: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !81, file: !65, line: 215, baseType: !95, size: 288, offset: 352)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !65, line: 200, size: 288, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !95, file: !65, line: 203, baseType: !21, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !95, file: !65, line: 204, baseType: !21, size: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !95, file: !65, line: 206, baseType: !21, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !95, file: !65, line: 209, baseType: !21, size: 32, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !95, file: !65, line: 210, baseType: !21, size: 32, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !95, file: !65, line: 211, baseType: !21, size: 32, offset: 160)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !95, file: !65, line: 212, baseType: !21, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !95, file: !65, line: 213, baseType: !21, size: 32, offset: 224)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !95, file: !65, line: 214, baseType: !21, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !81, file: !65, line: 218, baseType: !21, size: 32, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !81, file: !65, line: 219, baseType: !21, size: 32, offset: 672)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !81, file: !65, line: 220, baseType: !21, size: 32, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !81, file: !65, line: 221, baseType: !21, size: 32, offset: 736)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !81, file: !65, line: 222, baseType: !21, size: 32, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !81, file: !65, line: 224, baseType: !21, size: 32, offset: 800)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !81, file: !65, line: 225, baseType: !21, size: 32, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !81, file: !65, line: 226, baseType: !21, size: 32, offset: 864)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !81, file: !65, line: 227, baseType: !21, size: 32, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !81, file: !65, line: 229, baseType: !21, size: 32, offset: 928)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !81, file: !65, line: 230, baseType: !21, size: 32, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !81, file: !65, line: 231, baseType: !21, size: 32, offset: 992)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !81, file: !65, line: 233, baseType: !21, size: 32, offset: 1024)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !81, file: !65, line: 234, baseType: !21, size: 32, offset: 1056)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !81, file: !65, line: 236, baseType: !21, size: 32, offset: 1088)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !81, file: !65, line: 237, baseType: !21, size: 32, offset: 1120)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !81, file: !65, line: 239, baseType: !21, size: 32, offset: 1152)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !81, file: !65, line: 240, baseType: !22, size: 64, offset: 1216)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !81, file: !65, line: 241, baseType: !125, size: 128, offset: 1280)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !129)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !33, line: 24, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !35, line: 38, baseType: !128)
!128 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!129 = !{!130}
!130 = !DISubrange(count: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !81, file: !65, line: 242, baseType: !125, size: 128, offset: 1408)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !81, file: !65, line: 243, baseType: !125, size: 128, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !81, file: !65, line: 244, baseType: !125, size: 128, offset: 1664)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !81, file: !65, line: 245, baseType: !135, size: 512, offset: 1792)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 512, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !81, file: !65, line: 246, baseType: !135, size: 512, offset: 2304)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !81, file: !65, line: 249, baseType: !140, size: 64, offset: 2816)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !5, !21, !143, !145}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !146, file: !3, line: 137, baseType: !36, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !146, file: !3, line: 137, baseType: !36, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !146, file: !3, line: 137, baseType: !5, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !146, file: !3, line: 137, baseType: !5, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !81, file: !65, line: 250, baseType: !5, size: 64, offset: 2880)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !81, file: !65, line: 251, baseType: !21, size: 32, offset: 2944)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !81, file: !65, line: 252, baseType: !21, size: 32, offset: 2976)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !81, file: !65, line: 253, baseType: !22, size: 64, offset: 3008)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !81, file: !65, line: 287, baseType: !157, size: 800, offset: 3072)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !65, line: 256, size: 800, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !179, !180, !181, !185, !186}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !157, file: !65, line: 258, baseType: !36, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !157, file: !65, line: 259, baseType: !36, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !157, file: !65, line: 261, baseType: !21, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !157, file: !65, line: 262, baseType: !21, size: 32, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !157, file: !65, line: 263, baseType: !21, size: 32, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !157, file: !65, line: 264, baseType: !21, size: 32, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !157, file: !65, line: 265, baseType: !21, size: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !157, file: !65, line: 267, baseType: !21, size: 32, offset: 224)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !157, file: !65, line: 268, baseType: !21, size: 32, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !157, file: !65, line: 269, baseType: !21, size: 32, offset: 288)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !157, file: !65, line: 270, baseType: !21, size: 32, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !157, file: !65, line: 271, baseType: !21, size: 32, offset: 352)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !157, file: !65, line: 272, baseType: !21, size: 32, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !157, file: !65, line: 273, baseType: !21, size: 32, offset: 416)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !157, file: !65, line: 274, baseType: !21, size: 32, offset: 448)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !157, file: !65, line: 275, baseType: !21, size: 32, offset: 480)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !157, file: !65, line: 276, baseType: !21, size: 32, offset: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !157, file: !65, line: 277, baseType: !21, size: 32, offset: 544)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !157, file: !65, line: 278, baseType: !178, size: 32, offset: 576)
!178 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !157, file: !65, line: 279, baseType: !178, size: 32, offset: 608)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !157, file: !65, line: 280, baseType: !21, size: 32, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !157, file: !65, line: 283, baseType: !182, size: 64, offset: 672)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 2)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !157, file: !65, line: 285, baseType: !21, size: 32, offset: 736)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !157, file: !65, line: 286, baseType: !21, size: 32, offset: 768)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !81, file: !65, line: 327, baseType: !188, size: 1152, offset: 3904)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !65, line: 290, size: 1152, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !227, !228}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !188, file: !65, line: 292, baseType: !21, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !188, file: !65, line: 294, baseType: !21, size: 32, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !188, file: !65, line: 295, baseType: !21, size: 32, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !188, file: !65, line: 296, baseType: !21, size: 32, offset: 96)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !188, file: !65, line: 297, baseType: !21, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !188, file: !65, line: 299, baseType: !21, size: 32, offset: 160)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !188, file: !65, line: 300, baseType: !178, size: 32, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !188, file: !65, line: 301, baseType: !178, size: 32, offset: 224)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !188, file: !65, line: 302, baseType: !178, size: 32, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !188, file: !65, line: 303, baseType: !21, size: 32, offset: 288)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !188, file: !65, line: 304, baseType: !21, size: 32, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !188, file: !65, line: 305, baseType: !178, size: 32, offset: 352)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !188, file: !65, line: 306, baseType: !178, size: 32, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !188, file: !65, line: 307, baseType: !178, size: 32, offset: 416)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !188, file: !65, line: 309, baseType: !21, size: 32, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !188, file: !65, line: 310, baseType: !178, size: 32, offset: 480)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !188, file: !65, line: 311, baseType: !21, size: 32, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !188, file: !65, line: 312, baseType: !21, size: 32, offset: 544)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !188, file: !65, line: 315, baseType: !21, size: 32, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !188, file: !65, line: 316, baseType: !22, size: 64, offset: 640)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !188, file: !65, line: 317, baseType: !21, size: 32, offset: 704)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !188, file: !65, line: 318, baseType: !22, size: 64, offset: 768)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !188, file: !65, line: 321, baseType: !178, size: 32, offset: 832)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !188, file: !65, line: 322, baseType: !178, size: 32, offset: 864)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !188, file: !65, line: 323, baseType: !178, size: 32, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !188, file: !65, line: 324, baseType: !216, size: 64, offset: 960)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !65, line: 174, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 167, size: 256, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !218, file: !65, line: 169, baseType: !21, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !218, file: !65, line: 169, baseType: !21, size: 32, offset: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !218, file: !65, line: 170, baseType: !21, size: 32, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !218, file: !65, line: 171, baseType: !21, size: 32, offset: 96)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !218, file: !65, line: 172, baseType: !178, size: 32, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !218, file: !65, line: 173, baseType: !226, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !188, file: !65, line: 325, baseType: !21, size: 32, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !188, file: !65, line: 326, baseType: !22, size: 64, offset: 1088)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !81, file: !65, line: 330, baseType: !21, size: 32, offset: 5056)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !81, file: !65, line: 331, baseType: !21, size: 32, offset: 5088)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !81, file: !65, line: 332, baseType: !21, size: 32, offset: 5120)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !81, file: !65, line: 334, baseType: !21, size: 32, offset: 5152)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !81, file: !65, line: 335, baseType: !21, size: 32, offset: 5184)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !81, file: !65, line: 336, baseType: !32, size: 32, offset: 5216)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !81, file: !65, line: 337, baseType: !32, size: 32, offset: 5248)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !81, file: !65, line: 338, baseType: !32, size: 32, offset: 5280)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !81, file: !65, line: 339, baseType: !32, size: 32, offset: 5312)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !81, file: !65, line: 340, baseType: !21, size: 32, offset: 5344)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !81, file: !65, line: 344, baseType: !21, size: 32, offset: 5376)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !81, file: !65, line: 356, baseType: !21, size: 32, offset: 5408)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !81, file: !65, line: 364, baseType: !21, size: 32, offset: 5440)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !81, file: !65, line: 367, baseType: !21, size: 32, offset: 5472)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !81, file: !65, line: 368, baseType: !21, size: 32, offset: 5504)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !81, file: !65, line: 369, baseType: !21, size: 32, offset: 5536)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !81, file: !65, line: 375, baseType: !246, size: 64, offset: 5568)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !5}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !66, file: !65, line: 543, baseType: !250, size: 448, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !65, line: 511, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 505, size: 448, elements: !252)
!252 = !{!253, !254, !255, !259}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !251, file: !65, line: 507, baseType: !21, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !251, file: !65, line: 508, baseType: !21, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !251, file: !65, line: 509, baseType: !256, size: 128, offset: 64)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 4)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !251, file: !65, line: 510, baseType: !260, size: 256, offset: 192)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 256, elements: !257)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !66, file: !65, line: 545, baseType: !263, size: 256, offset: 768)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !65, line: 503, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 496, size: 256, elements: !265)
!265 = !{!266, !268, !269, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !264, file: !65, line: 498, baseType: !267, size: 64)
!267 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !264, file: !65, line: 499, baseType: !267, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !264, file: !65, line: 500, baseType: !267, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !264, file: !65, line: 502, baseType: !267, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !66, file: !65, line: 548, baseType: !5, size: 64, offset: 1024)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "read_frame", scope: !15, file: !14, line: 59, baseType: !273, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!21, !63, !24, !21}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "release_frame", scope: !15, file: !14, line: 60, baseType: !277, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!21, !63, !24}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "picture_clean", scope: !15, file: !14, line: 61, baseType: !281, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !63}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !15, file: !14, line: 62, baseType: !56, size: 64, offset: 384)
!285 = !{i32 7, !"Dwarf Version", i32 5}
!286 = !{i32 2, !"Debug Info Version", i32 3}
!287 = !{i32 1, !"wchar_size", i32 4}
!288 = !{i32 8, !"PIC Level", i32 2}
!289 = !{i32 7, !"PIE Level", i32 2}
!290 = !{i32 7, !"uwtable", i32 2}
!291 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!292 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!293 = distinct !DISubprogram(name: "open_file", scope: !3, file: !3, line: 48, type: !19, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !294)
!294 = !{!295, !296, !297, !298, !299}
!295 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !293, file: !3, line: 48, type: !22)
!296 = !DILocalVariable(name: "p_handle", arg: 2, scope: !293, file: !3, line: 48, type: !23)
!297 = !DILocalVariable(name: "info", arg: 3, scope: !293, file: !3, line: 48, type: !26)
!298 = !DILocalVariable(name: "opt", arg: 4, scope: !293, file: !3, line: 48, type: !47)
!299 = !DILocalVariable(name: "h", scope: !293, file: !3, line: 50, type: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_hnd_t", file: !3, line: 38, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 28, size: 1792, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !302, file: !3, line: 30, baseType: !13, size: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "p_handle", scope: !302, file: !3, line: 31, baseType: !24, size: 64, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !302, file: !3, line: 32, baseType: !64, size: 1088, offset: 512)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !302, file: !3, line: 33, baseType: !21, size: 32, offset: 1600)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next_frame", scope: !302, file: !3, line: 34, baseType: !21, size: 32, offset: 1632)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "frame_total", scope: !302, file: !3, line: 35, baseType: !21, size: 32, offset: 1664)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "in_progress", scope: !302, file: !3, line: 36, baseType: !21, size: 32, offset: 1696)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next_args", scope: !302, file: !3, line: 37, baseType: !312, size: 64, offset: 1728)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_input_arg_t", file: !3, line: 40, size: 192, elements: !314)
!314 = !{!315, !316, !317, !318}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !313, file: !3, line: 42, baseType: !300, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !313, file: !3, line: 43, baseType: !63, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !313, file: !3, line: 44, baseType: !21, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !313, file: !3, line: 45, baseType: !21, size: 32, offset: 160)
!319 = !DILocation(line: 0, scope: !293)
!320 = !DILocation(line: 50, column: 23, scope: !293)
!321 = !DILocation(line: 51, column: 10, scope: !322)
!322 = distinct !DILexicalBlock(scope: !293, file: !3, line: 51, column: 9)
!323 = !DILocation(line: 51, column: 12, scope: !322)
!324 = !DILocation(line: 51, column: 21, scope: !322)
!325 = !DILocation(line: 51, column: 40, scope: !322)
!326 = !DILocation(line: 51, column: 51, scope: !322)
!327 = !DILocation(line: 51, column: 62, scope: !322)
!328 = !DILocation(line: 51, column: 75, scope: !322)
!329 = !DILocation(line: 51, column: 15, scope: !322)
!330 = !DILocation(line: 51, column: 9, scope: !293)
!331 = !DILocation(line: 53, column: 18, scope: !332)
!332 = distinct !DILexicalBlock(scope: !322, file: !3, line: 52, column: 5)
!333 = !DILocation(line: 53, column: 9, scope: !332)
!334 = !DILocation(line: 54, column: 9, scope: !332)
!335 = !DILocation(line: 56, column: 16, scope: !293)
!336 = !DILocation(line: 57, column: 19, scope: !293)
!337 = !DILocation(line: 57, column: 8, scope: !293)
!338 = !DILocation(line: 57, column: 17, scope: !293)
!339 = !DILocation(line: 58, column: 8, scope: !293)
!340 = !DILocation(line: 58, column: 20, scope: !293)
!341 = !DILocation(line: 59, column: 8, scope: !293)
!342 = !DILocation(line: 59, column: 19, scope: !293)
!343 = !DILocation(line: 60, column: 20, scope: !293)
!344 = !DILocation(line: 60, column: 8, scope: !293)
!345 = !DILocation(line: 60, column: 18, scope: !293)
!346 = !DILocation(line: 61, column: 10, scope: !347)
!347 = distinct !DILexicalBlock(scope: !293, file: !3, line: 61, column: 9)
!348 = !DILocation(line: 61, column: 9, scope: !293)
!349 = !DILocation(line: 63, column: 21, scope: !293)
!350 = !DILocation(line: 64, column: 19, scope: !293)
!351 = !DILocation(line: 64, column: 26, scope: !293)
!352 = !DILocation(line: 65, column: 28, scope: !293)
!353 = !DILocation(line: 65, column: 22, scope: !293)
!354 = !DILocation(line: 65, column: 8, scope: !293)
!355 = !DILocation(line: 65, column: 20, scope: !293)
!356 = !DILocation(line: 66, column: 43, scope: !293)
!357 = !DILocation(line: 66, column: 32, scope: !293)
!358 = !DILocation(line: 67, column: 43, scope: !293)
!359 = !DILocation(line: 67, column: 32, scope: !293)
!360 = !DILocation(line: 69, column: 15, scope: !293)
!361 = !DILocation(line: 70, column: 5, scope: !293)
!362 = !DILocation(line: 71, column: 1, scope: !293)
!363 = distinct !DISubprogram(name: "get_frame_total", scope: !3, file: !3, line: 73, type: !57, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !364)
!364 = !{!365, !366}
!365 = !DILocalVariable(name: "handle", arg: 1, scope: !363, file: !3, line: 73, type: !24)
!366 = !DILocalVariable(name: "h", scope: !363, file: !3, line: 75, type: !300)
!367 = !DILocation(line: 0, scope: !363)
!368 = !DILocation(line: 76, column: 15, scope: !363)
!369 = !DILocation(line: 76, column: 5, scope: !363)
!370 = distinct !DISubprogram(name: "read_frame", scope: !3, file: !3, line: 84, type: !274, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!371 = !{!372, !373, !374, !375, !376, !377}
!372 = !DILocalVariable(name: "p_pic", arg: 1, scope: !370, file: !3, line: 84, type: !63)
!373 = !DILocalVariable(name: "handle", arg: 2, scope: !370, file: !3, line: 84, type: !24)
!374 = !DILocalVariable(name: "i_frame", arg: 3, scope: !370, file: !3, line: 84, type: !21)
!375 = !DILocalVariable(name: "h", scope: !370, file: !3, line: 86, type: !300)
!376 = !DILocalVariable(name: "ret", scope: !370, file: !3, line: 87, type: !21)
!377 = !DILocalVariable(name: "t", scope: !378, file: !3, line: 97, type: !64)
!378 = distinct !DILexicalBlock(scope: !379, file: !3, line: 97, column: 9)
!379 = distinct !DILexicalBlock(scope: !370, file: !3, line: 96, column: 9)
!380 = distinct !DIAssignID()
!381 = !DILocation(line: 0, scope: !378)
!382 = !DILocation(line: 0, scope: !370)
!383 = !DILocation(line: 89, column: 12, scope: !384)
!384 = distinct !DILexicalBlock(scope: !370, file: !3, line: 89, column: 9)
!385 = !DILocation(line: 89, column: 23, scope: !384)
!386 = !DILocation(line: 89, column: 9, scope: !370)
!387 = !DILocation(line: 92, column: 19, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !3, line: 90, column: 5)
!389 = !DILocation(line: 92, column: 30, scope: !388)
!390 = !DILocation(line: 93, column: 12, scope: !388)
!391 = !DILocation(line: 93, column: 24, scope: !388)
!392 = !DILocation(line: 94, column: 5, scope: !388)
!393 = !DILocation(line: 96, column: 23, scope: !379)
!394 = !DILocation(line: 96, column: 9, scope: !370)
!395 = !DILocation(line: 97, column: 9, scope: !378)
!396 = distinct !DIAssignID()
!397 = !DILocation(line: 97, column: 9, scope: !379)
!398 = !DILocation(line: 99, column: 25, scope: !379)
!399 = !DILocation(line: 99, column: 47, scope: !379)
!400 = !DILocation(line: 99, column: 16, scope: !379)
!401 = !DILocation(line: 99, column: 13, scope: !379)
!402 = !DILocation(line: 101, column: 13, scope: !403)
!403 = distinct !DILexicalBlock(scope: !370, file: !3, line: 101, column: 9)
!404 = !DILocation(line: 101, column: 10, scope: !403)
!405 = !DILocation(line: 101, column: 25, scope: !403)
!406 = !DILocation(line: 104, column: 12, scope: !407)
!407 = distinct !DILexicalBlock(scope: !403, file: !3, line: 102, column: 5)
!408 = !DILocation(line: 104, column: 23, scope: !407)
!409 = !DILocation(line: 104, column: 31, scope: !407)
!410 = !DILocation(line: 103, column: 23, scope: !407)
!411 = !DILocation(line: 105, column: 33, scope: !407)
!412 = !DILocation(line: 105, column: 12, scope: !407)
!413 = !DILocation(line: 105, column: 23, scope: !407)
!414 = !DILocation(line: 105, column: 27, scope: !407)
!415 = !DILocation(line: 108, column: 12, scope: !407)
!416 = !DILocation(line: 108, column: 24, scope: !407)
!417 = !DILocation(line: 109, column: 5, scope: !407)
!418 = !DILocation(line: 111, column: 23, scope: !403)
!419 = !DILocation(line: 113, column: 5, scope: !370)
!420 = distinct !DISubprogram(name: "release_frame", scope: !3, file: !3, line: 116, type: !278, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!421 = !{!422, !423, !424}
!422 = !DILocalVariable(name: "pic", arg: 1, scope: !420, file: !3, line: 116, type: !63)
!423 = !DILocalVariable(name: "handle", arg: 2, scope: !420, file: !3, line: 116, type: !24)
!424 = !DILocalVariable(name: "h", scope: !420, file: !3, line: 118, type: !300)
!425 = !DILocation(line: 0, scope: !420)
!426 = !DILocation(line: 119, column: 18, scope: !427)
!427 = distinct !DILexicalBlock(scope: !420, file: !3, line: 119, column: 9)
!428 = !DILocation(line: 119, column: 9, scope: !427)
!429 = !DILocation(line: 119, column: 9, scope: !420)
!430 = !DILocation(line: 120, column: 48, scope: !427)
!431 = !DILocation(line: 120, column: 16, scope: !427)
!432 = !DILocation(line: 120, column: 9, scope: !427)
!433 = !DILocation(line: 122, column: 1, scope: !420)
!434 = distinct !DISubprogram(name: "close_file", scope: !3, file: !3, line: 124, type: !57, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!435 = !{!436, !437}
!436 = !DILocalVariable(name: "handle", arg: 1, scope: !434, file: !3, line: 124, type: !24)
!437 = !DILocalVariable(name: "h", scope: !434, file: !3, line: 126, type: !300)
!438 = !DILocation(line: 0, scope: !434)
!439 = !DILocation(line: 130, column: 14, scope: !434)
!440 = !DILocation(line: 130, column: 29, scope: !434)
!441 = !DILocation(line: 130, column: 5, scope: !434)
!442 = !DILocation(line: 131, column: 14, scope: !434)
!443 = !DILocation(line: 131, column: 33, scope: !434)
!444 = !DILocation(line: 131, column: 5, scope: !434)
!445 = !DILocation(line: 132, column: 14, scope: !434)
!446 = !DILocation(line: 132, column: 5, scope: !434)
!447 = !DILocation(line: 133, column: 5, scope: !434)
!448 = !DILocation(line: 134, column: 5, scope: !434)
!449 = !DISubprogram(name: "malloc", scope: !450, file: !450, line: 540, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!450 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!451 = !DISubroutineType(types: !452)
!452 = !{!5, !453}
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !454, line: 18, baseType: !455)
!454 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!455 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!456 = !DISubprogram(name: "free", scope: !450, file: !450, line: 555, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
