; ModuleID = 'ldecod_src/win32.c'
source_filename = "ldecod_src/win32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gettime(ptr nocapture noundef readnone %time) local_unnamed_addr #0 !dbg !18 {
entry:
    #dbg_value(ptr %time, !30, !DIExpression(), !31)
  ret void, !dbg !32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147485795483648, 2147485794483648) i64 @timediff(ptr nocapture noundef readonly %start, ptr nocapture noundef readonly %end) local_unnamed_addr #1 !dbg !33 {
entry:
    #dbg_value(ptr %start, !37, !DIExpression(), !42)
    #dbg_value(ptr %end, !38, !DIExpression(), !42)
  %0 = load i64, ptr %end, align 8, !dbg !43
  %1 = load i64, ptr %start, align 8, !dbg !44
  %sub = sub nsw i64 %0, %1, !dbg !45
    #dbg_value(i64 %sub, !39, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !42)
  %tv_usec = getelementptr inbounds i8, ptr %end, i64 8, !dbg !46
  %2 = load i64, ptr %tv_usec, align 8, !dbg !46
  %tv_usec2 = getelementptr inbounds i8, ptr %start, i64 8, !dbg !47
  %3 = load i64, ptr %tv_usec2, align 8, !dbg !47
  %sub3 = sub nsw i64 %2, %3, !dbg !48
    #dbg_value(i64 %sub3, !41, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !42)
  %sext = shl i64 %sub3, 32, !dbg !49
  %conv5 = ashr exact i64 %sext, 32, !dbg !49
  %sext9 = shl i64 %sub, 32, !dbg !50
  %conv6 = ashr exact i64 %sext9, 32, !dbg !50
  %mul = mul nsw i64 %conv6, 1000000, !dbg !51
  %add = add nsw i64 %conv5, %mul, !dbg !52
  ret i64 %add, !dbg !53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 -9223372036854775, 9223372036854776) i64 @timenorm(i64 noundef %cur_time) local_unnamed_addr #0 !dbg !54 {
entry:
    #dbg_value(i64 %cur_time, !58, !DIExpression(), !59)
  %div = sdiv i64 %cur_time, 1000, !dbg !60
  ret i64 %div, !dbg !61
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "ldecod_src/win32.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "864d3167eea91a6b80a395ab23077545")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !4, line: 103, baseType: !5)
!4 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 27, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !8, line: 44, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!9 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!17 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!18 = distinct !DISubprogram(name: "gettime", scope: !1, file: !1, line: 71, type: !19, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !29)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !23, line: 8, size: 128, elements: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!24 = !{!25, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !22, file: !23, line: 14, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !8, line: 160, baseType: !9)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !22, file: !23, line: 15, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !8, line: 162, baseType: !9)
!29 = !{!30}
!30 = !DILocalVariable(name: "time", arg: 1, scope: !18, file: !1, line: 71, type: !21)
!31 = !DILocation(line: 0, scope: !18)
!32 = !DILocation(line: 71, column: 30, scope: !18)
!33 = distinct !DISubprogram(name: "timediff", scope: !1, file: !1, line: 74, type: !34, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!3, !21, !21}
!36 = !{!37, !38, !39, !41}
!37 = !DILocalVariable(name: "start", arg: 1, scope: !33, file: !1, line: 74, type: !21)
!38 = !DILocalVariable(name: "end", arg: 2, scope: !33, file: !1, line: 74, type: !21)
!39 = !DILocalVariable(name: "t1", scope: !33, file: !1, line: 76, type: !40)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DILocalVariable(name: "t2", scope: !33, file: !1, line: 76, type: !40)
!42 = !DILocation(line: 0, scope: !33)
!43 = !DILocation(line: 78, column: 14, scope: !33)
!44 = !DILocation(line: 78, column: 31, scope: !33)
!45 = !DILocation(line: 78, column: 22, scope: !33)
!46 = !DILocation(line: 79, column: 14, scope: !33)
!47 = !DILocation(line: 79, column: 31, scope: !33)
!48 = !DILocation(line: 79, column: 22, scope: !33)
!49 = !DILocation(line: 80, column: 10, scope: !33)
!50 = !DILocation(line: 80, column: 23, scope: !33)
!51 = !DILocation(line: 80, column: 34, scope: !33)
!52 = !DILocation(line: 80, column: 21, scope: !33)
!53 = !DILocation(line: 80, column: 3, scope: !33)
!54 = distinct !DISubprogram(name: "timenorm", scope: !1, file: !1, line: 83, type: !55, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{!3, !3}
!57 = !{!58}
!58 = !DILocalVariable(name: "cur_time", arg: 1, scope: !54, file: !1, line: 83, type: !3)
!59 = !DILocation(line: 0, scope: !54)
!60 = !DILocation(line: 85, column: 27, scope: !54)
!61 = !DILocation(line: 85, column: 3, scope: !54)
