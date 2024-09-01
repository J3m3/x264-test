; ModuleID = 'ldecod_src/mv_prediction.c'
source_filename = "ldecod_src/mv_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MotionVector = type { i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }

@zero_mv = internal unnamed_addr constant %struct.MotionVector zeroinitializer, align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_motion_vector_prediction(ptr nocapture noundef writeonly %currMB, i32 noundef %mb_aff_frame_flag) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %mb_aff_frame_flag, 0
  %spec.select = select i1 %tobool.not, ptr @GetMotionVectorPredictorNormal, ptr @GetMotionVectorPredictorMBAFF
  %0 = getelementptr inbounds i8, ptr %currMB, i64 448
  store ptr %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetMotionVectorPredictorMBAFF(ptr nocapture noundef readonly %currMB, ptr nocapture noundef readonly %block, ptr nocapture noundef writeonly %pmv, i16 noundef signext %ref_frame, ptr nocapture noundef readonly %mv_info, i32 noundef %list, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef %blockshape_x, i32 noundef %blockshape_y) #1 {
entry:
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384
  %1 = load i32, ptr %mb_field, align 8
  %tobool.not = icmp eq i32 %1, 0
  %2 = load i32, ptr %block, align 4
  %tobool119.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool119.not, label %cond.end29, label %cond.true

cond.true:                                        ; preds = %if.then
  %mb_data = getelementptr inbounds i8, ptr %0, i64 848888
  %3 = load ptr, ptr %mb_data, align 8
  %mb_addr = getelementptr inbounds i8, ptr %block, i64 4
  %4 = load i32, ptr %mb_addr, align 4
  %idxprom = sext i32 %4 to i64
  %mb_field5 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom, i32 45
  %5 = load i32, ptr %mb_field5, align 8
  %tobool6.not = icmp eq i32 %5, 0
  %pos_y17 = getelementptr inbounds i8, ptr %block, i64 14
  %6 = load i16, ptr %pos_y17, align 2
  %idxprom18 = sext i16 %6 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom18
  %7 = load ptr, ptr %arrayidx19, align 8
  %pos_x21 = getelementptr inbounds i8, ptr %block, i64 12
  %8 = load i16, ptr %pos_x21, align 4
  %idxprom22 = sext i16 %8 to i64
  %idxprom25 = sext i32 %list to i64
  %arrayidx26 = getelementptr inbounds %struct.pic_motion_params, ptr %7, i64 %idxprom22, i32 2, i64 %idxprom25
  %9 = load i8, ptr %arrayidx26, align 1
  %conv27 = sext i8 %9 to i32
  %mul = zext i1 %tobool6.not to i32
  %spec.select882 = shl nsw i32 %conv27, %mul
  br label %cond.end29

cond.end29:                                       ; preds = %cond.true, %if.then
  %cond30 = phi i32 [ -1, %if.then ], [ %spec.select882, %cond.true ]
  %arrayidx31 = getelementptr inbounds i8, ptr %block, i64 16
  %10 = load i32, ptr %arrayidx31, align 4
  %tobool33.not = icmp eq i32 %10, 0
  br i1 %tobool33.not, label %cond.end72, label %cond.true34

cond.true34:                                      ; preds = %cond.end29
  %mb_data35 = getelementptr inbounds i8, ptr %0, i64 848888
  %11 = load ptr, ptr %mb_data35, align 8
  %mb_addr37 = getelementptr inbounds i8, ptr %block, i64 20
  %12 = load i32, ptr %mb_addr37, align 4
  %idxprom38 = sext i32 %12 to i64
  %mb_field40 = getelementptr inbounds %struct.macroblock, ptr %11, i64 %idxprom38, i32 45
  %13 = load i32, ptr %mb_field40, align 8
  %tobool41.not = icmp eq i32 %13, 0
  %pos_y57 = getelementptr inbounds i8, ptr %block, i64 30
  %14 = load i16, ptr %pos_y57, align 2
  %idxprom58 = sext i16 %14 to i64
  %arrayidx59 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom58
  %15 = load ptr, ptr %arrayidx59, align 8
  %pos_x61 = getelementptr inbounds i8, ptr %block, i64 28
  %16 = load i16, ptr %pos_x61, align 4
  %idxprom62 = sext i16 %16 to i64
  %idxprom65 = sext i32 %list to i64
  %arrayidx66 = getelementptr inbounds %struct.pic_motion_params, ptr %15, i64 %idxprom62, i32 2, i64 %idxprom65
  %17 = load i8, ptr %arrayidx66, align 1
  %conv67 = sext i8 %17 to i32
  %mul68 = zext i1 %tobool41.not to i32
  %spec.select883 = shl nsw i32 %conv67, %mul68
  br label %cond.end72

cond.end72:                                       ; preds = %cond.true34, %cond.end29
  %cond73 = phi i32 [ -1, %cond.end29 ], [ %spec.select883, %cond.true34 ]
  %arrayidx74 = getelementptr inbounds i8, ptr %block, i64 32
  %18 = load i32, ptr %arrayidx74, align 4
  %tobool76.not = icmp eq i32 %18, 0
  br i1 %tobool76.not, label %if.end, label %cond.true77

cond.true77:                                      ; preds = %cond.end72
  %mb_data78 = getelementptr inbounds i8, ptr %0, i64 848888
  %19 = load ptr, ptr %mb_data78, align 8
  %mb_addr80 = getelementptr inbounds i8, ptr %block, i64 36
  %20 = load i32, ptr %mb_addr80, align 4
  %idxprom81 = sext i32 %20 to i64
  %mb_field83 = getelementptr inbounds %struct.macroblock, ptr %19, i64 %idxprom81, i32 45
  %21 = load i32, ptr %mb_field83, align 8
  %tobool84.not = icmp eq i32 %21, 0
  %pos_y100 = getelementptr inbounds i8, ptr %block, i64 46
  %22 = load i16, ptr %pos_y100, align 2
  %idxprom101 = sext i16 %22 to i64
  %arrayidx102 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom101
  %23 = load ptr, ptr %arrayidx102, align 8
  %pos_x104 = getelementptr inbounds i8, ptr %block, i64 44
  %24 = load i16, ptr %pos_x104, align 4
  %idxprom105 = sext i16 %24 to i64
  %idxprom108 = sext i32 %list to i64
  %arrayidx109 = getelementptr inbounds %struct.pic_motion_params, ptr %23, i64 %idxprom105, i32 2, i64 %idxprom108
  %25 = load i8, ptr %arrayidx109, align 1
  %conv110 = sext i8 %25 to i32
  %mul111 = zext i1 %tobool84.not to i32
  %spec.select884 = shl nsw i32 %conv110, %mul111
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool119.not, label %cond.end157, label %cond.true120

