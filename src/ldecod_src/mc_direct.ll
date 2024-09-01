; ModuleID = 'ldecod_src/mc_direct.c'
source_filename = "ldecod_src/mc_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@BLOCK_STEP = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 4, i32 4], [2 x i32] [i32 4, i32 2], [2 x i32] [i32 2, i32 4], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 1]], align 16
@.str = private unnamed_addr constant [67 x i8] c"temporal direct error: colocated block has ref that is unavailable\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @get_colocated_info_4x4(ptr nocapture noundef readnone %currMB, ptr nocapture noundef readonly %list1, i32 noundef %i, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %is_long_term = getelementptr inbounds i8, ptr %list1, i64 40
  %0 = load i8, ptr %is_long_term, align 8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %return

if.else:                                          ; preds = %entry
  %mv_info = getelementptr inbounds i8, ptr %list1, i64 152
  %1 = load ptr, ptr %mv_info, align 8
  %idxprom = sext i32 %j to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %idxprom1 = sext i32 %i to i64
  %arrayidx2 = getelementptr inbounds %struct.pic_motion_params, ptr %2, i64 %idxprom1
  %ref_idx = getelementptr inbounds i8, ptr %arrayidx2, i64 24
  %3 = load i8, ptr %ref_idx, align 8
  switch i8 %3, label %return [
    i8 0, label %land.lhs.true
    i8 -1, label %land.lhs.true22
  ]

land.lhs.true:                                    ; preds = %if.else
  %mv = getelementptr inbounds i8, ptr %arrayidx2, i64 16
  %4 = load i16, ptr %mv, align 8
  %5 = tail call i16 @llvm.abs.i16(i16 %4, i1 false)
  %cmp7 = icmp ult i16 %5, 2
  br i1 %cmp7, label %land.lhs.true9, label %lor.rhs.thread

land.lhs.true9:                                   ; preds = %land.lhs.true
  %mv_y = getelementptr inbounds i8, ptr %arrayidx2, i64 18
  %6 = load i16, ptr %mv_y, align 2
  %7 = tail call i16 @llvm.abs.i16(i16 %6, i1 false)
  %cmp15 = icmp ult i16 %7, 2
  br i1 %cmp15, label %return, label %lor.rhs.thread

lor.rhs.thread:                                   ; preds = %land.lhs.true9, %land.lhs.true
  br label %return

land.lhs.true22:                                  ; preds = %if.else
  %arrayidx24 = getelementptr inbounds i8, ptr %arrayidx2, i64 25
  %8 = load i8, ptr %arrayidx24, align 1
  %cmp26 = icmp eq i8 %8, 0
  br i1 %cmp26, label %land.lhs.true28, label %return

land.lhs.true28:                                  ; preds = %land.lhs.true22
  %arrayidx30 = getelementptr inbounds i8, ptr %arrayidx2, i64 20
  %9 = load i16, ptr %arrayidx30, align 4
  %10 = tail call i16 @llvm.abs.i16(i16 %9, i1 false)
  %cmp35 = icmp ult i16 %10, 2
  br i1 %cmp35, label %land.rhs, label %return

land.rhs:                                         ; preds = %land.lhs.true28
  %mv_y39 = getelementptr inbounds i8, ptr %arrayidx2, i64 22
  %11 = load i16, ptr %mv_y39, align 2
  %12 = tail call i16 @llvm.abs.i16(i16 %11, i1 false)
  %cmp43 = icmp ugt i16 %12, 1
  %13 = zext i1 %cmp43 to i32
  br label %return

return:                                           ; preds = %if.else, %lor.rhs.thread, %land.lhs.true9, %land.rhs, %land.lhs.true28, %land.lhs.true22, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %land.lhs.true9 ], [ 1, %land.lhs.true28 ], [ 1, %land.lhs.true22 ], [ %13, %land.rhs ], [ 1, %lor.rhs.thread ], [ 1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @get_colocated_info_8x8(ptr nocapture noundef readonly %currMB, ptr nocapture noundef readonly %list1, i32 noundef %i, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %is_long_term = getelementptr inbounds i8, ptr %list1, i64 40
  %0 = load i8, ptr %is_long_term, align 8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %return

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %currMB, align 8
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %1, i64 128
  %2 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.then12

lor.lhs.false:                                    ; preds = %if.else
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %3 = load ptr, ptr %p_Vid1, align 8
  %active_sps = getelementptr inbounds i8, ptr %3, i64 16
  %4 = load ptr, ptr %active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %4, i64 3136
  %5 = load i32, ptr %frame_mbs_only_flag, align 4
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.else133

land.lhs.true:                                    ; preds = %lor.lhs.false
  %structure = getelementptr inbounds i8, ptr %1, i64 184
  %6 = load i32, ptr %structure, align 8
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %lor.lhs.false6

land.lhs.true5:                                   ; preds = %land.lhs.true
  %iCodingType = getelementptr inbounds i8, ptr %list1, i64 388
  %7 = load i32, ptr %iCodingType, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then12, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %land.lhs.true5, %land.lhs.true
  %8 = load i32, ptr %list1, align 8
  %cmp9.not = icmp eq i32 %6, %8
  br i1 %cmp9.not, label %if.else133, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %lor.lhs.false6
  %coded_frame = getelementptr inbounds i8, ptr %list1, i64 96
  %9 = load i32, ptr %coded_frame, align 8
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %if.else133, label %if.then12

if.then12:                                        ; preds = %land.lhs.true10, %land.lhs.true5, %if.else
  %and1.i = and i32 %j, -2
  %and.i = lshr i32 %j, 1
  %and.lobit.i = and i32 %and.i, 1
  %cond.i = or disjoint i32 %and.lobit.i, %and1.i
  %and1.i274 = and i32 %i, -2
  %and.i275 = lshr i32 %i, 1
  %and.lobit.i276 = and i32 %and.i275, 1
  %cond.i277 = or disjoint i32 %and.lobit.i276, %and1.i274
  %shr = ashr i32 %j, 1
  %mv_info = getelementptr inbounds i8, ptr %list1, i64 152
  %10 = load ptr, ptr %mv_info, align 8
  %idxprom = sext i32 %cond.i to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  %idxprom14 = sext i32 %cond.i277 to i64
  %field_pic_flag = getelementptr inbounds i8, ptr %1, i64 176
  %12 = load i32, ptr %field_pic_flag, align 8
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %if.else37, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.then12
  %structure18 = getelementptr inbounds i8, ptr %1, i64 184
  %13 = load i32, ptr %structure18, align 8
  %14 = load i32, ptr %list1, align 8
  %cmp20.not = icmp eq i32 %13, %14
  br i1 %cmp20.not, label %if.else37, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %coded_frame22 = getelementptr inbounds i8, ptr %list1, i64 96
  %15 = load i32, ptr %coded_frame22, align 8
  %tobool23.not = icmp eq i32 %15, 0
  br i1 %tobool23.not, label %if.else37, label %if.then24

if.then24:                                        ; preds = %land.lhs.true21
  %cmp26 = icmp eq i32 %13, 1
  br i1 %cmp26, label %if.then27, label %if.else31

if.then27:                                        ; preds = %if.then24
  %top_field = getelementptr inbounds i8, ptr %list1, i64 224
  %16 = load ptr, ptr %top_field, align 8
  br label %if.end85.sink.split

if.else31:                                        ; preds = %if.then24
  %bottom_field = getelementptr inbounds i8, ptr %list1, i64 232
  %17 = load ptr, ptr %bottom_field, align 8
  br label %if.end85.sink.split

if.else37:                                        ; preds = %land.lhs.true21, %land.lhs.true17, %if.then12
  br i1 %tobool2.not, label %if.then57, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %if.else37
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384
  %18 = load i32, ptr %mb_field, align 8
  %tobool41.not = icmp eq i32 %18, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %if.end85

land.lhs.true42:                                  ; preds = %land.lhs.true40
  %motion = getelementptr inbounds i8, ptr %list1, i64 184
  %19 = load ptr, ptr %motion, align 8
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24
  %20 = load i32, ptr %mbAddrX, align 8
  %idxprom44 = sext i32 %20 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %19, i64 %idxprom44
  %21 = load i8, ptr %arrayidx45, align 1
  %tobool46.not = icmp eq i8 %21, 0
  br i1 %tobool46.not, label %land.lhs.true50, label %if.then57

land.lhs.true50:                                  ; preds = %land.lhs.true42
  %iCodingType51 = getelementptr inbounds i8, ptr %list1, i64 388
  %22 = load i32, ptr %iCodingType51, align 4
  %cmp52 = icmp eq i32 %22, 1
  br i1 %cmp52, label %if.then57, label %if.end85

if.then57:                                        ; preds = %if.else37, %land.lhs.true50, %land.lhs.true42
  %dec_picture = getelementptr inbounds i8, ptr %1, i64 13520
  %23 = load ptr, ptr %dec_picture, align 8
  %poc = getelementptr inbounds i8, ptr %23, i64 4
  %24 = load i32, ptr %poc, align 4
  %bottom_field58 = getelementptr inbounds i8, ptr %list1, i64 232
  %25 = load ptr, ptr %bottom_field58, align 8
  %poc59 = getelementptr inbounds i8, ptr %25, i64 4
  %26 = load i32, ptr %poc59, align 4
  %sub = sub nsw i32 %24, %26
  %sub.i = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %top_field63 = getelementptr inbounds i8, ptr %list1, i64 224
  %27 = load ptr, ptr %top_field63, align 8
  %poc64 = getelementptr inbounds i8, ptr %27, i64 4
  %28 = load i32, ptr %poc64, align 4
  %sub65 = sub nsw i32 %24, %28
  %sub.i278 = tail call i32 @llvm.abs.i32(i32 %sub65, i1 true)
  %cmp67 = icmp ugt i32 %sub.i, %sub.i278
  %idxprom72 = sext i32 %shr to i64
  %. = select i1 %cmp67, ptr %27, ptr %25
  br label %if.end85.sink.split

if.end85.sink.split:                              ; preds = %if.then57, %if.else31, %if.then27
  %.sink = phi ptr [ %16, %if.then27 ], [ %17, %if.else31 ], [ %., %if.then57 ]
  %idxprom72.sink = phi i64 [ %idxprom, %if.then27 ], [ %idxprom, %if.else31 ], [ %idxprom72, %if.then57 ]
  %mv_info78 = getelementptr inbounds i8, ptr %.sink, i64 152
  %29 = load ptr, ptr %mv_info78, align 8
  %arrayidx80 = getelementptr inbounds ptr, ptr %29, i64 %idxprom72.sink
  %30 = load ptr, ptr %arrayidx80, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.end85.sink.split, %land.lhs.true50, %land.lhs.true40
  %.pn = phi ptr [ %11, %land.lhs.true40 ], [ %11, %land.lhs.true50 ], [ %30, %if.end85.sink.split ]
  %fs.0 = getelementptr inbounds %struct.pic_motion_params, ptr %.pn, i64 %idxprom14
  %ref_idx = getelementptr inbounds i8, ptr %fs.0, i64 24
  %31 = load i8, ptr %ref_idx, align 8
  switch i8 %31, label %return [
    i8 0, label %land.lhs.true90
    i8 -1, label %land.lhs.true110
  ]

land.lhs.true90:                                  ; preds = %if.end85
  %mv = getelementptr inbounds i8, ptr %fs.0, i64 16
  %32 = load i16, ptr %mv, align 8
  %33 = tail call i16 @llvm.abs.i16(i16 %32, i1 false)
  %cmp95 = icmp ult i16 %33, 2
  br i1 %cmp95, label %land.lhs.true97, label %lor.rhs.thread

land.lhs.true97:                                  ; preds = %land.lhs.true90
  %mv_y = getelementptr inbounds i8, ptr %fs.0, i64 18
  %34 = load i16, ptr %mv_y, align 2
  %35 = tail call i16 @llvm.abs.i16(i16 %34, i1 false)
  %cmp103 = icmp ult i16 %35, 2
  br i1 %cmp103, label %return, label %lor.rhs.thread

lor.rhs.thread:                                   ; preds = %land.lhs.true97, %land.lhs.true90
  br label %return

land.lhs.true110:                                 ; preds = %if.end85
  %arrayidx112 = getelementptr inbounds i8, ptr %fs.0, i64 25
  %36 = load i8, ptr %arrayidx112, align 1
  %cmp114 = icmp eq i8 %36, 0
  br i1 %cmp114, label %land.lhs.true116, label %return

land.lhs.true116:                                 ; preds = %land.lhs.true110
  %arrayidx118 = getelementptr inbounds i8, ptr %fs.0, i64 20
  %37 = load i16, ptr %arrayidx118, align 4
  %38 = tail call i16 @llvm.abs.i16(i16 %37, i1 false)
  %cmp123 = icmp ult i16 %38, 2
  br i1 %cmp123, label %land.rhs, label %return

land.rhs:                                         ; preds = %land.lhs.true116
  %mv_y127 = getelementptr inbounds i8, ptr %fs.0, i64 22
  %39 = load i16, ptr %mv_y127, align 2
  %40 = tail call i16 @llvm.abs.i16(i16 %39, i1 false)
  %cmp131 = icmp ugt i16 %40, 1
  br label %return

if.else133:                                       ; preds = %land.lhs.true10, %lor.lhs.false6, %lor.lhs.false
  %mv_info135 = getelementptr inbounds i8, ptr %list1, i64 152
  %41 = load ptr, ptr %mv_info135, align 8
  %and1.i283 = and i32 %j, -2
  %and.i284 = lshr i32 %j, 1
  %and.lobit.i285 = and i32 %and.i284, 1
  %cond.i286 = or disjoint i32 %and.lobit.i285, %and1.i283
  %idxprom137 = sext i32 %cond.i286 to i64
  %arrayidx138 = getelementptr inbounds ptr, ptr %41, i64 %idxprom137
  %42 = load ptr, ptr %arrayidx138, align 8
  %and1.i287 = and i32 %i, -2
  %and.i288 = lshr i32 %i, 1
  %and.lobit.i289 = and i32 %and.i288, 1
  %cond.i290 = or disjoint i32 %and.lobit.i289, %and1.i287
  %idxprom140 = sext i32 %cond.i290 to i64
  %arrayidx141 = getelementptr inbounds %struct.pic_motion_params, ptr %42, i64 %idxprom140
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %3, i64 849280
  %43 = load i32, ptr %separate_colour_plane_flag, align 8
  %tobool144.not = icmp eq i32 %43, 0
  br i1 %tobool144.not, label %if.end159, label %land.lhs.true145

land.lhs.true145:                                 ; preds = %if.else133
  %yuv_format = getelementptr inbounds i8, ptr %3, i64 849088
  %44 = load i32, ptr %yuv_format, align 8
  %cmp147 = icmp eq i32 %44, 3
  br i1 %cmp147, label %if.then149, label %if.end159

if.then149:                                       ; preds = %land.lhs.true145
  %JVmv_info = getelementptr inbounds i8, ptr %list1, i64 160
  %colour_plane_id = getelementptr inbounds i8, ptr %1, i64 216
  %45 = load i32, ptr %colour_plane_id, align 8
  %idxprom151 = sext i32 %45 to i64
  %arrayidx152 = getelementptr inbounds [3 x ptr], ptr %JVmv_info, i64 0, i64 %idxprom151
  %46 = load ptr, ptr %arrayidx152, align 8
  %arrayidx155 = getelementptr inbounds ptr, ptr %46, i64 %idxprom137
  %47 = load ptr, ptr %arrayidx155, align 8
  %arrayidx158 = getelementptr inbounds %struct.pic_motion_params, ptr %47, i64 %idxprom140
  br label %if.end159

if.end159:                                        ; preds = %if.then149, %land.lhs.true145, %if.else133
  %fs134.0 = phi ptr [ %arrayidx158, %if.then149 ], [ %arrayidx141, %land.lhs.true145 ], [ %arrayidx141, %if.else133 ]
  %ref_idx160 = getelementptr inbounds i8, ptr %fs134.0, i64 24
  %48 = load i8, ptr %ref_idx160, align 8
  switch i8 %48, label %return [
    i8 0, label %land.lhs.true165
    i8 -1, label %land.lhs.true189
  ]

land.lhs.true165:                                 ; preds = %if.end159
  %mv166 = getelementptr inbounds i8, ptr %fs134.0, i64 16
  %49 = load i16, ptr %mv166, align 8
  %50 = tail call i16 @llvm.abs.i16(i16 %49, i1 false)
  %cmp172 = icmp ult i16 %50, 2
  br i1 %cmp172, label %land.lhs.true174, label %lor.rhs183.thread

land.lhs.true174:                                 ; preds = %land.lhs.true165
  %mv_y177 = getelementptr inbounds i8, ptr %fs134.0, i64 18
  %51 = load i16, ptr %mv_y177, align 2
  %52 = tail call i16 @llvm.abs.i16(i16 %51, i1 false)
  %cmp181 = icmp ult i16 %52, 2
  br i1 %cmp181, label %return, label %lor.rhs183.thread

lor.rhs183.thread:                                ; preds = %land.lhs.true174, %land.lhs.true165
  br label %return

land.lhs.true189:                                 ; preds = %if.end159
  %arrayidx191 = getelementptr inbounds i8, ptr %fs134.0, i64 25
  %53 = load i8, ptr %arrayidx191, align 1
  %cmp193 = icmp eq i8 %53, 0
  br i1 %cmp193, label %land.lhs.true195, label %return

land.lhs.true195:                                 ; preds = %land.lhs.true189
  %arrayidx197 = getelementptr inbounds i8, ptr %fs134.0, i64 20
  %54 = load i16, ptr %arrayidx197, align 4
  %55 = tail call i16 @llvm.abs.i16(i16 %54, i1 false)
  %cmp202 = icmp ult i16 %55, 2
  br i1 %cmp202, label %land.rhs204, label %return

land.rhs204:                                      ; preds = %land.lhs.true195
  %mv_y207 = getelementptr inbounds i8, ptr %fs134.0, i64 22
  %56 = load i16, ptr %mv_y207, align 2
  %57 = tail call i16 @llvm.abs.i16(i16 %56, i1 false)
  %cmp211 = icmp ugt i16 %57, 1
  br label %return

return:                                           ; preds = %if.end159, %if.end85, %lor.rhs183.thread, %lor.rhs.thread, %land.lhs.true110, %land.lhs.true116, %land.rhs, %land.lhs.true97, %land.lhs.true189, %land.lhs.true195, %land.rhs204, %land.lhs.true174, %entry
  %retval.1.shrunk = phi i1 [ true, %entry ], [ false, %land.lhs.true97 ], [ true, %land.lhs.true116 ], [ true, %land.lhs.true110 ], [ %cmp131, %land.rhs ], [ false, %land.lhs.true174 ], [ true, %land.lhs.true195 ], [ true, %land.lhs.true189 ], [ %cmp211, %land.rhs204 ], [ true, %lor.rhs.thread ], [ true, %lor.rhs183.thread ], [ true, %if.end85 ], [ true, %if.end159 ]
  %retval.1 = zext i1 %retval.1.shrunk to i32
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_direct_types(ptr nocapture noundef %currSlice) local_unnamed_addr #2 {
entry:
  %active_sps = getelementptr inbounds i8, ptr %currSlice, i64 24
  %0 = load ptr, ptr %active_sps, align 8
  %direct_8x8_inference_flag = getelementptr inbounds i8, ptr %0, i64 3144
  %1 = load i32, ptr %direct_8x8_inference_flag, align 4
  %tobool.not = icmp eq i32 %1, 0
  %direct_spatial_mv_pred_flag2 = getelementptr inbounds i8, ptr %currSlice, i64 132
  %2 = load i32, ptr %direct_spatial_mv_pred_flag2, align 4
  %tobool3.not = icmp eq i32 %2, 0
  %update_direct_mv_info_spatial_4x4.update_direct_mv_info_spatial_8x8 = select i1 %tobool.not, ptr @update_direct_mv_info_spatial_4x4, ptr @update_direct_mv_info_spatial_8x8
  %cond4 = select i1 %tobool3.not, ptr @update_direct_mv_info_temporal, ptr %update_direct_mv_info_spatial_4x4.update_direct_mv_info_spatial_8x8
  %3 = getelementptr inbounds i8, ptr %currSlice, i64 13496
  store ptr %cond4, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_direct_mv_info_spatial_8x8(ptr noundef %currMB) #3 {
entry:
  %l0_rFrame = alloca i8, align 1
  %l1_rFrame = alloca i8, align 1
  %pmvl0 = alloca %struct.MotionVector, align 4
  %pmvl1 = alloca %struct.MotionVector, align 4
  %b8mode = getelementptr inbounds i8, ptr %currMB, i64 364
  %0 = load <4 x i8>, ptr %b8mode, align 4
  %1 = icmp eq <4 x i8> %0, zeroinitializer
  %2 = bitcast <4 x i1> %1 to i4
  %.not = icmp eq i4 %2, 0
  br i1 %.not, label %if.end266, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %currMB, align 8
  %dec_picture19 = getelementptr inbounds i8, ptr %3, i64 13520
  %4 = load ptr, ptr %dec_picture19, align 8
  %list_offset20 = getelementptr inbounds i8, ptr %currMB, i64 114
  %5 = load i16, ptr %list_offset20, align 2
  %conv21 = sext i16 %5 to i64
  %listX = getelementptr inbounds i8, ptr %3, i64 264
  %arrayidx22 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv21
  %6 = load ptr, ptr %arrayidx22, align 8
  %add24 = add nsw i64 %conv21, 1
  %arrayidx26 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add24
  %7 = load ptr, ptr %arrayidx26, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l0_rFrame) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_rFrame) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl1) #8
  call void @prepare_direct_params(ptr noundef nonnull %currMB, ptr noundef %4, ptr noundef nonnull %pmvl0, ptr noundef nonnull %pmvl1, ptr noundef nonnull %l0_rFrame, ptr noundef nonnull %l1_rFrame) #8
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %mv_info39 = getelementptr inbounds i8, ptr %4, i64 152
  %block_y_aff = getelementptr inbounds i8, ptr %currMB, i64 40
  br label %for.body

