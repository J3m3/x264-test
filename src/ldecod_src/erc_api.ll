; ModuleID = 'ldecod_src/erc_api.c'
source_filename = "ldecod_src/erc_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ercSegment_s = type { i16, i16, i8 }

@.str = private unnamed_addr constant [25 x i8] c"ercInit: erc_object_list\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ercOpen: errorVar\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ercReset: errorVar->segments\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->yCondition\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"ercReset: errorVar->prevFrameYCondition\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->uCondition\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->vCondition\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ercInit(ptr nocapture noundef %p_Vid, i32 noundef %pic_sizex, i32 noundef %pic_sizey, i32 noundef %flag) local_unnamed_addr #0 {
entry:
  %erc_errorVar = getelementptr inbounds i8, ptr %p_Vid, i64 856504
  %0 = load ptr, ptr %erc_errorVar, align 8
  tail call void @ercClose(ptr noundef %p_Vid, ptr noundef %0)
  %mul = mul nsw i32 %pic_sizey, %pic_sizex
  %shr = ashr i32 %mul, 6
  %conv = sext i32 %shr to i64
  %call = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 24) #10
  %erc_object_list = getelementptr inbounds i8, ptr %p_Vid, i64 856496
  store ptr %call, ptr %erc_object_list, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call.i = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #12
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i, label %ercSetErrorConcealment.exit

if.then.i:                                        ; preds = %if.end
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #11
  br label %ercSetErrorConcealment.exit

