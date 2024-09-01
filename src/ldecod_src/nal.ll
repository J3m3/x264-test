; ModuleID = 'ldecod_src/nal.c'
source_filename = "ldecod_src/nal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [40 x i8] c" Panic: All zero data sequence in RBSP \00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @RBSPtoSODB(ptr nocapture noundef readonly %streamBuffer, i32 noundef %last_byte_pos) local_unnamed_addr #0 !dbg !17 {
entry:
    #dbg_value(ptr %streamBuffer, !26, !DIExpression(), !30)
    #dbg_value(i32 %last_byte_pos, !27, !DIExpression(), !30)
    #dbg_value(i32 0, !29, !DIExpression(), !30)
  %0 = sext i32 %last_byte_pos to i64, !dbg !31
  %1 = getelementptr i8, ptr %streamBuffer, i64 %0, !dbg !31
  %arrayidx = getelementptr i8, ptr %1, i64 -1, !dbg !31
  %2 = load i8, ptr %arrayidx, align 1, !dbg !31
  %3 = and i8 %2, 1, !dbg !32
    #dbg_value(i8 %3, !28, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !30)
  %invariant.gep = getelementptr i8, ptr %streamBuffer, i64 -1, !dbg !33
    #dbg_value(i32 0, !29, !DIExpression(), !30)
    #dbg_value(i8 %3, !28, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !30)
    #dbg_value(i32 %last_byte_pos, !27, !DIExpression(), !30)
  %cmp22 = icmp eq i8 %3, 0, !dbg !34
  br i1 %cmp22, label %while.body, label %while.end, !dbg !33

while.body:                                       ; preds = %entry, %if.end7
  %bitoffset.024 = phi i32 [ %bitoffset.1, %if.end7 ], [ 0, %entry ]
  %last_byte_pos.addr.023 = phi i32 [ %last_byte_pos.addr.1, %if.end7 ], [ %last_byte_pos, %entry ]
    #dbg_value(i32 %bitoffset.024, !29, !DIExpression(), !30)
    #dbg_value(i32 %last_byte_pos.addr.023, !27, !DIExpression(), !30)
  %inc = add nsw i32 %bitoffset.024, 1, !dbg !35
    #dbg_value(i32 %inc, !29, !DIExpression(), !30)
  %cmp2 = icmp eq i32 %inc, 8, !dbg !37
  br i1 %cmp2, label %if.then, label %if.end7, !dbg !39

if.then:                                          ; preds = %while.body
  %cmp4 = icmp eq i32 %last_byte_pos.addr.023, 0, !dbg !40
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !43

if.then6:                                         ; preds = %if.then
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !44
  br label %if.end, !dbg !44

if.end:                                           ; preds = %if.then6, %if.then
  %dec = add nsw i32 %last_byte_pos.addr.023, -1, !dbg !45
    #dbg_value(i32 %dec, !27, !DIExpression(), !30)
    #dbg_value(i32 0, !29, !DIExpression(), !30)
  br label %if.end7, !dbg !46

if.end7:                                          ; preds = %if.end, %while.body
  %last_byte_pos.addr.1 = phi i32 [ %dec, %if.end ], [ %last_byte_pos.addr.023, %while.body ]
  %bitoffset.1 = phi i32 [ 0, %if.end ], [ %inc, %while.body ], !dbg !47
    #dbg_value(i32 %bitoffset.1, !29, !DIExpression(), !30)
    #dbg_value(i32 %last_byte_pos.addr.1, !27, !DIExpression(), !30)
  %4 = sext i32 %last_byte_pos.addr.1 to i64, !dbg !48
  %gep = getelementptr i8, ptr %invariant.gep, i64 %4, !dbg !48
  %5 = load i8, ptr %gep, align 1, !dbg !48
  %conv11 = zext i8 %5 to i32, !dbg !48
  %shl12 = shl nuw i32 1, %bitoffset.1, !dbg !49
  %and13 = and i32 %shl12, %conv11, !dbg !50
    #dbg_value(i32 %and13, !28, !DIExpression(), !30)
  %cmp = icmp eq i32 %and13, 0, !dbg !34
  br i1 %cmp, label %while.body, label %while.end, !dbg !33, !llvm.loop !51

