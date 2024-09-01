; ModuleID = 'ldecod_src/parsetcommon.c'
source_filename = "ldecod_src/parsetcommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"AllocPPS: PPS\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [14 x i8] c"AllocSPS: SPS\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @AllocPPS() local_unnamed_addr #0 !dbg !22 {
entry:
  %call = tail call noalias dereferenceable_or_null(2216) ptr @calloc(i64 noundef 1, i64 noundef 2216) #8, !dbg !84
    #dbg_value(ptr %call, !83, !DIExpression(), !86)
  %cmp = icmp eq ptr %call, null, !dbg !87
  br i1 %cmp, label %if.then, label %if.end, !dbg !88

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #9, !dbg !89
  br label %if.end, !dbg !89

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call, !dbg !90
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !91 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !98 void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @AllocSPS() local_unnamed_addr #0 !dbg !103 {
entry:
  %call = tail call noalias dereferenceable_or_null(4128) ptr @calloc(i64 noundef 1, i64 noundef 4128) #8, !dbg !211
    #dbg_value(ptr %call, !210, !DIExpression(), !213)
  %cmp = icmp eq ptr %call, null, !dbg !214
  br i1 %cmp, label %if.then, label %if.end, !dbg !215

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #9, !dbg !216
  br label %if.end, !dbg !216

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call, !dbg !217
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @FreePPS(ptr nocapture noundef %pps) local_unnamed_addr #3 !dbg !218 {
entry:
    #dbg_value(ptr %pps, !222, !DIExpression(), !223)
  %slice_group_id = getelementptr inbounds i8, ptr %pps, i64 2160, !dbg !224
  %0 = load ptr, ptr %slice_group_id, align 8, !dbg !224
  %cmp.not = icmp eq ptr %0, null, !dbg !226
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !227

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #9, !dbg !228
  br label %if.end, !dbg !228

if.end:                                           ; preds = %if.then, %entry
  tail call void @free(ptr noundef nonnull %pps) #9, !dbg !229
  ret void, !dbg !230
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !231 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @FreeSPS(ptr nocapture noundef %sps) local_unnamed_addr #5 !dbg !234 {
entry:
    #dbg_value(ptr %sps, !238, !DIExpression(), !239)
  tail call void @free(ptr noundef %sps) #9, !dbg !240
  ret void, !dbg !241
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sps_is_equal(ptr nocapture noundef readonly %sps1, ptr nocapture noundef readonly %sps2) local_unnamed_addr #6 !dbg !242 {
entry:
    #dbg_value(ptr %sps1, !246, !DIExpression(), !250)
    #dbg_value(ptr %sps2, !247, !DIExpression(), !250)
    #dbg_value(i32 1, !249, !DIExpression(), !250)
  %0 = load i32, ptr %sps1, align 4, !dbg !251
  %tobool.not = icmp eq i32 %0, 0, !dbg !253
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false, !dbg !254

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %sps2, align 4, !dbg !255
  %tobool2.not = icmp eq i32 %1, 0, !dbg !256
  br i1 %tobool2.not, label %cleanup, label %if.end, !dbg !257

if.end:                                           ; preds = %lor.lhs.false
  %profile_idc = getelementptr inbounds i8, ptr %sps1, i64 4, !dbg !258
  %profile_idc3 = getelementptr inbounds i8, ptr %sps2, i64 4, !dbg !259
    #dbg_value(!DIArgList(i32 poison, i32 poison), !249, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
    #dbg_value(i1 poison, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
    #dbg_value(i1 poison, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
  %2 = load <4 x i32>, ptr %profile_idc, align 4, !dbg !258
  %3 = load <4 x i32>, ptr %profile_idc3, align 4, !dbg !259
    #dbg_value(i1 poison, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
  %level_idc = getelementptr inbounds i8, ptr %sps1, i64 28, !dbg !260
  %level_idc16 = getelementptr inbounds i8, ptr %sps2, i64 28, !dbg !261
    #dbg_value(i1 poison, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
  %4 = load <2 x i32>, ptr %level_idc, align 4, !dbg !260
  %5 = load <2 x i32>, ptr %level_idc16, align 4, !dbg !261
    #dbg_value(i1 poison, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %sps1, i64 2068, !dbg !262
  %log2_max_frame_num_minus424 = getelementptr inbounds i8, ptr %sps2, i64 2068, !dbg !263
    #dbg_value(i1 poison, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
  %6 = load <2 x i32>, ptr %log2_max_frame_num_minus4, align 4, !dbg !262
  %7 = load <2 x i32>, ptr %log2_max_frame_num_minus424, align 4, !dbg !263
  %8 = shufflevector <4 x i32> %2, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !264
  %9 = shufflevector <2 x i32> %4, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !264
  %10 = shufflevector <8 x i32> %8, <8 x i32> %9, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>, !dbg !264
  %11 = shufflevector <2 x i32> %6, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !264
  %12 = shufflevector <8 x i32> %10, <8 x i32> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>, !dbg !264
  %13 = shufflevector <4 x i32> %3, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !264
  %14 = shufflevector <2 x i32> %5, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !264
  %15 = shufflevector <8 x i32> %13, <8 x i32> %14, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>, !dbg !264
  %16 = shufflevector <2 x i32> %7, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !264
  %17 = shufflevector <8 x i32> %15, <8 x i32> %16, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>, !dbg !264
  %18 = icmp ne <8 x i32> %12, %17, !dbg !265
  %19 = bitcast <8 x i1> %18 to i8, !dbg !265
  %20 = icmp eq i8 %19, 0, !dbg !265
    #dbg_value(i1 %20, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
  br i1 %20, label %if.end34, label %cleanup, !dbg !266

if.end34:                                         ; preds = %if.end
  %21 = extractelement <2 x i32> %6, i64 1, !dbg !267
  switch i32 %21, label %if.end76 [
    i32 0, label %if.then38
    i32 1, label %if.then46
  ], !dbg !267

if.then38:                                        ; preds = %if.end34
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds i8, ptr %sps1, i64 2076, !dbg !268
  %22 = load i32, ptr %log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !268
  %log2_max_pic_order_cnt_lsb_minus439 = getelementptr inbounds i8, ptr %sps2, i64 2076, !dbg !271
  %23 = load i32, ptr %log2_max_pic_order_cnt_lsb_minus439, align 4, !dbg !271
  %cmp40 = icmp eq i32 %22, %23, !dbg !272
  %conv41 = zext i1 %cmp40 to i32, !dbg !272
    #dbg_value(i32 %conv41, !249, !DIExpression(), !250)
  br label %if.end76, !dbg !273

if.then46:                                        ; preds = %if.end34
  %delta_pic_order_always_zero_flag = getelementptr inbounds i8, ptr %sps1, i64 2080, !dbg !274
  %delta_pic_order_always_zero_flag47 = getelementptr inbounds i8, ptr %sps2, i64 2080, !dbg !277
    #dbg_value(!DIArgList(i32 poison, i32 poison), !249, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
    #dbg_value(i1 poison, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
    #dbg_value(i1 poison, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
  %24 = load <4 x i32>, ptr %delta_pic_order_always_zero_flag, align 4, !dbg !274
  %25 = load <4 x i32>, ptr %delta_pic_order_always_zero_flag47, align 4, !dbg !277
  %26 = icmp ne <4 x i32> %24, %25, !dbg !278
  %27 = bitcast <4 x i1> %26 to i4, !dbg !278
  %28 = icmp eq i4 %27, 0, !dbg !278
    #dbg_value(i1 %28, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
  br i1 %28, label %for.cond.preheader, label %cleanup, !dbg !279

for.cond.preheader:                               ; preds = %if.then46
    #dbg_value(i32 1, !249, !DIExpression(), !250)
    #dbg_value(i32 0, !248, !DIExpression(), !250)
  %29 = extractelement <4 x i32> %24, i64 3, !dbg !280
  %cmp67261.not = icmp eq i32 %29, 0, !dbg !280
  br i1 %cmp67261.not, label %if.end76, label %for.body.lr.ph, !dbg !283

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %offset_for_ref_frame = getelementptr inbounds i8, ptr %sps1, i64 2096
  %offset_for_ref_frame69 = getelementptr inbounds i8, ptr %sps2, i64 2096
  %wide.trip.count = zext i32 %29 to i64, !dbg !280
  %min.iters.check = icmp ult i32 %29, 16, !dbg !283
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph, !dbg !283

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967280, !dbg !283
  br label %vector.body, !dbg !283

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !284
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %42, %vector.body ]
  %vec.phi265 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %43, %vector.body ]
  %vec.phi266 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %44, %vector.body ]
  %vec.phi267 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %45, %vector.body ]
  %30 = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame, i64 0, i64 %index, !dbg !285
  %31 = getelementptr inbounds i8, ptr %30, i64 16, !dbg !285
  %32 = getelementptr inbounds i8, ptr %30, i64 32, !dbg !285
  %33 = getelementptr inbounds i8, ptr %30, i64 48, !dbg !285
  %wide.load = load <4 x i32>, ptr %30, align 4, !dbg !285
  %wide.load268 = load <4 x i32>, ptr %31, align 4, !dbg !285
  %wide.load269 = load <4 x i32>, ptr %32, align 4, !dbg !285
  %wide.load270 = load <4 x i32>, ptr %33, align 4, !dbg !285
  %34 = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame69, i64 0, i64 %index, !dbg !286
  %35 = getelementptr inbounds i8, ptr %34, i64 16, !dbg !286
  %36 = getelementptr inbounds i8, ptr %34, i64 32, !dbg !286
  %37 = getelementptr inbounds i8, ptr %34, i64 48, !dbg !286
  %wide.load271 = load <4 x i32>, ptr %34, align 4, !dbg !286
  %wide.load272 = load <4 x i32>, ptr %35, align 4, !dbg !286
  %wide.load273 = load <4 x i32>, ptr %36, align 4, !dbg !286
  %wide.load274 = load <4 x i32>, ptr %37, align 4, !dbg !286
  %38 = icmp ne <4 x i32> %wide.load, %wide.load271, !dbg !287
  %39 = icmp ne <4 x i32> %wide.load268, %wide.load272, !dbg !287
  %40 = icmp ne <4 x i32> %wide.load269, %wide.load273, !dbg !287
  %41 = icmp ne <4 x i32> %wide.load270, %wide.load274, !dbg !287
  %42 = or <4 x i1> %vec.phi, %38
  %43 = or <4 x i1> %vec.phi265, %39
  %44 = or <4 x i1> %vec.phi266, %40
  %45 = or <4 x i1> %vec.phi267, %41
  %index.next = add nuw i64 %index, 16, !dbg !284
  %46 = icmp eq i64 %index.next, %n.vec, !dbg !284
  br i1 %46, label %middle.block, label %vector.body, !dbg !284, !llvm.loop !288

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %43, %42, !dbg !283
  %bin.rdx275 = or <4 x i1> %44, %bin.rdx, !dbg !283
  %bin.rdx276 = or <4 x i1> %45, %bin.rdx275, !dbg !283
  %bin.rdx276.fr = freeze <4 x i1> %bin.rdx276, !dbg !283
  %47 = bitcast <4 x i1> %bin.rdx276.fr to i4, !dbg !283
  %.not277 = icmp eq i4 %47, 0, !dbg !283
  %rdx.select = zext i1 %.not277 to i32, !dbg !283
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count, !dbg !283
  br i1 %cmp.n, label %if.end76, label %for.body.preheader, !dbg !283

for.body.preheader:                               ; preds = %middle.block, %for.body.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %equal.0263.ph = phi i32 [ 1, %for.body.lr.ph ], [ %rdx.select, %middle.block ]
  br label %for.body, !dbg !283

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %equal.0263 = phi i32 [ %and74, %for.body ], [ %equal.0263.ph, %for.body.preheader ]
    #dbg_value(i32 %equal.0263, !249, !DIExpression(), !250)
    #dbg_value(i64 %indvars.iv, !248, !DIExpression(), !250)
  %arrayidx = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame, i64 0, i64 %indvars.iv, !dbg !285
  %48 = load i32, ptr %arrayidx, align 4, !dbg !285
  %arrayidx71 = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame69, i64 0, i64 %indvars.iv, !dbg !286
  %49 = load i32, ptr %arrayidx71, align 4, !dbg !286
  %cmp72 = icmp eq i32 %48, %49, !dbg !287
  %and74 = select i1 %cmp72, i32 %equal.0263, i32 0, !dbg !292
    #dbg_value(i32 %and74, !249, !DIExpression(), !250)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !284
    #dbg_value(i64 %indvars.iv.next, !248, !DIExpression(), !250)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !280
  br i1 %exitcond.not, label %if.end76, label %for.body, !dbg !283, !llvm.loop !293

