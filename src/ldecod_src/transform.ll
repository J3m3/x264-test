; ModuleID = 'ldecod_src/transform.c'
source_filename = "ldecod_src/transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @forward4x4(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %tblock, i32 noundef %pos_y, i32 noundef %pos_x) local_unnamed_addr #0 !dbg !10 {
for.cond17.preheader:
    #dbg_value(ptr %block, !17, !DIExpression(), !37)
    #dbg_value(ptr %tblock, !18, !DIExpression(), !37)
    #dbg_value(i32 %pos_y, !19, !DIExpression(), !37)
    #dbg_value(i32 %pos_x, !20, !DIExpression(), !37)
    #dbg_value(ptr undef, !27, !DIExpression(), !37)
    #dbg_value(i32 %pos_y, !21, !DIExpression(), !37)
  %idxprom1 = sext i32 %pos_x to i64
  %0 = sext i32 %pos_y to i64, !dbg !38
    #dbg_value(i64 %0, !21, !DIExpression(), !37)
  %arrayidx = getelementptr inbounds ptr, ptr %block, i64 %0, !dbg !40
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !40
  %arrayidx2 = getelementptr inbounds i32, ptr %1, i64 %idxprom1, !dbg !40
    #dbg_value(ptr %arrayidx2, !28, !DIExpression(), !37)
  %incdec.ptr = getelementptr inbounds i8, ptr %arrayidx2, i64 4, !dbg !43
    #dbg_value(ptr %incdec.ptr, !28, !DIExpression(), !37)
  %2 = load i32, ptr %arrayidx2, align 4, !dbg !44
    #dbg_value(i32 %2, !29, !DIExpression(), !37)
  %incdec.ptr3 = getelementptr inbounds i8, ptr %arrayidx2, i64 8, !dbg !45
    #dbg_value(ptr %incdec.ptr3, !28, !DIExpression(), !37)
  %3 = load i32, ptr %incdec.ptr, align 4, !dbg !46
    #dbg_value(i32 %3, !30, !DIExpression(), !37)
  %incdec.ptr4 = getelementptr inbounds i8, ptr %arrayidx2, i64 12, !dbg !47
    #dbg_value(ptr %incdec.ptr4, !28, !DIExpression(), !37)
  %4 = load i32, ptr %incdec.ptr3, align 4, !dbg !48
    #dbg_value(i32 %4, !31, !DIExpression(), !37)
  %5 = load i32, ptr %incdec.ptr4, align 4, !dbg !49
    #dbg_value(!DIArgList(i32 %5, i32 %4, i32 %3, i32 %2), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !37)
    #dbg_value(!DIArgList(i32 %2, i32 %3, i32 %4, i32 %5), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !37)
    #dbg_value(!DIArgList(i32 %5, i32 %4, i32 %3, i32 %2), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !37)
    #dbg_value(!DIArgList(i32 %2, i32 %3, i32 %4, i32 %5), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 32), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 32), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 32), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 32), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 288, 32), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 32), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 352, 32), !37)
    #dbg_value(i32 poison, !29, !DIExpression(), !37)
    #dbg_value(i32 poison, !30, !DIExpression(), !37)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !28, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !37)
    #dbg_value(i32 poison, !31, !DIExpression(), !37)
    #dbg_value(i32 poison, !32, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !33, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !34, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !35, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !36, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 384, 32), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 416, 32), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !37)
    #dbg_value(ptr undef, !27, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !37)
    #dbg_value(i64 %0, !21, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !37)
  %6 = getelementptr ptr, ptr %block, i64 %0, !dbg !40
  %arrayidx.3 = getelementptr i8, ptr %6, i64 24, !dbg !40
  %7 = load ptr, ptr %arrayidx.3, align 8, !dbg !40
    #dbg_value(!DIArgList(ptr %7, i64 %idxprom1), !28, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !37)
  %arrayidx2.3 = getelementptr inbounds i32, ptr %7, i64 %idxprom1, !dbg !40
    #dbg_value(ptr %arrayidx2.3, !28, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !37)
  %8 = load i32, ptr %arrayidx2.3, align 4, !dbg !44
    #dbg_value(i32 %8, !29, !DIExpression(), !37)
  %incdec.ptr4.3 = getelementptr inbounds i8, ptr %arrayidx2.3, i64 12, !dbg !47
    #dbg_value(ptr %incdec.ptr4.3, !28, !DIExpression(), !37)
  %9 = load i32, ptr %incdec.ptr4.3, align 4, !dbg !49
    #dbg_value(!DIArgList(i32 %8, i32 %9), !36, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 %9, i32 %8), !33, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37)
    #dbg_value(i32 %9, !32, !DIExpression(), !37)
  %sub7.3 = sub nsw i32 %8, %9, !dbg !50
    #dbg_value(i32 %sub7.3, !36, !DIExpression(), !37)
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %arrayidx2.3, i64 4, !dbg !43
    #dbg_value(ptr %incdec.ptr.3, !28, !DIExpression(), !37)
  %10 = load i32, ptr %incdec.ptr.3, align 4, !dbg !46
    #dbg_value(i32 %10, !30, !DIExpression(), !37)
  %incdec.ptr3.3 = getelementptr inbounds i8, ptr %arrayidx2.3, i64 8, !dbg !45
    #dbg_value(ptr %incdec.ptr3.3, !28, !DIExpression(), !37)
  %11 = load i32, ptr %incdec.ptr3.3, align 4, !dbg !48
    #dbg_value(i32 %11, !31, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %10, i32 %11), !35, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 %11, i32 %10), !34, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 %sub7.3, i32 %10, i32 %11), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !37)
    #dbg_value(!DIArgList(i32 %sub7.3, i32 %10, i32 %11), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 416, 32), !37)
    #dbg_value(!DIArgList(i32 %9, i32 %11, i32 %10, i32 %8), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 384, 32), !37)
    #dbg_value(!DIArgList(i32 %9, i32 %11, i32 %10, i32 %8), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !37)
  %sub.3 = sub nsw i32 %10, %11, !dbg !51
    #dbg_value(i32 %sub.3, !35, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %sub7.3, i32 %sub.3), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 416, 32), !37)
    #dbg_value(!DIArgList(i32 %sub7.3, i32 %sub.3), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !37)
  %shl14.3 = shl i32 %sub.3, 1, !dbg !52
    #dbg_value(!DIArgList(i32 %sub7.3, i32 %shl14.3), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !37)
  %sub15.3 = sub nsw i32 %sub7.3, %shl14.3, !dbg !53
    #dbg_value(i32 %sub15.3, !23, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !37)
  %add5.3 = add nsw i32 %9, %8, !dbg !54
    #dbg_value(i32 %add5.3, !33, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %add5.3, i32 %11, i32 %10), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !37)
    #dbg_value(!DIArgList(i32 %add5.3, i32 %11, i32 %10), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 384, 32), !37)
  %add6.3 = add nsw i32 %11, %10, !dbg !55
    #dbg_value(i32 %add6.3, !34, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %add5.3, i32 %add6.3), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 384, 32), !37)
    #dbg_value(!DIArgList(i32 %add5.3, i32 %add6.3), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !37)
  %sub12.3 = sub nsw i32 %add5.3, %add6.3, !dbg !56
    #dbg_value(i32 %sub12.3, !23, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !37)
  %shl.3 = shl i32 %sub7.3, 1, !dbg !57
    #dbg_value(!DIArgList(i32 %shl.3, i32 %sub.3), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 416, 32), !37)
  %add10.3 = add nsw i32 %shl.3, %sub.3, !dbg !58
    #dbg_value(i32 %add10.3, !23, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !37)
  %add8.3 = add nsw i32 %add5.3, %add6.3, !dbg !59
    #dbg_value(i32 %add8.3, !23, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !37)
  %12 = getelementptr ptr, ptr %block, i64 %0, !dbg !40
  %arrayidx.2 = getelementptr i8, ptr %12, i64 16, !dbg !40
  %13 = load ptr, ptr %arrayidx.2, align 8, !dbg !40
    #dbg_value(!DIArgList(ptr %13, i64 %idxprom1), !28, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !37)
  %arrayidx2.2 = getelementptr inbounds i32, ptr %13, i64 %idxprom1, !dbg !40
    #dbg_value(ptr %arrayidx2.2, !28, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !37)
  %14 = load i32, ptr %arrayidx2.2, align 4, !dbg !44
    #dbg_value(i32 %14, !29, !DIExpression(), !37)
  %incdec.ptr4.2 = getelementptr inbounds i8, ptr %arrayidx2.2, i64 12, !dbg !47
    #dbg_value(ptr %incdec.ptr4.2, !28, !DIExpression(), !37)
  %15 = load i32, ptr %incdec.ptr4.2, align 4, !dbg !49
    #dbg_value(!DIArgList(i32 %14, i32 %15), !36, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 %15, i32 %14), !33, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37)
    #dbg_value(i32 %15, !32, !DIExpression(), !37)
  %sub7.2 = sub nsw i32 %14, %15, !dbg !50
    #dbg_value(i32 %sub7.2, !36, !DIExpression(), !37)
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %arrayidx2.2, i64 4, !dbg !43
    #dbg_value(ptr %incdec.ptr.2, !28, !DIExpression(), !37)
  %16 = load i32, ptr %incdec.ptr.2, align 4, !dbg !46
    #dbg_value(i32 %16, !30, !DIExpression(), !37)
  %incdec.ptr3.2 = getelementptr inbounds i8, ptr %arrayidx2.2, i64 8, !dbg !45
    #dbg_value(ptr %incdec.ptr3.2, !28, !DIExpression(), !37)
  %17 = load i32, ptr %incdec.ptr3.2, align 4, !dbg !48
    #dbg_value(i32 %17, !31, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %16, i32 %17), !35, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 %17, i32 %16), !34, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 %sub7.2, i32 %16, i32 %17), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 352, 32), !37)
    #dbg_value(!DIArgList(i32 %sub7.2, i32 %16, i32 %17), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 288, 32), !37)
    #dbg_value(!DIArgList(i32 %15, i32 %17, i32 %16, i32 %14), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 32), !37)
    #dbg_value(!DIArgList(i32 %15, i32 %17, i32 %16, i32 %14), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 32), !37)
  %sub.2 = sub nsw i32 %16, %17, !dbg !51
    #dbg_value(i32 %sub.2, !35, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %sub7.2, i32 %sub.2), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 288, 32), !37)
    #dbg_value(!DIArgList(i32 %sub7.2, i32 %sub.2), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 352, 32), !37)
  %shl14.2 = shl i32 %sub.2, 1, !dbg !52
    #dbg_value(!DIArgList(i32 %sub7.2, i32 %shl14.2), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 352, 32), !37)
  %sub15.2 = sub nsw i32 %sub7.2, %shl14.2, !dbg !53
    #dbg_value(i32 %sub15.2, !23, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !37)
  %add5.2 = add nsw i32 %15, %14, !dbg !54
    #dbg_value(i32 %add5.2, !33, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %add5.2, i32 %17, i32 %16), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 32), !37)
    #dbg_value(!DIArgList(i32 %add5.2, i32 %17, i32 %16), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 32), !37)
  %add6.2 = add nsw i32 %17, %16, !dbg !55
    #dbg_value(i32 %add6.2, !34, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %add5.2, i32 %add6.2), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 32), !37)
    #dbg_value(!DIArgList(i32 %add5.2, i32 %add6.2), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 32), !37)
  %sub12.2 = sub nsw i32 %add5.2, %add6.2, !dbg !56
    #dbg_value(i32 %sub12.2, !23, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !37)
  %shl.2 = shl i32 %sub7.2, 1, !dbg !57
    #dbg_value(!DIArgList(i32 %shl.2, i32 %sub.2), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 288, 32), !37)
  %add10.2 = add nsw i32 %shl.2, %sub.2, !dbg !58
    #dbg_value(i32 %add10.2, !23, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !37)
  %add8.2 = add nsw i32 %add5.2, %add6.2, !dbg !59
    #dbg_value(i32 %add8.2, !23, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !37)
  %18 = getelementptr ptr, ptr %block, i64 %0, !dbg !40
  %arrayidx.1 = getelementptr i8, ptr %18, i64 8, !dbg !40
  %19 = load ptr, ptr %arrayidx.1, align 8, !dbg !40
    #dbg_value(!DIArgList(ptr %19, i64 %idxprom1), !28, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !37)
  %arrayidx2.1 = getelementptr inbounds i32, ptr %19, i64 %idxprom1, !dbg !40
    #dbg_value(ptr %arrayidx2.1, !28, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !37)
  %20 = load i32, ptr %arrayidx2.1, align 4, !dbg !44
    #dbg_value(i32 %20, !29, !DIExpression(), !37)
  %incdec.ptr4.1 = getelementptr inbounds i8, ptr %arrayidx2.1, i64 12, !dbg !47
    #dbg_value(ptr %incdec.ptr4.1, !28, !DIExpression(), !37)
  %21 = load i32, ptr %incdec.ptr4.1, align 4, !dbg !49
    #dbg_value(!DIArgList(i32 %20, i32 %21), !36, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 %21, i32 %20), !33, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37)
    #dbg_value(i32 %21, !32, !DIExpression(), !37)
  %sub7.1 = sub nsw i32 %20, %21, !dbg !50
    #dbg_value(i32 %sub7.1, !36, !DIExpression(), !37)
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %arrayidx2.1, i64 4, !dbg !43
    #dbg_value(ptr %incdec.ptr.1, !28, !DIExpression(), !37)
  %22 = load i32, ptr %incdec.ptr.1, align 4, !dbg !46
    #dbg_value(i32 %22, !30, !DIExpression(), !37)
  %incdec.ptr3.1 = getelementptr inbounds i8, ptr %arrayidx2.1, i64 8, !dbg !45
    #dbg_value(ptr %incdec.ptr3.1, !28, !DIExpression(), !37)
  %23 = load i32, ptr %incdec.ptr3.1, align 4, !dbg !48
    #dbg_value(i32 %23, !31, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %22, i32 %23), !35, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 %23, i32 %22), !34, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !37)
    #dbg_value(!DIArgList(i32 %sub7.1, i32 %22, i32 %23), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 32), !37)
    #dbg_value(!DIArgList(i32 %sub7.1, i32 %22, i32 %23), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !37)
    #dbg_value(!DIArgList(i32 %21, i32 %23, i32 %22, i32 %20), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !37)
    #dbg_value(!DIArgList(i32 %21, i32 %23, i32 %22, i32 %20), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 32), !37)
  %sub.1 = sub nsw i32 %22, %23, !dbg !51
    #dbg_value(i32 %sub.1, !35, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %sub7.1, i32 %sub.1), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !37)
    #dbg_value(!DIArgList(i32 %sub7.1, i32 %sub.1), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 32), !37)
  %shl14.1 = shl i32 %sub.1, 1, !dbg !52
    #dbg_value(!DIArgList(i32 %sub7.1, i32 %shl14.1), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 32), !37)
  %sub15.1 = sub nsw i32 %sub7.1, %shl14.1, !dbg !53
    #dbg_value(i32 %sub15.1, !23, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !37)
  %add5.1 = add nsw i32 %21, %20, !dbg !54
    #dbg_value(i32 %add5.1, !33, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %add5.1, i32 %23, i32 %22), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 32), !37)
    #dbg_value(!DIArgList(i32 %add5.1, i32 %23, i32 %22), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !37)
  %add6.1 = add nsw i32 %23, %22, !dbg !55
    #dbg_value(i32 %add6.1, !34, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %add5.1, i32 %add6.1), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !37)
    #dbg_value(!DIArgList(i32 %add5.1, i32 %add6.1), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 32), !37)
  %sub12.1 = sub nsw i32 %add5.1, %add6.1, !dbg !56
    #dbg_value(i32 %sub12.1, !23, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !37)
  %shl.1 = shl i32 %sub7.1, 1, !dbg !57
    #dbg_value(!DIArgList(i32 %shl.1, i32 %sub.1), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !37)
  %add10.1 = add nsw i32 %shl.1, %sub.1, !dbg !58
    #dbg_value(i32 %add10.1, !23, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !37)
  %add8.1 = add nsw i32 %add5.1, %add6.1, !dbg !59
    #dbg_value(i32 %add8.1, !23, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !37)
  %sub7 = sub nsw i32 %2, %5, !dbg !50
    #dbg_value(!DIArgList(i32 %sub7, i32 %3, i32 %4), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 32), !37)
    #dbg_value(!DIArgList(i32 %sub7, i32 %3, i32 %4), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !37)
    #dbg_value(i32 %sub7, !36, !DIExpression(), !37)
  %sub = sub nsw i32 %3, %4, !dbg !51
    #dbg_value(i32 %sub, !35, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %sub7, i32 %sub), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !37)
    #dbg_value(!DIArgList(i32 %sub7, i32 %sub), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 32), !37)
  %shl14 = shl i32 %sub, 1, !dbg !52
    #dbg_value(!DIArgList(i32 %sub7, i32 %shl14), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 32), !37)
  %sub15 = sub nsw i32 %sub7, %shl14, !dbg !53
    #dbg_value(i32 %sub15, !23, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !37)
  %add5 = add nsw i32 %5, %2, !dbg !54
    #dbg_value(i32 %add5, !33, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %add5, i32 %4, i32 %3), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !37)
    #dbg_value(!DIArgList(i32 %add5, i32 %4, i32 %3), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !37)
  %add6 = add nsw i32 %4, %3, !dbg !55
    #dbg_value(i32 %add6, !34, !DIExpression(), !37)
    #dbg_value(!DIArgList(i32 %add5, i32 %add6), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !37)
    #dbg_value(!DIArgList(i32 %add5, i32 %add6), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !37)
  %sub12 = sub nsw i32 %add5, %add6, !dbg !56
    #dbg_value(i32 %sub12, !23, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !37)
  %shl = shl i32 %sub7, 1, !dbg !57
    #dbg_value(!DIArgList(i32 %shl, i32 %sub), !23, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !37)
  %add10 = add nsw i32 %shl, %sub, !dbg !58
    #dbg_value(i32 %add10, !23, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !37)
  %add8 = add nsw i32 %add5, %add6, !dbg !59
    #dbg_value(i32 %add8, !23, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !37)
    #dbg_value(i32 %sub15.3, !23, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !37)
    #dbg_value(i32 %sub12.3, !23, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !37)
    #dbg_value(i32 %add10.3, !23, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !37)
    #dbg_value(i32 %add8.3, !23, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !37)
    #dbg_value(i32 %add8.1, !23, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !37)
    #dbg_value(i32 %add10.1, !23, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !37)
    #dbg_value(i32 %sub12.1, !23, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !37)
    #dbg_value(i32 %sub15.1, !23, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !37)
    #dbg_value(i32 %add8.2, !23, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !37)
    #dbg_value(i32 %add10.2, !23, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !37)
    #dbg_value(i32 %sub12.2, !23, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !37)
    #dbg_value(i32 %sub15.2, !23, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !37)
  %arrayidx31 = getelementptr inbounds ptr, ptr %tblock, i64 %0
  %arrayidx38 = getelementptr i8, ptr %arrayidx31, i64 8
  %arrayidx44 = getelementptr i8, ptr %arrayidx31, i64 16
  %arrayidx51 = getelementptr i8, ptr %arrayidx31, i64 24
    #dbg_value(i64 0, !21, !DIExpression(), !37)
    #dbg_value(i32 %add8, !29, !DIExpression(), !37)
    #dbg_value(i32 %add8.1, !30, !DIExpression(), !37)
    #dbg_value(i32 %add8.2, !31, !DIExpression(), !37)
    #dbg_value(ptr undef, !27, !DIExpression(), !37)
    #dbg_value(i32 %add8.3, !32, !DIExpression(), !37)
  %add24 = add nsw i32 %add8.3, %add8, !dbg !60
    #dbg_value(i32 %add24, !33, !DIExpression(), !37)
  %add25 = add nsw i32 %add8.2, %add8.1, !dbg !64
    #dbg_value(i32 %add25, !34, !DIExpression(), !37)
  %sub26 = sub nsw i32 %add8.1, %add8.2, !dbg !65
    #dbg_value(i32 %sub26, !35, !DIExpression(), !37)
  %sub27 = sub nsw i32 %add8, %add8.3, !dbg !66
    #dbg_value(i32 %sub27, !36, !DIExpression(), !37)
    #dbg_value(i64 %idxprom1, !22, !DIExpression(), !37)
  %add29 = add nsw i32 %add24, %add25, !dbg !67
  %24 = load ptr, ptr %arrayidx31, align 8, !dbg !68
  %arrayidx33 = getelementptr inbounds i32, ptr %24, i64 %idxprom1, !dbg !68
  store i32 %add29, ptr %arrayidx33, align 4, !dbg !69
  %shl34 = shl i32 %sub27, 1, !dbg !70
  %add35 = add nsw i32 %shl34, %sub26, !dbg !71
  %25 = load ptr, ptr %arrayidx38, align 8, !dbg !72
  %arrayidx40 = getelementptr inbounds i32, ptr %25, i64 %idxprom1, !dbg !72
  store i32 %add35, ptr %arrayidx40, align 4, !dbg !73
  %sub41 = sub nsw i32 %add24, %add25, !dbg !74
  %26 = load ptr, ptr %arrayidx44, align 8, !dbg !75
  %arrayidx46 = getelementptr inbounds i32, ptr %26, i64 %idxprom1, !dbg !75
  store i32 %sub41, ptr %arrayidx46, align 4, !dbg !76
  %shl47 = shl i32 %sub26, 1, !dbg !77
  %sub48 = sub nsw i32 %sub27, %shl47, !dbg !78
  %27 = load ptr, ptr %arrayidx51, align 8, !dbg !79
  %arrayidx53 = getelementptr inbounds i32, ptr %27, i64 %idxprom1, !dbg !79
  store i32 %sub48, ptr %arrayidx53, align 4, !dbg !80
    #dbg_value(i64 1, !21, !DIExpression(), !37)
    #dbg_value(i32 %add10, !29, !DIExpression(), !37)
    #dbg_value(i32 %add10.1, !30, !DIExpression(), !37)
    #dbg_value(i32 %add10.2, !31, !DIExpression(), !37)
    #dbg_value(i32 %add10.3, !32, !DIExpression(), !37)
  %add24.1 = add nsw i32 %add10.3, %add10, !dbg !60
    #dbg_value(i32 %add24.1, !33, !DIExpression(), !37)
  %add25.1 = add nsw i32 %add10.2, %add10.1, !dbg !64
    #dbg_value(i32 %add25.1, !34, !DIExpression(), !37)
  %sub26.1 = sub nsw i32 %add10.1, %add10.2, !dbg !65
    #dbg_value(i32 %sub26.1, !35, !DIExpression(), !37)
  %sub27.1 = sub nsw i32 %add10, %add10.3, !dbg !66
    #dbg_value(i32 %sub27.1, !36, !DIExpression(), !37)
  %28 = add nsw i64 %idxprom1, 1, !dbg !81
    #dbg_value(i64 %28, !22, !DIExpression(), !37)
  %add29.1 = add nsw i32 %add24.1, %add25.1, !dbg !67
  %29 = load ptr, ptr %arrayidx31, align 8, !dbg !68
  %arrayidx33.1 = getelementptr inbounds i32, ptr %29, i64 %28, !dbg !68
  store i32 %add29.1, ptr %arrayidx33.1, align 4, !dbg !69
  %shl34.1 = shl i32 %sub27.1, 1, !dbg !70
  %add35.1 = add nsw i32 %shl34.1, %sub26.1, !dbg !71
  %30 = load ptr, ptr %arrayidx38, align 8, !dbg !72
  %arrayidx40.1 = getelementptr inbounds i32, ptr %30, i64 %28, !dbg !72
  store i32 %add35.1, ptr %arrayidx40.1, align 4, !dbg !73
  %sub41.1 = sub nsw i32 %add24.1, %add25.1, !dbg !74
  %31 = load ptr, ptr %arrayidx44, align 8, !dbg !75
  %arrayidx46.1 = getelementptr inbounds i32, ptr %31, i64 %28, !dbg !75
  store i32 %sub41.1, ptr %arrayidx46.1, align 4, !dbg !76
  %shl47.1 = shl i32 %sub26.1, 1, !dbg !77
  %sub48.1 = sub nsw i32 %sub27.1, %shl47.1, !dbg !78
  %32 = load ptr, ptr %arrayidx51, align 8, !dbg !79
  %arrayidx53.1 = getelementptr inbounds i32, ptr %32, i64 %28, !dbg !79
  store i32 %sub48.1, ptr %arrayidx53.1, align 4, !dbg !80
    #dbg_value(i64 2, !21, !DIExpression(), !37)
    #dbg_value(i32 %sub12, !29, !DIExpression(), !37)
    #dbg_value(i32 %sub12.1, !30, !DIExpression(), !37)
    #dbg_value(i32 %sub12.2, !31, !DIExpression(), !37)
    #dbg_value(i32 %sub12.3, !32, !DIExpression(), !37)
  %add24.2 = add nsw i32 %sub12.3, %sub12, !dbg !60
    #dbg_value(i32 %add24.2, !33, !DIExpression(), !37)
  %add25.2 = add nsw i32 %sub12.2, %sub12.1, !dbg !64
    #dbg_value(i32 %add25.2, !34, !DIExpression(), !37)
  %sub26.2 = sub nsw i32 %sub12.1, %sub12.2, !dbg !65
    #dbg_value(i32 %sub26.2, !35, !DIExpression(), !37)
  %sub27.2 = sub nsw i32 %sub12, %sub12.3, !dbg !66
    #dbg_value(i32 %sub27.2, !36, !DIExpression(), !37)
  %33 = add nsw i64 %idxprom1, 2, !dbg !81
    #dbg_value(i64 %33, !22, !DIExpression(), !37)
  %add29.2 = add nsw i32 %add24.2, %add25.2, !dbg !67
  %34 = load ptr, ptr %arrayidx31, align 8, !dbg !68
  %arrayidx33.2 = getelementptr inbounds i32, ptr %34, i64 %33, !dbg !68
  store i32 %add29.2, ptr %arrayidx33.2, align 4, !dbg !69
  %shl34.2 = shl i32 %sub27.2, 1, !dbg !70
  %add35.2 = add nsw i32 %shl34.2, %sub26.2, !dbg !71
  %35 = load ptr, ptr %arrayidx38, align 8, !dbg !72
  %arrayidx40.2 = getelementptr inbounds i32, ptr %35, i64 %33, !dbg !72
  store i32 %add35.2, ptr %arrayidx40.2, align 4, !dbg !73
  %sub41.2 = sub nsw i32 %add24.2, %add25.2, !dbg !74
  %36 = load ptr, ptr %arrayidx44, align 8, !dbg !75
  %arrayidx46.2 = getelementptr inbounds i32, ptr %36, i64 %33, !dbg !75
  store i32 %sub41.2, ptr %arrayidx46.2, align 4, !dbg !76
  %shl47.2 = shl i32 %sub26.2, 1, !dbg !77
  %sub48.2 = sub nsw i32 %sub27.2, %shl47.2, !dbg !78
  %37 = load ptr, ptr %arrayidx51, align 8, !dbg !79
  %arrayidx53.2 = getelementptr inbounds i32, ptr %37, i64 %33, !dbg !79
  store i32 %sub48.2, ptr %arrayidx53.2, align 4, !dbg !80
    #dbg_value(i64 3, !21, !DIExpression(), !37)
    #dbg_value(i32 %sub15, !29, !DIExpression(), !37)
    #dbg_value(i32 %sub15.1, !30, !DIExpression(), !37)
    #dbg_value(i32 %sub15.2, !31, !DIExpression(), !37)
    #dbg_value(i32 %sub15.3, !32, !DIExpression(), !37)
  %add24.3 = add nsw i32 %sub15.3, %sub15, !dbg !60
    #dbg_value(i32 %add24.3, !33, !DIExpression(), !37)
  %add25.3 = add nsw i32 %sub15.2, %sub15.1, !dbg !64
    #dbg_value(i32 %add25.3, !34, !DIExpression(), !37)
  %sub26.3 = sub nsw i32 %sub15.1, %sub15.2, !dbg !65
    #dbg_value(i32 %sub26.3, !35, !DIExpression(), !37)
  %sub27.3 = sub nsw i32 %sub15, %sub15.3, !dbg !66
    #dbg_value(i32 %sub27.3, !36, !DIExpression(), !37)
  %38 = add nsw i64 %idxprom1, 3, !dbg !81
    #dbg_value(i64 %38, !22, !DIExpression(), !37)
  %add29.3 = add nsw i32 %add24.3, %add25.3, !dbg !67
  %39 = load ptr, ptr %arrayidx31, align 8, !dbg !68
  %arrayidx33.3 = getelementptr inbounds i32, ptr %39, i64 %38, !dbg !68
  store i32 %add29.3, ptr %arrayidx33.3, align 4, !dbg !69
  %shl34.3 = shl i32 %sub27.3, 1, !dbg !70
  %add35.3 = add nsw i32 %shl34.3, %sub26.3, !dbg !71
  %40 = load ptr, ptr %arrayidx38, align 8, !dbg !72
  %arrayidx40.3 = getelementptr inbounds i32, ptr %40, i64 %38, !dbg !72
  store i32 %add35.3, ptr %arrayidx40.3, align 4, !dbg !73
  %sub41.3 = sub nsw i32 %add24.3, %add25.3, !dbg !74
  %41 = load ptr, ptr %arrayidx44, align 8, !dbg !75
  %arrayidx46.3 = getelementptr inbounds i32, ptr %41, i64 %38, !dbg !75
  store i32 %sub41.3, ptr %arrayidx46.3, align 4, !dbg !76
  %shl47.3 = shl i32 %sub26.3, 1, !dbg !77
  %sub48.3 = sub nsw i32 %sub27.3, %shl47.3, !dbg !78
  %42 = load ptr, ptr %arrayidx51, align 8, !dbg !79
  %arrayidx53.3 = getelementptr inbounds i32, ptr %42, i64 %38, !dbg !79
  store i32 %sub48.3, ptr %arrayidx53.3, align 4, !dbg !80
    #dbg_value(i64 4, !21, !DIExpression(), !37)
  ret void, !dbg !82
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @inverse4x4(ptr nocapture noundef readonly %tblock, ptr nocapture noundef readonly %block, i32 noundef %pos_y, i32 noundef %pos_x) local_unnamed_addr #0 !dbg !83 {
for.cond17.preheader:
    #dbg_value(ptr %tblock, !85, !DIExpression(), !102)
    #dbg_value(ptr %block, !86, !DIExpression(), !102)
    #dbg_value(i32 %pos_y, !87, !DIExpression(), !102)
    #dbg_value(i32 %pos_x, !88, !DIExpression(), !102)
    #dbg_value(ptr undef, !92, !DIExpression(), !102)
    #dbg_value(i32 %pos_y, !89, !DIExpression(), !102)
  %idxprom1 = sext i32 %pos_x to i64
  %0 = sext i32 %pos_y to i64, !dbg !103
    #dbg_value(i64 %0, !89, !DIExpression(), !102)
  %arrayidx = getelementptr inbounds ptr, ptr %tblock, i64 %0, !dbg !105
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !105
  %arrayidx2 = getelementptr inbounds i32, ptr %1, i64 %idxprom1, !dbg !105
    #dbg_value(ptr %arrayidx2, !93, !DIExpression(), !102)
  %incdec.ptr = getelementptr inbounds i8, ptr %arrayidx2, i64 4, !dbg !108
    #dbg_value(ptr %incdec.ptr, !93, !DIExpression(), !102)
  %2 = load i32, ptr %arrayidx2, align 4, !dbg !109
    #dbg_value(i32 %2, !98, !DIExpression(), !102)
  %incdec.ptr3 = getelementptr inbounds i8, ptr %arrayidx2, i64 8, !dbg !110
    #dbg_value(ptr %incdec.ptr3, !93, !DIExpression(), !102)
  %3 = load i32, ptr %incdec.ptr, align 4, !dbg !111
    #dbg_value(i32 %3, !99, !DIExpression(), !102)
  %incdec.ptr4 = getelementptr inbounds i8, ptr %arrayidx2, i64 12, !dbg !112
    #dbg_value(ptr %incdec.ptr4, !93, !DIExpression(), !102)
  %4 = load i32, ptr %incdec.ptr3, align 4, !dbg !113
    #dbg_value(i32 %4, !100, !DIExpression(), !102)
  %5 = load i32, ptr %incdec.ptr4, align 4, !dbg !114
    #dbg_value(!DIArgList(i32 %5, i32 %4, i32 %3, i32 %2), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !102)
    #dbg_value(!DIArgList(i32 %3, i32 %2, i32 %5, i32 %4), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !102)
    #dbg_value(!DIArgList(i32 %2, i32 %3, i32 %5, i32 %4), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !102)
    #dbg_value(!DIArgList(i32 %4, i32 %5, i32 %3, i32 %2), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 32), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 32), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 32), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 32), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 288, 32), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 32), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 352, 32), !102)
    #dbg_value(i32 poison, !98, !DIExpression(), !102)
    #dbg_value(i32 poison, !99, !DIExpression(), !102)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !93, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !102)
    #dbg_value(i32 poison, !100, !DIExpression(), !102)
    #dbg_value(i32 poison, !101, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !94, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !95, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !96, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 384, 32), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 416, 32), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !102)
    #dbg_value(ptr undef, !92, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !102)
    #dbg_value(i64 %0, !89, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !102)
  %6 = getelementptr ptr, ptr %tblock, i64 %0, !dbg !105
  %arrayidx.3 = getelementptr i8, ptr %6, i64 24, !dbg !105
  %7 = load ptr, ptr %arrayidx.3, align 8, !dbg !105
    #dbg_value(!DIArgList(ptr %7, i64 %idxprom1), !93, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !102)
  %arrayidx2.3 = getelementptr inbounds i32, ptr %7, i64 %idxprom1, !dbg !105
    #dbg_value(ptr %arrayidx2.3, !93, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !102)
  %incdec.ptr3.3 = getelementptr inbounds i8, ptr %arrayidx2.3, i64 8, !dbg !110
    #dbg_value(ptr %incdec.ptr3.3, !93, !DIExpression(), !102)
  %8 = load i32, ptr %incdec.ptr3.3, align 4, !dbg !113
    #dbg_value(i32 %8, !100, !DIExpression(), !102)
  %9 = load i32, ptr %arrayidx2.3, align 4, !dbg !109
    #dbg_value(i32 %9, !98, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %8, i32 %9), !94, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %9, i32 %8), !95, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !102)
  %add5.3 = add nsw i32 %8, %9, !dbg !115
    #dbg_value(i32 %add5.3, !94, !DIExpression(), !102)
  %incdec.ptr4.3 = getelementptr inbounds i8, ptr %arrayidx2.3, i64 12, !dbg !112
    #dbg_value(ptr %incdec.ptr4.3, !93, !DIExpression(), !102)
  %10 = load i32, ptr %incdec.ptr4.3, align 4, !dbg !114
    #dbg_value(i32 %10, !101, !DIExpression(), !102)
  %shr7.3 = ashr i32 %10, 1, !dbg !116
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %arrayidx2.3, i64 4, !dbg !108
    #dbg_value(ptr %incdec.ptr.3, !93, !DIExpression(), !102)
  %11 = load i32, ptr %incdec.ptr.3, align 4, !dbg !111
    #dbg_value(i32 %11, !99, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %11, i32 %10), !96, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %add5.3, i32 %shr7.3, i32 %11), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !102)
    #dbg_value(!DIArgList(i32 %shr7.3, i32 %add5.3, i32 %11), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 384, 32), !102)
    #dbg_value(!DIArgList(i32 %shr7.3, i32 %11), !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %9, i32 %11, i32 %10, i32 %8), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !102)
    #dbg_value(!DIArgList(i32 %11, i32 %9, i32 %10, i32 %8), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 416, 32), !102)
  %add8.3 = add nsw i32 %shr7.3, %11, !dbg !117
    #dbg_value(!DIArgList(i32 %add5.3, i32 %add8.3), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !102)
    #dbg_value(!DIArgList(i32 %add8.3, i32 %add5.3), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 384, 32), !102)
    #dbg_value(i32 %add8.3, !97, !DIExpression(), !102)
  %sub15.3 = sub nsw i32 %add5.3, %add8.3, !dbg !118
    #dbg_value(i32 %sub15.3, !91, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !102)
  %sub.3 = sub nsw i32 %9, %8, !dbg !119
    #dbg_value(i32 %sub.3, !95, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %sub.3, i32 %11, i32 %10), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !102)
    #dbg_value(!DIArgList(i32 %11, i32 %sub.3, i32 %10), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 416, 32), !102)
  %shr.3 = ashr i32 %11, 1, !dbg !120
    #dbg_value(!DIArgList(i32 %shr.3, i32 %10), !96, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %sub.3, i32 %shr.3, i32 %10), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !102)
    #dbg_value(!DIArgList(i32 %shr.3, i32 %sub.3, i32 %10), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 416, 32), !102)
  %sub6.3 = sub nsw i32 %shr.3, %10, !dbg !121
    #dbg_value(i32 %sub6.3, !96, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %sub.3, i32 %sub6.3), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !102)
    #dbg_value(!DIArgList(i32 %sub6.3, i32 %sub.3), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 416, 32), !102)
  %sub13.3 = sub nsw i32 %sub.3, %sub6.3, !dbg !122
    #dbg_value(i32 %sub13.3, !91, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !102)
  %add11.3 = add nsw i32 %sub6.3, %sub.3, !dbg !123
    #dbg_value(i32 %add11.3, !91, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !102)
  %add9.3 = add nsw i32 %add8.3, %add5.3, !dbg !124
    #dbg_value(i32 %add9.3, !91, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !102)
  %12 = getelementptr ptr, ptr %tblock, i64 %0, !dbg !105
  %arrayidx.2 = getelementptr i8, ptr %12, i64 16, !dbg !105
  %13 = load ptr, ptr %arrayidx.2, align 8, !dbg !105
    #dbg_value(!DIArgList(ptr %13, i64 %idxprom1), !93, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !102)
  %arrayidx2.2 = getelementptr inbounds i32, ptr %13, i64 %idxprom1, !dbg !105
    #dbg_value(ptr %arrayidx2.2, !93, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !102)
  %incdec.ptr3.2 = getelementptr inbounds i8, ptr %arrayidx2.2, i64 8, !dbg !110
    #dbg_value(ptr %incdec.ptr3.2, !93, !DIExpression(), !102)
  %14 = load i32, ptr %incdec.ptr3.2, align 4, !dbg !113
    #dbg_value(i32 %14, !100, !DIExpression(), !102)
  %15 = load i32, ptr %arrayidx2.2, align 4, !dbg !109
    #dbg_value(i32 %15, !98, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %14, i32 %15), !94, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %15, i32 %14), !95, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !102)
  %add5.2 = add nsw i32 %14, %15, !dbg !115
    #dbg_value(i32 %add5.2, !94, !DIExpression(), !102)
  %incdec.ptr4.2 = getelementptr inbounds i8, ptr %arrayidx2.2, i64 12, !dbg !112
    #dbg_value(ptr %incdec.ptr4.2, !93, !DIExpression(), !102)
  %16 = load i32, ptr %incdec.ptr4.2, align 4, !dbg !114
    #dbg_value(i32 %16, !101, !DIExpression(), !102)
  %shr7.2 = ashr i32 %16, 1, !dbg !116
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %arrayidx2.2, i64 4, !dbg !108
    #dbg_value(ptr %incdec.ptr.2, !93, !DIExpression(), !102)
  %17 = load i32, ptr %incdec.ptr.2, align 4, !dbg !111
    #dbg_value(i32 %17, !99, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %17, i32 %16), !96, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %add5.2, i32 %shr7.2, i32 %17), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 352, 32), !102)
    #dbg_value(!DIArgList(i32 %shr7.2, i32 %add5.2, i32 %17), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 32), !102)
    #dbg_value(!DIArgList(i32 %shr7.2, i32 %17), !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %15, i32 %17, i32 %16, i32 %14), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 32), !102)
    #dbg_value(!DIArgList(i32 %17, i32 %15, i32 %16, i32 %14), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 288, 32), !102)
  %add8.2 = add nsw i32 %shr7.2, %17, !dbg !117
    #dbg_value(!DIArgList(i32 %add5.2, i32 %add8.2), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 352, 32), !102)
    #dbg_value(!DIArgList(i32 %add8.2, i32 %add5.2), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 32), !102)
    #dbg_value(i32 %add8.2, !97, !DIExpression(), !102)
  %sub15.2 = sub nsw i32 %add5.2, %add8.2, !dbg !118
    #dbg_value(i32 %sub15.2, !91, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !102)
  %sub.2 = sub nsw i32 %15, %14, !dbg !119
    #dbg_value(i32 %sub.2, !95, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %sub.2, i32 %17, i32 %16), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 32), !102)
    #dbg_value(!DIArgList(i32 %17, i32 %sub.2, i32 %16), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 288, 32), !102)
  %shr.2 = ashr i32 %17, 1, !dbg !120
    #dbg_value(!DIArgList(i32 %shr.2, i32 %16), !96, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %sub.2, i32 %shr.2, i32 %16), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 32), !102)
    #dbg_value(!DIArgList(i32 %shr.2, i32 %sub.2, i32 %16), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 288, 32), !102)
  %sub6.2 = sub nsw i32 %shr.2, %16, !dbg !121
    #dbg_value(i32 %sub6.2, !96, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %sub.2, i32 %sub6.2), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 32), !102)
    #dbg_value(!DIArgList(i32 %sub6.2, i32 %sub.2), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 288, 32), !102)
  %sub13.2 = sub nsw i32 %sub.2, %sub6.2, !dbg !122
    #dbg_value(i32 %sub13.2, !91, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !102)
  %add11.2 = add nsw i32 %sub6.2, %sub.2, !dbg !123
    #dbg_value(i32 %add11.2, !91, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !102)
  %add9.2 = add nsw i32 %add8.2, %add5.2, !dbg !124
    #dbg_value(i32 %add9.2, !91, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !102)
  %18 = getelementptr ptr, ptr %tblock, i64 %0, !dbg !105
  %arrayidx.1 = getelementptr i8, ptr %18, i64 8, !dbg !105
  %19 = load ptr, ptr %arrayidx.1, align 8, !dbg !105
    #dbg_value(!DIArgList(ptr %19, i64 %idxprom1), !93, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 12, DW_OP_stack_value), !102)
  %arrayidx2.1 = getelementptr inbounds i32, ptr %19, i64 %idxprom1, !dbg !105
    #dbg_value(ptr %arrayidx2.1, !93, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !102)
  %incdec.ptr3.1 = getelementptr inbounds i8, ptr %arrayidx2.1, i64 8, !dbg !110
    #dbg_value(ptr %incdec.ptr3.1, !93, !DIExpression(), !102)
  %20 = load i32, ptr %incdec.ptr3.1, align 4, !dbg !113
    #dbg_value(i32 %20, !100, !DIExpression(), !102)
  %21 = load i32, ptr %arrayidx2.1, align 4, !dbg !109
    #dbg_value(i32 %21, !98, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %20, i32 %21), !94, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %21, i32 %20), !95, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !102)
  %add5.1 = add nsw i32 %20, %21, !dbg !115
    #dbg_value(i32 %add5.1, !94, !DIExpression(), !102)
  %incdec.ptr4.1 = getelementptr inbounds i8, ptr %arrayidx2.1, i64 12, !dbg !112
    #dbg_value(ptr %incdec.ptr4.1, !93, !DIExpression(), !102)
  %22 = load i32, ptr %incdec.ptr4.1, align 4, !dbg !114
    #dbg_value(i32 %22, !101, !DIExpression(), !102)
  %shr7.1 = ashr i32 %22, 1, !dbg !116
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %arrayidx2.1, i64 4, !dbg !108
    #dbg_value(ptr %incdec.ptr.1, !93, !DIExpression(), !102)
  %23 = load i32, ptr %incdec.ptr.1, align 4, !dbg !111
    #dbg_value(i32 %23, !99, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %23, i32 %22), !96, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %add5.1, i32 %shr7.1, i32 %23), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 32), !102)
    #dbg_value(!DIArgList(i32 %shr7.1, i32 %add5.1, i32 %23), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !102)
    #dbg_value(!DIArgList(i32 %shr7.1, i32 %23), !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %21, i32 %23, i32 %22, i32 %20), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 32), !102)
    #dbg_value(!DIArgList(i32 %23, i32 %21, i32 %22, i32 %20), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !102)
  %add8.1 = add nsw i32 %shr7.1, %23, !dbg !117
    #dbg_value(!DIArgList(i32 %add5.1, i32 %add8.1), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 32), !102)
    #dbg_value(!DIArgList(i32 %add8.1, i32 %add5.1), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !102)
    #dbg_value(i32 %add8.1, !97, !DIExpression(), !102)
  %sub15.1 = sub nsw i32 %add5.1, %add8.1, !dbg !118
    #dbg_value(i32 %sub15.1, !91, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !102)
  %sub.1 = sub nsw i32 %21, %20, !dbg !119
    #dbg_value(i32 %sub.1, !95, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %sub.1, i32 %23, i32 %22), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 32), !102)
    #dbg_value(!DIArgList(i32 %23, i32 %sub.1, i32 %22), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !102)
  %shr.1 = ashr i32 %23, 1, !dbg !120
    #dbg_value(!DIArgList(i32 %shr.1, i32 %22), !96, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %sub.1, i32 %shr.1, i32 %22), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 32), !102)
    #dbg_value(!DIArgList(i32 %shr.1, i32 %sub.1, i32 %22), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !102)
  %sub6.1 = sub nsw i32 %shr.1, %22, !dbg !121
    #dbg_value(i32 %sub6.1, !96, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %sub.1, i32 %sub6.1), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 32), !102)
    #dbg_value(!DIArgList(i32 %sub6.1, i32 %sub.1), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !102)
  %sub13.1 = sub nsw i32 %sub.1, %sub6.1, !dbg !122
    #dbg_value(i32 %sub13.1, !91, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !102)
  %add11.1 = add nsw i32 %sub6.1, %sub.1, !dbg !123
    #dbg_value(i32 %add11.1, !91, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !102)
  %add9.1 = add nsw i32 %add8.1, %add5.1, !dbg !124
    #dbg_value(i32 %add9.1, !91, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !102)
  %add5 = add nsw i32 %4, %2, !dbg !115
    #dbg_value(!DIArgList(i32 %add5, i32 %5, i32 %3), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 32), !102)
    #dbg_value(!DIArgList(i32 %5, i32 %add5, i32 %3), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !102)
    #dbg_value(i32 %add5, !94, !DIExpression(), !102)
  %shr7 = ashr i32 %5, 1, !dbg !116
    #dbg_value(!DIArgList(i32 %add5, i32 %shr7, i32 %3), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 32), !102)
    #dbg_value(!DIArgList(i32 %shr7, i32 %add5, i32 %3), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !102)
    #dbg_value(!DIArgList(i32 %shr7, i32 %3), !97, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !102)
  %add8 = add nsw i32 %shr7, %3, !dbg !117
    #dbg_value(!DIArgList(i32 %add5, i32 %add8), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 32), !102)
    #dbg_value(!DIArgList(i32 %add8, i32 %add5), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !102)
    #dbg_value(i32 %add8, !97, !DIExpression(), !102)
  %sub15 = sub nsw i32 %add5, %add8, !dbg !118
    #dbg_value(i32 %sub15, !91, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !102)
  %sub = sub nsw i32 %2, %4, !dbg !119
    #dbg_value(i32 %sub, !95, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %sub, i32 %3, i32 %5), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !102)
    #dbg_value(!DIArgList(i32 %3, i32 %sub, i32 %5), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !102)
  %shr = ashr i32 %3, 1, !dbg !120
    #dbg_value(!DIArgList(i32 %shr, i32 %5), !96, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !102)
    #dbg_value(!DIArgList(i32 %sub, i32 %shr, i32 %5), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !102)
    #dbg_value(!DIArgList(i32 %shr, i32 %sub, i32 %5), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !102)
  %sub6 = sub nsw i32 %shr, %5, !dbg !121
    #dbg_value(i32 %sub6, !96, !DIExpression(), !102)
    #dbg_value(!DIArgList(i32 %sub, i32 %sub6), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !102)
    #dbg_value(!DIArgList(i32 %sub6, i32 %sub), !91, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !102)
  %sub13 = sub nsw i32 %sub, %sub6, !dbg !122
    #dbg_value(i32 %sub13, !91, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !102)
  %add11 = add nsw i32 %sub6, %sub, !dbg !123
    #dbg_value(i32 %add11, !91, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !102)
  %add9 = add nsw i32 %add8, %add5, !dbg !124
    #dbg_value(i32 %add9, !91, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !102)
    #dbg_value(i32 %sub15.3, !91, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !102)
    #dbg_value(i32 %sub13.3, !91, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !102)
    #dbg_value(i32 %add11.3, !91, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !102)
    #dbg_value(i32 %add9.3, !91, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !102)
    #dbg_value(i32 %add9.1, !91, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !102)
    #dbg_value(i32 %add11.1, !91, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !102)
    #dbg_value(i32 %sub13.1, !91, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !102)
    #dbg_value(i32 %sub15.1, !91, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !102)
    #dbg_value(i32 %add9.2, !91, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !102)
    #dbg_value(i32 %add11.2, !91, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !102)
    #dbg_value(i32 %sub13.2, !91, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !102)
    #dbg_value(i32 %sub15.2, !91, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !102)
  %arrayidx33 = getelementptr inbounds ptr, ptr %block, i64 %0
  %arrayidx39 = getelementptr i8, ptr %arrayidx33, i64 8
  %arrayidx45 = getelementptr i8, ptr %arrayidx33, i64 16
  %arrayidx51 = getelementptr i8, ptr %arrayidx33, i64 24
    #dbg_value(i64 0, !89, !DIExpression(), !102)
    #dbg_value(i32 %add9, !98, !DIExpression(), !102)
    #dbg_value(i32 %add9.1, !99, !DIExpression(), !102)
    #dbg_value(i32 %add9.2, !100, !DIExpression(), !102)
    #dbg_value(ptr undef, !92, !DIExpression(), !102)
    #dbg_value(i32 %add9.3, !101, !DIExpression(), !102)
  %add24 = add nsw i32 %add9.2, %add9, !dbg !125
    #dbg_value(i32 %add24, !94, !DIExpression(), !102)
  %sub25 = sub nsw i32 %add9, %add9.2, !dbg !129
    #dbg_value(i32 %sub25, !95, !DIExpression(), !102)
  %shr26 = ashr i32 %add9.1, 1, !dbg !130
  %sub27 = sub nsw i32 %shr26, %add9.3, !dbg !131
    #dbg_value(i32 %sub27, !96, !DIExpression(), !102)
  %shr28 = ashr i32 %add9.3, 1, !dbg !132
  %add29 = add nsw i32 %shr28, %add9.1, !dbg !133
    #dbg_value(i32 %add29, !97, !DIExpression(), !102)
    #dbg_value(i64 %idxprom1, !90, !DIExpression(), !102)
  %add31 = add nsw i32 %add29, %add24, !dbg !134
  %24 = load ptr, ptr %arrayidx33, align 8, !dbg !135
  %arrayidx35 = getelementptr inbounds i32, ptr %24, i64 %idxprom1, !dbg !135
  store i32 %add31, ptr %arrayidx35, align 4, !dbg !136
  %add36 = add nsw i32 %sub27, %sub25, !dbg !137
  %25 = load ptr, ptr %arrayidx39, align 8, !dbg !138
  %arrayidx41 = getelementptr inbounds i32, ptr %25, i64 %idxprom1, !dbg !138
  store i32 %add36, ptr %arrayidx41, align 4, !dbg !139
  %sub42 = sub nsw i32 %sub25, %sub27, !dbg !140
  %26 = load ptr, ptr %arrayidx45, align 8, !dbg !141
  %arrayidx47 = getelementptr inbounds i32, ptr %26, i64 %idxprom1, !dbg !141
  store i32 %sub42, ptr %arrayidx47, align 4, !dbg !142
  %sub48 = sub nsw i32 %add24, %add29, !dbg !143
  %27 = load ptr, ptr %arrayidx51, align 8, !dbg !144
  %arrayidx53 = getelementptr inbounds i32, ptr %27, i64 %idxprom1, !dbg !144
  store i32 %sub48, ptr %arrayidx53, align 4, !dbg !145
    #dbg_value(i64 1, !89, !DIExpression(), !102)
    #dbg_value(i32 %add11, !98, !DIExpression(), !102)
    #dbg_value(i32 %add11.1, !99, !DIExpression(), !102)
    #dbg_value(i32 %add11.2, !100, !DIExpression(), !102)
    #dbg_value(i32 %add11.3, !101, !DIExpression(), !102)
  %add24.1 = add nsw i32 %add11.2, %add11, !dbg !125
    #dbg_value(i32 %add24.1, !94, !DIExpression(), !102)
  %sub25.1 = sub nsw i32 %add11, %add11.2, !dbg !129
    #dbg_value(i32 %sub25.1, !95, !DIExpression(), !102)
  %shr26.1 = ashr i32 %add11.1, 1, !dbg !130
  %sub27.1 = sub nsw i32 %shr26.1, %add11.3, !dbg !131
    #dbg_value(i32 %sub27.1, !96, !DIExpression(), !102)
  %shr28.1 = ashr i32 %add11.3, 1, !dbg !132
  %add29.1 = add nsw i32 %shr28.1, %add11.1, !dbg !133
    #dbg_value(i32 %add29.1, !97, !DIExpression(), !102)
  %28 = add nsw i64 %idxprom1, 1, !dbg !146
    #dbg_value(i64 %28, !90, !DIExpression(), !102)
  %add31.1 = add nsw i32 %add29.1, %add24.1, !dbg !134
  %29 = load ptr, ptr %arrayidx33, align 8, !dbg !135
  %arrayidx35.1 = getelementptr inbounds i32, ptr %29, i64 %28, !dbg !135
  store i32 %add31.1, ptr %arrayidx35.1, align 4, !dbg !136
  %add36.1 = add nsw i32 %sub27.1, %sub25.1, !dbg !137
  %30 = load ptr, ptr %arrayidx39, align 8, !dbg !138
  %arrayidx41.1 = getelementptr inbounds i32, ptr %30, i64 %28, !dbg !138
  store i32 %add36.1, ptr %arrayidx41.1, align 4, !dbg !139
  %sub42.1 = sub nsw i32 %sub25.1, %sub27.1, !dbg !140
  %31 = load ptr, ptr %arrayidx45, align 8, !dbg !141
  %arrayidx47.1 = getelementptr inbounds i32, ptr %31, i64 %28, !dbg !141
  store i32 %sub42.1, ptr %arrayidx47.1, align 4, !dbg !142
  %sub48.1 = sub nsw i32 %add24.1, %add29.1, !dbg !143
  %32 = load ptr, ptr %arrayidx51, align 8, !dbg !144
  %arrayidx53.1 = getelementptr inbounds i32, ptr %32, i64 %28, !dbg !144
  store i32 %sub48.1, ptr %arrayidx53.1, align 4, !dbg !145
    #dbg_value(i64 2, !89, !DIExpression(), !102)
    #dbg_value(i32 %sub13, !98, !DIExpression(), !102)
    #dbg_value(i32 %sub13.1, !99, !DIExpression(), !102)
    #dbg_value(i32 %sub13.2, !100, !DIExpression(), !102)
    #dbg_value(i32 %sub13.3, !101, !DIExpression(), !102)
  %add24.2 = add nsw i32 %sub13.2, %sub13, !dbg !125
    #dbg_value(i32 %add24.2, !94, !DIExpression(), !102)
  %sub25.2 = sub nsw i32 %sub13, %sub13.2, !dbg !129
    #dbg_value(i32 %sub25.2, !95, !DIExpression(), !102)
  %shr26.2 = ashr i32 %sub13.1, 1, !dbg !130
  %sub27.2 = sub nsw i32 %shr26.2, %sub13.3, !dbg !131
    #dbg_value(i32 %sub27.2, !96, !DIExpression(), !102)
  %shr28.2 = ashr i32 %sub13.3, 1, !dbg !132
  %add29.2 = add nsw i32 %shr28.2, %sub13.1, !dbg !133
    #dbg_value(i32 %add29.2, !97, !DIExpression(), !102)
  %33 = add nsw i64 %idxprom1, 2, !dbg !146
    #dbg_value(i64 %33, !90, !DIExpression(), !102)
  %add31.2 = add nsw i32 %add29.2, %add24.2, !dbg !134
  %34 = load ptr, ptr %arrayidx33, align 8, !dbg !135
  %arrayidx35.2 = getelementptr inbounds i32, ptr %34, i64 %33, !dbg !135
  store i32 %add31.2, ptr %arrayidx35.2, align 4, !dbg !136
  %add36.2 = add nsw i32 %sub27.2, %sub25.2, !dbg !137
  %35 = load ptr, ptr %arrayidx39, align 8, !dbg !138
  %arrayidx41.2 = getelementptr inbounds i32, ptr %35, i64 %33, !dbg !138
  store i32 %add36.2, ptr %arrayidx41.2, align 4, !dbg !139
  %sub42.2 = sub nsw i32 %sub25.2, %sub27.2, !dbg !140
  %36 = load ptr, ptr %arrayidx45, align 8, !dbg !141
  %arrayidx47.2 = getelementptr inbounds i32, ptr %36, i64 %33, !dbg !141
  store i32 %sub42.2, ptr %arrayidx47.2, align 4, !dbg !142
  %sub48.2 = sub nsw i32 %add24.2, %add29.2, !dbg !143
  %37 = load ptr, ptr %arrayidx51, align 8, !dbg !144
  %arrayidx53.2 = getelementptr inbounds i32, ptr %37, i64 %33, !dbg !144
  store i32 %sub48.2, ptr %arrayidx53.2, align 4, !dbg !145
    #dbg_value(i64 3, !89, !DIExpression(), !102)
    #dbg_value(i32 %sub15, !98, !DIExpression(), !102)
    #dbg_value(i32 %sub15.1, !99, !DIExpression(), !102)
    #dbg_value(i32 %sub15.2, !100, !DIExpression(), !102)
    #dbg_value(i32 %sub15.3, !101, !DIExpression(), !102)
  %add24.3 = add nsw i32 %sub15.2, %sub15, !dbg !125
    #dbg_value(i32 %add24.3, !94, !DIExpression(), !102)
  %sub25.3 = sub nsw i32 %sub15, %sub15.2, !dbg !129
    #dbg_value(i32 %sub25.3, !95, !DIExpression(), !102)
  %shr26.3 = ashr i32 %sub15.1, 1, !dbg !130
  %sub27.3 = sub nsw i32 %shr26.3, %sub15.3, !dbg !131
    #dbg_value(i32 %sub27.3, !96, !DIExpression(), !102)
  %shr28.3 = ashr i32 %sub15.3, 1, !dbg !132
  %add29.3 = add nsw i32 %shr28.3, %sub15.1, !dbg !133
    #dbg_value(i32 %add29.3, !97, !DIExpression(), !102)
  %38 = add nsw i64 %idxprom1, 3, !dbg !146
    #dbg_value(i64 %38, !90, !DIExpression(), !102)
  %add31.3 = add nsw i32 %add29.3, %add24.3, !dbg !134
  %39 = load ptr, ptr %arrayidx33, align 8, !dbg !135
  %arrayidx35.3 = getelementptr inbounds i32, ptr %39, i64 %38, !dbg !135
  store i32 %add31.3, ptr %arrayidx35.3, align 4, !dbg !136
  %add36.3 = add nsw i32 %sub27.3, %sub25.3, !dbg !137
  %40 = load ptr, ptr %arrayidx39, align 8, !dbg !138
  %arrayidx41.3 = getelementptr inbounds i32, ptr %40, i64 %38, !dbg !138
  store i32 %add36.3, ptr %arrayidx41.3, align 4, !dbg !139
  %sub42.3 = sub nsw i32 %sub25.3, %sub27.3, !dbg !140
  %41 = load ptr, ptr %arrayidx45, align 8, !dbg !141
  %arrayidx47.3 = getelementptr inbounds i32, ptr %41, i64 %38, !dbg !141
  store i32 %sub42.3, ptr %arrayidx47.3, align 4, !dbg !142
  %sub48.3 = sub nsw i32 %add24.3, %add29.3, !dbg !143
  %42 = load ptr, ptr %arrayidx51, align 8, !dbg !144
  %arrayidx53.3 = getelementptr inbounds i32, ptr %42, i64 %38, !dbg !144
  store i32 %sub48.3, ptr %arrayidx53.3, align 4, !dbg !145
    #dbg_value(i64 4, !89, !DIExpression(), !102)
  ret void, !dbg !147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @hadamard4x4(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %tblock) local_unnamed_addr #0 !dbg !148 {