while.end:                                        ; preds = %if.end7, %entry
  %last_byte_pos.addr.0.lcssa = phi i32 [ %last_byte_pos, %entry ], [ %last_byte_pos.addr.1, %if.end7 ]
  ret i32 %last_byte_pos.addr.0.lcssa, !dbg !53
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @EBSPtoRBSP(ptr nocapture noundef %streamBuffer, i32 noundef %end_bytepos, i32 noundef %begin_bytepos) local_unnamed_addr #1 !dbg !54 {
entry:
    #dbg_value(ptr %streamBuffer, !58, !DIExpression(), !64)
    #dbg_value(i32 %end_bytepos, !59, !DIExpression(), !64)
    #dbg_value(i32 %begin_bytepos, !60, !DIExpression(), !64)
    #dbg_value(i32 0, !63, !DIExpression(), !64)
  %cmp = icmp slt i32 %end_bytepos, %begin_bytepos, !dbg !65
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !67

for.cond.preheader:                               ; preds = %entry
    #dbg_value(i32 0, !63, !DIExpression(), !64)
    #dbg_value(i32 %begin_bytepos, !62, !DIExpression(), !64)
    #dbg_value(i32 %begin_bytepos, !61, !DIExpression(), !64)
  %cmp173 = icmp slt i32 %begin_bytepos, %end_bytepos, !dbg !68
  br i1 %cmp173, label %for.body.lr.ph, label %cleanup, !dbg !71

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add nsw i32 %end_bytepos, -1
  %0 = sext i32 %begin_bytepos to i64, !dbg !71
  br label %for.body, !dbg !71

for.body:                                         ; preds = %for.body.lr.ph, %if.end31
  %indvars.iv = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end31 ]
  %count.076 = phi i32 [ 0, %for.body.lr.ph ], [ %count.2, %if.end31 ]
  %i.074 = phi i32 [ %begin_bytepos, %for.body.lr.ph ], [ %inc45, %if.end31 ]
    #dbg_value(i32 %count.076, !63, !DIExpression(), !64)
    #dbg_value(i64 %indvars.iv, !62, !DIExpression(), !64)
    #dbg_value(i32 %i.074, !61, !DIExpression(), !64)
  %cmp2 = icmp eq i32 %count.076, 2, !dbg !72
  br i1 %cmp2, label %land.lhs.true, label %if.end31, !dbg !75

land.lhs.true:                                    ; preds = %for.body
  %idxprom = sext i32 %i.074 to i64, !dbg !76
  %arrayidx = getelementptr inbounds i8, ptr %streamBuffer, i64 %idxprom, !dbg !76
  %1 = load i8, ptr %arrayidx, align 1, !dbg !76
  %cmp3 = icmp ult i8 %1, 3, !dbg !77
  br i1 %cmp3, label %cleanup, label %land.lhs.true9, !dbg !78

land.lhs.true9:                                   ; preds = %land.lhs.true
  %cmp13 = icmp eq i8 %1, 3, !dbg !79
  br i1 %cmp13, label %if.then15, label %if.end31, !dbg !81

if.then15:                                        ; preds = %land.lhs.true9
  %cmp16 = icmp slt i32 %i.074, %sub, !dbg !82
  br i1 %cmp16, label %land.lhs.true18, label %if.end25, !dbg !85

land.lhs.true18:                                  ; preds = %if.then15
  %arrayidx20 = getelementptr i8, ptr %arrayidx, i64 1, !dbg !86
  %2 = load i8, ptr %arrayidx20, align 1, !dbg !86
  %cmp22 = icmp ugt i8 %2, 3, !dbg !87
  br i1 %cmp22, label %cleanup, label %if.end25, !dbg !88

if.end25:                                         ; preds = %land.lhs.true18, %if.then15
  %cmp27 = icmp eq i32 %i.074, %sub, !dbg !89
  br i1 %cmp27, label %cleanup.loopexit.split.loop.exit81, label %if.end30, !dbg !91

if.end30:                                         ; preds = %if.end25
  %inc = add nsw i32 %i.074, 1, !dbg !92
    #dbg_value(i32 %inc, !61, !DIExpression(), !64)
    #dbg_value(i32 0, !63, !DIExpression(), !64)
  br label %if.end31, !dbg !93