for.body:                                         ; preds = %if.then, %for.inc
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next, %for.inc ]
  %arrayidx31 = getelementptr inbounds [4 x i8], ptr %b8mode, i64 0, i64 %indvars.iv
  %8 = load i8, ptr %arrayidx31, align 1
  %cmp33 = icmp eq i8 %8, 0
  br i1 %cmp33, label %if.then35, label %for.inc

if.then35:                                        ; preds = %for.body
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %9 = shl i32 %indvars.iv.tr, 1
  %mul = and i32 %9, 2
  %10 = trunc nuw nsw i64 %indvars.iv to i32
  %shr = and i32 %10, 2
  %11 = load i32, ptr %block_y, align 4
  %add37 = add nsw i32 %11, %shr
  %12 = load i32, ptr %block_x, align 8
  %add38 = add nsw i32 %12, %mul
  %13 = load ptr, ptr %mv_info39, align 8
  %idxprom40 = sext i32 %add37 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %13, i64 %idxprom40
  %14 = load ptr, ptr %arrayidx41, align 8
  %idxprom42 = sext i32 %add38 to i64
  %arrayidx43 = getelementptr inbounds %struct.pic_motion_params, ptr %14, i64 %idxprom42
  %15 = load ptr, ptr %7, align 8
  %16 = load i32, ptr %block_y_aff, align 8
  %add45 = add nsw i32 %16, %shr
  %call = call i32 @get_colocated_info_8x8(ptr noundef nonnull %currMB, ptr noundef %15, i32 noundef %add38, i32 noundef %add45)
  %cmp46 = icmp eq i32 %call, 0
  %17 = load i8, ptr %l0_rFrame, align 1
  br i1 %cmp46, label %land.lhs.true, label %if.else176thread-pre-split

land.lhs.true:                                    ; preds = %if.then35
  %cmp50 = icmp eq i8 %17, 0
  %18 = load i8, ptr %l1_rFrame, align 1
  %cmp53 = icmp eq i8 %18, 0
  %or.cond = select i1 %cmp50, i1 true, i1 %cmp53
  br i1 %or.cond, label %if.then55, label %if.else176

if.then55:                                        ; preds = %land.lhs.true
  %cmp57 = icmp eq i8 %18, -1
  br i1 %cmp57, label %if.then59, label %if.else90

if.then59:                                        ; preds = %if.then55
  br i1 %cmp50, label %if.then63, label %if.else

if.then63:                                        ; preds = %if.then59
  %19 = load ptr, ptr %6, align 8
  store ptr %19, ptr %arrayidx43, align 8
  %20 = load ptr, ptr %7, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %arrayidx43, i64 8
  store ptr %20, ptr %arrayidx68, align 8
  %mv = getelementptr inbounds i8, ptr %arrayidx43, i64 16
  %arrayidx74 = getelementptr inbounds i8, ptr %arrayidx43, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %mv, i8 0, i64 9, i1 false)
  store i8 -1, ptr %arrayidx74, align 1
  br label %if.end261

if.else:                                          ; preds = %if.then59
  %idxprom76 = sext i8 %17 to i64
  %arrayidx77 = getelementptr inbounds ptr, ptr %6, i64 %idxprom76
  %21 = load ptr, ptr %arrayidx77, align 8
  store ptr %21, ptr %arrayidx43, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %arrayidx43, i64 8
  store ptr null, ptr %arrayidx81, align 8
  %mv82 = getelementptr inbounds i8, ptr %arrayidx43, i64 16
  %22 = load i32, ptr %pmvl0, align 4
  store i32 %22, ptr %mv82, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %arrayidx43, i64 20
  store i32 0, ptr %arrayidx85, align 4
  %ref_idx86 = getelementptr inbounds i8, ptr %arrayidx43, i64 24
  store i8 %17, ptr %ref_idx86, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %arrayidx43, i64 25
  store i8 -1, ptr %arrayidx89, align 1
  br label %if.end261

if.else90:                                        ; preds = %if.then55
  %cmp92 = icmp eq i8 %17, -1
  br i1 %cmp92, label %if.then94, label %if.else129

if.then94:                                        ; preds = %if.else90
  store ptr null, ptr %arrayidx43, align 8
  br i1 %cmp53, label %if.then98, label %if.else112

if.then98:                                        ; preds = %if.then94
  %23 = load ptr, ptr %7, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %arrayidx43, i64 8
  store ptr %23, ptr %arrayidx103, align 8
  %mv104 = getelementptr inbounds i8, ptr %arrayidx43, i64 16
  store i32 0, ptr %mv104, align 8
  %arrayidx107 = getelementptr inbounds i8, ptr %arrayidx43, i64 20
  store i32 0, ptr %arrayidx107, align 4
  %ref_idx108 = getelementptr inbounds i8, ptr %arrayidx43, i64 24
  store i8 -1, ptr %ref_idx108, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %arrayidx43, i64 25
  store i8 0, ptr %arrayidx111, align 1
  br label %if.end261

if.else112:                                       ; preds = %if.then94
  %idxprom116 = sext i8 %18 to i64
  %arrayidx117 = getelementptr inbounds ptr, ptr %7, i64 %idxprom116
  %24 = load ptr, ptr %arrayidx117, align 8
  %arrayidx119 = getelementptr inbounds i8, ptr %arrayidx43, i64 8
  store ptr %24, ptr %arrayidx119, align 8
  %mv120 = getelementptr inbounds i8, ptr %arrayidx43, i64 16
  store i32 0, ptr %mv120, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %arrayidx43, i64 20
  %25 = load i32, ptr %pmvl1, align 4
  store i32 %25, ptr %arrayidx123, align 4
  %ref_idx124 = getelementptr inbounds i8, ptr %arrayidx43, i64 24
  store i8 -1, ptr %ref_idx124, align 8
  %26 = load i8, ptr %l1_rFrame, align 1
  %arrayidx127 = getelementptr inbounds i8, ptr %arrayidx43, i64 25
  store i8 %26, ptr %arrayidx127, align 1
  br label %if.end261

if.else129:                                       ; preds = %if.else90
  br i1 %cmp50, label %if.then133, label %if.else141

if.then133:                                       ; preds = %if.else129
  %27 = load ptr, ptr %6, align 8
  store ptr %27, ptr %arrayidx43, align 8
  br label %if.end151

if.else141:                                       ; preds = %if.else129
  %idxprom143 = sext i8 %17 to i64
  %arrayidx144 = getelementptr inbounds ptr, ptr %7, i64 %idxprom143
  %28 = load ptr, ptr %arrayidx144, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %arrayidx43, i64 8
  store ptr %28, ptr %arrayidx146, align 8
  %29 = load i32, ptr %pmvl0, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else141, %if.then133
  %.sink373 = phi i32 [ 0, %if.then133 ], [ %29, %if.else141 ]
  %30 = getelementptr inbounds i8, ptr %arrayidx43, i64 16
  store i32 %.sink373, ptr %30, align 8
  %31 = getelementptr inbounds i8, ptr %arrayidx43, i64 24
  store i8 %17, ptr %31, align 8
  %32 = load i8, ptr %l1_rFrame, align 1
  %cmp153 = icmp eq i8 %32, 0
  br i1 %cmp153, label %if.then155, label %if.else163

if.then155:                                       ; preds = %if.end151
  %33 = load ptr, ptr %7, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %arrayidx43, i64 8
  store ptr %33, ptr %arrayidx158, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %arrayidx43, i64 20
  store i32 0, ptr %arrayidx160, align 4
  %arrayidx162 = getelementptr inbounds i8, ptr %arrayidx43, i64 25
  store i8 0, ptr %arrayidx162, align 1
  br label %if.end261

if.else163:                                       ; preds = %if.end151
  %idxprom165 = sext i8 %32 to i64
  %arrayidx166 = getelementptr inbounds ptr, ptr %7, i64 %idxprom165
  %34 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %arrayidx43, i64 8
  store ptr %34, ptr %arrayidx168, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %arrayidx43, i64 20
  %35 = load i32, ptr %pmvl1, align 4
  store i32 %35, ptr %arrayidx170, align 4
  %arrayidx172 = getelementptr inbounds i8, ptr %arrayidx43, i64 25
  store i8 %32, ptr %arrayidx172, align 1
  br label %if.end261

if.else176thread-pre-split:                       ; preds = %if.then35
  %.pr369 = load i8, ptr %l1_rFrame, align 1
  br label %if.else176

if.else176:                                       ; preds = %if.else176thread-pre-split, %land.lhs.true
  %36 = phi i8 [ %.pr369, %if.else176thread-pre-split ], [ %18, %land.lhs.true ]
  %cmp178 = icmp slt i8 %17, 0
  %cmp182 = icmp slt i8 %36, 0
  %or.cond267 = select i1 %cmp178, i1 %cmp182, i1 false
  br i1 %or.cond267, label %if.then184, label %if.else199

if.then184:                                       ; preds = %if.else176
  %37 = load ptr, ptr %6, align 8
  store ptr %37, ptr %arrayidx43, align 8
  %38 = load ptr, ptr %7, align 8
  %arrayidx190 = getelementptr inbounds i8, ptr %arrayidx43, i64 8
  store ptr %38, ptr %arrayidx190, align 8
  %mv191 = getelementptr inbounds i8, ptr %arrayidx43, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %mv191, i8 0, i64 10, i1 false)
  br label %if.end261