if.end76:                                         ; preds = %for.body, %middle.block, %for.cond.preheader, %if.end34, %if.then38
  %equal.1 = phi i32 [ %conv41, %if.then38 ], [ 1, %if.end34 ], [ 1, %for.cond.preheader ], [ %rdx.select, %middle.block ], [ %and74, %for.body ], !dbg !250
    #dbg_value(i32 %equal.1, !249, !DIExpression(), !250)
  %num_ref_frames = getelementptr inbounds i8, ptr %sps1, i64 3120, !dbg !294
  %50 = load i32, ptr %num_ref_frames, align 4, !dbg !294
  %num_ref_frames77 = getelementptr inbounds i8, ptr %sps2, i64 3120, !dbg !295
  %51 = load i32, ptr %num_ref_frames77, align 4, !dbg !295
  %cmp78 = icmp ne i32 %50, %51, !dbg !296
    #dbg_value(i32 poison, !249, !DIExpression(), !250)
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds i8, ptr %sps1, i64 3124, !dbg !297
  %gaps_in_frame_num_value_allowed_flag81 = getelementptr inbounds i8, ptr %sps2, i64 3124, !dbg !298
  %52 = load <4 x i32>, ptr %gaps_in_frame_num_value_allowed_flag, align 4, !dbg !297
  %53 = load <4 x i32>, ptr %gaps_in_frame_num_value_allowed_flag81, align 4, !dbg !298
  %54 = icmp ne <4 x i32> %52, %53, !dbg !299
  %tobool97.not251 = icmp eq i32 %equal.1, 0, !dbg !300
  %55 = freeze <4 x i1> %54, !dbg !300
  %56 = bitcast <4 x i1> %55 to i4, !dbg !300
  %57 = icmp ne i4 %56, 0, !dbg !300
  %cmp78.fr = freeze i1 %cmp78, !dbg !300
  %op.rdx = or i1 %57, %cmp78.fr, !dbg !300
  %op.rdx278 = select i1 %op.rdx, i1 true, i1 %tobool97.not251, !dbg !300
  br i1 %op.rdx278, label %cleanup, label %if.end99, !dbg !302

if.end99:                                         ; preds = %if.end76
  %58 = extractelement <4 x i32> %52, i64 3, !dbg !303
  %tobool101.not = icmp eq i32 %58, 0, !dbg !303
  br i1 %tobool101.not, label %if.then102, label %if.end107, !dbg !305

if.then102:                                       ; preds = %if.end99
  %mb_adaptive_frame_field_flag = getelementptr inbounds i8, ptr %sps1, i64 3140, !dbg !306
  %59 = load i32, ptr %mb_adaptive_frame_field_flag, align 4, !dbg !306
  %mb_adaptive_frame_field_flag103 = getelementptr inbounds i8, ptr %sps2, i64 3140, !dbg !307
  %60 = load i32, ptr %mb_adaptive_frame_field_flag103, align 4, !dbg !307
  %cmp104 = icmp ne i32 %59, %60, !dbg !308
    #dbg_value(i1 %cmp104, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
  br label %if.end107, !dbg !309

if.end107:                                        ; preds = %if.then102, %if.end99
  %equal.2 = phi i1 [ false, %if.end99 ], [ %cmp104, %if.then102 ], !dbg !250
    #dbg_value(i1 %equal.2, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !250)
  %direct_8x8_inference_flag = getelementptr inbounds i8, ptr %sps1, i64 3144, !dbg !310
  %61 = load i32, ptr %direct_8x8_inference_flag, align 4, !dbg !310
  %direct_8x8_inference_flag108 = getelementptr inbounds i8, ptr %sps2, i64 3144, !dbg !311
  %62 = load i32, ptr %direct_8x8_inference_flag108, align 4, !dbg !311
  %cmp109 = icmp ne i32 %61, %62, !dbg !312
    #dbg_value(i32 poison, !249, !DIExpression(), !250)
  %frame_cropping_flag = getelementptr inbounds i8, ptr %sps1, i64 3148, !dbg !313
  %63 = load i32, ptr %frame_cropping_flag, align 4, !dbg !313
  %frame_cropping_flag112 = getelementptr inbounds i8, ptr %sps2, i64 3148, !dbg !314
  %64 = load i32, ptr %frame_cropping_flag112, align 4, !dbg !314
  %cmp113 = icmp ne i32 %63, %64, !dbg !315
  %.not = select i1 %cmp113, i1 true, i1 %cmp109, !dbg !316
  %tobool116.not = select i1 %.not, i1 true, i1 %equal.2, !dbg !316
  br i1 %tobool116.not, label %cleanup, label %if.end118, !dbg !318

if.end118:                                        ; preds = %if.end107
  %tobool120.not = icmp eq i32 %63, 0, !dbg !319
  br i1 %tobool120.not, label %if.end138, label %if.then121, !dbg !321

if.then121:                                       ; preds = %if.end118
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %sps1, i64 3152, !dbg !322
  %frame_cropping_rect_left_offset122 = getelementptr inbounds i8, ptr %sps2, i64 3152, !dbg !324
    #dbg_value(!DIArgList(i32 poison, i32 poison), !249, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
    #dbg_value(i1 poison, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
    #dbg_value(i1 poison, !249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !250)
  %65 = load <4 x i32>, ptr %frame_cropping_rect_left_offset, align 4, !dbg !322
  %66 = load <4 x i32>, ptr %frame_cropping_rect_left_offset122, align 4, !dbg !324
  %67 = icmp ne <4 x i32> %65, %66, !dbg !325
  %68 = bitcast <4 x i1> %67 to i4, !dbg !325
  %69 = icmp eq i4 %68, 0, !dbg !325
  %and137 = zext i1 %69 to i32, !dbg !325
    #dbg_value(i32 %and137, !249, !DIExpression(), !250)
  br label %if.end138, !dbg !326

if.end138:                                        ; preds = %if.then121, %if.end118
  %equal.3 = phi i32 [ %and137, %if.then121 ], [ 1, %if.end118 ], !dbg !250
    #dbg_value(i32 %equal.3, !249, !DIExpression(), !250)
  %vui_parameters_present_flag = getelementptr inbounds i8, ptr %sps1, i64 3168, !dbg !327
  %70 = load i32, ptr %vui_parameters_present_flag, align 4, !dbg !327
  %vui_parameters_present_flag139 = getelementptr inbounds i8, ptr %sps2, i64 3168, !dbg !328
  %71 = load i32, ptr %vui_parameters_present_flag139, align 4, !dbg !328
  %cmp140 = icmp eq i32 %70, %71, !dbg !329
  %and142 = select i1 %cmp140, i32 %equal.3, i32 0, !dbg !330
    #dbg_value(i32 %and142, !249, !DIExpression(), !250)
  br label %cleanup, !dbg !331

cleanup:                                          ; preds = %if.end107, %if.end76, %if.then46, %if.end, %entry, %lor.lhs.false, %if.end138
  %retval.0 = phi i32 [ %and142, %if.end138 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then46 ], [ 0, %if.end76 ], [ 0, %if.end107 ], !dbg !250
  ret i32 %retval.0, !dbg !332
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @pps_is_equal(ptr nocapture noundef readonly %pps1, ptr nocapture noundef readonly %pps2) local_unnamed_addr #7 !dbg !333 {
entry:
    #dbg_value(ptr %pps1, !337, !DIExpression(), !342)
    #dbg_value(ptr %pps2, !338, !DIExpression(), !342)
    #dbg_value(i32 1, !341, !DIExpression(), !342)
  %0 = load i32, ptr %pps1, align 8, !dbg !343
  %tobool.not = icmp eq i32 %0, 0, !dbg !345
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false, !dbg !346

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %pps2, align 8, !dbg !347
  %tobool2.not = icmp eq i32 %1, 0, !dbg !348
  br i1 %tobool2.not, label %cleanup, label %if.end, !dbg !349

if.end:                                           ; preds = %lor.lhs.false
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %pps1, i64 4, !dbg !350
  %2 = load i32, ptr %pic_parameter_set_id, align 4, !dbg !350
  %pic_parameter_set_id3 = getelementptr inbounds i8, ptr %pps2, i64 4, !dbg !351
  %3 = load i32, ptr %pic_parameter_set_id3, align 4, !dbg !351
  %cmp = icmp eq i32 %2, %3, !dbg !352
    #dbg_value(i1 %cmp, !341, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !342)
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %pps1, i64 8, !dbg !353
  %seq_parameter_set_id4 = getelementptr inbounds i8, ptr %pps2, i64 8, !dbg !354
    #dbg_value(i1 poison, !341, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !342)
  %4 = load <2 x i32>, ptr %seq_parameter_set_id, align 8, !dbg !353
  %5 = load <2 x i32>, ptr %seq_parameter_set_id4, align 8, !dbg !354
    #dbg_value(i1 poison, !341, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !342)
  %bottom_field_pic_order_in_frame_present_flag = getelementptr inbounds i8, ptr %pps1, i64 2040, !dbg !355
  %bottom_field_pic_order_in_frame_present_flag12 = getelementptr inbounds i8, ptr %pps2, i64 2040, !dbg !356
    #dbg_value(i1 poison, !341, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !342)
  %6 = load <2 x i32>, ptr %bottom_field_pic_order_in_frame_present_flag, align 8, !dbg !355
  %7 = load <2 x i32>, ptr %bottom_field_pic_order_in_frame_present_flag12, align 8, !dbg !356
  %8 = shufflevector <2 x i32> %4, <2 x i32> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !357
  %9 = shufflevector <2 x i32> %5, <2 x i32> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !357
  %10 = icmp ne <4 x i32> %8, %9, !dbg !358
  %11 = bitcast <4 x i1> %10 to i4, !dbg !358
  %12 = icmp eq i4 %11, 0, !dbg !358
  %op.rdx523 = and i1 %12, %cmp, !dbg !359
    #dbg_value(i1 %op.rdx523, !341, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !342)
  br i1 %op.rdx523, label %if.end22, label %cleanup, !dbg !360

if.end22:                                         ; preds = %if.end
  %13 = extractelement <2 x i32> %6, i64 1, !dbg !361
  %cmp24.not = icmp eq i32 %13, 0, !dbg !361
  br i1 %cmp24.not, label %if.end130, label %if.then26, !dbg !363

if.then26:                                        ; preds = %if.end22
  %slice_group_map_type = getelementptr inbounds i8, ptr %pps1, i64 2048, !dbg !364
  %14 = load i32, ptr %slice_group_map_type, align 8, !dbg !364
  %slice_group_map_type27 = getelementptr inbounds i8, ptr %pps2, i64 2048, !dbg !366
  %15 = load i32, ptr %slice_group_map_type27, align 8, !dbg !366
  %cmp28 = icmp eq i32 %14, %15, !dbg !367
    #dbg_value(i1 %cmp28, !341, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !342)
  br i1 %cmp28, label %if.end33, label %cleanup, !dbg !368

if.end33:                                         ; preds = %if.then26
  switch i32 %14, label %if.end130 [
    i32 0, label %for.cond.preheader
    i32 2, label %for.cond51.preheader
    i32 3, label %if.then87
    i32 4, label %if.then87
    i32 5, label %if.then87
    i32 6, label %if.then100
  ], !dbg !369

for.cond51.preheader:                             ; preds = %if.end33
  %top_left = getelementptr inbounds i8, ptr %pps1, i64 2084
  %top_left58 = getelementptr inbounds i8, ptr %pps2, i64 2084
  %bottom_right = getelementptr inbounds i8, ptr %pps1, i64 2116
  %bottom_right66 = getelementptr inbounds i8, ptr %pps2, i64 2116
    #dbg_value(i32 1, !341, !DIExpression(), !342)
    #dbg_value(i32 0, !339, !DIExpression(), !342)
  %wide.trip.count = zext i32 %13 to i64, !dbg !370
  %xtraiter = and i64 %wide.trip.count, 1, !dbg !376
  %16 = icmp eq i32 %13, 1, !dbg !376
  br i1 %16, label %if.end130.loopexit531.unr-lcssa, label %for.cond51.preheader.new, !dbg !376

