; ModuleID = 'x264_src/output/raw.c'
source_filename = "x264_src/output/raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }

@raw_output = dso_local local_unnamed_addr constant %struct.cli_output_t { ptr @open_file, ptr @set_param, ptr @write_headers, ptr @write_frame, ptr @close_file }, align 8, !dbg !0
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1, !dbg !74

; Function Attrs: nofree nounwind uwtable
define internal range(i32 -1, 1) i32 @open_file(ptr nocapture noundef readonly %psz_filename, ptr nocapture noundef writeonly %p_handle) #0 !dbg !331 {
entry:
    #dbg_value(ptr %psz_filename, !333, !DIExpression(), !335)
    #dbg_value(ptr %p_handle, !334, !DIExpression(), !335)
  %0 = load i8, ptr %psz_filename, align 1
  %.not = icmp eq i8 %0, 45
  br i1 %.not, label %entry.tail, label %if.else

entry.tail:                                       ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %psz_filename, i64 1
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0, !dbg !336
  br i1 %3, label %if.then, label %if.else, !dbg !338

if.then:                                          ; preds = %entry.tail
  %4 = load ptr, ptr @stdout, align 8, !dbg !339
  store ptr %4, ptr %p_handle, align 8, !dbg !340
  br label %if.end4, !dbg !341

if.else:                                          ; preds = %entry, %entry.tail
  %call1 = tail call noalias ptr @fopen64(ptr noundef nonnull %psz_filename, ptr noundef nonnull @.str.1), !dbg !342
  store ptr %call1, ptr %p_handle, align 8, !dbg !344
  %tobool2.not = icmp eq ptr %call1, null, !dbg !344
  br i1 %tobool2.not, label %return, label %if.end4, !dbg !345

if.end4:                                          ; preds = %if.else, %if.then
  br label %return, !dbg !346

return:                                           ; preds = %if.else, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %if.else ], !dbg !335
  ret i32 %retval.0, !dbg !347
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @set_param(ptr nocapture readnone %handle, ptr nocapture readnone %p_param) #1 !dbg !348 {
entry:
    #dbg_value(ptr poison, !350, !DIExpression(), !352)
    #dbg_value(ptr poison, !351, !DIExpression(), !352)
  ret i32 0, !dbg !353
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @write_headers(ptr nocapture noundef %handle, ptr nocapture noundef readonly %p_nal) #0 !dbg !354 {
entry:
    #dbg_value(ptr %handle, !356, !DIExpression(), !359)
    #dbg_value(ptr %p_nal, !357, !DIExpression(), !359)
  %i_payload = getelementptr inbounds i8, ptr %p_nal, i64 8, !dbg !360
  %0 = load i32, ptr %i_payload, align 8, !dbg !360
  %i_payload2 = getelementptr inbounds i8, ptr %p_nal, i64 32, !dbg !361
  %1 = load i32, ptr %i_payload2, align 8, !dbg !361
  %add = add nsw i32 %1, %0, !dbg !362
  %i_payload4 = getelementptr inbounds i8, ptr %p_nal, i64 56, !dbg !363
  %2 = load i32, ptr %i_payload4, align 8, !dbg !363
  %add5 = add nsw i32 %add, %2, !dbg !364
    #dbg_value(i32 %add5, !358, !DIExpression(), !359)
  %p_payload = getelementptr inbounds i8, ptr %p_nal, i64 16, !dbg !365
  %3 = load ptr, ptr %p_payload, align 8, !dbg !365
  %conv = sext i32 %add5 to i64, !dbg !367
  %call = tail call i64 @fwrite(ptr noundef %3, i64 noundef %conv, i64 noundef 1, ptr noundef %handle), !dbg !368
  %tobool.not = icmp eq i64 %call, 0, !dbg !368
  %.add5 = select i1 %tobool.not, i32 -1, i32 %add5, !dbg !359
  ret i32 %.add5, !dbg !369
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @write_frame(ptr nocapture noundef %handle, ptr nocapture noundef %p_nalu, i32 noundef %i_size, ptr nocapture readnone %p_picture) #0 !dbg !370 {
entry:
    #dbg_value(ptr %handle, !372, !DIExpression(), !376)
    #dbg_value(ptr %p_nalu, !373, !DIExpression(), !376)
    #dbg_value(i32 %i_size, !374, !DIExpression(), !376)
    #dbg_value(ptr poison, !375, !DIExpression(), !376)
  %conv = sext i32 %i_size to i64, !dbg !377
  %call = tail call i64 @fwrite(ptr noundef %p_nalu, i64 noundef %conv, i64 noundef 1, ptr noundef %handle), !dbg !379
  %tobool.not = icmp eq i64 %call, 0, !dbg !379
  %.i_size = select i1 %tobool.not, i32 -1, i32 %i_size, !dbg !376
  ret i32 %.i_size, !dbg !380
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @close_file(ptr noundef %handle, i64 %largest_pts, i64 %second_largest_pts) #0 !dbg !381 {
entry:
    #dbg_value(ptr %handle, !383, !DIExpression(), !386)
    #dbg_value(i64 poison, !384, !DIExpression(), !386)
    #dbg_value(i64 poison, !385, !DIExpression(), !386)
  %tobool.not = icmp eq ptr %handle, null, !dbg !387
  %0 = load ptr, ptr @stdout, align 8
  %cmp = icmp eq ptr %0, %handle
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp, !dbg !389
  br i1 %or.cond, label %return, label %if.end, !dbg !389

