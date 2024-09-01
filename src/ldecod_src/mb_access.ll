; ModuleID = 'ldecod_src/mb_access.c'
source_filename = "ldecod_src/mb_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }

@PicPos = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @mb_is_available(i32 noundef %mbAddr, ptr nocapture noundef readonly %currMB) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %mbAddr, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %currMB, align 8
  %dec_picture = getelementptr inbounds i8, ptr %0, i64 13520
  %1 = load ptr, ptr %dec_picture, align 8
  %PicSizeInMbs = getelementptr inbounds i8, ptr %1, i64 108
  %2 = load i32, ptr %PicSizeInMbs, align 4
  %cmp1.not = icmp sgt i32 %2, %mbAddr
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %DeblockCall = getelementptr inbounds i8, ptr %currMB, i64 104
  %3 = load i32, ptr %DeblockCall, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %mb_data = getelementptr inbounds i8, ptr %0, i64 13512
  %4 = load ptr, ptr %mb_data, align 8
  %idxprom = zext nneg i32 %mbAddr to i64
  %slice_nr = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom, i32 21
  %5 = load i16, ptr %slice_nr, align 4
  %slice_nr4 = getelementptr inbounds i8, ptr %currMB, i64 108
  %6 = load i16, ptr %slice_nr4, align 4
  %cmp6.not = icmp eq i16 %5, %6
  br i1 %cmp6.not, label %if.end10, label %return

if.end10:                                         ; preds = %if.then2, %if.end
  br label %return

return:                                           ; preds = %if.then2, %entry, %lor.lhs.false, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CheckAvailabilityOfNeighbors(ptr nocapture noundef %currMB) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %dec_picture1 = getelementptr inbounds i8, ptr %0, i64 13520
  %1 = load ptr, ptr %dec_picture1, align 8
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24
  %2 = load i32, ptr %mbAddrX, align 8
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %1, i64 100
  %3 = load i32, ptr %mb_aff_frame_flag, align 4
  %tobool.not = icmp eq i32 %3, 0
  %mbAddrB49 = getelementptr inbounds i8, ptr %currMB, i64 392
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %shr = ashr i32 %2, 1
  %sub = and i32 %2, -2
  %mul = add i32 %sub, -2
  %mbAddrA = getelementptr inbounds i8, ptr %currMB, i64 388
  store i32 %mul, ptr %mbAddrA, align 4
  %PicWidthInMbs = getelementptr inbounds i8, ptr %1, i64 104
  %4 = load i32, ptr %PicWidthInMbs, align 8
  %sub2 = sub i32 %shr, %4
  %mul3 = shl i32 %sub2, 1
  store i32 %mul3, ptr %mbAddrB49, align 8
  %5 = load i32, ptr %PicWidthInMbs, align 8
  %sub5 = sub i32 %shr, %5
  %add = shl i32 %sub5, 1
  %mul6 = add i32 %add, 2
  %mbAddrC = getelementptr inbounds i8, ptr %currMB, i64 396
  store i32 %mul6, ptr %mbAddrC, align 4
  %6 = load i32, ptr %PicWidthInMbs, align 8
  %7 = xor i32 %6, -1
  %sub9 = add i32 %shr, %7
  %mul10 = shl i32 %sub9, 1
  %mbAddrD = getelementptr inbounds i8, ptr %currMB, i64 400
  store i32 %mul10, ptr %mbAddrD, align 8
  %cmp.i = icmp slt i32 %mul, 0
  br i1 %cmp.i, label %land.end, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then
  %8 = load ptr, ptr %dec_picture1, align 8
  %PicSizeInMbs.i = getelementptr inbounds i8, ptr %8, i64 108
  %9 = load i32, ptr %PicSizeInMbs.i, align 4
  %cmp1.not.i = icmp sgt i32 %9, %mul
  br i1 %cmp1.not.i, label %if.end.i, label %land.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %DeblockCall.i = getelementptr inbounds i8, ptr %currMB, i64 104
  %10 = load i32, ptr %DeblockCall.i, align 8
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then2.i, label %land.rhs

if.then2.i:                                       ; preds = %if.end.i
  %mb_data.i = getelementptr inbounds i8, ptr %0, i64 13512
  %11 = load ptr, ptr %mb_data.i, align 8
  %idxprom.i = zext nneg i32 %mul to i64
  %slice_nr.i = getelementptr inbounds %struct.macroblock, ptr %11, i64 %idxprom.i, i32 21
  %12 = load i16, ptr %slice_nr.i, align 4
  %slice_nr4.i = getelementptr inbounds i8, ptr %currMB, i64 108
  %13 = load i16, ptr %slice_nr4.i, align 4
  %cmp6.not.i = icmp eq i16 %12, %13
  br i1 %cmp6.not.i, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then2.i, %if.end.i
  %14 = load ptr, ptr @PicPos, align 8
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds %struct.BlockPos, ptr %14, i64 %idxprom
  %15 = load i16, ptr %arrayidx, align 2
  %cmp = icmp ne i16 %15, 0
  %16 = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %if.then2.i, %if.then, %lor.lhs.false.i, %land.rhs
  %land.ext = phi i32 [ %16, %land.rhs ], [ 0, %lor.lhs.false.i ], [ 0, %if.then ], [ 0, %if.then2.i ]
  %mbAvailA = getelementptr inbounds i8, ptr %currMB, i64 404
  store i32 %land.ext, ptr %mbAvailA, align 4
  %cmp.i171 = icmp slt i32 %mul3, 0
  br i1 %cmp.i171, label %mb_is_available.exit187, label %lor.lhs.false.i172

lor.lhs.false.i172:                               ; preds = %land.end
  %17 = load ptr, ptr %dec_picture1, align 8
  %PicSizeInMbs.i174 = getelementptr inbounds i8, ptr %17, i64 108
  %18 = load i32, ptr %PicSizeInMbs.i174, align 4
  %cmp1.not.i175 = icmp sgt i32 %18, %mul3
  br i1 %cmp1.not.i175, label %if.end.i177, label %mb_is_available.exit187

if.end.i177:                                      ; preds = %lor.lhs.false.i172
  %DeblockCall.i178 = getelementptr inbounds i8, ptr %currMB, i64 104
  %19 = load i32, ptr %DeblockCall.i178, align 8
  %tobool.not.i179 = icmp eq i32 %19, 0
  br i1 %tobool.not.i179, label %if.then2.i181, label %if.end10.i180

if.then2.i181:                                    ; preds = %if.end.i177
  %mb_data.i182 = getelementptr inbounds i8, ptr %0, i64 13512
  %20 = load ptr, ptr %mb_data.i182, align 8
  %idxprom.i183 = zext nneg i32 %mul3 to i64
  %slice_nr.i184 = getelementptr inbounds %struct.macroblock, ptr %20, i64 %idxprom.i183, i32 21
  %21 = load i16, ptr %slice_nr.i184, align 4
  %slice_nr4.i185 = getelementptr inbounds i8, ptr %currMB, i64 108
  %22 = load i16, ptr %slice_nr4.i185, align 4
  %cmp6.not.i186 = icmp eq i16 %21, %22
  br i1 %cmp6.not.i186, label %if.end10.i180, label %mb_is_available.exit187

if.end10.i180:                                    ; preds = %if.then2.i181, %if.end.i177
  br label %mb_is_available.exit187

mb_is_available.exit187:                          ; preds = %land.end, %lor.lhs.false.i172, %if.then2.i181, %if.end10.i180
  %retval.0.i176 = phi i32 [ 1, %if.end10.i180 ], [ 0, %lor.lhs.false.i172 ], [ 0, %land.end ], [ 0, %if.then2.i181 ]
  %mbAvailB = getelementptr inbounds i8, ptr %currMB, i64 408
  store i32 %retval.0.i176, ptr %mbAvailB, align 8
  %cmp.i188 = icmp slt i32 %mul6, 0
  br i1 %cmp.i188, label %land.end27, label %lor.lhs.false.i189