if.else199:                                       ; preds = %if.else176
  br i1 %cmp178, label %if.then203, label %if.else219

if.then203:                                       ; preds = %if.else199
  store ptr null, ptr %arrayidx43, align 8
  %idxprom207 = sext i8 %36 to i64
  %arrayidx208 = getelementptr inbounds ptr, ptr %7, i64 %idxprom207
  %39 = load ptr, ptr %arrayidx208, align 8
  %arrayidx210 = getelementptr inbounds i8, ptr %arrayidx43, i64 8
  store ptr %39, ptr %arrayidx210, align 8
  %mv211 = getelementptr inbounds i8, ptr %arrayidx43, i64 16
  store i32 0, ptr %mv211, align 8
  %arrayidx214 = getelementptr inbounds i8, ptr %arrayidx43, i64 20
  %40 = load i32, ptr %pmvl1, align 4
  store i32 %40, ptr %arrayidx214, align 4
  %ref_idx215 = getelementptr inbounds i8, ptr %arrayidx43, i64 24
  store i8 -1, ptr %ref_idx215, align 8
  %41 = load i8, ptr %l1_rFrame, align 1
  %arrayidx218 = getelementptr inbounds i8, ptr %arrayidx43, i64 25
  store i8 %41, ptr %arrayidx218, align 1
  br label %if.end261

if.else219:                                       ; preds = %if.else199
  %idxprom225 = zext nneg i8 %17 to i64
  %arrayidx226 = getelementptr inbounds ptr, ptr %6, i64 %idxprom225
  %42 = load ptr, ptr %arrayidx226, align 8
  store ptr %42, ptr %arrayidx43, align 8
  br i1 %cmp182, label %if.then223, label %if.else239

if.then223:                                       ; preds = %if.else219
  %arrayidx230 = getelementptr inbounds i8, ptr %arrayidx43, i64 8
  store ptr null, ptr %arrayidx230, align 8
  %mv231 = getelementptr inbounds i8, ptr %arrayidx43, i64 16
  %43 = load i32, ptr %pmvl0, align 4
  store i32 %43, ptr %mv231, align 8
  %arrayidx234 = getelementptr inbounds i8, ptr %arrayidx43, i64 20
  store i32 0, ptr %arrayidx234, align 4
  %ref_idx235 = getelementptr inbounds i8, ptr %arrayidx43, i64 24
  store i8 %17, ptr %ref_idx235, align 8
  %arrayidx238 = getelementptr inbounds i8, ptr %arrayidx43, i64 25
  store i8 -1, ptr %arrayidx238, align 1
  br label %if.end261

if.else239:                                       ; preds = %if.else219
  %idxprom246 = zext nneg i8 %36 to i64
  %arrayidx247 = getelementptr inbounds ptr, ptr %7, i64 %idxprom246
  %44 = load ptr, ptr %arrayidx247, align 8
  %arrayidx249 = getelementptr inbounds i8, ptr %arrayidx43, i64 8
  store ptr %44, ptr %arrayidx249, align 8
  %mv250 = getelementptr inbounds i8, ptr %arrayidx43, i64 16
  %45 = load i32, ptr %pmvl0, align 4
  store i32 %45, ptr %mv250, align 8
  %arrayidx253 = getelementptr inbounds i8, ptr %arrayidx43, i64 20
  %46 = load i32, ptr %pmvl1, align 4
  store i32 %46, ptr %arrayidx253, align 4
  %ref_idx254 = getelementptr inbounds i8, ptr %arrayidx43, i64 24
  store i8 %17, ptr %ref_idx254, align 8
  %47 = load i8, ptr %l1_rFrame, align 1
  %arrayidx257 = getelementptr inbounds i8, ptr %arrayidx43, i64 25
  store i8 %47, ptr %arrayidx257, align 1
  br label %if.end261

if.end261:                                        ; preds = %if.then184, %if.then223, %if.else239, %if.then203, %if.else, %if.then63, %if.then155, %if.else163, %if.then98, %if.else112
  %48 = load ptr, ptr %mv_info39, align 8
  %arrayidx264 = getelementptr inbounds ptr, ptr %48, i64 %idxprom40
  %incdec.ptr.i = getelementptr inbounds i8, ptr %arrayidx264, i64 8
  %49 = load ptr, ptr %arrayidx264, align 8
  %add.i = add nsw i32 %add38, 1
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds %struct.pic_motion_params, ptr %49, i64 %idxprom.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx43, i64 32, i1 false)
  %50 = load ptr, ptr %incdec.ptr.i, align 8
  %arrayidx2.i = getelementptr inbounds %struct.pic_motion_params, ptr %50, i64 %idxprom42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx2.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx43, i64 32, i1 false)
  %51 = load ptr, ptr %incdec.ptr.i, align 8
  %arrayidx5.i = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %idxprom.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx5.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx43, i64 32, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end261
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl0) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_rFrame) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l0_rFrame) #8
  br label %if.end266

if.end266:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_direct_mv_info_temporal(ptr nocapture noundef %currMB) #3 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mb_type = getelementptr inbounds i8, ptr %currMB, i64 152
  %1 = load i16, ptr %mb_type, align 8
  %cmp = icmp eq i16 %1, 8
  %narrow = select i1 %cmp, i16 4, i16 %1
  %spec.select = sext i16 %narrow to i64
  %arrayidx = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %spec.select
  %arrayidx8 = getelementptr inbounds i8, ptr %arrayidx, i64 4
  %2 = load i32, ptr %arrayidx8, align 4
  %list_offset10 = getelementptr inbounds i8, ptr %currMB, i64 114
  %3 = load i16, ptr %list_offset10, align 2
  %conv11 = sext i16 %3 to i64
  %listX = getelementptr inbounds i8, ptr %0, i64 264
  %arrayidx13 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv11
  %4 = load ptr, ptr %arrayidx13, align 8
  %add15 = add nsw i64 %conv11, 1
  %arrayidx17 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add15
  %5 = load ptr, ptr %arrayidx17, align 8
  %b8mode = getelementptr inbounds i8, ptr %currMB, i64 364
  %6 = load <4 x i8>, ptr %b8mode, align 4
  %7 = icmp eq <4 x i8> %6, zeroinitializer
  %8 = bitcast <4 x i1> %7 to i4
  %.not = icmp eq i4 %8, 0
  br i1 %.not, label %if.end1019, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %9 = load i32, ptr %arrayidx, align 8
  %dec_picture9 = getelementptr inbounds i8, ptr %0, i64 13520
  %10 = load ptr, ptr %dec_picture9, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %11 = load ptr, ptr %p_Vid1, align 8
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %active_sps = getelementptr inbounds i8, ptr %11, i64 16
  %block_y_aff = getelementptr inbounds i8, ptr %currMB, i64 40
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %0, i64 128
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384
  %arrayidx92 = getelementptr inbounds i8, ptr %0, i64 272
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24
  %poc = getelementptr inbounds i8, ptr %10, i64 4
  %arrayidx113 = getelementptr inbounds i8, ptr %0, i64 304
  %arrayidx119 = getelementptr inbounds i8, ptr %0, i64 288
  %field_pic_flag = getelementptr inbounds i8, ptr %0, i64 176
  %structure = getelementptr inbounds i8, ptr %0, i64 184
  %num_ref_idx_active = getelementptr inbounds i8, ptr %0, i64 136
  %listXsize = getelementptr inbounds i8, ptr %0, i64 256
  %arrayidx458 = getelementptr inbounds [6 x i8], ptr %listXsize, i64 0, i64 %conv11
  %block_y547 = getelementptr inbounds i8, ptr %currMB, i64 36
  %mv_info579 = getelementptr inbounds i8, ptr %10, i64 152
  %mvscale = getelementptr inbounds i8, ptr %0, i64 336
  %12 = sext i32 %9 to i64
  %13 = sext i32 %2 to i64
  %cmp5441504 = icmp sgt i32 %2, 0
  %cmp5531499 = icmp sgt i32 %9, 0
  %cmp3811506 = icmp sgt i32 %9, 0
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc1016
  %indvars.iv1540 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next1541, %for.inc1016 ]
  %k.01518 = phi i32 [ 0, %for.cond.preheader ], [ %inc1017, %for.inc1016 ]
  %14 = shl nuw i32 %k.01518, 1
  %15 = and i32 %14, 2
  %16 = zext nneg i32 %15 to i64
  %arrayidx43 = getelementptr inbounds [4 x i8], ptr %b8mode, i64 0, i64 %indvars.iv1540
  %17 = load i8, ptr %arrayidx43, align 1
  %cmp45 = icmp eq i8 %17, 0
  br i1 %cmp45, label %if.then47, label %for.inc1016

if.then47:                                        ; preds = %for.body
  %18 = and i64 %indvars.iv1540, 9223372036854775806
  %arrayidx49 = getelementptr inbounds [4 x i8], ptr %b8pdir, i64 0, i64 %indvars.iv1540
  store i8 2, ptr %arrayidx49, align 1
  %19 = trunc nuw nsw i64 %indvars.iv1540 to i32
  %shr = and i32 %19, 2
  %add53 = add nuw nsw i32 %shr, 2
  %indvars.iv1540.tr = trunc i64 %indvars.iv1540 to i32
  %20 = shl i32 %indvars.iv1540.tr, 1
  %mul57 = and i32 %20, 2
  %add63 = add nuw nsw i32 %mul57, 2
  %.pre = load i32, ptr %block_x, align 8
  br label %for.body56

for.body56:                                       ; preds = %if.then47, %for.inc1012
  %21 = phi i32 [ %.pre, %if.then47 ], [ %204, %for.inc1012 ]
  %indvars.iv1542 = phi i64 [ %18, %if.then47 ], [ %indvars.iv.next1543, %for.inc1012 ]
  %j0.01517 = phi i32 [ %shr, %if.then47 ], [ %add543, %for.inc1012 ]
  %add58 = add nsw i32 %21, %mul57
  %add641511 = add i32 %add63, %21
  %cmp651512 = icmp slt i32 %add58, %add641511
  %add543 = add i32 %j0.01517, %2
  br i1 %cmp651512, label %for.body67.lr.ph, label %for.inc1012

for.body67.lr.ph:                                 ; preds = %for.body56
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %16, %22
  br label %for.body67

for.body67:                                       ; preds = %for.body67.lr.ph, %if.end1008
  %indvars.iv1532 = phi i64 [ %23, %for.body67.lr.ph ], [ %indvars.iv.next1533, %if.end1008 ]
  %24 = load ptr, ptr %active_sps, align 8
  %direct_8x8_inference_flag = getelementptr inbounds i8, ptr %24, i64 3144
  %25 = load i32, ptr %direct_8x8_inference_flag, align 4
  %tobool68.not = icmp eq i32 %25, 0
  %26 = load ptr, ptr %5, align 8
  %mv_info79 = getelementptr inbounds i8, ptr %26, i64 152
  %27 = load ptr, ptr %mv_info79, align 8
  %28 = load i32, ptr %block_y_aff, align 8
  %add81 = add nsw i32 %28, %j0.01517
  br i1 %tobool68.not, label %cond.false77, label %cond.true69

cond.true69:                                      ; preds = %for.body67
  %and1.i = and i32 %add81, -2
  %and.i = lshr i32 %add81, 1
  %and.lobit.i = and i32 %and.i, 1
  %cond.i = or disjoint i32 %and.lobit.i, %and1.i
  %idxprom72 = sext i32 %cond.i to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %27, i64 %idxprom72
  %29 = load ptr, ptr %arrayidx73, align 8
  %30 = trunc nsw i64 %indvars.iv1532 to i32
  %and1.i1338 = and i32 %30, -2
  %and.i1339 = lshr i32 %30, 1
  %and.lobit.i1340 = and i32 %and.i1339, 1
  %cond.i1341 = or disjoint i32 %and.lobit.i1340, %and1.i1338
  %idxprom75 = sext i32 %cond.i1341 to i64
  %arrayidx76 = getelementptr inbounds %struct.pic_motion_params, ptr %29, i64 %idxprom75
  br label %cond.end86

cond.false77:                                     ; preds = %for.body67
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds ptr, ptr %27, i64 %idxprom82
  %31 = load ptr, ptr %arrayidx83, align 8
  %arrayidx85 = getelementptr inbounds %struct.pic_motion_params, ptr %31, i64 %indvars.iv1532
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false77, %cond.true69
  %cond87 = phi ptr [ %arrayidx76, %cond.true69 ], [ %arrayidx85, %cond.false77 ]
  %32 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool88.not = icmp eq i32 %32, 0
  br i1 %tobool88.not, label %if.else190, label %if.then89

if.then89:                                        ; preds = %cond.end86
  %33 = load i32, ptr %mb_field, align 8
  %tobool90.not = icmp eq i32 %33, 0
  br i1 %tobool90.not, label %land.lhs.true, label %if.end357

land.lhs.true:                                    ; preds = %if.then89
  %34 = load ptr, ptr %arrayidx92, align 8
  %35 = load ptr, ptr %34, align 8
  %iCodingType = getelementptr inbounds i8, ptr %35, i64 388
  %36 = load i32, ptr %iCodingType, align 4
  switch i32 %36, label %if.end357 [
    i32 3, label %land.lhs.true96
    i32 1, label %if.then111
  ]

land.lhs.true96:                                  ; preds = %land.lhs.true
  %motion = getelementptr inbounds i8, ptr %35, i64 184
  %37 = load ptr, ptr %motion, align 8
  %38 = load i32, ptr %mbAddrX, align 8
  %idxprom101 = sext i32 %38 to i64
  %arrayidx102 = getelementptr inbounds i8, ptr %37, i64 %idxprom101
  %39 = load i8, ptr %arrayidx102, align 1
  %tobool104.not = icmp eq i8 %39, 0
  br i1 %tobool104.not, label %if.end357, label %if.then111

if.then111:                                       ; preds = %land.lhs.true, %land.lhs.true96
  %40 = load i32, ptr %poc, align 4
  %41 = load ptr, ptr %arrayidx113, align 8
  %42 = load ptr, ptr %41, align 8
  %poc115 = getelementptr inbounds i8, ptr %42, i64 4
  %43 = load i32, ptr %poc115, align 4
  %sub = sub nsw i32 %40, %43
  %sub.i = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %44 = load ptr, ptr %arrayidx119, align 8
  %45 = load ptr, ptr %44, align 8
  %poc121 = getelementptr inbounds i8, ptr %45, i64 4
  %46 = load i32, ptr %poc121, align 4
  %sub122 = sub nsw i32 %40, %46
  %sub.i1342 = tail call i32 @llvm.abs.i32(i32 %sub122, i1 true)
  %cmp124 = icmp ugt i32 %sub.i, %sub.i1342
  %add150 = add nsw i32 %28, %j0.01517
  %shr151 = ashr i32 %add150, 1
  %idxprom152 = sext i32 %shr151 to i64
  br i1 %cmp124, label %if.then126, label %if.else

if.then126:                                       ; preds = %if.then111
  %mv_info148 = getelementptr inbounds i8, ptr %45, i64 152
  %47 = load ptr, ptr %mv_info148, align 8
  %arrayidx153 = getelementptr inbounds ptr, ptr %47, i64 %idxprom152
  %48 = load ptr, ptr %arrayidx153, align 8
  br i1 %tobool68.not, label %cond.false144, label %cond.true130

