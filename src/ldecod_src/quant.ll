; ModuleID = 'ldecod_src/quant.c'
source_filename = "ldecod_src/quant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quant_intra_default = dso_local global [16 x i32] [i32 6, i32 13, i32 20, i32 28, i32 13, i32 20, i32 28, i32 32, i32 20, i32 28, i32 32, i32 37, i32 28, i32 32, i32 37, i32 42], align 16
@quant_inter_default = dso_local global [16 x i32] [i32 10, i32 14, i32 20, i32 24, i32 14, i32 20, i32 24, i32 27, i32 20, i32 24, i32 27, i32 30, i32 24, i32 27, i32 30, i32 34], align 16
@quant8_intra_default = dso_local global [64 x i32] [i32 6, i32 10, i32 13, i32 16, i32 18, i32 23, i32 25, i32 27, i32 10, i32 11, i32 16, i32 18, i32 23, i32 25, i32 27, i32 29, i32 13, i32 16, i32 18, i32 23, i32 25, i32 27, i32 29, i32 31, i32 16, i32 18, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 18, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 36, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 36, i32 38, i32 25, i32 27, i32 29, i32 31, i32 33, i32 36, i32 38, i32 40, i32 27, i32 29, i32 31, i32 33, i32 36, i32 38, i32 40, i32 42], align 16
@quant8_inter_default = dso_local global [64 x i32] [i32 9, i32 13, i32 15, i32 17, i32 19, i32 21, i32 22, i32 24, i32 13, i32 13, i32 17, i32 19, i32 21, i32 22, i32 24, i32 25, i32 15, i32 17, i32 19, i32 21, i32 22, i32 24, i32 25, i32 27, i32 17, i32 19, i32 21, i32 22, i32 24, i32 25, i32 27, i32 28, i32 19, i32 21, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 21, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 32, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 32, i32 33, i32 24, i32 25, i32 27, i32 28, i32 30, i32 32, i32 33, i32 35], align 16
@quant_org = dso_local global [16 x i32] [i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], align 16
@quant8_org = dso_local global [64 x i32] [i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], align 16
@.str = private unnamed_addr constant [38 x i8] c"init_qp_process: p_Vid->qp_per_matrix\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"init_qp_process: p_Vid->qp_rem_matrix\00", align 1
@dequant_coef = internal unnamed_addr constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16]], [4 x [4 x i32]] [[4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18]], [4 x [4 x i32]] [[4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20]], [4 x [4 x i32]] [[4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23]], [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], [4 x [4 x i32]] [[4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29]]], align 16
@dequant_coef8 = internal constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18]], [8 x [8 x i32]] [[8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19]], [8 x [8 x i32]] [[8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23]], [8 x [8 x i32]] [[8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25]], [8 x [8 x i32]] [[8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28]], [8 x [8 x i32]] [[8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32]]], align 16
@switch.table.assign_quant_params.2 = private unnamed_addr constant [5 x ptr] [ptr @quant8_intra_default, ptr @quant8_inter_default, ptr @quant8_intra_default, ptr @quant8_inter_default, ptr @quant8_intra_default], align 8

; Function Attrs: nounwind uwtable
define dso_local void @init_qp_process(ptr nocapture noundef %p_Vid) local_unnamed_addr #0 {
entry:
  %bitdepth_luma_qp_scale = getelementptr inbounds i8, ptr %p_Vid, i64 849052
  %0 = load i32, ptr %bitdepth_luma_qp_scale, align 4
  %bitdepth_chroma_qp_scale = getelementptr inbounds i8, ptr %p_Vid, i64 849056
  %1 = load i32, ptr %bitdepth_chroma_qp_scale, align 8
  %cond.i = tail call noundef i32 @llvm.smax.i32(i32 %0, i32 %1)
  %qp_per_matrix = getelementptr inbounds i8, ptr %p_Vid, i64 856032
  %2 = load ptr, ptr %qp_per_matrix, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %add = add nsw i32 %cond.i, 52
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = tail call noalias ptr @malloc(i64 noundef %mul) #9
  store ptr %call1, ptr %qp_per_matrix, align 8
  %cmp3 = icmp eq ptr %call1, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then5, %entry
  %qp_rem_matrix = getelementptr inbounds i8, ptr %p_Vid, i64 856040
  %3 = load ptr, ptr %qp_rem_matrix, align 8
  %cmp7 = icmp eq ptr %3, null
  br i1 %cmp7, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.end6
  %add10 = add nsw i32 %cond.i, 52
  %conv11 = sext i32 %add10 to i64
  %mul12 = shl nsw i64 %conv11, 2
  %call13 = tail call noalias ptr @malloc(i64 noundef %mul12) #9
  store ptr %call13, ptr %qp_rem_matrix, align 8
  %cmp15 = icmp eq ptr %call13, null
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then9
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then9, %if.then17, %if.end6
  %cmp2242 = icmp sgt i32 %cond.i, -52
  br i1 %cmp2242, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end19
  %4 = add i32 %cond.i, 51
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %5 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %5 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  %div = udiv i32 %6, 6
  %7 = load ptr, ptr %qp_per_matrix, align 8
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %indvars.iv
  store i32 %div, ptr %arrayidx, align 4
  %rem = urem i32 %6, 6
  %8 = load ptr, ptr %qp_rem_matrix, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv
  store i32 %rem, ptr %arrayidx27, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end19
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_qp_matrices(ptr nocapture noundef %p_Vid) local_unnamed_addr #3 {
entry:
  %qp_per_matrix = getelementptr inbounds i8, ptr %p_Vid, i64 856032
  %0 = load ptr, ptr %qp_per_matrix, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #10
  store ptr null, ptr %qp_per_matrix, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %qp_rem_matrix = getelementptr inbounds i8, ptr %p_Vid, i64 856040
  %1 = load ptr, ptr %qp_rem_matrix, align 8
  %cmp3.not = icmp eq ptr %1, null
  br i1 %cmp3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %1) #10
  store ptr null, ptr %qp_rem_matrix, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @assign_quant_params(ptr noundef %currSlice) local_unnamed_addr #5 {
entry:
  %active_sps = getelementptr inbounds i8, ptr %currSlice, i64 24
  %0 = load ptr, ptr %active_sps, align 8
  %active_pps = getelementptr inbounds i8, ptr %currSlice, i64 16
  %1 = load ptr, ptr %active_pps, align 8
  %pic_scaling_matrix_present_flag = getelementptr inbounds i8, ptr %1, i64 20
  %2 = load i32, ptr %pic_scaling_matrix_present_flag, align 4
  %tobool.not = icmp eq i32 %2, 0
  %seq_scaling_matrix_present_flag = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i32, ptr %seq_scaling_matrix_present_flag, align 4
  br i1 %tobool.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.else.thread

if.else.thread:                                   ; preds = %land.lhs.true
  %chroma_format_idc583 = getelementptr inbounds i8, ptr %0, i64 36
  %4 = load i32, ptr %chroma_format_idc583, align 4
  %cmp3.not584 = icmp eq i32 %4, 3
  %cond4585 = select i1 %cmp3.not584, i32 12, i32 8
  %seq_scaling_matrix_present_flag5586 = getelementptr inbounds i8, ptr %0, i64 40
  br label %if.then12.peel

for.cond.preheader:                               ; preds = %land.lhs.true
  %qmatrix = getelementptr inbounds i8, ptr %currSlice, i64 12912
  store ptr @quant_org, ptr %qmatrix, align 8
  %arrayidx.1 = getelementptr inbounds i8, ptr %currSlice, i64 12920
  store ptr @quant_org, ptr %arrayidx.1, align 8
  %arrayidx.2 = getelementptr inbounds i8, ptr %currSlice, i64 12928
  store ptr @quant_org, ptr %arrayidx.2, align 8
  %arrayidx.3 = getelementptr inbounds i8, ptr %currSlice, i64 12936
  store ptr @quant_org, ptr %arrayidx.3, align 8
  %arrayidx.4 = getelementptr inbounds i8, ptr %currSlice, i64 12944
  store ptr @quant_org, ptr %arrayidx.4, align 8
  %arrayidx.5 = getelementptr inbounds i8, ptr %currSlice, i64 12952
  store ptr @quant_org, ptr %arrayidx.5, align 8
  %arrayidx.6 = getelementptr inbounds i8, ptr %currSlice, i64 12960
  store ptr @quant8_org, ptr %arrayidx.6, align 8
  %arrayidx.7 = getelementptr inbounds i8, ptr %currSlice, i64 12968
  store ptr @quant8_org, ptr %arrayidx.7, align 8
  %arrayidx.8 = getelementptr inbounds i8, ptr %currSlice, i64 12976
  store ptr @quant8_org, ptr %arrayidx.8, align 8
  %arrayidx.9 = getelementptr inbounds i8, ptr %currSlice, i64 12984
  store ptr @quant8_org, ptr %arrayidx.9, align 8
  %arrayidx.10 = getelementptr inbounds i8, ptr %currSlice, i64 12992
  store ptr @quant8_org, ptr %arrayidx.10, align 8
  %arrayidx.11 = getelementptr inbounds i8, ptr %currSlice, i64 13000
  store ptr @quant8_org, ptr %arrayidx.11, align 8
  br label %if.end239

if.else:                                          ; preds = %entry
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 36
  %5 = load i32, ptr %chroma_format_idc, align 4
  %cmp3.not = icmp eq i32 %5, 3
  %cond4 = select i1 %cmp3.not, i32 12, i32 8
  %seq_scaling_matrix_present_flag5 = getelementptr inbounds i8, ptr %0, i64 40
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %if.then116.peel, label %if.then12.peel

if.then12.peel:                                   ; preds = %if.else, %if.else.thread
  %seq_scaling_matrix_present_flag5590 = phi ptr [ %seq_scaling_matrix_present_flag5586, %if.else.thread ], [ %seq_scaling_matrix_present_flag5, %if.else ]
  %cond4588 = phi i32 [ %cond4585, %if.else.thread ], [ %cond4, %if.else ]
  %seq_scaling_list_present_flag55 = getelementptr inbounds i8, ptr %0, i64 44
  %UseDefaultScalingMatrix8x8Flag = getelementptr inbounds i8, ptr %0, i64 2036
  %qmatrix91 = getelementptr inbounds i8, ptr %currSlice, i64 12912
  %ScalingList8x8 = getelementptr inbounds i8, ptr %0, i64 476
  %wide.trip.count = zext nneg i32 %cond4588 to i64
  %6 = load i32, ptr %seq_scaling_list_present_flag55, align 4
  %tobool15.not.peel = icmp eq i32 %6, 0
  br i1 %tobool15.not.peel, label %if.then12.peel387, label %if.else36.peel

if.else36.peel:                                   ; preds = %if.then12.peel
  %ScalingList4x4 = getelementptr inbounds i8, ptr %0, i64 92
  %UseDefaultScalingMatrix4x4Flag = getelementptr inbounds i8, ptr %0, i64 2012
  %7 = load i32, ptr %UseDefaultScalingMatrix4x4Flag, align 4
  %tobool39.not.peel = icmp eq i32 %7, 0
  %ScalingList4x4.quant_intra_default = select i1 %tobool39.not.peel, ptr %ScalingList4x4, ptr @quant_intra_default
  br label %if.then12.peel387

if.then12.peel387:                                ; preds = %if.then12.peel, %if.else36.peel
  %quant_intra_default.sink = phi ptr [ %ScalingList4x4.quant_intra_default, %if.else36.peel ], [ @quant_intra_default, %if.then12.peel ]
  store ptr %quant_intra_default.sink, ptr %qmatrix91, align 8
  %arrayidx14.peel388 = getelementptr inbounds i8, ptr %0, i64 48
  %8 = load i32, ptr %arrayidx14.peel388, align 4
  %tobool15.not.peel389 = icmp eq i32 %8, 0
  br i1 %tobool15.not.peel389, label %if.then12.peel434, label %if.else36.peel390

if.else36.peel390:                                ; preds = %if.then12.peel387
  %arrayidx38.peel391 = getelementptr inbounds i8, ptr %0, i64 2016
  %9 = load i32, ptr %arrayidx38.peel391, align 4
  %tobool39.not.peel392 = icmp eq i32 %9, 0
  %arrayidx48.peel398 = getelementptr inbounds i8, ptr %0, i64 156
  %spec.select = select i1 %tobool39.not.peel392, ptr %arrayidx48.peel398, ptr @quant_intra_default
  br label %if.then12.peel434

if.then12.peel434:                                ; preds = %if.else36.peel390, %if.then12.peel387
  %.sink = phi ptr [ %quant_intra_default.sink, %if.then12.peel387 ], [ %spec.select, %if.else36.peel390 ]
  %arrayidx34.peel407 = getelementptr inbounds i8, ptr %currSlice, i64 12920
  store ptr %.sink, ptr %arrayidx34.peel407, align 8
  %arrayidx14.peel435 = getelementptr inbounds i8, ptr %0, i64 52
  %10 = load i32, ptr %arrayidx14.peel435, align 4
  %tobool15.not.peel436 = icmp eq i32 %10, 0
  br i1 %tobool15.not.peel436, label %for.body10.peel.next411, label %if.else36.peel437

if.else36.peel437:                                ; preds = %if.then12.peel434
  %arrayidx38.peel438 = getelementptr inbounds i8, ptr %0, i64 2020
  %11 = load i32, ptr %arrayidx38.peel438, align 4
  %tobool39.not.peel439 = icmp eq i32 %11, 0
  %arrayidx48.peel445 = getelementptr inbounds i8, ptr %0, i64 220
  %spec.select602 = select i1 %tobool39.not.peel439, ptr %arrayidx48.peel445, ptr @quant_intra_default
  br label %for.body10.peel.next411

for.body10.peel.next411:                          ; preds = %if.else36.peel437, %if.then12.peel434
  %quant_intra_default.sink597 = phi ptr [ %.sink, %if.then12.peel434 ], [ %spec.select602, %if.else36.peel437 ]
  %arrayidx45.peel443 = getelementptr inbounds i8, ptr %currSlice, i64 12928
  store ptr %quant_intra_default.sink597, ptr %arrayidx45.peel443, align 8
  %arrayidx14.peel = getelementptr inbounds i8, ptr %0, i64 56
  %12 = load i32, ptr %arrayidx14.peel, align 4
  %tobool15.not.peel611 = icmp eq i32 %12, 0
  br i1 %tobool15.not.peel611, label %for.inc105.peel, label %if.else36.peel613