lor.lhs.false.i189:                               ; preds = %mb_is_available.exit187
  %23 = load ptr, ptr %dec_picture1, align 8
  %PicSizeInMbs.i191 = getelementptr inbounds i8, ptr %23, i64 108
  %24 = load i32, ptr %PicSizeInMbs.i191, align 4
  %cmp1.not.i192 = icmp sgt i32 %24, %mul6
  br i1 %cmp1.not.i192, label %if.end.i194, label %land.end27

if.end.i194:                                      ; preds = %lor.lhs.false.i189
  %DeblockCall.i195 = getelementptr inbounds i8, ptr %currMB, i64 104
  %25 = load i32, ptr %DeblockCall.i195, align 8
  %tobool.not.i196 = icmp eq i32 %25, 0
  br i1 %tobool.not.i196, label %if.then2.i198, label %land.rhs19

if.then2.i198:                                    ; preds = %if.end.i194
  %mb_data.i199 = getelementptr inbounds i8, ptr %0, i64 13512
  %26 = load ptr, ptr %mb_data.i199, align 8
  %idxprom.i200 = zext nneg i32 %mul6 to i64
  %slice_nr.i201 = getelementptr inbounds %struct.macroblock, ptr %26, i64 %idxprom.i200, i32 21
  %27 = load i16, ptr %slice_nr.i201, align 4
  %slice_nr4.i202 = getelementptr inbounds i8, ptr %currMB, i64 108
  %28 = load i16, ptr %slice_nr4.i202, align 4
  %cmp6.not.i203 = icmp eq i16 %27, %28
  br i1 %cmp6.not.i203, label %land.rhs19, label %land.end27

land.rhs19:                                       ; preds = %if.then2.i198, %if.end.i194
  %29 = load ptr, ptr @PicPos, align 8
  %30 = sext i32 %shr to i64
  %31 = getelementptr %struct.BlockPos, ptr %29, i64 %30
  %arrayidx22 = getelementptr i8, ptr %31, i64 4
  %32 = load i16, ptr %arrayidx22, align 2
  %cmp25 = icmp ne i16 %32, 0
  %33 = zext i1 %cmp25 to i32
  br label %land.end27

land.end27:                                       ; preds = %if.then2.i198, %mb_is_available.exit187, %lor.lhs.false.i189, %land.rhs19
  %land.ext28 = phi i32 [ %33, %land.rhs19 ], [ 0, %lor.lhs.false.i189 ], [ 0, %mb_is_available.exit187 ], [ 0, %if.then2.i198 ]
  %mbAvailC = getelementptr inbounds i8, ptr %currMB, i64 412
  store i32 %land.ext28, ptr %mbAvailC, align 4
  %cmp.i205 = icmp slt i32 %mul10, 0
  br i1 %cmp.i205, label %if.end, label %lor.lhs.false.i206

lor.lhs.false.i206:                               ; preds = %land.end27
  %34 = load ptr, ptr %dec_picture1, align 8
  %PicSizeInMbs.i208 = getelementptr inbounds i8, ptr %34, i64 108
  %35 = load i32, ptr %PicSizeInMbs.i208, align 4
  %cmp1.not.i209 = icmp sgt i32 %35, %mul10
  br i1 %cmp1.not.i209, label %if.end.i211, label %if.end

if.end.i211:                                      ; preds = %lor.lhs.false.i206
  %DeblockCall.i212 = getelementptr inbounds i8, ptr %currMB, i64 104
  %36 = load i32, ptr %DeblockCall.i212, align 8
  %tobool.not.i213 = icmp eq i32 %36, 0
  br i1 %tobool.not.i213, label %if.then2.i215, label %land.rhs32

if.then2.i215:                                    ; preds = %if.end.i211
  %mb_data.i216 = getelementptr inbounds i8, ptr %0, i64 13512
  %37 = load ptr, ptr %mb_data.i216, align 8
  %idxprom.i217 = zext nneg i32 %mul10 to i64
  %slice_nr.i218 = getelementptr inbounds %struct.macroblock, ptr %37, i64 %idxprom.i217, i32 21
  %38 = load i16, ptr %slice_nr.i218, align 4
  %slice_nr4.i219 = getelementptr inbounds i8, ptr %currMB, i64 108
  %39 = load i16, ptr %slice_nr4.i219, align 4
  %cmp6.not.i220 = icmp eq i16 %38, %39
  br i1 %cmp6.not.i220, label %land.rhs32, label %if.end

land.rhs32:                                       ; preds = %if.then2.i215, %if.end.i211
  %40 = load ptr, ptr @PicPos, align 8
  %idxprom33 = sext i32 %shr to i64
  %arrayidx34 = getelementptr inbounds %struct.BlockPos, ptr %40, i64 %idxprom33
  %41 = load i16, ptr %arrayidx34, align 2
  %cmp37 = icmp ne i16 %41, 0
  %42 = zext i1 %cmp37 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  %sub41 = add nsw i32 %2, -1
  %mbAddrA42 = getelementptr inbounds i8, ptr %currMB, i64 388
  store i32 %sub41, ptr %mbAddrA42, align 4
  %PicWidthInMbs43 = getelementptr inbounds i8, ptr %1, i64 104
  %43 = load i32, ptr %PicWidthInMbs43, align 8
  %sub44 = sub i32 %2, %43
  %sub45 = add i32 %sub44, -1
  %mbAddrD46 = getelementptr inbounds i8, ptr %currMB, i64 400
  store i32 %sub45, ptr %mbAddrD46, align 8
  store i32 %sub44, ptr %mbAddrB49, align 8
  %add51 = add nsw i32 %sub44, 1
  %mbAddrC52 = getelementptr inbounds i8, ptr %currMB, i64 396
  store i32 %add51, ptr %mbAddrC52, align 4
  %cmp.i222 = icmp slt i32 %2, 1
  br i1 %cmp.i222, label %land.end63, label %lor.lhs.false.i223

lor.lhs.false.i223:                               ; preds = %if.else
  %44 = load ptr, ptr %dec_picture1, align 8
  %PicSizeInMbs.i225 = getelementptr inbounds i8, ptr %44, i64 108
  %45 = load i32, ptr %PicSizeInMbs.i225, align 4
  %cmp1.not.i226.not = icmp slt i32 %45, %2
  br i1 %cmp1.not.i226.not, label %land.end63, label %if.end.i228

if.end.i228:                                      ; preds = %lor.lhs.false.i223
  %DeblockCall.i229 = getelementptr inbounds i8, ptr %currMB, i64 104
  %46 = load i32, ptr %DeblockCall.i229, align 8
  %tobool.not.i230 = icmp eq i32 %46, 0
  br i1 %tobool.not.i230, label %if.then2.i232, label %land.rhs56

if.then2.i232:                                    ; preds = %if.end.i228
  %mb_data.i233 = getelementptr inbounds i8, ptr %0, i64 13512
  %47 = load ptr, ptr %mb_data.i233, align 8
  %idxprom.i234 = zext nneg i32 %sub41 to i64
  %slice_nr.i235 = getelementptr inbounds %struct.macroblock, ptr %47, i64 %idxprom.i234, i32 21
  %48 = load i16, ptr %slice_nr.i235, align 4
  %slice_nr4.i236 = getelementptr inbounds i8, ptr %currMB, i64 108
  %49 = load i16, ptr %slice_nr4.i236, align 4
  %cmp6.not.i237 = icmp eq i16 %48, %49
  br i1 %cmp6.not.i237, label %land.rhs56, label %land.end63