cond.true130:                                     ; preds = %if.then126
  %49 = trunc nsw i64 %indvars.iv1532 to i32
  %and1.i1347 = and i32 %49, -2
  %and.i1348 = lshr i32 %49, 1
  %and.lobit.i1349 = and i32 %and.i1348, 1
  %cond.i1350 = or disjoint i32 %and.lobit.i1349, %and1.i1347
  %idxprom142 = sext i32 %cond.i1350 to i64
  %arrayidx143 = getelementptr inbounds %struct.pic_motion_params, ptr %48, i64 %idxprom142
  br label %if.end357

cond.false144:                                    ; preds = %if.then126
  %arrayidx155 = getelementptr inbounds %struct.pic_motion_params, ptr %48, i64 %indvars.iv1532
  br label %if.end357

if.else:                                          ; preds = %if.then111
  %mv_info179 = getelementptr inbounds i8, ptr %42, i64 152
  %50 = load ptr, ptr %mv_info179, align 8
  %arrayidx184 = getelementptr inbounds ptr, ptr %50, i64 %idxprom152
  %51 = load ptr, ptr %arrayidx184, align 8
  br i1 %tobool68.not, label %cond.false175, label %cond.true161

cond.true161:                                     ; preds = %if.else
  %52 = trunc nsw i64 %indvars.iv1532 to i32
  %and1.i1355 = and i32 %52, -2
  %and.i1356 = lshr i32 %52, 1
  %and.lobit.i1357 = and i32 %and.i1356, 1
  %cond.i1358 = or disjoint i32 %and.lobit.i1357, %and1.i1355
  %idxprom173 = sext i32 %cond.i1358 to i64
  %arrayidx174 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %idxprom173
  br label %if.end357

cond.false175:                                    ; preds = %if.else
  %arrayidx186 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %indvars.iv1532
  br label %if.end357

if.else190:                                       ; preds = %cond.end86
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %24, i64 3136
  %53 = load i32, ptr %frame_mbs_only_flag, align 4
  %tobool192.not = icmp eq i32 %53, 0
  br i1 %tobool192.not, label %land.lhs.true193, label %if.end357

land.lhs.true193:                                 ; preds = %if.else190
  %54 = load i32, ptr %field_pic_flag, align 8
  %tobool194.not = icmp eq i32 %54, 0
  br i1 %tobool194.not, label %land.lhs.true195, label %land.lhs.true283

land.lhs.true195:                                 ; preds = %land.lhs.true193
  %55 = load ptr, ptr %arrayidx92, align 8
  %56 = load ptr, ptr %55, align 8
  %iCodingType199 = getelementptr inbounds i8, ptr %56, i64 388
  %57 = load i32, ptr %iCodingType199, align 4
  %cmp200.not = icmp eq i32 %57, 0
  br i1 %cmp200.not, label %if.end357, label %if.then202

if.then202:                                       ; preds = %land.lhs.true195
  %58 = load i32, ptr %poc, align 4
  %bottom_field = getelementptr inbounds i8, ptr %26, i64 232
  %59 = load ptr, ptr %bottom_field, align 8
  %poc205 = getelementptr inbounds i8, ptr %59, i64 4
  %60 = load i32, ptr %poc205, align 4
  %sub206 = sub nsw i32 %58, %60
  %sub.i1359 = tail call i32 @llvm.abs.i32(i32 %sub206, i1 true)
  %top_field = getelementptr inbounds i8, ptr %26, i64 224
  %61 = load ptr, ptr %top_field, align 8
  %poc210 = getelementptr inbounds i8, ptr %61, i64 4
  %62 = load i32, ptr %poc210, align 4
  %sub211 = sub nsw i32 %58, %62
  %sub.i1360 = tail call i32 @llvm.abs.i32(i32 %sub211, i1 true)
  %cmp213 = icmp ugt i32 %sub.i1359, %sub.i1360
  %add237 = add nsw i32 %28, %j0.01517
  %shr238 = ashr i32 %add237, 1
  %idxprom239 = sext i32 %shr238 to i64
  br i1 %cmp213, label %if.then215, label %if.else245

if.then215:                                       ; preds = %if.then202
  %mv_info235 = getelementptr inbounds i8, ptr %61, i64 152
  %63 = load ptr, ptr %mv_info235, align 8
  %arrayidx240 = getelementptr inbounds ptr, ptr %63, i64 %idxprom239
  %64 = load ptr, ptr %arrayidx240, align 8
  br i1 %tobool68.not, label %cond.false232, label %cond.true219

cond.true219:                                     ; preds = %if.then215
  %65 = trunc nsw i64 %indvars.iv1532 to i32
  %and1.i1365 = and i32 %65, -2
  %and.i1366 = lshr i32 %65, 1
  %and.lobit.i1367 = and i32 %and.i1366, 1
  %cond.i1368 = or disjoint i32 %and.lobit.i1367, %and1.i1365
  %idxprom230 = sext i32 %cond.i1368 to i64
  %arrayidx231 = getelementptr inbounds %struct.pic_motion_params, ptr %64, i64 %idxprom230
  br label %if.end357

cond.false232:                                    ; preds = %if.then215
  %arrayidx242 = getelementptr inbounds %struct.pic_motion_params, ptr %64, i64 %indvars.iv1532
  br label %if.end357

if.else245:                                       ; preds = %if.then202
  %mv_info265 = getelementptr inbounds i8, ptr %59, i64 152
  %66 = load ptr, ptr %mv_info265, align 8
  %arrayidx270 = getelementptr inbounds ptr, ptr %66, i64 %idxprom239
  %67 = load ptr, ptr %arrayidx270, align 8
  br i1 %tobool68.not, label %cond.false262, label %cond.true249

cond.true249:                                     ; preds = %if.else245
  %68 = trunc nsw i64 %indvars.iv1532 to i32
  %and1.i1373 = and i32 %68, -2
  %and.i1374 = lshr i32 %68, 1
  %and.lobit.i1375 = and i32 %and.i1374, 1
  %cond.i1376 = or disjoint i32 %and.lobit.i1375, %and1.i1373
  %idxprom260 = sext i32 %cond.i1376 to i64
  %arrayidx261 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 %idxprom260
  br label %if.end357

cond.false262:                                    ; preds = %if.else245
  %arrayidx272 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 %indvars.iv1532
  br label %if.end357

land.lhs.true283:                                 ; preds = %land.lhs.true193
  %69 = load i32, ptr %structure, align 8
  %70 = load i32, ptr %26, align 8
  %cmp286.not = icmp eq i32 %69, %70
  br i1 %cmp286.not, label %if.end357, label %land.lhs.true288

land.lhs.true288:                                 ; preds = %land.lhs.true283
  %coded_frame = getelementptr inbounds i8, ptr %26, i64 96
  %71 = load i32, ptr %coded_frame, align 8
  %tobool290.not = icmp eq i32 %71, 0
  br i1 %tobool290.not, label %if.end357, label %if.then291

if.then291:                                       ; preds = %land.lhs.true288
  %cmp293 = icmp eq i32 %69, 1
  %frame313 = getelementptr inbounds i8, ptr %26, i64 240
  %72 = load ptr, ptr %frame313, align 8
  %add317 = add nsw i32 %28, %j0.01517
  br i1 %cmp293, label %if.then295, label %if.else324

if.then295:                                       ; preds = %if.then291
  %top_field314 = getelementptr inbounds i8, ptr %72, i64 224
  %73 = load ptr, ptr %top_field314, align 8
  %mv_info315 = getelementptr inbounds i8, ptr %73, i64 152
  %74 = load ptr, ptr %mv_info315, align 8
  br i1 %tobool68.not, label %cond.false311, label %cond.true299

cond.true299:                                     ; preds = %if.then295
  %and1.i1377 = and i32 %add317, -2
  %and.i1378 = lshr i32 %add317, 1
  %and.lobit.i1379 = and i32 %and.i1378, 1
  %cond.i1380 = or disjoint i32 %and.lobit.i1379, %and1.i1377
  %idxprom306 = sext i32 %cond.i1380 to i64
  %arrayidx307 = getelementptr inbounds ptr, ptr %74, i64 %idxprom306
  %75 = load ptr, ptr %arrayidx307, align 8
  %76 = trunc nsw i64 %indvars.iv1532 to i32
  %and1.i1381 = and i32 %76, -2
  %and.i1382 = lshr i32 %76, 1
  %and.lobit.i1383 = and i32 %and.i1382, 1
  %cond.i1384 = or disjoint i32 %and.lobit.i1383, %and1.i1381
  %idxprom309 = sext i32 %cond.i1384 to i64
  %arrayidx310 = getelementptr inbounds %struct.pic_motion_params, ptr %75, i64 %idxprom309
  br label %if.end357

cond.false311:                                    ; preds = %if.then295
  %idxprom318 = sext i32 %add317 to i64
  %arrayidx319 = getelementptr inbounds ptr, ptr %74, i64 %idxprom318
  %77 = load ptr, ptr %arrayidx319, align 8
  %arrayidx321 = getelementptr inbounds %struct.pic_motion_params, ptr %77, i64 %indvars.iv1532
  br label %if.end357

if.else324:                                       ; preds = %if.then291
  %bottom_field344 = getelementptr inbounds i8, ptr %72, i64 232
  %78 = load ptr, ptr %bottom_field344, align 8
  %mv_info345 = getelementptr inbounds i8, ptr %78, i64 152
  %79 = load ptr, ptr %mv_info345, align 8
  br i1 %tobool68.not, label %cond.false341, label %cond.true328

cond.true328:                                     ; preds = %if.else324
  %and1.i1385 = and i32 %add317, -2
  %and.i1386 = lshr i32 %add317, 1
  %and.lobit.i1387 = and i32 %and.i1386, 1
  %cond.i1388 = or disjoint i32 %and.lobit.i1387, %and1.i1385
  %idxprom336 = sext i32 %cond.i1388 to i64
  %arrayidx337 = getelementptr inbounds ptr, ptr %79, i64 %idxprom336
  %80 = load ptr, ptr %arrayidx337, align 8
  %81 = trunc nsw i64 %indvars.iv1532 to i32
  %and1.i1389 = and i32 %81, -2
  %and.i1390 = lshr i32 %81, 1
  %and.lobit.i1391 = and i32 %and.i1390, 1
  %cond.i1392 = or disjoint i32 %and.lobit.i1391, %and1.i1389
  %idxprom339 = sext i32 %cond.i1392 to i64
  %arrayidx340 = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %idxprom339
  br label %if.end357

cond.false341:                                    ; preds = %if.else324
  %idxprom348 = sext i32 %add317 to i64
  %arrayidx349 = getelementptr inbounds ptr, ptr %79, i64 %idxprom348
  %82 = load ptr, ptr %arrayidx349, align 8
  %arrayidx351 = getelementptr inbounds %struct.pic_motion_params, ptr %82, i64 %indvars.iv1532
  br label %if.end357

if.end357:                                        ; preds = %land.lhs.true195, %land.lhs.true, %land.lhs.true96, %if.else190, %cond.true328, %cond.false341, %cond.true299, %cond.false311, %cond.true249, %cond.false262, %cond.true219, %cond.false232, %cond.true161, %cond.false175, %cond.true130, %cond.false144, %land.lhs.true288, %land.lhs.true283, %if.then89
  %colocated.0 = phi ptr [ %cond87, %if.then89 ], [ %cond87, %land.lhs.true288 ], [ %cond87, %land.lhs.true283 ], [ %arrayidx143, %cond.true130 ], [ %arrayidx155, %cond.false144 ], [ %arrayidx174, %cond.true161 ], [ %arrayidx186, %cond.false175 ], [ %arrayidx231, %cond.true219 ], [ %arrayidx242, %cond.false232 ], [ %arrayidx261, %cond.true249 ], [ %arrayidx272, %cond.false262 ], [ %arrayidx310, %cond.true299 ], [ %arrayidx321, %cond.false311 ], [ %arrayidx340, %cond.true328 ], [ %arrayidx351, %cond.false341 ], [ %cond87, %if.else190 ], [ %cond87, %land.lhs.true96 ], [ %cond87, %land.lhs.true ], [ %cond87, %land.lhs.true195 ]
  %ref_idx358 = getelementptr inbounds i8, ptr %colocated.0, i64 24
  %83 = load i8, ptr %ref_idx358, align 8
  %cmp361 = icmp eq i8 %83, -1
  %idxprom365 = zext i1 %cmp361 to i64
  %arrayidx366 = getelementptr inbounds [2 x i8], ptr %ref_idx358, i64 0, i64 %idxprom365
  %84 = load i8, ptr %arrayidx366, align 1
  %cmp368 = icmp eq i8 %84, -1
  br i1 %cmp368, label %if.then370, label %if.else405

if.then370:                                       ; preds = %if.end357
  %85 = load i32, ptr %block_y547, align 4
  %add371 = add nsw i32 %85, %j0.01517
  %add3751508 = add i32 %add543, %85
  %cmp3761509 = icmp slt i32 %add371, %add3751508
  br i1 %cmp3761509, label %for.cond379.preheader.lr.ph, label %if.end1008

for.cond379.preheader.lr.ph:                      ; preds = %if.then370
  %86 = add nsw i64 %indvars.iv1532, %12
  br i1 %cmp3811506, label %for.cond379.preheader.us.preheader, label %if.end1008

for.cond379.preheader.us.preheader:               ; preds = %for.cond379.preheader.lr.ph
  %87 = sext i32 %85 to i64
  %88 = add nsw i64 %indvars.iv1542, %87
  br label %for.cond379.preheader.us

for.cond379.preheader.us:                         ; preds = %for.cond379.preheader.us.preheader, %for.cond379.for.inc402_crit_edge.us
  %indvars.iv1544 = phi i64 [ %88, %for.cond379.preheader.us.preheader ], [ %indvars.iv.next1545, %for.cond379.for.inc402_crit_edge.us ]
  br label %for.body383.us

for.body383.us:                                   ; preds = %for.cond379.preheader.us, %for.body383.us
  %indvars.iv1537 = phi i64 [ %indvars.iv1532, %for.cond379.preheader.us ], [ %indvars.iv.next1538, %for.body383.us ]
  %89 = load ptr, ptr %mv_info579, align 8
  %arrayidx387.us = getelementptr inbounds ptr, ptr %89, i64 %indvars.iv1544
  %90 = load ptr, ptr %arrayidx387.us, align 8
  %arrayidx389.us = getelementptr inbounds %struct.pic_motion_params, ptr %90, i64 %indvars.iv1537
  %91 = load ptr, ptr %4, align 8
  store ptr %91, ptr %arrayidx389.us, align 8
  %92 = load ptr, ptr %5, align 8
  %arrayidx394.us = getelementptr inbounds i8, ptr %arrayidx389.us, i64 8
  store ptr %92, ptr %arrayidx394.us, align 8
  %mv.us = getelementptr inbounds i8, ptr %arrayidx389.us, i64 16
  %indvars.iv.next1538 = add nsw i64 %indvars.iv1537, 1
  %cmp381.us = icmp slt i64 %indvars.iv.next1538, %86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %mv.us, i8 0, i64 10, i1 false)
  br i1 %cmp381.us, label %for.body383.us, label %for.cond379.for.inc402_crit_edge.us

for.cond379.for.inc402_crit_edge.us:              ; preds = %for.body383.us
  %indvars.iv.next1545 = add nsw i64 %indvars.iv1544, 1
  %93 = load i32, ptr %block_y547, align 4
  %add375.us = add i32 %add543, %93
  %94 = sext i32 %add375.us to i64
  %cmp376.us = icmp slt i64 %indvars.iv.next1545, %94
  br i1 %cmp376.us, label %for.cond379.preheader.us, label %if.end1008

if.else405:                                       ; preds = %if.end357
  br i1 %tobool88.not, label %land.lhs.true431, label %land.lhs.true408