ercSetErrorConcealment.exit:                      ; preds = %if.end, %if.then.i
  store i32 0, ptr %call.i, align 8
  %yCondition.i = getelementptr inbounds i8, ptr %call.i, i64 8
  %prevFrameYCondition.i = getelementptr inbounds i8, ptr %call.i, i64 48
  store ptr null, ptr %prevFrameYCondition.i, align 8
  %concealment.i = getelementptr inbounds i8, ptr %call.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %yCondition.i, i8 0, i64 36, i1 false)
  store ptr %call.i, ptr %erc_errorVar, align 8
  store i32 %flag, ptr %concealment.i, align 8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @ercClose(ptr nocapture noundef %p_Vid, ptr noundef %errorVar) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq ptr %errorVar, null
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8
  %0 = load ptr, ptr %yCondition, align 8
  %cmp1.not = icmp eq ptr %0, null
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %segments = getelementptr inbounds i8, ptr %errorVar, i64 32
  %1 = load ptr, ptr %segments, align 8
  tail call void @free(ptr noundef %1) #11
  %2 = load ptr, ptr %yCondition, align 8
  tail call void @free(ptr noundef %2) #11
  %uCondition = getelementptr inbounds i8, ptr %errorVar, i64 16
  %3 = load ptr, ptr %uCondition, align 8
  tail call void @free(ptr noundef %3) #11
  %vCondition = getelementptr inbounds i8, ptr %errorVar, i64 24
  %4 = load ptr, ptr %vCondition, align 8
  tail call void @free(ptr noundef %4) #11
  %prevFrameYCondition = getelementptr inbounds i8, ptr %errorVar, i64 48
  %5 = load ptr, ptr %prevFrameYCondition, align 8
  tail call void @free(ptr noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  tail call void @free(ptr noundef nonnull %errorVar) #11
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %erc_object_list = getelementptr inbounds i8, ptr %p_Vid, i64 856496
  %6 = load ptr, ptr %erc_object_list, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end4
  tail call void @free(ptr noundef nonnull %6) #11
  store ptr null, ptr %erc_object_list, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ercOpen() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #12
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %call, align 8
  %yCondition = getelementptr inbounds i8, ptr %call, i64 8
  %prevFrameYCondition = getelementptr inbounds i8, ptr %call, i64 48
  store ptr null, ptr %prevFrameYCondition, align 8
  %concealment = getelementptr inbounds i8, ptr %call, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %yCondition, i8 0, i64 36, i1 false)
  store i32 1, ptr %concealment, align 8
  ret ptr %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ercSetErrorConcealment(ptr noundef writeonly %errorVar, i32 noundef %value) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq ptr %errorVar, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64
  store i32 %value, ptr %concealment, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ercReset(ptr noundef %errorVar, i32 noundef %nOfMBs, i32 noundef %numOfSegments, i32 noundef %picSizeX) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %errorVar, null
  br i1 %tobool.not, label %if.end105, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64
  %0 = load i32, ptr %concealment, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end105, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = load i32, ptr %errorVar, align 8
  %cmp.not = icmp eq i32 %1, %nOfMBs
  br i1 %cmp.not, label %if.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.then
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8
  %2 = load ptr, ptr %yCondition, align 8
  %cmp4.not = icmp eq ptr %2, null
  br i1 %cmp4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %land.lhs.true3
  tail call void @free(ptr noundef nonnull %2) #11
  store ptr null, ptr %yCondition, align 8
  %prevFrameYCondition = getelementptr inbounds i8, ptr %errorVar, i64 48
  %3 = load ptr, ptr %prevFrameYCondition, align 8
  tail call void @free(ptr noundef %3) #11
  store ptr null, ptr %prevFrameYCondition, align 8
  %uCondition = getelementptr inbounds i8, ptr %errorVar, i64 16
  %4 = load ptr, ptr %uCondition, align 8
  tail call void @free(ptr noundef %4) #11
  store ptr null, ptr %uCondition, align 8
  %vCondition = getelementptr inbounds i8, ptr %errorVar, i64 24
  %5 = load ptr, ptr %vCondition, align 8
  tail call void @free(ptr noundef %5) #11
  store ptr null, ptr %vCondition, align 8
  %segments11 = getelementptr inbounds i8, ptr %errorVar, i64 32
  %6 = load ptr, ptr %segments11, align 8
  tail call void @free(ptr noundef %6) #11
  store ptr null, ptr %segments11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true3, %if.then
  %yCondition13 = getelementptr inbounds i8, ptr %errorVar, i64 8
  %7 = load ptr, ptr %yCondition13, align 8
  %cmp14 = icmp eq ptr %7, null
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  %conv = sext i32 %numOfSegments to i64
  %mul = mul nsw i64 %conv, 6
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #12
  %segments16 = getelementptr inbounds i8, ptr %errorVar, i64 32
  store ptr %call, ptr %segments16, align 8
  %cmp18 = icmp eq ptr %call, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then15
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #11
  %.pre = load ptr, ptr %segments16, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then15
  %8 = phi ptr [ %.pre, %if.then20 ], [ %call, %if.then15 ]
  %sext = mul i64 %conv, 25769803776
  %conv.i = ashr exact i64 %sext, 32
  tail call void @llvm.memset.p0.i64(ptr align 1 %8, i8 0, i64 %conv.i, i1 false)
  %nOfSegments = getelementptr inbounds i8, ptr %errorVar, i64 4
  store i32 %numOfSegments, ptr %nOfSegments, align 4
  %mul26 = shl nsw i32 %nOfMBs, 2
  %conv27 = sext i32 %mul26 to i64
  %call29 = tail call noalias ptr @malloc(i64 noundef %conv27) #12
  store ptr %call29, ptr %yCondition13, align 8
  %cmp32 = icmp eq ptr %call29, null
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end21
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end21
  %call39 = tail call noalias ptr @malloc(i64 noundef %conv27) #12
  %prevFrameYCondition40 = getelementptr inbounds i8, ptr %errorVar, i64 48
  store ptr %call39, ptr %prevFrameYCondition40, align 8
  %cmp42 = icmp eq ptr %call39, null
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end35
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end35
  %conv46 = sext i32 %nOfMBs to i64
  %call48 = tail call noalias ptr @malloc(i64 noundef %conv46) #12
  %uCondition49 = getelementptr inbounds i8, ptr %errorVar, i64 16
  store ptr %call48, ptr %uCondition49, align 8
  %cmp51 = icmp eq ptr %call48, null
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end45
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end45
  %call57 = tail call noalias ptr @malloc(i64 noundef %conv46) #12
  %vCondition58 = getelementptr inbounds i8, ptr %errorVar, i64 24
  store ptr %call57, ptr %vCondition58, align 8
  %cmp60 = icmp eq ptr %call57, null
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end54
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #11
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end54
  store i32 %nOfMBs, ptr %errorVar, align 8
  %.pre174 = load ptr, ptr %yCondition13, align 8
  br label %if.end69