cond.true120:                                     ; preds = %if.else
  %mb_data121 = getelementptr inbounds i8, ptr %0, i64 848888
  %26 = load ptr, ptr %mb_data121, align 8
  %mb_addr123 = getelementptr inbounds i8, ptr %block, i64 4
  %27 = load i32, ptr %mb_addr123, align 4
  %idxprom124 = sext i32 %27 to i64
  %mb_field126 = getelementptr inbounds %struct.macroblock, ptr %26, i64 %idxprom124, i32 45
  %28 = load i32, ptr %mb_field126, align 8
  %tobool127.not = icmp eq i32 %28, 0
  %pos_y143 = getelementptr inbounds i8, ptr %block, i64 14
  %29 = load i16, ptr %pos_y143, align 2
  %idxprom144 = sext i16 %29 to i64
  %arrayidx145 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom144
  %30 = load ptr, ptr %arrayidx145, align 8
  %pos_x147 = getelementptr inbounds i8, ptr %block, i64 12
  %31 = load i16, ptr %pos_x147, align 4
  %idxprom148 = sext i16 %31 to i64
  %idxprom151 = sext i32 %list to i64
  %arrayidx152 = getelementptr inbounds %struct.pic_motion_params, ptr %30, i64 %idxprom148, i32 2, i64 %idxprom151
  %32 = load i8, ptr %arrayidx152, align 1
  br i1 %tobool127.not, label %cond.false141, label %cond.true128

cond.true128:                                     ; preds = %cond.true120
  %33 = ashr i8 %32, 1
  %shr = sext i8 %33 to i32
  br label %cond.end157

cond.false141:                                    ; preds = %cond.true120
  %conv153 = sext i8 %32 to i32
  br label %cond.end157

cond.end157:                                      ; preds = %if.else, %cond.true128, %cond.false141
  %cond158 = phi i32 [ %shr, %cond.true128 ], [ %conv153, %cond.false141 ], [ -1, %if.else ]
  %arrayidx159 = getelementptr inbounds i8, ptr %block, i64 16
  %34 = load i32, ptr %arrayidx159, align 4
  %tobool161.not = icmp eq i32 %34, 0
  br i1 %tobool161.not, label %cond.end200, label %cond.true162

cond.true162:                                     ; preds = %cond.end157
  %mb_data163 = getelementptr inbounds i8, ptr %0, i64 848888
  %35 = load ptr, ptr %mb_data163, align 8
  %mb_addr165 = getelementptr inbounds i8, ptr %block, i64 20
  %36 = load i32, ptr %mb_addr165, align 4
  %idxprom166 = sext i32 %36 to i64
  %mb_field168 = getelementptr inbounds %struct.macroblock, ptr %35, i64 %idxprom166, i32 45
  %37 = load i32, ptr %mb_field168, align 8
  %tobool169.not = icmp eq i32 %37, 0
  %pos_y186 = getelementptr inbounds i8, ptr %block, i64 30
  %38 = load i16, ptr %pos_y186, align 2
  %idxprom187 = sext i16 %38 to i64
  %arrayidx188 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom187
  %39 = load ptr, ptr %arrayidx188, align 8
  %pos_x190 = getelementptr inbounds i8, ptr %block, i64 28
  %40 = load i16, ptr %pos_x190, align 4
  %idxprom191 = sext i16 %40 to i64
  %idxprom194 = sext i32 %list to i64
  %arrayidx195 = getelementptr inbounds %struct.pic_motion_params, ptr %39, i64 %idxprom191, i32 2, i64 %idxprom194
  %41 = load i8, ptr %arrayidx195, align 1
  br i1 %tobool169.not, label %cond.false184, label %cond.true170

cond.true170:                                     ; preds = %cond.true162
  %42 = ashr i8 %41, 1
  %shr183 = sext i8 %42 to i32
  br label %cond.end200

cond.false184:                                    ; preds = %cond.true162
  %conv196 = sext i8 %41 to i32
  br label %cond.end200

cond.end200:                                      ; preds = %cond.end157, %cond.true170, %cond.false184
  %cond201 = phi i32 [ %shr183, %cond.true170 ], [ %conv196, %cond.false184 ], [ -1, %cond.end157 ]
  %arrayidx202 = getelementptr inbounds i8, ptr %block, i64 32
  %43 = load i32, ptr %arrayidx202, align 4
  %tobool204.not = icmp eq i32 %43, 0
  br i1 %tobool204.not, label %if.end, label %cond.true205

cond.true205:                                     ; preds = %cond.end200
  %mb_data206 = getelementptr inbounds i8, ptr %0, i64 848888
  %44 = load ptr, ptr %mb_data206, align 8
  %mb_addr208 = getelementptr inbounds i8, ptr %block, i64 36
  %45 = load i32, ptr %mb_addr208, align 4
  %idxprom209 = sext i32 %45 to i64
  %mb_field211 = getelementptr inbounds %struct.macroblock, ptr %44, i64 %idxprom209, i32 45
  %46 = load i32, ptr %mb_field211, align 8
  %tobool212.not = icmp eq i32 %46, 0
  %pos_y229 = getelementptr inbounds i8, ptr %block, i64 46
  %47 = load i16, ptr %pos_y229, align 2
  %idxprom230 = sext i16 %47 to i64
  %arrayidx231 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom230
  %48 = load ptr, ptr %arrayidx231, align 8
  %pos_x233 = getelementptr inbounds i8, ptr %block, i64 44
  %49 = load i16, ptr %pos_x233, align 4
  %idxprom234 = sext i16 %49 to i64
  %idxprom237 = sext i32 %list to i64
  %arrayidx238 = getelementptr inbounds %struct.pic_motion_params, ptr %48, i64 %idxprom234, i32 2, i64 %idxprom237
  %50 = load i8, ptr %arrayidx238, align 1
  br i1 %tobool212.not, label %cond.false227, label %cond.true213

cond.true213:                                     ; preds = %cond.true205
  %51 = ashr i8 %50, 1
  %shr226 = sext i8 %51 to i32
  br label %if.end

cond.false227:                                    ; preds = %cond.true205
  %conv239 = sext i8 %50 to i32
  br label %if.end

if.end:                                           ; preds = %cond.true77, %cond.false227, %cond.true213, %cond.end200, %cond.end72
  %tobool374.not = phi i1 [ true, %cond.end72 ], [ true, %cond.end200 ], [ false, %cond.true213 ], [ false, %cond.false227 ], [ false, %cond.true77 ]
  %52 = phi i32 [ %10, %cond.end72 ], [ %34, %cond.end200 ], [ %34, %cond.true213 ], [ %34, %cond.false227 ], [ %10, %cond.true77 ]
  %rFrameL.0 = phi i32 [ %cond30, %cond.end72 ], [ %cond158, %cond.end200 ], [ %cond158, %cond.true213 ], [ %cond158, %cond.false227 ], [ %cond30, %cond.true77 ]
  %rFrameU.0 = phi i32 [ %cond73, %cond.end72 ], [ %cond201, %cond.end200 ], [ %cond201, %cond.true213 ], [ %cond201, %cond.false227 ], [ %cond73, %cond.true77 ]
  %rFrameUR.0 = phi i32 [ -1, %cond.end72 ], [ -1, %cond.end200 ], [ %shr226, %cond.true213 ], [ %conv239, %cond.false227 ], [ %spec.select884, %cond.true77 ]
  %conv245 = sext i16 %ref_frame to i32
  %cmp = icmp eq i32 %rFrameL.0, %conv245
  %cmp.not = xor i1 %cmp, true
  %cmp248.not = icmp eq i32 %rFrameU.0, %conv245
  %or.cond869 = select i1 %cmp.not, i1 true, i1 %cmp248.not
  %cmp252.not = icmp eq i32 %rFrameUR.0, %conv245
  %or.cond870 = select i1 %or.cond869, i1 true, i1 %cmp252.not
  br i1 %or.cond870, label %if.else255, label %if.end283