if.else36.peel613:                                ; preds = %for.body10.peel.next411
  %arrayidx38.peel = getelementptr inbounds i8, ptr %0, i64 2024
  %13 = load i32, ptr %arrayidx38.peel, align 4
  %tobool39.not.peel614 = icmp eq i32 %13, 0
  %arrayidx48.peel = getelementptr inbounds i8, ptr %0, i64 284
  %spec.select603.peel = select i1 %tobool39.not.peel614, ptr %arrayidx48.peel, ptr @quant_inter_default
  br label %for.inc105.peel

for.inc105.peel:                                  ; preds = %for.body10.peel.next411, %if.else36.peel613
  %quant_inter_default.sink.peel = phi ptr [ %spec.select603.peel, %if.else36.peel613 ], [ @quant_inter_default, %for.body10.peel.next411 ]
  %arrayidx45.peel = getelementptr inbounds i8, ptr %currSlice, i64 12936
  store ptr %quant_inter_default.sink.peel, ptr %arrayidx45.peel, align 8
  %arrayidx14.peel618 = getelementptr inbounds i8, ptr %0, i64 60
  %14 = load i32, ptr %arrayidx14.peel618, align 4
  %tobool15.not.peel619 = icmp eq i32 %14, 0
  br i1 %tobool15.not.peel619, label %if.else28.peel643, label %if.else36.peel636

if.else36.peel636:                                ; preds = %for.inc105.peel
  %arrayidx38.peel637 = getelementptr inbounds i8, ptr %0, i64 2028
  %15 = load i32, ptr %arrayidx38.peel637, align 4
  %tobool39.not.peel638 = icmp eq i32 %15, 0
  %arrayidx48.peel639 = getelementptr inbounds i8, ptr %0, i64 348
  %spec.select603.peel640 = select i1 %tobool39.not.peel638, ptr %arrayidx48.peel639, ptr @quant_inter_default
  br label %for.inc105.peel645

if.else28.peel643:                                ; preds = %for.inc105.peel
  %arrayidx31.peel644 = getelementptr inbounds i8, ptr %currSlice, i64 12936
  %16 = load ptr, ptr %arrayidx31.peel644, align 8
  br label %for.inc105.peel645

for.inc105.peel645:                               ; preds = %if.else28.peel643, %if.else36.peel636
  %quant_inter_default.sink.peel646 = phi ptr [ %16, %if.else28.peel643 ], [ %spec.select603.peel640, %if.else36.peel636 ]
  %arrayidx45.peel647 = getelementptr inbounds i8, ptr %currSlice, i64 12944
  store ptr %quant_inter_default.sink.peel646, ptr %arrayidx45.peel647, align 8
  %arrayidx14.peel653 = getelementptr inbounds i8, ptr %0, i64 64
  %17 = load i32, ptr %arrayidx14.peel653, align 4
  %tobool15.not.peel654 = icmp eq i32 %17, 0
  br i1 %tobool15.not.peel654, label %if.else28.peel678, label %if.else36.peel671

if.else36.peel671:                                ; preds = %for.inc105.peel645
  %arrayidx38.peel672 = getelementptr inbounds i8, ptr %0, i64 2032
  %18 = load i32, ptr %arrayidx38.peel672, align 4
  %tobool39.not.peel673 = icmp eq i32 %18, 0
  %arrayidx48.peel674 = getelementptr inbounds i8, ptr %0, i64 412
  %spec.select603.peel675 = select i1 %tobool39.not.peel673, ptr %arrayidx48.peel674, ptr @quant_inter_default
  br label %for.inc105.peel680

if.else28.peel678:                                ; preds = %for.inc105.peel645
  %arrayidx31.peel679 = getelementptr inbounds i8, ptr %currSlice, i64 12944
  %19 = load ptr, ptr %arrayidx31.peel679, align 8
  br label %for.inc105.peel680

for.inc105.peel680:                               ; preds = %if.else28.peel678, %if.else36.peel671
  %quant_inter_default.sink.peel681 = phi ptr [ %19, %if.else28.peel678 ], [ %spec.select603.peel675, %if.else36.peel671 ]
  %arrayidx45.peel682 = getelementptr inbounds i8, ptr %currSlice, i64 12952
  store ptr %quant_inter_default.sink.peel681, ptr %arrayidx45.peel682, align 8
  br label %for.body10

for.body10:                                       ; preds = %for.inc105.peel680, %for.inc105
  %indvars.iv = phi i64 [ 6, %for.inc105.peel680 ], [ %indvars.iv.next, %for.inc105 ]
  %arrayidx14 = getelementptr inbounds [12 x i32], ptr %seq_scaling_list_present_flag55, i64 0, i64 %indvars.iv
  %20 = load i32, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq i32 %20, 0
  br i1 %tobool15.not, label %if.then59, label %if.else81

if.then59:                                        ; preds = %for.body10
  %21 = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %21, label %if.else71 [
    i32 6, label %for.inc105
    i32 7, label %if.then67
  ]

if.then67:                                        ; preds = %if.then59
  br label %for.inc105

if.else71:                                        ; preds = %if.then59
  %22 = add nsw i64 %indvars.iv, -2
  %arrayidx75 = getelementptr inbounds [12 x ptr], ptr %qmatrix91, i64 0, i64 %22
  %23 = load ptr, ptr %arrayidx75, align 8
  br label %for.inc105

if.else81:                                        ; preds = %for.body10
  %24 = add nsw i64 %indvars.iv, -6
  %arrayidx84 = getelementptr inbounds [6 x i32], ptr %UseDefaultScalingMatrix8x8Flag, i64 0, i64 %24
  %25 = load i32, ptr %arrayidx84, align 4
  %tobool85.not = icmp eq i32 %25, 0
  br i1 %tobool85.not, label %if.else94, label %if.then86

if.then86:                                        ; preds = %if.else81
  %26 = trunc nuw nsw i64 %indvars.iv to i32
  %switch.tableidx = add nsw i32 %26, -6
  %27 = icmp ult i32 %switch.tableidx, 5
  br i1 %27, label %switch.lookup, label %for.inc105

if.else94:                                        ; preds = %if.else81
  %arrayidx97 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %24
  br label %for.inc105

switch.lookup:                                    ; preds = %if.then86
  %28 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.assign_quant_params.2, i64 0, i64 %28
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %for.inc105

for.inc105:                                       ; preds = %switch.lookup, %if.then86, %if.then59, %if.else94, %if.else71, %if.then67
  %quant_inter_default.sink = phi ptr [ %arrayidx97, %if.else94 ], [ %23, %if.else71 ], [ @quant8_inter_default, %if.then67 ], [ @quant8_intra_default, %if.then59 ], [ @quant8_inter_default, %if.then86 ], [ %switch.load, %switch.lookup ]
  %arrayidx45 = getelementptr inbounds [12 x ptr], ptr %qmatrix91, i64 0, i64 %indvars.iv
  store ptr %quant_inter_default.sink, ptr %arrayidx45, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end108, label %for.body10, !llvm.loop !5

if.end108:                                        ; preds = %for.inc105
  %.pre582 = load i32, ptr %pic_scaling_matrix_present_flag, align 4
  %tobool110.not = icmp eq i32 %.pre582, 0
  br i1 %tobool110.not, label %if.end239, label %if.then116.peel

if.then116.peel:                                  ; preds = %if.else, %if.end108
  %cond4589596 = phi i32 [ %cond4588, %if.end108 ], [ %cond4, %if.else ]
  %seq_scaling_matrix_present_flag5591595 = phi ptr [ %seq_scaling_matrix_present_flag5590, %if.end108 ], [ %seq_scaling_matrix_present_flag5, %if.else ]
  %pic_scaling_list_present_flag172 = getelementptr inbounds i8, ptr %1, i64 24
  %UseDefaultScalingMatrix8x8Flag207 = getelementptr inbounds i8, ptr %1, i64 2016
  %qmatrix220 = getelementptr inbounds i8, ptr %currSlice, i64 12912
  %ScalingList8x8224 = getelementptr inbounds i8, ptr %1, i64 456
  %wide.trip.count465 = zext nneg i32 %cond4589596 to i64
  %29 = load i32, ptr %pic_scaling_list_present_flag172, align 4
  %tobool119.not.peel = icmp eq i32 %29, 0
  br i1 %tobool119.not.peel, label %if.then122.peel, label %if.else150.peel

if.else150.peel:                                  ; preds = %if.then116.peel
  %ScalingList4x4162 = getelementptr inbounds i8, ptr %1, i64 72
  %UseDefaultScalingMatrix4x4Flag151 = getelementptr inbounds i8, ptr %1, i64 1992
  %30 = load i32, ptr %UseDefaultScalingMatrix4x4Flag151, align 4
  %tobool154.not.peel = icmp eq i32 %30, 0
  %ScalingList4x4162.quant_intra_default = select i1 %tobool154.not.peel, ptr %ScalingList4x4162, ptr @quant_intra_default
  br label %if.then116.peel494.sink.split

if.then122.peel:                                  ; preds = %if.then116.peel
  %31 = load i32, ptr %seq_scaling_matrix_present_flag5591595, align 4
  %tobool124.not.peel = icmp eq i32 %31, 0
  br i1 %tobool124.not.peel, label %if.then116.peel494.sink.split, label %if.then116.peel494

if.then116.peel494.sink.split:                    ; preds = %if.then122.peel, %if.else150.peel
  %quant_intra_default.sink598 = phi ptr [ %ScalingList4x4162.quant_intra_default, %if.else150.peel ], [ @quant_intra_default, %if.then122.peel ]
  store ptr %quant_intra_default.sink598, ptr %qmatrix220, align 8
  br label %if.then116.peel494

if.then116.peel494:                               ; preds = %if.then116.peel494.sink.split, %if.then122.peel
  %arrayidx118.peel495 = getelementptr inbounds i8, ptr %1, i64 28
  %32 = load i32, ptr %arrayidx118.peel495, align 4
  %tobool119.not.peel496 = icmp eq i32 %32, 0
  br i1 %tobool119.not.peel496, label %if.else140.peel516, label %if.else150.peel497

if.else150.peel497:                               ; preds = %if.then116.peel494
  %arrayidx153.peel498 = getelementptr inbounds i8, ptr %1, i64 1996
  %33 = load i32, ptr %arrayidx153.peel498, align 4
  %tobool154.not.peel499 = icmp eq i32 %33, 0
  %arrayidx164.peel505 = getelementptr inbounds i8, ptr %1, i64 136
  %spec.select604 = select i1 %tobool154.not.peel499, ptr %arrayidx164.peel505, ptr @quant_intra_default
  br label %if.then116.peel549

if.else140.peel516:                               ; preds = %if.then116.peel494
  %34 = load ptr, ptr %qmatrix220, align 8
  br label %if.then116.peel549

if.then116.peel549:                               ; preds = %if.else150.peel497, %if.else140.peel516
  %.sink599 = phi ptr [ %34, %if.else140.peel516 ], [ %spec.select604, %if.else150.peel497 ]
  %arrayidx147.peel518 = getelementptr inbounds i8, ptr %currSlice, i64 12920
  store ptr %.sink599, ptr %arrayidx147.peel518, align 8
  %arrayidx118.peel550 = getelementptr inbounds i8, ptr %1, i64 32
  %35 = load i32, ptr %arrayidx118.peel550, align 4
  %tobool119.not.peel551 = icmp eq i32 %35, 0
  br i1 %tobool119.not.peel551, label %if.else140.peel571, label %if.else150.peel552

if.else150.peel552:                               ; preds = %if.then116.peel549
  %arrayidx153.peel553 = getelementptr inbounds i8, ptr %1, i64 2000
  %36 = load i32, ptr %arrayidx153.peel553, align 4
  %tobool154.not.peel554 = icmp eq i32 %36, 0
  %arrayidx164.peel560 = getelementptr inbounds i8, ptr %1, i64 200
  %spec.select605 = select i1 %tobool154.not.peel554, ptr %arrayidx164.peel560, ptr @quant_intra_default
  br label %for.body114.peel.next522

if.else140.peel571:                               ; preds = %if.then116.peel549
  %arrayidx144.peel572 = getelementptr inbounds i8, ptr %currSlice, i64 12920
  %37 = load ptr, ptr %arrayidx144.peel572, align 8
  br label %for.body114.peel.next522

for.body114.peel.next522:                         ; preds = %if.else150.peel552, %if.else140.peel571
  %quant_intra_default.sink600 = phi ptr [ %37, %if.else140.peel571 ], [ %spec.select605, %if.else150.peel552 ]
  %arrayidx160.peel558 = getelementptr inbounds i8, ptr %currSlice, i64 12928
  store ptr %quant_intra_default.sink600, ptr %arrayidx160.peel558, align 8
  %arrayidx118.peel = getelementptr inbounds i8, ptr %1, i64 36
  %38 = load i32, ptr %arrayidx118.peel, align 4
  %tobool119.not.peel686 = icmp eq i32 %38, 0
  br i1 %tobool119.not.peel686, label %if.then132.peel, label %if.else150.peel688

if.else150.peel688:                               ; preds = %for.body114.peel.next522
  %arrayidx153.peel = getelementptr inbounds i8, ptr %1, i64 2004
  %39 = load i32, ptr %arrayidx153.peel, align 4
  %tobool154.not.peel689 = icmp eq i32 %39, 0
  %arrayidx164.peel = getelementptr inbounds i8, ptr %1, i64 264
  %spec.select606.peel = select i1 %tobool154.not.peel689, ptr %arrayidx164.peel, ptr @quant_inter_default
  br label %for.inc235.sink.split.peel

if.then132.peel:                                  ; preds = %for.body114.peel.next522
  %40 = load i32, ptr %seq_scaling_matrix_present_flag5591595, align 4
  %tobool134.not.peel = icmp eq i32 %40, 0
  br i1 %tobool134.not.peel, label %for.inc235.sink.split.peel, label %if.then116.peel715

