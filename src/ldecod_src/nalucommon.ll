; ModuleID = 'ldecod_src/nalucommon.c'
source_filename = "ldecod_src/nalucommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"AllocNALU: n\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"AllocNALU: n->buf\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @AllocNALU(i32 noundef %buffersize) local_unnamed_addr #0 !dbg !80 {
entry:
    #dbg_value(i32 %buffersize, !84, !DIExpression(), !86)
  %call = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #5, !dbg !87
    #dbg_value(ptr %call, !85, !DIExpression(), !86)
  %cmp = icmp eq ptr %call, null, !dbg !89
  br i1 %cmp, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #6, !dbg !91
  br label %if.end, !dbg !91

if.end:                                           ; preds = %if.then, %entry
  %max_size = getelementptr inbounds i8, ptr %call, i64 8, !dbg !92
  store i32 %buffersize, ptr %max_size, align 8, !dbg !93
  %conv = sext i32 %buffersize to i64, !dbg !94
  %call1 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 1) #5, !dbg !96
  %buf = getelementptr inbounds i8, ptr %call, i64 24, !dbg !97
  store ptr %call1, ptr %buf, align 8, !dbg !98
  %cmp2 = icmp eq ptr %call1, null, !dbg !99
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !100

if.then4:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %call) #6, !dbg !101
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #6, !dbg !103
  br label %if.end5, !dbg !104

if.end5:                                          ; preds = %if.then4, %if.end
  ret ptr %call, !dbg !105
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !106 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !113 void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !118 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @FreeNALU(ptr noundef %n) local_unnamed_addr #4 !dbg !121 {
entry:
    #dbg_value(ptr %n, !125, !DIExpression(), !126)
  %cmp.not = icmp eq ptr %n, null, !dbg !127
  br i1 %cmp.not, label %if.end5, label %if.then, !dbg !129

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds i8, ptr %n, i64 24, !dbg !130
  %0 = load ptr, ptr %buf, align 8, !dbg !130
  %cmp1.not = icmp eq ptr %0, null, !dbg !133
  br i1 %cmp1.not, label %if.end, label %if.then2, !dbg !134

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #6, !dbg !135
  br label %if.end, !dbg !137