for.cond51.preheader.new:                         ; preds = %for.cond51.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294, !dbg !376
  br label %for.body55, !dbg !376

for.cond.preheader:                               ; preds = %if.end33
  %run_length_minus1 = getelementptr inbounds i8, ptr %pps1, i64 2052
  %run_length_minus141 = getelementptr inbounds i8, ptr %pps2, i64 2052
    #dbg_value(i32 1, !341, !DIExpression(), !342)
    #dbg_value(i32 0, !339, !DIExpression(), !342)
  %17 = add i32 %13, 1, !dbg !377
  %min.iters.check464 = icmp ult i32 %17, 16, !dbg !377
  br i1 %min.iters.check464, label %for.body.preheader, label %vector.ph465, !dbg !377

vector.ph465:                                     ; preds = %for.cond.preheader
  %n.vec467 = and i32 %17, -16, !dbg !377
  br label %vector.body469, !dbg !377

vector.body469:                                   ; preds = %vector.body469, %vector.ph465
  %index470 = phi i32 [ 0, %vector.ph465 ], [ %index.next483, %vector.body469 ], !dbg !380
  %vec.phi471 = phi <4 x i1> [ zeroinitializer, %vector.ph465 ], [ %31, %vector.body469 ]
  %vec.phi472 = phi <4 x i1> [ zeroinitializer, %vector.ph465 ], [ %32, %vector.body469 ]
  %vec.phi473 = phi <4 x i1> [ zeroinitializer, %vector.ph465 ], [ %33, %vector.body469 ]
  %vec.phi474 = phi <4 x i1> [ zeroinitializer, %vector.ph465 ], [ %34, %vector.body469 ]
  %18 = zext i32 %index470 to i64, !dbg !382
  %19 = getelementptr inbounds [8 x i32], ptr %run_length_minus1, i64 0, i64 %18, !dbg !382
  %20 = getelementptr inbounds i8, ptr %19, i64 16, !dbg !382
  %21 = getelementptr inbounds i8, ptr %19, i64 32, !dbg !382
  %22 = getelementptr inbounds i8, ptr %19, i64 48, !dbg !382
  %wide.load475 = load <4 x i32>, ptr %19, align 4, !dbg !382
  %wide.load476 = load <4 x i32>, ptr %20, align 4, !dbg !382
  %wide.load477 = load <4 x i32>, ptr %21, align 4, !dbg !382
  %wide.load478 = load <4 x i32>, ptr %22, align 4, !dbg !382
  %23 = getelementptr inbounds [8 x i32], ptr %run_length_minus141, i64 0, i64 %18, !dbg !383
  %24 = getelementptr inbounds i8, ptr %23, i64 16, !dbg !383
  %25 = getelementptr inbounds i8, ptr %23, i64 32, !dbg !383
  %26 = getelementptr inbounds i8, ptr %23, i64 48, !dbg !383
  %wide.load479 = load <4 x i32>, ptr %23, align 4, !dbg !383
  %wide.load480 = load <4 x i32>, ptr %24, align 4, !dbg !383
  %wide.load481 = load <4 x i32>, ptr %25, align 4, !dbg !383
  %wide.load482 = load <4 x i32>, ptr %26, align 4, !dbg !383
  %27 = icmp ne <4 x i32> %wide.load475, %wide.load479, !dbg !384
  %28 = icmp ne <4 x i32> %wide.load476, %wide.load480, !dbg !384
  %29 = icmp ne <4 x i32> %wide.load477, %wide.load481, !dbg !384
  %30 = icmp ne <4 x i32> %wide.load478, %wide.load482, !dbg !384
  %31 = or <4 x i1> %vec.phi471, %27
  %32 = or <4 x i1> %vec.phi472, %28
  %33 = or <4 x i1> %vec.phi473, %29
  %34 = or <4 x i1> %vec.phi474, %30
  %index.next483 = add nuw i32 %index470, 16, !dbg !380
  %35 = icmp eq i32 %index.next483, %n.vec467, !dbg !380
  br i1 %35, label %middle.block462, label %vector.body469, !dbg !380, !llvm.loop !385

middle.block462:                                  ; preds = %vector.body469
  %bin.rdx484 = or <4 x i1> %32, %31, !dbg !377
  %bin.rdx485 = or <4 x i1> %33, %bin.rdx484, !dbg !377
  %bin.rdx486 = or <4 x i1> %34, %bin.rdx485, !dbg !377
  %bin.rdx486.fr = freeze <4 x i1> %bin.rdx486, !dbg !377
  %36 = bitcast <4 x i1> %bin.rdx486.fr to i4, !dbg !377
  %.not514 = icmp eq i4 %36, 0, !dbg !377
  %rdx.select487 = zext i1 %.not514 to i32, !dbg !377
  %cmp.n488 = icmp eq i32 %17, %n.vec467, !dbg !377
  br i1 %cmp.n488, label %if.end130, label %for.body.preheader, !dbg !377

for.body.preheader:                               ; preds = %middle.block462, %for.cond.preheader
  %equal.0419.ph = phi i32 [ 1, %for.cond.preheader ], [ %rdx.select487, %middle.block462 ]
  %i.0418.ph = phi i32 [ 0, %for.cond.preheader ], [ %n.vec467, %middle.block462 ]
  br label %for.body, !dbg !377

for.body:                                         ; preds = %for.body.preheader, %for.body
  %equal.0419 = phi i32 [ %and46, %for.body ], [ %equal.0419.ph, %for.body.preheader ]
  %i.0418 = phi i32 [ %inc, %for.body ], [ %i.0418.ph, %for.body.preheader ]
    #dbg_value(i32 %equal.0419, !341, !DIExpression(), !342)
    #dbg_value(i32 %i.0418, !339, !DIExpression(), !342)
  %idxprom = zext i32 %i.0418 to i64, !dbg !382
  %arrayidx = getelementptr inbounds [8 x i32], ptr %run_length_minus1, i64 0, i64 %idxprom, !dbg !382
  %37 = load i32, ptr %arrayidx, align 4, !dbg !382
  %arrayidx43 = getelementptr inbounds [8 x i32], ptr %run_length_minus141, i64 0, i64 %idxprom, !dbg !383
  %38 = load i32, ptr %arrayidx43, align 4, !dbg !383
  %cmp44 = icmp eq i32 %37, %38, !dbg !384
  %and46 = select i1 %cmp44, i32 %equal.0419, i32 0, !dbg !387
    #dbg_value(i32 %and46, !341, !DIExpression(), !342)
  %inc = add i32 %i.0418, 1, !dbg !380
    #dbg_value(i32 %inc, !339, !DIExpression(), !342)
  %cmp39.not = icmp ugt i32 %inc, %13, !dbg !388
  br i1 %cmp39.not, label %if.end130, label %for.body, !dbg !377, !llvm.loop !389

for.body55:                                       ; preds = %for.body55, %for.cond51.preheader.new
  %indvars.iv = phi i64 [ 0, %for.cond51.preheader.new ], [ %indvars.iv.next.1, %for.body55 ]
  %equal.1417 = phi i32 [ 1, %for.cond51.preheader.new ], [ %and71.1, %for.body55 ]
  %niter = phi i64 [ 0, %for.cond51.preheader.new ], [ %niter.next.1, %for.body55 ]
    #dbg_value(i32 %equal.1417, !341, !DIExpression(), !342)
    #dbg_value(i64 %indvars.iv, !339, !DIExpression(), !342)
  %arrayidx57 = getelementptr inbounds [8 x i32], ptr %top_left, i64 0, i64 %indvars.iv, !dbg !390
  %39 = load i32, ptr %arrayidx57, align 4, !dbg !390
  %arrayidx60 = getelementptr inbounds [8 x i32], ptr %top_left58, i64 0, i64 %indvars.iv, !dbg !392
  %40 = load i32, ptr %arrayidx60, align 4, !dbg !392
  %cmp61 = icmp eq i32 %39, %40, !dbg !393
    #dbg_value(i32 poison, !341, !DIExpression(), !342)
  %arrayidx65 = getelementptr inbounds [8 x i32], ptr %bottom_right, i64 0, i64 %indvars.iv, !dbg !394
  %41 = load i32, ptr %arrayidx65, align 4, !dbg !394
  %arrayidx68 = getelementptr inbounds [8 x i32], ptr %bottom_right66, i64 0, i64 %indvars.iv, !dbg !395
  %42 = load i32, ptr %arrayidx68, align 4, !dbg !395
  %cmp69 = icmp eq i32 %41, %42, !dbg !396
    #dbg_value(i32 poison, !341, !DIExpression(), !342)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !397
    #dbg_value(i64 %indvars.iv.next, !339, !DIExpression(), !342)
  %arrayidx57.1 = getelementptr inbounds [8 x i32], ptr %top_left, i64 0, i64 %indvars.iv.next, !dbg !390
  %43 = load i32, ptr %arrayidx57.1, align 4, !dbg !390
  %arrayidx60.1 = getelementptr inbounds [8 x i32], ptr %top_left58, i64 0, i64 %indvars.iv.next, !dbg !392
  %44 = load i32, ptr %arrayidx60.1, align 4, !dbg !392
  %cmp61.1 = icmp eq i32 %43, %44, !dbg !393
    #dbg_value(i32 poison, !341, !DIExpression(), !342)
  %arrayidx65.1 = getelementptr inbounds [8 x i32], ptr %bottom_right, i64 0, i64 %indvars.iv.next, !dbg !394
  %45 = load i32, ptr %arrayidx65.1, align 4, !dbg !394
  %arrayidx68.1 = getelementptr inbounds [8 x i32], ptr %bottom_right66, i64 0, i64 %indvars.iv.next, !dbg !395
  %46 = load i32, ptr %arrayidx68.1, align 4, !dbg !395
  %cmp69.1 = icmp eq i32 %45, %46, !dbg !396
  %47 = select i1 %cmp69.1, i1 %cmp61.1, i1 false, !dbg !398
  %48 = select i1 %47, i1 %cmp69, i1 false, !dbg !398
  %49 = select i1 %48, i1 %cmp61, i1 false, !dbg !398
  %and71.1 = select i1 %49, i32 %equal.1417, i32 0, !dbg !398
    #dbg_value(i32 %and71.1, !341, !DIExpression(), !342)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !397
    #dbg_value(i64 %indvars.iv.next.1, !339, !DIExpression(), !342)
  %niter.next.1 = add i64 %niter, 2, !dbg !376
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !376
  br i1 %niter.ncmp.1, label %if.end130.loopexit531.unr-lcssa, label %for.body55, !dbg !376, !llvm.loop !399

if.then87:                                        ; preds = %if.end33, %if.end33, %if.end33
  %slice_group_change_direction_flag = getelementptr inbounds i8, ptr %pps1, i64 2148, !dbg !401
  %slice_group_change_direction_flag88 = getelementptr inbounds i8, ptr %pps2, i64 2148, !dbg !404
    #dbg_value(!DIArgList(i32 poison, i32 poison), !341, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !342)
  %50 = load <2 x i32>, ptr %slice_group_change_direction_flag, align 4, !dbg !401
  %51 = load <2 x i32>, ptr %slice_group_change_direction_flag88, align 4, !dbg !404
  %52 = icmp eq <2 x i32> %50, %51, !dbg !405
  %shift = shufflevector <2 x i1> %52, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>, !dbg !406
  %53 = and <2 x i1> %52, %shift, !dbg !406
  %and95400 = extractelement <2 x i1> %53, i64 0, !dbg !406
  %and95 = zext i1 %and95400 to i32, !dbg !406
    #dbg_value(i32 %and95, !341, !DIExpression(), !342)
  br label %if.end130, !dbg !407

if.then100:                                       ; preds = %if.end33
  %pic_size_in_map_units_minus1 = getelementptr inbounds i8, ptr %pps1, i64 2156, !dbg !408
  %54 = load i32, ptr %pic_size_in_map_units_minus1, align 4, !dbg !408
  %pic_size_in_map_units_minus1101 = getelementptr inbounds i8, ptr %pps2, i64 2156, !dbg !411
  %55 = load i32, ptr %pic_size_in_map_units_minus1101, align 4, !dbg !411
  %cmp102 = icmp eq i32 %54, %55, !dbg !412
    #dbg_value(i1 %cmp102, !341, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !342)
  br i1 %cmp102, label %for.cond108.preheader, label %cleanup, !dbg !413