entry:
    #dbg_value(ptr %block, !152, !DIExpression(), !166)
    #dbg_value(ptr %tblock, !153, !DIExpression(), !166)
    #dbg_value(ptr undef, !156, !DIExpression(), !166)
    #dbg_value(i32 0, !154, !DIExpression(), !166)
    #dbg_value(i64 0, !154, !DIExpression(), !166)
    #dbg_value(ptr undef, !156, !DIExpression(), !166)
  %0 = load ptr, ptr %block, align 8, !dbg !167
    #dbg_value(ptr %0, !157, !DIExpression(), !166)
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 4, !dbg !171
    #dbg_value(ptr %incdec.ptr, !157, !DIExpression(), !166)
  %1 = load i32, ptr %0, align 4, !dbg !172
    #dbg_value(i32 %1, !158, !DIExpression(), !166)
  %incdec.ptr1 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !173
    #dbg_value(ptr %incdec.ptr1, !157, !DIExpression(), !166)
  %2 = load i32, ptr %incdec.ptr, align 4, !dbg !174
    #dbg_value(i32 %2, !159, !DIExpression(), !166)
  %incdec.ptr2 = getelementptr inbounds i8, ptr %0, i64 12, !dbg !175
    #dbg_value(ptr %incdec.ptr2, !157, !DIExpression(), !166)
  %3 = load i32, ptr %incdec.ptr1, align 4, !dbg !176
    #dbg_value(i32 %3, !160, !DIExpression(), !166)
  %4 = load i32, ptr %incdec.ptr2, align 4, !dbg !177
    #dbg_value(i32 %4, !161, !DIExpression(), !166)
  %add = add nsw i32 %4, %1, !dbg !178
    #dbg_value(i32 %add, !162, !DIExpression(), !166)
  %add3 = add nsw i32 %3, %2, !dbg !179
    #dbg_value(i32 %add3, !163, !DIExpression(), !166)
  %sub = sub nsw i32 %2, %3, !dbg !180
    #dbg_value(i32 %sub, !164, !DIExpression(), !166)
  %sub4 = sub nsw i32 %1, %4, !dbg !181
    #dbg_value(i32 %sub4, !165, !DIExpression(), !166)
  %add5 = add nsw i32 %add, %add3, !dbg !182
    #dbg_value(i32 %add5, !155, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !166)
  %add7 = add nsw i32 %sub4, %sub, !dbg !183
    #dbg_value(i32 %add7, !155, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !166)
  %sub9 = sub nsw i32 %add, %add3, !dbg !184
    #dbg_value(i32 %sub9, !155, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !166)
  %sub11 = sub nsw i32 %sub4, %sub, !dbg !185
    #dbg_value(i32 %sub11, !155, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !166)
    #dbg_value(i64 1, !154, !DIExpression(), !166)
  %arrayidx.1 = getelementptr inbounds i8, ptr %block, i64 8, !dbg !167
  %5 = load ptr, ptr %arrayidx.1, align 8, !dbg !167
    #dbg_value(ptr %5, !157, !DIExpression(), !166)
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %5, i64 4, !dbg !171
    #dbg_value(ptr %incdec.ptr.1, !157, !DIExpression(), !166)
  %6 = load i32, ptr %5, align 4, !dbg !172
    #dbg_value(i32 %6, !158, !DIExpression(), !166)
  %incdec.ptr1.1 = getelementptr inbounds i8, ptr %5, i64 8, !dbg !173
    #dbg_value(ptr %incdec.ptr1.1, !157, !DIExpression(), !166)
  %7 = load i32, ptr %incdec.ptr.1, align 4, !dbg !174
    #dbg_value(i32 %7, !159, !DIExpression(), !166)
  %incdec.ptr2.1 = getelementptr inbounds i8, ptr %5, i64 12, !dbg !175
    #dbg_value(ptr %incdec.ptr2.1, !157, !DIExpression(), !166)
  %8 = load i32, ptr %incdec.ptr1.1, align 4, !dbg !176
    #dbg_value(i32 %8, !160, !DIExpression(), !166)
  %9 = load i32, ptr %incdec.ptr2.1, align 4, !dbg !177
    #dbg_value(i32 %9, !161, !DIExpression(), !166)
  %add.1 = add nsw i32 %9, %6, !dbg !178
    #dbg_value(i32 %add.1, !162, !DIExpression(), !166)
  %add3.1 = add nsw i32 %8, %7, !dbg !179
    #dbg_value(i32 %add3.1, !163, !DIExpression(), !166)
  %sub.1 = sub nsw i32 %7, %8, !dbg !180
    #dbg_value(i32 %sub.1, !164, !DIExpression(), !166)
  %sub4.1 = sub nsw i32 %6, %9, !dbg !181
    #dbg_value(i32 %sub4.1, !165, !DIExpression(), !166)
  %add5.1 = add nsw i32 %add.1, %add3.1, !dbg !182
    #dbg_value(i32 %add5.1, !155, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !166)
  %add7.1 = add nsw i32 %sub4.1, %sub.1, !dbg !183
    #dbg_value(i32 %add7.1, !155, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !166)
  %sub9.1 = sub nsw i32 %add.1, %add3.1, !dbg !184
    #dbg_value(i32 %sub9.1, !155, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !166)
  %sub11.1 = sub nsw i32 %sub4.1, %sub.1, !dbg !185
    #dbg_value(i32 %sub11.1, !155, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !166)
    #dbg_value(i64 2, !154, !DIExpression(), !166)
  %arrayidx.2 = getelementptr inbounds i8, ptr %block, i64 16, !dbg !167
  %10 = load ptr, ptr %arrayidx.2, align 8, !dbg !167
    #dbg_value(ptr %10, !157, !DIExpression(), !166)
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %10, i64 4, !dbg !171
    #dbg_value(ptr %incdec.ptr.2, !157, !DIExpression(), !166)
  %11 = load i32, ptr %10, align 4, !dbg !172
    #dbg_value(i32 %11, !158, !DIExpression(), !166)
  %incdec.ptr1.2 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !173
    #dbg_value(ptr %incdec.ptr1.2, !157, !DIExpression(), !166)
  %12 = load i32, ptr %incdec.ptr.2, align 4, !dbg !174
    #dbg_value(i32 %12, !159, !DIExpression(), !166)
  %incdec.ptr2.2 = getelementptr inbounds i8, ptr %10, i64 12, !dbg !175
    #dbg_value(ptr %incdec.ptr2.2, !157, !DIExpression(), !166)
  %13 = load i32, ptr %incdec.ptr1.2, align 4, !dbg !176
    #dbg_value(i32 %13, !160, !DIExpression(), !166)
  %14 = load i32, ptr %incdec.ptr2.2, align 4, !dbg !177
    #dbg_value(i32 %14, !161, !DIExpression(), !166)
  %add.2 = add nsw i32 %14, %11, !dbg !178
    #dbg_value(i32 %add.2, !162, !DIExpression(), !166)
  %add3.2 = add nsw i32 %13, %12, !dbg !179
    #dbg_value(i32 %add3.2, !163, !DIExpression(), !166)
  %sub.2 = sub nsw i32 %12, %13, !dbg !180
    #dbg_value(i32 %sub.2, !164, !DIExpression(), !166)
  %sub4.2 = sub nsw i32 %11, %14, !dbg !181
    #dbg_value(i32 %sub4.2, !165, !DIExpression(), !166)
  %add5.2 = add nsw i32 %add.2, %add3.2, !dbg !182
    #dbg_value(i32 %add5.2, !155, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !166)
  %add7.2 = add nsw i32 %sub4.2, %sub.2, !dbg !183
    #dbg_value(i32 %add7.2, !155, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !166)
  %sub9.2 = sub nsw i32 %add.2, %add3.2, !dbg !184
    #dbg_value(i32 %sub9.2, !155, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !166)
  %sub11.2 = sub nsw i32 %sub4.2, %sub.2, !dbg !185
    #dbg_value(i32 %sub11.2, !155, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !166)
    #dbg_value(i64 3, !154, !DIExpression(), !166)
  %arrayidx.3 = getelementptr inbounds i8, ptr %block, i64 24, !dbg !167
  %15 = load ptr, ptr %arrayidx.3, align 8, !dbg !167
    #dbg_value(ptr %15, !157, !DIExpression(), !166)
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %15, i64 4, !dbg !171
    #dbg_value(ptr %incdec.ptr.3, !157, !DIExpression(), !166)
  %16 = load i32, ptr %15, align 4, !dbg !172
    #dbg_value(i32 %16, !158, !DIExpression(), !166)
  %incdec.ptr1.3 = getelementptr inbounds i8, ptr %15, i64 8, !dbg !173
    #dbg_value(ptr %incdec.ptr1.3, !157, !DIExpression(), !166)
  %17 = load i32, ptr %incdec.ptr.3, align 4, !dbg !174
    #dbg_value(i32 %17, !159, !DIExpression(), !166)
  %incdec.ptr2.3 = getelementptr inbounds i8, ptr %15, i64 12, !dbg !175
    #dbg_value(ptr %incdec.ptr2.3, !157, !DIExpression(), !166)
  %18 = load i32, ptr %incdec.ptr1.3, align 4, !dbg !176
    #dbg_value(i32 %18, !160, !DIExpression(), !166)
  %19 = load i32, ptr %incdec.ptr2.3, align 4, !dbg !177
    #dbg_value(i32 %19, !161, !DIExpression(), !166)
  %add.3 = add nsw i32 %19, %16, !dbg !178
    #dbg_value(i32 %add.3, !162, !DIExpression(), !166)
  %add3.3 = add nsw i32 %18, %17, !dbg !179
    #dbg_value(i32 %add3.3, !163, !DIExpression(), !166)
  %sub.3 = sub nsw i32 %17, %18, !dbg !180
    #dbg_value(i32 %sub.3, !164, !DIExpression(), !166)
  %sub4.3 = sub nsw i32 %16, %19, !dbg !181
    #dbg_value(i32 %sub4.3, !165, !DIExpression(), !166)
  %add5.3 = add nsw i32 %add.3, %add3.3, !dbg !182
    #dbg_value(i32 %add5.3, !155, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !166)
  %add7.3 = add nsw i32 %sub4.3, %sub.3, !dbg !183
    #dbg_value(i32 %add7.3, !155, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !166)
  %sub9.3 = sub nsw i32 %add.3, %add3.3, !dbg !184
    #dbg_value(i32 %sub9.3, !155, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !166)
  %sub11.3 = sub nsw i32 %sub4.3, %sub.3, !dbg !185
    #dbg_value(ptr undef, !156, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !166)
    #dbg_value(i32 %sub11.3, !155, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !166)
    #dbg_value(i64 4, !154, !DIExpression(), !166)
  %arrayidx30 = getelementptr inbounds i8, ptr %tblock, i64 8
  %arrayidx35 = getelementptr inbounds i8, ptr %tblock, i64 16
  %arrayidx40 = getelementptr inbounds i8, ptr %tblock, i64 24
    #dbg_value(i32 0, !154, !DIExpression(), !166)
    #dbg_value(i64 0, !154, !DIExpression(), !166)
    #dbg_value(i32 %add5, !158, !DIExpression(), !166)
    #dbg_value(i32 %add5.1, !159, !DIExpression(), !166)
    #dbg_value(i32 %add5.2, !160, !DIExpression(), !166)
    #dbg_value(ptr undef, !156, !DIExpression(), !166)
    #dbg_value(i32 %add5.3, !161, !DIExpression(), !166)
  %add20 = add nsw i32 %add5.3, %add5, !dbg !186
    #dbg_value(i32 %add20, !162, !DIExpression(), !166)
  %add21 = add nsw i32 %add5.2, %add5.1, !dbg !190
    #dbg_value(i32 %add21, !163, !DIExpression(), !166)
  %sub22 = sub nsw i32 %add5.1, %add5.2, !dbg !191
    #dbg_value(i32 %sub22, !164, !DIExpression(), !166)
  %sub23 = sub nsw i32 %add5, %add5.3, !dbg !192
    #dbg_value(i32 %sub23, !165, !DIExpression(), !166)
  %add24 = add nsw i32 %add20, %add21, !dbg !193
  %shr = ashr i32 %add24, 1, !dbg !194
  %20 = load ptr, ptr %tblock, align 8, !dbg !195
  store i32 %shr, ptr %20, align 4, !dbg !196
  %add28 = add nsw i32 %sub23, %sub22, !dbg !197
  %shr29 = ashr i32 %add28, 1, !dbg !198
  %21 = load ptr, ptr %arrayidx30, align 8, !dbg !199
  store i32 %shr29, ptr %21, align 4, !dbg !200
  %sub33 = sub nsw i32 %add20, %add21, !dbg !201
  %shr34 = ashr i32 %sub33, 1, !dbg !202
  %22 = load ptr, ptr %arrayidx35, align 8, !dbg !203
  store i32 %shr34, ptr %22, align 4, !dbg !204
  %sub38 = sub nsw i32 %sub23, %sub22, !dbg !205
  %shr39 = ashr i32 %sub38, 1, !dbg !206
  %23 = load ptr, ptr %arrayidx40, align 8, !dbg !207
  store i32 %shr39, ptr %23, align 4, !dbg !208
    #dbg_value(i64 1, !154, !DIExpression(), !166)
    #dbg_value(i32 %add7, !158, !DIExpression(), !166)
    #dbg_value(i32 %add7.1, !159, !DIExpression(), !166)
    #dbg_value(i32 %add7.2, !160, !DIExpression(), !166)
    #dbg_value(i32 %add7.3, !161, !DIExpression(), !166)
  %add20.1 = add nsw i32 %add7.3, %add7, !dbg !186
    #dbg_value(i32 %add20.1, !162, !DIExpression(), !166)
  %add21.1 = add nsw i32 %add7.2, %add7.1, !dbg !190
    #dbg_value(i32 %add21.1, !163, !DIExpression(), !166)
  %sub22.1 = sub nsw i32 %add7.1, %add7.2, !dbg !191
    #dbg_value(i32 %sub22.1, !164, !DIExpression(), !166)
  %sub23.1 = sub nsw i32 %add7, %add7.3, !dbg !192
    #dbg_value(i32 %sub23.1, !165, !DIExpression(), !166)
  %add24.1 = add nsw i32 %add20.1, %add21.1, !dbg !193
  %shr.1 = ashr i32 %add24.1, 1, !dbg !194
  %24 = load ptr, ptr %tblock, align 8, !dbg !195
  %arrayidx27.1 = getelementptr inbounds i8, ptr %24, i64 4, !dbg !195
  store i32 %shr.1, ptr %arrayidx27.1, align 4, !dbg !196
  %add28.1 = add nsw i32 %sub23.1, %sub22.1, !dbg !197
  %shr29.1 = ashr i32 %add28.1, 1, !dbg !198
  %25 = load ptr, ptr %arrayidx30, align 8, !dbg !199
  %arrayidx32.1 = getelementptr inbounds i8, ptr %25, i64 4, !dbg !199
  store i32 %shr29.1, ptr %arrayidx32.1, align 4, !dbg !200
  %sub33.1 = sub nsw i32 %add20.1, %add21.1, !dbg !201
  %shr34.1 = ashr i32 %sub33.1, 1, !dbg !202
  %26 = load ptr, ptr %arrayidx35, align 8, !dbg !203
  %arrayidx37.1 = getelementptr inbounds i8, ptr %26, i64 4, !dbg !203
  store i32 %shr34.1, ptr %arrayidx37.1, align 4, !dbg !204
  %sub38.1 = sub nsw i32 %sub23.1, %sub22.1, !dbg !205
  %shr39.1 = ashr i32 %sub38.1, 1, !dbg !206
  %27 = load ptr, ptr %arrayidx40, align 8, !dbg !207
  %arrayidx42.1 = getelementptr inbounds i8, ptr %27, i64 4, !dbg !207
  store i32 %shr39.1, ptr %arrayidx42.1, align 4, !dbg !208
    #dbg_value(i64 2, !154, !DIExpression(), !166)
    #dbg_value(i32 %sub9, !158, !DIExpression(), !166)
    #dbg_value(i32 %sub9.1, !159, !DIExpression(), !166)
    #dbg_value(i32 %sub9.2, !160, !DIExpression(), !166)
    #dbg_value(i32 %sub9.3, !161, !DIExpression(), !166)
  %add20.2 = add nsw i32 %sub9.3, %sub9, !dbg !186
    #dbg_value(i32 %add20.2, !162, !DIExpression(), !166)
  %add21.2 = add nsw i32 %sub9.2, %sub9.1, !dbg !190
    #dbg_value(i32 %add21.2, !163, !DIExpression(), !166)
  %sub22.2 = sub nsw i32 %sub9.1, %sub9.2, !dbg !191
    #dbg_value(i32 %sub22.2, !164, !DIExpression(), !166)
  %sub23.2 = sub nsw i32 %sub9, %sub9.3, !dbg !192
    #dbg_value(i32 %sub23.2, !165, !DIExpression(), !166)
  %add24.2 = add nsw i32 %add20.2, %add21.2, !dbg !193
  %shr.2 = ashr i32 %add24.2, 1, !dbg !194
  %28 = load ptr, ptr %tblock, align 8, !dbg !195
  %arrayidx27.2 = getelementptr inbounds i8, ptr %28, i64 8, !dbg !195
  store i32 %shr.2, ptr %arrayidx27.2, align 4, !dbg !196
  %add28.2 = add nsw i32 %sub23.2, %sub22.2, !dbg !197
  %shr29.2 = ashr i32 %add28.2, 1, !dbg !198
  %29 = load ptr, ptr %arrayidx30, align 8, !dbg !199
  %arrayidx32.2 = getelementptr inbounds i8, ptr %29, i64 8, !dbg !199
  store i32 %shr29.2, ptr %arrayidx32.2, align 4, !dbg !200
  %sub33.2 = sub nsw i32 %add20.2, %add21.2, !dbg !201
  %shr34.2 = ashr i32 %sub33.2, 1, !dbg !202
  %30 = load ptr, ptr %arrayidx35, align 8, !dbg !203
  %arrayidx37.2 = getelementptr inbounds i8, ptr %30, i64 8, !dbg !203
  store i32 %shr34.2, ptr %arrayidx37.2, align 4, !dbg !204
  %sub38.2 = sub nsw i32 %sub23.2, %sub22.2, !dbg !205
  %shr39.2 = ashr i32 %sub38.2, 1, !dbg !206
  %31 = load ptr, ptr %arrayidx40, align 8, !dbg !207
  %arrayidx42.2 = getelementptr inbounds i8, ptr %31, i64 8, !dbg !207
  store i32 %shr39.2, ptr %arrayidx42.2, align 4, !dbg !208
    #dbg_value(i64 3, !154, !DIExpression(), !166)
    #dbg_value(i32 %sub11, !158, !DIExpression(), !166)
    #dbg_value(i32 %sub11.1, !159, !DIExpression(), !166)
    #dbg_value(i32 %sub11.2, !160, !DIExpression(), !166)
    #dbg_value(i32 %sub11.3, !161, !DIExpression(), !166)
  %add20.3 = add nsw i32 %sub11.3, %sub11, !dbg !186
    #dbg_value(i32 %add20.3, !162, !DIExpression(), !166)
  %add21.3 = add nsw i32 %sub11.2, %sub11.1, !dbg !190
    #dbg_value(i32 %add21.3, !163, !DIExpression(), !166)
  %sub22.3 = sub nsw i32 %sub11.1, %sub11.2, !dbg !191
    #dbg_value(i32 %sub22.3, !164, !DIExpression(), !166)
  %sub23.3 = sub nsw i32 %sub11, %sub11.3, !dbg !192
    #dbg_value(i32 %sub23.3, !165, !DIExpression(), !166)
  %add24.3 = add nsw i32 %add20.3, %add21.3, !dbg !193
  %shr.3 = ashr i32 %add24.3, 1, !dbg !194
  %32 = load ptr, ptr %tblock, align 8, !dbg !195
  %arrayidx27.3 = getelementptr inbounds i8, ptr %32, i64 12, !dbg !195
  store i32 %shr.3, ptr %arrayidx27.3, align 4, !dbg !196
  %add28.3 = add nsw i32 %sub23.3, %sub22.3, !dbg !197
  %shr29.3 = ashr i32 %add28.3, 1, !dbg !198
  %33 = load ptr, ptr %arrayidx30, align 8, !dbg !199
  %arrayidx32.3 = getelementptr inbounds i8, ptr %33, i64 12, !dbg !199
  store i32 %shr29.3, ptr %arrayidx32.3, align 4, !dbg !200
  %sub33.3 = sub nsw i32 %add20.3, %add21.3, !dbg !201
  %shr34.3 = ashr i32 %sub33.3, 1, !dbg !202
  %34 = load ptr, ptr %arrayidx35, align 8, !dbg !203
  %arrayidx37.3 = getelementptr inbounds i8, ptr %34, i64 12, !dbg !203
  store i32 %shr34.3, ptr %arrayidx37.3, align 4, !dbg !204
  %sub38.3 = sub nsw i32 %sub23.3, %sub22.3, !dbg !205
  %shr39.3 = ashr i32 %sub38.3, 1, !dbg !206
  %35 = load ptr, ptr %arrayidx40, align 8, !dbg !207
  %arrayidx42.3 = getelementptr inbounds i8, ptr %35, i64 12, !dbg !207
  store i32 %shr39.3, ptr %arrayidx42.3, align 4, !dbg !208
    #dbg_value(i64 4, !154, !DIExpression(), !166)
  ret void, !dbg !209
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ihadamard4x4(ptr nocapture noundef readonly %tblock, ptr nocapture noundef readonly %block) local_unnamed_addr #0 !dbg !210 {
entry:
    #dbg_value(ptr %tblock, !212, !DIExpression(), !226)
    #dbg_value(ptr %block, !213, !DIExpression(), !226)
    #dbg_value(ptr undef, !216, !DIExpression(), !226)
    #dbg_value(i32 0, !214, !DIExpression(), !226)
    #dbg_value(i64 0, !214, !DIExpression(), !226)
    #dbg_value(ptr undef, !216, !DIExpression(), !226)
  %0 = load ptr, ptr %tblock, align 8, !dbg !227
    #dbg_value(ptr %0, !217, !DIExpression(), !226)
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 4, !dbg !231
    #dbg_value(ptr %incdec.ptr, !217, !DIExpression(), !226)
  %1 = load i32, ptr %0, align 4, !dbg !232
    #dbg_value(i32 %1, !222, !DIExpression(), !226)
  %incdec.ptr1 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !233
    #dbg_value(ptr %incdec.ptr1, !217, !DIExpression(), !226)
  %2 = load i32, ptr %incdec.ptr, align 4, !dbg !234
    #dbg_value(i32 %2, !223, !DIExpression(), !226)
  %incdec.ptr2 = getelementptr inbounds i8, ptr %0, i64 12, !dbg !235
    #dbg_value(ptr %incdec.ptr2, !217, !DIExpression(), !226)
  %3 = load i32, ptr %incdec.ptr1, align 4, !dbg !236
    #dbg_value(i32 %3, !224, !DIExpression(), !226)
  %4 = load i32, ptr %incdec.ptr2, align 4, !dbg !237
    #dbg_value(i32 %4, !225, !DIExpression(), !226)
  %add = add nsw i32 %3, %1, !dbg !238
    #dbg_value(i32 %add, !218, !DIExpression(), !226)
  %sub = sub nsw i32 %1, %3, !dbg !239
    #dbg_value(i32 %sub, !219, !DIExpression(), !226)
  %sub3 = sub nsw i32 %2, %4, !dbg !240
    #dbg_value(i32 %sub3, !220, !DIExpression(), !226)
  %add4 = add nsw i32 %4, %2, !dbg !241
    #dbg_value(i32 %add4, !221, !DIExpression(), !226)
  %add5 = add nsw i32 %add4, %add, !dbg !242
    #dbg_value(i32 %add5, !215, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !226)
  %add7 = add nsw i32 %sub3, %sub, !dbg !243
    #dbg_value(i32 %add7, !215, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !226)
  %sub9 = sub nsw i32 %sub, %sub3, !dbg !244
    #dbg_value(i32 %sub9, !215, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !226)
  %sub11 = sub nsw i32 %add, %add4, !dbg !245
    #dbg_value(i32 %sub11, !215, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !226)
    #dbg_value(i64 1, !214, !DIExpression(), !226)
  %arrayidx.1 = getelementptr inbounds i8, ptr %tblock, i64 8, !dbg !227
  %5 = load ptr, ptr %arrayidx.1, align 8, !dbg !227
    #dbg_value(ptr %5, !217, !DIExpression(), !226)
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %5, i64 4, !dbg !231
    #dbg_value(ptr %incdec.ptr.1, !217, !DIExpression(), !226)
  %6 = load i32, ptr %5, align 4, !dbg !232
    #dbg_value(i32 %6, !222, !DIExpression(), !226)
  %incdec.ptr1.1 = getelementptr inbounds i8, ptr %5, i64 8, !dbg !233
    #dbg_value(ptr %incdec.ptr1.1, !217, !DIExpression(), !226)
  %7 = load i32, ptr %incdec.ptr.1, align 4, !dbg !234
    #dbg_value(i32 %7, !223, !DIExpression(), !226)
  %incdec.ptr2.1 = getelementptr inbounds i8, ptr %5, i64 12, !dbg !235
    #dbg_value(ptr %incdec.ptr2.1, !217, !DIExpression(), !226)
  %8 = load i32, ptr %incdec.ptr1.1, align 4, !dbg !236
    #dbg_value(i32 %8, !224, !DIExpression(), !226)
  %9 = load i32, ptr %incdec.ptr2.1, align 4, !dbg !237
    #dbg_value(i32 %9, !225, !DIExpression(), !226)
  %add.1 = add nsw i32 %8, %6, !dbg !238
    #dbg_value(i32 %add.1, !218, !DIExpression(), !226)
  %sub.1 = sub nsw i32 %6, %8, !dbg !239
    #dbg_value(i32 %sub.1, !219, !DIExpression(), !226)
  %sub3.1 = sub nsw i32 %7, %9, !dbg !240
    #dbg_value(i32 %sub3.1, !220, !DIExpression(), !226)
  %add4.1 = add nsw i32 %9, %7, !dbg !241
    #dbg_value(i32 %add4.1, !221, !DIExpression(), !226)
  %add5.1 = add nsw i32 %add4.1, %add.1, !dbg !242
    #dbg_value(i32 %add5.1, !215, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !226)
  %add7.1 = add nsw i32 %sub3.1, %sub.1, !dbg !243
    #dbg_value(i32 %add7.1, !215, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !226)
  %sub9.1 = sub nsw i32 %sub.1, %sub3.1, !dbg !244
    #dbg_value(i32 %sub9.1, !215, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !226)
  %sub11.1 = sub nsw i32 %add.1, %add4.1, !dbg !245
    #dbg_value(i32 %sub11.1, !215, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !226)
    #dbg_value(i64 2, !214, !DIExpression(), !226)
  %arrayidx.2 = getelementptr inbounds i8, ptr %tblock, i64 16, !dbg !227
  %10 = load ptr, ptr %arrayidx.2, align 8, !dbg !227
    #dbg_value(ptr %10, !217, !DIExpression(), !226)
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %10, i64 4, !dbg !231
    #dbg_value(ptr %incdec.ptr.2, !217, !DIExpression(), !226)
  %11 = load i32, ptr %10, align 4, !dbg !232
    #dbg_value(i32 %11, !222, !DIExpression(), !226)
  %incdec.ptr1.2 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !233
    #dbg_value(ptr %incdec.ptr1.2, !217, !DIExpression(), !226)
  %12 = load i32, ptr %incdec.ptr.2, align 4, !dbg !234
    #dbg_value(i32 %12, !223, !DIExpression(), !226)
  %incdec.ptr2.2 = getelementptr inbounds i8, ptr %10, i64 12, !dbg !235
    #dbg_value(ptr %incdec.ptr2.2, !217, !DIExpression(), !226)
  %13 = load i32, ptr %incdec.ptr1.2, align 4, !dbg !236
    #dbg_value(i32 %13, !224, !DIExpression(), !226)
  %14 = load i32, ptr %incdec.ptr2.2, align 4, !dbg !237
    #dbg_value(i32 %14, !225, !DIExpression(), !226)
  %add.2 = add nsw i32 %13, %11, !dbg !238
    #dbg_value(i32 %add.2, !218, !DIExpression(), !226)
  %sub.2 = sub nsw i32 %11, %13, !dbg !239
    #dbg_value(i32 %sub.2, !219, !DIExpression(), !226)
  %sub3.2 = sub nsw i32 %12, %14, !dbg !240
    #dbg_value(i32 %sub3.2, !220, !DIExpression(), !226)
  %add4.2 = add nsw i32 %14, %12, !dbg !241
    #dbg_value(i32 %add4.2, !221, !DIExpression(), !226)
  %add5.2 = add nsw i32 %add4.2, %add.2, !dbg !242
    #dbg_value(i32 %add5.2, !215, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !226)
  %add7.2 = add nsw i32 %sub3.2, %sub.2, !dbg !243
    #dbg_value(i32 %add7.2, !215, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !226)
  %sub9.2 = sub nsw i32 %sub.2, %sub3.2, !dbg !244
    #dbg_value(i32 %sub9.2, !215, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !226)
  %sub11.2 = sub nsw i32 %add.2, %add4.2, !dbg !245
    #dbg_value(i32 %sub11.2, !215, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !226)
    #dbg_value(i64 3, !214, !DIExpression(), !226)
  %arrayidx.3 = getelementptr inbounds i8, ptr %tblock, i64 24, !dbg !227
  %15 = load ptr, ptr %arrayidx.3, align 8, !dbg !227
    #dbg_value(ptr %15, !217, !DIExpression(), !226)
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %15, i64 4, !dbg !231
    #dbg_value(ptr %incdec.ptr.3, !217, !DIExpression(), !226)
  %16 = load i32, ptr %15, align 4, !dbg !232
    #dbg_value(i32 %16, !222, !DIExpression(), !226)
  %incdec.ptr1.3 = getelementptr inbounds i8, ptr %15, i64 8, !dbg !233
    #dbg_value(ptr %incdec.ptr1.3, !217, !DIExpression(), !226)
  %17 = load i32, ptr %incdec.ptr.3, align 4, !dbg !234
    #dbg_value(i32 %17, !223, !DIExpression(), !226)
  %incdec.ptr2.3 = getelementptr inbounds i8, ptr %15, i64 12, !dbg !235
    #dbg_value(ptr %incdec.ptr2.3, !217, !DIExpression(), !226)
  %18 = load i32, ptr %incdec.ptr1.3, align 4, !dbg !236
    #dbg_value(i32 %18, !224, !DIExpression(), !226)
  %19 = load i32, ptr %incdec.ptr2.3, align 4, !dbg !237
    #dbg_value(i32 %19, !225, !DIExpression(), !226)
  %add.3 = add nsw i32 %18, %16, !dbg !238
    #dbg_value(i32 %add.3, !218, !DIExpression(), !226)
  %sub.3 = sub nsw i32 %16, %18, !dbg !239
    #dbg_value(i32 %sub.3, !219, !DIExpression(), !226)
  %sub3.3 = sub nsw i32 %17, %19, !dbg !240
    #dbg_value(i32 %sub3.3, !220, !DIExpression(), !226)
  %add4.3 = add nsw i32 %19, %17, !dbg !241
    #dbg_value(i32 %add4.3, !221, !DIExpression(), !226)
  %add5.3 = add nsw i32 %add4.3, %add.3, !dbg !242
    #dbg_value(i32 %add5.3, !215, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !226)
  %add7.3 = add nsw i32 %sub3.3, %sub.3, !dbg !243
    #dbg_value(i32 %add7.3, !215, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !226)
  %sub9.3 = sub nsw i32 %sub.3, %sub3.3, !dbg !244
    #dbg_value(i32 %sub9.3, !215, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !226)
  %sub11.3 = sub nsw i32 %add.3, %add4.3, !dbg !245
    #dbg_value(ptr undef, !216, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !226)
    #dbg_value(i32 %sub11.3, !215, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !226)
    #dbg_value(i64 4, !214, !DIExpression(), !226)
  %arrayidx29 = getelementptr inbounds i8, ptr %block, i64 8
  %arrayidx33 = getelementptr inbounds i8, ptr %block, i64 16
  %arrayidx37 = getelementptr inbounds i8, ptr %block, i64 24
    #dbg_value(i32 0, !214, !DIExpression(), !226)
    #dbg_value(i64 0, !214, !DIExpression(), !226)
    #dbg_value(i32 %add5, !222, !DIExpression(), !226)
    #dbg_value(i32 %add5.1, !223, !DIExpression(), !226)
    #dbg_value(i32 %add5.2, !224, !DIExpression(), !226)
    #dbg_value(ptr undef, !216, !DIExpression(), !226)
    #dbg_value(i32 %add5.3, !225, !DIExpression(), !226)
  %add20 = add nsw i32 %add5.2, %add5, !dbg !246
    #dbg_value(i32 %add20, !218, !DIExpression(), !226)
  %sub21 = sub nsw i32 %add5, %add5.2, !dbg !250
    #dbg_value(i32 %sub21, !219, !DIExpression(), !226)
  %sub22 = sub nsw i32 %add5.1, %add5.3, !dbg !251
    #dbg_value(i32 %sub22, !220, !DIExpression(), !226)
  %add23 = add nsw i32 %add5.3, %add5.1, !dbg !252
    #dbg_value(i32 %add23, !221, !DIExpression(), !226)
  %add24 = add nsw i32 %add23, %add20, !dbg !253
  %20 = load ptr, ptr %block, align 8, !dbg !254
  store i32 %add24, ptr %20, align 4, !dbg !255
  %add28 = add nsw i32 %sub22, %sub21, !dbg !256
  %21 = load ptr, ptr %arrayidx29, align 8, !dbg !257
  store i32 %add28, ptr %21, align 4, !dbg !258
  %sub32 = sub nsw i32 %sub21, %sub22, !dbg !259
  %22 = load ptr, ptr %arrayidx33, align 8, !dbg !260
  store i32 %sub32, ptr %22, align 4, !dbg !261
  %sub36 = sub nsw i32 %add20, %add23, !dbg !262
  %23 = load ptr, ptr %arrayidx37, align 8, !dbg !263
  store i32 %sub36, ptr %23, align 4, !dbg !264
    #dbg_value(i64 1, !214, !DIExpression(), !226)
    #dbg_value(i32 %add7, !222, !DIExpression(), !226)
    #dbg_value(i32 %add7.1, !223, !DIExpression(), !226)
    #dbg_value(i32 %add7.2, !224, !DIExpression(), !226)
    #dbg_value(i32 %add7.3, !225, !DIExpression(), !226)
  %add20.1 = add nsw i32 %add7.2, %add7, !dbg !246
    #dbg_value(i32 %add20.1, !218, !DIExpression(), !226)
  %sub21.1 = sub nsw i32 %add7, %add7.2, !dbg !250
    #dbg_value(i32 %sub21.1, !219, !DIExpression(), !226)
  %sub22.1 = sub nsw i32 %add7.1, %add7.3, !dbg !251
    #dbg_value(i32 %sub22.1, !220, !DIExpression(), !226)
  %add23.1 = add nsw i32 %add7.3, %add7.1, !dbg !252
    #dbg_value(i32 %add23.1, !221, !DIExpression(), !226)
  %add24.1 = add nsw i32 %add23.1, %add20.1, !dbg !253
  %24 = load ptr, ptr %block, align 8, !dbg !254
  %arrayidx27.1 = getelementptr inbounds i8, ptr %24, i64 4, !dbg !254
  store i32 %add24.1, ptr %arrayidx27.1, align 4, !dbg !255
  %add28.1 = add nsw i32 %sub22.1, %sub21.1, !dbg !256
  %25 = load ptr, ptr %arrayidx29, align 8, !dbg !257
  %arrayidx31.1 = getelementptr inbounds i8, ptr %25, i64 4, !dbg !257
  store i32 %add28.1, ptr %arrayidx31.1, align 4, !dbg !258
  %sub32.1 = sub nsw i32 %sub21.1, %sub22.1, !dbg !259
  %26 = load ptr, ptr %arrayidx33, align 8, !dbg !260
  %arrayidx35.1 = getelementptr inbounds i8, ptr %26, i64 4, !dbg !260
  store i32 %sub32.1, ptr %arrayidx35.1, align 4, !dbg !261
  %sub36.1 = sub nsw i32 %add20.1, %add23.1, !dbg !262
  %27 = load ptr, ptr %arrayidx37, align 8, !dbg !263
  %arrayidx39.1 = getelementptr inbounds i8, ptr %27, i64 4, !dbg !263
  store i32 %sub36.1, ptr %arrayidx39.1, align 4, !dbg !264
    #dbg_value(i64 2, !214, !DIExpression(), !226)
    #dbg_value(i32 %sub9, !222, !DIExpression(), !226)
    #dbg_value(i32 %sub9.1, !223, !DIExpression(), !226)
    #dbg_value(i32 %sub9.2, !224, !DIExpression(), !226)
    #dbg_value(i32 %sub9.3, !225, !DIExpression(), !226)
  %add20.2 = add nsw i32 %sub9.2, %sub9, !dbg !246
    #dbg_value(i32 %add20.2, !218, !DIExpression(), !226)
  %sub21.2 = sub nsw i32 %sub9, %sub9.2, !dbg !250
    #dbg_value(i32 %sub21.2, !219, !DIExpression(), !226)
  %sub22.2 = sub nsw i32 %sub9.1, %sub9.3, !dbg !251
    #dbg_value(i32 %sub22.2, !220, !DIExpression(), !226)
  %add23.2 = add nsw i32 %sub9.3, %sub9.1, !dbg !252
    #dbg_value(i32 %add23.2, !221, !DIExpression(), !226)
  %add24.2 = add nsw i32 %add23.2, %add20.2, !dbg !253
  %28 = load ptr, ptr %block, align 8, !dbg !254
  %arrayidx27.2 = getelementptr inbounds i8, ptr %28, i64 8, !dbg !254
  store i32 %add24.2, ptr %arrayidx27.2, align 4, !dbg !255
  %add28.2 = add nsw i32 %sub22.2, %sub21.2, !dbg !256
  %29 = load ptr, ptr %arrayidx29, align 8, !dbg !257
  %arrayidx31.2 = getelementptr inbounds i8, ptr %29, i64 8, !dbg !257
  store i32 %add28.2, ptr %arrayidx31.2, align 4, !dbg !258
  %sub32.2 = sub nsw i32 %sub21.2, %sub22.2, !dbg !259
  %30 = load ptr, ptr %arrayidx33, align 8, !dbg !260
  %arrayidx35.2 = getelementptr inbounds i8, ptr %30, i64 8, !dbg !260
  store i32 %sub32.2, ptr %arrayidx35.2, align 4, !dbg !261
  %sub36.2 = sub nsw i32 %add20.2, %add23.2, !dbg !262
  %31 = load ptr, ptr %arrayidx37, align 8, !dbg !263
  %arrayidx39.2 = getelementptr inbounds i8, ptr %31, i64 8, !dbg !263
  store i32 %sub36.2, ptr %arrayidx39.2, align 4, !dbg !264
    #dbg_value(i64 3, !214, !DIExpression(), !226)
    #dbg_value(i32 %sub11, !222, !DIExpression(), !226)
    #dbg_value(i32 %sub11.1, !223, !DIExpression(), !226)
    #dbg_value(i32 %sub11.2, !224, !DIExpression(), !226)
    #dbg_value(i32 %sub11.3, !225, !DIExpression(), !226)
  %add20.3 = add nsw i32 %sub11.2, %sub11, !dbg !246
    #dbg_value(i32 %add20.3, !218, !DIExpression(), !226)
  %sub21.3 = sub nsw i32 %sub11, %sub11.2, !dbg !250
    #dbg_value(i32 %sub21.3, !219, !DIExpression(), !226)
  %sub22.3 = sub nsw i32 %sub11.1, %sub11.3, !dbg !251
    #dbg_value(i32 %sub22.3, !220, !DIExpression(), !226)
  %add23.3 = add nsw i32 %sub11.3, %sub11.1, !dbg !252
    #dbg_value(i32 %add23.3, !221, !DIExpression(), !226)
  %add24.3 = add nsw i32 %add23.3, %add20.3, !dbg !253
  %32 = load ptr, ptr %block, align 8, !dbg !254
  %arrayidx27.3 = getelementptr inbounds i8, ptr %32, i64 12, !dbg !254
  store i32 %add24.3, ptr %arrayidx27.3, align 4, !dbg !255
  %add28.3 = add nsw i32 %sub22.3, %sub21.3, !dbg !256
  %33 = load ptr, ptr %arrayidx29, align 8, !dbg !257
  %arrayidx31.3 = getelementptr inbounds i8, ptr %33, i64 12, !dbg !257
  store i32 %add28.3, ptr %arrayidx31.3, align 4, !dbg !258
  %sub32.3 = sub nsw i32 %sub21.3, %sub22.3, !dbg !259
  %34 = load ptr, ptr %arrayidx33, align 8, !dbg !260
  %arrayidx35.3 = getelementptr inbounds i8, ptr %34, i64 12, !dbg !260
  store i32 %sub32.3, ptr %arrayidx35.3, align 4, !dbg !261
  %sub36.3 = sub nsw i32 %add20.3, %add23.3, !dbg !262
  %35 = load ptr, ptr %arrayidx37, align 8, !dbg !263
  %arrayidx39.3 = getelementptr inbounds i8, ptr %35, i64 12, !dbg !263
  store i32 %sub36.3, ptr %arrayidx39.3, align 4, !dbg !264
    #dbg_value(i64 4, !214, !DIExpression(), !226)
  ret void, !dbg !265
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @hadamard4x2(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %tblock) local_unnamed_addr #0 !dbg !266 {
entry:
    #dbg_value(ptr %block, !268, !DIExpression(), !284)
    #dbg_value(ptr %tblock, !269, !DIExpression(), !284)
    #dbg_value(ptr undef, !275, !DIExpression(), !284)
  %0 = load ptr, ptr %block, align 8, !dbg !285
  %1 = load i32, ptr %0, align 4, !dbg !285
  %arrayidx2 = getelementptr inbounds i8, ptr %block, i64 8, !dbg !286
  %2 = load ptr, ptr %arrayidx2, align 8, !dbg !286
  %3 = load i32, ptr %2, align 4, !dbg !286
  %add = add nsw i32 %3, %1, !dbg !287
    #dbg_value(i32 %add, !271, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !284)
  %arrayidx5 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !288
  %4 = load i32, ptr %arrayidx5, align 4, !dbg !288
  %arrayidx7 = getelementptr inbounds i8, ptr %2, i64 4, !dbg !289
  %5 = load i32, ptr %arrayidx7, align 4, !dbg !289
  %add8 = add nsw i32 %5, %4, !dbg !290
    #dbg_value(i32 %add8, !271, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !284)
  %arrayidx11 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !291
  %6 = load i32, ptr %arrayidx11, align 4, !dbg !291
  %arrayidx13 = getelementptr inbounds i8, ptr %2, i64 8, !dbg !292
  %7 = load i32, ptr %arrayidx13, align 4, !dbg !292
  %add14 = add nsw i32 %7, %6, !dbg !293
    #dbg_value(i32 %add14, !271, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !284)
  %arrayidx17 = getelementptr inbounds i8, ptr %0, i64 12, !dbg !294
  %8 = load i32, ptr %arrayidx17, align 4, !dbg !294
  %arrayidx19 = getelementptr inbounds i8, ptr %2, i64 12, !dbg !295
  %9 = load i32, ptr %arrayidx19, align 4, !dbg !295
  %add20 = add nsw i32 %9, %8, !dbg !296
    #dbg_value(i32 %add20, !271, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !284)
  %sub = sub nsw i32 %1, %3, !dbg !297
    #dbg_value(i32 %sub, !271, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !284)
  %sub31 = sub nsw i32 %4, %5, !dbg !298
    #dbg_value(i32 %sub31, !271, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !284)
  %sub37 = sub nsw i32 %6, %7, !dbg !299
    #dbg_value(i32 %sub37, !271, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !284)
  %sub43 = sub nsw i32 %8, %9, !dbg !300
    #dbg_value(i32 %sub43, !271, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !284)
    #dbg_value(i32 0, !270, !DIExpression(), !284)
    #dbg_value(i64 0, !270, !DIExpression(), !284)
    #dbg_value(i32 %add, !276, !DIExpression(), !284)
    #dbg_value(i32 %add8, !277, !DIExpression(), !284)
    #dbg_value(i32 %add14, !278, !DIExpression(), !284)
    #dbg_value(ptr undef, !275, !DIExpression(), !284)
    #dbg_value(i32 %add20, !279, !DIExpression(), !284)
  %add49 = add nsw i32 %add20, %add, !dbg !301
    #dbg_value(i32 %add49, !280, !DIExpression(), !284)
  %add50 = add nsw i32 %add14, %add8, !dbg !305
    #dbg_value(i32 %add50, !281, !DIExpression(), !284)
  %sub51 = sub nsw i32 %add8, %add14, !dbg !306
    #dbg_value(i32 %sub51, !282, !DIExpression(), !284)
  %sub52 = sub nsw i32 %add, %add20, !dbg !307
    #dbg_value(i32 %sub52, !283, !DIExpression(), !284)
  %add53 = add nsw i32 %add49, %add50, !dbg !308
  %10 = load ptr, ptr %tblock, align 8, !dbg !309
  store i32 %add53, ptr %10, align 4, !dbg !310
  %add56 = add nsw i32 %sub52, %sub51, !dbg !311
  %11 = load ptr, ptr %tblock, align 8, !dbg !312
  %arrayidx59 = getelementptr inbounds i8, ptr %11, i64 4, !dbg !312
  store i32 %add56, ptr %arrayidx59, align 4, !dbg !313
  %sub60 = sub nsw i32 %add49, %add50, !dbg !314
  %12 = load ptr, ptr %tblock, align 8, !dbg !315
  %arrayidx63 = getelementptr inbounds i8, ptr %12, i64 8, !dbg !315
  store i32 %sub60, ptr %arrayidx63, align 4, !dbg !316
  %sub64 = sub nsw i32 %sub52, %sub51, !dbg !317
  %13 = load ptr, ptr %tblock, align 8, !dbg !318
  %arrayidx67 = getelementptr inbounds i8, ptr %13, i64 12, !dbg !318
  store i32 %sub64, ptr %arrayidx67, align 4, !dbg !319
    #dbg_value(i64 1, !270, !DIExpression(), !284)
    #dbg_value(i32 %sub, !276, !DIExpression(), !284)
    #dbg_value(i32 %sub31, !277, !DIExpression(), !284)
    #dbg_value(i32 %sub37, !278, !DIExpression(), !284)
    #dbg_value(ptr undef, !275, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !284)
    #dbg_value(i32 %sub43, !279, !DIExpression(), !284)
  %add49.1 = add nsw i32 %sub43, %sub, !dbg !301
    #dbg_value(i32 %add49.1, !280, !DIExpression(), !284)
  %add50.1 = add nsw i32 %sub37, %sub31, !dbg !305
    #dbg_value(i32 %add50.1, !281, !DIExpression(), !284)
  %sub51.1 = sub nsw i32 %sub31, %sub37, !dbg !306
    #dbg_value(i32 %sub51.1, !282, !DIExpression(), !284)
  %sub52.1 = sub nsw i32 %sub, %sub43, !dbg !307
    #dbg_value(i32 %sub52.1, !283, !DIExpression(), !284)
  %add53.1 = add nsw i32 %add49.1, %add50.1, !dbg !308
  %arrayidx54.1 = getelementptr inbounds i8, ptr %tblock, i64 8, !dbg !309
  %14 = load ptr, ptr %arrayidx54.1, align 8, !dbg !309
  store i32 %add53.1, ptr %14, align 4, !dbg !310
  %add56.1 = add nsw i32 %sub52.1, %sub51.1, !dbg !311
  %15 = load ptr, ptr %arrayidx54.1, align 8, !dbg !312
  %arrayidx59.1 = getelementptr inbounds i8, ptr %15, i64 4, !dbg !312
  store i32 %add56.1, ptr %arrayidx59.1, align 4, !dbg !313
  %sub60.1 = sub nsw i32 %add49.1, %add50.1, !dbg !314
  %16 = load ptr, ptr %arrayidx54.1, align 8, !dbg !315
  %arrayidx63.1 = getelementptr inbounds i8, ptr %16, i64 8, !dbg !315
  store i32 %sub60.1, ptr %arrayidx63.1, align 4, !dbg !316
  %sub64.1 = sub nsw i32 %sub52.1, %sub51.1, !dbg !317
  %17 = load ptr, ptr %arrayidx54.1, align 8, !dbg !318
  %arrayidx67.1 = getelementptr inbounds i8, ptr %17, i64 12, !dbg !318
  store i32 %sub64.1, ptr %arrayidx67.1, align 4, !dbg !319
    #dbg_value(i64 2, !270, !DIExpression(), !284)
  ret void, !dbg !320
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ihadamard4x2(ptr nocapture noundef readonly %tblock, ptr nocapture noundef readonly %block) local_unnamed_addr #0 !dbg !321 {
entry:
    #dbg_value(ptr %tblock, !323, !DIExpression(), !336)
    #dbg_value(ptr %block, !324, !DIExpression(), !336)
    #dbg_value(ptr undef, !327, !DIExpression(), !336)
  %0 = load ptr, ptr %tblock, align 8, !dbg !337
  %1 = load i32, ptr %0, align 4, !dbg !337
  %arrayidx2 = getelementptr inbounds i8, ptr %tblock, i64 8, !dbg !338
  %2 = load ptr, ptr %arrayidx2, align 8, !dbg !338
  %3 = load i32, ptr %2, align 4, !dbg !338
  %add = add nsw i32 %3, %1, !dbg !339
    #dbg_value(i32 %add, !326, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !336)
  %arrayidx5 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !340
  %4 = load i32, ptr %arrayidx5, align 4, !dbg !340
  %arrayidx7 = getelementptr inbounds i8, ptr %2, i64 4, !dbg !341
  %5 = load i32, ptr %arrayidx7, align 4, !dbg !341
  %add8 = add nsw i32 %5, %4, !dbg !342
    #dbg_value(i32 %add8, !326, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !336)
  %arrayidx11 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !343
  %6 = load i32, ptr %arrayidx11, align 4, !dbg !343
  %arrayidx13 = getelementptr inbounds i8, ptr %2, i64 8, !dbg !344
  %7 = load i32, ptr %arrayidx13, align 4, !dbg !344
  %add14 = add nsw i32 %7, %6, !dbg !345
    #dbg_value(i32 %add14, !326, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !336)
  %arrayidx17 = getelementptr inbounds i8, ptr %0, i64 12, !dbg !346
  %8 = load i32, ptr %arrayidx17, align 4, !dbg !346
  %arrayidx19 = getelementptr inbounds i8, ptr %2, i64 12, !dbg !347
  %9 = load i32, ptr %arrayidx19, align 4, !dbg !347
  %add20 = add nsw i32 %9, %8, !dbg !348
    #dbg_value(i32 %add20, !326, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !336)
  %sub = sub nsw i32 %1, %3, !dbg !349
    #dbg_value(i32 %sub, !326, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !336)
  %sub31 = sub nsw i32 %4, %5, !dbg !350
    #dbg_value(i32 %sub31, !326, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !336)
  %sub37 = sub nsw i32 %6, %7, !dbg !351
    #dbg_value(i32 %sub37, !326, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !336)
  %sub43 = sub nsw i32 %8, %9, !dbg !352
    #dbg_value(i32 %sub43, !326, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !336)
    #dbg_value(i32 0, !325, !DIExpression(), !336)
  %arrayidx57 = getelementptr inbounds i8, ptr %block, i64 8
  %arrayidx61 = getelementptr inbounds i8, ptr %block, i64 16
  %arrayidx65 = getelementptr inbounds i8, ptr %block, i64 24
    #dbg_value(i64 0, !325, !DIExpression(), !336)
    #dbg_value(i32 %add, !328, !DIExpression(), !336)
    #dbg_value(i32 %add8, !329, !DIExpression(), !336)
    #dbg_value(i32 %add14, !330, !DIExpression(), !336)
    #dbg_value(ptr undef, !327, !DIExpression(), !336)
    #dbg_value(i32 %add20, !331, !DIExpression(), !336)
  %add49 = add nsw i32 %add14, %add, !dbg !353
    #dbg_value(i32 %add49, !332, !DIExpression(), !336)
  %sub50 = sub nsw i32 %add, %add14, !dbg !357
    #dbg_value(i32 %sub50, !333, !DIExpression(), !336)
  %sub51 = sub nsw i32 %add8, %add20, !dbg !358
    #dbg_value(i32 %sub51, !334, !DIExpression(), !336)
  %add52 = add nsw i32 %add20, %add8, !dbg !359
    #dbg_value(i32 %add52, !335, !DIExpression(), !336)
  %add53 = add nsw i32 %add52, %add49, !dbg !360
  %10 = load ptr, ptr %block, align 8, !dbg !361
  store i32 %add53, ptr %10, align 4, !dbg !362
  %add56 = add nsw i32 %sub51, %sub50, !dbg !363
  %11 = load ptr, ptr %arrayidx57, align 8, !dbg !364
  store i32 %add56, ptr %11, align 4, !dbg !365
  %sub60 = sub nsw i32 %sub50, %sub51, !dbg !366
  %12 = load ptr, ptr %arrayidx61, align 8, !dbg !367
  store i32 %sub60, ptr %12, align 4, !dbg !368
  %sub64 = sub nsw i32 %add49, %add52, !dbg !369
  %13 = load ptr, ptr %arrayidx65, align 8, !dbg !370
  store i32 %sub64, ptr %13, align 4, !dbg !371
    #dbg_value(i64 1, !325, !DIExpression(), !336)
    #dbg_value(i32 %sub, !328, !DIExpression(), !336)
    #dbg_value(i32 %sub31, !329, !DIExpression(), !336)
    #dbg_value(i32 %sub37, !330, !DIExpression(), !336)
    #dbg_value(ptr undef, !327, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !336)
    #dbg_value(i32 %sub43, !331, !DIExpression(), !336)
  %add49.1 = add nsw i32 %sub37, %sub, !dbg !353
    #dbg_value(i32 %add49.1, !332, !DIExpression(), !336)
  %sub50.1 = sub nsw i32 %sub, %sub37, !dbg !357
    #dbg_value(i32 %sub50.1, !333, !DIExpression(), !336)
  %sub51.1 = sub nsw i32 %sub31, %sub43, !dbg !358
    #dbg_value(i32 %sub51.1, !334, !DIExpression(), !336)
  %add52.1 = add nsw i32 %sub43, %sub31, !dbg !359
    #dbg_value(i32 %add52.1, !335, !DIExpression(), !336)
  %add53.1 = add nsw i32 %add52.1, %add49.1, !dbg !360
  %14 = load ptr, ptr %block, align 8, !dbg !361
  %arrayidx55.1 = getelementptr inbounds i8, ptr %14, i64 4, !dbg !361
  store i32 %add53.1, ptr %arrayidx55.1, align 4, !dbg !362
  %add56.1 = add nsw i32 %sub51.1, %sub50.1, !dbg !363
  %15 = load ptr, ptr %arrayidx57, align 8, !dbg !364
  %arrayidx59.1 = getelementptr inbounds i8, ptr %15, i64 4, !dbg !364
  store i32 %add56.1, ptr %arrayidx59.1, align 4, !dbg !365
  %sub60.1 = sub nsw i32 %sub50.1, %sub51.1, !dbg !366
  %16 = load ptr, ptr %arrayidx61, align 8, !dbg !367
  %arrayidx63.1 = getelementptr inbounds i8, ptr %16, i64 4, !dbg !367
  store i32 %sub60.1, ptr %arrayidx63.1, align 4, !dbg !368
  %sub64.1 = sub nsw i32 %add49.1, %add52.1, !dbg !369
  %17 = load ptr, ptr %arrayidx65, align 8, !dbg !370
  %arrayidx67.1 = getelementptr inbounds i8, ptr %17, i64 4, !dbg !370
  store i32 %sub64.1, ptr %arrayidx67.1, align 4, !dbg !371
    #dbg_value(i64 2, !325, !DIExpression(), !336)
  ret void, !dbg !372
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @hadamard2x2(ptr nocapture noundef readonly %block, ptr nocapture noundef writeonly %tblock) local_unnamed_addr #2 !dbg !373 {
entry:
    #dbg_value(ptr %block, !377, !DIExpression(), !383)
    #dbg_value(ptr %tblock, !378, !DIExpression(), !383)
  %0 = load ptr, ptr %block, align 8, !dbg !384
  %1 = load i32, ptr %0, align 4, !dbg !384
  %arrayidx3 = getelementptr inbounds i8, ptr %0, i64 16, !dbg !385
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !385
  %add = add nsw i32 %2, %1, !dbg !386
    #dbg_value(i32 %add, !379, !DIExpression(), !383)
  %sub = sub nsw i32 %1, %2, !dbg !387
    #dbg_value(i32 %sub, !380, !DIExpression(), !383)
  %arrayidx8 = getelementptr inbounds i8, ptr %block, i64 32, !dbg !388
  %3 = load ptr, ptr %arrayidx8, align 8, !dbg !388
  %4 = load i32, ptr %3, align 4, !dbg !388
  %arrayidx11 = getelementptr inbounds i8, ptr %3, i64 16, !dbg !389
  %5 = load i32, ptr %arrayidx11, align 4, !dbg !389
  %add12 = add nsw i32 %5, %4, !dbg !390
    #dbg_value(i32 %add12, !381, !DIExpression(), !383)
  %sub17 = sub nsw i32 %4, %5, !dbg !391
    #dbg_value(i32 %sub17, !382, !DIExpression(), !383)
  %add18 = add nsw i32 %add12, %add, !dbg !392
  store i32 %add18, ptr %tblock, align 4, !dbg !393
  %add20 = add nsw i32 %sub17, %sub, !dbg !394
  %arrayidx21 = getelementptr inbounds i8, ptr %tblock, i64 4, !dbg !395
  store i32 %add20, ptr %arrayidx21, align 4, !dbg !396
  %sub22 = sub nsw i32 %add, %add12, !dbg !397
  %arrayidx23 = getelementptr inbounds i8, ptr %tblock, i64 8, !dbg !398
  store i32 %sub22, ptr %arrayidx23, align 4, !dbg !399
  %sub24 = sub nsw i32 %sub, %sub17, !dbg !400
  %arrayidx25 = getelementptr inbounds i8, ptr %tblock, i64 12, !dbg !401
  store i32 %sub24, ptr %arrayidx25, align 4, !dbg !402
  ret void, !dbg !403
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ihadamard2x2(ptr nocapture noundef readonly %tblock, ptr nocapture noundef writeonly %block) local_unnamed_addr #3 !dbg !404 {
entry:
    #dbg_value(ptr %tblock, !408, !DIExpression(), !414)
    #dbg_value(ptr %block, !409, !DIExpression(), !414)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !410, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !414)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !411, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !414)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !412, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !414)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !413, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !414)
  %0 = load <4 x i32>, ptr %tblock, align 4, !dbg !415
  %1 = shufflevector <4 x i32> %0, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>, !dbg !416
  %2 = add nsw <4 x i32> %0, %1, !dbg !416
  %3 = sub nsw <4 x i32> %0, %1, !dbg !416
  %4 = shufflevector <4 x i32> %2, <4 x i32> %3, <4 x i32> <i32 3, i32 6, i32 1, i32 4>, !dbg !416
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !417
  %6 = add nsw <4 x i32> %4, %5, !dbg !417
  %7 = sub nsw <4 x i32> %4, %5, !dbg !417
  %8 = shufflevector <4 x i32> %6, <4 x i32> %7, <4 x i32> <i32 0, i32 1, i32 6, i32 7>, !dbg !417
  store <4 x i32> %8, ptr %block, align 4, !dbg !418
  ret void, !dbg !419
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @forward8x8(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %tblock, i32 noundef %pos_y, i32 noundef %pos_x) local_unnamed_addr #4 !dbg !420 {
entry:
  %tmp = alloca [64 x i32], align 16, !DIAssignID !454
    #dbg_assign(i1 undef, !428, !DIExpression(), !454, ptr %tmp, !DIExpression(), !455)
    #dbg_value(ptr %block, !422, !DIExpression(), !455)
    #dbg_value(ptr %tblock, !423, !DIExpression(), !455)
    #dbg_value(i32 %pos_y, !424, !DIExpression(), !455)
    #dbg_value(i32 %pos_x, !425, !DIExpression(), !455)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp) #6, !dbg !456
    #dbg_value(ptr %tmp, !432, !DIExpression(), !455)
    #dbg_value(i32 %pos_y, !426, !DIExpression(), !455)
  %idxprom1 = sext i32 %pos_x to i64
  %0 = sext i32 %pos_y to i64, !dbg !457
  %1 = add i32 %pos_y, 7
  %2 = sext i32 %1 to i64
  %smax = tail call i64 @llvm.smax.i64(i64 %0, i64 %2), !dbg !457
  %3 = add i64 %smax, 1, !dbg !457
  %4 = sub i64 %3, %0, !dbg !457
  %min.iters.check = icmp ult i64 %4, 4, !dbg !457
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph, !dbg !457