if.else255:                                       ; preds = %if.end
  %cmp248.not.not = xor i1 %cmp248.not, true
  %or.cond871.not = select i1 %cmp, i1 true, i1 %cmp248.not.not
  %or.cond872 = select i1 %or.cond871.not, i1 true, i1 %cmp252.not
  %or.cond872.not = xor i1 %or.cond872, true
  %brmerge = or i1 %cmp, %or.cond872.not
  %.mux = select i1 %or.cond872, i32 0, i32 2
  br i1 %brmerge, label %if.end283, label %land.lhs.true272

land.lhs.true272:                                 ; preds = %if.else255
  %cmp274.not = icmp ne i32 %rFrameU.0, %conv245
  %or.cond873 = select i1 %cmp274.not, i1 %cmp252.not, i1 false
  %spec.select877 = select i1 %or.cond873, i32 3, i32 0
  br label %if.end283

if.end283:                                        ; preds = %land.lhs.true272, %if.else255, %if.end
  %mvPredType.0 = phi i32 [ 1, %if.end ], [ %.mux, %if.else255 ], [ %spec.select877, %land.lhs.true272 ]
  %cmp284 = icmp eq i32 %blockshape_x, 8
  %cmp287 = icmp eq i32 %blockshape_y, 16
  %or.cond = and i1 %cmp284, %cmp287
  br i1 %or.cond, label %if.then289, label %if.else305

if.then289:                                       ; preds = %if.end283
  %cmp290 = icmp eq i32 %mb_x, 0
  br i1 %cmp290, label %if.then292, label %if.else298

if.then292:                                       ; preds = %if.then289
  %spec.select = select i1 %cmp, i32 1, i32 %mvPredType.0
  br label %if.then333

if.else298:                                       ; preds = %if.then289
  %spec.select874 = select i1 %cmp252.not, i32 3, i32 %mvPredType.0
  br label %if.then333

if.else305:                                       ; preds = %if.end283
  %cmp306 = icmp eq i32 %blockshape_x, 16
  %cmp309 = icmp eq i32 %blockshape_y, 8
  %or.cond688 = and i1 %cmp306, %cmp309
  br i1 %or.cond688, label %if.then311, label %if.then333

if.then311:                                       ; preds = %if.else305
  %cmp312 = icmp eq i32 %mb_y, 0
  br i1 %cmp312, label %if.then314, label %if.else320

if.then314:                                       ; preds = %if.then311
  %spec.select875 = select i1 %cmp248.not, i32 2, i32 %mvPredType.0
  br label %if.then333

if.else320:                                       ; preds = %if.then311
  %spec.select876 = select i1 %cmp, i32 1, i32 %mvPredType.0
  br label %if.then333

if.then333:                                       ; preds = %if.else305, %if.then292, %if.else298, %if.then314, %if.else320
  %mvPredType.1 = phi i32 [ %mvPredType.0, %if.else305 ], [ %spec.select, %if.then292 ], [ %spec.select874, %if.else298 ], [ %spec.select875, %if.then314 ], [ %spec.select876, %if.else320 ]
  %mb_data400 = getelementptr inbounds i8, ptr %0, i64 848888
  %mb_addr402 = getelementptr inbounds i8, ptr %block, i64 4
  %pos_y409 = getelementptr inbounds i8, ptr %block, i64 14
  %pos_x413 = getelementptr inbounds i8, ptr %block, i64 12
  %idxprom417 = sext i32 %list to i64
  %arrayidx439 = getelementptr inbounds i8, ptr %block, i64 16
  %mb_addr445 = getelementptr inbounds i8, ptr %block, i64 20
  %pos_y452 = getelementptr inbounds i8, ptr %block, i64 30
  %pos_x456 = getelementptr inbounds i8, ptr %block, i64 28
  %arrayidx484 = getelementptr inbounds i8, ptr %block, i64 32
  %mb_addr490 = getelementptr inbounds i8, ptr %block, i64 36
  %pos_y497 = getelementptr inbounds i8, ptr %block, i64 46
  %pos_x501 = getelementptr inbounds i8, ptr %block, i64 44
  %tobool336.not = icmp eq i32 %2, 0
  br i1 %tobool336.not, label %cond.end350, label %cond.true337

cond.true337:                                     ; preds = %if.then333
  %53 = load i16, ptr %pos_y409, align 2
  %idxprom340 = sext i16 %53 to i64
  %arrayidx341 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom340
  %54 = load ptr, ptr %arrayidx341, align 8
  %55 = load i16, ptr %pos_x413, align 4
  %idxprom344 = sext i16 %55 to i64
  %arrayidx347 = getelementptr inbounds %struct.pic_motion_params, ptr %54, i64 %idxprom344, i32 1, i64 %idxprom417
  %56 = load i16, ptr %arrayidx347, align 4
  %conv348 = sext i16 %56 to i32
  br label %cond.end350

cond.end350:                                      ; preds = %if.then333, %cond.true337
  %cond351 = phi i32 [ %conv348, %cond.true337 ], [ 0, %if.then333 ]
  %tobool354.not = icmp eq i32 %52, 0
  br i1 %tobool354.not, label %cond.end370, label %cond.true355

cond.true355:                                     ; preds = %cond.end350
  %57 = load i16, ptr %pos_y452, align 2
  %idxprom358 = sext i16 %57 to i64
  %arrayidx359 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom358
  %58 = load ptr, ptr %arrayidx359, align 8
  %59 = load i16, ptr %pos_x456, align 4
  %idxprom362 = sext i16 %59 to i64
  %arrayidx366 = getelementptr inbounds %struct.pic_motion_params, ptr %58, i64 %idxprom362, i32 1, i64 %idxprom417
  %60 = load i16, ptr %arrayidx366, align 4
  %conv368 = sext i16 %60 to i32
  br label %cond.end370

cond.end370:                                      ; preds = %cond.end350, %cond.true355
  %cond371 = phi i32 [ %conv368, %cond.true355 ], [ 0, %cond.end350 ]
  br i1 %tobool374.not, label %if.end666, label %cond.true375

cond.true375:                                     ; preds = %cond.end370
  %61 = load i16, ptr %pos_y497, align 2
  %idxprom378 = sext i16 %61 to i64
  %arrayidx379 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom378
  %62 = load ptr, ptr %arrayidx379, align 8
  %63 = load i16, ptr %pos_x501, align 4
  %idxprom382 = sext i16 %63 to i64
  %arrayidx386 = getelementptr inbounds %struct.pic_motion_params, ptr %62, i64 %idxprom382, i32 1, i64 %idxprom417
  %64 = load i16, ptr %arrayidx386, align 4
  %conv388 = sext i16 %64 to i32
  br label %if.end666