for.cond108.preheader:                            ; preds = %if.then100
  %slice_group_id = getelementptr inbounds i8, ptr %pps1, i64 2160
  %56 = load ptr, ptr %slice_group_id, align 8
  %slice_group_id116 = getelementptr inbounds i8, ptr %pps2, i64 2160
  %57 = load ptr, ptr %slice_group_id116, align 8
    #dbg_value(i32 1, !341, !DIExpression(), !342)
    #dbg_value(i32 0, !339, !DIExpression(), !342)
  %58 = add i32 %54, 1, !dbg !414
  %min.iters.check = icmp ult i32 %58, 16, !dbg !414
  br i1 %min.iters.check, label %for.body112.preheader, label %vector.ph, !dbg !414

vector.ph:                                        ; preds = %for.cond108.preheader
  %n.vec = and i32 %58, -16, !dbg !414
  br label %vector.body, !dbg !414

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !416
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %72, %vector.body ]
  %vec.phi449 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %73, %vector.body ]
  %vec.phi450 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %74, %vector.body ]
  %vec.phi451 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %75, %vector.body ]
  %59 = zext i32 %index to i64, !dbg !418
  %60 = getelementptr inbounds i8, ptr %56, i64 %59, !dbg !418
  %61 = getelementptr inbounds i8, ptr %60, i64 4, !dbg !418
  %62 = getelementptr inbounds i8, ptr %60, i64 8, !dbg !418
  %63 = getelementptr inbounds i8, ptr %60, i64 12, !dbg !418
  %wide.load = load <4 x i8>, ptr %60, align 1, !dbg !418
  %wide.load452 = load <4 x i8>, ptr %61, align 1, !dbg !418
  %wide.load453 = load <4 x i8>, ptr %62, align 1, !dbg !418
  %wide.load454 = load <4 x i8>, ptr %63, align 1, !dbg !418
  %64 = getelementptr inbounds i8, ptr %57, i64 %59, !dbg !419
  %65 = getelementptr inbounds i8, ptr %64, i64 4, !dbg !419
  %66 = getelementptr inbounds i8, ptr %64, i64 8, !dbg !419
  %67 = getelementptr inbounds i8, ptr %64, i64 12, !dbg !419
  %wide.load455 = load <4 x i8>, ptr %64, align 1, !dbg !419
  %wide.load456 = load <4 x i8>, ptr %65, align 1, !dbg !419
  %wide.load457 = load <4 x i8>, ptr %66, align 1, !dbg !419
  %wide.load458 = load <4 x i8>, ptr %67, align 1, !dbg !419
  %68 = icmp ne <4 x i8> %wide.load, %wide.load455, !dbg !420
  %69 = icmp ne <4 x i8> %wide.load452, %wide.load456, !dbg !420
  %70 = icmp ne <4 x i8> %wide.load453, %wide.load457, !dbg !420
  %71 = icmp ne <4 x i8> %wide.load454, %wide.load458, !dbg !420
  %72 = or <4 x i1> %vec.phi, %68
  %73 = or <4 x i1> %vec.phi449, %69
  %74 = or <4 x i1> %vec.phi450, %70
  %75 = or <4 x i1> %vec.phi451, %71
  %index.next = add nuw i32 %index, 16, !dbg !416
  %76 = icmp eq i32 %index.next, %n.vec, !dbg !416
  br i1 %76, label %middle.block, label %vector.body, !dbg !416, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %73, %72, !dbg !414
  %bin.rdx459 = or <4 x i1> %74, %bin.rdx, !dbg !414
  %bin.rdx460 = or <4 x i1> %75, %bin.rdx459, !dbg !414
  %bin.rdx460.fr = freeze <4 x i1> %bin.rdx460, !dbg !414
  %77 = bitcast <4 x i1> %bin.rdx460.fr to i4, !dbg !414
  %.not = icmp eq i4 %77, 0, !dbg !414
  %rdx.select = zext i1 %.not to i32, !dbg !414
  %cmp.n = icmp eq i32 %58, %n.vec, !dbg !414
  br i1 %cmp.n, label %if.end130, label %for.body112.preheader, !dbg !414

for.body112.preheader:                            ; preds = %middle.block, %for.cond108.preheader
  %equal.2415.ph = phi i32 [ 1, %for.cond108.preheader ], [ %rdx.select, %middle.block ]
  %i.2414.ph = phi i32 [ 0, %for.cond108.preheader ], [ %n.vec, %middle.block ]
  br label %for.body112, !dbg !414

for.body112:                                      ; preds = %for.body112.preheader, %for.body112
  %equal.2415 = phi i32 [ %and122, %for.body112 ], [ %equal.2415.ph, %for.body112.preheader ]
  %i.2414 = phi i32 [ %inc124, %for.body112 ], [ %i.2414.ph, %for.body112.preheader ]
    #dbg_value(i32 %equal.2415, !341, !DIExpression(), !342)
    #dbg_value(i32 %i.2414, !339, !DIExpression(), !342)
  %idxprom113 = zext i32 %i.2414 to i64, !dbg !418
  %arrayidx114 = getelementptr inbounds i8, ptr %56, i64 %idxprom113, !dbg !418
  %78 = load i8, ptr %arrayidx114, align 1, !dbg !418
  %arrayidx118 = getelementptr inbounds i8, ptr %57, i64 %idxprom113, !dbg !419
  %79 = load i8, ptr %arrayidx118, align 1, !dbg !419
  %cmp120 = icmp eq i8 %78, %79, !dbg !420
  %and122 = select i1 %cmp120, i32 %equal.2415, i32 0, !dbg !423
    #dbg_value(i32 %and122, !341, !DIExpression(), !342)
  %inc124 = add i32 %i.2414, 1, !dbg !416
    #dbg_value(i32 %inc124, !339, !DIExpression(), !342)
  %cmp110.not = icmp ugt i32 %inc124, %54, !dbg !424
  br i1 %cmp110.not, label %if.end130, label %for.body112, !dbg !414, !llvm.loop !425