for.body.preheader:                               ; preds = %middle.block, %entry
  %indvars.iv.ph = phi i64 [ %0, %entry ], [ %ind.end, %middle.block ]
  %pTmp.0298.ph = phi ptr [ %tmp, %entry ], [ %ind.end306, %middle.block ]
  br label %for.body, !dbg !457

vector.ph:                                        ; preds = %entry
  %n.vec = and i64 %4, -4, !dbg !457
  %ind.end = add i64 %n.vec, %0, !dbg !457
  %5 = shl i64 %n.vec, 5, !dbg !457
  %ind.end306 = getelementptr i8, ptr %tmp, i64 %5, !dbg !457
  %invariant.gep = getelementptr i8, ptr %block, i64 8, !dbg !457
  %invariant.gep312 = getelementptr i8, ptr %block, i64 16, !dbg !457
  %invariant.gep314 = getelementptr i8, ptr %block, i64 24, !dbg !457
  br label %vector.body, !dbg !457

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %0, !dbg !457
  %offset.idx308 = shl i64 %index, 5, !dbg !457
  %6 = or disjoint i64 %offset.idx308, 32, !dbg !457
  %7 = or disjoint i64 %offset.idx308, 64, !dbg !457
  %8 = or disjoint i64 %offset.idx308, 96, !dbg !457
  %next.gep = getelementptr i8, ptr %tmp, i64 %offset.idx308
  %next.gep309 = getelementptr i8, ptr %tmp, i64 %6
  %next.gep310 = getelementptr i8, ptr %tmp, i64 %7
  %next.gep311 = getelementptr i8, ptr %tmp, i64 %8
  %9 = getelementptr inbounds ptr, ptr %block, i64 %offset.idx, !dbg !459
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %offset.idx, !dbg !459
  %gep313 = getelementptr ptr, ptr %invariant.gep312, i64 %offset.idx, !dbg !459
  %gep315 = getelementptr ptr, ptr %invariant.gep314, i64 %offset.idx, !dbg !459
  %10 = load ptr, ptr %9, align 8, !dbg !459
  %11 = load ptr, ptr %gep, align 8, !dbg !459
  %12 = load ptr, ptr %gep313, align 8, !dbg !459
  %13 = load ptr, ptr %gep315, align 8, !dbg !459
  %14 = getelementptr inbounds i32, ptr %10, i64 %idxprom1, !dbg !459
  %15 = getelementptr inbounds i32, ptr %11, i64 %idxprom1, !dbg !459
  %16 = getelementptr inbounds i32, ptr %12, i64 %idxprom1, !dbg !459
  %17 = getelementptr inbounds i32, ptr %13, i64 %idxprom1, !dbg !459
  %18 = getelementptr inbounds i8, ptr %14, i64 4, !dbg !462
  %19 = getelementptr inbounds i8, ptr %15, i64 4, !dbg !462
  %20 = getelementptr inbounds i8, ptr %16, i64 4, !dbg !462
  %21 = getelementptr inbounds i8, ptr %17, i64 4, !dbg !462
  %22 = load i32, ptr %14, align 4, !dbg !463
  %23 = load i32, ptr %15, align 4, !dbg !463
  %24 = load i32, ptr %16, align 4, !dbg !463
  %25 = load i32, ptr %17, align 4, !dbg !463
  %26 = getelementptr inbounds i8, ptr %14, i64 8, !dbg !464
  %27 = getelementptr inbounds i8, ptr %15, i64 8, !dbg !464
  %28 = getelementptr inbounds i8, ptr %16, i64 8, !dbg !464
  %29 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !464
  %30 = load i32, ptr %18, align 4, !dbg !465
  %31 = load i32, ptr %19, align 4, !dbg !465
  %32 = load i32, ptr %20, align 4, !dbg !465
  %33 = load i32, ptr %21, align 4, !dbg !465
  %34 = getelementptr inbounds i8, ptr %14, i64 12, !dbg !466
  %35 = getelementptr inbounds i8, ptr %15, i64 12, !dbg !466
  %36 = getelementptr inbounds i8, ptr %16, i64 12, !dbg !466
  %37 = getelementptr inbounds i8, ptr %17, i64 12, !dbg !466
  %38 = load i32, ptr %26, align 4, !dbg !467
  %39 = load i32, ptr %27, align 4, !dbg !467
  %40 = load i32, ptr %28, align 4, !dbg !467
  %41 = load i32, ptr %29, align 4, !dbg !467
  %42 = getelementptr inbounds i8, ptr %14, i64 16, !dbg !468
  %43 = getelementptr inbounds i8, ptr %15, i64 16, !dbg !468
  %44 = getelementptr inbounds i8, ptr %16, i64 16, !dbg !468
  %45 = getelementptr inbounds i8, ptr %17, i64 16, !dbg !468
  %46 = load i32, ptr %34, align 4, !dbg !469
  %47 = load i32, ptr %35, align 4, !dbg !469
  %48 = load i32, ptr %36, align 4, !dbg !469
  %49 = load i32, ptr %37, align 4, !dbg !469
  %50 = getelementptr inbounds i8, ptr %14, i64 20, !dbg !470
  %51 = getelementptr inbounds i8, ptr %15, i64 20, !dbg !470
  %52 = getelementptr inbounds i8, ptr %16, i64 20, !dbg !470
  %53 = getelementptr inbounds i8, ptr %17, i64 20, !dbg !470
  %54 = load i32, ptr %42, align 4, !dbg !471
  %55 = load i32, ptr %43, align 4, !dbg !471
  %56 = load i32, ptr %44, align 4, !dbg !471
  %57 = load i32, ptr %45, align 4, !dbg !471
  %58 = getelementptr inbounds i8, ptr %14, i64 24, !dbg !472
  %59 = getelementptr inbounds i8, ptr %15, i64 24, !dbg !472
  %60 = getelementptr inbounds i8, ptr %16, i64 24, !dbg !472
  %61 = getelementptr inbounds i8, ptr %17, i64 24, !dbg !472
  %62 = load i32, ptr %50, align 4, !dbg !473
  %63 = load i32, ptr %51, align 4, !dbg !473
  %64 = load i32, ptr %52, align 4, !dbg !473
  %65 = load i32, ptr %53, align 4, !dbg !473
  %66 = getelementptr inbounds i8, ptr %14, i64 28, !dbg !474
  %67 = getelementptr inbounds i8, ptr %15, i64 28, !dbg !474
  %68 = getelementptr inbounds i8, ptr %16, i64 28, !dbg !474
  %69 = getelementptr inbounds i8, ptr %17, i64 28, !dbg !474
  %70 = load i32, ptr %58, align 4, !dbg !475
  %71 = load i32, ptr %59, align 4, !dbg !475
  %72 = load i32, ptr %60, align 4, !dbg !475
  %73 = load i32, ptr %61, align 4, !dbg !475
  %74 = load i32, ptr %66, align 4, !dbg !476
  %75 = load i32, ptr %67, align 4, !dbg !476
  %76 = load i32, ptr %68, align 4, !dbg !476
  %77 = load i32, ptr %69, align 4, !dbg !476
  %78 = add nsw i32 %74, %22, !dbg !477
  %79 = add nsw i32 %75, %23, !dbg !477
  %80 = add nsw i32 %76, %24, !dbg !477
  %81 = add nsw i32 %77, %25, !dbg !477
  %82 = add nsw i32 %70, %30, !dbg !478
  %83 = add nsw i32 %71, %31, !dbg !478
  %84 = add nsw i32 %72, %32, !dbg !478
  %85 = add nsw i32 %73, %33, !dbg !478
  %86 = add nsw i32 %62, %38, !dbg !479
  %87 = add nsw i32 %63, %39, !dbg !479
  %88 = add nsw i32 %64, %40, !dbg !479
  %89 = add nsw i32 %65, %41, !dbg !479
  %90 = add nsw i32 %54, %46, !dbg !480
  %91 = add nsw i32 %55, %47, !dbg !480
  %92 = add nsw i32 %56, %48, !dbg !480
  %93 = add nsw i32 %57, %49, !dbg !480
  %94 = add nsw i32 %78, %90, !dbg !481
  %95 = add nsw i32 %79, %91, !dbg !481
  %96 = add nsw i32 %80, %92, !dbg !481
  %97 = add nsw i32 %81, %93, !dbg !481
  %98 = add nsw i32 %82, %86, !dbg !482
  %99 = add nsw i32 %83, %87, !dbg !482
  %100 = add nsw i32 %84, %88, !dbg !482
  %101 = add nsw i32 %85, %89, !dbg !482
  %102 = sub nsw i32 %78, %90, !dbg !483
  %103 = sub nsw i32 %79, %91, !dbg !483
  %104 = sub nsw i32 %80, %92, !dbg !483
  %105 = sub nsw i32 %81, %93, !dbg !483
  %106 = sub nsw i32 %82, %86, !dbg !484
  %107 = sub nsw i32 %83, %87, !dbg !484
  %108 = sub nsw i32 %84, %88, !dbg !484
  %109 = sub nsw i32 %85, %89, !dbg !484
  %110 = sub nsw i32 %22, %74, !dbg !485
  %111 = sub nsw i32 %23, %75, !dbg !485
  %112 = sub nsw i32 %24, %76, !dbg !485
  %113 = sub nsw i32 %25, %77, !dbg !485
  %114 = sub nsw i32 %30, %70, !dbg !486
  %115 = sub nsw i32 %31, %71, !dbg !486
  %116 = sub nsw i32 %32, %72, !dbg !486
  %117 = sub nsw i32 %33, %73, !dbg !486
  %118 = sub nsw i32 %38, %62, !dbg !487
  %119 = sub nsw i32 %39, %63, !dbg !487
  %120 = sub nsw i32 %40, %64, !dbg !487
  %121 = sub nsw i32 %41, %65, !dbg !487
  %122 = sub nsw i32 %46, %54, !dbg !488
  %123 = sub nsw i32 %47, %55, !dbg !488
  %124 = sub nsw i32 %48, %56, !dbg !488
  %125 = sub nsw i32 %49, %57, !dbg !488
  %126 = ashr i32 %110, 1, !dbg !489
  %127 = ashr i32 %111, 1, !dbg !489
  %128 = ashr i32 %112, 1, !dbg !489
  %129 = ashr i32 %113, 1, !dbg !489
  %130 = add i32 %114, %118, !dbg !490
  %131 = add i32 %115, %119, !dbg !490
  %132 = add i32 %116, %120, !dbg !490
  %133 = add i32 %117, %121, !dbg !490
  %134 = add i32 %130, %110, !dbg !491
  %135 = add i32 %131, %111, !dbg !491
  %136 = add i32 %132, %112, !dbg !491
  %137 = add i32 %133, %113, !dbg !491
  %138 = add i32 %134, %126, !dbg !492
  %139 = add i32 %135, %127, !dbg !492
  %140 = add i32 %136, %128, !dbg !492
  %141 = add i32 %137, %129, !dbg !492
  %142 = ashr i32 %118, 1, !dbg !493
  %143 = ashr i32 %119, 1, !dbg !493
  %144 = ashr i32 %120, 1, !dbg !493
  %145 = ashr i32 %121, 1, !dbg !493
  %146 = add i32 %118, %122, !dbg !494
  %147 = add i32 %119, %123, !dbg !494
  %148 = add i32 %120, %124, !dbg !494
  %149 = add i32 %121, %125, !dbg !494
  %150 = add i32 %146, %142, !dbg !495
  %151 = add i32 %147, %143, !dbg !495
  %152 = add i32 %148, %144, !dbg !495
  %153 = add i32 %149, %145, !dbg !495
  %154 = sub i32 %110, %150, !dbg !495
  %155 = sub i32 %111, %151, !dbg !495
  %156 = sub i32 %112, %152, !dbg !495
  %157 = sub i32 %113, %153, !dbg !495
  %158 = ashr i32 %114, 1, !dbg !496
  %159 = ashr i32 %115, 1, !dbg !496
  %160 = ashr i32 %116, 1, !dbg !496
  %161 = ashr i32 %117, 1, !dbg !496
  %162 = add i32 %122, %110, !dbg !497
  %163 = add i32 %123, %111, !dbg !497
  %164 = add i32 %124, %112, !dbg !497
  %165 = add i32 %125, %113, !dbg !497
  %166 = add i32 %114, %158, !dbg !497
  %167 = add i32 %115, %159, !dbg !497
  %168 = add i32 %116, %160, !dbg !497
  %169 = add i32 %117, %161, !dbg !497
  %170 = sub i32 %162, %166, !dbg !497
  %171 = sub i32 %163, %167, !dbg !497
  %172 = sub i32 %164, %168, !dbg !497
  %173 = sub i32 %165, %169, !dbg !497
  %174 = sub nsw i32 %114, %118, !dbg !498
  %175 = sub nsw i32 %115, %119, !dbg !498
  %176 = sub nsw i32 %116, %120, !dbg !498
  %177 = sub nsw i32 %117, %121, !dbg !498
  %178 = ashr i32 %122, 1, !dbg !499
  %179 = ashr i32 %123, 1, !dbg !499
  %180 = ashr i32 %124, 1, !dbg !499
  %181 = ashr i32 %125, 1, !dbg !499
  %182 = add nsw i32 %178, %122, !dbg !500
  %183 = add nsw i32 %179, %123, !dbg !500
  %184 = add nsw i32 %180, %124, !dbg !500
  %185 = add nsw i32 %181, %125, !dbg !500
  %186 = add nsw i32 %182, %174, !dbg !501
  %187 = add nsw i32 %183, %175, !dbg !501
  %188 = add nsw i32 %184, %176, !dbg !501
  %189 = add nsw i32 %185, %177, !dbg !501
  %190 = add nsw i32 %94, %98, !dbg !502
  %191 = add nsw i32 %95, %99, !dbg !502
  %192 = add nsw i32 %96, %100, !dbg !502
  %193 = add nsw i32 %97, %101, !dbg !502
  %194 = getelementptr inbounds i8, ptr %next.gep, i64 4, !dbg !503
  %195 = getelementptr inbounds i8, ptr %next.gep309, i64 4, !dbg !503
  %196 = getelementptr inbounds i8, ptr %next.gep310, i64 4, !dbg !503
  %197 = getelementptr inbounds i8, ptr %next.gep311, i64 4, !dbg !503
  store i32 %190, ptr %next.gep, align 16, !dbg !504
  store i32 %191, ptr %next.gep309, align 16, !dbg !504
  store i32 %192, ptr %next.gep310, align 16, !dbg !504
  store i32 %193, ptr %next.gep311, align 16, !dbg !504
  %198 = ashr i32 %186, 2, !dbg !505
  %199 = ashr i32 %187, 2, !dbg !505
  %200 = ashr i32 %188, 2, !dbg !505
  %201 = ashr i32 %189, 2, !dbg !505
  %202 = add nsw i32 %138, %198, !dbg !506
  %203 = add nsw i32 %139, %199, !dbg !506
  %204 = add nsw i32 %140, %200, !dbg !506
  %205 = add nsw i32 %141, %201, !dbg !506
  %206 = getelementptr inbounds i8, ptr %next.gep, i64 8, !dbg !507
  %207 = getelementptr inbounds i8, ptr %next.gep309, i64 8, !dbg !507
  %208 = getelementptr inbounds i8, ptr %next.gep310, i64 8, !dbg !507
  %209 = getelementptr inbounds i8, ptr %next.gep311, i64 8, !dbg !507
  store i32 %202, ptr %194, align 4, !dbg !508
  store i32 %203, ptr %195, align 4, !dbg !508
  store i32 %204, ptr %196, align 4, !dbg !508
  store i32 %205, ptr %197, align 4, !dbg !508
  %210 = ashr i32 %106, 1, !dbg !509
  %211 = ashr i32 %107, 1, !dbg !509
  %212 = ashr i32 %108, 1, !dbg !509
  %213 = ashr i32 %109, 1, !dbg !509
  %214 = add nsw i32 %102, %210, !dbg !510
  %215 = add nsw i32 %103, %211, !dbg !510
  %216 = add nsw i32 %104, %212, !dbg !510
  %217 = add nsw i32 %105, %213, !dbg !510
  %218 = getelementptr inbounds i8, ptr %next.gep, i64 12, !dbg !511
  %219 = getelementptr inbounds i8, ptr %next.gep309, i64 12, !dbg !511
  %220 = getelementptr inbounds i8, ptr %next.gep310, i64 12, !dbg !511
  %221 = getelementptr inbounds i8, ptr %next.gep311, i64 12, !dbg !511
  store i32 %214, ptr %206, align 8, !dbg !512
  store i32 %215, ptr %207, align 8, !dbg !512
  store i32 %216, ptr %208, align 8, !dbg !512
  store i32 %217, ptr %209, align 8, !dbg !512
  %222 = ashr i32 %170, 2, !dbg !513
  %223 = ashr i32 %171, 2, !dbg !513
  %224 = ashr i32 %172, 2, !dbg !513
  %225 = ashr i32 %173, 2, !dbg !513
  %226 = add nsw i32 %222, %154, !dbg !514
  %227 = add nsw i32 %223, %155, !dbg !514
  %228 = add nsw i32 %224, %156, !dbg !514
  %229 = add nsw i32 %225, %157, !dbg !514
  %230 = getelementptr inbounds i8, ptr %next.gep, i64 16, !dbg !515
  %231 = getelementptr inbounds i8, ptr %next.gep309, i64 16, !dbg !515
  %232 = getelementptr inbounds i8, ptr %next.gep310, i64 16, !dbg !515
  %233 = getelementptr inbounds i8, ptr %next.gep311, i64 16, !dbg !515
  store i32 %226, ptr %218, align 4, !dbg !516
  store i32 %227, ptr %219, align 4, !dbg !516
  store i32 %228, ptr %220, align 4, !dbg !516
  store i32 %229, ptr %221, align 4, !dbg !516
  %234 = sub nsw i32 %94, %98, !dbg !517
  %235 = sub nsw i32 %95, %99, !dbg !517
  %236 = sub nsw i32 %96, %100, !dbg !517
  %237 = sub nsw i32 %97, %101, !dbg !517
  %238 = getelementptr inbounds i8, ptr %next.gep, i64 20, !dbg !518
  %239 = getelementptr inbounds i8, ptr %next.gep309, i64 20, !dbg !518
  %240 = getelementptr inbounds i8, ptr %next.gep310, i64 20, !dbg !518
  %241 = getelementptr inbounds i8, ptr %next.gep311, i64 20, !dbg !518
  store i32 %234, ptr %230, align 16, !dbg !519
  store i32 %235, ptr %231, align 16, !dbg !519
  store i32 %236, ptr %232, align 16, !dbg !519
  store i32 %237, ptr %233, align 16, !dbg !519
  %242 = ashr i32 %154, 2, !dbg !520
  %243 = ashr i32 %155, 2, !dbg !520
  %244 = ashr i32 %156, 2, !dbg !520
  %245 = ashr i32 %157, 2, !dbg !520
  %246 = sub nsw i32 %170, %242, !dbg !521
  %247 = sub nsw i32 %171, %243, !dbg !521
  %248 = sub nsw i32 %172, %244, !dbg !521
  %249 = sub nsw i32 %173, %245, !dbg !521
  %250 = getelementptr inbounds i8, ptr %next.gep, i64 24, !dbg !522
  %251 = getelementptr inbounds i8, ptr %next.gep309, i64 24, !dbg !522
  %252 = getelementptr inbounds i8, ptr %next.gep310, i64 24, !dbg !522
  %253 = getelementptr inbounds i8, ptr %next.gep311, i64 24, !dbg !522
  store i32 %246, ptr %238, align 4, !dbg !523
  store i32 %247, ptr %239, align 4, !dbg !523
  store i32 %248, ptr %240, align 4, !dbg !523
  store i32 %249, ptr %241, align 4, !dbg !523
  %254 = ashr i32 %102, 1, !dbg !524
  %255 = ashr i32 %103, 1, !dbg !524
  %256 = ashr i32 %104, 1, !dbg !524
  %257 = ashr i32 %105, 1, !dbg !524
  %258 = sub nsw i32 %254, %106, !dbg !525
  %259 = sub nsw i32 %255, %107, !dbg !525
  %260 = sub nsw i32 %256, %108, !dbg !525
  %261 = sub nsw i32 %257, %109, !dbg !525
  %262 = getelementptr inbounds i8, ptr %next.gep, i64 28, !dbg !526
  %263 = getelementptr inbounds i8, ptr %next.gep309, i64 28, !dbg !526
  %264 = getelementptr inbounds i8, ptr %next.gep310, i64 28, !dbg !526
  %265 = getelementptr inbounds i8, ptr %next.gep311, i64 28, !dbg !526
  store i32 %258, ptr %250, align 8, !dbg !527
  store i32 %259, ptr %251, align 8, !dbg !527
  store i32 %260, ptr %252, align 8, !dbg !527
  store i32 %261, ptr %253, align 8, !dbg !527
  %266 = ashr i32 %138, 2, !dbg !528
  %267 = ashr i32 %139, 2, !dbg !528
  %268 = ashr i32 %140, 2, !dbg !528
  %269 = ashr i32 %141, 2, !dbg !528
  %270 = sub nsw i32 %266, %186, !dbg !529
  %271 = sub nsw i32 %267, %187, !dbg !529
  %272 = sub nsw i32 %268, %188, !dbg !529
  %273 = sub nsw i32 %269, %189, !dbg !529
  store i32 %270, ptr %262, align 4, !dbg !530
  store i32 %271, ptr %263, align 4, !dbg !530
  store i32 %272, ptr %264, align 4, !dbg !530
  store i32 %273, ptr %265, align 4, !dbg !530
  %index.next = add nuw i64 %index, 4
  %274 = icmp eq i64 %index.next, %n.vec
  br i1 %274, label %middle.block, label %vector.body, !llvm.loop !531

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec, !dbg !457
  br i1 %cmp.n, label %for.cond57.preheader, label %for.body.preheader, !dbg !457

