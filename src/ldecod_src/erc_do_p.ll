; ModuleID = 'ldecod_src/erc_do_p.c'
source_filename = "ldecod_src/erc_do_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_buffer = type { i8, i32, i32, [3 x i32] }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, [2 x i32], [2 x i32] }

@.str = private unnamed_addr constant [29 x i8] c"ercConcealInterFrame: predMB\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Missing POC=%d\0A\00", align 1
@uv_div = internal unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 1, i32 0], [4 x i32] [i32 0, i32 1, i32 0, i32 0]], align 16
@subblk_offset_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16
@subblk_offset_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ercConcealInterFrame(ptr nocapture noundef readonly %recfr, ptr nocapture noundef %object_list, i32 noundef %picSizeX, i32 noundef %picSizeY, ptr noundef %errorVar, i32 noundef %chroma_format_idc) local_unnamed_addr #0 {
entry:
  %predBlocks = alloca [8 x i32], align 16
  %0 = load ptr, ptr %recfr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %predBlocks) #18
  %tobool.not = icmp eq ptr %errorVar, null
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64
  %1 = load i32, ptr %concealment, align 8
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %nOfCorruptedSegments = getelementptr inbounds i8, ptr %errorVar, i64 60
  %2 = load i32, ptr %nOfCorruptedSegments, align 4
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.then
  %cmp.not = icmp eq i32 %chroma_format_idc, 0
  br i1 %cmp.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then4
  %mb_cr_size_x = getelementptr inbounds i8, ptr %0, i64 849108
  %3 = load i32, ptr %mb_cr_size_x, align 4
  %mb_cr_size_y = getelementptr inbounds i8, ptr %0, i64 849112
  %4 = load i32, ptr %mb_cr_size_y, align 8
  %mul = shl i32 %3, 1
  %mul6 = mul i32 %mul, %4
  %add = add nsw i32 %mul6, 256
  %conv = sext i32 %add to i64
  %mul7 = shl nsw i64 %conv, 1
  %call = tail call noalias ptr @malloc(i64 noundef %mul7) #19
  br label %if.end

if.else:                                          ; preds = %if.then4
  %call8 = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %predMB.0 = phi ptr [ %call, %if.then5 ], [ %call8, %if.else ]
  %cmp9 = icmp eq ptr %predMB.0, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #18
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  %shr = ashr i32 %picSizeY, 4
  %shr13 = ashr i32 %picSizeX, 4
  %cmp14315 = icmp sgt i32 %shr13, 0
  br i1 %cmp14315, label %for.body.lr.ph, label %for.end169

for.body.lr.ph:                                   ; preds = %if.end12
  %cmp20313 = icmp sgt i32 %shr, 0
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8
  %5 = lshr i32 %picSizeX, 2
  %shl = and i32 %5, 1073741822
  %shl64 = shl nsw i32 %shr, 1
  %shl65 = shl nuw nsw i32 %shr13, 1
  %erc_mvperMB = getelementptr inbounds i8, ptr %0, i64 856512
  br i1 %cmp20313, label %for.body.us.preheader, label %for.end169

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %6 = zext nneg i32 %shr to i64
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond19.for.inc167_crit_edge.us
  %columnInd.0316.us = phi i32 [ %inc168.us, %for.cond19.for.inc167_crit_edge.us ], [ 0, %for.body.us.preheader ]
  %rem.us = and i32 %columnInd.0316.us, 1
  %tobool16.not.us = icmp eq i32 %rem.us, 0
  %div303.us = lshr i32 %columnInd.0316.us, 1
  %7 = xor i32 %div303.us, -1
  %sub17.us = add nsw i32 %shr13, %7
  %cond.us = select i1 %tobool16.not.us, i32 %div303.us, i32 %sub17.us
  %shl26.us = shl i32 %cond.us, 1
  br label %for.body22.us

for.body22.us:                                    ; preds = %for.body.us, %for.inc164.us
  %row.0314.us = phi i32 [ 0, %for.body.us ], [ %inc165.us, %for.inc164.us ]
  %8 = load ptr, ptr %yCondition, align 8
  %mul25.us = mul i32 %shl, %row.0314.us
  %add27.us = add nsw i32 %mul25.us, %shl26.us
  %idxprom.us = sext i32 %add27.us to i64
  %arrayidx.us = getelementptr inbounds i8, ptr %8, i64 %idxprom.us
  %9 = load i8, ptr %arrayidx.us, align 1
  %cmp30.us = icmp slt i8 %9, 2
  br i1 %cmp30.us, label %for.cond34.us.preheader, label %for.inc164.us

for.cond34.us.preheader:                          ; preds = %for.body22.us
  %10 = sext i32 %row.0314.us to i64
  br label %for.cond34.us

for.cond34.us:                                    ; preds = %for.cond34.us.preheader, %for.body37.us
  %indvars.iv = phi i64 [ %10, %for.cond34.us.preheader ], [ %indvars.iv.next, %for.body37.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp35.us = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp35.us, label %for.body37.us, label %for.cond57.preheader.us

for.body37.us:                                    ; preds = %for.cond34.us
  %11 = trunc nsw i64 %indvars.iv.next to i32
  %mul42.us = mul i32 %shl, %11
  %add44.us = add nsw i32 %mul42.us, %shl26.us
  %idxprom46.us = sext i32 %add44.us to i64
  %arrayidx47.us = getelementptr inbounds i8, ptr %8, i64 %idxprom46.us
  %12 = load i8, ptr %arrayidx47.us, align 1
  %cmp49.us = icmp sgt i8 %12, 1
  br i1 %cmp49.us, label %for.end.us, label %for.cond34.us

for.end.us:                                       ; preds = %for.body37.us
  %13 = trunc nsw i64 %indvars.iv to i32
  %cmp53.not.us = icmp sgt i32 %shr, %13
  br i1 %cmp53.not.us, label %if.else85.us, label %for.cond57.preheader.us

for.body60.us:                                    ; preds = %for.cond57.preheader.us, %if.end79.us
  %currRow.0306.us = phi i32 [ %inc83.us, %if.end79.us ], [ %row.0314.us, %for.cond57.preheader.us ]
  %shl61.us = shl i32 %currRow.0306.us, 1
  %14 = load ptr, ptr %yCondition, align 8
  %call66.us = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %predBlocks, i32 noundef %shl61.us, i32 noundef %shl26.us, ptr noundef %14, i32 noundef %shl64, i32 noundef %shl65, i32 noundef 2, i8 noundef zeroext 0) #18
  %15 = load i32, ptr %erc_mvperMB, align 8
  %cmp67.us = icmp sgt i32 %15, 7
  %mul70.us = mul nsw i32 %currRow.0306.us, %shr13
  %add71.us = add nsw i32 %mul70.us, %cond.us
  br i1 %cmp67.us, label %if.then69.us, label %if.else75.us

if.else75.us:                                     ; preds = %for.body60.us
  call fastcc void @concealByCopy(ptr noundef nonnull %recfr, i32 noundef %add71.us, ptr noundef %object_list, i32 noundef %picSizeX)
  br label %if.end79.us

if.then69.us:                                     ; preds = %for.body60.us
  %16 = load ptr, ptr %yCondition, align 8
  call fastcc void @concealByTrial(ptr noundef nonnull %recfr, ptr noundef %predMB.0, i32 noundef %add71.us, ptr noundef %object_list, ptr noundef nonnull %predBlocks, i32 noundef %picSizeX, ptr noundef %16)
  br label %if.end79.us

if.end79.us:                                      ; preds = %if.then69.us, %if.else75.us
  call void @ercMarkCurrMBConcealed(i32 noundef %add71.us, i32 noundef -1, i32 noundef %picSizeX, ptr noundef nonnull %errorVar) #18
  %inc83.us = add i32 %currRow.0306.us, 1
  %exitcond.not = icmp eq i32 %inc83.us, %shr
  br i1 %exitcond.not, label %for.inc164.us, label %for.body60.us

if.else85.us:                                     ; preds = %for.end.us
  %cmp86.us = icmp eq i32 %row.0314.us, 0
  br i1 %cmp86.us, label %for.cond89.preheader.us, label %if.else120.us

if.else120.us:                                    ; preds = %if.else85.us
  %add121.us = add nsw i32 %13, 1
  %cmp125.not307.us = icmp sgt i32 %row.0314.us, %13
  br i1 %cmp125.not307.us, label %for.inc164.us, label %for.body127.us.preheader

for.body127.us.preheader:                         ; preds = %if.else120.us
  %17 = sub i32 %add121.us, %row.0314.us
  br label %for.body127.us

for.body127.us:                                   ; preds = %for.body127.us.preheader, %if.end155.us
  %i.0310.us = phi i32 [ %inc159.us, %if.end155.us ], [ 0, %for.body127.us.preheader ]
  %firstCorruptedRow.0309.us = phi i32 [ %firstCorruptedRow.1.us, %if.end155.us ], [ %row.0314.us, %for.body127.us.preheader ]
  %lastCorruptedRow.2308.us = phi i32 [ %lastCorruptedRow.3.us, %if.end155.us ], [ %13, %for.body127.us.preheader ]
  %rem128.us = and i32 %i.0310.us, 1
  %tobool129.not.us = icmp ne i32 %rem128.us, 0
  %dec131.us = sext i1 %tobool129.not.us to i32
  %lastCorruptedRow.3.us = add nsw i32 %lastCorruptedRow.2308.us, %dec131.us
  %18 = xor i32 %rem128.us, 1
  %firstCorruptedRow.1.us = add i32 %18, %firstCorruptedRow.0309.us
  %currRow.2.us = select i1 %tobool129.not.us, i32 %lastCorruptedRow.2308.us, i32 %firstCorruptedRow.0309.us
  %shl136.us = shl i32 %currRow.2.us, 1
  %19 = load ptr, ptr %yCondition, align 8
  %call141.us = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %predBlocks, i32 noundef %shl136.us, i32 noundef %shl26.us, ptr noundef %19, i32 noundef %shl64, i32 noundef %shl65, i32 noundef 2, i8 noundef zeroext 0) #18
  %20 = load i32, ptr %erc_mvperMB, align 8
  %cmp143.us = icmp sgt i32 %20, 7
  %mul146.us = mul nsw i32 %currRow.2.us, %shr13
  %add147.us = add nsw i32 %mul146.us, %cond.us
  br i1 %cmp143.us, label %if.then145.us, label %if.else151.us

if.else151.us:                                    ; preds = %for.body127.us
  call fastcc void @concealByCopy(ptr noundef nonnull %recfr, i32 noundef %add147.us, ptr noundef %object_list, i32 noundef %picSizeX)
  br label %if.end155.us

if.then145.us:                                    ; preds = %for.body127.us
  %21 = load ptr, ptr %yCondition, align 8
  call fastcc void @concealByTrial(ptr noundef nonnull %recfr, ptr noundef %predMB.0, i32 noundef %add147.us, ptr noundef %object_list, ptr noundef nonnull %predBlocks, i32 noundef %picSizeX, ptr noundef %21)
  br label %if.end155.us

if.end155.us:                                     ; preds = %if.then145.us, %if.else151.us
  call void @ercMarkCurrMBConcealed(i32 noundef %add147.us, i32 noundef -1, i32 noundef %picSizeX, ptr noundef nonnull %errorVar) #18
  %inc159.us = add nuw i32 %i.0310.us, 1
  %exitcond320.not = icmp eq i32 %inc159.us, %17
  br i1 %exitcond320.not, label %for.inc164.us, label %for.body127.us

for.end118.us:                                    ; preds = %if.end113.us, %for.cond89.preheader.us
  %add119.us = add nsw i32 %13, 1
  br label %for.inc164.us

for.inc164.us:                                    ; preds = %if.end79.us, %if.end155.us, %for.cond57.preheader.us, %if.else120.us, %for.end118.us, %for.body22.us
  %row.2.us = phi i32 [ %row.0314.us, %for.body22.us ], [ %add119.us, %for.end118.us ], [ %add121.us, %if.else120.us ], [ %shr, %for.cond57.preheader.us ], [ %add121.us, %if.end155.us ], [ %shr, %if.end79.us ]
  %inc165.us = add nsw i32 %row.2.us, 1
  %cmp20.us = icmp slt i32 %inc165.us, %shr
  br i1 %cmp20.us, label %for.body22.us, label %for.cond19.for.inc167_crit_edge.us

for.body92.us:                                    ; preds = %for.cond89.preheader.us, %if.end113.us
  %currRow.1312.us = phi i32 [ %dec117.us, %if.end113.us ], [ %13, %for.cond89.preheader.us ]
  %shl94.us = shl nuw i32 %currRow.1312.us, 1
  %22 = load ptr, ptr %yCondition, align 8
  %call99.us = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %predBlocks, i32 noundef %shl94.us, i32 noundef %shl26.us, ptr noundef %22, i32 noundef %shl64, i32 noundef %shl65, i32 noundef 2, i8 noundef zeroext 0) #18
  %23 = load i32, ptr %erc_mvperMB, align 8
  %cmp101.us = icmp sgt i32 %23, 7
  %mul104.us = mul nsw i32 %currRow.1312.us, %shr13
  %add105.us = add nsw i32 %mul104.us, %cond.us
  br i1 %cmp101.us, label %if.then103.us, label %if.else109.us

if.else109.us:                                    ; preds = %for.body92.us
  call fastcc void @concealByCopy(ptr noundef nonnull %recfr, i32 noundef %add105.us, ptr noundef %object_list, i32 noundef %picSizeX)
  br label %if.end113.us

if.then103.us:                                    ; preds = %for.body92.us
  %24 = load ptr, ptr %yCondition, align 8
  call fastcc void @concealByTrial(ptr noundef nonnull %recfr, ptr noundef %predMB.0, i32 noundef %add105.us, ptr noundef %object_list, ptr noundef nonnull %predBlocks, i32 noundef %picSizeX, ptr noundef %24)
  br label %if.end113.us

if.end113.us:                                     ; preds = %if.then103.us, %if.else109.us
  call void @ercMarkCurrMBConcealed(i32 noundef %add105.us, i32 noundef -1, i32 noundef %picSizeX, ptr noundef nonnull %errorVar) #18
  %dec117.us = add nsw i32 %currRow.1312.us, -1
  %cmp90.us = icmp sgt i32 %currRow.1312.us, 0
  br i1 %cmp90.us, label %for.body92.us, label %for.end118.us

for.cond89.preheader.us:                          ; preds = %if.else85.us
  %cmp90311.us = icmp sgt i64 %indvars.iv, -1
  br i1 %cmp90311.us, label %for.body92.us, label %for.end118.us

for.cond57.preheader.us:                          ; preds = %for.cond34.us, %for.end.us
  %cmp58305.us = icmp slt i32 %row.0314.us, %shr
  br i1 %cmp58305.us, label %for.body60.us, label %for.inc164.us

for.cond19.for.inc167_crit_edge.us:               ; preds = %for.inc164.us
  %inc168.us = add nuw nsw i32 %columnInd.0316.us, 1
  %exitcond321.not = icmp eq i32 %inc168.us, %shr13
  br i1 %exitcond321.not, label %for.end169, label %for.body.us

for.end169:                                       ; preds = %for.cond19.for.inc167_crit_edge.us, %for.body.lr.ph, %if.end12
  call void @free(ptr noundef %predMB.0) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then, %for.end169
  %retval.0 = phi i32 [ 1, %for.end169 ], [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %predBlocks) #18
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

declare i32 @ercCollect8PredBlocks(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @concealByTrial(ptr nocapture noundef readonly %recfr, ptr nocapture noundef %predMB, i32 noundef %currMBNum, ptr nocapture noundef %object_list, ptr nocapture noundef readonly %predBlocks, i32 noundef %picSizeX, ptr nocapture noundef writeonly %yCondition) unnamed_addr #0 {
entry:
  %mvBest = alloca [3 x i32], align 4
  %mvPred = alloca [3 x i32], align 8
  %0 = load ptr, ptr %recfr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mvBest)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %mvBest, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mvPred) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %mvPred, i8 0, i64 12, i1 false)
  %shr = ashr i32 %picSizeX, 4
  %shl = shl i32 %currMBNum, 2
  %idx.ext = sext i32 %shl to i64
  %add.ptr = getelementptr inbounds %struct.object_buffer, ptr %object_list, i64 %idx.ext
  %div = sdiv i32 %currMBNum, %shr
  %shr7 = ashr i32 %picSizeX, 3
  %shl5 = shl nsw i32 %shr7, 1
  %mul = mul i32 %shl5, %div
  %rem = srem i32 %currMBNum, %shr
  %shl9 = shl nsw i32 %rem, 1
  %add10 = add nsw i32 %mul, %shl9
  %rem13 = srem i32 %add10, %shr7
  %shl14 = shl nsw i32 %rem13, 3
  %xMin = getelementptr inbounds i8, ptr %add.ptr, i64 4
  store i32 %shl14, ptr %xMin, align 4
  %div29 = sdiv i32 %add10, %shr7
  %shl30 = shl i32 %div29, 3
  %yMin = getelementptr inbounds i8, ptr %add.ptr, i64 8
  store i32 %shl30, ptr %yMin, align 4
  %add38 = add nsw i32 %currMBNum, 1
  %add36 = add nsw i32 %shr, %currMBNum
  %sub34 = add nsw i32 %currMBNum, -1
  %sub = sub nsw i32 %currMBNum, %shr
  %arrayidx181 = getelementptr inbounds i8, ptr %mvPred, i64 4
  %arrayidx183 = getelementptr inbounds i8, ptr %mvPred, i64 8
  %erc_img184 = getelementptr inbounds i8, ptr %0, i64 856520
  %yptr = getelementptr inbounds i8, ptr %recfr, i64 8
  br label %do.body31

do.body31:                                        ; preds = %for.end278, %entry
  %threshold.1 = phi i32 [ 3, %entry ], [ 2, %for.end278 ]
  %compSplit2.1 = phi i32 [ 0, %entry ], [ %compSplit2.4, %for.end278 ]
  %compSplit1.1 = phi i32 [ 0, %entry ], [ %compSplit1.4, %for.end278 ]
  %predMBNum.1 = phi i32 [ 0, %entry ], [ %predMBNum.4, %for.end278 ]
  br label %for.body

for.body:                                         ; preds = %do.body31, %for.inc276
  %indvars.iv = phi i64 [ 4, %do.body31 ], [ %indvars.iv.next, %for.inc276 ]
  %predMBNum.2557 = phi i32 [ %predMBNum.1, %do.body31 ], [ %predMBNum.4, %for.inc276 ]
  %compSplit1.2556 = phi i32 [ %compSplit1.1, %do.body31 ], [ %compSplit1.4, %for.inc276 ]
  %compSplit2.2555 = phi i32 [ %compSplit2.1, %do.body31 ], [ %compSplit2.4, %for.inc276 ]
  %minDist.0553 = phi i32 [ 0, %do.body31 ], [ %minDist.4, %for.inc276 ]
  %fZeroMotionChecked.0552 = phi i32 [ 0, %do.body31 ], [ %fZeroMotionChecked.4, %for.inc276 ]
  %fInterNeighborExists.0550 = phi i32 [ 0, %do.body31 ], [ %fInterNeighborExists.3, %for.inc276 ]
  %arrayidx = getelementptr inbounds i32, ptr %predBlocks, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx, align 4
  %cmp32.not = icmp slt i32 %1, %threshold.1
  br i1 %cmp32.not, label %for.inc276, label %if.then

if.then:                                          ; preds = %for.body
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %2, label %sw.epilog [
    i32 4, label %sw.bb
    i32 5, label %sw.bb33
    i32 6, label %sw.bb35
    i32 7, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.then
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.then
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.then
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb
  %compSplit2.3 = phi i32 [ %compSplit2.2555, %if.then ], [ 2, %sw.bb37 ], [ 1, %sw.bb35 ], [ 3, %sw.bb33 ], [ 3, %sw.bb ]
  %compSplit1.3 = phi i32 [ %compSplit1.2556, %if.then ], [ 0, %sw.bb37 ], [ 0, %sw.bb35 ], [ 1, %sw.bb33 ], [ 2, %sw.bb ]
  %predMBNum.3 = phi i32 [ %predMBNum.2557, %if.then ], [ %add38, %sw.bb37 ], [ %add36, %sw.bb35 ], [ %sub34, %sw.bb33 ], [ %sub, %sw.bb ]
  %shl39 = shl i32 %predMBNum.3, 2
  %idx.ext40 = sext i32 %shl39 to i64
  %add.ptr41 = getelementptr inbounds %struct.object_buffer, ptr %object_list, i64 %idx.ext40
  %3 = load i8, ptr %add.ptr41, align 4
  %cmp42 = icmp ugt i8 %3, 2
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %idx.ext47 = zext nneg i32 %compSplit1.3 to i64
  %add.ptr48 = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext47
  %4 = load i8, ptr %add.ptr48, align 4
  %cmp51 = icmp eq i8 %4, 6
  br i1 %cmp51, label %for.inc276, label %cond.true67

cond.false:                                       ; preds = %sw.epilog
  %cmp58 = icmp eq i8 %3, 2
  br i1 %cmp58, label %for.inc276, label %cond.false114.peel

cond.true67:                                      ; preds = %cond.true
  %idx.ext71 = zext nneg i32 %compSplit2.3 to i64
  %add.ptr72 = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext71
  %5 = load i8, ptr %add.ptr72, align 4
  %cmp75 = icmp eq i8 %5, 6
  br i1 %cmp75, label %for.inc276, label %cond.true104.peel

cond.false114.peel:                               ; preds = %cond.false
  %mv176 = getelementptr inbounds i8, ptr %add.ptr41, i64 12
  %cmp269 = icmp eq i32 %compSplit1.3, %compSplit2.3
  %cond271.neg = select i1 %cmp269, i32 -2, i32 -1
  %cond589 = icmp eq i8 %3, 0
  br i1 %cond589, label %if.then122.peel, label %cond.false114.peel.if.else157.peel_crit_edge

cond.false114.peel.if.else157.peel_crit_edge:     ; preds = %cond.false114.peel
  %.pre569 = zext nneg i32 %compSplit1.3 to i64
  br label %if.else157.peel

cond.true104.peel:                                ; preds = %cond.true67
  %mv176571 = getelementptr inbounds i8, ptr %add.ptr41, i64 12
  %cmp269572 = icmp eq i32 %compSplit1.3, %compSplit2.3
  %cond271.neg573 = select i1 %cmp269572, i32 -2, i32 -1
  %idx.ext108.peel = zext nneg i32 %compSplit1.3 to i64
  %add.ptr109.peel = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext108.peel
  %6 = load i8, ptr %add.ptr109.peel, align 4
  switch i8 %6, label %if.else157.peel [
    i8 4, label %if.then122.peel
    i8 6, label %for.inc268.peel
  ]

if.else157.peel:                                  ; preds = %cond.true104.peel, %cond.false114.peel.if.else157.peel_crit_edge
  %cond271.neg587 = phi i32 [ %cond271.neg, %cond.false114.peel.if.else157.peel_crit_edge ], [ %cond271.neg573, %cond.true104.peel ]
  %mv176582 = phi ptr [ %mv176, %cond.false114.peel.if.else157.peel_crit_edge ], [ %mv176571, %cond.true104.peel ]
  %conv92577 = phi i32 [ 0, %cond.false114.peel.if.else157.peel_crit_edge ], [ 1, %cond.true104.peel ]
  %idx.ext169.peel.pre-phi = phi i64 [ %.pre569, %cond.false114.peel.if.else157.peel_crit_edge ], [ %idx.ext108.peel, %cond.true104.peel ]
  %mv.peel = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext169.peel.pre-phi, i32 3
  %cond.peel = select i1 %cmp42, ptr %mv.peel, ptr %mv176582
  %7 = load <2 x i32>, ptr %cond.peel, align 4
  store <2 x i32> %7, ptr %mvPred, align 8
  %arrayidx182.peel = getelementptr inbounds i8, ptr %cond.peel, i64 8
  %8 = load i32, ptr %arrayidx182.peel, align 4
  br label %if.end189.peel

if.then122.peel:                                  ; preds = %cond.true104.peel, %cond.false114.peel
  %cond271.neg586 = phi i32 [ %cond271.neg573, %cond.true104.peel ], [ %cond271.neg, %cond.false114.peel ]
  %mv176581 = phi ptr [ %mv176571, %cond.true104.peel ], [ %mv176, %cond.false114.peel ]
  %conv92576 = phi i32 [ 1, %cond.true104.peel ], [ 0, %cond.false114.peel ]
  %tobool.not.peel = icmp eq i32 %fZeroMotionChecked.0552, 0
  br i1 %tobool.not.peel, label %if.else124.peel, label %for.inc268.peel

if.else124.peel:                                  ; preds = %if.then122.peel
  store i32 0, ptr %arrayidx181, align 4
  store i32 0, ptr %mvPred, align 8
  br label %if.end189.peel

if.end189.peel:                                   ; preds = %if.else124.peel, %if.else157.peel
  %.sink = phi i32 [ 0, %if.else124.peel ], [ %8, %if.else157.peel ]
  %cond271.neg585 = phi i32 [ %cond271.neg586, %if.else124.peel ], [ %cond271.neg587, %if.else157.peel ]
  %mv176580 = phi ptr [ %mv176581, %if.else124.peel ], [ %mv176582, %if.else157.peel ]
  %conv92575 = phi i32 [ %conv92576, %if.else124.peel ], [ %conv92577, %if.else157.peel ]
  %fZeroMotionChecked.2.peel = phi i32 [ 1, %if.else124.peel ], [ %fZeroMotionChecked.0552, %if.else157.peel ]
  store i32 %.sink, ptr %arrayidx183, align 8
  %9 = load ptr, ptr %erc_img184, align 8
  %10 = load i32, ptr %xMin, align 4
  %11 = load i32, ptr %yMin, align 4
  call fastcc void @buildPredRegionYUV(ptr noundef %9, ptr noundef nonnull %mvPred, i32 noundef %10, i32 noundef %11, ptr noundef %predMB)
  %12 = load ptr, ptr %yptr, align 8
  %call.peel = tail call fastcc i32 @edgeDistortion(ptr noundef nonnull %predBlocks, i32 noundef %add10, ptr noundef %predMB, ptr noundef %12, i32 noundef %picSizeX)
  %cmp203.peel = icmp sge i32 %call.peel, %minDist.0553
  %tobool206.peel = icmp ne i32 %fInterNeighborExists.0550, 0
  %or.cond.peel = select i1 %cmp203.peel, i1 %tobool206.peel, i1 false
  br i1 %or.cond.peel, label %for.inc268.peel, label %for.body211.preheader.peel

for.body211.preheader.peel:                       ; preds = %if.end189.peel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %mvBest, ptr noundef nonnull align 8 dereferenceable(12) %mvPred, i64 12, i1 false)
  %13 = load i8, ptr %add.ptr41, align 4
  %cmp222.peel = icmp ugt i8 %13, 2
  br i1 %cmp222.peel, label %cond.true224.peel, label %cond.false234.peel

cond.false234.peel:                               ; preds = %for.body211.preheader.peel
  %cmp240.peel = icmp eq i8 %13, 0
  br i1 %cmp240.peel, label %cond.end250.peel, label %cond.false246.peel

cond.true224.peel:                                ; preds = %for.body211.preheader.peel
  %idx.ext228.peel = zext nneg i32 %compSplit1.3 to i64
  %add.ptr229.peel = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext228.peel
  %14 = load i8, ptr %add.ptr229.peel, align 4
  %cmp232.peel = icmp eq i8 %14, 4
  br i1 %cmp232.peel, label %cond.end250.peel, label %cond.false246.peel

cond.false246.peel:                               ; preds = %cond.true224.peel, %cond.false234.peel
  br label %cond.end250.peel

cond.end250.peel:                                 ; preds = %cond.false246.peel, %cond.true224.peel, %cond.false234.peel
  %cond251.peel = phi i8 [ 1, %cond.false246.peel ], [ 0, %cond.false234.peel ], [ 0, %cond.true224.peel ]
  store i8 %cond251.peel, ptr %add.ptr, align 4
  %recfr.val541.peel = load ptr, ptr %recfr, align 8
  tail call fastcc void @copyPredMB(i32 noundef %add10, ptr noundef %predMB, ptr %recfr.val541.peel, i32 noundef %picSizeX)
  br label %for.inc268.peel

for.inc268.peel:                                  ; preds = %cond.true104.peel, %cond.end250.peel, %if.end189.peel, %if.then122.peel
  %cond271.neg584 = phi i32 [ %cond271.neg586, %if.then122.peel ], [ %cond271.neg585, %if.end189.peel ], [ %cond271.neg585, %cond.end250.peel ], [ %cond271.neg573, %cond.true104.peel ]
  %mv176579 = phi ptr [ %mv176581, %if.then122.peel ], [ %mv176580, %if.end189.peel ], [ %mv176580, %cond.end250.peel ], [ %mv176571, %cond.true104.peel ]
  %conv92574 = phi i32 [ %conv92576, %if.then122.peel ], [ %conv92575, %if.end189.peel ], [ %conv92575, %cond.end250.peel ], [ 1, %cond.true104.peel ]
  %fInterNeighborExists.2.peel = phi i32 [ %fInterNeighborExists.0550, %if.then122.peel ], [ 1, %if.end189.peel ], [ 1, %cond.end250.peel ], [ %fInterNeighborExists.0550, %cond.true104.peel ]
  %fZeroMotionChecked.3.peel = phi i32 [ 1, %if.then122.peel ], [ %fZeroMotionChecked.2.peel, %if.end189.peel ], [ %fZeroMotionChecked.2.peel, %cond.end250.peel ], [ %fZeroMotionChecked.0552, %cond.true104.peel ]
  %minDist.3.peel = phi i32 [ %minDist.0553, %if.then122.peel ], [ %minDist.0553, %if.end189.peel ], [ %call.peel, %cond.end250.peel ], [ %minDist.0553, %cond.true104.peel ]
  %sub272.peel = add nsw i32 %cond271.neg584, %conv92574
  %cmp94.peel = icmp sgt i32 %sub272.peel, -1
  br i1 %cmp94.peel, label %for.body96, label %for.inc276

for.body96:                                       ; preds = %for.inc268.peel
  %15 = load i8, ptr %add.ptr41, align 4
  %cmp102 = icmp ugt i8 %15, 2
  br i1 %cmp102, label %cond.true104, label %cond.false114

cond.true104:                                     ; preds = %for.body96
  %idx.ext108 = zext nneg i32 %compSplit2.3 to i64
  %add.ptr109 = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext108
  %16 = load i8, ptr %add.ptr109, align 4
  switch i8 %16, label %if.else157 [
    i8 4, label %if.then122
    i8 6, label %for.inc276
  ]

cond.false114:                                    ; preds = %for.body96
  switch i8 %15, label %cond.false114.if.else157_crit_edge [
    i8 0, label %if.then122
    i8 2, label %for.inc276
  ]

cond.false114.if.else157_crit_edge:               ; preds = %cond.false114
  %.pre = zext nneg i32 %compSplit2.3 to i64
  br label %if.else157

if.then122:                                       ; preds = %cond.true104, %cond.false114
  %tobool.not = icmp eq i32 %fZeroMotionChecked.3.peel, 0
  br i1 %tobool.not, label %if.else124, label %for.inc276

if.else124:                                       ; preds = %if.then122
  store i32 0, ptr %arrayidx181, align 4
  store i32 0, ptr %mvPred, align 8
  br label %if.end189

if.else157:                                       ; preds = %cond.true104, %cond.false114.if.else157_crit_edge
  %idx.ext169.pre-phi = phi i64 [ %.pre, %cond.false114.if.else157_crit_edge ], [ %idx.ext108, %cond.true104 ]
  %mv = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext169.pre-phi, i32 3
  %cond = select i1 %cmp102, ptr %mv, ptr %mv176579
  %17 = load <2 x i32>, ptr %cond, align 4
  store <2 x i32> %17, ptr %mvPred, align 8
  %arrayidx182 = getelementptr inbounds i8, ptr %cond, i64 8
  %18 = load i32, ptr %arrayidx182, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.else157, %if.else124
  %.sink595 = phi i32 [ %18, %if.else157 ], [ 0, %if.else124 ]
  %fZeroMotionChecked.2 = phi i32 [ %fZeroMotionChecked.3.peel, %if.else157 ], [ 1, %if.else124 ]
  store i32 %.sink595, ptr %arrayidx183, align 8
  %19 = load ptr, ptr %erc_img184, align 8
  %20 = load i32, ptr %xMin, align 4
  %21 = load i32, ptr %yMin, align 4
  call fastcc void @buildPredRegionYUV(ptr noundef %19, ptr noundef nonnull %mvPred, i32 noundef %20, i32 noundef %21, ptr noundef %predMB)
  %22 = load ptr, ptr %yptr, align 8
  %call = tail call fastcc i32 @edgeDistortion(ptr noundef nonnull %predBlocks, i32 noundef %add10, ptr noundef %predMB, ptr noundef %22, i32 noundef %picSizeX)
  %cmp203 = icmp sge i32 %call, %minDist.3.peel
  %tobool206 = icmp ne i32 %fInterNeighborExists.2.peel, 0
  %or.cond = select i1 %cmp203, i1 %tobool206, i1 false
  br i1 %or.cond, label %for.inc276, label %for.body211.preheader

for.body211.preheader:                            ; preds = %if.end189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %mvBest, ptr noundef nonnull align 8 dereferenceable(12) %mvPred, i64 12, i1 false)
  %23 = load i8, ptr %add.ptr41, align 4
  %cmp222 = icmp ugt i8 %23, 2
  br i1 %cmp222, label %cond.true224, label %cond.false234

cond.true224:                                     ; preds = %for.body211.preheader
  %idx.ext228 = zext nneg i32 %compSplit2.3 to i64
  %add.ptr229 = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext228
  %24 = load i8, ptr %add.ptr229, align 4
  %cmp232 = icmp eq i8 %24, 4
  br i1 %cmp232, label %cond.end250, label %cond.false246

cond.false234:                                    ; preds = %for.body211.preheader
  %cmp240 = icmp eq i8 %23, 0
  br i1 %cmp240, label %cond.end250, label %cond.false246

cond.false246:                                    ; preds = %cond.false234, %cond.true224
  br label %cond.end250

cond.end250:                                      ; preds = %cond.true224, %cond.false234, %cond.false246
  %cond251 = phi i8 [ 1, %cond.false246 ], [ 0, %cond.false234 ], [ 0, %cond.true224 ]
  store i8 %cond251, ptr %add.ptr, align 4
  %recfr.val541 = load ptr, ptr %recfr, align 8
  tail call fastcc void @copyPredMB(i32 noundef %add10, ptr noundef %predMB, ptr %recfr.val541, i32 noundef %picSizeX)
  br label %for.inc276

for.inc276:                                       ; preds = %cond.true104, %for.inc268.peel, %if.then122, %if.end189, %cond.end250, %cond.false114, %cond.true, %cond.false, %cond.true67, %for.body
  %fInterNeighborExists.3 = phi i32 [ %fInterNeighborExists.0550, %for.body ], [ %fInterNeighborExists.0550, %cond.true67 ], [ %fInterNeighborExists.0550, %cond.false ], [ %fInterNeighborExists.0550, %cond.true ], [ %fInterNeighborExists.2.peel, %for.inc268.peel ], [ %fInterNeighborExists.2.peel, %if.then122 ], [ 1, %if.end189 ], [ 1, %cond.end250 ], [ %fInterNeighborExists.2.peel, %cond.false114 ], [ %fInterNeighborExists.2.peel, %cond.true104 ]
  %fZeroMotionChecked.4 = phi i32 [ %fZeroMotionChecked.0552, %for.body ], [ %fZeroMotionChecked.0552, %cond.true67 ], [ %fZeroMotionChecked.0552, %cond.false ], [ %fZeroMotionChecked.0552, %cond.true ], [ %fZeroMotionChecked.3.peel, %for.inc268.peel ], [ 1, %if.then122 ], [ %fZeroMotionChecked.2, %if.end189 ], [ %fZeroMotionChecked.2, %cond.end250 ], [ %fZeroMotionChecked.3.peel, %cond.false114 ], [ %fZeroMotionChecked.3.peel, %cond.true104 ]
  %minDist.4 = phi i32 [ %minDist.0553, %for.body ], [ %minDist.0553, %cond.true67 ], [ %minDist.0553, %cond.false ], [ %minDist.0553, %cond.true ], [ %minDist.3.peel, %for.inc268.peel ], [ %minDist.3.peel, %if.then122 ], [ %minDist.3.peel, %if.end189 ], [ %call, %cond.end250 ], [ %minDist.3.peel, %cond.false114 ], [ %minDist.3.peel, %cond.true104 ]
  %compSplit2.4 = phi i32 [ %compSplit2.2555, %for.body ], [ %compSplit2.3, %cond.true67 ], [ %compSplit2.3, %cond.false ], [ %compSplit2.3, %cond.true ], [ %compSplit2.3, %for.inc268.peel ], [ %compSplit2.3, %if.then122 ], [ %compSplit2.3, %if.end189 ], [ %compSplit2.3, %cond.end250 ], [ %compSplit2.3, %cond.false114 ], [ %compSplit2.3, %cond.true104 ]
  %compSplit1.4 = phi i32 [ %compSplit1.2556, %for.body ], [ %compSplit1.3, %cond.true67 ], [ %compSplit1.3, %cond.false ], [ %compSplit1.3, %cond.true ], [ %compSplit1.3, %for.inc268.peel ], [ %compSplit1.3, %if.then122 ], [ %compSplit1.3, %if.end189 ], [ %compSplit1.3, %cond.end250 ], [ %compSplit1.3, %cond.false114 ], [ %compSplit1.3, %cond.true104 ]
  %predMBNum.4 = phi i32 [ %predMBNum.2557, %for.body ], [ %predMBNum.3, %cond.true67 ], [ %predMBNum.3, %cond.false ], [ %predMBNum.3, %cond.true ], [ %predMBNum.3, %for.inc268.peel ], [ %predMBNum.3, %if.then122 ], [ %predMBNum.3, %if.end189 ], [ %predMBNum.3, %cond.end250 ], [ %predMBNum.3, %cond.false114 ], [ %predMBNum.3, %cond.true104 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end278, label %for.body

for.end278:                                       ; preds = %for.inc276
  %25 = add nsw i32 %threshold.1, -3
  %cmp279 = icmp ult i32 %25, -2
  %cmp281 = icmp eq i32 %fInterNeighborExists.3, 0
  %26 = select i1 %cmp279, i1 %cmp281, i1 false
  br i1 %26, label %do.body31, label %do.end

do.end:                                           ; preds = %for.end278
  %tobool283.not = icmp eq i32 %fZeroMotionChecked.4, 0
  br i1 %tobool283.not, label %if.then284, label %if.end342

if.then284:                                       ; preds = %do.end
  store i32 0, ptr %arrayidx181, align 4
  store i32 0, ptr %mvPred, align 8
  store i32 0, ptr %arrayidx183, align 8
  %27 = load ptr, ptr %erc_img184, align 8
  %28 = load i32, ptr %xMin, align 4
  %29 = load i32, ptr %yMin, align 4
  call fastcc void @buildPredRegionYUV(ptr noundef %27, ptr noundef nonnull %mvPred, i32 noundef %28, i32 noundef %29, ptr noundef %predMB)
  %30 = load ptr, ptr %yptr, align 8
  %call306 = tail call fastcc i32 @edgeDistortion(ptr noundef nonnull %predBlocks, i32 noundef %add10, ptr noundef %predMB, ptr noundef %30, i32 noundef %picSizeX)
  %cmp307 = icmp sge i32 %call306, %minDist.4
  %tobool310 = icmp ne i32 %fInterNeighborExists.3, 0
  %or.cond377 = select i1 %cmp307, i1 %tobool310, i1 false
  br i1 %or.cond377, label %if.end342, label %for.body315.preheader

for.body315.preheader:                            ; preds = %if.then284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %mvBest, ptr noundef nonnull align 8 dereferenceable(12) %mvPred, i64 12, i1 false)
  store i8 0, ptr %add.ptr, align 4
  %recfr.val = load ptr, ptr %recfr, align 8
  tail call fastcc void @copyPredMB(i32 noundef %add10, ptr noundef %predMB, ptr %recfr.val, i32 noundef %picSizeX)
  br label %if.end342

if.end342:                                        ; preds = %for.body315.preheader, %if.then284, %do.end
  %mv349 = getelementptr inbounds i8, ptr %add.ptr, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %mv349, ptr noundef nonnull align 4 dereferenceable(12) %mvBest, i64 12, i1 false)
  %idxprom368 = sext i32 %add10 to i64
  %arrayidx369 = getelementptr inbounds i8, ptr %yCondition, i64 %idxprom368
  store i8 2, ptr %arrayidx369, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mvPred) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mvBest)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @concealByCopy(ptr nocapture noundef readonly %recfr, i32 noundef %currMBNum, ptr nocapture noundef writeonly %object_list, i32 noundef %picSizeX) unnamed_addr #4 {
entry:
  %shl = shl i32 %currMBNum, 2
  %idx.ext = sext i32 %shl to i64
  %add.ptr = getelementptr inbounds %struct.object_buffer, ptr %object_list, i64 %idx.ext
  store i8 0, ptr %add.ptr, align 4
  %shr = ashr i32 %picSizeX, 4
  %rem = srem i32 %currMBNum, %shr
  %shl1 = shl nsw i32 %rem, 4
  %xMin = getelementptr inbounds i8, ptr %add.ptr, i64 4
  store i32 %shl1, ptr %xMin, align 4
  %div = sdiv i32 %currMBNum, %shr
  %shl3 = shl i32 %div, 4
  %yMin = getelementptr inbounds i8, ptr %add.ptr, i64 8
  store i32 %shl3, ptr %yMin, align 4
  %shr7 = ashr i32 %picSizeX, 3
  %shl6 = shl nsw i32 %shr7, 1
  %mul = mul i32 %shl6, %div
  %shl10 = shl nsw i32 %rem, 1
  %add11 = add nsw i32 %mul, %shl10
  %0 = load ptr, ptr %recfr, align 8
  %dec_picture2.i = getelementptr inbounds i8, ptr %0, i64 856456
  %1 = load ptr, ptr %dec_picture2.i, align 8
  %ppSliceList.i = getelementptr inbounds i8, ptr %0, i64 848736
  %2 = load ptr, ptr %ppSliceList.i, align 8
  %3 = load ptr, ptr %2, align 8
  %listX.i = getelementptr inbounds i8, ptr %3, i64 264
  %4 = load ptr, ptr %listX.i, align 8
  %5 = load ptr, ptr %4, align 8
  %rem.i = srem i32 %add11, %shr7
  %shl.i = shl nsw i32 %rem.i, 3
  %div.i = sdiv i32 %add11, %shr7
  %shl6.i = shl i32 %div.i, 3
  %add.i = add nsw i32 %shl6.i, 16
  %imgY.i = getelementptr inbounds i8, ptr %5, i64 128
  %yptr.i = getelementptr inbounds i8, ptr %recfr, i64 8
  %6 = sext i32 %shl.i to i64
  %7 = sext i32 %shl6.i to i64
  %8 = sext i32 %picSizeX to i64
  %9 = sext i32 %add.i to i64
  %indvars.iv.next.i = or disjoint i64 %6, 1
  %indvars.iv.next.i.1 = or disjoint i64 %6, 2
  %indvars.iv.next.i.2 = or disjoint i64 %6, 3
  %indvars.iv.next.i.3 = or disjoint i64 %6, 4
  %indvars.iv.next.i.4 = or disjoint i64 %6, 5
  %indvars.iv.next.i.5 = or disjoint i64 %6, 6
  %indvars.iv.next.i.6 = or disjoint i64 %6, 7
  %indvars.iv.next.i.7 = add nsw i64 %6, 8
  %indvars.iv.next.i.8 = add nsw i64 %6, 9
  %indvars.iv.next.i.9 = add nsw i64 %6, 10
  %indvars.iv.next.i.10 = add nsw i64 %6, 11
  %indvars.iv.next.i.11 = add nsw i64 %6, 12
  %indvars.iv.next.i.12 = add nsw i64 %6, 13
  %indvars.iv.next.i.13 = add nsw i64 %6, 14
  %indvars.iv.next.i.14 = add nsw i64 %6, 15
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.cond7.preheader.i, %entry
  %indvars.iv126.i = phi i64 [ %7, %entry ], [ %indvars.iv.next127.i, %for.cond7.preheader.i ]
  %10 = mul nsw i64 %indvars.iv126.i, %8
  %11 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv126.i
  %12 = load ptr, ptr %arrayidx12.i, align 8
  %arrayidx14.i = getelementptr inbounds i16, ptr %12, i64 %6
  %13 = load i16, ptr %arrayidx14.i, align 2
  %14 = load ptr, ptr %yptr.i, align 8
  %15 = getelementptr i16, ptr %14, i64 %6
  %arrayidx16.i = getelementptr i16, ptr %15, i64 %10
  store i16 %13, ptr %arrayidx16.i, align 2
  %16 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.1 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv126.i
  %17 = load ptr, ptr %arrayidx12.i.1, align 8
  %arrayidx14.i.1 = getelementptr inbounds i16, ptr %17, i64 %indvars.iv.next.i
  %18 = load i16, ptr %arrayidx14.i.1, align 2
  %19 = load ptr, ptr %yptr.i, align 8
  %20 = getelementptr i16, ptr %19, i64 %indvars.iv.next.i
  %arrayidx16.i.1 = getelementptr i16, ptr %20, i64 %10
  store i16 %18, ptr %arrayidx16.i.1, align 2
  %21 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.2 = getelementptr inbounds ptr, ptr %21, i64 %indvars.iv126.i
  %22 = load ptr, ptr %arrayidx12.i.2, align 8
  %arrayidx14.i.2 = getelementptr inbounds i16, ptr %22, i64 %indvars.iv.next.i.1
  %23 = load i16, ptr %arrayidx14.i.2, align 2
  %24 = load ptr, ptr %yptr.i, align 8
  %25 = getelementptr i16, ptr %24, i64 %indvars.iv.next.i.1
  %arrayidx16.i.2 = getelementptr i16, ptr %25, i64 %10
  store i16 %23, ptr %arrayidx16.i.2, align 2
  %26 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.3 = getelementptr inbounds ptr, ptr %26, i64 %indvars.iv126.i
  %27 = load ptr, ptr %arrayidx12.i.3, align 8
  %arrayidx14.i.3 = getelementptr inbounds i16, ptr %27, i64 %indvars.iv.next.i.2
  %28 = load i16, ptr %arrayidx14.i.3, align 2
  %29 = load ptr, ptr %yptr.i, align 8
  %30 = getelementptr i16, ptr %29, i64 %indvars.iv.next.i.2
  %arrayidx16.i.3 = getelementptr i16, ptr %30, i64 %10
  store i16 %28, ptr %arrayidx16.i.3, align 2
  %31 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.4 = getelementptr inbounds ptr, ptr %31, i64 %indvars.iv126.i
  %32 = load ptr, ptr %arrayidx12.i.4, align 8
  %arrayidx14.i.4 = getelementptr inbounds i16, ptr %32, i64 %indvars.iv.next.i.3
  %33 = load i16, ptr %arrayidx14.i.4, align 2
  %34 = load ptr, ptr %yptr.i, align 8
  %35 = getelementptr i16, ptr %34, i64 %indvars.iv.next.i.3
  %arrayidx16.i.4 = getelementptr i16, ptr %35, i64 %10
  store i16 %33, ptr %arrayidx16.i.4, align 2
  %36 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.5 = getelementptr inbounds ptr, ptr %36, i64 %indvars.iv126.i
  %37 = load ptr, ptr %arrayidx12.i.5, align 8
  %arrayidx14.i.5 = getelementptr inbounds i16, ptr %37, i64 %indvars.iv.next.i.4
  %38 = load i16, ptr %arrayidx14.i.5, align 2
  %39 = load ptr, ptr %yptr.i, align 8
  %40 = getelementptr i16, ptr %39, i64 %indvars.iv.next.i.4
  %arrayidx16.i.5 = getelementptr i16, ptr %40, i64 %10
  store i16 %38, ptr %arrayidx16.i.5, align 2
  %41 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.6 = getelementptr inbounds ptr, ptr %41, i64 %indvars.iv126.i
  %42 = load ptr, ptr %arrayidx12.i.6, align 8
  %arrayidx14.i.6 = getelementptr inbounds i16, ptr %42, i64 %indvars.iv.next.i.5
  %43 = load i16, ptr %arrayidx14.i.6, align 2
  %44 = load ptr, ptr %yptr.i, align 8
  %45 = getelementptr i16, ptr %44, i64 %indvars.iv.next.i.5
  %arrayidx16.i.6 = getelementptr i16, ptr %45, i64 %10
  store i16 %43, ptr %arrayidx16.i.6, align 2
  %46 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.7 = getelementptr inbounds ptr, ptr %46, i64 %indvars.iv126.i
  %47 = load ptr, ptr %arrayidx12.i.7, align 8
  %arrayidx14.i.7 = getelementptr inbounds i16, ptr %47, i64 %indvars.iv.next.i.6
  %48 = load i16, ptr %arrayidx14.i.7, align 2
  %49 = load ptr, ptr %yptr.i, align 8
  %50 = getelementptr i16, ptr %49, i64 %indvars.iv.next.i.6
  %arrayidx16.i.7 = getelementptr i16, ptr %50, i64 %10
  store i16 %48, ptr %arrayidx16.i.7, align 2
  %51 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.8 = getelementptr inbounds ptr, ptr %51, i64 %indvars.iv126.i
  %52 = load ptr, ptr %arrayidx12.i.8, align 8
  %arrayidx14.i.8 = getelementptr inbounds i16, ptr %52, i64 %indvars.iv.next.i.7
  %53 = load i16, ptr %arrayidx14.i.8, align 2
  %54 = load ptr, ptr %yptr.i, align 8
  %55 = getelementptr i16, ptr %54, i64 %indvars.iv.next.i.7
  %arrayidx16.i.8 = getelementptr i16, ptr %55, i64 %10
  store i16 %53, ptr %arrayidx16.i.8, align 2
  %56 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.9 = getelementptr inbounds ptr, ptr %56, i64 %indvars.iv126.i
  %57 = load ptr, ptr %arrayidx12.i.9, align 8
  %arrayidx14.i.9 = getelementptr inbounds i16, ptr %57, i64 %indvars.iv.next.i.8
  %58 = load i16, ptr %arrayidx14.i.9, align 2
  %59 = load ptr, ptr %yptr.i, align 8
  %60 = getelementptr i16, ptr %59, i64 %indvars.iv.next.i.8
  %arrayidx16.i.9 = getelementptr i16, ptr %60, i64 %10
  store i16 %58, ptr %arrayidx16.i.9, align 2
  %61 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.10 = getelementptr inbounds ptr, ptr %61, i64 %indvars.iv126.i
  %62 = load ptr, ptr %arrayidx12.i.10, align 8
  %arrayidx14.i.10 = getelementptr inbounds i16, ptr %62, i64 %indvars.iv.next.i.9
  %63 = load i16, ptr %arrayidx14.i.10, align 2
  %64 = load ptr, ptr %yptr.i, align 8
  %65 = getelementptr i16, ptr %64, i64 %indvars.iv.next.i.9
  %arrayidx16.i.10 = getelementptr i16, ptr %65, i64 %10
  store i16 %63, ptr %arrayidx16.i.10, align 2
  %66 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.11 = getelementptr inbounds ptr, ptr %66, i64 %indvars.iv126.i
  %67 = load ptr, ptr %arrayidx12.i.11, align 8
  %arrayidx14.i.11 = getelementptr inbounds i16, ptr %67, i64 %indvars.iv.next.i.10
  %68 = load i16, ptr %arrayidx14.i.11, align 2
  %69 = load ptr, ptr %yptr.i, align 8
  %70 = getelementptr i16, ptr %69, i64 %indvars.iv.next.i.10
  %arrayidx16.i.11 = getelementptr i16, ptr %70, i64 %10
  store i16 %68, ptr %arrayidx16.i.11, align 2
  %71 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.12 = getelementptr inbounds ptr, ptr %71, i64 %indvars.iv126.i
  %72 = load ptr, ptr %arrayidx12.i.12, align 8
  %arrayidx14.i.12 = getelementptr inbounds i16, ptr %72, i64 %indvars.iv.next.i.11
  %73 = load i16, ptr %arrayidx14.i.12, align 2
  %74 = load ptr, ptr %yptr.i, align 8
  %75 = getelementptr i16, ptr %74, i64 %indvars.iv.next.i.11
  %arrayidx16.i.12 = getelementptr i16, ptr %75, i64 %10
  store i16 %73, ptr %arrayidx16.i.12, align 2
  %76 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.13 = getelementptr inbounds ptr, ptr %76, i64 %indvars.iv126.i
  %77 = load ptr, ptr %arrayidx12.i.13, align 8
  %arrayidx14.i.13 = getelementptr inbounds i16, ptr %77, i64 %indvars.iv.next.i.12
  %78 = load i16, ptr %arrayidx14.i.13, align 2
  %79 = load ptr, ptr %yptr.i, align 8
  %80 = getelementptr i16, ptr %79, i64 %indvars.iv.next.i.12
  %arrayidx16.i.13 = getelementptr i16, ptr %80, i64 %10
  store i16 %78, ptr %arrayidx16.i.13, align 2
  %81 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.14 = getelementptr inbounds ptr, ptr %81, i64 %indvars.iv126.i
  %82 = load ptr, ptr %arrayidx12.i.14, align 8
  %arrayidx14.i.14 = getelementptr inbounds i16, ptr %82, i64 %indvars.iv.next.i.13
  %83 = load i16, ptr %arrayidx14.i.14, align 2
  %84 = load ptr, ptr %yptr.i, align 8
  %85 = getelementptr i16, ptr %84, i64 %indvars.iv.next.i.13
  %arrayidx16.i.14 = getelementptr i16, ptr %85, i64 %10
  store i16 %83, ptr %arrayidx16.i.14, align 2
  %86 = load ptr, ptr %imgY.i, align 8
  %arrayidx12.i.15 = getelementptr inbounds ptr, ptr %86, i64 %indvars.iv126.i
  %87 = load ptr, ptr %arrayidx12.i.15, align 8
  %arrayidx14.i.15 = getelementptr inbounds i16, ptr %87, i64 %indvars.iv.next.i.14
  %88 = load i16, ptr %arrayidx14.i.15, align 2
  %89 = load ptr, ptr %yptr.i, align 8
  %90 = getelementptr i16, ptr %89, i64 %indvars.iv.next.i.14
  %arrayidx16.i.15 = getelementptr i16, ptr %90, i64 %10
  store i16 %88, ptr %arrayidx16.i.15, align 2
  %indvars.iv.next127.i = add nsw i64 %indvars.iv126.i, 1
  %cmp.i = icmp slt i64 %indvars.iv.next127.i, %9
  br i1 %cmp.i, label %for.cond7.preheader.i, label %for.end19.i

for.end19.i:                                      ; preds = %for.cond7.preheader.i
  %chroma_format_idc.i = getelementptr inbounds i8, ptr %1, i64 268
  %91 = load i32, ptr %chroma_format_idc.i, align 4
  %idxprom20.i = sext i32 %91 to i64
  %arrayidx21.i = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (i8, ptr @uv_div, i64 16), i64 0, i64 %idxprom20.i
  %92 = load i32, ptr %arrayidx21.i, align 4
  %shr22.i = ashr i32 %shl6.i, %92
  %shr28120.i = ashr i32 %add.i, %92
  %cmp29121.i = icmp slt i32 %shr22.i, %shr28120.i
  br i1 %cmp29121.i, label %for.body30.lr.ph.i, label %copyBetweenFrames.exit

for.body30.lr.ph.i:                               ; preds = %for.end19.i
  %add36.i = add nsw i32 %shl.i, 16
  %imgUV.i = getelementptr inbounds i8, ptr %5, i64 136
  %uptr.i = getelementptr inbounds i8, ptr %recfr, i64 16
  %vptr.i = getelementptr inbounds i8, ptr %recfr, i64 24
  %93 = sext i32 %shr22.i to i64
  br label %for.body30.i

for.body30.i:                                     ; preds = %for.inc67.i, %for.body30.lr.ph.i
  %94 = phi i32 [ %91, %for.body30.lr.ph.i ], [ %116, %for.inc67.i ]
  %indvars.iv134.i = phi i64 [ %93, %for.body30.lr.ph.i ], [ %indvars.iv.next135.i, %for.inc67.i ]
  %idxprom26123.i = phi i64 [ %idxprom20.i, %for.body30.lr.ph.i ], [ %idxprom26.pre-phi.i, %for.inc67.i ]
  %arrayidx33.i = getelementptr inbounds [4 x i32], ptr @uv_div, i64 0, i64 %idxprom26123.i
  %95 = load i32, ptr %arrayidx33.i, align 4
  %shr34.i = ashr i32 %shl.i, %95
  %idxprom38113.i = sext i32 %94 to i64
  %arrayidx39114.i = getelementptr inbounds [4 x i32], ptr @uv_div, i64 0, i64 %idxprom38113.i
  %96 = load i32, ptr %arrayidx39114.i, align 4
  %shr40115.i = ashr i32 %add36.i, %96
  %cmp41116.i = icmp slt i32 %shr34.i, %shr40115.i
  br i1 %cmp41116.i, label %for.body42.lr.ph.i, label %for.inc67.i

for.body42.lr.ph.i:                               ; preds = %for.body30.i
  %97 = sext i32 %shr34.i to i64
  %98 = trunc i64 %indvars.iv134.i to i32
  %99 = mul i32 %98, %picSizeX
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.body42.i, %for.body42.lr.ph.i
  %indvars.iv130.i = phi i64 [ %97, %for.body42.lr.ph.i ], [ %indvars.iv.next131.i, %for.body42.i ]
  %100 = phi i32 [ %96, %for.body42.lr.ph.i ], [ %114, %for.body42.i ]
  %shr47.i = ashr i32 %99, %100
  %101 = sext i32 %shr47.i to i64
  %102 = add nsw i64 %indvars.iv130.i, %101
  %103 = load ptr, ptr %imgUV.i, align 8
  %104 = load ptr, ptr %103, align 8
  %arrayidx51.i = getelementptr inbounds ptr, ptr %104, i64 %indvars.iv134.i
  %105 = load ptr, ptr %arrayidx51.i, align 8
  %arrayidx53.i = getelementptr inbounds i16, ptr %105, i64 %indvars.iv130.i
  %106 = load i16, ptr %arrayidx53.i, align 2
  %107 = load ptr, ptr %uptr.i, align 8
  %arrayidx55.i = getelementptr inbounds i16, ptr %107, i64 %102
  store i16 %106, ptr %arrayidx55.i, align 2
  %108 = load ptr, ptr %imgUV.i, align 8
  %arrayidx57.i = getelementptr inbounds i8, ptr %108, i64 8
  %109 = load ptr, ptr %arrayidx57.i, align 8
  %arrayidx59.i = getelementptr inbounds ptr, ptr %109, i64 %indvars.iv134.i
  %110 = load ptr, ptr %arrayidx59.i, align 8
  %arrayidx61.i = getelementptr inbounds i16, ptr %110, i64 %indvars.iv130.i
  %111 = load i16, ptr %arrayidx61.i, align 2
  %112 = load ptr, ptr %vptr.i, align 8
  %arrayidx63.i = getelementptr inbounds i16, ptr %112, i64 %102
  store i16 %111, ptr %arrayidx63.i, align 2
  %indvars.iv.next131.i = add nsw i64 %indvars.iv130.i, 1
  %113 = load i32, ptr %chroma_format_idc.i, align 4
  %idxprom38.i = sext i32 %113 to i64
  %arrayidx39.i = getelementptr inbounds [4 x i32], ptr @uv_div, i64 0, i64 %idxprom38.i
  %114 = load i32, ptr %arrayidx39.i, align 4
  %shr40.i = ashr i32 %add36.i, %114
  %115 = sext i32 %shr40.i to i64
  %cmp41.i = icmp slt i64 %indvars.iv.next131.i, %115
  br i1 %cmp41.i, label %for.body42.i, label %for.inc67.i

for.inc67.i:                                      ; preds = %for.body42.i, %for.body30.i
  %idxprom26.pre-phi.i = phi i64 [ %idxprom38113.i, %for.body30.i ], [ %idxprom38.i, %for.body42.i ]
  %116 = phi i32 [ %94, %for.body30.i ], [ %113, %for.body42.i ]
  %indvars.iv.next135.i = add nsw i64 %indvars.iv134.i, 1
  %arrayidx27.i = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (i8, ptr @uv_div, i64 16), i64 0, i64 %idxprom26.pre-phi.i
  %117 = load i32, ptr %arrayidx27.i, align 4
  %shr28.i = ashr i32 %add.i, %117
  %118 = sext i32 %shr28.i to i64
  %cmp29.i = icmp slt i64 %indvars.iv.next135.i, %118
  br i1 %cmp29.i, label %for.body30.i, label %copyBetweenFrames.exit

copyBetweenFrames.exit:                           ; preds = %for.inc67.i, %for.end19.i
  ret void
}

declare void @ercMarkCurrMBConcealed(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @conceal_lost_frames(ptr noundef %p_Dpb, ptr nocapture noundef %pSlice) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %delta_pic_order_cnt = getelementptr inbounds i8, ptr %pSlice, i64 88
  %arrayidx3 = getelementptr inbounds i8, ptr %pSlice, i64 92
  %1 = load <2 x i32>, ptr %delta_pic_order_cnt, align 8
  store i32 0, ptr %arrayidx3, align 4
  store i32 0, ptr %delta_pic_order_cnt, align 8
  %IDR_concealment_flag = getelementptr inbounds i8, ptr %0, i64 849252
  %2 = load i32, ptr %IDR_concealment_flag, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %poc_gap = getelementptr inbounds i8, ptr %0, i64 849236
  %3 = load i32, ptr %poc_gap, align 4
  %sub = sub nsw i32 0, %3
  %last_ref_pic_poc = getelementptr inbounds i8, ptr %0, i64 849228
  store i32 %sub, ptr %last_ref_pic_poc, align 4
  %earlier_missing_poc = getelementptr inbounds i8, ptr %0, i64 849244
  store i32 0, ptr %earlier_missing_poc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %pre_frame_num = getelementptr inbounds i8, ptr %0, i64 848944
  %4 = load i32, ptr %pre_frame_num, align 8
  %add = add i32 %4, 1
  %MaxFrameNum = getelementptr inbounds i8, ptr %0, i64 848992
  %5 = load i32, ptr %MaxFrameNum, align 8
  %rem = urem i32 %add, %5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %UnusedShortTermFrameNum.0 = phi i32 [ 0, %if.then ], [ %rem, %if.else ]
  %frame_num = getelementptr inbounds i8, ptr %pSlice, i64 172
  %6 = load i32, ptr %frame_num, align 4
  %cmp8.not119 = icmp eq i32 %6, %UnusedShortTermFrameNum.0
  br i1 %cmp8.not119, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %width = getelementptr inbounds i8, ptr %0, i64 848780
  %height = getelementptr inbounds i8, ptr %0, i64 848784
  %width_cr = getelementptr inbounds i8, ptr %0, i64 848788
  %height_cr = getelementptr inbounds i8, ptr %0, i64 848792
  %last_ref_pic_poc11 = getelementptr inbounds i8, ptr %0, i64 849228
  %ref_poc_gap = getelementptr inbounds i8, ptr %0, i64 849232
  %used_size1.i.i = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %fs.i.i = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %ppSliceList = getelementptr inbounds i8, ptr %0, i64 848736
  %p_Dpb32 = getelementptr inbounds i8, ptr %0, i64 856656
  %pre_frame_num33 = getelementptr inbounds i8, ptr %0, i64 848944
  %MaxFrameNum35 = getelementptr inbounds i8, ptr %0, i64 848992
  %ref_flag = getelementptr i8, ptr %pSlice, i64 13340
  %scevgep = getelementptr i8, ptr %pSlice, i64 13344
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end31
  %UnusedShortTermFrameNum.1120 = phi i32 [ %UnusedShortTermFrameNum.0, %while.body.lr.ph ], [ %rem36, %if.end31 ]
  %7 = load i32, ptr %width, align 4
  %8 = load i32, ptr %height, align 8
  %9 = load i32, ptr %width_cr, align 4
  %10 = load i32, ptr %height_cr, align 8
  %call = tail call ptr @alloc_storable_picture(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #18
  %coded_frame = getelementptr inbounds i8, ptr %call, i64 96
  store i32 1, ptr %coded_frame, align 8
  %pic_num = getelementptr inbounds i8, ptr %call, i64 28
  store i32 %UnusedShortTermFrameNum.1120, ptr %pic_num, align 4
  %frame_num9 = getelementptr inbounds i8, ptr %call, i64 20
  store i32 %UnusedShortTermFrameNum.1120, ptr %frame_num9, align 4
  %non_existing = getelementptr inbounds i8, ptr %call, i64 52
  store i32 0, ptr %non_existing, align 4
  %is_output = getelementptr inbounds i8, ptr %call, i64 48
  store i32 0, ptr %is_output, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %call, i64 44
  store i32 1, ptr %used_for_reference, align 4
  %concealed_pic = getelementptr inbounds i8, ptr %call, i64 320
  store i32 1, ptr %concealed_pic, align 8
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds i8, ptr %call, i64 264
  store i32 0, ptr %adaptive_ref_pic_buffering_flag, align 8
  store i32 %UnusedShortTermFrameNum.1120, ptr %frame_num, align 4
  %11 = load i32, ptr %last_ref_pic_poc11, align 4
  %12 = load i32, ptr %ref_poc_gap, align 8
  %add12 = add nsw i32 %12, %11
  %poc = getelementptr inbounds i8, ptr %call, i64 4
  %13 = insertelement <4 x i32> poison, i32 %add12, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %14, ptr %poc, align 4
  store i32 %add12, ptr %last_ref_pic_poc11, align 4
  %15 = load ptr, ptr %p_Dpb, align 8
  %16 = load i32, ptr %used_size1.i.i, align 4
  %i.027.i.i = add i32 %16, -1
  %cmp28.i.i = icmp sgt i32 %i.027.i.i, -1
  br i1 %cmp28.i.i, label %for.body.lr.ph.i.i, label %copy_prev_pic_to_concealed_pic.exit

for.body.lr.ph.i.i:                               ; preds = %while.body
  %17 = load ptr, ptr %fs.i.i, align 8
  %18 = zext nneg i32 %i.027.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %18, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %17, i64 %indvars.iv.i.i
  %19 = load ptr, ptr %arrayidx.i.i, align 8
  %20 = load i32, ptr %19, align 8
  %cmp2.i.i = icmp eq i32 %20, 3
  br i1 %cmp2.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %frame.i.i = getelementptr inbounds i8, ptr %19, i64 48
  %21 = load ptr, ptr %frame.i.i, align 8
  %used_for_reference.i.i = getelementptr inbounds i8, ptr %21, i64 44
  %22 = load i32, ptr %used_for_reference.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %is_long_term.i.i = getelementptr inbounds i8, ptr %21, i64 40
  %23 = load i8, ptr %is_long_term.i.i, align 8
  %tobool10.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool10.not.i.i, label %copy_prev_pic_to_concealed_pic.exit, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i, %if.then.i.i, %for.body.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %cmp.i.i = icmp sgt i64 %indvars.iv.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %copy_prev_pic_to_concealed_pic.exit

copy_prev_pic_to_concealed_pic.exit:              ; preds = %land.lhs.true.i.i, %for.inc.i.i, %while.body
  %retval.0.i.i = phi ptr [ null, %while.body ], [ null, %for.inc.i.i ], [ %21, %land.lhs.true.i.i ]
  %conceal_slice_type.i = getelementptr inbounds i8, ptr %15, i64 849256
  store i32 0, ptr %conceal_slice_type.i, align 8
  tail call fastcc void @copy_to_conceal(ptr noundef %retval.0.i.i, ptr noundef %call, ptr noundef %15)
  %24 = load i32, ptr %IDR_concealment_flag, align 4
  %cmp19 = icmp eq i32 %24, 1
  br i1 %cmp19, label %if.then20, label %if.end31

if.then20:                                        ; preds = %copy_prev_pic_to_concealed_pic.exit
  %slice_type = getelementptr inbounds i8, ptr %call, i64 248
  store i32 2, ptr %slice_type, align 8
  %idr_flag = getelementptr inbounds i8, ptr %call, i64 252
  store i32 1, ptr %idr_flag, align 4
  %25 = load ptr, ptr %ppSliceList, align 8
  %26 = load ptr, ptr %25, align 8
  %view_id = getelementptr inbounds i8, ptr %26, i64 1176
  %27 = load i32, ptr %view_id, align 8
  tail call void @flush_dpb(ptr noundef nonnull %p_Dpb, i32 noundef %27) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %poc, i8 0, i64 16, i1 false)
  store i32 0, ptr %last_ref_pic_poc11, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then20, %copy_prev_pic_to_concealed_pic.exit
  %28 = load ptr, ptr %p_Dpb32, align 8
  tail call void @store_picture_in_dpb(ptr noundef %28, ptr noundef %call) #18
  store i32 %UnusedShortTermFrameNum.1120, ptr %pre_frame_num33, align 8
  %29 = load i32, ptr %MaxFrameNum35, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %scevgep, ptr noundef nonnull align 4 dereferenceable(64) %ref_flag, i64 64, i1 false)
  %add34 = add nsw i32 %UnusedShortTermFrameNum.1120, 1
  %rem36 = srem i32 %add34, %29
  store i32 0, ptr %ref_flag, align 4
  %cmp8.not = icmp eq i32 %6, %rem36
  br i1 %cmp8.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end31, %if.end
  store <2 x i32> %1, ptr %delta_pic_order_cnt, align 8
  store i32 %6, ptr %frame_num, align 4
  ret void
}

declare ptr @alloc_storable_picture(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @flush_dpb(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @store_picture_in_dpb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_ref_list_for_concealment(ptr nocapture noundef %p_Dpb) local_unnamed_addr #4 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %1 = load i32, ptr %used_size, align 4
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %fs_ref = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %7, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %j.018 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc ]
  %3 = load ptr, ptr %fs, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv
  %4 = load ptr, ptr %arrayidx, align 8
  %concealment_reference = getelementptr inbounds i8, ptr %4, i64 44
  %5 = load i32, ptr %concealment_reference, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %fs_ref, align 8
  %inc = add i32 %j.018, 1
  %idxprom5 = zext i32 %j.018 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 %idxprom5
  store ptr %4, ptr %arrayidx6, align 8
  %.pre = load i32, ptr %used_size, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %7 = phi i32 [ %.pre, %if.then ], [ %2, %for.body ]
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.018, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = zext i32 %7 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %8
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %active_pps = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load ptr, ptr %active_pps, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds i8, ptr %9, i64 2168
  %10 = load i32, ptr %num_ref_idx_l0_active_minus1, align 8
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  store i32 %10, ptr %ref_frames_in_buffer, align 8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @init_lists_for_non_reference_loss(ptr nocapture noundef readonly %p_Dpb, i32 noundef %currSliceType, i32 noundef %currPicStructure) local_unnamed_addr #6 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %active_sps2 = getelementptr inbounds i8, ptr %0, i64 16
  %1 = load ptr, ptr %active_sps2, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %1, i64 2068
  %2 = load i32, ptr %log2_max_frame_num_minus4, align 4
  %add = add i32 %2, 4
  %shl.neg = shl nsw i32 -1, %add
  %cmp = icmp eq i32 %currPicStructure, 0
  br i1 %cmp, label %for.cond.preheader, label %if.end33

for.cond.preheader:                               ; preds = %entry
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  %3 = load i32, ptr %ref_frames_in_buffer, align 8
  %cmp3520.not = icmp eq i32 %3, 0
  br i1 %cmp3520.not, label %if.end33, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %frame_to_conceal = getelementptr inbounds i8, ptr %0, i64 849248
  %fs_ref21 = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %16, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %5 = load ptr, ptr %fs, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv
  %6 = load ptr, ptr %arrayidx, align 8
  %concealment_reference = getelementptr inbounds i8, ptr %6, i64 44
  %7 = load i32, ptr %concealment_reference, align 4
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  %frame_num = getelementptr inbounds i8, ptr %6, i64 20
  %8 = load i32, ptr %frame_num, align 4
  %9 = load i32, ptr %frame_to_conceal, align 8
  %cmp9 = icmp ugt i32 %8, %9
  %sub = select i1 %cmp9, i32 %shl.neg, i32 0
  %.sink = add i32 %8, %sub
  %10 = load ptr, ptr %fs_ref21, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv
  %11 = load ptr, ptr %arrayidx23, align 8
  %frame_num_wrap24 = getelementptr inbounds i8, ptr %11, i64 28
  store i32 %.sink, ptr %frame_num_wrap24, align 4
  %12 = load ptr, ptr %fs_ref21, align 8
  %arrayidx27 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx27, align 8
  %frame_num_wrap28 = getelementptr inbounds i8, ptr %13, i64 28
  %14 = load i32, ptr %frame_num_wrap28, align 4
  %frame = getelementptr inbounds i8, ptr %13, i64 48
  %15 = load ptr, ptr %frame, align 8
  %pic_num = getelementptr inbounds i8, ptr %15, i64 28
  store i32 %14, ptr %pic_num, align 4
  %.pre = load i32, ptr %ref_frames_in_buffer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then5
  %16 = phi i32 [ %4, %for.body ], [ %.pre, %if.then5 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = zext i32 %16 to i64
  %cmp3 = icmp ult i64 %indvars.iv.next, %17
  br i1 %cmp3, label %for.body, label %if.end33

if.end33:                                         ; preds = %for.inc, %for.cond.preheader, %entry
  %18 = or i32 %currPicStructure, %currSliceType
  %or.cond = icmp eq i32 %18, 0
  br i1 %or.cond, label %for.cond38.preheader, label %if.end69

for.cond38.preheader:                             ; preds = %if.end33
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %19 = load i32, ptr %used_size, align 4
  %cmp39522.not = icmp eq i32 %19, 0
  br i1 %cmp39522.not, label %for.end59, label %for.body40.lr.ph

for.body40.lr.ph:                                 ; preds = %for.cond38.preheader
  %fs41 = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %ppSliceList = getelementptr inbounds i8, ptr %0, i64 848736
  br label %for.body40

for.body40:                                       ; preds = %for.body40.lr.ph, %for.inc57
  %20 = phi i32 [ %19, %for.body40.lr.ph ], [ %28, %for.inc57 ]
  %indvars.iv544 = phi i64 [ 0, %for.body40.lr.ph ], [ %indvars.iv.next545, %for.inc57 ]
  %list0idx.0523 = phi i32 [ 0, %for.body40.lr.ph ], [ %list0idx.1, %for.inc57 ]
  %21 = load ptr, ptr %fs41, align 8
  %arrayidx43 = getelementptr inbounds ptr, ptr %21, i64 %indvars.iv544
  %22 = load ptr, ptr %arrayidx43, align 8
  %concealment_reference44 = getelementptr inbounds i8, ptr %22, i64 44
  %23 = load i32, ptr %concealment_reference44, align 4
  %cmp45 = icmp eq i32 %23, 1
  br i1 %cmp45, label %if.then46, label %for.inc57

if.then46:                                        ; preds = %for.body40
  %frame50 = getelementptr inbounds i8, ptr %22, i64 48
  %24 = load ptr, ptr %frame50, align 8
  %25 = load ptr, ptr %ppSliceList, align 8
  %26 = load ptr, ptr %25, align 8
  %listX = getelementptr inbounds i8, ptr %26, i64 264
  %27 = load ptr, ptr %listX, align 8
  %inc53 = add nsw i32 %list0idx.0523, 1
  %idxprom54 = sext i32 %list0idx.0523 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %27, i64 %idxprom54
  store ptr %24, ptr %arrayidx55, align 8
  %.pre578 = load i32, ptr %used_size, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %for.body40, %if.then46
  %28 = phi i32 [ %.pre578, %if.then46 ], [ %20, %for.body40 ]
  %list0idx.1 = phi i32 [ %inc53, %if.then46 ], [ %list0idx.0523, %for.body40 ]
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, 1
  %29 = zext i32 %28 to i64
  %cmp39 = icmp ult i64 %indvars.iv.next545, %29
  br i1 %cmp39, label %for.body40, label %for.end59

for.end59:                                        ; preds = %for.inc57, %for.cond38.preheader
  %list0idx.0.lcssa = phi i32 [ 0, %for.cond38.preheader ], [ %list0idx.1, %for.inc57 ]
  %ppSliceList60 = getelementptr inbounds i8, ptr %0, i64 848736
  %30 = load ptr, ptr %ppSliceList60, align 8
  %31 = load ptr, ptr %30, align 8
  %listX62 = getelementptr inbounds i8, ptr %31, i64 264
  %32 = load ptr, ptr %listX62, align 8
  %conv = sext i32 %list0idx.0.lcssa to i64
  tail call void @qsort(ptr noundef %32, i64 noundef %conv, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #18
  %conv64 = trunc i32 %list0idx.0.lcssa to i8
  %33 = load ptr, ptr %ppSliceList60, align 8
  %34 = load ptr, ptr %33, align 8
  %listXsize = getelementptr inbounds i8, ptr %34, i64 256
  store i8 %conv64, ptr %listXsize, align 8
  br label %if.end69

if.end69:                                         ; preds = %for.end59, %if.end33
  %list0idx.2 = phi i32 [ %list0idx.0.lcssa, %for.end59 ], [ 0, %if.end33 ]
  %cmp70 = icmp eq i32 %currSliceType, 1
  %or.cond391 = and i1 %cmp70, %cmp
  br i1 %or.cond391, label %for.cond76.preheader, label %if.end257

for.cond76.preheader:                             ; preds = %if.end69
  %used_size77 = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %35 = load i32, ptr %used_size77, align 4
  %cmp78525.not = icmp eq i32 %35, 0
  br i1 %cmp78525.not, label %for.end110, label %for.body80.lr.ph

for.body80.lr.ph:                                 ; preds = %for.cond76.preheader
  %fs81 = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %earlier_missing_poc = getelementptr inbounds i8, ptr %0, i64 849244
  %ppSliceList99 = getelementptr inbounds i8, ptr %0, i64 848736
  br label %for.body80

for.body80:                                       ; preds = %for.body80.lr.ph, %for.inc108
  %36 = phi i32 [ %35, %for.body80.lr.ph ], [ %46, %for.inc108 ]
  %indvars.iv547 = phi i64 [ 0, %for.body80.lr.ph ], [ %indvars.iv.next548, %for.inc108 ]
  %list0idx.3526 = phi i32 [ %list0idx.2, %for.body80.lr.ph ], [ %list0idx.4, %for.inc108 ]
  %37 = load ptr, ptr %fs81, align 8
  %arrayidx83 = getelementptr inbounds ptr, ptr %37, i64 %indvars.iv547
  %38 = load ptr, ptr %arrayidx83, align 8
  %concealment_reference84 = getelementptr inbounds i8, ptr %38, i64 44
  %39 = load i32, ptr %concealment_reference84, align 4
  %cmp85 = icmp eq i32 %39, 1
  br i1 %cmp85, label %if.then87, label %for.inc108

if.then87:                                        ; preds = %for.body80
  %40 = load i32, ptr %earlier_missing_poc, align 4
  %frame91 = getelementptr inbounds i8, ptr %38, i64 48
  %41 = load ptr, ptr %frame91, align 8
  %poc = getelementptr inbounds i8, ptr %41, i64 4
  %42 = load i32, ptr %poc, align 4
  %cmp92 = icmp sgt i32 %40, %42
  br i1 %cmp92, label %if.then94, label %for.inc108

if.then94:                                        ; preds = %if.then87
  %43 = load ptr, ptr %ppSliceList99, align 8
  %44 = load ptr, ptr %43, align 8
  %listX101 = getelementptr inbounds i8, ptr %44, i64 264
  %45 = load ptr, ptr %listX101, align 8
  %inc103 = add nsw i32 %list0idx.3526, 1
  %idxprom104 = sext i32 %list0idx.3526 to i64
  %arrayidx105 = getelementptr inbounds ptr, ptr %45, i64 %idxprom104
  store ptr %41, ptr %arrayidx105, align 8
  %.pre579 = load i32, ptr %used_size77, align 4
  br label %for.inc108

for.inc108:                                       ; preds = %for.body80, %if.then94, %if.then87
  %46 = phi i32 [ %.pre579, %if.then94 ], [ %36, %if.then87 ], [ %36, %for.body80 ]
  %list0idx.4 = phi i32 [ %inc103, %if.then94 ], [ %list0idx.3526, %if.then87 ], [ %list0idx.3526, %for.body80 ]
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1
  %47 = zext i32 %46 to i64
  %cmp78 = icmp ult i64 %indvars.iv.next548, %47
  br i1 %cmp78, label %for.body80, label %for.end110

for.end110:                                       ; preds = %for.inc108, %for.cond76.preheader
  %list0idx.3.lcssa = phi i32 [ %list0idx.2, %for.cond76.preheader ], [ %list0idx.4, %for.inc108 ]
  %ppSliceList111 = getelementptr inbounds i8, ptr %0, i64 848736
  %48 = load ptr, ptr %ppSliceList111, align 8
  %49 = load ptr, ptr %48, align 8
  %listX113 = getelementptr inbounds i8, ptr %49, i64 264
  %50 = load ptr, ptr %listX113, align 8
  %conv115 = sext i32 %list0idx.3.lcssa to i64
  tail call void @qsort(ptr noundef %50, i64 noundef %conv115, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #18
  %51 = load i32, ptr %used_size77, align 4
  %cmp118529.not = icmp eq i32 %51, 0
  br i1 %cmp118529.not, label %for.end152, label %for.body120.lr.ph

for.body120.lr.ph:                                ; preds = %for.end110
  %fs121 = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %earlier_missing_poc128 = getelementptr inbounds i8, ptr %0, i64 849244
  br label %for.body120

for.body120:                                      ; preds = %for.body120.lr.ph, %for.inc150
  %52 = phi i32 [ %51, %for.body120.lr.ph ], [ %62, %for.inc150 ]
  %indvars.iv550 = phi i64 [ 0, %for.body120.lr.ph ], [ %indvars.iv.next551, %for.inc150 ]
  %list0idx.5530 = phi i32 [ %list0idx.3.lcssa, %for.body120.lr.ph ], [ %list0idx.6, %for.inc150 ]
  %53 = load ptr, ptr %fs121, align 8
  %arrayidx123 = getelementptr inbounds ptr, ptr %53, i64 %indvars.iv550
  %54 = load ptr, ptr %arrayidx123, align 8
  %concealment_reference124 = getelementptr inbounds i8, ptr %54, i64 44
  %55 = load i32, ptr %concealment_reference124, align 4
  %cmp125 = icmp eq i32 %55, 1
  br i1 %cmp125, label %if.then127, label %for.inc150

if.then127:                                       ; preds = %for.body120
  %56 = load i32, ptr %earlier_missing_poc128, align 4
  %frame132 = getelementptr inbounds i8, ptr %54, i64 48
  %57 = load ptr, ptr %frame132, align 8
  %poc133 = getelementptr inbounds i8, ptr %57, i64 4
  %58 = load i32, ptr %poc133, align 4
  %cmp134 = icmp slt i32 %56, %58
  br i1 %cmp134, label %if.then136, label %for.inc150

if.then136:                                       ; preds = %if.then127
  %59 = load ptr, ptr %ppSliceList111, align 8
  %60 = load ptr, ptr %59, align 8
  %listX143 = getelementptr inbounds i8, ptr %60, i64 264
  %61 = load ptr, ptr %listX143, align 8
  %inc145 = add nsw i32 %list0idx.5530, 1
  %idxprom146 = sext i32 %list0idx.5530 to i64
  %arrayidx147 = getelementptr inbounds ptr, ptr %61, i64 %idxprom146
  store ptr %57, ptr %arrayidx147, align 8
  %.pre580 = load i32, ptr %used_size77, align 4
  br label %for.inc150

for.inc150:                                       ; preds = %for.body120, %if.then136, %if.then127
  %62 = phi i32 [ %.pre580, %if.then136 ], [ %52, %if.then127 ], [ %52, %for.body120 ]
  %list0idx.6 = phi i32 [ %inc145, %if.then136 ], [ %list0idx.5530, %if.then127 ], [ %list0idx.5530, %for.body120 ]
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1
  %63 = zext i32 %62 to i64
  %cmp118 = icmp ult i64 %indvars.iv.next551, %63
  br i1 %cmp118, label %for.body120, label %for.end152

for.end152:                                       ; preds = %for.inc150, %for.end110
  %list0idx.5.lcssa = phi i32 [ %list0idx.3.lcssa, %for.end110 ], [ %list0idx.6, %for.inc150 ]
  %64 = load ptr, ptr %ppSliceList111, align 8
  %65 = load ptr, ptr %64, align 8
  %listX155 = getelementptr inbounds i8, ptr %65, i64 264
  %66 = load ptr, ptr %listX155, align 8
  %arrayidx158 = getelementptr inbounds ptr, ptr %66, i64 %conv115
  %sub159 = sub nsw i32 %list0idx.5.lcssa, %list0idx.3.lcssa
  %conv160 = sext i32 %sub159 to i64
  tail call void @qsort(ptr noundef %arrayidx158, i64 noundef %conv160, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #18
  %cmp162533 = icmp sgt i32 %list0idx.3.lcssa, 0
  br i1 %cmp162533, label %for.body164.preheader, label %for.cond182.preheader

for.body164.preheader:                            ; preds = %for.end152
  %wide.trip.count = zext nneg i32 %list0idx.3.lcssa to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %67 = icmp eq i32 %list0idx.3.lcssa, 1
  br i1 %67, label %for.cond182.preheader.loopexit.unr-lcssa, label %for.body164.preheader.new

for.body164.preheader.new:                        ; preds = %for.body164.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %for.body164

for.cond182.preheader.loopexit.unr-lcssa:         ; preds = %for.body164, %for.body164.preheader
  %indvars.iv553.unr = phi i64 [ 0, %for.body164.preheader ], [ %indvars.iv.next554.1, %for.body164 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond182.preheader, label %for.body164.epil

for.body164.epil:                                 ; preds = %for.cond182.preheader.loopexit.unr-lcssa
  %68 = load ptr, ptr %ppSliceList111, align 8
  %69 = load ptr, ptr %68, align 8
  %listX167.epil = getelementptr inbounds i8, ptr %69, i64 264
  %70 = load ptr, ptr %listX167.epil, align 8
  %arrayidx170.epil = getelementptr inbounds ptr, ptr %70, i64 %indvars.iv553.unr
  %71 = load ptr, ptr %arrayidx170.epil, align 8
  %arrayidx174.epil = getelementptr inbounds i8, ptr %69, i64 272
  %72 = load ptr, ptr %arrayidx174.epil, align 8
  %73 = getelementptr ptr, ptr %72, i64 %indvars.iv553.unr
  %arrayidx178.epil = getelementptr ptr, ptr %73, i64 %conv160
  store ptr %71, ptr %arrayidx178.epil, align 8
  br label %for.cond182.preheader

for.cond182.preheader:                            ; preds = %for.body164.epil, %for.cond182.preheader.loopexit.unr-lcssa, %for.end152
  %cmp183535 = icmp slt i32 %list0idx.3.lcssa, %list0idx.5.lcssa
  br i1 %cmp183535, label %for.body185.preheader, label %for.end201

for.body185.preheader:                            ; preds = %for.cond182.preheader
  %wide.trip.count562 = sext i32 %list0idx.5.lcssa to i64
  %74 = sub nsw i64 %wide.trip.count562, %conv115
  %xtraiter604 = and i64 %74, 1
  %lcmp.mod605.not = icmp eq i64 %xtraiter604, 0
  br i1 %lcmp.mod605.not, label %for.body185.prol.loopexit, label %for.body185.prol

for.body185.prol:                                 ; preds = %for.body185.preheader
  %75 = load ptr, ptr %ppSliceList111, align 8
  %76 = load ptr, ptr %75, align 8
  %listX188.prol = getelementptr inbounds i8, ptr %76, i64 264
  %77 = load ptr, ptr %listX188.prol, align 8
  %arrayidx191.prol = getelementptr inbounds ptr, ptr %77, i64 %conv115
  %78 = load ptr, ptr %arrayidx191.prol, align 8
  %arrayidx195.prol = getelementptr inbounds i8, ptr %76, i64 272
  %79 = load ptr, ptr %arrayidx195.prol, align 8
  store ptr %78, ptr %79, align 8
  %indvars.iv.next559.prol = add nsw i64 %conv115, 1
  br label %for.body185.prol.loopexit

for.body185.prol.loopexit:                        ; preds = %for.body185.prol, %for.body185.preheader
  %indvars.iv558.unr = phi i64 [ %conv115, %for.body185.preheader ], [ %indvars.iv.next559.prol, %for.body185.prol ]
  %80 = add nsw i64 %wide.trip.count562, -1
  %81 = icmp eq i64 %80, %conv115
  br i1 %81, label %for.end201, label %for.body185

for.body164:                                      ; preds = %for.body164, %for.body164.preheader.new
  %indvars.iv553 = phi i64 [ 0, %for.body164.preheader.new ], [ %indvars.iv.next554.1, %for.body164 ]
  %niter = phi i64 [ 0, %for.body164.preheader.new ], [ %niter.next.1, %for.body164 ]
  %82 = load ptr, ptr %ppSliceList111, align 8
  %83 = load ptr, ptr %82, align 8
  %listX167 = getelementptr inbounds i8, ptr %83, i64 264
  %84 = load ptr, ptr %listX167, align 8
  %arrayidx170 = getelementptr inbounds ptr, ptr %84, i64 %indvars.iv553
  %85 = load ptr, ptr %arrayidx170, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %83, i64 272
  %86 = load ptr, ptr %arrayidx174, align 8
  %87 = getelementptr ptr, ptr %86, i64 %indvars.iv553
  %arrayidx178 = getelementptr ptr, ptr %87, i64 %conv160
  store ptr %85, ptr %arrayidx178, align 8
  %indvars.iv.next554 = or disjoint i64 %indvars.iv553, 1
  %88 = load ptr, ptr %ppSliceList111, align 8
  %89 = load ptr, ptr %88, align 8
  %listX167.1 = getelementptr inbounds i8, ptr %89, i64 264
  %90 = load ptr, ptr %listX167.1, align 8
  %arrayidx170.1 = getelementptr inbounds ptr, ptr %90, i64 %indvars.iv.next554
  %91 = load ptr, ptr %arrayidx170.1, align 8
  %arrayidx174.1 = getelementptr inbounds i8, ptr %89, i64 272
  %92 = load ptr, ptr %arrayidx174.1, align 8
  %93 = getelementptr ptr, ptr %92, i64 %indvars.iv.next554
  %arrayidx178.1 = getelementptr ptr, ptr %93, i64 %conv160
  store ptr %91, ptr %arrayidx178.1, align 8
  %indvars.iv.next554.1 = add nuw nsw i64 %indvars.iv553, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond182.preheader.loopexit.unr-lcssa, label %for.body164

for.body185:                                      ; preds = %for.body185.prol.loopexit, %for.body185
  %indvars.iv558 = phi i64 [ %indvars.iv.next559.1, %for.body185 ], [ %indvars.iv558.unr, %for.body185.prol.loopexit ]
  %94 = load ptr, ptr %ppSliceList111, align 8
  %95 = load ptr, ptr %94, align 8
  %listX188 = getelementptr inbounds i8, ptr %95, i64 264
  %96 = load ptr, ptr %listX188, align 8
  %arrayidx191 = getelementptr inbounds ptr, ptr %96, i64 %indvars.iv558
  %97 = load ptr, ptr %arrayidx191, align 8
  %arrayidx195 = getelementptr inbounds i8, ptr %95, i64 272
  %98 = load ptr, ptr %arrayidx195, align 8
  %99 = sub nsw i64 %indvars.iv558, %conv115
  %arrayidx198 = getelementptr inbounds ptr, ptr %98, i64 %99
  store ptr %97, ptr %arrayidx198, align 8
  %indvars.iv.next559 = add nsw i64 %indvars.iv558, 1
  %100 = load ptr, ptr %ppSliceList111, align 8
  %101 = load ptr, ptr %100, align 8
  %listX188.1 = getelementptr inbounds i8, ptr %101, i64 264
  %102 = load ptr, ptr %listX188.1, align 8
  %arrayidx191.1 = getelementptr inbounds ptr, ptr %102, i64 %indvars.iv.next559
  %103 = load ptr, ptr %arrayidx191.1, align 8
  %arrayidx195.1 = getelementptr inbounds i8, ptr %101, i64 272
  %104 = load ptr, ptr %arrayidx195.1, align 8
  %105 = sub nsw i64 %indvars.iv.next559, %conv115
  %arrayidx198.1 = getelementptr inbounds ptr, ptr %104, i64 %105
  store ptr %103, ptr %arrayidx198.1, align 8
  %indvars.iv.next559.1 = add nsw i64 %indvars.iv558, 2
  %exitcond563.not.1 = icmp eq i64 %indvars.iv.next559.1, %wide.trip.count562
  br i1 %exitcond563.not.1, label %for.end201, label %for.body185

for.end201:                                       ; preds = %for.body185.prol.loopexit, %for.body185, %for.cond182.preheader
  %conv202 = trunc i32 %list0idx.5.lcssa to i8
  %106 = load ptr, ptr %ppSliceList111, align 8
  %107 = load ptr, ptr %106, align 8
  %arrayidx206 = getelementptr inbounds i8, ptr %107, i64 257
  store i8 %conv202, ptr %arrayidx206, align 1
  %108 = load ptr, ptr %ppSliceList111, align 8
  %109 = load ptr, ptr %108, align 8
  %listXsize209 = getelementptr inbounds i8, ptr %109, i64 256
  store i8 %conv202, ptr %listXsize209, align 8
  %110 = load ptr, ptr %ppSliceList111, align 8
  %111 = load ptr, ptr %110, align 8
  %listX213 = getelementptr inbounds i8, ptr %111, i64 264
  %112 = load ptr, ptr %listX213, align 8
  %listXsize217 = getelementptr inbounds i8, ptr %111, i64 256
  %113 = load i8, ptr %listXsize217, align 8
  %idxprom220 = sext i8 %113 to i64
  %arrayidx221 = getelementptr inbounds ptr, ptr %112, i64 %idxprom220
  %conv226 = sext i8 %113 to i32
  %sub227 = sub nsw i32 %list0idx.5.lcssa, %conv226
  %conv228 = sext i32 %sub227 to i64
  tail call void @qsort(ptr noundef %arrayidx221, i64 noundef %conv228, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #18
  %114 = load ptr, ptr %ppSliceList111, align 8
  %115 = load ptr, ptr %114, align 8
  %arrayidx232 = getelementptr inbounds i8, ptr %115, i64 272
  %116 = load ptr, ptr %arrayidx232, align 8
  %listXsize235 = getelementptr inbounds i8, ptr %115, i64 256
  %117 = load i8, ptr %listXsize235, align 8
  %idxprom238 = sext i8 %117 to i64
  %arrayidx239 = getelementptr inbounds ptr, ptr %116, i64 %idxprom238
  %conv244 = sext i8 %117 to i32
  %sub245 = sub nsw i32 %list0idx.5.lcssa, %conv244
  %conv246 = sext i32 %sub245 to i64
  tail call void @qsort(ptr noundef %arrayidx239, i64 noundef %conv246, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #18
  %118 = load ptr, ptr %ppSliceList111, align 8
  %119 = load ptr, ptr %118, align 8
  %arrayidx251 = getelementptr inbounds i8, ptr %119, i64 257
  store i8 %conv202, ptr %arrayidx251, align 1
  %120 = load ptr, ptr %ppSliceList111, align 8
  %121 = load ptr, ptr %120, align 8
  %listXsize254 = getelementptr inbounds i8, ptr %121, i64 256
  store i8 %conv202, ptr %listXsize254, align 8
  br label %if.end257

if.end257:                                        ; preds = %for.end201, %if.end69
  %ppSliceList258 = getelementptr inbounds i8, ptr %0, i64 848736
  %122 = load ptr, ptr %ppSliceList258, align 8
  %123 = load ptr, ptr %122, align 8
  %listXsize260 = getelementptr inbounds i8, ptr %123, i64 256
  %124 = load i8, ptr %listXsize260, align 8
  %arrayidx266 = getelementptr inbounds i8, ptr %123, i64 257
  %125 = load i8, ptr %arrayidx266, align 1
  %cmp268 = icmp eq i8 %124, %125
  %cmp275 = icmp sgt i8 %124, 1
  %or.cond518 = and i1 %cmp275, %cmp268
  br i1 %or.cond518, label %for.cond278.preheader, label %if.end328

for.cond278.preheader:                            ; preds = %if.end257
  %listX289 = getelementptr inbounds i8, ptr %123, i64 264
  %126 = load ptr, ptr %listX289, align 8
  %arrayidx296 = getelementptr inbounds i8, ptr %123, i64 272
  %127 = load ptr, ptr %arrayidx296, align 8
  %wide.trip.count567 = zext nneg i8 %124 to i64
  %min.iters.check = icmp ult i8 %124, 8
  br i1 %min.iters.check, label %for.body286.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond278.preheader
  %n.vec = and i64 %wide.trip.count567, 120
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %140, %vector.body ]
  %vec.phi588 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %141, %vector.body ]
  %vec.phi589 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %142, %vector.body ]
  %vec.phi590 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %143, %vector.body ]
  %128 = getelementptr inbounds ptr, ptr %126, i64 %index
  %129 = getelementptr inbounds i8, ptr %128, i64 16
  %130 = getelementptr inbounds i8, ptr %128, i64 32
  %131 = getelementptr inbounds i8, ptr %128, i64 48
  %wide.load = load <2 x ptr>, ptr %128, align 8
  %wide.load591 = load <2 x ptr>, ptr %129, align 8
  %wide.load592 = load <2 x ptr>, ptr %130, align 8
  %wide.load593 = load <2 x ptr>, ptr %131, align 8
  %132 = getelementptr inbounds ptr, ptr %127, i64 %index
  %133 = getelementptr inbounds i8, ptr %132, i64 16
  %134 = getelementptr inbounds i8, ptr %132, i64 32
  %135 = getelementptr inbounds i8, ptr %132, i64 48
  %wide.load594 = load <2 x ptr>, ptr %132, align 8
  %wide.load595 = load <2 x ptr>, ptr %133, align 8
  %wide.load596 = load <2 x ptr>, ptr %134, align 8
  %wide.load597 = load <2 x ptr>, ptr %135, align 8
  %136 = icmp ne <2 x ptr> %wide.load, %wide.load594
  %137 = icmp ne <2 x ptr> %wide.load591, %wide.load595
  %138 = icmp ne <2 x ptr> %wide.load592, %wide.load596
  %139 = icmp ne <2 x ptr> %wide.load593, %wide.load597
  %140 = or <2 x i1> %vec.phi, %136
  %141 = or <2 x i1> %vec.phi588, %137
  %142 = or <2 x i1> %vec.phi589, %138
  %143 = or <2 x i1> %vec.phi590, %139
  %index.next = add nuw i64 %index, 8
  %144 = icmp eq i64 %index.next, %n.vec
  br i1 %144, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %141, %140
  %bin.rdx598 = or <2 x i1> %142, %bin.rdx
  %bin.rdx599 = or <2 x i1> %143, %bin.rdx598
  %bin.rdx599.fr = freeze <2 x i1> %bin.rdx599
  %145 = bitcast <2 x i1> %bin.rdx599.fr to i2
  %.not = icmp ne i2 %145, 0
  %rdx.select = zext i1 %.not to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count567
  br i1 %cmp.n, label %for.end305, label %for.body286.preheader

for.body286.preheader:                            ; preds = %middle.block, %for.cond278.preheader
  %indvars.iv564.ph = phi i64 [ 0, %for.cond278.preheader ], [ %n.vec, %middle.block ]
  %diff.0538.ph = phi i32 [ 0, %for.cond278.preheader ], [ %rdx.select, %middle.block ]
  br label %for.body286

for.body286:                                      ; preds = %for.body286.preheader, %for.body286
  %indvars.iv564 = phi i64 [ %indvars.iv.next565, %for.body286 ], [ %indvars.iv564.ph, %for.body286.preheader ]
  %diff.0538 = phi i32 [ %spec.select, %for.body286 ], [ %diff.0538.ph, %for.body286.preheader ]
  %arrayidx292 = getelementptr inbounds ptr, ptr %126, i64 %indvars.iv564
  %146 = load ptr, ptr %arrayidx292, align 8
  %arrayidx298 = getelementptr inbounds ptr, ptr %127, i64 %indvars.iv564
  %147 = load ptr, ptr %arrayidx298, align 8
  %cmp299.not = icmp eq ptr %146, %147
  %spec.select = select i1 %cmp299.not, i32 %diff.0538, i32 1
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1
  %exitcond568.not = icmp eq i64 %indvars.iv.next565, %wide.trip.count567
  br i1 %exitcond568.not, label %for.end305, label %for.body286, !llvm.loop !8

for.end305:                                       ; preds = %for.body286, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %for.body286 ]
  %tobool.not = icmp eq i32 %spec.select.lcssa, 0
  br i1 %tobool.not, label %if.then306, label %if.end328

if.then306:                                       ; preds = %for.end305
  %148 = load ptr, ptr %127, align 8
  %arrayidx316 = getelementptr inbounds i8, ptr %127, i64 8
  %149 = load ptr, ptr %arrayidx316, align 8
  store ptr %149, ptr %127, align 8
  %150 = load ptr, ptr %ppSliceList258, align 8
  %151 = load ptr, ptr %150, align 8
  %arrayidx325 = getelementptr inbounds i8, ptr %151, i64 272
  %152 = load ptr, ptr %arrayidx325, align 8
  %arrayidx326 = getelementptr inbounds i8, ptr %152, i64 8
  store ptr %148, ptr %arrayidx326, align 8
  %.pre581 = load ptr, ptr %ppSliceList258, align 8
  %.pre582 = load ptr, ptr %.pre581, align 8
  %listXsize331.phi.trans.insert = getelementptr inbounds i8, ptr %.pre582, i64 256
  %.pre583 = load i8, ptr %listXsize331.phi.trans.insert, align 8
  br label %if.end328

if.end328:                                        ; preds = %for.end305, %if.then306, %if.end257
  %153 = phi i8 [ %124, %for.end305 ], [ %.pre583, %if.then306 ], [ %124, %if.end257 ]
  %154 = phi ptr [ %123, %for.end305 ], [ %.pre582, %if.then306 ], [ %123, %if.end257 ]
  %listXsize331 = getelementptr inbounds i8, ptr %154, i64 256
  %conv333 = sext i8 %153 to i32
  %num_ref_frames = getelementptr inbounds i8, ptr %1, i64 3120
  %155 = load i32, ptr %num_ref_frames, align 4
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %conv333, i32 %155)
  %conv334 = trunc i32 %cond.i to i8
  store i8 %conv334, ptr %listXsize331, align 8
  %156 = load ptr, ptr %ppSliceList258, align 8
  %157 = load ptr, ptr %156, align 8
  %arrayidx342 = getelementptr inbounds i8, ptr %157, i64 257
  %158 = load i8, ptr %arrayidx342, align 1
  %conv343 = sext i8 %158 to i32
  %159 = load i32, ptr %num_ref_frames, align 4
  %cond.i519 = tail call noundef i32 @llvm.smin.i32(i32 %conv343, i32 %159)
  %conv346 = trunc i32 %cond.i519 to i8
  store i8 %conv346, ptr %arrayidx342, align 1
  %160 = load ptr, ptr %ppSliceList258, align 8
  %161 = load ptr, ptr %160, align 8
  %arrayidx354 = getelementptr inbounds i8, ptr %161, i64 257
  store i8 0, ptr %arrayidx354, align 1
  %162 = load ptr, ptr %ppSliceList258, align 8
  %163 = load ptr, ptr %162, align 8
  %listXsize357 = getelementptr inbounds i8, ptr %163, i64 256
  %164 = load i8, ptr %listXsize357, align 8
  %cmp361539 = icmp ult i8 %164, 33
  br i1 %cmp361539, label %for.body363.preheader, label %for.end372

for.body363.preheader:                            ; preds = %if.end328
  %conv359 = zext nneg i8 %164 to i64
  br label %for.body363

for.body363:                                      ; preds = %for.body363.preheader, %for.body363
  %indvars.iv569 = phi i64 [ %conv359, %for.body363.preheader ], [ %indvars.iv.next570, %for.body363 ]
  %165 = load ptr, ptr %ppSliceList258, align 8
  %166 = load ptr, ptr %165, align 8
  %listX366 = getelementptr inbounds i8, ptr %166, i64 264
  %167 = load ptr, ptr %listX366, align 8
  %arrayidx369 = getelementptr inbounds ptr, ptr %167, i64 %indvars.iv569
  store ptr null, ptr %arrayidx369, align 8
  %indvars.iv.next570 = add nuw nsw i64 %indvars.iv569, 1
  %168 = and i64 %indvars.iv.next570, 4294967295
  %exitcond572.not = icmp eq i64 %168, 33
  br i1 %exitcond572.not, label %for.end372.loopexit, label %for.body363

for.end372.loopexit:                              ; preds = %for.body363
  %.pre584 = load ptr, ptr %ppSliceList258, align 8
  %.pre585 = load ptr, ptr %.pre584, align 8
  br label %for.end372

for.end372:                                       ; preds = %for.end372.loopexit, %if.end328
  %169 = phi ptr [ %.pre585, %for.end372.loopexit ], [ %163, %if.end328 ]
  %arrayidx376 = getelementptr inbounds i8, ptr %169, i64 257
  %170 = load i8, ptr %arrayidx376, align 1
  %cmp379541 = icmp ult i8 %170, 33
  br i1 %cmp379541, label %for.body381.preheader, label %for.end390

for.body381.preheader:                            ; preds = %for.end372
  %conv377 = zext nneg i8 %170 to i64
  br label %for.body381

for.body381:                                      ; preds = %for.body381.preheader, %for.body381
  %indvars.iv573 = phi i64 [ %conv377, %for.body381.preheader ], [ %indvars.iv.next574, %for.body381 ]
  %171 = load ptr, ptr %ppSliceList258, align 8
  %172 = load ptr, ptr %171, align 8
  %arrayidx385 = getelementptr inbounds i8, ptr %172, i64 272
  %173 = load ptr, ptr %arrayidx385, align 8
  %arrayidx387 = getelementptr inbounds ptr, ptr %173, i64 %indvars.iv573
  store ptr null, ptr %arrayidx387, align 8
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1
  %174 = and i64 %indvars.iv.next574, 4294967295
  %exitcond577.not = icmp eq i64 %174, 33
  br i1 %exitcond577.not, label %for.end390, label %for.body381

for.end390:                                       ; preds = %for.body381, %for.end372
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_pic_num_desc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #8 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %pic_num = getelementptr inbounds i8, ptr %0, i64 28
  %1 = load i32, ptr %pic_num, align 4
  %2 = load ptr, ptr %arg2, align 8
  %pic_num3 = getelementptr inbounds i8, ptr %2, i64 28
  %3 = load i32, ptr %pic_num3, align 4
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_poc_desc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #8 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %poc = getelementptr inbounds i8, ptr %0, i64 4
  %1 = load i32, ptr %poc, align 4
  %2 = load ptr, ptr %arg2, align 8
  %poc3 = getelementptr inbounds i8, ptr %2, i64 4
  %3 = load i32, ptr %poc3, align 4
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_poc_asc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #8 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %poc = getelementptr inbounds i8, ptr %0, i64 4
  %1 = load i32, ptr %poc, align 4
  %2 = load ptr, ptr %arg2, align 8
  %poc3 = getelementptr inbounds i8, ptr %2, i64 4
  %3 = load i32, ptr %poc3, align 4
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_lt_pic_num_asc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #8 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %long_term_pic_num = getelementptr inbounds i8, ptr %0, i64 32
  %1 = load i32, ptr %long_term_pic_num, align 8
  %2 = load ptr, ptr %arg2, align 8
  %long_term_pic_num3 = getelementptr inbounds i8, ptr %2, i64 32
  %3 = load i32, ptr %long_term_pic_num3, align 8
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @get_pic_from_dpb(ptr nocapture noundef readonly %p_Dpb, i32 noundef %missingpoc, ptr nocapture noundef writeonly %pos) local_unnamed_addr #9 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %used_size2 = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %1 = load i32, ptr %used_size2, align 4
  %conceal_mode = getelementptr inbounds i8, ptr %0, i64 849240
  %2 = load i32, ptr %conceal_mode, align 8
  switch i32 %2, label %if.end8 [
    i32 1, label %if.then
    i32 2, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %poc_gap = getelementptr inbounds i8, ptr %0, i64 849236
  %3 = load i32, ptr %poc_gap, align 4
  %sub3 = sub nsw i32 %missingpoc, %3
  br label %if.end8

if.then6:                                         ; preds = %entry
  %poc_gap7 = getelementptr inbounds i8, ptr %0, i64 849236
  %4 = load i32, ptr %poc_gap7, align 4
  %add = add nsw i32 %4, %missingpoc
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.then6, %if.then
  %concealfrom.0 = phi i32 [ %sub3, %if.then ], [ %add, %if.then6 ], [ 0, %entry ]
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %5 = zext i32 %1 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %5, %if.end8 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars = trunc i64 %indvars.iv.next to i32
  %cmp9 = icmp sgt i32 %indvars, -1
  br i1 %cmp9, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %fs, align 8
  %idxprom = and i64 %indvars.iv.next, 2147483647
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %poc = getelementptr inbounds i8, ptr %7, i64 40
  %8 = load i32, ptr %poc, align 8
  %cmp10 = icmp eq i32 %8, %concealfrom.0
  br i1 %cmp10, label %if.then11, label %for.cond

if.then11:                                        ; preds = %for.body
  store i32 %indvars, ptr %pos, align 4
  %9 = load ptr, ptr %fs, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %10 = load ptr, ptr %arrayidx14, align 8
  %frame = getelementptr inbounds i8, ptr %10, i64 48
  %11 = load ptr, ptr %frame, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.then11
  %retval.0 = phi ptr [ %11, %if.then11 ], [ null, %for.cond ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @comp(ptr nocapture noundef readonly %i, ptr nocapture noundef readonly %j) #10 {
entry:
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @init_node(ptr noundef %picture, i32 noundef %missingpoc) local_unnamed_addr #11 {
entry:
  %call = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #20
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  store ptr %picture, ptr %call, align 8
  %missingpocs = getelementptr inbounds i8, ptr %call, i64 8
  store i32 %missingpoc, ptr %missingpocs, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else
  ret ptr %call
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_node(ptr nocapture noundef readonly %ptr) local_unnamed_addr #6 {
entry:
  %missingpocs = getelementptr inbounds i8, ptr %ptr, i64 8
  %0 = load i32, ptr %missingpocs, align 8
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_list(ptr noundef readonly %ptr) local_unnamed_addr #6 {
entry:
  %cmp.not3 = icmp eq ptr %ptr, null
  br i1 %cmp.not3, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %ptr.addr.04 = phi ptr [ %1, %while.body ], [ %ptr, %entry ]
  %missingpocs.i = getelementptr inbounds i8, ptr %ptr.addr.04, i64 8
  %0 = load i32, ptr %missingpocs.i, align 8
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %0)
  %next = getelementptr inbounds i8, ptr %ptr.addr.04, i64 16
  %1 = load ptr, ptr %next, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @delete_list(ptr nocapture noundef %p_Vid, ptr noundef %ptr) local_unnamed_addr #0 {
entry:
  %concealment_head = getelementptr inbounds i8, ptr %p_Vid, i64 848928
  %0 = load ptr, ptr %concealment_head, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %0, %ptr
  br i1 %cmp2, label %if.then3, label %while.cond

if.then3:                                         ; preds = %if.end
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %concealment_head, i8 0, i64 16, i1 false)
  br label %if.end9

while.cond:                                       ; preds = %if.end, %while.cond
  %temp.0 = phi ptr [ %1, %while.cond ], [ %0, %if.end ]
  %next = getelementptr inbounds i8, ptr %temp.0, i64 16
  %1 = load ptr, ptr %next, align 8
  %cmp6.not = icmp eq ptr %1, %ptr
  br i1 %cmp6.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %concealment_end8 = getelementptr inbounds i8, ptr %p_Vid, i64 848936
  store ptr %temp.0, ptr %concealment_end8, align 8
  br label %if.end9

if.end9:                                          ; preds = %while.end, %if.then3
  %cmp11.not28 = icmp eq ptr %ptr, null
  br i1 %cmp11.not28, label %cleanup, label %while.body12

while.body12:                                     ; preds = %if.end9, %while.body12
  %ptr.addr.029 = phi ptr [ %2, %while.body12 ], [ %ptr, %if.end9 ]
  %next13 = getelementptr inbounds i8, ptr %ptr.addr.029, i64 16
  %2 = load ptr, ptr %next13, align 8
  tail call void @free(ptr noundef nonnull %ptr.addr.029) #18
  %cmp11.not = icmp eq ptr %2, null
  br i1 %cmp11.not, label %cleanup, label %while.body12

cleanup:                                          ; preds = %while.body12, %if.end9, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @conceal_non_ref_pics(ptr nocapture noundef %p_Dpb, i32 noundef %diff) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %1 = load i32, ptr %used_size, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pocs_in_dpb = getelementptr inbounds i8, ptr %0, i64 856056
  %size = getelementptr inbounds i8, ptr %p_Dpb, i64 40
  %2 = load i32, ptr %size, align 8
  %conv = zext i32 %2 to i64
  tail call void @qsort(ptr noundef nonnull %pocs_in_dpb, i64 noundef %conv, i64 noundef 4, ptr noundef nonnull @comp) #18
  %3 = load i32, ptr %size, align 8
  %cmp494.not = icmp eq i32 %3, %diff
  br i1 %cmp494.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %poc_gap = getelementptr inbounds i8, ptr %0, i64 849236
  %width = getelementptr inbounds i8, ptr %0, i64 848780
  %height = getelementptr inbounds i8, ptr %0, i64 848784
  %width_cr = getelementptr inbounds i8, ptr %0, i64 848788
  %height_cr = getelementptr inbounds i8, ptr %0, i64 848792
  %earlier_missing_poc = getelementptr inbounds i8, ptr %0, i64 849244
  %fs.i = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %frame_to_conceal = getelementptr inbounds i8, ptr %0, i64 849248
  %fs_ref.i = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  %ref_frames_in_buffer.i = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  %conceal_slice_type = getelementptr inbounds i8, ptr %0, i64 849256
  %concealment_head.i = getelementptr inbounds i8, ptr %0, i64 848928
  %concealment_end2.i = getelementptr inbounds i8, ptr %0, i64 848936
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %41, %for.inc ]
  %pos.095 = phi i32 [ 0, %for.body.lr.ph ], [ %pos.2, %for.inc ]
  store i32 %4, ptr %used_size, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds [100 x i32], ptr %pocs_in_dpb, i64 0, i64 %indvars.iv.next
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %pocs_in_dpb, i64 0, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx11, align 4
  %sub12 = sub nsw i32 %5, %6
  %7 = load i32, ptr %poc_gap, align 4
  %cmp13 = icmp sgt i32 %sub12, %7
  br i1 %cmp13, label %if.then15, label %for.inc

if.then15:                                        ; preds = %for.body
  %8 = load i32, ptr %width, align 4
  %9 = load i32, ptr %height, align 8
  %10 = load i32, ptr %width_cr, align 4
  %11 = load i32, ptr %height_cr, align 8
  %call = tail call ptr @alloc_storable_picture(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) #18
  %12 = load i32, ptr %arrayidx11, align 4
  %13 = load i32, ptr %poc_gap, align 4
  %add20 = add nsw i32 %13, %12
  %14 = load i32, ptr %earlier_missing_poc, align 4
  %cmp21 = icmp sgt i32 %add20, %14
  br i1 %cmp21, label %if.then23, label %for.inc

if.then23:                                        ; preds = %if.then15
  store i32 %add20, ptr %earlier_missing_poc, align 4
  %poc = getelementptr inbounds i8, ptr %call, i64 4
  %15 = insertelement <4 x i32> poison, i32 %add20, i64 0
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %16, ptr %poc, align 4
  %17 = load ptr, ptr %p_Dpb, align 8
  %18 = load i32, ptr %used_size, align 4
  %conceal_mode.i = getelementptr inbounds i8, ptr %17, i64 849240
  %19 = load i32, ptr %conceal_mode.i, align 8
  switch i32 %19, label %if.end8.i [
    i32 1, label %if.then.i
    i32 2, label %if.then6.i
  ]

if.then.i:                                        ; preds = %if.then23
  %poc_gap.i = getelementptr inbounds i8, ptr %17, i64 849236
  %20 = load i32, ptr %poc_gap.i, align 4
  %sub3.i = sub nsw i32 %add20, %20
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then23
  %poc_gap7.i = getelementptr inbounds i8, ptr %17, i64 849236
  %21 = load i32, ptr %poc_gap7.i, align 4
  %add.i = add nsw i32 %21, %add20
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then.i, %if.then23
  %concealfrom.0.i = phi i32 [ %sub3.i, %if.then.i ], [ %add.i, %if.then6.i ], [ 0, %if.then23 ]
  %22 = zext i32 %18 to i64
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.end8.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %22, %if.end8.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %cmp9.i = icmp sgt i32 %indvars.i, -1
  br i1 %cmp9.i, label %for.body.i, label %get_pic_from_dpb.exit

for.body.i:                                       ; preds = %for.cond.i
  %23 = load ptr, ptr %fs.i, align 8
  %idxprom.i = and i64 %indvars.iv.next.i, 2147483647
  %arrayidx.i = getelementptr inbounds ptr, ptr %23, i64 %idxprom.i
  %24 = load ptr, ptr %arrayidx.i, align 8
  %poc.i = getelementptr inbounds i8, ptr %24, i64 40
  %25 = load i32, ptr %poc.i, align 8
  %cmp10.i = icmp eq i32 %25, %concealfrom.0.i
  br i1 %cmp10.i, label %if.then11.i, label %for.cond.i

if.then11.i:                                      ; preds = %for.body.i
  %frame.i = getelementptr inbounds i8, ptr %24, i64 48
  %26 = load ptr, ptr %frame.i, align 8
  br label %get_pic_from_dpb.exit

get_pic_from_dpb.exit:                            ; preds = %for.cond.i, %if.then11.i
  %pos.1 = phi i32 [ %indvars.i, %if.then11.i ], [ %pos.095, %for.cond.i ]
  %retval.0.i = phi ptr [ %26, %if.then11.i ], [ null, %for.cond.i ]
  %add26 = add i32 %pos.1, 1
  store i32 %add26, ptr %used_size, align 4
  %frame_num = getelementptr inbounds i8, ptr %retval.0.i, i64 20
  %27 = load i32, ptr %frame_num, align 4
  %add28 = add i32 %27, 1
  store i32 %add28, ptr %frame_to_conceal, align 8
  %28 = load ptr, ptr %p_Dpb, align 8
  %29 = load i32, ptr %used_size, align 4
  %cmp16.not.i = icmp eq i32 %29, 0
  br i1 %cmp16.not.i, label %update_ref_list_for_concealment.exit, label %for.body.i84

for.body.i84:                                     ; preds = %get_pic_from_dpb.exit, %for.inc.i
  %30 = phi i32 [ %35, %for.inc.i ], [ %29, %get_pic_from_dpb.exit ]
  %indvars.iv.i85 = phi i64 [ %indvars.iv.next.i88, %for.inc.i ], [ 0, %get_pic_from_dpb.exit ]
  %j.018.i = phi i32 [ %j.1.i, %for.inc.i ], [ 0, %get_pic_from_dpb.exit ]
  %31 = load ptr, ptr %fs.i, align 8
  %arrayidx.i86 = getelementptr inbounds ptr, ptr %31, i64 %indvars.iv.i85
  %32 = load ptr, ptr %arrayidx.i86, align 8
  %concealment_reference.i = getelementptr inbounds i8, ptr %32, i64 44
  %33 = load i32, ptr %concealment_reference.i, align 4
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then.i87

if.then.i87:                                      ; preds = %for.body.i84
  %34 = load ptr, ptr %fs_ref.i, align 8
  %inc.i = add i32 %j.018.i, 1
  %idxprom5.i = zext i32 %j.018.i to i64
  %arrayidx6.i = getelementptr inbounds ptr, ptr %34, i64 %idxprom5.i
  store ptr %32, ptr %arrayidx6.i, align 8
  %.pre.i = load i32, ptr %used_size, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i87, %for.body.i84
  %35 = phi i32 [ %.pre.i, %if.then.i87 ], [ %30, %for.body.i84 ]
  %j.1.i = phi i32 [ %inc.i, %if.then.i87 ], [ %j.018.i, %for.body.i84 ]
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i85, 1
  %36 = zext i32 %35 to i64
  %cmp.i = icmp ult i64 %indvars.iv.next.i88, %36
  br i1 %cmp.i, label %for.body.i84, label %update_ref_list_for_concealment.exit

update_ref_list_for_concealment.exit:             ; preds = %for.inc.i, %get_pic_from_dpb.exit
  %active_pps.i = getelementptr inbounds i8, ptr %28, i64 8
  %37 = load ptr, ptr %active_pps.i, align 8
  %num_ref_idx_l0_active_minus1.i = getelementptr inbounds i8, ptr %37, i64 2168
  %38 = load i32, ptr %num_ref_idx_l0_active_minus1.i, align 8
  store i32 %38, ptr %ref_frames_in_buffer.i, align 8
  store i32 1, ptr %conceal_slice_type, align 8
  tail call fastcc void @copy_to_conceal(ptr noundef %retval.0.i, ptr noundef %call, ptr noundef %0)
  %call.i = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #20
  %cmp.i89 = icmp eq ptr %call.i, null
  br i1 %cmp.i89, label %init_node.exit, label %if.else.i

if.else.i:                                        ; preds = %update_ref_list_for_concealment.exit
  store ptr %call, ptr %call.i, align 8
  %missingpocs.i = getelementptr inbounds i8, ptr %call.i, i64 8
  store i32 %add20, ptr %missingpocs.i, align 8
  br label %init_node.exit

init_node.exit:                                   ; preds = %update_ref_list_for_concealment.exit, %if.else.i
  %39 = load ptr, ptr %concealment_head.i, align 8
  %cmp.i90 = icmp eq ptr %39, null
  br i1 %cmp.i90, label %add_node.exit, label %if.end.i

if.end.i:                                         ; preds = %init_node.exit
  %40 = load ptr, ptr %concealment_end2.i, align 8
  %next.i = getelementptr inbounds i8, ptr %40, i64 16
  br label %add_node.exit

add_node.exit:                                    ; preds = %init_node.exit, %if.end.i
  %concealment_head.i.sink = phi ptr [ %next.i, %if.end.i ], [ %concealment_head.i, %init_node.exit ]
  store ptr %call.i, ptr %concealment_head.i.sink, align 8
  store ptr %call.i, ptr %concealment_end2.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %add_node.exit, %if.then15
  %pos.2 = phi i32 [ %pos.1, %add_node.exit ], [ %pos.095, %if.then15 ], [ %pos.095, %for.body ]
  %41 = load i32, ptr %size, align 8
  %sub = sub i32 %41, %diff
  %42 = zext i32 %sub to i64
  %cmp4 = icmp ult i64 %indvars.iv.next, %42
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  store i32 %1, ptr %used_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_to_conceal(ptr nocapture noundef %src, ptr nocapture noundef %dst, ptr noundef %p_Vid) unnamed_addr #0 {
entry:
  %tmp_block.i = alloca ptr, align 8
  %PicSizeInMbs = getelementptr inbounds i8, ptr %src, i64 108
  %0 = load i32, ptr %PicSizeInMbs, align 4
  %PicSizeInMbs2 = getelementptr inbounds i8, ptr %dst, i64 108
  store i32 %0, ptr %PicSizeInMbs2, align 4
  %conceal_slice_type = getelementptr inbounds i8, ptr %p_Vid, i64 849256
  %1 = load i32, ptr %conceal_slice_type, align 8
  %slice_type = getelementptr inbounds i8, ptr %src, i64 248
  store i32 %1, ptr %slice_type, align 8
  %slice_type3 = getelementptr inbounds i8, ptr %dst, i64 248
  store i32 %1, ptr %slice_type3, align 8
  %idr_flag = getelementptr inbounds i8, ptr %dst, i64 252
  store i32 0, ptr %idr_flag, align 4
  %no_output_of_prior_pics_flag = getelementptr inbounds i8, ptr %src, i64 256
  %2 = load i32, ptr %no_output_of_prior_pics_flag, align 8
  %no_output_of_prior_pics_flag4 = getelementptr inbounds i8, ptr %dst, i64 256
  store i32 %2, ptr %no_output_of_prior_pics_flag4, align 8
  %long_term_reference_flag = getelementptr inbounds i8, ptr %src, i64 260
  %3 = load i32, ptr %long_term_reference_flag, align 4
  %long_term_reference_flag5 = getelementptr inbounds i8, ptr %dst, i64 260
  store i32 %3, ptr %long_term_reference_flag5, align 4
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds i8, ptr %src, i64 264
  store i32 0, ptr %adaptive_ref_pic_buffering_flag, align 8
  %adaptive_ref_pic_buffering_flag6 = getelementptr inbounds i8, ptr %dst, i64 264
  store i32 0, ptr %adaptive_ref_pic_buffering_flag6, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %src, i64 268
  %4 = load i32, ptr %chroma_format_idc, align 4
  %chroma_format_idc7 = getelementptr inbounds i8, ptr %dst, i64 268
  store i32 %4, ptr %chroma_format_idc7, align 4
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %src, i64 272
  %5 = load i32, ptr %frame_mbs_only_flag, align 8
  %frame_mbs_only_flag8 = getelementptr inbounds i8, ptr %dst, i64 272
  store i32 %5, ptr %frame_mbs_only_flag8, align 8
  %frame_cropping_flag = getelementptr inbounds i8, ptr %src, i64 276
  %6 = load i32, ptr %frame_cropping_flag, align 4
  %frame_cropping_flag9 = getelementptr inbounds i8, ptr %dst, i64 276
  store i32 %6, ptr %frame_cropping_flag9, align 4
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %src, i64 280
  %7 = load i32, ptr %frame_cropping_rect_left_offset, align 8
  %frame_cropping_rect_left_offset10 = getelementptr inbounds i8, ptr %dst, i64 280
  store i32 %7, ptr %frame_cropping_rect_left_offset10, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds i8, ptr %src, i64 284
  %8 = load i32, ptr %frame_cropping_rect_right_offset, align 4
  %frame_cropping_rect_right_offset11 = getelementptr inbounds i8, ptr %dst, i64 284
  store i32 %8, ptr %frame_cropping_rect_right_offset11, align 4
  %frame_cropping_rect_bottom_offset = getelementptr inbounds i8, ptr %src, i64 292
  %9 = load i32, ptr %frame_cropping_rect_bottom_offset, align 4
  %frame_cropping_rect_bottom_offset12 = getelementptr inbounds i8, ptr %dst, i64 292
  store i32 %9, ptr %frame_cropping_rect_bottom_offset12, align 4
  %frame_cropping_rect_top_offset = getelementptr inbounds i8, ptr %src, i64 288
  %10 = load i32, ptr %frame_cropping_rect_top_offset, align 8
  %frame_cropping_rect_top_offset13 = getelementptr inbounds i8, ptr %dst, i64 288
  store i32 %10, ptr %frame_cropping_rect_top_offset13, align 8
  %qp = getelementptr inbounds i8, ptr %src, i64 296
  %11 = load i32, ptr %qp, align 8
  %qp14 = getelementptr inbounds i8, ptr %dst, i64 296
  store i32 %11, ptr %qp14, align 8
  %slice_qp_delta = getelementptr inbounds i8, ptr %src, i64 308
  %12 = load i32, ptr %slice_qp_delta, align 4
  %slice_qp_delta15 = getelementptr inbounds i8, ptr %dst, i64 308
  store i32 %12, ptr %slice_qp_delta15, align 4
  %conceal_mode = getelementptr inbounds i8, ptr %p_Vid, i64 849240
  %13 = load i32, ptr %conceal_mode, align 8
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %PicWidthInMbs = getelementptr inbounds i8, ptr %src, i64 104
  %14 = load i32, ptr %PicWidthInMbs, align 8
  %PicWidthInMbs16 = getelementptr inbounds i8, ptr %dst, i64 104
  store i32 %14, ptr %PicWidthInMbs16, align 8
  %15 = load i32, ptr %PicSizeInMbs, align 4
  store i32 %15, ptr %PicSizeInMbs2, align 4
  %imgY = getelementptr inbounds i8, ptr %src, i64 128
  %16 = load ptr, ptr %imgY, align 8
  %imgUV = getelementptr inbounds i8, ptr %src, i64 136
  %17 = load ptr, ptr %imgUV, align 8
  %imgY19 = getelementptr inbounds i8, ptr %dst, i64 128
  %18 = load ptr, ptr %imgY19, align 8
  %imgUV20 = getelementptr inbounds i8, ptr %dst, i64 136
  %19 = load ptr, ptr %imgUV20, align 8
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780
  %20 = load i32, ptr %width, align 4
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784
  %21 = load i32, ptr %height, align 8
  %width_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848788
  %22 = load i32, ptr %width_cr, align 4
  %height_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848792
  %23 = load i32, ptr %height_cr, align 8
  %cmp67.i = icmp sgt i32 %21, 0
  %cmp265.i = icmp sgt i32 %20, 0
  %or.cond.i = and i1 %cmp265.i, %cmp67.i
  br i1 %or.cond.i, label %for.cond1.preheader.us.preheader.i, label %for.cond13.preheader.i

for.cond1.preheader.us.preheader.i:               ; preds = %if.then
  %wide.trip.count79.i = zext nneg i32 %21 to i64
  %wide.trip.count.i = zext nneg i32 %20 to i64
  %xtraiter = and i64 %wide.trip.count.i, 3
  %24 = icmp ult i32 %20, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.inc10_crit_edge.us.i, %for.cond1.preheader.us.preheader.i
  %indvars.iv76.i = phi i64 [ 0, %for.cond1.preheader.us.preheader.i ], [ %indvars.iv.next77.i, %for.cond1.for.inc10_crit_edge.us.i ]
  %arrayidx.us.i = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv76.i
  %arrayidx7.us.i = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv76.i
  br i1 %24, label %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa, label %for.body3.us.i

for.body3.us.i:                                   ; preds = %for.cond1.preheader.us.i, %for.body3.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %for.body3.us.i ], [ 0, %for.cond1.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %for.body3.us.i ], [ 0, %for.cond1.preheader.us.i ]
  %25 = load ptr, ptr %arrayidx.us.i, align 8
  %arrayidx5.us.i = getelementptr inbounds i16, ptr %25, i64 %indvars.iv.i
  %26 = load i16, ptr %arrayidx5.us.i, align 2
  %27 = load ptr, ptr %arrayidx7.us.i, align 8
  %arrayidx9.us.i = getelementptr inbounds i16, ptr %27, i64 %indvars.iv.i
  store i16 %26, ptr %arrayidx9.us.i, align 2
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %28 = load ptr, ptr %arrayidx.us.i, align 8
  %arrayidx5.us.i.1 = getelementptr inbounds i16, ptr %28, i64 %indvars.iv.next.i
  %29 = load i16, ptr %arrayidx5.us.i.1, align 2
  %30 = load ptr, ptr %arrayidx7.us.i, align 8
  %arrayidx9.us.i.1 = getelementptr inbounds i16, ptr %30, i64 %indvars.iv.next.i
  store i16 %29, ptr %arrayidx9.us.i.1, align 2
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %31 = load ptr, ptr %arrayidx.us.i, align 8
  %arrayidx5.us.i.2 = getelementptr inbounds i16, ptr %31, i64 %indvars.iv.next.i.1
  %32 = load i16, ptr %arrayidx5.us.i.2, align 2
  %33 = load ptr, ptr %arrayidx7.us.i, align 8
  %arrayidx9.us.i.2 = getelementptr inbounds i16, ptr %33, i64 %indvars.iv.next.i.1
  store i16 %32, ptr %arrayidx9.us.i.2, align 2
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %34 = load ptr, ptr %arrayidx.us.i, align 8
  %arrayidx5.us.i.3 = getelementptr inbounds i16, ptr %34, i64 %indvars.iv.next.i.2
  %35 = load i16, ptr %arrayidx5.us.i.3, align 2
  %36 = load ptr, ptr %arrayidx7.us.i, align 8
  %arrayidx9.us.i.3 = getelementptr inbounds i16, ptr %36, i64 %indvars.iv.next.i.2
  store i16 %35, ptr %arrayidx9.us.i.3, align 2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa, label %for.body3.us.i

for.cond1.for.inc10_crit_edge.us.i.unr-lcssa:     ; preds = %for.body3.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i.3, %for.body3.us.i ]
  br i1 %lcmp.mod.not, label %for.cond1.for.inc10_crit_edge.us.i, label %for.body3.us.i.epil

for.body3.us.i.epil:                              ; preds = %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa, %for.body3.us.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body3.us.i.epil ], [ %indvars.iv.i.unr, %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body3.us.i.epil ], [ 0, %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa ]
  %37 = load ptr, ptr %arrayidx.us.i, align 8
  %arrayidx5.us.i.epil = getelementptr inbounds i16, ptr %37, i64 %indvars.iv.i.epil
  %38 = load i16, ptr %arrayidx5.us.i.epil, align 2
  %39 = load ptr, ptr %arrayidx7.us.i, align 8
  %arrayidx9.us.i.epil = getelementptr inbounds i16, ptr %39, i64 %indvars.iv.i.epil
  store i16 %38, ptr %arrayidx9.us.i.epil, align 2
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond1.for.inc10_crit_edge.us.i, label %for.body3.us.i.epil, !llvm.loop !9

for.cond1.for.inc10_crit_edge.us.i:               ; preds = %for.body3.us.i.epil, %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count79.i
  br i1 %exitcond80.not.i, label %for.cond13.preheader.i, label %for.cond1.preheader.us.i

for.cond13.preheader.i:                           ; preds = %for.cond1.for.inc10_crit_edge.us.i, %if.then
  %cmp1471.i = icmp sgt i32 %23, 0
  br i1 %cmp1471.i, label %for.cond16.preheader.lr.ph.i, label %if.endthread-pre-split

for.cond16.preheader.lr.ph.i:                     ; preds = %for.cond13.preheader.i
  %cmp1769.i = icmp sgt i32 %22, 0
  %arrayidx29.i = getelementptr inbounds i8, ptr %17, i64 8
  %arrayidx34.i = getelementptr inbounds i8, ptr %19, i64 8
  br i1 %cmp1769.i, label %for.cond16.preheader.us.preheader.i, label %if.endthread-pre-split

for.cond16.preheader.us.preheader.i:              ; preds = %for.cond16.preheader.lr.ph.i
  %wide.trip.count89.i = zext nneg i32 %23 to i64
  %wide.trip.count84.i = zext nneg i32 %22 to i64
  br label %for.cond16.preheader.us.i

for.cond16.preheader.us.i:                        ; preds = %for.cond16.for.inc42_crit_edge.us.i, %for.cond16.preheader.us.preheader.i
  %indvars.iv86.i = phi i64 [ 0, %for.cond16.preheader.us.preheader.i ], [ %indvars.iv.next87.i, %for.cond16.for.inc42_crit_edge.us.i ]
  br label %for.body18.us.i

for.body18.us.i:                                  ; preds = %for.body18.us.i, %for.cond16.preheader.us.i
  %indvars.iv81.i = phi i64 [ 0, %for.cond16.preheader.us.i ], [ %indvars.iv.next82.i, %for.body18.us.i ]
  %40 = load ptr, ptr %17, align 8
  %arrayidx21.us.i = getelementptr inbounds ptr, ptr %40, i64 %indvars.iv86.i
  %41 = load ptr, ptr %arrayidx21.us.i, align 8
  %arrayidx23.us.i = getelementptr inbounds i16, ptr %41, i64 %indvars.iv81.i
  %42 = load i16, ptr %arrayidx23.us.i, align 2
  %43 = load ptr, ptr %19, align 8
  %arrayidx26.us.i = getelementptr inbounds ptr, ptr %43, i64 %indvars.iv86.i
  %44 = load ptr, ptr %arrayidx26.us.i, align 8
  %arrayidx28.us.i = getelementptr inbounds i16, ptr %44, i64 %indvars.iv81.i
  store i16 %42, ptr %arrayidx28.us.i, align 2
  %45 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.us.i = getelementptr inbounds ptr, ptr %45, i64 %indvars.iv86.i
  %46 = load ptr, ptr %arrayidx31.us.i, align 8
  %arrayidx33.us.i = getelementptr inbounds i16, ptr %46, i64 %indvars.iv81.i
  %47 = load i16, ptr %arrayidx33.us.i, align 2
  %48 = load ptr, ptr %arrayidx34.i, align 8
  %arrayidx36.us.i = getelementptr inbounds ptr, ptr %48, i64 %indvars.iv86.i
  %49 = load ptr, ptr %arrayidx36.us.i, align 8
  %arrayidx38.us.i = getelementptr inbounds i16, ptr %49, i64 %indvars.iv81.i
  store i16 %47, ptr %arrayidx38.us.i, align 2
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1
  %exitcond85.not.i = icmp eq i64 %indvars.iv.next82.i, %wide.trip.count84.i
  br i1 %exitcond85.not.i, label %for.cond16.for.inc42_crit_edge.us.i, label %for.body18.us.i

for.cond16.for.inc42_crit_edge.us.i:              ; preds = %for.body18.us.i
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1
  %exitcond90.not.i = icmp eq i64 %indvars.iv.next87.i, %wide.trip.count89.i
  br i1 %exitcond90.not.i, label %if.endthread-pre-split, label %for.cond16.preheader.us.i

if.endthread-pre-split:                           ; preds = %for.cond16.for.inc42_crit_edge.us.i, %for.cond13.preheader.i, %for.cond16.preheader.lr.ph.i
  %.pr = load i32, ptr %conceal_mode, align 8
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry
  %50 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %13, %entry ]
  %cmp22 = icmp eq i32 %50, 2
  br i1 %cmp22, label %if.then23, label %if.end214

if.then23:                                        ; preds = %if.end
  %51 = load i32, ptr %chroma_format_idc, align 4
  %cmp25.not = icmp eq i32 %51, 0
  br i1 %cmp25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then23
  %mb_cr_size_x = getelementptr inbounds i8, ptr %p_Vid, i64 849108
  %52 = load i32, ptr %mb_cr_size_x, align 4
  %mb_cr_size_y = getelementptr inbounds i8, ptr %p_Vid, i64 849112
  %53 = load i32, ptr %mb_cr_size_y, align 8
  %mul = mul nsw i32 %53, %52
  %div = sdiv i32 %mul, 8
  %add = add nsw i32 %div, 16
  %conv = sext i32 %add to i64
  %mul28 = shl nsw i64 %conv, 1
  %call = tail call noalias ptr @malloc(i64 noundef %mul28) #19
  br label %if.end30

if.else:                                          ; preds = %if.then23
  %call29 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then26
  %storeYUV.0 = phi ptr [ %call, %if.then26 ], [ %call29, %if.else ]
  %erc_img = getelementptr inbounds i8, ptr %p_Vid, i64 856520
  store ptr %p_Vid, ptr %erc_img, align 8
  %PicWidthInMbs31 = getelementptr inbounds i8, ptr %src, i64 104
  %54 = load i32, ptr %PicWidthInMbs31, align 8
  %PicWidthInMbs32 = getelementptr inbounds i8, ptr %dst, i64 104
  store i32 %54, ptr %PicWidthInMbs32, align 8
  %55 = load i32, ptr %PicSizeInMbs, align 4
  store i32 %55, ptr %PicSizeInMbs2, align 4
  %div38 = udiv i32 %55, %54
  %56 = load i32, ptr %conceal_slice_type, align 8
  %cmp40 = icmp eq i32 %56, 1
  %cond = select i1 %cmp40, i32 2, i32 1
  br i1 %cmp40, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.end30
  %p_Dpb = getelementptr inbounds i8, ptr %p_Vid, i64 856656
  %57 = load ptr, ptr %p_Dpb, align 8
  %58 = load i32, ptr %slice_type3, align 8
  %ppSliceList = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %59 = load ptr, ptr %ppSliceList, align 8
  %60 = load ptr, ptr %59, align 8
  %structure = getelementptr inbounds i8, ptr %60, i64 184
  %61 = load i32, ptr %structure, align 8
  tail call void @init_lists_for_non_reference_loss(ptr noundef %57, i32 noundef %58, i32 noundef %61)
  br label %if.end50

if.else47:                                        ; preds = %if.end30
  %ppSliceList48 = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %62 = load ptr, ptr %ppSliceList48, align 8
  %63 = load ptr, ptr %62, align 8
  tail call void @init_lists(ptr noundef %63) #18
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then45
  %mul51 = shl nsw i32 %div38, 2
  %cmp52362 = icmp sgt i32 %div38, 0
  br i1 %cmp52362, label %for.body.lr.ph, label %for.end213

for.body.lr.ph:                                   ; preds = %if.end50
  %cmp57359 = icmp sgt i32 %54, 0
  %mv_info = getelementptr inbounds i8, ptr %src, i64 152
  %mv_info95 = getelementptr inbounds i8, ptr %dst, i64 152
  %arrayidx72.1.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 2
  %arrayidx72.2.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 4
  %arrayidx72.3.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 6
  %arrayidx72.1419.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 8
  %arrayidx72.1.1.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 10
  %arrayidx72.2.1.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 12
  %arrayidx72.3.1.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 14
  %arrayidx72.2421.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 16
  %arrayidx72.1.2.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 18
  %arrayidx72.2.2.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 20
  %arrayidx72.3.2.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 22
  %arrayidx72.3423.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 24
  %arrayidx72.1.3.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 26
  %arrayidx72.2.3.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 28
  %arrayidx72.3.3.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 30
  %add.ptr.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 32
  %imgY144 = getelementptr inbounds i8, ptr %dst, i64 128
  %imgUV181 = getelementptr inbounds i8, ptr %dst, i64 136
  br i1 %cmp57359, label %for.body.us.preheader, label %for.end213

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %mul56 = shl i32 %54, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %mul56, i32 1)
  %64 = zext nneg i32 %mul51 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  %arrayidx180.us.1 = getelementptr inbounds i8, ptr %storeYUV.0, i64 34
  %arrayidx180.us.1387 = getelementptr inbounds i8, ptr %storeYUV.0, i64 36
  %arrayidx180.us.1.1 = getelementptr inbounds i8, ptr %storeYUV.0, i64 38
  %add.ptr203.us = getelementptr inbounds i8, ptr %storeYUV.0, i64 40
  %arrayidx180.us.1.1395 = getelementptr inbounds i8, ptr %storeYUV.0, i64 42
  %arrayidx180.us.1387.1 = getelementptr inbounds i8, ptr %storeYUV.0, i64 44
  %arrayidx180.us.1.1.1 = getelementptr inbounds i8, ptr %storeYUV.0, i64 46
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond55.for.inc211_crit_edge.us
  %indvars.iv404 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next405, %for.cond55.for.inc211_crit_edge.us ]
  %current_mb_nr.0364.us = phi i32 [ 0, %for.body.us.preheader ], [ %current_mb_nr.2.us, %for.cond55.for.inc211_crit_edge.us ]
  %65 = trunc nuw nsw i64 %indvars.iv404 to i32
  %conv5.i.us = trunc i64 %indvars.iv404 to i16
  %sext.i.us = shl i32 %65, 16
  %mul.i.us = ashr exact i32 %sext.i.us, 14
  %conv13.i.us = ashr exact i32 %sext.i.us, 16
  %66 = shl nuw nsw i64 %indvars.iv404, 1
  %67 = shl i64 %indvars.iv404, 2
  %68 = and i64 %67, 4294967292
  %indvars.iv404.tr = trunc i64 %indvars.iv404 to i32
  %69 = shl i32 %indvars.iv404.tr, 4
  %70 = or disjoint i64 %68, 1
  %71 = or disjoint i64 %68, 2
  %72 = or disjoint i64 %68, 3
  %73 = or disjoint i64 %66, 1
  br label %for.body59.us

for.body59.us:                                    ; preds = %for.body.us, %for.inc208.us
  %indvars.iv = phi i64 [ 0, %for.body.us ], [ %indvars.iv.next, %for.inc208.us ]
  %current_mb_nr.1361.us = phi i32 [ %current_mb_nr.0364.us, %for.body.us ], [ %current_mb_nr.2.us, %for.inc208.us ]
  %74 = load ptr, ptr %mv_info, align 8
  %arrayidx61.us = getelementptr inbounds ptr, ptr %74, i64 %indvars.iv404
  %75 = load ptr, ptr %arrayidx61.us, align 8
  %mv64.us = getelementptr inbounds %struct.pic_motion_params, ptr %75, i64 %indvars.iv, i32 1
  %76 = load i16, ptr %mv64.us, align 8
  %conv66.us = sext i16 %76 to i32
  %div67.us = sdiv i32 %conv66.us, %cond
  %mv_y.us = getelementptr inbounds %struct.pic_motion_params, ptr %75, i64 %indvars.iv, i32 1, i64 0, i32 1
  %77 = load i16, ptr %mv_y.us, align 2
  %conv76.us = sext i16 %77 to i32
  %div77.us = sdiv i32 %conv76.us, %cond
  %ref_idx.us = getelementptr inbounds %struct.pic_motion_params, ptr %75, i64 %indvars.iv, i32 2
  %78 = load i8, ptr %ref_idx.us, align 8
  %narrow.us = call i8 @llvm.smax.i8(i8 %78, i8 0)
  %conv94.us = trunc nsw i32 %div67.us to i16
  %79 = load ptr, ptr %mv_info95, align 8
  %arrayidx97.us = getelementptr inbounds ptr, ptr %79, i64 %indvars.iv404
  %80 = load ptr, ptr %arrayidx97.us, align 8
  %mv100.us = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %indvars.iv, i32 1
  store i16 %conv94.us, ptr %mv100.us, align 8
  %conv104.us = trunc nsw i32 %div77.us to i16
  %81 = load ptr, ptr %mv_info95, align 8
  %arrayidx107.us = getelementptr inbounds ptr, ptr %81, i64 %indvars.iv404
  %82 = load ptr, ptr %arrayidx107.us, align 8
  %mv_y112.us = getelementptr inbounds %struct.pic_motion_params, ptr %82, i64 %indvars.iv, i32 1, i64 0, i32 1
  store i16 %conv104.us, ptr %mv_y112.us, align 2
  %83 = load ptr, ptr %mv_info95, align 8
  %arrayidx117.us = getelementptr inbounds ptr, ptr %83, i64 %indvars.iv404
  %84 = load ptr, ptr %arrayidx117.us, align 8
  %ref_idx120.us = getelementptr inbounds %struct.pic_motion_params, ptr %84, i64 %indvars.iv, i32 2
  store i8 %narrow.us, ptr %ref_idx120.us, align 8
  %85 = trunc nuw nsw i64 %indvars.iv to i32
  %86 = or i32 %85, %65
  %87 = and i32 %86, 3
  %or.cond.us = icmp eq i32 %87, 0
  %inc.us = zext i1 %or.cond.us to i32
  %current_mb_nr.2.us = add nsw i32 %current_mb_nr.1361.us, %inc.us
  %88 = load ptr, ptr %erc_img, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_block.i) #18
  %dec_picture1.i.us = getelementptr inbounds i8, ptr %88, i64 856456
  %89 = load ptr, ptr %dec_picture1.i.us, align 8
  %chroma_format_idc.i.us = getelementptr inbounds i8, ptr %89, i64 268
  %mb_data.i.us = getelementptr inbounds i8, ptr %88, i64 848888
  %90 = load ptr, ptr %mb_data.i.us, align 8
  %idxprom.i.us = sext i32 %current_mb_nr.2.us to i64
  %arrayidx2.i.us = getelementptr inbounds %struct.macroblock, ptr %90, i64 %idxprom.i.us
  %91 = load ptr, ptr %arrayidx2.i.us, align 8
  %call.i.us = call i32 @get_mem2Dpel(ptr noundef nonnull %tmp_block.i, i32 noundef 16, i32 noundef 16) #18
  %conv.i.us = trunc i64 %indvars.iv to i16
  %mb.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 28
  store i16 %conv.i.us, ptr %mb.i.us, align 4
  %y7.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 30
  store i16 %conv5.i.us, ptr %y7.i.us, align 2
  %block_y.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 36
  store i32 %mul.i.us, ptr %block_y.i.us, align 4
  %mb_cr_size_y.i.us = getelementptr inbounds i8, ptr %88, i64 849112
  %92 = load i32, ptr %mb_cr_size_y.i.us, align 8
  %mul14.i.us = mul nsw i32 %92, %conv13.i.us
  %div15.i.us = sdiv i32 %mul14.i.us, 4
  %pix_c_y.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 56
  store i32 %div15.i.us, ptr %pix_c_y.i.us, align 8
  %sext393.i.us = shl i32 %85, 16
  %conv18.i.us = ashr exact i32 %sext393.i.us, 16
  %mul19.i.us = ashr exact i32 %sext393.i.us, 14
  %block_x.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 32
  store i32 %mul19.i.us, ptr %block_x.i.us, align 8
  %mb_cr_size_x.i.us = getelementptr inbounds i8, ptr %88, i64 849108
  %93 = load i32, ptr %mb_cr_size_x.i.us, align 4
  %mul23.i.us = mul nsw i32 %93, %conv18.i.us
  %div24.i.us = sdiv i32 %mul23.i.us, 4
  %pix_c_x.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 52
  store i32 %div24.i.us, ptr %pix_c_x.i.us, align 4
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %94 = shl i32 %indvars.iv.tr, 4
  %add.i.us = add nsw i32 %div67.us, %94
  %add29.i.us = add nsw i32 %div77.us, %69
  %listX.i.us = getelementptr inbounds i8, ptr %91, i64 264
  %95 = load ptr, ptr %listX.i.us, align 8
  %idxprom32.i.us = zext nneg i8 %narrow.us to i64
  %arrayidx33.i.us = getelementptr inbounds ptr, ptr %95, i64 %idxprom32.i.us
  %96 = load ptr, ptr %arrayidx33.i.us, align 8
  %97 = load ptr, ptr %tmp_block.i, align 8
  %iLumaStride.i.us = getelementptr inbounds i8, ptr %89, i64 356
  %98 = load i32, ptr %iLumaStride.i.us, align 4
  %size_x_m1.i.us = getelementptr inbounds i8, ptr %89, i64 80
  %99 = load i32, ptr %size_x_m1.i.us, align 8
  %mb_field.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 384
  %100 = load i32, ptr %mb_field.i.us, align 8
  %tobool.not.i.us = icmp eq i32 %100, 0
  br i1 %tobool.not.i.us, label %cond.false.i.us, label %cond.true.i.us

cond.true.i.us:                                   ; preds = %for.body59.us
  %size_y.i.us = getelementptr inbounds i8, ptr %89, i64 68
  %101 = load i32, ptr %size_y.i.us, align 4
  %shr.i.us = ashr i32 %101, 1
  %sub34.i.us = add nsw i32 %shr.i.us, -1
  br label %cond.end.i.us

cond.false.i.us:                                  ; preds = %for.body59.us
  %size_y_m1.i.us = getelementptr inbounds i8, ptr %89, i64 84
  %102 = load i32, ptr %size_y_m1.i.us, align 4
  br label %cond.end.i.us

cond.end.i.us:                                    ; preds = %cond.false.i.us, %cond.true.i.us
  %cond.i.us = phi i32 [ %sub34.i.us, %cond.true.i.us ], [ %102, %cond.false.i.us ]
  %tmp_res.i.us = getelementptr inbounds i8, ptr %91, i64 1368
  %103 = load ptr, ptr %tmp_res.i.us, align 8
  %max_pel_value_comp.i.us = getelementptr inbounds i8, ptr %88, i64 849072
  %104 = load i32, ptr %max_pel_value_comp.i.us, align 8
  %dc_pred_value_comp.i.us = getelementptr inbounds i8, ptr %88, i64 849060
  %105 = load i32, ptr %dc_pred_value_comp.i.us, align 4
  %conv37.i.us = trunc i32 %105 to i16
  call void @get_block_luma(ptr noundef %96, i32 noundef %add.i.us, i32 noundef %add29.i.us, i32 noundef 4, i32 noundef 4, ptr noundef %97, i32 noundef %98, i32 noundef %99, i32 noundef %cond.i.us, ptr noundef %103, i32 noundef %104, i16 noundef zeroext %conv37.i.us, ptr noundef nonnull %arrayidx2.i.us) #18
  %mb_pred.i.us = getelementptr inbounds i8, ptr %91, i64 1248
  %106 = load ptr, ptr %tmp_block.i, align 8
  %107 = load ptr, ptr %106, align 8
  %108 = load i16, ptr %107, align 2
  %109 = load ptr, ptr %mb_pred.i.us, align 8
  %110 = load ptr, ptr %109, align 8
  %111 = load ptr, ptr %110, align 8
  store i16 %108, ptr %111, align 2
  %112 = load ptr, ptr %tmp_block.i, align 8
  %113 = load ptr, ptr %112, align 8
  %arrayidx46.1.i.us = getelementptr inbounds i8, ptr %113, i64 2
  %114 = load i16, ptr %arrayidx46.1.i.us, align 2
  %115 = load ptr, ptr %mb_pred.i.us, align 8
  %116 = load ptr, ptr %115, align 8
  %117 = load ptr, ptr %116, align 8
  %arrayidx51.1.i.us = getelementptr inbounds i8, ptr %117, i64 2
  store i16 %114, ptr %arrayidx51.1.i.us, align 2
  %118 = load ptr, ptr %tmp_block.i, align 8
  %119 = load ptr, ptr %118, align 8
  %arrayidx46.2.i.us = getelementptr inbounds i8, ptr %119, i64 4
  %120 = load i16, ptr %arrayidx46.2.i.us, align 2
  %121 = load ptr, ptr %mb_pred.i.us, align 8
  %122 = load ptr, ptr %121, align 8
  %123 = load ptr, ptr %122, align 8
  %arrayidx51.2.i.us = getelementptr inbounds i8, ptr %123, i64 4
  store i16 %120, ptr %arrayidx51.2.i.us, align 2
  %124 = load ptr, ptr %tmp_block.i, align 8
  %125 = load ptr, ptr %124, align 8
  %arrayidx46.3.i.us = getelementptr inbounds i8, ptr %125, i64 6
  %126 = load i16, ptr %arrayidx46.3.i.us, align 2
  %127 = load ptr, ptr %mb_pred.i.us, align 8
  %128 = load ptr, ptr %127, align 8
  %129 = load ptr, ptr %128, align 8
  %arrayidx51.3.i.us = getelementptr inbounds i8, ptr %129, i64 6
  store i16 %126, ptr %arrayidx51.3.i.us, align 2
  %130 = load ptr, ptr %tmp_block.i, align 8
  %arrayidx44.1408.i.us = getelementptr inbounds i8, ptr %130, i64 8
  %131 = load ptr, ptr %arrayidx44.1408.i.us, align 8
  %132 = load i16, ptr %131, align 2
  %133 = load ptr, ptr %mb_pred.i.us, align 8
  %134 = load ptr, ptr %133, align 8
  %arrayidx49.1409.i.us = getelementptr inbounds i8, ptr %134, i64 8
  %135 = load ptr, ptr %arrayidx49.1409.i.us, align 8
  store i16 %132, ptr %135, align 2
  %136 = load ptr, ptr %tmp_block.i, align 8
  %arrayidx44.1.1.i.us = getelementptr inbounds i8, ptr %136, i64 8
  %137 = load ptr, ptr %arrayidx44.1.1.i.us, align 8
  %arrayidx46.1.1.i.us = getelementptr inbounds i8, ptr %137, i64 2
  %138 = load i16, ptr %arrayidx46.1.1.i.us, align 2
  %139 = load ptr, ptr %mb_pred.i.us, align 8
  %140 = load ptr, ptr %139, align 8
  %arrayidx49.1.1.i.us = getelementptr inbounds i8, ptr %140, i64 8
  %141 = load ptr, ptr %arrayidx49.1.1.i.us, align 8
  %arrayidx51.1.1.i.us = getelementptr inbounds i8, ptr %141, i64 2
  store i16 %138, ptr %arrayidx51.1.1.i.us, align 2
  %142 = load ptr, ptr %tmp_block.i, align 8
  %arrayidx44.2.1.i.us = getelementptr inbounds i8, ptr %142, i64 8
  %143 = load ptr, ptr %arrayidx44.2.1.i.us, align 8
  %arrayidx46.2.1.i.us = getelementptr inbounds i8, ptr %143, i64 4
  %144 = load i16, ptr %arrayidx46.2.1.i.us, align 2
  %145 = load ptr, ptr %mb_pred.i.us, align 8
  %146 = load ptr, ptr %145, align 8
  %arrayidx49.2.1.i.us = getelementptr inbounds i8, ptr %146, i64 8
  %147 = load ptr, ptr %arrayidx49.2.1.i.us, align 8
  %arrayidx51.2.1.i.us = getelementptr inbounds i8, ptr %147, i64 4
  store i16 %144, ptr %arrayidx51.2.1.i.us, align 2
  %148 = load ptr, ptr %tmp_block.i, align 8
  %arrayidx44.3.1.i.us = getelementptr inbounds i8, ptr %148, i64 8
  %149 = load ptr, ptr %arrayidx44.3.1.i.us, align 8
  %arrayidx46.3.1.i.us = getelementptr inbounds i8, ptr %149, i64 6
  %150 = load i16, ptr %arrayidx46.3.1.i.us, align 2
  %151 = load ptr, ptr %mb_pred.i.us, align 8
  %152 = load ptr, ptr %151, align 8
  %arrayidx49.3.1.i.us = getelementptr inbounds i8, ptr %152, i64 8
  %153 = load ptr, ptr %arrayidx49.3.1.i.us, align 8
  %arrayidx51.3.1.i.us = getelementptr inbounds i8, ptr %153, i64 6
  store i16 %150, ptr %arrayidx51.3.1.i.us, align 2
  %154 = load ptr, ptr %tmp_block.i, align 8
  %arrayidx44.2410.i.us = getelementptr inbounds i8, ptr %154, i64 16
  %155 = load ptr, ptr %arrayidx44.2410.i.us, align 8
  %156 = load i16, ptr %155, align 2
  %157 = load ptr, ptr %mb_pred.i.us, align 8
  %158 = load ptr, ptr %157, align 8
  %arrayidx49.2411.i.us = getelementptr inbounds i8, ptr %158, i64 16
  %159 = load ptr, ptr %arrayidx49.2411.i.us, align 8
  store i16 %156, ptr %159, align 2
  %160 = load ptr, ptr %tmp_block.i, align 8
  %arrayidx44.1.2.i.us = getelementptr inbounds i8, ptr %160, i64 16
  %161 = load ptr, ptr %arrayidx44.1.2.i.us, align 8
  %arrayidx46.1.2.i.us = getelementptr inbounds i8, ptr %161, i64 2
  %162 = load i16, ptr %arrayidx46.1.2.i.us, align 2
  %163 = load ptr, ptr %mb_pred.i.us, align 8
  %164 = load ptr, ptr %163, align 8
  %arrayidx49.1.2.i.us = getelementptr inbounds i8, ptr %164, i64 16
  %165 = load ptr, ptr %arrayidx49.1.2.i.us, align 8
  %arrayidx51.1.2.i.us = getelementptr inbounds i8, ptr %165, i64 2
  store i16 %162, ptr %arrayidx51.1.2.i.us, align 2
  %166 = load ptr, ptr %tmp_block.i, align 8
  %arrayidx44.2.2.i.us = getelementptr inbounds i8, ptr %166, i64 16
  %167 = load ptr, ptr %arrayidx44.2.2.i.us, align 8
  %arrayidx46.2.2.i.us = getelementptr inbounds i8, ptr %167, i64 4
  %168 = load i16, ptr %arrayidx46.2.2.i.us, align 2
  %169 = load ptr, ptr %mb_pred.i.us, align 8
  %170 = load ptr, ptr %169, align 8
  %arrayidx49.2.2.i.us = getelementptr inbounds i8, ptr %170, i64 16
  %171 = load ptr, ptr %arrayidx49.2.2.i.us, align 8
  %arrayidx51.2.2.i.us = getelementptr inbounds i8, ptr %171, i64 4
  store i16 %168, ptr %arrayidx51.2.2.i.us, align 2
  %172 = load ptr, ptr %tmp_block.i, align 8
  %arrayidx44.3.2.i.us = getelementptr inbounds i8, ptr %172, i64 16
  %173 = load ptr, ptr %arrayidx44.3.2.i.us, align 8
  %arrayidx46.3.2.i.us = getelementptr inbounds i8, ptr %173, i64 6
  %174 = load i16, ptr %arrayidx46.3.2.i.us, align 2
  %175 = load ptr, ptr %mb_pred.i.us, align 8
  %176 = load ptr, ptr %175, align 8
  %arrayidx49.3.2.i.us = getelementptr inbounds i8, ptr %176, i64 16
  %177 = load ptr, ptr %arrayidx49.3.2.i.us, align 8
  %arrayidx51.3.2.i.us = getelementptr inbounds i8, ptr %177, i64 6
  store i16 %174, ptr %arrayidx51.3.2.i.us, align 2
  %178 = load ptr, ptr %tmp_block.i, align 8
  %arrayidx44.3412.i.us = getelementptr inbounds i8, ptr %178, i64 24
  %179 = load ptr, ptr %arrayidx44.3412.i.us, align 8
  %180 = load i16, ptr %179, align 2
  %181 = load ptr, ptr %mb_pred.i.us, align 8
  %182 = load ptr, ptr %181, align 8
  %arrayidx49.3413.i.us = getelementptr inbounds i8, ptr %182, i64 24
  %183 = load ptr, ptr %arrayidx49.3413.i.us, align 8
  store i16 %180, ptr %183, align 2
  %184 = load ptr, ptr %tmp_block.i, align 8
  %arrayidx44.1.3.i.us = getelementptr inbounds i8, ptr %184, i64 24
  %185 = load ptr, ptr %arrayidx44.1.3.i.us, align 8
  %arrayidx46.1.3.i.us = getelementptr inbounds i8, ptr %185, i64 2
  %186 = load i16, ptr %arrayidx46.1.3.i.us, align 2
  %187 = load ptr, ptr %mb_pred.i.us, align 8
  %188 = load ptr, ptr %187, align 8
  %arrayidx49.1.3.i.us = getelementptr inbounds i8, ptr %188, i64 24
  %189 = load ptr, ptr %arrayidx49.1.3.i.us, align 8
  %arrayidx51.1.3.i.us = getelementptr inbounds i8, ptr %189, i64 2
  store i16 %186, ptr %arrayidx51.1.3.i.us, align 2
  %190 = load ptr, ptr %tmp_block.i, align 8
  %arrayidx44.2.3.i.us = getelementptr inbounds i8, ptr %190, i64 24
  %191 = load ptr, ptr %arrayidx44.2.3.i.us, align 8
  %arrayidx46.2.3.i.us = getelementptr inbounds i8, ptr %191, i64 4
  %192 = load i16, ptr %arrayidx46.2.3.i.us, align 2
  %193 = load ptr, ptr %mb_pred.i.us, align 8
  %194 = load ptr, ptr %193, align 8
  %arrayidx49.2.3.i.us = getelementptr inbounds i8, ptr %194, i64 24
  %195 = load ptr, ptr %arrayidx49.2.3.i.us, align 8
  %arrayidx51.2.3.i.us = getelementptr inbounds i8, ptr %195, i64 4
  store i16 %192, ptr %arrayidx51.2.3.i.us, align 2
  %196 = load ptr, ptr %tmp_block.i, align 8
  %arrayidx44.3.3.i.us = getelementptr inbounds i8, ptr %196, i64 24
  %197 = load ptr, ptr %arrayidx44.3.3.i.us, align 8
  %arrayidx46.3.3.i.us = getelementptr inbounds i8, ptr %197, i64 6
  %198 = load i16, ptr %arrayidx46.3.3.i.us, align 2
  %199 = load ptr, ptr %mb_pred.i.us, align 8
  %200 = load ptr, ptr %199, align 8
  %arrayidx49.3.3.i.us = getelementptr inbounds i8, ptr %200, i64 24
  %201 = load ptr, ptr %arrayidx49.3.3.i.us, align 8
  %arrayidx51.3.3.i.us = getelementptr inbounds i8, ptr %201, i64 6
  store i16 %198, ptr %arrayidx51.3.3.i.us, align 2
  %202 = load ptr, ptr %mb_pred.i.us, align 8
  %203 = load ptr, ptr %202, align 8
  %204 = load ptr, ptr %203, align 8
  %205 = load <4 x i16>, ptr %204, align 2
  %arrayidx66.1418.i.us = getelementptr inbounds i8, ptr %203, i64 8
  %206 = load ptr, ptr %arrayidx66.1418.i.us, align 8
  %207 = load i16, ptr %206, align 2
  %arrayidx68.1.1.i.us = getelementptr inbounds i8, ptr %206, i64 2
  %208 = load i16, ptr %arrayidx68.1.1.i.us, align 2
  %arrayidx68.2.1.i.us = getelementptr inbounds i8, ptr %206, i64 4
  %209 = load i16, ptr %arrayidx68.2.1.i.us, align 2
  %arrayidx68.3.1.i.us = getelementptr inbounds i8, ptr %206, i64 6
  %210 = load i16, ptr %arrayidx68.3.1.i.us, align 2
  %211 = shufflevector <4 x i16> %205, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %212 = insertelement <8 x i16> %211, i16 %207, i64 4
  %213 = insertelement <8 x i16> %212, i16 %208, i64 5
  %214 = insertelement <8 x i16> %213, i16 %209, i64 6
  %215 = insertelement <8 x i16> %214, i16 %210, i64 7
  store <8 x i16> %215, ptr %storeYUV.0, align 2
  %arrayidx66.2420.i.us = getelementptr inbounds i8, ptr %203, i64 16
  %216 = load ptr, ptr %arrayidx66.2420.i.us, align 8
  %217 = load <4 x i16>, ptr %216, align 2
  %arrayidx66.3422.i.us = getelementptr inbounds i8, ptr %203, i64 24
  %218 = load ptr, ptr %arrayidx66.3422.i.us, align 8
  %219 = load i16, ptr %218, align 2
  %arrayidx68.1.3.i.us = getelementptr inbounds i8, ptr %218, i64 2
  %220 = load i16, ptr %arrayidx68.1.3.i.us, align 2
  %arrayidx68.2.3.i.us = getelementptr inbounds i8, ptr %218, i64 4
  %221 = load i16, ptr %arrayidx68.2.3.i.us, align 2
  %arrayidx68.3.3.i.us = getelementptr inbounds i8, ptr %218, i64 6
  %222 = load i16, ptr %arrayidx68.3.3.i.us, align 2
  %223 = shufflevector <4 x i16> %217, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %224 = insertelement <8 x i16> %223, i16 %219, i64 4
  %225 = insertelement <8 x i16> %224, i16 %220, i64 5
  %226 = insertelement <8 x i16> %225, i16 %221, i64 6
  %227 = insertelement <8 x i16> %226, i16 %222, i64 7
  store <8 x i16> %227, ptr %arrayidx72.2421.i, align 2
  %228 = load i32, ptr %chroma_format_idc.i.us, align 4
  %cmp80.not.i.us = icmp eq i32 %228, 0
  br i1 %cmp80.not.i.us, label %buildPredblockRegionYUV.exit.us, label %if.then.i.us

if.then.i.us:                                     ; preds = %cond.end.i.us
  %229 = load i32, ptr %mb_cr_size_x.i.us, align 4
  %div83.i.us = sdiv i32 64, %229
  %sub84.i.us = add nsw i32 %div83.i.us, -1
  %230 = load i32, ptr %mb_cr_size_y.i.us, align 8
  %div86.i.us = sdiv i32 64, %230
  %sub87.i.us = add nsw i32 %div86.i.us, -1
  %mul88.i.us = mul nsw i32 %div86.i.us, %div83.i.us
  %shr89.i.us = ashr i32 %mul88.i.us, 1
  %size_x_cr.i.us = getelementptr inbounds i8, ptr %89, i64 72
  %size_y_cr.i.us = getelementptr inbounds i8, ptr %89, i64 76
  br label %for.body93.i.us

for.body93.i.us:                                  ; preds = %for.body93.i.us, %if.then.i.us
  %cmp91.i.us = phi i1 [ true, %if.then.i.us ], [ false, %for.body93.i.us ]
  %indvars.iv441.i.us = phi i64 [ 0, %if.then.i.us ], [ 1, %for.body93.i.us ]
  %pMB.0404.i.us = phi ptr [ %add.ptr.i, %if.then.i.us ], [ %add.ptr256.i.us, %for.body93.i.us ]
  %231 = load i32, ptr %pix_c_y.i.us, align 8
  %232 = load i32, ptr %pix_c_x.i.us, align 4
  %233 = mul i32 %232, %div83.i.us
  %234 = add i32 %232, 1
  %235 = mul i32 %234, %div83.i.us
  %add127.i.us = add nsw i32 %233, %div67.us
  %div133.i.us = sdiv i32 %add127.i.us, %div83.i.us
  %cond.i.i.i.us = call noundef i32 @llvm.smax.i32(i32 %div133.i.us, i32 0)
  %add140.i.us = add nsw i32 %add127.i.us, %sub84.i.us
  %div141.i.us = sdiv i32 %add140.i.us, %div83.i.us
  %cond.i.i389.i.us = call noundef i32 @llvm.smax.i32(i32 %div141.i.us, i32 0)
  %and.i.us = and i32 %add127.i.us, %sub84.i.us
  %sub149.i.us = sub nsw i32 %div83.i.us, %and.i.us
  %add127.1.i.us = add nsw i32 %235, %div67.us
  %div133.1.i.us = sdiv i32 %add127.1.i.us, %div83.i.us
  %cond.i.i.1.i.us = call noundef i32 @llvm.smax.i32(i32 %div133.1.i.us, i32 0)
  %add140.1.i.us = add nsw i32 %add127.1.i.us, %sub84.i.us
  %div141.1.i.us = sdiv i32 %add140.1.i.us, %div83.i.us
  %cond.i.i389.1.i.us = call noundef i32 @llvm.smax.i32(i32 %div141.1.i.us, i32 0)
  %and.1.i.us = and i32 %add127.1.i.us, %sub84.i.us
  %sub149.1.i.us = sub nsw i32 %div83.i.us, %and.1.i.us
  %236 = mul i32 %231, %div86.i.us
  %add131.i.us = add nsw i32 %236, %div77.us
  %237 = load i32, ptr %size_x_cr.i.us, align 8
  %sub132.i.us = add nsw i32 %237, -1
  %cond.i4.i.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.i.us, i32 %sub132.i.us)
  %238 = load i32, ptr %size_y_cr.i.us, align 4
  %sub135.i.us = add nsw i32 %238, -1
  %div136.i.us = sdiv i32 %add131.i.us, %div86.i.us
  %cond.i.i387.i.us = call noundef i32 @llvm.smax.i32(i32 %div136.i.us, i32 0)
  %cond.i4.i388.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i387.i.us, i32 %sub135.i.us)
  %cond.i4.i390.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i389.i.us, i32 %sub132.i.us)
  %add145.i.us = add nsw i32 %add131.i.us, %sub87.i.us
  %div146.i.us = sdiv i32 %add145.i.us, %div86.i.us
  %cond.i.i391.i.us = call noundef i32 @llvm.smax.i32(i32 %div146.i.us, i32 0)
  %cond.i4.i392.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i391.i.us, i32 %sub135.i.us)
  %and148.i.us = and i32 %add131.i.us, %sub87.i.us
  %sub150.i.us = sub nsw i32 %div86.i.us, %and148.i.us
  %239 = load ptr, ptr %listX.i.us, align 8
  %arrayidx156.i.us = getelementptr inbounds ptr, ptr %239, i64 %idxprom32.i.us
  %240 = load ptr, ptr %arrayidx156.i.us, align 8
  %imgUV.i.us = getelementptr inbounds i8, ptr %240, i64 136
  %241 = load ptr, ptr %imgUV.i.us, align 8
  %arrayidx158.i.us = getelementptr inbounds ptr, ptr %241, i64 %indvars.iv441.i.us
  %242 = load ptr, ptr %arrayidx158.i.us, align 8
  %idxprom159.i.us = sext i32 %cond.i4.i388.i.us to i64
  %arrayidx160.i.us = getelementptr inbounds ptr, ptr %242, i64 %idxprom159.i.us
  %243 = load ptr, ptr %arrayidx160.i.us, align 8
  %idxprom161.i.us = sext i32 %cond.i4.i.i.us to i64
  %arrayidx162.i.us = getelementptr inbounds i16, ptr %243, i64 %idxprom161.i.us
  %244 = load i16, ptr %arrayidx162.i.us, align 2
  %conv163.i.us = zext i16 %244 to i32
  %mul164.i.us = mul i32 %sub149.i.us, %conv163.i.us
  %idxprom176.i.us = sext i32 %cond.i4.i390.i.us to i64
  %arrayidx177.i.us = getelementptr inbounds i16, ptr %243, i64 %idxprom176.i.us
  %245 = load i16, ptr %arrayidx177.i.us, align 2
  %conv178.i.us = zext i16 %245 to i32
  %mul179.i.us = mul i32 %and.i.us, %conv178.i.us
  %idxprom190.i.us = sext i32 %cond.i4.i392.i.us to i64
  %arrayidx191.i.us = getelementptr inbounds ptr, ptr %242, i64 %idxprom190.i.us
  %246 = load ptr, ptr %arrayidx191.i.us, align 8
  %arrayidx193.i.us = getelementptr inbounds i16, ptr %246, i64 %idxprom161.i.us
  %247 = load i16, ptr %arrayidx193.i.us, align 2
  %conv194.i.us = zext i16 %247 to i32
  %mul195.i.us = mul i32 %sub149.i.us, %conv194.i.us
  %arrayidx209.i.us = getelementptr inbounds i16, ptr %246, i64 %idxprom176.i.us
  %248 = load i16, ptr %arrayidx209.i.us, align 2
  %conv210.i.us = zext i16 %248 to i32
  %mul211.i.us = mul i32 %and.i.us, %conv210.i.us
  %reass.add.i.us = add i32 %mul211.i.us, %mul195.i.us
  %reass.mul.i.us = mul i32 %reass.add.i.us, %and148.i.us
  %reass.add394.i.us = add i32 %mul179.i.us, %mul164.i.us
  %reass.mul395.i.us = mul i32 %reass.add394.i.us, %sub150.i.us
  %add212.i.us = add i32 %reass.mul395.i.us, %shr89.i.us
  %add213.i.us = add i32 %add212.i.us, %reass.mul.i.us
  %div214.i.us = sdiv i32 %add213.i.us, %mul88.i.us
  %conv215.i.us = trunc i32 %div214.i.us to i16
  %249 = load ptr, ptr %mb_pred.i.us, align 8
  %250 = getelementptr inbounds ptr, ptr %249, i64 %indvars.iv441.i.us
  %arrayidx219.i.us = getelementptr inbounds i8, ptr %250, i64 8
  %251 = load ptr, ptr %arrayidx219.i.us, align 8
  %252 = load ptr, ptr %251, align 8
  store i16 %conv215.i.us, ptr %252, align 2
  %253 = load i32, ptr %size_x_cr.i.us, align 8
  %sub132.1.i.us = add nsw i32 %253, -1
  %cond.i4.i.1.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.1.i.us, i32 %sub132.1.i.us)
  %254 = load i32, ptr %size_y_cr.i.us, align 4
  %sub135.1.i.us = add nsw i32 %254, -1
  %cond.i4.i388.1.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i387.i.us, i32 %sub135.1.i.us)
  %cond.i4.i390.1.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i389.1.i.us, i32 %sub132.1.i.us)
  %cond.i4.i392.1.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i391.i.us, i32 %sub135.1.i.us)
  %255 = load ptr, ptr %listX.i.us, align 8
  %arrayidx156.1.i.us = getelementptr inbounds ptr, ptr %255, i64 %idxprom32.i.us
  %256 = load ptr, ptr %arrayidx156.1.i.us, align 8
  %imgUV.1.i.us = getelementptr inbounds i8, ptr %256, i64 136
  %257 = load ptr, ptr %imgUV.1.i.us, align 8
  %arrayidx158.1.i.us = getelementptr inbounds ptr, ptr %257, i64 %indvars.iv441.i.us
  %258 = load ptr, ptr %arrayidx158.1.i.us, align 8
  %idxprom159.1.i.us = sext i32 %cond.i4.i388.1.i.us to i64
  %arrayidx160.1.i.us = getelementptr inbounds ptr, ptr %258, i64 %idxprom159.1.i.us
  %259 = load ptr, ptr %arrayidx160.1.i.us, align 8
  %idxprom161.1.i.us = sext i32 %cond.i4.i.1.i.us to i64
  %arrayidx162.1.i.us = getelementptr inbounds i16, ptr %259, i64 %idxprom161.1.i.us
  %260 = load i16, ptr %arrayidx162.1.i.us, align 2
  %conv163.1.i.us = zext i16 %260 to i32
  %mul164.1.i.us = mul i32 %sub149.1.i.us, %conv163.1.i.us
  %idxprom176.1.i.us = sext i32 %cond.i4.i390.1.i.us to i64
  %arrayidx177.1.i.us = getelementptr inbounds i16, ptr %259, i64 %idxprom176.1.i.us
  %261 = load i16, ptr %arrayidx177.1.i.us, align 2
  %conv178.1.i.us = zext i16 %261 to i32
  %mul179.1.i.us = mul i32 %and.1.i.us, %conv178.1.i.us
  %idxprom190.1.i.us = sext i32 %cond.i4.i392.1.i.us to i64
  %arrayidx191.1.i.us = getelementptr inbounds ptr, ptr %258, i64 %idxprom190.1.i.us
  %262 = load ptr, ptr %arrayidx191.1.i.us, align 8
  %arrayidx193.1.i.us = getelementptr inbounds i16, ptr %262, i64 %idxprom161.1.i.us
  %263 = load i16, ptr %arrayidx193.1.i.us, align 2
  %conv194.1.i.us = zext i16 %263 to i32
  %mul195.1.i.us = mul i32 %sub149.1.i.us, %conv194.1.i.us
  %arrayidx209.1.i.us = getelementptr inbounds i16, ptr %262, i64 %idxprom176.1.i.us
  %264 = load i16, ptr %arrayidx209.1.i.us, align 2
  %conv210.1.i.us = zext i16 %264 to i32
  %mul211.1.i.us = mul i32 %and.1.i.us, %conv210.1.i.us
  %reass.add.1.i.us = add i32 %mul211.1.i.us, %mul195.1.i.us
  %reass.mul.1.i.us = mul i32 %reass.add.1.i.us, %and148.i.us
  %reass.add394.1.i.us = add i32 %mul179.1.i.us, %mul164.1.i.us
  %reass.mul395.1.i.us = mul i32 %reass.add394.1.i.us, %sub150.i.us
  %add212.1.i.us = add i32 %reass.mul395.1.i.us, %shr89.i.us
  %add213.1.i.us = add i32 %add212.1.i.us, %reass.mul.1.i.us
  %div214.1.i.us = sdiv i32 %add213.1.i.us, %mul88.i.us
  %conv215.1.i.us = trunc i32 %div214.1.i.us to i16
  %265 = load ptr, ptr %mb_pred.i.us, align 8
  %266 = getelementptr inbounds ptr, ptr %265, i64 %indvars.iv441.i.us
  %arrayidx219.1.i.us = getelementptr inbounds i8, ptr %266, i64 8
  %267 = load ptr, ptr %arrayidx219.1.i.us, align 8
  %268 = load ptr, ptr %267, align 8
  %arrayidx223.1.i.us = getelementptr inbounds i8, ptr %268, i64 2
  store i16 %conv215.1.i.us, ptr %arrayidx223.1.i.us, align 2
  %269 = add i32 %231, 1
  %270 = mul i32 %269, %div86.i.us
  %add131.i.us.1 = add nsw i32 %270, %div77.us
  %271 = load i32, ptr %size_x_cr.i.us, align 8
  %sub132.i.us.1 = add nsw i32 %271, -1
  %cond.i4.i.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.i.us, i32 %sub132.i.us.1)
  %272 = load i32, ptr %size_y_cr.i.us, align 4
  %sub135.i.us.1 = add nsw i32 %272, -1
  %div136.i.us.1 = sdiv i32 %add131.i.us.1, %div86.i.us
  %cond.i.i387.i.us.1 = call noundef i32 @llvm.smax.i32(i32 %div136.i.us.1, i32 0)
  %cond.i4.i388.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i387.i.us.1, i32 %sub135.i.us.1)
  %cond.i4.i390.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i389.i.us, i32 %sub132.i.us.1)
  %add145.i.us.1 = add nsw i32 %add131.i.us.1, %sub87.i.us
  %div146.i.us.1 = sdiv i32 %add145.i.us.1, %div86.i.us
  %cond.i.i391.i.us.1 = call noundef i32 @llvm.smax.i32(i32 %div146.i.us.1, i32 0)
  %cond.i4.i392.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i391.i.us.1, i32 %sub135.i.us.1)
  %and148.i.us.1 = and i32 %add131.i.us.1, %sub87.i.us
  %sub150.i.us.1 = sub nsw i32 %div86.i.us, %and148.i.us.1
  %273 = load ptr, ptr %listX.i.us, align 8
  %arrayidx156.i.us.1 = getelementptr inbounds ptr, ptr %273, i64 %idxprom32.i.us
  %274 = load ptr, ptr %arrayidx156.i.us.1, align 8
  %imgUV.i.us.1 = getelementptr inbounds i8, ptr %274, i64 136
  %275 = load ptr, ptr %imgUV.i.us.1, align 8
  %arrayidx158.i.us.1 = getelementptr inbounds ptr, ptr %275, i64 %indvars.iv441.i.us
  %276 = load ptr, ptr %arrayidx158.i.us.1, align 8
  %idxprom159.i.us.1 = sext i32 %cond.i4.i388.i.us.1 to i64
  %arrayidx160.i.us.1 = getelementptr inbounds ptr, ptr %276, i64 %idxprom159.i.us.1
  %277 = load ptr, ptr %arrayidx160.i.us.1, align 8
  %idxprom161.i.us.1 = sext i32 %cond.i4.i.i.us.1 to i64
  %arrayidx162.i.us.1 = getelementptr inbounds i16, ptr %277, i64 %idxprom161.i.us.1
  %278 = load i16, ptr %arrayidx162.i.us.1, align 2
  %conv163.i.us.1 = zext i16 %278 to i32
  %mul164.i.us.1 = mul i32 %sub149.i.us, %conv163.i.us.1
  %idxprom176.i.us.1 = sext i32 %cond.i4.i390.i.us.1 to i64
  %arrayidx177.i.us.1 = getelementptr inbounds i16, ptr %277, i64 %idxprom176.i.us.1
  %279 = load i16, ptr %arrayidx177.i.us.1, align 2
  %conv178.i.us.1 = zext i16 %279 to i32
  %mul179.i.us.1 = mul i32 %and.i.us, %conv178.i.us.1
  %idxprom190.i.us.1 = sext i32 %cond.i4.i392.i.us.1 to i64
  %arrayidx191.i.us.1 = getelementptr inbounds ptr, ptr %276, i64 %idxprom190.i.us.1
  %280 = load ptr, ptr %arrayidx191.i.us.1, align 8
  %arrayidx193.i.us.1 = getelementptr inbounds i16, ptr %280, i64 %idxprom161.i.us.1
  %281 = load i16, ptr %arrayidx193.i.us.1, align 2
  %conv194.i.us.1 = zext i16 %281 to i32
  %mul195.i.us.1 = mul i32 %sub149.i.us, %conv194.i.us.1
  %arrayidx209.i.us.1 = getelementptr inbounds i16, ptr %280, i64 %idxprom176.i.us.1
  %282 = load i16, ptr %arrayidx209.i.us.1, align 2
  %conv210.i.us.1 = zext i16 %282 to i32
  %mul211.i.us.1 = mul i32 %and.i.us, %conv210.i.us.1
  %reass.add.i.us.1 = add i32 %mul211.i.us.1, %mul195.i.us.1
  %reass.mul.i.us.1 = mul i32 %reass.add.i.us.1, %and148.i.us.1
  %reass.add394.i.us.1 = add i32 %mul179.i.us.1, %mul164.i.us.1
  %reass.mul395.i.us.1 = mul i32 %reass.add394.i.us.1, %sub150.i.us.1
  %add212.i.us.1 = add i32 %reass.mul395.i.us.1, %shr89.i.us
  %add213.i.us.1 = add i32 %add212.i.us.1, %reass.mul.i.us.1
  %div214.i.us.1 = sdiv i32 %add213.i.us.1, %mul88.i.us
  %conv215.i.us.1 = trunc i32 %div214.i.us.1 to i16
  %283 = load ptr, ptr %mb_pred.i.us, align 8
  %284 = getelementptr inbounds ptr, ptr %283, i64 %indvars.iv441.i.us
  %arrayidx219.i.us.1 = getelementptr inbounds i8, ptr %284, i64 8
  %285 = load ptr, ptr %arrayidx219.i.us.1, align 8
  %arrayidx221.i.us.1 = getelementptr inbounds i8, ptr %285, i64 8
  %286 = load ptr, ptr %arrayidx221.i.us.1, align 8
  store i16 %conv215.i.us.1, ptr %286, align 2
  %287 = load i32, ptr %size_x_cr.i.us, align 8
  %sub132.1.i.us.1 = add nsw i32 %287, -1
  %cond.i4.i.1.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.1.i.us, i32 %sub132.1.i.us.1)
  %288 = load i32, ptr %size_y_cr.i.us, align 4
  %sub135.1.i.us.1 = add nsw i32 %288, -1
  %cond.i4.i388.1.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i387.i.us.1, i32 %sub135.1.i.us.1)
  %cond.i4.i390.1.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i389.1.i.us, i32 %sub132.1.i.us.1)
  %cond.i4.i392.1.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i391.i.us.1, i32 %sub135.1.i.us.1)
  %289 = load ptr, ptr %listX.i.us, align 8
  %arrayidx156.1.i.us.1 = getelementptr inbounds ptr, ptr %289, i64 %idxprom32.i.us
  %290 = load ptr, ptr %arrayidx156.1.i.us.1, align 8
  %imgUV.1.i.us.1 = getelementptr inbounds i8, ptr %290, i64 136
  %291 = load ptr, ptr %imgUV.1.i.us.1, align 8
  %arrayidx158.1.i.us.1 = getelementptr inbounds ptr, ptr %291, i64 %indvars.iv441.i.us
  %292 = load ptr, ptr %arrayidx158.1.i.us.1, align 8
  %idxprom159.1.i.us.1 = sext i32 %cond.i4.i388.1.i.us.1 to i64
  %arrayidx160.1.i.us.1 = getelementptr inbounds ptr, ptr %292, i64 %idxprom159.1.i.us.1
  %293 = load ptr, ptr %arrayidx160.1.i.us.1, align 8
  %idxprom161.1.i.us.1 = sext i32 %cond.i4.i.1.i.us.1 to i64
  %arrayidx162.1.i.us.1 = getelementptr inbounds i16, ptr %293, i64 %idxprom161.1.i.us.1
  %294 = load i16, ptr %arrayidx162.1.i.us.1, align 2
  %conv163.1.i.us.1 = zext i16 %294 to i32
  %mul164.1.i.us.1 = mul i32 %sub149.1.i.us, %conv163.1.i.us.1
  %idxprom176.1.i.us.1 = sext i32 %cond.i4.i390.1.i.us.1 to i64
  %arrayidx177.1.i.us.1 = getelementptr inbounds i16, ptr %293, i64 %idxprom176.1.i.us.1
  %295 = load i16, ptr %arrayidx177.1.i.us.1, align 2
  %conv178.1.i.us.1 = zext i16 %295 to i32
  %mul179.1.i.us.1 = mul i32 %and.1.i.us, %conv178.1.i.us.1
  %idxprom190.1.i.us.1 = sext i32 %cond.i4.i392.1.i.us.1 to i64
  %arrayidx191.1.i.us.1 = getelementptr inbounds ptr, ptr %292, i64 %idxprom190.1.i.us.1
  %296 = load ptr, ptr %arrayidx191.1.i.us.1, align 8
  %arrayidx193.1.i.us.1 = getelementptr inbounds i16, ptr %296, i64 %idxprom161.1.i.us.1
  %297 = load i16, ptr %arrayidx193.1.i.us.1, align 2
  %conv194.1.i.us.1 = zext i16 %297 to i32
  %mul195.1.i.us.1 = mul i32 %sub149.1.i.us, %conv194.1.i.us.1
  %arrayidx209.1.i.us.1 = getelementptr inbounds i16, ptr %296, i64 %idxprom176.1.i.us.1
  %298 = load i16, ptr %arrayidx209.1.i.us.1, align 2
  %conv210.1.i.us.1 = zext i16 %298 to i32
  %mul211.1.i.us.1 = mul i32 %and.1.i.us, %conv210.1.i.us.1
  %reass.add.1.i.us.1 = add i32 %mul211.1.i.us.1, %mul195.1.i.us.1
  %reass.mul.1.i.us.1 = mul i32 %reass.add.1.i.us.1, %and148.i.us.1
  %reass.add394.1.i.us.1 = add i32 %mul179.1.i.us.1, %mul164.1.i.us.1
  %reass.mul395.1.i.us.1 = mul i32 %reass.add394.1.i.us.1, %sub150.i.us.1
  %add212.1.i.us.1 = add i32 %reass.mul395.1.i.us.1, %shr89.i.us
  %add213.1.i.us.1 = add i32 %add212.1.i.us.1, %reass.mul.1.i.us.1
  %div214.1.i.us.1 = sdiv i32 %add213.1.i.us.1, %mul88.i.us
  %conv215.1.i.us.1 = trunc i32 %div214.1.i.us.1 to i16
  %299 = load ptr, ptr %mb_pred.i.us, align 8
  %300 = getelementptr inbounds ptr, ptr %299, i64 %indvars.iv441.i.us
  %arrayidx219.1.i.us.1 = getelementptr inbounds i8, ptr %300, i64 8
  %301 = load ptr, ptr %arrayidx219.1.i.us.1, align 8
  %arrayidx221.1.i.us.1 = getelementptr inbounds i8, ptr %301, i64 8
  %302 = load ptr, ptr %arrayidx221.1.i.us.1, align 8
  %arrayidx223.1.i.us.1 = getelementptr inbounds i8, ptr %302, i64 2
  store i16 %conv215.1.i.us.1, ptr %arrayidx223.1.i.us.1, align 2
  %303 = load ptr, ptr %mb_pred.i.us, align 8
  %304 = getelementptr inbounds ptr, ptr %303, i64 %indvars.iv441.i.us
  %arrayidx241.i.us = getelementptr inbounds i8, ptr %304, i64 8
  %305 = load ptr, ptr %arrayidx241.i.us, align 8
  %306 = load ptr, ptr %305, align 8
  %307 = load i16, ptr %306, align 2
  store i16 %307, ptr %pMB.0404.i.us, align 2
  %308 = load ptr, ptr %305, align 8
  %arrayidx245.1.i.us = getelementptr inbounds i8, ptr %308, i64 2
  %309 = load i16, ptr %arrayidx245.1.i.us, align 2
  %arrayidx249.1.i.us = getelementptr inbounds i8, ptr %pMB.0404.i.us, i64 2
  store i16 %309, ptr %arrayidx249.1.i.us, align 2
  %310 = load ptr, ptr %mb_pred.i.us, align 8
  %311 = getelementptr inbounds ptr, ptr %310, i64 %indvars.iv441.i.us
  %arrayidx241.1438.i.us = getelementptr inbounds i8, ptr %311, i64 8
  %312 = load ptr, ptr %arrayidx241.1438.i.us, align 8
  %arrayidx243.1439.i.us = getelementptr inbounds i8, ptr %312, i64 8
  %313 = load ptr, ptr %arrayidx243.1439.i.us, align 8
  %314 = load i16, ptr %313, align 2
  %arrayidx249.1440.i.us = getelementptr inbounds i8, ptr %pMB.0404.i.us, i64 4
  store i16 %314, ptr %arrayidx249.1440.i.us, align 2
  %315 = load ptr, ptr %mb_pred.i.us, align 8
  %316 = getelementptr inbounds ptr, ptr %315, i64 %indvars.iv441.i.us
  %arrayidx241.1.1.i.us = getelementptr inbounds i8, ptr %316, i64 8
  %317 = load ptr, ptr %arrayidx241.1.1.i.us, align 8
  %arrayidx243.1.1.i.us = getelementptr inbounds i8, ptr %317, i64 8
  %318 = load ptr, ptr %arrayidx243.1.1.i.us, align 8
  %arrayidx245.1.1.i.us = getelementptr inbounds i8, ptr %318, i64 2
  %319 = load i16, ptr %arrayidx245.1.1.i.us, align 2
  %arrayidx249.1.1.i.us = getelementptr inbounds i8, ptr %pMB.0404.i.us, i64 6
  store i16 %319, ptr %arrayidx249.1.1.i.us, align 2
  %add.ptr256.i.us = getelementptr inbounds i8, ptr %pMB.0404.i.us, i64 8
  br i1 %cmp91.i.us, label %for.body93.i.us, label %buildPredblockRegionYUV.exit.us

buildPredblockRegionYUV.exit.us:                  ; preds = %for.body93.i.us, %cond.end.i.us
  %320 = load ptr, ptr %tmp_block.i, align 8
  call void @free_mem2Dpel(ptr noundef %320) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_block.i) #18
  %321 = shl i64 %indvars.iv, 2
  %322 = and i64 %321, 4294967292
  %323 = load i16, ptr %storeYUV.0, align 2
  %324 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us = getelementptr inbounds ptr, ptr %324, i64 %68
  %325 = load ptr, ptr %arrayidx148.us, align 8
  %arrayidx152.us = getelementptr inbounds i16, ptr %325, i64 %322
  store i16 %323, ptr %arrayidx152.us, align 2
  %326 = load i16, ptr %arrayidx72.1.i, align 2
  %327 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.1 = getelementptr inbounds ptr, ptr %327, i64 %68
  %328 = load ptr, ptr %arrayidx148.us.1, align 8
  %329 = or disjoint i64 %322, 1
  %arrayidx152.us.1 = getelementptr inbounds i16, ptr %328, i64 %329
  store i16 %326, ptr %arrayidx152.us.1, align 2
  %330 = load i16, ptr %arrayidx72.2.i, align 2
  %331 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.2 = getelementptr inbounds ptr, ptr %331, i64 %68
  %332 = load ptr, ptr %arrayidx148.us.2, align 8
  %333 = or disjoint i64 %322, 2
  %arrayidx152.us.2 = getelementptr inbounds i16, ptr %332, i64 %333
  store i16 %330, ptr %arrayidx152.us.2, align 2
  %334 = load i16, ptr %arrayidx72.3.i, align 2
  %335 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.3 = getelementptr inbounds ptr, ptr %335, i64 %68
  %336 = load ptr, ptr %arrayidx148.us.3, align 8
  %337 = or disjoint i64 %322, 3
  %arrayidx152.us.3 = getelementptr inbounds i16, ptr %336, i64 %337
  store i16 %334, ptr %arrayidx152.us.3, align 2
  %338 = load i16, ptr %arrayidx72.1419.i, align 2
  %339 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.1373 = getelementptr inbounds ptr, ptr %339, i64 %70
  %340 = load ptr, ptr %arrayidx148.us.1373, align 8
  %arrayidx152.us.1374 = getelementptr inbounds i16, ptr %340, i64 %322
  store i16 %338, ptr %arrayidx152.us.1374, align 2
  %341 = load i16, ptr %arrayidx72.1.1.i, align 2
  %342 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.1.1 = getelementptr inbounds ptr, ptr %342, i64 %70
  %343 = load ptr, ptr %arrayidx148.us.1.1, align 8
  %arrayidx152.us.1.1 = getelementptr inbounds i16, ptr %343, i64 %329
  store i16 %341, ptr %arrayidx152.us.1.1, align 2
  %344 = load i16, ptr %arrayidx72.2.1.i, align 2
  %345 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.2.1 = getelementptr inbounds ptr, ptr %345, i64 %70
  %346 = load ptr, ptr %arrayidx148.us.2.1, align 8
  %arrayidx152.us.2.1 = getelementptr inbounds i16, ptr %346, i64 %333
  store i16 %344, ptr %arrayidx152.us.2.1, align 2
  %347 = load i16, ptr %arrayidx72.3.1.i, align 2
  %348 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.3.1 = getelementptr inbounds ptr, ptr %348, i64 %70
  %349 = load ptr, ptr %arrayidx148.us.3.1, align 8
  %arrayidx152.us.3.1 = getelementptr inbounds i16, ptr %349, i64 %337
  store i16 %347, ptr %arrayidx152.us.3.1, align 2
  %350 = load i16, ptr %arrayidx72.2421.i, align 2
  %351 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.2376 = getelementptr inbounds ptr, ptr %351, i64 %71
  %352 = load ptr, ptr %arrayidx148.us.2376, align 8
  %arrayidx152.us.2377 = getelementptr inbounds i16, ptr %352, i64 %322
  store i16 %350, ptr %arrayidx152.us.2377, align 2
  %353 = load i16, ptr %arrayidx72.1.2.i, align 2
  %354 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.1.2 = getelementptr inbounds ptr, ptr %354, i64 %71
  %355 = load ptr, ptr %arrayidx148.us.1.2, align 8
  %arrayidx152.us.1.2 = getelementptr inbounds i16, ptr %355, i64 %329
  store i16 %353, ptr %arrayidx152.us.1.2, align 2
  %356 = load i16, ptr %arrayidx72.2.2.i, align 2
  %357 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.2.2 = getelementptr inbounds ptr, ptr %357, i64 %71
  %358 = load ptr, ptr %arrayidx148.us.2.2, align 8
  %arrayidx152.us.2.2 = getelementptr inbounds i16, ptr %358, i64 %333
  store i16 %356, ptr %arrayidx152.us.2.2, align 2
  %359 = load i16, ptr %arrayidx72.3.2.i, align 2
  %360 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.3.2 = getelementptr inbounds ptr, ptr %360, i64 %71
  %361 = load ptr, ptr %arrayidx148.us.3.2, align 8
  %arrayidx152.us.3.2 = getelementptr inbounds i16, ptr %361, i64 %337
  store i16 %359, ptr %arrayidx152.us.3.2, align 2
  %362 = load i16, ptr %arrayidx72.3423.i, align 2
  %363 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.3379 = getelementptr inbounds ptr, ptr %363, i64 %72
  %364 = load ptr, ptr %arrayidx148.us.3379, align 8
  %arrayidx152.us.3380 = getelementptr inbounds i16, ptr %364, i64 %322
  store i16 %362, ptr %arrayidx152.us.3380, align 2
  %365 = load i16, ptr %arrayidx72.1.3.i, align 2
  %366 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.1.3 = getelementptr inbounds ptr, ptr %366, i64 %72
  %367 = load ptr, ptr %arrayidx148.us.1.3, align 8
  %arrayidx152.us.1.3 = getelementptr inbounds i16, ptr %367, i64 %329
  store i16 %365, ptr %arrayidx152.us.1.3, align 2
  %368 = load i16, ptr %arrayidx72.2.3.i, align 2
  %369 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.2.3 = getelementptr inbounds ptr, ptr %369, i64 %72
  %370 = load ptr, ptr %arrayidx148.us.2.3, align 8
  %arrayidx152.us.2.3 = getelementptr inbounds i16, ptr %370, i64 %333
  store i16 %368, ptr %arrayidx152.us.2.3, align 2
  %371 = load i16, ptr %arrayidx72.3.3.i, align 2
  %372 = load ptr, ptr %imgY144, align 8
  %arrayidx148.us.3.3 = getelementptr inbounds ptr, ptr %372, i64 %72
  %373 = load ptr, ptr %arrayidx148.us.3.3, align 8
  %arrayidx152.us.3.3 = getelementptr inbounds i16, ptr %373, i64 %337
  store i16 %371, ptr %arrayidx152.us.3.3, align 2
  %374 = load i32, ptr %chroma_format_idc, align 4
  %cmp159.not.us = icmp eq i32 %374, 0
  br i1 %cmp159.not.us, label %for.inc208.us, label %if.then161.us

if.then161.us:                                    ; preds = %buildPredblockRegionYUV.exit.us
  %375 = shl nuw nsw i64 %indvars.iv, 1
  %376 = load i16, ptr %add.ptr.i, align 2
  %377 = load ptr, ptr %imgUV181, align 8
  %378 = load ptr, ptr %377, align 8
  %arrayidx188.us = getelementptr inbounds ptr, ptr %378, i64 %66
  %379 = load ptr, ptr %arrayidx188.us, align 8
  %arrayidx193.us = getelementptr inbounds i16, ptr %379, i64 %375
  store i16 %376, ptr %arrayidx193.us, align 2
  %380 = load i16, ptr %arrayidx180.us.1, align 2
  %381 = load ptr, ptr %imgUV181, align 8
  %382 = load ptr, ptr %381, align 8
  %arrayidx188.us.1 = getelementptr inbounds ptr, ptr %382, i64 %66
  %383 = load ptr, ptr %arrayidx188.us.1, align 8
  %384 = or disjoint i64 %375, 1
  %arrayidx193.us.1 = getelementptr inbounds i16, ptr %383, i64 %384
  store i16 %380, ptr %arrayidx193.us.1, align 2
  %385 = load i16, ptr %arrayidx180.us.1387, align 2
  %386 = load ptr, ptr %imgUV181, align 8
  %387 = load ptr, ptr %386, align 8
  %arrayidx188.us.1389 = getelementptr inbounds ptr, ptr %387, i64 %73
  %388 = load ptr, ptr %arrayidx188.us.1389, align 8
  %arrayidx193.us.1390 = getelementptr inbounds i16, ptr %388, i64 %375
  store i16 %385, ptr %arrayidx193.us.1390, align 2
  %389 = load i16, ptr %arrayidx180.us.1.1, align 2
  %390 = load ptr, ptr %imgUV181, align 8
  %391 = load ptr, ptr %390, align 8
  %arrayidx188.us.1.1 = getelementptr inbounds ptr, ptr %391, i64 %73
  %392 = load ptr, ptr %arrayidx188.us.1.1, align 8
  %arrayidx193.us.1.1 = getelementptr inbounds i16, ptr %392, i64 %384
  store i16 %389, ptr %arrayidx193.us.1.1, align 2
  %393 = load i16, ptr %add.ptr203.us, align 2
  %394 = load ptr, ptr %imgUV181, align 8
  %arrayidx183.us.1392 = getelementptr inbounds i8, ptr %394, i64 8
  %395 = load ptr, ptr %arrayidx183.us.1392, align 8
  %arrayidx188.us.1393 = getelementptr inbounds ptr, ptr %395, i64 %66
  %396 = load ptr, ptr %arrayidx188.us.1393, align 8
  %arrayidx193.us.1394 = getelementptr inbounds i16, ptr %396, i64 %375
  store i16 %393, ptr %arrayidx193.us.1394, align 2
  %397 = load i16, ptr %arrayidx180.us.1.1395, align 2
  %398 = load ptr, ptr %imgUV181, align 8
  %arrayidx183.us.1.1396 = getelementptr inbounds i8, ptr %398, i64 8
  %399 = load ptr, ptr %arrayidx183.us.1.1396, align 8
  %arrayidx188.us.1.1397 = getelementptr inbounds ptr, ptr %399, i64 %66
  %400 = load ptr, ptr %arrayidx188.us.1.1397, align 8
  %arrayidx193.us.1.1398 = getelementptr inbounds i16, ptr %400, i64 %384
  store i16 %397, ptr %arrayidx193.us.1.1398, align 2
  %401 = load i16, ptr %arrayidx180.us.1387.1, align 2
  %402 = load ptr, ptr %imgUV181, align 8
  %arrayidx183.us.1388.1 = getelementptr inbounds i8, ptr %402, i64 8
  %403 = load ptr, ptr %arrayidx183.us.1388.1, align 8
  %arrayidx188.us.1389.1 = getelementptr inbounds ptr, ptr %403, i64 %73
  %404 = load ptr, ptr %arrayidx188.us.1389.1, align 8
  %arrayidx193.us.1390.1 = getelementptr inbounds i16, ptr %404, i64 %375
  store i16 %401, ptr %arrayidx193.us.1390.1, align 2
  %405 = load i16, ptr %arrayidx180.us.1.1.1, align 2
  %406 = load ptr, ptr %imgUV181, align 8
  %arrayidx183.us.1.1.1 = getelementptr inbounds i8, ptr %406, i64 8
  %407 = load ptr, ptr %arrayidx183.us.1.1.1, align 8
  %arrayidx188.us.1.1.1 = getelementptr inbounds ptr, ptr %407, i64 %73
  %408 = load ptr, ptr %arrayidx188.us.1.1.1, align 8
  %arrayidx193.us.1.1.1 = getelementptr inbounds i16, ptr %408, i64 %384
  store i16 %405, ptr %arrayidx193.us.1.1.1, align 2
  br label %for.inc208.us

for.inc208.us:                                    ; preds = %if.then161.us, %buildPredblockRegionYUV.exit.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond55.for.inc211_crit_edge.us, label %for.body59.us

for.cond55.for.inc211_crit_edge.us:               ; preds = %for.inc208.us
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1
  %cmp52.us = icmp ult i64 %indvars.iv.next405, %64
  br i1 %cmp52.us, label %for.body.us, label %for.end213

for.end213:                                       ; preds = %for.cond55.for.inc211_crit_edge.us, %for.body.lr.ph, %if.end50
  call void @free(ptr noundef %storeYUV.0) #18
  br label %if.end214

if.end214:                                        ; preds = %for.end213, %if.end
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sliding_window_poc_management(ptr nocapture noundef readonly %p_Dpb, ptr nocapture noundef readnone %p) local_unnamed_addr #4 {
entry:
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %0 = load i32, ptr %used_size, align 4
  %size = getelementptr inbounds i8, ptr %p_Dpb, i64 40
  %1 = load i32, ptr %size, align 8
  %cmp = icmp ne i32 %0, %1
  %cmp315.not = icmp eq i32 %0, 1
  %or.cond = or i1 %cmp, %cmp315.not
  br i1 %or.cond, label %if.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %2 = load ptr, ptr %p_Dpb, align 8
  %pocs_in_dpb = getelementptr inbounds i8, ptr %2, i64 856056
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds [100 x i32], ptr %pocs_in_dpb, i64 0, i64 %indvars.iv.next
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %pocs_in_dpb, i64 0, i64 %indvars.iv
  store i32 %3, ptr %arrayidx6, align 4
  %4 = load i32, ptr %size, align 8
  %sub = add i32 %4, -1
  %5 = zext i32 %sub to i64
  %cmp3 = icmp ult i64 %indvars.iv.next, %5
  br i1 %cmp3, label %for.body, label %if.end

if.end:                                           ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @write_lost_non_ref_pic(ptr nocapture noundef readonly %p_Dpb, i32 noundef %poc, i32 noundef %p_out) local_unnamed_addr #0 {
entry:
  %concealment_fs = alloca %struct.frame_store, align 8
  %0 = load ptr, ptr %p_Dpb, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %concealment_fs) #18
  %cmp = icmp sgt i32 %poc, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %last_output_poc = getelementptr inbounds i8, ptr %p_Dpb, i64 56
  %1 = load i32, ptr %last_output_poc, align 8
  %sub = sub nsw i32 %poc, %1
  %poc_gap = getelementptr inbounds i8, ptr %0, i64 849236
  %2 = load i32, ptr %poc_gap, align 4
  %cmp2 = icmp sgt i32 %sub, %2
  br i1 %cmp2, label %if.then.i, label %if.end5

if.then.i:                                        ; preds = %if.then
  %concealment_head = getelementptr inbounds i8, ptr %0, i64 848928
  %3 = load ptr, ptr %concealment_head, align 8
  %4 = load ptr, ptr %3, align 8
  %frame = getelementptr inbounds i8, ptr %concealment_fs, i64 48
  store ptr %4, ptr %frame, align 8
  %is_output = getelementptr inbounds i8, ptr %concealment_fs, i64 36
  store i32 0, ptr %is_output, align 4
  %is_reference = getelementptr inbounds i8, ptr %concealment_fs, i64 4
  store i32 0, ptr %is_reference, align 4
  store i32 3, ptr %concealment_fs, align 8
  call void @write_stored_frame(ptr noundef nonnull %0, ptr noundef nonnull %concealment_fs, i32 noundef %p_out) #18
  %5 = load ptr, ptr %concealment_head, align 8
  %next.i = getelementptr inbounds i8, ptr %5, i64 16
  %6 = load ptr, ptr %next.i, align 8
  store ptr %6, ptr %concealment_head, align 8
  %concealment_end.i = getelementptr inbounds i8, ptr %0, i64 848936
  %7 = load ptr, ptr %concealment_end.i, align 8
  %cmp3.i = icmp eq ptr %7, %5
  br i1 %cmp3.i, label %if.then4.i, label %delete_node.exit

if.then4.i:                                       ; preds = %if.then.i
  %next6.i = getelementptr inbounds i8, ptr %7, i64 16
  %8 = load ptr, ptr %next6.i, align 8
  store ptr %8, ptr %concealment_end.i, align 8
  br label %delete_node.exit

delete_node.exit:                                 ; preds = %if.then.i, %if.then4.i
  call void @free(ptr noundef nonnull %5) #18
  br label %if.end5

if.end5:                                          ; preds = %if.then, %delete_node.exit, %entry
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %concealment_fs) #18
  ret void
}

declare void @write_stored_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @write_lost_ref_after_idr(ptr nocapture noundef readonly %p_Dpb, i32 noundef %pos) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %last_out_fs = getelementptr inbounds i8, ptr %0, i64 856048
  %1 = load ptr, ptr %last_out_fs, align 8
  %frame = getelementptr inbounds i8, ptr %1, i64 48
  %2 = load ptr, ptr %frame, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %width = getelementptr inbounds i8, ptr %0, i64 848780
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds i8, ptr %0, i64 848784
  %4 = load i32, ptr %height, align 8
  %width_cr = getelementptr inbounds i8, ptr %0, i64 848788
  %5 = load i32, ptr %width_cr, align 4
  %height_cr = getelementptr inbounds i8, ptr %0, i64 848792
  %6 = load i32, ptr %height_cr, align 8
  %call = tail call ptr @alloc_storable_picture(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #18
  %7 = load ptr, ptr %last_out_fs, align 8
  %frame3 = getelementptr inbounds i8, ptr %7, i64 48
  store ptr %call, ptr %frame3, align 8
  %8 = load ptr, ptr %last_out_fs, align 8
  store i32 3, ptr %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conceal_mode = getelementptr inbounds i8, ptr %0, i64 849240
  %9 = load i32, ptr %conceal_mode, align 8
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %conceal_mode, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %temp.0 = phi i32 [ 2, %if.then6 ], [ 1, %if.end ]
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %10 = load ptr, ptr %fs, align 8
  %idxprom = sext i32 %pos to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  %frame9 = getelementptr inbounds i8, ptr %11, i64 48
  %12 = load ptr, ptr %frame9, align 8
  %13 = load ptr, ptr %last_out_fs, align 8
  %frame11 = getelementptr inbounds i8, ptr %13, i64 48
  %14 = load ptr, ptr %frame11, align 8
  tail call fastcc void @copy_to_conceal(ptr noundef %12, ptr noundef %14, ptr noundef nonnull %0)
  store i32 %temp.0, ptr %conceal_mode, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind uwtable
define internal fastcc void @buildPredRegionYUV(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef readonly %mv, i32 noundef %x, i32 noundef %y, ptr nocapture noundef writeonly %predMB) unnamed_addr #0 {
entry:
  %tmp_block = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_block) #18
  %dec_picture1 = getelementptr inbounds i8, ptr %p_Vid, i64 856456
  %0 = load ptr, ptr %dec_picture1, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 268
  %1 = load i32, ptr %chroma_format_idc, align 4
  %arrayidx = getelementptr inbounds i8, ptr %mv, i64 8
  %2 = load i32, ptr %arrayidx, align 4
  %cond.i = tail call noundef i32 @llvm.smax.i32(i32 %2, i32 0)
  %div = sdiv i32 %y, 16
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780
  %3 = load i32, ptr %width, align 4
  %div2 = sdiv i32 %3, 16
  %mul = mul nsw i32 %div2, %div
  %div3 = sdiv i32 %x, 16
  %add = add nsw i32 %mul, %div3
  %mb_data = getelementptr inbounds i8, ptr %p_Vid, i64 848888
  %4 = load ptr, ptr %mb_data, align 8
  %idxprom = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom
  %5 = load ptr, ptr %arrayidx4, align 8
  %tmp_res5 = getelementptr inbounds i8, ptr %5, i64 1368
  %6 = load ptr, ptr %tmp_res5, align 8
  %call6 = call i32 @get_mem2Dpel(ptr noundef nonnull %tmp_block, i32 noundef 16, i32 noundef 16) #18
  %conv = trunc i32 %div3 to i16
  %mb = getelementptr inbounds i8, ptr %arrayidx4, i64 28
  store i16 %conv, ptr %mb, align 4
  %conv10 = trunc i32 %div to i16
  %y12 = getelementptr inbounds i8, ptr %arrayidx4, i64 30
  store i16 %conv10, ptr %y12, align 2
  %sext = shl i32 %div, 16
  %mul16 = ashr exact i32 %sext, 14
  %block_y = getelementptr inbounds i8, ptr %arrayidx4, i64 36
  store i32 %mul16, ptr %block_y, align 4
  %conv19 = ashr exact i32 %sext, 16
  %mb_cr_size_y = getelementptr inbounds i8, ptr %p_Vid, i64 849112
  %7 = load i32, ptr %mb_cr_size_y, align 8
  %mul20 = mul nsw i32 %7, %conv19
  %pix_c_y = getelementptr inbounds i8, ptr %arrayidx4, i64 56
  store i32 %mul20, ptr %pix_c_y, align 8
  %sext457 = shl i32 %div3, 16
  %conv23 = ashr exact i32 %sext457, 16
  %mul24 = ashr exact i32 %sext457, 14
  %block_x = getelementptr inbounds i8, ptr %arrayidx4, i64 32
  store i32 %mul24, ptr %block_x, align 8
  %mb_cr_size_x = getelementptr inbounds i8, ptr %p_Vid, i64 849108
  %8 = load i32, ptr %mb_cr_size_x, align 4
  %mul28 = mul nsw i32 %8, %conv23
  %pix_c_x = getelementptr inbounds i8, ptr %arrayidx4, i64 52
  store i32 %mul28, ptr %pix_c_x, align 4
  %arrayidx46 = getelementptr inbounds i8, ptr %mv, i64 4
  %listX = getelementptr inbounds i8, ptr %5, i64 264
  %idxprom49 = zext nneg i32 %cond.i to i64
  %iLumaStride = getelementptr inbounds i8, ptr %0, i64 356
  %size_x_m1 = getelementptr inbounds i8, ptr %0, i64 80
  %mb_field = getelementptr inbounds i8, ptr %arrayidx4, i64 384
  %max_pel_value_comp = getelementptr inbounds i8, ptr %p_Vid, i64 849072
  %dc_pred_value_comp = getelementptr inbounds i8, ptr %p_Vid, i64 849060
  %size_y = getelementptr inbounds i8, ptr %0, i64 68
  %size_y_m1 = getelementptr inbounds i8, ptr %0, i64 84
  %mb_pred = getelementptr inbounds i8, ptr %5, i64 1248
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc80
  %indvars.iv490 = phi i64 [ 0, %entry ], [ %indvars.iv.next491, %for.inc80 ]
  %9 = shl nuw nsw i64 %indvars.iv490, 2
  %10 = load i32, ptr %block_y, align 4
  %11 = trunc nuw nsw i64 %indvars.iv490 to i32
  %add32 = add nsw i32 %10, %11
  %mul45 = shl nsw i32 %add32, 4
  %12 = or disjoint i64 %9, 1
  %13 = or disjoint i64 %9, 2
  %14 = or disjoint i64 %9, 3
  br label %for.body36

for.body36:                                       ; preds = %for.body, %cond.end
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %cond.end ]
  %15 = shl nuw nsw i64 %indvars.iv, 2
  %16 = load i32, ptr %block_x, align 8
  %17 = trunc nuw nsw i64 %indvars.iv to i32
  %add39 = add nsw i32 %16, %17
  %mul41 = shl nsw i32 %add39, 4
  %18 = load i32, ptr %mv, align 4
  %add43 = add nsw i32 %mul41, %18
  %19 = load i32, ptr %arrayidx46, align 4
  %add47 = add nsw i32 %19, %mul45
  %20 = load ptr, ptr %listX, align 8
  %arrayidx50 = getelementptr inbounds ptr, ptr %20, i64 %idxprom49
  %21 = load ptr, ptr %arrayidx50, align 8
  %22 = load ptr, ptr %tmp_block, align 8
  %23 = load i32, ptr %iLumaStride, align 4
  %24 = load i32, ptr %size_x_m1, align 8
  %25 = load i32, ptr %mb_field, align 8
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body36
  %26 = load i32, ptr %size_y, align 4
  %shr = ashr i32 %26, 1
  %sub51 = add nsw i32 %shr, -1
  br label %cond.end

cond.false:                                       ; preds = %for.body36
  %27 = load i32, ptr %size_y_m1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub51, %cond.true ], [ %27, %cond.false ]
  %28 = load i32, ptr %max_pel_value_comp, align 8
  %29 = load i32, ptr %dc_pred_value_comp, align 4
  %conv54 = trunc i32 %29 to i16
  call void @get_block_luma(ptr noundef %21, i32 noundef %add43, i32 noundef %add47, i32 noundef 4, i32 noundef 4, ptr noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %cond, ptr noundef %6, i32 noundef %28, i16 noundef zeroext %conv54, ptr noundef nonnull %arrayidx4) #18
  %30 = load ptr, ptr %tmp_block, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = load i16, ptr %31, align 2
  %33 = load ptr, ptr %mb_pred, align 8
  %34 = load ptr, ptr %33, align 8
  %arrayidx70 = getelementptr inbounds ptr, ptr %34, i64 %9
  %35 = load ptr, ptr %arrayidx70, align 8
  %arrayidx73 = getelementptr inbounds i16, ptr %35, i64 %15
  store i16 %32, ptr %arrayidx73, align 2
  %36 = load ptr, ptr %tmp_block, align 8
  %arrayidx64.1 = getelementptr inbounds i8, ptr %36, i64 8
  %37 = load ptr, ptr %arrayidx64.1, align 8
  %38 = load i16, ptr %37, align 2
  %39 = load ptr, ptr %mb_pred, align 8
  %40 = load ptr, ptr %39, align 8
  %arrayidx70.1 = getelementptr inbounds ptr, ptr %40, i64 %12
  %41 = load ptr, ptr %arrayidx70.1, align 8
  %arrayidx73.1 = getelementptr inbounds i16, ptr %41, i64 %15
  store i16 %38, ptr %arrayidx73.1, align 2
  %42 = load ptr, ptr %tmp_block, align 8
  %arrayidx64.2 = getelementptr inbounds i8, ptr %42, i64 16
  %43 = load ptr, ptr %arrayidx64.2, align 8
  %44 = load i16, ptr %43, align 2
  %45 = load ptr, ptr %mb_pred, align 8
  %46 = load ptr, ptr %45, align 8
  %arrayidx70.2 = getelementptr inbounds ptr, ptr %46, i64 %13
  %47 = load ptr, ptr %arrayidx70.2, align 8
  %arrayidx73.2 = getelementptr inbounds i16, ptr %47, i64 %15
  store i16 %44, ptr %arrayidx73.2, align 2
  %48 = load ptr, ptr %tmp_block, align 8
  %arrayidx64.3 = getelementptr inbounds i8, ptr %48, i64 24
  %49 = load ptr, ptr %arrayidx64.3, align 8
  %50 = load i16, ptr %49, align 2
  %51 = load ptr, ptr %mb_pred, align 8
  %52 = load ptr, ptr %51, align 8
  %arrayidx70.3 = getelementptr inbounds ptr, ptr %52, i64 %14
  %53 = load ptr, ptr %arrayidx70.3, align 8
  %arrayidx73.3 = getelementptr inbounds i16, ptr %53, i64 %15
  store i16 %50, ptr %arrayidx73.3, align 2
  %54 = or disjoint i64 %15, 1
  %55 = load ptr, ptr %tmp_block, align 8
  %56 = load ptr, ptr %55, align 8
  %arrayidx66.1479 = getelementptr inbounds i8, ptr %56, i64 2
  %57 = load i16, ptr %arrayidx66.1479, align 2
  %58 = load ptr, ptr %mb_pred, align 8
  %59 = load ptr, ptr %58, align 8
  %arrayidx70.1480 = getelementptr inbounds ptr, ptr %59, i64 %9
  %60 = load ptr, ptr %arrayidx70.1480, align 8
  %arrayidx73.1481 = getelementptr inbounds i16, ptr %60, i64 %54
  store i16 %57, ptr %arrayidx73.1481, align 2
  %61 = load ptr, ptr %tmp_block, align 8
  %arrayidx64.1.1 = getelementptr inbounds i8, ptr %61, i64 8
  %62 = load ptr, ptr %arrayidx64.1.1, align 8
  %arrayidx66.1.1 = getelementptr inbounds i8, ptr %62, i64 2
  %63 = load i16, ptr %arrayidx66.1.1, align 2
  %64 = load ptr, ptr %mb_pred, align 8
  %65 = load ptr, ptr %64, align 8
  %arrayidx70.1.1 = getelementptr inbounds ptr, ptr %65, i64 %12
  %66 = load ptr, ptr %arrayidx70.1.1, align 8
  %arrayidx73.1.1 = getelementptr inbounds i16, ptr %66, i64 %54
  store i16 %63, ptr %arrayidx73.1.1, align 2
  %67 = load ptr, ptr %tmp_block, align 8
  %arrayidx64.2.1 = getelementptr inbounds i8, ptr %67, i64 16
  %68 = load ptr, ptr %arrayidx64.2.1, align 8
  %arrayidx66.2.1 = getelementptr inbounds i8, ptr %68, i64 2
  %69 = load i16, ptr %arrayidx66.2.1, align 2
  %70 = load ptr, ptr %mb_pred, align 8
  %71 = load ptr, ptr %70, align 8
  %arrayidx70.2.1 = getelementptr inbounds ptr, ptr %71, i64 %13
  %72 = load ptr, ptr %arrayidx70.2.1, align 8
  %arrayidx73.2.1 = getelementptr inbounds i16, ptr %72, i64 %54
  store i16 %69, ptr %arrayidx73.2.1, align 2
  %73 = load ptr, ptr %tmp_block, align 8
  %arrayidx64.3.1 = getelementptr inbounds i8, ptr %73, i64 24
  %74 = load ptr, ptr %arrayidx64.3.1, align 8
  %arrayidx66.3.1 = getelementptr inbounds i8, ptr %74, i64 2
  %75 = load i16, ptr %arrayidx66.3.1, align 2
  %76 = load ptr, ptr %mb_pred, align 8
  %77 = load ptr, ptr %76, align 8
  %arrayidx70.3.1 = getelementptr inbounds ptr, ptr %77, i64 %14
  %78 = load ptr, ptr %arrayidx70.3.1, align 8
  %arrayidx73.3.1 = getelementptr inbounds i16, ptr %78, i64 %54
  store i16 %75, ptr %arrayidx73.3.1, align 2
  %79 = or disjoint i64 %15, 2
  %80 = load ptr, ptr %tmp_block, align 8
  %81 = load ptr, ptr %80, align 8
  %arrayidx66.2482 = getelementptr inbounds i8, ptr %81, i64 4
  %82 = load i16, ptr %arrayidx66.2482, align 2
  %83 = load ptr, ptr %mb_pred, align 8
  %84 = load ptr, ptr %83, align 8
  %arrayidx70.2483 = getelementptr inbounds ptr, ptr %84, i64 %9
  %85 = load ptr, ptr %arrayidx70.2483, align 8
  %arrayidx73.2484 = getelementptr inbounds i16, ptr %85, i64 %79
  store i16 %82, ptr %arrayidx73.2484, align 2
  %86 = load ptr, ptr %tmp_block, align 8
  %arrayidx64.1.2 = getelementptr inbounds i8, ptr %86, i64 8
  %87 = load ptr, ptr %arrayidx64.1.2, align 8
  %arrayidx66.1.2 = getelementptr inbounds i8, ptr %87, i64 4
  %88 = load i16, ptr %arrayidx66.1.2, align 2
  %89 = load ptr, ptr %mb_pred, align 8
  %90 = load ptr, ptr %89, align 8
  %arrayidx70.1.2 = getelementptr inbounds ptr, ptr %90, i64 %12
  %91 = load ptr, ptr %arrayidx70.1.2, align 8
  %arrayidx73.1.2 = getelementptr inbounds i16, ptr %91, i64 %79
  store i16 %88, ptr %arrayidx73.1.2, align 2
  %92 = load ptr, ptr %tmp_block, align 8
  %arrayidx64.2.2 = getelementptr inbounds i8, ptr %92, i64 16
  %93 = load ptr, ptr %arrayidx64.2.2, align 8
  %arrayidx66.2.2 = getelementptr inbounds i8, ptr %93, i64 4
  %94 = load i16, ptr %arrayidx66.2.2, align 2
  %95 = load ptr, ptr %mb_pred, align 8
  %96 = load ptr, ptr %95, align 8
  %arrayidx70.2.2 = getelementptr inbounds ptr, ptr %96, i64 %13
  %97 = load ptr, ptr %arrayidx70.2.2, align 8
  %arrayidx73.2.2 = getelementptr inbounds i16, ptr %97, i64 %79
  store i16 %94, ptr %arrayidx73.2.2, align 2
  %98 = load ptr, ptr %tmp_block, align 8
  %arrayidx64.3.2 = getelementptr inbounds i8, ptr %98, i64 24
  %99 = load ptr, ptr %arrayidx64.3.2, align 8
  %arrayidx66.3.2 = getelementptr inbounds i8, ptr %99, i64 4
  %100 = load i16, ptr %arrayidx66.3.2, align 2
  %101 = load ptr, ptr %mb_pred, align 8
  %102 = load ptr, ptr %101, align 8
  %arrayidx70.3.2 = getelementptr inbounds ptr, ptr %102, i64 %14
  %103 = load ptr, ptr %arrayidx70.3.2, align 8
  %arrayidx73.3.2 = getelementptr inbounds i16, ptr %103, i64 %79
  store i16 %100, ptr %arrayidx73.3.2, align 2
  %104 = or disjoint i64 %15, 3
  %105 = load ptr, ptr %tmp_block, align 8
  %106 = load ptr, ptr %105, align 8
  %arrayidx66.3485 = getelementptr inbounds i8, ptr %106, i64 6
  %107 = load i16, ptr %arrayidx66.3485, align 2
  %108 = load ptr, ptr %mb_pred, align 8
  %109 = load ptr, ptr %108, align 8
  %arrayidx70.3486 = getelementptr inbounds ptr, ptr %109, i64 %9
  %110 = load ptr, ptr %arrayidx70.3486, align 8
  %arrayidx73.3487 = getelementptr inbounds i16, ptr %110, i64 %104
  store i16 %107, ptr %arrayidx73.3487, align 2
  %111 = load ptr, ptr %tmp_block, align 8
  %arrayidx64.1.3 = getelementptr inbounds i8, ptr %111, i64 8
  %112 = load ptr, ptr %arrayidx64.1.3, align 8
  %arrayidx66.1.3 = getelementptr inbounds i8, ptr %112, i64 6
  %113 = load i16, ptr %arrayidx66.1.3, align 2
  %114 = load ptr, ptr %mb_pred, align 8
  %115 = load ptr, ptr %114, align 8
  %arrayidx70.1.3 = getelementptr inbounds ptr, ptr %115, i64 %12
  %116 = load ptr, ptr %arrayidx70.1.3, align 8
  %arrayidx73.1.3 = getelementptr inbounds i16, ptr %116, i64 %104
  store i16 %113, ptr %arrayidx73.1.3, align 2
  %117 = load ptr, ptr %tmp_block, align 8
  %arrayidx64.2.3 = getelementptr inbounds i8, ptr %117, i64 16
  %118 = load ptr, ptr %arrayidx64.2.3, align 8
  %arrayidx66.2.3 = getelementptr inbounds i8, ptr %118, i64 6
  %119 = load i16, ptr %arrayidx66.2.3, align 2
  %120 = load ptr, ptr %mb_pred, align 8
  %121 = load ptr, ptr %120, align 8
  %arrayidx70.2.3 = getelementptr inbounds ptr, ptr %121, i64 %13
  %122 = load ptr, ptr %arrayidx70.2.3, align 8
  %arrayidx73.2.3 = getelementptr inbounds i16, ptr %122, i64 %104
  store i16 %119, ptr %arrayidx73.2.3, align 2
  %123 = load ptr, ptr %tmp_block, align 8
  %arrayidx64.3.3 = getelementptr inbounds i8, ptr %123, i64 24
  %124 = load ptr, ptr %arrayidx64.3.3, align 8
  %arrayidx66.3.3 = getelementptr inbounds i8, ptr %124, i64 6
  %125 = load i16, ptr %arrayidx66.3.3, align 2
  %126 = load ptr, ptr %mb_pred, align 8
  %127 = load ptr, ptr %126, align 8
  %arrayidx70.3.3 = getelementptr inbounds ptr, ptr %127, i64 %14
  %128 = load ptr, ptr %arrayidx70.3.3, align 8
  %arrayidx73.3.3 = getelementptr inbounds i16, ptr %128, i64 %104
  store i16 %125, ptr %arrayidx73.3.3, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.inc80, label %for.body36

for.inc80:                                        ; preds = %cond.end
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1
  %exitcond494.not = icmp eq i64 %indvars.iv.next491, 4
  br i1 %exitcond494.not, label %for.cond87.preheader, label %for.body

for.cond87.preheader:                             ; preds = %for.inc80, %for.cond87.preheader
  %indvars.iv500 = phi i64 [ %indvars.iv.next501, %for.cond87.preheader ], [ 0, %for.inc80 ]
  %129 = shl nuw nsw i64 %indvars.iv500, 4
  %130 = load ptr, ptr %mb_pred, align 8
  %131 = load ptr, ptr %130, align 8
  %arrayidx94 = getelementptr inbounds ptr, ptr %131, i64 %indvars.iv500
  %132 = load ptr, ptr %arrayidx94, align 8
  %133 = load i16, ptr %132, align 2
  %arrayidx100 = getelementptr inbounds i16, ptr %predMB, i64 %129
  store i16 %133, ptr %arrayidx100, align 2
  %134 = load ptr, ptr %mb_pred, align 8
  %135 = load ptr, ptr %134, align 8
  %arrayidx94.1 = getelementptr inbounds ptr, ptr %135, i64 %indvars.iv500
  %136 = load ptr, ptr %arrayidx94.1, align 8
  %arrayidx96.1 = getelementptr inbounds i8, ptr %136, i64 2
  %137 = load i16, ptr %arrayidx96.1, align 2
  %138 = or disjoint i64 %129, 1
  %arrayidx100.1 = getelementptr inbounds i16, ptr %predMB, i64 %138
  store i16 %137, ptr %arrayidx100.1, align 2
  %139 = load ptr, ptr %mb_pred, align 8
  %140 = load ptr, ptr %139, align 8
  %arrayidx94.2 = getelementptr inbounds ptr, ptr %140, i64 %indvars.iv500
  %141 = load ptr, ptr %arrayidx94.2, align 8
  %arrayidx96.2 = getelementptr inbounds i8, ptr %141, i64 4
  %142 = load i16, ptr %arrayidx96.2, align 2
  %143 = or disjoint i64 %129, 2
  %arrayidx100.2 = getelementptr inbounds i16, ptr %predMB, i64 %143
  store i16 %142, ptr %arrayidx100.2, align 2
  %144 = load ptr, ptr %mb_pred, align 8
  %145 = load ptr, ptr %144, align 8
  %arrayidx94.3 = getelementptr inbounds ptr, ptr %145, i64 %indvars.iv500
  %146 = load ptr, ptr %arrayidx94.3, align 8
  %arrayidx96.3 = getelementptr inbounds i8, ptr %146, i64 6
  %147 = load i16, ptr %arrayidx96.3, align 2
  %148 = or disjoint i64 %129, 3
  %arrayidx100.3 = getelementptr inbounds i16, ptr %predMB, i64 %148
  store i16 %147, ptr %arrayidx100.3, align 2
  %149 = load ptr, ptr %mb_pred, align 8
  %150 = load ptr, ptr %149, align 8
  %arrayidx94.4 = getelementptr inbounds ptr, ptr %150, i64 %indvars.iv500
  %151 = load ptr, ptr %arrayidx94.4, align 8
  %arrayidx96.4 = getelementptr inbounds i8, ptr %151, i64 8
  %152 = load i16, ptr %arrayidx96.4, align 2
  %153 = or disjoint i64 %129, 4
  %arrayidx100.4 = getelementptr inbounds i16, ptr %predMB, i64 %153
  store i16 %152, ptr %arrayidx100.4, align 2
  %154 = load ptr, ptr %mb_pred, align 8
  %155 = load ptr, ptr %154, align 8
  %arrayidx94.5 = getelementptr inbounds ptr, ptr %155, i64 %indvars.iv500
  %156 = load ptr, ptr %arrayidx94.5, align 8
  %arrayidx96.5 = getelementptr inbounds i8, ptr %156, i64 10
  %157 = load i16, ptr %arrayidx96.5, align 2
  %158 = or disjoint i64 %129, 5
  %arrayidx100.5 = getelementptr inbounds i16, ptr %predMB, i64 %158
  store i16 %157, ptr %arrayidx100.5, align 2
  %159 = load ptr, ptr %mb_pred, align 8
  %160 = load ptr, ptr %159, align 8
  %arrayidx94.6 = getelementptr inbounds ptr, ptr %160, i64 %indvars.iv500
  %161 = load ptr, ptr %arrayidx94.6, align 8
  %arrayidx96.6 = getelementptr inbounds i8, ptr %161, i64 12
  %162 = load i16, ptr %arrayidx96.6, align 2
  %163 = or disjoint i64 %129, 6
  %arrayidx100.6 = getelementptr inbounds i16, ptr %predMB, i64 %163
  store i16 %162, ptr %arrayidx100.6, align 2
  %164 = load ptr, ptr %mb_pred, align 8
  %165 = load ptr, ptr %164, align 8
  %arrayidx94.7 = getelementptr inbounds ptr, ptr %165, i64 %indvars.iv500
  %166 = load ptr, ptr %arrayidx94.7, align 8
  %arrayidx96.7 = getelementptr inbounds i8, ptr %166, i64 14
  %167 = load i16, ptr %arrayidx96.7, align 2
  %168 = or disjoint i64 %129, 7
  %arrayidx100.7 = getelementptr inbounds i16, ptr %predMB, i64 %168
  store i16 %167, ptr %arrayidx100.7, align 2
  %169 = load ptr, ptr %mb_pred, align 8
  %170 = load ptr, ptr %169, align 8
  %arrayidx94.8 = getelementptr inbounds ptr, ptr %170, i64 %indvars.iv500
  %171 = load ptr, ptr %arrayidx94.8, align 8
  %arrayidx96.8 = getelementptr inbounds i8, ptr %171, i64 16
  %172 = load i16, ptr %arrayidx96.8, align 2
  %173 = or disjoint i64 %129, 8
  %arrayidx100.8 = getelementptr inbounds i16, ptr %predMB, i64 %173
  store i16 %172, ptr %arrayidx100.8, align 2
  %174 = load ptr, ptr %mb_pred, align 8
  %175 = load ptr, ptr %174, align 8
  %arrayidx94.9 = getelementptr inbounds ptr, ptr %175, i64 %indvars.iv500
  %176 = load ptr, ptr %arrayidx94.9, align 8
  %arrayidx96.9 = getelementptr inbounds i8, ptr %176, i64 18
  %177 = load i16, ptr %arrayidx96.9, align 2
  %178 = or disjoint i64 %129, 9
  %arrayidx100.9 = getelementptr inbounds i16, ptr %predMB, i64 %178
  store i16 %177, ptr %arrayidx100.9, align 2
  %179 = load ptr, ptr %mb_pred, align 8
  %180 = load ptr, ptr %179, align 8
  %arrayidx94.10 = getelementptr inbounds ptr, ptr %180, i64 %indvars.iv500
  %181 = load ptr, ptr %arrayidx94.10, align 8
  %arrayidx96.10 = getelementptr inbounds i8, ptr %181, i64 20
  %182 = load i16, ptr %arrayidx96.10, align 2
  %183 = or disjoint i64 %129, 10
  %arrayidx100.10 = getelementptr inbounds i16, ptr %predMB, i64 %183
  store i16 %182, ptr %arrayidx100.10, align 2
  %184 = load ptr, ptr %mb_pred, align 8
  %185 = load ptr, ptr %184, align 8
  %arrayidx94.11 = getelementptr inbounds ptr, ptr %185, i64 %indvars.iv500
  %186 = load ptr, ptr %arrayidx94.11, align 8
  %arrayidx96.11 = getelementptr inbounds i8, ptr %186, i64 22
  %187 = load i16, ptr %arrayidx96.11, align 2
  %188 = or disjoint i64 %129, 11
  %arrayidx100.11 = getelementptr inbounds i16, ptr %predMB, i64 %188
  store i16 %187, ptr %arrayidx100.11, align 2
  %189 = load ptr, ptr %mb_pred, align 8
  %190 = load ptr, ptr %189, align 8
  %arrayidx94.12 = getelementptr inbounds ptr, ptr %190, i64 %indvars.iv500
  %191 = load ptr, ptr %arrayidx94.12, align 8
  %arrayidx96.12 = getelementptr inbounds i8, ptr %191, i64 24
  %192 = load i16, ptr %arrayidx96.12, align 2
  %193 = or disjoint i64 %129, 12
  %arrayidx100.12 = getelementptr inbounds i16, ptr %predMB, i64 %193
  store i16 %192, ptr %arrayidx100.12, align 2
  %194 = load ptr, ptr %mb_pred, align 8
  %195 = load ptr, ptr %194, align 8
  %arrayidx94.13 = getelementptr inbounds ptr, ptr %195, i64 %indvars.iv500
  %196 = load ptr, ptr %arrayidx94.13, align 8
  %arrayidx96.13 = getelementptr inbounds i8, ptr %196, i64 26
  %197 = load i16, ptr %arrayidx96.13, align 2
  %198 = or disjoint i64 %129, 13
  %arrayidx100.13 = getelementptr inbounds i16, ptr %predMB, i64 %198
  store i16 %197, ptr %arrayidx100.13, align 2
  %199 = load ptr, ptr %mb_pred, align 8
  %200 = load ptr, ptr %199, align 8
  %arrayidx94.14 = getelementptr inbounds ptr, ptr %200, i64 %indvars.iv500
  %201 = load ptr, ptr %arrayidx94.14, align 8
  %arrayidx96.14 = getelementptr inbounds i8, ptr %201, i64 28
  %202 = load i16, ptr %arrayidx96.14, align 2
  %203 = or disjoint i64 %129, 14
  %arrayidx100.14 = getelementptr inbounds i16, ptr %predMB, i64 %203
  store i16 %202, ptr %arrayidx100.14, align 2
  %204 = load ptr, ptr %mb_pred, align 8
  %205 = load ptr, ptr %204, align 8
  %arrayidx94.15 = getelementptr inbounds ptr, ptr %205, i64 %indvars.iv500
  %206 = load ptr, ptr %arrayidx94.15, align 8
  %arrayidx96.15 = getelementptr inbounds i8, ptr %206, i64 30
  %207 = load i16, ptr %arrayidx96.15, align 2
  %208 = or disjoint i64 %129, 15
  %arrayidx100.15 = getelementptr inbounds i16, ptr %predMB, i64 %208
  store i16 %207, ptr %arrayidx100.15, align 2
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1
  %exitcond504.not = icmp eq i64 %indvars.iv.next501, 16
  br i1 %exitcond504.not, label %for.end106, label %for.cond87.preheader

for.end106:                                       ; preds = %for.cond87.preheader
  %209 = load i32, ptr %chroma_format_idc, align 4
  %cmp108.not = icmp eq i32 %209, 0
  br i1 %cmp108.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end106
  %sub = add nsw i32 %1, -1
  %add.ptr = getelementptr inbounds i8, ptr %predMB, i64 512
  %210 = load i32, ptr %mb_cr_size_x, align 4
  %div111 = sdiv i32 64, %210
  %sub112 = add nsw i32 %div111, -1
  %211 = load i32, ptr %mb_cr_size_y, align 8
  %div114 = sdiv i32 64, %211
  %sub115 = add nsw i32 %div114, -1
  %mul116 = mul nsw i32 %div114, %div111
  %shr117 = ashr i32 %mul116, 1
  %num_uv_blocks = getelementptr inbounds i8, ptr %p_Vid, i64 849100
  %idxprom130 = sext i32 %sub to i64
  %size_x_cr = getelementptr inbounds i8, ptr %0, i64 72
  %size_y_cr = getelementptr inbounds i8, ptr %0, i64 76
  br label %for.cond122.preheader

for.cond122.preheader:                            ; preds = %if.then, %for.end299
  %cmp119 = phi i1 [ true, %if.then ], [ false, %for.end299 ]
  %indvars.iv536 = phi i64 [ 0, %if.then ], [ 1, %for.end299 ]
  %pMB.0473 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr300, %for.end299 ]
  %212 = load i32, ptr %num_uv_blocks, align 4
  %cmp123469 = icmp sgt i32 %212, 0
  br i1 %cmp123469, label %for.cond126.preheader, label %for.cond278.preheader.preheader

for.cond126.preheader:                            ; preds = %for.cond122.preheader, %for.inc271
  %indvars.iv523 = phi i64 [ %indvars.iv.next524, %for.inc271 ], [ 0, %for.cond122.preheader ]
  br label %for.body129

for.body129:                                      ; preds = %for.cond126.preheader, %for.inc268
  %indvars.iv519 = phi i64 [ 0, %for.cond126.preheader ], [ %indvars.iv.next520, %for.inc268 ]
  %arrayidx135 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom130, i64 %indvars.iv523, i64 %indvars.iv519
  %213 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %213 to i32
  %214 = load i32, ptr %pix_c_y, align 8
  %add138 = add nsw i32 %214, %conv136
  %arrayidx144 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom130, i64 %indvars.iv523, i64 %indvars.iv519
  %215 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %215 to i32
  %216 = load i32, ptr %pix_c_x, align 4
  %add147 = add nsw i32 %216, %conv145
  %217 = zext i8 %215 to i64
  %218 = zext i8 %213 to i64
  br label %for.body151

for.body151:                                      ; preds = %for.body129, %for.inc265
  %indvars.iv512 = phi i64 [ 0, %for.body129 ], [ %indvars.iv.next513, %for.inc265 ]
  %219 = trunc i64 %indvars.iv512 to i32
  %220 = add i32 %add138, %219
  %221 = mul i32 %220, %div114
  br label %for.body159

for.body159:                                      ; preds = %for.body151, %for.body159
  %indvars.iv505 = phi i64 [ 0, %for.body151 ], [ %indvars.iv.next506, %for.body159 ]
  %222 = load i32, ptr %mv, align 4
  %223 = trunc i64 %indvars.iv505 to i32
  %224 = add i32 %add147, %223
  %225 = mul i32 %224, %div111
  %add167 = add nsw i32 %222, %225
  %226 = load i32, ptr %arrayidx46, align 4
  %add171 = add nsw i32 %226, %221
  %227 = load i32, ptr %size_x_cr, align 8
  %sub172 = add nsw i32 %227, -1
  %div173 = sdiv i32 %add167, %div111
  %cond.i.i = call noundef i32 @llvm.smax.i32(i32 %div173, i32 0)
  %cond.i4.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i, i32 %sub172)
  %228 = load i32, ptr %size_y_cr, align 4
  %sub175 = add nsw i32 %228, -1
  %div176 = sdiv i32 %add171, %div114
  %cond.i.i451 = call noundef i32 @llvm.smax.i32(i32 %div176, i32 0)
  %cond.i4.i452 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i451, i32 %sub175)
  %add180 = add nsw i32 %add167, %sub112
  %div181 = sdiv i32 %add180, %div111
  %cond.i.i453 = call noundef i32 @llvm.smax.i32(i32 %div181, i32 0)
  %cond.i4.i454 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i453, i32 %sub172)
  %add185 = add nsw i32 %add171, %sub115
  %div186 = sdiv i32 %add185, %div114
  %cond.i.i455 = call noundef i32 @llvm.smax.i32(i32 %div186, i32 0)
  %cond.i4.i456 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i455, i32 %sub175)
  %and = and i32 %add167, %sub112
  %and188 = and i32 %add171, %sub115
  %sub189 = sub nsw i32 %div111, %and
  %sub190 = sub nsw i32 %div114, %and188
  %229 = load ptr, ptr %listX, align 8
  %arrayidx195 = getelementptr inbounds ptr, ptr %229, i64 %idxprom49
  %230 = load ptr, ptr %arrayidx195, align 8
  %imgUV = getelementptr inbounds i8, ptr %230, i64 136
  %231 = load ptr, ptr %imgUV, align 8
  %arrayidx197 = getelementptr inbounds ptr, ptr %231, i64 %indvars.iv536
  %232 = load ptr, ptr %arrayidx197, align 8
  %idxprom198 = sext i32 %cond.i4.i452 to i64
  %arrayidx199 = getelementptr inbounds ptr, ptr %232, i64 %idxprom198
  %233 = load ptr, ptr %arrayidx199, align 8
  %idxprom200 = sext i32 %cond.i4.i to i64
  %arrayidx201 = getelementptr inbounds i16, ptr %233, i64 %idxprom200
  %234 = load i16, ptr %arrayidx201, align 2
  %conv202 = zext i16 %234 to i32
  %mul203 = mul i32 %sub189, %conv202
  %idxprom214 = sext i32 %cond.i4.i454 to i64
  %arrayidx215 = getelementptr inbounds i16, ptr %233, i64 %idxprom214
  %235 = load i16, ptr %arrayidx215, align 2
  %conv216 = zext i16 %235 to i32
  %mul217 = mul i32 %and, %conv216
  %idxprom227 = sext i32 %cond.i4.i456 to i64
  %arrayidx228 = getelementptr inbounds ptr, ptr %232, i64 %idxprom227
  %236 = load ptr, ptr %arrayidx228, align 8
  %arrayidx230 = getelementptr inbounds i16, ptr %236, i64 %idxprom200
  %237 = load i16, ptr %arrayidx230, align 2
  %conv231 = zext i16 %237 to i32
  %mul232 = mul i32 %sub189, %conv231
  %arrayidx245 = getelementptr inbounds i16, ptr %236, i64 %idxprom214
  %238 = load i16, ptr %arrayidx245, align 2
  %conv246 = zext i16 %238 to i32
  %mul247 = mul i32 %and, %conv246
  %reass.add = add i32 %mul247, %mul232
  %reass.mul = mul i32 %reass.add, %and188
  %reass.add458 = add i32 %mul217, %mul203
  %reass.mul459 = mul i32 %reass.add458, %sub190
  %add248 = add i32 %reass.mul459, %shr117
  %add249 = add i32 %add248, %reass.mul
  %div250 = sdiv i32 %add249, %mul116
  %conv251 = trunc i32 %div250 to i16
  %239 = load ptr, ptr %mb_pred, align 8
  %240 = getelementptr inbounds ptr, ptr %239, i64 %indvars.iv536
  %arrayidx255 = getelementptr inbounds i8, ptr %240, i64 8
  %241 = load ptr, ptr %arrayidx255, align 8
  %242 = getelementptr inbounds ptr, ptr %241, i64 %indvars.iv512
  %arrayidx258 = getelementptr inbounds ptr, ptr %242, i64 %218
  %243 = load ptr, ptr %arrayidx258, align 8
  %244 = getelementptr inbounds i16, ptr %243, i64 %indvars.iv505
  %arrayidx261 = getelementptr inbounds i16, ptr %244, i64 %217
  store i16 %conv251, ptr %arrayidx261, align 2
  %indvars.iv.next506 = add nuw nsw i64 %indvars.iv505, 1
  %exitcond511.not = icmp eq i64 %indvars.iv.next506, 4
  br i1 %exitcond511.not, label %for.inc265, label %for.body159

for.inc265:                                       ; preds = %for.body159
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 1
  %exitcond518.not = icmp eq i64 %indvars.iv.next513, 4
  br i1 %exitcond518.not, label %for.inc268, label %for.body151

for.inc268:                                       ; preds = %for.inc265
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1
  %exitcond522.not = icmp eq i64 %indvars.iv.next520, 4
  br i1 %exitcond522.not, label %for.inc271, label %for.body129

for.inc271:                                       ; preds = %for.inc268
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1
  %245 = load i32, ptr %num_uv_blocks, align 4
  %246 = sext i32 %245 to i64
  %cmp123 = icmp slt i64 %indvars.iv.next524, %246
  br i1 %cmp123, label %for.cond126.preheader, label %for.cond278.preheader.preheader

for.cond278.preheader.preheader:                  ; preds = %for.inc271, %for.cond122.preheader
  br label %for.cond278.preheader

for.cond278.preheader:                            ; preds = %for.cond278.preheader.preheader, %for.cond278.preheader
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %for.cond278.preheader ], [ 0, %for.cond278.preheader.preheader ]
  %247 = shl nuw nsw i64 %indvars.iv531, 3
  %248 = load ptr, ptr %mb_pred, align 8
  %249 = getelementptr inbounds ptr, ptr %248, i64 %indvars.iv536
  %arrayidx285 = getelementptr inbounds i8, ptr %249, i64 8
  %250 = load ptr, ptr %arrayidx285, align 8
  %arrayidx287 = getelementptr inbounds ptr, ptr %250, i64 %indvars.iv531
  %251 = load ptr, ptr %arrayidx287, align 8
  %252 = load i16, ptr %251, align 2
  %arrayidx293 = getelementptr inbounds i16, ptr %pMB.0473, i64 %247
  store i16 %252, ptr %arrayidx293, align 2
  %253 = load ptr, ptr %mb_pred, align 8
  %254 = getelementptr inbounds ptr, ptr %253, i64 %indvars.iv536
  %arrayidx285.1 = getelementptr inbounds i8, ptr %254, i64 8
  %255 = load ptr, ptr %arrayidx285.1, align 8
  %arrayidx287.1 = getelementptr inbounds ptr, ptr %255, i64 %indvars.iv531
  %256 = load ptr, ptr %arrayidx287.1, align 8
  %arrayidx289.1 = getelementptr inbounds i8, ptr %256, i64 2
  %257 = load i16, ptr %arrayidx289.1, align 2
  %258 = or disjoint i64 %247, 1
  %arrayidx293.1 = getelementptr inbounds i16, ptr %pMB.0473, i64 %258
  store i16 %257, ptr %arrayidx293.1, align 2
  %259 = load ptr, ptr %mb_pred, align 8
  %260 = getelementptr inbounds ptr, ptr %259, i64 %indvars.iv536
  %arrayidx285.2 = getelementptr inbounds i8, ptr %260, i64 8
  %261 = load ptr, ptr %arrayidx285.2, align 8
  %arrayidx287.2 = getelementptr inbounds ptr, ptr %261, i64 %indvars.iv531
  %262 = load ptr, ptr %arrayidx287.2, align 8
  %arrayidx289.2 = getelementptr inbounds i8, ptr %262, i64 4
  %263 = load i16, ptr %arrayidx289.2, align 2
  %264 = or disjoint i64 %247, 2
  %arrayidx293.2 = getelementptr inbounds i16, ptr %pMB.0473, i64 %264
  store i16 %263, ptr %arrayidx293.2, align 2
  %265 = load ptr, ptr %mb_pred, align 8
  %266 = getelementptr inbounds ptr, ptr %265, i64 %indvars.iv536
  %arrayidx285.3 = getelementptr inbounds i8, ptr %266, i64 8
  %267 = load ptr, ptr %arrayidx285.3, align 8
  %arrayidx287.3 = getelementptr inbounds ptr, ptr %267, i64 %indvars.iv531
  %268 = load ptr, ptr %arrayidx287.3, align 8
  %arrayidx289.3 = getelementptr inbounds i8, ptr %268, i64 6
  %269 = load i16, ptr %arrayidx289.3, align 2
  %270 = or disjoint i64 %247, 3
  %arrayidx293.3 = getelementptr inbounds i16, ptr %pMB.0473, i64 %270
  store i16 %269, ptr %arrayidx293.3, align 2
  %271 = load ptr, ptr %mb_pred, align 8
  %272 = getelementptr inbounds ptr, ptr %271, i64 %indvars.iv536
  %arrayidx285.4 = getelementptr inbounds i8, ptr %272, i64 8
  %273 = load ptr, ptr %arrayidx285.4, align 8
  %arrayidx287.4 = getelementptr inbounds ptr, ptr %273, i64 %indvars.iv531
  %274 = load ptr, ptr %arrayidx287.4, align 8
  %arrayidx289.4 = getelementptr inbounds i8, ptr %274, i64 8
  %275 = load i16, ptr %arrayidx289.4, align 2
  %276 = or disjoint i64 %247, 4
  %arrayidx293.4 = getelementptr inbounds i16, ptr %pMB.0473, i64 %276
  store i16 %275, ptr %arrayidx293.4, align 2
  %277 = load ptr, ptr %mb_pred, align 8
  %278 = getelementptr inbounds ptr, ptr %277, i64 %indvars.iv536
  %arrayidx285.5 = getelementptr inbounds i8, ptr %278, i64 8
  %279 = load ptr, ptr %arrayidx285.5, align 8
  %arrayidx287.5 = getelementptr inbounds ptr, ptr %279, i64 %indvars.iv531
  %280 = load ptr, ptr %arrayidx287.5, align 8
  %arrayidx289.5 = getelementptr inbounds i8, ptr %280, i64 10
  %281 = load i16, ptr %arrayidx289.5, align 2
  %282 = or disjoint i64 %247, 5
  %arrayidx293.5 = getelementptr inbounds i16, ptr %pMB.0473, i64 %282
  store i16 %281, ptr %arrayidx293.5, align 2
  %283 = load ptr, ptr %mb_pred, align 8
  %284 = getelementptr inbounds ptr, ptr %283, i64 %indvars.iv536
  %arrayidx285.6 = getelementptr inbounds i8, ptr %284, i64 8
  %285 = load ptr, ptr %arrayidx285.6, align 8
  %arrayidx287.6 = getelementptr inbounds ptr, ptr %285, i64 %indvars.iv531
  %286 = load ptr, ptr %arrayidx287.6, align 8
  %arrayidx289.6 = getelementptr inbounds i8, ptr %286, i64 12
  %287 = load i16, ptr %arrayidx289.6, align 2
  %288 = or disjoint i64 %247, 6
  %arrayidx293.6 = getelementptr inbounds i16, ptr %pMB.0473, i64 %288
  store i16 %287, ptr %arrayidx293.6, align 2
  %289 = load ptr, ptr %mb_pred, align 8
  %290 = getelementptr inbounds ptr, ptr %289, i64 %indvars.iv536
  %arrayidx285.7 = getelementptr inbounds i8, ptr %290, i64 8
  %291 = load ptr, ptr %arrayidx285.7, align 8
  %arrayidx287.7 = getelementptr inbounds ptr, ptr %291, i64 %indvars.iv531
  %292 = load ptr, ptr %arrayidx287.7, align 8
  %arrayidx289.7 = getelementptr inbounds i8, ptr %292, i64 14
  %293 = load i16, ptr %arrayidx289.7, align 2
  %294 = or disjoint i64 %247, 7
  %arrayidx293.7 = getelementptr inbounds i16, ptr %pMB.0473, i64 %294
  store i16 %293, ptr %arrayidx293.7, align 2
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1
  %exitcond535.not = icmp eq i64 %indvars.iv.next532, 8
  br i1 %exitcond535.not, label %for.end299, label %for.cond278.preheader

for.end299:                                       ; preds = %for.cond278.preheader
  %add.ptr300 = getelementptr inbounds i8, ptr %pMB.0473, i64 128
  br i1 %cmp119, label %for.cond122.preheader, label %if.end

if.end:                                           ; preds = %for.end299, %for.end106
  %295 = load ptr, ptr %tmp_block, align 8
  call void @free_mem2Dpel(ptr noundef %295) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_block) #18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @edgeDistortion(ptr nocapture noundef readonly %predBlocks, i32 noundef %currYBlockNum, ptr nocapture noundef readonly %predMB, ptr nocapture noundef readonly %recY, i32 noundef %picSizeX) unnamed_addr #15 {
entry:
  %shr = ashr i32 %picSizeX, 3
  %div = sdiv i32 %currYBlockNum, %shr
  %shl = shl i32 %picSizeX, 3
  %mul = mul i32 %shl, %div
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, ptr %recY, i64 %idx.ext
  %rem = srem i32 %currYBlockNum, %shr
  %shl2 = shl nsw i32 %rem, 3
  %idx.ext3 = sext i32 %shl2 to i64
  %add.ptr4 = getelementptr inbounds i16, ptr %add.ptr, i64 %idx.ext3
  %add.ptr61 = getelementptr inbounds i8, ptr %add.ptr4, i64 32
  %mul37 = shl nsw i32 %picSizeX, 4
  %idx.ext38 = sext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds i16, ptr %add.ptr4, i64 %idx.ext38
  %add.ptr17 = getelementptr inbounds i8, ptr %add.ptr4, i64 -2
  %idx.ext6 = sext i32 %picSizeX to i64
  %idx.neg = sub nsw i64 0, %idx.ext6
  %add.ptr7 = getelementptr inbounds i16, ptr %add.ptr4, i64 %idx.neg
  %arrayidx70 = getelementptr inbounds i8, ptr %predMB, i64 30
  %arrayidx70.1 = getelementptr inbounds i8, ptr %predMB, i64 62
  %arrayidx74.1 = getelementptr inbounds i16, ptr %add.ptr61, i64 %idx.ext6
  %arrayidx70.2 = getelementptr inbounds i8, ptr %predMB, i64 94
  %arrayidx74.2.idx = shl nsw i64 %idx.ext6, 2
  %arrayidx74.2 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.2.idx
  %arrayidx70.3 = getelementptr inbounds i8, ptr %predMB, i64 126
  %arrayidx74.3.idx = mul nsw i64 %idx.ext6, 6
  %arrayidx74.3 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.3.idx
  %arrayidx70.4 = getelementptr inbounds i8, ptr %predMB, i64 158
  %arrayidx74.4.idx = shl nsw i64 %idx.ext6, 3
  %arrayidx74.4 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.4.idx
  %arrayidx70.5 = getelementptr inbounds i8, ptr %predMB, i64 190
  %arrayidx74.5.idx = mul nsw i64 %idx.ext6, 10
  %arrayidx74.5 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.5.idx
  %arrayidx70.6 = getelementptr inbounds i8, ptr %predMB, i64 222
  %arrayidx74.6.idx = mul nsw i64 %idx.ext6, 12
  %arrayidx74.6 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.6.idx
  %arrayidx70.7 = getelementptr inbounds i8, ptr %predMB, i64 254
  %arrayidx74.7.idx = mul nsw i64 %idx.ext6, 14
  %arrayidx74.7 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.7.idx
  %arrayidx70.8 = getelementptr inbounds i8, ptr %predMB, i64 286
  %arrayidx74.8.idx = shl nsw i64 %idx.ext6, 4
  %arrayidx74.8 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.8.idx
  %arrayidx70.9 = getelementptr inbounds i8, ptr %predMB, i64 318
  %arrayidx74.9.idx = mul nsw i64 %idx.ext6, 18
  %arrayidx74.9 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.9.idx
  %arrayidx70.10 = getelementptr inbounds i8, ptr %predMB, i64 350
  %arrayidx74.10.idx = mul nsw i64 %idx.ext6, 20
  %arrayidx74.10 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.10.idx
  %arrayidx70.11 = getelementptr inbounds i8, ptr %predMB, i64 382
  %arrayidx74.11.idx = mul nsw i64 %idx.ext6, 22
  %arrayidx74.11 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.11.idx
  %arrayidx70.12 = getelementptr inbounds i8, ptr %predMB, i64 414
  %arrayidx74.12.idx = mul nsw i64 %idx.ext6, 24
  %arrayidx74.12 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.12.idx
  %arrayidx70.13 = getelementptr inbounds i8, ptr %predMB, i64 446
  %arrayidx74.13.idx = mul nsw i64 %idx.ext6, 26
  %arrayidx74.13 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.13.idx
  %arrayidx70.14 = getelementptr inbounds i8, ptr %predMB, i64 478
  %arrayidx74.14.idx = mul nsw i64 %idx.ext6, 28
  %arrayidx74.14 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.14.idx
  %arrayidx70.15 = getelementptr inbounds i8, ptr %predMB, i64 510
  %arrayidx74.15.idx = mul nsw i64 %idx.ext6, 30
  %arrayidx74.15 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.15.idx
  %arrayidx48 = getelementptr inbounds i8, ptr %predMB, i64 480
  %arrayidx48.1 = getelementptr inbounds i8, ptr %predMB, i64 482
  %arrayidx51.1 = getelementptr inbounds i8, ptr %add.ptr39, i64 2
  %arrayidx48.2 = getelementptr inbounds i8, ptr %predMB, i64 484
  %arrayidx51.2 = getelementptr inbounds i8, ptr %add.ptr39, i64 4
  %arrayidx48.3 = getelementptr inbounds i8, ptr %predMB, i64 486
  %arrayidx51.3 = getelementptr inbounds i8, ptr %add.ptr39, i64 6
  %arrayidx48.4 = getelementptr inbounds i8, ptr %predMB, i64 488
  %arrayidx51.4 = getelementptr inbounds i8, ptr %add.ptr39, i64 8
  %arrayidx48.5 = getelementptr inbounds i8, ptr %predMB, i64 490
  %arrayidx51.5 = getelementptr inbounds i8, ptr %add.ptr39, i64 10
  %arrayidx48.6 = getelementptr inbounds i8, ptr %predMB, i64 492
  %arrayidx51.6 = getelementptr inbounds i8, ptr %add.ptr39, i64 12
  %arrayidx48.7 = getelementptr inbounds i8, ptr %predMB, i64 494
  %arrayidx51.7 = getelementptr inbounds i8, ptr %add.ptr39, i64 14
  %arrayidx48.8 = getelementptr inbounds i8, ptr %predMB, i64 496
  %arrayidx51.8 = getelementptr inbounds i8, ptr %add.ptr39, i64 16
  %arrayidx48.9 = getelementptr inbounds i8, ptr %predMB, i64 498
  %arrayidx51.9 = getelementptr inbounds i8, ptr %add.ptr39, i64 18
  %arrayidx48.10 = getelementptr inbounds i8, ptr %predMB, i64 500
  %arrayidx51.10 = getelementptr inbounds i8, ptr %add.ptr39, i64 20
  %arrayidx48.11 = getelementptr inbounds i8, ptr %predMB, i64 502
  %arrayidx51.11 = getelementptr inbounds i8, ptr %add.ptr39, i64 22
  %arrayidx48.12 = getelementptr inbounds i8, ptr %predMB, i64 504
  %arrayidx51.12 = getelementptr inbounds i8, ptr %add.ptr39, i64 24
  %arrayidx48.13 = getelementptr inbounds i8, ptr %predMB, i64 506
  %arrayidx51.13 = getelementptr inbounds i8, ptr %add.ptr39, i64 26
  %arrayidx48.14 = getelementptr inbounds i8, ptr %predMB, i64 508
  %arrayidx51.14 = getelementptr inbounds i8, ptr %add.ptr39, i64 28
  %arrayidx48.15 = getelementptr inbounds i8, ptr %predMB, i64 510
  %arrayidx51.15 = getelementptr inbounds i8, ptr %add.ptr39, i64 30
  %arrayidx24.1 = getelementptr inbounds i8, ptr %predMB, i64 32
  %arrayidx28.1 = getelementptr inbounds i16, ptr %add.ptr17, i64 %idx.ext6
  %arrayidx24.2 = getelementptr inbounds i8, ptr %predMB, i64 64
  %arrayidx28.2.idx = shl nsw i64 %idx.ext6, 2
  %arrayidx28.2 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.2.idx
  %arrayidx24.3 = getelementptr inbounds i8, ptr %predMB, i64 96
  %arrayidx28.3.idx = mul nsw i64 %idx.ext6, 6
  %arrayidx28.3 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.3.idx
  %arrayidx24.4 = getelementptr inbounds i8, ptr %predMB, i64 128
  %arrayidx28.4.idx = shl nsw i64 %idx.ext6, 3
  %arrayidx28.4 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.4.idx
  %arrayidx24.5 = getelementptr inbounds i8, ptr %predMB, i64 160
  %arrayidx28.5.idx = mul nsw i64 %idx.ext6, 10
  %arrayidx28.5 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.5.idx
  %arrayidx24.6 = getelementptr inbounds i8, ptr %predMB, i64 192
  %arrayidx28.6.idx = mul nsw i64 %idx.ext6, 12
  %arrayidx28.6 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.6.idx
  %arrayidx24.7 = getelementptr inbounds i8, ptr %predMB, i64 224
  %arrayidx28.7.idx = mul nsw i64 %idx.ext6, 14
  %arrayidx28.7 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.7.idx
  %arrayidx24.8 = getelementptr inbounds i8, ptr %predMB, i64 256
  %arrayidx28.8.idx = shl nsw i64 %idx.ext6, 4
  %arrayidx28.8 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.8.idx
  %arrayidx24.9 = getelementptr inbounds i8, ptr %predMB, i64 288
  %arrayidx28.9.idx = mul nsw i64 %idx.ext6, 18
  %arrayidx28.9 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.9.idx
  %arrayidx24.10 = getelementptr inbounds i8, ptr %predMB, i64 320
  %arrayidx28.10.idx = mul nsw i64 %idx.ext6, 20
  %arrayidx28.10 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.10.idx
  %arrayidx24.11 = getelementptr inbounds i8, ptr %predMB, i64 352
  %arrayidx28.11.idx = mul nsw i64 %idx.ext6, 22
  %arrayidx28.11 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.11.idx
  %arrayidx24.12 = getelementptr inbounds i8, ptr %predMB, i64 384
  %arrayidx28.12.idx = mul nsw i64 %idx.ext6, 24
  %arrayidx28.12 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.12.idx
  %arrayidx24.13 = getelementptr inbounds i8, ptr %predMB, i64 416
  %arrayidx28.13.idx = mul nsw i64 %idx.ext6, 26
  %arrayidx28.13 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.13.idx
  %arrayidx24.14 = getelementptr inbounds i8, ptr %predMB, i64 448
  %arrayidx28.14.idx = mul nsw i64 %idx.ext6, 28
  %arrayidx28.14 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.14.idx
  %arrayidx24.15 = getelementptr inbounds i8, ptr %predMB, i64 480
  %arrayidx28.15.idx = mul nsw i64 %idx.ext6, 30
  %arrayidx28.15 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.15.idx
  %arrayidx12.1 = getelementptr inbounds i8, ptr %predMB, i64 2
  %arrayidx14.1 = getelementptr inbounds i8, ptr %add.ptr7, i64 2
  %arrayidx12.2 = getelementptr inbounds i8, ptr %predMB, i64 4
  %arrayidx14.2 = getelementptr inbounds i8, ptr %add.ptr7, i64 4
  %arrayidx12.3 = getelementptr inbounds i8, ptr %predMB, i64 6
  %arrayidx14.3 = getelementptr inbounds i8, ptr %add.ptr7, i64 6
  %arrayidx12.4 = getelementptr inbounds i8, ptr %predMB, i64 8
  %arrayidx14.4 = getelementptr inbounds i8, ptr %add.ptr7, i64 8
  %arrayidx12.5 = getelementptr inbounds i8, ptr %predMB, i64 10
  %arrayidx14.5 = getelementptr inbounds i8, ptr %add.ptr7, i64 10
  %arrayidx12.6 = getelementptr inbounds i8, ptr %predMB, i64 12
  %arrayidx14.6 = getelementptr inbounds i8, ptr %add.ptr7, i64 12
  %arrayidx12.7 = getelementptr inbounds i8, ptr %predMB, i64 14
  %arrayidx14.7 = getelementptr inbounds i8, ptr %add.ptr7, i64 14
  %arrayidx12.8 = getelementptr inbounds i8, ptr %predMB, i64 16
  %arrayidx14.8 = getelementptr inbounds i8, ptr %add.ptr7, i64 16
  %arrayidx12.9 = getelementptr inbounds i8, ptr %predMB, i64 18
  %arrayidx14.9 = getelementptr inbounds i8, ptr %add.ptr7, i64 18
  %arrayidx12.10 = getelementptr inbounds i8, ptr %predMB, i64 20
  %arrayidx14.10 = getelementptr inbounds i8, ptr %add.ptr7, i64 20
  %arrayidx12.11 = getelementptr inbounds i8, ptr %predMB, i64 22
  %arrayidx14.11 = getelementptr inbounds i8, ptr %add.ptr7, i64 22
  %arrayidx12.12 = getelementptr inbounds i8, ptr %predMB, i64 24
  %arrayidx14.12 = getelementptr inbounds i8, ptr %add.ptr7, i64 24
  %arrayidx12.13 = getelementptr inbounds i8, ptr %predMB, i64 26
  %arrayidx14.13 = getelementptr inbounds i8, ptr %add.ptr7, i64 26
  %arrayidx12.14 = getelementptr inbounds i8, ptr %predMB, i64 28
  %arrayidx14.14 = getelementptr inbounds i8, ptr %add.ptr7, i64 28
  %arrayidx12.15 = getelementptr inbounds i8, ptr %predMB, i64 30
  %arrayidx14.15 = getelementptr inbounds i8, ptr %add.ptr7, i64 30
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc83
  %indvars.iv = phi i64 [ 4, %entry ], [ %indvars.iv.next, %for.inc83 ]
  %numOfPredBlocks.0171 = phi i32 [ 0, %entry ], [ %numOfPredBlocks.1, %for.inc83 ]
  %distortion.0170 = phi i32 [ 0, %entry ], [ %distortion.6, %for.inc83 ]
  %arrayidx = getelementptr inbounds i32, ptr %predBlocks, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4
  %cmp5.not = icmp slt i32 %0, 3
  br i1 %cmp5.not, label %for.inc83, label %if.then

if.then:                                          ; preds = %for.body
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %1, label %sw.epilog [
    i32 4, label %for.body10.preheader
    i32 5, label %for.body21.preheader
    i32 6, label %for.body45.preheader
    i32 7, label %sw.epilog.sink.split
  ]

for.body45.preheader:                             ; preds = %if.then
  br label %sw.epilog.sink.split

for.body21.preheader:                             ; preds = %if.then
  br label %sw.epilog.sink.split

for.body10.preheader:                             ; preds = %if.then
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then, %for.body10.preheader, %for.body21.preheader, %for.body45.preheader
  %arrayidx70.sink = phi ptr [ %arrayidx48, %for.body45.preheader ], [ %predMB, %for.body21.preheader ], [ %predMB, %for.body10.preheader ], [ %arrayidx70, %if.then ]
  %add.ptr61.sink = phi ptr [ %add.ptr39, %for.body45.preheader ], [ %add.ptr17, %for.body21.preheader ], [ %add.ptr7, %for.body10.preheader ], [ %add.ptr61, %if.then ]
  %arrayidx70.1.sink = phi ptr [ %arrayidx48.1, %for.body45.preheader ], [ %arrayidx24.1, %for.body21.preheader ], [ %arrayidx12.1, %for.body10.preheader ], [ %arrayidx70.1, %if.then ]
  %arrayidx74.1.sink = phi ptr [ %arrayidx51.1, %for.body45.preheader ], [ %arrayidx28.1, %for.body21.preheader ], [ %arrayidx14.1, %for.body10.preheader ], [ %arrayidx74.1, %if.then ]
  %arrayidx70.2.sink = phi ptr [ %arrayidx48.2, %for.body45.preheader ], [ %arrayidx24.2, %for.body21.preheader ], [ %arrayidx12.2, %for.body10.preheader ], [ %arrayidx70.2, %if.then ]
  %arrayidx74.2.sink = phi ptr [ %arrayidx51.2, %for.body45.preheader ], [ %arrayidx28.2, %for.body21.preheader ], [ %arrayidx14.2, %for.body10.preheader ], [ %arrayidx74.2, %if.then ]
  %arrayidx70.3.sink = phi ptr [ %arrayidx48.3, %for.body45.preheader ], [ %arrayidx24.3, %for.body21.preheader ], [ %arrayidx12.3, %for.body10.preheader ], [ %arrayidx70.3, %if.then ]
  %arrayidx74.3.sink = phi ptr [ %arrayidx51.3, %for.body45.preheader ], [ %arrayidx28.3, %for.body21.preheader ], [ %arrayidx14.3, %for.body10.preheader ], [ %arrayidx74.3, %if.then ]
  %arrayidx70.4.sink = phi ptr [ %arrayidx48.4, %for.body45.preheader ], [ %arrayidx24.4, %for.body21.preheader ], [ %arrayidx12.4, %for.body10.preheader ], [ %arrayidx70.4, %if.then ]
  %arrayidx74.4.sink = phi ptr [ %arrayidx51.4, %for.body45.preheader ], [ %arrayidx28.4, %for.body21.preheader ], [ %arrayidx14.4, %for.body10.preheader ], [ %arrayidx74.4, %if.then ]
  %arrayidx70.5.sink = phi ptr [ %arrayidx48.5, %for.body45.preheader ], [ %arrayidx24.5, %for.body21.preheader ], [ %arrayidx12.5, %for.body10.preheader ], [ %arrayidx70.5, %if.then ]
  %arrayidx74.5.sink = phi ptr [ %arrayidx51.5, %for.body45.preheader ], [ %arrayidx28.5, %for.body21.preheader ], [ %arrayidx14.5, %for.body10.preheader ], [ %arrayidx74.5, %if.then ]
  %arrayidx70.6.sink = phi ptr [ %arrayidx48.6, %for.body45.preheader ], [ %arrayidx24.6, %for.body21.preheader ], [ %arrayidx12.6, %for.body10.preheader ], [ %arrayidx70.6, %if.then ]
  %arrayidx74.6.sink = phi ptr [ %arrayidx51.6, %for.body45.preheader ], [ %arrayidx28.6, %for.body21.preheader ], [ %arrayidx14.6, %for.body10.preheader ], [ %arrayidx74.6, %if.then ]
  %arrayidx70.7.sink = phi ptr [ %arrayidx48.7, %for.body45.preheader ], [ %arrayidx24.7, %for.body21.preheader ], [ %arrayidx12.7, %for.body10.preheader ], [ %arrayidx70.7, %if.then ]
  %arrayidx74.7.sink = phi ptr [ %arrayidx51.7, %for.body45.preheader ], [ %arrayidx28.7, %for.body21.preheader ], [ %arrayidx14.7, %for.body10.preheader ], [ %arrayidx74.7, %if.then ]
  %arrayidx70.8.sink = phi ptr [ %arrayidx48.8, %for.body45.preheader ], [ %arrayidx24.8, %for.body21.preheader ], [ %arrayidx12.8, %for.body10.preheader ], [ %arrayidx70.8, %if.then ]
  %arrayidx74.8.sink = phi ptr [ %arrayidx51.8, %for.body45.preheader ], [ %arrayidx28.8, %for.body21.preheader ], [ %arrayidx14.8, %for.body10.preheader ], [ %arrayidx74.8, %if.then ]
  %arrayidx70.9.sink = phi ptr [ %arrayidx48.9, %for.body45.preheader ], [ %arrayidx24.9, %for.body21.preheader ], [ %arrayidx12.9, %for.body10.preheader ], [ %arrayidx70.9, %if.then ]
  %arrayidx74.9.sink = phi ptr [ %arrayidx51.9, %for.body45.preheader ], [ %arrayidx28.9, %for.body21.preheader ], [ %arrayidx14.9, %for.body10.preheader ], [ %arrayidx74.9, %if.then ]
  %arrayidx70.10.sink = phi ptr [ %arrayidx48.10, %for.body45.preheader ], [ %arrayidx24.10, %for.body21.preheader ], [ %arrayidx12.10, %for.body10.preheader ], [ %arrayidx70.10, %if.then ]
  %arrayidx74.10.sink = phi ptr [ %arrayidx51.10, %for.body45.preheader ], [ %arrayidx28.10, %for.body21.preheader ], [ %arrayidx14.10, %for.body10.preheader ], [ %arrayidx74.10, %if.then ]
  %arrayidx70.11.sink = phi ptr [ %arrayidx48.11, %for.body45.preheader ], [ %arrayidx24.11, %for.body21.preheader ], [ %arrayidx12.11, %for.body10.preheader ], [ %arrayidx70.11, %if.then ]
  %arrayidx74.11.sink = phi ptr [ %arrayidx51.11, %for.body45.preheader ], [ %arrayidx28.11, %for.body21.preheader ], [ %arrayidx14.11, %for.body10.preheader ], [ %arrayidx74.11, %if.then ]
  %arrayidx70.12.sink = phi ptr [ %arrayidx48.12, %for.body45.preheader ], [ %arrayidx24.12, %for.body21.preheader ], [ %arrayidx12.12, %for.body10.preheader ], [ %arrayidx70.12, %if.then ]
  %arrayidx74.12.sink = phi ptr [ %arrayidx51.12, %for.body45.preheader ], [ %arrayidx28.12, %for.body21.preheader ], [ %arrayidx14.12, %for.body10.preheader ], [ %arrayidx74.12, %if.then ]
  %arrayidx70.13.sink = phi ptr [ %arrayidx48.13, %for.body45.preheader ], [ %arrayidx24.13, %for.body21.preheader ], [ %arrayidx12.13, %for.body10.preheader ], [ %arrayidx70.13, %if.then ]
  %arrayidx74.13.sink = phi ptr [ %arrayidx51.13, %for.body45.preheader ], [ %arrayidx28.13, %for.body21.preheader ], [ %arrayidx14.13, %for.body10.preheader ], [ %arrayidx74.13, %if.then ]
  %arrayidx70.14.sink = phi ptr [ %arrayidx48.14, %for.body45.preheader ], [ %arrayidx24.14, %for.body21.preheader ], [ %arrayidx12.14, %for.body10.preheader ], [ %arrayidx70.14, %if.then ]
  %arrayidx74.14.sink = phi ptr [ %arrayidx51.14, %for.body45.preheader ], [ %arrayidx28.14, %for.body21.preheader ], [ %arrayidx14.14, %for.body10.preheader ], [ %arrayidx74.14, %if.then ]
  %arrayidx70.15.sink = phi ptr [ %arrayidx48.15, %for.body45.preheader ], [ %arrayidx24.15, %for.body21.preheader ], [ %arrayidx12.15, %for.body10.preheader ], [ %arrayidx70.15, %if.then ]
  %arrayidx74.15.sink = phi ptr [ %arrayidx51.15, %for.body45.preheader ], [ %arrayidx28.15, %for.body21.preheader ], [ %arrayidx14.15, %for.body10.preheader ], [ %arrayidx74.15, %if.then ]
  %2 = load i16, ptr %arrayidx70.sink, align 2
  %conv71 = zext i16 %2 to i32
  %3 = load i16, ptr %add.ptr61.sink, align 2
  %conv75 = zext i16 %3 to i32
  %sub76 = sub nsw i32 %conv71, %conv75
  %sub.i157 = tail call i32 @llvm.abs.i32(i32 %sub76, i1 true)
  %add78 = add nsw i32 %sub.i157, %distortion.0170
  %4 = load i16, ptr %arrayidx70.1.sink, align 2
  %conv71.1 = zext i16 %4 to i32
  %5 = load i16, ptr %arrayidx74.1.sink, align 2
  %conv75.1 = zext i16 %5 to i32
  %sub76.1 = sub nsw i32 %conv71.1, %conv75.1
  %sub.i157.1 = tail call i32 @llvm.abs.i32(i32 %sub76.1, i1 true)
  %add78.1 = add nsw i32 %sub.i157.1, %add78
  %6 = load i16, ptr %arrayidx70.2.sink, align 2
  %conv71.2 = zext i16 %6 to i32
  %7 = load i16, ptr %arrayidx74.2.sink, align 2
  %conv75.2 = zext i16 %7 to i32
  %sub76.2 = sub nsw i32 %conv71.2, %conv75.2
  %sub.i157.2 = tail call i32 @llvm.abs.i32(i32 %sub76.2, i1 true)
  %add78.2 = add nsw i32 %sub.i157.2, %add78.1
  %8 = load i16, ptr %arrayidx70.3.sink, align 2
  %conv71.3 = zext i16 %8 to i32
  %9 = load i16, ptr %arrayidx74.3.sink, align 2
  %conv75.3 = zext i16 %9 to i32
  %sub76.3 = sub nsw i32 %conv71.3, %conv75.3
  %sub.i157.3 = tail call i32 @llvm.abs.i32(i32 %sub76.3, i1 true)
  %add78.3 = add nsw i32 %sub.i157.3, %add78.2
  %10 = load i16, ptr %arrayidx70.4.sink, align 2
  %conv71.4 = zext i16 %10 to i32
  %11 = load i16, ptr %arrayidx74.4.sink, align 2
  %conv75.4 = zext i16 %11 to i32
  %sub76.4 = sub nsw i32 %conv71.4, %conv75.4
  %sub.i157.4 = tail call i32 @llvm.abs.i32(i32 %sub76.4, i1 true)
  %add78.4 = add nsw i32 %sub.i157.4, %add78.3
  %12 = load i16, ptr %arrayidx70.5.sink, align 2
  %conv71.5 = zext i16 %12 to i32
  %13 = load i16, ptr %arrayidx74.5.sink, align 2
  %conv75.5 = zext i16 %13 to i32
  %sub76.5 = sub nsw i32 %conv71.5, %conv75.5
  %sub.i157.5 = tail call i32 @llvm.abs.i32(i32 %sub76.5, i1 true)
  %add78.5 = add nsw i32 %sub.i157.5, %add78.4
  %14 = load i16, ptr %arrayidx70.6.sink, align 2
  %conv71.6 = zext i16 %14 to i32
  %15 = load i16, ptr %arrayidx74.6.sink, align 2
  %conv75.6 = zext i16 %15 to i32
  %sub76.6 = sub nsw i32 %conv71.6, %conv75.6
  %sub.i157.6 = tail call i32 @llvm.abs.i32(i32 %sub76.6, i1 true)
  %add78.6 = add nsw i32 %sub.i157.6, %add78.5
  %16 = load i16, ptr %arrayidx70.7.sink, align 2
  %conv71.7 = zext i16 %16 to i32
  %17 = load i16, ptr %arrayidx74.7.sink, align 2
  %conv75.7 = zext i16 %17 to i32
  %sub76.7 = sub nsw i32 %conv71.7, %conv75.7
  %sub.i157.7 = tail call i32 @llvm.abs.i32(i32 %sub76.7, i1 true)
  %add78.7 = add nsw i32 %sub.i157.7, %add78.6
  %18 = load i16, ptr %arrayidx70.8.sink, align 2
  %conv71.8 = zext i16 %18 to i32
  %19 = load i16, ptr %arrayidx74.8.sink, align 2
  %conv75.8 = zext i16 %19 to i32
  %sub76.8 = sub nsw i32 %conv71.8, %conv75.8
  %sub.i157.8 = tail call i32 @llvm.abs.i32(i32 %sub76.8, i1 true)
  %add78.8 = add nsw i32 %sub.i157.8, %add78.7
  %20 = load i16, ptr %arrayidx70.9.sink, align 2
  %conv71.9 = zext i16 %20 to i32
  %21 = load i16, ptr %arrayidx74.9.sink, align 2
  %conv75.9 = zext i16 %21 to i32
  %sub76.9 = sub nsw i32 %conv71.9, %conv75.9
  %sub.i157.9 = tail call i32 @llvm.abs.i32(i32 %sub76.9, i1 true)
  %add78.9 = add nsw i32 %sub.i157.9, %add78.8
  %22 = load i16, ptr %arrayidx70.10.sink, align 2
  %conv71.10 = zext i16 %22 to i32
  %23 = load i16, ptr %arrayidx74.10.sink, align 2
  %conv75.10 = zext i16 %23 to i32
  %sub76.10 = sub nsw i32 %conv71.10, %conv75.10
  %sub.i157.10 = tail call i32 @llvm.abs.i32(i32 %sub76.10, i1 true)
  %add78.10 = add nsw i32 %sub.i157.10, %add78.9
  %24 = load i16, ptr %arrayidx70.11.sink, align 2
  %conv71.11 = zext i16 %24 to i32
  %25 = load i16, ptr %arrayidx74.11.sink, align 2
  %conv75.11 = zext i16 %25 to i32
  %sub76.11 = sub nsw i32 %conv71.11, %conv75.11
  %sub.i157.11 = tail call i32 @llvm.abs.i32(i32 %sub76.11, i1 true)
  %add78.11 = add nsw i32 %sub.i157.11, %add78.10
  %26 = load i16, ptr %arrayidx70.12.sink, align 2
  %conv71.12 = zext i16 %26 to i32
  %27 = load i16, ptr %arrayidx74.12.sink, align 2
  %conv75.12 = zext i16 %27 to i32
  %sub76.12 = sub nsw i32 %conv71.12, %conv75.12
  %sub.i157.12 = tail call i32 @llvm.abs.i32(i32 %sub76.12, i1 true)
  %add78.12 = add nsw i32 %sub.i157.12, %add78.11
  %28 = load i16, ptr %arrayidx70.13.sink, align 2
  %conv71.13 = zext i16 %28 to i32
  %29 = load i16, ptr %arrayidx74.13.sink, align 2
  %conv75.13 = zext i16 %29 to i32
  %sub76.13 = sub nsw i32 %conv71.13, %conv75.13
  %sub.i157.13 = tail call i32 @llvm.abs.i32(i32 %sub76.13, i1 true)
  %add78.13 = add nsw i32 %sub.i157.13, %add78.12
  %30 = load i16, ptr %arrayidx70.14.sink, align 2
  %conv71.14 = zext i16 %30 to i32
  %31 = load i16, ptr %arrayidx74.14.sink, align 2
  %conv75.14 = zext i16 %31 to i32
  %sub76.14 = sub nsw i32 %conv71.14, %conv75.14
  %sub.i157.14 = tail call i32 @llvm.abs.i32(i32 %sub76.14, i1 true)
  %add78.14 = add nsw i32 %sub.i157.14, %add78.13
  %32 = load i16, ptr %arrayidx70.15.sink, align 2
  %conv71.15 = zext i16 %32 to i32
  %33 = load i16, ptr %arrayidx74.15.sink, align 2
  %conv75.15 = zext i16 %33 to i32
  %sub76.15 = sub nsw i32 %conv71.15, %conv75.15
  %sub.i157.15 = tail call i32 @llvm.abs.i32(i32 %sub76.15, i1 true)
  %add78.15 = add nsw i32 %sub.i157.15, %add78.14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then
  %distortion.5 = phi i32 [ %distortion.0170, %if.then ], [ %add78.15, %sw.epilog.sink.split ]
  %inc82 = add nsw i32 %numOfPredBlocks.0171, 1
  br label %for.inc83

for.inc83:                                        ; preds = %for.body, %sw.epilog
  %distortion.6 = phi i32 [ %distortion.5, %sw.epilog ], [ %distortion.0170, %for.body ]
  %numOfPredBlocks.1 = phi i32 [ %inc82, %sw.epilog ], [ %numOfPredBlocks.0171, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end85, label %for.body

for.end85:                                        ; preds = %for.inc83
  %cmp90 = icmp eq i32 %numOfPredBlocks.1, 0
  br i1 %cmp90, label %for.body.1, label %do.end

for.body.1:                                       ; preds = %for.end85, %for.inc83.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %for.inc83.1 ], [ 4, %for.end85 ]
  %numOfPredBlocks.0171.1 = phi i32 [ %numOfPredBlocks.1.1, %for.inc83.1 ], [ 0, %for.end85 ]
  %distortion.0170.1 = phi i32 [ %distortion.6.1, %for.inc83.1 ], [ 0, %for.end85 ]
  %arrayidx.1 = getelementptr inbounds i32, ptr %predBlocks, i64 %indvars.iv.1
  %34 = load i32, ptr %arrayidx.1, align 4
  %cmp5.not.1 = icmp slt i32 %34, 2
  br i1 %cmp5.not.1, label %for.inc83.1, label %if.then.1

if.then.1:                                        ; preds = %for.body.1
  %35 = trunc nuw nsw i64 %indvars.iv.1 to i32
  switch i32 %35, label %sw.epilog.1 [
    i32 4, label %for.body10.preheader.1
    i32 5, label %for.body21.preheader.1
    i32 6, label %for.body45.preheader.1
    i32 7, label %sw.epilog.sink.split.1
  ]

for.body45.preheader.1:                           ; preds = %if.then.1
  br label %sw.epilog.sink.split.1

for.body21.preheader.1:                           ; preds = %if.then.1
  br label %sw.epilog.sink.split.1

for.body10.preheader.1:                           ; preds = %if.then.1
  br label %sw.epilog.sink.split.1

sw.epilog.sink.split.1:                           ; preds = %for.body10.preheader.1, %for.body21.preheader.1, %for.body45.preheader.1, %if.then.1
  %arrayidx70.sink.1 = phi ptr [ %arrayidx48, %for.body45.preheader.1 ], [ %predMB, %for.body21.preheader.1 ], [ %predMB, %for.body10.preheader.1 ], [ %arrayidx70, %if.then.1 ]
  %add.ptr61.sink.1 = phi ptr [ %add.ptr39, %for.body45.preheader.1 ], [ %add.ptr17, %for.body21.preheader.1 ], [ %add.ptr7, %for.body10.preheader.1 ], [ %add.ptr61, %if.then.1 ]
  %arrayidx70.1.sink.1 = phi ptr [ %arrayidx48.1, %for.body45.preheader.1 ], [ %arrayidx24.1, %for.body21.preheader.1 ], [ %arrayidx12.1, %for.body10.preheader.1 ], [ %arrayidx70.1, %if.then.1 ]
  %arrayidx74.1.sink.1 = phi ptr [ %arrayidx51.1, %for.body45.preheader.1 ], [ %arrayidx28.1, %for.body21.preheader.1 ], [ %arrayidx14.1, %for.body10.preheader.1 ], [ %arrayidx74.1, %if.then.1 ]
  %arrayidx70.2.sink.1 = phi ptr [ %arrayidx48.2, %for.body45.preheader.1 ], [ %arrayidx24.2, %for.body21.preheader.1 ], [ %arrayidx12.2, %for.body10.preheader.1 ], [ %arrayidx70.2, %if.then.1 ]
  %arrayidx74.2.sink.1 = phi ptr [ %arrayidx51.2, %for.body45.preheader.1 ], [ %arrayidx28.2, %for.body21.preheader.1 ], [ %arrayidx14.2, %for.body10.preheader.1 ], [ %arrayidx74.2, %if.then.1 ]
  %arrayidx70.3.sink.1 = phi ptr [ %arrayidx48.3, %for.body45.preheader.1 ], [ %arrayidx24.3, %for.body21.preheader.1 ], [ %arrayidx12.3, %for.body10.preheader.1 ], [ %arrayidx70.3, %if.then.1 ]
  %arrayidx74.3.sink.1 = phi ptr [ %arrayidx51.3, %for.body45.preheader.1 ], [ %arrayidx28.3, %for.body21.preheader.1 ], [ %arrayidx14.3, %for.body10.preheader.1 ], [ %arrayidx74.3, %if.then.1 ]
  %arrayidx70.4.sink.1 = phi ptr [ %arrayidx48.4, %for.body45.preheader.1 ], [ %arrayidx24.4, %for.body21.preheader.1 ], [ %arrayidx12.4, %for.body10.preheader.1 ], [ %arrayidx70.4, %if.then.1 ]
  %arrayidx74.4.sink.1 = phi ptr [ %arrayidx51.4, %for.body45.preheader.1 ], [ %arrayidx28.4, %for.body21.preheader.1 ], [ %arrayidx14.4, %for.body10.preheader.1 ], [ %arrayidx74.4, %if.then.1 ]
  %arrayidx70.5.sink.1 = phi ptr [ %arrayidx48.5, %for.body45.preheader.1 ], [ %arrayidx24.5, %for.body21.preheader.1 ], [ %arrayidx12.5, %for.body10.preheader.1 ], [ %arrayidx70.5, %if.then.1 ]
  %arrayidx74.5.sink.1 = phi ptr [ %arrayidx51.5, %for.body45.preheader.1 ], [ %arrayidx28.5, %for.body21.preheader.1 ], [ %arrayidx14.5, %for.body10.preheader.1 ], [ %arrayidx74.5, %if.then.1 ]
  %arrayidx70.6.sink.1 = phi ptr [ %arrayidx48.6, %for.body45.preheader.1 ], [ %arrayidx24.6, %for.body21.preheader.1 ], [ %arrayidx12.6, %for.body10.preheader.1 ], [ %arrayidx70.6, %if.then.1 ]
  %arrayidx74.6.sink.1 = phi ptr [ %arrayidx51.6, %for.body45.preheader.1 ], [ %arrayidx28.6, %for.body21.preheader.1 ], [ %arrayidx14.6, %for.body10.preheader.1 ], [ %arrayidx74.6, %if.then.1 ]
  %arrayidx70.7.sink.1 = phi ptr [ %arrayidx48.7, %for.body45.preheader.1 ], [ %arrayidx24.7, %for.body21.preheader.1 ], [ %arrayidx12.7, %for.body10.preheader.1 ], [ %arrayidx70.7, %if.then.1 ]
  %arrayidx74.7.sink.1 = phi ptr [ %arrayidx51.7, %for.body45.preheader.1 ], [ %arrayidx28.7, %for.body21.preheader.1 ], [ %arrayidx14.7, %for.body10.preheader.1 ], [ %arrayidx74.7, %if.then.1 ]
  %arrayidx70.8.sink.1 = phi ptr [ %arrayidx48.8, %for.body45.preheader.1 ], [ %arrayidx24.8, %for.body21.preheader.1 ], [ %arrayidx12.8, %for.body10.preheader.1 ], [ %arrayidx70.8, %if.then.1 ]
  %arrayidx74.8.sink.1 = phi ptr [ %arrayidx51.8, %for.body45.preheader.1 ], [ %arrayidx28.8, %for.body21.preheader.1 ], [ %arrayidx14.8, %for.body10.preheader.1 ], [ %arrayidx74.8, %if.then.1 ]
  %arrayidx70.9.sink.1 = phi ptr [ %arrayidx48.9, %for.body45.preheader.1 ], [ %arrayidx24.9, %for.body21.preheader.1 ], [ %arrayidx12.9, %for.body10.preheader.1 ], [ %arrayidx70.9, %if.then.1 ]
  %arrayidx74.9.sink.1 = phi ptr [ %arrayidx51.9, %for.body45.preheader.1 ], [ %arrayidx28.9, %for.body21.preheader.1 ], [ %arrayidx14.9, %for.body10.preheader.1 ], [ %arrayidx74.9, %if.then.1 ]
  %arrayidx70.10.sink.1 = phi ptr [ %arrayidx48.10, %for.body45.preheader.1 ], [ %arrayidx24.10, %for.body21.preheader.1 ], [ %arrayidx12.10, %for.body10.preheader.1 ], [ %arrayidx70.10, %if.then.1 ]
  %arrayidx74.10.sink.1 = phi ptr [ %arrayidx51.10, %for.body45.preheader.1 ], [ %arrayidx28.10, %for.body21.preheader.1 ], [ %arrayidx14.10, %for.body10.preheader.1 ], [ %arrayidx74.10, %if.then.1 ]
  %arrayidx70.11.sink.1 = phi ptr [ %arrayidx48.11, %for.body45.preheader.1 ], [ %arrayidx24.11, %for.body21.preheader.1 ], [ %arrayidx12.11, %for.body10.preheader.1 ], [ %arrayidx70.11, %if.then.1 ]
  %arrayidx74.11.sink.1 = phi ptr [ %arrayidx51.11, %for.body45.preheader.1 ], [ %arrayidx28.11, %for.body21.preheader.1 ], [ %arrayidx14.11, %for.body10.preheader.1 ], [ %arrayidx74.11, %if.then.1 ]
  %arrayidx70.12.sink.1 = phi ptr [ %arrayidx48.12, %for.body45.preheader.1 ], [ %arrayidx24.12, %for.body21.preheader.1 ], [ %arrayidx12.12, %for.body10.preheader.1 ], [ %arrayidx70.12, %if.then.1 ]
  %arrayidx74.12.sink.1 = phi ptr [ %arrayidx51.12, %for.body45.preheader.1 ], [ %arrayidx28.12, %for.body21.preheader.1 ], [ %arrayidx14.12, %for.body10.preheader.1 ], [ %arrayidx74.12, %if.then.1 ]
  %arrayidx70.13.sink.1 = phi ptr [ %arrayidx48.13, %for.body45.preheader.1 ], [ %arrayidx24.13, %for.body21.preheader.1 ], [ %arrayidx12.13, %for.body10.preheader.1 ], [ %arrayidx70.13, %if.then.1 ]
  %arrayidx74.13.sink.1 = phi ptr [ %arrayidx51.13, %for.body45.preheader.1 ], [ %arrayidx28.13, %for.body21.preheader.1 ], [ %arrayidx14.13, %for.body10.preheader.1 ], [ %arrayidx74.13, %if.then.1 ]
  %arrayidx70.14.sink.1 = phi ptr [ %arrayidx48.14, %for.body45.preheader.1 ], [ %arrayidx24.14, %for.body21.preheader.1 ], [ %arrayidx12.14, %for.body10.preheader.1 ], [ %arrayidx70.14, %if.then.1 ]
  %arrayidx74.14.sink.1 = phi ptr [ %arrayidx51.14, %for.body45.preheader.1 ], [ %arrayidx28.14, %for.body21.preheader.1 ], [ %arrayidx14.14, %for.body10.preheader.1 ], [ %arrayidx74.14, %if.then.1 ]
  %arrayidx70.15.sink.1 = phi ptr [ %arrayidx48.15, %for.body45.preheader.1 ], [ %arrayidx24.15, %for.body21.preheader.1 ], [ %arrayidx12.15, %for.body10.preheader.1 ], [ %arrayidx70.15, %if.then.1 ]
  %arrayidx74.15.sink.1 = phi ptr [ %arrayidx51.15, %for.body45.preheader.1 ], [ %arrayidx28.15, %for.body21.preheader.1 ], [ %arrayidx14.15, %for.body10.preheader.1 ], [ %arrayidx74.15, %if.then.1 ]
  %36 = load i16, ptr %arrayidx70.sink.1, align 2
  %conv71.16 = zext i16 %36 to i32
  %37 = load i16, ptr %add.ptr61.sink.1, align 2
  %conv75.17 = zext i16 %37 to i32
  %sub76.18 = sub nsw i32 %conv71.16, %conv75.17
  %sub.i157.19 = tail call i32 @llvm.abs.i32(i32 %sub76.18, i1 true)
  %add78.110 = add nsw i32 %sub.i157.19, %distortion.0170.1
  %38 = load i16, ptr %arrayidx70.1.sink.1, align 2
  %conv71.1.1 = zext i16 %38 to i32
  %39 = load i16, ptr %arrayidx74.1.sink.1, align 2
  %conv75.1.1 = zext i16 %39 to i32
  %sub76.1.1 = sub nsw i32 %conv71.1.1, %conv75.1.1
  %sub.i157.1.1 = tail call i32 @llvm.abs.i32(i32 %sub76.1.1, i1 true)
  %add78.1.1 = add nsw i32 %sub.i157.1.1, %add78.110
  %40 = load i16, ptr %arrayidx70.2.sink.1, align 2
  %conv71.2.1 = zext i16 %40 to i32
  %41 = load i16, ptr %arrayidx74.2.sink.1, align 2
  %conv75.2.1 = zext i16 %41 to i32
  %sub76.2.1 = sub nsw i32 %conv71.2.1, %conv75.2.1
  %sub.i157.2.1 = tail call i32 @llvm.abs.i32(i32 %sub76.2.1, i1 true)
  %add78.2.1 = add nsw i32 %sub.i157.2.1, %add78.1.1
  %42 = load i16, ptr %arrayidx70.3.sink.1, align 2
  %conv71.3.1 = zext i16 %42 to i32
  %43 = load i16, ptr %arrayidx74.3.sink.1, align 2
  %conv75.3.1 = zext i16 %43 to i32
  %sub76.3.1 = sub nsw i32 %conv71.3.1, %conv75.3.1
  %sub.i157.3.1 = tail call i32 @llvm.abs.i32(i32 %sub76.3.1, i1 true)
  %add78.3.1 = add nsw i32 %sub.i157.3.1, %add78.2.1
  %44 = load i16, ptr %arrayidx70.4.sink.1, align 2
  %conv71.4.1 = zext i16 %44 to i32
  %45 = load i16, ptr %arrayidx74.4.sink.1, align 2
  %conv75.4.1 = zext i16 %45 to i32
  %sub76.4.1 = sub nsw i32 %conv71.4.1, %conv75.4.1
  %sub.i157.4.1 = tail call i32 @llvm.abs.i32(i32 %sub76.4.1, i1 true)
  %add78.4.1 = add nsw i32 %sub.i157.4.1, %add78.3.1
  %46 = load i16, ptr %arrayidx70.5.sink.1, align 2
  %conv71.5.1 = zext i16 %46 to i32
  %47 = load i16, ptr %arrayidx74.5.sink.1, align 2
  %conv75.5.1 = zext i16 %47 to i32
  %sub76.5.1 = sub nsw i32 %conv71.5.1, %conv75.5.1
  %sub.i157.5.1 = tail call i32 @llvm.abs.i32(i32 %sub76.5.1, i1 true)
  %add78.5.1 = add nsw i32 %sub.i157.5.1, %add78.4.1
  %48 = load i16, ptr %arrayidx70.6.sink.1, align 2
  %conv71.6.1 = zext i16 %48 to i32
  %49 = load i16, ptr %arrayidx74.6.sink.1, align 2
  %conv75.6.1 = zext i16 %49 to i32
  %sub76.6.1 = sub nsw i32 %conv71.6.1, %conv75.6.1
  %sub.i157.6.1 = tail call i32 @llvm.abs.i32(i32 %sub76.6.1, i1 true)
  %add78.6.1 = add nsw i32 %sub.i157.6.1, %add78.5.1
  %50 = load i16, ptr %arrayidx70.7.sink.1, align 2
  %conv71.7.1 = zext i16 %50 to i32
  %51 = load i16, ptr %arrayidx74.7.sink.1, align 2
  %conv75.7.1 = zext i16 %51 to i32
  %sub76.7.1 = sub nsw i32 %conv71.7.1, %conv75.7.1
  %sub.i157.7.1 = tail call i32 @llvm.abs.i32(i32 %sub76.7.1, i1 true)
  %add78.7.1 = add nsw i32 %sub.i157.7.1, %add78.6.1
  %52 = load i16, ptr %arrayidx70.8.sink.1, align 2
  %conv71.8.1 = zext i16 %52 to i32
  %53 = load i16, ptr %arrayidx74.8.sink.1, align 2
  %conv75.8.1 = zext i16 %53 to i32
  %sub76.8.1 = sub nsw i32 %conv71.8.1, %conv75.8.1
  %sub.i157.8.1 = tail call i32 @llvm.abs.i32(i32 %sub76.8.1, i1 true)
  %add78.8.1 = add nsw i32 %sub.i157.8.1, %add78.7.1
  %54 = load i16, ptr %arrayidx70.9.sink.1, align 2
  %conv71.9.1 = zext i16 %54 to i32
  %55 = load i16, ptr %arrayidx74.9.sink.1, align 2
  %conv75.9.1 = zext i16 %55 to i32
  %sub76.9.1 = sub nsw i32 %conv71.9.1, %conv75.9.1
  %sub.i157.9.1 = tail call i32 @llvm.abs.i32(i32 %sub76.9.1, i1 true)
  %add78.9.1 = add nsw i32 %sub.i157.9.1, %add78.8.1
  %56 = load i16, ptr %arrayidx70.10.sink.1, align 2
  %conv71.10.1 = zext i16 %56 to i32
  %57 = load i16, ptr %arrayidx74.10.sink.1, align 2
  %conv75.10.1 = zext i16 %57 to i32
  %sub76.10.1 = sub nsw i32 %conv71.10.1, %conv75.10.1
  %sub.i157.10.1 = tail call i32 @llvm.abs.i32(i32 %sub76.10.1, i1 true)
  %add78.10.1 = add nsw i32 %sub.i157.10.1, %add78.9.1
  %58 = load i16, ptr %arrayidx70.11.sink.1, align 2
  %conv71.11.1 = zext i16 %58 to i32
  %59 = load i16, ptr %arrayidx74.11.sink.1, align 2
  %conv75.11.1 = zext i16 %59 to i32
  %sub76.11.1 = sub nsw i32 %conv71.11.1, %conv75.11.1
  %sub.i157.11.1 = tail call i32 @llvm.abs.i32(i32 %sub76.11.1, i1 true)
  %add78.11.1 = add nsw i32 %sub.i157.11.1, %add78.10.1
  %60 = load i16, ptr %arrayidx70.12.sink.1, align 2
  %conv71.12.1 = zext i16 %60 to i32
  %61 = load i16, ptr %arrayidx74.12.sink.1, align 2
  %conv75.12.1 = zext i16 %61 to i32
  %sub76.12.1 = sub nsw i32 %conv71.12.1, %conv75.12.1
  %sub.i157.12.1 = tail call i32 @llvm.abs.i32(i32 %sub76.12.1, i1 true)
  %add78.12.1 = add nsw i32 %sub.i157.12.1, %add78.11.1
  %62 = load i16, ptr %arrayidx70.13.sink.1, align 2
  %conv71.13.1 = zext i16 %62 to i32
  %63 = load i16, ptr %arrayidx74.13.sink.1, align 2
  %conv75.13.1 = zext i16 %63 to i32
  %sub76.13.1 = sub nsw i32 %conv71.13.1, %conv75.13.1
  %sub.i157.13.1 = tail call i32 @llvm.abs.i32(i32 %sub76.13.1, i1 true)
  %add78.13.1 = add nsw i32 %sub.i157.13.1, %add78.12.1
  %64 = load i16, ptr %arrayidx70.14.sink.1, align 2
  %conv71.14.1 = zext i16 %64 to i32
  %65 = load i16, ptr %arrayidx74.14.sink.1, align 2
  %conv75.14.1 = zext i16 %65 to i32
  %sub76.14.1 = sub nsw i32 %conv71.14.1, %conv75.14.1
  %sub.i157.14.1 = tail call i32 @llvm.abs.i32(i32 %sub76.14.1, i1 true)
  %add78.14.1 = add nsw i32 %sub.i157.14.1, %add78.13.1
  %66 = load i16, ptr %arrayidx70.15.sink.1, align 2
  %conv71.15.1 = zext i16 %66 to i32
  %67 = load i16, ptr %arrayidx74.15.sink.1, align 2
  %conv75.15.1 = zext i16 %67 to i32
  %sub76.15.1 = sub nsw i32 %conv71.15.1, %conv75.15.1
  %sub.i157.15.1 = tail call i32 @llvm.abs.i32(i32 %sub76.15.1, i1 true)
  %add78.15.1 = add nsw i32 %sub.i157.15.1, %add78.14.1
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %sw.epilog.sink.split.1, %if.then.1
  %distortion.5.1 = phi i32 [ %distortion.0170.1, %if.then.1 ], [ %add78.15.1, %sw.epilog.sink.split.1 ]
  %inc82.1 = add nsw i32 %numOfPredBlocks.0171.1, 1
  br label %for.inc83.1

for.inc83.1:                                      ; preds = %sw.epilog.1, %for.body.1
  %distortion.6.1 = phi i32 [ %distortion.5.1, %sw.epilog.1 ], [ %distortion.0170.1, %for.body.1 ]
  %numOfPredBlocks.1.1 = phi i32 [ %inc82.1, %sw.epilog.1 ], [ %numOfPredBlocks.0171.1, %for.body.1 ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 8
  br i1 %exitcond.not.1, label %for.end85.1, label %for.body.1

for.end85.1:                                      ; preds = %for.inc83.1
  %cmp90.1 = icmp eq i32 %numOfPredBlocks.1.1, 0
  br label %do.end

do.end:                                           ; preds = %for.end85.1, %for.end85
  %cmp90.lcssa = phi i1 [ %cmp90, %for.end85 ], [ %cmp90.1, %for.end85.1 ]
  %distortion.6.lcssa.lcssa = phi i32 [ %distortion.6, %for.end85 ], [ %distortion.6.1, %for.end85.1 ]
  %numOfPredBlocks.1.lcssa.lcssa = phi i32 [ %numOfPredBlocks.1, %for.end85 ], [ %numOfPredBlocks.1.1, %for.end85.1 ]
  br i1 %cmp90.lcssa, label %cleanup, label %if.end95

if.end95:                                         ; preds = %do.end
  %div96 = sdiv i32 %distortion.6.lcssa.lcssa, %numOfPredBlocks.1.lcssa.lcssa
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end95
  %retval.0 = phi i32 [ %div96, %if.end95 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copyPredMB(i32 noundef %currYBlockNum, ptr nocapture noundef readonly %predMB, ptr nocapture readonly %recfr.0.val, i32 noundef %picSizeX) unnamed_addr #4 {
entry:
  %dec_picture2 = getelementptr inbounds i8, ptr %recfr.0.val, i64 856456
  %0 = load ptr, ptr %dec_picture2, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 268
  %1 = load i32, ptr %chroma_format_idc, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @uv_div, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (i8, ptr @uv_div, i64 16), i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx5, align 4
  %shr = ashr i32 %picSizeX, 3
  %rem = srem i32 %currYBlockNum, %shr
  %shl = shl nsw i32 %rem, 3
  %div = sdiv i32 %currYBlockNum, %shr
  %shl7 = shl i32 %div, 3
  %sub9 = add i32 %shl7, 15
  %imgY = getelementptr inbounds i8, ptr %0, i64 128
  %4 = sext i32 %shl to i64
  %5 = sext i32 %shl7 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %shl7, i32 %sub9)
  %6 = add i32 %smax, 1
  %indvars.iv.next = or disjoint i64 %4, 1
  %7 = trunc nsw i64 %indvars.iv.next to i32
  %indvars.iv.next.1 = or disjoint i64 %4, 2
  %8 = trunc nsw i64 %indvars.iv.next.1 to i32
  %indvars.iv.next.2 = or disjoint i64 %4, 3
  %9 = trunc nsw i64 %indvars.iv.next.2 to i32
  %indvars.iv.next.3 = or disjoint i64 %4, 4
  %10 = trunc nsw i64 %indvars.iv.next.3 to i32
  %indvars.iv.next.4 = or disjoint i64 %4, 5
  %11 = trunc nsw i64 %indvars.iv.next.4 to i32
  %indvars.iv.next.5 = or disjoint i64 %4, 6
  %12 = trunc nsw i64 %indvars.iv.next.5 to i32
  %indvars.iv.next.6 = or disjoint i64 %4, 7
  %13 = trunc nsw i64 %indvars.iv.next.6 to i32
  %indvars.iv.next.7 = add nsw i64 %4, 8
  %14 = trunc nsw i64 %indvars.iv.next.7 to i32
  %indvars.iv.next.8 = add nsw i64 %4, 9
  %15 = trunc nsw i64 %indvars.iv.next.8 to i32
  %indvars.iv.next.9 = add nsw i64 %4, 10
  %16 = trunc nsw i64 %indvars.iv.next.9 to i32
  %indvars.iv.next.10 = add nsw i64 %4, 11
  %17 = trunc nsw i64 %indvars.iv.next.10 to i32
  %indvars.iv.next.11 = add nsw i64 %4, 12
  %18 = trunc nsw i64 %indvars.iv.next.11 to i32
  %indvars.iv.next.12 = add nsw i64 %4, 13
  %19 = trunc nsw i64 %indvars.iv.next.12 to i32
  %indvars.iv.next.13 = add nsw i64 %4, 14
  %20 = trunc nsw i64 %indvars.iv.next.13 to i32
  %indvars.iv.next.14 = add nsw i64 %4, 15
  %21 = trunc nsw i64 %indvars.iv.next.14 to i32
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %entry, %for.cond10.preheader
  %indvars.iv = phi i64 [ %5, %entry ], [ %indvars.iv.next11, %for.cond10.preheader ]
  %22 = sub nsw i64 %indvars.iv, %5
  %23 = shl nsw i64 %22, 4
  %24 = trunc nuw nsw i64 %23 to i32
  %sub16 = sub i32 %24, %shl
  %arrayidx19 = getelementptr inbounds i16, ptr %predMB, i64 %23
  %25 = load i16, ptr %arrayidx19, align 2
  %26 = load ptr, ptr %imgY, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %26, i64 %indvars.iv
  %27 = load ptr, ptr %arrayidx21, align 8
  %arrayidx23 = getelementptr inbounds i16, ptr %27, i64 %4
  store i16 %25, ptr %arrayidx23, align 2
  %add17.1 = add i32 %sub16, %7
  %idxprom18.1 = sext i32 %add17.1 to i64
  %arrayidx19.1 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.1
  %28 = load i16, ptr %arrayidx19.1, align 2
  %29 = load ptr, ptr %imgY, align 8
  %arrayidx21.1 = getelementptr inbounds ptr, ptr %29, i64 %indvars.iv
  %30 = load ptr, ptr %arrayidx21.1, align 8
  %arrayidx23.1 = getelementptr inbounds i16, ptr %30, i64 %indvars.iv.next
  store i16 %28, ptr %arrayidx23.1, align 2
  %add17.2 = add i32 %sub16, %8
  %idxprom18.2 = sext i32 %add17.2 to i64
  %arrayidx19.2 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.2
  %31 = load i16, ptr %arrayidx19.2, align 2
  %32 = load ptr, ptr %imgY, align 8
  %arrayidx21.2 = getelementptr inbounds ptr, ptr %32, i64 %indvars.iv
  %33 = load ptr, ptr %arrayidx21.2, align 8
  %arrayidx23.2 = getelementptr inbounds i16, ptr %33, i64 %indvars.iv.next.1
  store i16 %31, ptr %arrayidx23.2, align 2
  %add17.3 = add i32 %sub16, %9
  %idxprom18.3 = sext i32 %add17.3 to i64
  %arrayidx19.3 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.3
  %34 = load i16, ptr %arrayidx19.3, align 2
  %35 = load ptr, ptr %imgY, align 8
  %arrayidx21.3 = getelementptr inbounds ptr, ptr %35, i64 %indvars.iv
  %36 = load ptr, ptr %arrayidx21.3, align 8
  %arrayidx23.3 = getelementptr inbounds i16, ptr %36, i64 %indvars.iv.next.2
  store i16 %34, ptr %arrayidx23.3, align 2
  %add17.4 = add i32 %sub16, %10
  %idxprom18.4 = sext i32 %add17.4 to i64
  %arrayidx19.4 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.4
  %37 = load i16, ptr %arrayidx19.4, align 2
  %38 = load ptr, ptr %imgY, align 8
  %arrayidx21.4 = getelementptr inbounds ptr, ptr %38, i64 %indvars.iv
  %39 = load ptr, ptr %arrayidx21.4, align 8
  %arrayidx23.4 = getelementptr inbounds i16, ptr %39, i64 %indvars.iv.next.3
  store i16 %37, ptr %arrayidx23.4, align 2
  %add17.5 = add i32 %sub16, %11
  %idxprom18.5 = sext i32 %add17.5 to i64
  %arrayidx19.5 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.5
  %40 = load i16, ptr %arrayidx19.5, align 2
  %41 = load ptr, ptr %imgY, align 8
  %arrayidx21.5 = getelementptr inbounds ptr, ptr %41, i64 %indvars.iv
  %42 = load ptr, ptr %arrayidx21.5, align 8
  %arrayidx23.5 = getelementptr inbounds i16, ptr %42, i64 %indvars.iv.next.4
  store i16 %40, ptr %arrayidx23.5, align 2
  %add17.6 = add i32 %sub16, %12
  %idxprom18.6 = sext i32 %add17.6 to i64
  %arrayidx19.6 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.6
  %43 = load i16, ptr %arrayidx19.6, align 2
  %44 = load ptr, ptr %imgY, align 8
  %arrayidx21.6 = getelementptr inbounds ptr, ptr %44, i64 %indvars.iv
  %45 = load ptr, ptr %arrayidx21.6, align 8
  %arrayidx23.6 = getelementptr inbounds i16, ptr %45, i64 %indvars.iv.next.5
  store i16 %43, ptr %arrayidx23.6, align 2
  %add17.7 = add i32 %sub16, %13
  %idxprom18.7 = sext i32 %add17.7 to i64
  %arrayidx19.7 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.7
  %46 = load i16, ptr %arrayidx19.7, align 2
  %47 = load ptr, ptr %imgY, align 8
  %arrayidx21.7 = getelementptr inbounds ptr, ptr %47, i64 %indvars.iv
  %48 = load ptr, ptr %arrayidx21.7, align 8
  %arrayidx23.7 = getelementptr inbounds i16, ptr %48, i64 %indvars.iv.next.6
  store i16 %46, ptr %arrayidx23.7, align 2
  %add17.8 = add i32 %sub16, %14
  %idxprom18.8 = sext i32 %add17.8 to i64
  %arrayidx19.8 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.8
  %49 = load i16, ptr %arrayidx19.8, align 2
  %50 = load ptr, ptr %imgY, align 8
  %arrayidx21.8 = getelementptr inbounds ptr, ptr %50, i64 %indvars.iv
  %51 = load ptr, ptr %arrayidx21.8, align 8
  %arrayidx23.8 = getelementptr inbounds i16, ptr %51, i64 %indvars.iv.next.7
  store i16 %49, ptr %arrayidx23.8, align 2
  %add17.9 = add i32 %sub16, %15
  %idxprom18.9 = sext i32 %add17.9 to i64
  %arrayidx19.9 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.9
  %52 = load i16, ptr %arrayidx19.9, align 2
  %53 = load ptr, ptr %imgY, align 8
  %arrayidx21.9 = getelementptr inbounds ptr, ptr %53, i64 %indvars.iv
  %54 = load ptr, ptr %arrayidx21.9, align 8
  %arrayidx23.9 = getelementptr inbounds i16, ptr %54, i64 %indvars.iv.next.8
  store i16 %52, ptr %arrayidx23.9, align 2
  %add17.10 = add i32 %sub16, %16
  %idxprom18.10 = sext i32 %add17.10 to i64
  %arrayidx19.10 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.10
  %55 = load i16, ptr %arrayidx19.10, align 2
  %56 = load ptr, ptr %imgY, align 8
  %arrayidx21.10 = getelementptr inbounds ptr, ptr %56, i64 %indvars.iv
  %57 = load ptr, ptr %arrayidx21.10, align 8
  %arrayidx23.10 = getelementptr inbounds i16, ptr %57, i64 %indvars.iv.next.9
  store i16 %55, ptr %arrayidx23.10, align 2
  %add17.11 = add i32 %sub16, %17
  %idxprom18.11 = sext i32 %add17.11 to i64
  %arrayidx19.11 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.11
  %58 = load i16, ptr %arrayidx19.11, align 2
  %59 = load ptr, ptr %imgY, align 8
  %arrayidx21.11 = getelementptr inbounds ptr, ptr %59, i64 %indvars.iv
  %60 = load ptr, ptr %arrayidx21.11, align 8
  %arrayidx23.11 = getelementptr inbounds i16, ptr %60, i64 %indvars.iv.next.10
  store i16 %58, ptr %arrayidx23.11, align 2
  %add17.12 = add i32 %sub16, %18
  %idxprom18.12 = sext i32 %add17.12 to i64
  %arrayidx19.12 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.12
  %61 = load i16, ptr %arrayidx19.12, align 2
  %62 = load ptr, ptr %imgY, align 8
  %arrayidx21.12 = getelementptr inbounds ptr, ptr %62, i64 %indvars.iv
  %63 = load ptr, ptr %arrayidx21.12, align 8
  %arrayidx23.12 = getelementptr inbounds i16, ptr %63, i64 %indvars.iv.next.11
  store i16 %61, ptr %arrayidx23.12, align 2
  %add17.13 = add i32 %sub16, %19
  %idxprom18.13 = sext i32 %add17.13 to i64
  %arrayidx19.13 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.13
  %64 = load i16, ptr %arrayidx19.13, align 2
  %65 = load ptr, ptr %imgY, align 8
  %arrayidx21.13 = getelementptr inbounds ptr, ptr %65, i64 %indvars.iv
  %66 = load ptr, ptr %arrayidx21.13, align 8
  %arrayidx23.13 = getelementptr inbounds i16, ptr %66, i64 %indvars.iv.next.12
  store i16 %64, ptr %arrayidx23.13, align 2
  %add17.14 = add i32 %sub16, %20
  %idxprom18.14 = sext i32 %add17.14 to i64
  %arrayidx19.14 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.14
  %67 = load i16, ptr %arrayidx19.14, align 2
  %68 = load ptr, ptr %imgY, align 8
  %arrayidx21.14 = getelementptr inbounds ptr, ptr %68, i64 %indvars.iv
  %69 = load ptr, ptr %arrayidx21.14, align 8
  %arrayidx23.14 = getelementptr inbounds i16, ptr %69, i64 %indvars.iv.next.13
  store i16 %67, ptr %arrayidx23.14, align 2
  %add17.15 = add i32 %sub16, %21
  %idxprom18.15 = sext i32 %add17.15 to i64
  %arrayidx19.15 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.15
  %70 = load i16, ptr %arrayidx19.15, align 2
  %71 = load ptr, ptr %imgY, align 8
  %arrayidx21.15 = getelementptr inbounds ptr, ptr %71, i64 %indvars.iv
  %72 = load ptr, ptr %arrayidx21.15, align 8
  %arrayidx23.15 = getelementptr inbounds i16, ptr %72, i64 %indvars.iv.next.14
  store i16 %70, ptr %arrayidx23.15, align 2
  %indvars.iv.next11 = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next11 to i32
  %exitcond.not = icmp eq i32 %6, %lftr.wideiv
  br i1 %exitcond.not, label %for.end26, label %for.cond10.preheader

for.end26:                                        ; preds = %for.cond10.preheader
  %sub = add nsw i32 %shl, 15
  %73 = load i32, ptr %chroma_format_idc, align 4
  %cmp28.not = icmp eq i32 %73, 0
  br i1 %cmp28.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end26
  %shr29 = ashr i32 %shl7, %3
  %shr31 = ashr i32 %sub9, %3
  %cmp32.not7 = icmp sgt i32 %shr29, %shr31
  br i1 %cmp32.not7, label %if.end, label %for.body33.lr.ph

for.body33.lr.ph:                                 ; preds = %if.then
  %shr34 = ashr i32 %shl, %2
  %shr36 = ashr i32 %sub, %2
  %invariant.gep = getelementptr i8, ptr %predMB, i64 512
  %invariant.gep3 = getelementptr i8, ptr %predMB, i64 640
  %cmp37.not5 = icmp sgt i32 %shr34, %shr36
  %mb_cr_size_x = getelementptr inbounds i8, ptr %recfr.0.val, i64 849108
  %imgUV = getelementptr inbounds i8, ptr %0, i64 136
  br i1 %cmp37.not5, label %if.end, label %for.body33.preheader

for.body33.preheader:                             ; preds = %for.body33.lr.ph
  %shr45 = shl nsw i32 %rem, 2
  %74 = sext i32 %shr34 to i64
  %75 = sext i32 %shr45 to i64
  %76 = add i32 %shr36, 1
  %77 = sext i32 %shr29 to i64
  %78 = add i32 %shr31, 1
  br label %for.body33

for.body33:                                       ; preds = %for.body33.preheader, %for.cond35.for.inc68_crit_edge
  %indvars.iv22 = phi i64 [ %77, %for.body33.preheader ], [ %indvars.iv.next23, %for.cond35.for.inc68_crit_edge ]
  %79 = sub nsw i64 %indvars.iv22, %77
  br label %for.body38

for.body38:                                       ; preds = %for.body33, %for.body38
  %indvars.iv15 = phi i64 [ %74, %for.body33 ], [ %indvars.iv.next16, %for.body38 ]
  %80 = load i32, ptr %mb_cr_size_x, align 4
  %81 = sext i32 %80 to i64
  %82 = mul nsw i64 %79, %81
  %83 = sub nsw i64 %indvars.iv15, %75
  %84 = add nsw i64 %82, %83
  %gep = getelementptr i16, ptr %invariant.gep, i64 %84
  %85 = load i16, ptr %gep, align 2
  %86 = load ptr, ptr %imgUV, align 8
  %87 = load ptr, ptr %86, align 8
  %arrayidx53 = getelementptr inbounds ptr, ptr %87, i64 %indvars.iv22
  %88 = load ptr, ptr %arrayidx53, align 8
  %arrayidx55 = getelementptr inbounds i16, ptr %88, i64 %indvars.iv15
  store i16 %85, ptr %arrayidx55, align 2
  %gep4 = getelementptr i16, ptr %invariant.gep3, i64 %84
  %89 = load i16, ptr %gep4, align 2
  %90 = load ptr, ptr %imgUV, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %90, i64 8
  %91 = load ptr, ptr %arrayidx60, align 8
  %arrayidx62 = getelementptr inbounds ptr, ptr %91, i64 %indvars.iv22
  %92 = load ptr, ptr %arrayidx62, align 8
  %arrayidx64 = getelementptr inbounds i16, ptr %92, i64 %indvars.iv15
  store i16 %89, ptr %arrayidx64, align 2
  %indvars.iv.next16 = add nsw i64 %indvars.iv15, 1
  %lftr.wideiv20 = trunc i64 %indvars.iv.next16 to i32
  %exitcond21.not = icmp eq i32 %76, %lftr.wideiv20
  br i1 %exitcond21.not, label %for.cond35.for.inc68_crit_edge, label %for.body38

for.cond35.for.inc68_crit_edge:                   ; preds = %for.body38
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %lftr.wideiv27 = trunc i64 %indvars.iv.next23 to i32
  %exitcond28.not = icmp eq i32 %78, %lftr.wideiv27
  br i1 %exitcond28.not, label %if.end, label %for.body33

if.end:                                           ; preds = %for.cond35.for.inc68_crit_edge, %for.body33.lr.ph, %if.then, %for.end26
  ret void
}

declare i32 @get_mem2Dpel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @get_block_luma(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @free_mem2Dpel(ptr noundef) local_unnamed_addr #3

declare void @init_lists(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !7, !6}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