for.inc235.sink.split.peel:                       ; preds = %if.then132.peel, %if.else150.peel688
  %quant_inter_default.sink601.peel = phi ptr [ @quant_inter_default, %if.then132.peel ], [ %spec.select606.peel, %if.else150.peel688 ]
  %arrayidx160.peel = getelementptr inbounds i8, ptr %currSlice, i64 12936
  store ptr %quant_inter_default.sink601.peel, ptr %arrayidx160.peel, align 8
  br label %if.then116.peel715

if.then116.peel715:                               ; preds = %if.then132.peel, %for.inc235.sink.split.peel
  %arrayidx118.peel695 = getelementptr inbounds i8, ptr %1, i64 40
  %41 = load i32, ptr %arrayidx118.peel695, align 4
  %tobool119.not.peel696 = icmp eq i32 %41, 0
  br i1 %tobool119.not.peel696, label %if.else140.peel726, label %if.else150.peel716

if.else150.peel716:                               ; preds = %if.then116.peel715
  %arrayidx153.peel717 = getelementptr inbounds i8, ptr %1, i64 2008
  %42 = load i32, ptr %arrayidx153.peel717, align 4
  %tobool154.not.peel718 = icmp eq i32 %42, 0
  %arrayidx164.peel719 = getelementptr inbounds i8, ptr %1, i64 328
  %spec.select606.peel720 = select i1 %tobool154.not.peel718, ptr %arrayidx164.peel719, ptr @quant_inter_default
  br label %for.inc235.sink.split.peel728

if.else140.peel726:                               ; preds = %if.then116.peel715
  %arrayidx144.peel727 = getelementptr inbounds i8, ptr %currSlice, i64 12936
  %43 = load ptr, ptr %arrayidx144.peel727, align 8
  br label %for.inc235.sink.split.peel728

for.inc235.sink.split.peel728:                    ; preds = %if.else140.peel726, %if.else150.peel716
  %quant_inter_default.sink601.peel729 = phi ptr [ %43, %if.else140.peel726 ], [ %spec.select606.peel720, %if.else150.peel716 ]
  %arrayidx160.peel730 = getelementptr inbounds i8, ptr %currSlice, i64 12944
  store ptr %quant_inter_default.sink601.peel729, ptr %arrayidx160.peel730, align 8
  %arrayidx118.peel737 = getelementptr inbounds i8, ptr %1, i64 44
  %44 = load i32, ptr %arrayidx118.peel737, align 4
  %tobool119.not.peel738 = icmp eq i32 %44, 0
  br i1 %tobool119.not.peel738, label %if.else140.peel768, label %if.else150.peel758

if.else150.peel758:                               ; preds = %for.inc235.sink.split.peel728
  %arrayidx153.peel759 = getelementptr inbounds i8, ptr %1, i64 2012
  %45 = load i32, ptr %arrayidx153.peel759, align 4
  %tobool154.not.peel760 = icmp eq i32 %45, 0
  %arrayidx164.peel761 = getelementptr inbounds i8, ptr %1, i64 392
  %spec.select606.peel762 = select i1 %tobool154.not.peel760, ptr %arrayidx164.peel761, ptr @quant_inter_default
  br label %for.inc235.sink.split.peel770

if.else140.peel768:                               ; preds = %for.inc235.sink.split.peel728
  %arrayidx144.peel769 = getelementptr inbounds i8, ptr %currSlice, i64 12944
  %46 = load ptr, ptr %arrayidx144.peel769, align 8
  br label %for.inc235.sink.split.peel770

for.inc235.sink.split.peel770:                    ; preds = %if.else140.peel768, %if.else150.peel758
  %quant_inter_default.sink601.peel771 = phi ptr [ %46, %if.else140.peel768 ], [ %spec.select606.peel762, %if.else150.peel758 ]
  %arrayidx160.peel772 = getelementptr inbounds i8, ptr %currSlice, i64 12952
  store ptr %quant_inter_default.sink601.peel771, ptr %arrayidx160.peel772, align 8
  br label %for.body114

for.body114:                                      ; preds = %for.inc235.sink.split.peel770, %for.inc235
  %indvars.iv459 = phi i64 [ 6, %for.inc235.sink.split.peel770 ], [ %indvars.iv.next460, %for.inc235 ]
  %arrayidx118 = getelementptr inbounds [12 x i32], ptr %pic_scaling_list_present_flag172, i64 0, i64 %indvars.iv459
  %47 = load i32, ptr %arrayidx118, align 4
  %tobool119.not = icmp eq i32 %47, 0
  br i1 %tobool119.not, label %if.then176, label %if.else206

if.then176:                                       ; preds = %for.body114
  %48 = trunc nuw nsw i64 %indvars.iv459 to i32
  switch i32 %48, label %if.else196 [
    i32 6, label %if.then178
    i32 7, label %if.then188
  ]

if.then178:                                       ; preds = %if.then176
  %49 = load i32, ptr %seq_scaling_matrix_present_flag5591595, align 4
  %tobool180.not = icmp eq i32 %49, 0
  br i1 %tobool180.not, label %for.inc235.sink.split, label %for.inc235

if.then188:                                       ; preds = %if.then176
  %50 = load i32, ptr %seq_scaling_matrix_present_flag5591595, align 4
  %tobool190.not = icmp eq i32 %50, 0
  br i1 %tobool190.not, label %for.inc235.sink.split, label %for.inc235

if.else196:                                       ; preds = %if.then176
  %51 = add nsw i64 %indvars.iv459, -2
  %arrayidx200 = getelementptr inbounds [12 x ptr], ptr %qmatrix220, i64 0, i64 %51
  %52 = load ptr, ptr %arrayidx200, align 8
  br label %for.inc235.sink.split

if.else206:                                       ; preds = %for.body114
  %53 = add nsw i64 %indvars.iv459, -6
  %arrayidx210 = getelementptr inbounds [6 x i32], ptr %UseDefaultScalingMatrix8x8Flag207, i64 0, i64 %53
  %54 = load i32, ptr %arrayidx210, align 4
  %tobool211.not = icmp eq i32 %54, 0
  br i1 %tobool211.not, label %if.else223, label %if.then212

if.then212:                                       ; preds = %if.else206
  %55 = trunc nuw nsw i64 %indvars.iv459 to i32
  %switch.tableidx608 = add nsw i32 %55, -6
  %56 = icmp ult i32 %switch.tableidx608, 5
  br i1 %56, label %switch.lookup607, label %for.inc235.sink.split

if.else223:                                       ; preds = %if.else206
  %arrayidx227 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8224, i64 0, i64 %53
  br label %for.inc235.sink.split

switch.lookup607:                                 ; preds = %if.then212
  %57 = zext nneg i32 %switch.tableidx608 to i64
  %switch.gep609 = getelementptr inbounds [5 x ptr], ptr @switch.table.assign_quant_params.2, i64 0, i64 %57
  %switch.load610 = load ptr, ptr %switch.gep609, align 8
  br label %for.inc235.sink.split

for.inc235.sink.split:                            ; preds = %switch.lookup607, %if.then212, %if.then188, %if.then178, %if.else196, %if.else223
  %quant_inter_default.sink601 = phi ptr [ %arrayidx227, %if.else223 ], [ %52, %if.else196 ], [ @quant8_intra_default, %if.then178 ], [ @quant8_inter_default, %if.then188 ], [ @quant8_inter_default, %if.then212 ], [ %switch.load610, %switch.lookup607 ]
  %arrayidx160 = getelementptr inbounds [12 x ptr], ptr %qmatrix220, i64 0, i64 %indvars.iv459
  store ptr %quant_inter_default.sink601, ptr %arrayidx160, align 8
  br label %for.inc235

for.inc235:                                       ; preds = %for.inc235.sink.split, %if.then178, %if.then188
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1
  %exitcond466.not = icmp eq i64 %indvars.iv.next460, %wide.trip.count465
  br i1 %exitcond466.not, label %if.end239, label %for.body114, !llvm.loop !7

if.end239:                                        ; preds = %for.inc235, %for.cond.preheader, %if.end108
  tail call void @CalculateQuant4x4Param(ptr noundef %currSlice)
  %transform_8x8_mode_flag = getelementptr inbounds i8, ptr %1, i64 16
  %58 = load i32, ptr %transform_8x8_mode_flag, align 8
  %tobool240.not = icmp eq i32 %58, 0
  br i1 %tobool240.not, label %if.end242, label %if.then241

if.then241:                                       ; preds = %if.end239
  tail call void @CalculateQuant8x8Param(ptr noundef %currSlice)
  br label %if.end242