land.lhs.true408:                                 ; preds = %if.else405
  %95 = load i32, ptr %mb_field, align 8
  %tobool410.not = icmp eq i32 %95, 0
  %arrayidx424 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom365
  %96 = load ptr, ptr %arrayidx424, align 8
  %97 = load i32, ptr %96, align 8
  %cmp426.not = icmp eq i32 %97, 0
  br i1 %tobool410.not, label %land.lhs.true421, label %land.lhs.true411

land.lhs.true411:                                 ; preds = %land.lhs.true408
  br i1 %cmp426.not, label %if.then453, label %if.else508

land.lhs.true421:                                 ; preds = %land.lhs.true408
  br i1 %cmp426.not, label %if.else508, label %if.then453

land.lhs.true431:                                 ; preds = %if.else405
  %98 = load i32, ptr %field_pic_flag, align 8
  switch i32 %98, label %if.else508 [
    i32 0, label %land.lhs.true435
    i32 1, label %land.lhs.true446
  ]

land.lhs.true435:                                 ; preds = %land.lhs.true431
  %arrayidx438 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom365
  %99 = load ptr, ptr %arrayidx438, align 8
  %100 = load i32, ptr %99, align 8
  %cmp440.not = icmp eq i32 %100, 0
  br i1 %cmp440.not, label %if.else508, label %if.then453

land.lhs.true446:                                 ; preds = %land.lhs.true431
  %arrayidx449 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom365
  %101 = load ptr, ptr %arrayidx449, align 8
  %102 = load i32, ptr %101, align 8
  %cmp451 = icmp eq i32 %102, 0
  br i1 %cmp451, label %if.then453, label %if.else508

if.then453:                                       ; preds = %land.lhs.true446, %land.lhs.true435, %land.lhs.true421, %land.lhs.true411
  %103 = phi ptr [ %101, %land.lhs.true446 ], [ %99, %land.lhs.true435 ], [ %96, %land.lhs.true421 ], [ %96, %land.lhs.true411 ]
  %104 = load i32, ptr %num_ref_idx_active, align 8
  %105 = load i8, ptr %arrayidx458, align 1
  %conv459 = sext i8 %105 to i32
  %cond.i1393 = tail call noundef i32 @llvm.smin.i32(i32 %104, i32 %conv459)
  %cmp4611490 = icmp sgt i32 %cond.i1393, 0
  br i1 %cmp4611490, label %for.body463.lr.ph, label %for.cond542.preheader

for.body463.lr.ph:                                ; preds = %if.then453
  %106 = load ptr, ptr %arrayidx13, align 8
  %wide.trip.count = zext nneg i32 %cond.i1393 to i64
  br label %for.body463

for.body463:                                      ; preds = %for.body463.lr.ph, %if.else503
  %indvars.iv = phi i64 [ 0, %for.body463.lr.ph ], [ %indvars.iv.next, %if.else503 ]
  %arrayidx469 = getelementptr inbounds ptr, ptr %106, i64 %indvars.iv
  %107 = load ptr, ptr %arrayidx469, align 8
  %top_field470 = getelementptr inbounds i8, ptr %107, i64 224
  %108 = load ptr, ptr %top_field470, align 8
  %cmp474 = icmp eq ptr %108, %103
  br i1 %cmp474, label %if.end538, label %lor.lhs.false476

lor.lhs.false476:                                 ; preds = %for.body463
  %bottom_field483 = getelementptr inbounds i8, ptr %107, i64 232
  %109 = load ptr, ptr %bottom_field483, align 8
  %cmp487 = icmp eq ptr %109, %103
  br i1 %cmp487, label %if.end538, label %lor.lhs.false489

lor.lhs.false489:                                 ; preds = %lor.lhs.false476
  %frame496 = getelementptr inbounds i8, ptr %107, i64 240
  %110 = load ptr, ptr %frame496, align 8
  %cmp500 = icmp eq ptr %110, %103
  br i1 %cmp500, label %if.end538, label %if.else503

if.else503:                                       ; preds = %lor.lhs.false489
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.then1005, label %for.body463

if.else508:                                       ; preds = %land.lhs.true431, %land.lhs.true435, %land.lhs.true421, %land.lhs.true411, %land.lhs.true446
  %111 = load i32, ptr %num_ref_idx_active, align 8
  %112 = load i8, ptr %arrayidx458, align 1
  %conv516 = sext i8 %112 to i32
  %cond.i1394 = tail call noundef i32 @llvm.smin.i32(i32 %111, i32 %conv516)
  %cmp5181495 = icmp sgt i32 %cond.i1394, 0
  br i1 %cmp5181495, label %for.body520.lr.ph, label %for.cond542.preheader

for.body520.lr.ph:                                ; preds = %if.else508
  %113 = load ptr, ptr %arrayidx13, align 8
  %arrayidx529 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom365
  %114 = load ptr, ptr %arrayidx529, align 8
  %wide.trip.count1528 = zext nneg i32 %cond.i1394 to i64
  br label %for.body520

for.body520:                                      ; preds = %for.body520.lr.ph, %if.else533
  %indvars.iv1525 = phi i64 [ 0, %for.body520.lr.ph ], [ %indvars.iv.next1526, %if.else533 ]
  %arrayidx526 = getelementptr inbounds ptr, ptr %113, i64 %indvars.iv1525
  %115 = load ptr, ptr %arrayidx526, align 8
  %cmp530 = icmp eq ptr %115, %114
  br i1 %cmp530, label %if.end538, label %if.else533

if.else533:                                       ; preds = %for.body520
  %indvars.iv.next1526 = add nuw nsw i64 %indvars.iv1525, 1
  %exitcond1529.not = icmp eq i64 %indvars.iv.next1526, %wide.trip.count1528
  br i1 %exitcond1529.not, label %if.then1005, label %for.body520

if.end538:                                        ; preds = %lor.lhs.false489, %lor.lhs.false476, %for.body463, %for.body520
  %indvars.iv.lcssa.sink = phi i64 [ %indvars.iv1525, %for.body520 ], [ %indvars.iv, %for.body463 ], [ %indvars.iv, %lor.lhs.false476 ], [ %indvars.iv, %lor.lhs.false489 ]
  %116 = trunc nuw nsw i64 %indvars.iv.lcssa.sink to i32
  br label %for.cond542.preheader

for.cond542.preheader:                            ; preds = %if.end538, %if.then453, %if.else508
  %mapped_idx.21560 = phi i32 [ %116, %if.end538 ], [ -1, %if.else508 ], [ -1, %if.then453 ]
  br i1 %cmp5441504, label %for.body546.lr.ph, label %if.end1008

for.body546.lr.ph:                                ; preds = %for.cond542.preheader
  %117 = add nsw i64 %indvars.iv1532, %12
  %idxprom914 = sext i32 %mapped_idx.21560 to i64
  %arrayidx915 = getelementptr inbounds [6 x [32 x i32]], ptr %mvscale, i64 0, i64 %conv11, i64 %idxprom914
  %conv916 = trunc i32 %mapped_idx.21560 to i8
  %arrayidx922 = getelementptr inbounds ptr, ptr %4, i64 %idxprom914
  br i1 %cmp5531499, label %for.body546.us, label %if.end1008

for.body546.us:                                   ; preds = %for.body546.lr.ph, %for.cond551.for.inc999_crit_edge.us
  %j.01505.us = phi i32 [ %inc1000.us, %for.cond551.for.inc999_crit_edge.us ], [ %j0.01517, %for.body546.lr.ph ]
  %118 = load i32, ptr %block_y547, align 4
  %add548.us = add nsw i32 %118, %j.01505.us
  %119 = load i32, ptr %block_y_aff, align 8
  %add550.us = add nsw i32 %119, %j.01505.us
  %and1.i1395.us = and i32 %add550.us, -2
  %and.i1396.us = lshr i32 %add550.us, 1
  %and.lobit.i1397.us = and i32 %and.i1396.us, 1
  %cond.i1398.us = or disjoint i32 %and.lobit.i1397.us, %and1.i1395.us
  %idxprom564.us = sext i32 %cond.i1398.us to i64
  %idxprom572.us = sext i32 %add550.us to i64
  %idxprom580.us = sext i32 %add548.us to i64
  %shr669.us = ashr i32 %add550.us, 1
  %idxprom670.us = sext i32 %shr669.us to i64
  br label %for.body555.us

for.body555.us:                                   ; preds = %for.body546.us, %if.end995.us
  %indvars.iv1534 = phi i64 [ %indvars.iv1532, %for.body546.us ], [ %indvars.iv.next1535, %if.end995.us ]
  %120 = load ptr, ptr %active_sps, align 8
  %direct_8x8_inference_flag558.us = getelementptr inbounds i8, ptr %120, i64 3144
  %121 = load i32, ptr %direct_8x8_inference_flag558.us, align 4
  %tobool559.not.us = icmp eq i32 %121, 0
  %122 = load ptr, ptr %5, align 8
  %mv_info571.us = getelementptr inbounds i8, ptr %122, i64 152
  %123 = load ptr, ptr %mv_info571.us, align 8
  br i1 %tobool559.not.us, label %cond.false569.us, label %cond.true560.us

cond.true560.us:                                  ; preds = %for.body555.us
  %arrayidx565.us = getelementptr inbounds ptr, ptr %123, i64 %idxprom564.us
  %124 = load ptr, ptr %arrayidx565.us, align 8
  %125 = trunc nsw i64 %indvars.iv1534 to i32
  %and1.i1399.us = and i32 %125, -2
  %and.i1400.us = lshr i32 %125, 1
  %and.lobit.i1401.us = and i32 %and.i1400.us, 1
  %cond.i1402.us = or disjoint i32 %and.lobit.i1401.us, %and1.i1399.us
  %idxprom567.us = sext i32 %cond.i1402.us to i64
  %arrayidx568.us = getelementptr inbounds %struct.pic_motion_params, ptr %124, i64 %idxprom567.us
  br label %cond.end576.us

cond.false569.us:                                 ; preds = %for.body555.us
  %arrayidx573.us = getelementptr inbounds ptr, ptr %123, i64 %idxprom572.us
  %126 = load ptr, ptr %arrayidx573.us, align 8
  %arrayidx575.us = getelementptr inbounds %struct.pic_motion_params, ptr %126, i64 %indvars.iv1534
  br label %cond.end576.us

cond.end576.us:                                   ; preds = %cond.false569.us, %cond.true560.us
  %cond577.us = phi ptr [ %arrayidx568.us, %cond.true560.us ], [ %arrayidx575.us, %cond.false569.us ]
  %127 = load ptr, ptr %mv_info579, align 8
  %arrayidx581.us = getelementptr inbounds ptr, ptr %127, i64 %idxprom580.us
  %128 = load ptr, ptr %arrayidx581.us, align 8
  %arrayidx583.us = getelementptr inbounds %struct.pic_motion_params, ptr %128, i64 %indvars.iv1534
  %129 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool585.not.us = icmp eq i32 %129, 0
  br i1 %tobool585.not.us, label %if.else689.us, label %if.then586.us

if.then586.us:                                    ; preds = %cond.end576.us
  %130 = load i32, ptr %mb_field, align 8
  %tobool588.not.us = icmp eq i32 %130, 0
  br i1 %tobool588.not.us, label %land.lhs.true589.us, label %land.lhs.true887.us

land.lhs.true589.us:                              ; preds = %if.then586.us
  %131 = load ptr, ptr %arrayidx92, align 8
  %132 = load ptr, ptr %131, align 8
  %iCodingType593.us = getelementptr inbounds i8, ptr %132, i64 388
  %133 = load i32, ptr %iCodingType593.us, align 4
  switch i32 %133, label %land.lhs.true858.us [
    i32 3, label %land.lhs.true596.us
    i32 1, label %if.then614.us
  ]

land.lhs.true596.us:                              ; preds = %land.lhs.true589.us
  %motion600.us = getelementptr inbounds i8, ptr %132, i64 184
  %134 = load ptr, ptr %motion600.us, align 8
  %135 = load i32, ptr %mbAddrX, align 8
  %idxprom603.us = sext i32 %135 to i64
  %arrayidx604.us = getelementptr inbounds i8, ptr %134, i64 %idxprom603.us
  %136 = load i8, ptr %arrayidx604.us, align 1
  %tobool606.not.us = icmp eq i8 %136, 0
  br i1 %tobool606.not.us, label %land.lhs.true858.us, label %if.then614.us

if.then614.us:                                    ; preds = %land.lhs.true596.us, %land.lhs.true589.us
  %137 = load i32, ptr %poc, align 4
  %138 = load ptr, ptr %arrayidx113, align 8
  %139 = load ptr, ptr %138, align 8
  %poc619.us = getelementptr inbounds i8, ptr %139, i64 4
  %140 = load i32, ptr %poc619.us, align 4
  %sub620.us = sub nsw i32 %137, %140
  %sub.i1403.us = tail call i32 @llvm.abs.i32(i32 %sub620.us, i1 true)
  %141 = load ptr, ptr %arrayidx119, align 8
  %142 = load ptr, ptr %141, align 8
  %poc626.us = getelementptr inbounds i8, ptr %142, i64 4
  %143 = load i32, ptr %poc626.us, align 4
  %sub627.us = sub nsw i32 %137, %143
  %sub.i1404.us = tail call i32 @llvm.abs.i32(i32 %sub627.us, i1 true)
  %cmp629.us = icmp ugt i32 %sub.i1403.us, %sub.i1404.us
  br i1 %cmp629.us, label %if.then631.us, label %if.else659.us

if.else659.us:                                    ; preds = %if.then614.us
  %mv_info679.us = getelementptr inbounds i8, ptr %139, i64 152
  %144 = load ptr, ptr %mv_info679.us, align 8
  %arrayidx682.us = getelementptr inbounds ptr, ptr %144, i64 %idxprom670.us
  %145 = load ptr, ptr %arrayidx682.us, align 8
  br i1 %tobool559.not.us, label %cond.false675.us, label %cond.true663.us

cond.true663.us:                                  ; preds = %if.else659.us
  %146 = trunc nsw i64 %indvars.iv1534 to i32
  %and1.i1417.us = and i32 %146, -2
  %and.i1418.us = lshr i32 %146, 1
  %and.lobit.i1419.us = and i32 %and.i1418.us, 1
  %cond.i1420.us = or disjoint i32 %and.lobit.i1419.us, %and1.i1417.us
  %idxprom673.us = sext i32 %cond.i1420.us to i64
  %arrayidx674.us = getelementptr inbounds %struct.pic_motion_params, ptr %145, i64 %idxprom673.us
  br label %land.lhs.true858.us

cond.false675.us:                                 ; preds = %if.else659.us
  %arrayidx684.us = getelementptr inbounds %struct.pic_motion_params, ptr %145, i64 %indvars.iv1534
  br label %land.lhs.true858.us

if.then631.us:                                    ; preds = %if.then614.us
  %mv_info651.us = getelementptr inbounds i8, ptr %142, i64 152
  %147 = load ptr, ptr %mv_info651.us, align 8
  %arrayidx654.us = getelementptr inbounds ptr, ptr %147, i64 %idxprom670.us
  %148 = load ptr, ptr %arrayidx654.us, align 8
  br i1 %tobool559.not.us, label %cond.false647.us, label %cond.true635.us

cond.true635.us:                                  ; preds = %if.then631.us
  %149 = trunc nsw i64 %indvars.iv1534 to i32
  %and1.i1409.us = and i32 %149, -2
  %and.i1410.us = lshr i32 %149, 1
  %and.lobit.i1411.us = and i32 %and.i1410.us, 1
  %cond.i1412.us = or disjoint i32 %and.lobit.i1411.us, %and1.i1409.us
  %idxprom645.us = sext i32 %cond.i1412.us to i64
  %arrayidx646.us = getelementptr inbounds %struct.pic_motion_params, ptr %148, i64 %idxprom645.us
  br label %land.lhs.true858.us