if.end:                                           ; preds = %entry
  %call = tail call i32 @fclose(ptr noundef nonnull %handle), !dbg !390
  br label %return, !dbg !391

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ], !dbg !386
  ret i32 %retval.0, !dbg !392
}

; Function Attrs: nofree nounwind
declare !dbg !393 noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !398 noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !405 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!323, !324, !325, !326, !327, !328, !329}
!llvm.ident = !{!330}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "raw_output", scope: !2, file: !3, line: 65, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !68, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/output/raw.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "3437bfa7a26315063d340ddac405260f")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !7, line: 7, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !9, line: 49, size: 1728, elements: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!10 = !{!11, !13, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !29, !31, !32, !33, !37, !39, !41, !45, !48, !50, !53, !56, !57, !59, !63, !64}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !8, file: !9, line: 51, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !8, file: !9, line: 54, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !8, file: !9, line: 55, baseType: !14, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !8, file: !9, line: 56, baseType: !14, size: 64, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !8, file: !9, line: 57, baseType: !14, size: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !8, file: !9, line: 58, baseType: !14, size: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !8, file: !9, line: 59, baseType: !14, size: 64, offset: 384)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !8, file: !9, line: 60, baseType: !14, size: 64, offset: 448)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !8, file: !9, line: 61, baseType: !14, size: 64, offset: 512)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !8, file: !9, line: 64, baseType: !14, size: 64, offset: 576)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !8, file: !9, line: 65, baseType: !14, size: 64, offset: 640)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !8, file: !9, line: 66, baseType: !14, size: 64, offset: 704)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !8, file: !9, line: 68, baseType: !27, size: 64, offset: 768)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !9, line: 36, flags: DIFlagFwdDecl)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !8, file: !9, line: 70, baseType: !30, size: 64, offset: 832)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !8, file: !9, line: 72, baseType: !12, size: 32, offset: 896)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !8, file: !9, line: 73, baseType: !12, size: 32, offset: 928)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !8, file: !9, line: 74, baseType: !34, size: 64, offset: 960)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !35, line: 152, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!36 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !8, file: !9, line: 77, baseType: !38, size: 16, offset: 1024)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !8, file: !9, line: 78, baseType: !40, size: 8, offset: 1040)
!40 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !8, file: !9, line: 79, baseType: !42, size: 8, offset: 1048)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 1)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !8, file: !9, line: 81, baseType: !46, size: 64, offset: 1088)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !9, line: 43, baseType: null)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !8, file: !9, line: 89, baseType: !49, size: 64, offset: 1152)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !35, line: 153, baseType: !36)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !8, file: !9, line: 91, baseType: !51, size: 64, offset: 1216)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !9, line: 37, flags: DIFlagFwdDecl)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !8, file: !9, line: 92, baseType: !54, size: 64, offset: 1280)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !9, line: 38, flags: DIFlagFwdDecl)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !8, file: !9, line: 93, baseType: !30, size: 64, offset: 1344)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !8, file: !9, line: 94, baseType: !58, size: 64, offset: 1408)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !8, file: !9, line: 95, baseType: !60, size: 64, offset: 1472)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 18, baseType: !62)
!61 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !8, file: !9, line: 96, baseType: !12, size: 32, offset: 1536)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !8, file: !9, line: 98, baseType: !65, size: 160, offset: 1568)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 20)
!68 = !{!0, !69, !74}
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 16, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 2)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !3, line: 30, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 4)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_output_t", file: !81, line: 34, baseType: !82)
!81 = !DIFile(filename: "x264_src/output/output.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "2609bd03b72b40b15579de35b2e5f690")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 27, size: 320, elements: !83)
!83 = !{!84, !91, !268, !281, !319}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !82, file: !81, line: 29, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!12, !14, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !90, line: 30, baseType: !58)
!90 = !DIFile(filename: "x264_src/muxers.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "set_param", scope: !82, file: !81, line: 30, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!12, !89, !95}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !97, line: 376, baseType: !98)
!97 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !97, line: 176, size: 5632, elements: !99)
!99 = !{!100, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !150, !151, !152, !153, !157, !158, !171, !172, !173, !174, !175, !204, !246, !247, !248, !249, !250, !251, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !98, file: !97, line: 179, baseType: !101, size: 32)
!101 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !98, file: !97, line: 180, baseType: !12, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !98, file: !97, line: 181, baseType: !12, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !98, file: !97, line: 182, baseType: !12, size: 32, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !98, file: !97, line: 183, baseType: !12, size: 32, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !98, file: !97, line: 186, baseType: !12, size: 32, offset: 160)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !98, file: !97, line: 187, baseType: !12, size: 32, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !98, file: !97, line: 188, baseType: !12, size: 32, offset: 224)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !98, file: !97, line: 189, baseType: !12, size: 32, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !98, file: !97, line: 190, baseType: !12, size: 32, offset: 288)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !98, file: !97, line: 198, baseType: !12, size: 32, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !98, file: !97, line: 215, baseType: !113, size: 288, offset: 352)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !98, file: !97, line: 200, size: 288, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !113, file: !97, line: 203, baseType: !12, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !113, file: !97, line: 204, baseType: !12, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !113, file: !97, line: 206, baseType: !12, size: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !113, file: !97, line: 209, baseType: !12, size: 32, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !113, file: !97, line: 210, baseType: !12, size: 32, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !113, file: !97, line: 211, baseType: !12, size: 32, offset: 160)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !113, file: !97, line: 212, baseType: !12, size: 32, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !113, file: !97, line: 213, baseType: !12, size: 32, offset: 224)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !113, file: !97, line: 214, baseType: !12, size: 32, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !98, file: !97, line: 218, baseType: !12, size: 32, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !98, file: !97, line: 219, baseType: !12, size: 32, offset: 672)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !98, file: !97, line: 220, baseType: !12, size: 32, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !98, file: !97, line: 221, baseType: !12, size: 32, offset: 736)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !98, file: !97, line: 222, baseType: !12, size: 32, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !98, file: !97, line: 224, baseType: !12, size: 32, offset: 800)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !98, file: !97, line: 225, baseType: !12, size: 32, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !98, file: !97, line: 226, baseType: !12, size: 32, offset: 864)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !98, file: !97, line: 227, baseType: !12, size: 32, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !98, file: !97, line: 229, baseType: !12, size: 32, offset: 928)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !98, file: !97, line: 230, baseType: !12, size: 32, offset: 960)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !98, file: !97, line: 231, baseType: !12, size: 32, offset: 992)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !98, file: !97, line: 233, baseType: !12, size: 32, offset: 1024)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !98, file: !97, line: 234, baseType: !12, size: 32, offset: 1056)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !98, file: !97, line: 236, baseType: !12, size: 32, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !98, file: !97, line: 237, baseType: !12, size: 32, offset: 1120)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !98, file: !97, line: 239, baseType: !12, size: 32, offset: 1152)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !98, file: !97, line: 240, baseType: !14, size: 64, offset: 1216)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !98, file: !97, line: 241, baseType: !143, size: 128, offset: 1280)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, elements: !148)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !145, line: 24, baseType: !146)
!145 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !35, line: 38, baseType: !147)
!147 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!148 = !{!149}
!149 = !DISubrange(count: 16)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !98, file: !97, line: 242, baseType: !143, size: 128, offset: 1408)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !98, file: !97, line: 243, baseType: !143, size: 128, offset: 1536)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !98, file: !97, line: 244, baseType: !143, size: 128, offset: 1664)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !98, file: !97, line: 245, baseType: !154, size: 512, offset: 1792)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 512, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !98, file: !97, line: 246, baseType: !154, size: 512, offset: 2304)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !98, file: !97, line: 249, baseType: !159, size: 64, offset: 2816)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !58, !12, !162, !164}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !166)
!166 = !{!167, !168, !169, !170}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !165, file: !3, line: 65, baseType: !101, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !165, file: !3, line: 65, baseType: !101, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !165, file: !3, line: 65, baseType: !58, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !165, file: !3, line: 65, baseType: !58, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !98, file: !97, line: 250, baseType: !58, size: 64, offset: 2880)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !98, file: !97, line: 251, baseType: !12, size: 32, offset: 2944)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !98, file: !97, line: 252, baseType: !12, size: 32, offset: 2976)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !98, file: !97, line: 253, baseType: !14, size: 64, offset: 3008)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !98, file: !97, line: 287, baseType: !176, size: 800, offset: 3072)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !98, file: !97, line: 256, size: 800, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !198, !199, !200, !202, !203}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !176, file: !97, line: 258, baseType: !101, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !176, file: !97, line: 259, baseType: !101, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !176, file: !97, line: 261, baseType: !12, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !176, file: !97, line: 262, baseType: !12, size: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !176, file: !97, line: 263, baseType: !12, size: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !176, file: !97, line: 264, baseType: !12, size: 32, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !176, file: !97, line: 265, baseType: !12, size: 32, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !176, file: !97, line: 267, baseType: !12, size: 32, offset: 224)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !176, file: !97, line: 268, baseType: !12, size: 32, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !176, file: !97, line: 269, baseType: !12, size: 32, offset: 288)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !176, file: !97, line: 270, baseType: !12, size: 32, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !176, file: !97, line: 271, baseType: !12, size: 32, offset: 352)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !176, file: !97, line: 272, baseType: !12, size: 32, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !176, file: !97, line: 273, baseType: !12, size: 32, offset: 416)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !176, file: !97, line: 274, baseType: !12, size: 32, offset: 448)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !176, file: !97, line: 275, baseType: !12, size: 32, offset: 480)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !176, file: !97, line: 276, baseType: !12, size: 32, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !176, file: !97, line: 277, baseType: !12, size: 32, offset: 544)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !176, file: !97, line: 278, baseType: !197, size: 32, offset: 576)
!197 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !176, file: !97, line: 279, baseType: !197, size: 32, offset: 608)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !176, file: !97, line: 280, baseType: !12, size: 32, offset: 640)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !176, file: !97, line: 283, baseType: !201, size: 64, offset: 672)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !72)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !176, file: !97, line: 285, baseType: !12, size: 32, offset: 736)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !176, file: !97, line: 286, baseType: !12, size: 32, offset: 768)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !98, file: !97, line: 327, baseType: !205, size: 1152, offset: 3904)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !98, file: !97, line: 290, size: 1152, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !244, !245}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !205, file: !97, line: 292, baseType: !12, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !205, file: !97, line: 294, baseType: !12, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !205, file: !97, line: 295, baseType: !12, size: 32, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !205, file: !97, line: 296, baseType: !12, size: 32, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !205, file: !97, line: 297, baseType: !12, size: 32, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !205, file: !97, line: 299, baseType: !12, size: 32, offset: 160)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !205, file: !97, line: 300, baseType: !197, size: 32, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !205, file: !97, line: 301, baseType: !197, size: 32, offset: 224)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !205, file: !97, line: 302, baseType: !197, size: 32, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !205, file: !97, line: 303, baseType: !12, size: 32, offset: 288)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !205, file: !97, line: 304, baseType: !12, size: 32, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !205, file: !97, line: 305, baseType: !197, size: 32, offset: 352)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !205, file: !97, line: 306, baseType: !197, size: 32, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !205, file: !97, line: 307, baseType: !197, size: 32, offset: 416)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !205, file: !97, line: 309, baseType: !12, size: 32, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !205, file: !97, line: 310, baseType: !197, size: 32, offset: 480)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !205, file: !97, line: 311, baseType: !12, size: 32, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !205, file: !97, line: 312, baseType: !12, size: 32, offset: 544)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !205, file: !97, line: 315, baseType: !12, size: 32, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !205, file: !97, line: 316, baseType: !14, size: 64, offset: 640)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !205, file: !97, line: 317, baseType: !12, size: 32, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !205, file: !97, line: 318, baseType: !14, size: 64, offset: 768)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !205, file: !97, line: 321, baseType: !197, size: 32, offset: 832)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !205, file: !97, line: 322, baseType: !197, size: 32, offset: 864)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !205, file: !97, line: 323, baseType: !197, size: 32, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !205, file: !97, line: 324, baseType: !233, size: 64, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !97, line: 174, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 167, size: 256, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !235, file: !97, line: 169, baseType: !12, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !235, file: !97, line: 169, baseType: !12, size: 32, offset: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !235, file: !97, line: 170, baseType: !12, size: 32, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !235, file: !97, line: 171, baseType: !12, size: 32, offset: 96)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !235, file: !97, line: 172, baseType: !197, size: 32, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !235, file: !97, line: 173, baseType: !243, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !205, file: !97, line: 325, baseType: !12, size: 32, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !205, file: !97, line: 326, baseType: !14, size: 64, offset: 1088)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !98, file: !97, line: 330, baseType: !12, size: 32, offset: 5056)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !98, file: !97, line: 331, baseType: !12, size: 32, offset: 5088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !98, file: !97, line: 332, baseType: !12, size: 32, offset: 5120)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !98, file: !97, line: 334, baseType: !12, size: 32, offset: 5152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !98, file: !97, line: 335, baseType: !12, size: 32, offset: 5184)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !98, file: !97, line: 336, baseType: !252, size: 32, offset: 5216)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !145, line: 26, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !35, line: 42, baseType: !101)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !98, file: !97, line: 337, baseType: !252, size: 32, offset: 5248)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !98, file: !97, line: 338, baseType: !252, size: 32, offset: 5280)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !98, file: !97, line: 339, baseType: !252, size: 32, offset: 5312)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !98, file: !97, line: 340, baseType: !12, size: 32, offset: 5344)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !98, file: !97, line: 344, baseType: !12, size: 32, offset: 5376)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !98, file: !97, line: 356, baseType: !12, size: 32, offset: 5408)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !98, file: !97, line: 364, baseType: !12, size: 32, offset: 5440)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !98, file: !97, line: 367, baseType: !12, size: 32, offset: 5472)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !98, file: !97, line: 368, baseType: !12, size: 32, offset: 5504)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !98, file: !97, line: 369, baseType: !12, size: 32, offset: 5536)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !98, file: !97, line: 375, baseType: !265, size: 64, offset: 5568)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !58}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "write_headers", scope: !82, file: !81, line: 31, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!12, !89, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !97, line: 604, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 593, size: 192, elements: !275)
!275 = !{!276, !277, !278, !279}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !274, file: !97, line: 595, baseType: !12, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !274, file: !97, line: 596, baseType: !12, size: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !274, file: !97, line: 599, baseType: !12, size: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !274, file: !97, line: 603, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame", scope: !82, file: !81, line: 32, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!12, !89, !280, !12, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !97, line: 549, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 513, size: 1088, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !297, !298, !299, !309, !318}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !287, file: !97, line: 521, baseType: !12, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !287, file: !97, line: 523, baseType: !12, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !287, file: !97, line: 526, baseType: !12, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !287, file: !97, line: 529, baseType: !12, size: 32, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !287, file: !97, line: 531, baseType: !294, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !295, line: 27, baseType: !296)
!295 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !35, line: 44, baseType: !36)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !287, file: !97, line: 534, baseType: !294, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !287, file: !97, line: 541, baseType: !95, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !287, file: !97, line: 543, baseType: !300, size: 448, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !97, line: 511, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 505, size: 448, elements: !302)
!302 = !{!303, !304, !305, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !301, file: !97, line: 507, baseType: !12, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !301, file: !97, line: 508, baseType: !12, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !301, file: !97, line: 509, baseType: !306, size: 128, offset: 64)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !77)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !301, file: !97, line: 510, baseType: !308, size: 256, offset: 192)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 256, elements: !77)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !287, file: !97, line: 545, baseType: !310, size: 256, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !97, line: 503, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 496, size: 256, elements: !312)
!312 = !{!313, !315, !316, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !311, file: !97, line: 498, baseType: !314, size: 64)
!314 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !311, file: !97, line: 499, baseType: !314, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !311, file: !97, line: 500, baseType: !314, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !311, file: !97, line: 502, baseType: !314, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !287, file: !97, line: 548, baseType: !58, size: 64, offset: 1024)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !82, file: !81, line: 33, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!12, !89, !294, !294}
!323 = !{i32 7, !"Dwarf Version", i32 5}
!324 = !{i32 2, !"Debug Info Version", i32 3}
!325 = !{i32 1, !"wchar_size", i32 4}
!326 = !{i32 8, !"PIC Level", i32 2}
!327 = !{i32 7, !"PIE Level", i32 2}
!328 = !{i32 7, !"uwtable", i32 2}
!329 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!330 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!331 = distinct !DISubprogram(name: "open_file", scope: !3, file: !3, line: 26, type: !86, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !332)
!332 = !{!333, !334}
!333 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !331, file: !3, line: 26, type: !14)
!334 = !DILocalVariable(name: "p_handle", arg: 2, scope: !331, file: !3, line: 26, type: !88)
!335 = !DILocation(line: 0, scope: !331)
!336 = !DILocation(line: 28, column: 10, scope: !337)
!337 = distinct !DILexicalBlock(scope: !331, file: !3, line: 28, column: 9)
!338 = !DILocation(line: 28, column: 9, scope: !331)
!339 = !DILocation(line: 29, column: 21, scope: !337)
!340 = !DILocation(line: 29, column: 19, scope: !337)
!341 = !DILocation(line: 29, column: 9, scope: !337)
!342 = !DILocation(line: 30, column: 28, scope: !343)
!343 = distinct !DILexicalBlock(scope: !337, file: !3, line: 30, column: 14)
!344 = !DILocation(line: 30, column: 26, scope: !343)
!345 = !DILocation(line: 30, column: 14, scope: !337)
!346 = !DILocation(line: 33, column: 5, scope: !331)
!347 = !DILocation(line: 34, column: 1, scope: !331)
!348 = distinct !DISubprogram(name: "set_param", scope: !3, file: !3, line: 36, type: !93, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !349)
!349 = !{!350, !351}
!350 = !DILocalVariable(name: "handle", arg: 1, scope: !348, file: !3, line: 36, type: !89)
!351 = !DILocalVariable(name: "p_param", arg: 2, scope: !348, file: !3, line: 36, type: !95)
!352 = !DILocation(line: 0, scope: !348)
!353 = !DILocation(line: 38, column: 5, scope: !348)
!354 = distinct !DISubprogram(name: "write_headers", scope: !3, file: !3, line: 41, type: !270, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !355)
!355 = !{!356, !357, !358}
!356 = !DILocalVariable(name: "handle", arg: 1, scope: !354, file: !3, line: 41, type: !89)
!357 = !DILocalVariable(name: "p_nal", arg: 2, scope: !354, file: !3, line: 41, type: !272)
!358 = !DILocalVariable(name: "size", scope: !354, file: !3, line: 43, type: !12)
!359 = !DILocation(line: 0, scope: !354)
!360 = !DILocation(line: 43, column: 25, scope: !354)
!361 = !DILocation(line: 43, column: 46, scope: !354)
!362 = !DILocation(line: 43, column: 35, scope: !354)
!363 = !DILocation(line: 43, column: 67, scope: !354)
!364 = !DILocation(line: 43, column: 56, scope: !354)
!365 = !DILocation(line: 45, column: 26, scope: !366)
!366 = distinct !DILexicalBlock(scope: !354, file: !3, line: 45, column: 9)
!367 = !DILocation(line: 45, column: 37, scope: !366)
!368 = !DILocation(line: 45, column: 9, scope: !366)
!369 = !DILocation(line: 48, column: 1, scope: !354)
!370 = distinct !DISubprogram(name: "write_frame", scope: !3, file: !3, line: 50, type: !283, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!371 = !{!372, !373, !374, !375}
!372 = !DILocalVariable(name: "handle", arg: 1, scope: !370, file: !3, line: 50, type: !89)
!373 = !DILocalVariable(name: "p_nalu", arg: 2, scope: !370, file: !3, line: 50, type: !280)
!374 = !DILocalVariable(name: "i_size", arg: 3, scope: !370, file: !3, line: 50, type: !12)
!375 = !DILocalVariable(name: "p_picture", arg: 4, scope: !370, file: !3, line: 50, type: !285)
!376 = !DILocation(line: 0, scope: !370)
!377 = !DILocation(line: 52, column: 25, scope: !378)
!378 = distinct !DILexicalBlock(scope: !370, file: !3, line: 52, column: 9)
!379 = !DILocation(line: 52, column: 9, scope: !378)
!380 = !DILocation(line: 55, column: 1, scope: !370)
!381 = distinct !DISubprogram(name: "close_file", scope: !3, file: !3, line: 57, type: !321, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !382)
!382 = !{!383, !384, !385}
!383 = !DILocalVariable(name: "handle", arg: 1, scope: !381, file: !3, line: 57, type: !89)
!384 = !DILocalVariable(name: "largest_pts", arg: 2, scope: !381, file: !3, line: 57, type: !294)
!385 = !DILocalVariable(name: "second_largest_pts", arg: 3, scope: !381, file: !3, line: 57, type: !294)
!386 = !DILocation(line: 0, scope: !381)
!387 = !DILocation(line: 59, column: 10, scope: !388)
!388 = distinct !DILexicalBlock(scope: !381, file: !3, line: 59, column: 9)
!389 = !DILocation(line: 59, column: 17, scope: !388)
!390 = !DILocation(line: 62, column: 12, scope: !381)
!391 = !DILocation(line: 62, column: 5, scope: !381)
!392 = !DILocation(line: 63, column: 1, scope: !381)
!393 = !DISubprogram(name: "fopen", linkageName: "fopen64", scope: !394, file: !394, line: 270, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!395 = !DISubroutineType(types: !396)
!396 = !{!5, !397, !397}
!397 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !162)
!398 = !DISubprogram(name: "fwrite", scope: !394, file: !394, line: 681, type: !399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!399 = !DISubroutineType(types: !400)
!400 = !{!62, !401, !60, !60, !404}
!401 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!404 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!405 = !DISubprogram(name: "fclose", scope: !394, file: !394, line: 178, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DISubroutineType(types: !407)
!407 = !{!12, !5}