for.cond57.preheader:                             ; preds = %for.body, %middle.block
  %arrayidx99 = getelementptr inbounds ptr, ptr %tblock, i64 %0
  %arrayidx106 = getelementptr i8, ptr %arrayidx99, i64 8
  %arrayidx113 = getelementptr i8, ptr %arrayidx99, i64 16
  %arrayidx120 = getelementptr i8, ptr %arrayidx99, i64 24
  %arrayidx126 = getelementptr i8, ptr %arrayidx99, i64 32
  %arrayidx133 = getelementptr i8, ptr %arrayidx99, i64 40
  %arrayidx140 = getelementptr i8, ptr %arrayidx99, i64 48
  %arrayidx147 = getelementptr i8, ptr %arrayidx99, i64 56
    #dbg_value(i32 0, !426, !DIExpression(), !455)
  br label %for.body59, !dbg !535

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %pTmp.0298 = phi ptr [ %incdec.ptr56, %for.body ], [ %pTmp.0298.ph, %for.body.preheader ]
    #dbg_value(i64 %indvars.iv, !426, !DIExpression(), !455)
    #dbg_value(ptr %pTmp.0298, !432, !DIExpression(), !455)
  %arrayidx = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv, !dbg !459
  %275 = load ptr, ptr %arrayidx, align 8, !dbg !459
  %arrayidx2 = getelementptr inbounds i32, ptr %275, i64 %idxprom1, !dbg !459
    #dbg_value(ptr %arrayidx2, !433, !DIExpression(), !455)
  %incdec.ptr = getelementptr inbounds i8, ptr %arrayidx2, i64 4, !dbg !462
    #dbg_value(ptr %incdec.ptr, !433, !DIExpression(), !455)
  %276 = load i32, ptr %arrayidx2, align 4, !dbg !463
    #dbg_value(i32 %276, !438, !DIExpression(), !455)
  %incdec.ptr3 = getelementptr inbounds i8, ptr %arrayidx2, i64 8, !dbg !464
    #dbg_value(ptr %incdec.ptr3, !433, !DIExpression(), !455)
  %277 = load i32, ptr %incdec.ptr, align 4, !dbg !465
    #dbg_value(i32 %277, !439, !DIExpression(), !455)
  %incdec.ptr4 = getelementptr inbounds i8, ptr %arrayidx2, i64 12, !dbg !466
    #dbg_value(ptr %incdec.ptr4, !433, !DIExpression(), !455)
  %278 = load i32, ptr %incdec.ptr3, align 4, !dbg !467
    #dbg_value(i32 %278, !440, !DIExpression(), !455)
  %incdec.ptr5 = getelementptr inbounds i8, ptr %arrayidx2, i64 16, !dbg !468
    #dbg_value(ptr %incdec.ptr5, !433, !DIExpression(), !455)
  %279 = load i32, ptr %incdec.ptr4, align 4, !dbg !469
    #dbg_value(i32 %279, !441, !DIExpression(), !455)
  %incdec.ptr6 = getelementptr inbounds i8, ptr %arrayidx2, i64 20, !dbg !470
    #dbg_value(ptr %incdec.ptr6, !433, !DIExpression(), !455)
  %280 = load i32, ptr %incdec.ptr5, align 4, !dbg !471
    #dbg_value(i32 %280, !442, !DIExpression(), !455)
  %incdec.ptr7 = getelementptr inbounds i8, ptr %arrayidx2, i64 24, !dbg !472
    #dbg_value(ptr %incdec.ptr7, !433, !DIExpression(), !455)
  %281 = load i32, ptr %incdec.ptr6, align 4, !dbg !473
    #dbg_value(i32 %281, !443, !DIExpression(), !455)
  %incdec.ptr8 = getelementptr inbounds i8, ptr %arrayidx2, i64 28, !dbg !474
    #dbg_value(ptr %incdec.ptr8, !433, !DIExpression(), !455)
  %282 = load i32, ptr %incdec.ptr7, align 4, !dbg !475
    #dbg_value(i32 %282, !444, !DIExpression(), !455)
  %283 = load i32, ptr %incdec.ptr8, align 4, !dbg !476
    #dbg_value(i32 %283, !445, !DIExpression(), !455)
  %add9 = add nsw i32 %283, %276, !dbg !477
    #dbg_value(i32 %add9, !434, !DIExpression(), !455)
  %add10 = add nsw i32 %282, %277, !dbg !478
    #dbg_value(i32 %add10, !435, !DIExpression(), !455)
  %add11 = add nsw i32 %281, %278, !dbg !479
    #dbg_value(i32 %add11, !436, !DIExpression(), !455)
  %add12 = add nsw i32 %280, %279, !dbg !480
    #dbg_value(i32 %add12, !437, !DIExpression(), !455)
  %add13 = add nsw i32 %add9, %add12, !dbg !481
    #dbg_value(i32 %add13, !446, !DIExpression(), !455)
  %add14 = add nsw i32 %add10, %add11, !dbg !482
    #dbg_value(i32 %add14, !447, !DIExpression(), !455)
  %sub = sub nsw i32 %add9, %add12, !dbg !483
    #dbg_value(i32 %sub, !448, !DIExpression(), !455)
  %sub15 = sub nsw i32 %add10, %add11, !dbg !484
    #dbg_value(i32 %sub15, !449, !DIExpression(), !455)
  %sub16 = sub nsw i32 %276, %283, !dbg !485
    #dbg_value(i32 %sub16, !434, !DIExpression(), !455)
  %sub17 = sub nsw i32 %277, %282, !dbg !486
    #dbg_value(i32 %sub17, !435, !DIExpression(), !455)
  %sub18 = sub nsw i32 %278, %281, !dbg !487
    #dbg_value(i32 %sub18, !436, !DIExpression(), !455)
  %sub19 = sub nsw i32 %279, %280, !dbg !488
    #dbg_value(i32 %sub19, !437, !DIExpression(), !455)
  %shr = ashr i32 %sub16, 1, !dbg !489
  %add21 = add i32 %sub17, %sub18, !dbg !490
  %add20 = add i32 %add21, %sub16, !dbg !491
  %add22 = add i32 %add20, %shr, !dbg !492
    #dbg_value(i32 %add22, !450, !DIExpression(), !455)
  %shr24 = ashr i32 %sub18, 1, !dbg !493
  %284 = add i32 %sub18, %sub19, !dbg !494
  %285 = add i32 %284, %shr24, !dbg !495
  %sub26 = sub i32 %sub16, %285, !dbg !495
    #dbg_value(i32 %sub26, !451, !DIExpression(), !455)
  %shr28 = ashr i32 %sub17, 1, !dbg !496
  %286 = add i32 %sub19, %sub16, !dbg !497
  %287 = add i32 %sub17, %shr28, !dbg !497
  %sub30 = sub i32 %286, %287, !dbg !497
    #dbg_value(i32 %sub30, !452, !DIExpression(), !455)
  %sub31 = sub nsw i32 %sub17, %sub18, !dbg !498
  %shr32 = ashr i32 %sub19, 1, !dbg !499
  %add33 = add nsw i32 %shr32, %sub19, !dbg !500
  %add34 = add nsw i32 %add33, %sub31, !dbg !501
    #dbg_value(i32 %add34, !453, !DIExpression(), !455)
  %add35 = add nsw i32 %add13, %add14, !dbg !502
  %incdec.ptr36 = getelementptr inbounds i8, ptr %pTmp.0298, i64 4, !dbg !503
    #dbg_value(ptr %incdec.ptr36, !432, !DIExpression(), !455)
  store i32 %add35, ptr %pTmp.0298, align 4, !dbg !504
  %shr37 = ashr i32 %add34, 2, !dbg !505
  %add38 = add nsw i32 %add22, %shr37, !dbg !506
  %incdec.ptr39 = getelementptr inbounds i8, ptr %pTmp.0298, i64 8, !dbg !507
    #dbg_value(ptr %incdec.ptr39, !432, !DIExpression(), !455)
  store i32 %add38, ptr %incdec.ptr36, align 4, !dbg !508
  %shr40 = ashr i32 %sub15, 1, !dbg !509
  %add41 = add nsw i32 %sub, %shr40, !dbg !510
  %incdec.ptr42 = getelementptr inbounds i8, ptr %pTmp.0298, i64 12, !dbg !511
    #dbg_value(ptr %incdec.ptr42, !432, !DIExpression(), !455)
  store i32 %add41, ptr %incdec.ptr39, align 4, !dbg !512
  %shr43 = ashr i32 %sub30, 2, !dbg !513
  %add44 = add nsw i32 %shr43, %sub26, !dbg !514
  %incdec.ptr45 = getelementptr inbounds i8, ptr %pTmp.0298, i64 16, !dbg !515
    #dbg_value(ptr %incdec.ptr45, !432, !DIExpression(), !455)
  store i32 %add44, ptr %incdec.ptr42, align 4, !dbg !516
  %sub46 = sub nsw i32 %add13, %add14, !dbg !517
  %incdec.ptr47 = getelementptr inbounds i8, ptr %pTmp.0298, i64 20, !dbg !518
    #dbg_value(ptr %incdec.ptr47, !432, !DIExpression(), !455)
  store i32 %sub46, ptr %incdec.ptr45, align 4, !dbg !519
  %shr48 = ashr i32 %sub26, 2, !dbg !520
  %sub49 = sub nsw i32 %sub30, %shr48, !dbg !521
  %incdec.ptr50 = getelementptr inbounds i8, ptr %pTmp.0298, i64 24, !dbg !522
    #dbg_value(ptr %incdec.ptr50, !432, !DIExpression(), !455)
  store i32 %sub49, ptr %incdec.ptr47, align 4, !dbg !523
  %shr51 = ashr i32 %sub, 1, !dbg !524
  %sub52 = sub nsw i32 %shr51, %sub15, !dbg !525
  %incdec.ptr53 = getelementptr inbounds i8, ptr %pTmp.0298, i64 28, !dbg !526
    #dbg_value(ptr %incdec.ptr53, !432, !DIExpression(), !455)
  store i32 %sub52, ptr %incdec.ptr50, align 4, !dbg !527
  %shr54 = ashr i32 %add22, 2, !dbg !528
  %sub55 = sub nsw i32 %shr54, %add34, !dbg !529
  %incdec.ptr56 = getelementptr inbounds i8, ptr %pTmp.0298, i64 32, !dbg !537
    #dbg_value(ptr %incdec.ptr56, !432, !DIExpression(), !455)
  store i32 %sub55, ptr %incdec.ptr53, align 4, !dbg !530
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !538
    #dbg_value(i64 %indvars.iv.next, !426, !DIExpression(), !455)
  %cmp = icmp slt i64 %indvars.iv, %2, !dbg !539
  br i1 %cmp, label %for.body, label %for.cond57.preheader, !dbg !457, !llvm.loop !540