if.end666:                                        ; preds = %cond.true375, %cond.end370
  %mv_c.0 = phi i32 [ 0, %cond.end370 ], [ %conv388, %cond.true375 ]
  switch i32 %mvPredType.1, label %default.unreachable879 [
    i32 0, label %sw.bb
    i32 1, label %if.else392.1
    i32 2, label %sw.bb677
    i32 3, label %sw.bb678
  ]

sw.bb:                                            ; preds = %if.end666
  %tobool669.not = icmp eq i32 %52, 0
  %brmerge880.not = and i1 %tobool669.not, %tobool374.not
  br i1 %brmerge880.not, label %if.else392.1, label %if.else674

if.else674:                                       ; preds = %sw.bb
  %cmp.i = icmp sgt i32 %cond351, %cond371
  br i1 %cmp.i, label %if.then.i, label %if.else6.i

if.then.i:                                        ; preds = %if.else674
  %cmp1.i = icmp sgt i32 %cond371, %mv_c.0
  br i1 %cmp1.i, label %if.else392.1, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  %c.a.i = tail call i32 @llvm.smin.i32(i32 %cond351, i32 %mv_c.0)
  br label %if.else392.1

if.else6.i:                                       ; preds = %if.else674
  %cmp7.i = icmp sgt i32 %cond351, %mv_c.0
  br i1 %cmp7.i, label %if.else392.1, label %if.else9.i

if.else9.i:                                       ; preds = %if.else6.i
  %c.b.i = tail call i32 @llvm.smin.i32(i32 %cond371, i32 %mv_c.0)
  br label %if.else392.1

sw.bb677:                                         ; preds = %if.end666
  br label %if.else392.1

sw.bb678:                                         ; preds = %if.end666
  br label %if.else392.1

default.unreachable879:                           ; preds = %if.end666.1, %if.end666
  unreachable

if.else392.1:                                     ; preds = %sw.bb, %sw.bb677, %sw.bb678, %if.end666, %if.then.i, %if.else.i, %if.else6.i, %if.else9.i
  %pred_vec.1 = phi i32 [ %mv_c.0, %sw.bb678 ], [ %cond371, %sw.bb677 ], [ %cond351, %if.end666 ], [ %cond371, %if.then.i ], [ %c.a.i, %if.else.i ], [ %cond351, %if.else6.i ], [ %c.b.i, %if.else9.i ], [ %cond351, %sw.bb ]
  %conv682 = trunc nsw i32 %pred_vec.1 to i16
  store i16 %conv682, ptr %pmv, align 2
  %65 = load i32, ptr %mb_field, align 8
  %tobool394.not.1 = icmp eq i32 %65, 0
  %66 = load i32, ptr %block, align 4
  %tobool532.not.1 = icmp eq i32 %66, 0
  br i1 %tobool394.not.1, label %if.else529.1, label %if.then395.1

if.then395.1:                                     ; preds = %if.else392.1
  br i1 %tobool532.not.1, label %cond.end437.1, label %cond.true399.1

cond.true399.1:                                   ; preds = %if.then395.1
  %67 = load ptr, ptr %mb_data400, align 8
  %68 = load i32, ptr %mb_addr402, align 4
  %idxprom403.1 = sext i32 %68 to i64
  %mb_field405.1 = getelementptr inbounds %struct.macroblock, ptr %67, i64 %idxprom403.1, i32 45
  %69 = load i32, ptr %mb_field405.1, align 8
  %tobool406.not.1 = icmp eq i32 %69, 0
  %70 = load i16, ptr %pos_y409, align 2
  %idxprom423.1 = sext i16 %70 to i64
  %arrayidx424.1 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom423.1
  %71 = load ptr, ptr %arrayidx424.1, align 8
  %72 = load i16, ptr %pos_x413, align 4
  %idxprom427.1 = sext i16 %72 to i64
  %mv_y432.1 = getelementptr inbounds %struct.pic_motion_params, ptr %71, i64 %idxprom427.1, i32 1, i64 %idxprom417, i32 1
  %73 = load i16, ptr %mv_y432.1, align 2
  br i1 %tobool406.not.1, label %cond.false420.1, label %cond.true407.1

cond.true407.1:                                   ; preds = %cond.true399.1
  %conv419.1 = sext i16 %73 to i32
  br label %cond.end437.1

cond.false420.1:                                  ; preds = %cond.true399.1
  %74 = sdiv i16 %73, 2
  %div.1 = sext i16 %74 to i32
  br label %cond.end437.1

cond.end437.1:                                    ; preds = %cond.false420.1, %cond.true407.1, %if.then395.1
  %cond438.1 = phi i32 [ %conv419.1, %cond.true407.1 ], [ %div.1, %cond.false420.1 ], [ 0, %if.then395.1 ]
  %75 = load i32, ptr %arrayidx439, align 4
  %tobool441.not.1 = icmp eq i32 %75, 0
  br i1 %tobool441.not.1, label %cond.end482.1, label %cond.true442.1

cond.true442.1:                                   ; preds = %cond.end437.1
  %76 = load ptr, ptr %mb_data400, align 8
  %77 = load i32, ptr %mb_addr445, align 4
  %idxprom446.1 = sext i32 %77 to i64
  %mb_field448.1 = getelementptr inbounds %struct.macroblock, ptr %76, i64 %idxprom446.1, i32 45
  %78 = load i32, ptr %mb_field448.1, align 8
  %tobool449.not.1 = icmp eq i32 %78, 0
  %79 = load i16, ptr %pos_y452, align 2
  %idxprom467.1 = sext i16 %79 to i64
  %arrayidx468.1 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom467.1
  %80 = load ptr, ptr %arrayidx468.1, align 8
  %81 = load i16, ptr %pos_x456, align 4
  %idxprom471.1 = sext i16 %81 to i64
  %mv_y476.1 = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %idxprom471.1, i32 1, i64 %idxprom417, i32 1
  %82 = load i16, ptr %mv_y476.1, align 2
  br i1 %tobool449.not.1, label %cond.false464.1, label %cond.true450.1

cond.true450.1:                                   ; preds = %cond.true442.1
  %conv463.1 = sext i16 %82 to i32
  br label %cond.end482.1

cond.false464.1:                                  ; preds = %cond.true442.1
  %83 = sdiv i16 %82, 2
  %div478.1 = sext i16 %83 to i32
  br label %cond.end482.1

cond.end482.1:                                    ; preds = %cond.false464.1, %cond.true450.1, %cond.end437.1
  %cond483.1 = phi i32 [ %conv463.1, %cond.true450.1 ], [ %div478.1, %cond.false464.1 ], [ 0, %cond.end437.1 ]
  %84 = load i32, ptr %arrayidx484, align 4
  %tobool486.not.1 = icmp eq i32 %84, 0
  br i1 %tobool486.not.1, label %if.end666.1, label %cond.true487.1