if.end242:                                        ; preds = %if.then241, %if.end239
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CalculateQuant4x4Param(ptr noundef %currSlice) local_unnamed_addr #5 {
entry:
  %InvLevelScale4x4_Intra = getelementptr inbounds i8, ptr %currSlice, i64 1392
  %arrayidx2 = getelementptr inbounds i8, ptr %currSlice, i64 1776
  %arrayidx5 = getelementptr inbounds i8, ptr %currSlice, i64 2160
  %InvLevelScale4x4_Inter = getelementptr inbounds i8, ptr %currSlice, i64 2544
  %arrayidx10 = getelementptr inbounds i8, ptr %currSlice, i64 2928
  %arrayidx13 = getelementptr inbounds i8, ptr %currSlice, i64 3312
  %qmatrix = getelementptr inbounds i8, ptr %currSlice, i64 12912
  %arrayidx22 = getelementptr inbounds i8, ptr %currSlice, i64 12920
  %arrayidx27 = getelementptr inbounds i8, ptr %currSlice, i64 12928
  %arrayidx32 = getelementptr inbounds i8, ptr %currSlice, i64 12936
  %arrayidx37 = getelementptr inbounds i8, ptr %currSlice, i64 12944
  %arrayidx43 = getelementptr inbounds i8, ptr %currSlice, i64 12952
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %InvLevelScale4x4_Inter_2.0373 = phi ptr [ %arrayidx13, %entry ], [ %incdec.ptr38, %for.body ]
  %InvLevelScale4x4_Inter_1.0372 = phi ptr [ %arrayidx10, %entry ], [ %incdec.ptr33, %for.body ]
  %InvLevelScale4x4_Inter_0.0371 = phi ptr [ %InvLevelScale4x4_Inter, %entry ], [ %incdec.ptr28, %for.body ]
  %InvLevelScale4x4_Intra_2.0370 = phi ptr [ %arrayidx5, %entry ], [ %incdec.ptr23, %for.body ]
  %InvLevelScale4x4_Intra_1.0369 = phi ptr [ %arrayidx2, %entry ], [ %incdec.ptr18, %for.body ]
  %InvLevelScale4x4_Intra_0.0368 = phi ptr [ %InvLevelScale4x4_Intra, %entry ], [ %incdec.ptr, %for.body ]
  %p_dequant_coef.0367 = phi ptr [ @dequant_coef, %entry ], [ %incdec.ptr40, %for.body ]
  %k.0366 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %incdec.ptr = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 64
  %0 = load ptr, ptr %qmatrix, align 8
  %1 = load i32, ptr %p_dequant_coef.0367, align 4
  %incdec.ptr.i = getelementptr inbounds i8, ptr %0, i64 4
  %2 = load i32, ptr %0, align 4
  %mul.i = mul nsw i32 %2, %1
  store i32 %mul.i, ptr %InvLevelScale4x4_Intra_0.0368, align 4
  %add.ptr.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 4
  %3 = load i32, ptr %add.ptr.i, align 4
  %incdec.ptr3.i = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load i32, ptr %incdec.ptr.i, align 4
  %mul4.i = mul nsw i32 %4, %3
  %add.ptr6.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 4
  store i32 %mul4.i, ptr %add.ptr6.i, align 4
  %add.ptr8.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 8
  %5 = load i32, ptr %add.ptr8.i, align 4
  %incdec.ptr9.i = getelementptr inbounds i8, ptr %0, i64 12
  %6 = load i32, ptr %incdec.ptr3.i, align 4
  %mul10.i = mul nsw i32 %6, %5
  %add.ptr12.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 8
  store i32 %mul10.i, ptr %add.ptr12.i, align 4
  %incdec.ptr13.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 16
  %add.ptr15.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 12
  %7 = load i32, ptr %add.ptr15.i, align 4
  %incdec.ptr16.i = getelementptr inbounds i8, ptr %0, i64 16
  %8 = load i32, ptr %incdec.ptr9.i, align 4
  %mul17.i = mul nsw i32 %8, %7
  %incdec.ptr18.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 16
  %add.ptr20.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 12
  store i32 %mul17.i, ptr %add.ptr20.i, align 4
  %9 = load i32, ptr %incdec.ptr13.i, align 4
  %incdec.ptr.1.i = getelementptr inbounds i8, ptr %0, i64 20
  %10 = load i32, ptr %incdec.ptr16.i, align 4
  %mul.1.i = mul nsw i32 %10, %9
  store i32 %mul.1.i, ptr %incdec.ptr18.i, align 4
  %add.ptr.1.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 20
  %11 = load i32, ptr %add.ptr.1.i, align 4
  %incdec.ptr3.1.i = getelementptr inbounds i8, ptr %0, i64 24
  %12 = load i32, ptr %incdec.ptr.1.i, align 4
  %mul4.1.i = mul nsw i32 %12, %11
  %add.ptr6.1.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 20
  store i32 %mul4.1.i, ptr %add.ptr6.1.i, align 4
  %add.ptr8.1.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 24
  %13 = load i32, ptr %add.ptr8.1.i, align 4
  %incdec.ptr9.1.i = getelementptr inbounds i8, ptr %0, i64 28
  %14 = load i32, ptr %incdec.ptr3.1.i, align 4
  %mul10.1.i = mul nsw i32 %14, %13
  %add.ptr12.1.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 24
  store i32 %mul10.1.i, ptr %add.ptr12.1.i, align 4
  %incdec.ptr13.1.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 32
  %add.ptr15.1.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 28
  %15 = load i32, ptr %add.ptr15.1.i, align 4
  %incdec.ptr16.1.i = getelementptr inbounds i8, ptr %0, i64 32
  %16 = load i32, ptr %incdec.ptr9.1.i, align 4
  %mul17.1.i = mul nsw i32 %16, %15
  %incdec.ptr18.1.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 32
  %add.ptr20.1.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 28
  store i32 %mul17.1.i, ptr %add.ptr20.1.i, align 4
  %17 = load i32, ptr %incdec.ptr13.1.i, align 4
  %incdec.ptr.2.i = getelementptr inbounds i8, ptr %0, i64 36
  %18 = load i32, ptr %incdec.ptr16.1.i, align 4
  %mul.2.i = mul nsw i32 %18, %17
  store i32 %mul.2.i, ptr %incdec.ptr18.1.i, align 4
  %add.ptr.2.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 36
  %19 = load i32, ptr %add.ptr.2.i, align 4
  %incdec.ptr3.2.i = getelementptr inbounds i8, ptr %0, i64 40
  %20 = load i32, ptr %incdec.ptr.2.i, align 4
  %mul4.2.i = mul nsw i32 %20, %19
  %add.ptr6.2.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 36
  store i32 %mul4.2.i, ptr %add.ptr6.2.i, align 4
  %add.ptr8.2.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 40
  %21 = load i32, ptr %add.ptr8.2.i, align 4
  %incdec.ptr9.2.i = getelementptr inbounds i8, ptr %0, i64 44
  %22 = load i32, ptr %incdec.ptr3.2.i, align 4
  %mul10.2.i = mul nsw i32 %22, %21
  %add.ptr12.2.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 40
  store i32 %mul10.2.i, ptr %add.ptr12.2.i, align 4
  %incdec.ptr13.2.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 48
  %add.ptr15.2.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 44
  %23 = load i32, ptr %add.ptr15.2.i, align 4
  %incdec.ptr16.2.i = getelementptr inbounds i8, ptr %0, i64 48
  %24 = load i32, ptr %incdec.ptr9.2.i, align 4
  %mul17.2.i = mul nsw i32 %24, %23
  %incdec.ptr18.2.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 48
  %add.ptr20.2.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 44
  store i32 %mul17.2.i, ptr %add.ptr20.2.i, align 4
  %25 = load i32, ptr %incdec.ptr13.2.i, align 4
  %incdec.ptr.3.i = getelementptr inbounds i8, ptr %0, i64 52
  %26 = load i32, ptr %incdec.ptr16.2.i, align 4
  %mul.3.i = mul nsw i32 %26, %25
  store i32 %mul.3.i, ptr %incdec.ptr18.2.i, align 4
  %add.ptr.3.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 52
  %27 = load i32, ptr %add.ptr.3.i, align 4
  %incdec.ptr3.3.i = getelementptr inbounds i8, ptr %0, i64 56
  %28 = load i32, ptr %incdec.ptr.3.i, align 4
  %mul4.3.i = mul nsw i32 %28, %27
  %add.ptr6.3.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 52
  store i32 %mul4.3.i, ptr %add.ptr6.3.i, align 4
  %add.ptr8.3.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 56
  %29 = load i32, ptr %add.ptr8.3.i, align 4
  %incdec.ptr9.3.i = getelementptr inbounds i8, ptr %0, i64 60
  %30 = load i32, ptr %incdec.ptr3.3.i, align 4
  %mul10.3.i = mul nsw i32 %30, %29
  %add.ptr12.3.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 56
  store i32 %mul10.3.i, ptr %add.ptr12.3.i, align 4
  %add.ptr15.3.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 60
  %31 = load i32, ptr %add.ptr15.3.i, align 4
  %32 = load i32, ptr %incdec.ptr9.3.i, align 4
  %mul17.3.i = mul nsw i32 %32, %31
  %add.ptr20.3.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 60
  store i32 %mul17.3.i, ptr %add.ptr20.3.i, align 4
  %incdec.ptr18 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 64
  %33 = load ptr, ptr %arrayidx22, align 8
  %incdec.ptr.i61 = getelementptr inbounds i8, ptr %33, i64 4
  %34 = load i32, ptr %33, align 4
  %mul.i62 = mul nsw i32 %34, %1
  store i32 %mul.i62, ptr %InvLevelScale4x4_Intra_1.0369, align 4
  %incdec.ptr3.i64 = getelementptr inbounds i8, ptr %33, i64 8
  %35 = load i32, ptr %incdec.ptr.i61, align 4
  %mul4.i65 = mul nsw i32 %35, %3
  %add.ptr6.i66 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 4
  store i32 %mul4.i65, ptr %add.ptr6.i66, align 4
  %incdec.ptr9.i68 = getelementptr inbounds i8, ptr %33, i64 12
  %36 = load i32, ptr %incdec.ptr3.i64, align 4
  %mul10.i69 = mul nsw i32 %36, %5
  %add.ptr12.i70 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 8
  store i32 %mul10.i69, ptr %add.ptr12.i70, align 4
  %incdec.ptr16.i73 = getelementptr inbounds i8, ptr %33, i64 16
  %37 = load i32, ptr %incdec.ptr9.i68, align 4
  %mul17.i74 = mul nsw i32 %37, %7
  %incdec.ptr18.i75 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 16
  %add.ptr20.i76 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 12
  store i32 %mul17.i74, ptr %add.ptr20.i76, align 4
  %incdec.ptr.1.i77 = getelementptr inbounds i8, ptr %33, i64 20
  %38 = load i32, ptr %incdec.ptr16.i73, align 4
  %mul.1.i78 = mul nsw i32 %38, %9
  store i32 %mul.1.i78, ptr %incdec.ptr18.i75, align 4
  %incdec.ptr3.1.i80 = getelementptr inbounds i8, ptr %33, i64 24
  %39 = load i32, ptr %incdec.ptr.1.i77, align 4
  %mul4.1.i81 = mul nsw i32 %39, %11
  %add.ptr6.1.i82 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 20
  store i32 %mul4.1.i81, ptr %add.ptr6.1.i82, align 4
  %incdec.ptr9.1.i84 = getelementptr inbounds i8, ptr %33, i64 28
  %40 = load i32, ptr %incdec.ptr3.1.i80, align 4
  %mul10.1.i85 = mul nsw i32 %40, %13
  %add.ptr12.1.i86 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 24
  store i32 %mul10.1.i85, ptr %add.ptr12.1.i86, align 4
  %incdec.ptr16.1.i89 = getelementptr inbounds i8, ptr %33, i64 32
  %41 = load i32, ptr %incdec.ptr9.1.i84, align 4
  %mul17.1.i90 = mul nsw i32 %41, %15
  %incdec.ptr18.1.i91 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 32
  %add.ptr20.1.i92 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 28
  store i32 %mul17.1.i90, ptr %add.ptr20.1.i92, align 4
  %incdec.ptr.2.i93 = getelementptr inbounds i8, ptr %33, i64 36
  %42 = load i32, ptr %incdec.ptr16.1.i89, align 4
  %mul.2.i94 = mul nsw i32 %42, %17
  store i32 %mul.2.i94, ptr %incdec.ptr18.1.i91, align 4
  %incdec.ptr3.2.i96 = getelementptr inbounds i8, ptr %33, i64 40
  %43 = load i32, ptr %incdec.ptr.2.i93, align 4
  %mul4.2.i97 = mul nsw i32 %43, %19
  %add.ptr6.2.i98 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 36
  store i32 %mul4.2.i97, ptr %add.ptr6.2.i98, align 4
  %incdec.ptr9.2.i100 = getelementptr inbounds i8, ptr %33, i64 44
  %44 = load i32, ptr %incdec.ptr3.2.i96, align 4
  %mul10.2.i101 = mul nsw i32 %44, %21
  %add.ptr12.2.i102 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 40
  store i32 %mul10.2.i101, ptr %add.ptr12.2.i102, align 4
  %incdec.ptr16.2.i105 = getelementptr inbounds i8, ptr %33, i64 48
  %45 = load i32, ptr %incdec.ptr9.2.i100, align 4
  %mul17.2.i106 = mul nsw i32 %45, %23
  %incdec.ptr18.2.i107 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 48
  %add.ptr20.2.i108 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 44
  store i32 %mul17.2.i106, ptr %add.ptr20.2.i108, align 4
  %incdec.ptr.3.i109 = getelementptr inbounds i8, ptr %33, i64 52
  %46 = load i32, ptr %incdec.ptr16.2.i105, align 4
  %mul.3.i110 = mul nsw i32 %46, %25
  store i32 %mul.3.i110, ptr %incdec.ptr18.2.i107, align 4
  %incdec.ptr3.3.i112 = getelementptr inbounds i8, ptr %33, i64 56
  %47 = load i32, ptr %incdec.ptr.3.i109, align 4
  %mul4.3.i113 = mul nsw i32 %47, %27
  %add.ptr6.3.i114 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 52
  store i32 %mul4.3.i113, ptr %add.ptr6.3.i114, align 4
  %incdec.ptr9.3.i116 = getelementptr inbounds i8, ptr %33, i64 60
  %48 = load i32, ptr %incdec.ptr3.3.i112, align 4
  %mul10.3.i117 = mul nsw i32 %48, %29
  %add.ptr12.3.i118 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 56
  store i32 %mul10.3.i117, ptr %add.ptr12.3.i118, align 4
  %49 = load i32, ptr %incdec.ptr9.3.i116, align 4
  %mul17.3.i120 = mul nsw i32 %49, %31
  %add.ptr20.3.i121 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 60
  store i32 %mul17.3.i120, ptr %add.ptr20.3.i121, align 4
  %incdec.ptr23 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 64
  %50 = load ptr, ptr %arrayidx27, align 8
  %incdec.ptr.i122 = getelementptr inbounds i8, ptr %50, i64 4
  %51 = load i32, ptr %50, align 4
  %mul.i123 = mul nsw i32 %51, %1
  store i32 %mul.i123, ptr %InvLevelScale4x4_Intra_2.0370, align 4
  %incdec.ptr3.i125 = getelementptr inbounds i8, ptr %50, i64 8
  %52 = load i32, ptr %incdec.ptr.i122, align 4
  %mul4.i126 = mul nsw i32 %52, %3
  %add.ptr6.i127 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 4
  store i32 %mul4.i126, ptr %add.ptr6.i127, align 4
  %incdec.ptr9.i129 = getelementptr inbounds i8, ptr %50, i64 12
  %53 = load i32, ptr %incdec.ptr3.i125, align 4
  %mul10.i130 = mul nsw i32 %53, %5
  %add.ptr12.i131 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 8
  store i32 %mul10.i130, ptr %add.ptr12.i131, align 4
  %incdec.ptr16.i134 = getelementptr inbounds i8, ptr %50, i64 16
  %54 = load i32, ptr %incdec.ptr9.i129, align 4
  %mul17.i135 = mul nsw i32 %54, %7
  %incdec.ptr18.i136 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 16
  %add.ptr20.i137 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 12
  store i32 %mul17.i135, ptr %add.ptr20.i137, align 4
  %incdec.ptr.1.i138 = getelementptr inbounds i8, ptr %50, i64 20
  %55 = load i32, ptr %incdec.ptr16.i134, align 4
  %mul.1.i139 = mul nsw i32 %55, %9
  store i32 %mul.1.i139, ptr %incdec.ptr18.i136, align 4
  %incdec.ptr3.1.i141 = getelementptr inbounds i8, ptr %50, i64 24
  %56 = load i32, ptr %incdec.ptr.1.i138, align 4
  %mul4.1.i142 = mul nsw i32 %56, %11
  %add.ptr6.1.i143 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 20
  store i32 %mul4.1.i142, ptr %add.ptr6.1.i143, align 4
  %incdec.ptr9.1.i145 = getelementptr inbounds i8, ptr %50, i64 28
  %57 = load i32, ptr %incdec.ptr3.1.i141, align 4
  %mul10.1.i146 = mul nsw i32 %57, %13
  %add.ptr12.1.i147 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 24
  store i32 %mul10.1.i146, ptr %add.ptr12.1.i147, align 4
  %incdec.ptr16.1.i150 = getelementptr inbounds i8, ptr %50, i64 32
  %58 = load i32, ptr %incdec.ptr9.1.i145, align 4
  %mul17.1.i151 = mul nsw i32 %58, %15
  %incdec.ptr18.1.i152 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 32
  %add.ptr20.1.i153 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 28
  store i32 %mul17.1.i151, ptr %add.ptr20.1.i153, align 4
  %incdec.ptr.2.i154 = getelementptr inbounds i8, ptr %50, i64 36
  %59 = load i32, ptr %incdec.ptr16.1.i150, align 4
  %mul.2.i155 = mul nsw i32 %59, %17
  store i32 %mul.2.i155, ptr %incdec.ptr18.1.i152, align 4
  %incdec.ptr3.2.i157 = getelementptr inbounds i8, ptr %50, i64 40
  %60 = load i32, ptr %incdec.ptr.2.i154, align 4
  %mul4.2.i158 = mul nsw i32 %60, %19
  %add.ptr6.2.i159 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 36
  store i32 %mul4.2.i158, ptr %add.ptr6.2.i159, align 4
  %incdec.ptr9.2.i161 = getelementptr inbounds i8, ptr %50, i64 44
  %61 = load i32, ptr %incdec.ptr3.2.i157, align 4
  %mul10.2.i162 = mul nsw i32 %61, %21
  %add.ptr12.2.i163 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 40
  store i32 %mul10.2.i162, ptr %add.ptr12.2.i163, align 4
  %incdec.ptr16.2.i166 = getelementptr inbounds i8, ptr %50, i64 48
  %62 = load i32, ptr %incdec.ptr9.2.i161, align 4
  %mul17.2.i167 = mul nsw i32 %62, %23
  %incdec.ptr18.2.i168 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 48
  %add.ptr20.2.i169 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 44
  store i32 %mul17.2.i167, ptr %add.ptr20.2.i169, align 4
  %incdec.ptr.3.i170 = getelementptr inbounds i8, ptr %50, i64 52
  %63 = load i32, ptr %incdec.ptr16.2.i166, align 4
  %mul.3.i171 = mul nsw i32 %63, %25
  store i32 %mul.3.i171, ptr %incdec.ptr18.2.i168, align 4
  %incdec.ptr3.3.i173 = getelementptr inbounds i8, ptr %50, i64 56
  %64 = load i32, ptr %incdec.ptr.3.i170, align 4
  %mul4.3.i174 = mul nsw i32 %64, %27
  %add.ptr6.3.i175 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 52
  store i32 %mul4.3.i174, ptr %add.ptr6.3.i175, align 4
  %incdec.ptr9.3.i177 = getelementptr inbounds i8, ptr %50, i64 60
  %65 = load i32, ptr %incdec.ptr3.3.i173, align 4
  %mul10.3.i178 = mul nsw i32 %65, %29
  %add.ptr12.3.i179 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 56
  store i32 %mul10.3.i178, ptr %add.ptr12.3.i179, align 4
  %66 = load i32, ptr %incdec.ptr9.3.i177, align 4
  %mul17.3.i181 = mul nsw i32 %66, %31
  %add.ptr20.3.i182 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 60
  store i32 %mul17.3.i181, ptr %add.ptr20.3.i182, align 4
  %incdec.ptr28 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 64
  %67 = load ptr, ptr %arrayidx32, align 8
  %incdec.ptr.i183 = getelementptr inbounds i8, ptr %67, i64 4
  %68 = load i32, ptr %67, align 4
  %mul.i184 = mul nsw i32 %68, %1
  store i32 %mul.i184, ptr %InvLevelScale4x4_Inter_0.0371, align 4
  %incdec.ptr3.i186 = getelementptr inbounds i8, ptr %67, i64 8
  %69 = load i32, ptr %incdec.ptr.i183, align 4
  %mul4.i187 = mul nsw i32 %69, %3
  %add.ptr6.i188 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 4
  store i32 %mul4.i187, ptr %add.ptr6.i188, align 4
  %incdec.ptr9.i190 = getelementptr inbounds i8, ptr %67, i64 12
  %70 = load i32, ptr %incdec.ptr3.i186, align 4
  %mul10.i191 = mul nsw i32 %70, %5
  %add.ptr12.i192 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 8
  store i32 %mul10.i191, ptr %add.ptr12.i192, align 4
  %incdec.ptr16.i195 = getelementptr inbounds i8, ptr %67, i64 16
  %71 = load i32, ptr %incdec.ptr9.i190, align 4
  %mul17.i196 = mul nsw i32 %71, %7
  %incdec.ptr18.i197 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 16
  %add.ptr20.i198 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 12
  store i32 %mul17.i196, ptr %add.ptr20.i198, align 4
  %incdec.ptr.1.i199 = getelementptr inbounds i8, ptr %67, i64 20
  %72 = load i32, ptr %incdec.ptr16.i195, align 4
  %mul.1.i200 = mul nsw i32 %72, %9
  store i32 %mul.1.i200, ptr %incdec.ptr18.i197, align 4
  %incdec.ptr3.1.i202 = getelementptr inbounds i8, ptr %67, i64 24
  %73 = load i32, ptr %incdec.ptr.1.i199, align 4
  %mul4.1.i203 = mul nsw i32 %73, %11
  %add.ptr6.1.i204 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 20
  store i32 %mul4.1.i203, ptr %add.ptr6.1.i204, align 4
  %incdec.ptr9.1.i206 = getelementptr inbounds i8, ptr %67, i64 28
  %74 = load i32, ptr %incdec.ptr3.1.i202, align 4
  %mul10.1.i207 = mul nsw i32 %74, %13
  %add.ptr12.1.i208 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 24
  store i32 %mul10.1.i207, ptr %add.ptr12.1.i208, align 4
  %incdec.ptr16.1.i211 = getelementptr inbounds i8, ptr %67, i64 32
  %75 = load i32, ptr %incdec.ptr9.1.i206, align 4
  %mul17.1.i212 = mul nsw i32 %75, %15
  %incdec.ptr18.1.i213 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 32
  %add.ptr20.1.i214 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 28
  store i32 %mul17.1.i212, ptr %add.ptr20.1.i214, align 4
  %incdec.ptr.2.i215 = getelementptr inbounds i8, ptr %67, i64 36
  %76 = load i32, ptr %incdec.ptr16.1.i211, align 4
  %mul.2.i216 = mul nsw i32 %76, %17
  store i32 %mul.2.i216, ptr %incdec.ptr18.1.i213, align 4
  %incdec.ptr3.2.i218 = getelementptr inbounds i8, ptr %67, i64 40
  %77 = load i32, ptr %incdec.ptr.2.i215, align 4
  %mul4.2.i219 = mul nsw i32 %77, %19
  %add.ptr6.2.i220 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 36
  store i32 %mul4.2.i219, ptr %add.ptr6.2.i220, align 4
  %incdec.ptr9.2.i222 = getelementptr inbounds i8, ptr %67, i64 44
  %78 = load i32, ptr %incdec.ptr3.2.i218, align 4
  %mul10.2.i223 = mul nsw i32 %78, %21
  %add.ptr12.2.i224 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 40
  store i32 %mul10.2.i223, ptr %add.ptr12.2.i224, align 4
  %incdec.ptr16.2.i227 = getelementptr inbounds i8, ptr %67, i64 48
  %79 = load i32, ptr %incdec.ptr9.2.i222, align 4
  %mul17.2.i228 = mul nsw i32 %79, %23
  %incdec.ptr18.2.i229 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 48
  %add.ptr20.2.i230 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 44
  store i32 %mul17.2.i228, ptr %add.ptr20.2.i230, align 4
  %incdec.ptr.3.i231 = getelementptr inbounds i8, ptr %67, i64 52
  %80 = load i32, ptr %incdec.ptr16.2.i227, align 4
  %mul.3.i232 = mul nsw i32 %80, %25
  store i32 %mul.3.i232, ptr %incdec.ptr18.2.i229, align 4
  %incdec.ptr3.3.i234 = getelementptr inbounds i8, ptr %67, i64 56
  %81 = load i32, ptr %incdec.ptr.3.i231, align 4
  %mul4.3.i235 = mul nsw i32 %81, %27
  %add.ptr6.3.i236 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 52
  store i32 %mul4.3.i235, ptr %add.ptr6.3.i236, align 4
  %incdec.ptr9.3.i238 = getelementptr inbounds i8, ptr %67, i64 60
  %82 = load i32, ptr %incdec.ptr3.3.i234, align 4
  %mul10.3.i239 = mul nsw i32 %82, %29
  %add.ptr12.3.i240 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 56
  store i32 %mul10.3.i239, ptr %add.ptr12.3.i240, align 4
  %83 = load i32, ptr %incdec.ptr9.3.i238, align 4
  %mul17.3.i242 = mul nsw i32 %83, %31
  %add.ptr20.3.i243 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 60
  store i32 %mul17.3.i242, ptr %add.ptr20.3.i243, align 4
  %incdec.ptr33 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 64
  %84 = load ptr, ptr %arrayidx37, align 8
  %incdec.ptr.i244 = getelementptr inbounds i8, ptr %84, i64 4
  %85 = load i32, ptr %84, align 4
  %mul.i245 = mul nsw i32 %85, %1
  store i32 %mul.i245, ptr %InvLevelScale4x4_Inter_1.0372, align 4
  %incdec.ptr3.i247 = getelementptr inbounds i8, ptr %84, i64 8
  %86 = load i32, ptr %incdec.ptr.i244, align 4
  %mul4.i248 = mul nsw i32 %86, %3
  %add.ptr6.i249 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 4
  store i32 %mul4.i248, ptr %add.ptr6.i249, align 4
  %incdec.ptr9.i251 = getelementptr inbounds i8, ptr %84, i64 12
  %87 = load i32, ptr %incdec.ptr3.i247, align 4
  %mul10.i252 = mul nsw i32 %87, %5
  %add.ptr12.i253 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 8
  store i32 %mul10.i252, ptr %add.ptr12.i253, align 4
  %incdec.ptr16.i256 = getelementptr inbounds i8, ptr %84, i64 16
  %88 = load i32, ptr %incdec.ptr9.i251, align 4
  %mul17.i257 = mul nsw i32 %88, %7
  %incdec.ptr18.i258 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 16
  %add.ptr20.i259 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 12
  store i32 %mul17.i257, ptr %add.ptr20.i259, align 4
  %incdec.ptr.1.i260 = getelementptr inbounds i8, ptr %84, i64 20
  %89 = load i32, ptr %incdec.ptr16.i256, align 4
  %mul.1.i261 = mul nsw i32 %89, %9
  store i32 %mul.1.i261, ptr %incdec.ptr18.i258, align 4
  %incdec.ptr3.1.i263 = getelementptr inbounds i8, ptr %84, i64 24
  %90 = load i32, ptr %incdec.ptr.1.i260, align 4
  %mul4.1.i264 = mul nsw i32 %90, %11
  %add.ptr6.1.i265 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 20
  store i32 %mul4.1.i264, ptr %add.ptr6.1.i265, align 4
  %incdec.ptr9.1.i267 = getelementptr inbounds i8, ptr %84, i64 28
  %91 = load i32, ptr %incdec.ptr3.1.i263, align 4
  %mul10.1.i268 = mul nsw i32 %91, %13
  %add.ptr12.1.i269 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 24
  store i32 %mul10.1.i268, ptr %add.ptr12.1.i269, align 4
  %incdec.ptr16.1.i272 = getelementptr inbounds i8, ptr %84, i64 32
  %92 = load i32, ptr %incdec.ptr9.1.i267, align 4
  %mul17.1.i273 = mul nsw i32 %92, %15
  %incdec.ptr18.1.i274 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 32
  %add.ptr20.1.i275 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 28
  store i32 %mul17.1.i273, ptr %add.ptr20.1.i275, align 4
  %incdec.ptr.2.i276 = getelementptr inbounds i8, ptr %84, i64 36
  %93 = load i32, ptr %incdec.ptr16.1.i272, align 4
  %mul.2.i277 = mul nsw i32 %93, %17
  store i32 %mul.2.i277, ptr %incdec.ptr18.1.i274, align 4
  %incdec.ptr3.2.i279 = getelementptr inbounds i8, ptr %84, i64 40
  %94 = load i32, ptr %incdec.ptr.2.i276, align 4
  %mul4.2.i280 = mul nsw i32 %94, %19
  %add.ptr6.2.i281 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 36
  store i32 %mul4.2.i280, ptr %add.ptr6.2.i281, align 4
  %incdec.ptr9.2.i283 = getelementptr inbounds i8, ptr %84, i64 44
  %95 = load i32, ptr %incdec.ptr3.2.i279, align 4
  %mul10.2.i284 = mul nsw i32 %95, %21
  %add.ptr12.2.i285 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 40
  store i32 %mul10.2.i284, ptr %add.ptr12.2.i285, align 4
  %incdec.ptr16.2.i288 = getelementptr inbounds i8, ptr %84, i64 48
  %96 = load i32, ptr %incdec.ptr9.2.i283, align 4
  %mul17.2.i289 = mul nsw i32 %96, %23
  %incdec.ptr18.2.i290 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 48
  %add.ptr20.2.i291 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 44
  store i32 %mul17.2.i289, ptr %add.ptr20.2.i291, align 4
  %incdec.ptr.3.i292 = getelementptr inbounds i8, ptr %84, i64 52
  %97 = load i32, ptr %incdec.ptr16.2.i288, align 4
  %mul.3.i293 = mul nsw i32 %97, %25
  store i32 %mul.3.i293, ptr %incdec.ptr18.2.i290, align 4
  %incdec.ptr3.3.i295 = getelementptr inbounds i8, ptr %84, i64 56
  %98 = load i32, ptr %incdec.ptr.3.i292, align 4
  %mul4.3.i296 = mul nsw i32 %98, %27
  %add.ptr6.3.i297 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 52
  store i32 %mul4.3.i296, ptr %add.ptr6.3.i297, align 4
  %incdec.ptr9.3.i299 = getelementptr inbounds i8, ptr %84, i64 60
  %99 = load i32, ptr %incdec.ptr3.3.i295, align 4
  %mul10.3.i300 = mul nsw i32 %99, %29
  %add.ptr12.3.i301 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 56
  store i32 %mul10.3.i300, ptr %add.ptr12.3.i301, align 4
  %100 = load i32, ptr %incdec.ptr9.3.i299, align 4
  %mul17.3.i303 = mul nsw i32 %100, %31
  %add.ptr20.3.i304 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 60
  store i32 %mul17.3.i303, ptr %add.ptr20.3.i304, align 4
  %incdec.ptr38 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 64
  %incdec.ptr40 = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 64
  %101 = load ptr, ptr %arrayidx43, align 8
  %incdec.ptr.i305 = getelementptr inbounds i8, ptr %101, i64 4
  %102 = load i32, ptr %101, align 4
  %mul.i306 = mul nsw i32 %102, %1
  store i32 %mul.i306, ptr %InvLevelScale4x4_Inter_2.0373, align 4
  %incdec.ptr3.i308 = getelementptr inbounds i8, ptr %101, i64 8
  %103 = load i32, ptr %incdec.ptr.i305, align 4
  %mul4.i309 = mul nsw i32 %103, %3
  %add.ptr6.i310 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 4
  store i32 %mul4.i309, ptr %add.ptr6.i310, align 4
  %incdec.ptr9.i312 = getelementptr inbounds i8, ptr %101, i64 12
  %104 = load i32, ptr %incdec.ptr3.i308, align 4
  %mul10.i313 = mul nsw i32 %104, %5
  %add.ptr12.i314 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 8
  store i32 %mul10.i313, ptr %add.ptr12.i314, align 4
  %incdec.ptr16.i317 = getelementptr inbounds i8, ptr %101, i64 16
  %105 = load i32, ptr %incdec.ptr9.i312, align 4
  %mul17.i318 = mul nsw i32 %105, %7
  %incdec.ptr18.i319 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 16
  %add.ptr20.i320 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 12
  store i32 %mul17.i318, ptr %add.ptr20.i320, align 4
  %incdec.ptr.1.i321 = getelementptr inbounds i8, ptr %101, i64 20
  %106 = load i32, ptr %incdec.ptr16.i317, align 4
  %mul.1.i322 = mul nsw i32 %106, %9
  store i32 %mul.1.i322, ptr %incdec.ptr18.i319, align 4
  %incdec.ptr3.1.i324 = getelementptr inbounds i8, ptr %101, i64 24
  %107 = load i32, ptr %incdec.ptr.1.i321, align 4
  %mul4.1.i325 = mul nsw i32 %107, %11
  %add.ptr6.1.i326 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 20
  store i32 %mul4.1.i325, ptr %add.ptr6.1.i326, align 4
  %incdec.ptr9.1.i328 = getelementptr inbounds i8, ptr %101, i64 28
  %108 = load i32, ptr %incdec.ptr3.1.i324, align 4
  %mul10.1.i329 = mul nsw i32 %108, %13
  %add.ptr12.1.i330 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 24
  store i32 %mul10.1.i329, ptr %add.ptr12.1.i330, align 4
  %incdec.ptr16.1.i333 = getelementptr inbounds i8, ptr %101, i64 32
  %109 = load i32, ptr %incdec.ptr9.1.i328, align 4
  %mul17.1.i334 = mul nsw i32 %109, %15
  %incdec.ptr18.1.i335 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 32
  %add.ptr20.1.i336 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 28
  store i32 %mul17.1.i334, ptr %add.ptr20.1.i336, align 4
  %incdec.ptr.2.i337 = getelementptr inbounds i8, ptr %101, i64 36
  %110 = load i32, ptr %incdec.ptr16.1.i333, align 4
  %mul.2.i338 = mul nsw i32 %110, %17
  store i32 %mul.2.i338, ptr %incdec.ptr18.1.i335, align 4
  %incdec.ptr3.2.i340 = getelementptr inbounds i8, ptr %101, i64 40
  %111 = load i32, ptr %incdec.ptr.2.i337, align 4
  %mul4.2.i341 = mul nsw i32 %111, %19
  %add.ptr6.2.i342 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 36
  store i32 %mul4.2.i341, ptr %add.ptr6.2.i342, align 4
  %incdec.ptr9.2.i344 = getelementptr inbounds i8, ptr %101, i64 44
  %112 = load i32, ptr %incdec.ptr3.2.i340, align 4
  %mul10.2.i345 = mul nsw i32 %112, %21
  %add.ptr12.2.i346 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 40
  store i32 %mul10.2.i345, ptr %add.ptr12.2.i346, align 4
  %incdec.ptr16.2.i349 = getelementptr inbounds i8, ptr %101, i64 48
  %113 = load i32, ptr %incdec.ptr9.2.i344, align 4
  %mul17.2.i350 = mul nsw i32 %113, %23
  %incdec.ptr18.2.i351 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 48
  %add.ptr20.2.i352 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 44
  store i32 %mul17.2.i350, ptr %add.ptr20.2.i352, align 4
  %incdec.ptr.3.i353 = getelementptr inbounds i8, ptr %101, i64 52
  %114 = load i32, ptr %incdec.ptr16.2.i349, align 4
  %mul.3.i354 = mul nsw i32 %114, %25
  store i32 %mul.3.i354, ptr %incdec.ptr18.2.i351, align 4
  %incdec.ptr3.3.i356 = getelementptr inbounds i8, ptr %101, i64 56
  %115 = load i32, ptr %incdec.ptr.3.i353, align 4
  %mul4.3.i357 = mul nsw i32 %115, %27
  %add.ptr6.3.i358 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 52
  store i32 %mul4.3.i357, ptr %add.ptr6.3.i358, align 4
  %incdec.ptr9.3.i360 = getelementptr inbounds i8, ptr %101, i64 60
  %116 = load i32, ptr %incdec.ptr3.3.i356, align 4
  %mul10.3.i361 = mul nsw i32 %116, %29
  %add.ptr12.3.i362 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 56
  store i32 %mul10.3.i361, ptr %add.ptr12.3.i362, align 4
  %117 = load i32, ptr %incdec.ptr9.3.i360, align 4
  %mul17.3.i364 = mul nsw i32 %117, %31
  %add.ptr20.3.i365 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 60
  store i32 %mul17.3.i364, ptr %add.ptr20.3.i365, align 4
  %inc = add nuw nsw i32 %k.0366, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CalculateQuant8x8Param(ptr nocapture noundef %currSlice) local_unnamed_addr #6 {