cond.false647.us:                                 ; preds = %if.then631.us
  %arrayidx656.us = getelementptr inbounds %struct.pic_motion_params, ptr %148, i64 %indvars.iv1534
  br label %land.lhs.true858.us

land.lhs.true858.us:                              ; preds = %cond.false647.us, %cond.true635.us, %cond.false675.us, %cond.true663.us, %land.lhs.true596.us, %land.lhs.true589.us
  %colocated556.0.us.ph = phi ptr [ %cond577.us, %land.lhs.true589.us ], [ %cond577.us, %land.lhs.true596.us ], [ %arrayidx684.us, %cond.false675.us ], [ %arrayidx674.us, %cond.true663.us ], [ %arrayidx656.us, %cond.false647.us ], [ %arrayidx646.us, %cond.true635.us ]
  %mv848.us1562 = getelementptr inbounds i8, ptr %colocated556.0.us.ph, i64 16
  %arrayidx850.us1563 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv848.us1562, i64 0, i64 %idxprom365
  %mv_y851.us1564 = getelementptr inbounds i8, ptr %arrayidx850.us1563, i64 2
  %150 = load i16, ptr %mv_y851.us1564, align 2
  %conv852.us1565 = sext i16 %150 to i32
  %arrayidx861.us = getelementptr inbounds [2 x ptr], ptr %colocated556.0.us.ph, i64 0, i64 %idxprom365
  %151 = load ptr, ptr %arrayidx861.us, align 8
  %152 = load i32, ptr %151, align 8
  %cmp863.not.us = icmp eq i32 %152, 0
  br i1 %cmp863.not.us, label %if.end910.us, label %if.then879.us

land.lhs.true887.us:                              ; preds = %if.then586.us
  %mv848.us = getelementptr inbounds i8, ptr %cond577.us, i64 16
  %arrayidx850.us = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv848.us, i64 0, i64 %idxprom365
  %mv_y851.us = getelementptr inbounds i8, ptr %arrayidx850.us, i64 2
  %153 = load i16, ptr %mv_y851.us, align 2
  %conv852.us = sext i16 %153 to i32
  %arrayidx890.us = getelementptr inbounds [2 x ptr], ptr %cond577.us, i64 0, i64 %idxprom365
  %154 = load ptr, ptr %arrayidx890.us, align 8
  %155 = load i32, ptr %154, align 8
  %cmp892.us = icmp eq i32 %155, 0
  br i1 %cmp892.us, label %if.then908.us, label %if.end910.us

if.else689.us:                                    ; preds = %cond.end576.us
  %frame_mbs_only_flag691.us = getelementptr inbounds i8, ptr %120, i64 3136
  %156 = load i32, ptr %frame_mbs_only_flag691.us, align 4
  %tobool692.not.us = icmp eq i32 %156, 0
  %.pre1552 = load i32, ptr %field_pic_flag, align 8
  br i1 %tobool692.not.us, label %land.lhs.true693.us, label %land.lhs.true868.us

land.lhs.true693.us:                              ; preds = %if.else689.us
  %tobool695.not.us = icmp eq i32 %.pre1552, 0
  br i1 %tobool695.not.us, label %land.lhs.true696.us, label %land.lhs.true778.us

land.lhs.true696.us:                              ; preds = %land.lhs.true693.us
  %157 = load ptr, ptr %arrayidx92, align 8
  %158 = load ptr, ptr %157, align 8
  %iCodingType700.us = getelementptr inbounds i8, ptr %158, i64 388
  %159 = load i32, ptr %iCodingType700.us, align 4
  %cmp701.not.us = icmp eq i32 %159, 0
  br i1 %cmp701.not.us, label %land.lhs.true868.us.thread1586, label %if.then703.us

if.then703.us:                                    ; preds = %land.lhs.true696.us
  %160 = load i32, ptr %poc, align 4
  %bottom_field706.us = getelementptr inbounds i8, ptr %122, i64 232
  %161 = load ptr, ptr %bottom_field706.us, align 8
  %poc707.us = getelementptr inbounds i8, ptr %161, i64 4
  %162 = load i32, ptr %poc707.us, align 4
  %sub708.us = sub nsw i32 %160, %162
  %sub.i1421.us = tail call i32 @llvm.abs.i32(i32 %sub708.us, i1 true)
  %top_field712.us = getelementptr inbounds i8, ptr %122, i64 224
  %163 = load ptr, ptr %top_field712.us, align 8
  %poc713.us = getelementptr inbounds i8, ptr %163, i64 4
  %164 = load i32, ptr %poc713.us, align 4
  %sub714.us = sub nsw i32 %160, %164
  %sub.i1422.us = tail call i32 @llvm.abs.i32(i32 %sub714.us, i1 true)
  %cmp716.us = icmp ugt i32 %sub.i1421.us, %sub.i1422.us
  br i1 %cmp716.us, label %if.then718.us, label %if.else744.us

if.else744.us:                                    ; preds = %if.then703.us
  %mv_info762.us = getelementptr inbounds i8, ptr %161, i64 152
  %165 = load ptr, ptr %mv_info762.us, align 8
  %arrayidx765.us = getelementptr inbounds ptr, ptr %165, i64 %idxprom670.us
  %166 = load ptr, ptr %arrayidx765.us, align 8
  br i1 %tobool559.not.us, label %cond.false759.us, label %cond.true748.us

cond.true748.us:                                  ; preds = %if.else744.us
  %167 = trunc nsw i64 %indvars.iv1534 to i32
  %and1.i1435.us = and i32 %167, -2
  %and.i1436.us = lshr i32 %167, 1
  %and.lobit.i1437.us = and i32 %and.i1436.us, 1
  %cond.i1438.us = or disjoint i32 %and.lobit.i1437.us, %and1.i1435.us
  %idxprom757.us = sext i32 %cond.i1438.us to i64
  %arrayidx758.us = getelementptr inbounds %struct.pic_motion_params, ptr %166, i64 %idxprom757.us
  br label %land.lhs.true868.us.thread1586

cond.false759.us:                                 ; preds = %if.else744.us
  %arrayidx767.us = getelementptr inbounds %struct.pic_motion_params, ptr %166, i64 %indvars.iv1534
  br label %land.lhs.true868.us.thread1586

if.then718.us:                                    ; preds = %if.then703.us
  %mv_info736.us = getelementptr inbounds i8, ptr %163, i64 152
  %168 = load ptr, ptr %mv_info736.us, align 8
  %arrayidx739.us = getelementptr inbounds ptr, ptr %168, i64 %idxprom670.us
  %169 = load ptr, ptr %arrayidx739.us, align 8
  br i1 %tobool559.not.us, label %cond.false733.us, label %cond.true722.us

cond.true722.us:                                  ; preds = %if.then718.us
  %170 = trunc nsw i64 %indvars.iv1534 to i32
  %and1.i1427.us = and i32 %170, -2
  %and.i1428.us = lshr i32 %170, 1
  %and.lobit.i1429.us = and i32 %and.i1428.us, 1
  %cond.i1430.us = or disjoint i32 %and.lobit.i1429.us, %and1.i1427.us
  %idxprom731.us = sext i32 %cond.i1430.us to i64
  %arrayidx732.us = getelementptr inbounds %struct.pic_motion_params, ptr %169, i64 %idxprom731.us
  br label %land.lhs.true868.us.thread1586

cond.false733.us:                                 ; preds = %if.then718.us
  %arrayidx741.us = getelementptr inbounds %struct.pic_motion_params, ptr %169, i64 %indvars.iv1534
  br label %land.lhs.true868.us.thread1586

land.lhs.true778.us:                              ; preds = %land.lhs.true693.us
  %171 = load i32, ptr %structure, align 8
  %172 = load i32, ptr %122, align 8
  %cmp782.not.us = icmp eq i32 %171, %172
  br i1 %cmp782.not.us, label %land.lhs.true868.us.thread, label %land.lhs.true784.us

land.lhs.true784.us:                              ; preds = %land.lhs.true778.us
  %coded_frame786.us = getelementptr inbounds i8, ptr %122, i64 96
  %173 = load i32, ptr %coded_frame786.us, align 8
  %tobool787.not.us = icmp eq i32 %173, 0
  br i1 %tobool787.not.us, label %land.lhs.true868.us.thread, label %if.then788.us

if.then788.us:                                    ; preds = %land.lhs.true784.us
  %cmp790.us = icmp eq i32 %171, 1
  %frame809.us = getelementptr inbounds i8, ptr %122, i64 240
  %174 = load ptr, ptr %frame809.us, align 8
  br i1 %cmp790.us, label %if.then792.us, label %if.else818.us

if.else818.us:                                    ; preds = %if.then788.us
  %bottom_field836.us = getelementptr inbounds i8, ptr %174, i64 232
  %175 = load ptr, ptr %bottom_field836.us, align 8
  %mv_info837.us = getelementptr inbounds i8, ptr %175, i64 152
  %176 = load ptr, ptr %mv_info837.us, align 8
  br i1 %tobool559.not.us, label %cond.false833.us, label %cond.true822.us

cond.true822.us:                                  ; preds = %if.else818.us
  %arrayidx829.us = getelementptr inbounds ptr, ptr %176, i64 %idxprom564.us
  %177 = load ptr, ptr %arrayidx829.us, align 8
  %178 = trunc nsw i64 %indvars.iv1534 to i32
  %and1.i1451.us = and i32 %178, -2
  %and.i1452.us = lshr i32 %178, 1
  %and.lobit.i1453.us = and i32 %and.i1452.us, 1
  %cond.i1454.us = or disjoint i32 %and.lobit.i1453.us, %and1.i1451.us
  %idxprom831.us = sext i32 %cond.i1454.us to i64
  %arrayidx832.us = getelementptr inbounds %struct.pic_motion_params, ptr %177, i64 %idxprom831.us
  br label %land.lhs.true868.us.thread

cond.false833.us:                                 ; preds = %if.else818.us
  %arrayidx839.us = getelementptr inbounds ptr, ptr %176, i64 %idxprom572.us
  %179 = load ptr, ptr %arrayidx839.us, align 8
  %arrayidx841.us = getelementptr inbounds %struct.pic_motion_params, ptr %179, i64 %indvars.iv1534
  br label %land.lhs.true868.us.thread

if.then792.us:                                    ; preds = %if.then788.us
  %top_field810.us = getelementptr inbounds i8, ptr %174, i64 224
  %180 = load ptr, ptr %top_field810.us, align 8
  %mv_info811.us = getelementptr inbounds i8, ptr %180, i64 152
  %181 = load ptr, ptr %mv_info811.us, align 8
  br i1 %tobool559.not.us, label %cond.false807.us, label %cond.true796.us

cond.true796.us:                                  ; preds = %if.then792.us
  %arrayidx803.us = getelementptr inbounds ptr, ptr %181, i64 %idxprom564.us
  %182 = load ptr, ptr %arrayidx803.us, align 8
  %183 = trunc nsw i64 %indvars.iv1534 to i32
  %and1.i1443.us = and i32 %183, -2
  %and.i1444.us = lshr i32 %183, 1
  %and.lobit.i1445.us = and i32 %and.i1444.us, 1
  %cond.i1446.us = or disjoint i32 %and.lobit.i1445.us, %and1.i1443.us
  %idxprom805.us = sext i32 %cond.i1446.us to i64
  %arrayidx806.us = getelementptr inbounds %struct.pic_motion_params, ptr %182, i64 %idxprom805.us
  br label %land.lhs.true868.us.thread

cond.false807.us:                                 ; preds = %if.then792.us
  %arrayidx813.us = getelementptr inbounds ptr, ptr %181, i64 %idxprom572.us
  %184 = load ptr, ptr %arrayidx813.us, align 8
  %arrayidx815.us = getelementptr inbounds %struct.pic_motion_params, ptr %184, i64 %indvars.iv1534
  br label %land.lhs.true868.us.thread

land.lhs.true868.us.thread:                       ; preds = %cond.false807.us, %cond.true796.us, %cond.false833.us, %cond.true822.us, %land.lhs.true784.us, %land.lhs.true778.us
  %colocated556.0.ph.us.ph = phi ptr [ %cond577.us, %land.lhs.true784.us ], [ %cond577.us, %land.lhs.true778.us ], [ %arrayidx806.us, %cond.true796.us ], [ %arrayidx815.us, %cond.false807.us ], [ %arrayidx832.us, %cond.true822.us ], [ %arrayidx841.us, %cond.false833.us ]
  %mv8481459.us1576 = getelementptr inbounds i8, ptr %colocated556.0.ph.us.ph, i64 16
  %arrayidx8501460.us1577 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv8481459.us1576, i64 0, i64 %idxprom365
  %mv_y8511461.us1578 = getelementptr inbounds i8, ptr %arrayidx8501460.us1577, i64 2
  %185 = load i16, ptr %mv_y8511461.us1578, align 2
  %conv8521462.us1579 = sext i16 %185 to i32
  br label %land.lhs.true897.us

land.lhs.true868.us.thread1586:                   ; preds = %cond.false733.us, %cond.true722.us, %cond.false759.us, %cond.true748.us, %land.lhs.true696.us
  %colocated556.0.ph.us.ph1585 = phi ptr [ %arrayidx732.us, %cond.true722.us ], [ %arrayidx741.us, %cond.false733.us ], [ %arrayidx758.us, %cond.true748.us ], [ %arrayidx767.us, %cond.false759.us ], [ %cond577.us, %land.lhs.true696.us ]
  %mv8481459.us1588 = getelementptr inbounds i8, ptr %colocated556.0.ph.us.ph1585, i64 16
  %arrayidx8501460.us1589 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv8481459.us1588, i64 0, i64 %idxprom365
  %mv_y8511461.us1590 = getelementptr inbounds i8, ptr %arrayidx8501460.us1589, i64 2
  %186 = load i16, ptr %mv_y8511461.us1590, align 2
  %conv8521462.us1591 = sext i16 %186 to i32
  br label %land.lhs.true872.us

land.lhs.true868.us:                              ; preds = %if.else689.us
  %mv8481459.us = getelementptr inbounds i8, ptr %cond577.us, i64 16
  %arrayidx8501460.us = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv8481459.us, i64 0, i64 %idxprom365
  %mv_y8511461.us = getelementptr inbounds i8, ptr %arrayidx8501460.us, i64 2
  %187 = load i16, ptr %mv_y8511461.us, align 2
  %conv8521462.us = sext i16 %187 to i32
  %cmp870.us = icmp eq i32 %.pre1552, 0
  br i1 %cmp870.us, label %land.lhs.true872.us, label %land.lhs.true897.us

land.lhs.true872.us:                              ; preds = %land.lhs.true868.us.thread1586, %land.lhs.true868.us
  %conv8521462.us1595 = phi i32 [ %conv8521462.us1591, %land.lhs.true868.us.thread1586 ], [ %conv8521462.us, %land.lhs.true868.us ]
  %arrayidx8501460.us1594 = phi ptr [ %arrayidx8501460.us1589, %land.lhs.true868.us.thread1586 ], [ %arrayidx8501460.us, %land.lhs.true868.us ]
  %colocated556.0.ph.us1593 = phi ptr [ %colocated556.0.ph.us.ph1585, %land.lhs.true868.us.thread1586 ], [ %cond577.us, %land.lhs.true868.us ]
  %arrayidx875.us = getelementptr inbounds [2 x ptr], ptr %colocated556.0.ph.us1593, i64 0, i64 %idxprom365
  %188 = load ptr, ptr %arrayidx875.us, align 8
  %189 = load i32, ptr %188, align 8
  %cmp877.not.us = icmp eq i32 %189, 0
  br i1 %cmp877.not.us, label %if.end910.us, label %if.then879.us