for.body59:                                       ; preds = %for.cond57.preheader, %for.body59
  %indvars.iv302 = phi i64 [ 0, %for.cond57.preheader ], [ %indvars.iv.next303, %for.body59 ]
    #dbg_value(i64 %indvars.iv302, !426, !DIExpression(), !455)
  %add.ptr = getelementptr inbounds i32, ptr %tmp, i64 %indvars.iv302, !dbg !541
    #dbg_value(ptr %add.ptr, !432, !DIExpression(), !455)
  %288 = load i32, ptr %add.ptr, align 4, !dbg !544
    #dbg_value(i32 %288, !438, !DIExpression(), !455)
  %add.ptr61 = getelementptr inbounds i8, ptr %add.ptr, i64 32, !dbg !545
    #dbg_value(ptr %add.ptr61, !432, !DIExpression(), !455)
  %289 = load i32, ptr %add.ptr61, align 4, !dbg !546
    #dbg_value(i32 %289, !439, !DIExpression(), !455)
  %add.ptr62 = getelementptr inbounds i8, ptr %add.ptr, i64 64, !dbg !547
    #dbg_value(ptr %add.ptr62, !432, !DIExpression(), !455)
  %290 = load i32, ptr %add.ptr62, align 4, !dbg !548
    #dbg_value(i32 %290, !440, !DIExpression(), !455)
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr, i64 96, !dbg !549
    #dbg_value(ptr %add.ptr63, !432, !DIExpression(), !455)
  %291 = load i32, ptr %add.ptr63, align 4, !dbg !550
    #dbg_value(i32 %291, !441, !DIExpression(), !455)
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr, i64 128, !dbg !551
    #dbg_value(ptr %add.ptr64, !432, !DIExpression(), !455)
  %292 = load i32, ptr %add.ptr64, align 4, !dbg !552
    #dbg_value(i32 %292, !442, !DIExpression(), !455)
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr, i64 160, !dbg !553
    #dbg_value(ptr %add.ptr65, !432, !DIExpression(), !455)
  %293 = load i32, ptr %add.ptr65, align 4, !dbg !554
    #dbg_value(i32 %293, !443, !DIExpression(), !455)
  %add.ptr66 = getelementptr inbounds i8, ptr %add.ptr, i64 192, !dbg !555
    #dbg_value(ptr %add.ptr66, !432, !DIExpression(), !455)
  %294 = load i32, ptr %add.ptr66, align 4, !dbg !556
    #dbg_value(i32 %294, !444, !DIExpression(), !455)
  %add.ptr67 = getelementptr inbounds i8, ptr %add.ptr, i64 224, !dbg !557
    #dbg_value(ptr %add.ptr67, !432, !DIExpression(), !455)
  %295 = load i32, ptr %add.ptr67, align 4, !dbg !558
    #dbg_value(i32 %295, !445, !DIExpression(), !455)
  %add68 = add nsw i32 %295, %288, !dbg !559
    #dbg_value(i32 %add68, !434, !DIExpression(), !455)
  %add69 = add nsw i32 %294, %289, !dbg !560
    #dbg_value(i32 %add69, !435, !DIExpression(), !455)
  %add70 = add nsw i32 %293, %290, !dbg !561
    #dbg_value(i32 %add70, !436, !DIExpression(), !455)
  %add71 = add nsw i32 %292, %291, !dbg !562
    #dbg_value(i32 %add71, !437, !DIExpression(), !455)
  %add72 = add nsw i32 %add68, %add71, !dbg !563
    #dbg_value(i32 %add72, !446, !DIExpression(), !455)
  %add73 = add nsw i32 %add69, %add70, !dbg !564
    #dbg_value(i32 %add73, !447, !DIExpression(), !455)
  %sub74 = sub nsw i32 %add68, %add71, !dbg !565
    #dbg_value(i32 %sub74, !448, !DIExpression(), !455)
  %sub75 = sub nsw i32 %add69, %add70, !dbg !566
    #dbg_value(i32 %sub75, !449, !DIExpression(), !455)
  %sub76 = sub nsw i32 %288, %295, !dbg !567
    #dbg_value(i32 %sub76, !434, !DIExpression(), !455)
  %sub77 = sub nsw i32 %289, %294, !dbg !568
    #dbg_value(i32 %sub77, !435, !DIExpression(), !455)
  %sub78 = sub nsw i32 %290, %293, !dbg !569
    #dbg_value(i32 %sub78, !436, !DIExpression(), !455)
  %sub79 = sub nsw i32 %291, %292, !dbg !570
    #dbg_value(i32 %sub79, !437, !DIExpression(), !455)
  %shr81 = ashr i32 %sub76, 1, !dbg !571
  %add82 = add i32 %sub77, %sub78, !dbg !572
  %add80 = add i32 %add82, %sub76, !dbg !573
  %add83 = add i32 %add80, %shr81, !dbg !574
    #dbg_value(i32 %add83, !450, !DIExpression(), !455)
  %shr85 = ashr i32 %sub78, 1, !dbg !575
  %296 = add i32 %sub78, %sub79, !dbg !576
  %297 = add i32 %296, %shr85, !dbg !577
  %sub87 = sub i32 %sub76, %297, !dbg !577
    #dbg_value(i32 %sub87, !451, !DIExpression(), !455)
  %shr89 = ashr i32 %sub77, 1, !dbg !578
  %298 = add i32 %sub79, %sub76, !dbg !579
  %299 = add i32 %sub77, %shr89, !dbg !579
  %sub91 = sub i32 %298, %299, !dbg !579
    #dbg_value(i32 %sub91, !452, !DIExpression(), !455)
  %sub92 = sub nsw i32 %sub77, %sub78, !dbg !580
  %shr93 = ashr i32 %sub79, 1, !dbg !581
  %add94 = add nsw i32 %shr93, %sub79, !dbg !582
  %add95 = add nsw i32 %add94, %sub92, !dbg !583
    #dbg_value(i32 %add95, !453, !DIExpression(), !455)
  %300 = add nsw i64 %indvars.iv302, %idxprom1, !dbg !584
    #dbg_value(i64 %300, !427, !DIExpression(), !455)
  %add97 = add nsw i32 %add72, %add73, !dbg !585
  %301 = load ptr, ptr %arrayidx99, align 8, !dbg !586
  %arrayidx101 = getelementptr inbounds i32, ptr %301, i64 %300, !dbg !586
  store i32 %add97, ptr %arrayidx101, align 4, !dbg !587
  %shr102 = ashr i32 %add95, 2, !dbg !588
  %add103 = add nsw i32 %add83, %shr102, !dbg !589
  %302 = load ptr, ptr %arrayidx106, align 8, !dbg !590
  %arrayidx108 = getelementptr inbounds i32, ptr %302, i64 %300, !dbg !590
  store i32 %add103, ptr %arrayidx108, align 4, !dbg !591
  %shr109 = ashr i32 %sub75, 1, !dbg !592
  %add110 = add nsw i32 %sub74, %shr109, !dbg !593
  %303 = load ptr, ptr %arrayidx113, align 8, !dbg !594
  %arrayidx115 = getelementptr inbounds i32, ptr %303, i64 %300, !dbg !594
  store i32 %add110, ptr %arrayidx115, align 4, !dbg !595
  %shr116 = ashr i32 %sub91, 2, !dbg !596
  %add117 = add nsw i32 %shr116, %sub87, !dbg !597
  %304 = load ptr, ptr %arrayidx120, align 8, !dbg !598
  %arrayidx122 = getelementptr inbounds i32, ptr %304, i64 %300, !dbg !598
  store i32 %add117, ptr %arrayidx122, align 4, !dbg !599
  %sub123 = sub nsw i32 %add72, %add73, !dbg !600
  %305 = load ptr, ptr %arrayidx126, align 8, !dbg !601
  %arrayidx128 = getelementptr inbounds i32, ptr %305, i64 %300, !dbg !601
  store i32 %sub123, ptr %arrayidx128, align 4, !dbg !602
  %shr129 = ashr i32 %sub87, 2, !dbg !603
  %sub130 = sub nsw i32 %sub91, %shr129, !dbg !604
  %306 = load ptr, ptr %arrayidx133, align 8, !dbg !605
  %arrayidx135 = getelementptr inbounds i32, ptr %306, i64 %300, !dbg !605
  store i32 %sub130, ptr %arrayidx135, align 4, !dbg !606
  %shr136 = ashr i32 %sub74, 1, !dbg !607
  %sub137 = sub nsw i32 %shr136, %sub75, !dbg !608
  %307 = load ptr, ptr %arrayidx140, align 8, !dbg !609
  %arrayidx142 = getelementptr inbounds i32, ptr %307, i64 %300, !dbg !609
  store i32 %sub137, ptr %arrayidx142, align 4, !dbg !610
  %shr143 = ashr i32 %add83, 2, !dbg !611
  %sub144 = sub nsw i32 %shr143, %add95, !dbg !612
  %308 = load ptr, ptr %arrayidx147, align 8, !dbg !613
  %arrayidx149 = getelementptr inbounds i32, ptr %308, i64 %300, !dbg !613
  store i32 %sub144, ptr %arrayidx149, align 4, !dbg !614
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1, !dbg !615
    #dbg_value(i64 %indvars.iv.next303, !426, !DIExpression(), !455)
  %exitcond.not = icmp eq i64 %indvars.iv.next303, 8, !dbg !616
  br i1 %exitcond.not, label %for.end152, label %for.body59, !dbg !535, !llvm.loop !617

for.end152:                                       ; preds = %for.body59
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp) #6, !dbg !619
  ret void, !dbg !619
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @inverse8x8(ptr nocapture noundef readonly %tblock, ptr nocapture noundef readonly %block, i32 noundef %pos_y, i32 noundef %pos_x) local_unnamed_addr #4 !dbg !620 {
entry:
  %tmp = alloca [64 x i32], align 16, !DIAssignID !651
    #dbg_assign(i1 undef, !628, !DIExpression(), !651, ptr %tmp, !DIExpression(), !652)
    #dbg_value(ptr %tblock, !622, !DIExpression(), !652)
    #dbg_value(ptr %block, !623, !DIExpression(), !652)
    #dbg_value(i32 %pos_y, !624, !DIExpression(), !652)
    #dbg_value(i32 %pos_x, !625, !DIExpression(), !652)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp) #6, !dbg !653
    #dbg_value(ptr %tmp, !629, !DIExpression(), !652)
    #dbg_value(i32 %pos_y, !626, !DIExpression(), !652)
  %idxprom1 = sext i32 %pos_x to i64
  %0 = sext i32 %pos_y to i64, !dbg !654
  %1 = add i32 %pos_y, 7
  %2 = sext i32 %1 to i64
  %smax = tail call i64 @llvm.smax.i64(i64 %0, i64 %2), !dbg !654
  %3 = add i64 %smax, 1, !dbg !654
  %4 = sub i64 %3, %0, !dbg !654
  %min.iters.check = icmp ult i64 %4, 4, !dbg !654
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph, !dbg !654