entry:
  %InvLevelScale8x8_Intra = getelementptr inbounds i8, ptr %currSlice, i64 3696
  %InvLevelScale8x8_Inter = getelementptr inbounds i8, ptr %currSlice, i64 8304
  %arrayidx17 = getelementptr inbounds i8, ptr %currSlice, i64 12960
  %arrayidx23 = getelementptr inbounds i8, ptr %currSlice, i64 12968
  %incdec.ptr = getelementptr inbounds i8, ptr %currSlice, i64 3952
  %0 = load ptr, ptr %arrayidx17, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %InvLevelScale8x8_Intra, ptr noundef nonnull @dequant_coef8, ptr noundef %0)
  %incdec.ptr18 = getelementptr inbounds i8, ptr %currSlice, i64 8560
  %1 = load ptr, ptr %arrayidx23, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %InvLevelScale8x8_Inter, ptr noundef nonnull @dequant_coef8, ptr noundef %1)
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %currSlice, i64 4208
  %2 = load ptr, ptr %arrayidx17, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), ptr noundef %2)
  %incdec.ptr18.1 = getelementptr inbounds i8, ptr %currSlice, i64 8816
  %3 = load ptr, ptr %arrayidx23, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr18, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), ptr noundef %3)
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %currSlice, i64 4464
  %4 = load ptr, ptr %arrayidx17, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), ptr noundef %4)
  %incdec.ptr18.2 = getelementptr inbounds i8, ptr %currSlice, i64 9072
  %5 = load ptr, ptr %arrayidx23, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr18.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), ptr noundef %5)
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %currSlice, i64 4720
  %6 = load ptr, ptr %arrayidx17, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), ptr noundef %6)
  %incdec.ptr18.3 = getelementptr inbounds i8, ptr %currSlice, i64 9328
  %7 = load ptr, ptr %arrayidx23, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr18.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), ptr noundef %7)
  %incdec.ptr.4 = getelementptr inbounds i8, ptr %currSlice, i64 4976
  %8 = load ptr, ptr %arrayidx17, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), ptr noundef %8)
  %incdec.ptr18.4 = getelementptr inbounds i8, ptr %currSlice, i64 9584
  %9 = load ptr, ptr %arrayidx23, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr18.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), ptr noundef %9)
  %10 = load ptr, ptr %arrayidx17, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), ptr noundef %10)
  %11 = load ptr, ptr %arrayidx23, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr18.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), ptr noundef %11)
  %active_sps = getelementptr inbounds i8, ptr %currSlice, i64 24
  %12 = load ptr, ptr %active_sps, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %12, i64 36
  %13 = load i32, ptr %chroma_format_idc, align 4
  %cmp24 = icmp eq i32 %13, 3
  br i1 %cmp24, label %for.cond25.preheader, label %if.end