cond.true487.1:                                   ; preds = %cond.end482.1
  %85 = load ptr, ptr %mb_data400, align 8
  %86 = load i32, ptr %mb_addr490, align 4
  %idxprom491.1 = sext i32 %86 to i64
  %mb_field493.1 = getelementptr inbounds %struct.macroblock, ptr %85, i64 %idxprom491.1, i32 45
  %87 = load i32, ptr %mb_field493.1, align 8
  %tobool494.not.1 = icmp eq i32 %87, 0
  %88 = load i16, ptr %pos_y497, align 2
  %idxprom512.1 = sext i16 %88 to i64
  %arrayidx513.1 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom512.1
  %89 = load ptr, ptr %arrayidx513.1, align 8
  %90 = load i16, ptr %pos_x501, align 4
  %idxprom516.1 = sext i16 %90 to i64
  %mv_y521.1 = getelementptr inbounds %struct.pic_motion_params, ptr %89, i64 %idxprom516.1, i32 1, i64 %idxprom417, i32 1
  %91 = load i16, ptr %mv_y521.1, align 2
  br i1 %tobool494.not.1, label %cond.false509.1, label %cond.true495.1

cond.true495.1:                                   ; preds = %cond.true487.1
  %conv508.1 = sext i16 %91 to i32
  br label %if.end666.1

cond.false509.1:                                  ; preds = %cond.true487.1
  %92 = sdiv i16 %91, 2
  %div523.1 = sext i16 %92 to i32
  br label %if.end666.1

if.else529.1:                                     ; preds = %if.else392.1
  br i1 %tobool532.not.1, label %cond.end573.1, label %cond.true533.1

cond.true533.1:                                   ; preds = %if.else529.1
  %93 = load ptr, ptr %mb_data400, align 8
  %94 = load i32, ptr %mb_addr402, align 4
  %idxprom537.1 = sext i32 %94 to i64
  %mb_field539.1 = getelementptr inbounds %struct.macroblock, ptr %93, i64 %idxprom537.1, i32 45
  %95 = load i32, ptr %mb_field539.1, align 8
  %tobool540.not.1 = icmp ne i32 %95, 0
  %96 = load i16, ptr %pos_y409, align 2
  %idxprom559.1 = sext i16 %96 to i64
  %arrayidx560.1 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom559.1
  %97 = load ptr, ptr %arrayidx560.1, align 8
  %98 = load i16, ptr %pos_x413, align 4
  %idxprom563.1 = sext i16 %98 to i64
  %mv_y568.1 = getelementptr inbounds %struct.pic_motion_params, ptr %97, i64 %idxprom563.1, i32 1, i64 %idxprom417, i32 1
  %99 = load i16, ptr %mv_y568.1, align 2
  %conv569.1 = sext i16 %99 to i32
  %mul555.1 = zext i1 %tobool540.not.1 to i32
  %spec.select885 = shl nsw i32 %conv569.1, %mul555.1
  br label %cond.end573.1

cond.end573.1:                                    ; preds = %cond.true533.1, %if.else529.1
  %cond574.1 = phi i32 [ 0, %if.else529.1 ], [ %spec.select885, %cond.true533.1 ]
  %100 = load i32, ptr %arrayidx439, align 4
  %tobool577.not.1 = icmp eq i32 %100, 0
  br i1 %tobool577.not.1, label %cond.end618.1, label %cond.true578.1

cond.true578.1:                                   ; preds = %cond.end573.1
  %101 = load ptr, ptr %mb_data400, align 8
  %102 = load i32, ptr %mb_addr445, align 4
  %idxprom582.1 = sext i32 %102 to i64
  %mb_field584.1 = getelementptr inbounds %struct.macroblock, ptr %101, i64 %idxprom582.1, i32 45
  %103 = load i32, ptr %mb_field584.1, align 8
  %tobool585.not.1 = icmp ne i32 %103, 0
  %104 = load i16, ptr %pos_y452, align 2
  %idxprom604.1 = sext i16 %104 to i64
  %arrayidx605.1 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom604.1
  %105 = load ptr, ptr %arrayidx605.1, align 8
  %106 = load i16, ptr %pos_x456, align 4
  %idxprom608.1 = sext i16 %106 to i64
  %mv_y613.1 = getelementptr inbounds %struct.pic_motion_params, ptr %105, i64 %idxprom608.1, i32 1, i64 %idxprom417, i32 1
  %107 = load i16, ptr %mv_y613.1, align 2
  %conv614.1 = sext i16 %107 to i32
  %mul600.1 = zext i1 %tobool585.not.1 to i32
  %spec.select886 = shl nsw i32 %conv614.1, %mul600.1
  br label %cond.end618.1

cond.end618.1:                                    ; preds = %cond.true578.1, %cond.end573.1
  %cond619.1 = phi i32 [ 0, %cond.end573.1 ], [ %spec.select886, %cond.true578.1 ]
  %108 = load i32, ptr %arrayidx484, align 4
  %tobool622.not.1 = icmp eq i32 %108, 0
  br i1 %tobool622.not.1, label %if.end666.1, label %cond.true623.1

cond.true623.1:                                   ; preds = %cond.end618.1
  %109 = load ptr, ptr %mb_data400, align 8
  %110 = load i32, ptr %mb_addr490, align 4
  %idxprom627.1 = sext i32 %110 to i64
  %mb_field629.1 = getelementptr inbounds %struct.macroblock, ptr %109, i64 %idxprom627.1, i32 45
  %111 = load i32, ptr %mb_field629.1, align 8
  %tobool630.not.1 = icmp ne i32 %111, 0
  %112 = load i16, ptr %pos_y497, align 2
  %idxprom649.1 = sext i16 %112 to i64
  %arrayidx650.1 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom649.1
  %113 = load ptr, ptr %arrayidx650.1, align 8
  %114 = load i16, ptr %pos_x501, align 4
  %idxprom653.1 = sext i16 %114 to i64
  %mv_y658.1 = getelementptr inbounds %struct.pic_motion_params, ptr %113, i64 %idxprom653.1, i32 1, i64 %idxprom417, i32 1
  %115 = load i16, ptr %mv_y658.1, align 2
  %conv659.1 = sext i16 %115 to i32
  %mul645.1 = zext i1 %tobool630.not.1 to i32
  %spec.select887 = shl nsw i32 %conv659.1, %mul645.1
  br label %if.end666.1

if.end666.1:                                      ; preds = %cond.true623.1, %cond.end618.1, %cond.false509.1, %cond.true495.1, %cond.end482.1
  %tobool672.not.1.not = phi i1 [ false, %cond.end482.1 ], [ true, %cond.true495.1 ], [ true, %cond.false509.1 ], [ false, %cond.end618.1 ], [ true, %cond.true623.1 ]
  %116 = phi i32 [ %75, %cond.end482.1 ], [ %75, %cond.true495.1 ], [ %75, %cond.false509.1 ], [ %100, %cond.end618.1 ], [ %100, %cond.true623.1 ]
  %mv_b.0.1 = phi i32 [ %cond483.1, %cond.end482.1 ], [ %cond483.1, %cond.true495.1 ], [ %cond483.1, %cond.false509.1 ], [ %cond619.1, %cond.end618.1 ], [ %cond619.1, %cond.true623.1 ]
  %mv_c.0.1 = phi i32 [ 0, %cond.end482.1 ], [ %conv508.1, %cond.true495.1 ], [ %div523.1, %cond.false509.1 ], [ 0, %cond.end618.1 ], [ %spec.select887, %cond.true623.1 ]
  %mv_a.0.1 = phi i32 [ %cond438.1, %cond.end482.1 ], [ %cond438.1, %cond.true495.1 ], [ %cond438.1, %cond.false509.1 ], [ %cond574.1, %cond.end618.1 ], [ %cond574.1, %cond.true623.1 ]
  switch i32 %mvPredType.1, label %default.unreachable879 [
    i32 0, label %sw.bb.1
    i32 1, label %for.inc.1
    i32 2, label %sw.bb677.1
    i32 3, label %sw.bb678.1
  ]