if.end31:                                         ; preds = %for.body, %if.end30, %land.lhs.true9
  %i.1 = phi i32 [ %inc, %if.end30 ], [ %i.074, %land.lhs.true9 ], [ %i.074, %for.body ], !dbg !94
  %count.1 = phi i32 [ 0, %if.end30 ], [ 2, %land.lhs.true9 ], [ %count.076, %for.body ], !dbg !64
    #dbg_value(i32 %count.1, !63, !DIExpression(), !64)
    #dbg_value(i32 %i.1, !61, !DIExpression(), !64)
  %idxprom32 = sext i32 %i.1 to i64, !dbg !95
  %arrayidx33 = getelementptr inbounds i8, ptr %streamBuffer, i64 %idxprom32, !dbg !95
  %3 = load i8, ptr %arrayidx33, align 1, !dbg !95
  %arrayidx35 = getelementptr inbounds i8, ptr %streamBuffer, i64 %indvars.iv, !dbg !96
  store i8 %3, ptr %arrayidx35, align 1, !dbg !97
  %cmp39 = icmp eq i8 %3, 0, !dbg !98
  %inc42 = add nsw i32 %count.1, 1, !dbg !100
  %count.2 = select i1 %cmp39, i32 %inc42, i32 0, !dbg !100
    #dbg_value(i32 %count.2, !63, !DIExpression(), !64)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !101
    #dbg_value(i64 %indvars.iv.next, !62, !DIExpression(), !64)
  %inc45 = add nsw i32 %i.1, 1, !dbg !102
    #dbg_value(i32 %inc45, !61, !DIExpression(), !64)
  %cmp1 = icmp slt i32 %inc45, %end_bytepos, !dbg !68
  br i1 %cmp1, label %for.body, label %cleanup.loopexit.split.loop.exit, !dbg !71, !llvm.loop !103

cleanup.loopexit.split.loop.exit:                 ; preds = %if.end31
  %indvars.le = trunc i64 %indvars.iv.next to i32
  br label %cleanup, !dbg !105

cleanup.loopexit.split.loop.exit81:               ; preds = %if.end25
  %4 = trunc nsw i64 %indvars.iv to i32
  br label %cleanup, !dbg !105

