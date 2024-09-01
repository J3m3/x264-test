; ModuleID = 'x264_src/common/cpu.c'
source_filename = "x264_src/common/cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_cpu_name_t = type { [16 x i8], i32 }

@x264_cpu_names = dso_local local_unnamed_addr constant [22 x %struct.x264_cpu_name_t] [%struct.x264_cpu_name_t { [16 x i8] c"Altivec\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.x264_cpu_name_t { [16 x i8] c"MMX2\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.x264_cpu_name_t { [16 x i8] c"MMXEXT\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE2Slow\00\00\00\00\00\00\00\00", i32 248 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE2\00\00\00\00\00\00\00\00\00\00\00\00", i32 120 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE2Fast\00\00\00\00\00\00\00\00", i32 376 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE3\00\00\00\00\00\00\00\00\00\00\00\00", i32 632 }, %struct.x264_cpu_name_t { [16 x i8] c"SSSE3\00\00\00\00\00\00\00\00\00\00\00", i32 1656 }, %struct.x264_cpu_name_t { [16 x i8] c"FastShuffle\00\00\00\00\00", i32 2168 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE4.1\00\00\00\00\00\00\00\00\00\00", i32 9848 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE4.2\00\00\00\00\00\00\00\00\00\00", i32 26232 }, %struct.x264_cpu_name_t { [16 x i8] c"Cache32\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.x264_cpu_name_t { [16 x i8] c"Cache64\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.x264_cpu_name_t { [16 x i8] c"SSEMisalign\00\00\00\00\00", i32 32768 }, %struct.x264_cpu_name_t { [16 x i8] c"LZCNT\00\00\00\00\00\00\00\00\00\00\00", i32 65536 }, %struct.x264_cpu_name_t { [16 x i8] c"Slow_mod4_stack\00", i32 4096 }, %struct.x264_cpu_name_t { [16 x i8] c"ARMv6\00\00\00\00\00\00\00\00\00\00\00", i32 131072 }, %struct.x264_cpu_name_t { [16 x i8] c"NEON\00\00\00\00\00\00\00\00\00\00\00\00", i32 262144 }, %struct.x264_cpu_name_t { [16 x i8] c"Fast_NEON_MRC\00\00\00", i32 524288 }, %struct.x264_cpu_name_t { [16 x i8] c"SlowCTZ\00\00\00\00\00\00\00\00\00", i32 1048576 }, %struct.x264_cpu_name_t { [16 x i8] c"SlowAtom\00\00\00\00\00\00\00\00", i32 2097152 }, %struct.x264_cpu_name_t zeroinitializer], align 16, !dbg !0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @x264_cpu_detect() local_unnamed_addr #0 !dbg !28 {
entry:
  ret i32 0, !dbg !36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @x264_cpu_num_processors() local_unnamed_addr #0 !dbg !37 {
entry:
  ret i32 1, !dbg !40
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_cpu_names", scope: !2, file: !3, line: 45, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/common/cpu.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "db4d05c503d17b664152f1c20ff72ae7")
!4 = !{!0}
!5 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3520, elements: !19)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cpu_name_t", file: !8, line: 54, baseType: !9)
!8 = !DIFile(filename: "x264_src/common/cpu.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0beb41363cc0e5253fa85a15dbb3a435")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 51, size: 160, elements: !10)
!10 = !{!11, !17}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !8, line: 52, baseType: !12, size: 128)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !15)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 16)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !9, file: !8, line: 53, baseType: !18, size: 32, offset: 128)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20}
!20 = !DISubrange(count: 22)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!28 = distinct !DISubprogram(name: "x264_cpu_detect", scope: !3, file: !3, line: 73, type: !29, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 26, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !34, line: 42, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 73, column: 36, scope: !28)
!37 = distinct !DISubprogram(name: "x264_cpu_num_processors", scope: !3, file: !3, line: 340, type: !38, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{!18}
!40 = !DILocation(line: 344, column: 5, scope: !37)