for.cond25.preheader:                             ; preds = %entry
  %arrayidx13 = getelementptr inbounds i8, ptr %currSlice, i64 11376
  %arrayidx5 = getelementptr inbounds i8, ptr %currSlice, i64 6768
  %arrayidx10 = getelementptr inbounds i8, ptr %currSlice, i64 9840
  %arrayidx2 = getelementptr inbounds i8, ptr %currSlice, i64 5232
  %arrayidx32 = getelementptr inbounds i8, ptr %currSlice, i64 12976
  %arrayidx37 = getelementptr inbounds i8, ptr %currSlice, i64 12984
  %arrayidx42 = getelementptr inbounds i8, ptr %currSlice, i64 12992
  %arrayidx48 = getelementptr inbounds i8, ptr %currSlice, i64 13000
  %incdec.ptr28 = getelementptr inbounds i8, ptr %currSlice, i64 5488
  %14 = load ptr, ptr %arrayidx32, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %arrayidx2, ptr noundef nonnull @dequant_coef8, ptr noundef %14)
  %incdec.ptr33 = getelementptr inbounds i8, ptr %currSlice, i64 10096
  %15 = load ptr, ptr %arrayidx37, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %arrayidx10, ptr noundef nonnull @dequant_coef8, ptr noundef %15)
  %incdec.ptr38 = getelementptr inbounds i8, ptr %currSlice, i64 7024
  %16 = load ptr, ptr %arrayidx42, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %arrayidx5, ptr noundef nonnull @dequant_coef8, ptr noundef %16)
  %incdec.ptr43 = getelementptr inbounds i8, ptr %currSlice, i64 11632
  %17 = load ptr, ptr %arrayidx48, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %arrayidx13, ptr noundef nonnull @dequant_coef8, ptr noundef %17)
  %incdec.ptr28.1 = getelementptr inbounds i8, ptr %currSlice, i64 5744
  %18 = load ptr, ptr %arrayidx32, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr28, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), ptr noundef %18)
  %incdec.ptr33.1 = getelementptr inbounds i8, ptr %currSlice, i64 10352
  %19 = load ptr, ptr %arrayidx37, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), ptr noundef %19)
  %incdec.ptr38.1 = getelementptr inbounds i8, ptr %currSlice, i64 7280
  %20 = load ptr, ptr %arrayidx42, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr38, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), ptr noundef %20)
  %incdec.ptr43.1 = getelementptr inbounds i8, ptr %currSlice, i64 11888
  %21 = load ptr, ptr %arrayidx48, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr43, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), ptr noundef %21)
  %incdec.ptr28.2 = getelementptr inbounds i8, ptr %currSlice, i64 6000
  %22 = load ptr, ptr %arrayidx32, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr28.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), ptr noundef %22)
  %incdec.ptr33.2 = getelementptr inbounds i8, ptr %currSlice, i64 10608
  %23 = load ptr, ptr %arrayidx37, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr33.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), ptr noundef %23)
  %incdec.ptr38.2 = getelementptr inbounds i8, ptr %currSlice, i64 7536
  %24 = load ptr, ptr %arrayidx42, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr38.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), ptr noundef %24)
  %incdec.ptr43.2 = getelementptr inbounds i8, ptr %currSlice, i64 12144
  %25 = load ptr, ptr %arrayidx48, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr43.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), ptr noundef %25)
  %incdec.ptr28.3 = getelementptr inbounds i8, ptr %currSlice, i64 6256
  %26 = load ptr, ptr %arrayidx32, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr28.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), ptr noundef %26)
  %incdec.ptr33.3 = getelementptr inbounds i8, ptr %currSlice, i64 10864
  %27 = load ptr, ptr %arrayidx37, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr33.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), ptr noundef %27)
  %incdec.ptr38.3 = getelementptr inbounds i8, ptr %currSlice, i64 7792
  %28 = load ptr, ptr %arrayidx42, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr38.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), ptr noundef %28)
  %incdec.ptr43.3 = getelementptr inbounds i8, ptr %currSlice, i64 12400
  %29 = load ptr, ptr %arrayidx48, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr43.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), ptr noundef %29)
  %incdec.ptr28.4 = getelementptr inbounds i8, ptr %currSlice, i64 6512
  %30 = load ptr, ptr %arrayidx32, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr28.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), ptr noundef %30)
  %incdec.ptr33.4 = getelementptr inbounds i8, ptr %currSlice, i64 11120
  %31 = load ptr, ptr %arrayidx37, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr33.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), ptr noundef %31)
  %incdec.ptr38.4 = getelementptr inbounds i8, ptr %currSlice, i64 8048
  %32 = load ptr, ptr %arrayidx42, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr38.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), ptr noundef %32)
  %incdec.ptr43.4 = getelementptr inbounds i8, ptr %currSlice, i64 12656
  %33 = load ptr, ptr %arrayidx48, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr43.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), ptr noundef %33)
  %34 = load ptr, ptr %arrayidx32, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr28.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), ptr noundef %34)
  %35 = load ptr, ptr %arrayidx37, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr33.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), ptr noundef %35)
  %36 = load ptr, ptr %arrayidx42, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr38.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), ptr noundef %36)
  %37 = load ptr, ptr %arrayidx48, align 8
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr43.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), ptr noundef %37)
  br label %if.end