cleanup:                                          ; preds = %land.lhs.true18, %land.lhs.true, %cleanup.loopexit.split.loop.exit, %cleanup.loopexit.split.loop.exit81, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ %end_bytepos, %entry ], [ %begin_bytepos, %for.cond.preheader ], [ %indvars.le, %cleanup.loopexit.split.loop.exit ], [ %4, %cleanup.loopexit.split.loop.exit81 ], [ -1, %land.lhs.true ], [ -1, %land.lhs.true18 ], !dbg !64
  ret i32 %retval.0, !dbg !105
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "ldecod_src/nal.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "ac4e26de8170da1817c77f4f79d2018d")
!2 = !{!3}
!3 = !DIGlobalVariableExpression(var: !4, expr: !DIExpression())
!4 = distinct !DIGlobalVariable(scope: null, file: !1, line: 48, type: !5, isLocal: true, isDefinition: true)
!5 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 328, elements: !7)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{!8}
!8 = !DISubrange(count: 41)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!16 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!17 = distinct !DISubprogram(name: "RBSPtoSODB", scope: !1, file: !1, line: 34, type: !18, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !25)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21, !20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !{!26, !27, !28, !29}
!26 = !DILocalVariable(name: "streamBuffer", arg: 1, scope: !17, file: !1, line: 34, type: !21)
!27 = !DILocalVariable(name: "last_byte_pos", arg: 2, scope: !17, file: !1, line: 34, type: !20)
!28 = !DILocalVariable(name: "ctr_bit", scope: !17, file: !1, line: 36, type: !20)
!29 = !DILocalVariable(name: "bitoffset", scope: !17, file: !1, line: 36, type: !20)
!30 = !DILocation(line: 0, scope: !17)
!31 = !DILocation(line: 40, column: 14, scope: !17)
!32 = !DILocation(line: 40, column: 44, scope: !17)
!33 = !DILocation(line: 42, column: 3, scope: !17)
!34 = !DILocation(line: 42, column: 17, scope: !17)
!35 = !DILocation(line: 44, column: 5, scope: !36)
!36 = distinct !DILexicalBlock(scope: !17, file: !1, line: 43, column: 3)
!37 = !DILocation(line: 45, column: 18, scope: !38)
!38 = distinct !DILexicalBlock(scope: !36, file: !1, line: 45, column: 8)
!39 = !DILocation(line: 45, column: 8, scope: !36)
!40 = !DILocation(line: 47, column: 24, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 47, column: 10)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 46, column: 5)
!43 = !DILocation(line: 47, column: 10, scope: !42)
!44 = !DILocation(line: 48, column: 9, scope: !41)
!45 = !DILocation(line: 50, column: 7, scope: !42)
!46 = !DILocation(line: 52, column: 5, scope: !42)
!47 = !DILocation(line: 0, scope: !36)
!48 = !DILocation(line: 53, column: 14, scope: !36)
!49 = !DILocation(line: 53, column: 53, scope: !36)
!50 = !DILocation(line: 53, column: 46, scope: !36)
!51 = distinct !{!51, !33, !52}
!52 = !DILocation(line: 54, column: 3, scope: !17)
!53 = !DILocation(line: 66, column: 3, scope: !17)
!54 = distinct !DISubprogram(name: "EBSPtoRBSP", scope: !1, file: !1, line: 84, type: !55, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{!20, !21, !20, !20}
!57 = !{!58, !59, !60, !61, !62, !63}
!58 = !DILocalVariable(name: "streamBuffer", arg: 1, scope: !54, file: !1, line: 84, type: !21)
!59 = !DILocalVariable(name: "end_bytepos", arg: 2, scope: !54, file: !1, line: 84, type: !20)
!60 = !DILocalVariable(name: "begin_bytepos", arg: 3, scope: !54, file: !1, line: 84, type: !20)
!61 = !DILocalVariable(name: "i", scope: !54, file: !1, line: 86, type: !20)
!62 = !DILocalVariable(name: "j", scope: !54, file: !1, line: 86, type: !20)
!63 = !DILocalVariable(name: "count", scope: !54, file: !1, line: 86, type: !20)
!64 = !DILocation(line: 0, scope: !54)
!65 = !DILocation(line: 89, column: 18, scope: !66)
!66 = distinct !DILexicalBlock(scope: !54, file: !1, line: 89, column: 6)
!67 = !DILocation(line: 89, column: 6, scope: !54)
!68 = !DILocation(line: 94, column: 28, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 94, column: 3)
!70 = distinct !DILexicalBlock(scope: !54, file: !1, line: 94, column: 3)
!71 = !DILocation(line: 94, column: 3, scope: !70)
!72 = !DILocation(line: 97, column: 14, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 97, column: 8)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 95, column: 3)
!75 = !DILocation(line: 97, column: 42, scope: !73)
!76 = !DILocation(line: 97, column: 45, scope: !73)
!77 = !DILocation(line: 97, column: 61, scope: !73)
!78 = !DILocation(line: 97, column: 8, scope: !74)
!79 = !DILocation(line: 99, column: 61, scope: !80)
!80 = distinct !DILexicalBlock(scope: !74, file: !1, line: 99, column: 8)
!81 = !DILocation(line: 99, column: 8, scope: !74)
!82 = !DILocation(line: 102, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 102, column: 10)
!84 = distinct !DILexicalBlock(scope: !80, file: !1, line: 100, column: 5)
!85 = !DILocation(line: 102, column: 30, scope: !83)
!86 = !DILocation(line: 102, column: 34, scope: !83)
!87 = !DILocation(line: 102, column: 52, scope: !83)
!88 = !DILocation(line: 102, column: 10, scope: !84)
!89 = !DILocation(line: 105, column: 12, scope: !90)
!90 = distinct !DILexicalBlock(scope: !84, file: !1, line: 105, column: 10)
!91 = !DILocation(line: 105, column: 10, scope: !84)
!92 = !DILocation(line: 108, column: 7, scope: !84)
!93 = !DILocation(line: 110, column: 5, scope: !84)
!94 = !DILocation(line: 0, scope: !70)
!95 = !DILocation(line: 111, column: 23, scope: !74)
!96 = !DILocation(line: 111, column: 5, scope: !74)
!97 = !DILocation(line: 111, column: 21, scope: !74)
!98 = !DILocation(line: 112, column: 24, scope: !99)
!99 = distinct !DILexicalBlock(scope: !74, file: !1, line: 112, column: 8)
!100 = !DILocation(line: 112, column: 8, scope: !74)
!101 = !DILocation(line: 116, column: 5, scope: !74)
!102 = !DILocation(line: 94, column: 43, scope: !69)
!103 = distinct !{!103, !71, !104}
!104 = !DILocation(line: 117, column: 3, scope: !70)
!105 = !DILocation(line: 120, column: 1, scope: !54)