sw.bb678.1:                                       ; preds = %if.end666.1
  br label %for.inc.1

sw.bb677.1:                                       ; preds = %if.end666.1
  br label %for.inc.1

sw.bb.1:                                          ; preds = %if.end666.1
  %tobool669.not.1 = icmp ne i32 %116, 0
  %brmerge881 = or i1 %tobool669.not.1, %tobool672.not.1.not
  br i1 %brmerge881, label %if.else674.1, label %for.inc.1

if.else674.1:                                     ; preds = %sw.bb.1
  %cmp.i.1 = icmp sgt i32 %mv_a.0.1, %mv_b.0.1
  br i1 %cmp.i.1, label %if.then.i.1, label %if.else6.i.1

if.else6.i.1:                                     ; preds = %if.else674.1
  %cmp7.i.1 = icmp sgt i32 %mv_a.0.1, %mv_c.0.1
  br i1 %cmp7.i.1, label %for.inc.1, label %if.else9.i.1

if.else9.i.1:                                     ; preds = %if.else6.i.1
  %c.b.i.1 = tail call i32 @llvm.smin.i32(i32 %mv_b.0.1, i32 %mv_c.0.1)
  br label %for.inc.1

if.then.i.1:                                      ; preds = %if.else674.1
  %cmp1.i.1 = icmp sgt i32 %mv_b.0.1, %mv_c.0.1
  br i1 %cmp1.i.1, label %for.inc.1, label %if.else.i.1

if.else.i.1:                                      ; preds = %if.then.i.1
  %c.a.i.1 = tail call i32 @llvm.smin.i32(i32 %mv_a.0.1, i32 %mv_c.0.1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb.1, %if.else.i.1, %if.then.i.1, %if.else9.i.1, %if.else6.i.1, %sw.bb677.1, %sw.bb678.1, %if.end666.1
  %pred_vec.1.1 = phi i32 [ %mv_c.0.1, %sw.bb678.1 ], [ %mv_b.0.1, %sw.bb677.1 ], [ %mv_a.0.1, %if.end666.1 ], [ %mv_b.0.1, %if.then.i.1 ], [ %c.a.i.1, %if.else.i.1 ], [ %mv_a.0.1, %if.else6.i.1 ], [ %c.b.i.1, %if.else9.i.1 ], [ %mv_a.0.1, %sw.bb.1 ]
  %mv_y686 = getelementptr inbounds i8, ptr %pmv, i64 2
  %conv685.1 = trunc i32 %pred_vec.1.1 to i16
  store i16 %conv685.1, ptr %mv_y686, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetMotionVectorPredictorNormal(ptr nocapture readnone %currMB, ptr nocapture noundef readonly %block, ptr nocapture noundef writeonly %pmv, i16 noundef signext %ref_frame, ptr nocapture noundef readonly %mv_info, i32 noundef %list, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef %blockshape_x, i32 noundef %blockshape_y) #1 {
entry:
  %0 = load i32, ptr %block, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %pos_y = getelementptr inbounds i8, ptr %block, i64 14
  %1 = load i16, ptr %pos_y, align 2
  %idxprom = sext i16 %1 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom
  %2 = load ptr, ptr %arrayidx2, align 8
  %pos_x = getelementptr inbounds i8, ptr %block, i64 12
  %3 = load i16, ptr %pos_x, align 4
  %idxprom4 = sext i16 %3 to i64
  %idxprom6 = sext i32 %list to i64
  %arrayidx7 = getelementptr inbounds %struct.pic_motion_params, ptr %2, i64 %idxprom4, i32 2, i64 %idxprom6
  %4 = load i8, ptr %arrayidx7, align 1
  %conv = sext i8 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %entry ]
  %arrayidx8 = getelementptr inbounds i8, ptr %block, i64 16
  %5 = load i32, ptr %arrayidx8, align 4
  %tobool10.not.not = icmp eq i32 %5, 0
  br i1 %tobool10.not.not, label %cond.end25, label %cond.true11

cond.true11:                                      ; preds = %cond.end
  %pos_y13 = getelementptr inbounds i8, ptr %block, i64 30
  %6 = load i16, ptr %pos_y13, align 2
  %idxprom14 = sext i16 %6 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom14
  %7 = load ptr, ptr %arrayidx15, align 8
  %pos_x17 = getelementptr inbounds i8, ptr %block, i64 28
  %8 = load i16, ptr %pos_x17, align 4
  %idxprom18 = sext i16 %8 to i64
  %idxprom21 = sext i32 %list to i64
  %arrayidx22 = getelementptr inbounds %struct.pic_motion_params, ptr %7, i64 %idxprom18, i32 2, i64 %idxprom21
  %9 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %9 to i32
  br label %cond.end25

cond.end25:                                       ; preds = %cond.end, %cond.true11
  %cond26 = phi i32 [ %conv23, %cond.true11 ], [ -1, %cond.end ]
  %arrayidx27 = getelementptr inbounds i8, ptr %block, i64 32
  %10 = load i32, ptr %arrayidx27, align 4
  %tobool29.not.not = icmp eq i32 %10, 0
  br i1 %tobool29.not.not, label %cond.end44, label %cond.true30

cond.true30:                                      ; preds = %cond.end25
  %pos_y32 = getelementptr inbounds i8, ptr %block, i64 46
  %11 = load i16, ptr %pos_y32, align 2
  %idxprom33 = sext i16 %11 to i64
  %arrayidx34 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom33
  %12 = load ptr, ptr %arrayidx34, align 8
  %pos_x36 = getelementptr inbounds i8, ptr %block, i64 44
  %13 = load i16, ptr %pos_x36, align 4
  %idxprom37 = sext i16 %13 to i64
  %idxprom40 = sext i32 %list to i64
  %arrayidx41 = getelementptr inbounds %struct.pic_motion_params, ptr %12, i64 %idxprom37, i32 2, i64 %idxprom40
  %14 = load i8, ptr %arrayidx41, align 1
  %conv42 = sext i8 %14 to i32
  br label %cond.end44

cond.end44:                                       ; preds = %cond.end25, %cond.true30
  %cond45 = phi i32 [ %conv42, %cond.true30 ], [ -1, %cond.end25 ]
  %conv46 = sext i16 %ref_frame to i32
  %cmp = icmp eq i32 %cond, %conv46
  %cmp.not = xor i1 %cmp, true
  %cmp49.not = icmp eq i32 %cond26, %conv46
  %or.cond361 = select i1 %cmp.not, i1 true, i1 %cmp49.not
  %cmp53.not = icmp eq i32 %cond45, %conv46
  %or.cond362 = select i1 %or.cond361, i1 true, i1 %cmp53.not
  br i1 %or.cond362, label %if.else, label %if.end81