if.end:                                           ; preds = %if.then2, %if.then
  tail call void @free(ptr noundef nonnull %n) #6, !dbg !138
  br label %if.end5, !dbg !139

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !140
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0,1) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/nalucommon.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "2ee61d5d50e30fdda8104b7ee47d33ac")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !40, globals: !71, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14, !34}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 24, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "ldecod_src/inc/nalucommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f9e55677f5f79524218c8a7a94869788")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!18 = !DIEnumerator(name: "NALU_TYPE_SLICE", value: 1)
!19 = !DIEnumerator(name: "NALU_TYPE_DPA", value: 2)
!20 = !DIEnumerator(name: "NALU_TYPE_DPB", value: 3)
!21 = !DIEnumerator(name: "NALU_TYPE_DPC", value: 4)
!22 = !DIEnumerator(name: "NALU_TYPE_IDR", value: 5)
!23 = !DIEnumerator(name: "NALU_TYPE_SEI", value: 6)
!24 = !DIEnumerator(name: "NALU_TYPE_SPS", value: 7)
!25 = !DIEnumerator(name: "NALU_TYPE_PPS", value: 8)
!26 = !DIEnumerator(name: "NALU_TYPE_AUD", value: 9)
!27 = !DIEnumerator(name: "NALU_TYPE_EOSEQ", value: 10)
!28 = !DIEnumerator(name: "NALU_TYPE_EOSTREAM", value: 11)
!29 = !DIEnumerator(name: "NALU_TYPE_FILL", value: 12)
!30 = !DIEnumerator(name: "NALU_TYPE_PREFIX", value: 14)
!31 = !DIEnumerator(name: "NALU_TYPE_SUB_SPS", value: 15)
!32 = !DIEnumerator(name: "NALU_TYPE_SLC_EXT", value: 20)
!33 = !DIEnumerator(name: "NALU_TYPE_VDRD", value: 24)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 46, baseType: !16, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39}
!36 = !DIEnumerator(name: "NALU_PRIORITY_HIGHEST", value: 3)
!37 = !DIEnumerator(name: "NALU_PRIORITY_HIGH", value: 2)
!38 = !DIEnumerator(name: "NALU_PRIORITY_LOW", value: 1)
!39 = !DIEnumerator(name: "NALU_PRIORITY_DISPOSABLE", value: 0)
!40 = !{!41, !70, !55}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALU_t", file: !15, line: 74, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !15, line: 54, size: 576, elements: !44)
!44 = !{!45, !47, !48, !49, !50, !52, !54, !59, !62, !63, !64, !65, !66, !67, !68, !69}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "startcodeprefix_len", scope: !43, file: !15, line: 56, baseType: !46, size: 32)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !43, file: !15, line: 57, baseType: !16, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !43, file: !15, line: 58, baseType: !16, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "forbidden_bit", scope: !43, file: !15, line: 59, baseType: !46, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !43, file: !15, line: 60, baseType: !51, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "NaluType", file: !15, line: 43, baseType: !14)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !43, file: !15, line: 61, baseType: !53, size: 32, offset: 160)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "NalRefIdc", file: !15, line: 51, baseType: !34)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !43, file: !15, line: 62, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !57, line: 21, baseType: !58)
!57 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "lost_packets", scope: !43, file: !15, line: 63, baseType: !60, size: 16, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !57, line: 23, baseType: !61)
!61 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !43, file: !15, line: 65, baseType: !46, size: 32, offset: 288)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !43, file: !15, line: 66, baseType: !46, size: 32, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !43, file: !15, line: 67, baseType: !46, size: 32, offset: 352)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !43, file: !15, line: 68, baseType: !46, size: 32, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !43, file: !15, line: 69, baseType: !46, size: 32, offset: 416)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !43, file: !15, line: 70, baseType: !46, size: 32, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !43, file: !15, line: 71, baseType: !46, size: 32, offset: 480)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !43, file: !15, line: 72, baseType: !46, size: 32, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!71 = !{!0, !7}
!72 = !{i32 7, !"Dwarf Version", i32 5}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 4}
!75 = !{i32 8, !"PIC Level", i32 2}
!76 = !{i32 7, !"PIE Level", i32 2}
!77 = !{i32 7, !"uwtable", i32 2}
!78 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!79 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!80 = distinct !DISubprogram(name: "AllocNALU", scope: !2, file: !2, line: 32, type: !81, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!41, !46}
!83 = !{!84, !85}
!84 = !DILocalVariable(name: "buffersize", arg: 1, scope: !80, file: !2, line: 32, type: !46)
!85 = !DILocalVariable(name: "n", scope: !80, file: !2, line: 34, type: !41)
!86 = !DILocation(line: 0, scope: !80)
!87 = !DILocation(line: 36, column: 21, scope: !88)
!88 = distinct !DILexicalBlock(scope: !80, file: !2, line: 36, column: 7)
!89 = !DILocation(line: 36, column: 50, scope: !88)
!90 = !DILocation(line: 36, column: 7, scope: !80)
!91 = !DILocation(line: 37, column: 5, scope: !88)
!92 = !DILocation(line: 39, column: 6, scope: !80)
!93 = !DILocation(line: 39, column: 14, scope: !80)
!94 = !DILocation(line: 41, column: 32, scope: !95)
!95 = distinct !DILexicalBlock(scope: !80, file: !2, line: 41, column: 7)
!96 = !DILocation(line: 41, column: 24, scope: !95)
!97 = !DILocation(line: 41, column: 11, scope: !95)
!98 = !DILocation(line: 41, column: 15, scope: !95)
!99 = !DILocation(line: 41, column: 60, scope: !95)
!100 = !DILocation(line: 41, column: 7, scope: !80)
!101 = !DILocation(line: 43, column: 5, scope: !102)
!102 = distinct !DILexicalBlock(scope: !95, file: !2, line: 42, column: 3)
!103 = !DILocation(line: 44, column: 5, scope: !102)
!104 = !DILocation(line: 45, column: 3, scope: !102)
!105 = !DILocation(line: 47, column: 3, scope: !80)
!106 = !DISubprogram(name: "calloc", scope: !107, file: !107, line: 543, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!107 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!108 = !DISubroutineType(types: !109)
!109 = !{!70, !110, !110}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 18, baseType: !112)
!111 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!112 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DISubprogram(name: "no_mem_exit", scope: !114, file: !114, line: 180, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!115 = !DISubroutineType(types: !116)
!116 = !{null, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!118 = !DISubprogram(name: "free", scope: !107, file: !107, line: 555, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !70}
!121 = distinct !DISubprogram(name: "FreeNALU", scope: !2, file: !2, line: 61, type: !122, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !124)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !41}
!124 = !{!125}
!125 = !DILocalVariable(name: "n", arg: 1, scope: !121, file: !2, line: 61, type: !41)
!126 = !DILocation(line: 0, scope: !121)
!127 = !DILocation(line: 63, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !2, line: 63, column: 7)
!129 = !DILocation(line: 63, column: 7, scope: !121)
!130 = !DILocation(line: 65, column: 12, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 65, column: 9)
!132 = distinct !DILexicalBlock(scope: !128, file: !2, line: 64, column: 3)
!133 = !DILocation(line: 65, column: 16, scope: !131)
!134 = !DILocation(line: 65, column: 9, scope: !132)
!135 = !DILocation(line: 67, column: 7, scope: !136)
!136 = distinct !DILexicalBlock(scope: !131, file: !2, line: 66, column: 5)
!137 = !DILocation(line: 69, column: 5, scope: !136)
!138 = !DILocation(line: 70, column: 5, scope: !132)
!139 = !DILocation(line: 71, column: 3, scope: !132)
!140 = !DILocation(line: 72, column: 1, scope: !121)