if.else:                                          ; preds = %if.end
  %prevFrameYCondition65 = getelementptr inbounds i8, ptr %errorVar, i64 48
  %9 = load ptr, ptr %prevFrameYCondition65, align 8
  store ptr %7, ptr %prevFrameYCondition65, align 8
  store ptr %9, ptr %yCondition13, align 8
  %.pre175 = shl nsw i32 %nOfMBs, 2
  %.pre176 = sext i32 %.pre175 to i64
  %.pre177 = sext i32 %nOfMBs to i64
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.end63
  %conv.i169.pre-phi = phi i64 [ %.pre177, %if.else ], [ %conv46, %if.end63 ]
  %conv.i168.pre-phi = phi i64 [ %.pre176, %if.else ], [ %conv27, %if.end63 ]
  %10 = phi ptr [ %9, %if.else ], [ %.pre174, %if.end63 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %10, i8 0, i64 %conv.i168.pre-phi, i1 false)
  %uCondition75 = getelementptr inbounds i8, ptr %errorVar, i64 16
  %11 = load ptr, ptr %uCondition75, align 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %conv.i169.pre-phi, i1 false)
  %vCondition79 = getelementptr inbounds i8, ptr %errorVar, i64 24
  %12 = load ptr, ptr %vCondition79, align 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %12, i8 0, i64 %conv.i169.pre-phi, i1 false)
  %nOfSegments83 = getelementptr inbounds i8, ptr %errorVar, i64 4
  %13 = load i32, ptr %nOfSegments83, align 4
  %cmp84.not = icmp eq i32 %13, %numOfSegments
  br i1 %cmp84.not, label %if.end99, label %if.then86