for.body.preheader:                               ; preds = %middle.block, %entry
  %indvars.iv.ph = phi i64 [ %0, %entry ], [ %ind.end, %middle.block ]
  %pTmp.0312.ph = phi ptr [ %tmp, %entry ], [ %ind.end320, %middle.block ]
  br label %for.body, !dbg !654

vector.ph:                                        ; preds = %entry
  %n.vec = and i64 %4, -4, !dbg !654
  %ind.end = add i64 %n.vec, %0, !dbg !654
  %5 = shl i64 %n.vec, 5, !dbg !654
  %ind.end320 = getelementptr i8, ptr %tmp, i64 %5, !dbg !654
  %invariant.gep = getelementptr i8, ptr %tblock, i64 8, !dbg !654
  %invariant.gep326 = getelementptr i8, ptr %tblock, i64 16, !dbg !654
  %invariant.gep328 = getelementptr i8, ptr %tblock, i64 24, !dbg !654
  br label %vector.body, !dbg !654

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %0, !dbg !654
  %offset.idx322 = shl i64 %index, 5, !dbg !654
  %6 = or disjoint i64 %offset.idx322, 32, !dbg !654
  %7 = or disjoint i64 %offset.idx322, 64, !dbg !654
  %8 = or disjoint i64 %offset.idx322, 96, !dbg !654
  %next.gep = getelementptr i8, ptr %tmp, i64 %offset.idx322
  %next.gep323 = getelementptr i8, ptr %tmp, i64 %6
  %next.gep324 = getelementptr i8, ptr %tmp, i64 %7
  %next.gep325 = getelementptr i8, ptr %tmp, i64 %8
  %9 = getelementptr inbounds ptr, ptr %tblock, i64 %offset.idx, !dbg !656
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %offset.idx, !dbg !656
  %gep327 = getelementptr ptr, ptr %invariant.gep326, i64 %offset.idx, !dbg !656
  %gep329 = getelementptr ptr, ptr %invariant.gep328, i64 %offset.idx, !dbg !656
  %10 = load ptr, ptr %9, align 8, !dbg !656
  %11 = load ptr, ptr %gep, align 8, !dbg !656
  %12 = load ptr, ptr %gep327, align 8, !dbg !656
  %13 = load ptr, ptr %gep329, align 8, !dbg !656
  %14 = getelementptr inbounds i32, ptr %10, i64 %idxprom1, !dbg !656
  %15 = getelementptr inbounds i32, ptr %11, i64 %idxprom1, !dbg !656
  %16 = getelementptr inbounds i32, ptr %12, i64 %idxprom1, !dbg !656
  %17 = getelementptr inbounds i32, ptr %13, i64 %idxprom1, !dbg !656
  %18 = getelementptr inbounds i8, ptr %14, i64 4, !dbg !659
  %19 = getelementptr inbounds i8, ptr %15, i64 4, !dbg !659
  %20 = getelementptr inbounds i8, ptr %16, i64 4, !dbg !659
  %21 = getelementptr inbounds i8, ptr %17, i64 4, !dbg !659
  %22 = load i32, ptr %14, align 4, !dbg !660
  %23 = load i32, ptr %15, align 4, !dbg !660
  %24 = load i32, ptr %16, align 4, !dbg !660
  %25 = load i32, ptr %17, align 4, !dbg !660
  %26 = getelementptr inbounds i8, ptr %14, i64 8, !dbg !661
  %27 = getelementptr inbounds i8, ptr %15, i64 8, !dbg !661
  %28 = getelementptr inbounds i8, ptr %16, i64 8, !dbg !661
  %29 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !661
  %30 = load i32, ptr %18, align 4, !dbg !662
  %31 = load i32, ptr %19, align 4, !dbg !662
  %32 = load i32, ptr %20, align 4, !dbg !662
  %33 = load i32, ptr %21, align 4, !dbg !662
  %34 = getelementptr inbounds i8, ptr %14, i64 12, !dbg !663
  %35 = getelementptr inbounds i8, ptr %15, i64 12, !dbg !663
  %36 = getelementptr inbounds i8, ptr %16, i64 12, !dbg !663
  %37 = getelementptr inbounds i8, ptr %17, i64 12, !dbg !663
  %38 = load i32, ptr %26, align 4, !dbg !664
  %39 = load i32, ptr %27, align 4, !dbg !664
  %40 = load i32, ptr %28, align 4, !dbg !664
  %41 = load i32, ptr %29, align 4, !dbg !664
  %42 = getelementptr inbounds i8, ptr %14, i64 16, !dbg !665
  %43 = getelementptr inbounds i8, ptr %15, i64 16, !dbg !665
  %44 = getelementptr inbounds i8, ptr %16, i64 16, !dbg !665
  %45 = getelementptr inbounds i8, ptr %17, i64 16, !dbg !665
  %46 = load i32, ptr %34, align 4, !dbg !666
  %47 = load i32, ptr %35, align 4, !dbg !666
  %48 = load i32, ptr %36, align 4, !dbg !666
  %49 = load i32, ptr %37, align 4, !dbg !666
  %50 = getelementptr inbounds i8, ptr %14, i64 20, !dbg !667
  %51 = getelementptr inbounds i8, ptr %15, i64 20, !dbg !667
  %52 = getelementptr inbounds i8, ptr %16, i64 20, !dbg !667
  %53 = getelementptr inbounds i8, ptr %17, i64 20, !dbg !667
  %54 = load i32, ptr %42, align 4, !dbg !668
  %55 = load i32, ptr %43, align 4, !dbg !668
  %56 = load i32, ptr %44, align 4, !dbg !668
  %57 = load i32, ptr %45, align 4, !dbg !668
  %58 = getelementptr inbounds i8, ptr %14, i64 24, !dbg !669
  %59 = getelementptr inbounds i8, ptr %15, i64 24, !dbg !669
  %60 = getelementptr inbounds i8, ptr %16, i64 24, !dbg !669
  %61 = getelementptr inbounds i8, ptr %17, i64 24, !dbg !669
  %62 = load i32, ptr %50, align 4, !dbg !670
  %63 = load i32, ptr %51, align 4, !dbg !670
  %64 = load i32, ptr %52, align 4, !dbg !670
  %65 = load i32, ptr %53, align 4, !dbg !670
  %66 = getelementptr inbounds i8, ptr %14, i64 28, !dbg !671
  %67 = getelementptr inbounds i8, ptr %15, i64 28, !dbg !671
  %68 = getelementptr inbounds i8, ptr %16, i64 28, !dbg !671
  %69 = getelementptr inbounds i8, ptr %17, i64 28, !dbg !671
  %70 = load i32, ptr %58, align 4, !dbg !672
  %71 = load i32, ptr %59, align 4, !dbg !672
  %72 = load i32, ptr %60, align 4, !dbg !672
  %73 = load i32, ptr %61, align 4, !dbg !672
  %74 = load i32, ptr %66, align 4, !dbg !673
  %75 = load i32, ptr %67, align 4, !dbg !673
  %76 = load i32, ptr %68, align 4, !dbg !673
  %77 = load i32, ptr %69, align 4, !dbg !673
  %78 = add nsw i32 %54, %22, !dbg !674
  %79 = add nsw i32 %55, %23, !dbg !674
  %80 = add nsw i32 %56, %24, !dbg !674
  %81 = add nsw i32 %57, %25, !dbg !674
  %82 = sub nsw i32 %22, %54, !dbg !675
  %83 = sub nsw i32 %23, %55, !dbg !675
  %84 = sub nsw i32 %24, %56, !dbg !675
  %85 = sub nsw i32 %25, %57, !dbg !675
  %86 = ashr i32 %38, 1, !dbg !676
  %87 = ashr i32 %39, 1, !dbg !676
  %88 = ashr i32 %40, 1, !dbg !676
  %89 = ashr i32 %41, 1, !dbg !676
  %90 = sub nsw i32 %70, %86, !dbg !677
  %91 = sub nsw i32 %71, %87, !dbg !677
  %92 = sub nsw i32 %72, %88, !dbg !677
  %93 = sub nsw i32 %73, %89, !dbg !677
  %94 = ashr i32 %70, 1, !dbg !678
  %95 = ashr i32 %71, 1, !dbg !678
  %96 = ashr i32 %72, 1, !dbg !678
  %97 = ashr i32 %73, 1, !dbg !678
  %98 = add nsw i32 %94, %38, !dbg !679
  %99 = add nsw i32 %95, %39, !dbg !679
  %100 = add nsw i32 %96, %40, !dbg !679
  %101 = add nsw i32 %97, %41, !dbg !679
  %102 = add nsw i32 %98, %78, !dbg !680
  %103 = add nsw i32 %99, %79, !dbg !680
  %104 = add nsw i32 %100, %80, !dbg !680
  %105 = add nsw i32 %101, %81, !dbg !680
  %106 = sub nsw i32 %82, %90, !dbg !681
  %107 = sub nsw i32 %83, %91, !dbg !681
  %108 = sub nsw i32 %84, %92, !dbg !681
  %109 = sub nsw i32 %85, %93, !dbg !681
  %110 = add nsw i32 %90, %82, !dbg !682
  %111 = add nsw i32 %91, %83, !dbg !682
  %112 = add nsw i32 %92, %84, !dbg !682
  %113 = add nsw i32 %93, %85, !dbg !682
  %114 = sub nsw i32 %78, %98, !dbg !683
  %115 = sub nsw i32 %79, %99, !dbg !683
  %116 = sub nsw i32 %80, %100, !dbg !683
  %117 = sub nsw i32 %81, %101, !dbg !683
  %118 = ashr i32 %74, 1, !dbg !684
  %119 = ashr i32 %75, 1, !dbg !684
  %120 = ashr i32 %76, 1, !dbg !684
  %121 = ashr i32 %77, 1, !dbg !684
  %122 = add i32 %46, %74, !dbg !685
  %123 = add i32 %47, %75, !dbg !685
  %124 = add i32 %48, %76, !dbg !685
  %125 = add i32 %49, %77, !dbg !685
  %126 = add i32 %122, %118, !dbg !685
  %127 = add i32 %123, %119, !dbg !685
  %128 = add i32 %124, %120, !dbg !685
  %129 = add i32 %125, %121, !dbg !685
  %130 = sub i32 %62, %126, !dbg !685
  %131 = sub i32 %63, %127, !dbg !685
  %132 = sub i32 %64, %128, !dbg !685
  %133 = sub i32 %65, %129, !dbg !685
  %134 = ashr i32 %46, 1, !dbg !686
  %135 = ashr i32 %47, 1, !dbg !686
  %136 = ashr i32 %48, 1, !dbg !686
  %137 = ashr i32 %49, 1, !dbg !686
  %138 = add i32 %46, %134, !dbg !687
  %139 = add i32 %47, %135, !dbg !687
  %140 = add i32 %48, %136, !dbg !687
  %141 = add i32 %49, %137, !dbg !687
  %142 = sub i32 %30, %138, !dbg !687
  %143 = sub i32 %31, %139, !dbg !687
  %144 = sub i32 %32, %140, !dbg !687
  %145 = sub i32 %33, %141, !dbg !687
  %146 = add i32 %142, %74, !dbg !688
  %147 = add i32 %143, %75, !dbg !688
  %148 = add i32 %144, %76, !dbg !688
  %149 = add i32 %145, %77, !dbg !688
  %150 = ashr i32 %62, 1, !dbg !689
  %151 = ashr i32 %63, 1, !dbg !689
  %152 = ashr i32 %64, 1, !dbg !689
  %153 = ashr i32 %65, 1, !dbg !689
  %154 = sub i32 %62, %30, !dbg !690
  %155 = sub i32 %63, %31, !dbg !690
  %156 = sub i32 %64, %32, !dbg !690
  %157 = sub i32 %65, %33, !dbg !690
  %158 = add i32 %154, %150, !dbg !691
  %159 = add i32 %155, %151, !dbg !691
  %160 = add i32 %156, %152, !dbg !691
  %161 = add i32 %157, %153, !dbg !691
  %162 = add i32 %158, %74, !dbg !692
  %163 = add i32 %159, %75, !dbg !692
  %164 = add i32 %160, %76, !dbg !692
  %165 = add i32 %161, %77, !dbg !692
  %166 = ashr i32 %30, 1, !dbg !693
  %167 = ashr i32 %31, 1, !dbg !693
  %168 = ashr i32 %32, 1, !dbg !693
  %169 = ashr i32 %33, 1, !dbg !693
  %170 = add i32 %166, %30, !dbg !694
  %171 = add i32 %167, %31, !dbg !694
  %172 = add i32 %168, %32, !dbg !694
  %173 = add i32 %169, %33, !dbg !694
  %174 = add i32 %170, %46, !dbg !695
  %175 = add i32 %171, %47, !dbg !695
  %176 = add i32 %172, %48, !dbg !695
  %177 = add i32 %173, %49, !dbg !695
  %178 = add i32 %174, %62, !dbg !696
  %179 = add i32 %175, %63, !dbg !696
  %180 = add i32 %176, %64, !dbg !696
  %181 = add i32 %177, %65, !dbg !696
  %182 = ashr i32 %178, 2, !dbg !697
  %183 = ashr i32 %179, 2, !dbg !697
  %184 = ashr i32 %180, 2, !dbg !697
  %185 = ashr i32 %181, 2, !dbg !697
  %186 = add nsw i32 %130, %182, !dbg !698
  %187 = add nsw i32 %131, %183, !dbg !698
  %188 = add nsw i32 %132, %184, !dbg !698
  %189 = add nsw i32 %133, %185, !dbg !698
  %190 = ashr i32 %162, 2, !dbg !699
  %191 = ashr i32 %163, 2, !dbg !699
  %192 = ashr i32 %164, 2, !dbg !699
  %193 = ashr i32 %165, 2, !dbg !699
  %194 = add nsw i32 %190, %146, !dbg !700
  %195 = add nsw i32 %191, %147, !dbg !700
  %196 = add nsw i32 %192, %148, !dbg !700
  %197 = add nsw i32 %193, %149, !dbg !700
  %198 = ashr i32 %146, 2, !dbg !701
  %199 = ashr i32 %147, 2, !dbg !701
  %200 = ashr i32 %148, 2, !dbg !701
  %201 = ashr i32 %149, 2, !dbg !701
  %202 = sub nsw i32 %162, %198, !dbg !702
  %203 = sub nsw i32 %163, %199, !dbg !702
  %204 = sub nsw i32 %164, %200, !dbg !702
  %205 = sub nsw i32 %165, %201, !dbg !702
  %206 = ashr i32 %130, 2, !dbg !703
  %207 = ashr i32 %131, 2, !dbg !703
  %208 = ashr i32 %132, 2, !dbg !703
  %209 = ashr i32 %133, 2, !dbg !703
  %210 = sub nsw i32 %178, %206, !dbg !704
  %211 = sub nsw i32 %179, %207, !dbg !704
  %212 = sub nsw i32 %180, %208, !dbg !704
  %213 = sub nsw i32 %181, %209, !dbg !704
  %214 = add nsw i32 %210, %102, !dbg !705
  %215 = add nsw i32 %211, %103, !dbg !705
  %216 = add nsw i32 %212, %104, !dbg !705
  %217 = add nsw i32 %213, %105, !dbg !705
  %218 = getelementptr inbounds i8, ptr %next.gep, i64 4, !dbg !706
  %219 = getelementptr inbounds i8, ptr %next.gep323, i64 4, !dbg !706
  %220 = getelementptr inbounds i8, ptr %next.gep324, i64 4, !dbg !706
  %221 = getelementptr inbounds i8, ptr %next.gep325, i64 4, !dbg !706
  store i32 %214, ptr %next.gep, align 16, !dbg !707
  store i32 %215, ptr %next.gep323, align 16, !dbg !707
  store i32 %216, ptr %next.gep324, align 16, !dbg !707
  store i32 %217, ptr %next.gep325, align 16, !dbg !707
  %222 = sub nsw i32 %106, %202, !dbg !708
  %223 = sub nsw i32 %107, %203, !dbg !708
  %224 = sub nsw i32 %108, %204, !dbg !708
  %225 = sub nsw i32 %109, %205, !dbg !708
  %226 = getelementptr inbounds i8, ptr %next.gep, i64 8, !dbg !709
  %227 = getelementptr inbounds i8, ptr %next.gep323, i64 8, !dbg !709
  %228 = getelementptr inbounds i8, ptr %next.gep324, i64 8, !dbg !709
  %229 = getelementptr inbounds i8, ptr %next.gep325, i64 8, !dbg !709
  store i32 %222, ptr %218, align 4, !dbg !710
  store i32 %223, ptr %219, align 4, !dbg !710
  store i32 %224, ptr %220, align 4, !dbg !710
  store i32 %225, ptr %221, align 4, !dbg !710
  %230 = add nsw i32 %194, %110, !dbg !711
  %231 = add nsw i32 %195, %111, !dbg !711
  %232 = add nsw i32 %196, %112, !dbg !711
  %233 = add nsw i32 %197, %113, !dbg !711
  %234 = getelementptr inbounds i8, ptr %next.gep, i64 12, !dbg !712
  %235 = getelementptr inbounds i8, ptr %next.gep323, i64 12, !dbg !712
  %236 = getelementptr inbounds i8, ptr %next.gep324, i64 12, !dbg !712
  %237 = getelementptr inbounds i8, ptr %next.gep325, i64 12, !dbg !712
  store i32 %230, ptr %226, align 8, !dbg !713
  store i32 %231, ptr %227, align 8, !dbg !713
  store i32 %232, ptr %228, align 8, !dbg !713
  store i32 %233, ptr %229, align 8, !dbg !713
  %238 = add nsw i32 %186, %114, !dbg !714
  %239 = add nsw i32 %187, %115, !dbg !714
  %240 = add nsw i32 %188, %116, !dbg !714
  %241 = add nsw i32 %189, %117, !dbg !714
  %242 = getelementptr inbounds i8, ptr %next.gep, i64 16, !dbg !715
  %243 = getelementptr inbounds i8, ptr %next.gep323, i64 16, !dbg !715
  %244 = getelementptr inbounds i8, ptr %next.gep324, i64 16, !dbg !715
  %245 = getelementptr inbounds i8, ptr %next.gep325, i64 16, !dbg !715
  store i32 %238, ptr %234, align 4, !dbg !716
  store i32 %239, ptr %235, align 4, !dbg !716
  store i32 %240, ptr %236, align 4, !dbg !716
  store i32 %241, ptr %237, align 4, !dbg !716
  %246 = sub nsw i32 %114, %186, !dbg !717
  %247 = sub nsw i32 %115, %187, !dbg !717
  %248 = sub nsw i32 %116, %188, !dbg !717
  %249 = sub nsw i32 %117, %189, !dbg !717
  %250 = getelementptr inbounds i8, ptr %next.gep, i64 20, !dbg !718
  %251 = getelementptr inbounds i8, ptr %next.gep323, i64 20, !dbg !718
  %252 = getelementptr inbounds i8, ptr %next.gep324, i64 20, !dbg !718
  %253 = getelementptr inbounds i8, ptr %next.gep325, i64 20, !dbg !718
  store i32 %246, ptr %242, align 16, !dbg !719
  store i32 %247, ptr %243, align 16, !dbg !719
  store i32 %248, ptr %244, align 16, !dbg !719
  store i32 %249, ptr %245, align 16, !dbg !719
  %254 = sub nsw i32 %110, %194, !dbg !720
  %255 = sub nsw i32 %111, %195, !dbg !720
  %256 = sub nsw i32 %112, %196, !dbg !720
  %257 = sub nsw i32 %113, %197, !dbg !720
  %258 = getelementptr inbounds i8, ptr %next.gep, i64 24, !dbg !721
  %259 = getelementptr inbounds i8, ptr %next.gep323, i64 24, !dbg !721
  %260 = getelementptr inbounds i8, ptr %next.gep324, i64 24, !dbg !721
  %261 = getelementptr inbounds i8, ptr %next.gep325, i64 24, !dbg !721
  store i32 %254, ptr %250, align 4, !dbg !722
  store i32 %255, ptr %251, align 4, !dbg !722
  store i32 %256, ptr %252, align 4, !dbg !722
  store i32 %257, ptr %253, align 4, !dbg !722
  %262 = add nsw i32 %202, %106, !dbg !723
  %263 = add nsw i32 %203, %107, !dbg !723
  %264 = add nsw i32 %204, %108, !dbg !723
  %265 = add nsw i32 %205, %109, !dbg !723
  %266 = getelementptr inbounds i8, ptr %next.gep, i64 28, !dbg !724
  %267 = getelementptr inbounds i8, ptr %next.gep323, i64 28, !dbg !724
  %268 = getelementptr inbounds i8, ptr %next.gep324, i64 28, !dbg !724
  %269 = getelementptr inbounds i8, ptr %next.gep325, i64 28, !dbg !724
  store i32 %262, ptr %258, align 8, !dbg !725
  store i32 %263, ptr %259, align 8, !dbg !725
  store i32 %264, ptr %260, align 8, !dbg !725
  store i32 %265, ptr %261, align 8, !dbg !725
  %270 = sub nsw i32 %102, %210, !dbg !726
  %271 = sub nsw i32 %103, %211, !dbg !726
  %272 = sub nsw i32 %104, %212, !dbg !726
  %273 = sub nsw i32 %105, %213, !dbg !726
  store i32 %270, ptr %266, align 4, !dbg !727
  store i32 %271, ptr %267, align 4, !dbg !727
  store i32 %272, ptr %268, align 4, !dbg !727
  store i32 %273, ptr %269, align 4, !dbg !727
  %index.next = add nuw i64 %index, 4
  %274 = icmp eq i64 %index.next, %n.vec
  br i1 %274, label %middle.block, label %vector.body, !llvm.loop !728

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec, !dbg !654
  br i1 %cmp.n, label %for.cond59.preheader, label %for.body.preheader, !dbg !654

for.cond59.preheader:                             ; preds = %for.body, %middle.block
  %arrayidx109 = getelementptr inbounds ptr, ptr %block, i64 %0
  %arrayidx115 = getelementptr i8, ptr %arrayidx109, i64 8
  %arrayidx121 = getelementptr i8, ptr %arrayidx109, i64 16
  %arrayidx127 = getelementptr i8, ptr %arrayidx109, i64 24
  %arrayidx133 = getelementptr i8, ptr %arrayidx109, i64 32
  %arrayidx139 = getelementptr i8, ptr %arrayidx109, i64 40
  %arrayidx145 = getelementptr i8, ptr %arrayidx109, i64 48
  %arrayidx151 = getelementptr i8, ptr %arrayidx109, i64 56
    #dbg_value(i32 0, !626, !DIExpression(), !652)
  br label %for.body61, !dbg !730

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %pTmp.0312 = phi ptr [ %incdec.ptr58, %for.body ], [ %pTmp.0312.ph, %for.body.preheader ]
    #dbg_value(i64 %indvars.iv, !626, !DIExpression(), !652)
    #dbg_value(ptr %pTmp.0312, !629, !DIExpression(), !652)
  %arrayidx = getelementptr inbounds ptr, ptr %tblock, i64 %indvars.iv, !dbg !656
  %275 = load ptr, ptr %arrayidx, align 8, !dbg !656
  %arrayidx2 = getelementptr inbounds i32, ptr %275, i64 %idxprom1, !dbg !656
    #dbg_value(ptr %arrayidx2, !630, !DIExpression(), !652)
  %incdec.ptr = getelementptr inbounds i8, ptr %arrayidx2, i64 4, !dbg !659
    #dbg_value(ptr %incdec.ptr, !630, !DIExpression(), !652)
  %276 = load i32, ptr %arrayidx2, align 4, !dbg !660
    #dbg_value(i32 %276, !635, !DIExpression(), !652)
  %incdec.ptr3 = getelementptr inbounds i8, ptr %arrayidx2, i64 8, !dbg !661
    #dbg_value(ptr %incdec.ptr3, !630, !DIExpression(), !652)
  %277 = load i32, ptr %incdec.ptr, align 4, !dbg !662
    #dbg_value(i32 %277, !636, !DIExpression(), !652)
  %incdec.ptr4 = getelementptr inbounds i8, ptr %arrayidx2, i64 12, !dbg !663
    #dbg_value(ptr %incdec.ptr4, !630, !DIExpression(), !652)
  %278 = load i32, ptr %incdec.ptr3, align 4, !dbg !664
    #dbg_value(i32 %278, !637, !DIExpression(), !652)
  %incdec.ptr5 = getelementptr inbounds i8, ptr %arrayidx2, i64 16, !dbg !665
    #dbg_value(ptr %incdec.ptr5, !630, !DIExpression(), !652)
  %279 = load i32, ptr %incdec.ptr4, align 4, !dbg !666
    #dbg_value(i32 %279, !638, !DIExpression(), !652)
  %incdec.ptr6 = getelementptr inbounds i8, ptr %arrayidx2, i64 20, !dbg !667
    #dbg_value(ptr %incdec.ptr6, !630, !DIExpression(), !652)
  %280 = load i32, ptr %incdec.ptr5, align 4, !dbg !668
    #dbg_value(i32 %280, !639, !DIExpression(), !652)
  %incdec.ptr7 = getelementptr inbounds i8, ptr %arrayidx2, i64 24, !dbg !669
    #dbg_value(ptr %incdec.ptr7, !630, !DIExpression(), !652)
  %281 = load i32, ptr %incdec.ptr6, align 4, !dbg !670
    #dbg_value(i32 %281, !640, !DIExpression(), !652)
  %incdec.ptr8 = getelementptr inbounds i8, ptr %arrayidx2, i64 28, !dbg !671
    #dbg_value(ptr %incdec.ptr8, !630, !DIExpression(), !652)
  %282 = load i32, ptr %incdec.ptr7, align 4, !dbg !672
    #dbg_value(i32 %282, !641, !DIExpression(), !652)
  %283 = load i32, ptr %incdec.ptr8, align 4, !dbg !673
    #dbg_value(i32 %283, !642, !DIExpression(), !652)
  %add9 = add nsw i32 %280, %276, !dbg !674
    #dbg_value(i32 %add9, !631, !DIExpression(), !652)
  %sub = sub nsw i32 %276, %280, !dbg !675
    #dbg_value(i32 %sub, !632, !DIExpression(), !652)
  %shr = ashr i32 %278, 1, !dbg !676
  %sub10 = sub nsw i32 %282, %shr, !dbg !677
    #dbg_value(i32 %sub10, !633, !DIExpression(), !652)
  %shr11 = ashr i32 %282, 1, !dbg !678
  %add12 = add nsw i32 %shr11, %278, !dbg !679
    #dbg_value(i32 %add12, !634, !DIExpression(), !652)
  %add13 = add nsw i32 %add12, %add9, !dbg !680
    #dbg_value(i32 %add13, !643, !DIExpression(), !652)
  %sub14 = sub nsw i32 %sub, %sub10, !dbg !681
    #dbg_value(i32 %sub14, !645, !DIExpression(), !652)
  %add15 = add nsw i32 %sub10, %sub, !dbg !682
    #dbg_value(i32 %add15, !647, !DIExpression(), !652)
  %sub16 = sub nsw i32 %add9, %add12, !dbg !683
    #dbg_value(i32 %sub16, !649, !DIExpression(), !652)
  %shr20 = ashr i32 %283, 1, !dbg !684
  %284 = add i32 %279, %283, !dbg !685
  %285 = add i32 %284, %shr20, !dbg !685
  %sub21 = sub i32 %281, %285, !dbg !685
    #dbg_value(i32 %sub21, !631, !DIExpression(), !652)
  %shr24 = ashr i32 %279, 1, !dbg !686
  %286 = add i32 %279, %shr24, !dbg !687
  %add22 = sub i32 %277, %286, !dbg !687
  %sub25 = add i32 %add22, %283, !dbg !688
    #dbg_value(i32 %sub25, !632, !DIExpression(), !652)
  %shr29 = ashr i32 %281, 1, !dbg !689
  %add27 = sub i32 %281, %277, !dbg !690
  %add28 = add i32 %add27, %shr29, !dbg !691
  %add30 = add i32 %add28, %283, !dbg !692
    #dbg_value(i32 %add30, !633, !DIExpression(), !652)
  %shr33 = ashr i32 %277, 1, !dbg !693
  %add31 = add i32 %shr33, %277, !dbg !694
  %add32 = add i32 %add31, %279, !dbg !695
  %add34 = add i32 %add32, %281, !dbg !696
    #dbg_value(i32 %add34, !634, !DIExpression(), !652)
  %shr35 = ashr i32 %add34, 2, !dbg !697
  %add36 = add nsw i32 %sub21, %shr35, !dbg !698
    #dbg_value(i32 %add36, !644, !DIExpression(), !652)
  %shr37 = ashr i32 %add30, 2, !dbg !699
  %add38 = add nsw i32 %shr37, %sub25, !dbg !700
    #dbg_value(i32 %add38, !646, !DIExpression(), !652)
  %shr39 = ashr i32 %sub25, 2, !dbg !701
  %sub40 = sub nsw i32 %add30, %shr39, !dbg !702
    #dbg_value(i32 %sub40, !648, !DIExpression(), !652)
  %shr41 = ashr i32 %sub21, 2, !dbg !703
  %sub42 = sub nsw i32 %add34, %shr41, !dbg !704
    #dbg_value(i32 %sub42, !650, !DIExpression(), !652)
  %add43 = add nsw i32 %sub42, %add13, !dbg !705
  %incdec.ptr44 = getelementptr inbounds i8, ptr %pTmp.0312, i64 4, !dbg !706
    #dbg_value(ptr %incdec.ptr44, !629, !DIExpression(), !652)
  store i32 %add43, ptr %pTmp.0312, align 4, !dbg !707
  %sub45 = sub nsw i32 %sub14, %sub40, !dbg !708
  %incdec.ptr46 = getelementptr inbounds i8, ptr %pTmp.0312, i64 8, !dbg !709
    #dbg_value(ptr %incdec.ptr46, !629, !DIExpression(), !652)
  store i32 %sub45, ptr %incdec.ptr44, align 4, !dbg !710
  %add47 = add nsw i32 %add38, %add15, !dbg !711
  %incdec.ptr48 = getelementptr inbounds i8, ptr %pTmp.0312, i64 12, !dbg !712
    #dbg_value(ptr %incdec.ptr48, !629, !DIExpression(), !652)
  store i32 %add47, ptr %incdec.ptr46, align 4, !dbg !713
  %add49 = add nsw i32 %add36, %sub16, !dbg !714
  %incdec.ptr50 = getelementptr inbounds i8, ptr %pTmp.0312, i64 16, !dbg !715
    #dbg_value(ptr %incdec.ptr50, !629, !DIExpression(), !652)
  store i32 %add49, ptr %incdec.ptr48, align 4, !dbg !716
  %sub51 = sub nsw i32 %sub16, %add36, !dbg !717
  %incdec.ptr52 = getelementptr inbounds i8, ptr %pTmp.0312, i64 20, !dbg !718
    #dbg_value(ptr %incdec.ptr52, !629, !DIExpression(), !652)
  store i32 %sub51, ptr %incdec.ptr50, align 4, !dbg !719
  %sub53 = sub nsw i32 %add15, %add38, !dbg !720
  %incdec.ptr54 = getelementptr inbounds i8, ptr %pTmp.0312, i64 24, !dbg !721
    #dbg_value(ptr %incdec.ptr54, !629, !DIExpression(), !652)
  store i32 %sub53, ptr %incdec.ptr52, align 4, !dbg !722
  %add55 = add nsw i32 %sub40, %sub14, !dbg !723
  %incdec.ptr56 = getelementptr inbounds i8, ptr %pTmp.0312, i64 28, !dbg !724
    #dbg_value(ptr %incdec.ptr56, !629, !DIExpression(), !652)
  store i32 %add55, ptr %incdec.ptr54, align 4, !dbg !725
  %sub57 = sub nsw i32 %add13, %sub42, !dbg !726
  %incdec.ptr58 = getelementptr inbounds i8, ptr %pTmp.0312, i64 32, !dbg !732
    #dbg_value(ptr %incdec.ptr58, !629, !DIExpression(), !652)
  store i32 %sub57, ptr %incdec.ptr56, align 4, !dbg !727
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !733
    #dbg_value(i64 %indvars.iv.next, !626, !DIExpression(), !652)
  %cmp = icmp slt i64 %indvars.iv, %2, !dbg !734
  br i1 %cmp, label %for.body, label %for.cond59.preheader, !dbg !654, !llvm.loop !735