if.else:                                          ; preds = %cond.end44
  %cmp49.not.not = xor i1 %cmp49.not, true
  %or.cond363.not = select i1 %cmp, i1 true, i1 %cmp49.not.not
  %or.cond364 = select i1 %or.cond363.not, i1 true, i1 %cmp53.not
  %or.cond364.not = xor i1 %or.cond364, true
  %brmerge = or i1 %cmp, %or.cond364.not
  %.mux = select i1 %or.cond364, i32 0, i32 2
  br i1 %brmerge, label %if.end81, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.else
  %cmp73.not = icmp ne i32 %cond26, %conv46
  %or.cond365 = select i1 %cmp73.not, i1 %cmp53.not, i1 false
  %spec.select369 = select i1 %or.cond365, i32 3, i32 0
  br label %if.end81

if.end81:                                         ; preds = %land.lhs.true71, %if.else, %cond.end44
  %mvPredType.0 = phi i32 [ 1, %cond.end44 ], [ %.mux, %if.else ], [ %spec.select369, %land.lhs.true71 ]
  %cmp82 = icmp eq i32 %blockshape_x, 8
  %cmp85 = icmp eq i32 %blockshape_y, 16
  %or.cond = and i1 %cmp82, %cmp85
  br i1 %or.cond, label %if.then87, label %if.else103

if.then87:                                        ; preds = %if.end81
  %cmp88 = icmp eq i32 %mb_x, 0
  br i1 %cmp88, label %if.then90, label %if.else96

if.then90:                                        ; preds = %if.then87
  br i1 %cmp, label %sw.bb221, label %if.end126

if.else96:                                        ; preds = %if.then87
  br i1 %cmp53.not, label %sw.bb257, label %if.end126

if.else103:                                       ; preds = %if.end81
  %cmp104 = icmp eq i32 %blockshape_x, 16
  %cmp107 = icmp eq i32 %blockshape_y, 8
  %or.cond275 = and i1 %cmp104, %cmp107
  br i1 %or.cond275, label %if.then109, label %if.end126

if.then109:                                       ; preds = %if.else103
  %cmp110 = icmp eq i32 %mb_y, 0
  br i1 %cmp110, label %if.then112, label %if.else118

if.then112:                                       ; preds = %if.then109
  br i1 %cmp49.not, label %sw.bb239, label %if.end126

if.else118:                                       ; preds = %if.then109
  br i1 %cmp, label %sw.bb221, label %if.end126

if.end126:                                        ; preds = %if.else118, %if.then112, %if.else96, %if.then90, %if.else103
  switch i32 %mvPredType.0, label %default.unreachable390 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb221
    i32 2, label %sw.bb239
    i32 3, label %sw.bb257
  ]

sw.bb:                                            ; preds = %if.end126
  %15 = or i32 %10, %5
  %brmerge389.not = icmp eq i32 %15, 0
  br i1 %brmerge389.not, label %if.then133, label %if.else150

if.then133:                                       ; preds = %sw.bb
  br i1 %tobool.not, label %if.else148, label %if.then137

if.then137:                                       ; preds = %if.then133
  %pos_y139 = getelementptr inbounds i8, ptr %block, i64 14
  %16 = load i16, ptr %pos_y139, align 2
  %idxprom140 = sext i16 %16 to i64
  %arrayidx141 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom140
  %17 = load ptr, ptr %arrayidx141, align 8
  %pos_x143 = getelementptr inbounds i8, ptr %block, i64 12
  %18 = load i16, ptr %pos_x143, align 4
  %idxprom144 = sext i16 %18 to i64
  %idxprom146 = sext i32 %list to i64
  %arrayidx147 = getelementptr inbounds %struct.pic_motion_params, ptr %17, i64 %idxprom144, i32 1, i64 %idxprom146
  %19 = load i32, ptr %arrayidx147, align 4
  store i32 %19, ptr %pmv, align 2
  br label %sw.epilog

if.else148:                                       ; preds = %if.then133
  store i32 0, ptr %pmv, align 2
  br label %sw.epilog

if.else150:                                       ; preds = %sw.bb
  br i1 %tobool.not, label %cond.end167, label %cond.true154

cond.true154:                                     ; preds = %if.else150
  %pos_y156 = getelementptr inbounds i8, ptr %block, i64 14
  %20 = load i16, ptr %pos_y156, align 2
  %idxprom157 = sext i16 %20 to i64
  %arrayidx158 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom157
  %21 = load ptr, ptr %arrayidx158, align 8
  %pos_x160 = getelementptr inbounds i8, ptr %block, i64 12
  %22 = load i16, ptr %pos_x160, align 4
  %idxprom161 = sext i16 %22 to i64
  %idxprom164 = sext i32 %list to i64
  %arrayidx165 = getelementptr inbounds %struct.pic_motion_params, ptr %21, i64 %idxprom161, i32 1, i64 %idxprom164
  br label %cond.end167

cond.end167:                                      ; preds = %if.else150, %cond.true154
  %cond168 = phi ptr [ %arrayidx165, %cond.true154 ], [ @zero_mv, %if.else150 ]
  br i1 %tobool10.not.not, label %cond.end185, label %cond.true172

cond.true172:                                     ; preds = %cond.end167
  %pos_y174 = getelementptr inbounds i8, ptr %block, i64 30
  %23 = load i16, ptr %pos_y174, align 2
  %idxprom175 = sext i16 %23 to i64
  %arrayidx176 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom175
  %24 = load ptr, ptr %arrayidx176, align 8
  %pos_x178 = getelementptr inbounds i8, ptr %block, i64 28
  %25 = load i16, ptr %pos_x178, align 4
  %idxprom179 = sext i16 %25 to i64
  %idxprom182 = sext i32 %list to i64
  %arrayidx183 = getelementptr inbounds %struct.pic_motion_params, ptr %24, i64 %idxprom179, i32 1, i64 %idxprom182
  br label %cond.end185

cond.end185:                                      ; preds = %cond.end167, %cond.true172
  %cond186 = phi ptr [ %arrayidx183, %cond.true172 ], [ @zero_mv, %cond.end167 ]
  br i1 %tobool29.not.not, label %cond.end203, label %cond.true190

cond.true190:                                     ; preds = %cond.end185
  %pos_y192 = getelementptr inbounds i8, ptr %block, i64 46
  %26 = load i16, ptr %pos_y192, align 2
  %idxprom193 = sext i16 %26 to i64
  %arrayidx194 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom193
  %27 = load ptr, ptr %arrayidx194, align 8
  %pos_x196 = getelementptr inbounds i8, ptr %block, i64 44
  %28 = load i16, ptr %pos_x196, align 4
  %idxprom197 = sext i16 %28 to i64
  %idxprom200 = sext i32 %list to i64
  %arrayidx201 = getelementptr inbounds %struct.pic_motion_params, ptr %27, i64 %idxprom197, i32 1, i64 %idxprom200
  br label %cond.end203

cond.end203:                                      ; preds = %cond.end185, %cond.true190
  %cond204 = phi ptr [ %arrayidx201, %cond.true190 ], [ @zero_mv, %cond.end185 ]
  %29 = load i16, ptr %cond168, align 2
  %conv205 = sext i16 %29 to i32
  %30 = load i16, ptr %cond186, align 2
  %conv207 = sext i16 %30 to i32
  %31 = load i16, ptr %cond204, align 2
  %conv209 = sext i16 %31 to i32
  %cmp.i = icmp sgt i16 %29, %30
  br i1 %cmp.i, label %if.then.i, label %if.else6.i