if.then86:                                        ; preds = %if.end69
  %segments87 = getelementptr inbounds i8, ptr %errorVar, i64 32
  %14 = load ptr, ptr %segments87, align 8
  tail call void @free(ptr noundef %14) #11
  %conv89 = sext i32 %numOfSegments to i64
  %mul90 = mul nsw i64 %conv89, 6
  %call91 = tail call noalias ptr @malloc(i64 noundef %mul90) #12
  store ptr %call91, ptr %segments87, align 8
  %cmp94 = icmp eq ptr %call91, null
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.then86
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #11
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.then86
  store i32 %numOfSegments, ptr %nOfSegments83, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.end97, %if.end69
  %cmp102171 = icmp sgt i32 %numOfSegments, 0
  br i1 %cmp102171, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end99
  %segments100 = getelementptr inbounds i8, ptr %errorVar, i64 32
  %15 = load ptr, ptr %segments100, align 8
  %16 = trunc i32 %nOfMBs to i16
  %conv104 = add i16 %16, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %segments.0173 = phi ptr [ %15, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %i.0172 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  store i16 0, ptr %segments.0173, align 2
  %endMBPos = getelementptr inbounds i8, ptr %segments.0173, i64 2
  store i16 %conv104, ptr %endMBPos, align 2
  %incdec.ptr = getelementptr inbounds i8, ptr %segments.0173, i64 6
  %fCorrupted = getelementptr inbounds i8, ptr %segments.0173, i64 4
  store i8 1, ptr %fCorrupted, align 2
  %inc = add nuw nsw i32 %i.0172, 1
  %17 = load i32, ptr %nOfSegments83, align 4
  %cmp102 = icmp slt i32 %inc, %17
  br i1 %cmp102, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end99
  %currSegment = getelementptr inbounds i8, ptr %errorVar, i64 40
  store i32 0, ptr %currSegment, align 8
  %nOfCorruptedSegments = getelementptr inbounds i8, ptr %errorVar, i64 60
  store i32 0, ptr %nOfCorruptedSegments, align 4
  br label %if.end105

if.end105:                                        ; preds = %for.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercStartSegment(i32 noundef %currMBNum, i32 noundef %segment, i32 noundef %bitPos, ptr noundef %errorVar) local_unnamed_addr #7 {
entry:
  %tobool.not = icmp eq ptr %errorVar, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64
  %0 = load i32, ptr %concealment, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %currSegmentCorrupted = getelementptr inbounds i8, ptr %errorVar, i64 56
  store i32 0, ptr %currSegmentCorrupted, align 8
  %segments = getelementptr inbounds i8, ptr %errorVar, i64 32
  %1 = load ptr, ptr %segments, align 8
  %idxprom = sext i32 %segment to i64
  %fCorrupted = getelementptr inbounds %struct.ercSegment_s, ptr %1, i64 %idxprom, i32 2
  store i8 0, ptr %fCorrupted, align 2
  %conv = trunc i32 %currMBNum to i16
  %2 = load ptr, ptr %segments, align 8
  %arrayidx4 = getelementptr inbounds %struct.ercSegment_s, ptr %2, i64 %idxprom
  store i16 %conv, ptr %arrayidx4, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercStopSegment(i32 noundef %currMBNum, i32 noundef %segment, i32 noundef %bitPos, ptr noundef %errorVar) local_unnamed_addr #7 {
entry:
  %tobool.not = icmp eq ptr %errorVar, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64
  %0 = load i32, ptr %concealment, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %conv = trunc i32 %currMBNum to i16
  %segments = getelementptr inbounds i8, ptr %errorVar, i64 32
  %1 = load ptr, ptr %segments, align 8
  %idxprom = sext i32 %segment to i64
  %endMBPos = getelementptr inbounds %struct.ercSegment_s, ptr %1, i64 %idxprom, i32 1
  store i16 %conv, ptr %endMBPos, align 2
  %currSegment = getelementptr inbounds i8, ptr %errorVar, i64 40
  %2 = load i32, ptr %currSegment, align 8
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %currSegment, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercMarkCurrSegmentLost(i32 noundef %picSizeX, ptr nocapture noundef %errorVar) local_unnamed_addr #8 {
land.lhs.true:
  %currSegment = getelementptr inbounds i8, ptr %errorVar, i64 40
  %0 = load i32, ptr %currSegment, align 8
  %sub = add nsw i32 %0, -1
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64
  %1 = load i32, ptr %concealment, align 8
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end67, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %currSegmentCorrupted = getelementptr inbounds i8, ptr %errorVar, i64 56
  %2 = load i32, ptr %currSegmentCorrupted, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %nOfCorruptedSegments = getelementptr inbounds i8, ptr %errorVar, i64 60
  %3 = load i32, ptr %nOfCorruptedSegments, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %nOfCorruptedSegments, align 4
  store i32 1, ptr %currSegmentCorrupted, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %segments = getelementptr inbounds i8, ptr %errorVar, i64 32
  %4 = load ptr, ptr %segments, align 8
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.ercSegment_s, ptr %4, i64 %idxprom
  %5 = load i16, ptr %arrayidx, align 2
  %endMBPos107 = getelementptr inbounds %struct.ercSegment_s, ptr %4, i64 %idxprom, i32 1
  %6 = load i16, ptr %endMBPos107, align 2
  %cmp8.not109 = icmp sgt i16 %5, %6
  br i1 %cmp8.not109, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8
  %shr = ashr i32 %picSizeX, 4
  %shr10 = ashr i32 %picSizeX, 3
  %uCondition = getelementptr inbounds i8, ptr %errorVar, i64 16
  %vCondition = getelementptr inbounds i8, ptr %errorVar, i64 24
  %7 = sext i16 %5 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %7, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %8 = load ptr, ptr %yCondition, align 8
  %9 = trunc nsw i64 %indvars.iv to i32
  %div = sdiv i32 %9, %shr
  %shl = shl nsw i32 %div, 1
  %mul = mul nsw i32 %shl, %shr10
  %rem = srem i32 %9, %shr
  %shl12 = shl nsw i32 %rem, 1
  %add13 = add nsw i32 %mul, %shl12
  %idxprom15 = sext i32 %add13 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %8, i64 %idxprom15
  store i8 1, ptr %arrayidx16, align 1
  %10 = load ptr, ptr %yCondition, align 8
  %add28 = or disjoint i32 %add13, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %10, i64 %idxprom29
  store i8 1, ptr %arrayidx30, align 1
  %11 = load ptr, ptr %yCondition, align 8
  %add35 = or disjoint i32 %shl, 1
  %mul37 = mul nsw i32 %add35, %shr10
  %add41 = add nsw i32 %mul37, %shl12
  %idxprom43 = sext i32 %add41 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %11, i64 %idxprom43
  store i8 1, ptr %arrayidx44, align 1
  %12 = load ptr, ptr %yCondition, align 8
  %13 = getelementptr i8, ptr %12, i64 %idxprom43
  %arrayidx58 = getelementptr i8, ptr %13, i64 1
  store i8 1, ptr %arrayidx58, align 1
  %14 = load ptr, ptr %uCondition, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %14, i64 %indvars.iv
  store i8 1, ptr %arrayidx60, align 1
  %15 = load ptr, ptr %vCondition, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %15, i64 %indvars.iv
  store i8 1, ptr %arrayidx62, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %16 = load ptr, ptr %segments, align 8
  %endMBPos = getelementptr inbounds %struct.ercSegment_s, ptr %16, i64 %idxprom, i32 1
  %17 = load i16, ptr %endMBPos, align 2
  %18 = sext i16 %17 to i64
  %cmp8.not.not = icmp slt i64 %indvars.iv, %18
  br i1 %cmp8.not.not, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %19 = phi ptr [ %4, %if.end ], [ %16, %for.body ]
  %fCorrupted = getelementptr inbounds %struct.ercSegment_s, ptr %19, i64 %idxprom, i32 2
  store i8 1, ptr %fCorrupted, align 2
  br label %if.end67

if.end67:                                         ; preds = %for.end, %land.lhs.true
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercMarkCurrSegmentOK(i32 noundef %picSizeX, ptr nocapture noundef readonly %errorVar) local_unnamed_addr #8 {
land.lhs.true:
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64
  %0 = load i32, ptr %concealment, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %currSegment = getelementptr inbounds i8, ptr %errorVar, i64 40
  %1 = load i32, ptr %currSegment, align 8
  %sub = add nsw i32 %1, -1
  %segments = getelementptr inbounds i8, ptr %errorVar, i64 32
  %2 = load ptr, ptr %segments, align 8
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.ercSegment_s, ptr %2, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %endMBPos99 = getelementptr inbounds %struct.ercSegment_s, ptr %2, i64 %idxprom, i32 1
  %4 = load i16, ptr %endMBPos99, align 2
  %cmp.not101 = icmp sgt i16 %3, %4
  br i1 %cmp.not101, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8
  %shr = ashr i32 %picSizeX, 4
  %shr7 = ashr i32 %picSizeX, 3
  %uCondition = getelementptr inbounds i8, ptr %errorVar, i64 16
  %vCondition = getelementptr inbounds i8, ptr %errorVar, i64 24
  %5 = sext i16 %3 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %6 = load ptr, ptr %yCondition, align 8
  %7 = trunc nsw i64 %indvars.iv to i32
  %div = sdiv i32 %7, %shr
  %shl = shl nsw i32 %div, 1
  %mul = mul nsw i32 %shl, %shr7
  %rem = srem i32 %7, %shr
  %shl9 = shl nsw i32 %rem, 1
  %add10 = add nsw i32 %mul, %shl9
  %idxprom12 = sext i32 %add10 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %6, i64 %idxprom12
  store i8 3, ptr %arrayidx13, align 1
  %8 = load ptr, ptr %yCondition, align 8
  %add25 = or disjoint i32 %add10, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %8, i64 %idxprom26
  store i8 3, ptr %arrayidx27, align 1
  %9 = load ptr, ptr %yCondition, align 8
  %add32 = or disjoint i32 %shl, 1
  %mul34 = mul nsw i32 %add32, %shr7
  %add38 = add nsw i32 %mul34, %shl9
  %idxprom40 = sext i32 %add38 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %9, i64 %idxprom40
  store i8 3, ptr %arrayidx41, align 1
  %10 = load ptr, ptr %yCondition, align 8
  %11 = getelementptr i8, ptr %10, i64 %idxprom40
  %arrayidx55 = getelementptr i8, ptr %11, i64 1
  store i8 3, ptr %arrayidx55, align 1
  %12 = load ptr, ptr %uCondition, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %12, i64 %indvars.iv
  store i8 3, ptr %arrayidx57, align 1
  %13 = load ptr, ptr %vCondition, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %13, i64 %indvars.iv
  store i8 3, ptr %arrayidx59, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %14 = load ptr, ptr %segments, align 8
  %endMBPos = getelementptr inbounds %struct.ercSegment_s, ptr %14, i64 %idxprom, i32 1
  %15 = load i16, ptr %endMBPos, align 2
  %16 = sext i16 %15 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %16
  br i1 %cmp.not.not, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.then
  %17 = phi ptr [ %2, %if.then ], [ %14, %for.body ]
  %fCorrupted = getelementptr inbounds %struct.ercSegment_s, ptr %17, i64 %idxprom, i32 2
  store i8 0, ptr %fCorrupted, align 2
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercMarkCurrMBConcealed(i32 noundef %currMBNum, i32 noundef %comp, i32 noundef %picSizeX, ptr noundef readonly %errorVar) local_unnamed_addr #7 {
entry:
  %tobool.not = icmp eq ptr %errorVar, null
  br i1 %tobool.not, label %if.end62, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64
  %0 = load i32, ptr %concealment, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end62, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %cmp = icmp sgt i32 %comp, -1
  %spec.select = select i1 %cmp, i32 %comp, i32 0
  switch i32 %spec.select, label %if.end62 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb53
    i32 2, label %if.then.sw.bb59_crit_edge
  ]