land.rhs56:                                       ; preds = %if.then2.i232, %if.end.i228
  %50 = load ptr, ptr @PicPos, align 8
  %idxprom57 = zext nneg i32 %2 to i64
  %arrayidx58 = getelementptr inbounds %struct.BlockPos, ptr %50, i64 %idxprom57
  %51 = load i16, ptr %arrayidx58, align 2
  %cmp61 = icmp ne i16 %51, 0
  %52 = zext i1 %cmp61 to i32
  br label %land.end63

land.end63:                                       ; preds = %if.then2.i232, %if.else, %lor.lhs.false.i223, %land.rhs56
  %land.ext64 = phi i32 [ %52, %land.rhs56 ], [ 0, %lor.lhs.false.i223 ], [ 0, %if.else ], [ 0, %if.then2.i232 ]
  %mbAvailA65 = getelementptr inbounds i8, ptr %currMB, i64 404
  store i32 %land.ext64, ptr %mbAvailA65, align 4
  %cmp.i239 = icmp slt i32 %sub45, 0
  br i1 %cmp.i239, label %land.end76, label %lor.lhs.false.i240

lor.lhs.false.i240:                               ; preds = %land.end63
  %53 = load ptr, ptr %dec_picture1, align 8
  %PicSizeInMbs.i242 = getelementptr inbounds i8, ptr %53, i64 108
  %54 = load i32, ptr %PicSizeInMbs.i242, align 4
  %cmp1.not.i243 = icmp sgt i32 %54, %sub45
  br i1 %cmp1.not.i243, label %if.end.i245, label %land.end76

if.end.i245:                                      ; preds = %lor.lhs.false.i240
  %DeblockCall.i246 = getelementptr inbounds i8, ptr %currMB, i64 104
  %55 = load i32, ptr %DeblockCall.i246, align 8
  %tobool.not.i247 = icmp eq i32 %55, 0
  br i1 %tobool.not.i247, label %if.then2.i249, label %land.rhs69

if.then2.i249:                                    ; preds = %if.end.i245
  %mb_data.i250 = getelementptr inbounds i8, ptr %0, i64 13512
  %56 = load ptr, ptr %mb_data.i250, align 8
  %idxprom.i251 = zext nneg i32 %sub45 to i64
  %slice_nr.i252 = getelementptr inbounds %struct.macroblock, ptr %56, i64 %idxprom.i251, i32 21
  %57 = load i16, ptr %slice_nr.i252, align 4
  %slice_nr4.i253 = getelementptr inbounds i8, ptr %currMB, i64 108
  %58 = load i16, ptr %slice_nr4.i253, align 4
  %cmp6.not.i254 = icmp eq i16 %57, %58
  br i1 %cmp6.not.i254, label %land.rhs69, label %land.end76.thread

land.rhs69:                                       ; preds = %if.then2.i249, %if.end.i245
  %59 = load ptr, ptr @PicPos, align 8
  %idxprom70 = sext i32 %2 to i64
  %arrayidx71 = getelementptr inbounds %struct.BlockPos, ptr %59, i64 %idxprom70
  %60 = load i16, ptr %arrayidx71, align 2
  %cmp74 = icmp ne i16 %60, 0
  %61 = zext i1 %cmp74 to i32
  br label %land.end76.thread

land.end76.thread:                                ; preds = %if.then2.i249, %land.rhs69
  %land.ext77.ph = phi i32 [ 0, %if.then2.i249 ], [ %61, %land.rhs69 ]
  %mbAvailD78303 = getelementptr inbounds i8, ptr %currMB, i64 416
  store i32 %land.ext77.ph, ptr %mbAvailD78303, align 8
  br label %lor.lhs.false.i257

land.end76:                                       ; preds = %land.end63, %lor.lhs.false.i240
  %mbAvailD78 = getelementptr inbounds i8, ptr %currMB, i64 416
  store i32 0, ptr %mbAvailD78, align 8
  %cmp.i256 = icmp slt i32 %sub44, -1
  br i1 %cmp.i256, label %land.end90.thread, label %lor.lhs.false.i257

land.end90.thread:                                ; preds = %land.end76
  %mbAvailC92306 = getelementptr inbounds i8, ptr %currMB, i64 412
  store i32 0, ptr %mbAvailC92306, align 4
  br label %if.end

lor.lhs.false.i257:                               ; preds = %land.end76.thread, %land.end76
  %62 = load ptr, ptr %dec_picture1, align 8
  %PicSizeInMbs.i259 = getelementptr inbounds i8, ptr %62, i64 108
  %63 = load i32, ptr %PicSizeInMbs.i259, align 4
  %cmp1.not.i260 = icmp sgt i32 %63, %add51
  br i1 %cmp1.not.i260, label %if.end.i262, label %land.end90

if.end.i262:                                      ; preds = %lor.lhs.false.i257
  %DeblockCall.i263 = getelementptr inbounds i8, ptr %currMB, i64 104
  %64 = load i32, ptr %DeblockCall.i263, align 8
  %tobool.not.i264 = icmp eq i32 %64, 0
  br i1 %tobool.not.i264, label %if.then2.i266, label %land.rhs82

if.then2.i266:                                    ; preds = %if.end.i262
  %mb_data.i267 = getelementptr inbounds i8, ptr %0, i64 13512
  %65 = load ptr, ptr %mb_data.i267, align 8
  %idxprom.i268 = zext nneg i32 %add51 to i64
  %slice_nr.i269 = getelementptr inbounds %struct.macroblock, ptr %65, i64 %idxprom.i268, i32 21
  %66 = load i16, ptr %slice_nr.i269, align 4
  %slice_nr4.i270 = getelementptr inbounds i8, ptr %currMB, i64 108
  %67 = load i16, ptr %slice_nr4.i270, align 4
  %cmp6.not.i271 = icmp eq i16 %66, %67
  br i1 %cmp6.not.i271, label %land.rhs82, label %land.end90

land.rhs82:                                       ; preds = %if.then2.i266, %if.end.i262
  %68 = load ptr, ptr @PicPos, align 8
  %69 = sext i32 %2 to i64
  %70 = getelementptr %struct.BlockPos, ptr %68, i64 %69
  %arrayidx85 = getelementptr i8, ptr %70, i64 4
  %71 = load i16, ptr %arrayidx85, align 2
  %cmp88 = icmp ne i16 %71, 0
  %72 = zext i1 %cmp88 to i32
  br label %land.end90

land.end90:                                       ; preds = %if.then2.i266, %lor.lhs.false.i257, %land.rhs82
  %land.ext91 = phi i32 [ %72, %land.rhs82 ], [ 0, %lor.lhs.false.i257 ], [ 0, %if.then2.i266 ]
  %mbAvailC92 = getelementptr inbounds i8, ptr %currMB, i64 412
  store i32 %land.ext91, ptr %mbAvailC92, align 4
  %cmp.i273 = icmp slt i32 %sub44, 0
  br i1 %cmp.i273, label %if.end, label %lor.lhs.false.i274

lor.lhs.false.i274:                               ; preds = %land.end90
  %73 = load ptr, ptr %dec_picture1, align 8
  %PicSizeInMbs.i276 = getelementptr inbounds i8, ptr %73, i64 108
  %74 = load i32, ptr %PicSizeInMbs.i276, align 4
  %cmp1.not.i277 = icmp sgt i32 %74, %sub44
  br i1 %cmp1.not.i277, label %if.end.i279, label %if.end

if.end.i279:                                      ; preds = %lor.lhs.false.i274
  %DeblockCall.i280 = getelementptr inbounds i8, ptr %currMB, i64 104
  %75 = load i32, ptr %DeblockCall.i280, align 8
  %tobool.not.i281 = icmp eq i32 %75, 0
  br i1 %tobool.not.i281, label %if.then2.i283, label %if.end10.i282