if.then.i:                                        ; preds = %cond.end203
  %cmp1.i = icmp sgt i16 %30, %31
  br i1 %cmp1.i, label %imedian.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  %c.a.i = tail call i32 @llvm.smin.i32(i32 %conv205, i32 %conv209)
  br label %imedian.exit

if.else6.i:                                       ; preds = %cond.end203
  %cmp7.i = icmp sgt i16 %29, %31
  br i1 %cmp7.i, label %imedian.exit, label %if.else9.i

if.else9.i:                                       ; preds = %if.else6.i
  %c.b.i = tail call i32 @llvm.smin.i32(i32 %conv207, i32 %conv209)
  br label %imedian.exit

imedian.exit:                                     ; preds = %if.then.i, %if.else.i, %if.else6.i, %if.else9.i
  %retval.0.i = phi i32 [ %conv207, %if.then.i ], [ %c.a.i, %if.else.i ], [ %conv205, %if.else6.i ], [ %c.b.i, %if.else9.i ]
  %conv210 = trunc nsw i32 %retval.0.i to i16
  store i16 %conv210, ptr %pmv, align 2
  %mv_y = getelementptr inbounds i8, ptr %cond168, i64 2
  %32 = load i16, ptr %mv_y, align 2
  %conv212 = sext i16 %32 to i32
  %mv_y213 = getelementptr inbounds i8, ptr %cond186, i64 2
  %33 = load i16, ptr %mv_y213, align 2
  %conv214 = sext i16 %33 to i32
  %mv_y215 = getelementptr inbounds i8, ptr %cond204, i64 2
  %34 = load i16, ptr %mv_y215, align 2
  %conv216 = sext i16 %34 to i32
  %cmp.i370 = icmp sgt i16 %32, %33
  br i1 %cmp.i370, label %if.then.i376, label %if.else6.i371

if.then.i376:                                     ; preds = %imedian.exit
  %cmp1.i377 = icmp sgt i16 %33, %34
  br i1 %cmp1.i377, label %imedian.exit380, label %if.else.i378

if.else.i378:                                     ; preds = %if.then.i376
  %c.a.i379 = tail call i32 @llvm.smin.i32(i32 %conv212, i32 %conv216)
  br label %imedian.exit380

if.else6.i371:                                    ; preds = %imedian.exit
  %cmp7.i372 = icmp sgt i16 %32, %34
  br i1 %cmp7.i372, label %imedian.exit380, label %if.else9.i373

if.else9.i373:                                    ; preds = %if.else6.i371
  %c.b.i374 = tail call i32 @llvm.smin.i32(i32 %conv214, i32 %conv216)
  br label %imedian.exit380

imedian.exit380:                                  ; preds = %if.then.i376, %if.else.i378, %if.else6.i371, %if.else9.i373
  %retval.0.i375 = phi i32 [ %conv214, %if.then.i376 ], [ %c.a.i379, %if.else.i378 ], [ %conv212, %if.else6.i371 ], [ %c.b.i374, %if.else9.i373 ]
  %conv218 = trunc nsw i32 %retval.0.i375 to i16
  %mv_y219 = getelementptr inbounds i8, ptr %pmv, i64 2
  store i16 %conv218, ptr %mv_y219, align 2
  br label %sw.epilog

sw.bb221:                                         ; preds = %if.else118, %if.then90, %if.end126
  br i1 %tobool.not, label %if.else237, label %if.then225

if.then225:                                       ; preds = %sw.bb221
  %pos_y227 = getelementptr inbounds i8, ptr %block, i64 14
  %35 = load i16, ptr %pos_y227, align 2
  %idxprom228 = sext i16 %35 to i64
  %arrayidx229 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom228
  %36 = load ptr, ptr %arrayidx229, align 8
  %pos_x231 = getelementptr inbounds i8, ptr %block, i64 12
  %37 = load i16, ptr %pos_x231, align 4
  %idxprom232 = sext i16 %37 to i64
  %idxprom235 = sext i32 %list to i64
  %arrayidx236 = getelementptr inbounds %struct.pic_motion_params, ptr %36, i64 %idxprom232, i32 1, i64 %idxprom235
  %38 = load i32, ptr %arrayidx236, align 4
  store i32 %38, ptr %pmv, align 2
  br label %sw.epilog

if.else237:                                       ; preds = %sw.bb221
  store i32 0, ptr %pmv, align 2
  br label %sw.epilog

sw.bb239:                                         ; preds = %if.then112, %if.end126
  br i1 %tobool10.not.not, label %if.else255, label %if.then243

if.then243:                                       ; preds = %sw.bb239
  %pos_y245 = getelementptr inbounds i8, ptr %block, i64 30
  %39 = load i16, ptr %pos_y245, align 2
  %idxprom246 = sext i16 %39 to i64
  %arrayidx247 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom246
  %40 = load ptr, ptr %arrayidx247, align 8
  %pos_x249 = getelementptr inbounds i8, ptr %block, i64 28
  %41 = load i16, ptr %pos_x249, align 4
  %idxprom250 = sext i16 %41 to i64
  %idxprom253 = sext i32 %list to i64
  %arrayidx254 = getelementptr inbounds %struct.pic_motion_params, ptr %40, i64 %idxprom250, i32 1, i64 %idxprom253
  %42 = load i32, ptr %arrayidx254, align 4
  store i32 %42, ptr %pmv, align 2
  br label %sw.epilog

if.else255:                                       ; preds = %sw.bb239
  store i32 0, ptr %pmv, align 2
  br label %sw.epilog

sw.bb257:                                         ; preds = %if.else96, %if.end126
  br i1 %tobool29.not.not, label %if.else273, label %if.then261

if.then261:                                       ; preds = %sw.bb257
  %pos_y263 = getelementptr inbounds i8, ptr %block, i64 46
  %43 = load i16, ptr %pos_y263, align 2
  %idxprom264 = sext i16 %43 to i64
  %arrayidx265 = getelementptr inbounds ptr, ptr %mv_info, i64 %idxprom264
  %44 = load ptr, ptr %arrayidx265, align 8
  %pos_x267 = getelementptr inbounds i8, ptr %block, i64 44
  %45 = load i16, ptr %pos_x267, align 4
  %idxprom268 = sext i16 %45 to i64
  %idxprom271 = sext i32 %list to i64
  %arrayidx272 = getelementptr inbounds %struct.pic_motion_params, ptr %44, i64 %idxprom268, i32 1, i64 %idxprom271
  %46 = load i32, ptr %arrayidx272, align 4
  store i32 %46, ptr %pmv, align 2
  br label %sw.epilog

if.else273:                                       ; preds = %sw.bb257
  store i32 0, ptr %pmv, align 2
  br label %sw.epilog

default.unreachable390:                           ; preds = %if.end126
  unreachable

sw.epilog:                                        ; preds = %if.then261, %if.else273, %if.then243, %if.else255, %if.then225, %if.else237, %imedian.exit380, %if.else148, %if.then137
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