if.end130.loopexit531.unr-lcssa:                  ; preds = %for.body55, %for.cond51.preheader
  %and71.lcssa.ph = phi i32 [ poison, %for.cond51.preheader ], [ %and71.1, %for.body55 ]
  %indvars.iv.unr = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next.1, %for.body55 ]
  %equal.1417.unr = phi i32 [ 1, %for.cond51.preheader ], [ %and71.1, %for.body55 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !376
  br i1 %lcmp.mod.not, label %if.end130, label %for.body55.epil, !dbg !376

for.body55.epil:                                  ; preds = %if.end130.loopexit531.unr-lcssa
    #dbg_value(i32 %equal.1417.unr, !341, !DIExpression(), !342)
    #dbg_value(i64 %indvars.iv.unr, !339, !DIExpression(), !342)
  %arrayidx57.epil = getelementptr inbounds [8 x i32], ptr %top_left, i64 0, i64 %indvars.iv.unr, !dbg !390
  %80 = load i32, ptr %arrayidx57.epil, align 4, !dbg !390
  %arrayidx60.epil = getelementptr inbounds [8 x i32], ptr %top_left58, i64 0, i64 %indvars.iv.unr, !dbg !392
  %81 = load i32, ptr %arrayidx60.epil, align 4, !dbg !392
  %cmp61.epil = icmp eq i32 %80, %81, !dbg !393
    #dbg_value(i32 poison, !341, !DIExpression(), !342)
  %arrayidx65.epil = getelementptr inbounds [8 x i32], ptr %bottom_right, i64 0, i64 %indvars.iv.unr, !dbg !394
  %82 = load i32, ptr %arrayidx65.epil, align 4, !dbg !394
  %arrayidx68.epil = getelementptr inbounds [8 x i32], ptr %bottom_right66, i64 0, i64 %indvars.iv.unr, !dbg !395
  %83 = load i32, ptr %arrayidx68.epil, align 4, !dbg !395
  %cmp69.epil = icmp eq i32 %82, %83, !dbg !396
  %84 = select i1 %cmp69.epil, i1 %cmp61.epil, i1 false, !dbg !398
  %and71.epil = select i1 %84, i32 %equal.1417.unr, i32 0, !dbg !398
    #dbg_value(i32 %and71.epil, !341, !DIExpression(), !342)
    #dbg_value(i64 %indvars.iv.unr, !339, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !342)
  br label %if.end130, !dbg !426

if.end130:                                        ; preds = %for.body112, %for.body55.epil, %if.end130.loopexit531.unr-lcssa, %for.body, %middle.block, %middle.block462, %if.end33, %if.then87, %if.end22
  %equal.3 = phi i32 [ %and95, %if.then87 ], [ 1, %if.end22 ], [ 1, %if.end33 ], [ %rdx.select487, %middle.block462 ], [ %rdx.select, %middle.block ], [ %and46, %for.body ], [ %and71.lcssa.ph, %if.end130.loopexit531.unr-lcssa ], [ %and71.epil, %for.body55.epil ], [ %and122, %for.body112 ], !dbg !342
    #dbg_value(i32 %equal.3, !341, !DIExpression(), !342)
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds i8, ptr %pps1, i64 2168, !dbg !426
  %85 = load i32, ptr %num_ref_idx_l0_active_minus1, align 8, !dbg !426
  %num_ref_idx_l0_active_minus1131 = getelementptr inbounds i8, ptr %pps2, i64 2168, !dbg !427
  %86 = load i32, ptr %num_ref_idx_l0_active_minus1131, align 8, !dbg !427
  %cmp132 = icmp ne i32 %85, %86, !dbg !428
    #dbg_value(i32 poison, !341, !DIExpression(), !342)
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds i8, ptr %pps1, i64 2172, !dbg !429
  %87 = load i32, ptr %num_ref_idx_l1_active_minus1, align 4, !dbg !429
  %num_ref_idx_l1_active_minus1135 = getelementptr inbounds i8, ptr %pps2, i64 2172, !dbg !430
  %88 = load i32, ptr %num_ref_idx_l1_active_minus1135, align 4, !dbg !430
  %cmp136 = icmp ne i32 %87, %88, !dbg !431
  %weighted_pred_flag = getelementptr inbounds i8, ptr %pps1, i64 2176, !dbg !432
  %89 = load i32, ptr %weighted_pred_flag, align 8, !dbg !432
  %weighted_pred_flag139 = getelementptr inbounds i8, ptr %pps2, i64 2176, !dbg !433
  %90 = load i32, ptr %weighted_pred_flag139, align 8, !dbg !433
  %cmp140 = icmp ne i32 %89, %90, !dbg !434
  %weighted_bipred_idc = getelementptr inbounds i8, ptr %pps1, i64 2180, !dbg !435
  %weighted_bipred_idc143 = getelementptr inbounds i8, ptr %pps2, i64 2180, !dbg !436
  %91 = load <4 x i32>, ptr %weighted_bipred_idc, align 4, !dbg !435
  %92 = load <4 x i32>, ptr %weighted_bipred_idc143, align 4, !dbg !436
  %93 = icmp ne <4 x i32> %91, %92, !dbg !437
  %deblocking_filter_control_present_flag = getelementptr inbounds i8, ptr %pps1, i64 2200, !dbg !438
  %94 = load i32, ptr %deblocking_filter_control_present_flag, align 8, !dbg !438
  %deblocking_filter_control_present_flag159 = getelementptr inbounds i8, ptr %pps2, i64 2200, !dbg !439
  %95 = load i32, ptr %deblocking_filter_control_present_flag159, align 8, !dbg !439
  %cmp160 = icmp ne i32 %94, %95, !dbg !440
  %constrained_intra_pred_flag = getelementptr inbounds i8, ptr %pps1, i64 2204, !dbg !441
  %96 = load i32, ptr %constrained_intra_pred_flag, align 4, !dbg !441
  %constrained_intra_pred_flag163 = getelementptr inbounds i8, ptr %pps2, i64 2204, !dbg !442
  %97 = load i32, ptr %constrained_intra_pred_flag163, align 4, !dbg !442
  %cmp164 = icmp ne i32 %96, %97, !dbg !443
  %redundant_pic_cnt_present_flag = getelementptr inbounds i8, ptr %pps1, i64 2208, !dbg !444
  %98 = load i32, ptr %redundant_pic_cnt_present_flag, align 8, !dbg !444
  %redundant_pic_cnt_present_flag167 = getelementptr inbounds i8, ptr %pps2, i64 2208, !dbg !445
  %99 = load i32, ptr %redundant_pic_cnt_present_flag167, align 8, !dbg !445
  %cmp168 = icmp ne i32 %98, %99, !dbg !446
  %tobool171.not401 = icmp eq i32 %equal.3, 0, !dbg !447
  %100 = freeze <4 x i1> %93, !dbg !447
  %101 = bitcast <4 x i1> %100 to i4, !dbg !447
  %102 = icmp ne i4 %101, 0, !dbg !447
  %cmp168.fr = freeze i1 %cmp168, !dbg !449
  %op.rdx = or i1 %cmp168.fr, %102, !dbg !449
  %103 = freeze i1 %cmp164, !dbg !449
  %104 = freeze i1 %cmp140, !dbg !449
  %cmp136.fr = freeze i1 %cmp136, !dbg !449
  %op.rdx518 = or i1 %104, %cmp136.fr, !dbg !449
  %105 = freeze i1 %cmp132, !dbg !447
  %106 = or i1 %op.rdx, %103, !dbg !449
  %cmp160.fr = freeze i1 %cmp160, !dbg !449
  %op.rdx520 = or i1 %106, %cmp160.fr, !dbg !449
  %107 = or i1 %op.rdx518, %105, !dbg !449
  %108 = or i1 %op.rdx520, %107, !dbg !449
  %op.rdx522 = select i1 %108, i1 true, i1 %tobool171.not401, !dbg !449
  br i1 %op.rdx522, label %cleanup, label %if.end173, !dbg !450

if.end173:                                        ; preds = %if.end130
  %transform_8x8_mode_flag = getelementptr inbounds i8, ptr %pps1, i64 16, !dbg !451
  %109 = load i32, ptr %transform_8x8_mode_flag, align 8, !dbg !451
  %transform_8x8_mode_flag174 = getelementptr inbounds i8, ptr %pps2, i64 16, !dbg !452
  %110 = load i32, ptr %transform_8x8_mode_flag174, align 8, !dbg !452
  %cmp175 = icmp eq i32 %109, %110, !dbg !453
    #dbg_value(i1 %cmp175, !341, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !342)
  %pic_scaling_matrix_present_flag = getelementptr inbounds i8, ptr %pps1, i64 20, !dbg !454
  %111 = load i32, ptr %pic_scaling_matrix_present_flag, align 4, !dbg !454
  %pic_scaling_matrix_present_flag178 = getelementptr inbounds i8, ptr %pps2, i64 20, !dbg !455
  %112 = load i32, ptr %pic_scaling_matrix_present_flag178, align 4, !dbg !455
  %cmp179 = icmp eq i32 %111, %112, !dbg !456
  %and181410 = and i1 %cmp175, %cmp179, !dbg !457
  %and181 = zext i1 %and181410 to i32, !dbg !457
    #dbg_value(i32 %and181, !341, !DIExpression(), !342)
  %tobool183.not = icmp eq i32 %111, 0, !dbg !458
  br i1 %tobool183.not, label %if.end251, label %for.cond185.preheader, !dbg !460

for.cond185.preheader:                            ; preds = %if.end173
  %shl = shl i32 %109, 1
  %add = add i32 %shl, 6
    #dbg_value(i32 %and181, !341, !DIExpression(), !342)
    #dbg_value(i32 0, !339, !DIExpression(), !342)
  %cmp187424.not = icmp eq i32 %add, 0, !dbg !461
  br i1 %cmp187424.not, label %if.end251, label %for.body189.lr.ph, !dbg !465

for.body189.lr.ph:                                ; preds = %for.cond185.preheader
  %pic_scaling_list_present_flag = getelementptr inbounds i8, ptr %pps1, i64 24
  %pic_scaling_list_present_flag192 = getelementptr inbounds i8, ptr %pps2, i64 24
  %ScalingList8x8 = getelementptr inbounds i8, ptr %pps1, i64 456
  %ScalingList8x8234 = getelementptr inbounds i8, ptr %pps2, i64 456
  %ScalingList4x4 = getelementptr inbounds i8, ptr %pps1, i64 72
  %ScalingList4x4214 = getelementptr inbounds i8, ptr %pps2, i64 72
  %wide.trip.count443 = zext i32 %add to i64, !dbg !461
  br label %for.body189, !dbg !465

for.body189:                                      ; preds = %for.body189.lr.ph, %for.inc248
  %indvars.iv439 = phi i64 [ 0, %for.body189.lr.ph ], [ %indvars.iv.next440, %for.inc248 ]
  %equal.4426 = phi i32 [ %and181, %for.body189.lr.ph ], [ %equal.7, %for.inc248 ]
    #dbg_value(i32 %equal.4426, !341, !DIExpression(), !342)
    #dbg_value(i64 %indvars.iv439, !339, !DIExpression(), !342)
  %arrayidx191 = getelementptr inbounds [12 x i32], ptr %pic_scaling_list_present_flag, i64 0, i64 %indvars.iv439, !dbg !466
  %113 = load i32, ptr %arrayidx191, align 4, !dbg !466
  %arrayidx194 = getelementptr inbounds [12 x i32], ptr %pic_scaling_list_present_flag192, i64 0, i64 %indvars.iv439, !dbg !468
  %114 = load i32, ptr %arrayidx194, align 4, !dbg !468
  %cmp195 = icmp eq i32 %113, %114, !dbg !469
  %115 = and i32 %equal.4426, 1, !dbg !470
  %and197 = select i1 %cmp195, i32 %115, i32 0, !dbg !470
    #dbg_value(i32 %and197, !341, !DIExpression(), !342)
  %tobool201.not = icmp eq i32 %113, 0, !dbg !471
  br i1 %tobool201.not, label %for.inc248, label %if.then202, !dbg !473

if.then202:                                       ; preds = %for.body189
  %cmp203 = icmp ult i64 %indvars.iv439, 6, !dbg !474
    #dbg_value(i32 0, !340, !DIExpression(), !342)
  br i1 %cmp203, label %for.body209.preheader, label %vector.body494, !dbg !477

for.body209.preheader:                            ; preds = %if.then202
    #dbg_value(i32 %and197, !341, !DIExpression(), !342)
    #dbg_value(i64 0, !340, !DIExpression(), !342)
  %arrayidx213 = getelementptr inbounds [6 x [16 x i32]], ptr %ScalingList4x4, i64 0, i64 %indvars.iv439, i64 0, !dbg !478
  %arrayidx218 = getelementptr inbounds [6 x [16 x i32]], ptr %ScalingList4x4214, i64 0, i64 %indvars.iv439, i64 0, !dbg !482
    #dbg_value(i32 poison, !341, !DIExpression(), !342)
    #dbg_value(i64 1, !340, !DIExpression(), !342)
    #dbg_value(i64 2, !340, !DIExpression(), !342)
    #dbg_value(i64 3, !340, !DIExpression(), !342)
    #dbg_value(i64 4, !340, !DIExpression(), !342)
    #dbg_value(i64 5, !340, !DIExpression(), !342)
    #dbg_value(i64 6, !340, !DIExpression(), !342)
    #dbg_value(i64 7, !340, !DIExpression(), !342)
    #dbg_value(i64 8, !340, !DIExpression(), !342)
    #dbg_value(i64 9, !340, !DIExpression(), !342)
    #dbg_value(i64 10, !340, !DIExpression(), !342)
    #dbg_value(i64 11, !340, !DIExpression(), !342)
    #dbg_value(i64 12, !340, !DIExpression(), !342)
    #dbg_value(i64 13, !340, !DIExpression(), !342)
    #dbg_value(i64 14, !340, !DIExpression(), !342)
    #dbg_value(i64 15, !340, !DIExpression(), !342)
  %116 = load <16 x i32>, ptr %arrayidx213, align 4, !dbg !478
  %117 = load <16 x i32>, ptr %arrayidx218, align 4, !dbg !482
  %118 = icmp eq <16 x i32> %116, %117, !dbg !483
  %119 = freeze <16 x i1> %118, !dbg !484
  %120 = bitcast <16 x i1> %119 to i16, !dbg !484
  %121 = icmp eq i16 %120, -1, !dbg !484
  %and221.15 = select i1 %121, i32 %and197, i32 0, !dbg !484
    #dbg_value(i32 %and221.15, !341, !DIExpression(), !342)
    #dbg_value(i64 16, !340, !DIExpression(), !342)
  br label %for.inc248, !dbg !485

vector.body494:                                   ; preds = %if.then202
    #dbg_value(i32 %and197, !341, !DIExpression(), !342)
    #dbg_value(i32 0, !340, !DIExpression(), !342)
  %122 = add nsw i64 %indvars.iv439, -6
  %123 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %122, i64 0, !dbg !486
  %124 = getelementptr inbounds i8, ptr %123, i64 16, !dbg !486
  %125 = getelementptr inbounds i8, ptr %123, i64 32, !dbg !486
  %126 = getelementptr inbounds i8, ptr %123, i64 48, !dbg !486
  %wide.load500 = load <4 x i32>, ptr %123, align 4, !dbg !486
  %wide.load501 = load <4 x i32>, ptr %124, align 4, !dbg !486
  %wide.load502 = load <4 x i32>, ptr %125, align 4, !dbg !486
  %wide.load503 = load <4 x i32>, ptr %126, align 4, !dbg !486
  %127 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8234, i64 0, i64 %122, i64 0, !dbg !490
  %128 = getelementptr inbounds i8, ptr %127, i64 16, !dbg !490
  %129 = getelementptr inbounds i8, ptr %127, i64 32, !dbg !490
  %130 = getelementptr inbounds i8, ptr %127, i64 48, !dbg !490
  %wide.load504 = load <4 x i32>, ptr %127, align 4, !dbg !490
  %wide.load505 = load <4 x i32>, ptr %128, align 4, !dbg !490
  %wide.load506 = load <4 x i32>, ptr %129, align 4, !dbg !490
  %wide.load507 = load <4 x i32>, ptr %130, align 4, !dbg !490
  %131 = icmp ne <4 x i32> %wide.load500, %wide.load504, !dbg !491
  %132 = icmp ne <4 x i32> %wide.load501, %wide.load505, !dbg !491
  %133 = icmp ne <4 x i32> %wide.load502, %wide.load506, !dbg !491
  %134 = icmp ne <4 x i32> %wide.load503, %wide.load507, !dbg !491
  %135 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %122, i64 16, !dbg !486
  %136 = getelementptr inbounds i8, ptr %135, i64 16, !dbg !486
  %137 = getelementptr inbounds i8, ptr %135, i64 32, !dbg !486
  %138 = getelementptr inbounds i8, ptr %135, i64 48, !dbg !486
  %wide.load500.1 = load <4 x i32>, ptr %135, align 4, !dbg !486
  %wide.load501.1 = load <4 x i32>, ptr %136, align 4, !dbg !486
  %wide.load502.1 = load <4 x i32>, ptr %137, align 4, !dbg !486
  %wide.load503.1 = load <4 x i32>, ptr %138, align 4, !dbg !486
  %139 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8234, i64 0, i64 %122, i64 16, !dbg !490
  %140 = getelementptr inbounds i8, ptr %139, i64 16, !dbg !490
  %141 = getelementptr inbounds i8, ptr %139, i64 32, !dbg !490
  %142 = getelementptr inbounds i8, ptr %139, i64 48, !dbg !490
  %wide.load504.1 = load <4 x i32>, ptr %139, align 4, !dbg !490
  %wide.load505.1 = load <4 x i32>, ptr %140, align 4, !dbg !490
  %wide.load506.1 = load <4 x i32>, ptr %141, align 4, !dbg !490
  %wide.load507.1 = load <4 x i32>, ptr %142, align 4, !dbg !490
  %143 = icmp ne <4 x i32> %wide.load500.1, %wide.load504.1, !dbg !491
  %144 = icmp ne <4 x i32> %wide.load501.1, %wide.load505.1, !dbg !491
  %145 = icmp ne <4 x i32> %wide.load502.1, %wide.load506.1, !dbg !491
  %146 = icmp ne <4 x i32> %wide.load503.1, %wide.load507.1, !dbg !491
  %147 = or <4 x i1> %131, %143
  %148 = or <4 x i1> %132, %144
  %149 = or <4 x i1> %133, %145
  %150 = or <4 x i1> %134, %146
  %151 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %122, i64 32, !dbg !486
  %152 = getelementptr inbounds i8, ptr %151, i64 16, !dbg !486
  %153 = getelementptr inbounds i8, ptr %151, i64 32, !dbg !486
  %154 = getelementptr inbounds i8, ptr %151, i64 48, !dbg !486
  %wide.load500.2 = load <4 x i32>, ptr %151, align 4, !dbg !486
  %wide.load501.2 = load <4 x i32>, ptr %152, align 4, !dbg !486
  %wide.load502.2 = load <4 x i32>, ptr %153, align 4, !dbg !486
  %wide.load503.2 = load <4 x i32>, ptr %154, align 4, !dbg !486
  %155 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8234, i64 0, i64 %122, i64 32, !dbg !490
  %156 = getelementptr inbounds i8, ptr %155, i64 16, !dbg !490
  %157 = getelementptr inbounds i8, ptr %155, i64 32, !dbg !490
  %158 = getelementptr inbounds i8, ptr %155, i64 48, !dbg !490
  %wide.load504.2 = load <4 x i32>, ptr %155, align 4, !dbg !490
  %wide.load505.2 = load <4 x i32>, ptr %156, align 4, !dbg !490
  %wide.load506.2 = load <4 x i32>, ptr %157, align 4, !dbg !490
  %wide.load507.2 = load <4 x i32>, ptr %158, align 4, !dbg !490
  %159 = icmp ne <4 x i32> %wide.load500.2, %wide.load504.2, !dbg !491
  %160 = icmp ne <4 x i32> %wide.load501.2, %wide.load505.2, !dbg !491
  %161 = icmp ne <4 x i32> %wide.load502.2, %wide.load506.2, !dbg !491
  %162 = icmp ne <4 x i32> %wide.load503.2, %wide.load507.2, !dbg !491
  %163 = or <4 x i1> %147, %159
  %164 = or <4 x i1> %148, %160
  %165 = or <4 x i1> %149, %161
  %166 = or <4 x i1> %150, %162
  %167 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %122, i64 48, !dbg !486
  %168 = getelementptr inbounds i8, ptr %167, i64 16, !dbg !486
  %169 = getelementptr inbounds i8, ptr %167, i64 32, !dbg !486
  %170 = getelementptr inbounds i8, ptr %167, i64 48, !dbg !486
  %wide.load500.3 = load <4 x i32>, ptr %167, align 4, !dbg !486
  %wide.load501.3 = load <4 x i32>, ptr %168, align 4, !dbg !486
  %wide.load502.3 = load <4 x i32>, ptr %169, align 4, !dbg !486
  %wide.load503.3 = load <4 x i32>, ptr %170, align 4, !dbg !486
  %171 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8234, i64 0, i64 %122, i64 48, !dbg !490
  %172 = getelementptr inbounds i8, ptr %171, i64 16, !dbg !490
  %173 = getelementptr inbounds i8, ptr %171, i64 32, !dbg !490
  %174 = getelementptr inbounds i8, ptr %171, i64 48, !dbg !490
  %wide.load504.3 = load <4 x i32>, ptr %171, align 4, !dbg !490
  %wide.load505.3 = load <4 x i32>, ptr %172, align 4, !dbg !490
  %wide.load506.3 = load <4 x i32>, ptr %173, align 4, !dbg !490
  %wide.load507.3 = load <4 x i32>, ptr %174, align 4, !dbg !490
  %175 = icmp ne <4 x i32> %wide.load500.3, %wide.load504.3, !dbg !491
  %176 = icmp ne <4 x i32> %wide.load501.3, %wide.load505.3, !dbg !491
  %177 = icmp ne <4 x i32> %wide.load502.3, %wide.load506.3, !dbg !491
  %178 = icmp ne <4 x i32> %wide.load503.3, %wide.load507.3, !dbg !491
  %179 = or <4 x i1> %163, %175
  %180 = or <4 x i1> %164, %176
  %181 = or <4 x i1> %165, %177
  %182 = or <4 x i1> %166, %178
  %bin.rdx509 = or <4 x i1> %180, %179, !dbg !492
  %bin.rdx510 = or <4 x i1> %181, %bin.rdx509, !dbg !492
  %bin.rdx511 = or <4 x i1> %182, %bin.rdx510, !dbg !492
  %bin.rdx511.fr = freeze <4 x i1> %bin.rdx511, !dbg !492
  %183 = bitcast <4 x i1> %bin.rdx511.fr to i4, !dbg !492
  %.not515 = icmp eq i4 %183, 0, !dbg !492
  %rdx.select512 = select i1 %.not515, i32 %and197, i32 0, !dbg !492
  br label %for.inc248, !dbg !485

for.inc248:                                       ; preds = %vector.body494, %for.body209.preheader, %for.body189
  %equal.7 = phi i32 [ %and197, %for.body189 ], [ %and221.15, %for.body209.preheader ], [ %rdx.select512, %vector.body494 ], !dbg !470
    #dbg_value(i32 %equal.7, !341, !DIExpression(), !342)
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1, !dbg !485
    #dbg_value(i64 %indvars.iv.next440, !339, !DIExpression(), !342)
  %exitcond444.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count443, !dbg !461
  br i1 %exitcond444.not, label %if.end251, label %for.body189, !dbg !465, !llvm.loop !493

if.end251:                                        ; preds = %for.inc248, %for.cond185.preheader, %if.end173
  %equal.8 = phi i32 [ %and181, %if.end173 ], [ %and181, %for.cond185.preheader ], [ %equal.7, %for.inc248 ], !dbg !457
    #dbg_value(i32 %equal.8, !341, !DIExpression(), !342)
  %second_chroma_qp_index_offset = getelementptr inbounds i8, ptr %pps1, i64 2196, !dbg !495
  %184 = load i32, ptr %second_chroma_qp_index_offset, align 4, !dbg !495
  %second_chroma_qp_index_offset252 = getelementptr inbounds i8, ptr %pps2, i64 2196, !dbg !496
  %185 = load i32, ptr %second_chroma_qp_index_offset252, align 4, !dbg !496
  %cmp253 = icmp eq i32 %184, %185, !dbg !497
  %and255 = select i1 %cmp253, i32 %equal.8, i32 0, !dbg !498
    #dbg_value(i32 %and255, !341, !DIExpression(), !342)
  br label %cleanup, !dbg !499

cleanup:                                          ; preds = %if.end130, %if.then100, %if.then26, %if.end, %entry, %lor.lhs.false, %if.end251
  %retval.0 = phi i32 [ %and255, %if.end251 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then26 ], [ 0, %if.then100 ], [ 0, %if.end130 ], !dbg !342
  ret i32 %retval.0, !dbg !500
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/parsetcommon.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "29e50fd146ea68377794b0403b2e61e9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !3, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !13, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!0, !7}
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 8, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!21 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!22 = distinct !DISubprogram(name: "AllocPPS", scope: !2, file: !2, line: 29, type: !23, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !82)
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !27, line: 138, baseType: !28)
!27 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 94, size: 17728, elements: !29)
!29 = !{!30, !32, !33, !34, !35, !36, !37, !41, !46, !50, !53, !54, !55, !56, !57, !61, !62, !63, !64, !65, !66, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !28, file: !27, line: 96, baseType: !31, size: 32)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !28, file: !27, line: 97, baseType: !12, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !28, file: !27, line: 98, baseType: !12, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !28, file: !27, line: 99, baseType: !31, size: 32, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !28, file: !27, line: 100, baseType: !31, size: 32, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !28, file: !27, line: 102, baseType: !31, size: 32, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !28, file: !27, line: 103, baseType: !38, size: 384, offset: 192)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 384, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 12)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !28, file: !27, line: 104, baseType: !42, size: 3072, offset: 576)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3072, elements: !43)
!43 = !{!44, !45}
!44 = !DISubrange(count: 6)
!45 = !DISubrange(count: 16)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !28, file: !27, line: 105, baseType: !47, size: 12288, offset: 3648)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 12288, elements: !48)
!48 = !{!44, !49}
!49 = !DISubrange(count: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !28, file: !27, line: 106, baseType: !51, size: 192, offset: 15936)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 192, elements: !52)
!52 = !{!44}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !28, file: !27, line: 107, baseType: !51, size: 192, offset: 16128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !28, file: !27, line: 110, baseType: !31, size: 32, offset: 16320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !28, file: !27, line: 111, baseType: !12, size: 32, offset: 16352)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !28, file: !27, line: 112, baseType: !12, size: 32, offset: 16384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !28, file: !27, line: 114, baseType: !58, size: 256, offset: 16416)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 8)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !28, file: !27, line: 116, baseType: !58, size: 256, offset: 16672)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !28, file: !27, line: 117, baseType: !58, size: 256, offset: 16928)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !28, file: !27, line: 119, baseType: !31, size: 32, offset: 17184)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !28, file: !27, line: 120, baseType: !12, size: 32, offset: 17216)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !28, file: !27, line: 122, baseType: !12, size: 32, offset: 17248)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !28, file: !27, line: 123, baseType: !67, size: 64, offset: 17280)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !69, line: 21, baseType: !70)
!69 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!70 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !28, file: !27, line: 125, baseType: !31, size: 32, offset: 17344)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !28, file: !27, line: 126, baseType: !31, size: 32, offset: 17376)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !28, file: !27, line: 127, baseType: !31, size: 32, offset: 17408)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !28, file: !27, line: 128, baseType: !12, size: 32, offset: 17440)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !28, file: !27, line: 129, baseType: !31, size: 32, offset: 17472)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !28, file: !27, line: 130, baseType: !31, size: 32, offset: 17504)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !28, file: !27, line: 131, baseType: !31, size: 32, offset: 17536)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !28, file: !27, line: 133, baseType: !31, size: 32, offset: 17568)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !28, file: !27, line: 135, baseType: !31, size: 32, offset: 17600)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !28, file: !27, line: 136, baseType: !31, size: 32, offset: 17632)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !28, file: !27, line: 137, baseType: !31, size: 32, offset: 17664)
!82 = !{!83}
!83 = !DILocalVariable(name: "p", scope: !22, file: !2, line: 31, type: !25)
!84 = !DILocation(line: 33, column: 11, scope: !85)
!85 = distinct !DILexicalBlock(scope: !22, file: !2, line: 33, column: 8)
!86 = !DILocation(line: 0, scope: !22)
!87 = !DILocation(line: 33, column: 58, scope: !85)
!88 = !DILocation(line: 33, column: 8, scope: !22)
!89 = !DILocation(line: 34, column: 6, scope: !85)
!90 = !DILocation(line: 36, column: 4, scope: !22)
!91 = !DISubprogram(name: "calloc", scope: !92, file: !92, line: 543, type: !93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!92 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!93 = !DISubroutineType(types: !94)
!94 = !{!11, !95, !95}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 18, baseType: !97)
!96 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!97 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!98 = !DISubprogram(name: "no_mem_exit", scope: !99, file: !99, line: 180, type: !100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!99 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!103 = distinct !DISubprogram(name: "AllocSPS", scope: !2, file: !2, line: 50, type: !104, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !209)
!104 = !DISubroutineType(types: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !27, line: 197, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 142, size: 33024, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !207, !208}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !108, file: !27, line: 144, baseType: !31, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !108, file: !27, line: 146, baseType: !12, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !108, file: !27, line: 147, baseType: !31, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !108, file: !27, line: 148, baseType: !31, size: 32, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !108, file: !27, line: 149, baseType: !31, size: 32, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !108, file: !27, line: 150, baseType: !31, size: 32, offset: 160)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !108, file: !27, line: 152, baseType: !31, size: 32, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !108, file: !27, line: 154, baseType: !12, size: 32, offset: 224)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !108, file: !27, line: 155, baseType: !12, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !108, file: !27, line: 156, baseType: !12, size: 32, offset: 288)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !108, file: !27, line: 158, baseType: !31, size: 32, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !108, file: !27, line: 159, baseType: !38, size: 384, offset: 352)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !108, file: !27, line: 160, baseType: !42, size: 3072, offset: 736)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !108, file: !27, line: 161, baseType: !47, size: 12288, offset: 3808)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !108, file: !27, line: 162, baseType: !51, size: 192, offset: 16096)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !108, file: !27, line: 163, baseType: !51, size: 192, offset: 16288)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !108, file: !27, line: 165, baseType: !12, size: 32, offset: 16480)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !108, file: !27, line: 166, baseType: !12, size: 32, offset: 16512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !108, file: !27, line: 167, baseType: !12, size: 32, offset: 16544)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !108, file: !27, line: 168, baseType: !12, size: 32, offset: 16576)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !108, file: !27, line: 170, baseType: !12, size: 32, offset: 16608)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !108, file: !27, line: 172, baseType: !31, size: 32, offset: 16640)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !108, file: !27, line: 173, baseType: !31, size: 32, offset: 16672)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !108, file: !27, line: 174, baseType: !31, size: 32, offset: 16704)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !108, file: !27, line: 175, baseType: !12, size: 32, offset: 16736)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !108, file: !27, line: 177, baseType: !136, size: 8192, offset: 16768)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8192, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !108, file: !27, line: 178, baseType: !12, size: 32, offset: 24960)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !108, file: !27, line: 179, baseType: !31, size: 32, offset: 24992)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !108, file: !27, line: 180, baseType: !12, size: 32, offset: 25024)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !108, file: !27, line: 181, baseType: !12, size: 32, offset: 25056)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !108, file: !27, line: 182, baseType: !31, size: 32, offset: 25088)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !108, file: !27, line: 184, baseType: !31, size: 32, offset: 25120)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !108, file: !27, line: 185, baseType: !31, size: 32, offset: 25152)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !108, file: !27, line: 186, baseType: !31, size: 32, offset: 25184)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !108, file: !27, line: 187, baseType: !12, size: 32, offset: 25216)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !108, file: !27, line: 188, baseType: !12, size: 32, offset: 25248)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !108, file: !27, line: 189, baseType: !12, size: 32, offset: 25280)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !108, file: !27, line: 190, baseType: !12, size: 32, offset: 25312)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !108, file: !27, line: 191, baseType: !31, size: 32, offset: 25344)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !108, file: !27, line: 192, baseType: !153, size: 7584, offset: 25376)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !27, line: 90, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 53, size: 7584, elements: !155)
!155 = !{!156, !157, !158, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !154, file: !27, line: 55, baseType: !31, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !154, file: !27, line: 56, baseType: !12, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !154, file: !27, line: 57, baseType: !159, size: 16, offset: 64)
!159 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !154, file: !27, line: 58, baseType: !159, size: 16, offset: 80)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !154, file: !27, line: 59, baseType: !31, size: 32, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !154, file: !27, line: 60, baseType: !31, size: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !154, file: !27, line: 61, baseType: !31, size: 32, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !154, file: !27, line: 62, baseType: !12, size: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !154, file: !27, line: 63, baseType: !31, size: 32, offset: 224)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !154, file: !27, line: 64, baseType: !31, size: 32, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !154, file: !27, line: 65, baseType: !12, size: 32, offset: 288)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !154, file: !27, line: 66, baseType: !12, size: 32, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !154, file: !27, line: 67, baseType: !12, size: 32, offset: 352)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !154, file: !27, line: 68, baseType: !31, size: 32, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !154, file: !27, line: 69, baseType: !12, size: 32, offset: 416)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !154, file: !27, line: 70, baseType: !12, size: 32, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !154, file: !27, line: 71, baseType: !31, size: 32, offset: 480)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !154, file: !27, line: 72, baseType: !12, size: 32, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !154, file: !27, line: 73, baseType: !12, size: 32, offset: 544)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !154, file: !27, line: 74, baseType: !31, size: 32, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !154, file: !27, line: 75, baseType: !31, size: 32, offset: 608)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !154, file: !27, line: 76, baseType: !179, size: 3296, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !27, line: 50, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 38, size: 3296, elements: !181)
!181 = !{!182, !183, !184, !185, !189, !190, !191, !192, !193, !194}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !180, file: !27, line: 40, baseType: !12, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !180, file: !27, line: 41, baseType: !12, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !180, file: !27, line: 42, baseType: !12, size: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !180, file: !27, line: 43, baseType: !186, size: 1024, offset: 96)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1024, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !180, file: !27, line: 44, baseType: !186, size: 1024, offset: 1120)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !180, file: !27, line: 45, baseType: !186, size: 1024, offset: 2144)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !180, file: !27, line: 46, baseType: !12, size: 32, offset: 3168)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !180, file: !27, line: 47, baseType: !12, size: 32, offset: 3200)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !180, file: !27, line: 48, baseType: !12, size: 32, offset: 3232)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !180, file: !27, line: 49, baseType: !12, size: 32, offset: 3264)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !154, file: !27, line: 77, baseType: !31, size: 32, offset: 3936)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !154, file: !27, line: 78, baseType: !179, size: 3296, offset: 3968)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !154, file: !27, line: 80, baseType: !31, size: 32, offset: 7264)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !154, file: !27, line: 81, baseType: !31, size: 32, offset: 7296)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !154, file: !27, line: 82, baseType: !31, size: 32, offset: 7328)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !154, file: !27, line: 83, baseType: !31, size: 32, offset: 7360)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !154, file: !27, line: 84, baseType: !12, size: 32, offset: 7392)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !154, file: !27, line: 85, baseType: !12, size: 32, offset: 7424)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !154, file: !27, line: 86, baseType: !12, size: 32, offset: 7456)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !154, file: !27, line: 87, baseType: !12, size: 32, offset: 7488)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !154, file: !27, line: 88, baseType: !12, size: 32, offset: 7520)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !154, file: !27, line: 89, baseType: !12, size: 32, offset: 7552)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !108, file: !27, line: 193, baseType: !12, size: 32, offset: 32960)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !108, file: !27, line: 195, baseType: !31, size: 32, offset: 32992)
!209 = !{!210}
!210 = !DILocalVariable(name: "p", scope: !103, file: !2, line: 52, type: !106)
!211 = !DILocation(line: 54, column: 11, scope: !212)
!212 = distinct !DILexicalBlock(scope: !103, file: !2, line: 54, column: 8)
!213 = !DILocation(line: 0, scope: !103)
!214 = !DILocation(line: 54, column: 58, scope: !212)
!215 = !DILocation(line: 54, column: 8, scope: !103)
!216 = !DILocation(line: 55, column: 6, scope: !212)
!217 = !DILocation(line: 56, column: 4, scope: !103)
!218 = distinct !DISubprogram(name: "FreePPS", scope: !2, file: !2, line: 70, type: !219, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !25}
!221 = !{!222}
!222 = !DILocalVariable(name: "pps", arg: 1, scope: !218, file: !2, line: 70, type: !25)
!223 = !DILocation(line: 0, scope: !218)
!224 = !DILocation(line: 73, column: 13, scope: !225)
!225 = distinct !DILexicalBlock(scope: !218, file: !2, line: 73, column: 8)
!226 = !DILocation(line: 73, column: 28, scope: !225)
!227 = !DILocation(line: 73, column: 8, scope: !218)
!228 = !DILocation(line: 74, column: 6, scope: !225)
!229 = !DILocation(line: 75, column: 4, scope: !218)
!230 = !DILocation(line: 76, column: 2, scope: !218)
!231 = !DISubprogram(name: "free", scope: !92, file: !92, line: 555, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !11}
!234 = distinct !DISubprogram(name: "FreeSPS", scope: !2, file: !2, line: 89, type: !235, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !237)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !106}
!237 = !{!238}
!238 = !DILocalVariable(name: "sps", arg: 1, scope: !234, file: !2, line: 89, type: !106)
!239 = !DILocation(line: 0, scope: !234)
!240 = !DILocation(line: 92, column: 4, scope: !234)
!241 = !DILocation(line: 93, column: 2, scope: !234)
!242 = distinct !DISubprogram(name: "sps_is_equal", scope: !2, file: !2, line: 96, type: !243, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !245)
!243 = !DISubroutineType(types: !244)
!244 = !{!31, !106, !106}
!245 = !{!246, !247, !248, !249}
!246 = !DILocalVariable(name: "sps1", arg: 1, scope: !242, file: !2, line: 96, type: !106)
!247 = !DILocalVariable(name: "sps2", arg: 2, scope: !242, file: !2, line: 96, type: !106)
!248 = !DILocalVariable(name: "i", scope: !242, file: !2, line: 98, type: !12)
!249 = !DILocalVariable(name: "equal", scope: !242, file: !2, line: 99, type: !31)
!250 = !DILocation(line: 0, scope: !242)
!251 = !DILocation(line: 101, column: 15, scope: !252)
!252 = distinct !DILexicalBlock(scope: !242, file: !2, line: 101, column: 7)
!253 = !DILocation(line: 101, column: 9, scope: !252)
!254 = !DILocation(line: 101, column: 22, scope: !252)
!255 = !DILocation(line: 101, column: 33, scope: !252)
!256 = !DILocation(line: 101, column: 27, scope: !252)
!257 = !DILocation(line: 101, column: 7, scope: !242)
!258 = !DILocation(line: 104, column: 19, scope: !242)
!259 = !DILocation(line: 104, column: 40, scope: !242)
!260 = !DILocation(line: 108, column: 19, scope: !242)
!261 = !DILocation(line: 108, column: 38, scope: !242)
!262 = !DILocation(line: 110, column: 19, scope: !242)
!263 = !DILocation(line: 110, column: 54, scope: !242)
!264 = !DILocation(line: 104, column: 31, scope: !242)
!265 = !DILocation(line: 111, column: 9, scope: !242)
!266 = !DILocation(line: 113, column: 7, scope: !242)
!267 = !DILocation(line: 115, column: 7, scope: !242)
!268 = !DILocation(line: 117, column: 21, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !2, line: 116, column: 3)
!270 = distinct !DILexicalBlock(scope: !242, file: !2, line: 115, column: 7)
!271 = !DILocation(line: 117, column: 64, scope: !269)
!272 = !DILocation(line: 117, column: 55, scope: !269)
!273 = !DILocation(line: 118, column: 3, scope: !269)
!274 = !DILocation(line: 122, column: 21, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !2, line: 121, column: 3)
!276 = distinct !DILexicalBlock(scope: !270, file: !2, line: 120, column: 12)
!277 = !DILocation(line: 122, column: 63, scope: !275)
!278 = !DILocation(line: 125, column: 11, scope: !275)
!279 = !DILocation(line: 126, column: 9, scope: !275)
!280 = !DILocation(line: 128, column: 20, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !2, line: 128, column: 5)
!282 = distinct !DILexicalBlock(scope: !275, file: !2, line: 128, column: 5)
!283 = !DILocation(line: 128, column: 5, scope: !282)
!284 = !DILocation(line: 128, column: 69, scope: !281)
!285 = !DILocation(line: 129, column: 17, scope: !281)
!286 = !DILocation(line: 129, column: 50, scope: !281)
!287 = !DILocation(line: 129, column: 47, scope: !281)
!288 = distinct !{!288, !283, !289, !290, !291}
!289 = !DILocation(line: 129, column: 79, scope: !282)
!290 = !{!"llvm.loop.isvectorized", i32 1}
!291 = !{!"llvm.loop.unroll.runtime.disable"}
!292 = !DILocation(line: 129, column: 13, scope: !281)
!293 = distinct !{!293, !283, !289, !291, !290}
!294 = !DILocation(line: 132, column: 19, scope: !242)
!295 = !DILocation(line: 132, column: 43, scope: !242)
!296 = !DILocation(line: 132, column: 34, scope: !242)
!297 = !DILocation(line: 133, column: 19, scope: !242)
!298 = !DILocation(line: 133, column: 65, scope: !242)
!299 = !DILocation(line: 136, column: 39, scope: !242)
!300 = !DILocation(line: 138, column: 8, scope: !301)
!301 = distinct !DILexicalBlock(scope: !242, file: !2, line: 138, column: 7)
!302 = !DILocation(line: 138, column: 7, scope: !242)
!303 = !DILocation(line: 139, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !242, file: !2, line: 139, column: 7)
!305 = !DILocation(line: 139, column: 7, scope: !242)
!306 = !DILocation(line: 140, column: 21, scope: !304)
!307 = !DILocation(line: 140, column: 59, scope: !304)
!308 = !DILocation(line: 140, column: 50, scope: !304)
!309 = !DILocation(line: 140, column: 5, scope: !304)
!310 = !DILocation(line: 142, column: 19, scope: !242)
!311 = !DILocation(line: 142, column: 54, scope: !242)
!312 = !DILocation(line: 142, column: 45, scope: !242)
!313 = !DILocation(line: 143, column: 19, scope: !242)
!314 = !DILocation(line: 143, column: 48, scope: !242)
!315 = !DILocation(line: 143, column: 39, scope: !242)
!316 = !DILocation(line: 144, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !242, file: !2, line: 144, column: 7)
!318 = !DILocation(line: 144, column: 7, scope: !242)
!319 = !DILocation(line: 145, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !242, file: !2, line: 145, column: 7)
!321 = !DILocation(line: 145, column: 7, scope: !242)
!322 = !DILocation(line: 147, column: 21, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !2, line: 146, column: 3)
!324 = !DILocation(line: 147, column: 62, scope: !323)
!325 = !DILocation(line: 150, column: 11, scope: !323)
!326 = !DILocation(line: 151, column: 3, scope: !323)
!327 = !DILocation(line: 152, column: 19, scope: !242)
!328 = !DILocation(line: 152, column: 56, scope: !242)
!329 = !DILocation(line: 152, column: 47, scope: !242)
!330 = !DILocation(line: 152, column: 9, scope: !242)
!331 = !DILocation(line: 154, column: 3, scope: !242)
!332 = !DILocation(line: 155, column: 1, scope: !242)
!333 = distinct !DISubprogram(name: "pps_is_equal", scope: !2, file: !2, line: 157, type: !334, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!31, !25, !25}
!336 = !{!337, !338, !339, !340, !341}
!337 = !DILocalVariable(name: "pps1", arg: 1, scope: !333, file: !2, line: 157, type: !25)
!338 = !DILocalVariable(name: "pps2", arg: 2, scope: !333, file: !2, line: 157, type: !25)
!339 = !DILocalVariable(name: "i", scope: !333, file: !2, line: 159, type: !12)
!340 = !DILocalVariable(name: "j", scope: !333, file: !2, line: 159, type: !12)
!341 = !DILocalVariable(name: "equal", scope: !333, file: !2, line: 160, type: !31)
!342 = !DILocation(line: 0, scope: !333)
!343 = !DILocation(line: 162, column: 15, scope: !344)
!344 = distinct !DILexicalBlock(scope: !333, file: !2, line: 162, column: 7)
!345 = !DILocation(line: 162, column: 9, scope: !344)
!346 = !DILocation(line: 162, column: 22, scope: !344)
!347 = !DILocation(line: 162, column: 33, scope: !344)
!348 = !DILocation(line: 162, column: 27, scope: !344)
!349 = !DILocation(line: 162, column: 7, scope: !333)
!350 = !DILocation(line: 165, column: 19, scope: !333)
!351 = !DILocation(line: 165, column: 49, scope: !333)
!352 = !DILocation(line: 165, column: 40, scope: !333)
!353 = !DILocation(line: 166, column: 19, scope: !333)
!354 = !DILocation(line: 166, column: 49, scope: !333)
!355 = !DILocation(line: 168, column: 19, scope: !333)
!356 = !DILocation(line: 168, column: 73, scope: !333)
!357 = !DILocation(line: 166, column: 40, scope: !333)
!358 = !DILocation(line: 169, column: 9, scope: !333)
!359 = !DILocation(line: 166, column: 9, scope: !333)
!360 = !DILocation(line: 171, column: 7, scope: !333)
!361 = !DILocation(line: 173, column: 36, scope: !362)
!362 = distinct !DILexicalBlock(scope: !333, file: !2, line: 173, column: 7)
!363 = !DILocation(line: 173, column: 7, scope: !333)
!364 = !DILocation(line: 175, column: 23, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !2, line: 174, column: 3)
!366 = !DILocation(line: 175, column: 53, scope: !365)
!367 = !DILocation(line: 175, column: 44, scope: !365)
!368 = !DILocation(line: 176, column: 11, scope: !365)
!369 = !DILocation(line: 177, column: 11, scope: !365)
!370 = !DILocation(line: 184, column: 20, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !2, line: 184, column: 9)
!372 = distinct !DILexicalBlock(scope: !373, file: !2, line: 184, column: 9)
!373 = distinct !DILexicalBlock(scope: !374, file: !2, line: 183, column: 7)
!374 = distinct !DILexicalBlock(scope: !375, file: !2, line: 182, column: 16)
!375 = distinct !DILexicalBlock(scope: !365, file: !2, line: 177, column: 11)
!376 = !DILocation(line: 184, column: 9, scope: !372)
!377 = !DILocation(line: 179, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !2, line: 179, column: 9)
!379 = distinct !DILexicalBlock(scope: !375, file: !2, line: 178, column: 7)
!380 = !DILocation(line: 179, column: 54, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !2, line: 179, column: 9)
!382 = !DILocation(line: 180, column: 21, scope: !381)
!383 = !DILocation(line: 180, column: 51, scope: !381)
!384 = !DILocation(line: 180, column: 48, scope: !381)
!385 = distinct !{!385, !377, !386, !290, !291}
!386 = !DILocation(line: 180, column: 77, scope: !378)
!387 = !DILocation(line: 180, column: 17, scope: !381)
!388 = !DILocation(line: 179, column: 20, scope: !381)
!389 = distinct !{!389, !377, !386, !290}
!390 = !DILocation(line: 186, column: 21, scope: !391)
!391 = distinct !DILexicalBlock(scope: !371, file: !2, line: 185, column: 9)
!392 = !DILocation(line: 186, column: 42, scope: !391)
!393 = !DILocation(line: 186, column: 39, scope: !391)
!394 = !DILocation(line: 187, column: 21, scope: !391)
!395 = !DILocation(line: 187, column: 46, scope: !391)
!396 = !DILocation(line: 187, column: 43, scope: !391)
!397 = !DILocation(line: 184, column: 53, scope: !371)
!398 = !DILocation(line: 187, column: 17, scope: !391)
!399 = distinct !{!399, !376, !400}
!400 = !DILocation(line: 188, column: 9, scope: !372)
!401 = !DILocation(line: 192, column: 25, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !2, line: 191, column: 7)
!403 = distinct !DILexicalBlock(scope: !374, file: !2, line: 190, column: 16)
!404 = !DILocation(line: 192, column: 68, scope: !402)
!405 = !DILocation(line: 192, column: 59, scope: !402)
!406 = !DILocation(line: 193, column: 15, scope: !402)
!407 = !DILocation(line: 194, column: 7, scope: !402)
!408 = !DILocation(line: 197, column: 25, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !2, line: 196, column: 7)
!410 = distinct !DILexicalBlock(scope: !403, file: !2, line: 195, column: 16)
!411 = !DILocation(line: 197, column: 63, scope: !409)
!412 = !DILocation(line: 197, column: 54, scope: !409)
!413 = !DILocation(line: 198, column: 13, scope: !409)
!414 = !DILocation(line: 199, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !2, line: 199, column: 9)
!416 = !DILocation(line: 199, column: 59, scope: !417)
!417 = distinct !DILexicalBlock(scope: !415, file: !2, line: 199, column: 9)
!418 = !DILocation(line: 200, column: 21, scope: !417)
!419 = !DILocation(line: 200, column: 48, scope: !417)
!420 = !DILocation(line: 200, column: 45, scope: !417)
!421 = distinct !{!421, !414, !422, !290, !291}
!422 = !DILocation(line: 200, column: 71, scope: !415)
!423 = !DILocation(line: 200, column: 17, scope: !417)
!424 = !DILocation(line: 199, column: 20, scope: !417)
!425 = distinct !{!425, !414, !422, !290}
!426 = !DILocation(line: 204, column: 19, scope: !333)
!427 = !DILocation(line: 204, column: 57, scope: !333)
!428 = !DILocation(line: 204, column: 48, scope: !333)
!429 = !DILocation(line: 205, column: 19, scope: !333)
!430 = !DILocation(line: 205, column: 57, scope: !333)
!431 = !DILocation(line: 205, column: 48, scope: !333)
!432 = !DILocation(line: 206, column: 19, scope: !333)
!433 = !DILocation(line: 206, column: 47, scope: !333)
!434 = !DILocation(line: 206, column: 38, scope: !333)
!435 = !DILocation(line: 207, column: 19, scope: !333)
!436 = !DILocation(line: 207, column: 48, scope: !333)
!437 = !DILocation(line: 210, column: 42, scope: !333)
!438 = !DILocation(line: 211, column: 19, scope: !333)
!439 = !DILocation(line: 211, column: 67, scope: !333)
!440 = !DILocation(line: 211, column: 58, scope: !333)
!441 = !DILocation(line: 212, column: 19, scope: !333)
!442 = !DILocation(line: 212, column: 56, scope: !333)
!443 = !DILocation(line: 212, column: 47, scope: !333)
!444 = !DILocation(line: 213, column: 19, scope: !333)
!445 = !DILocation(line: 213, column: 59, scope: !333)
!446 = !DILocation(line: 213, column: 50, scope: !333)
!447 = !DILocation(line: 215, column: 8, scope: !448)
!448 = distinct !DILexicalBlock(scope: !333, file: !2, line: 215, column: 7)
!449 = !DILocation(line: 213, column: 9, scope: !333)
!450 = !DILocation(line: 215, column: 7, scope: !333)
!451 = !DILocation(line: 219, column: 19, scope: !333)
!452 = !DILocation(line: 219, column: 52, scope: !333)
!453 = !DILocation(line: 219, column: 43, scope: !333)
!454 = !DILocation(line: 220, column: 19, scope: !333)
!455 = !DILocation(line: 220, column: 60, scope: !333)
!456 = !DILocation(line: 220, column: 51, scope: !333)
!457 = !DILocation(line: 220, column: 9, scope: !333)
!458 = !DILocation(line: 221, column: 6, scope: !459)
!459 = distinct !DILexicalBlock(scope: !333, file: !2, line: 221, column: 6)
!460 = !DILocation(line: 221, column: 6, scope: !333)
!461 = !DILocation(line: 223, column: 18, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !2, line: 223, column: 5)
!463 = distinct !DILexicalBlock(scope: !464, file: !2, line: 223, column: 5)
!464 = distinct !DILexicalBlock(scope: !459, file: !2, line: 222, column: 3)
!465 = !DILocation(line: 223, column: 5, scope: !463)
!466 = !DILocation(line: 225, column: 17, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !2, line: 224, column: 5)
!468 = !DILocation(line: 225, column: 59, scope: !467)
!469 = !DILocation(line: 225, column: 56, scope: !467)
!470 = !DILocation(line: 225, column: 13, scope: !467)
!471 = !DILocation(line: 226, column: 10, scope: !472)
!472 = distinct !DILexicalBlock(scope: !467, file: !2, line: 226, column: 10)
!473 = !DILocation(line: 226, column: 10, scope: !467)
!474 = !DILocation(line: 228, column: 14, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !2, line: 228, column: 12)
!476 = distinct !DILexicalBlock(scope: !472, file: !2, line: 227, column: 7)
!477 = !DILocation(line: 228, column: 12, scope: !476)
!478 = !DILocation(line: 231, column: 23, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !2, line: 230, column: 11)
!480 = distinct !DILexicalBlock(scope: !481, file: !2, line: 230, column: 11)
!481 = distinct !DILexicalBlock(scope: !475, file: !2, line: 229, column: 9)
!482 = !DILocation(line: 231, column: 53, scope: !479)
!483 = !DILocation(line: 231, column: 50, scope: !479)
!484 = !DILocation(line: 231, column: 19, scope: !479)
!485 = !DILocation(line: 223, column: 75, scope: !462)
!486 = !DILocation(line: 236, column: 23, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !2, line: 235, column: 11)
!488 = distinct !DILexicalBlock(scope: !489, file: !2, line: 235, column: 11)
!489 = distinct !DILexicalBlock(scope: !475, file: !2, line: 234, column: 9)
!490 = !DILocation(line: 236, column: 55, scope: !487)
!491 = !DILocation(line: 236, column: 52, scope: !487)
!492 = !DILocation(line: 235, column: 11, scope: !488)
!493 = distinct !{!493, !465, !494}
!494 = !DILocation(line: 239, column: 5, scope: !463)
!495 = !DILocation(line: 241, column: 19, scope: !333)
!496 = !DILocation(line: 241, column: 58, scope: !333)
!497 = !DILocation(line: 241, column: 49, scope: !333)
!498 = !DILocation(line: 241, column: 9, scope: !333)
!499 = !DILocation(line: 243, column: 3, scope: !333)
!500 = !DILocation(line: 244, column: 1, scope: !333)