if.then2.i283:                                    ; preds = %if.end.i279
  %mb_data.i284 = getelementptr inbounds i8, ptr %0, i64 13512
  %76 = load ptr, ptr %mb_data.i284, align 8
  %idxprom.i285 = zext nneg i32 %sub44 to i64
  %slice_nr.i286 = getelementptr inbounds %struct.macroblock, ptr %76, i64 %idxprom.i285, i32 21
  %77 = load i16, ptr %slice_nr.i286, align 4
  %slice_nr4.i287 = getelementptr inbounds i8, ptr %currMB, i64 108
  %78 = load i16, ptr %slice_nr4.i287, align 4
  %cmp6.not.i288 = icmp eq i16 %77, %78
  br i1 %cmp6.not.i288, label %if.end10.i282, label %if.end

if.end10.i282:                                    ; preds = %if.then2.i283, %if.end.i279
  br label %if.end

if.end:                                           ; preds = %if.end10.i282, %if.then2.i283, %lor.lhs.false.i274, %land.end90, %land.end90.thread, %land.rhs32, %lor.lhs.false.i206, %land.end27, %if.then2.i215
  %.sink = phi i64 [ 416, %if.then2.i215 ], [ 416, %land.end27 ], [ 416, %lor.lhs.false.i206 ], [ 416, %land.rhs32 ], [ 408, %land.end90.thread ], [ 408, %land.end90 ], [ 408, %lor.lhs.false.i274 ], [ 408, %if.then2.i283 ], [ 408, %if.end10.i282 ]
  %retval.0.i278.sink = phi i32 [ 0, %if.then2.i215 ], [ 0, %land.end27 ], [ 0, %lor.lhs.false.i206 ], [ %42, %land.rhs32 ], [ 0, %land.end90.thread ], [ 0, %land.end90 ], [ 0, %lor.lhs.false.i274 ], [ 0, %if.then2.i283 ], [ 1, %if.end10.i282 ]
  %79 = phi i32 [ %mul3, %if.then2.i215 ], [ %mul3, %land.end27 ], [ %mul3, %lor.lhs.false.i206 ], [ %mul3, %land.rhs32 ], [ %sub44, %land.end90.thread ], [ %sub44, %land.end90 ], [ %sub44, %lor.lhs.false.i274 ], [ %sub44, %if.then2.i283 ], [ %sub44, %if.end10.i282 ]
  %80 = phi i32 [ %retval.0.i176, %if.then2.i215 ], [ %retval.0.i176, %land.end27 ], [ %retval.0.i176, %lor.lhs.false.i206 ], [ %retval.0.i176, %land.rhs32 ], [ 0, %land.end90.thread ], [ 0, %land.end90 ], [ 0, %lor.lhs.false.i274 ], [ 0, %if.then2.i283 ], [ 1, %if.end10.i282 ]
  %81 = phi i32 [ %mul, %if.then2.i215 ], [ %mul, %land.end27 ], [ %mul, %lor.lhs.false.i206 ], [ %mul, %land.rhs32 ], [ %sub41, %land.end90.thread ], [ %sub41, %land.end90 ], [ %sub41, %lor.lhs.false.i274 ], [ %sub41, %if.then2.i283 ], [ %sub41, %if.end10.i282 ]
  %82 = phi i32 [ %land.ext, %if.then2.i215 ], [ %land.ext, %land.end27 ], [ %land.ext, %lor.lhs.false.i206 ], [ %land.ext, %land.rhs32 ], [ %land.ext64, %land.end90.thread ], [ %land.ext64, %land.end90 ], [ %land.ext64, %lor.lhs.false.i274 ], [ %land.ext64, %if.then2.i283 ], [ %land.ext64, %if.end10.i282 ]
  %mbAvailB95 = getelementptr inbounds i8, ptr %currMB, i64 %.sink
  store i32 %retval.0.i278.sink, ptr %mbAvailB95, align 8
  %tobool97.not = icmp eq i32 %82, 0
  br i1 %tobool97.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %mb_data = getelementptr inbounds i8, ptr %0, i64 13512
  %83 = load ptr, ptr %mb_data, align 8
  %idxprom100 = sext i32 %81 to i64
  %arrayidx101 = getelementptr inbounds %struct.macroblock, ptr %83, i64 %idxprom100
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi ptr [ %arrayidx101, %cond.true ], [ null, %if.end ]
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128
  store ptr %cond, ptr %mb_left, align 8
  %tobool103.not = icmp eq i32 %80, 0
  br i1 %tobool103.not, label %cond.end111, label %cond.true104

cond.true104:                                     ; preds = %cond.end
  %mb_data106 = getelementptr inbounds i8, ptr %0, i64 13512
  %84 = load ptr, ptr %mb_data106, align 8
  %idxprom108 = sext i32 %79 to i64
  %arrayidx109 = getelementptr inbounds %struct.macroblock, ptr %84, i64 %idxprom108
  br label %cond.end111