if.then879.us:                                    ; preds = %land.lhs.true872.us, %land.lhs.true858.us
  %conv8521468.us = phi i32 [ %conv8521462.us1595, %land.lhs.true872.us ], [ %conv852.us1565, %land.lhs.true858.us ]
  %arrayidx8501465.us = phi ptr [ %arrayidx8501460.us1594, %land.lhs.true872.us ], [ %arrayidx850.us1563, %land.lhs.true858.us ]
  %mul880.us = shl nsw i32 %conv8521468.us, 1
  br label %if.end910.us

land.lhs.true897.us:                              ; preds = %land.lhs.true868.us.thread, %land.lhs.true868.us
  %conv8521462.us1583 = phi i32 [ %conv8521462.us1579, %land.lhs.true868.us.thread ], [ %conv8521462.us, %land.lhs.true868.us ]
  %190 = phi i16 [ %185, %land.lhs.true868.us.thread ], [ %187, %land.lhs.true868.us ]
  %arrayidx8501460.us1582 = phi ptr [ %arrayidx8501460.us1577, %land.lhs.true868.us.thread ], [ %arrayidx8501460.us, %land.lhs.true868.us ]
  %colocated556.0.ph.us1581 = phi ptr [ %colocated556.0.ph.us.ph, %land.lhs.true868.us.thread ], [ %cond577.us, %land.lhs.true868.us ]
  %cmp899.us = icmp eq i32 %.pre1552, 1
  br i1 %cmp899.us, label %land.lhs.true901.us, label %if.end910.us

land.lhs.true901.us:                              ; preds = %land.lhs.true897.us
  %arrayidx904.us = getelementptr inbounds [2 x ptr], ptr %colocated556.0.ph.us1581, i64 0, i64 %idxprom365
  %191 = load ptr, ptr %arrayidx904.us, align 8
  %192 = load i32, ptr %191, align 8
  %cmp906.us = icmp eq i32 %192, 0
  br i1 %cmp906.us, label %if.then908.us, label %if.end910.us

if.then908.us:                                    ; preds = %land.lhs.true901.us, %land.lhs.true887.us
  %conv852146714721481.us = phi i16 [ %190, %land.lhs.true901.us ], [ %153, %land.lhs.true887.us ]
  %arrayidx850146614731479.us = phi ptr [ %arrayidx8501460.us1582, %land.lhs.true901.us ], [ %arrayidx850.us, %land.lhs.true887.us ]
  %div1486.us = sdiv i16 %conv852146714721481.us, 2
  %div.sext.us = sext i16 %div1486.us to i32
  br label %if.end910.us

if.end910.us:                                     ; preds = %land.lhs.true872.us, %land.lhs.true858.us, %if.then908.us, %land.lhs.true901.us, %land.lhs.true897.us, %if.then879.us, %land.lhs.true887.us
  %arrayidx8501464.us = phi ptr [ %arrayidx850146614731479.us, %if.then908.us ], [ %arrayidx8501460.us1582, %land.lhs.true901.us ], [ %arrayidx8501460.us1582, %land.lhs.true897.us ], [ %arrayidx8501465.us, %if.then879.us ], [ %arrayidx850.us, %land.lhs.true887.us ], [ %arrayidx850.us1563, %land.lhs.true858.us ], [ %arrayidx8501460.us1594, %land.lhs.true872.us ]
  %mv_y.0.us = phi i32 [ %div.sext.us, %if.then908.us ], [ %conv8521462.us1583, %land.lhs.true901.us ], [ %conv8521462.us1583, %land.lhs.true897.us ], [ %mul880.us, %if.then879.us ], [ %conv852.us, %land.lhs.true887.us ], [ %conv852.us1565, %land.lhs.true858.us ], [ %conv8521462.us1595, %land.lhs.true872.us ]
  %193 = load i32, ptr %arrayidx915, align 4
  %ref_idx917.us = getelementptr inbounds i8, ptr %arrayidx583.us, i64 24
  store i8 %conv916, ptr %ref_idx917.us, align 8
  %arrayidx920.us = getelementptr inbounds i8, ptr %arrayidx583.us, i64 25
  store i8 0, ptr %arrayidx920.us, align 1
  %194 = load ptr, ptr %arrayidx922, align 8
  store ptr %194, ptr %arrayidx583.us, align 8
  %195 = load ptr, ptr %5, align 8
  %arrayidx927.us = getelementptr inbounds i8, ptr %arrayidx583.us, i64 8
  store ptr %195, ptr %arrayidx927.us, align 8
  %cmp928.us = icmp eq i32 %193, 9999
  br i1 %cmp928.us, label %if.then939.us, label %lor.lhs.false930.us

lor.lhs.false930.us:                              ; preds = %if.end910.us
  %196 = load ptr, ptr %arrayidx13, align 8
  %arrayidx936.us = getelementptr inbounds ptr, ptr %196, i64 %idxprom914
  %197 = load ptr, ptr %arrayidx936.us, align 8
  %is_long_term.us = getelementptr inbounds i8, ptr %197, i64 40
  %198 = load i8, ptr %is_long_term.us, align 8
  %tobool938.not.us = icmp eq i8 %198, 0
  br i1 %tobool938.not.us, label %if.else952.us, label %if.then939.us

if.else952.us:                                    ; preds = %lor.lhs.false930.us
  %199 = load i16, ptr %arrayidx8501464.us, align 4
  %conv957.us = sext i16 %199 to i32
  %mul958.us = mul nsw i32 %193, %conv957.us
  %add959.us = add nsw i32 %mul958.us, 128
  %shr960.us = lshr i32 %add959.us, 8
  %conv961.us = trunc i32 %shr960.us to i16
  %mv962.us = getelementptr inbounds i8, ptr %arrayidx583.us, i64 16
  store i16 %conv961.us, ptr %mv962.us, align 8
  %mul965.us = mul nsw i32 %193, %mv_y.0.us
  %add966.us = add nsw i32 %mul965.us, 128
  %shr967.us = lshr i32 %add966.us, 8
  %conv968.us = trunc i32 %shr967.us to i16
  %mv_y971.us = getelementptr inbounds i8, ptr %arrayidx583.us, i64 18
  store i16 %conv968.us, ptr %mv_y971.us, align 2
  %200 = load i16, ptr %arrayidx8501464.us, align 4
  %sub981.us = sub i16 %conv961.us, %200
  %arrayidx984.us = getelementptr inbounds i8, ptr %arrayidx583.us, i64 20
  store i16 %sub981.us, ptr %arrayidx984.us, align 4
  %sub990.us = sub i32 %shr967.us, %mv_y.0.us
  %conv991.us = trunc i32 %sub990.us to i16
  %mv_y994.us = getelementptr inbounds i8, ptr %arrayidx583.us, i64 22
  store i16 %conv991.us, ptr %mv_y994.us, align 2
  br label %if.end995.us

if.then939.us:                                    ; preds = %lor.lhs.false930.us, %if.end910.us
  %201 = load i16, ptr %arrayidx8501464.us, align 4
  %mv943.us = getelementptr inbounds i8, ptr %arrayidx583.us, i64 16
  store i16 %201, ptr %mv943.us, align 8
  %conv946.us = trunc i32 %mv_y.0.us to i16
  %mv_y949.us = getelementptr inbounds i8, ptr %arrayidx583.us, i64 18
  store i16 %conv946.us, ptr %mv_y949.us, align 2
  %arrayidx951.us = getelementptr inbounds i8, ptr %arrayidx583.us, i64 20
  store i32 0, ptr %arrayidx951.us, align 4
  br label %if.end995.us

if.end995.us:                                     ; preds = %if.then939.us, %if.else952.us
  %indvars.iv.next1535 = add nsw i64 %indvars.iv1534, 1
  %cmp553.us = icmp slt i64 %indvars.iv.next1535, %117
  br i1 %cmp553.us, label %for.body555.us, label %for.cond551.for.inc999_crit_edge.us

for.cond551.for.inc999_crit_edge.us:              ; preds = %if.end995.us
  %inc1000.us = add nsw i32 %j.01505.us, 1
  %cmp544.us = icmp slt i32 %inc1000.us, %add543
  br i1 %cmp544.us, label %for.body546.us, label %if.end1008

if.then1005:                                      ; preds = %if.else503, %if.else533
  tail call void @error(ptr noundef nonnull @.str, i32 noundef -1111) #8
  br label %if.end1008

if.end1008:                                       ; preds = %for.cond551.for.inc999_crit_edge.us, %for.cond379.for.inc402_crit_edge.us, %for.body546.lr.ph, %for.cond379.preheader.lr.ph, %for.cond542.preheader, %if.then370, %if.then1005
  %indvars.iv.next1533 = add nsw i64 %indvars.iv1532, %12
  %202 = load i32, ptr %block_x, align 8
  %add64 = add i32 %add63, %202
  %203 = sext i32 %add64 to i64
  %cmp65 = icmp slt i64 %indvars.iv.next1533, %203
  br i1 %cmp65, label %for.body67, label %for.inc1012

for.inc1012:                                      ; preds = %if.end1008, %for.body56
  %204 = phi i32 [ %21, %for.body56 ], [ %202, %if.end1008 ]
  %cmp54 = icmp slt i32 %add543, %add53
  %indvars.iv.next1543 = add i64 %indvars.iv1542, %13
  br i1 %cmp54, label %for.body56, label %for.inc1016

for.inc1016:                                      ; preds = %for.inc1012, %for.body
  %indvars.iv.next1541 = add nuw nsw i64 %indvars.iv1540, 1
  %inc1017 = add nuw nsw i32 %k.01518, 1
  %exitcond1551.not = icmp eq i64 %indvars.iv.next1541, 4
  br i1 %exitcond1551.not, label %if.end1019, label %for.body

if.end1019:                                       ; preds = %for.inc1016, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_direct_mv_info_spatial_4x4(ptr noundef %currMB) #3 {
entry:
  %l0_rFrame = alloca i8, align 1
  %l1_rFrame = alloca i8, align 1
  %pmvl0 = alloca %struct.MotionVector, align 4
  %pmvl1 = alloca %struct.MotionVector, align 4
  %b8mode = getelementptr inbounds i8, ptr %currMB, i64 364
  %0 = load <4 x i8>, ptr %b8mode, align 4
  %1 = icmp eq <4 x i8> %0, zeroinitializer
  %2 = bitcast <4 x i1> %1 to i4
  %.not = icmp eq i4 %2, 0
  br i1 %.not, label %if.end284, label %if.then

if.then:                                          ; preds = %entry
  %p_Vid19 = getelementptr inbounds i8, ptr %currMB, i64 8
  %3 = load ptr, ptr %p_Vid19, align 8
  %4 = load ptr, ptr %currMB, align 8
  %dec_picture20 = getelementptr inbounds i8, ptr %3, i64 856456
  %5 = load ptr, ptr %dec_picture20, align 8
  %list_offset21 = getelementptr inbounds i8, ptr %currMB, i64 114
  %6 = load i16, ptr %list_offset21, align 2
  %conv22 = sext i16 %6 to i64
  %listX = getelementptr inbounds i8, ptr %4, i64 264
  %arrayidx23 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv22
  %7 = load ptr, ptr %arrayidx23, align 8
  %add25 = add nsw i64 %conv22, 1
  %arrayidx27 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add25
  %8 = load ptr, ptr %arrayidx27, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l0_rFrame) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_rFrame) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl1) #8
  call void @prepare_direct_params(ptr noundef nonnull %currMB, ptr noundef %5, ptr noundef nonnull %pmvl0, ptr noundef nonnull %pmvl1, ptr noundef nonnull %l0_rFrame, ptr noundef nonnull %l1_rFrame) #8
  %block_y_aff = getelementptr inbounds i8, ptr %currMB, i64 40
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %mv_info55 = getelementptr inbounds i8, ptr %5, i64 152
  br label %for.body

for.body:                                         ; preds = %if.then, %for.inc281
  %indvars.iv405 = phi i64 [ 0, %if.then ], [ %indvars.iv.next406, %for.inc281 ]
  %k.0401 = phi i32 [ 0, %if.then ], [ %inc282, %for.inc281 ]
  %9 = shl nuw i32 %k.0401, 1
  %10 = and i32 %9, 2
  %11 = zext nneg i32 %10 to i64
  %arrayidx32 = getelementptr inbounds [4 x i8], ptr %b8mode, i64 0, i64 %indvars.iv405
  %12 = load i8, ptr %arrayidx32, align 1
  %cmp34 = icmp eq i8 %12, 0
  br i1 %cmp34, label %if.then36, label %for.inc281

if.then36:                                        ; preds = %for.body
  %13 = trunc nuw nsw i64 %indvars.iv405 to i32
  %indvars.iv405.tr = trunc i64 %indvars.iv405 to i32
  %14 = shl i32 %indvars.iv405.tr, 1
  %mul = and i32 %14, 2
  %shr = and i32 %13, 2
  %add50 = add nuw nsw i32 %mul, 2
  %.pre = load i32, ptr %block_x, align 8
  %15 = or i32 %13, 1
  br label %for.body44

for.body44:                                       ; preds = %if.then36, %for.inc277
  %16 = phi i32 [ %.pre, %if.then36 ], [ %67, %for.inc277 ]
  %j.0400 = phi i32 [ %shr, %if.then36 ], [ %inc278, %for.inc277 ]
  %add47 = add nsw i32 %16, %mul
  %add51397 = add i32 %add50, %16
  %cmp52398 = icmp slt i32 %add47, %add51397
  br i1 %cmp52398, label %for.body54.lr.ph, label %for.inc277

for.body54.lr.ph:                                 ; preds = %for.body44
  %17 = load i32, ptr %block_y, align 4
  %add46 = add nsw i32 %17, %j.0400
  %idxprom56 = sext i32 %add46 to i64
  %18 = sext i32 %16 to i64
  %19 = add nsw i64 %11, %18
  br label %for.body54

for.body54:                                       ; preds = %for.body54.lr.ph, %if.end276
  %indvars.iv402 = phi i64 [ %19, %for.body54.lr.ph ], [ %indvars.iv.next403, %if.end276 ]
  %20 = load ptr, ptr %mv_info55, align 8
  %arrayidx57 = getelementptr inbounds ptr, ptr %20, i64 %idxprom56
  %21 = load ptr, ptr %arrayidx57, align 8
  %arrayidx59 = getelementptr inbounds %struct.pic_motion_params, ptr %21, i64 %indvars.iv402
  %22 = load i8, ptr %l0_rFrame, align 1
  %cmp61 = icmp eq i8 %22, 0
  %23 = load i8, ptr %l1_rFrame, align 1
  %cmp64 = icmp eq i8 %23, 0
  %or.cond = select i1 %cmp61, i1 true, i1 %cmp64
  br i1 %or.cond, label %if.then66, label %if.else186

if.then66:                                        ; preds = %for.body54
  %24 = load ptr, ptr %8, align 8
  %is_long_term.i = getelementptr inbounds i8, ptr %24, i64 40
  %25 = load i8, ptr %is_long_term.i, align 8
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.else.i, label %get_colocated_info_4x4.exit