for.body61:                                       ; preds = %for.cond59.preheader, %for.body61
  %indvars.iv316 = phi i64 [ 0, %for.cond59.preheader ], [ %indvars.iv.next317, %for.body61 ]
    #dbg_value(i64 %indvars.iv316, !626, !DIExpression(), !652)
  %add.ptr = getelementptr inbounds i32, ptr %tmp, i64 %indvars.iv316, !dbg !736
    #dbg_value(ptr %add.ptr, !629, !DIExpression(), !652)
  %287 = load i32, ptr %add.ptr, align 4, !dbg !739
    #dbg_value(i32 %287, !635, !DIExpression(), !652)
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr, i64 32, !dbg !740
    #dbg_value(ptr %add.ptr63, !629, !DIExpression(), !652)
  %288 = load i32, ptr %add.ptr63, align 4, !dbg !741
    #dbg_value(i32 %288, !636, !DIExpression(), !652)
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr, i64 64, !dbg !742
    #dbg_value(ptr %add.ptr64, !629, !DIExpression(), !652)
  %289 = load i32, ptr %add.ptr64, align 4, !dbg !743
    #dbg_value(i32 %289, !637, !DIExpression(), !652)
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr, i64 96, !dbg !744
    #dbg_value(ptr %add.ptr65, !629, !DIExpression(), !652)
  %290 = load i32, ptr %add.ptr65, align 4, !dbg !745
    #dbg_value(i32 %290, !638, !DIExpression(), !652)
  %add.ptr66 = getelementptr inbounds i8, ptr %add.ptr, i64 128, !dbg !746
    #dbg_value(ptr %add.ptr66, !629, !DIExpression(), !652)
  %291 = load i32, ptr %add.ptr66, align 4, !dbg !747
    #dbg_value(i32 %291, !639, !DIExpression(), !652)
  %add.ptr67 = getelementptr inbounds i8, ptr %add.ptr, i64 160, !dbg !748
    #dbg_value(ptr %add.ptr67, !629, !DIExpression(), !652)
  %292 = load i32, ptr %add.ptr67, align 4, !dbg !749
    #dbg_value(i32 %292, !640, !DIExpression(), !652)
  %add.ptr68 = getelementptr inbounds i8, ptr %add.ptr, i64 192, !dbg !750
    #dbg_value(ptr %add.ptr68, !629, !DIExpression(), !652)
  %293 = load i32, ptr %add.ptr68, align 4, !dbg !751
    #dbg_value(i32 %293, !641, !DIExpression(), !652)
  %add.ptr69 = getelementptr inbounds i8, ptr %add.ptr, i64 224, !dbg !752
    #dbg_value(ptr %add.ptr69, !629, !DIExpression(), !652)
  %294 = load i32, ptr %add.ptr69, align 4, !dbg !753
    #dbg_value(i32 %294, !642, !DIExpression(), !652)
  %add70 = add nsw i32 %291, %287, !dbg !754
    #dbg_value(i32 %add70, !631, !DIExpression(), !652)
  %sub71 = sub nsw i32 %287, %291, !dbg !755
    #dbg_value(i32 %sub71, !632, !DIExpression(), !652)
  %shr72 = ashr i32 %289, 1, !dbg !756
  %sub73 = sub nsw i32 %293, %shr72, !dbg !757
    #dbg_value(i32 %sub73, !633, !DIExpression(), !652)
  %shr74 = ashr i32 %293, 1, !dbg !758
  %add75 = add nsw i32 %shr74, %289, !dbg !759
    #dbg_value(i32 %add75, !634, !DIExpression(), !652)
  %add76 = add nsw i32 %add75, %add70, !dbg !760
    #dbg_value(i32 %add76, !643, !DIExpression(), !652)
  %sub77 = sub nsw i32 %sub71, %sub73, !dbg !761
    #dbg_value(i32 %sub77, !645, !DIExpression(), !652)
  %add78 = add nsw i32 %sub73, %sub71, !dbg !762
    #dbg_value(i32 %add78, !647, !DIExpression(), !652)
  %sub79 = sub nsw i32 %add70, %add75, !dbg !763
    #dbg_value(i32 %sub79, !649, !DIExpression(), !652)
  %shr83 = ashr i32 %294, 1, !dbg !764
  %295 = add i32 %290, %294, !dbg !765
  %296 = add i32 %295, %shr83, !dbg !765
  %sub84 = sub i32 %292, %296, !dbg !765
    #dbg_value(i32 %sub84, !631, !DIExpression(), !652)
  %shr87 = ashr i32 %290, 1, !dbg !766
  %297 = add i32 %290, %shr87, !dbg !767
  %add85 = sub i32 %288, %297, !dbg !767
  %sub88 = add i32 %add85, %294, !dbg !768
    #dbg_value(i32 %sub88, !632, !DIExpression(), !652)
  %shr92 = ashr i32 %292, 1, !dbg !769
  %add90 = sub i32 %292, %288, !dbg !770
  %add91 = add i32 %add90, %shr92, !dbg !771
  %add93 = add i32 %add91, %294, !dbg !772
    #dbg_value(i32 %add93, !633, !DIExpression(), !652)
  %shr96 = ashr i32 %288, 1, !dbg !773
  %add94 = add i32 %shr96, %288, !dbg !774
  %add95 = add i32 %add94, %290, !dbg !775
  %add97 = add i32 %add95, %292, !dbg !776
    #dbg_value(i32 %add97, !634, !DIExpression(), !652)
  %shr98 = ashr i32 %add97, 2, !dbg !777
  %add99 = add nsw i32 %sub84, %shr98, !dbg !778
    #dbg_value(i32 %add99, !644, !DIExpression(), !652)
  %shr100 = ashr i32 %sub84, 2, !dbg !779
  %sub101 = sub nsw i32 %add97, %shr100, !dbg !780
    #dbg_value(i32 %sub101, !650, !DIExpression(), !652)
  %shr102 = ashr i32 %add93, 2, !dbg !781
  %add103 = add nsw i32 %shr102, %sub88, !dbg !782
    #dbg_value(i32 %add103, !646, !DIExpression(), !652)
  %shr104 = ashr i32 %sub88, 2, !dbg !783
  %sub105 = sub nsw i32 %add93, %shr104, !dbg !784
    #dbg_value(i32 %sub105, !648, !DIExpression(), !652)
  %298 = add nsw i64 %indvars.iv316, %idxprom1, !dbg !785
    #dbg_value(i64 %298, !627, !DIExpression(), !652)
  %add107 = add nsw i32 %sub101, %add76, !dbg !786
  %299 = load ptr, ptr %arrayidx109, align 8, !dbg !787
  %arrayidx111 = getelementptr inbounds i32, ptr %299, i64 %298, !dbg !787
  store i32 %add107, ptr %arrayidx111, align 4, !dbg !788
  %sub112 = sub nsw i32 %sub77, %sub105, !dbg !789
  %300 = load ptr, ptr %arrayidx115, align 8, !dbg !790
  %arrayidx117 = getelementptr inbounds i32, ptr %300, i64 %298, !dbg !790
  store i32 %sub112, ptr %arrayidx117, align 4, !dbg !791
  %add118 = add nsw i32 %add103, %add78, !dbg !792
  %301 = load ptr, ptr %arrayidx121, align 8, !dbg !793
  %arrayidx123 = getelementptr inbounds i32, ptr %301, i64 %298, !dbg !793
  store i32 %add118, ptr %arrayidx123, align 4, !dbg !794
  %add124 = add nsw i32 %add99, %sub79, !dbg !795
  %302 = load ptr, ptr %arrayidx127, align 8, !dbg !796
  %arrayidx129 = getelementptr inbounds i32, ptr %302, i64 %298, !dbg !796
  store i32 %add124, ptr %arrayidx129, align 4, !dbg !797
  %sub130 = sub nsw i32 %sub79, %add99, !dbg !798
  %303 = load ptr, ptr %arrayidx133, align 8, !dbg !799
  %arrayidx135 = getelementptr inbounds i32, ptr %303, i64 %298, !dbg !799
  store i32 %sub130, ptr %arrayidx135, align 4, !dbg !800
  %sub136 = sub nsw i32 %add78, %add103, !dbg !801
  %304 = load ptr, ptr %arrayidx139, align 8, !dbg !802
  %arrayidx141 = getelementptr inbounds i32, ptr %304, i64 %298, !dbg !802
  store i32 %sub136, ptr %arrayidx141, align 4, !dbg !803
  %add142 = add nsw i32 %sub105, %sub77, !dbg !804
  %305 = load ptr, ptr %arrayidx145, align 8, !dbg !805
  %arrayidx147 = getelementptr inbounds i32, ptr %305, i64 %298, !dbg !805
  store i32 %add142, ptr %arrayidx147, align 4, !dbg !806
  %sub148 = sub nsw i32 %add76, %sub101, !dbg !807
  %306 = load ptr, ptr %arrayidx151, align 8, !dbg !808
  %arrayidx153 = getelementptr inbounds i32, ptr %306, i64 %298, !dbg !808
  store i32 %sub148, ptr %arrayidx153, align 4, !dbg !809
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1, !dbg !810
    #dbg_value(i64 %indvars.iv.next317, !626, !DIExpression(), !652)
  %exitcond.not = icmp eq i64 %indvars.iv.next317, 8, !dbg !811
  br i1 %exitcond.not, label %for.end156, label %for.body61, !dbg !730, !llvm.loop !812