if.then.sw.bb59_crit_edge:                        ; preds = %if.then
  %.pre = sext i32 %currMBNum to i64
  br label %sw.bb59

sw.bb:                                            ; preds = %if.then
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8
  %1 = load ptr, ptr %yCondition, align 8
  %shr = ashr i32 %picSizeX, 4
  %div = sdiv i32 %currMBNum, %shr
  %shl = shl i32 %div, 1
  %shr3 = ashr i32 %picSizeX, 3
  %mul = mul nsw i32 %shl, %shr3
  %rem = srem i32 %currMBNum, %shr
  %shl5 = shl nsw i32 %rem, 1
  %add6 = add nsw i32 %mul, %shl5
  %idxprom = sext i32 %add6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  store i8 2, ptr %arrayidx, align 1
  %2 = load ptr, ptr %yCondition, align 8
  %add19 = or disjoint i32 %add6, 1
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %2, i64 %idxprom20
  store i8 2, ptr %arrayidx21, align 1
  %3 = load ptr, ptr %yCondition, align 8
  %add26 = or disjoint i32 %shl, 1
  %mul28 = mul nsw i32 %add26, %shr3
  %add32 = add nsw i32 %mul28, %shl5
  %idxprom34 = sext i32 %add32 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %3, i64 %idxprom34
  store i8 2, ptr %arrayidx35, align 1
  %4 = load ptr, ptr %yCondition, align 8
  %5 = getelementptr i8, ptr %4, i64 %idxprom34
  %arrayidx49 = getelementptr i8, ptr %5, i64 1
  store i8 2, ptr %arrayidx49, align 1
  br i1 %cmp, label %if.end62, label %sw.bb59.critedge

