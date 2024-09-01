; ModuleID = 'x264_src/encoder/set.c'
source_filename = "x264_src/encoder/set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_level_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@x264_cqm_flat16 = internal constant [64 x i8] c"\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10", align 16
@x264_cqm_jvt = internal unnamed_addr constant [6 x ptr] [ptr @x264_cqm_jvt4i, ptr @x264_cqm_jvt4p, ptr @x264_cqm_jvt4i, ptr @x264_cqm_jvt4p, ptr @x264_cqm_jvt8i, ptr @x264_cqm_jvt8p], align 16
@__const.x264_sei_version_write.uuid = private unnamed_addr constant [16 x i8] c"\DCE\E9\BD\E6\D9H\B7\96,\D8 \D9#\EE\EF", align 16
@.str = private unnamed_addr constant [113 x i8] c"x264 - core %d%s - H.264/MPEG-4 AVC codec - Copyleft 2003-2010 - http://www.videolan.org/x264.html - options: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@num_clock_ts = internal unnamed_addr constant [10 x i8] c"\00\01\01\01\02\02\03\03\02\03", align 1
@x264_levels = dso_local local_unnamed_addr constant [16 x %struct.x264_level_t] [%struct.x264_level_t { i32 10, i32 1485, i32 99, i32 152064, i32 64, i32 175, i32 64, i32 64, i32 0, i32 2, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 11, i32 3000, i32 396, i32 345600, i32 192, i32 500, i32 128, i32 64, i32 0, i32 2, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 12, i32 6000, i32 396, i32 912384, i32 384, i32 1000, i32 128, i32 64, i32 0, i32 2, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 13, i32 11880, i32 396, i32 912384, i32 768, i32 2000, i32 128, i32 64, i32 0, i32 2, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 20, i32 11880, i32 396, i32 912384, i32 2000, i32 2000, i32 128, i32 64, i32 0, i32 2, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 21, i32 19800, i32 792, i32 1824768, i32 4000, i32 4000, i32 256, i32 64, i32 0, i32 2, i32 0, i32 0, i32 0 }, %struct.x264_level_t { i32 22, i32 20250, i32 1620, i32 3110400, i32 4000, i32 4000, i32 256, i32 64, i32 0, i32 2, i32 0, i32 0, i32 0 }, %struct.x264_level_t { i32 30, i32 40500, i32 1620, i32 3110400, i32 10000, i32 10000, i32 256, i32 32, i32 22, i32 2, i32 0, i32 1, i32 0 }, %struct.x264_level_t { i32 31, i32 108000, i32 3600, i32 6912000, i32 14000, i32 14000, i32 512, i32 16, i32 60, i32 4, i32 1, i32 1, i32 0 }, %struct.x264_level_t { i32 32, i32 216000, i32 5120, i32 7864320, i32 20000, i32 20000, i32 512, i32 16, i32 60, i32 4, i32 1, i32 1, i32 0 }, %struct.x264_level_t { i32 40, i32 245760, i32 8192, i32 12582912, i32 20000, i32 25000, i32 512, i32 16, i32 60, i32 4, i32 1, i32 1, i32 0 }, %struct.x264_level_t { i32 41, i32 245760, i32 8192, i32 12582912, i32 50000, i32 62500, i32 512, i32 16, i32 24, i32 2, i32 1, i32 1, i32 0 }, %struct.x264_level_t { i32 42, i32 522240, i32 8704, i32 13369344, i32 50000, i32 62500, i32 512, i32 16, i32 24, i32 2, i32 1, i32 1, i32 1 }, %struct.x264_level_t { i32 50, i32 589824, i32 22080, i32 42393600, i32 135000, i32 135000, i32 512, i32 16, i32 24, i32 2, i32 1, i32 1, i32 1 }, %struct.x264_level_t { i32 51, i32 983040, i32 36864, i32 70778880, i32 240000, i32 240000, i32 512, i32 16, i32 24, i32 2, i32 1, i32 1, i32 1 }, %struct.x264_level_t zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [42 x i8] c"frame MB size (%dx%d) > level limit (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"DPB size (%d frames, %d bytes) > level limit (%d frames, %d bytes)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"VBV bitrate (%d) > level limit (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"VBV buffer (%d) > level limit (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"MV range (%d) > level limit (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"interlaced (%d) > level limit (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"fake interlaced (%d) > level limit (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"MB rate (%d) > level limit (%d)\0A\00", align 1
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 16
@x264_cqm_jvt4i = internal constant [16 x i8] c"\06\0D\14\1C\0D\14\1C \14\1C %\1C %*", align 16
@x264_cqm_jvt4p = internal constant [16 x i8] c"\0A\0E\14\18\0E\14\18\1B\14\18\1B\1E\18\1B\1E\22", align 16
@x264_cqm_jvt8i = internal constant [64 x i8] c"\06\0A\0D\10\12\17\19\1B\0A\0B\10\12\17\19\1B\1D\0D\10\12\17\19\1B\1D\1F\10\12\17\19\1B\1D\1F!\12\17\19\1B\1D\1F!$\17\19\1B\1D\1F!$&\19\1B\1D\1F!$&(\1B\1D\1F!$&(*", align 16
@x264_cqm_jvt8p = internal constant [64 x i8] c"\09\0D\0F\11\13\15\16\18\0D\0D\11\13\15\16\18\19\0F\11\13\15\16\18\19\1B\11\13\15\16\18\19\1B\1C\13\15\16\18\19\1B\1C\1E\15\16\18\19\1B\1C\1E \16\18\19\1B\1C\1E !\18\19\1B\1C\1E !#", align 16
@x264_zigzag_scan4 = internal unnamed_addr constant [2 x [16 x i8]] [[16 x i8] c"\00\04\01\02\05\08\0C\09\06\03\07\0A\0D\0E\0B\0F", [16 x i8] c"\00\01\04\02\03\05\06\07\08\09\0A\0B\0C\0D\0E\0F"], align 16
@x264_zigzag_scan8 = internal unnamed_addr constant [2 x [64 x i8]] [[64 x i8] c"\00\08\01\02\09\10\18\11\0A\03\04\0B\12\19 (!\1A\13\0C\05\06\0D\14\1B\22)081*#\1C\15\0E\07\0F\16\1D$+29:3,%\1E\17\1F&-4;<5.'/6=>7?", [64 x i8] c"\00\01\02\08\09\03\04\0A\10\0B\05\06\07\0C\11\18\12\0D\0E\0F\13\19 \1A\14\15\16\17\1B!(\22\1C\1D\1E\1F#)0*$%&'+12,-./3894567:;<=>?"], align 16

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @x264_sps_init(ptr noundef writeonly %sps, i32 noundef %i_id, ptr nocapture noundef readonly %param) local_unnamed_addr #0 {
entry:
  store i32 %i_id, ptr %sps, align 4
  %rc = getelementptr inbounds i8, ptr %param, i64 488
  %0 = load i32, ptr %rc, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.rhs, label %if.else.critedge

land.rhs:                                         ; preds = %entry
  %i_qp_constant = getelementptr inbounds i8, ptr %param, i64 492
  %1 = load i32, ptr %i_qp_constant, align 4
  %cmp3 = icmp eq i32 %1, 0
  %land.ext = zext i1 %cmp3 to i32
  %b_qpprime_y_zero_transform_bypass = getelementptr inbounds i8, ptr %sps, i64 1296
  store i32 %land.ext, ptr %b_qpprime_y_zero_transform_bypass, align 4
  br i1 %cmp3, label %if.end23, label %if.else

if.else.critedge:                                 ; preds = %entry
  %b_qpprime_y_zero_transform_bypass.c = getelementptr inbounds i8, ptr %sps, i64 1296
  store i32 0, ptr %b_qpprime_y_zero_transform_bypass.c, align 4
  br label %if.else

if.else:                                          ; preds = %if.else.critedge, %land.rhs
  %b_transform_8x8 = getelementptr inbounds i8, ptr %param, i64 392
  %2 = load i32, ptr %b_transform_8x8, align 8
  %tobool5.not = icmp eq i32 %2, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end23

lor.lhs.false:                                    ; preds = %if.else
  %i_cqm_preset = getelementptr inbounds i8, ptr %param, i64 144
  %3 = load i32, ptr %i_cqm_preset, align 8
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %if.else9, label %if.end23

if.else9:                                         ; preds = %lor.lhs.false
  %b_cabac = getelementptr inbounds i8, ptr %param, i64 128
  %4 = load i32, ptr %b_cabac, align 8
  %tobool10.not = icmp eq i32 %4, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %if.end23

lor.lhs.false11:                                  ; preds = %if.else9
  %i_bframe = getelementptr inbounds i8, ptr %param, i64 100
  %5 = load i32, ptr %i_bframe, align 4
  %cmp12 = icmp sgt i32 %5, 0
  br i1 %cmp12, label %if.end23, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %b_interlaced = getelementptr inbounds i8, ptr %param, i64 136
  %6 = load i32, ptr %b_interlaced, align 8
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %if.end23

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %i_weighted_pred = getelementptr inbounds i8, ptr %param, i64 396
  %7 = load i32, ptr %i_weighted_pred, align 4
  %cmp17 = icmp slt i32 %7, 1
  %spec.select585 = select i1 %cmp17, i32 66, i32 77
  %spec.select586 = zext i1 %cmp17 to i32
  br label %if.end23

if.end23:                                         ; preds = %lor.lhs.false15, %if.else9, %lor.lhs.false11, %lor.lhs.false13, %if.else, %lor.lhs.false, %land.rhs
  %.sink = phi i32 [ 244, %land.rhs ], [ 100, %lor.lhs.false ], [ 100, %if.else ], [ 77, %lor.lhs.false13 ], [ 77, %lor.lhs.false11 ], [ 77, %if.else9 ], [ %spec.select585, %lor.lhs.false15 ]
  %cmp26 = phi i32 [ 0, %land.rhs ], [ 0, %lor.lhs.false ], [ 0, %if.else ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false11 ], [ 0, %if.else9 ], [ %spec.select586, %lor.lhs.false15 ]
  %cmp28 = phi i32 [ 0, %land.rhs ], [ 0, %lor.lhs.false ], [ 0, %if.else ], [ 1, %lor.lhs.false13 ], [ 1, %lor.lhs.false11 ], [ 1, %if.else9 ], [ 1, %lor.lhs.false15 ]
  %i_profile_idc8 = getelementptr inbounds i8, ptr %sps, i64 4
  store i32 %.sink, ptr %i_profile_idc8, align 4
  %i_level_idc = getelementptr inbounds i8, ptr %param, i64 32
  %8 = load i32, ptr %i_level_idc, align 8
  %i_level_idc24 = getelementptr inbounds i8, ptr %sps, i64 8
  store i32 %8, ptr %i_level_idc24, align 4
  %b_constraint_set0 = getelementptr inbounds i8, ptr %sps, i64 12
  store i32 %cmp26, ptr %b_constraint_set0, align 4
  %b_constraint_set1 = getelementptr inbounds i8, ptr %sps, i64 16
  store i32 %cmp28, ptr %b_constraint_set1, align 4
  %b_constraint_set2 = getelementptr inbounds i8, ptr %sps, i64 20
  store i32 0, ptr %b_constraint_set2, align 4
  %i_log2_max_frame_num = getelementptr inbounds i8, ptr %sps, i64 24
  %i_keyint_max = getelementptr inbounds i8, ptr %param, i64 84
  store i32 4, ptr %i_log2_max_frame_num, align 4
  %9 = load i32, ptr %i_keyint_max, align 4
  %cmp31.not = icmp sgt i32 %9, 15
  br i1 %cmp31.not, label %while.cond.1, label %while.end

while.cond.1:                                     ; preds = %if.end23
  store i32 5, ptr %i_log2_max_frame_num, align 4
  %10 = load i32, ptr %i_keyint_max, align 4
  %cmp31.not.1 = icmp sgt i32 %10, 31
  br i1 %cmp31.not.1, label %while.cond.2, label %while.end

while.cond.2:                                     ; preds = %while.cond.1
  store i32 6, ptr %i_log2_max_frame_num, align 4
  %11 = load i32, ptr %i_keyint_max, align 4
  %cmp31.not.2 = icmp sgt i32 %11, 63
  br i1 %cmp31.not.2, label %while.cond.3, label %while.end

while.cond.3:                                     ; preds = %while.cond.2
  store i32 7, ptr %i_log2_max_frame_num, align 4
  %12 = load i32, ptr %i_keyint_max, align 4
  %cmp31.not.3 = icmp sgt i32 %12, 127
  br i1 %cmp31.not.3, label %while.cond.4, label %while.end

while.cond.4:                                     ; preds = %while.cond.3
  store i32 8, ptr %i_log2_max_frame_num, align 4
  %13 = load i32, ptr %i_keyint_max, align 4
  %cmp31.not.4 = icmp sgt i32 %13, 255
  br i1 %cmp31.not.4, label %while.cond.5, label %while.end

while.cond.5:                                     ; preds = %while.cond.4
  store i32 9, ptr %i_log2_max_frame_num, align 4
  %14 = load i32, ptr %i_keyint_max, align 4
  %cmp31.not.5 = icmp sgt i32 %14, 511
  %spec.store.select = select i1 %cmp31.not.5, i32 10, i32 9
  store i32 %spec.store.select, ptr %i_log2_max_frame_num, align 4
  %spec.select587 = select i1 %cmp31.not.5, i32 12, i32 11
  %spec.select588 = select i1 %cmp31.not.5, i32 11, i32 10
  br label %while.end

while.end:                                        ; preds = %while.cond.5, %while.cond.4, %while.cond.3, %while.cond.2, %while.cond.1, %if.end23
  %storemerge.lcssa = phi i32 [ 6, %if.end23 ], [ 7, %while.cond.1 ], [ 8, %while.cond.2 ], [ 9, %while.cond.3 ], [ 10, %while.cond.4 ], [ %spec.select587, %while.cond.5 ]
  %inc.lcssa = phi i32 [ 5, %if.end23 ], [ 6, %while.cond.1 ], [ 7, %while.cond.2 ], [ 8, %while.cond.3 ], [ 9, %while.cond.4 ], [ %spec.select588, %while.cond.5 ]
  store i32 %inc.lcssa, ptr %i_log2_max_frame_num, align 4
  %i_poc_type = getelementptr inbounds i8, ptr %sps, i64 28
  store i32 0, ptr %i_poc_type, align 4
  %i_log2_max_poc_lsb = getelementptr inbounds i8, ptr %sps, i64 32
  store i32 %storemerge.lcssa, ptr %i_log2_max_poc_lsb, align 4
  %b_vui = getelementptr inbounds i8, ptr %sps, i64 1124
  store i32 1, ptr %b_vui, align 4
  %b_gaps_in_frame_num_value_allowed = getelementptr inbounds i8, ptr %sps, i64 1080
  store i32 0, ptr %b_gaps_in_frame_num_value_allowed, align 4
  %i_width = getelementptr inbounds i8, ptr %param, i64 20
  %15 = load i32, ptr %i_width, align 4
  %add58 = add nsw i32 %15, 15
  %div = sdiv i32 %add58, 16
  %i_mb_width = getelementptr inbounds i8, ptr %sps, i64 1084
  store i32 %div, ptr %i_mb_width, align 4
  %i_height = getelementptr inbounds i8, ptr %param, i64 24
  %16 = load i32, ptr %i_height, align 8
  %add59 = add nsw i32 %16, 15
  %div60 = sdiv i32 %add59, 16
  %i_mb_height = getelementptr inbounds i8, ptr %sps, i64 1088
  store i32 %div60, ptr %i_mb_height, align 4
  %b_interlaced61 = getelementptr inbounds i8, ptr %param, i64 136
  %17 = load i32, ptr %b_interlaced61, align 8
  %tobool62.not = icmp eq i32 %17, 0
  br i1 %tobool62.not, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %while.end
  %b_frame_mbs_only569 = getelementptr inbounds i8, ptr %sps, i64 1092
  store i32 0, ptr %b_frame_mbs_only569, align 4
  br label %if.then66

cond.end:                                         ; preds = %while.end
  %b_fake_interlaced = getelementptr inbounds i8, ptr %param, i64 680
  %18 = load i32, ptr %b_fake_interlaced, align 8
  %tobool63.not = icmp eq i32 %18, 0
  %lnot.ext = zext i1 %tobool63.not to i32
  %b_frame_mbs_only = getelementptr inbounds i8, ptr %sps, i64 1092
  store i32 %lnot.ext, ptr %b_frame_mbs_only, align 4
  br i1 %tobool63.not, label %lor.end, label %if.then66

if.then66:                                        ; preds = %cond.end.thread, %cond.end
  %add68 = add nsw i32 %div60, 1
  %and = and i32 %add68, -2
  store i32 %and, ptr %i_mb_height, align 4
  br label %lor.end

lor.end:                                          ; preds = %cond.end, %if.then66
  %19 = phi i32 [ %and, %if.then66 ], [ %div60, %cond.end ]
  %tobool65.not571 = phi i32 [ 1, %if.then66 ], [ 0, %cond.end ]
  %20 = load i32, ptr %b_interlaced61, align 8
  %b_mb_adaptive_frame_field = getelementptr inbounds i8, ptr %sps, i64 1096
  store i32 %20, ptr %b_mb_adaptive_frame_field, align 4
  %b_direct8x8_inference = getelementptr inbounds i8, ptr %sps, i64 1100
  store i32 1, ptr %b_direct8x8_inference, align 4
  %crop = getelementptr inbounds i8, ptr %sps, i64 1108
  store i32 0, ptr %crop, align 4
  %i_top = getelementptr inbounds i8, ptr %sps, i64 1116
  store i32 0, ptr %i_top, align 4
  %mul = shl nsw i32 %div, 4
  %21 = load i32, ptr %i_width, align 4
  %sub = sub nsw i32 %mul, %21
  %i_right = getelementptr inbounds i8, ptr %sps, i64 1112
  store i32 %sub, ptr %i_right, align 4
  %mul77 = shl nsw i32 %19, 4
  %22 = load i32, ptr %i_height, align 8
  %sub79 = sub nsw i32 %mul77, %22
  %shr = ashr i32 %sub79, %tobool65.not571
  %i_bottom = getelementptr inbounds i8, ptr %sps, i64 1120
  store i32 %shr, ptr %i_bottom, align 4
  %tobool95.not = icmp ne i32 %mul, %21
  %tobool98 = icmp ne i32 %shr, 0
  %spec.select = select i1 %tobool95.not, i1 true, i1 %tobool98
  %lor.ext = zext i1 %spec.select to i32
  %b_crop = getelementptr inbounds i8, ptr %sps, i64 1104
  store i32 %lor.ext, ptr %b_crop, align 4
  %vui = getelementptr inbounds i8, ptr %sps, i64 1128
  store i32 0, ptr %vui, align 4
  %vui99 = getelementptr inbounds i8, ptr %param, i64 44
  %i_sar_width = getelementptr inbounds i8, ptr %param, i64 48
  %23 = load i32, ptr %i_sar_width, align 4
  %cmp100 = icmp sgt i32 %23, 0
  br i1 %cmp100, label %land.lhs.true, label %if.end116

land.lhs.true:                                    ; preds = %lor.end
  %24 = load i32, ptr %vui99, align 4
  %cmp103 = icmp sgt i32 %24, 0
  br i1 %cmp103, label %if.then105, label %if.end116

if.then105:                                       ; preds = %land.lhs.true
  store i32 1, ptr %vui, align 4
  %25 = load i32, ptr %i_sar_width, align 4
  %i_sar_width111 = getelementptr inbounds i8, ptr %sps, i64 1132
  store i32 %25, ptr %i_sar_width111, align 4
  %26 = load i32, ptr %vui99, align 4
  %i_sar_height115 = getelementptr inbounds i8, ptr %sps, i64 1136
  store i32 %26, ptr %i_sar_height115, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then105, %land.lhs.true, %lor.end
  %i_overscan = getelementptr inbounds i8, ptr %param, i64 52
  %27 = load i32, ptr %i_overscan, align 4
  %tobool118.not = icmp ne i32 %27, 0
  %cond119 = zext i1 %tobool118.not to i32
  %b_overscan_info_present = getelementptr inbounds i8, ptr %sps, i64 1140
  store i32 %cond119, ptr %b_overscan_info_present, align 4
  br i1 %tobool118.not, label %if.then124, label %if.end131

if.then124:                                       ; preds = %if.end116
  %28 = load i32, ptr %i_overscan, align 4
  %cmp127 = icmp eq i32 %28, 2
  %cond129 = zext i1 %cmp127 to i32
  %b_overscan_info = getelementptr inbounds i8, ptr %sps, i64 1144
  store i32 %cond129, ptr %b_overscan_info, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then124, %if.end116
  %b_signal_type_present = getelementptr inbounds i8, ptr %sps, i64 1148
  store i32 0, ptr %b_signal_type_present, align 4
  %i_vidformat = getelementptr inbounds i8, ptr %param, i64 56
  %29 = load i32, ptr %i_vidformat, align 4
  %spec.select564 = tail call i32 @llvm.smin.i32(i32 %29, i32 5)
  %i_vidformat143 = getelementptr inbounds i8, ptr %sps, i64 1152
  store i32 %spec.select564, ptr %i_vidformat143, align 4
  %b_fullrange = getelementptr inbounds i8, ptr %param, i64 60
  %30 = load i32, ptr %b_fullrange, align 4
  %tobool145.not = icmp ne i32 %30, 0
  %cond146 = zext i1 %tobool145.not to i32
  %b_fullrange148 = getelementptr inbounds i8, ptr %sps, i64 1156
  store i32 %cond146, ptr %b_fullrange148, align 4
  %b_color_description_present = getelementptr inbounds i8, ptr %sps, i64 1160
  store i32 0, ptr %b_color_description_present, align 4
  %i_colorprim = getelementptr inbounds i8, ptr %param, i64 64
  %31 = load i32, ptr %i_colorprim, align 4
  %cmp151 = icmp slt i32 %31, 10
  %cond158 = select i1 %cmp151, i32 %31, i32 2
  %i_colorprim160 = getelementptr inbounds i8, ptr %sps, i64 1164
  store i32 %cond158, ptr %i_colorprim160, align 4
  %i_transfer = getelementptr inbounds i8, ptr %param, i64 68
  %32 = load i32, ptr %i_transfer, align 4
  %cmp162 = icmp slt i32 %32, 12
  %cond169 = select i1 %cmp162, i32 %32, i32 2
  %i_transfer171 = getelementptr inbounds i8, ptr %sps, i64 1168
  store i32 %cond169, ptr %i_transfer171, align 4
  %i_colmatrix = getelementptr inbounds i8, ptr %param, i64 72
  %33 = load i32, ptr %i_colmatrix, align 4
  %cmp173 = icmp slt i32 %33, 10
  %cond180 = select i1 %cmp173, i32 %33, i32 2
  %i_colmatrix182 = getelementptr inbounds i8, ptr %sps, i64 1172
  store i32 %cond180, ptr %i_colmatrix182, align 4
  %cmp185.not = icmp eq i32 %cond158, 2
  br i1 %cmp185.not, label %lor.lhs.false187, label %if.end200.thread

lor.lhs.false187:                                 ; preds = %if.end131
  %cmp190.not = icmp eq i32 %cond169, 2
  %cmp195.not = icmp eq i32 %cond180, 2
  %or.cond565 = select i1 %cmp190.not, i1 %cmp195.not, i1 false
  br i1 %or.cond565, label %if.end200, label %if.end200.thread

if.end200:                                        ; preds = %lor.lhs.false187
  %cmp203.not = icmp slt i32 %29, 5
  %or.cond575.not = select i1 %cmp203.not, i1 true, i1 %tobool145.not
  br i1 %or.cond575.not, label %if.then213, label %if.end216

if.end200.thread:                                 ; preds = %if.end131, %lor.lhs.false187
  store i32 1, ptr %b_color_description_present, align 4
  br label %if.then213

if.then213:                                       ; preds = %if.end200.thread, %if.end200
  store i32 1, ptr %b_signal_type_present, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.end200, %if.then213
  %i_chroma_loc = getelementptr inbounds i8, ptr %param, i64 76
  %34 = load i32, ptr %i_chroma_loc, align 4
  %tobool218.not = icmp ne i32 %34, 0
  %cond219 = zext i1 %tobool218.not to i32
  %b_chroma_loc_info_present = getelementptr inbounds i8, ptr %sps, i64 1176
  store i32 %cond219, ptr %b_chroma_loc_info_present, align 4
  br i1 %tobool218.not, label %if.then224, label %if.end231

if.then224:                                       ; preds = %if.end216
  %35 = load i32, ptr %i_chroma_loc, align 4
  %i_chroma_loc_top = getelementptr inbounds i8, ptr %sps, i64 1180
  store i32 %35, ptr %i_chroma_loc_top, align 4
  %i_chroma_loc_bottom = getelementptr inbounds i8, ptr %sps, i64 1184
  store i32 %35, ptr %i_chroma_loc_bottom, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then224, %if.end216
  %i_timebase_num = getelementptr inbounds i8, ptr %param, i64 660
  %36 = load i32, ptr %i_timebase_num, align 4
  %cmp232.not = icmp eq i32 %36, 0
  br i1 %cmp232.not, label %if.end253.sink.split, label %land.rhs234

land.rhs234:                                      ; preds = %if.end231
  %i_timebase_den = getelementptr inbounds i8, ptr %param, i64 664
  %37 = load i32, ptr %i_timebase_den, align 8
  %cmp235 = icmp ne i32 %37, 0
  %land.ext238 = zext i1 %cmp235 to i32
  %b_timing_info_present = getelementptr inbounds i8, ptr %sps, i64 1188
  store i32 %land.ext238, ptr %b_timing_info_present, align 4
  br i1 %cmp235, label %if.then243, label %if.end253

if.then243:                                       ; preds = %land.rhs234
  %38 = load i32, ptr %i_timebase_num, align 4
  %i_num_units_in_tick = getelementptr inbounds i8, ptr %sps, i64 1192
  store i32 %38, ptr %i_num_units_in_tick, align 4
  %39 = load i32, ptr %i_timebase_den, align 8
  %mul247 = shl i32 %39, 1
  %i_time_scale = getelementptr inbounds i8, ptr %sps, i64 1196
  store i32 %mul247, ptr %i_time_scale, align 4
  %b_vfr_input = getelementptr inbounds i8, ptr %param, i64 648
  %40 = load i32, ptr %b_vfr_input, align 8
  %tobool249.not = icmp eq i32 %40, 0
  %lnot.ext251 = zext i1 %tobool249.not to i32
  br label %if.end253.sink.split

if.end253.sink.split:                             ; preds = %if.end231, %if.then243
  %.sink584 = phi i64 [ 1200, %if.then243 ], [ 1188, %if.end231 ]
  %.sink583 = phi i32 [ %lnot.ext251, %if.then243 ], [ 0, %if.end231 ]
  %b_timing_info_present.c = getelementptr inbounds i8, ptr %sps, i64 %.sink584
  store i32 %.sink583, ptr %b_timing_info_present.c, align 4
  br label %if.end253

if.end253:                                        ; preds = %if.end253.sink.split, %land.rhs234
  %b_vcl_hrd_parameters_present = getelementptr inbounds i8, ptr %sps, i64 1208
  store i32 0, ptr %b_vcl_hrd_parameters_present, align 4
  %i_nal_hrd = getelementptr inbounds i8, ptr %param, i64 40
  %41 = load i32, ptr %i_nal_hrd, align 8
  %tobool255 = icmp ne i32 %41, 0
  %lnot.ext259 = zext i1 %tobool255 to i32
  %b_nal_hrd_parameters_present = getelementptr inbounds i8, ptr %sps, i64 1204
  store i32 %lnot.ext259, ptr %b_nal_hrd_parameters_present, align 4
  %b_pic_struct = getelementptr inbounds i8, ptr %param, i64 676
  %42 = load i32, ptr %b_pic_struct, align 4
  %b_pic_struct_present = getelementptr inbounds i8, ptr %sps, i64 1260
  store i32 %42, ptr %b_pic_struct_present, align 4
  %i_bframe_pyramid = getelementptr inbounds i8, ptr %param, i64 112
  %43 = load i32, ptr %i_bframe_pyramid, align 8
  %tobool262.not = icmp eq i32 %43, 0
  br i1 %tobool262.not, label %cond.false264, label %cond.end268

cond.false264:                                    ; preds = %if.end253
  %i_bframe265 = getelementptr inbounds i8, ptr %param, i64 100
  %44 = load i32, ptr %i_bframe265, align 4
  %tobool266.not = icmp ne i32 %44, 0
  %cond267 = zext i1 %tobool266.not to i32
  br label %cond.end268

cond.end268:                                      ; preds = %if.end253, %cond.false264
  %cond269 = phi i32 [ %cond267, %cond.false264 ], [ 2, %if.end253 ]
  %i_num_reorder_frames = getelementptr inbounds i8, ptr %sps, i64 1288
  store i32 %cond269, ptr %i_num_reorder_frames, align 4
  %i_frame_reference = getelementptr inbounds i8, ptr %param, i64 80
  %45 = load i32, ptr %i_frame_reference, align 8
  %46 = load i32, ptr %i_bframe_pyramid, align 8
  %tobool275.not = icmp eq i32 %46, 0
  %cond276 = select i1 %tobool275.not, i32 1, i32 4
  %cmp277.not = icmp ult i32 %cond269, %cond276
  %add273 = add nuw nsw i32 %cond269, 1
  %cond288 = select i1 %cmp277.not, i32 %cond276, i32 %add273
  %cmp289 = icmp sgt i32 %45, %cond288
  %cmp314 = icmp ugt i32 %45, 16
  %or.cond576 = and i1 %cmp314, %cmp289
  %spec.select577 = tail call i32 @llvm.smax.i32(i32 %45, i32 %cond288)
  %cond363 = select i1 %or.cond576, i32 16, i32 %spec.select577
  %i_num_ref_frames = getelementptr inbounds i8, ptr %sps, i64 1076
  store i32 %cond363, ptr %i_num_ref_frames, align 4
  %i_max_dec_frame_buffering = getelementptr inbounds i8, ptr %sps, i64 1292
  store i32 %cond363, ptr %i_max_dec_frame_buffering, align 4
  %47 = load i32, ptr %i_bframe_pyramid, align 8
  %cmp366 = icmp eq i32 %47, 1
  %conv367.neg = sext i1 %cmp366 to i32
  %sub369 = add nsw i32 %cond363, %conv367.neg
  store i32 %sub369, ptr %i_num_ref_frames, align 4
  %b_bitstream_restriction = getelementptr inbounds i8, ptr %sps, i64 1264
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %b_bitstream_restriction, align 4
  %i_mv_range = getelementptr inbounds i8, ptr %param, i64 420
  %48 = load i32, ptr %i_mv_range, align 4
  %cmp381 = icmp slt i32 %48, 1
  %mul379 = shl nsw i32 %48, 2
  %sub380 = add nsw i32 %mul379, -1
  %49 = uitofp nneg i32 %sub380 to float
  %cond390 = select i1 %cmp381, float 1.000000e+00, float %49
  %call = tail call float @log2f(float noundef %cond390) #12
  %conv392 = fptosi float %call to i32
  %add393 = add nsw i32 %conv392, 1
  %i_log2_max_mv_length_vertical = getelementptr inbounds i8, ptr %sps, i64 1284
  store i32 %add393, ptr %i_log2_max_mv_length_vertical, align 4
  %i_log2_max_mv_length_horizontal = getelementptr inbounds i8, ptr %sps, i64 1280
  store i32 %add393, ptr %i_log2_max_mv_length_horizontal, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @log2f(float noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sps_write(ptr noundef %s, ptr noundef readonly %sps) local_unnamed_addr #2 {
entry:
  %p.i = getelementptr inbounds i8, ptr %s, i64 8
  %0 = load ptr, ptr %p.i, align 8
  %1 = ptrtoint ptr %0 to i64
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 3
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %entry.bs_realign.exit_crit_edge, label %if.then.i

entry.bs_realign.exit_crit_edge:                  ; preds = %entry
  %cur_bits.i353.phi.trans.insert = getelementptr inbounds i8, ptr %s, i64 24
  %.pre = load i64, ptr %cur_bits.i353.phi.trans.insert, align 8
  %i_left.i355.phi.trans.insert = getelementptr inbounds i8, ptr %s, i64 32
  %.pre2333 = load i32, ptr %i_left.i355.phi.trans.insert, align 8
  br label %bs_realign.exit

if.then.i:                                        ; preds = %entry
  %idx.ext.i = and i64 %1, 3
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 %idx.neg.i
  store ptr %add.ptr.i, ptr %p.i, align 8
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32
  %3 = shl nuw nsw i32 %idx.ext.tr.i, 3
  %conv4.i = sub nuw nsw i32 64, %3
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32
  store i32 %conv4.i, ptr %i_left.i, align 8
  %4 = load i32, ptr %add.ptr.i, align 4
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %4)
  %conv6.i = zext i32 %add5.i.i to i64
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24
  %5 = shl nuw nsw i32 %conv.i, 3
  %mul8.i = sub nuw nsw i32 32, %5
  %sh_prom.i = zext nneg i32 %mul8.i to i64
  %shr.i = lshr i64 %conv6.i, %sh_prom.i
  store i64 %shr.i, ptr %cur_bits.i, align 8
  br label %bs_realign.exit

bs_realign.exit:                                  ; preds = %entry.bs_realign.exit_crit_edge, %if.then.i
  %6 = phi ptr [ %0, %entry.bs_realign.exit_crit_edge ], [ %add.ptr.i, %if.then.i ]
  %7 = phi i32 [ %.pre2333, %entry.bs_realign.exit_crit_edge ], [ %conv4.i, %if.then.i ]
  %8 = phi i64 [ %.pre, %entry.bs_realign.exit_crit_edge ], [ %shr.i, %if.then.i ]
  %i_profile_idc = getelementptr inbounds i8, ptr %sps, i64 4
  %9 = load i32, ptr %i_profile_idc, align 4
  %cur_bits.i353 = getelementptr inbounds i8, ptr %s, i64 24
  %shl.i = shl i64 %8, 8
  %conv.i354 = zext i32 %9 to i64
  %or.i = or i64 %shl.i, %conv.i354
  store i64 %or.i, ptr %cur_bits.i353, align 8
  %i_left.i355 = getelementptr inbounds i8, ptr %s, i64 32
  %sub.i = add nsw i32 %7, -8
  store i32 %sub.i, ptr %i_left.i355, align 8
  %cmp.i = icmp slt i32 %7, 41
  br i1 %cmp.i, label %if.then.i356, label %bs_write.exit

if.then.i356:                                     ; preds = %bs_realign.exit
  %sh_prom6.i = zext nneg i32 %sub.i to i64
  %shl7.i = shl i64 %or.i, %sh_prom6.i
  %add.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i)
  %conv8.i = trunc i64 %add.i.i.i to i32
  store i32 %conv8.i, ptr %6, align 4
  %10 = load i32, ptr %i_left.i355, align 8
  %add.i = add nsw i32 %10, 32
  store i32 %add.i, ptr %i_left.i355, align 8
  %11 = load ptr, ptr %p.i, align 8
  %add.ptr.i358 = getelementptr inbounds i8, ptr %11, i64 4
  store ptr %add.ptr.i358, ptr %p.i, align 8
  %.pre2334 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %bs_realign.exit, %if.then.i356
  %12 = phi ptr [ %6, %bs_realign.exit ], [ %add.ptr.i358, %if.then.i356 ]
  %13 = phi i32 [ %sub.i, %bs_realign.exit ], [ %add.i, %if.then.i356 ]
  %14 = phi i64 [ %or.i, %bs_realign.exit ], [ %.pre2334, %if.then.i356 ]
  %b_constraint_set0 = getelementptr inbounds i8, ptr %sps, i64 12
  %15 = load i32, ptr %b_constraint_set0, align 4
  %shl.i360 = shl i64 %14, 1
  %conv.i361 = zext i32 %15 to i64
  %or.i362 = or i64 %shl.i360, %conv.i361
  store i64 %or.i362, ptr %cur_bits.i353, align 8
  %sub.i364 = add nsw i32 %13, -1
  store i32 %sub.i364, ptr %i_left.i355, align 8
  %cmp.i365 = icmp slt i32 %13, 34
  br i1 %cmp.i365, label %if.then.i366, label %bs_write.exit374

if.then.i366:                                     ; preds = %bs_write.exit
  %sh_prom6.i367 = zext nneg i32 %sub.i364 to i64
  %shl7.i368 = shl i64 %or.i362, %sh_prom6.i367
  %add.i.i.i369 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i368)
  %conv8.i370 = trunc i64 %add.i.i.i369 to i32
  store i32 %conv8.i370, ptr %12, align 4
  %16 = load i32, ptr %i_left.i355, align 8
  %add.i372 = add nsw i32 %16, 32
  store i32 %add.i372, ptr %i_left.i355, align 8
  %17 = load ptr, ptr %p.i, align 8
  %add.ptr.i373 = getelementptr inbounds i8, ptr %17, i64 4
  store ptr %add.ptr.i373, ptr %p.i, align 8
  %.pre2335 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit374

bs_write.exit374:                                 ; preds = %bs_write.exit, %if.then.i366
  %18 = phi ptr [ %12, %bs_write.exit ], [ %add.ptr.i373, %if.then.i366 ]
  %19 = phi i32 [ %sub.i364, %bs_write.exit ], [ %add.i372, %if.then.i366 ]
  %20 = phi i64 [ %or.i362, %bs_write.exit ], [ %.pre2335, %if.then.i366 ]
  %b_constraint_set1 = getelementptr inbounds i8, ptr %sps, i64 16
  %21 = load i32, ptr %b_constraint_set1, align 4
  %shl.i376 = shl i64 %20, 1
  %conv.i377 = zext i32 %21 to i64
  %or.i378 = or i64 %shl.i376, %conv.i377
  store i64 %or.i378, ptr %cur_bits.i353, align 8
  %sub.i380 = add nsw i32 %19, -1
  store i32 %sub.i380, ptr %i_left.i355, align 8
  %cmp.i381 = icmp slt i32 %19, 34
  br i1 %cmp.i381, label %if.then.i382, label %bs_write.exit390

if.then.i382:                                     ; preds = %bs_write.exit374
  %sh_prom6.i383 = zext nneg i32 %sub.i380 to i64
  %shl7.i384 = shl i64 %or.i378, %sh_prom6.i383
  %add.i.i.i385 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i384)
  %conv8.i386 = trunc i64 %add.i.i.i385 to i32
  store i32 %conv8.i386, ptr %18, align 4
  %22 = load i32, ptr %i_left.i355, align 8
  %add.i388 = add nsw i32 %22, 32
  store i32 %add.i388, ptr %i_left.i355, align 8
  %23 = load ptr, ptr %p.i, align 8
  %add.ptr.i389 = getelementptr inbounds i8, ptr %23, i64 4
  store ptr %add.ptr.i389, ptr %p.i, align 8
  %.pre2336 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit390

bs_write.exit390:                                 ; preds = %bs_write.exit374, %if.then.i382
  %24 = phi ptr [ %18, %bs_write.exit374 ], [ %add.ptr.i389, %if.then.i382 ]
  %25 = phi i32 [ %sub.i380, %bs_write.exit374 ], [ %add.i388, %if.then.i382 ]
  %26 = phi i64 [ %or.i378, %bs_write.exit374 ], [ %.pre2336, %if.then.i382 ]
  %b_constraint_set2 = getelementptr inbounds i8, ptr %sps, i64 20
  %27 = load i32, ptr %b_constraint_set2, align 4
  %shl.i392 = shl i64 %26, 1
  %conv.i393 = zext i32 %27 to i64
  %or.i394 = or i64 %shl.i392, %conv.i393
  store i64 %or.i394, ptr %cur_bits.i353, align 8
  %sub.i396 = add nsw i32 %25, -1
  store i32 %sub.i396, ptr %i_left.i355, align 8
  %cmp.i397 = icmp slt i32 %25, 34
  br i1 %cmp.i397, label %if.then.i398, label %bs_write.exit406

if.then.i398:                                     ; preds = %bs_write.exit390
  %sh_prom6.i399 = zext nneg i32 %sub.i396 to i64
  %shl7.i400 = shl i64 %or.i394, %sh_prom6.i399
  %add.i.i.i401 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i400)
  %conv8.i402 = trunc i64 %add.i.i.i401 to i32
  store i32 %conv8.i402, ptr %24, align 4
  %28 = load i32, ptr %i_left.i355, align 8
  %add.i404 = add nsw i32 %28, 32
  %29 = load ptr, ptr %p.i, align 8
  %add.ptr.i405 = getelementptr inbounds i8, ptr %29, i64 4
  store ptr %add.ptr.i405, ptr %p.i, align 8
  %.pre2337 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit406

bs_write.exit406:                                 ; preds = %bs_write.exit390, %if.then.i398
  %30 = phi ptr [ %24, %bs_write.exit390 ], [ %add.ptr.i405, %if.then.i398 ]
  %31 = phi i32 [ %sub.i396, %bs_write.exit390 ], [ %add.i404, %if.then.i398 ]
  %32 = phi i64 [ %or.i394, %bs_write.exit390 ], [ %.pre2337, %if.then.i398 ]
  %shl.i408 = shl i64 %32, 5
  store i64 %shl.i408, ptr %cur_bits.i353, align 8
  %sub.i411 = add nsw i32 %31, -5
  store i32 %sub.i411, ptr %i_left.i355, align 8
  %cmp.i412 = icmp slt i32 %31, 38
  br i1 %cmp.i412, label %if.then.i413, label %bs_write.exit421

if.then.i413:                                     ; preds = %bs_write.exit406
  %sh_prom6.i414 = zext nneg i32 %sub.i411 to i64
  %shl7.i415 = shl i64 %shl.i408, %sh_prom6.i414
  %add.i.i.i416 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i415)
  %conv8.i417 = trunc i64 %add.i.i.i416 to i32
  store i32 %conv8.i417, ptr %30, align 4
  %33 = load i32, ptr %i_left.i355, align 8
  %add.i419 = add nsw i32 %33, 32
  store i32 %add.i419, ptr %i_left.i355, align 8
  %34 = load ptr, ptr %p.i, align 8
  %add.ptr.i420 = getelementptr inbounds i8, ptr %34, i64 4
  store ptr %add.ptr.i420, ptr %p.i, align 8
  %.pre2338 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit421

bs_write.exit421:                                 ; preds = %bs_write.exit406, %if.then.i413
  %35 = phi ptr [ %30, %bs_write.exit406 ], [ %add.ptr.i420, %if.then.i413 ]
  %36 = phi i32 [ %sub.i411, %bs_write.exit406 ], [ %add.i419, %if.then.i413 ]
  %37 = phi i64 [ %shl.i408, %bs_write.exit406 ], [ %.pre2338, %if.then.i413 ]
  %i_level_idc = getelementptr inbounds i8, ptr %sps, i64 8
  %38 = load i32, ptr %i_level_idc, align 4
  %shl.i423 = shl i64 %37, 8
  %conv.i424 = zext i32 %38 to i64
  %or.i425 = or i64 %shl.i423, %conv.i424
  store i64 %or.i425, ptr %cur_bits.i353, align 8
  %sub.i427 = add nsw i32 %36, -8
  store i32 %sub.i427, ptr %i_left.i355, align 8
  %cmp.i428 = icmp slt i32 %36, 41
  br i1 %cmp.i428, label %if.then.i429, label %bs_write.exit437

if.then.i429:                                     ; preds = %bs_write.exit421
  %sh_prom6.i430 = zext nneg i32 %sub.i427 to i64
  %shl7.i431 = shl i64 %or.i425, %sh_prom6.i430
  %add.i.i.i432 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i431)
  %conv8.i433 = trunc i64 %add.i.i.i432 to i32
  store i32 %conv8.i433, ptr %35, align 4
  %39 = load i32, ptr %i_left.i355, align 8
  %add.i435 = add nsw i32 %39, 32
  store i32 %add.i435, ptr %i_left.i355, align 8
  %40 = load ptr, ptr %p.i, align 8
  %add.ptr.i436 = getelementptr inbounds i8, ptr %40, i64 4
  store ptr %add.ptr.i436, ptr %p.i, align 8
  %.pre2339 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit437

bs_write.exit437:                                 ; preds = %bs_write.exit421, %if.then.i429
  %41 = phi ptr [ %35, %bs_write.exit421 ], [ %add.ptr.i436, %if.then.i429 ]
  %42 = phi i32 [ %sub.i427, %bs_write.exit421 ], [ %add.i435, %if.then.i429 ]
  %43 = phi i64 [ %or.i425, %bs_write.exit421 ], [ %.pre2339, %if.then.i429 ]
  %44 = load i32, ptr %sps, align 4
  %inc.i = add i32 %44, 1
  %cmp.i438 = icmp sgt i32 %inc.i, 65535
  %shr.i439 = lshr i32 %inc.i, 16
  %spec.select.i = select i1 %cmp.i438, i32 32, i32 0
  %spec.select18.i = select i1 %cmp.i438, i32 %shr.i439, i32 %inc.i
  %cmp1.i = icmp sgt i32 %spec.select18.i, 255
  %add.i440 = or disjoint i32 %spec.select.i, 16
  %shr3.i = lshr i32 %spec.select18.i, 8
  %size.1.i = select i1 %cmp1.i, i32 %add.i440, i32 %spec.select.i
  %tmp.1.i = select i1 %cmp1.i, i32 %shr3.i, i32 %spec.select18.i
  %idxprom.i = sext i32 %tmp.1.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i
  %45 = load i8, ptr %arrayidx.i, align 1
  %conv.i441 = zext i8 %45 to i32
  %add5.i = add nuw nsw i32 %size.1.i, %conv.i441
  %shr6.i = lshr i32 %add5.i, 1
  %sh_prom.i.i = zext nneg i32 %shr6.i to i64
  %shl.i.i = shl i64 %43, %sh_prom.i.i
  store i64 %shl.i.i, ptr %cur_bits.i353, align 8
  %sub.i.i = sub nsw i32 %42, %shr6.i
  store i32 %sub.i.i, ptr %i_left.i355, align 8
  %cmp.i.i = icmp slt i32 %sub.i.i, 33
  br i1 %cmp.i.i, label %if.then.i.i, label %bs_write.exit.i

if.then.i.i:                                      ; preds = %bs_write.exit437
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64
  %shl7.i.i = shl i64 %shl.i.i, %sh_prom6.i.i
  %add.i.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i)
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32
  store i32 %conv8.i.i, ptr %41, align 4
  %46 = load i32, ptr %i_left.i355, align 8
  %add.i.i = add nsw i32 %46, 32
  %47 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %47, i64 4
  store ptr %add.ptr.i.i, ptr %p.i, align 8
  %.pre.i = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i

bs_write.exit.i:                                  ; preds = %if.then.i.i, %bs_write.exit437
  %48 = phi ptr [ %41, %bs_write.exit437 ], [ %add.ptr.i.i, %if.then.i.i ]
  %49 = phi i32 [ %sub.i.i, %bs_write.exit437 ], [ %add.i.i, %if.then.i.i ]
  %50 = phi i64 [ %shl.i.i, %bs_write.exit437 ], [ %.pre.i, %if.then.i.i ]
  %add8.i = add nuw nsw i32 %shr6.i, 1
  %sh_prom.i20.i = zext nneg i32 %add8.i to i64
  %shl.i21.i = shl i64 %50, %sh_prom.i20.i
  %conv.i.i = zext i32 %inc.i to i64
  %or.i.i = or i64 %shl.i21.i, %conv.i.i
  store i64 %or.i.i, ptr %cur_bits.i353, align 8
  %sub.i23.i = sub nsw i32 %49, %add8.i
  store i32 %sub.i23.i, ptr %i_left.i355, align 8
  %cmp.i24.i = icmp slt i32 %sub.i23.i, 33
  br i1 %cmp.i24.i, label %if.then.i25.i, label %bs_write_ue_big.exit

if.then.i25.i:                                    ; preds = %bs_write.exit.i
  %sh_prom6.i26.i = zext nneg i32 %sub.i23.i to i64
  %shl7.i27.i = shl i64 %or.i.i, %sh_prom6.i26.i
  %add.i.i.i28.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i)
  %conv8.i29.i = trunc i64 %add.i.i.i28.i to i32
  store i32 %conv8.i29.i, ptr %48, align 4
  %51 = load i32, ptr %i_left.i355, align 8
  %add.i31.i = add nsw i32 %51, 32
  store i32 %add.i31.i, ptr %i_left.i355, align 8
  %52 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i = getelementptr inbounds i8, ptr %52, i64 4
  store ptr %add.ptr.i32.i, ptr %p.i, align 8
  %.pre2343.pre = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit

bs_write_ue_big.exit:                             ; preds = %bs_write.exit.i, %if.then.i25.i
  %.pre2343 = phi i64 [ %or.i.i, %bs_write.exit.i ], [ %.pre2343.pre, %if.then.i25.i ]
  %53 = phi ptr [ %48, %bs_write.exit.i ], [ %add.ptr.i32.i, %if.then.i25.i ]
  %54 = phi i32 [ %sub.i23.i, %bs_write.exit.i ], [ %add.i31.i, %if.then.i25.i ]
  %55 = load i32, ptr %i_profile_idc, align 4
  %cmp = icmp sgt i32 %55, 99
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %bs_write_ue_big.exit
  %shl.i.i443 = shl i64 %.pre2343, 1
  store i64 %shl.i.i443, ptr %cur_bits.i353, align 8
  %sub.i.i445 = add nsw i32 %54, -1
  store i32 %sub.i.i445, ptr %i_left.i355, align 8
  %cmp.i.i446 = icmp slt i32 %54, 34
  br i1 %cmp.i.i446, label %if.then.i.i460, label %bs_write.exit.i447

if.then.i.i460:                                   ; preds = %if.then
  %sh_prom6.i.i461 = zext nneg i32 %sub.i.i445 to i64
  %shl7.i.i462 = shl i64 %shl.i.i443, %sh_prom6.i.i461
  %add.i.i.i.i463 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i462)
  %conv8.i.i464 = trunc i64 %add.i.i.i.i463 to i32
  store i32 %conv8.i.i464, ptr %53, align 4
  %56 = load i32, ptr %i_left.i355, align 8
  %add.i.i466 = add nsw i32 %56, 32
  %57 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i467 = getelementptr inbounds i8, ptr %57, i64 4
  store ptr %add.ptr.i.i467, ptr %p.i, align 8
  %.pre.i468 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i447

bs_write.exit.i447:                               ; preds = %if.then.i.i460, %if.then
  %58 = phi ptr [ %53, %if.then ], [ %add.ptr.i.i467, %if.then.i.i460 ]
  %59 = phi i32 [ %sub.i.i445, %if.then ], [ %add.i.i466, %if.then.i.i460 ]
  %60 = phi i64 [ %shl.i.i443, %if.then ], [ %.pre.i468, %if.then.i.i460 ]
  %shl.i21.i448 = shl i64 %60, 2
  %or.i.i449 = or disjoint i64 %shl.i21.i448, 2
  store i64 %or.i.i449, ptr %cur_bits.i353, align 8
  %sub.i23.i450 = add nsw i32 %59, -2
  store i32 %sub.i23.i450, ptr %i_left.i355, align 8
  %cmp.i24.i451 = icmp slt i32 %59, 35
  br i1 %cmp.i24.i451, label %bs_write_ue_big.exit469, label %bs_write.exit.i475

bs_write_ue_big.exit469:                          ; preds = %bs_write.exit.i447
  %sh_prom6.i26.i453 = zext nneg i32 %sub.i23.i450 to i64
  %shl7.i27.i454 = shl i64 %or.i.i449, %sh_prom6.i26.i453
  %add.i.i.i28.i455 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i454)
  %conv8.i29.i456 = trunc i64 %add.i.i.i28.i455 to i32
  store i32 %conv8.i29.i456, ptr %58, align 4
  %61 = load i32, ptr %i_left.i355, align 8
  %add.i31.i458 = add nsw i32 %61, 32
  store i32 %add.i31.i458, ptr %i_left.i355, align 8
  %62 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i459 = getelementptr inbounds i8, ptr %62, i64 4
  store ptr %add.ptr.i32.i459, ptr %p.i, align 8
  %63 = load i64, ptr %cur_bits.i353, align 8
  %cmp.i.i474 = icmp slt i32 %61, 1
  br i1 %cmp.i.i474, label %if.then.i.i488, label %bs_write.exit.i475

if.then.i.i488:                                   ; preds = %bs_write_ue_big.exit469
  %sh_prom6.i.i489 = zext nneg i32 %add.i31.i458 to i64
  %shl7.i.i490 = shl i64 %63, %sh_prom6.i.i489
  %add.i.i.i.i491 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i490)
  %conv8.i.i492 = trunc i64 %add.i.i.i.i491 to i32
  store i32 %conv8.i.i492, ptr %add.ptr.i32.i459, align 4
  %64 = load i32, ptr %i_left.i355, align 8
  %add.i.i494 = add nsw i32 %64, 32
  %65 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i495 = getelementptr inbounds i8, ptr %65, i64 4
  store ptr %add.ptr.i.i495, ptr %p.i, align 8
  %.pre.i496 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i475

bs_write.exit.i475:                               ; preds = %bs_write.exit.i447, %if.then.i.i488, %bs_write_ue_big.exit469
  %66 = phi ptr [ %add.ptr.i32.i459, %bs_write_ue_big.exit469 ], [ %add.ptr.i.i495, %if.then.i.i488 ], [ %58, %bs_write.exit.i447 ]
  %67 = phi i32 [ %add.i31.i458, %bs_write_ue_big.exit469 ], [ %add.i.i494, %if.then.i.i488 ], [ %sub.i23.i450, %bs_write.exit.i447 ]
  %68 = phi i64 [ %63, %bs_write_ue_big.exit469 ], [ %.pre.i496, %if.then.i.i488 ], [ %or.i.i449, %bs_write.exit.i447 ]
  %shl.i21.i476 = shl i64 %68, 1
  %or.i.i477 = or disjoint i64 %shl.i21.i476, 1
  store i64 %or.i.i477, ptr %cur_bits.i353, align 8
  %sub.i23.i478 = add nsw i32 %67, -1
  store i32 %sub.i23.i478, ptr %i_left.i355, align 8
  %cmp.i24.i479 = icmp slt i32 %67, 34
  br i1 %cmp.i24.i479, label %bs_write_ue_big.exit497, label %bs_write.exit.i503

bs_write_ue_big.exit497:                          ; preds = %bs_write.exit.i475
  %sh_prom6.i26.i481 = zext nneg i32 %sub.i23.i478 to i64
  %shl7.i27.i482 = shl i64 %or.i.i477, %sh_prom6.i26.i481
  %add.i.i.i28.i483 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i482)
  %conv8.i29.i484 = trunc i64 %add.i.i.i28.i483 to i32
  store i32 %conv8.i29.i484, ptr %66, align 4
  %69 = load i32, ptr %i_left.i355, align 8
  %add.i31.i486 = add nsw i32 %69, 32
  store i32 %add.i31.i486, ptr %i_left.i355, align 8
  %70 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i487 = getelementptr inbounds i8, ptr %70, i64 4
  store ptr %add.ptr.i32.i487, ptr %p.i, align 8
  %71 = load i64, ptr %cur_bits.i353, align 8
  %cmp.i.i502 = icmp slt i32 %69, 1
  br i1 %cmp.i.i502, label %if.then.i.i516, label %bs_write.exit.i503

if.then.i.i516:                                   ; preds = %bs_write_ue_big.exit497
  %sh_prom6.i.i517 = zext nneg i32 %add.i31.i486 to i64
  %shl7.i.i518 = shl i64 %71, %sh_prom6.i.i517
  %add.i.i.i.i519 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i518)
  %conv8.i.i520 = trunc i64 %add.i.i.i.i519 to i32
  store i32 %conv8.i.i520, ptr %add.ptr.i32.i487, align 4
  %72 = load i32, ptr %i_left.i355, align 8
  %add.i.i522 = add nsw i32 %72, 32
  %73 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i523 = getelementptr inbounds i8, ptr %73, i64 4
  store ptr %add.ptr.i.i523, ptr %p.i, align 8
  %.pre.i524 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i503

bs_write.exit.i503:                               ; preds = %bs_write.exit.i475, %if.then.i.i516, %bs_write_ue_big.exit497
  %74 = phi ptr [ %add.ptr.i32.i487, %bs_write_ue_big.exit497 ], [ %add.ptr.i.i523, %if.then.i.i516 ], [ %66, %bs_write.exit.i475 ]
  %75 = phi i32 [ %add.i31.i486, %bs_write_ue_big.exit497 ], [ %add.i.i522, %if.then.i.i516 ], [ %sub.i23.i478, %bs_write.exit.i475 ]
  %76 = phi i64 [ %71, %bs_write_ue_big.exit497 ], [ %.pre.i524, %if.then.i.i516 ], [ %or.i.i477, %bs_write.exit.i475 ]
  %shl.i21.i504 = shl i64 %76, 1
  %or.i.i505 = or disjoint i64 %shl.i21.i504, 1
  store i64 %or.i.i505, ptr %cur_bits.i353, align 8
  %sub.i23.i506 = add nsw i32 %75, -1
  store i32 %sub.i23.i506, ptr %i_left.i355, align 8
  %cmp.i24.i507 = icmp slt i32 %75, 34
  br i1 %cmp.i24.i507, label %if.then.i25.i508, label %bs_write_ue_big.exit525

if.then.i25.i508:                                 ; preds = %bs_write.exit.i503
  %sh_prom6.i26.i509 = zext nneg i32 %sub.i23.i506 to i64
  %shl7.i27.i510 = shl i64 %or.i.i505, %sh_prom6.i26.i509
  %add.i.i.i28.i511 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i510)
  %conv8.i29.i512 = trunc i64 %add.i.i.i28.i511 to i32
  store i32 %conv8.i29.i512, ptr %74, align 4
  %77 = load i32, ptr %i_left.i355, align 8
  %add.i31.i514 = add nsw i32 %77, 32
  store i32 %add.i31.i514, ptr %i_left.i355, align 8
  %78 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i515 = getelementptr inbounds i8, ptr %78, i64 4
  store ptr %add.ptr.i32.i515, ptr %p.i, align 8
  %.pre2340 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit525

bs_write_ue_big.exit525:                          ; preds = %bs_write.exit.i503, %if.then.i25.i508
  %79 = phi ptr [ %74, %bs_write.exit.i503 ], [ %add.ptr.i32.i515, %if.then.i25.i508 ]
  %80 = phi i32 [ %sub.i23.i506, %bs_write.exit.i503 ], [ %add.i31.i514, %if.then.i25.i508 ]
  %81 = phi i64 [ %or.i.i505, %bs_write.exit.i503 ], [ %.pre2340, %if.then.i25.i508 ]
  %b_qpprime_y_zero_transform_bypass = getelementptr inbounds i8, ptr %sps, i64 1296
  %82 = load i32, ptr %b_qpprime_y_zero_transform_bypass, align 4
  %shl.i527 = shl i64 %81, 1
  %conv.i528 = zext i32 %82 to i64
  %or.i529 = or i64 %shl.i527, %conv.i528
  store i64 %or.i529, ptr %cur_bits.i353, align 8
  %sub.i531 = add nsw i32 %80, -1
  store i32 %sub.i531, ptr %i_left.i355, align 8
  %cmp.i532 = icmp slt i32 %80, 34
  br i1 %cmp.i532, label %if.then.i533, label %bs_write.exit541

if.then.i533:                                     ; preds = %bs_write_ue_big.exit525
  %sh_prom6.i534 = zext nneg i32 %sub.i531 to i64
  %shl7.i535 = shl i64 %or.i529, %sh_prom6.i534
  %add.i.i.i536 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i535)
  %conv8.i537 = trunc i64 %add.i.i.i536 to i32
  store i32 %conv8.i537, ptr %79, align 4
  %83 = load i32, ptr %i_left.i355, align 8
  %add.i539 = add nsw i32 %83, 32
  %84 = load ptr, ptr %p.i, align 8
  %add.ptr.i540 = getelementptr inbounds i8, ptr %84, i64 4
  store ptr %add.ptr.i540, ptr %p.i, align 8
  %.pre2341 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit541

bs_write.exit541:                                 ; preds = %bs_write_ue_big.exit525, %if.then.i533
  %85 = phi ptr [ %79, %bs_write_ue_big.exit525 ], [ %add.ptr.i540, %if.then.i533 ]
  %86 = phi i32 [ %sub.i531, %bs_write_ue_big.exit525 ], [ %add.i539, %if.then.i533 ]
  %87 = phi i64 [ %or.i529, %bs_write_ue_big.exit525 ], [ %.pre2341, %if.then.i533 ]
  %shl.i543 = shl i64 %87, 1
  store i64 %shl.i543, ptr %cur_bits.i353, align 8
  %sub.i546 = add nsw i32 %86, -1
  store i32 %sub.i546, ptr %i_left.i355, align 8
  %cmp.i547 = icmp slt i32 %86, 34
  br i1 %cmp.i547, label %if.then.i548, label %if.end

if.then.i548:                                     ; preds = %bs_write.exit541
  %sh_prom6.i549 = zext nneg i32 %sub.i546 to i64
  %shl7.i550 = shl i64 %shl.i543, %sh_prom6.i549
  %add.i.i.i551 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i550)
  %conv8.i552 = trunc i64 %add.i.i.i551 to i32
  store i32 %conv8.i552, ptr %85, align 4
  %88 = load i32, ptr %i_left.i355, align 8
  %add.i554 = add nsw i32 %88, 32
  store i32 %add.i554, ptr %i_left.i355, align 8
  %89 = load ptr, ptr %p.i, align 8
  %add.ptr.i555 = getelementptr inbounds i8, ptr %89, i64 4
  store ptr %add.ptr.i555, ptr %p.i, align 8
  %.pre2342 = load i64, ptr %cur_bits.i353, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.i548, %bs_write.exit541, %bs_write_ue_big.exit
  %90 = phi ptr [ %add.ptr.i555, %if.then.i548 ], [ %85, %bs_write.exit541 ], [ %53, %bs_write_ue_big.exit ]
  %91 = phi i32 [ %add.i554, %if.then.i548 ], [ %sub.i546, %bs_write.exit541 ], [ %54, %bs_write_ue_big.exit ]
  %92 = phi i64 [ %.pre2342, %if.then.i548 ], [ %shl.i543, %bs_write.exit541 ], [ %.pre2343, %bs_write_ue_big.exit ]
  %i_log2_max_frame_num = getelementptr inbounds i8, ptr %sps, i64 24
  %93 = load i32, ptr %i_log2_max_frame_num, align 4
  %inc.i557 = add nsw i32 %93, -3
  %cmp.i558 = icmp sgt i32 %93, 65538
  %shr.i559 = lshr i32 %inc.i557, 16
  %spec.select.i560 = select i1 %cmp.i558, i32 32, i32 0
  %spec.select18.i561 = select i1 %cmp.i558, i32 %shr.i559, i32 %inc.i557
  %cmp1.i562 = icmp sgt i32 %spec.select18.i561, 255
  %add.i563 = or disjoint i32 %spec.select.i560, 16
  %shr3.i564 = lshr i32 %spec.select18.i561, 8
  %size.1.i565 = select i1 %cmp1.i562, i32 %add.i563, i32 %spec.select.i560
  %tmp.1.i566 = select i1 %cmp1.i562, i32 %shr3.i564, i32 %spec.select18.i561
  %idxprom.i567 = sext i32 %tmp.1.i566 to i64
  %arrayidx.i568 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i567
  %94 = load i8, ptr %arrayidx.i568, align 1
  %conv.i569 = zext i8 %94 to i32
  %add5.i570 = add nuw nsw i32 %size.1.i565, %conv.i569
  %shr6.i571 = lshr i32 %add5.i570, 1
  %sh_prom.i.i573 = zext nneg i32 %shr6.i571 to i64
  %shl.i.i574 = shl i64 %92, %sh_prom.i.i573
  store i64 %shl.i.i574, ptr %cur_bits.i353, align 8
  %sub.i.i576 = sub nsw i32 %91, %shr6.i571
  store i32 %sub.i.i576, ptr %i_left.i355, align 8
  %cmp.i.i577 = icmp slt i32 %sub.i.i576, 33
  br i1 %cmp.i.i577, label %if.then.i.i594, label %bs_write.exit.i578

if.then.i.i594:                                   ; preds = %if.end
  %sh_prom6.i.i595 = zext nneg i32 %sub.i.i576 to i64
  %shl7.i.i596 = shl i64 %shl.i.i574, %sh_prom6.i.i595
  %add.i.i.i.i597 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i596)
  %conv8.i.i598 = trunc i64 %add.i.i.i.i597 to i32
  store i32 %conv8.i.i598, ptr %90, align 4
  %95 = load i32, ptr %i_left.i355, align 8
  %add.i.i600 = add nsw i32 %95, 32
  %96 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i601 = getelementptr inbounds i8, ptr %96, i64 4
  store ptr %add.ptr.i.i601, ptr %p.i, align 8
  %.pre.i602 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i578

bs_write.exit.i578:                               ; preds = %if.then.i.i594, %if.end
  %97 = phi ptr [ %90, %if.end ], [ %add.ptr.i.i601, %if.then.i.i594 ]
  %98 = phi i32 [ %sub.i.i576, %if.end ], [ %add.i.i600, %if.then.i.i594 ]
  %99 = phi i64 [ %shl.i.i574, %if.end ], [ %.pre.i602, %if.then.i.i594 ]
  %add8.i579 = add nuw nsw i32 %shr6.i571, 1
  %sh_prom.i20.i580 = zext nneg i32 %add8.i579 to i64
  %shl.i21.i581 = shl i64 %99, %sh_prom.i20.i580
  %conv.i.i582 = zext i32 %inc.i557 to i64
  %or.i.i583 = or i64 %shl.i21.i581, %conv.i.i582
  store i64 %or.i.i583, ptr %cur_bits.i353, align 8
  %sub.i23.i584 = sub nsw i32 %98, %add8.i579
  store i32 %sub.i23.i584, ptr %i_left.i355, align 8
  %cmp.i24.i585 = icmp slt i32 %sub.i23.i584, 33
  br i1 %cmp.i24.i585, label %if.then.i25.i586, label %bs_write_ue_big.exit603

if.then.i25.i586:                                 ; preds = %bs_write.exit.i578
  %sh_prom6.i26.i587 = zext nneg i32 %sub.i23.i584 to i64
  %shl7.i27.i588 = shl i64 %or.i.i583, %sh_prom6.i26.i587
  %add.i.i.i28.i589 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i588)
  %conv8.i29.i590 = trunc i64 %add.i.i.i28.i589 to i32
  store i32 %conv8.i29.i590, ptr %97, align 4
  %100 = load i32, ptr %i_left.i355, align 8
  %add.i31.i592 = add nsw i32 %100, 32
  store i32 %add.i31.i592, ptr %i_left.i355, align 8
  %101 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i593 = getelementptr inbounds i8, ptr %101, i64 4
  store ptr %add.ptr.i32.i593, ptr %p.i, align 8
  %.pre2344 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit603

bs_write_ue_big.exit603:                          ; preds = %bs_write.exit.i578, %if.then.i25.i586
  %102 = phi ptr [ %97, %bs_write.exit.i578 ], [ %add.ptr.i32.i593, %if.then.i25.i586 ]
  %103 = phi i32 [ %sub.i23.i584, %bs_write.exit.i578 ], [ %add.i31.i592, %if.then.i25.i586 ]
  %104 = phi i64 [ %or.i.i583, %bs_write.exit.i578 ], [ %.pre2344, %if.then.i25.i586 ]
  %i_poc_type = getelementptr inbounds i8, ptr %sps, i64 28
  %105 = load i32, ptr %i_poc_type, align 4
  %inc.i604 = add i32 %105, 1
  %cmp.i605 = icmp sgt i32 %inc.i604, 65535
  %shr.i606 = lshr i32 %inc.i604, 16
  %spec.select.i607 = select i1 %cmp.i605, i32 32, i32 0
  %spec.select18.i608 = select i1 %cmp.i605, i32 %shr.i606, i32 %inc.i604
  %cmp1.i609 = icmp sgt i32 %spec.select18.i608, 255
  %add.i610 = or disjoint i32 %spec.select.i607, 16
  %shr3.i611 = lshr i32 %spec.select18.i608, 8
  %size.1.i612 = select i1 %cmp1.i609, i32 %add.i610, i32 %spec.select.i607
  %tmp.1.i613 = select i1 %cmp1.i609, i32 %shr3.i611, i32 %spec.select18.i608
  %idxprom.i614 = sext i32 %tmp.1.i613 to i64
  %arrayidx.i615 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i614
  %106 = load i8, ptr %arrayidx.i615, align 1
  %conv.i616 = zext i8 %106 to i32
  %add5.i617 = add nuw nsw i32 %size.1.i612, %conv.i616
  %shr6.i618 = lshr i32 %add5.i617, 1
  %sh_prom.i.i620 = zext nneg i32 %shr6.i618 to i64
  %shl.i.i621 = shl i64 %104, %sh_prom.i.i620
  store i64 %shl.i.i621, ptr %cur_bits.i353, align 8
  %sub.i.i623 = sub nsw i32 %103, %shr6.i618
  store i32 %sub.i.i623, ptr %i_left.i355, align 8
  %cmp.i.i624 = icmp slt i32 %sub.i.i623, 33
  br i1 %cmp.i.i624, label %if.then.i.i641, label %bs_write.exit.i625

if.then.i.i641:                                   ; preds = %bs_write_ue_big.exit603
  %sh_prom6.i.i642 = zext nneg i32 %sub.i.i623 to i64
  %shl7.i.i643 = shl i64 %shl.i.i621, %sh_prom6.i.i642
  %add.i.i.i.i644 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i643)
  %conv8.i.i645 = trunc i64 %add.i.i.i.i644 to i32
  store i32 %conv8.i.i645, ptr %102, align 4
  %107 = load i32, ptr %i_left.i355, align 8
  %add.i.i647 = add nsw i32 %107, 32
  %108 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i648 = getelementptr inbounds i8, ptr %108, i64 4
  store ptr %add.ptr.i.i648, ptr %p.i, align 8
  %.pre.i649 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i625

bs_write.exit.i625:                               ; preds = %if.then.i.i641, %bs_write_ue_big.exit603
  %109 = phi ptr [ %102, %bs_write_ue_big.exit603 ], [ %add.ptr.i.i648, %if.then.i.i641 ]
  %110 = phi i32 [ %sub.i.i623, %bs_write_ue_big.exit603 ], [ %add.i.i647, %if.then.i.i641 ]
  %111 = phi i64 [ %shl.i.i621, %bs_write_ue_big.exit603 ], [ %.pre.i649, %if.then.i.i641 ]
  %add8.i626 = add nuw nsw i32 %shr6.i618, 1
  %sh_prom.i20.i627 = zext nneg i32 %add8.i626 to i64
  %shl.i21.i628 = shl i64 %111, %sh_prom.i20.i627
  %conv.i.i629 = zext i32 %inc.i604 to i64
  %or.i.i630 = or i64 %shl.i21.i628, %conv.i.i629
  store i64 %or.i.i630, ptr %cur_bits.i353, align 8
  %sub.i23.i631 = sub nsw i32 %110, %add8.i626
  store i32 %sub.i23.i631, ptr %i_left.i355, align 8
  %cmp.i24.i632 = icmp slt i32 %sub.i23.i631, 33
  br i1 %cmp.i24.i632, label %if.then.i25.i633, label %bs_write_ue_big.exit650

if.then.i25.i633:                                 ; preds = %bs_write.exit.i625
  %sh_prom6.i26.i634 = zext nneg i32 %sub.i23.i631 to i64
  %shl7.i27.i635 = shl i64 %or.i.i630, %sh_prom6.i26.i634
  %add.i.i.i28.i636 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i635)
  %conv8.i29.i637 = trunc i64 %add.i.i.i28.i636 to i32
  store i32 %conv8.i29.i637, ptr %109, align 4
  %112 = load i32, ptr %i_left.i355, align 8
  %add.i31.i639 = add nsw i32 %112, 32
  store i32 %add.i31.i639, ptr %i_left.i355, align 8
  %113 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i640 = getelementptr inbounds i8, ptr %113, i64 4
  store ptr %add.ptr.i32.i640, ptr %p.i, align 8
  br label %bs_write_ue_big.exit650

bs_write_ue_big.exit650:                          ; preds = %bs_write.exit.i625, %if.then.i25.i633
  %114 = phi ptr [ %109, %bs_write.exit.i625 ], [ %add.ptr.i32.i640, %if.then.i25.i633 ]
  %115 = phi i32 [ %sub.i23.i631, %bs_write.exit.i625 ], [ %add.i31.i639, %if.then.i25.i633 ]
  %116 = load i32, ptr %i_poc_type, align 4
  switch i32 %116, label %if.end12 [
    i32 0, label %if.then4
    i32 1, label %if.then8
  ]

if.then4:                                         ; preds = %bs_write_ue_big.exit650
  %i_log2_max_poc_lsb = getelementptr inbounds i8, ptr %sps, i64 32
  %117 = load i32, ptr %i_log2_max_poc_lsb, align 4
  %inc.i651 = add nsw i32 %117, -3
  %cmp.i652 = icmp sgt i32 %117, 65538
  %shr.i653 = lshr i32 %inc.i651, 16
  %spec.select.i654 = select i1 %cmp.i652, i32 32, i32 0
  %spec.select18.i655 = select i1 %cmp.i652, i32 %shr.i653, i32 %inc.i651
  %cmp1.i656 = icmp sgt i32 %spec.select18.i655, 255
  %add.i657 = or disjoint i32 %spec.select.i654, 16
  %shr3.i658 = lshr i32 %spec.select18.i655, 8
  %size.1.i659 = select i1 %cmp1.i656, i32 %add.i657, i32 %spec.select.i654
  %tmp.1.i660 = select i1 %cmp1.i656, i32 %shr3.i658, i32 %spec.select18.i655
  %idxprom.i661 = sext i32 %tmp.1.i660 to i64
  %arrayidx.i662 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i661
  %118 = load i8, ptr %arrayidx.i662, align 1
  %conv.i663 = zext i8 %118 to i32
  %add5.i664 = add nuw nsw i32 %size.1.i659, %conv.i663
  %shr6.i665 = lshr i32 %add5.i664, 1
  %119 = load i64, ptr %cur_bits.i353, align 8
  %sh_prom.i.i667 = zext nneg i32 %shr6.i665 to i64
  %shl.i.i668 = shl i64 %119, %sh_prom.i.i667
  store i64 %shl.i.i668, ptr %cur_bits.i353, align 8
  %sub.i.i670 = sub nsw i32 %115, %shr6.i665
  store i32 %sub.i.i670, ptr %i_left.i355, align 8
  %cmp.i.i671 = icmp slt i32 %sub.i.i670, 33
  br i1 %cmp.i.i671, label %if.then.i.i688, label %bs_write.exit.i672

if.then.i.i688:                                   ; preds = %if.then4
  %sh_prom6.i.i689 = zext nneg i32 %sub.i.i670 to i64
  %shl7.i.i690 = shl i64 %shl.i.i668, %sh_prom6.i.i689
  %add.i.i.i.i691 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i690)
  %conv8.i.i692 = trunc i64 %add.i.i.i.i691 to i32
  store i32 %conv8.i.i692, ptr %114, align 4
  %120 = load i32, ptr %i_left.i355, align 8
  %add.i.i694 = add nsw i32 %120, 32
  %121 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i695 = getelementptr inbounds i8, ptr %121, i64 4
  store ptr %add.ptr.i.i695, ptr %p.i, align 8
  %.pre.i696 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i672

bs_write.exit.i672:                               ; preds = %if.then.i.i688, %if.then4
  %122 = phi ptr [ %114, %if.then4 ], [ %add.ptr.i.i695, %if.then.i.i688 ]
  %123 = phi i32 [ %sub.i.i670, %if.then4 ], [ %add.i.i694, %if.then.i.i688 ]
  %124 = phi i64 [ %shl.i.i668, %if.then4 ], [ %.pre.i696, %if.then.i.i688 ]
  %add8.i673 = add nuw nsw i32 %shr6.i665, 1
  %sh_prom.i20.i674 = zext nneg i32 %add8.i673 to i64
  %shl.i21.i675 = shl i64 %124, %sh_prom.i20.i674
  %conv.i.i676 = zext i32 %inc.i651 to i64
  %or.i.i677 = or i64 %shl.i21.i675, %conv.i.i676
  store i64 %or.i.i677, ptr %cur_bits.i353, align 8
  %sub.i23.i678 = sub nsw i32 %123, %add8.i673
  store i32 %sub.i23.i678, ptr %i_left.i355, align 8
  %cmp.i24.i679 = icmp slt i32 %sub.i23.i678, 33
  br i1 %cmp.i24.i679, label %if.then.i25.i680, label %if.end12

if.then.i25.i680:                                 ; preds = %bs_write.exit.i672
  %sh_prom6.i26.i681 = zext nneg i32 %sub.i23.i678 to i64
  %shl7.i27.i682 = shl i64 %or.i.i677, %sh_prom6.i26.i681
  %add.i.i.i28.i683 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i682)
  %conv8.i29.i684 = trunc i64 %add.i.i.i28.i683 to i32
  store i32 %conv8.i29.i684, ptr %122, align 4
  %125 = load i32, ptr %i_left.i355, align 8
  %add.i31.i686 = add nsw i32 %125, 32
  store i32 %add.i31.i686, ptr %i_left.i355, align 8
  %126 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i687 = getelementptr inbounds i8, ptr %126, i64 4
  store ptr %add.ptr.i32.i687, ptr %p.i, align 8
  br label %if.end12

if.then8:                                         ; preds = %bs_write_ue_big.exit650
  %b_delta_pic_order_always_zero = getelementptr inbounds i8, ptr %sps, i64 36
  %127 = load i32, ptr %b_delta_pic_order_always_zero, align 4
  %128 = load i64, ptr %cur_bits.i353, align 8
  %shl.i699 = shl i64 %128, 1
  %conv.i700 = zext i32 %127 to i64
  %or.i701 = or i64 %shl.i699, %conv.i700
  store i64 %or.i701, ptr %cur_bits.i353, align 8
  %sub.i703 = add nsw i32 %115, -1
  store i32 %sub.i703, ptr %i_left.i355, align 8
  %cmp.i704 = icmp slt i32 %115, 34
  br i1 %cmp.i704, label %if.then.i705, label %bs_write.exit713

if.then.i705:                                     ; preds = %if.then8
  %sh_prom6.i706 = zext nneg i32 %sub.i703 to i64
  %shl7.i707 = shl i64 %or.i701, %sh_prom6.i706
  %add.i.i.i708 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i707)
  %conv8.i709 = trunc i64 %add.i.i.i708 to i32
  store i32 %conv8.i709, ptr %114, align 4
  %129 = load i32, ptr %i_left.i355, align 8
  %add.i711 = add nsw i32 %129, 32
  store i32 %add.i711, ptr %i_left.i355, align 8
  %130 = load ptr, ptr %p.i, align 8
  %add.ptr.i712 = getelementptr inbounds i8, ptr %130, i64 4
  store ptr %add.ptr.i712, ptr %p.i, align 8
  %.pre2345 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit713

bs_write.exit713:                                 ; preds = %if.then8, %if.then.i705
  %131 = phi ptr [ %114, %if.then8 ], [ %add.ptr.i712, %if.then.i705 ]
  %132 = phi i32 [ %sub.i703, %if.then8 ], [ %add.i711, %if.then.i705 ]
  %133 = phi i64 [ %or.i701, %if.then8 ], [ %.pre2345, %if.then.i705 ]
  %i_offset_for_non_ref_pic = getelementptr inbounds i8, ptr %sps, i64 40
  %134 = load i32, ptr %i_offset_for_non_ref_pic, align 4
  %mul.i = shl nsw i32 %134, 1
  %sub.i714 = sub nsw i32 1, %mul.i
  %cmp.i715 = icmp sgt i32 %134, 0
  %spec.select.i716 = select i1 %cmp.i715, i32 %mul.i, i32 %sub.i714
  %cmp2.i = icmp sgt i32 %spec.select.i716, 255
  %shr.i717 = lshr i32 %spec.select.i716, 8
  %size.0.i = select i1 %cmp2.i, i32 16, i32 0
  %tmp.1.i718 = select i1 %cmp2.i, i32 %shr.i717, i32 %spec.select.i716
  %idxprom.i719 = sext i32 %tmp.1.i718 to i64
  %arrayidx.i720 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i719
  %135 = load i8, ptr %arrayidx.i720, align 1
  %conv.i721 = zext i8 %135 to i32
  %add.i722 = add nuw nsw i32 %size.0.i, %conv.i721
  %sh_prom.i.i724 = zext nneg i32 %add.i722 to i64
  %shl.i.i725 = shl i64 %133, %sh_prom.i.i724
  %conv.i.i726 = zext i32 %spec.select.i716 to i64
  %or.i.i727 = or i64 %shl.i.i725, %conv.i.i726
  store i64 %or.i.i727, ptr %cur_bits.i353, align 8
  %sub.i.i729 = sub nsw i32 %132, %add.i722
  store i32 %sub.i.i729, ptr %i_left.i355, align 8
  %cmp.i.i730 = icmp slt i32 %sub.i.i729, 33
  br i1 %cmp.i.i730, label %if.then.i.i732, label %bs_write_se.exit

if.then.i.i732:                                   ; preds = %bs_write.exit713
  %sh_prom6.i.i733 = zext nneg i32 %sub.i.i729 to i64
  %shl7.i.i734 = shl i64 %or.i.i727, %sh_prom6.i.i733
  %add.i.i.i.i735 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i734)
  %conv8.i.i736 = trunc i64 %add.i.i.i.i735 to i32
  store i32 %conv8.i.i736, ptr %131, align 4
  %136 = load i32, ptr %i_left.i355, align 8
  %add.i.i738 = add nsw i32 %136, 32
  store i32 %add.i.i738, ptr %i_left.i355, align 8
  %137 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i739 = getelementptr inbounds i8, ptr %137, i64 4
  store ptr %add.ptr.i.i739, ptr %p.i, align 8
  %.pre2346 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_se.exit

bs_write_se.exit:                                 ; preds = %bs_write.exit713, %if.then.i.i732
  %138 = phi ptr [ %131, %bs_write.exit713 ], [ %add.ptr.i.i739, %if.then.i.i732 ]
  %139 = phi i32 [ %sub.i.i729, %bs_write.exit713 ], [ %add.i.i738, %if.then.i.i732 ]
  %140 = phi i64 [ %or.i.i727, %bs_write.exit713 ], [ %.pre2346, %if.then.i.i732 ]
  %i_offset_for_top_to_bottom_field = getelementptr inbounds i8, ptr %sps, i64 44
  %141 = load i32, ptr %i_offset_for_top_to_bottom_field, align 4
  %mul.i740 = shl nsw i32 %141, 1
  %sub.i741 = sub nsw i32 1, %mul.i740
  %cmp.i742 = icmp sgt i32 %141, 0
  %spec.select.i743 = select i1 %cmp.i742, i32 %mul.i740, i32 %sub.i741
  %cmp2.i744 = icmp sgt i32 %spec.select.i743, 255
  %shr.i745 = lshr i32 %spec.select.i743, 8
  %size.0.i746 = select i1 %cmp2.i744, i32 16, i32 0
  %tmp.1.i747 = select i1 %cmp2.i744, i32 %shr.i745, i32 %spec.select.i743
  %idxprom.i748 = sext i32 %tmp.1.i747 to i64
  %arrayidx.i749 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i748
  %142 = load i8, ptr %arrayidx.i749, align 1
  %conv.i750 = zext i8 %142 to i32
  %add.i751 = add nuw nsw i32 %size.0.i746, %conv.i750
  %sh_prom.i.i753 = zext nneg i32 %add.i751 to i64
  %shl.i.i754 = shl i64 %140, %sh_prom.i.i753
  %conv.i.i755 = zext i32 %spec.select.i743 to i64
  %or.i.i756 = or i64 %shl.i.i754, %conv.i.i755
  store i64 %or.i.i756, ptr %cur_bits.i353, align 8
  %sub.i.i758 = sub nsw i32 %139, %add.i751
  store i32 %sub.i.i758, ptr %i_left.i355, align 8
  %cmp.i.i759 = icmp slt i32 %sub.i.i758, 33
  br i1 %cmp.i.i759, label %if.then.i.i761, label %bs_write_se.exit769

if.then.i.i761:                                   ; preds = %bs_write_se.exit
  %sh_prom6.i.i762 = zext nneg i32 %sub.i.i758 to i64
  %shl7.i.i763 = shl i64 %or.i.i756, %sh_prom6.i.i762
  %add.i.i.i.i764 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i763)
  %conv8.i.i765 = trunc i64 %add.i.i.i.i764 to i32
  store i32 %conv8.i.i765, ptr %138, align 4
  %143 = load i32, ptr %i_left.i355, align 8
  %add.i.i767 = add nsw i32 %143, 32
  store i32 %add.i.i767, ptr %i_left.i355, align 8
  %144 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i768 = getelementptr inbounds i8, ptr %144, i64 4
  store ptr %add.ptr.i.i768, ptr %p.i, align 8
  %.pre2347 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_se.exit769

bs_write_se.exit769:                              ; preds = %bs_write_se.exit, %if.then.i.i761
  %145 = phi ptr [ %138, %bs_write_se.exit ], [ %add.ptr.i.i768, %if.then.i.i761 ]
  %146 = phi i32 [ %sub.i.i758, %bs_write_se.exit ], [ %add.i.i767, %if.then.i.i761 ]
  %147 = phi i64 [ %or.i.i756, %bs_write_se.exit ], [ %.pre2347, %if.then.i.i761 ]
  %i_num_ref_frames_in_poc_cycle = getelementptr inbounds i8, ptr %sps, i64 48
  %148 = load i32, ptr %i_num_ref_frames_in_poc_cycle, align 4
  %inc.i770 = add i32 %148, 1
  %cmp.i771 = icmp sgt i32 %inc.i770, 65535
  %shr.i772 = lshr i32 %inc.i770, 16
  %spec.select.i773 = select i1 %cmp.i771, i32 32, i32 0
  %spec.select18.i774 = select i1 %cmp.i771, i32 %shr.i772, i32 %inc.i770
  %cmp1.i775 = icmp sgt i32 %spec.select18.i774, 255
  %add.i776 = or disjoint i32 %spec.select.i773, 16
  %shr3.i777 = lshr i32 %spec.select18.i774, 8
  %size.1.i778 = select i1 %cmp1.i775, i32 %add.i776, i32 %spec.select.i773
  %tmp.1.i779 = select i1 %cmp1.i775, i32 %shr3.i777, i32 %spec.select18.i774
  %idxprom.i780 = sext i32 %tmp.1.i779 to i64
  %arrayidx.i781 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i780
  %149 = load i8, ptr %arrayidx.i781, align 1
  %conv.i782 = zext i8 %149 to i32
  %add5.i783 = add nuw nsw i32 %size.1.i778, %conv.i782
  %shr6.i784 = lshr i32 %add5.i783, 1
  %sh_prom.i.i786 = zext nneg i32 %shr6.i784 to i64
  %shl.i.i787 = shl i64 %147, %sh_prom.i.i786
  store i64 %shl.i.i787, ptr %cur_bits.i353, align 8
  %sub.i.i789 = sub nsw i32 %146, %shr6.i784
  store i32 %sub.i.i789, ptr %i_left.i355, align 8
  %cmp.i.i790 = icmp slt i32 %sub.i.i789, 33
  br i1 %cmp.i.i790, label %if.then.i.i807, label %bs_write.exit.i791

if.then.i.i807:                                   ; preds = %bs_write_se.exit769
  %sh_prom6.i.i808 = zext nneg i32 %sub.i.i789 to i64
  %shl7.i.i809 = shl i64 %shl.i.i787, %sh_prom6.i.i808
  %add.i.i.i.i810 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i809)
  %conv8.i.i811 = trunc i64 %add.i.i.i.i810 to i32
  store i32 %conv8.i.i811, ptr %145, align 4
  %150 = load i32, ptr %i_left.i355, align 8
  %add.i.i813 = add nsw i32 %150, 32
  %151 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i814 = getelementptr inbounds i8, ptr %151, i64 4
  store ptr %add.ptr.i.i814, ptr %p.i, align 8
  %.pre.i815 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i791

bs_write.exit.i791:                               ; preds = %if.then.i.i807, %bs_write_se.exit769
  %152 = phi ptr [ %145, %bs_write_se.exit769 ], [ %add.ptr.i.i814, %if.then.i.i807 ]
  %153 = phi i32 [ %sub.i.i789, %bs_write_se.exit769 ], [ %add.i.i813, %if.then.i.i807 ]
  %154 = phi i64 [ %shl.i.i787, %bs_write_se.exit769 ], [ %.pre.i815, %if.then.i.i807 ]
  %add8.i792 = add nuw nsw i32 %shr6.i784, 1
  %sh_prom.i20.i793 = zext nneg i32 %add8.i792 to i64
  %shl.i21.i794 = shl i64 %154, %sh_prom.i20.i793
  %conv.i.i795 = zext i32 %inc.i770 to i64
  %or.i.i796 = or i64 %shl.i21.i794, %conv.i.i795
  store i64 %or.i.i796, ptr %cur_bits.i353, align 8
  %sub.i23.i797 = sub nsw i32 %153, %add8.i792
  store i32 %sub.i23.i797, ptr %i_left.i355, align 8
  %cmp.i24.i798 = icmp slt i32 %sub.i23.i797, 33
  br i1 %cmp.i24.i798, label %if.then.i25.i799, label %bs_write_ue_big.exit816

if.then.i25.i799:                                 ; preds = %bs_write.exit.i791
  %sh_prom6.i26.i800 = zext nneg i32 %sub.i23.i797 to i64
  %shl7.i27.i801 = shl i64 %or.i.i796, %sh_prom6.i26.i800
  %add.i.i.i28.i802 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i801)
  %conv8.i29.i803 = trunc i64 %add.i.i.i28.i802 to i32
  store i32 %conv8.i29.i803, ptr %152, align 4
  %155 = load i32, ptr %i_left.i355, align 8
  %add.i31.i805 = add nsw i32 %155, 32
  store i32 %add.i31.i805, ptr %i_left.i355, align 8
  %156 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i806 = getelementptr inbounds i8, ptr %156, i64 4
  store ptr %add.ptr.i32.i806, ptr %p.i, align 8
  br label %bs_write_ue_big.exit816

bs_write_ue_big.exit816:                          ; preds = %bs_write.exit.i791, %if.then.i25.i799
  %157 = phi ptr [ %152, %bs_write.exit.i791 ], [ %add.ptr.i32.i806, %if.then.i25.i799 ]
  %158 = phi i32 [ %sub.i23.i797, %bs_write.exit.i791 ], [ %add.i31.i805, %if.then.i25.i799 ]
  %159 = load i32, ptr %i_num_ref_frames_in_poc_cycle, align 4
  %cmp102325 = icmp sgt i32 %159, 0
  br i1 %cmp102325, label %for.body.lr.ph, label %if.end12

for.body.lr.ph:                                   ; preds = %bs_write_ue_big.exit816
  %i_offset_for_ref_frame = getelementptr inbounds i8, ptr %sps, i64 52
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %bs_write_se.exit846
  %160 = phi ptr [ %157, %for.body.lr.ph ], [ %167, %bs_write_se.exit846 ]
  %161 = phi i32 [ %158, %for.body.lr.ph ], [ %168, %bs_write_se.exit846 ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %bs_write_se.exit846 ]
  %arrayidx = getelementptr inbounds [256 x i32], ptr %i_offset_for_ref_frame, i64 0, i64 %indvars.iv
  %162 = load i32, ptr %arrayidx, align 4
  %mul.i817 = shl nsw i32 %162, 1
  %sub.i818 = sub nsw i32 1, %mul.i817
  %cmp.i819 = icmp sgt i32 %162, 0
  %spec.select.i820 = select i1 %cmp.i819, i32 %mul.i817, i32 %sub.i818
  %cmp2.i821 = icmp sgt i32 %spec.select.i820, 255
  %shr.i822 = lshr i32 %spec.select.i820, 8
  %size.0.i823 = select i1 %cmp2.i821, i32 16, i32 0
  %tmp.1.i824 = select i1 %cmp2.i821, i32 %shr.i822, i32 %spec.select.i820
  %idxprom.i825 = sext i32 %tmp.1.i824 to i64
  %arrayidx.i826 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i825
  %163 = load i8, ptr %arrayidx.i826, align 1
  %conv.i827 = zext i8 %163 to i32
  %add.i828 = add nuw nsw i32 %size.0.i823, %conv.i827
  %164 = load i64, ptr %cur_bits.i353, align 8
  %sh_prom.i.i830 = zext nneg i32 %add.i828 to i64
  %shl.i.i831 = shl i64 %164, %sh_prom.i.i830
  %conv.i.i832 = zext i32 %spec.select.i820 to i64
  %or.i.i833 = or i64 %shl.i.i831, %conv.i.i832
  store i64 %or.i.i833, ptr %cur_bits.i353, align 8
  %sub.i.i835 = sub nsw i32 %161, %add.i828
  store i32 %sub.i.i835, ptr %i_left.i355, align 8
  %cmp.i.i836 = icmp slt i32 %sub.i.i835, 33
  br i1 %cmp.i.i836, label %if.then.i.i838, label %bs_write_se.exit846

if.then.i.i838:                                   ; preds = %for.body
  %sh_prom6.i.i839 = zext nneg i32 %sub.i.i835 to i64
  %shl7.i.i840 = shl i64 %or.i.i833, %sh_prom6.i.i839
  %add.i.i.i.i841 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i840)
  %conv8.i.i842 = trunc i64 %add.i.i.i.i841 to i32
  store i32 %conv8.i.i842, ptr %160, align 4
  %165 = load i32, ptr %i_left.i355, align 8
  %add.i.i844 = add nsw i32 %165, 32
  store i32 %add.i.i844, ptr %i_left.i355, align 8
  %166 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i845 = getelementptr inbounds i8, ptr %166, i64 4
  store ptr %add.ptr.i.i845, ptr %p.i, align 8
  br label %bs_write_se.exit846

bs_write_se.exit846:                              ; preds = %for.body, %if.then.i.i838
  %167 = phi ptr [ %160, %for.body ], [ %add.ptr.i.i845, %if.then.i.i838 ]
  %168 = phi i32 [ %sub.i.i835, %for.body ], [ %add.i.i844, %if.then.i.i838 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %169 = load i32, ptr %i_num_ref_frames_in_poc_cycle, align 4
  %170 = sext i32 %169 to i64
  %cmp10 = icmp slt i64 %indvars.iv.next, %170
  br i1 %cmp10, label %for.body, label %if.end12

if.end12:                                         ; preds = %bs_write_se.exit846, %bs_write_ue_big.exit816, %if.then.i25.i680, %bs_write.exit.i672, %bs_write_ue_big.exit650
  %171 = phi ptr [ %157, %bs_write_ue_big.exit816 ], [ %add.ptr.i32.i687, %if.then.i25.i680 ], [ %122, %bs_write.exit.i672 ], [ %114, %bs_write_ue_big.exit650 ], [ %167, %bs_write_se.exit846 ]
  %172 = phi i32 [ %158, %bs_write_ue_big.exit816 ], [ %add.i31.i686, %if.then.i25.i680 ], [ %sub.i23.i678, %bs_write.exit.i672 ], [ %115, %bs_write_ue_big.exit650 ], [ %168, %bs_write_se.exit846 ]
  %i_num_ref_frames = getelementptr inbounds i8, ptr %sps, i64 1076
  %173 = load i32, ptr %i_num_ref_frames, align 4
  %inc.i847 = add i32 %173, 1
  %cmp.i848 = icmp sgt i32 %inc.i847, 65535
  %shr.i849 = lshr i32 %inc.i847, 16
  %spec.select.i850 = select i1 %cmp.i848, i32 32, i32 0
  %spec.select18.i851 = select i1 %cmp.i848, i32 %shr.i849, i32 %inc.i847
  %cmp1.i852 = icmp sgt i32 %spec.select18.i851, 255
  %add.i853 = or disjoint i32 %spec.select.i850, 16
  %shr3.i854 = lshr i32 %spec.select18.i851, 8
  %size.1.i855 = select i1 %cmp1.i852, i32 %add.i853, i32 %spec.select.i850
  %tmp.1.i856 = select i1 %cmp1.i852, i32 %shr3.i854, i32 %spec.select18.i851
  %idxprom.i857 = sext i32 %tmp.1.i856 to i64
  %arrayidx.i858 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i857
  %174 = load i8, ptr %arrayidx.i858, align 1
  %conv.i859 = zext i8 %174 to i32
  %add5.i860 = add nuw nsw i32 %size.1.i855, %conv.i859
  %shr6.i861 = lshr i32 %add5.i860, 1
  %175 = load i64, ptr %cur_bits.i353, align 8
  %sh_prom.i.i863 = zext nneg i32 %shr6.i861 to i64
  %shl.i.i864 = shl i64 %175, %sh_prom.i.i863
  store i64 %shl.i.i864, ptr %cur_bits.i353, align 8
  %sub.i.i866 = sub nsw i32 %172, %shr6.i861
  store i32 %sub.i.i866, ptr %i_left.i355, align 8
  %cmp.i.i867 = icmp slt i32 %sub.i.i866, 33
  br i1 %cmp.i.i867, label %if.then.i.i884, label %bs_write.exit.i868

if.then.i.i884:                                   ; preds = %if.end12
  %sh_prom6.i.i885 = zext nneg i32 %sub.i.i866 to i64
  %shl7.i.i886 = shl i64 %shl.i.i864, %sh_prom6.i.i885
  %add.i.i.i.i887 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i886)
  %conv8.i.i888 = trunc i64 %add.i.i.i.i887 to i32
  store i32 %conv8.i.i888, ptr %171, align 4
  %176 = load i32, ptr %i_left.i355, align 8
  %add.i.i890 = add nsw i32 %176, 32
  %177 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i891 = getelementptr inbounds i8, ptr %177, i64 4
  store ptr %add.ptr.i.i891, ptr %p.i, align 8
  %.pre.i892 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i868

bs_write.exit.i868:                               ; preds = %if.then.i.i884, %if.end12
  %178 = phi ptr [ %171, %if.end12 ], [ %add.ptr.i.i891, %if.then.i.i884 ]
  %179 = phi i32 [ %sub.i.i866, %if.end12 ], [ %add.i.i890, %if.then.i.i884 ]
  %180 = phi i64 [ %shl.i.i864, %if.end12 ], [ %.pre.i892, %if.then.i.i884 ]
  %add8.i869 = add nuw nsw i32 %shr6.i861, 1
  %sh_prom.i20.i870 = zext nneg i32 %add8.i869 to i64
  %shl.i21.i871 = shl i64 %180, %sh_prom.i20.i870
  %conv.i.i872 = zext i32 %inc.i847 to i64
  %or.i.i873 = or i64 %shl.i21.i871, %conv.i.i872
  store i64 %or.i.i873, ptr %cur_bits.i353, align 8
  %sub.i23.i874 = sub nsw i32 %179, %add8.i869
  store i32 %sub.i23.i874, ptr %i_left.i355, align 8
  %cmp.i24.i875 = icmp slt i32 %sub.i23.i874, 33
  br i1 %cmp.i24.i875, label %if.then.i25.i876, label %bs_write_ue_big.exit893

if.then.i25.i876:                                 ; preds = %bs_write.exit.i868
  %sh_prom6.i26.i877 = zext nneg i32 %sub.i23.i874 to i64
  %shl7.i27.i878 = shl i64 %or.i.i873, %sh_prom6.i26.i877
  %add.i.i.i28.i879 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i878)
  %conv8.i29.i880 = trunc i64 %add.i.i.i28.i879 to i32
  store i32 %conv8.i29.i880, ptr %178, align 4
  %181 = load i32, ptr %i_left.i355, align 8
  %add.i31.i882 = add nsw i32 %181, 32
  store i32 %add.i31.i882, ptr %i_left.i355, align 8
  %182 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i883 = getelementptr inbounds i8, ptr %182, i64 4
  store ptr %add.ptr.i32.i883, ptr %p.i, align 8
  %.pre2348 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit893

bs_write_ue_big.exit893:                          ; preds = %bs_write.exit.i868, %if.then.i25.i876
  %183 = phi ptr [ %178, %bs_write.exit.i868 ], [ %add.ptr.i32.i883, %if.then.i25.i876 ]
  %184 = phi i32 [ %sub.i23.i874, %bs_write.exit.i868 ], [ %add.i31.i882, %if.then.i25.i876 ]
  %185 = phi i64 [ %or.i.i873, %bs_write.exit.i868 ], [ %.pre2348, %if.then.i25.i876 ]
  %b_gaps_in_frame_num_value_allowed = getelementptr inbounds i8, ptr %sps, i64 1080
  %186 = load i32, ptr %b_gaps_in_frame_num_value_allowed, align 4
  %shl.i895 = shl i64 %185, 1
  %conv.i896 = zext i32 %186 to i64
  %or.i897 = or i64 %shl.i895, %conv.i896
  store i64 %or.i897, ptr %cur_bits.i353, align 8
  %sub.i899 = add nsw i32 %184, -1
  store i32 %sub.i899, ptr %i_left.i355, align 8
  %cmp.i900 = icmp slt i32 %184, 34
  br i1 %cmp.i900, label %if.then.i901, label %bs_write.exit909

if.then.i901:                                     ; preds = %bs_write_ue_big.exit893
  %sh_prom6.i902 = zext nneg i32 %sub.i899 to i64
  %shl7.i903 = shl i64 %or.i897, %sh_prom6.i902
  %add.i.i.i904 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i903)
  %conv8.i905 = trunc i64 %add.i.i.i904 to i32
  store i32 %conv8.i905, ptr %183, align 4
  %187 = load i32, ptr %i_left.i355, align 8
  %add.i907 = add nsw i32 %187, 32
  store i32 %add.i907, ptr %i_left.i355, align 8
  %188 = load ptr, ptr %p.i, align 8
  %add.ptr.i908 = getelementptr inbounds i8, ptr %188, i64 4
  store ptr %add.ptr.i908, ptr %p.i, align 8
  %.pre2349 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit909

bs_write.exit909:                                 ; preds = %bs_write_ue_big.exit893, %if.then.i901
  %189 = phi ptr [ %183, %bs_write_ue_big.exit893 ], [ %add.ptr.i908, %if.then.i901 ]
  %190 = phi i32 [ %sub.i899, %bs_write_ue_big.exit893 ], [ %add.i907, %if.then.i901 ]
  %191 = phi i64 [ %or.i897, %bs_write_ue_big.exit893 ], [ %.pre2349, %if.then.i901 ]
  %i_mb_width = getelementptr inbounds i8, ptr %sps, i64 1084
  %192 = load i32, ptr %i_mb_width, align 4
  %cmp.i911 = icmp sgt i32 %192, 65535
  %shr.i912 = lshr i32 %192, 16
  %spec.select.i913 = select i1 %cmp.i911, i32 32, i32 0
  %spec.select18.i914 = select i1 %cmp.i911, i32 %shr.i912, i32 %192
  %cmp1.i915 = icmp sgt i32 %spec.select18.i914, 255
  %add.i916 = or disjoint i32 %spec.select.i913, 16
  %shr3.i917 = lshr i32 %spec.select18.i914, 8
  %size.1.i918 = select i1 %cmp1.i915, i32 %add.i916, i32 %spec.select.i913
  %tmp.1.i919 = select i1 %cmp1.i915, i32 %shr3.i917, i32 %spec.select18.i914
  %idxprom.i920 = sext i32 %tmp.1.i919 to i64
  %arrayidx.i921 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i920
  %193 = load i8, ptr %arrayidx.i921, align 1
  %conv.i922 = zext i8 %193 to i32
  %add5.i923 = add nuw nsw i32 %size.1.i918, %conv.i922
  %shr6.i924 = lshr i32 %add5.i923, 1
  %sh_prom.i.i926 = zext nneg i32 %shr6.i924 to i64
  %shl.i.i927 = shl i64 %191, %sh_prom.i.i926
  store i64 %shl.i.i927, ptr %cur_bits.i353, align 8
  %sub.i.i929 = sub nsw i32 %190, %shr6.i924
  store i32 %sub.i.i929, ptr %i_left.i355, align 8
  %cmp.i.i930 = icmp slt i32 %sub.i.i929, 33
  br i1 %cmp.i.i930, label %if.then.i.i947, label %bs_write.exit.i931

if.then.i.i947:                                   ; preds = %bs_write.exit909
  %sh_prom6.i.i948 = zext nneg i32 %sub.i.i929 to i64
  %shl7.i.i949 = shl i64 %shl.i.i927, %sh_prom6.i.i948
  %add.i.i.i.i950 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i949)
  %conv8.i.i951 = trunc i64 %add.i.i.i.i950 to i32
  store i32 %conv8.i.i951, ptr %189, align 4
  %194 = load i32, ptr %i_left.i355, align 8
  %add.i.i953 = add nsw i32 %194, 32
  %195 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i954 = getelementptr inbounds i8, ptr %195, i64 4
  store ptr %add.ptr.i.i954, ptr %p.i, align 8
  %.pre.i955 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i931

bs_write.exit.i931:                               ; preds = %if.then.i.i947, %bs_write.exit909
  %196 = phi ptr [ %189, %bs_write.exit909 ], [ %add.ptr.i.i954, %if.then.i.i947 ]
  %197 = phi i32 [ %sub.i.i929, %bs_write.exit909 ], [ %add.i.i953, %if.then.i.i947 ]
  %198 = phi i64 [ %shl.i.i927, %bs_write.exit909 ], [ %.pre.i955, %if.then.i.i947 ]
  %add8.i932 = add nuw nsw i32 %shr6.i924, 1
  %sh_prom.i20.i933 = zext nneg i32 %add8.i932 to i64
  %shl.i21.i934 = shl i64 %198, %sh_prom.i20.i933
  %conv.i.i935 = zext i32 %192 to i64
  %or.i.i936 = or i64 %shl.i21.i934, %conv.i.i935
  store i64 %or.i.i936, ptr %cur_bits.i353, align 8
  %sub.i23.i937 = sub nsw i32 %197, %add8.i932
  store i32 %sub.i23.i937, ptr %i_left.i355, align 8
  %cmp.i24.i938 = icmp slt i32 %sub.i23.i937, 33
  br i1 %cmp.i24.i938, label %if.then.i25.i939, label %bs_write_ue_big.exit956

if.then.i25.i939:                                 ; preds = %bs_write.exit.i931
  %sh_prom6.i26.i940 = zext nneg i32 %sub.i23.i937 to i64
  %shl7.i27.i941 = shl i64 %or.i.i936, %sh_prom6.i26.i940
  %add.i.i.i28.i942 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i941)
  %conv8.i29.i943 = trunc i64 %add.i.i.i28.i942 to i32
  store i32 %conv8.i29.i943, ptr %196, align 4
  %199 = load i32, ptr %i_left.i355, align 8
  %add.i31.i945 = add nsw i32 %199, 32
  store i32 %add.i31.i945, ptr %i_left.i355, align 8
  %200 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i946 = getelementptr inbounds i8, ptr %200, i64 4
  store ptr %add.ptr.i32.i946, ptr %p.i, align 8
  br label %bs_write_ue_big.exit956

bs_write_ue_big.exit956:                          ; preds = %bs_write.exit.i931, %if.then.i25.i939
  %201 = phi ptr [ %196, %bs_write.exit.i931 ], [ %add.ptr.i32.i946, %if.then.i25.i939 ]
  %202 = phi i32 [ %sub.i23.i937, %bs_write.exit.i931 ], [ %add.i31.i945, %if.then.i25.i939 ]
  %b_frame_mbs_only = getelementptr inbounds i8, ptr %sps, i64 1092
  %203 = load i32, ptr %b_frame_mbs_only, align 4
  %tobool.not = icmp eq i32 %203, 0
  %i_mb_height17 = getelementptr inbounds i8, ptr %sps, i64 1088
  %204 = load i32, ptr %i_mb_height17, align 4
  br i1 %tobool.not, label %if.else16, label %if.then14

if.then14:                                        ; preds = %bs_write_ue_big.exit956
  %cmp.i958 = icmp sgt i32 %204, 65535
  %shr.i959 = lshr i32 %204, 16
  %spec.select.i960 = select i1 %cmp.i958, i32 32, i32 0
  %spec.select18.i961 = select i1 %cmp.i958, i32 %shr.i959, i32 %204
  %cmp1.i962 = icmp sgt i32 %spec.select18.i961, 255
  %add.i963 = or disjoint i32 %spec.select.i960, 16
  %shr3.i964 = lshr i32 %spec.select18.i961, 8
  %size.1.i965 = select i1 %cmp1.i962, i32 %add.i963, i32 %spec.select.i960
  %tmp.1.i966 = select i1 %cmp1.i962, i32 %shr3.i964, i32 %spec.select18.i961
  %idxprom.i967 = sext i32 %tmp.1.i966 to i64
  %arrayidx.i968 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i967
  %205 = load i8, ptr %arrayidx.i968, align 1
  %conv.i969 = zext i8 %205 to i32
  %add5.i970 = add nuw nsw i32 %size.1.i965, %conv.i969
  %shr6.i971 = lshr i32 %add5.i970, 1
  %206 = load i64, ptr %cur_bits.i353, align 8
  %sh_prom.i.i973 = zext nneg i32 %shr6.i971 to i64
  %shl.i.i974 = shl i64 %206, %sh_prom.i.i973
  store i64 %shl.i.i974, ptr %cur_bits.i353, align 8
  %sub.i.i976 = sub nsw i32 %202, %shr6.i971
  store i32 %sub.i.i976, ptr %i_left.i355, align 8
  %cmp.i.i977 = icmp slt i32 %sub.i.i976, 33
  br i1 %cmp.i.i977, label %if.then.i.i994, label %bs_write.exit.i978

if.then.i.i994:                                   ; preds = %if.then14
  %sh_prom6.i.i995 = zext nneg i32 %sub.i.i976 to i64
  %shl7.i.i996 = shl i64 %shl.i.i974, %sh_prom6.i.i995
  %add.i.i.i.i997 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i996)
  %conv8.i.i998 = trunc i64 %add.i.i.i.i997 to i32
  store i32 %conv8.i.i998, ptr %201, align 4
  %207 = load i32, ptr %i_left.i355, align 8
  %add.i.i1000 = add nsw i32 %207, 32
  %208 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1001 = getelementptr inbounds i8, ptr %208, i64 4
  store ptr %add.ptr.i.i1001, ptr %p.i, align 8
  %.pre.i1002 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i978

bs_write.exit.i978:                               ; preds = %if.then.i.i994, %if.then14
  %209 = phi ptr [ %201, %if.then14 ], [ %add.ptr.i.i1001, %if.then.i.i994 ]
  %210 = phi i32 [ %sub.i.i976, %if.then14 ], [ %add.i.i1000, %if.then.i.i994 ]
  %211 = phi i64 [ %shl.i.i974, %if.then14 ], [ %.pre.i1002, %if.then.i.i994 ]
  %add8.i979 = add nuw nsw i32 %shr6.i971, 1
  %sh_prom.i20.i980 = zext nneg i32 %add8.i979 to i64
  %shl.i21.i981 = shl i64 %211, %sh_prom.i20.i980
  %conv.i.i982 = zext i32 %204 to i64
  %or.i.i983 = or i64 %shl.i21.i981, %conv.i.i982
  store i64 %or.i.i983, ptr %cur_bits.i353, align 8
  %sub.i23.i984 = sub nsw i32 %210, %add8.i979
  store i32 %sub.i23.i984, ptr %i_left.i355, align 8
  %cmp.i24.i985 = icmp slt i32 %sub.i23.i984, 33
  br i1 %cmp.i24.i985, label %if.end19.sink.split, label %if.end19

if.else16:                                        ; preds = %bs_write_ue_big.exit956
  %div = sdiv i32 %204, 2
  %cmp.i1005 = icmp sgt i32 %204, 131071
  %shr.i1006 = lshr i32 %div, 16
  %spec.select.i1007 = select i1 %cmp.i1005, i32 32, i32 0
  %spec.select18.i1008 = select i1 %cmp.i1005, i32 %shr.i1006, i32 %div
  %cmp1.i1009 = icmp sgt i32 %spec.select18.i1008, 255
  %add.i1010 = or disjoint i32 %spec.select.i1007, 16
  %shr3.i1011 = lshr i32 %spec.select18.i1008, 8
  %size.1.i1012 = select i1 %cmp1.i1009, i32 %add.i1010, i32 %spec.select.i1007
  %tmp.1.i1013 = select i1 %cmp1.i1009, i32 %shr3.i1011, i32 %spec.select18.i1008
  %idxprom.i1014 = sext i32 %tmp.1.i1013 to i64
  %arrayidx.i1015 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1014
  %212 = load i8, ptr %arrayidx.i1015, align 1
  %conv.i1016 = zext i8 %212 to i32
  %add5.i1017 = add nuw nsw i32 %size.1.i1012, %conv.i1016
  %shr6.i1018 = lshr i32 %add5.i1017, 1
  %213 = load i64, ptr %cur_bits.i353, align 8
  %sh_prom.i.i1020 = zext nneg i32 %shr6.i1018 to i64
  %shl.i.i1021 = shl i64 %213, %sh_prom.i.i1020
  store i64 %shl.i.i1021, ptr %cur_bits.i353, align 8
  %sub.i.i1023 = sub nsw i32 %202, %shr6.i1018
  store i32 %sub.i.i1023, ptr %i_left.i355, align 8
  %cmp.i.i1024 = icmp slt i32 %sub.i.i1023, 33
  br i1 %cmp.i.i1024, label %if.then.i.i1041, label %bs_write.exit.i1025

if.then.i.i1041:                                  ; preds = %if.else16
  %sh_prom6.i.i1042 = zext nneg i32 %sub.i.i1023 to i64
  %shl7.i.i1043 = shl i64 %shl.i.i1021, %sh_prom6.i.i1042
  %add.i.i.i.i1044 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1043)
  %conv8.i.i1045 = trunc i64 %add.i.i.i.i1044 to i32
  store i32 %conv8.i.i1045, ptr %201, align 4
  %214 = load i32, ptr %i_left.i355, align 8
  %add.i.i1047 = add nsw i32 %214, 32
  %215 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1048 = getelementptr inbounds i8, ptr %215, i64 4
  store ptr %add.ptr.i.i1048, ptr %p.i, align 8
  %.pre.i1049 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i1025

bs_write.exit.i1025:                              ; preds = %if.then.i.i1041, %if.else16
  %216 = phi ptr [ %201, %if.else16 ], [ %add.ptr.i.i1048, %if.then.i.i1041 ]
  %217 = phi i32 [ %sub.i.i1023, %if.else16 ], [ %add.i.i1047, %if.then.i.i1041 ]
  %218 = phi i64 [ %shl.i.i1021, %if.else16 ], [ %.pre.i1049, %if.then.i.i1041 ]
  %add8.i1026 = add nuw nsw i32 %shr6.i1018, 1
  %sh_prom.i20.i1027 = zext nneg i32 %add8.i1026 to i64
  %shl.i21.i1028 = shl i64 %218, %sh_prom.i20.i1027
  %conv.i.i1029 = zext i32 %div to i64
  %or.i.i1030 = or i64 %shl.i21.i1028, %conv.i.i1029
  store i64 %or.i.i1030, ptr %cur_bits.i353, align 8
  %sub.i23.i1031 = sub nsw i32 %217, %add8.i1026
  store i32 %sub.i23.i1031, ptr %i_left.i355, align 8
  %cmp.i24.i1032 = icmp slt i32 %sub.i23.i1031, 33
  br i1 %cmp.i24.i1032, label %if.end19.sink.split, label %if.end19

if.end19.sink.split:                              ; preds = %bs_write.exit.i1025, %bs_write.exit.i978
  %sub.i23.i1031.sink = phi i32 [ %sub.i23.i984, %bs_write.exit.i978 ], [ %sub.i23.i1031, %bs_write.exit.i1025 ]
  %or.i.i1030.sink = phi i64 [ %or.i.i983, %bs_write.exit.i978 ], [ %or.i.i1030, %bs_write.exit.i1025 ]
  %.sink = phi ptr [ %209, %bs_write.exit.i978 ], [ %216, %bs_write.exit.i1025 ]
  %sh_prom6.i26.i1034 = zext nneg i32 %sub.i23.i1031.sink to i64
  %shl7.i27.i1035 = shl i64 %or.i.i1030.sink, %sh_prom6.i26.i1034
  %add.i.i.i28.i1036 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1035)
  %conv8.i29.i1037 = trunc i64 %add.i.i.i28.i1036 to i32
  store i32 %conv8.i29.i1037, ptr %.sink, align 4
  %219 = load i32, ptr %i_left.i355, align 8
  %add.i31.i1039 = add nsw i32 %219, 32
  store i32 %add.i31.i1039, ptr %i_left.i355, align 8
  %220 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i1040 = getelementptr inbounds i8, ptr %220, i64 4
  store ptr %add.ptr.i32.i1040, ptr %p.i, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %bs_write.exit.i1025, %bs_write.exit.i978
  %221 = phi ptr [ %216, %bs_write.exit.i1025 ], [ %209, %bs_write.exit.i978 ], [ %add.ptr.i32.i1040, %if.end19.sink.split ]
  %222 = phi i32 [ %sub.i23.i1031, %bs_write.exit.i1025 ], [ %sub.i23.i984, %bs_write.exit.i978 ], [ %add.i31.i1039, %if.end19.sink.split ]
  %223 = load i32, ptr %b_frame_mbs_only, align 4
  %224 = load i64, ptr %cur_bits.i353, align 8
  %shl.i1052 = shl i64 %224, 1
  %conv.i1053 = zext i32 %223 to i64
  %or.i1054 = or i64 %shl.i1052, %conv.i1053
  store i64 %or.i1054, ptr %cur_bits.i353, align 8
  %sub.i1056 = add nsw i32 %222, -1
  store i32 %sub.i1056, ptr %i_left.i355, align 8
  %cmp.i1057 = icmp slt i32 %222, 34
  br i1 %cmp.i1057, label %if.then.i1058, label %bs_write.exit1066

if.then.i1058:                                    ; preds = %if.end19
  %sh_prom6.i1059 = zext nneg i32 %sub.i1056 to i64
  %shl7.i1060 = shl i64 %or.i1054, %sh_prom6.i1059
  %add.i.i.i1061 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1060)
  %conv8.i1062 = trunc i64 %add.i.i.i1061 to i32
  store i32 %conv8.i1062, ptr %221, align 4
  %225 = load i32, ptr %i_left.i355, align 8
  %add.i1064 = add nsw i32 %225, 32
  store i32 %add.i1064, ptr %i_left.i355, align 8
  %226 = load ptr, ptr %p.i, align 8
  %add.ptr.i1065 = getelementptr inbounds i8, ptr %226, i64 4
  store ptr %add.ptr.i1065, ptr %p.i, align 8
  %.pre2351.pre = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1066

bs_write.exit1066:                                ; preds = %if.end19, %if.then.i1058
  %.pre2351 = phi i64 [ %or.i1054, %if.end19 ], [ %.pre2351.pre, %if.then.i1058 ]
  %227 = phi ptr [ %221, %if.end19 ], [ %add.ptr.i1065, %if.then.i1058 ]
  %228 = phi i32 [ %sub.i1056, %if.end19 ], [ %add.i1064, %if.then.i1058 ]
  %229 = load i32, ptr %b_frame_mbs_only, align 4
  %tobool22.not = icmp eq i32 %229, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %bs_write.exit1066
  %b_mb_adaptive_frame_field = getelementptr inbounds i8, ptr %sps, i64 1096
  %230 = load i32, ptr %b_mb_adaptive_frame_field, align 4
  %shl.i1068 = shl i64 %.pre2351, 1
  %conv.i1069 = zext i32 %230 to i64
  %or.i1070 = or i64 %shl.i1068, %conv.i1069
  store i64 %or.i1070, ptr %cur_bits.i353, align 8
  %sub.i1072 = add nsw i32 %228, -1
  store i32 %sub.i1072, ptr %i_left.i355, align 8
  %cmp.i1073 = icmp slt i32 %228, 34
  br i1 %cmp.i1073, label %if.then.i1074, label %if.end24

if.then.i1074:                                    ; preds = %if.then23
  %sh_prom6.i1075 = zext nneg i32 %sub.i1072 to i64
  %shl7.i1076 = shl i64 %or.i1070, %sh_prom6.i1075
  %add.i.i.i1077 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1076)
  %conv8.i1078 = trunc i64 %add.i.i.i1077 to i32
  store i32 %conv8.i1078, ptr %227, align 4
  %231 = load i32, ptr %i_left.i355, align 8
  %add.i1080 = add nsw i32 %231, 32
  store i32 %add.i1080, ptr %i_left.i355, align 8
  %232 = load ptr, ptr %p.i, align 8
  %add.ptr.i1081 = getelementptr inbounds i8, ptr %232, i64 4
  store ptr %add.ptr.i1081, ptr %p.i, align 8
  %.pre2350 = load i64, ptr %cur_bits.i353, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then.i1074, %if.then23, %bs_write.exit1066
  %233 = phi ptr [ %add.ptr.i1081, %if.then.i1074 ], [ %227, %if.then23 ], [ %227, %bs_write.exit1066 ]
  %234 = phi i32 [ %add.i1080, %if.then.i1074 ], [ %sub.i1072, %if.then23 ], [ %228, %bs_write.exit1066 ]
  %235 = phi i64 [ %.pre2350, %if.then.i1074 ], [ %or.i1070, %if.then23 ], [ %.pre2351, %bs_write.exit1066 ]
  %b_direct8x8_inference = getelementptr inbounds i8, ptr %sps, i64 1100
  %236 = load i32, ptr %b_direct8x8_inference, align 4
  %shl.i1084 = shl i64 %235, 1
  %conv.i1085 = zext i32 %236 to i64
  %or.i1086 = or i64 %shl.i1084, %conv.i1085
  store i64 %or.i1086, ptr %cur_bits.i353, align 8
  %sub.i1088 = add nsw i32 %234, -1
  store i32 %sub.i1088, ptr %i_left.i355, align 8
  %cmp.i1089 = icmp slt i32 %234, 34
  br i1 %cmp.i1089, label %if.then.i1090, label %bs_write.exit1098

if.then.i1090:                                    ; preds = %if.end24
  %sh_prom6.i1091 = zext nneg i32 %sub.i1088 to i64
  %shl7.i1092 = shl i64 %or.i1086, %sh_prom6.i1091
  %add.i.i.i1093 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1092)
  %conv8.i1094 = trunc i64 %add.i.i.i1093 to i32
  store i32 %conv8.i1094, ptr %233, align 4
  %237 = load i32, ptr %i_left.i355, align 8
  %add.i1096 = add nsw i32 %237, 32
  store i32 %add.i1096, ptr %i_left.i355, align 8
  %238 = load ptr, ptr %p.i, align 8
  %add.ptr.i1097 = getelementptr inbounds i8, ptr %238, i64 4
  store ptr %add.ptr.i1097, ptr %p.i, align 8
  %.pre2352 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1098

bs_write.exit1098:                                ; preds = %if.end24, %if.then.i1090
  %239 = phi ptr [ %233, %if.end24 ], [ %add.ptr.i1097, %if.then.i1090 ]
  %240 = phi i32 [ %sub.i1088, %if.end24 ], [ %add.i1096, %if.then.i1090 ]
  %241 = phi i64 [ %or.i1086, %if.end24 ], [ %.pre2352, %if.then.i1090 ]
  %b_crop = getelementptr inbounds i8, ptr %sps, i64 1104
  %242 = load i32, ptr %b_crop, align 4
  %shl.i1100 = shl i64 %241, 1
  %conv.i1101 = zext i32 %242 to i64
  %or.i1102 = or i64 %shl.i1100, %conv.i1101
  store i64 %or.i1102, ptr %cur_bits.i353, align 8
  %sub.i1104 = add nsw i32 %240, -1
  store i32 %sub.i1104, ptr %i_left.i355, align 8
  %cmp.i1105 = icmp slt i32 %240, 34
  br i1 %cmp.i1105, label %if.then.i1106, label %bs_write.exit1114

if.then.i1106:                                    ; preds = %bs_write.exit1098
  %sh_prom6.i1107 = zext nneg i32 %sub.i1104 to i64
  %shl7.i1108 = shl i64 %or.i1102, %sh_prom6.i1107
  %add.i.i.i1109 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1108)
  %conv8.i1110 = trunc i64 %add.i.i.i1109 to i32
  store i32 %conv8.i1110, ptr %239, align 4
  %243 = load i32, ptr %i_left.i355, align 8
  %add.i1112 = add nsw i32 %243, 32
  store i32 %add.i1112, ptr %i_left.i355, align 8
  %244 = load ptr, ptr %p.i, align 8
  %add.ptr.i1113 = getelementptr inbounds i8, ptr %244, i64 4
  store ptr %add.ptr.i1113, ptr %p.i, align 8
  %.pre2357.pre = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1114

bs_write.exit1114:                                ; preds = %bs_write.exit1098, %if.then.i1106
  %.pre2357 = phi i64 [ %or.i1102, %bs_write.exit1098 ], [ %.pre2357.pre, %if.then.i1106 ]
  %245 = phi ptr [ %239, %bs_write.exit1098 ], [ %add.ptr.i1113, %if.then.i1106 ]
  %246 = phi i32 [ %sub.i1104, %bs_write.exit1098 ], [ %add.i1112, %if.then.i1106 ]
  %247 = load i32, ptr %b_crop, align 4
  %tobool26.not = icmp eq i32 %247, 0
  br i1 %tobool26.not, label %if.end35, label %if.then27

if.then27:                                        ; preds = %bs_write.exit1114
  %crop = getelementptr inbounds i8, ptr %sps, i64 1108
  %248 = load i32, ptr %crop, align 4
  %div28 = sdiv i32 %248, 2
  %inc.i1115 = add nsw i32 %div28, 1
  %cmp.i1116 = icmp sgt i32 %248, 131069
  %shr.i1117 = lshr i32 %inc.i1115, 16
  %spec.select.i1118 = select i1 %cmp.i1116, i32 32, i32 0
  %spec.select18.i1119 = select i1 %cmp.i1116, i32 %shr.i1117, i32 %inc.i1115
  %cmp1.i1120 = icmp sgt i32 %spec.select18.i1119, 255
  %add.i1121 = or disjoint i32 %spec.select.i1118, 16
  %shr3.i1122 = lshr i32 %spec.select18.i1119, 8
  %size.1.i1123 = select i1 %cmp1.i1120, i32 %add.i1121, i32 %spec.select.i1118
  %tmp.1.i1124 = select i1 %cmp1.i1120, i32 %shr3.i1122, i32 %spec.select18.i1119
  %idxprom.i1125 = sext i32 %tmp.1.i1124 to i64
  %arrayidx.i1126 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1125
  %249 = load i8, ptr %arrayidx.i1126, align 1
  %conv.i1127 = zext i8 %249 to i32
  %add5.i1128 = add nuw nsw i32 %size.1.i1123, %conv.i1127
  %shr6.i1129 = lshr i32 %add5.i1128, 1
  %sh_prom.i.i1131 = zext nneg i32 %shr6.i1129 to i64
  %shl.i.i1132 = shl i64 %.pre2357, %sh_prom.i.i1131
  store i64 %shl.i.i1132, ptr %cur_bits.i353, align 8
  %sub.i.i1134 = sub nsw i32 %246, %shr6.i1129
  store i32 %sub.i.i1134, ptr %i_left.i355, align 8
  %cmp.i.i1135 = icmp slt i32 %sub.i.i1134, 33
  br i1 %cmp.i.i1135, label %if.then.i.i1152, label %bs_write.exit.i1136

if.then.i.i1152:                                  ; preds = %if.then27
  %sh_prom6.i.i1153 = zext nneg i32 %sub.i.i1134 to i64
  %shl7.i.i1154 = shl i64 %shl.i.i1132, %sh_prom6.i.i1153
  %add.i.i.i.i1155 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1154)
  %conv8.i.i1156 = trunc i64 %add.i.i.i.i1155 to i32
  store i32 %conv8.i.i1156, ptr %245, align 4
  %250 = load i32, ptr %i_left.i355, align 8
  %add.i.i1158 = add nsw i32 %250, 32
  %251 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1159 = getelementptr inbounds i8, ptr %251, i64 4
  store ptr %add.ptr.i.i1159, ptr %p.i, align 8
  %.pre.i1160 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i1136

bs_write.exit.i1136:                              ; preds = %if.then.i.i1152, %if.then27
  %252 = phi ptr [ %245, %if.then27 ], [ %add.ptr.i.i1159, %if.then.i.i1152 ]
  %253 = phi i32 [ %sub.i.i1134, %if.then27 ], [ %add.i.i1158, %if.then.i.i1152 ]
  %254 = phi i64 [ %shl.i.i1132, %if.then27 ], [ %.pre.i1160, %if.then.i.i1152 ]
  %add8.i1137 = add nuw nsw i32 %shr6.i1129, 1
  %sh_prom.i20.i1138 = zext nneg i32 %add8.i1137 to i64
  %shl.i21.i1139 = shl i64 %254, %sh_prom.i20.i1138
  %conv.i.i1140 = zext i32 %inc.i1115 to i64
  %or.i.i1141 = or i64 %shl.i21.i1139, %conv.i.i1140
  store i64 %or.i.i1141, ptr %cur_bits.i353, align 8
  %sub.i23.i1142 = sub nsw i32 %253, %add8.i1137
  store i32 %sub.i23.i1142, ptr %i_left.i355, align 8
  %cmp.i24.i1143 = icmp slt i32 %sub.i23.i1142, 33
  br i1 %cmp.i24.i1143, label %if.then.i25.i1144, label %bs_write_ue_big.exit1161

if.then.i25.i1144:                                ; preds = %bs_write.exit.i1136
  %sh_prom6.i26.i1145 = zext nneg i32 %sub.i23.i1142 to i64
  %shl7.i27.i1146 = shl i64 %or.i.i1141, %sh_prom6.i26.i1145
  %add.i.i.i28.i1147 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1146)
  %conv8.i29.i1148 = trunc i64 %add.i.i.i28.i1147 to i32
  store i32 %conv8.i29.i1148, ptr %252, align 4
  %255 = load i32, ptr %i_left.i355, align 8
  %add.i31.i1150 = add nsw i32 %255, 32
  store i32 %add.i31.i1150, ptr %i_left.i355, align 8
  %256 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i1151 = getelementptr inbounds i8, ptr %256, i64 4
  store ptr %add.ptr.i32.i1151, ptr %p.i, align 8
  %.pre2353 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit1161

bs_write_ue_big.exit1161:                         ; preds = %bs_write.exit.i1136, %if.then.i25.i1144
  %257 = phi ptr [ %252, %bs_write.exit.i1136 ], [ %add.ptr.i32.i1151, %if.then.i25.i1144 ]
  %258 = phi i32 [ %sub.i23.i1142, %bs_write.exit.i1136 ], [ %add.i31.i1150, %if.then.i25.i1144 ]
  %259 = phi i64 [ %or.i.i1141, %bs_write.exit.i1136 ], [ %.pre2353, %if.then.i25.i1144 ]
  %i_right = getelementptr inbounds i8, ptr %sps, i64 1112
  %260 = load i32, ptr %i_right, align 4
  %div30 = sdiv i32 %260, 2
  %inc.i1162 = add nsw i32 %div30, 1
  %cmp.i1163 = icmp sgt i32 %260, 131069
  %shr.i1164 = lshr i32 %inc.i1162, 16
  %spec.select.i1165 = select i1 %cmp.i1163, i32 32, i32 0
  %spec.select18.i1166 = select i1 %cmp.i1163, i32 %shr.i1164, i32 %inc.i1162
  %cmp1.i1167 = icmp sgt i32 %spec.select18.i1166, 255
  %add.i1168 = or disjoint i32 %spec.select.i1165, 16
  %shr3.i1169 = lshr i32 %spec.select18.i1166, 8
  %size.1.i1170 = select i1 %cmp1.i1167, i32 %add.i1168, i32 %spec.select.i1165
  %tmp.1.i1171 = select i1 %cmp1.i1167, i32 %shr3.i1169, i32 %spec.select18.i1166
  %idxprom.i1172 = sext i32 %tmp.1.i1171 to i64
  %arrayidx.i1173 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1172
  %261 = load i8, ptr %arrayidx.i1173, align 1
  %conv.i1174 = zext i8 %261 to i32
  %add5.i1175 = add nuw nsw i32 %size.1.i1170, %conv.i1174
  %shr6.i1176 = lshr i32 %add5.i1175, 1
  %sh_prom.i.i1178 = zext nneg i32 %shr6.i1176 to i64
  %shl.i.i1179 = shl i64 %259, %sh_prom.i.i1178
  store i64 %shl.i.i1179, ptr %cur_bits.i353, align 8
  %sub.i.i1181 = sub nsw i32 %258, %shr6.i1176
  store i32 %sub.i.i1181, ptr %i_left.i355, align 8
  %cmp.i.i1182 = icmp slt i32 %sub.i.i1181, 33
  br i1 %cmp.i.i1182, label %if.then.i.i1199, label %bs_write.exit.i1183

if.then.i.i1199:                                  ; preds = %bs_write_ue_big.exit1161
  %sh_prom6.i.i1200 = zext nneg i32 %sub.i.i1181 to i64
  %shl7.i.i1201 = shl i64 %shl.i.i1179, %sh_prom6.i.i1200
  %add.i.i.i.i1202 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1201)
  %conv8.i.i1203 = trunc i64 %add.i.i.i.i1202 to i32
  store i32 %conv8.i.i1203, ptr %257, align 4
  %262 = load i32, ptr %i_left.i355, align 8
  %add.i.i1205 = add nsw i32 %262, 32
  %263 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1206 = getelementptr inbounds i8, ptr %263, i64 4
  store ptr %add.ptr.i.i1206, ptr %p.i, align 8
  %.pre.i1207 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i1183

bs_write.exit.i1183:                              ; preds = %if.then.i.i1199, %bs_write_ue_big.exit1161
  %264 = phi ptr [ %257, %bs_write_ue_big.exit1161 ], [ %add.ptr.i.i1206, %if.then.i.i1199 ]
  %265 = phi i32 [ %sub.i.i1181, %bs_write_ue_big.exit1161 ], [ %add.i.i1205, %if.then.i.i1199 ]
  %266 = phi i64 [ %shl.i.i1179, %bs_write_ue_big.exit1161 ], [ %.pre.i1207, %if.then.i.i1199 ]
  %add8.i1184 = add nuw nsw i32 %shr6.i1176, 1
  %sh_prom.i20.i1185 = zext nneg i32 %add8.i1184 to i64
  %shl.i21.i1186 = shl i64 %266, %sh_prom.i20.i1185
  %conv.i.i1187 = zext i32 %inc.i1162 to i64
  %or.i.i1188 = or i64 %shl.i21.i1186, %conv.i.i1187
  store i64 %or.i.i1188, ptr %cur_bits.i353, align 8
  %sub.i23.i1189 = sub nsw i32 %265, %add8.i1184
  store i32 %sub.i23.i1189, ptr %i_left.i355, align 8
  %cmp.i24.i1190 = icmp slt i32 %sub.i23.i1189, 33
  br i1 %cmp.i24.i1190, label %if.then.i25.i1191, label %bs_write_ue_big.exit1208

if.then.i25.i1191:                                ; preds = %bs_write.exit.i1183
  %sh_prom6.i26.i1192 = zext nneg i32 %sub.i23.i1189 to i64
  %shl7.i27.i1193 = shl i64 %or.i.i1188, %sh_prom6.i26.i1192
  %add.i.i.i28.i1194 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1193)
  %conv8.i29.i1195 = trunc i64 %add.i.i.i28.i1194 to i32
  store i32 %conv8.i29.i1195, ptr %264, align 4
  %267 = load i32, ptr %i_left.i355, align 8
  %add.i31.i1197 = add nsw i32 %267, 32
  store i32 %add.i31.i1197, ptr %i_left.i355, align 8
  %268 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i1198 = getelementptr inbounds i8, ptr %268, i64 4
  store ptr %add.ptr.i32.i1198, ptr %p.i, align 8
  %.pre2354 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit1208

bs_write_ue_big.exit1208:                         ; preds = %bs_write.exit.i1183, %if.then.i25.i1191
  %269 = phi ptr [ %264, %bs_write.exit.i1183 ], [ %add.ptr.i32.i1198, %if.then.i25.i1191 ]
  %270 = phi i32 [ %sub.i23.i1189, %bs_write.exit.i1183 ], [ %add.i31.i1197, %if.then.i25.i1191 ]
  %271 = phi i64 [ %or.i.i1188, %bs_write.exit.i1183 ], [ %.pre2354, %if.then.i25.i1191 ]
  %i_top = getelementptr inbounds i8, ptr %sps, i64 1116
  %272 = load i32, ptr %i_top, align 4
  %div32 = sdiv i32 %272, 2
  %inc.i1209 = add nsw i32 %div32, 1
  %cmp.i1210 = icmp sgt i32 %272, 131069
  %shr.i1211 = lshr i32 %inc.i1209, 16
  %spec.select.i1212 = select i1 %cmp.i1210, i32 32, i32 0
  %spec.select18.i1213 = select i1 %cmp.i1210, i32 %shr.i1211, i32 %inc.i1209
  %cmp1.i1214 = icmp sgt i32 %spec.select18.i1213, 255
  %add.i1215 = or disjoint i32 %spec.select.i1212, 16
  %shr3.i1216 = lshr i32 %spec.select18.i1213, 8
  %size.1.i1217 = select i1 %cmp1.i1214, i32 %add.i1215, i32 %spec.select.i1212
  %tmp.1.i1218 = select i1 %cmp1.i1214, i32 %shr3.i1216, i32 %spec.select18.i1213
  %idxprom.i1219 = sext i32 %tmp.1.i1218 to i64
  %arrayidx.i1220 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1219
  %273 = load i8, ptr %arrayidx.i1220, align 1
  %conv.i1221 = zext i8 %273 to i32
  %add5.i1222 = add nuw nsw i32 %size.1.i1217, %conv.i1221
  %shr6.i1223 = lshr i32 %add5.i1222, 1
  %sh_prom.i.i1225 = zext nneg i32 %shr6.i1223 to i64
  %shl.i.i1226 = shl i64 %271, %sh_prom.i.i1225
  store i64 %shl.i.i1226, ptr %cur_bits.i353, align 8
  %sub.i.i1228 = sub nsw i32 %270, %shr6.i1223
  store i32 %sub.i.i1228, ptr %i_left.i355, align 8
  %cmp.i.i1229 = icmp slt i32 %sub.i.i1228, 33
  br i1 %cmp.i.i1229, label %if.then.i.i1246, label %bs_write.exit.i1230

if.then.i.i1246:                                  ; preds = %bs_write_ue_big.exit1208
  %sh_prom6.i.i1247 = zext nneg i32 %sub.i.i1228 to i64
  %shl7.i.i1248 = shl i64 %shl.i.i1226, %sh_prom6.i.i1247
  %add.i.i.i.i1249 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1248)
  %conv8.i.i1250 = trunc i64 %add.i.i.i.i1249 to i32
  store i32 %conv8.i.i1250, ptr %269, align 4
  %274 = load i32, ptr %i_left.i355, align 8
  %add.i.i1252 = add nsw i32 %274, 32
  %275 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1253 = getelementptr inbounds i8, ptr %275, i64 4
  store ptr %add.ptr.i.i1253, ptr %p.i, align 8
  %.pre.i1254 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i1230

bs_write.exit.i1230:                              ; preds = %if.then.i.i1246, %bs_write_ue_big.exit1208
  %276 = phi ptr [ %269, %bs_write_ue_big.exit1208 ], [ %add.ptr.i.i1253, %if.then.i.i1246 ]
  %277 = phi i32 [ %sub.i.i1228, %bs_write_ue_big.exit1208 ], [ %add.i.i1252, %if.then.i.i1246 ]
  %278 = phi i64 [ %shl.i.i1226, %bs_write_ue_big.exit1208 ], [ %.pre.i1254, %if.then.i.i1246 ]
  %add8.i1231 = add nuw nsw i32 %shr6.i1223, 1
  %sh_prom.i20.i1232 = zext nneg i32 %add8.i1231 to i64
  %shl.i21.i1233 = shl i64 %278, %sh_prom.i20.i1232
  %conv.i.i1234 = zext i32 %inc.i1209 to i64
  %or.i.i1235 = or i64 %shl.i21.i1233, %conv.i.i1234
  store i64 %or.i.i1235, ptr %cur_bits.i353, align 8
  %sub.i23.i1236 = sub nsw i32 %277, %add8.i1231
  store i32 %sub.i23.i1236, ptr %i_left.i355, align 8
  %cmp.i24.i1237 = icmp slt i32 %sub.i23.i1236, 33
  br i1 %cmp.i24.i1237, label %if.then.i25.i1238, label %bs_write_ue_big.exit1255

if.then.i25.i1238:                                ; preds = %bs_write.exit.i1230
  %sh_prom6.i26.i1239 = zext nneg i32 %sub.i23.i1236 to i64
  %shl7.i27.i1240 = shl i64 %or.i.i1235, %sh_prom6.i26.i1239
  %add.i.i.i28.i1241 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1240)
  %conv8.i29.i1242 = trunc i64 %add.i.i.i28.i1241 to i32
  store i32 %conv8.i29.i1242, ptr %276, align 4
  %279 = load i32, ptr %i_left.i355, align 8
  %add.i31.i1244 = add nsw i32 %279, 32
  store i32 %add.i31.i1244, ptr %i_left.i355, align 8
  %280 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i1245 = getelementptr inbounds i8, ptr %280, i64 4
  store ptr %add.ptr.i32.i1245, ptr %p.i, align 8
  %.pre2355 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit1255

bs_write_ue_big.exit1255:                         ; preds = %bs_write.exit.i1230, %if.then.i25.i1238
  %281 = phi ptr [ %276, %bs_write.exit.i1230 ], [ %add.ptr.i32.i1245, %if.then.i25.i1238 ]
  %282 = phi i32 [ %sub.i23.i1236, %bs_write.exit.i1230 ], [ %add.i31.i1244, %if.then.i25.i1238 ]
  %283 = phi i64 [ %or.i.i1235, %bs_write.exit.i1230 ], [ %.pre2355, %if.then.i25.i1238 ]
  %i_bottom = getelementptr inbounds i8, ptr %sps, i64 1120
  %284 = load i32, ptr %i_bottom, align 4
  %div34 = sdiv i32 %284, 2
  %inc.i1256 = add nsw i32 %div34, 1
  %cmp.i1257 = icmp sgt i32 %284, 131069
  %shr.i1258 = lshr i32 %inc.i1256, 16
  %spec.select.i1259 = select i1 %cmp.i1257, i32 32, i32 0
  %spec.select18.i1260 = select i1 %cmp.i1257, i32 %shr.i1258, i32 %inc.i1256
  %cmp1.i1261 = icmp sgt i32 %spec.select18.i1260, 255
  %add.i1262 = or disjoint i32 %spec.select.i1259, 16
  %shr3.i1263 = lshr i32 %spec.select18.i1260, 8
  %size.1.i1264 = select i1 %cmp1.i1261, i32 %add.i1262, i32 %spec.select.i1259
  %tmp.1.i1265 = select i1 %cmp1.i1261, i32 %shr3.i1263, i32 %spec.select18.i1260
  %idxprom.i1266 = sext i32 %tmp.1.i1265 to i64
  %arrayidx.i1267 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1266
  %285 = load i8, ptr %arrayidx.i1267, align 1
  %conv.i1268 = zext i8 %285 to i32
  %add5.i1269 = add nuw nsw i32 %size.1.i1264, %conv.i1268
  %shr6.i1270 = lshr i32 %add5.i1269, 1
  %sh_prom.i.i1272 = zext nneg i32 %shr6.i1270 to i64
  %shl.i.i1273 = shl i64 %283, %sh_prom.i.i1272
  store i64 %shl.i.i1273, ptr %cur_bits.i353, align 8
  %sub.i.i1275 = sub nsw i32 %282, %shr6.i1270
  store i32 %sub.i.i1275, ptr %i_left.i355, align 8
  %cmp.i.i1276 = icmp slt i32 %sub.i.i1275, 33
  br i1 %cmp.i.i1276, label %if.then.i.i1293, label %bs_write.exit.i1277

if.then.i.i1293:                                  ; preds = %bs_write_ue_big.exit1255
  %sh_prom6.i.i1294 = zext nneg i32 %sub.i.i1275 to i64
  %shl7.i.i1295 = shl i64 %shl.i.i1273, %sh_prom6.i.i1294
  %add.i.i.i.i1296 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1295)
  %conv8.i.i1297 = trunc i64 %add.i.i.i.i1296 to i32
  store i32 %conv8.i.i1297, ptr %281, align 4
  %286 = load i32, ptr %i_left.i355, align 8
  %add.i.i1299 = add nsw i32 %286, 32
  %287 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1300 = getelementptr inbounds i8, ptr %287, i64 4
  store ptr %add.ptr.i.i1300, ptr %p.i, align 8
  %.pre.i1301 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i1277

bs_write.exit.i1277:                              ; preds = %if.then.i.i1293, %bs_write_ue_big.exit1255
  %288 = phi ptr [ %281, %bs_write_ue_big.exit1255 ], [ %add.ptr.i.i1300, %if.then.i.i1293 ]
  %289 = phi i32 [ %sub.i.i1275, %bs_write_ue_big.exit1255 ], [ %add.i.i1299, %if.then.i.i1293 ]
  %290 = phi i64 [ %shl.i.i1273, %bs_write_ue_big.exit1255 ], [ %.pre.i1301, %if.then.i.i1293 ]
  %add8.i1278 = add nuw nsw i32 %shr6.i1270, 1
  %sh_prom.i20.i1279 = zext nneg i32 %add8.i1278 to i64
  %shl.i21.i1280 = shl i64 %290, %sh_prom.i20.i1279
  %conv.i.i1281 = zext i32 %inc.i1256 to i64
  %or.i.i1282 = or i64 %shl.i21.i1280, %conv.i.i1281
  store i64 %or.i.i1282, ptr %cur_bits.i353, align 8
  %sub.i23.i1283 = sub nsw i32 %289, %add8.i1278
  store i32 %sub.i23.i1283, ptr %i_left.i355, align 8
  %cmp.i24.i1284 = icmp slt i32 %sub.i23.i1283, 33
  br i1 %cmp.i24.i1284, label %if.then.i25.i1285, label %if.end35

if.then.i25.i1285:                                ; preds = %bs_write.exit.i1277
  %sh_prom6.i26.i1286 = zext nneg i32 %sub.i23.i1283 to i64
  %shl7.i27.i1287 = shl i64 %or.i.i1282, %sh_prom6.i26.i1286
  %add.i.i.i28.i1288 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1287)
  %conv8.i29.i1289 = trunc i64 %add.i.i.i28.i1288 to i32
  store i32 %conv8.i29.i1289, ptr %288, align 4
  %291 = load i32, ptr %i_left.i355, align 8
  %add.i31.i1291 = add nsw i32 %291, 32
  store i32 %add.i31.i1291, ptr %i_left.i355, align 8
  %292 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i1292 = getelementptr inbounds i8, ptr %292, i64 4
  store ptr %add.ptr.i32.i1292, ptr %p.i, align 8
  %.pre2356 = load i64, ptr %cur_bits.i353, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then.i25.i1285, %bs_write.exit.i1277, %bs_write.exit1114
  %293 = phi ptr [ %add.ptr.i32.i1292, %if.then.i25.i1285 ], [ %288, %bs_write.exit.i1277 ], [ %245, %bs_write.exit1114 ]
  %294 = phi i32 [ %add.i31.i1291, %if.then.i25.i1285 ], [ %sub.i23.i1283, %bs_write.exit.i1277 ], [ %246, %bs_write.exit1114 ]
  %295 = phi i64 [ %.pre2356, %if.then.i25.i1285 ], [ %or.i.i1282, %bs_write.exit.i1277 ], [ %.pre2357, %bs_write.exit1114 ]
  %b_vui = getelementptr inbounds i8, ptr %sps, i64 1124
  %296 = load i32, ptr %b_vui, align 4
  %shl.i1304 = shl i64 %295, 1
  %conv.i1305 = zext i32 %296 to i64
  %or.i1306 = or i64 %shl.i1304, %conv.i1305
  store i64 %or.i1306, ptr %cur_bits.i353, align 8
  %sub.i1308 = add nsw i32 %294, -1
  store i32 %sub.i1308, ptr %i_left.i355, align 8
  %cmp.i1309 = icmp slt i32 %294, 34
  br i1 %cmp.i1309, label %if.then.i1310, label %bs_write.exit1318

if.then.i1310:                                    ; preds = %if.end35
  %sh_prom6.i1311 = zext nneg i32 %sub.i1308 to i64
  %shl7.i1312 = shl i64 %or.i1306, %sh_prom6.i1311
  %add.i.i.i1313 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1312)
  %conv8.i1314 = trunc i64 %add.i.i.i1313 to i32
  store i32 %conv8.i1314, ptr %293, align 4
  %297 = load i32, ptr %i_left.i355, align 8
  %add.i1316 = add nsw i32 %297, 32
  store i32 %add.i1316, ptr %i_left.i355, align 8
  %298 = load ptr, ptr %p.i, align 8
  %add.ptr.i1317 = getelementptr inbounds i8, ptr %298, i64 4
  store ptr %add.ptr.i1317, ptr %p.i, align 8
  %.pre2395.pre = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1318

bs_write.exit1318:                                ; preds = %if.end35, %if.then.i1310
  %.pre2395 = phi i64 [ %or.i1306, %if.end35 ], [ %.pre2395.pre, %if.then.i1310 ]
  %299 = phi ptr [ %293, %if.end35 ], [ %add.ptr.i1317, %if.then.i1310 ]
  %300 = phi i32 [ %sub.i1308, %if.end35 ], [ %add.i1316, %if.then.i1310 ]
  %301 = load i32, ptr %b_vui, align 4
  %tobool37.not = icmp eq i32 %301, 0
  br i1 %tobool37.not, label %if.end179, label %if.then38

if.then38:                                        ; preds = %bs_write.exit1318
  %vui = getelementptr inbounds i8, ptr %sps, i64 1128
  %302 = load i32, ptr %vui, align 4
  %shl.i1320 = shl i64 %.pre2395, 1
  %conv.i1321 = zext i32 %302 to i64
  %or.i1322 = or i64 %shl.i1320, %conv.i1321
  store i64 %or.i1322, ptr %cur_bits.i353, align 8
  %dec.i = add nsw i32 %300, -1
  store i32 %dec.i, ptr %i_left.i355, align 8
  %cmp.i1324 = icmp eq i32 %dec.i, 32
  br i1 %cmp.i1324, label %if.then.i1325, label %bs_write1.exit

if.then.i1325:                                    ; preds = %if.then38
  %conv6.i1326 = trunc i64 %or.i1322 to i32
  %add5.i.i1327 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1326)
  store i32 %add5.i.i1327, ptr %299, align 4
  %303 = load ptr, ptr %p.i, align 8
  %add.ptr.i1329 = getelementptr inbounds i8, ptr %303, i64 4
  store ptr %add.ptr.i1329, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  br label %bs_write1.exit

bs_write1.exit:                                   ; preds = %if.then38, %if.then.i1325
  %304 = phi ptr [ %299, %if.then38 ], [ %add.ptr.i1329, %if.then.i1325 ]
  %305 = phi i32 [ %dec.i, %if.then38 ], [ 64, %if.then.i1325 ]
  %306 = load i32, ptr %vui, align 4
  %tobool41.not = icmp eq i32 %306, 0
  br i1 %tobool41.not, label %if.end83, label %for.cond44.preheader

for.cond44.preheader:                             ; preds = %bs_write1.exit
  %i_sar_width = getelementptr inbounds i8, ptr %sps, i64 1132
  %307 = load i32, ptr %i_sar_width, align 4
  %i_sar_height = getelementptr inbounds i8, ptr %sps, i64 1136
  switch i32 %307, label %for.inc64.12 [
    i32 1, label %land.lhs.true
    i32 12, label %land.lhs.true.1
    i32 10, label %land.lhs.true.2
    i32 16, label %land.lhs.true.3
    i32 40, label %land.lhs.true.4
    i32 24, label %land.lhs.true.5
    i32 20, label %land.lhs.true.6
    i32 32, label %land.lhs.true.7
    i32 80, label %land.lhs.true.8
    i32 18, label %land.lhs.true.9
    i32 15, label %land.lhs.true.10
    i32 64, label %land.lhs.true.11
    i32 160, label %land.lhs.true.12
  ]

land.lhs.true:                                    ; preds = %for.cond44.preheader
  %308 = load i32, ptr %i_sar_height, align 4
  %cmp60 = icmp eq i32 %308, 1
  br i1 %cmp60, label %for.end66, label %for.inc64.12

land.lhs.true.1:                                  ; preds = %for.cond44.preheader
  %309 = load i32, ptr %i_sar_height, align 4
  %cmp60.1 = icmp eq i32 %309, 11
  br i1 %cmp60.1, label %for.end66, label %for.inc64.12

land.lhs.true.2:                                  ; preds = %for.cond44.preheader
  %310 = load i32, ptr %i_sar_height, align 4
  %cmp60.2 = icmp eq i32 %310, 11
  br i1 %cmp60.2, label %for.end66, label %for.inc64.12

land.lhs.true.3:                                  ; preds = %for.cond44.preheader
  %311 = load i32, ptr %i_sar_height, align 4
  %cmp60.3 = icmp eq i32 %311, 11
  br i1 %cmp60.3, label %for.end66, label %for.inc64.12

land.lhs.true.4:                                  ; preds = %for.cond44.preheader
  %312 = load i32, ptr %i_sar_height, align 4
  %cmp60.4 = icmp eq i32 %312, 33
  br i1 %cmp60.4, label %for.end66, label %for.inc64.12

land.lhs.true.5:                                  ; preds = %for.cond44.preheader
  %313 = load i32, ptr %i_sar_height, align 4
  %cmp60.5 = icmp eq i32 %313, 11
  br i1 %cmp60.5, label %for.end66, label %for.inc64.12

land.lhs.true.6:                                  ; preds = %for.cond44.preheader
  %314 = load i32, ptr %i_sar_height, align 4
  %cmp60.6 = icmp eq i32 %314, 11
  br i1 %cmp60.6, label %for.end66, label %for.inc64.12

land.lhs.true.7:                                  ; preds = %for.cond44.preheader
  %315 = load i32, ptr %i_sar_height, align 4
  %cmp60.7 = icmp eq i32 %315, 11
  br i1 %cmp60.7, label %for.end66, label %for.inc64.12

land.lhs.true.8:                                  ; preds = %for.cond44.preheader
  %316 = load i32, ptr %i_sar_height, align 4
  %cmp60.8 = icmp eq i32 %316, 33
  br i1 %cmp60.8, label %for.end66, label %for.inc64.12

land.lhs.true.9:                                  ; preds = %for.cond44.preheader
  %317 = load i32, ptr %i_sar_height, align 4
  %cmp60.9 = icmp eq i32 %317, 11
  br i1 %cmp60.9, label %for.end66, label %for.inc64.12

land.lhs.true.10:                                 ; preds = %for.cond44.preheader
  %318 = load i32, ptr %i_sar_height, align 4
  %cmp60.10 = icmp eq i32 %318, 11
  br i1 %cmp60.10, label %for.end66, label %for.inc64.12

land.lhs.true.11:                                 ; preds = %for.cond44.preheader
  %319 = load i32, ptr %i_sar_height, align 4
  %cmp60.11 = icmp eq i32 %319, 33
  br i1 %cmp60.11, label %for.end66, label %for.inc64.12

land.lhs.true.12:                                 ; preds = %for.cond44.preheader
  %320 = load i32, ptr %i_sar_height, align 4
  %cmp60.12 = icmp eq i32 %320, 99
  br i1 %cmp60.12, label %for.end66, label %for.inc64.12

for.inc64.12:                                     ; preds = %for.cond44.preheader, %land.lhs.true.4, %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true.1, %land.lhs.true, %land.lhs.true.5, %land.lhs.true.6, %land.lhs.true.7, %land.lhs.true.8, %land.lhs.true.9, %land.lhs.true.10, %land.lhs.true.11, %land.lhs.true.12
  br label %for.end66

for.end66:                                        ; preds = %for.inc64.12, %land.lhs.true.12, %land.lhs.true.11, %land.lhs.true.10, %land.lhs.true.9, %land.lhs.true.8, %land.lhs.true.7, %land.lhs.true.6, %land.lhs.true.5, %land.lhs.true.4, %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true.1, %land.lhs.true
  %.lcssa = phi i64 [ 1, %land.lhs.true ], [ 2, %land.lhs.true.1 ], [ 3, %land.lhs.true.2 ], [ 4, %land.lhs.true.3 ], [ 5, %land.lhs.true.4 ], [ 6, %land.lhs.true.5 ], [ 7, %land.lhs.true.6 ], [ 8, %land.lhs.true.7 ], [ 9, %land.lhs.true.8 ], [ 10, %land.lhs.true.9 ], [ 11, %land.lhs.true.10 ], [ 12, %land.lhs.true.11 ], [ 13, %land.lhs.true.12 ], [ 255, %for.inc64.12 ]
  %cmp47.not.lcssa = phi i1 [ false, %land.lhs.true ], [ false, %land.lhs.true.1 ], [ false, %land.lhs.true.2 ], [ false, %land.lhs.true.3 ], [ false, %land.lhs.true.4 ], [ false, %land.lhs.true.5 ], [ false, %land.lhs.true.6 ], [ false, %land.lhs.true.7 ], [ false, %land.lhs.true.8 ], [ false, %land.lhs.true.9 ], [ false, %land.lhs.true.10 ], [ false, %land.lhs.true.11 ], [ false, %land.lhs.true.12 ], [ true, %for.inc64.12 ]
  %321 = load i64, ptr %cur_bits.i353, align 8
  %shl.i1331 = shl i64 %321, 8
  %or.i1333 = or disjoint i64 %shl.i1331, %.lcssa
  store i64 %or.i1333, ptr %cur_bits.i353, align 8
  %sub.i1335 = add nsw i32 %305, -8
  store i32 %sub.i1335, ptr %i_left.i355, align 8
  %cmp.i1336 = icmp slt i32 %305, 41
  br i1 %cmp.i1336, label %if.then.i1337, label %bs_write.exit1345

if.then.i1337:                                    ; preds = %for.end66
  %sh_prom6.i1338 = zext nneg i32 %sub.i1335 to i64
  %shl7.i1339 = shl i64 %or.i1333, %sh_prom6.i1338
  %add.i.i.i1340 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1339)
  %conv8.i1341 = trunc i64 %add.i.i.i1340 to i32
  store i32 %conv8.i1341, ptr %304, align 4
  %322 = load i32, ptr %i_left.i355, align 8
  %add.i1343 = add nsw i32 %322, 32
  store i32 %add.i1343, ptr %i_left.i355, align 8
  %323 = load ptr, ptr %p.i, align 8
  %add.ptr.i1344 = getelementptr inbounds i8, ptr %323, i64 4
  store ptr %add.ptr.i1344, ptr %p.i, align 8
  br label %bs_write.exit1345

bs_write.exit1345:                                ; preds = %for.end66, %if.then.i1337
  %324 = phi ptr [ %304, %for.end66 ], [ %add.ptr.i1344, %if.then.i1337 ]
  %325 = phi i32 [ %sub.i1335, %for.end66 ], [ %add.i1343, %if.then.i1337 ]
  br i1 %cmp47.not.lcssa, label %if.then77, label %if.end83

if.then77:                                        ; preds = %bs_write.exit1345
  %326 = load i32, ptr %i_sar_width, align 4
  %327 = load i64, ptr %cur_bits.i353, align 8
  %shl.i1347 = shl i64 %327, 16
  %conv.i1348 = zext i32 %326 to i64
  %or.i1349 = or i64 %shl.i1347, %conv.i1348
  store i64 %or.i1349, ptr %cur_bits.i353, align 8
  %sub.i1351 = add nsw i32 %325, -16
  store i32 %sub.i1351, ptr %i_left.i355, align 8
  %cmp.i1352 = icmp slt i32 %325, 49
  br i1 %cmp.i1352, label %if.then.i1353, label %bs_write.exit1361

if.then.i1353:                                    ; preds = %if.then77
  %sh_prom6.i1354 = zext nneg i32 %sub.i1351 to i64
  %shl7.i1355 = shl i64 %or.i1349, %sh_prom6.i1354
  %add.i.i.i1356 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1355)
  %conv8.i1357 = trunc i64 %add.i.i.i1356 to i32
  store i32 %conv8.i1357, ptr %324, align 4
  %328 = load i32, ptr %i_left.i355, align 8
  %add.i1359 = add nsw i32 %328, 32
  store i32 %add.i1359, ptr %i_left.i355, align 8
  %329 = load ptr, ptr %p.i, align 8
  %add.ptr.i1360 = getelementptr inbounds i8, ptr %329, i64 4
  store ptr %add.ptr.i1360, ptr %p.i, align 8
  %.pre2358 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1361

bs_write.exit1361:                                ; preds = %if.then77, %if.then.i1353
  %330 = phi ptr [ %324, %if.then77 ], [ %add.ptr.i1360, %if.then.i1353 ]
  %331 = phi i32 [ %sub.i1351, %if.then77 ], [ %add.i1359, %if.then.i1353 ]
  %332 = phi i64 [ %or.i1349, %if.then77 ], [ %.pre2358, %if.then.i1353 ]
  %333 = load i32, ptr %i_sar_height, align 4
  %shl.i1363 = shl i64 %332, 16
  %conv.i1364 = zext i32 %333 to i64
  %or.i1365 = or i64 %shl.i1363, %conv.i1364
  store i64 %or.i1365, ptr %cur_bits.i353, align 8
  %sub.i1367 = add nsw i32 %331, -16
  store i32 %sub.i1367, ptr %i_left.i355, align 8
  %cmp.i1368 = icmp slt i32 %331, 49
  br i1 %cmp.i1368, label %if.then.i1369, label %if.end83

if.then.i1369:                                    ; preds = %bs_write.exit1361
  %sh_prom6.i1370 = zext nneg i32 %sub.i1367 to i64
  %shl7.i1371 = shl i64 %or.i1365, %sh_prom6.i1370
  %add.i.i.i1372 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1371)
  %conv8.i1373 = trunc i64 %add.i.i.i1372 to i32
  store i32 %conv8.i1373, ptr %330, align 4
  %334 = load i32, ptr %i_left.i355, align 8
  %add.i1375 = add nsw i32 %334, 32
  store i32 %add.i1375, ptr %i_left.i355, align 8
  %335 = load ptr, ptr %p.i, align 8
  %add.ptr.i1376 = getelementptr inbounds i8, ptr %335, i64 4
  store ptr %add.ptr.i1376, ptr %p.i, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then.i1369, %bs_write.exit1361, %bs_write.exit1345, %bs_write1.exit
  %336 = phi ptr [ %add.ptr.i1376, %if.then.i1369 ], [ %330, %bs_write.exit1361 ], [ %324, %bs_write.exit1345 ], [ %304, %bs_write1.exit ]
  %337 = phi i32 [ %add.i1375, %if.then.i1369 ], [ %sub.i1367, %bs_write.exit1361 ], [ %325, %bs_write.exit1345 ], [ %305, %bs_write1.exit ]
  %b_overscan_info_present = getelementptr inbounds i8, ptr %sps, i64 1140
  %338 = load i32, ptr %b_overscan_info_present, align 4
  %339 = load i64, ptr %cur_bits.i353, align 8
  %shl.i1379 = shl i64 %339, 1
  %conv.i1380 = zext i32 %338 to i64
  %or.i1381 = or i64 %shl.i1379, %conv.i1380
  store i64 %or.i1381, ptr %cur_bits.i353, align 8
  %dec.i1383 = add nsw i32 %337, -1
  store i32 %dec.i1383, ptr %i_left.i355, align 8
  %cmp.i1384 = icmp eq i32 %dec.i1383, 32
  br i1 %cmp.i1384, label %if.then.i1385, label %bs_write1.exit1390

if.then.i1385:                                    ; preds = %if.end83
  %conv6.i1386 = trunc i64 %or.i1381 to i32
  %add5.i.i1387 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1386)
  store i32 %add5.i.i1387, ptr %336, align 4
  %340 = load ptr, ptr %p.i, align 8
  %add.ptr.i1389 = getelementptr inbounds i8, ptr %340, i64 4
  store ptr %add.ptr.i1389, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2360.pre = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write1.exit1390

bs_write1.exit1390:                               ; preds = %if.end83, %if.then.i1385
  %.pre2360 = phi i64 [ %or.i1381, %if.end83 ], [ %.pre2360.pre, %if.then.i1385 ]
  %341 = phi ptr [ %336, %if.end83 ], [ %add.ptr.i1389, %if.then.i1385 ]
  %342 = phi i32 [ %dec.i1383, %if.end83 ], [ 64, %if.then.i1385 ]
  %343 = load i32, ptr %b_overscan_info_present, align 4
  %tobool87.not = icmp eq i32 %343, 0
  br i1 %tobool87.not, label %if.end90, label %if.then88

if.then88:                                        ; preds = %bs_write1.exit1390
  %b_overscan_info = getelementptr inbounds i8, ptr %sps, i64 1144
  %344 = load i32, ptr %b_overscan_info, align 4
  %shl.i1392 = shl i64 %.pre2360, 1
  %conv.i1393 = zext i32 %344 to i64
  %or.i1394 = or i64 %shl.i1392, %conv.i1393
  store i64 %or.i1394, ptr %cur_bits.i353, align 8
  %dec.i1396 = add nsw i32 %342, -1
  store i32 %dec.i1396, ptr %i_left.i355, align 8
  %cmp.i1397 = icmp eq i32 %dec.i1396, 32
  br i1 %cmp.i1397, label %if.then.i1398, label %if.end90

if.then.i1398:                                    ; preds = %if.then88
  %conv6.i1399 = trunc i64 %or.i1394 to i32
  %add5.i.i1400 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1399)
  store i32 %add5.i.i1400, ptr %341, align 4
  %345 = load ptr, ptr %p.i, align 8
  %add.ptr.i1402 = getelementptr inbounds i8, ptr %345, i64 4
  store ptr %add.ptr.i1402, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2359 = load i64, ptr %cur_bits.i353, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then.i1398, %if.then88, %bs_write1.exit1390
  %346 = phi ptr [ %add.ptr.i1402, %if.then.i1398 ], [ %341, %if.then88 ], [ %341, %bs_write1.exit1390 ]
  %347 = phi i32 [ 64, %if.then.i1398 ], [ %dec.i1396, %if.then88 ], [ %342, %bs_write1.exit1390 ]
  %348 = phi i64 [ %.pre2359, %if.then.i1398 ], [ %or.i1394, %if.then88 ], [ %.pre2360, %bs_write1.exit1390 ]
  %b_signal_type_present = getelementptr inbounds i8, ptr %sps, i64 1148
  %349 = load i32, ptr %b_signal_type_present, align 4
  %shl.i1405 = shl i64 %348, 1
  %conv.i1406 = zext i32 %349 to i64
  %or.i1407 = or i64 %shl.i1405, %conv.i1406
  store i64 %or.i1407, ptr %cur_bits.i353, align 8
  %dec.i1409 = add nsw i32 %347, -1
  store i32 %dec.i1409, ptr %i_left.i355, align 8
  %cmp.i1410 = icmp eq i32 %dec.i1409, 32
  br i1 %cmp.i1410, label %if.then.i1411, label %bs_write1.exit1416

if.then.i1411:                                    ; preds = %if.end90
  %conv6.i1412 = trunc i64 %or.i1407 to i32
  %add5.i.i1413 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1412)
  store i32 %add5.i.i1413, ptr %346, align 4
  %350 = load ptr, ptr %p.i, align 8
  %add.ptr.i1415 = getelementptr inbounds i8, ptr %350, i64 4
  store ptr %add.ptr.i1415, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2367.pre = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write1.exit1416

bs_write1.exit1416:                               ; preds = %if.end90, %if.then.i1411
  %.pre2367 = phi i64 [ %or.i1407, %if.end90 ], [ %.pre2367.pre, %if.then.i1411 ]
  %351 = phi ptr [ %346, %if.end90 ], [ %add.ptr.i1415, %if.then.i1411 ]
  %352 = phi i32 [ %dec.i1409, %if.end90 ], [ 64, %if.then.i1411 ]
  %353 = load i32, ptr %b_signal_type_present, align 4
  %tobool94.not = icmp eq i32 %353, 0
  br i1 %tobool94.not, label %if.end107, label %if.then95

if.then95:                                        ; preds = %bs_write1.exit1416
  %i_vidformat = getelementptr inbounds i8, ptr %sps, i64 1152
  %354 = load i32, ptr %i_vidformat, align 4
  %shl.i1418 = shl i64 %.pre2367, 3
  %conv.i1419 = zext i32 %354 to i64
  %or.i1420 = or i64 %shl.i1418, %conv.i1419
  store i64 %or.i1420, ptr %cur_bits.i353, align 8
  %sub.i1422 = add nsw i32 %352, -3
  store i32 %sub.i1422, ptr %i_left.i355, align 8
  %cmp.i1423 = icmp slt i32 %352, 36
  br i1 %cmp.i1423, label %if.then.i1424, label %bs_write.exit1432

if.then.i1424:                                    ; preds = %if.then95
  %sh_prom6.i1425 = zext nneg i32 %sub.i1422 to i64
  %shl7.i1426 = shl i64 %or.i1420, %sh_prom6.i1425
  %add.i.i.i1427 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1426)
  %conv8.i1428 = trunc i64 %add.i.i.i1427 to i32
  store i32 %conv8.i1428, ptr %351, align 4
  %355 = load i32, ptr %i_left.i355, align 8
  %add.i1430 = add nsw i32 %355, 32
  store i32 %add.i1430, ptr %i_left.i355, align 8
  %356 = load ptr, ptr %p.i, align 8
  %add.ptr.i1431 = getelementptr inbounds i8, ptr %356, i64 4
  store ptr %add.ptr.i1431, ptr %p.i, align 8
  %.pre2361 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1432

bs_write.exit1432:                                ; preds = %if.then95, %if.then.i1424
  %357 = phi ptr [ %351, %if.then95 ], [ %add.ptr.i1431, %if.then.i1424 ]
  %358 = phi i32 [ %sub.i1422, %if.then95 ], [ %add.i1430, %if.then.i1424 ]
  %359 = phi i64 [ %or.i1420, %if.then95 ], [ %.pre2361, %if.then.i1424 ]
  %b_fullrange = getelementptr inbounds i8, ptr %sps, i64 1156
  %360 = load i32, ptr %b_fullrange, align 4
  %shl.i1434 = shl i64 %359, 1
  %conv.i1435 = zext i32 %360 to i64
  %or.i1436 = or i64 %shl.i1434, %conv.i1435
  store i64 %or.i1436, ptr %cur_bits.i353, align 8
  %dec.i1438 = add nsw i32 %358, -1
  store i32 %dec.i1438, ptr %i_left.i355, align 8
  %cmp.i1439 = icmp eq i32 %dec.i1438, 32
  br i1 %cmp.i1439, label %if.then.i1440, label %bs_write1.exit1445

if.then.i1440:                                    ; preds = %bs_write.exit1432
  %conv6.i1441 = trunc i64 %or.i1436 to i32
  %add5.i.i1442 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1441)
  store i32 %add5.i.i1442, ptr %357, align 4
  %361 = load ptr, ptr %p.i, align 8
  %add.ptr.i1444 = getelementptr inbounds i8, ptr %361, i64 4
  store ptr %add.ptr.i1444, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2362 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write1.exit1445

bs_write1.exit1445:                               ; preds = %bs_write.exit1432, %if.then.i1440
  %362 = phi ptr [ %357, %bs_write.exit1432 ], [ %add.ptr.i1444, %if.then.i1440 ]
  %363 = phi i32 [ %dec.i1438, %bs_write.exit1432 ], [ 64, %if.then.i1440 ]
  %364 = phi i64 [ %or.i1436, %bs_write.exit1432 ], [ %.pre2362, %if.then.i1440 ]
  %b_color_description_present = getelementptr inbounds i8, ptr %sps, i64 1160
  %365 = load i32, ptr %b_color_description_present, align 4
  %shl.i1447 = shl i64 %364, 1
  %conv.i1448 = zext i32 %365 to i64
  %or.i1449 = or i64 %shl.i1447, %conv.i1448
  store i64 %or.i1449, ptr %cur_bits.i353, align 8
  %dec.i1451 = add nsw i32 %363, -1
  store i32 %dec.i1451, ptr %i_left.i355, align 8
  %cmp.i1452 = icmp eq i32 %dec.i1451, 32
  br i1 %cmp.i1452, label %if.then.i1453, label %bs_write1.exit1458

if.then.i1453:                                    ; preds = %bs_write1.exit1445
  %conv6.i1454 = trunc i64 %or.i1449 to i32
  %add5.i.i1455 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1454)
  store i32 %add5.i.i1455, ptr %362, align 4
  %366 = load ptr, ptr %p.i, align 8
  %add.ptr.i1457 = getelementptr inbounds i8, ptr %366, i64 4
  store ptr %add.ptr.i1457, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2366.pre = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write1.exit1458

bs_write1.exit1458:                               ; preds = %bs_write1.exit1445, %if.then.i1453
  %.pre2366 = phi i64 [ %or.i1449, %bs_write1.exit1445 ], [ %.pre2366.pre, %if.then.i1453 ]
  %367 = phi ptr [ %362, %bs_write1.exit1445 ], [ %add.ptr.i1457, %if.then.i1453 ]
  %368 = phi i32 [ %dec.i1451, %bs_write1.exit1445 ], [ 64, %if.then.i1453 ]
  %369 = load i32, ptr %b_color_description_present, align 4
  %tobool101.not = icmp eq i32 %369, 0
  br i1 %tobool101.not, label %if.end107, label %if.then102

if.then102:                                       ; preds = %bs_write1.exit1458
  %i_colorprim = getelementptr inbounds i8, ptr %sps, i64 1164
  %370 = load i32, ptr %i_colorprim, align 4
  %shl.i1460 = shl i64 %.pre2366, 8
  %conv.i1461 = zext i32 %370 to i64
  %or.i1462 = or i64 %shl.i1460, %conv.i1461
  store i64 %or.i1462, ptr %cur_bits.i353, align 8
  %sub.i1464 = add nsw i32 %368, -8
  store i32 %sub.i1464, ptr %i_left.i355, align 8
  %cmp.i1465 = icmp slt i32 %368, 41
  br i1 %cmp.i1465, label %if.then.i1466, label %bs_write.exit1474

if.then.i1466:                                    ; preds = %if.then102
  %sh_prom6.i1467 = zext nneg i32 %sub.i1464 to i64
  %shl7.i1468 = shl i64 %or.i1462, %sh_prom6.i1467
  %add.i.i.i1469 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1468)
  %conv8.i1470 = trunc i64 %add.i.i.i1469 to i32
  store i32 %conv8.i1470, ptr %367, align 4
  %371 = load i32, ptr %i_left.i355, align 8
  %add.i1472 = add nsw i32 %371, 32
  store i32 %add.i1472, ptr %i_left.i355, align 8
  %372 = load ptr, ptr %p.i, align 8
  %add.ptr.i1473 = getelementptr inbounds i8, ptr %372, i64 4
  store ptr %add.ptr.i1473, ptr %p.i, align 8
  %.pre2363 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1474

bs_write.exit1474:                                ; preds = %if.then102, %if.then.i1466
  %373 = phi ptr [ %367, %if.then102 ], [ %add.ptr.i1473, %if.then.i1466 ]
  %374 = phi i32 [ %sub.i1464, %if.then102 ], [ %add.i1472, %if.then.i1466 ]
  %375 = phi i64 [ %or.i1462, %if.then102 ], [ %.pre2363, %if.then.i1466 ]
  %i_transfer = getelementptr inbounds i8, ptr %sps, i64 1168
  %376 = load i32, ptr %i_transfer, align 4
  %shl.i1476 = shl i64 %375, 8
  %conv.i1477 = zext i32 %376 to i64
  %or.i1478 = or i64 %shl.i1476, %conv.i1477
  store i64 %or.i1478, ptr %cur_bits.i353, align 8
  %sub.i1480 = add nsw i32 %374, -8
  store i32 %sub.i1480, ptr %i_left.i355, align 8
  %cmp.i1481 = icmp slt i32 %374, 41
  br i1 %cmp.i1481, label %if.then.i1482, label %bs_write.exit1490

if.then.i1482:                                    ; preds = %bs_write.exit1474
  %sh_prom6.i1483 = zext nneg i32 %sub.i1480 to i64
  %shl7.i1484 = shl i64 %or.i1478, %sh_prom6.i1483
  %add.i.i.i1485 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1484)
  %conv8.i1486 = trunc i64 %add.i.i.i1485 to i32
  store i32 %conv8.i1486, ptr %373, align 4
  %377 = load i32, ptr %i_left.i355, align 8
  %add.i1488 = add nsw i32 %377, 32
  store i32 %add.i1488, ptr %i_left.i355, align 8
  %378 = load ptr, ptr %p.i, align 8
  %add.ptr.i1489 = getelementptr inbounds i8, ptr %378, i64 4
  store ptr %add.ptr.i1489, ptr %p.i, align 8
  %.pre2364 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1490

bs_write.exit1490:                                ; preds = %bs_write.exit1474, %if.then.i1482
  %379 = phi ptr [ %373, %bs_write.exit1474 ], [ %add.ptr.i1489, %if.then.i1482 ]
  %380 = phi i32 [ %sub.i1480, %bs_write.exit1474 ], [ %add.i1488, %if.then.i1482 ]
  %381 = phi i64 [ %or.i1478, %bs_write.exit1474 ], [ %.pre2364, %if.then.i1482 ]
  %i_colmatrix = getelementptr inbounds i8, ptr %sps, i64 1172
  %382 = load i32, ptr %i_colmatrix, align 4
  %shl.i1492 = shl i64 %381, 8
  %conv.i1493 = zext i32 %382 to i64
  %or.i1494 = or i64 %shl.i1492, %conv.i1493
  store i64 %or.i1494, ptr %cur_bits.i353, align 8
  %sub.i1496 = add nsw i32 %380, -8
  store i32 %sub.i1496, ptr %i_left.i355, align 8
  %cmp.i1497 = icmp slt i32 %380, 41
  br i1 %cmp.i1497, label %if.then.i1498, label %if.end107

if.then.i1498:                                    ; preds = %bs_write.exit1490
  %sh_prom6.i1499 = zext nneg i32 %sub.i1496 to i64
  %shl7.i1500 = shl i64 %or.i1494, %sh_prom6.i1499
  %add.i.i.i1501 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1500)
  %conv8.i1502 = trunc i64 %add.i.i.i1501 to i32
  store i32 %conv8.i1502, ptr %379, align 4
  %383 = load i32, ptr %i_left.i355, align 8
  %add.i1504 = add nsw i32 %383, 32
  store i32 %add.i1504, ptr %i_left.i355, align 8
  %384 = load ptr, ptr %p.i, align 8
  %add.ptr.i1505 = getelementptr inbounds i8, ptr %384, i64 4
  store ptr %add.ptr.i1505, ptr %p.i, align 8
  %.pre2365 = load i64, ptr %cur_bits.i353, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then.i1498, %bs_write.exit1490, %bs_write1.exit1458, %bs_write1.exit1416
  %385 = phi ptr [ %add.ptr.i1505, %if.then.i1498 ], [ %379, %bs_write.exit1490 ], [ %367, %bs_write1.exit1458 ], [ %351, %bs_write1.exit1416 ]
  %386 = phi i32 [ %add.i1504, %if.then.i1498 ], [ %sub.i1496, %bs_write.exit1490 ], [ %368, %bs_write1.exit1458 ], [ %352, %bs_write1.exit1416 ]
  %387 = phi i64 [ %.pre2365, %if.then.i1498 ], [ %or.i1494, %bs_write.exit1490 ], [ %.pre2366, %bs_write1.exit1458 ], [ %.pre2367, %bs_write1.exit1416 ]
  %b_chroma_loc_info_present = getelementptr inbounds i8, ptr %sps, i64 1176
  %388 = load i32, ptr %b_chroma_loc_info_present, align 4
  %shl.i1508 = shl i64 %387, 1
  %conv.i1509 = zext i32 %388 to i64
  %or.i1510 = or i64 %shl.i1508, %conv.i1509
  store i64 %or.i1510, ptr %cur_bits.i353, align 8
  %dec.i1512 = add nsw i32 %386, -1
  store i32 %dec.i1512, ptr %i_left.i355, align 8
  %cmp.i1513 = icmp eq i32 %dec.i1512, 32
  br i1 %cmp.i1513, label %if.then.i1514, label %bs_write1.exit1519

if.then.i1514:                                    ; preds = %if.end107
  %conv6.i1515 = trunc i64 %or.i1510 to i32
  %add5.i.i1516 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1515)
  store i32 %add5.i.i1516, ptr %385, align 4
  %389 = load ptr, ptr %p.i, align 8
  %add.ptr.i1518 = getelementptr inbounds i8, ptr %389, i64 4
  store ptr %add.ptr.i1518, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2370.pre = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write1.exit1519

bs_write1.exit1519:                               ; preds = %if.end107, %if.then.i1514
  %.pre2370 = phi i64 [ %or.i1510, %if.end107 ], [ %.pre2370.pre, %if.then.i1514 ]
  %390 = phi ptr [ %385, %if.end107 ], [ %add.ptr.i1518, %if.then.i1514 ]
  %391 = phi i32 [ %dec.i1512, %if.end107 ], [ 64, %if.then.i1514 ]
  %392 = load i32, ptr %b_chroma_loc_info_present, align 4
  %tobool111.not = icmp eq i32 %392, 0
  br i1 %tobool111.not, label %if.end115, label %if.then112

if.then112:                                       ; preds = %bs_write1.exit1519
  %i_chroma_loc_top = getelementptr inbounds i8, ptr %sps, i64 1180
  %393 = load i32, ptr %i_chroma_loc_top, align 4
  %inc.i1520 = add i32 %393, 1
  %cmp.i1521 = icmp sgt i32 %inc.i1520, 65535
  %shr.i1522 = lshr i32 %inc.i1520, 16
  %spec.select.i1523 = select i1 %cmp.i1521, i32 32, i32 0
  %spec.select18.i1524 = select i1 %cmp.i1521, i32 %shr.i1522, i32 %inc.i1520
  %cmp1.i1525 = icmp sgt i32 %spec.select18.i1524, 255
  %add.i1526 = or disjoint i32 %spec.select.i1523, 16
  %shr3.i1527 = lshr i32 %spec.select18.i1524, 8
  %size.1.i1528 = select i1 %cmp1.i1525, i32 %add.i1526, i32 %spec.select.i1523
  %tmp.1.i1529 = select i1 %cmp1.i1525, i32 %shr3.i1527, i32 %spec.select18.i1524
  %idxprom.i1530 = sext i32 %tmp.1.i1529 to i64
  %arrayidx.i1531 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1530
  %394 = load i8, ptr %arrayidx.i1531, align 1
  %conv.i1532 = zext i8 %394 to i32
  %add5.i1533 = add nuw nsw i32 %size.1.i1528, %conv.i1532
  %shr6.i1534 = lshr i32 %add5.i1533, 1
  %sh_prom.i.i1536 = zext nneg i32 %shr6.i1534 to i64
  %shl.i.i1537 = shl i64 %.pre2370, %sh_prom.i.i1536
  store i64 %shl.i.i1537, ptr %cur_bits.i353, align 8
  %sub.i.i1539 = sub nsw i32 %391, %shr6.i1534
  store i32 %sub.i.i1539, ptr %i_left.i355, align 8
  %cmp.i.i1540 = icmp slt i32 %sub.i.i1539, 33
  br i1 %cmp.i.i1540, label %if.then.i.i1557, label %bs_write.exit.i1541

if.then.i.i1557:                                  ; preds = %if.then112
  %sh_prom6.i.i1558 = zext nneg i32 %sub.i.i1539 to i64
  %shl7.i.i1559 = shl i64 %shl.i.i1537, %sh_prom6.i.i1558
  %add.i.i.i.i1560 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1559)
  %conv8.i.i1561 = trunc i64 %add.i.i.i.i1560 to i32
  store i32 %conv8.i.i1561, ptr %390, align 4
  %395 = load i32, ptr %i_left.i355, align 8
  %add.i.i1563 = add nsw i32 %395, 32
  %396 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1564 = getelementptr inbounds i8, ptr %396, i64 4
  store ptr %add.ptr.i.i1564, ptr %p.i, align 8
  %.pre.i1565 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i1541

bs_write.exit.i1541:                              ; preds = %if.then.i.i1557, %if.then112
  %397 = phi ptr [ %390, %if.then112 ], [ %add.ptr.i.i1564, %if.then.i.i1557 ]
  %398 = phi i32 [ %sub.i.i1539, %if.then112 ], [ %add.i.i1563, %if.then.i.i1557 ]
  %399 = phi i64 [ %shl.i.i1537, %if.then112 ], [ %.pre.i1565, %if.then.i.i1557 ]
  %add8.i1542 = add nuw nsw i32 %shr6.i1534, 1
  %sh_prom.i20.i1543 = zext nneg i32 %add8.i1542 to i64
  %shl.i21.i1544 = shl i64 %399, %sh_prom.i20.i1543
  %conv.i.i1545 = zext i32 %inc.i1520 to i64
  %or.i.i1546 = or i64 %shl.i21.i1544, %conv.i.i1545
  store i64 %or.i.i1546, ptr %cur_bits.i353, align 8
  %sub.i23.i1547 = sub nsw i32 %398, %add8.i1542
  store i32 %sub.i23.i1547, ptr %i_left.i355, align 8
  %cmp.i24.i1548 = icmp slt i32 %sub.i23.i1547, 33
  br i1 %cmp.i24.i1548, label %if.then.i25.i1549, label %bs_write_ue_big.exit1566

if.then.i25.i1549:                                ; preds = %bs_write.exit.i1541
  %sh_prom6.i26.i1550 = zext nneg i32 %sub.i23.i1547 to i64
  %shl7.i27.i1551 = shl i64 %or.i.i1546, %sh_prom6.i26.i1550
  %add.i.i.i28.i1552 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1551)
  %conv8.i29.i1553 = trunc i64 %add.i.i.i28.i1552 to i32
  store i32 %conv8.i29.i1553, ptr %397, align 4
  %400 = load i32, ptr %i_left.i355, align 8
  %add.i31.i1555 = add nsw i32 %400, 32
  store i32 %add.i31.i1555, ptr %i_left.i355, align 8
  %401 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i1556 = getelementptr inbounds i8, ptr %401, i64 4
  store ptr %add.ptr.i32.i1556, ptr %p.i, align 8
  %.pre2368 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit1566

bs_write_ue_big.exit1566:                         ; preds = %bs_write.exit.i1541, %if.then.i25.i1549
  %402 = phi ptr [ %397, %bs_write.exit.i1541 ], [ %add.ptr.i32.i1556, %if.then.i25.i1549 ]
  %403 = phi i32 [ %sub.i23.i1547, %bs_write.exit.i1541 ], [ %add.i31.i1555, %if.then.i25.i1549 ]
  %404 = phi i64 [ %or.i.i1546, %bs_write.exit.i1541 ], [ %.pre2368, %if.then.i25.i1549 ]
  %i_chroma_loc_bottom = getelementptr inbounds i8, ptr %sps, i64 1184
  %405 = load i32, ptr %i_chroma_loc_bottom, align 4
  %inc.i1567 = add i32 %405, 1
  %cmp.i1568 = icmp sgt i32 %inc.i1567, 65535
  %shr.i1569 = lshr i32 %inc.i1567, 16
  %spec.select.i1570 = select i1 %cmp.i1568, i32 32, i32 0
  %spec.select18.i1571 = select i1 %cmp.i1568, i32 %shr.i1569, i32 %inc.i1567
  %cmp1.i1572 = icmp sgt i32 %spec.select18.i1571, 255
  %add.i1573 = or disjoint i32 %spec.select.i1570, 16
  %shr3.i1574 = lshr i32 %spec.select18.i1571, 8
  %size.1.i1575 = select i1 %cmp1.i1572, i32 %add.i1573, i32 %spec.select.i1570
  %tmp.1.i1576 = select i1 %cmp1.i1572, i32 %shr3.i1574, i32 %spec.select18.i1571
  %idxprom.i1577 = sext i32 %tmp.1.i1576 to i64
  %arrayidx.i1578 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1577
  %406 = load i8, ptr %arrayidx.i1578, align 1
  %conv.i1579 = zext i8 %406 to i32
  %add5.i1580 = add nuw nsw i32 %size.1.i1575, %conv.i1579
  %shr6.i1581 = lshr i32 %add5.i1580, 1
  %sh_prom.i.i1583 = zext nneg i32 %shr6.i1581 to i64
  %shl.i.i1584 = shl i64 %404, %sh_prom.i.i1583
  store i64 %shl.i.i1584, ptr %cur_bits.i353, align 8
  %sub.i.i1586 = sub nsw i32 %403, %shr6.i1581
  store i32 %sub.i.i1586, ptr %i_left.i355, align 8
  %cmp.i.i1587 = icmp slt i32 %sub.i.i1586, 33
  br i1 %cmp.i.i1587, label %if.then.i.i1604, label %bs_write.exit.i1588

if.then.i.i1604:                                  ; preds = %bs_write_ue_big.exit1566
  %sh_prom6.i.i1605 = zext nneg i32 %sub.i.i1586 to i64
  %shl7.i.i1606 = shl i64 %shl.i.i1584, %sh_prom6.i.i1605
  %add.i.i.i.i1607 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1606)
  %conv8.i.i1608 = trunc i64 %add.i.i.i.i1607 to i32
  store i32 %conv8.i.i1608, ptr %402, align 4
  %407 = load i32, ptr %i_left.i355, align 8
  %add.i.i1610 = add nsw i32 %407, 32
  %408 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1611 = getelementptr inbounds i8, ptr %408, i64 4
  store ptr %add.ptr.i.i1611, ptr %p.i, align 8
  %.pre.i1612 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i1588

bs_write.exit.i1588:                              ; preds = %if.then.i.i1604, %bs_write_ue_big.exit1566
  %409 = phi ptr [ %402, %bs_write_ue_big.exit1566 ], [ %add.ptr.i.i1611, %if.then.i.i1604 ]
  %410 = phi i32 [ %sub.i.i1586, %bs_write_ue_big.exit1566 ], [ %add.i.i1610, %if.then.i.i1604 ]
  %411 = phi i64 [ %shl.i.i1584, %bs_write_ue_big.exit1566 ], [ %.pre.i1612, %if.then.i.i1604 ]
  %add8.i1589 = add nuw nsw i32 %shr6.i1581, 1
  %sh_prom.i20.i1590 = zext nneg i32 %add8.i1589 to i64
  %shl.i21.i1591 = shl i64 %411, %sh_prom.i20.i1590
  %conv.i.i1592 = zext i32 %inc.i1567 to i64
  %or.i.i1593 = or i64 %shl.i21.i1591, %conv.i.i1592
  store i64 %or.i.i1593, ptr %cur_bits.i353, align 8
  %sub.i23.i1594 = sub nsw i32 %410, %add8.i1589
  store i32 %sub.i23.i1594, ptr %i_left.i355, align 8
  %cmp.i24.i1595 = icmp slt i32 %sub.i23.i1594, 33
  br i1 %cmp.i24.i1595, label %if.then.i25.i1596, label %if.end115

if.then.i25.i1596:                                ; preds = %bs_write.exit.i1588
  %sh_prom6.i26.i1597 = zext nneg i32 %sub.i23.i1594 to i64
  %shl7.i27.i1598 = shl i64 %or.i.i1593, %sh_prom6.i26.i1597
  %add.i.i.i28.i1599 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1598)
  %conv8.i29.i1600 = trunc i64 %add.i.i.i28.i1599 to i32
  store i32 %conv8.i29.i1600, ptr %409, align 4
  %412 = load i32, ptr %i_left.i355, align 8
  %add.i31.i1602 = add nsw i32 %412, 32
  store i32 %add.i31.i1602, ptr %i_left.i355, align 8
  %413 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i1603 = getelementptr inbounds i8, ptr %413, i64 4
  store ptr %add.ptr.i32.i1603, ptr %p.i, align 8
  %.pre2369 = load i64, ptr %cur_bits.i353, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then.i25.i1596, %bs_write.exit.i1588, %bs_write1.exit1519
  %414 = phi ptr [ %add.ptr.i32.i1603, %if.then.i25.i1596 ], [ %409, %bs_write.exit.i1588 ], [ %390, %bs_write1.exit1519 ]
  %415 = phi i32 [ %add.i31.i1602, %if.then.i25.i1596 ], [ %sub.i23.i1594, %bs_write.exit.i1588 ], [ %391, %bs_write1.exit1519 ]
  %416 = phi i64 [ %.pre2369, %if.then.i25.i1596 ], [ %or.i.i1593, %bs_write.exit.i1588 ], [ %.pre2370, %bs_write1.exit1519 ]
  %b_timing_info_present = getelementptr inbounds i8, ptr %sps, i64 1188
  %417 = load i32, ptr %b_timing_info_present, align 4
  %shl.i1615 = shl i64 %416, 1
  %conv.i1616 = zext i32 %417 to i64
  %or.i1617 = or i64 %shl.i1615, %conv.i1616
  store i64 %or.i1617, ptr %cur_bits.i353, align 8
  %dec.i1619 = add nsw i32 %415, -1
  store i32 %dec.i1619, ptr %i_left.i355, align 8
  %cmp.i1620 = icmp eq i32 %dec.i1619, 32
  br i1 %cmp.i1620, label %if.then.i1621, label %bs_write1.exit1626

if.then.i1621:                                    ; preds = %if.end115
  %conv6.i1622 = trunc i64 %or.i1617 to i32
  %add5.i.i1623 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1622)
  store i32 %add5.i.i1623, ptr %414, align 4
  %418 = load ptr, ptr %p.i, align 8
  %add.ptr.i1625 = getelementptr inbounds i8, ptr %418, i64 4
  store ptr %add.ptr.i1625, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2374.pre = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write1.exit1626

bs_write1.exit1626:                               ; preds = %if.end115, %if.then.i1621
  %.pre2374 = phi i64 [ %or.i1617, %if.end115 ], [ %.pre2374.pre, %if.then.i1621 ]
  %419 = phi ptr [ %414, %if.end115 ], [ %add.ptr.i1625, %if.then.i1621 ]
  %420 = phi i32 [ %dec.i1619, %if.end115 ], [ 64, %if.then.i1621 ]
  %421 = load i32, ptr %b_timing_info_present, align 4
  %tobool119.not = icmp eq i32 %421, 0
  br i1 %tobool119.not, label %if.end124, label %if.then120

if.then120:                                       ; preds = %bs_write1.exit1626
  %i_num_units_in_tick = getelementptr inbounds i8, ptr %sps, i64 1192
  %422 = load i32, ptr %i_num_units_in_tick, align 4
  %shr.i1627 = lshr i32 %422, 16
  %shl.i.i1629 = shl i64 %.pre2374, 16
  %conv.i.i1630 = zext nneg i32 %shr.i1627 to i64
  %or.i.i1631 = or disjoint i64 %shl.i.i1629, %conv.i.i1630
  store i64 %or.i.i1631, ptr %cur_bits.i353, align 8
  %sub.i.i1633 = add nsw i32 %420, -16
  store i32 %sub.i.i1633, ptr %i_left.i355, align 8
  %cmp.i.i1634 = icmp slt i32 %420, 49
  br i1 %cmp.i.i1634, label %if.then.i.i1636, label %bs_write.exit.i1635

if.then.i.i1636:                                  ; preds = %if.then120
  %sh_prom6.i.i1637 = zext nneg i32 %sub.i.i1633 to i64
  %shl7.i.i1638 = shl i64 %or.i.i1631, %sh_prom6.i.i1637
  %add.i.i.i.i1639 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1638)
  %conv8.i.i1640 = trunc i64 %add.i.i.i.i1639 to i32
  store i32 %conv8.i.i1640, ptr %419, align 4
  %423 = load i32, ptr %i_left.i355, align 8
  %add.i.i1642 = add nsw i32 %423, 32
  %424 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1643 = getelementptr inbounds i8, ptr %424, i64 4
  store ptr %add.ptr.i.i1643, ptr %p.i, align 8
  %.pre.i1644 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i1635

bs_write.exit.i1635:                              ; preds = %if.then.i.i1636, %if.then120
  %425 = phi ptr [ %419, %if.then120 ], [ %add.ptr.i.i1643, %if.then.i.i1636 ]
  %426 = phi i32 [ %sub.i.i1633, %if.then120 ], [ %add.i.i1642, %if.then.i.i1636 ]
  %427 = phi i64 [ %or.i.i1631, %if.then120 ], [ %.pre.i1644, %if.then.i.i1636 ]
  %shl.i4.i = shl i64 %427, 16
  %conv.i5.i = zext i32 %422 to i64
  %or.i6.i = or i64 %shl.i4.i, %conv.i5.i
  store i64 %or.i6.i, ptr %cur_bits.i353, align 8
  %sub.i8.i = add nsw i32 %426, -16
  store i32 %sub.i8.i, ptr %i_left.i355, align 8
  %cmp.i9.i = icmp slt i32 %426, 49
  br i1 %cmp.i9.i, label %if.then.i10.i, label %bs_write32.exit

if.then.i10.i:                                    ; preds = %bs_write.exit.i1635
  %sh_prom6.i11.i = zext nneg i32 %sub.i8.i to i64
  %shl7.i12.i = shl i64 %or.i6.i, %sh_prom6.i11.i
  %add.i.i.i13.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i12.i)
  %conv8.i14.i = trunc i64 %add.i.i.i13.i to i32
  store i32 %conv8.i14.i, ptr %425, align 4
  %428 = load i32, ptr %i_left.i355, align 8
  %add.i16.i = add nsw i32 %428, 32
  store i32 %add.i16.i, ptr %i_left.i355, align 8
  %429 = load ptr, ptr %p.i, align 8
  %add.ptr.i17.i = getelementptr inbounds i8, ptr %429, i64 4
  store ptr %add.ptr.i17.i, ptr %p.i, align 8
  %.pre2371 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write32.exit

bs_write32.exit:                                  ; preds = %bs_write.exit.i1635, %if.then.i10.i
  %430 = phi ptr [ %425, %bs_write.exit.i1635 ], [ %add.ptr.i17.i, %if.then.i10.i ]
  %431 = phi i32 [ %sub.i8.i, %bs_write.exit.i1635 ], [ %add.i16.i, %if.then.i10.i ]
  %432 = phi i64 [ %or.i6.i, %bs_write.exit.i1635 ], [ %.pre2371, %if.then.i10.i ]
  %i_time_scale = getelementptr inbounds i8, ptr %sps, i64 1196
  %433 = load i32, ptr %i_time_scale, align 4
  %shr.i1645 = lshr i32 %433, 16
  %shl.i.i1647 = shl i64 %432, 16
  %conv.i.i1648 = zext nneg i32 %shr.i1645 to i64
  %or.i.i1649 = or disjoint i64 %shl.i.i1647, %conv.i.i1648
  store i64 %or.i.i1649, ptr %cur_bits.i353, align 8
  %sub.i.i1651 = add nsw i32 %431, -16
  store i32 %sub.i.i1651, ptr %i_left.i355, align 8
  %cmp.i.i1652 = icmp slt i32 %431, 49
  br i1 %cmp.i.i1652, label %if.then.i.i1667, label %bs_write.exit.i1653

if.then.i.i1667:                                  ; preds = %bs_write32.exit
  %sh_prom6.i.i1668 = zext nneg i32 %sub.i.i1651 to i64
  %shl7.i.i1669 = shl i64 %or.i.i1649, %sh_prom6.i.i1668
  %add.i.i.i.i1670 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1669)
  %conv8.i.i1671 = trunc i64 %add.i.i.i.i1670 to i32
  store i32 %conv8.i.i1671, ptr %430, align 4
  %434 = load i32, ptr %i_left.i355, align 8
  %add.i.i1673 = add nsw i32 %434, 32
  %435 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1674 = getelementptr inbounds i8, ptr %435, i64 4
  store ptr %add.ptr.i.i1674, ptr %p.i, align 8
  %.pre.i1675 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i1653

bs_write.exit.i1653:                              ; preds = %if.then.i.i1667, %bs_write32.exit
  %436 = phi ptr [ %430, %bs_write32.exit ], [ %add.ptr.i.i1674, %if.then.i.i1667 ]
  %437 = phi i32 [ %sub.i.i1651, %bs_write32.exit ], [ %add.i.i1673, %if.then.i.i1667 ]
  %438 = phi i64 [ %or.i.i1649, %bs_write32.exit ], [ %.pre.i1675, %if.then.i.i1667 ]
  %shl.i4.i1654 = shl i64 %438, 16
  %conv.i5.i1655 = zext i32 %433 to i64
  %or.i6.i1656 = or i64 %shl.i4.i1654, %conv.i5.i1655
  store i64 %or.i6.i1656, ptr %cur_bits.i353, align 8
  %sub.i8.i1657 = add nsw i32 %437, -16
  store i32 %sub.i8.i1657, ptr %i_left.i355, align 8
  %cmp.i9.i1658 = icmp slt i32 %437, 49
  br i1 %cmp.i9.i1658, label %if.then.i10.i1659, label %bs_write32.exit1676

if.then.i10.i1659:                                ; preds = %bs_write.exit.i1653
  %sh_prom6.i11.i1660 = zext nneg i32 %sub.i8.i1657 to i64
  %shl7.i12.i1661 = shl i64 %or.i6.i1656, %sh_prom6.i11.i1660
  %add.i.i.i13.i1662 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i12.i1661)
  %conv8.i14.i1663 = trunc i64 %add.i.i.i13.i1662 to i32
  store i32 %conv8.i14.i1663, ptr %436, align 4
  %439 = load i32, ptr %i_left.i355, align 8
  %add.i16.i1665 = add nsw i32 %439, 32
  store i32 %add.i16.i1665, ptr %i_left.i355, align 8
  %440 = load ptr, ptr %p.i, align 8
  %add.ptr.i17.i1666 = getelementptr inbounds i8, ptr %440, i64 4
  store ptr %add.ptr.i17.i1666, ptr %p.i, align 8
  %.pre2372 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write32.exit1676

bs_write32.exit1676:                              ; preds = %bs_write.exit.i1653, %if.then.i10.i1659
  %441 = phi ptr [ %436, %bs_write.exit.i1653 ], [ %add.ptr.i17.i1666, %if.then.i10.i1659 ]
  %442 = phi i32 [ %sub.i8.i1657, %bs_write.exit.i1653 ], [ %add.i16.i1665, %if.then.i10.i1659 ]
  %443 = phi i64 [ %or.i6.i1656, %bs_write.exit.i1653 ], [ %.pre2372, %if.then.i10.i1659 ]
  %b_fixed_frame_rate = getelementptr inbounds i8, ptr %sps, i64 1200
  %444 = load i32, ptr %b_fixed_frame_rate, align 4
  %shl.i1678 = shl i64 %443, 1
  %conv.i1679 = zext i32 %444 to i64
  %or.i1680 = or i64 %shl.i1678, %conv.i1679
  store i64 %or.i1680, ptr %cur_bits.i353, align 8
  %dec.i1682 = add nsw i32 %442, -1
  store i32 %dec.i1682, ptr %i_left.i355, align 8
  %cmp.i1683 = icmp eq i32 %dec.i1682, 32
  br i1 %cmp.i1683, label %if.then.i1684, label %if.end124

if.then.i1684:                                    ; preds = %bs_write32.exit1676
  %conv6.i1685 = trunc i64 %or.i1680 to i32
  %add5.i.i1686 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1685)
  store i32 %add5.i.i1686, ptr %441, align 4
  %445 = load ptr, ptr %p.i, align 8
  %add.ptr.i1688 = getelementptr inbounds i8, ptr %445, i64 4
  store ptr %add.ptr.i1688, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2373 = load i64, ptr %cur_bits.i353, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then.i1684, %bs_write32.exit1676, %bs_write1.exit1626
  %446 = phi ptr [ %add.ptr.i1688, %if.then.i1684 ], [ %441, %bs_write32.exit1676 ], [ %419, %bs_write1.exit1626 ]
  %447 = phi i32 [ 64, %if.then.i1684 ], [ %dec.i1682, %bs_write32.exit1676 ], [ %420, %bs_write1.exit1626 ]
  %448 = phi i64 [ %.pre2373, %if.then.i1684 ], [ %or.i1680, %bs_write32.exit1676 ], [ %.pre2374, %bs_write1.exit1626 ]
  %b_nal_hrd_parameters_present = getelementptr inbounds i8, ptr %sps, i64 1204
  %449 = load i32, ptr %b_nal_hrd_parameters_present, align 4
  %shl.i1691 = shl i64 %448, 1
  %conv.i1692 = zext i32 %449 to i64
  %or.i1693 = or i64 %shl.i1691, %conv.i1692
  store i64 %or.i1693, ptr %cur_bits.i353, align 8
  %dec.i1695 = add nsw i32 %447, -1
  store i32 %dec.i1695, ptr %i_left.i355, align 8
  %cmp.i1696 = icmp eq i32 %dec.i1695, 32
  br i1 %cmp.i1696, label %if.then.i1697, label %bs_write1.exit1702

if.then.i1697:                                    ; preds = %if.end124
  %conv6.i1698 = trunc i64 %or.i1693 to i32
  %add5.i.i1699 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1698)
  store i32 %add5.i.i1699, ptr %446, align 4
  %450 = load ptr, ptr %p.i, align 8
  %add.ptr.i1701 = getelementptr inbounds i8, ptr %450, i64 4
  store ptr %add.ptr.i1701, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2385.pre = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write1.exit1702

bs_write1.exit1702:                               ; preds = %if.end124, %if.then.i1697
  %.pre2385 = phi i64 [ %or.i1693, %if.end124 ], [ %.pre2385.pre, %if.then.i1697 ]
  %451 = phi ptr [ %446, %if.end124 ], [ %add.ptr.i1701, %if.then.i1697 ]
  %452 = phi i32 [ %dec.i1695, %if.end124 ], [ 64, %if.then.i1697 ]
  %453 = load i32, ptr %b_nal_hrd_parameters_present, align 4
  %tobool128.not = icmp eq i32 %453, 0
  br i1 %tobool128.not, label %if.end155, label %if.then129

if.then129:                                       ; preds = %bs_write1.exit1702
  %hrd = getelementptr inbounds i8, ptr %sps, i64 1212
  %454 = load i32, ptr %hrd, align 4
  %cmp.i1704 = icmp sgt i32 %454, 65535
  %shr.i1705 = lshr i32 %454, 16
  %spec.select.i1706 = select i1 %cmp.i1704, i32 32, i32 0
  %spec.select18.i1707 = select i1 %cmp.i1704, i32 %shr.i1705, i32 %454
  %cmp1.i1708 = icmp sgt i32 %spec.select18.i1707, 255
  %add.i1709 = or disjoint i32 %spec.select.i1706, 16
  %shr3.i1710 = lshr i32 %spec.select18.i1707, 8
  %size.1.i1711 = select i1 %cmp1.i1708, i32 %add.i1709, i32 %spec.select.i1706
  %tmp.1.i1712 = select i1 %cmp1.i1708, i32 %shr3.i1710, i32 %spec.select18.i1707
  %idxprom.i1713 = sext i32 %tmp.1.i1712 to i64
  %arrayidx.i1714 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1713
  %455 = load i8, ptr %arrayidx.i1714, align 1
  %conv.i1715 = zext i8 %455 to i32
  %add5.i1716 = add nuw nsw i32 %size.1.i1711, %conv.i1715
  %shr6.i1717 = lshr i32 %add5.i1716, 1
  %sh_prom.i.i1719 = zext nneg i32 %shr6.i1717 to i64
  %shl.i.i1720 = shl i64 %.pre2385, %sh_prom.i.i1719
  store i64 %shl.i.i1720, ptr %cur_bits.i353, align 8
  %sub.i.i1722 = sub nsw i32 %452, %shr6.i1717
  store i32 %sub.i.i1722, ptr %i_left.i355, align 8
  %cmp.i.i1723 = icmp slt i32 %sub.i.i1722, 33
  br i1 %cmp.i.i1723, label %if.then.i.i1740, label %bs_write.exit.i1724

if.then.i.i1740:                                  ; preds = %if.then129
  %sh_prom6.i.i1741 = zext nneg i32 %sub.i.i1722 to i64
  %shl7.i.i1742 = shl i64 %shl.i.i1720, %sh_prom6.i.i1741
  %add.i.i.i.i1743 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1742)
  %conv8.i.i1744 = trunc i64 %add.i.i.i.i1743 to i32
  store i32 %conv8.i.i1744, ptr %451, align 4
  %456 = load i32, ptr %i_left.i355, align 8
  %add.i.i1746 = add nsw i32 %456, 32
  %457 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1747 = getelementptr inbounds i8, ptr %457, i64 4
  store ptr %add.ptr.i.i1747, ptr %p.i, align 8
  %.pre.i1748 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i1724

bs_write.exit.i1724:                              ; preds = %if.then.i.i1740, %if.then129
  %458 = phi i32 [ %sub.i.i1722, %if.then129 ], [ %add.i.i1746, %if.then.i.i1740 ]
  %459 = phi i64 [ %shl.i.i1720, %if.then129 ], [ %.pre.i1748, %if.then.i.i1740 ]
  %add8.i1725 = add nuw nsw i32 %shr6.i1717, 1
  %sh_prom.i20.i1726 = zext nneg i32 %add8.i1725 to i64
  %shl.i21.i1727 = shl i64 %459, %sh_prom.i20.i1726
  %conv.i.i1728 = zext i32 %454 to i64
  %or.i.i1729 = or i64 %shl.i21.i1727, %conv.i.i1728
  store i64 %or.i.i1729, ptr %cur_bits.i353, align 8
  %sub.i23.i1730 = sub nsw i32 %458, %add8.i1725
  store i32 %sub.i23.i1730, ptr %i_left.i355, align 8
  %cmp.i24.i1731 = icmp slt i32 %sub.i23.i1730, 33
  br i1 %cmp.i24.i1731, label %if.then.i25.i1732, label %bs_write_ue_big.exit1749

if.then.i25.i1732:                                ; preds = %bs_write.exit.i1724
  %sh_prom6.i26.i1733 = zext nneg i32 %sub.i23.i1730 to i64
  %shl7.i27.i1734 = shl i64 %or.i.i1729, %sh_prom6.i26.i1733
  %add.i.i.i28.i1735 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1734)
  %conv8.i29.i1736 = trunc i64 %add.i.i.i28.i1735 to i32
  %460 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i29.i1736, ptr %460, align 4
  %461 = load i32, ptr %i_left.i355, align 8
  %add.i31.i1738 = add nsw i32 %461, 32
  store i32 %add.i31.i1738, ptr %i_left.i355, align 8
  %462 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i1739 = getelementptr inbounds i8, ptr %462, i64 4
  store ptr %add.ptr.i32.i1739, ptr %p.i, align 8
  %.pre2375 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit1749

bs_write_ue_big.exit1749:                         ; preds = %bs_write.exit.i1724, %if.then.i25.i1732
  %463 = phi i32 [ %sub.i23.i1730, %bs_write.exit.i1724 ], [ %add.i31.i1738, %if.then.i25.i1732 ]
  %464 = phi i64 [ %or.i.i1729, %bs_write.exit.i1724 ], [ %.pre2375, %if.then.i25.i1732 ]
  %i_bit_rate_scale = getelementptr inbounds i8, ptr %sps, i64 1216
  %465 = load i32, ptr %i_bit_rate_scale, align 4
  %shl.i1751 = shl i64 %464, 4
  %conv.i1752 = zext i32 %465 to i64
  %or.i1753 = or i64 %shl.i1751, %conv.i1752
  store i64 %or.i1753, ptr %cur_bits.i353, align 8
  %sub.i1755 = add nsw i32 %463, -4
  store i32 %sub.i1755, ptr %i_left.i355, align 8
  %cmp.i1756 = icmp slt i32 %463, 37
  br i1 %cmp.i1756, label %if.then.i1757, label %bs_write.exit1765

if.then.i1757:                                    ; preds = %bs_write_ue_big.exit1749
  %sh_prom6.i1758 = zext nneg i32 %sub.i1755 to i64
  %shl7.i1759 = shl i64 %or.i1753, %sh_prom6.i1758
  %add.i.i.i1760 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1759)
  %conv8.i1761 = trunc i64 %add.i.i.i1760 to i32
  %466 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i1761, ptr %466, align 4
  %467 = load i32, ptr %i_left.i355, align 8
  %add.i1763 = add nsw i32 %467, 32
  store i32 %add.i1763, ptr %i_left.i355, align 8
  %468 = load ptr, ptr %p.i, align 8
  %add.ptr.i1764 = getelementptr inbounds i8, ptr %468, i64 4
  store ptr %add.ptr.i1764, ptr %p.i, align 8
  %.pre2376 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1765

bs_write.exit1765:                                ; preds = %bs_write_ue_big.exit1749, %if.then.i1757
  %469 = phi i32 [ %sub.i1755, %bs_write_ue_big.exit1749 ], [ %add.i1763, %if.then.i1757 ]
  %470 = phi i64 [ %or.i1753, %bs_write_ue_big.exit1749 ], [ %.pre2376, %if.then.i1757 ]
  %i_cpb_size_scale = getelementptr inbounds i8, ptr %sps, i64 1220
  %471 = load i32, ptr %i_cpb_size_scale, align 4
  %shl.i1767 = shl i64 %470, 4
  %conv.i1768 = zext i32 %471 to i64
  %or.i1769 = or i64 %shl.i1767, %conv.i1768
  store i64 %or.i1769, ptr %cur_bits.i353, align 8
  %sub.i1771 = add nsw i32 %469, -4
  store i32 %sub.i1771, ptr %i_left.i355, align 8
  %cmp.i1772 = icmp slt i32 %469, 37
  br i1 %cmp.i1772, label %if.then.i1773, label %bs_write.exit1781

if.then.i1773:                                    ; preds = %bs_write.exit1765
  %sh_prom6.i1774 = zext nneg i32 %sub.i1771 to i64
  %shl7.i1775 = shl i64 %or.i1769, %sh_prom6.i1774
  %add.i.i.i1776 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1775)
  %conv8.i1777 = trunc i64 %add.i.i.i1776 to i32
  %472 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i1777, ptr %472, align 4
  %473 = load i32, ptr %i_left.i355, align 8
  %add.i1779 = add nsw i32 %473, 32
  store i32 %add.i1779, ptr %i_left.i355, align 8
  %474 = load ptr, ptr %p.i, align 8
  %add.ptr.i1780 = getelementptr inbounds i8, ptr %474, i64 4
  store ptr %add.ptr.i1780, ptr %p.i, align 8
  %.pre2377 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1781

bs_write.exit1781:                                ; preds = %bs_write.exit1765, %if.then.i1773
  %475 = phi i32 [ %sub.i1771, %bs_write.exit1765 ], [ %add.i1779, %if.then.i1773 ]
  %476 = phi i64 [ %or.i1769, %bs_write.exit1765 ], [ %.pre2377, %if.then.i1773 ]
  %i_bit_rate_value = getelementptr inbounds i8, ptr %sps, i64 1224
  %477 = load i32, ptr %i_bit_rate_value, align 4
  %cmp.i1783 = icmp sgt i32 %477, 65535
  %shr.i1784 = lshr i32 %477, 16
  %spec.select.i1785 = select i1 %cmp.i1783, i32 32, i32 0
  %spec.select18.i1786 = select i1 %cmp.i1783, i32 %shr.i1784, i32 %477
  %cmp1.i1787 = icmp sgt i32 %spec.select18.i1786, 255
  %add.i1788 = or disjoint i32 %spec.select.i1785, 16
  %shr3.i1789 = lshr i32 %spec.select18.i1786, 8
  %size.1.i1790 = select i1 %cmp1.i1787, i32 %add.i1788, i32 %spec.select.i1785
  %tmp.1.i1791 = select i1 %cmp1.i1787, i32 %shr3.i1789, i32 %spec.select18.i1786
  %idxprom.i1792 = sext i32 %tmp.1.i1791 to i64
  %arrayidx.i1793 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1792
  %478 = load i8, ptr %arrayidx.i1793, align 1
  %conv.i1794 = zext i8 %478 to i32
  %add5.i1795 = add nuw nsw i32 %size.1.i1790, %conv.i1794
  %shr6.i1796 = lshr i32 %add5.i1795, 1
  %sh_prom.i.i1798 = zext nneg i32 %shr6.i1796 to i64
  %shl.i.i1799 = shl i64 %476, %sh_prom.i.i1798
  store i64 %shl.i.i1799, ptr %cur_bits.i353, align 8
  %sub.i.i1801 = sub nsw i32 %475, %shr6.i1796
  store i32 %sub.i.i1801, ptr %i_left.i355, align 8
  %cmp.i.i1802 = icmp slt i32 %sub.i.i1801, 33
  br i1 %cmp.i.i1802, label %if.then.i.i1819, label %bs_write.exit.i1803

if.then.i.i1819:                                  ; preds = %bs_write.exit1781
  %sh_prom6.i.i1820 = zext nneg i32 %sub.i.i1801 to i64
  %shl7.i.i1821 = shl i64 %shl.i.i1799, %sh_prom6.i.i1820
  %add.i.i.i.i1822 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1821)
  %conv8.i.i1823 = trunc i64 %add.i.i.i.i1822 to i32
  %479 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i1823, ptr %479, align 4
  %480 = load i32, ptr %i_left.i355, align 8
  %add.i.i1825 = add nsw i32 %480, 32
  %481 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1826 = getelementptr inbounds i8, ptr %481, i64 4
  store ptr %add.ptr.i.i1826, ptr %p.i, align 8
  %.pre.i1827 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i1803

bs_write.exit.i1803:                              ; preds = %if.then.i.i1819, %bs_write.exit1781
  %482 = phi i32 [ %sub.i.i1801, %bs_write.exit1781 ], [ %add.i.i1825, %if.then.i.i1819 ]
  %483 = phi i64 [ %shl.i.i1799, %bs_write.exit1781 ], [ %.pre.i1827, %if.then.i.i1819 ]
  %add8.i1804 = add nuw nsw i32 %shr6.i1796, 1
  %sh_prom.i20.i1805 = zext nneg i32 %add8.i1804 to i64
  %shl.i21.i1806 = shl i64 %483, %sh_prom.i20.i1805
  %conv.i.i1807 = zext i32 %477 to i64
  %or.i.i1808 = or i64 %shl.i21.i1806, %conv.i.i1807
  store i64 %or.i.i1808, ptr %cur_bits.i353, align 8
  %sub.i23.i1809 = sub nsw i32 %482, %add8.i1804
  store i32 %sub.i23.i1809, ptr %i_left.i355, align 8
  %cmp.i24.i1810 = icmp slt i32 %sub.i23.i1809, 33
  br i1 %cmp.i24.i1810, label %if.then.i25.i1811, label %bs_write_ue_big.exit1828

if.then.i25.i1811:                                ; preds = %bs_write.exit.i1803
  %sh_prom6.i26.i1812 = zext nneg i32 %sub.i23.i1809 to i64
  %shl7.i27.i1813 = shl i64 %or.i.i1808, %sh_prom6.i26.i1812
  %add.i.i.i28.i1814 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1813)
  %conv8.i29.i1815 = trunc i64 %add.i.i.i28.i1814 to i32
  %484 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i29.i1815, ptr %484, align 4
  %485 = load i32, ptr %i_left.i355, align 8
  %add.i31.i1817 = add nsw i32 %485, 32
  store i32 %add.i31.i1817, ptr %i_left.i355, align 8
  %486 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i1818 = getelementptr inbounds i8, ptr %486, i64 4
  store ptr %add.ptr.i32.i1818, ptr %p.i, align 8
  %.pre2378 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit1828

bs_write_ue_big.exit1828:                         ; preds = %bs_write.exit.i1803, %if.then.i25.i1811
  %487 = phi i32 [ %sub.i23.i1809, %bs_write.exit.i1803 ], [ %add.i31.i1817, %if.then.i25.i1811 ]
  %488 = phi i64 [ %or.i.i1808, %bs_write.exit.i1803 ], [ %.pre2378, %if.then.i25.i1811 ]
  %i_cpb_size_value = getelementptr inbounds i8, ptr %sps, i64 1228
  %489 = load i32, ptr %i_cpb_size_value, align 4
  %cmp.i1830 = icmp sgt i32 %489, 65535
  %shr.i1831 = lshr i32 %489, 16
  %spec.select.i1832 = select i1 %cmp.i1830, i32 32, i32 0
  %spec.select18.i1833 = select i1 %cmp.i1830, i32 %shr.i1831, i32 %489
  %cmp1.i1834 = icmp sgt i32 %spec.select18.i1833, 255
  %add.i1835 = or disjoint i32 %spec.select.i1832, 16
  %shr3.i1836 = lshr i32 %spec.select18.i1833, 8
  %size.1.i1837 = select i1 %cmp1.i1834, i32 %add.i1835, i32 %spec.select.i1832
  %tmp.1.i1838 = select i1 %cmp1.i1834, i32 %shr3.i1836, i32 %spec.select18.i1833
  %idxprom.i1839 = sext i32 %tmp.1.i1838 to i64
  %arrayidx.i1840 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1839
  %490 = load i8, ptr %arrayidx.i1840, align 1
  %conv.i1841 = zext i8 %490 to i32
  %add5.i1842 = add nuw nsw i32 %size.1.i1837, %conv.i1841
  %shr6.i1843 = lshr i32 %add5.i1842, 1
  %sh_prom.i.i1845 = zext nneg i32 %shr6.i1843 to i64
  %shl.i.i1846 = shl i64 %488, %sh_prom.i.i1845
  store i64 %shl.i.i1846, ptr %cur_bits.i353, align 8
  %sub.i.i1848 = sub nsw i32 %487, %shr6.i1843
  store i32 %sub.i.i1848, ptr %i_left.i355, align 8
  %cmp.i.i1849 = icmp slt i32 %sub.i.i1848, 33
  br i1 %cmp.i.i1849, label %if.then.i.i1866, label %bs_write.exit.i1850

if.then.i.i1866:                                  ; preds = %bs_write_ue_big.exit1828
  %sh_prom6.i.i1867 = zext nneg i32 %sub.i.i1848 to i64
  %shl7.i.i1868 = shl i64 %shl.i.i1846, %sh_prom6.i.i1867
  %add.i.i.i.i1869 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1868)
  %conv8.i.i1870 = trunc i64 %add.i.i.i.i1869 to i32
  %491 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i1870, ptr %491, align 4
  %492 = load i32, ptr %i_left.i355, align 8
  %add.i.i1872 = add nsw i32 %492, 32
  %493 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1873 = getelementptr inbounds i8, ptr %493, i64 4
  store ptr %add.ptr.i.i1873, ptr %p.i, align 8
  %.pre.i1874 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i1850

bs_write.exit.i1850:                              ; preds = %if.then.i.i1866, %bs_write_ue_big.exit1828
  %494 = phi i32 [ %sub.i.i1848, %bs_write_ue_big.exit1828 ], [ %add.i.i1872, %if.then.i.i1866 ]
  %495 = phi i64 [ %shl.i.i1846, %bs_write_ue_big.exit1828 ], [ %.pre.i1874, %if.then.i.i1866 ]
  %add8.i1851 = add nuw nsw i32 %shr6.i1843, 1
  %sh_prom.i20.i1852 = zext nneg i32 %add8.i1851 to i64
  %shl.i21.i1853 = shl i64 %495, %sh_prom.i20.i1852
  %conv.i.i1854 = zext i32 %489 to i64
  %or.i.i1855 = or i64 %shl.i21.i1853, %conv.i.i1854
  store i64 %or.i.i1855, ptr %cur_bits.i353, align 8
  %sub.i23.i1856 = sub nsw i32 %494, %add8.i1851
  store i32 %sub.i23.i1856, ptr %i_left.i355, align 8
  %cmp.i24.i1857 = icmp slt i32 %sub.i23.i1856, 33
  br i1 %cmp.i24.i1857, label %if.then.i25.i1858, label %bs_write_ue_big.exit1875

if.then.i25.i1858:                                ; preds = %bs_write.exit.i1850
  %sh_prom6.i26.i1859 = zext nneg i32 %sub.i23.i1856 to i64
  %shl7.i27.i1860 = shl i64 %or.i.i1855, %sh_prom6.i26.i1859
  %add.i.i.i28.i1861 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1860)
  %conv8.i29.i1862 = trunc i64 %add.i.i.i28.i1861 to i32
  %496 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i29.i1862, ptr %496, align 4
  %497 = load i32, ptr %i_left.i355, align 8
  %add.i31.i1864 = add nsw i32 %497, 32
  store i32 %add.i31.i1864, ptr %i_left.i355, align 8
  %498 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i1865 = getelementptr inbounds i8, ptr %498, i64 4
  store ptr %add.ptr.i32.i1865, ptr %p.i, align 8
  %.pre2379 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit1875

bs_write_ue_big.exit1875:                         ; preds = %bs_write.exit.i1850, %if.then.i25.i1858
  %499 = phi i32 [ %sub.i23.i1856, %bs_write.exit.i1850 ], [ %add.i31.i1864, %if.then.i25.i1858 ]
  %500 = phi i64 [ %or.i.i1855, %bs_write.exit.i1850 ], [ %.pre2379, %if.then.i25.i1858 ]
  %b_cbr_hrd = getelementptr inbounds i8, ptr %sps, i64 1240
  %501 = load i32, ptr %b_cbr_hrd, align 4
  %shl.i1877 = shl i64 %500, 1
  %conv.i1878 = zext i32 %501 to i64
  %or.i1879 = or i64 %shl.i1877, %conv.i1878
  store i64 %or.i1879, ptr %cur_bits.i353, align 8
  %dec.i1881 = add nsw i32 %499, -1
  store i32 %dec.i1881, ptr %i_left.i355, align 8
  %cmp.i1882 = icmp eq i32 %dec.i1881, 32
  br i1 %cmp.i1882, label %if.then.i1883, label %bs_write1.exit1888

if.then.i1883:                                    ; preds = %bs_write_ue_big.exit1875
  %conv6.i1884 = trunc i64 %or.i1879 to i32
  %add5.i.i1885 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1884)
  %502 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i1885, ptr %502, align 4
  %503 = load ptr, ptr %p.i, align 8
  %add.ptr.i1887 = getelementptr inbounds i8, ptr %503, i64 4
  store ptr %add.ptr.i1887, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2380 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write1.exit1888

bs_write1.exit1888:                               ; preds = %bs_write_ue_big.exit1875, %if.then.i1883
  %504 = phi i32 [ %dec.i1881, %bs_write_ue_big.exit1875 ], [ 64, %if.then.i1883 ]
  %505 = phi i64 [ %or.i1879, %bs_write_ue_big.exit1875 ], [ %.pre2380, %if.then.i1883 ]
  %i_initial_cpb_removal_delay_length = getelementptr inbounds i8, ptr %sps, i64 1244
  %506 = load i32, ptr %i_initial_cpb_removal_delay_length, align 4
  %sub146 = add nsw i32 %506, -1
  %shl.i1890 = shl i64 %505, 5
  %conv.i1891 = zext i32 %sub146 to i64
  %or.i1892 = or i64 %shl.i1890, %conv.i1891
  store i64 %or.i1892, ptr %cur_bits.i353, align 8
  %sub.i1894 = add nsw i32 %504, -5
  store i32 %sub.i1894, ptr %i_left.i355, align 8
  %cmp.i1895 = icmp slt i32 %504, 38
  br i1 %cmp.i1895, label %if.then.i1896, label %bs_write.exit1904

if.then.i1896:                                    ; preds = %bs_write1.exit1888
  %sh_prom6.i1897 = zext nneg i32 %sub.i1894 to i64
  %shl7.i1898 = shl i64 %or.i1892, %sh_prom6.i1897
  %add.i.i.i1899 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1898)
  %conv8.i1900 = trunc i64 %add.i.i.i1899 to i32
  %507 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i1900, ptr %507, align 4
  %508 = load i32, ptr %i_left.i355, align 8
  %add.i1902 = add nsw i32 %508, 32
  store i32 %add.i1902, ptr %i_left.i355, align 8
  %509 = load ptr, ptr %p.i, align 8
  %add.ptr.i1903 = getelementptr inbounds i8, ptr %509, i64 4
  store ptr %add.ptr.i1903, ptr %p.i, align 8
  %.pre2381 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1904

bs_write.exit1904:                                ; preds = %bs_write1.exit1888, %if.then.i1896
  %510 = phi i32 [ %sub.i1894, %bs_write1.exit1888 ], [ %add.i1902, %if.then.i1896 ]
  %511 = phi i64 [ %or.i1892, %bs_write1.exit1888 ], [ %.pre2381, %if.then.i1896 ]
  %i_cpb_removal_delay_length = getelementptr inbounds i8, ptr %sps, i64 1248
  %512 = load i32, ptr %i_cpb_removal_delay_length, align 4
  %sub149 = add nsw i32 %512, -1
  %shl.i1906 = shl i64 %511, 5
  %conv.i1907 = zext i32 %sub149 to i64
  %or.i1908 = or i64 %shl.i1906, %conv.i1907
  store i64 %or.i1908, ptr %cur_bits.i353, align 8
  %sub.i1910 = add nsw i32 %510, -5
  store i32 %sub.i1910, ptr %i_left.i355, align 8
  %cmp.i1911 = icmp slt i32 %510, 38
  br i1 %cmp.i1911, label %if.then.i1912, label %bs_write.exit1920

if.then.i1912:                                    ; preds = %bs_write.exit1904
  %sh_prom6.i1913 = zext nneg i32 %sub.i1910 to i64
  %shl7.i1914 = shl i64 %or.i1908, %sh_prom6.i1913
  %add.i.i.i1915 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1914)
  %conv8.i1916 = trunc i64 %add.i.i.i1915 to i32
  %513 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i1916, ptr %513, align 4
  %514 = load i32, ptr %i_left.i355, align 8
  %add.i1918 = add nsw i32 %514, 32
  store i32 %add.i1918, ptr %i_left.i355, align 8
  %515 = load ptr, ptr %p.i, align 8
  %add.ptr.i1919 = getelementptr inbounds i8, ptr %515, i64 4
  store ptr %add.ptr.i1919, ptr %p.i, align 8
  %.pre2382 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1920

bs_write.exit1920:                                ; preds = %bs_write.exit1904, %if.then.i1912
  %516 = phi i32 [ %sub.i1910, %bs_write.exit1904 ], [ %add.i1918, %if.then.i1912 ]
  %517 = phi i64 [ %or.i1908, %bs_write.exit1904 ], [ %.pre2382, %if.then.i1912 ]
  %i_dpb_output_delay_length = getelementptr inbounds i8, ptr %sps, i64 1252
  %518 = load i32, ptr %i_dpb_output_delay_length, align 4
  %sub152 = add nsw i32 %518, -1
  %shl.i1922 = shl i64 %517, 5
  %conv.i1923 = zext i32 %sub152 to i64
  %or.i1924 = or i64 %shl.i1922, %conv.i1923
  store i64 %or.i1924, ptr %cur_bits.i353, align 8
  %sub.i1926 = add nsw i32 %516, -5
  store i32 %sub.i1926, ptr %i_left.i355, align 8
  %cmp.i1927 = icmp slt i32 %516, 38
  br i1 %cmp.i1927, label %if.then.i1928, label %bs_write.exit1936

if.then.i1928:                                    ; preds = %bs_write.exit1920
  %sh_prom6.i1929 = zext nneg i32 %sub.i1926 to i64
  %shl7.i1930 = shl i64 %or.i1924, %sh_prom6.i1929
  %add.i.i.i1931 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1930)
  %conv8.i1932 = trunc i64 %add.i.i.i1931 to i32
  %519 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i1932, ptr %519, align 4
  %520 = load i32, ptr %i_left.i355, align 8
  %add.i1934 = add nsw i32 %520, 32
  store i32 %add.i1934, ptr %i_left.i355, align 8
  %521 = load ptr, ptr %p.i, align 8
  %add.ptr.i1935 = getelementptr inbounds i8, ptr %521, i64 4
  store ptr %add.ptr.i1935, ptr %p.i, align 8
  %.pre2383 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit1936

bs_write.exit1936:                                ; preds = %bs_write.exit1920, %if.then.i1928
  %522 = phi i32 [ %sub.i1926, %bs_write.exit1920 ], [ %add.i1934, %if.then.i1928 ]
  %523 = phi i64 [ %or.i1924, %bs_write.exit1920 ], [ %.pre2383, %if.then.i1928 ]
  %i_time_offset_length = getelementptr inbounds i8, ptr %sps, i64 1256
  %524 = load i32, ptr %i_time_offset_length, align 4
  %shl.i1938 = shl i64 %523, 5
  %conv.i1939 = zext i32 %524 to i64
  %or.i1940 = or i64 %shl.i1938, %conv.i1939
  store i64 %or.i1940, ptr %cur_bits.i353, align 8
  %sub.i1942 = add nsw i32 %522, -5
  store i32 %sub.i1942, ptr %i_left.i355, align 8
  %cmp.i1943 = icmp slt i32 %522, 38
  br i1 %cmp.i1943, label %if.then.i1944, label %if.end155

if.then.i1944:                                    ; preds = %bs_write.exit1936
  %sh_prom6.i1945 = zext nneg i32 %sub.i1942 to i64
  %shl7.i1946 = shl i64 %or.i1940, %sh_prom6.i1945
  %add.i.i.i1947 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1946)
  %conv8.i1948 = trunc i64 %add.i.i.i1947 to i32
  %525 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i1948, ptr %525, align 4
  %526 = load i32, ptr %i_left.i355, align 8
  %add.i1950 = add nsw i32 %526, 32
  store i32 %add.i1950, ptr %i_left.i355, align 8
  %527 = load ptr, ptr %p.i, align 8
  %add.ptr.i1951 = getelementptr inbounds i8, ptr %527, i64 4
  store ptr %add.ptr.i1951, ptr %p.i, align 8
  %.pre2384 = load i64, ptr %cur_bits.i353, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then.i1944, %bs_write.exit1936, %bs_write1.exit1702
  %528 = phi i32 [ %add.i1950, %if.then.i1944 ], [ %sub.i1942, %bs_write.exit1936 ], [ %452, %bs_write1.exit1702 ]
  %529 = phi i64 [ %.pre2384, %if.then.i1944 ], [ %or.i1940, %bs_write.exit1936 ], [ %.pre2385, %bs_write1.exit1702 ]
  %b_vcl_hrd_parameters_present = getelementptr inbounds i8, ptr %sps, i64 1208
  %530 = load i32, ptr %b_vcl_hrd_parameters_present, align 4
  %shl.i1954 = shl i64 %529, 1
  %conv.i1955 = zext i32 %530 to i64
  %or.i1956 = or i64 %shl.i1954, %conv.i1955
  store i64 %or.i1956, ptr %cur_bits.i353, align 8
  %dec.i1958 = add nsw i32 %528, -1
  store i32 %dec.i1958, ptr %i_left.i355, align 8
  %cmp.i1959 = icmp eq i32 %dec.i1958, 32
  br i1 %cmp.i1959, label %if.then.i1960, label %bs_write1.exit1965

if.then.i1960:                                    ; preds = %if.end155
  %conv6.i1961 = trunc i64 %or.i1956 to i32
  %add5.i.i1962 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1961)
  %531 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i1962, ptr %531, align 4
  %532 = load ptr, ptr %p.i, align 8
  %add.ptr.i1964 = getelementptr inbounds i8, ptr %532, i64 4
  store ptr %add.ptr.i1964, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  br label %bs_write1.exit1965

bs_write1.exit1965:                               ; preds = %if.end155, %if.then.i1960
  %533 = phi i32 [ %dec.i1958, %if.end155 ], [ 64, %if.then.i1960 ]
  %534 = load i32, ptr %b_nal_hrd_parameters_present, align 4
  %tobool159.not = icmp eq i32 %534, 0
  br i1 %tobool159.not, label %lor.lhs.false, label %if.then163

lor.lhs.false:                                    ; preds = %bs_write1.exit1965
  %535 = load i32, ptr %b_vcl_hrd_parameters_present, align 4
  %tobool162.not = icmp eq i32 %535, 0
  br i1 %tobool162.not, label %if.end164, label %if.then163

if.then163:                                       ; preds = %lor.lhs.false, %bs_write1.exit1965
  %536 = load i64, ptr %cur_bits.i353, align 8
  %shl.i1967 = shl i64 %536, 1
  store i64 %shl.i1967, ptr %cur_bits.i353, align 8
  %dec.i1970 = add nsw i32 %533, -1
  store i32 %dec.i1970, ptr %i_left.i355, align 8
  %cmp.i1971 = icmp eq i32 %dec.i1970, 32
  br i1 %cmp.i1971, label %if.then.i1972, label %if.end164

if.then.i1972:                                    ; preds = %if.then163
  %conv6.i1973 = trunc i64 %shl.i1967 to i32
  %add5.i.i1974 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1973)
  %537 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i1974, ptr %537, align 4
  %538 = load ptr, ptr %p.i, align 8
  %add.ptr.i1976 = getelementptr inbounds i8, ptr %538, i64 4
  store ptr %add.ptr.i1976, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.then.i1972, %if.then163, %lor.lhs.false
  %539 = phi i32 [ 64, %if.then.i1972 ], [ %dec.i1970, %if.then163 ], [ %533, %lor.lhs.false ]
  %b_pic_struct_present = getelementptr inbounds i8, ptr %sps, i64 1260
  %540 = load i32, ptr %b_pic_struct_present, align 4
  %541 = load i64, ptr %cur_bits.i353, align 8
  %shl.i1979 = shl i64 %541, 1
  %conv.i1980 = zext i32 %540 to i64
  %or.i1981 = or i64 %shl.i1979, %conv.i1980
  store i64 %or.i1981, ptr %cur_bits.i353, align 8
  %dec.i1983 = add nsw i32 %539, -1
  store i32 %dec.i1983, ptr %i_left.i355, align 8
  %cmp.i1984 = icmp eq i32 %dec.i1983, 32
  br i1 %cmp.i1984, label %if.then.i1985, label %bs_write1.exit1990

if.then.i1985:                                    ; preds = %if.end164
  %conv6.i1986 = trunc i64 %or.i1981 to i32
  %add5.i.i1987 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1986)
  %542 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i1987, ptr %542, align 4
  %543 = load ptr, ptr %p.i, align 8
  %add.ptr.i1989 = getelementptr inbounds i8, ptr %543, i64 4
  store ptr %add.ptr.i1989, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2386 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write1.exit1990

bs_write1.exit1990:                               ; preds = %if.end164, %if.then.i1985
  %544 = phi i32 [ %dec.i1983, %if.end164 ], [ 64, %if.then.i1985 ]
  %545 = phi i64 [ %or.i1981, %if.end164 ], [ %.pre2386, %if.then.i1985 ]
  %b_bitstream_restriction = getelementptr inbounds i8, ptr %sps, i64 1264
  %546 = load i32, ptr %b_bitstream_restriction, align 4
  %shl.i1992 = shl i64 %545, 1
  %conv.i1993 = zext i32 %546 to i64
  %or.i1994 = or i64 %shl.i1992, %conv.i1993
  store i64 %or.i1994, ptr %cur_bits.i353, align 8
  %dec.i1996 = add nsw i32 %544, -1
  store i32 %dec.i1996, ptr %i_left.i355, align 8
  %cmp.i1997 = icmp eq i32 %dec.i1996, 32
  br i1 %cmp.i1997, label %if.then.i1998, label %bs_write1.exit2003

if.then.i1998:                                    ; preds = %bs_write1.exit1990
  %conv6.i1999 = trunc i64 %or.i1994 to i32
  %add5.i.i2000 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1999)
  %547 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i2000, ptr %547, align 4
  %548 = load ptr, ptr %p.i, align 8
  %add.ptr.i2002 = getelementptr inbounds i8, ptr %548, i64 4
  store ptr %add.ptr.i2002, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2394.pre = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write1.exit2003

bs_write1.exit2003:                               ; preds = %bs_write1.exit1990, %if.then.i1998
  %.pre2394 = phi i64 [ %or.i1994, %bs_write1.exit1990 ], [ %.pre2394.pre, %if.then.i1998 ]
  %549 = phi i32 [ %dec.i1996, %bs_write1.exit1990 ], [ 64, %if.then.i1998 ]
  %550 = load i32, ptr %b_bitstream_restriction, align 4
  %tobool169.not = icmp eq i32 %550, 0
  br i1 %tobool169.not, label %if.end179, label %if.then170

if.then170:                                       ; preds = %bs_write1.exit2003
  %b_motion_vectors_over_pic_boundaries = getelementptr inbounds i8, ptr %sps, i64 1268
  %551 = load i32, ptr %b_motion_vectors_over_pic_boundaries, align 4
  %shl.i2005 = shl i64 %.pre2394, 1
  %conv.i2006 = zext i32 %551 to i64
  %or.i2007 = or i64 %shl.i2005, %conv.i2006
  store i64 %or.i2007, ptr %cur_bits.i353, align 8
  %dec.i2009 = add nsw i32 %549, -1
  store i32 %dec.i2009, ptr %i_left.i355, align 8
  %cmp.i2010 = icmp eq i32 %dec.i2009, 32
  br i1 %cmp.i2010, label %if.then.i2011, label %bs_write1.exit2016

if.then.i2011:                                    ; preds = %if.then170
  %conv6.i2012 = trunc i64 %or.i2007 to i32
  %add5.i.i2013 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i2012)
  %552 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i2013, ptr %552, align 4
  %553 = load ptr, ptr %p.i, align 8
  %add.ptr.i2015 = getelementptr inbounds i8, ptr %553, i64 4
  store ptr %add.ptr.i2015, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  %.pre2387 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write1.exit2016

bs_write1.exit2016:                               ; preds = %if.then170, %if.then.i2011
  %554 = phi i32 [ %dec.i2009, %if.then170 ], [ 64, %if.then.i2011 ]
  %555 = phi i64 [ %or.i2007, %if.then170 ], [ %.pre2387, %if.then.i2011 ]
  %i_max_bytes_per_pic_denom = getelementptr inbounds i8, ptr %sps, i64 1272
  %556 = load i32, ptr %i_max_bytes_per_pic_denom, align 4
  %inc.i2017 = add i32 %556, 1
  %cmp.i2018 = icmp sgt i32 %inc.i2017, 65535
  %shr.i2019 = lshr i32 %inc.i2017, 16
  %spec.select.i2020 = select i1 %cmp.i2018, i32 32, i32 0
  %spec.select18.i2021 = select i1 %cmp.i2018, i32 %shr.i2019, i32 %inc.i2017
  %cmp1.i2022 = icmp sgt i32 %spec.select18.i2021, 255
  %add.i2023 = or disjoint i32 %spec.select.i2020, 16
  %shr3.i2024 = lshr i32 %spec.select18.i2021, 8
  %size.1.i2025 = select i1 %cmp1.i2022, i32 %add.i2023, i32 %spec.select.i2020
  %tmp.1.i2026 = select i1 %cmp1.i2022, i32 %shr3.i2024, i32 %spec.select18.i2021
  %idxprom.i2027 = sext i32 %tmp.1.i2026 to i64
  %arrayidx.i2028 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i2027
  %557 = load i8, ptr %arrayidx.i2028, align 1
  %conv.i2029 = zext i8 %557 to i32
  %add5.i2030 = add nuw nsw i32 %size.1.i2025, %conv.i2029
  %shr6.i2031 = lshr i32 %add5.i2030, 1
  %sh_prom.i.i2033 = zext nneg i32 %shr6.i2031 to i64
  %shl.i.i2034 = shl i64 %555, %sh_prom.i.i2033
  store i64 %shl.i.i2034, ptr %cur_bits.i353, align 8
  %sub.i.i2036 = sub nsw i32 %554, %shr6.i2031
  store i32 %sub.i.i2036, ptr %i_left.i355, align 8
  %cmp.i.i2037 = icmp slt i32 %sub.i.i2036, 33
  br i1 %cmp.i.i2037, label %if.then.i.i2054, label %bs_write.exit.i2038

if.then.i.i2054:                                  ; preds = %bs_write1.exit2016
  %sh_prom6.i.i2055 = zext nneg i32 %sub.i.i2036 to i64
  %shl7.i.i2056 = shl i64 %shl.i.i2034, %sh_prom6.i.i2055
  %add.i.i.i.i2057 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i2056)
  %conv8.i.i2058 = trunc i64 %add.i.i.i.i2057 to i32
  %558 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i2058, ptr %558, align 4
  %559 = load i32, ptr %i_left.i355, align 8
  %add.i.i2060 = add nsw i32 %559, 32
  %560 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i2061 = getelementptr inbounds i8, ptr %560, i64 4
  store ptr %add.ptr.i.i2061, ptr %p.i, align 8
  %.pre.i2062 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i2038

bs_write.exit.i2038:                              ; preds = %if.then.i.i2054, %bs_write1.exit2016
  %561 = phi i32 [ %sub.i.i2036, %bs_write1.exit2016 ], [ %add.i.i2060, %if.then.i.i2054 ]
  %562 = phi i64 [ %shl.i.i2034, %bs_write1.exit2016 ], [ %.pre.i2062, %if.then.i.i2054 ]
  %add8.i2039 = add nuw nsw i32 %shr6.i2031, 1
  %sh_prom.i20.i2040 = zext nneg i32 %add8.i2039 to i64
  %shl.i21.i2041 = shl i64 %562, %sh_prom.i20.i2040
  %conv.i.i2042 = zext i32 %inc.i2017 to i64
  %or.i.i2043 = or i64 %shl.i21.i2041, %conv.i.i2042
  store i64 %or.i.i2043, ptr %cur_bits.i353, align 8
  %sub.i23.i2044 = sub nsw i32 %561, %add8.i2039
  store i32 %sub.i23.i2044, ptr %i_left.i355, align 8
  %cmp.i24.i2045 = icmp slt i32 %sub.i23.i2044, 33
  br i1 %cmp.i24.i2045, label %if.then.i25.i2046, label %bs_write_ue_big.exit2063

if.then.i25.i2046:                                ; preds = %bs_write.exit.i2038
  %sh_prom6.i26.i2047 = zext nneg i32 %sub.i23.i2044 to i64
  %shl7.i27.i2048 = shl i64 %or.i.i2043, %sh_prom6.i26.i2047
  %add.i.i.i28.i2049 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i2048)
  %conv8.i29.i2050 = trunc i64 %add.i.i.i28.i2049 to i32
  %563 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i29.i2050, ptr %563, align 4
  %564 = load i32, ptr %i_left.i355, align 8
  %add.i31.i2052 = add nsw i32 %564, 32
  store i32 %add.i31.i2052, ptr %i_left.i355, align 8
  %565 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i2053 = getelementptr inbounds i8, ptr %565, i64 4
  store ptr %add.ptr.i32.i2053, ptr %p.i, align 8
  %.pre2388 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit2063

bs_write_ue_big.exit2063:                         ; preds = %bs_write.exit.i2038, %if.then.i25.i2046
  %566 = phi i32 [ %sub.i23.i2044, %bs_write.exit.i2038 ], [ %add.i31.i2052, %if.then.i25.i2046 ]
  %567 = phi i64 [ %or.i.i2043, %bs_write.exit.i2038 ], [ %.pre2388, %if.then.i25.i2046 ]
  %i_max_bits_per_mb_denom = getelementptr inbounds i8, ptr %sps, i64 1276
  %568 = load i32, ptr %i_max_bits_per_mb_denom, align 4
  %inc.i2064 = add i32 %568, 1
  %cmp.i2065 = icmp sgt i32 %inc.i2064, 65535
  %shr.i2066 = lshr i32 %inc.i2064, 16
  %spec.select.i2067 = select i1 %cmp.i2065, i32 32, i32 0
  %spec.select18.i2068 = select i1 %cmp.i2065, i32 %shr.i2066, i32 %inc.i2064
  %cmp1.i2069 = icmp sgt i32 %spec.select18.i2068, 255
  %add.i2070 = or disjoint i32 %spec.select.i2067, 16
  %shr3.i2071 = lshr i32 %spec.select18.i2068, 8
  %size.1.i2072 = select i1 %cmp1.i2069, i32 %add.i2070, i32 %spec.select.i2067
  %tmp.1.i2073 = select i1 %cmp1.i2069, i32 %shr3.i2071, i32 %spec.select18.i2068
  %idxprom.i2074 = sext i32 %tmp.1.i2073 to i64
  %arrayidx.i2075 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i2074
  %569 = load i8, ptr %arrayidx.i2075, align 1
  %conv.i2076 = zext i8 %569 to i32
  %add5.i2077 = add nuw nsw i32 %size.1.i2072, %conv.i2076
  %shr6.i2078 = lshr i32 %add5.i2077, 1
  %sh_prom.i.i2080 = zext nneg i32 %shr6.i2078 to i64
  %shl.i.i2081 = shl i64 %567, %sh_prom.i.i2080
  store i64 %shl.i.i2081, ptr %cur_bits.i353, align 8
  %sub.i.i2083 = sub nsw i32 %566, %shr6.i2078
  store i32 %sub.i.i2083, ptr %i_left.i355, align 8
  %cmp.i.i2084 = icmp slt i32 %sub.i.i2083, 33
  br i1 %cmp.i.i2084, label %if.then.i.i2101, label %bs_write.exit.i2085

if.then.i.i2101:                                  ; preds = %bs_write_ue_big.exit2063
  %sh_prom6.i.i2102 = zext nneg i32 %sub.i.i2083 to i64
  %shl7.i.i2103 = shl i64 %shl.i.i2081, %sh_prom6.i.i2102
  %add.i.i.i.i2104 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i2103)
  %conv8.i.i2105 = trunc i64 %add.i.i.i.i2104 to i32
  %570 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i2105, ptr %570, align 4
  %571 = load i32, ptr %i_left.i355, align 8
  %add.i.i2107 = add nsw i32 %571, 32
  %572 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i2108 = getelementptr inbounds i8, ptr %572, i64 4
  store ptr %add.ptr.i.i2108, ptr %p.i, align 8
  %.pre.i2109 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i2085

bs_write.exit.i2085:                              ; preds = %if.then.i.i2101, %bs_write_ue_big.exit2063
  %573 = phi i32 [ %sub.i.i2083, %bs_write_ue_big.exit2063 ], [ %add.i.i2107, %if.then.i.i2101 ]
  %574 = phi i64 [ %shl.i.i2081, %bs_write_ue_big.exit2063 ], [ %.pre.i2109, %if.then.i.i2101 ]
  %add8.i2086 = add nuw nsw i32 %shr6.i2078, 1
  %sh_prom.i20.i2087 = zext nneg i32 %add8.i2086 to i64
  %shl.i21.i2088 = shl i64 %574, %sh_prom.i20.i2087
  %conv.i.i2089 = zext i32 %inc.i2064 to i64
  %or.i.i2090 = or i64 %shl.i21.i2088, %conv.i.i2089
  store i64 %or.i.i2090, ptr %cur_bits.i353, align 8
  %sub.i23.i2091 = sub nsw i32 %573, %add8.i2086
  store i32 %sub.i23.i2091, ptr %i_left.i355, align 8
  %cmp.i24.i2092 = icmp slt i32 %sub.i23.i2091, 33
  br i1 %cmp.i24.i2092, label %if.then.i25.i2093, label %bs_write_ue_big.exit2110

if.then.i25.i2093:                                ; preds = %bs_write.exit.i2085
  %sh_prom6.i26.i2094 = zext nneg i32 %sub.i23.i2091 to i64
  %shl7.i27.i2095 = shl i64 %or.i.i2090, %sh_prom6.i26.i2094
  %add.i.i.i28.i2096 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i2095)
  %conv8.i29.i2097 = trunc i64 %add.i.i.i28.i2096 to i32
  %575 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i29.i2097, ptr %575, align 4
  %576 = load i32, ptr %i_left.i355, align 8
  %add.i31.i2099 = add nsw i32 %576, 32
  store i32 %add.i31.i2099, ptr %i_left.i355, align 8
  %577 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i2100 = getelementptr inbounds i8, ptr %577, i64 4
  store ptr %add.ptr.i32.i2100, ptr %p.i, align 8
  %.pre2389 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit2110

bs_write_ue_big.exit2110:                         ; preds = %bs_write.exit.i2085, %if.then.i25.i2093
  %578 = phi i32 [ %sub.i23.i2091, %bs_write.exit.i2085 ], [ %add.i31.i2099, %if.then.i25.i2093 ]
  %579 = phi i64 [ %or.i.i2090, %bs_write.exit.i2085 ], [ %.pre2389, %if.then.i25.i2093 ]
  %i_log2_max_mv_length_horizontal = getelementptr inbounds i8, ptr %sps, i64 1280
  %580 = load i32, ptr %i_log2_max_mv_length_horizontal, align 4
  %inc.i2111 = add i32 %580, 1
  %cmp.i2112 = icmp sgt i32 %inc.i2111, 65535
  %shr.i2113 = lshr i32 %inc.i2111, 16
  %spec.select.i2114 = select i1 %cmp.i2112, i32 32, i32 0
  %spec.select18.i2115 = select i1 %cmp.i2112, i32 %shr.i2113, i32 %inc.i2111
  %cmp1.i2116 = icmp sgt i32 %spec.select18.i2115, 255
  %add.i2117 = or disjoint i32 %spec.select.i2114, 16
  %shr3.i2118 = lshr i32 %spec.select18.i2115, 8
  %size.1.i2119 = select i1 %cmp1.i2116, i32 %add.i2117, i32 %spec.select.i2114
  %tmp.1.i2120 = select i1 %cmp1.i2116, i32 %shr3.i2118, i32 %spec.select18.i2115
  %idxprom.i2121 = sext i32 %tmp.1.i2120 to i64
  %arrayidx.i2122 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i2121
  %581 = load i8, ptr %arrayidx.i2122, align 1
  %conv.i2123 = zext i8 %581 to i32
  %add5.i2124 = add nuw nsw i32 %size.1.i2119, %conv.i2123
  %shr6.i2125 = lshr i32 %add5.i2124, 1
  %sh_prom.i.i2127 = zext nneg i32 %shr6.i2125 to i64
  %shl.i.i2128 = shl i64 %579, %sh_prom.i.i2127
  store i64 %shl.i.i2128, ptr %cur_bits.i353, align 8
  %sub.i.i2130 = sub nsw i32 %578, %shr6.i2125
  store i32 %sub.i.i2130, ptr %i_left.i355, align 8
  %cmp.i.i2131 = icmp slt i32 %sub.i.i2130, 33
  br i1 %cmp.i.i2131, label %if.then.i.i2148, label %bs_write.exit.i2132

if.then.i.i2148:                                  ; preds = %bs_write_ue_big.exit2110
  %sh_prom6.i.i2149 = zext nneg i32 %sub.i.i2130 to i64
  %shl7.i.i2150 = shl i64 %shl.i.i2128, %sh_prom6.i.i2149
  %add.i.i.i.i2151 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i2150)
  %conv8.i.i2152 = trunc i64 %add.i.i.i.i2151 to i32
  %582 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i2152, ptr %582, align 4
  %583 = load i32, ptr %i_left.i355, align 8
  %add.i.i2154 = add nsw i32 %583, 32
  %584 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i2155 = getelementptr inbounds i8, ptr %584, i64 4
  store ptr %add.ptr.i.i2155, ptr %p.i, align 8
  %.pre.i2156 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i2132

bs_write.exit.i2132:                              ; preds = %if.then.i.i2148, %bs_write_ue_big.exit2110
  %585 = phi i32 [ %sub.i.i2130, %bs_write_ue_big.exit2110 ], [ %add.i.i2154, %if.then.i.i2148 ]
  %586 = phi i64 [ %shl.i.i2128, %bs_write_ue_big.exit2110 ], [ %.pre.i2156, %if.then.i.i2148 ]
  %add8.i2133 = add nuw nsw i32 %shr6.i2125, 1
  %sh_prom.i20.i2134 = zext nneg i32 %add8.i2133 to i64
  %shl.i21.i2135 = shl i64 %586, %sh_prom.i20.i2134
  %conv.i.i2136 = zext i32 %inc.i2111 to i64
  %or.i.i2137 = or i64 %shl.i21.i2135, %conv.i.i2136
  store i64 %or.i.i2137, ptr %cur_bits.i353, align 8
  %sub.i23.i2138 = sub nsw i32 %585, %add8.i2133
  store i32 %sub.i23.i2138, ptr %i_left.i355, align 8
  %cmp.i24.i2139 = icmp slt i32 %sub.i23.i2138, 33
  br i1 %cmp.i24.i2139, label %if.then.i25.i2140, label %bs_write_ue_big.exit2157

if.then.i25.i2140:                                ; preds = %bs_write.exit.i2132
  %sh_prom6.i26.i2141 = zext nneg i32 %sub.i23.i2138 to i64
  %shl7.i27.i2142 = shl i64 %or.i.i2137, %sh_prom6.i26.i2141
  %add.i.i.i28.i2143 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i2142)
  %conv8.i29.i2144 = trunc i64 %add.i.i.i28.i2143 to i32
  %587 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i29.i2144, ptr %587, align 4
  %588 = load i32, ptr %i_left.i355, align 8
  %add.i31.i2146 = add nsw i32 %588, 32
  store i32 %add.i31.i2146, ptr %i_left.i355, align 8
  %589 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i2147 = getelementptr inbounds i8, ptr %589, i64 4
  store ptr %add.ptr.i32.i2147, ptr %p.i, align 8
  %.pre2390 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit2157

bs_write_ue_big.exit2157:                         ; preds = %bs_write.exit.i2132, %if.then.i25.i2140
  %590 = phi i32 [ %sub.i23.i2138, %bs_write.exit.i2132 ], [ %add.i31.i2146, %if.then.i25.i2140 ]
  %591 = phi i64 [ %or.i.i2137, %bs_write.exit.i2132 ], [ %.pre2390, %if.then.i25.i2140 ]
  %i_log2_max_mv_length_vertical = getelementptr inbounds i8, ptr %sps, i64 1284
  %592 = load i32, ptr %i_log2_max_mv_length_vertical, align 4
  %inc.i2158 = add i32 %592, 1
  %cmp.i2159 = icmp sgt i32 %inc.i2158, 65535
  %shr.i2160 = lshr i32 %inc.i2158, 16
  %spec.select.i2161 = select i1 %cmp.i2159, i32 32, i32 0
  %spec.select18.i2162 = select i1 %cmp.i2159, i32 %shr.i2160, i32 %inc.i2158
  %cmp1.i2163 = icmp sgt i32 %spec.select18.i2162, 255
  %add.i2164 = or disjoint i32 %spec.select.i2161, 16
  %shr3.i2165 = lshr i32 %spec.select18.i2162, 8
  %size.1.i2166 = select i1 %cmp1.i2163, i32 %add.i2164, i32 %spec.select.i2161
  %tmp.1.i2167 = select i1 %cmp1.i2163, i32 %shr3.i2165, i32 %spec.select18.i2162
  %idxprom.i2168 = sext i32 %tmp.1.i2167 to i64
  %arrayidx.i2169 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i2168
  %593 = load i8, ptr %arrayidx.i2169, align 1
  %conv.i2170 = zext i8 %593 to i32
  %add5.i2171 = add nuw nsw i32 %size.1.i2166, %conv.i2170
  %shr6.i2172 = lshr i32 %add5.i2171, 1
  %sh_prom.i.i2174 = zext nneg i32 %shr6.i2172 to i64
  %shl.i.i2175 = shl i64 %591, %sh_prom.i.i2174
  store i64 %shl.i.i2175, ptr %cur_bits.i353, align 8
  %sub.i.i2177 = sub nsw i32 %590, %shr6.i2172
  store i32 %sub.i.i2177, ptr %i_left.i355, align 8
  %cmp.i.i2178 = icmp slt i32 %sub.i.i2177, 33
  br i1 %cmp.i.i2178, label %if.then.i.i2195, label %bs_write.exit.i2179

if.then.i.i2195:                                  ; preds = %bs_write_ue_big.exit2157
  %sh_prom6.i.i2196 = zext nneg i32 %sub.i.i2177 to i64
  %shl7.i.i2197 = shl i64 %shl.i.i2175, %sh_prom6.i.i2196
  %add.i.i.i.i2198 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i2197)
  %conv8.i.i2199 = trunc i64 %add.i.i.i.i2198 to i32
  %594 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i2199, ptr %594, align 4
  %595 = load i32, ptr %i_left.i355, align 8
  %add.i.i2201 = add nsw i32 %595, 32
  %596 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i2202 = getelementptr inbounds i8, ptr %596, i64 4
  store ptr %add.ptr.i.i2202, ptr %p.i, align 8
  %.pre.i2203 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i2179

bs_write.exit.i2179:                              ; preds = %if.then.i.i2195, %bs_write_ue_big.exit2157
  %597 = phi i32 [ %sub.i.i2177, %bs_write_ue_big.exit2157 ], [ %add.i.i2201, %if.then.i.i2195 ]
  %598 = phi i64 [ %shl.i.i2175, %bs_write_ue_big.exit2157 ], [ %.pre.i2203, %if.then.i.i2195 ]
  %add8.i2180 = add nuw nsw i32 %shr6.i2172, 1
  %sh_prom.i20.i2181 = zext nneg i32 %add8.i2180 to i64
  %shl.i21.i2182 = shl i64 %598, %sh_prom.i20.i2181
  %conv.i.i2183 = zext i32 %inc.i2158 to i64
  %or.i.i2184 = or i64 %shl.i21.i2182, %conv.i.i2183
  store i64 %or.i.i2184, ptr %cur_bits.i353, align 8
  %sub.i23.i2185 = sub nsw i32 %597, %add8.i2180
  store i32 %sub.i23.i2185, ptr %i_left.i355, align 8
  %cmp.i24.i2186 = icmp slt i32 %sub.i23.i2185, 33
  br i1 %cmp.i24.i2186, label %if.then.i25.i2187, label %bs_write_ue_big.exit2204

if.then.i25.i2187:                                ; preds = %bs_write.exit.i2179
  %sh_prom6.i26.i2188 = zext nneg i32 %sub.i23.i2185 to i64
  %shl7.i27.i2189 = shl i64 %or.i.i2184, %sh_prom6.i26.i2188
  %add.i.i.i28.i2190 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i2189)
  %conv8.i29.i2191 = trunc i64 %add.i.i.i28.i2190 to i32
  %599 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i29.i2191, ptr %599, align 4
  %600 = load i32, ptr %i_left.i355, align 8
  %add.i31.i2193 = add nsw i32 %600, 32
  store i32 %add.i31.i2193, ptr %i_left.i355, align 8
  %601 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i2194 = getelementptr inbounds i8, ptr %601, i64 4
  store ptr %add.ptr.i32.i2194, ptr %p.i, align 8
  %.pre2391 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit2204

bs_write_ue_big.exit2204:                         ; preds = %bs_write.exit.i2179, %if.then.i25.i2187
  %602 = phi i32 [ %sub.i23.i2185, %bs_write.exit.i2179 ], [ %add.i31.i2193, %if.then.i25.i2187 ]
  %603 = phi i64 [ %or.i.i2184, %bs_write.exit.i2179 ], [ %.pre2391, %if.then.i25.i2187 ]
  %i_num_reorder_frames = getelementptr inbounds i8, ptr %sps, i64 1288
  %604 = load i32, ptr %i_num_reorder_frames, align 4
  %inc.i2205 = add i32 %604, 1
  %cmp.i2206 = icmp sgt i32 %inc.i2205, 65535
  %shr.i2207 = lshr i32 %inc.i2205, 16
  %spec.select.i2208 = select i1 %cmp.i2206, i32 32, i32 0
  %spec.select18.i2209 = select i1 %cmp.i2206, i32 %shr.i2207, i32 %inc.i2205
  %cmp1.i2210 = icmp sgt i32 %spec.select18.i2209, 255
  %add.i2211 = or disjoint i32 %spec.select.i2208, 16
  %shr3.i2212 = lshr i32 %spec.select18.i2209, 8
  %size.1.i2213 = select i1 %cmp1.i2210, i32 %add.i2211, i32 %spec.select.i2208
  %tmp.1.i2214 = select i1 %cmp1.i2210, i32 %shr3.i2212, i32 %spec.select18.i2209
  %idxprom.i2215 = sext i32 %tmp.1.i2214 to i64
  %arrayidx.i2216 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i2215
  %605 = load i8, ptr %arrayidx.i2216, align 1
  %conv.i2217 = zext i8 %605 to i32
  %add5.i2218 = add nuw nsw i32 %size.1.i2213, %conv.i2217
  %shr6.i2219 = lshr i32 %add5.i2218, 1
  %sh_prom.i.i2221 = zext nneg i32 %shr6.i2219 to i64
  %shl.i.i2222 = shl i64 %603, %sh_prom.i.i2221
  store i64 %shl.i.i2222, ptr %cur_bits.i353, align 8
  %sub.i.i2224 = sub nsw i32 %602, %shr6.i2219
  store i32 %sub.i.i2224, ptr %i_left.i355, align 8
  %cmp.i.i2225 = icmp slt i32 %sub.i.i2224, 33
  br i1 %cmp.i.i2225, label %if.then.i.i2242, label %bs_write.exit.i2226

if.then.i.i2242:                                  ; preds = %bs_write_ue_big.exit2204
  %sh_prom6.i.i2243 = zext nneg i32 %sub.i.i2224 to i64
  %shl7.i.i2244 = shl i64 %shl.i.i2222, %sh_prom6.i.i2243
  %add.i.i.i.i2245 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i2244)
  %conv8.i.i2246 = trunc i64 %add.i.i.i.i2245 to i32
  %606 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i2246, ptr %606, align 4
  %607 = load i32, ptr %i_left.i355, align 8
  %add.i.i2248 = add nsw i32 %607, 32
  %608 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i2249 = getelementptr inbounds i8, ptr %608, i64 4
  store ptr %add.ptr.i.i2249, ptr %p.i, align 8
  %.pre.i2250 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i2226

bs_write.exit.i2226:                              ; preds = %if.then.i.i2242, %bs_write_ue_big.exit2204
  %609 = phi i32 [ %sub.i.i2224, %bs_write_ue_big.exit2204 ], [ %add.i.i2248, %if.then.i.i2242 ]
  %610 = phi i64 [ %shl.i.i2222, %bs_write_ue_big.exit2204 ], [ %.pre.i2250, %if.then.i.i2242 ]
  %add8.i2227 = add nuw nsw i32 %shr6.i2219, 1
  %sh_prom.i20.i2228 = zext nneg i32 %add8.i2227 to i64
  %shl.i21.i2229 = shl i64 %610, %sh_prom.i20.i2228
  %conv.i.i2230 = zext i32 %inc.i2205 to i64
  %or.i.i2231 = or i64 %shl.i21.i2229, %conv.i.i2230
  store i64 %or.i.i2231, ptr %cur_bits.i353, align 8
  %sub.i23.i2232 = sub nsw i32 %609, %add8.i2227
  store i32 %sub.i23.i2232, ptr %i_left.i355, align 8
  %cmp.i24.i2233 = icmp slt i32 %sub.i23.i2232, 33
  br i1 %cmp.i24.i2233, label %if.then.i25.i2234, label %bs_write_ue_big.exit2251

if.then.i25.i2234:                                ; preds = %bs_write.exit.i2226
  %sh_prom6.i26.i2235 = zext nneg i32 %sub.i23.i2232 to i64
  %shl7.i27.i2236 = shl i64 %or.i.i2231, %sh_prom6.i26.i2235
  %add.i.i.i28.i2237 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i2236)
  %conv8.i29.i2238 = trunc i64 %add.i.i.i28.i2237 to i32
  %611 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i29.i2238, ptr %611, align 4
  %612 = load i32, ptr %i_left.i355, align 8
  %add.i31.i2240 = add nsw i32 %612, 32
  store i32 %add.i31.i2240, ptr %i_left.i355, align 8
  %613 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i2241 = getelementptr inbounds i8, ptr %613, i64 4
  store ptr %add.ptr.i32.i2241, ptr %p.i, align 8
  %.pre2392 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write_ue_big.exit2251

bs_write_ue_big.exit2251:                         ; preds = %bs_write.exit.i2226, %if.then.i25.i2234
  %614 = phi i32 [ %sub.i23.i2232, %bs_write.exit.i2226 ], [ %add.i31.i2240, %if.then.i25.i2234 ]
  %615 = phi i64 [ %or.i.i2231, %bs_write.exit.i2226 ], [ %.pre2392, %if.then.i25.i2234 ]
  %i_max_dec_frame_buffering = getelementptr inbounds i8, ptr %sps, i64 1292
  %616 = load i32, ptr %i_max_dec_frame_buffering, align 4
  %inc.i2252 = add i32 %616, 1
  %cmp.i2253 = icmp sgt i32 %inc.i2252, 65535
  %shr.i2254 = lshr i32 %inc.i2252, 16
  %spec.select.i2255 = select i1 %cmp.i2253, i32 32, i32 0
  %spec.select18.i2256 = select i1 %cmp.i2253, i32 %shr.i2254, i32 %inc.i2252
  %cmp1.i2257 = icmp sgt i32 %spec.select18.i2256, 255
  %add.i2258 = or disjoint i32 %spec.select.i2255, 16
  %shr3.i2259 = lshr i32 %spec.select18.i2256, 8
  %size.1.i2260 = select i1 %cmp1.i2257, i32 %add.i2258, i32 %spec.select.i2255
  %tmp.1.i2261 = select i1 %cmp1.i2257, i32 %shr3.i2259, i32 %spec.select18.i2256
  %idxprom.i2262 = sext i32 %tmp.1.i2261 to i64
  %arrayidx.i2263 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i2262
  %617 = load i8, ptr %arrayidx.i2263, align 1
  %conv.i2264 = zext i8 %617 to i32
  %add5.i2265 = add nuw nsw i32 %size.1.i2260, %conv.i2264
  %shr6.i2266 = lshr i32 %add5.i2265, 1
  %sh_prom.i.i2268 = zext nneg i32 %shr6.i2266 to i64
  %shl.i.i2269 = shl i64 %615, %sh_prom.i.i2268
  store i64 %shl.i.i2269, ptr %cur_bits.i353, align 8
  %sub.i.i2271 = sub nsw i32 %614, %shr6.i2266
  store i32 %sub.i.i2271, ptr %i_left.i355, align 8
  %cmp.i.i2272 = icmp slt i32 %sub.i.i2271, 33
  br i1 %cmp.i.i2272, label %if.then.i.i2289, label %bs_write.exit.i2273

if.then.i.i2289:                                  ; preds = %bs_write_ue_big.exit2251
  %sh_prom6.i.i2290 = zext nneg i32 %sub.i.i2271 to i64
  %shl7.i.i2291 = shl i64 %shl.i.i2269, %sh_prom6.i.i2290
  %add.i.i.i.i2292 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i2291)
  %conv8.i.i2293 = trunc i64 %add.i.i.i.i2292 to i32
  %618 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i2293, ptr %618, align 4
  %619 = load i32, ptr %i_left.i355, align 8
  %add.i.i2295 = add nsw i32 %619, 32
  %620 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i2296 = getelementptr inbounds i8, ptr %620, i64 4
  store ptr %add.ptr.i.i2296, ptr %p.i, align 8
  %.pre.i2297 = load i64, ptr %cur_bits.i353, align 8
  br label %bs_write.exit.i2273

bs_write.exit.i2273:                              ; preds = %if.then.i.i2289, %bs_write_ue_big.exit2251
  %621 = phi i32 [ %sub.i.i2271, %bs_write_ue_big.exit2251 ], [ %add.i.i2295, %if.then.i.i2289 ]
  %622 = phi i64 [ %shl.i.i2269, %bs_write_ue_big.exit2251 ], [ %.pre.i2297, %if.then.i.i2289 ]
  %add8.i2274 = add nuw nsw i32 %shr6.i2266, 1
  %sh_prom.i20.i2275 = zext nneg i32 %add8.i2274 to i64
  %shl.i21.i2276 = shl i64 %622, %sh_prom.i20.i2275
  %conv.i.i2277 = zext i32 %inc.i2252 to i64
  %or.i.i2278 = or i64 %shl.i21.i2276, %conv.i.i2277
  store i64 %or.i.i2278, ptr %cur_bits.i353, align 8
  %sub.i23.i2279 = sub nsw i32 %621, %add8.i2274
  store i32 %sub.i23.i2279, ptr %i_left.i355, align 8
  %cmp.i24.i2280 = icmp slt i32 %sub.i23.i2279, 33
  br i1 %cmp.i24.i2280, label %if.then.i25.i2281, label %if.end179

if.then.i25.i2281:                                ; preds = %bs_write.exit.i2273
  %sh_prom6.i26.i2282 = zext nneg i32 %sub.i23.i2279 to i64
  %shl7.i27.i2283 = shl i64 %or.i.i2278, %sh_prom6.i26.i2282
  %add.i.i.i28.i2284 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i2283)
  %conv8.i29.i2285 = trunc i64 %add.i.i.i28.i2284 to i32
  %623 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i29.i2285, ptr %623, align 4
  %624 = load i32, ptr %i_left.i355, align 8
  %add.i31.i2287 = add nsw i32 %624, 32
  %625 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i2288 = getelementptr inbounds i8, ptr %625, i64 4
  store ptr %add.ptr.i32.i2288, ptr %p.i, align 8
  %.pre2393 = load i64, ptr %cur_bits.i353, align 8
  br label %if.end179

if.end179:                                        ; preds = %if.then.i25.i2281, %bs_write.exit.i2273, %bs_write1.exit2003, %bs_write.exit1318
  %626 = phi i32 [ %add.i31.i2287, %if.then.i25.i2281 ], [ %sub.i23.i2279, %bs_write.exit.i2273 ], [ %549, %bs_write1.exit2003 ], [ %300, %bs_write.exit1318 ]
  %627 = phi i64 [ %.pre2393, %if.then.i25.i2281 ], [ %or.i.i2278, %bs_write.exit.i2273 ], [ %.pre2394, %bs_write1.exit2003 ], [ %.pre2395, %bs_write.exit1318 ]
  %shl.i.i2300 = shl i64 %627, 1
  %or.i.i2301 = or disjoint i64 %shl.i.i2300, 1
  store i64 %or.i.i2301, ptr %cur_bits.i353, align 8
  %dec.i.i = add nsw i32 %626, -1
  %cmp.i.i2303 = icmp eq i32 %dec.i.i, 32
  br i1 %cmp.i.i2303, label %bs_write1.exit.thread.i, label %bs_write1.exit.i

bs_write1.exit.thread.i:                          ; preds = %if.end179
  %conv6.i.i = trunc i64 %or.i.i2301 to i32
  %add5.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i)
  %628 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i.i, ptr %628, align 4
  %629 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i2313 = getelementptr inbounds i8, ptr %629, i64 4
  store ptr %add.ptr.i.i2313, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  br label %bs_rbsp_trailing.exit

bs_write1.exit.i:                                 ; preds = %if.end179
  %and.i = and i32 %dec.i.i, 7
  %sh_prom.i.i2304 = zext nneg i32 %and.i to i64
  %shl.i4.i2305 = shl i64 %or.i.i2301, %sh_prom.i.i2304
  store i64 %shl.i4.i2305, ptr %cur_bits.i353, align 8
  %sub.i.i2306 = and i32 %dec.i.i, -8
  store i32 %sub.i.i2306, ptr %i_left.i355, align 8
  %cmp.i7.i = icmp slt i32 %sub.i.i2306, 33
  %.pre2396 = load ptr, ptr %p.i, align 8
  br i1 %cmp.i7.i, label %if.then.i8.i, label %bs_rbsp_trailing.exit

if.then.i8.i:                                     ; preds = %bs_write1.exit.i
  %sh_prom6.i.i2308 = zext nneg i32 %sub.i.i2306 to i64
  %630 = tail call i64 @llvm.bswap.i64(i64 %shl.i4.i2305)
  %add.i.i.i.i2309 = lshr i64 %630, %sh_prom6.i.i2308
  %conv8.i.i2310 = trunc i64 %add.i.i.i.i2309 to i32
  store i32 %conv8.i.i2310, ptr %.pre2396, align 4
  %631 = load i32, ptr %i_left.i355, align 8
  %add.i.i2311 = add nsw i32 %631, 32
  store i32 %add.i.i2311, ptr %i_left.i355, align 8
  %632 = load ptr, ptr %p.i, align 8
  %add.ptr.i10.i = getelementptr inbounds i8, ptr %632, i64 4
  store ptr %add.ptr.i10.i, ptr %p.i, align 8
  br label %bs_rbsp_trailing.exit

bs_rbsp_trailing.exit:                            ; preds = %bs_write1.exit.thread.i, %bs_write1.exit.i, %if.then.i8.i
  %633 = phi ptr [ %add.ptr.i.i2313, %bs_write1.exit.thread.i ], [ %.pre2396, %bs_write1.exit.i ], [ %add.ptr.i10.i, %if.then.i8.i ]
  %634 = phi i32 [ 64, %bs_write1.exit.thread.i ], [ %sub.i.i2306, %bs_write1.exit.i ], [ %add.i.i2311, %if.then.i8.i ]
  %635 = load i64, ptr %cur_bits.i353, align 8
  %and.i2316 = and i32 %634, 31
  %sh_prom.i2317 = zext nneg i32 %and.i2316 to i64
  %shl.i2318 = shl i64 %635, %sh_prom.i2317
  %conv.i2319 = trunc i64 %shl.i2318 to i32
  %add5.i.i2320 = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i2319)
  store i32 %add5.i.i2320, ptr %633, align 4
  %636 = load i32, ptr %i_left.i355, align 8
  %div.neg.i = sdiv i32 %636, -8
  %637 = load ptr, ptr %p.i, align 8
  %638 = sext i32 %div.neg.i to i64
  %639 = getelementptr i8, ptr %637, i64 %638
  %add.ptr.i2322 = getelementptr i8, ptr %639, i64 8
  store ptr %add.ptr.i2322, ptr %p.i, align 8
  store i32 64, ptr %i_left.i355, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_pps_init(ptr nocapture noundef writeonly %pps, i32 noundef %i_id, ptr noundef %param, ptr nocapture noundef readonly %sps) local_unnamed_addr #3 {
entry:
  store i32 %i_id, ptr %pps, align 8
  %0 = load i32, ptr %sps, align 4
  %i_sps_id = getelementptr inbounds i8, ptr %pps, i64 4
  store i32 %0, ptr %i_sps_id, align 4
  %b_cabac = getelementptr inbounds i8, ptr %param, i64 128
  %1 = load i32, ptr %b_cabac, align 8
  %b_cabac3 = getelementptr inbounds i8, ptr %pps, i64 8
  store i32 %1, ptr %b_cabac3, align 8
  %b_interlaced = getelementptr inbounds i8, ptr %param, i64 136
  %2 = load i32, ptr %b_interlaced, align 8
  %b_pic_order = getelementptr inbounds i8, ptr %pps, i64 12
  store i32 %2, ptr %b_pic_order, align 4
  %i_num_slice_groups = getelementptr inbounds i8, ptr %pps, i64 16
  store i32 1, ptr %i_num_slice_groups, align 8
  %i_frame_reference = getelementptr inbounds i8, ptr %param, i64 80
  %3 = load i32, ptr %i_frame_reference, align 8
  %i_num_ref_idx_l0_default_active = getelementptr inbounds i8, ptr %pps, i64 20
  store i32 %3, ptr %i_num_ref_idx_l0_default_active, align 4
  %i_num_ref_idx_l1_default_active = getelementptr inbounds i8, ptr %pps, i64 24
  store i32 1, ptr %i_num_ref_idx_l1_default_active, align 8
  %i_weighted_pred = getelementptr inbounds i8, ptr %param, i64 396
  %4 = load i32, ptr %i_weighted_pred, align 4
  %cmp = icmp sgt i32 %4, 0
  %conv = zext i1 %cmp to i32
  %b_weighted_pred = getelementptr inbounds i8, ptr %pps, i64 28
  store i32 %conv, ptr %b_weighted_pred, align 4
  %b_weighted_bipred = getelementptr inbounds i8, ptr %param, i64 400
  %5 = load i32, ptr %b_weighted_bipred, align 8
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %b_weighted_bipred5 = getelementptr inbounds i8, ptr %pps, i64 32
  store i32 %cond, ptr %b_weighted_bipred5, align 8
  %rc = getelementptr inbounds i8, ptr %param, i64 488
  %6 = load i32, ptr %rc, align 8
  %cmp6 = icmp eq i32 %6, 2
  br i1 %cmp6, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %i_qp_constant = getelementptr inbounds i8, ptr %param, i64 492
  %7 = load i32, ptr %i_qp_constant, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond9 = phi i32 [ %7, %cond.false ], [ 26, %entry ]
  %i_pic_init_qp = getelementptr inbounds i8, ptr %pps, i64 36
  store i32 %cond9, ptr %i_pic_init_qp, align 4
  %i_pic_init_qs = getelementptr inbounds i8, ptr %pps, i64 40
  store i32 26, ptr %i_pic_init_qs, align 8
  %i_chroma_qp_offset = getelementptr inbounds i8, ptr %param, i64 408
  %8 = load i32, ptr %i_chroma_qp_offset, align 8
  %i_chroma_qp_index_offset = getelementptr inbounds i8, ptr %pps, i64 44
  store i32 %8, ptr %i_chroma_qp_index_offset, align 4
  %b_deblocking_filter_control = getelementptr inbounds i8, ptr %pps, i64 48
  store i32 1, ptr %b_deblocking_filter_control, align 8
  %b_constrained_intra = getelementptr inbounds i8, ptr %param, i64 140
  %9 = load i32, ptr %b_constrained_intra, align 4
  %b_constrained_intra_pred = getelementptr inbounds i8, ptr %pps, i64 52
  store i32 %9, ptr %b_constrained_intra_pred, align 4
  %b_redundant_pic_cnt = getelementptr inbounds i8, ptr %pps, i64 56
  store i32 0, ptr %b_redundant_pic_cnt, align 8
  %b_transform_8x8 = getelementptr inbounds i8, ptr %param, i64 392
  %10 = load i32, ptr %b_transform_8x8, align 8
  %tobool12.not = icmp ne i32 %10, 0
  %cond13 = zext i1 %tobool12.not to i32
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %pps, i64 60
  store i32 %cond13, ptr %b_transform_8x8_mode, align 4
  %i_cqm_preset = getelementptr inbounds i8, ptr %param, i64 144
  %11 = load i32, ptr %i_cqm_preset, align 8
  %i_cqm_preset14 = getelementptr inbounds i8, ptr %pps, i64 64
  store i32 %11, ptr %i_cqm_preset14, align 8
  switch i32 %11, label %sw.epilog [
    i32 0, label %for.cond.preheader
    i32 1, label %sw.epilog.sink.split
    i32 2, label %for.cond.cleanup3.i233.7
  ]

for.cond.preheader:                               ; preds = %cond.end
  br label %sw.epilog.sink.split

for.cond.cleanup3.i233.7:                         ; preds = %cond.end
  %cqm_4iy = getelementptr inbounds i8, ptr %param, i64 160
  %invariant.gep.i.1 = getelementptr inbounds i8, ptr %param, i64 164
  %invariant.gep52.i.1 = getelementptr inbounds i8, ptr %param, i64 161
  %12 = load i8, ptr %invariant.gep.i.1, align 1
  %13 = load i8, ptr %invariant.gep52.i.1, align 1
  store i8 %13, ptr %invariant.gep.i.1, align 1
  store i8 %12, ptr %invariant.gep52.i.1, align 1
  %invariant.gep.i.2 = getelementptr inbounds i8, ptr %param, i64 168
  %invariant.gep52.i.2 = getelementptr inbounds i8, ptr %param, i64 162
  %14 = load i8, ptr %invariant.gep.i.2, align 1
  %15 = load i8, ptr %invariant.gep52.i.2, align 1
  store i8 %15, ptr %invariant.gep.i.2, align 1
  store i8 %14, ptr %invariant.gep52.i.2, align 1
  %gep.i.2.1 = getelementptr inbounds i8, ptr %param, i64 169
  %16 = load i8, ptr %gep.i.2.1, align 1
  %gep53.i.2.1 = getelementptr inbounds i8, ptr %param, i64 166
  %17 = load i8, ptr %gep53.i.2.1, align 1
  store i8 %17, ptr %gep.i.2.1, align 1
  store i8 %16, ptr %gep53.i.2.1, align 1
  %invariant.gep.i.3 = getelementptr inbounds i8, ptr %param, i64 172
  %invariant.gep52.i.3 = getelementptr inbounds i8, ptr %param, i64 163
  %18 = load i8, ptr %invariant.gep.i.3, align 1
  %19 = load i8, ptr %invariant.gep52.i.3, align 1
  store i8 %19, ptr %invariant.gep.i.3, align 1
  store i8 %18, ptr %invariant.gep52.i.3, align 1
  %gep.i.3.1 = getelementptr inbounds i8, ptr %param, i64 173
  %20 = load i8, ptr %gep.i.3.1, align 1
  %gep53.i.3.1 = getelementptr inbounds i8, ptr %param, i64 167
  %21 = load i8, ptr %gep53.i.3.1, align 1
  store i8 %21, ptr %gep.i.3.1, align 1
  store i8 %20, ptr %gep53.i.3.1, align 1
  %gep.i.3.2 = getelementptr inbounds i8, ptr %param, i64 174
  %22 = load i8, ptr %gep.i.3.2, align 1
  %gep53.i.3.2 = getelementptr inbounds i8, ptr %param, i64 171
  %23 = load i8, ptr %gep53.i.3.2, align 1
  store i8 %23, ptr %gep.i.3.2, align 1
  store i8 %22, ptr %gep53.i.3.2, align 1
  %cqm_4ic = getelementptr inbounds i8, ptr %param, i64 176
  %invariant.gep.i161.1 = getelementptr inbounds i8, ptr %param, i64 180
  %invariant.gep52.i162.1 = getelementptr inbounds i8, ptr %param, i64 177
  %24 = load i8, ptr %invariant.gep.i161.1, align 1
  %25 = load i8, ptr %invariant.gep52.i162.1, align 1
  store i8 %25, ptr %invariant.gep.i161.1, align 1
  store i8 %24, ptr %invariant.gep52.i162.1, align 1
  %invariant.gep.i161.2 = getelementptr inbounds i8, ptr %param, i64 184
  %invariant.gep52.i162.2 = getelementptr inbounds i8, ptr %param, i64 178
  %26 = load i8, ptr %invariant.gep.i161.2, align 1
  %27 = load i8, ptr %invariant.gep52.i162.2, align 1
  store i8 %27, ptr %invariant.gep.i161.2, align 1
  store i8 %26, ptr %invariant.gep52.i162.2, align 1
  %gep.i165.2.1 = getelementptr inbounds i8, ptr %param, i64 185
  %28 = load i8, ptr %gep.i165.2.1, align 1
  %gep53.i166.2.1 = getelementptr inbounds i8, ptr %param, i64 182
  %29 = load i8, ptr %gep53.i166.2.1, align 1
  store i8 %29, ptr %gep.i165.2.1, align 1
  store i8 %28, ptr %gep53.i166.2.1, align 1
  %invariant.gep.i161.3 = getelementptr inbounds i8, ptr %param, i64 188
  %invariant.gep52.i162.3 = getelementptr inbounds i8, ptr %param, i64 179
  %30 = load i8, ptr %invariant.gep.i161.3, align 1
  %31 = load i8, ptr %invariant.gep52.i162.3, align 1
  store i8 %31, ptr %invariant.gep.i161.3, align 1
  store i8 %30, ptr %invariant.gep52.i162.3, align 1
  %gep.i165.3.1 = getelementptr inbounds i8, ptr %param, i64 189
  %32 = load i8, ptr %gep.i165.3.1, align 1
  %gep53.i166.3.1 = getelementptr inbounds i8, ptr %param, i64 183
  %33 = load i8, ptr %gep53.i166.3.1, align 1
  store i8 %33, ptr %gep.i165.3.1, align 1
  store i8 %32, ptr %gep53.i166.3.1, align 1
  %gep.i165.3.2 = getelementptr inbounds i8, ptr %param, i64 190
  %34 = load i8, ptr %gep.i165.3.2, align 1
  %gep53.i166.3.2 = getelementptr inbounds i8, ptr %param, i64 187
  %35 = load i8, ptr %gep53.i166.3.2, align 1
  store i8 %35, ptr %gep.i165.3.2, align 1
  store i8 %34, ptr %gep53.i166.3.2, align 1
  %cqm_4py = getelementptr inbounds i8, ptr %param, i64 192
  %invariant.gep.i177.1 = getelementptr inbounds i8, ptr %param, i64 196
  %invariant.gep52.i178.1 = getelementptr inbounds i8, ptr %param, i64 193
  %36 = load i8, ptr %invariant.gep.i177.1, align 1
  %37 = load i8, ptr %invariant.gep52.i178.1, align 1
  store i8 %37, ptr %invariant.gep.i177.1, align 1
  store i8 %36, ptr %invariant.gep52.i178.1, align 1
  %invariant.gep.i177.2 = getelementptr inbounds i8, ptr %param, i64 200
  %invariant.gep52.i178.2 = getelementptr inbounds i8, ptr %param, i64 194
  %38 = load i8, ptr %invariant.gep.i177.2, align 1
  %39 = load i8, ptr %invariant.gep52.i178.2, align 1
  store i8 %39, ptr %invariant.gep.i177.2, align 1
  store i8 %38, ptr %invariant.gep52.i178.2, align 1
  %gep.i181.2.1 = getelementptr inbounds i8, ptr %param, i64 201
  %40 = load i8, ptr %gep.i181.2.1, align 1
  %gep53.i182.2.1 = getelementptr inbounds i8, ptr %param, i64 198
  %41 = load i8, ptr %gep53.i182.2.1, align 1
  store i8 %41, ptr %gep.i181.2.1, align 1
  store i8 %40, ptr %gep53.i182.2.1, align 1
  %invariant.gep.i177.3 = getelementptr inbounds i8, ptr %param, i64 204
  %invariant.gep52.i178.3 = getelementptr inbounds i8, ptr %param, i64 195
  %42 = load i8, ptr %invariant.gep.i177.3, align 1
  %43 = load i8, ptr %invariant.gep52.i178.3, align 1
  store i8 %43, ptr %invariant.gep.i177.3, align 1
  store i8 %42, ptr %invariant.gep52.i178.3, align 1
  %gep.i181.3.1 = getelementptr inbounds i8, ptr %param, i64 205
  %44 = load i8, ptr %gep.i181.3.1, align 1
  %gep53.i182.3.1 = getelementptr inbounds i8, ptr %param, i64 199
  %45 = load i8, ptr %gep53.i182.3.1, align 1
  store i8 %45, ptr %gep.i181.3.1, align 1
  store i8 %44, ptr %gep53.i182.3.1, align 1
  %gep.i181.3.2 = getelementptr inbounds i8, ptr %param, i64 206
  %46 = load i8, ptr %gep.i181.3.2, align 1
  %gep53.i182.3.2 = getelementptr inbounds i8, ptr %param, i64 203
  %47 = load i8, ptr %gep53.i182.3.2, align 1
  store i8 %47, ptr %gep.i181.3.2, align 1
  store i8 %46, ptr %gep53.i182.3.2, align 1
  %cqm_4pc = getelementptr inbounds i8, ptr %param, i64 208
  %invariant.gep.i193.1 = getelementptr inbounds i8, ptr %param, i64 212
  %invariant.gep52.i194.1 = getelementptr inbounds i8, ptr %param, i64 209
  %48 = load i8, ptr %invariant.gep.i193.1, align 1
  %49 = load i8, ptr %invariant.gep52.i194.1, align 1
  store i8 %49, ptr %invariant.gep.i193.1, align 1
  store i8 %48, ptr %invariant.gep52.i194.1, align 1
  %invariant.gep.i193.2 = getelementptr inbounds i8, ptr %param, i64 216
  %invariant.gep52.i194.2 = getelementptr inbounds i8, ptr %param, i64 210
  %50 = load i8, ptr %invariant.gep.i193.2, align 1
  %51 = load i8, ptr %invariant.gep52.i194.2, align 1
  store i8 %51, ptr %invariant.gep.i193.2, align 1
  store i8 %50, ptr %invariant.gep52.i194.2, align 1
  %gep.i197.2.1 = getelementptr inbounds i8, ptr %param, i64 217
  %52 = load i8, ptr %gep.i197.2.1, align 1
  %gep53.i198.2.1 = getelementptr inbounds i8, ptr %param, i64 214
  %53 = load i8, ptr %gep53.i198.2.1, align 1
  store i8 %53, ptr %gep.i197.2.1, align 1
  store i8 %52, ptr %gep53.i198.2.1, align 1
  %invariant.gep.i193.3 = getelementptr inbounds i8, ptr %param, i64 220
  %invariant.gep52.i194.3 = getelementptr inbounds i8, ptr %param, i64 211
  %54 = load i8, ptr %invariant.gep.i193.3, align 1
  %55 = load i8, ptr %invariant.gep52.i194.3, align 1
  store i8 %55, ptr %invariant.gep.i193.3, align 1
  store i8 %54, ptr %invariant.gep52.i194.3, align 1
  %gep.i197.3.1 = getelementptr inbounds i8, ptr %param, i64 221
  %56 = load i8, ptr %gep.i197.3.1, align 1
  %gep53.i198.3.1 = getelementptr inbounds i8, ptr %param, i64 215
  %57 = load i8, ptr %gep53.i198.3.1, align 1
  store i8 %57, ptr %gep.i197.3.1, align 1
  store i8 %56, ptr %gep53.i198.3.1, align 1
  %gep.i197.3.2 = getelementptr inbounds i8, ptr %param, i64 222
  %58 = load i8, ptr %gep.i197.3.2, align 1
  %gep53.i198.3.2 = getelementptr inbounds i8, ptr %param, i64 219
  %59 = load i8, ptr %gep53.i198.3.2, align 1
  store i8 %59, ptr %gep.i197.3.2, align 1
  store i8 %58, ptr %gep53.i198.3.2, align 1
  %cqm_8iy = getelementptr inbounds i8, ptr %param, i64 224
  %invariant.gep.i209.1 = getelementptr inbounds i8, ptr %param, i64 232
  %invariant.gep52.i210.1 = getelementptr inbounds i8, ptr %param, i64 225
  %60 = load i8, ptr %invariant.gep.i209.1, align 1
  %61 = load i8, ptr %invariant.gep52.i210.1, align 1
  store i8 %61, ptr %invariant.gep.i209.1, align 1
  store i8 %60, ptr %invariant.gep52.i210.1, align 1
  %invariant.gep.i209.2 = getelementptr inbounds i8, ptr %param, i64 240
  %invariant.gep52.i210.2 = getelementptr inbounds i8, ptr %param, i64 226
  %62 = load i8, ptr %invariant.gep.i209.2, align 1
  %63 = load i8, ptr %invariant.gep52.i210.2, align 1
  store i8 %63, ptr %invariant.gep.i209.2, align 1
  store i8 %62, ptr %invariant.gep52.i210.2, align 1
  %gep.i213.2.1 = getelementptr inbounds i8, ptr %param, i64 241
  %64 = load i8, ptr %gep.i213.2.1, align 1
  %gep53.i214.2.1 = getelementptr inbounds i8, ptr %param, i64 234
  %65 = load i8, ptr %gep53.i214.2.1, align 1
  store i8 %65, ptr %gep.i213.2.1, align 1
  store i8 %64, ptr %gep53.i214.2.1, align 1
  %invariant.gep.i209.3 = getelementptr inbounds i8, ptr %param, i64 248
  %invariant.gep52.i210.3 = getelementptr inbounds i8, ptr %param, i64 227
  %66 = load i8, ptr %invariant.gep.i209.3, align 1
  %67 = load i8, ptr %invariant.gep52.i210.3, align 1
  store i8 %67, ptr %invariant.gep.i209.3, align 1
  store i8 %66, ptr %invariant.gep52.i210.3, align 1
  %gep.i213.3.1 = getelementptr inbounds i8, ptr %param, i64 249
  %68 = load i8, ptr %gep.i213.3.1, align 1
  %gep53.i214.3.1 = getelementptr inbounds i8, ptr %param, i64 235
  %69 = load i8, ptr %gep53.i214.3.1, align 1
  store i8 %69, ptr %gep.i213.3.1, align 1
  store i8 %68, ptr %gep53.i214.3.1, align 1
  %gep.i213.3.2 = getelementptr inbounds i8, ptr %param, i64 250
  %70 = load i8, ptr %gep.i213.3.2, align 1
  %gep53.i214.3.2 = getelementptr inbounds i8, ptr %param, i64 243
  %71 = load i8, ptr %gep53.i214.3.2, align 1
  store i8 %71, ptr %gep.i213.3.2, align 1
  store i8 %70, ptr %gep53.i214.3.2, align 1
  %invariant.gep.i209.4 = getelementptr inbounds i8, ptr %param, i64 256
  %invariant.gep52.i210.4 = getelementptr inbounds i8, ptr %param, i64 228
  %72 = load i8, ptr %invariant.gep.i209.4, align 1
  %73 = load i8, ptr %invariant.gep52.i210.4, align 1
  store i8 %73, ptr %invariant.gep.i209.4, align 1
  store i8 %72, ptr %invariant.gep52.i210.4, align 1
  %gep.i213.4.1 = getelementptr inbounds i8, ptr %param, i64 257
  %74 = load i8, ptr %gep.i213.4.1, align 1
  %gep53.i214.4.1 = getelementptr inbounds i8, ptr %param, i64 236
  %75 = load i8, ptr %gep53.i214.4.1, align 1
  store i8 %75, ptr %gep.i213.4.1, align 1
  store i8 %74, ptr %gep53.i214.4.1, align 1
  %gep.i213.4.2 = getelementptr inbounds i8, ptr %param, i64 258
  %76 = load i8, ptr %gep.i213.4.2, align 1
  %gep53.i214.4.2 = getelementptr inbounds i8, ptr %param, i64 244
  %77 = load i8, ptr %gep53.i214.4.2, align 1
  store i8 %77, ptr %gep.i213.4.2, align 1
  store i8 %76, ptr %gep53.i214.4.2, align 1
  %gep.i213.4.3 = getelementptr inbounds i8, ptr %param, i64 259
  %78 = load i8, ptr %gep.i213.4.3, align 1
  %gep53.i214.4.3 = getelementptr inbounds i8, ptr %param, i64 252
  %79 = load i8, ptr %gep53.i214.4.3, align 1
  store i8 %79, ptr %gep.i213.4.3, align 1
  store i8 %78, ptr %gep53.i214.4.3, align 1
  %invariant.gep.i209.5 = getelementptr inbounds i8, ptr %param, i64 264
  %invariant.gep52.i210.5 = getelementptr inbounds i8, ptr %param, i64 229
  %80 = load i8, ptr %invariant.gep.i209.5, align 1
  %81 = load i8, ptr %invariant.gep52.i210.5, align 1
  store i8 %81, ptr %invariant.gep.i209.5, align 1
  store i8 %80, ptr %invariant.gep52.i210.5, align 1
  %gep.i213.5.1 = getelementptr inbounds i8, ptr %param, i64 265
  %82 = load i8, ptr %gep.i213.5.1, align 1
  %gep53.i214.5.1 = getelementptr inbounds i8, ptr %param, i64 237
  %83 = load i8, ptr %gep53.i214.5.1, align 1
  store i8 %83, ptr %gep.i213.5.1, align 1
  store i8 %82, ptr %gep53.i214.5.1, align 1
  %gep.i213.5.2 = getelementptr inbounds i8, ptr %param, i64 266
  %84 = load i8, ptr %gep.i213.5.2, align 1
  %gep53.i214.5.2 = getelementptr inbounds i8, ptr %param, i64 245
  %85 = load i8, ptr %gep53.i214.5.2, align 1
  store i8 %85, ptr %gep.i213.5.2, align 1
  store i8 %84, ptr %gep53.i214.5.2, align 1
  %gep.i213.5.3 = getelementptr inbounds i8, ptr %param, i64 267
  %86 = load i8, ptr %gep.i213.5.3, align 1
  %gep53.i214.5.3 = getelementptr inbounds i8, ptr %param, i64 253
  %87 = load i8, ptr %gep53.i214.5.3, align 1
  store i8 %87, ptr %gep.i213.5.3, align 1
  store i8 %86, ptr %gep53.i214.5.3, align 1
  %gep.i213.5.4 = getelementptr inbounds i8, ptr %param, i64 268
  %88 = load i8, ptr %gep.i213.5.4, align 1
  %gep53.i214.5.4 = getelementptr inbounds i8, ptr %param, i64 261
  %89 = load i8, ptr %gep53.i214.5.4, align 1
  store i8 %89, ptr %gep.i213.5.4, align 1
  store i8 %88, ptr %gep53.i214.5.4, align 1
  %invariant.gep.i209.6 = getelementptr inbounds i8, ptr %param, i64 272
  %invariant.gep52.i210.6 = getelementptr inbounds i8, ptr %param, i64 230
  %90 = load i8, ptr %invariant.gep.i209.6, align 1
  %91 = load i8, ptr %invariant.gep52.i210.6, align 1
  store i8 %91, ptr %invariant.gep.i209.6, align 1
  store i8 %90, ptr %invariant.gep52.i210.6, align 1
  %gep.i213.6.1 = getelementptr inbounds i8, ptr %param, i64 273
  %92 = load i8, ptr %gep.i213.6.1, align 1
  %gep53.i214.6.1 = getelementptr inbounds i8, ptr %param, i64 238
  %93 = load i8, ptr %gep53.i214.6.1, align 1
  store i8 %93, ptr %gep.i213.6.1, align 1
  store i8 %92, ptr %gep53.i214.6.1, align 1
  %gep.i213.6.2 = getelementptr inbounds i8, ptr %param, i64 274
  %94 = load i8, ptr %gep.i213.6.2, align 1
  %gep53.i214.6.2 = getelementptr inbounds i8, ptr %param, i64 246
  %95 = load i8, ptr %gep53.i214.6.2, align 1
  store i8 %95, ptr %gep.i213.6.2, align 1
  store i8 %94, ptr %gep53.i214.6.2, align 1
  %gep.i213.6.3 = getelementptr inbounds i8, ptr %param, i64 275
  %96 = load i8, ptr %gep.i213.6.3, align 1
  %gep53.i214.6.3 = getelementptr inbounds i8, ptr %param, i64 254
  %97 = load i8, ptr %gep53.i214.6.3, align 1
  store i8 %97, ptr %gep.i213.6.3, align 1
  store i8 %96, ptr %gep53.i214.6.3, align 1
  %gep.i213.6.4 = getelementptr inbounds i8, ptr %param, i64 276
  %98 = load i8, ptr %gep.i213.6.4, align 1
  %gep53.i214.6.4 = getelementptr inbounds i8, ptr %param, i64 262
  %99 = load i8, ptr %gep53.i214.6.4, align 1
  store i8 %99, ptr %gep.i213.6.4, align 1
  store i8 %98, ptr %gep53.i214.6.4, align 1
  %gep.i213.6.5 = getelementptr inbounds i8, ptr %param, i64 277
  %100 = load i8, ptr %gep.i213.6.5, align 1
  %gep53.i214.6.5 = getelementptr inbounds i8, ptr %param, i64 270
  %101 = load i8, ptr %gep53.i214.6.5, align 1
  store i8 %101, ptr %gep.i213.6.5, align 1
  store i8 %100, ptr %gep53.i214.6.5, align 1
  %invariant.gep.i209.7 = getelementptr inbounds i8, ptr %param, i64 280
  %invariant.gep52.i210.7 = getelementptr inbounds i8, ptr %param, i64 231
  %102 = load i8, ptr %invariant.gep.i209.7, align 1
  %103 = load i8, ptr %invariant.gep52.i210.7, align 1
  store i8 %103, ptr %invariant.gep.i209.7, align 1
  store i8 %102, ptr %invariant.gep52.i210.7, align 1
  %gep.i213.7.1 = getelementptr inbounds i8, ptr %param, i64 281
  %104 = load i8, ptr %gep.i213.7.1, align 1
  %gep53.i214.7.1 = getelementptr inbounds i8, ptr %param, i64 239
  %105 = load i8, ptr %gep53.i214.7.1, align 1
  store i8 %105, ptr %gep.i213.7.1, align 1
  store i8 %104, ptr %gep53.i214.7.1, align 1
  %gep.i213.7.2 = getelementptr inbounds i8, ptr %param, i64 282
  %106 = load i8, ptr %gep.i213.7.2, align 1
  %gep53.i214.7.2 = getelementptr inbounds i8, ptr %param, i64 247
  %107 = load i8, ptr %gep53.i214.7.2, align 1
  store i8 %107, ptr %gep.i213.7.2, align 1
  store i8 %106, ptr %gep53.i214.7.2, align 1
  %gep.i213.7.3 = getelementptr inbounds i8, ptr %param, i64 283
  %108 = load i8, ptr %gep.i213.7.3, align 1
  %gep53.i214.7.3 = getelementptr inbounds i8, ptr %param, i64 255
  %109 = load i8, ptr %gep53.i214.7.3, align 1
  store i8 %109, ptr %gep.i213.7.3, align 1
  store i8 %108, ptr %gep53.i214.7.3, align 1
  %gep.i213.7.4 = getelementptr inbounds i8, ptr %param, i64 284
  %110 = load i8, ptr %gep.i213.7.4, align 1
  %gep53.i214.7.4 = getelementptr inbounds i8, ptr %param, i64 263
  %111 = load i8, ptr %gep53.i214.7.4, align 1
  store i8 %111, ptr %gep.i213.7.4, align 1
  store i8 %110, ptr %gep53.i214.7.4, align 1
  %gep.i213.7.5 = getelementptr inbounds i8, ptr %param, i64 285
  %112 = load i8, ptr %gep.i213.7.5, align 1
  %gep53.i214.7.5 = getelementptr inbounds i8, ptr %param, i64 271
  %113 = load i8, ptr %gep53.i214.7.5, align 1
  store i8 %113, ptr %gep.i213.7.5, align 1
  store i8 %112, ptr %gep53.i214.7.5, align 1
  %gep.i213.7.6 = getelementptr inbounds i8, ptr %param, i64 286
  %114 = load i8, ptr %gep.i213.7.6, align 1
  %gep53.i214.7.6 = getelementptr inbounds i8, ptr %param, i64 279
  %115 = load i8, ptr %gep53.i214.7.6, align 1
  store i8 %115, ptr %gep.i213.7.6, align 1
  store i8 %114, ptr %gep53.i214.7.6, align 1
  %cqm_8py = getelementptr inbounds i8, ptr %param, i64 288
  %invariant.gep.i225.1 = getelementptr inbounds i8, ptr %param, i64 296
  %invariant.gep52.i226.1 = getelementptr inbounds i8, ptr %param, i64 289
  %116 = load i8, ptr %invariant.gep.i225.1, align 1
  %117 = load i8, ptr %invariant.gep52.i226.1, align 1
  store i8 %117, ptr %invariant.gep.i225.1, align 1
  store i8 %116, ptr %invariant.gep52.i226.1, align 1
  %invariant.gep.i225.2 = getelementptr inbounds i8, ptr %param, i64 304
  %invariant.gep52.i226.2 = getelementptr inbounds i8, ptr %param, i64 290
  %118 = load i8, ptr %invariant.gep.i225.2, align 1
  %119 = load i8, ptr %invariant.gep52.i226.2, align 1
  store i8 %119, ptr %invariant.gep.i225.2, align 1
  store i8 %118, ptr %invariant.gep52.i226.2, align 1
  %gep.i229.2.1 = getelementptr inbounds i8, ptr %param, i64 305
  %120 = load i8, ptr %gep.i229.2.1, align 1
  %gep53.i230.2.1 = getelementptr inbounds i8, ptr %param, i64 298
  %121 = load i8, ptr %gep53.i230.2.1, align 1
  store i8 %121, ptr %gep.i229.2.1, align 1
  store i8 %120, ptr %gep53.i230.2.1, align 1
  %invariant.gep.i225.3 = getelementptr inbounds i8, ptr %param, i64 312
  %invariant.gep52.i226.3 = getelementptr inbounds i8, ptr %param, i64 291
  %122 = load i8, ptr %invariant.gep.i225.3, align 1
  %123 = load i8, ptr %invariant.gep52.i226.3, align 1
  store i8 %123, ptr %invariant.gep.i225.3, align 1
  store i8 %122, ptr %invariant.gep52.i226.3, align 1
  %gep.i229.3.1 = getelementptr inbounds i8, ptr %param, i64 313
  %124 = load i8, ptr %gep.i229.3.1, align 1
  %gep53.i230.3.1 = getelementptr inbounds i8, ptr %param, i64 299
  %125 = load i8, ptr %gep53.i230.3.1, align 1
  store i8 %125, ptr %gep.i229.3.1, align 1
  store i8 %124, ptr %gep53.i230.3.1, align 1
  %gep.i229.3.2 = getelementptr inbounds i8, ptr %param, i64 314
  %126 = load i8, ptr %gep.i229.3.2, align 1
  %gep53.i230.3.2 = getelementptr inbounds i8, ptr %param, i64 307
  %127 = load i8, ptr %gep53.i230.3.2, align 1
  store i8 %127, ptr %gep.i229.3.2, align 1
  store i8 %126, ptr %gep53.i230.3.2, align 1
  %invariant.gep.i225.4 = getelementptr inbounds i8, ptr %param, i64 320
  %invariant.gep52.i226.4 = getelementptr inbounds i8, ptr %param, i64 292
  %128 = load i8, ptr %invariant.gep.i225.4, align 1
  %129 = load i8, ptr %invariant.gep52.i226.4, align 1
  store i8 %129, ptr %invariant.gep.i225.4, align 1
  store i8 %128, ptr %invariant.gep52.i226.4, align 1
  %gep.i229.4.1 = getelementptr inbounds i8, ptr %param, i64 321
  %130 = load i8, ptr %gep.i229.4.1, align 1
  %gep53.i230.4.1 = getelementptr inbounds i8, ptr %param, i64 300
  %131 = load i8, ptr %gep53.i230.4.1, align 1
  store i8 %131, ptr %gep.i229.4.1, align 1
  store i8 %130, ptr %gep53.i230.4.1, align 1
  %gep.i229.4.2 = getelementptr inbounds i8, ptr %param, i64 322
  %132 = load i8, ptr %gep.i229.4.2, align 1
  %gep53.i230.4.2 = getelementptr inbounds i8, ptr %param, i64 308
  %133 = load i8, ptr %gep53.i230.4.2, align 1
  store i8 %133, ptr %gep.i229.4.2, align 1
  store i8 %132, ptr %gep53.i230.4.2, align 1
  %gep.i229.4.3 = getelementptr inbounds i8, ptr %param, i64 323
  %134 = load i8, ptr %gep.i229.4.3, align 1
  %gep53.i230.4.3 = getelementptr inbounds i8, ptr %param, i64 316
  %135 = load i8, ptr %gep53.i230.4.3, align 1
  store i8 %135, ptr %gep.i229.4.3, align 1
  store i8 %134, ptr %gep53.i230.4.3, align 1
  %invariant.gep.i225.5 = getelementptr inbounds i8, ptr %param, i64 328
  %invariant.gep52.i226.5 = getelementptr inbounds i8, ptr %param, i64 293
  %136 = load i8, ptr %invariant.gep.i225.5, align 1
  %137 = load i8, ptr %invariant.gep52.i226.5, align 1
  store i8 %137, ptr %invariant.gep.i225.5, align 1
  store i8 %136, ptr %invariant.gep52.i226.5, align 1
  %gep.i229.5.1 = getelementptr inbounds i8, ptr %param, i64 329
  %138 = load i8, ptr %gep.i229.5.1, align 1
  %gep53.i230.5.1 = getelementptr inbounds i8, ptr %param, i64 301
  %139 = load i8, ptr %gep53.i230.5.1, align 1
  store i8 %139, ptr %gep.i229.5.1, align 1
  store i8 %138, ptr %gep53.i230.5.1, align 1
  %gep.i229.5.2 = getelementptr inbounds i8, ptr %param, i64 330
  %140 = load i8, ptr %gep.i229.5.2, align 1
  %gep53.i230.5.2 = getelementptr inbounds i8, ptr %param, i64 309
  %141 = load i8, ptr %gep53.i230.5.2, align 1
  store i8 %141, ptr %gep.i229.5.2, align 1
  store i8 %140, ptr %gep53.i230.5.2, align 1
  %gep.i229.5.3 = getelementptr inbounds i8, ptr %param, i64 331
  %142 = load i8, ptr %gep.i229.5.3, align 1
  %gep53.i230.5.3 = getelementptr inbounds i8, ptr %param, i64 317
  %143 = load i8, ptr %gep53.i230.5.3, align 1
  store i8 %143, ptr %gep.i229.5.3, align 1
  store i8 %142, ptr %gep53.i230.5.3, align 1
  %gep.i229.5.4 = getelementptr inbounds i8, ptr %param, i64 332
  %144 = load i8, ptr %gep.i229.5.4, align 1
  %gep53.i230.5.4 = getelementptr inbounds i8, ptr %param, i64 325
  %145 = load i8, ptr %gep53.i230.5.4, align 1
  store i8 %145, ptr %gep.i229.5.4, align 1
  store i8 %144, ptr %gep53.i230.5.4, align 1
  %invariant.gep.i225.6 = getelementptr inbounds i8, ptr %param, i64 336
  %invariant.gep52.i226.6 = getelementptr inbounds i8, ptr %param, i64 294
  %146 = load i8, ptr %invariant.gep.i225.6, align 1
  %147 = load i8, ptr %invariant.gep52.i226.6, align 1
  store i8 %147, ptr %invariant.gep.i225.6, align 1
  store i8 %146, ptr %invariant.gep52.i226.6, align 1
  %gep.i229.6.1 = getelementptr inbounds i8, ptr %param, i64 337
  %148 = load i8, ptr %gep.i229.6.1, align 1
  %gep53.i230.6.1 = getelementptr inbounds i8, ptr %param, i64 302
  %149 = load i8, ptr %gep53.i230.6.1, align 1
  store i8 %149, ptr %gep.i229.6.1, align 1
  store i8 %148, ptr %gep53.i230.6.1, align 1
  %gep.i229.6.2 = getelementptr inbounds i8, ptr %param, i64 338
  %150 = load i8, ptr %gep.i229.6.2, align 1
  %gep53.i230.6.2 = getelementptr inbounds i8, ptr %param, i64 310
  %151 = load i8, ptr %gep53.i230.6.2, align 1
  store i8 %151, ptr %gep.i229.6.2, align 1
  store i8 %150, ptr %gep53.i230.6.2, align 1
  %gep.i229.6.3 = getelementptr inbounds i8, ptr %param, i64 339
  %152 = load i8, ptr %gep.i229.6.3, align 1
  %gep53.i230.6.3 = getelementptr inbounds i8, ptr %param, i64 318
  %153 = load i8, ptr %gep53.i230.6.3, align 1
  store i8 %153, ptr %gep.i229.6.3, align 1
  store i8 %152, ptr %gep53.i230.6.3, align 1
  %gep.i229.6.4 = getelementptr inbounds i8, ptr %param, i64 340
  %154 = load i8, ptr %gep.i229.6.4, align 1
  %gep53.i230.6.4 = getelementptr inbounds i8, ptr %param, i64 326
  %155 = load i8, ptr %gep53.i230.6.4, align 1
  store i8 %155, ptr %gep.i229.6.4, align 1
  store i8 %154, ptr %gep53.i230.6.4, align 1
  %gep.i229.6.5 = getelementptr inbounds i8, ptr %param, i64 341
  %156 = load i8, ptr %gep.i229.6.5, align 1
  %gep53.i230.6.5 = getelementptr inbounds i8, ptr %param, i64 334
  %157 = load i8, ptr %gep53.i230.6.5, align 1
  store i8 %157, ptr %gep.i229.6.5, align 1
  store i8 %156, ptr %gep53.i230.6.5, align 1
  %invariant.gep.i225.7 = getelementptr inbounds i8, ptr %param, i64 344
  %invariant.gep52.i226.7 = getelementptr inbounds i8, ptr %param, i64 295
  %158 = load i8, ptr %invariant.gep.i225.7, align 1
  %159 = load i8, ptr %invariant.gep52.i226.7, align 1
  store i8 %159, ptr %invariant.gep.i225.7, align 1
  store i8 %158, ptr %invariant.gep52.i226.7, align 1
  %gep.i229.7.1 = getelementptr inbounds i8, ptr %param, i64 345
  %160 = load i8, ptr %gep.i229.7.1, align 1
  %gep53.i230.7.1 = getelementptr inbounds i8, ptr %param, i64 303
  %161 = load i8, ptr %gep53.i230.7.1, align 1
  store i8 %161, ptr %gep.i229.7.1, align 1
  store i8 %160, ptr %gep53.i230.7.1, align 1
  %gep.i229.7.2 = getelementptr inbounds i8, ptr %param, i64 346
  %162 = load i8, ptr %gep.i229.7.2, align 1
  %gep53.i230.7.2 = getelementptr inbounds i8, ptr %param, i64 311
  %163 = load i8, ptr %gep53.i230.7.2, align 1
  store i8 %163, ptr %gep.i229.7.2, align 1
  store i8 %162, ptr %gep53.i230.7.2, align 1
  %gep.i229.7.3 = getelementptr inbounds i8, ptr %param, i64 347
  %164 = load i8, ptr %gep.i229.7.3, align 1
  %gep53.i230.7.3 = getelementptr inbounds i8, ptr %param, i64 319
  %165 = load i8, ptr %gep53.i230.7.3, align 1
  store i8 %165, ptr %gep.i229.7.3, align 1
  store i8 %164, ptr %gep53.i230.7.3, align 1
  %gep.i229.7.4 = getelementptr inbounds i8, ptr %param, i64 348
  %166 = load i8, ptr %gep.i229.7.4, align 1
  %gep53.i230.7.4 = getelementptr inbounds i8, ptr %param, i64 327
  %167 = load i8, ptr %gep53.i230.7.4, align 1
  store i8 %167, ptr %gep.i229.7.4, align 1
  store i8 %166, ptr %gep53.i230.7.4, align 1
  %gep.i229.7.5 = getelementptr inbounds i8, ptr %param, i64 349
  %168 = load i8, ptr %gep.i229.7.5, align 1
  %gep53.i230.7.5 = getelementptr inbounds i8, ptr %param, i64 335
  %169 = load i8, ptr %gep53.i230.7.5, align 1
  store i8 %169, ptr %gep.i229.7.5, align 1
  store i8 %168, ptr %gep53.i230.7.5, align 1
  %gep.i229.7.6 = getelementptr inbounds i8, ptr %param, i64 350
  %170 = load i8, ptr %gep.i229.7.6, align 1
  %gep53.i230.7.6 = getelementptr inbounds i8, ptr %param, i64 343
  %171 = load i8, ptr %gep53.i230.7.6, align 1
  store i8 %171, ptr %gep.i229.7.6, align 1
  store i8 %170, ptr %gep53.i230.7.6, align 1
  %scaling_list41 = getelementptr inbounds i8, ptr %pps, i64 72
  store ptr %cqm_4iy, ptr %scaling_list41, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %pps, i64 88
  store ptr %cqm_4ic, ptr %arrayidx46, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %pps, i64 80
  store ptr %cqm_4py, ptr %arrayidx50, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %pps, i64 96
  store ptr %cqm_4pc, ptr %arrayidx54, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %pps, i64 104
  store ptr %cqm_8iy, ptr %arrayidx58, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %pps, i64 112
  store ptr %cqm_8py, ptr %arrayidx62, align 8
  %172 = load i8, ptr %cqm_4iy, align 1
  %cmp83 = icmp eq i8 %172, 0
  br i1 %cmp83, label %if.then, label %for.inc90

if.then.1:                                        ; preds = %for.inc90.15
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1

for.inc90.1:                                      ; preds = %if.then.1, %for.inc90.15
  %173 = phi ptr [ %cqm_4py, %for.inc90.15 ], [ @x264_cqm_jvt4p, %if.then.1 ]
  %arrayidx81.1.1 = getelementptr inbounds i8, ptr %173, i64 1
  %174 = load i8, ptr %arrayidx81.1.1, align 1
  %cmp83.1.1 = icmp eq i8 %174, 0
  br i1 %cmp83.1.1, label %if.then.1.1, label %for.inc90.1.1

if.then.1.1:                                      ; preds = %for.inc90.1
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.1

for.inc90.1.1:                                    ; preds = %if.then.1.1, %for.inc90.1
  %175 = phi ptr [ %173, %for.inc90.1 ], [ @x264_cqm_jvt4p, %if.then.1.1 ]
  %arrayidx81.1.2 = getelementptr inbounds i8, ptr %175, i64 2
  %176 = load i8, ptr %arrayidx81.1.2, align 1
  %cmp83.1.2 = icmp eq i8 %176, 0
  br i1 %cmp83.1.2, label %if.then.1.2, label %for.inc90.1.2

if.then.1.2:                                      ; preds = %for.inc90.1.1
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.2

for.inc90.1.2:                                    ; preds = %if.then.1.2, %for.inc90.1.1
  %177 = phi ptr [ %175, %for.inc90.1.1 ], [ @x264_cqm_jvt4p, %if.then.1.2 ]
  %arrayidx81.1.3 = getelementptr inbounds i8, ptr %177, i64 3
  %178 = load i8, ptr %arrayidx81.1.3, align 1
  %cmp83.1.3 = icmp eq i8 %178, 0
  br i1 %cmp83.1.3, label %if.then.1.3, label %for.inc90.1.3

if.then.1.3:                                      ; preds = %for.inc90.1.2
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.3

for.inc90.1.3:                                    ; preds = %if.then.1.3, %for.inc90.1.2
  %179 = phi ptr [ %177, %for.inc90.1.2 ], [ @x264_cqm_jvt4p, %if.then.1.3 ]
  %arrayidx81.1.4 = getelementptr inbounds i8, ptr %179, i64 4
  %180 = load i8, ptr %arrayidx81.1.4, align 1
  %cmp83.1.4 = icmp eq i8 %180, 0
  br i1 %cmp83.1.4, label %if.then.1.4, label %for.inc90.1.4

if.then.1.4:                                      ; preds = %for.inc90.1.3
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.4

for.inc90.1.4:                                    ; preds = %if.then.1.4, %for.inc90.1.3
  %181 = phi ptr [ %179, %for.inc90.1.3 ], [ @x264_cqm_jvt4p, %if.then.1.4 ]
  %arrayidx81.1.5 = getelementptr inbounds i8, ptr %181, i64 5
  %182 = load i8, ptr %arrayidx81.1.5, align 1
  %cmp83.1.5 = icmp eq i8 %182, 0
  br i1 %cmp83.1.5, label %if.then.1.5, label %for.inc90.1.5

if.then.1.5:                                      ; preds = %for.inc90.1.4
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.5

for.inc90.1.5:                                    ; preds = %if.then.1.5, %for.inc90.1.4
  %183 = phi ptr [ %181, %for.inc90.1.4 ], [ @x264_cqm_jvt4p, %if.then.1.5 ]
  %arrayidx81.1.6 = getelementptr inbounds i8, ptr %183, i64 6
  %184 = load i8, ptr %arrayidx81.1.6, align 1
  %cmp83.1.6 = icmp eq i8 %184, 0
  br i1 %cmp83.1.6, label %if.then.1.6, label %for.inc90.1.6

if.then.1.6:                                      ; preds = %for.inc90.1.5
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.6

for.inc90.1.6:                                    ; preds = %if.then.1.6, %for.inc90.1.5
  %185 = phi ptr [ %183, %for.inc90.1.5 ], [ @x264_cqm_jvt4p, %if.then.1.6 ]
  %arrayidx81.1.7 = getelementptr inbounds i8, ptr %185, i64 7
  %186 = load i8, ptr %arrayidx81.1.7, align 1
  %cmp83.1.7 = icmp eq i8 %186, 0
  br i1 %cmp83.1.7, label %if.then.1.7, label %for.inc90.1.7

if.then.1.7:                                      ; preds = %for.inc90.1.6
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.7

for.inc90.1.7:                                    ; preds = %if.then.1.7, %for.inc90.1.6
  %187 = phi ptr [ %185, %for.inc90.1.6 ], [ @x264_cqm_jvt4p, %if.then.1.7 ]
  %arrayidx81.1.8 = getelementptr inbounds i8, ptr %187, i64 8
  %188 = load i8, ptr %arrayidx81.1.8, align 1
  %cmp83.1.8 = icmp eq i8 %188, 0
  br i1 %cmp83.1.8, label %if.then.1.8, label %for.inc90.1.8

if.then.1.8:                                      ; preds = %for.inc90.1.7
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.8

for.inc90.1.8:                                    ; preds = %if.then.1.8, %for.inc90.1.7
  %189 = phi ptr [ %187, %for.inc90.1.7 ], [ @x264_cqm_jvt4p, %if.then.1.8 ]
  %arrayidx81.1.9 = getelementptr inbounds i8, ptr %189, i64 9
  %190 = load i8, ptr %arrayidx81.1.9, align 1
  %cmp83.1.9 = icmp eq i8 %190, 0
  br i1 %cmp83.1.9, label %if.then.1.9, label %for.inc90.1.9

if.then.1.9:                                      ; preds = %for.inc90.1.8
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.9

for.inc90.1.9:                                    ; preds = %if.then.1.9, %for.inc90.1.8
  %191 = phi ptr [ %189, %for.inc90.1.8 ], [ @x264_cqm_jvt4p, %if.then.1.9 ]
  %arrayidx81.1.10 = getelementptr inbounds i8, ptr %191, i64 10
  %192 = load i8, ptr %arrayidx81.1.10, align 1
  %cmp83.1.10 = icmp eq i8 %192, 0
  br i1 %cmp83.1.10, label %if.then.1.10, label %for.inc90.1.10

if.then.1.10:                                     ; preds = %for.inc90.1.9
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.10

for.inc90.1.10:                                   ; preds = %if.then.1.10, %for.inc90.1.9
  %193 = phi ptr [ %191, %for.inc90.1.9 ], [ @x264_cqm_jvt4p, %if.then.1.10 ]
  %arrayidx81.1.11 = getelementptr inbounds i8, ptr %193, i64 11
  %194 = load i8, ptr %arrayidx81.1.11, align 1
  %cmp83.1.11 = icmp eq i8 %194, 0
  br i1 %cmp83.1.11, label %if.then.1.11, label %for.inc90.1.11

if.then.1.11:                                     ; preds = %for.inc90.1.10
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.11

for.inc90.1.11:                                   ; preds = %if.then.1.11, %for.inc90.1.10
  %195 = phi ptr [ %193, %for.inc90.1.10 ], [ @x264_cqm_jvt4p, %if.then.1.11 ]
  %arrayidx81.1.12 = getelementptr inbounds i8, ptr %195, i64 12
  %196 = load i8, ptr %arrayidx81.1.12, align 1
  %cmp83.1.12 = icmp eq i8 %196, 0
  br i1 %cmp83.1.12, label %if.then.1.12, label %for.inc90.1.12

if.then.1.12:                                     ; preds = %for.inc90.1.11
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.12

for.inc90.1.12:                                   ; preds = %if.then.1.12, %for.inc90.1.11
  %197 = phi ptr [ %195, %for.inc90.1.11 ], [ @x264_cqm_jvt4p, %if.then.1.12 ]
  %arrayidx81.1.13 = getelementptr inbounds i8, ptr %197, i64 13
  %198 = load i8, ptr %arrayidx81.1.13, align 1
  %cmp83.1.13 = icmp eq i8 %198, 0
  br i1 %cmp83.1.13, label %if.then.1.13, label %for.inc90.1.13

if.then.1.13:                                     ; preds = %for.inc90.1.12
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.13

for.inc90.1.13:                                   ; preds = %if.then.1.13, %for.inc90.1.12
  %199 = phi ptr [ %197, %for.inc90.1.12 ], [ @x264_cqm_jvt4p, %if.then.1.13 ]
  %arrayidx81.1.14 = getelementptr inbounds i8, ptr %199, i64 14
  %200 = load i8, ptr %arrayidx81.1.14, align 1
  %cmp83.1.14 = icmp eq i8 %200, 0
  br i1 %cmp83.1.14, label %if.then.1.14, label %for.inc90.1.14

if.then.1.14:                                     ; preds = %for.inc90.1.13
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.14

for.inc90.1.14:                                   ; preds = %if.then.1.14, %for.inc90.1.13
  %201 = phi ptr [ %199, %for.inc90.1.13 ], [ @x264_cqm_jvt4p, %if.then.1.14 ]
  %arrayidx81.1.15 = getelementptr inbounds i8, ptr %201, i64 15
  %202 = load i8, ptr %arrayidx81.1.15, align 1
  %cmp83.1.15 = icmp eq i8 %202, 0
  br i1 %cmp83.1.15, label %if.then.1.15, label %for.inc90.1.15

if.then.1.15:                                     ; preds = %for.inc90.1.14
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.1, align 8
  br label %for.inc90.1.15

for.inc90.1.15:                                   ; preds = %if.then.1.15, %for.inc90.1.14
  %arrayidx79.2 = getelementptr inbounds i8, ptr %pps, i64 88
  %203 = load i8, ptr %cqm_4ic, align 1
  %cmp83.2 = icmp eq i8 %203, 0
  br i1 %cmp83.2, label %if.then.2, label %for.inc90.2

if.then.2:                                        ; preds = %for.inc90.1.15
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2

for.inc90.2:                                      ; preds = %if.then.2, %for.inc90.1.15
  %204 = phi ptr [ %cqm_4ic, %for.inc90.1.15 ], [ @x264_cqm_jvt4i, %if.then.2 ]
  %arrayidx81.2.1 = getelementptr inbounds i8, ptr %204, i64 1
  %205 = load i8, ptr %arrayidx81.2.1, align 1
  %cmp83.2.1 = icmp eq i8 %205, 0
  br i1 %cmp83.2.1, label %if.then.2.1, label %for.inc90.2.1

if.then.2.1:                                      ; preds = %for.inc90.2
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.1

for.inc90.2.1:                                    ; preds = %if.then.2.1, %for.inc90.2
  %206 = phi ptr [ %204, %for.inc90.2 ], [ @x264_cqm_jvt4i, %if.then.2.1 ]
  %arrayidx81.2.2 = getelementptr inbounds i8, ptr %206, i64 2
  %207 = load i8, ptr %arrayidx81.2.2, align 1
  %cmp83.2.2 = icmp eq i8 %207, 0
  br i1 %cmp83.2.2, label %if.then.2.2, label %for.inc90.2.2

if.then.2.2:                                      ; preds = %for.inc90.2.1
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.2

for.inc90.2.2:                                    ; preds = %if.then.2.2, %for.inc90.2.1
  %208 = phi ptr [ %206, %for.inc90.2.1 ], [ @x264_cqm_jvt4i, %if.then.2.2 ]
  %arrayidx81.2.3 = getelementptr inbounds i8, ptr %208, i64 3
  %209 = load i8, ptr %arrayidx81.2.3, align 1
  %cmp83.2.3 = icmp eq i8 %209, 0
  br i1 %cmp83.2.3, label %if.then.2.3, label %for.inc90.2.3

if.then.2.3:                                      ; preds = %for.inc90.2.2
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.3

for.inc90.2.3:                                    ; preds = %if.then.2.3, %for.inc90.2.2
  %210 = phi ptr [ %208, %for.inc90.2.2 ], [ @x264_cqm_jvt4i, %if.then.2.3 ]
  %arrayidx81.2.4 = getelementptr inbounds i8, ptr %210, i64 4
  %211 = load i8, ptr %arrayidx81.2.4, align 1
  %cmp83.2.4 = icmp eq i8 %211, 0
  br i1 %cmp83.2.4, label %if.then.2.4, label %for.inc90.2.4

if.then.2.4:                                      ; preds = %for.inc90.2.3
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.4

for.inc90.2.4:                                    ; preds = %if.then.2.4, %for.inc90.2.3
  %212 = phi ptr [ %210, %for.inc90.2.3 ], [ @x264_cqm_jvt4i, %if.then.2.4 ]
  %arrayidx81.2.5 = getelementptr inbounds i8, ptr %212, i64 5
  %213 = load i8, ptr %arrayidx81.2.5, align 1
  %cmp83.2.5 = icmp eq i8 %213, 0
  br i1 %cmp83.2.5, label %if.then.2.5, label %for.inc90.2.5

if.then.2.5:                                      ; preds = %for.inc90.2.4
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.5

for.inc90.2.5:                                    ; preds = %if.then.2.5, %for.inc90.2.4
  %214 = phi ptr [ %212, %for.inc90.2.4 ], [ @x264_cqm_jvt4i, %if.then.2.5 ]
  %arrayidx81.2.6 = getelementptr inbounds i8, ptr %214, i64 6
  %215 = load i8, ptr %arrayidx81.2.6, align 1
  %cmp83.2.6 = icmp eq i8 %215, 0
  br i1 %cmp83.2.6, label %if.then.2.6, label %for.inc90.2.6

if.then.2.6:                                      ; preds = %for.inc90.2.5
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.6

for.inc90.2.6:                                    ; preds = %if.then.2.6, %for.inc90.2.5
  %216 = phi ptr [ %214, %for.inc90.2.5 ], [ @x264_cqm_jvt4i, %if.then.2.6 ]
  %arrayidx81.2.7 = getelementptr inbounds i8, ptr %216, i64 7
  %217 = load i8, ptr %arrayidx81.2.7, align 1
  %cmp83.2.7 = icmp eq i8 %217, 0
  br i1 %cmp83.2.7, label %if.then.2.7, label %for.inc90.2.7

if.then.2.7:                                      ; preds = %for.inc90.2.6
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.7

for.inc90.2.7:                                    ; preds = %if.then.2.7, %for.inc90.2.6
  %218 = phi ptr [ %216, %for.inc90.2.6 ], [ @x264_cqm_jvt4i, %if.then.2.7 ]
  %arrayidx81.2.8 = getelementptr inbounds i8, ptr %218, i64 8
  %219 = load i8, ptr %arrayidx81.2.8, align 1
  %cmp83.2.8 = icmp eq i8 %219, 0
  br i1 %cmp83.2.8, label %if.then.2.8, label %for.inc90.2.8

if.then.2.8:                                      ; preds = %for.inc90.2.7
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.8

for.inc90.2.8:                                    ; preds = %if.then.2.8, %for.inc90.2.7
  %220 = phi ptr [ %218, %for.inc90.2.7 ], [ @x264_cqm_jvt4i, %if.then.2.8 ]
  %arrayidx81.2.9 = getelementptr inbounds i8, ptr %220, i64 9
  %221 = load i8, ptr %arrayidx81.2.9, align 1
  %cmp83.2.9 = icmp eq i8 %221, 0
  br i1 %cmp83.2.9, label %if.then.2.9, label %for.inc90.2.9

if.then.2.9:                                      ; preds = %for.inc90.2.8
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.9

for.inc90.2.9:                                    ; preds = %if.then.2.9, %for.inc90.2.8
  %222 = phi ptr [ %220, %for.inc90.2.8 ], [ @x264_cqm_jvt4i, %if.then.2.9 ]
  %arrayidx81.2.10 = getelementptr inbounds i8, ptr %222, i64 10
  %223 = load i8, ptr %arrayidx81.2.10, align 1
  %cmp83.2.10 = icmp eq i8 %223, 0
  br i1 %cmp83.2.10, label %if.then.2.10, label %for.inc90.2.10

if.then.2.10:                                     ; preds = %for.inc90.2.9
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.10

for.inc90.2.10:                                   ; preds = %if.then.2.10, %for.inc90.2.9
  %224 = phi ptr [ %222, %for.inc90.2.9 ], [ @x264_cqm_jvt4i, %if.then.2.10 ]
  %arrayidx81.2.11 = getelementptr inbounds i8, ptr %224, i64 11
  %225 = load i8, ptr %arrayidx81.2.11, align 1
  %cmp83.2.11 = icmp eq i8 %225, 0
  br i1 %cmp83.2.11, label %if.then.2.11, label %for.inc90.2.11

if.then.2.11:                                     ; preds = %for.inc90.2.10
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.11

for.inc90.2.11:                                   ; preds = %if.then.2.11, %for.inc90.2.10
  %226 = phi ptr [ %224, %for.inc90.2.10 ], [ @x264_cqm_jvt4i, %if.then.2.11 ]
  %arrayidx81.2.12 = getelementptr inbounds i8, ptr %226, i64 12
  %227 = load i8, ptr %arrayidx81.2.12, align 1
  %cmp83.2.12 = icmp eq i8 %227, 0
  br i1 %cmp83.2.12, label %if.then.2.12, label %for.inc90.2.12

if.then.2.12:                                     ; preds = %for.inc90.2.11
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.12

for.inc90.2.12:                                   ; preds = %if.then.2.12, %for.inc90.2.11
  %228 = phi ptr [ %226, %for.inc90.2.11 ], [ @x264_cqm_jvt4i, %if.then.2.12 ]
  %arrayidx81.2.13 = getelementptr inbounds i8, ptr %228, i64 13
  %229 = load i8, ptr %arrayidx81.2.13, align 1
  %cmp83.2.13 = icmp eq i8 %229, 0
  br i1 %cmp83.2.13, label %if.then.2.13, label %for.inc90.2.13

if.then.2.13:                                     ; preds = %for.inc90.2.12
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.13

for.inc90.2.13:                                   ; preds = %if.then.2.13, %for.inc90.2.12
  %230 = phi ptr [ %228, %for.inc90.2.12 ], [ @x264_cqm_jvt4i, %if.then.2.13 ]
  %arrayidx81.2.14 = getelementptr inbounds i8, ptr %230, i64 14
  %231 = load i8, ptr %arrayidx81.2.14, align 1
  %cmp83.2.14 = icmp eq i8 %231, 0
  br i1 %cmp83.2.14, label %if.then.2.14, label %for.inc90.2.14

if.then.2.14:                                     ; preds = %for.inc90.2.13
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.14

for.inc90.2.14:                                   ; preds = %if.then.2.14, %for.inc90.2.13
  %232 = phi ptr [ %230, %for.inc90.2.13 ], [ @x264_cqm_jvt4i, %if.then.2.14 ]
  %arrayidx81.2.15 = getelementptr inbounds i8, ptr %232, i64 15
  %233 = load i8, ptr %arrayidx81.2.15, align 1
  %cmp83.2.15 = icmp eq i8 %233, 0
  br i1 %cmp83.2.15, label %if.then.2.15, label %for.inc90.2.15

if.then.2.15:                                     ; preds = %for.inc90.2.14
  store ptr @x264_cqm_jvt4i, ptr %arrayidx79.2, align 8
  br label %for.inc90.2.15

for.inc90.2.15:                                   ; preds = %if.then.2.15, %for.inc90.2.14
  %arrayidx79.3 = getelementptr inbounds i8, ptr %pps, i64 96
  %234 = load i8, ptr %cqm_4pc, align 1
  %cmp83.3 = icmp eq i8 %234, 0
  br i1 %cmp83.3, label %if.then.3, label %for.inc90.3

if.then.3:                                        ; preds = %for.inc90.2.15
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3

for.inc90.3:                                      ; preds = %if.then.3, %for.inc90.2.15
  %235 = phi ptr [ %cqm_4pc, %for.inc90.2.15 ], [ @x264_cqm_jvt4p, %if.then.3 ]
  %arrayidx81.3.1 = getelementptr inbounds i8, ptr %235, i64 1
  %236 = load i8, ptr %arrayidx81.3.1, align 1
  %cmp83.3.1 = icmp eq i8 %236, 0
  br i1 %cmp83.3.1, label %if.then.3.1, label %for.inc90.3.1

if.then.3.1:                                      ; preds = %for.inc90.3
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.1

for.inc90.3.1:                                    ; preds = %if.then.3.1, %for.inc90.3
  %237 = phi ptr [ %235, %for.inc90.3 ], [ @x264_cqm_jvt4p, %if.then.3.1 ]
  %arrayidx81.3.2 = getelementptr inbounds i8, ptr %237, i64 2
  %238 = load i8, ptr %arrayidx81.3.2, align 1
  %cmp83.3.2 = icmp eq i8 %238, 0
  br i1 %cmp83.3.2, label %if.then.3.2, label %for.inc90.3.2

if.then.3.2:                                      ; preds = %for.inc90.3.1
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.2

for.inc90.3.2:                                    ; preds = %if.then.3.2, %for.inc90.3.1
  %239 = phi ptr [ %237, %for.inc90.3.1 ], [ @x264_cqm_jvt4p, %if.then.3.2 ]
  %arrayidx81.3.3 = getelementptr inbounds i8, ptr %239, i64 3
  %240 = load i8, ptr %arrayidx81.3.3, align 1
  %cmp83.3.3 = icmp eq i8 %240, 0
  br i1 %cmp83.3.3, label %if.then.3.3, label %for.inc90.3.3

if.then.3.3:                                      ; preds = %for.inc90.3.2
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.3

for.inc90.3.3:                                    ; preds = %if.then.3.3, %for.inc90.3.2
  %241 = phi ptr [ %239, %for.inc90.3.2 ], [ @x264_cqm_jvt4p, %if.then.3.3 ]
  %arrayidx81.3.4 = getelementptr inbounds i8, ptr %241, i64 4
  %242 = load i8, ptr %arrayidx81.3.4, align 1
  %cmp83.3.4 = icmp eq i8 %242, 0
  br i1 %cmp83.3.4, label %if.then.3.4, label %for.inc90.3.4

if.then.3.4:                                      ; preds = %for.inc90.3.3
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.4

for.inc90.3.4:                                    ; preds = %if.then.3.4, %for.inc90.3.3
  %243 = phi ptr [ %241, %for.inc90.3.3 ], [ @x264_cqm_jvt4p, %if.then.3.4 ]
  %arrayidx81.3.5 = getelementptr inbounds i8, ptr %243, i64 5
  %244 = load i8, ptr %arrayidx81.3.5, align 1
  %cmp83.3.5 = icmp eq i8 %244, 0
  br i1 %cmp83.3.5, label %if.then.3.5, label %for.inc90.3.5

if.then.3.5:                                      ; preds = %for.inc90.3.4
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.5

for.inc90.3.5:                                    ; preds = %if.then.3.5, %for.inc90.3.4
  %245 = phi ptr [ %243, %for.inc90.3.4 ], [ @x264_cqm_jvt4p, %if.then.3.5 ]
  %arrayidx81.3.6 = getelementptr inbounds i8, ptr %245, i64 6
  %246 = load i8, ptr %arrayidx81.3.6, align 1
  %cmp83.3.6 = icmp eq i8 %246, 0
  br i1 %cmp83.3.6, label %if.then.3.6, label %for.inc90.3.6

if.then.3.6:                                      ; preds = %for.inc90.3.5
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.6

for.inc90.3.6:                                    ; preds = %if.then.3.6, %for.inc90.3.5
  %247 = phi ptr [ %245, %for.inc90.3.5 ], [ @x264_cqm_jvt4p, %if.then.3.6 ]
  %arrayidx81.3.7 = getelementptr inbounds i8, ptr %247, i64 7
  %248 = load i8, ptr %arrayidx81.3.7, align 1
  %cmp83.3.7 = icmp eq i8 %248, 0
  br i1 %cmp83.3.7, label %if.then.3.7, label %for.inc90.3.7

if.then.3.7:                                      ; preds = %for.inc90.3.6
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.7

for.inc90.3.7:                                    ; preds = %if.then.3.7, %for.inc90.3.6
  %249 = phi ptr [ %247, %for.inc90.3.6 ], [ @x264_cqm_jvt4p, %if.then.3.7 ]
  %arrayidx81.3.8 = getelementptr inbounds i8, ptr %249, i64 8
  %250 = load i8, ptr %arrayidx81.3.8, align 1
  %cmp83.3.8 = icmp eq i8 %250, 0
  br i1 %cmp83.3.8, label %if.then.3.8, label %for.inc90.3.8

if.then.3.8:                                      ; preds = %for.inc90.3.7
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.8

for.inc90.3.8:                                    ; preds = %if.then.3.8, %for.inc90.3.7
  %251 = phi ptr [ %249, %for.inc90.3.7 ], [ @x264_cqm_jvt4p, %if.then.3.8 ]
  %arrayidx81.3.9 = getelementptr inbounds i8, ptr %251, i64 9
  %252 = load i8, ptr %arrayidx81.3.9, align 1
  %cmp83.3.9 = icmp eq i8 %252, 0
  br i1 %cmp83.3.9, label %if.then.3.9, label %for.inc90.3.9

if.then.3.9:                                      ; preds = %for.inc90.3.8
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.9

for.inc90.3.9:                                    ; preds = %if.then.3.9, %for.inc90.3.8
  %253 = phi ptr [ %251, %for.inc90.3.8 ], [ @x264_cqm_jvt4p, %if.then.3.9 ]
  %arrayidx81.3.10 = getelementptr inbounds i8, ptr %253, i64 10
  %254 = load i8, ptr %arrayidx81.3.10, align 1
  %cmp83.3.10 = icmp eq i8 %254, 0
  br i1 %cmp83.3.10, label %if.then.3.10, label %for.inc90.3.10

if.then.3.10:                                     ; preds = %for.inc90.3.9
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.10

for.inc90.3.10:                                   ; preds = %if.then.3.10, %for.inc90.3.9
  %255 = phi ptr [ %253, %for.inc90.3.9 ], [ @x264_cqm_jvt4p, %if.then.3.10 ]
  %arrayidx81.3.11 = getelementptr inbounds i8, ptr %255, i64 11
  %256 = load i8, ptr %arrayidx81.3.11, align 1
  %cmp83.3.11 = icmp eq i8 %256, 0
  br i1 %cmp83.3.11, label %if.then.3.11, label %for.inc90.3.11

if.then.3.11:                                     ; preds = %for.inc90.3.10
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.11

for.inc90.3.11:                                   ; preds = %if.then.3.11, %for.inc90.3.10
  %257 = phi ptr [ %255, %for.inc90.3.10 ], [ @x264_cqm_jvt4p, %if.then.3.11 ]
  %arrayidx81.3.12 = getelementptr inbounds i8, ptr %257, i64 12
  %258 = load i8, ptr %arrayidx81.3.12, align 1
  %cmp83.3.12 = icmp eq i8 %258, 0
  br i1 %cmp83.3.12, label %if.then.3.12, label %for.inc90.3.12

if.then.3.12:                                     ; preds = %for.inc90.3.11
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.12

for.inc90.3.12:                                   ; preds = %if.then.3.12, %for.inc90.3.11
  %259 = phi ptr [ %257, %for.inc90.3.11 ], [ @x264_cqm_jvt4p, %if.then.3.12 ]
  %arrayidx81.3.13 = getelementptr inbounds i8, ptr %259, i64 13
  %260 = load i8, ptr %arrayidx81.3.13, align 1
  %cmp83.3.13 = icmp eq i8 %260, 0
  br i1 %cmp83.3.13, label %if.then.3.13, label %for.inc90.3.13

if.then.3.13:                                     ; preds = %for.inc90.3.12
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.13

for.inc90.3.13:                                   ; preds = %if.then.3.13, %for.inc90.3.12
  %261 = phi ptr [ %259, %for.inc90.3.12 ], [ @x264_cqm_jvt4p, %if.then.3.13 ]
  %arrayidx81.3.14 = getelementptr inbounds i8, ptr %261, i64 14
  %262 = load i8, ptr %arrayidx81.3.14, align 1
  %cmp83.3.14 = icmp eq i8 %262, 0
  br i1 %cmp83.3.14, label %if.then.3.14, label %for.inc90.3.14

if.then.3.14:                                     ; preds = %for.inc90.3.13
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.14

for.inc90.3.14:                                   ; preds = %if.then.3.14, %for.inc90.3.13
  %263 = phi ptr [ %261, %for.inc90.3.13 ], [ @x264_cqm_jvt4p, %if.then.3.14 ]
  %arrayidx81.3.15 = getelementptr inbounds i8, ptr %263, i64 15
  %264 = load i8, ptr %arrayidx81.3.15, align 1
  %cmp83.3.15 = icmp eq i8 %264, 0
  br i1 %cmp83.3.15, label %if.then.3.15, label %for.inc90.3.15

if.then.3.15:                                     ; preds = %for.inc90.3.14
  store ptr @x264_cqm_jvt4p, ptr %arrayidx79.3, align 8
  br label %for.inc90.3.15

for.inc90.3.15:                                   ; preds = %if.then.3.15, %for.inc90.3.14
  %arrayidx79.4 = getelementptr inbounds i8, ptr %pps, i64 104
  br label %for.body76.4

for.body76.4:                                     ; preds = %for.inc90.4.3, %for.inc90.3.15
  %indvars.iv.4 = phi i64 [ 0, %for.inc90.3.15 ], [ %indvars.iv.next.4.3, %for.inc90.4.3 ]
  %265 = phi ptr [ %cqm_8iy, %for.inc90.3.15 ], [ %273, %for.inc90.4.3 ]
  %arrayidx81.4 = getelementptr inbounds i8, ptr %265, i64 %indvars.iv.4
  %266 = load i8, ptr %arrayidx81.4, align 1
  %cmp83.4 = icmp eq i8 %266, 0
  br i1 %cmp83.4, label %if.then.4, label %for.inc90.4

if.then.4:                                        ; preds = %for.body76.4
  store ptr @x264_cqm_jvt8i, ptr %arrayidx79.4, align 8
  br label %for.inc90.4

for.inc90.4:                                      ; preds = %if.then.4, %for.body76.4
  %267 = phi ptr [ %265, %for.body76.4 ], [ @x264_cqm_jvt8i, %if.then.4 ]
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv.4, 1
  %arrayidx81.4.1 = getelementptr inbounds i8, ptr %267, i64 %indvars.iv.next.4
  %268 = load i8, ptr %arrayidx81.4.1, align 1
  %cmp83.4.1 = icmp eq i8 %268, 0
  br i1 %cmp83.4.1, label %if.then.4.1, label %for.inc90.4.1

if.then.4.1:                                      ; preds = %for.inc90.4
  store ptr @x264_cqm_jvt8i, ptr %arrayidx79.4, align 8
  br label %for.inc90.4.1

for.inc90.4.1:                                    ; preds = %if.then.4.1, %for.inc90.4
  %269 = phi ptr [ %267, %for.inc90.4 ], [ @x264_cqm_jvt8i, %if.then.4.1 ]
  %indvars.iv.next.4.1 = or disjoint i64 %indvars.iv.4, 2
  %arrayidx81.4.2 = getelementptr inbounds i8, ptr %269, i64 %indvars.iv.next.4.1
  %270 = load i8, ptr %arrayidx81.4.2, align 1
  %cmp83.4.2 = icmp eq i8 %270, 0
  br i1 %cmp83.4.2, label %if.then.4.2, label %for.inc90.4.2

if.then.4.2:                                      ; preds = %for.inc90.4.1
  store ptr @x264_cqm_jvt8i, ptr %arrayidx79.4, align 8
  br label %for.inc90.4.2

for.inc90.4.2:                                    ; preds = %if.then.4.2, %for.inc90.4.1
  %271 = phi ptr [ %269, %for.inc90.4.1 ], [ @x264_cqm_jvt8i, %if.then.4.2 ]
  %indvars.iv.next.4.2 = or disjoint i64 %indvars.iv.4, 3
  %arrayidx81.4.3 = getelementptr inbounds i8, ptr %271, i64 %indvars.iv.next.4.2
  %272 = load i8, ptr %arrayidx81.4.3, align 1
  %cmp83.4.3 = icmp eq i8 %272, 0
  br i1 %cmp83.4.3, label %if.then.4.3, label %for.inc90.4.3

if.then.4.3:                                      ; preds = %for.inc90.4.2
  store ptr @x264_cqm_jvt8i, ptr %arrayidx79.4, align 8
  br label %for.inc90.4.3

for.inc90.4.3:                                    ; preds = %if.then.4.3, %for.inc90.4.2
  %273 = phi ptr [ %271, %for.inc90.4.2 ], [ @x264_cqm_jvt8i, %if.then.4.3 ]
  %indvars.iv.next.4.3 = add nuw nsw i64 %indvars.iv.4, 4
  %exitcond.4.not.3 = icmp eq i64 %indvars.iv.next.4.3, 64
  br i1 %exitcond.4.not.3, label %for.cond.cleanup75.4, label %for.body76.4

for.cond.cleanup75.4:                             ; preds = %for.inc90.4.3
  %arrayidx79.5 = getelementptr inbounds i8, ptr %pps, i64 112
  br label %for.body76.5

for.body76.5:                                     ; preds = %for.inc90.5.3, %for.cond.cleanup75.4
  %indvars.iv.5 = phi i64 [ 0, %for.cond.cleanup75.4 ], [ %indvars.iv.next.5.3, %for.inc90.5.3 ]
  %274 = phi ptr [ %cqm_8py, %for.cond.cleanup75.4 ], [ %282, %for.inc90.5.3 ]
  %arrayidx81.5 = getelementptr inbounds i8, ptr %274, i64 %indvars.iv.5
  %275 = load i8, ptr %arrayidx81.5, align 1
  %cmp83.5 = icmp eq i8 %275, 0
  br i1 %cmp83.5, label %if.then.5, label %for.inc90.5

if.then.5:                                        ; preds = %for.body76.5
  store ptr @x264_cqm_jvt8p, ptr %arrayidx79.5, align 8
  br label %for.inc90.5

for.inc90.5:                                      ; preds = %if.then.5, %for.body76.5
  %276 = phi ptr [ %274, %for.body76.5 ], [ @x264_cqm_jvt8p, %if.then.5 ]
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv.5, 1
  %arrayidx81.5.1 = getelementptr inbounds i8, ptr %276, i64 %indvars.iv.next.5
  %277 = load i8, ptr %arrayidx81.5.1, align 1
  %cmp83.5.1 = icmp eq i8 %277, 0
  br i1 %cmp83.5.1, label %if.then.5.1, label %for.inc90.5.1

if.then.5.1:                                      ; preds = %for.inc90.5
  store ptr @x264_cqm_jvt8p, ptr %arrayidx79.5, align 8
  br label %for.inc90.5.1

for.inc90.5.1:                                    ; preds = %if.then.5.1, %for.inc90.5
  %278 = phi ptr [ %276, %for.inc90.5 ], [ @x264_cqm_jvt8p, %if.then.5.1 ]
  %indvars.iv.next.5.1 = or disjoint i64 %indvars.iv.5, 2
  %arrayidx81.5.2 = getelementptr inbounds i8, ptr %278, i64 %indvars.iv.next.5.1
  %279 = load i8, ptr %arrayidx81.5.2, align 1
  %cmp83.5.2 = icmp eq i8 %279, 0
  br i1 %cmp83.5.2, label %if.then.5.2, label %for.inc90.5.2

if.then.5.2:                                      ; preds = %for.inc90.5.1
  store ptr @x264_cqm_jvt8p, ptr %arrayidx79.5, align 8
  br label %for.inc90.5.2

for.inc90.5.2:                                    ; preds = %if.then.5.2, %for.inc90.5.1
  %280 = phi ptr [ %278, %for.inc90.5.1 ], [ @x264_cqm_jvt8p, %if.then.5.2 ]
  %indvars.iv.next.5.2 = or disjoint i64 %indvars.iv.5, 3
  %arrayidx81.5.3 = getelementptr inbounds i8, ptr %280, i64 %indvars.iv.next.5.2
  %281 = load i8, ptr %arrayidx81.5.3, align 1
  %cmp83.5.3 = icmp eq i8 %281, 0
  br i1 %cmp83.5.3, label %if.then.5.3, label %for.inc90.5.3

if.then.5.3:                                      ; preds = %for.inc90.5.2
  store ptr @x264_cqm_jvt8p, ptr %arrayidx79.5, align 8
  br label %for.inc90.5.3

for.inc90.5.3:                                    ; preds = %if.then.5.3, %for.inc90.5.2
  %282 = phi ptr [ %280, %for.inc90.5.2 ], [ @x264_cqm_jvt8p, %if.then.5.3 ]
  %indvars.iv.next.5.3 = add nuw nsw i64 %indvars.iv.5, 4
  %exitcond.5.not.3 = icmp eq i64 %indvars.iv.next.5.3, 64
  br i1 %exitcond.5.not.3, label %sw.epilog, label %for.body76.5

if.then:                                          ; preds = %for.cond.cleanup3.i233.7
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90

for.inc90:                                        ; preds = %for.cond.cleanup3.i233.7, %if.then
  %283 = phi ptr [ %cqm_4iy, %for.cond.cleanup3.i233.7 ], [ @x264_cqm_jvt4i, %if.then ]
  %arrayidx81.1 = getelementptr inbounds i8, ptr %283, i64 1
  %284 = load i8, ptr %arrayidx81.1, align 1
  %cmp83.1250 = icmp eq i8 %284, 0
  br i1 %cmp83.1250, label %if.then.1252, label %for.inc90.1253

if.then.1252:                                     ; preds = %for.inc90
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.1253

for.inc90.1253:                                   ; preds = %if.then.1252, %for.inc90
  %285 = phi ptr [ %283, %for.inc90 ], [ @x264_cqm_jvt4i, %if.then.1252 ]
  %arrayidx81.2 = getelementptr inbounds i8, ptr %285, i64 2
  %286 = load i8, ptr %arrayidx81.2, align 1
  %cmp83.2254 = icmp eq i8 %286, 0
  br i1 %cmp83.2254, label %if.then.2256, label %for.inc90.2257

if.then.2256:                                     ; preds = %for.inc90.1253
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.2257

for.inc90.2257:                                   ; preds = %if.then.2256, %for.inc90.1253
  %287 = phi ptr [ %285, %for.inc90.1253 ], [ @x264_cqm_jvt4i, %if.then.2256 ]
  %arrayidx81.3 = getelementptr inbounds i8, ptr %287, i64 3
  %288 = load i8, ptr %arrayidx81.3, align 1
  %cmp83.3258 = icmp eq i8 %288, 0
  br i1 %cmp83.3258, label %if.then.3260, label %for.inc90.3261

if.then.3260:                                     ; preds = %for.inc90.2257
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.3261

for.inc90.3261:                                   ; preds = %if.then.3260, %for.inc90.2257
  %289 = phi ptr [ %287, %for.inc90.2257 ], [ @x264_cqm_jvt4i, %if.then.3260 ]
  %arrayidx81.4263 = getelementptr inbounds i8, ptr %289, i64 4
  %290 = load i8, ptr %arrayidx81.4263, align 1
  %cmp83.4264 = icmp eq i8 %290, 0
  br i1 %cmp83.4264, label %if.then.4266, label %for.inc90.4269

if.then.4266:                                     ; preds = %for.inc90.3261
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.4269

for.inc90.4269:                                   ; preds = %if.then.4266, %for.inc90.3261
  %291 = phi ptr [ %289, %for.inc90.3261 ], [ @x264_cqm_jvt4i, %if.then.4266 ]
  %arrayidx81.5271 = getelementptr inbounds i8, ptr %291, i64 5
  %292 = load i8, ptr %arrayidx81.5271, align 1
  %cmp83.5272 = icmp eq i8 %292, 0
  br i1 %cmp83.5272, label %if.then.5274, label %for.inc90.5277

if.then.5274:                                     ; preds = %for.inc90.4269
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.5277

for.inc90.5277:                                   ; preds = %if.then.5274, %for.inc90.4269
  %293 = phi ptr [ %291, %for.inc90.4269 ], [ @x264_cqm_jvt4i, %if.then.5274 ]
  %arrayidx81.6 = getelementptr inbounds i8, ptr %293, i64 6
  %294 = load i8, ptr %arrayidx81.6, align 1
  %cmp83.6 = icmp eq i8 %294, 0
  br i1 %cmp83.6, label %if.then.6, label %for.inc90.6

if.then.6:                                        ; preds = %for.inc90.5277
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.6

for.inc90.6:                                      ; preds = %if.then.6, %for.inc90.5277
  %295 = phi ptr [ %293, %for.inc90.5277 ], [ @x264_cqm_jvt4i, %if.then.6 ]
  %arrayidx81.7 = getelementptr inbounds i8, ptr %295, i64 7
  %296 = load i8, ptr %arrayidx81.7, align 1
  %cmp83.7 = icmp eq i8 %296, 0
  br i1 %cmp83.7, label %if.then.7, label %for.inc90.7

if.then.7:                                        ; preds = %for.inc90.6
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.7

for.inc90.7:                                      ; preds = %if.then.7, %for.inc90.6
  %297 = phi ptr [ %295, %for.inc90.6 ], [ @x264_cqm_jvt4i, %if.then.7 ]
  %arrayidx81.8 = getelementptr inbounds i8, ptr %297, i64 8
  %298 = load i8, ptr %arrayidx81.8, align 1
  %cmp83.8 = icmp eq i8 %298, 0
  br i1 %cmp83.8, label %if.then.8, label %for.inc90.8

if.then.8:                                        ; preds = %for.inc90.7
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.8

for.inc90.8:                                      ; preds = %if.then.8, %for.inc90.7
  %299 = phi ptr [ %297, %for.inc90.7 ], [ @x264_cqm_jvt4i, %if.then.8 ]
  %arrayidx81.9 = getelementptr inbounds i8, ptr %299, i64 9
  %300 = load i8, ptr %arrayidx81.9, align 1
  %cmp83.9 = icmp eq i8 %300, 0
  br i1 %cmp83.9, label %if.then.9, label %for.inc90.9

if.then.9:                                        ; preds = %for.inc90.8
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.9

for.inc90.9:                                      ; preds = %if.then.9, %for.inc90.8
  %301 = phi ptr [ %299, %for.inc90.8 ], [ @x264_cqm_jvt4i, %if.then.9 ]
  %arrayidx81.10 = getelementptr inbounds i8, ptr %301, i64 10
  %302 = load i8, ptr %arrayidx81.10, align 1
  %cmp83.10 = icmp eq i8 %302, 0
  br i1 %cmp83.10, label %if.then.10, label %for.inc90.10

if.then.10:                                       ; preds = %for.inc90.9
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.10

for.inc90.10:                                     ; preds = %if.then.10, %for.inc90.9
  %303 = phi ptr [ %301, %for.inc90.9 ], [ @x264_cqm_jvt4i, %if.then.10 ]
  %arrayidx81.11 = getelementptr inbounds i8, ptr %303, i64 11
  %304 = load i8, ptr %arrayidx81.11, align 1
  %cmp83.11 = icmp eq i8 %304, 0
  br i1 %cmp83.11, label %if.then.11, label %for.inc90.11

if.then.11:                                       ; preds = %for.inc90.10
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.11

for.inc90.11:                                     ; preds = %if.then.11, %for.inc90.10
  %305 = phi ptr [ %303, %for.inc90.10 ], [ @x264_cqm_jvt4i, %if.then.11 ]
  %arrayidx81.12 = getelementptr inbounds i8, ptr %305, i64 12
  %306 = load i8, ptr %arrayidx81.12, align 1
  %cmp83.12 = icmp eq i8 %306, 0
  br i1 %cmp83.12, label %if.then.12, label %for.inc90.12

if.then.12:                                       ; preds = %for.inc90.11
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.12

for.inc90.12:                                     ; preds = %if.then.12, %for.inc90.11
  %307 = phi ptr [ %305, %for.inc90.11 ], [ @x264_cqm_jvt4i, %if.then.12 ]
  %arrayidx81.13 = getelementptr inbounds i8, ptr %307, i64 13
  %308 = load i8, ptr %arrayidx81.13, align 1
  %cmp83.13 = icmp eq i8 %308, 0
  br i1 %cmp83.13, label %if.then.13, label %for.inc90.13

if.then.13:                                       ; preds = %for.inc90.12
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.13

for.inc90.13:                                     ; preds = %if.then.13, %for.inc90.12
  %309 = phi ptr [ %307, %for.inc90.12 ], [ @x264_cqm_jvt4i, %if.then.13 ]
  %arrayidx81.14 = getelementptr inbounds i8, ptr %309, i64 14
  %310 = load i8, ptr %arrayidx81.14, align 1
  %cmp83.14 = icmp eq i8 %310, 0
  br i1 %cmp83.14, label %if.then.14, label %for.inc90.14

if.then.14:                                       ; preds = %for.inc90.13
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.14

for.inc90.14:                                     ; preds = %if.then.14, %for.inc90.13
  %311 = phi ptr [ %309, %for.inc90.13 ], [ @x264_cqm_jvt4i, %if.then.14 ]
  %arrayidx81.15 = getelementptr inbounds i8, ptr %311, i64 15
  %312 = load i8, ptr %arrayidx81.15, align 1
  %cmp83.15 = icmp eq i8 %312, 0
  br i1 %cmp83.15, label %if.then.15, label %for.inc90.15

if.then.15:                                       ; preds = %for.inc90.14
  store ptr @x264_cqm_jvt4i, ptr %scaling_list41, align 8
  br label %for.inc90.15

for.inc90.15:                                     ; preds = %if.then.15, %for.inc90.14
  %arrayidx79.1 = getelementptr inbounds i8, ptr %pps, i64 80
  %313 = load i8, ptr %cqm_4py, align 1
  %cmp83.1 = icmp eq i8 %313, 0
  br i1 %cmp83.1, label %if.then.1, label %for.inc90.1

sw.epilog.sink.split:                             ; preds = %cond.end, %for.cond.preheader
  %x264_cqm_jvt4i.sink293 = phi ptr [ @x264_cqm_flat16, %for.cond.preheader ], [ @x264_cqm_jvt4i, %cond.end ]
  %x264_cqm_jvt4p.sink292 = phi ptr [ @x264_cqm_flat16, %for.cond.preheader ], [ @x264_cqm_jvt4p, %cond.end ]
  %x264_cqm_jvt8i.sink = phi ptr [ @x264_cqm_flat16, %for.cond.preheader ], [ @x264_cqm_jvt8i, %cond.end ]
  %x264_cqm_jvt8p.sink = phi ptr [ @x264_cqm_flat16, %for.cond.preheader ], [ @x264_cqm_jvt8p, %cond.end ]
  %scaling_list27 = getelementptr inbounds i8, ptr %pps, i64 72
  store ptr %x264_cqm_jvt4i.sink293, ptr %scaling_list27, align 8
  %arrayidx29.1 = getelementptr inbounds i8, ptr %pps, i64 80
  store ptr %x264_cqm_jvt4p.sink292, ptr %arrayidx29.1, align 8
  %arrayidx29.2 = getelementptr inbounds i8, ptr %pps, i64 88
  store ptr %x264_cqm_jvt4i.sink293, ptr %arrayidx29.2, align 8
  %arrayidx29.3 = getelementptr inbounds i8, ptr %pps, i64 96
  store ptr %x264_cqm_jvt4p.sink292, ptr %arrayidx29.3, align 8
  %arrayidx29.4 = getelementptr inbounds i8, ptr %pps, i64 104
  store ptr %x264_cqm_jvt8i.sink, ptr %arrayidx29.4, align 8
  %arrayidx29.5 = getelementptr inbounds i8, ptr %pps, i64 112
  store ptr %x264_cqm_jvt8p.sink, ptr %arrayidx29.5, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc90.5.3, %sw.epilog.sink.split, %cond.end
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_pps_write(ptr noundef %s, ptr nocapture noundef readonly %pps) local_unnamed_addr #4 {
entry:
  %p.i = getelementptr inbounds i8, ptr %s, i64 8
  %0 = load ptr, ptr %p.i, align 8
  %1 = ptrtoint ptr %0 to i64
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 3
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %entry.bs_realign.exit_crit_edge, label %if.then.i

entry.bs_realign.exit_crit_edge:                  ; preds = %entry
  %cur_bits.i.i.phi.trans.insert = getelementptr inbounds i8, ptr %s, i64 24
  %.pre = load i64, ptr %cur_bits.i.i.phi.trans.insert, align 8
  %i_left.i.i.phi.trans.insert = getelementptr inbounds i8, ptr %s, i64 32
  %.pre568 = load i32, ptr %i_left.i.i.phi.trans.insert, align 8
  br label %bs_realign.exit

if.then.i:                                        ; preds = %entry
  %idx.ext.i = and i64 %1, 3
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 %idx.neg.i
  store ptr %add.ptr.i, ptr %p.i, align 8
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32
  %3 = shl nuw nsw i32 %idx.ext.tr.i, 3
  %conv4.i = sub nuw nsw i32 64, %3
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32
  store i32 %conv4.i, ptr %i_left.i, align 8
  %4 = load i32, ptr %add.ptr.i, align 4
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %4)
  %conv6.i = zext i32 %add5.i.i to i64
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24
  %5 = shl nuw nsw i32 %conv.i, 3
  %mul8.i = sub nuw nsw i32 32, %5
  %sh_prom.i = zext nneg i32 %mul8.i to i64
  %shr.i = lshr i64 %conv6.i, %sh_prom.i
  store i64 %shr.i, ptr %cur_bits.i, align 8
  br label %bs_realign.exit

bs_realign.exit:                                  ; preds = %entry.bs_realign.exit_crit_edge, %if.then.i
  %6 = phi ptr [ %0, %entry.bs_realign.exit_crit_edge ], [ %add.ptr.i, %if.then.i ]
  %7 = phi i32 [ %.pre568, %entry.bs_realign.exit_crit_edge ], [ %conv4.i, %if.then.i ]
  %8 = phi i64 [ %.pre, %entry.bs_realign.exit_crit_edge ], [ %shr.i, %if.then.i ]
  %9 = load i32, ptr %pps, align 8
  %inc.i = add i32 %9, 1
  %cmp.i = icmp sgt i32 %inc.i, 65535
  %shr.i73 = lshr i32 %inc.i, 16
  %spec.select.i = select i1 %cmp.i, i32 32, i32 0
  %spec.select18.i = select i1 %cmp.i, i32 %shr.i73, i32 %inc.i
  %cmp1.i = icmp sgt i32 %spec.select18.i, 255
  %add.i = or disjoint i32 %spec.select.i, 16
  %shr3.i = lshr i32 %spec.select18.i, 8
  %size.1.i = select i1 %cmp1.i, i32 %add.i, i32 %spec.select.i
  %tmp.1.i = select i1 %cmp1.i, i32 %shr3.i, i32 %spec.select18.i
  %idxprom.i = sext i32 %tmp.1.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i74 = zext i8 %10 to i32
  %add5.i = add nuw nsw i32 %size.1.i, %conv.i74
  %shr6.i = lshr i32 %add5.i, 1
  %cur_bits.i.i = getelementptr inbounds i8, ptr %s, i64 24
  %sh_prom.i.i = zext nneg i32 %shr6.i to i64
  %shl.i.i = shl i64 %8, %sh_prom.i.i
  store i64 %shl.i.i, ptr %cur_bits.i.i, align 8
  %i_left.i.i = getelementptr inbounds i8, ptr %s, i64 32
  %sub.i.i = sub nsw i32 %7, %shr6.i
  store i32 %sub.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i = icmp slt i32 %sub.i.i, 33
  br i1 %cmp.i.i, label %if.then.i.i, label %bs_write.exit.i

if.then.i.i:                                      ; preds = %bs_realign.exit
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64
  %shl7.i.i = shl i64 %shl.i.i, %sh_prom6.i.i
  %add.i.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i)
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32
  store i32 %conv8.i.i, ptr %6, align 4
  %11 = load i32, ptr %i_left.i.i, align 8
  %add.i.i = add nsw i32 %11, 32
  %12 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %12, i64 4
  store ptr %add.ptr.i.i, ptr %p.i, align 8
  %.pre.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i

bs_write.exit.i:                                  ; preds = %if.then.i.i, %bs_realign.exit
  %13 = phi ptr [ %6, %bs_realign.exit ], [ %add.ptr.i.i, %if.then.i.i ]
  %14 = phi i32 [ %sub.i.i, %bs_realign.exit ], [ %add.i.i, %if.then.i.i ]
  %15 = phi i64 [ %shl.i.i, %bs_realign.exit ], [ %.pre.i, %if.then.i.i ]
  %add8.i = add nuw nsw i32 %shr6.i, 1
  %sh_prom.i20.i = zext nneg i32 %add8.i to i64
  %shl.i21.i = shl i64 %15, %sh_prom.i20.i
  %conv.i.i = zext i32 %inc.i to i64
  %or.i.i = or i64 %shl.i21.i, %conv.i.i
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i = sub nsw i32 %14, %add8.i
  store i32 %sub.i23.i, ptr %i_left.i.i, align 8
  %cmp.i24.i = icmp slt i32 %sub.i23.i, 33
  br i1 %cmp.i24.i, label %if.then.i25.i, label %bs_write_ue_big.exit

if.then.i25.i:                                    ; preds = %bs_write.exit.i
  %sh_prom6.i26.i = zext nneg i32 %sub.i23.i to i64
  %shl7.i27.i = shl i64 %or.i.i, %sh_prom6.i26.i
  %add.i.i.i28.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i)
  %conv8.i29.i = trunc i64 %add.i.i.i28.i to i32
  store i32 %conv8.i29.i, ptr %13, align 4
  %16 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i = add nsw i32 %16, 32
  store i32 %add.i31.i, ptr %i_left.i.i, align 8
  %17 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i = getelementptr inbounds i8, ptr %17, i64 4
  store ptr %add.ptr.i32.i, ptr %p.i, align 8
  %.pre569 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue_big.exit

bs_write_ue_big.exit:                             ; preds = %bs_write.exit.i, %if.then.i25.i
  %18 = phi ptr [ %13, %bs_write.exit.i ], [ %add.ptr.i32.i, %if.then.i25.i ]
  %19 = phi i32 [ %sub.i23.i, %bs_write.exit.i ], [ %add.i31.i, %if.then.i25.i ]
  %20 = phi i64 [ %or.i.i, %bs_write.exit.i ], [ %.pre569, %if.then.i25.i ]
  %i_sps_id = getelementptr inbounds i8, ptr %pps, i64 4
  %21 = load i32, ptr %i_sps_id, align 4
  %inc.i75 = add i32 %21, 1
  %cmp.i76 = icmp sgt i32 %inc.i75, 65535
  %shr.i77 = lshr i32 %inc.i75, 16
  %spec.select.i78 = select i1 %cmp.i76, i32 32, i32 0
  %spec.select18.i79 = select i1 %cmp.i76, i32 %shr.i77, i32 %inc.i75
  %cmp1.i80 = icmp sgt i32 %spec.select18.i79, 255
  %add.i81 = or disjoint i32 %spec.select.i78, 16
  %shr3.i82 = lshr i32 %spec.select18.i79, 8
  %size.1.i83 = select i1 %cmp1.i80, i32 %add.i81, i32 %spec.select.i78
  %tmp.1.i84 = select i1 %cmp1.i80, i32 %shr3.i82, i32 %spec.select18.i79
  %idxprom.i85 = sext i32 %tmp.1.i84 to i64
  %arrayidx.i86 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i85
  %22 = load i8, ptr %arrayidx.i86, align 1
  %conv.i87 = zext i8 %22 to i32
  %add5.i88 = add nuw nsw i32 %size.1.i83, %conv.i87
  %shr6.i89 = lshr i32 %add5.i88, 1
  %sh_prom.i.i91 = zext nneg i32 %shr6.i89 to i64
  %shl.i.i92 = shl i64 %20, %sh_prom.i.i91
  store i64 %shl.i.i92, ptr %cur_bits.i.i, align 8
  %sub.i.i94 = sub nsw i32 %19, %shr6.i89
  store i32 %sub.i.i94, ptr %i_left.i.i, align 8
  %cmp.i.i95 = icmp slt i32 %sub.i.i94, 33
  br i1 %cmp.i.i95, label %if.then.i.i112, label %bs_write.exit.i96

if.then.i.i112:                                   ; preds = %bs_write_ue_big.exit
  %sh_prom6.i.i113 = zext nneg i32 %sub.i.i94 to i64
  %shl7.i.i114 = shl i64 %shl.i.i92, %sh_prom6.i.i113
  %add.i.i.i.i115 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i114)
  %conv8.i.i116 = trunc i64 %add.i.i.i.i115 to i32
  store i32 %conv8.i.i116, ptr %18, align 4
  %23 = load i32, ptr %i_left.i.i, align 8
  %add.i.i118 = add nsw i32 %23, 32
  %24 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i119 = getelementptr inbounds i8, ptr %24, i64 4
  store ptr %add.ptr.i.i119, ptr %p.i, align 8
  %.pre.i120 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i96

bs_write.exit.i96:                                ; preds = %if.then.i.i112, %bs_write_ue_big.exit
  %25 = phi ptr [ %18, %bs_write_ue_big.exit ], [ %add.ptr.i.i119, %if.then.i.i112 ]
  %26 = phi i32 [ %sub.i.i94, %bs_write_ue_big.exit ], [ %add.i.i118, %if.then.i.i112 ]
  %27 = phi i64 [ %shl.i.i92, %bs_write_ue_big.exit ], [ %.pre.i120, %if.then.i.i112 ]
  %add8.i97 = add nuw nsw i32 %shr6.i89, 1
  %sh_prom.i20.i98 = zext nneg i32 %add8.i97 to i64
  %shl.i21.i99 = shl i64 %27, %sh_prom.i20.i98
  %conv.i.i100 = zext i32 %inc.i75 to i64
  %or.i.i101 = or i64 %shl.i21.i99, %conv.i.i100
  store i64 %or.i.i101, ptr %cur_bits.i.i, align 8
  %sub.i23.i102 = sub nsw i32 %26, %add8.i97
  store i32 %sub.i23.i102, ptr %i_left.i.i, align 8
  %cmp.i24.i103 = icmp slt i32 %sub.i23.i102, 33
  br i1 %cmp.i24.i103, label %if.then.i25.i104, label %bs_write_ue_big.exit121

if.then.i25.i104:                                 ; preds = %bs_write.exit.i96
  %sh_prom6.i26.i105 = zext nneg i32 %sub.i23.i102 to i64
  %shl7.i27.i106 = shl i64 %or.i.i101, %sh_prom6.i26.i105
  %add.i.i.i28.i107 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i106)
  %conv8.i29.i108 = trunc i64 %add.i.i.i28.i107 to i32
  store i32 %conv8.i29.i108, ptr %25, align 4
  %28 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i110 = add nsw i32 %28, 32
  store i32 %add.i31.i110, ptr %i_left.i.i, align 8
  %29 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i111 = getelementptr inbounds i8, ptr %29, i64 4
  store ptr %add.ptr.i32.i111, ptr %p.i, align 8
  %.pre570 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue_big.exit121

bs_write_ue_big.exit121:                          ; preds = %bs_write.exit.i96, %if.then.i25.i104
  %30 = phi ptr [ %25, %bs_write.exit.i96 ], [ %add.ptr.i32.i111, %if.then.i25.i104 ]
  %31 = phi i32 [ %sub.i23.i102, %bs_write.exit.i96 ], [ %add.i31.i110, %if.then.i25.i104 ]
  %32 = phi i64 [ %or.i.i101, %bs_write.exit.i96 ], [ %.pre570, %if.then.i25.i104 ]
  %b_cabac = getelementptr inbounds i8, ptr %pps, i64 8
  %33 = load i32, ptr %b_cabac, align 8
  %shl.i = shl i64 %32, 1
  %conv.i123 = zext i32 %33 to i64
  %or.i = or i64 %shl.i, %conv.i123
  store i64 %or.i, ptr %cur_bits.i.i, align 8
  %sub.i = add nsw i32 %31, -1
  store i32 %sub.i, ptr %i_left.i.i, align 8
  %cmp.i125 = icmp slt i32 %31, 34
  br i1 %cmp.i125, label %if.then.i126, label %bs_write.exit

if.then.i126:                                     ; preds = %bs_write_ue_big.exit121
  %sh_prom6.i = zext nneg i32 %sub.i to i64
  %shl7.i = shl i64 %or.i, %sh_prom6.i
  %add.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i)
  %conv8.i = trunc i64 %add.i.i.i to i32
  store i32 %conv8.i, ptr %30, align 4
  %34 = load i32, ptr %i_left.i.i, align 8
  %add.i128 = add nsw i32 %34, 32
  store i32 %add.i128, ptr %i_left.i.i, align 8
  %35 = load ptr, ptr %p.i, align 8
  %add.ptr.i129 = getelementptr inbounds i8, ptr %35, i64 4
  store ptr %add.ptr.i129, ptr %p.i, align 8
  %.pre571 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %bs_write_ue_big.exit121, %if.then.i126
  %36 = phi ptr [ %30, %bs_write_ue_big.exit121 ], [ %add.ptr.i129, %if.then.i126 ]
  %37 = phi i32 [ %sub.i, %bs_write_ue_big.exit121 ], [ %add.i128, %if.then.i126 ]
  %38 = phi i64 [ %or.i, %bs_write_ue_big.exit121 ], [ %.pre571, %if.then.i126 ]
  %b_pic_order = getelementptr inbounds i8, ptr %pps, i64 12
  %39 = load i32, ptr %b_pic_order, align 4
  %shl.i131 = shl i64 %38, 1
  %conv.i132 = zext i32 %39 to i64
  %or.i133 = or i64 %shl.i131, %conv.i132
  store i64 %or.i133, ptr %cur_bits.i.i, align 8
  %sub.i135 = add nsw i32 %37, -1
  store i32 %sub.i135, ptr %i_left.i.i, align 8
  %cmp.i136 = icmp slt i32 %37, 34
  br i1 %cmp.i136, label %if.then.i137, label %bs_write.exit145

if.then.i137:                                     ; preds = %bs_write.exit
  %sh_prom6.i138 = zext nneg i32 %sub.i135 to i64
  %shl7.i139 = shl i64 %or.i133, %sh_prom6.i138
  %add.i.i.i140 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i139)
  %conv8.i141 = trunc i64 %add.i.i.i140 to i32
  store i32 %conv8.i141, ptr %36, align 4
  %40 = load i32, ptr %i_left.i.i, align 8
  %add.i143 = add nsw i32 %40, 32
  store i32 %add.i143, ptr %i_left.i.i, align 8
  %41 = load ptr, ptr %p.i, align 8
  %add.ptr.i144 = getelementptr inbounds i8, ptr %41, i64 4
  store ptr %add.ptr.i144, ptr %p.i, align 8
  %.pre572 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit145

bs_write.exit145:                                 ; preds = %bs_write.exit, %if.then.i137
  %42 = phi ptr [ %36, %bs_write.exit ], [ %add.ptr.i144, %if.then.i137 ]
  %43 = phi i32 [ %sub.i135, %bs_write.exit ], [ %add.i143, %if.then.i137 ]
  %44 = phi i64 [ %or.i133, %bs_write.exit ], [ %.pre572, %if.then.i137 ]
  %i_num_slice_groups = getelementptr inbounds i8, ptr %pps, i64 16
  %45 = load i32, ptr %i_num_slice_groups, align 8
  %cmp.i147 = icmp sgt i32 %45, 65535
  %shr.i148 = lshr i32 %45, 16
  %spec.select.i149 = select i1 %cmp.i147, i32 32, i32 0
  %spec.select18.i150 = select i1 %cmp.i147, i32 %shr.i148, i32 %45
  %cmp1.i151 = icmp sgt i32 %spec.select18.i150, 255
  %add.i152 = or disjoint i32 %spec.select.i149, 16
  %shr3.i153 = lshr i32 %spec.select18.i150, 8
  %size.1.i154 = select i1 %cmp1.i151, i32 %add.i152, i32 %spec.select.i149
  %tmp.1.i155 = select i1 %cmp1.i151, i32 %shr3.i153, i32 %spec.select18.i150
  %idxprom.i156 = sext i32 %tmp.1.i155 to i64
  %arrayidx.i157 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i156
  %46 = load i8, ptr %arrayidx.i157, align 1
  %conv.i158 = zext i8 %46 to i32
  %add5.i159 = add nuw nsw i32 %size.1.i154, %conv.i158
  %shr6.i160 = lshr i32 %add5.i159, 1
  %sh_prom.i.i162 = zext nneg i32 %shr6.i160 to i64
  %shl.i.i163 = shl i64 %44, %sh_prom.i.i162
  store i64 %shl.i.i163, ptr %cur_bits.i.i, align 8
  %sub.i.i165 = sub nsw i32 %43, %shr6.i160
  store i32 %sub.i.i165, ptr %i_left.i.i, align 8
  %cmp.i.i166 = icmp slt i32 %sub.i.i165, 33
  br i1 %cmp.i.i166, label %if.then.i.i183, label %bs_write.exit.i167

if.then.i.i183:                                   ; preds = %bs_write.exit145
  %sh_prom6.i.i184 = zext nneg i32 %sub.i.i165 to i64
  %shl7.i.i185 = shl i64 %shl.i.i163, %sh_prom6.i.i184
  %add.i.i.i.i186 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i185)
  %conv8.i.i187 = trunc i64 %add.i.i.i.i186 to i32
  store i32 %conv8.i.i187, ptr %42, align 4
  %47 = load i32, ptr %i_left.i.i, align 8
  %add.i.i189 = add nsw i32 %47, 32
  %48 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i190 = getelementptr inbounds i8, ptr %48, i64 4
  store ptr %add.ptr.i.i190, ptr %p.i, align 8
  %.pre.i191 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i167

bs_write.exit.i167:                               ; preds = %if.then.i.i183, %bs_write.exit145
  %49 = phi ptr [ %42, %bs_write.exit145 ], [ %add.ptr.i.i190, %if.then.i.i183 ]
  %50 = phi i32 [ %sub.i.i165, %bs_write.exit145 ], [ %add.i.i189, %if.then.i.i183 ]
  %51 = phi i64 [ %shl.i.i163, %bs_write.exit145 ], [ %.pre.i191, %if.then.i.i183 ]
  %add8.i168 = add nuw nsw i32 %shr6.i160, 1
  %sh_prom.i20.i169 = zext nneg i32 %add8.i168 to i64
  %shl.i21.i170 = shl i64 %51, %sh_prom.i20.i169
  %conv.i.i171 = zext i32 %45 to i64
  %or.i.i172 = or i64 %shl.i21.i170, %conv.i.i171
  store i64 %or.i.i172, ptr %cur_bits.i.i, align 8
  %sub.i23.i173 = sub nsw i32 %50, %add8.i168
  store i32 %sub.i23.i173, ptr %i_left.i.i, align 8
  %cmp.i24.i174 = icmp slt i32 %sub.i23.i173, 33
  br i1 %cmp.i24.i174, label %if.then.i25.i175, label %bs_write_ue_big.exit192

if.then.i25.i175:                                 ; preds = %bs_write.exit.i167
  %sh_prom6.i26.i176 = zext nneg i32 %sub.i23.i173 to i64
  %shl7.i27.i177 = shl i64 %or.i.i172, %sh_prom6.i26.i176
  %add.i.i.i28.i178 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i177)
  %conv8.i29.i179 = trunc i64 %add.i.i.i28.i178 to i32
  store i32 %conv8.i29.i179, ptr %49, align 4
  %52 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i181 = add nsw i32 %52, 32
  store i32 %add.i31.i181, ptr %i_left.i.i, align 8
  %53 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i182 = getelementptr inbounds i8, ptr %53, i64 4
  store ptr %add.ptr.i32.i182, ptr %p.i, align 8
  %.pre573 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue_big.exit192

bs_write_ue_big.exit192:                          ; preds = %bs_write.exit.i167, %if.then.i25.i175
  %54 = phi ptr [ %49, %bs_write.exit.i167 ], [ %add.ptr.i32.i182, %if.then.i25.i175 ]
  %55 = phi i32 [ %sub.i23.i173, %bs_write.exit.i167 ], [ %add.i31.i181, %if.then.i25.i175 ]
  %56 = phi i64 [ %or.i.i172, %bs_write.exit.i167 ], [ %.pre573, %if.then.i25.i175 ]
  %i_num_ref_idx_l0_default_active = getelementptr inbounds i8, ptr %pps, i64 20
  %57 = load i32, ptr %i_num_ref_idx_l0_default_active, align 4
  %cmp.i194 = icmp sgt i32 %57, 65535
  %shr.i195 = lshr i32 %57, 16
  %spec.select.i196 = select i1 %cmp.i194, i32 32, i32 0
  %spec.select18.i197 = select i1 %cmp.i194, i32 %shr.i195, i32 %57
  %cmp1.i198 = icmp sgt i32 %spec.select18.i197, 255
  %add.i199 = or disjoint i32 %spec.select.i196, 16
  %shr3.i200 = lshr i32 %spec.select18.i197, 8
  %size.1.i201 = select i1 %cmp1.i198, i32 %add.i199, i32 %spec.select.i196
  %tmp.1.i202 = select i1 %cmp1.i198, i32 %shr3.i200, i32 %spec.select18.i197
  %idxprom.i203 = sext i32 %tmp.1.i202 to i64
  %arrayidx.i204 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i203
  %58 = load i8, ptr %arrayidx.i204, align 1
  %conv.i205 = zext i8 %58 to i32
  %add5.i206 = add nuw nsw i32 %size.1.i201, %conv.i205
  %shr6.i207 = lshr i32 %add5.i206, 1
  %sh_prom.i.i209 = zext nneg i32 %shr6.i207 to i64
  %shl.i.i210 = shl i64 %56, %sh_prom.i.i209
  store i64 %shl.i.i210, ptr %cur_bits.i.i, align 8
  %sub.i.i212 = sub nsw i32 %55, %shr6.i207
  store i32 %sub.i.i212, ptr %i_left.i.i, align 8
  %cmp.i.i213 = icmp slt i32 %sub.i.i212, 33
  br i1 %cmp.i.i213, label %if.then.i.i230, label %bs_write.exit.i214

if.then.i.i230:                                   ; preds = %bs_write_ue_big.exit192
  %sh_prom6.i.i231 = zext nneg i32 %sub.i.i212 to i64
  %shl7.i.i232 = shl i64 %shl.i.i210, %sh_prom6.i.i231
  %add.i.i.i.i233 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i232)
  %conv8.i.i234 = trunc i64 %add.i.i.i.i233 to i32
  store i32 %conv8.i.i234, ptr %54, align 4
  %59 = load i32, ptr %i_left.i.i, align 8
  %add.i.i236 = add nsw i32 %59, 32
  %60 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i237 = getelementptr inbounds i8, ptr %60, i64 4
  store ptr %add.ptr.i.i237, ptr %p.i, align 8
  %.pre.i238 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i214

bs_write.exit.i214:                               ; preds = %if.then.i.i230, %bs_write_ue_big.exit192
  %61 = phi ptr [ %54, %bs_write_ue_big.exit192 ], [ %add.ptr.i.i237, %if.then.i.i230 ]
  %62 = phi i32 [ %sub.i.i212, %bs_write_ue_big.exit192 ], [ %add.i.i236, %if.then.i.i230 ]
  %63 = phi i64 [ %shl.i.i210, %bs_write_ue_big.exit192 ], [ %.pre.i238, %if.then.i.i230 ]
  %add8.i215 = add nuw nsw i32 %shr6.i207, 1
  %sh_prom.i20.i216 = zext nneg i32 %add8.i215 to i64
  %shl.i21.i217 = shl i64 %63, %sh_prom.i20.i216
  %conv.i.i218 = zext i32 %57 to i64
  %or.i.i219 = or i64 %shl.i21.i217, %conv.i.i218
  store i64 %or.i.i219, ptr %cur_bits.i.i, align 8
  %sub.i23.i220 = sub nsw i32 %62, %add8.i215
  store i32 %sub.i23.i220, ptr %i_left.i.i, align 8
  %cmp.i24.i221 = icmp slt i32 %sub.i23.i220, 33
  br i1 %cmp.i24.i221, label %if.then.i25.i222, label %bs_write_ue_big.exit239

if.then.i25.i222:                                 ; preds = %bs_write.exit.i214
  %sh_prom6.i26.i223 = zext nneg i32 %sub.i23.i220 to i64
  %shl7.i27.i224 = shl i64 %or.i.i219, %sh_prom6.i26.i223
  %add.i.i.i28.i225 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i224)
  %conv8.i29.i226 = trunc i64 %add.i.i.i28.i225 to i32
  store i32 %conv8.i29.i226, ptr %61, align 4
  %64 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i228 = add nsw i32 %64, 32
  store i32 %add.i31.i228, ptr %i_left.i.i, align 8
  %65 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i229 = getelementptr inbounds i8, ptr %65, i64 4
  store ptr %add.ptr.i32.i229, ptr %p.i, align 8
  %.pre574 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue_big.exit239

bs_write_ue_big.exit239:                          ; preds = %bs_write.exit.i214, %if.then.i25.i222
  %66 = phi ptr [ %61, %bs_write.exit.i214 ], [ %add.ptr.i32.i229, %if.then.i25.i222 ]
  %67 = phi i32 [ %sub.i23.i220, %bs_write.exit.i214 ], [ %add.i31.i228, %if.then.i25.i222 ]
  %68 = phi i64 [ %or.i.i219, %bs_write.exit.i214 ], [ %.pre574, %if.then.i25.i222 ]
  %i_num_ref_idx_l1_default_active = getelementptr inbounds i8, ptr %pps, i64 24
  %69 = load i32, ptr %i_num_ref_idx_l1_default_active, align 8
  %cmp.i241 = icmp sgt i32 %69, 65535
  %shr.i242 = lshr i32 %69, 16
  %spec.select.i243 = select i1 %cmp.i241, i32 32, i32 0
  %spec.select18.i244 = select i1 %cmp.i241, i32 %shr.i242, i32 %69
  %cmp1.i245 = icmp sgt i32 %spec.select18.i244, 255
  %add.i246 = or disjoint i32 %spec.select.i243, 16
  %shr3.i247 = lshr i32 %spec.select18.i244, 8
  %size.1.i248 = select i1 %cmp1.i245, i32 %add.i246, i32 %spec.select.i243
  %tmp.1.i249 = select i1 %cmp1.i245, i32 %shr3.i247, i32 %spec.select18.i244
  %idxprom.i250 = sext i32 %tmp.1.i249 to i64
  %arrayidx.i251 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i250
  %70 = load i8, ptr %arrayidx.i251, align 1
  %conv.i252 = zext i8 %70 to i32
  %add5.i253 = add nuw nsw i32 %size.1.i248, %conv.i252
  %shr6.i254 = lshr i32 %add5.i253, 1
  %sh_prom.i.i256 = zext nneg i32 %shr6.i254 to i64
  %shl.i.i257 = shl i64 %68, %sh_prom.i.i256
  store i64 %shl.i.i257, ptr %cur_bits.i.i, align 8
  %sub.i.i259 = sub nsw i32 %67, %shr6.i254
  store i32 %sub.i.i259, ptr %i_left.i.i, align 8
  %cmp.i.i260 = icmp slt i32 %sub.i.i259, 33
  br i1 %cmp.i.i260, label %if.then.i.i277, label %bs_write.exit.i261

if.then.i.i277:                                   ; preds = %bs_write_ue_big.exit239
  %sh_prom6.i.i278 = zext nneg i32 %sub.i.i259 to i64
  %shl7.i.i279 = shl i64 %shl.i.i257, %sh_prom6.i.i278
  %add.i.i.i.i280 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i279)
  %conv8.i.i281 = trunc i64 %add.i.i.i.i280 to i32
  store i32 %conv8.i.i281, ptr %66, align 4
  %71 = load i32, ptr %i_left.i.i, align 8
  %add.i.i283 = add nsw i32 %71, 32
  %72 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i284 = getelementptr inbounds i8, ptr %72, i64 4
  store ptr %add.ptr.i.i284, ptr %p.i, align 8
  %.pre.i285 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i261

bs_write.exit.i261:                               ; preds = %if.then.i.i277, %bs_write_ue_big.exit239
  %73 = phi ptr [ %66, %bs_write_ue_big.exit239 ], [ %add.ptr.i.i284, %if.then.i.i277 ]
  %74 = phi i32 [ %sub.i.i259, %bs_write_ue_big.exit239 ], [ %add.i.i283, %if.then.i.i277 ]
  %75 = phi i64 [ %shl.i.i257, %bs_write_ue_big.exit239 ], [ %.pre.i285, %if.then.i.i277 ]
  %add8.i262 = add nuw nsw i32 %shr6.i254, 1
  %sh_prom.i20.i263 = zext nneg i32 %add8.i262 to i64
  %shl.i21.i264 = shl i64 %75, %sh_prom.i20.i263
  %conv.i.i265 = zext i32 %69 to i64
  %or.i.i266 = or i64 %shl.i21.i264, %conv.i.i265
  store i64 %or.i.i266, ptr %cur_bits.i.i, align 8
  %sub.i23.i267 = sub nsw i32 %74, %add8.i262
  store i32 %sub.i23.i267, ptr %i_left.i.i, align 8
  %cmp.i24.i268 = icmp slt i32 %sub.i23.i267, 33
  br i1 %cmp.i24.i268, label %if.then.i25.i269, label %bs_write_ue_big.exit286

if.then.i25.i269:                                 ; preds = %bs_write.exit.i261
  %sh_prom6.i26.i270 = zext nneg i32 %sub.i23.i267 to i64
  %shl7.i27.i271 = shl i64 %or.i.i266, %sh_prom6.i26.i270
  %add.i.i.i28.i272 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i271)
  %conv8.i29.i273 = trunc i64 %add.i.i.i28.i272 to i32
  store i32 %conv8.i29.i273, ptr %73, align 4
  %76 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i275 = add nsw i32 %76, 32
  store i32 %add.i31.i275, ptr %i_left.i.i, align 8
  %77 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i276 = getelementptr inbounds i8, ptr %77, i64 4
  store ptr %add.ptr.i32.i276, ptr %p.i, align 8
  %.pre575 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue_big.exit286

bs_write_ue_big.exit286:                          ; preds = %bs_write.exit.i261, %if.then.i25.i269
  %78 = phi ptr [ %73, %bs_write.exit.i261 ], [ %add.ptr.i32.i276, %if.then.i25.i269 ]
  %79 = phi i32 [ %sub.i23.i267, %bs_write.exit.i261 ], [ %add.i31.i275, %if.then.i25.i269 ]
  %80 = phi i64 [ %or.i.i266, %bs_write.exit.i261 ], [ %.pre575, %if.then.i25.i269 ]
  %b_weighted_pred = getelementptr inbounds i8, ptr %pps, i64 28
  %81 = load i32, ptr %b_weighted_pred, align 4
  %shl.i288 = shl i64 %80, 1
  %conv.i289 = zext i32 %81 to i64
  %or.i290 = or i64 %shl.i288, %conv.i289
  store i64 %or.i290, ptr %cur_bits.i.i, align 8
  %sub.i292 = add nsw i32 %79, -1
  store i32 %sub.i292, ptr %i_left.i.i, align 8
  %cmp.i293 = icmp slt i32 %79, 34
  br i1 %cmp.i293, label %if.then.i294, label %bs_write.exit302

if.then.i294:                                     ; preds = %bs_write_ue_big.exit286
  %sh_prom6.i295 = zext nneg i32 %sub.i292 to i64
  %shl7.i296 = shl i64 %or.i290, %sh_prom6.i295
  %add.i.i.i297 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i296)
  %conv8.i298 = trunc i64 %add.i.i.i297 to i32
  store i32 %conv8.i298, ptr %78, align 4
  %82 = load i32, ptr %i_left.i.i, align 8
  %add.i300 = add nsw i32 %82, 32
  store i32 %add.i300, ptr %i_left.i.i, align 8
  %83 = load ptr, ptr %p.i, align 8
  %add.ptr.i301 = getelementptr inbounds i8, ptr %83, i64 4
  store ptr %add.ptr.i301, ptr %p.i, align 8
  %.pre576 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit302

bs_write.exit302:                                 ; preds = %bs_write_ue_big.exit286, %if.then.i294
  %84 = phi ptr [ %78, %bs_write_ue_big.exit286 ], [ %add.ptr.i301, %if.then.i294 ]
  %85 = phi i32 [ %sub.i292, %bs_write_ue_big.exit286 ], [ %add.i300, %if.then.i294 ]
  %86 = phi i64 [ %or.i290, %bs_write_ue_big.exit286 ], [ %.pre576, %if.then.i294 ]
  %b_weighted_bipred = getelementptr inbounds i8, ptr %pps, i64 32
  %87 = load i32, ptr %b_weighted_bipred, align 8
  %shl.i304 = shl i64 %86, 2
  %conv.i305 = zext i32 %87 to i64
  %or.i306 = or i64 %shl.i304, %conv.i305
  store i64 %or.i306, ptr %cur_bits.i.i, align 8
  %sub.i308 = add nsw i32 %85, -2
  store i32 %sub.i308, ptr %i_left.i.i, align 8
  %cmp.i309 = icmp slt i32 %85, 35
  br i1 %cmp.i309, label %if.then.i310, label %bs_write.exit318

if.then.i310:                                     ; preds = %bs_write.exit302
  %sh_prom6.i311 = zext nneg i32 %sub.i308 to i64
  %shl7.i312 = shl i64 %or.i306, %sh_prom6.i311
  %add.i.i.i313 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i312)
  %conv8.i314 = trunc i64 %add.i.i.i313 to i32
  store i32 %conv8.i314, ptr %84, align 4
  %88 = load i32, ptr %i_left.i.i, align 8
  %add.i316 = add nsw i32 %88, 32
  store i32 %add.i316, ptr %i_left.i.i, align 8
  %89 = load ptr, ptr %p.i, align 8
  %add.ptr.i317 = getelementptr inbounds i8, ptr %89, i64 4
  store ptr %add.ptr.i317, ptr %p.i, align 8
  %.pre577 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit318

bs_write.exit318:                                 ; preds = %bs_write.exit302, %if.then.i310
  %90 = phi ptr [ %84, %bs_write.exit302 ], [ %add.ptr.i317, %if.then.i310 ]
  %91 = phi i32 [ %sub.i308, %bs_write.exit302 ], [ %add.i316, %if.then.i310 ]
  %92 = phi i64 [ %or.i306, %bs_write.exit302 ], [ %.pre577, %if.then.i310 ]
  %i_pic_init_qp = getelementptr inbounds i8, ptr %pps, i64 36
  %93 = load i32, ptr %i_pic_init_qp, align 4
  %sub3 = shl i32 %93, 1
  %mul.i = add i32 %sub3, -52
  %sub.i319 = sub i32 53, %sub3
  %cmp.i320 = icmp sgt i32 %93, 26
  %spec.select.i321 = select i1 %cmp.i320, i32 %mul.i, i32 %sub.i319
  %cmp2.i = icmp sgt i32 %spec.select.i321, 255
  %shr.i322 = lshr i32 %spec.select.i321, 8
  %size.0.i = select i1 %cmp2.i, i32 16, i32 0
  %tmp.1.i323 = select i1 %cmp2.i, i32 %shr.i322, i32 %spec.select.i321
  %idxprom.i324 = sext i32 %tmp.1.i323 to i64
  %arrayidx.i325 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i324
  %94 = load i8, ptr %arrayidx.i325, align 1
  %conv.i326 = zext i8 %94 to i32
  %add.i327 = add nuw nsw i32 %size.0.i, %conv.i326
  %sh_prom.i.i329 = zext nneg i32 %add.i327 to i64
  %shl.i.i330 = shl i64 %92, %sh_prom.i.i329
  %conv.i.i331 = zext i32 %spec.select.i321 to i64
  %or.i.i332 = or i64 %shl.i.i330, %conv.i.i331
  store i64 %or.i.i332, ptr %cur_bits.i.i, align 8
  %sub.i.i334 = sub nsw i32 %91, %add.i327
  store i32 %sub.i.i334, ptr %i_left.i.i, align 8
  %cmp.i.i335 = icmp slt i32 %sub.i.i334, 33
  br i1 %cmp.i.i335, label %if.then.i.i337, label %bs_write_se.exit

if.then.i.i337:                                   ; preds = %bs_write.exit318
  %sh_prom6.i.i338 = zext nneg i32 %sub.i.i334 to i64
  %shl7.i.i339 = shl i64 %or.i.i332, %sh_prom6.i.i338
  %add.i.i.i.i340 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i339)
  %conv8.i.i341 = trunc i64 %add.i.i.i.i340 to i32
  store i32 %conv8.i.i341, ptr %90, align 4
  %95 = load i32, ptr %i_left.i.i, align 8
  %add.i.i343 = add nsw i32 %95, 32
  store i32 %add.i.i343, ptr %i_left.i.i, align 8
  %96 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i344 = getelementptr inbounds i8, ptr %96, i64 4
  store ptr %add.ptr.i.i344, ptr %p.i, align 8
  %.pre578 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_se.exit

bs_write_se.exit:                                 ; preds = %bs_write.exit318, %if.then.i.i337
  %97 = phi ptr [ %90, %bs_write.exit318 ], [ %add.ptr.i.i344, %if.then.i.i337 ]
  %98 = phi i32 [ %sub.i.i334, %bs_write.exit318 ], [ %add.i.i343, %if.then.i.i337 ]
  %99 = phi i64 [ %or.i.i332, %bs_write.exit318 ], [ %.pre578, %if.then.i.i337 ]
  %i_pic_init_qs = getelementptr inbounds i8, ptr %pps, i64 40
  %100 = load i32, ptr %i_pic_init_qs, align 8
  %sub4 = shl i32 %100, 1
  %mul.i345 = add i32 %sub4, -52
  %sub.i346 = sub i32 53, %sub4
  %cmp.i347 = icmp sgt i32 %100, 26
  %spec.select.i348 = select i1 %cmp.i347, i32 %mul.i345, i32 %sub.i346
  %cmp2.i349 = icmp sgt i32 %spec.select.i348, 255
  %shr.i350 = lshr i32 %spec.select.i348, 8
  %size.0.i351 = select i1 %cmp2.i349, i32 16, i32 0
  %tmp.1.i352 = select i1 %cmp2.i349, i32 %shr.i350, i32 %spec.select.i348
  %idxprom.i353 = sext i32 %tmp.1.i352 to i64
  %arrayidx.i354 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i353
  %101 = load i8, ptr %arrayidx.i354, align 1
  %conv.i355 = zext i8 %101 to i32
  %add.i356 = add nuw nsw i32 %size.0.i351, %conv.i355
  %sh_prom.i.i358 = zext nneg i32 %add.i356 to i64
  %shl.i.i359 = shl i64 %99, %sh_prom.i.i358
  %conv.i.i360 = zext i32 %spec.select.i348 to i64
  %or.i.i361 = or i64 %shl.i.i359, %conv.i.i360
  store i64 %or.i.i361, ptr %cur_bits.i.i, align 8
  %sub.i.i363 = sub nsw i32 %98, %add.i356
  store i32 %sub.i.i363, ptr %i_left.i.i, align 8
  %cmp.i.i364 = icmp slt i32 %sub.i.i363, 33
  br i1 %cmp.i.i364, label %if.then.i.i366, label %bs_write_se.exit374

if.then.i.i366:                                   ; preds = %bs_write_se.exit
  %sh_prom6.i.i367 = zext nneg i32 %sub.i.i363 to i64
  %shl7.i.i368 = shl i64 %or.i.i361, %sh_prom6.i.i367
  %add.i.i.i.i369 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i368)
  %conv8.i.i370 = trunc i64 %add.i.i.i.i369 to i32
  store i32 %conv8.i.i370, ptr %97, align 4
  %102 = load i32, ptr %i_left.i.i, align 8
  %add.i.i372 = add nsw i32 %102, 32
  store i32 %add.i.i372, ptr %i_left.i.i, align 8
  %103 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i373 = getelementptr inbounds i8, ptr %103, i64 4
  store ptr %add.ptr.i.i373, ptr %p.i, align 8
  %.pre579 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_se.exit374

bs_write_se.exit374:                              ; preds = %bs_write_se.exit, %if.then.i.i366
  %104 = phi ptr [ %97, %bs_write_se.exit ], [ %add.ptr.i.i373, %if.then.i.i366 ]
  %105 = phi i32 [ %sub.i.i363, %bs_write_se.exit ], [ %add.i.i372, %if.then.i.i366 ]
  %106 = phi i64 [ %or.i.i361, %bs_write_se.exit ], [ %.pre579, %if.then.i.i366 ]
  %i_chroma_qp_index_offset = getelementptr inbounds i8, ptr %pps, i64 44
  %107 = load i32, ptr %i_chroma_qp_index_offset, align 4
  %mul.i375 = shl nsw i32 %107, 1
  %sub.i376 = sub nsw i32 1, %mul.i375
  %cmp.i377 = icmp sgt i32 %107, 0
  %spec.select.i378 = select i1 %cmp.i377, i32 %mul.i375, i32 %sub.i376
  %cmp2.i379 = icmp sgt i32 %spec.select.i378, 255
  %shr.i380 = lshr i32 %spec.select.i378, 8
  %size.0.i381 = select i1 %cmp2.i379, i32 16, i32 0
  %tmp.1.i382 = select i1 %cmp2.i379, i32 %shr.i380, i32 %spec.select.i378
  %idxprom.i383 = sext i32 %tmp.1.i382 to i64
  %arrayidx.i384 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i383
  %108 = load i8, ptr %arrayidx.i384, align 1
  %conv.i385 = zext i8 %108 to i32
  %add.i386 = add nuw nsw i32 %size.0.i381, %conv.i385
  %sh_prom.i.i388 = zext nneg i32 %add.i386 to i64
  %shl.i.i389 = shl i64 %106, %sh_prom.i.i388
  %conv.i.i390 = zext i32 %spec.select.i378 to i64
  %or.i.i391 = or i64 %shl.i.i389, %conv.i.i390
  store i64 %or.i.i391, ptr %cur_bits.i.i, align 8
  %sub.i.i393 = sub nsw i32 %105, %add.i386
  store i32 %sub.i.i393, ptr %i_left.i.i, align 8
  %cmp.i.i394 = icmp slt i32 %sub.i.i393, 33
  br i1 %cmp.i.i394, label %if.then.i.i396, label %bs_write_se.exit404

if.then.i.i396:                                   ; preds = %bs_write_se.exit374
  %sh_prom6.i.i397 = zext nneg i32 %sub.i.i393 to i64
  %shl7.i.i398 = shl i64 %or.i.i391, %sh_prom6.i.i397
  %add.i.i.i.i399 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i398)
  %conv8.i.i400 = trunc i64 %add.i.i.i.i399 to i32
  store i32 %conv8.i.i400, ptr %104, align 4
  %109 = load i32, ptr %i_left.i.i, align 8
  %add.i.i402 = add nsw i32 %109, 32
  store i32 %add.i.i402, ptr %i_left.i.i, align 8
  %110 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i403 = getelementptr inbounds i8, ptr %110, i64 4
  store ptr %add.ptr.i.i403, ptr %p.i, align 8
  %.pre580 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_se.exit404

bs_write_se.exit404:                              ; preds = %bs_write_se.exit374, %if.then.i.i396
  %111 = phi ptr [ %104, %bs_write_se.exit374 ], [ %add.ptr.i.i403, %if.then.i.i396 ]
  %112 = phi i32 [ %sub.i.i393, %bs_write_se.exit374 ], [ %add.i.i402, %if.then.i.i396 ]
  %113 = phi i64 [ %or.i.i391, %bs_write_se.exit374 ], [ %.pre580, %if.then.i.i396 ]
  %b_deblocking_filter_control = getelementptr inbounds i8, ptr %pps, i64 48
  %114 = load i32, ptr %b_deblocking_filter_control, align 8
  %shl.i406 = shl i64 %113, 1
  %conv.i407 = zext i32 %114 to i64
  %or.i408 = or i64 %shl.i406, %conv.i407
  store i64 %or.i408, ptr %cur_bits.i.i, align 8
  %sub.i410 = add nsw i32 %112, -1
  store i32 %sub.i410, ptr %i_left.i.i, align 8
  %cmp.i411 = icmp slt i32 %112, 34
  br i1 %cmp.i411, label %if.then.i412, label %bs_write.exit420

if.then.i412:                                     ; preds = %bs_write_se.exit404
  %sh_prom6.i413 = zext nneg i32 %sub.i410 to i64
  %shl7.i414 = shl i64 %or.i408, %sh_prom6.i413
  %add.i.i.i415 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i414)
  %conv8.i416 = trunc i64 %add.i.i.i415 to i32
  store i32 %conv8.i416, ptr %111, align 4
  %115 = load i32, ptr %i_left.i.i, align 8
  %add.i418 = add nsw i32 %115, 32
  store i32 %add.i418, ptr %i_left.i.i, align 8
  %116 = load ptr, ptr %p.i, align 8
  %add.ptr.i419 = getelementptr inbounds i8, ptr %116, i64 4
  store ptr %add.ptr.i419, ptr %p.i, align 8
  %.pre581 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit420

bs_write.exit420:                                 ; preds = %bs_write_se.exit404, %if.then.i412
  %117 = phi ptr [ %111, %bs_write_se.exit404 ], [ %add.ptr.i419, %if.then.i412 ]
  %118 = phi i32 [ %sub.i410, %bs_write_se.exit404 ], [ %add.i418, %if.then.i412 ]
  %119 = phi i64 [ %or.i408, %bs_write_se.exit404 ], [ %.pre581, %if.then.i412 ]
  %b_constrained_intra_pred = getelementptr inbounds i8, ptr %pps, i64 52
  %120 = load i32, ptr %b_constrained_intra_pred, align 4
  %shl.i422 = shl i64 %119, 1
  %conv.i423 = zext i32 %120 to i64
  %or.i424 = or i64 %shl.i422, %conv.i423
  store i64 %or.i424, ptr %cur_bits.i.i, align 8
  %sub.i426 = add nsw i32 %118, -1
  store i32 %sub.i426, ptr %i_left.i.i, align 8
  %cmp.i427 = icmp slt i32 %118, 34
  br i1 %cmp.i427, label %if.then.i428, label %bs_write.exit436

if.then.i428:                                     ; preds = %bs_write.exit420
  %sh_prom6.i429 = zext nneg i32 %sub.i426 to i64
  %shl7.i430 = shl i64 %or.i424, %sh_prom6.i429
  %add.i.i.i431 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i430)
  %conv8.i432 = trunc i64 %add.i.i.i431 to i32
  store i32 %conv8.i432, ptr %117, align 4
  %121 = load i32, ptr %i_left.i.i, align 8
  %add.i434 = add nsw i32 %121, 32
  store i32 %add.i434, ptr %i_left.i.i, align 8
  %122 = load ptr, ptr %p.i, align 8
  %add.ptr.i435 = getelementptr inbounds i8, ptr %122, i64 4
  store ptr %add.ptr.i435, ptr %p.i, align 8
  %.pre582 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit436

bs_write.exit436:                                 ; preds = %bs_write.exit420, %if.then.i428
  %123 = phi ptr [ %117, %bs_write.exit420 ], [ %add.ptr.i435, %if.then.i428 ]
  %124 = phi i32 [ %sub.i426, %bs_write.exit420 ], [ %add.i434, %if.then.i428 ]
  %125 = phi i64 [ %or.i424, %bs_write.exit420 ], [ %.pre582, %if.then.i428 ]
  %b_redundant_pic_cnt = getelementptr inbounds i8, ptr %pps, i64 56
  %126 = load i32, ptr %b_redundant_pic_cnt, align 8
  %shl.i438 = shl i64 %125, 1
  %conv.i439 = zext i32 %126 to i64
  %or.i440 = or i64 %shl.i438, %conv.i439
  store i64 %or.i440, ptr %cur_bits.i.i, align 8
  %sub.i442 = add nsw i32 %124, -1
  store i32 %sub.i442, ptr %i_left.i.i, align 8
  %cmp.i443 = icmp slt i32 %124, 34
  br i1 %cmp.i443, label %if.then.i444, label %bs_write.exit452

if.then.i444:                                     ; preds = %bs_write.exit436
  %sh_prom6.i445 = zext nneg i32 %sub.i442 to i64
  %shl7.i446 = shl i64 %or.i440, %sh_prom6.i445
  %add.i.i.i447 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i446)
  %conv8.i448 = trunc i64 %add.i.i.i447 to i32
  store i32 %conv8.i448, ptr %123, align 4
  %127 = load i32, ptr %i_left.i.i, align 8
  %add.i450 = add nsw i32 %127, 32
  store i32 %add.i450, ptr %i_left.i.i, align 8
  %128 = load ptr, ptr %p.i, align 8
  %add.ptr.i451 = getelementptr inbounds i8, ptr %128, i64 4
  store ptr %add.ptr.i451, ptr %p.i, align 8
  br label %bs_write.exit452

bs_write.exit452:                                 ; preds = %bs_write.exit436, %if.then.i444
  %129 = phi ptr [ %123, %bs_write.exit436 ], [ %add.ptr.i451, %if.then.i444 ]
  %130 = phi i32 [ %sub.i442, %bs_write.exit436 ], [ %add.i450, %if.then.i444 ]
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %pps, i64 60
  %131 = load i32, ptr %b_transform_8x8_mode, align 4
  %tobool.not = icmp eq i32 %131, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %bs_write.exit452
  %i_cqm_preset = getelementptr inbounds i8, ptr %pps, i64 64
  %132 = load i32, ptr %i_cqm_preset, align 8
  %cmp.not = icmp eq i32 %132, 0
  br i1 %cmp.not, label %if.end17, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %bs_write.exit452
  %133 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i454 = shl i64 %133, 1
  %conv.i455 = zext i32 %131 to i64
  %or.i456 = or i64 %shl.i454, %conv.i455
  store i64 %or.i456, ptr %cur_bits.i.i, align 8
  %sub.i458 = add nsw i32 %130, -1
  store i32 %sub.i458, ptr %i_left.i.i, align 8
  %cmp.i459 = icmp slt i32 %130, 34
  br i1 %cmp.i459, label %if.then.i460, label %bs_write.exit468

if.then.i460:                                     ; preds = %if.then
  %sh_prom6.i461 = zext nneg i32 %sub.i458 to i64
  %shl7.i462 = shl i64 %or.i456, %sh_prom6.i461
  %add.i.i.i463 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i462)
  %conv8.i464 = trunc i64 %add.i.i.i463 to i32
  store i32 %conv8.i464, ptr %129, align 4
  %134 = load i32, ptr %i_left.i.i, align 8
  %add.i466 = add nsw i32 %134, 32
  store i32 %add.i466, ptr %i_left.i.i, align 8
  %135 = load ptr, ptr %p.i, align 8
  %add.ptr.i467 = getelementptr inbounds i8, ptr %135, i64 4
  store ptr %add.ptr.i467, ptr %p.i, align 8
  %.pre583 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit468

bs_write.exit468:                                 ; preds = %if.then, %if.then.i460
  %136 = phi ptr [ %129, %if.then ], [ %add.ptr.i467, %if.then.i460 ]
  %137 = phi i32 [ %sub.i458, %if.then ], [ %add.i466, %if.then.i460 ]
  %138 = phi i64 [ %or.i456, %if.then ], [ %.pre583, %if.then.i460 ]
  %i_cqm_preset6 = getelementptr inbounds i8, ptr %pps, i64 64
  %139 = load i32, ptr %i_cqm_preset6, align 8
  %cmp7 = icmp ne i32 %139, 0
  %shl.i470 = shl i64 %138, 1
  %conv.i471 = zext i1 %cmp7 to i64
  %or.i472 = or disjoint i64 %shl.i470, %conv.i471
  store i64 %or.i472, ptr %cur_bits.i.i, align 8
  %sub.i474 = add nsw i32 %137, -1
  store i32 %sub.i474, ptr %i_left.i.i, align 8
  %cmp.i475 = icmp slt i32 %137, 34
  br i1 %cmp.i475, label %if.then.i476, label %bs_write.exit484

if.then.i476:                                     ; preds = %bs_write.exit468
  %sh_prom6.i477 = zext nneg i32 %sub.i474 to i64
  %shl7.i478 = shl i64 %or.i472, %sh_prom6.i477
  %add.i.i.i479 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i478)
  %conv8.i480 = trunc i64 %add.i.i.i479 to i32
  store i32 %conv8.i480, ptr %136, align 4
  %140 = load i32, ptr %i_left.i.i, align 8
  %add.i482 = add nsw i32 %140, 32
  store i32 %add.i482, ptr %i_left.i.i, align 8
  %141 = load ptr, ptr %p.i, align 8
  %add.ptr.i483 = getelementptr inbounds i8, ptr %141, i64 4
  store ptr %add.ptr.i483, ptr %p.i, align 8
  br label %bs_write.exit484

bs_write.exit484:                                 ; preds = %bs_write.exit468, %if.then.i476
  %142 = phi i32 [ %sub.i474, %bs_write.exit468 ], [ %add.i482, %if.then.i476 ]
  %143 = load i32, ptr %i_cqm_preset6, align 8
  %cmp9.not = icmp eq i32 %143, 0
  br i1 %cmp9.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %bs_write.exit484
  tail call fastcc void @scaling_list_write(ptr noundef nonnull %s, ptr noundef nonnull %pps, i32 noundef 0)
  tail call fastcc void @scaling_list_write(ptr noundef nonnull %s, ptr noundef nonnull %pps, i32 noundef 2)
  %144 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i486 = shl i64 %144, 1
  store i64 %shl.i486, ptr %cur_bits.i.i, align 8
  %145 = load i32, ptr %i_left.i.i, align 8
  %sub.i489 = add nsw i32 %145, -1
  store i32 %sub.i489, ptr %i_left.i.i, align 8
  %cmp.i490 = icmp slt i32 %145, 34
  br i1 %cmp.i490, label %if.then.i491, label %bs_write.exit499

if.then.i491:                                     ; preds = %if.then11
  %sh_prom6.i492 = zext nneg i32 %sub.i489 to i64
  %shl7.i493 = shl i64 %shl.i486, %sh_prom6.i492
  %add.i.i.i494 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i493)
  %conv8.i495 = trunc i64 %add.i.i.i494 to i32
  %146 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i495, ptr %146, align 4
  %147 = load i32, ptr %i_left.i.i, align 8
  %add.i497 = add nsw i32 %147, 32
  store i32 %add.i497, ptr %i_left.i.i, align 8
  %148 = load ptr, ptr %p.i, align 8
  %add.ptr.i498 = getelementptr inbounds i8, ptr %148, i64 4
  store ptr %add.ptr.i498, ptr %p.i, align 8
  br label %bs_write.exit499

bs_write.exit499:                                 ; preds = %if.then11, %if.then.i491
  tail call fastcc void @scaling_list_write(ptr noundef nonnull %s, ptr noundef nonnull %pps, i32 noundef 1)
  tail call fastcc void @scaling_list_write(ptr noundef nonnull %s, ptr noundef nonnull %pps, i32 noundef 3)
  %149 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i501 = shl i64 %149, 1
  store i64 %shl.i501, ptr %cur_bits.i.i, align 8
  %150 = load i32, ptr %i_left.i.i, align 8
  %sub.i504 = add nsw i32 %150, -1
  store i32 %sub.i504, ptr %i_left.i.i, align 8
  %cmp.i505 = icmp slt i32 %150, 34
  br i1 %cmp.i505, label %if.then.i506, label %bs_write.exit514

if.then.i506:                                     ; preds = %bs_write.exit499
  %sh_prom6.i507 = zext nneg i32 %sub.i504 to i64
  %shl7.i508 = shl i64 %shl.i501, %sh_prom6.i507
  %add.i.i.i509 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i508)
  %conv8.i510 = trunc i64 %add.i.i.i509 to i32
  %151 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i510, ptr %151, align 4
  %152 = load i32, ptr %i_left.i.i, align 8
  %add.i512 = add nsw i32 %152, 32
  store i32 %add.i512, ptr %i_left.i.i, align 8
  %153 = load ptr, ptr %p.i, align 8
  %add.ptr.i513 = getelementptr inbounds i8, ptr %153, i64 4
  store ptr %add.ptr.i513, ptr %p.i, align 8
  br label %bs_write.exit514

bs_write.exit514:                                 ; preds = %bs_write.exit499, %if.then.i506
  %154 = phi i32 [ %sub.i504, %bs_write.exit499 ], [ %add.i512, %if.then.i506 ]
  %155 = load i32, ptr %b_transform_8x8_mode, align 4
  %tobool13.not = icmp eq i32 %155, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %bs_write.exit514
  tail call fastcc void @scaling_list_write(ptr noundef nonnull %s, ptr noundef nonnull %pps, i32 noundef 4)
  tail call fastcc void @scaling_list_write(ptr noundef nonnull %s, ptr noundef nonnull %pps, i32 noundef 5)
  %.pre584 = load i32, ptr %i_left.i.i, align 8
  br label %if.end15

if.end15:                                         ; preds = %bs_write.exit514, %if.then14, %bs_write.exit484
  %156 = phi i32 [ %154, %bs_write.exit514 ], [ %.pre584, %if.then14 ], [ %142, %bs_write.exit484 ]
  %157 = load i32, ptr %i_chroma_qp_index_offset, align 4
  %mul.i515 = shl nsw i32 %157, 1
  %sub.i516 = sub nsw i32 1, %mul.i515
  %cmp.i517 = icmp sgt i32 %157, 0
  %spec.select.i518 = select i1 %cmp.i517, i32 %mul.i515, i32 %sub.i516
  %cmp2.i519 = icmp sgt i32 %spec.select.i518, 255
  %shr.i520 = lshr i32 %spec.select.i518, 8
  %size.0.i521 = select i1 %cmp2.i519, i32 16, i32 0
  %tmp.1.i522 = select i1 %cmp2.i519, i32 %shr.i520, i32 %spec.select.i518
  %idxprom.i523 = sext i32 %tmp.1.i522 to i64
  %arrayidx.i524 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i523
  %158 = load i8, ptr %arrayidx.i524, align 1
  %conv.i525 = zext i8 %158 to i32
  %add.i526 = add nuw nsw i32 %size.0.i521, %conv.i525
  %159 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i528 = zext nneg i32 %add.i526 to i64
  %shl.i.i529 = shl i64 %159, %sh_prom.i.i528
  %conv.i.i530 = zext i32 %spec.select.i518 to i64
  %or.i.i531 = or i64 %shl.i.i529, %conv.i.i530
  store i64 %or.i.i531, ptr %cur_bits.i.i, align 8
  %sub.i.i533 = sub nsw i32 %156, %add.i526
  store i32 %sub.i.i533, ptr %i_left.i.i, align 8
  %cmp.i.i534 = icmp slt i32 %sub.i.i533, 33
  br i1 %cmp.i.i534, label %if.then.i.i536, label %if.end17

if.then.i.i536:                                   ; preds = %if.end15
  %sh_prom6.i.i537 = zext nneg i32 %sub.i.i533 to i64
  %shl7.i.i538 = shl i64 %or.i.i531, %sh_prom6.i.i537
  %add.i.i.i.i539 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i538)
  %conv8.i.i540 = trunc i64 %add.i.i.i.i539 to i32
  %160 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i540, ptr %160, align 4
  %161 = load i32, ptr %i_left.i.i, align 8
  %add.i.i542 = add nsw i32 %161, 32
  %162 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i543 = getelementptr inbounds i8, ptr %162, i64 4
  store ptr %add.ptr.i.i543, ptr %p.i, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then.i.i536, %if.end15, %lor.lhs.false
  %163 = phi i32 [ %add.i.i542, %if.then.i.i536 ], [ %sub.i.i533, %if.end15 ], [ %130, %lor.lhs.false ]
  %164 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i.i546 = shl i64 %164, 1
  %or.i.i547 = or disjoint i64 %shl.i.i546, 1
  store i64 %or.i.i547, ptr %cur_bits.i.i, align 8
  %dec.i.i = add nsw i32 %163, -1
  %cmp.i.i549 = icmp eq i32 %dec.i.i, 32
  br i1 %cmp.i.i549, label %bs_write1.exit.thread.i, label %bs_write1.exit.i

bs_write1.exit.thread.i:                          ; preds = %if.end17
  %conv6.i.i = trunc i64 %or.i.i547 to i32
  %add5.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i)
  %165 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i.i, ptr %165, align 4
  %166 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i558 = getelementptr inbounds i8, ptr %166, i64 4
  store ptr %add.ptr.i.i558, ptr %p.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  br label %bs_rbsp_trailing.exit

bs_write1.exit.i:                                 ; preds = %if.end17
  %and.i = and i32 %dec.i.i, 7
  %sh_prom.i.i550 = zext nneg i32 %and.i to i64
  %shl.i4.i = shl i64 %or.i.i547, %sh_prom.i.i550
  store i64 %shl.i4.i, ptr %cur_bits.i.i, align 8
  %sub.i.i551 = and i32 %dec.i.i, -8
  store i32 %sub.i.i551, ptr %i_left.i.i, align 8
  %cmp.i7.i = icmp slt i32 %sub.i.i551, 33
  %.pre585 = load ptr, ptr %p.i, align 8
  br i1 %cmp.i7.i, label %if.then.i8.i, label %bs_rbsp_trailing.exit

if.then.i8.i:                                     ; preds = %bs_write1.exit.i
  %sh_prom6.i.i553 = zext nneg i32 %sub.i.i551 to i64
  %167 = tail call i64 @llvm.bswap.i64(i64 %shl.i4.i)
  %add.i.i.i.i554 = lshr i64 %167, %sh_prom6.i.i553
  %conv8.i.i555 = trunc i64 %add.i.i.i.i554 to i32
  store i32 %conv8.i.i555, ptr %.pre585, align 4
  %168 = load i32, ptr %i_left.i.i, align 8
  %add.i.i556 = add nsw i32 %168, 32
  store i32 %add.i.i556, ptr %i_left.i.i, align 8
  %169 = load ptr, ptr %p.i, align 8
  %add.ptr.i10.i = getelementptr inbounds i8, ptr %169, i64 4
  store ptr %add.ptr.i10.i, ptr %p.i, align 8
  br label %bs_rbsp_trailing.exit

bs_rbsp_trailing.exit:                            ; preds = %bs_write1.exit.thread.i, %bs_write1.exit.i, %if.then.i8.i
  %170 = phi ptr [ %add.ptr.i.i558, %bs_write1.exit.thread.i ], [ %.pre585, %bs_write1.exit.i ], [ %add.ptr.i10.i, %if.then.i8.i ]
  %171 = phi i32 [ 64, %bs_write1.exit.thread.i ], [ %sub.i.i551, %bs_write1.exit.i ], [ %add.i.i556, %if.then.i8.i ]
  %172 = load i64, ptr %cur_bits.i.i, align 8
  %and.i561 = and i32 %171, 31
  %sh_prom.i562 = zext nneg i32 %and.i561 to i64
  %shl.i563 = shl i64 %172, %sh_prom.i562
  %conv.i564 = trunc i64 %shl.i563 to i32
  %add5.i.i565 = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i564)
  store i32 %add5.i.i565, ptr %170, align 4
  %173 = load i32, ptr %i_left.i.i, align 8
  %div.neg.i = sdiv i32 %173, -8
  %174 = load ptr, ptr %p.i, align 8
  %175 = sext i32 %div.neg.i to i64
  %176 = getelementptr i8, ptr %174, i64 %175
  %add.ptr.i567 = getelementptr i8, ptr %176, i64 8
  store ptr %add.ptr.i567, ptr %p.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @scaling_list_write(ptr nocapture noundef %s, ptr nocapture noundef readonly %pps, i32 noundef %idx) unnamed_addr #4 {
entry:
  %cmp = icmp slt i32 %idx, 4
  %cond = select i1 %cmp, i32 16, i32 64
  %cond2 = select i1 %cmp, ptr @x264_zigzag_scan4, ptr @x264_zigzag_scan8
  %scaling_list = getelementptr inbounds i8, ptr %pps, i64 72
  %idxprom = zext nneg i32 %idx to i64
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %scaling_list, i64 0, i64 %idxprom
  %0 = load ptr, ptr %arrayidx, align 8
  switch i32 %idx, label %cond.false10 [
    i32 2, label %cond.end14
    i32 3, label %cond.true7
  ]

cond.true7:                                       ; preds = %entry
  %arrayidx9 = getelementptr inbounds i8, ptr %pps, i64 80
  br label %cond.end14

cond.false10:                                     ; preds = %entry
  %arrayidx12 = getelementptr inbounds [6 x ptr], ptr @x264_cqm_jvt, i64 0, i64 %idxprom
  br label %cond.end14

cond.end14:                                       ; preds = %entry, %cond.true7, %cond.false10
  %cond15.in = phi ptr [ %arrayidx9, %cond.true7 ], [ %arrayidx12, %cond.false10 ], [ %scaling_list, %entry ]
  %cond15 = load ptr, ptr %cond15.in, align 8
  %conv = zext nneg i32 %cond to i64
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %cond15, i64 %conv)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end14
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24
  %1 = load i64, ptr %cur_bits.i, align 8
  %shl.i = shl i64 %1, 1
  store i64 %shl.i, ptr %cur_bits.i, align 8
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32
  %2 = load i32, ptr %i_left.i, align 8
  %sub.i = add nsw i32 %2, -1
  store i32 %sub.i, ptr %i_left.i, align 8
  %cmp.i = icmp slt i32 %2, 34
  br i1 %cmp.i, label %if.end94.sink.split, label %if.end94

if.else:                                          ; preds = %cond.end14
  %arrayidx17 = getelementptr inbounds [6 x ptr], ptr @x264_cqm_jvt, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx17, align 8
  %bcmp139 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %3, i64 %conv)
  %tobool20.not = icmp eq i32 %bcmp139, 0
  %cur_bits.i140 = getelementptr inbounds i8, ptr %s, i64 24
  %4 = load i64, ptr %cur_bits.i140, align 8
  %shl.i141 = shl i64 %4, 1
  %or.i = or disjoint i64 %shl.i141, 1
  store i64 %or.i, ptr %cur_bits.i140, align 8
  %i_left.i142 = getelementptr inbounds i8, ptr %s, i64 32
  %5 = load i32, ptr %i_left.i142, align 8
  %sub.i143 = add nsw i32 %5, -1
  store i32 %sub.i143, ptr %i_left.i142, align 8
  %cmp.i144 = icmp slt i32 %5, 34
  br i1 %tobool20.not, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else
  br i1 %cmp.i144, label %if.then.i145, label %bs_write.exit153

if.then.i145:                                     ; preds = %if.then21
  %sh_prom6.i146 = zext nneg i32 %sub.i143 to i64
  %shl7.i147 = shl i64 %or.i, %sh_prom6.i146
  %add.i.i.i148 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i147)
  %conv8.i149 = trunc i64 %add.i.i.i148 to i32
  %p.i150 = getelementptr inbounds i8, ptr %s, i64 8
  %6 = load ptr, ptr %p.i150, align 8
  store i32 %conv8.i149, ptr %6, align 4
  %7 = load i32, ptr %i_left.i142, align 8
  %add.i151 = add nsw i32 %7, 32
  %8 = load ptr, ptr %p.i150, align 8
  %add.ptr.i152 = getelementptr inbounds i8, ptr %8, i64 4
  store ptr %add.ptr.i152, ptr %p.i150, align 8
  %.pre = load i64, ptr %cur_bits.i140, align 8
  br label %bs_write.exit153

bs_write.exit153:                                 ; preds = %if.then21, %if.then.i145
  %9 = phi i32 [ %sub.i143, %if.then21 ], [ %add.i151, %if.then.i145 ]
  %10 = phi i64 [ %or.i, %if.then21 ], [ %.pre, %if.then.i145 ]
  %shl.i.i = shl i64 %10, 9
  %or.i.i = or disjoint i64 %shl.i.i, 17
  store i64 %or.i.i, ptr %cur_bits.i140, align 8
  %sub.i.i = add nsw i32 %9, -9
  store i32 %sub.i.i, ptr %i_left.i142, align 8
  %cmp.i.i = icmp slt i32 %9, 42
  br i1 %cmp.i.i, label %if.end94.sink.split, label %if.end94

if.else22:                                        ; preds = %if.else
  br i1 %cmp.i144, label %if.then.i160, label %bs_write.exit168

if.then.i160:                                     ; preds = %if.else22
  %sh_prom6.i161 = zext nneg i32 %sub.i143 to i64
  %shl7.i162 = shl i64 %or.i, %sh_prom6.i161
  %add.i.i.i163 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i162)
  %conv8.i164 = trunc i64 %add.i.i.i163 to i32
  %p.i165 = getelementptr inbounds i8, ptr %s, i64 8
  %11 = load ptr, ptr %p.i165, align 8
  store i32 %conv8.i164, ptr %11, align 4
  %12 = load i32, ptr %i_left.i142, align 8
  %add.i166 = add nsw i32 %12, 32
  store i32 %add.i166, ptr %i_left.i142, align 8
  %13 = load ptr, ptr %p.i165, align 8
  %add.ptr.i167 = getelementptr inbounds i8, ptr %13, i64 4
  store ptr %add.ptr.i167, ptr %p.i165, align 8
  br label %bs_write.exit168

bs_write.exit168:                                 ; preds = %if.else22, %if.then.i160
  %14 = phi i32 [ %sub.i143, %if.else22 ], [ %add.i166, %if.then.i160 ]
  br label %for.body

for.body:                                         ; preds = %bs_write.exit168, %for.inc
  %run.0224 = phi i32 [ %cond, %bs_write.exit168 ], [ %dec, %for.inc ]
  %15 = zext nneg i32 %run.0224 to i64
  %16 = getelementptr i8, ptr %cond2, i64 %15
  %arrayidx26 = getelementptr i8, ptr %16, i64 -1
  %17 = load i8, ptr %arrayidx26, align 1
  %idxprom27 = zext i8 %17 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %0, i64 %idxprom27
  %18 = load i8, ptr %arrayidx28, align 1
  %arrayidx32 = getelementptr i8, ptr %16, i64 -2
  %19 = load i8, ptr %arrayidx32, align 1
  %idxprom33 = zext i8 %19 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %0, i64 %idxprom33
  %20 = load i8, ptr %arrayidx34, align 1
  %cmp36.not = icmp eq i8 %18, %20
  br i1 %cmp36.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %run.0224, -1
  %cmp23 = icmp sgt i32 %run.0224, 2
  br i1 %cmp23, label %for.body, label %land.lhs.true

for.end:                                          ; preds = %for.body
  %cmp39 = icmp slt i32 %run.0224, %cond
  br i1 %cmp39, label %land.lhs.true, label %cond.end74.peel

land.lhs.true:                                    ; preds = %for.inc, %for.end
  %run.0.lcssa231 = phi i32 [ %run.0224, %for.end ], [ 1, %for.inc ]
  %sub41 = sub nsw i32 %cond, %run.0.lcssa231
  %idxprom42 = zext nneg i32 %run.0.lcssa231 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %cond2, i64 %idxprom42
  %21 = load i8, ptr %arrayidx43, align 1
  %idxprom44 = zext i8 %21 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %0, i64 %idxprom44
  %22 = load i8, ptr %arrayidx45, align 1
  %sub47 = sub i8 0, %22
  %conv49 = sext i8 %sub47 to i32
  %mul.i = shl nsw i32 %conv49, 1
  %sub.i169 = sub nsw i32 1, %mul.i
  %cmp.i170 = icmp sgt i8 %sub47, 0
  %spec.select.i = select i1 %cmp.i170, i32 %mul.i, i32 %sub.i169
  %cmp2.i = icmp slt i32 %spec.select.i, 256
  br i1 %cmp2.i, label %if.then3.i, label %bs_size_se.exit

if.then3.i:                                       ; preds = %land.lhs.true
  %idxprom.i = sext i32 %spec.select.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  br label %bs_size_se.exit

bs_size_se.exit:                                  ; preds = %land.lhs.true, %if.then3.i
  %retval.0.i = phi i32 [ %conv.i, %if.then3.i ], [ 17, %land.lhs.true ]
  %cmp51 = icmp slt i32 %sub41, %retval.0.i
  %spec.select = select i1 %cmp51, i32 %cond, i32 %run.0.lcssa231
  br label %cond.end74.peel

cond.end74.peel:                                  ; preds = %bs_size_se.exit, %for.end
  %run.1 = phi i32 [ %run.0224, %for.end ], [ %spec.select, %bs_size_se.exit ]
  %p.i.i191 = getelementptr inbounds i8, ptr %s, i64 8
  %wide.trip.count = zext nneg i32 %run.1 to i64
  %24 = load i8, ptr %cond2, align 16
  %idxprom61.peel = zext i8 %24 to i64
  %arrayidx62.peel = getelementptr inbounds i8, ptr %0, i64 %idxprom61.peel
  %25 = load i8, ptr %arrayidx62.peel, align 1
  %sub76.peel = add i8 %25, -8
  %conv78.peel = sext i8 %sub76.peel to i32
  %mul.i171.peel = shl nsw i32 %conv78.peel, 1
  %sub.i172.peel = sub nsw i32 1, %mul.i171.peel
  %cmp.i173.peel = icmp sgt i8 %sub76.peel, 0
  %spec.select.i174.peel = select i1 %cmp.i173.peel, i32 %mul.i171.peel, i32 %sub.i172.peel
  %cmp2.i175.peel = icmp sgt i32 %spec.select.i174.peel, 255
  %shr.i.peel = lshr i32 %spec.select.i174.peel, 8
  %size.0.i.peel = select i1 %cmp2.i175.peel, i32 16, i32 0
  %tmp.1.i.peel = select i1 %cmp2.i175.peel, i32 %shr.i.peel, i32 %spec.select.i174.peel
  %idxprom.i176.peel = sext i32 %tmp.1.i.peel to i64
  %arrayidx.i177.peel = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i176.peel
  %26 = load i8, ptr %arrayidx.i177.peel, align 1
  %conv.i178.peel = zext i8 %26 to i32
  %add.i179.peel = add nuw nsw i32 %size.0.i.peel, %conv.i178.peel
  %27 = load i64, ptr %cur_bits.i140, align 8
  %sh_prom.i.i.peel = zext nneg i32 %add.i179.peel to i64
  %shl.i.i181.peel = shl i64 %27, %sh_prom.i.i.peel
  %conv.i.i.peel = zext i32 %spec.select.i174.peel to i64
  %or.i.i182.peel = or i64 %shl.i.i181.peel, %conv.i.i.peel
  store i64 %or.i.i182.peel, ptr %cur_bits.i140, align 8
  %sub.i.i184.peel = sub nsw i32 %14, %add.i179.peel
  store i32 %sub.i.i184.peel, ptr %i_left.i142, align 8
  %cmp.i.i185.peel = icmp slt i32 %sub.i.i184.peel, 33
  br i1 %cmp.i.i185.peel, label %if.then.i.i186.peel, label %bs_write_se.exit194.peel

if.then.i.i186.peel:                              ; preds = %cond.end74.peel
  %sh_prom6.i.i187.peel = zext nneg i32 %sub.i.i184.peel to i64
  %shl7.i.i188.peel = shl i64 %or.i.i182.peel, %sh_prom6.i.i187.peel
  %add.i.i.i.i189.peel = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i188.peel)
  %conv8.i.i190.peel = trunc i64 %add.i.i.i.i189.peel to i32
  %28 = load ptr, ptr %p.i.i191, align 8
  store i32 %conv8.i.i190.peel, ptr %28, align 4
  %29 = load i32, ptr %i_left.i142, align 8
  %add.i.i192.peel = add nsw i32 %29, 32
  store i32 %add.i.i192.peel, ptr %i_left.i142, align 8
  %30 = load ptr, ptr %p.i.i191, align 8
  %add.ptr.i.i193.peel = getelementptr inbounds i8, ptr %30, i64 4
  store ptr %add.ptr.i.i193.peel, ptr %p.i.i191, align 8
  br label %bs_write_se.exit194.peel

bs_write_se.exit194.peel:                         ; preds = %if.then.i.i186.peel, %cond.end74.peel
  %31 = phi i32 [ %add.i.i192.peel, %if.then.i.i186.peel ], [ %sub.i.i184.peel, %cond.end74.peel ]
  %exitcond.peel.not = icmp eq i32 %run.1, 1
  br i1 %exitcond.peel.not, label %for.cond.cleanup, label %cond.end74

for.cond.cleanup:                                 ; preds = %bs_write_se.exit194, %bs_write_se.exit194.peel
  %32 = phi i32 [ %31, %bs_write_se.exit194.peel ], [ %43, %bs_write_se.exit194 ]
  %cmp81 = icmp slt i32 %run.1, %cond
  br i1 %cmp81, label %if.then83, label %if.end94

cond.end74:                                       ; preds = %bs_write_se.exit194.peel, %bs_write_se.exit194
  %33 = phi i32 [ %43, %bs_write_se.exit194 ], [ %31, %bs_write_se.exit194.peel ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bs_write_se.exit194 ], [ 1, %bs_write_se.exit194.peel ]
  %arrayidx60 = getelementptr inbounds i8, ptr %cond2, i64 %indvars.iv
  %34 = load i8, ptr %arrayidx60, align 1
  %idxprom61 = zext i8 %34 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %0, i64 %idxprom61
  %35 = load i8, ptr %arrayidx62, align 1
  %arrayidx69 = getelementptr i8, ptr %arrayidx60, i64 -1
  %36 = load i8, ptr %arrayidx69, align 1
  %idxprom70 = zext i8 %36 to i64
  %arrayidx71 = getelementptr inbounds i8, ptr %0, i64 %idxprom70
  %37 = load i8, ptr %arrayidx71, align 1
  %sub76 = sub i8 %35, %37
  %conv78 = sext i8 %sub76 to i32
  %mul.i171 = shl nsw i32 %conv78, 1
  %sub.i172 = sub nsw i32 1, %mul.i171
  %cmp.i173 = icmp sgt i8 %sub76, 0
  %spec.select.i174 = select i1 %cmp.i173, i32 %mul.i171, i32 %sub.i172
  %cmp2.i175 = icmp sgt i32 %spec.select.i174, 255
  %shr.i = lshr i32 %spec.select.i174, 8
  %size.0.i = select i1 %cmp2.i175, i32 16, i32 0
  %tmp.1.i = select i1 %cmp2.i175, i32 %shr.i, i32 %spec.select.i174
  %idxprom.i176 = sext i32 %tmp.1.i to i64
  %arrayidx.i177 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i176
  %38 = load i8, ptr %arrayidx.i177, align 1
  %conv.i178 = zext i8 %38 to i32
  %add.i179 = add nuw nsw i32 %size.0.i, %conv.i178
  %39 = load i64, ptr %cur_bits.i140, align 8
  %sh_prom.i.i = zext nneg i32 %add.i179 to i64
  %shl.i.i181 = shl i64 %39, %sh_prom.i.i
  %conv.i.i = zext i32 %spec.select.i174 to i64
  %or.i.i182 = or i64 %shl.i.i181, %conv.i.i
  store i64 %or.i.i182, ptr %cur_bits.i140, align 8
  %sub.i.i184 = sub nsw i32 %33, %add.i179
  store i32 %sub.i.i184, ptr %i_left.i142, align 8
  %cmp.i.i185 = icmp slt i32 %sub.i.i184, 33
  br i1 %cmp.i.i185, label %if.then.i.i186, label %bs_write_se.exit194

if.then.i.i186:                                   ; preds = %cond.end74
  %sh_prom6.i.i187 = zext nneg i32 %sub.i.i184 to i64
  %shl7.i.i188 = shl i64 %or.i.i182, %sh_prom6.i.i187
  %add.i.i.i.i189 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i188)
  %conv8.i.i190 = trunc i64 %add.i.i.i.i189 to i32
  %40 = load ptr, ptr %p.i.i191, align 8
  store i32 %conv8.i.i190, ptr %40, align 4
  %41 = load i32, ptr %i_left.i142, align 8
  %add.i.i192 = add nsw i32 %41, 32
  store i32 %add.i.i192, ptr %i_left.i142, align 8
  %42 = load ptr, ptr %p.i.i191, align 8
  %add.ptr.i.i193 = getelementptr inbounds i8, ptr %42, i64 4
  store ptr %add.ptr.i.i193, ptr %p.i.i191, align 8
  br label %bs_write_se.exit194

bs_write_se.exit194:                              ; preds = %cond.end74, %if.then.i.i186
  %43 = phi i32 [ %sub.i.i184, %cond.end74 ], [ %add.i.i192, %if.then.i.i186 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %cond.end74, !llvm.loop !5

if.then83:                                        ; preds = %for.cond.cleanup
  %idxprom84 = sext i32 %run.1 to i64
  %arrayidx85 = getelementptr inbounds i8, ptr %cond2, i64 %idxprom84
  %44 = load i8, ptr %arrayidx85, align 1
  %idxprom86 = zext i8 %44 to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %0, i64 %idxprom86
  %45 = load i8, ptr %arrayidx87, align 1
  %sub89 = sub i8 0, %45
  %conv91 = sext i8 %sub89 to i32
  %mul.i195 = shl nsw i32 %conv91, 1
  %sub.i196 = sub nsw i32 1, %mul.i195
  %cmp.i197 = icmp sgt i8 %sub89, 0
  %spec.select.i198 = select i1 %cmp.i197, i32 %mul.i195, i32 %sub.i196
  %cmp2.i199 = icmp sgt i32 %spec.select.i198, 255
  %shr.i200 = lshr i32 %spec.select.i198, 8
  %size.0.i201 = select i1 %cmp2.i199, i32 16, i32 0
  %tmp.1.i202 = select i1 %cmp2.i199, i32 %shr.i200, i32 %spec.select.i198
  %idxprom.i203 = sext i32 %tmp.1.i202 to i64
  %arrayidx.i204 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i203
  %46 = load i8, ptr %arrayidx.i204, align 1
  %conv.i205 = zext i8 %46 to i32
  %add.i206 = add nuw nsw i32 %size.0.i201, %conv.i205
  %47 = load i64, ptr %cur_bits.i140, align 8
  %sh_prom.i.i208 = zext nneg i32 %add.i206 to i64
  %shl.i.i209 = shl i64 %47, %sh_prom.i.i208
  %conv.i.i210 = zext i32 %spec.select.i198 to i64
  %or.i.i211 = or i64 %shl.i.i209, %conv.i.i210
  store i64 %or.i.i211, ptr %cur_bits.i140, align 8
  %sub.i.i213 = sub nsw i32 %32, %add.i206
  store i32 %sub.i.i213, ptr %i_left.i142, align 8
  %cmp.i.i214 = icmp slt i32 %sub.i.i213, 33
  br i1 %cmp.i.i214, label %if.end94.sink.split, label %if.end94

if.end94.sink.split:                              ; preds = %if.then83, %bs_write.exit153, %if.then
  %sub.i.i213.sink = phi i32 [ %sub.i, %if.then ], [ %sub.i.i, %bs_write.exit153 ], [ %sub.i.i213, %if.then83 ]
  %or.i.i211.sink = phi i64 [ %shl.i, %if.then ], [ %or.i.i, %bs_write.exit153 ], [ %or.i.i211, %if.then83 ]
  %i_left.i142.sink234 = phi ptr [ %i_left.i, %if.then ], [ %i_left.i142, %bs_write.exit153 ], [ %i_left.i142, %if.then83 ]
  %sh_prom6.i.i216 = zext nneg i32 %sub.i.i213.sink to i64
  %shl7.i.i217 = shl i64 %or.i.i211.sink, %sh_prom6.i.i216
  %add.i.i.i.i218 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i217)
  %conv8.i.i219 = trunc i64 %add.i.i.i.i218 to i32
  %p.i.i220 = getelementptr inbounds i8, ptr %s, i64 8
  %48 = load ptr, ptr %p.i.i220, align 8
  store i32 %conv8.i.i219, ptr %48, align 4
  %49 = load i32, ptr %i_left.i142.sink234, align 8
  %add.i.i221 = add nsw i32 %49, 32
  store i32 %add.i.i221, ptr %i_left.i142.sink234, align 8
  %50 = load ptr, ptr %p.i.i220, align 8
  %add.ptr.i.i222 = getelementptr inbounds i8, ptr %50, i64 4
  store ptr %add.ptr.i.i222, ptr %p.i.i220, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.end94.sink.split, %if.then83, %bs_write.exit153, %if.then, %for.cond.cleanup
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sei_recovery_point_write(ptr nocapture noundef readnone %h, ptr nocapture noundef %s, i32 noundef %recovery_frame_cnt) local_unnamed_addr #5 {
entry:
  %p.i = getelementptr inbounds i8, ptr %s, i64 8
  %0 = load ptr, ptr %p.i, align 8
  %1 = ptrtoint ptr %0 to i64
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 3
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %bs_realign.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %idx.ext.i = and i64 %1, 3
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 %idx.neg.i
  store ptr %add.ptr.i, ptr %p.i, align 8
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32
  %3 = shl nuw nsw i32 %idx.ext.tr.i, 3
  %conv4.i = sub nuw nsw i32 64, %3
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32
  store i32 %conv4.i, ptr %i_left.i, align 8
  %4 = load i32, ptr %add.ptr.i, align 4
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %4)
  %conv6.i = zext i32 %add5.i.i to i64
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24
  %5 = shl nuw nsw i32 %conv.i, 3
  %mul8.i = sub nuw nsw i32 32, %5
  %sh_prom.i = zext nneg i32 %mul8.i to i64
  %shr.i = lshr i64 %conv6.i, %sh_prom.i
  store i64 %shr.i, ptr %cur_bits.i, align 8
  br label %bs_realign.exit

bs_realign.exit:                                  ; preds = %entry, %if.then.i
  %call = tail call fastcc ptr @x264_sei_write_header(ptr noundef nonnull %s, i32 noundef 6)
  %inc.i = add i32 %recovery_frame_cnt, 1
  %cmp.i = icmp sgt i32 %inc.i, 65535
  %shr.i8 = lshr i32 %inc.i, 16
  %spec.select.i = select i1 %cmp.i, i32 32, i32 0
  %spec.select18.i = select i1 %cmp.i, i32 %shr.i8, i32 %inc.i
  %cmp1.i = icmp sgt i32 %spec.select18.i, 255
  %add.i = or disjoint i32 %spec.select.i, 16
  %shr3.i = lshr i32 %spec.select18.i, 8
  %size.1.i = select i1 %cmp1.i, i32 %add.i, i32 %spec.select.i
  %tmp.1.i = select i1 %cmp1.i, i32 %shr3.i, i32 %spec.select18.i
  %idxprom.i = sext i32 %tmp.1.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i
  %6 = load i8, ptr %arrayidx.i, align 1
  %conv.i9 = zext i8 %6 to i32
  %add5.i = add nuw nsw i32 %size.1.i, %conv.i9
  %shr6.i = lshr i32 %add5.i, 1
  %cur_bits.i.i = getelementptr inbounds i8, ptr %s, i64 24
  %7 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i = zext nneg i32 %shr6.i to i64
  %shl.i.i = shl i64 %7, %sh_prom.i.i
  store i64 %shl.i.i, ptr %cur_bits.i.i, align 8
  %i_left.i.i = getelementptr inbounds i8, ptr %s, i64 32
  %8 = load i32, ptr %i_left.i.i, align 8
  %sub.i.i = sub nsw i32 %8, %shr6.i
  store i32 %sub.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i = icmp slt i32 %sub.i.i, 33
  br i1 %cmp.i.i, label %if.then.i.i, label %bs_write.exit.i

if.then.i.i:                                      ; preds = %bs_realign.exit
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64
  %shl7.i.i = shl i64 %shl.i.i, %sh_prom6.i.i
  %add.i.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i)
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32
  %9 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i, ptr %9, align 4
  %10 = load i32, ptr %i_left.i.i, align 8
  %add.i.i = add nsw i32 %10, 32
  %11 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %11, i64 4
  store ptr %add.ptr.i.i, ptr %p.i, align 8
  %.pre.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i

bs_write.exit.i:                                  ; preds = %if.then.i.i, %bs_realign.exit
  %12 = phi i32 [ %sub.i.i, %bs_realign.exit ], [ %add.i.i, %if.then.i.i ]
  %13 = phi i64 [ %shl.i.i, %bs_realign.exit ], [ %.pre.i, %if.then.i.i ]
  %add8.i = add nuw nsw i32 %shr6.i, 1
  %sh_prom.i20.i = zext nneg i32 %add8.i to i64
  %shl.i21.i = shl i64 %13, %sh_prom.i20.i
  %conv.i.i = zext i32 %inc.i to i64
  %or.i.i = or i64 %shl.i21.i, %conv.i.i
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i = sub nsw i32 %12, %add8.i
  store i32 %sub.i23.i, ptr %i_left.i.i, align 8
  %cmp.i24.i = icmp slt i32 %sub.i23.i, 33
  br i1 %cmp.i24.i, label %if.then.i25.i, label %bs_write_ue_big.exit

if.then.i25.i:                                    ; preds = %bs_write.exit.i
  %sh_prom6.i26.i = zext nneg i32 %sub.i23.i to i64
  %shl7.i27.i = shl i64 %or.i.i, %sh_prom6.i26.i
  %add.i.i.i28.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i)
  %conv8.i29.i = trunc i64 %add.i.i.i28.i to i32
  %14 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i29.i, ptr %14, align 4
  %15 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i = add nsw i32 %15, 32
  %16 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i = getelementptr inbounds i8, ptr %16, i64 4
  store ptr %add.ptr.i32.i, ptr %p.i, align 8
  %.pre = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue_big.exit

bs_write_ue_big.exit:                             ; preds = %bs_write.exit.i, %if.then.i25.i
  %17 = phi i32 [ %sub.i23.i, %bs_write.exit.i ], [ %add.i31.i, %if.then.i25.i ]
  %18 = phi i64 [ %or.i.i, %bs_write.exit.i ], [ %.pre, %if.then.i25.i ]
  %shl.i = shl i64 %18, 1
  %or.i = or disjoint i64 %shl.i, 1
  store i64 %or.i, ptr %cur_bits.i.i, align 8
  %sub.i = add nsw i32 %17, -1
  store i32 %sub.i, ptr %i_left.i.i, align 8
  %cmp.i12 = icmp slt i32 %17, 34
  br i1 %cmp.i12, label %if.then.i13, label %bs_write.exit

if.then.i13:                                      ; preds = %bs_write_ue_big.exit
  %sh_prom6.i = zext nneg i32 %sub.i to i64
  %shl7.i = shl i64 %or.i, %sh_prom6.i
  %add.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i)
  %conv8.i = trunc i64 %add.i.i.i to i32
  %19 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i, ptr %19, align 4
  %20 = load i32, ptr %i_left.i.i, align 8
  %add.i15 = add nsw i32 %20, 32
  %21 = load ptr, ptr %p.i, align 8
  %add.ptr.i16 = getelementptr inbounds i8, ptr %21, i64 4
  store ptr %add.ptr.i16, ptr %p.i, align 8
  %.pre55 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %bs_write_ue_big.exit, %if.then.i13
  %22 = phi i32 [ %sub.i, %bs_write_ue_big.exit ], [ %add.i15, %if.then.i13 ]
  %23 = phi i64 [ %or.i, %bs_write_ue_big.exit ], [ %.pre55, %if.then.i13 ]
  %shl.i18 = shl i64 %23, 1
  store i64 %shl.i18, ptr %cur_bits.i.i, align 8
  %sub.i21 = add nsw i32 %22, -1
  store i32 %sub.i21, ptr %i_left.i.i, align 8
  %cmp.i22 = icmp slt i32 %22, 34
  br i1 %cmp.i22, label %if.then.i23, label %bs_write.exit31

if.then.i23:                                      ; preds = %bs_write.exit
  %sh_prom6.i24 = zext nneg i32 %sub.i21 to i64
  %shl7.i25 = shl i64 %shl.i18, %sh_prom6.i24
  %add.i.i.i26 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i25)
  %conv8.i27 = trunc i64 %add.i.i.i26 to i32
  %24 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i27, ptr %24, align 4
  %25 = load i32, ptr %i_left.i.i, align 8
  %add.i29 = add nsw i32 %25, 32
  %26 = load ptr, ptr %p.i, align 8
  %add.ptr.i30 = getelementptr inbounds i8, ptr %26, i64 4
  store ptr %add.ptr.i30, ptr %p.i, align 8
  %.pre56 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit31

bs_write.exit31:                                  ; preds = %bs_write.exit, %if.then.i23
  %27 = phi i32 [ %sub.i21, %bs_write.exit ], [ %add.i29, %if.then.i23 ]
  %28 = phi i64 [ %shl.i18, %bs_write.exit ], [ %.pre56, %if.then.i23 ]
  %shl.i33 = shl i64 %28, 2
  store i64 %shl.i33, ptr %cur_bits.i.i, align 8
  %sub.i36 = add nsw i32 %27, -2
  store i32 %sub.i36, ptr %i_left.i.i, align 8
  %cmp.i37 = icmp slt i32 %27, 35
  br i1 %cmp.i37, label %if.then.i38, label %bs_write.exit46

if.then.i38:                                      ; preds = %bs_write.exit31
  %sh_prom6.i39 = zext nneg i32 %sub.i36 to i64
  %shl7.i40 = shl i64 %shl.i33, %sh_prom6.i39
  %add.i.i.i41 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i40)
  %conv8.i42 = trunc i64 %add.i.i.i41 to i32
  %29 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i42, ptr %29, align 4
  %30 = load i32, ptr %i_left.i.i, align 8
  %add.i44 = add nsw i32 %30, 32
  store i32 %add.i44, ptr %i_left.i.i, align 8
  %31 = load ptr, ptr %p.i, align 8
  %add.ptr.i45 = getelementptr inbounds i8, ptr %31, i64 4
  store ptr %add.ptr.i45, ptr %p.i, align 8
  br label %bs_write.exit46

bs_write.exit46:                                  ; preds = %bs_write.exit31, %if.then.i38
  tail call fastcc void @x264_sei_write(ptr noundef nonnull %s, ptr noundef %call)
  %32 = load i64, ptr %cur_bits.i.i, align 8
  %33 = load i32, ptr %i_left.i.i, align 8
  %and.i = and i32 %33, 31
  %sh_prom.i49 = zext nneg i32 %and.i to i64
  %shl.i50 = shl i64 %32, %sh_prom.i49
  %conv.i51 = trunc i64 %shl.i50 to i32
  %add5.i.i52 = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i51)
  %34 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i52, ptr %34, align 4
  %35 = load i32, ptr %i_left.i.i, align 8
  %div.neg.i = sdiv i32 %35, -8
  %36 = load ptr, ptr %p.i, align 8
  %37 = sext i32 %div.neg.i to i64
  %38 = getelementptr i8, ptr %36, i64 %37
  %add.ptr.i54 = getelementptr i8, ptr %38, i64 8
  store ptr %add.ptr.i54, ptr %p.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @x264_sei_write_header(ptr nocapture noundef %s, i32 noundef %payload_type) unnamed_addr #5 {
entry:
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24
  %0 = load i64, ptr %cur_bits.i, align 8
  %shl.i = shl i64 %0, 8
  %conv.i = zext i32 %payload_type to i64
  %or.i = or i64 %shl.i, %conv.i
  store i64 %or.i, ptr %cur_bits.i, align 8
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32
  %1 = load i32, ptr %i_left.i, align 8
  %sub.i = add nsw i32 %1, -8
  store i32 %sub.i, ptr %i_left.i, align 8
  %cmp.i = icmp slt i32 %1, 41
  br i1 %cmp.i, label %if.then.i, label %entry.bs_write.exit_crit_edge

entry.bs_write.exit_crit_edge:                    ; preds = %entry
  %p.i9.phi.trans.insert = getelementptr inbounds i8, ptr %s, i64 8
  %.pre34 = load ptr, ptr %p.i9.phi.trans.insert, align 8
  br label %bs_write.exit

if.then.i:                                        ; preds = %entry
  %sh_prom6.i = zext nneg i32 %sub.i to i64
  %shl7.i = shl i64 %or.i, %sh_prom6.i
  %add.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i)
  %conv8.i = trunc i64 %add.i.i.i to i32
  %p.i = getelementptr inbounds i8, ptr %s, i64 8
  %2 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i, ptr %2, align 4
  %3 = load i32, ptr %i_left.i, align 8
  %add.i = add nsw i32 %3, 32
  store i32 %add.i, ptr %i_left.i, align 8
  %4 = load ptr, ptr %p.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 4
  store ptr %add.ptr.i, ptr %p.i, align 8
  %.pre = load i64, ptr %cur_bits.i, align 8
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %entry.bs_write.exit_crit_edge, %if.then.i
  %5 = phi ptr [ %.pre34, %entry.bs_write.exit_crit_edge ], [ %add.ptr.i, %if.then.i ]
  %6 = phi i32 [ %sub.i, %entry.bs_write.exit_crit_edge ], [ %add.i, %if.then.i ]
  %7 = phi i64 [ %or.i, %entry.bs_write.exit_crit_edge ], [ %.pre, %if.then.i ]
  %and.i = and i32 %6, 31
  %sh_prom.i = zext nneg i32 %and.i to i64
  %shl.i7 = shl i64 %7, %sh_prom.i
  %conv.i8 = trunc i64 %shl.i7 to i32
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i8)
  %p.i9 = getelementptr inbounds i8, ptr %s, i64 8
  store i32 %add5.i.i, ptr %5, align 4
  %8 = load i32, ptr %i_left.i, align 8
  %div.neg.i = sdiv i32 %8, -8
  %9 = load ptr, ptr %p.i9, align 8
  %10 = sext i32 %div.neg.i to i64
  %11 = getelementptr i8, ptr %9, i64 %10
  %add.ptr.i10 = getelementptr i8, ptr %11, i64 8
  store ptr %add.ptr.i10, ptr %p.i9, align 8
  %12 = ptrtoint ptr %add.ptr.i10 to i64
  %13 = trunc i64 %12 to i32
  %conv.i12 = and i32 %13, 3
  %tobool.not.i = icmp eq i32 %conv.i12, 0
  br i1 %tobool.not.i, label %bs_realign.exit.thread, label %bs_realign.exit

bs_realign.exit.thread:                           ; preds = %bs_write.exit
  %.pre35 = load i64, ptr %cur_bits.i, align 8
  %shl.i2036 = shl i64 %.pre35, 8
  store i64 %shl.i2036, ptr %cur_bits.i, align 8
  store i32 56, ptr %i_left.i, align 8
  br label %bs_write.exit33

bs_realign.exit:                                  ; preds = %bs_write.exit
  %idx.ext.i = and i64 %12, 3
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i14 = getelementptr inbounds i8, ptr %add.ptr.i10, i64 %idx.neg.i
  store ptr %add.ptr.i14, ptr %p.i9, align 8
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32
  %14 = shl nuw nsw i32 %idx.ext.tr.i, 3
  %conv4.i = sub nuw nsw i32 64, %14
  store i32 %conv4.i, ptr %i_left.i, align 8
  %15 = load i32, ptr %add.ptr.i14, align 4
  %add5.i.i16 = tail call noundef i32 @llvm.bswap.i32(i32 %15)
  %conv6.i = zext i32 %add5.i.i16 to i64
  %16 = shl nuw nsw i32 %conv.i12, 3
  %mul8.i = sub nuw nsw i32 32, %16
  %sh_prom.i18 = zext nneg i32 %mul8.i to i64
  %shr.i = lshr i64 %conv6.i, %sh_prom.i18
  %shl.i20 = shl nuw nsw i64 %shr.i, 8
  store i64 %shl.i20, ptr %cur_bits.i, align 8
  %sub.i23 = sub nuw nsw i32 56, %14
  store i32 %sub.i23, ptr %i_left.i, align 8
  %cmp.i24 = icmp eq i64 %idx.ext.i, 3
  br i1 %cmp.i24, label %if.then.i25, label %bs_write.exit33

if.then.i25:                                      ; preds = %bs_realign.exit
  %sh_prom6.i26 = zext nneg i32 %sub.i23 to i64
  %17 = tail call i64 @llvm.bswap.i64(i64 %shl.i20)
  %add.i.i.i28 = lshr i64 %17, %sh_prom6.i26
  %conv8.i29 = trunc nuw nsw i64 %add.i.i.i28 to i32
  store i32 %conv8.i29, ptr %add.ptr.i14, align 4
  %18 = load i32, ptr %i_left.i, align 8
  %add.i31 = add nsw i32 %18, 32
  store i32 %add.i31, ptr %i_left.i, align 8
  %19 = load ptr, ptr %p.i9, align 8
  %add.ptr.i32 = getelementptr inbounds i8, ptr %19, i64 4
  store ptr %add.ptr.i32, ptr %p.i9, align 8
  br label %bs_write.exit33

bs_write.exit33:                                  ; preds = %bs_realign.exit.thread, %bs_realign.exit, %if.then.i25
  ret ptr %add.ptr.i10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @x264_sei_write(ptr nocapture noundef %s, ptr noundef %p_start) unnamed_addr #5 {
entry:
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32
  %0 = load i32, ptr %i_left.i, align 8
  %and.i = and i32 %0, 7
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %bs_align_10.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %sub.i = add nsw i32 %and.i, -1
  %shl.i = shl nuw nsw i32 1, %sub.i
  %cur_bits.i.i = getelementptr inbounds i8, ptr %s, i64 24
  %1 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i = zext nneg i32 %and.i to i64
  %shl.i.i = shl i64 %1, %sh_prom.i.i
  %conv.i.i = zext nneg i32 %shl.i to i64
  %or.i.i = or i64 %shl.i.i, %conv.i.i
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i = and i32 %0, -8
  store i32 %sub.i.i, ptr %i_left.i, align 8
  %cmp.i.i = icmp slt i32 %sub.i.i, 33
  br i1 %cmp.i.i, label %if.then.i.i, label %bs_align_10.exit

if.then.i.i:                                      ; preds = %if.then.i
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64
  %2 = tail call i64 @llvm.bswap.i64(i64 %or.i.i)
  %add.i.i.i.i = lshr i64 %2, %sh_prom6.i.i
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32
  %p.i.i = getelementptr inbounds i8, ptr %s, i64 8
  %3 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i, ptr %3, align 4
  %4 = load i32, ptr %i_left.i, align 8
  %add.i.i = add nsw i32 %4, 32
  store i32 %add.i.i, ptr %i_left.i, align 8
  %5 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %5, i64 4
  store ptr %add.ptr.i.i, ptr %p.i.i, align 8
  br label %bs_align_10.exit

bs_align_10.exit:                                 ; preds = %entry, %if.then.i, %if.then.i.i
  %6 = phi i32 [ %0, %entry ], [ %sub.i.i, %if.then.i ], [ %add.i.i, %if.then.i.i ]
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24
  %7 = load i64, ptr %cur_bits.i, align 8
  %and.i7 = and i32 %6, 31
  %sh_prom.i = zext nneg i32 %and.i7 to i64
  %shl.i8 = shl i64 %7, %sh_prom.i
  %conv.i = trunc i64 %shl.i8 to i32
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i)
  %p.i = getelementptr inbounds i8, ptr %s, i64 8
  %8 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i, ptr %8, align 4
  %9 = load i32, ptr %i_left.i, align 8
  %div.neg.i = sdiv i32 %9, -8
  %10 = load ptr, ptr %p.i, align 8
  %11 = sext i32 %div.neg.i to i64
  %12 = getelementptr i8, ptr %10, i64 %11
  %add.ptr.i = getelementptr i8, ptr %12, i64 8
  store ptr %add.ptr.i, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %p_start to i64
  %13 = xor i64 %sub.ptr.rhs.cast, -1
  %sub = add i64 %sub.ptr.lhs.cast, %13
  %conv = trunc i64 %sub to i8
  store i8 %conv, ptr %p_start, align 1
  %14 = load ptr, ptr %p.i, align 8
  %15 = ptrtoint ptr %14 to i64
  %16 = trunc i64 %15 to i32
  %conv.i10 = and i32 %16, 3
  %tobool.not.i11 = icmp eq i32 %conv.i10, 0
  br i1 %tobool.not.i11, label %bs_align_10.exit.bs_realign.exit_crit_edge, label %if.then.i12

bs_align_10.exit.bs_realign.exit_crit_edge:       ; preds = %bs_align_10.exit
  %.pre = load i64, ptr %cur_bits.i, align 8
  %.pre31 = load i32, ptr %i_left.i, align 8
  br label %bs_realign.exit

if.then.i12:                                      ; preds = %bs_align_10.exit
  %idx.ext.i = and i64 %15, 3
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i13 = getelementptr inbounds i8, ptr %14, i64 %idx.neg.i
  store ptr %add.ptr.i13, ptr %p.i, align 8
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32
  %17 = shl nuw nsw i32 %idx.ext.tr.i, 3
  %conv4.i = sub nuw nsw i32 64, %17
  store i32 %conv4.i, ptr %i_left.i, align 8
  %18 = load i32, ptr %add.ptr.i13, align 4
  %add5.i.i15 = tail call noundef i32 @llvm.bswap.i32(i32 %18)
  %conv6.i = zext i32 %add5.i.i15 to i64
  %19 = shl nuw nsw i32 %conv.i10, 3
  %mul8.i = sub nuw nsw i32 32, %19
  %sh_prom.i17 = zext nneg i32 %mul8.i to i64
  %shr.i = lshr i64 %conv6.i, %sh_prom.i17
  br label %bs_realign.exit

bs_realign.exit:                                  ; preds = %bs_align_10.exit.bs_realign.exit_crit_edge, %if.then.i12
  %20 = phi ptr [ %14, %bs_align_10.exit.bs_realign.exit_crit_edge ], [ %add.ptr.i13, %if.then.i12 ]
  %21 = phi i32 [ %.pre31, %bs_align_10.exit.bs_realign.exit_crit_edge ], [ %conv4.i, %if.then.i12 ]
  %22 = phi i64 [ %.pre, %bs_align_10.exit.bs_realign.exit_crit_edge ], [ %shr.i, %if.then.i12 ]
  %shl.i.i19 = shl i64 %22, 1
  %or.i.i20 = or disjoint i64 %shl.i.i19, 1
  store i64 %or.i.i20, ptr %cur_bits.i, align 8
  %dec.i.i = add nsw i32 %21, -1
  %cmp.i.i21 = icmp eq i32 %dec.i.i, 32
  br i1 %cmp.i.i21, label %bs_write1.exit.thread.i, label %bs_write1.exit.i

bs_write1.exit.thread.i:                          ; preds = %bs_realign.exit
  %conv6.i.i = trunc i64 %or.i.i20 to i32
  %add5.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i)
  store i32 %add5.i.i.i, ptr %20, align 4
  %23 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i30 = getelementptr inbounds i8, ptr %23, i64 4
  store ptr %add.ptr.i.i30, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %bs_rbsp_trailing.exit

bs_write1.exit.i:                                 ; preds = %bs_realign.exit
  %and.i22 = and i32 %dec.i.i, 7
  %sh_prom.i.i23 = zext nneg i32 %and.i22 to i64
  %shl.i4.i = shl i64 %or.i.i20, %sh_prom.i.i23
  store i64 %shl.i4.i, ptr %cur_bits.i, align 8
  %sub.i.i24 = and i32 %dec.i.i, -8
  store i32 %sub.i.i24, ptr %i_left.i, align 8
  %cmp.i7.i = icmp slt i32 %sub.i.i24, 33
  br i1 %cmp.i7.i, label %if.then.i8.i, label %bs_rbsp_trailing.exit

if.then.i8.i:                                     ; preds = %bs_write1.exit.i
  %sh_prom6.i.i25 = zext nneg i32 %sub.i.i24 to i64
  %24 = tail call i64 @llvm.bswap.i64(i64 %shl.i4.i)
  %add.i.i.i.i26 = lshr i64 %24, %sh_prom6.i.i25
  %conv8.i.i27 = trunc i64 %add.i.i.i.i26 to i32
  store i32 %conv8.i.i27, ptr %20, align 4
  %25 = load i32, ptr %i_left.i, align 8
  %add.i.i28 = add nsw i32 %25, 32
  store i32 %add.i.i28, ptr %i_left.i, align 8
  %26 = load ptr, ptr %p.i, align 8
  %add.ptr.i10.i = getelementptr inbounds i8, ptr %26, i64 4
  store ptr %add.ptr.i10.i, ptr %p.i, align 8
  br label %bs_rbsp_trailing.exit

bs_rbsp_trailing.exit:                            ; preds = %bs_write1.exit.thread.i, %bs_write1.exit.i, %if.then.i8.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_sei_version_write(ptr noundef %h, ptr nocapture noundef %s) local_unnamed_addr #6 {
entry:
  %call = tail call ptr @x264_param2string(ptr noundef %h, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call) #13
  %0 = trunc i64 %call1 to i32
  %conv = add i32 %0, 200
  %call2 = tail call ptr @x264_malloc(i32 noundef %conv) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %cleanup.sink.split, label %do.end

do.end:                                           ; preds = %do.body
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %call2, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 96, ptr noundef nonnull @.str.1, ptr noundef nonnull %call) #12
  %call7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call2) #13
  %call7.fr = freeze i64 %call7
  %1 = trunc i64 %call7.fr to i32
  %conv10 = add i32 %1, 17
  %p.i = getelementptr inbounds i8, ptr %s, i64 8
  %2 = load ptr, ptr %p.i, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = trunc i64 %3 to i32
  %conv.i = and i32 %4, 3
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %do.end.bs_realign.exit_crit_edge, label %if.then.i

do.end.bs_realign.exit_crit_edge:                 ; preds = %do.end
  %cur_bits.i61.phi.trans.insert = getelementptr inbounds i8, ptr %s, i64 24
  %.pre = load i64, ptr %cur_bits.i61.phi.trans.insert, align 8
  %i_left.i62.phi.trans.insert = getelementptr inbounds i8, ptr %s, i64 32
  %.pre148 = load i32, ptr %i_left.i62.phi.trans.insert, align 8
  br label %bs_realign.exit

if.then.i:                                        ; preds = %do.end
  %idx.ext.i = and i64 %3, 3
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i = getelementptr inbounds i8, ptr %2, i64 %idx.neg.i
  store ptr %add.ptr.i, ptr %p.i, align 8
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32
  %5 = shl nuw nsw i32 %idx.ext.tr.i, 3
  %conv4.i = sub nuw nsw i32 64, %5
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32
  store i32 %conv4.i, ptr %i_left.i, align 8
  %6 = load i32, ptr %add.ptr.i, align 4
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %6)
  %conv6.i = zext i32 %add5.i.i to i64
  %7 = shl nuw nsw i32 %conv.i, 3
  %mul8.i = sub nuw nsw i32 32, %7
  %sh_prom.i = zext nneg i32 %mul8.i to i64
  %shr.i = lshr i64 %conv6.i, %sh_prom.i
  br label %bs_realign.exit

bs_realign.exit:                                  ; preds = %do.end.bs_realign.exit_crit_edge, %if.then.i
  %8 = phi ptr [ %2, %do.end.bs_realign.exit_crit_edge ], [ %add.ptr.i, %if.then.i ]
  %9 = phi i32 [ %.pre148, %do.end.bs_realign.exit_crit_edge ], [ %conv4.i, %if.then.i ]
  %10 = phi i64 [ %.pre, %do.end.bs_realign.exit_crit_edge ], [ %shr.i, %if.then.i ]
  %cur_bits.i61 = getelementptr inbounds i8, ptr %s, i64 24
  %shl.i = shl i64 %10, 8
  %or.i = or disjoint i64 %shl.i, 5
  store i64 %or.i, ptr %cur_bits.i61, align 8
  %i_left.i62 = getelementptr inbounds i8, ptr %s, i64 32
  %sub.i = add nsw i32 %9, -8
  store i32 %sub.i, ptr %i_left.i62, align 8
  %cmp.i = icmp slt i32 %9, 41
  br i1 %cmp.i, label %if.then.i63, label %bs_write.exit

if.then.i63:                                      ; preds = %bs_realign.exit
  %sh_prom6.i = zext nneg i32 %sub.i to i64
  %shl7.i = shl i64 %or.i, %sh_prom6.i
  %add.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i)
  %conv8.i = trunc i64 %add.i.i.i to i32
  store i32 %conv8.i, ptr %8, align 4
  %11 = load i32, ptr %i_left.i62, align 8
  %add.i = add nsw i32 %11, 32
  %12 = load ptr, ptr %p.i, align 8
  %add.ptr.i65 = getelementptr inbounds i8, ptr %12, i64 4
  store ptr %add.ptr.i65, ptr %p.i, align 8
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %bs_realign.exit, %if.then.i63
  %13 = phi ptr [ %8, %bs_realign.exit ], [ %add.ptr.i65, %if.then.i63 ]
  %14 = phi i32 [ %sub.i, %bs_realign.exit ], [ %add.i, %if.then.i63 ]
  %sub = add i32 %1, -238
  %cmp.not138 = icmp slt i32 %sub, 0
  br i1 %cmp.not138, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %bs_write.exit
  %15 = urem i32 %sub, 255
  %.neg = sub nsw i32 %15, %sub
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %bs_write.exit80
  %16 = phi ptr [ %21, %bs_write.exit80 ], [ %13, %for.body.preheader ]
  %17 = phi i32 [ %22, %bs_write.exit80 ], [ %14, %for.body.preheader ]
  %i.0139 = phi i32 [ %add12, %bs_write.exit80 ], [ 0, %for.body.preheader ]
  %18 = load i64, ptr %cur_bits.i61, align 8
  %shl.i67 = shl i64 %18, 8
  %or.i68 = or disjoint i64 %shl.i67, 255
  store i64 %or.i68, ptr %cur_bits.i61, align 8
  %sub.i70 = add nsw i32 %17, -8
  store i32 %sub.i70, ptr %i_left.i62, align 8
  %cmp.i71 = icmp slt i32 %17, 41
  br i1 %cmp.i71, label %if.then.i72, label %bs_write.exit80

if.then.i72:                                      ; preds = %for.body
  %sh_prom6.i73 = zext nneg i32 %sub.i70 to i64
  %shl7.i74 = shl i64 %or.i68, %sh_prom6.i73
  %add.i.i.i75 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i74)
  %conv8.i76 = trunc i64 %add.i.i.i75 to i32
  store i32 %conv8.i76, ptr %16, align 4
  %19 = load i32, ptr %i_left.i62, align 8
  %add.i78 = add nsw i32 %19, 32
  store i32 %add.i78, ptr %i_left.i62, align 8
  %20 = load ptr, ptr %p.i, align 8
  %add.ptr.i79 = getelementptr inbounds i8, ptr %20, i64 4
  store ptr %add.ptr.i79, ptr %p.i, align 8
  br label %bs_write.exit80

bs_write.exit80:                                  ; preds = %for.body, %if.then.i72
  %21 = phi ptr [ %16, %for.body ], [ %add.ptr.i79, %if.then.i72 ]
  %22 = phi i32 [ %sub.i70, %for.body ], [ %add.i78, %if.then.i72 ]
  %add12 = add nuw nsw i32 %i.0139, 255
  %cmp.not = icmp sgt i32 %add12, %sub
  br i1 %cmp.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %bs_write.exit80
  %.neg149 = add i32 %.neg, -255
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %bs_write.exit
  %23 = phi ptr [ %13, %bs_write.exit ], [ %21, %for.end.loopexit ]
  %24 = phi i32 [ %14, %bs_write.exit ], [ %22, %for.end.loopexit ]
  %i.0.lcssa.neg = phi i32 [ 0, %bs_write.exit ], [ %.neg149, %for.end.loopexit ]
  %sub13 = add i32 %i.0.lcssa.neg, %conv10
  %25 = load i64, ptr %cur_bits.i61, align 8
  %shl.i82 = shl i64 %25, 8
  %conv.i83 = zext i32 %sub13 to i64
  %or.i84 = or i64 %shl.i82, %conv.i83
  store i64 %or.i84, ptr %cur_bits.i61, align 8
  %sub.i86 = add nsw i32 %24, -8
  store i32 %sub.i86, ptr %i_left.i62, align 8
  %cmp.i87 = icmp slt i32 %24, 41
  br i1 %cmp.i87, label %if.then.i88, label %for.body17.preheader

if.then.i88:                                      ; preds = %for.end
  %sh_prom6.i89 = zext nneg i32 %sub.i86 to i64
  %shl7.i90 = shl i64 %or.i84, %sh_prom6.i89
  %add.i.i.i91 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i90)
  %conv8.i92 = trunc i64 %add.i.i.i91 to i32
  store i32 %conv8.i92, ptr %23, align 4
  %26 = load i32, ptr %i_left.i62, align 8
  %add.i94 = add nsw i32 %26, 32
  %27 = load ptr, ptr %p.i, align 8
  %add.ptr.i95 = getelementptr inbounds i8, ptr %27, i64 4
  store ptr %add.ptr.i95, ptr %p.i, align 8
  br label %for.body17.preheader

for.body17.preheader:                             ; preds = %for.end, %if.then.i88
  %.ph = phi ptr [ %add.ptr.i95, %if.then.i88 ], [ %23, %for.end ]
  %.ph161 = phi i32 [ %add.i94, %if.then.i88 ], [ %sub.i86, %for.end ]
  br label %for.body17

for.cond22.preheader:                             ; preds = %bs_write.exit112
  %cmp24141 = icmp ult i32 %1, 2147483647
  br i1 %cmp24141, label %for.body27.preheader, label %for.cond.cleanup26

for.body27.preheader:                             ; preds = %for.cond22.preheader
  %sub23 = add nuw nsw i64 %call7.fr, 1
  %wide.trip.count = and i64 %sub23, 4294967295
  br label %for.body27

for.body17:                                       ; preds = %for.body17.preheader, %bs_write.exit112
  %28 = phi ptr [ %34, %bs_write.exit112 ], [ %.ph, %for.body17.preheader ]
  %29 = phi i32 [ %35, %bs_write.exit112 ], [ %.ph161, %for.body17.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bs_write.exit112 ], [ 0, %for.body17.preheader ]
  %arrayidx = getelementptr inbounds [16 x i8], ptr @__const.x264_sei_version_write.uuid, i64 0, i64 %indvars.iv
  %30 = load i8, ptr %arrayidx, align 1
  %31 = load i64, ptr %cur_bits.i61, align 8
  %shl.i98 = shl i64 %31, 8
  %conv.i99 = zext i8 %30 to i64
  %or.i100 = or disjoint i64 %shl.i98, %conv.i99
  store i64 %or.i100, ptr %cur_bits.i61, align 8
  %sub.i102 = add nsw i32 %29, -8
  store i32 %sub.i102, ptr %i_left.i62, align 8
  %cmp.i103 = icmp slt i32 %29, 41
  br i1 %cmp.i103, label %if.then.i104, label %bs_write.exit112

if.then.i104:                                     ; preds = %for.body17
  %sh_prom6.i105 = zext nneg i32 %sub.i102 to i64
  %shl7.i106 = shl i64 %or.i100, %sh_prom6.i105
  %add.i.i.i107 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i106)
  %conv8.i108 = trunc i64 %add.i.i.i107 to i32
  store i32 %conv8.i108, ptr %28, align 4
  %32 = load i32, ptr %i_left.i62, align 8
  %add.i110 = add nsw i32 %32, 32
  store i32 %add.i110, ptr %i_left.i62, align 8
  %33 = load ptr, ptr %p.i, align 8
  %add.ptr.i111 = getelementptr inbounds i8, ptr %33, i64 4
  store ptr %add.ptr.i111, ptr %p.i, align 8
  br label %bs_write.exit112

bs_write.exit112:                                 ; preds = %for.body17, %if.then.i104
  %34 = phi ptr [ %28, %for.body17 ], [ %add.ptr.i111, %if.then.i104 ]
  %35 = phi i32 [ %sub.i102, %for.body17 ], [ %add.i110, %if.then.i104 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.cond22.preheader, label %for.body17

for.cond.cleanup26:                               ; preds = %bs_write.exit137, %for.cond22.preheader
  %36 = phi ptr [ %34, %for.cond22.preheader ], [ %56, %bs_write.exit137 ]
  %37 = phi i32 [ %35, %for.cond22.preheader ], [ %57, %bs_write.exit137 ]
  %38 = load i64, ptr %cur_bits.i61, align 8
  %shl.i.i = shl i64 %38, 1
  %or.i.i = or disjoint i64 %shl.i.i, 1
  store i64 %or.i.i, ptr %cur_bits.i61, align 8
  %dec.i.i = add nsw i32 %37, -1
  %cmp.i.i = icmp eq i32 %dec.i.i, 32
  br i1 %cmp.i.i, label %bs_write1.exit.thread.i, label %bs_write1.exit.i

bs_write1.exit.thread.i:                          ; preds = %for.cond.cleanup26
  %conv6.i.i = trunc i64 %or.i.i to i32
  %add5.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i)
  store i32 %add5.i.i.i, ptr %36, align 4
  %39 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %39, i64 4
  store ptr %add.ptr.i.i, ptr %p.i, align 8
  store i32 64, ptr %i_left.i62, align 8
  br label %bs_rbsp_trailing.exit

bs_write1.exit.i:                                 ; preds = %for.cond.cleanup26
  %and.i = and i32 %dec.i.i, 7
  %sh_prom.i.i = zext nneg i32 %and.i to i64
  %shl.i4.i = shl i64 %or.i.i, %sh_prom.i.i
  store i64 %shl.i4.i, ptr %cur_bits.i61, align 8
  %sub.i.i = and i32 %dec.i.i, -8
  store i32 %sub.i.i, ptr %i_left.i62, align 8
  %cmp.i7.i = icmp slt i32 %sub.i.i, 33
  br i1 %cmp.i7.i, label %if.then.i8.i, label %bs_rbsp_trailing.exit

if.then.i8.i:                                     ; preds = %bs_write1.exit.i
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64
  %40 = tail call i64 @llvm.bswap.i64(i64 %shl.i4.i)
  %add.i.i.i.i = lshr i64 %40, %sh_prom6.i.i
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32
  store i32 %conv8.i.i, ptr %36, align 4
  %41 = load i32, ptr %i_left.i62, align 8
  %add.i.i = add nsw i32 %41, 32
  store i32 %add.i.i, ptr %i_left.i62, align 8
  %42 = load ptr, ptr %p.i, align 8
  %add.ptr.i10.i = getelementptr inbounds i8, ptr %42, i64 4
  store ptr %add.ptr.i10.i, ptr %p.i, align 8
  br label %bs_rbsp_trailing.exit

bs_rbsp_trailing.exit:                            ; preds = %bs_write1.exit.thread.i, %bs_write1.exit.i, %if.then.i8.i
  %43 = phi ptr [ %add.ptr.i.i, %bs_write1.exit.thread.i ], [ %36, %bs_write1.exit.i ], [ %add.ptr.i10.i, %if.then.i8.i ]
  %44 = phi i32 [ 64, %bs_write1.exit.thread.i ], [ %sub.i.i, %bs_write1.exit.i ], [ %add.i.i, %if.then.i8.i ]
  %45 = load i64, ptr %cur_bits.i61, align 8
  %and.i115 = and i32 %44, 31
  %sh_prom.i116 = zext nneg i32 %and.i115 to i64
  %shl.i117 = shl i64 %45, %sh_prom.i116
  %conv.i118 = trunc i64 %shl.i117 to i32
  %add5.i.i119 = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i118)
  store i32 %add5.i.i119, ptr %43, align 4
  %46 = load i32, ptr %i_left.i62, align 8
  %div.neg.i = sdiv i32 %46, -8
  %47 = load ptr, ptr %p.i, align 8
  %48 = sext i32 %div.neg.i to i64
  %49 = getelementptr i8, ptr %47, i64 %48
  %add.ptr.i121 = getelementptr i8, ptr %49, i64 8
  store ptr %add.ptr.i121, ptr %p.i, align 8
  store i32 64, ptr %i_left.i62, align 8
  tail call void @x264_free(ptr noundef nonnull %call) #12
  br label %cleanup.sink.split

for.body27:                                       ; preds = %for.body27.preheader, %bs_write.exit137
  %50 = phi ptr [ %34, %for.body27.preheader ], [ %56, %bs_write.exit137 ]
  %51 = phi i32 [ %35, %for.body27.preheader ], [ %57, %bs_write.exit137 ]
  %indvars.iv144 = phi i64 [ 0, %for.body27.preheader ], [ %indvars.iv.next145, %bs_write.exit137 ]
  %arrayidx29 = getelementptr inbounds i8, ptr %call2, i64 %indvars.iv144
  %52 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %52 to i64
  %53 = load i64, ptr %cur_bits.i61, align 8
  %shl.i123 = shl i64 %53, 8
  %conv.i124 = and i64 %conv30, 4294967295
  %or.i125 = or i64 %shl.i123, %conv.i124
  store i64 %or.i125, ptr %cur_bits.i61, align 8
  %sub.i127 = add nsw i32 %51, -8
  store i32 %sub.i127, ptr %i_left.i62, align 8
  %cmp.i128 = icmp slt i32 %51, 41
  br i1 %cmp.i128, label %if.then.i129, label %bs_write.exit137

if.then.i129:                                     ; preds = %for.body27
  %sh_prom6.i130 = zext nneg i32 %sub.i127 to i64
  %shl7.i131 = shl i64 %or.i125, %sh_prom6.i130
  %add.i.i.i132 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i131)
  %conv8.i133 = trunc i64 %add.i.i.i132 to i32
  store i32 %conv8.i133, ptr %50, align 4
  %54 = load i32, ptr %i_left.i62, align 8
  %add.i135 = add nsw i32 %54, 32
  store i32 %add.i135, ptr %i_left.i62, align 8
  %55 = load ptr, ptr %p.i, align 8
  %add.ptr.i136 = getelementptr inbounds i8, ptr %55, i64 4
  store ptr %add.ptr.i136, ptr %p.i, align 8
  br label %bs_write.exit137

bs_write.exit137:                                 ; preds = %for.body27, %if.then.i129
  %56 = phi ptr [ %50, %for.body27 ], [ %add.ptr.i136, %if.then.i129 ]
  %57 = phi i32 [ %sub.i127, %for.body27 ], [ %add.i135, %if.then.i129 ]
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  %exitcond147.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count
  br i1 %exitcond147.not, label %for.cond.cleanup26, label %for.body27

cleanup.sink.split:                               ; preds = %do.body, %bs_rbsp_trailing.exit
  %call.sink = phi ptr [ %call2, %bs_rbsp_trailing.exit ], [ %call, %do.body ]
  %retval.0.ph = phi i32 [ 0, %bs_rbsp_trailing.exit ], [ -1, %do.body ]
  tail call void @x264_free(ptr noundef nonnull %call.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare ptr @x264_param2string(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare void @x264_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sei_buffering_period_write(ptr nocapture noundef readonly %h, ptr nocapture noundef %s) local_unnamed_addr #5 {
entry:
  %sps1 = getelementptr inbounds i8, ptr %h, i64 3200
  %0 = load ptr, ptr %sps1, align 16
  %p.i = getelementptr inbounds i8, ptr %s, i64 8
  %1 = load ptr, ptr %p.i, align 8
  %2 = ptrtoint ptr %1 to i64
  %3 = trunc i64 %2 to i32
  %conv.i = and i32 %3, 3
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %bs_realign.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %idx.ext.i = and i64 %2, 3
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i = getelementptr inbounds i8, ptr %1, i64 %idx.neg.i
  store ptr %add.ptr.i, ptr %p.i, align 8
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32
  %4 = shl nuw nsw i32 %idx.ext.tr.i, 3
  %conv4.i = sub nuw nsw i32 64, %4
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32
  store i32 %conv4.i, ptr %i_left.i, align 8
  %5 = load i32, ptr %add.ptr.i, align 4
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %5)
  %conv6.i = zext i32 %add5.i.i to i64
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24
  %6 = shl nuw nsw i32 %conv.i, 3
  %mul8.i = sub nuw nsw i32 32, %6
  %sh_prom.i = zext nneg i32 %mul8.i to i64
  %shr.i = lshr i64 %conv6.i, %sh_prom.i
  store i64 %shr.i, ptr %cur_bits.i, align 8
  br label %bs_realign.exit

bs_realign.exit:                                  ; preds = %entry, %if.then.i
  %call = tail call fastcc ptr @x264_sei_write_header(ptr noundef nonnull %s, i32 noundef 0)
  %7 = load i32, ptr %0, align 4
  %inc.i = add i32 %7, 1
  %cmp.i = icmp sgt i32 %inc.i, 65535
  %shr.i17 = lshr i32 %inc.i, 16
  %spec.select.i = select i1 %cmp.i, i32 32, i32 0
  %spec.select18.i = select i1 %cmp.i, i32 %shr.i17, i32 %inc.i
  %cmp1.i = icmp sgt i32 %spec.select18.i, 255
  %add.i = or disjoint i32 %spec.select.i, 16
  %shr3.i = lshr i32 %spec.select18.i, 8
  %size.1.i = select i1 %cmp1.i, i32 %add.i, i32 %spec.select.i
  %tmp.1.i = select i1 %cmp1.i, i32 %shr3.i, i32 %spec.select18.i
  %idxprom.i = sext i32 %tmp.1.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i18 = zext i8 %8 to i32
  %add5.i = add nuw nsw i32 %size.1.i, %conv.i18
  %shr6.i = lshr i32 %add5.i, 1
  %cur_bits.i.i = getelementptr inbounds i8, ptr %s, i64 24
  %9 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i = zext nneg i32 %shr6.i to i64
  %shl.i.i = shl i64 %9, %sh_prom.i.i
  store i64 %shl.i.i, ptr %cur_bits.i.i, align 8
  %i_left.i.i = getelementptr inbounds i8, ptr %s, i64 32
  %10 = load i32, ptr %i_left.i.i, align 8
  %sub.i.i = sub nsw i32 %10, %shr6.i
  store i32 %sub.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i = icmp slt i32 %sub.i.i, 33
  br i1 %cmp.i.i, label %if.then.i.i, label %bs_write.exit.i

if.then.i.i:                                      ; preds = %bs_realign.exit
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64
  %shl7.i.i = shl i64 %shl.i.i, %sh_prom6.i.i
  %add.i.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i)
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32
  %11 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i, ptr %11, align 4
  %12 = load i32, ptr %i_left.i.i, align 8
  %add.i.i = add nsw i32 %12, 32
  %13 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %13, i64 4
  store ptr %add.ptr.i.i, ptr %p.i, align 8
  %.pre.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i

bs_write.exit.i:                                  ; preds = %if.then.i.i, %bs_realign.exit
  %14 = phi i32 [ %sub.i.i, %bs_realign.exit ], [ %add.i.i, %if.then.i.i ]
  %15 = phi i64 [ %shl.i.i, %bs_realign.exit ], [ %.pre.i, %if.then.i.i ]
  %add8.i = add nuw nsw i32 %shr6.i, 1
  %sh_prom.i20.i = zext nneg i32 %add8.i to i64
  %shl.i21.i = shl i64 %15, %sh_prom.i20.i
  %conv.i.i = zext i32 %inc.i to i64
  %or.i.i = or i64 %shl.i21.i, %conv.i.i
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i = sub nsw i32 %14, %add8.i
  store i32 %sub.i23.i, ptr %i_left.i.i, align 8
  %cmp.i24.i = icmp slt i32 %sub.i23.i, 33
  br i1 %cmp.i24.i, label %if.then.i25.i, label %bs_write_ue_big.exit

if.then.i25.i:                                    ; preds = %bs_write.exit.i
  %sh_prom6.i26.i = zext nneg i32 %sub.i23.i to i64
  %shl7.i27.i = shl i64 %or.i.i, %sh_prom6.i26.i
  %add.i.i.i28.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i)
  %conv8.i29.i = trunc i64 %add.i.i.i28.i to i32
  %16 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i29.i, ptr %16, align 4
  %17 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i = add nsw i32 %17, 32
  store i32 %add.i31.i, ptr %i_left.i.i, align 8
  %18 = load ptr, ptr %p.i, align 8
  %add.ptr.i32.i = getelementptr inbounds i8, ptr %18, i64 4
  store ptr %add.ptr.i32.i, ptr %p.i, align 8
  br label %bs_write_ue_big.exit

bs_write_ue_big.exit:                             ; preds = %bs_write.exit.i, %if.then.i25.i
  %19 = phi i32 [ %sub.i23.i, %bs_write.exit.i ], [ %add.i31.i, %if.then.i25.i ]
  %b_nal_hrd_parameters_present = getelementptr inbounds i8, ptr %0, i64 1204
  %20 = load i32, ptr %b_nal_hrd_parameters_present, align 4
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %bs_write_ue_big.exit
  %i_initial_cpb_removal_delay_length = getelementptr inbounds i8, ptr %0, i64 1244
  %21 = load i32, ptr %i_initial_cpb_removal_delay_length, align 4
  %initial_cpb_removal_delay = getelementptr inbounds i8, ptr %h, i64 15024
  %22 = load i32, ptr %initial_cpb_removal_delay, align 16
  %23 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i20 = zext nneg i32 %21 to i64
  %shl.i = shl i64 %23, %sh_prom.i20
  %conv.i21 = zext i32 %22 to i64
  %or.i = or i64 %shl.i, %conv.i21
  store i64 %or.i, ptr %cur_bits.i.i, align 8
  %sub.i = sub nsw i32 %19, %21
  store i32 %sub.i, ptr %i_left.i.i, align 8
  %cmp.i23 = icmp slt i32 %sub.i, 33
  br i1 %cmp.i23, label %if.then.i24, label %bs_write.exit

if.then.i24:                                      ; preds = %if.then
  %sh_prom6.i = zext nneg i32 %sub.i to i64
  %shl7.i = shl i64 %or.i, %sh_prom6.i
  %add.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i)
  %conv8.i = trunc i64 %add.i.i.i to i32
  %24 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i, ptr %24, align 4
  %25 = load i32, ptr %i_left.i.i, align 8
  %add.i26 = add nsw i32 %25, 32
  store i32 %add.i26, ptr %i_left.i.i, align 8
  %26 = load ptr, ptr %p.i, align 8
  %add.ptr.i27 = getelementptr inbounds i8, ptr %26, i64 4
  store ptr %add.ptr.i27, ptr %p.i, align 8
  %.pre = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %if.then, %if.then.i24
  %27 = phi i32 [ %sub.i, %if.then ], [ %add.i26, %if.then.i24 ]
  %28 = phi i64 [ %or.i, %if.then ], [ %.pre, %if.then.i24 ]
  %29 = load i32, ptr %i_initial_cpb_removal_delay_length, align 4
  %initial_cpb_removal_delay_offset = getelementptr inbounds i8, ptr %h, i64 15028
  %30 = load i32, ptr %initial_cpb_removal_delay_offset, align 4
  %sh_prom.i29 = zext nneg i32 %29 to i64
  %shl.i30 = shl i64 %28, %sh_prom.i29
  %conv.i31 = zext i32 %30 to i64
  %or.i32 = or i64 %shl.i30, %conv.i31
  store i64 %or.i32, ptr %cur_bits.i.i, align 8
  %sub.i34 = sub nsw i32 %27, %29
  store i32 %sub.i34, ptr %i_left.i.i, align 8
  %cmp.i35 = icmp slt i32 %sub.i34, 33
  br i1 %cmp.i35, label %if.then.i36, label %if.end

if.then.i36:                                      ; preds = %bs_write.exit
  %sh_prom6.i37 = zext nneg i32 %sub.i34 to i64
  %shl7.i38 = shl i64 %or.i32, %sh_prom6.i37
  %add.i.i.i39 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i38)
  %conv8.i40 = trunc i64 %add.i.i.i39 to i32
  %31 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i40, ptr %31, align 4
  %32 = load i32, ptr %i_left.i.i, align 8
  %add.i42 = add nsw i32 %32, 32
  store i32 %add.i42, ptr %i_left.i.i, align 8
  %33 = load ptr, ptr %p.i, align 8
  %add.ptr.i43 = getelementptr inbounds i8, ptr %33, i64 4
  store ptr %add.ptr.i43, ptr %p.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.i36, %bs_write.exit, %bs_write_ue_big.exit
  tail call fastcc void @x264_sei_write(ptr noundef nonnull %s, ptr noundef %call)
  %34 = load i64, ptr %cur_bits.i.i, align 8
  %35 = load i32, ptr %i_left.i.i, align 8
  %and.i = and i32 %35, 31
  %sh_prom.i47 = zext nneg i32 %and.i to i64
  %shl.i48 = shl i64 %34, %sh_prom.i47
  %conv.i49 = trunc i64 %shl.i48 to i32
  %add5.i.i50 = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i49)
  %36 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i50, ptr %36, align 4
  %37 = load i32, ptr %i_left.i.i, align 8
  %div.neg.i = sdiv i32 %37, -8
  %38 = load ptr, ptr %p.i, align 8
  %39 = sext i32 %div.neg.i to i64
  %40 = getelementptr i8, ptr %38, i64 %39
  %add.ptr.i52 = getelementptr i8, ptr %40, i64 8
  store ptr %add.ptr.i52, ptr %p.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sei_pic_timing_write(ptr nocapture noundef readonly %h, ptr nocapture noundef %s) local_unnamed_addr #2 {
entry:
  %sps1 = getelementptr inbounds i8, ptr %h, i64 3200
  %0 = load ptr, ptr %sps1, align 16
  %p.i = getelementptr inbounds i8, ptr %s, i64 8
  %1 = load ptr, ptr %p.i, align 8
  %2 = ptrtoint ptr %1 to i64
  %3 = trunc i64 %2 to i32
  %conv.i = and i32 %3, 3
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %bs_realign.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %idx.ext.i = and i64 %2, 3
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i = getelementptr inbounds i8, ptr %1, i64 %idx.neg.i
  store ptr %add.ptr.i, ptr %p.i, align 8
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32
  %4 = shl nuw nsw i32 %idx.ext.tr.i, 3
  %conv4.i = sub nuw nsw i32 64, %4
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32
  store i32 %conv4.i, ptr %i_left.i, align 8
  %5 = load i32, ptr %add.ptr.i, align 4
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %5)
  %conv6.i = zext i32 %add5.i.i to i64
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24
  %6 = shl nuw nsw i32 %conv.i, 3
  %mul8.i = sub nuw nsw i32 32, %6
  %sh_prom.i = zext nneg i32 %mul8.i to i64
  %shr.i = lshr i64 %conv6.i, %sh_prom.i
  store i64 %shr.i, ptr %cur_bits.i, align 8
  br label %bs_realign.exit

bs_realign.exit:                                  ; preds = %entry, %if.then.i
  %call = tail call fastcc ptr @x264_sei_write_header(ptr noundef nonnull %s, i32 noundef 1)
  %b_nal_hrd_parameters_present = getelementptr inbounds i8, ptr %0, i64 1204
  %7 = load i32, ptr %b_nal_hrd_parameters_present, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %bs_realign.exit
  %b_vcl_hrd_parameters_present = getelementptr inbounds i8, ptr %0, i64 1208
  %8 = load i32, ptr %b_vcl_hrd_parameters_present, align 4
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %bs_realign.exit
  %i_cpb_removal_delay_length = getelementptr inbounds i8, ptr %0, i64 1248
  %9 = load i32, ptr %i_cpb_removal_delay_length, align 4
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %10 = load ptr, ptr %fenc, align 8
  %i_cpb_delay = getelementptr inbounds i8, ptr %10, i64 40
  %11 = load i32, ptr %i_cpb_delay, align 8
  %cur_bits.i32 = getelementptr inbounds i8, ptr %s, i64 24
  %12 = load i64, ptr %cur_bits.i32, align 8
  %sh_prom.i33 = zext nneg i32 %9 to i64
  %shl.i = shl i64 %12, %sh_prom.i33
  %conv.i34 = zext i32 %11 to i64
  %or.i = or i64 %shl.i, %conv.i34
  store i64 %or.i, ptr %cur_bits.i32, align 8
  %i_left.i35 = getelementptr inbounds i8, ptr %s, i64 32
  %13 = load i32, ptr %i_left.i35, align 8
  %sub.i = sub nsw i32 %13, %9
  store i32 %sub.i, ptr %i_left.i35, align 8
  %cmp.i = icmp slt i32 %sub.i, 33
  br i1 %cmp.i, label %if.then.i36, label %bs_write.exit

if.then.i36:                                      ; preds = %if.then
  %sh_prom6.i = zext nneg i32 %sub.i to i64
  %shl7.i = shl i64 %or.i, %sh_prom6.i
  %add.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i)
  %conv8.i = trunc i64 %add.i.i.i to i32
  %14 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i, ptr %14, align 4
  %15 = load i32, ptr %i_left.i35, align 8
  %add.i = add nsw i32 %15, 32
  store i32 %add.i, ptr %i_left.i35, align 8
  %16 = load ptr, ptr %p.i, align 8
  %add.ptr.i38 = getelementptr inbounds i8, ptr %16, i64 4
  store ptr %add.ptr.i38, ptr %p.i, align 8
  %.pre = load i64, ptr %cur_bits.i32, align 8
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %if.then, %if.then.i36
  %17 = phi i32 [ %sub.i, %if.then ], [ %add.i, %if.then.i36 ]
  %18 = phi i64 [ %or.i, %if.then ], [ %.pre, %if.then.i36 ]
  %i_dpb_output_delay_length = getelementptr inbounds i8, ptr %0, i64 1252
  %19 = load i32, ptr %i_dpb_output_delay_length, align 4
  %20 = load ptr, ptr %fenc, align 8
  %i_dpb_output_delay = getelementptr inbounds i8, ptr %20, i64 44
  %21 = load i32, ptr %i_dpb_output_delay, align 4
  %sh_prom.i40 = zext nneg i32 %19 to i64
  %shl.i41 = shl i64 %18, %sh_prom.i40
  %conv.i42 = zext i32 %21 to i64
  %or.i43 = or i64 %shl.i41, %conv.i42
  store i64 %or.i43, ptr %cur_bits.i32, align 8
  %sub.i45 = sub nsw i32 %17, %19
  store i32 %sub.i45, ptr %i_left.i35, align 8
  %cmp.i46 = icmp slt i32 %sub.i45, 33
  br i1 %cmp.i46, label %if.then.i47, label %if.end

if.then.i47:                                      ; preds = %bs_write.exit
  %sh_prom6.i48 = zext nneg i32 %sub.i45 to i64
  %shl7.i49 = shl i64 %or.i43, %sh_prom6.i48
  %add.i.i.i50 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i49)
  %conv8.i51 = trunc i64 %add.i.i.i50 to i32
  %22 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i51, ptr %22, align 4
  %23 = load i32, ptr %i_left.i35, align 8
  %add.i53 = add nsw i32 %23, 32
  store i32 %add.i53, ptr %i_left.i35, align 8
  %24 = load ptr, ptr %p.i, align 8
  %add.ptr.i54 = getelementptr inbounds i8, ptr %24, i64 4
  store ptr %add.ptr.i54, ptr %p.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.i47, %bs_write.exit, %lor.lhs.false
  %b_pic_struct_present = getelementptr inbounds i8, ptr %0, i64 1260
  %25 = load i32, ptr %b_pic_struct_present, align 4
  %tobool9.not = icmp eq i32 %25, 0
  br i1 %tobool9.not, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end
  %fenc11 = getelementptr inbounds i8, ptr %h, i64 14680
  %26 = load ptr, ptr %fenc11, align 8
  %i_pic_struct = getelementptr inbounds i8, ptr %26, i64 76
  %27 = load i32, ptr %i_pic_struct, align 4
  %sub = add nsw i32 %27, -1
  %cur_bits.i56 = getelementptr inbounds i8, ptr %s, i64 24
  %28 = load i64, ptr %cur_bits.i56, align 8
  %shl.i57 = shl i64 %28, 4
  %conv.i58 = zext i32 %sub to i64
  %or.i59 = or i64 %shl.i57, %conv.i58
  store i64 %or.i59, ptr %cur_bits.i56, align 8
  %i_left.i60 = getelementptr inbounds i8, ptr %s, i64 32
  %29 = load i32, ptr %i_left.i60, align 8
  %sub.i61 = add nsw i32 %29, -4
  store i32 %sub.i61, ptr %i_left.i60, align 8
  %cmp.i62 = icmp slt i32 %29, 37
  br i1 %cmp.i62, label %if.then.i63, label %bs_write.exit71

if.then.i63:                                      ; preds = %if.then10
  %sh_prom6.i64 = zext nneg i32 %sub.i61 to i64
  %shl7.i65 = shl i64 %or.i59, %sh_prom6.i64
  %add.i.i.i66 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i65)
  %conv8.i67 = trunc i64 %add.i.i.i66 to i32
  %30 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i67, ptr %30, align 4
  %31 = load i32, ptr %i_left.i60, align 8
  %add.i69 = add nsw i32 %31, 32
  store i32 %add.i69, ptr %i_left.i60, align 8
  %32 = load ptr, ptr %p.i, align 8
  %add.ptr.i70 = getelementptr inbounds i8, ptr %32, i64 4
  store ptr %add.ptr.i70, ptr %p.i, align 8
  br label %bs_write.exit71

bs_write.exit71:                                  ; preds = %if.then10, %if.then.i63
  %33 = phi i32 [ %sub.i61, %if.then10 ], [ %add.i69, %if.then.i63 ]
  %34 = load ptr, ptr %fenc11, align 8
  %i_pic_struct1390 = getelementptr inbounds i8, ptr %34, i64 76
  %35 = load i32, ptr %i_pic_struct1390, align 4
  %cmp94.not = icmp eq i32 %35, 0
  br i1 %cmp94.not, label %if.end15, label %for.body

for.body:                                         ; preds = %bs_write.exit71, %bs_write1.exit
  %36 = phi i32 [ %40, %bs_write1.exit ], [ %33, %bs_write.exit71 ]
  %i.095 = phi i32 [ %inc, %bs_write1.exit ], [ 0, %bs_write.exit71 ]
  %37 = load i64, ptr %cur_bits.i56, align 8
  %shl.i73 = shl i64 %37, 1
  store i64 %shl.i73, ptr %cur_bits.i56, align 8
  %dec.i = add nsw i32 %36, -1
  store i32 %dec.i, ptr %i_left.i60, align 8
  %cmp.i76 = icmp eq i32 %dec.i, 32
  br i1 %cmp.i76, label %if.then.i77, label %bs_write1.exit

if.then.i77:                                      ; preds = %for.body
  %conv6.i78 = trunc i64 %shl.i73 to i32
  %add5.i.i79 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i78)
  %38 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i79, ptr %38, align 4
  %39 = load ptr, ptr %p.i, align 8
  %add.ptr.i81 = getelementptr inbounds i8, ptr %39, i64 4
  store ptr %add.ptr.i81, ptr %p.i, align 8
  store i32 64, ptr %i_left.i60, align 8
  br label %bs_write1.exit

bs_write1.exit:                                   ; preds = %for.body, %if.then.i77
  %40 = phi i32 [ %dec.i, %for.body ], [ 64, %if.then.i77 ]
  %inc = add nuw nsw i32 %i.095, 1
  %41 = load ptr, ptr %fenc11, align 8
  %i_pic_struct13 = getelementptr inbounds i8, ptr %41, i64 76
  %42 = load i32, ptr %i_pic_struct13, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx = getelementptr inbounds [10 x i8], ptr @num_clock_ts, i64 0, i64 %idxprom
  %43 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %43 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body, label %if.end15

if.end15:                                         ; preds = %bs_write1.exit, %bs_write.exit71, %if.end
  tail call fastcc void @x264_sei_write(ptr noundef nonnull %s, ptr noundef %call)
  %cur_bits.i82 = getelementptr inbounds i8, ptr %s, i64 24
  %44 = load i64, ptr %cur_bits.i82, align 8
  %i_left.i83 = getelementptr inbounds i8, ptr %s, i64 32
  %45 = load i32, ptr %i_left.i83, align 8
  %and.i = and i32 %45, 31
  %sh_prom.i84 = zext nneg i32 %and.i to i64
  %shl.i85 = shl i64 %44, %sh_prom.i84
  %conv.i86 = trunc i64 %shl.i85 to i32
  %add5.i.i87 = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i86)
  %46 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i87, ptr %46, align 4
  %47 = load i32, ptr %i_left.i83, align 8
  %div.neg.i = sdiv i32 %47, -8
  %48 = load ptr, ptr %p.i, align 8
  %49 = sext i32 %div.neg.i to i64
  %50 = getelementptr i8, ptr %48, i64 %49
  %add.ptr.i89 = getelementptr i8, ptr %50, i64 8
  store ptr %add.ptr.i89, ptr %p.i, align 8
  store i32 64, ptr %i_left.i83, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_filler_write(ptr nocapture noundef readnone %h, ptr nocapture noundef %s, i32 noundef %filler) local_unnamed_addr #2 {
entry:
  %p.i = getelementptr inbounds i8, ptr %s, i64 8
  %0 = load ptr, ptr %p.i, align 8
  %1 = ptrtoint ptr %0 to i64
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 3
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %bs_realign.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %idx.ext.i = and i64 %1, 3
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 %idx.neg.i
  store ptr %add.ptr.i, ptr %p.i, align 8
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32
  %3 = shl nuw nsw i32 %idx.ext.tr.i, 3
  %conv4.i = sub nuw nsw i32 64, %3
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32
  store i32 %conv4.i, ptr %i_left.i, align 8
  %4 = load i32, ptr %add.ptr.i, align 4
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %4)
  %conv6.i = zext i32 %add5.i.i to i64
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24
  %5 = shl nuw nsw i32 %conv.i, 3
  %mul8.i = sub nuw nsw i32 32, %5
  %sh_prom.i = zext nneg i32 %mul8.i to i64
  %shr.i = lshr i64 %conv6.i, %sh_prom.i
  store i64 %shr.i, ptr %cur_bits.i, align 8
  br label %bs_realign.exit

bs_realign.exit:                                  ; preds = %entry, %if.then.i
  %6 = phi ptr [ %0, %entry ], [ %add.ptr.i, %if.then.i ]
  %cmp19 = icmp sgt i32 %filler, 0
  br i1 %cmp19, label %for.body.lr.ph, label %bs_realign.exit.for.cond.cleanup_crit_edge

bs_realign.exit.for.cond.cleanup_crit_edge:       ; preds = %bs_realign.exit
  %i_left.i.i.phi.trans.insert = getelementptr inbounds i8, ptr %s, i64 32
  %.pre21 = load i32, ptr %i_left.i.i.phi.trans.insert, align 8
  br label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %bs_realign.exit
  %cur_bits.i13 = getelementptr inbounds i8, ptr %s, i64 24
  %i_left.i15 = getelementptr inbounds i8, ptr %s, i64 32
  %.pre = load i32, ptr %i_left.i15, align 8
  br label %for.body

for.cond.cleanup:                                 ; preds = %bs_write.exit, %bs_realign.exit.for.cond.cleanup_crit_edge
  %7 = phi ptr [ %6, %bs_realign.exit.for.cond.cleanup_crit_edge ], [ %26, %bs_write.exit ]
  %8 = phi i32 [ %.pre21, %bs_realign.exit.for.cond.cleanup_crit_edge ], [ %27, %bs_write.exit ]
  %cur_bits.i.i = getelementptr inbounds i8, ptr %s, i64 24
  %9 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i.i = shl i64 %9, 1
  %or.i.i = or disjoint i64 %shl.i.i, 1
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8
  %i_left.i.i = getelementptr inbounds i8, ptr %s, i64 32
  %dec.i.i = add nsw i32 %8, -1
  %cmp.i.i = icmp eq i32 %dec.i.i, 32
  br i1 %cmp.i.i, label %bs_write1.exit.thread.i, label %bs_write1.exit.i

bs_write1.exit.thread.i:                          ; preds = %for.cond.cleanup
  %conv6.i.i = trunc i64 %or.i.i to i32
  %add5.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i)
  store i32 %add5.i.i.i, ptr %7, align 4
  %10 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %10, i64 4
  store ptr %add.ptr.i.i, ptr %p.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  br label %bs_rbsp_trailing.exit

bs_write1.exit.i:                                 ; preds = %for.cond.cleanup
  %and.i = and i32 %dec.i.i, 7
  %sh_prom.i.i = zext nneg i32 %and.i to i64
  %shl.i4.i = shl i64 %or.i.i, %sh_prom.i.i
  store i64 %shl.i4.i, ptr %cur_bits.i.i, align 8
  %sub.i.i = and i32 %dec.i.i, -8
  store i32 %sub.i.i, ptr %i_left.i.i, align 8
  %cmp.i7.i = icmp slt i32 %sub.i.i, 33
  br i1 %cmp.i7.i, label %if.then.i8.i, label %bs_rbsp_trailing.exit

if.then.i8.i:                                     ; preds = %bs_write1.exit.i
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64
  %11 = tail call i64 @llvm.bswap.i64(i64 %shl.i4.i)
  %add.i.i.i.i = lshr i64 %11, %sh_prom6.i.i
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32
  store i32 %conv8.i.i, ptr %7, align 4
  %12 = load i32, ptr %i_left.i.i, align 8
  %add.i.i = add nsw i32 %12, 32
  store i32 %add.i.i, ptr %i_left.i.i, align 8
  %13 = load ptr, ptr %p.i, align 8
  %add.ptr.i10.i = getelementptr inbounds i8, ptr %13, i64 4
  store ptr %add.ptr.i10.i, ptr %p.i, align 8
  br label %bs_rbsp_trailing.exit

bs_rbsp_trailing.exit:                            ; preds = %bs_write1.exit.thread.i, %bs_write1.exit.i, %if.then.i8.i
  %14 = phi ptr [ %add.ptr.i.i, %bs_write1.exit.thread.i ], [ %7, %bs_write1.exit.i ], [ %add.ptr.i10.i, %if.then.i8.i ]
  %15 = phi i32 [ 64, %bs_write1.exit.thread.i ], [ %sub.i.i, %bs_write1.exit.i ], [ %add.i.i, %if.then.i8.i ]
  %16 = load i64, ptr %cur_bits.i.i, align 8
  %and.i7 = and i32 %15, 31
  %sh_prom.i8 = zext nneg i32 %and.i7 to i64
  %shl.i = shl i64 %16, %sh_prom.i8
  %conv.i9 = trunc i64 %shl.i to i32
  %add5.i.i10 = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i9)
  store i32 %add5.i.i10, ptr %14, align 4
  %17 = load i32, ptr %i_left.i.i, align 8
  %div.neg.i = sdiv i32 %17, -8
  %18 = load ptr, ptr %p.i, align 8
  %19 = sext i32 %div.neg.i to i64
  %20 = getelementptr i8, ptr %18, i64 %19
  %add.ptr.i12 = getelementptr i8, ptr %20, i64 8
  store ptr %add.ptr.i12, ptr %p.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %bs_write.exit
  %21 = phi ptr [ %6, %for.body.lr.ph ], [ %26, %bs_write.exit ]
  %22 = phi i32 [ %.pre, %for.body.lr.ph ], [ %27, %bs_write.exit ]
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %bs_write.exit ]
  %23 = load i64, ptr %cur_bits.i13, align 8
  %shl.i14 = shl i64 %23, 8
  %or.i = or disjoint i64 %shl.i14, 255
  store i64 %or.i, ptr %cur_bits.i13, align 8
  %sub.i = add nsw i32 %22, -8
  store i32 %sub.i, ptr %i_left.i15, align 8
  %cmp.i = icmp slt i32 %22, 41
  br i1 %cmp.i, label %if.then.i16, label %bs_write.exit

if.then.i16:                                      ; preds = %for.body
  %sh_prom6.i = zext nneg i32 %sub.i to i64
  %shl7.i = shl i64 %or.i, %sh_prom6.i
  %add.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i)
  %conv8.i = trunc i64 %add.i.i.i to i32
  store i32 %conv8.i, ptr %21, align 4
  %24 = load i32, ptr %i_left.i15, align 8
  %add.i = add nsw i32 %24, 32
  store i32 %add.i, ptr %i_left.i15, align 8
  %25 = load ptr, ptr %p.i, align 8
  %add.ptr.i18 = getelementptr inbounds i8, ptr %25, i64 4
  store ptr %add.ptr.i18, ptr %p.i, align 8
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %for.body, %if.then.i16
  %26 = phi ptr [ %21, %for.body ], [ %add.ptr.i18, %if.then.i16 ]
  %27 = phi i32 [ %sub.i, %for.body ], [ %add.i, %if.then.i16 ]
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %filler
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @x264_validate_levels(ptr noundef %h, i32 noundef %verbose) local_unnamed_addr #6 {
entry:
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %0 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %0, i64 1084
  %1 = load i32, ptr %i_mb_width, align 4
  %i_mb_height = getelementptr inbounds i8, ptr %0, i64 1088
  %2 = load i32, ptr %i_mb_height, align 4
  %mul = mul nsw i32 %2, %1
  %mul2 = mul nsw i32 %mul, 384
  %i_max_dec_frame_buffering = getelementptr inbounds i8, ptr %0, i64 1292
  %3 = load i32, ptr %i_max_dec_frame_buffering, align 4
  %mul4 = mul nsw i32 %mul2, %3
  %i_profile_idc = getelementptr inbounds i8, ptr %0, i64 4
  %4 = load i32, ptr %i_profile_idc, align 4
  %cmp = icmp eq i32 %4, 100
  %cond = select i1 %cmp, i32 5, i32 4
  %i_level_idc = getelementptr inbounds i8, ptr %h, i64 32
  %5 = load i32, ptr %i_level_idc, align 16
  switch i32 %5, label %while.body.14 [
    i32 10, label %while.end
    i32 11, label %while.end.fold.split
    i32 12, label %while.end.fold.split253
    i32 13, label %while.end.fold.split254
    i32 20, label %while.end.fold.split255
    i32 21, label %while.end.fold.split256
    i32 22, label %while.end.fold.split257
    i32 30, label %while.end.fold.split258
    i32 31, label %while.end.fold.split259
    i32 32, label %while.end.fold.split260
    i32 40, label %while.end.fold.split261
    i32 41, label %while.end.fold.split262
    i32 42, label %while.end.fold.split263
    i32 50, label %while.end.fold.split264
    i32 51, label %while.end.fold.split265
  ]

while.body.14:                                    ; preds = %entry
  br label %while.end

while.end.fold.split:                             ; preds = %entry
  br label %while.end

while.end.fold.split253:                          ; preds = %entry
  br label %while.end

while.end.fold.split254:                          ; preds = %entry
  br label %while.end

while.end.fold.split255:                          ; preds = %entry
  br label %while.end

while.end.fold.split256:                          ; preds = %entry
  br label %while.end

while.end.fold.split257:                          ; preds = %entry
  br label %while.end

while.end.fold.split258:                          ; preds = %entry
  br label %while.end

while.end.fold.split259:                          ; preds = %entry
  br label %while.end

while.end.fold.split260:                          ; preds = %entry
  br label %while.end

while.end.fold.split261:                          ; preds = %entry
  br label %while.end

while.end.fold.split262:                          ; preds = %entry
  br label %while.end

while.end.fold.split263:                          ; preds = %entry
  br label %while.end

while.end.fold.split264:                          ; preds = %entry
  br label %while.end

while.end.fold.split265:                          ; preds = %entry
  br label %while.end

while.end:                                        ; preds = %entry, %while.end.fold.split265, %while.end.fold.split264, %while.end.fold.split263, %while.end.fold.split262, %while.end.fold.split261, %while.end.fold.split260, %while.end.fold.split259, %while.end.fold.split258, %while.end.fold.split257, %while.end.fold.split256, %while.end.fold.split255, %while.end.fold.split254, %while.end.fold.split253, %while.end.fold.split, %while.body.14
  %l.0.lcssa = phi ptr [ @x264_levels, %entry ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 780), %while.body.14 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 52), %while.end.fold.split ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 104), %while.end.fold.split253 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 156), %while.end.fold.split254 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 208), %while.end.fold.split255 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 260), %while.end.fold.split256 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 312), %while.end.fold.split257 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 364), %while.end.fold.split258 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 416), %while.end.fold.split259 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 468), %while.end.fold.split260 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 520), %while.end.fold.split261 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 572), %while.end.fold.split262 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 624), %while.end.fold.split263 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 676), %while.end.fold.split264 ], [ getelementptr inbounds (i8, ptr @x264_levels, i64 728), %while.end.fold.split265 ]
  %frame_size = getelementptr inbounds i8, ptr %l.0.lcssa, i64 8
  %6 = load i32, ptr %frame_size, align 4
  %cmp9 = icmp slt i32 %6, %mul
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %mul11 = shl nsw i32 %6, 3
  %mul16 = mul nsw i32 %1, %1
  %cmp17 = icmp slt i32 %mul11, %mul16
  %mul25 = mul nsw i32 %2, %2
  %cmp26 = icmp slt i32 %mul11, %mul25
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp26
  br i1 %or.cond, label %if.then, label %if.end33

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %tobool.not = icmp eq i32 %verbose, 0
  br i1 %tobool.not, label %if.end46, label %if.then27

if.then27:                                        ; preds = %if.then
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %1, i32 noundef %2, i32 noundef %6) #12
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false, %if.then27
  %ret.0 = phi i32 [ 1, %if.then27 ], [ 0, %lor.lhs.false ]
  %dpb34 = getelementptr inbounds i8, ptr %l.0.lcssa, i64 12
  %7 = load i32, ptr %dpb34, align 4
  %cmp35 = icmp sgt i32 %mul4, %7
  br i1 %cmp35, label %if.then36, label %if.end46

if.then36:                                        ; preds = %if.end33
  %tobool37.not = icmp eq i32 %verbose, 0
  br i1 %tobool37.not, label %if.end46, label %if.then38

if.then38:                                        ; preds = %if.then36
  %8 = load ptr, ptr %sps, align 16
  %i_max_dec_frame_buffering41 = getelementptr inbounds i8, ptr %8, i64 1292
  %9 = load i32, ptr %i_max_dec_frame_buffering41, align 4
  %div = sdiv i32 %7, %mul2
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %9, i32 noundef %mul4, i32 noundef %div, i32 noundef %7) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then, %if.then36, %if.then38, %if.end33
  %ret.1 = phi i32 [ %ret.0, %if.end33 ], [ 1, %if.then38 ], [ 1, %if.then36 ], [ 1, %if.then ]
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %h, i64 524
  %10 = load i32, ptr %i_vbv_max_bitrate, align 4
  %bitrate = getelementptr inbounds i8, ptr %l.0.lcssa, i64 16
  %11 = load i32, ptr %bitrate, align 4
  %mul48 = mul nsw i32 %11, %cond
  %div49 = sdiv i32 %mul48, 4
  %cmp50 = icmp sgt i32 %10, %div49
  br i1 %cmp50, label %if.then51, label %if.end61

if.then51:                                        ; preds = %if.end46
  %tobool52.not = icmp eq i32 %verbose, 0
  br i1 %tobool52.not, label %if.end77, label %if.then53

if.then53:                                        ; preds = %if.then51
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %10, i32 noundef %div49) #12
  br label %if.end61

if.end61:                                         ; preds = %if.then53, %if.end46
  %ret.2 = phi i32 [ %ret.1, %if.end46 ], [ 1, %if.then53 ]
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %h, i64 528
  %12 = load i32, ptr %i_vbv_buffer_size, align 8
  %cpb = getelementptr inbounds i8, ptr %l.0.lcssa, i64 20
  %13 = load i32, ptr %cpb, align 4
  %mul64 = mul nsw i32 %13, %cond
  %div65 = sdiv i32 %mul64, 4
  %cmp66 = icmp sgt i32 %12, %div65
  br i1 %cmp66, label %if.then67, label %if.end77

if.then67:                                        ; preds = %if.end61
  %tobool68.not = icmp eq i32 %verbose, 0
  br i1 %tobool68.not, label %if.end77, label %if.then69

if.then69:                                        ; preds = %if.then67
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %12, i32 noundef %div65) #12
  br label %if.end77

if.end77:                                         ; preds = %if.then51, %if.then67, %if.then69, %if.end61
  %ret.3 = phi i32 [ %ret.2, %if.end61 ], [ 1, %if.then69 ], [ 1, %if.then67 ], [ 1, %if.then51 ]
  %i_mv_range = getelementptr inbounds i8, ptr %h, i64 420
  %14 = load i32, ptr %i_mv_range, align 4
  %mv_range = getelementptr inbounds i8, ptr %l.0.lcssa, i64 24
  %15 = load i32, ptr %mv_range, align 4
  %cmp79 = icmp sgt i32 %14, %15
  br i1 %cmp79, label %if.then80, label %if.end88

if.then80:                                        ; preds = %if.end77
  %tobool81.not = icmp eq i32 %verbose, 0
  br i1 %tobool81.not, label %if.end88.thread, label %if.then82

if.then82:                                        ; preds = %if.then80
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %14, i32 noundef %15) #12
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %if.end77
  %ret.4 = phi i32 [ %ret.3, %if.end77 ], [ 1, %if.then82 ]
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
  %16 = load i32, ptr %b_interlaced, align 8
  %frame_only = getelementptr inbounds i8, ptr %l.0.lcssa, i64 48
  %17 = load i32, ptr %frame_only, align 4
  %tobool90.not = icmp eq i32 %17, 0
  %lnot.ext = zext i1 %tobool90.not to i32
  %cmp91 = icmp sgt i32 %16, %lnot.ext
  br i1 %cmp91, label %if.then92, label %if.end102

if.end88.thread:                                  ; preds = %if.then80
  %frame_only244 = getelementptr inbounds i8, ptr %l.0.lcssa, i64 48
  %18 = load i32, ptr %frame_only244, align 4
  %tobool90.not245 = icmp eq i32 %18, 0
  %lnot.ext246 = zext i1 %tobool90.not245 to i32
  br label %if.end102

if.then92:                                        ; preds = %if.end88
  %tobool93.not = icmp eq i32 %verbose, 0
  br i1 %tobool93.not, label %if.end102, label %if.then94

if.then94:                                        ; preds = %if.then92
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %16, i32 noundef %lnot.ext) #12
  br label %if.end102

if.end102:                                        ; preds = %if.end88.thread, %if.then92, %if.then94, %if.end88
  %lnot.ext249 = phi i32 [ %lnot.ext, %if.end88 ], [ %lnot.ext, %if.then94 ], [ %lnot.ext, %if.then92 ], [ %lnot.ext246, %if.end88.thread ]
  %ret.5 = phi i32 [ %ret.4, %if.end88 ], [ 1, %if.then94 ], [ 1, %if.then92 ], [ 1, %if.end88.thread ]
  %b_fake_interlaced = getelementptr inbounds i8, ptr %h, i64 680
  %19 = load i32, ptr %b_fake_interlaced, align 8
  %cmp108 = icmp sgt i32 %19, %lnot.ext249
  br i1 %cmp108, label %if.then109, label %if.end119

if.then109:                                       ; preds = %if.end102
  %tobool110.not = icmp eq i32 %verbose, 0
  br i1 %tobool110.not, label %if.end119, label %if.then111

if.then111:                                       ; preds = %if.then109
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %19, i32 noundef %lnot.ext249) #12
  br label %if.end119

if.end119:                                        ; preds = %if.then109, %if.then111, %if.end102
  %ret.6 = phi i32 [ %ret.5, %if.end102 ], [ 1, %if.then111 ], [ 1, %if.then109 ]
  %i_fps_den = getelementptr inbounds i8, ptr %h, i64 656
  %20 = load i32, ptr %i_fps_den, align 16
  %cmp121.not = icmp eq i32 %20, 0
  br i1 %cmp121.not, label %if.end149, label %if.then122

if.then122:                                       ; preds = %if.end119
  %conv = sext i32 %mul to i64
  %i_fps_num = getelementptr inbounds i8, ptr %h, i64 652
  %21 = load i32, ptr %i_fps_num, align 4
  %conv124 = zext i32 %21 to i64
  %mul125 = mul nsw i64 %conv124, %conv
  %conv128 = zext i32 %20 to i64
  %div129 = sdiv i64 %mul125, %conv128
  %mbps = getelementptr inbounds i8, ptr %l.0.lcssa, i64 4
  %22 = load i32, ptr %mbps, align 4
  %conv130 = sext i32 %22 to i64
  %cmp131 = icmp sgt i64 %div129, %conv130
  br i1 %cmp131, label %if.then133, label %if.end149

if.then133:                                       ; preds = %if.then122
  %tobool134.not = icmp eq i32 %verbose, 0
  br i1 %tobool134.not, label %if.end149, label %if.then135

if.then135:                                       ; preds = %if.then133
  %conv145 = trunc i64 %div129 to i32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %conv145, i32 noundef %22) #12
  br label %if.end149

if.end149:                                        ; preds = %if.then133, %if.then135, %if.then122, %if.end119
  %ret.7 = phi i32 [ %ret.6, %if.then122 ], [ %ret.6, %if.end119 ], [ 1, %if.then135 ], [ 1, %if.then133 ]
  ret i32 %ret.7
}

declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

attributes #0 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.peeled.count", i32 1}
