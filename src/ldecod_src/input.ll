; ModuleID = 'ldecod_src/input.c'
source_filename = "ldecod_src/input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

@.str = private unnamed_addr constant [111 x i8] c"Source picture has higher bit depth than imgpel data type. \0APlease recompile with larger data type for imgpel.\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [54 x i8] c"Rescaling not supported in big endian architectures. \00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [80 x i8] c"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [32 x i8] c"AllocateFrameMemory: p_Vid->buf\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [33 x i8] c"AllocateFrameMemory: p_Vid->ibuf\00", align 1, !dbg !22

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @initInput(ptr nocapture noundef writeonly %p_Vid, ptr nocapture noundef readonly %source, ptr nocapture noundef readonly %output) local_unnamed_addr #0 !dbg !86 {
entry:
    #dbg_value(ptr %p_Vid, !1265, !DIExpression(), !1268)
    #dbg_value(ptr %source, !1266, !DIExpression(), !1268)
    #dbg_value(ptr %output, !1267, !DIExpression(), !1268)
  %bit_depth = getelementptr inbounds i8, ptr %source, i64 88, !dbg !1269
  %0 = load i32, ptr %bit_depth, align 8, !dbg !1271
  %bit_depth1 = getelementptr inbounds i8, ptr %output, i64 88, !dbg !1272
  %1 = load i32, ptr %bit_depth1, align 8, !dbg !1273
  %cmp = icmp eq i32 %0, %1, !dbg !1274
  br i1 %cmp, label %land.lhs.true, label %if.else10, !dbg !1275

land.lhs.true:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds i8, ptr %source, i64 92, !dbg !1276
  %2 = load i32, ptr %arrayidx4, align 4, !dbg !1276
  %arrayidx6 = getelementptr inbounds i8, ptr %output, i64 92, !dbg !1277
  %3 = load i32, ptr %arrayidx6, align 4, !dbg !1277
  %cmp7 = icmp eq i32 %2, %3, !dbg !1278
  br i1 %cmp7, label %if.end12, label %if.else10, !dbg !1279

if.else10:                                        ; preds = %land.lhs.true, %entry
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.else10
  %buf2img_basic.sink = phi ptr [ @buf2img_bitshift, %if.else10 ], [ @buf2img_basic, %land.lhs.true ]
  %buf2img9 = getelementptr inbounds i8, ptr %p_Vid, i64 856736, !dbg !1280
  store ptr %buf2img_basic.sink, ptr %buf2img9, align 8, !dbg !1280
  ret void, !dbg !1281
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @testEndian() local_unnamed_addr #1 !dbg !1282 {
entry:
    #dbg_value(ptr undef, !1287, !DIExpression(), !1288)
    #dbg_value(i8 1, !1286, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1288)
    #dbg_value(i8 0, !1286, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1288)
  ret i32 0, !dbg !1289
}

; Function Attrs: nounwind uwtable
define dso_local void @buf2img_endian(ptr nocapture noundef readonly %imgX, ptr nocapture noundef readonly %buf, i32 noundef %size_x, i32 noundef %size_y, i32 noundef %o_size_x, i32 noundef %o_size_y, i32 noundef %symbol_size_in_bytes, i32 noundef %dummy) local_unnamed_addr #2 !dbg !1290 {
entry:
    #dbg_value(ptr %imgX, !1292, !DIExpression(), !1307)
    #dbg_value(ptr %buf, !1293, !DIExpression(), !1307)
    #dbg_value(i32 %size_x, !1294, !DIExpression(), !1307)
    #dbg_value(i32 %size_y, !1295, !DIExpression(), !1307)
    #dbg_value(i32 %o_size_x, !1296, !DIExpression(), !1307)
    #dbg_value(i32 %o_size_y, !1297, !DIExpression(), !1307)
    #dbg_value(i32 %symbol_size_in_bytes, !1298, !DIExpression(), !1307)
    #dbg_value(i32 %dummy, !1299, !DIExpression(), !1307)
  %cmp = icmp sgt i32 %symbol_size_in_bytes, 2, !dbg !1308
  br i1 %cmp, label %if.then, label %if.end, !dbg !1310

if.then:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #12, !dbg !1311
  br label %if.end, !dbg !1313

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq i32 %size_x, %o_size_x, !dbg !1314
  %cmp2.not = icmp eq i32 %size_y, %o_size_y
  %or.cond = and i1 %cmp1.not, %cmp2.not, !dbg !1316
  br i1 %or.cond, label %if.end4, label %if.then3, !dbg !1316

if.then3:                                         ; preds = %if.end
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #12, !dbg !1317
  br label %if.end4, !dbg !1319

if.end4:                                          ; preds = %if.end, %if.then3
  switch i32 %symbol_size_in_bytes, label %sw.default [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond17.preheader
    i32 4, label %for.cond42.preheader
  ], !dbg !1320

for.cond42.preheader:                             ; preds = %if.end4
    #dbg_value(i64 undef, !1304, !DIExpression(), !1307)
    #dbg_value(i32 0, !1301, !DIExpression(), !1307)
  %cmp43124 = icmp sgt i32 %size_y, 0, !dbg !1321
  %cmp47121 = icmp sgt i32 %size_x, 0
  %or.cond175 = and i1 %cmp43124, %cmp47121, !dbg !1326
  br i1 %or.cond175, label %for.cond46.preheader.us.preheader, label %sw.epilog, !dbg !1326

for.cond46.preheader.us.preheader:                ; preds = %for.cond42.preheader
  %0 = zext nneg i32 %size_x to i64, !dbg !1326
  %wide.trip.count146 = zext nneg i32 %size_y to i64, !dbg !1321
  %xtraiter = and i64 %0, 1
  %1 = icmp eq i32 %size_x, 1
  %unroll_iter = and i64 %0, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond46.preheader.us, !dbg !1326

for.cond46.preheader.us:                          ; preds = %for.cond46.preheader.us.preheader, %for.cond46.for.inc74_crit_edge.us
  %indvars.iv142 = phi i64 [ 0, %for.cond46.preheader.us.preheader ], [ %indvars.iv.next143, %for.cond46.for.inc74_crit_edge.us ]
    #dbg_value(i64 %indvars.iv142, !1301, !DIExpression(), !1307)
    #dbg_value(i32 0, !1300, !DIExpression(), !1307)
    #dbg_value(i64 poison, !1304, !DIExpression(), !1307)
  %2 = mul nuw nsw i64 %indvars.iv142, %0
  %arrayidx68.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv142
  br i1 %1, label %for.cond46.for.inc74_crit_edge.us.unr-lcssa, label %for.body49.us, !dbg !1327

for.body49.us:                                    ; preds = %for.cond46.preheader.us, %for.body49.us
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body49.us ], [ 0, %for.cond46.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %for.body49.us ], [ 0, %for.cond46.preheader.us ]
    #dbg_value(i64 %indvars.iv, !1300, !DIExpression(), !1307)
    #dbg_value(i64 poison, !1304, !DIExpression(), !1307)
  %3 = add nuw nsw i64 %indvars.iv, %2, !dbg !1330
  %mul52.us = shl i64 %3, 2, !dbg !1333
  %idx.ext53.us = and i64 %mul52.us, 4294967292, !dbg !1334
  %add.ptr54.us = getelementptr inbounds i8, ptr %buf, i64 %idx.ext53.us, !dbg !1334
  %tmp32.0.copyload.us = load i32, ptr %add.ptr54.us, align 1, !dbg !1335
    #dbg_value(!DIArgList(i64 poison, i32 poison), !1304, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !1307)
  %rev.us = tail call i32 @llvm.bswap.i32(i32 %tmp32.0.copyload.us)
  %conv66.us = trunc i32 %rev.us to i16, !dbg !1336
    #dbg_value(i16 %conv66.us, !1306, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !1307)
  %4 = load ptr, ptr %arrayidx68.us, align 8, !dbg !1337
  %arrayidx70.us = getelementptr inbounds i16, ptr %4, i64 %indvars.iv, !dbg !1337
  store i16 %conv66.us, ptr %arrayidx70.us, align 2, !dbg !1338
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !1339
    #dbg_value(i64 %indvars.iv.next, !1300, !DIExpression(), !1307)
    #dbg_value(!DIArgList(i64 poison, i32 poison), !1304, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !1307)
    #dbg_value(i64 poison, !1304, !DIExpression(), !1307)
  %5 = add nuw nsw i64 %indvars.iv.next, %2, !dbg !1330
  %mul52.us.1 = shl i64 %5, 2, !dbg !1333
  %idx.ext53.us.1 = and i64 %mul52.us.1, 4294967292, !dbg !1334
  %add.ptr54.us.1 = getelementptr inbounds i8, ptr %buf, i64 %idx.ext53.us.1, !dbg !1334
  %tmp32.0.copyload.us.1 = load i32, ptr %add.ptr54.us.1, align 1, !dbg !1335
    #dbg_value(!DIArgList(i64 poison, i32 poison), !1304, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !1307)
  %rev.us.1 = tail call i32 @llvm.bswap.i32(i32 %tmp32.0.copyload.us.1)
  %conv66.us.1 = trunc i32 %rev.us.1 to i16, !dbg !1336
    #dbg_value(i16 %conv66.us.1, !1306, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !1307)
  %6 = load ptr, ptr %arrayidx68.us, align 8, !dbg !1337
  %arrayidx70.us.1 = getelementptr inbounds i16, ptr %6, i64 %indvars.iv.next, !dbg !1337
  store i16 %conv66.us.1, ptr %arrayidx70.us.1, align 2, !dbg !1338
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !1339
    #dbg_value(i64 %indvars.iv.next.1, !1300, !DIExpression(), !1307)
    #dbg_value(!DIArgList(i64 poison, i32 poison), !1304, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !1307)
  %niter.next.1 = add i64 %niter, 2, !dbg !1327
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1327
  br i1 %niter.ncmp.1, label %for.cond46.for.inc74_crit_edge.us.unr-lcssa, label %for.body49.us, !dbg !1327, !llvm.loop !1340

for.cond46.for.inc74_crit_edge.us.unr-lcssa:      ; preds = %for.body49.us, %for.cond46.preheader.us
  %indvars.iv.unr = phi i64 [ 0, %for.cond46.preheader.us ], [ %indvars.iv.next.1, %for.body49.us ]
  br i1 %lcmp.mod.not, label %for.cond46.for.inc74_crit_edge.us, label %for.body49.us.epil, !dbg !1327

for.body49.us.epil:                               ; preds = %for.cond46.for.inc74_crit_edge.us.unr-lcssa
    #dbg_value(i64 %indvars.iv.unr, !1300, !DIExpression(), !1307)
    #dbg_value(i64 poison, !1304, !DIExpression(), !1307)
  %7 = add nuw nsw i64 %indvars.iv.unr, %2, !dbg !1330
  %mul52.us.epil = shl i64 %7, 2, !dbg !1333
  %idx.ext53.us.epil = and i64 %mul52.us.epil, 4294967292, !dbg !1334
  %add.ptr54.us.epil = getelementptr inbounds i8, ptr %buf, i64 %idx.ext53.us.epil, !dbg !1334
  %tmp32.0.copyload.us.epil = load i32, ptr %add.ptr54.us.epil, align 1, !dbg !1335
    #dbg_value(!DIArgList(i64 poison, i32 poison), !1304, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !1307)
  %rev.us.epil = tail call i32 @llvm.bswap.i32(i32 %tmp32.0.copyload.us.epil)
  %conv66.us.epil = trunc i32 %rev.us.epil to i16, !dbg !1336
    #dbg_value(i16 %conv66.us.epil, !1306, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !1307)
  %8 = load ptr, ptr %arrayidx68.us, align 8, !dbg !1337
  %arrayidx70.us.epil = getelementptr inbounds i16, ptr %8, i64 %indvars.iv.unr, !dbg !1337
  store i16 %conv66.us.epil, ptr %arrayidx70.us.epil, align 2, !dbg !1338
    #dbg_value(i64 %indvars.iv.unr, !1300, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1307)
    #dbg_value(!DIArgList(i64 poison, i32 poison), !1304, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !1307)
  br label %for.cond46.for.inc74_crit_edge.us, !dbg !1342

for.cond46.for.inc74_crit_edge.us:                ; preds = %for.cond46.for.inc74_crit_edge.us.unr-lcssa, %for.body49.us.epil
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1, !dbg !1342
    #dbg_value(i64 poison, !1304, !DIExpression(), !1307)
    #dbg_value(i64 %indvars.iv.next143, !1301, !DIExpression(), !1307)
  %exitcond147.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count146, !dbg !1321
  br i1 %exitcond147.not, label %sw.epilog, label %for.cond46.preheader.us, !dbg !1326, !llvm.loop !1343

for.cond17.preheader:                             ; preds = %if.end4
    #dbg_value(i32 0, !1301, !DIExpression(), !1307)
  %cmp18129 = icmp sgt i32 %size_y, 0, !dbg !1345
  %cmp22127 = icmp sgt i32 %size_x, 0
  %or.cond176 = and i1 %cmp18129, %cmp22127, !dbg !1349
  br i1 %or.cond176, label %for.cond21.preheader.us.preheader, label %sw.epilog, !dbg !1349

for.cond21.preheader.us.preheader:                ; preds = %for.cond17.preheader
  %9 = zext nneg i32 %size_x to i64, !dbg !1349
  %wide.trip.count159 = zext nneg i32 %size_y to i64, !dbg !1345
  %xtraiter182 = and i64 %9, 1
  %10 = icmp eq i32 %size_x, 1
  %unroll_iter184 = and i64 %9, 2147483646
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br label %for.cond21.preheader.us, !dbg !1349

for.cond21.preheader.us:                          ; preds = %for.cond21.preheader.us.preheader, %for.cond21.for.inc38_crit_edge.us
  %indvars.iv155 = phi i64 [ 0, %for.cond21.preheader.us.preheader ], [ %indvars.iv.next156, %for.cond21.for.inc38_crit_edge.us ]
    #dbg_value(i64 %indvars.iv155, !1301, !DIExpression(), !1307)
    #dbg_value(i32 0, !1300, !DIExpression(), !1307)
  %11 = mul nuw nsw i64 %indvars.iv155, %9
  %arrayidx32.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv155
  br i1 %10, label %for.cond21.for.inc38_crit_edge.us.unr-lcssa, label %for.body24.us, !dbg !1350

for.body24.us:                                    ; preds = %for.cond21.preheader.us, %for.body24.us
  %indvars.iv148 = phi i64 [ %indvars.iv.next149.1, %for.body24.us ], [ 0, %for.cond21.preheader.us ]
  %niter185 = phi i64 [ %niter185.next.1, %for.body24.us ], [ 0, %for.cond21.preheader.us ]
    #dbg_value(i64 %indvars.iv148, !1300, !DIExpression(), !1307)
  %12 = add nuw nsw i64 %indvars.iv148, %11, !dbg !1353
  %13 = shl nuw nsw i64 %12, 1, !dbg !1356
  %add.ptr.us = getelementptr inbounds i8, ptr %buf, i64 %13, !dbg !1357
  %tmp16.0.copyload.us = load i16, ptr %add.ptr.us, align 1, !dbg !1358
    #dbg_value(i16 %tmp16.0.copyload.us, !1302, !DIExpression(), !1307)
  %rev118.us = tail call i16 @llvm.bswap.i16(i16 %tmp16.0.copyload.us)
    #dbg_value(i16 %rev118.us, !1303, !DIExpression(), !1307)
  %14 = load ptr, ptr %arrayidx32.us, align 8, !dbg !1359
  %arrayidx34.us = getelementptr inbounds i16, ptr %14, i64 %indvars.iv148, !dbg !1359
  store i16 %rev118.us, ptr %arrayidx34.us, align 2, !dbg !1360
  %indvars.iv.next149 = or disjoint i64 %indvars.iv148, 1, !dbg !1361
    #dbg_value(i64 %indvars.iv.next149, !1300, !DIExpression(), !1307)
  %15 = add nuw nsw i64 %indvars.iv.next149, %11, !dbg !1353
  %16 = shl nuw nsw i64 %15, 1, !dbg !1356
  %add.ptr.us.1 = getelementptr inbounds i8, ptr %buf, i64 %16, !dbg !1357
  %tmp16.0.copyload.us.1 = load i16, ptr %add.ptr.us.1, align 1, !dbg !1358
    #dbg_value(i16 %tmp16.0.copyload.us.1, !1302, !DIExpression(), !1307)
  %rev118.us.1 = tail call i16 @llvm.bswap.i16(i16 %tmp16.0.copyload.us.1)
    #dbg_value(i16 %rev118.us.1, !1303, !DIExpression(), !1307)
  %17 = load ptr, ptr %arrayidx32.us, align 8, !dbg !1359
  %arrayidx34.us.1 = getelementptr inbounds i16, ptr %17, i64 %indvars.iv.next149, !dbg !1359
  store i16 %rev118.us.1, ptr %arrayidx34.us.1, align 2, !dbg !1360
  %indvars.iv.next149.1 = add nuw nsw i64 %indvars.iv148, 2, !dbg !1361
    #dbg_value(i64 %indvars.iv.next149.1, !1300, !DIExpression(), !1307)
  %niter185.next.1 = add i64 %niter185, 2, !dbg !1350
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184, !dbg !1350
  br i1 %niter185.ncmp.1, label %for.cond21.for.inc38_crit_edge.us.unr-lcssa, label %for.body24.us, !dbg !1350, !llvm.loop !1362

for.cond21.for.inc38_crit_edge.us.unr-lcssa:      ; preds = %for.body24.us, %for.cond21.preheader.us
  %indvars.iv148.unr = phi i64 [ 0, %for.cond21.preheader.us ], [ %indvars.iv.next149.1, %for.body24.us ]
  br i1 %lcmp.mod183.not, label %for.cond21.for.inc38_crit_edge.us, label %for.body24.us.epil, !dbg !1350

for.body24.us.epil:                               ; preds = %for.cond21.for.inc38_crit_edge.us.unr-lcssa
    #dbg_value(i64 %indvars.iv148.unr, !1300, !DIExpression(), !1307)
  %18 = add nuw nsw i64 %indvars.iv148.unr, %11, !dbg !1353
  %19 = shl nuw nsw i64 %18, 1, !dbg !1356
  %add.ptr.us.epil = getelementptr inbounds i8, ptr %buf, i64 %19, !dbg !1357
  %tmp16.0.copyload.us.epil = load i16, ptr %add.ptr.us.epil, align 1, !dbg !1358
    #dbg_value(i16 %tmp16.0.copyload.us.epil, !1302, !DIExpression(), !1307)
  %rev118.us.epil = tail call i16 @llvm.bswap.i16(i16 %tmp16.0.copyload.us.epil)
    #dbg_value(i16 %rev118.us.epil, !1303, !DIExpression(), !1307)
  %20 = load ptr, ptr %arrayidx32.us, align 8, !dbg !1359
  %arrayidx34.us.epil = getelementptr inbounds i16, ptr %20, i64 %indvars.iv148.unr, !dbg !1359
  store i16 %rev118.us.epil, ptr %arrayidx34.us.epil, align 2, !dbg !1360
    #dbg_value(i64 %indvars.iv148.unr, !1300, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1307)
  br label %for.cond21.for.inc38_crit_edge.us, !dbg !1364

for.cond21.for.inc38_crit_edge.us:                ; preds = %for.cond21.for.inc38_crit_edge.us.unr-lcssa, %for.body24.us.epil
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1, !dbg !1364
    #dbg_value(i64 %indvars.iv.next156, !1301, !DIExpression(), !1307)
  %exitcond160.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count159, !dbg !1345
  br i1 %exitcond160.not, label %sw.epilog, label %for.cond21.preheader.us, !dbg !1349, !llvm.loop !1365

for.cond.preheader:                               ; preds = %if.end4
    #dbg_value(i32 0, !1301, !DIExpression(), !1307)
  %cmp5133 = icmp sgt i32 %size_y, 0, !dbg !1367
  %cmp7131 = icmp sgt i32 %size_x, 0
  %or.cond177 = and i1 %cmp5133, %cmp7131, !dbg !1371
  br i1 %or.cond177, label %for.cond6.preheader.us.preheader, label %sw.epilog, !dbg !1371

for.cond6.preheader.us.preheader:                 ; preds = %for.cond.preheader
  %21 = zext nneg i32 %size_x to i64, !dbg !1371
  %wide.trip.count171 = zext nneg i32 %size_y to i64, !dbg !1367
  %xtraiter186 = and i64 %21, 3
  %22 = icmp ult i32 %size_x, 4
  %unroll_iter188 = and i64 %21, 2147483644
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br label %for.cond6.preheader.us, !dbg !1371

for.cond6.preheader.us:                           ; preds = %for.cond6.preheader.us.preheader, %for.cond6.for.inc13_crit_edge.us
  %indvars.iv167 = phi i64 [ 0, %for.cond6.preheader.us.preheader ], [ %indvars.iv.next168, %for.cond6.for.inc13_crit_edge.us ]
    #dbg_value(i64 %indvars.iv167, !1301, !DIExpression(), !1307)
    #dbg_value(i32 0, !1300, !DIExpression(), !1307)
  %23 = mul nuw nsw i64 %indvars.iv167, %21
  %arrayidx10.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv167
  %invariant.gep = getelementptr inbounds i8, ptr %buf, i64 %23, !dbg !1372
  br i1 %22, label %for.cond6.for.inc13_crit_edge.us.unr-lcssa, label %for.body8.us, !dbg !1372

for.body8.us:                                     ; preds = %for.cond6.preheader.us, %for.body8.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.3, %for.body8.us ], [ 0, %for.cond6.preheader.us ]
  %niter189 = phi i64 [ %niter189.next.3, %for.body8.us ], [ 0, %for.cond6.preheader.us ]
    #dbg_value(i64 %indvars.iv161, !1300, !DIExpression(), !1307)
  %gep = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv161, !dbg !1375
  %24 = load i8, ptr %gep, align 1, !dbg !1375
  %conv.us = zext i8 %24 to i16, !dbg !1378
  %25 = load ptr, ptr %arrayidx10.us, align 8, !dbg !1379
  %arrayidx12.us = getelementptr inbounds i16, ptr %25, i64 %indvars.iv161, !dbg !1379
  store i16 %conv.us, ptr %arrayidx12.us, align 2, !dbg !1380
  %indvars.iv.next162 = or disjoint i64 %indvars.iv161, 1, !dbg !1381
    #dbg_value(i64 %indvars.iv.next162, !1300, !DIExpression(), !1307)
  %gep.1 = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv.next162, !dbg !1375
  %26 = load i8, ptr %gep.1, align 1, !dbg !1375
  %conv.us.1 = zext i8 %26 to i16, !dbg !1378
  %27 = load ptr, ptr %arrayidx10.us, align 8, !dbg !1379
  %arrayidx12.us.1 = getelementptr inbounds i16, ptr %27, i64 %indvars.iv.next162, !dbg !1379
  store i16 %conv.us.1, ptr %arrayidx12.us.1, align 2, !dbg !1380
  %indvars.iv.next162.1 = or disjoint i64 %indvars.iv161, 2, !dbg !1381
    #dbg_value(i64 %indvars.iv.next162.1, !1300, !DIExpression(), !1307)
  %gep.2 = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv.next162.1, !dbg !1375
  %28 = load i8, ptr %gep.2, align 1, !dbg !1375
  %conv.us.2 = zext i8 %28 to i16, !dbg !1378
  %29 = load ptr, ptr %arrayidx10.us, align 8, !dbg !1379
  %arrayidx12.us.2 = getelementptr inbounds i16, ptr %29, i64 %indvars.iv.next162.1, !dbg !1379
  store i16 %conv.us.2, ptr %arrayidx12.us.2, align 2, !dbg !1380
  %indvars.iv.next162.2 = or disjoint i64 %indvars.iv161, 3, !dbg !1381
    #dbg_value(i64 %indvars.iv.next162.2, !1300, !DIExpression(), !1307)
  %gep.3 = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv.next162.2, !dbg !1375
  %30 = load i8, ptr %gep.3, align 1, !dbg !1375
  %conv.us.3 = zext i8 %30 to i16, !dbg !1378
  %31 = load ptr, ptr %arrayidx10.us, align 8, !dbg !1379
  %arrayidx12.us.3 = getelementptr inbounds i16, ptr %31, i64 %indvars.iv.next162.2, !dbg !1379
  store i16 %conv.us.3, ptr %arrayidx12.us.3, align 2, !dbg !1380
  %indvars.iv.next162.3 = add nuw nsw i64 %indvars.iv161, 4, !dbg !1381
    #dbg_value(i64 %indvars.iv.next162.3, !1300, !DIExpression(), !1307)
  %niter189.next.3 = add i64 %niter189, 4, !dbg !1372
  %niter189.ncmp.3 = icmp eq i64 %niter189.next.3, %unroll_iter188, !dbg !1372
  br i1 %niter189.ncmp.3, label %for.cond6.for.inc13_crit_edge.us.unr-lcssa, label %for.body8.us, !dbg !1372, !llvm.loop !1382

for.cond6.for.inc13_crit_edge.us.unr-lcssa:       ; preds = %for.body8.us, %for.cond6.preheader.us
  %indvars.iv161.unr = phi i64 [ 0, %for.cond6.preheader.us ], [ %indvars.iv.next162.3, %for.body8.us ]
  br i1 %lcmp.mod187.not, label %for.cond6.for.inc13_crit_edge.us, label %for.body8.us.epil, !dbg !1372

for.body8.us.epil:                                ; preds = %for.cond6.for.inc13_crit_edge.us.unr-lcssa, %for.body8.us.epil
  %indvars.iv161.epil = phi i64 [ %indvars.iv.next162.epil, %for.body8.us.epil ], [ %indvars.iv161.unr, %for.cond6.for.inc13_crit_edge.us.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body8.us.epil ], [ 0, %for.cond6.for.inc13_crit_edge.us.unr-lcssa ]
    #dbg_value(i64 %indvars.iv161.epil, !1300, !DIExpression(), !1307)
  %gep.epil = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv161.epil, !dbg !1375
  %32 = load i8, ptr %gep.epil, align 1, !dbg !1375
  %conv.us.epil = zext i8 %32 to i16, !dbg !1378
  %33 = load ptr, ptr %arrayidx10.us, align 8, !dbg !1379
  %arrayidx12.us.epil = getelementptr inbounds i16, ptr %33, i64 %indvars.iv161.epil, !dbg !1379
  store i16 %conv.us.epil, ptr %arrayidx12.us.epil, align 2, !dbg !1380
  %indvars.iv.next162.epil = add nuw nsw i64 %indvars.iv161.epil, 1, !dbg !1381
    #dbg_value(i64 %indvars.iv.next162.epil, !1300, !DIExpression(), !1307)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !1372
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter186, !dbg !1372
  br i1 %epil.iter.cmp.not, label %for.cond6.for.inc13_crit_edge.us, label %for.body8.us.epil, !dbg !1372, !llvm.loop !1384

for.cond6.for.inc13_crit_edge.us:                 ; preds = %for.body8.us.epil, %for.cond6.for.inc13_crit_edge.us.unr-lcssa
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1, !dbg !1386
    #dbg_value(i64 %indvars.iv.next168, !1301, !DIExpression(), !1307)
  %exitcond172.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count171, !dbg !1367
  br i1 %exitcond172.not, label %sw.epilog, label %for.cond6.preheader.us, !dbg !1371, !llvm.loop !1387

sw.default:                                       ; preds = %if.end4
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #12, !dbg !1389
  br label %sw.epilog, !dbg !1391

sw.epilog:                                        ; preds = %for.cond46.for.inc74_crit_edge.us, %for.cond21.for.inc38_crit_edge.us, %for.cond6.for.inc13_crit_edge.us, %for.cond42.preheader, %for.cond17.preheader, %for.cond.preheader, %sw.default
  ret void, !dbg !1392
}

; Function Attrs: nounwind uwtable
define dso_local void @buf2img_basic(ptr nocapture noundef readonly %imgX, ptr nocapture noundef readonly %buf, i32 noundef %size_x, i32 noundef %size_y, i32 noundef %o_size_x, i32 noundef %o_size_y, i32 noundef %symbol_size_in_bytes, i32 %dummy) #2 !dbg !1393 {
entry:
  %ui16 = alloca i16, align 2, !DIAssignID !1427
    #dbg_assign(i1 undef, !1418, !DIExpression(), !1427, ptr %ui16, !DIExpression(), !1428)
    #dbg_value(ptr %imgX, !1395, !DIExpression(), !1429)
    #dbg_value(ptr %buf, !1396, !DIExpression(), !1429)
    #dbg_value(i32 %size_x, !1397, !DIExpression(), !1429)
    #dbg_value(i32 %size_y, !1398, !DIExpression(), !1429)
    #dbg_value(i32 %o_size_x, !1399, !DIExpression(), !1429)
    #dbg_value(i32 %o_size_y, !1400, !DIExpression(), !1429)
    #dbg_value(i32 %symbol_size_in_bytes, !1401, !DIExpression(), !1429)
    #dbg_value(i32 poison, !1402, !DIExpression(), !1429)
    #dbg_value(ptr %buf, !1405, !DIExpression(), !1429)
  %cmp = icmp sgt i32 %symbol_size_in_bytes, 2, !dbg !1430
  br i1 %cmp, label %if.end.thread, label %if.end, !dbg !1432

if.end.thread:                                    ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #12, !dbg !1433
  %conv326 = zext nneg i32 %symbol_size_in_bytes to i64, !dbg !1435
  br label %if.else64, !dbg !1436

if.end:                                           ; preds = %entry
  %conv = sext i32 %symbol_size_in_bytes to i64, !dbg !1435
  %cmp1 = icmp eq i32 %symbol_size_in_bytes, 2, !dbg !1437
  br i1 %cmp1, label %if.then3, label %if.else64, !dbg !1436

if.then3:                                         ; preds = %if.end
  %cmp4 = icmp eq i32 %size_x, %o_size_x, !dbg !1438
  %cmp6 = icmp eq i32 %size_y, %o_size_y
  %or.cond = and i1 %cmp4, %cmp6, !dbg !1439
  br i1 %or.cond, label %if.then8, label %if.else, !dbg !1439

if.then8:                                         ; preds = %if.then3
  %0 = load ptr, ptr %imgX, align 8, !dbg !1440
  %mul = mul nsw i32 %size_y, %size_x, !dbg !1441
  %conv10 = sext i32 %mul to i64, !dbg !1442
  %mul11 = shl nsw i64 %conv10, 1, !dbg !1443
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %0, ptr align 1 %buf, i64 %mul11, i1 false), !dbg !1444
  br label %if.end194, !dbg !1444

if.else:                                          ; preds = %if.then3
    #dbg_value(i32 %size_x, !1445, !DIExpression(), !1452)
    #dbg_value(i32 %o_size_x, !1451, !DIExpression(), !1452)
    #dbg_value(i32 poison, !1406, !DIExpression(), !1454)
    #dbg_value(i32 %size_y, !1445, !DIExpression(), !1455)
    #dbg_value(i32 %o_size_y, !1451, !DIExpression(), !1455)
  %cond.i323 = tail call noundef i32 @llvm.smin.i32(i32 %size_y, i32 %o_size_y), !dbg !1457
    #dbg_value(i32 %cond.i323, !1411, !DIExpression(), !1454)
    #dbg_value(i32 0, !1413, !DIExpression(), !1454)
    #dbg_value(i32 0, !1414, !DIExpression(), !1454)
    #dbg_value(i32 0, !1415, !DIExpression(), !1454)
    #dbg_value(i32 poison, !1412, !DIExpression(), !1454)
  %cmp17.not = icmp slt i32 %o_size_y, %size_y, !dbg !1458
  %sub20 = sub nsw i32 %o_size_y, %size_y, !dbg !1460
  %shr21 = ashr i32 %sub20, 1, !dbg !1460
  %dst_offset_y.0 = select i1 %cmp17.not, i32 0, i32 %shr21, !dbg !1460
    #dbg_value(i32 %dst_offset_y.0, !1413, !DIExpression(), !1454)
  %add42 = add nsw i32 %dst_offset_y.0, %cond.i323, !dbg !1461
  %cmp43 = icmp sgt i32 %add42, %o_size_y, !dbg !1462
  %sub46 = sub nsw i32 %o_size_y, %dst_offset_y.0, !dbg !1463
  %cond49 = select i1 %cmp43, i32 %sub46, i32 %cond.i323, !dbg !1463
    #dbg_value(i32 %cond49, !1411, !DIExpression(), !1454)
    #dbg_value(i32 0, !1403, !DIExpression(), !1429)
  %cmp50330 = icmp sgt i32 %cond49, 0, !dbg !1464
  br i1 %cmp50330, label %for.body.lr.ph, label %if.end194, !dbg !1467

for.body.lr.ph:                                   ; preds = %if.else
  %cmp13.not = icmp slt i32 %o_size_x, %size_x, !dbg !1468
  %sub = sub nsw i32 %o_size_x, %size_x, !dbg !1470
  %shr = ashr i32 %sub, 1, !dbg !1470
  %dst_offset_x.0 = select i1 %cmp13.not, i32 0, i32 %shr, !dbg !1470
    #dbg_value(i32 %dst_offset_x.0, !1412, !DIExpression(), !1454)
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %size_x, i32 %o_size_x), !dbg !1471
    #dbg_value(i32 %cond.i, !1406, !DIExpression(), !1454)
  %add34 = add nsw i32 %dst_offset_x.0, %cond.i, !dbg !1472
  %cmp35 = icmp sgt i32 %add34, %o_size_x, !dbg !1473
  %sub38 = sub nsw i32 %o_size_x, %dst_offset_x.0, !dbg !1474
  %cond41 = select i1 %cmp35, i32 %sub38, i32 %cond.i, !dbg !1474
    #dbg_value(i32 %cond41, !1406, !DIExpression(), !1454)
  %idxprom54 = sext i32 %dst_offset_x.0 to i64
  %conv61 = sext i32 %cond41 to i64
  %mul62 = shl nsw i64 %conv61, 1
  %1 = sext i32 %dst_offset_y.0 to i64, !dbg !1467
  %2 = sext i32 %size_x to i64, !dbg !1467
  %3 = zext nneg i32 %cond49 to i64, !dbg !1467
  %invariant.gep = getelementptr ptr, ptr %imgX, i64 %1, !dbg !1467
  %xtraiter = and i64 %3, 1, !dbg !1467
  %4 = icmp eq i32 %cond49, 1, !dbg !1467
  br i1 %4, label %if.end194.loopexit.unr-lcssa, label %for.body.lr.ph.new, !dbg !1467

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %3, 2147483646, !dbg !1467
  br label %for.body, !dbg !1467

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.1, %for.body ]
    #dbg_value(i64 %indvars.iv, !1403, !DIExpression(), !1429)
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv, !dbg !1475
  %5 = load ptr, ptr %gep, align 8, !dbg !1475
  %arrayidx55 = getelementptr inbounds i16, ptr %5, i64 %idxprom54, !dbg !1475
  %6 = mul nsw i64 %indvars.iv, %2, !dbg !1477
  %arrayidx60 = getelementptr inbounds i8, ptr %buf, i64 %6, !dbg !1478
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx55, ptr align 1 %arrayidx60, i64 %mul62, i1 false), !dbg !1479
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !1480
    #dbg_value(i64 %indvars.iv.next, !1403, !DIExpression(), !1429)
  %gep.1 = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv.next, !dbg !1475
  %7 = load ptr, ptr %gep.1, align 8, !dbg !1475
  %arrayidx55.1 = getelementptr inbounds i16, ptr %7, i64 %idxprom54, !dbg !1475
  %8 = mul nsw i64 %indvars.iv.next, %2, !dbg !1477
  %arrayidx60.1 = getelementptr inbounds i8, ptr %buf, i64 %8, !dbg !1478
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx55.1, ptr align 1 %arrayidx60.1, i64 %mul62, i1 false), !dbg !1479
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !1480
    #dbg_value(i64 %indvars.iv.next.1, !1403, !DIExpression(), !1429)
  %niter.next.1 = add i64 %niter, 2, !dbg !1467
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1467
  br i1 %niter.ncmp.1.not, label %if.end194.loopexit.unr-lcssa, label %for.body, !dbg !1467, !llvm.loop !1481

if.else64:                                        ; preds = %if.end.thread, %if.end
  %conv328 = phi i64 [ %conv326, %if.end.thread ], [ %conv, %if.end ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ui16), !dbg !1483
  %cmp65 = icmp eq i32 %size_x, %o_size_x, !dbg !1484
  %cmp68 = icmp eq i32 %size_y, %o_size_y
  %or.cond322 = and i1 %cmp65, %cmp68, !dbg !1485
  br i1 %or.cond322, label %for.cond71.preheader, label %if.else93, !dbg !1485

for.cond71.preheader:                             ; preds = %if.else64
    #dbg_value(i32 0, !1404, !DIExpression(), !1429)
  %cmp72340 = icmp sgt i32 %size_y, 0, !dbg !1486
  %cmp77338 = icmp sgt i32 %size_x, 0
  %or.cond380 = and i1 %cmp72340, %cmp77338, !dbg !1490
  br i1 %or.cond380, label %for.body74.us.preheader, label %if.end193, !dbg !1490

for.body74.us.preheader:                          ; preds = %for.cond71.preheader
  %9 = sext i32 %symbol_size_in_bytes to i64, !dbg !1490
  %10 = zext nneg i32 %size_x to i64, !dbg !1490
  %wide.trip.count373 = zext nneg i32 %size_y to i64, !dbg !1486
  %wide.trip.count = zext nneg i32 %size_x to i64
  %xtraiter392 = and i64 %wide.trip.count, 1
  %11 = icmp eq i32 %size_x, 1
  %unroll_iter394 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod393.not = icmp eq i64 %xtraiter392, 0
  br label %for.body74.us, !dbg !1490

for.body74.us:                                    ; preds = %for.body74.us.preheader, %for.cond76.for.inc90_crit_edge.us
  %indvars.iv369 = phi i64 [ 0, %for.body74.us.preheader ], [ %indvars.iv.next370, %for.cond76.for.inc90_crit_edge.us ]
    #dbg_value(i64 %indvars.iv369, !1404, !DIExpression(), !1429)
  %12 = mul nuw nsw i64 %indvars.iv369, %10, !dbg !1491
    #dbg_value(i64 %12, !1416, !DIExpression(), !1428)
    #dbg_value(i32 0, !1403, !DIExpression(), !1429)
  %arrayidx84.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv369
  br i1 %11, label %for.cond76.for.inc90_crit_edge.us.unr-lcssa, label %for.body79.us, !dbg !1493

for.body79.us:                                    ; preds = %for.body74.us, %for.body79.us
  %indvars.iv364 = phi i64 [ %indvars.iv.next365.1, %for.body79.us ], [ 0, %for.body74.us ]
  %niter395 = phi i64 [ %niter395.next.1, %for.body79.us ], [ 0, %for.body74.us ]
    #dbg_value(i64 %indvars.iv364, !1403, !DIExpression(), !1429)
  store i16 0, ptr %ui16, align 2, !dbg !1495, !DIAssignID !1498
    #dbg_assign(i16 0, !1418, !DIExpression(), !1498, ptr %ui16, !DIExpression(), !1428)
    #dbg_assign(i16 0, !1418, !DIExpression(), !1499, ptr %ui16, !DIExpression(), !1428)
    #dbg_assign(i16 0, !1418, !DIExpression(), !1500, ptr %ui16, !DIExpression(), !1428)
  %13 = add nuw nsw i64 %indvars.iv364, %12, !dbg !1501
  %14 = mul nsw i64 %13, %9, !dbg !1502
  %add.ptr.us = getelementptr inbounds i8, ptr %buf, i64 %14, !dbg !1503
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr.us, i64 %conv328, i1 false), !dbg !1504
  %ui16.0.ui16.0.ui16.0.ui16.0..us = load i16, ptr %ui16, align 2, !dbg !1505
  %15 = load ptr, ptr %arrayidx84.us, align 8, !dbg !1506
  %arrayidx86.us = getelementptr inbounds i16, ptr %15, i64 %indvars.iv364, !dbg !1506
  store i16 %ui16.0.ui16.0.ui16.0.ui16.0..us, ptr %arrayidx86.us, align 2, !dbg !1507
  %indvars.iv.next365 = or disjoint i64 %indvars.iv364, 1, !dbg !1508
    #dbg_value(i64 %indvars.iv.next365, !1403, !DIExpression(), !1429)
  store i16 0, ptr %ui16, align 2, !dbg !1495, !DIAssignID !1500
    #dbg_assign(i16 0, !1418, !DIExpression(), !1498, ptr %ui16, !DIExpression(), !1428)
    #dbg_assign(i16 0, !1418, !DIExpression(), !1499, ptr %ui16, !DIExpression(), !1428)
    #dbg_assign(i16 0, !1418, !DIExpression(), !1500, ptr %ui16, !DIExpression(), !1428)
  %16 = add nuw nsw i64 %indvars.iv.next365, %12, !dbg !1501
  %17 = mul nsw i64 %16, %9, !dbg !1502
  %add.ptr.us.1 = getelementptr inbounds i8, ptr %buf, i64 %17, !dbg !1503
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr.us.1, i64 %conv328, i1 false), !dbg !1504
  %ui16.0.ui16.0.ui16.0.ui16.0..us.1 = load i16, ptr %ui16, align 2, !dbg !1505
  %18 = load ptr, ptr %arrayidx84.us, align 8, !dbg !1506
  %arrayidx86.us.1 = getelementptr inbounds i16, ptr %18, i64 %indvars.iv.next365, !dbg !1506
  store i16 %ui16.0.ui16.0.ui16.0.ui16.0..us.1, ptr %arrayidx86.us.1, align 2, !dbg !1507
  %indvars.iv.next365.1 = add nuw nsw i64 %indvars.iv364, 2, !dbg !1508
    #dbg_value(i64 %indvars.iv.next365.1, !1403, !DIExpression(), !1429)
  %niter395.next.1 = add i64 %niter395, 2, !dbg !1493
  %niter395.ncmp.1 = icmp eq i64 %niter395.next.1, %unroll_iter394, !dbg !1493
  br i1 %niter395.ncmp.1, label %for.cond76.for.inc90_crit_edge.us.unr-lcssa, label %for.body79.us, !dbg !1493, !llvm.loop !1509

for.cond76.for.inc90_crit_edge.us.unr-lcssa:      ; preds = %for.body79.us, %for.body74.us
  %indvars.iv364.unr = phi i64 [ 0, %for.body74.us ], [ %indvars.iv.next365.1, %for.body79.us ]
  br i1 %lcmp.mod393.not, label %for.cond76.for.inc90_crit_edge.us, label %for.body79.us.epil, !dbg !1493

for.body79.us.epil:                               ; preds = %for.cond76.for.inc90_crit_edge.us.unr-lcssa
    #dbg_value(i64 %indvars.iv364.unr, !1403, !DIExpression(), !1429)
  store i16 0, ptr %ui16, align 2, !dbg !1495, !DIAssignID !1499
    #dbg_assign(i16 0, !1418, !DIExpression(), !1498, ptr %ui16, !DIExpression(), !1428)
    #dbg_assign(i16 0, !1418, !DIExpression(), !1499, ptr %ui16, !DIExpression(), !1428)
    #dbg_assign(i16 0, !1418, !DIExpression(), !1500, ptr %ui16, !DIExpression(), !1428)
  %19 = add nuw nsw i64 %indvars.iv364.unr, %12, !dbg !1501
  %20 = mul nsw i64 %19, %9, !dbg !1502
  %add.ptr.us.epil = getelementptr inbounds i8, ptr %buf, i64 %20, !dbg !1503
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr.us.epil, i64 %conv328, i1 false), !dbg !1504
  %ui16.0.ui16.0.ui16.0.ui16.0..us.epil = load i16, ptr %ui16, align 2, !dbg !1505
  %21 = load ptr, ptr %arrayidx84.us, align 8, !dbg !1506
  %arrayidx86.us.epil = getelementptr inbounds i16, ptr %21, i64 %indvars.iv364.unr, !dbg !1506
  store i16 %ui16.0.ui16.0.ui16.0.ui16.0..us.epil, ptr %arrayidx86.us.epil, align 2, !dbg !1507
    #dbg_value(i64 %indvars.iv364.unr, !1403, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1429)
  br label %for.cond76.for.inc90_crit_edge.us, !dbg !1511

for.cond76.for.inc90_crit_edge.us:                ; preds = %for.cond76.for.inc90_crit_edge.us.unr-lcssa, %for.body79.us.epil
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1, !dbg !1511
    #dbg_value(i64 %indvars.iv.next370, !1404, !DIExpression(), !1429)
  %exitcond374.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count373, !dbg !1486
  br i1 %exitcond374.not, label %if.end193, label %for.body74.us, !dbg !1490, !llvm.loop !1512

if.else93:                                        ; preds = %if.else64
    #dbg_value(i32 %size_x, !1445, !DIExpression(), !1514)
    #dbg_value(i32 %o_size_x, !1451, !DIExpression(), !1514)
  %cond.i324 = tail call noundef i32 @llvm.smin.i32(i32 %size_x, i32 %o_size_x), !dbg !1516
    #dbg_value(i32 %cond.i324, !1419, !DIExpression(), !1517)
    #dbg_value(i32 %size_y, !1445, !DIExpression(), !1518)
    #dbg_value(i32 %o_size_y, !1451, !DIExpression(), !1518)
  %cond.i325 = tail call noundef i32 @llvm.smin.i32(i32 %size_y, i32 %o_size_y), !dbg !1520
    #dbg_value(i32 %cond.i325, !1422, !DIExpression(), !1517)
    #dbg_value(i32 0, !1423, !DIExpression(), !1517)
    #dbg_value(i32 0, !1424, !DIExpression(), !1517)
    #dbg_value(i32 0, !1425, !DIExpression(), !1517)
    #dbg_value(i32 0, !1426, !DIExpression(), !1517)
  %cmp102.not = icmp slt i32 %o_size_x, %size_x, !dbg !1521
  %sub105 = sub nsw i32 %o_size_x, %size_x, !dbg !1523
  %shr106 = ashr i32 %sub105, 1, !dbg !1523
  %dst_offset_x98.0 = select i1 %cmp102.not, i32 0, i32 %shr106, !dbg !1523
    #dbg_value(i32 %dst_offset_x98.0, !1423, !DIExpression(), !1517)
  %cmp108.not = icmp slt i32 %o_size_y, %size_y, !dbg !1524
  %sub111 = sub nsw i32 %o_size_y, %size_y, !dbg !1526
  %shr112 = ashr i32 %sub111, 1, !dbg !1526
  %dst_offset_y99.0 = select i1 %cmp108.not, i32 0, i32 %shr112, !dbg !1526
    #dbg_value(i32 %dst_offset_y99.0, !1424, !DIExpression(), !1517)
  %add130 = add nsw i32 %dst_offset_x98.0, %cond.i324, !dbg !1527
  %cmp131 = icmp sgt i32 %add130, %o_size_x, !dbg !1528
  %sub134 = sub nsw i32 %o_size_x, %dst_offset_x98.0, !dbg !1529
  %cond137 = select i1 %cmp131, i32 %sub134, i32 %cond.i324, !dbg !1529
    #dbg_value(i32 %cond137, !1419, !DIExpression(), !1517)
  %add138 = add nsw i32 %dst_offset_y99.0, %cond.i325, !dbg !1530
  %cmp139 = icmp sgt i32 %add138, %o_size_y, !dbg !1531
  %sub142 = sub nsw i32 %o_size_y, %dst_offset_y99.0, !dbg !1532
  %cond145 = select i1 %cmp139, i32 %sub142, i32 %cond.i325, !dbg !1532
    #dbg_value(i32 %cond145, !1422, !DIExpression(), !1517)
    #dbg_value(i32 0, !1404, !DIExpression(), !1429)
  %cmp147332 = icmp sgt i32 %cond145, 0, !dbg !1533
  br i1 %cmp147332, label %for.body149.lr.ph, label %if.end193, !dbg !1536

for.body149.lr.ph:                                ; preds = %if.else93
  %idxprom153 = sext i32 %dst_offset_x98.0 to i64
  %conv160 = sext i32 %cond137 to i64
  %mul161 = shl nsw i64 %conv160, 1
  %22 = sext i32 %dst_offset_y99.0 to i64, !dbg !1536
  %23 = sext i32 %size_x to i64, !dbg !1536
  %24 = zext nneg i32 %cond145 to i64, !dbg !1536
  %invariant.gep376 = getelementptr ptr, ptr %imgX, i64 %22, !dbg !1536
  %xtraiter384 = and i64 %24, 1, !dbg !1536
  %25 = icmp eq i32 %cond145, 1, !dbg !1536
  br i1 %25, label %for.cond165.preheader.unr-lcssa, label %for.body149.lr.ph.new, !dbg !1536

for.body149.lr.ph.new:                            ; preds = %for.body149.lr.ph
  %unroll_iter386 = and i64 %24, 2147483646, !dbg !1536
  br label %for.body149, !dbg !1536

for.cond165.preheader.unr-lcssa:                  ; preds = %for.body149, %for.body149.lr.ph
  %indvars.iv348.unr = phi i64 [ 0, %for.body149.lr.ph ], [ %indvars.iv.next349.1, %for.body149 ]
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0, !dbg !1536
  br i1 %lcmp.mod385.not, label %for.cond165.preheader, label %for.body149.epil, !dbg !1536

for.body149.epil:                                 ; preds = %for.cond165.preheader.unr-lcssa
    #dbg_value(i64 %indvars.iv348.unr, !1404, !DIExpression(), !1429)
  %gep377.epil = getelementptr ptr, ptr %invariant.gep376, i64 %indvars.iv348.unr, !dbg !1537
  %26 = load ptr, ptr %gep377.epil, align 8, !dbg !1537
  %arrayidx154.epil = getelementptr inbounds i16, ptr %26, i64 %idxprom153, !dbg !1537
  %27 = mul nsw i64 %indvars.iv348.unr, %23, !dbg !1539
  %arrayidx159.epil = getelementptr inbounds i8, ptr %buf, i64 %27, !dbg !1540
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx154.epil, ptr align 1 %arrayidx159.epil, i64 %mul161, i1 false), !dbg !1541
    #dbg_value(i64 %indvars.iv348.unr, !1404, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1429)
  br label %for.cond165.preheader

for.cond165.preheader:                            ; preds = %for.cond165.preheader.unr-lcssa, %for.body149.epil
    #dbg_value(i32 0, !1404, !DIExpression(), !1429)
  %cmp173334 = icmp sgt i32 %cond137, 0
  %or.cond381 = select i1 %cmp147332, i1 %cmp173334, i1 false, !dbg !1542
  br i1 %or.cond381, label %for.body168.us.preheader, label %if.end193, !dbg !1542

for.body168.us.preheader:                         ; preds = %for.cond165.preheader
  %28 = sext i32 %symbol_size_in_bytes to i64, !dbg !1542
  %29 = sext i32 %dst_offset_x98.0 to i64, !dbg !1542
  %30 = zext nneg i32 %cond137 to i64, !dbg !1542
  %31 = sext i32 %size_x to i64, !dbg !1542
  %32 = zext nneg i32 %cond145 to i64, !dbg !1542
  %33 = sext i32 %dst_offset_y99.0 to i64, !dbg !1542
  %invariant.gep378 = getelementptr ptr, ptr %imgX, i64 %33, !dbg !1542
  %xtraiter388 = and i64 %30, 1
  %34 = icmp eq i32 %cond137, 1
  %unroll_iter390 = and i64 %30, 2147483646
  %lcmp.mod389.not = icmp eq i64 %xtraiter388, 0
  br label %for.body168.us, !dbg !1542

for.body168.us:                                   ; preds = %for.body168.us.preheader, %for.cond172.for.inc190_crit_edge.us
  %indvars.iv359 = phi i64 [ 0, %for.body168.us.preheader ], [ %indvars.iv.next360, %for.cond172.for.inc190_crit_edge.us ]
    #dbg_value(i64 %indvars.iv359, !1404, !DIExpression(), !1429)
  %35 = mul nsw i64 %indvars.iv359, %31, !dbg !1544
    #dbg_value(i64 %35, !1416, !DIExpression(), !1428)
    #dbg_value(i32 0, !1403, !DIExpression(), !1429)
  %gep379 = getelementptr ptr, ptr %invariant.gep378, i64 %indvars.iv359
  br i1 %34, label %for.cond172.for.inc190_crit_edge.us.unr-lcssa, label %for.body175.us, !dbg !1547

for.body175.us:                                   ; preds = %for.body168.us, %for.body175.us
  %indvars.iv353 = phi i64 [ %indvars.iv.next354.1, %for.body175.us ], [ 0, %for.body168.us ]
  %niter391 = phi i64 [ %niter391.next.1, %for.body175.us ], [ 0, %for.body168.us ]
    #dbg_value(i64 %indvars.iv353, !1403, !DIExpression(), !1429)
  store i16 0, ptr %ui16, align 2, !dbg !1549, !DIAssignID !1552
    #dbg_assign(i16 0, !1418, !DIExpression(), !1552, ptr %ui16, !DIExpression(), !1428)
    #dbg_assign(i16 0, !1418, !DIExpression(), !1553, ptr %ui16, !DIExpression(), !1428)
    #dbg_assign(i16 0, !1418, !DIExpression(), !1554, ptr %ui16, !DIExpression(), !1428)
  %36 = add nsw i64 %indvars.iv353, %35, !dbg !1555
  %37 = mul nsw i64 %36, %28, !dbg !1556
  %add.ptr179.us = getelementptr inbounds i8, ptr %buf, i64 %37, !dbg !1557
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr179.us, i64 %conv328, i1 false), !dbg !1558
  %ui16.0.ui16.0.ui16.0.ui16.0.217.us = load i16, ptr %ui16, align 2, !dbg !1559
  %38 = load ptr, ptr %gep379, align 8, !dbg !1560
  %39 = getelementptr i16, ptr %38, i64 %indvars.iv353, !dbg !1560
  %arrayidx186.us = getelementptr i16, ptr %39, i64 %29, !dbg !1560
  store i16 %ui16.0.ui16.0.ui16.0.ui16.0.217.us, ptr %arrayidx186.us, align 2, !dbg !1561
  %indvars.iv.next354 = or disjoint i64 %indvars.iv353, 1, !dbg !1562
    #dbg_value(i64 %indvars.iv.next354, !1403, !DIExpression(), !1429)
  store i16 0, ptr %ui16, align 2, !dbg !1549, !DIAssignID !1554
    #dbg_assign(i16 0, !1418, !DIExpression(), !1552, ptr %ui16, !DIExpression(), !1428)
    #dbg_assign(i16 0, !1418, !DIExpression(), !1553, ptr %ui16, !DIExpression(), !1428)
    #dbg_assign(i16 0, !1418, !DIExpression(), !1554, ptr %ui16, !DIExpression(), !1428)
  %40 = add nsw i64 %indvars.iv.next354, %35, !dbg !1555
  %41 = mul nsw i64 %40, %28, !dbg !1556
  %add.ptr179.us.1 = getelementptr inbounds i8, ptr %buf, i64 %41, !dbg !1557
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr179.us.1, i64 %conv328, i1 false), !dbg !1558
  %ui16.0.ui16.0.ui16.0.ui16.0.217.us.1 = load i16, ptr %ui16, align 2, !dbg !1559
  %42 = load ptr, ptr %gep379, align 8, !dbg !1560
  %43 = getelementptr i16, ptr %42, i64 %indvars.iv.next354, !dbg !1560
  %arrayidx186.us.1 = getelementptr i16, ptr %43, i64 %29, !dbg !1560
  store i16 %ui16.0.ui16.0.ui16.0.ui16.0.217.us.1, ptr %arrayidx186.us.1, align 2, !dbg !1561
  %indvars.iv.next354.1 = add nuw nsw i64 %indvars.iv353, 2, !dbg !1562
    #dbg_value(i64 %indvars.iv.next354.1, !1403, !DIExpression(), !1429)
  %niter391.next.1 = add i64 %niter391, 2, !dbg !1547
  %niter391.ncmp.1.not = icmp eq i64 %niter391.next.1, %unroll_iter390, !dbg !1547
  br i1 %niter391.ncmp.1.not, label %for.cond172.for.inc190_crit_edge.us.unr-lcssa, label %for.body175.us, !dbg !1547, !llvm.loop !1563

for.cond172.for.inc190_crit_edge.us.unr-lcssa:    ; preds = %for.body175.us, %for.body168.us
  %indvars.iv353.unr = phi i64 [ 0, %for.body168.us ], [ %indvars.iv.next354.1, %for.body175.us ]
  br i1 %lcmp.mod389.not, label %for.cond172.for.inc190_crit_edge.us, label %for.body175.us.epil, !dbg !1547

for.body175.us.epil:                              ; preds = %for.cond172.for.inc190_crit_edge.us.unr-lcssa
    #dbg_value(i64 %indvars.iv353.unr, !1403, !DIExpression(), !1429)
  store i16 0, ptr %ui16, align 2, !dbg !1549, !DIAssignID !1553
    #dbg_assign(i16 0, !1418, !DIExpression(), !1552, ptr %ui16, !DIExpression(), !1428)
    #dbg_assign(i16 0, !1418, !DIExpression(), !1553, ptr %ui16, !DIExpression(), !1428)
    #dbg_assign(i16 0, !1418, !DIExpression(), !1554, ptr %ui16, !DIExpression(), !1428)
  %44 = add nsw i64 %indvars.iv353.unr, %35, !dbg !1555
  %45 = mul nsw i64 %44, %28, !dbg !1556
  %add.ptr179.us.epil = getelementptr inbounds i8, ptr %buf, i64 %45, !dbg !1557
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr179.us.epil, i64 %conv328, i1 false), !dbg !1558
  %ui16.0.ui16.0.ui16.0.ui16.0.217.us.epil = load i16, ptr %ui16, align 2, !dbg !1559
  %46 = load ptr, ptr %gep379, align 8, !dbg !1560
  %47 = getelementptr i16, ptr %46, i64 %indvars.iv353.unr, !dbg !1560
  %arrayidx186.us.epil = getelementptr i16, ptr %47, i64 %29, !dbg !1560
  store i16 %ui16.0.ui16.0.ui16.0.ui16.0.217.us.epil, ptr %arrayidx186.us.epil, align 2, !dbg !1561
    #dbg_value(i64 %indvars.iv353.unr, !1403, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1429)
  br label %for.cond172.for.inc190_crit_edge.us, !dbg !1565

for.cond172.for.inc190_crit_edge.us:              ; preds = %for.cond172.for.inc190_crit_edge.us.unr-lcssa, %for.body175.us.epil
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1, !dbg !1565
    #dbg_value(i64 %indvars.iv.next360, !1404, !DIExpression(), !1429)
  %cmp166.us = icmp ult i64 %indvars.iv.next360, %32, !dbg !1566
  br i1 %cmp166.us, label %for.body168.us, label %if.end193, !dbg !1542, !llvm.loop !1567

for.body149:                                      ; preds = %for.body149, %for.body149.lr.ph.new
  %indvars.iv348 = phi i64 [ 0, %for.body149.lr.ph.new ], [ %indvars.iv.next349.1, %for.body149 ]
  %niter387 = phi i64 [ 0, %for.body149.lr.ph.new ], [ %niter387.next.1, %for.body149 ]
    #dbg_value(i64 %indvars.iv348, !1404, !DIExpression(), !1429)
  %gep377 = getelementptr ptr, ptr %invariant.gep376, i64 %indvars.iv348, !dbg !1537
  %48 = load ptr, ptr %gep377, align 8, !dbg !1537
  %arrayidx154 = getelementptr inbounds i16, ptr %48, i64 %idxprom153, !dbg !1537
  %49 = mul nsw i64 %indvars.iv348, %23, !dbg !1539
  %arrayidx159 = getelementptr inbounds i8, ptr %buf, i64 %49, !dbg !1540
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx154, ptr align 1 %arrayidx159, i64 %mul161, i1 false), !dbg !1541
  %indvars.iv.next349 = or disjoint i64 %indvars.iv348, 1, !dbg !1569
    #dbg_value(i64 %indvars.iv.next349, !1404, !DIExpression(), !1429)
  %gep377.1 = getelementptr ptr, ptr %invariant.gep376, i64 %indvars.iv.next349, !dbg !1537
  %50 = load ptr, ptr %gep377.1, align 8, !dbg !1537
  %arrayidx154.1 = getelementptr inbounds i16, ptr %50, i64 %idxprom153, !dbg !1537
  %51 = mul nsw i64 %indvars.iv.next349, %23, !dbg !1539
  %arrayidx159.1 = getelementptr inbounds i8, ptr %buf, i64 %51, !dbg !1540
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx154.1, ptr align 1 %arrayidx159.1, i64 %mul161, i1 false), !dbg !1541
  %indvars.iv.next349.1 = add nuw nsw i64 %indvars.iv348, 2, !dbg !1569
    #dbg_value(i64 %indvars.iv.next349.1, !1404, !DIExpression(), !1429)
  %niter387.next.1 = add i64 %niter387, 2, !dbg !1536
  %niter387.ncmp.1.not = icmp eq i64 %niter387.next.1, %unroll_iter386, !dbg !1536
  br i1 %niter387.ncmp.1.not, label %for.cond165.preheader.unr-lcssa, label %for.body149, !dbg !1536, !llvm.loop !1570

if.end193:                                        ; preds = %for.cond172.for.inc190_crit_edge.us, %for.cond76.for.inc90_crit_edge.us, %if.else93, %for.cond165.preheader, %for.cond71.preheader
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ui16), !dbg !1572
  br label %if.end194

if.end194.loopexit.unr-lcssa:                     ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1467
  br i1 %lcmp.mod.not, label %if.end194, label %for.body.epil, !dbg !1467

for.body.epil:                                    ; preds = %if.end194.loopexit.unr-lcssa
    #dbg_value(i64 %indvars.iv.unr, !1403, !DIExpression(), !1429)
  %gep.epil = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv.unr, !dbg !1475
  %52 = load ptr, ptr %gep.epil, align 8, !dbg !1475
  %arrayidx55.epil = getelementptr inbounds i16, ptr %52, i64 %idxprom54, !dbg !1475
  %53 = mul nsw i64 %indvars.iv.unr, %2, !dbg !1477
  %arrayidx60.epil = getelementptr inbounds i8, ptr %buf, i64 %53, !dbg !1478
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx55.epil, ptr align 1 %arrayidx60.epil, i64 %mul62, i1 false), !dbg !1479
    #dbg_value(i64 %indvars.iv.unr, !1403, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1429)
  br label %if.end194, !dbg !1573

if.end194:                                        ; preds = %for.body.epil, %if.end194.loopexit.unr-lcssa, %if.else, %if.then8, %if.end193
  ret void, !dbg !1573
}

; Function Attrs: nounwind uwtable
define dso_local void @buf2img_bitshift(ptr nocapture noundef readonly %imgX, ptr nocapture noundef readonly %buf, i32 noundef %size_x, i32 noundef %size_y, i32 noundef %o_size_x, i32 noundef %o_size_y, i32 noundef %symbol_size_in_bytes, i32 noundef %bitshift) #2 !dbg !1574 {
entry:
  %ui16 = alloca i16, align 2, !DIAssignID !1601
    #dbg_assign(i1 undef, !1587, !DIExpression(), !1601, ptr %ui16, !DIExpression(), !1602)
    #dbg_value(ptr %imgX, !1576, !DIExpression(), !1602)
    #dbg_value(ptr %buf, !1577, !DIExpression(), !1602)
    #dbg_value(i32 %size_x, !1578, !DIExpression(), !1602)
    #dbg_value(i32 %size_y, !1579, !DIExpression(), !1602)
    #dbg_value(i32 %o_size_x, !1580, !DIExpression(), !1602)
    #dbg_value(i32 %o_size_y, !1581, !DIExpression(), !1602)
    #dbg_value(i32 %symbol_size_in_bytes, !1582, !DIExpression(), !1602)
    #dbg_value(i32 %bitshift, !1583, !DIExpression(), !1602)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ui16), !dbg !1603
  %shl = shl i32 %symbol_size_in_bytes, 3, !dbg !1604
  %sub = sub nsw i32 %shl, %bitshift, !dbg !1606
  %cmp = icmp sgt i32 %sub, 16, !dbg !1607
  br i1 %cmp, label %if.then, label %if.end, !dbg !1608

if.then:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #12, !dbg !1609
  br label %if.end, !dbg !1611

if.end:                                           ; preds = %if.then, %entry
  %cmp86 = icmp eq i32 %size_x, %o_size_x, !dbg !1612
  %cmp88 = icmp eq i32 %size_y, %o_size_y
  %or.cond = and i1 %cmp86, %cmp88, !dbg !1613
  br i1 %or.cond, label %for.cond91.preheader, label %if.else118, !dbg !1613

for.cond91.preheader:                             ; preds = %if.end
    #dbg_value(i32 0, !1585, !DIExpression(), !1602)
  %cmp92346 = icmp sgt i32 %size_y, 0, !dbg !1614
  br i1 %cmp92346, label %for.body94.lr.ph, label %if.end193, !dbg !1618

for.body94.lr.ph:                                 ; preds = %for.cond91.preheader
  %cmp97344 = icmp sgt i32 %size_x, 0
  %conv104 = sext i32 %symbol_size_in_bytes to i64
  %sub1.i = sub nsw i32 0, %bitshift
  %sub.i = add nsw i32 %bitshift, -1
  %shl.i = shl nuw i32 1, %sub.i
  br i1 %cmp97344, label %for.body94.lr.ph.split.us, label %if.end193

for.body94.lr.ph.split.us:                        ; preds = %for.body94.lr.ph
  %cmp.i = icmp sgt i32 %bitshift, 0
  %0 = zext nneg i32 %size_x to i64, !dbg !1618
  %wide.trip.count410 = zext nneg i32 %size_y to i64, !dbg !1614
  %wide.trip.count404 = zext nneg i32 %size_x to i64
  br i1 %cmp.i, label %for.body94.us.us, label %for.body94.us.preheader

for.body94.us.preheader:                          ; preds = %for.body94.lr.ph.split.us
  %xtraiter423 = and i64 %wide.trip.count404, 1
  %1 = icmp eq i32 %size_x, 1
  %unroll_iter425 = and i64 %wide.trip.count404, 2147483646
  %lcmp.mod424.not = icmp eq i64 %xtraiter423, 0
  br label %for.body94.us, !dbg !1618

for.body94.us.us:                                 ; preds = %for.body94.lr.ph.split.us, %for.cond96.for.inc115_crit_edge.split.us.us.us
  %indvars.iv406 = phi i64 [ %indvars.iv.next407, %for.cond96.for.inc115_crit_edge.split.us.us.us ], [ 0, %for.body94.lr.ph.split.us ]
    #dbg_value(i64 %indvars.iv406, !1585, !DIExpression(), !1602)
  %2 = mul nuw nsw i64 %indvars.iv406, %0, !dbg !1619
    #dbg_value(i64 %2, !1590, !DIExpression(), !1621)
    #dbg_value(i32 0, !1584, !DIExpression(), !1602)
  %arrayidx109.us.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv406
  br label %for.body99.us.us.us, !dbg !1622

for.body99.us.us.us:                              ; preds = %for.body99.us.us.us, %for.body94.us.us
  %indvars.iv399 = phi i64 [ %indvars.iv.next400, %for.body99.us.us.us ], [ 0, %for.body94.us.us ]
    #dbg_value(i64 %indvars.iv399, !1584, !DIExpression(), !1602)
  store i16 0, ptr %ui16, align 2, !dbg !1624, !DIAssignID !1627
    #dbg_assign(i16 0, !1587, !DIExpression(), !1628, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1629, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1630, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1627, ptr %ui16, !DIExpression(), !1602)
  %3 = add nuw nsw i64 %indvars.iv399, %2, !dbg !1631
  %4 = mul nsw i64 %3, %conv104, !dbg !1632
  %add.ptr103.us.us.us = getelementptr inbounds i8, ptr %buf, i64 %4, !dbg !1633
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr103.us.us.us, i64 %conv104, i1 false), !dbg !1634
  %ui16.0.ui16.0.ui16.0.ui16.0.214.us.us.us = load i16, ptr %ui16, align 2, !dbg !1635
  %conv105.us.us.us = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.214.us.us.us to i32, !dbg !1635
    #dbg_value(i32 %conv105.us.us.us, !1636, !DIExpression(), !1640)
    #dbg_value(i32 %bitshift, !1639, !DIExpression(), !1640)
  %add.i.us.us.us = add nuw nsw i32 %shl.i, %conv105.us.us.us, !dbg !1642
  %shr.i.us.us.us = ashr i32 %add.i.us.us.us, %bitshift, !dbg !1643
  %conv107.us.us.us = trunc i32 %shr.i.us.us.us to i16, !dbg !1644
  %5 = load ptr, ptr %arrayidx109.us.us, align 8, !dbg !1645
  %arrayidx111.us.us.us = getelementptr inbounds i16, ptr %5, i64 %indvars.iv399, !dbg !1645
  store i16 %conv107.us.us.us, ptr %arrayidx111.us.us.us, align 2, !dbg !1646
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1, !dbg !1647
    #dbg_value(i64 %indvars.iv.next400, !1584, !DIExpression(), !1602)
  %exitcond405.not = icmp eq i64 %indvars.iv.next400, %wide.trip.count404, !dbg !1648
  br i1 %exitcond405.not, label %for.cond96.for.inc115_crit_edge.split.us.us.us, label %for.body99.us.us.us, !dbg !1622, !llvm.loop !1649

for.cond96.for.inc115_crit_edge.split.us.us.us:   ; preds = %for.body99.us.us.us
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1, !dbg !1651
    #dbg_value(i64 %indvars.iv.next407, !1585, !DIExpression(), !1602)
  %exitcond411.not = icmp eq i64 %indvars.iv.next407, %wide.trip.count410, !dbg !1614
  br i1 %exitcond411.not, label %if.end193, label %for.body94.us.us, !dbg !1618, !llvm.loop !1652

for.body94.us:                                    ; preds = %for.body94.us.preheader, %for.cond96.for.inc115_crit_edge.split.us361
  %indvars.iv393 = phi i64 [ %indvars.iv.next394, %for.cond96.for.inc115_crit_edge.split.us361 ], [ 0, %for.body94.us.preheader ]
    #dbg_value(i64 %indvars.iv393, !1585, !DIExpression(), !1602)
  %6 = mul nuw nsw i64 %indvars.iv393, %0, !dbg !1619
    #dbg_value(i64 %6, !1590, !DIExpression(), !1621)
    #dbg_value(i32 0, !1584, !DIExpression(), !1602)
  %arrayidx109.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv393
  br i1 %1, label %for.cond96.for.inc115_crit_edge.split.us361.unr-lcssa, label %for.body99.us348, !dbg !1622

for.body99.us348:                                 ; preds = %for.body94.us, %for.body99.us348
  %indvars.iv388 = phi i64 [ %indvars.iv.next389.1, %for.body99.us348 ], [ 0, %for.body94.us ]
  %niter426 = phi i64 [ %niter426.next.1, %for.body99.us348 ], [ 0, %for.body94.us ]
    #dbg_value(i64 %indvars.iv388, !1584, !DIExpression(), !1602)
  store i16 0, ptr %ui16, align 2, !dbg !1624, !DIAssignID !1628
    #dbg_assign(i16 0, !1587, !DIExpression(), !1628, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1629, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1630, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1627, ptr %ui16, !DIExpression(), !1602)
  %7 = add nuw nsw i64 %indvars.iv388, %6, !dbg !1631
  %8 = mul nsw i64 %7, %conv104, !dbg !1632
  %add.ptr103.us353 = getelementptr inbounds i8, ptr %buf, i64 %8, !dbg !1633
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr103.us353, i64 %conv104, i1 false), !dbg !1634
  %ui16.0.ui16.0.ui16.0.ui16.0.214.us354 = load i16, ptr %ui16, align 2, !dbg !1635
  %conv105.us355 = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.214.us354 to i32, !dbg !1635
    #dbg_value(i32 %conv105.us355, !1636, !DIExpression(), !1640)
    #dbg_value(i32 %bitshift, !1639, !DIExpression(), !1640)
  %shl2.i.us = shl i32 %conv105.us355, %sub1.i, !dbg !1654
  %conv107.us356 = trunc i32 %shl2.i.us to i16, !dbg !1644
  %9 = load ptr, ptr %arrayidx109.us, align 8, !dbg !1645
  %arrayidx111.us358 = getelementptr inbounds i16, ptr %9, i64 %indvars.iv388, !dbg !1645
  store i16 %conv107.us356, ptr %arrayidx111.us358, align 2, !dbg !1646
  %indvars.iv.next389 = or disjoint i64 %indvars.iv388, 1, !dbg !1647
    #dbg_value(i64 %indvars.iv.next389, !1584, !DIExpression(), !1602)
  store i16 0, ptr %ui16, align 2, !dbg !1624, !DIAssignID !1630
    #dbg_assign(i16 0, !1587, !DIExpression(), !1628, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1629, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1630, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1627, ptr %ui16, !DIExpression(), !1602)
  %10 = add nuw nsw i64 %indvars.iv.next389, %6, !dbg !1631
  %11 = mul nsw i64 %10, %conv104, !dbg !1632
  %add.ptr103.us353.1 = getelementptr inbounds i8, ptr %buf, i64 %11, !dbg !1633
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr103.us353.1, i64 %conv104, i1 false), !dbg !1634
  %ui16.0.ui16.0.ui16.0.ui16.0.214.us354.1 = load i16, ptr %ui16, align 2, !dbg !1635
  %conv105.us355.1 = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.214.us354.1 to i32, !dbg !1635
    #dbg_value(i32 %conv105.us355.1, !1636, !DIExpression(), !1640)
  %shl2.i.us.1 = shl i32 %conv105.us355.1, %sub1.i, !dbg !1654
  %conv107.us356.1 = trunc i32 %shl2.i.us.1 to i16, !dbg !1644
  %12 = load ptr, ptr %arrayidx109.us, align 8, !dbg !1645
  %arrayidx111.us358.1 = getelementptr inbounds i16, ptr %12, i64 %indvars.iv.next389, !dbg !1645
  store i16 %conv107.us356.1, ptr %arrayidx111.us358.1, align 2, !dbg !1646
  %indvars.iv.next389.1 = add nuw nsw i64 %indvars.iv388, 2, !dbg !1647
    #dbg_value(i64 %indvars.iv.next389.1, !1584, !DIExpression(), !1602)
  %niter426.next.1 = add i64 %niter426, 2, !dbg !1622
  %niter426.ncmp.1 = icmp eq i64 %niter426.next.1, %unroll_iter425, !dbg !1622
  br i1 %niter426.ncmp.1, label %for.cond96.for.inc115_crit_edge.split.us361.unr-lcssa, label %for.body99.us348, !dbg !1622, !llvm.loop !1649

for.cond96.for.inc115_crit_edge.split.us361.unr-lcssa: ; preds = %for.body99.us348, %for.body94.us
  %indvars.iv388.unr = phi i64 [ 0, %for.body94.us ], [ %indvars.iv.next389.1, %for.body99.us348 ]
  br i1 %lcmp.mod424.not, label %for.cond96.for.inc115_crit_edge.split.us361, label %for.body99.us348.epil, !dbg !1622

for.body99.us348.epil:                            ; preds = %for.cond96.for.inc115_crit_edge.split.us361.unr-lcssa
    #dbg_value(i64 %indvars.iv388.unr, !1584, !DIExpression(), !1602)
  store i16 0, ptr %ui16, align 2, !dbg !1624, !DIAssignID !1629
    #dbg_assign(i16 0, !1587, !DIExpression(), !1628, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1629, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1630, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1627, ptr %ui16, !DIExpression(), !1602)
  %13 = add nuw nsw i64 %indvars.iv388.unr, %6, !dbg !1631
  %14 = mul nsw i64 %13, %conv104, !dbg !1632
  %add.ptr103.us353.epil = getelementptr inbounds i8, ptr %buf, i64 %14, !dbg !1633
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr103.us353.epil, i64 %conv104, i1 false), !dbg !1634
  %ui16.0.ui16.0.ui16.0.ui16.0.214.us354.epil = load i16, ptr %ui16, align 2, !dbg !1635
  %conv105.us355.epil = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.214.us354.epil to i32, !dbg !1635
    #dbg_value(i32 %conv105.us355.epil, !1636, !DIExpression(), !1640)
    #dbg_value(i32 %bitshift, !1639, !DIExpression(), !1640)
  %shl2.i.us.epil = shl i32 %conv105.us355.epil, %sub1.i, !dbg !1654
  %conv107.us356.epil = trunc i32 %shl2.i.us.epil to i16, !dbg !1644
  %15 = load ptr, ptr %arrayidx109.us, align 8, !dbg !1645
  %arrayidx111.us358.epil = getelementptr inbounds i16, ptr %15, i64 %indvars.iv388.unr, !dbg !1645
  store i16 %conv107.us356.epil, ptr %arrayidx111.us358.epil, align 2, !dbg !1646
    #dbg_value(i64 %indvars.iv388.unr, !1584, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1602)
  br label %for.cond96.for.inc115_crit_edge.split.us361, !dbg !1651

for.cond96.for.inc115_crit_edge.split.us361:      ; preds = %for.cond96.for.inc115_crit_edge.split.us361.unr-lcssa, %for.body99.us348.epil
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1, !dbg !1651
    #dbg_value(i64 %indvars.iv.next394, !1585, !DIExpression(), !1602)
  %exitcond398.not = icmp eq i64 %indvars.iv.next394, %wide.trip.count410, !dbg !1614
  br i1 %exitcond398.not, label %if.end193, label %for.body94.us, !dbg !1618, !llvm.loop !1652

if.else118:                                       ; preds = %if.end
    #dbg_value(i32 %size_x, !1445, !DIExpression(), !1655)
    #dbg_value(i32 %o_size_x, !1451, !DIExpression(), !1655)
  %cond.i310 = tail call noundef i32 @llvm.smin.i32(i32 %size_x, i32 %o_size_x), !dbg !1657
    #dbg_value(i32 %cond.i310, !1593, !DIExpression(), !1658)
    #dbg_value(i32 %size_y, !1445, !DIExpression(), !1659)
    #dbg_value(i32 %o_size_y, !1451, !DIExpression(), !1659)
  %cond.i311 = tail call noundef i32 @llvm.smin.i32(i32 %size_y, i32 %o_size_y), !dbg !1661
    #dbg_value(i32 %cond.i311, !1596, !DIExpression(), !1658)
    #dbg_value(i32 0, !1597, !DIExpression(), !1658)
    #dbg_value(i32 0, !1598, !DIExpression(), !1658)
    #dbg_value(i32 0, !1599, !DIExpression(), !1658)
    #dbg_value(i32 0, !1600, !DIExpression(), !1658)
  %cmp121.not = icmp slt i32 %o_size_x, %size_x, !dbg !1662
  %sub124 = sub nsw i32 %o_size_x, %size_x, !dbg !1664
  %shr125 = ashr i32 %sub124, 1, !dbg !1664
  %dst_offset_x.0 = select i1 %cmp121.not, i32 0, i32 %shr125, !dbg !1664
    #dbg_value(i32 %dst_offset_x.0, !1597, !DIExpression(), !1658)
  %cmp127.not = icmp slt i32 %o_size_y, %size_y, !dbg !1665
  %sub130 = sub nsw i32 %o_size_y, %size_y, !dbg !1667
  %shr131 = ashr i32 %sub130, 1, !dbg !1667
  %dst_offset_y.0 = select i1 %cmp127.not, i32 0, i32 %shr131, !dbg !1667
    #dbg_value(i32 %dst_offset_y.0, !1598, !DIExpression(), !1658)
  %add145 = add i32 %dst_offset_x.0, %cond.i310, !dbg !1668
  %cmp146 = icmp sgt i32 %add145, %o_size_x, !dbg !1669
  %sub149 = sub i32 %o_size_x, %dst_offset_x.0, !dbg !1670
  %cond152 = select i1 %cmp146, i32 %sub149, i32 %cond.i310, !dbg !1670
    #dbg_value(i32 %cond152, !1593, !DIExpression(), !1658)
  %add153 = add nsw i32 %dst_offset_y.0, %cond.i311, !dbg !1671
  %cmp154 = icmp sgt i32 %add153, %o_size_y, !dbg !1672
  %sub157 = sub nsw i32 %o_size_y, %dst_offset_y.0, !dbg !1673
  %cond160 = select i1 %cmp154, i32 %sub157, i32 %cond.i311, !dbg !1673
    #dbg_value(i32 %cond160, !1596, !DIExpression(), !1658)
    #dbg_value(i32 0, !1585, !DIExpression(), !1602)
  %cmp162326 = icmp sgt i32 %cond160, 0, !dbg !1674
  br i1 %cmp162326, label %for.body164.lr.ph, label %if.end193, !dbg !1677

for.body164.lr.ph:                                ; preds = %if.else118
  %cmp169324 = icmp sgt i32 %cond152, 0
  %conv176 = sext i32 %symbol_size_in_bytes to i64
  %sub1.i314 = sub nsw i32 0, %bitshift
  %sub.i318 = add nsw i32 %bitshift, -1
  %shl.i319 = shl nuw i32 1, %sub.i318
  br i1 %cmp169324, label %for.body164.lr.ph.split.us, label %if.end193

for.body164.lr.ph.split.us:                       ; preds = %for.body164.lr.ph
  %cmp.i312 = icmp sgt i32 %bitshift, 0
  %16 = sext i32 %dst_offset_x.0 to i64, !dbg !1677
  %17 = zext nneg i32 %cond152 to i64, !dbg !1677
  %18 = sext i32 %size_x to i64, !dbg !1677
  br i1 %cmp.i312, label %for.body164.us.us.preheader, label %for.body164.us.preheader

for.body164.us.preheader:                         ; preds = %for.body164.lr.ph.split.us
  %19 = zext nneg i32 %cond160 to i64, !dbg !1677
  %20 = sext i32 %dst_offset_y.0 to i64, !dbg !1677
  %invariant.gep = getelementptr ptr, ptr %imgX, i64 %20, !dbg !1677
  %xtraiter = and i64 %17, 1
  %21 = icmp eq i32 %cond152, 1
  %unroll_iter = and i64 %17, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.body164.us, !dbg !1677

for.body164.us.us.preheader:                      ; preds = %for.body164.lr.ph.split.us
  %22 = sext i32 %dst_offset_y.0 to i64, !dbg !1677
  %23 = zext nneg i32 %cond160 to i64, !dbg !1677
  %invariant.gep415 = getelementptr ptr, ptr %imgX, i64 %22, !dbg !1677
  br label %for.body164.us.us, !dbg !1677

for.body164.us.us:                                ; preds = %for.body164.us.us.preheader, %for.cond168.for.inc189_crit_edge.split.us.us.us
  %indvars.iv383 = phi i64 [ 0, %for.body164.us.us.preheader ], [ %indvars.iv.next384, %for.cond168.for.inc189_crit_edge.split.us.us.us ]
    #dbg_value(i64 %indvars.iv383, !1585, !DIExpression(), !1602)
  %24 = mul nsw i64 %indvars.iv383, %18, !dbg !1678
    #dbg_value(i64 %24, !1590, !DIExpression(), !1621)
    #dbg_value(i32 0, !1584, !DIExpression(), !1602)
  %gep416 = getelementptr ptr, ptr %invariant.gep415, i64 %indvars.iv383
  br label %for.body171.us.us.us, !dbg !1680

for.body171.us.us.us:                             ; preds = %for.body171.us.us.us, %for.body164.us.us
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.body171.us.us.us ], [ 0, %for.body164.us.us ]
    #dbg_value(i64 %indvars.iv377, !1584, !DIExpression(), !1602)
  store i16 0, ptr %ui16, align 2, !dbg !1682, !DIAssignID !1685
    #dbg_assign(i16 0, !1587, !DIExpression(), !1686, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1687, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1688, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1685, ptr %ui16, !DIExpression(), !1602)
  %25 = add nsw i64 %indvars.iv377, %24, !dbg !1689
  %26 = mul nsw i64 %25, %conv176, !dbg !1690
  %add.ptr175.us.us.us = getelementptr inbounds i8, ptr %buf, i64 %26, !dbg !1691
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr175.us.us.us, i64 %conv176, i1 false), !dbg !1692
  %ui16.0.ui16.0.ui16.0.ui16.0.215.us.us.us = load i16, ptr %ui16, align 2, !dbg !1693
  %conv177.us.us.us = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.215.us.us.us to i32, !dbg !1693
    #dbg_value(i32 %conv177.us.us.us, !1636, !DIExpression(), !1694)
    #dbg_value(i32 %bitshift, !1639, !DIExpression(), !1694)
  %add.i320.us.us.us = add nuw nsw i32 %shl.i319, %conv177.us.us.us, !dbg !1696
  %shr.i321.us.us.us = ashr i32 %add.i320.us.us.us, %bitshift, !dbg !1697
  %conv179.us.us.us = trunc i32 %shr.i321.us.us.us to i16, !dbg !1698
  %27 = load ptr, ptr %gep416, align 8, !dbg !1699
  %28 = getelementptr i16, ptr %27, i64 %indvars.iv377, !dbg !1699
  %arrayidx185.us.us.us = getelementptr i16, ptr %28, i64 %16, !dbg !1699
  store i16 %conv179.us.us.us, ptr %arrayidx185.us.us.us, align 2, !dbg !1700
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1, !dbg !1701
    #dbg_value(i64 %indvars.iv.next378, !1584, !DIExpression(), !1602)
  %cmp169.us.us.us = icmp ult i64 %indvars.iv.next378, %17, !dbg !1702
  br i1 %cmp169.us.us.us, label %for.body171.us.us.us, label %for.cond168.for.inc189_crit_edge.split.us.us.us, !dbg !1680, !llvm.loop !1703

for.cond168.for.inc189_crit_edge.split.us.us.us:  ; preds = %for.body171.us.us.us
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1, !dbg !1705
    #dbg_value(i64 %indvars.iv.next384, !1585, !DIExpression(), !1602)
  %cmp162.us.us = icmp ult i64 %indvars.iv.next384, %23, !dbg !1674
  br i1 %cmp162.us.us, label %for.body164.us.us, label %if.end193, !dbg !1677, !llvm.loop !1706

for.body164.us:                                   ; preds = %for.body164.us.preheader, %for.cond168.for.inc189_crit_edge.split.us342
  %indvars.iv372 = phi i64 [ 0, %for.body164.us.preheader ], [ %indvars.iv.next373, %for.cond168.for.inc189_crit_edge.split.us342 ]
    #dbg_value(i64 %indvars.iv372, !1585, !DIExpression(), !1602)
  %29 = mul nsw i64 %indvars.iv372, %18, !dbg !1678
    #dbg_value(i64 %29, !1590, !DIExpression(), !1621)
    #dbg_value(i32 0, !1584, !DIExpression(), !1602)
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv372
  br i1 %21, label %for.cond168.for.inc189_crit_edge.split.us342.unr-lcssa, label %for.body171.us328, !dbg !1680

for.body171.us328:                                ; preds = %for.body164.us, %for.body171.us328
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body171.us328 ], [ 0, %for.body164.us ]
  %niter = phi i64 [ %niter.next.1, %for.body171.us328 ], [ 0, %for.body164.us ]
    #dbg_value(i64 %indvars.iv, !1584, !DIExpression(), !1602)
  store i16 0, ptr %ui16, align 2, !dbg !1682, !DIAssignID !1686
    #dbg_assign(i16 0, !1587, !DIExpression(), !1686, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1687, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1688, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1685, ptr %ui16, !DIExpression(), !1602)
  %30 = add nsw i64 %indvars.iv, %29, !dbg !1689
  %31 = mul nsw i64 %30, %conv176, !dbg !1690
  %add.ptr175.us333 = getelementptr inbounds i8, ptr %buf, i64 %31, !dbg !1691
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr175.us333, i64 %conv176, i1 false), !dbg !1692
  %ui16.0.ui16.0.ui16.0.ui16.0.215.us334 = load i16, ptr %ui16, align 2, !dbg !1693
  %conv177.us335 = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.215.us334 to i32, !dbg !1693
    #dbg_value(i32 %conv177.us335, !1636, !DIExpression(), !1694)
    #dbg_value(i32 %bitshift, !1639, !DIExpression(), !1694)
  %shl2.i315.us = shl i32 %conv177.us335, %sub1.i314, !dbg !1708
  %conv179.us336 = trunc i32 %shl2.i315.us to i16, !dbg !1698
  %32 = load ptr, ptr %gep, align 8, !dbg !1699
  %33 = getelementptr i16, ptr %32, i64 %indvars.iv, !dbg !1699
  %arrayidx185.us339 = getelementptr i16, ptr %33, i64 %16, !dbg !1699
  store i16 %conv179.us336, ptr %arrayidx185.us339, align 2, !dbg !1700
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !1701
    #dbg_value(i64 %indvars.iv.next, !1584, !DIExpression(), !1602)
  store i16 0, ptr %ui16, align 2, !dbg !1682, !DIAssignID !1688
    #dbg_assign(i16 0, !1587, !DIExpression(), !1686, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1687, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1688, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1685, ptr %ui16, !DIExpression(), !1602)
  %34 = add nsw i64 %indvars.iv.next, %29, !dbg !1689
  %35 = mul nsw i64 %34, %conv176, !dbg !1690
  %add.ptr175.us333.1 = getelementptr inbounds i8, ptr %buf, i64 %35, !dbg !1691
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr175.us333.1, i64 %conv176, i1 false), !dbg !1692
  %ui16.0.ui16.0.ui16.0.ui16.0.215.us334.1 = load i16, ptr %ui16, align 2, !dbg !1693
  %conv177.us335.1 = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.215.us334.1 to i32, !dbg !1693
    #dbg_value(i32 %conv177.us335.1, !1636, !DIExpression(), !1694)
  %shl2.i315.us.1 = shl i32 %conv177.us335.1, %sub1.i314, !dbg !1708
  %conv179.us336.1 = trunc i32 %shl2.i315.us.1 to i16, !dbg !1698
  %36 = load ptr, ptr %gep, align 8, !dbg !1699
  %37 = getelementptr i16, ptr %36, i64 %indvars.iv.next, !dbg !1699
  %arrayidx185.us339.1 = getelementptr i16, ptr %37, i64 %16, !dbg !1699
  store i16 %conv179.us336.1, ptr %arrayidx185.us339.1, align 2, !dbg !1700
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !1701
    #dbg_value(i64 %indvars.iv.next.1, !1584, !DIExpression(), !1602)
  %niter.next.1 = add i64 %niter, 2, !dbg !1680
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1680
  br i1 %niter.ncmp.1.not, label %for.cond168.for.inc189_crit_edge.split.us342.unr-lcssa, label %for.body171.us328, !dbg !1680, !llvm.loop !1703

for.cond168.for.inc189_crit_edge.split.us342.unr-lcssa: ; preds = %for.body171.us328, %for.body164.us
  %indvars.iv.unr = phi i64 [ 0, %for.body164.us ], [ %indvars.iv.next.1, %for.body171.us328 ]
  br i1 %lcmp.mod.not, label %for.cond168.for.inc189_crit_edge.split.us342, label %for.body171.us328.epil, !dbg !1680

for.body171.us328.epil:                           ; preds = %for.cond168.for.inc189_crit_edge.split.us342.unr-lcssa
    #dbg_value(i64 %indvars.iv.unr, !1584, !DIExpression(), !1602)
  store i16 0, ptr %ui16, align 2, !dbg !1682, !DIAssignID !1687
    #dbg_assign(i16 0, !1587, !DIExpression(), !1686, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1687, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1688, ptr %ui16, !DIExpression(), !1602)
    #dbg_assign(i16 0, !1587, !DIExpression(), !1685, ptr %ui16, !DIExpression(), !1602)
  %38 = add nsw i64 %indvars.iv.unr, %29, !dbg !1689
  %39 = mul nsw i64 %38, %conv176, !dbg !1690
  %add.ptr175.us333.epil = getelementptr inbounds i8, ptr %buf, i64 %39, !dbg !1691
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr175.us333.epil, i64 %conv176, i1 false), !dbg !1692
  %ui16.0.ui16.0.ui16.0.ui16.0.215.us334.epil = load i16, ptr %ui16, align 2, !dbg !1693
  %conv177.us335.epil = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.215.us334.epil to i32, !dbg !1693
    #dbg_value(i32 %conv177.us335.epil, !1636, !DIExpression(), !1694)
    #dbg_value(i32 %bitshift, !1639, !DIExpression(), !1694)
  %shl2.i315.us.epil = shl i32 %conv177.us335.epil, %sub1.i314, !dbg !1708
  %conv179.us336.epil = trunc i32 %shl2.i315.us.epil to i16, !dbg !1698
  %40 = load ptr, ptr %gep, align 8, !dbg !1699
  %41 = getelementptr i16, ptr %40, i64 %indvars.iv.unr, !dbg !1699
  %arrayidx185.us339.epil = getelementptr i16, ptr %41, i64 %16, !dbg !1699
  store i16 %conv179.us336.epil, ptr %arrayidx185.us339.epil, align 2, !dbg !1700
    #dbg_value(i64 %indvars.iv.unr, !1584, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1602)
  br label %for.cond168.for.inc189_crit_edge.split.us342, !dbg !1705

for.cond168.for.inc189_crit_edge.split.us342:     ; preds = %for.cond168.for.inc189_crit_edge.split.us342.unr-lcssa, %for.body171.us328.epil
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1, !dbg !1705
    #dbg_value(i64 %indvars.iv.next373, !1585, !DIExpression(), !1602)
  %cmp162.us = icmp ult i64 %indvars.iv.next373, %19, !dbg !1674
  br i1 %cmp162.us, label %for.body164.us, label %if.end193, !dbg !1677, !llvm.loop !1706

if.end193:                                        ; preds = %for.cond168.for.inc189_crit_edge.split.us342, %for.cond168.for.inc189_crit_edge.split.us.us.us, %for.cond96.for.inc115_crit_edge.split.us361, %for.cond96.for.inc115_crit_edge.split.us.us.us, %for.body164.lr.ph, %for.body94.lr.ph, %if.else118, %for.cond91.preheader
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ui16), !dbg !1709
  ret void, !dbg !1709
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @fillPlane(ptr nocapture noundef readonly %imgX, i32 noundef %nVal, i32 noundef %size_x, i32 noundef %size_y) local_unnamed_addr #4 !dbg !1710 {
entry:
    #dbg_value(ptr %imgX, !1714, !DIExpression(), !1720)
    #dbg_value(i32 %nVal, !1715, !DIExpression(), !1720)
    #dbg_value(i32 %size_x, !1716, !DIExpression(), !1720)
    #dbg_value(i32 %size_y, !1717, !DIExpression(), !1720)
    #dbg_value(i32 0, !1718, !DIExpression(), !1720)
  %cmp15 = icmp sgt i32 %size_y, 0, !dbg !1721
  br i1 %cmp15, label %for.cond1.preheader.lr.ph, label %for.end8, !dbg !1726

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp213 = icmp sgt i32 %size_x, 0
  %conv = trunc i32 %nVal to i16
  br i1 %cmp213, label %for.cond1.preheader.us.preheader, label %for.end8

for.cond1.preheader.us.preheader:                 ; preds = %for.cond1.preheader.lr.ph
  %wide.trip.count22 = zext nneg i32 %size_y to i64, !dbg !1721
  %wide.trip.count = zext nneg i32 %size_x to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %0 = icmp ult i32 %size_x, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond1.preheader.us, !dbg !1726

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.inc6_crit_edge.us
  %indvars.iv19 = phi i64 [ 0, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next20, %for.cond1.for.inc6_crit_edge.us ]
    #dbg_value(i64 %indvars.iv19, !1718, !DIExpression(), !1720)
    #dbg_value(i32 0, !1719, !DIExpression(), !1720)
  %arrayidx.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv19
  br i1 %0, label %for.cond1.for.inc6_crit_edge.us.unr-lcssa, label %for.body3.us, !dbg !1727

for.body3.us:                                     ; preds = %for.cond1.preheader.us, %for.body3.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body3.us ], [ 0, %for.cond1.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %for.body3.us ], [ 0, %for.cond1.preheader.us ]
    #dbg_value(i64 %indvars.iv, !1719, !DIExpression(), !1720)
  %1 = load ptr, ptr %arrayidx.us, align 8, !dbg !1730
  %arrayidx5.us = getelementptr inbounds i16, ptr %1, i64 %indvars.iv, !dbg !1730
  store i16 %conv, ptr %arrayidx5.us, align 2, !dbg !1733
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !1734
    #dbg_value(i64 %indvars.iv.next, !1719, !DIExpression(), !1720)
  %2 = load ptr, ptr %arrayidx.us, align 8, !dbg !1730
  %arrayidx5.us.1 = getelementptr inbounds i16, ptr %2, i64 %indvars.iv.next, !dbg !1730
  store i16 %conv, ptr %arrayidx5.us.1, align 2, !dbg !1733
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2, !dbg !1734
    #dbg_value(i64 %indvars.iv.next.1, !1719, !DIExpression(), !1720)
  %3 = load ptr, ptr %arrayidx.us, align 8, !dbg !1730
  %arrayidx5.us.2 = getelementptr inbounds i16, ptr %3, i64 %indvars.iv.next.1, !dbg !1730
  store i16 %conv, ptr %arrayidx5.us.2, align 2, !dbg !1733
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3, !dbg !1734
    #dbg_value(i64 %indvars.iv.next.2, !1719, !DIExpression(), !1720)
  %4 = load ptr, ptr %arrayidx.us, align 8, !dbg !1730
  %arrayidx5.us.3 = getelementptr inbounds i16, ptr %4, i64 %indvars.iv.next.2, !dbg !1730
  store i16 %conv, ptr %arrayidx5.us.3, align 2, !dbg !1733
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4, !dbg !1734
    #dbg_value(i64 %indvars.iv.next.3, !1719, !DIExpression(), !1720)
  %niter.next.3 = add i64 %niter, 4, !dbg !1727
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !1727
  br i1 %niter.ncmp.3, label %for.cond1.for.inc6_crit_edge.us.unr-lcssa, label %for.body3.us, !dbg !1727, !llvm.loop !1735

for.cond1.for.inc6_crit_edge.us.unr-lcssa:        ; preds = %for.body3.us, %for.cond1.preheader.us
  %indvars.iv.unr = phi i64 [ 0, %for.cond1.preheader.us ], [ %indvars.iv.next.3, %for.body3.us ]
  br i1 %lcmp.mod.not, label %for.cond1.for.inc6_crit_edge.us, label %for.body3.us.epil, !dbg !1727

for.body3.us.epil:                                ; preds = %for.cond1.for.inc6_crit_edge.us.unr-lcssa, %for.body3.us.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body3.us.epil ], [ %indvars.iv.unr, %for.cond1.for.inc6_crit_edge.us.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body3.us.epil ], [ 0, %for.cond1.for.inc6_crit_edge.us.unr-lcssa ]
    #dbg_value(i64 %indvars.iv.epil, !1719, !DIExpression(), !1720)
  %5 = load ptr, ptr %arrayidx.us, align 8, !dbg !1730
  %arrayidx5.us.epil = getelementptr inbounds i16, ptr %5, i64 %indvars.iv.epil, !dbg !1730
  store i16 %conv, ptr %arrayidx5.us.epil, align 2, !dbg !1733
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1, !dbg !1734
    #dbg_value(i64 %indvars.iv.next.epil, !1719, !DIExpression(), !1720)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !1727
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !1727
  br i1 %epil.iter.cmp.not, label %for.cond1.for.inc6_crit_edge.us, label %for.body3.us.epil, !dbg !1727, !llvm.loop !1737

for.cond1.for.inc6_crit_edge.us:                  ; preds = %for.body3.us.epil, %for.cond1.for.inc6_crit_edge.us.unr-lcssa
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !1738
    #dbg_value(i64 %indvars.iv.next20, !1718, !DIExpression(), !1720)
  %exitcond23.not = icmp eq i64 %indvars.iv.next20, %wide.trip.count22, !dbg !1721
  br i1 %exitcond23.not, label %for.end8, label %for.cond1.preheader.us, !dbg !1726, !llvm.loop !1739

for.end8:                                         ; preds = %for.cond1.for.inc6_crit_edge.us, %for.cond1.preheader.lr.ph, %entry
  ret void, !dbg !1741
}

declare !dbg !1742 void @error(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @AllocateFrameMemory(ptr nocapture noundef writeonly %p_Vid, ptr nocapture noundef readonly %p_Inp, ptr nocapture noundef readonly %source) local_unnamed_addr #2 !dbg !1746 {
entry:
    #dbg_value(ptr %p_Vid, !1750, !DIExpression(), !1753)
    #dbg_value(ptr %p_Inp, !1751, !DIExpression(), !1753)
    #dbg_value(ptr %source, !1752, !DIExpression(), !1753)
  %size = getelementptr inbounds i8, ptr %source, i64 84, !dbg !1754
  %0 = load i32, ptr %size, align 4, !dbg !1754
  %pic_unit_size_shift3 = getelementptr inbounds i8, ptr %source, i64 128, !dbg !1756
  %1 = load i32, ptr %pic_unit_size_shift3, align 8, !dbg !1756
  %mul = mul nsw i32 %1, %0, !dbg !1757
  %conv = sext i32 %mul to i64, !dbg !1758
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #13, !dbg !1759
  %buf = getelementptr inbounds i8, ptr %p_Vid, i64 849288, !dbg !1760
  store ptr %call, ptr %buf, align 8, !dbg !1761
  %cmp = icmp eq ptr %call, null, !dbg !1762
  br i1 %cmp, label %if.then, label %if.end, !dbg !1763

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #12, !dbg !1764
  br label %if.end, !dbg !1764

if.end:                                           ; preds = %if.then, %entry
  %is_interleaved = getelementptr inbounds i8, ptr %p_Inp, i64 1988, !dbg !1765
  %2 = load i32, ptr %is_interleaved, align 4, !dbg !1765
  %tobool.not = icmp eq i32 %2, 0, !dbg !1767
  br i1 %tobool.not, label %if.end12, label %if.then2, !dbg !1768

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %size, align 4, !dbg !1769
  %4 = load i32, ptr %pic_unit_size_shift3, align 8, !dbg !1772
  %mul5 = mul nsw i32 %4, %3, !dbg !1773
  %conv6 = sext i32 %mul5 to i64, !dbg !1774
  %call7 = tail call noalias ptr @malloc(i64 noundef %conv6) #13, !dbg !1775
  %ibuf = getelementptr inbounds i8, ptr %p_Vid, i64 849296, !dbg !1776
  store ptr %call7, ptr %ibuf, align 8, !dbg !1777
  %cmp8 = icmp eq ptr %call7, null, !dbg !1778
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !1779

if.then10:                                        ; preds = %if.then2
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #12, !dbg !1780
  br label %if.end12, !dbg !1780

if.end12:                                         ; preds = %if.then2, %if.then10, %if.end
  ret void, !dbg !1781
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1782 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare !dbg !1788 void @no_mem_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @DeleteFrameMemory(ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #8 !dbg !1792 {
entry:
    #dbg_value(ptr %p_Vid, !1796, !DIExpression(), !1797)
  %buf = getelementptr inbounds i8, ptr %p_Vid, i64 849288, !dbg !1798
  %0 = load ptr, ptr %buf, align 8, !dbg !1798
  %cmp.not = icmp eq ptr %0, null, !dbg !1800
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1801

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #12, !dbg !1802
  br label %if.end, !dbg !1802

if.end:                                           ; preds = %if.then, %entry
  %ibuf = getelementptr inbounds i8, ptr %p_Vid, i64 849296, !dbg !1803
  %1 = load ptr, ptr %ibuf, align 8, !dbg !1803
  %cmp2.not = icmp eq ptr %1, null, !dbg !1805
  br i1 %cmp2.not, label %if.end5, label %if.then3, !dbg !1806

if.then3:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %1) #12, !dbg !1807
  br label %if.end5, !dbg !1807

if.end5:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !1808
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1809 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @read_one_frame(ptr nocapture noundef %p_Vid, ptr noundef %input_file, i32 noundef %FrameNoInFile, i32 noundef %HeaderSize, ptr noundef %source, ptr nocapture noundef readonly %output, ptr nocapture noundef readonly %pImage) local_unnamed_addr #2 !dbg !1812 {
entry:
    #dbg_value(ptr %p_Vid, !1817, !DIExpression(), !1832)
    #dbg_value(ptr %input_file, !1818, !DIExpression(), !1832)
    #dbg_value(i32 %FrameNoInFile, !1819, !DIExpression(), !1832)
    #dbg_value(i32 %HeaderSize, !1820, !DIExpression(), !1832)
    #dbg_value(ptr %source, !1821, !DIExpression(), !1832)
    #dbg_value(ptr %output, !1822, !DIExpression(), !1832)
    #dbg_value(ptr %pImage, !1823, !DIExpression(), !1832)
  %0 = load ptr, ptr %p_Vid, align 8, !dbg !1833
    #dbg_value(ptr %0, !1824, !DIExpression(), !1832)
    #dbg_value(i32 0, !1825, !DIExpression(), !1832)
  %pic_unit_size_shift3 = getelementptr inbounds i8, ptr %source, i64 128, !dbg !1834
  %1 = load i32, ptr %pic_unit_size_shift3, align 8, !dbg !1834
    #dbg_value(i32 %1, !1826, !DIExpression(), !1832)
  %size_cmp = getelementptr inbounds i8, ptr %source, i64 72, !dbg !1835
  %2 = load i32, ptr %size_cmp, align 8, !dbg !1836
  %mul = mul i32 %2, %1, !dbg !1837
    #dbg_value(i32 %mul, !1827, !DIExpression(), !1832)
  %arrayidx3 = getelementptr inbounds i8, ptr %source, i64 76, !dbg !1838
  %3 = load i32, ptr %arrayidx3, align 4, !dbg !1838
  %mul4 = mul i32 %3, %1, !dbg !1839
    #dbg_value(i32 %mul4, !1829, !DIExpression(), !1832)
  %color_model = getelementptr inbounds i8, ptr %source, i64 4, !dbg !1840
  %4 = load i32, ptr %color_model, align 4, !dbg !1840
  %cmp = icmp eq i32 %4, 1, !dbg !1841
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1842

land.rhs:                                         ; preds = %entry
  %5 = load i32, ptr %source, align 8, !dbg !1843
  %cmp5 = icmp eq i32 %5, 3, !dbg !1844
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ], !dbg !1832
    #dbg_value(i1 %6, !1831, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1832)
  %is_concatenated = getelementptr inbounds i8, ptr %input_file, i64 912, !dbg !1845
  %7 = load i32, ptr %is_concatenated, align 8, !dbg !1845
  %cmp6 = icmp eq i32 %7, 0, !dbg !1847
  br i1 %cmp6, label %if.then, label %if.else11, !dbg !1848

if.then:                                          ; preds = %land.end
  %vdtype = getelementptr inbounds i8, ptr %input_file, i64 772, !dbg !1849
  %8 = load i32, ptr %vdtype, align 4, !dbg !1849
  %cmp7 = icmp eq i32 %8, 3, !dbg !1852
  %buf = getelementptr inbounds i8, ptr %p_Vid, i64 849288, !dbg !1853
  %9 = load ptr, ptr %buf, align 8, !dbg !1853
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1854

if.then8:                                         ; preds = %if.then
  %call = tail call i32 @ReadTIFFImage(ptr noundef %0, ptr noundef nonnull %input_file, i32 noundef %FrameNoInFile, ptr noundef nonnull %source, ptr noundef %9) #12, !dbg !1855
    #dbg_value(i32 %call, !1825, !DIExpression(), !1832)
  br label %if.end14, !dbg !1857

if.else:                                          ; preds = %if.then
  %call10 = tail call i32 @ReadFrameSeparate(ptr noundef %0, ptr noundef nonnull %input_file, i32 noundef %FrameNoInFile, i32 noundef %HeaderSize, ptr noundef nonnull %source, ptr noundef %9) #12, !dbg !1858
    #dbg_value(i32 %call10, !1825, !DIExpression(), !1832)
  br label %if.end14

if.else11:                                        ; preds = %land.end
  %buf12 = getelementptr inbounds i8, ptr %p_Vid, i64 849288, !dbg !1860
  %10 = load ptr, ptr %buf12, align 8, !dbg !1860
  %call13 = tail call i32 @ReadFrameConcatenated(ptr noundef %0, ptr noundef nonnull %input_file, i32 noundef %FrameNoInFile, i32 noundef %HeaderSize, ptr noundef nonnull %source, ptr noundef %10) #12, !dbg !1862
    #dbg_value(i32 %call13, !1825, !DIExpression(), !1832)
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.else, %if.else11
  %file_read.0 = phi i32 [ %call, %if.then8 ], [ %call10, %if.else ], [ %call13, %if.else11 ], !dbg !1863
    #dbg_value(i32 %file_read.0, !1825, !DIExpression(), !1832)
  %tobool.not = icmp eq i32 %file_read.0, 0, !dbg !1864
  br i1 %tobool.not, label %cleanup, label %if.end16, !dbg !1866

if.end16:                                         ; preds = %if.end14
  %is_interleaved = getelementptr inbounds i8, ptr %input_file, i64 916, !dbg !1867
  %11 = load i32, ptr %is_interleaved, align 4, !dbg !1867
  %tobool17.not = icmp eq i32 %11, 0, !dbg !1869
  br i1 %tobool17.not, label %if.end20, label %if.then18, !dbg !1870

if.then18:                                        ; preds = %if.end16
  %buf19 = getelementptr inbounds i8, ptr %p_Vid, i64 849288, !dbg !1871
  %ibuf = getelementptr inbounds i8, ptr %p_Vid, i64 849296, !dbg !1873
    #dbg_value(ptr %buf19, !1874, !DIExpression(), !1888)
    #dbg_value(ptr %ibuf, !1880, !DIExpression(), !1888)
    #dbg_value(ptr %source, !1881, !DIExpression(), !1888)
    #dbg_value(i32 %1, !1882, !DIExpression(), !1888)
  %12 = load ptr, ptr %buf19, align 8, !dbg !1890
    #dbg_value(ptr %12, !1883, !DIExpression(), !1888)
  %13 = load ptr, ptr %ibuf, align 8, !dbg !1891
    #dbg_value(ptr %13, !1884, !DIExpression(), !1888)
  %14 = load i32, ptr %size_cmp, align 8, !dbg !1892
  %mul.i = mul nsw i32 %14, %1, !dbg !1893
  %idx.ext.i = sext i32 %mul.i to i64, !dbg !1894
  %add.ptr.i = getelementptr inbounds i8, ptr %13, i64 %idx.ext.i, !dbg !1894
    #dbg_value(ptr %add.ptr.i, !1885, !DIExpression(), !1888)
  %15 = load i32, ptr %arrayidx3, align 4, !dbg !1895
  %mul3.i = mul nsw i32 %15, %1, !dbg !1896
  %idx.ext4.i = sext i32 %mul3.i to i64, !dbg !1897
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext4.i, !dbg !1897
    #dbg_value(ptr %add.ptr5.i, !1886, !DIExpression(), !1888)
  %16 = load i32, ptr %source, align 8, !dbg !1898
  %cmp.i = icmp eq i32 %16, 1, !dbg !1900
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.end.i, !dbg !1901

for.cond.preheader.i:                             ; preds = %if.then18
    #dbg_value(i32 0, !1887, !DIExpression(), !1888)
    #dbg_value(ptr %add.ptr5.i, !1886, !DIExpression(), !1888)
    #dbg_value(ptr %add.ptr.i, !1885, !DIExpression(), !1888)
    #dbg_value(ptr %13, !1884, !DIExpression(), !1888)
    #dbg_value(ptr %12, !1883, !DIExpression(), !1888)
  %cmp8200.i = icmp sgt i32 %15, 0, !dbg !1902
  br i1 %cmp8200.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !1906

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %conv.i = sext i32 %1 to i64
  %mul13.i = shl nsw i32 %1, 1
  %conv14.i = sext i32 %mul13.i to i64
  br label %for.body.i, !dbg !1906

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %i.0205.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %ocmp2.0204.i = phi ptr [ %add.ptr5.i, %for.body.lr.ph.i ], [ %add.ptr23.i, %for.body.i ]
  %ocmp1.0203.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr10.i, %for.body.i ]
  %ocmp0.0202.i = phi ptr [ %13, %for.body.lr.ph.i ], [ %add.ptr30.i, %for.body.i ]
  %icmp0.0201.i = phi ptr [ %12, %for.body.lr.ph.i ], [ %add.ptr33.i, %for.body.i ]
    #dbg_value(i32 %i.0205.i, !1887, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp2.0204.i, !1886, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp1.0203.i, !1885, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp0.0202.i, !1884, !DIExpression(), !1888)
    #dbg_value(ptr %icmp0.0201.i, !1883, !DIExpression(), !1888)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp1.0203.i, ptr align 1 %icmp0.0201.i, i64 %conv.i, i1 false), !dbg !1907
  %add.ptr10.i = getelementptr inbounds i8, ptr %ocmp1.0203.i, i64 %conv.i, !dbg !1909
    #dbg_value(ptr %add.ptr10.i, !1885, !DIExpression(), !1888)
  %add.ptr12.i = getelementptr inbounds i8, ptr %icmp0.0201.i, i64 %conv.i, !dbg !1910
    #dbg_value(ptr %add.ptr12.i, !1883, !DIExpression(), !1888)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp0.0202.i, ptr align 1 %add.ptr12.i, i64 %conv14.i, i1 false), !dbg !1911
  %add.ptr17.i = getelementptr inbounds i8, ptr %ocmp0.0202.i, i64 %conv14.i, !dbg !1912
    #dbg_value(ptr %add.ptr17.i, !1884, !DIExpression(), !1888)
  %add.ptr20.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %conv14.i, !dbg !1913
    #dbg_value(ptr %add.ptr20.i, !1883, !DIExpression(), !1888)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp2.0204.i, ptr align 1 %add.ptr20.i, i64 %conv.i, i1 false), !dbg !1914
  %add.ptr23.i = getelementptr inbounds i8, ptr %ocmp2.0204.i, i64 %conv.i, !dbg !1915
    #dbg_value(ptr %add.ptr23.i, !1886, !DIExpression(), !1888)
  %add.ptr25.i = getelementptr inbounds i8, ptr %add.ptr20.i, i64 %conv.i, !dbg !1916
    #dbg_value(ptr %add.ptr25.i, !1883, !DIExpression(), !1888)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr17.i, ptr align 1 %add.ptr25.i, i64 %conv14.i, i1 false), !dbg !1917
  %add.ptr30.i = getelementptr inbounds i8, ptr %add.ptr17.i, i64 %conv14.i, !dbg !1918
    #dbg_value(ptr %add.ptr30.i, !1884, !DIExpression(), !1888)
  %add.ptr33.i = getelementptr inbounds i8, ptr %add.ptr25.i, i64 %conv14.i, !dbg !1919
    #dbg_value(ptr %add.ptr33.i, !1883, !DIExpression(), !1888)
  %inc.i = add nuw nsw i32 %i.0205.i, 1, !dbg !1920
    #dbg_value(i32 %inc.i, !1887, !DIExpression(), !1888)
  %17 = load i32, ptr %arrayidx3, align 4, !dbg !1921
  %cmp8.i = icmp slt i32 %inc.i, %17, !dbg !1902
  br i1 %cmp8.i, label %for.body.i, label %for.end.loopexit.i, !dbg !1906, !llvm.loop !1922

for.end.loopexit.i:                               ; preds = %for.body.i
  %.pre.i = load ptr, ptr %buf19, align 8, !dbg !1924
  %.pre220.i = load ptr, ptr %ibuf, align 8, !dbg !1925
  br label %for.end.i, !dbg !1924

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.cond.preheader.i
  %18 = phi ptr [ %13, %for.cond.preheader.i ], [ %.pre220.i, %for.end.loopexit.i ], !dbg !1925
  %19 = phi ptr [ %12, %for.cond.preheader.i ], [ %.pre.i, %for.end.loopexit.i ], !dbg !1924
  %ocmp0.0.lcssa.i = phi ptr [ %13, %for.cond.preheader.i ], [ %add.ptr30.i, %for.end.loopexit.i ], !dbg !1888
  %ocmp1.0.lcssa.i = phi ptr [ %add.ptr.i, %for.cond.preheader.i ], [ %add.ptr10.i, %for.end.loopexit.i ], !dbg !1888
  %ocmp2.0.lcssa.i = phi ptr [ %add.ptr5.i, %for.cond.preheader.i ], [ %add.ptr23.i, %for.end.loopexit.i ], !dbg !1888
    #dbg_value(ptr %19, !1883, !DIExpression(), !1888)
  store ptr %18, ptr %buf19, align 8, !dbg !1926
  store ptr %19, ptr %ibuf, align 8, !dbg !1927
  %.pr.i = load i32, ptr %source, align 8, !dbg !1928
  br label %if.end.i, !dbg !1930

if.end.i:                                         ; preds = %for.end.i, %if.then18
  %20 = phi ptr [ %18, %for.end.i ], [ %12, %if.then18 ]
  %21 = phi ptr [ %19, %for.end.i ], [ %13, %if.then18 ]
  %22 = phi i32 [ %.pr.i, %for.end.i ], [ %16, %if.then18 ], !dbg !1928
  %icmp0.1.i = phi ptr [ %19, %for.end.i ], [ %12, %if.then18 ], !dbg !1888
  %ocmp0.1.i = phi ptr [ %ocmp0.0.lcssa.i, %for.end.i ], [ %13, %if.then18 ], !dbg !1931
  %ocmp1.1.i = phi ptr [ %ocmp1.0.lcssa.i, %for.end.i ], [ %add.ptr.i, %if.then18 ], !dbg !1932
  %ocmp2.1.i = phi ptr [ %ocmp2.0.lcssa.i, %for.end.i ], [ %add.ptr5.i, %if.then18 ], !dbg !1933
    #dbg_value(ptr %ocmp2.1.i, !1886, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp1.1.i, !1885, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp0.1.i, !1884, !DIExpression(), !1888)
    #dbg_value(ptr %icmp0.1.i, !1883, !DIExpression(), !1888)
  switch i32 %22, label %if.end20 [
    i32 2, label %for.cond38.preheader.i
    i32 3, label %for.cond71.preheader.i
  ], !dbg !1934

for.cond71.preheader.i:                           ; preds = %if.end.i
    #dbg_value(i32 0, !1887, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp2.1.i, !1886, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp1.1.i, !1885, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp0.1.i, !1884, !DIExpression(), !1888)
    #dbg_value(ptr %icmp0.1.i, !1883, !DIExpression(), !1888)
  %23 = load i32, ptr %size_cmp, align 8, !dbg !1935
  %cmp74208.i = icmp sgt i32 %23, 0, !dbg !1940
  br i1 %cmp74208.i, label %for.body76.lr.ph.i, label %if.end96.sink.split.i, !dbg !1941

for.body76.lr.ph.i:                               ; preds = %for.cond71.preheader.i
  %conv77.i = sext i32 %1 to i64
  br label %for.body76.i, !dbg !1941

for.cond38.preheader.i:                           ; preds = %if.end.i
    #dbg_value(i32 0, !1887, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp2.1.i, !1886, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp1.1.i, !1885, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp0.1.i, !1884, !DIExpression(), !1888)
    #dbg_value(ptr %icmp0.1.i, !1883, !DIExpression(), !1888)
  %24 = load i32, ptr %arrayidx3, align 4, !dbg !1942
  %cmp41214.i = icmp sgt i32 %24, 0, !dbg !1946
  br i1 %cmp41214.i, label %for.body43.lr.ph.i, label %if.end96.sink.split.i, !dbg !1947

for.body43.lr.ph.i:                               ; preds = %for.cond38.preheader.i
  %conv44.i = sext i32 %1 to i64
  br label %for.body43.i, !dbg !1947

for.body43.i:                                     ; preds = %for.body43.i, %for.body43.lr.ph.i
  %i.1219.i = phi i32 [ 0, %for.body43.lr.ph.i ], [ %inc65.i, %for.body43.i ]
  %ocmp2.2218.i = phi ptr [ %ocmp2.1.i, %for.body43.lr.ph.i ], [ %add.ptr61.i, %for.body43.i ]
  %ocmp1.2217.i = phi ptr [ %ocmp1.1.i, %for.body43.lr.ph.i ], [ %add.ptr51.i, %for.body43.i ]
  %ocmp0.2216.i = phi ptr [ %ocmp0.1.i, %for.body43.lr.ph.i ], [ %add.ptr56.i, %for.body43.i ]
  %icmp0.2215.i = phi ptr [ %icmp0.1.i, %for.body43.lr.ph.i ], [ %add.ptr63.i, %for.body43.i ]
    #dbg_value(i32 %i.1219.i, !1887, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp2.2218.i, !1886, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp1.2217.i, !1885, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp0.2216.i, !1884, !DIExpression(), !1888)
    #dbg_value(ptr %icmp0.2215.i, !1883, !DIExpression(), !1888)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp0.2216.i, ptr align 1 %icmp0.2215.i, i64 %conv44.i, i1 false), !dbg !1948
  %add.ptr46.i = getelementptr inbounds i8, ptr %ocmp0.2216.i, i64 %conv44.i, !dbg !1950
    #dbg_value(ptr %add.ptr46.i, !1884, !DIExpression(), !1888)
  %add.ptr48.i = getelementptr inbounds i8, ptr %icmp0.2215.i, i64 %conv44.i, !dbg !1951
    #dbg_value(ptr %add.ptr48.i, !1883, !DIExpression(), !1888)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp1.2217.i, ptr align 1 %add.ptr48.i, i64 %conv44.i, i1 false), !dbg !1952
  %add.ptr51.i = getelementptr inbounds i8, ptr %ocmp1.2217.i, i64 %conv44.i, !dbg !1953
    #dbg_value(ptr %add.ptr51.i, !1885, !DIExpression(), !1888)
  %add.ptr53.i = getelementptr inbounds i8, ptr %add.ptr48.i, i64 %conv44.i, !dbg !1954
    #dbg_value(ptr %add.ptr53.i, !1883, !DIExpression(), !1888)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr46.i, ptr align 1 %add.ptr53.i, i64 %conv44.i, i1 false), !dbg !1955
  %add.ptr56.i = getelementptr inbounds i8, ptr %add.ptr46.i, i64 %conv44.i, !dbg !1956
    #dbg_value(ptr %add.ptr56.i, !1884, !DIExpression(), !1888)
  %add.ptr58.i = getelementptr inbounds i8, ptr %add.ptr53.i, i64 %conv44.i, !dbg !1957
    #dbg_value(ptr %add.ptr58.i, !1883, !DIExpression(), !1888)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp2.2218.i, ptr align 1 %add.ptr58.i, i64 %conv44.i, i1 false), !dbg !1958
  %add.ptr61.i = getelementptr inbounds i8, ptr %ocmp2.2218.i, i64 %conv44.i, !dbg !1959
    #dbg_value(ptr %add.ptr61.i, !1886, !DIExpression(), !1888)
  %add.ptr63.i = getelementptr inbounds i8, ptr %add.ptr58.i, i64 %conv44.i, !dbg !1960
    #dbg_value(ptr %add.ptr63.i, !1883, !DIExpression(), !1888)
  %inc65.i = add nuw nsw i32 %i.1219.i, 1, !dbg !1961
    #dbg_value(i32 %inc65.i, !1887, !DIExpression(), !1888)
  %25 = load i32, ptr %arrayidx3, align 4, !dbg !1942
  %cmp41.i = icmp slt i32 %inc65.i, %25, !dbg !1946
  br i1 %cmp41.i, label %for.body43.i, label %if.end96.sink.split.sink.split.i, !dbg !1947, !llvm.loop !1962

for.body76.i:                                     ; preds = %for.body76.i, %for.body76.lr.ph.i
  %i.2213.i = phi i32 [ 0, %for.body76.lr.ph.i ], [ %inc93.i, %for.body76.i ]
  %ocmp2.3212.i = phi ptr [ %ocmp2.1.i, %for.body76.lr.ph.i ], [ %add.ptr89.i, %for.body76.i ]
  %ocmp1.3211.i = phi ptr [ %ocmp1.1.i, %for.body76.lr.ph.i ], [ %add.ptr84.i, %for.body76.i ]
  %ocmp0.3210.i = phi ptr [ %ocmp0.1.i, %for.body76.lr.ph.i ], [ %add.ptr79.i, %for.body76.i ]
  %icmp0.3209.i = phi ptr [ %icmp0.1.i, %for.body76.lr.ph.i ], [ %add.ptr91.i, %for.body76.i ]
    #dbg_value(i32 %i.2213.i, !1887, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp2.3212.i, !1886, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp1.3211.i, !1885, !DIExpression(), !1888)
    #dbg_value(ptr %ocmp0.3210.i, !1884, !DIExpression(), !1888)
    #dbg_value(ptr %icmp0.3209.i, !1883, !DIExpression(), !1888)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp0.3210.i, ptr align 1 %icmp0.3209.i, i64 %conv77.i, i1 false), !dbg !1964
  %add.ptr79.i = getelementptr inbounds i8, ptr %ocmp0.3210.i, i64 %conv77.i, !dbg !1966
    #dbg_value(ptr %add.ptr79.i, !1884, !DIExpression(), !1888)
  %add.ptr81.i = getelementptr inbounds i8, ptr %icmp0.3209.i, i64 %conv77.i, !dbg !1967
    #dbg_value(ptr %add.ptr81.i, !1883, !DIExpression(), !1888)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp1.3211.i, ptr align 1 %add.ptr81.i, i64 %conv77.i, i1 false), !dbg !1968
  %add.ptr84.i = getelementptr inbounds i8, ptr %ocmp1.3211.i, i64 %conv77.i, !dbg !1969
    #dbg_value(ptr %add.ptr84.i, !1885, !DIExpression(), !1888)
  %add.ptr86.i = getelementptr inbounds i8, ptr %add.ptr81.i, i64 %conv77.i, !dbg !1970
    #dbg_value(ptr %add.ptr86.i, !1883, !DIExpression(), !1888)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp2.3212.i, ptr align 1 %add.ptr86.i, i64 %conv77.i, i1 false), !dbg !1971
  %add.ptr89.i = getelementptr inbounds i8, ptr %ocmp2.3212.i, i64 %conv77.i, !dbg !1972
    #dbg_value(ptr %add.ptr89.i, !1886, !DIExpression(), !1888)
  %add.ptr91.i = getelementptr inbounds i8, ptr %add.ptr86.i, i64 %conv77.i, !dbg !1973
    #dbg_value(ptr %add.ptr91.i, !1883, !DIExpression(), !1888)
  %inc93.i = add nuw nsw i32 %i.2213.i, 1, !dbg !1974
    #dbg_value(i32 %inc93.i, !1887, !DIExpression(), !1888)
  %26 = load i32, ptr %size_cmp, align 8, !dbg !1935
  %cmp74.i = icmp slt i32 %inc93.i, %26, !dbg !1940
  br i1 %cmp74.i, label %for.body76.i, label %if.end96.sink.split.sink.split.i, !dbg !1941, !llvm.loop !1975

if.end96.sink.split.sink.split.i:                 ; preds = %for.body76.i, %for.body43.i
  %.pre221.i = load ptr, ptr %ibuf, align 8, !dbg !1977
  %.pre = load ptr, ptr %buf19, align 8, !dbg !1977
  br label %if.end96.sink.split.i, !dbg !1977

if.end96.sink.split.i:                            ; preds = %if.end96.sink.split.sink.split.i, %for.cond38.preheader.i, %for.cond71.preheader.i
  %27 = phi ptr [ %20, %for.cond38.preheader.i ], [ %20, %for.cond71.preheader.i ], [ %.pre, %if.end96.sink.split.sink.split.i ], !dbg !1977
  %.sink223.i = phi ptr [ %21, %for.cond38.preheader.i ], [ %21, %for.cond71.preheader.i ], [ %.pre221.i, %if.end96.sink.split.sink.split.i ]
  store ptr %.sink223.i, ptr %buf19, align 8, !dbg !1977
  store ptr %27, ptr %ibuf, align 8, !dbg !1977
  br label %if.end20, !dbg !1978

if.end20:                                         ; preds = %if.end96.sink.split.i, %if.end.i, %if.end16
  %bit_depth = getelementptr inbounds i8, ptr %source, i64 88, !dbg !1979
  %28 = load i32, ptr %bit_depth, align 8, !dbg !1980
  %bit_depth22 = getelementptr inbounds i8, ptr %output, i64 88, !dbg !1981
  %29 = load i32, ptr %bit_depth22, align 8, !dbg !1982
  %sub = sub nsw i32 %28, %29, !dbg !1983
    #dbg_value(i32 %sub, !1830, !DIExpression(), !1832)
  %buf2img = getelementptr inbounds i8, ptr %p_Vid, i64 856736, !dbg !1984
  %30 = load ptr, ptr %buf2img, align 8, !dbg !1984
  %31 = load ptr, ptr %pImage, align 8, !dbg !1984
  %buf27 = getelementptr inbounds i8, ptr %p_Vid, i64 849288, !dbg !1984
  %32 = load ptr, ptr %buf27, align 8, !dbg !1984
  br i1 %6, label %if.end46, label %if.end46.thread, !dbg !1986

if.end46:                                         ; preds = %if.end20
  %idx.ext = sext i32 %mul to i64, !dbg !1987
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 %idx.ext, !dbg !1987
  %width = getelementptr inbounds i8, ptr %source, i64 16, !dbg !1988
  %33 = load i32, ptr %width, align 8, !dbg !1989
  %height = getelementptr inbounds i8, ptr %source, i64 28, !dbg !1990
  %34 = load i32, ptr %height, align 4, !dbg !1991
  %width30 = getelementptr inbounds i8, ptr %output, i64 16, !dbg !1992
  %35 = load i32, ptr %width30, align 8, !dbg !1993
  %height32 = getelementptr inbounds i8, ptr %output, i64 28, !dbg !1994
  %36 = load i32, ptr %height32, align 4, !dbg !1995
  tail call void %30(ptr noundef %31, ptr noundef %add.ptr, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %1, i32 noundef %sub) #12, !dbg !1996
  %yuv_format47 = getelementptr inbounds i8, ptr %p_Vid, i64 849088, !dbg !1997
  %37 = load i32, ptr %yuv_format47, align 8, !dbg !1997
  %cmp48.not = icmp eq i32 %37, 0, !dbg !1999
  br i1 %cmp48.not, label %cleanup, label %if.then93, !dbg !2000

if.end46.thread:                                  ; preds = %if.end20
  %width38 = getelementptr inbounds i8, ptr %source, i64 16, !dbg !2001
  %38 = load i32, ptr %width38, align 8, !dbg !2002
  %height40 = getelementptr inbounds i8, ptr %source, i64 28, !dbg !2003
  %39 = load i32, ptr %height40, align 4, !dbg !2004
  %width42 = getelementptr inbounds i8, ptr %output, i64 16, !dbg !2005
  %40 = load i32, ptr %width42, align 8, !dbg !2006
  %height44 = getelementptr inbounds i8, ptr %output, i64 28, !dbg !2007
  %41 = load i32, ptr %height44, align 4, !dbg !2008
  tail call void %30(ptr noundef %31, ptr noundef %32, i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %1, i32 noundef %sub) #12, !dbg !2009
  %yuv_format47219 = getelementptr inbounds i8, ptr %p_Vid, i64 849088, !dbg !1997
  %42 = load i32, ptr %yuv_format47219, align 8, !dbg !1997
  %cmp48.not220 = icmp eq i32 %42, 0, !dbg !1999
  br i1 %cmp48.not220, label %cleanup, label %if.else105, !dbg !2000

if.then93:                                        ; preds = %if.end46
  %arrayidx51 = getelementptr inbounds i8, ptr %source, i64 92, !dbg !2010
  %43 = load i32, ptr %arrayidx51, align 4, !dbg !2010
  %arrayidx53 = getelementptr inbounds i8, ptr %output, i64 92, !dbg !2012
  %44 = load i32, ptr %arrayidx53, align 4, !dbg !2012
  %sub54 = sub nsw i32 %43, %44, !dbg !2013
    #dbg_value(i32 %sub54, !1830, !DIExpression(), !1832)
  %45 = load ptr, ptr %buf2img, align 8, !dbg !2014
  %arrayidx58 = getelementptr inbounds i8, ptr %pImage, i64 8, !dbg !2017
  %46 = load ptr, ptr %arrayidx58, align 8, !dbg !2017
  %47 = load ptr, ptr %buf27, align 8, !dbg !2018
  %add.ptr61 = getelementptr inbounds i8, ptr %47, i64 %idx.ext, !dbg !2019
  %idx.ext62 = sext i32 %mul4 to i64, !dbg !2020
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr61, i64 %idx.ext62, !dbg !2020
  %arrayidx65 = getelementptr inbounds i8, ptr %source, i64 20, !dbg !2021
  %48 = load i32, ptr %arrayidx65, align 4, !dbg !2021
  %arrayidx67 = getelementptr inbounds i8, ptr %source, i64 32, !dbg !2022
  %49 = load i32, ptr %arrayidx67, align 4, !dbg !2022
  %arrayidx69 = getelementptr inbounds i8, ptr %output, i64 20, !dbg !2023
  %50 = load i32, ptr %arrayidx69, align 4, !dbg !2023
  %arrayidx71 = getelementptr inbounds i8, ptr %output, i64 32, !dbg !2024
  %51 = load i32, ptr %arrayidx71, align 4, !dbg !2024
  tail call void %45(ptr noundef %46, ptr noundef %add.ptr63, i32 noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %1, i32 noundef %sub54) #12, !dbg !2025
  %arrayidx88225 = getelementptr inbounds i8, ptr %source, i64 96, !dbg !2026
  %52 = load i32, ptr %arrayidx88225, align 8, !dbg !2026
  %arrayidx90226 = getelementptr inbounds i8, ptr %output, i64 96, !dbg !2027
  %53 = load i32, ptr %arrayidx90226, align 8, !dbg !2027
  %sub91227 = sub nsw i32 %52, %53, !dbg !2028
    #dbg_value(i32 %sub91227, !1830, !DIExpression(), !1832)
  %54 = load ptr, ptr %buf2img, align 8, !dbg !2029
  %arrayidx95 = getelementptr inbounds i8, ptr %pImage, i64 16, !dbg !2031
  %55 = load ptr, ptr %arrayidx95, align 8, !dbg !2031
  %56 = load ptr, ptr %buf27, align 8, !dbg !2032
  %57 = load i32, ptr %arrayidx65, align 4, !dbg !2033
  %58 = load i32, ptr %arrayidx67, align 4, !dbg !2034
  %59 = load i32, ptr %arrayidx69, align 4, !dbg !2035
  %60 = load i32, ptr %arrayidx71, align 4, !dbg !2036
  tail call void %54(ptr noundef %55, ptr noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60, i32 noundef %1, i32 noundef %sub91227) #12, !dbg !2037
  br label %cleanup, !dbg !2037

if.else105:                                       ; preds = %if.end46.thread
  %arrayidx51221 = getelementptr inbounds i8, ptr %source, i64 92, !dbg !2010
  %61 = load i32, ptr %arrayidx51221, align 4, !dbg !2010
  %arrayidx53222 = getelementptr inbounds i8, ptr %output, i64 92, !dbg !2012
  %62 = load i32, ptr %arrayidx53222, align 4, !dbg !2012
  %sub54223 = sub nsw i32 %61, %62, !dbg !2013
    #dbg_value(i32 %sub54223, !1830, !DIExpression(), !1832)
  %63 = load ptr, ptr %buf2img, align 8, !dbg !2038
  %arrayidx74 = getelementptr inbounds i8, ptr %pImage, i64 8, !dbg !2039
  %64 = load ptr, ptr %arrayidx74, align 8, !dbg !2039
  %65 = load ptr, ptr %buf27, align 8, !dbg !2040
  %idx.ext76 = sext i32 %mul to i64, !dbg !2041
  %add.ptr77 = getelementptr inbounds i8, ptr %65, i64 %idx.ext76, !dbg !2041
  %arrayidx79 = getelementptr inbounds i8, ptr %source, i64 20, !dbg !2042
  %66 = load i32, ptr %arrayidx79, align 4, !dbg !2042
  %arrayidx81 = getelementptr inbounds i8, ptr %source, i64 32, !dbg !2043
  %67 = load i32, ptr %arrayidx81, align 4, !dbg !2043
  %arrayidx83 = getelementptr inbounds i8, ptr %output, i64 20, !dbg !2044
  %68 = load i32, ptr %arrayidx83, align 4, !dbg !2044
  %arrayidx85 = getelementptr inbounds i8, ptr %output, i64 32, !dbg !2045
  %69 = load i32, ptr %arrayidx85, align 4, !dbg !2045
  tail call void %63(ptr noundef %64, ptr noundef %add.ptr77, i32 noundef %66, i32 noundef %67, i32 noundef %68, i32 noundef %69, i32 noundef %1, i32 noundef %sub54223) #12, !dbg !2046
  %arrayidx88 = getelementptr inbounds i8, ptr %source, i64 96, !dbg !2026
  %70 = load i32, ptr %arrayidx88, align 8, !dbg !2026
  %arrayidx90 = getelementptr inbounds i8, ptr %output, i64 96, !dbg !2027
  %71 = load i32, ptr %arrayidx90, align 8, !dbg !2027
  %sub91 = sub nsw i32 %70, %71, !dbg !2028
    #dbg_value(i32 %sub91, !1830, !DIExpression(), !1832)
  %72 = load ptr, ptr %buf2img, align 8, !dbg !2047
  %arrayidx107 = getelementptr inbounds i8, ptr %pImage, i64 16, !dbg !2048
  %73 = load ptr, ptr %arrayidx107, align 8, !dbg !2048
  %74 = load ptr, ptr %buf27, align 8, !dbg !2049
  %add.ptr110 = getelementptr inbounds i8, ptr %74, i64 %idx.ext76, !dbg !2050
  %idx.ext111 = sext i32 %mul4 to i64, !dbg !2051
  %add.ptr112 = getelementptr inbounds i8, ptr %add.ptr110, i64 %idx.ext111, !dbg !2051
  %75 = load i32, ptr %arrayidx79, align 4, !dbg !2052
  %76 = load i32, ptr %arrayidx81, align 4, !dbg !2053
  %77 = load i32, ptr %arrayidx83, align 4, !dbg !2054
  %78 = load i32, ptr %arrayidx85, align 4, !dbg !2055
  tail call void %72(ptr noundef %73, ptr noundef %add.ptr112, i32 noundef %75, i32 noundef %76, i32 noundef %77, i32 noundef %78, i32 noundef %1, i32 noundef %sub91) #12, !dbg !2056
  br label %cleanup

cleanup:                                          ; preds = %if.end46.thread, %if.end46, %if.else105, %if.then93, %if.end14
  ret i32 %file_read.0, !dbg !2057
}

declare !dbg !2058 i32 @ReadTIFFImage(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !2062 i32 @ReadFrameSeparate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !2066 i32 @ReadFrameConcatenated(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @pad_borders(ptr nocapture noundef readonly byval(%struct.frame_format) align 8 %output, i32 noundef %img_size_x, i32 noundef %img_size_y, i32 noundef %img_size_x_cr, i32 noundef %img_size_y_cr, ptr nocapture noundef readonly %pImage) local_unnamed_addr #10 !dbg !2067 {
entry:
    #dbg_declare(ptr %output, !2071, !DIExpression(), !2082)
    #dbg_value(i32 %img_size_x, !2072, !DIExpression(), !2083)
    #dbg_value(i32 %img_size_y, !2073, !DIExpression(), !2083)
    #dbg_value(i32 %img_size_x_cr, !2074, !DIExpression(), !2083)
    #dbg_value(i32 %img_size_y_cr, !2075, !DIExpression(), !2083)
    #dbg_value(ptr %pImage, !2076, !DIExpression(), !2083)
  %width = getelementptr inbounds i8, ptr %output, i64 16, !dbg !2084
  %0 = load i32, ptr %width, align 8, !dbg !2086
  %cmp = icmp slt i32 %0, %img_size_x, !dbg !2087
  %height = getelementptr inbounds i8, ptr %output, i64 28
  %1 = load i32, ptr %height, align 4
    #dbg_value(i32 0, !2078, !DIExpression(), !2083)
  %cmp2157 = icmp sgt i32 %1, 0
  %or.cond = select i1 %cmp, i1 %cmp2157, i1 false, !dbg !2088
  br i1 %or.cond, label %for.cond5.preheader.us.preheader, label %if.end, !dbg !2088

for.cond5.preheader.us.preheader:                 ; preds = %entry
  %2 = sext i32 %0 to i64, !dbg !2089
  %wide.trip.count196 = zext nneg i32 %1 to i64, !dbg !2091
  %wide.trip.count = sext i32 %img_size_x to i64
  %3 = sub nsw i64 %wide.trip.count, %2, !dbg !2089
  %xtraiter = and i64 %3, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %4 = sub nsw i64 %2, %wide.trip.count
  %5 = icmp ugt i64 %4, -4
  br label %for.cond5.preheader.us, !dbg !2089

for.cond5.preheader.us:                           ; preds = %for.cond5.preheader.us.preheader, %for.cond5.for.inc17_crit_edge.us
  %indvars.iv193 = phi i64 [ 0, %for.cond5.preheader.us.preheader ], [ %indvars.iv.next194, %for.cond5.for.inc17_crit_edge.us ]
    #dbg_value(i64 %indvars.iv193, !2078, !DIExpression(), !2083)
    #dbg_value(i32 %0, !2077, !DIExpression(), !2083)
  br i1 %lcmp.mod.not, label %for.body7.us.prol.loopexit, label %for.body7.us.prol, !dbg !2093

for.body7.us.prol:                                ; preds = %for.cond5.preheader.us, %for.body7.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body7.us.prol ], [ %2, %for.cond5.preheader.us ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body7.us.prol ], [ 0, %for.cond5.preheader.us ]
    #dbg_value(i64 %indvars.iv.prol, !2077, !DIExpression(), !2083)
  %6 = load ptr, ptr %pImage, align 8, !dbg !2095
  %arrayidx9.us.prol = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv193, !dbg !2095
  %7 = load ptr, ptr %arrayidx9.us.prol, align 8, !dbg !2095
  %8 = getelementptr i16, ptr %7, i64 %indvars.iv.prol, !dbg !2095
  %arrayidx11.us.prol = getelementptr i8, ptr %8, i64 -2, !dbg !2095
  %9 = load i16, ptr %arrayidx11.us.prol, align 2, !dbg !2095
  store i16 %9, ptr %8, align 2, !dbg !2097
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1, !dbg !2098
    #dbg_value(i64 %indvars.iv.next.prol, !2077, !DIExpression(), !2083)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !2093
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !2093
  br i1 %prol.iter.cmp.not, label %for.body7.us.prol.loopexit, label %for.body7.us.prol, !dbg !2093, !llvm.loop !2099

for.body7.us.prol.loopexit:                       ; preds = %for.body7.us.prol, %for.cond5.preheader.us
  %indvars.iv.unr = phi i64 [ %2, %for.cond5.preheader.us ], [ %indvars.iv.next.prol, %for.body7.us.prol ]
  br i1 %5, label %for.cond5.for.inc17_crit_edge.us, label %for.body7.us, !dbg !2093

for.body7.us:                                     ; preds = %for.body7.us.prol.loopexit, %for.body7.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body7.us ], [ %indvars.iv.unr, %for.body7.us.prol.loopexit ]
    #dbg_value(i64 %indvars.iv, !2077, !DIExpression(), !2083)
  %10 = load ptr, ptr %pImage, align 8, !dbg !2095
  %arrayidx9.us = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv193, !dbg !2095
  %11 = load ptr, ptr %arrayidx9.us, align 8, !dbg !2095
  %12 = getelementptr i16, ptr %11, i64 %indvars.iv, !dbg !2095
  %arrayidx11.us = getelementptr i8, ptr %12, i64 -2, !dbg !2095
  %13 = load i16, ptr %arrayidx11.us, align 2, !dbg !2095
  store i16 %13, ptr %12, align 2, !dbg !2097
    #dbg_value(i64 %indvars.iv, !2077, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2083)
  %14 = load ptr, ptr %pImage, align 8, !dbg !2095
  %arrayidx9.us.1 = getelementptr inbounds ptr, ptr %14, i64 %indvars.iv193, !dbg !2095
  %15 = load ptr, ptr %arrayidx9.us.1, align 8, !dbg !2095
  %16 = getelementptr i16, ptr %15, i64 %indvars.iv, !dbg !2095
  %17 = getelementptr i8, ptr %16, i64 2, !dbg !2095
  %18 = load i16, ptr %16, align 2, !dbg !2095
  store i16 %18, ptr %17, align 2, !dbg !2097
    #dbg_value(i64 %indvars.iv, !2077, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !2083)
  %19 = load ptr, ptr %pImage, align 8, !dbg !2095
  %arrayidx9.us.2 = getelementptr inbounds ptr, ptr %19, i64 %indvars.iv193, !dbg !2095
  %20 = load ptr, ptr %arrayidx9.us.2, align 8, !dbg !2095
  %21 = getelementptr i16, ptr %20, i64 %indvars.iv, !dbg !2095
  %22 = getelementptr i8, ptr %21, i64 4, !dbg !2095
  %arrayidx11.us.2 = getelementptr i8, ptr %21, i64 2, !dbg !2095
  %23 = load i16, ptr %arrayidx11.us.2, align 2, !dbg !2095
  store i16 %23, ptr %22, align 2, !dbg !2097
    #dbg_value(i64 %indvars.iv, !2077, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !2083)
  %24 = load ptr, ptr %pImage, align 8, !dbg !2095
  %arrayidx9.us.3 = getelementptr inbounds ptr, ptr %24, i64 %indvars.iv193, !dbg !2095
  %25 = load ptr, ptr %arrayidx9.us.3, align 8, !dbg !2095
  %26 = getelementptr i16, ptr %25, i64 %indvars.iv, !dbg !2095
  %27 = getelementptr i8, ptr %26, i64 6, !dbg !2095
  %arrayidx11.us.3 = getelementptr i8, ptr %26, i64 4, !dbg !2095
  %28 = load i16, ptr %arrayidx11.us.3, align 2, !dbg !2095
  store i16 %28, ptr %27, align 2, !dbg !2097
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4, !dbg !2098
    #dbg_value(i64 %indvars.iv.next.3, !2077, !DIExpression(), !2083)
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count, !dbg !2100
  br i1 %exitcond.not.3, label %for.cond5.for.inc17_crit_edge.us, label %for.body7.us, !dbg !2093, !llvm.loop !2101

for.cond5.for.inc17_crit_edge.us:                 ; preds = %for.body7.us, %for.body7.us.prol.loopexit
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1, !dbg !2103
    #dbg_value(i64 %indvars.iv.next194, !2078, !DIExpression(), !2083)
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196, !dbg !2091
  br i1 %exitcond197.not, label %if.end, label %for.cond5.preheader.us, !dbg !2089, !llvm.loop !2104

if.end:                                           ; preds = %for.cond5.for.inc17_crit_edge.us, %entry
  %cmp22 = icmp slt i32 %1, %img_size_y, !dbg !2106
  br i1 %cmp22, label %for.cond26.preheader, label %if.end39, !dbg !2108

for.cond26.preheader:                             ; preds = %if.end
    #dbg_value(i32 %1, !2078, !DIExpression(), !2083)
  %conv = sext i32 %img_size_x to i64
  %mul = shl nsw i64 %conv, 1
  %29 = sext i32 %1 to i64, !dbg !2109
  %wide.trip.count201 = sext i32 %img_size_y to i64, !dbg !2111
  %30 = sub nsw i64 %wide.trip.count201, %29, !dbg !2109
  %xtraiter234 = and i64 %30, 1, !dbg !2109
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0, !dbg !2109
  br i1 %lcmp.mod235.not, label %for.body28.prol.loopexit, label %for.body28.prol, !dbg !2109

for.body28.prol:                                  ; preds = %for.cond26.preheader
    #dbg_value(i64 %29, !2078, !DIExpression(), !2083)
  %31 = load ptr, ptr %pImage, align 8, !dbg !2113
  %arrayidx31.prol = getelementptr inbounds ptr, ptr %31, i64 %29, !dbg !2113
  %32 = load ptr, ptr %arrayidx31.prol, align 8, !dbg !2113
  %arrayidx35.prol = getelementptr i8, ptr %arrayidx31.prol, i64 -8, !dbg !2114
  %33 = load ptr, ptr %arrayidx35.prol, align 8, !dbg !2114
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %32, ptr align 2 %33, i64 %mul, i1 false), !dbg !2115
  %indvars.iv.next199.prol = add nsw i64 %29, 1, !dbg !2116
    #dbg_value(i64 %indvars.iv.next199.prol, !2078, !DIExpression(), !2083)
  br label %for.body28.prol.loopexit, !dbg !2109

for.body28.prol.loopexit:                         ; preds = %for.body28.prol, %for.cond26.preheader
  %indvars.iv198.unr = phi i64 [ %29, %for.cond26.preheader ], [ %indvars.iv.next199.prol, %for.body28.prol ]
  %34 = add nsw i64 %wide.trip.count201, -1, !dbg !2109
  %35 = icmp eq i64 %34, %29, !dbg !2109
  br i1 %35, label %if.end39, label %for.body28, !dbg !2109

for.body28:                                       ; preds = %for.body28.prol.loopexit, %for.body28
  %indvars.iv198 = phi i64 [ %indvars.iv.next199.1, %for.body28 ], [ %indvars.iv198.unr, %for.body28.prol.loopexit ]
    #dbg_value(i64 %indvars.iv198, !2078, !DIExpression(), !2083)
  %36 = load ptr, ptr %pImage, align 8, !dbg !2113
  %arrayidx31 = getelementptr inbounds ptr, ptr %36, i64 %indvars.iv198, !dbg !2113
  %37 = load ptr, ptr %arrayidx31, align 8, !dbg !2113
  %arrayidx35 = getelementptr i8, ptr %arrayidx31, i64 -8, !dbg !2114
  %38 = load ptr, ptr %arrayidx35, align 8, !dbg !2114
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %37, ptr align 2 %38, i64 %mul, i1 false), !dbg !2115
    #dbg_value(i64 %indvars.iv198, !2078, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2083)
  %39 = load ptr, ptr %pImage, align 8, !dbg !2113
  %40 = getelementptr ptr, ptr %39, i64 %indvars.iv198, !dbg !2113
  %arrayidx31.1 = getelementptr i8, ptr %40, i64 8, !dbg !2113
  %41 = load ptr, ptr %arrayidx31.1, align 8, !dbg !2113
  %42 = load ptr, ptr %40, align 8, !dbg !2114
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %41, ptr align 2 %42, i64 %mul, i1 false), !dbg !2115
  %indvars.iv.next199.1 = add nsw i64 %indvars.iv198, 2, !dbg !2116
    #dbg_value(i64 %indvars.iv.next199.1, !2078, !DIExpression(), !2083)
  %exitcond202.not.1 = icmp eq i64 %indvars.iv.next199.1, %wide.trip.count201, !dbg !2111
  br i1 %exitcond202.not.1, label %if.end39, label %for.body28, !dbg !2109, !llvm.loop !2117

if.end39:                                         ; preds = %for.body28.prol.loopexit, %for.body28, %if.end
  %43 = load i32, ptr %output, align 8, !dbg !2119
  %cmp40.not = icmp eq i32 %43, 0, !dbg !2120
  br i1 %cmp40.not, label %if.end113, label %for.cond43.preheader, !dbg !2121

for.cond43.preheader:                             ; preds = %if.end39
  %arrayidx48 = getelementptr inbounds i8, ptr %output, i64 20
  %44 = load i32, ptr %arrayidx48, align 4
  %cmp49 = icmp slt i32 %44, %img_size_x_cr
  %arrayidx85 = getelementptr inbounds i8, ptr %output, i64 32
  %45 = load i32, ptr %arrayidx85, align 8
  %cmp86 = icmp slt i32 %45, %img_size_y_cr
    #dbg_value(i32 1, !2079, !DIExpression(), !2122)
  %cmp55162 = icmp sgt i32 %45, 0
  %conv104 = sext i32 %img_size_x_cr to i64
  %mul105 = shl nsw i64 %conv104, 1
  br i1 %cmp49, label %for.body46.us.preheader, label %for.cond43.preheader.split

for.body46.us.preheader:                          ; preds = %for.cond43.preheader
  %46 = sext i32 %44 to i64, !dbg !2123
  %47 = sext i32 %45 to i64, !dbg !2123
    #dbg_value(i64 1, !2079, !DIExpression(), !2122)
    #dbg_value(i32 0, !2078, !DIExpression(), !2083)
  br i1 %cmp55162, label %for.cond60.preheader.us.us.preheader, label %if.end83.loopexit.us, !dbg !2125

for.inc110.us:                                    ; preds = %for.body94.us.prol.loopexit, %for.body94.us, %if.end83.loopexit.us
    #dbg_value(i64 2, !2079, !DIExpression(), !2122)
    #dbg_value(i32 0, !2078, !DIExpression(), !2083)
  br i1 %cmp55162, label %for.cond60.preheader.us.us.preheader.1, label %if.end83.loopexit.us.1, !dbg !2125

for.cond60.preheader.us.us.preheader.1:           ; preds = %for.inc110.us
  %arrayidx65.us.1 = getelementptr inbounds i8, ptr %pImage, i64 16
  %wide.trip.count220.1 = zext nneg i32 %45 to i64, !dbg !2130
  %48 = sub nsw i64 %conv104, %46, !dbg !2125
  %xtraiter264 = and i64 %48, 3
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  %49 = sub nsw i64 %46, %conv104
  %50 = icmp ugt i64 %49, -4
  br label %for.cond60.preheader.us.us.1, !dbg !2125

for.cond60.preheader.us.us.1:                     ; preds = %for.cond60.for.inc80_crit_edge.us.us.1, %for.cond60.preheader.us.us.preheader.1
  %indvars.iv217.1 = phi i64 [ 0, %for.cond60.preheader.us.us.preheader.1 ], [ %indvars.iv.next218.1, %for.cond60.for.inc80_crit_edge.us.us.1 ]
    #dbg_value(i64 %indvars.iv217.1, !2078, !DIExpression(), !2083)
    #dbg_value(i32 %44, !2077, !DIExpression(), !2083)
  br i1 %lcmp.mod265.not, label %for.body63.us.us.1.prol.loopexit, label %for.body63.us.us.1.prol, !dbg !2132

for.body63.us.us.1.prol:                          ; preds = %for.cond60.preheader.us.us.1, %for.body63.us.us.1.prol
  %indvars.iv212.1.prol = phi i64 [ %indvars.iv.next213.1.prol, %for.body63.us.us.1.prol ], [ %46, %for.cond60.preheader.us.us.1 ]
  %prol.iter266 = phi i64 [ %prol.iter266.next, %for.body63.us.us.1.prol ], [ 0, %for.cond60.preheader.us.us.1 ]
    #dbg_value(i64 %indvars.iv212.1.prol, !2077, !DIExpression(), !2083)
  %51 = load ptr, ptr %arrayidx65.us.1, align 8, !dbg !2134
  %arrayidx67.us.us.1.prol = getelementptr inbounds ptr, ptr %51, i64 %indvars.iv217.1, !dbg !2134
  %52 = load ptr, ptr %arrayidx67.us.us.1.prol, align 8, !dbg !2134
  %53 = getelementptr i16, ptr %52, i64 %indvars.iv212.1.prol, !dbg !2134
  %arrayidx70.us.us.1.prol = getelementptr i8, ptr %53, i64 -2, !dbg !2134
  %54 = load i16, ptr %arrayidx70.us.us.1.prol, align 2, !dbg !2134
  store i16 %54, ptr %53, align 2, !dbg !2136
  %indvars.iv.next213.1.prol = add nsw i64 %indvars.iv212.1.prol, 1, !dbg !2137
    #dbg_value(i64 %indvars.iv.next213.1.prol, !2077, !DIExpression(), !2083)
  %prol.iter266.next = add i64 %prol.iter266, 1, !dbg !2132
  %prol.iter266.cmp.not = icmp eq i64 %prol.iter266.next, %xtraiter264, !dbg !2132
  br i1 %prol.iter266.cmp.not, label %for.body63.us.us.1.prol.loopexit, label %for.body63.us.us.1.prol, !dbg !2132, !llvm.loop !2138

for.body63.us.us.1.prol.loopexit:                 ; preds = %for.body63.us.us.1.prol, %for.cond60.preheader.us.us.1
  %indvars.iv212.1.unr = phi i64 [ %46, %for.cond60.preheader.us.us.1 ], [ %indvars.iv.next213.1.prol, %for.body63.us.us.1.prol ]
  br i1 %50, label %for.cond60.for.inc80_crit_edge.us.us.1, label %for.body63.us.us.1, !dbg !2132

for.body63.us.us.1:                               ; preds = %for.body63.us.us.1.prol.loopexit, %for.body63.us.us.1
  %indvars.iv212.1 = phi i64 [ %indvars.iv.next213.1.3, %for.body63.us.us.1 ], [ %indvars.iv212.1.unr, %for.body63.us.us.1.prol.loopexit ]
    #dbg_value(i64 %indvars.iv212.1, !2077, !DIExpression(), !2083)
  %55 = load ptr, ptr %arrayidx65.us.1, align 8, !dbg !2134
  %arrayidx67.us.us.1 = getelementptr inbounds ptr, ptr %55, i64 %indvars.iv217.1, !dbg !2134
  %56 = load ptr, ptr %arrayidx67.us.us.1, align 8, !dbg !2134
  %57 = getelementptr i16, ptr %56, i64 %indvars.iv212.1, !dbg !2134
  %arrayidx70.us.us.1 = getelementptr i8, ptr %57, i64 -2, !dbg !2134
  %58 = load i16, ptr %arrayidx70.us.us.1, align 2, !dbg !2134
  store i16 %58, ptr %57, align 2, !dbg !2136
    #dbg_value(i64 %indvars.iv212.1, !2077, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2083)
  %59 = load ptr, ptr %arrayidx65.us.1, align 8, !dbg !2134
  %arrayidx67.us.us.1.1 = getelementptr inbounds ptr, ptr %59, i64 %indvars.iv217.1, !dbg !2134
  %60 = load ptr, ptr %arrayidx67.us.us.1.1, align 8, !dbg !2134
  %61 = getelementptr i16, ptr %60, i64 %indvars.iv212.1, !dbg !2134
  %62 = getelementptr i8, ptr %61, i64 2, !dbg !2134
  %63 = load i16, ptr %61, align 2, !dbg !2134
  store i16 %63, ptr %62, align 2, !dbg !2136
    #dbg_value(i64 %indvars.iv212.1, !2077, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !2083)
  %64 = load ptr, ptr %arrayidx65.us.1, align 8, !dbg !2134
  %arrayidx67.us.us.1.2 = getelementptr inbounds ptr, ptr %64, i64 %indvars.iv217.1, !dbg !2134
  %65 = load ptr, ptr %arrayidx67.us.us.1.2, align 8, !dbg !2134
  %66 = getelementptr i16, ptr %65, i64 %indvars.iv212.1, !dbg !2134
  %67 = getelementptr i8, ptr %66, i64 4, !dbg !2134
  %arrayidx70.us.us.1.2 = getelementptr i8, ptr %66, i64 2, !dbg !2134
  %68 = load i16, ptr %arrayidx70.us.us.1.2, align 2, !dbg !2134
  store i16 %68, ptr %67, align 2, !dbg !2136
    #dbg_value(i64 %indvars.iv212.1, !2077, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !2083)
  %69 = load ptr, ptr %arrayidx65.us.1, align 8, !dbg !2134
  %arrayidx67.us.us.1.3 = getelementptr inbounds ptr, ptr %69, i64 %indvars.iv217.1, !dbg !2134
  %70 = load ptr, ptr %arrayidx67.us.us.1.3, align 8, !dbg !2134
  %71 = getelementptr i16, ptr %70, i64 %indvars.iv212.1, !dbg !2134
  %72 = getelementptr i8, ptr %71, i64 6, !dbg !2134
  %arrayidx70.us.us.1.3 = getelementptr i8, ptr %71, i64 4, !dbg !2134
  %73 = load i16, ptr %arrayidx70.us.us.1.3, align 2, !dbg !2134
  store i16 %73, ptr %72, align 2, !dbg !2136
  %indvars.iv.next213.1.3 = add nsw i64 %indvars.iv212.1, 4, !dbg !2137
    #dbg_value(i64 %indvars.iv.next213.1.3, !2077, !DIExpression(), !2083)
  %exitcond216.1.not.3 = icmp eq i64 %indvars.iv.next213.1.3, %conv104, !dbg !2139
  br i1 %exitcond216.1.not.3, label %for.cond60.for.inc80_crit_edge.us.us.1, label %for.body63.us.us.1, !dbg !2132, !llvm.loop !2140

for.cond60.for.inc80_crit_edge.us.us.1:           ; preds = %for.body63.us.us.1, %for.body63.us.us.1.prol.loopexit
  %indvars.iv.next218.1 = add nuw nsw i64 %indvars.iv217.1, 1, !dbg !2142
    #dbg_value(i64 %indvars.iv.next218.1, !2078, !DIExpression(), !2083)
  %exitcond221.1.not = icmp eq i64 %indvars.iv.next218.1, %wide.trip.count220.1, !dbg !2130
  br i1 %exitcond221.1.not, label %if.end83.loopexit.us.1, label %for.cond60.preheader.us.us.1, !dbg !2125, !llvm.loop !2143

if.end83.loopexit.us.1:                           ; preds = %for.cond60.for.inc80_crit_edge.us.us.1, %for.inc110.us
  br i1 %cmp86, label %for.cond91.preheader.us.1, label %if.end113, !dbg !2145

for.cond91.preheader.us.1:                        ; preds = %if.end83.loopexit.us.1
    #dbg_value(i32 %45, !2078, !DIExpression(), !2083)
  %arrayidx96.us.1 = getelementptr inbounds i8, ptr %pImage, i64 16
  %wide.trip.count225.1 = sext i32 %img_size_y_cr to i64, !dbg !2146
  %74 = sub nsw i64 %wide.trip.count225.1, %47, !dbg !2150
  %xtraiter267 = and i64 %74, 1, !dbg !2150
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0, !dbg !2150
  br i1 %lcmp.mod268.not, label %for.body94.us.1.prol.loopexit, label %for.body94.us.1.prol, !dbg !2150

for.body94.us.1.prol:                             ; preds = %for.cond91.preheader.us.1
    #dbg_value(i64 %47, !2078, !DIExpression(), !2083)
  %75 = load ptr, ptr %arrayidx96.us.1, align 8, !dbg !2151
  %arrayidx98.us.1.prol = getelementptr inbounds ptr, ptr %75, i64 %47, !dbg !2151
  %76 = load ptr, ptr %arrayidx98.us.1.prol, align 8, !dbg !2151
  %arrayidx103.us.1.prol = getelementptr i8, ptr %arrayidx98.us.1.prol, i64 -8, !dbg !2152
  %77 = load ptr, ptr %arrayidx103.us.1.prol, align 8, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %76, ptr align 2 %77, i64 %mul105, i1 false), !dbg !2153
  %indvars.iv.next223.1.prol = add nsw i64 %47, 1, !dbg !2154
    #dbg_value(i64 %indvars.iv.next223.1.prol, !2078, !DIExpression(), !2083)
  br label %for.body94.us.1.prol.loopexit, !dbg !2150

for.body94.us.1.prol.loopexit:                    ; preds = %for.body94.us.1.prol, %for.cond91.preheader.us.1
  %indvars.iv222.1.unr = phi i64 [ %47, %for.cond91.preheader.us.1 ], [ %indvars.iv.next223.1.prol, %for.body94.us.1.prol ]
  %78 = add nsw i64 %wide.trip.count225.1, -1, !dbg !2150
  %79 = icmp eq i64 %78, %47, !dbg !2150
  br i1 %79, label %if.end113, label %for.body94.us.1, !dbg !2150

for.body94.us.1:                                  ; preds = %for.body94.us.1.prol.loopexit, %for.body94.us.1
  %indvars.iv222.1 = phi i64 [ %indvars.iv.next223.1.1, %for.body94.us.1 ], [ %indvars.iv222.1.unr, %for.body94.us.1.prol.loopexit ]
    #dbg_value(i64 %indvars.iv222.1, !2078, !DIExpression(), !2083)
  %80 = load ptr, ptr %arrayidx96.us.1, align 8, !dbg !2151
  %arrayidx98.us.1 = getelementptr inbounds ptr, ptr %80, i64 %indvars.iv222.1, !dbg !2151
  %81 = load ptr, ptr %arrayidx98.us.1, align 8, !dbg !2151
  %arrayidx103.us.1 = getelementptr i8, ptr %arrayidx98.us.1, i64 -8, !dbg !2152
  %82 = load ptr, ptr %arrayidx103.us.1, align 8, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %81, ptr align 2 %82, i64 %mul105, i1 false), !dbg !2153
    #dbg_value(i64 %indvars.iv222.1, !2078, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2083)
  %83 = load ptr, ptr %arrayidx96.us.1, align 8, !dbg !2151
  %84 = getelementptr ptr, ptr %83, i64 %indvars.iv222.1, !dbg !2151
  %arrayidx98.us.1.1 = getelementptr i8, ptr %84, i64 8, !dbg !2151
  %85 = load ptr, ptr %arrayidx98.us.1.1, align 8, !dbg !2151
  %86 = load ptr, ptr %84, align 8, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %85, ptr align 2 %86, i64 %mul105, i1 false), !dbg !2153
  %indvars.iv.next223.1.1 = add nsw i64 %indvars.iv222.1, 2, !dbg !2154
    #dbg_value(i64 %indvars.iv.next223.1.1, !2078, !DIExpression(), !2083)
  %exitcond226.1.not.1 = icmp eq i64 %indvars.iv.next223.1.1, %wide.trip.count225.1, !dbg !2146
  br i1 %exitcond226.1.not.1, label %if.end113, label %for.body94.us.1, !dbg !2150, !llvm.loop !2155

for.body94.us:                                    ; preds = %for.body94.us.prol.loopexit, %for.body94.us
  %indvars.iv222 = phi i64 [ %indvars.iv.next223.1262, %for.body94.us ], [ %indvars.iv222.unr, %for.body94.us.prol.loopexit ]
    #dbg_value(i64 %indvars.iv222, !2078, !DIExpression(), !2083)
  %87 = load ptr, ptr %arrayidx96.us, align 8, !dbg !2151
  %arrayidx98.us = getelementptr inbounds ptr, ptr %87, i64 %indvars.iv222, !dbg !2151
  %88 = load ptr, ptr %arrayidx98.us, align 8, !dbg !2151
  %arrayidx103.us = getelementptr i8, ptr %arrayidx98.us, i64 -8, !dbg !2152
  %89 = load ptr, ptr %arrayidx103.us, align 8, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %88, ptr align 2 %89, i64 %mul105, i1 false), !dbg !2153
    #dbg_value(i64 %indvars.iv222, !2078, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2083)
  %90 = load ptr, ptr %arrayidx96.us, align 8, !dbg !2151
  %91 = getelementptr ptr, ptr %90, i64 %indvars.iv222, !dbg !2151
  %arrayidx98.us.1260 = getelementptr i8, ptr %91, i64 8, !dbg !2151
  %92 = load ptr, ptr %arrayidx98.us.1260, align 8, !dbg !2151
  %93 = load ptr, ptr %91, align 8, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %92, ptr align 2 %93, i64 %mul105, i1 false), !dbg !2153
  %indvars.iv.next223.1262 = add nsw i64 %indvars.iv222, 2, !dbg !2154
    #dbg_value(i64 %indvars.iv.next223.1262, !2078, !DIExpression(), !2083)
  %exitcond226.not.1 = icmp eq i64 %indvars.iv.next223.1262, %wide.trip.count225, !dbg !2146
  br i1 %exitcond226.not.1, label %for.inc110.us, label %for.body94.us, !dbg !2150, !llvm.loop !2155

for.cond91.preheader.us:                          ; preds = %if.end83.loopexit.us
    #dbg_value(i32 %45, !2078, !DIExpression(), !2083)
  %arrayidx96.us = getelementptr inbounds i8, ptr %pImage, i64 8
  %wide.trip.count225 = sext i32 %img_size_y_cr to i64, !dbg !2146
  %94 = sub nsw i64 %wide.trip.count225, %47, !dbg !2150
  %xtraiter256 = and i64 %94, 1, !dbg !2150
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0, !dbg !2150
  br i1 %lcmp.mod257.not, label %for.body94.us.prol.loopexit, label %for.body94.us.prol, !dbg !2150

for.body94.us.prol:                               ; preds = %for.cond91.preheader.us
    #dbg_value(i64 %47, !2078, !DIExpression(), !2083)
  %95 = load ptr, ptr %arrayidx96.us, align 8, !dbg !2151
  %arrayidx98.us.prol = getelementptr inbounds ptr, ptr %95, i64 %47, !dbg !2151
  %96 = load ptr, ptr %arrayidx98.us.prol, align 8, !dbg !2151
  %arrayidx103.us.prol = getelementptr i8, ptr %arrayidx98.us.prol, i64 -8, !dbg !2152
  %97 = load ptr, ptr %arrayidx103.us.prol, align 8, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %96, ptr align 2 %97, i64 %mul105, i1 false), !dbg !2153
  %indvars.iv.next223.prol = add nsw i64 %47, 1, !dbg !2154
    #dbg_value(i64 %indvars.iv.next223.prol, !2078, !DIExpression(), !2083)
  br label %for.body94.us.prol.loopexit, !dbg !2150

for.body94.us.prol.loopexit:                      ; preds = %for.body94.us.prol, %for.cond91.preheader.us
  %indvars.iv222.unr = phi i64 [ %47, %for.cond91.preheader.us ], [ %indvars.iv.next223.prol, %for.body94.us.prol ]
  %98 = add nsw i64 %wide.trip.count225, -1, !dbg !2150
  %99 = icmp eq i64 %98, %47, !dbg !2150
  br i1 %99, label %for.inc110.us, label %for.body94.us, !dbg !2150

if.end83.loopexit.us:                             ; preds = %for.cond60.for.inc80_crit_edge.us.us, %for.body46.us.preheader
  br i1 %cmp86, label %for.cond91.preheader.us, label %for.inc110.us, !dbg !2145

for.cond60.preheader.us.us.preheader:             ; preds = %for.body46.us.preheader
  %arrayidx65.us = getelementptr inbounds i8, ptr %pImage, i64 8
  %wide.trip.count220 = zext nneg i32 %45 to i64, !dbg !2130
  %100 = sub nsw i64 %conv104, %46, !dbg !2125
  %xtraiter248 = and i64 %100, 3
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  %101 = sub nsw i64 %46, %conv104
  %102 = icmp ugt i64 %101, -4
  br label %for.cond60.preheader.us.us, !dbg !2125

for.cond60.preheader.us.us:                       ; preds = %for.cond60.preheader.us.us.preheader, %for.cond60.for.inc80_crit_edge.us.us
  %indvars.iv217 = phi i64 [ 0, %for.cond60.preheader.us.us.preheader ], [ %indvars.iv.next218, %for.cond60.for.inc80_crit_edge.us.us ]
    #dbg_value(i64 %indvars.iv217, !2078, !DIExpression(), !2083)
    #dbg_value(i32 %44, !2077, !DIExpression(), !2083)
  br i1 %lcmp.mod249.not, label %for.body63.us.us.prol.loopexit, label %for.body63.us.us.prol, !dbg !2132

for.body63.us.us.prol:                            ; preds = %for.cond60.preheader.us.us, %for.body63.us.us.prol
  %indvars.iv212.prol = phi i64 [ %indvars.iv.next213.prol, %for.body63.us.us.prol ], [ %46, %for.cond60.preheader.us.us ]
  %prol.iter250 = phi i64 [ %prol.iter250.next, %for.body63.us.us.prol ], [ 0, %for.cond60.preheader.us.us ]
    #dbg_value(i64 %indvars.iv212.prol, !2077, !DIExpression(), !2083)
  %103 = load ptr, ptr %arrayidx65.us, align 8, !dbg !2134
  %arrayidx67.us.us.prol = getelementptr inbounds ptr, ptr %103, i64 %indvars.iv217, !dbg !2134
  %104 = load ptr, ptr %arrayidx67.us.us.prol, align 8, !dbg !2134
  %105 = getelementptr i16, ptr %104, i64 %indvars.iv212.prol, !dbg !2134
  %arrayidx70.us.us.prol = getelementptr i8, ptr %105, i64 -2, !dbg !2134
  %106 = load i16, ptr %arrayidx70.us.us.prol, align 2, !dbg !2134
  store i16 %106, ptr %105, align 2, !dbg !2136
  %indvars.iv.next213.prol = add nsw i64 %indvars.iv212.prol, 1, !dbg !2137
    #dbg_value(i64 %indvars.iv.next213.prol, !2077, !DIExpression(), !2083)
  %prol.iter250.next = add i64 %prol.iter250, 1, !dbg !2132
  %prol.iter250.cmp.not = icmp eq i64 %prol.iter250.next, %xtraiter248, !dbg !2132
  br i1 %prol.iter250.cmp.not, label %for.body63.us.us.prol.loopexit, label %for.body63.us.us.prol, !dbg !2132, !llvm.loop !2157

for.body63.us.us.prol.loopexit:                   ; preds = %for.body63.us.us.prol, %for.cond60.preheader.us.us
  %indvars.iv212.unr = phi i64 [ %46, %for.cond60.preheader.us.us ], [ %indvars.iv.next213.prol, %for.body63.us.us.prol ]
  br i1 %102, label %for.cond60.for.inc80_crit_edge.us.us, label %for.body63.us.us, !dbg !2132

for.body63.us.us:                                 ; preds = %for.body63.us.us.prol.loopexit, %for.body63.us.us
  %indvars.iv212 = phi i64 [ %indvars.iv.next213.3, %for.body63.us.us ], [ %indvars.iv212.unr, %for.body63.us.us.prol.loopexit ]
    #dbg_value(i64 %indvars.iv212, !2077, !DIExpression(), !2083)
  %107 = load ptr, ptr %arrayidx65.us, align 8, !dbg !2134
  %arrayidx67.us.us = getelementptr inbounds ptr, ptr %107, i64 %indvars.iv217, !dbg !2134
  %108 = load ptr, ptr %arrayidx67.us.us, align 8, !dbg !2134
  %109 = getelementptr i16, ptr %108, i64 %indvars.iv212, !dbg !2134
  %arrayidx70.us.us = getelementptr i8, ptr %109, i64 -2, !dbg !2134
  %110 = load i16, ptr %arrayidx70.us.us, align 2, !dbg !2134
  store i16 %110, ptr %109, align 2, !dbg !2136
    #dbg_value(i64 %indvars.iv212, !2077, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2083)
  %111 = load ptr, ptr %arrayidx65.us, align 8, !dbg !2134
  %arrayidx67.us.us.1252 = getelementptr inbounds ptr, ptr %111, i64 %indvars.iv217, !dbg !2134
  %112 = load ptr, ptr %arrayidx67.us.us.1252, align 8, !dbg !2134
  %113 = getelementptr i16, ptr %112, i64 %indvars.iv212, !dbg !2134
  %114 = getelementptr i8, ptr %113, i64 2, !dbg !2134
  %115 = load i16, ptr %113, align 2, !dbg !2134
  store i16 %115, ptr %114, align 2, !dbg !2136
    #dbg_value(i64 %indvars.iv212, !2077, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !2083)
  %116 = load ptr, ptr %arrayidx65.us, align 8, !dbg !2134
  %arrayidx67.us.us.2 = getelementptr inbounds ptr, ptr %116, i64 %indvars.iv217, !dbg !2134
  %117 = load ptr, ptr %arrayidx67.us.us.2, align 8, !dbg !2134
  %118 = getelementptr i16, ptr %117, i64 %indvars.iv212, !dbg !2134
  %119 = getelementptr i8, ptr %118, i64 4, !dbg !2134
  %arrayidx70.us.us.2 = getelementptr i8, ptr %118, i64 2, !dbg !2134
  %120 = load i16, ptr %arrayidx70.us.us.2, align 2, !dbg !2134
  store i16 %120, ptr %119, align 2, !dbg !2136
    #dbg_value(i64 %indvars.iv212, !2077, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !2083)
  %121 = load ptr, ptr %arrayidx65.us, align 8, !dbg !2134
  %arrayidx67.us.us.3 = getelementptr inbounds ptr, ptr %121, i64 %indvars.iv217, !dbg !2134
  %122 = load ptr, ptr %arrayidx67.us.us.3, align 8, !dbg !2134
  %123 = getelementptr i16, ptr %122, i64 %indvars.iv212, !dbg !2134
  %124 = getelementptr i8, ptr %123, i64 6, !dbg !2134
  %arrayidx70.us.us.3 = getelementptr i8, ptr %123, i64 4, !dbg !2134
  %125 = load i16, ptr %arrayidx70.us.us.3, align 2, !dbg !2134
  store i16 %125, ptr %124, align 2, !dbg !2136
  %indvars.iv.next213.3 = add nsw i64 %indvars.iv212, 4, !dbg !2137
    #dbg_value(i64 %indvars.iv.next213.3, !2077, !DIExpression(), !2083)
  %exitcond216.not.3 = icmp eq i64 %indvars.iv.next213.3, %conv104, !dbg !2139
  br i1 %exitcond216.not.3, label %for.cond60.for.inc80_crit_edge.us.us, label %for.body63.us.us, !dbg !2132, !llvm.loop !2140

for.cond60.for.inc80_crit_edge.us.us:             ; preds = %for.body63.us.us, %for.body63.us.us.prol.loopexit
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1, !dbg !2142
    #dbg_value(i64 %indvars.iv.next218, !2078, !DIExpression(), !2083)
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220, !dbg !2130
  br i1 %exitcond221.not, label %if.end83.loopexit.us, label %for.cond60.preheader.us.us, !dbg !2125, !llvm.loop !2143

for.cond43.preheader.split:                       ; preds = %for.cond43.preheader
  br i1 %cmp86, label %for.body46.us172.preheader, label %if.end113

for.body46.us172.preheader:                       ; preds = %for.cond43.preheader.split
  %126 = sext i32 %45 to i64, !dbg !2123
    #dbg_value(i64 1, !2079, !DIExpression(), !2122)
    #dbg_value(i32 %45, !2078, !DIExpression(), !2083)
  %arrayidx96.us186 = getelementptr inbounds i8, ptr %pImage, i64 8
  %wide.trip.count206 = sext i32 %img_size_y_cr to i64, !dbg !2146
  %127 = sub nsw i64 %wide.trip.count206, %126, !dbg !2150
  %128 = xor i64 %126, -1, !dbg !2150
  %129 = add nsw i64 %128, %wide.trip.count206, !dbg !2150
  %xtraiter237 = and i64 %127, 1, !dbg !2150
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0, !dbg !2150
  br i1 %lcmp.mod238.not, label %for.body94.us177.prol.loopexit, label %for.body94.us177.prol, !dbg !2150

for.body94.us177.prol:                            ; preds = %for.body46.us172.preheader
    #dbg_value(i64 %126, !2078, !DIExpression(), !2083)
  %130 = load ptr, ptr %arrayidx96.us186, align 8, !dbg !2151
  %arrayidx98.us180.prol = getelementptr inbounds ptr, ptr %130, i64 %126, !dbg !2151
  %131 = load ptr, ptr %arrayidx98.us180.prol, align 8, !dbg !2151
  %arrayidx103.us181.prol = getelementptr i8, ptr %arrayidx98.us180.prol, i64 -8, !dbg !2152
  %132 = load ptr, ptr %arrayidx103.us181.prol, align 8, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %131, ptr align 2 %132, i64 %mul105, i1 false), !dbg !2153
  %indvars.iv.next204.prol = add nsw i64 %126, 1, !dbg !2154
    #dbg_value(i64 %indvars.iv.next204.prol, !2078, !DIExpression(), !2083)
  br label %for.body94.us177.prol.loopexit, !dbg !2150

for.body94.us177.prol.loopexit:                   ; preds = %for.body94.us177.prol, %for.body46.us172.preheader
  %indvars.iv203.unr = phi i64 [ %126, %for.body46.us172.preheader ], [ %indvars.iv.next204.prol, %for.body94.us177.prol ]
  %133 = icmp eq i64 %129, 0, !dbg !2150
  br i1 %133, label %for.inc110.loopexit.us187, label %for.body94.us177, !dbg !2150

for.body94.us177:                                 ; preds = %for.body94.us177.prol.loopexit, %for.body94.us177
  %indvars.iv203 = phi i64 [ %indvars.iv.next204.1243, %for.body94.us177 ], [ %indvars.iv203.unr, %for.body94.us177.prol.loopexit ]
    #dbg_value(i64 %indvars.iv203, !2078, !DIExpression(), !2083)
  %134 = load ptr, ptr %arrayidx96.us186, align 8, !dbg !2151
  %arrayidx98.us180 = getelementptr inbounds ptr, ptr %134, i64 %indvars.iv203, !dbg !2151
  %135 = load ptr, ptr %arrayidx98.us180, align 8, !dbg !2151
  %arrayidx103.us181 = getelementptr i8, ptr %arrayidx98.us180, i64 -8, !dbg !2152
  %136 = load ptr, ptr %arrayidx103.us181, align 8, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %135, ptr align 2 %136, i64 %mul105, i1 false), !dbg !2153
    #dbg_value(i64 %indvars.iv203, !2078, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2083)
  %137 = load ptr, ptr %arrayidx96.us186, align 8, !dbg !2151
  %138 = getelementptr ptr, ptr %137, i64 %indvars.iv203, !dbg !2151
  %arrayidx98.us180.1241 = getelementptr i8, ptr %138, i64 8, !dbg !2151
  %139 = load ptr, ptr %arrayidx98.us180.1241, align 8, !dbg !2151
  %140 = load ptr, ptr %138, align 8, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %139, ptr align 2 %140, i64 %mul105, i1 false), !dbg !2153
  %indvars.iv.next204.1243 = add nsw i64 %indvars.iv203, 2, !dbg !2154
    #dbg_value(i64 %indvars.iv.next204.1243, !2078, !DIExpression(), !2083)
  %exitcond207.not.1 = icmp eq i64 %indvars.iv.next204.1243, %wide.trip.count206, !dbg !2146
  br i1 %exitcond207.not.1, label %for.inc110.loopexit.us187, label %for.body94.us177, !dbg !2150, !llvm.loop !2155

for.inc110.loopexit.us187:                        ; preds = %for.body94.us177, %for.body94.us177.prol.loopexit
    #dbg_value(i64 2, !2079, !DIExpression(), !2122)
    #dbg_value(i32 %45, !2078, !DIExpression(), !2083)
  %arrayidx96.us186.1 = getelementptr inbounds i8, ptr %pImage, i64 16
  %xtraiter245 = and i64 %127, 1, !dbg !2150
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0, !dbg !2150
  br i1 %lcmp.mod246.not, label %for.body94.us177.1.prol.loopexit, label %for.body94.us177.1.prol, !dbg !2150

for.body94.us177.1.prol:                          ; preds = %for.inc110.loopexit.us187
    #dbg_value(i64 %126, !2078, !DIExpression(), !2083)
  %141 = load ptr, ptr %arrayidx96.us186.1, align 8, !dbg !2151
  %arrayidx98.us180.1.prol = getelementptr inbounds ptr, ptr %141, i64 %126, !dbg !2151
  %142 = load ptr, ptr %arrayidx98.us180.1.prol, align 8, !dbg !2151
  %arrayidx103.us181.1.prol = getelementptr i8, ptr %arrayidx98.us180.1.prol, i64 -8, !dbg !2152
  %143 = load ptr, ptr %arrayidx103.us181.1.prol, align 8, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %142, ptr align 2 %143, i64 %mul105, i1 false), !dbg !2153
  %indvars.iv.next204.1.prol = add nsw i64 %126, 1, !dbg !2154
    #dbg_value(i64 %indvars.iv.next204.1.prol, !2078, !DIExpression(), !2083)
  br label %for.body94.us177.1.prol.loopexit, !dbg !2150

for.body94.us177.1.prol.loopexit:                 ; preds = %for.body94.us177.1.prol, %for.inc110.loopexit.us187
  %indvars.iv203.1.unr = phi i64 [ %126, %for.inc110.loopexit.us187 ], [ %indvars.iv.next204.1.prol, %for.body94.us177.1.prol ]
  %144 = icmp eq i64 %129, 0, !dbg !2150
  br i1 %144, label %if.end113, label %for.body94.us177.1, !dbg !2150

for.body94.us177.1:                               ; preds = %for.body94.us177.1.prol.loopexit, %for.body94.us177.1
  %indvars.iv203.1 = phi i64 [ %indvars.iv.next204.1.1, %for.body94.us177.1 ], [ %indvars.iv203.1.unr, %for.body94.us177.1.prol.loopexit ]
    #dbg_value(i64 %indvars.iv203.1, !2078, !DIExpression(), !2083)
  %145 = load ptr, ptr %arrayidx96.us186.1, align 8, !dbg !2151
  %arrayidx98.us180.1 = getelementptr inbounds ptr, ptr %145, i64 %indvars.iv203.1, !dbg !2151
  %146 = load ptr, ptr %arrayidx98.us180.1, align 8, !dbg !2151
  %arrayidx103.us181.1 = getelementptr i8, ptr %arrayidx98.us180.1, i64 -8, !dbg !2152
  %147 = load ptr, ptr %arrayidx103.us181.1, align 8, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %146, ptr align 2 %147, i64 %mul105, i1 false), !dbg !2153
    #dbg_value(i64 %indvars.iv203.1, !2078, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2083)
  %148 = load ptr, ptr %arrayidx96.us186.1, align 8, !dbg !2151
  %149 = getelementptr ptr, ptr %148, i64 %indvars.iv203.1, !dbg !2151
  %arrayidx98.us180.1.1 = getelementptr i8, ptr %149, i64 8, !dbg !2151
  %150 = load ptr, ptr %arrayidx98.us180.1.1, align 8, !dbg !2151
  %151 = load ptr, ptr %149, align 8, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %150, ptr align 2 %151, i64 %mul105, i1 false), !dbg !2153
  %indvars.iv.next204.1.1 = add nsw i64 %indvars.iv203.1, 2, !dbg !2154
    #dbg_value(i64 %indvars.iv.next204.1.1, !2078, !DIExpression(), !2083)
  %exitcond207.1.not.1 = icmp eq i64 %indvars.iv.next204.1.1, %wide.trip.count206, !dbg !2146
  br i1 %exitcond207.1.not.1, label %if.end113, label %for.body94.us177.1, !dbg !2150, !llvm.loop !2155

if.end113:                                        ; preds = %for.body94.us177.1.prol.loopexit, %for.body94.us177.1, %for.body94.us.1.prol.loopexit, %for.body94.us.1, %for.cond43.preheader.split, %if.end83.loopexit.us.1, %if.end39
  ret void, !dbg !2158
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/input.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "80e81f41360cea424cc87a4c31e56ba6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 888, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 111)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 54)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 80)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 547, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 32)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 551, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 33)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !28, retainedTypes: !68, globals: !77, splitDebugInlining: false, nameTableKind: None)
!28 = !{!29, !38, !44, !53, !60}
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 22, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!34 = !DIEnumerator(name: "YUV400", value: 0)
!35 = !DIEnumerator(name: "YUV420", value: 1)
!36 = !DIEnumerator(name: "YUV422", value: 2)
!37 = !DIEnumerator(name: "YUV444", value: 3)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 15, baseType: !31, size: 32, elements: !39)
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!41 = !DIEnumerator(name: "CM_YUV", value: 0)
!42 = !DIEnumerator(name: "CM_RGB", value: 1)
!43 = !DIEnumerator(name: "CM_XYZ", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 25, baseType: !31, size: 32, elements: !46)
!45 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!46 = !{!47, !48, !49, !50, !51, !52}
!47 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!48 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!49 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!50 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!51 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!52 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 135, baseType: !55, size: 32, elements: !56)
!54 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "FRAME", value: 0)
!58 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!59 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 22, baseType: !55, size: 32, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !67}
!62 = !DIEnumerator(name: "PLANE_Y", value: 0)
!63 = !DIEnumerator(name: "PLANE_U", value: 1)
!64 = !DIEnumerator(name: "PLANE_V", value: 2)
!65 = !DIEnumerator(name: "PLANE_G", value: 0)
!66 = !DIEnumerator(name: "PLANE_B", value: 1)
!67 = !DIEnumerator(name: "PLANE_R", value: 2)
!68 = !{!69, !73, !31, !76}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !71, line: 21, baseType: !72)
!71 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!72 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !71, line: 41, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !71, line: 23, baseType: !75)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!77 = !{!0, !7, !12, !17, !22}
!78 = !{i32 7, !"Dwarf Version", i32 5}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"wchar_size", i32 4}
!81 = !{i32 8, !"PIC Level", i32 2}
!82 = !{i32 7, !"PIE Level", i32 2}
!83 = !{i32 7, !"uwtable", i32 2}
!84 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!85 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!86 = distinct !DISubprogram(name: "initInput", scope: !2, file: !2, line: 40, type: !87, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1264)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !89, !1263, !1263}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !91, line: 836, baseType: !92)
!91 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !91, line: 566, size: 6855040, elements: !93)
!93 = !{!94, !179, !232, !333, !335, !337, !395, !397, !398, !399, !400, !401, !404, !424, !436, !437, !438, !439, !440, !441, !1010, !1011, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1021, !1024, !1025, !1027, !1028, !1029, !1030, !1031, !1033, !1034, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1158, !1159, !1161, !1162, !1165, !1168, !1169, !1170, !1174, !1177, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1189, !1192, !1193, !1194, !1195, !1198, !1203, !1207, !1211, !1215, !1216, !1220, !1221, !1225, !1226, !1230, !1251, !1252, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !92, file: !91, line: 568, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !91, line: 850, size: 32128, elements: !97)
!97 = !{!98, !102, !103, !104, !105, !106, !107, !108, !109, !110, !140, !141, !142, !143, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !96, file: !91, line: 852, baseType: !99, size: 2040)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 255)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !96, file: !91, line: 853, baseType: !99, size: 2040, offset: 2040)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !96, file: !91, line: 854, baseType: !99, size: 2040, offset: 4080)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !96, file: !91, line: 856, baseType: !31, size: 32, offset: 6144)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !96, file: !91, line: 857, baseType: !31, size: 32, offset: 6176)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !96, file: !91, line: 858, baseType: !31, size: 32, offset: 6208)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !96, file: !91, line: 859, baseType: !31, size: 32, offset: 6240)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !96, file: !91, line: 860, baseType: !31, size: 32, offset: 6272)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !96, file: !91, line: 861, baseType: !31, size: 32, offset: 6304)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !96, file: !91, line: 864, baseType: !111, size: 1088, offset: 6336)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !30, line: 52, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !30, line: 30, size: 1088, elements: !113)
!113 = !{!114, !116, !118, !120, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !112, file: !30, line: 32, baseType: !115, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !30, line: 28, baseType: !29)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !112, file: !30, line: 33, baseType: !117, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !30, line: 20, baseType: !38)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !112, file: !30, line: 34, baseType: !119, size: 64, offset: 64)
!119 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !112, file: !30, line: 35, baseType: !121, size: 96, offset: 128)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 3)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !112, file: !30, line: 36, baseType: !121, size: 96, offset: 224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !112, file: !30, line: 37, baseType: !31, size: 32, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !112, file: !30, line: 38, baseType: !31, size: 32, offset: 352)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !112, file: !30, line: 39, baseType: !31, size: 32, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !112, file: !30, line: 40, baseType: !31, size: 32, offset: 416)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !112, file: !30, line: 41, baseType: !31, size: 32, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !112, file: !30, line: 42, baseType: !31, size: 32, offset: 480)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !112, file: !30, line: 43, baseType: !31, size: 32, offset: 512)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !112, file: !30, line: 44, baseType: !31, size: 32, offset: 544)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !112, file: !30, line: 45, baseType: !121, size: 96, offset: 576)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !112, file: !30, line: 46, baseType: !31, size: 32, offset: 672)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !112, file: !30, line: 47, baseType: !121, size: 96, offset: 704)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !112, file: !30, line: 48, baseType: !121, size: 96, offset: 800)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !112, file: !30, line: 49, baseType: !121, size: 96, offset: 896)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !112, file: !30, line: 50, baseType: !31, size: 32, offset: 992)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !112, file: !30, line: 51, baseType: !31, size: 32, offset: 1024)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !96, file: !91, line: 865, baseType: !111, size: 1088, offset: 7424)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !96, file: !91, line: 867, baseType: !31, size: 32, offset: 8512)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !96, file: !91, line: 868, baseType: !31, size: 32, offset: 8544)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !96, file: !91, line: 869, baseType: !144, size: 7744, offset: 8576)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !45, line: 60, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !45, line: 34, size: 7744, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !145, file: !45, line: 37, baseType: !99, size: 2040)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !145, file: !45, line: 38, baseType: !99, size: 2040, offset: 2040)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !145, file: !45, line: 39, baseType: !99, size: 2040, offset: 4080)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !145, file: !45, line: 40, baseType: !31, size: 32, offset: 6144)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !145, file: !45, line: 41, baseType: !152, size: 32, offset: 6176)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !45, line: 32, baseType: !44)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !145, file: !45, line: 42, baseType: !111, size: 1088, offset: 6208)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !145, file: !45, line: 43, baseType: !31, size: 32, offset: 7296)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !145, file: !45, line: 44, baseType: !31, size: 32, offset: 7328)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !145, file: !45, line: 45, baseType: !31, size: 32, offset: 7360)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !145, file: !45, line: 46, baseType: !31, size: 32, offset: 7392)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !145, file: !45, line: 47, baseType: !31, size: 32, offset: 7424)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !145, file: !45, line: 48, baseType: !31, size: 32, offset: 7456)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !145, file: !45, line: 49, baseType: !31, size: 32, offset: 7488)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !145, file: !45, line: 50, baseType: !31, size: 32, offset: 7520)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !145, file: !45, line: 51, baseType: !31, size: 32, offset: 7552)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !145, file: !45, line: 52, baseType: !31, size: 32, offset: 7584)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !145, file: !45, line: 53, baseType: !31, size: 32, offset: 7616)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !145, file: !45, line: 56, baseType: !166, size: 64, offset: 7680)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !96, file: !91, line: 870, baseType: !144, size: 7744, offset: 16320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !96, file: !91, line: 871, baseType: !144, size: 7744, offset: 24064)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !96, file: !91, line: 873, baseType: !31, size: 32, offset: 31808)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !96, file: !91, line: 884, baseType: !31, size: 32, offset: 31840)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !96, file: !91, line: 885, baseType: !31, size: 32, offset: 31872)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !96, file: !91, line: 886, baseType: !31, size: 32, offset: 31904)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !96, file: !91, line: 890, baseType: !31, size: 32, offset: 31936)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !96, file: !91, line: 893, baseType: !31, size: 32, offset: 31968)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !96, file: !91, line: 894, baseType: !31, size: 32, offset: 32000)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !96, file: !91, line: 895, baseType: !31, size: 32, offset: 32032)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !96, file: !91, line: 897, baseType: !31, size: 32, offset: 32064)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !96, file: !91, line: 899, baseType: !31, size: 32, offset: 32096)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !92, file: !91, line: 569, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !182, line: 138, baseType: !183)
!182 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 94, size: 17728, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !195, !200, !204, !207, !208, !209, !210, !211, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !183, file: !182, line: 96, baseType: !31, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !183, file: !182, line: 97, baseType: !55, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !183, file: !182, line: 98, baseType: !55, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !183, file: !182, line: 99, baseType: !31, size: 32, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !183, file: !182, line: 100, baseType: !31, size: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !183, file: !182, line: 102, baseType: !31, size: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !183, file: !182, line: 103, baseType: !192, size: 384, offset: 192)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 384, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 12)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !183, file: !182, line: 104, baseType: !196, size: 3072, offset: 576)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3072, elements: !197)
!197 = !{!198, !199}
!198 = !DISubrange(count: 6)
!199 = !DISubrange(count: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !183, file: !182, line: 105, baseType: !201, size: 12288, offset: 3648)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 12288, elements: !202)
!202 = !{!198, !203}
!203 = !DISubrange(count: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !183, file: !182, line: 106, baseType: !205, size: 192, offset: 15936)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 192, elements: !206)
!206 = !{!198}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !183, file: !182, line: 107, baseType: !205, size: 192, offset: 16128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !183, file: !182, line: 110, baseType: !31, size: 32, offset: 16320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !183, file: !182, line: 111, baseType: !55, size: 32, offset: 16352)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !183, file: !182, line: 112, baseType: !55, size: 32, offset: 16384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !183, file: !182, line: 114, baseType: !212, size: 256, offset: 16416)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 8)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !183, file: !182, line: 116, baseType: !212, size: 256, offset: 16672)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !183, file: !182, line: 117, baseType: !212, size: 256, offset: 16928)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !183, file: !182, line: 119, baseType: !31, size: 32, offset: 17184)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !183, file: !182, line: 120, baseType: !55, size: 32, offset: 17216)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !183, file: !182, line: 122, baseType: !55, size: 32, offset: 17248)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !183, file: !182, line: 123, baseType: !69, size: 64, offset: 17280)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !183, file: !182, line: 125, baseType: !31, size: 32, offset: 17344)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !183, file: !182, line: 126, baseType: !31, size: 32, offset: 17376)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !183, file: !182, line: 127, baseType: !31, size: 32, offset: 17408)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !183, file: !182, line: 128, baseType: !55, size: 32, offset: 17440)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !183, file: !182, line: 129, baseType: !31, size: 32, offset: 17472)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !183, file: !182, line: 130, baseType: !31, size: 32, offset: 17504)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !183, file: !182, line: 131, baseType: !31, size: 32, offset: 17536)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !183, file: !182, line: 133, baseType: !31, size: 32, offset: 17568)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !183, file: !182, line: 135, baseType: !31, size: 32, offset: 17600)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !183, file: !182, line: 136, baseType: !31, size: 32, offset: 17632)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !183, file: !182, line: 137, baseType: !31, size: 32, offset: 17664)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !92, file: !91, line: 570, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !182, line: 197, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 142, size: 33024, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !331, !332}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !235, file: !182, line: 144, baseType: !31, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !235, file: !182, line: 146, baseType: !55, size: 32, offset: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !235, file: !182, line: 147, baseType: !31, size: 32, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !235, file: !182, line: 148, baseType: !31, size: 32, offset: 96)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !235, file: !182, line: 149, baseType: !31, size: 32, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !235, file: !182, line: 150, baseType: !31, size: 32, offset: 160)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !235, file: !182, line: 152, baseType: !31, size: 32, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !235, file: !182, line: 154, baseType: !55, size: 32, offset: 224)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !235, file: !182, line: 155, baseType: !55, size: 32, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !235, file: !182, line: 156, baseType: !55, size: 32, offset: 288)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !235, file: !182, line: 158, baseType: !31, size: 32, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !235, file: !182, line: 159, baseType: !192, size: 384, offset: 352)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !235, file: !182, line: 160, baseType: !196, size: 3072, offset: 736)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !235, file: !182, line: 161, baseType: !201, size: 12288, offset: 3808)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !235, file: !182, line: 162, baseType: !205, size: 192, offset: 16096)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !235, file: !182, line: 163, baseType: !205, size: 192, offset: 16288)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !235, file: !182, line: 165, baseType: !55, size: 32, offset: 16480)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !235, file: !182, line: 166, baseType: !55, size: 32, offset: 16512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !235, file: !182, line: 167, baseType: !55, size: 32, offset: 16544)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !235, file: !182, line: 168, baseType: !55, size: 32, offset: 16576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !235, file: !182, line: 170, baseType: !55, size: 32, offset: 16608)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !235, file: !182, line: 172, baseType: !31, size: 32, offset: 16640)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !235, file: !182, line: 173, baseType: !31, size: 32, offset: 16672)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !235, file: !182, line: 174, baseType: !31, size: 32, offset: 16704)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !235, file: !182, line: 175, baseType: !55, size: 32, offset: 16736)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !235, file: !182, line: 177, baseType: !263, size: 8192, offset: 16768)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8192, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !235, file: !182, line: 178, baseType: !55, size: 32, offset: 24960)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !235, file: !182, line: 179, baseType: !31, size: 32, offset: 24992)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !235, file: !182, line: 180, baseType: !55, size: 32, offset: 25024)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !235, file: !182, line: 181, baseType: !55, size: 32, offset: 25056)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !235, file: !182, line: 182, baseType: !31, size: 32, offset: 25088)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !235, file: !182, line: 184, baseType: !31, size: 32, offset: 25120)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !235, file: !182, line: 185, baseType: !31, size: 32, offset: 25152)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !235, file: !182, line: 186, baseType: !31, size: 32, offset: 25184)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !235, file: !182, line: 187, baseType: !55, size: 32, offset: 25216)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !235, file: !182, line: 188, baseType: !55, size: 32, offset: 25248)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !235, file: !182, line: 189, baseType: !55, size: 32, offset: 25280)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !235, file: !182, line: 190, baseType: !55, size: 32, offset: 25312)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !235, file: !182, line: 191, baseType: !31, size: 32, offset: 25344)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !235, file: !182, line: 192, baseType: !280, size: 7584, offset: 25376)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !182, line: 90, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 53, size: 7584, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !281, file: !182, line: 55, baseType: !31, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !281, file: !182, line: 56, baseType: !55, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !281, file: !182, line: 57, baseType: !75, size: 16, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !281, file: !182, line: 58, baseType: !75, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !281, file: !182, line: 59, baseType: !31, size: 32, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !281, file: !182, line: 60, baseType: !31, size: 32, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !281, file: !182, line: 61, baseType: !31, size: 32, offset: 160)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !281, file: !182, line: 62, baseType: !55, size: 32, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !281, file: !182, line: 63, baseType: !31, size: 32, offset: 224)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !281, file: !182, line: 64, baseType: !31, size: 32, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !281, file: !182, line: 65, baseType: !55, size: 32, offset: 288)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !281, file: !182, line: 66, baseType: !55, size: 32, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !281, file: !182, line: 67, baseType: !55, size: 32, offset: 352)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !281, file: !182, line: 68, baseType: !31, size: 32, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !281, file: !182, line: 69, baseType: !55, size: 32, offset: 416)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !281, file: !182, line: 70, baseType: !55, size: 32, offset: 448)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !281, file: !182, line: 71, baseType: !31, size: 32, offset: 480)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !281, file: !182, line: 72, baseType: !55, size: 32, offset: 512)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !281, file: !182, line: 73, baseType: !55, size: 32, offset: 544)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !281, file: !182, line: 74, baseType: !31, size: 32, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !281, file: !182, line: 75, baseType: !31, size: 32, offset: 608)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !281, file: !182, line: 76, baseType: !305, size: 3296, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !182, line: 50, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 38, size: 3296, elements: !307)
!307 = !{!308, !309, !310, !311, !313, !314, !315, !316, !317, !318}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !306, file: !182, line: 40, baseType: !55, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !306, file: !182, line: 41, baseType: !55, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !306, file: !182, line: 42, baseType: !55, size: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !306, file: !182, line: 43, baseType: !312, size: 1024, offset: 96)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 1024, elements: !20)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !306, file: !182, line: 44, baseType: !312, size: 1024, offset: 1120)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !306, file: !182, line: 45, baseType: !312, size: 1024, offset: 2144)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !306, file: !182, line: 46, baseType: !55, size: 32, offset: 3168)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !306, file: !182, line: 47, baseType: !55, size: 32, offset: 3200)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !306, file: !182, line: 48, baseType: !55, size: 32, offset: 3232)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !306, file: !182, line: 49, baseType: !55, size: 32, offset: 3264)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !281, file: !182, line: 77, baseType: !31, size: 32, offset: 3936)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !281, file: !182, line: 78, baseType: !305, size: 3296, offset: 3968)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !281, file: !182, line: 80, baseType: !31, size: 32, offset: 7264)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !281, file: !182, line: 81, baseType: !31, size: 32, offset: 7296)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !281, file: !182, line: 82, baseType: !31, size: 32, offset: 7328)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !281, file: !182, line: 83, baseType: !31, size: 32, offset: 7360)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !281, file: !182, line: 84, baseType: !55, size: 32, offset: 7392)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !281, file: !182, line: 85, baseType: !55, size: 32, offset: 7424)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !281, file: !182, line: 86, baseType: !55, size: 32, offset: 7456)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !281, file: !182, line: 87, baseType: !55, size: 32, offset: 7488)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !281, file: !182, line: 88, baseType: !55, size: 32, offset: 7520)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !281, file: !182, line: 89, baseType: !55, size: 32, offset: 7552)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !235, file: !182, line: 193, baseType: !55, size: 32, offset: 32960)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !235, file: !182, line: 195, baseType: !31, size: 32, offset: 32992)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !92, file: !91, line: 571, baseType: !334, size: 1056768, offset: 192)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 1056768, elements: !20)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !92, file: !91, line: 572, baseType: !336, size: 4538368, offset: 1056960)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 4538368, elements: !264)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !92, file: !91, line: 575, baseType: !338, size: 64, offset: 5595328)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !182, line: 256, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 228, size: 37312, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !362, !363, !364, !365}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !340, file: !182, line: 230, baseType: !234, size: 33024)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !340, file: !182, line: 232, baseType: !55, size: 32, offset: 33024)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !340, file: !182, line: 233, baseType: !31, size: 32, offset: 33056)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !340, file: !182, line: 234, baseType: !166, size: 64, offset: 33088)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !340, file: !182, line: 235, baseType: !166, size: 64, offset: 33152)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !340, file: !182, line: 236, baseType: !348, size: 64, offset: 33216)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !340, file: !182, line: 237, baseType: !166, size: 64, offset: 33280)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !340, file: !182, line: 238, baseType: !348, size: 64, offset: 33344)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !340, file: !182, line: 240, baseType: !166, size: 64, offset: 33408)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !340, file: !182, line: 241, baseType: !348, size: 64, offset: 33472)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !340, file: !182, line: 242, baseType: !166, size: 64, offset: 33536)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !340, file: !182, line: 243, baseType: !348, size: 64, offset: 33600)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !340, file: !182, line: 245, baseType: !31, size: 32, offset: 33664)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !340, file: !182, line: 246, baseType: !166, size: 64, offset: 33728)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !340, file: !182, line: 247, baseType: !166, size: 64, offset: 33792)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !340, file: !182, line: 248, baseType: !348, size: 64, offset: 33856)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !340, file: !182, line: 249, baseType: !348, size: 64, offset: 33920)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !340, file: !182, line: 250, baseType: !361, size: 64, offset: 33984)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !340, file: !182, line: 251, baseType: !348, size: 64, offset: 34048)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !340, file: !182, line: 253, baseType: !55, size: 32, offset: 34112)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !340, file: !182, line: 254, baseType: !31, size: 32, offset: 34144)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !340, file: !182, line: 255, baseType: !366, size: 3136, offset: 34176)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !182, line: 226, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !182, line: 200, size: 3136, elements: !368)
!368 = !{!369, !370, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !388, !389, !391, !392, !393, !394}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !367, file: !182, line: 202, baseType: !31, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !367, file: !182, line: 203, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !367, file: !182, line: 204, baseType: !166, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !367, file: !182, line: 205, baseType: !348, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !367, file: !182, line: 206, baseType: !371, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !367, file: !182, line: 207, baseType: !166, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !367, file: !182, line: 208, baseType: !166, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !367, file: !182, line: 209, baseType: !371, size: 64, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !367, file: !182, line: 210, baseType: !371, size: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !367, file: !182, line: 211, baseType: !371, size: 64, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !367, file: !182, line: 212, baseType: !371, size: 64, offset: 640)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !367, file: !182, line: 213, baseType: !371, size: 64, offset: 704)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !367, file: !182, line: 216, baseType: !372, size: 8, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !367, file: !182, line: 217, baseType: !372, size: 8, offset: 776)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !367, file: !182, line: 218, baseType: !372, size: 8, offset: 784)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !367, file: !182, line: 219, baseType: !387, size: 1024, offset: 800)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1024, elements: !20)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !367, file: !182, line: 220, baseType: !387, size: 1024, offset: 1824)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !367, file: !182, line: 221, baseType: !390, size: 256, offset: 2848)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 256, elements: !20)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !367, file: !182, line: 222, baseType: !372, size: 8, offset: 3104)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !367, file: !182, line: 223, baseType: !372, size: 8, offset: 3112)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !367, file: !182, line: 224, baseType: !372, size: 8, offset: 3120)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !367, file: !182, line: 225, baseType: !372, size: 8, offset: 3128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !92, file: !91, line: 577, baseType: !396, size: 1193984, offset: 5595392)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 1193984, elements: !20)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !92, file: !91, line: 578, baseType: !31, size: 32, offset: 6789376)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !92, file: !91, line: 579, baseType: !31, size: 32, offset: 6789408)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !92, file: !91, line: 580, baseType: !31, size: 32, offset: 6789440)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !92, file: !91, line: 581, baseType: !31, size: 32, offset: 6789472)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !92, file: !91, line: 584, baseType: !402, size: 64, offset: 6789504)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !91, line: 584, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !92, file: !91, line: 586, baseType: !405, size: 64, offset: 6789568)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !91, line: 902, size: 416, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413, !417, !418, !419, !420, !421, !422, !423}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !406, file: !91, line: 904, baseType: !55, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !406, file: !91, line: 905, baseType: !55, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !406, file: !91, line: 906, baseType: !31, size: 32, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !406, file: !91, line: 907, baseType: !55, size: 32, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !406, file: !91, line: 908, baseType: !31, size: 32, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !406, file: !91, line: 909, baseType: !414, size: 64, offset: 160)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 2)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !406, file: !91, line: 910, baseType: !70, size: 8, offset: 224)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !406, file: !91, line: 911, baseType: !70, size: 8, offset: 232)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !406, file: !91, line: 912, baseType: !31, size: 32, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !406, file: !91, line: 913, baseType: !31, size: 32, offset: 288)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !406, file: !91, line: 915, baseType: !31, size: 32, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !406, file: !91, line: 916, baseType: !31, size: 32, offset: 352)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !406, file: !91, line: 917, baseType: !31, size: 32, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !92, file: !91, line: 587, baseType: !425, size: 64, offset: 6789632)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !91, line: 839, size: 512, elements: !427)
!427 = !{!428, !429, !432, !433, !434, !435}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !426, file: !91, line: 841, baseType: !31, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !426, file: !91, line: 842, baseType: !430, size: 96, offset: 32)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 96, elements: !122)
!431 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !426, file: !91, line: 843, baseType: !430, size: 96, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !426, file: !91, line: 844, baseType: !430, size: 96, offset: 224)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !426, file: !91, line: 845, baseType: !430, size: 96, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !426, file: !91, line: 846, baseType: !430, size: 96, offset: 416)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !92, file: !91, line: 588, baseType: !31, size: 32, offset: 6789696)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !92, file: !91, line: 591, baseType: !55, size: 32, offset: 6789728)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !92, file: !91, line: 592, baseType: !31, size: 32, offset: 6789760)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !92, file: !91, line: 593, baseType: !31, size: 32, offset: 6789792)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !92, file: !91, line: 594, baseType: !31, size: 32, offset: 6789824)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !92, file: !91, line: 595, baseType: !442, size: 64, offset: 6789888)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !91, line: 542, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !91, line: 341, size: 109184, elements: !446)
!446 = !{!447, !449, !450, !451, !452, !453, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !673, !675, !838, !867, !894, !897, !898, !900, !901, !902, !903, !904, !905, !906, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !933, !934, !935, !936, !937, !938, !941, !942, !945, !946, !948, !951, !952, !953, !954, !955, !956, !957, !958, !959, !961, !962, !963, !964, !965, !968, !969, !970, !974, !978, !982, !986, !990, !991, !992, !993, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1007, !1008}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !445, file: !91, line: 343, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !445, file: !91, line: 344, baseType: !95, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !445, file: !91, line: 345, baseType: !180, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !445, file: !91, line: 346, baseType: !233, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !445, file: !91, line: 347, baseType: !31, size: 32, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !445, file: !91, line: 350, baseType: !454, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !456, line: 186, size: 33408, elements: !457)
!456 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!457 = !{!458, !459, !462, !607, !608, !609, !610, !611, !612, !613, !614, !615, !619, !620, !621}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !455, file: !456, line: 188, baseType: !89, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !455, file: !456, line: 189, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !91, line: 900, baseType: !96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !455, file: !456, line: 190, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !456, line: 182, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !456, line: 152, size: 768, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !602, !603, !604, !605, !606}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !466, file: !456, line: 154, baseType: !31, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !466, file: !456, line: 155, baseType: !31, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !466, file: !456, line: 156, baseType: !31, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !466, file: !456, line: 157, baseType: !31, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !466, file: !456, line: 159, baseType: !31, size: 32, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !466, file: !456, line: 161, baseType: !55, size: 32, offset: 160)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !466, file: !456, line: 162, baseType: !55, size: 32, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !466, file: !456, line: 164, baseType: !31, size: 32, offset: 224)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !466, file: !456, line: 165, baseType: !31, size: 32, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !466, file: !456, line: 166, baseType: !31, size: 32, offset: 288)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !466, file: !456, line: 167, baseType: !31, size: 32, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !466, file: !456, line: 170, baseType: !31, size: 32, offset: 352)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !466, file: !456, line: 172, baseType: !481, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !456, line: 138, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !456, line: 46, size: 3328, elements: !484)
!484 = !{!485, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !522, !524, !525, !542, !544, !548, !550, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !483, file: !456, line: 48, baseType: !486, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !54, line: 140, baseType: !53)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !483, file: !456, line: 50, baseType: !31, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !483, file: !456, line: 51, baseType: !31, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !483, file: !456, line: 52, baseType: !31, size: 32, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !483, file: !456, line: 53, baseType: !31, size: 32, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !483, file: !456, line: 54, baseType: !55, size: 32, offset: 160)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !483, file: !456, line: 55, baseType: !55, size: 32, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !483, file: !456, line: 57, baseType: !31, size: 32, offset: 224)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !483, file: !456, line: 58, baseType: !31, size: 32, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !483, file: !456, line: 59, baseType: !31, size: 32, offset: 288)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !483, file: !456, line: 61, baseType: !70, size: 8, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !483, file: !456, line: 62, baseType: !31, size: 32, offset: 352)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !483, file: !456, line: 63, baseType: !31, size: 32, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !483, file: !456, line: 64, baseType: !31, size: 32, offset: 416)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !483, file: !456, line: 65, baseType: !31, size: 32, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !483, file: !456, line: 67, baseType: !502, size: 16, offset: 480)
!502 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !483, file: !456, line: 69, baseType: !31, size: 32, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !483, file: !456, line: 69, baseType: !31, size: 32, offset: 544)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !483, file: !456, line: 69, baseType: !31, size: 32, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !483, file: !456, line: 69, baseType: !31, size: 32, offset: 608)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !483, file: !456, line: 70, baseType: !31, size: 32, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !483, file: !456, line: 70, baseType: !31, size: 32, offset: 672)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !483, file: !456, line: 70, baseType: !31, size: 32, offset: 704)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !483, file: !456, line: 70, baseType: !31, size: 32, offset: 736)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !483, file: !456, line: 71, baseType: !31, size: 32, offset: 768)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !483, file: !456, line: 72, baseType: !31, size: 32, offset: 800)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !483, file: !456, line: 73, baseType: !55, size: 32, offset: 832)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !483, file: !456, line: 74, baseType: !55, size: 32, offset: 864)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !483, file: !456, line: 75, baseType: !31, size: 32, offset: 896)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !483, file: !456, line: 75, baseType: !31, size: 32, offset: 928)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !483, file: !456, line: 76, baseType: !31, size: 32, offset: 960)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !483, file: !456, line: 76, baseType: !31, size: 32, offset: 992)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !483, file: !456, line: 79, baseType: !520, size: 64, offset: 1024)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !483, file: !456, line: 80, baseType: !523, size: 64, offset: 1088)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !483, file: !456, line: 81, baseType: !523, size: 64, offset: 1152)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !483, file: !456, line: 84, baseType: !526, size: 64, offset: 1216)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !456, line: 36, size: 256, elements: !529)
!529 = !{!530, !533, !540}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !528, file: !456, line: 38, baseType: !531, size: 128)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 128, elements: !415)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !528, file: !456, line: 39, baseType: !534, size: 64, offset: 128)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 64, elements: !415)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !91, line: 104, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 100, size: 32, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !536, file: !91, line: 102, baseType: !502, size: 16)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !536, file: !91, line: 103, baseType: !502, size: 16, offset: 16)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !528, file: !456, line: 40, baseType: !541, size: 16, offset: 192)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 16, elements: !415)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !483, file: !456, line: 85, baseType: !543, size: 192, offset: 1280)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 192, elements: !122)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !483, file: !456, line: 87, baseType: !545, size: 64, offset: 1472)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !456, line: 29, size: 64, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !545, file: !456, line: 31, baseType: !69, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !483, file: !456, line: 88, baseType: !549, size: 192, offset: 1536)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 192, elements: !122)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !483, file: !456, line: 90, baseType: !551, size: 64, offset: 1728)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !483, file: !456, line: 92, baseType: !532, size: 64, offset: 1792)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !483, file: !456, line: 93, baseType: !532, size: 64, offset: 1856)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !483, file: !456, line: 94, baseType: !532, size: 64, offset: 1920)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !483, file: !456, line: 96, baseType: !31, size: 32, offset: 1984)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !483, file: !456, line: 97, baseType: !31, size: 32, offset: 2016)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !483, file: !456, line: 98, baseType: !31, size: 32, offset: 2048)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !483, file: !456, line: 99, baseType: !31, size: 32, offset: 2080)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !483, file: !456, line: 100, baseType: !31, size: 32, offset: 2112)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !483, file: !456, line: 102, baseType: !31, size: 32, offset: 2144)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !483, file: !456, line: 103, baseType: !31, size: 32, offset: 2176)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !483, file: !456, line: 104, baseType: !31, size: 32, offset: 2208)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !483, file: !456, line: 105, baseType: !31, size: 32, offset: 2240)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !483, file: !456, line: 106, baseType: !31, size: 32, offset: 2272)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !483, file: !456, line: 107, baseType: !31, size: 32, offset: 2304)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !483, file: !456, line: 108, baseType: !31, size: 32, offset: 2336)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !483, file: !456, line: 109, baseType: !31, size: 32, offset: 2368)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !483, file: !456, line: 110, baseType: !414, size: 64, offset: 2400)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !483, file: !456, line: 111, baseType: !31, size: 32, offset: 2464)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !483, file: !456, line: 112, baseType: !572, size: 64, offset: 2496)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !91, line: 194, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !91, line: 186, size: 256, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !574, file: !91, line: 188, baseType: !31, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !574, file: !91, line: 189, baseType: !31, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !574, file: !91, line: 190, baseType: !31, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !574, file: !91, line: 191, baseType: !31, size: 32, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !574, file: !91, line: 192, baseType: !31, size: 32, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !574, file: !91, line: 193, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !483, file: !456, line: 115, baseType: !31, size: 32, offset: 2560)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !483, file: !456, line: 118, baseType: !31, size: 32, offset: 2592)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !483, file: !456, line: 119, baseType: !31, size: 32, offset: 2624)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !483, file: !456, line: 120, baseType: !31, size: 32, offset: 2656)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !483, file: !456, line: 121, baseType: !521, size: 64, offset: 2688)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !483, file: !456, line: 124, baseType: !31, size: 32, offset: 2752)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !483, file: !456, line: 125, baseType: !31, size: 32, offset: 2784)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !483, file: !456, line: 126, baseType: !31, size: 32, offset: 2816)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !483, file: !456, line: 128, baseType: !31, size: 32, offset: 2848)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !483, file: !456, line: 129, baseType: !31, size: 32, offset: 2880)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !483, file: !456, line: 130, baseType: !31, size: 32, offset: 2912)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !483, file: !456, line: 131, baseType: !31, size: 32, offset: 2944)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !483, file: !456, line: 132, baseType: !520, size: 64, offset: 3008)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !483, file: !456, line: 133, baseType: !31, size: 32, offset: 3072)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !483, file: !456, line: 134, baseType: !31, size: 32, offset: 3104)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !483, file: !456, line: 136, baseType: !541, size: 16, offset: 3136)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !483, file: !456, line: 137, baseType: !600, size: 128, offset: 3200)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 128, elements: !415)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !466, file: !456, line: 173, baseType: !481, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !466, file: !456, line: 174, baseType: !481, size: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !466, file: !456, line: 177, baseType: !31, size: 32, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !466, file: !456, line: 178, baseType: !414, size: 64, offset: 608)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !466, file: !456, line: 179, baseType: !414, size: 64, offset: 672)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !455, file: !456, line: 191, baseType: !463, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !455, file: !456, line: 192, baseType: !463, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !455, file: !456, line: 193, baseType: !55, size: 32, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !455, file: !456, line: 194, baseType: !55, size: 32, offset: 352)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !455, file: !456, line: 195, baseType: !55, size: 32, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !455, file: !456, line: 196, baseType: !55, size: 32, offset: 416)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !455, file: !456, line: 197, baseType: !31, size: 32, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !455, file: !456, line: 199, baseType: !31, size: 32, offset: 480)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !455, file: !456, line: 200, baseType: !616, size: 32768, offset: 512)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32768, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 1024)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !455, file: !456, line: 205, baseType: !31, size: 32, offset: 33280)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !455, file: !456, line: 206, baseType: !31, size: 32, offset: 33312)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !455, file: !456, line: 208, baseType: !464, size: 64, offset: 33344)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !445, file: !91, line: 353, baseType: !31, size: 32, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !445, file: !91, line: 354, baseType: !31, size: 32, offset: 416)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !445, file: !91, line: 355, baseType: !31, size: 32, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !445, file: !91, line: 356, baseType: !31, size: 32, offset: 480)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !445, file: !91, line: 357, baseType: !31, size: 32, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !445, file: !91, line: 359, baseType: !31, size: 32, offset: 544)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !445, file: !91, line: 360, baseType: !31, size: 32, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !445, file: !91, line: 361, baseType: !31, size: 32, offset: 608)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !445, file: !91, line: 365, baseType: !55, size: 32, offset: 640)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !445, file: !91, line: 366, baseType: !31, size: 32, offset: 672)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !445, file: !91, line: 368, baseType: !414, size: 64, offset: 704)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !445, file: !91, line: 372, baseType: !31, size: 32, offset: 768)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !445, file: !91, line: 378, baseType: !55, size: 32, offset: 800)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !445, file: !91, line: 379, baseType: !31, size: 32, offset: 832)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !445, file: !91, line: 387, baseType: !55, size: 32, offset: 864)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !445, file: !91, line: 388, baseType: !55, size: 32, offset: 896)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !445, file: !91, line: 389, baseType: !502, size: 16, offset: 928)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !445, file: !91, line: 396, baseType: !31, size: 32, offset: 960)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !445, file: !91, line: 397, baseType: !31, size: 32, offset: 992)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !445, file: !91, line: 400, baseType: !31, size: 32, offset: 1024)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !445, file: !91, line: 401, baseType: !31, size: 32, offset: 1056)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !445, file: !91, line: 402, baseType: !414, size: 64, offset: 1088)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !445, file: !91, line: 406, baseType: !31, size: 32, offset: 1152)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !445, file: !91, line: 407, baseType: !31, size: 32, offset: 1184)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !445, file: !91, line: 408, baseType: !31, size: 32, offset: 1216)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !445, file: !91, line: 409, baseType: !31, size: 32, offset: 1248)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !445, file: !91, line: 410, baseType: !31, size: 32, offset: 1280)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !445, file: !91, line: 411, baseType: !31, size: 32, offset: 1312)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !445, file: !91, line: 412, baseType: !31, size: 32, offset: 1344)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !445, file: !91, line: 413, baseType: !55, size: 32, offset: 1376)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !445, file: !91, line: 414, baseType: !55, size: 32, offset: 1408)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !445, file: !91, line: 415, baseType: !70, size: 8, offset: 1440)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !445, file: !91, line: 416, baseType: !486, size: 32, offset: 1472)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !445, file: !91, line: 417, baseType: !31, size: 32, offset: 1504)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !445, file: !91, line: 418, baseType: !31, size: 32, offset: 1536)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !445, file: !91, line: 419, baseType: !31, size: 32, offset: 1568)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !445, file: !91, line: 420, baseType: !31, size: 32, offset: 1600)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !445, file: !91, line: 421, baseType: !31, size: 32, offset: 1632)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !445, file: !91, line: 422, baseType: !31, size: 32, offset: 1664)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !445, file: !91, line: 423, baseType: !31, size: 32, offset: 1696)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !445, file: !91, line: 426, baseType: !31, size: 32, offset: 1728)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !445, file: !91, line: 427, baseType: !31, size: 32, offset: 1760)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !445, file: !91, line: 428, baseType: !31, size: 32, offset: 1792)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !445, file: !91, line: 429, baseType: !31, size: 32, offset: 1824)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !445, file: !91, line: 430, baseType: !31, size: 32, offset: 1856)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !445, file: !91, line: 431, baseType: !31, size: 32, offset: 1888)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !445, file: !91, line: 432, baseType: !31, size: 32, offset: 1920)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !445, file: !91, line: 433, baseType: !31, size: 32, offset: 1952)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !445, file: !91, line: 434, baseType: !572, size: 64, offset: 1984)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !445, file: !91, line: 436, baseType: !672, size: 48, offset: 2048)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 48, elements: !206)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !445, file: !91, line: 437, baseType: !674, size: 384, offset: 2112)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 384, elements: !206)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !445, file: !91, line: 440, baseType: !676, size: 64, offset: 2496)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !91, line: 324, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !91, line: 314, size: 384, elements: !679)
!679 = !{!680, !691, !700}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !678, file: !91, line: 317, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !91, line: 47, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !91, line: 300, size: 256, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !683, file: !91, line: 303, baseType: !31, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !683, file: !91, line: 304, baseType: !31, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !683, file: !91, line: 306, baseType: !31, size: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !683, file: !91, line: 307, baseType: !31, size: 32, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !683, file: !91, line: 309, baseType: !69, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !683, file: !91, line: 310, baseType: !31, size: 32, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !678, file: !91, line: 318, baseType: !692, size: 256, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !91, line: 95, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 88, size: 256, elements: !694)
!694 = !{!695, !696, !697, !698, !699}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !693, file: !91, line: 90, baseType: !55, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !693, file: !91, line: 91, baseType: !55, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !693, file: !91, line: 92, baseType: !31, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !693, file: !91, line: 93, baseType: !69, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !693, file: !91, line: 94, baseType: !166, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !678, file: !91, line: 320, baseType: !701, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!31, !704, !836, !834}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !91, line: 273, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !91, line: 197, size: 3840, elements: !707)
!707 = !{!708, !710, !711, !712, !713, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !742, !743, !744, !745, !746, !750, !751, !760, !761, !762, !763, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !789, !790, !805, !811, !835}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !706, file: !91, line: 199, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !706, file: !91, line: 200, baseType: !448, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !706, file: !91, line: 201, baseType: !95, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !706, file: !91, line: 202, baseType: !31, size: 32, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !706, file: !91, line: 203, baseType: !714, size: 32, offset: 224)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !91, line: 112, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 108, size: 32, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !715, file: !91, line: 110, baseType: !502, size: 16)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !715, file: !91, line: 111, baseType: !502, size: 16, offset: 16)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !706, file: !91, line: 204, baseType: !31, size: 32, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !706, file: !91, line: 205, baseType: !31, size: 32, offset: 288)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !706, file: !91, line: 206, baseType: !31, size: 32, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !706, file: !91, line: 207, baseType: !31, size: 32, offset: 352)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !706, file: !91, line: 208, baseType: !31, size: 32, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !706, file: !91, line: 209, baseType: !31, size: 32, offset: 416)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !706, file: !91, line: 210, baseType: !31, size: 32, offset: 448)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !706, file: !91, line: 212, baseType: !31, size: 32, offset: 480)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !706, file: !91, line: 213, baseType: !31, size: 32, offset: 512)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !706, file: !91, line: 215, baseType: !31, size: 32, offset: 544)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !706, file: !91, line: 216, baseType: !414, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !706, file: !91, line: 217, baseType: !121, size: 96, offset: 640)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !706, file: !91, line: 218, baseType: !31, size: 32, offset: 736)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !706, file: !91, line: 219, baseType: !31, size: 32, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !706, file: !91, line: 220, baseType: !31, size: 32, offset: 800)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !706, file: !91, line: 221, baseType: !31, size: 32, offset: 832)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !706, file: !91, line: 223, baseType: !502, size: 16, offset: 864)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !706, file: !91, line: 224, baseType: !372, size: 8, offset: 880)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !706, file: !91, line: 225, baseType: !372, size: 8, offset: 888)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !706, file: !91, line: 226, baseType: !502, size: 16, offset: 896)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !706, file: !91, line: 227, baseType: !502, size: 16, offset: 912)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !706, file: !91, line: 229, baseType: !741, size: 64, offset: 960)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !706, file: !91, line: 230, baseType: !741, size: 64, offset: 1024)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !706, file: !91, line: 232, baseType: !741, size: 64, offset: 1088)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !706, file: !91, line: 233, baseType: !741, size: 64, offset: 1152)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !706, file: !91, line: 236, baseType: !502, size: 16, offset: 1216)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !706, file: !91, line: 237, baseType: !747, size: 1024, offset: 1232)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 1024, elements: !748)
!748 = !{!416, !749, !749, !416}
!749 = !DISubrange(count: 4)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !706, file: !91, line: 239, baseType: !31, size: 32, offset: 2272)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !706, file: !91, line: 240, baseType: !752, size: 192, offset: 2304)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 192, elements: !122)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !754, line: 103, baseType: !755)
!754 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !756, line: 27, baseType: !757)
!756 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !758, line: 44, baseType: !759)
!758 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!759 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !706, file: !91, line: 241, baseType: !752, size: 192, offset: 2496)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !706, file: !91, line: 242, baseType: !752, size: 192, offset: 2688)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !706, file: !91, line: 244, baseType: !31, size: 32, offset: 2880)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !706, file: !91, line: 245, baseType: !764, size: 32, offset: 2912)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 32, elements: !765)
!765 = !{!749}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !706, file: !91, line: 246, baseType: !764, size: 32, offset: 2944)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !706, file: !91, line: 247, baseType: !372, size: 8, offset: 2976)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !706, file: !91, line: 248, baseType: !372, size: 8, offset: 2984)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !706, file: !91, line: 249, baseType: !372, size: 8, offset: 2992)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !706, file: !91, line: 250, baseType: !502, size: 16, offset: 3008)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !706, file: !91, line: 251, baseType: !502, size: 16, offset: 3024)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !706, file: !91, line: 252, baseType: !502, size: 16, offset: 3040)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !706, file: !91, line: 254, baseType: !31, size: 32, offset: 3072)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !706, file: !91, line: 256, baseType: !31, size: 32, offset: 3104)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !706, file: !91, line: 256, baseType: !31, size: 32, offset: 3136)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !706, file: !91, line: 256, baseType: !31, size: 32, offset: 3168)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !706, file: !91, line: 256, baseType: !31, size: 32, offset: 3200)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !706, file: !91, line: 257, baseType: !31, size: 32, offset: 3232)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !706, file: !91, line: 257, baseType: !31, size: 32, offset: 3264)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !706, file: !91, line: 257, baseType: !31, size: 32, offset: 3296)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !706, file: !91, line: 257, baseType: !31, size: 32, offset: 3328)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !706, file: !91, line: 259, baseType: !31, size: 32, offset: 3360)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !706, file: !91, line: 260, baseType: !31, size: 32, offset: 3392)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !706, file: !91, line: 262, baseType: !785, size: 64, offset: 3456)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !741, !788, !31, !31}
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !54, line: 32, baseType: !60)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !706, file: !91, line: 263, baseType: !785, size: 64, offset: 3520)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !706, file: !91, line: 265, baseType: !791, size: 64, offset: 3584)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !741, !794, !804, !502, !526, !31, !31, !31, !31, !31}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !91, line: 85, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !91, line: 77, size: 128, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !796, file: !91, line: 79, baseType: !31, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !796, file: !91, line: 80, baseType: !31, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !796, file: !91, line: 81, baseType: !502, size: 16, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !796, file: !91, line: 82, baseType: !502, size: 16, offset: 80)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !796, file: !91, line: 83, baseType: !502, size: 16, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !796, file: !91, line: 84, baseType: !502, size: 16, offset: 112)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !706, file: !91, line: 268, baseType: !806, size: 64, offset: 3648)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!31, !741, !809, !31}
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !91, line: 97, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !706, file: !91, line: 269, baseType: !812, size: 64, offset: 3712)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!372, !741, !815, !834, !372, !31}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !91, line: 276, size: 384, elements: !817)
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825, !826, !830}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !816, file: !91, line: 278, baseType: !31, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !816, file: !91, line: 279, baseType: !31, size: 32, offset: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !816, file: !91, line: 280, baseType: !31, size: 32, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !816, file: !91, line: 281, baseType: !31, size: 32, offset: 96)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !816, file: !91, line: 282, baseType: !31, size: 32, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !816, file: !91, line: 283, baseType: !55, size: 32, offset: 160)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !816, file: !91, line: 284, baseType: !31, size: 32, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !816, file: !91, line: 285, baseType: !31, size: 32, offset: 224)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !816, file: !91, line: 293, baseType: !827, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !31, !31, !166, !166}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !816, file: !91, line: 295, baseType: !831, size: 64, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !704, !815, !809}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !706, file: !91, line: 272, baseType: !70, size: 8, offset: 3776)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !91, line: 296, baseType: !816)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !445, file: !91, line: 441, baseType: !839, size: 64, offset: 2560)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !91, line: 153, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 145, size: 2912, elements: !842)
!842 = !{!843, !853, !857, !861, !864, !866}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !841, file: !91, line: 147, baseType: !844, size: 1056)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 1056, elements: !851)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !91, line: 122, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 117, size: 32, elements: !847)
!847 = !{!848, !849, !850}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !846, file: !91, line: 119, baseType: !74, size: 16)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !846, file: !91, line: 120, baseType: !72, size: 8, offset: 16)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !846, file: !91, line: 121, baseType: !72, size: 8, offset: 24)
!851 = !{!123, !852}
!852 = !DISubrange(count: 11)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !841, file: !91, line: 148, baseType: !854, size: 576, offset: 1056)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 576, elements: !855)
!855 = !{!416, !856}
!856 = !DISubrange(count: 9)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !841, file: !91, line: 149, baseType: !858, size: 640, offset: 1632)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 640, elements: !859)
!859 = !{!416, !860}
!860 = !DISubrange(count: 10)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !841, file: !91, line: 150, baseType: !862, size: 384, offset: 2272)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 384, elements: !863)
!863 = !{!416, !198}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !841, file: !91, line: 151, baseType: !865, size: 128, offset: 2656)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 128, elements: !765)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !841, file: !91, line: 152, baseType: !865, size: 128, offset: 2784)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !445, file: !91, line: 442, baseType: !868, size: 64, offset: 2624)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !91, line: 175, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 164, size: 52768, elements: !871)
!871 = !{!872, !874, !876, !877, !880, !884, !888, !889, !893}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !870, file: !91, line: 166, baseType: !873, size: 96)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 96, elements: !122)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !870, file: !91, line: 167, baseType: !875, size: 64, offset: 96)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 64, elements: !415)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !870, file: !91, line: 168, baseType: !865, size: 128, offset: 160)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !870, file: !91, line: 169, baseType: !878, size: 384, offset: 288)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 384, elements: !879)
!879 = !{!123, !749}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !870, file: !91, line: 170, baseType: !881, size: 2816, offset: 672)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 2816, elements: !882)
!882 = !{!883, !749}
!883 = !DISubrange(count: 22)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !870, file: !91, line: 171, baseType: !885, size: 21120, offset: 3488)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 21120, elements: !886)
!886 = !{!416, !883, !887}
!887 = !DISubrange(count: 15)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !870, file: !91, line: 172, baseType: !885, size: 21120, offset: 24608)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !870, file: !91, line: 173, baseType: !890, size: 3520, offset: 45728)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 3520, elements: !891)
!891 = !{!883, !892}
!892 = !DISubrange(count: 5)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !870, file: !91, line: 174, baseType: !890, size: 3520, offset: 49248)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !445, file: !91, line: 444, baseType: !895, size: 6144, offset: 2688)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 6144, elements: !896)
!896 = !{!198, !21}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !445, file: !91, line: 446, baseType: !414, size: 64, offset: 8832)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !445, file: !91, line: 447, baseType: !899, size: 128, offset: 8896)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, elements: !415)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !445, file: !91, line: 448, baseType: !899, size: 128, offset: 9024)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !445, file: !91, line: 449, baseType: !899, size: 128, offset: 9152)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !445, file: !91, line: 452, baseType: !899, size: 128, offset: 9280)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !445, file: !91, line: 454, baseType: !31, size: 32, offset: 9408)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !445, file: !91, line: 455, baseType: !31, size: 32, offset: 9440)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !445, file: !91, line: 456, baseType: !31, size: 32, offset: 9472)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !445, file: !91, line: 458, baseType: !907, size: 256, offset: 9504)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !91, line: 337, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !91, line: 327, size: 256, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !908, file: !91, line: 329, baseType: !55, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !908, file: !91, line: 330, baseType: !55, size: 32, offset: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !908, file: !91, line: 331, baseType: !55, size: 32, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !908, file: !91, line: 332, baseType: !55, size: 32, offset: 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !908, file: !91, line: 333, baseType: !55, size: 32, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !908, file: !91, line: 334, baseType: !55, size: 32, offset: 160)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !908, file: !91, line: 335, baseType: !55, size: 32, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !908, file: !91, line: 336, baseType: !55, size: 32, offset: 224)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !445, file: !91, line: 461, baseType: !502, size: 16, offset: 9760)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !445, file: !91, line: 462, baseType: !502, size: 16, offset: 9776)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !445, file: !91, line: 463, baseType: !502, size: 16, offset: 9792)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !445, file: !91, line: 465, baseType: !31, size: 32, offset: 9824)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !445, file: !91, line: 467, baseType: !31, size: 32, offset: 9856)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !445, file: !91, line: 468, baseType: !31, size: 32, offset: 9888)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !445, file: !91, line: 470, baseType: !31, size: 32, offset: 9920)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !445, file: !91, line: 471, baseType: !523, size: 64, offset: 9984)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !445, file: !91, line: 472, baseType: !523, size: 64, offset: 10048)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !445, file: !91, line: 473, baseType: !361, size: 64, offset: 10112)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !445, file: !91, line: 474, baseType: !361, size: 64, offset: 10176)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !445, file: !91, line: 475, baseType: !361, size: 64, offset: 10240)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !445, file: !91, line: 477, baseType: !931, size: 512, offset: 10304)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, elements: !932)
!932 = !{!199}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !445, file: !91, line: 479, baseType: !520, size: 64, offset: 10816)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !445, file: !91, line: 480, baseType: !520, size: 64, offset: 10880)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !445, file: !91, line: 481, baseType: !348, size: 64, offset: 10944)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !445, file: !91, line: 482, baseType: !520, size: 64, offset: 11008)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !445, file: !91, line: 483, baseType: !520, size: 64, offset: 11072)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !445, file: !91, line: 486, baseType: !939, size: 9216, offset: 11136)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 9216, elements: !940)
!940 = !{!123, !198, !749, !749}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !445, file: !91, line: 487, baseType: !939, size: 9216, offset: 20352)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !445, file: !91, line: 488, baseType: !943, size: 36864, offset: 29568)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 36864, elements: !944)
!944 = !{!123, !198, !214, !214}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !445, file: !91, line: 489, baseType: !943, size: 36864, offset: 66432)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !445, file: !91, line: 491, baseType: !947, size: 768, offset: 103296)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 768, elements: !193)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !445, file: !91, line: 494, baseType: !949, size: 2048, offset: 104064)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !950)
!950 = !{!203}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !445, file: !91, line: 495, baseType: !31, size: 32, offset: 106112)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !445, file: !91, line: 496, baseType: !31, size: 32, offset: 106144)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !445, file: !91, line: 500, baseType: !75, size: 16, offset: 106176)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !445, file: !91, line: 501, baseType: !75, size: 16, offset: 106192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !445, file: !91, line: 503, baseType: !75, size: 16, offset: 106208)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !445, file: !91, line: 504, baseType: !75, size: 16, offset: 106224)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !445, file: !91, line: 505, baseType: !361, size: 64, offset: 106240)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !445, file: !91, line: 506, baseType: !361, size: 64, offset: 106304)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !445, file: !91, line: 507, baseType: !960, size: 64, offset: 106368)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !445, file: !91, line: 508, baseType: !502, size: 16, offset: 106432)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !445, file: !91, line: 509, baseType: !502, size: 16, offset: 106448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !445, file: !91, line: 512, baseType: !31, size: 32, offset: 106464)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !445, file: !91, line: 513, baseType: !31, size: 32, offset: 106496)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !445, file: !91, line: 514, baseType: !966, size: 64, offset: 106560)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !445, file: !91, line: 515, baseType: !966, size: 64, offset: 106624)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !445, file: !91, line: 520, baseType: !31, size: 32, offset: 106688)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !445, file: !91, line: 521, baseType: !971, size: 544, offset: 106720)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 544, elements: !972)
!972 = !{!973}
!973 = !DISubrange(count: 17)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !445, file: !91, line: 523, baseType: !975, size: 64, offset: 107264)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !704}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !445, file: !91, line: 524, baseType: !979, size: 64, offset: 107328)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!31, !704, !788, !520, !532}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !445, file: !91, line: 525, baseType: !983, size: 64, offset: 107392)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!31, !448, !95}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !445, file: !91, line: 526, baseType: !987, size: 64, offset: 107456)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!31, !709, !31}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !445, file: !91, line: 527, baseType: !975, size: 64, offset: 107520)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !445, file: !91, line: 528, baseType: !975, size: 64, offset: 107584)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !445, file: !91, line: 529, baseType: !975, size: 64, offset: 107648)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !445, file: !91, line: 530, baseType: !994, size: 64, offset: 107712)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{null, !709}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !445, file: !91, line: 531, baseType: !975, size: 64, offset: 107776)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !445, file: !91, line: 532, baseType: !827, size: 64, offset: 107840)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !445, file: !91, line: 533, baseType: !827, size: 64, offset: 107904)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !445, file: !91, line: 534, baseType: !975, size: 64, offset: 107968)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !445, file: !91, line: 535, baseType: !31, size: 32, offset: 108032)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !445, file: !91, line: 536, baseType: !704, size: 64, offset: 108096)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !445, file: !91, line: 537, baseType: !532, size: 64, offset: 108160)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !445, file: !91, line: 538, baseType: !348, size: 64, offset: 108224)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !445, file: !91, line: 539, baseType: !1006, size: 64, offset: 108288)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !445, file: !91, line: 540, baseType: !371, size: 64, offset: 108352)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !445, file: !91, line: 541, baseType: !1009, size: 768, offset: 108416)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 768, elements: !197)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !92, file: !91, line: 596, baseType: !371, size: 64, offset: 6789952)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !92, file: !91, line: 597, baseType: !1012, size: 192, offset: 6790016)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 192, elements: !122)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !91, line: 601, baseType: !31, size: 32, offset: 6790208)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !92, file: !91, line: 602, baseType: !31, size: 32, offset: 6790240)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !92, file: !91, line: 603, baseType: !31, size: 32, offset: 6790272)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !92, file: !91, line: 604, baseType: !31, size: 32, offset: 6790304)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !92, file: !91, line: 605, baseType: !31, size: 32, offset: 6790336)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !92, file: !91, line: 607, baseType: !1006, size: 64, offset: 6790400)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !92, file: !91, line: 608, baseType: !1020, size: 192, offset: 6790464)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 192, elements: !122)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !92, file: !91, line: 609, baseType: !1022, size: 64, offset: 6790656)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !92, file: !91, line: 610, baseType: !348, size: 64, offset: 6790720)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !92, file: !91, line: 611, baseType: !1026, size: 192, offset: 6790784)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 192, elements: !122)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !92, file: !91, line: 613, baseType: !31, size: 32, offset: 6790976)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !92, file: !91, line: 614, baseType: !31, size: 32, offset: 6791008)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !92, file: !91, line: 617, baseType: !443, size: 64, offset: 6791040)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !92, file: !91, line: 618, baseType: !704, size: 64, offset: 6791104)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !92, file: !91, line: 619, baseType: !1032, size: 192, offset: 6791168)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 192, elements: !122)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !92, file: !91, line: 621, baseType: !31, size: 32, offset: 6791360)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !92, file: !91, line: 626, baseType: !1035, size: 64, offset: 6791424)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !91, line: 626, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !92, file: !91, line: 627, baseType: !1035, size: 64, offset: 6791488)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !92, file: !91, line: 629, baseType: !55, size: 32, offset: 6791552)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !92, file: !91, line: 630, baseType: !31, size: 32, offset: 6791584)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !92, file: !91, line: 634, baseType: !31, size: 32, offset: 6791616)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !92, file: !91, line: 635, baseType: !55, size: 32, offset: 6791648)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !92, file: !91, line: 638, baseType: !31, size: 32, offset: 6791680)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !92, file: !91, line: 638, baseType: !31, size: 32, offset: 6791712)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !92, file: !91, line: 638, baseType: !31, size: 32, offset: 6791744)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !92, file: !91, line: 639, baseType: !55, size: 32, offset: 6791776)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !92, file: !91, line: 639, baseType: !55, size: 32, offset: 6791808)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !92, file: !91, line: 640, baseType: !31, size: 32, offset: 6791840)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !92, file: !91, line: 641, baseType: !31, size: 32, offset: 6791872)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !92, file: !91, line: 642, baseType: !31, size: 32, offset: 6791904)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !92, file: !91, line: 645, baseType: !31, size: 32, offset: 6791936)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !92, file: !91, line: 647, baseType: !55, size: 32, offset: 6791968)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !92, file: !91, line: 648, baseType: !55, size: 32, offset: 6792000)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !92, file: !91, line: 649, baseType: !55, size: 32, offset: 6792032)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !92, file: !91, line: 650, baseType: !55, size: 32, offset: 6792064)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !92, file: !91, line: 651, baseType: !55, size: 32, offset: 6792096)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !92, file: !91, line: 652, baseType: !55, size: 32, offset: 6792128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !92, file: !91, line: 653, baseType: !55, size: 32, offset: 6792160)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !92, file: !91, line: 655, baseType: !31, size: 32, offset: 6792192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !92, file: !91, line: 657, baseType: !31, size: 32, offset: 6792224)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !92, file: !91, line: 658, baseType: !31, size: 32, offset: 6792256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !92, file: !91, line: 661, baseType: !31, size: 32, offset: 6792288)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !92, file: !91, line: 662, baseType: !502, size: 16, offset: 6792320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !92, file: !91, line: 663, baseType: !502, size: 16, offset: 6792336)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !92, file: !91, line: 664, baseType: !414, size: 64, offset: 6792352)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !92, file: !91, line: 665, baseType: !31, size: 32, offset: 6792416)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !92, file: !91, line: 666, baseType: !31, size: 32, offset: 6792448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !92, file: !91, line: 667, baseType: !1068, size: 96, offset: 6792480)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 96, elements: !122)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !92, file: !91, line: 668, baseType: !121, size: 96, offset: 6792576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !92, file: !91, line: 670, baseType: !31, size: 32, offset: 6792672)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !92, file: !91, line: 671, baseType: !31, size: 32, offset: 6792704)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !92, file: !91, line: 672, baseType: !31, size: 32, offset: 6792736)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !92, file: !91, line: 673, baseType: !31, size: 32, offset: 6792768)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !92, file: !91, line: 674, baseType: !31, size: 32, offset: 6792800)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !92, file: !91, line: 675, baseType: !31, size: 32, offset: 6792832)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !92, file: !91, line: 676, baseType: !31, size: 32, offset: 6792864)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !92, file: !91, line: 677, baseType: !31, size: 32, offset: 6792896)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !92, file: !91, line: 678, baseType: !31, size: 32, offset: 6792928)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !92, file: !91, line: 679, baseType: !31, size: 32, offset: 6792960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !92, file: !91, line: 680, baseType: !1081, size: 192, offset: 6792992)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 192, elements: !1082)
!1082 = !{!123, !416}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !92, file: !91, line: 681, baseType: !1081, size: 192, offset: 6793184)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !92, file: !91, line: 682, baseType: !1081, size: 192, offset: 6793376)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !92, file: !91, line: 683, baseType: !31, size: 32, offset: 6793568)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !92, file: !91, line: 684, baseType: !31, size: 32, offset: 6793600)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !92, file: !91, line: 685, baseType: !31, size: 32, offset: 6793632)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !92, file: !91, line: 686, baseType: !31, size: 32, offset: 6793664)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !92, file: !91, line: 687, baseType: !31, size: 32, offset: 6793696)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !92, file: !91, line: 689, baseType: !31, size: 32, offset: 6793728)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !92, file: !91, line: 692, baseType: !31, size: 32, offset: 6793760)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !92, file: !91, line: 693, baseType: !31, size: 32, offset: 6793792)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !92, file: !91, line: 700, baseType: !31, size: 32, offset: 6793824)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !92, file: !91, line: 701, baseType: !31, size: 32, offset: 6793856)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !92, file: !91, line: 702, baseType: !31, size: 32, offset: 6793888)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !92, file: !91, line: 703, baseType: !31, size: 32, offset: 6793920)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !92, file: !91, line: 704, baseType: !31, size: 32, offset: 6793952)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !92, file: !91, line: 705, baseType: !55, size: 32, offset: 6793984)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !92, file: !91, line: 706, baseType: !31, size: 32, offset: 6794016)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !92, file: !91, line: 707, baseType: !31, size: 32, offset: 6794048)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !92, file: !91, line: 710, baseType: !31, size: 32, offset: 6794080)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !92, file: !91, line: 711, baseType: !31, size: 32, offset: 6794112)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !92, file: !91, line: 712, baseType: !31, size: 32, offset: 6794144)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !92, file: !91, line: 713, baseType: !31, size: 32, offset: 6794176)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !92, file: !91, line: 714, baseType: !31, size: 32, offset: 6794208)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !92, file: !91, line: 716, baseType: !31, size: 32, offset: 6794240)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !92, file: !91, line: 717, baseType: !31, size: 32, offset: 6794272)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !92, file: !91, line: 719, baseType: !69, size: 64, offset: 6794304)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !92, file: !91, line: 720, baseType: !69, size: 64, offset: 6794368)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !92, file: !91, line: 722, baseType: !1111, size: 2560, offset: 6794432)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !1112, line: 38, baseType: !1113)
!1112 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !1112, line: 20, size: 2560, elements: !1114)
!1114 = !{!1115, !1116, !1118, !1119, !1120, !1124, !1125, !1126, !1127, !1128}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1113, file: !1112, line: 22, baseType: !111, size: 1088)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !1113, file: !1112, line: 24, baseType: !1117, size: 192, offset: 1088)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 192, elements: !122)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !1113, file: !1112, line: 25, baseType: !1117, size: 192, offset: 1280)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !1113, file: !1112, line: 26, baseType: !1117, size: 192, offset: 1472)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !1113, file: !1112, line: 31, baseType: !1121, size: 192, offset: 1664)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1122, size: 192, elements: !122)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !1113, file: !1112, line: 32, baseType: !1121, size: 192, offset: 1856)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !1113, file: !1112, line: 33, baseType: !1121, size: 192, offset: 2048)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !1113, file: !1112, line: 35, baseType: !121, size: 96, offset: 2240)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !1113, file: !1112, line: 36, baseType: !121, size: 96, offset: 2336)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !1113, file: !1112, line: 37, baseType: !121, size: 96, offset: 2432)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !92, file: !91, line: 723, baseType: !1111, size: 2560, offset: 6796992)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !92, file: !91, line: 724, baseType: !1111, size: 2560, offset: 6799552)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !92, file: !91, line: 725, baseType: !1111, size: 2560, offset: 6802112)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !92, file: !91, line: 728, baseType: !1111, size: 2560, offset: 6804672)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !92, file: !91, line: 729, baseType: !1111, size: 2560, offset: 6807232)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !92, file: !91, line: 730, baseType: !1111, size: 2560, offset: 6809792)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !92, file: !91, line: 731, baseType: !1111, size: 2560, offset: 6812352)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !92, file: !91, line: 735, baseType: !55, size: 32, offset: 6814912)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !92, file: !91, line: 737, baseType: !31, size: 32, offset: 6814944)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !92, file: !91, line: 738, baseType: !31, size: 32, offset: 6814976)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !92, file: !91, line: 741, baseType: !753, size: 64, offset: 6815040)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !92, file: !91, line: 744, baseType: !31, size: 32, offset: 6815104)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !92, file: !91, line: 746, baseType: !616, size: 32768, offset: 6815136)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !92, file: !91, line: 748, baseType: !31, size: 32, offset: 6847904)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !92, file: !91, line: 751, baseType: !31, size: 32, offset: 6847936)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !92, file: !91, line: 752, baseType: !31, size: 32, offset: 6847968)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !92, file: !91, line: 755, baseType: !31, size: 32, offset: 6848000)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !92, file: !91, line: 756, baseType: !31, size: 32, offset: 6848032)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !92, file: !91, line: 758, baseType: !31, size: 32, offset: 6848064)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !92, file: !91, line: 759, baseType: !31, size: 32, offset: 6848096)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !92, file: !91, line: 762, baseType: !520, size: 64, offset: 6848128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !92, file: !91, line: 763, baseType: !523, size: 64, offset: 6848192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !92, file: !91, line: 765, baseType: !166, size: 64, offset: 6848256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !92, file: !91, line: 766, baseType: !166, size: 64, offset: 6848320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !92, file: !91, line: 768, baseType: !967, size: 64, offset: 6848384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !92, file: !91, line: 769, baseType: !1155, size: 3200, offset: 6848448)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3200, elements: !1156)
!1156 = !{!1157}
!1157 = !DISubrange(count: 100)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !92, file: !91, line: 771, baseType: !532, size: 64, offset: 6851648)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !92, file: !91, line: 772, baseType: !1160, size: 192, offset: 6851712)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 192, elements: !122)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !92, file: !91, line: 773, baseType: !532, size: 64, offset: 6851904)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !92, file: !91, line: 776, baseType: !1163, size: 64, offset: 6851968)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !91, line: 776, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !92, file: !91, line: 777, baseType: !1166, size: 64, offset: 6852032)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !91, line: 777, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !92, file: !91, line: 779, baseType: !31, size: 32, offset: 6852096)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !92, file: !91, line: 780, baseType: !448, size: 64, offset: 6852160)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !92, file: !91, line: 781, baseType: !1171, size: 640, offset: 6852224)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 640, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 20)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !92, file: !91, line: 783, baseType: !1175, size: 64, offset: 6852864)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !91, line: 783, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !92, file: !91, line: 784, baseType: !1178, size: 64, offset: 6852928)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !91, line: 784, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !92, file: !91, line: 786, baseType: !967, size: 64, offset: 6852992)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !92, file: !91, line: 788, baseType: !532, size: 64, offset: 6853056)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !92, file: !91, line: 789, baseType: !31, size: 32, offset: 6853120)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !92, file: !91, line: 790, baseType: !31, size: 32, offset: 6853152)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !92, file: !91, line: 792, baseType: !31, size: 32, offset: 6853184)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !92, file: !91, line: 794, baseType: !454, size: 64, offset: 6853248)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !92, file: !91, line: 795, baseType: !454, size: 64, offset: 6853312)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !92, file: !91, line: 796, baseType: !1188, size: 128, offset: 6853376)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 128, elements: !415)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !92, file: !91, line: 800, baseType: !1190, size: 72, offset: 6853504)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !1191)
!1191 = !{!856}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !92, file: !91, line: 802, baseType: !166, size: 64, offset: 6853632)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !92, file: !91, line: 803, baseType: !166, size: 64, offset: 6853696)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !92, file: !91, line: 804, baseType: !31, size: 32, offset: 6853760)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !92, file: !91, line: 807, baseType: !1196, size: 64, offset: 6853824)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !91, line: 807, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !92, file: !91, line: 810, baseType: !1199, size: 64, offset: 6853888)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !520, !1202, !31, !31, !31, !31, !31, !31}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !92, file: !91, line: 811, baseType: !1204, size: 64, offset: 6853952)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !704, !31, !31, !166, !794}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !92, file: !91, line: 812, baseType: !1208, size: 64, offset: 6854016)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !31, !552, !552}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !92, file: !91, line: 813, baseType: !1212, size: 64, offset: 6854080)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !69, !704, !31, !31, !532}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !92, file: !91, line: 814, baseType: !1212, size: 64, offset: 6854144)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !92, file: !91, line: 815, baseType: !1217, size: 64, offset: 6854208)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !788, !520, !69, !704, !31, !532}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !92, file: !91, line: 816, baseType: !1217, size: 64, offset: 6854272)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !92, file: !91, line: 817, baseType: !1222, size: 64, offset: 6854336)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !520, !69, !704, !31, !31, !532}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !92, file: !91, line: 818, baseType: !1222, size: 64, offset: 6854400)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !92, file: !91, line: 819, baseType: !1227, size: 64, offset: 6854464)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !520, !1202, !31, !31, !31, !31, !31, !31, !31, !31}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !92, file: !91, line: 821, baseType: !1231, size: 64, offset: 6854528)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !91, line: 561, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !91, line: 544, size: 640, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1233, file: !91, line: 546, baseType: !31, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1233, file: !91, line: 547, baseType: !31, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1233, file: !91, line: 548, baseType: !31, size: 32, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1233, file: !91, line: 549, baseType: !31, size: 32, offset: 96)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1233, file: !91, line: 550, baseType: !31, size: 32, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1233, file: !91, line: 551, baseType: !31, size: 32, offset: 160)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1233, file: !91, line: 552, baseType: !69, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1233, file: !91, line: 553, baseType: !69, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1233, file: !91, line: 554, baseType: !69, size: 64, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1233, file: !91, line: 555, baseType: !31, size: 32, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1233, file: !91, line: 556, baseType: !31, size: 32, offset: 416)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1233, file: !91, line: 557, baseType: !31, size: 32, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1233, file: !91, line: 558, baseType: !31, size: 32, offset: 480)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1233, file: !91, line: 559, baseType: !31, size: 32, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1233, file: !91, line: 560, baseType: !1250, size: 64, offset: 576)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !92, file: !91, line: 822, baseType: !31, size: 32, offset: 6854592)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !92, file: !91, line: 823, baseType: !1253, size: 64, offset: 6854656)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !91, line: 823, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !92, file: !91, line: 824, baseType: !31, size: 32, offset: 6854720)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !92, file: !91, line: 825, baseType: !31, size: 32, offset: 6854752)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !92, file: !91, line: 826, baseType: !31, size: 32, offset: 6854784)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !92, file: !91, line: 827, baseType: !31, size: 32, offset: 6854816)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !92, file: !91, line: 829, baseType: !31, size: 32, offset: 6854848)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !92, file: !91, line: 830, baseType: !31, size: 32, offset: 6854880)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !92, file: !91, line: 831, baseType: !31, size: 32, offset: 6854912)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !92, file: !91, line: 835, baseType: !180, size: 64, offset: 6854976)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!1264 = !{!1265, !1266, !1267}
!1265 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !86, file: !2, line: 40, type: !89)
!1266 = !DILocalVariable(name: "source", arg: 2, scope: !86, file: !2, line: 40, type: !1263)
!1267 = !DILocalVariable(name: "output", arg: 3, scope: !86, file: !2, line: 40, type: !1263)
!1268 = !DILocation(line: 0, scope: !86)
!1269 = !DILocation(line: 42, column: 15, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !86, file: !2, line: 42, column: 7)
!1271 = !DILocation(line: 42, column: 7, scope: !1270)
!1272 = !DILocation(line: 42, column: 39, scope: !1270)
!1273 = !DILocation(line: 42, column: 31, scope: !1270)
!1274 = !DILocation(line: 42, column: 28, scope: !1270)
!1275 = !DILocation(line: 42, column: 52, scope: !1270)
!1276 = !DILocation(line: 42, column: 55, scope: !1270)
!1277 = !DILocation(line: 42, column: 79, scope: !1270)
!1278 = !DILocation(line: 42, column: 76, scope: !1270)
!1279 = !DILocation(line: 42, column: 7, scope: !86)
!1280 = !DILocation(line: 0, scope: !1270)
!1281 = !DILocation(line: 51, column: 1, scope: !86)
!1282 = distinct !DISubprogram(name: "testEndian", scope: !2, file: !2, line: 63, type: !1283, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1285)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!31}
!1285 = !{!1286, !1287}
!1286 = !DILocalVariable(name: "s", scope: !1282, file: !2, line: 65, type: !502)
!1287 = !DILocalVariable(name: "p", scope: !1282, file: !2, line: 66, type: !69)
!1288 = !DILocation(line: 0, scope: !1282)
!1289 = !DILocation(line: 72, column: 3, scope: !1282)
!1290 = distinct !DISubprogram(name: "buf2img_endian", scope: !2, file: !2, line: 464, type: !1200, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1291)
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1306}
!1292 = !DILocalVariable(name: "imgX", arg: 1, scope: !1290, file: !2, line: 464, type: !520)
!1293 = !DILocalVariable(name: "buf", arg: 2, scope: !1290, file: !2, line: 465, type: !1202)
!1294 = !DILocalVariable(name: "size_x", arg: 3, scope: !1290, file: !2, line: 466, type: !31)
!1295 = !DILocalVariable(name: "size_y", arg: 4, scope: !1290, file: !2, line: 467, type: !31)
!1296 = !DILocalVariable(name: "o_size_x", arg: 5, scope: !1290, file: !2, line: 468, type: !31)
!1297 = !DILocalVariable(name: "o_size_y", arg: 6, scope: !1290, file: !2, line: 469, type: !31)
!1298 = !DILocalVariable(name: "symbol_size_in_bytes", arg: 7, scope: !1290, file: !2, line: 470, type: !31)
!1299 = !DILocalVariable(name: "dummy", arg: 8, scope: !1290, file: !2, line: 471, type: !31)
!1300 = !DILocalVariable(name: "i", scope: !1290, file: !2, line: 474, type: !31)
!1301 = !DILocalVariable(name: "j", scope: !1290, file: !2, line: 474, type: !31)
!1302 = !DILocalVariable(name: "tmp16", scope: !1290, file: !2, line: 476, type: !74)
!1303 = !DILocalVariable(name: "ui16", scope: !1290, file: !2, line: 476, type: !74)
!1304 = !DILocalVariable(name: "tmp32", scope: !1290, file: !2, line: 477, type: !1305)
!1305 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1306 = !DILocalVariable(name: "ui32", scope: !1290, file: !2, line: 477, type: !1305)
!1307 = !DILocation(line: 0, scope: !1290)
!1308 = !DILocation(line: 479, column: 28, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 479, column: 7)
!1310 = !DILocation(line: 479, column: 7, scope: !1290)
!1311 = !DILocation(line: 481, column: 5, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 480, column: 3)
!1313 = !DILocation(line: 482, column: 3, scope: !1312)
!1314 = !DILocation(line: 484, column: 14, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 484, column: 7)
!1316 = !DILocation(line: 484, column: 26, scope: !1315)
!1317 = !DILocation(line: 486, column: 5, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 485, column: 3)
!1319 = !DILocation(line: 487, column: 3, scope: !1318)
!1320 = !DILocation(line: 490, column: 3, scope: !1290)
!1321 = !DILocation(line: 518, column: 16, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 518, column: 7)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 518, column: 7)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 517, column: 5)
!1325 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 491, column: 3)
!1326 = !DILocation(line: 518, column: 7, scope: !1323)
!1327 = !DILocation(line: 520, column: 9, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 520, column: 9)
!1329 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 519, column: 7)
!1330 = !DILocation(line: 522, column: 33, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 521, column: 9)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 520, column: 9)
!1333 = !DILocation(line: 522, column: 43, scope: !1331)
!1334 = !DILocation(line: 522, column: 29, scope: !1331)
!1335 = !DILocation(line: 522, column: 11, scope: !1331)
!1336 = !DILocation(line: 524, column: 24, scope: !1331)
!1337 = !DILocation(line: 524, column: 11, scope: !1331)
!1338 = !DILocation(line: 524, column: 22, scope: !1331)
!1339 = !DILocation(line: 520, column: 27, scope: !1332)
!1340 = distinct !{!1340, !1327, !1341}
!1341 = !DILocation(line: 525, column: 9, scope: !1328)
!1342 = !DILocation(line: 518, column: 25, scope: !1322)
!1343 = distinct !{!1343, !1326, !1344}
!1344 = !DILocation(line: 526, column: 7, scope: !1323)
!1345 = !DILocation(line: 505, column: 16, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 505, column: 7)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 505, column: 7)
!1348 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 504, column: 5)
!1349 = !DILocation(line: 505, column: 7, scope: !1347)
!1350 = !DILocation(line: 507, column: 9, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 507, column: 9)
!1352 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 506, column: 7)
!1353 = !DILocation(line: 509, column: 33, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 508, column: 9)
!1355 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 507, column: 9)
!1356 = !DILocation(line: 509, column: 43, scope: !1354)
!1357 = !DILocation(line: 509, column: 29, scope: !1354)
!1358 = !DILocation(line: 509, column: 11, scope: !1354)
!1359 = !DILocation(line: 511, column: 11, scope: !1354)
!1360 = !DILocation(line: 511, column: 22, scope: !1354)
!1361 = !DILocation(line: 507, column: 27, scope: !1355)
!1362 = distinct !{!1362, !1350, !1363}
!1363 = !DILocation(line: 512, column: 9, scope: !1351)
!1364 = !DILocation(line: 505, column: 25, scope: !1346)
!1365 = distinct !{!1365, !1349, !1366}
!1366 = !DILocation(line: 513, column: 7, scope: !1347)
!1367 = !DILocation(line: 494, column: 16, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 494, column: 7)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 494, column: 7)
!1370 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 493, column: 5)
!1371 = !DILocation(line: 494, column: 7, scope: !1369)
!1372 = !DILocation(line: 496, column: 9, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 496, column: 9)
!1374 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 495, column: 7)
!1375 = !DILocation(line: 498, column: 32, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 497, column: 9)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 496, column: 9)
!1378 = !DILocation(line: 498, column: 23, scope: !1376)
!1379 = !DILocation(line: 498, column: 11, scope: !1376)
!1380 = !DILocation(line: 498, column: 21, scope: !1376)
!1381 = !DILocation(line: 496, column: 27, scope: !1377)
!1382 = distinct !{!1382, !1372, !1383}
!1383 = !DILocation(line: 499, column: 9, scope: !1373)
!1384 = distinct !{!1384, !1385}
!1385 = !{!"llvm.loop.unroll.disable"}
!1386 = !DILocation(line: 494, column: 25, scope: !1368)
!1387 = distinct !{!1387, !1371, !1388}
!1388 = !DILocation(line: 500, column: 7, scope: !1369)
!1389 = !DILocation(line: 531, column: 7, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 530, column: 5)
!1391 = !DILocation(line: 532, column: 7, scope: !1390)
!1392 = !DILocation(line: 535, column: 1, scope: !1290)
!1393 = distinct !DISubprogram(name: "buf2img_basic", scope: !2, file: !2, line: 352, type: !1200, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1394)
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1411, !1412, !1413, !1414, !1415, !1416, !1418, !1419, !1422, !1423, !1424, !1425, !1426}
!1395 = !DILocalVariable(name: "imgX", arg: 1, scope: !1393, file: !2, line: 352, type: !520)
!1396 = !DILocalVariable(name: "buf", arg: 2, scope: !1393, file: !2, line: 353, type: !1202)
!1397 = !DILocalVariable(name: "size_x", arg: 3, scope: !1393, file: !2, line: 354, type: !31)
!1398 = !DILocalVariable(name: "size_y", arg: 4, scope: !1393, file: !2, line: 355, type: !31)
!1399 = !DILocalVariable(name: "o_size_x", arg: 5, scope: !1393, file: !2, line: 356, type: !31)
!1400 = !DILocalVariable(name: "o_size_y", arg: 6, scope: !1393, file: !2, line: 357, type: !31)
!1401 = !DILocalVariable(name: "symbol_size_in_bytes", arg: 7, scope: !1393, file: !2, line: 358, type: !31)
!1402 = !DILocalVariable(name: "dummy", arg: 8, scope: !1393, file: !2, line: 359, type: !31)
!1403 = !DILocalVariable(name: "i", scope: !1393, file: !2, line: 362, type: !31)
!1404 = !DILocalVariable(name: "j", scope: !1393, file: !2, line: 362, type: !31)
!1405 = !DILocalVariable(name: "temp_buf", scope: !1393, file: !2, line: 363, type: !1202)
!1406 = !DILocalVariable(name: "iminwidth", scope: !1407, file: !2, line: 377, type: !31)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 376, column: 5)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 373, column: 9)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 371, column: 3)
!1410 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 370, column: 7)
!1411 = !DILocalVariable(name: "iminheight", scope: !1407, file: !2, line: 378, type: !31)
!1412 = !DILocalVariable(name: "dst_offset_x", scope: !1407, file: !2, line: 379, type: !31)
!1413 = !DILocalVariable(name: "dst_offset_y", scope: !1407, file: !2, line: 379, type: !31)
!1414 = !DILocalVariable(name: "offset_x", scope: !1407, file: !2, line: 380, type: !31)
!1415 = !DILocalVariable(name: "offset_y", scope: !1407, file: !2, line: 380, type: !31)
!1416 = !DILocalVariable(name: "j_pos", scope: !1417, file: !2, line: 404, type: !31)
!1417 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 403, column: 3)
!1418 = !DILocalVariable(name: "ui16", scope: !1417, file: !2, line: 405, type: !74)
!1419 = !DILocalVariable(name: "iminwidth", scope: !1420, file: !2, line: 421, type: !31)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 420, column: 5)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 406, column: 9)
!1422 = !DILocalVariable(name: "iminheight", scope: !1420, file: !2, line: 422, type: !31)
!1423 = !DILocalVariable(name: "dst_offset_x", scope: !1420, file: !2, line: 423, type: !31)
!1424 = !DILocalVariable(name: "dst_offset_y", scope: !1420, file: !2, line: 423, type: !31)
!1425 = !DILocalVariable(name: "offset_x", scope: !1420, file: !2, line: 424, type: !31)
!1426 = !DILocalVariable(name: "offset_y", scope: !1420, file: !2, line: 424, type: !31)
!1427 = distinct !DIAssignID()
!1428 = !DILocation(line: 0, scope: !1417)
!1429 = !DILocation(line: 0, scope: !1393)
!1430 = !DILocation(line: 365, column: 27, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 365, column: 7)
!1432 = !DILocation(line: 365, column: 7, scope: !1393)
!1433 = !DILocation(line: 367, column: 5, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 366, column: 3)
!1435 = !DILocation(line: 370, column: 28, scope: !1410)
!1436 = !DILocation(line: 370, column: 7, scope: !1393)
!1437 = !DILocation(line: 370, column: 25, scope: !1410)
!1438 = !DILocation(line: 373, column: 16, scope: !1408)
!1439 = !DILocation(line: 373, column: 28, scope: !1408)
!1440 = !DILocation(line: 374, column: 15, scope: !1408)
!1441 = !DILocation(line: 374, column: 44, scope: !1408)
!1442 = !DILocation(line: 374, column: 37, scope: !1408)
!1443 = !DILocation(line: 374, column: 53, scope: !1408)
!1444 = !DILocation(line: 374, column: 7, scope: !1408)
!1445 = !DILocalVariable(name: "a", arg: 1, scope: !1446, file: !1447, line: 42, type: !31)
!1446 = distinct !DISubprogram(name: "imin", scope: !1447, file: !1447, line: 42, type: !1448, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1450)
!1447 = !DIFile(filename: "ldecod_src/inc/ifunctions.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "279401589ed56df99e287ad9e5fc564b")
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!31, !31, !31}
!1450 = !{!1445, !1451}
!1451 = !DILocalVariable(name: "b", arg: 2, scope: !1446, file: !1447, line: 42, type: !31)
!1452 = !DILocation(line: 0, scope: !1446, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 377, column: 25, scope: !1407)
!1454 = !DILocation(line: 0, scope: !1407)
!1455 = !DILocation(line: 0, scope: !1446, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 378, column: 25, scope: !1407)
!1457 = !DILocation(line: 44, column: 10, scope: !1446, inlinedAt: !1456)
!1458 = !DILocation(line: 386, column: 20, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 386, column: 11)
!1460 = !DILocation(line: 386, column: 11, scope: !1407)
!1461 = !DILocation(line: 395, column: 37, scope: !1407)
!1462 = !DILocation(line: 395, column: 51, scope: !1407)
!1463 = !DILocation(line: 395, column: 21, scope: !1407)
!1464 = !DILocation(line: 397, column: 18, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 397, column: 7)
!1466 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 397, column: 7)
!1467 = !DILocation(line: 397, column: 7, scope: !1466)
!1468 = !DILocation(line: 383, column: 21, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 383, column: 12)
!1470 = !DILocation(line: 383, column: 12, scope: !1407)
!1471 = !DILocation(line: 44, column: 10, scope: !1446, inlinedAt: !1453)
!1472 = !DILocation(line: 394, column: 37, scope: !1407)
!1473 = !DILocation(line: 394, column: 51, scope: !1407)
!1474 = !DILocation(line: 394, column: 21, scope: !1407)
!1475 = !DILocation(line: 398, column: 17, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 397, column: 35)
!1477 = !DILocation(line: 398, column: 81, scope: !1476)
!1478 = !DILocation(line: 398, column: 57, scope: !1476)
!1479 = !DILocation(line: 398, column: 9, scope: !1476)
!1480 = !DILocation(line: 397, column: 31, scope: !1465)
!1481 = distinct !{!1481, !1467, !1482}
!1482 = !DILocation(line: 399, column: 7, scope: !1466)
!1483 = !DILocation(line: 405, column: 5, scope: !1417)
!1484 = !DILocation(line: 406, column: 16, scope: !1421)
!1485 = !DILocation(line: 406, column: 28, scope: !1421)
!1486 = !DILocation(line: 408, column: 19, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 408, column: 7)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 408, column: 7)
!1489 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 407, column: 5)
!1490 = !DILocation(line: 408, column: 7, scope: !1488)
!1491 = !DILocation(line: 410, column: 19, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 409, column: 7)
!1493 = !DILocation(line: 411, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 411, column: 9)
!1495 = !DILocation(line: 413, column: 15, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 412, column: 9)
!1497 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 411, column: 9)
!1498 = distinct !DIAssignID()
!1499 = distinct !DIAssignID()
!1500 = distinct !DIAssignID()
!1501 = !DILocation(line: 414, column: 37, scope: !1496)
!1502 = !DILocation(line: 414, column: 46, scope: !1496)
!1503 = !DILocation(line: 414, column: 31, scope: !1496)
!1504 = !DILocation(line: 414, column: 11, scope: !1496)
!1505 = !DILocation(line: 415, column: 32, scope: !1496)
!1506 = !DILocation(line: 415, column: 11, scope: !1496)
!1507 = !DILocation(line: 415, column: 21, scope: !1496)
!1508 = !DILocation(line: 411, column: 34, scope: !1497)
!1509 = distinct !{!1509, !1493, !1510}
!1510 = !DILocation(line: 416, column: 9, scope: !1494)
!1511 = !DILocation(line: 408, column: 32, scope: !1487)
!1512 = distinct !{!1512, !1490, !1513}
!1513 = !DILocation(line: 417, column: 7, scope: !1488)
!1514 = !DILocation(line: 0, scope: !1446, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 421, column: 25, scope: !1420)
!1516 = !DILocation(line: 44, column: 10, scope: !1446, inlinedAt: !1515)
!1517 = !DILocation(line: 0, scope: !1420)
!1518 = !DILocation(line: 0, scope: !1446, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 422, column: 25, scope: !1420)
!1520 = !DILocation(line: 44, column: 10, scope: !1446, inlinedAt: !1519)
!1521 = !DILocation(line: 427, column: 21, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 427, column: 12)
!1523 = !DILocation(line: 427, column: 12, scope: !1420)
!1524 = !DILocation(line: 430, column: 20, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 430, column: 11)
!1526 = !DILocation(line: 430, column: 11, scope: !1420)
!1527 = !DILocation(line: 438, column: 37, scope: !1420)
!1528 = !DILocation(line: 438, column: 51, scope: !1420)
!1529 = !DILocation(line: 438, column: 21, scope: !1420)
!1530 = !DILocation(line: 439, column: 37, scope: !1420)
!1531 = !DILocation(line: 439, column: 51, scope: !1420)
!1532 = !DILocation(line: 439, column: 21, scope: !1420)
!1533 = !DILocation(line: 441, column: 21, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 441, column: 7)
!1535 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 441, column: 7)
!1536 = !DILocation(line: 441, column: 7, scope: !1535)
!1537 = !DILocation(line: 442, column: 17, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 441, column: 40)
!1539 = !DILocation(line: 442, column: 81, scope: !1538)
!1540 = !DILocation(line: 442, column: 57, scope: !1538)
!1541 = !DILocation(line: 442, column: 9, scope: !1538)
!1542 = !DILocation(line: 444, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 444, column: 7)
!1544 = !DILocation(line: 446, column: 32, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 445, column: 7)
!1546 = distinct !DILexicalBlock(scope: !1543, file: !2, line: 444, column: 7)
!1547 = !DILocation(line: 447, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 447, column: 9)
!1549 = !DILocation(line: 449, column: 16, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 448, column: 9)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 447, column: 9)
!1552 = distinct !DIAssignID()
!1553 = distinct !DIAssignID()
!1554 = distinct !DIAssignID()
!1555 = !DILocation(line: 450, column: 37, scope: !1550)
!1556 = !DILocation(line: 450, column: 46, scope: !1550)
!1557 = !DILocation(line: 450, column: 31, scope: !1550)
!1558 = !DILocation(line: 450, column: 11, scope: !1550)
!1559 = !DILocation(line: 451, column: 62, scope: !1550)
!1560 = !DILocation(line: 451, column: 11, scope: !1550)
!1561 = !DILocation(line: 451, column: 51, scope: !1550)
!1562 = !DILocation(line: 447, column: 35, scope: !1551)
!1563 = distinct !{!1563, !1547, !1564}
!1564 = !DILocation(line: 452, column: 9, scope: !1548)
!1565 = !DILocation(line: 444, column: 34, scope: !1546)
!1566 = !DILocation(line: 444, column: 19, scope: !1546)
!1567 = distinct !{!1567, !1542, !1568}
!1568 = !DILocation(line: 453, column: 7, scope: !1543)
!1569 = !DILocation(line: 441, column: 36, scope: !1534)
!1570 = distinct !{!1570, !1536, !1571}
!1571 = !DILocation(line: 443, column: 7, scope: !1535)
!1572 = !DILocation(line: 455, column: 3, scope: !1410)
!1573 = !DILocation(line: 456, column: 1, scope: !1393)
!1574 = distinct !DISubprogram(name: "buf2img_bitshift", scope: !2, file: !2, line: 225, type: !1200, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1593, !1596, !1597, !1598, !1599, !1600}
!1576 = !DILocalVariable(name: "imgX", arg: 1, scope: !1574, file: !2, line: 225, type: !520)
!1577 = !DILocalVariable(name: "buf", arg: 2, scope: !1574, file: !2, line: 226, type: !1202)
!1578 = !DILocalVariable(name: "size_x", arg: 3, scope: !1574, file: !2, line: 227, type: !31)
!1579 = !DILocalVariable(name: "size_y", arg: 4, scope: !1574, file: !2, line: 228, type: !31)
!1580 = !DILocalVariable(name: "o_size_x", arg: 5, scope: !1574, file: !2, line: 229, type: !31)
!1581 = !DILocalVariable(name: "o_size_y", arg: 6, scope: !1574, file: !2, line: 230, type: !31)
!1582 = !DILocalVariable(name: "symbol_size_in_bytes", arg: 7, scope: !1574, file: !2, line: 231, type: !31)
!1583 = !DILocalVariable(name: "bitshift", arg: 8, scope: !1574, file: !2, line: 232, type: !31)
!1584 = !DILocalVariable(name: "i", scope: !1574, file: !2, line: 235, type: !31)
!1585 = !DILocalVariable(name: "j", scope: !1574, file: !2, line: 235, type: !31)
!1586 = !DILocalVariable(name: "tmp16", scope: !1574, file: !2, line: 237, type: !74)
!1587 = !DILocalVariable(name: "ui16", scope: !1574, file: !2, line: 237, type: !74)
!1588 = !DILocalVariable(name: "tmp32", scope: !1574, file: !2, line: 238, type: !1305)
!1589 = !DILocalVariable(name: "ui32", scope: !1574, file: !2, line: 238, type: !1305)
!1590 = !DILocalVariable(name: "j_pos", scope: !1591, file: !2, line: 295, type: !31)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 293, column: 3)
!1592 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 245, column: 7)
!1593 = !DILocalVariable(name: "iminwidth", scope: !1594, file: !2, line: 311, type: !31)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 310, column: 7)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !2, line: 296, column: 11)
!1596 = !DILocalVariable(name: "iminheight", scope: !1594, file: !2, line: 312, type: !31)
!1597 = !DILocalVariable(name: "dst_offset_x", scope: !1594, file: !2, line: 313, type: !31)
!1598 = !DILocalVariable(name: "dst_offset_y", scope: !1594, file: !2, line: 313, type: !31)
!1599 = !DILocalVariable(name: "offset_x", scope: !1594, file: !2, line: 314, type: !31)
!1600 = !DILocalVariable(name: "offset_y", scope: !1594, file: !2, line: 314, type: !31)
!1601 = distinct !DIAssignID()
!1602 = !DILocation(line: 0, scope: !1574)
!1603 = !DILocation(line: 237, column: 3, scope: !1574)
!1604 = !DILocation(line: 240, column: 30, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 240, column: 7)
!1606 = !DILocation(line: 240, column: 36, scope: !1605)
!1607 = !DILocation(line: 240, column: 48, scope: !1605)
!1608 = !DILocation(line: 240, column: 7, scope: !1574)
!1609 = !DILocation(line: 242, column: 5, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 241, column: 3)
!1611 = !DILocation(line: 243, column: 3, scope: !1610)
!1612 = !DILocation(line: 296, column: 18, scope: !1595)
!1613 = !DILocation(line: 296, column: 30, scope: !1595)
!1614 = !DILocation(line: 298, column: 23, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 298, column: 9)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !2, line: 298, column: 9)
!1617 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 297, column: 7)
!1618 = !DILocation(line: 298, column: 9, scope: !1616)
!1619 = !DILocation(line: 300, column: 20, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 299, column: 9)
!1621 = !DILocation(line: 0, scope: !1591)
!1622 = !DILocation(line: 301, column: 11, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !2, line: 301, column: 11)
!1624 = !DILocation(line: 303, column: 17, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 302, column: 11)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 301, column: 11)
!1627 = distinct !DIAssignID()
!1628 = distinct !DIAssignID()
!1629 = distinct !DIAssignID()
!1630 = distinct !DIAssignID()
!1631 = !DILocation(line: 304, column: 39, scope: !1625)
!1632 = !DILocation(line: 304, column: 48, scope: !1625)
!1633 = !DILocation(line: 304, column: 33, scope: !1625)
!1634 = !DILocation(line: 304, column: 13, scope: !1625)
!1635 = !DILocation(line: 305, column: 46, scope: !1625)
!1636 = !DILocalVariable(name: "x", arg: 1, scope: !1637, file: !1447, line: 160, type: !31)
!1637 = distinct !DISubprogram(name: "rshift_rnd", scope: !1447, file: !1447, line: 160, type: !1448, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1638)
!1638 = !{!1636, !1639}
!1639 = !DILocalVariable(name: "a", arg: 2, scope: !1637, file: !1447, line: 160, type: !31)
!1640 = !DILocation(line: 0, scope: !1637, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 305, column: 35, scope: !1625)
!1642 = !DILocation(line: 162, column: 24, scope: !1637, inlinedAt: !1641)
!1643 = !DILocation(line: 162, column: 41, scope: !1637, inlinedAt: !1641)
!1644 = !DILocation(line: 305, column: 26, scope: !1625)
!1645 = !DILocation(line: 305, column: 13, scope: !1625)
!1646 = !DILocation(line: 305, column: 24, scope: !1625)
!1647 = !DILocation(line: 301, column: 38, scope: !1626)
!1648 = !DILocation(line: 301, column: 25, scope: !1626)
!1649 = distinct !{!1649, !1622, !1650}
!1650 = !DILocation(line: 306, column: 11, scope: !1623)
!1651 = !DILocation(line: 298, column: 36, scope: !1615)
!1652 = distinct !{!1652, !1618, !1653}
!1653 = !DILocation(line: 307, column: 9, scope: !1616)
!1654 = !DILocation(line: 162, column: 52, scope: !1637, inlinedAt: !1641)
!1655 = !DILocation(line: 0, scope: !1446, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 311, column: 27, scope: !1594)
!1657 = !DILocation(line: 44, column: 10, scope: !1446, inlinedAt: !1656)
!1658 = !DILocation(line: 0, scope: !1594)
!1659 = !DILocation(line: 0, scope: !1446, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 312, column: 27, scope: !1594)
!1661 = !DILocation(line: 44, column: 10, scope: !1446, inlinedAt: !1660)
!1662 = !DILocation(line: 317, column: 23, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 317, column: 14)
!1664 = !DILocation(line: 317, column: 14, scope: !1594)
!1665 = !DILocation(line: 320, column: 22, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 320, column: 13)
!1667 = !DILocation(line: 320, column: 13, scope: !1594)
!1668 = !DILocation(line: 328, column: 39, scope: !1594)
!1669 = !DILocation(line: 328, column: 53, scope: !1594)
!1670 = !DILocation(line: 328, column: 23, scope: !1594)
!1671 = !DILocation(line: 329, column: 39, scope: !1594)
!1672 = !DILocation(line: 329, column: 53, scope: !1594)
!1673 = !DILocation(line: 329, column: 23, scope: !1594)
!1674 = !DILocation(line: 331, column: 21, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 331, column: 9)
!1676 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 331, column: 9)
!1677 = !DILocation(line: 331, column: 9, scope: !1676)
!1678 = !DILocation(line: 333, column: 34, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 332, column: 9)
!1680 = !DILocation(line: 334, column: 11, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 334, column: 11)
!1682 = !DILocation(line: 336, column: 17, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 335, column: 11)
!1684 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 334, column: 11)
!1685 = distinct !DIAssignID()
!1686 = distinct !DIAssignID()
!1687 = distinct !DIAssignID()
!1688 = distinct !DIAssignID()
!1689 = !DILocation(line: 337, column: 39, scope: !1683)
!1690 = !DILocation(line: 337, column: 48, scope: !1683)
!1691 = !DILocation(line: 337, column: 33, scope: !1683)
!1692 = !DILocation(line: 337, column: 13, scope: !1683)
!1693 = !DILocation(line: 338, column: 76, scope: !1683)
!1694 = !DILocation(line: 0, scope: !1637, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 338, column: 65, scope: !1683)
!1696 = !DILocation(line: 162, column: 24, scope: !1637, inlinedAt: !1695)
!1697 = !DILocation(line: 162, column: 41, scope: !1637, inlinedAt: !1695)
!1698 = !DILocation(line: 338, column: 56, scope: !1683)
!1699 = !DILocation(line: 338, column: 13, scope: !1683)
!1700 = !DILocation(line: 338, column: 54, scope: !1683)
!1701 = !DILocation(line: 334, column: 37, scope: !1684)
!1702 = !DILocation(line: 334, column: 23, scope: !1684)
!1703 = distinct !{!1703, !1680, !1704}
!1704 = !DILocation(line: 339, column: 11, scope: !1681)
!1705 = !DILocation(line: 331, column: 36, scope: !1675)
!1706 = distinct !{!1706, !1677, !1707}
!1707 = !DILocation(line: 340, column: 9, scope: !1676)
!1708 = !DILocation(line: 162, column: 52, scope: !1637, inlinedAt: !1695)
!1709 = !DILocation(line: 343, column: 1, scope: !1574)
!1710 = distinct !DISubprogram(name: "fillPlane", scope: !2, file: !2, line: 102, type: !1711, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1713)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !520, !31, !31, !31}
!1713 = !{!1714, !1715, !1716, !1717, !1718, !1719}
!1714 = !DILocalVariable(name: "imgX", arg: 1, scope: !1710, file: !2, line: 102, type: !520)
!1715 = !DILocalVariable(name: "nVal", arg: 2, scope: !1710, file: !2, line: 103, type: !31)
!1716 = !DILocalVariable(name: "size_x", arg: 3, scope: !1710, file: !2, line: 104, type: !31)
!1717 = !DILocalVariable(name: "size_y", arg: 4, scope: !1710, file: !2, line: 105, type: !31)
!1718 = !DILocalVariable(name: "j", scope: !1710, file: !2, line: 108, type: !31)
!1719 = !DILocalVariable(name: "i", scope: !1710, file: !2, line: 108, type: !31)
!1720 = !DILocation(line: 0, scope: !1710)
!1721 = !DILocation(line: 116, column: 19, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 116, column: 5)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 116, column: 5)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 115, column: 3)
!1725 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 110, column: 7)
!1726 = !DILocation(line: 116, column: 5, scope: !1723)
!1727 = !DILocation(line: 118, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 118, column: 7)
!1729 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 117, column: 5)
!1730 = !DILocation(line: 120, column: 9, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !2, line: 119, column: 7)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 118, column: 7)
!1733 = !DILocation(line: 120, column: 20, scope: !1731)
!1734 = !DILocation(line: 118, column: 32, scope: !1732)
!1735 = distinct !{!1735, !1727, !1736}
!1736 = !DILocation(line: 121, column: 7, scope: !1728)
!1737 = distinct !{!1737, !1385}
!1738 = !DILocation(line: 116, column: 30, scope: !1722)
!1739 = distinct !{!1739, !1726, !1740}
!1740 = !DILocation(line: 122, column: 5, scope: !1723)
!1741 = !DILocation(line: 124, column: 1, scope: !1710)
!1742 = !DISubprogram(name: "error", scope: !91, file: !91, line: 940, type: !1743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !1745, !31}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1746 = distinct !DISubprogram(name: "AllocateFrameMemory", scope: !2, file: !2, line: 544, type: !1747, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1749)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null, !89, !460, !1263}
!1749 = !{!1750, !1751, !1752}
!1750 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1746, file: !2, line: 544, type: !89)
!1751 = !DILocalVariable(name: "p_Inp", arg: 2, scope: !1746, file: !2, line: 544, type: !460)
!1752 = !DILocalVariable(name: "source", arg: 3, scope: !1746, file: !2, line: 544, type: !1263)
!1753 = !DILocation(line: 0, scope: !1746)
!1754 = !DILocation(line: 546, column: 45, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 546, column: 7)
!1756 = !DILocation(line: 546, column: 60, scope: !1755)
!1757 = !DILocation(line: 546, column: 50, scope: !1755)
!1758 = !DILocation(line: 546, column: 37, scope: !1755)
!1759 = !DILocation(line: 546, column: 29, scope: !1755)
!1760 = !DILocation(line: 546, column: 23, scope: !1755)
!1761 = !DILocation(line: 546, column: 27, scope: !1755)
!1762 = !DILocation(line: 546, column: 12, scope: !1755)
!1763 = !DILocation(line: 546, column: 7, scope: !1746)
!1764 = !DILocation(line: 547, column: 5, scope: !1755)
!1765 = !DILocation(line: 548, column: 26, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 548, column: 7)
!1767 = !DILocation(line: 548, column: 7, scope: !1766)
!1768 = !DILocation(line: 548, column: 7, scope: !1746)
!1769 = !DILocation(line: 550, column: 48, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 550, column: 9)
!1771 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 549, column: 3)
!1772 = !DILocation(line: 550, column: 63, scope: !1770)
!1773 = !DILocation(line: 550, column: 53, scope: !1770)
!1774 = !DILocation(line: 550, column: 40, scope: !1770)
!1775 = !DILocation(line: 550, column: 32, scope: !1770)
!1776 = !DILocation(line: 550, column: 25, scope: !1770)
!1777 = !DILocation(line: 550, column: 30, scope: !1770)
!1778 = !DILocation(line: 550, column: 14, scope: !1770)
!1779 = !DILocation(line: 550, column: 9, scope: !1771)
!1780 = !DILocation(line: 551, column: 7, scope: !1770)
!1781 = !DILocation(line: 553, column: 1, scope: !1746)
!1782 = !DISubprogram(name: "malloc", scope: !1783, file: !1783, line: 540, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1783 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!76, !1786}
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1787, line: 18, baseType: !1305)
!1787 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1788 = !DISubprogram(name: "no_mem_exit", scope: !1789, file: !1789, line: 180, type: !1790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1789 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!1790 = !DISubroutineType(types: !1791)
!1791 = !{null, !1745}
!1792 = distinct !DISubprogram(name: "DeleteFrameMemory", scope: !2, file: !2, line: 562, type: !1793, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1795)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !89}
!1795 = !{!1796}
!1796 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1792, file: !2, line: 562, type: !89)
!1797 = !DILocation(line: 0, scope: !1792)
!1798 = !DILocation(line: 564, column: 14, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1792, file: !2, line: 564, column: 7)
!1800 = !DILocation(line: 564, column: 18, scope: !1799)
!1801 = !DILocation(line: 564, column: 7, scope: !1792)
!1802 = !DILocation(line: 565, column: 5, scope: !1799)
!1803 = !DILocation(line: 566, column: 14, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1792, file: !2, line: 566, column: 7)
!1805 = !DILocation(line: 566, column: 19, scope: !1804)
!1806 = !DILocation(line: 566, column: 7, scope: !1792)
!1807 = !DILocation(line: 567, column: 5, scope: !1804)
!1808 = !DILocation(line: 568, column: 1, scope: !1792)
!1809 = !DISubprogram(name: "free", scope: !1783, file: !1783, line: 555, type: !1810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !76}
!1812 = distinct !DISubprogram(name: "read_one_frame", scope: !2, file: !2, line: 589, type: !1813, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1816)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!31, !89, !1815, !31, !31, !1263, !1263, !523}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1829, !1830, !1831}
!1817 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1812, file: !2, line: 589, type: !89)
!1818 = !DILocalVariable(name: "input_file", arg: 2, scope: !1812, file: !2, line: 589, type: !1815)
!1819 = !DILocalVariable(name: "FrameNoInFile", arg: 3, scope: !1812, file: !2, line: 589, type: !31)
!1820 = !DILocalVariable(name: "HeaderSize", arg: 4, scope: !1812, file: !2, line: 589, type: !31)
!1821 = !DILocalVariable(name: "source", arg: 5, scope: !1812, file: !2, line: 589, type: !1263)
!1822 = !DILocalVariable(name: "output", arg: 6, scope: !1812, file: !2, line: 589, type: !1263)
!1823 = !DILocalVariable(name: "pImage", arg: 7, scope: !1812, file: !2, line: 589, type: !523)
!1824 = !DILocalVariable(name: "p_Inp", scope: !1812, file: !2, line: 591, type: !460)
!1825 = !DILocalVariable(name: "file_read", scope: !1812, file: !2, line: 592, type: !31)
!1826 = !DILocalVariable(name: "symbol_size_in_bytes", scope: !1812, file: !2, line: 593, type: !55)
!1827 = !DILocalVariable(name: "bytes_y", scope: !1812, file: !2, line: 595, type: !1828)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!1829 = !DILocalVariable(name: "bytes_uv", scope: !1812, file: !2, line: 596, type: !1828)
!1830 = !DILocalVariable(name: "bit_scale", scope: !1812, file: !2, line: 597, type: !31)
!1831 = !DILocalVariable(name: "rgb_input", scope: !1812, file: !2, line: 599, type: !31)
!1832 = !DILocation(line: 0, scope: !1812)
!1833 = !DILocation(line: 591, column: 35, scope: !1812)
!1834 = !DILocation(line: 593, column: 46, scope: !1812)
!1835 = !DILocation(line: 595, column: 30, scope: !1812)
!1836 = !DILocation(line: 595, column: 22, scope: !1812)
!1837 = !DILocation(line: 595, column: 42, scope: !1812)
!1838 = !DILocation(line: 596, column: 23, scope: !1812)
!1839 = !DILocation(line: 596, column: 43, scope: !1812)
!1840 = !DILocation(line: 599, column: 41, scope: !1812)
!1841 = !DILocation(line: 599, column: 53, scope: !1812)
!1842 = !DILocation(line: 599, column: 63, scope: !1812)
!1843 = !DILocation(line: 599, column: 74, scope: !1812)
!1844 = !DILocation(line: 599, column: 85, scope: !1812)
!1845 = !DILocation(line: 601, column: 18, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 601, column: 6)
!1847 = !DILocation(line: 601, column: 34, scope: !1846)
!1848 = !DILocation(line: 601, column: 6, scope: !1812)
!1849 = !DILocation(line: 603, column: 19, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !2, line: 603, column: 7)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 602, column: 2)
!1852 = !DILocation(line: 603, column: 26, scope: !1850)
!1853 = !DILocation(line: 0, scope: !1850)
!1854 = !DILocation(line: 603, column: 7, scope: !1851)
!1855 = !DILocation(line: 605, column: 16, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 604, column: 5)
!1857 = !DILocation(line: 606, column: 5, scope: !1856)
!1858 = !DILocation(line: 609, column: 16, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 608, column: 5)
!1860 = !DILocation(line: 614, column: 99, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 613, column: 2)
!1862 = !DILocation(line: 614, column: 15, scope: !1861)
!1863 = !DILocation(line: 0, scope: !1846)
!1864 = !DILocation(line: 616, column: 9, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 616, column: 8)
!1866 = !DILocation(line: 616, column: 8, scope: !1812)
!1867 = !DILocation(line: 622, column: 18, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 622, column: 6)
!1869 = !DILocation(line: 622, column: 6, scope: !1868)
!1870 = !DILocation(line: 622, column: 6, scope: !1812)
!1871 = !DILocation(line: 624, column: 26, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !2, line: 623, column: 2)
!1873 = !DILocation(line: 624, column: 39, scope: !1872)
!1874 = !DILocalVariable(name: "input", arg: 1, scope: !1875, file: !2, line: 132, type: !1878)
!1875 = distinct !DISubprogram(name: "deinterleave", scope: !2, file: !2, line: 132, type: !1876, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !1879)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !1878, !1878, !1263, !31}
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1879 = !{!1874, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887}
!1880 = !DILocalVariable(name: "output", arg: 2, scope: !1875, file: !2, line: 133, type: !1878)
!1881 = !DILocalVariable(name: "source", arg: 3, scope: !1875, file: !2, line: 134, type: !1263)
!1882 = !DILocalVariable(name: "symbol_size_in_bytes", arg: 4, scope: !1875, file: !2, line: 135, type: !31)
!1883 = !DILocalVariable(name: "icmp0", scope: !1875, file: !2, line: 139, type: !1202)
!1884 = !DILocalVariable(name: "ocmp0", scope: !1875, file: !2, line: 141, type: !1202)
!1885 = !DILocalVariable(name: "ocmp1", scope: !1875, file: !2, line: 143, type: !1202)
!1886 = !DILocalVariable(name: "ocmp2", scope: !1875, file: !2, line: 144, type: !1202)
!1887 = !DILocalVariable(name: "i", scope: !1875, file: !2, line: 146, type: !31)
!1888 = !DILocation(line: 0, scope: !1875, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 624, column: 3, scope: !1872)
!1890 = !DILocation(line: 139, column: 26, scope: !1875, inlinedAt: !1889)
!1891 = !DILocation(line: 141, column: 26, scope: !1875, inlinedAt: !1889)
!1892 = !DILocation(line: 143, column: 57, scope: !1875, inlinedAt: !1889)
!1893 = !DILocation(line: 143, column: 55, scope: !1875, inlinedAt: !1889)
!1894 = !DILocation(line: 143, column: 32, scope: !1875, inlinedAt: !1889)
!1895 = !DILocation(line: 144, column: 57, scope: !1875, inlinedAt: !1889)
!1896 = !DILocation(line: 144, column: 55, scope: !1875, inlinedAt: !1889)
!1897 = !DILocation(line: 144, column: 32, scope: !1875, inlinedAt: !1889)
!1898 = !DILocation(line: 148, column: 15, scope: !1899, inlinedAt: !1889)
!1899 = distinct !DILexicalBlock(scope: !1875, file: !2, line: 148, column: 7)
!1900 = !DILocation(line: 148, column: 26, scope: !1899, inlinedAt: !1889)
!1901 = !DILocation(line: 148, column: 7, scope: !1875, inlinedAt: !1889)
!1902 = !DILocation(line: 150, column: 19, scope: !1903, inlinedAt: !1889)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !2, line: 150, column: 5)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !2, line: 150, column: 5)
!1905 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 149, column: 3)
!1906 = !DILocation(line: 150, column: 5, scope: !1904, inlinedAt: !1889)
!1907 = !DILocation(line: 152, column: 7, scope: !1908, inlinedAt: !1889)
!1908 = distinct !DILexicalBlock(scope: !1903, file: !2, line: 151, column: 5)
!1909 = !DILocation(line: 153, column: 13, scope: !1908, inlinedAt: !1889)
!1910 = !DILocation(line: 154, column: 13, scope: !1908, inlinedAt: !1889)
!1911 = !DILocation(line: 155, column: 7, scope: !1908, inlinedAt: !1889)
!1912 = !DILocation(line: 156, column: 13, scope: !1908, inlinedAt: !1889)
!1913 = !DILocation(line: 157, column: 13, scope: !1908, inlinedAt: !1889)
!1914 = !DILocation(line: 158, column: 7, scope: !1908, inlinedAt: !1889)
!1915 = !DILocation(line: 159, column: 13, scope: !1908, inlinedAt: !1889)
!1916 = !DILocation(line: 160, column: 13, scope: !1908, inlinedAt: !1889)
!1917 = !DILocation(line: 161, column: 7, scope: !1908, inlinedAt: !1889)
!1918 = !DILocation(line: 162, column: 13, scope: !1908, inlinedAt: !1889)
!1919 = !DILocation(line: 163, column: 13, scope: !1908, inlinedAt: !1889)
!1920 = !DILocation(line: 150, column: 43, scope: !1903, inlinedAt: !1889)
!1921 = !DILocation(line: 150, column: 21, scope: !1903, inlinedAt: !1889)
!1922 = distinct !{!1922, !1906, !1923}
!1923 = !DILocation(line: 164, column: 5, scope: !1904, inlinedAt: !1889)
!1924 = !DILocation(line: 167, column: 14, scope: !1905, inlinedAt: !1889)
!1925 = !DILocation(line: 168, column: 15, scope: !1905, inlinedAt: !1889)
!1926 = !DILocation(line: 168, column: 13, scope: !1905, inlinedAt: !1889)
!1927 = !DILocation(line: 169, column: 13, scope: !1905, inlinedAt: !1889)
!1928 = !DILocation(line: 171, column: 15, scope: !1929, inlinedAt: !1889)
!1929 = distinct !DILexicalBlock(scope: !1875, file: !2, line: 171, column: 7)
!1930 = !DILocation(line: 170, column: 3, scope: !1905, inlinedAt: !1889)
!1931 = !DILocation(line: 141, column: 18, scope: !1875, inlinedAt: !1889)
!1932 = !DILocation(line: 143, column: 18, scope: !1875, inlinedAt: !1889)
!1933 = !DILocation(line: 144, column: 18, scope: !1875, inlinedAt: !1889)
!1934 = !DILocation(line: 171, column: 7, scope: !1875, inlinedAt: !1889)
!1935 = !DILocation(line: 200, column: 21, scope: !1936, inlinedAt: !1889)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !2, line: 200, column: 5)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 200, column: 5)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 199, column: 3)
!1939 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 198, column: 12)
!1940 = !DILocation(line: 200, column: 19, scope: !1936, inlinedAt: !1889)
!1941 = !DILocation(line: 200, column: 5, scope: !1937, inlinedAt: !1889)
!1942 = !DILocation(line: 173, column: 21, scope: !1943, inlinedAt: !1889)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !2, line: 173, column: 5)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !2, line: 173, column: 5)
!1945 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 172, column: 3)
!1946 = !DILocation(line: 173, column: 19, scope: !1943, inlinedAt: !1889)
!1947 = !DILocation(line: 173, column: 5, scope: !1944, inlinedAt: !1889)
!1948 = !DILocation(line: 176, column: 7, scope: !1949, inlinedAt: !1889)
!1949 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 174, column: 5)
!1950 = !DILocation(line: 177, column: 13, scope: !1949, inlinedAt: !1889)
!1951 = !DILocation(line: 178, column: 13, scope: !1949, inlinedAt: !1889)
!1952 = !DILocation(line: 180, column: 7, scope: !1949, inlinedAt: !1889)
!1953 = !DILocation(line: 181, column: 13, scope: !1949, inlinedAt: !1889)
!1954 = !DILocation(line: 182, column: 13, scope: !1949, inlinedAt: !1889)
!1955 = !DILocation(line: 184, column: 7, scope: !1949, inlinedAt: !1889)
!1956 = !DILocation(line: 185, column: 13, scope: !1949, inlinedAt: !1889)
!1957 = !DILocation(line: 186, column: 13, scope: !1949, inlinedAt: !1889)
!1958 = !DILocation(line: 188, column: 7, scope: !1949, inlinedAt: !1889)
!1959 = !DILocation(line: 189, column: 13, scope: !1949, inlinedAt: !1889)
!1960 = !DILocation(line: 190, column: 13, scope: !1949, inlinedAt: !1889)
!1961 = !DILocation(line: 173, column: 43, scope: !1943, inlinedAt: !1889)
!1962 = distinct !{!1962, !1947, !1963}
!1963 = !DILocation(line: 191, column: 5, scope: !1944, inlinedAt: !1889)
!1964 = !DILocation(line: 202, column: 7, scope: !1965, inlinedAt: !1889)
!1965 = distinct !DILexicalBlock(scope: !1936, file: !2, line: 201, column: 5)
!1966 = !DILocation(line: 203, column: 13, scope: !1965, inlinedAt: !1889)
!1967 = !DILocation(line: 204, column: 13, scope: !1965, inlinedAt: !1889)
!1968 = !DILocation(line: 205, column: 7, scope: !1965, inlinedAt: !1889)
!1969 = !DILocation(line: 206, column: 13, scope: !1965, inlinedAt: !1889)
!1970 = !DILocation(line: 207, column: 13, scope: !1965, inlinedAt: !1889)
!1971 = !DILocation(line: 208, column: 7, scope: !1965, inlinedAt: !1889)
!1972 = !DILocation(line: 209, column: 13, scope: !1965, inlinedAt: !1889)
!1973 = !DILocation(line: 210, column: 13, scope: !1965, inlinedAt: !1889)
!1974 = !DILocation(line: 200, column: 43, scope: !1936, inlinedAt: !1889)
!1975 = distinct !{!1975, !1941, !1976}
!1976 = !DILocation(line: 211, column: 5, scope: !1937, inlinedAt: !1889)
!1977 = !DILocation(line: 0, scope: !1929, inlinedAt: !1889)
!1978 = !DILocation(line: 217, column: 1, scope: !1875, inlinedAt: !1889)
!1979 = !DILocation(line: 627, column: 22, scope: !1812)
!1980 = !DILocation(line: 627, column: 14, scope: !1812)
!1981 = !DILocation(line: 627, column: 45, scope: !1812)
!1982 = !DILocation(line: 627, column: 37, scope: !1812)
!1983 = !DILocation(line: 627, column: 35, scope: !1812)
!1984 = !DILocation(line: 0, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 629, column: 5)
!1986 = !DILocation(line: 629, column: 5, scope: !1812)
!1987 = !DILocation(line: 630, column: 40, scope: !1985)
!1988 = !DILocation(line: 630, column: 59, scope: !1985)
!1989 = !DILocation(line: 630, column: 51, scope: !1985)
!1990 = !DILocation(line: 630, column: 77, scope: !1985)
!1991 = !DILocation(line: 630, column: 69, scope: !1985)
!1992 = !DILocation(line: 630, column: 96, scope: !1985)
!1993 = !DILocation(line: 630, column: 88, scope: !1985)
!1994 = !DILocation(line: 630, column: 114, scope: !1985)
!1995 = !DILocation(line: 630, column: 106, scope: !1985)
!1996 = !DILocation(line: 630, column: 3, scope: !1985)
!1997 = !DILocation(line: 638, column: 13, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 638, column: 6)
!1999 = !DILocation(line: 638, column: 24, scope: !1998)
!2000 = !DILocation(line: 638, column: 6, scope: !1812)
!2001 = !DILocation(line: 632, column: 49, scope: !1985)
!2002 = !DILocation(line: 632, column: 41, scope: !1985)
!2003 = !DILocation(line: 632, column: 67, scope: !1985)
!2004 = !DILocation(line: 632, column: 59, scope: !1985)
!2005 = !DILocation(line: 632, column: 86, scope: !1985)
!2006 = !DILocation(line: 632, column: 78, scope: !1985)
!2007 = !DILocation(line: 632, column: 104, scope: !1985)
!2008 = !DILocation(line: 632, column: 96, scope: !1985)
!2009 = !DILocation(line: 632, column: 3, scope: !1985)
!2010 = !DILocation(line: 640, column: 15, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 639, column: 2)
!2012 = !DILocation(line: 640, column: 38, scope: !2011)
!2013 = !DILocation(line: 640, column: 36, scope: !2011)
!2014 = !DILocation(line: 646, column: 12, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !2, line: 645, column: 7)
!2016 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 644, column: 3)
!2017 = !DILocation(line: 646, column: 20, scope: !2015)
!2018 = !DILocation(line: 646, column: 38, scope: !2015)
!2019 = !DILocation(line: 646, column: 42, scope: !2015)
!2020 = !DILocation(line: 646, column: 52, scope: !2015)
!2021 = !DILocation(line: 646, column: 64, scope: !2015)
!2022 = !DILocation(line: 646, column: 82, scope: !2015)
!2023 = !DILocation(line: 646, column: 101, scope: !2015)
!2024 = !DILocation(line: 646, column: 119, scope: !2015)
!2025 = !DILocation(line: 646, column: 5, scope: !2015)
!2026 = !DILocation(line: 650, column: 16, scope: !2016)
!2027 = !DILocation(line: 650, column: 39, scope: !2016)
!2028 = !DILocation(line: 650, column: 37, scope: !2016)
!2029 = !DILocation(line: 652, column: 12, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2016, file: !2, line: 651, column: 7)
!2031 = !DILocation(line: 652, column: 20, scope: !2030)
!2032 = !DILocation(line: 652, column: 38, scope: !2030)
!2033 = !DILocation(line: 652, column: 43, scope: !2030)
!2034 = !DILocation(line: 652, column: 61, scope: !2030)
!2035 = !DILocation(line: 652, column: 80, scope: !2030)
!2036 = !DILocation(line: 652, column: 98, scope: !2030)
!2037 = !DILocation(line: 652, column: 5, scope: !2030)
!2038 = !DILocation(line: 648, column: 12, scope: !2015)
!2039 = !DILocation(line: 648, column: 20, scope: !2015)
!2040 = !DILocation(line: 648, column: 38, scope: !2015)
!2041 = !DILocation(line: 648, column: 42, scope: !2015)
!2042 = !DILocation(line: 648, column: 53, scope: !2015)
!2043 = !DILocation(line: 648, column: 71, scope: !2015)
!2044 = !DILocation(line: 648, column: 90, scope: !2015)
!2045 = !DILocation(line: 648, column: 108, scope: !2015)
!2046 = !DILocation(line: 648, column: 5, scope: !2015)
!2047 = !DILocation(line: 654, column: 12, scope: !2030)
!2048 = !DILocation(line: 654, column: 20, scope: !2030)
!2049 = !DILocation(line: 654, column: 38, scope: !2030)
!2050 = !DILocation(line: 654, column: 42, scope: !2030)
!2051 = !DILocation(line: 654, column: 52, scope: !2030)
!2052 = !DILocation(line: 654, column: 64, scope: !2030)
!2053 = !DILocation(line: 654, column: 82, scope: !2030)
!2054 = !DILocation(line: 654, column: 101, scope: !2030)
!2055 = !DILocation(line: 654, column: 119, scope: !2030)
!2056 = !DILocation(line: 654, column: 5, scope: !2030)
!2057 = !DILocation(line: 663, column: 1, scope: !1812)
!2058 = !DISubprogram(name: "ReadTIFFImage", scope: !2059, file: !2059, line: 22, type: !2060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2059 = !DIFile(filename: "ldecod_src/inc/io_tiff.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c726d6d360c1b1e8634c71a4a9239237")
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!31, !460, !1815, !31, !1263, !1202}
!2062 = !DISubprogram(name: "ReadFrameSeparate", scope: !2063, file: !2063, line: 19, type: !2064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2063 = !DIFile(filename: "ldecod_src/inc/io_raw.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "6c0bd42530e91dc885fc5c7ca18aaed8")
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!31, !460, !1815, !31, !31, !1263, !1202}
!2066 = !DISubprogram(name: "ReadFrameConcatenated", scope: !2063, file: !2063, line: 18, type: !2064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2067 = distinct !DISubprogram(name: "pad_borders", scope: !2, file: !2, line: 685, type: !2068, scopeLine: 686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{null, !111, !31, !31, !31, !31, !523}
!2070 = !{!2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079}
!2071 = !DILocalVariable(name: "output", arg: 1, scope: !2067, file: !2, line: 685, type: !111)
!2072 = !DILocalVariable(name: "img_size_x", arg: 2, scope: !2067, file: !2, line: 685, type: !31)
!2073 = !DILocalVariable(name: "img_size_y", arg: 3, scope: !2067, file: !2, line: 685, type: !31)
!2074 = !DILocalVariable(name: "img_size_x_cr", arg: 4, scope: !2067, file: !2, line: 685, type: !31)
!2075 = !DILocalVariable(name: "img_size_y_cr", arg: 5, scope: !2067, file: !2, line: 685, type: !31)
!2076 = !DILocalVariable(name: "pImage", arg: 6, scope: !2067, file: !2, line: 685, type: !523)
!2077 = !DILocalVariable(name: "x", scope: !2067, file: !2, line: 687, type: !31)
!2078 = !DILocalVariable(name: "y", scope: !2067, file: !2, line: 687, type: !31)
!2079 = !DILocalVariable(name: "k", scope: !2080, file: !2, line: 704, type: !31)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !2, line: 703, column: 3)
!2081 = distinct !DILexicalBlock(scope: !2067, file: !2, line: 702, column: 7)
!2082 = !DILocation(line: 685, column: 31, scope: !2067)
!2083 = !DILocation(line: 0, scope: !2067)
!2084 = !DILocation(line: 691, column: 14, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2067, file: !2, line: 691, column: 7)
!2086 = !DILocation(line: 691, column: 7, scope: !2085)
!2087 = !DILocation(line: 691, column: 23, scope: !2085)
!2088 = !DILocation(line: 691, column: 7, scope: !2067)
!2089 = !DILocation(line: 692, column: 5, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 692, column: 5)
!2091 = !DILocation(line: 692, column: 17, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 692, column: 5)
!2093 = !DILocation(line: 693, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2092, file: !2, line: 693, column: 7)
!2095 = !DILocation(line: 694, column: 28, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2094, file: !2, line: 693, column: 7)
!2097 = !DILocation(line: 694, column: 26, scope: !2096)
!2098 = !DILocation(line: 693, column: 50, scope: !2096)
!2099 = distinct !{!2099, !1385}
!2100 = !DILocation(line: 693, column: 35, scope: !2096)
!2101 = distinct !{!2101, !2093, !2102}
!2102 = !DILocation(line: 694, column: 44, scope: !2094)
!2103 = !DILocation(line: 692, column: 38, scope: !2092)
!2104 = distinct !{!2104, !2089, !2105}
!2105 = !DILocation(line: 694, column: 44, scope: !2090)
!2106 = !DILocation(line: 697, column: 24, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2067, file: !2, line: 697, column: 7)
!2108 = !DILocation(line: 697, column: 7, scope: !2067)
!2109 = !DILocation(line: 698, column: 5, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 698, column: 5)
!2111 = !DILocation(line: 698, column: 33, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2110, file: !2, line: 698, column: 5)
!2113 = !DILocation(line: 699, column: 14, scope: !2112)
!2114 = !DILocation(line: 699, column: 28, scope: !2112)
!2115 = !DILocation(line: 699, column: 7, scope: !2112)
!2116 = !DILocation(line: 698, column: 47, scope: !2112)
!2117 = distinct !{!2117, !2109, !2118}
!2118 = !DILocation(line: 699, column: 73, scope: !2110)
!2119 = !DILocation(line: 702, column: 14, scope: !2081)
!2120 = !DILocation(line: 702, column: 25, scope: !2081)
!2121 = !DILocation(line: 702, column: 7, scope: !2067)
!2122 = !DILocation(line: 0, scope: !2080)
!2123 = !DILocation(line: 706, column: 5, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 706, column: 5)
!2125 = !DILocation(line: 710, column: 9, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !2, line: 710, column: 9)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !2, line: 709, column: 11)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !2, line: 707, column: 5)
!2129 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 706, column: 5)
!2130 = !DILocation(line: 710, column: 21, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2126, file: !2, line: 710, column: 9)
!2132 = !DILocation(line: 711, column: 11, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2131, file: !2, line: 711, column: 11)
!2134 = !DILocation(line: 712, column: 32, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 711, column: 11)
!2136 = !DILocation(line: 712, column: 30, scope: !2135)
!2137 = !DILocation(line: 711, column: 57, scope: !2135)
!2138 = distinct !{!2138, !1385}
!2139 = !DILocation(line: 711, column: 39, scope: !2135)
!2140 = distinct !{!2140, !2132, !2141}
!2141 = !DILocation(line: 712, column: 48, scope: !2133)
!2142 = !DILocation(line: 710, column: 42, scope: !2131)
!2143 = distinct !{!2143, !2125, !2144}
!2144 = !DILocation(line: 712, column: 48, scope: !2126)
!2145 = !DILocation(line: 715, column: 11, scope: !2128)
!2146 = !DILocation(line: 716, column: 38, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !2, line: 716, column: 9)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !2, line: 716, column: 9)
!2149 = distinct !DILexicalBlock(scope: !2128, file: !2, line: 715, column: 11)
!2150 = !DILocation(line: 716, column: 9, scope: !2148)
!2151 = !DILocation(line: 717, column: 18, scope: !2147)
!2152 = !DILocation(line: 717, column: 32, scope: !2147)
!2153 = !DILocation(line: 717, column: 11, scope: !2147)
!2154 = !DILocation(line: 716, column: 56, scope: !2147)
!2155 = distinct !{!2155, !2150, !2156}
!2156 = !DILocation(line: 717, column: 80, scope: !2148)
!2157 = distinct !{!2157, !1385}
!2158 = !DILocation(line: 720, column: 1, scope: !2067)