for.end156:                                       ; preds = %for.body61
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp) #6, !dbg !814
  ret void, !dbg !814
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "ldecod_src/transform.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "cc6314f658ce13aeb33c32a8f938f53a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!10 = distinct !DISubprogram(name: "forward4x4", scope: !1, file: !1, line: 20, type: !11, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13, !15, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!17 = !DILocalVariable(name: "block", arg: 1, scope: !10, file: !1, line: 20, type: !13)
!18 = !DILocalVariable(name: "tblock", arg: 2, scope: !10, file: !1, line: 20, type: !13)
!19 = !DILocalVariable(name: "pos_y", arg: 3, scope: !10, file: !1, line: 20, type: !15)
!20 = !DILocalVariable(name: "pos_x", arg: 4, scope: !10, file: !1, line: 20, type: !15)
!21 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 22, type: !15)
!22 = !DILocalVariable(name: "ii", scope: !10, file: !1, line: 22, type: !15)
!23 = !DILocalVariable(name: "tmp", scope: !10, file: !1, line: 23, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 512, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 16)
!27 = !DILocalVariable(name: "pTmp", scope: !10, file: !1, line: 24, type: !14)
!28 = !DILocalVariable(name: "pblock", scope: !10, file: !1, line: 24, type: !14)
!29 = !DILocalVariable(name: "p0", scope: !10, file: !1, line: 25, type: !15)
!30 = !DILocalVariable(name: "p1", scope: !10, file: !1, line: 25, type: !15)
!31 = !DILocalVariable(name: "p2", scope: !10, file: !1, line: 25, type: !15)
!32 = !DILocalVariable(name: "p3", scope: !10, file: !1, line: 25, type: !15)
!33 = !DILocalVariable(name: "t0", scope: !10, file: !1, line: 26, type: !15)
!34 = !DILocalVariable(name: "t1", scope: !10, file: !1, line: 26, type: !15)
!35 = !DILocalVariable(name: "t2", scope: !10, file: !1, line: 26, type: !15)
!36 = !DILocalVariable(name: "t3", scope: !10, file: !1, line: 26, type: !15)
!37 = !DILocation(line: 0, scope: !10)
!38 = !DILocation(line: 29, column: 3, scope: !39)
!39 = distinct !DILexicalBlock(scope: !10, file: !1, line: 29, column: 3)
!40 = !DILocation(line: 31, column: 15, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 30, column: 3)
!42 = distinct !DILexicalBlock(scope: !39, file: !1, line: 29, column: 3)
!43 = !DILocation(line: 32, column: 18, scope: !41)
!44 = !DILocation(line: 32, column: 10, scope: !41)
!45 = !DILocation(line: 33, column: 18, scope: !41)
!46 = !DILocation(line: 33, column: 10, scope: !41)
!47 = !DILocation(line: 34, column: 18, scope: !41)
!48 = !DILocation(line: 34, column: 10, scope: !41)
!49 = !DILocation(line: 35, column: 10, scope: !41)
!50 = !DILocation(line: 40, column: 13, scope: !41)
!51 = !DILocation(line: 39, column: 13, scope: !41)
!52 = !DILocation(line: 45, column: 27, scope: !41)
!53 = !DILocation(line: 45, column: 21, scope: !41)
!54 = !DILocation(line: 37, column: 13, scope: !41)
!55 = !DILocation(line: 38, column: 13, scope: !41)
!56 = !DILocation(line: 44, column: 21, scope: !41)
!57 = !DILocation(line: 43, column: 21, scope: !41)
!58 = !DILocation(line: 43, column: 27, scope: !41)
!59 = !DILocation(line: 42, column: 21, scope: !41)
!60 = !DILocation(line: 57, column: 13, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 50, column: 3)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 49, column: 3)
!63 = distinct !DILexicalBlock(scope: !10, file: !1, line: 49, column: 3)
!64 = !DILocation(line: 58, column: 13, scope: !61)
!65 = !DILocation(line: 59, column: 13, scope: !61)
!66 = !DILocation(line: 60, column: 13, scope: !61)
!67 = !DILocation(line: 63, column: 32, scope: !61)
!68 = !DILocation(line: 63, column: 5, scope: !61)
!69 = !DILocation(line: 63, column: 27, scope: !61)
!70 = !DILocation(line: 64, column: 38, scope: !61)
!71 = !DILocation(line: 64, column: 32, scope: !61)
!72 = !DILocation(line: 64, column: 5, scope: !61)
!73 = !DILocation(line: 64, column: 27, scope: !61)
!74 = !DILocation(line: 65, column: 32, scope: !61)
!75 = !DILocation(line: 65, column: 5, scope: !61)
!76 = !DILocation(line: 65, column: 27, scope: !61)
!77 = !DILocation(line: 66, column: 38, scope: !61)
!78 = !DILocation(line: 66, column: 32, scope: !61)
!79 = !DILocation(line: 66, column: 5, scope: !61)
!80 = !DILocation(line: 66, column: 27, scope: !61)
!81 = !DILocation(line: 62, column: 16, scope: !61)
!82 = !DILocation(line: 68, column: 1, scope: !10)
!83 = distinct !DISubprogram(name: "inverse4x4", scope: !1, file: !1, line: 70, type: !11, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!85 = !DILocalVariable(name: "tblock", arg: 1, scope: !83, file: !1, line: 70, type: !13)
!86 = !DILocalVariable(name: "block", arg: 2, scope: !83, file: !1, line: 70, type: !13)
!87 = !DILocalVariable(name: "pos_y", arg: 3, scope: !83, file: !1, line: 70, type: !15)
!88 = !DILocalVariable(name: "pos_x", arg: 4, scope: !83, file: !1, line: 70, type: !15)
!89 = !DILocalVariable(name: "i", scope: !83, file: !1, line: 72, type: !15)
!90 = !DILocalVariable(name: "ii", scope: !83, file: !1, line: 72, type: !15)
!91 = !DILocalVariable(name: "tmp", scope: !83, file: !1, line: 73, type: !24)
!92 = !DILocalVariable(name: "pTmp", scope: !83, file: !1, line: 74, type: !14)
!93 = !DILocalVariable(name: "pblock", scope: !83, file: !1, line: 74, type: !14)
!94 = !DILocalVariable(name: "p0", scope: !83, file: !1, line: 75, type: !15)
!95 = !DILocalVariable(name: "p1", scope: !83, file: !1, line: 75, type: !15)
!96 = !DILocalVariable(name: "p2", scope: !83, file: !1, line: 75, type: !15)
!97 = !DILocalVariable(name: "p3", scope: !83, file: !1, line: 75, type: !15)
!98 = !DILocalVariable(name: "t0", scope: !83, file: !1, line: 76, type: !15)
!99 = !DILocalVariable(name: "t1", scope: !83, file: !1, line: 76, type: !15)
!100 = !DILocalVariable(name: "t2", scope: !83, file: !1, line: 76, type: !15)
!101 = !DILocalVariable(name: "t3", scope: !83, file: !1, line: 76, type: !15)
!102 = !DILocation(line: 0, scope: !83)
!103 = !DILocation(line: 79, column: 3, scope: !104)
!104 = distinct !DILexicalBlock(scope: !83, file: !1, line: 79, column: 3)
!105 = !DILocation(line: 81, column: 15, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 80, column: 3)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 79, column: 3)
!108 = !DILocation(line: 82, column: 18, scope: !106)
!109 = !DILocation(line: 82, column: 10, scope: !106)
!110 = !DILocation(line: 83, column: 18, scope: !106)
!111 = !DILocation(line: 83, column: 10, scope: !106)
!112 = !DILocation(line: 84, column: 18, scope: !106)
!113 = !DILocation(line: 84, column: 10, scope: !106)
!114 = !DILocation(line: 85, column: 10, scope: !106)
!115 = !DILocation(line: 87, column: 14, scope: !106)
!116 = !DILocation(line: 90, column: 20, scope: !106)
!117 = !DILocation(line: 90, column: 14, scope: !106)
!118 = !DILocation(line: 95, column: 20, scope: !106)
!119 = !DILocation(line: 88, column: 14, scope: !106)
!120 = !DILocation(line: 89, column: 14, scope: !106)
!121 = !DILocation(line: 89, column: 20, scope: !106)
!122 = !DILocation(line: 94, column: 20, scope: !106)
!123 = !DILocation(line: 93, column: 20, scope: !106)
!124 = !DILocation(line: 92, column: 20, scope: !106)
!125 = !DILocation(line: 107, column: 13, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 100, column: 3)
!127 = distinct !DILexicalBlock(scope: !128, file: !1, line: 99, column: 3)
!128 = distinct !DILexicalBlock(scope: !83, file: !1, line: 99, column: 3)
!129 = !DILocation(line: 108, column: 13, scope: !126)
!130 = !DILocation(line: 109, column: 13, scope: !126)
!131 = !DILocation(line: 109, column: 19, scope: !126)
!132 = !DILocation(line: 110, column: 19, scope: !126)
!133 = !DILocation(line: 110, column: 13, scope: !126)
!134 = !DILocation(line: 113, column: 31, scope: !126)
!135 = !DILocation(line: 113, column: 5, scope: !126)
!136 = !DILocation(line: 113, column: 26, scope: !126)
!137 = !DILocation(line: 114, column: 31, scope: !126)
!138 = !DILocation(line: 114, column: 5, scope: !126)
!139 = !DILocation(line: 114, column: 26, scope: !126)
!140 = !DILocation(line: 115, column: 31, scope: !126)
!141 = !DILocation(line: 115, column: 5, scope: !126)
!142 = !DILocation(line: 115, column: 26, scope: !126)
!143 = !DILocation(line: 116, column: 31, scope: !126)
!144 = !DILocation(line: 116, column: 5, scope: !126)
!145 = !DILocation(line: 116, column: 26, scope: !126)
!146 = !DILocation(line: 112, column: 12, scope: !126)
!147 = !DILocation(line: 118, column: 1, scope: !83)
!148 = distinct !DISubprogram(name: "hadamard4x4", scope: !1, file: !1, line: 121, type: !149, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !13, !13}
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!152 = !DILocalVariable(name: "block", arg: 1, scope: !148, file: !1, line: 121, type: !13)
!153 = !DILocalVariable(name: "tblock", arg: 2, scope: !148, file: !1, line: 121, type: !13)
!154 = !DILocalVariable(name: "i", scope: !148, file: !1, line: 123, type: !15)
!155 = !DILocalVariable(name: "tmp", scope: !148, file: !1, line: 124, type: !24)
!156 = !DILocalVariable(name: "pTmp", scope: !148, file: !1, line: 125, type: !14)
!157 = !DILocalVariable(name: "pblock", scope: !148, file: !1, line: 125, type: !14)
!158 = !DILocalVariable(name: "p0", scope: !148, file: !1, line: 126, type: !15)
!159 = !DILocalVariable(name: "p1", scope: !148, file: !1, line: 126, type: !15)
!160 = !DILocalVariable(name: "p2", scope: !148, file: !1, line: 126, type: !15)
!161 = !DILocalVariable(name: "p3", scope: !148, file: !1, line: 126, type: !15)
!162 = !DILocalVariable(name: "t0", scope: !148, file: !1, line: 127, type: !15)
!163 = !DILocalVariable(name: "t1", scope: !148, file: !1, line: 127, type: !15)
!164 = !DILocalVariable(name: "t2", scope: !148, file: !1, line: 127, type: !15)
!165 = !DILocalVariable(name: "t3", scope: !148, file: !1, line: 127, type: !15)
!166 = !DILocation(line: 0, scope: !148)
!167 = !DILocation(line: 132, column: 14, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 131, column: 3)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 130, column: 3)
!170 = distinct !DILexicalBlock(scope: !148, file: !1, line: 130, column: 3)
!171 = !DILocation(line: 133, column: 18, scope: !168)
!172 = !DILocation(line: 133, column: 10, scope: !168)
!173 = !DILocation(line: 134, column: 18, scope: !168)
!174 = !DILocation(line: 134, column: 10, scope: !168)
!175 = !DILocation(line: 135, column: 18, scope: !168)
!176 = !DILocation(line: 135, column: 10, scope: !168)
!177 = !DILocation(line: 136, column: 10, scope: !168)
!178 = !DILocation(line: 138, column: 13, scope: !168)
!179 = !DILocation(line: 139, column: 13, scope: !168)
!180 = !DILocation(line: 140, column: 13, scope: !168)
!181 = !DILocation(line: 141, column: 13, scope: !168)
!182 = !DILocation(line: 143, column: 20, scope: !168)
!183 = !DILocation(line: 144, column: 20, scope: !168)
!184 = !DILocation(line: 145, column: 20, scope: !168)
!185 = !DILocation(line: 146, column: 20, scope: !168)
!186 = !DILocation(line: 158, column: 13, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 151, column: 3)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 150, column: 3)
!189 = distinct !DILexicalBlock(scope: !148, file: !1, line: 150, column: 3)
!190 = !DILocation(line: 159, column: 13, scope: !187)
!191 = !DILocation(line: 160, column: 13, scope: !187)
!192 = !DILocation(line: 161, column: 13, scope: !187)
!193 = !DILocation(line: 163, column: 24, scope: !187)
!194 = !DILocation(line: 163, column: 30, scope: !187)
!195 = !DILocation(line: 163, column: 5, scope: !187)
!196 = !DILocation(line: 163, column: 18, scope: !187)
!197 = !DILocation(line: 164, column: 24, scope: !187)
!198 = !DILocation(line: 164, column: 30, scope: !187)
!199 = !DILocation(line: 164, column: 5, scope: !187)
!200 = !DILocation(line: 164, column: 18, scope: !187)
!201 = !DILocation(line: 165, column: 24, scope: !187)
!202 = !DILocation(line: 165, column: 30, scope: !187)
!203 = !DILocation(line: 165, column: 5, scope: !187)
!204 = !DILocation(line: 165, column: 18, scope: !187)
!205 = !DILocation(line: 166, column: 24, scope: !187)
!206 = !DILocation(line: 166, column: 30, scope: !187)
!207 = !DILocation(line: 166, column: 5, scope: !187)
!208 = !DILocation(line: 166, column: 18, scope: !187)
!209 = !DILocation(line: 168, column: 1, scope: !148)
!210 = distinct !DISubprogram(name: "ihadamard4x4", scope: !1, file: !1, line: 171, type: !149, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225}
!212 = !DILocalVariable(name: "tblock", arg: 1, scope: !210, file: !1, line: 171, type: !13)
!213 = !DILocalVariable(name: "block", arg: 2, scope: !210, file: !1, line: 171, type: !13)
!214 = !DILocalVariable(name: "i", scope: !210, file: !1, line: 173, type: !15)
!215 = !DILocalVariable(name: "tmp", scope: !210, file: !1, line: 174, type: !24)
!216 = !DILocalVariable(name: "pTmp", scope: !210, file: !1, line: 175, type: !14)
!217 = !DILocalVariable(name: "pblock", scope: !210, file: !1, line: 175, type: !14)
!218 = !DILocalVariable(name: "p0", scope: !210, file: !1, line: 176, type: !15)
!219 = !DILocalVariable(name: "p1", scope: !210, file: !1, line: 176, type: !15)
!220 = !DILocalVariable(name: "p2", scope: !210, file: !1, line: 176, type: !15)
!221 = !DILocalVariable(name: "p3", scope: !210, file: !1, line: 176, type: !15)
!222 = !DILocalVariable(name: "t0", scope: !210, file: !1, line: 177, type: !15)
!223 = !DILocalVariable(name: "t1", scope: !210, file: !1, line: 177, type: !15)
!224 = !DILocalVariable(name: "t2", scope: !210, file: !1, line: 177, type: !15)
!225 = !DILocalVariable(name: "t3", scope: !210, file: !1, line: 177, type: !15)
!226 = !DILocation(line: 0, scope: !210)
!227 = !DILocation(line: 182, column: 14, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 181, column: 3)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 180, column: 3)
!230 = distinct !DILexicalBlock(scope: !210, file: !1, line: 180, column: 3)
!231 = !DILocation(line: 183, column: 18, scope: !228)
!232 = !DILocation(line: 183, column: 10, scope: !228)
!233 = !DILocation(line: 184, column: 18, scope: !228)
!234 = !DILocation(line: 184, column: 10, scope: !228)
!235 = !DILocation(line: 185, column: 18, scope: !228)
!236 = !DILocation(line: 185, column: 10, scope: !228)
!237 = !DILocation(line: 186, column: 10, scope: !228)
!238 = !DILocation(line: 188, column: 13, scope: !228)
!239 = !DILocation(line: 189, column: 13, scope: !228)
!240 = !DILocation(line: 190, column: 13, scope: !228)
!241 = !DILocation(line: 191, column: 13, scope: !228)
!242 = !DILocation(line: 193, column: 20, scope: !228)
!243 = !DILocation(line: 194, column: 20, scope: !228)
!244 = !DILocation(line: 195, column: 20, scope: !228)
!245 = !DILocation(line: 196, column: 20, scope: !228)
!246 = !DILocation(line: 208, column: 13, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !1, line: 201, column: 3)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 200, column: 3)
!249 = distinct !DILexicalBlock(scope: !210, file: !1, line: 200, column: 3)
!250 = !DILocation(line: 209, column: 13, scope: !247)
!251 = !DILocation(line: 210, column: 13, scope: !247)
!252 = !DILocation(line: 211, column: 13, scope: !247)
!253 = !DILocation(line: 213, column: 22, scope: !247)
!254 = !DILocation(line: 213, column: 5, scope: !247)
!255 = !DILocation(line: 213, column: 17, scope: !247)
!256 = !DILocation(line: 214, column: 22, scope: !247)
!257 = !DILocation(line: 214, column: 5, scope: !247)
!258 = !DILocation(line: 214, column: 17, scope: !247)
!259 = !DILocation(line: 215, column: 22, scope: !247)
!260 = !DILocation(line: 215, column: 5, scope: !247)
!261 = !DILocation(line: 215, column: 17, scope: !247)
!262 = !DILocation(line: 216, column: 22, scope: !247)
!263 = !DILocation(line: 216, column: 5, scope: !247)
!264 = !DILocation(line: 216, column: 17, scope: !247)
!265 = !DILocation(line: 218, column: 1, scope: !210)
!266 = distinct !DISubprogram(name: "hadamard4x2", scope: !1, file: !1, line: 220, type: !149, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!267 = !{!268, !269, !270, !271, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!268 = !DILocalVariable(name: "block", arg: 1, scope: !266, file: !1, line: 220, type: !13)
!269 = !DILocalVariable(name: "tblock", arg: 2, scope: !266, file: !1, line: 220, type: !13)
!270 = !DILocalVariable(name: "i", scope: !266, file: !1, line: 222, type: !15)
!271 = !DILocalVariable(name: "tmp", scope: !266, file: !1, line: 223, type: !272)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 8)
!275 = !DILocalVariable(name: "pTmp", scope: !266, file: !1, line: 224, type: !14)
!276 = !DILocalVariable(name: "p0", scope: !266, file: !1, line: 225, type: !15)
!277 = !DILocalVariable(name: "p1", scope: !266, file: !1, line: 225, type: !15)
!278 = !DILocalVariable(name: "p2", scope: !266, file: !1, line: 225, type: !15)
!279 = !DILocalVariable(name: "p3", scope: !266, file: !1, line: 225, type: !15)
!280 = !DILocalVariable(name: "t0", scope: !266, file: !1, line: 226, type: !15)
!281 = !DILocalVariable(name: "t1", scope: !266, file: !1, line: 226, type: !15)
!282 = !DILocalVariable(name: "t2", scope: !266, file: !1, line: 226, type: !15)
!283 = !DILocalVariable(name: "t3", scope: !266, file: !1, line: 226, type: !15)
!284 = !DILocation(line: 0, scope: !266)
!285 = !DILocation(line: 229, column: 15, scope: !266)
!286 = !DILocation(line: 229, column: 29, scope: !266)
!287 = !DILocation(line: 229, column: 27, scope: !266)
!288 = !DILocation(line: 230, column: 15, scope: !266)
!289 = !DILocation(line: 230, column: 29, scope: !266)
!290 = !DILocation(line: 230, column: 27, scope: !266)
!291 = !DILocation(line: 231, column: 15, scope: !266)
!292 = !DILocation(line: 231, column: 29, scope: !266)
!293 = !DILocation(line: 231, column: 27, scope: !266)
!294 = !DILocation(line: 232, column: 15, scope: !266)
!295 = !DILocation(line: 232, column: 29, scope: !266)
!296 = !DILocation(line: 232, column: 27, scope: !266)
!297 = !DILocation(line: 234, column: 27, scope: !266)
!298 = !DILocation(line: 235, column: 27, scope: !266)
!299 = !DILocation(line: 236, column: 27, scope: !266)
!300 = !DILocation(line: 237, column: 27, scope: !266)
!301 = !DILocation(line: 248, column: 13, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 242, column: 3)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 241, column: 3)
!304 = distinct !DILexicalBlock(scope: !266, file: !1, line: 241, column: 3)
!305 = !DILocation(line: 249, column: 13, scope: !302)
!306 = !DILocation(line: 250, column: 13, scope: !302)
!307 = !DILocation(line: 251, column: 13, scope: !302)
!308 = !DILocation(line: 253, column: 24, scope: !302)
!309 = !DILocation(line: 253, column: 5, scope: !302)
!310 = !DILocation(line: 253, column: 18, scope: !302)
!311 = !DILocation(line: 254, column: 24, scope: !302)
!312 = !DILocation(line: 254, column: 5, scope: !302)
!313 = !DILocation(line: 254, column: 18, scope: !302)
!314 = !DILocation(line: 255, column: 24, scope: !302)
!315 = !DILocation(line: 255, column: 5, scope: !302)
!316 = !DILocation(line: 255, column: 18, scope: !302)
!317 = !DILocation(line: 256, column: 24, scope: !302)
!318 = !DILocation(line: 256, column: 5, scope: !302)
!319 = !DILocation(line: 256, column: 18, scope: !302)
!320 = !DILocation(line: 258, column: 1, scope: !266)
!321 = distinct !DISubprogram(name: "ihadamard4x2", scope: !1, file: !1, line: 260, type: !149, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!323 = !DILocalVariable(name: "tblock", arg: 1, scope: !321, file: !1, line: 260, type: !13)
!324 = !DILocalVariable(name: "block", arg: 2, scope: !321, file: !1, line: 260, type: !13)
!325 = !DILocalVariable(name: "i", scope: !321, file: !1, line: 262, type: !15)
!326 = !DILocalVariable(name: "tmp", scope: !321, file: !1, line: 263, type: !272)
!327 = !DILocalVariable(name: "pTmp", scope: !321, file: !1, line: 264, type: !14)
!328 = !DILocalVariable(name: "p0", scope: !321, file: !1, line: 265, type: !15)
!329 = !DILocalVariable(name: "p1", scope: !321, file: !1, line: 265, type: !15)
!330 = !DILocalVariable(name: "p2", scope: !321, file: !1, line: 265, type: !15)
!331 = !DILocalVariable(name: "p3", scope: !321, file: !1, line: 265, type: !15)
!332 = !DILocalVariable(name: "t0", scope: !321, file: !1, line: 266, type: !15)
!333 = !DILocalVariable(name: "t1", scope: !321, file: !1, line: 266, type: !15)
!334 = !DILocalVariable(name: "t2", scope: !321, file: !1, line: 266, type: !15)
!335 = !DILocalVariable(name: "t3", scope: !321, file: !1, line: 266, type: !15)
!336 = !DILocation(line: 0, scope: !321)
!337 = !DILocation(line: 269, column: 15, scope: !321)
!338 = !DILocation(line: 269, column: 30, scope: !321)
!339 = !DILocation(line: 269, column: 28, scope: !321)
!340 = !DILocation(line: 270, column: 15, scope: !321)
!341 = !DILocation(line: 270, column: 30, scope: !321)
!342 = !DILocation(line: 270, column: 28, scope: !321)
!343 = !DILocation(line: 271, column: 15, scope: !321)
!344 = !DILocation(line: 271, column: 30, scope: !321)
!345 = !DILocation(line: 271, column: 28, scope: !321)
!346 = !DILocation(line: 272, column: 15, scope: !321)
!347 = !DILocation(line: 272, column: 30, scope: !321)
!348 = !DILocation(line: 272, column: 28, scope: !321)
!349 = !DILocation(line: 274, column: 28, scope: !321)
!350 = !DILocation(line: 275, column: 28, scope: !321)
!351 = !DILocation(line: 276, column: 28, scope: !321)
!352 = !DILocation(line: 277, column: 28, scope: !321)
!353 = !DILocation(line: 288, column: 13, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 282, column: 3)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 281, column: 3)
!356 = distinct !DILexicalBlock(scope: !321, file: !1, line: 281, column: 3)
!357 = !DILocation(line: 289, column: 13, scope: !354)
!358 = !DILocation(line: 290, column: 13, scope: !354)
!359 = !DILocation(line: 291, column: 13, scope: !354)
!360 = !DILocation(line: 294, column: 22, scope: !354)
!361 = !DILocation(line: 294, column: 5, scope: !354)
!362 = !DILocation(line: 294, column: 17, scope: !354)
!363 = !DILocation(line: 295, column: 22, scope: !354)
!364 = !DILocation(line: 295, column: 5, scope: !354)
!365 = !DILocation(line: 295, column: 17, scope: !354)
!366 = !DILocation(line: 296, column: 22, scope: !354)
!367 = !DILocation(line: 296, column: 5, scope: !354)
!368 = !DILocation(line: 296, column: 17, scope: !354)
!369 = !DILocation(line: 297, column: 22, scope: !354)
!370 = !DILocation(line: 297, column: 5, scope: !354)
!371 = !DILocation(line: 297, column: 17, scope: !354)
!372 = !DILocation(line: 299, column: 1, scope: !321)
!373 = distinct !DISubprogram(name: "hadamard2x2", scope: !1, file: !1, line: 302, type: !374, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !13, !14}
!376 = !{!377, !378, !379, !380, !381, !382}
!377 = !DILocalVariable(name: "block", arg: 1, scope: !373, file: !1, line: 302, type: !13)
!378 = !DILocalVariable(name: "tblock", arg: 2, scope: !373, file: !1, line: 302, type: !14)
!379 = !DILocalVariable(name: "p0", scope: !373, file: !1, line: 304, type: !15)
!380 = !DILocalVariable(name: "p1", scope: !373, file: !1, line: 304, type: !15)
!381 = !DILocalVariable(name: "p2", scope: !373, file: !1, line: 304, type: !15)
!382 = !DILocalVariable(name: "p3", scope: !373, file: !1, line: 304, type: !15)
!383 = !DILocation(line: 0, scope: !373)
!384 = !DILocation(line: 306, column: 8, scope: !373)
!385 = !DILocation(line: 306, column: 22, scope: !373)
!386 = !DILocation(line: 306, column: 20, scope: !373)
!387 = !DILocation(line: 307, column: 20, scope: !373)
!388 = !DILocation(line: 308, column: 8, scope: !373)
!389 = !DILocation(line: 308, column: 22, scope: !373)
!390 = !DILocation(line: 308, column: 20, scope: !373)
!391 = !DILocation(line: 309, column: 20, scope: !373)
!392 = !DILocation(line: 311, column: 19, scope: !373)
!393 = !DILocation(line: 311, column: 13, scope: !373)
!394 = !DILocation(line: 312, column: 19, scope: !373)
!395 = !DILocation(line: 312, column: 3, scope: !373)
!396 = !DILocation(line: 312, column: 13, scope: !373)
!397 = !DILocation(line: 313, column: 19, scope: !373)
!398 = !DILocation(line: 313, column: 3, scope: !373)
!399 = !DILocation(line: 313, column: 13, scope: !373)
!400 = !DILocation(line: 314, column: 19, scope: !373)
!401 = !DILocation(line: 314, column: 3, scope: !373)
!402 = !DILocation(line: 314, column: 13, scope: !373)
!403 = !DILocation(line: 315, column: 1, scope: !373)
!404 = distinct !DISubprogram(name: "ihadamard2x2", scope: !1, file: !1, line: 317, type: !405, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !14, !14}
!407 = !{!408, !409, !410, !411, !412, !413}
!408 = !DILocalVariable(name: "tblock", arg: 1, scope: !404, file: !1, line: 317, type: !14)
!409 = !DILocalVariable(name: "block", arg: 2, scope: !404, file: !1, line: 317, type: !14)
!410 = !DILocalVariable(name: "t0", scope: !404, file: !1, line: 319, type: !15)
!411 = !DILocalVariable(name: "t1", scope: !404, file: !1, line: 319, type: !15)
!412 = !DILocalVariable(name: "t2", scope: !404, file: !1, line: 319, type: !15)
!413 = !DILocalVariable(name: "t3", scope: !404, file: !1, line: 319, type: !15)
!414 = !DILocation(line: 0, scope: !404)
!415 = !DILocation(line: 321, column: 8, scope: !404)
!416 = !DILocation(line: 323, column: 18, scope: !404)
!417 = !DILocation(line: 326, column: 18, scope: !404)
!418 = !DILocation(line: 326, column: 12, scope: !404)
!419 = !DILocation(line: 330, column: 1, scope: !404)
!420 = distinct !DISubprogram(name: "forward8x8", scope: !1, file: !1, line: 353, type: !11, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!422 = !DILocalVariable(name: "block", arg: 1, scope: !420, file: !1, line: 353, type: !13)
!423 = !DILocalVariable(name: "tblock", arg: 2, scope: !420, file: !1, line: 353, type: !13)
!424 = !DILocalVariable(name: "pos_y", arg: 3, scope: !420, file: !1, line: 353, type: !15)
!425 = !DILocalVariable(name: "pos_x", arg: 4, scope: !420, file: !1, line: 353, type: !15)
!426 = !DILocalVariable(name: "i", scope: !420, file: !1, line: 355, type: !15)
!427 = !DILocalVariable(name: "ii", scope: !420, file: !1, line: 355, type: !15)
!428 = !DILocalVariable(name: "tmp", scope: !420, file: !1, line: 356, type: !429)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 64)
!432 = !DILocalVariable(name: "pTmp", scope: !420, file: !1, line: 357, type: !14)
!433 = !DILocalVariable(name: "pblock", scope: !420, file: !1, line: 357, type: !14)
!434 = !DILocalVariable(name: "a0", scope: !420, file: !1, line: 358, type: !15)
!435 = !DILocalVariable(name: "a1", scope: !420, file: !1, line: 358, type: !15)
!436 = !DILocalVariable(name: "a2", scope: !420, file: !1, line: 358, type: !15)
!437 = !DILocalVariable(name: "a3", scope: !420, file: !1, line: 358, type: !15)
!438 = !DILocalVariable(name: "p0", scope: !420, file: !1, line: 359, type: !15)
!439 = !DILocalVariable(name: "p1", scope: !420, file: !1, line: 359, type: !15)
!440 = !DILocalVariable(name: "p2", scope: !420, file: !1, line: 359, type: !15)
!441 = !DILocalVariable(name: "p3", scope: !420, file: !1, line: 359, type: !15)
!442 = !DILocalVariable(name: "p4", scope: !420, file: !1, line: 359, type: !15)
!443 = !DILocalVariable(name: "p5", scope: !420, file: !1, line: 359, type: !15)
!444 = !DILocalVariable(name: "p6", scope: !420, file: !1, line: 359, type: !15)
!445 = !DILocalVariable(name: "p7", scope: !420, file: !1, line: 359, type: !15)
!446 = !DILocalVariable(name: "b0", scope: !420, file: !1, line: 360, type: !15)
!447 = !DILocalVariable(name: "b1", scope: !420, file: !1, line: 360, type: !15)
!448 = !DILocalVariable(name: "b2", scope: !420, file: !1, line: 360, type: !15)
!449 = !DILocalVariable(name: "b3", scope: !420, file: !1, line: 360, type: !15)
!450 = !DILocalVariable(name: "b4", scope: !420, file: !1, line: 360, type: !15)
!451 = !DILocalVariable(name: "b5", scope: !420, file: !1, line: 360, type: !15)
!452 = !DILocalVariable(name: "b6", scope: !420, file: !1, line: 360, type: !15)
!453 = !DILocalVariable(name: "b7", scope: !420, file: !1, line: 360, type: !15)
!454 = distinct !DIAssignID()
!455 = !DILocation(line: 0, scope: !420)
!456 = !DILocation(line: 356, column: 3, scope: !420)
!457 = !DILocation(line: 363, column: 3, scope: !458)
!458 = distinct !DILexicalBlock(scope: !420, file: !1, line: 363, column: 3)
!459 = !DILocation(line: 365, column: 15, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 364, column: 3)
!461 = distinct !DILexicalBlock(scope: !458, file: !1, line: 363, column: 3)
!462 = !DILocation(line: 366, column: 18, scope: !460)
!463 = !DILocation(line: 366, column: 10, scope: !460)
!464 = !DILocation(line: 367, column: 18, scope: !460)
!465 = !DILocation(line: 367, column: 10, scope: !460)
!466 = !DILocation(line: 368, column: 18, scope: !460)
!467 = !DILocation(line: 368, column: 10, scope: !460)
!468 = !DILocation(line: 369, column: 18, scope: !460)
!469 = !DILocation(line: 369, column: 10, scope: !460)
!470 = !DILocation(line: 370, column: 18, scope: !460)
!471 = !DILocation(line: 370, column: 10, scope: !460)
!472 = !DILocation(line: 371, column: 18, scope: !460)
!473 = !DILocation(line: 371, column: 10, scope: !460)
!474 = !DILocation(line: 372, column: 18, scope: !460)
!475 = !DILocation(line: 372, column: 10, scope: !460)
!476 = !DILocation(line: 373, column: 10, scope: !460)
!477 = !DILocation(line: 375, column: 13, scope: !460)
!478 = !DILocation(line: 376, column: 13, scope: !460)
!479 = !DILocation(line: 377, column: 13, scope: !460)
!480 = !DILocation(line: 378, column: 13, scope: !460)
!481 = !DILocation(line: 380, column: 13, scope: !460)
!482 = !DILocation(line: 381, column: 13, scope: !460)
!483 = !DILocation(line: 382, column: 13, scope: !460)
!484 = !DILocation(line: 383, column: 13, scope: !460)
!485 = !DILocation(line: 385, column: 13, scope: !460)
!486 = !DILocation(line: 386, column: 13, scope: !460)
!487 = !DILocation(line: 387, column: 13, scope: !460)
!488 = !DILocation(line: 388, column: 13, scope: !460)
!489 = !DILocation(line: 390, column: 25, scope: !460)
!490 = !DILocation(line: 390, column: 31, scope: !460)
!491 = !DILocation(line: 390, column: 13, scope: !460)
!492 = !DILocation(line: 390, column: 18, scope: !460)
!493 = !DILocation(line: 391, column: 25, scope: !460)
!494 = !DILocation(line: 391, column: 31, scope: !460)
!495 = !DILocation(line: 391, column: 18, scope: !460)
!496 = !DILocation(line: 392, column: 25, scope: !460)
!497 = !DILocation(line: 392, column: 18, scope: !460)
!498 = !DILocation(line: 393, column: 13, scope: !460)
!499 = !DILocation(line: 393, column: 25, scope: !460)
!500 = !DILocation(line: 393, column: 31, scope: !460)
!501 = !DILocation(line: 393, column: 18, scope: !460)
!502 = !DILocation(line: 395, column: 21, scope: !460)
!503 = !DILocation(line: 395, column: 11, scope: !460)
!504 = !DILocation(line: 395, column: 15, scope: !460)
!505 = !DILocation(line: 396, column: 27, scope: !460)
!506 = !DILocation(line: 396, column: 21, scope: !460)
!507 = !DILocation(line: 396, column: 11, scope: !460)
!508 = !DILocation(line: 396, column: 15, scope: !460)
!509 = !DILocation(line: 397, column: 27, scope: !460)
!510 = !DILocation(line: 397, column: 21, scope: !460)
!511 = !DILocation(line: 397, column: 11, scope: !460)
!512 = !DILocation(line: 397, column: 15, scope: !460)
!513 = !DILocation(line: 398, column: 27, scope: !460)
!514 = !DILocation(line: 398, column: 21, scope: !460)
!515 = !DILocation(line: 398, column: 11, scope: !460)
!516 = !DILocation(line: 398, column: 15, scope: !460)
!517 = !DILocation(line: 399, column: 21, scope: !460)
!518 = !DILocation(line: 399, column: 11, scope: !460)
!519 = !DILocation(line: 399, column: 15, scope: !460)
!520 = !DILocation(line: 400, column: 27, scope: !460)
!521 = !DILocation(line: 400, column: 21, scope: !460)
!522 = !DILocation(line: 400, column: 11, scope: !460)
!523 = !DILocation(line: 400, column: 15, scope: !460)
!524 = !DILocation(line: 401, column: 21, scope: !460)
!525 = !DILocation(line: 401, column: 27, scope: !460)
!526 = !DILocation(line: 401, column: 11, scope: !460)
!527 = !DILocation(line: 401, column: 15, scope: !460)
!528 = !DILocation(line: 402, column: 21, scope: !460)
!529 = !DILocation(line: 402, column: 27, scope: !460)
!530 = !DILocation(line: 402, column: 15, scope: !460)
!531 = distinct !{!531, !457, !532, !533, !534}
!532 = !DILocation(line: 403, column: 3, scope: !458)
!533 = !{!"llvm.loop.isvectorized", i32 1}
!534 = !{!"llvm.loop.unroll.runtime.disable"}
!535 = !DILocation(line: 406, column: 3, scope: !536)
!536 = distinct !DILexicalBlock(scope: !420, file: !1, line: 406, column: 3)
!537 = !DILocation(line: 402, column: 11, scope: !460)
!538 = !DILocation(line: 363, column: 46, scope: !461)
!539 = !DILocation(line: 363, column: 19, scope: !461)
!540 = distinct !{!540, !457, !532, !533}
!541 = !DILocation(line: 408, column: 16, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !1, line: 407, column: 3)
!543 = distinct !DILexicalBlock(scope: !536, file: !1, line: 406, column: 3)
!544 = !DILocation(line: 409, column: 10, scope: !542)
!545 = !DILocation(line: 410, column: 17, scope: !542)
!546 = !DILocation(line: 410, column: 10, scope: !542)
!547 = !DILocation(line: 411, column: 17, scope: !542)
!548 = !DILocation(line: 411, column: 10, scope: !542)
!549 = !DILocation(line: 412, column: 17, scope: !542)
!550 = !DILocation(line: 412, column: 10, scope: !542)
!551 = !DILocation(line: 413, column: 17, scope: !542)
!552 = !DILocation(line: 413, column: 10, scope: !542)
!553 = !DILocation(line: 414, column: 17, scope: !542)
!554 = !DILocation(line: 414, column: 10, scope: !542)
!555 = !DILocation(line: 415, column: 17, scope: !542)
!556 = !DILocation(line: 415, column: 10, scope: !542)
!557 = !DILocation(line: 416, column: 17, scope: !542)
!558 = !DILocation(line: 416, column: 10, scope: !542)
!559 = !DILocation(line: 418, column: 13, scope: !542)
!560 = !DILocation(line: 419, column: 13, scope: !542)
!561 = !DILocation(line: 420, column: 13, scope: !542)
!562 = !DILocation(line: 421, column: 13, scope: !542)
!563 = !DILocation(line: 423, column: 13, scope: !542)
!564 = !DILocation(line: 424, column: 13, scope: !542)
!565 = !DILocation(line: 425, column: 13, scope: !542)
!566 = !DILocation(line: 426, column: 13, scope: !542)
!567 = !DILocation(line: 428, column: 13, scope: !542)
!568 = !DILocation(line: 429, column: 13, scope: !542)
!569 = !DILocation(line: 430, column: 13, scope: !542)
!570 = !DILocation(line: 431, column: 13, scope: !542)
!571 = !DILocation(line: 433, column: 25, scope: !542)
!572 = !DILocation(line: 433, column: 31, scope: !542)
!573 = !DILocation(line: 433, column: 13, scope: !542)
!574 = !DILocation(line: 433, column: 18, scope: !542)
!575 = !DILocation(line: 434, column: 25, scope: !542)
!576 = !DILocation(line: 434, column: 31, scope: !542)
!577 = !DILocation(line: 434, column: 18, scope: !542)
!578 = !DILocation(line: 435, column: 25, scope: !542)
!579 = !DILocation(line: 435, column: 18, scope: !542)
!580 = !DILocation(line: 436, column: 13, scope: !542)
!581 = !DILocation(line: 436, column: 25, scope: !542)
!582 = !DILocation(line: 436, column: 31, scope: !542)
!583 = !DILocation(line: 436, column: 18, scope: !542)
!584 = !DILocation(line: 438, column: 16, scope: !542)
!585 = !DILocation(line: 439, column: 33, scope: !542)
!586 = !DILocation(line: 439, column: 5, scope: !542)
!587 = !DILocation(line: 439, column: 27, scope: !542)
!588 = !DILocation(line: 440, column: 39, scope: !542)
!589 = !DILocation(line: 440, column: 33, scope: !542)
!590 = !DILocation(line: 440, column: 5, scope: !542)
!591 = !DILocation(line: 440, column: 27, scope: !542)
!592 = !DILocation(line: 441, column: 39, scope: !542)
!593 = !DILocation(line: 441, column: 33, scope: !542)
!594 = !DILocation(line: 441, column: 5, scope: !542)
!595 = !DILocation(line: 441, column: 27, scope: !542)
!596 = !DILocation(line: 442, column: 39, scope: !542)
!597 = !DILocation(line: 442, column: 33, scope: !542)
!598 = !DILocation(line: 442, column: 5, scope: !542)
!599 = !DILocation(line: 442, column: 27, scope: !542)
!600 = !DILocation(line: 443, column: 33, scope: !542)
!601 = !DILocation(line: 443, column: 5, scope: !542)
!602 = !DILocation(line: 443, column: 27, scope: !542)
!603 = !DILocation(line: 444, column: 39, scope: !542)
!604 = !DILocation(line: 444, column: 33, scope: !542)
!605 = !DILocation(line: 444, column: 5, scope: !542)
!606 = !DILocation(line: 444, column: 27, scope: !542)
!607 = !DILocation(line: 445, column: 33, scope: !542)
!608 = !DILocation(line: 445, column: 39, scope: !542)
!609 = !DILocation(line: 445, column: 5, scope: !542)
!610 = !DILocation(line: 445, column: 27, scope: !542)
!611 = !DILocation(line: 446, column: 33, scope: !542)
!612 = !DILocation(line: 446, column: 39, scope: !542)
!613 = !DILocation(line: 446, column: 5, scope: !542)
!614 = !DILocation(line: 446, column: 27, scope: !542)
!615 = !DILocation(line: 406, column: 34, scope: !543)
!616 = !DILocation(line: 406, column: 15, scope: !543)
!617 = distinct !{!617, !535, !618}
!618 = !DILocation(line: 447, column: 3, scope: !536)
!619 = !DILocation(line: 448, column: 1, scope: !420)
!620 = distinct !DISubprogram(name: "inverse8x8", scope: !1, file: !1, line: 450, type: !11, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!622 = !DILocalVariable(name: "tblock", arg: 1, scope: !620, file: !1, line: 450, type: !13)
!623 = !DILocalVariable(name: "block", arg: 2, scope: !620, file: !1, line: 450, type: !13)
!624 = !DILocalVariable(name: "pos_y", arg: 3, scope: !620, file: !1, line: 450, type: !15)
!625 = !DILocalVariable(name: "pos_x", arg: 4, scope: !620, file: !1, line: 450, type: !15)
!626 = !DILocalVariable(name: "i", scope: !620, file: !1, line: 452, type: !15)
!627 = !DILocalVariable(name: "ii", scope: !620, file: !1, line: 452, type: !15)
!628 = !DILocalVariable(name: "tmp", scope: !620, file: !1, line: 453, type: !429)
!629 = !DILocalVariable(name: "pTmp", scope: !620, file: !1, line: 454, type: !14)
!630 = !DILocalVariable(name: "pblock", scope: !620, file: !1, line: 454, type: !14)
!631 = !DILocalVariable(name: "a0", scope: !620, file: !1, line: 455, type: !15)
!632 = !DILocalVariable(name: "a1", scope: !620, file: !1, line: 455, type: !15)
!633 = !DILocalVariable(name: "a2", scope: !620, file: !1, line: 455, type: !15)
!634 = !DILocalVariable(name: "a3", scope: !620, file: !1, line: 455, type: !15)
!635 = !DILocalVariable(name: "p0", scope: !620, file: !1, line: 456, type: !15)
!636 = !DILocalVariable(name: "p1", scope: !620, file: !1, line: 456, type: !15)
!637 = !DILocalVariable(name: "p2", scope: !620, file: !1, line: 456, type: !15)
!638 = !DILocalVariable(name: "p3", scope: !620, file: !1, line: 456, type: !15)
!639 = !DILocalVariable(name: "p4", scope: !620, file: !1, line: 456, type: !15)
!640 = !DILocalVariable(name: "p5", scope: !620, file: !1, line: 456, type: !15)
!641 = !DILocalVariable(name: "p6", scope: !620, file: !1, line: 456, type: !15)
!642 = !DILocalVariable(name: "p7", scope: !620, file: !1, line: 456, type: !15)
!643 = !DILocalVariable(name: "b0", scope: !620, file: !1, line: 457, type: !15)
!644 = !DILocalVariable(name: "b1", scope: !620, file: !1, line: 457, type: !15)
!645 = !DILocalVariable(name: "b2", scope: !620, file: !1, line: 457, type: !15)
!646 = !DILocalVariable(name: "b3", scope: !620, file: !1, line: 457, type: !15)
!647 = !DILocalVariable(name: "b4", scope: !620, file: !1, line: 457, type: !15)
!648 = !DILocalVariable(name: "b5", scope: !620, file: !1, line: 457, type: !15)
!649 = !DILocalVariable(name: "b6", scope: !620, file: !1, line: 457, type: !15)
!650 = !DILocalVariable(name: "b7", scope: !620, file: !1, line: 457, type: !15)
!651 = distinct !DIAssignID()
!652 = !DILocation(line: 0, scope: !620)
!653 = !DILocation(line: 453, column: 3, scope: !620)
!654 = !DILocation(line: 460, column: 3, scope: !655)
!655 = distinct !DILexicalBlock(scope: !620, file: !1, line: 460, column: 3)
!656 = !DILocation(line: 462, column: 15, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 461, column: 3)
!658 = distinct !DILexicalBlock(scope: !655, file: !1, line: 460, column: 3)
!659 = !DILocation(line: 463, column: 18, scope: !657)
!660 = !DILocation(line: 463, column: 10, scope: !657)
!661 = !DILocation(line: 464, column: 18, scope: !657)
!662 = !DILocation(line: 464, column: 10, scope: !657)
!663 = !DILocation(line: 465, column: 18, scope: !657)
!664 = !DILocation(line: 465, column: 10, scope: !657)
!665 = !DILocation(line: 466, column: 18, scope: !657)
!666 = !DILocation(line: 466, column: 10, scope: !657)
!667 = !DILocation(line: 467, column: 18, scope: !657)
!668 = !DILocation(line: 467, column: 10, scope: !657)
!669 = !DILocation(line: 468, column: 18, scope: !657)
!670 = !DILocation(line: 468, column: 10, scope: !657)
!671 = !DILocation(line: 469, column: 18, scope: !657)
!672 = !DILocation(line: 469, column: 10, scope: !657)
!673 = !DILocation(line: 470, column: 10, scope: !657)
!674 = !DILocation(line: 472, column: 13, scope: !657)
!675 = !DILocation(line: 473, column: 13, scope: !657)
!676 = !DILocation(line: 474, column: 19, scope: !657)
!677 = !DILocation(line: 474, column: 13, scope: !657)
!678 = !DILocation(line: 475, column: 19, scope: !657)
!679 = !DILocation(line: 475, column: 13, scope: !657)
!680 = !DILocation(line: 477, column: 14, scope: !657)
!681 = !DILocation(line: 478, column: 14, scope: !657)
!682 = !DILocation(line: 479, column: 14, scope: !657)
!683 = !DILocation(line: 480, column: 14, scope: !657)
!684 = !DILocation(line: 482, column: 30, scope: !657)
!685 = !DILocation(line: 482, column: 24, scope: !657)
!686 = !DILocation(line: 483, column: 30, scope: !657)
!687 = !DILocation(line: 483, column: 14, scope: !657)
!688 = !DILocation(line: 483, column: 24, scope: !657)
!689 = !DILocation(line: 484, column: 30, scope: !657)
!690 = !DILocation(line: 484, column: 14, scope: !657)
!691 = !DILocation(line: 484, column: 19, scope: !657)
!692 = !DILocation(line: 484, column: 24, scope: !657)
!693 = !DILocation(line: 485, column: 30, scope: !657)
!694 = !DILocation(line: 485, column: 14, scope: !657)
!695 = !DILocation(line: 485, column: 19, scope: !657)
!696 = !DILocation(line: 485, column: 24, scope: !657)
!697 = !DILocation(line: 488, column: 19, scope: !657)
!698 = !DILocation(line: 488, column: 14, scope: !657)
!699 = !DILocation(line: 489, column: 19, scope: !657)
!700 = !DILocation(line: 489, column: 14, scope: !657)
!701 = !DILocation(line: 490, column: 19, scope: !657)
!702 = !DILocation(line: 490, column: 14, scope: !657)
!703 = !DILocation(line: 491, column: 19, scope: !657)
!704 = !DILocation(line: 491, column: 14, scope: !657)
!705 = !DILocation(line: 493, column: 20, scope: !657)
!706 = !DILocation(line: 493, column: 11, scope: !657)
!707 = !DILocation(line: 493, column: 15, scope: !657)
!708 = !DILocation(line: 494, column: 20, scope: !657)
!709 = !DILocation(line: 494, column: 11, scope: !657)
!710 = !DILocation(line: 494, column: 15, scope: !657)
!711 = !DILocation(line: 495, column: 20, scope: !657)
!712 = !DILocation(line: 495, column: 11, scope: !657)
!713 = !DILocation(line: 495, column: 15, scope: !657)
!714 = !DILocation(line: 496, column: 20, scope: !657)
!715 = !DILocation(line: 496, column: 11, scope: !657)
!716 = !DILocation(line: 496, column: 15, scope: !657)
!717 = !DILocation(line: 497, column: 20, scope: !657)
!718 = !DILocation(line: 497, column: 11, scope: !657)
!719 = !DILocation(line: 497, column: 15, scope: !657)
!720 = !DILocation(line: 498, column: 20, scope: !657)
!721 = !DILocation(line: 498, column: 11, scope: !657)
!722 = !DILocation(line: 498, column: 15, scope: !657)
!723 = !DILocation(line: 499, column: 20, scope: !657)
!724 = !DILocation(line: 499, column: 11, scope: !657)
!725 = !DILocation(line: 499, column: 15, scope: !657)
!726 = !DILocation(line: 500, column: 20, scope: !657)
!727 = !DILocation(line: 500, column: 15, scope: !657)
!728 = distinct !{!728, !654, !729, !533, !534}
!729 = !DILocation(line: 501, column: 3, scope: !655)
!730 = !DILocation(line: 504, column: 3, scope: !731)
!731 = distinct !DILexicalBlock(scope: !620, file: !1, line: 504, column: 3)
!732 = !DILocation(line: 500, column: 11, scope: !657)
!733 = !DILocation(line: 460, column: 46, scope: !658)
!734 = !DILocation(line: 460, column: 19, scope: !658)
!735 = distinct !{!735, !654, !729, !533}
!736 = !DILocation(line: 506, column: 16, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !1, line: 505, column: 3)
!738 = distinct !DILexicalBlock(scope: !731, file: !1, line: 504, column: 3)
!739 = !DILocation(line: 507, column: 10, scope: !737)
!740 = !DILocation(line: 508, column: 17, scope: !737)
!741 = !DILocation(line: 508, column: 10, scope: !737)
!742 = !DILocation(line: 509, column: 17, scope: !737)
!743 = !DILocation(line: 509, column: 10, scope: !737)
!744 = !DILocation(line: 510, column: 17, scope: !737)
!745 = !DILocation(line: 510, column: 10, scope: !737)
!746 = !DILocation(line: 511, column: 17, scope: !737)
!747 = !DILocation(line: 511, column: 10, scope: !737)
!748 = !DILocation(line: 512, column: 17, scope: !737)
!749 = !DILocation(line: 512, column: 10, scope: !737)
!750 = !DILocation(line: 513, column: 17, scope: !737)
!751 = !DILocation(line: 513, column: 10, scope: !737)
!752 = !DILocation(line: 514, column: 17, scope: !737)
!753 = !DILocation(line: 514, column: 10, scope: !737)
!754 = !DILocation(line: 516, column: 14, scope: !737)
!755 = !DILocation(line: 517, column: 14, scope: !737)
!756 = !DILocation(line: 518, column: 19, scope: !737)
!757 = !DILocation(line: 518, column: 14, scope: !737)
!758 = !DILocation(line: 519, column: 19, scope: !737)
!759 = !DILocation(line: 519, column: 14, scope: !737)
!760 = !DILocation(line: 521, column: 13, scope: !737)
!761 = !DILocation(line: 522, column: 13, scope: !737)
!762 = !DILocation(line: 523, column: 13, scope: !737)
!763 = !DILocation(line: 524, column: 13, scope: !737)
!764 = !DILocation(line: 526, column: 30, scope: !737)
!765 = !DILocation(line: 526, column: 24, scope: !737)
!766 = !DILocation(line: 527, column: 30, scope: !737)
!767 = !DILocation(line: 527, column: 14, scope: !737)
!768 = !DILocation(line: 527, column: 24, scope: !737)
!769 = !DILocation(line: 528, column: 30, scope: !737)
!770 = !DILocation(line: 528, column: 14, scope: !737)
!771 = !DILocation(line: 528, column: 19, scope: !737)
!772 = !DILocation(line: 528, column: 24, scope: !737)
!773 = !DILocation(line: 529, column: 30, scope: !737)
!774 = !DILocation(line: 529, column: 14, scope: !737)
!775 = !DILocation(line: 529, column: 19, scope: !737)
!776 = !DILocation(line: 529, column: 24, scope: !737)
!777 = !DILocation(line: 532, column: 20, scope: !737)
!778 = !DILocation(line: 532, column: 14, scope: !737)
!779 = !DILocation(line: 533, column: 20, scope: !737)
!780 = !DILocation(line: 533, column: 14, scope: !737)
!781 = !DILocation(line: 534, column: 20, scope: !737)
!782 = !DILocation(line: 534, column: 14, scope: !737)
!783 = !DILocation(line: 535, column: 20, scope: !737)
!784 = !DILocation(line: 535, column: 14, scope: !737)
!785 = !DILocation(line: 537, column: 12, scope: !737)
!786 = !DILocation(line: 538, column: 31, scope: !737)
!787 = !DILocation(line: 538, column: 5, scope: !737)
!788 = !DILocation(line: 538, column: 26, scope: !737)
!789 = !DILocation(line: 539, column: 31, scope: !737)
!790 = !DILocation(line: 539, column: 5, scope: !737)
!791 = !DILocation(line: 539, column: 26, scope: !737)
!792 = !DILocation(line: 540, column: 31, scope: !737)
!793 = !DILocation(line: 540, column: 5, scope: !737)
!794 = !DILocation(line: 540, column: 26, scope: !737)
!795 = !DILocation(line: 541, column: 31, scope: !737)
!796 = !DILocation(line: 541, column: 5, scope: !737)
!797 = !DILocation(line: 541, column: 26, scope: !737)
!798 = !DILocation(line: 542, column: 31, scope: !737)
!799 = !DILocation(line: 542, column: 5, scope: !737)
!800 = !DILocation(line: 542, column: 26, scope: !737)
!801 = !DILocation(line: 543, column: 31, scope: !737)
!802 = !DILocation(line: 543, column: 5, scope: !737)
!803 = !DILocation(line: 543, column: 26, scope: !737)
!804 = !DILocation(line: 544, column: 31, scope: !737)
!805 = !DILocation(line: 544, column: 5, scope: !737)
!806 = !DILocation(line: 544, column: 26, scope: !737)
!807 = !DILocation(line: 545, column: 31, scope: !737)
!808 = !DILocation(line: 545, column: 5, scope: !737)
!809 = !DILocation(line: 545, column: 26, scope: !737)
!810 = !DILocation(line: 504, column: 34, scope: !738)
!811 = !DILocation(line: 504, column: 15, scope: !738)
!812 = distinct !{!812, !730, !813}
!813 = !DILocation(line: 546, column: 3, scope: !731)
!814 = !DILocation(line: 547, column: 1, scope: !620)