sw.bb53:                                          ; preds = %if.then
  %uCondition = getelementptr inbounds i8, ptr %errorVar, i64 16
  %6 = load ptr, ptr %uCondition, align 8
  %idxprom54 = sext i32 %currMBNum to i64
  %arrayidx55 = getelementptr inbounds i8, ptr %6, i64 %idxprom54
  store i8 2, ptr %arrayidx55, align 1
  br i1 %cmp, label %if.end62, label %sw.bb59

sw.bb59.critedge:                                 ; preds = %sw.bb
  %uCondition.c = getelementptr inbounds i8, ptr %errorVar, i64 16
  %7 = load ptr, ptr %uCondition.c, align 8
  %idxprom54.c = sext i32 %currMBNum to i64
  %arrayidx55.c = getelementptr inbounds i8, ptr %7, i64 %idxprom54.c
  store i8 2, ptr %arrayidx55.c, align 1
  br label %sw.bb59

sw.bb59:                                          ; preds = %if.then.sw.bb59_crit_edge, %sw.bb59.critedge, %sw.bb53
  %idxprom60.pre-phi = phi i64 [ %.pre, %if.then.sw.bb59_crit_edge ], [ %idxprom54.c, %sw.bb59.critedge ], [ %idxprom54, %sw.bb53 ]
  %vCondition = getelementptr inbounds i8, ptr %errorVar, i64 24
  %8 = load ptr, ptr %vCondition, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %8, i64 %idxprom60.pre-phi
  store i8 2, ptr %arrayidx61, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then, %sw.bb59, %sw.bb, %sw.bb53, %land.lhs.true, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