if.else.i:                                        ; preds = %if.then66
  %26 = load i32, ptr %block_y_aff, align 8
  %add69 = add nsw i32 %26, %j.0400
  %mv_info.i = getelementptr inbounds i8, ptr %24, i64 152
  %27 = load ptr, ptr %mv_info.i, align 8
  %idxprom.i = sext i32 %add69 to i64
  %arrayidx.i = getelementptr inbounds ptr, ptr %27, i64 %idxprom.i
  %28 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx2.i = getelementptr inbounds %struct.pic_motion_params, ptr %28, i64 %indvars.iv402
  %ref_idx.i = getelementptr inbounds i8, ptr %arrayidx2.i, i64 24
  %29 = load i8, ptr %ref_idx.i, align 8
  switch i8 %29, label %get_colocated_info_4x4.exit [
    i8 0, label %land.lhs.true.i
    i8 -1, label %land.lhs.true22.i
  ]

land.lhs.true.i:                                  ; preds = %if.else.i
  %mv.i = getelementptr inbounds i8, ptr %arrayidx2.i, i64 16
  %30 = load i16, ptr %mv.i, align 8
  %31 = call i16 @llvm.abs.i16(i16 %30, i1 false)
  %cmp7.i = icmp ult i16 %31, 2
  br i1 %cmp7.i, label %land.lhs.true9.i, label %lor.rhs.thread.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %mv_y.i = getelementptr inbounds i8, ptr %arrayidx2.i, i64 18
  %32 = load i16, ptr %mv_y.i, align 2
  %33 = call i16 @llvm.abs.i16(i16 %32, i1 false)
  %cmp15.i = icmp ult i16 %33, 2
  br i1 %cmp15.i, label %get_colocated_info_4x4.exit, label %lor.rhs.thread.i

lor.rhs.thread.i:                                 ; preds = %land.lhs.true9.i, %land.lhs.true.i
  br label %get_colocated_info_4x4.exit

land.lhs.true22.i:                                ; preds = %if.else.i
  %arrayidx24.i = getelementptr inbounds i8, ptr %arrayidx2.i, i64 25
  %34 = load i8, ptr %arrayidx24.i, align 1
  %cmp26.i = icmp eq i8 %34, 0
  br i1 %cmp26.i, label %land.lhs.true28.i, label %get_colocated_info_4x4.exit

land.lhs.true28.i:                                ; preds = %land.lhs.true22.i
  %arrayidx30.i = getelementptr inbounds i8, ptr %arrayidx2.i, i64 20
  %35 = load i16, ptr %arrayidx30.i, align 4
  %36 = call i16 @llvm.abs.i16(i16 %35, i1 false)
  %cmp35.i = icmp ult i16 %36, 2
  br i1 %cmp35.i, label %land.rhs.i, label %get_colocated_info_4x4.exit

land.rhs.i:                                       ; preds = %land.lhs.true28.i
  %mv_y39.i = getelementptr inbounds i8, ptr %arrayidx2.i, i64 22
  %37 = load i16, ptr %mv_y39.i, align 2
  %38 = call i16 @llvm.abs.i16(i16 %37, i1 false)
  %cmp43.i = icmp ugt i16 %38, 1
  %39 = zext i1 %cmp43.i to i32
  br label %get_colocated_info_4x4.exit

get_colocated_info_4x4.exit:                      ; preds = %if.then66, %if.else.i, %land.lhs.true9.i, %lor.rhs.thread.i, %land.lhs.true22.i, %land.lhs.true28.i, %land.rhs.i
  %retval.0.i = phi i32 [ 1, %if.then66 ], [ 0, %land.lhs.true9.i ], [ 1, %land.lhs.true28.i ], [ 1, %land.lhs.true22.i ], [ %39, %land.rhs.i ], [ 1, %lor.rhs.thread.i ], [ 1, %if.else.i ]
  %cmp70 = icmp eq i32 %retval.0.i, 0
  %cmp73 = icmp eq i8 %23, -1
  br i1 %cmp73, label %if.then75, label %if.else103

if.then75:                                        ; preds = %get_colocated_info_4x4.exit
  br i1 %cmp70, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.then75
  %40 = load ptr, ptr %7, align 8
  store ptr %40, ptr %arrayidx59, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %arrayidx59, i64 8
  %arrayidx87 = getelementptr inbounds i8, ptr %arrayidx59, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %arrayidx81, i8 0, i64 17, i1 false)
  store i8 -1, ptr %arrayidx87, align 1
  br label %if.end276

if.else:                                          ; preds = %if.then75
  %idxprom89 = sext i8 %22 to i64
  %arrayidx90 = getelementptr inbounds ptr, ptr %7, i64 %idxprom89
  %41 = load ptr, ptr %arrayidx90, align 8
  store ptr %41, ptr %arrayidx59, align 8
  %arrayidx94 = getelementptr inbounds i8, ptr %arrayidx59, i64 8
  store ptr null, ptr %arrayidx94, align 8
  %mv95 = getelementptr inbounds i8, ptr %arrayidx59, i64 16
  %42 = load i32, ptr %pmvl0, align 4
  store i32 %42, ptr %mv95, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %arrayidx59, i64 20
  store i32 0, ptr %arrayidx98, align 4
  %ref_idx99 = getelementptr inbounds i8, ptr %arrayidx59, i64 24
  store i8 %22, ptr %ref_idx99, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %arrayidx59, i64 25
  store i8 -1, ptr %arrayidx102, align 1
  br label %if.end276

if.else103:                                       ; preds = %get_colocated_info_4x4.exit
  %cmp105 = icmp eq i8 %22, -1
  br i1 %cmp105, label %if.then107, label %if.else136

if.then107:                                       ; preds = %if.else103
  br i1 %cmp70, label %if.then109, label %if.else121

if.then109:                                       ; preds = %if.then107
  %arrayidx112 = getelementptr inbounds i8, ptr %arrayidx59, i64 8
  store ptr %24, ptr %arrayidx112, align 8
  %mv113 = getelementptr inbounds i8, ptr %arrayidx59, i64 16
  store i32 0, ptr %mv113, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %arrayidx59, i64 20
  store i32 0, ptr %arrayidx116, align 4
  %ref_idx117 = getelementptr inbounds i8, ptr %arrayidx59, i64 24
  store i8 -1, ptr %ref_idx117, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %arrayidx59, i64 25
  store i8 0, ptr %arrayidx120, align 1
  br label %if.end276

if.else121:                                       ; preds = %if.then107
  %idxprom123 = sext i8 %23 to i64
  %arrayidx124 = getelementptr inbounds ptr, ptr %8, i64 %idxprom123
  %43 = load ptr, ptr %arrayidx124, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %arrayidx59, i64 8
  store ptr %43, ptr %arrayidx126, align 8
  %mv127 = getelementptr inbounds i8, ptr %arrayidx59, i64 16
  store i32 0, ptr %mv127, align 8
  %arrayidx130 = getelementptr inbounds i8, ptr %arrayidx59, i64 20
  %44 = load i32, ptr %pmvl1, align 4
  store i32 %44, ptr %arrayidx130, align 4
  %ref_idx131 = getelementptr inbounds i8, ptr %arrayidx59, i64 24
  store i8 -1, ptr %ref_idx131, align 8
  %45 = load i8, ptr %l1_rFrame, align 1
  %arrayidx134 = getelementptr inbounds i8, ptr %arrayidx59, i64 25
  store i8 %45, ptr %arrayidx134, align 1
  br label %if.end276

if.else136:                                       ; preds = %if.else103
  %or.cond285 = select i1 %cmp61, i1 %cmp70, i1 false
  %idxprom151 = sext i8 %22 to i64
  %46 = load i32, ptr %pmvl0, align 4
  %.sink411.in.idx = select i1 %or.cond285, i64 0, i64 %idxprom151
  %.sink411.in = getelementptr inbounds ptr, ptr %7, i64 %.sink411.in.idx
  %.sink410 = select i1 %or.cond285, i32 0, i32 %46
  %.sink411 = load ptr, ptr %.sink411.in, align 8
  store ptr %.sink411, ptr %arrayidx59, align 8
  %47 = getelementptr inbounds i8, ptr %arrayidx59, i64 16
  store i32 %.sink410, ptr %47, align 8
  %48 = getelementptr inbounds i8, ptr %arrayidx59, i64 24
  store i8 %22, ptr %48, align 8
  %49 = load i8, ptr %l1_rFrame, align 1
  %cmp161 = icmp eq i8 %49, 0
  %or.cond286 = select i1 %cmp161, i1 %cmp70, i1 false
  br i1 %or.cond286, label %if.then165, label %if.else173

if.then165:                                       ; preds = %if.else136
  %50 = load ptr, ptr %8, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %arrayidx59, i64 8
  store ptr %50, ptr %arrayidx168, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %arrayidx59, i64 20
  store i32 0, ptr %arrayidx170, align 4
  %arrayidx172 = getelementptr inbounds i8, ptr %arrayidx59, i64 25
  store i8 0, ptr %arrayidx172, align 1
  br label %if.end276

if.else173:                                       ; preds = %if.else136
  %idxprom175 = sext i8 %49 to i64
  %arrayidx176 = getelementptr inbounds ptr, ptr %8, i64 %idxprom175
  %51 = load ptr, ptr %arrayidx176, align 8
  %arrayidx178 = getelementptr inbounds i8, ptr %arrayidx59, i64 8
  store ptr %51, ptr %arrayidx178, align 8
  %arrayidx180 = getelementptr inbounds i8, ptr %arrayidx59, i64 20
  %52 = load i32, ptr %pmvl1, align 4
  store i32 %52, ptr %arrayidx180, align 4
  %arrayidx182 = getelementptr inbounds i8, ptr %arrayidx59, i64 25
  store i8 %49, ptr %arrayidx182, align 1
  br label %if.end276

if.else186:                                       ; preds = %for.body54
  %cmp193 = icmp slt i8 %22, 0
  %cmp197 = icmp slt i8 %23, 0
  %or.cond287 = select i1 %cmp193, i1 %cmp197, i1 false
  br i1 %or.cond287, label %if.then199, label %if.else214

if.then199:                                       ; preds = %if.else186
  %53 = load ptr, ptr %7, align 8
  store ptr %53, ptr %arrayidx59, align 8
  %54 = load ptr, ptr %8, align 8
  %arrayidx205 = getelementptr inbounds i8, ptr %arrayidx59, i64 8
  store ptr %54, ptr %arrayidx205, align 8
  %mv206 = getelementptr inbounds i8, ptr %arrayidx59, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %mv206, i8 0, i64 10, i1 false)
  br label %if.end276

if.else214:                                       ; preds = %if.else186
  %cmp216 = icmp eq i8 %23, -1
  br i1 %cmp216, label %if.then218, label %if.else234

if.then218:                                       ; preds = %if.else214
  %idxprom220 = sext i8 %22 to i64
  %arrayidx221 = getelementptr inbounds ptr, ptr %7, i64 %idxprom220
  %55 = load ptr, ptr %arrayidx221, align 8
  store ptr %55, ptr %arrayidx59, align 8
  %arrayidx225 = getelementptr inbounds i8, ptr %arrayidx59, i64 8
  store ptr null, ptr %arrayidx225, align 8
  %mv226 = getelementptr inbounds i8, ptr %arrayidx59, i64 16
  %56 = load i32, ptr %pmvl0, align 4
  store i32 %56, ptr %mv226, align 8
  %arrayidx229 = getelementptr inbounds i8, ptr %arrayidx59, i64 20
  store i32 0, ptr %arrayidx229, align 4
  %ref_idx230 = getelementptr inbounds i8, ptr %arrayidx59, i64 24
  store i8 %22, ptr %ref_idx230, align 8
  %arrayidx233 = getelementptr inbounds i8, ptr %arrayidx59, i64 25
  store i8 -1, ptr %arrayidx233, align 1
  br label %if.end276

if.else234:                                       ; preds = %if.else214
  %cmp236 = icmp eq i8 %22, -1
  br i1 %cmp236, label %if.then238, label %if.else254

if.then238:                                       ; preds = %if.else234
  store ptr null, ptr %arrayidx59, align 8
  %idxprom242 = sext i8 %23 to i64
  %arrayidx243 = getelementptr inbounds ptr, ptr %8, i64 %idxprom242
  %57 = load ptr, ptr %arrayidx243, align 8
  %arrayidx245 = getelementptr inbounds i8, ptr %arrayidx59, i64 8
  store ptr %57, ptr %arrayidx245, align 8
  %mv246 = getelementptr inbounds i8, ptr %arrayidx59, i64 16
  store i32 0, ptr %mv246, align 8
  %arrayidx249 = getelementptr inbounds i8, ptr %arrayidx59, i64 20
  %58 = load i32, ptr %pmvl1, align 4
  store i32 %58, ptr %arrayidx249, align 4
  %ref_idx250 = getelementptr inbounds i8, ptr %arrayidx59, i64 24
  store i8 -1, ptr %ref_idx250, align 8
  %59 = load i8, ptr %l1_rFrame, align 1
  %arrayidx253 = getelementptr inbounds i8, ptr %arrayidx59, i64 25
  store i8 %59, ptr %arrayidx253, align 1
  br label %if.end276

if.else254:                                       ; preds = %if.else234
  %idxprom256 = sext i8 %22 to i64
  %arrayidx257 = getelementptr inbounds ptr, ptr %7, i64 %idxprom256
  %60 = load ptr, ptr %arrayidx257, align 8
  store ptr %60, ptr %arrayidx59, align 8
  %idxprom261 = sext i8 %23 to i64
  %arrayidx262 = getelementptr inbounds ptr, ptr %8, i64 %idxprom261
  %61 = load ptr, ptr %arrayidx262, align 8
  %arrayidx264 = getelementptr inbounds i8, ptr %arrayidx59, i64 8
  store ptr %61, ptr %arrayidx264, align 8
  %mv265 = getelementptr inbounds i8, ptr %arrayidx59, i64 16
  %62 = load i32, ptr %pmvl0, align 4
  store i32 %62, ptr %mv265, align 8
  %arrayidx268 = getelementptr inbounds i8, ptr %arrayidx59, i64 20
  %63 = load i32, ptr %pmvl1, align 4
  store i32 %63, ptr %arrayidx268, align 4
  %ref_idx269 = getelementptr inbounds i8, ptr %arrayidx59, i64 24
  store i8 %22, ptr %ref_idx269, align 8
  %64 = load i8, ptr %l1_rFrame, align 1
  %arrayidx272 = getelementptr inbounds i8, ptr %arrayidx59, i64 25
  store i8 %64, ptr %arrayidx272, align 1
  br label %if.end276

if.end276:                                        ; preds = %if.else, %if.then77, %if.then165, %if.else173, %if.then109, %if.else121, %if.then199, %if.then238, %if.else254, %if.then218
  %indvars.iv.next403 = add nsw i64 %indvars.iv402, 1
  %65 = load i32, ptr %block_x, align 8
  %add51 = add i32 %add50, %65
  %66 = sext i32 %add51 to i64
  %cmp52 = icmp slt i64 %indvars.iv.next403, %66
  br i1 %cmp52, label %for.body54, label %for.inc277

for.inc277:                                       ; preds = %if.end276, %for.body44
  %67 = phi i32 [ %16, %for.body44 ], [ %65, %if.end276 ]
  %inc278 = add nuw nsw i32 %j.0400, 1
  %exitcond.not = icmp eq i32 %j.0400, %15
  br i1 %exitcond.not, label %for.inc281, label %for.body44

for.inc281:                                       ; preds = %for.inc277, %for.body
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1
  %inc282 = add nuw nsw i32 %k.0401, 1
  %exitcond409.not = icmp eq i64 %indvars.iv.next406, 4
  br i1 %exitcond409.not, label %for.end283, label %for.body

for.end283:                                       ; preds = %for.inc281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl0) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_rFrame) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l0_rFrame) #8
  br label %if.end284

if.end284:                                        ; preds = %for.end283, %entry
  ret void
}

declare void @prepare_direct_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