if.end:                                           ; preds = %for.cond25.preheader, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_dequant8x8(ptr nocapture noundef writeonly %InvLevelScale8x8, ptr nocapture noundef readonly %dequant, ptr nocapture noundef readonly %qmatrix) unnamed_addr #7 {
entry:
  %0 = load i32, ptr %dequant, align 4
  %incdec.ptr = getelementptr inbounds i8, ptr %qmatrix, i64 4
  %1 = load i32, ptr %qmatrix, align 4
  %mul = mul nsw i32 %1, %0
  store i32 %mul, ptr %InvLevelScale8x8, align 4
  %add.ptr = getelementptr inbounds i8, ptr %dequant, i64 4
  %2 = load i32, ptr %add.ptr, align 4
  %incdec.ptr3 = getelementptr inbounds i8, ptr %qmatrix, i64 8
  %3 = load i32, ptr %incdec.ptr, align 4
  %mul4 = mul nsw i32 %3, %2
  %add.ptr6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 4
  store i32 %mul4, ptr %add.ptr6, align 4
  %add.ptr8 = getelementptr inbounds i8, ptr %dequant, i64 8
  %4 = load i32, ptr %add.ptr8, align 4
  %incdec.ptr9 = getelementptr inbounds i8, ptr %qmatrix, i64 12
  %5 = load i32, ptr %incdec.ptr3, align 4
  %mul10 = mul nsw i32 %5, %4
  %add.ptr12 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 8
  store i32 %mul10, ptr %add.ptr12, align 4
  %add.ptr14 = getelementptr inbounds i8, ptr %dequant, i64 12
  %6 = load i32, ptr %add.ptr14, align 4
  %incdec.ptr15 = getelementptr inbounds i8, ptr %qmatrix, i64 16
  %7 = load i32, ptr %incdec.ptr9, align 4
  %mul16 = mul nsw i32 %7, %6
  %add.ptr18 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 12
  store i32 %mul16, ptr %add.ptr18, align 4
  %add.ptr20 = getelementptr inbounds i8, ptr %dequant, i64 16
  %8 = load i32, ptr %add.ptr20, align 4
  %incdec.ptr21 = getelementptr inbounds i8, ptr %qmatrix, i64 20
  %9 = load i32, ptr %incdec.ptr15, align 4
  %mul22 = mul nsw i32 %9, %8
  %add.ptr24 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 16
  store i32 %mul22, ptr %add.ptr24, align 4
  %add.ptr26 = getelementptr inbounds i8, ptr %dequant, i64 20
  %10 = load i32, ptr %add.ptr26, align 4
  %incdec.ptr27 = getelementptr inbounds i8, ptr %qmatrix, i64 24
  %11 = load i32, ptr %incdec.ptr21, align 4
  %mul28 = mul nsw i32 %11, %10
  %add.ptr30 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 20
  store i32 %mul28, ptr %add.ptr30, align 4
  %add.ptr32 = getelementptr inbounds i8, ptr %dequant, i64 24
  %12 = load i32, ptr %add.ptr32, align 4
  %incdec.ptr33 = getelementptr inbounds i8, ptr %qmatrix, i64 28
  %13 = load i32, ptr %incdec.ptr27, align 4
  %mul34 = mul nsw i32 %13, %12
  %add.ptr36 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 24
  store i32 %mul34, ptr %add.ptr36, align 4
  %incdec.ptr37 = getelementptr inbounds i8, ptr %dequant, i64 32
  %add.ptr39 = getelementptr inbounds i8, ptr %dequant, i64 28
  %14 = load i32, ptr %add.ptr39, align 4
  %incdec.ptr40 = getelementptr inbounds i8, ptr %qmatrix, i64 32
  %15 = load i32, ptr %incdec.ptr33, align 4
  %mul41 = mul nsw i32 %15, %14
  %incdec.ptr42 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 32
  %add.ptr44 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 28
  store i32 %mul41, ptr %add.ptr44, align 4
  %16 = load i32, ptr %incdec.ptr37, align 4
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %qmatrix, i64 36
  %17 = load i32, ptr %incdec.ptr40, align 4
  %mul.1 = mul nsw i32 %17, %16
  store i32 %mul.1, ptr %incdec.ptr42, align 4
  %add.ptr.1 = getelementptr inbounds i8, ptr %dequant, i64 36
  %18 = load i32, ptr %add.ptr.1, align 4
  %incdec.ptr3.1 = getelementptr inbounds i8, ptr %qmatrix, i64 40
  %19 = load i32, ptr %incdec.ptr.1, align 4
  %mul4.1 = mul nsw i32 %19, %18
  %add.ptr6.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 36
  store i32 %mul4.1, ptr %add.ptr6.1, align 4
  %add.ptr8.1 = getelementptr inbounds i8, ptr %dequant, i64 40
  %20 = load i32, ptr %add.ptr8.1, align 4
  %incdec.ptr9.1 = getelementptr inbounds i8, ptr %qmatrix, i64 44
  %21 = load i32, ptr %incdec.ptr3.1, align 4
  %mul10.1 = mul nsw i32 %21, %20
  %add.ptr12.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 40
  store i32 %mul10.1, ptr %add.ptr12.1, align 4
  %add.ptr14.1 = getelementptr inbounds i8, ptr %dequant, i64 44
  %22 = load i32, ptr %add.ptr14.1, align 4
  %incdec.ptr15.1 = getelementptr inbounds i8, ptr %qmatrix, i64 48
  %23 = load i32, ptr %incdec.ptr9.1, align 4
  %mul16.1 = mul nsw i32 %23, %22
  %add.ptr18.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 44
  store i32 %mul16.1, ptr %add.ptr18.1, align 4
  %add.ptr20.1 = getelementptr inbounds i8, ptr %dequant, i64 48
  %24 = load i32, ptr %add.ptr20.1, align 4
  %incdec.ptr21.1 = getelementptr inbounds i8, ptr %qmatrix, i64 52
  %25 = load i32, ptr %incdec.ptr15.1, align 4
  %mul22.1 = mul nsw i32 %25, %24
  %add.ptr24.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 48
  store i32 %mul22.1, ptr %add.ptr24.1, align 4
  %add.ptr26.1 = getelementptr inbounds i8, ptr %dequant, i64 52
  %26 = load i32, ptr %add.ptr26.1, align 4
  %incdec.ptr27.1 = getelementptr inbounds i8, ptr %qmatrix, i64 56
  %27 = load i32, ptr %incdec.ptr21.1, align 4
  %mul28.1 = mul nsw i32 %27, %26
  %add.ptr30.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 52
  store i32 %mul28.1, ptr %add.ptr30.1, align 4
  %add.ptr32.1 = getelementptr inbounds i8, ptr %dequant, i64 56
  %28 = load i32, ptr %add.ptr32.1, align 4
  %incdec.ptr33.1 = getelementptr inbounds i8, ptr %qmatrix, i64 60
  %29 = load i32, ptr %incdec.ptr27.1, align 4
  %mul34.1 = mul nsw i32 %29, %28
  %add.ptr36.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 56
  store i32 %mul34.1, ptr %add.ptr36.1, align 4
  %incdec.ptr37.1 = getelementptr inbounds i8, ptr %dequant, i64 64
  %add.ptr39.1 = getelementptr inbounds i8, ptr %dequant, i64 60
  %30 = load i32, ptr %add.ptr39.1, align 4
  %incdec.ptr40.1 = getelementptr inbounds i8, ptr %qmatrix, i64 64
  %31 = load i32, ptr %incdec.ptr33.1, align 4
  %mul41.1 = mul nsw i32 %31, %30
  %incdec.ptr42.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 64
  %add.ptr44.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 60
  store i32 %mul41.1, ptr %add.ptr44.1, align 4
  %32 = load i32, ptr %incdec.ptr37.1, align 4
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %qmatrix, i64 68
  %33 = load i32, ptr %incdec.ptr40.1, align 4
  %mul.2 = mul nsw i32 %33, %32
  store i32 %mul.2, ptr %incdec.ptr42.1, align 4
  %add.ptr.2 = getelementptr inbounds i8, ptr %dequant, i64 68
  %34 = load i32, ptr %add.ptr.2, align 4
  %incdec.ptr3.2 = getelementptr inbounds i8, ptr %qmatrix, i64 72
  %35 = load i32, ptr %incdec.ptr.2, align 4
  %mul4.2 = mul nsw i32 %35, %34
  %add.ptr6.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 68
  store i32 %mul4.2, ptr %add.ptr6.2, align 4
  %add.ptr8.2 = getelementptr inbounds i8, ptr %dequant, i64 72
  %36 = load i32, ptr %add.ptr8.2, align 4
  %incdec.ptr9.2 = getelementptr inbounds i8, ptr %qmatrix, i64 76
  %37 = load i32, ptr %incdec.ptr3.2, align 4
  %mul10.2 = mul nsw i32 %37, %36
  %add.ptr12.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 72
  store i32 %mul10.2, ptr %add.ptr12.2, align 4
  %add.ptr14.2 = getelementptr inbounds i8, ptr %dequant, i64 76
  %38 = load i32, ptr %add.ptr14.2, align 4
  %incdec.ptr15.2 = getelementptr inbounds i8, ptr %qmatrix, i64 80
  %39 = load i32, ptr %incdec.ptr9.2, align 4
  %mul16.2 = mul nsw i32 %39, %38
  %add.ptr18.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 76
  store i32 %mul16.2, ptr %add.ptr18.2, align 4
  %add.ptr20.2 = getelementptr inbounds i8, ptr %dequant, i64 80
  %40 = load i32, ptr %add.ptr20.2, align 4
  %incdec.ptr21.2 = getelementptr inbounds i8, ptr %qmatrix, i64 84
  %41 = load i32, ptr %incdec.ptr15.2, align 4
  %mul22.2 = mul nsw i32 %41, %40
  %add.ptr24.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 80
  store i32 %mul22.2, ptr %add.ptr24.2, align 4
  %add.ptr26.2 = getelementptr inbounds i8, ptr %dequant, i64 84
  %42 = load i32, ptr %add.ptr26.2, align 4
  %incdec.ptr27.2 = getelementptr inbounds i8, ptr %qmatrix, i64 88
  %43 = load i32, ptr %incdec.ptr21.2, align 4
  %mul28.2 = mul nsw i32 %43, %42
  %add.ptr30.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 84
  store i32 %mul28.2, ptr %add.ptr30.2, align 4
  %add.ptr32.2 = getelementptr inbounds i8, ptr %dequant, i64 88
  %44 = load i32, ptr %add.ptr32.2, align 4
  %incdec.ptr33.2 = getelementptr inbounds i8, ptr %qmatrix, i64 92
  %45 = load i32, ptr %incdec.ptr27.2, align 4
  %mul34.2 = mul nsw i32 %45, %44
  %add.ptr36.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 88
  store i32 %mul34.2, ptr %add.ptr36.2, align 4
  %incdec.ptr37.2 = getelementptr inbounds i8, ptr %dequant, i64 96
  %add.ptr39.2 = getelementptr inbounds i8, ptr %dequant, i64 92
  %46 = load i32, ptr %add.ptr39.2, align 4
  %incdec.ptr40.2 = getelementptr inbounds i8, ptr %qmatrix, i64 96
  %47 = load i32, ptr %incdec.ptr33.2, align 4
  %mul41.2 = mul nsw i32 %47, %46
  %incdec.ptr42.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 96
  %add.ptr44.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 92
  store i32 %mul41.2, ptr %add.ptr44.2, align 4
  %48 = load i32, ptr %incdec.ptr37.2, align 4
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %qmatrix, i64 100
  %49 = load i32, ptr %incdec.ptr40.2, align 4
  %mul.3 = mul nsw i32 %49, %48
  store i32 %mul.3, ptr %incdec.ptr42.2, align 4
  %add.ptr.3 = getelementptr inbounds i8, ptr %dequant, i64 100
  %50 = load i32, ptr %add.ptr.3, align 4
  %incdec.ptr3.3 = getelementptr inbounds i8, ptr %qmatrix, i64 104
  %51 = load i32, ptr %incdec.ptr.3, align 4
  %mul4.3 = mul nsw i32 %51, %50
  %add.ptr6.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 100
  store i32 %mul4.3, ptr %add.ptr6.3, align 4
  %add.ptr8.3 = getelementptr inbounds i8, ptr %dequant, i64 104
  %52 = load i32, ptr %add.ptr8.3, align 4
  %incdec.ptr9.3 = getelementptr inbounds i8, ptr %qmatrix, i64 108
  %53 = load i32, ptr %incdec.ptr3.3, align 4
  %mul10.3 = mul nsw i32 %53, %52
  %add.ptr12.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 104
  store i32 %mul10.3, ptr %add.ptr12.3, align 4
  %add.ptr14.3 = getelementptr inbounds i8, ptr %dequant, i64 108
  %54 = load i32, ptr %add.ptr14.3, align 4
  %incdec.ptr15.3 = getelementptr inbounds i8, ptr %qmatrix, i64 112
  %55 = load i32, ptr %incdec.ptr9.3, align 4
  %mul16.3 = mul nsw i32 %55, %54
  %add.ptr18.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 108
  store i32 %mul16.3, ptr %add.ptr18.3, align 4
  %add.ptr20.3 = getelementptr inbounds i8, ptr %dequant, i64 112
  %56 = load i32, ptr %add.ptr20.3, align 4
  %incdec.ptr21.3 = getelementptr inbounds i8, ptr %qmatrix, i64 116
  %57 = load i32, ptr %incdec.ptr15.3, align 4
  %mul22.3 = mul nsw i32 %57, %56
  %add.ptr24.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 112
  store i32 %mul22.3, ptr %add.ptr24.3, align 4
  %add.ptr26.3 = getelementptr inbounds i8, ptr %dequant, i64 116
  %58 = load i32, ptr %add.ptr26.3, align 4
  %incdec.ptr27.3 = getelementptr inbounds i8, ptr %qmatrix, i64 120
  %59 = load i32, ptr %incdec.ptr21.3, align 4
  %mul28.3 = mul nsw i32 %59, %58
  %add.ptr30.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 116
  store i32 %mul28.3, ptr %add.ptr30.3, align 4
  %add.ptr32.3 = getelementptr inbounds i8, ptr %dequant, i64 120
  %60 = load i32, ptr %add.ptr32.3, align 4
  %incdec.ptr33.3 = getelementptr inbounds i8, ptr %qmatrix, i64 124
  %61 = load i32, ptr %incdec.ptr27.3, align 4
  %mul34.3 = mul nsw i32 %61, %60
  %add.ptr36.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 120
  store i32 %mul34.3, ptr %add.ptr36.3, align 4
  %incdec.ptr37.3 = getelementptr inbounds i8, ptr %dequant, i64 128
  %add.ptr39.3 = getelementptr inbounds i8, ptr %dequant, i64 124
  %62 = load i32, ptr %add.ptr39.3, align 4
  %incdec.ptr40.3 = getelementptr inbounds i8, ptr %qmatrix, i64 128
  %63 = load i32, ptr %incdec.ptr33.3, align 4
  %mul41.3 = mul nsw i32 %63, %62
  %incdec.ptr42.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 128
  %add.ptr44.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 124
  store i32 %mul41.3, ptr %add.ptr44.3, align 4
  %64 = load i32, ptr %incdec.ptr37.3, align 4
  %incdec.ptr.4 = getelementptr inbounds i8, ptr %qmatrix, i64 132
  %65 = load i32, ptr %incdec.ptr40.3, align 4
  %mul.4 = mul nsw i32 %65, %64
  store i32 %mul.4, ptr %incdec.ptr42.3, align 4
  %add.ptr.4 = getelementptr inbounds i8, ptr %dequant, i64 132
  %66 = load i32, ptr %add.ptr.4, align 4
  %incdec.ptr3.4 = getelementptr inbounds i8, ptr %qmatrix, i64 136
  %67 = load i32, ptr %incdec.ptr.4, align 4
  %mul4.4 = mul nsw i32 %67, %66
  %add.ptr6.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 132
  store i32 %mul4.4, ptr %add.ptr6.4, align 4
  %add.ptr8.4 = getelementptr inbounds i8, ptr %dequant, i64 136
  %68 = load i32, ptr %add.ptr8.4, align 4
  %incdec.ptr9.4 = getelementptr inbounds i8, ptr %qmatrix, i64 140
  %69 = load i32, ptr %incdec.ptr3.4, align 4
  %mul10.4 = mul nsw i32 %69, %68
  %add.ptr12.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 136
  store i32 %mul10.4, ptr %add.ptr12.4, align 4
  %add.ptr14.4 = getelementptr inbounds i8, ptr %dequant, i64 140
  %70 = load i32, ptr %add.ptr14.4, align 4
  %incdec.ptr15.4 = getelementptr inbounds i8, ptr %qmatrix, i64 144
  %71 = load i32, ptr %incdec.ptr9.4, align 4
  %mul16.4 = mul nsw i32 %71, %70
  %add.ptr18.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 140
  store i32 %mul16.4, ptr %add.ptr18.4, align 4
  %add.ptr20.4 = getelementptr inbounds i8, ptr %dequant, i64 144
  %72 = load i32, ptr %add.ptr20.4, align 4
  %incdec.ptr21.4 = getelementptr inbounds i8, ptr %qmatrix, i64 148
  %73 = load i32, ptr %incdec.ptr15.4, align 4
  %mul22.4 = mul nsw i32 %73, %72
  %add.ptr24.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 144
  store i32 %mul22.4, ptr %add.ptr24.4, align 4
  %add.ptr26.4 = getelementptr inbounds i8, ptr %dequant, i64 148
  %74 = load i32, ptr %add.ptr26.4, align 4
  %incdec.ptr27.4 = getelementptr inbounds i8, ptr %qmatrix, i64 152
  %75 = load i32, ptr %incdec.ptr21.4, align 4
  %mul28.4 = mul nsw i32 %75, %74
  %add.ptr30.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 148
  store i32 %mul28.4, ptr %add.ptr30.4, align 4
  %add.ptr32.4 = getelementptr inbounds i8, ptr %dequant, i64 152
  %76 = load i32, ptr %add.ptr32.4, align 4
  %incdec.ptr33.4 = getelementptr inbounds i8, ptr %qmatrix, i64 156
  %77 = load i32, ptr %incdec.ptr27.4, align 4
  %mul34.4 = mul nsw i32 %77, %76
  %add.ptr36.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 152
  store i32 %mul34.4, ptr %add.ptr36.4, align 4
  %incdec.ptr37.4 = getelementptr inbounds i8, ptr %dequant, i64 160
  %add.ptr39.4 = getelementptr inbounds i8, ptr %dequant, i64 156
  %78 = load i32, ptr %add.ptr39.4, align 4
  %incdec.ptr40.4 = getelementptr inbounds i8, ptr %qmatrix, i64 160
  %79 = load i32, ptr %incdec.ptr33.4, align 4
  %mul41.4 = mul nsw i32 %79, %78
  %incdec.ptr42.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 160
  %add.ptr44.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 156
  store i32 %mul41.4, ptr %add.ptr44.4, align 4
  %80 = load i32, ptr %incdec.ptr37.4, align 4
  %incdec.ptr.5 = getelementptr inbounds i8, ptr %qmatrix, i64 164
  %81 = load i32, ptr %incdec.ptr40.4, align 4
  %mul.5 = mul nsw i32 %81, %80
  store i32 %mul.5, ptr %incdec.ptr42.4, align 4
  %add.ptr.5 = getelementptr inbounds i8, ptr %dequant, i64 164
  %82 = load i32, ptr %add.ptr.5, align 4
  %incdec.ptr3.5 = getelementptr inbounds i8, ptr %qmatrix, i64 168
  %83 = load i32, ptr %incdec.ptr.5, align 4
  %mul4.5 = mul nsw i32 %83, %82
  %add.ptr6.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 164
  store i32 %mul4.5, ptr %add.ptr6.5, align 4
  %add.ptr8.5 = getelementptr inbounds i8, ptr %dequant, i64 168
  %84 = load i32, ptr %add.ptr8.5, align 4
  %incdec.ptr9.5 = getelementptr inbounds i8, ptr %qmatrix, i64 172
  %85 = load i32, ptr %incdec.ptr3.5, align 4
  %mul10.5 = mul nsw i32 %85, %84
  %add.ptr12.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 168
  store i32 %mul10.5, ptr %add.ptr12.5, align 4
  %add.ptr14.5 = getelementptr inbounds i8, ptr %dequant, i64 172
  %86 = load i32, ptr %add.ptr14.5, align 4
  %incdec.ptr15.5 = getelementptr inbounds i8, ptr %qmatrix, i64 176
  %87 = load i32, ptr %incdec.ptr9.5, align 4
  %mul16.5 = mul nsw i32 %87, %86
  %add.ptr18.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 172
  store i32 %mul16.5, ptr %add.ptr18.5, align 4
  %add.ptr20.5 = getelementptr inbounds i8, ptr %dequant, i64 176
  %88 = load i32, ptr %add.ptr20.5, align 4
  %incdec.ptr21.5 = getelementptr inbounds i8, ptr %qmatrix, i64 180
  %89 = load i32, ptr %incdec.ptr15.5, align 4
  %mul22.5 = mul nsw i32 %89, %88
  %add.ptr24.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 176
  store i32 %mul22.5, ptr %add.ptr24.5, align 4
  %add.ptr26.5 = getelementptr inbounds i8, ptr %dequant, i64 180
  %90 = load i32, ptr %add.ptr26.5, align 4
  %incdec.ptr27.5 = getelementptr inbounds i8, ptr %qmatrix, i64 184
  %91 = load i32, ptr %incdec.ptr21.5, align 4
  %mul28.5 = mul nsw i32 %91, %90
  %add.ptr30.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 180
  store i32 %mul28.5, ptr %add.ptr30.5, align 4
  %add.ptr32.5 = getelementptr inbounds i8, ptr %dequant, i64 184
  %92 = load i32, ptr %add.ptr32.5, align 4
  %incdec.ptr33.5 = getelementptr inbounds i8, ptr %qmatrix, i64 188
  %93 = load i32, ptr %incdec.ptr27.5, align 4
  %mul34.5 = mul nsw i32 %93, %92
  %add.ptr36.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 184
  store i32 %mul34.5, ptr %add.ptr36.5, align 4
  %incdec.ptr37.5 = getelementptr inbounds i8, ptr %dequant, i64 192
  %add.ptr39.5 = getelementptr inbounds i8, ptr %dequant, i64 188
  %94 = load i32, ptr %add.ptr39.5, align 4
  %incdec.ptr40.5 = getelementptr inbounds i8, ptr %qmatrix, i64 192
  %95 = load i32, ptr %incdec.ptr33.5, align 4
  %mul41.5 = mul nsw i32 %95, %94
  %incdec.ptr42.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 192
  %add.ptr44.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 188
  store i32 %mul41.5, ptr %add.ptr44.5, align 4
  %96 = load i32, ptr %incdec.ptr37.5, align 4
  %incdec.ptr.6 = getelementptr inbounds i8, ptr %qmatrix, i64 196
  %97 = load i32, ptr %incdec.ptr40.5, align 4
  %mul.6 = mul nsw i32 %97, %96
  store i32 %mul.6, ptr %incdec.ptr42.5, align 4
  %add.ptr.6 = getelementptr inbounds i8, ptr %dequant, i64 196
  %98 = load i32, ptr %add.ptr.6, align 4
  %incdec.ptr3.6 = getelementptr inbounds i8, ptr %qmatrix, i64 200
  %99 = load i32, ptr %incdec.ptr.6, align 4
  %mul4.6 = mul nsw i32 %99, %98
  %add.ptr6.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 196
  store i32 %mul4.6, ptr %add.ptr6.6, align 4
  %add.ptr8.6 = getelementptr inbounds i8, ptr %dequant, i64 200
  %100 = load i32, ptr %add.ptr8.6, align 4
  %incdec.ptr9.6 = getelementptr inbounds i8, ptr %qmatrix, i64 204
  %101 = load i32, ptr %incdec.ptr3.6, align 4
  %mul10.6 = mul nsw i32 %101, %100
  %add.ptr12.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 200
  store i32 %mul10.6, ptr %add.ptr12.6, align 4
  %add.ptr14.6 = getelementptr inbounds i8, ptr %dequant, i64 204
  %102 = load i32, ptr %add.ptr14.6, align 4
  %incdec.ptr15.6 = getelementptr inbounds i8, ptr %qmatrix, i64 208
  %103 = load i32, ptr %incdec.ptr9.6, align 4
  %mul16.6 = mul nsw i32 %103, %102
  %add.ptr18.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 204
  store i32 %mul16.6, ptr %add.ptr18.6, align 4
  %add.ptr20.6 = getelementptr inbounds i8, ptr %dequant, i64 208
  %104 = load i32, ptr %add.ptr20.6, align 4
  %incdec.ptr21.6 = getelementptr inbounds i8, ptr %qmatrix, i64 212
  %105 = load i32, ptr %incdec.ptr15.6, align 4
  %mul22.6 = mul nsw i32 %105, %104
  %add.ptr24.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 208
  store i32 %mul22.6, ptr %add.ptr24.6, align 4
  %add.ptr26.6 = getelementptr inbounds i8, ptr %dequant, i64 212
  %106 = load i32, ptr %add.ptr26.6, align 4
  %incdec.ptr27.6 = getelementptr inbounds i8, ptr %qmatrix, i64 216
  %107 = load i32, ptr %incdec.ptr21.6, align 4
  %mul28.6 = mul nsw i32 %107, %106
  %add.ptr30.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 212
  store i32 %mul28.6, ptr %add.ptr30.6, align 4
  %add.ptr32.6 = getelementptr inbounds i8, ptr %dequant, i64 216
  %108 = load i32, ptr %add.ptr32.6, align 4
  %incdec.ptr33.6 = getelementptr inbounds i8, ptr %qmatrix, i64 220
  %109 = load i32, ptr %incdec.ptr27.6, align 4
  %mul34.6 = mul nsw i32 %109, %108
  %add.ptr36.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 216
  store i32 %mul34.6, ptr %add.ptr36.6, align 4
  %incdec.ptr37.6 = getelementptr inbounds i8, ptr %dequant, i64 224
  %add.ptr39.6 = getelementptr inbounds i8, ptr %dequant, i64 220
  %110 = load i32, ptr %add.ptr39.6, align 4
  %incdec.ptr40.6 = getelementptr inbounds i8, ptr %qmatrix, i64 224
  %111 = load i32, ptr %incdec.ptr33.6, align 4
  %mul41.6 = mul nsw i32 %111, %110
  %incdec.ptr42.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 224
  %add.ptr44.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 220
  store i32 %mul41.6, ptr %add.ptr44.6, align 4
  %112 = load i32, ptr %incdec.ptr37.6, align 4
  %incdec.ptr.7 = getelementptr inbounds i8, ptr %qmatrix, i64 228
  %113 = load i32, ptr %incdec.ptr40.6, align 4
  %mul.7 = mul nsw i32 %113, %112
  store i32 %mul.7, ptr %incdec.ptr42.6, align 4
  %add.ptr.7 = getelementptr inbounds i8, ptr %dequant, i64 228
  %114 = load i32, ptr %add.ptr.7, align 4
  %incdec.ptr3.7 = getelementptr inbounds i8, ptr %qmatrix, i64 232
  %115 = load i32, ptr %incdec.ptr.7, align 4
  %mul4.7 = mul nsw i32 %115, %114
  %add.ptr6.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 228
  store i32 %mul4.7, ptr %add.ptr6.7, align 4
  %add.ptr8.7 = getelementptr inbounds i8, ptr %dequant, i64 232
  %116 = load i32, ptr %add.ptr8.7, align 4
  %incdec.ptr9.7 = getelementptr inbounds i8, ptr %qmatrix, i64 236
  %117 = load i32, ptr %incdec.ptr3.7, align 4
  %mul10.7 = mul nsw i32 %117, %116
  %add.ptr12.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 232
  store i32 %mul10.7, ptr %add.ptr12.7, align 4
  %add.ptr14.7 = getelementptr inbounds i8, ptr %dequant, i64 236
  %118 = load i32, ptr %add.ptr14.7, align 4
  %incdec.ptr15.7 = getelementptr inbounds i8, ptr %qmatrix, i64 240
  %119 = load i32, ptr %incdec.ptr9.7, align 4
  %mul16.7 = mul nsw i32 %119, %118
  %add.ptr18.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 236
  store i32 %mul16.7, ptr %add.ptr18.7, align 4
  %add.ptr20.7 = getelementptr inbounds i8, ptr %dequant, i64 240
  %120 = load i32, ptr %add.ptr20.7, align 4
  %incdec.ptr21.7 = getelementptr inbounds i8, ptr %qmatrix, i64 244
  %121 = load i32, ptr %incdec.ptr15.7, align 4
  %mul22.7 = mul nsw i32 %121, %120
  %add.ptr24.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 240
  store i32 %mul22.7, ptr %add.ptr24.7, align 4
  %add.ptr26.7 = getelementptr inbounds i8, ptr %dequant, i64 244
  %122 = load i32, ptr %add.ptr26.7, align 4
  %incdec.ptr27.7 = getelementptr inbounds i8, ptr %qmatrix, i64 248
  %123 = load i32, ptr %incdec.ptr21.7, align 4
  %mul28.7 = mul nsw i32 %123, %122
  %add.ptr30.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 244
  store i32 %mul28.7, ptr %add.ptr30.7, align 4
  %add.ptr32.7 = getelementptr inbounds i8, ptr %dequant, i64 248
  %124 = load i32, ptr %add.ptr32.7, align 4
  %incdec.ptr33.7 = getelementptr inbounds i8, ptr %qmatrix, i64 252
  %125 = load i32, ptr %incdec.ptr27.7, align 4
  %mul34.7 = mul nsw i32 %125, %124
  %add.ptr36.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 248
  store i32 %mul34.7, ptr %add.ptr36.7, align 4
  %add.ptr39.7 = getelementptr inbounds i8, ptr %dequant, i64 252
  %126 = load i32, ptr %add.ptr39.7, align 4
  %127 = load i32, ptr %incdec.ptr33.7, align 4
  %mul41.7 = mul nsw i32 %127, %126
  %add.ptr44.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 252
  store i32 %mul41.7, ptr %add.ptr44.7, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.peeled.count", i32 6}
!7 = distinct !{!7, !6}