cond.end111:                                      ; preds = %cond.end, %cond.true104
  %cond112 = phi ptr [ %arrayidx109, %cond.true104 ], [ null, %cond.end ]
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120
  store ptr %cond112, ptr %mb_up, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @get_mb_block_pos_normal(i32 noundef %mb_addr, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr @PicPos, align 8
  %idxprom = sext i32 %mb_addr to i64
  %arrayidx = getelementptr inbounds %struct.BlockPos, ptr %0, i64 %idxprom
  %1 = load i16, ptr %arrayidx, align 2
  store i16 %1, ptr %x, align 2
  %y2 = getelementptr inbounds i8, ptr %arrayidx, i64 2
  %2 = load i16, ptr %y2, align 2
  store i16 %2, ptr %y, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @get_mb_block_pos_mbaff(i32 noundef %mb_addr, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr @PicPos, align 8
  %shr = ashr i32 %mb_addr, 1
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds %struct.BlockPos, ptr %0, i64 %idxprom
  %1 = load i16, ptr %arrayidx, align 2
  store i16 %1, ptr %x, align 2
  %y2 = getelementptr inbounds i8, ptr %arrayidx, i64 2
  %2 = load i16, ptr %y2, align 2
  %conv = sext i16 %2 to i32
  %shl = shl nsw i32 %conv, 1
  %and = and i32 %mb_addr, 1
  %add = or disjoint i32 %shl, %and
  %conv3 = trunc i32 %add to i16
  store i16 %conv3, ptr %y, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @get_mb_pos(ptr nocapture noundef readonly %p_Vid, i32 noundef %mb_addr, ptr nocapture noundef readonly %mb_size, ptr noundef %x, ptr noundef %y) local_unnamed_addr #2 {
entry:
  %get_mb_block_pos = getelementptr inbounds i8, ptr %p_Vid, i64 856752
  %0 = load ptr, ptr %get_mb_block_pos, align 8
  tail call void %0(i32 noundef %mb_addr, ptr noundef %x, ptr noundef %y) #3
  %1 = load i16, ptr %x, align 2
  %2 = load i32, ptr %mb_size, align 4
  %3 = trunc i32 %2 to i16
  %conv1 = mul i16 %1, %3
  store i16 %conv1, ptr %x, align 2
  %4 = load i16, ptr %y, align 2
  %arrayidx3 = getelementptr inbounds i8, ptr %mb_size, i64 4
  %5 = load i32, ptr %arrayidx3, align 4
  %6 = trunc i32 %5 to i16
  %conv5 = mul i16 %4, %6
  store i16 %conv5, ptr %y, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @getNonAffNeighbour(ptr nocapture noundef readonly %currMB, i32 noundef %xN, i32 noundef %yN, ptr nocapture noundef readonly %mb_size, ptr nocapture noundef %pix) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr %mb_size, align 4
  %arrayidx1 = getelementptr inbounds i8, ptr %mb_size, i64 4
  %1 = load i32, ptr %arrayidx1, align 4
  %cmp = icmp slt i32 %xN, 0
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %cmp2 = icmp slt i32 %yN, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %mbAddrD = getelementptr inbounds i8, ptr %currMB, i64 400
  br label %if.end37

if.else:                                          ; preds = %if.then
  %cmp4 = icmp sgt i32 %1, %yN
  br i1 %cmp4, label %if.then5, label %lor.lhs.false.sink.split

if.then5:                                         ; preds = %if.else
  %mbAddrA = getelementptr inbounds i8, ptr %currMB, i64 388
  br label %if.end37

if.else11:                                        ; preds = %entry
  %cmp12 = icmp sgt i32 %0, %xN
  %cmp14 = icmp slt i32 %yN, 0
  br i1 %cmp12, label %if.then13, label %if.else27

if.then13:                                        ; preds = %if.else11
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.then13
  %mbAddrB = getelementptr inbounds i8, ptr %currMB, i64 392
  br label %if.end37

if.else18:                                        ; preds = %if.then13
  %cmp19 = icmp sgt i32 %1, %yN
  br i1 %cmp19, label %if.end37.thread105, label %lor.lhs.false.sink.split

if.end37.thread105:                               ; preds = %if.else18
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24
  %2 = load i32, ptr %mbAddrX, align 8
  %mb_addr21 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %2, ptr %mb_addr21, align 4
  store i32 1, ptr %pix, align 4
  br label %if.then40

if.else27:                                        ; preds = %if.else11
  br i1 %cmp14, label %if.then30, label %lor.lhs.false.sink.split

if.then30:                                        ; preds = %if.else27
  %mbAddrC = getelementptr inbounds i8, ptr %currMB, i64 396
  br label %if.end37

if.end37:                                         ; preds = %if.then15, %if.then30, %if.then3, %if.then5
  %.sink108.in = phi ptr [ %mbAddrB, %if.then15 ], [ %mbAddrC, %if.then30 ], [ %mbAddrD, %if.then3 ], [ %mbAddrA, %if.then5 ]
  %.sink107 = phi i64 [ 408, %if.then15 ], [ 412, %if.then30 ], [ 416, %if.then3 ], [ 404, %if.then5 ]
  %.sink108 = load i32, ptr %.sink108.in, align 4
  %mb_addr16 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %.sink108, ptr %mb_addr16, align 4
  %mbAvailB = getelementptr inbounds i8, ptr %currMB, i64 %.sink107
  %.sink = load i32, ptr %mbAvailB, align 4
  store i32 %.sink, ptr %pix, align 4
  %tobool.not = icmp eq i32 %.sink, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then40

lor.lhs.false.sink.split:                         ; preds = %if.else27, %if.else18, %if.else
  store i32 0, ptr %pix, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.false.sink.split, %if.end37
  %DeblockCall = getelementptr inbounds i8, ptr %currMB, i64 104
  %3 = load i32, ptr %DeblockCall, align 8
  %tobool39.not = icmp eq i32 %3, 0
  br i1 %tobool39.not, label %if.end58, label %lor.lhs.false.if.then40_crit_edge

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  %mb_addr41.phi.trans.insert = getelementptr inbounds i8, ptr %pix, i64 4
  %.pre = load i32, ptr %mb_addr41.phi.trans.insert, align 4
  br label %if.then40

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %if.end37.thread105, %if.end37
  %4 = phi i32 [ %.pre, %lor.lhs.false.if.then40_crit_edge ], [ %2, %if.end37.thread105 ], [ %.sink108, %if.end37 ]
  %5 = load ptr, ptr @PicPos, align 8
  %idxprom = sext i32 %4 to i64
  %arrayidx42 = getelementptr inbounds %struct.BlockPos, ptr %5, i64 %idxprom
  %sub = add i32 %0, 65535
  %and = and i32 %sub, %xN
  %conv = trunc i32 %and to i16
  %x = getelementptr inbounds i8, ptr %pix, i64 8
  store i16 %conv, ptr %x, align 4
  %sub43 = add i32 %1, 65535
  %and44 = and i32 %sub43, %yN
  %conv45 = trunc i32 %and44 to i16
  %y = getelementptr inbounds i8, ptr %pix, i64 10
  store i16 %conv45, ptr %y, align 2
  %6 = load i16, ptr %arrayidx42, align 2
  %conv49 = zext i16 %6 to i32
  %mul = mul i32 %0, %conv49
  %add = add i32 %mul, %and
  %conv50 = trunc i32 %add to i16
  %pos_x = getelementptr inbounds i8, ptr %pix, i64 12
  store i16 %conv50, ptr %pos_x, align 4
  %y53 = getelementptr inbounds i8, ptr %arrayidx42, i64 2
  %7 = load i16, ptr %y53, align 2
  %8 = trunc i32 %1 to i16
  %9 = mul i16 %7, %8
  %conv57 = add i16 %9, %conv45
  %pos_y = getelementptr inbounds i8, ptr %pix, i64 14
  store i16 %conv57, ptr %pos_y, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then40, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @getAffNeighbour(ptr nocapture noundef readonly %currMB, i32 noundef %xN, i32 noundef %yN, ptr nocapture noundef readonly %mb_size, ptr noundef %pix) local_unnamed_addr #2 {
entry:
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %1 = load i32, ptr %mb_size, align 4
  %arrayidx2 = getelementptr inbounds i8, ptr %mb_size, i64 4
  %2 = load i32, ptr %arrayidx2, align 4
  store i32 0, ptr %pix, align 4
  %sub = add i32 %2, 65535
  %cmp.not = icmp sgt i32 %2, %yN
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sub3 = add i32 %1, 65535
  %cmp4 = icmp sle i32 %1, %xN
  %cmp5 = icmp sgt i32 %yN, -1
  %or.cond = and i1 %cmp5, %cmp4
  br i1 %or.cond, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %cmp10 = icmp slt i32 %xN, 0
  br i1 %cmp10, label %if.then11, label %land.lhs.true201

if.then11:                                        ; preds = %if.end9
  %cmp12 = icmp slt i32 %yN, 0
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384
  %3 = load i32, ptr %mb_field, align 8
  %tobool.not = icmp eq i32 %3, 0
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24
  %4 = load i32, ptr %mbAddrX, align 8
  %and = and i32 %4, 1
  %cmp15 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.then13, label %if.then70

if.then13:                                        ; preds = %if.then11
  br i1 %tobool.not, label %if.then14, label %if.else34

if.then14:                                        ; preds = %if.then13
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then14
  %mbAddrD = getelementptr inbounds i8, ptr %currMB, i64 400
  %5 = load i32, ptr %mbAddrD, align 8
  %add = add nsw i32 %5, 1
  %mb_addr = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %add, ptr %mb_addr, align 4
  %mbAvailD = getelementptr inbounds i8, ptr %currMB, i64 416
  %6 = load i32, ptr %mbAvailD, align 8
  br label %if.end355

if.else:                                          ; preds = %if.then14
  %mbAddrA = getelementptr inbounds i8, ptr %currMB, i64 388
  %7 = load i32, ptr %mbAddrA, align 4
  %mb_addr18 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %7, ptr %mb_addr18, align 4
  %mbAvailA = getelementptr inbounds i8, ptr %currMB, i64 404
  %8 = load i32, ptr %mbAvailA, align 4
  store i32 %8, ptr %pix, align 4
  %tobool21.not = icmp eq i32 %8, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.then22

if.then22:                                        ; preds = %if.else
  %mb_data = getelementptr inbounds i8, ptr %0, i64 848888
  %9 = load ptr, ptr %mb_data, align 8
  %10 = load i32, ptr %mbAddrA, align 4
  %idxprom = sext i32 %10 to i64
  %mb_field25 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %idxprom, i32 45
  %11 = load i32, ptr %mb_field25, align 8
  %tobool26.not = icmp eq i32 %11, 0
  br i1 %tobool26.not, label %if.then360, label %if.else28

if.else28:                                        ; preds = %if.then22
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %mb_addr18, align 4
  %add30 = add nsw i32 %2, %yN
  %shr = ashr i32 %add30, 1
  br label %if.then360

if.else34:                                        ; preds = %if.then13
  %mbAddrD39 = getelementptr inbounds i8, ptr %currMB, i64 400
  %12 = load i32, ptr %mbAddrD39, align 8
  br i1 %cmp15, label %if.then38, label %if.else58

if.then38:                                        ; preds = %if.else34
  %mb_addr40 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %12, ptr %mb_addr40, align 4
  %mbAvailD41 = getelementptr inbounds i8, ptr %currMB, i64 416
  %13 = load i32, ptr %mbAvailD41, align 8
  store i32 %13, ptr %pix, align 4
  %tobool44.not = icmp eq i32 %13, 0
  br i1 %tobool44.not, label %lor.lhs.false, label %if.then45

if.then45:                                        ; preds = %if.then38
  %mb_data46 = getelementptr inbounds i8, ptr %0, i64 848888
  %14 = load ptr, ptr %mb_data46, align 8
  %15 = load i32, ptr %mbAddrD39, align 8
  %idxprom48 = sext i32 %15 to i64
  %mb_field50 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %idxprom48, i32 45
  %16 = load i32, ptr %mb_field50, align 8
  %tobool51.not = icmp eq i32 %16, 0
  br i1 %tobool51.not, label %if.then52, label %if.then360

if.then52:                                        ; preds = %if.then45
  %inc54 = add nsw i32 %12, 1
  store i32 %inc54, ptr %mb_addr40, align 4
  %mul = shl nsw i32 %yN, 1
  br label %if.then360

if.else58:                                        ; preds = %if.else34
  %add60 = add nsw i32 %12, 1
  %mb_addr61 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %add60, ptr %mb_addr61, align 4
  %mbAvailD62 = getelementptr inbounds i8, ptr %currMB, i64 416
  %17 = load i32, ptr %mbAvailD62, align 8
  br label %if.end355

if.then70:                                        ; preds = %if.then11
  %mbAddrA78 = getelementptr inbounds i8, ptr %currMB, i64 388
  %18 = load i32, ptr %mbAddrA78, align 4
  %mb_addr79 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %18, ptr %mb_addr79, align 4
  %mbAvailA80 = getelementptr inbounds i8, ptr %currMB, i64 404
  %19 = load i32, ptr %mbAvailA80, align 4
  store i32 %19, ptr %pix, align 4
  %tobool83.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.then73, label %if.else128

if.then73:                                        ; preds = %if.then70
  br i1 %cmp15, label %if.then77, label %if.else100

if.then77:                                        ; preds = %if.then73
  br i1 %tobool83.not, label %lor.lhs.false, label %if.then84

if.then84:                                        ; preds = %if.then77
  %mb_data85 = getelementptr inbounds i8, ptr %0, i64 848888
  %20 = load ptr, ptr %mb_data85, align 8
  %21 = load i32, ptr %mbAddrA78, align 4
  %idxprom87 = sext i32 %21 to i64
  %mb_field89 = getelementptr inbounds %struct.macroblock, ptr %20, i64 %idxprom87, i32 45
  %22 = load i32, ptr %mb_field89, align 8
  %tobool90.not = icmp eq i32 %22, 0
  br i1 %tobool90.not, label %if.then360, label %if.else92

if.else92:                                        ; preds = %if.then84
  %and93 = and i32 %yN, 1
  %add96 = add nsw i32 %18, %and93
  store i32 %add96, ptr %mb_addr79, align 4
  %shr97 = lshr i32 %yN, 1
  br label %if.then360

if.else100:                                       ; preds = %if.then73
  br i1 %tobool83.not, label %lor.lhs.false, label %if.then107

if.then107:                                       ; preds = %if.else100
  %mb_data108 = getelementptr inbounds i8, ptr %0, i64 848888
  %23 = load ptr, ptr %mb_data108, align 8
  %24 = load i32, ptr %mbAddrA78, align 4
  %idxprom110 = sext i32 %24 to i64
  %mb_field112 = getelementptr inbounds %struct.macroblock, ptr %23, i64 %idxprom110, i32 45
  %25 = load i32, ptr %mb_field112, align 8
  %tobool113.not = icmp eq i32 %25, 0
  br i1 %tobool113.not, label %if.then114, label %if.else117

if.then114:                                       ; preds = %if.then107
  %inc116 = add nsw i32 %18, 1
  store i32 %inc116, ptr %mb_addr79, align 4
  br label %if.then360

if.else117:                                       ; preds = %if.then107
  %and118 = and i32 %yN, 1
  %add122 = add nsw i32 %18, %and118
  store i32 %add122, ptr %mb_addr79, align 4
  %add123 = add nuw nsw i32 %2, %yN
  %shr124 = lshr i32 %add123, 1
  br label %if.then360

if.else128:                                       ; preds = %if.then70
  br i1 %cmp15, label %if.then133, label %if.else161

if.then133:                                       ; preds = %if.else128
  br i1 %tobool83.not, label %lor.lhs.false, label %if.then140

if.then140:                                       ; preds = %if.then133
  %mb_data141 = getelementptr inbounds i8, ptr %0, i64 848888
  %26 = load ptr, ptr %mb_data141, align 8
  %27 = load i32, ptr %mbAddrA78, align 4
  %idxprom143 = sext i32 %27 to i64
  %mb_field145 = getelementptr inbounds %struct.macroblock, ptr %26, i64 %idxprom143, i32 45
  %28 = load i32, ptr %mb_field145, align 8
  %tobool146.not = icmp eq i32 %28, 0
  br i1 %tobool146.not, label %if.then147, label %if.then360

if.then147:                                       ; preds = %if.then140
  %shr148 = lshr i32 %2, 1
  %cmp149 = icmp ugt i32 %shr148, %yN
  br i1 %cmp149, label %if.then151, label %if.else152

if.then151:                                       ; preds = %if.then147
  %shl = shl nuw nsw i32 %yN, 1
  br label %if.then360

if.else152:                                       ; preds = %if.then147
  %inc154 = add nsw i32 %18, 1
  store i32 %inc154, ptr %mb_addr79, align 4
  %shl155 = shl nuw i32 %yN, 1
  %sub156 = sub nsw i32 %shl155, %2
  br label %if.then360

if.else161:                                       ; preds = %if.else128
  br i1 %tobool83.not, label %lor.lhs.false, label %if.then168

if.then168:                                       ; preds = %if.else161
  %mb_data169 = getelementptr inbounds i8, ptr %0, i64 848888
  %29 = load ptr, ptr %mb_data169, align 8
  %30 = load i32, ptr %mbAddrA78, align 4
  %idxprom171 = sext i32 %30 to i64
  %mb_field173 = getelementptr inbounds %struct.macroblock, ptr %29, i64 %idxprom171, i32 45
  %31 = load i32, ptr %mb_field173, align 8
  %tobool174.not = icmp eq i32 %31, 0
  br i1 %tobool174.not, label %if.then175, label %if.else189

if.then175:                                       ; preds = %if.then168
  %shr176 = lshr i32 %2, 1
  %cmp177 = icmp ugt i32 %shr176, %yN
  br i1 %cmp177, label %if.then179, label %if.else182

if.then179:                                       ; preds = %if.then175
  %shl180 = shl nuw nsw i32 %yN, 1
  %add181 = or disjoint i32 %shl180, 1
  br label %if.then360

if.else182:                                       ; preds = %if.then175
  %inc184 = add nsw i32 %18, 1
  store i32 %inc184, ptr %mb_addr79, align 4
  %shl185 = shl nuw i32 %yN, 1
  %add186 = or disjoint i32 %shl185, 1
  %sub187 = sub i32 %add186, %2
  br label %if.then360

if.else189:                                       ; preds = %if.then168
  %inc191 = add nsw i32 %18, 1
  store i32 %inc191, ptr %mb_addr79, align 4
  br label %if.then360

land.lhs.true201:                                 ; preds = %if.end9
  %cmp202 = icmp sgt i32 %1, %xN
  %cmp205 = icmp slt i32 %yN, 0
  br i1 %cmp202, label %if.then204, label %if.else301

if.then204:                                       ; preds = %land.lhs.true201
  br i1 %cmp205, label %if.then207, label %if.else275

if.then207:                                       ; preds = %if.then204
  %mb_field208 = getelementptr inbounds i8, ptr %currMB, i64 384
  %32 = load i32, ptr %mb_field208, align 8
  %tobool209.not = icmp eq i32 %32, 0
  %mbAddrX211 = getelementptr inbounds i8, ptr %currMB, i64 24
  %33 = load i32, ptr %mbAddrX211, align 8
  %and212 = and i32 %33, 1
  %cmp213 = icmp eq i32 %and212, 0
  br i1 %tobool209.not, label %if.then210, label %if.else241

if.then210:                                       ; preds = %if.then207
  br i1 %cmp213, label %if.then215, label %if.else235

if.then215:                                       ; preds = %if.then210
  %mbAddrB = getelementptr inbounds i8, ptr %currMB, i64 392
  %34 = load i32, ptr %mbAddrB, align 8
  %mb_addr216 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %34, ptr %mb_addr216, align 4
  %mbAvailB = getelementptr inbounds i8, ptr %currMB, i64 408
  %35 = load i32, ptr %mbAvailB, align 8
  %tobool217.not = icmp eq i32 %35, 0
  br i1 %tobool217.not, label %if.end355, label %if.then218

if.then218:                                       ; preds = %if.then215
  %DeblockCall = getelementptr inbounds i8, ptr %currMB, i64 104
  %36 = load i32, ptr %DeblockCall, align 8
  %cmp219 = icmp eq i32 %36, 1
  br i1 %cmp219, label %land.lhs.true221, label %if.then228

land.lhs.true221:                                 ; preds = %if.then218
  %mb_data222 = getelementptr inbounds i8, ptr %0, i64 848888
  %37 = load ptr, ptr %mb_data222, align 8
  %idxprom224 = sext i32 %34 to i64
  %mb_field226 = getelementptr inbounds %struct.macroblock, ptr %37, i64 %idxprom224, i32 45
  %38 = load i32, ptr %mb_field226, align 8
  %tobool227.not = icmp eq i32 %38, 0
  br i1 %tobool227.not, label %if.then228, label %if.end355

if.then228:                                       ; preds = %land.lhs.true221, %if.then218
  %add230 = add nsw i32 %34, 1
  store i32 %add230, ptr %mb_addr216, align 4
  %.pre = load i32, ptr %mbAvailB, align 8
  br label %if.end355

if.else235:                                       ; preds = %if.then210
  %sub237 = add nsw i32 %33, -1
  %mb_addr238 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %sub237, ptr %mb_addr238, align 4
  store i32 1, ptr %pix, align 4
  br label %if.then360

if.else241:                                       ; preds = %if.then207
  %mbAddrB247 = getelementptr inbounds i8, ptr %currMB, i64 392
  %39 = load i32, ptr %mbAddrB247, align 8
  br i1 %cmp213, label %if.then246, label %if.else267

if.then246:                                       ; preds = %if.else241
  %mb_addr248 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %39, ptr %mb_addr248, align 4
  %mbAvailB249 = getelementptr inbounds i8, ptr %currMB, i64 408
  %40 = load i32, ptr %mbAvailB249, align 8
  store i32 %40, ptr %pix, align 4
  %tobool252.not = icmp eq i32 %40, 0
  br i1 %tobool252.not, label %lor.lhs.false, label %if.then253

if.then253:                                       ; preds = %if.then246
  %mb_data254 = getelementptr inbounds i8, ptr %0, i64 848888
  %41 = load ptr, ptr %mb_data254, align 8
  %42 = load i32, ptr %mbAddrB247, align 8
  %idxprom256 = sext i32 %42 to i64
  %mb_field258 = getelementptr inbounds %struct.macroblock, ptr %41, i64 %idxprom256, i32 45
  %43 = load i32, ptr %mb_field258, align 8
  %tobool259.not = icmp eq i32 %43, 0
  br i1 %tobool259.not, label %if.then260, label %if.then360

if.then260:                                       ; preds = %if.then253
  %inc262 = add nsw i32 %39, 1
  store i32 %inc262, ptr %mb_addr248, align 4
  %mul263 = shl nsw i32 %yN, 1
  br label %if.then360

if.else267:                                       ; preds = %if.else241
  %add269 = add nsw i32 %39, 1
  %mb_addr270 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %add269, ptr %mb_addr270, align 4
  %mbAvailB271 = getelementptr inbounds i8, ptr %currMB, i64 408
  %44 = load i32, ptr %mbAvailB271, align 8
  br label %if.end355

if.else275:                                       ; preds = %if.then204
  %cmp276 = icmp eq i32 %yN, 0
  br i1 %cmp276, label %land.lhs.true278, label %if.then294

land.lhs.true278:                                 ; preds = %if.else275
  %DeblockCall279 = getelementptr inbounds i8, ptr %currMB, i64 104
  %45 = load i32, ptr %DeblockCall279, align 8
  %cmp280 = icmp eq i32 %45, 2
  br i1 %cmp280, label %if.then282, label %if.then294

if.then282:                                       ; preds = %land.lhs.true278
  %mbAddrB283 = getelementptr inbounds i8, ptr %currMB, i64 392
  %46 = load i32, ptr %mbAddrB283, align 8
  %add284 = add nsw i32 %46, 1
  %mb_addr285 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %add284, ptr %mb_addr285, align 4
  store i32 1, ptr %pix, align 4
  br label %if.then360

if.then294:                                       ; preds = %if.else275, %land.lhs.true278
  %mbAddrX295 = getelementptr inbounds i8, ptr %currMB, i64 24
  %47 = load i32, ptr %mbAddrX295, align 8
  %mb_addr296 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %47, ptr %mb_addr296, align 4
  store i32 1, ptr %pix, align 4
  br label %if.then360

if.else301:                                       ; preds = %land.lhs.true201
  br i1 %cmp205, label %if.then304, label %lor.lhs.false

if.then304:                                       ; preds = %if.else301
  %mb_field305 = getelementptr inbounds i8, ptr %currMB, i64 384
  %48 = load i32, ptr %mb_field305, align 8
  %tobool306.not = icmp eq i32 %48, 0
  %mbAddrX308 = getelementptr inbounds i8, ptr %currMB, i64 24
  %49 = load i32, ptr %mbAddrX308, align 8
  %and309 = and i32 %49, 1
  %cmp310 = icmp eq i32 %and309, 0
  br i1 %tobool306.not, label %if.then307, label %if.else319

if.then307:                                       ; preds = %if.then304
  br i1 %cmp310, label %if.then312, label %lor.lhs.false

if.then312:                                       ; preds = %if.then307
  %mbAddrC = getelementptr inbounds i8, ptr %currMB, i64 396
  %50 = load i32, ptr %mbAddrC, align 4
  %add313 = add nsw i32 %50, 1
  %mb_addr314 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %add313, ptr %mb_addr314, align 4
  %mbAvailC = getelementptr inbounds i8, ptr %currMB, i64 412
  %51 = load i32, ptr %mbAvailC, align 4
  br label %if.end355

if.else319:                                       ; preds = %if.then304
  %mbAddrC325 = getelementptr inbounds i8, ptr %currMB, i64 396
  %52 = load i32, ptr %mbAddrC325, align 4
  br i1 %cmp310, label %if.then324, label %if.else345

if.then324:                                       ; preds = %if.else319
  %mb_addr326 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %52, ptr %mb_addr326, align 4
  %mbAvailC327 = getelementptr inbounds i8, ptr %currMB, i64 412
  %53 = load i32, ptr %mbAvailC327, align 4
  store i32 %53, ptr %pix, align 4
  %tobool330.not = icmp eq i32 %53, 0
  br i1 %tobool330.not, label %lor.lhs.false, label %if.then331

if.then331:                                       ; preds = %if.then324
  %mb_data332 = getelementptr inbounds i8, ptr %0, i64 848888
  %54 = load ptr, ptr %mb_data332, align 8
  %55 = load i32, ptr %mbAddrC325, align 4
  %idxprom334 = sext i32 %55 to i64
  %mb_field336 = getelementptr inbounds %struct.macroblock, ptr %54, i64 %idxprom334, i32 45
  %56 = load i32, ptr %mb_field336, align 8
  %tobool337.not = icmp eq i32 %56, 0
  br i1 %tobool337.not, label %if.then338, label %if.then360

if.then338:                                       ; preds = %if.then331
  %inc340 = add nsw i32 %52, 1
  store i32 %inc340, ptr %mb_addr326, align 4
  %mul341 = shl nsw i32 %yN, 1
  br label %if.then360

if.else345:                                       ; preds = %if.else319
  %add347 = add nsw i32 %52, 1
  %mb_addr348 = getelementptr inbounds i8, ptr %pix, i64 4
  store i32 %add347, ptr %mb_addr348, align 4
  %mbAvailC349 = getelementptr inbounds i8, ptr %currMB, i64 412
  %57 = load i32, ptr %mbAvailC349, align 4
  br label %if.end355

if.end355:                                        ; preds = %if.then215, %if.then228, %land.lhs.true221, %if.else267, %if.then312, %if.else345, %if.else58, %if.then16
  %.sink = phi i32 [ %44, %if.else267 ], [ %51, %if.then312 ], [ %57, %if.else345 ], [ %17, %if.else58 ], [ %6, %if.then16 ], [ %35, %land.lhs.true221 ], [ %.pre, %if.then228 ], [ 0, %if.then215 ]
  store i32 %.sink, ptr %pix, align 4
  %tobool357.not = icmp eq i32 %.sink, 0
  br i1 %tobool357.not, label %lor.lhs.false, label %if.then360

lor.lhs.false:                                    ; preds = %if.then307, %if.else301, %if.then133, %if.else161, %if.then77, %if.else100, %if.else, %if.then38, %if.then324, %if.then246, %if.end355
  %yM.0585 = phi i32 [ %yN, %if.end355 ], [ -1, %if.then246 ], [ -1, %if.then324 ], [ -1, %if.then38 ], [ -1, %if.else ], [ -1, %if.else100 ], [ -1, %if.then77 ], [ -1, %if.else161 ], [ -1, %if.then133 ], [ -1, %if.else301 ], [ -1, %if.then307 ]
  %DeblockCall358 = getelementptr inbounds i8, ptr %currMB, i64 104
  %58 = load i32, ptr %DeblockCall358, align 8
  %tobool359.not = icmp eq i32 %58, 0
  br i1 %tobool359.not, label %cleanup, label %if.then360

if.then360:                                       ; preds = %if.then52, %if.else28, %if.then151, %if.else152, %if.else189, %if.then179, %if.else182, %if.else92, %if.else117, %if.then114, %if.then260, %if.then338, %if.then22, %if.then45, %if.then84, %if.then140, %if.then253, %if.then331, %if.else235, %if.then294, %if.then282, %lor.lhs.false, %if.end355
  %yM.0581 = phi i32 [ %yM.0585, %lor.lhs.false ], [ %yN, %if.end355 ], [ %yN, %if.then294 ], [ -1, %if.then282 ], [ %yN, %if.else235 ], [ %mul, %if.then52 ], [ %shr, %if.else28 ], [ %shl, %if.then151 ], [ %sub156, %if.else152 ], [ %yN, %if.else189 ], [ %add181, %if.then179 ], [ %sub187, %if.else182 ], [ %shr97, %if.else92 ], [ %shr124, %if.else117 ], [ %yN, %if.then114 ], [ %mul263, %if.then260 ], [ %mul341, %if.then338 ], [ %yN, %if.then22 ], [ %yN, %if.then45 ], [ %yN, %if.then84 ], [ %yN, %if.then140 ], [ %yN, %if.then253 ], [ %yN, %if.then331 ]
  %and362 = and i32 %sub3, %xN
  %conv363 = trunc i32 %and362 to i16
  %x = getelementptr inbounds i8, ptr %pix, i64 8
  store i16 %conv363, ptr %x, align 4
  %and365 = and i32 %yM.0581, %sub
  %conv366 = trunc i32 %and365 to i16
  %y = getelementptr inbounds i8, ptr %pix, i64 10
  store i16 %conv366, ptr %y, align 2
  %mb_addr367 = getelementptr inbounds i8, ptr %pix, i64 4
  %59 = load i32, ptr %mb_addr367, align 4
  %pos_x = getelementptr inbounds i8, ptr %pix, i64 12
  %pos_y = getelementptr inbounds i8, ptr %pix, i64 14
  %get_mb_block_pos.i = getelementptr inbounds i8, ptr %0, i64 856752
  %60 = load ptr, ptr %get_mb_block_pos.i, align 8
  tail call void %60(i32 noundef %59, ptr noundef nonnull %pos_x, ptr noundef nonnull %pos_y) #3
  %61 = load i16, ptr %pos_x, align 2
  %62 = load i32, ptr %mb_size, align 4
  %63 = trunc i32 %62 to i16
  %64 = load i16, ptr %pos_y, align 2
  %conv1.i = mul i16 %61, %63
  store i16 %conv1.i, ptr %pos_x, align 2
  %65 = load i32, ptr %arrayidx2, align 4
  %66 = trunc i32 %65 to i16
  %conv5.i = mul i16 %64, %66
  %67 = load <2 x i16>, ptr %x, align 4
  %68 = insertelement <2 x i16> poison, i16 %conv1.i, i64 0
  %69 = insertelement <2 x i16> %68, i16 %conv5.i, i64 1
  %70 = add <2 x i16> %67, %69
  store <2 x i16> %70, ptr %pos_x, align 4
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then360, %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @get4x4Neighbour(ptr noundef %currMB, i32 noundef %block_x, i32 noundef %block_y, ptr noundef %mb_size, ptr noundef %pix) local_unnamed_addr #2 {
entry:
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid, align 8
  %getNeighbour = getelementptr inbounds i8, ptr %0, i64 856744
  %1 = load ptr, ptr %getNeighbour, align 8
  tail call void %1(ptr noundef %currMB, i32 noundef %block_x, i32 noundef %block_y, ptr noundef %mb_size, ptr noundef %pix) #3
  %2 = load i32, ptr %pix, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %x = getelementptr inbounds i8, ptr %pix, i64 8
  %3 = load <4 x i16>, ptr %x, align 4
  %4 = ashr <4 x i16> %3, <i16 2, i16 2, i16 2, i16 2>
  store <4 x i16> %4, ptr %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @get4x4NeighbourBase(ptr noundef %currMB, i32 noundef %block_x, i32 noundef %block_y, ptr noundef %mb_size, ptr noundef %pix) local_unnamed_addr #2 {
entry:
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid, align 8
  %getNeighbour = getelementptr inbounds i8, ptr %0, i64 856744
  %1 = load ptr, ptr %getNeighbour, align 8
  tail call void %1(ptr noundef %currMB, i32 noundef %block_x, i32 noundef %block_y, ptr noundef %mb_size, ptr noundef %pix) #3
  %2 = load i32, ptr %pix, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %x = getelementptr inbounds i8, ptr %pix, i64 8
  %3 = load <2 x i16>, ptr %x, align 4
  %4 = ashr <2 x i16> %3, <i16 2, i16 2>
  store <2 x i16> %4, ptr %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
