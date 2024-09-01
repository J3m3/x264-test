; ModuleID = 'x264_src/encoder/encoder.c'
source_filename = "x264_src/encoder/encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_cpu_name_t = type { [16 x i8], i32 }
%struct.x264_level_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.x264_nal_t = type { i32, i32, i32, ptr }
%struct.anon.7 = type { i32, i32 }
%struct.bs_s = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.x264_cabac_t = type { i32, i32, i32, i32, ptr, ptr, ptr, [8 x i8], i32, [460 x i8] }
%struct.anon.6 = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"DTS compresion changed timebase: %u/%u -> %u/%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Effective timebase denominator %lu exceeds H.264 maximum\0A\00", align 1
@i_chroma_qp_table = internal constant [76 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1D\1E\1F  !\22\22##$$%%%&&&''''''''''''''''", align 16
@.str.2 = private unnamed_addr constant [24 x i8] c"using cpu capabilities:\00", align 1
@x264_cpu_names = external constant [0 x %struct.x264_cpu_name_t], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"SSE2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SSE3\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SSE4.1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" none!\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"MV cost test failed: x264 has been miscompiled!\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"CLZ test failed: x264 has been miscompiled!\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"Are you attempting to run an SSE4a-targeted build on a CPU that\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"doesn't support it?\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"HRD bitrate: %i bits/sec\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"CPB size: %i bits\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"dump_yuv: can't write to %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"profile %s, level %d.%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Baseline\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Main\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"High 4:4:4 Predictive\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"non-strictly-monotonic PTS\0A\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"SP\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"SI\00", align 1
@.str.29 = private unnamed_addr constant [98 x i8] c"frame %s:%-5d Avg QP:%5.2f  size:%6.0f  PSNR Mean Y:%5.2f U:%5.2f V:%5.2f Avg:%5.2f Global:%5.2f\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"frame %s:%-5d Avg QP:%5.2f  size:%6.0f\0A\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c" %4.1f%%\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"consecutive B-frames:%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"mb I  %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [75 x i8] c"mb P  %s  P16..4: %4.1f%% %4.1f%% %4.1f%% %4.1f%% %4.1f%%    skip:%4.1f%%\0A\00", align 1
@x264_mb_type_list_table = internal unnamed_addr constant [19 x [2 x [2 x i8]]] [[2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer], align 16
@.str.35 = private unnamed_addr constant [107 x i8] c"mb B  %s  B16..8: %4.1f%% %4.1f%% %4.1f%%  direct:%4.1f%%  skip:%4.1f%%  L0:%4.1f%% L1:%4.1f%% BI:%4.1f%%\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c" inter:%.1f%%\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"8x8 transform intra:%.1f%%%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"direct mvs  spatial:%.1f%% temporal:%.1f%%\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c" inter: %.1f%% %.1f%% %.1f%%\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"coded y,uvDC,uvAC intra: %.1f%% %.1f%% %.1f%%%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"i16 v,h,dc,p: %2.0f%% %2.0f%% %2.0f%% %2.0f%%\0A\00", align 1
@.str.42 = private unnamed_addr constant [105 x i8] c"i%d v,h,dc,ddl,ddr,vr,hd,vl,hu: %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%%\0A\00", align 1
@x264_mb_pred_mode8x8c_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"i8c dc,h,v,p: %2.0f%% %2.0f%% %2.0f%% %2.0f%%\0A\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Weighted P-Frames: Y:%.1f%%\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"ref %c L%d:%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"PB\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"SSIM Mean Y:%.7f\0A\00", align 1
@.str.48 = private unnamed_addr constant [68 x i8] c"PSNR Mean Y:%6.3f U:%6.3f V:%6.3f Avg:%6.3f Global:%6.3f kb/s:%.2f\0A\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"kb/s:%.2f\0A\00", align 1
@tga_dump_rate = dso_local local_unnamed_addr global i32 0, align 4
@.str.50 = private unnamed_addr constant [32 x i8] c"invalid width x height (%dx%d)\0A\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c"width or height not divisible by 2 (%dx%d)\0A\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"invalid CSP (only I420/YV12 supported)\0A\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"not compiled with pthread support!\0A\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"interlace + me=esa is not implemented\0A\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"interlace + weightp is not implemented\0A\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"broken ffmpeg default settings detected\0A\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"use an encoding preset (vpre)\0A\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"no ratecontrol method specified\0A\00", align 1
@.str.59 = private unnamed_addr constant [48 x i8] c"VBV is incompatible with constant QP, ignored.\0A\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"VBV maxrate unspecified, assuming CBR\0A\00", align 1
@.str.61 = private unnamed_addr constant [50 x i8] c"VBV bufsize set but maxrate unspecified, ignored\0A\00", align 1
@.str.62 = private unnamed_addr constant [53 x i8] c"max bitrate less than average bitrate, assuming CBR\0A\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c"VBV maxrate specified, but no bufsize, ignored\0A\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"interlaced + slice-max-size is not implemented\0A\00", align 1
@.str.65 = private unnamed_addr constant [47 x i8] c"interlaced + slice-max-mbs is not implemented\0A\00", align 1
@.str.66 = private unnamed_addr constant [44 x i8] c"subme=0 + direct=temporal is not supported\0A\00", align 1
@.str.67 = private unnamed_addr constant [51 x i8] c"b-pyramid normal + intra-refresh is not supported\0A\00", align 1
@.str.68 = private unnamed_addr constant [42 x i8] c"ref > 1 + intra-refresh is not supported\0A\00", align 1
@x264_levels = external local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.69 = private unnamed_addr constant [23 x i8] c"invalid level_idc: %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"using mv_range_thread = %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"NAL HRD parameters require VBV parameters\0A\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"CBR HRD requires constant bitrate\0A\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"cannot create valid sample aspect ratio\0A\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"using SAR=%d/%d\0A\00", align 1
@weight_none = external local_unnamed_addr constant [3 x %struct.x264_weight_t], align 16
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 16
@.str.75 = private unnamed_addr constant [35 x i8] c"invalid DTS: PTS is less than DTS\0A\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c" PSNR Y:%5.2f U:%5.2f V:%5.2f\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c" SSIM Y:%.5f\00", align 1
@.str.78 = private unnamed_addr constant [84 x i8] c"frame=%4d QP=%.2f NAL=%d Slice:%c Poc:%-3d I:%-4d P:%-4d SKIP:%-4d size=%d bytes%s\0A\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"frame_%d.yuv\00", align 1
@seek_val = external local_unnamed_addr global i32, align 4
@.str.80 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.82 = private unnamed_addr constant [34 x i8] c"I16..4%s: %4.1f%% %4.1f%% %4.1f%%\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"..PCM\00", align 1
@.str.84 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@switch.table.x264_encoder_encode = private unnamed_addr constant [3 x i64] [i64 1, i64 2, i64 0], align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_encoder_open_96(ptr noundef %param) local_unnamed_addr #0 {
entry:
  %buf = alloca [1000 x i8], align 16
  %temp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %buf) #17
  %call = tail call ptr @x264_malloc(i32 noundef 33344) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %fail, label %do.end

do.end:                                           ; preds = %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33344) %call, i8 0, i64 33344, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %call, ptr noundef nonnull align 8 dereferenceable(704) %param, i64 704, i1 false)
  %param_free = getelementptr inbounds i8, ptr %param, i64 696
  %0 = load ptr, ptr %param_free, align 8
  %tobool5.not = icmp eq ptr %0, null
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %do.end
  tail call void %0(ptr noundef nonnull %param) #17
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end
  %call9 = tail call fastcc i32 @x264_validate_parameters(ptr noundef nonnull %call)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %fail, label %if.end11

if.end11:                                         ; preds = %if.end8
  %psz_cqm_file = getelementptr inbounds i8, ptr %call, i64 152
  %1 = load ptr, ptr %psz_cqm_file, align 8
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %if.end21, label %if.then14

if.then14:                                        ; preds = %if.end11
  %call17 = tail call i32 @x264_cqm_parse_file(ptr noundef nonnull %call, ptr noundef nonnull %1) #17
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %fail, label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end11
  %rc = getelementptr inbounds i8, ptr %call, i64 488
  %psz_stat_out = getelementptr inbounds i8, ptr %call, i64 568
  %2 = load ptr, ptr %psz_stat_out, align 8
  %tobool23.not = icmp eq ptr %2, null
  br i1 %tobool23.not, label %if.end32, label %if.then24

if.then24:                                        ; preds = %if.end21
  %call28 = tail call ptr @spec_strdup(ptr noundef nonnull %2) #17
  store ptr %call28, ptr %psz_stat_out, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.end21
  %psz_stat_in = getelementptr inbounds i8, ptr %call, i64 584
  %3 = load ptr, ptr %psz_stat_in, align 8
  %tobool35.not = icmp eq ptr %3, null
  br i1 %tobool35.not, label %if.end44, label %if.then36

if.then36:                                        ; preds = %if.end32
  %call40 = tail call ptr @spec_strdup(ptr noundef nonnull %3) #17
  store ptr %call40, ptr %psz_stat_in, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %if.end32
  tail call fastcc void @x264_set_aspect_ratio(ptr noundef nonnull %call, ptr noundef nonnull %call, i32 noundef 1)
  %i_fps_num = getelementptr inbounds i8, ptr %call, i64 652
  %i_fps_den = getelementptr inbounds i8, ptr %call, i64 656
  tail call void @x264_reduce_fraction(ptr noundef nonnull %i_fps_num, ptr noundef nonnull %i_fps_den) #17
  %i_timebase_num = getelementptr inbounds i8, ptr %call, i64 660
  %i_timebase_den = getelementptr inbounds i8, ptr %call, i64 664
  tail call void @x264_reduce_fraction(ptr noundef nonnull %i_timebase_num, ptr noundef nonnull %i_timebase_den) #17
  %i_frame = getelementptr inbounds i8, ptr %call, i64 1844
  store i32 -1, ptr %i_frame, align 4
  %i_frame_num = getelementptr inbounds i8, ptr %call, i64 1848
  store i32 0, ptr %i_frame_num, align 8
  %i_idr_pic_id = getelementptr inbounds i8, ptr %call, i64 3336
  store i32 0, ptr %i_idr_pic_id, align 8
  %4 = load i32, ptr %i_timebase_den, align 8
  %conv = zext i32 %4 to i64
  %b_dts_compress = getelementptr inbounds i8, ptr %call, i64 668
  %5 = load i32, ptr %b_dts_compress, align 4
  %tobool53.not = icmp eq i32 %5, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.end44
  %i_bframe = getelementptr inbounds i8, ptr %call, i64 100
  %6 = load i32, ptr %i_bframe, align 4
  %tobool56.not = icmp eq i32 %6, 0
  br i1 %tobool56.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.then54
  %i_dts_compress_multiplier1186 = getelementptr inbounds i8, ptr %call, i64 3340
  store i32 1, ptr %i_dts_compress_multiplier1186, align 4
  br label %if.end76

cond.end:                                         ; preds = %if.then54
  %i_bframe_pyramid = getelementptr inbounds i8, ptr %call, i64 112
  %7 = load i32, ptr %i_bframe_pyramid, align 16
  %tobool58.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool58.not, i32 2, i32 3
  %i_dts_compress_multiplier = getelementptr inbounds i8, ptr %call, i64 3340
  store i32 %cond, ptr %i_dts_compress_multiplier, align 4
  %mul = mul i32 %cond, %4
  %conv67 = zext i32 %mul to i64
  %8 = load i32, ptr %i_timebase_num, align 4
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %call, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %8, i32 noundef %4, i32 noundef %8, i64 noundef %conv67) #17
  br label %if.end76

if.else:                                          ; preds = %if.end44
  %i_dts_compress_multiplier75 = getelementptr inbounds i8, ptr %call, i64 3340
  store i32 1, ptr %i_dts_compress_multiplier75, align 4
  br label %if.end76

if.end76:                                         ; preds = %cond.end.thread, %cond.end, %if.else
  %new_timebase_den.0 = phi i64 [ %conv67, %cond.end ], [ %conv, %if.else ], [ %conv, %cond.end.thread ]
  %cmp78 = icmp ugt i64 %new_timebase_den.0, 2147483647
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end76
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull @.str.1, i64 noundef %new_timebase_den.0) #17
  br label %fail

if.end81:                                         ; preds = %if.end76
  %conv82 = trunc nuw i64 %new_timebase_den.0 to i32
  store i32 %conv82, ptr %i_timebase_den, align 8
  %sps_array = getelementptr inbounds i8, ptr %call, i64 1896
  %sps = getelementptr inbounds i8, ptr %call, i64 3200
  store ptr %sps_array, ptr %sps, align 16
  %i_sps_id = getelementptr inbounds i8, ptr %call, i64 644
  %9 = load i32, ptr %i_sps_id, align 4
  tail call void @x264_sps_init(ptr noundef nonnull %sps_array, i32 noundef %9, ptr noundef nonnull %call) #17
  %pps_array = getelementptr inbounds i8, ptr %call, i64 3208
  %pps = getelementptr inbounds i8, ptr %call, i64 3328
  store ptr %pps_array, ptr %pps, align 16
  %10 = load i32, ptr %i_sps_id, align 4
  %11 = load ptr, ptr %sps, align 16
  tail call void @x264_pps_init(ptr noundef nonnull %pps_array, i32 noundef %10, ptr noundef nonnull %call, ptr noundef %11) #17
  %call94 = tail call i32 @x264_validate_levels(ptr noundef nonnull %call, i32 noundef 1) #17
  %12 = load ptr, ptr %pps, align 16
  %i_chroma_qp_index_offset = getelementptr inbounds i8, ptr %12, i64 44
  %13 = load i32, ptr %i_chroma_qp_index_offset, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, ptr getelementptr inbounds (i8, ptr @i_chroma_qp_table, i64 12), i64 %idx.ext
  %chroma_qp_table = getelementptr inbounds i8, ptr %call, i64 7216
  store ptr %add.ptr, ptr %chroma_qp_table, align 16
  %call96 = tail call i32 @x264_cqm_init(ptr noundef nonnull %call) #17
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %fail, label %if.end100

if.end100:                                        ; preds = %if.end81
  %14 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %14, i64 1084
  %15 = load i32, ptr %i_mb_width, align 4
  %i_mb_height = getelementptr inbounds i8, ptr %14, i64 1088
  %16 = load i32, ptr %i_mb_height, align 4
  %mul103 = mul nsw i32 %16, %15
  %mb = getelementptr inbounds i8, ptr %call, i64 16368
  store i32 %mul103, ptr %mb, align 16
  %i_bframe_adaptive = getelementptr inbounds i8, ptr %call, i64 104
  %17 = load i32, ptr %i_bframe_adaptive, align 8
  %cmp105 = icmp eq i32 %17, 2
  br i1 %cmp105, label %land.lhs.true, label %if.else122

land.lhs.true:                                    ; preds = %if.end100
  %b_stat_read = getelementptr inbounds i8, ptr %call, i64 576
  %18 = load i32, ptr %b_stat_read, align 8
  %tobool109.not = icmp eq i32 %18, 0
  br i1 %tobool109.not, label %if.then110, label %if.else122

if.then110:                                       ; preds = %land.lhs.true
  %i_bframe112 = getelementptr inbounds i8, ptr %call, i64 100
  %19 = load i32, ptr %i_bframe112, align 4
  %spec.select = tail call i32 @llvm.smax.i32(i32 %19, i32 3)
  %mul121 = shl nsw i32 %spec.select, 2
  br label %if.end127

if.else122:                                       ; preds = %land.lhs.true, %if.end100
  %i_bframe124 = getelementptr inbounds i8, ptr %call, i64 100
  %20 = load i32, ptr %i_bframe124, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.else122, %if.then110
  %21 = phi i32 [ %20, %if.else122 ], [ %19, %if.then110 ]
  %22 = phi i32 [ %20, %if.else122 ], [ %mul121, %if.then110 ]
  %b_mb_tree = getelementptr inbounds i8, ptr %call, i64 552
  %23 = load i32, ptr %b_mb_tree, align 8
  %tobool130.not.not = icmp eq i32 %23, 0
  br i1 %tobool130.not.not, label %lor.lhs.false, label %if.then134

lor.lhs.false:                                    ; preds = %if.end127
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %call, i64 528
  %24 = load i32, ptr %i_vbv_buffer_size, align 8
  %tobool133.not = icmp eq i32 %24, 0
  br i1 %tobool133.not, label %if.end152, label %if.then134

if.then134:                                       ; preds = %lor.lhs.false, %if.end127
  %i_lookahead = getelementptr inbounds i8, ptr %call, i64 556
  %25 = load i32, ptr %i_lookahead, align 4
  %. = tail call i32 @llvm.smax.i32(i32 %22, i32 %25)
  br label %if.end152

if.end152:                                        ; preds = %if.then134, %lor.lhs.false
  %26 = phi i32 [ %., %if.then134 ], [ %22, %lor.lhs.false ]
  %frames153 = getelementptr inbounds i8, ptr %call, i64 14416
  %i_delay154 = getelementptr inbounds i8, ptr %call, i64 14612
  %i_thread_frames = getelementptr inbounds i8, ptr %call, i64 1852
  %27 = load i32, ptr %i_thread_frames, align 4
  %sub = add i32 %26, -1
  %add = add i32 %sub, %27
  %i_sync_lookahead = getelementptr inbounds i8, ptr %call, i64 16
  %28 = load i32, ptr %i_sync_lookahead, align 16
  %add160 = add nsw i32 %add, %28
  %b_vfr_input = getelementptr inbounds i8, ptr %call, i64 648
  %29 = load i32, ptr %b_vfr_input, align 8
  %tobool162.not = icmp eq i32 %29, 0
  br i1 %tobool162.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end152
  %30 = load i32, ptr %rc, align 8
  %cmp165 = icmp eq i32 %30, 2
  br i1 %cmp165, label %land.end, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %land.rhs
  %b_stat_write = getelementptr inbounds i8, ptr %call, i64 560
  %31 = load i32, ptr %b_stat_write, align 8
  %tobool170.not = icmp eq i32 %31, 0
  br i1 %tobool170.not, label %lor.rhs, label %land.end

lor.rhs:                                          ; preds = %lor.lhs.false167
  %i_vbv_buffer_size173 = getelementptr inbounds i8, ptr %call, i64 528
  %32 = load i32, ptr %i_vbv_buffer_size173, align 8
  %tobool174 = icmp ne i32 %32, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false167, %lor.rhs, %if.end152
  %33 = phi i1 [ false, %if.end152 ], [ true, %lor.lhs.false167 ], [ true, %land.rhs ], [ %tobool174, %lor.rhs ]
  %land.ext = zext i1 %33 to i32
  %add177 = add nsw i32 %add160, %land.ext
  store i32 %add177, ptr %i_delay154, align 4
  %i_bframe179 = getelementptr inbounds i8, ptr %call, i64 100
  %tobool180.not = icmp eq i32 %21, 0
  br i1 %tobool180.not, label %cond.end187, label %cond.true181

cond.true181:                                     ; preds = %land.end
  %i_bframe_pyramid183 = getelementptr inbounds i8, ptr %call, i64 112
  %34 = load i32, ptr %i_bframe_pyramid183, align 16
  %tobool184.not = icmp eq i32 %34, 0
  %cond185 = select i1 %tobool184.not, i32 1, i32 2
  br label %cond.end187

cond.end187:                                      ; preds = %land.end, %cond.true181
  %cond188 = phi i32 [ %cond185, %cond.true181 ], [ 0, %land.end ]
  %i_bframe_delay = getelementptr inbounds i8, ptr %call, i64 14616
  store i32 %cond188, ptr %i_bframe_delay, align 8
  %i_frame_reference = getelementptr inbounds i8, ptr %call, i64 80
  %35 = load i32, ptr %i_frame_reference, align 16
  %i_max_ref0 = getelementptr inbounds i8, ptr %call, i64 14604
  store i32 %35, ptr %i_max_ref0, align 4
  %i_num_reorder_frames = getelementptr inbounds i8, ptr %14, i64 1288
  %36 = load i32, ptr %i_num_reorder_frames, align 4
  %.1184 = tail call i32 @llvm.smin.i32(i32 %36, i32 %35)
  %i_max_ref1 = getelementptr inbounds i8, ptr %call, i64 14608
  store i32 %.1184, ptr %i_max_ref1, align 16
  %i_max_dec_frame_buffering = getelementptr inbounds i8, ptr %14, i64 1292
  %37 = load i32, ptr %i_max_dec_frame_buffering, align 4
  %i_max_dpb = getelementptr inbounds i8, ptr %call, i64 14600
  store i32 %37, ptr %i_max_dpb, align 8
  %b_stat_read212 = getelementptr inbounds i8, ptr %call, i64 576
  %38 = load i32, ptr %b_stat_read212, align 8
  %tobool213.not = icmp eq i32 %38, 0
  br i1 %tobool213.not, label %land.rhs214, label %land.rhs250

land.rhs214:                                      ; preds = %cond.end187
  %39 = load i32, ptr %rc, align 8
  %40 = add i32 %39, -3
  %switch = icmp ult i32 %40, -2
  %tobool229.not = icmp eq i32 %17, 0
  %or.cond = and i1 %switch, %tobool229.not
  br i1 %or.cond, label %lor.lhs.false230, label %land.end243.thread

lor.lhs.false230:                                 ; preds = %land.rhs214
  %i_scenecut_threshold = getelementptr inbounds i8, ptr %call, i64 92
  %41 = load i32, ptr %i_scenecut_threshold, align 4
  %42 = or i32 %41, %23
  %brmerge.not = icmp eq i32 %42, 0
  br i1 %brmerge.not, label %lor.rhs238, label %land.end243.thread

lor.rhs238:                                       ; preds = %lor.lhs.false230
  %i_weighted_pred = getelementptr inbounds i8, ptr %call, i64 396
  %43 = load i32, ptr %i_weighted_pred, align 4
  %cmp240 = icmp eq i32 %43, 2
  br label %land.end243.thread

land.end243.thread:                               ; preds = %lor.lhs.false230, %land.rhs214, %lor.rhs238
  %.ph = phi i1 [ true, %land.rhs214 ], [ %cmp240, %lor.rhs238 ], [ true, %lor.lhs.false230 ]
  %land.ext2441188 = zext i1 %.ph to i32
  br label %land.end256

land.rhs250:                                      ; preds = %cond.end187
  %i_vbv_buffer_size253 = getelementptr inbounds i8, ptr %call, i64 528
  %44 = load i32, ptr %i_vbv_buffer_size253, align 8
  %cmp254 = icmp sgt i32 %44, 0
  br label %land.end256

land.end256:                                      ; preds = %land.end243.thread, %land.rhs250
  %land.ext2441190 = phi i32 [ 0, %land.rhs250 ], [ %land.ext2441188, %land.end243.thread ]
  %45 = phi i1 [ %cmp254, %land.rhs250 ], [ false, %land.end243.thread ]
  %b_have_lowres1191 = getelementptr inbounds i8, ptr %call, i64 14672
  %land.ext257 = zext i1 %45 to i32
  %or = or i32 %land.ext2441190, %land.ext257
  store i32 %or, ptr %b_have_lowres1191, align 16
  %inter = getelementptr inbounds i8, ptr %call, i64 388
  %46 = load i32, ptr %inter, align 4
  %and = lshr i32 %46, 5
  %and.lobit = and i32 %and, 1
  %b_have_sub8x8_esa = getelementptr inbounds i8, ptr %call, i64 14676
  store i32 %and.lobit, ptr %b_have_sub8x8_esa, align 4
  %i_keyint_max = getelementptr inbounds i8, ptr %call, i64 84
  %47 = load i32, ptr %i_keyint_max, align 4
  %sub266 = sub nsw i32 0, %47
  %i_last_keyframe = getelementptr inbounds i8, ptr %call, i64 14592
  store i32 %sub266, ptr %i_last_keyframe, align 16
  %i_input = getelementptr inbounds i8, ptr %call, i64 14596
  store i32 0, ptr %i_input, align 4
  %i_largest_pts = getelementptr inbounds i8, ptr %call, i64 14656
  %add275 = shl i32 %add177, 3
  %mul277 = add i32 %add275, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i_largest_pts, i8 -1, i64 16, i1 false)
  %call279 = tail call ptr @x264_malloc(i32 noundef %mul277) #17
  %unused = getelementptr inbounds i8, ptr %call, i64 14424
  store ptr %call279, ptr %unused, align 8
  %tobool285.not = icmp eq ptr %call279, null
  br i1 %tobool285.not, label %fail, label %do.end289

do.end289:                                        ; preds = %land.end256
  %48 = load i32, ptr %i_delay154, align 4
  %add295 = add nsw i32 %48, 3
  %conv296 = sext i32 %add295 to i64
  %mul297 = shl nsw i64 %conv296, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %call279, i8 0, i64 %mul297, i1 false)
  %49 = load i32, ptr %i_thread_frames, align 4
  %add303 = shl i32 %49, 3
  %mul305 = add i32 %add303, 160
  %call307 = tail call ptr @x264_malloc(i32 noundef %mul305) #17
  %arrayidx310 = getelementptr inbounds i8, ptr %call, i64 14432
  store ptr %call307, ptr %arrayidx310, align 8
  %tobool314.not = icmp eq ptr %call307, null
  br i1 %tobool314.not, label %fail, label %do.end318

do.end318:                                        ; preds = %do.end289
  %50 = load i32, ptr %i_thread_frames, align 4
  %add323 = add nsw i32 %50, 20
  %conv324 = sext i32 %add323 to i64
  %mul325 = shl nsw i64 %conv324, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %call307, i8 0, i64 %mul325, i1 false)
  %51 = load i32, ptr %i_sync_lookahead, align 16
  %52 = load i32, ptr %i_bframe179, align 4
  %add334 = add nsw i32 %52, %51
  %53 = load i32, ptr %i_thread_frames, align 4
  %add336 = add nsw i32 %add334, %53
  %add337 = shl i32 %add336, 3
  %mul339 = add i32 %add337, 24
  %call341 = tail call ptr @x264_malloc(i32 noundef %mul339) #17
  store ptr %call341, ptr %frames153, align 16
  %tobool345.not = icmp eq ptr %call341, null
  br i1 %tobool345.not, label %fail, label %do.end349

do.end349:                                        ; preds = %do.end318
  %54 = load i32, ptr %i_sync_lookahead, align 16
  %55 = load i32, ptr %i_bframe179, align 4
  %56 = load i32, ptr %i_thread_frames, align 4
  %add356 = add i32 %54, 3
  %add358 = add i32 %add356, %55
  %add359 = add i32 %add358, %56
  %conv360 = sext i32 %add359 to i64
  %mul361 = shl nsw i64 %conv360, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %call341, i8 0, i64 %mul361, i1 false)
  %i_weighted_pred366 = getelementptr inbounds i8, ptr %call, i64 396
  %57 = load i32, ptr %i_weighted_pred366, align 4
  %cmp367 = icmp sgt i32 %57, 0
  br i1 %cmp367, label %do.body371, label %if.end394

do.body371:                                       ; preds = %do.end349
  %58 = load i32, ptr %i_thread_frames, align 4
  %mul373 = shl i32 %58, 5
  %call377 = tail call ptr @x264_malloc(i32 noundef %mul373) #17
  %blank_unused = getelementptr inbounds i8, ptr %call, i64 14440
  store ptr %call377, ptr %blank_unused, align 8
  %tobool381.not = icmp eq ptr %call377, null
  br i1 %tobool381.not, label %fail, label %do.end385

do.end385:                                        ; preds = %do.body371
  %59 = load i32, ptr %i_thread_frames, align 4
  %mul389 = shl nsw i32 %59, 2
  %conv390 = sext i32 %mul389 to i64
  %mul391 = shl nsw i64 %conv390, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %call377, i8 0, i64 %mul391, i1 false)
  br label %if.end394

if.end394:                                        ; preds = %do.end385, %do.end349
  %i_ref0 = getelementptr inbounds i8, ptr %call, i64 14696
  store i32 0, ptr %i_ref0, align 8
  %i_ref1 = getelementptr inbounds i8, ptr %call, i64 14856
  store i32 0, ptr %i_ref1, align 8
  %i_disp_fields = getelementptr inbounds i8, ptr %call, i64 1864
  %i_cpb_delay = getelementptr inbounds i8, ptr %call, i64 1880
  store i32 0, ptr %i_cpb_delay, align 8
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i_disp_fields, align 8
  tail call void @x264_rdo_init() #17
  %60 = load i32, ptr %call, align 16
  %predict_16x16 = getelementptr inbounds i8, ptr %call, i64 31248
  tail call void @x264_predict_16x16_init(i32 noundef %60, ptr noundef nonnull %predict_16x16) #17
  %61 = load i32, ptr %call, align 16
  %predict_8x8c = getelementptr inbounds i8, ptr %call, i64 31304
  tail call void @x264_predict_8x8c_init(i32 noundef %61, ptr noundef nonnull %predict_8x8c) #17
  %62 = load i32, ptr %call, align 16
  %predict_8x8 = getelementptr inbounds i8, ptr %call, i64 31360
  %predict_8x8_filter = getelementptr inbounds i8, ptr %call, i64 31552
  tail call void @x264_predict_8x8_init(i32 noundef %62, ptr noundef nonnull %predict_8x8, ptr noundef nonnull %predict_8x8_filter) #17
  %63 = load i32, ptr %call, align 16
  %predict_4x4 = getelementptr inbounds i8, ptr %call, i64 31456
  tail call void @x264_predict_4x4_init(i32 noundef %63, ptr noundef nonnull %predict_4x4) #17
  %b_cabac = getelementptr inbounds i8, ptr %call, i64 128
  %64 = load i32, ptr %b_cabac, align 16
  %tobool406.not = icmp eq i32 %64, 0
  br i1 %tobool406.not, label %if.then407, label %if.end408

if.then407:                                       ; preds = %if.end394
  tail call void (...) @x264_init_vlc_tables() #17
  br label %if.end408

if.end408:                                        ; preds = %if.then407, %if.end394
  %65 = load i32, ptr %call, align 16
  %pixf = getelementptr inbounds i8, ptr %call, i64 31560
  tail call void @x264_pixel_init(i32 noundef %65, ptr noundef nonnull %pixf) #17
  %66 = load i32, ptr %call, align 16
  %dctf = getelementptr inbounds i8, ptr %call, i64 32912
  tail call void @x264_dct_init(i32 noundef %66, ptr noundef nonnull %dctf) #17
  %67 = load i32, ptr %call, align 16
  %zigzagf = getelementptr inbounds i8, ptr %call, i64 33032
  %b_interlaced = getelementptr inbounds i8, ptr %call, i64 136
  %68 = load i32, ptr %b_interlaced, align 8
  tail call void @x264_zigzag_init(i32 noundef %67, ptr noundef nonnull %zigzagf, i32 noundef %68) #17
  %69 = load i32, ptr %call, align 16
  %mc = getelementptr inbounds i8, ptr %call, i64 32616
  tail call void @x264_mc_init(i32 noundef %69, ptr noundef nonnull %mc) #17
  %70 = load i32, ptr %call, align 16
  %quantf = getelementptr inbounds i8, ptr %call, i64 33080
  tail call void @x264_quant_init(ptr noundef nonnull %call, i32 noundef %70, ptr noundef nonnull %quantf) #17
  %71 = load i32, ptr %call, align 16
  %loopf = getelementptr inbounds i8, ptr %call, i64 33256
  tail call void @x264_deblock_init(i32 noundef %71, ptr noundef nonnull %loopf) #17
  tail call void @x264_dct_init_weights() #17
  tail call fastcc void @mbcmp_init(ptr noundef nonnull %call)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %buf, ptr noundef nonnull align 1 dereferenceable(24) @.str.2, i64 24, i1 false)
  %add.ptr426 = getelementptr inbounds i8, ptr %buf, i64 23
  %72 = load i32, ptr getelementptr inbounds (i8, ptr @x264_cpu_names, i64 16), align 4
  %tobool428.not1202 = icmp eq i32 %72, 0
  %.pre1235 = load i32, ptr %call, align 16
  br i1 %tobool428.not1202, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end408
  %call432.peel = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @x264_cpu_names, ptr noundef nonnull dereferenceable(5) @.str.3) #18
  %tobool433.not.peel = icmp ne i32 %call432.peel, 0
  %and437.peel = and i32 %.pre1235, 384
  %tobool438.not.peel = icmp eq i32 %and437.peel, 0
  %or.cond1241 = select i1 %tobool433.not.peel, i1 true, i1 %tobool438.not.peel
  br i1 %or.cond1241, label %if.end440.peel, label %for.inc.peel

if.end440.peel:                                   ; preds = %for.body.preheader
  %call445.peel = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @x264_cpu_names, ptr noundef nonnull dereferenceable(5) @.str.4) #18
  %tobool446.not.peel = icmp ne i32 %call445.peel, 0
  %73 = and i32 %.pre1235, 1026
  %or.cond.not.peel = icmp eq i32 %73, 2
  %or.cond1242 = select i1 %tobool446.not.peel, i1 true, i1 %or.cond.not.peel
  br i1 %or.cond1242, label %if.end458.peel, label %for.inc.peel

if.end458.peel:                                   ; preds = %if.end440.peel
  %call463.peel = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @x264_cpu_names, ptr noundef nonnull dereferenceable(7) @.str.5) #18
  %tobool464.not.peel = icmp ne i32 %call463.peel, 0
  %and468.peel = and i32 %.pre1235, 16384
  %tobool469.not.peel = icmp eq i32 %and468.peel, 0
  %or.cond1243 = select i1 %tobool464.not.peel, i1 true, i1 %tobool469.not.peel
  %and477.peel = and i32 %.pre1235, %72
  %cmp481.peel = icmp eq i32 %and477.peel, %72
  %or.cond1244 = select i1 %or.cond1243, i1 %cmp481.peel, i1 false
  br i1 %or.cond1244, label %if.then495.peel, label %for.inc.peel

if.then495.peel:                                  ; preds = %if.end458.peel
  %call500.peel = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr426, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @x264_cpu_names) #17
  %idx.ext501.peel = sext i32 %call500.peel to i64
  %add.ptr502.peel = getelementptr inbounds i8, ptr %add.ptr426, i64 %idx.ext501.peel
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.end458.peel, %if.end440.peel, %for.body.preheader, %if.then495.peel
  %p.1.peel = phi ptr [ %add.ptr502.peel, %if.then495.peel ], [ %add.ptr426, %for.body.preheader ], [ %add.ptr426, %if.end440.peel ], [ %add.ptr426, %if.end458.peel ]
  %74 = load i32, ptr getelementptr inbounds (i8, ptr @x264_cpu_names, i64 36), align 4
  %tobool428.not.peel = icmp eq i32 %74, 0
  br i1 %tobool428.not.peel, label %for.cond.cleanup.loopexit, label %for.body

for.cond.cleanup.loopexit:                        ; preds = %for.inc, %for.inc.peel
  %p.1.lcssa = phi ptr [ %p.1.peel, %for.inc.peel ], [ %p.1, %for.inc ]
  %.pre = load i32, ptr %call, align 16
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %if.end408
  %75 = phi i32 [ %.pre1235, %if.end408 ], [ %.pre, %for.cond.cleanup.loopexit ]
  %p.0.lcssa = phi ptr [ %add.ptr426, %if.end408 ], [ %p.1.lcssa, %for.cond.cleanup.loopexit ]
  %tobool506.not = icmp eq i32 %75, 0
  br i1 %tobool506.not, label %if.then507, label %if.end511

for.body:                                         ; preds = %for.inc.peel, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.inc.peel ]
  %76 = phi i32 [ %80, %for.inc ], [ %74, %for.inc.peel ]
  %arrayidx4271205 = phi ptr [ %arrayidx427, %for.inc ], [ getelementptr inbounds (i8, ptr @x264_cpu_names, i64 20), %for.inc.peel ]
  %p.01204 = phi ptr [ %p.1, %for.inc ], [ %p.1.peel, %for.inc.peel ]
  %call432 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx4271205, ptr noundef nonnull dereferenceable(5) @.str.3) #18
  %tobool433.not = icmp ne i32 %call432, 0
  %.pre1233.pre.pre = load i32, ptr %call, align 16
  %and437 = and i32 %.pre1233.pre.pre, 384
  %tobool438.not = icmp eq i32 %and437, 0
  %or.cond1245 = select i1 %tobool433.not, i1 true, i1 %tobool438.not
  br i1 %or.cond1245, label %if.end440, label %for.inc

if.end440:                                        ; preds = %for.body
  %call445 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx4271205, ptr noundef nonnull dereferenceable(5) @.str.4) #18
  %tobool446.not = icmp ne i32 %call445, 0
  %77 = and i32 %.pre1233.pre.pre, 1026
  %or.cond.not = icmp eq i32 %77, 2
  %or.cond1246 = select i1 %tobool446.not, i1 true, i1 %or.cond.not
  br i1 %or.cond1246, label %if.end458, label %for.inc

if.end458:                                        ; preds = %if.end440
  %call463 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx4271205, ptr noundef nonnull dereferenceable(7) @.str.5) #18
  %tobool464.not = icmp ne i32 %call463, 0
  %and468 = and i32 %.pre1233.pre.pre, 16384
  %tobool469.not = icmp eq i32 %and468, 0
  %or.cond1247 = select i1 %tobool464.not, i1 true, i1 %tobool469.not
  %and477 = and i32 %.pre1233.pre.pre, %76
  %cmp481 = icmp eq i32 %and477, %76
  %or.cond1248 = select i1 %or.cond1247, i1 %cmp481, i1 false
  br i1 %or.cond1248, label %lor.lhs.false485, label %for.inc

lor.lhs.false485:                                 ; preds = %if.end458
  %78 = add nsw i64 %indvars.iv, -1
  %flags492 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %78, i32 1
  %79 = load i32, ptr %flags492, align 4
  %cmp493.not = icmp eq i32 %76, %79
  br i1 %cmp493.not, label %for.inc, label %if.then495

if.then495:                                       ; preds = %lor.lhs.false485
  %call500 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.01204, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %arrayidx4271205) #17
  %idx.ext501 = sext i32 %call500 to i64
  %add.ptr502 = getelementptr inbounds i8, ptr %p.01204, i64 %idx.ext501
  br label %for.inc

for.inc:                                          ; preds = %if.end458, %if.end440, %for.body, %lor.lhs.false485, %if.then495
  %p.1 = phi ptr [ %add.ptr502, %if.then495 ], [ %p.01204, %lor.lhs.false485 ], [ %p.01204, %for.body ], [ %p.01204, %if.end440 ], [ %p.01204, %if.end458 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx427 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %indvars.iv.next
  %flags = getelementptr inbounds i8, ptr %arrayidx427, i64 16
  %80 = load i32, ptr %flags, align 4
  %tobool428.not = icmp eq i32 %80, 0
  br i1 %tobool428.not, label %for.cond.cleanup.loopexit, label %for.body, !llvm.loop !5

if.then507:                                       ; preds = %for.cond.cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %p.0.lcssa, ptr noundef nonnull align 1 dereferenceable(7) @.str.7, i64 7, i1 false)
  br label %if.end511

if.end511:                                        ; preds = %if.then507, %for.cond.cleanup
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %call, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull %buf) #17
  %i_qp_min = getelementptr inbounds i8, ptr %call, i64 496
  %81 = load i32, ptr %i_qp_min, align 8
  %i_qp_max = getelementptr inbounds i8, ptr %call, i64 500
  %82 = load i32, ptr %i_qp_max, align 4
  %cmp518.not1206 = icmp sgt i32 %81, %82
  br i1 %cmp518.not1206, label %for.end527, label %for.body520

for.cond515:                                      ; preds = %for.body520
  %inc526 = add nsw i32 %qp.01207, 1
  %83 = load i32, ptr %i_qp_max, align 4
  %cmp518.not.not = icmp slt i32 %qp.01207, %83
  br i1 %cmp518.not.not, label %for.body520, label %for.end527

for.body520:                                      ; preds = %if.end511, %for.cond515
  %qp.01207 = phi i32 [ %inc526, %for.cond515 ], [ %81, %if.end511 ]
  %call521 = call i32 @x264_analyse_init_costs(ptr noundef nonnull %call, i32 noundef %qp.01207) #17
  %tobool522.not = icmp eq i32 %call521, 0
  br i1 %tobool522.not, label %for.cond515, label %fail

for.end527:                                       ; preds = %for.cond515, %if.end511
  %call528 = call i32 @x264_analyse_init_costs(ptr noundef nonnull %call, i32 noundef 12) #17
  %tobool529.not = icmp eq i32 %call528, 0
  br i1 %tobool529.not, label %if.end531, label %fail

if.end531:                                        ; preds = %for.end527
  %arrayidx532 = getelementptr inbounds i8, ptr %call, i64 3544
  %84 = load ptr, ptr %arrayidx532, align 8
  %arrayidx533 = getelementptr inbounds i8, ptr %84, i64 4026
  %85 = load i16, ptr %arrayidx533, align 2
  %cmp535.not = icmp eq i16 %85, 24
  br i1 %cmp535.not, label %if.end538, label %if.then537

if.then537:                                       ; preds = %if.end531
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull @.str.9) #17
  br label %fail

if.end538:                                        ; preds = %if.end531
  store volatile i32 392, ptr %temp, align 4
  %temp.0.temp.0.temp.0.temp.0. = load volatile i32, ptr %temp, align 4
  %86 = and i32 %temp.0.temp.0.temp.0.temp.0., -256
  %cmp539.not = icmp eq i32 %86, 256
  br i1 %cmp539.not, label %if.end542, label %if.then541

if.then541:                                       ; preds = %if.end538
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull @.str.10) #17
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull @.str.11) #17
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull @.str.12) #17
  br label %fail

if.end542:                                        ; preds = %if.end538
  %out = getelementptr inbounds i8, ptr %call, i64 1760
  store i32 0, ptr %out, align 16
  %i_width = getelementptr inbounds i8, ptr %call, i64 20
  %87 = load i32, ptr %i_width, align 4
  %i_height = getelementptr inbounds i8, ptr %call, i64 24
  %88 = load i32, ptr %i_height, align 8
  %mul545 = shl i32 %87, 2
  %mul546 = mul i32 %mul545, %88
  %conv547 = sitofp i32 %mul546 to double
  %89 = load i32, ptr %rc, align 8
  %cmp551 = icmp eq i32 %89, 2
  br i1 %cmp551, label %cond.true553, label %cond.false559

cond.true553:                                     ; preds = %if.end542
  %90 = load i32, ptr %i_qp_min, align 8
  %conv557 = sitofp i32 %90 to double
  %call558 = call double @pow(double noundef 0x3FEE666666666666, double noundef %conv557) #17
  br label %cond.end577

cond.false559:                                    ; preds = %if.end542
  %i_qp_constant = getelementptr inbounds i8, ptr %call, i64 492
  %91 = load i32, ptr %i_qp_constant, align 4
  %conv562 = sitofp i32 %91 to double
  %call563 = call double @pow(double noundef 0x3FEE666666666666, double noundef %conv562) #17
  %f_ip_factor = getelementptr inbounds i8, ptr %call, i64 536
  %92 = load float, ptr %f_ip_factor, align 8
  %cmp566 = fcmp olt float %92, 1.000000e+00
  %cond574 = select i1 %cmp566, float 1.000000e+00, float %92
  %conv575 = fpext float %cond574 to double
  %mul576 = fmul double %call563, %conv575
  br label %cond.end577

cond.end577:                                      ; preds = %cond.false559, %cond.true553
  %cond578 = phi double [ %call558, %cond.true553 ], [ %mul576, %cond.false559 ]
  %mul579 = fmul double %cond578, %conv547
  %cmp580 = fcmp olt double %mul579, 1.000000e+06
  br i1 %cmp580, label %cond.end625, label %cond.false583

cond.false583:                                    ; preds = %cond.end577
  %93 = load i32, ptr %i_width, align 4
  %94 = load i32, ptr %i_height, align 8
  %mul588 = shl i32 %93, 2
  %mul589 = mul i32 %mul588, %94
  %conv590 = sitofp i32 %mul589 to double
  %95 = load i32, ptr %rc, align 8
  %cmp594 = icmp eq i32 %95, 2
  br i1 %cmp594, label %cond.true596, label %cond.false602

cond.true596:                                     ; preds = %cond.false583
  %96 = load i32, ptr %i_qp_min, align 8
  %conv600 = sitofp i32 %96 to double
  %call601 = call double @pow(double noundef 0x3FEE666666666666, double noundef %conv600) #17
  br label %cond.end622

cond.false602:                                    ; preds = %cond.false583
  %i_qp_constant605 = getelementptr inbounds i8, ptr %call, i64 492
  %97 = load i32, ptr %i_qp_constant605, align 4
  %conv606 = sitofp i32 %97 to double
  %call607 = call double @pow(double noundef 0x3FEE666666666666, double noundef %conv606) #17
  %f_ip_factor610 = getelementptr inbounds i8, ptr %call, i64 536
  %98 = load float, ptr %f_ip_factor610, align 8
  %cmp611 = fcmp olt float %98, 1.000000e+00
  %cond619 = select i1 %cmp611, float 1.000000e+00, float %98
  %conv620 = fpext float %cond619 to double
  %mul621 = fmul double %call607, %conv620
  br label %cond.end622

cond.end622:                                      ; preds = %cond.false602, %cond.true596
  %cond623 = phi double [ %call601, %cond.true596 ], [ %mul621, %cond.false602 ]
  %mul624 = fmul double %cond623, %conv590
  %99 = fptosi double %mul624 to i32
  br label %cond.end625

cond.end625:                                      ; preds = %cond.end577, %cond.end622
  %cond626 = phi i32 [ %99, %cond.end622 ], [ 1000000, %cond.end577 ]
  %i_bitstream = getelementptr inbounds i8, ptr %call, i64 1776
  store i32 %cond626, ptr %i_bitstream, align 16
  %mul632 = mul nsw i32 %cond626, 3
  %div = sdiv i32 %mul632, 2
  %add633 = add nsw i32 %div, 4
  %call634 = call ptr @x264_malloc(i32 noundef %add633) #17
  %nal_buffer = getelementptr inbounds i8, ptr %call, i64 1832
  store ptr %call634, ptr %nal_buffer, align 8
  %tobool636.not = icmp eq ptr %call634, null
  br i1 %tobool636.not, label %fail, label %do.end640

do.end640:                                        ; preds = %cond.end625
  %100 = load i32, ptr %i_bitstream, align 16
  %mul643 = mul nsw i32 %100, 3
  %div644 = sdiv i32 %mul643, 2
  %add645 = add nsw i32 %div644, 4
  %nal_buffer_size = getelementptr inbounds i8, ptr %call, i64 1840
  store i32 %add645, ptr %nal_buffer_size, align 16
  %thread = getelementptr inbounds i8, ptr %call, i64 704
  store ptr %call, ptr %thread, align 16
  %i_threads = getelementptr inbounds i8, ptr %call, i64 4
  %101 = load i32, ptr %i_threads, align 4
  %102 = load i32, ptr %i_sync_lookahead, align 16
  %tobool6521208 = icmp ne i32 %102, 0
  %lnot.ext6561209 = zext i1 %tobool6521208 to i32
  %add6571210 = add nsw i32 %101, %lnot.ext6561209
  %cmp6581211 = icmp sgt i32 %add6571210, 1
  br i1 %cmp6581211, label %do.body662, label %for.end677

for.cond648:                                      ; preds = %do.body662
  %indvars.iv.next1224 = add nuw nsw i64 %indvars.iv1223, 1
  %103 = load i32, ptr %i_threads, align 4
  %104 = load i32, ptr %i_sync_lookahead, align 16
  %tobool652 = icmp ne i32 %104, 0
  %lnot.ext656 = zext i1 %tobool652 to i32
  %add657 = add nsw i32 %103, %lnot.ext656
  %105 = sext i32 %add657 to i64
  %cmp658 = icmp slt i64 %indvars.iv.next1224, %105
  br i1 %cmp658, label %do.body662, label %for.end677

do.body662:                                       ; preds = %do.end640, %for.cond648
  %indvars.iv1223 = phi i64 [ %indvars.iv.next1224, %for.cond648 ], [ 1, %do.end640 ]
  %call663 = call ptr @x264_malloc(i32 noundef 33344) #17
  %arrayidx666 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv1223
  store ptr %call663, ptr %arrayidx666, align 8
  %tobool670.not = icmp eq ptr %call663, null
  br i1 %tobool670.not, label %fail, label %for.cond648

for.end677:                                       ; preds = %for.cond648, %do.end640
  %call678 = call i32 @x264_lookahead_init(ptr noundef nonnull %call, i32 noundef %26) #17
  %tobool679.not = icmp eq i32 %call678, 0
  br i1 %tobool679.not, label %for.cond683.preheader, label %fail

for.cond683.preheader:                            ; preds = %for.end677
  %106 = load i32, ptr %i_threads, align 4
  %cmp6861213 = icmp sgt i32 %106, 0
  br i1 %cmp6861213, label %if.then707.peel, label %for.end807

if.then707.peel:                                  ; preds = %for.cond683.preheader
  %i_slice_count = getelementptr inbounds i8, ptr %call, i64 692
  %b_sliced_threads = getelementptr inbounds i8, ptr %call, i64 8
  %107 = load i32, ptr %i_slice_count, align 4
  %add691.peel = add nsw i32 %107, 3
  %call708.peel = call ptr @x264_frame_pop_unused(ptr noundef nonnull %call, i32 noundef 1) #17
  %108 = load ptr, ptr %thread, align 8
  %fdec.peel = getelementptr inbounds i8, ptr %108, i64 14688
  store ptr %call708.peel, ptr %fdec.peel, align 16
  %109 = load ptr, ptr %thread, align 8
  %fdec715.peel = getelementptr inbounds i8, ptr %109, i64 14688
  %110 = load ptr, ptr %fdec715.peel, align 16
  %tobool716.not.peel = icmp eq ptr %110, null
  br i1 %tobool716.not.peel, label %fail, label %do.body728.peel

do.body728.peel:                                  ; preds = %if.then707.peel
  %.pre1234 = load i32, ptr %i_bitstream, align 16
  %call731.peel = call ptr @x264_malloc(i32 noundef %.pre1234) #17
  %111 = load ptr, ptr %thread, align 8
  %p_bitstream.peel = getelementptr inbounds i8, ptr %111, i64 1784
  store ptr %call731.peel, ptr %p_bitstream.peel, align 8
  %112 = load ptr, ptr %thread, align 8
  %p_bitstream740.peel = getelementptr inbounds i8, ptr %112, i64 1784
  %113 = load ptr, ptr %p_bitstream740.peel, align 8
  %tobool741.not.peel = icmp eq ptr %113, null
  br i1 %tobool741.not.peel, label %fail, label %do.body746.peel

do.body746.peel:                                  ; preds = %do.body728.peel
  %mul748.peel = mul i32 %add691.peel, 24
  %call750.peel = call ptr @x264_malloc(i32 noundef %mul748.peel) #17
  %114 = load ptr, ptr %thread, align 8
  %nal.peel = getelementptr inbounds i8, ptr %114, i64 1768
  store ptr %call750.peel, ptr %nal.peel, align 8
  %115 = load ptr, ptr %thread, align 8
  %nal759.peel = getelementptr inbounds i8, ptr %115, i64 1768
  %116 = load ptr, ptr %nal759.peel, align 8
  %tobool760.not.peel = icmp eq ptr %116, null
  br i1 %tobool760.not.peel, label %fail, label %land.lhs.true770.peel

land.lhs.true770.peel:                            ; preds = %do.body746.peel
  %i_nals_allocated.peel = getelementptr inbounds i8, ptr %115, i64 1764
  store i32 %add691.peel, ptr %i_nals_allocated.peel, align 4
  %117 = load ptr, ptr %thread, align 8
  %call774.peel = call i32 @x264_macroblock_cache_allocate(ptr noundef %117) #17
  %cmp775.peel = icmp slt i32 %call774.peel, 0
  br i1 %cmp775.peel, label %fail, label %for.inc782.peel

for.inc782.peel:                                  ; preds = %land.lhs.true770.peel
  %118 = load i32, ptr %i_threads, align 4
  %cmp686.peel = icmp sgt i32 %118, 1
  br i1 %cmp686.peel, label %if.end705, label %for.cond788.preheader

for.cond788.preheader:                            ; preds = %for.inc782, %for.inc782.peel
  %119 = phi i32 [ %118, %for.inc782.peel ], [ %138, %for.inc782 ]
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %for.body794, label %for.end807

if.end705:                                        ; preds = %for.inc782.peel, %for.inc782
  %indvars.iv1226 = phi i64 [ %indvars.iv.next1227, %for.inc782 ], [ 1, %for.inc782.peel ]
  %121 = load i32, ptr %i_slice_count, align 4
  %add691 = add nsw i32 %121, 3
  %122 = load i32, ptr %b_sliced_threads, align 8
  %tobool693.not = icmp eq i32 %122, 0
  %arrayidx704 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv1226
  %123 = load ptr, ptr %arrayidx704, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33344) %123, ptr noundef nonnull align 16 dereferenceable(33344) %call, i64 33344, i1 false)
  br i1 %tobool693.not, label %if.then707, label %if.else719

if.then707:                                       ; preds = %if.end705
  %call708 = call ptr @x264_frame_pop_unused(ptr noundef nonnull %call, i32 noundef 1) #17
  %arrayidx711 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv1226
  %124 = load ptr, ptr %arrayidx711, align 8
  %fdec = getelementptr inbounds i8, ptr %124, i64 14688
  store ptr %call708, ptr %fdec, align 16
  %125 = load ptr, ptr %arrayidx711, align 8
  %fdec715 = getelementptr inbounds i8, ptr %125, i64 14688
  %126 = load ptr, ptr %fdec715, align 16
  %tobool716.not = icmp eq ptr %126, null
  br i1 %tobool716.not, label %fail, label %do.body728

if.else719:                                       ; preds = %if.end705
  %127 = load ptr, ptr %thread, align 16
  %fdec722 = getelementptr inbounds i8, ptr %127, i64 14688
  %128 = load ptr, ptr %fdec722, align 16
  %129 = load ptr, ptr %arrayidx704, align 8
  %fdec726 = getelementptr inbounds i8, ptr %129, i64 14688
  store ptr %128, ptr %fdec726, align 16
  br label %do.body728

do.body728:                                       ; preds = %if.else719, %if.then707
  %130 = load i32, ptr %i_bitstream, align 16
  %call731 = call ptr @x264_malloc(i32 noundef %130) #17
  %arrayidx734 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv1226
  %131 = load ptr, ptr %arrayidx734, align 8
  %p_bitstream = getelementptr inbounds i8, ptr %131, i64 1784
  store ptr %call731, ptr %p_bitstream, align 8
  %132 = load ptr, ptr %arrayidx734, align 8
  %p_bitstream740 = getelementptr inbounds i8, ptr %132, i64 1784
  %133 = load ptr, ptr %p_bitstream740, align 8
  %tobool741.not = icmp eq ptr %133, null
  br i1 %tobool741.not, label %fail, label %do.body746

do.body746:                                       ; preds = %do.body728
  %mul748 = mul i32 %add691, 24
  %call750 = call ptr @x264_malloc(i32 noundef %mul748) #17
  %134 = load ptr, ptr %arrayidx734, align 8
  %nal = getelementptr inbounds i8, ptr %134, i64 1768
  store ptr %call750, ptr %nal, align 8
  %135 = load ptr, ptr %arrayidx734, align 8
  %nal759 = getelementptr inbounds i8, ptr %135, i64 1768
  %136 = load ptr, ptr %nal759, align 8
  %tobool760.not = icmp eq ptr %136, null
  br i1 %tobool760.not, label %fail, label %do.end764

do.end764:                                        ; preds = %do.body746
  %i_nals_allocated = getelementptr inbounds i8, ptr %135, i64 1764
  store i32 %add691, ptr %i_nals_allocated, align 4
  br i1 %tobool693.not, label %land.lhs.true770, label %for.inc782

land.lhs.true770:                                 ; preds = %do.end764
  %137 = load ptr, ptr %arrayidx734, align 8
  %call774 = call i32 @x264_macroblock_cache_allocate(ptr noundef %137) #17
  %cmp775 = icmp slt i32 %call774, 0
  br i1 %cmp775, label %fail, label %for.inc782

for.inc782:                                       ; preds = %land.lhs.true770, %do.end764
  %indvars.iv.next1227 = add nuw nsw i64 %indvars.iv1226, 1
  %138 = load i32, ptr %i_threads, align 4
  %139 = sext i32 %138 to i64
  %cmp686 = icmp slt i64 %indvars.iv.next1227, %139
  br i1 %cmp686, label %if.end705, label %for.cond788.preheader, !llvm.loop !7

for.cond788:                                      ; preds = %for.body794
  %indvars.iv.next1231 = add nuw nsw i64 %indvars.iv1230, 1
  %140 = load i32, ptr %i_threads, align 4
  %141 = sext i32 %140 to i64
  %cmp791 = icmp slt i64 %indvars.iv.next1231, %141
  br i1 %cmp791, label %for.body794, label %for.end807

for.body794:                                      ; preds = %for.cond788.preheader, %for.cond788
  %indvars.iv1230 = phi i64 [ %indvars.iv.next1231, %for.cond788 ], [ 0, %for.cond788.preheader ]
  %arrayidx797 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv1230
  %142 = load ptr, ptr %arrayidx797, align 8
  %call798 = call i32 @x264_macroblock_thread_allocate(ptr noundef %142, i32 noundef 0) #17
  %cmp799 = icmp slt i32 %call798, 0
  br i1 %cmp799, label %fail, label %for.cond788

for.end807:                                       ; preds = %for.cond788, %for.cond683.preheader, %for.cond788.preheader
  %call808 = call i32 @x264_ratecontrol_new(ptr noundef nonnull %call) #17
  %cmp809 = icmp slt i32 %call808, 0
  br i1 %cmp809, label %fail, label %if.end812

if.end812:                                        ; preds = %for.end807
  %i_nal_hrd = getelementptr inbounds i8, ptr %call, i64 40
  %143 = load i32, ptr %i_nal_hrd, align 8
  %tobool814.not = icmp eq i32 %143, 0
  br i1 %tobool814.not, label %if.end821, label %if.then815

if.then815:                                       ; preds = %if.end812
  %144 = load ptr, ptr %sps, align 16
  %i_bit_rate_unscaled = getelementptr inbounds i8, ptr %144, i64 1232
  %145 = load i32, ptr %i_bit_rate_unscaled, align 4
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %call, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %145) #17
  %146 = load ptr, ptr %sps, align 16
  %i_cpb_size_unscaled = getelementptr inbounds i8, ptr %146, i64 1236
  %147 = load i32, ptr %i_cpb_size_unscaled, align 4
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %call, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %147) #17
  br label %if.end821

if.end821:                                        ; preds = %if.then815, %if.end812
  %psz_dump_yuv = getelementptr inbounds i8, ptr %call, i64 376
  %148 = load ptr, ptr %psz_dump_yuv, align 8
  %tobool823.not = icmp eq ptr %148, null
  br i1 %tobool823.not, label %if.end844, label %if.then824

if.then824:                                       ; preds = %if.end821
  %call827 = call noalias ptr @fopen(ptr noundef nonnull %148, ptr noundef nonnull @.str.15)
  %tobool828.not = icmp eq ptr %call827, null
  br i1 %tobool828.not, label %cleanup841, label %cleanup841.thread

cleanup841.thread:                                ; preds = %if.then824
  %call840 = call i32 @fclose(ptr noundef nonnull %call827)
  br label %if.end844

cleanup841:                                       ; preds = %if.then824
  %149 = load ptr, ptr %psz_dump_yuv, align 8
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %149) #17
  br label %fail

if.end844:                                        ; preds = %cleanup841.thread, %if.end821
  %150 = load ptr, ptr %sps, align 16
  %i_profile_idc = getelementptr inbounds i8, ptr %150, i64 4
  %151 = load i32, ptr %i_profile_idc, align 4
  switch i32 %151, label %cond.false855 [
    i32 66, label %cond.end863
    i32 77, label %cond.end863.fold.split
  ]

cond.false855:                                    ; preds = %if.end844
  %cmp858 = icmp eq i32 %151, 100
  %cond860 = select i1 %cmp858, ptr @.str.21, ptr @.str.22
  br label %cond.end863

cond.end863.fold.split:                           ; preds = %if.end844
  br label %cond.end863

cond.end863:                                      ; preds = %if.end844, %cond.end863.fold.split, %cond.false855
  %cond864 = phi ptr [ @.str.19, %if.end844 ], [ %cond860, %cond.false855 ], [ @.str.20, %cond.end863.fold.split ]
  %i_level_idc = getelementptr inbounds i8, ptr %150, i64 8
  %152 = load i32, ptr %i_level_idc, align 4
  %div866 = sdiv i32 %152, 10
  %rem = srem i32 %152, 10
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %call, i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond864, i32 noundef %div866, i32 noundef %rem) #17
  br label %cleanup869

fail:                                             ; preds = %for.body520, %do.body662, %if.then707, %do.body728, %do.body746, %land.lhs.true770, %for.body794, %if.then707.peel, %do.body728.peel, %do.body746.peel, %land.lhs.true770.peel, %cleanup841, %for.end807, %for.end677, %cond.end625, %for.end527, %do.body371, %do.end318, %do.end289, %land.end256, %if.end81, %if.then14, %if.end8, %entry, %if.then541, %if.then537, %if.then80
  call void @x264_free(ptr noundef %call) #17
  br label %cleanup869

cleanup869:                                       ; preds = %fail, %cond.end863
  %retval.0 = phi ptr [ null, %fail ], [ %call, %cond.end863 ]
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %buf) #17
  ret ptr %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @x264_validate_parameters(ptr noundef %h) unnamed_addr #0 {
entry:
  %i_width = getelementptr inbounds i8, ptr %h, i64 20
  %0 = load i32, ptr %i_width, align 4
  %cmp = icmp slt i32 %0, 1
  %i_height6.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 24
  %.pre2204 = load i32, ptr %i_height6.phi.trans.insert, align 8
  %cmp2 = icmp slt i32 %.pre2204, 1
  %or.cond2221 = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond2221, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.50, i32 noundef %0, i32 noundef %.pre2204) #17
  br label %return

if.end:                                           ; preds = %entry
  %1 = or i32 %.pre2204, %0
  %2 = and i32 %1, 1
  %or.cond2073 = icmp eq i32 %2, 0
  br i1 %or.cond2073, label %if.end19, label %if.then14

if.then14:                                        ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.51, i32 noundef %0, i32 noundef %.pre2204) #17
  br label %return

if.end19:                                         ; preds = %if.end
  %i_csp21 = getelementptr inbounds i8, ptr %h, i64 28
  %3 = load i32, ptr %i_csp21, align 4
  %trunc = trunc i32 %3 to i8
  switch i8 %trunc, label %if.then24 [
    i8 4, label %if.end25
    i8 1, label %if.end25
  ]

if.then24:                                        ; preds = %if.end19
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.52) #17
  br label %return

if.end25:                                         ; preds = %if.end19, %if.end19
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
  %4 = load i32, ptr %i_threads, align 4
  %cmp27 = icmp eq i32 %4, 0
  br i1 %cmp27, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.end25
  %call = tail call i32 @x264_cpu_num_processors() #17
  %b_sliced_threads = getelementptr inbounds i8, ptr %h, i64 8
  %5 = load i32, ptr %b_sliced_threads, align 8
  %tobool30.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool30.not, i32 3, i32 2
  %mul = mul nsw i32 %cond, %call
  %div = sdiv i32 %mul, 2
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end25
  %6 = phi i32 [ %div, %if.then28 ], [ %4, %if.end25 ]
  %cond.i = tail call i32 @llvm.smin.i32(i32 %6, i32 128)
  %cond5.i = tail call i32 @llvm.smax.i32(i32 %cond.i, i32 1)
  store i32 %cond5.i, ptr %i_threads, align 4
  %cmp41 = icmp sgt i32 %6, 1
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end33
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.53) #17
  store i32 1, ptr %i_threads, align 4
  %b_sliced_threads46 = getelementptr inbounds i8, ptr %h, i64 8
  %7 = load i32, ptr %b_sliced_threads46, align 8
  %tobool47.not = icmp eq i32 %7, 0
  br i1 %tobool47.not, label %cond.end72, label %if.then48

if.then48:                                        ; preds = %if.then42
  %8 = load i32, ptr %i_height6.phi.trans.insert, align 8
  %cmp55 = icmp sgt i32 %8, 112
  br i1 %cmp55, label %if.end64, label %cond.false

cond.false:                                       ; preds = %if.then48
  %add = add nsw i32 %8, 15
  %div52 = sdiv i32 %add, 64
  br label %if.end64

if.else:                                          ; preds = %if.end33
  %b_sliced_threads63 = getelementptr inbounds i8, ptr %h, i64 8
  store i32 0, ptr %b_sliced_threads63, align 8
  br label %cond.end72

if.end64:                                         ; preds = %cond.false, %if.then48
  %cond58 = phi i32 [ %div52, %cond.false ], [ 1, %if.then48 ]
  store i32 %cond58, ptr %i_threads, align 4
  br label %cond.end72

cond.end72:                                       ; preds = %if.else, %if.then42, %if.end64
  %cond73 = phi i32 [ 1, %if.end64 ], [ %cond5.i, %if.else ], [ 1, %if.then42 ]
  %b_sliced_threads66 = getelementptr inbounds i8, ptr %h, i64 8
  %i_thread_frames = getelementptr inbounds i8, ptr %h, i64 1852
  store i32 %cond73, ptr %i_thread_frames, align 4
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
  %9 = load i32, ptr %b_interlaced, align 8
  %tobool75.not = icmp eq i32 %9, 0
  br i1 %tobool75.not, label %if.end92, label %if.then76

if.then76:                                        ; preds = %cond.end72
  %i_me_method = getelementptr inbounds i8, ptr %h, i64 412
  %10 = load i32, ptr %i_me_method, align 4
  %cmp78 = icmp sgt i32 %10, 2
  br i1 %cmp78, label %if.then79, label %if.end83

if.then79:                                        ; preds = %if.then76
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.54) #17
  store i32 2, ptr %i_me_method, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.then76
  %i_weighted_pred = getelementptr inbounds i8, ptr %h, i64 396
  %11 = load i32, ptr %i_weighted_pred, align 4
  %cmp86 = icmp sgt i32 %11, 0
  br i1 %cmp86, label %if.then87, label %if.end92

if.then87:                                        ; preds = %if.end83
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.55) #17
  store i32 0, ptr %i_weighted_pred, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.end83, %if.then87, %cond.end72
  %analyse94 = getelementptr inbounds i8, ptr %h, i64 384
  %i_me_range = getelementptr inbounds i8, ptr %h, i64 416
  %12 = load i32, ptr %i_me_range, align 16
  %cmp95 = icmp eq i32 %12, 0
  %conv = zext i1 %cmp95 to i32
  %rc = getelementptr inbounds i8, ptr %h, i64 488
  %i_qp_step = getelementptr inbounds i8, ptr %h, i64 504
  %13 = load i32, ptr %i_qp_step, align 8
  %cmp98 = icmp eq i32 %13, 3
  %conv99 = zext i1 %cmp98 to i32
  %add100 = add nuw nsw i32 %conv99, %conv
  %i_keyint_max = getelementptr inbounds i8, ptr %h, i64 84
  %14 = load i32, ptr %i_keyint_max, align 4
  %cmp102 = icmp eq i32 %14, 12
  %conv103 = zext i1 %cmp102 to i32
  %add104 = add nuw nsw i32 %add100, %conv103
  %i_qp_min = getelementptr inbounds i8, ptr %h, i64 496
  %15 = load i32, ptr %i_qp_min, align 8
  %cmp107 = icmp eq i32 %15, 2
  %conv108 = zext i1 %cmp107 to i32
  %add109 = add nuw nsw i32 %add104, %conv108
  %i_qp_max = getelementptr inbounds i8, ptr %h, i64 500
  %16 = load i32, ptr %i_qp_max, align 4
  %cmp112 = icmp eq i32 %16, 31
  %conv113 = zext i1 %cmp112 to i32
  %add114 = add nuw nsw i32 %add109, %conv113
  %f_qcompress = getelementptr inbounds i8, ptr %h, i64 592
  %17 = load float, ptr %f_qcompress, align 8
  %cmp118 = fcmp oeq float %17, 5.000000e-01
  %conv119 = zext i1 %cmp118 to i32
  %add120 = add nuw nsw i32 %add114, %conv119
  %f_ip_factor = getelementptr inbounds i8, ptr %h, i64 536
  %f_pb_factor = getelementptr inbounds i8, ptr %h, i64 540
  %18 = load <2 x float>, ptr %f_ip_factor, align 8
  %19 = fpext <2 x float> %18 to <2 x double>
  %20 = fadd <2 x double> %19, <double -1.250000e+00, double -1.250000e+00>
  %21 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %20)
  %22 = fcmp olt <2 x double> %21, <double 1.000000e-02, double 1.000000e-02>
  %23 = extractelement <2 x i1> %22, i64 0
  %conv125 = zext i1 %23 to i32
  %add126 = add nuw nsw i32 %add120, %conv125
  %24 = extractelement <2 x i1> %22, i64 1
  %conv132 = zext i1 %24 to i32
  %add133 = add nuw nsw i32 %add126, %conv132
  %inter = getelementptr inbounds i8, ptr %h, i64 388
  %25 = load i32, ptr %inter, align 4
  %cmp136 = icmp eq i32 %25, 0
  br i1 %cmp136, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end92
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 428
  %26 = load i32, ptr %i_subpel_refine, align 4
  %cmp140 = icmp eq i32 %26, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end92
  %27 = phi i1 [ false, %if.end92 ], [ %cmp140, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  %add142 = add nuw nsw i32 %add133, %land.ext
  %cmp143 = icmp ult i32 %add142, 5
  br i1 %cmp143, label %cleanup.cont, label %if.then145

if.then145:                                       ; preds = %land.end
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.56) #17
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.57) #17
  br label %return

cleanup.cont:                                     ; preds = %land.end
  %28 = load i32, ptr %rc, align 8
  %or.cond = icmp ugt i32 %28, 2
  br i1 %or.cond, label %if.then157, label %if.end158

if.then157:                                       ; preds = %cleanup.cont
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.58) #17
  br label %return

if.end158:                                        ; preds = %cleanup.cont
  %f_rf_constant = getelementptr inbounds i8, ptr %h, i64 512
  %29 = load float, ptr %f_rf_constant, align 8
  %cmp.i2079 = fcmp olt float %29, 0.000000e+00
  %cmp1.i = fcmp ogt float %29, 5.100000e+01
  %narrow.sel = select i1 %cmp1.i, float 5.100000e+01, float %29
  %conv163 = select i1 %cmp.i2079, float 0.000000e+00, float %narrow.sel
  store float %conv163, ptr %f_rf_constant, align 8
  %i_qp_constant = getelementptr inbounds i8, ptr %h, i64 492
  %30 = load i32, ptr %i_qp_constant, align 4
  %cond.i2083 = tail call i32 @llvm.smin.i32(i32 %30, i32 51)
  %cond5.i2084 = tail call i32 @llvm.smax.i32(i32 %cond.i2083, i32 0)
  store i32 %cond5.i2084, ptr %i_qp_constant, align 4
  switch i32 %28, label %land.lhs.true200 [
    i32 1, label %if.end188.thread
    i32 2, label %if.end312
  ]

if.end188.thread:                                 ; preds = %if.end158
  %conv182 = fptosi float %conv163 to i32
  store i32 %conv182, ptr %i_qp_constant, align 4
  %i_bitrate = getelementptr inbounds i8, ptr %h, i64 508
  store i32 0, ptr %i_bitrate, align 4
  br label %land.lhs.true200

land.lhs.true200:                                 ; preds = %if.end158, %if.end188.thread
  %31 = phi i32 [ %conv182, %if.end188.thread ], [ %cond5.i2084, %if.end158 ]
  %cmp204 = icmp eq i32 %31, 0
  br i1 %cmp204, label %if.then206, label %if.end239

if.then206:                                       ; preds = %land.lhs.true200
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812
  store i32 1, ptr %b_lossless, align 4
  %i_cqm_preset = getelementptr inbounds i8, ptr %h, i64 144
  store i32 0, ptr %i_cqm_preset, align 16
  %psz_cqm_file = getelementptr inbounds i8, ptr %h, i64 152
  store ptr null, ptr %psz_cqm_file, align 8
  store i32 0, ptr %rc, align 8
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %f_ip_factor, align 8
  %b_psnr = getelementptr inbounds i8, ptr %h, i64 476
  store i32 0, ptr %b_psnr, align 4
  %b_ssim = getelementptr inbounds i8, ptr %h, i64 480
  store i32 0, ptr %b_ssim, align 16
  %i_chroma_qp_offset = getelementptr inbounds i8, ptr %h, i64 408
  store i32 0, ptr %i_chroma_qp_offset, align 8
  %i_trellis = getelementptr inbounds i8, ptr %h, i64 440
  store i32 0, ptr %i_trellis, align 8
  %b_fast_pskip = getelementptr inbounds i8, ptr %h, i64 444
  store i32 0, ptr %b_fast_pskip, align 4
  %i_noise_reduction = getelementptr inbounds i8, ptr %h, i64 452
  store i32 0, ptr %i_noise_reduction, align 4
  %b_psy = getelementptr inbounds i8, ptr %h, i64 464
  store i32 0, ptr %b_psy, align 16
  %i_bframe = getelementptr inbounds i8, ptr %h, i64 100
  store i32 0, ptr %i_bframe, align 4
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128
  %32 = load i32, ptr %b_cabac, align 16
  %tobool234.not = icmp eq i32 %32, 0
  br i1 %tobool234.not, label %if.then235, label %if.then245

if.then235:                                       ; preds = %if.then206
  %b_transform_8x8 = getelementptr inbounds i8, ptr %h, i64 392
  store i32 0, ptr %b_transform_8x8, align 8
  br label %if.then245

if.end239:                                        ; preds = %land.lhs.true200
  %cmp243 = icmp eq i32 %28, 0
  %33 = extractelement <2 x float> %18, i64 0
  br i1 %cmp243, label %if.then245, label %if.end312

if.then245:                                       ; preds = %if.then235, %if.then206, %if.end239
  %34 = phi i32 [ %31, %if.end239 ], [ 0, %if.then206 ], [ 0, %if.then235 ]
  %35 = phi float [ %33, %if.end239 ], [ 1.000000e+00, %if.then206 ], [ 1.000000e+00, %if.then235 ]
  %conv249 = sitofp i32 %34 to float
  %call253 = tail call float @log2f(float noundef %35) #17
  %36 = load float, ptr %f_pb_factor, align 4
  %call258 = tail call float @log2f(float noundef %36) #17
  %37 = insertelement <2 x float> poison, float %call253, i64 0
  %38 = insertelement <2 x float> %37, float %call258, i64 1
  %39 = insertelement <2 x float> poison, float %conv249, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> <float -6.000000e+00, float 6.000000e+00>, <2 x float> %40)
  %42 = extractelement <2 x float> %41, i64 0
  %43 = extractelement <2 x float> %41, i64 1
  %cmp260 = fcmp olt float %42, %43
  %cond265 = select i1 %cmp260, float %42, float %43
  %cmp266 = fcmp ogt float %cond265, %conv249
  %conv249.cond265 = select i1 %cmp266, float %conv249, float %cond265
  %conv278 = fptosi float %conv249.cond265 to i32
  %cond.i2086 = tail call i32 @llvm.smin.i32(i32 %conv278, i32 51)
  %cond5.i2087 = tail call i32 @llvm.smax.i32(i32 %cond.i2086, i32 0)
  %cmp283 = fcmp ogt float %42, %43
  %cond288 = select i1 %cmp283, float %42, float %43
  %cmp289 = fcmp olt float %cond288, %conv249
  %cond300 = select i1 %cmp289, float %conv249, float %cond288
  %conv301 = fpext float %cond300 to double
  %add302 = fadd double %conv301, 0x3FEFF7CED916872B
  %conv303 = fptosi double %add302 to i32
  %cond.i2089 = tail call i32 @llvm.smin.i32(i32 %conv303, i32 51)
  %cond5.i2090 = tail call i32 @llvm.smax.i32(i32 %cond.i2089, i32 0)
  %i_aq_mode = getelementptr inbounds i8, ptr %h, i64 544
  store i32 0, ptr %i_aq_mode, align 8
  %b_mb_tree = getelementptr inbounds i8, ptr %h, i64 552
  store i32 0, ptr %b_mb_tree, align 8
  br label %if.end312

if.end312:                                        ; preds = %if.end158, %if.then245, %if.end239
  %44 = phi i32 [ %cond5.i2087, %if.then245 ], [ %15, %if.end239 ], [ %15, %if.end158 ]
  %45 = phi i32 [ %cond5.i2090, %if.then245 ], [ %16, %if.end239 ], [ %16, %if.end158 ]
  %cond.i2092 = tail call i32 @llvm.smin.i32(i32 %45, i32 51)
  %cond5.i2093 = tail call i32 @llvm.smax.i32(i32 %cond.i2092, i32 0)
  store i32 %cond5.i2093, ptr %i_qp_max, align 4
  %cmp.i2094 = icmp slt i32 %44, 0
  %cond.i2095 = tail call i32 @llvm.smin.i32(i32 %44, i32 %cond5.i2093)
  %cond5.i2096 = select i1 %cmp.i2094, i32 0, i32 %cond.i2095
  store i32 %cond5.i2096, ptr %i_qp_min, align 8
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %h, i64 528
  %46 = load i32, ptr %i_vbv_buffer_size, align 8
  %tobool332.not = icmp eq i32 %46, 0
  br i1 %tobool332.not, label %if.else394, label %if.then333

if.then333:                                       ; preds = %if.end312
  %47 = load i32, ptr %rc, align 8
  %cmp337 = icmp eq i32 %47, 0
  br i1 %cmp337, label %if.then339, label %if.else345

if.then339:                                       ; preds = %if.then333
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.59) #17
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %h, i64 524
  store i32 0, ptr %i_vbv_max_bitrate, align 4
  store i32 0, ptr %i_vbv_buffer_size, align 8
  br label %if.end404

if.else345:                                       ; preds = %if.then333
  %i_vbv_max_bitrate348 = getelementptr inbounds i8, ptr %h, i64 524
  %48 = load i32, ptr %i_vbv_max_bitrate348, align 4
  %cmp349 = icmp eq i32 %48, 0
  br i1 %cmp349, label %if.then351, label %if.else369

if.then351:                                       ; preds = %if.else345
  %cmp355 = icmp eq i32 %47, 2
  br i1 %cmp355, label %if.then357, label %if.else364

if.then357:                                       ; preds = %if.then351
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.60) #17
  %i_bitrate360 = getelementptr inbounds i8, ptr %h, i64 508
  %49 = load i32, ptr %i_bitrate360, align 4
  store i32 %49, ptr %i_vbv_max_bitrate348, align 4
  br label %if.end404

if.else364:                                       ; preds = %if.then351
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.61) #17
  store i32 0, ptr %i_vbv_buffer_size, align 8
  br label %if.end404

if.else369:                                       ; preds = %if.else345
  %i_bitrate375 = getelementptr inbounds i8, ptr %h, i64 508
  %50 = load i32, ptr %i_bitrate375, align 4
  %cmp376 = icmp slt i32 %48, %50
  %cmp382 = icmp eq i32 %47, 2
  %or.cond2074 = and i1 %cmp382, %cmp376
  br i1 %or.cond2074, label %if.then384, label %if.end404

if.then384:                                       ; preds = %if.else369
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.62) #17
  %51 = load i32, ptr %i_bitrate375, align 4
  store i32 %51, ptr %i_vbv_max_bitrate348, align 4
  br label %if.end404

if.else394:                                       ; preds = %if.end312
  %i_vbv_max_bitrate397 = getelementptr inbounds i8, ptr %h, i64 524
  %52 = load i32, ptr %i_vbv_max_bitrate397, align 4
  %tobool398.not = icmp eq i32 %52, 0
  br i1 %tobool398.not, label %if.end404, label %if.then399

if.then399:                                       ; preds = %if.else394
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.63) #17
  store i32 0, ptr %i_vbv_max_bitrate397, align 4
  br label %if.end404

if.end404:                                        ; preds = %if.else394, %if.then399, %if.then339, %if.else369, %if.then384, %if.then357, %if.else364
  %53 = load i32, ptr %b_interlaced, align 8
  %tobool407.not = icmp eq i32 %53, 0
  br i1 %tobool407.not, label %if.end424, label %land.lhs.true408

land.lhs.true408:                                 ; preds = %if.end404
  %i_slice_max_size = getelementptr inbounds i8, ptr %h, i64 684
  %54 = load i32, ptr %i_slice_max_size, align 4
  %tobool410.not = icmp eq i32 %54, 0
  br i1 %tobool410.not, label %land.lhs.true418, label %if.end414

if.end414:                                        ; preds = %land.lhs.true408
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.64) #17
  store i32 0, ptr %i_slice_max_size, align 4
  %.pr.pre = load i32, ptr %b_interlaced, align 8
  %tobool417.not = icmp eq i32 %.pr.pre, 0
  br i1 %tobool417.not, label %if.end424, label %land.lhs.true418

land.lhs.true418:                                 ; preds = %land.lhs.true408, %if.end414
  %.pr2214 = phi i32 [ %.pr.pre, %if.end414 ], [ %53, %land.lhs.true408 ]
  %i_slice_max_mbs = getelementptr inbounds i8, ptr %h, i64 688
  %55 = load i32, ptr %i_slice_max_mbs, align 16
  %tobool420.not = icmp eq i32 %55, 0
  br i1 %tobool420.not, label %if.end424, label %if.then421

if.then421:                                       ; preds = %land.lhs.true418
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.65) #17
  store i32 0, ptr %i_slice_max_mbs, align 16
  %.pre = load i32, ptr %b_interlaced, align 8
  br label %if.end424

if.end424:                                        ; preds = %if.end404, %if.then421, %land.lhs.true418, %if.end414
  %56 = phi i32 [ 0, %if.end404 ], [ %.pre, %if.then421 ], [ %.pr2214, %land.lhs.true418 ], [ 0, %if.end414 ]
  %57 = load i32, ptr %i_height6.phi.trans.insert, align 8
  %shl = shl i32 16, %56
  %sub429 = add i32 %57, -1
  %add430 = add i32 %sub429, %shl
  %div434 = sdiv i32 %add430, %shl
  %58 = load i32, ptr %b_sliced_threads66, align 8
  %tobool437.not = icmp eq i32 %58, 0
  br i1 %tobool437.not, label %if.else443, label %if.then438

if.then438:                                       ; preds = %if.end424
  %59 = load i32, ptr %i_threads, align 4
  %cmp.i2097 = icmp slt i32 %59, 0
  %cond.i2098 = tail call i32 @llvm.smin.i32(i32 %59, i32 %div434)
  %cond5.i2099 = select i1 %cmp.i2097, i32 0, i32 %cond.i2098
  %i_slice_count = getelementptr inbounds i8, ptr %h, i64 692
  store i32 %cond5.i2099, ptr %i_slice_count, align 4
  br label %if.end484

if.else443:                                       ; preds = %if.end424
  %i_slice_count445 = getelementptr inbounds i8, ptr %h, i64 692
  %60 = load i32, ptr %i_slice_count445, align 4
  %cmp.i2100 = icmp slt i32 %60, 0
  %cond.i2101 = tail call i32 @llvm.smin.i32(i32 %60, i32 %div434)
  %cond5.i2102 = select i1 %cmp.i2100, i32 0, i32 %cond.i2101
  store i32 %cond5.i2102, ptr %i_slice_count445, align 4
  %i_slice_max_size450 = getelementptr inbounds i8, ptr %h, i64 684
  %61 = load i32, ptr %i_slice_max_size450, align 4
  %spec.select = tail call i32 @llvm.smax.i32(i32 %61, i32 0)
  store i32 %spec.select, ptr %i_slice_max_size450, align 4
  %i_slice_max_mbs462 = getelementptr inbounds i8, ptr %h, i64 688
  %62 = load i32, ptr %i_slice_max_mbs462, align 16
  %cond470 = tail call i32 @llvm.smax.i32(i32 %62, i32 0)
  store i32 %cond470, ptr %i_slice_max_mbs462, align 16
  %tobool475.not = icmp slt i32 %62, 1
  %tobool479.not = icmp slt i32 %61, 1
  %or.cond2188 = select i1 %tobool475.not, i1 %tobool479.not, i1 false
  br i1 %or.cond2188, label %if.end484, label %if.then480

if.then480:                                       ; preds = %if.else443
  store i32 0, ptr %i_slice_count445, align 4
  br label %if.end484

if.end484:                                        ; preds = %if.else443, %if.then480, %if.then438
  %i_frame_reference = getelementptr inbounds i8, ptr %h, i64 80
  %63 = load i32, ptr %i_frame_reference, align 16
  %cond.i2104 = tail call i32 @llvm.smin.i32(i32 %63, i32 16)
  %cond5.i2105 = tail call i32 @llvm.smax.i32(i32 %cond.i2104, i32 1)
  store i32 %cond5.i2105, ptr %i_frame_reference, align 16
  %64 = load i32, ptr %i_keyint_max, align 4
  %cmp491 = icmp slt i32 %64, 1
  br i1 %cmp491, label %if.then493, label %if.end496

if.then493:                                       ; preds = %if.end484
  store i32 1, ptr %i_keyint_max, align 4
  br label %if.end496

if.end496:                                        ; preds = %if.then493, %if.end484
  %65 = phi i32 [ 1, %if.then493 ], [ %64, %if.end484 ]
  %i_scenecut_threshold = getelementptr inbounds i8, ptr %h, i64 92
  %66 = load i32, ptr %i_scenecut_threshold, align 4
  %cmp498 = icmp slt i32 %66, 0
  br i1 %cmp498, label %if.then500, label %if.end503

if.then500:                                       ; preds = %if.end496
  store i32 0, ptr %i_scenecut_threshold, align 4
  br label %if.end503

if.end503:                                        ; preds = %if.then500, %if.end496
  %i_subpel_refine506 = getelementptr inbounds i8, ptr %h, i64 428
  %67 = load i32, ptr %i_subpel_refine506, align 4
  %tobool507.not = icmp eq i32 %67, 0
  br i1 %tobool507.not, label %land.lhs.true508, label %if.end517

land.lhs.true508:                                 ; preds = %if.end503
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %h, i64 404
  %68 = load i32, ptr %i_direct_mv_pred, align 4
  %cmp511 = icmp sgt i32 %68, 1
  br i1 %cmp511, label %if.then513, label %if.end517

if.then513:                                       ; preds = %land.lhs.true508
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.66) #17
  store i32 1, ptr %i_direct_mv_pred, align 4
  %.pre2198 = load i32, ptr %i_keyint_max, align 4
  br label %if.end517

if.end517:                                        ; preds = %if.then513, %land.lhs.true508, %if.end503
  %69 = phi i32 [ %.pre2198, %if.then513 ], [ %65, %land.lhs.true508 ], [ %65, %if.end503 ]
  %i_bframe519 = getelementptr inbounds i8, ptr %h, i64 100
  %70 = load i32, ptr %i_bframe519, align 4
  %cond.i2107 = tail call i32 @llvm.smin.i32(i32 %70, i32 16)
  %cond5.i2108 = tail call i32 @llvm.smax.i32(i32 %cond.i2107, i32 0)
  store i32 %cond5.i2108, ptr %i_bframe519, align 4
  %cmp525 = icmp eq i32 %69, 1
  br i1 %cmp525, label %if.then527, label %if.end531

if.then527:                                       ; preds = %if.end517
  store i32 0, ptr %i_bframe519, align 4
  %b_intra_refresh = getelementptr inbounds i8, ptr %h, i64 96
  store i32 0, ptr %b_intra_refresh, align 16
  br label %if.end531

if.end531:                                        ; preds = %if.then527, %if.end517
  %71 = phi i32 [ 0, %if.then527 ], [ %cond5.i2108, %if.end517 ]
  %i_bframe_bias = getelementptr inbounds i8, ptr %h, i64 108
  %72 = load i32, ptr %i_bframe_bias, align 4
  %cond.i2110 = tail call i32 @llvm.smin.i32(i32 %72, i32 100)
  %cond5.i2111 = tail call i32 @llvm.smax.i32(i32 %cond.i2110, i32 -90)
  store i32 %cond5.i2111, ptr %i_bframe_bias, align 4
  %cmp538 = icmp ult i32 %71, 2
  %i_bframe_pyramid544 = getelementptr inbounds i8, ptr %h, i64 112
  br i1 %cmp538, label %if.end542, label %if.end542.thread

if.end542.thread:                                 ; preds = %if.end531
  %.pre2199 = load i32, ptr %i_bframe_pyramid544, align 16
  %i_bframe_pyramid5442215 = getelementptr inbounds i8, ptr %h, i64 112
  %cond.i21132216 = tail call i32 @llvm.smin.i32(i32 %.pre2199, i32 2)
  %cond5.i21142217 = tail call i32 @llvm.smax.i32(i32 %cond.i21132216, i32 0)
  store i32 %cond5.i21142217, ptr %i_bframe_pyramid5442215, align 16
  br label %if.end558

if.end542:                                        ; preds = %if.end531
  store i32 0, ptr %i_bframe_pyramid544, align 16
  %tobool550.not = icmp eq i32 %71, 0
  br i1 %tobool550.not, label %if.then551, label %if.end558

if.then551:                                       ; preds = %if.end542
  %i_bframe_adaptive = getelementptr inbounds i8, ptr %h, i64 104
  store i32 0, ptr %i_bframe_adaptive, align 8
  %i_direct_mv_pred555 = getelementptr inbounds i8, ptr %h, i64 404
  store i32 0, ptr %i_direct_mv_pred555, align 4
  %b_weighted_bipred = getelementptr inbounds i8, ptr %h, i64 400
  store i32 0, ptr %b_weighted_bipred, align 16
  br label %if.end558

if.end558:                                        ; preds = %if.end542.thread, %if.then551, %if.end542
  %i_bframe_pyramid5442219 = phi ptr [ %i_bframe_pyramid5442215, %if.end542.thread ], [ %i_bframe_pyramid544, %if.then551 ], [ %i_bframe_pyramid544, %if.end542 ]
  %73 = phi i32 [ %.pre2199, %if.end542.thread ], [ 0, %if.then551 ], [ 0, %if.end542 ]
  %b_intra_refresh560 = getelementptr inbounds i8, ptr %h, i64 96
  %74 = load i32, ptr %b_intra_refresh560, align 16
  %tobool561.not = icmp eq i32 %74, 0
  br i1 %tobool561.not, label %if.end582, label %land.lhs.true562

land.lhs.true562:                                 ; preds = %if.end558
  %cmp565 = icmp sgt i32 %73, 1
  br i1 %cmp565, label %if.end570, label %land.lhs.true574

if.end570:                                        ; preds = %land.lhs.true562
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.67) #17
  store i32 1, ptr %i_bframe_pyramid5442219, align 16
  %.pr2178 = load i32, ptr %b_intra_refresh560, align 16
  %tobool573.not = icmp eq i32 %.pr2178, 0
  br i1 %tobool573.not, label %if.end582, label %land.lhs.true574

land.lhs.true574:                                 ; preds = %land.lhs.true562, %if.end570
  %75 = load i32, ptr %i_frame_reference, align 16
  %cmp577 = icmp sgt i32 %75, 1
  br i1 %cmp577, label %if.then579, label %if.end582

if.then579:                                       ; preds = %land.lhs.true574
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.68) #17
  store i32 1, ptr %i_frame_reference, align 16
  br label %if.end582

if.end582:                                        ; preds = %if.end558, %if.then579, %land.lhs.true574, %if.end570
  %i_keyint_min = getelementptr inbounds i8, ptr %h, i64 88
  %76 = load i32, ptr %i_keyint_min, align 8
  %cmp584 = icmp eq i32 %76, 0
  %.pre2200 = load i32, ptr %i_keyint_max, align 4
  %div589 = sdiv i32 %.pre2200, 10
  %77 = select i1 %cmp584, i32 %div589, i32 %76
  %div597 = sdiv i32 %.pre2200, 2
  %add598 = add nsw i32 %div597, 1
  %cmp.i2115 = icmp slt i32 %77, 1
  %cond.i2116 = tail call i32 @llvm.smin.i32(i32 %77, i32 %add598)
  %cond5.i2117 = select i1 %cmp.i2115, i32 1, i32 %cond.i2116
  store i32 %cond5.i2117, ptr %i_keyint_min, align 8
  %i_lookahead = getelementptr inbounds i8, ptr %h, i64 556
  %78 = load i32, ptr %i_lookahead, align 4
  %cond.i2119 = tail call i32 @llvm.smin.i32(i32 %78, i32 250)
  %cond5.i2120 = tail call i32 @llvm.smax.i32(i32 %cond.i2119, i32 0)
  %i_vbv_max_bitrate610 = getelementptr inbounds i8, ptr %h, i64 524
  %79 = load i32, ptr %i_vbv_max_bitrate610, align 4
  %i_bitrate613 = getelementptr inbounds i8, ptr %h, i64 508
  %80 = load i32, ptr %i_bitrate613, align 4
  %. = tail call i32 @llvm.smax.i32(i32 %79, i32 %80)
  %tobool626.not = icmp eq i32 %., 0
  br i1 %tobool626.not, label %cond.end635, label %cond.true627

cond.true627:                                     ; preds = %if.end582
  %81 = load i32, ptr %i_vbv_buffer_size, align 8
  %conv631 = sitofp i32 %81 to float
  %conv632 = sitofp i32 %. to float
  %div633 = fdiv float %conv631, %conv632
  br label %cond.end635

cond.end635:                                      ; preds = %if.end582, %cond.true627
  %cond636 = phi float [ %div633, %cond.true627 ], [ 0.000000e+00, %if.end582 ]
  %i_fps_num = getelementptr inbounds i8, ptr %h, i64 652
  %82 = load i32, ptr %i_fps_num, align 4
  %cmp638.not = icmp eq i32 %82, 0
  br i1 %cmp638.not, label %cond.end654, label %land.lhs.true640

land.lhs.true640:                                 ; preds = %cond.end635
  %i_fps_den = getelementptr inbounds i8, ptr %h, i64 656
  %83 = load i32, ptr %i_fps_den, align 16
  %cmp642.not = icmp eq i32 %83, 0
  br i1 %cmp642.not, label %cond.end654, label %cond.true644

cond.true644:                                     ; preds = %land.lhs.true640
  %conv647 = uitofp i32 %82 to float
  %conv650 = uitofp i32 %83 to float
  %div651 = fdiv float %conv647, %conv650
  br label %cond.end654

cond.end654:                                      ; preds = %cond.end635, %land.lhs.true640, %cond.true644
  %cond655 = phi float [ %div651, %cond.true644 ], [ 2.500000e+01, %land.lhs.true640 ], [ 2.500000e+01, %cond.end635 ]
  %conv660 = uitofp nneg i32 %cond5.i2120 to float
  %conv663 = sitofp i32 %.pre2200 to float
  %mul664 = fmul float %cond636, %cond655
  %cmp665 = fcmp olt float %mul664, %conv663
  %conv663.mul664 = select i1 %cmp665, float %conv663, float %mul664
  %cmp675 = fcmp ogt float %conv663.mul664, %conv660
  %cond698 = select i1 %cmp675, float %conv660, float %conv663.mul664
  %conv699 = fptosi float %cond698 to i32
  store i32 %conv699, ptr %i_lookahead, align 4
  %i_timebase_num = getelementptr inbounds i8, ptr %h, i64 660
  %84 = load i32, ptr %i_timebase_num, align 4
  %tobool704.not = icmp eq i32 %84, 0
  br i1 %tobool704.not, label %if.then708, label %lor.lhs.false705

lor.lhs.false705:                                 ; preds = %cond.end654
  %i_timebase_den = getelementptr inbounds i8, ptr %h, i64 664
  %85 = load i32, ptr %i_timebase_den, align 8
  %tobool707.not = icmp eq i32 %85, 0
  br i1 %tobool707.not, label %if.then708, label %if.end717

if.then708:                                       ; preds = %lor.lhs.false705, %cond.end654
  %i_fps_den710 = getelementptr inbounds i8, ptr %h, i64 656
  %86 = load i32, ptr %i_fps_den710, align 16
  store i32 %86, ptr %i_timebase_num, align 4
  %i_timebase_den716 = getelementptr inbounds i8, ptr %h, i64 664
  store i32 %82, ptr %i_timebase_den716, align 8
  br label %if.end717

if.end717:                                        ; preds = %if.then708, %lor.lhs.false705
  %87 = load float, ptr %f_qcompress, align 8
  %cmp.i2121 = fcmp olt float %87, 0.000000e+00
  %cmp1.i2122 = fcmp ogt float %87, 1.000000e+00
  %narrow.sel2189 = select i1 %cmp1.i2122, float 1.000000e+00, float %87
  %conv723 = select i1 %cmp.i2121, float 0.000000e+00, float %narrow.sel2189
  store float %conv723, ptr %f_qcompress, align 8
  %tobool730.not = icmp eq i32 %conv699, 0
  br i1 %tobool730.not, label %if.then742, label %lor.lhs.false731

lor.lhs.false731:                                 ; preds = %if.end717
  %cmp734 = icmp eq i32 %.pre2200, 1
  %cmp740 = fcmp oeq float %conv723, 1.000000e+00
  %or.cond2075 = select i1 %cmp734, i1 true, i1 %cmp740
  br i1 %or.cond2075, label %if.then742, label %if.end746

if.then742:                                       ; preds = %lor.lhs.false731, %if.end717
  %b_mb_tree745 = getelementptr inbounds i8, ptr %h, i64 552
  store i32 0, ptr %b_mb_tree745, align 8
  br label %if.end746

if.end746:                                        ; preds = %lor.lhs.false731, %if.then742
  %b_stat_read = getelementptr inbounds i8, ptr %h, i64 576
  %88 = load i32, ptr %b_stat_read, align 8
  %tobool749.not = icmp eq i32 %88, 0
  br i1 %tobool749.not, label %if.end754, label %if.then750

if.then750:                                       ; preds = %if.end746
  store i32 0, ptr %i_lookahead, align 4
  br label %if.end754

if.end754:                                        ; preds = %if.then750, %if.end746
  %i_sync_lookahead = getelementptr inbounds i8, ptr %h, i64 16
  store i32 0, ptr %i_sync_lookahead, align 16
  %i_deblocking_filter_alphac0 = getelementptr inbounds i8, ptr %h, i64 120
  %89 = load <2 x i32>, ptr %i_deblocking_filter_alphac0, align 8
  %90 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %89, <2 x i32> <i32 6, i32 6>)
  %91 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %90, <2 x i32> <i32 -6, i32 -6>)
  store <2 x i32> %91, ptr %i_deblocking_filter_alphac0, align 8
  %i_luma_deadzone = getelementptr inbounds i8, ptr %h, i64 468
  %92 = load <2 x i32>, ptr %i_luma_deadzone, align 4
  %93 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %92, <2 x i32> <i32 32, i32 32>)
  %94 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %93, <2 x i32> zeroinitializer)
  store <2 x i32> %94, ptr %i_luma_deadzone, align 4
  %i_cabac_init_idc = getelementptr inbounds i8, ptr %h, i64 132
  %95 = load i32, ptr %i_cabac_init_idc, align 4
  %cond.i2138 = tail call i32 @llvm.smin.i32(i32 %95, i32 2)
  %cond5.i2139 = tail call i32 @llvm.smax.i32(i32 %cond.i2138, i32 0)
  store i32 %cond5.i2139, ptr %i_cabac_init_idc, align 4
  %i_cqm_preset785 = getelementptr inbounds i8, ptr %h, i64 144
  %96 = load i32, ptr %i_cqm_preset785, align 16
  %or.cond2076 = icmp ugt i32 %96, 2
  br i1 %or.cond2076, label %if.then793, label %if.end796

if.then793:                                       ; preds = %if.end754
  store i32 0, ptr %i_cqm_preset785, align 16
  br label %if.end796

if.end796:                                        ; preds = %if.end754, %if.then793
  %i_me_method799 = getelementptr inbounds i8, ptr %h, i64 412
  %97 = load i32, ptr %i_me_method799, align 4
  %or.cond2077 = icmp ugt i32 %97, 4
  br i1 %or.cond2077, label %if.then808, label %if.end812

if.then808:                                       ; preds = %if.end796
  store i32 1, ptr %i_me_method799, align 4
  br label %if.end812

if.end812:                                        ; preds = %if.end796, %if.then808
  %.pr2183 = phi i32 [ %97, %if.end796 ], [ 1, %if.then808 ]
  %98 = load i32, ptr %i_me_range, align 16
  %cmp816 = icmp slt i32 %98, 4
  br i1 %cmp816, label %if.end822.thread, label %if.end822

if.end822.thread:                                 ; preds = %if.end812
  store i32 4, ptr %i_me_range, align 16
  br label %if.end838

if.end822:                                        ; preds = %if.end812
  %cmp826 = icmp ugt i32 %98, 16
  %cmp832 = icmp ult i32 %.pr2183, 2
  %or.cond2222 = and i1 %cmp826, %cmp832
  br i1 %or.cond2222, label %if.end838.thread, label %if.end838

if.end838.thread:                                 ; preds = %if.end822
  store i32 16, ptr %i_me_range, align 16
  br label %if.end858thread-pre-split

if.end838:                                        ; preds = %if.end822.thread, %if.end822
  %cmp842 = icmp eq i32 %.pr2183, 4
  br i1 %cmp842, label %land.lhs.true844, label %if.end858thread-pre-split

land.lhs.true844:                                 ; preds = %if.end838
  %b_lossless846 = getelementptr inbounds i8, ptr %h, i64 25812
  %99 = load i32, ptr %b_lossless846, align 4
  %tobool847.not = icmp eq i32 %99, 0
  br i1 %tobool847.not, label %lor.lhs.false848, label %if.then854

lor.lhs.false848:                                 ; preds = %land.lhs.true844
  %100 = load i32, ptr %i_subpel_refine506, align 4
  %cmp852 = icmp slt i32 %100, 2
  br i1 %cmp852, label %if.then854, label %if.end858

if.then854:                                       ; preds = %lor.lhs.false848, %land.lhs.true844
  store i32 3, ptr %i_me_method799, align 4
  br label %if.end858thread-pre-split

if.end858thread-pre-split:                        ; preds = %if.end838, %if.then854, %if.end838.thread
  %.pr = load i32, ptr %i_subpel_refine506, align 4
  br label %if.end858

if.end858:                                        ; preds = %if.end858thread-pre-split, %lor.lhs.false848
  %101 = phi i32 [ %.pr, %if.end858thread-pre-split ], [ %100, %lor.lhs.false848 ]
  %cond.i2141 = tail call i32 @llvm.smin.i32(i32 %101, i32 10)
  %cond5.i2142 = tail call i32 @llvm.smax.i32(i32 %cond.i2141, i32 0)
  store i32 %cond5.i2142, ptr %i_subpel_refine506, align 4
  %b_mixed_references = getelementptr inbounds i8, ptr %h, i64 436
  %102 = load i32, ptr %b_mixed_references, align 4
  %tobool868.not = icmp eq i32 %102, 0
  br i1 %tobool868.not, label %land.end874, label %land.rhs869

land.rhs869:                                      ; preds = %if.end858
  %103 = load i32, ptr %i_frame_reference, align 16
  %cmp872 = icmp sgt i32 %103, 1
  br label %land.end874

land.end874:                                      ; preds = %land.rhs869, %if.end858
  %104 = phi i1 [ false, %if.end858 ], [ %cmp872, %land.rhs869 ]
  %land.ext875 = zext i1 %104 to i32
  store i32 %land.ext875, ptr %b_mixed_references, align 4
  %105 = load i32, ptr %inter, align 4
  %and882 = and i32 %105, 307
  store i32 %and882, ptr %inter, align 4
  %106 = load i32, ptr %analyse94, align 16
  %and885 = and i32 %106, 3
  store i32 %and885, ptr %analyse94, align 16
  %and889 = and i32 %105, 16
  %tobool890.not = icmp eq i32 %and889, 0
  br i1 %tobool890.not, label %if.then891, label %if.end896

if.then891:                                       ; preds = %land.end874
  %and895 = and i32 %105, 259
  store i32 %and895, ptr %inter, align 4
  br label %if.end896

if.end896:                                        ; preds = %if.then891, %land.end874
  %107 = phi i32 [ %and895, %if.then891 ], [ %and882, %land.end874 ]
  %b_transform_8x8899 = getelementptr inbounds i8, ptr %h, i64 392
  %108 = load i32, ptr %b_transform_8x8899, align 8
  %tobool900.not = icmp eq i32 %108, 0
  br i1 %tobool900.not, label %if.then901, label %if.end910

if.then901:                                       ; preds = %if.end896
  %and905 = and i32 %107, 305
  store i32 %and905, ptr %inter, align 4
  %and909 = and i32 %106, 1
  store i32 %and909, ptr %analyse94, align 16
  br label %if.end910

if.end910:                                        ; preds = %if.then901, %if.end896
  %i_chroma_qp_offset913 = getelementptr inbounds i8, ptr %h, i64 408
  %109 = load i32, ptr %i_chroma_qp_offset913, align 8
  %cond.i2144 = tail call i32 @llvm.smin.i32(i32 %109, i32 12)
  %cond5.i2145 = tail call i32 @llvm.smax.i32(i32 %cond.i2144, i32 -12)
  store i32 %cond5.i2145, ptr %i_chroma_qp_offset913, align 8
  %b_cabac919 = getelementptr inbounds i8, ptr %h, i64 128
  %110 = load i32, ptr %b_cabac919, align 16
  %tobool920.not = icmp eq i32 %110, 0
  br i1 %tobool920.not, label %if.end925, label %if.end910.if.end925_crit_edge

if.end910.if.end925_crit_edge:                    ; preds = %if.end910
  %i_trellis928.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 440
  %.pre2201 = load i32, ptr %i_trellis928.phi.trans.insert, align 8
  br label %if.end925

if.end925:                                        ; preds = %if.end910, %if.end910.if.end925_crit_edge
  %111 = phi i32 [ %.pre2201, %if.end910.if.end925_crit_edge ], [ 0, %if.end910 ]
  %i_trellis928 = getelementptr inbounds i8, ptr %h, i64 440
  %cond.i2147 = tail call i32 @llvm.smin.i32(i32 %111, i32 2)
  %cond5.i2148 = tail call i32 @llvm.smax.i32(i32 %cond.i2147, i32 0)
  store i32 %cond5.i2148, ptr %i_trellis928, align 8
  %b_psy935 = getelementptr inbounds i8, ptr %h, i64 464
  %112 = load i32, ptr %b_psy935, align 16
  %tobool936.not = icmp eq i32 %112, 0
  br i1 %tobool936.not, label %if.then937, label %if.end942

if.then937:                                       ; preds = %if.end925
  %f_psy_rd = getelementptr inbounds i8, ptr %h, i64 456
  store <2 x float> zeroinitializer, ptr %f_psy_rd, align 8
  br label %if.end942

if.end942:                                        ; preds = %if.then937, %if.end925
  %tobool946.not = icmp slt i32 %111, 1
  br i1 %tobool946.not, label %if.end951, label %if.end942.if.end951_crit_edge

if.end942.if.end951_crit_edge:                    ; preds = %if.end942
  %f_psy_trellis963.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 460
  %.pre2202 = load float, ptr %f_psy_trellis963.phi.trans.insert, align 4
  br label %if.end951

if.end951:                                        ; preds = %if.end942, %if.end942.if.end951_crit_edge
  %113 = phi float [ %.pre2202, %if.end942.if.end951_crit_edge ], [ 0.000000e+00, %if.end942 ]
  %f_psy_rd954 = getelementptr inbounds i8, ptr %h, i64 456
  %114 = load float, ptr %f_psy_rd954, align 8
  %115 = insertelement <2 x float> poison, float %114, i64 0
  %116 = insertelement <2 x float> %115, float %113, i64 1
  %117 = fcmp olt <2 x float> %116, zeroinitializer
  %118 = fcmp ogt <2 x float> %116, <float 1.000000e+01, float 1.000000e+01>
  %119 = select <2 x i1> %118, <2 x float> <float 1.000000e+01, float 1.000000e+01>, <2 x float> %116
  %120 = select <2 x i1> %117, <2 x float> zeroinitializer, <2 x float> %119
  store <2 x float> %120, ptr %f_psy_rd954, align 8
  %cmp973 = icmp slt i32 %101, 6
  %121 = extractelement <2 x float> %120, i64 0
  br i1 %cmp973, label %if.then975, label %if.end979

if.then975:                                       ; preds = %if.end951
  store float 0.000000e+00, ptr %f_psy_rd954, align 8
  br label %if.end979

if.end979:                                        ; preds = %if.then975, %if.end951
  %122 = phi float [ 0.000000e+00, %if.then975 ], [ %121, %if.end951 ]
  %i_psy_rd = getelementptr inbounds i8, ptr %h, i64 16428
  %cmp996 = fcmp olt float %122, 2.500000e-01
  %cond998.neg = select i1 %cmp996, i32 -1, i32 -2
  %123 = extractelement <2 x float> %120, i64 1
  %div1007 = fmul float %123, 2.500000e-01
  %124 = insertelement <2 x float> poison, float %122, i64 0
  %125 = insertelement <2 x float> %124, float %div1007, i64 1
  %126 = fmul <2 x float> %125, <float 2.560000e+02, float 2.560000e+02>
  %127 = fpext <2 x float> %126 to <2 x double>
  %128 = fadd <2 x double> %127, <double 5.000000e-01, double 5.000000e-01>
  %129 = fptosi <2 x double> %128 to <2 x i32>
  store <2 x i32> %129, ptr %i_psy_rd, align 4
  %130 = icmp eq <2 x i32> %129, zeroinitializer
  %131 = extractelement <2 x i1> %130, i64 0
  %sub1002 = select i1 %131, i32 0, i32 %cond998.neg
  %132 = add nsw i32 %cond5.i2145, %sub1002
  %cmp1021 = fcmp olt float %123, 2.500000e-01
  %cond1023.neg = select i1 %cmp1021, i32 -1, i32 -2
  %133 = extractelement <2 x i1> %130, i64 1
  %sub1027 = select i1 %133, i32 0, i32 %cond1023.neg
  %134 = add nsw i32 %132, %sub1027
  %cond5.i2159 = tail call i32 @llvm.smax.i32(i32 %134, i32 -12)
  store i32 %cond5.i2159, ptr %i_chroma_qp_offset913, align 8
  %i_aq_mode1038 = getelementptr inbounds i8, ptr %h, i64 544
  %135 = load i32, ptr %i_aq_mode1038, align 8
  %cond.i2161 = tail call i32 @llvm.smin.i32(i32 %135, i32 2)
  %cond5.i2162 = tail call i32 @llvm.smax.i32(i32 %cond.i2161, i32 0)
  store i32 %cond5.i2162, ptr %i_aq_mode1038, align 8
  %f_aq_strength = getelementptr inbounds i8, ptr %h, i64 548
  %136 = load float, ptr %f_aq_strength, align 4
  %cmp.i2163 = fcmp olt float %136, 0.000000e+00
  %cmp1.i2164 = fcmp ogt float %136, 3.000000e+00
  %narrow.sel2192 = select i1 %cmp1.i2164, float 3.000000e+00, float %136
  %conv1047 = select i1 %cmp.i2163, float 0.000000e+00, float %narrow.sel2192
  store float %conv1047, ptr %f_aq_strength, align 4
  %cmp1054 = fcmp oeq float %conv1047, 0.000000e+00
  br i1 %cmp1054, label %if.end1060.thread, label %if.end1060

if.end1060.thread:                                ; preds = %if.end979
  store i32 0, ptr %i_aq_mode1038, align 8
  br label %land.lhs.true1065

if.end1060:                                       ; preds = %if.end979
  %tobool1064.not = icmp slt i32 %135, 1
  br i1 %tobool1064.not, label %land.lhs.true1065, label %if.end1077

land.lhs.true1065:                                ; preds = %if.end1060.thread, %if.end1060
  %b_mb_tree1068 = getelementptr inbounds i8, ptr %h, i64 552
  %137 = load i32, ptr %b_mb_tree1068, align 8
  %tobool1069.not = icmp eq i32 %137, 0
  br i1 %tobool1069.not, label %if.end1077, label %if.then1070

if.then1070:                                      ; preds = %land.lhs.true1065
  store i32 1, ptr %i_aq_mode1038, align 8
  store float 0.000000e+00, ptr %f_aq_strength, align 4
  br label %if.end1077

if.end1077:                                       ; preds = %if.then1070, %land.lhs.true1065, %if.end1060
  %138 = phi i32 [ 1, %if.then1070 ], [ 0, %land.lhs.true1065 ], [ %cond5.i2162, %if.end1060 ]
  %i_noise_reduction1080 = getelementptr inbounds i8, ptr %h, i64 452
  %139 = load i32, ptr %i_noise_reduction1080, align 4
  %cond.i2168 = tail call i32 @llvm.smin.i32(i32 %139, i32 65536)
  %cond5.i2169 = tail call i32 @llvm.smax.i32(i32 %cond.i2168, i32 0)
  store i32 %cond5.i2169, ptr %i_noise_reduction1080, align 4
  %cmp1088 = icmp sgt i32 %101, 9
  br i1 %cmp1088, label %land.lhs.true1090, label %if.end1105

land.lhs.true1090:                                ; preds = %if.end1077
  %cmp1094.not = icmp slt i32 %111, 2
  %tobool1100.not = icmp eq i32 %138, 0
  %or.cond2223 = select i1 %cmp1094.not, i1 true, i1 %tobool1100.not
  br i1 %or.cond2223, label %if.then1101, label %if.end1105

if.then1101:                                      ; preds = %land.lhs.true1090
  store i32 9, ptr %i_subpel_refine506, align 4
  br label %if.end1105

if.end1105:                                       ; preds = %land.lhs.true1090, %if.then1101, %if.end1077
  %i_level_idc = getelementptr inbounds i8, ptr %h, i64 32
  %140 = load i32, ptr %i_level_idc, align 16
  %cmp1107 = icmp slt i32 %140, 0
  br i1 %cmp1107, label %if.then1109, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end1105
  %141 = load i32, ptr @x264_levels, align 4
  %tobool1153.not2194 = icmp eq i32 %141, 0
  br i1 %tobool1153.not2194, label %if.then1166, label %land.rhs1154

if.then1109:                                      ; preds = %if.end1105
  %142 = load i32, ptr %rc, align 8
  %cmp1116 = icmp eq i32 %142, 2
  br i1 %cmp1116, label %land.lhs.true1118, label %if.end1132

land.lhs.true1118:                                ; preds = %if.then1109
  %143 = load i32, ptr %i_vbv_buffer_size, align 8
  %cmp1122 = icmp slt i32 %143, 1
  br i1 %cmp1122, label %if.then1124, label %if.end1132

if.then1124:                                      ; preds = %land.lhs.true1118
  %mul1128 = shl nsw i32 %80, 1
  store i32 %mul1128, ptr %i_vbv_max_bitrate610, align 4
  br label %if.end1132

if.end1132:                                       ; preds = %if.then1124, %land.lhs.true1118, %if.then1109
  %sps_array = getelementptr inbounds i8, ptr %h, i64 1896
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  store ptr %sps_array, ptr %sps, align 16
  %i_sps_id = getelementptr inbounds i8, ptr %h, i64 644
  %144 = load i32, ptr %i_sps_id, align 4
  tail call void @x264_sps_init(ptr noundef nonnull %sps_array, i32 noundef %144, ptr noundef nonnull %h) #17
  %.pre2203 = load i32, ptr @x264_levels, align 4
  br label %do.body

do.body:                                          ; preds = %land.lhs.true1141, %if.end1132
  %145 = phi i32 [ %.pre2203, %if.end1132 ], [ %146, %land.lhs.true1141 ]
  %l.0 = phi ptr [ @x264_levels, %if.end1132 ], [ %arrayidx1138, %land.lhs.true1141 ]
  store i32 %145, ptr %i_level_idc, align 16
  %arrayidx1138 = getelementptr inbounds i8, ptr %l.0, i64 52
  %146 = load i32, ptr %arrayidx1138, align 4
  %tobool1140.not = icmp eq i32 %146, 0
  br i1 %tobool1140.not, label %do.end, label %land.lhs.true1141

land.lhs.true1141:                                ; preds = %do.body
  %call1142 = tail call i32 @x264_validate_levels(ptr noundef nonnull %h, i32 noundef 0) #17
  %tobool1143.not = icmp eq i32 %call1142, 0
  br i1 %tobool1143.not, label %do.end, label %do.body

do.end:                                           ; preds = %land.lhs.true1141, %do.body
  store i32 %79, ptr %i_vbv_max_bitrate610, align 4
  br label %if.end1170

land.rhs1154:                                     ; preds = %while.cond.preheader, %while.body
  %147 = phi i32 [ %148, %while.body ], [ %141, %while.cond.preheader ]
  %l.22195 = phi ptr [ %incdec.ptr1162, %while.body ], [ @x264_levels, %while.cond.preheader ]
  %cmp1158.not = icmp eq i32 %147, %140
  br i1 %cmp1158.not, label %if.end1170, label %while.body

while.body:                                       ; preds = %land.rhs1154
  %incdec.ptr1162 = getelementptr inbounds i8, ptr %l.22195, i64 52
  %148 = load i32, ptr %incdec.ptr1162, align 4
  %tobool1153.not = icmp eq i32 %148, 0
  br i1 %tobool1153.not, label %if.then1166, label %land.rhs1154

if.then1166:                                      ; preds = %while.body, %while.cond.preheader
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.69, i32 noundef %140) #17
  br label %return

if.end1170:                                       ; preds = %land.rhs1154, %do.end
  %l.3 = phi ptr [ %l.0, %do.end ], [ %l.22195, %land.rhs1154 ]
  %i_mv_range = getelementptr inbounds i8, ptr %h, i64 420
  %149 = load i32, ptr %i_mv_range, align 4
  %cmp1173 = icmp slt i32 %149, 1
  br i1 %cmp1173, label %if.then1175, label %if.else1181

if.then1175:                                      ; preds = %if.end1170
  %mv_range = getelementptr inbounds i8, ptr %l.3, i64 24
  %150 = load i32, ptr %mv_range, align 4
  %151 = load i32, ptr %b_interlaced, align 8
  %shr = ashr i32 %150, %151
  br label %if.end1192

if.else1181:                                      ; preds = %if.end1170
  %152 = load i32, ptr %b_interlaced, align 8
  %shr1187 = lshr i32 512, %152
  %cmp.i2170 = icmp ult i32 %149, 32
  %153 = tail call i32 @llvm.umin.i32(i32 %149, i32 %shr1187)
  %cond5.i2172 = select i1 %cmp.i2170, i32 32, i32 %153
  br label %if.end1192

if.end1192:                                       ; preds = %if.else1181, %if.then1175
  %154 = phi i32 [ %152, %if.else1181 ], [ %151, %if.then1175 ]
  %storemerge = phi i32 [ %cond5.i2172, %if.else1181 ], [ %shr, %if.then1175 ]
  store i32 %storemerge, ptr %i_mv_range, align 4
  %i_weighted_pred1198 = getelementptr inbounds i8, ptr %h, i64 396
  %155 = load i32, ptr %i_weighted_pred1198, align 4
  %cond.i2174 = tail call i32 @llvm.smin.i32(i32 %155, i32 2)
  %cond5.i2175 = tail call i32 @llvm.smax.i32(i32 %cond.i2174, i32 0)
  store i32 %cond5.i2175, ptr %i_weighted_pred1198, align 4
  %tobool1206.not = icmp slt i32 %155, 1
  br i1 %tobool1206.not, label %land.lhs.true1207, label %if.end1225

land.lhs.true1207:                                ; preds = %if.end1192
  %b_mb_tree1210 = getelementptr inbounds i8, ptr %h, i64 552
  %156 = load i32, ptr %b_mb_tree1210, align 8
  %tobool1211.not = icmp eq i32 %156, 0
  br i1 %tobool1211.not, label %if.end1225, label %land.lhs.true1212

land.lhs.true1212:                                ; preds = %land.lhs.true1207
  %157 = load i32, ptr %b_psy935, align 16
  %tobool1216.not = icmp ne i32 %157, 0
  %tobool1220.not = icmp eq i32 %154, 0
  %or.cond2224 = select i1 %tobool1216.not, i1 %tobool1220.not, i1 false
  br i1 %or.cond2224, label %if.then1221, label %if.end1225

if.then1221:                                      ; preds = %land.lhs.true1212
  store i32 -1, ptr %i_weighted_pred1198, align 4
  br label %if.end1225

if.end1225:                                       ; preds = %if.then1221, %land.lhs.true1212, %land.lhs.true1207, %if.end1192
  %158 = load i32, ptr %i_thread_frames, align 4
  %cmp1227 = icmp sgt i32 %158, 1
  br i1 %cmp1227, label %if.then1229, label %if.end1277

if.then1229:                                      ; preds = %if.end1225
  %i_mv_range_thread = getelementptr inbounds i8, ptr %h, i64 424
  %159 = load i32, ptr %i_mv_range_thread, align 8
  %cmp1232 = icmp slt i32 %159, 1
  br i1 %cmp1232, label %if.then1234, label %if.end1242

if.then1234:                                      ; preds = %if.then1229
  %160 = load i32, ptr %i_height6.phi.trans.insert, align 8
  %add1237 = add nsw i32 %160, 24
  %div1239 = sdiv i32 %add1237, %158
  %sub1240 = add nsw i32 %div1239, -24
  %div1241 = sdiv i32 %sub1240, 2
  br label %if.end1242

if.end1242:                                       ; preds = %if.then1234, %if.then1229
  %r.0 = phi i32 [ %div1241, %if.then1234 ], [ %159, %if.then1229 ]
  %161 = load i32, ptr %i_me_range, align 16
  %r.0. = tail call i32 @llvm.smax.i32(i32 %r.0, i32 %161)
  %cond1266 = tail call i32 @llvm.smin.i32(i32 %r.0., i32 %storemerge)
  %and1267 = and i32 %cond1266, -16
  %add1268 = or disjoint i32 %and1267, 8
  %cmp1269 = icmp slt i32 %add1268, %cond1266
  %add1272 = add nsw i32 %and1267, 24
  %r2.0 = select i1 %cmp1269, i32 %add1272, i32 %add1268
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 3, ptr noundef nonnull @.str.70, i32 noundef %r2.0) #17
  store i32 %r2.0, ptr %i_mv_range_thread, align 8
  br label %if.end1277

if.end1277:                                       ; preds = %if.end1242, %if.end1225
  %f_qblur = getelementptr inbounds i8, ptr %h, i64 596
  %162 = load float, ptr %f_qblur, align 4
  %cmp1280 = fcmp olt float %162, 0.000000e+00
  br i1 %cmp1280, label %if.then1282, label %if.end1286

if.then1282:                                      ; preds = %if.end1277
  store float 0.000000e+00, ptr %f_qblur, align 4
  br label %if.end1286

if.end1286:                                       ; preds = %if.then1282, %if.end1277
  %f_complexity_blur = getelementptr inbounds i8, ptr %h, i64 600
  %163 = load float, ptr %f_complexity_blur, align 8
  %cmp1289 = fcmp olt float %163, 0.000000e+00
  br i1 %cmp1289, label %if.then1291, label %if.end1295

if.then1291:                                      ; preds = %if.end1286
  store float 0.000000e+00, ptr %f_complexity_blur, align 8
  br label %if.end1295

if.end1295:                                       ; preds = %if.then1291, %if.end1286
  %i_sps_id1297 = getelementptr inbounds i8, ptr %h, i64 644
  %164 = load i32, ptr %i_sps_id1297, align 4
  %and1298 = and i32 %164, 31
  store i32 %and1298, ptr %i_sps_id1297, align 4
  %i_log_level = getelementptr inbounds i8, ptr %h, i64 368
  %165 = load i32, ptr %i_log_level, align 16
  %cmp1300 = icmp slt i32 %165, 2
  br i1 %cmp1300, label %if.then1302, label %if.end1309

if.then1302:                                      ; preds = %if.end1295
  %b_psnr1305 = getelementptr inbounds i8, ptr %h, i64 476
  store i32 0, ptr %b_psnr1305, align 4
  %b_ssim1308 = getelementptr inbounds i8, ptr %h, i64 480
  store i32 0, ptr %b_ssim1308, align 16
  br label %if.end1309

if.end1309:                                       ; preds = %if.then1302, %if.end1295
  %166 = load i32, ptr %b_interlaced, align 8
  %tobool1312.not = icmp eq i32 %166, 0
  br i1 %tobool1312.not, label %if.end1315, label %if.then1313

if.then1313:                                      ; preds = %if.end1309
  %b_pic_struct = getelementptr inbounds i8, ptr %h, i64 676
  store i32 1, ptr %b_pic_struct, align 4
  br label %if.end1315

if.end1315:                                       ; preds = %if.then1313, %if.end1309
  %i_nal_hrd = getelementptr inbounds i8, ptr %h, i64 40
  %167 = load i32, ptr %i_nal_hrd, align 8
  %tobool1317.not = icmp eq i32 %167, 0
  br i1 %tobool1317.not, label %if.end1348, label %land.lhs.true1318

land.lhs.true1318:                                ; preds = %if.end1315
  %168 = load i32, ptr %i_vbv_buffer_size, align 8
  %tobool1322.not = icmp eq i32 %168, 0
  br i1 %tobool1322.not, label %if.end1348.sink.split, label %if.end1326

if.end1326:                                       ; preds = %land.lhs.true1318
  %cmp1329 = icmp eq i32 %167, 2
  br i1 %cmp1329, label %land.lhs.true1331, label %if.end1348

land.lhs.true1331:                                ; preds = %if.end1326
  %169 = load i32, ptr %i_bitrate613, align 4
  %170 = load i32, ptr %i_vbv_max_bitrate610, align 4
  %cmp1338.not = icmp ne i32 %169, %170
  %tobool1344.not = icmp eq i32 %170, 0
  %or.cond2078 = or i1 %cmp1338.not, %tobool1344.not
  br i1 %or.cond2078, label %if.end1348.sink.split, label %if.end1348

if.end1348.sink.split:                            ; preds = %land.lhs.true1331, %land.lhs.true1318
  %.str.71.sink = phi ptr [ @.str.71, %land.lhs.true1318 ], [ @.str.72, %land.lhs.true1331 ]
  %.sink = phi i32 [ 0, %land.lhs.true1318 ], [ 1, %land.lhs.true1331 ]
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull %.str.71.sink) #17
  store i32 %.sink, ptr %i_nal_hrd, align 8
  br label %if.end1348

if.end1348:                                       ; preds = %if.end1348.sink.split, %if.end1315, %land.lhs.true1331, %if.end1326
  %171 = load i32, ptr %b_cabac919, align 16
  %tobool1351 = icmp ne i32 %171, 0
  %lnot.ext = zext i1 %tobool1351 to i32
  store i32 %lnot.ext, ptr %b_cabac919, align 16
  %b_deblocking_filter = getelementptr inbounds i8, ptr %h, i64 116
  %172 = load i32, ptr %b_deblocking_filter, align 4
  %tobool1364 = icmp ne i32 %172, 0
  %lnot.ext1368 = zext i1 %tobool1364 to i32
  store i32 %lnot.ext1368, ptr %b_deblocking_filter, align 4
  %173 = load <2 x i32>, ptr %b_sliced_threads66, align 8
  %174 = icmp ne <2 x i32> %173, zeroinitializer
  %175 = zext <2 x i1> %174 to <2 x i32>
  store <2 x i32> %175, ptr %b_sliced_threads66, align 8
  %176 = load <2 x i32>, ptr %b_interlaced, align 8
  %177 = icmp ne <2 x i32> %176, zeroinitializer
  %178 = zext <2 x i1> %177 to <2 x i32>
  store <2 x i32> %178, ptr %b_interlaced, align 8
  %179 = load i32, ptr %b_intra_refresh560, align 16
  %tobool1399 = icmp ne i32 %179, 0
  %lnot.ext1403 = zext i1 %tobool1399 to i32
  store i32 %lnot.ext1403, ptr %b_intra_refresh560, align 16
  %b_visualize = getelementptr inbounds i8, ptr %h, i64 372
  %180 = load i32, ptr %b_visualize, align 4
  %tobool1407 = icmp ne i32 %180, 0
  %lnot.ext1411 = zext i1 %tobool1407 to i32
  store i32 %lnot.ext1411, ptr %b_visualize, align 4
  %b_aud = getelementptr inbounds i8, ptr %h, i64 632
  %181 = load <2 x i32>, ptr %b_aud, align 8
  %182 = icmp ne <2 x i32> %181, zeroinitializer
  %183 = zext <2 x i1> %182 to <2 x i32>
  store <2 x i32> %183, ptr %b_aud, align 8
  %b_annexb = getelementptr inbounds i8, ptr %h, i64 640
  %184 = load i32, ptr %b_annexb, align 16
  %tobool1431 = icmp ne i32 %184, 0
  %lnot.ext1435 = zext i1 %tobool1431 to i32
  store i32 %lnot.ext1435, ptr %b_annexb, align 16
  %b_vfr_input = getelementptr inbounds i8, ptr %h, i64 648
  %185 = load i32, ptr %b_vfr_input, align 8
  %tobool1439 = icmp ne i32 %185, 0
  %lnot.ext1443 = zext i1 %tobool1439 to i32
  store i32 %lnot.ext1443, ptr %b_vfr_input, align 8
  %b_pic_struct1447 = getelementptr inbounds i8, ptr %h, i64 676
  %186 = load <2 x i32>, ptr %b_pic_struct1447, align 4
  %187 = icmp ne <2 x i32> %186, zeroinitializer
  %188 = zext <2 x i1> %187 to <2 x i32>
  store <2 x i32> %188, ptr %b_pic_struct1447, align 4
  %189 = load i32, ptr %b_transform_8x8899, align 8
  %tobool1466 = icmp ne i32 %189, 0
  %lnot.ext1470 = zext i1 %tobool1466 to i32
  store i32 %lnot.ext1470, ptr %b_transform_8x8899, align 8
  %b_weighted_bipred1476 = getelementptr inbounds i8, ptr %h, i64 400
  %190 = load i32, ptr %b_weighted_bipred1476, align 16
  %tobool1477 = icmp ne i32 %190, 0
  %lnot.ext1481 = zext i1 %tobool1477 to i32
  store i32 %lnot.ext1481, ptr %b_weighted_bipred1476, align 16
  %b_chroma_me = getelementptr inbounds i8, ptr %h, i64 432
  %191 = load <2 x i32>, ptr %b_chroma_me, align 16
  %192 = icmp ne <2 x i32> %191, zeroinitializer
  %193 = zext <2 x i1> %192 to <2 x i32>
  store <2 x i32> %193, ptr %b_chroma_me, align 16
  %b_fast_pskip1508 = getelementptr inbounds i8, ptr %h, i64 444
  %194 = load <2 x i32>, ptr %b_fast_pskip1508, align 4
  %195 = icmp ne <2 x i32> %194, zeroinitializer
  %196 = zext <2 x i1> %195 to <2 x i32>
  store <2 x i32> %196, ptr %b_fast_pskip1508, align 4
  %197 = load i32, ptr %b_psy935, align 16
  %tobool1530 = icmp ne i32 %197, 0
  %lnot.ext1534 = zext i1 %tobool1530 to i32
  store i32 %lnot.ext1534, ptr %b_psy935, align 16
  %b_psnr1540 = getelementptr inbounds i8, ptr %h, i64 476
  %198 = load <2 x i32>, ptr %b_psnr1540, align 4
  %199 = icmp ne <2 x i32> %198, zeroinitializer
  %200 = zext <2 x i1> %199 to <2 x i32>
  store <2 x i32> %200, ptr %b_psnr1540, align 4
  %b_stat_write = getelementptr inbounds i8, ptr %h, i64 560
  %201 = load i32, ptr %b_stat_write, align 8
  %tobool1562 = icmp ne i32 %201, 0
  %lnot.ext1566 = zext i1 %tobool1562 to i32
  store i32 %lnot.ext1566, ptr %b_stat_write, align 8
  %202 = load i32, ptr %b_stat_read, align 8
  %tobool1573 = icmp ne i32 %202, 0
  %lnot.ext1577 = zext i1 %tobool1573 to i32
  store i32 %lnot.ext1577, ptr %b_stat_read, align 8
  %b_mb_tree1583 = getelementptr inbounds i8, ptr %h, i64 552
  %203 = load i32, ptr %b_mb_tree1583, align 8
  %tobool1584 = icmp ne i32 %203, 0
  %lnot.ext1588 = zext i1 %tobool1584 to i32
  store i32 %lnot.ext1588, ptr %b_mb_tree1583, align 8
  br label %return

return:                                           ; preds = %if.then145, %if.then24, %if.then157, %if.then1166, %if.end1348, %if.then14, %if.then
  %retval.4 = phi i32 [ -1, %if.then ], [ -1, %if.then14 ], [ -1, %if.then24 ], [ -1, %if.then157 ], [ -1, %if.then145 ], [ 0, %if.end1348 ], [ -1, %if.then1166 ]
  ret i32 %retval.4
}

declare i32 @x264_cqm_parse_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @spec_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_set_aspect_ratio(ptr noundef %h, ptr nocapture noundef readonly %param, i32 noundef %initial) unnamed_addr #0 {
entry:
  %i_w = alloca i32, align 4
  %i_h = alloca i32, align 4
  %i_sar_width = getelementptr inbounds i8, ptr %param, i64 48
  %0 = load i32, ptr %i_sar_width, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %entry
  %vui = getelementptr inbounds i8, ptr %param, i64 44
  %1 = load i32, ptr %vui, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then, label %if.end38

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_w) #17
  store i32 %0, ptr %i_w, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_h) #17
  store i32 %1, ptr %i_h, align 4
  %vui8 = getelementptr inbounds i8, ptr %h, i64 44
  %i_sar_width9 = getelementptr inbounds i8, ptr %h, i64 48
  %2 = load i32, ptr %i_sar_width9, align 4
  %3 = load i32, ptr %vui8, align 4
  call void @x264_reduce_fraction(ptr noundef nonnull %i_w, ptr noundef nonnull %i_h) #17
  %i_w.promoted = load i32, ptr %i_w, align 4
  %i_h.promoted = load i32, ptr %i_h, align 4
  %cmp1356 = icmp ugt i32 %i_w.promoted, 65535
  %cmp1457 = icmp ugt i32 %i_h.promoted, 65535
  %4 = select i1 %cmp1356, i1 true, i1 %cmp1457
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %if.then, %while.body
  %div525459 = phi i32 [ %div52, %while.body ], [ %i_w.promoted, %if.then ]
  %div15535558 = phi i32 [ %div1553, %while.body ], [ %i_h.promoted, %if.then ]
  %div52 = lshr i32 %div525459, 1
  %div1553 = lshr i32 %div15535558, 1
  %cmp13 = icmp ugt i32 %div525459, 131071
  %cmp14 = icmp ugt i32 %div15535558, 131071
  %5 = select i1 %cmp13, i1 true, i1 %cmp14
  br i1 %5, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.body
  store i32 %div52, ptr %i_w, align 4
  store i32 %div1553, ptr %i_h, align 4
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.then
  call void @x264_reduce_fraction(ptr noundef nonnull %i_w, ptr noundef nonnull %i_h) #17
  %6 = load i32, ptr %i_w, align 4
  %cmp16.not = icmp eq i32 %6, %2
  %.pre = load i32, ptr %i_h, align 4
  br i1 %cmp16.not, label %lor.lhs.false, label %if.then19

lor.lhs.false:                                    ; preds = %while.end
  %cmp17 = icmp ne i32 %.pre, %3
  %tobool = icmp ne i32 %initial, 0
  %or.cond = or i1 %tobool, %cmp17
  br i1 %or.cond, label %if.then19, label %if.end37

if.then19:                                        ; preds = %lor.lhs.false, %while.end
  store i32 0, ptr %i_sar_width9, align 4
  store i32 0, ptr %vui8, align 4
  %cmp26 = icmp eq i32 %6, 0
  %cmp28 = icmp eq i32 %.pre, 0
  %or.cond39 = select i1 %cmp26, i1 true, i1 %cmp28
  br i1 %or.cond39, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then19
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.73) #17
  br label %if.end37

if.else:                                          ; preds = %if.then19
  %tobool30.not = icmp eq i32 %initial, 0
  %cond = select i1 %tobool30.not, i32 3, i32 2
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef %cond, ptr noundef nonnull @.str.74, i32 noundef %6, i32 noundef %.pre) #17
  %7 = load i32, ptr %i_w, align 4
  store i32 %7, ptr %i_sar_width9, align 4
  %8 = load i32, ptr %i_h, align 4
  store i32 %8, ptr %vui8, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.else, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_h) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_w) #17
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %land.lhs.true, %entry
  ret void
}

declare void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @x264_sps_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_pps_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @x264_validate_levels(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @x264_cqm_init(ptr noundef) local_unnamed_addr #2

declare void @x264_rdo_init() local_unnamed_addr #2

declare void @x264_predict_16x16_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_predict_8x8c_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_predict_8x8_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_predict_4x4_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_init_vlc_tables(...) local_unnamed_addr #2

declare void @x264_pixel_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_dct_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_zigzag_init(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_mc_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_quant_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_deblock_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_dct_init_weights() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mbcmp_init(ptr nocapture noundef %h) unnamed_addr #5 {
entry:
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812
  %0 = load i32, ptr %b_lossless, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.end, label %.thread174

.thread174:                                       ; preds = %entry
  %pixf120 = getelementptr inbounds i8, ptr %h, i64 31560
  %mbcmp121 = getelementptr inbounds i8, ptr %h, i64 31816
  %satd3122 = getelementptr inbounds i8, ptr %h, i64 31672
  %sad_aligned123 = getelementptr inbounds i8, ptr %h, i64 32096
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %mbcmp121, ptr noundef nonnull align 8 dereferenceable(56) %sad_aligned123, i64 56, i1 false)
  br label %4

land.end:                                         ; preds = %entry
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 428
  %1 = load i32, ptr %i_subpel_refine, align 4
  %.fr = freeze i32 %1
  %cmp = icmp sgt i32 %.fr, 1
  %pixf = getelementptr inbounds i8, ptr %h, i64 31560
  %mbcmp = getelementptr inbounds i8, ptr %h, i64 31816
  %satd3 = getelementptr inbounds i8, ptr %h, i64 31672
  br i1 %cmp, label %2, label %3

2:                                                ; preds = %land.end
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %mbcmp, ptr noundef nonnull align 8 dereferenceable(56) %satd3, i64 56, i1 false)
  br label %4

3:                                                ; preds = %land.end
  %sad_aligned = getelementptr inbounds i8, ptr %h, i64 32096
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %mbcmp, ptr noundef nonnull align 8 dereferenceable(56) %sad_aligned, i64 56, i1 false)
  br label %4

4:                                                ; preds = %2, %3, %.thread174
  %satd3.sink = phi ptr [ %satd3, %2 ], [ %pixf, %3 ], [ %pixf120, %.thread174 ]
  %.sink221 = phi i64 [ 32528, %2 ], [ 32536, %3 ], [ 32536, %.thread174 ]
  %.sink220 = phi i64 [ 32552, %2 ], [ 32560, %3 ], [ 32560, %.thread174 ]
  %.sink = phi i64 [ 32576, %2 ], [ 32584, %3 ], [ 32584, %.thread174 ]
  %satd3127133149164183 = phi ptr [ %satd3, %2 ], [ %satd3, %3 ], [ %satd3122, %.thread174 ]
  %pixf125134148165182 = phi ptr [ %pixf, %2 ], [ %pixf, %3 ], [ %pixf120, %.thread174 ]
  %5 = phi i1 [ true, %2 ], [ false, %3 ], [ false, %.thread174 ]
  %mbcmp_unaligned136 = getelementptr inbounds i8, ptr %h, i64 31872
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %mbcmp_unaligned136, ptr noundef nonnull align 8 dereferenceable(56) %satd3.sink, i64 56, i1 false)
  %intra_satd_x3_16x16150192 = getelementptr inbounds i8, ptr %h, i64 %.sink221
  %cond25166200 = load ptr, ptr %intra_satd_x3_16x16150192, align 8
  %intra_mbcmp_x3_16x16167201 = getelementptr inbounds i8, ptr %h, i64 32520
  store ptr %cond25166200, ptr %intra_mbcmp_x3_16x16167201, align 8
  %intra_satd_x3_8x8c168202 = getelementptr inbounds i8, ptr %h, i64 %.sink220
  %cond33184215 = load ptr, ptr %intra_satd_x3_8x8c168202, align 8
  %intra_mbcmp_x3_8x8c185216 = getelementptr inbounds i8, ptr %h, i64 32544
  store ptr %cond33184215, ptr %intra_mbcmp_x3_8x8c185216, align 8
  %intra_satd_x3_4x4186217 = getelementptr inbounds i8, ptr %h, i64 %.sink
  %cond41 = load ptr, ptr %intra_satd_x3_4x4186217, align 8
  %intra_mbcmp_x3_4x4 = getelementptr inbounds i8, ptr %h, i64 32568
  store ptr %cond41, ptr %intra_mbcmp_x3_4x4, align 8
  %i_me_method = getelementptr inbounds i8, ptr %h, i64 412
  %6 = load i32, ptr %i_me_method, align 4
  %cmp45 = icmp eq i32 %6, 4
  %and115 = and i1 %5, %cmp45
  %fpelcmp = getelementptr inbounds i8, ptr %h, i64 31928
  %cond58 = select i1 %and115, ptr %satd3127133149164183, ptr %pixf125134148165182
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %fpelcmp, ptr noundef nonnull align 8 dereferenceable(56) %cond58, i64 56, i1 false)
  %fpelcmp_x3 = getelementptr inbounds i8, ptr %h, i64 31984
  %cond69.v = select i1 %and115, i64 32352, i64 32240
  %cond69 = getelementptr inbounds i8, ptr %h, i64 %cond69.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %fpelcmp_x3, ptr noundef nonnull align 8 dereferenceable(56) %cond69, i64 56, i1 false)
  %fpelcmp_x4 = getelementptr inbounds i8, ptr %h, i64 32040
  %cond80.v = select i1 %and115, i64 32408, i64 32296
  %cond80 = getelementptr inbounds i8, ptr %h, i64 %cond80.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %fpelcmp_x4, ptr noundef nonnull align 8 dereferenceable(56) %cond80, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @x264_analyse_init_costs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #8

declare i32 @x264_lookahead_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @x264_frame_pop_unused(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @x264_macroblock_cache_allocate(ptr noundef) local_unnamed_addr #2

declare i32 @x264_macroblock_thread_allocate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @x264_ratecontrol_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

declare void @x264_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_encoder_reconfig(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %param) local_unnamed_addr #0 {
entry:
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %0 = load ptr, ptr %thread, align 16
  %i_thread_phase = getelementptr inbounds i8, ptr %0, i64 1744
  %1 = load i32, ptr %i_thread_phase, align 16
  %idxprom = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx2, align 8
  tail call fastcc void @x264_set_aspect_ratio(ptr noundef %2, ptr noundef %param, i32 noundef 0)
  %i_frame_reference = getelementptr inbounds i8, ptr %param, i64 80
  %3 = load i32, ptr %i_frame_reference, align 8
  %i_frame_reference4 = getelementptr inbounds i8, ptr %2, i64 80
  store i32 %3, ptr %i_frame_reference4, align 16
  %i_bframe_bias = getelementptr inbounds i8, ptr %param, i64 108
  %4 = load i32, ptr %i_bframe_bias, align 4
  %i_bframe_bias6 = getelementptr inbounds i8, ptr %2, i64 108
  store i32 %4, ptr %i_bframe_bias6, align 4
  %i_scenecut_threshold = getelementptr inbounds i8, ptr %2, i64 92
  %5 = load i32, ptr %i_scenecut_threshold, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %i_scenecut_threshold8 = getelementptr inbounds i8, ptr %param, i64 92
  %6 = load i32, ptr %i_scenecut_threshold8, align 4
  store i32 %6, ptr %i_scenecut_threshold, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %b_deblocking_filter = getelementptr inbounds i8, ptr %param, i64 116
  %7 = load i32, ptr %b_deblocking_filter, align 4
  %b_deblocking_filter12 = getelementptr inbounds i8, ptr %2, i64 116
  store i32 %7, ptr %b_deblocking_filter12, align 4
  %i_deblocking_filter_alphac0 = getelementptr inbounds i8, ptr %param, i64 120
  %8 = load i32, ptr %i_deblocking_filter_alphac0, align 8
  %i_deblocking_filter_alphac014 = getelementptr inbounds i8, ptr %2, i64 120
  store i32 %8, ptr %i_deblocking_filter_alphac014, align 8
  %i_deblocking_filter_beta = getelementptr inbounds i8, ptr %param, i64 124
  %9 = load i32, ptr %i_deblocking_filter_beta, align 4
  %i_deblocking_filter_beta16 = getelementptr inbounds i8, ptr %2, i64 124
  store i32 %9, ptr %i_deblocking_filter_beta16, align 4
  %analyse = getelementptr inbounds i8, ptr %param, i64 384
  %inter = getelementptr inbounds i8, ptr %param, i64 388
  %10 = load i32, ptr %inter, align 4
  %analyse18 = getelementptr inbounds i8, ptr %2, i64 384
  %inter19 = getelementptr inbounds i8, ptr %2, i64 388
  store i32 %10, ptr %inter19, align 4
  %11 = load i32, ptr %analyse, align 8
  store i32 %11, ptr %analyse18, align 16
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %param, i64 404
  %12 = load i32, ptr %i_direct_mv_pred, align 4
  %i_direct_mv_pred27 = getelementptr inbounds i8, ptr %2, i64 404
  store i32 %12, ptr %i_direct_mv_pred27, align 4
  %i_me_method = getelementptr inbounds i8, ptr %2, i64 412
  %13 = load i32, ptr %i_me_method, align 4
  %cmp = icmp slt i32 %13, 3
  %i_me_range37.phi.trans.insert = getelementptr inbounds i8, ptr %param, i64 416
  %.pre = load i32, ptr %i_me_range37.phi.trans.insert, align 8
  br i1 %cmp, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %i_me_range33 = getelementptr inbounds i8, ptr %2, i64 416
  %14 = load i32, ptr %i_me_range33, align 16
  %cmp34 = icmp slt i32 %.pre, %14
  br i1 %cmp34, label %if.then35, label %if.end41

if.then35:                                        ; preds = %if.end, %lor.lhs.false
  %i_me_range40 = getelementptr inbounds i8, ptr %2, i64 416
  store i32 %.pre, ptr %i_me_range40, align 16
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %lor.lhs.false
  %i_noise_reduction = getelementptr inbounds i8, ptr %param, i64 452
  %15 = load i32, ptr %i_noise_reduction, align 4
  %i_noise_reduction45 = getelementptr inbounds i8, ptr %2, i64 452
  store i32 %15, ptr %i_noise_reduction45, align 4
  %i_subpel_refine = getelementptr inbounds i8, ptr %2, i64 428
  %16 = load i32, ptr %i_subpel_refine, align 4
  %tobool48.not = icmp eq i32 %16, 0
  br i1 %tobool48.not, label %if.end55, label %if.then49

if.then49:                                        ; preds = %if.end41
  %i_subpel_refine51 = getelementptr inbounds i8, ptr %param, i64 428
  %17 = load i32, ptr %i_subpel_refine51, align 4
  %18 = freeze i32 %17
  store i32 %18, ptr %i_subpel_refine, align 4
  %19 = icmp sgt i32 %18, 1
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %if.end41
  %.fr.i = phi i1 [ %19, %if.then49 ], [ false, %if.end41 ]
  %i_trellis = getelementptr inbounds i8, ptr %param, i64 440
  %20 = load i32, ptr %i_trellis, align 8
  %i_trellis59 = getelementptr inbounds i8, ptr %2, i64 440
  store i32 %20, ptr %i_trellis59, align 8
  %b_chroma_me = getelementptr inbounds i8, ptr %param, i64 432
  %21 = load i32, ptr %b_chroma_me, align 8
  %b_chroma_me63 = getelementptr inbounds i8, ptr %2, i64 432
  store i32 %21, ptr %b_chroma_me63, align 16
  %b_dct_decimate = getelementptr inbounds i8, ptr %param, i64 448
  %22 = load i32, ptr %b_dct_decimate, align 8
  %b_dct_decimate67 = getelementptr inbounds i8, ptr %2, i64 448
  store i32 %22, ptr %b_dct_decimate67, align 16
  %b_fast_pskip = getelementptr inbounds i8, ptr %param, i64 444
  %23 = load i32, ptr %b_fast_pskip, align 4
  %b_fast_pskip71 = getelementptr inbounds i8, ptr %2, i64 444
  store i32 %23, ptr %b_fast_pskip71, align 4
  %b_mixed_references = getelementptr inbounds i8, ptr %param, i64 436
  %24 = load i32, ptr %b_mixed_references, align 4
  %b_mixed_references75 = getelementptr inbounds i8, ptr %2, i64 436
  store i32 %24, ptr %b_mixed_references75, align 4
  %f_psy_rd = getelementptr inbounds i8, ptr %param, i64 456
  %25 = load float, ptr %f_psy_rd, align 8
  %f_psy_rd79 = getelementptr inbounds i8, ptr %2, i64 456
  store float %25, ptr %f_psy_rd79, align 8
  %f_psy_trellis = getelementptr inbounds i8, ptr %param, i64 460
  %26 = load float, ptr %f_psy_trellis, align 4
  %f_psy_trellis83 = getelementptr inbounds i8, ptr %2, i64 460
  store float %26, ptr %f_psy_trellis83, align 4
  %cmp87 = icmp sgt i32 %13, 2
  %i_me_method94.phi.trans.insert = getelementptr inbounds i8, ptr %param, i64 412
  %.pre275 = load i32, ptr %i_me_method94.phi.trans.insert, align 4
  br i1 %cmp87, label %if.end98, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %if.end55
  %cmp91 = icmp slt i32 %.pre275, 3
  br i1 %cmp91, label %if.end98.thread277, label %if.end108

if.end98.thread277:                               ; preds = %lor.lhs.false88
  store i32 %.pre275, ptr %i_me_method, align 4
  br label %if.end108

if.end98:                                         ; preds = %if.end55
  store i32 %.pre275, ptr %i_me_method, align 4
  %cmp102 = icmp sgt i32 %.pre275, 2
  br i1 %cmp102, label %land.lhs.true, label %if.end108

land.lhs.true:                                    ; preds = %if.end98
  %b_have_sub8x8_esa = getelementptr inbounds i8, ptr %2, i64 14676
  %27 = load i32, ptr %b_have_sub8x8_esa, align 4
  %tobool103.not = icmp eq i32 %27, 0
  br i1 %tobool103.not, label %if.then104, label %if.end108

if.then104:                                       ; preds = %land.lhs.true
  %and = and i32 %10, -33
  store i32 %and, ptr %inter19, align 4
  br label %if.end108

if.end108:                                        ; preds = %lor.lhs.false88, %if.end98.thread277, %if.then104, %land.lhs.true, %if.end98
  %28 = phi i32 [ %.pre275, %if.then104 ], [ %.pre275, %land.lhs.true ], [ %.pre275, %if.end98 ], [ %.pre275, %if.end98.thread277 ], [ %13, %lor.lhs.false88 ]
  %pps = getelementptr inbounds i8, ptr %2, i64 3328
  %29 = load ptr, ptr %pps, align 16
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %29, i64 60
  %30 = load i32, ptr %b_transform_8x8_mode, align 4
  %tobool109.not = icmp eq i32 %30, 0
  br i1 %tobool109.not, label %if.end115, label %if.then110

if.then110:                                       ; preds = %if.end108
  %b_transform_8x8 = getelementptr inbounds i8, ptr %param, i64 392
  %31 = load i32, ptr %b_transform_8x8, align 8
  %b_transform_8x8114 = getelementptr inbounds i8, ptr %2, i64 392
  store i32 %31, ptr %b_transform_8x8114, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.end108
  %i_max_ref1 = getelementptr inbounds i8, ptr %2, i64 14608
  %32 = load i32, ptr %i_max_ref1, align 16
  %cmp117 = icmp sgt i32 %32, 1
  br i1 %cmp117, label %if.then118, label %if.end121

if.then118:                                       ; preds = %if.end115
  %i_bframe_pyramid = getelementptr inbounds i8, ptr %param, i64 112
  %33 = load i32, ptr %i_bframe_pyramid, align 8
  %i_bframe_pyramid120 = getelementptr inbounds i8, ptr %2, i64 112
  store i32 %33, ptr %i_bframe_pyramid120, align 16
  br label %if.end121

if.end121:                                        ; preds = %if.then118, %if.end115
  %i_slice_max_size = getelementptr inbounds i8, ptr %param, i64 684
  %34 = load i32, ptr %i_slice_max_size, align 4
  %i_slice_max_size123 = getelementptr inbounds i8, ptr %2, i64 684
  store i32 %34, ptr %i_slice_max_size123, align 4
  %i_slice_max_mbs = getelementptr inbounds i8, ptr %param, i64 688
  %35 = load i32, ptr %i_slice_max_mbs, align 8
  %i_slice_max_mbs125 = getelementptr inbounds i8, ptr %2, i64 688
  store i32 %35, ptr %i_slice_max_mbs125, align 16
  %i_slice_count = getelementptr inbounds i8, ptr %param, i64 692
  %36 = load i32, ptr %i_slice_count, align 4
  %i_slice_count127 = getelementptr inbounds i8, ptr %2, i64 692
  store i32 %36, ptr %i_slice_count127, align 4
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %2, i64 524
  %37 = load i32, ptr %i_vbv_max_bitrate, align 4
  %cmp129 = icmp sgt i32 %37, 0
  br i1 %cmp129, label %land.lhs.true130, label %if.end157

land.lhs.true130:                                 ; preds = %if.end121
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %2, i64 528
  %38 = load i32, ptr %i_vbv_buffer_size, align 8
  %cmp133 = icmp sgt i32 %38, 0
  br i1 %cmp133, label %land.lhs.true134, label %if.end157

land.lhs.true134:                                 ; preds = %land.lhs.true130
  %i_vbv_max_bitrate136 = getelementptr inbounds i8, ptr %param, i64 524
  %39 = load i32, ptr %i_vbv_max_bitrate136, align 4
  %cmp137 = icmp sgt i32 %39, 0
  br i1 %cmp137, label %land.lhs.true138, label %if.end157

land.lhs.true138:                                 ; preds = %land.lhs.true134
  %i_vbv_buffer_size140 = getelementptr inbounds i8, ptr %param, i64 528
  %40 = load i32, ptr %i_vbv_buffer_size140, align 8
  %cmp141 = icmp sgt i32 %40, 0
  br i1 %cmp141, label %if.then142, label %if.end157

if.then142:                                       ; preds = %land.lhs.true138
  store i32 %39, ptr %i_vbv_max_bitrate, align 4
  %41 = load i32, ptr %i_vbv_buffer_size140, align 8
  store i32 %41, ptr %i_vbv_buffer_size, align 8
  %i_bitrate = getelementptr inbounds i8, ptr %param, i64 508
  %42 = load i32, ptr %i_bitrate, align 4
  %i_bitrate156 = getelementptr inbounds i8, ptr %2, i64 508
  store i32 %42, ptr %i_bitrate156, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then142, %land.lhs.true138, %land.lhs.true134, %land.lhs.true130, %if.end121
  %rc_reconfig.0 = phi i32 [ 1, %if.then142 ], [ 0, %land.lhs.true138 ], [ 0, %land.lhs.true134 ], [ 0, %land.lhs.true130 ], [ 0, %if.end121 ]
  %f_rf_constant = getelementptr inbounds i8, ptr %2, i64 512
  %43 = load float, ptr %f_rf_constant, align 8
  %f_rf_constant161 = getelementptr inbounds i8, ptr %param, i64 512
  %44 = load float, ptr %f_rf_constant161, align 8
  %cmp162 = fcmp une float %43, %44
  br i1 %cmp162, label %if.then163, label %if.end169

if.then163:                                       ; preds = %if.end157
  store float %44, ptr %f_rf_constant, align 8
  br label %if.end169

if.end169:                                        ; preds = %if.then163, %if.end157
  %rc_reconfig.1 = phi i32 [ 1, %if.then163 ], [ %rc_reconfig.0, %if.end157 ]
  %f_rf_constant_max = getelementptr inbounds i8, ptr %2, i64 516
  %45 = load float, ptr %f_rf_constant_max, align 4
  %f_rf_constant_max173 = getelementptr inbounds i8, ptr %param, i64 516
  %46 = load float, ptr %f_rf_constant_max173, align 4
  %cmp174 = fcmp une float %45, %46
  br i1 %cmp174, label %if.then175, label %if.end181

if.then175:                                       ; preds = %if.end169
  store float %46, ptr %f_rf_constant_max, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.then175, %if.end169
  %rc_reconfig.2 = phi i32 [ 1, %if.then175 ], [ %rc_reconfig.1, %if.end169 ]
  %b_lossless.i = getelementptr inbounds i8, ptr %2, i64 25812
  %47 = load i32, ptr %b_lossless.i, align 4
  %tobool.not.i = icmp eq i32 %47, 0
  %pixf.i = getelementptr inbounds i8, ptr %2, i64 31560
  %mbcmp.i = getelementptr inbounds i8, ptr %2, i64 31816
  %satd3.i = getelementptr inbounds i8, ptr %2, i64 31672
  br i1 %tobool.not.i, label %land.end.i, label %.thread174.i

.thread174.i:                                     ; preds = %if.end181
  %sad_aligned123.i = getelementptr inbounds i8, ptr %2, i64 32096
  br label %mbcmp_init.exit

land.end.i:                                       ; preds = %if.end181
  br i1 %.fr.i, label %mbcmp_init.exit, label %48

48:                                               ; preds = %land.end.i
  %sad_aligned.i = getelementptr inbounds i8, ptr %2, i64 32096
  br label %mbcmp_init.exit

mbcmp_init.exit:                                  ; preds = %land.end.i, %.thread174.i, %48
  %sad_aligned123.i.sink = phi ptr [ %sad_aligned123.i, %.thread174.i ], [ %sad_aligned.i, %48 ], [ %satd3.i, %land.end.i ]
  %satd3.sink.i = phi ptr [ %pixf.i, %.thread174.i ], [ %pixf.i, %48 ], [ %satd3.i, %land.end.i ]
  %.sink221.i = phi i64 [ 32536, %.thread174.i ], [ 32536, %48 ], [ 32528, %land.end.i ]
  %.sink220.i = phi i64 [ 32560, %.thread174.i ], [ 32560, %48 ], [ 32552, %land.end.i ]
  %.sink.i = phi i64 [ 32584, %.thread174.i ], [ 32584, %48 ], [ 32576, %land.end.i ]
  %49 = phi i1 [ false, %.thread174.i ], [ false, %48 ], [ true, %land.end.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %mbcmp.i, ptr noundef nonnull align 8 dereferenceable(56) %sad_aligned123.i.sink, i64 56, i1 false)
  %mbcmp_unaligned136.i = getelementptr inbounds i8, ptr %2, i64 31872
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %mbcmp_unaligned136.i, ptr noundef nonnull align 8 dereferenceable(56) %satd3.sink.i, i64 56, i1 false)
  %intra_satd_x3_16x16150192.i = getelementptr inbounds i8, ptr %2, i64 %.sink221.i
  %cond25166200.i = load ptr, ptr %intra_satd_x3_16x16150192.i, align 8
  %intra_mbcmp_x3_16x16167201.i = getelementptr inbounds i8, ptr %2, i64 32520
  store ptr %cond25166200.i, ptr %intra_mbcmp_x3_16x16167201.i, align 8
  %intra_satd_x3_8x8c168202.i = getelementptr inbounds i8, ptr %2, i64 %.sink220.i
  %cond33184215.i = load ptr, ptr %intra_satd_x3_8x8c168202.i, align 8
  %intra_mbcmp_x3_8x8c185216.i = getelementptr inbounds i8, ptr %2, i64 32544
  store ptr %cond33184215.i, ptr %intra_mbcmp_x3_8x8c185216.i, align 8
  %intra_satd_x3_4x4186217.i = getelementptr inbounds i8, ptr %2, i64 %.sink.i
  %cond41.i = load ptr, ptr %intra_satd_x3_4x4186217.i, align 8
  %intra_mbcmp_x3_4x4.i = getelementptr inbounds i8, ptr %2, i64 32568
  store ptr %cond41.i, ptr %intra_mbcmp_x3_4x4.i, align 8
  %cmp45.i = icmp eq i32 %28, 4
  %and115.i = and i1 %49, %cmp45.i
  %fpelcmp.i = getelementptr inbounds i8, ptr %2, i64 31928
  %cond58.i = select i1 %and115.i, ptr %satd3.i, ptr %pixf.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %fpelcmp.i, ptr noundef nonnull align 8 dereferenceable(56) %cond58.i, i64 56, i1 false)
  %fpelcmp_x3.i = getelementptr inbounds i8, ptr %2, i64 31984
  %cond69.v.i = select i1 %and115.i, i64 32352, i64 32240
  %cond69.i = getelementptr inbounds i8, ptr %2, i64 %cond69.v.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %fpelcmp_x3.i, ptr noundef nonnull align 8 dereferenceable(56) %cond69.i, i64 56, i1 false)
  %fpelcmp_x4.i = getelementptr inbounds i8, ptr %2, i64 32040
  %cond80.v.i = select i1 %and115.i, i64 32408, i64 32296
  %cond80.i = getelementptr inbounds i8, ptr %2, i64 %cond80.v.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %fpelcmp_x4.i, ptr noundef nonnull align 8 dereferenceable(56) %cond80.i, i64 56, i1 false)
  %call = tail call fastcc i32 @x264_validate_parameters(ptr noundef nonnull %2)
  %tobool182 = icmp eq i32 %call, 0
  %tobool184 = icmp ne i32 %rc_reconfig.2, 0
  %or.cond = and i1 %tobool184, %tobool182
  br i1 %or.cond, label %if.then185, label %if.end186

if.then185:                                       ; preds = %mbcmp_init.exit
  tail call void @x264_ratecontrol_init_reconfigurable(ptr noundef nonnull %2, i32 noundef 0) #17
  br label %if.end186

if.end186:                                        ; preds = %if.then185, %mbcmp_init.exit
  ret i32 %call
}

declare void @x264_ratecontrol_init_reconfigurable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_encoder_parameters(ptr nocapture noundef readonly %h, ptr nocapture noundef writeonly %param) local_unnamed_addr #5 {
entry:
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %i_thread_phase = getelementptr inbounds i8, ptr %h, i64 1744
  %0 = load i32, ptr %i_thread_phase, align 16
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %param, ptr noundef nonnull align 16 dereferenceable(704) %1, i64 704, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_encoder_headers(ptr noundef %h, ptr nocapture noundef writeonly %pp_nal, ptr nocapture noundef writeonly %pi_nal) local_unnamed_addr #0 {
entry:
  %out = getelementptr inbounds i8, ptr %h, i64 1760
  store i32 0, ptr %out, align 16
  %bs = getelementptr inbounds i8, ptr %h, i64 1792
  %p_bitstream = getelementptr inbounds i8, ptr %h, i64 1784
  %0 = load ptr, ptr %p_bitstream, align 8
  %i_bitstream = getelementptr inbounds i8, ptr %h, i64 1776
  %1 = load i32, ptr %i_bitstream, align 16
  %2 = ptrtoint ptr %0 to i64
  %idx.ext.i = and i64 %2, 3
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 %idx.neg.i
  store ptr %add.ptr.i, ptr %bs, align 8
  %p.i = getelementptr inbounds i8, ptr %h, i64 1800
  store ptr %add.ptr.i, ptr %p.i, align 8
  %idx.ext1.i = sext i32 %1 to i64
  %add.ptr2.i = getelementptr inbounds i8, ptr %0, i64 %idx.ext1.i
  %p_end.i = getelementptr inbounds i8, ptr %h, i64 1808
  store ptr %add.ptr2.i, ptr %p_end.i, align 8
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32
  %3 = shl nuw nsw i32 %idx.ext.tr.i, 3
  %conv4.i = sub nuw nsw i32 64, %3
  %i_left.i = getelementptr inbounds i8, ptr %h, i64 1824
  store i32 %conv4.i, ptr %i_left.i, align 8
  %4 = load i32, ptr %add.ptr.i, align 4
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %4)
  %conv6.i = zext i32 %add5.i.i to i64
  %cur_bits.i = getelementptr inbounds i8, ptr %h, i64 1816
  %conv.i = shl i64 %2, 3
  %5 = and i64 %conv.i, 24
  %mul8.i = sub nuw nsw i64 32, %5
  %shr.i = lshr i64 %conv6.i, %mul8.i
  store i64 %shr.i, ptr %cur_bits.i, align 8
  %nal1.i = getelementptr inbounds i8, ptr %h, i64 1768
  %6 = load ptr, ptr %nal1.i, align 8
  store i32 3, ptr %6, align 8
  %i_type4.i = getelementptr inbounds i8, ptr %6, i64 4
  store i32 7, ptr %i_type4.i, align 4
  %i_payload.i = getelementptr inbounds i8, ptr %6, i64 8
  store i32 0, ptr %i_payload.i, align 8
  %7 = load ptr, ptr %p_bitstream, align 8
  %8 = load ptr, ptr %p.i, align 8
  %9 = load ptr, ptr %bs, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %10 = load i32, ptr %i_left.i, align 8
  %sub.ptr.sub.tr.i.i = trunc i64 %sub.ptr.sub.i.i to i32
  %11 = shl i32 %sub.ptr.sub.tr.i.i, 3
  %reass.sub = sub i32 %11, %10
  %conv1.i.i = add i32 %reass.sub, 64
  %div.i = sdiv i32 %conv1.i.i, 8
  %idxprom7.i = sext i32 %div.i to i64
  %arrayidx8.i = getelementptr inbounds i8, ptr %7, i64 %idxprom7.i
  %p_payload.i = getelementptr inbounds i8, ptr %6, i64 16
  store ptr %arrayidx8.i, ptr %p_payload.i, align 8
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %12 = load ptr, ptr %sps, align 16
  tail call void @x264_sps_write(ptr noundef nonnull %bs, ptr noundef %12) #17
  %13 = load ptr, ptr %nal1.i, align 8
  %14 = load i32, ptr %out, align 16
  %idxprom.i49 = sext i32 %14 to i64
  %arrayidx.i50 = getelementptr inbounds %struct.x264_nal_t, ptr %13, i64 %idxprom.i49
  %15 = load ptr, ptr %p_bitstream, align 8
  %16 = load ptr, ptr %p.i, align 8
  %17 = load ptr, ptr %bs, align 8
  %sub.ptr.lhs.cast.i.i54 = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast.i.i55 = ptrtoint ptr %17 to i64
  %sub.ptr.sub.i.i56 = sub i64 %sub.ptr.lhs.cast.i.i54, %sub.ptr.rhs.cast.i.i55
  %18 = load i32, ptr %i_left.i, align 8
  %sub.ptr.sub.tr.i.i58 = trunc i64 %sub.ptr.sub.i.i56 to i32
  %19 = shl i32 %sub.ptr.sub.tr.i.i58, 3
  %reass.sub188 = sub i32 %19, %18
  %conv1.i.i60 = add i32 %reass.sub188, 64
  %div.i61 = sdiv i32 %conv1.i.i60, 8
  %idxprom5.i = sext i32 %div.i61 to i64
  %arrayidx6.i = getelementptr inbounds i8, ptr %15, i64 %idxprom5.i
  %p_payload.i62 = getelementptr inbounds i8, ptr %arrayidx.i50, i64 16
  %20 = load ptr, ptr %p_payload.i62, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx6.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %20 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i63 = trunc i64 %sub.ptr.sub.i to i32
  %i_payload.i64 = getelementptr inbounds i8, ptr %arrayidx.i50, i64 8
  store i32 %conv.i63, ptr %i_payload.i64, align 8
  %21 = load i32, ptr %out, align 16
  %inc.i = add nsw i32 %21, 1
  store i32 %inc.i, ptr %out, align 16
  %i_nals_allocated.i.i = getelementptr inbounds i8, ptr %h, i64 1764
  %22 = load i32, ptr %i_nals_allocated.i.i, align 4
  %cmp.not.i.i = icmp slt i32 %inc.i, %22
  br i1 %cmp.not.i.i, label %entry.if.end_crit_edge, label %if.then.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load ptr, ptr %nal1.i, align 8
  br label %if.end

if.then.i.i:                                      ; preds = %entry
  %mul4.i.i = mul i32 %22, 48
  %call.i.i = tail call ptr @x264_malloc(i32 noundef %mul4.i.i) #17
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cleanup, label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.then.i.i
  %23 = load ptr, ptr %nal1.i, align 8
  %24 = load i32, ptr %i_nals_allocated.i.i, align 4
  %conv10.i.i = sext i32 %24 to i64
  %mul11.i.i = mul nsw i64 %conv10.i.i, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call.i.i, ptr align 8 %23, i64 %mul11.i.i, i1 false)
  %25 = load ptr, ptr %nal1.i, align 8
  tail call void @x264_free(ptr noundef %25) #17
  store ptr %call.i.i, ptr %nal1.i, align 8
  %26 = load i32, ptr %i_nals_allocated.i.i, align 4
  %mul18.i.i = shl nsw i32 %26, 1
  store i32 %mul18.i.i, ptr %i_nals_allocated.i.i, align 4
  %.pre193 = load i32, ptr %out, align 16
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %cleanup.thread.i.i
  %27 = phi i32 [ %inc.i, %entry.if.end_crit_edge ], [ %.pre193, %cleanup.thread.i.i ]
  %28 = phi ptr [ %.pre, %entry.if.end_crit_edge ], [ %call.i.i, %cleanup.thread.i.i ]
  %idxprom.i67 = sext i32 %27 to i64
  %arrayidx.i68 = getelementptr inbounds %struct.x264_nal_t, ptr %28, i64 %idxprom.i67
  store i32 3, ptr %arrayidx.i68, align 8
  %i_type4.i69 = getelementptr inbounds i8, ptr %arrayidx.i68, i64 4
  store i32 8, ptr %i_type4.i69, align 4
  %i_payload.i70 = getelementptr inbounds i8, ptr %arrayidx.i68, i64 8
  store i32 0, ptr %i_payload.i70, align 8
  %29 = load ptr, ptr %p_bitstream, align 8
  %30 = load ptr, ptr %p.i, align 8
  %31 = load ptr, ptr %bs, align 8
  %sub.ptr.lhs.cast.i.i74 = ptrtoint ptr %30 to i64
  %sub.ptr.rhs.cast.i.i75 = ptrtoint ptr %31 to i64
  %sub.ptr.sub.i.i76 = sub i64 %sub.ptr.lhs.cast.i.i74, %sub.ptr.rhs.cast.i.i75
  %32 = load i32, ptr %i_left.i, align 8
  %sub.ptr.sub.tr.i.i78 = trunc i64 %sub.ptr.sub.i.i76 to i32
  %33 = shl i32 %sub.ptr.sub.tr.i.i78, 3
  %reass.sub189 = sub i32 %33, %32
  %conv1.i.i80 = add i32 %reass.sub189, 64
  %div.i81 = sdiv i32 %conv1.i.i80, 8
  %idxprom7.i82 = sext i32 %div.i81 to i64
  %arrayidx8.i83 = getelementptr inbounds i8, ptr %29, i64 %idxprom7.i82
  %p_payload.i84 = getelementptr inbounds i8, ptr %arrayidx.i68, i64 16
  store ptr %arrayidx8.i83, ptr %p_payload.i84, align 8
  %pps = getelementptr inbounds i8, ptr %h, i64 3328
  %34 = load ptr, ptr %pps, align 16
  tail call void @x264_pps_write(ptr noundef nonnull %bs, ptr noundef %34) #17
  %35 = load ptr, ptr %nal1.i, align 8
  %36 = load i32, ptr %out, align 16
  %idxprom.i87 = sext i32 %36 to i64
  %arrayidx.i88 = getelementptr inbounds %struct.x264_nal_t, ptr %35, i64 %idxprom.i87
  %37 = load ptr, ptr %p_bitstream, align 8
  %38 = load ptr, ptr %p.i, align 8
  %39 = load ptr, ptr %bs, align 8
  %sub.ptr.lhs.cast.i.i92 = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast.i.i93 = ptrtoint ptr %39 to i64
  %sub.ptr.sub.i.i94 = sub i64 %sub.ptr.lhs.cast.i.i92, %sub.ptr.rhs.cast.i.i93
  %40 = load i32, ptr %i_left.i, align 8
  %sub.ptr.sub.tr.i.i96 = trunc i64 %sub.ptr.sub.i.i94 to i32
  %41 = shl i32 %sub.ptr.sub.tr.i.i96, 3
  %reass.sub190 = sub i32 %41, %40
  %conv1.i.i98 = add i32 %reass.sub190, 64
  %div.i99 = sdiv i32 %conv1.i.i98, 8
  %idxprom5.i100 = sext i32 %div.i99 to i64
  %arrayidx6.i101 = getelementptr inbounds i8, ptr %37, i64 %idxprom5.i100
  %p_payload.i102 = getelementptr inbounds i8, ptr %arrayidx.i88, i64 16
  %42 = load ptr, ptr %p_payload.i102, align 8
  %sub.ptr.lhs.cast.i103 = ptrtoint ptr %arrayidx6.i101 to i64
  %sub.ptr.rhs.cast.i104 = ptrtoint ptr %42 to i64
  %sub.ptr.sub.i105 = sub i64 %sub.ptr.lhs.cast.i103, %sub.ptr.rhs.cast.i104
  %conv.i106 = trunc i64 %sub.ptr.sub.i105 to i32
  %i_payload.i107 = getelementptr inbounds i8, ptr %arrayidx.i88, i64 8
  store i32 %conv.i106, ptr %i_payload.i107, align 8
  %43 = load i32, ptr %out, align 16
  %inc.i108 = add nsw i32 %43, 1
  store i32 %inc.i108, ptr %out, align 16
  %44 = load i32, ptr %i_nals_allocated.i.i, align 4
  %cmp.not.i.i110 = icmp slt i32 %inc.i108, %44
  br i1 %cmp.not.i.i110, label %if.end.if.end11_crit_edge, label %if.then.i.i111

if.end.if.end11_crit_edge:                        ; preds = %if.end
  %.pre194 = load ptr, ptr %nal1.i, align 8
  br label %if.end11

if.then.i.i111:                                   ; preds = %if.end
  %mul4.i.i112 = mul i32 %44, 48
  %call.i.i113 = tail call ptr @x264_malloc(i32 noundef %mul4.i.i112) #17
  %tobool.not.i.i114 = icmp eq ptr %call.i.i113, null
  br i1 %tobool.not.i.i114, label %cleanup, label %cleanup.thread.i.i115

cleanup.thread.i.i115:                            ; preds = %if.then.i.i111
  %45 = load ptr, ptr %nal1.i, align 8
  %46 = load i32, ptr %i_nals_allocated.i.i, align 4
  %conv10.i.i116 = sext i32 %46 to i64
  %mul11.i.i117 = mul nsw i64 %conv10.i.i116, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call.i.i113, ptr align 8 %45, i64 %mul11.i.i117, i1 false)
  %47 = load ptr, ptr %nal1.i, align 8
  tail call void @x264_free(ptr noundef %47) #17
  store ptr %call.i.i113, ptr %nal1.i, align 8
  %48 = load i32, ptr %i_nals_allocated.i.i, align 4
  %mul18.i.i118 = shl nsw i32 %48, 1
  store i32 %mul18.i.i118, ptr %i_nals_allocated.i.i, align 4
  %.pre195 = load i32, ptr %out, align 16
  br label %if.end11

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %cleanup.thread.i.i115
  %49 = phi i32 [ %inc.i108, %if.end.if.end11_crit_edge ], [ %.pre195, %cleanup.thread.i.i115 ]
  %50 = phi ptr [ %.pre194, %if.end.if.end11_crit_edge ], [ %call.i.i113, %cleanup.thread.i.i115 ]
  %idxprom.i123 = sext i32 %49 to i64
  %arrayidx.i124 = getelementptr inbounds %struct.x264_nal_t, ptr %50, i64 %idxprom.i123
  store i32 0, ptr %arrayidx.i124, align 8
  %i_type4.i125 = getelementptr inbounds i8, ptr %arrayidx.i124, i64 4
  store i32 6, ptr %i_type4.i125, align 4
  %i_payload.i126 = getelementptr inbounds i8, ptr %arrayidx.i124, i64 8
  store i32 0, ptr %i_payload.i126, align 8
  %51 = load ptr, ptr %p_bitstream, align 8
  %52 = load ptr, ptr %p.i, align 8
  %53 = load ptr, ptr %bs, align 8
  %sub.ptr.lhs.cast.i.i130 = ptrtoint ptr %52 to i64
  %sub.ptr.rhs.cast.i.i131 = ptrtoint ptr %53 to i64
  %sub.ptr.sub.i.i132 = sub i64 %sub.ptr.lhs.cast.i.i130, %sub.ptr.rhs.cast.i.i131
  %54 = load i32, ptr %i_left.i, align 8
  %sub.ptr.sub.tr.i.i134 = trunc i64 %sub.ptr.sub.i.i132 to i32
  %55 = shl i32 %sub.ptr.sub.tr.i.i134, 3
  %reass.sub191 = sub i32 %55, %54
  %conv1.i.i136 = add i32 %reass.sub191, 64
  %div.i137 = sdiv i32 %conv1.i.i136, 8
  %idxprom7.i138 = sext i32 %div.i137 to i64
  %arrayidx8.i139 = getelementptr inbounds i8, ptr %51, i64 %idxprom7.i138
  %p_payload.i140 = getelementptr inbounds i8, ptr %arrayidx.i124, i64 16
  store ptr %arrayidx8.i139, ptr %p_payload.i140, align 8
  %call14 = tail call i32 @x264_sei_version_write(ptr noundef nonnull %h, ptr noundef nonnull %bs) #17
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end11
  %56 = load ptr, ptr %nal1.i, align 8
  %57 = load i32, ptr %out, align 16
  %idxprom.i143 = sext i32 %57 to i64
  %arrayidx.i144 = getelementptr inbounds %struct.x264_nal_t, ptr %56, i64 %idxprom.i143
  %58 = load ptr, ptr %p_bitstream, align 8
  %59 = load ptr, ptr %p.i, align 8
  %60 = load ptr, ptr %bs, align 8
  %sub.ptr.lhs.cast.i.i148 = ptrtoint ptr %59 to i64
  %sub.ptr.rhs.cast.i.i149 = ptrtoint ptr %60 to i64
  %sub.ptr.sub.i.i150 = sub i64 %sub.ptr.lhs.cast.i.i148, %sub.ptr.rhs.cast.i.i149
  %61 = load i32, ptr %i_left.i, align 8
  %sub.ptr.sub.tr.i.i152 = trunc i64 %sub.ptr.sub.i.i150 to i32
  %62 = shl i32 %sub.ptr.sub.tr.i.i152, 3
  %reass.sub192 = sub i32 %62, %61
  %conv1.i.i154 = add i32 %reass.sub192, 64
  %div.i155 = sdiv i32 %conv1.i.i154, 8
  %idxprom5.i156 = sext i32 %div.i155 to i64
  %arrayidx6.i157 = getelementptr inbounds i8, ptr %58, i64 %idxprom5.i156
  %p_payload.i158 = getelementptr inbounds i8, ptr %arrayidx.i144, i64 16
  %63 = load ptr, ptr %p_payload.i158, align 8
  %sub.ptr.lhs.cast.i159 = ptrtoint ptr %arrayidx6.i157 to i64
  %sub.ptr.rhs.cast.i160 = ptrtoint ptr %63 to i64
  %sub.ptr.sub.i161 = sub i64 %sub.ptr.lhs.cast.i159, %sub.ptr.rhs.cast.i160
  %conv.i162 = trunc i64 %sub.ptr.sub.i161 to i32
  %i_payload.i163 = getelementptr inbounds i8, ptr %arrayidx.i144, i64 8
  store i32 %conv.i162, ptr %i_payload.i163, align 8
  %64 = load i32, ptr %out, align 16
  %inc.i164 = add nsw i32 %64, 1
  store i32 %inc.i164, ptr %out, align 16
  %65 = load i32, ptr %i_nals_allocated.i.i, align 4
  %cmp.not.i.i166 = icmp slt i32 %inc.i164, %65
  br i1 %cmp.not.i.i166, label %if.end21, label %if.then.i.i167

if.then.i.i167:                                   ; preds = %if.end17
  %mul4.i.i168 = mul i32 %65, 48
  %call.i.i169 = tail call ptr @x264_malloc(i32 noundef %mul4.i.i168) #17
  %tobool.not.i.i170 = icmp eq ptr %call.i.i169, null
  br i1 %tobool.not.i.i170, label %cleanup, label %cleanup.thread.i.i171

cleanup.thread.i.i171:                            ; preds = %if.then.i.i167
  %66 = load ptr, ptr %nal1.i, align 8
  %67 = load i32, ptr %i_nals_allocated.i.i, align 4
  %conv10.i.i172 = sext i32 %67 to i64
  %mul11.i.i173 = mul nsw i64 %conv10.i.i172, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call.i.i169, ptr align 8 %66, i64 %mul11.i.i173, i1 false)
  %68 = load ptr, ptr %nal1.i, align 8
  tail call void @x264_free(ptr noundef %68) #17
  store ptr %call.i.i169, ptr %nal1.i, align 8
  %69 = load i32, ptr %i_nals_allocated.i.i, align 4
  %mul18.i.i174 = shl nsw i32 %69, 1
  store i32 %mul18.i.i174, ptr %i_nals_allocated.i.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %cleanup.thread.i.i171, %if.end17
  %call22 = tail call fastcc i32 @x264_encoder_encapsulate_nals(ptr noundef nonnull %h, i32 noundef 0)
  %70 = load i32, ptr %out, align 16
  store i32 %70, ptr %pi_nal, align 4
  %71 = load ptr, ptr %nal1.i, align 8
  store ptr %71, ptr %pp_nal, align 8
  store i32 0, ptr %out, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i167, %if.then.i.i111, %if.then.i.i, %if.end11, %if.end21
  %retval.0 = phi i32 [ %call22, %if.end21 ], [ -1, %if.end11 ], [ -1, %if.then.i.i ], [ -1, %if.then.i.i111 ], [ -1, %if.then.i.i167 ]
  ret i32 %retval.0
}

declare void @x264_sps_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @x264_nal_end(ptr nocapture noundef %h) unnamed_addr #0 {
entry:
  %out = getelementptr inbounds i8, ptr %h, i64 1760
  %nal1 = getelementptr inbounds i8, ptr %h, i64 1768
  %0 = load ptr, ptr %nal1, align 8
  %1 = load i32, ptr %out, align 16
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %idxprom
  %p_bitstream = getelementptr inbounds i8, ptr %h, i64 1784
  %2 = load ptr, ptr %p_bitstream, align 8
  %bs = getelementptr inbounds i8, ptr %h, i64 1792
  %p.i = getelementptr inbounds i8, ptr %h, i64 1800
  %3 = load ptr, ptr %p.i, align 8
  %4 = load ptr, ptr %bs, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %i_left.i = getelementptr inbounds i8, ptr %h, i64 1824
  %5 = load i32, ptr %i_left.i, align 8
  %sub.ptr.sub.tr.i = trunc i64 %sub.ptr.sub.i to i32
  %6 = shl i32 %sub.ptr.sub.tr.i, 3
  %reass.sub = sub i32 %6, %5
  %conv1.i = add i32 %reass.sub, 64
  %div = sdiv i32 %conv1.i, 8
  %idxprom5 = sext i32 %div to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %2, i64 %idxprom5
  %p_payload = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %7 = load ptr, ptr %p_payload, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx6 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %i_payload = getelementptr inbounds i8, ptr %arrayidx, i64 8
  store i32 %conv, ptr %i_payload, align 8
  %8 = load i32, ptr %out, align 16
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %out, align 16
  %i_nals_allocated.i = getelementptr inbounds i8, ptr %h, i64 1764
  %9 = load i32, ptr %i_nals_allocated.i, align 4
  %cmp.not.i = icmp slt i32 %inc, %9
  br i1 %cmp.not.i, label %x264_nal_check_buffer.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %mul4.i = mul i32 %9, 48
  %call.i = tail call ptr @x264_malloc(i32 noundef %mul4.i) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %x264_nal_check_buffer.exit, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i
  %10 = load ptr, ptr %nal1, align 8
  %11 = load i32, ptr %i_nals_allocated.i, align 4
  %conv10.i = sext i32 %11 to i64
  %mul11.i = mul nsw i64 %conv10.i, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call.i, ptr align 8 %10, i64 %mul11.i, i1 false)
  %12 = load ptr, ptr %nal1, align 8
  tail call void @x264_free(ptr noundef %12) #17
  store ptr %call.i, ptr %nal1, align 8
  %13 = load i32, ptr %i_nals_allocated.i, align 4
  %mul18.i = shl nsw i32 %13, 1
  store i32 %mul18.i, ptr %i_nals_allocated.i, align 4
  br label %x264_nal_check_buffer.exit

x264_nal_check_buffer.exit:                       ; preds = %entry, %if.then.i, %cleanup.thread.i
  %retval.1.i = phi i32 [ -1, %if.then.i ], [ 0, %cleanup.thread.i ], [ 0, %entry ]
  ret i32 %retval.1.i
}

declare void @x264_pps_write(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @x264_sei_version_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @x264_encoder_encapsulate_nals(ptr nocapture noundef %h, i32 noundef %start) unnamed_addr #0 {
entry:
  %cmp127 = icmp sgt i32 %start, 0
  br i1 %cmp127, label %for.body.lr.ph, label %for.cond2.preheader

for.body.lr.ph:                                   ; preds = %entry
  %nal = getelementptr inbounds i8, ptr %h, i64 1768
  %0 = load ptr, ptr %nal, align 8
  %wide.trip.count = zext nneg i32 %start to i64
  %min.iters.check = icmp ult i32 %start, 17
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

for.body.preheader:                               ; preds = %middle.block, %for.body.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %previous_nal_size.0129.ph = phi i32 [ 0, %for.body.lr.ph ], [ %71, %middle.block ]
  br label %for.body

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.mod.vf = and i64 %wide.trip.count, 15
  %1 = icmp eq i64 %n.mod.vf, 0
  %2 = select i1 %1, i64 16, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %66, %vector.body ]
  %vec.phi151 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %67, %vector.body ]
  %vec.phi152 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %68, %vector.body ]
  %vec.phi153 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %69, %vector.body ]
  %3 = or disjoint i64 %index, 1
  %4 = or disjoint i64 %index, 2
  %5 = or disjoint i64 %index, 3
  %6 = or disjoint i64 %index, 4
  %7 = or disjoint i64 %index, 5
  %8 = or disjoint i64 %index, 6
  %9 = or disjoint i64 %index, 7
  %10 = or disjoint i64 %index, 8
  %11 = or disjoint i64 %index, 9
  %12 = or disjoint i64 %index, 10
  %13 = or disjoint i64 %index, 11
  %14 = or disjoint i64 %index, 12
  %15 = or disjoint i64 %index, 13
  %16 = or disjoint i64 %index, 14
  %17 = or disjoint i64 %index, 15
  %18 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %index, i32 2
  %19 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %3, i32 2
  %20 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %4, i32 2
  %21 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %5, i32 2
  %22 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %6, i32 2
  %23 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %7, i32 2
  %24 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %8, i32 2
  %25 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %9, i32 2
  %26 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %10, i32 2
  %27 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %11, i32 2
  %28 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %12, i32 2
  %29 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %13, i32 2
  %30 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %14, i32 2
  %31 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %15, i32 2
  %32 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %16, i32 2
  %33 = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %17, i32 2
  %34 = load i32, ptr %18, align 8
  %35 = load i32, ptr %19, align 8
  %36 = load i32, ptr %20, align 8
  %37 = load i32, ptr %21, align 8
  %38 = insertelement <4 x i32> poison, i32 %34, i64 0
  %39 = insertelement <4 x i32> %38, i32 %35, i64 1
  %40 = insertelement <4 x i32> %39, i32 %36, i64 2
  %41 = insertelement <4 x i32> %40, i32 %37, i64 3
  %42 = load i32, ptr %22, align 8
  %43 = load i32, ptr %23, align 8
  %44 = load i32, ptr %24, align 8
  %45 = load i32, ptr %25, align 8
  %46 = insertelement <4 x i32> poison, i32 %42, i64 0
  %47 = insertelement <4 x i32> %46, i32 %43, i64 1
  %48 = insertelement <4 x i32> %47, i32 %44, i64 2
  %49 = insertelement <4 x i32> %48, i32 %45, i64 3
  %50 = load i32, ptr %26, align 8
  %51 = load i32, ptr %27, align 8
  %52 = load i32, ptr %28, align 8
  %53 = load i32, ptr %29, align 8
  %54 = insertelement <4 x i32> poison, i32 %50, i64 0
  %55 = insertelement <4 x i32> %54, i32 %51, i64 1
  %56 = insertelement <4 x i32> %55, i32 %52, i64 2
  %57 = insertelement <4 x i32> %56, i32 %53, i64 3
  %58 = load i32, ptr %30, align 8
  %59 = load i32, ptr %31, align 8
  %60 = load i32, ptr %32, align 8
  %61 = load i32, ptr %33, align 8
  %62 = insertelement <4 x i32> poison, i32 %58, i64 0
  %63 = insertelement <4 x i32> %62, i32 %59, i64 1
  %64 = insertelement <4 x i32> %63, i32 %60, i64 2
  %65 = insertelement <4 x i32> %64, i32 %61, i64 3
  %66 = add <4 x i32> %41, %vec.phi
  %67 = add <4 x i32> %49, %vec.phi151
  %68 = add <4 x i32> %57, %vec.phi152
  %69 = add <4 x i32> %65, %vec.phi153
  %index.next = add nuw i64 %index, 16
  %70 = icmp eq i64 %index.next, %n.vec
  br i1 %70, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %67, %66
  %bin.rdx154 = add <4 x i32> %68, %bin.rdx
  %bin.rdx155 = add <4 x i32> %69, %bin.rdx154
  %71 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx155)
  br label %for.body.preheader

for.cond2.preheader:                              ; preds = %for.body, %entry
  %previous_nal_size.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %out3 = getelementptr inbounds i8, ptr %h, i64 1760
  %72 = load i32, ptr %out3, align 16
  %cmp4130 = icmp sgt i32 %72, %start
  br i1 %cmp4130, label %for.body6.lr.ph, label %for.cond.cleanup5

for.body6.lr.ph:                                  ; preds = %for.cond2.preheader
  %nal8 = getelementptr inbounds i8, ptr %h, i64 1768
  %73 = load ptr, ptr %nal8, align 8
  %74 = sext i32 %start to i64
  %wide.trip.count143 = sext i32 %72 to i64
  %75 = sub nsw i64 %wide.trip.count143, %74
  %min.iters.check158 = icmp ult i64 %75, 17
  br i1 %min.iters.check158, label %for.body6.preheader, label %vector.ph159

for.body6.preheader:                              ; preds = %middle.block156, %for.body6.lr.ph
  %indvars.iv140.ph = phi i64 [ %74, %for.body6.lr.ph ], [ %ind.end, %middle.block156 ]
  %nal_size.0132.ph = phi i32 [ 0, %for.body6.lr.ph ], [ %146, %middle.block156 ]
  br label %for.body6

vector.ph159:                                     ; preds = %for.body6.lr.ph
  %n.mod.vf160 = and i64 %75, 15
  %76 = icmp eq i64 %n.mod.vf160, 0
  %77 = select i1 %76, i64 16, i64 %n.mod.vf160
  %n.vec161 = sub nsw i64 %75, %77
  %ind.end = add nsw i64 %n.vec161, %74
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph159
  %index164 = phi i64 [ 0, %vector.ph159 ], [ %index.next169, %vector.body163 ]
  %vec.phi165 = phi <4 x i32> [ zeroinitializer, %vector.ph159 ], [ %141, %vector.body163 ]
  %vec.phi166 = phi <4 x i32> [ zeroinitializer, %vector.ph159 ], [ %142, %vector.body163 ]
  %vec.phi167 = phi <4 x i32> [ zeroinitializer, %vector.ph159 ], [ %143, %vector.body163 ]
  %vec.phi168 = phi <4 x i32> [ zeroinitializer, %vector.ph159 ], [ %144, %vector.body163 ]
  %offset.idx = add i64 %index164, %74
  %78 = add i64 %offset.idx, 1
  %79 = add i64 %offset.idx, 2
  %80 = add i64 %offset.idx, 3
  %81 = add i64 %offset.idx, 4
  %82 = add i64 %offset.idx, 5
  %83 = add i64 %offset.idx, 6
  %84 = add i64 %offset.idx, 7
  %85 = add i64 %offset.idx, 8
  %86 = add i64 %offset.idx, 9
  %87 = add i64 %offset.idx, 10
  %88 = add i64 %offset.idx, 11
  %89 = add i64 %offset.idx, 12
  %90 = add i64 %offset.idx, 13
  %91 = add i64 %offset.idx, 14
  %92 = add i64 %offset.idx, 15
  %93 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %offset.idx, i32 2
  %94 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %78, i32 2
  %95 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %79, i32 2
  %96 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %80, i32 2
  %97 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %81, i32 2
  %98 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %82, i32 2
  %99 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %83, i32 2
  %100 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %84, i32 2
  %101 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %85, i32 2
  %102 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %86, i32 2
  %103 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %87, i32 2
  %104 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %88, i32 2
  %105 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %89, i32 2
  %106 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %90, i32 2
  %107 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %91, i32 2
  %108 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %92, i32 2
  %109 = load i32, ptr %93, align 8
  %110 = load i32, ptr %94, align 8
  %111 = load i32, ptr %95, align 8
  %112 = load i32, ptr %96, align 8
  %113 = insertelement <4 x i32> poison, i32 %109, i64 0
  %114 = insertelement <4 x i32> %113, i32 %110, i64 1
  %115 = insertelement <4 x i32> %114, i32 %111, i64 2
  %116 = insertelement <4 x i32> %115, i32 %112, i64 3
  %117 = load i32, ptr %97, align 8
  %118 = load i32, ptr %98, align 8
  %119 = load i32, ptr %99, align 8
  %120 = load i32, ptr %100, align 8
  %121 = insertelement <4 x i32> poison, i32 %117, i64 0
  %122 = insertelement <4 x i32> %121, i32 %118, i64 1
  %123 = insertelement <4 x i32> %122, i32 %119, i64 2
  %124 = insertelement <4 x i32> %123, i32 %120, i64 3
  %125 = load i32, ptr %101, align 8
  %126 = load i32, ptr %102, align 8
  %127 = load i32, ptr %103, align 8
  %128 = load i32, ptr %104, align 8
  %129 = insertelement <4 x i32> poison, i32 %125, i64 0
  %130 = insertelement <4 x i32> %129, i32 %126, i64 1
  %131 = insertelement <4 x i32> %130, i32 %127, i64 2
  %132 = insertelement <4 x i32> %131, i32 %128, i64 3
  %133 = load i32, ptr %105, align 8
  %134 = load i32, ptr %106, align 8
  %135 = load i32, ptr %107, align 8
  %136 = load i32, ptr %108, align 8
  %137 = insertelement <4 x i32> poison, i32 %133, i64 0
  %138 = insertelement <4 x i32> %137, i32 %134, i64 1
  %139 = insertelement <4 x i32> %138, i32 %135, i64 2
  %140 = insertelement <4 x i32> %139, i32 %136, i64 3
  %141 = add <4 x i32> %116, %vec.phi165
  %142 = add <4 x i32> %124, %vec.phi166
  %143 = add <4 x i32> %132, %vec.phi167
  %144 = add <4 x i32> %140, %vec.phi168
  %index.next169 = add nuw i64 %index164, 16
  %145 = icmp eq i64 %index.next169, %n.vec161
  br i1 %145, label %middle.block156, label %vector.body163, !llvm.loop !11

middle.block156:                                  ; preds = %vector.body163
  %bin.rdx170 = add <4 x i32> %142, %141
  %bin.rdx171 = add <4 x i32> %143, %bin.rdx170
  %bin.rdx172 = add <4 x i32> %144, %bin.rdx171
  %146 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx172)
  br label %for.body6.preheader

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %previous_nal_size.0129 = phi i32 [ %add, %for.body ], [ %previous_nal_size.0129.ph, %for.body.preheader ]
  %i_payload = getelementptr inbounds %struct.x264_nal_t, ptr %0, i64 %indvars.iv, i32 2
  %147 = load i32, ptr %i_payload, align 8
  %add = add nsw i32 %147, %previous_nal_size.0129
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond2.preheader, label %for.body, !llvm.loop !12

for.cond.cleanup5:                                ; preds = %for.body6, %for.cond2.preheader
  %nal_size.0.lcssa = phi i32 [ 0, %for.cond2.preheader ], [ %add12, %for.body6 ]
  %nal_buffer_size = getelementptr inbounds i8, ptr %h, i64 1840
  %148 = load i32, ptr %nal_buffer_size, align 16
  %mul = mul nsw i32 %nal_size.0.lcssa, 3
  %div = sdiv i32 %mul, 2
  %mul18 = shl nsw i32 %72, 2
  %add19 = add nsw i32 %div, %mul18
  %cmp20 = icmp slt i32 %148, %add19
  br i1 %cmp20, label %if.then, label %for.cond.cleanup5.if.end32_crit_edge

for.cond.cleanup5.if.end32_crit_edge:             ; preds = %for.cond.cleanup5
  %nal_buffer34.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 1832
  %.pre = load ptr, ptr %nal_buffer34.phi.trans.insert, align 8
  br label %if.end32

for.body6:                                        ; preds = %for.body6.preheader, %for.body6
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %for.body6 ], [ %indvars.iv140.ph, %for.body6.preheader ]
  %nal_size.0132 = phi i32 [ %add12, %for.body6 ], [ %nal_size.0132.ph, %for.body6.preheader ]
  %i_payload11 = getelementptr inbounds %struct.x264_nal_t, ptr %73, i64 %indvars.iv140, i32 2
  %149 = load i32, ptr %i_payload11, align 8
  %add12 = add nsw i32 %149, %nal_size.0132
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, 1
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %for.cond.cleanup5, label %for.body6, !llvm.loop !13

if.then:                                          ; preds = %for.cond.cleanup5
  %mul21 = shl nsw i32 %nal_size.0.lcssa, 1
  %add25 = add nsw i32 %mul18, %mul21
  %call = tail call ptr @x264_malloc(i32 noundef %add25) #17
  %tobool.not.not = icmp eq ptr %call, null
  br i1 %tobool.not.not, label %cleanup82, label %if.end

if.end:                                           ; preds = %if.then
  %tobool27.not = icmp eq i32 %previous_nal_size.0.lcssa, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end
  %nal_buffer = getelementptr inbounds i8, ptr %h, i64 1832
  %150 = load ptr, ptr %nal_buffer, align 8
  %conv = sext i32 %previous_nal_size.0.lcssa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call, ptr align 1 %150, i64 %conv, i1 false)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end
  %nal_buffer30 = getelementptr inbounds i8, ptr %h, i64 1832
  %151 = load ptr, ptr %nal_buffer30, align 8
  tail call void @x264_free(ptr noundef %151) #17
  store ptr %call, ptr %nal_buffer30, align 8
  %.pre148 = load i32, ptr %out3, align 16
  br label %if.end32

if.end32:                                         ; preds = %for.cond.cleanup5.if.end32_crit_edge, %if.end29
  %152 = phi i32 [ %72, %for.cond.cleanup5.if.end32_crit_edge ], [ %.pre148, %if.end29 ]
  %153 = phi ptr [ %.pre, %for.cond.cleanup5.if.end32_crit_edge ], [ %call, %if.end29 ]
  %nal_buffer34 = getelementptr inbounds i8, ptr %h, i64 1832
  %idx.ext = sext i32 %previous_nal_size.0.lcssa to i64
  %add.ptr = getelementptr inbounds i8, ptr %153, i64 %idx.ext
  %cmp39135 = icmp sgt i32 %152, %start
  br i1 %cmp39135, label %for.body42.lr.ph, label %for.cond.cleanup41

for.body42.lr.ph:                                 ; preds = %if.end32
  %nal45 = getelementptr inbounds i8, ptr %h, i64 1768
  %b_annexb = getelementptr inbounds i8, ptr %h, i64 640
  %154 = sext i32 %start to i64
  br label %for.body42

for.cond.cleanup41.loopexit:                      ; preds = %lor.end
  %.pre150 = load ptr, ptr %nal_buffer34, align 8
  br label %for.cond.cleanup41

for.cond.cleanup41:                               ; preds = %for.cond.cleanup41.loopexit, %if.end32
  %155 = phi ptr [ %153, %if.end32 ], [ %.pre150, %for.cond.cleanup41.loopexit ]
  %nal_buffer33.0.lcssa = phi ptr [ %add.ptr, %if.end32 ], [ %add.ptr72, %for.cond.cleanup41.loopexit ]
  %add.ptr79 = getelementptr inbounds i8, ptr %155, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint ptr %nal_buffer33.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr79 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv80 = trunc i64 %sub.ptr.sub to i32
  br label %cleanup82

for.body42:                                       ; preds = %for.body42.lr.ph, %lor.end
  %indvars.iv145 = phi i64 [ %154, %for.body42.lr.ph ], [ %indvars.iv.next146, %lor.end ]
  %nal_buffer33.0136 = phi ptr [ %add.ptr, %for.body42.lr.ph ], [ %add.ptr72, %lor.end ]
  %156 = icmp eq i64 %indvars.iv145, 0
  %.pre149 = load ptr, ptr %nal45, align 8
  br i1 %156, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body42
  %i_type = getelementptr inbounds %struct.x264_nal_t, ptr %.pre149, i64 %indvars.iv145, i32 1
  %157 = load i32, ptr %i_type, align 4
  %158 = add i32 %157, -7
  %spec.select = icmp ult i32 %158, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false, %for.body42
  %159 = phi i1 [ true, %for.body42 ], [ %spec.select, %lor.lhs.false ]
  %lor.ext = zext i1 %159 to i32
  %arrayidx60 = getelementptr inbounds %struct.x264_nal_t, ptr %.pre149, i64 %indvars.iv145
  %160 = load i32, ptr %b_annexb, align 16
  %call61 = tail call i32 @x264_nal_encode(ptr noundef %nal_buffer33.0136, ptr noundef %arrayidx60, i32 noundef %160, i32 noundef %lor.ext) #17
  %161 = load ptr, ptr %nal45, align 8
  %i_payload66 = getelementptr inbounds %struct.x264_nal_t, ptr %161, i64 %indvars.iv145, i32 2
  store i32 %call61, ptr %i_payload66, align 8
  %162 = load ptr, ptr %nal45, align 8
  %p_payload = getelementptr inbounds %struct.x264_nal_t, ptr %162, i64 %indvars.iv145, i32 3
  store ptr %nal_buffer33.0136, ptr %p_payload, align 8
  %idx.ext71 = sext i32 %call61 to i64
  %add.ptr72 = getelementptr inbounds i8, ptr %nal_buffer33.0136, i64 %idx.ext71
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1
  %163 = load i32, ptr %out3, align 16
  %164 = sext i32 %163 to i64
  %cmp39 = icmp slt i64 %indvars.iv.next146, %164
  br i1 %cmp39, label %for.body42, label %for.cond.cleanup41.loopexit

cleanup82:                                        ; preds = %if.then, %for.cond.cleanup41
  %retval.1 = phi i32 [ %conv80, %for.cond.cleanup41 ], [ -1, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @x264_weighted_reference_duplicate(ptr noundef %h, i32 noundef %i_ref, ptr nocapture noundef readonly %w) local_unnamed_addr #0 {
entry:
  %i_ref0 = getelementptr inbounds i8, ptr %h, i64 14696
  %0 = load i32, ptr %i_ref0, align 8
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call ptr @x264_frame_pop_blank_unused(ptr noundef nonnull %h) #17
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  %idxprom = sext i32 %i_ref to i64
  %arrayidx = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %call, ptr noundef nonnull align 16 dereferenceable(15632) %1, i64 15632, i1 false)
  %i_reference_count = getelementptr inbounds i8, ptr %call, i64 15600
  store i32 1, ptr %i_reference_count, align 16
  %2 = load ptr, ptr %arrayidx, align 8
  %orig = getelementptr inbounds i8, ptr %call, i64 3528
  store ptr %2, ptr %orig, align 8
  %b_duplicate = getelementptr inbounds i8, ptr %call, i64 3520
  store i32 1, ptr %b_duplicate, align 16
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %3 = load ptr, ptr %fenc, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %3, i64 512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %arrayidx5, ptr noundef nonnull align 16 dereferenceable(192) %w, i64 192, i1 false)
  %b_ref_reorder = getelementptr inbounds i8, ptr %h, i64 15016
  store i32 1, ptr %b_ref_reorder, align 8
  %4 = load i32, ptr %i_ref0, align 8
  %cmp8 = icmp slt i32 %4, 16
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i_ref0, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %arrayidx13 = getelementptr inbounds i8, ptr %h, i64 14824
  store ptr null, ptr %arrayidx13, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %h, i64 14712
  tail call void @x264_frame_unshift(ptr noundef nonnull %arrayidx16, ptr noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ -1, %entry ]
  ret i32 %retval.0
}

declare ptr @x264_frame_pop_blank_unused(ptr noundef) local_unnamed_addr #2

declare void @x264_frame_unshift(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_encoder_intra_refresh(ptr nocapture noundef readonly %h) local_unnamed_addr #9 {
entry:
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %i_thread_phase = getelementptr inbounds i8, ptr %h, i64 1744
  %0 = load i32, ptr %i_thread_phase, align 16
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  %b_queued_intra_refresh = getelementptr inbounds i8, ptr %1, i64 1892
  store i32 1, ptr %b_queued_intra_refresh, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_encoder_encode(ptr noundef %h, ptr nocapture noundef writeonly %pp_nal, ptr nocapture noundef writeonly %pi_nal, ptr noundef %pic_in, ptr nocapture noundef %pic_out) local_unnamed_addr #0 {
entry:
  %w.i = alloca [3 x %struct.x264_weight_t], align 16
  %w287.i = alloca [3 x %struct.x264_weight_t], align 16
  %i_thread_frames = getelementptr inbounds i8, ptr %h, i64 1852
  %0 = load i32, ptr %i_thread_frames, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %i_thread_phase = getelementptr inbounds i8, ptr %h, i64 1744
  %1 = load i32, ptr %i_thread_phase, align 16
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %add = add nsw i32 %1, 1
  %rem = srem i32 %add, %0
  store i32 %rem, ptr %i_thread_phase, align 16
  %idxprom6 = sext i32 %rem to i64
  %arrayidx7 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom6
  %3 = load ptr, ptr %arrayidx7, align 8
  %add10 = add nsw i32 %rem, 1
  %rem12 = srem i32 %add10, %0
  %idxprom13 = sext i32 %rem12 to i64
  %arrayidx14 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom13
  %4 = load ptr, ptr %arrayidx14, align 8
  %cmp.i = icmp eq ptr %3, %2
  br i1 %cmp.i, label %x264_thread_sync_context.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %reference.i = getelementptr inbounds i8, ptr %2, i64 14448
  %5 = load ptr, ptr %reference.i, align 8
  %tobool.not35.i = icmp eq ptr %5, null
  br i1 %tobool.not35.i, label %for.cond.cleanup.i, label %for.body.i

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.end.i
  %reference3.i = getelementptr inbounds i8, ptr %3, i64 14448
  %6 = load ptr, ptr %reference3.i, align 8
  %tobool6.not37.i = icmp eq ptr %6, null
  br i1 %tobool6.not37.i, label %for.cond.cleanup7.i, label %for.body8.i

for.body.i:                                       ; preds = %if.end.i, %for.body.i
  %7 = phi ptr [ %9, %for.body.i ], [ %5, %if.end.i ]
  %f.036.i = phi ptr [ %incdec.ptr.i, %for.body.i ], [ %reference.i, %if.end.i ]
  %i_reference_count.i = getelementptr inbounds i8, ptr %7, i64 15600
  %8 = load i32, ptr %i_reference_count.i, align 16
  %inc.i = add nsw i32 %8, 1
  store i32 %inc.i, ptr %i_reference_count.i, align 16
  %incdec.ptr.i = getelementptr inbounds i8, ptr %f.036.i, i64 8
  %9 = load ptr, ptr %incdec.ptr.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.cond.cleanup.i, label %for.body.i

for.cond.cleanup7.i:                              ; preds = %for.body8.i, %for.cond.cleanup.i
  %fdec.i = getelementptr inbounds i8, ptr %2, i64 14688
  %10 = load ptr, ptr %fdec.i, align 16
  %i_reference_count12.i = getelementptr inbounds i8, ptr %10, i64 15600
  %11 = load i32, ptr %i_reference_count12.i, align 16
  %inc13.i = add nsw i32 %11, 1
  store i32 %inc13.i, ptr %i_reference_count12.i, align 16
  %fdec14.i = getelementptr inbounds i8, ptr %3, i64 14688
  %12 = load ptr, ptr %fdec14.i, align 16
  tail call void @x264_frame_push_unused(ptr noundef %2, ptr noundef %12) #17
  %i_frame.i = getelementptr inbounds i8, ptr %3, i64 1844
  %i_frame15.i = getelementptr inbounds i8, ptr %2, i64 1844
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14772) %i_frame.i, ptr noundef nonnull align 4 dereferenceable(14772) %i_frame15.i, i64 14772, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %3, ptr noundef nonnull align 16 dereferenceable(704) %2, i64 704, i1 false)
  %stat.i = getelementptr inbounds i8, ptr %3, i64 26712
  %stat17.i = getelementptr inbounds i8, ptr %2, i64 26712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3688) %stat.i, ptr noundef nonnull align 8 dereferenceable(3688) %stat17.i, i64 3688, i1 false)
  br label %x264_thread_sync_context.exit

for.body8.i:                                      ; preds = %for.cond.cleanup.i, %for.body8.i
  %13 = phi ptr [ %14, %for.body8.i ], [ %6, %for.cond.cleanup.i ]
  %f1.038.i = phi ptr [ %incdec.ptr10.i, %for.body8.i ], [ %reference3.i, %for.cond.cleanup.i ]
  tail call void @x264_frame_push_unused(ptr noundef %2, ptr noundef nonnull %13) #17
  %incdec.ptr10.i = getelementptr inbounds i8, ptr %f1.038.i, i64 8
  %14 = load ptr, ptr %incdec.ptr10.i, align 8
  %tobool6.not.i = icmp eq ptr %14, null
  br i1 %tobool6.not.i, label %for.cond.cleanup7.i, label %for.body8.i

x264_thread_sync_context.exit:                    ; preds = %if.then, %for.cond.cleanup7.i
  tail call void @x264_thread_sync_ratecontrol(ptr noundef %3, ptr noundef %2, ptr noundef %4) #17
  br label %if.end

if.end:                                           ; preds = %entry, %x264_thread_sync_context.exit
  %thread_oldest.0 = phi ptr [ %4, %x264_thread_sync_context.exit ], [ %h, %entry ]
  %h.addr.0 = phi ptr [ %3, %x264_thread_sync_context.exit ], [ %h, %entry ]
  %fdec.i982 = getelementptr inbounds i8, ptr %h.addr.0, i64 14688
  %15 = load ptr, ptr %fdec.i982, align 16
  %b_kept_as_ref.i = getelementptr inbounds i8, ptr %15, i64 72
  %16 = load i32, ptr %b_kept_as_ref.i, align 8
  %tobool.not.i983 = icmp eq i32 %16, 0
  br i1 %tobool.not.i983, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end
  %i_mmco_command_count.i = getelementptr inbounds i8, ptr %h.addr.0, i64 13732
  %17 = load i32, ptr %i_mmco_command_count.i, align 4
  %cmp982.i = icmp sgt i32 %17, 0
  br i1 %cmp982.i, label %for.cond10.preheader.lr.ph.i, label %for.cond.cleanup.i984

for.cond10.preheader.lr.ph.i:                     ; preds = %for.cond.preheader.i
  %reference.i985 = getelementptr inbounds i8, ptr %h.addr.0, i64 14448
  %mmco.i = getelementptr inbounds i8, ptr %h.addr.0, i64 13736
  %18 = load ptr, ptr %reference.i985, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %for.cond.cleanup.i984, label %for.cond10.preheader.i

if.then.i:                                        ; preds = %if.end
  %i_thread_frames.i = getelementptr inbounds i8, ptr %h.addr.0, i64 1852
  %20 = load i32, ptr %i_thread_frames.i, align 4
  %cmp.i986 = icmp sgt i32 %20, 1
  br i1 %cmp.i986, label %if.then1.i, label %if.end16

if.then1.i:                                       ; preds = %if.then.i
  tail call void @x264_frame_push_unused(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %15) #17
  %call.i = tail call ptr @x264_frame_pop_unused(ptr noundef nonnull %h.addr.0, i32 noundef 1) #17
  store ptr %call.i, ptr %fdec.i982, align 16
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %cleanup675, label %if.end16

for.cond10.preheaderthread-pre-split.i:           ; preds = %for.cond.cleanup12.i
  %.pr.i = load ptr, ptr %reference.i985, align 8
  br label %for.cond10.preheader.i

for.cond10.preheader.i:                           ; preds = %for.cond10.preheader.lr.ph.i, %for.cond10.preheaderthread-pre-split.i
  %21 = phi ptr [ %.pr.i, %for.cond10.preheaderthread-pre-split.i ], [ %18, %for.cond10.preheader.lr.ph.i ]
  %22 = phi i32 [ %27, %for.cond10.preheaderthread-pre-split.i ], [ %17, %for.cond10.preheader.lr.ph.i ]
  %indvars.iv86.i = phi i64 [ %indvars.iv.next87.i, %for.cond10.preheaderthread-pre-split.i ], [ 0, %for.cond10.preheader.lr.ph.i ]
  %tobool11.not79.i = icmp eq ptr %21, null
  br i1 %tobool11.not79.i, label %for.cond.cleanup12.i, label %for.body13.lr.ph.i

for.body13.lr.ph.i:                               ; preds = %for.cond10.preheader.i
  %i_poc21.i = getelementptr inbounds [16 x %struct.anon.7], ptr %mmco.i, i64 0, i64 %indvars.iv86.i, i32 1
  br label %for.body13.i

for.cond.cleanup.loopexit84.i:                    ; preds = %for.cond.cleanup12.i
  %.pre89.i = load ptr, ptr %fdec.i982, align 16
  br label %for.cond.cleanup.i984

for.cond.cleanup.i984:                            ; preds = %for.cond.cleanup.loopexit84.i, %for.cond10.preheader.lr.ph.i, %for.cond.preheader.i
  %23 = phi ptr [ %.pre89.i, %for.cond.cleanup.loopexit84.i ], [ %15, %for.cond.preheader.i ], [ %15, %for.cond10.preheader.lr.ph.i ]
  %reference34.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14448
  tail call void @x264_frame_push(ptr noundef nonnull %reference34.i, ptr noundef %23) #17
  %sps.i = getelementptr inbounds i8, ptr %h.addr.0, i64 3200
  %24 = load ptr, ptr %sps.i, align 16
  %i_num_ref_frames.i = getelementptr inbounds i8, ptr %24, i64 1076
  %25 = load i32, ptr %i_num_ref_frames.i, align 4
  %idxprom38.i = sext i32 %25 to i64
  %arrayidx39.i = getelementptr inbounds [18 x ptr], ptr %reference34.i, i64 0, i64 %idxprom38.i
  %26 = load ptr, ptr %arrayidx39.i, align 8
  %tobool40.not.i = icmp eq ptr %26, null
  br i1 %tobool40.not.i, label %x264_reference_update.exit, label %if.then41.i

for.cond.cleanup12.loopexit.i:                    ; preds = %for.inc.i
  %.pre.i = load i32, ptr %i_mmco_command_count.i, align 4
  br label %for.cond.cleanup12.i

for.cond.cleanup12.i:                             ; preds = %for.cond.cleanup12.loopexit.i, %for.cond10.preheader.i
  %27 = phi i32 [ %.pre.i, %for.cond.cleanup12.loopexit.i ], [ %22, %for.cond10.preheader.i ]
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1
  %28 = sext i32 %27 to i64
  %cmp9.i = icmp slt i64 %indvars.iv.next87.i, %28
  br i1 %cmp9.i, label %for.cond10.preheaderthread-pre-split.i, label %for.cond.cleanup.loopexit84.i, !llvm.loop !14

for.body13.i:                                     ; preds = %for.inc.i, %for.body13.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body13.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %29 = phi ptr [ %21, %for.body13.lr.ph.i ], [ %32, %for.inc.i ]
  %arrayidx81.i = phi ptr [ %reference.i985, %for.body13.lr.ph.i ], [ %arrayidx.i, %for.inc.i ]
  %30 = load i32, ptr %29, align 16
  %31 = load i32, ptr %i_poc21.i, align 4
  %cmp22.i = icmp eq i32 %30, %31
  br i1 %cmp22.i, label %if.then23.i, label %for.inc.i

if.then23.i:                                      ; preds = %for.body13.i
  %call28.i = tail call ptr @x264_frame_shift(ptr noundef nonnull %arrayidx81.i) #17
  tail call void @x264_frame_push_unused(ptr noundef nonnull %h.addr.0, ptr noundef %call28.i) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %for.body13.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.i = getelementptr inbounds [18 x ptr], ptr %reference.i985, i64 0, i64 %indvars.iv.next.i
  %32 = load ptr, ptr %arrayidx.i, align 8
  %tobool11.not.i = icmp eq ptr %32, null
  br i1 %tobool11.not.i, label %for.cond.cleanup12.loopexit.i, label %for.body13.i

if.then41.i:                                      ; preds = %for.cond.cleanup.i984
  %call45.i = tail call ptr @x264_frame_shift(ptr noundef nonnull %reference34.i) #17
  tail call void @x264_frame_push_unused(ptr noundef nonnull %h.addr.0, ptr noundef %call45.i) #17
  br label %x264_reference_update.exit

x264_reference_update.exit:                       ; preds = %for.cond.cleanup.i984, %if.then41.i
  %call47.i = tail call ptr @x264_frame_pop_unused(ptr noundef nonnull %h.addr.0, i32 noundef 1) #17
  store ptr %call47.i, ptr %fdec.i982, align 16
  %tobool50.not.i.not = icmp eq ptr %call47.i, null
  br i1 %tobool50.not.i.not, label %cleanup675, label %if.end16

if.end16:                                         ; preds = %if.then1.i, %if.then.i, %x264_reference_update.exit
  %33 = phi ptr [ %call.i, %if.then1.i ], [ %15, %if.then.i ], [ %call47.i, %x264_reference_update.exit ]
  %i_lines_completed = getelementptr inbounds i8, ptr %33, i64 15592
  store i32 -1, ptr %i_lines_completed, align 8
  store i32 0, ptr %pi_nal, align 4
  store ptr null, ptr %pp_nal, align 8
  %cmp17.not = icmp eq ptr %pic_in, null
  br i1 %cmp17.not, label %if.else131, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call19 = tail call ptr @x264_frame_pop_unused(ptr noundef nonnull %h.addr.0, i32 noundef 0) #17
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %cleanup675, label %if.end22

if.end22:                                         ; preds = %if.then18
  %call23 = tail call i32 @x264_frame_copy_picture(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %call19, ptr noundef nonnull %pic_in) #17
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %cleanup675, label %if.end26

if.end26:                                         ; preds = %if.end22
  %i_width = getelementptr inbounds i8, ptr %h.addr.0, i64 20
  %34 = load i32, ptr %i_width, align 4
  %sps = getelementptr inbounds i8, ptr %h.addr.0, i64 3200
  %35 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %35, i64 1084
  %36 = load i32, ptr %i_mb_width, align 4
  %mul = shl nsw i32 %36, 4
  %cmp27.not = icmp eq i32 %34, %mul
  br i1 %cmp27.not, label %lor.lhs.false, label %if.then32

lor.lhs.false:                                    ; preds = %if.end26
  %i_height = getelementptr inbounds i8, ptr %h.addr.0, i64 24
  %37 = load i32, ptr %i_height, align 8
  %i_mb_height = getelementptr inbounds i8, ptr %35, i64 1088
  %38 = load i32, ptr %i_mb_height, align 4
  %mul30 = shl nsw i32 %38, 4
  %cmp31.not = icmp eq i32 %37, %mul30
  br i1 %cmp31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false, %if.end26
  tail call void @x264_frame_expand_border_mod16(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %call19) #17
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %lor.lhs.false
  %i_input = getelementptr inbounds i8, ptr %h.addr.0, i64 14596
  %39 = load i32, ptr %i_input, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i_input, align 4
  %i_frame = getelementptr inbounds i8, ptr %call19, i64 56
  store i32 %39, ptr %i_frame, align 8
  %i_bframe_delay = getelementptr inbounds i8, ptr %h.addr.0, i64 14616
  %40 = load i32, ptr %i_bframe_delay, align 8
  %tobool35.not = icmp ne i32 %40, 0
  %cmp39 = icmp eq i32 %39, %40
  %or.cond = select i1 %tobool35.not, i1 %cmp39, i1 false
  br i1 %or.cond, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end33
  %i_pts = getelementptr inbounds i8, ptr %call19, i64 16
  %41 = load i64, ptr %i_pts, align 16
  %i_bframe_delay_time = getelementptr inbounds i8, ptr %h.addr.0, i64 14624
  store i64 %41, ptr %i_bframe_delay_time, align 16
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end33
  %b_vfr_input = getelementptr inbounds i8, ptr %h.addr.0, i64 648
  %42 = load i32, ptr %b_vfr_input, align 8
  %tobool44.not = icmp eq i32 %42, 0
  br i1 %tobool44.not, label %if.end50, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.end42
  %i_pts46 = getelementptr inbounds i8, ptr %call19, i64 16
  %43 = load i64, ptr %i_pts46, align 16
  %i_largest_pts = getelementptr inbounds i8, ptr %h.addr.0, i64 14656
  %44 = load i64, ptr %i_largest_pts, align 16
  %cmp48.not = icmp sgt i64 %43, %44
  br i1 %cmp48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %land.lhs.true45
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h.addr.0, i32 noundef 1, ptr noundef nonnull @.str.23) #17
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %land.lhs.true45, %if.end42
  %i_largest_pts52 = getelementptr inbounds i8, ptr %h.addr.0, i64 14656
  %45 = load i64, ptr %i_largest_pts52, align 16
  %i_second_largest_pts = getelementptr inbounds i8, ptr %h.addr.0, i64 14664
  store i64 %45, ptr %i_second_largest_pts, align 8
  %i_pts54 = getelementptr inbounds i8, ptr %call19, i64 16
  %46 = load i64, ptr %i_pts54, align 16
  store i64 %46, ptr %i_largest_pts52, align 16
  %i_pic_struct = getelementptr inbounds i8, ptr %call19, i64 76
  %47 = load i32, ptr %i_pic_struct, align 4
  %or.cond979 = icmp ugt i32 %47, 9
  br i1 %or.cond979, label %if.end63.thread, label %if.end63

if.end63.thread:                                  ; preds = %if.end50
  store i32 0, ptr %i_pic_struct, align 4
  br label %if.then66

if.end63:                                         ; preds = %if.end50
  %cmp65 = icmp eq i32 %47, 0
  br i1 %cmp65, label %if.then66, label %if.end91

if.then66:                                        ; preds = %if.end63.thread, %if.end63
  %param67 = getelementptr inbounds i8, ptr %call19, i64 48
  %48 = load ptr, ptr %param67, align 16
  %tobool68.not = icmp eq ptr %48, null
  %h.addr.0. = select i1 %tobool68.not, ptr %h.addr.0, ptr %48
  %cond.in = getelementptr inbounds i8, ptr %h.addr.0., i64 136
  %cond = load i32, ptr %cond.in, align 8
  %tobool73.not = icmp eq i32 %cond, 0
  br i1 %tobool73.not, label %if.end90, label %if.then74

if.then74:                                        ; preds = %if.then66
  %cond84.in = getelementptr inbounds i8, ptr %h.addr.0., i64 672
  %cond84 = load i32, ptr %cond84.in, align 8
  %tobool85.not = icmp eq i32 %cond84, 0
  %cond86 = select i1 %tobool85.not, i32 5, i32 4
  br label %if.end90

if.end90:                                         ; preds = %if.then66, %if.then74
  %storemerge = phi i32 [ %cond86, %if.then74 ], [ 1, %if.then66 ]
  store i32 %storemerge, ptr %i_pic_struct, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end63
  %b_have_lowres = getelementptr inbounds i8, ptr %h.addr.0, i64 14672
  %49 = load i32, ptr %b_have_lowres, align 16
  %tobool93.not = icmp eq i32 %49, 0
  br i1 %tobool93.not, label %if.end104, label %if.then94

if.then94:                                        ; preds = %if.end91
  %i_weighted_pred = getelementptr inbounds i8, ptr %h.addr.0, i64 396
  %50 = load i32, ptr %i_weighted_pred, align 4
  switch i32 %50, label %if.end103 [
    i32 -1, label %if.then102
    i32 2, label %if.then102
  ]

if.then102:                                       ; preds = %if.then94, %if.then94
  tail call void @x264_weight_plane_analyse(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %call19) #17
  br label %if.end103

if.end103:                                        ; preds = %if.then94, %if.then102
  tail call void @x264_frame_init_lowres(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %call19) #17
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end91
  %b_mb_tree = getelementptr inbounds i8, ptr %h.addr.0, i64 552
  %51 = load i32, ptr %b_mb_tree, align 8
  %tobool106.not = icmp eq i32 %51, 0
  br i1 %tobool106.not, label %if.else116, label %land.lhs.true107

land.lhs.true107:                                 ; preds = %if.end104
  %b_stat_read = getelementptr inbounds i8, ptr %h.addr.0, i64 576
  %52 = load i32, ptr %b_stat_read, align 8
  %tobool110.not = icmp eq i32 %52, 0
  br i1 %tobool110.not, label %if.else116, label %if.then111

if.then111:                                       ; preds = %land.lhs.true107
  %call112 = tail call i32 @x264_macroblock_tree_read(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %call19) #17
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end122, label %cleanup675

if.else116:                                       ; preds = %land.lhs.true107, %if.end104
  %i_aq_mode = getelementptr inbounds i8, ptr %h.addr.0, i64 544
  %53 = load i32, ptr %i_aq_mode, align 8
  %tobool119.not = icmp eq i32 %53, 0
  br i1 %tobool119.not, label %if.end122, label %if.then120

if.then120:                                       ; preds = %if.else116
  tail call void @x264_adaptive_quant_frame(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %call19) #17
  br label %if.end122

if.end122:                                        ; preds = %if.else116, %if.then120, %if.then111
  tail call void @x264_lookahead_put_frame(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %call19) #17
  %54 = load i32, ptr %i_input, align 4
  %i_delay = getelementptr inbounds i8, ptr %h.addr.0, i64 14612
  %55 = load i32, ptr %i_delay, align 4
  %add126 = add nsw i32 %55, 1
  %i_thread_frames127 = getelementptr inbounds i8, ptr %h.addr.0, i64 1852
  %56 = load i32, ptr %i_thread_frames127, align 4
  %sub = sub i32 %add126, %56
  %cmp128.not = icmp sgt i32 %54, %sub
  br i1 %cmp128.not, label %if.end132, label %if.then129

if.then129:                                       ; preds = %if.end122
  store i32 0, ptr %pic_out, align 8
  br label %cleanup675

if.else131:                                       ; preds = %if.end16
  %lookahead = getelementptr inbounds i8, ptr %h.addr.0, i64 33328
  %57 = load ptr, ptr %lookahead, align 16
  store volatile i8 1, ptr %57, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.end122, %if.else131
  %i_frame133 = getelementptr inbounds i8, ptr %h.addr.0, i64 1844
  %58 = load i32, ptr %i_frame133, align 4
  %inc134 = add nsw i32 %58, 1
  store i32 %inc134, ptr %i_frame133, align 4
  %frames135 = getelementptr inbounds i8, ptr %h.addr.0, i64 14416
  %59 = load ptr, ptr %frames135, align 16
  %60 = load ptr, ptr %59, align 8
  %tobool137.not = icmp eq ptr %60, null
  br i1 %tobool137.not, label %if.end139, label %if.end149

if.end139:                                        ; preds = %if.end132
  tail call void @x264_lookahead_get_frames(ptr noundef nonnull %h.addr.0) #17
  %.pre = load ptr, ptr %frames135, align 16
  %.pre1323 = load ptr, ptr %.pre, align 8
  %tobool143.not = icmp eq ptr %.pre1323, null
  br i1 %tobool143.not, label %land.lhs.true144, label %if.end149

land.lhs.true144:                                 ; preds = %if.end139
  %call145 = tail call i32 @x264_lookahead_is_empty(ptr noundef nonnull %h.addr.0) #17
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %land.lhs.true144.if.end149_crit_edge, label %if.then147

land.lhs.true144.if.end149_crit_edge:             ; preds = %land.lhs.true144
  %.pre1324 = load ptr, ptr %frames135, align 16
  br label %if.end149

if.then147:                                       ; preds = %land.lhs.true144
  %call148 = tail call fastcc i32 @x264_encoder_frame_end(ptr noundef %thread_oldest.0, ptr noundef nonnull %h.addr.0, ptr noundef nonnull %pp_nal, ptr noundef nonnull %pi_nal, ptr noundef %pic_out)
  br label %cleanup675

if.end149:                                        ; preds = %if.end132, %land.lhs.true144.if.end149_crit_edge, %if.end139
  %61 = phi ptr [ %.pre1324, %land.lhs.true144.if.end149_crit_edge ], [ %.pre, %if.end139 ], [ %59, %if.end132 ]
  %call152 = tail call ptr @x264_frame_shift(ptr noundef %61) #17
  %fenc153 = getelementptr inbounds i8, ptr %h.addr.0, i64 14680
  store ptr %call152, ptr %fenc153, align 8
  %62 = load i32, ptr %i_frame133, align 4
  %i_thread_frames155 = getelementptr inbounds i8, ptr %h.addr.0, i64 1852
  %63 = load i32, ptr %i_thread_frames155, align 4
  %sub156 = add nsw i32 %63, -1
  %cmp157 = icmp eq i32 %62, %sub156
  br i1 %cmp157, label %if.then158, label %if.end160

if.then158:                                       ; preds = %if.end149
  %i_reordered_pts = getelementptr inbounds i8, ptr %call152, i64 24
  %64 = load i64, ptr %i_reordered_pts, align 8
  %i_reordered_pts_delay = getelementptr inbounds i8, ptr %h.addr.0, i64 15032
  store i64 %64, ptr %i_reordered_pts_delay, align 8
  br label %if.end160

if.end160:                                        ; preds = %if.then158, %if.end149
  %param162 = getelementptr inbounds i8, ptr %call152, i64 48
  %65 = load ptr, ptr %param162, align 16
  %tobool163.not = icmp eq ptr %65, null
  br i1 %tobool163.not, label %if.end178, label %if.then164

if.then164:                                       ; preds = %if.end160
  %call167 = tail call i32 @x264_encoder_reconfig(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %65)
  %66 = load ptr, ptr %fenc153, align 8
  %param169 = getelementptr inbounds i8, ptr %66, i64 48
  %67 = load ptr, ptr %param169, align 16
  %param_free = getelementptr inbounds i8, ptr %67, i64 696
  %68 = load ptr, ptr %param_free, align 8
  %tobool170.not = icmp eq ptr %68, null
  br i1 %tobool170.not, label %if.end178, label %if.then171

if.then171:                                       ; preds = %if.then164
  tail call void %68(ptr noundef nonnull %67) #17
  %.pre1325 = load ptr, ptr %fenc153, align 8
  br label %if.end178

if.end178:                                        ; preds = %if.then164, %if.then171, %if.end160
  %69 = phi ptr [ %66, %if.then164 ], [ %.pre1325, %if.then171 ], [ %call152, %if.end160 ]
  %b_keyframe = getelementptr inbounds i8, ptr %69, i64 80
  %70 = load i32, ptr %b_keyframe, align 16
  %tobool180.not = icmp eq i32 %70, 0
  br i1 %tobool180.not, label %if.end190, label %if.then181

if.then181:                                       ; preds = %if.end178
  %i_frame183 = getelementptr inbounds i8, ptr %69, i64 56
  %71 = load i32, ptr %i_frame183, align 8
  %i_last_keyframe = getelementptr inbounds i8, ptr %h.addr.0, i64 14592
  store i32 %71, ptr %i_last_keyframe, align 16
  %i_type186 = getelementptr inbounds i8, ptr %69, i64 4
  %72 = load i32, ptr %i_type186, align 4
  %cmp187 = icmp eq i32 %72, 1
  br i1 %cmp187, label %if.then188, label %if.end190

if.then188:                                       ; preds = %if.then181
  %i_frame_num = getelementptr inbounds i8, ptr %h.addr.0, i64 1848
  store i32 0, ptr %i_frame_num, align 8
  br label %if.end190

if.end190:                                        ; preds = %if.then181, %if.then188, %if.end178
  %i_mmco_remove_from_end = getelementptr inbounds i8, ptr %h.addr.0, i64 13728
  store i32 0, ptr %i_mmco_remove_from_end, align 16
  %i_mmco_command_count = getelementptr inbounds i8, ptr %h.addr.0, i64 13732
  store i32 0, ptr %i_mmco_command_count, align 4
  %b_ref_reorder = getelementptr inbounds i8, ptr %h.addr.0, i64 15016
  %arrayidx192 = getelementptr inbounds i8, ptr %h.addr.0, i64 15020
  store i32 0, ptr %arrayidx192, align 4
  store i32 0, ptr %b_ref_reorder, align 8
  %i_type196 = getelementptr inbounds i8, ptr %69, i64 4
  %73 = load i32, ptr %i_type196, align 4
  switch i32 %73, label %if.else225 [
    i32 1, label %if.then198
    i32 2, label %if.then205
    i32 3, label %if.then212
    i32 4, label %if.then219
  ]

if.then198:                                       ; preds = %if.end190
  %i_type200 = getelementptr inbounds i8, ptr %h.addr.0, i64 7248
  store i32 2, ptr %i_type200, align 16
  %reference.i987 = getelementptr inbounds i8, ptr %h.addr.0, i64 14448
  %74 = load ptr, ptr %reference.i987, align 16
  %tobool.not8.i = icmp eq ptr %74, null
  br i1 %tobool.not8.i, label %x264_reference_reset.exit, label %while.body.i

while.body.i:                                     ; preds = %if.then198, %while.body.i
  %call.i988 = tail call ptr @x264_frame_pop(ptr noundef nonnull %reference.i987) #17
  tail call void @x264_frame_push_unused(ptr noundef nonnull %h.addr.0, ptr noundef %call.i988) #17
  %75 = load ptr, ptr %reference.i987, align 16
  %tobool.not.i989 = icmp eq ptr %75, null
  br i1 %tobool.not.i989, label %x264_reference_reset.exit.loopexit, label %while.body.i

x264_reference_reset.exit.loopexit:               ; preds = %while.body.i
  %.pre1326 = load ptr, ptr %fenc153, align 8
  br label %x264_reference_reset.exit

x264_reference_reset.exit:                        ; preds = %x264_reference_reset.exit.loopexit, %if.then198
  %76 = phi ptr [ %.pre1326, %x264_reference_reset.exit.loopexit ], [ %69, %if.then198 ]
  store i32 0, ptr %76, align 16
  %77 = load ptr, ptr %fdec.i982, align 16
  store i32 0, ptr %77, align 16
  br label %if.end231

if.then205:                                       ; preds = %if.end190
  %i_type207 = getelementptr inbounds i8, ptr %h.addr.0, i64 7248
  store i32 2, ptr %i_type207, align 16
  tail call fastcc void @x264_reference_hierarchy_reset(ptr noundef nonnull %h.addr.0)
  br label %if.end231

if.then212:                                       ; preds = %if.end190
  %i_type214 = getelementptr inbounds i8, ptr %h.addr.0, i64 7248
  store i32 0, ptr %i_type214, align 16
  tail call fastcc void @x264_reference_hierarchy_reset(ptr noundef nonnull %h.addr.0)
  br label %if.end231

if.then219:                                       ; preds = %if.end190
  %i_bframe_pyramid = getelementptr inbounds i8, ptr %h.addr.0, i64 112
  %78 = load i32, ptr %i_bframe_pyramid, align 16
  %cmp221 = icmp eq i32 %78, 1
  %cond222 = select i1 %cmp221, i32 1, i32 2
  %i_type224 = getelementptr inbounds i8, ptr %h.addr.0, i64 7248
  store i32 1, ptr %i_type224, align 16
  tail call fastcc void @x264_reference_hierarchy_reset(ptr noundef nonnull %h.addr.0)
  br label %if.end231

if.else225:                                       ; preds = %if.end190
  %i_type227 = getelementptr inbounds i8, ptr %h.addr.0, i64 7248
  store i32 1, ptr %i_type227, align 16
  br label %if.end231

if.end231:                                        ; preds = %if.then205, %if.then219, %if.else225, %if.then212, %x264_reference_reset.exit
  %i_nal_ref_idc.0 = phi i32 [ 3, %x264_reference_reset.exit ], [ 2, %if.then205 ], [ 2, %if.then212 ], [ %cond222, %if.then219 ], [ 0, %if.else225 ]
  %cmp.i1254 = phi i1 [ true, %x264_reference_reset.exit ], [ false, %if.then205 ], [ false, %if.then212 ], [ false, %if.then219 ], [ false, %if.else225 ]
  %i_nal_type.0 = phi i32 [ 5, %x264_reference_reset.exit ], [ 1, %if.then205 ], [ 1, %if.then212 ], [ 1, %if.then219 ], [ 1, %if.else225 ]
  %79 = load ptr, ptr %fenc153, align 8
  %i_frame233 = getelementptr inbounds i8, ptr %79, i64 56
  %80 = load i32, ptr %i_frame233, align 8
  %i_last_keyframe235 = getelementptr inbounds i8, ptr %h.addr.0, i64 14592
  %81 = load i32, ptr %i_last_keyframe235, align 16
  %sub236 = sub nsw i32 %80, %81
  %mul237 = shl nsw i32 %sub236, 1
  store i32 %mul237, ptr %79, align 16
  %82 = load ptr, ptr %fdec.i982, align 16
  store i32 %mul237, ptr %82, align 16
  %83 = load ptr, ptr %fenc153, align 8
  %i_type242 = getelementptr inbounds i8, ptr %83, i64 4
  %84 = load i32, ptr %i_type242, align 4
  %85 = load ptr, ptr %fdec.i982, align 16
  %i_type244 = getelementptr inbounds i8, ptr %85, i64 4
  store i32 %84, ptr %i_type244, align 4
  %86 = load ptr, ptr %fenc153, align 8
  %i_frame246 = getelementptr inbounds i8, ptr %86, i64 56
  %87 = load i32, ptr %i_frame246, align 8
  %88 = load ptr, ptr %fdec.i982, align 16
  %i_frame248 = getelementptr inbounds i8, ptr %88, i64 56
  store i32 %87, ptr %i_frame248, align 8
  %cmp249.not = icmp eq i32 %i_nal_ref_idc.0, 0
  br i1 %cmp249.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end231
  %i_keyint_max = getelementptr inbounds i8, ptr %h.addr.0, i64 84
  %89 = load i32, ptr %i_keyint_max, align 4
  %cmp251 = icmp sgt i32 %89, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end231
  %90 = phi i1 [ false, %if.end231 ], [ %cmp251, %land.rhs ]
  %land.ext = zext i1 %90 to i32
  %91 = load ptr, ptr %fdec.i982, align 16
  %b_kept_as_ref = getelementptr inbounds i8, ptr %91, i64 72
  store i32 %land.ext, ptr %b_kept_as_ref, align 8
  %92 = load ptr, ptr %fenc153, align 8
  %b_kept_as_ref254 = getelementptr inbounds i8, ptr %92, i64 72
  store i32 %land.ext, ptr %b_kept_as_ref254, align 8
  %93 = load ptr, ptr %fdec.i982, align 16
  %94 = load i32, ptr %93, align 16
  %i_ref0.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14696
  store i32 0, ptr %i_ref0.i, align 8
  %i_fref.i = getelementptr inbounds i8, ptr %h.addr.0, i64 21416
  store i32 0, ptr %i_fref.i, align 8
  %i_ref1.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14856
  store i32 0, ptr %i_ref1.i, align 8
  %arrayidx4.i = getelementptr inbounds i8, ptr %h.addr.0, i64 21420
  store i32 0, ptr %arrayidx4.i, align 4
  %i_type.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7248
  %95 = load i32, ptr %i_type.i, align 16
  %cmp.i991 = icmp eq i32 %95, 2
  br i1 %cmp.i991, label %x264_reference_build_list.exit, label %for.cond.preheader.i992

for.cond.preheader.i992:                          ; preds = %land.end
  %reference.i993 = getelementptr inbounds i8, ptr %h.addr.0, i64 14448
  %96 = load ptr, ptr %reference.i993, align 8
  %tobool.not512.i = icmp eq ptr %96, null
  br i1 %tobool.not512.i, label %do.body.preheader.i, label %for.body.i994

do.body.preheader.loopexit.i:                     ; preds = %for.inc.i996
  %.pre.i999 = load i32, ptr %i_ref0.i, align 8
  br label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %do.body.preheader.loopexit.i, %for.cond.preheader.i992
  %97 = phi i32 [ %.pre.i999, %do.body.preheader.loopexit.i ], [ 0, %for.cond.preheader.i992 ]
  %fref044.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14704
  %98 = tail call i32 @llvm.smax.i32(i32 %97, i32 1)
  %smax.i = add nsw i32 %98, -1
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %for.cond39.i

for.body.i994:                                    ; preds = %for.cond.preheader.i992, %for.inc.i996
  %indvars.iv.i995 = phi i64 [ %indvars.iv.next.i997, %for.inc.i996 ], [ 0, %for.cond.preheader.i992 ]
  %99 = phi ptr [ %104, %for.inc.i996 ], [ %96, %for.cond.preheader.i992 ]
  %100 = load i32, ptr %99, align 16
  %cmp11.i = icmp slt i32 %100, %94
  br i1 %cmp11.i, label %for.inc.sink.split.i, label %if.else.i

if.else.i:                                        ; preds = %for.body.i994
  %cmp25.i = icmp sgt i32 %100, %94
  br i1 %cmp25.i, label %for.inc.sink.split.i, label %for.inc.i996

for.inc.sink.split.i:                             ; preds = %if.else.i, %for.body.i994
  %i_ref0.sink547.i = phi ptr [ %i_ref0.i, %for.body.i994 ], [ %i_ref1.i, %if.else.i ]
  %101 = phi i64 [ 14704, %for.body.i994 ], [ 14864, %if.else.i ]
  %102 = getelementptr inbounds i8, ptr %h.addr.0, i64 %101
  %103 = load i32, ptr %i_ref0.sink547.i, align 8
  %inc.i1004 = add nsw i32 %103, 1
  store i32 %inc.i1004, ptr %i_ref0.sink547.i, align 8
  %idxprom18.i = sext i32 %103 to i64
  %arrayidx19.i = getelementptr inbounds [19 x ptr], ptr %102, i64 0, i64 %idxprom18.i
  store ptr %99, ptr %arrayidx19.i, align 8
  br label %for.inc.i996

for.inc.i996:                                     ; preds = %for.inc.sink.split.i, %if.else.i
  %indvars.iv.next.i997 = add nuw nsw i64 %indvars.iv.i995, 1
  %arrayidx5.i = getelementptr inbounds [18 x ptr], ptr %reference.i993, i64 0, i64 %indvars.iv.next.i997
  %104 = load ptr, ptr %arrayidx5.i, align 8
  %tobool.not.i998 = icmp eq ptr %104, null
  br i1 %tobool.not.i998, label %do.body.preheader.loopexit.i, label %for.body.i994

for.cond39.i:                                     ; preds = %for.cond39.i.backedge, %do.body.preheader.i
  %indvars.iv525.i = phi i64 [ 0, %do.body.preheader.i ], [ %indvars.iv525.i.be, %for.cond39.i.backedge ]
  %exitcond.not.i = icmp eq i64 %indvars.iv525.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %do.end75.i, label %for.body43.i

for.body43.i:                                     ; preds = %for.cond39.i
  %arrayidx46.i = getelementptr inbounds [19 x ptr], ptr %fref044.i, i64 0, i64 %indvars.iv525.i
  %105 = load ptr, ptr %arrayidx46.i, align 8
  %106 = load i32, ptr %105, align 16
  %indvars.iv.next526.i = add nuw nsw i64 %indvars.iv525.i, 1
  %arrayidx50.i = getelementptr inbounds [19 x ptr], ptr %fref044.i, i64 0, i64 %indvars.iv.next526.i
  %107 = load ptr, ptr %arrayidx50.i, align 8
  %108 = load i32, ptr %107, align 16
  %cmp52.i = icmp slt i32 %106, %108
  br i1 %cmp52.i, label %do.body54.i, label %for.cond39.i.backedge

for.cond39.i.backedge:                            ; preds = %for.body43.i, %do.body54.i
  %indvars.iv525.i.be = phi i64 [ %indvars.iv.next526.i, %for.body43.i ], [ 0, %do.body54.i ]
  br label %for.cond39.i

do.body54.i:                                      ; preds = %for.body43.i
  %arrayidx46.i.le = getelementptr inbounds [19 x ptr], ptr %fref044.i, i64 0, i64 %indvars.iv525.i
  %arrayidx50.i.le = getelementptr inbounds [19 x ptr], ptr %fref044.i, i64 0, i64 %indvars.iv.next526.i
  store ptr %107, ptr %arrayidx46.i.le, align 8
  store ptr %105, ptr %arrayidx50.i.le, align 8
  br label %for.cond39.i.backedge

do.end75.i:                                       ; preds = %for.cond39.i
  %109 = load i32, ptr %i_mmco_remove_from_end, align 16
  %tobool77.not.i = icmp eq i32 %109, 0
  br i1 %tobool77.not.i, label %if.end114.i, label %for.cond82.preheader.i

for.cond82.preheader.i:                           ; preds = %do.end75.i
  %110 = load i32, ptr %i_ref0.i, align 8
  %sub86515.i = sub nsw i32 %110, %109
  %cmp87.not.not516.i = icmp sgt i32 %97, %sub86515.i
  br i1 %cmp87.not.not516.i, label %for.body89.lr.ph.i, label %if.end114.i

for.body89.lr.ph.i:                               ; preds = %for.cond82.preheader.i
  %i_frame_num.i = getelementptr inbounds i8, ptr %h.addr.0, i64 1848
  %mmco.i1002 = getelementptr inbounds i8, ptr %h.addr.0, i64 13736
  %111 = sext i32 %97 to i64
  %.pre537.i = load i32, ptr %i_mmco_command_count, align 4
  br label %for.body89.i

for.body89.i:                                     ; preds = %for.body89.i, %for.body89.lr.ph.i
  %112 = phi i32 [ %.pre537.i, %for.body89.lr.ph.i ], [ %inc108.i, %for.body89.i ]
  %indvars.iv528.i = phi i64 [ %111, %for.body89.lr.ph.i ], [ %indvars.iv.next529.i, %for.body89.i ]
  %indvars.iv.next529.i = add nsw i64 %indvars.iv528.i, -1
  %113 = load i32, ptr %i_frame_num.i, align 8
  %arrayidx92.i = getelementptr inbounds [19 x ptr], ptr %fref044.i, i64 0, i64 %indvars.iv.next529.i
  %114 = load ptr, ptr %arrayidx92.i, align 8
  %i_frame_num93.i = getelementptr inbounds i8, ptr %114, i64 68
  %115 = load i32, ptr %i_frame_num93.i, align 4
  %sub94.i = sub nsw i32 %113, %115
  %116 = load i32, ptr %114, align 16
  %idxprom101.i = sext i32 %112 to i64
  %i_poc103.i = getelementptr inbounds [16 x %struct.anon.7], ptr %mmco.i1002, i64 0, i64 %idxprom101.i, i32 1
  store i32 %116, ptr %i_poc103.i, align 4
  %117 = load i32, ptr %i_mmco_command_count, align 4
  %inc108.i = add nsw i32 %117, 1
  store i32 %inc108.i, ptr %i_mmco_command_count, align 4
  %idxprom109.i = sext i32 %117 to i64
  %arrayidx110.i = getelementptr inbounds [16 x %struct.anon.7], ptr %mmco.i1002, i64 0, i64 %idxprom109.i
  store i32 %sub94.i, ptr %arrayidx110.i, align 8
  %118 = load i32, ptr %i_ref0.i, align 8
  %119 = load i32, ptr %i_mmco_remove_from_end, align 16
  %sub86.i = sub nsw i32 %118, %119
  %120 = sext i32 %sub86.i to i64
  %cmp87.not.not.i = icmp sgt i64 %indvars.iv.next529.i, %120
  br i1 %cmp87.not.not.i, label %for.body89.i, label %if.end114.i

if.end114.i:                                      ; preds = %for.body89.i, %for.cond82.preheader.i, %do.end75.i
  %121 = load i32, ptr %i_ref1.i, align 8
  %fref1123.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14864
  %122 = tail call i32 @llvm.smax.i32(i32 %121, i32 1)
  %smax534.i = add nsw i32 %122, -1
  %wide.trip.count535.i = zext nneg i32 %smax534.i to i64
  br label %for.cond117.i

for.cond117.i:                                    ; preds = %for.cond117.i.backedge, %if.end114.i
  %indvars.iv531.i = phi i64 [ 0, %if.end114.i ], [ %indvars.iv531.i.be, %for.cond117.i.backedge ]
  %exitcond536.not.i = icmp eq i64 %indvars.iv531.i, %wide.trip.count535.i
  br i1 %exitcond536.not.i, label %do.end160.i, label %for.body122.i

for.body122.i:                                    ; preds = %for.cond117.i
  %arrayidx125.i = getelementptr inbounds [19 x ptr], ptr %fref1123.i, i64 0, i64 %indvars.iv531.i
  %123 = load ptr, ptr %arrayidx125.i, align 8
  %124 = load i32, ptr %123, align 16
  %indvars.iv.next532.i = add nuw nsw i64 %indvars.iv531.i, 1
  %arrayidx130.i = getelementptr inbounds [19 x ptr], ptr %fref1123.i, i64 0, i64 %indvars.iv.next532.i
  %125 = load ptr, ptr %arrayidx130.i, align 8
  %126 = load i32, ptr %125, align 16
  %cmp132.i = icmp sgt i32 %124, %126
  br i1 %cmp132.i, label %do.body134.i, label %for.cond117.i.backedge

for.cond117.i.backedge:                           ; preds = %for.body122.i, %do.body134.i
  %indvars.iv531.i.be = phi i64 [ %indvars.iv.next532.i, %for.body122.i ], [ 0, %do.body134.i ]
  br label %for.cond117.i

do.body134.i:                                     ; preds = %for.body122.i
  %arrayidx125.i.le = getelementptr inbounds [19 x ptr], ptr %fref1123.i, i64 0, i64 %indvars.iv531.i
  %arrayidx130.i.le = getelementptr inbounds [19 x ptr], ptr %fref1123.i, i64 0, i64 %indvars.iv.next532.i
  store ptr %125, ptr %arrayidx125.i.le, align 8
  store ptr %123, ptr %arrayidx130.i.le, align 8
  br label %for.cond117.i.backedge

do.end160.i:                                      ; preds = %for.cond117.i
  %127 = load i32, ptr %i_ref0.i, align 8
  %cmp28.i.i = icmp sgt i32 %127, 1
  br i1 %cmp28.i.i, label %for.body.lr.ph.i.i, label %x264_reference_check_reorder.exit.i

for.body.lr.ph.i.i:                               ; preds = %do.end160.i
  %sub.i.i = add nsw i32 %127, -1
  %128 = load i32, ptr %i_type.i, align 16
  %cmp1.i.i = icmp eq i32 %128, 0
  %wide.trip.count36.i.i = zext nneg i32 %sub.i.i to i64
  %.pre39.i.i = load ptr, ptr %fref044.i, align 8
  br i1 %cmp1.i.i, label %for.body.us.preheader.i.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %for.body.lr.ph.i.i
  %.pre38.i.i = load i32, ptr %.pre39.i.i, align 16
  br label %for.body.i.i

for.body.us.preheader.i.i:                        ; preds = %for.body.lr.ph.i.i
  %i_frame_num.us.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre39.i.i, i64 68
  %.pre40.i.i = load i32, ptr %i_frame_num.us.phi.trans.insert.i.i, align 4
  br label %for.body.us.i.i

for.body.us.i.i:                                  ; preds = %for.inc.us.i.i, %for.body.us.preheader.i.i
  %129 = phi i32 [ %.pre40.i.i, %for.body.us.preheader.i.i ], [ %131, %for.inc.us.i.i ]
  %indvars.iv33.i.i = phi i64 [ 0, %for.body.us.preheader.i.i ], [ %indvars.iv.next34.i.i, %for.inc.us.i.i ]
  %indvars.iv.next34.i.i = add nuw nsw i64 %indvars.iv33.i.i, 1
  %arrayidx4.us.i.i = getelementptr inbounds [19 x ptr], ptr %fref044.i, i64 0, i64 %indvars.iv.next34.i.i
  %130 = load ptr, ptr %arrayidx4.us.i.i, align 8
  %i_frame_num5.us.i.i = getelementptr inbounds i8, ptr %130, i64 68
  %131 = load i32, ptr %i_frame_num5.us.i.i, align 4
  %cmp6.us.i.i = icmp slt i32 %129, %131
  br i1 %cmp6.us.i.i, label %if.then.i.i, label %for.inc.us.i.i

for.inc.us.i.i:                                   ; preds = %for.body.us.i.i
  %exitcond37.not.i.i = icmp eq i64 %indvars.iv.next34.i.i, %wide.trip.count36.i.i
  br i1 %exitcond37.not.i.i, label %x264_reference_check_reorder.exit.i, label %for.body.us.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.preheader.i.i
  %132 = phi i32 [ %.pre38.i.i, %for.body.preheader.i.i ], [ %134, %for.inc.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %arrayidx13.i.i = getelementptr inbounds [19 x ptr], ptr %fref044.i, i64 0, i64 %indvars.iv.next.i.i
  %133 = load ptr, ptr %arrayidx13.i.i, align 8
  %134 = load i32, ptr %133, align 16
  %cmp15.i.i = icmp slt i32 %132, %134
  br i1 %cmp15.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i, %for.body.us.i.i
  store i32 1, ptr %b_ref_reorder, align 8
  br label %x264_reference_check_reorder.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count36.i.i
  br i1 %exitcond.not.i.i, label %x264_reference_check_reorder.exit.i, label %for.body.i.i

x264_reference_check_reorder.exit.i:              ; preds = %for.inc.i.i, %for.inc.us.i.i, %if.then.i.i, %do.end160.i
  %i_max_ref1.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14608
  %135 = load i32, ptr %i_max_ref1.i, align 16
  %..i1000 = tail call i32 @llvm.smin.i32(i32 %121, i32 %135)
  store i32 %..i1000, ptr %i_ref1.i, align 8
  %i_max_ref0.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14604
  %136 = load i32, ptr %i_max_ref0.i, align 4
  %cond177.i = tail call i32 @llvm.smin.i32(i32 %127, i32 %136)
  %i_frame_reference.i = getelementptr inbounds i8, ptr %h.addr.0, i64 80
  %137 = load i32, ptr %i_frame_reference.i, align 16
  %cond187.i = tail call i32 @llvm.smin.i32(i32 %cond177.i, i32 %137)
  store i32 %cond187.i, ptr %i_ref0.i, align 8
  %138 = load ptr, ptr %fenc153, align 8
  %i_type189.i = getelementptr inbounds i8, ptr %138, i64 4
  %139 = load i32, ptr %i_type189.i, align 4
  %cmp190.i = icmp eq i32 %139, 3
  br i1 %cmp190.i, label %if.then191.i, label %if.end311.i

if.then191.i:                                     ; preds = %x264_reference_check_reorder.exit.i
  %i_weighted_pred.i = getelementptr inbounds i8, ptr %h.addr.0, i64 396
  %140 = load i32, ptr %i_weighted_pred.i, align 4
  switch i32 %140, label %if.end309.i [
    i32 2, label %if.then194.i
    i32 1, label %if.then286.i
  ]

if.then194.i:                                     ; preds = %if.then191.i
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %w.i) #17
  %weightfn.i = getelementptr inbounds i8, ptr %w.i, i64 176
  store ptr null, ptr %weightfn.i, align 16
  %weightfn197.i = getelementptr inbounds i8, ptr %w.i, i64 112
  store ptr null, ptr %weightfn197.i, align 16
  %b_stat_read.i = getelementptr inbounds i8, ptr %h.addr.0, i64 576
  %141 = load i32, ptr %b_stat_read.i, align 8
  %tobool199.not.i = icmp eq i32 %141, 0
  br i1 %tobool199.not.i, label %if.end202.i, label %if.then200.i

if.then200.i:                                     ; preds = %if.then194.i
  tail call void @x264_ratecontrol_set_weights(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %138) #17
  %.pre538.i = load ptr, ptr %fenc153, align 8
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.then200.i, %if.then194.i
  %142 = phi ptr [ %.pre538.i, %if.then200.i ], [ %138, %if.then194.i ]
  %weightfn206.i = getelementptr inbounds i8, ptr %142, i64 368
  %143 = load ptr, ptr %weightfn206.i, align 16
  %tobool207.not.i = icmp eq ptr %143, null
  br i1 %tobool207.not.i, label %if.then208.i, label %if.else218.i

if.then208.i:                                     ; preds = %if.end202.i
  %i_denom.i = getelementptr inbounds i8, ptr %142, i64 352
  store i32 0, ptr %i_denom.i, align 16
  %i_scale.i = getelementptr inbounds i8, ptr %w.i, i64 36
  store i32 1, ptr %i_scale.i, align 4
  %i_denom215.i = getelementptr inbounds i8, ptr %w.i, i64 32
  store i32 0, ptr %i_denom215.i, align 16
  %i_offset.i = getelementptr inbounds i8, ptr %w.i, i64 40
  store i32 -1, ptr %i_offset.i, align 8
  %weight_cache.i = getelementptr inbounds i8, ptr %h.addr.0, i64 32896
  %144 = load ptr, ptr %weight_cache.i, align 8
  call void %144(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %w.i) #17
  %145 = load i32, ptr %i_ref0.i, align 8
  %cmp.i.i = icmp slt i32 %145, 2
  br i1 %cmp.i.i, label %if.end280.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then208.i
  %call.i.i = call ptr @x264_frame_pop_blank_unused(ptr noundef nonnull %h.addr.0) #17
  %146 = load ptr, ptr %fref044.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %call.i.i, ptr noundef nonnull align 16 dereferenceable(15632) %146, i64 15632, i1 false)
  %i_reference_count.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 15600
  store i32 1, ptr %i_reference_count.i.i, align 16
  %147 = load ptr, ptr %fref044.i, align 8
  %orig.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 3528
  store ptr %147, ptr %orig.i.i, align 8
  %b_duplicate.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 3520
  store i32 1, ptr %b_duplicate.i.i, align 16
  %148 = load ptr, ptr %fenc153, align 8
  %arrayidx5.i.i = getelementptr inbounds i8, ptr %148, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %arrayidx5.i.i, ptr noundef nonnull readonly align 16 dereferenceable(192) %w.i, i64 192, i1 false)
  store i32 1, ptr %b_ref_reorder, align 8
  %149 = load i32, ptr %i_ref0.i, align 8
  %cmp8.i.i = icmp slt i32 %149, 16
  br i1 %cmp8.i.i, label %if.end280.sink.split.sink.split.i, label %if.end280.sink.split.i

if.else218.i:                                     ; preds = %if.end202.i
  %i_scale223.i = getelementptr inbounds i8, ptr %142, i64 356
  %150 = load i32, ptr %i_scale223.i, align 4
  %i_denom228.i = getelementptr inbounds i8, ptr %142, i64 352
  %151 = load i32, ptr %i_denom228.i, align 16
  %shl.i = shl nuw i32 1, %151
  %cmp229.i = icmp eq i32 %150, %shl.i
  br i1 %cmp229.i, label %if.then230.i, label %if.end257.i

if.then230.i:                                     ; preds = %if.else218.i
  store i32 1, ptr %i_scale223.i, align 4
  %152 = load ptr, ptr %fenc153, align 8
  %i_denom240.i = getelementptr inbounds i8, ptr %152, i64 352
  store i32 0, ptr %i_denom240.i, align 16
  %153 = load ptr, ptr %fenc153, align 8
  %weight242.i = getelementptr inbounds i8, ptr %153, i64 320
  %weight_cache252.i = getelementptr inbounds i8, ptr %h.addr.0, i64 32896
  %154 = load ptr, ptr %weight_cache252.i, align 8
  tail call void %154(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %weight242.i) #17
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.then230.i, %if.else218.i
  %155 = load i32, ptr %i_ref0.i, align 8
  %cmp.i447.i = icmp slt i32 %155, 2
  br i1 %cmp.i447.i, label %x264_weighted_reference_duplicate.exit464.i, label %if.end.i448.i

if.end.i448.i:                                    ; preds = %if.end257.i
  %call.i449.i = tail call ptr @x264_frame_pop_blank_unused(ptr noundef nonnull %h.addr.0) #17
  %156 = load ptr, ptr %fref044.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %call.i449.i, ptr noundef nonnull align 16 dereferenceable(15632) %156, i64 15632, i1 false)
  %i_reference_count.i451.i = getelementptr inbounds i8, ptr %call.i449.i, i64 15600
  store i32 1, ptr %i_reference_count.i451.i, align 16
  %157 = load ptr, ptr %fref044.i, align 8
  %orig.i452.i = getelementptr inbounds i8, ptr %call.i449.i, i64 3528
  store ptr %157, ptr %orig.i452.i, align 8
  %b_duplicate.i453.i = getelementptr inbounds i8, ptr %call.i449.i, i64 3520
  store i32 1, ptr %b_duplicate.i453.i, align 16
  %158 = load ptr, ptr %fenc153, align 8
  %arrayidx5.i455.i = getelementptr inbounds i8, ptr %158, i64 512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %arrayidx5.i455.i, ptr noundef nonnull readonly align 16 dereferenceable(192) @weight_none, i64 192, i1 false)
  store i32 1, ptr %b_ref_reorder, align 8
  %159 = load i32, ptr %i_ref0.i, align 8
  %cmp8.i457.i = icmp slt i32 %159, 16
  br i1 %cmp8.i457.i, label %if.then9.i462.i, label %if.end11.i458.i

if.then9.i462.i:                                  ; preds = %if.end.i448.i
  %inc.i463.i = add nsw i32 %159, 1
  store i32 %inc.i463.i, ptr %i_ref0.i, align 8
  br label %if.end11.i458.i

if.end11.i458.i:                                  ; preds = %if.then9.i462.i, %if.end.i448.i
  %arrayidx13.i459.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14824
  store ptr null, ptr %arrayidx13.i459.i, align 8
  %arrayidx16.i460.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14712
  tail call void @x264_frame_unshift(ptr noundef nonnull %arrayidx16.i460.i, ptr noundef nonnull %call.i449.i) #17
  br label %x264_weighted_reference_duplicate.exit464.i

x264_weighted_reference_duplicate.exit464.i:      ; preds = %if.end11.i458.i, %if.end257.i
  %160 = load ptr, ptr %fenc153, align 8
  %i_offset263.i = getelementptr inbounds i8, ptr %160, i64 360
  %161 = load i32, ptr %i_offset263.i, align 8
  %cmp264.i = icmp sgt i32 %161, -128
  br i1 %cmp264.i, label %if.then265.i, label %if.end280.i

if.then265.i:                                     ; preds = %x264_weighted_reference_duplicate.exit464.i
  %weight260.i = getelementptr inbounds i8, ptr %160, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %w.i, ptr noundef nonnull align 16 dereferenceable(64) %weight260.i, i64 64, i1 false)
  %i_offset272.i = getelementptr inbounds i8, ptr %w.i, i64 40
  %162 = load i32, ptr %i_offset272.i, align 8
  %dec273.i = add nsw i32 %162, -1
  store i32 %dec273.i, ptr %i_offset272.i, align 8
  %weight_cache275.i = getelementptr inbounds i8, ptr %h.addr.0, i64 32896
  %163 = load ptr, ptr %weight_cache275.i, align 8
  call void %163(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %w.i) #17
  %164 = load i32, ptr %i_ref0.i, align 8
  %cmp.i466.i = icmp slt i32 %164, 2
  br i1 %cmp.i466.i, label %if.end280.i, label %if.end.i467.i

if.end.i467.i:                                    ; preds = %if.then265.i
  %call.i468.i = call ptr @x264_frame_pop_blank_unused(ptr noundef nonnull %h.addr.0) #17
  %165 = load ptr, ptr %fref044.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %call.i468.i, ptr noundef nonnull align 16 dereferenceable(15632) %165, i64 15632, i1 false)
  %i_reference_count.i470.i = getelementptr inbounds i8, ptr %call.i468.i, i64 15600
  store i32 1, ptr %i_reference_count.i470.i, align 16
  %166 = load ptr, ptr %fref044.i, align 8
  %orig.i471.i = getelementptr inbounds i8, ptr %call.i468.i, i64 3528
  store ptr %166, ptr %orig.i471.i, align 8
  %b_duplicate.i472.i = getelementptr inbounds i8, ptr %call.i468.i, i64 3520
  store i32 1, ptr %b_duplicate.i472.i, align 16
  %167 = load ptr, ptr %fenc153, align 8
  %arrayidx5.i474.i = getelementptr inbounds i8, ptr %167, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %arrayidx5.i474.i, ptr noundef nonnull readonly align 16 dereferenceable(192) %w.i, i64 192, i1 false)
  store i32 1, ptr %b_ref_reorder, align 8
  %168 = load i32, ptr %i_ref0.i, align 8
  %cmp8.i476.i = icmp slt i32 %168, 16
  br i1 %cmp8.i476.i, label %if.end280.sink.split.sink.split.i, label %if.end280.sink.split.i

if.end280.sink.split.sink.split.i:                ; preds = %if.end.i467.i, %if.end.i.i
  %.sink.i = phi i32 [ %149, %if.end.i.i ], [ %168, %if.end.i467.i ]
  %call.i468.sink.ph.i = phi ptr [ %call.i.i, %if.end.i.i ], [ %call.i468.i, %if.end.i467.i ]
  %inc.i482.i = add nsw i32 %.sink.i, 1
  store i32 %inc.i482.i, ptr %i_ref0.i, align 8
  br label %if.end280.sink.split.i

if.end280.sink.split.i:                           ; preds = %if.end280.sink.split.sink.split.i, %if.end.i467.i, %if.end.i.i
  %call.i468.sink.i = phi ptr [ %call.i.i, %if.end.i.i ], [ %call.i468.i, %if.end.i467.i ], [ %call.i468.sink.ph.i, %if.end280.sink.split.sink.split.i ]
  %arrayidx13.i478.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14824
  store ptr null, ptr %arrayidx13.i478.i, align 8
  %arrayidx16.i479.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14712
  call void @x264_frame_unshift(ptr noundef nonnull %arrayidx16.i479.i, ptr noundef nonnull %call.i468.sink.i) #17
  br label %if.end280.i

if.end280.i:                                      ; preds = %if.end280.sink.split.i, %if.then265.i, %x264_weighted_reference_duplicate.exit464.i, %if.then208.i
  %idx.0.i = phi i32 [ -1, %x264_weighted_reference_duplicate.exit464.i ], [ -1, %if.then208.i ], [ -1, %if.then265.i ], [ 1, %if.end280.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %w.i) #17
  br label %if.end309.i

if.then286.i:                                     ; preds = %if.then191.i
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %w287.i) #17
  %i_scale289.i = getelementptr inbounds i8, ptr %w287.i, i64 36
  store i32 1, ptr %i_scale289.i, align 4
  %i_denom291.i = getelementptr inbounds i8, ptr %w287.i, i64 32
  store i32 0, ptr %i_denom291.i, align 16
  %i_offset293.i = getelementptr inbounds i8, ptr %w287.i, i64 40
  store i32 -1, ptr %i_offset293.i, align 8
  %weight_cache295.i = getelementptr inbounds i8, ptr %h.addr.0, i64 32896
  %169 = load ptr, ptr %weight_cache295.i, align 8
  call void %169(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %w287.i) #17
  %170 = load ptr, ptr %fenc153, align 8
  %i_denom301.i = getelementptr inbounds i8, ptr %170, i64 352
  store i32 0, ptr %i_denom301.i, align 16
  %weightfn303.i = getelementptr inbounds i8, ptr %w287.i, i64 176
  store ptr null, ptr %weightfn303.i, align 16
  %weightfn305.i = getelementptr inbounds i8, ptr %w287.i, i64 112
  store ptr null, ptr %weightfn305.i, align 16
  %171 = load i32, ptr %i_ref0.i, align 8
  %cmp.i485.i = icmp slt i32 %171, 2
  br i1 %cmp.i485.i, label %x264_weighted_reference_duplicate.exit502.i, label %if.end.i486.i

if.end.i486.i:                                    ; preds = %if.then286.i
  %call.i487.i = call ptr @x264_frame_pop_blank_unused(ptr noundef nonnull %h.addr.0) #17
  %172 = load ptr, ptr %fref044.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %call.i487.i, ptr noundef nonnull align 16 dereferenceable(15632) %172, i64 15632, i1 false)
  %i_reference_count.i489.i = getelementptr inbounds i8, ptr %call.i487.i, i64 15600
  store i32 1, ptr %i_reference_count.i489.i, align 16
  %173 = load ptr, ptr %fref044.i, align 8
  %orig.i490.i = getelementptr inbounds i8, ptr %call.i487.i, i64 3528
  store ptr %173, ptr %orig.i490.i, align 8
  %b_duplicate.i491.i = getelementptr inbounds i8, ptr %call.i487.i, i64 3520
  store i32 1, ptr %b_duplicate.i491.i, align 16
  %174 = load ptr, ptr %fenc153, align 8
  %arrayidx5.i493.i = getelementptr inbounds i8, ptr %174, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %arrayidx5.i493.i, ptr noundef nonnull readonly align 16 dereferenceable(192) %w287.i, i64 192, i1 false)
  store i32 1, ptr %b_ref_reorder, align 8
  %175 = load i32, ptr %i_ref0.i, align 8
  %cmp8.i495.i = icmp slt i32 %175, 16
  br i1 %cmp8.i495.i, label %if.then9.i500.i, label %if.end11.i496.i

if.then9.i500.i:                                  ; preds = %if.end.i486.i
  %inc.i501.i = add nsw i32 %175, 1
  store i32 %inc.i501.i, ptr %i_ref0.i, align 8
  br label %if.end11.i496.i

if.end11.i496.i:                                  ; preds = %if.then9.i500.i, %if.end.i486.i
  %arrayidx13.i497.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14824
  store ptr null, ptr %arrayidx13.i497.i, align 8
  %arrayidx16.i498.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14712
  call void @x264_frame_unshift(ptr noundef nonnull %arrayidx16.i498.i, ptr noundef nonnull %call.i487.i) #17
  br label %x264_weighted_reference_duplicate.exit502.i

x264_weighted_reference_duplicate.exit502.i:      ; preds = %if.end11.i496.i, %if.then286.i
  %retval.0.i499.i = phi i32 [ 1, %if.end11.i496.i ], [ -1, %if.then286.i ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %w287.i) #17
  br label %if.end309.i

if.end309.i:                                      ; preds = %x264_weighted_reference_duplicate.exit502.i, %if.end280.i, %if.then191.i
  %idx.1.i = phi i32 [ %idx.0.i, %if.end280.i ], [ %retval.0.i499.i, %x264_weighted_reference_duplicate.exit502.i ], [ -1, %if.then191.i ]
  %ref_blind_dupe.i = getelementptr inbounds i8, ptr %h.addr.0, i64 26652
  store i32 %idx.1.i, ptr %ref_blind_dupe.i, align 4
  %.pre539.i = load i32, ptr %i_ref0.i, align 8
  %.pre540.i = load i32, ptr %i_ref1.i, align 8
  br label %if.end311.i

if.end311.i:                                      ; preds = %if.end309.i, %x264_reference_check_reorder.exit.i
  %176 = phi i32 [ %.pre540.i, %if.end309.i ], [ %..i1000, %x264_reference_check_reorder.exit.i ]
  %177 = phi i32 [ %.pre539.i, %if.end309.i ], [ %cond187.i, %x264_reference_check_reorder.exit.i ]
  store i32 %177, ptr %i_fref.i, align 8
  store i32 %176, ptr %arrayidx4.i, align 4
  br label %x264_reference_build_list.exit

x264_reference_build_list.exit:                   ; preds = %land.end, %if.end311.i
  %b_sliced_threads = getelementptr inbounds i8, ptr %h.addr.0, i64 8
  %178 = load i32, ptr %b_sliced_threads, align 8
  %tobool258.not = icmp eq i32 %178, 0
  br i1 %tobool258.not, label %if.else279, label %for.cond.preheader

for.cond.preheader:                               ; preds = %x264_reference_build_list.exit
  %i_threads = getelementptr inbounds i8, ptr %h.addr.0, i64 4
  %179 = load i32, ptr %i_threads, align 4
  %cmp2611305 = icmp sgt i32 %179, 0
  br i1 %cmp2611305, label %for.body.lr.ph, label %if.end288

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %thread262 = getelementptr inbounds i8, ptr %h.addr.0, i64 704
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx264 = getelementptr inbounds [129 x ptr], ptr %thread262, i64 0, i64 %indvars.iv
  %180 = load ptr, ptr %arrayidx264, align 8
  %bs = getelementptr inbounds i8, ptr %180, i64 1792
  %p_bitstream = getelementptr inbounds i8, ptr %180, i64 1784
  %181 = load ptr, ptr %p_bitstream, align 8
  %i_bitstream = getelementptr inbounds i8, ptr %180, i64 1776
  %182 = load i32, ptr %i_bitstream, align 16
  %183 = ptrtoint ptr %181 to i64
  %idx.ext.i = and i64 %183, 3
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i = getelementptr inbounds i8, ptr %181, i64 %idx.neg.i
  store ptr %add.ptr.i, ptr %bs, align 8
  %p.i = getelementptr inbounds i8, ptr %180, i64 1800
  store ptr %add.ptr.i, ptr %p.i, align 8
  %idx.ext1.i = sext i32 %182 to i64
  %add.ptr2.i = getelementptr inbounds i8, ptr %181, i64 %idx.ext1.i
  %p_end.i = getelementptr inbounds i8, ptr %180, i64 1808
  store ptr %add.ptr2.i, ptr %p_end.i, align 8
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32
  %184 = shl nuw nsw i32 %idx.ext.tr.i, 3
  %conv4.i = sub nuw nsw i32 64, %184
  %i_left.i = getelementptr inbounds i8, ptr %180, i64 1824
  store i32 %conv4.i, ptr %i_left.i, align 8
  %185 = load i32, ptr %add.ptr.i, align 4
  %add5.i.i = call noundef i32 @llvm.bswap.i32(i32 %185)
  %conv6.i = zext i32 %add5.i.i to i64
  %cur_bits.i = getelementptr inbounds i8, ptr %180, i64 1816
  %conv.i = shl i64 %183, 3
  %186 = and i64 %conv.i, 24
  %mul8.i = sub nuw nsw i64 32, %186
  %shr.i = lshr i64 %conv6.i, %mul8.i
  store i64 %shr.i, ptr %cur_bits.i, align 8
  %187 = load ptr, ptr %arrayidx264, align 8
  %out276 = getelementptr inbounds i8, ptr %187, i64 1760
  store i32 0, ptr %out276, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %188 = load i32, ptr %i_threads, align 4
  %189 = sext i32 %188 to i64
  %cmp261 = icmp slt i64 %indvars.iv.next, %189
  br i1 %cmp261, label %for.body, label %if.end288

if.else279:                                       ; preds = %x264_reference_build_list.exit
  %out280 = getelementptr inbounds i8, ptr %h.addr.0, i64 1760
  %bs281 = getelementptr inbounds i8, ptr %h.addr.0, i64 1792
  %p_bitstream283 = getelementptr inbounds i8, ptr %h.addr.0, i64 1784
  %190 = load ptr, ptr %p_bitstream283, align 8
  %i_bitstream285 = getelementptr inbounds i8, ptr %h.addr.0, i64 1776
  %191 = load i32, ptr %i_bitstream285, align 16
  %192 = ptrtoint ptr %190 to i64
  %idx.ext.i1005 = and i64 %192, 3
  %idx.neg.i1006 = sub nsw i64 0, %idx.ext.i1005
  %add.ptr.i1007 = getelementptr inbounds i8, ptr %190, i64 %idx.neg.i1006
  store ptr %add.ptr.i1007, ptr %bs281, align 8
  %p.i1008 = getelementptr inbounds i8, ptr %h.addr.0, i64 1800
  store ptr %add.ptr.i1007, ptr %p.i1008, align 8
  %idx.ext1.i1009 = sext i32 %191 to i64
  %add.ptr2.i1010 = getelementptr inbounds i8, ptr %190, i64 %idx.ext1.i1009
  %p_end.i1011 = getelementptr inbounds i8, ptr %h.addr.0, i64 1808
  store ptr %add.ptr2.i1010, ptr %p_end.i1011, align 8
  %idx.ext.tr.i1012 = trunc nuw nsw i64 %idx.ext.i1005 to i32
  %193 = shl nuw nsw i32 %idx.ext.tr.i1012, 3
  %conv4.i1013 = sub nuw nsw i32 64, %193
  %i_left.i1014 = getelementptr inbounds i8, ptr %h.addr.0, i64 1824
  store i32 %conv4.i1013, ptr %i_left.i1014, align 8
  %194 = load i32, ptr %add.ptr.i1007, align 4
  %add5.i.i1015 = call noundef i32 @llvm.bswap.i32(i32 %194)
  %conv6.i1016 = zext i32 %add5.i.i1015 to i64
  %cur_bits.i1017 = getelementptr inbounds i8, ptr %h.addr.0, i64 1816
  %conv.i1018 = shl i64 %192, 3
  %195 = and i64 %conv.i1018, 24
  %mul8.i1019 = sub nuw nsw i64 32, %195
  %shr.i1020 = lshr i64 %conv6.i1016, %mul8.i1019
  store i64 %shr.i1020, ptr %cur_bits.i1017, align 8
  store i32 0, ptr %out280, align 16
  br label %if.end288

if.end288:                                        ; preds = %for.body, %for.cond.preheader, %if.else279
  %b_aud = getelementptr inbounds i8, ptr %h.addr.0, i64 632
  %196 = load i32, ptr %b_aud, align 8
  %tobool290.not = icmp eq i32 %196, 0
  br i1 %tobool290.not, label %if.end339, label %if.then291

if.then291:                                       ; preds = %if.end288
  %197 = load i32, ptr %i_type.i, align 16
  %198 = icmp ult i32 %197, 3
  br i1 %198, label %switch.lookup, label %if.end309

switch.lookup:                                    ; preds = %if.then291
  %199 = zext nneg i32 %197 to i64
  %switch.gep = getelementptr inbounds [3 x i64], ptr @switch.table.x264_encoder_encode, i64 0, i64 %199
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %if.end309

if.end309:                                        ; preds = %if.then291, %switch.lookup
  %pic_type.0 = phi i64 [ %switch.load, %switch.lookup ], [ 7, %if.then291 ]
  %out.i = getelementptr inbounds i8, ptr %h.addr.0, i64 1760
  %nal1.i = getelementptr inbounds i8, ptr %h.addr.0, i64 1768
  %200 = load ptr, ptr %nal1.i, align 8
  %201 = load i32, ptr %out.i, align 16
  %idxprom.i = sext i32 %201 to i64
  %arrayidx.i1021 = getelementptr inbounds %struct.x264_nal_t, ptr %200, i64 %idxprom.i
  store i32 0, ptr %arrayidx.i1021, align 8
  %i_type4.i = getelementptr inbounds i8, ptr %arrayidx.i1021, i64 4
  store i32 9, ptr %i_type4.i, align 4
  %i_payload.i = getelementptr inbounds i8, ptr %arrayidx.i1021, i64 8
  store i32 0, ptr %i_payload.i, align 8
  %p_bitstream.i = getelementptr inbounds i8, ptr %h.addr.0, i64 1784
  %202 = load ptr, ptr %p_bitstream.i, align 8
  %bs.i = getelementptr inbounds i8, ptr %h.addr.0, i64 1792
  %p.i.i = getelementptr inbounds i8, ptr %h.addr.0, i64 1800
  %203 = load ptr, ptr %p.i.i, align 8
  %204 = load ptr, ptr %bs.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %203 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %204 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %i_left.i.i = getelementptr inbounds i8, ptr %h.addr.0, i64 1824
  %205 = load i32, ptr %i_left.i.i, align 8
  %sub.ptr.sub.tr.i.i = trunc i64 %sub.ptr.sub.i.i to i32
  %206 = shl i32 %sub.ptr.sub.tr.i.i, 3
  %reass.sub = sub i32 %206, %205
  %conv1.i.i = add i32 %reass.sub, 64
  %div.i = sdiv i32 %conv1.i.i, 8
  %idxprom7.i = sext i32 %div.i to i64
  %arrayidx8.i = getelementptr inbounds i8, ptr %202, i64 %idxprom7.i
  %p_payload.i = getelementptr inbounds i8, ptr %arrayidx.i1021, i64 16
  store ptr %arrayidx8.i, ptr %p_payload.i, align 8
  %cur_bits.i1022 = getelementptr inbounds i8, ptr %h.addr.0, i64 1816
  %207 = load i64, ptr %cur_bits.i1022, align 8
  %shl.i1023 = shl i64 %207, 3
  %or.i = or disjoint i64 %shl.i1023, %pic_type.0
  store i64 %or.i, ptr %cur_bits.i1022, align 8
  %208 = load i32, ptr %i_left.i.i, align 8
  %sub.i = add nsw i32 %208, -3
  store i32 %sub.i, ptr %i_left.i.i, align 8
  %cmp.i1026 = icmp slt i32 %208, 36
  br i1 %cmp.i1026, label %if.then.i1028, label %bs_write.exit

if.then.i1028:                                    ; preds = %if.end309
  %sh_prom6.i = zext nneg i32 %sub.i to i64
  %shl7.i = shl i64 %or.i, %sh_prom6.i
  %add.i.i.i = call noundef i64 @llvm.bswap.i64(i64 %shl7.i)
  %conv8.i = trunc i64 %add.i.i.i to i32
  %209 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i, ptr %209, align 4
  %210 = load i32, ptr %i_left.i.i, align 8
  %add.i = add nsw i32 %210, 32
  %211 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i1030 = getelementptr inbounds i8, ptr %211, i64 4
  store ptr %add.ptr.i1030, ptr %p.i.i, align 8
  %.pre1327 = load i64, ptr %cur_bits.i1022, align 8
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %if.end309, %if.then.i1028
  %212 = phi i32 [ %sub.i, %if.end309 ], [ %add.i, %if.then.i1028 ]
  %213 = phi i64 [ %or.i, %if.end309 ], [ %.pre1327, %if.then.i1028 ]
  %shl.i.i = shl i64 %213, 1
  %or.i.i = or disjoint i64 %shl.i.i, 1
  store i64 %or.i.i, ptr %cur_bits.i1022, align 8
  %dec.i.i = add nsw i32 %212, -1
  %cmp.i.i1032 = icmp eq i32 %dec.i.i, 32
  br i1 %cmp.i.i1032, label %bs_write1.exit.thread.i, label %bs_write1.exit.i

bs_write1.exit.thread.i:                          ; preds = %bs_write.exit
  %conv6.i.i = trunc i64 %or.i.i to i32
  %add5.i.i.i = call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i)
  %214 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i.i, ptr %214, align 4
  %215 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %215, i64 4
  store ptr %add.ptr.i.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  br label %bs_rbsp_trailing.exit

bs_write1.exit.i:                                 ; preds = %bs_write.exit
  %and.i = and i32 %dec.i.i, 7
  %sh_prom.i.i = zext nneg i32 %and.i to i64
  %shl.i4.i = shl i64 %or.i.i, %sh_prom.i.i
  store i64 %shl.i4.i, ptr %cur_bits.i1022, align 8
  %sub.i.i1033 = and i32 %dec.i.i, -8
  store i32 %sub.i.i1033, ptr %i_left.i.i, align 8
  %cmp.i7.i = icmp slt i32 %sub.i.i1033, 33
  %.pre1328 = load ptr, ptr %p.i.i, align 8
  br i1 %cmp.i7.i, label %if.then.i8.i, label %bs_rbsp_trailing.exit

if.then.i8.i:                                     ; preds = %bs_write1.exit.i
  %sh_prom6.i.i = zext nneg i32 %sub.i.i1033 to i64
  %216 = call i64 @llvm.bswap.i64(i64 %shl.i4.i)
  %add.i.i.i.i = lshr i64 %216, %sh_prom6.i.i
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32
  store i32 %conv8.i.i, ptr %.pre1328, align 4
  %217 = load i32, ptr %i_left.i.i, align 8
  %add.i.i = add nsw i32 %217, 32
  store i32 %add.i.i, ptr %i_left.i.i, align 8
  %218 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i10.i = getelementptr inbounds i8, ptr %218, i64 4
  store ptr %add.ptr.i10.i, ptr %p.i.i, align 8
  br label %bs_rbsp_trailing.exit

bs_rbsp_trailing.exit:                            ; preds = %bs_write1.exit.thread.i, %bs_write1.exit.i, %if.then.i8.i
  %219 = phi i32 [ 64, %bs_write1.exit.thread.i ], [ %sub.i.i1033, %bs_write1.exit.i ], [ %add.i.i, %if.then.i8.i ]
  %220 = phi ptr [ %add.ptr.i.i, %bs_write1.exit.thread.i ], [ %.pre1328, %bs_write1.exit.i ], [ %add.ptr.i10.i, %if.then.i8.i ]
  %221 = load ptr, ptr %nal1.i, align 8
  %222 = load i32, ptr %out.i, align 16
  %idxprom.i1037 = sext i32 %222 to i64
  %arrayidx.i1038 = getelementptr inbounds %struct.x264_nal_t, ptr %221, i64 %idxprom.i1037
  %223 = load ptr, ptr %p_bitstream.i, align 8
  %224 = load ptr, ptr %bs.i, align 8
  %sub.ptr.lhs.cast.i.i1042 = ptrtoint ptr %220 to i64
  %sub.ptr.rhs.cast.i.i1043 = ptrtoint ptr %224 to i64
  %sub.ptr.sub.i.i1044 = sub i64 %sub.ptr.lhs.cast.i.i1042, %sub.ptr.rhs.cast.i.i1043
  %sub.ptr.sub.tr.i.i1046 = trunc i64 %sub.ptr.sub.i.i1044 to i32
  %225 = shl i32 %sub.ptr.sub.tr.i.i1046, 3
  %reass.sub1307 = sub i32 %225, %219
  %conv1.i.i1048 = add i32 %reass.sub1307, 64
  %div.i1049 = sdiv i32 %conv1.i.i1048, 8
  %idxprom5.i = sext i32 %div.i1049 to i64
  %arrayidx6.i = getelementptr inbounds i8, ptr %223, i64 %idxprom5.i
  %p_payload.i1050 = getelementptr inbounds i8, ptr %arrayidx.i1038, i64 16
  %226 = load ptr, ptr %p_payload.i1050, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx6.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %226 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i1051 = trunc i64 %sub.ptr.sub.i to i32
  %i_payload.i1052 = getelementptr inbounds i8, ptr %arrayidx.i1038, i64 8
  store i32 %conv.i1051, ptr %i_payload.i1052, align 8
  %227 = load i32, ptr %out.i, align 16
  %inc.i1053 = add nsw i32 %227, 1
  store i32 %inc.i1053, ptr %out.i, align 16
  %i_nals_allocated.i.i = getelementptr inbounds i8, ptr %h.addr.0, i64 1764
  %228 = load i32, ptr %i_nals_allocated.i.i, align 4
  %cmp.not.i.i = icmp slt i32 %inc.i1053, %228
  br i1 %cmp.not.i.i, label %bs_rbsp_trailing.exit.cleanup336.thread_crit_edge, label %if.then.i.i1054

bs_rbsp_trailing.exit.cleanup336.thread_crit_edge: ; preds = %bs_rbsp_trailing.exit
  %.pre1329 = load ptr, ptr %nal1.i, align 8
  br label %cleanup336.thread

if.then.i.i1054:                                  ; preds = %bs_rbsp_trailing.exit
  %mul4.i.i = mul i32 %228, 48
  %call.i.i1055 = call ptr @x264_malloc(i32 noundef %mul4.i.i) #17
  %tobool.not.i.i = icmp eq ptr %call.i.i1055, null
  br i1 %tobool.not.i.i, label %cleanup675, label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.then.i.i1054
  %229 = load ptr, ptr %nal1.i, align 8
  %230 = load i32, ptr %i_nals_allocated.i.i, align 4
  %conv10.i.i = sext i32 %230 to i64
  %mul11.i.i = mul nsw i64 %conv10.i.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call.i.i1055, ptr align 8 %229, i64 %mul11.i.i, i1 false)
  %231 = load ptr, ptr %nal1.i, align 8
  call void @x264_free(ptr noundef %231) #17
  store ptr %call.i.i1055, ptr %nal1.i, align 8
  %232 = load i32, ptr %i_nals_allocated.i.i, align 4
  %mul18.i.i = shl nsw i32 %232, 1
  store i32 %mul18.i.i, ptr %i_nals_allocated.i.i, align 4
  %.pre1330 = load i32, ptr %out.i, align 16
  br label %cleanup336.thread

cleanup336.thread:                                ; preds = %bs_rbsp_trailing.exit.cleanup336.thread_crit_edge, %cleanup.thread.i.i
  %233 = phi i32 [ %inc.i1053, %bs_rbsp_trailing.exit.cleanup336.thread_crit_edge ], [ %.pre1330, %cleanup.thread.i.i ]
  %234 = phi ptr [ %.pre1329, %bs_rbsp_trailing.exit.cleanup336.thread_crit_edge ], [ %call.i.i1055, %cleanup.thread.i.i ]
  %sub321 = add nsw i32 %233, -1
  %idxprom322 = sext i32 %sub321 to i64
  %i_payload = getelementptr inbounds %struct.x264_nal_t, ptr %234, i64 %idxprom322, i32 2
  %235 = load i32, ptr %i_payload, align 8
  %b_annexb = getelementptr inbounds i8, ptr %h.addr.0, i64 640
  %236 = load i32, ptr %b_annexb, align 16
  %tobool326.not = icmp ne i32 %236, 0
  %tobool331 = icmp ne i32 %sub321, 0
  %spec.select = and i1 %tobool331, %tobool326.not
  %land.ext333.neg = sext i1 %spec.select to i32
  %sub334 = add i32 %235, 10
  %add335 = add i32 %sub334, %land.ext333.neg
  br label %if.end339

if.end339:                                        ; preds = %cleanup336.thread, %if.end288
  %overhead.1 = phi i32 [ 5, %if.end288 ], [ %add335, %cleanup336.thread ]
  %i_nal_type340 = getelementptr inbounds i8, ptr %h.addr.0, i64 1856
  store i32 %i_nal_type.0, ptr %i_nal_type340, align 16
  %i_nal_ref_idc341 = getelementptr inbounds i8, ptr %h.addr.0, i64 1860
  store i32 %i_nal_ref_idc.0, ptr %i_nal_ref_idc341, align 4
  %b_intra_refresh = getelementptr inbounds i8, ptr %h.addr.0, i64 96
  %237 = load i32, ptr %b_intra_refresh, align 16
  %tobool343.not = icmp eq i32 %237, 0
  br i1 %tobool343.not, label %if.end447, label %if.then344

if.then344:                                       ; preds = %if.end339
  %238 = load ptr, ptr %fenc153, align 8
  %i_type346 = getelementptr inbounds i8, ptr %238, i64 4
  %239 = load i32, ptr %i_type346, align 4
  switch i32 %239, label %if.end447 [
    i32 2, label %if.then352
    i32 1, label %if.then352
    i32 3, label %if.then362
  ]

if.then352:                                       ; preds = %if.then344, %if.then344
  %240 = load ptr, ptr %fdec.i982, align 16
  %i_frames_since_pir = getelementptr inbounds i8, ptr %240, i64 15624
  store i32 0, ptr %i_frames_since_pir, align 8
  %b_queued_intra_refresh = getelementptr inbounds i8, ptr %h.addr.0, i64 1892
  store i32 0, ptr %b_queued_intra_refresh, align 4
  %sps354 = getelementptr inbounds i8, ptr %h.addr.0, i64 3200
  %241 = load ptr, ptr %sps354, align 16
  %i_mb_width355 = getelementptr inbounds i8, ptr %241, i64 1084
  %242 = load i32, ptr %i_mb_width355, align 4
  %conv = sitofp i32 %242 to float
  %243 = load ptr, ptr %fdec.i982, align 16
  %f_pir_position = getelementptr inbounds i8, ptr %243, i64 15612
  store float %conv, ptr %f_pir_position, align 4
  br label %if.end447

if.then362:                                       ; preds = %if.then344
  %244 = load ptr, ptr %fdec.i982, align 16
  %245 = load i32, ptr %244, align 16
  %fref0 = getelementptr inbounds i8, ptr %h.addr.0, i64 14704
  %246 = load ptr, ptr %fref0, align 16
  %247 = load i32, ptr %246, align 16
  %sub367 = sub nsw i32 %245, %247
  %div = sdiv i32 %sub367, 2
  %sps368 = getelementptr inbounds i8, ptr %h.addr.0, i64 3200
  %248 = load ptr, ptr %sps368, align 16
  %i_mb_width369 = getelementptr inbounds i8, ptr %248, i64 1084
  %249 = load i32, ptr %i_mb_width369, align 4
  %conv370 = sitofp i32 %249 to float
  %sub371 = fadd float %conv370, -1.000000e+00
  %i_keyint_max373 = getelementptr inbounds i8, ptr %h.addr.0, i64 84
  %250 = load i32, ptr %i_keyint_max373, align 4
  %conv374 = sitofp i32 %250 to float
  %div375 = fdiv float %sub371, %conv374
  %cmp376 = fcmp ogt float %div375, 1.000000e+00
  %cond389 = select i1 %cmp376, float %div375, float 1.000000e+00
  %f_pir_position392 = getelementptr inbounds i8, ptr %246, i64 15612
  %251 = load float, ptr %f_pir_position392, align 4
  %f_pir_position394 = getelementptr inbounds i8, ptr %244, i64 15612
  store float %251, ptr %f_pir_position394, align 4
  %252 = load ptr, ptr %fref0, align 16
  %i_frames_since_pir397 = getelementptr inbounds i8, ptr %252, i64 15624
  %253 = load i32, ptr %i_frames_since_pir397, align 8
  %add398 = add nsw i32 %253, %div
  %254 = load ptr, ptr %fdec.i982, align 16
  %i_frames_since_pir400 = getelementptr inbounds i8, ptr %254, i64 15624
  store i32 %add398, ptr %i_frames_since_pir400, align 8
  %255 = load ptr, ptr %fdec.i982, align 16
  %i_frames_since_pir402 = getelementptr inbounds i8, ptr %255, i64 15624
  %256 = load i32, ptr %i_frames_since_pir402, align 8
  %257 = load i32, ptr %i_keyint_max373, align 4
  %cmp405.not = icmp slt i32 %256, %257
  br i1 %cmp405.not, label %lor.lhs.false407, label %if.then420

lor.lhs.false407:                                 ; preds = %if.then362
  %b_queued_intra_refresh408 = getelementptr inbounds i8, ptr %h.addr.0, i64 1892
  %258 = load i32, ptr %b_queued_intra_refresh408, align 4
  %tobool409.not = icmp eq i32 %258, 0
  br i1 %tobool409.not, label %if.end428, label %land.lhs.true410

land.lhs.true410:                                 ; preds = %lor.lhs.false407
  %f_pir_position412 = getelementptr inbounds i8, ptr %255, i64 15612
  %259 = load float, ptr %f_pir_position412, align 4
  %conv413 = fpext float %259 to double
  %add414 = fadd double %conv413, 5.000000e-01
  %260 = load ptr, ptr %sps368, align 16
  %i_mb_width416 = getelementptr inbounds i8, ptr %260, i64 1084
  %261 = load i32, ptr %i_mb_width416, align 4
  %conv417 = sitofp i32 %261 to double
  %cmp418 = fcmp ult double %add414, %conv417
  br i1 %cmp418, label %if.end428, label %if.then420

if.then420:                                       ; preds = %land.lhs.true410, %if.then362
  %f_pir_position422 = getelementptr inbounds i8, ptr %255, i64 15612
  store float 0.000000e+00, ptr %f_pir_position422, align 4
  %262 = load ptr, ptr %fdec.i982, align 16
  %i_frames_since_pir424 = getelementptr inbounds i8, ptr %262, i64 15624
  store i32 0, ptr %i_frames_since_pir424, align 8
  %b_queued_intra_refresh425 = getelementptr inbounds i8, ptr %h.addr.0, i64 1892
  store i32 0, ptr %b_queued_intra_refresh425, align 4
  %263 = load ptr, ptr %fenc153, align 8
  %b_keyframe427 = getelementptr inbounds i8, ptr %263, i64 80
  store i32 1, ptr %b_keyframe427, align 16
  %.pre1331 = load ptr, ptr %fdec.i982, align 16
  br label %if.end428

if.end428:                                        ; preds = %if.then420, %land.lhs.true410, %lor.lhs.false407
  %264 = phi ptr [ %.pre1331, %if.then420 ], [ %255, %land.lhs.true410 ], [ %255, %lor.lhs.false407 ]
  %f_pir_position430 = getelementptr inbounds i8, ptr %264, i64 15612
  %265 = load float, ptr %f_pir_position430, align 4
  %conv431 = fpext float %265 to double
  %add432 = fadd double %conv431, 5.000000e-01
  %conv433 = fptosi double %add432 to i32
  %i_pir_start_col = getelementptr inbounds i8, ptr %264, i64 15616
  store i32 %conv433, ptr %i_pir_start_col, align 16
  %conv435 = sitofp i32 %div to float
  %266 = load ptr, ptr %fdec.i982, align 16
  %f_pir_position438 = getelementptr inbounds i8, ptr %266, i64 15612
  %267 = load float, ptr %f_pir_position438, align 4
  %268 = call float @llvm.fmuladd.f32(float %cond389, float %conv435, float %267)
  store float %268, ptr %f_pir_position438, align 4
  %269 = load ptr, ptr %fdec.i982, align 16
  %f_pir_position440 = getelementptr inbounds i8, ptr %269, i64 15612
  %270 = load float, ptr %f_pir_position440, align 4
  %conv441 = fpext float %270 to double
  %add442 = fadd double %conv441, 5.000000e-01
  %conv443 = fptosi double %add442 to i32
  %i_pir_end_col = getelementptr inbounds i8, ptr %269, i64 15620
  store i32 %conv443, ptr %i_pir_end_col, align 4
  br label %if.end447

if.end447:                                        ; preds = %if.then344, %if.then352, %if.end428, %if.end339
  %271 = load ptr, ptr %fenc153, align 8
  %b_keyframe449 = getelementptr inbounds i8, ptr %271, i64 80
  %272 = load i32, ptr %b_keyframe449, align 16
  %tobool450.not = icmp eq i32 %272, 0
  br i1 %tobool450.not, label %if.end578, label %if.then451

if.then451:                                       ; preds = %if.end447
  %b_repeat_headers = getelementptr inbounds i8, ptr %h.addr.0, i64 636
  %273 = load i32, ptr %b_repeat_headers, align 4
  %tobool453.not = icmp eq i32 %273, 0
  br i1 %tobool453.not, label %if.end529, label %if.then454

if.then454:                                       ; preds = %if.then451
  %out.i1056 = getelementptr inbounds i8, ptr %h.addr.0, i64 1760
  %nal1.i1057 = getelementptr inbounds i8, ptr %h.addr.0, i64 1768
  %274 = load ptr, ptr %nal1.i1057, align 8
  %275 = load i32, ptr %out.i1056, align 16
  %idxprom.i1058 = sext i32 %275 to i64
  %arrayidx.i1059 = getelementptr inbounds %struct.x264_nal_t, ptr %274, i64 %idxprom.i1058
  store i32 3, ptr %arrayidx.i1059, align 8
  %i_type4.i1060 = getelementptr inbounds i8, ptr %arrayidx.i1059, i64 4
  store i32 7, ptr %i_type4.i1060, align 4
  %i_payload.i1061 = getelementptr inbounds i8, ptr %arrayidx.i1059, i64 8
  store i32 0, ptr %i_payload.i1061, align 8
  %p_bitstream.i1062 = getelementptr inbounds i8, ptr %h.addr.0, i64 1784
  %276 = load ptr, ptr %p_bitstream.i1062, align 8
  %bs.i1063 = getelementptr inbounds i8, ptr %h.addr.0, i64 1792
  %p.i.i1064 = getelementptr inbounds i8, ptr %h.addr.0, i64 1800
  %277 = load ptr, ptr %p.i.i1064, align 8
  %278 = load ptr, ptr %bs.i1063, align 8
  %sub.ptr.lhs.cast.i.i1065 = ptrtoint ptr %277 to i64
  %sub.ptr.rhs.cast.i.i1066 = ptrtoint ptr %278 to i64
  %sub.ptr.sub.i.i1067 = sub i64 %sub.ptr.lhs.cast.i.i1065, %sub.ptr.rhs.cast.i.i1066
  %i_left.i.i1068 = getelementptr inbounds i8, ptr %h.addr.0, i64 1824
  %279 = load i32, ptr %i_left.i.i1068, align 8
  %sub.ptr.sub.tr.i.i1069 = trunc i64 %sub.ptr.sub.i.i1067 to i32
  %280 = shl i32 %sub.ptr.sub.tr.i.i1069, 3
  %reass.sub1308 = sub i32 %280, %279
  %conv1.i.i1071 = add i32 %reass.sub1308, 64
  %div.i1072 = sdiv i32 %conv1.i.i1071, 8
  %idxprom7.i1073 = sext i32 %div.i1072 to i64
  %arrayidx8.i1074 = getelementptr inbounds i8, ptr %276, i64 %idxprom7.i1073
  %p_payload.i1075 = getelementptr inbounds i8, ptr %arrayidx.i1059, i64 16
  store ptr %arrayidx8.i1074, ptr %p_payload.i1075, align 8
  %sps457 = getelementptr inbounds i8, ptr %h.addr.0, i64 3200
  %281 = load ptr, ptr %sps457, align 16
  call void @x264_sps_write(ptr noundef nonnull %bs.i1063, ptr noundef %281) #17
  %282 = load ptr, ptr %nal1.i1057, align 8
  %283 = load i32, ptr %out.i1056, align 16
  %idxprom.i1078 = sext i32 %283 to i64
  %arrayidx.i1079 = getelementptr inbounds %struct.x264_nal_t, ptr %282, i64 %idxprom.i1078
  %284 = load ptr, ptr %p_bitstream.i1062, align 8
  %285 = load ptr, ptr %p.i.i1064, align 8
  %286 = load ptr, ptr %bs.i1063, align 8
  %sub.ptr.lhs.cast.i.i1083 = ptrtoint ptr %285 to i64
  %sub.ptr.rhs.cast.i.i1084 = ptrtoint ptr %286 to i64
  %sub.ptr.sub.i.i1085 = sub i64 %sub.ptr.lhs.cast.i.i1083, %sub.ptr.rhs.cast.i.i1084
  %287 = load i32, ptr %i_left.i.i1068, align 8
  %sub.ptr.sub.tr.i.i1087 = trunc i64 %sub.ptr.sub.i.i1085 to i32
  %288 = shl i32 %sub.ptr.sub.tr.i.i1087, 3
  %reass.sub1309 = sub i32 %288, %287
  %conv1.i.i1089 = add i32 %reass.sub1309, 64
  %div.i1090 = sdiv i32 %conv1.i.i1089, 8
  %idxprom5.i1091 = sext i32 %div.i1090 to i64
  %arrayidx6.i1092 = getelementptr inbounds i8, ptr %284, i64 %idxprom5.i1091
  %p_payload.i1093 = getelementptr inbounds i8, ptr %arrayidx.i1079, i64 16
  %289 = load ptr, ptr %p_payload.i1093, align 8
  %sub.ptr.lhs.cast.i1094 = ptrtoint ptr %arrayidx6.i1092 to i64
  %sub.ptr.rhs.cast.i1095 = ptrtoint ptr %289 to i64
  %sub.ptr.sub.i1096 = sub i64 %sub.ptr.lhs.cast.i1094, %sub.ptr.rhs.cast.i1095
  %conv.i1097 = trunc i64 %sub.ptr.sub.i1096 to i32
  %i_payload.i1098 = getelementptr inbounds i8, ptr %arrayidx.i1079, i64 8
  store i32 %conv.i1097, ptr %i_payload.i1098, align 8
  %290 = load i32, ptr %out.i1056, align 16
  %inc.i1099 = add nsw i32 %290, 1
  store i32 %inc.i1099, ptr %out.i1056, align 16
  %i_nals_allocated.i.i1100 = getelementptr inbounds i8, ptr %h.addr.0, i64 1764
  %291 = load i32, ptr %i_nals_allocated.i.i1100, align 4
  %cmp.not.i.i1101 = icmp slt i32 %inc.i1099, %291
  br i1 %cmp.not.i.i1101, label %if.then454.if.end461_crit_edge, label %if.then.i.i1102

if.then454.if.end461_crit_edge:                   ; preds = %if.then454
  %.pre1332 = load ptr, ptr %nal1.i1057, align 8
  br label %if.end461

if.then.i.i1102:                                  ; preds = %if.then454
  %mul4.i.i1103 = mul i32 %291, 48
  %call.i.i1104 = call ptr @x264_malloc(i32 noundef %mul4.i.i1103) #17
  %tobool.not.i.i1105 = icmp eq ptr %call.i.i1104, null
  br i1 %tobool.not.i.i1105, label %cleanup675, label %cleanup.thread.i.i1106

cleanup.thread.i.i1106:                           ; preds = %if.then.i.i1102
  %292 = load ptr, ptr %nal1.i1057, align 8
  %293 = load i32, ptr %i_nals_allocated.i.i1100, align 4
  %conv10.i.i1107 = sext i32 %293 to i64
  %mul11.i.i1108 = mul nsw i64 %conv10.i.i1107, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call.i.i1104, ptr align 8 %292, i64 %mul11.i.i1108, i1 false)
  %294 = load ptr, ptr %nal1.i1057, align 8
  call void @x264_free(ptr noundef %294) #17
  store ptr %call.i.i1104, ptr %nal1.i1057, align 8
  %295 = load i32, ptr %i_nals_allocated.i.i1100, align 4
  %mul18.i.i1109 = shl nsw i32 %295, 1
  store i32 %mul18.i.i1109, ptr %i_nals_allocated.i.i1100, align 4
  %.pre1333 = load i32, ptr %out.i1056, align 16
  br label %if.end461

if.end461:                                        ; preds = %if.then454.if.end461_crit_edge, %cleanup.thread.i.i1106
  %296 = phi i32 [ %inc.i1099, %if.then454.if.end461_crit_edge ], [ %.pre1333, %cleanup.thread.i.i1106 ]
  %297 = phi ptr [ %.pre1332, %if.then454.if.end461_crit_edge ], [ %call.i.i1104, %cleanup.thread.i.i1106 ]
  %298 = sext i32 %296 to i64
  %299 = getelementptr %struct.x264_nal_t, ptr %297, i64 %298
  %i_payload469 = getelementptr i8, ptr %299, i64 -16
  %300 = load i32, ptr %i_payload469, align 8
  store i32 3, ptr %299, align 8
  %i_type4.i1116 = getelementptr inbounds i8, ptr %299, i64 4
  store i32 8, ptr %i_type4.i1116, align 4
  %i_payload.i1117 = getelementptr inbounds i8, ptr %299, i64 8
  store i32 0, ptr %i_payload.i1117, align 8
  %301 = load ptr, ptr %p_bitstream.i1062, align 8
  %302 = load ptr, ptr %p.i.i1064, align 8
  %303 = load ptr, ptr %bs.i1063, align 8
  %sub.ptr.lhs.cast.i.i1121 = ptrtoint ptr %302 to i64
  %sub.ptr.rhs.cast.i.i1122 = ptrtoint ptr %303 to i64
  %sub.ptr.sub.i.i1123 = sub i64 %sub.ptr.lhs.cast.i.i1121, %sub.ptr.rhs.cast.i.i1122
  %304 = load i32, ptr %i_left.i.i1068, align 8
  %sub.ptr.sub.tr.i.i1125 = trunc i64 %sub.ptr.sub.i.i1123 to i32
  %305 = shl i32 %sub.ptr.sub.tr.i.i1125, 3
  %reass.sub1310 = sub i32 %305, %304
  %conv1.i.i1127 = add i32 %reass.sub1310, 64
  %div.i1128 = sdiv i32 %conv1.i.i1127, 8
  %idxprom7.i1129 = sext i32 %div.i1128 to i64
  %arrayidx8.i1130 = getelementptr inbounds i8, ptr %301, i64 %idxprom7.i1129
  %p_payload.i1131 = getelementptr inbounds i8, ptr %299, i64 16
  store ptr %arrayidx8.i1130, ptr %p_payload.i1131, align 8
  %pps = getelementptr inbounds i8, ptr %h.addr.0, i64 3328
  %306 = load ptr, ptr %pps, align 16
  call void @x264_pps_write(ptr noundef nonnull %bs.i1063, ptr noundef %306) #17
  %call474 = call fastcc i32 @x264_nal_end(ptr noundef nonnull %h.addr.0)
  %tobool475.not = icmp eq i32 %call474, 0
  br i1 %tobool475.not, label %if.end488, label %cleanup675

if.end488:                                        ; preds = %if.end461
  %307 = load ptr, ptr %nal1.i1057, align 8
  %308 = load i32, ptr %out.i1056, align 16
  %309 = sext i32 %308 to i64
  %310 = getelementptr %struct.x264_nal_t, ptr %307, i64 %309
  %i_payload485 = getelementptr i8, ptr %310, i64 -16
  %311 = load i32, ptr %i_payload485, align 8
  %add470 = add i32 %overhead.1, 10
  %add471 = add i32 %add470, %300
  %add487 = add i32 %add471, %311
  %.pr = load i32, ptr %b_repeat_headers, align 4
  %tobool491.not = icmp eq i32 %.pr, 0
  %.pre1335 = load ptr, ptr %fenc153, align 8
  br i1 %tobool491.not, label %if.end529, label %land.lhs.true492

land.lhs.true492:                                 ; preds = %if.end488
  %i_frame494 = getelementptr inbounds i8, ptr %.pre1335, i64 56
  %312 = load i32, ptr %i_frame494, align 8
  %cmp495 = icmp eq i32 %312, 0
  br i1 %cmp495, label %if.then497, label %if.end529

if.then497:                                       ; preds = %land.lhs.true492
  store i32 0, ptr %310, align 8
  %i_type4.i1136 = getelementptr inbounds i8, ptr %310, i64 4
  store i32 6, ptr %i_type4.i1136, align 4
  %i_payload.i1137 = getelementptr inbounds i8, ptr %310, i64 8
  store i32 0, ptr %i_payload.i1137, align 8
  %313 = load ptr, ptr %p_bitstream.i1062, align 8
  %314 = load ptr, ptr %p.i.i1064, align 8
  %315 = load ptr, ptr %bs.i1063, align 8
  %sub.ptr.lhs.cast.i.i1141 = ptrtoint ptr %314 to i64
  %sub.ptr.rhs.cast.i.i1142 = ptrtoint ptr %315 to i64
  %sub.ptr.sub.i.i1143 = sub i64 %sub.ptr.lhs.cast.i.i1141, %sub.ptr.rhs.cast.i.i1142
  %316 = load i32, ptr %i_left.i.i1068, align 8
  %sub.ptr.sub.tr.i.i1145 = trunc i64 %sub.ptr.sub.i.i1143 to i32
  %317 = shl i32 %sub.ptr.sub.tr.i.i1145, 3
  %reass.sub1311 = sub i32 %317, %316
  %conv1.i.i1147 = add i32 %reass.sub1311, 64
  %div.i1148 = sdiv i32 %conv1.i.i1147, 8
  %idxprom7.i1149 = sext i32 %div.i1148 to i64
  %arrayidx8.i1150 = getelementptr inbounds i8, ptr %313, i64 %idxprom7.i1149
  %p_payload.i1151 = getelementptr inbounds i8, ptr %310, i64 16
  store ptr %arrayidx8.i1150, ptr %p_payload.i1151, align 8
  %call500 = call i32 @x264_sei_version_write(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %bs.i1063) #17
  %tobool501.not = icmp eq i32 %call500, 0
  br i1 %tobool501.not, label %if.end503, label %cleanup675

if.end503:                                        ; preds = %if.then497
  %call504 = call fastcc i32 @x264_nal_end(ptr noundef nonnull %h.addr.0)
  %tobool505.not = icmp eq i32 %call504, 0
  br i1 %tobool505.not, label %if.end507, label %cleanup675

if.end507:                                        ; preds = %if.end503
  %318 = load ptr, ptr %nal1.i1057, align 8
  %319 = load i32, ptr %out.i1056, align 16
  %sub512 = add nsw i32 %319, -1
  %idxprom513 = sext i32 %sub512 to i64
  %i_payload515 = getelementptr inbounds %struct.x264_nal_t, ptr %318, i64 %idxprom513, i32 2
  %320 = load i32, ptr %i_payload515, align 8
  %b_annexb518 = getelementptr inbounds i8, ptr %h.addr.0, i64 640
  %321 = load i32, ptr %b_annexb518, align 16
  %tobool519.not = icmp ne i32 %321, 0
  %tobool524 = icmp ne i32 %sub512, 0
  %spec.select981 = and i1 %tobool524, %tobool519.not
  %land.ext526.neg = sext i1 %spec.select981 to i32
  %add516 = add i32 %add487, 5
  %sub527 = add i32 %add516, %320
  %add528 = add i32 %sub527, %land.ext526.neg
  %.pre1334 = load ptr, ptr %fenc153, align 8
  br label %if.end529

if.end529:                                        ; preds = %if.then451, %if.end507, %land.lhs.true492, %if.end488
  %322 = phi ptr [ %.pre1334, %if.end507 ], [ %.pre1335, %land.lhs.true492 ], [ %.pre1335, %if.end488 ], [ %271, %if.then451 ]
  %overhead.3 = phi i32 [ %add528, %if.end507 ], [ %add487, %land.lhs.true492 ], [ %add487, %if.end488 ], [ %overhead.1, %if.then451 ]
  %i_type531 = getelementptr inbounds i8, ptr %322, i64 4
  %323 = load i32, ptr %i_type531, align 4
  %cmp532.not = icmp eq i32 %323, 1
  br i1 %cmp532.not, label %if.end578, label %if.then534

if.then534:                                       ; preds = %if.end529
  %sps535 = getelementptr inbounds i8, ptr %h.addr.0, i64 3200
  %324 = load ptr, ptr %sps535, align 16
  %i_mb_width536 = getelementptr inbounds i8, ptr %324, i64 1084
  %325 = load i32, ptr %i_mb_width536, align 4
  %i_keyint_max539 = getelementptr inbounds i8, ptr %h.addr.0, i64 84
  %326 = load i32, ptr %i_keyint_max539, align 4
  %cmp540.not = icmp sgt i32 %325, %326
  %sub537 = add nsw i32 %325, -1
  %cond550 = select i1 %cmp540.not, i32 %326, i32 %sub537
  %i_bframe = getelementptr inbounds i8, ptr %h.addr.0, i64 100
  %327 = load i32, ptr %i_bframe, align 4
  %add552 = add nsw i32 %cond550, %327
  %out.i1152 = getelementptr inbounds i8, ptr %h.addr.0, i64 1760
  %nal1.i1153 = getelementptr inbounds i8, ptr %h.addr.0, i64 1768
  %328 = load ptr, ptr %nal1.i1153, align 8
  %329 = load i32, ptr %out.i1152, align 16
  %idxprom.i1154 = sext i32 %329 to i64
  %arrayidx.i1155 = getelementptr inbounds %struct.x264_nal_t, ptr %328, i64 %idxprom.i1154
  store i32 0, ptr %arrayidx.i1155, align 8
  %i_type4.i1156 = getelementptr inbounds i8, ptr %arrayidx.i1155, i64 4
  store i32 6, ptr %i_type4.i1156, align 4
  %i_payload.i1157 = getelementptr inbounds i8, ptr %arrayidx.i1155, i64 8
  store i32 0, ptr %i_payload.i1157, align 8
  %p_bitstream.i1158 = getelementptr inbounds i8, ptr %h.addr.0, i64 1784
  %330 = load ptr, ptr %p_bitstream.i1158, align 8
  %bs.i1159 = getelementptr inbounds i8, ptr %h.addr.0, i64 1792
  %p.i.i1160 = getelementptr inbounds i8, ptr %h.addr.0, i64 1800
  %331 = load ptr, ptr %p.i.i1160, align 8
  %332 = load ptr, ptr %bs.i1159, align 8
  %sub.ptr.lhs.cast.i.i1161 = ptrtoint ptr %331 to i64
  %sub.ptr.rhs.cast.i.i1162 = ptrtoint ptr %332 to i64
  %sub.ptr.sub.i.i1163 = sub i64 %sub.ptr.lhs.cast.i.i1161, %sub.ptr.rhs.cast.i.i1162
  %i_left.i.i1164 = getelementptr inbounds i8, ptr %h.addr.0, i64 1824
  %333 = load i32, ptr %i_left.i.i1164, align 8
  %sub.ptr.sub.tr.i.i1165 = trunc i64 %sub.ptr.sub.i.i1163 to i32
  %334 = shl i32 %sub.ptr.sub.tr.i.i1165, 3
  %reass.sub1312 = sub i32 %334, %333
  %conv1.i.i1167 = add i32 %reass.sub1312, 64
  %div.i1168 = sdiv i32 %conv1.i.i1167, 8
  %idxprom7.i1169 = sext i32 %div.i1168 to i64
  %arrayidx8.i1170 = getelementptr inbounds i8, ptr %330, i64 %idxprom7.i1169
  %p_payload.i1171 = getelementptr inbounds i8, ptr %arrayidx.i1155, i64 16
  store ptr %arrayidx8.i1170, ptr %p_payload.i1171, align 8
  call void @x264_sei_recovery_point_write(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %bs.i1159, i32 noundef %add552) #17
  %call555 = call fastcc i32 @x264_nal_end(ptr noundef nonnull %h.addr.0)
  %335 = load ptr, ptr %nal1.i1153, align 8
  %336 = load i32, ptr %out.i1152, align 16
  %sub560 = add nsw i32 %336, -1
  %idxprom561 = sext i32 %sub560 to i64
  %i_payload563 = getelementptr inbounds %struct.x264_nal_t, ptr %335, i64 %idxprom561, i32 2
  %337 = load i32, ptr %i_payload563, align 8
  %b_annexb566 = getelementptr inbounds i8, ptr %h.addr.0, i64 640
  %338 = load i32, ptr %b_annexb566, align 16
  %tobool567.not = icmp ne i32 %338, 0
  %tobool572 = icmp ne i32 %sub560, 0
  %narrow = and i1 %tobool572, %tobool567.not
  %land.ext574.neg = sext i1 %narrow to i32
  %add564 = add i32 %overhead.3, 5
  %sub575 = add i32 %add564, %337
  %add576 = add i32 %sub575, %land.ext574.neg
  br label %if.end578

if.end578:                                        ; preds = %if.end529, %if.then534, %if.end447
  %overhead.4 = phi i32 [ %add576, %if.then534 ], [ %overhead.3, %if.end529 ], [ %overhead.1, %if.end447 ]
  %sps579 = getelementptr inbounds i8, ptr %h.addr.0, i64 3200
  %339 = load ptr, ptr %sps579, align 16
  %b_pic_struct_present = getelementptr inbounds i8, ptr %339, i64 1260
  %340 = load i32, ptr %b_pic_struct_present, align 4
  %tobool580.not = icmp eq i32 %340, 0
  br i1 %tobool580.not, label %lor.lhs.false581, label %if.then585

lor.lhs.false581:                                 ; preds = %if.end578
  %b_nal_hrd_parameters_present = getelementptr inbounds i8, ptr %339, i64 1204
  %341 = load i32, ptr %b_nal_hrd_parameters_present, align 4
  %tobool584.not = icmp eq i32 %341, 0
  br i1 %tobool584.not, label %if.end613, label %if.then585

if.then585:                                       ; preds = %lor.lhs.false581, %if.end578
  %out.i1172 = getelementptr inbounds i8, ptr %h.addr.0, i64 1760
  %nal1.i1173 = getelementptr inbounds i8, ptr %h.addr.0, i64 1768
  %342 = load ptr, ptr %nal1.i1173, align 8
  %343 = load i32, ptr %out.i1172, align 16
  %idxprom.i1174 = sext i32 %343 to i64
  %arrayidx.i1175 = getelementptr inbounds %struct.x264_nal_t, ptr %342, i64 %idxprom.i1174
  store i32 0, ptr %arrayidx.i1175, align 8
  %i_type4.i1176 = getelementptr inbounds i8, ptr %arrayidx.i1175, i64 4
  store i32 6, ptr %i_type4.i1176, align 4
  %i_payload.i1177 = getelementptr inbounds i8, ptr %arrayidx.i1175, i64 8
  store i32 0, ptr %i_payload.i1177, align 8
  %p_bitstream.i1178 = getelementptr inbounds i8, ptr %h.addr.0, i64 1784
  %344 = load ptr, ptr %p_bitstream.i1178, align 8
  %bs.i1179 = getelementptr inbounds i8, ptr %h.addr.0, i64 1792
  %p.i.i1180 = getelementptr inbounds i8, ptr %h.addr.0, i64 1800
  %345 = load ptr, ptr %p.i.i1180, align 8
  %346 = load ptr, ptr %bs.i1179, align 8
  %sub.ptr.lhs.cast.i.i1181 = ptrtoint ptr %345 to i64
  %sub.ptr.rhs.cast.i.i1182 = ptrtoint ptr %346 to i64
  %sub.ptr.sub.i.i1183 = sub i64 %sub.ptr.lhs.cast.i.i1181, %sub.ptr.rhs.cast.i.i1182
  %i_left.i.i1184 = getelementptr inbounds i8, ptr %h.addr.0, i64 1824
  %347 = load i32, ptr %i_left.i.i1184, align 8
  %sub.ptr.sub.tr.i.i1185 = trunc i64 %sub.ptr.sub.i.i1183 to i32
  %348 = shl i32 %sub.ptr.sub.tr.i.i1185, 3
  %reass.sub1313 = sub i32 %348, %347
  %conv1.i.i1187 = add i32 %reass.sub1313, 64
  %div.i1188 = sdiv i32 %conv1.i.i1187, 8
  %idxprom7.i1189 = sext i32 %div.i1188 to i64
  %arrayidx8.i1190 = getelementptr inbounds i8, ptr %344, i64 %idxprom7.i1189
  %p_payload.i1191 = getelementptr inbounds i8, ptr %arrayidx.i1175, i64 16
  store ptr %arrayidx8.i1190, ptr %p_payload.i1191, align 8
  call void @x264_sei_pic_timing_write(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %bs.i1179) #17
  %349 = load ptr, ptr %nal1.i1173, align 8
  %350 = load i32, ptr %out.i1172, align 16
  %idxprom.i1194 = sext i32 %350 to i64
  %arrayidx.i1195 = getelementptr inbounds %struct.x264_nal_t, ptr %349, i64 %idxprom.i1194
  %351 = load ptr, ptr %p_bitstream.i1178, align 8
  %352 = load ptr, ptr %p.i.i1180, align 8
  %353 = load ptr, ptr %bs.i1179, align 8
  %sub.ptr.lhs.cast.i.i1199 = ptrtoint ptr %352 to i64
  %sub.ptr.rhs.cast.i.i1200 = ptrtoint ptr %353 to i64
  %sub.ptr.sub.i.i1201 = sub i64 %sub.ptr.lhs.cast.i.i1199, %sub.ptr.rhs.cast.i.i1200
  %354 = load i32, ptr %i_left.i.i1184, align 8
  %sub.ptr.sub.tr.i.i1203 = trunc i64 %sub.ptr.sub.i.i1201 to i32
  %355 = shl i32 %sub.ptr.sub.tr.i.i1203, 3
  %reass.sub1314 = sub i32 %355, %354
  %conv1.i.i1205 = add i32 %reass.sub1314, 64
  %div.i1206 = sdiv i32 %conv1.i.i1205, 8
  %idxprom5.i1207 = sext i32 %div.i1206 to i64
  %arrayidx6.i1208 = getelementptr inbounds i8, ptr %351, i64 %idxprom5.i1207
  %p_payload.i1209 = getelementptr inbounds i8, ptr %arrayidx.i1195, i64 16
  %356 = load ptr, ptr %p_payload.i1209, align 8
  %sub.ptr.lhs.cast.i1210 = ptrtoint ptr %arrayidx6.i1208 to i64
  %sub.ptr.rhs.cast.i1211 = ptrtoint ptr %356 to i64
  %sub.ptr.sub.i1212 = sub i64 %sub.ptr.lhs.cast.i1210, %sub.ptr.rhs.cast.i1211
  %conv.i1213 = trunc i64 %sub.ptr.sub.i1212 to i32
  %i_payload.i1214 = getelementptr inbounds i8, ptr %arrayidx.i1195, i64 8
  store i32 %conv.i1213, ptr %i_payload.i1214, align 8
  %357 = load i32, ptr %out.i1172, align 16
  %inc.i1215 = add nsw i32 %357, 1
  store i32 %inc.i1215, ptr %out.i1172, align 16
  %i_nals_allocated.i.i1216 = getelementptr inbounds i8, ptr %h.addr.0, i64 1764
  %358 = load i32, ptr %i_nals_allocated.i.i1216, align 4
  %cmp.not.i.i1217 = icmp slt i32 %inc.i1215, %358
  br i1 %cmp.not.i.i1217, label %if.then585.if.end591_crit_edge, label %if.then.i.i1218

if.then585.if.end591_crit_edge:                   ; preds = %if.then585
  %.pre1336 = load ptr, ptr %nal1.i1173, align 8
  br label %if.end591

if.then.i.i1218:                                  ; preds = %if.then585
  %mul4.i.i1219 = mul i32 %358, 48
  %call.i.i1220 = call ptr @x264_malloc(i32 noundef %mul4.i.i1219) #17
  %tobool.not.i.i1221 = icmp eq ptr %call.i.i1220, null
  br i1 %tobool.not.i.i1221, label %cleanup675, label %cleanup.thread.i.i1222

cleanup.thread.i.i1222:                           ; preds = %if.then.i.i1218
  %359 = load ptr, ptr %nal1.i1173, align 8
  %360 = load i32, ptr %i_nals_allocated.i.i1216, align 4
  %conv10.i.i1223 = sext i32 %360 to i64
  %mul11.i.i1224 = mul nsw i64 %conv10.i.i1223, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call.i.i1220, ptr align 8 %359, i64 %mul11.i.i1224, i1 false)
  %361 = load ptr, ptr %nal1.i1173, align 8
  call void @x264_free(ptr noundef %361) #17
  store ptr %call.i.i1220, ptr %nal1.i1173, align 8
  %362 = load i32, ptr %i_nals_allocated.i.i1216, align 4
  %mul18.i.i1225 = shl nsw i32 %362, 1
  store i32 %mul18.i.i1225, ptr %i_nals_allocated.i.i1216, align 4
  %.pre1337 = load i32, ptr %out.i1172, align 16
  br label %if.end591

if.end591:                                        ; preds = %if.then585.if.end591_crit_edge, %cleanup.thread.i.i1222
  %363 = phi i32 [ %inc.i1215, %if.then585.if.end591_crit_edge ], [ %.pre1337, %cleanup.thread.i.i1222 ]
  %364 = phi ptr [ %.pre1336, %if.then585.if.end591_crit_edge ], [ %call.i.i1220, %cleanup.thread.i.i1222 ]
  %sub596 = add nsw i32 %363, -1
  %idxprom597 = sext i32 %sub596 to i64
  %i_payload599 = getelementptr inbounds %struct.x264_nal_t, ptr %364, i64 %idxprom597, i32 2
  %365 = load i32, ptr %i_payload599, align 8
  %b_annexb602 = getelementptr inbounds i8, ptr %h.addr.0, i64 640
  %366 = load i32, ptr %b_annexb602, align 16
  %tobool603.not = icmp ne i32 %366, 0
  %tobool608 = icmp ne i32 %sub596, 0
  %narrow1290 = and i1 %tobool608, %tobool603.not
  %land.ext610.neg = sext i1 %narrow1290 to i32
  %add600 = add i32 %overhead.4, 5
  %sub611 = add i32 %add600, %365
  %add612 = add i32 %sub611, %land.ext610.neg
  br label %if.end613

if.end613:                                        ; preds = %if.end591, %lor.lhs.false581
  %overhead.5 = phi i32 [ %add612, %if.end591 ], [ %overhead.4, %lor.lhs.false581 ]
  %367 = load ptr, ptr %fenc153, align 8
  %i_qpplus1 = getelementptr inbounds i8, ptr %367, i64 8
  %368 = load i32, ptr %i_qpplus1, align 8
  %mul615 = shl nsw i32 %overhead.5, 3
  call void @x264_ratecontrol_start(ptr noundef nonnull %h.addr.0, i32 noundef %368, i32 noundef %mul615) #17
  %call616 = call i32 @x264_ratecontrol_qp(ptr noundef nonnull %h.addr.0) #17
  %add617 = add nsw i32 %call616, 1
  %369 = load ptr, ptr %fdec.i982, align 16
  %i_qpplus1619 = getelementptr inbounds i8, ptr %369, i64 8
  store i32 %add617, ptr %i_qpplus1619, align 8
  %i_qpplus1620 = getelementptr inbounds i8, ptr %pic_out, i64 4
  store i32 %add617, ptr %i_qpplus1620, align 4
  %b_stat_read623 = getelementptr inbounds i8, ptr %h.addr.0, i64 576
  %370 = load i32, ptr %b_stat_read623, align 8
  %tobool624.not = icmp eq i32 %370, 0
  br i1 %tobool624.not, label %if.end632, label %land.lhs.true625

land.lhs.true625:                                 ; preds = %if.end613
  %371 = load i32, ptr %i_type.i, align 16
  %cmp628.not = icmp eq i32 %371, 2
  br i1 %cmp628.not, label %if.end632, label %if.then630

if.then630:                                       ; preds = %land.lhs.true625
  %call631 = call i32 @x264_reference_build_list_optimal(ptr noundef nonnull %h.addr.0) #17
  call fastcc void @x264_reference_check_reorder(ptr noundef nonnull %h.addr.0)
  br label %if.end632

if.end632:                                        ; preds = %if.then630, %land.lhs.true625, %if.end613
  %372 = load i32, ptr %i_ref0.i, align 8
  %tobool633.not = icmp eq i32 %372, 0
  br i1 %tobool633.not, label %if.end639, label %if.then634

if.then634:                                       ; preds = %if.end632
  %fref0635 = getelementptr inbounds i8, ptr %h.addr.0, i64 14704
  %373 = load ptr, ptr %fref0635, align 16
  %374 = load i32, ptr %373, align 16
  %375 = load ptr, ptr %fdec.i982, align 16
  %i_poc_l0ref0 = getelementptr inbounds i8, ptr %375, i64 96
  store i32 %374, ptr %i_poc_l0ref0, align 16
  br label %if.end639

if.end639:                                        ; preds = %if.then634, %if.end632
  %376 = load i32, ptr %i_type.i, align 16
  %cmp642 = icmp eq i32 %376, 1
  br i1 %cmp642, label %if.then644, label %if.end645

if.then644:                                       ; preds = %if.end639
  call void @x264_macroblock_bipred_init(ptr noundef nonnull %h.addr.0) #17
  br label %if.end645

if.end645:                                        ; preds = %if.then644, %if.end639
  %377 = load i32, ptr %i_ref0.i, align 8
  %cmp256.i = icmp sgt i32 %377, 0
  br i1 %cmp256.i, label %for.body.lr.ph.i1247, label %for.cond.cleanup.i1229

for.body.lr.ph.i1247:                             ; preds = %if.end645
  %fref0.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14704
  br label %for.body.i1249

for.cond.cleanup.i1229:                           ; preds = %for.body.i1249, %if.end645
  %378 = load ptr, ptr %fenc153, align 8
  %i_lines_weighted.i = getelementptr inbounds i8, ptr %378, i64 15596
  store i32 0, ptr %i_lines_weighted.i, align 4
  %379 = load i32, ptr %i_ref0.i, align 8
  %b_mbaff.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7268
  %380 = load i32, ptr %b_mbaff.i, align 4
  %shl.i1230 = shl i32 %379, %380
  %cmp8259.i = icmp sgt i32 %shl.i1230, 0
  br i1 %cmp8259.i, label %for.cond11.preheader.lr.ph.i, label %for.cond.cleanup9.i

for.cond11.preheader.lr.ph.i:                     ; preds = %for.cond.cleanup.i1229
  %weight.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7584
  %wide.trip.count.i1244 = zext nneg i32 %shl.i1230 to i64
  %min.iters.check = icmp ult i32 %shl.i1230, 4
  br i1 %min.iters.check, label %for.cond11.preheader.i.preheader, label %vector.ph

for.cond11.preheader.i.preheader:                 ; preds = %middle.block, %for.cond11.preheader.lr.ph.i
  %indvars.iv269.i.ph = phi i64 [ 0, %for.cond11.preheader.lr.ph.i ], [ %n.vec, %middle.block ]
  %xtraiter = and i64 %wide.trip.count.i1244, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond11.preheader.i.prol.loopexit, label %for.cond11.preheader.i.prol

for.cond11.preheader.i.prol:                      ; preds = %for.cond11.preheader.i.preheader
  %weightfn.i1245.prol = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %indvars.iv269.i.ph, i64 0, i32 5
  store ptr null, ptr %weightfn.i1245.prol, align 16
  %weightfn.1.i.prol = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %indvars.iv269.i.ph, i64 1, i32 5
  store ptr null, ptr %weightfn.1.i.prol, align 16
  %weightfn.2.i.prol = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %indvars.iv269.i.ph, i64 2, i32 5
  store ptr null, ptr %weightfn.2.i.prol, align 16
  %indvars.iv.next270.i.prol = or disjoint i64 %indvars.iv269.i.ph, 1
  br label %for.cond11.preheader.i.prol.loopexit

for.cond11.preheader.i.prol.loopexit:             ; preds = %for.cond11.preheader.i.prol, %for.cond11.preheader.i.preheader
  %indvars.iv269.i.unr = phi i64 [ %indvars.iv269.i.ph, %for.cond11.preheader.i.preheader ], [ %indvars.iv.next270.i.prol, %for.cond11.preheader.i.prol ]
  %381 = add nsw i64 %wide.trip.count.i1244, -1
  %382 = icmp eq i64 %indvars.iv269.i.ph, %381
  br i1 %382, label %for.cond.cleanup9.i, label %for.cond11.preheader.i

vector.ph:                                        ; preds = %for.cond11.preheader.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i1244, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %383 = or disjoint i64 %index, 1
  %384 = or disjoint i64 %index, 2
  %385 = or disjoint i64 %index, 3
  %386 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %index, i64 0, i32 5
  %387 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %383, i64 0, i32 5
  %388 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %384, i64 0, i32 5
  %389 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %385, i64 0, i32 5
  store ptr null, ptr %386, align 16
  store ptr null, ptr %387, align 16
  store ptr null, ptr %388, align 16
  store ptr null, ptr %389, align 16
  %390 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %index, i64 1, i32 5
  %391 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %383, i64 1, i32 5
  %392 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %384, i64 1, i32 5
  %393 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %385, i64 1, i32 5
  store ptr null, ptr %390, align 16
  store ptr null, ptr %391, align 16
  store ptr null, ptr %392, align 16
  store ptr null, ptr %393, align 16
  %394 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %index, i64 2, i32 5
  %395 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %383, i64 2, i32 5
  %396 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %384, i64 2, i32 5
  %397 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %385, i64 2, i32 5
  store ptr null, ptr %394, align 16
  store ptr null, ptr %395, align 16
  store ptr null, ptr %396, align 16
  store ptr null, ptr %397, align 16
  %index.next = add nuw i64 %index, 4
  %398 = icmp eq i64 %index.next, %n.vec
  br i1 %398, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i1244
  br i1 %cmp.n, label %for.cond.cleanup9.i, label %for.cond11.preheader.i.preheader

for.body.i1249:                                   ; preds = %for.body.i1249, %for.body.lr.ph.i1247
  %indvars.iv.i1250 = phi i64 [ 0, %for.body.lr.ph.i1247 ], [ %indvars.iv.next.i1252, %for.body.i1249 ]
  %arrayidx.i1251 = getelementptr inbounds [19 x ptr], ptr %fref0.i, i64 0, i64 %indvars.iv.i1250
  %399 = load ptr, ptr %arrayidx.i1251, align 8
  %filtered.i = getelementptr inbounds i8, ptr %399, i64 176
  %400 = load ptr, ptr %filtered.i, align 16
  %401 = load ptr, ptr %fenc153, align 8
  %weighted.i = getelementptr inbounds i8, ptr %401, i64 3392
  %arrayidx3.i = getelementptr inbounds [16 x ptr], ptr %weighted.i, i64 0, i64 %indvars.iv.i1250
  store ptr %400, ptr %arrayidx3.i, align 8
  %indvars.iv.next.i1252 = add nuw nsw i64 %indvars.iv.i1250, 1
  %402 = load i32, ptr %i_ref0.i, align 8
  %403 = sext i32 %402 to i64
  %cmp.i1253 = icmp slt i64 %indvars.iv.next.i1252, %403
  br i1 %cmp.i1253, label %for.body.i1249, label %for.cond.cleanup.i1229

for.cond11.preheader.i:                           ; preds = %for.cond11.preheader.i.prol.loopexit, %for.cond11.preheader.i
  %indvars.iv269.i = phi i64 [ %indvars.iv.next270.i.1, %for.cond11.preheader.i ], [ %indvars.iv269.i.unr, %for.cond11.preheader.i.prol.loopexit ]
  %weightfn.i1245 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %indvars.iv269.i, i64 0, i32 5
  store ptr null, ptr %weightfn.i1245, align 16
  %weightfn.1.i = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %indvars.iv269.i, i64 1, i32 5
  store ptr null, ptr %weightfn.1.i, align 16
  %weightfn.2.i = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %indvars.iv269.i, i64 2, i32 5
  store ptr null, ptr %weightfn.2.i, align 16
  %indvars.iv.next270.i = add nuw nsw i64 %indvars.iv269.i, 1
  %weightfn.i1245.1 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %indvars.iv.next270.i, i64 0, i32 5
  store ptr null, ptr %weightfn.i1245.1, align 16
  %weightfn.1.i.1 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %indvars.iv.next270.i, i64 1, i32 5
  store ptr null, ptr %weightfn.1.i.1, align 16
  %weightfn.2.i.1 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i, i64 0, i64 %indvars.iv.next270.i, i64 2, i32 5
  store ptr null, ptr %weightfn.2.i.1, align 16
  %indvars.iv.next270.i.1 = add nuw nsw i64 %indvars.iv269.i, 2
  %exitcond.not.i1246.1 = icmp eq i64 %indvars.iv.next270.i.1, %wide.trip.count.i1244
  br i1 %exitcond.not.i1246.1, label %for.cond.cleanup9.i, label %for.cond11.preheader.i, !llvm.loop !17

for.cond.cleanup9.i:                              ; preds = %for.cond11.preheader.i.prol.loopexit, %for.cond11.preheader.i, %middle.block, %for.cond.cleanup.i1229
  %404 = load i32, ptr %i_type.i, align 16
  %cmp27.not.i = icmp eq i32 %404, 0
  br i1 %cmp27.not.i, label %lor.lhs.false.i, label %x264_weighted_pred_init.exit

lor.lhs.false.i:                                  ; preds = %for.cond.cleanup9.i
  %i_weighted_pred.i1232 = getelementptr inbounds i8, ptr %h.addr.0, i64 396
  %405 = load i32, ptr %i_weighted_pred.i1232, align 4
  %cmp28.i = icmp slt i32 %405, 1
  br i1 %cmp28.i, label %x264_weighted_pred_init.exit, label %if.end.i1233

if.end.i1233:                                     ; preds = %lor.lhs.false.i
  %b_interlaced.i = getelementptr inbounds i8, ptr %h.addr.0, i64 136
  %406 = load i32, ptr %b_interlaced.i, align 8
  %shl30.i = shl i32 32, %406
  %weight32.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7584
  %weightfn35.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7760
  store ptr null, ptr %weightfn35.i, align 16
  %weightfn40.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7696
  store ptr null, ptr %weightfn40.i, align 16
  %i_denom.i1234 = getelementptr inbounds i8, ptr %h.addr.0, i64 7744
  store i32 0, ptr %i_denom.i1234, align 16
  %i_denom49.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7680
  store i32 0, ptr %i_denom49.i, align 16
  %cmp52261.i = icmp sgt i32 %379, 0
  br i1 %cmp52261.i, label %for.body54.lr.ph.i, label %if.then182.i

for.body54.lr.ph.i:                               ; preds = %if.end.i1233
  %i_denom110.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7616
  %p_weight_buf.i = getelementptr inbounds i8, ptr %h.addr.0, i64 17256
  %i_threads.i = getelementptr inbounds i8, ptr %h.addr.0, i64 4
  %fref0135.i = getelementptr inbounds i8, ptr %h.addr.0, i64 14704
  %mul168.i = shl i32 64, %406
  br label %for.body54.i

for.cond.cleanup53.i:                             ; preds = %for.inc178.i
  %407 = icmp eq i32 %weightluma.2.i, 0
  br i1 %407, label %if.then182.i, label %x264_weighted_pred_init.exit

for.body54.i:                                     ; preds = %for.inc178.i, %for.body54.lr.ph.i
  %indvars.iv272.i = phi i64 [ 0, %for.body54.lr.ph.i ], [ %indvars.iv.next273.i, %for.inc178.i ]
  %buffer_next.0263.i = phi i32 [ 0, %for.body54.lr.ph.i ], [ %buffer_next.1.i, %for.inc178.i ]
  %weightluma.0262.i = phi i32 [ 0, %for.body54.lr.ph.i ], [ %weightluma.2.i, %for.inc178.i ]
  %408 = load ptr, ptr %fenc153, align 8
  %weight56.i = getelementptr inbounds i8, ptr %408, i64 320
  %arrayidx58.i = getelementptr inbounds [16 x [3 x %struct.x264_weight_t]], ptr %weight56.i, i64 0, i64 %indvars.iv272.i
  %weightfn60.i = getelementptr inbounds i8, ptr %arrayidx58.i, i64 48
  %409 = load ptr, ptr %weightfn60.i, align 16
  %tobool.not.i1235 = icmp eq ptr %409, null
  br i1 %tobool.not.i1235, label %if.end123.i, label %if.then61.i

if.then61.i:                                      ; preds = %for.body54.i
  %arrayidx65.i = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight32.i, i64 0, i64 %indvars.iv272.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %arrayidx65.i, ptr noundef nonnull align 16 dereferenceable(64) %arrayidx58.i, i64 64, i1 false)
  %i_scale.i1236 = getelementptr inbounds i8, ptr %arrayidx65.i, i64 36
  %410 = load i32, ptr %i_scale.i1236, align 4
  %i_denom82.i = getelementptr inbounds i8, ptr %arrayidx65.i, i64 32
  %411 = load i32, ptr %i_denom82.i, align 16
  %shl83.i = shl nuw i32 1, %411
  %cmp84.i = icmp eq i32 %410, %shl83.i
  br i1 %cmp84.i, label %land.lhs.true.i, label %if.else.i1237

land.lhs.true.i:                                  ; preds = %if.then61.i
  %i_offset.i1243 = getelementptr inbounds i8, ptr %arrayidx65.i, i64 40
  %412 = load i32, ptr %i_offset.i1243, align 8
  %cmp90.i = icmp eq i32 %412, 0
  br i1 %cmp90.i, label %if.then91.i, label %if.else.i1237

if.then91.i:                                      ; preds = %land.lhs.true.i
  %weightfn97.i = getelementptr inbounds i8, ptr %arrayidx65.i, i64 48
  store ptr null, ptr %weightfn97.i, align 16
  br label %if.end123.i

if.else.i1237:                                    ; preds = %land.lhs.true.i, %if.then61.i
  %tobool98.not.i = icmp eq i32 %weightluma.0262.i, 0
  br i1 %tobool98.not.i, label %if.then99.i, label %if.end111.i

if.then99.i:                                      ; preds = %if.else.i1237
  store i32 %411, ptr %i_denom110.i, align 16
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then99.i, %if.else.i1237
  %inc112.i = add nsw i32 %buffer_next.0263.i, 1
  %idxprom113.i = sext i32 %buffer_next.0263.i to i64
  %arrayidx114.i = getelementptr inbounds [16 x ptr], ptr %p_weight_buf.i, i64 0, i64 %idxprom113.i
  %413 = load ptr, ptr %arrayidx114.i, align 8
  %i_stride.i = getelementptr inbounds i8, ptr %408, i64 104
  %414 = load i32, ptr %i_stride.i, align 8
  %mul.i = mul nsw i32 %414, %shl30.i
  %idx.ext.i1238 = sext i32 %mul.i to i64
  %add.ptr.i1239 = getelementptr inbounds i8, ptr %413, i64 %idx.ext.i1238
  %add.ptr117.i = getelementptr inbounds i8, ptr %add.ptr.i1239, i64 32
  %weighted119.i = getelementptr inbounds i8, ptr %408, i64 3392
  %arrayidx121.i = getelementptr inbounds [16 x ptr], ptr %weighted119.i, i64 0, i64 %indvars.iv272.i
  store ptr %add.ptr117.i, ptr %arrayidx121.i, align 8
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.end111.i, %if.then91.i, %for.body54.i
  %weightluma.2.i = phi i32 [ %weightluma.0262.i, %if.then91.i ], [ 1, %if.end111.i ], [ %weightluma.0262.i, %for.body54.i ]
  %buffer_next.1.i = phi i32 [ %buffer_next.0263.i, %if.then91.i ], [ %inc112.i, %if.end111.i ], [ %buffer_next.0263.i, %for.body54.i ]
  %arrayidx127.i = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight32.i, i64 0, i64 %indvars.iv272.i
  %weightfn129.i = getelementptr inbounds i8, ptr %arrayidx127.i, i64 48
  %415 = load ptr, ptr %weightfn129.i, align 16
  %tobool130.not.i = icmp eq ptr %415, null
  br i1 %tobool130.not.i, label %for.inc178.i, label %land.lhs.true131.i

land.lhs.true131.i:                               ; preds = %if.end123.i
  %416 = load i32, ptr %i_threads.i, align 4
  %cmp133.i = icmp eq i32 %416, 1
  br i1 %cmp133.i, label %if.then134.i, label %for.inc178.i

if.then134.i:                                     ; preds = %land.lhs.true131.i
  %arrayidx137.i = getelementptr inbounds [19 x ptr], ptr %fref0135.i, i64 0, i64 %indvars.iv272.i
  %417 = load ptr, ptr %arrayidx137.i, align 8
  %filtered138.i = getelementptr inbounds i8, ptr %417, i64 176
  %418 = load ptr, ptr %filtered138.i, align 16
  %i_stride143.i = getelementptr inbounds i8, ptr %417, i64 104
  %419 = load i32, ptr %i_stride143.i, align 8
  %mul145.i = mul nsw i32 %419, %shl30.i
  %idx.ext146.i = sext i32 %mul145.i to i64
  %idx.neg.i1241 = sub nsw i64 0, %idx.ext146.i
  %add.ptr147.i = getelementptr inbounds i8, ptr %418, i64 %idx.neg.i1241
  %add.ptr148.i = getelementptr inbounds i8, ptr %add.ptr147.i, i64 -32
  %420 = load ptr, ptr %fenc153, align 8
  %weighted150.i = getelementptr inbounds i8, ptr %420, i64 3392
  %arrayidx152.i = getelementptr inbounds [16 x ptr], ptr %weighted150.i, i64 0, i64 %indvars.iv272.i
  %421 = load ptr, ptr %arrayidx152.i, align 8
  %i_stride154.i = getelementptr inbounds i8, ptr %420, i64 104
  %422 = load i32, ptr %i_stride154.i, align 8
  %mul156.i = mul nsw i32 %422, %shl30.i
  %idx.ext157.i = sext i32 %mul156.i to i64
  %idx.neg158.i = sub nsw i64 0, %idx.ext157.i
  %add.ptr159.i = getelementptr inbounds i8, ptr %421, i64 %idx.neg158.i
  %add.ptr160.i = getelementptr inbounds i8, ptr %add.ptr159.i, i64 -32
  %i_width.i = getelementptr inbounds i8, ptr %420, i64 116
  %423 = load i32, ptr %i_width.i, align 4
  %add.i1242 = add nsw i32 %423, 64
  %i_lines.i = getelementptr inbounds i8, ptr %420, i64 128
  %424 = load i32, ptr %i_lines.i, align 16
  %add169.i = add nsw i32 %424, %mul168.i
  call void @x264_weight_scale_plane(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %add.ptr160.i, i32 noundef %422, ptr noundef nonnull %add.ptr148.i, i32 noundef %422, i32 noundef %add.i1242, i32 noundef %add169.i, ptr noundef nonnull %arrayidx127.i) #17
  %425 = load ptr, ptr %fenc153, align 8
  %i_lines_weighted176.i = getelementptr inbounds i8, ptr %425, i64 15596
  store i32 %add169.i, ptr %i_lines_weighted176.i, align 4
  br label %for.inc178.i

for.inc178.i:                                     ; preds = %if.then134.i, %land.lhs.true131.i, %if.end123.i
  %indvars.iv.next273.i = add nuw nsw i64 %indvars.iv272.i, 1
  %426 = load i32, ptr %i_ref0.i, align 8
  %427 = sext i32 %426 to i64
  %cmp52.i1240 = icmp slt i64 %indvars.iv.next273.i, %427
  br i1 %cmp52.i1240, label %for.body54.i, label %for.cond.cleanup53.i

if.then182.i:                                     ; preds = %for.cond.cleanup53.i, %if.end.i1233
  %i_denom187.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7616
  store i32 0, ptr %i_denom187.i, align 16
  br label %x264_weighted_pred_init.exit

x264_weighted_pred_init.exit:                     ; preds = %for.cond.cleanup9.i, %lor.lhs.false.i, %for.cond.cleanup53.i, %if.then182.i
  %sh.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7232
  %428 = load ptr, ptr %sps579, align 16
  %pps.i = getelementptr inbounds i8, ptr %h.addr.0, i64 3328
  %429 = load ptr, ptr %pps.i, align 16
  br i1 %cmp.i1254, label %if.then.i1266, label %if.else.i1256

if.then.i1266:                                    ; preds = %x264_weighted_pred_init.exit
  %i_idr_pic_id.i = getelementptr inbounds i8, ptr %h.addr.0, i64 3336
  %430 = load i32, ptr %i_idr_pic_id.i, align 8
  %i_frame_num.i1267 = getelementptr inbounds i8, ptr %h.addr.0, i64 1848
  %431 = load i32, ptr %i_frame_num.i1267, align 8
  call fastcc void @x264_slice_header_init(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %sh.i, ptr noundef %428, ptr noundef %429, i32 noundef %430, i32 noundef %431, i32 noundef %call616)
  %432 = load i32, ptr %i_idr_pic_id.i, align 8
  %add.i1268 = add nsw i32 %432, 1
  %rem.i = srem i32 %add.i1268, 65536
  store i32 %rem.i, ptr %i_idr_pic_id.i, align 8
  br label %if.end29.i

if.else.i1256:                                    ; preds = %x264_weighted_pred_init.exit
  %i_frame_num6.i = getelementptr inbounds i8, ptr %h.addr.0, i64 1848
  %433 = load i32, ptr %i_frame_num6.i, align 8
  call fastcc void @x264_slice_header_init(ptr noundef nonnull %h.addr.0, ptr noundef nonnull %sh.i, ptr noundef %428, ptr noundef %429, i32 noundef -1, i32 noundef %433, i32 noundef %call616)
  %434 = load i32, ptr %i_ref0.i, align 8
  %spec.select.i = call i32 @llvm.smax.i32(i32 %434, i32 1)
  %i_num_ref_idx_l0_active.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7312
  store i32 %spec.select.i, ptr %i_num_ref_idx_l0_active.i, align 16
  %435 = load i32, ptr %i_ref1.i, align 8
  %cond15.i = call i32 @llvm.smax.i32(i32 %435, i32 1)
  %i_num_ref_idx_l1_active.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7316
  store i32 %cond15.i, ptr %i_num_ref_idx_l1_active.i, align 4
  %436 = load ptr, ptr %pps.i, align 16
  %i_num_ref_idx_l0_default_active.i = getelementptr inbounds i8, ptr %436, i64 20
  %437 = load i32, ptr %i_num_ref_idx_l0_default_active.i, align 4
  %cmp20.not.i = icmp eq i32 %spec.select.i, %437
  br i1 %cmp20.not.i, label %lor.lhs.false.i1262, label %if.then27.i

lor.lhs.false.i1262:                              ; preds = %if.else.i1256
  %438 = load i32, ptr %i_type.i, align 16
  %cmp22.i1264 = icmp eq i32 %438, 1
  br i1 %cmp22.i1264, label %land.lhs.true.i1265, label %if.end29.i

land.lhs.true.i1265:                              ; preds = %lor.lhs.false.i1262
  %i_num_ref_idx_l1_default_active.i = getelementptr inbounds i8, ptr %436, i64 24
  %439 = load i32, ptr %i_num_ref_idx_l1_default_active.i, align 8
  %cmp26.not.i = icmp eq i32 %cond15.i, %439
  br i1 %cmp26.not.i, label %if.end29.i, label %if.then27.i

if.then27.i:                                      ; preds = %land.lhs.true.i1265, %if.else.i1256
  %b_num_ref_idx_override.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7308
  store i32 1, ptr %b_num_ref_idx_override.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %land.lhs.true.i1265, %lor.lhs.false.i1262, %if.then.i1266
  %i_frame_num31.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7264
  %440 = load i32, ptr %i_frame_num31.i, align 16
  %441 = load ptr, ptr %fdec.i982, align 16
  %i_frame_num32.i = getelementptr inbounds i8, ptr %441, i64 68
  store i32 %440, ptr %i_frame_num32.i, align 4
  %442 = load ptr, ptr %sps579, align 16
  %i_poc_type.i = getelementptr inbounds i8, ptr %442, i64 28
  %443 = load i32, ptr %i_poc_type.i, align 4
  %cmp34.i = icmp eq i32 %443, 0
  br i1 %cmp34.i, label %if.then35.i, label %x264_slice_init.exit

if.then35.i:                                      ; preds = %if.end29.i
  %444 = load ptr, ptr %fdec.i982, align 16
  %445 = load i32, ptr %444, align 16
  %i_poc38.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7284
  store i32 %445, ptr %i_poc38.i, align 4
  %b_interlaced.i1260 = getelementptr inbounds i8, ptr %h.addr.0, i64 136
  %446 = load i32, ptr %b_interlaced.i1260, align 8
  %tobool.not.i1261 = icmp eq i32 %446, 0
  br i1 %tobool.not.i1261, label %if.else54.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.then35.i
  %b_tff.i = getelementptr inbounds i8, ptr %h.addr.0, i64 672
  %447 = load i32, ptr %b_tff.i, align 16
  %tobool41.not.i = icmp eq i32 %447, 0
  %cond42.i = select i1 %tobool41.not.i, i32 -1, i32 1
  %i_delta_poc_bottom.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7288
  store i32 %cond42.i, ptr %i_delta_poc_bottom.i, align 8
  br i1 %tobool41.not.i, label %if.then47.i, label %x264_slice_init.exit

if.then47.i:                                      ; preds = %if.then39.i
  %448 = load i32, ptr %444, align 16
  %add50.i = add nsw i32 %448, 1
  store i32 %add50.i, ptr %i_poc38.i, align 4
  br label %x264_slice_init.exit

if.else54.i:                                      ; preds = %if.then35.i
  %i_delta_poc_bottom56.i = getelementptr inbounds i8, ptr %h.addr.0, i64 7288
  store i32 0, ptr %i_delta_poc_bottom56.i, align 8
  br label %x264_slice_init.exit

x264_slice_init.exit:                             ; preds = %if.end29.i, %if.then39.i, %if.then47.i, %if.else54.i
  call void @x264_macroblock_slice_init(ptr noundef nonnull %h.addr.0) #17
  br i1 %cmp249.not, label %if.end651, label %if.then648

if.then648:                                       ; preds = %x264_slice_init.exit
  %i_frame_num649 = getelementptr inbounds i8, ptr %h.addr.0, i64 1848
  %449 = load i32, ptr %i_frame_num649, align 8
  %inc650 = add nsw i32 %449, 1
  store i32 %inc650, ptr %i_frame_num649, align 8
  br label %if.end651

if.end651:                                        ; preds = %if.then648, %x264_slice_init.exit
  %i_threadslice_start = getelementptr inbounds i8, ptr %h.addr.0, i64 1748
  store i32 0, ptr %i_threadslice_start, align 4
  %450 = load ptr, ptr %sps579, align 16
  %i_mb_height653 = getelementptr inbounds i8, ptr %450, i64 1088
  %451 = load i32, ptr %i_mb_height653, align 4
  %i_threadslice_end = getelementptr inbounds i8, ptr %h.addr.0, i64 1752
  store i32 %451, ptr %i_threadslice_end, align 8
  %452 = load i32, ptr %i_thread_frames155, align 4
  %cmp655 = icmp sgt i32 %452, 1
  br i1 %cmp655, label %if.then657, label %if.else658

if.then657:                                       ; preds = %if.end651
  %b_thread_active = getelementptr inbounds i8, ptr %h.addr.0, i64 1740
  store i32 1, ptr %b_thread_active, align 4
  br label %if.end673

if.else658:                                       ; preds = %if.end651
  %453 = load i32, ptr %b_sliced_threads, align 8
  %tobool661.not = icmp eq i32 %453, 0
  br i1 %tobool661.not, label %if.else667, label %if.then662

if.then662:                                       ; preds = %if.else658
  call fastcc void @x264_threaded_slices_write(ptr noundef nonnull %h.addr.0)
  br label %if.end673

if.else667:                                       ; preds = %if.else658
  %call668 = call fastcc ptr @x264_slices_write(ptr noundef nonnull %h.addr.0)
  %tobool669.not = icmp eq ptr %call668, null
  br i1 %tobool669.not, label %if.end673, label %cleanup675

if.end673:                                        ; preds = %if.then662, %if.else667, %if.then657
  %call674 = call fastcc i32 @x264_encoder_frame_end(ptr noundef %thread_oldest.0, ptr noundef nonnull %h.addr.0, ptr noundef nonnull %pp_nal, ptr noundef nonnull %pi_nal, ptr noundef %pic_out)
  br label %cleanup675

cleanup675:                                       ; preds = %if.then111, %if.end22, %if.then18, %if.then129, %if.then1.i, %if.then.i.i1218, %if.then.i.i1102, %if.then.i.i1054, %if.else667, %if.end503, %if.then497, %if.end461, %x264_reference_update.exit, %if.end673, %if.then147
  %retval.3 = phi i32 [ %call674, %if.end673 ], [ %call148, %if.then147 ], [ -1, %x264_reference_update.exit ], [ -1, %if.end461 ], [ -1, %if.then497 ], [ -1, %if.end503 ], [ -1, %if.else667 ], [ -1, %if.then.i.i1054 ], [ -1, %if.then.i.i1102 ], [ -1, %if.then.i.i1218 ], [ -1, %if.then1.i ], [ -1, %if.then111 ], [ -1, %if.end22 ], [ -1, %if.then18 ], [ 0, %if.then129 ]
  ret i32 %retval.3
}

declare void @x264_thread_sync_ratecontrol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @x264_frame_copy_picture(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_frame_expand_border_mod16(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_weight_plane_analyse(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_frame_init_lowres(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @x264_macroblock_tree_read(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_adaptive_quant_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_lookahead_put_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_lookahead_get_frames(ptr noundef) local_unnamed_addr #2

declare i32 @x264_lookahead_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @x264_encoder_frame_end(ptr noundef %h, ptr noundef %thread_current, ptr nocapture noundef writeonly %pp_nal, ptr nocapture noundef writeonly %pi_nal, ptr nocapture noundef %pic_out) unnamed_addr #0 {
entry:
  %yuvfile.i = alloca [256 x i8], align 16
  %psz_message = alloca [80 x i8], align 16
  %nal_tmp = alloca %struct.x264_nal_t, align 8
  %filler = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %psz_message) #17
  %b_thread_active = getelementptr inbounds i8, ptr %h, i64 1740
  %0 = load i32, ptr %b_thread_active, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %b_thread_active, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %out = getelementptr inbounds i8, ptr %h, i64 1760
  %1 = load i32, ptr %out, align 16
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 0, ptr %pic_out, align 8
  br label %cleanup759

if.end7:                                          ; preds = %if.end4
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %2 = load ptr, ptr %fenc, align 8
  %b_keyframe = getelementptr inbounds i8, ptr %2, i64 80
  %3 = load i32, ptr %b_keyframe, align 16
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %if.end56, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %4 = load ptr, ptr %sps, align 16
  %b_nal_hrd_parameters_present = getelementptr inbounds i8, ptr %4, i64 1204
  %5 = load i32, ptr %b_nal_hrd_parameters_present, align 4
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %if.end56, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %call = tail call i32 @x264_hrd_fullness(ptr noundef nonnull %h) #17
  %initial_cpb_removal_delay = getelementptr inbounds i8, ptr %h, i64 15024
  store i32 %call, ptr %initial_cpb_removal_delay, align 16
  %nal1.i = getelementptr inbounds i8, ptr %h, i64 1768
  %6 = load ptr, ptr %nal1.i, align 8
  %7 = load i32, ptr %out, align 16
  %idxprom.i = sext i32 %7 to i64
  %arrayidx.i = getelementptr inbounds %struct.x264_nal_t, ptr %6, i64 %idxprom.i
  store i32 0, ptr %arrayidx.i, align 8
  %i_type4.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 4
  store i32 6, ptr %i_type4.i, align 4
  %i_payload.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 8
  store i32 0, ptr %i_payload.i, align 8
  %p_bitstream.i = getelementptr inbounds i8, ptr %h, i64 1784
  %8 = load ptr, ptr %p_bitstream.i, align 8
  %bs.i = getelementptr inbounds i8, ptr %h, i64 1792
  %p.i.i = getelementptr inbounds i8, ptr %h, i64 1800
  %9 = load ptr, ptr %p.i.i, align 8
  %10 = load ptr, ptr %bs.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %i_left.i.i = getelementptr inbounds i8, ptr %h, i64 1824
  %11 = load i32, ptr %i_left.i.i, align 8
  %sub.ptr.sub.tr.i.i = trunc i64 %sub.ptr.sub.i.i to i32
  %12 = shl i32 %sub.ptr.sub.tr.i.i, 3
  %reass.sub = sub i32 %12, %11
  %conv1.i.i = add i32 %reass.sub, 64
  %div.i = sdiv i32 %conv1.i.i, 8
  %idxprom7.i = sext i32 %div.i to i64
  %arrayidx8.i = getelementptr inbounds i8, ptr %8, i64 %idxprom7.i
  %p_payload.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 16
  store ptr %arrayidx8.i, ptr %p_payload.i, align 8
  tail call void @x264_sei_buffering_period_write(ptr noundef nonnull %h, ptr noundef nonnull %bs.i) #17
  %13 = load ptr, ptr %nal1.i, align 8
  %14 = load i32, ptr %out, align 16
  %idxprom.i1031 = sext i32 %14 to i64
  %arrayidx.i1032 = getelementptr inbounds %struct.x264_nal_t, ptr %13, i64 %idxprom.i1031
  %15 = load ptr, ptr %p_bitstream.i, align 8
  %16 = load ptr, ptr %p.i.i, align 8
  %17 = load ptr, ptr %bs.i, align 8
  %sub.ptr.lhs.cast.i.i1036 = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast.i.i1037 = ptrtoint ptr %17 to i64
  %sub.ptr.sub.i.i1038 = sub i64 %sub.ptr.lhs.cast.i.i1036, %sub.ptr.rhs.cast.i.i1037
  %18 = load i32, ptr %i_left.i.i, align 8
  %sub.ptr.sub.tr.i.i1040 = trunc i64 %sub.ptr.sub.i.i1038 to i32
  %19 = shl i32 %sub.ptr.sub.tr.i.i1040, 3
  %reass.sub1250 = sub i32 %19, %18
  %conv1.i.i1042 = add i32 %reass.sub1250, 64
  %div.i1043 = sdiv i32 %conv1.i.i1042, 8
  %idxprom5.i = sext i32 %div.i1043 to i64
  %arrayidx6.i = getelementptr inbounds i8, ptr %15, i64 %idxprom5.i
  %p_payload.i1044 = getelementptr inbounds i8, ptr %arrayidx.i1032, i64 16
  %20 = load ptr, ptr %p_payload.i1044, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx6.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %20 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i64 %sub.ptr.sub.i to i32
  %i_payload.i1045 = getelementptr inbounds i8, ptr %arrayidx.i1032, i64 8
  store i32 %conv.i, ptr %i_payload.i1045, align 8
  %21 = load i32, ptr %out, align 16
  %inc.i = add nsw i32 %21, 1
  store i32 %inc.i, ptr %out, align 16
  %i_nals_allocated.i.i = getelementptr inbounds i8, ptr %h, i64 1764
  %22 = load i32, ptr %i_nals_allocated.i.i, align 4
  %cmp.not.i.i = icmp slt i32 %inc.i, %22
  br i1 %cmp.not.i.i, label %if.then10.x264_nal_end.exit_crit_edge, label %if.then.i.i

if.then10.x264_nal_end.exit_crit_edge:            ; preds = %if.then10
  %.pre = load ptr, ptr %nal1.i, align 8
  br label %x264_nal_end.exit

if.then.i.i:                                      ; preds = %if.then10
  %mul4.i.i = mul i32 %22, 48
  %call.i.i = tail call ptr @x264_malloc(i32 noundef %mul4.i.i) #17
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cleanup759, label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.then.i.i
  %23 = load ptr, ptr %nal1.i, align 8
  %24 = load i32, ptr %i_nals_allocated.i.i, align 4
  %conv10.i.i = sext i32 %24 to i64
  %mul11.i.i = mul nsw i64 %conv10.i.i, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call.i.i, ptr align 8 %23, i64 %mul11.i.i, i1 false)
  %25 = load ptr, ptr %nal1.i, align 8
  tail call void @x264_free(ptr noundef %25) #17
  store ptr %call.i.i, ptr %nal1.i, align 8
  %26 = load i32, ptr %i_nals_allocated.i.i, align 4
  %mul18.i.i = shl nsw i32 %26, 1
  store i32 %mul18.i.i, ptr %i_nals_allocated.i.i, align 4
  br label %x264_nal_end.exit

x264_nal_end.exit:                                ; preds = %if.then10.x264_nal_end.exit_crit_edge, %cleanup.thread.i.i
  %27 = phi ptr [ %.pre, %if.then10.x264_nal_end.exit_crit_edge ], [ %call.i.i, %cleanup.thread.i.i ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %x264_nal_end.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %x264_nal_end.exit ]
  %i_type17 = getelementptr inbounds %struct.x264_nal_t, ptr %27, i64 %indvars.iv, i32 1
  %28 = load i32, ptr %i_type17, align 4
  %.off = add i32 %28, -7
  %switch = icmp ult i32 %.off, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %switch, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %29 = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %nal_tmp)
  %30 = load i32, ptr %out, align 16
  %31 = sext i32 %30 to i64
  %32 = getelementptr %struct.x264_nal_t, ptr %27, i64 %31
  %arrayidx38 = getelementptr i8, ptr %32, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %nal_tmp, ptr noundef nonnull align 8 dereferenceable(24) %arrayidx38, i64 24, i1 false)
  %33 = getelementptr inbounds %struct.x264_nal_t, ptr %27, i64 %indvars.iv
  %arrayidx42 = getelementptr inbounds i8, ptr %33, i64 24
  %34 = xor i32 %29, -1
  %sub50 = add i32 %30, %34
  %conv51 = sext i32 %sub50 to i64
  %mul = mul nsw i64 %conv51, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %arrayidx42, ptr align 8 %33, i64 %mul, i1 false)
  %35 = load ptr, ptr %nal1.i, align 8
  %arrayidx55 = getelementptr inbounds %struct.x264_nal_t, ptr %35, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayidx55, ptr noundef nonnull align 8 dereferenceable(24) %nal_tmp, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %nal_tmp)
  br label %if.end56

if.end56:                                         ; preds = %while.end, %land.lhs.true, %if.end7
  %call57 = tail call fastcc i32 @x264_encoder_encapsulate_nals(ptr noundef nonnull %h, i32 noundef 0)
  %36 = load ptr, ptr %fenc, align 8
  %i_type59 = getelementptr inbounds i8, ptr %36, i64 4
  %37 = load i32, ptr %i_type59, align 4
  store i32 %37, ptr %pic_out, align 8
  %38 = load ptr, ptr %fenc, align 8
  %b_keyframe62 = getelementptr inbounds i8, ptr %38, i64 80
  %39 = load i32, ptr %b_keyframe62, align 16
  %b_keyframe63 = getelementptr inbounds i8, ptr %pic_out, i64 12
  store i32 %39, ptr %b_keyframe63, align 4
  %i_dts_compress_multiplier = getelementptr inbounds i8, ptr %h, i64 3340
  %40 = load i32, ptr %i_dts_compress_multiplier, align 4
  %conv64 = sext i32 %40 to i64
  %41 = load ptr, ptr %fenc, align 8
  %i_pts = getelementptr inbounds i8, ptr %41, i64 16
  %42 = load i64, ptr %i_pts, align 16
  %mul66 = mul nsw i64 %42, %conv64
  store i64 %mul66, ptr %i_pts, align 16
  %i_pts67 = getelementptr inbounds i8, ptr %pic_out, i64 16
  store i64 %mul66, ptr %i_pts67, align 8
  %i_bframe_delay = getelementptr inbounds i8, ptr %h, i64 14616
  %43 = load i32, ptr %i_bframe_delay, align 8
  %tobool68.not = icmp eq i32 %43, 0
  br i1 %tobool68.not, label %if.else125, label %if.then69

if.then69:                                        ; preds = %if.end56
  %i_prev_reordered_pts = getelementptr inbounds i8, ptr %thread_current, i64 14640
  %i_frame = getelementptr inbounds i8, ptr %h, i64 1844
  %44 = load i32, ptr %i_frame, align 4
  %cmp73.not = icmp sgt i32 %44, %43
  br i1 %cmp73.not, label %if.else103, label %if.then75

if.then75:                                        ; preds = %if.then69
  %45 = load i32, ptr %i_dts_compress_multiplier, align 4
  %cmp77 = icmp eq i32 %45, 1
  br i1 %cmp77, label %if.then79, label %if.else

if.then79:                                        ; preds = %if.then75
  %46 = load ptr, ptr %fenc, align 8
  %i_reordered_pts = getelementptr inbounds i8, ptr %46, i64 24
  %47 = load i64, ptr %i_reordered_pts, align 8
  %i_bframe_delay_time = getelementptr inbounds i8, ptr %h, i64 14624
  %48 = load i64, ptr %i_bframe_delay_time, align 16
  %sub82 = sub nsw i64 %47, %48
  br label %if.end113

if.else:                                          ; preds = %if.then75
  %cmp84 = icmp eq i32 %44, 1
  br i1 %cmp84, label %if.then86, label %if.else.if.end93_crit_edge

if.else.if.end93_crit_edge:                       ; preds = %if.else
  %i_init_delta97.phi.trans.insert = getelementptr inbounds i8, ptr %thread_current, i64 14632
  %.pre1309 = load i64, ptr %i_init_delta97.phi.trans.insert, align 8
  br label %if.end93

if.then86:                                        ; preds = %if.else
  %49 = load ptr, ptr %fenc, align 8
  %i_reordered_pts88 = getelementptr inbounds i8, ptr %49, i64 24
  %50 = load i64, ptr %i_reordered_pts88, align 8
  %conv90 = sext i32 %45 to i64
  %mul91 = mul nsw i64 %50, %conv90
  %i_init_delta = getelementptr inbounds i8, ptr %thread_current, i64 14632
  store i64 %mul91, ptr %i_init_delta, align 8
  %.pre1308 = load i32, ptr %i_frame, align 4
  %.pre1310 = load i32, ptr %i_dts_compress_multiplier, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else.if.end93_crit_edge, %if.then86
  %51 = phi i32 [ %.pre1310, %if.then86 ], [ %45, %if.else.if.end93_crit_edge ]
  %52 = phi i64 [ %mul91, %if.then86 ], [ %.pre1309, %if.else.if.end93_crit_edge ]
  %53 = phi i32 [ %.pre1308, %if.then86 ], [ %44, %if.else.if.end93_crit_edge ]
  %conv95 = sext i32 %53 to i64
  %mul98 = mul nsw i64 %52, %conv95
  %conv100 = sext i32 %51 to i64
  %div = sdiv i64 %mul98, %conv100
  br label %if.end113

if.else103:                                       ; preds = %if.then69
  %sub107 = sub nsw i32 %44, %43
  %rem = srem i32 %sub107, %43
  %idxprom110 = sext i32 %rem to i64
  %arrayidx111 = getelementptr inbounds i64, ptr %i_prev_reordered_pts, i64 %idxprom110
  %54 = load i64, ptr %arrayidx111, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.then79, %if.end93, %if.else103
  %sub82.sink = phi i64 [ %sub82, %if.then79 ], [ %div, %if.end93 ], [ %54, %if.else103 ]
  %i_dts = getelementptr inbounds i8, ptr %pic_out, i64 24
  store i64 %sub82.sink, ptr %i_dts, align 8
  %55 = load ptr, ptr %fenc, align 8
  %i_reordered_pts115 = getelementptr inbounds i8, ptr %55, i64 24
  %56 = load i64, ptr %i_reordered_pts115, align 8
  %57 = load i32, ptr %i_dts_compress_multiplier, align 4
  %conv117 = sext i32 %57 to i64
  %mul118 = mul nsw i64 %56, %conv117
  %58 = load i32, ptr %i_frame, align 4
  %59 = load i32, ptr %i_bframe_delay, align 8
  %rem122 = srem i32 %58, %59
  %idxprom123 = sext i32 %rem122 to i64
  %arrayidx124 = getelementptr inbounds i64, ptr %i_prev_reordered_pts, i64 %idxprom123
  store i64 %mul118, ptr %arrayidx124, align 8
  %.pre1311 = load i64, ptr %i_pts67, align 8
  %i_dts131.phi.trans.insert = getelementptr inbounds i8, ptr %pic_out, i64 24
  %.pre1312 = load i64, ptr %i_dts131.phi.trans.insert, align 8
  br label %if.end129

if.else125:                                       ; preds = %if.end56
  %60 = load ptr, ptr %fenc, align 8
  %i_reordered_pts127 = getelementptr inbounds i8, ptr %60, i64 24
  %61 = load i64, ptr %i_reordered_pts127, align 8
  %i_dts128 = getelementptr inbounds i8, ptr %pic_out, i64 24
  store i64 %61, ptr %i_dts128, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.else125, %if.end113
  %62 = phi i64 [ %61, %if.else125 ], [ %.pre1312, %if.end113 ]
  %63 = phi i64 [ %mul66, %if.else125 ], [ %.pre1311, %if.end113 ]
  %cmp132 = icmp slt i64 %63, %62
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %if.end129
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.75) #17
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %if.end129
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %64 = load ptr, ptr %fdec, align 16
  %i_plane = getelementptr inbounds i8, ptr %64, i64 100
  %65 = load i32, ptr %i_plane, align 4
  %i_plane136 = getelementptr inbounds i8, ptr %pic_out, i64 44
  store i32 %65, ptr %i_plane136, align 4
  %i_stride143 = getelementptr inbounds i8, ptr %pic_out, i64 48
  %plane150 = getelementptr inbounds i8, ptr %pic_out, i64 64
  %66 = load ptr, ptr %fdec, align 16
  %i_stride = getelementptr inbounds i8, ptr %66, i64 104
  %67 = load i32, ptr %i_stride, align 4
  store i32 %67, ptr %i_stride143, align 4
  %68 = load ptr, ptr %fdec, align 16
  %plane = getelementptr inbounds i8, ptr %68, i64 152
  %69 = load ptr, ptr %plane, align 8
  store ptr %69, ptr %plane150, align 8
  %70 = load ptr, ptr %fdec, align 16
  %arrayidx141.1 = getelementptr inbounds i8, ptr %70, i64 108
  %71 = load i32, ptr %arrayidx141.1, align 4
  %arrayidx145.1 = getelementptr inbounds i8, ptr %pic_out, i64 52
  store i32 %71, ptr %arrayidx145.1, align 4
  %72 = load ptr, ptr %fdec, align 16
  %arrayidx148.1 = getelementptr inbounds i8, ptr %72, i64 160
  %73 = load ptr, ptr %arrayidx148.1, align 8
  %arrayidx152.1 = getelementptr inbounds i8, ptr %pic_out, i64 72
  store ptr %73, ptr %arrayidx152.1, align 8
  %74 = load ptr, ptr %fdec, align 16
  %arrayidx141.2 = getelementptr inbounds i8, ptr %74, i64 112
  %75 = load i32, ptr %arrayidx141.2, align 4
  %arrayidx145.2 = getelementptr inbounds i8, ptr %pic_out, i64 56
  store i32 %75, ptr %arrayidx145.2, align 4
  %76 = load ptr, ptr %fdec, align 16
  %arrayidx148.2 = getelementptr inbounds i8, ptr %76, i64 168
  %77 = load ptr, ptr %arrayidx148.2, align 8
  %arrayidx152.2 = getelementptr inbounds i8, ptr %pic_out, i64 80
  store ptr %77, ptr %arrayidx152.2, align 8
  %78 = load ptr, ptr %fenc, align 8
  tail call void @x264_frame_push_unused(ptr noundef %thread_current, ptr noundef %78) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filler) #17
  store i32 0, ptr %filler, align 4
  %mul156 = shl nsw i32 %call57, 3
  %call157 = call i32 @x264_ratecontrol_end(ptr noundef nonnull %h, i32 noundef %mul156, ptr noundef nonnull %filler) #17
  %cmp158 = icmp slt i32 %call157, 0
  br i1 %cmp158, label %cleanup757, label %if.end161

if.end161:                                        ; preds = %if.end135
  %hrd_timing = getelementptr inbounds i8, ptr %pic_out, i64 96
  %79 = load ptr, ptr %fenc, align 8
  %hrd_timing163 = getelementptr inbounds i8, ptr %79, i64 12288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %hrd_timing, ptr noundef nonnull align 16 dereferenceable(32) %hrd_timing163, i64 32, i1 false)
  %.pr1222 = load i32, ptr %filler, align 4
  %cmp1651232 = icmp sgt i32 %.pr1222, 0
  br i1 %cmp1651232, label %while.body167.lr.ph, label %while.end214

while.body167.lr.ph:                              ; preds = %if.end161
  %b_annexb = getelementptr inbounds i8, ptr %h, i64 640
  %i_slice_max_size = getelementptr inbounds i8, ptr %h, i64 684
  %nal1.i1047 = getelementptr inbounds i8, ptr %h, i64 1768
  %p_bitstream.i1052 = getelementptr inbounds i8, ptr %h, i64 1784
  %bs.i1053 = getelementptr inbounds i8, ptr %h, i64 1792
  %p.i.i1054 = getelementptr inbounds i8, ptr %h, i64 1800
  %i_left.i.i1058 = getelementptr inbounds i8, ptr %h, i64 1824
  %i_nals_allocated.i.i1090 = getelementptr inbounds i8, ptr %h, i64 1764
  br label %while.body167

while.body167:                                    ; preds = %while.body167.lr.ph, %cleanup210
  %frame_size.01233 = phi i32 [ %call57, %while.body167.lr.ph ], [ %add208, %cleanup210 ]
  %80 = phi i32 [ %.pr1222, %while.body167.lr.ph ], [ %sub209, %cleanup210 ]
  %81 = load i32, ptr %b_annexb, align 16
  %sub168 = sub nsw i32 6, %81
  %82 = load i32, ptr %i_slice_max_size, align 4
  %tobool170.not = icmp ne i32 %82, 0
  %cmp174 = icmp sgt i32 %80, %82
  %or.cond = and i1 %tobool170.not, %cmp174
  br i1 %or.cond, label %if.then176, label %if.else188

if.then176:                                       ; preds = %while.body167
  %sub168.neg1251 = add i32 %81, -6
  %sub179.neg = sub i32 %82, %80
  %sub180 = add i32 %sub179.neg, %sub168
  %cond = call i32 @llvm.smax.i32(i32 %sub180, i32 0)
  %.neg1225 = add i32 %82, %sub168.neg1251
  %sub187 = sub i32 %.neg1225, %cond
  br label %if.end197

if.else188:                                       ; preds = %while.body167
  %sub189 = sub nsw i32 %80, %sub168
  %cond196 = call i32 @llvm.smax.i32(i32 %sub189, i32 0)
  br label %if.end197

if.end197:                                        ; preds = %if.else188, %if.then176
  %f.0 = phi i32 [ %sub187, %if.then176 ], [ %cond196, %if.else188 ]
  %83 = load ptr, ptr %nal1.i1047, align 8
  %84 = load i32, ptr %out, align 16
  %idxprom.i1048 = sext i32 %84 to i64
  %arrayidx.i1049 = getelementptr inbounds %struct.x264_nal_t, ptr %83, i64 %idxprom.i1048
  store i32 0, ptr %arrayidx.i1049, align 8
  %i_type4.i1050 = getelementptr inbounds i8, ptr %arrayidx.i1049, i64 4
  store i32 12, ptr %i_type4.i1050, align 4
  %i_payload.i1051 = getelementptr inbounds i8, ptr %arrayidx.i1049, i64 8
  store i32 0, ptr %i_payload.i1051, align 8
  %85 = load ptr, ptr %p_bitstream.i1052, align 8
  %86 = load ptr, ptr %p.i.i1054, align 8
  %87 = load ptr, ptr %bs.i1053, align 8
  %sub.ptr.lhs.cast.i.i1055 = ptrtoint ptr %86 to i64
  %sub.ptr.rhs.cast.i.i1056 = ptrtoint ptr %87 to i64
  %sub.ptr.sub.i.i1057 = sub i64 %sub.ptr.lhs.cast.i.i1055, %sub.ptr.rhs.cast.i.i1056
  %88 = load i32, ptr %i_left.i.i1058, align 8
  %sub.ptr.sub.tr.i.i1059 = trunc i64 %sub.ptr.sub.i.i1057 to i32
  %89 = shl i32 %sub.ptr.sub.tr.i.i1059, 3
  %reass.sub1252 = sub i32 %89, %88
  %conv1.i.i1061 = add i32 %reass.sub1252, 64
  %div.i1062 = sdiv i32 %conv1.i.i1061, 8
  %idxprom7.i1063 = sext i32 %div.i1062 to i64
  %arrayidx8.i1064 = getelementptr inbounds i8, ptr %85, i64 %idxprom7.i1063
  %p_payload.i1065 = getelementptr inbounds i8, ptr %arrayidx.i1049, i64 16
  store ptr %arrayidx8.i1064, ptr %p_payload.i1065, align 8
  call void @x264_filler_write(ptr noundef nonnull %h, ptr noundef nonnull %bs.i1053, i32 noundef %f.0) #17
  %90 = load ptr, ptr %nal1.i1047, align 8
  %91 = load i32, ptr %out, align 16
  %idxprom.i1068 = sext i32 %91 to i64
  %arrayidx.i1069 = getelementptr inbounds %struct.x264_nal_t, ptr %90, i64 %idxprom.i1068
  %92 = load ptr, ptr %p_bitstream.i1052, align 8
  %93 = load ptr, ptr %p.i.i1054, align 8
  %94 = load ptr, ptr %bs.i1053, align 8
  %sub.ptr.lhs.cast.i.i1073 = ptrtoint ptr %93 to i64
  %sub.ptr.rhs.cast.i.i1074 = ptrtoint ptr %94 to i64
  %sub.ptr.sub.i.i1075 = sub i64 %sub.ptr.lhs.cast.i.i1073, %sub.ptr.rhs.cast.i.i1074
  %95 = load i32, ptr %i_left.i.i1058, align 8
  %sub.ptr.sub.tr.i.i1077 = trunc i64 %sub.ptr.sub.i.i1075 to i32
  %96 = shl i32 %sub.ptr.sub.tr.i.i1077, 3
  %reass.sub1253 = sub i32 %96, %95
  %conv1.i.i1079 = add i32 %reass.sub1253, 64
  %div.i1080 = sdiv i32 %conv1.i.i1079, 8
  %idxprom5.i1081 = sext i32 %div.i1080 to i64
  %arrayidx6.i1082 = getelementptr inbounds i8, ptr %92, i64 %idxprom5.i1081
  %p_payload.i1083 = getelementptr inbounds i8, ptr %arrayidx.i1069, i64 16
  %97 = load ptr, ptr %p_payload.i1083, align 8
  %sub.ptr.lhs.cast.i1084 = ptrtoint ptr %arrayidx6.i1082 to i64
  %sub.ptr.rhs.cast.i1085 = ptrtoint ptr %97 to i64
  %sub.ptr.sub.i1086 = sub i64 %sub.ptr.lhs.cast.i1084, %sub.ptr.rhs.cast.i1085
  %conv.i1087 = trunc i64 %sub.ptr.sub.i1086 to i32
  %i_payload.i1088 = getelementptr inbounds i8, ptr %arrayidx.i1069, i64 8
  store i32 %conv.i1087, ptr %i_payload.i1088, align 8
  %98 = load i32, ptr %out, align 16
  %inc.i1089 = add nsw i32 %98, 1
  store i32 %inc.i1089, ptr %out, align 16
  %99 = load i32, ptr %i_nals_allocated.i.i1090, align 4
  %cmp.not.i.i1091 = icmp slt i32 %inc.i1089, %99
  br i1 %cmp.not.i.i1091, label %cleanup210, label %if.then.i.i1092

if.then.i.i1092:                                  ; preds = %if.end197
  %mul4.i.i1093 = mul i32 %99, 48
  %call.i.i1094 = call ptr @x264_malloc(i32 noundef %mul4.i.i1093) #17
  %tobool.not.i.i1095 = icmp eq ptr %call.i.i1094, null
  br i1 %tobool.not.i.i1095, label %cleanup757, label %cleanup.thread.i.i1096

cleanup.thread.i.i1096:                           ; preds = %if.then.i.i1092
  %100 = load ptr, ptr %nal1.i1047, align 8
  %101 = load i32, ptr %i_nals_allocated.i.i1090, align 4
  %conv10.i.i1097 = sext i32 %101 to i64
  %mul11.i.i1098 = mul nsw i64 %conv10.i.i1097, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call.i.i1094, ptr align 8 %100, i64 %mul11.i.i1098, i1 false)
  %102 = load ptr, ptr %nal1.i1047, align 8
  call void @x264_free(ptr noundef %102) #17
  store ptr %call.i.i1094, ptr %nal1.i1047, align 8
  %103 = load i32, ptr %i_nals_allocated.i.i1090, align 4
  %mul18.i.i1099 = shl nsw i32 %103, 1
  store i32 %mul18.i.i1099, ptr %i_nals_allocated.i.i1090, align 4
  %.pre1313 = load i32, ptr %out, align 16
  br label %cleanup210

cleanup210:                                       ; preds = %if.end197, %cleanup.thread.i.i1096
  %104 = phi i32 [ %inc.i1089, %if.end197 ], [ %.pre1313, %cleanup.thread.i.i1096 ]
  %sub206 = add nsw i32 %104, -1
  %call207 = call fastcc i32 @x264_encoder_encapsulate_nals(ptr noundef nonnull %h, i32 noundef %sub206)
  %add208 = add nsw i32 %call207, %frame_size.01233
  %105 = load i32, ptr %filler, align 4
  %sub209 = sub nsw i32 %105, %call207
  store i32 %sub209, ptr %filler, align 4
  %cmp165 = icmp sgt i32 %sub209, 0
  br i1 %cmp165, label %while.body167, label %while.end214

while.end214:                                     ; preds = %cleanup210, %if.end161
  %frame_size.0.lcssa = phi i32 [ %call57, %if.end161 ], [ %add208, %cleanup210 ]
  %106 = load i32, ptr %out, align 16
  store i32 %106, ptr %pi_nal, align 4
  %nal218 = getelementptr inbounds i8, ptr %h, i64 1768
  %107 = load ptr, ptr %nal218, align 8
  store ptr %107, ptr %pp_nal, align 8
  store i32 0, ptr %out, align 16
  call void @x264_noise_reduction_update(ptr noundef nonnull %h) #17
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %108 = load ptr, ptr %thread, align 16
  %cmp.i = icmp eq ptr %108, %h
  br i1 %cmp.i, label %x264_thread_sync_stat.exit, label %if.end.i

if.end.i:                                         ; preds = %while.end214
  %i_frame_count.i = getelementptr inbounds i8, ptr %h, i64 27416
  %i_frame_count2.i = getelementptr inbounds i8, ptr %108, i64 27416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2984) %i_frame_count.i, ptr noundef nonnull readonly align 8 dereferenceable(2984) %i_frame_count2.i, i64 2984, i1 false)
  br label %x264_thread_sync_stat.exit

x264_thread_sync_stat.exit:                       ; preds = %while.end214, %if.end.i
  %i_frame_count = getelementptr inbounds i8, ptr %h, i64 27416
  %i_type222 = getelementptr inbounds i8, ptr %h, i64 7248
  %109 = load i32, ptr %i_type222, align 16
  %idxprom223 = sext i32 %109 to i64
  %arrayidx224 = getelementptr inbounds [5 x i32], ptr %i_frame_count, i64 0, i64 %idxprom223
  %110 = load i32, ptr %arrayidx224, align 4
  %inc225 = add nsw i32 %110, 1
  store i32 %inc225, ptr %arrayidx224, align 4
  %conv226 = sext i32 %frame_size.0.lcssa to i64
  %i_frame_size = getelementptr inbounds i8, ptr %h, i64 27440
  %111 = load i32, ptr %i_type222, align 16
  %idxprom230 = sext i32 %111 to i64
  %arrayidx231 = getelementptr inbounds [5 x i64], ptr %i_frame_size, i64 0, i64 %idxprom230
  %112 = load i64, ptr %arrayidx231, align 8
  %add232 = add nsw i64 %112, %conv226
  store i64 %add232, ptr %arrayidx231, align 8
  %113 = load ptr, ptr %fdec, align 16
  %f_qp_avg_aq = getelementptr inbounds i8, ptr %113, i64 92
  %114 = load float, ptr %f_qp_avg_aq, align 4
  %conv234 = fpext float %114 to double
  %f_frame_qp = getelementptr inbounds i8, ptr %h, i64 27480
  %115 = load i32, ptr %i_type222, align 16
  %idxprom238 = sext i32 %115 to i64
  %arrayidx239 = getelementptr inbounds [5 x double], ptr %f_frame_qp, i64 0, i64 %idxprom238
  %116 = load double, ptr %arrayidx239, align 8
  %add240 = fadd double %116, %conv234
  store double %add240, ptr %arrayidx239, align 8
  %i_mb_count = getelementptr inbounds i8, ptr %h, i64 26724
  %i_mb_count252 = getelementptr inbounds i8, ptr %h, i64 27832
  %117 = load i32, ptr %i_type222, align 16
  %idxprom255 = sext i32 %117 to i64
  %arrayidx258 = getelementptr inbounds [5 x [19 x i64]], ptr %i_mb_count252, i64 0, i64 %idxprom255, i64 0
  %118 = load <2 x i32>, ptr %i_mb_count, align 4
  %119 = sext <2 x i32> %118 to <2 x i64>
  %120 = load <2 x i64>, ptr %arrayidx258, align 8
  %121 = add nsw <2 x i64> %120, %119
  store <2 x i64> %121, ptr %arrayidx258, align 8
  %arrayidx249.2 = getelementptr inbounds i8, ptr %h, i64 26732
  %arrayidx258.2 = getelementptr inbounds [5 x [19 x i64]], ptr %i_mb_count252, i64 0, i64 %idxprom255, i64 2
  %122 = load <2 x i32>, ptr %arrayidx249.2, align 4
  %123 = sext <2 x i32> %122 to <2 x i64>
  %124 = load <2 x i64>, ptr %arrayidx258.2, align 8
  %125 = add nsw <2 x i64> %124, %123
  store <2 x i64> %125, ptr %arrayidx258.2, align 8
  %arrayidx249.4 = getelementptr inbounds i8, ptr %h, i64 26740
  %arrayidx258.4 = getelementptr inbounds [5 x [19 x i64]], ptr %i_mb_count252, i64 0, i64 %idxprom255, i64 4
  %126 = load <2 x i32>, ptr %arrayidx249.4, align 4
  %127 = sext <2 x i32> %126 to <2 x i64>
  %128 = load <2 x i64>, ptr %arrayidx258.4, align 8
  %129 = add nsw <2 x i64> %128, %127
  store <2 x i64> %129, ptr %arrayidx258.4, align 8
  %arrayidx249.6 = getelementptr inbounds i8, ptr %h, i64 26748
  %arrayidx258.6 = getelementptr inbounds [5 x [19 x i64]], ptr %i_mb_count252, i64 0, i64 %idxprom255, i64 6
  %130 = load <2 x i32>, ptr %arrayidx249.6, align 4
  %131 = sext <2 x i32> %130 to <2 x i64>
  %132 = load <2 x i64>, ptr %arrayidx258.6, align 8
  %133 = add nsw <2 x i64> %132, %131
  store <2 x i64> %133, ptr %arrayidx258.6, align 8
  %arrayidx249.8 = getelementptr inbounds i8, ptr %h, i64 26756
  %arrayidx258.8 = getelementptr inbounds [5 x [19 x i64]], ptr %i_mb_count252, i64 0, i64 %idxprom255, i64 8
  %134 = load <2 x i32>, ptr %arrayidx249.8, align 4
  %135 = sext <2 x i32> %134 to <2 x i64>
  %136 = load <2 x i64>, ptr %arrayidx258.8, align 8
  %137 = add nsw <2 x i64> %136, %135
  store <2 x i64> %137, ptr %arrayidx258.8, align 8
  %arrayidx249.10 = getelementptr inbounds i8, ptr %h, i64 26764
  %arrayidx258.10 = getelementptr inbounds [5 x [19 x i64]], ptr %i_mb_count252, i64 0, i64 %idxprom255, i64 10
  %138 = load <2 x i32>, ptr %arrayidx249.10, align 4
  %139 = sext <2 x i32> %138 to <2 x i64>
  %140 = load <2 x i64>, ptr %arrayidx258.10, align 8
  %141 = add nsw <2 x i64> %140, %139
  store <2 x i64> %141, ptr %arrayidx258.10, align 8
  %arrayidx249.12 = getelementptr inbounds i8, ptr %h, i64 26772
  %142 = load i32, ptr %i_type222, align 16
  %idxprom255.12 = sext i32 %142 to i64
  %arrayidx258.12 = getelementptr inbounds [5 x [19 x i64]], ptr %i_mb_count252, i64 0, i64 %idxprom255.12, i64 12
  %143 = load <2 x i32>, ptr %arrayidx249.12, align 4
  %144 = sext <2 x i32> %143 to <2 x i64>
  %145 = load <2 x i64>, ptr %arrayidx258.12, align 8
  %146 = add nsw <2 x i64> %145, %144
  store <2 x i64> %146, ptr %arrayidx258.12, align 8
  %arrayidx249.14 = getelementptr inbounds i8, ptr %h, i64 26780
  %arrayidx258.14 = getelementptr inbounds [5 x [19 x i64]], ptr %i_mb_count252, i64 0, i64 %idxprom255.12, i64 14
  %147 = load <2 x i32>, ptr %arrayidx249.14, align 4
  %148 = sext <2 x i32> %147 to <2 x i64>
  %149 = load <2 x i64>, ptr %arrayidx258.14, align 8
  %150 = add nsw <2 x i64> %149, %148
  store <2 x i64> %150, ptr %arrayidx258.14, align 8
  %arrayidx249.16 = getelementptr inbounds i8, ptr %h, i64 26788
  %arrayidx258.16 = getelementptr inbounds [5 x [19 x i64]], ptr %i_mb_count252, i64 0, i64 %idxprom255.12, i64 16
  %151 = load <2 x i32>, ptr %arrayidx249.16, align 4
  %152 = sext <2 x i32> %151 to <2 x i64>
  %153 = load <2 x i64>, ptr %arrayidx258.16, align 8
  %154 = add nsw <2 x i64> %153, %152
  store <2 x i64> %154, ptr %arrayidx258.16, align 8
  %arrayidx249.18 = getelementptr inbounds i8, ptr %h, i64 26796
  %155 = load i32, ptr %arrayidx249.18, align 4
  %conv250.18 = sext i32 %155 to i64
  %arrayidx258.18 = getelementptr inbounds [5 x [19 x i64]], ptr %i_mb_count252, i64 0, i64 %idxprom255.12, i64 18
  %156 = load i64, ptr %arrayidx258.18, align 8
  %add259.18 = add nsw i64 %156, %conv250.18
  store i64 %add259.18, ptr %arrayidx258.18, align 8
  %i_mb_partition = getelementptr inbounds i8, ptr %h, i64 27076
  %i_mb_partition276 = getelementptr inbounds i8, ptr %h, i64 28592
  %arrayidx282 = getelementptr inbounds [2 x [17 x i64]], ptr %i_mb_partition276, i64 0, i64 %idxprom255.12, i64 0
  %157 = load <2 x i32>, ptr %i_mb_partition, align 4
  %158 = sext <2 x i32> %157 to <2 x i64>
  %159 = load <2 x i64>, ptr %arrayidx282, align 8
  %160 = add nsw <2 x i64> %159, %158
  store <2 x i64> %160, ptr %arrayidx282, align 8
  %arrayidx273.2 = getelementptr inbounds i8, ptr %h, i64 27084
  %161 = load i32, ptr %i_type222, align 16
  %idxprom279.2 = sext i32 %161 to i64
  %arrayidx282.2 = getelementptr inbounds [2 x [17 x i64]], ptr %i_mb_partition276, i64 0, i64 %idxprom279.2, i64 2
  %162 = load <2 x i32>, ptr %arrayidx273.2, align 4
  %163 = sext <2 x i32> %162 to <2 x i64>
  %164 = load <2 x i64>, ptr %arrayidx282.2, align 8
  %165 = add nsw <2 x i64> %164, %163
  store <2 x i64> %165, ptr %arrayidx282.2, align 8
  %arrayidx273.4 = getelementptr inbounds i8, ptr %h, i64 27092
  %arrayidx282.4 = getelementptr inbounds [2 x [17 x i64]], ptr %i_mb_partition276, i64 0, i64 %idxprom279.2, i64 4
  %166 = load <2 x i32>, ptr %arrayidx273.4, align 4
  %167 = sext <2 x i32> %166 to <2 x i64>
  %168 = load <2 x i64>, ptr %arrayidx282.4, align 8
  %169 = add nsw <2 x i64> %168, %167
  store <2 x i64> %169, ptr %arrayidx282.4, align 8
  %arrayidx273.6 = getelementptr inbounds i8, ptr %h, i64 27100
  %arrayidx282.6 = getelementptr inbounds [2 x [17 x i64]], ptr %i_mb_partition276, i64 0, i64 %idxprom279.2, i64 6
  %170 = load <2 x i32>, ptr %arrayidx273.6, align 4
  %171 = sext <2 x i32> %170 to <2 x i64>
  %172 = load <2 x i64>, ptr %arrayidx282.6, align 8
  %173 = add nsw <2 x i64> %172, %171
  store <2 x i64> %173, ptr %arrayidx282.6, align 8
  %arrayidx273.8 = getelementptr inbounds i8, ptr %h, i64 27108
  %arrayidx282.8 = getelementptr inbounds [2 x [17 x i64]], ptr %i_mb_partition276, i64 0, i64 %idxprom279.2, i64 8
  %174 = load <2 x i32>, ptr %arrayidx273.8, align 4
  %175 = sext <2 x i32> %174 to <2 x i64>
  %176 = load <2 x i64>, ptr %arrayidx282.8, align 8
  %177 = add nsw <2 x i64> %176, %175
  store <2 x i64> %177, ptr %arrayidx282.8, align 8
  %arrayidx273.10 = getelementptr inbounds i8, ptr %h, i64 27116
  %arrayidx282.10 = getelementptr inbounds [2 x [17 x i64]], ptr %i_mb_partition276, i64 0, i64 %idxprom279.2, i64 10
  %178 = load <2 x i32>, ptr %arrayidx273.10, align 4
  %179 = sext <2 x i32> %178 to <2 x i64>
  %180 = load <2 x i64>, ptr %arrayidx282.10, align 8
  %181 = add nsw <2 x i64> %180, %179
  store <2 x i64> %181, ptr %arrayidx282.10, align 8
  %arrayidx273.12 = getelementptr inbounds i8, ptr %h, i64 27124
  %arrayidx282.12 = getelementptr inbounds [2 x [17 x i64]], ptr %i_mb_partition276, i64 0, i64 %idxprom279.2, i64 12
  %182 = load <2 x i32>, ptr %arrayidx273.12, align 4
  %183 = sext <2 x i32> %182 to <2 x i64>
  %184 = load <2 x i64>, ptr %arrayidx282.12, align 8
  %185 = add nsw <2 x i64> %184, %183
  store <2 x i64> %185, ptr %arrayidx282.12, align 8
  %arrayidx273.14 = getelementptr inbounds i8, ptr %h, i64 27132
  %arrayidx282.14 = getelementptr inbounds [2 x [17 x i64]], ptr %i_mb_partition276, i64 0, i64 %idxprom279.2, i64 14
  %186 = load <2 x i32>, ptr %arrayidx273.14, align 4
  %187 = sext <2 x i32> %186 to <2 x i64>
  %188 = load <2 x i64>, ptr %arrayidx282.14, align 8
  %189 = add nsw <2 x i64> %188, %187
  store <2 x i64> %189, ptr %arrayidx282.14, align 8
  %arrayidx273.16 = getelementptr inbounds i8, ptr %h, i64 27140
  %190 = load i32, ptr %arrayidx273.16, align 4
  %conv274.16 = sext i32 %190 to i64
  %191 = load i32, ptr %i_type222, align 16
  %idxprom279.16 = sext i32 %191 to i64
  %arrayidx282.16 = getelementptr inbounds [2 x [17 x i64]], ptr %i_mb_partition276, i64 0, i64 %idxprom279.16, i64 16
  %192 = load i64, ptr %arrayidx282.16, align 8
  %add283.16 = add nsw i64 %192, %conv274.16
  store i64 %add283.16, ptr %arrayidx282.16, align 8
  %i_mb_count_8x8dct = getelementptr inbounds i8, ptr %h, i64 26812
  %i_mb_count_8x8dct300 = getelementptr inbounds i8, ptr %h, i64 28864
  %193 = load <2 x i32>, ptr %i_mb_count_8x8dct, align 4
  %194 = sext <2 x i32> %193 to <2 x i64>
  %195 = load <2 x i64>, ptr %i_mb_count_8x8dct300, align 8
  %196 = add nsw <2 x i64> %195, %194
  store <2 x i64> %196, ptr %i_mb_count_8x8dct300, align 8
  %i_mb_cbp = getelementptr inbounds i8, ptr %h, i64 27144
  %i_mb_cbp320 = getelementptr inbounds i8, ptr %h, i64 29904
  %197 = load <2 x i32>, ptr %i_mb_cbp, align 4
  %198 = sext <2 x i32> %197 to <2 x i64>
  %199 = load <2 x i64>, ptr %i_mb_cbp320, align 8
  %200 = add nsw <2 x i64> %199, %198
  store <2 x i64> %200, ptr %i_mb_cbp320, align 8
  %arrayidx317.2 = getelementptr inbounds i8, ptr %h, i64 27152
  %arrayidx322.2 = getelementptr inbounds i8, ptr %h, i64 29920
  %201 = load <2 x i32>, ptr %arrayidx317.2, align 4
  %202 = sext <2 x i32> %201 to <2 x i64>
  %203 = load <2 x i64>, ptr %arrayidx322.2, align 8
  %204 = add nsw <2 x i64> %203, %202
  store <2 x i64> %204, ptr %arrayidx322.2, align 8
  %arrayidx317.4 = getelementptr inbounds i8, ptr %h, i64 27160
  %arrayidx322.4 = getelementptr inbounds i8, ptr %h, i64 29936
  %205 = load <2 x i32>, ptr %arrayidx317.4, align 4
  %206 = sext <2 x i32> %205 to <2 x i64>
  %207 = load <2 x i64>, ptr %arrayidx322.4, align 8
  %208 = add nsw <2 x i64> %207, %206
  store <2 x i64> %208, ptr %arrayidx322.4, align 8
  %i_mb_pred_mode = getelementptr inbounds i8, ptr %h, i64 27168
  %i_mb_pred_mode347 = getelementptr inbounds i8, ptr %h, i64 29952
  %209 = load <2 x i32>, ptr %i_mb_pred_mode, align 4
  %210 = sext <2 x i32> %209 to <2 x i64>
  %211 = load <2 x i64>, ptr %i_mb_pred_mode347, align 8
  %212 = add nsw <2 x i64> %211, %210
  store <2 x i64> %212, ptr %i_mb_pred_mode347, align 8
  %arrayidx344.2 = getelementptr inbounds i8, ptr %h, i64 27176
  %arrayidx351.2 = getelementptr inbounds i8, ptr %h, i64 29968
  %213 = load <2 x i32>, ptr %arrayidx344.2, align 4
  %214 = sext <2 x i32> %213 to <2 x i64>
  %215 = load <2 x i64>, ptr %arrayidx351.2, align 8
  %216 = add nsw <2 x i64> %215, %214
  store <2 x i64> %216, ptr %arrayidx351.2, align 8
  %arrayidx344.4 = getelementptr inbounds i8, ptr %h, i64 27184
  %arrayidx351.4 = getelementptr inbounds i8, ptr %h, i64 29984
  %217 = load <2 x i32>, ptr %arrayidx344.4, align 4
  %218 = sext <2 x i32> %217 to <2 x i64>
  %219 = load <2 x i64>, ptr %arrayidx351.4, align 8
  %220 = add nsw <2 x i64> %219, %218
  store <2 x i64> %220, ptr %arrayidx351.4, align 8
  %arrayidx344.6 = getelementptr inbounds i8, ptr %h, i64 27192
  %arrayidx351.6 = getelementptr inbounds i8, ptr %h, i64 30000
  %221 = load <2 x i32>, ptr %arrayidx344.6, align 4
  %222 = sext <2 x i32> %221 to <2 x i64>
  %223 = load <2 x i64>, ptr %arrayidx351.6, align 8
  %224 = add nsw <2 x i64> %223, %222
  store <2 x i64> %224, ptr %arrayidx351.6, align 8
  %arrayidx344.8 = getelementptr inbounds i8, ptr %h, i64 27200
  %arrayidx351.8 = getelementptr inbounds i8, ptr %h, i64 30016
  %225 = load <2 x i32>, ptr %arrayidx344.8, align 4
  %226 = sext <2 x i32> %225 to <2 x i64>
  %227 = load <2 x i64>, ptr %arrayidx351.8, align 8
  %228 = add nsw <2 x i64> %227, %226
  store <2 x i64> %228, ptr %arrayidx351.8, align 8
  %arrayidx344.10 = getelementptr inbounds i8, ptr %h, i64 27208
  %arrayidx351.10 = getelementptr inbounds i8, ptr %h, i64 30032
  %229 = load <2 x i32>, ptr %arrayidx344.10, align 4
  %230 = sext <2 x i32> %229 to <2 x i64>
  %231 = load <2 x i64>, ptr %arrayidx351.10, align 8
  %232 = add nsw <2 x i64> %231, %230
  store <2 x i64> %232, ptr %arrayidx351.10, align 8
  %arrayidx344.12 = getelementptr inbounds i8, ptr %h, i64 27216
  %arrayidx351.12 = getelementptr inbounds i8, ptr %h, i64 30048
  %233 = load <2 x i32>, ptr %arrayidx344.12, align 4
  %234 = sext <2 x i32> %233 to <2 x i64>
  %235 = load <2 x i64>, ptr %arrayidx351.12, align 8
  %236 = add nsw <2 x i64> %235, %234
  store <2 x i64> %236, ptr %arrayidx351.12, align 8
  %arrayidx344.1.1 = getelementptr inbounds i8, ptr %h, i64 27224
  %arrayidx351.1.1 = getelementptr inbounds i8, ptr %h, i64 30064
  %237 = load <2 x i32>, ptr %arrayidx344.1.1, align 4
  %238 = sext <2 x i32> %237 to <2 x i64>
  %239 = load <2 x i64>, ptr %arrayidx351.1.1, align 8
  %240 = add nsw <2 x i64> %239, %238
  store <2 x i64> %240, ptr %arrayidx351.1.1, align 8
  %arrayidx344.3.1 = getelementptr inbounds i8, ptr %h, i64 27232
  %arrayidx351.3.1 = getelementptr inbounds i8, ptr %h, i64 30080
  %241 = load <2 x i32>, ptr %arrayidx344.3.1, align 4
  %242 = sext <2 x i32> %241 to <2 x i64>
  %243 = load <2 x i64>, ptr %arrayidx351.3.1, align 8
  %244 = add nsw <2 x i64> %243, %242
  store <2 x i64> %244, ptr %arrayidx351.3.1, align 8
  %arrayidx344.5.1 = getelementptr inbounds i8, ptr %h, i64 27240
  %arrayidx351.5.1 = getelementptr inbounds i8, ptr %h, i64 30096
  %245 = load <2 x i32>, ptr %arrayidx344.5.1, align 4
  %246 = sext <2 x i32> %245 to <2 x i64>
  %247 = load <2 x i64>, ptr %arrayidx351.5.1, align 8
  %248 = add nsw <2 x i64> %247, %246
  store <2 x i64> %248, ptr %arrayidx351.5.1, align 8
  %arrayidx344.7.1 = getelementptr inbounds i8, ptr %h, i64 27248
  %arrayidx351.7.1 = getelementptr inbounds i8, ptr %h, i64 30112
  %249 = load <2 x i32>, ptr %arrayidx344.7.1, align 4
  %250 = sext <2 x i32> %249 to <2 x i64>
  %251 = load <2 x i64>, ptr %arrayidx351.7.1, align 8
  %252 = add nsw <2 x i64> %251, %250
  store <2 x i64> %252, ptr %arrayidx351.7.1, align 8
  %arrayidx344.9.1 = getelementptr inbounds i8, ptr %h, i64 27256
  %arrayidx351.9.1 = getelementptr inbounds i8, ptr %h, i64 30128
  %253 = load <2 x i32>, ptr %arrayidx344.9.1, align 4
  %254 = sext <2 x i32> %253 to <2 x i64>
  %255 = load <2 x i64>, ptr %arrayidx351.9.1, align 8
  %256 = add nsw <2 x i64> %255, %254
  store <2 x i64> %256, ptr %arrayidx351.9.1, align 8
  %arrayidx344.11.1 = getelementptr inbounds i8, ptr %h, i64 27264
  %arrayidx351.11.1 = getelementptr inbounds i8, ptr %h, i64 30144
  %257 = load <2 x i32>, ptr %arrayidx344.11.1, align 4
  %258 = sext <2 x i32> %257 to <2 x i64>
  %259 = load <2 x i64>, ptr %arrayidx351.11.1, align 8
  %260 = add nsw <2 x i64> %259, %258
  store <2 x i64> %260, ptr %arrayidx351.11.1, align 8
  %arrayidx344.21282 = getelementptr inbounds i8, ptr %h, i64 27272
  %arrayidx351.21284 = getelementptr inbounds i8, ptr %h, i64 30160
  %261 = load <2 x i32>, ptr %arrayidx344.21282, align 4
  %262 = sext <2 x i32> %261 to <2 x i64>
  %263 = load <2 x i64>, ptr %arrayidx351.21284, align 8
  %264 = add nsw <2 x i64> %263, %262
  store <2 x i64> %264, ptr %arrayidx351.21284, align 8
  %arrayidx344.2.2 = getelementptr inbounds i8, ptr %h, i64 27280
  %arrayidx351.2.2 = getelementptr inbounds i8, ptr %h, i64 30176
  %265 = load <2 x i32>, ptr %arrayidx344.2.2, align 4
  %266 = sext <2 x i32> %265 to <2 x i64>
  %267 = load <2 x i64>, ptr %arrayidx351.2.2, align 8
  %268 = add nsw <2 x i64> %267, %266
  store <2 x i64> %268, ptr %arrayidx351.2.2, align 8
  %arrayidx344.4.2 = getelementptr inbounds i8, ptr %h, i64 27288
  %arrayidx351.4.2 = getelementptr inbounds i8, ptr %h, i64 30192
  %269 = load <2 x i32>, ptr %arrayidx344.4.2, align 4
  %270 = sext <2 x i32> %269 to <2 x i64>
  %271 = load <2 x i64>, ptr %arrayidx351.4.2, align 8
  %272 = add nsw <2 x i64> %271, %270
  store <2 x i64> %272, ptr %arrayidx351.4.2, align 8
  %arrayidx344.6.2 = getelementptr inbounds i8, ptr %h, i64 27296
  %arrayidx351.6.2 = getelementptr inbounds i8, ptr %h, i64 30208
  %273 = load <2 x i32>, ptr %arrayidx344.6.2, align 4
  %274 = sext <2 x i32> %273 to <2 x i64>
  %275 = load <2 x i64>, ptr %arrayidx351.6.2, align 8
  %276 = add nsw <2 x i64> %275, %274
  store <2 x i64> %276, ptr %arrayidx351.6.2, align 8
  %arrayidx344.8.2 = getelementptr inbounds i8, ptr %h, i64 27304
  %arrayidx351.8.2 = getelementptr inbounds i8, ptr %h, i64 30224
  %277 = load <2 x i32>, ptr %arrayidx344.8.2, align 4
  %278 = sext <2 x i32> %277 to <2 x i64>
  %279 = load <2 x i64>, ptr %arrayidx351.8.2, align 8
  %280 = add nsw <2 x i64> %279, %278
  store <2 x i64> %280, ptr %arrayidx351.8.2, align 8
  %arrayidx344.10.2 = getelementptr inbounds i8, ptr %h, i64 27312
  %arrayidx351.10.2 = getelementptr inbounds i8, ptr %h, i64 30240
  %281 = load <2 x i32>, ptr %arrayidx344.10.2, align 4
  %282 = sext <2 x i32> %281 to <2 x i64>
  %283 = load <2 x i64>, ptr %arrayidx351.10.2, align 8
  %284 = add nsw <2 x i64> %283, %282
  store <2 x i64> %284, ptr %arrayidx351.10.2, align 8
  %arrayidx344.12.2 = getelementptr inbounds i8, ptr %h, i64 27320
  %arrayidx351.12.2 = getelementptr inbounds i8, ptr %h, i64 30256
  %285 = load <2 x i32>, ptr %arrayidx344.12.2, align 4
  %286 = sext <2 x i32> %285 to <2 x i64>
  %287 = load <2 x i64>, ptr %arrayidx351.12.2, align 8
  %288 = add nsw <2 x i64> %287, %286
  store <2 x i64> %288, ptr %arrayidx351.12.2, align 8
  %arrayidx344.1.3 = getelementptr inbounds i8, ptr %h, i64 27328
  %arrayidx351.1.3 = getelementptr inbounds i8, ptr %h, i64 30272
  %289 = load <2 x i32>, ptr %arrayidx344.1.3, align 4
  %290 = sext <2 x i32> %289 to <2 x i64>
  %291 = load <2 x i64>, ptr %arrayidx351.1.3, align 8
  %292 = add nsw <2 x i64> %291, %290
  store <2 x i64> %292, ptr %arrayidx351.1.3, align 8
  %arrayidx344.3.3 = getelementptr inbounds i8, ptr %h, i64 27336
  %arrayidx351.3.3 = getelementptr inbounds i8, ptr %h, i64 30288
  %293 = load <2 x i32>, ptr %arrayidx344.3.3, align 4
  %294 = sext <2 x i32> %293 to <2 x i64>
  %295 = load <2 x i64>, ptr %arrayidx351.3.3, align 8
  %296 = add nsw <2 x i64> %295, %294
  store <2 x i64> %296, ptr %arrayidx351.3.3, align 8
  %arrayidx344.5.3 = getelementptr inbounds i8, ptr %h, i64 27344
  %arrayidx351.5.3 = getelementptr inbounds i8, ptr %h, i64 30304
  %297 = load <2 x i32>, ptr %arrayidx344.5.3, align 4
  %298 = sext <2 x i32> %297 to <2 x i64>
  %299 = load <2 x i64>, ptr %arrayidx351.5.3, align 8
  %300 = add nsw <2 x i64> %299, %298
  store <2 x i64> %300, ptr %arrayidx351.5.3, align 8
  %arrayidx344.7.3 = getelementptr inbounds i8, ptr %h, i64 27352
  %arrayidx351.7.3 = getelementptr inbounds i8, ptr %h, i64 30320
  %301 = load <2 x i32>, ptr %arrayidx344.7.3, align 4
  %302 = sext <2 x i32> %301 to <2 x i64>
  %303 = load <2 x i64>, ptr %arrayidx351.7.3, align 8
  %304 = add nsw <2 x i64> %303, %302
  store <2 x i64> %304, ptr %arrayidx351.7.3, align 8
  %arrayidx344.9.3 = getelementptr inbounds i8, ptr %h, i64 27360
  %arrayidx351.9.3 = getelementptr inbounds i8, ptr %h, i64 30336
  %305 = load <2 x i32>, ptr %arrayidx344.9.3, align 4
  %306 = sext <2 x i32> %305 to <2 x i64>
  %307 = load <2 x i64>, ptr %arrayidx351.9.3, align 8
  %308 = add nsw <2 x i64> %307, %306
  store <2 x i64> %308, ptr %arrayidx351.9.3, align 8
  %arrayidx344.11.3 = getelementptr inbounds i8, ptr %h, i64 27368
  %arrayidx351.11.3 = getelementptr inbounds i8, ptr %h, i64 30352
  %309 = load <2 x i32>, ptr %arrayidx344.11.3, align 4
  %310 = sext <2 x i32> %309 to <2 x i64>
  %311 = load <2 x i64>, ptr %arrayidx351.11.3, align 8
  %312 = add nsw <2 x i64> %311, %310
  store <2 x i64> %312, ptr %arrayidx351.11.3, align 8
  %313 = load i32, ptr %i_type222, align 16
  %cmp363.not = icmp eq i32 %313, 2
  br i1 %cmp363.not, label %if.end522, label %for.cond366.preheader

for.cond366.preheader:                            ; preds = %x264_thread_sync_stat.exit
  %i_mb_count_ref385 = getelementptr inbounds i8, ptr %h, i64 28880
  %i_mb_count_ref = getelementptr inbounds i8, ptr %h, i64 26820
  %idxprom388 = sext i32 %313 to i64
  %arrayidx393 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388, i64 0, i64 0
  %314 = load <2 x i32>, ptr %i_mb_count_ref, align 4
  %315 = sext <2 x i32> %314 to <2 x i64>
  %316 = load <2 x i64>, ptr %arrayidx393, align 8
  %317 = add nsw <2 x i64> %316, %315
  store <2 x i64> %317, ptr %arrayidx393, align 8
  %arrayidx382.2 = getelementptr inbounds i8, ptr %h, i64 26828
  %arrayidx393.2 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388, i64 0, i64 2
  %318 = load <2 x i32>, ptr %arrayidx382.2, align 4
  %319 = sext <2 x i32> %318 to <2 x i64>
  %320 = load <2 x i64>, ptr %arrayidx393.2, align 8
  %321 = add nsw <2 x i64> %320, %319
  store <2 x i64> %321, ptr %arrayidx393.2, align 8
  %arrayidx382.4 = getelementptr inbounds i8, ptr %h, i64 26836
  %arrayidx393.4 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388, i64 0, i64 4
  %322 = load <2 x i32>, ptr %arrayidx382.4, align 4
  %323 = sext <2 x i32> %322 to <2 x i64>
  %324 = load <2 x i64>, ptr %arrayidx393.4, align 8
  %325 = add nsw <2 x i64> %324, %323
  store <2 x i64> %325, ptr %arrayidx393.4, align 8
  %arrayidx382.6 = getelementptr inbounds i8, ptr %h, i64 26844
  %arrayidx393.6 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388, i64 0, i64 6
  %326 = load <2 x i32>, ptr %arrayidx382.6, align 4
  %327 = sext <2 x i32> %326 to <2 x i64>
  %328 = load <2 x i64>, ptr %arrayidx393.6, align 8
  %329 = add nsw <2 x i64> %328, %327
  store <2 x i64> %329, ptr %arrayidx393.6, align 8
  %arrayidx382.8 = getelementptr inbounds i8, ptr %h, i64 26852
  %arrayidx393.8 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388, i64 0, i64 8
  %330 = load <2 x i32>, ptr %arrayidx382.8, align 4
  %331 = sext <2 x i32> %330 to <2 x i64>
  %332 = load <2 x i64>, ptr %arrayidx393.8, align 8
  %333 = add nsw <2 x i64> %332, %331
  store <2 x i64> %333, ptr %arrayidx393.8, align 8
  %arrayidx382.10 = getelementptr inbounds i8, ptr %h, i64 26860
  %arrayidx393.10 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388, i64 0, i64 10
  %334 = load <2 x i32>, ptr %arrayidx382.10, align 4
  %335 = sext <2 x i32> %334 to <2 x i64>
  %336 = load <2 x i64>, ptr %arrayidx393.10, align 8
  %337 = add nsw <2 x i64> %336, %335
  store <2 x i64> %337, ptr %arrayidx393.10, align 8
  %arrayidx382.12 = getelementptr inbounds i8, ptr %h, i64 26868
  %arrayidx393.12 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388, i64 0, i64 12
  %338 = load <2 x i32>, ptr %arrayidx382.12, align 4
  %339 = sext <2 x i32> %338 to <2 x i64>
  %340 = load <2 x i64>, ptr %arrayidx393.12, align 8
  %341 = add nsw <2 x i64> %340, %339
  store <2 x i64> %341, ptr %arrayidx393.12, align 8
  %arrayidx382.14 = getelementptr inbounds i8, ptr %h, i64 26876
  %342 = load i32, ptr %i_type222, align 16
  %idxprom388.14 = sext i32 %342 to i64
  %arrayidx393.14 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.14, i64 0, i64 14
  %343 = load <2 x i32>, ptr %arrayidx382.14, align 4
  %344 = sext <2 x i32> %343 to <2 x i64>
  %345 = load <2 x i64>, ptr %arrayidx393.14, align 8
  %346 = add nsw <2 x i64> %345, %344
  store <2 x i64> %346, ptr %arrayidx393.14, align 8
  %arrayidx382.16 = getelementptr inbounds i8, ptr %h, i64 26884
  %347 = load i32, ptr %arrayidx382.16, align 4
  %conv383.16 = sext i32 %347 to i64
  %arrayidx393.16 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.14, i64 0, i64 16
  %348 = load i64, ptr %arrayidx393.16, align 8
  %add394.16 = add nsw i64 %348, %conv383.16
  store i64 %add394.16, ptr %arrayidx393.16, align 8
  %arrayidx382.17 = getelementptr inbounds i8, ptr %h, i64 26888
  %349 = load i32, ptr %i_type222, align 16
  %idxprom388.17 = sext i32 %349 to i64
  %arrayidx393.17 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17, i64 0, i64 17
  %350 = load <2 x i32>, ptr %arrayidx382.17, align 4
  %351 = sext <2 x i32> %350 to <2 x i64>
  %352 = load <2 x i64>, ptr %arrayidx393.17, align 8
  %353 = add nsw <2 x i64> %352, %351
  store <2 x i64> %353, ptr %arrayidx393.17, align 8
  %arrayidx382.19 = getelementptr inbounds i8, ptr %h, i64 26896
  %arrayidx393.19 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17, i64 0, i64 19
  %354 = load <2 x i32>, ptr %arrayidx382.19, align 4
  %355 = sext <2 x i32> %354 to <2 x i64>
  %356 = load <2 x i64>, ptr %arrayidx393.19, align 8
  %357 = add nsw <2 x i64> %356, %355
  store <2 x i64> %357, ptr %arrayidx393.19, align 8
  %arrayidx382.21 = getelementptr inbounds i8, ptr %h, i64 26904
  %arrayidx393.21 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17, i64 0, i64 21
  %358 = load <2 x i32>, ptr %arrayidx382.21, align 4
  %359 = sext <2 x i32> %358 to <2 x i64>
  %360 = load <2 x i64>, ptr %arrayidx393.21, align 8
  %361 = add nsw <2 x i64> %360, %359
  store <2 x i64> %361, ptr %arrayidx393.21, align 8
  %arrayidx382.23 = getelementptr inbounds i8, ptr %h, i64 26912
  %arrayidx393.23 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17, i64 0, i64 23
  %362 = load <2 x i32>, ptr %arrayidx382.23, align 4
  %363 = sext <2 x i32> %362 to <2 x i64>
  %364 = load <2 x i64>, ptr %arrayidx393.23, align 8
  %365 = add nsw <2 x i64> %364, %363
  store <2 x i64> %365, ptr %arrayidx393.23, align 8
  %arrayidx382.25 = getelementptr inbounds i8, ptr %h, i64 26920
  %arrayidx393.25 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17, i64 0, i64 25
  %366 = load <2 x i32>, ptr %arrayidx382.25, align 4
  %367 = sext <2 x i32> %366 to <2 x i64>
  %368 = load <2 x i64>, ptr %arrayidx393.25, align 8
  %369 = add nsw <2 x i64> %368, %367
  store <2 x i64> %369, ptr %arrayidx393.25, align 8
  %arrayidx382.27 = getelementptr inbounds i8, ptr %h, i64 26928
  %arrayidx393.27 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17, i64 0, i64 27
  %370 = load <2 x i32>, ptr %arrayidx382.27, align 4
  %371 = sext <2 x i32> %370 to <2 x i64>
  %372 = load <2 x i64>, ptr %arrayidx393.27, align 8
  %373 = add nsw <2 x i64> %372, %371
  store <2 x i64> %373, ptr %arrayidx393.27, align 8
  %arrayidx382.29 = getelementptr inbounds i8, ptr %h, i64 26936
  %374 = load i32, ptr %arrayidx382.29, align 4
  %conv383.29 = sext i32 %374 to i64
  %arrayidx393.29 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17, i64 0, i64 29
  %375 = load i64, ptr %arrayidx393.29, align 8
  %add394.29 = add nsw i64 %375, %conv383.29
  store i64 %add394.29, ptr %arrayidx393.29, align 8
  %arrayidx382.30 = getelementptr inbounds i8, ptr %h, i64 26940
  %376 = load i32, ptr %arrayidx382.30, align 4
  %conv383.30 = sext i32 %376 to i64
  %arrayidx393.30 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17, i64 0, i64 30
  %377 = load i64, ptr %arrayidx393.30, align 8
  %add394.30 = add nsw i64 %377, %conv383.30
  store i64 %add394.30, ptr %arrayidx393.30, align 8
  %arrayidx382.31 = getelementptr inbounds i8, ptr %h, i64 26944
  %378 = load i32, ptr %arrayidx382.31, align 4
  %conv383.31 = sext i32 %378 to i64
  %379 = load i32, ptr %i_type222, align 16
  %idxprom388.31 = sext i32 %379 to i64
  %arrayidx393.31 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.31, i64 0, i64 31
  %380 = load i64, ptr %arrayidx393.31, align 8
  %add394.31 = add nsw i64 %380, %conv383.31
  store i64 %add394.31, ptr %arrayidx393.31, align 8
  %arrayidx382.1 = getelementptr inbounds i8, ptr %h, i64 26948
  %idxprom388.1 = sext i32 %379 to i64
  %arrayidx393.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.1, i64 1, i64 0
  %381 = load <2 x i32>, ptr %arrayidx382.1, align 4
  %382 = sext <2 x i32> %381 to <2 x i64>
  %383 = load <2 x i64>, ptr %arrayidx393.1, align 8
  %384 = add nsw <2 x i64> %383, %382
  store <2 x i64> %384, ptr %arrayidx393.1, align 8
  %arrayidx382.2.1 = getelementptr inbounds i8, ptr %h, i64 26956
  %arrayidx393.2.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.1, i64 1, i64 2
  %385 = load <2 x i32>, ptr %arrayidx382.2.1, align 4
  %386 = sext <2 x i32> %385 to <2 x i64>
  %387 = load <2 x i64>, ptr %arrayidx393.2.1, align 8
  %388 = add nsw <2 x i64> %387, %386
  store <2 x i64> %388, ptr %arrayidx393.2.1, align 8
  %arrayidx382.4.1 = getelementptr inbounds i8, ptr %h, i64 26964
  %arrayidx393.4.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.1, i64 1, i64 4
  %389 = load <2 x i32>, ptr %arrayidx382.4.1, align 4
  %390 = sext <2 x i32> %389 to <2 x i64>
  %391 = load <2 x i64>, ptr %arrayidx393.4.1, align 8
  %392 = add nsw <2 x i64> %391, %390
  store <2 x i64> %392, ptr %arrayidx393.4.1, align 8
  %arrayidx382.6.1 = getelementptr inbounds i8, ptr %h, i64 26972
  %arrayidx393.6.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.1, i64 1, i64 6
  %393 = load <2 x i32>, ptr %arrayidx382.6.1, align 4
  %394 = sext <2 x i32> %393 to <2 x i64>
  %395 = load <2 x i64>, ptr %arrayidx393.6.1, align 8
  %396 = add nsw <2 x i64> %395, %394
  store <2 x i64> %396, ptr %arrayidx393.6.1, align 8
  %arrayidx382.8.1 = getelementptr inbounds i8, ptr %h, i64 26980
  %arrayidx393.8.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.1, i64 1, i64 8
  %397 = load <2 x i32>, ptr %arrayidx382.8.1, align 4
  %398 = sext <2 x i32> %397 to <2 x i64>
  %399 = load <2 x i64>, ptr %arrayidx393.8.1, align 8
  %400 = add nsw <2 x i64> %399, %398
  store <2 x i64> %400, ptr %arrayidx393.8.1, align 8
  %arrayidx382.10.1 = getelementptr inbounds i8, ptr %h, i64 26988
  %arrayidx393.10.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.1, i64 1, i64 10
  %401 = load <2 x i32>, ptr %arrayidx382.10.1, align 4
  %402 = sext <2 x i32> %401 to <2 x i64>
  %403 = load <2 x i64>, ptr %arrayidx393.10.1, align 8
  %404 = add nsw <2 x i64> %403, %402
  store <2 x i64> %404, ptr %arrayidx393.10.1, align 8
  %arrayidx382.12.1 = getelementptr inbounds i8, ptr %h, i64 26996
  %arrayidx393.12.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.1, i64 1, i64 12
  %405 = load <2 x i32>, ptr %arrayidx382.12.1, align 4
  %406 = sext <2 x i32> %405 to <2 x i64>
  %407 = load <2 x i64>, ptr %arrayidx393.12.1, align 8
  %408 = add nsw <2 x i64> %407, %406
  store <2 x i64> %408, ptr %arrayidx393.12.1, align 8
  %arrayidx382.14.1 = getelementptr inbounds i8, ptr %h, i64 27004
  %409 = load i32, ptr %i_type222, align 16
  %idxprom388.14.1 = sext i32 %409 to i64
  %arrayidx393.14.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.14.1, i64 1, i64 14
  %410 = load <2 x i32>, ptr %arrayidx382.14.1, align 4
  %411 = sext <2 x i32> %410 to <2 x i64>
  %412 = load <2 x i64>, ptr %arrayidx393.14.1, align 8
  %413 = add nsw <2 x i64> %412, %411
  store <2 x i64> %413, ptr %arrayidx393.14.1, align 8
  %arrayidx382.16.1 = getelementptr inbounds i8, ptr %h, i64 27012
  %414 = load i32, ptr %arrayidx382.16.1, align 4
  %conv383.16.1 = sext i32 %414 to i64
  %arrayidx393.16.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.14.1, i64 1, i64 16
  %415 = load i64, ptr %arrayidx393.16.1, align 8
  %add394.16.1 = add nsw i64 %415, %conv383.16.1
  store i64 %add394.16.1, ptr %arrayidx393.16.1, align 8
  %arrayidx382.17.1 = getelementptr inbounds i8, ptr %h, i64 27016
  %416 = load i32, ptr %i_type222, align 16
  %idxprom388.17.1 = sext i32 %416 to i64
  %arrayidx393.17.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17.1, i64 1, i64 17
  %417 = load <2 x i32>, ptr %arrayidx382.17.1, align 4
  %418 = sext <2 x i32> %417 to <2 x i64>
  %419 = load <2 x i64>, ptr %arrayidx393.17.1, align 8
  %420 = add nsw <2 x i64> %419, %418
  store <2 x i64> %420, ptr %arrayidx393.17.1, align 8
  %arrayidx382.19.1 = getelementptr inbounds i8, ptr %h, i64 27024
  %arrayidx393.19.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17.1, i64 1, i64 19
  %421 = load <2 x i32>, ptr %arrayidx382.19.1, align 4
  %422 = sext <2 x i32> %421 to <2 x i64>
  %423 = load <2 x i64>, ptr %arrayidx393.19.1, align 8
  %424 = add nsw <2 x i64> %423, %422
  store <2 x i64> %424, ptr %arrayidx393.19.1, align 8
  %arrayidx382.21.1 = getelementptr inbounds i8, ptr %h, i64 27032
  %arrayidx393.21.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17.1, i64 1, i64 21
  %425 = load <2 x i32>, ptr %arrayidx382.21.1, align 4
  %426 = sext <2 x i32> %425 to <2 x i64>
  %427 = load <2 x i64>, ptr %arrayidx393.21.1, align 8
  %428 = add nsw <2 x i64> %427, %426
  store <2 x i64> %428, ptr %arrayidx393.21.1, align 8
  %arrayidx382.23.1 = getelementptr inbounds i8, ptr %h, i64 27040
  %arrayidx393.23.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17.1, i64 1, i64 23
  %429 = load <2 x i32>, ptr %arrayidx382.23.1, align 4
  %430 = sext <2 x i32> %429 to <2 x i64>
  %431 = load <2 x i64>, ptr %arrayidx393.23.1, align 8
  %432 = add nsw <2 x i64> %431, %430
  store <2 x i64> %432, ptr %arrayidx393.23.1, align 8
  %arrayidx382.25.1 = getelementptr inbounds i8, ptr %h, i64 27048
  %arrayidx393.25.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17.1, i64 1, i64 25
  %433 = load <2 x i32>, ptr %arrayidx382.25.1, align 4
  %434 = sext <2 x i32> %433 to <2 x i64>
  %435 = load <2 x i64>, ptr %arrayidx393.25.1, align 8
  %436 = add nsw <2 x i64> %435, %434
  store <2 x i64> %436, ptr %arrayidx393.25.1, align 8
  %arrayidx382.27.1 = getelementptr inbounds i8, ptr %h, i64 27056
  %arrayidx393.27.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17.1, i64 1, i64 27
  %437 = load <2 x i32>, ptr %arrayidx382.27.1, align 4
  %438 = sext <2 x i32> %437 to <2 x i64>
  %439 = load <2 x i64>, ptr %arrayidx393.27.1, align 8
  %440 = add nsw <2 x i64> %439, %438
  store <2 x i64> %440, ptr %arrayidx393.27.1, align 8
  %arrayidx382.29.1 = getelementptr inbounds i8, ptr %h, i64 27064
  %441 = load i32, ptr %arrayidx382.29.1, align 4
  %conv383.29.1 = sext i32 %441 to i64
  %arrayidx393.29.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17.1, i64 1, i64 29
  %442 = load i64, ptr %arrayidx393.29.1, align 8
  %add394.29.1 = add nsw i64 %442, %conv383.29.1
  store i64 %add394.29.1, ptr %arrayidx393.29.1, align 8
  %arrayidx382.30.1 = getelementptr inbounds i8, ptr %h, i64 27068
  %443 = load i32, ptr %arrayidx382.30.1, align 4
  %conv383.30.1 = sext i32 %443 to i64
  %arrayidx393.30.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.17.1, i64 1, i64 30
  %444 = load i64, ptr %arrayidx393.30.1, align 8
  %add394.30.1 = add nsw i64 %444, %conv383.30.1
  store i64 %add394.30.1, ptr %arrayidx393.30.1, align 8
  %arrayidx382.31.1 = getelementptr inbounds i8, ptr %h, i64 27072
  %445 = load i32, ptr %arrayidx382.31.1, align 4
  %conv383.31.1 = sext i32 %445 to i64
  %446 = load i32, ptr %i_type222, align 16
  %idxprom388.31.1 = sext i32 %446 to i64
  %arrayidx393.31.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref385, i64 0, i64 %idxprom388.31.1, i64 1, i64 31
  %447 = load i64, ptr %arrayidx393.31.1, align 8
  %add394.31.1 = add nsw i64 %447, %conv383.31.1
  store i64 %add394.31.1, ptr %arrayidx393.31.1, align 8
  %cmp406 = icmp eq i32 %446, 0
  br i1 %cmp406, label %if.then408, label %if.end456

if.then408:                                       ; preds = %for.cond366.preheader
  %i_consecutive_bframes = getelementptr inbounds i8, ptr %h, i64 27520
  %448 = load ptr, ptr %fdec, align 16
  %i_frame411 = getelementptr inbounds i8, ptr %448, i64 56
  %449 = load i32, ptr %i_frame411, align 8
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  %450 = load ptr, ptr %fref0, align 16
  %i_frame413 = getelementptr inbounds i8, ptr %450, i64 56
  %451 = load i32, ptr %i_frame413, align 8
  %452 = xor i32 %451, -1
  %sub415 = add i32 %449, %452
  %idxprom416 = sext i32 %sub415 to i64
  %arrayidx417 = getelementptr inbounds [17 x i32], ptr %i_consecutive_bframes, i64 0, i64 %idxprom416
  %453 = load i32, ptr %arrayidx417, align 4
  %inc418 = add nsw i32 %453, 1
  store i32 %inc418, ptr %arrayidx417, align 4
  %i_weighted_pred = getelementptr inbounds i8, ptr %h, i64 396
  %454 = load i32, ptr %i_weighted_pred, align 4
  %cmp420 = icmp eq i32 %454, 2
  br i1 %cmp420, label %for.cond424.preheader, label %if.end456thread-pre-split

for.cond424.preheader:                            ; preds = %if.then408
  %i_ref0 = getelementptr inbounds i8, ptr %h, i64 14696
  %455 = load i32, ptr %i_ref0, align 8
  %cmp4311242 = icmp sgt i32 %455, 0
  %i_wpred = getelementptr inbounds i8, ptr %h, i64 30384
  br i1 %cmp4311242, label %for.cond430.preheader.us.preheader, label %if.end456thread-pre-split

for.cond430.preheader.us.preheader:               ; preds = %for.cond424.preheader
  %i_denom.us = getelementptr inbounds i8, ptr %h, i64 7616
  %456 = load i32, ptr %i_denom.us, align 16
  %cmp439.not.us = icmp eq i32 %456, 0
  br i1 %cmp439.not.us, label %cleanup449.us, label %if.then441.us

if.then441.us:                                    ; preds = %for.cond430.preheader.us.preheader
  %457 = load i32, ptr %i_wpred, align 4
  %inc445.us = add nsw i32 %457, 1
  store i32 %inc445.us, ptr %i_wpred, align 4
  br label %cleanup449.us

cleanup449.us:                                    ; preds = %for.cond430.preheader.us.preheader, %if.then441.us
  %i_denom.us.1 = getelementptr inbounds i8, ptr %h, i64 7680
  %458 = load i32, ptr %i_denom.us.1, align 16
  %cmp439.not.us.1 = icmp eq i32 %458, 0
  br i1 %cmp439.not.us.1, label %cleanup449.us.1, label %if.then441.us.1

if.then441.us.1:                                  ; preds = %cleanup449.us
  %arrayidx444.us.1 = getelementptr inbounds i8, ptr %h, i64 30388
  %459 = load i32, ptr %arrayidx444.us.1, align 4
  %inc445.us.1 = add nsw i32 %459, 1
  store i32 %inc445.us.1, ptr %arrayidx444.us.1, align 4
  br label %cleanup449.us.1

cleanup449.us.1:                                  ; preds = %cleanup449.us, %if.then441.us.1
  %i_denom.us.2 = getelementptr inbounds i8, ptr %h, i64 7744
  %460 = load i32, ptr %i_denom.us.2, align 16
  %cmp439.not.us.2 = icmp eq i32 %460, 0
  br i1 %cmp439.not.us.2, label %if.end456thread-pre-split, label %if.then441.us.2

if.then441.us.2:                                  ; preds = %cleanup449.us.1
  %arrayidx444.us.2 = getelementptr inbounds i8, ptr %h, i64 30392
  %461 = load i32, ptr %arrayidx444.us.2, align 4
  %inc445.us.2 = add nsw i32 %461, 1
  store i32 %inc445.us.2, ptr %arrayidx444.us.2, align 4
  br label %if.end456thread-pre-split

if.end456thread-pre-split:                        ; preds = %if.then441.us.2, %cleanup449.us.1, %for.cond424.preheader, %if.then408
  %.pr1220 = load i32, ptr %i_type222, align 16
  br label %if.end456

if.end456:                                        ; preds = %if.end456thread-pre-split, %for.cond366.preheader
  %462 = phi i32 [ %.pr1220, %if.end456thread-pre-split ], [ %446, %for.cond366.preheader ]
  %cmp459 = icmp eq i32 %462, 1
  br i1 %cmp459, label %if.then461, label %if.end522

if.then461:                                       ; preds = %if.end456
  %i_direct_frames = getelementptr inbounds i8, ptr %h, i64 30376
  %b_direct_spatial_mv_pred = getelementptr inbounds i8, ptr %h, i64 7304
  %463 = load i32, ptr %b_direct_spatial_mv_pred, align 8
  %idxprom464 = sext i32 %463 to i64
  %arrayidx465 = getelementptr inbounds [2 x i32], ptr %i_direct_frames, i64 0, i64 %idxprom464
  %464 = load i32, ptr %arrayidx465, align 4
  %inc466 = add nsw i32 %464, 1
  store i32 %inc466, ptr %arrayidx465, align 4
  %b_direct_auto_write = getelementptr inbounds i8, ptr %h, i64 25820
  %465 = load i32, ptr %b_direct_auto_write, align 4
  %tobool467.not = icmp eq i32 %465, 0
  br i1 %tobool467.not, label %if.end522, label %if.then468

if.then468:                                       ; preds = %if.then461
  %mb = getelementptr inbounds i8, ptr %h, i64 16368
  %i_direct_score = getelementptr inbounds i8, ptr %h, i64 30368
  %466 = load i32, ptr %i_direct_score, align 8
  %arrayidx473 = getelementptr inbounds i8, ptr %h, i64 30372
  %467 = load i32, ptr %arrayidx473, align 4
  %add474 = add nsw i32 %467, %466
  %468 = load i32, ptr %mb, align 16
  %cmp477 = icmp sgt i32 %add474, %468
  br i1 %cmp477, label %for.body485.preheader, label %if.end500

for.body485.preheader:                            ; preds = %if.then468
  %mul490 = mul nsw i32 %466, 9
  %div491 = sdiv i32 %mul490, 10
  %mul490.1 = mul nsw i32 %467, 9
  %div491.1 = sdiv i32 %mul490.1, 10
  br label %if.end500

if.end500:                                        ; preds = %for.body485.preheader, %if.then468
  %469 = phi i32 [ %div491.1, %for.body485.preheader ], [ %467, %if.then468 ]
  %470 = phi i32 [ %div491, %for.body485.preheader ], [ %466, %if.then468 ]
  %i_direct_score509 = getelementptr inbounds i8, ptr %h, i64 27376
  %471 = load i32, ptr %i_direct_score509, align 4
  %add516 = add nsw i32 %470, %471
  store i32 %add516, ptr %i_direct_score, align 4
  %arrayidx511.1 = getelementptr inbounds i8, ptr %h, i64 27380
  %472 = load i32, ptr %arrayidx511.1, align 4
  %arrayidx515.1 = getelementptr inbounds i8, ptr %h, i64 30372
  %add516.1 = add nsw i32 %469, %472
  store i32 %add516.1, ptr %arrayidx515.1, align 4
  br label %if.end522

if.end522:                                        ; preds = %if.end500, %x264_thread_sync_stat.exit, %if.then461, %if.end456
  store i8 0, ptr %psz_message, align 16
  %b_psnr = getelementptr inbounds i8, ptr %h, i64 476
  %473 = load i32, ptr %b_psnr, align 4
  %tobool526.not = icmp eq i32 %473, 0
  %.pre1319.pre1321 = load i32, ptr %i_type222, align 16
  br i1 %tobool526.not, label %if.end648, label %if.then527

if.then527:                                       ; preds = %if.end522
  %i_ssd = getelementptr inbounds i8, ptr %h, i64 27384
  %474 = load i64, ptr %i_ssd, align 8
  %arrayidx534 = getelementptr inbounds i8, ptr %h, i64 27392
  %475 = load i64, ptr %arrayidx534, align 8
  %arrayidx539 = getelementptr inbounds i8, ptr %h, i64 27400
  %476 = load i64, ptr %arrayidx539, align 8
  %add542 = add nsw i64 %475, %474
  %add544 = add nsw i64 %add542, %476
  %i_ssd_global = getelementptr inbounds i8, ptr %h, i64 27592
  %idxprom548 = sext i32 %.pre1319.pre1321 to i64
  %arrayidx549 = getelementptr inbounds [5 x i64], ptr %i_ssd_global, i64 0, i64 %idxprom548
  %477 = load i64, ptr %arrayidx549, align 8
  %add550 = add nsw i64 %477, %add544
  store i64 %add550, ptr %arrayidx549, align 8
  %i_width = getelementptr inbounds i8, ptr %h, i64 20
  %478 = load i32, ptr %i_width, align 4
  %mul557 = mul nsw i32 %478, 3
  %i_height = getelementptr inbounds i8, ptr %h, i64 24
  %479 = load i32, ptr %i_height, align 8
  %mul559 = mul nsw i32 %mul557, %479
  %div560 = sdiv i32 %mul559, 2
  %conv.i1102 = sitofp i64 %add544 to double
  %conv1.i = sitofp i32 %div560 to double
  %mul.i = fmul double %conv1.i, 6.502500e+04
  %div.i1103 = fdiv double %conv.i1102, %mul.i
  %cmp.i1104 = fcmp ugt double %div.i1103, 1.000000e-10
  br i1 %cmp.i1104, label %if.end.i1105, label %x264_psnr.exit

if.end.i1105:                                     ; preds = %if.then527
  %call.i = call double @log10(double noundef %div.i1103) #17
  %mul3.i = fmul double %call.i, -1.000000e+01
  %conv4.i = fptrunc double %mul3.i to float
  br label %x264_psnr.exit

x264_psnr.exit:                                   ; preds = %if.then527, %if.end.i1105
  %retval.0.i = phi float [ %conv4.i, %if.end.i1105 ], [ 1.000000e+02, %if.then527 ]
  %conv563 = fpext float %retval.0.i to double
  %f_psnr_average = getelementptr inbounds i8, ptr %h, i64 27632
  %480 = load i32, ptr %i_type222, align 16
  %idxprom567 = sext i32 %480 to i64
  %arrayidx568 = getelementptr inbounds [5 x double], ptr %f_psnr_average, i64 0, i64 %idxprom567
  %481 = load double, ptr %arrayidx568, align 8
  %add569 = fadd double %481, %conv563
  store double %add569, ptr %arrayidx568, align 8
  %482 = load i32, ptr %i_width, align 4
  %483 = load i32, ptr %i_height, align 8
  %mul575 = mul nsw i32 %483, %482
  %conv.i1106 = sitofp i64 %474 to double
  %conv1.i1107 = sitofp i32 %mul575 to double
  %mul.i1108 = fmul double %conv1.i1107, 6.502500e+04
  %div.i1109 = fdiv double %conv.i1106, %mul.i1108
  %cmp.i1110 = fcmp ugt double %div.i1109, 1.000000e-10
  br i1 %cmp.i1110, label %if.end.i1112, label %x264_psnr.exit1116

if.end.i1112:                                     ; preds = %x264_psnr.exit
  %call.i1113 = call double @log10(double noundef %div.i1109) #17
  %mul3.i1114 = fmul double %call.i1113, -1.000000e+01
  %conv4.i1115 = fptrunc double %mul3.i1114 to float
  br label %x264_psnr.exit1116

x264_psnr.exit1116:                               ; preds = %x264_psnr.exit, %if.end.i1112
  %retval.0.i1111 = phi float [ %conv4.i1115, %if.end.i1112 ], [ 1.000000e+02, %x264_psnr.exit ]
  %conv578 = fpext float %retval.0.i1111 to double
  %f_psnr_mean_y = getelementptr inbounds i8, ptr %h, i64 27672
  %484 = load i32, ptr %i_type222, align 16
  %idxprom582 = sext i32 %484 to i64
  %arrayidx583 = getelementptr inbounds [5 x double], ptr %f_psnr_mean_y, i64 0, i64 %idxprom582
  %485 = load double, ptr %arrayidx583, align 8
  %add584 = fadd double %485, %conv578
  store double %add584, ptr %arrayidx583, align 8
  %486 = load i32, ptr %i_width, align 4
  %487 = load i32, ptr %i_height, align 8
  %mul590 = mul nsw i32 %487, %486
  %div591 = sdiv i32 %mul590, 4
  %conv.i1117 = sitofp i64 %475 to double
  %conv1.i1118 = sitofp i32 %div591 to double
  %mul.i1119 = fmul double %conv1.i1118, 6.502500e+04
  %div.i1120 = fdiv double %conv.i1117, %mul.i1119
  %cmp.i1121 = fcmp ugt double %div.i1120, 1.000000e-10
  br i1 %cmp.i1121, label %if.end.i1123, label %x264_psnr.exit1127

if.end.i1123:                                     ; preds = %x264_psnr.exit1116
  %call.i1124 = call double @log10(double noundef %div.i1120) #17
  %mul3.i1125 = fmul double %call.i1124, -1.000000e+01
  %conv4.i1126 = fptrunc double %mul3.i1125 to float
  br label %x264_psnr.exit1127

x264_psnr.exit1127:                               ; preds = %x264_psnr.exit1116, %if.end.i1123
  %retval.0.i1122 = phi float [ %conv4.i1126, %if.end.i1123 ], [ 1.000000e+02, %x264_psnr.exit1116 ]
  %conv594 = fpext float %retval.0.i1122 to double
  %f_psnr_mean_u = getelementptr inbounds i8, ptr %h, i64 27712
  %488 = load i32, ptr %i_type222, align 16
  %idxprom598 = sext i32 %488 to i64
  %arrayidx599 = getelementptr inbounds [5 x double], ptr %f_psnr_mean_u, i64 0, i64 %idxprom598
  %489 = load double, ptr %arrayidx599, align 8
  %add600 = fadd double %489, %conv594
  store double %add600, ptr %arrayidx599, align 8
  %490 = load i32, ptr %i_width, align 4
  %491 = load i32, ptr %i_height, align 8
  %mul606 = mul nsw i32 %491, %490
  %div607 = sdiv i32 %mul606, 4
  %conv.i1128 = sitofp i64 %476 to double
  %conv1.i1129 = sitofp i32 %div607 to double
  %mul.i1130 = fmul double %conv1.i1129, 6.502500e+04
  %div.i1131 = fdiv double %conv.i1128, %mul.i1130
  %cmp.i1132 = fcmp ugt double %div.i1131, 1.000000e-10
  br i1 %cmp.i1132, label %if.end.i1134, label %x264_psnr.exit1138

if.end.i1134:                                     ; preds = %x264_psnr.exit1127
  %call.i1135 = call double @log10(double noundef %div.i1131) #17
  %mul3.i1136 = fmul double %call.i1135, -1.000000e+01
  %conv4.i1137 = fptrunc double %mul3.i1136 to float
  br label %x264_psnr.exit1138

x264_psnr.exit1138:                               ; preds = %x264_psnr.exit1127, %if.end.i1134
  %retval.0.i1133 = phi float [ %conv4.i1137, %if.end.i1134 ], [ 1.000000e+02, %x264_psnr.exit1127 ]
  %conv610 = fpext float %retval.0.i1133 to double
  %f_psnr_mean_v = getelementptr inbounds i8, ptr %h, i64 27752
  %492 = load i32, ptr %i_type222, align 16
  %idxprom614 = sext i32 %492 to i64
  %arrayidx615 = getelementptr inbounds [5 x double], ptr %f_psnr_mean_v, i64 0, i64 %idxprom614
  %493 = load double, ptr %arrayidx615, align 8
  %add616 = fadd double %493, %conv610
  store double %add616, ptr %arrayidx615, align 8
  %494 = load i32, ptr %i_width, align 4
  %495 = load i32, ptr %i_height, align 8
  %mul623 = mul nsw i32 %495, %494
  %conv1.i1140 = sitofp i32 %mul623 to double
  %mul.i1141 = fmul double %conv1.i1140, 6.502500e+04
  %div.i1142 = fdiv double %conv.i1106, %mul.i1141
  %cmp.i1143 = fcmp ugt double %div.i1142, 1.000000e-10
  br i1 %cmp.i1143, label %if.end.i1145, label %x264_psnr.exit1149

if.end.i1145:                                     ; preds = %x264_psnr.exit1138
  %call.i1146 = call double @log10(double noundef %div.i1142) #17
  %mul3.i1147 = fmul double %call.i1146, -1.000000e+01
  %conv4.i1148 = fptrunc double %mul3.i1147 to float
  %.pre1314 = load i32, ptr %i_width, align 4
  %.pre1315 = load i32, ptr %i_height, align 8
  %.pre1323 = mul nsw i32 %.pre1315, %.pre1314
  %496 = fpext float %conv4.i1148 to double
  br label %x264_psnr.exit1149

x264_psnr.exit1149:                               ; preds = %x264_psnr.exit1138, %if.end.i1145
  %mul632.pre-phi = phi i32 [ %mul623, %x264_psnr.exit1138 ], [ %.pre1323, %if.end.i1145 ]
  %retval.0.i1144 = phi double [ 1.000000e+02, %x264_psnr.exit1138 ], [ %496, %if.end.i1145 ]
  %div633 = sdiv i32 %mul632.pre-phi, 4
  %conv1.i1151 = sitofp i32 %div633 to double
  %mul.i1152 = fmul double %conv1.i1151, 6.502500e+04
  %div.i1153 = fdiv double %conv.i1117, %mul.i1152
  %cmp.i1154 = fcmp ugt double %div.i1153, 1.000000e-10
  br i1 %cmp.i1154, label %if.end.i1156, label %x264_psnr.exit1160

if.end.i1156:                                     ; preds = %x264_psnr.exit1149
  %call.i1157 = call double @log10(double noundef %div.i1153) #17
  %mul3.i1158 = fmul double %call.i1157, -1.000000e+01
  %conv4.i1159 = fptrunc double %mul3.i1158 to float
  %.pre1316 = load i32, ptr %i_width, align 4
  %.pre1317 = load i32, ptr %i_height, align 8
  %.pre1324 = mul nsw i32 %.pre1317, %.pre1316
  %.pre1325 = sdiv i32 %.pre1324, 4
  %.pre1326 = sitofp i32 %.pre1325 to double
  %.pre1327 = fmul double %.pre1326, 6.502500e+04
  %497 = fpext float %conv4.i1159 to double
  br label %x264_psnr.exit1160

x264_psnr.exit1160:                               ; preds = %x264_psnr.exit1149, %if.end.i1156
  %mul.i1163.pre-phi = phi double [ %mul.i1152, %x264_psnr.exit1149 ], [ %.pre1327, %if.end.i1156 ]
  %retval.0.i1155 = phi double [ 1.000000e+02, %x264_psnr.exit1149 ], [ %497, %if.end.i1156 ]
  %div.i1164 = fdiv double %conv.i1128, %mul.i1163.pre-phi
  %cmp.i1165 = fcmp ugt double %div.i1164, 1.000000e-10
  br i1 %cmp.i1165, label %if.end.i1167, label %x264_psnr.exit1171

if.end.i1167:                                     ; preds = %x264_psnr.exit1160
  %call.i1168 = call double @log10(double noundef %div.i1164) #17
  %mul3.i1169 = fmul double %call.i1168, -1.000000e+01
  %conv4.i1170 = fptrunc double %mul3.i1169 to float
  %498 = fpext float %conv4.i1170 to double
  br label %x264_psnr.exit1171

x264_psnr.exit1171:                               ; preds = %x264_psnr.exit1160, %if.end.i1167
  %retval.0.i1166 = phi double [ %498, %if.end.i1167 ], [ 1.000000e+02, %x264_psnr.exit1160 ]
  %call647 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %psz_message, i64 noundef 80, ptr noundef nonnull @.str.76, double noundef %retval.0.i1144, double noundef %retval.0.i1155, double noundef %retval.0.i1166) #17
  %.pre1319.pre = load i32, ptr %i_type222, align 16
  br label %if.end648

if.end648:                                        ; preds = %x264_psnr.exit1171, %if.end522
  %.pre1319 = phi i32 [ %.pre1319.pre, %x264_psnr.exit1171 ], [ %.pre1319.pre1321, %if.end522 ]
  %b_ssim = getelementptr inbounds i8, ptr %h, i64 480
  %499 = load i32, ptr %b_ssim, align 16
  %tobool651.not = icmp eq i32 %499, 0
  br i1 %tobool651.not, label %if.end678, label %if.then652

if.then652:                                       ; preds = %if.end648
  %f_ssim = getelementptr inbounds i8, ptr %h, i64 27408
  %500 = load double, ptr %f_ssim, align 8
  %i_width656 = getelementptr inbounds i8, ptr %h, i64 20
  %501 = load i32, ptr %i_width656, align 4
  %sub657 = add nsw i32 %501, -6
  %shr = ashr i32 %sub657, 2
  %i_height659 = getelementptr inbounds i8, ptr %h, i64 24
  %502 = load i32, ptr %i_height659, align 8
  %sub660 = add nsw i32 %502, -6
  %shr661 = ashr i32 %sub660, 2
  %mul662 = mul nsw i32 %shr661, %shr
  %conv663 = sitofp i32 %mul662 to double
  %div664 = fdiv double %500, %conv663
  %f_ssim_mean_y = getelementptr inbounds i8, ptr %h, i64 27792
  %idxprom668 = sext i32 %.pre1319 to i64
  %arrayidx669 = getelementptr inbounds [5 x double], ptr %f_ssim_mean_y, i64 0, i64 %idxprom668
  %503 = load double, ptr %arrayidx669, align 8
  %add670 = fadd double %503, %div664
  store double %add670, ptr %arrayidx669, align 8
  %call673 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %psz_message) #18
  %add.ptr = getelementptr inbounds i8, ptr %psz_message, i64 %call673
  %sub676 = sub i64 80, %call673
  %call677 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %add.ptr, i64 noundef %sub676, ptr noundef nonnull @.str.77, double noundef %div664) #17
  %.pre1318 = load i32, ptr %i_type222, align 16
  br label %if.end678

if.end678:                                        ; preds = %if.then652, %if.end648
  %504 = phi i32 [ %.pre1318, %if.then652 ], [ %.pre1319, %if.end648 ]
  %arrayidx679 = getelementptr inbounds i8, ptr %psz_message, i64 79
  store i8 0, ptr %arrayidx679, align 1
  %i_frame680 = getelementptr inbounds i8, ptr %h, i64 1844
  %505 = load i32, ptr %i_frame680, align 4
  %506 = load ptr, ptr %fdec, align 16
  %f_qp_avg_aq682 = getelementptr inbounds i8, ptr %506, i64 92
  %507 = load float, ptr %f_qp_avg_aq682, align 4
  %conv683 = fpext float %507 to double
  %i_nal_ref_idc = getelementptr inbounds i8, ptr %h, i64 1860
  %508 = load i32, ptr %i_nal_ref_idc, align 4
  %cmp686 = icmp eq i32 %504, 2
  %cmp692 = icmp eq i32 %504, 0
  %cond694 = select i1 %cmp692, i32 80, i32 66
  %cond696 = select i1 %cmp686, i32 73, i32 %cond694
  %509 = load i32, ptr %506, align 16
  %i_mb_count_i = getelementptr inbounds i8, ptr %h, i64 26800
  %510 = load i32, ptr %i_mb_count_i, align 8
  %i_mb_count_p = getelementptr inbounds i8, ptr %h, i64 26804
  %511 = load i32, ptr %i_mb_count_p, align 4
  %i_mb_count_skip = getelementptr inbounds i8, ptr %h, i64 26808
  %512 = load i32, ptr %i_mb_count_skip, align 8
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 3, ptr noundef nonnull @.str.78, i32 noundef %505, double noundef %conv683, i32 noundef %508, i32 noundef %cond696, i32 noundef %509, i32 noundef %510, i32 noundef %511, i32 noundef %512, i32 noundef %frame_size.0.lcssa, ptr noundef nonnull %psz_message) #17
  %513 = load ptr, ptr %thread, align 16
  %cmp.i1172 = icmp eq ptr %513, %h
  br i1 %cmp.i1172, label %x264_thread_sync_stat.exit1176, label %if.end.i1173

if.end.i1173:                                     ; preds = %if.end678
  %i_frame_count.i1174 = getelementptr inbounds i8, ptr %513, i64 27416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2984) %i_frame_count.i1174, ptr noundef nonnull readonly align 8 dereferenceable(2984) %i_frame_count, i64 2984, i1 false)
  br label %x264_thread_sync_stat.exit1176

x264_thread_sync_stat.exit1176:                   ; preds = %if.end678, %if.end.i1173
  %cmp.i1177 = icmp eq ptr %thread_current, %h
  br i1 %cmp.i1177, label %x264_thread_sync_stat.exit1181, label %if.end.i1178

if.end.i1178:                                     ; preds = %x264_thread_sync_stat.exit1176
  %i_frame_count.i1179 = getelementptr inbounds i8, ptr %thread_current, i64 27416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2984) %i_frame_count.i1179, ptr noundef nonnull readonly align 8 dereferenceable(2984) %i_frame_count, i64 2984, i1 false)
  br label %x264_thread_sync_stat.exit1181

x264_thread_sync_stat.exit1181:                   ; preds = %x264_thread_sync_stat.exit1176, %if.end.i1178
  %i_ref0709 = getelementptr inbounds i8, ptr %h, i64 14696
  %514 = load i32, ptr %i_ref0709, align 8
  %cmp7101248 = icmp sgt i32 %514, 0
  br i1 %cmp7101248, label %for.body713.lr.ph, label %for.cond.cleanup712

for.body713.lr.ph:                                ; preds = %x264_thread_sync_stat.exit1181
  %fref0714 = getelementptr inbounds i8, ptr %h, i64 14704
  br label %for.body713

for.cond.cleanup712:                              ; preds = %for.inc731, %x264_thread_sync_stat.exit1181
  %515 = load i32, ptr @tga_dump_rate, align 4
  %cmp735 = icmp sgt i32 %515, 0
  br i1 %cmp735, label %if.then737, label %if.end752

for.body713:                                      ; preds = %for.body713.lr.ph, %for.inc731
  %516 = phi i32 [ %514, %for.body713.lr.ph ], [ %519, %for.inc731 ]
  %indvars.iv1305 = phi i64 [ 0, %for.body713.lr.ph ], [ %indvars.iv.next1306, %for.inc731 ]
  %arrayidx716 = getelementptr inbounds [19 x ptr], ptr %fref0714, i64 0, i64 %indvars.iv1305
  %517 = load ptr, ptr %arrayidx716, align 8
  %tobool717.not = icmp eq ptr %517, null
  br i1 %tobool717.not, label %for.inc731, label %land.lhs.true718

land.lhs.true718:                                 ; preds = %for.body713
  %b_duplicate = getelementptr inbounds i8, ptr %517, i64 3520
  %518 = load i32, ptr %b_duplicate, align 16
  %tobool722.not = icmp eq i32 %518, 0
  br i1 %tobool722.not, label %for.inc731, label %if.then723

if.then723:                                       ; preds = %land.lhs.true718
  call void @x264_frame_push_blank_unused(ptr noundef nonnull %h, ptr noundef nonnull %517) #17
  store ptr null, ptr %arrayidx716, align 8
  %.pre1320 = load i32, ptr %i_ref0709, align 8
  br label %for.inc731

for.inc731:                                       ; preds = %for.body713, %land.lhs.true718, %if.then723
  %519 = phi i32 [ %516, %for.body713 ], [ %516, %land.lhs.true718 ], [ %.pre1320, %if.then723 ]
  %indvars.iv.next1306 = add nuw nsw i64 %indvars.iv1305, 1
  %520 = sext i32 %519 to i64
  %cmp710 = icmp slt i64 %indvars.iv.next1306, %520
  br i1 %cmp710, label %for.body713, label %for.cond.cleanup712

if.then737:                                       ; preds = %for.cond.cleanup712
  %521 = load ptr, ptr %fdec, align 16
  %i_frame739 = getelementptr inbounds i8, ptr %521, i64 56
  %522 = load i32, ptr %i_frame739, align 8
  %rem740 = srem i32 %522, %515
  %cmp741 = icmp eq i32 %rem740, 0
  br i1 %cmp741, label %if.then750, label %lor.lhs.false743

lor.lhs.false743:                                 ; preds = %if.then737
  %i_frame_total = getelementptr inbounds i8, ptr %h, i64 36
  %523 = load i32, ptr %i_frame_total, align 4
  %sub747 = add nsw i32 %523, -1
  %cmp748 = icmp eq i32 %522, %sub747
  br i1 %cmp748, label %if.then750, label %if.end752

if.then750:                                       ; preds = %lor.lhs.false743, %if.then737
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %yuvfile.i) #17
  %524 = load i32, ptr @seek_val, align 4
  %add.i = add nsw i32 %524, %522
  %call.i1182 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %yuvfile.i, ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %add.i) #17
  %call2.i = call noalias ptr @fopen(ptr noundef nonnull %yuvfile.i, ptr noundef nonnull @.str.80)
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %x264_frame_dump_to_file.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then750
  %525 = load ptr, ptr %fdec, align 16
  %i_plane46.i = getelementptr inbounds i8, ptr %525, i64 100
  %526 = load i32, ptr %i_plane46.i, align 4
  %cmp47.i = icmp sgt i32 %526, 0
  br i1 %cmp47.i, label %for.cond4.preheader.lr.ph.i, label %for.cond.cleanup.i

for.cond4.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %i_height.i = getelementptr inbounds i8, ptr %h, i64 24
  %i_width.i = getelementptr inbounds i8, ptr %h, i64 20
  %.pre.i = load i32, ptr %i_height.i, align 8
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.cond.cleanup8.i, %for.cond4.preheader.lr.ph.i
  %527 = phi ptr [ %525, %for.cond4.preheader.lr.ph.i ], [ %529, %for.cond.cleanup8.i ]
  %528 = phi i32 [ %.pre.i, %for.cond4.preheader.lr.ph.i ], [ %530, %for.cond.cleanup8.i ]
  %indvars.iv.i = phi i64 [ 0, %for.cond4.preheader.lr.ph.i ], [ %indvars.iv.next.i, %for.cond.cleanup8.i ]
  %tobool5.i = icmp ne i64 %indvars.iv.i, 0
  %lnot.ext.i = zext i1 %tobool5.i to i32
  %shr43.i = ashr i32 %528, %lnot.ext.i
  %cmp744.i = icmp sgt i32 %shr43.i, 0
  br i1 %cmp744.i, label %for.body9.i, label %for.cond.cleanup8.i

for.cond.cleanup.i:                               ; preds = %for.cond.cleanup8.i, %for.cond.preheader.i
  %call27.i = call i32 @fclose(ptr noundef nonnull %call2.i)
  br label %x264_frame_dump_to_file.exit

for.cond.cleanup8.loopexit.i:                     ; preds = %for.body9.i
  %.pre50.i = load ptr, ptr %fdec, align 16
  br label %for.cond.cleanup8.i

for.cond.cleanup8.i:                              ; preds = %for.cond.cleanup8.loopexit.i, %for.cond4.preheader.i
  %529 = phi ptr [ %.pre50.i, %for.cond.cleanup8.loopexit.i ], [ %527, %for.cond4.preheader.i ]
  %530 = phi i32 [ %537, %for.cond.cleanup8.loopexit.i ], [ %528, %for.cond4.preheader.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i_plane.i = getelementptr inbounds i8, ptr %529, i64 100
  %531 = load i32, ptr %i_plane.i, align 4
  %532 = sext i32 %531 to i64
  %cmp.i1183 = icmp slt i64 %indvars.iv.next.i, %532
  br i1 %cmp.i1183, label %for.cond4.preheader.i, label %for.cond.cleanup.i

for.body9.i:                                      ; preds = %for.cond4.preheader.i, %for.body9.i
  %y.045.i = phi i32 [ %inc.i1187, %for.body9.i ], [ 0, %for.cond4.preheader.i ]
  %533 = load ptr, ptr %fdec, align 16
  %plane.i = getelementptr inbounds i8, ptr %533, i64 152
  %arrayidx.i1184 = getelementptr inbounds [3 x ptr], ptr %plane.i, i64 0, i64 %indvars.iv.i
  %534 = load ptr, ptr %arrayidx.i1184, align 8
  %i_stride.i = getelementptr inbounds i8, ptr %533, i64 104
  %arrayidx13.i = getelementptr inbounds [3 x i32], ptr %i_stride.i, i64 0, i64 %indvars.iv.i
  %535 = load i32, ptr %arrayidx13.i, align 4
  %mul.i1185 = mul nsw i32 %535, %y.045.i
  %idxprom14.i = sext i32 %mul.i1185 to i64
  %arrayidx15.i = getelementptr inbounds i8, ptr %534, i64 %idxprom14.i
  %536 = load i32, ptr %i_width.i, align 4
  %shr22.i = ashr i32 %536, %lnot.ext.i
  %conv.i1186 = sext i32 %shr22.i to i64
  %call23.i = call i64 @fwrite(ptr noundef %arrayidx15.i, i64 noundef 1, i64 noundef %conv.i1186, ptr noundef nonnull %call2.i)
  %inc.i1187 = add nuw nsw i32 %y.045.i, 1
  %537 = load i32, ptr %i_height.i, align 8
  %shr.i = ashr i32 %537, %lnot.ext.i
  %cmp7.i = icmp slt i32 %inc.i1187, %shr.i
  br i1 %cmp7.i, label %for.body9.i, label %for.cond.cleanup8.loopexit.i

x264_frame_dump_to_file.exit:                     ; preds = %if.then750, %for.cond.cleanup.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %yuvfile.i) #17
  br label %if.end752

if.end752:                                        ; preds = %lor.lhs.false743, %x264_frame_dump_to_file.exit, %for.cond.cleanup712
  %psz_dump_yuv = getelementptr inbounds i8, ptr %h, i64 376
  %538 = load ptr, ptr %psz_dump_yuv, align 8
  %tobool754.not = icmp eq ptr %538, null
  br i1 %tobool754.not, label %cleanup757, label %if.then755

if.then755:                                       ; preds = %if.end752
  %call.i1188 = call noalias ptr @fopen(ptr noundef nonnull %538, ptr noundef nonnull @.str.81)
  %tobool.not.i1189 = icmp eq ptr %call.i1188, null
  br i1 %tobool.not.i1189, label %cleanup757, label %if.end.i1190

if.end.i1190:                                     ; preds = %if.then755
  %539 = load ptr, ptr %fdec, align 16
  %i_frame.i1192 = getelementptr inbounds i8, ptr %539, i64 56
  %540 = load i32, ptr %i_frame.i1192, align 8
  %conv.i1193 = sext i32 %540 to i64
  %i_height.i1194 = getelementptr inbounds i8, ptr %h, i64 24
  %541 = load i32, ptr %i_height.i1194, align 8
  %conv2.i = sext i32 %541 to i64
  %i_width.i1195 = getelementptr inbounds i8, ptr %h, i64 20
  %542 = load i32, ptr %i_width.i1195, align 4
  %conv4.i1196 = sext i32 %542 to i64
  %mul.i1197 = mul nsw i64 %conv.i1193, 3
  %mul5.i = mul i64 %mul.i1197, %conv2.i
  %mul6.i = mul i64 %mul5.i, %conv4.i1196
  %div58.i = lshr i64 %mul6.i, 1
  %call7.i = call i32 @fseek(ptr noundef nonnull %call.i1188, i64 noundef %div58.i, i32 noundef 0)
  %543 = load ptr, ptr %fdec, align 16
  %i_plane62.i = getelementptr inbounds i8, ptr %543, i64 100
  %544 = load i32, ptr %i_plane62.i, align 4
  %cmp63.i = icmp sgt i32 %544, 0
  br i1 %cmp63.i, label %for.cond10.preheader.preheader.i, label %for.cond.cleanup.i1198

for.cond10.preheader.preheader.i:                 ; preds = %if.end.i1190
  %.pre.i1199 = load i32, ptr %i_height.i1194, align 8
  br label %for.cond10.preheader.i

for.cond10.preheader.i:                           ; preds = %for.cond.cleanup17.i, %for.cond10.preheader.preheader.i
  %545 = phi ptr [ %543, %for.cond10.preheader.preheader.i ], [ %547, %for.cond.cleanup17.i ]
  %546 = phi i32 [ %.pre.i1199, %for.cond10.preheader.preheader.i ], [ %548, %for.cond.cleanup17.i ]
  %indvars.iv.i1200 = phi i64 [ 0, %for.cond10.preheader.preheader.i ], [ %indvars.iv.next.i1202, %for.cond.cleanup17.i ]
  %tobool13.i = icmp ne i64 %indvars.iv.i1200, 0
  %lnot.ext.i1201 = zext i1 %tobool13.i to i32
  %shr59.i = ashr i32 %546, %lnot.ext.i1201
  %cmp1560.i = icmp sgt i32 %shr59.i, 0
  br i1 %cmp1560.i, label %for.body18.i, label %for.cond.cleanup17.i

for.cond.cleanup.i1198:                           ; preds = %for.cond.cleanup17.i, %if.end.i1190
  %call39.i = call i32 @fclose(ptr noundef nonnull %call.i1188)
  br label %cleanup757

for.cond.cleanup17.loopexit.i:                    ; preds = %for.body18.i
  %.pre66.i = load ptr, ptr %fdec, align 16
  br label %for.cond.cleanup17.i

for.cond.cleanup17.i:                             ; preds = %for.cond.cleanup17.loopexit.i, %for.cond10.preheader.i
  %547 = phi ptr [ %.pre66.i, %for.cond.cleanup17.loopexit.i ], [ %545, %for.cond10.preheader.i ]
  %548 = phi i32 [ %555, %for.cond.cleanup17.loopexit.i ], [ %546, %for.cond10.preheader.i ]
  %indvars.iv.next.i1202 = add nuw nsw i64 %indvars.iv.i1200, 1
  %i_plane.i1203 = getelementptr inbounds i8, ptr %547, i64 100
  %549 = load i32, ptr %i_plane.i1203, align 4
  %550 = sext i32 %549 to i64
  %cmp.i1204 = icmp slt i64 %indvars.iv.next.i1202, %550
  br i1 %cmp.i1204, label %for.cond10.preheader.i, label %for.cond.cleanup.i1198

for.body18.i:                                     ; preds = %for.cond10.preheader.i, %for.body18.i
  %y.061.i = phi i32 [ %inc.i1208, %for.body18.i ], [ 0, %for.cond10.preheader.i ]
  %551 = load ptr, ptr %fdec, align 16
  %plane.i1205 = getelementptr inbounds i8, ptr %551, i64 152
  %arrayidx.i1206 = getelementptr inbounds [3 x ptr], ptr %plane.i1205, i64 0, i64 %indvars.iv.i1200
  %552 = load ptr, ptr %arrayidx.i1206, align 8
  %i_stride.i1207 = getelementptr inbounds i8, ptr %551, i64 104
  %arrayidx22.i = getelementptr inbounds [3 x i32], ptr %i_stride.i1207, i64 0, i64 %indvars.iv.i1200
  %553 = load i32, ptr %arrayidx22.i, align 4
  %mul23.i = mul nsw i32 %553, %y.061.i
  %idxprom24.i = sext i32 %mul23.i to i64
  %arrayidx25.i = getelementptr inbounds i8, ptr %552, i64 %idxprom24.i
  %554 = load i32, ptr %i_width.i1195, align 4
  %shr33.i = ashr i32 %554, %lnot.ext.i1201
  %conv34.i = sext i32 %shr33.i to i64
  %call35.i = call i64 @fwrite(ptr noundef %arrayidx25.i, i64 noundef 1, i64 noundef %conv34.i, ptr noundef nonnull %call.i1188)
  %inc.i1208 = add nuw nsw i32 %y.061.i, 1
  %555 = load i32, ptr %i_height.i1194, align 8
  %shr.i1209 = ashr i32 %555, %lnot.ext.i1201
  %cmp15.i = icmp slt i32 %inc.i1208, %shr.i1209
  br i1 %cmp15.i, label %for.body18.i, label %for.cond.cleanup17.loopexit.i

cleanup757:                                       ; preds = %if.then.i.i1092, %for.cond.cleanup.i1198, %if.then755, %if.end752, %if.end135
  %retval.4 = phi i32 [ -1, %if.end135 ], [ %frame_size.0.lcssa, %if.end752 ], [ %frame_size.0.lcssa, %if.then755 ], [ %frame_size.0.lcssa, %for.cond.cleanup.i1198 ], [ -1, %if.then.i.i1092 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filler) #17
  br label %cleanup759

cleanup759:                                       ; preds = %if.then.i.i, %cleanup757, %if.then6
  %retval.5 = phi i32 [ %retval.4, %cleanup757 ], [ 0, %if.then6 ], [ -1, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %psz_message) #17
  ret i32 %retval.5
}

declare ptr @x264_frame_shift(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_reference_hierarchy_reset(ptr noundef %h) unnamed_addr #10 {
entry:
  %i_bframe_pyramid = getelementptr inbounds i8, ptr %h, i64 112
  %0 = load i32, ptr %i_bframe_pyramid, align 16
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %frames = getelementptr inbounds i8, ptr %h, i64 14416
  %1 = load ptr, ptr %frames, align 16
  %2 = load ptr, ptr %1, align 8
  %tobool1.not118 = icmp eq ptr %2, null
  br i1 %tobool1.not118, label %for.cond.cleanup, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next, %for.body ]
  %3 = phi ptr [ %2, %land.rhs.lr.ph ], [ %14, %for.body ]
  %b_hasdelayframe.0119 = phi i32 [ 0, %land.rhs.lr.ph ], [ %or, %for.body ]
  %i_type = getelementptr inbounds i8, ptr %3, i64 4
  %4 = load i32, ptr %i_type, align 4
  %cmp = icmp eq i32 %4, 5
  br i1 %cmp, label %for.body, label %for.cond.cleanup.loopexit

for.cond.cleanup.loopexit:                        ; preds = %for.body, %land.rhs
  %b_hasdelayframe.0.lcssa.ph = phi i32 [ %b_hasdelayframe.0119, %land.rhs ], [ %or, %for.body ]
  %5 = icmp ne i32 %b_hasdelayframe.0.lcssa.ph, 0
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %b_hasdelayframe.0.lcssa = phi i1 [ false, %for.cond.preheader ], [ %5, %for.cond.cleanup.loopexit ]
  %cmp17 = icmp eq i32 %0, 1
  %or.cond = select i1 %cmp17, i1 true, i1 %b_hasdelayframe.0.lcssa
  br i1 %or.cond, label %for.cond22.preheader, label %cleanup

for.cond22.preheader:                             ; preds = %for.cond.cleanup
  %reference = getelementptr inbounds i8, ptr %h, i64 14448
  %6 = load ptr, ptr %reference, align 8
  %tobool26.not122 = icmp eq ptr %6, null
  br i1 %tobool26.not122, label %for.end67, label %for.body27.lr.ph

for.body27.lr.ph:                                 ; preds = %for.cond22.preheader
  br i1 %cmp17, label %for.body27.lr.ph.split.us, label %for.body27

for.body27.lr.ph.split.us:                        ; preds = %for.body27.lr.ph
  %i_type37.us131 = getelementptr inbounds i8, ptr %6, i64 4
  %7 = load i32, ptr %i_type37.us131, align 4
  %cmp38.us132 = icmp eq i32 %7, 4
  br i1 %cmp38.us132, label %if.then40, label %for.inc65.us

for.body27.us:                                    ; preds = %for.inc65.us
  %i_type37.us = getelementptr inbounds i8, ptr %9, i64 4
  %8 = load i32, ptr %i_type37.us, align 4
  %cmp38.us = icmp eq i32 %8, 4
  br i1 %cmp38.us, label %if.then40.loopexit, label %for.inc65.us

for.inc65.us:                                     ; preds = %for.body27.lr.ph.split.us, %for.body27.us
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %for.body27.us ], [ 0, %for.body27.lr.ph.split.us ]
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1
  %arrayidx25.us = getelementptr inbounds [18 x ptr], ptr %reference, i64 0, i64 %indvars.iv.next148
  %9 = load ptr, ptr %arrayidx25.us, align 8
  %tobool26.not.us = icmp eq ptr %9, null
  br i1 %tobool26.not.us, label %for.end67.loopexit, label %for.body27.us

for.body:                                         ; preds = %land.rhs
  %i_coded = getelementptr inbounds i8, ptr %3, i64 60
  %10 = load i32, ptr %i_coded, align 4
  %i_frame = getelementptr inbounds i8, ptr %3, i64 56
  %11 = load i32, ptr %i_frame, align 8
  %12 = load ptr, ptr %sps, align 16
  %i_num_reorder_frames = getelementptr inbounds i8, ptr %12, i64 1288
  %13 = load i32, ptr %i_num_reorder_frames, align 4
  %add = add nsw i32 %13, %11
  %cmp14 = icmp ne i32 %10, %add
  %conv = zext i1 %cmp14 to i32
  %or = or i32 %b_hasdelayframe.0119, %conv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv.next
  %14 = load ptr, ptr %arrayidx, align 8
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %for.cond.cleanup.loopexit, label %land.rhs

for.body27:                                       ; preds = %for.body27.lr.ph, %for.body27
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %for.body27 ], [ 0, %for.body27.lr.ph ]
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  %arrayidx25 = getelementptr inbounds [18 x ptr], ptr %reference, i64 0, i64 %indvars.iv.next145
  %15 = load ptr, ptr %arrayidx25, align 8
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %for.end67.loopexit139, label %for.body27

if.then40.loopexit:                               ; preds = %for.body27.us
  %16 = trunc nuw nsw i64 %indvars.iv.next148 to i32
  br label %if.then40

if.then40:                                        ; preds = %if.then40.loopexit, %for.body27.lr.ph.split.us
  %idxprom24.lcssa.us = phi i64 [ 0, %for.body27.lr.ph.split.us ], [ %indvars.iv.next148, %if.then40.loopexit ]
  %ref.0.lcssa116.us = phi i32 [ 0, %for.body27.lr.ph.split.us ], [ %16, %if.then40.loopexit ]
  %.lcssa113.us = phi ptr [ %6, %for.body27.lr.ph.split.us ], [ %9, %if.then40.loopexit ]
  %arrayidx25.le = getelementptr inbounds [18 x ptr], ptr %reference, i64 0, i64 %idxprom24.lcssa.us
  %i_frame_num = getelementptr inbounds i8, ptr %h, i64 1848
  %17 = load i32, ptr %i_frame_num, align 8
  %i_frame_num45 = getelementptr inbounds i8, ptr %.lcssa113.us, i64 68
  %18 = load i32, ptr %i_frame_num45, align 4
  %sub = sub nsw i32 %17, %18
  %mmco = getelementptr inbounds i8, ptr %h, i64 13736
  %i_mmco_command_count = getelementptr inbounds i8, ptr %h, i64 13732
  %19 = load i32, ptr %i_mmco_command_count, align 4
  %idxprom47 = sext i32 %19 to i64
  %arrayidx48 = getelementptr inbounds [16 x %struct.anon.7], ptr %mmco, i64 0, i64 %idxprom47
  store i32 %sub, ptr %arrayidx48, align 8
  %20 = load ptr, ptr %arrayidx25.le, align 8
  %21 = load i32, ptr %20, align 16
  %inc57 = add nsw i32 %19, 1
  store i32 %inc57, ptr %i_mmco_command_count, align 4
  %i_poc60 = getelementptr inbounds [16 x %struct.anon.7], ptr %mmco, i64 0, i64 %idxprom47, i32 1
  store i32 %21, ptr %i_poc60, align 4
  %call = tail call ptr @x264_frame_pop(ptr noundef nonnull %reference) #17
  tail call void @x264_frame_push_unused(ptr noundef nonnull %h, ptr noundef %call) #17
  %b_ref_reorder = getelementptr inbounds i8, ptr %h, i64 15016
  store i32 1, ptr %b_ref_reorder, align 8
  br label %for.end67

for.end67.loopexit:                               ; preds = %for.inc65.us
  %22 = trunc nuw nsw i64 %indvars.iv.next148 to i32
  br label %for.end67

for.end67.loopexit139:                            ; preds = %for.body27
  %23 = trunc nuw nsw i64 %indvars.iv.next145 to i32
  br label %for.end67

for.end67:                                        ; preds = %for.end67.loopexit139, %for.end67.loopexit, %for.cond22.preheader, %if.then40
  %ref.0117 = phi i32 [ %ref.0.lcssa116.us, %if.then40 ], [ 0, %for.cond22.preheader ], [ %22, %for.end67.loopexit ], [ %23, %for.end67.loopexit139 ]
  %add68 = add nuw nsw i32 %ref.0117, 2
  %i_max_dpb = getelementptr inbounds i8, ptr %h, i64 14600
  %24 = load i32, ptr %i_max_dpb, align 8
  %sub70 = sub i32 %add68, %24
  %spec.select = tail call i32 @llvm.smax.i32(i32 %sub70, i32 0)
  %i_mmco_remove_from_end = getelementptr inbounds i8, ptr %h, i64 13728
  store i32 %spec.select, ptr %i_mmco_remove_from_end, align 16
  br label %cleanup

cleanup:                                          ; preds = %for.cond.cleanup, %entry, %for.end67
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

declare void @x264_sei_recovery_point_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_sei_pic_timing_write(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_ratecontrol_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @x264_ratecontrol_qp(ptr noundef) local_unnamed_addr #2

declare i32 @x264_reference_build_list_optimal(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @x264_reference_check_reorder(ptr nocapture noundef %h) unnamed_addr #12 {
entry:
  %i_ref0 = getelementptr inbounds i8, ptr %h, i64 14696
  %0 = load i32, ptr %i_ref0, align 8
  %cmp28 = icmp sgt i32 %0, 1
  br i1 %cmp28, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %0, -1
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %1 = load i32, ptr %i_type, align 16
  %cmp1 = icmp eq i32 %1, 0
  %fref07 = getelementptr inbounds i8, ptr %h, i64 14704
  %wide.trip.count36 = zext nneg i32 %sub to i64
  %.pre39 = load ptr, ptr %fref07, align 8
  br i1 %cmp1, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %.pre38 = load i32, ptr %.pre39, align 16
  br label %for.body

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %i_frame_num.us.phi.trans.insert = getelementptr inbounds i8, ptr %.pre39, i64 68
  %.pre40 = load i32, ptr %i_frame_num.us.phi.trans.insert, align 4
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.inc.us
  %2 = phi i32 [ %.pre40, %for.body.us.preheader ], [ %4, %for.inc.us ]
  %indvars.iv33 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next34, %for.inc.us ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %arrayidx4.us = getelementptr inbounds [19 x ptr], ptr %fref07, i64 0, i64 %indvars.iv.next34
  %3 = load ptr, ptr %arrayidx4.us, align 8
  %i_frame_num5.us = getelementptr inbounds i8, ptr %3, i64 68
  %4 = load i32, ptr %i_frame_num5.us, align 4
  %cmp6.us = icmp slt i32 %2, %4
  br i1 %cmp6.us, label %if.then, label %for.inc.us

for.inc.us:                                       ; preds = %for.body.us
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %cleanup, label %for.body.us

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %5 = phi i32 [ %.pre38, %for.body.preheader ], [ %7, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx13 = getelementptr inbounds [19 x ptr], ptr %fref07, i64 0, i64 %indvars.iv.next
  %6 = load ptr, ptr %arrayidx13, align 8
  %7 = load i32, ptr %6, align 16
  %cmp15 = icmp slt i32 %5, %7
  br i1 %cmp15, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body, %for.body.us
  %b_ref_reorder = getelementptr inbounds i8, ptr %h, i64 15016
  store i32 1, ptr %b_ref_reorder, align 8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count36
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %for.inc.us, %entry, %if.then
  ret void
}

declare void @x264_macroblock_bipred_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_threaded_slices_write(ptr noundef %h) unnamed_addr #0 {
entry:
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
  %0 = load i32, ptr %i_threads, align 4
  %cmp251 = icmp sgt i32 %0, 0
  br i1 %cmp251, label %if.end.peel, label %for.cond.cleanup

if.end.peel:                                      ; preds = %entry
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %i_frame3 = getelementptr inbounds i8, ptr %h, i64 1844
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
  %i_slice_count = getelementptr inbounds i8, ptr %h, i64 692
  %1 = load ptr, ptr %thread, align 8
  %.pre290 = load i32, ptr %i_slice_count, align 4
  %.pre289 = load i32, ptr %b_interlaced, align 8
  %.pre = load ptr, ptr %sps, align 16
  %i_mb_height.peel = getelementptr inbounds i8, ptr %.pre, i64 1088
  %2 = load i32, ptr %i_mb_height.peel, align 4
  %shr.peel = ashr i32 %2, %.pre289
  %div.peel = sdiv i32 %.pre290, 2
  %div8.peel = sdiv i32 %div.peel, %0
  %shl.peel = shl i32 %div8.peel, %.pre289
  %i_threadslice_start.peel = getelementptr inbounds i8, ptr %1, i64 1748
  store i32 %shl.peel, ptr %i_threadslice_start.peel, align 4
  %3 = load i32, ptr %i_slice_count, align 4
  %div15.peel = sdiv i32 %3, 2
  %add16.peel = add nsw i32 %div15.peel, %shr.peel
  %4 = load i32, ptr %i_threads, align 4
  %div19.peel = sdiv i32 %add16.peel, %4
  %5 = load i32, ptr %b_interlaced, align 8
  %shl22.peel = shl i32 %div19.peel, %5
  %i_threadslice_end.peel = getelementptr inbounds i8, ptr %1, i64 1752
  store i32 %shl22.peel, ptr %i_threadslice_end.peel, align 8
  %6 = load ptr, ptr %sps, align 16
  %i_mb_width.peel = getelementptr inbounds i8, ptr %6, i64 1084
  %7 = load i32, ptr %i_mb_width.peel, align 4
  %mul25.peel = mul nsw i32 %7, %shl.peel
  %i_first_mb.peel = getelementptr inbounds i8, ptr %1, i64 7252
  store i32 %mul25.peel, ptr %i_first_mb.peel, align 4
  %8 = load ptr, ptr %sps, align 16
  %i_mb_width28.peel = getelementptr inbounds i8, ptr %8, i64 1084
  %9 = load i32, ptr %i_mb_width28.peel, align 4
  %mul29.peel = mul nsw i32 %9, %shl22.peel
  %sub.peel = add nsw i32 %mul29.peel, -1
  %i_last_mb.peel = getelementptr inbounds i8, ptr %1, i64 7256
  store i32 %sub.peel, ptr %i_last_mb.peel, align 8
  %10 = load i32, ptr %i_threads, align 4
  %cmp.peel = icmp sgt i32 %10, 1
  br i1 %cmp.peel, label %if.end, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %if.end, %if.end.peel, %entry
  %sps31 = getelementptr inbounds i8, ptr %h, i64 3200
  %11 = load ptr, ptr %sps31, align 16
  %i_mb_height32 = getelementptr inbounds i8, ptr %11, i64 1088
  %12 = load i32, ptr %i_mb_height32, align 4
  %mul33 = shl nsw i32 %12, 4
  %add34 = add nsw i32 %mul33, 16
  tail call void @x264_analyse_weight_frame(ptr noundef nonnull %h, i32 noundef %add34) #17
  tail call void @x264_threads_distribute_ratecontrol(ptr noundef nonnull %h) #17
  %13 = load i32, ptr %i_threads, align 4
  %cmp39253 = icmp sgt i32 %13, 0
  br i1 %cmp39253, label %for.body41.lr.ph, label %for.cond.cleanup71

for.body41.lr.ph:                                 ; preds = %for.cond.cleanup
  %thread42 = getelementptr inbounds i8, ptr %h, i64 704
  br label %for.body41

if.end:                                           ; preds = %if.end.peel, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 1, %if.end.peel ]
  %arrayidx = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv
  %14 = load ptr, ptr %arrayidx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %14, ptr noundef nonnull align 16 dereferenceable(704) %h, i64 704, i1 false)
  %i_frame = getelementptr inbounds i8, ptr %14, i64 1844
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24860) %i_frame, ptr noundef nonnull align 4 dereferenceable(24860) %i_frame3, i64 24860, i1 false)
  %.pre291 = load i32, ptr %i_threads, align 4
  %15 = load ptr, ptr %sps, align 16
  %i_mb_height = getelementptr inbounds i8, ptr %15, i64 1088
  %16 = load i32, ptr %i_mb_height, align 4
  %17 = load i32, ptr %b_interlaced, align 8
  %shr = ashr i32 %16, %17
  %18 = trunc nuw nsw i64 %indvars.iv to i32
  %mul = mul nsw i32 %shr, %18
  %19 = load i32, ptr %i_slice_count, align 4
  %div = sdiv i32 %19, 2
  %add = add nsw i32 %mul, %div
  %div8 = sdiv i32 %add, %.pre291
  %shl = shl i32 %div8, %17
  %i_threadslice_start = getelementptr inbounds i8, ptr %14, i64 1748
  store i32 %shl, ptr %i_threadslice_start, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %20 = trunc nuw nsw i64 %indvars.iv.next to i32
  %mul12 = mul nsw i32 %shr, %20
  %21 = load i32, ptr %i_slice_count, align 4
  %div15 = sdiv i32 %21, 2
  %add16 = add nsw i32 %div15, %mul12
  %22 = load i32, ptr %i_threads, align 4
  %div19 = sdiv i32 %add16, %22
  %23 = load i32, ptr %b_interlaced, align 8
  %shl22 = shl i32 %div19, %23
  %i_threadslice_end = getelementptr inbounds i8, ptr %14, i64 1752
  store i32 %shl22, ptr %i_threadslice_end, align 8
  %24 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %24, i64 1084
  %25 = load i32, ptr %i_mb_width, align 4
  %mul25 = mul nsw i32 %25, %shl
  %i_first_mb = getelementptr inbounds i8, ptr %14, i64 7252
  store i32 %mul25, ptr %i_first_mb, align 4
  %26 = load ptr, ptr %sps, align 16
  %i_mb_width28 = getelementptr inbounds i8, ptr %26, i64 1084
  %27 = load i32, ptr %i_mb_width28, align 4
  %mul29 = mul nsw i32 %27, %shl22
  %sub = add nsw i32 %mul29, -1
  %i_last_mb = getelementptr inbounds i8, ptr %14, i64 7256
  store i32 %sub, ptr %i_last_mb, align 8
  %28 = load i32, ptr %i_threads, align 4
  %29 = sext i32 %28 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %29
  br i1 %cmp, label %if.end, label %for.cond.cleanup, !llvm.loop !18

for.cond49.preheader:                             ; preds = %for.body41
  %30 = icmp sgt i32 %32, 0
  br i1 %30, label %for.body54.lr.ph, label %for.cond.cleanup71

for.body54.lr.ph:                                 ; preds = %for.cond49.preheader
  %thread55 = getelementptr inbounds i8, ptr %h, i64 704
  br label %for.body54

for.body41:                                       ; preds = %for.body41.lr.ph, %for.body41
  %indvars.iv267 = phi i64 [ 0, %for.body41.lr.ph ], [ %indvars.iv.next268, %for.body41 ]
  %arrayidx44 = getelementptr inbounds [129 x ptr], ptr %thread42, i64 0, i64 %indvars.iv267
  %31 = load ptr, ptr %arrayidx44, align 8
  %b_thread_active = getelementptr inbounds i8, ptr %31, i64 1740
  store i32 1, ptr %b_thread_active, align 4
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1
  %32 = load i32, ptr %i_threads, align 4
  %33 = sext i32 %32 to i64
  %cmp39 = icmp slt i64 %indvars.iv.next268, %33
  br i1 %cmp39, label %for.body41, label %for.cond49.preheader

for.cond66.preheader:                             ; preds = %for.body54
  %34 = icmp sgt i32 %36, 1
  br i1 %34, label %for.body72.lr.ph, label %for.cond.cleanup71

for.body72.lr.ph:                                 ; preds = %for.cond66.preheader
  %thread73 = getelementptr inbounds i8, ptr %h, i64 704
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  br label %for.body72

for.body54:                                       ; preds = %for.body54.lr.ph, %for.body54
  %indvars.iv270 = phi i64 [ 0, %for.body54.lr.ph ], [ %indvars.iv.next271, %for.body54 ]
  %arrayidx57 = getelementptr inbounds [129 x ptr], ptr %thread55, i64 0, i64 %indvars.iv270
  %35 = load ptr, ptr %arrayidx57, align 8
  %b_thread_active58 = getelementptr inbounds i8, ptr %35, i64 1740
  store i32 0, ptr %b_thread_active58, align 4
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1
  %36 = load i32, ptr %i_threads, align 4
  %37 = sext i32 %36 to i64
  %cmp52 = icmp slt i64 %indvars.iv.next271, %37
  br i1 %cmp52, label %for.body54, label %for.cond66.preheader

for.cond.cleanup71:                               ; preds = %for.inc93, %for.cond.cleanup, %for.cond49.preheader, %for.cond66.preheader
  tail call void @x264_threads_merge_ratecontrol(ptr noundef nonnull %h) #17
  %38 = load i32, ptr %i_threads, align 4
  %cmp101263 = icmp sgt i32 %38, 1
  br i1 %cmp101263, label %for.body104.lr.ph, label %cleanup177

for.body104.lr.ph:                                ; preds = %for.cond.cleanup71
  %thread106 = getelementptr inbounds i8, ptr %h, i64 704
  %out114 = getelementptr inbounds i8, ptr %h, i64 1760
  %nal = getelementptr inbounds i8, ptr %h, i64 1768
  %i_nals_allocated.i = getelementptr inbounds i8, ptr %h, i64 1764
  %stat138 = getelementptr i8, ptr %h, i64 26712
  %i_ssd159 = getelementptr inbounds i8, ptr %h, i64 27384
  %f_ssim171 = getelementptr inbounds i8, ptr %h, i64 27408
  %arrayidx161.1 = getelementptr inbounds i8, ptr %h, i64 27392
  %arrayidx161.2 = getelementptr inbounds i8, ptr %h, i64 27400
  %39 = getelementptr i8, ptr %h, i64 26728
  %40 = getelementptr i8, ptr %h, i64 26744
  %41 = getelementptr i8, ptr %h, i64 26760
  %42 = getelementptr i8, ptr %h, i64 26776
  %43 = getelementptr i8, ptr %h, i64 26792
  %44 = getelementptr i8, ptr %h, i64 26808
  %45 = getelementptr i8, ptr %h, i64 26824
  %46 = getelementptr i8, ptr %h, i64 26840
  %47 = getelementptr i8, ptr %h, i64 26856
  %48 = getelementptr i8, ptr %h, i64 26872
  %49 = getelementptr i8, ptr %h, i64 26888
  %50 = getelementptr i8, ptr %h, i64 26904
  %51 = getelementptr i8, ptr %h, i64 26920
  %52 = getelementptr i8, ptr %h, i64 26936
  %53 = getelementptr i8, ptr %h, i64 26952
  %54 = getelementptr i8, ptr %h, i64 26968
  %55 = getelementptr i8, ptr %h, i64 26984
  %56 = getelementptr i8, ptr %h, i64 27000
  %57 = getelementptr i8, ptr %h, i64 27016
  %58 = getelementptr i8, ptr %h, i64 27032
  %59 = getelementptr i8, ptr %h, i64 27048
  %60 = getelementptr i8, ptr %h, i64 27064
  %61 = getelementptr i8, ptr %h, i64 27080
  %62 = getelementptr i8, ptr %h, i64 27096
  %63 = getelementptr i8, ptr %h, i64 27112
  %64 = getelementptr i8, ptr %h, i64 27128
  %65 = getelementptr i8, ptr %h, i64 27144
  %66 = getelementptr i8, ptr %h, i64 27160
  %67 = getelementptr i8, ptr %h, i64 27176
  %68 = getelementptr i8, ptr %h, i64 27192
  %69 = getelementptr i8, ptr %h, i64 27208
  %70 = getelementptr i8, ptr %h, i64 27224
  %71 = getelementptr i8, ptr %h, i64 27240
  %72 = getelementptr i8, ptr %h, i64 27256
  %73 = getelementptr i8, ptr %h, i64 27272
  %74 = getelementptr i8, ptr %h, i64 27288
  %75 = getelementptr i8, ptr %h, i64 27304
  %76 = getelementptr i8, ptr %h, i64 27320
  %77 = getelementptr i8, ptr %h, i64 27336
  br label %for.body104

for.body72:                                       ; preds = %for.body72.lr.ph, %for.inc93
  %indvars.iv273 = phi i64 [ 1, %for.body72.lr.ph ], [ %indvars.iv.next274, %for.inc93 ]
  %arrayidx75 = getelementptr inbounds [129 x ptr], ptr %thread73, i64 0, i64 %indvars.iv273
  %78 = load ptr, ptr %arrayidx75, align 8
  %i_threadslice_start79 = getelementptr inbounds i8, ptr %78, i64 1748
  %79 = load i32, ptr %i_threadslice_start79, align 4
  %add80 = add nsw i32 %79, 1
  tail call fastcc void @x264_fdec_filter_row(ptr noundef %78, i32 noundef %add80, i32 noundef 0)
  %80 = load i32, ptr %b_mbaff, align 4
  %tobool82.not = icmp eq i32 %80, 0
  br i1 %tobool82.not, label %for.inc93, label %if.then83

if.then83:                                        ; preds = %for.body72
  %81 = load ptr, ptr %arrayidx75, align 8
  %i_threadslice_start90 = getelementptr inbounds i8, ptr %81, i64 1748
  %82 = load i32, ptr %i_threadslice_start90, align 4
  %add91 = add nsw i32 %82, 2
  tail call fastcc void @x264_fdec_filter_row(ptr noundef %81, i32 noundef %add91, i32 noundef 0)
  br label %for.inc93

for.inc93:                                        ; preds = %for.body72, %if.then83
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1
  %83 = load i32, ptr %i_threads, align 4
  %84 = sext i32 %83 to i64
  %cmp69 = icmp slt i64 %indvars.iv.next274, %84
  br i1 %cmp69, label %for.body72, label %for.cond.cleanup71

for.body104:                                      ; preds = %for.body104.lr.ph, %for.cond148.preheader
  %indvars.iv286 = phi i64 [ 1, %for.body104.lr.ph ], [ %indvars.iv.next287, %for.cond148.preheader ]
  %arrayidx108 = getelementptr inbounds [129 x ptr], ptr %thread106, i64 0, i64 %indvars.iv286
  %85 = load ptr, ptr %arrayidx108, align 8
  %out = getelementptr inbounds i8, ptr %85, i64 1760
  %86 = load i32, ptr %out, align 16
  %cmp110259 = icmp sgt i32 %86, 0
  br i1 %cmp110259, label %for.body113.lr.ph, label %for.cond131.preheader

for.body113.lr.ph:                                ; preds = %for.body104
  %nal120 = getelementptr inbounds i8, ptr %85, i64 1768
  br label %for.body113

for.cond131.preheader:                            ; preds = %x264_nal_check_buffer.exit, %for.body104
  %stat = getelementptr inbounds i8, ptr %85, i64 26712
  %scevgep = getelementptr i8, ptr %85, i64 27384
  %bound0 = icmp ult ptr %stat138, %scevgep
  %bound1 = icmp ult ptr %stat, %i_ssd159
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body135.preheader, label %vector.body

for.body135.preheader:                            ; preds = %vector.body, %for.cond131.preheader
  %indvars.iv279.ph = phi i64 [ 0, %for.cond131.preheader ], [ 160, %vector.body ]
  br label %for.body135

vector.body:                                      ; preds = %for.cond131.preheader
  %87 = getelementptr inbounds i8, ptr %85, i64 26728
  %88 = getelementptr inbounds i8, ptr %85, i64 26744
  %89 = getelementptr inbounds i8, ptr %85, i64 26760
  %wide.load = load <4 x i32>, ptr %stat, align 4, !alias.scope !19
  %wide.load2 = load <4 x i32>, ptr %87, align 4, !alias.scope !19
  %wide.load3 = load <4 x i32>, ptr %88, align 4, !alias.scope !19
  %wide.load4 = load <4 x i32>, ptr %89, align 4, !alias.scope !19
  %wide.load5 = load <4 x i32>, ptr %stat138, align 4, !alias.scope !22, !noalias !19
  %wide.load6 = load <4 x i32>, ptr %39, align 4, !alias.scope !22, !noalias !19
  %wide.load7 = load <4 x i32>, ptr %40, align 4, !alias.scope !22, !noalias !19
  %wide.load8 = load <4 x i32>, ptr %41, align 4, !alias.scope !22, !noalias !19
  %90 = add nsw <4 x i32> %wide.load5, %wide.load
  %91 = add nsw <4 x i32> %wide.load6, %wide.load2
  %92 = add nsw <4 x i32> %wide.load7, %wide.load3
  %93 = add nsw <4 x i32> %wide.load8, %wide.load4
  store <4 x i32> %90, ptr %stat138, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %91, ptr %39, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %92, ptr %40, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %93, ptr %41, align 4, !alias.scope !22, !noalias !19
  %94 = getelementptr inbounds i8, ptr %85, i64 26776
  %95 = getelementptr inbounds i8, ptr %85, i64 26792
  %96 = getelementptr inbounds i8, ptr %85, i64 26808
  %97 = getelementptr inbounds i8, ptr %85, i64 26824
  %wide.load.1 = load <4 x i32>, ptr %94, align 4, !alias.scope !19
  %wide.load2.1 = load <4 x i32>, ptr %95, align 4, !alias.scope !19
  %wide.load3.1 = load <4 x i32>, ptr %96, align 4, !alias.scope !19
  %wide.load4.1 = load <4 x i32>, ptr %97, align 4, !alias.scope !19
  %wide.load5.1 = load <4 x i32>, ptr %42, align 4, !alias.scope !22, !noalias !19
  %wide.load6.1 = load <4 x i32>, ptr %43, align 4, !alias.scope !22, !noalias !19
  %wide.load7.1 = load <4 x i32>, ptr %44, align 4, !alias.scope !22, !noalias !19
  %wide.load8.1 = load <4 x i32>, ptr %45, align 4, !alias.scope !22, !noalias !19
  %98 = add nsw <4 x i32> %wide.load5.1, %wide.load.1
  %99 = add nsw <4 x i32> %wide.load6.1, %wide.load2.1
  %100 = add nsw <4 x i32> %wide.load7.1, %wide.load3.1
  %101 = add nsw <4 x i32> %wide.load8.1, %wide.load4.1
  store <4 x i32> %98, ptr %42, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %99, ptr %43, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %100, ptr %44, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %101, ptr %45, align 4, !alias.scope !22, !noalias !19
  %102 = getelementptr inbounds i8, ptr %85, i64 26840
  %103 = getelementptr inbounds i8, ptr %85, i64 26856
  %104 = getelementptr inbounds i8, ptr %85, i64 26872
  %105 = getelementptr inbounds i8, ptr %85, i64 26888
  %wide.load.2 = load <4 x i32>, ptr %102, align 4, !alias.scope !19
  %wide.load2.2 = load <4 x i32>, ptr %103, align 4, !alias.scope !19
  %wide.load3.2 = load <4 x i32>, ptr %104, align 4, !alias.scope !19
  %wide.load4.2 = load <4 x i32>, ptr %105, align 4, !alias.scope !19
  %wide.load5.2 = load <4 x i32>, ptr %46, align 4, !alias.scope !22, !noalias !19
  %wide.load6.2 = load <4 x i32>, ptr %47, align 4, !alias.scope !22, !noalias !19
  %wide.load7.2 = load <4 x i32>, ptr %48, align 4, !alias.scope !22, !noalias !19
  %wide.load8.2 = load <4 x i32>, ptr %49, align 4, !alias.scope !22, !noalias !19
  %106 = add nsw <4 x i32> %wide.load5.2, %wide.load.2
  %107 = add nsw <4 x i32> %wide.load6.2, %wide.load2.2
  %108 = add nsw <4 x i32> %wide.load7.2, %wide.load3.2
  %109 = add nsw <4 x i32> %wide.load8.2, %wide.load4.2
  store <4 x i32> %106, ptr %46, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %107, ptr %47, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %108, ptr %48, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %109, ptr %49, align 4, !alias.scope !22, !noalias !19
  %110 = getelementptr inbounds i8, ptr %85, i64 26904
  %111 = getelementptr inbounds i8, ptr %85, i64 26920
  %112 = getelementptr inbounds i8, ptr %85, i64 26936
  %113 = getelementptr inbounds i8, ptr %85, i64 26952
  %wide.load.3 = load <4 x i32>, ptr %110, align 4, !alias.scope !19
  %wide.load2.3 = load <4 x i32>, ptr %111, align 4, !alias.scope !19
  %wide.load3.3 = load <4 x i32>, ptr %112, align 4, !alias.scope !19
  %wide.load4.3 = load <4 x i32>, ptr %113, align 4, !alias.scope !19
  %wide.load5.3 = load <4 x i32>, ptr %50, align 4, !alias.scope !22, !noalias !19
  %wide.load6.3 = load <4 x i32>, ptr %51, align 4, !alias.scope !22, !noalias !19
  %wide.load7.3 = load <4 x i32>, ptr %52, align 4, !alias.scope !22, !noalias !19
  %wide.load8.3 = load <4 x i32>, ptr %53, align 4, !alias.scope !22, !noalias !19
  %114 = add nsw <4 x i32> %wide.load5.3, %wide.load.3
  %115 = add nsw <4 x i32> %wide.load6.3, %wide.load2.3
  %116 = add nsw <4 x i32> %wide.load7.3, %wide.load3.3
  %117 = add nsw <4 x i32> %wide.load8.3, %wide.load4.3
  store <4 x i32> %114, ptr %50, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %115, ptr %51, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %116, ptr %52, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %117, ptr %53, align 4, !alias.scope !22, !noalias !19
  %118 = getelementptr inbounds i8, ptr %85, i64 26968
  %119 = getelementptr inbounds i8, ptr %85, i64 26984
  %120 = getelementptr inbounds i8, ptr %85, i64 27000
  %121 = getelementptr inbounds i8, ptr %85, i64 27016
  %wide.load.4 = load <4 x i32>, ptr %118, align 4, !alias.scope !19
  %wide.load2.4 = load <4 x i32>, ptr %119, align 4, !alias.scope !19
  %wide.load3.4 = load <4 x i32>, ptr %120, align 4, !alias.scope !19
  %wide.load4.4 = load <4 x i32>, ptr %121, align 4, !alias.scope !19
  %wide.load5.4 = load <4 x i32>, ptr %54, align 4, !alias.scope !22, !noalias !19
  %wide.load6.4 = load <4 x i32>, ptr %55, align 4, !alias.scope !22, !noalias !19
  %wide.load7.4 = load <4 x i32>, ptr %56, align 4, !alias.scope !22, !noalias !19
  %wide.load8.4 = load <4 x i32>, ptr %57, align 4, !alias.scope !22, !noalias !19
  %122 = add nsw <4 x i32> %wide.load5.4, %wide.load.4
  %123 = add nsw <4 x i32> %wide.load6.4, %wide.load2.4
  %124 = add nsw <4 x i32> %wide.load7.4, %wide.load3.4
  %125 = add nsw <4 x i32> %wide.load8.4, %wide.load4.4
  store <4 x i32> %122, ptr %54, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %123, ptr %55, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %124, ptr %56, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %125, ptr %57, align 4, !alias.scope !22, !noalias !19
  %126 = getelementptr inbounds i8, ptr %85, i64 27032
  %127 = getelementptr inbounds i8, ptr %85, i64 27048
  %128 = getelementptr inbounds i8, ptr %85, i64 27064
  %129 = getelementptr inbounds i8, ptr %85, i64 27080
  %wide.load.5 = load <4 x i32>, ptr %126, align 4, !alias.scope !19
  %wide.load2.5 = load <4 x i32>, ptr %127, align 4, !alias.scope !19
  %wide.load3.5 = load <4 x i32>, ptr %128, align 4, !alias.scope !19
  %wide.load4.5 = load <4 x i32>, ptr %129, align 4, !alias.scope !19
  %wide.load5.5 = load <4 x i32>, ptr %58, align 4, !alias.scope !22, !noalias !19
  %wide.load6.5 = load <4 x i32>, ptr %59, align 4, !alias.scope !22, !noalias !19
  %wide.load7.5 = load <4 x i32>, ptr %60, align 4, !alias.scope !22, !noalias !19
  %wide.load8.5 = load <4 x i32>, ptr %61, align 4, !alias.scope !22, !noalias !19
  %130 = add nsw <4 x i32> %wide.load5.5, %wide.load.5
  %131 = add nsw <4 x i32> %wide.load6.5, %wide.load2.5
  %132 = add nsw <4 x i32> %wide.load7.5, %wide.load3.5
  %133 = add nsw <4 x i32> %wide.load8.5, %wide.load4.5
  store <4 x i32> %130, ptr %58, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %131, ptr %59, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %132, ptr %60, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %133, ptr %61, align 4, !alias.scope !22, !noalias !19
  %134 = getelementptr inbounds i8, ptr %85, i64 27096
  %135 = getelementptr inbounds i8, ptr %85, i64 27112
  %136 = getelementptr inbounds i8, ptr %85, i64 27128
  %137 = getelementptr inbounds i8, ptr %85, i64 27144
  %wide.load.6 = load <4 x i32>, ptr %134, align 4, !alias.scope !19
  %wide.load2.6 = load <4 x i32>, ptr %135, align 4, !alias.scope !19
  %wide.load3.6 = load <4 x i32>, ptr %136, align 4, !alias.scope !19
  %wide.load4.6 = load <4 x i32>, ptr %137, align 4, !alias.scope !19
  %wide.load5.6 = load <4 x i32>, ptr %62, align 4, !alias.scope !22, !noalias !19
  %wide.load6.6 = load <4 x i32>, ptr %63, align 4, !alias.scope !22, !noalias !19
  %wide.load7.6 = load <4 x i32>, ptr %64, align 4, !alias.scope !22, !noalias !19
  %wide.load8.6 = load <4 x i32>, ptr %65, align 4, !alias.scope !22, !noalias !19
  %138 = add nsw <4 x i32> %wide.load5.6, %wide.load.6
  %139 = add nsw <4 x i32> %wide.load6.6, %wide.load2.6
  %140 = add nsw <4 x i32> %wide.load7.6, %wide.load3.6
  %141 = add nsw <4 x i32> %wide.load8.6, %wide.load4.6
  store <4 x i32> %138, ptr %62, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %139, ptr %63, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %140, ptr %64, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %141, ptr %65, align 4, !alias.scope !22, !noalias !19
  %142 = getelementptr inbounds i8, ptr %85, i64 27160
  %143 = getelementptr inbounds i8, ptr %85, i64 27176
  %144 = getelementptr inbounds i8, ptr %85, i64 27192
  %145 = getelementptr inbounds i8, ptr %85, i64 27208
  %wide.load.7 = load <4 x i32>, ptr %142, align 4, !alias.scope !19
  %wide.load2.7 = load <4 x i32>, ptr %143, align 4, !alias.scope !19
  %wide.load3.7 = load <4 x i32>, ptr %144, align 4, !alias.scope !19
  %wide.load4.7 = load <4 x i32>, ptr %145, align 4, !alias.scope !19
  %wide.load5.7 = load <4 x i32>, ptr %66, align 4, !alias.scope !22, !noalias !19
  %wide.load6.7 = load <4 x i32>, ptr %67, align 4, !alias.scope !22, !noalias !19
  %wide.load7.7 = load <4 x i32>, ptr %68, align 4, !alias.scope !22, !noalias !19
  %wide.load8.7 = load <4 x i32>, ptr %69, align 4, !alias.scope !22, !noalias !19
  %146 = add nsw <4 x i32> %wide.load5.7, %wide.load.7
  %147 = add nsw <4 x i32> %wide.load6.7, %wide.load2.7
  %148 = add nsw <4 x i32> %wide.load7.7, %wide.load3.7
  %149 = add nsw <4 x i32> %wide.load8.7, %wide.load4.7
  store <4 x i32> %146, ptr %66, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %147, ptr %67, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %148, ptr %68, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %149, ptr %69, align 4, !alias.scope !22, !noalias !19
  %150 = getelementptr inbounds i8, ptr %85, i64 27224
  %151 = getelementptr inbounds i8, ptr %85, i64 27240
  %152 = getelementptr inbounds i8, ptr %85, i64 27256
  %153 = getelementptr inbounds i8, ptr %85, i64 27272
  %wide.load.8 = load <4 x i32>, ptr %150, align 4, !alias.scope !19
  %wide.load2.8 = load <4 x i32>, ptr %151, align 4, !alias.scope !19
  %wide.load3.8 = load <4 x i32>, ptr %152, align 4, !alias.scope !19
  %wide.load4.8 = load <4 x i32>, ptr %153, align 4, !alias.scope !19
  %wide.load5.8 = load <4 x i32>, ptr %70, align 4, !alias.scope !22, !noalias !19
  %wide.load6.8 = load <4 x i32>, ptr %71, align 4, !alias.scope !22, !noalias !19
  %wide.load7.8 = load <4 x i32>, ptr %72, align 4, !alias.scope !22, !noalias !19
  %wide.load8.8 = load <4 x i32>, ptr %73, align 4, !alias.scope !22, !noalias !19
  %154 = add nsw <4 x i32> %wide.load5.8, %wide.load.8
  %155 = add nsw <4 x i32> %wide.load6.8, %wide.load2.8
  %156 = add nsw <4 x i32> %wide.load7.8, %wide.load3.8
  %157 = add nsw <4 x i32> %wide.load8.8, %wide.load4.8
  store <4 x i32> %154, ptr %70, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %155, ptr %71, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %156, ptr %72, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %157, ptr %73, align 4, !alias.scope !22, !noalias !19
  %158 = getelementptr inbounds i8, ptr %85, i64 27288
  %159 = getelementptr inbounds i8, ptr %85, i64 27304
  %160 = getelementptr inbounds i8, ptr %85, i64 27320
  %161 = getelementptr inbounds i8, ptr %85, i64 27336
  %wide.load.9 = load <4 x i32>, ptr %158, align 4, !alias.scope !19
  %wide.load2.9 = load <4 x i32>, ptr %159, align 4, !alias.scope !19
  %wide.load3.9 = load <4 x i32>, ptr %160, align 4, !alias.scope !19
  %wide.load4.9 = load <4 x i32>, ptr %161, align 4, !alias.scope !19
  %wide.load5.9 = load <4 x i32>, ptr %74, align 4, !alias.scope !22, !noalias !19
  %wide.load6.9 = load <4 x i32>, ptr %75, align 4, !alias.scope !22, !noalias !19
  %wide.load7.9 = load <4 x i32>, ptr %76, align 4, !alias.scope !22, !noalias !19
  %wide.load8.9 = load <4 x i32>, ptr %77, align 4, !alias.scope !22, !noalias !19
  %162 = add nsw <4 x i32> %wide.load5.9, %wide.load.9
  %163 = add nsw <4 x i32> %wide.load6.9, %wide.load2.9
  %164 = add nsw <4 x i32> %wide.load7.9, %wide.load3.9
  %165 = add nsw <4 x i32> %wide.load8.9, %wide.load4.9
  store <4 x i32> %162, ptr %74, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %163, ptr %75, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %164, ptr %76, align 4, !alias.scope !22, !noalias !19
  store <4 x i32> %165, ptr %77, align 4, !alias.scope !22, !noalias !19
  br label %for.body135.preheader

for.body113:                                      ; preds = %for.body113.lr.ph, %x264_nal_check_buffer.exit
  %indvars.iv276 = phi i64 [ 0, %for.body113.lr.ph ], [ %indvars.iv.next277, %x264_nal_check_buffer.exit ]
  %166 = load ptr, ptr %nal, align 8
  %167 = load i32, ptr %out114, align 16
  %idxprom117 = sext i32 %167 to i64
  %arrayidx118 = getelementptr inbounds %struct.x264_nal_t, ptr %166, i64 %idxprom117
  %168 = load ptr, ptr %nal120, align 8
  %arrayidx122 = getelementptr inbounds %struct.x264_nal_t, ptr %168, i64 %indvars.iv276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayidx118, ptr noundef nonnull align 8 dereferenceable(24) %arrayidx122, i64 24, i1 false)
  %169 = load i32, ptr %out114, align 16
  %inc125 = add nsw i32 %169, 1
  store i32 %inc125, ptr %out114, align 16
  %170 = load i32, ptr %i_nals_allocated.i, align 4
  %cmp.not.i = icmp slt i32 %inc125, %170
  br i1 %cmp.not.i, label %x264_nal_check_buffer.exit, label %if.then.i

if.then.i:                                        ; preds = %for.body113
  %mul4.i = mul i32 %170, 48
  %call.i = tail call ptr @x264_malloc(i32 noundef %mul4.i) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %x264_nal_check_buffer.exit, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i
  %171 = load ptr, ptr %nal, align 8
  %172 = load i32, ptr %i_nals_allocated.i, align 4
  %conv10.i = sext i32 %172 to i64
  %mul11.i = mul nsw i64 %conv10.i, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call.i, ptr align 8 %171, i64 %mul11.i, i1 false)
  %173 = load ptr, ptr %nal, align 8
  tail call void @x264_free(ptr noundef %173) #17
  store ptr %call.i, ptr %nal, align 8
  %174 = load i32, ptr %i_nals_allocated.i, align 4
  %mul18.i = shl nsw i32 %174, 1
  store i32 %mul18.i, ptr %i_nals_allocated.i, align 4
  br label %x264_nal_check_buffer.exit

x264_nal_check_buffer.exit:                       ; preds = %for.body113, %if.then.i, %cleanup.thread.i
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1
  %175 = load i32, ptr %out, align 16
  %176 = sext i32 %175 to i64
  %cmp110 = icmp slt i64 %indvars.iv.next277, %176
  br i1 %cmp110, label %for.body113, label %for.cond131.preheader

for.cond148.preheader:                            ; preds = %for.body135
  %i_ssd = getelementptr inbounds i8, ptr %85, i64 27384
  %177 = load i64, ptr %i_ssd, align 8
  %178 = load i64, ptr %i_ssd159, align 8
  %add162 = add nsw i64 %178, %177
  store i64 %add162, ptr %i_ssd159, align 8
  %arrayidx156.1 = getelementptr inbounds i8, ptr %85, i64 27392
  %179 = load i64, ptr %arrayidx156.1, align 8
  %180 = load i64, ptr %arrayidx161.1, align 8
  %add162.1 = add nsw i64 %180, %179
  store i64 %add162.1, ptr %arrayidx161.1, align 8
  %arrayidx156.2 = getelementptr inbounds i8, ptr %85, i64 27400
  %181 = load i64, ptr %arrayidx156.2, align 8
  %182 = load i64, ptr %arrayidx161.2, align 8
  %add162.2 = add nsw i64 %182, %181
  store i64 %add162.2, ptr %arrayidx161.2, align 8
  %f_ssim = getelementptr inbounds i8, ptr %85, i64 27408
  %183 = load double, ptr %f_ssim, align 8
  %184 = load double, ptr %f_ssim171, align 8
  %add172 = fadd double %183, %184
  store double %add172, ptr %f_ssim171, align 8
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1
  %185 = load i32, ptr %i_threads, align 4
  %186 = sext i32 %185 to i64
  %cmp101 = icmp slt i64 %indvars.iv.next287, %186
  br i1 %cmp101, label %for.body104, label %cleanup177

for.body135:                                      ; preds = %for.body135, %for.body135.preheader
  %indvars.iv279 = phi i64 [ %indvars.iv279.ph, %for.body135.preheader ], [ %indvars.iv.next280.3, %for.body135 ]
  %arrayidx137 = getelementptr inbounds i32, ptr %stat, i64 %indvars.iv279
  %187 = load i32, ptr %arrayidx137, align 4
  %arrayidx141 = getelementptr inbounds i32, ptr %stat138, i64 %indvars.iv279
  %188 = load i32, ptr %arrayidx141, align 4
  %add142 = add nsw i32 %188, %187
  store i32 %add142, ptr %arrayidx141, align 4
  %indvars.iv.next280 = or disjoint i64 %indvars.iv279, 1
  %arrayidx137.1 = getelementptr inbounds i32, ptr %stat, i64 %indvars.iv.next280
  %189 = load i32, ptr %arrayidx137.1, align 4
  %arrayidx141.1 = getelementptr inbounds i32, ptr %stat138, i64 %indvars.iv.next280
  %190 = load i32, ptr %arrayidx141.1, align 4
  %add142.1 = add nsw i32 %190, %189
  store i32 %add142.1, ptr %arrayidx141.1, align 4
  %indvars.iv.next280.1 = or disjoint i64 %indvars.iv279, 2
  %arrayidx137.2 = getelementptr inbounds i32, ptr %stat, i64 %indvars.iv.next280.1
  %191 = load i32, ptr %arrayidx137.2, align 4
  %arrayidx141.2 = getelementptr inbounds i32, ptr %stat138, i64 %indvars.iv.next280.1
  %192 = load i32, ptr %arrayidx141.2, align 4
  %add142.2 = add nsw i32 %192, %191
  store i32 %add142.2, ptr %arrayidx141.2, align 4
  %indvars.iv.next280.2 = or disjoint i64 %indvars.iv279, 3
  %arrayidx137.3 = getelementptr inbounds i32, ptr %stat, i64 %indvars.iv.next280.2
  %193 = load i32, ptr %arrayidx137.3, align 4
  %arrayidx141.3 = getelementptr inbounds i32, ptr %stat138, i64 %indvars.iv.next280.2
  %194 = load i32, ptr %arrayidx141.3, align 4
  %add142.3 = add nsw i32 %194, %193
  store i32 %add142.3, ptr %arrayidx141.3, align 4
  %indvars.iv.next280.3 = add nuw nsw i64 %indvars.iv279, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next280.3, 168
  br i1 %exitcond.not.3, label %for.cond148.preheader, label %for.body135, !llvm.loop !24

cleanup177:                                       ; preds = %for.cond148.preheader, %for.cond.cleanup71
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @x264_slices_write(ptr noundef %h) unnamed_addr #0 {
entry:
  %bs_bak.i = alloca %struct.bs_s, align 8
  %cabac_bak.i = alloca %struct.x264_cabac_t, align 16
  %i_last_mb = getelementptr inbounds i8, ptr %h, i64 7256
  %0 = load i32, ptr %i_last_mb, align 8
  %stat = getelementptr inbounds i8, ptr %h, i64 26712
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %stat, i8 0, i64 704, i1 false)
  %b_reencode_mb = getelementptr inbounds i8, ptr %h, i64 17424
  store i32 0, ptr %b_reencode_mb, align 16
  %i_first_mb = getelementptr inbounds i8, ptr %h, i64 7252
  %1 = load i32, ptr %i_first_mb, align 4
  %cmp.not104 = icmp sgt i32 %1, %0
  br i1 %cmp.not104, label %cleanup, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %i_slice_max_mbs = getelementptr inbounds i8, ptr %h, i64 688
  %i_slice_count = getelementptr inbounds i8, ptr %h, i64 692
  %b_sliced_threads = getelementptr inbounds i8, ptr %h, i64 8
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
  %b_annexb.i = getelementptr inbounds i8, ptr %h, i64 640
  %out.i = getelementptr inbounds i8, ptr %h, i64 1760
  %i_slice_max_size.i = getelementptr inbounds i8, ptr %h, i64 684
  %bs.i = getelementptr inbounds i8, ptr %h, i64 1792
  %p.i.i = getelementptr inbounds i8, ptr %h, i64 1800
  %i_left.i.i = getelementptr inbounds i8, ptr %h, i64 1824
  %sh.i = getelementptr inbounds i8, ptr %h, i64 7232
  %i_disable_deblocking_filter_idc.i = getelementptr inbounds i8, ptr %h, i64 13884
  %fdec.i = getelementptr inbounds i8, ptr %h, i64 14688
  %psz_dump_yuv.i = getelementptr inbounds i8, ptr %h, i64 376
  %cur_bits.i.i = getelementptr inbounds i8, ptr %h, i64 1816
  %i_nal_type.i = getelementptr inbounds i8, ptr %h, i64 1856
  %i_nal_ref_idc.i = getelementptr inbounds i8, ptr %h, i64 1860
  %nal1.i.i = getelementptr inbounds i8, ptr %h, i64 1768
  %p_bitstream.i.i = getelementptr inbounds i8, ptr %h, i64 1784
  %i_threadslice_start.i = getelementptr inbounds i8, ptr %h, i64 1748
  %i_last_qp.i = getelementptr inbounds i8, ptr %h, i64 25800
  %i_qp.i = getelementptr inbounds i8, ptr %h, i64 13868
  %pps.i = getelementptr inbounds i8, ptr %h, i64 3328
  %i_qp_delta.i = getelementptr inbounds i8, ptr %h, i64 13872
  %b_mbaff.i.i = getelementptr inbounds i8, ptr %h, i64 7268
  %i_type.i.i = getelementptr inbounds i8, ptr %h, i64 7248
  %i_pps_id.i.i = getelementptr inbounds i8, ptr %h, i64 7260
  %i_frame_num.i.i = getelementptr inbounds i8, ptr %h, i64 7264
  %b_field_pic.i.i = getelementptr inbounds i8, ptr %h, i64 7272
  %b_bottom_field.i.i = getelementptr inbounds i8, ptr %h, i64 7276
  %i_idr_pic_id.i.i = getelementptr inbounds i8, ptr %h, i64 7280
  %i_delta_poc.i.i = getelementptr inbounds i8, ptr %h, i64 7292
  %pps37.i.i = getelementptr inbounds i8, ptr %h, i64 7240
  %arrayidx45.i.i = getelementptr inbounds i8, ptr %h, i64 7296
  %i_poc.i.i = getelementptr inbounds i8, ptr %h, i64 7284
  %i_delta_poc_bottom.i.i = getelementptr inbounds i8, ptr %h, i64 7288
  %i_redundant_pic_cnt.i.i = getelementptr inbounds i8, ptr %h, i64 7300
  %b_direct_spatial_mv_pred.i.i = getelementptr inbounds i8, ptr %h, i64 7304
  %b_num_ref_idx_override.i.i = getelementptr inbounds i8, ptr %h, i64 7308
  %i_num_ref_idx_l0_active.i.i = getelementptr inbounds i8, ptr %h, i64 7312
  %i_num_ref_idx_l1_active.i.i = getelementptr inbounds i8, ptr %h, i64 7316
  %b_ref_pic_list_reordering_l0.i.i = getelementptr inbounds i8, ptr %h, i64 7320
  %ref_pic_list_order.i.i = getelementptr inbounds i8, ptr %h, i64 7328
  %b_ref_pic_list_reordering_l1.i.i = getelementptr inbounds i8, ptr %h, i64 7324
  %arrayidx105.i.i = getelementptr inbounds i8, ptr %h, i64 7456
  %weight.i.i = getelementptr inbounds i8, ptr %h, i64 7584
  %i_denom.i.i = getelementptr inbounds i8, ptr %h, i64 7616
  %i_denom133.i.i = getelementptr inbounds i8, ptr %h, i64 7680
  %i_mmco_command_count.i.i = getelementptr inbounds i8, ptr %h, i64 13732
  %mmco.i.i = getelementptr inbounds i8, ptr %h, i64 13736
  %i_cabac_init_idc.i.i = getelementptr inbounds i8, ptr %h, i64 13864
  %i_alpha_c0_offset.i.i = getelementptr inbounds i8, ptr %h, i64 13888
  %i_beta_offset.i.i = getelementptr inbounds i8, ptr %h, i64 13892
  %b_cabac.i = getelementptr inbounds i8, ptr %h, i64 128
  %cabac.i = getelementptr inbounds i8, ptr %h, i64 13904
  %p_end.i = getelementptr inbounds i8, ptr %h, i64 1808
  %i_last_dqp.i = getelementptr inbounds i8, ptr %h, i64 25804
  %p.i906.i = getelementptr inbounds i8, ptr %h, i64 13928
  %p_start.i.i = getelementptr inbounds i8, ptr %h, i64 13920
  %i_bytes_outstanding.i.i = getelementptr inbounds i8, ptr %h, i64 13916
  %i_queue.i.i = getelementptr inbounds i8, ptr %h, i64 13912
  %p_end.i.i = getelementptr inbounds i8, ptr %h, i64 13936
  %i_bitstream.i.i = getelementptr inbounds i8, ptr %h, i64 1776
  %memcpy_aligned.i.i = getelementptr inbounds i8, ptr %h, i64 32816
  %i_type111.i = getelementptr inbounds i8, ptr %h, i64 17384
  %i_mb_count.i = getelementptr inbounds i8, ptr %h, i64 26724
  %i_log_level.i = getelementptr inbounds i8, ptr %h, i64 368
  %b_stat_write.i = getelementptr inbounds i8, ptr %h, i64 560
  %i_partition.i = getelementptr inbounds i8, ptr %h, i64 17388
  %i_mb_partition.i = getelementptr inbounds i8, ptr %h, i64 27076
  %i_sub_partition.i = getelementptr inbounds i8, ptr %h, i64 17392
  %i_frame_reference.i = getelementptr inbounds i8, ptr %h, i64 80
  %ref.i = getelementptr inbounds i8, ptr %h, i64 25120
  %i_mb_count_ref.i = getelementptr inbounds i8, ptr %h, i64 26820
  %i_cbp_luma.i = getelementptr inbounds i8, ptr %h, i64 17400
  %i_cbp_chroma.i = getelementptr inbounds i8, ptr %h, i64 17404
  %i_mb_cbp.i = getelementptr inbounds i8, ptr %h, i64 27144
  %i_mb_count_8x8dct.i = getelementptr inbounds i8, ptr %h, i64 26812
  %b_transform_8x8.i = getelementptr inbounds i8, ptr %h, i64 17396
  %arrayidx396.i = getelementptr inbounds i8, ptr %h, i64 26816
  %arrayidx433.i = getelementptr inbounds i8, ptr %h, i64 27220
  %i_mb_pred_mode.i = getelementptr inbounds i8, ptr %h, i64 27168
  %i_intra16x16_pred_mode.i = getelementptr inbounds i8, ptr %h, i64 17408
  %arrayidx456.i = getelementptr inbounds i8, ptr %h, i64 27272
  %arrayidx475.i = getelementptr inbounds i8, ptr %h, i64 27324
  %i_chroma_pred_mode.i = getelementptr inbounds i8, ptr %h, i64 17412
  %deblock_strength.i = getelementptr inbounds i8, ptr %h, i64 31232
  %i_mb_y491.i = getelementptr inbounds i8, ptr %h, i64 16388
  %i_mb_x498.i = getelementptr inbounds i8, ptr %h, i64 16384
  %type.i = getelementptr inbounds i8, ptr %h, i64 16616
  %i_mb_xy.i = getelementptr inbounds i8, ptr %h, i64 16392
  %deblock_strength540.i = getelementptr inbounds i8, ptr %h, i64 33320
  %non_zero_count.i = getelementptr inbounds i8, ptr %h, i64 25072
  %mv.i = getelementptr inbounds i8, ptr %h, i64 25200
  %arrayidx265.1.i = getelementptr inbounds i8, ptr %h, i64 17393
  %arrayidx265.2.i = getelementptr inbounds i8, ptr %h, i64 17394
  %arrayidx265.3.i = getelementptr inbounds i8, ptr %h, i64 17395
  %arrayidx439.i = getelementptr inbounds i8, ptr %h, i64 25036
  %arrayidx439.1.i = getelementptr inbounds i8, ptr %h, i64 25038
  %arrayidx439.2.i = getelementptr inbounds i8, ptr %h, i64 25052
  %arrayidx439.3.i = getelementptr inbounds i8, ptr %h, i64 25054
  %arrayidx463.1.i = getelementptr inbounds i8, ptr %h, i64 25037
  %arrayidx463.2.i = getelementptr inbounds i8, ptr %h, i64 25044
  %arrayidx463.3.i = getelementptr inbounds i8, ptr %h, i64 25045
  %arrayidx463.5.i = getelementptr inbounds i8, ptr %h, i64 25039
  %arrayidx463.6.i = getelementptr inbounds i8, ptr %h, i64 25046
  %arrayidx463.7.i = getelementptr inbounds i8, ptr %h, i64 25047
  %arrayidx463.9.i = getelementptr inbounds i8, ptr %h, i64 25053
  %arrayidx463.10.i = getelementptr inbounds i8, ptr %h, i64 25060
  %arrayidx463.11.i = getelementptr inbounds i8, ptr %h, i64 25061
  %arrayidx463.13.i = getelementptr inbounds i8, ptr %h, i64 25055
  %arrayidx463.14.i = getelementptr inbounds i8, ptr %h, i64 25062
  %arrayidx463.15.i = getelementptr inbounds i8, ptr %h, i64 25063
  %arrayidx297.i.us = getelementptr inbounds i8, ptr %h, i64 25132
  %arrayidx297.1.i.us = getelementptr inbounds i8, ptr %h, i64 25134
  %arrayidx297.2.i.us = getelementptr inbounds i8, ptr %h, i64 25148
  %arrayidx297.3.i.us = getelementptr inbounds i8, ptr %h, i64 25150
  %i_nals_allocated.i.i.i = getelementptr inbounds i8, ptr %h, i64 1764
  %i_threadslice_end.i = getelementptr inbounds i8, ptr %h, i64 1752
  %i_tex_bits.i = getelementptr inbounds i8, ptr %h, i64 26716
  %i_misc_bits.i = getelementptr inbounds i8, ptr %h, i64 26720
  %2 = add i32 %1, -1
  %arrayidx297.i = getelementptr inbounds i8, ptr %h, i64 25132
  %arrayidx297.1.i = getelementptr inbounds i8, ptr %h, i64 25134
  %arrayidx297.2.i = getelementptr inbounds i8, ptr %h, i64 25148
  %arrayidx297.3.i = getelementptr inbounds i8, ptr %h, i64 25150
  %arrayidx297.i.1 = getelementptr inbounds i8, ptr %h, i64 25172
  %arrayidx297.1.i.1 = getelementptr inbounds i8, ptr %h, i64 25174
  %arrayidx297.2.i.1 = getelementptr inbounds i8, ptr %h, i64 25188
  %arrayidx297.3.i.1 = getelementptr inbounds i8, ptr %h, i64 25190
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end43
  %add = phi i32 [ %2, %while.body.lr.ph ], [ %728, %if.end43 ]
  %i_slice_num.0105 = phi i32 [ 0, %while.body.lr.ph ], [ %i_slice_num.1, %if.end43 ]
  store i32 %0, ptr %i_last_mb, align 8
  %3 = load i32, ptr %i_slice_max_mbs, align 16
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %while.body
  %sub = add i32 %add, %3
  br label %if.end33

if.else:                                          ; preds = %while.body
  %4 = load i32, ptr %i_slice_count, align 4
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %5 = load i32, ptr %b_sliced_threads, align 8
  %tobool16.not = icmp eq i32 %5, 0
  br i1 %tobool16.not, label %if.then17, label %if.end33

if.then17:                                        ; preds = %land.lhs.true
  %6 = load ptr, ptr %sps, align 16
  %i_mb_height = getelementptr inbounds i8, ptr %6, i64 1088
  %7 = load i32, ptr %i_mb_height, align 4
  %8 = load i32, ptr %b_interlaced, align 8
  %shr = ashr i32 %7, %8
  %i_mb_width = getelementptr inbounds i8, ptr %6, i64 1084
  %9 = load i32, ptr %i_mb_width, align 4
  %shl = shl i32 %9, %8
  %inc = add nsw i32 %i_slice_num.0105, 1
  %mul = mul nsw i32 %shr, %inc
  %div = sdiv i32 %4, 2
  %add24 = add nsw i32 %mul, %div
  %div27 = sdiv i32 %add24, %4
  %mul28 = mul nsw i32 %div27, %shl
  %sub29 = add nsw i32 %mul28, -1
  br label %if.end33

if.end33:                                         ; preds = %if.else, %land.lhs.true, %if.then17, %if.then6
  %10 = phi i32 [ %sub, %if.then6 ], [ %0, %land.lhs.true ], [ %sub29, %if.then17 ], [ %0, %if.else ]
  %i_slice_num.1 = phi i32 [ %i_slice_num.0105, %if.then6 ], [ %i_slice_num.0105, %land.lhs.true ], [ %inc, %if.then17 ], [ %i_slice_num.0105, %if.else ]
  %. = tail call i32 @llvm.smin.i32(i32 %10, i32 %0)
  store i32 %., ptr %i_last_mb, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bs_bak.i)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %cabac_bak.i)
  %11 = load i32, ptr %b_annexb.i, align 16
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %land.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end33
  %12 = load i32, ptr %out.i, align 16
  %tobool1.not.i = icmp eq i32 %12, 0
  %.neg.i = select i1 %tobool1.not.i, i32 -8, i32 -7
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end33
  %land.ext.neg.neg.i = phi i32 [ -8, %if.end33 ], [ %.neg.i, %land.rhs.i ]
  %13 = load i32, ptr %i_slice_max_size.i, align 4
  %cmp.i = icmp sgt i32 %13, 0
  %sub5.i = add nsw i32 %13, %land.ext.neg.neg.i
  %mul.i = shl nsw i32 %sub5.i, 3
  %14 = load ptr, ptr %p.i.i, align 8
  %15 = load ptr, ptr %bs.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i64
  %sub.ptr.sub.i.neg.i = sub i64 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  %16 = load i32, ptr %i_left.i.i, align 8
  %sub.ptr.sub.tr.i.neg.i = trunc i64 %sub.ptr.sub.i.neg.i to i32
  %.neg1093.i = shl i32 %sub.ptr.sub.tr.i.neg.i, 3
  %17 = load i32, ptr %i_disable_deblocking_filter_idc.i, align 4
  %cmp7.not.i = icmp eq i32 %17, 1
  %18 = load ptr, ptr %fdec.i, align 16
  %b_kept_as_ref.i = getelementptr inbounds i8, ptr %18, i64 72
  %19 = load i32, ptr %b_kept_as_ref.i, align 8
  %tobool8.not.i = icmp eq i32 %19, 0
  br i1 %tobool8.not.i, label %lor.rhs.i, label %lor.end.i

lor.rhs.i:                                        ; preds = %land.end.i
  %20 = load ptr, ptr %psz_dump_yuv.i, align 8
  %tobool10.not.i = icmp eq ptr %20, null
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %land.end.i
  %lor.ext.i = phi i1 [ false, %land.end.i ], [ %tobool10.not.i, %lor.rhs.i ]
  %21 = trunc i64 %sub.ptr.lhs.cast.i.i to i32
  %conv.i.i = and i32 %21, 3
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %bs_realign.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.end.i
  %idx.ext.i.i = and i64 %sub.ptr.lhs.cast.i.i, 3
  %idx.neg.i.i = sub nsw i64 0, %idx.ext.i.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %14, i64 %idx.neg.i.i
  store ptr %add.ptr.i.i, ptr %p.i.i, align 8
  %idx.ext.tr.i.i = trunc nuw nsw i64 %idx.ext.i.i to i32
  %22 = shl nuw nsw i32 %idx.ext.tr.i.i, 3
  %conv4.i.i = sub nuw nsw i32 64, %22
  store i32 %conv4.i.i, ptr %i_left.i.i, align 8
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %add5.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %23)
  %conv6.i.i = zext i32 %add5.i.i.i to i64
  %24 = shl nuw nsw i32 %conv.i.i, 3
  %mul8.i.i = sub nuw nsw i32 32, %24
  %sh_prom.i.i = zext nneg i32 %mul8.i.i to i64
  %shr.i.i = lshr i64 %conv6.i.i, %sh_prom.i.i
  store i64 %shr.i.i, ptr %cur_bits.i.i, align 8
  br label %bs_realign.exit.i

bs_realign.exit.i:                                ; preds = %if.then.i.i, %lor.end.i
  %25 = load ptr, ptr %nal1.i.i, align 8
  %26 = load i32, ptr %out.i, align 16
  %idxprom.i.i = sext i32 %26 to i64
  %arrayidx.i.i = getelementptr inbounds %struct.x264_nal_t, ptr %25, i64 %idxprom.i.i
  %27 = load <2 x i32>, ptr %i_nal_type.i, align 16
  %28 = shufflevector <2 x i32> %27, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %28, ptr %arrayidx.i.i, align 8
  %i_payload.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i64 8
  store i32 0, ptr %i_payload.i.i, align 8
  %29 = load ptr, ptr %p_bitstream.i.i, align 8
  %30 = load ptr, ptr %p.i.i, align 8
  %31 = load ptr, ptr %bs.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %30 to i64
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %31 to i64
  %sub.ptr.sub.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %32 = load i32, ptr %i_left.i.i, align 8
  %sub.ptr.sub.tr.i.i.i = trunc i64 %sub.ptr.sub.i.i.i to i32
  %33 = shl i32 %sub.ptr.sub.tr.i.i.i, 3
  %reass.sub = sub i32 %33, %32
  %conv1.i.i.i = add i32 %reass.sub, 64
  %div.i.i = sdiv i32 %conv1.i.i.i, 8
  %idxprom7.i.i = sext i32 %div.i.i to i64
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %29, i64 %idxprom7.i.i
  %p_payload.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i64 16
  store ptr %arrayidx8.i.i, ptr %p_payload.i.i, align 8
  tail call void @x264_macroblock_thread_init(ptr noundef nonnull %h) #17
  %34 = load i32, ptr %i_first_mb, align 4
  %35 = load i32, ptr %i_threadslice_start.i, align 4
  %36 = load ptr, ptr %sps, align 16
  %i_mb_width.i = getelementptr inbounds i8, ptr %36, i64 1084
  %37 = load i32, ptr %i_mb_width.i, align 4
  %mul14.i = mul nsw i32 %37, %35
  %cmp15.not.i = icmp eq i32 %34, %mul14.i
  br i1 %cmp15.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %bs_realign.exit.i
  %38 = load i32, ptr %i_last_qp.i, align 8
  store i32 %38, ptr %i_qp.i, align 4
  %39 = load ptr, ptr %pps.i, align 16
  %i_pic_init_qp.i = getelementptr inbounds i8, ptr %39, i64 36
  %40 = load i32, ptr %i_pic_init_qp.i, align 4
  %sub20.i = sub nsw i32 %38, %40
  store i32 %sub20.i, ptr %i_qp_delta.i, align 16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %bs_realign.exit.i
  %41 = load i32, ptr %i_nal_ref_idc.i, align 4
  %42 = load i32, ptr %b_mbaff.i.i, align 4
  %tobool.not.i873.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i873.i, label %if.else.i.i, label %if.then.i874.i

if.then.i874.i:                                   ; preds = %if.end.i
  %shr.i875.i = ashr i32 %34, 1
  %inc.i.i.i = add nsw i32 %shr.i875.i, 1
  %cmp.i.i.i = icmp sgt i32 %shr.i875.i, 65534
  %shr.i.i.i = lshr i32 %inc.i.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 32, i32 0
  %spec.select18.i.i.i = select i1 %cmp.i.i.i, i32 %shr.i.i.i, i32 %inc.i.i.i
  %cmp1.i.i.i = icmp sgt i32 %spec.select18.i.i.i, 255
  %add.i.i.i = or disjoint i32 %spec.select.i.i.i, 16
  %shr3.i.i.i = lshr i32 %spec.select18.i.i.i, 8
  %size.1.i.i.i = select i1 %cmp1.i.i.i, i32 %add.i.i.i, i32 %spec.select.i.i.i
  %tmp.1.i.i.i = select i1 %cmp1.i.i.i, i32 %shr3.i.i.i, i32 %spec.select18.i.i.i
  %idxprom.i.i.i = sext i32 %tmp.1.i.i.i to i64
  %arrayidx.i.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i.i
  %43 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %43 to i32
  %add5.i.i876.i = add nuw nsw i32 %size.1.i.i.i, %conv.i.i.i
  %shr6.i.i.i = lshr i32 %add5.i.i876.i, 1
  %44 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i.i.i = zext nneg i32 %shr6.i.i.i to i64
  %shl.i.i.i.i = shl i64 %44, %sh_prom.i.i.i.i
  store i64 %shl.i.i.i.i, ptr %cur_bits.i.i, align 8
  %45 = load i32, ptr %i_left.i.i, align 8
  %sub.i.i.i.i = sub nsw i32 %45, %shr6.i.i.i
  store i32 %sub.i.i.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i.i.i = icmp slt i32 %sub.i.i.i.i, 33
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %bs_write.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i874.i
  %sh_prom6.i.i.i.i = zext nneg i32 %sub.i.i.i.i to i64
  %shl7.i.i.i.i = shl i64 %shl.i.i.i.i, %sh_prom6.i.i.i.i
  %add.i.i.i.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i.i)
  %conv8.i.i.i.i = trunc i64 %add.i.i.i.i.i.i to i32
  %46 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i.i.i, ptr %46, align 4
  %47 = load i32, ptr %i_left.i.i, align 8
  %add.i.i.i.i = add nsw i32 %47, 32
  %48 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, ptr %48, i64 4
  store ptr %add.ptr.i.i.i.i, ptr %p.i.i, align 8
  %.pre.i.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i.i.i

bs_write.exit.i.i.i:                              ; preds = %if.then.i.i.i.i, %if.then.i874.i
  %49 = phi i32 [ %sub.i.i.i.i, %if.then.i874.i ], [ %add.i.i.i.i, %if.then.i.i.i.i ]
  %50 = phi i64 [ %shl.i.i.i.i, %if.then.i874.i ], [ %.pre.i.i.i, %if.then.i.i.i.i ]
  %add8.i.i.i = add nuw nsw i32 %shr6.i.i.i, 1
  %sh_prom.i20.i.i.i = zext nneg i32 %add8.i.i.i to i64
  %shl.i21.i.i.i = shl i64 %50, %sh_prom.i20.i.i.i
  %conv.i.i.i.i = zext i32 %inc.i.i.i to i64
  %or.i.i.i.i = or i64 %shl.i21.i.i.i, %conv.i.i.i.i
  store i64 %or.i.i.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i.i.i = sub nsw i32 %49, %add8.i.i.i
  store i32 %sub.i23.i.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i.i.i = icmp slt i32 %sub.i23.i.i.i, 33
  br i1 %cmp.i24.i.i.i, label %if.end.sink.split.i.i, label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  %inc.i398.i.i = add i32 %34, 1
  %cmp.i399.i.i = icmp sgt i32 %inc.i398.i.i, 65535
  %shr.i400.i.i = lshr i32 %inc.i398.i.i, 16
  %spec.select.i401.i.i = select i1 %cmp.i399.i.i, i32 32, i32 0
  %spec.select18.i402.i.i = select i1 %cmp.i399.i.i, i32 %shr.i400.i.i, i32 %inc.i398.i.i
  %cmp1.i403.i.i = icmp sgt i32 %spec.select18.i402.i.i, 255
  %add.i404.i.i = or disjoint i32 %spec.select.i401.i.i, 16
  %shr3.i405.i.i = lshr i32 %spec.select18.i402.i.i, 8
  %size.1.i406.i.i = select i1 %cmp1.i403.i.i, i32 %add.i404.i.i, i32 %spec.select.i401.i.i
  %tmp.1.i407.i.i = select i1 %cmp1.i403.i.i, i32 %shr3.i405.i.i, i32 %spec.select18.i402.i.i
  %idxprom.i408.i.i = sext i32 %tmp.1.i407.i.i to i64
  %arrayidx.i409.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i408.i.i
  %51 = load i8, ptr %arrayidx.i409.i.i, align 1
  %conv.i410.i.i = zext i8 %51 to i32
  %add5.i411.i.i = add nuw nsw i32 %size.1.i406.i.i, %conv.i410.i.i
  %shr6.i412.i.i = lshr i32 %add5.i411.i.i, 1
  %52 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i414.i.i = zext nneg i32 %shr6.i412.i.i to i64
  %shl.i.i415.i.i = shl i64 %52, %sh_prom.i.i414.i.i
  store i64 %shl.i.i415.i.i, ptr %cur_bits.i.i, align 8
  %53 = load i32, ptr %i_left.i.i, align 8
  %sub.i.i417.i.i = sub nsw i32 %53, %shr6.i412.i.i
  store i32 %sub.i.i417.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i418.i.i = icmp slt i32 %sub.i.i417.i.i, 33
  br i1 %cmp.i.i418.i.i, label %if.then.i.i435.i.i, label %bs_write.exit.i419.i.i

if.then.i.i435.i.i:                               ; preds = %if.else.i.i
  %sh_prom6.i.i436.i.i = zext nneg i32 %sub.i.i417.i.i to i64
  %shl7.i.i437.i.i = shl i64 %shl.i.i415.i.i, %sh_prom6.i.i436.i.i
  %add.i.i.i.i438.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i437.i.i)
  %conv8.i.i439.i.i = trunc i64 %add.i.i.i.i438.i.i to i32
  %54 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i439.i.i, ptr %54, align 4
  %55 = load i32, ptr %i_left.i.i, align 8
  %add.i.i441.i.i = add nsw i32 %55, 32
  %56 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i442.i.i = getelementptr inbounds i8, ptr %56, i64 4
  store ptr %add.ptr.i.i442.i.i, ptr %p.i.i, align 8
  %.pre.i443.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i419.i.i

bs_write.exit.i419.i.i:                           ; preds = %if.then.i.i435.i.i, %if.else.i.i
  %57 = phi i32 [ %sub.i.i417.i.i, %if.else.i.i ], [ %add.i.i441.i.i, %if.then.i.i435.i.i ]
  %58 = phi i64 [ %shl.i.i415.i.i, %if.else.i.i ], [ %.pre.i443.i.i, %if.then.i.i435.i.i ]
  %add8.i420.i.i = add nuw nsw i32 %shr6.i412.i.i, 1
  %sh_prom.i20.i421.i.i = zext nneg i32 %add8.i420.i.i to i64
  %shl.i21.i422.i.i = shl i64 %58, %sh_prom.i20.i421.i.i
  %conv.i.i423.i.i = zext i32 %inc.i398.i.i to i64
  %or.i.i424.i.i = or i64 %shl.i21.i422.i.i, %conv.i.i423.i.i
  store i64 %or.i.i424.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i425.i.i = sub nsw i32 %57, %add8.i420.i.i
  store i32 %sub.i23.i425.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i426.i.i = icmp slt i32 %sub.i23.i425.i.i, 33
  br i1 %cmp.i24.i426.i.i, label %if.end.sink.split.i.i, label %if.end.i.i

if.end.sink.split.i.i:                            ; preds = %bs_write.exit.i419.i.i, %bs_write.exit.i.i.i
  %sub.i23.i425.sink.i.i = phi i32 [ %sub.i23.i.i.i, %bs_write.exit.i.i.i ], [ %sub.i23.i425.i.i, %bs_write.exit.i419.i.i ]
  %or.i.i424.sink.i.i = phi i64 [ %or.i.i.i.i, %bs_write.exit.i.i.i ], [ %or.i.i424.i.i, %bs_write.exit.i419.i.i ]
  %sh_prom6.i26.i428.i.i = zext nneg i32 %sub.i23.i425.sink.i.i to i64
  %shl7.i27.i429.i.i = shl i64 %or.i.i424.sink.i.i, %sh_prom6.i26.i428.i.i
  %add.i.i.i28.i430.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i429.i.i)
  %conv8.i29.i431.i.i = trunc i64 %add.i.i.i28.i430.i.i to i32
  %59 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i431.i.i, ptr %59, align 4
  %60 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i433.i.i = add nsw i32 %60, 32
  %61 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i434.i.i = getelementptr inbounds i8, ptr %61, i64 4
  store ptr %add.ptr.i32.i434.i.i, ptr %p.i.i, align 8
  %.pre.i = load i64, ptr %cur_bits.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.sink.split.i.i, %bs_write.exit.i419.i.i, %bs_write.exit.i.i.i
  %62 = phi i64 [ %or.i.i424.i.i, %bs_write.exit.i419.i.i ], [ %or.i.i.i.i, %bs_write.exit.i.i.i ], [ %.pre.i, %if.end.sink.split.i.i ]
  %63 = phi i32 [ %sub.i23.i425.i.i, %bs_write.exit.i419.i.i ], [ %sub.i23.i.i.i, %bs_write.exit.i.i.i ], [ %add.i31.i433.i.i, %if.end.sink.split.i.i ]
  %64 = load i32, ptr %i_type.i.i, align 16
  %inc.i445.i.i = add i32 %64, 6
  %cmp.i446.i.i = icmp sgt i32 %inc.i445.i.i, 65535
  %shr.i447.i.i = lshr i32 %inc.i445.i.i, 16
  %spec.select.i448.i.i = select i1 %cmp.i446.i.i, i32 32, i32 0
  %spec.select18.i449.i.i = select i1 %cmp.i446.i.i, i32 %shr.i447.i.i, i32 %inc.i445.i.i
  %cmp1.i450.i.i = icmp sgt i32 %spec.select18.i449.i.i, 255
  %add.i451.i.i = or disjoint i32 %spec.select.i448.i.i, 16
  %shr3.i452.i.i = lshr i32 %spec.select18.i449.i.i, 8
  %size.1.i453.i.i = select i1 %cmp1.i450.i.i, i32 %add.i451.i.i, i32 %spec.select.i448.i.i
  %tmp.1.i454.i.i = select i1 %cmp1.i450.i.i, i32 %shr3.i452.i.i, i32 %spec.select18.i449.i.i
  %idxprom.i455.i.i = sext i32 %tmp.1.i454.i.i to i64
  %arrayidx.i456.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i455.i.i
  %65 = load i8, ptr %arrayidx.i456.i.i, align 1
  %conv.i457.i.i = zext i8 %65 to i32
  %add5.i458.i.i = add nuw nsw i32 %size.1.i453.i.i, %conv.i457.i.i
  %shr6.i459.i.i = lshr i32 %add5.i458.i.i, 1
  %sh_prom.i.i461.i.i = zext nneg i32 %shr6.i459.i.i to i64
  %shl.i.i462.i.i = shl i64 %62, %sh_prom.i.i461.i.i
  store i64 %shl.i.i462.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i464.i.i = sub nsw i32 %63, %shr6.i459.i.i
  store i32 %sub.i.i464.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i465.i.i = icmp slt i32 %sub.i.i464.i.i, 33
  br i1 %cmp.i.i465.i.i, label %if.then.i.i482.i.i, label %bs_write.exit.i466.i.i

if.then.i.i482.i.i:                               ; preds = %if.end.i.i
  %sh_prom6.i.i483.i.i = zext nneg i32 %sub.i.i464.i.i to i64
  %shl7.i.i484.i.i = shl i64 %shl.i.i462.i.i, %sh_prom6.i.i483.i.i
  %add.i.i.i.i485.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i484.i.i)
  %conv8.i.i486.i.i = trunc i64 %add.i.i.i.i485.i.i to i32
  %66 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i486.i.i, ptr %66, align 4
  %67 = load i32, ptr %i_left.i.i, align 8
  %add.i.i488.i.i = add nsw i32 %67, 32
  %68 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i489.i.i = getelementptr inbounds i8, ptr %68, i64 4
  store ptr %add.ptr.i.i489.i.i, ptr %p.i.i, align 8
  %.pre.i490.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i466.i.i

bs_write.exit.i466.i.i:                           ; preds = %if.then.i.i482.i.i, %if.end.i.i
  %69 = phi i32 [ %sub.i.i464.i.i, %if.end.i.i ], [ %add.i.i488.i.i, %if.then.i.i482.i.i ]
  %70 = phi i64 [ %shl.i.i462.i.i, %if.end.i.i ], [ %.pre.i490.i.i, %if.then.i.i482.i.i ]
  %add8.i467.i.i = add nuw nsw i32 %shr6.i459.i.i, 1
  %sh_prom.i20.i468.i.i = zext nneg i32 %add8.i467.i.i to i64
  %shl.i21.i469.i.i = shl i64 %70, %sh_prom.i20.i468.i.i
  %conv.i.i470.i.i = zext i32 %inc.i445.i.i to i64
  %or.i.i471.i.i = or i64 %shl.i21.i469.i.i, %conv.i.i470.i.i
  store i64 %or.i.i471.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i472.i.i = sub nsw i32 %69, %add8.i467.i.i
  store i32 %sub.i23.i472.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i473.i.i = icmp slt i32 %sub.i23.i472.i.i, 33
  br i1 %cmp.i24.i473.i.i, label %if.then.i25.i474.i.i, label %bs_write_ue_big.exit491.i.i

if.then.i25.i474.i.i:                             ; preds = %bs_write.exit.i466.i.i
  %sh_prom6.i26.i475.i.i = zext nneg i32 %sub.i23.i472.i.i to i64
  %shl7.i27.i476.i.i = shl i64 %or.i.i471.i.i, %sh_prom6.i26.i475.i.i
  %add.i.i.i28.i477.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i476.i.i)
  %conv8.i29.i478.i.i = trunc i64 %add.i.i.i28.i477.i.i to i32
  %71 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i478.i.i, ptr %71, align 4
  %72 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i480.i.i = add nsw i32 %72, 32
  %73 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i481.i.i = getelementptr inbounds i8, ptr %73, i64 4
  store ptr %add.ptr.i32.i481.i.i, ptr %p.i.i, align 8
  %.pre.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue_big.exit491.i.i

bs_write_ue_big.exit491.i.i:                      ; preds = %if.then.i25.i474.i.i, %bs_write.exit.i466.i.i
  %74 = phi i32 [ %sub.i23.i472.i.i, %bs_write.exit.i466.i.i ], [ %add.i31.i480.i.i, %if.then.i25.i474.i.i ]
  %75 = phi i64 [ %or.i.i471.i.i, %bs_write.exit.i466.i.i ], [ %.pre.i.i, %if.then.i25.i474.i.i ]
  %76 = load i32, ptr %i_pps_id.i.i, align 4
  %inc.i492.i.i = add i32 %76, 1
  %cmp.i493.i.i = icmp sgt i32 %inc.i492.i.i, 65535
  %shr.i494.i.i = lshr i32 %inc.i492.i.i, 16
  %spec.select.i495.i.i = select i1 %cmp.i493.i.i, i32 32, i32 0
  %spec.select18.i496.i.i = select i1 %cmp.i493.i.i, i32 %shr.i494.i.i, i32 %inc.i492.i.i
  %cmp1.i497.i.i = icmp sgt i32 %spec.select18.i496.i.i, 255
  %add.i498.i.i = or disjoint i32 %spec.select.i495.i.i, 16
  %shr3.i499.i.i = lshr i32 %spec.select18.i496.i.i, 8
  %size.1.i500.i.i = select i1 %cmp1.i497.i.i, i32 %add.i498.i.i, i32 %spec.select.i495.i.i
  %tmp.1.i501.i.i = select i1 %cmp1.i497.i.i, i32 %shr3.i499.i.i, i32 %spec.select18.i496.i.i
  %idxprom.i502.i.i = sext i32 %tmp.1.i501.i.i to i64
  %arrayidx.i503.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i502.i.i
  %77 = load i8, ptr %arrayidx.i503.i.i, align 1
  %conv.i504.i.i = zext i8 %77 to i32
  %add5.i505.i.i = add nuw nsw i32 %size.1.i500.i.i, %conv.i504.i.i
  %shr6.i506.i.i = lshr i32 %add5.i505.i.i, 1
  %sh_prom.i.i508.i.i = zext nneg i32 %shr6.i506.i.i to i64
  %shl.i.i509.i.i = shl i64 %75, %sh_prom.i.i508.i.i
  store i64 %shl.i.i509.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i511.i.i = sub nsw i32 %74, %shr6.i506.i.i
  store i32 %sub.i.i511.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i512.i.i = icmp slt i32 %sub.i.i511.i.i, 33
  br i1 %cmp.i.i512.i.i, label %if.then.i.i529.i.i, label %bs_write.exit.i513.i.i

if.then.i.i529.i.i:                               ; preds = %bs_write_ue_big.exit491.i.i
  %sh_prom6.i.i530.i.i = zext nneg i32 %sub.i.i511.i.i to i64
  %shl7.i.i531.i.i = shl i64 %shl.i.i509.i.i, %sh_prom6.i.i530.i.i
  %add.i.i.i.i532.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i531.i.i)
  %conv8.i.i533.i.i = trunc i64 %add.i.i.i.i532.i.i to i32
  %78 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i533.i.i, ptr %78, align 4
  %79 = load i32, ptr %i_left.i.i, align 8
  %add.i.i535.i.i = add nsw i32 %79, 32
  %80 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i536.i.i = getelementptr inbounds i8, ptr %80, i64 4
  store ptr %add.ptr.i.i536.i.i, ptr %p.i.i, align 8
  %.pre.i537.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i513.i.i

bs_write.exit.i513.i.i:                           ; preds = %if.then.i.i529.i.i, %bs_write_ue_big.exit491.i.i
  %81 = phi i32 [ %sub.i.i511.i.i, %bs_write_ue_big.exit491.i.i ], [ %add.i.i535.i.i, %if.then.i.i529.i.i ]
  %82 = phi i64 [ %shl.i.i509.i.i, %bs_write_ue_big.exit491.i.i ], [ %.pre.i537.i.i, %if.then.i.i529.i.i ]
  %add8.i514.i.i = add nuw nsw i32 %shr6.i506.i.i, 1
  %sh_prom.i20.i515.i.i = zext nneg i32 %add8.i514.i.i to i64
  %shl.i21.i516.i.i = shl i64 %82, %sh_prom.i20.i515.i.i
  %conv.i.i517.i.i = zext i32 %inc.i492.i.i to i64
  %or.i.i518.i.i = or i64 %shl.i21.i516.i.i, %conv.i.i517.i.i
  store i64 %or.i.i518.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i519.i.i = sub nsw i32 %81, %add8.i514.i.i
  store i32 %sub.i23.i519.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i520.i.i = icmp slt i32 %sub.i23.i519.i.i, 33
  br i1 %cmp.i24.i520.i.i, label %if.then.i25.i521.i.i, label %bs_write_ue_big.exit538.i.i

if.then.i25.i521.i.i:                             ; preds = %bs_write.exit.i513.i.i
  %sh_prom6.i26.i522.i.i = zext nneg i32 %sub.i23.i519.i.i to i64
  %shl7.i27.i523.i.i = shl i64 %or.i.i518.i.i, %sh_prom6.i26.i522.i.i
  %add.i.i.i28.i524.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i523.i.i)
  %conv8.i29.i525.i.i = trunc i64 %add.i.i.i28.i524.i.i to i32
  %83 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i525.i.i, ptr %83, align 4
  %84 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i527.i.i = add nsw i32 %84, 32
  store i32 %add.i31.i527.i.i, ptr %i_left.i.i, align 8
  %85 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i528.i.i = getelementptr inbounds i8, ptr %85, i64 4
  store ptr %add.ptr.i32.i528.i.i, ptr %p.i.i, align 8
  %.pre1738.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue_big.exit538.i.i

bs_write_ue_big.exit538.i.i:                      ; preds = %if.then.i25.i521.i.i, %bs_write.exit.i513.i.i
  %86 = phi i32 [ %sub.i23.i519.i.i, %bs_write.exit.i513.i.i ], [ %add.i31.i527.i.i, %if.then.i25.i521.i.i ]
  %87 = phi i64 [ %or.i.i518.i.i, %bs_write.exit.i513.i.i ], [ %.pre1738.i.i, %if.then.i25.i521.i.i ]
  %88 = load ptr, ptr %sh.i, align 16
  %i_log2_max_frame_num.i.i = getelementptr inbounds i8, ptr %88, i64 24
  %89 = load i32, ptr %i_log2_max_frame_num.i.i, align 4
  %90 = load i32, ptr %i_frame_num.i.i, align 16
  %notmask.i.i = shl nsw i32 -1, %89
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = and i32 %90, %sub.i.i
  %sh_prom.i.i.i = zext nneg i32 %89 to i64
  %shl.i.i.i = shl i64 %87, %sh_prom.i.i.i
  %conv.i539.i.i = zext nneg i32 %and.i.i to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv.i539.i.i
  store i64 %or.i.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i.i = sub nsw i32 %86, %89
  store i32 %sub.i.i.i, ptr %i_left.i.i, align 8
  %cmp.i540.i.i = icmp slt i32 %sub.i.i.i, 33
  br i1 %cmp.i540.i.i, label %if.then.i.i.i, label %bs_write.exit.i.i

if.then.i.i.i:                                    ; preds = %bs_write_ue_big.exit538.i.i
  %sh_prom6.i.i.i = zext nneg i32 %sub.i.i.i to i64
  %shl7.i.i.i = shl i64 %or.i.i.i, %sh_prom6.i.i.i
  %add.i.i.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i)
  %conv8.i.i.i = trunc i64 %add.i.i.i.i.i to i32
  %91 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i.i, ptr %91, align 4
  %92 = load i32, ptr %i_left.i.i, align 8
  %add.i541.i.i = add nsw i32 %92, 32
  store i32 %add.i541.i.i, ptr %i_left.i.i, align 8
  %93 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %93, i64 4
  store ptr %add.ptr.i.i.i, ptr %p.i.i, align 8
  %.pre1168.i = load ptr, ptr %sh.i, align 16
  br label %bs_write.exit.i.i

bs_write.exit.i.i:                                ; preds = %if.then.i.i.i, %bs_write_ue_big.exit538.i.i
  %94 = phi ptr [ %88, %bs_write_ue_big.exit538.i.i ], [ %.pre1168.i, %if.then.i.i.i ]
  %95 = phi i32 [ %sub.i.i.i, %bs_write_ue_big.exit538.i.i ], [ %add.i541.i.i, %if.then.i.i.i ]
  %b_frame_mbs_only.i.i = getelementptr inbounds i8, ptr %94, i64 1092
  %96 = load i32, ptr %b_frame_mbs_only.i.i, align 4
  %tobool5.not.i.i = icmp eq i32 %96, 0
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %if.end11.i.i

if.then6.i.i:                                     ; preds = %bs_write.exit.i.i
  %97 = load i32, ptr %b_field_pic.i.i, align 8
  %98 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i543.i.i = shl i64 %98, 1
  %conv.i544.i.i = zext i32 %97 to i64
  %or.i545.i.i = or i64 %shl.i543.i.i, %conv.i544.i.i
  store i64 %or.i545.i.i, ptr %cur_bits.i.i, align 8
  %dec.i.i.i = add nsw i32 %95, -1
  store i32 %dec.i.i.i, ptr %i_left.i.i, align 8
  %cmp.i547.i.i = icmp eq i32 %dec.i.i.i, 32
  br i1 %cmp.i547.i.i, label %if.then.i548.i.i, label %bs_write1.exit.i.i

if.then.i548.i.i:                                 ; preds = %if.then6.i.i
  %conv6.i.i.i = trunc i64 %or.i545.i.i to i32
  %add5.i.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i.i)
  %99 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i.i.i, ptr %99, align 4
  %100 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i550.i.i = getelementptr inbounds i8, ptr %100, i64 4
  store ptr %add.ptr.i550.i.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  %.pre1169.i = load i32, ptr %b_field_pic.i.i, align 8
  br label %bs_write1.exit.i.i

bs_write1.exit.i.i:                               ; preds = %if.then.i548.i.i, %if.then6.i.i
  %101 = phi i32 [ %97, %if.then6.i.i ], [ %.pre1169.i, %if.then.i548.i.i ]
  %102 = phi i32 [ %dec.i.i.i, %if.then6.i.i ], [ 64, %if.then.i548.i.i ]
  %tobool8.not.i.i = icmp eq i32 %101, 0
  br i1 %tobool8.not.i.i, label %if.end11.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %bs_write1.exit.i.i
  %103 = load i32, ptr %b_bottom_field.i.i, align 4
  %104 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i552.i.i = shl i64 %104, 1
  %conv.i553.i.i = zext i32 %103 to i64
  %or.i554.i.i = or i64 %shl.i552.i.i, %conv.i553.i.i
  store i64 %or.i554.i.i, ptr %cur_bits.i.i, align 8
  %dec.i556.i.i = add nsw i32 %102, -1
  store i32 %dec.i556.i.i, ptr %i_left.i.i, align 8
  %cmp.i557.i.i = icmp eq i32 %dec.i556.i.i, 32
  br i1 %cmp.i557.i.i, label %if.then.i558.i.i, label %if.end11.i.i

if.then.i558.i.i:                                 ; preds = %if.then9.i.i
  %conv6.i559.i.i = trunc i64 %or.i554.i.i to i32
  %add5.i.i560.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i559.i.i)
  %105 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i560.i.i, ptr %105, align 4
  %106 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i562.i.i = getelementptr inbounds i8, ptr %106, i64 4
  store ptr %add.ptr.i562.i.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then.i558.i.i, %if.then9.i.i, %bs_write1.exit.i.i, %bs_write.exit.i.i
  %107 = phi i32 [ 64, %if.then.i558.i.i ], [ %dec.i556.i.i, %if.then9.i.i ], [ %102, %bs_write1.exit.i.i ], [ %95, %bs_write.exit.i.i ]
  %108 = load i32, ptr %i_idr_pic_id.i.i, align 16
  %cmp.i.i = icmp sgt i32 %108, -1
  br i1 %cmp.i.i, label %if.then12.i.i, label %if.end14.i.i

if.then12.i.i:                                    ; preds = %if.end11.i.i
  %inc.i564.i.i = add nuw i32 %108, 1
  %cmp.i565.i.i = icmp sgt i32 %inc.i564.i.i, 65535
  %shr.i566.i.i = lshr i32 %inc.i564.i.i, 16
  %spec.select.i567.i.i = select i1 %cmp.i565.i.i, i32 32, i32 0
  %spec.select18.i568.i.i = select i1 %cmp.i565.i.i, i32 %shr.i566.i.i, i32 %inc.i564.i.i
  %cmp1.i569.i.i = icmp sgt i32 %spec.select18.i568.i.i, 255
  %add.i570.i.i = or disjoint i32 %spec.select.i567.i.i, 16
  %shr3.i571.i.i = lshr i32 %spec.select18.i568.i.i, 8
  %size.1.i572.i.i = select i1 %cmp1.i569.i.i, i32 %add.i570.i.i, i32 %spec.select.i567.i.i
  %tmp.1.i573.i.i = select i1 %cmp1.i569.i.i, i32 %shr3.i571.i.i, i32 %spec.select18.i568.i.i
  %idxprom.i574.i.i = sext i32 %tmp.1.i573.i.i to i64
  %arrayidx.i575.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i574.i.i
  %109 = load i8, ptr %arrayidx.i575.i.i, align 1
  %conv.i576.i.i = zext i8 %109 to i32
  %add5.i577.i.i = add nuw nsw i32 %size.1.i572.i.i, %conv.i576.i.i
  %shr6.i578.i.i = lshr i32 %add5.i577.i.i, 1
  %110 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i580.i.i = zext nneg i32 %shr6.i578.i.i to i64
  %shl.i.i581.i.i = shl i64 %110, %sh_prom.i.i580.i.i
  store i64 %shl.i.i581.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i583.i.i = sub nsw i32 %107, %shr6.i578.i.i
  store i32 %sub.i.i583.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i584.i.i = icmp slt i32 %sub.i.i583.i.i, 33
  br i1 %cmp.i.i584.i.i, label %if.then.i.i601.i.i, label %bs_write.exit.i585.i.i

if.then.i.i601.i.i:                               ; preds = %if.then12.i.i
  %sh_prom6.i.i602.i.i = zext nneg i32 %sub.i.i583.i.i to i64
  %shl7.i.i603.i.i = shl i64 %shl.i.i581.i.i, %sh_prom6.i.i602.i.i
  %add.i.i.i.i604.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i603.i.i)
  %conv8.i.i605.i.i = trunc i64 %add.i.i.i.i604.i.i to i32
  %111 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i605.i.i, ptr %111, align 4
  %112 = load i32, ptr %i_left.i.i, align 8
  %add.i.i607.i.i = add nsw i32 %112, 32
  %113 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i608.i.i = getelementptr inbounds i8, ptr %113, i64 4
  store ptr %add.ptr.i.i608.i.i, ptr %p.i.i, align 8
  %.pre.i609.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i585.i.i

bs_write.exit.i585.i.i:                           ; preds = %if.then.i.i601.i.i, %if.then12.i.i
  %114 = phi i32 [ %sub.i.i583.i.i, %if.then12.i.i ], [ %add.i.i607.i.i, %if.then.i.i601.i.i ]
  %115 = phi i64 [ %shl.i.i581.i.i, %if.then12.i.i ], [ %.pre.i609.i.i, %if.then.i.i601.i.i ]
  %add8.i586.i.i = add nuw nsw i32 %shr6.i578.i.i, 1
  %sh_prom.i20.i587.i.i = zext nneg i32 %add8.i586.i.i to i64
  %shl.i21.i588.i.i = shl i64 %115, %sh_prom.i20.i587.i.i
  %conv.i.i589.i.i = zext i32 %inc.i564.i.i to i64
  %or.i.i590.i.i = or i64 %shl.i21.i588.i.i, %conv.i.i589.i.i
  store i64 %or.i.i590.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i591.i.i = sub nsw i32 %114, %add8.i586.i.i
  store i32 %sub.i23.i591.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i592.i.i = icmp slt i32 %sub.i23.i591.i.i, 33
  br i1 %cmp.i24.i592.i.i, label %if.then.i25.i593.i.i, label %if.end14.i.i

if.then.i25.i593.i.i:                             ; preds = %bs_write.exit.i585.i.i
  %sh_prom6.i26.i594.i.i = zext nneg i32 %sub.i23.i591.i.i to i64
  %shl7.i27.i595.i.i = shl i64 %or.i.i590.i.i, %sh_prom6.i26.i594.i.i
  %add.i.i.i28.i596.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i595.i.i)
  %conv8.i29.i597.i.i = trunc i64 %add.i.i.i28.i596.i.i to i32
  %116 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i597.i.i, ptr %116, align 4
  %117 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i599.i.i = add nsw i32 %117, 32
  store i32 %add.i31.i599.i.i, ptr %i_left.i.i, align 8
  %118 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i600.i.i = getelementptr inbounds i8, ptr %118, i64 4
  store ptr %add.ptr.i32.i600.i.i, ptr %p.i.i, align 8
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then.i25.i593.i.i, %bs_write.exit.i585.i.i, %if.end11.i.i
  %119 = phi i32 [ %add.i31.i599.i.i, %if.then.i25.i593.i.i ], [ %sub.i23.i591.i.i, %bs_write.exit.i585.i.i ], [ %107, %if.end11.i.i ]
  %120 = load ptr, ptr %sh.i, align 16
  %i_poc_type.i.i = getelementptr inbounds i8, ptr %120, i64 28
  %121 = load i32, ptr %i_poc_type.i.i, align 4
  switch i32 %121, label %if.end48.i.i [
    i32 0, label %if.then17.i.i
    i32 1, label %land.lhs.true33.i.i
  ]

if.then17.i.i:                                    ; preds = %if.end14.i.i
  %i_log2_max_poc_lsb.i.i = getelementptr inbounds i8, ptr %120, i64 32
  %122 = load i32, ptr %i_log2_max_poc_lsb.i.i, align 4
  %123 = load i32, ptr %i_poc.i.i, align 4
  %notmask397.i.i = shl nsw i32 -1, %122
  %sub22.i.i = xor i32 %notmask397.i.i, -1
  %and23.i.i = and i32 %123, %sub22.i.i
  %124 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i612.i.i = zext nneg i32 %122 to i64
  %shl.i613.i.i = shl i64 %124, %sh_prom.i612.i.i
  %conv.i614.i.i = zext nneg i32 %and23.i.i to i64
  %or.i615.i.i = or i64 %shl.i613.i.i, %conv.i614.i.i
  store i64 %or.i615.i.i, ptr %cur_bits.i.i, align 8
  %sub.i617.i.i = sub nsw i32 %119, %122
  store i32 %sub.i617.i.i, ptr %i_left.i.i, align 8
  %cmp.i618.i.i = icmp slt i32 %sub.i617.i.i, 33
  br i1 %cmp.i618.i.i, label %if.then.i619.i.i, label %bs_write.exit627.i.i

if.then.i619.i.i:                                 ; preds = %if.then17.i.i
  %sh_prom6.i620.i.i = zext nneg i32 %sub.i617.i.i to i64
  %shl7.i621.i.i = shl i64 %or.i615.i.i, %sh_prom6.i620.i.i
  %add.i.i.i622.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i621.i.i)
  %conv8.i623.i.i = trunc i64 %add.i.i.i622.i.i to i32
  %125 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i623.i.i, ptr %125, align 4
  %126 = load i32, ptr %i_left.i.i, align 8
  %add.i625.i.i = add nsw i32 %126, 32
  store i32 %add.i625.i.i, ptr %i_left.i.i, align 8
  %127 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i626.i.i = getelementptr inbounds i8, ptr %127, i64 4
  store ptr %add.ptr.i626.i.i, ptr %p.i.i, align 8
  br label %bs_write.exit627.i.i

bs_write.exit627.i.i:                             ; preds = %if.then.i619.i.i, %if.then17.i.i
  %128 = phi i32 [ %sub.i617.i.i, %if.then17.i.i ], [ %add.i625.i.i, %if.then.i619.i.i ]
  %129 = load ptr, ptr %pps37.i.i, align 8
  %b_pic_order.i.i = getelementptr inbounds i8, ptr %129, i64 12
  %130 = load i32, ptr %b_pic_order.i.i, align 4
  %tobool24.not.i.i = icmp eq i32 %130, 0
  br i1 %tobool24.not.i.i, label %if.end48.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %bs_write.exit627.i.i
  %131 = load i32, ptr %b_field_pic.i.i, align 8
  %tobool26.not.i.i = icmp eq i32 %131, 0
  br i1 %tobool26.not.i.i, label %if.then27.i.i, label %if.end48.i.i

if.then27.i.i:                                    ; preds = %land.lhs.true.i.i
  %132 = load i32, ptr %i_delta_poc_bottom.i.i, align 8
  %mul.i.i.i = shl nsw i32 %132, 1
  %sub.i628.i.i = sub nsw i32 1, %mul.i.i.i
  %cmp.i629.i.i = icmp sgt i32 %132, 0
  %spec.select.i630.i.i = select i1 %cmp.i629.i.i, i32 %mul.i.i.i, i32 %sub.i628.i.i
  %cmp2.i.i.i = icmp sgt i32 %spec.select.i630.i.i, 255
  %shr.i631.i.i = lshr i32 %spec.select.i630.i.i, 8
  %size.0.i.i.i = select i1 %cmp2.i.i.i, i32 16, i32 0
  %tmp.1.i632.i.i = select i1 %cmp2.i.i.i, i32 %shr.i631.i.i, i32 %spec.select.i630.i.i
  %idxprom.i633.i.i = sext i32 %tmp.1.i632.i.i to i64
  %arrayidx.i634.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i633.i.i
  %133 = load i8, ptr %arrayidx.i634.i.i, align 1
  %conv.i635.i.i = zext i8 %133 to i32
  %add.i636.i.i = add nuw nsw i32 %size.0.i.i.i, %conv.i635.i.i
  %134 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i638.i.i = zext nneg i32 %add.i636.i.i to i64
  %shl.i.i639.i.i = shl i64 %134, %sh_prom.i.i638.i.i
  %conv.i.i640.i.i = zext i32 %spec.select.i630.i.i to i64
  %or.i.i641.i.i = or i64 %shl.i.i639.i.i, %conv.i.i640.i.i
  store i64 %or.i.i641.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i643.i.i = sub nsw i32 %128, %add.i636.i.i
  store i32 %sub.i.i643.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i644.i.i = icmp slt i32 %sub.i.i643.i.i, 33
  br i1 %cmp.i.i644.i.i, label %if.end48.sink.split.i.i, label %if.end48.i.i

land.lhs.true33.i.i:                              ; preds = %if.end14.i.i
  %b_delta_pic_order_always_zero.i.i = getelementptr inbounds i8, ptr %120, i64 36
  %135 = load i32, ptr %b_delta_pic_order_always_zero.i.i, align 4
  %tobool35.not.i.i = icmp eq i32 %135, 0
  br i1 %tobool35.not.i.i, label %if.then36.i.i, label %if.end48.i.i

if.then36.i.i:                                    ; preds = %land.lhs.true33.i.i
  %136 = load i32, ptr %i_delta_poc.i.i, align 4
  %mul.i654.i.i = shl nsw i32 %136, 1
  %sub.i655.i.i = sub nsw i32 1, %mul.i654.i.i
  %cmp.i656.i.i = icmp sgt i32 %136, 0
  %spec.select.i657.i.i = select i1 %cmp.i656.i.i, i32 %mul.i654.i.i, i32 %sub.i655.i.i
  %cmp2.i658.i.i = icmp sgt i32 %spec.select.i657.i.i, 255
  %shr.i659.i.i = lshr i32 %spec.select.i657.i.i, 8
  %size.0.i660.i.i = select i1 %cmp2.i658.i.i, i32 16, i32 0
  %tmp.1.i661.i.i = select i1 %cmp2.i658.i.i, i32 %shr.i659.i.i, i32 %spec.select.i657.i.i
  %idxprom.i662.i.i = sext i32 %tmp.1.i661.i.i to i64
  %arrayidx.i663.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i662.i.i
  %137 = load i8, ptr %arrayidx.i663.i.i, align 1
  %conv.i664.i.i = zext i8 %137 to i32
  %add.i665.i.i = add nuw nsw i32 %size.0.i660.i.i, %conv.i664.i.i
  %138 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i667.i.i = zext nneg i32 %add.i665.i.i to i64
  %shl.i.i668.i.i = shl i64 %138, %sh_prom.i.i667.i.i
  %conv.i.i669.i.i = zext i32 %spec.select.i657.i.i to i64
  %or.i.i670.i.i = or i64 %shl.i.i668.i.i, %conv.i.i669.i.i
  store i64 %or.i.i670.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i672.i.i = sub nsw i32 %119, %add.i665.i.i
  store i32 %sub.i.i672.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i673.i.i = icmp slt i32 %sub.i.i672.i.i, 33
  br i1 %cmp.i.i673.i.i, label %if.then.i.i675.i.i, label %bs_write_se.exit683.i.i

if.then.i.i675.i.i:                               ; preds = %if.then36.i.i
  %sh_prom6.i.i676.i.i = zext nneg i32 %sub.i.i672.i.i to i64
  %shl7.i.i677.i.i = shl i64 %or.i.i670.i.i, %sh_prom6.i.i676.i.i
  %add.i.i.i.i678.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i677.i.i)
  %conv8.i.i679.i.i = trunc i64 %add.i.i.i.i678.i.i to i32
  %139 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i679.i.i, ptr %139, align 4
  %140 = load i32, ptr %i_left.i.i, align 8
  %add.i.i681.i.i = add nsw i32 %140, 32
  store i32 %add.i.i681.i.i, ptr %i_left.i.i, align 8
  %141 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i682.i.i = getelementptr inbounds i8, ptr %141, i64 4
  store ptr %add.ptr.i.i682.i.i, ptr %p.i.i, align 8
  br label %bs_write_se.exit683.i.i

bs_write_se.exit683.i.i:                          ; preds = %if.then.i.i675.i.i, %if.then36.i.i
  %142 = phi i32 [ %sub.i.i672.i.i, %if.then36.i.i ], [ %add.i.i681.i.i, %if.then.i.i675.i.i ]
  %143 = load ptr, ptr %pps37.i.i, align 8
  %b_pic_order38.i.i = getelementptr inbounds i8, ptr %143, i64 12
  %144 = load i32, ptr %b_pic_order38.i.i, align 4
  %tobool39.not.i.i = icmp eq i32 %144, 0
  br i1 %tobool39.not.i.i, label %if.end48.i.i, label %land.lhs.true40.i.i

land.lhs.true40.i.i:                              ; preds = %bs_write_se.exit683.i.i
  %145 = load i32, ptr %b_field_pic.i.i, align 8
  %tobool42.not.i.i = icmp eq i32 %145, 0
  br i1 %tobool42.not.i.i, label %if.then43.i.i, label %if.end48.i.i

if.then43.i.i:                                    ; preds = %land.lhs.true40.i.i
  %146 = load i32, ptr %arrayidx45.i.i, align 4
  %mul.i684.i.i = shl nsw i32 %146, 1
  %sub.i685.i.i = sub nsw i32 1, %mul.i684.i.i
  %cmp.i686.i.i = icmp sgt i32 %146, 0
  %spec.select.i687.i.i = select i1 %cmp.i686.i.i, i32 %mul.i684.i.i, i32 %sub.i685.i.i
  %cmp2.i688.i.i = icmp sgt i32 %spec.select.i687.i.i, 255
  %shr.i689.i.i = lshr i32 %spec.select.i687.i.i, 8
  %size.0.i690.i.i = select i1 %cmp2.i688.i.i, i32 16, i32 0
  %tmp.1.i691.i.i = select i1 %cmp2.i688.i.i, i32 %shr.i689.i.i, i32 %spec.select.i687.i.i
  %idxprom.i692.i.i = sext i32 %tmp.1.i691.i.i to i64
  %arrayidx.i693.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i692.i.i
  %147 = load i8, ptr %arrayidx.i693.i.i, align 1
  %conv.i694.i.i = zext i8 %147 to i32
  %add.i695.i.i = add nuw nsw i32 %size.0.i690.i.i, %conv.i694.i.i
  %148 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i697.i.i = zext nneg i32 %add.i695.i.i to i64
  %shl.i.i698.i.i = shl i64 %148, %sh_prom.i.i697.i.i
  %conv.i.i699.i.i = zext i32 %spec.select.i687.i.i to i64
  %or.i.i700.i.i = or i64 %shl.i.i698.i.i, %conv.i.i699.i.i
  store i64 %or.i.i700.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i702.i.i = sub nsw i32 %142, %add.i695.i.i
  store i32 %sub.i.i702.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i703.i.i = icmp slt i32 %sub.i.i702.i.i, 33
  br i1 %cmp.i.i703.i.i, label %if.end48.sink.split.i.i, label %if.end48.i.i

if.end48.sink.split.i.i:                          ; preds = %if.then43.i.i, %if.then27.i.i
  %sub.i.i702.sink.i.i = phi i32 [ %sub.i.i643.i.i, %if.then27.i.i ], [ %sub.i.i702.i.i, %if.then43.i.i ]
  %or.i.i700.sink.i.i = phi i64 [ %or.i.i641.i.i, %if.then27.i.i ], [ %or.i.i700.i.i, %if.then43.i.i ]
  %sh_prom6.i.i706.i.i = zext nneg i32 %sub.i.i702.sink.i.i to i64
  %shl7.i.i707.i.i = shl i64 %or.i.i700.sink.i.i, %sh_prom6.i.i706.i.i
  %add.i.i.i.i708.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i707.i.i)
  %conv8.i.i709.i.i = trunc i64 %add.i.i.i.i708.i.i to i32
  %149 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i709.i.i, ptr %149, align 4
  %150 = load i32, ptr %i_left.i.i, align 8
  %add.i.i711.i.i = add nsw i32 %150, 32
  store i32 %add.i.i711.i.i, ptr %i_left.i.i, align 8
  %151 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i712.i.i = getelementptr inbounds i8, ptr %151, i64 4
  store ptr %add.ptr.i.i712.i.i, ptr %p.i.i, align 8
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.end48.sink.split.i.i, %if.then43.i.i, %land.lhs.true40.i.i, %bs_write_se.exit683.i.i, %land.lhs.true33.i.i, %if.then27.i.i, %land.lhs.true.i.i, %bs_write.exit627.i.i, %if.end14.i.i
  %152 = phi i32 [ %sub.i.i702.i.i, %if.then43.i.i ], [ %sub.i.i643.i.i, %if.then27.i.i ], [ %119, %if.end14.i.i ], [ %119, %land.lhs.true33.i.i ], [ %142, %land.lhs.true40.i.i ], [ %142, %bs_write_se.exit683.i.i ], [ %128, %bs_write.exit627.i.i ], [ %128, %land.lhs.true.i.i ], [ %add.i.i711.i.i, %if.end48.sink.split.i.i ]
  %153 = load ptr, ptr %pps37.i.i, align 8
  %b_redundant_pic_cnt.i.i = getelementptr inbounds i8, ptr %153, i64 56
  %154 = load i32, ptr %b_redundant_pic_cnt.i.i, align 8
  %tobool50.not.i.i = icmp eq i32 %154, 0
  br i1 %tobool50.not.i.i, label %if.end52.i.i, label %if.then51.i.i

if.then51.i.i:                                    ; preds = %if.end48.i.i
  %155 = load i32, ptr %i_redundant_pic_cnt.i.i, align 4
  %inc.i714.i.i = add i32 %155, 1
  %cmp.i715.i.i = icmp sgt i32 %inc.i714.i.i, 65535
  %shr.i716.i.i = lshr i32 %inc.i714.i.i, 16
  %spec.select.i717.i.i = select i1 %cmp.i715.i.i, i32 32, i32 0
  %spec.select18.i718.i.i = select i1 %cmp.i715.i.i, i32 %shr.i716.i.i, i32 %inc.i714.i.i
  %cmp1.i719.i.i = icmp sgt i32 %spec.select18.i718.i.i, 255
  %add.i720.i.i = or disjoint i32 %spec.select.i717.i.i, 16
  %shr3.i721.i.i = lshr i32 %spec.select18.i718.i.i, 8
  %size.1.i722.i.i = select i1 %cmp1.i719.i.i, i32 %add.i720.i.i, i32 %spec.select.i717.i.i
  %tmp.1.i723.i.i = select i1 %cmp1.i719.i.i, i32 %shr3.i721.i.i, i32 %spec.select18.i718.i.i
  %idxprom.i724.i.i = sext i32 %tmp.1.i723.i.i to i64
  %arrayidx.i725.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i724.i.i
  %156 = load i8, ptr %arrayidx.i725.i.i, align 1
  %conv.i726.i.i = zext i8 %156 to i32
  %add5.i727.i.i = add nuw nsw i32 %size.1.i722.i.i, %conv.i726.i.i
  %shr6.i728.i.i = lshr i32 %add5.i727.i.i, 1
  %157 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i730.i.i = zext nneg i32 %shr6.i728.i.i to i64
  %shl.i.i731.i.i = shl i64 %157, %sh_prom.i.i730.i.i
  store i64 %shl.i.i731.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i733.i.i = sub nsw i32 %152, %shr6.i728.i.i
  store i32 %sub.i.i733.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i734.i.i = icmp slt i32 %sub.i.i733.i.i, 33
  br i1 %cmp.i.i734.i.i, label %if.then.i.i751.i.i, label %bs_write.exit.i735.i.i

if.then.i.i751.i.i:                               ; preds = %if.then51.i.i
  %sh_prom6.i.i752.i.i = zext nneg i32 %sub.i.i733.i.i to i64
  %shl7.i.i753.i.i = shl i64 %shl.i.i731.i.i, %sh_prom6.i.i752.i.i
  %add.i.i.i.i754.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i753.i.i)
  %conv8.i.i755.i.i = trunc i64 %add.i.i.i.i754.i.i to i32
  %158 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i755.i.i, ptr %158, align 4
  %159 = load i32, ptr %i_left.i.i, align 8
  %add.i.i757.i.i = add nsw i32 %159, 32
  %160 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i758.i.i = getelementptr inbounds i8, ptr %160, i64 4
  store ptr %add.ptr.i.i758.i.i, ptr %p.i.i, align 8
  %.pre.i759.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i735.i.i

bs_write.exit.i735.i.i:                           ; preds = %if.then.i.i751.i.i, %if.then51.i.i
  %161 = phi i32 [ %sub.i.i733.i.i, %if.then51.i.i ], [ %add.i.i757.i.i, %if.then.i.i751.i.i ]
  %162 = phi i64 [ %shl.i.i731.i.i, %if.then51.i.i ], [ %.pre.i759.i.i, %if.then.i.i751.i.i ]
  %add8.i736.i.i = add nuw nsw i32 %shr6.i728.i.i, 1
  %sh_prom.i20.i737.i.i = zext nneg i32 %add8.i736.i.i to i64
  %shl.i21.i738.i.i = shl i64 %162, %sh_prom.i20.i737.i.i
  %conv.i.i739.i.i = zext i32 %inc.i714.i.i to i64
  %or.i.i740.i.i = or i64 %shl.i21.i738.i.i, %conv.i.i739.i.i
  store i64 %or.i.i740.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i741.i.i = sub nsw i32 %161, %add8.i736.i.i
  store i32 %sub.i23.i741.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i742.i.i = icmp slt i32 %sub.i23.i741.i.i, 33
  br i1 %cmp.i24.i742.i.i, label %if.then.i25.i743.i.i, label %if.end52.i.i

if.then.i25.i743.i.i:                             ; preds = %bs_write.exit.i735.i.i
  %sh_prom6.i26.i744.i.i = zext nneg i32 %sub.i23.i741.i.i to i64
  %shl7.i27.i745.i.i = shl i64 %or.i.i740.i.i, %sh_prom6.i26.i744.i.i
  %add.i.i.i28.i746.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i745.i.i)
  %conv8.i29.i747.i.i = trunc i64 %add.i.i.i28.i746.i.i to i32
  %163 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i747.i.i, ptr %163, align 4
  %164 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i749.i.i = add nsw i32 %164, 32
  store i32 %add.i31.i749.i.i, ptr %i_left.i.i, align 8
  %165 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i750.i.i = getelementptr inbounds i8, ptr %165, i64 4
  store ptr %add.ptr.i32.i750.i.i, ptr %p.i.i, align 8
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then.i25.i743.i.i, %bs_write.exit.i735.i.i, %if.end48.i.i
  %166 = phi i32 [ %add.i31.i749.i.i, %if.then.i25.i743.i.i ], [ %sub.i23.i741.i.i, %bs_write.exit.i735.i.i ], [ %152, %if.end48.i.i ]
  %167 = load i32, ptr %i_type.i.i, align 16
  %cmp54.i.i = icmp eq i32 %167, 1
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i

if.then55.i.i:                                    ; preds = %if.end52.i.i
  %168 = load i32, ptr %b_direct_spatial_mv_pred.i.i, align 8
  %169 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i762.i.i = shl i64 %169, 1
  %conv.i763.i.i = zext i32 %168 to i64
  %or.i764.i.i = or i64 %shl.i762.i.i, %conv.i763.i.i
  store i64 %or.i764.i.i, ptr %cur_bits.i.i, align 8
  %dec.i766.i.i = add nsw i32 %166, -1
  store i32 %dec.i766.i.i, ptr %i_left.i.i, align 8
  %cmp.i767.i.i = icmp eq i32 %dec.i766.i.i, 32
  br i1 %cmp.i767.i.i, label %if.then.i768.i.i, label %if.then64.i.i

if.then.i768.i.i:                                 ; preds = %if.then55.i.i
  %conv6.i769.i.i = trunc i64 %or.i764.i.i to i32
  %add5.i.i770.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i769.i.i)
  %170 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i770.i.i, ptr %170, align 4
  %171 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i772.i.i = getelementptr inbounds i8, ptr %171, i64 4
  store ptr %add.ptr.i772.i.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  %.pr.i.pre.i = load i32, ptr %i_type.i.i, align 16
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then.i768.i.i, %if.end52.i.i
  %172 = phi i32 [ %166, %if.end52.i.i ], [ 64, %if.then.i768.i.i ]
  %173 = phi i32 [ %167, %if.end52.i.i ], [ %.pr.i.pre.i, %if.then.i768.i.i ]
  switch i32 %173, label %if.end75thread-pre-split.i.i [
    i32 0, label %if.then64.i.i
    i32 3, label %if.then64.i.i
    i32 1, label %if.then64.i.i
  ]

if.then64.i.i:                                    ; preds = %if.end56.i.i, %if.end56.i.i, %if.end56.i.i, %if.then55.i.i
  %174 = phi i32 [ %172, %if.end56.i.i ], [ %172, %if.end56.i.i ], [ %172, %if.end56.i.i ], [ %dec.i766.i.i, %if.then55.i.i ]
  %175 = load i32, ptr %b_num_ref_idx_override.i.i, align 4
  %176 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i775.i.i = shl i64 %176, 1
  %conv.i776.i.i = zext i32 %175 to i64
  %or.i777.i.i = or i64 %shl.i775.i.i, %conv.i776.i.i
  store i64 %or.i777.i.i, ptr %cur_bits.i.i, align 8
  %dec.i779.i.i = add nsw i32 %174, -1
  store i32 %dec.i779.i.i, ptr %i_left.i.i, align 8
  %cmp.i780.i.i = icmp eq i32 %dec.i779.i.i, 32
  br i1 %cmp.i780.i.i, label %if.then.i781.i.i, label %bs_write1.exit786.i.i

if.then.i781.i.i:                                 ; preds = %if.then64.i.i
  %conv6.i782.i.i = trunc i64 %or.i777.i.i to i32
  %add5.i.i783.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i782.i.i)
  %177 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i783.i.i, ptr %177, align 4
  %178 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i785.i.i = getelementptr inbounds i8, ptr %178, i64 4
  store ptr %add.ptr.i785.i.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  %.pre1171.i = load i32, ptr %b_num_ref_idx_override.i.i, align 4
  br label %bs_write1.exit786.i.i

bs_write1.exit786.i.i:                            ; preds = %if.then.i781.i.i, %if.then64.i.i
  %179 = phi i32 [ %175, %if.then64.i.i ], [ %.pre1171.i, %if.then.i781.i.i ]
  %180 = phi i32 [ %dec.i779.i.i, %if.then64.i.i ], [ 64, %if.then.i781.i.i ]
  %tobool66.not.i.i = icmp eq i32 %179, 0
  br i1 %tobool66.not.i.i, label %if.end75thread-pre-split.i.i, label %if.then67.i.i

if.then67.i.i:                                    ; preds = %bs_write1.exit786.i.i
  %181 = load i32, ptr %i_num_ref_idx_l0_active.i.i, align 16
  %cmp.i788.i.i = icmp sgt i32 %181, 65535
  %shr.i789.i.i = lshr i32 %181, 16
  %spec.select.i790.i.i = select i1 %cmp.i788.i.i, i32 32, i32 0
  %spec.select18.i791.i.i = select i1 %cmp.i788.i.i, i32 %shr.i789.i.i, i32 %181
  %cmp1.i792.i.i = icmp sgt i32 %spec.select18.i791.i.i, 255
  %add.i793.i.i = or disjoint i32 %spec.select.i790.i.i, 16
  %shr3.i794.i.i = lshr i32 %spec.select18.i791.i.i, 8
  %size.1.i795.i.i = select i1 %cmp1.i792.i.i, i32 %add.i793.i.i, i32 %spec.select.i790.i.i
  %tmp.1.i796.i.i = select i1 %cmp1.i792.i.i, i32 %shr3.i794.i.i, i32 %spec.select18.i791.i.i
  %idxprom.i797.i.i = sext i32 %tmp.1.i796.i.i to i64
  %arrayidx.i798.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i797.i.i
  %182 = load i8, ptr %arrayidx.i798.i.i, align 1
  %conv.i799.i.i = zext i8 %182 to i32
  %add5.i800.i.i = add nuw nsw i32 %size.1.i795.i.i, %conv.i799.i.i
  %shr6.i801.i.i = lshr i32 %add5.i800.i.i, 1
  %183 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i803.i.i = zext nneg i32 %shr6.i801.i.i to i64
  %shl.i.i804.i.i = shl i64 %183, %sh_prom.i.i803.i.i
  store i64 %shl.i.i804.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i806.i.i = sub nsw i32 %180, %shr6.i801.i.i
  store i32 %sub.i.i806.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i807.i.i = icmp slt i32 %sub.i.i806.i.i, 33
  br i1 %cmp.i.i807.i.i, label %if.then.i.i824.i.i, label %bs_write.exit.i808.i.i

if.then.i.i824.i.i:                               ; preds = %if.then67.i.i
  %sh_prom6.i.i825.i.i = zext nneg i32 %sub.i.i806.i.i to i64
  %shl7.i.i826.i.i = shl i64 %shl.i.i804.i.i, %sh_prom6.i.i825.i.i
  %add.i.i.i.i827.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i826.i.i)
  %conv8.i.i828.i.i = trunc i64 %add.i.i.i.i827.i.i to i32
  %184 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i828.i.i, ptr %184, align 4
  %185 = load i32, ptr %i_left.i.i, align 8
  %add.i.i830.i.i = add nsw i32 %185, 32
  %186 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i831.i.i = getelementptr inbounds i8, ptr %186, i64 4
  store ptr %add.ptr.i.i831.i.i, ptr %p.i.i, align 8
  %.pre.i832.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i808.i.i

bs_write.exit.i808.i.i:                           ; preds = %if.then.i.i824.i.i, %if.then67.i.i
  %187 = phi i32 [ %sub.i.i806.i.i, %if.then67.i.i ], [ %add.i.i830.i.i, %if.then.i.i824.i.i ]
  %188 = phi i64 [ %shl.i.i804.i.i, %if.then67.i.i ], [ %.pre.i832.i.i, %if.then.i.i824.i.i ]
  %add8.i809.i.i = add nuw nsw i32 %shr6.i801.i.i, 1
  %sh_prom.i20.i810.i.i = zext nneg i32 %add8.i809.i.i to i64
  %shl.i21.i811.i.i = shl i64 %188, %sh_prom.i20.i810.i.i
  %conv.i.i812.i.i = zext i32 %181 to i64
  %or.i.i813.i.i = or i64 %shl.i21.i811.i.i, %conv.i.i812.i.i
  store i64 %or.i.i813.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i814.i.i = sub nsw i32 %187, %add8.i809.i.i
  store i32 %sub.i23.i814.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i815.i.i = icmp slt i32 %sub.i23.i814.i.i, 33
  br i1 %cmp.i24.i815.i.i, label %if.then.i25.i816.i.i, label %bs_write_ue_big.exit833.i.i

if.then.i25.i816.i.i:                             ; preds = %bs_write.exit.i808.i.i
  %sh_prom6.i26.i817.i.i = zext nneg i32 %sub.i23.i814.i.i to i64
  %shl7.i27.i818.i.i = shl i64 %or.i.i813.i.i, %sh_prom6.i26.i817.i.i
  %add.i.i.i28.i819.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i818.i.i)
  %conv8.i29.i820.i.i = trunc i64 %add.i.i.i28.i819.i.i to i32
  %189 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i820.i.i, ptr %189, align 4
  %190 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i822.i.i = add nsw i32 %190, 32
  store i32 %add.i31.i822.i.i, ptr %i_left.i.i, align 8
  %191 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i823.i.i = getelementptr inbounds i8, ptr %191, i64 4
  store ptr %add.ptr.i32.i823.i.i, ptr %p.i.i, align 8
  br label %bs_write_ue_big.exit833.i.i

bs_write_ue_big.exit833.i.i:                      ; preds = %if.then.i25.i816.i.i, %bs_write.exit.i808.i.i
  %192 = phi i32 [ %sub.i23.i814.i.i, %bs_write.exit.i808.i.i ], [ %add.i31.i822.i.i, %if.then.i25.i816.i.i ]
  %193 = load i32, ptr %i_type.i.i, align 16
  %cmp70.i.i = icmp eq i32 %193, 1
  br i1 %cmp70.i.i, label %if.then71.i.i, label %if.end75.i.i

if.then71.i.i:                                    ; preds = %bs_write_ue_big.exit833.i.i
  %194 = load i32, ptr %i_num_ref_idx_l1_active.i.i, align 4
  %cmp.i835.i.i = icmp sgt i32 %194, 65535
  %shr.i836.i.i = lshr i32 %194, 16
  %spec.select.i837.i.i = select i1 %cmp.i835.i.i, i32 32, i32 0
  %spec.select18.i838.i.i = select i1 %cmp.i835.i.i, i32 %shr.i836.i.i, i32 %194
  %cmp1.i839.i.i = icmp sgt i32 %spec.select18.i838.i.i, 255
  %add.i840.i.i = or disjoint i32 %spec.select.i837.i.i, 16
  %shr3.i841.i.i = lshr i32 %spec.select18.i838.i.i, 8
  %size.1.i842.i.i = select i1 %cmp1.i839.i.i, i32 %add.i840.i.i, i32 %spec.select.i837.i.i
  %tmp.1.i843.i.i = select i1 %cmp1.i839.i.i, i32 %shr3.i841.i.i, i32 %spec.select18.i838.i.i
  %idxprom.i844.i.i = sext i32 %tmp.1.i843.i.i to i64
  %arrayidx.i845.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i844.i.i
  %195 = load i8, ptr %arrayidx.i845.i.i, align 1
  %conv.i846.i.i = zext i8 %195 to i32
  %add5.i847.i.i = add nuw nsw i32 %size.1.i842.i.i, %conv.i846.i.i
  %shr6.i848.i.i = lshr i32 %add5.i847.i.i, 1
  %196 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i850.i.i = zext nneg i32 %shr6.i848.i.i to i64
  %shl.i.i851.i.i = shl i64 %196, %sh_prom.i.i850.i.i
  store i64 %shl.i.i851.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i853.i.i = sub nsw i32 %192, %shr6.i848.i.i
  store i32 %sub.i.i853.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i854.i.i = icmp slt i32 %sub.i.i853.i.i, 33
  br i1 %cmp.i.i854.i.i, label %if.then.i.i871.i.i, label %bs_write.exit.i855.i.i

if.then.i.i871.i.i:                               ; preds = %if.then71.i.i
  %sh_prom6.i.i872.i.i = zext nneg i32 %sub.i.i853.i.i to i64
  %shl7.i.i873.i.i = shl i64 %shl.i.i851.i.i, %sh_prom6.i.i872.i.i
  %add.i.i.i.i874.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i873.i.i)
  %conv8.i.i875.i.i = trunc i64 %add.i.i.i.i874.i.i to i32
  %197 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i875.i.i, ptr %197, align 4
  %198 = load i32, ptr %i_left.i.i, align 8
  %add.i.i877.i.i = add nsw i32 %198, 32
  %199 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i878.i.i = getelementptr inbounds i8, ptr %199, i64 4
  store ptr %add.ptr.i.i878.i.i, ptr %p.i.i, align 8
  %.pre.i879.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i855.i.i

bs_write.exit.i855.i.i:                           ; preds = %if.then.i.i871.i.i, %if.then71.i.i
  %200 = phi i32 [ %sub.i.i853.i.i, %if.then71.i.i ], [ %add.i.i877.i.i, %if.then.i.i871.i.i ]
  %201 = phi i64 [ %shl.i.i851.i.i, %if.then71.i.i ], [ %.pre.i879.i.i, %if.then.i.i871.i.i ]
  %add8.i856.i.i = add nuw nsw i32 %shr6.i848.i.i, 1
  %sh_prom.i20.i857.i.i = zext nneg i32 %add8.i856.i.i to i64
  %shl.i21.i858.i.i = shl i64 %201, %sh_prom.i20.i857.i.i
  %conv.i.i859.i.i = zext i32 %194 to i64
  %or.i.i860.i.i = or i64 %shl.i21.i858.i.i, %conv.i.i859.i.i
  store i64 %or.i.i860.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i861.i.i = sub nsw i32 %200, %add8.i856.i.i
  store i32 %sub.i23.i861.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i862.i.i = icmp slt i32 %sub.i23.i861.i.i, 33
  br i1 %cmp.i24.i862.i.i, label %if.then.i25.i863.i.i, label %if.end75thread-pre-split.i.i

if.then.i25.i863.i.i:                             ; preds = %bs_write.exit.i855.i.i
  %sh_prom6.i26.i864.i.i = zext nneg i32 %sub.i23.i861.i.i to i64
  %shl7.i27.i865.i.i = shl i64 %or.i.i860.i.i, %sh_prom6.i26.i864.i.i
  %add.i.i.i28.i866.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i865.i.i)
  %conv8.i29.i867.i.i = trunc i64 %add.i.i.i28.i866.i.i to i32
  %202 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i867.i.i, ptr %202, align 4
  %203 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i869.i.i = add nsw i32 %203, 32
  store i32 %add.i31.i869.i.i, ptr %i_left.i.i, align 8
  %204 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i870.i.i = getelementptr inbounds i8, ptr %204, i64 4
  store ptr %add.ptr.i32.i870.i.i, ptr %p.i.i, align 8
  br label %if.end75thread-pre-split.i.i

if.end75thread-pre-split.i.i:                     ; preds = %if.then.i25.i863.i.i, %bs_write.exit.i855.i.i, %bs_write1.exit786.i.i, %if.end56.i.i
  %205 = phi i32 [ %180, %bs_write1.exit786.i.i ], [ %172, %if.end56.i.i ], [ %sub.i23.i861.i.i, %bs_write.exit.i855.i.i ], [ %add.i31.i869.i.i, %if.then.i25.i863.i.i ]
  %.pr1715.i.i = load i32, ptr %i_type.i.i, align 16
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.end75thread-pre-split.i.i, %bs_write_ue_big.exit833.i.i
  %206 = phi i32 [ %205, %if.end75thread-pre-split.i.i ], [ %192, %bs_write_ue_big.exit833.i.i ]
  %207 = phi i32 [ %.pr1715.i.i, %if.end75thread-pre-split.i.i ], [ %193, %bs_write_ue_big.exit833.i.i ]
  %cmp77.not.i.i = icmp eq i32 %207, 2
  br i1 %cmp77.not.i.i, label %if.end91.i.i, label %if.then78.i.i

if.then78.i.i:                                    ; preds = %if.end75.i.i
  %208 = load i32, ptr %b_ref_pic_list_reordering_l0.i.i, align 8
  %209 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i882.i.i = shl i64 %209, 1
  %conv.i883.i.i = zext i32 %208 to i64
  %or.i884.i.i = or i64 %shl.i882.i.i, %conv.i883.i.i
  store i64 %or.i884.i.i, ptr %cur_bits.i.i, align 8
  %dec.i886.i.i = add nsw i32 %206, -1
  store i32 %dec.i886.i.i, ptr %i_left.i.i, align 8
  %cmp.i887.i.i = icmp eq i32 %dec.i886.i.i, 32
  br i1 %cmp.i887.i.i, label %if.then.i888.i.i, label %bs_write1.exit893.i.i

if.then.i888.i.i:                                 ; preds = %if.then78.i.i
  %conv6.i889.i.i = trunc i64 %or.i884.i.i to i32
  %add5.i.i890.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i889.i.i)
  %210 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i890.i.i, ptr %210, align 4
  %211 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i892.i.i = getelementptr inbounds i8, ptr %211, i64 4
  store ptr %add.ptr.i892.i.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  %.pre1172.i = load i32, ptr %b_ref_pic_list_reordering_l0.i.i, align 8
  br label %bs_write1.exit893.i.i

bs_write1.exit893.i.i:                            ; preds = %if.then.i888.i.i, %if.then78.i.i
  %212 = phi i32 [ %208, %if.then78.i.i ], [ %.pre1172.i, %if.then.i888.i.i ]
  %213 = phi i32 [ %dec.i886.i.i, %if.then78.i.i ], [ 64, %if.then.i888.i.i ]
  %tobool80.not.i.i = icmp eq i32 %212, 0
  br i1 %tobool80.not.i.i, label %if.end91.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %bs_write1.exit893.i.i
  %214 = load i32, ptr %i_num_ref_idx_l0_active.i.i, align 16
  %cmp831716.i.i = icmp sgt i32 %214, 0
  br i1 %cmp831716.i.i, label %for.body.i.i, label %for.cond.cleanup.i.i

for.cond.cleanup.i.i:                             ; preds = %bs_write_ue_big.exit1015.i.i, %for.cond.preheader.i.i
  %215 = phi i32 [ %213, %for.cond.preheader.i.i ], [ %249, %bs_write_ue_big.exit1015.i.i ]
  %216 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i.i895.i.i = shl i64 %216, 2
  store i64 %shl.i.i895.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i897.i.i = add nsw i32 %215, -2
  store i32 %sub.i.i897.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i898.i.i = icmp slt i32 %215, 35
  br i1 %cmp.i.i898.i.i, label %if.then.i.i912.i.i, label %bs_write.exit.i899.i.i

if.then.i.i912.i.i:                               ; preds = %for.cond.cleanup.i.i
  %sh_prom6.i.i913.i.i = zext nneg i32 %sub.i.i897.i.i to i64
  %shl7.i.i914.i.i = shl i64 %shl.i.i895.i.i, %sh_prom6.i.i913.i.i
  %add.i.i.i.i915.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i914.i.i)
  %conv8.i.i916.i.i = trunc i64 %add.i.i.i.i915.i.i to i32
  %217 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i916.i.i, ptr %217, align 4
  %218 = load i32, ptr %i_left.i.i, align 8
  %add.i.i918.i.i = add nsw i32 %218, 32
  %219 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i919.i.i = getelementptr inbounds i8, ptr %219, i64 4
  store ptr %add.ptr.i.i919.i.i, ptr %p.i.i, align 8
  %.pre.i920.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i899.i.i

bs_write.exit.i899.i.i:                           ; preds = %if.then.i.i912.i.i, %for.cond.cleanup.i.i
  %220 = phi i32 [ %sub.i.i897.i.i, %for.cond.cleanup.i.i ], [ %add.i.i918.i.i, %if.then.i.i912.i.i ]
  %221 = phi i64 [ %shl.i.i895.i.i, %for.cond.cleanup.i.i ], [ %.pre.i920.i.i, %if.then.i.i912.i.i ]
  %shl.i21.i900.i.i = shl i64 %221, 3
  %or.i.i901.i.i = or disjoint i64 %shl.i21.i900.i.i, 4
  store i64 %or.i.i901.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i902.i.i = add nsw i32 %220, -3
  store i32 %sub.i23.i902.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i903.i.i = icmp slt i32 %220, 36
  br i1 %cmp.i24.i903.i.i, label %if.then.i25.i904.i.i, label %if.end91.i.i

if.then.i25.i904.i.i:                             ; preds = %bs_write.exit.i899.i.i
  %sh_prom6.i26.i905.i.i = zext nneg i32 %sub.i23.i902.i.i to i64
  %shl7.i27.i906.i.i = shl i64 %or.i.i901.i.i, %sh_prom6.i26.i905.i.i
  %add.i.i.i28.i907.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i906.i.i)
  %conv8.i29.i908.i.i = trunc i64 %add.i.i.i28.i907.i.i to i32
  %222 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i908.i.i, ptr %222, align 4
  %223 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i910.i.i = add nsw i32 %223, 32
  store i32 %add.i31.i910.i.i, ptr %i_left.i.i, align 8
  %224 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i911.i.i = getelementptr inbounds i8, ptr %224, i64 4
  store ptr %add.ptr.i32.i911.i.i, ptr %p.i.i, align 8
  br label %if.end91.i.i

for.body.i.i:                                     ; preds = %for.cond.preheader.i.i, %bs_write_ue_big.exit1015.i.i
  %225 = phi i32 [ %249, %bs_write_ue_big.exit1015.i.i ], [ %213, %for.cond.preheader.i.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bs_write_ue_big.exit1015.i.i ], [ 0, %for.cond.preheader.i.i ]
  %arrayidx85.i.i = getelementptr inbounds [16 x %struct.anon.6], ptr %ref_pic_list_order.i.i, i64 0, i64 %indvars.iv.i.i
  %226 = load i32, ptr %arrayidx85.i.i, align 8
  %inc.i922.i.i = add i32 %226, 1
  %cmp.i923.i.i = icmp sgt i32 %inc.i922.i.i, 65535
  %shr.i924.i.i = lshr i32 %inc.i922.i.i, 16
  %spec.select.i925.i.i = select i1 %cmp.i923.i.i, i32 32, i32 0
  %spec.select18.i926.i.i = select i1 %cmp.i923.i.i, i32 %shr.i924.i.i, i32 %inc.i922.i.i
  %cmp1.i927.i.i = icmp sgt i32 %spec.select18.i926.i.i, 255
  %add.i928.i.i = or disjoint i32 %spec.select.i925.i.i, 16
  %shr3.i929.i.i = lshr i32 %spec.select18.i926.i.i, 8
  %size.1.i930.i.i = select i1 %cmp1.i927.i.i, i32 %add.i928.i.i, i32 %spec.select.i925.i.i
  %tmp.1.i931.i.i = select i1 %cmp1.i927.i.i, i32 %shr3.i929.i.i, i32 %spec.select18.i926.i.i
  %idxprom.i932.i.i = sext i32 %tmp.1.i931.i.i to i64
  %arrayidx.i933.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i932.i.i
  %227 = load i8, ptr %arrayidx.i933.i.i, align 1
  %conv.i934.i.i = zext i8 %227 to i32
  %add5.i935.i.i = add nuw nsw i32 %size.1.i930.i.i, %conv.i934.i.i
  %shr6.i936.i.i = lshr i32 %add5.i935.i.i, 1
  %228 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i938.i.i = zext nneg i32 %shr6.i936.i.i to i64
  %shl.i.i939.i.i = shl i64 %228, %sh_prom.i.i938.i.i
  store i64 %shl.i.i939.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i941.i.i = sub nsw i32 %225, %shr6.i936.i.i
  store i32 %sub.i.i941.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i942.i.i = icmp slt i32 %sub.i.i941.i.i, 33
  br i1 %cmp.i.i942.i.i, label %if.then.i.i959.i.i, label %bs_write.exit.i943.i.i

if.then.i.i959.i.i:                               ; preds = %for.body.i.i
  %sh_prom6.i.i960.i.i = zext nneg i32 %sub.i.i941.i.i to i64
  %shl7.i.i961.i.i = shl i64 %shl.i.i939.i.i, %sh_prom6.i.i960.i.i
  %add.i.i.i.i962.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i961.i.i)
  %conv8.i.i963.i.i = trunc i64 %add.i.i.i.i962.i.i to i32
  %229 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i963.i.i, ptr %229, align 4
  %230 = load i32, ptr %i_left.i.i, align 8
  %add.i.i965.i.i = add nsw i32 %230, 32
  %231 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i966.i.i = getelementptr inbounds i8, ptr %231, i64 4
  store ptr %add.ptr.i.i966.i.i, ptr %p.i.i, align 8
  %.pre.i967.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i943.i.i

bs_write.exit.i943.i.i:                           ; preds = %if.then.i.i959.i.i, %for.body.i.i
  %232 = phi i32 [ %sub.i.i941.i.i, %for.body.i.i ], [ %add.i.i965.i.i, %if.then.i.i959.i.i ]
  %233 = phi i64 [ %shl.i.i939.i.i, %for.body.i.i ], [ %.pre.i967.i.i, %if.then.i.i959.i.i ]
  %add8.i944.i.i = add nuw nsw i32 %shr6.i936.i.i, 1
  %sh_prom.i20.i945.i.i = zext nneg i32 %add8.i944.i.i to i64
  %shl.i21.i946.i.i = shl i64 %233, %sh_prom.i20.i945.i.i
  %conv.i.i947.i.i = zext i32 %inc.i922.i.i to i64
  %or.i.i948.i.i = or i64 %shl.i21.i946.i.i, %conv.i.i947.i.i
  store i64 %or.i.i948.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i949.i.i = sub nsw i32 %232, %add8.i944.i.i
  store i32 %sub.i23.i949.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i950.i.i = icmp slt i32 %sub.i23.i949.i.i, 33
  br i1 %cmp.i24.i950.i.i, label %if.then.i25.i951.i.i, label %bs_write_ue_big.exit968.i.i

if.then.i25.i951.i.i:                             ; preds = %bs_write.exit.i943.i.i
  %sh_prom6.i26.i952.i.i = zext nneg i32 %sub.i23.i949.i.i to i64
  %shl7.i27.i953.i.i = shl i64 %or.i.i948.i.i, %sh_prom6.i26.i952.i.i
  %add.i.i.i28.i954.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i953.i.i)
  %conv8.i29.i955.i.i = trunc i64 %add.i.i.i28.i954.i.i to i32
  %234 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i955.i.i, ptr %234, align 4
  %235 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i957.i.i = add nsw i32 %235, 32
  %236 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i958.i.i = getelementptr inbounds i8, ptr %236, i64 4
  store ptr %add.ptr.i32.i958.i.i, ptr %p.i.i, align 8
  %.pre1739.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue_big.exit968.i.i

bs_write_ue_big.exit968.i.i:                      ; preds = %if.then.i25.i951.i.i, %bs_write.exit.i943.i.i
  %237 = phi i32 [ %sub.i23.i949.i.i, %bs_write.exit.i943.i.i ], [ %add.i31.i957.i.i, %if.then.i25.i951.i.i ]
  %238 = phi i64 [ %or.i.i948.i.i, %bs_write.exit.i943.i.i ], [ %.pre1739.i.i, %if.then.i25.i951.i.i ]
  %arg.i.i = getelementptr inbounds i8, ptr %arrayidx85.i.i, i64 4
  %239 = load i32, ptr %arg.i.i, align 4
  %inc.i969.i.i = add i32 %239, 1
  %cmp.i970.i.i = icmp sgt i32 %inc.i969.i.i, 65535
  %shr.i971.i.i = lshr i32 %inc.i969.i.i, 16
  %spec.select.i972.i.i = select i1 %cmp.i970.i.i, i32 32, i32 0
  %spec.select18.i973.i.i = select i1 %cmp.i970.i.i, i32 %shr.i971.i.i, i32 %inc.i969.i.i
  %cmp1.i974.i.i = icmp sgt i32 %spec.select18.i973.i.i, 255
  %add.i975.i.i = or disjoint i32 %spec.select.i972.i.i, 16
  %shr3.i976.i.i = lshr i32 %spec.select18.i973.i.i, 8
  %size.1.i977.i.i = select i1 %cmp1.i974.i.i, i32 %add.i975.i.i, i32 %spec.select.i972.i.i
  %tmp.1.i978.i.i = select i1 %cmp1.i974.i.i, i32 %shr3.i976.i.i, i32 %spec.select18.i973.i.i
  %idxprom.i979.i.i = sext i32 %tmp.1.i978.i.i to i64
  %arrayidx.i980.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i979.i.i
  %240 = load i8, ptr %arrayidx.i980.i.i, align 1
  %conv.i981.i.i = zext i8 %240 to i32
  %add5.i982.i.i = add nuw nsw i32 %size.1.i977.i.i, %conv.i981.i.i
  %shr6.i983.i.i = lshr i32 %add5.i982.i.i, 1
  %sh_prom.i.i985.i.i = zext nneg i32 %shr6.i983.i.i to i64
  %shl.i.i986.i.i = shl i64 %238, %sh_prom.i.i985.i.i
  store i64 %shl.i.i986.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i988.i.i = sub nsw i32 %237, %shr6.i983.i.i
  store i32 %sub.i.i988.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i989.i.i = icmp slt i32 %sub.i.i988.i.i, 33
  br i1 %cmp.i.i989.i.i, label %if.then.i.i1006.i.i, label %bs_write.exit.i990.i.i

if.then.i.i1006.i.i:                              ; preds = %bs_write_ue_big.exit968.i.i
  %sh_prom6.i.i1007.i.i = zext nneg i32 %sub.i.i988.i.i to i64
  %shl7.i.i1008.i.i = shl i64 %shl.i.i986.i.i, %sh_prom6.i.i1007.i.i
  %add.i.i.i.i1009.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1008.i.i)
  %conv8.i.i1010.i.i = trunc i64 %add.i.i.i.i1009.i.i to i32
  %241 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1010.i.i, ptr %241, align 4
  %242 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1012.i.i = add nsw i32 %242, 32
  %243 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1013.i.i = getelementptr inbounds i8, ptr %243, i64 4
  store ptr %add.ptr.i.i1013.i.i, ptr %p.i.i, align 8
  %.pre.i1014.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i990.i.i

bs_write.exit.i990.i.i:                           ; preds = %if.then.i.i1006.i.i, %bs_write_ue_big.exit968.i.i
  %244 = phi i32 [ %sub.i.i988.i.i, %bs_write_ue_big.exit968.i.i ], [ %add.i.i1012.i.i, %if.then.i.i1006.i.i ]
  %245 = phi i64 [ %shl.i.i986.i.i, %bs_write_ue_big.exit968.i.i ], [ %.pre.i1014.i.i, %if.then.i.i1006.i.i ]
  %add8.i991.i.i = add nuw nsw i32 %shr6.i983.i.i, 1
  %sh_prom.i20.i992.i.i = zext nneg i32 %add8.i991.i.i to i64
  %shl.i21.i993.i.i = shl i64 %245, %sh_prom.i20.i992.i.i
  %conv.i.i994.i.i = zext i32 %inc.i969.i.i to i64
  %or.i.i995.i.i = or i64 %shl.i21.i993.i.i, %conv.i.i994.i.i
  store i64 %or.i.i995.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i996.i.i = sub nsw i32 %244, %add8.i991.i.i
  store i32 %sub.i23.i996.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i997.i.i = icmp slt i32 %sub.i23.i996.i.i, 33
  br i1 %cmp.i24.i997.i.i, label %if.then.i25.i998.i.i, label %bs_write_ue_big.exit1015.i.i

if.then.i25.i998.i.i:                             ; preds = %bs_write.exit.i990.i.i
  %sh_prom6.i26.i999.i.i = zext nneg i32 %sub.i23.i996.i.i to i64
  %shl7.i27.i1000.i.i = shl i64 %or.i.i995.i.i, %sh_prom6.i26.i999.i.i
  %add.i.i.i28.i1001.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1000.i.i)
  %conv8.i29.i1002.i.i = trunc i64 %add.i.i.i28.i1001.i.i to i32
  %246 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i1002.i.i, ptr %246, align 4
  %247 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i1004.i.i = add nsw i32 %247, 32
  store i32 %add.i31.i1004.i.i, ptr %i_left.i.i, align 8
  %248 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i1005.i.i = getelementptr inbounds i8, ptr %248, i64 4
  store ptr %add.ptr.i32.i1005.i.i, ptr %p.i.i, align 8
  br label %bs_write_ue_big.exit1015.i.i

bs_write_ue_big.exit1015.i.i:                     ; preds = %if.then.i25.i998.i.i, %bs_write.exit.i990.i.i
  %249 = phi i32 [ %sub.i23.i996.i.i, %bs_write.exit.i990.i.i ], [ %add.i31.i1004.i.i, %if.then.i25.i998.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %250 = load i32, ptr %i_num_ref_idx_l0_active.i.i, align 16
  %251 = sext i32 %250 to i64
  %cmp83.i.i = icmp slt i64 %indvars.iv.next.i.i, %251
  br i1 %cmp83.i.i, label %for.body.i.i, label %for.cond.cleanup.i.i

if.end91.i.i:                                     ; preds = %if.then.i25.i904.i.i, %bs_write.exit.i899.i.i, %bs_write1.exit893.i.i, %if.end75.i.i
  %252 = phi i32 [ %add.i31.i910.i.i, %if.then.i25.i904.i.i ], [ %sub.i23.i902.i.i, %bs_write.exit.i899.i.i ], [ %213, %bs_write1.exit893.i.i ], [ %206, %if.end75.i.i ]
  %253 = load i32, ptr %i_type.i.i, align 16
  %cmp93.i.i = icmp eq i32 %253, 1
  br i1 %cmp93.i.i, label %if.then94.i.i, label %if.end118.i.i

if.then94.i.i:                                    ; preds = %if.end91.i.i
  %254 = load i32, ptr %b_ref_pic_list_reordering_l1.i.i, align 4
  %255 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i1017.i.i = shl i64 %255, 1
  %conv.i1018.i.i = zext i32 %254 to i64
  %or.i1019.i.i = or i64 %shl.i1017.i.i, %conv.i1018.i.i
  store i64 %or.i1019.i.i, ptr %cur_bits.i.i, align 8
  %dec.i1021.i.i = add nsw i32 %252, -1
  store i32 %dec.i1021.i.i, ptr %i_left.i.i, align 8
  %cmp.i1022.i.i = icmp eq i32 %dec.i1021.i.i, 32
  br i1 %cmp.i1022.i.i, label %if.then.i1023.i.i, label %bs_write1.exit1028.i.i

if.then.i1023.i.i:                                ; preds = %if.then94.i.i
  %conv6.i1024.i.i = trunc i64 %or.i1019.i.i to i32
  %add5.i.i1025.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1024.i.i)
  %256 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i1025.i.i, ptr %256, align 4
  %257 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i1027.i.i = getelementptr inbounds i8, ptr %257, i64 4
  store ptr %add.ptr.i1027.i.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  %.pre1173.i = load i32, ptr %b_ref_pic_list_reordering_l1.i.i, align 4
  br label %bs_write1.exit1028.i.i

bs_write1.exit1028.i.i:                           ; preds = %if.then.i1023.i.i, %if.then94.i.i
  %258 = phi i32 [ %254, %if.then94.i.i ], [ %.pre1173.i, %if.then.i1023.i.i ]
  %259 = phi i32 [ %dec.i1021.i.i, %if.then94.i.i ], [ 64, %if.then.i1023.i.i ]
  %tobool96.not.i.i = icmp eq i32 %258, 0
  br i1 %tobool96.not.i.i, label %if.end118.i.i, label %for.cond99.preheader.i.i

for.cond99.preheader.i.i:                         ; preds = %bs_write1.exit1028.i.i
  %260 = load i32, ptr %i_num_ref_idx_l1_active.i.i, align 4
  %cmp1011718.i.i = icmp sgt i32 %260, 0
  br i1 %cmp1011718.i.i, label %for.body103.i.i, label %for.cond.cleanup102.i.i

for.cond.cleanup102.i.i:                          ; preds = %bs_write_ue_big.exit1150.i.i, %for.cond99.preheader.i.i
  %261 = phi i32 [ %259, %for.cond99.preheader.i.i ], [ %295, %bs_write_ue_big.exit1150.i.i ]
  %262 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i.i1030.i.i = shl i64 %262, 2
  store i64 %shl.i.i1030.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1032.i.i = add nsw i32 %261, -2
  store i32 %sub.i.i1032.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1033.i.i = icmp slt i32 %261, 35
  br i1 %cmp.i.i1033.i.i, label %if.then.i.i1047.i.i, label %bs_write.exit.i1034.i.i

if.then.i.i1047.i.i:                              ; preds = %for.cond.cleanup102.i.i
  %sh_prom6.i.i1048.i.i = zext nneg i32 %sub.i.i1032.i.i to i64
  %shl7.i.i1049.i.i = shl i64 %shl.i.i1030.i.i, %sh_prom6.i.i1048.i.i
  %add.i.i.i.i1050.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1049.i.i)
  %conv8.i.i1051.i.i = trunc i64 %add.i.i.i.i1050.i.i to i32
  %263 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1051.i.i, ptr %263, align 4
  %264 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1053.i.i = add nsw i32 %264, 32
  %265 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1054.i.i = getelementptr inbounds i8, ptr %265, i64 4
  store ptr %add.ptr.i.i1054.i.i, ptr %p.i.i, align 8
  %.pre.i1055.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i1034.i.i

bs_write.exit.i1034.i.i:                          ; preds = %if.then.i.i1047.i.i, %for.cond.cleanup102.i.i
  %266 = phi i32 [ %sub.i.i1032.i.i, %for.cond.cleanup102.i.i ], [ %add.i.i1053.i.i, %if.then.i.i1047.i.i ]
  %267 = phi i64 [ %shl.i.i1030.i.i, %for.cond.cleanup102.i.i ], [ %.pre.i1055.i.i, %if.then.i.i1047.i.i ]
  %shl.i21.i1035.i.i = shl i64 %267, 3
  %or.i.i1036.i.i = or disjoint i64 %shl.i21.i1035.i.i, 4
  store i64 %or.i.i1036.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i1037.i.i = add nsw i32 %266, -3
  store i32 %sub.i23.i1037.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i1038.i.i = icmp slt i32 %266, 36
  br i1 %cmp.i24.i1038.i.i, label %if.then.i25.i1039.i.i, label %if.end118.i.i

if.then.i25.i1039.i.i:                            ; preds = %bs_write.exit.i1034.i.i
  %sh_prom6.i26.i1040.i.i = zext nneg i32 %sub.i23.i1037.i.i to i64
  %shl7.i27.i1041.i.i = shl i64 %or.i.i1036.i.i, %sh_prom6.i26.i1040.i.i
  %add.i.i.i28.i1042.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1041.i.i)
  %conv8.i29.i1043.i.i = trunc i64 %add.i.i.i28.i1042.i.i to i32
  %268 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i1043.i.i, ptr %268, align 4
  %269 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i1045.i.i = add nsw i32 %269, 32
  store i32 %add.i31.i1045.i.i, ptr %i_left.i.i, align 8
  %270 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i1046.i.i = getelementptr inbounds i8, ptr %270, i64 4
  store ptr %add.ptr.i32.i1046.i.i, ptr %p.i.i, align 8
  br label %if.end118.i.i

for.body103.i.i:                                  ; preds = %for.cond99.preheader.i.i, %bs_write_ue_big.exit1150.i.i
  %271 = phi i32 [ %295, %bs_write_ue_big.exit1150.i.i ], [ %259, %for.cond99.preheader.i.i ]
  %indvars.iv1726.i.i = phi i64 [ %indvars.iv.next1727.i.i, %bs_write_ue_big.exit1150.i.i ], [ 0, %for.cond99.preheader.i.i ]
  %arrayidx107.i.i = getelementptr inbounds [16 x %struct.anon.6], ptr %arrayidx105.i.i, i64 0, i64 %indvars.iv1726.i.i
  %272 = load i32, ptr %arrayidx107.i.i, align 8
  %inc.i1057.i.i = add i32 %272, 1
  %cmp.i1058.i.i = icmp sgt i32 %inc.i1057.i.i, 65535
  %shr.i1059.i.i = lshr i32 %inc.i1057.i.i, 16
  %spec.select.i1060.i.i = select i1 %cmp.i1058.i.i, i32 32, i32 0
  %spec.select18.i1061.i.i = select i1 %cmp.i1058.i.i, i32 %shr.i1059.i.i, i32 %inc.i1057.i.i
  %cmp1.i1062.i.i = icmp sgt i32 %spec.select18.i1061.i.i, 255
  %add.i1063.i.i = or disjoint i32 %spec.select.i1060.i.i, 16
  %shr3.i1064.i.i = lshr i32 %spec.select18.i1061.i.i, 8
  %size.1.i1065.i.i = select i1 %cmp1.i1062.i.i, i32 %add.i1063.i.i, i32 %spec.select.i1060.i.i
  %tmp.1.i1066.i.i = select i1 %cmp1.i1062.i.i, i32 %shr3.i1064.i.i, i32 %spec.select18.i1061.i.i
  %idxprom.i1067.i.i = sext i32 %tmp.1.i1066.i.i to i64
  %arrayidx.i1068.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1067.i.i
  %273 = load i8, ptr %arrayidx.i1068.i.i, align 1
  %conv.i1069.i.i = zext i8 %273 to i32
  %add5.i1070.i.i = add nuw nsw i32 %size.1.i1065.i.i, %conv.i1069.i.i
  %shr6.i1071.i.i = lshr i32 %add5.i1070.i.i, 1
  %274 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i1073.i.i = zext nneg i32 %shr6.i1071.i.i to i64
  %shl.i.i1074.i.i = shl i64 %274, %sh_prom.i.i1073.i.i
  store i64 %shl.i.i1074.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1076.i.i = sub nsw i32 %271, %shr6.i1071.i.i
  store i32 %sub.i.i1076.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1077.i.i = icmp slt i32 %sub.i.i1076.i.i, 33
  br i1 %cmp.i.i1077.i.i, label %if.then.i.i1094.i.i, label %bs_write.exit.i1078.i.i

if.then.i.i1094.i.i:                              ; preds = %for.body103.i.i
  %sh_prom6.i.i1095.i.i = zext nneg i32 %sub.i.i1076.i.i to i64
  %shl7.i.i1096.i.i = shl i64 %shl.i.i1074.i.i, %sh_prom6.i.i1095.i.i
  %add.i.i.i.i1097.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1096.i.i)
  %conv8.i.i1098.i.i = trunc i64 %add.i.i.i.i1097.i.i to i32
  %275 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1098.i.i, ptr %275, align 4
  %276 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1100.i.i = add nsw i32 %276, 32
  %277 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1101.i.i = getelementptr inbounds i8, ptr %277, i64 4
  store ptr %add.ptr.i.i1101.i.i, ptr %p.i.i, align 8
  %.pre.i1102.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i1078.i.i

bs_write.exit.i1078.i.i:                          ; preds = %if.then.i.i1094.i.i, %for.body103.i.i
  %278 = phi i32 [ %sub.i.i1076.i.i, %for.body103.i.i ], [ %add.i.i1100.i.i, %if.then.i.i1094.i.i ]
  %279 = phi i64 [ %shl.i.i1074.i.i, %for.body103.i.i ], [ %.pre.i1102.i.i, %if.then.i.i1094.i.i ]
  %add8.i1079.i.i = add nuw nsw i32 %shr6.i1071.i.i, 1
  %sh_prom.i20.i1080.i.i = zext nneg i32 %add8.i1079.i.i to i64
  %shl.i21.i1081.i.i = shl i64 %279, %sh_prom.i20.i1080.i.i
  %conv.i.i1082.i.i = zext i32 %inc.i1057.i.i to i64
  %or.i.i1083.i.i = or i64 %shl.i21.i1081.i.i, %conv.i.i1082.i.i
  store i64 %or.i.i1083.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i1084.i.i = sub nsw i32 %278, %add8.i1079.i.i
  store i32 %sub.i23.i1084.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i1085.i.i = icmp slt i32 %sub.i23.i1084.i.i, 33
  br i1 %cmp.i24.i1085.i.i, label %if.then.i25.i1086.i.i, label %bs_write_ue_big.exit1103.i.i

if.then.i25.i1086.i.i:                            ; preds = %bs_write.exit.i1078.i.i
  %sh_prom6.i26.i1087.i.i = zext nneg i32 %sub.i23.i1084.i.i to i64
  %shl7.i27.i1088.i.i = shl i64 %or.i.i1083.i.i, %sh_prom6.i26.i1087.i.i
  %add.i.i.i28.i1089.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1088.i.i)
  %conv8.i29.i1090.i.i = trunc i64 %add.i.i.i28.i1089.i.i to i32
  %280 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i1090.i.i, ptr %280, align 4
  %281 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i1092.i.i = add nsw i32 %281, 32
  %282 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i1093.i.i = getelementptr inbounds i8, ptr %282, i64 4
  store ptr %add.ptr.i32.i1093.i.i, ptr %p.i.i, align 8
  %.pre1740.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue_big.exit1103.i.i

bs_write_ue_big.exit1103.i.i:                     ; preds = %if.then.i25.i1086.i.i, %bs_write.exit.i1078.i.i
  %283 = phi i32 [ %sub.i23.i1084.i.i, %bs_write.exit.i1078.i.i ], [ %add.i31.i1092.i.i, %if.then.i25.i1086.i.i ]
  %284 = phi i64 [ %or.i.i1083.i.i, %bs_write.exit.i1078.i.i ], [ %.pre1740.i.i, %if.then.i25.i1086.i.i ]
  %arg113.i.i = getelementptr inbounds i8, ptr %arrayidx107.i.i, i64 4
  %285 = load i32, ptr %arg113.i.i, align 4
  %inc.i1104.i.i = add i32 %285, 1
  %cmp.i1105.i.i = icmp sgt i32 %inc.i1104.i.i, 65535
  %shr.i1106.i.i = lshr i32 %inc.i1104.i.i, 16
  %spec.select.i1107.i.i = select i1 %cmp.i1105.i.i, i32 32, i32 0
  %spec.select18.i1108.i.i = select i1 %cmp.i1105.i.i, i32 %shr.i1106.i.i, i32 %inc.i1104.i.i
  %cmp1.i1109.i.i = icmp sgt i32 %spec.select18.i1108.i.i, 255
  %add.i1110.i.i = or disjoint i32 %spec.select.i1107.i.i, 16
  %shr3.i1111.i.i = lshr i32 %spec.select18.i1108.i.i, 8
  %size.1.i1112.i.i = select i1 %cmp1.i1109.i.i, i32 %add.i1110.i.i, i32 %spec.select.i1107.i.i
  %tmp.1.i1113.i.i = select i1 %cmp1.i1109.i.i, i32 %shr3.i1111.i.i, i32 %spec.select18.i1108.i.i
  %idxprom.i1114.i.i = sext i32 %tmp.1.i1113.i.i to i64
  %arrayidx.i1115.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1114.i.i
  %286 = load i8, ptr %arrayidx.i1115.i.i, align 1
  %conv.i1116.i.i = zext i8 %286 to i32
  %add5.i1117.i.i = add nuw nsw i32 %size.1.i1112.i.i, %conv.i1116.i.i
  %shr6.i1118.i.i = lshr i32 %add5.i1117.i.i, 1
  %sh_prom.i.i1120.i.i = zext nneg i32 %shr6.i1118.i.i to i64
  %shl.i.i1121.i.i = shl i64 %284, %sh_prom.i.i1120.i.i
  store i64 %shl.i.i1121.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1123.i.i = sub nsw i32 %283, %shr6.i1118.i.i
  store i32 %sub.i.i1123.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1124.i.i = icmp slt i32 %sub.i.i1123.i.i, 33
  br i1 %cmp.i.i1124.i.i, label %if.then.i.i1141.i.i, label %bs_write.exit.i1125.i.i

if.then.i.i1141.i.i:                              ; preds = %bs_write_ue_big.exit1103.i.i
  %sh_prom6.i.i1142.i.i = zext nneg i32 %sub.i.i1123.i.i to i64
  %shl7.i.i1143.i.i = shl i64 %shl.i.i1121.i.i, %sh_prom6.i.i1142.i.i
  %add.i.i.i.i1144.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1143.i.i)
  %conv8.i.i1145.i.i = trunc i64 %add.i.i.i.i1144.i.i to i32
  %287 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1145.i.i, ptr %287, align 4
  %288 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1147.i.i = add nsw i32 %288, 32
  %289 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1148.i.i = getelementptr inbounds i8, ptr %289, i64 4
  store ptr %add.ptr.i.i1148.i.i, ptr %p.i.i, align 8
  %.pre.i1149.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i1125.i.i

bs_write.exit.i1125.i.i:                          ; preds = %if.then.i.i1141.i.i, %bs_write_ue_big.exit1103.i.i
  %290 = phi i32 [ %sub.i.i1123.i.i, %bs_write_ue_big.exit1103.i.i ], [ %add.i.i1147.i.i, %if.then.i.i1141.i.i ]
  %291 = phi i64 [ %shl.i.i1121.i.i, %bs_write_ue_big.exit1103.i.i ], [ %.pre.i1149.i.i, %if.then.i.i1141.i.i ]
  %add8.i1126.i.i = add nuw nsw i32 %shr6.i1118.i.i, 1
  %sh_prom.i20.i1127.i.i = zext nneg i32 %add8.i1126.i.i to i64
  %shl.i21.i1128.i.i = shl i64 %291, %sh_prom.i20.i1127.i.i
  %conv.i.i1129.i.i = zext i32 %inc.i1104.i.i to i64
  %or.i.i1130.i.i = or i64 %shl.i21.i1128.i.i, %conv.i.i1129.i.i
  store i64 %or.i.i1130.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i1131.i.i = sub nsw i32 %290, %add8.i1126.i.i
  store i32 %sub.i23.i1131.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i1132.i.i = icmp slt i32 %sub.i23.i1131.i.i, 33
  br i1 %cmp.i24.i1132.i.i, label %if.then.i25.i1133.i.i, label %bs_write_ue_big.exit1150.i.i

if.then.i25.i1133.i.i:                            ; preds = %bs_write.exit.i1125.i.i
  %sh_prom6.i26.i1134.i.i = zext nneg i32 %sub.i23.i1131.i.i to i64
  %shl7.i27.i1135.i.i = shl i64 %or.i.i1130.i.i, %sh_prom6.i26.i1134.i.i
  %add.i.i.i28.i1136.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1135.i.i)
  %conv8.i29.i1137.i.i = trunc i64 %add.i.i.i28.i1136.i.i to i32
  %292 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i1137.i.i, ptr %292, align 4
  %293 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i1139.i.i = add nsw i32 %293, 32
  store i32 %add.i31.i1139.i.i, ptr %i_left.i.i, align 8
  %294 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i1140.i.i = getelementptr inbounds i8, ptr %294, i64 4
  store ptr %add.ptr.i32.i1140.i.i, ptr %p.i.i, align 8
  br label %bs_write_ue_big.exit1150.i.i

bs_write_ue_big.exit1150.i.i:                     ; preds = %if.then.i25.i1133.i.i, %bs_write.exit.i1125.i.i
  %295 = phi i32 [ %sub.i23.i1131.i.i, %bs_write.exit.i1125.i.i ], [ %add.i31.i1139.i.i, %if.then.i25.i1133.i.i ]
  %indvars.iv.next1727.i.i = add nuw nsw i64 %indvars.iv1726.i.i, 1
  %296 = load i32, ptr %i_num_ref_idx_l1_active.i.i, align 4
  %297 = sext i32 %296 to i64
  %cmp101.i.i = icmp slt i64 %indvars.iv.next1727.i.i, %297
  br i1 %cmp101.i.i, label %for.body103.i.i, label %for.cond.cleanup102.i.i

if.end118.i.i:                                    ; preds = %if.then.i25.i1039.i.i, %bs_write.exit.i1034.i.i, %bs_write1.exit1028.i.i, %if.end91.i.i
  %298 = phi i32 [ %add.i31.i1045.i.i, %if.then.i25.i1039.i.i ], [ %sub.i23.i1037.i.i, %bs_write.exit.i1034.i.i ], [ %259, %bs_write1.exit1028.i.i ], [ %252, %if.end91.i.i ]
  %299 = load ptr, ptr %pps37.i.i, align 8
  %b_weighted_pred.i.i = getelementptr inbounds i8, ptr %299, i64 28
  %300 = load i32, ptr %b_weighted_pred.i.i, align 4
  %tobool120.not.i.i = icmp eq i32 %300, 0
  br i1 %tobool120.not.i.i, label %if.end206.i.i, label %land.lhs.true121.i.i

land.lhs.true121.i.i:                             ; preds = %if.end118.i.i
  %301 = load i32, ptr %i_type.i.i, align 16
  switch i32 %301, label %if.end206.i.i [
    i32 0, label %if.then127.i.i
    i32 3, label %if.then127.i.i
  ]

if.then127.i.i:                                   ; preds = %land.lhs.true121.i.i, %land.lhs.true121.i.i
  %302 = load i32, ptr %i_denom.i.i, align 16
  %inc.i1151.i.i = add i32 %302, 1
  %cmp.i1152.i.i = icmp sgt i32 %inc.i1151.i.i, 65535
  %shr.i1153.i.i = lshr i32 %inc.i1151.i.i, 16
  %spec.select.i1154.i.i = select i1 %cmp.i1152.i.i, i32 32, i32 0
  %spec.select18.i1155.i.i = select i1 %cmp.i1152.i.i, i32 %shr.i1153.i.i, i32 %inc.i1151.i.i
  %cmp1.i1156.i.i = icmp sgt i32 %spec.select18.i1155.i.i, 255
  %add.i1157.i.i = or disjoint i32 %spec.select.i1154.i.i, 16
  %shr3.i1158.i.i = lshr i32 %spec.select18.i1155.i.i, 8
  %size.1.i1159.i.i = select i1 %cmp1.i1156.i.i, i32 %add.i1157.i.i, i32 %spec.select.i1154.i.i
  %tmp.1.i1160.i.i = select i1 %cmp1.i1156.i.i, i32 %shr3.i1158.i.i, i32 %spec.select18.i1155.i.i
  %idxprom.i1161.i.i = sext i32 %tmp.1.i1160.i.i to i64
  %arrayidx.i1162.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1161.i.i
  %303 = load i8, ptr %arrayidx.i1162.i.i, align 1
  %conv.i1163.i.i = zext i8 %303 to i32
  %add5.i1164.i.i = add nuw nsw i32 %size.1.i1159.i.i, %conv.i1163.i.i
  %shr6.i1165.i.i = lshr i32 %add5.i1164.i.i, 1
  %304 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i1167.i.i = zext nneg i32 %shr6.i1165.i.i to i64
  %shl.i.i1168.i.i = shl i64 %304, %sh_prom.i.i1167.i.i
  store i64 %shl.i.i1168.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1170.i.i = sub nsw i32 %298, %shr6.i1165.i.i
  store i32 %sub.i.i1170.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1171.i.i = icmp slt i32 %sub.i.i1170.i.i, 33
  br i1 %cmp.i.i1171.i.i, label %if.then.i.i1188.i.i, label %bs_write.exit.i1172.i.i

if.then.i.i1188.i.i:                              ; preds = %if.then127.i.i
  %sh_prom6.i.i1189.i.i = zext nneg i32 %sub.i.i1170.i.i to i64
  %shl7.i.i1190.i.i = shl i64 %shl.i.i1168.i.i, %sh_prom6.i.i1189.i.i
  %add.i.i.i.i1191.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1190.i.i)
  %conv8.i.i1192.i.i = trunc i64 %add.i.i.i.i1191.i.i to i32
  %305 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1192.i.i, ptr %305, align 4
  %306 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1194.i.i = add nsw i32 %306, 32
  %307 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1195.i.i = getelementptr inbounds i8, ptr %307, i64 4
  store ptr %add.ptr.i.i1195.i.i, ptr %p.i.i, align 8
  %.pre.i1196.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i1172.i.i

bs_write.exit.i1172.i.i:                          ; preds = %if.then.i.i1188.i.i, %if.then127.i.i
  %308 = phi i32 [ %sub.i.i1170.i.i, %if.then127.i.i ], [ %add.i.i1194.i.i, %if.then.i.i1188.i.i ]
  %309 = phi i64 [ %shl.i.i1168.i.i, %if.then127.i.i ], [ %.pre.i1196.i.i, %if.then.i.i1188.i.i ]
  %add8.i1173.i.i = add nuw nsw i32 %shr6.i1165.i.i, 1
  %sh_prom.i20.i1174.i.i = zext nneg i32 %add8.i1173.i.i to i64
  %shl.i21.i1175.i.i = shl i64 %309, %sh_prom.i20.i1174.i.i
  %conv.i.i1176.i.i = zext i32 %inc.i1151.i.i to i64
  %or.i.i1177.i.i = or i64 %shl.i21.i1175.i.i, %conv.i.i1176.i.i
  store i64 %or.i.i1177.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i1178.i.i = sub nsw i32 %308, %add8.i1173.i.i
  store i32 %sub.i23.i1178.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i1179.i.i = icmp slt i32 %sub.i23.i1178.i.i, 33
  br i1 %cmp.i24.i1179.i.i, label %if.then.i25.i1180.i.i, label %bs_write_ue_big.exit1197.i.i

if.then.i25.i1180.i.i:                            ; preds = %bs_write.exit.i1172.i.i
  %sh_prom6.i26.i1181.i.i = zext nneg i32 %sub.i23.i1178.i.i to i64
  %shl7.i27.i1182.i.i = shl i64 %or.i.i1177.i.i, %sh_prom6.i26.i1181.i.i
  %add.i.i.i28.i1183.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1182.i.i)
  %conv8.i29.i1184.i.i = trunc i64 %add.i.i.i28.i1183.i.i to i32
  %310 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i1184.i.i, ptr %310, align 4
  %311 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i1186.i.i = add nsw i32 %311, 32
  %312 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i1187.i.i = getelementptr inbounds i8, ptr %312, i64 4
  store ptr %add.ptr.i32.i1187.i.i, ptr %p.i.i, align 8
  %.pre1741.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue_big.exit1197.i.i

bs_write_ue_big.exit1197.i.i:                     ; preds = %if.then.i25.i1180.i.i, %bs_write.exit.i1172.i.i
  %313 = phi i32 [ %sub.i23.i1178.i.i, %bs_write.exit.i1172.i.i ], [ %add.i31.i1186.i.i, %if.then.i25.i1180.i.i ]
  %314 = phi i64 [ %or.i.i1177.i.i, %bs_write.exit.i1172.i.i ], [ %.pre1741.i.i, %if.then.i25.i1180.i.i ]
  %315 = load i32, ptr %i_denom133.i.i, align 16
  %inc.i1198.i.i = add i32 %315, 1
  %cmp.i1199.i.i = icmp sgt i32 %inc.i1198.i.i, 65535
  %shr.i1200.i.i = lshr i32 %inc.i1198.i.i, 16
  %spec.select.i1201.i.i = select i1 %cmp.i1199.i.i, i32 32, i32 0
  %spec.select18.i1202.i.i = select i1 %cmp.i1199.i.i, i32 %shr.i1200.i.i, i32 %inc.i1198.i.i
  %cmp1.i1203.i.i = icmp sgt i32 %spec.select18.i1202.i.i, 255
  %add.i1204.i.i = or disjoint i32 %spec.select.i1201.i.i, 16
  %shr3.i1205.i.i = lshr i32 %spec.select18.i1202.i.i, 8
  %size.1.i1206.i.i = select i1 %cmp1.i1203.i.i, i32 %add.i1204.i.i, i32 %spec.select.i1201.i.i
  %tmp.1.i1207.i.i = select i1 %cmp1.i1203.i.i, i32 %shr3.i1205.i.i, i32 %spec.select18.i1202.i.i
  %idxprom.i1208.i.i = sext i32 %tmp.1.i1207.i.i to i64
  %arrayidx.i1209.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1208.i.i
  %316 = load i8, ptr %arrayidx.i1209.i.i, align 1
  %conv.i1210.i.i = zext i8 %316 to i32
  %add5.i1211.i.i = add nuw nsw i32 %size.1.i1206.i.i, %conv.i1210.i.i
  %shr6.i1212.i.i = lshr i32 %add5.i1211.i.i, 1
  %sh_prom.i.i1214.i.i = zext nneg i32 %shr6.i1212.i.i to i64
  %shl.i.i1215.i.i = shl i64 %314, %sh_prom.i.i1214.i.i
  store i64 %shl.i.i1215.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1217.i.i = sub nsw i32 %313, %shr6.i1212.i.i
  store i32 %sub.i.i1217.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1218.i.i = icmp slt i32 %sub.i.i1217.i.i, 33
  br i1 %cmp.i.i1218.i.i, label %if.then.i.i1235.i.i, label %bs_write.exit.i1219.i.i

if.then.i.i1235.i.i:                              ; preds = %bs_write_ue_big.exit1197.i.i
  %sh_prom6.i.i1236.i.i = zext nneg i32 %sub.i.i1217.i.i to i64
  %shl7.i.i1237.i.i = shl i64 %shl.i.i1215.i.i, %sh_prom6.i.i1236.i.i
  %add.i.i.i.i1238.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1237.i.i)
  %conv8.i.i1239.i.i = trunc i64 %add.i.i.i.i1238.i.i to i32
  %317 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1239.i.i, ptr %317, align 4
  %318 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1241.i.i = add nsw i32 %318, 32
  %319 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1242.i.i = getelementptr inbounds i8, ptr %319, i64 4
  store ptr %add.ptr.i.i1242.i.i, ptr %p.i.i, align 8
  %.pre.i1243.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i1219.i.i

bs_write.exit.i1219.i.i:                          ; preds = %if.then.i.i1235.i.i, %bs_write_ue_big.exit1197.i.i
  %320 = phi i32 [ %sub.i.i1217.i.i, %bs_write_ue_big.exit1197.i.i ], [ %add.i.i1241.i.i, %if.then.i.i1235.i.i ]
  %321 = phi i64 [ %shl.i.i1215.i.i, %bs_write_ue_big.exit1197.i.i ], [ %.pre.i1243.i.i, %if.then.i.i1235.i.i ]
  %add8.i1220.i.i = add nuw nsw i32 %shr6.i1212.i.i, 1
  %sh_prom.i20.i1221.i.i = zext nneg i32 %add8.i1220.i.i to i64
  %shl.i21.i1222.i.i = shl i64 %321, %sh_prom.i20.i1221.i.i
  %conv.i.i1223.i.i = zext i32 %inc.i1198.i.i to i64
  %or.i.i1224.i.i = or i64 %shl.i21.i1222.i.i, %conv.i.i1223.i.i
  store i64 %or.i.i1224.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i1225.i.i = sub nsw i32 %320, %add8.i1220.i.i
  store i32 %sub.i23.i1225.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i1226.i.i = icmp slt i32 %sub.i23.i1225.i.i, 33
  br i1 %cmp.i24.i1226.i.i, label %if.then.i25.i1227.i.i, label %bs_write_ue_big.exit1244.i.i

if.then.i25.i1227.i.i:                            ; preds = %bs_write.exit.i1219.i.i
  %sh_prom6.i26.i1228.i.i = zext nneg i32 %sub.i23.i1225.i.i to i64
  %shl7.i27.i1229.i.i = shl i64 %or.i.i1224.i.i, %sh_prom6.i26.i1228.i.i
  %add.i.i.i28.i1230.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1229.i.i)
  %conv8.i29.i1231.i.i = trunc i64 %add.i.i.i28.i1230.i.i to i32
  %322 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i1231.i.i, ptr %322, align 4
  %323 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i1233.i.i = add nsw i32 %323, 32
  store i32 %add.i31.i1233.i.i, ptr %i_left.i.i, align 8
  %324 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i1234.i.i = getelementptr inbounds i8, ptr %324, i64 4
  store ptr %add.ptr.i32.i1234.i.i, ptr %p.i.i, align 8
  br label %bs_write_ue_big.exit1244.i.i

bs_write_ue_big.exit1244.i.i:                     ; preds = %if.then.i25.i1227.i.i, %bs_write.exit.i1219.i.i
  %325 = phi i32 [ %sub.i23.i1225.i.i, %bs_write.exit.i1219.i.i ], [ %add.i31.i1233.i.i, %if.then.i25.i1227.i.i ]
  %326 = load i32, ptr %i_num_ref_idx_l0_active.i.i, align 16
  %cmp1371721.i.i = icmp sgt i32 %326, 0
  br i1 %cmp1371721.i.i, label %for.body139.i.i, label %if.end206.i.i

for.body139.i.i:                                  ; preds = %bs_write_ue_big.exit1244.i.i, %if.end194.i.i
  %327 = phi i32 [ %380, %if.end194.i.i ], [ %325, %bs_write_ue_big.exit1244.i.i ]
  %indvars.iv1732.i.i = phi i64 [ %indvars.iv.next1733.i.i, %if.end194.i.i ], [ 0, %bs_write_ue_big.exit1244.i.i ]
  %arrayidx142.i.i = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i.i, i64 0, i64 %indvars.iv1732.i.i
  %weightfn.i.i = getelementptr inbounds i8, ptr %arrayidx142.i.i, i64 48
  %328 = load ptr, ptr %weightfn.i.i, align 16
  %tobool144.i.i = icmp ne ptr %328, null
  %weightfn150.i.i = getelementptr inbounds i8, ptr %arrayidx142.i.i, i64 112
  %329 = load ptr, ptr %weightfn150.i.i, align 16
  %tobool151.not.i.i = icmp eq ptr %329, null
  br i1 %tobool151.not.i.i, label %lor.rhs.i.i, label %lor.end.i.i

lor.rhs.i.i:                                      ; preds = %for.body139.i.i
  %weightfn156.i.i = getelementptr inbounds i8, ptr %arrayidx142.i.i, i64 176
  %330 = load ptr, ptr %weightfn156.i.i, align 16
  %tobool157.i.i = icmp ne ptr %330, null
  br label %lor.end.i.i

lor.end.i.i:                                      ; preds = %lor.rhs.i.i, %for.body139.i.i
  %331 = phi i1 [ true, %for.body139.i.i ], [ %tobool157.i.i, %lor.rhs.i.i ]
  %332 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i1246.i.i = shl i64 %332, 1
  %conv.i1247.i.i = zext i1 %tobool144.i.i to i64
  %or.i1248.i.i = or disjoint i64 %shl.i1246.i.i, %conv.i1247.i.i
  store i64 %or.i1248.i.i, ptr %cur_bits.i.i, align 8
  %dec.i1250.i.i = add nsw i32 %327, -1
  %cmp.i1251.i.i = icmp eq i32 %dec.i1250.i.i, 32
  br i1 %cmp.i1251.i.i, label %if.then.i1252.i.i, label %bs_write1.exit1257.i.i

if.then.i1252.i.i:                                ; preds = %lor.end.i.i
  %conv6.i1253.i.i = trunc i64 %or.i1248.i.i to i32
  %add5.i.i1254.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1253.i.i)
  %333 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i1254.i.i, ptr %333, align 4
  %334 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i1256.i.i = getelementptr inbounds i8, ptr %334, i64 4
  store ptr %add.ptr.i1256.i.i, ptr %p.i.i, align 8
  %.pre1744.pre.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write1.exit1257.i.i

bs_write1.exit1257.i.i:                           ; preds = %if.then.i1252.i.i, %lor.end.i.i
  %.pre1744.i.i = phi i64 [ %or.i1248.i.i, %lor.end.i.i ], [ %.pre1744.pre.i.i, %if.then.i1252.i.i ]
  %335 = phi i32 [ %dec.i1250.i.i, %lor.end.i.i ], [ 64, %if.then.i1252.i.i ]
  br i1 %tobool144.i.i, label %if.then163.i.i, label %if.end172.i.i

if.then163.i.i:                                   ; preds = %bs_write1.exit1257.i.i
  %i_scale.i.i = getelementptr inbounds i8, ptr %arrayidx142.i.i, i64 36
  %336 = load i32, ptr %i_scale.i.i, align 4
  %mul.i1258.i.i = shl nsw i32 %336, 1
  %sub.i1259.i.i = sub nsw i32 1, %mul.i1258.i.i
  %cmp.i1260.i.i = icmp sgt i32 %336, 0
  %spec.select.i1261.i.i = select i1 %cmp.i1260.i.i, i32 %mul.i1258.i.i, i32 %sub.i1259.i.i
  %cmp2.i1262.i.i = icmp sgt i32 %spec.select.i1261.i.i, 255
  %shr.i1263.i.i = lshr i32 %spec.select.i1261.i.i, 8
  %size.0.i1264.i.i = select i1 %cmp2.i1262.i.i, i32 16, i32 0
  %tmp.1.i1265.i.i = select i1 %cmp2.i1262.i.i, i32 %shr.i1263.i.i, i32 %spec.select.i1261.i.i
  %idxprom.i1266.i.i = sext i32 %tmp.1.i1265.i.i to i64
  %arrayidx.i1267.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1266.i.i
  %337 = load i8, ptr %arrayidx.i1267.i.i, align 1
  %conv.i1268.i.i = zext i8 %337 to i32
  %add.i1269.i.i = add nuw nsw i32 %size.0.i1264.i.i, %conv.i1268.i.i
  %sh_prom.i.i1271.i.i = zext nneg i32 %add.i1269.i.i to i64
  %shl.i.i1272.i.i = shl i64 %.pre1744.i.i, %sh_prom.i.i1271.i.i
  %conv.i.i1273.i.i = zext i32 %spec.select.i1261.i.i to i64
  %or.i.i1274.i.i = or i64 %shl.i.i1272.i.i, %conv.i.i1273.i.i
  store i64 %or.i.i1274.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1276.i.i = sub nsw i32 %335, %add.i1269.i.i
  store i32 %sub.i.i1276.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1277.i.i = icmp slt i32 %sub.i.i1276.i.i, 33
  br i1 %cmp.i.i1277.i.i, label %if.then.i.i1279.i.i, label %bs_write_se.exit1287.i.i

if.then.i.i1279.i.i:                              ; preds = %if.then163.i.i
  %sh_prom6.i.i1280.i.i = zext nneg i32 %sub.i.i1276.i.i to i64
  %shl7.i.i1281.i.i = shl i64 %or.i.i1274.i.i, %sh_prom6.i.i1280.i.i
  %add.i.i.i.i1282.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1281.i.i)
  %conv8.i.i1283.i.i = trunc i64 %add.i.i.i.i1282.i.i to i32
  %338 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1283.i.i, ptr %338, align 4
  %339 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1285.i.i = add nsw i32 %339, 32
  %340 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1286.i.i = getelementptr inbounds i8, ptr %340, i64 4
  store ptr %add.ptr.i.i1286.i.i, ptr %p.i.i, align 8
  %.pre1742.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_se.exit1287.i.i

bs_write_se.exit1287.i.i:                         ; preds = %if.then.i.i1279.i.i, %if.then163.i.i
  %341 = phi i32 [ %sub.i.i1276.i.i, %if.then163.i.i ], [ %add.i.i1285.i.i, %if.then.i.i1279.i.i ]
  %342 = phi i64 [ %or.i.i1274.i.i, %if.then163.i.i ], [ %.pre1742.i.i, %if.then.i.i1279.i.i ]
  %i_offset.i.i = getelementptr inbounds i8, ptr %arrayidx142.i.i, i64 40
  %343 = load i32, ptr %i_offset.i.i, align 8
  %mul.i1288.i.i = shl nsw i32 %343, 1
  %sub.i1289.i.i = sub nsw i32 1, %mul.i1288.i.i
  %cmp.i1290.i.i = icmp sgt i32 %343, 0
  %spec.select.i1291.i.i = select i1 %cmp.i1290.i.i, i32 %mul.i1288.i.i, i32 %sub.i1289.i.i
  %cmp2.i1292.i.i = icmp sgt i32 %spec.select.i1291.i.i, 255
  %shr.i1293.i.i = lshr i32 %spec.select.i1291.i.i, 8
  %size.0.i1294.i.i = select i1 %cmp2.i1292.i.i, i32 16, i32 0
  %tmp.1.i1295.i.i = select i1 %cmp2.i1292.i.i, i32 %shr.i1293.i.i, i32 %spec.select.i1291.i.i
  %idxprom.i1296.i.i = sext i32 %tmp.1.i1295.i.i to i64
  %arrayidx.i1297.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1296.i.i
  %344 = load i8, ptr %arrayidx.i1297.i.i, align 1
  %conv.i1298.i.i = zext i8 %344 to i32
  %add.i1299.i.i = add nuw nsw i32 %size.0.i1294.i.i, %conv.i1298.i.i
  %sh_prom.i.i1301.i.i = zext nneg i32 %add.i1299.i.i to i64
  %shl.i.i1302.i.i = shl i64 %342, %sh_prom.i.i1301.i.i
  %conv.i.i1303.i.i = zext i32 %spec.select.i1291.i.i to i64
  %or.i.i1304.i.i = or i64 %shl.i.i1302.i.i, %conv.i.i1303.i.i
  store i64 %or.i.i1304.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1306.i.i = sub nsw i32 %341, %add.i1299.i.i
  store i32 %sub.i.i1306.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1307.i.i = icmp slt i32 %sub.i.i1306.i.i, 33
  br i1 %cmp.i.i1307.i.i, label %if.then.i.i1309.i.i, label %if.end172.i.i

if.then.i.i1309.i.i:                              ; preds = %bs_write_se.exit1287.i.i
  %sh_prom6.i.i1310.i.i = zext nneg i32 %sub.i.i1306.i.i to i64
  %shl7.i.i1311.i.i = shl i64 %or.i.i1304.i.i, %sh_prom6.i.i1310.i.i
  %add.i.i.i.i1312.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1311.i.i)
  %conv8.i.i1313.i.i = trunc i64 %add.i.i.i.i1312.i.i to i32
  %345 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1313.i.i, ptr %345, align 4
  %346 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1315.i.i = add nsw i32 %346, 32
  %347 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1316.i.i = getelementptr inbounds i8, ptr %347, i64 4
  store ptr %add.ptr.i.i1316.i.i, ptr %p.i.i, align 8
  %.pre1743.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %if.end172.i.i

if.end172.i.i:                                    ; preds = %if.then.i.i1309.i.i, %bs_write_se.exit1287.i.i, %bs_write1.exit1257.i.i
  %348 = phi i32 [ %add.i.i1315.i.i, %if.then.i.i1309.i.i ], [ %sub.i.i1306.i.i, %bs_write_se.exit1287.i.i ], [ %335, %bs_write1.exit1257.i.i ]
  %349 = phi i64 [ %.pre1743.i.i, %if.then.i.i1309.i.i ], [ %or.i.i1304.i.i, %bs_write_se.exit1287.i.i ], [ %.pre1744.i.i, %bs_write1.exit1257.i.i ]
  %shl.i1319.i.i = shl i64 %349, 1
  %conv.i1320.i.i = zext i1 %331 to i64
  %or.i1321.i.i = or disjoint i64 %shl.i1319.i.i, %conv.i1320.i.i
  store i64 %or.i1321.i.i, ptr %cur_bits.i.i, align 8
  %dec.i1323.i.i = add nsw i32 %348, -1
  store i32 %dec.i1323.i.i, ptr %i_left.i.i, align 8
  %cmp.i1324.i.i = icmp eq i32 %dec.i1323.i.i, 32
  br i1 %cmp.i1324.i.i, label %if.then.i1325.i.i, label %bs_write1.exit1330.i.i

if.then.i1325.i.i:                                ; preds = %if.end172.i.i
  %conv6.i1326.i.i = trunc i64 %or.i1321.i.i to i32
  %add5.i.i1327.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1326.i.i)
  %350 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i1327.i.i, ptr %350, align 4
  %351 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i1329.i.i = getelementptr inbounds i8, ptr %351, i64 4
  store ptr %add.ptr.i1329.i.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  br label %bs_write1.exit1330.i.i

bs_write1.exit1330.i.i:                           ; preds = %if.then.i1325.i.i, %if.end172.i.i
  %352 = phi i32 [ %dec.i1323.i.i, %if.end172.i.i ], [ 64, %if.then.i1325.i.i ]
  br i1 %331, label %for.body178.preheader.i.i, label %if.end194.i.i

for.body178.preheader.i.i:                        ; preds = %bs_write1.exit1330.i.i
  %arrayidx183.i.i = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i.i, i64 0, i64 %indvars.iv1732.i.i, i64 1
  %i_scale184.i.i = getelementptr inbounds i8, ptr %arrayidx183.i.i, i64 36
  %353 = load i32, ptr %i_scale184.i.i, align 4
  %mul.i1331.i.i = shl nsw i32 %353, 1
  %sub.i1332.i.i = sub nsw i32 1, %mul.i1331.i.i
  %cmp.i1333.i.i = icmp sgt i32 %353, 0
  %spec.select.i1334.i.i = select i1 %cmp.i1333.i.i, i32 %mul.i1331.i.i, i32 %sub.i1332.i.i
  %cmp2.i1335.i.i = icmp sgt i32 %spec.select.i1334.i.i, 255
  %shr.i1336.i.i = lshr i32 %spec.select.i1334.i.i, 8
  %size.0.i1337.i.i = select i1 %cmp2.i1335.i.i, i32 16, i32 0
  %tmp.1.i1338.i.i = select i1 %cmp2.i1335.i.i, i32 %shr.i1336.i.i, i32 %spec.select.i1334.i.i
  %idxprom.i1339.i.i = sext i32 %tmp.1.i1338.i.i to i64
  %arrayidx.i1340.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1339.i.i
  %354 = load i8, ptr %arrayidx.i1340.i.i, align 1
  %conv.i1341.i.i = zext i8 %354 to i32
  %add.i1342.i.i = add nuw nsw i32 %size.0.i1337.i.i, %conv.i1341.i.i
  %355 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i1344.i.i = zext nneg i32 %add.i1342.i.i to i64
  %shl.i.i1345.i.i = shl i64 %355, %sh_prom.i.i1344.i.i
  %conv.i.i1346.i.i = zext i32 %spec.select.i1334.i.i to i64
  %or.i.i1347.i.i = or i64 %shl.i.i1345.i.i, %conv.i.i1346.i.i
  store i64 %or.i.i1347.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1349.i.i = sub nsw i32 %352, %add.i1342.i.i
  store i32 %sub.i.i1349.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1350.i.i = icmp slt i32 %sub.i.i1349.i.i, 33
  br i1 %cmp.i.i1350.i.i, label %if.then.i.i1352.i.i, label %bs_write_se.exit1360.i.i

if.then.i.i1352.i.i:                              ; preds = %for.body178.preheader.i.i
  %sh_prom6.i.i1353.i.i = zext nneg i32 %sub.i.i1349.i.i to i64
  %shl7.i.i1354.i.i = shl i64 %or.i.i1347.i.i, %sh_prom6.i.i1353.i.i
  %add.i.i.i.i1355.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1354.i.i)
  %conv8.i.i1356.i.i = trunc i64 %add.i.i.i.i1355.i.i to i32
  %356 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1356.i.i, ptr %356, align 4
  %357 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1358.i.i = add nsw i32 %357, 32
  %358 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1359.i.i = getelementptr inbounds i8, ptr %358, i64 4
  store ptr %add.ptr.i.i1359.i.i, ptr %p.i.i, align 8
  %.pre1745.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_se.exit1360.i.i

bs_write_se.exit1360.i.i:                         ; preds = %if.then.i.i1352.i.i, %for.body178.preheader.i.i
  %359 = phi i32 [ %sub.i.i1349.i.i, %for.body178.preheader.i.i ], [ %add.i.i1358.i.i, %if.then.i.i1352.i.i ]
  %360 = phi i64 [ %or.i.i1347.i.i, %for.body178.preheader.i.i ], [ %.pre1745.i.i, %if.then.i.i1352.i.i ]
  %i_offset190.i.i = getelementptr inbounds i8, ptr %arrayidx183.i.i, i64 40
  %361 = load i32, ptr %i_offset190.i.i, align 8
  %mul.i1361.i.i = shl nsw i32 %361, 1
  %sub.i1362.i.i = sub nsw i32 1, %mul.i1361.i.i
  %cmp.i1363.i.i = icmp sgt i32 %361, 0
  %spec.select.i1364.i.i = select i1 %cmp.i1363.i.i, i32 %mul.i1361.i.i, i32 %sub.i1362.i.i
  %cmp2.i1365.i.i = icmp sgt i32 %spec.select.i1364.i.i, 255
  %shr.i1366.i.i = lshr i32 %spec.select.i1364.i.i, 8
  %size.0.i1367.i.i = select i1 %cmp2.i1365.i.i, i32 16, i32 0
  %tmp.1.i1368.i.i = select i1 %cmp2.i1365.i.i, i32 %shr.i1366.i.i, i32 %spec.select.i1364.i.i
  %idxprom.i1369.i.i = sext i32 %tmp.1.i1368.i.i to i64
  %arrayidx.i1370.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1369.i.i
  %362 = load i8, ptr %arrayidx.i1370.i.i, align 1
  %conv.i1371.i.i = zext i8 %362 to i32
  %add.i1372.i.i = add nuw nsw i32 %size.0.i1367.i.i, %conv.i1371.i.i
  %sh_prom.i.i1374.i.i = zext nneg i32 %add.i1372.i.i to i64
  %shl.i.i1375.i.i = shl i64 %360, %sh_prom.i.i1374.i.i
  %conv.i.i1376.i.i = zext i32 %spec.select.i1364.i.i to i64
  %or.i.i1377.i.i = or i64 %shl.i.i1375.i.i, %conv.i.i1376.i.i
  store i64 %or.i.i1377.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1379.i.i = sub nsw i32 %359, %add.i1372.i.i
  store i32 %sub.i.i1379.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1380.i.i = icmp slt i32 %sub.i.i1379.i.i, 33
  br i1 %cmp.i.i1380.i.i, label %if.then.i.i1382.i.i, label %bs_write_se.exit1390.i.i

if.then.i.i1382.i.i:                              ; preds = %bs_write_se.exit1360.i.i
  %sh_prom6.i.i1383.i.i = zext nneg i32 %sub.i.i1379.i.i to i64
  %shl7.i.i1384.i.i = shl i64 %or.i.i1377.i.i, %sh_prom6.i.i1383.i.i
  %add.i.i.i.i1385.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1384.i.i)
  %conv8.i.i1386.i.i = trunc i64 %add.i.i.i.i1385.i.i to i32
  %363 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1386.i.i, ptr %363, align 4
  %364 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1388.i.i = add nsw i32 %364, 32
  %365 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1389.i.i = getelementptr inbounds i8, ptr %365, i64 4
  store ptr %add.ptr.i.i1389.i.i, ptr %p.i.i, align 8
  %.pre1746.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_se.exit1390.i.i

bs_write_se.exit1390.i.i:                         ; preds = %if.then.i.i1382.i.i, %bs_write_se.exit1360.i.i
  %366 = phi i32 [ %sub.i.i1379.i.i, %bs_write_se.exit1360.i.i ], [ %add.i.i1388.i.i, %if.then.i.i1382.i.i ]
  %367 = phi i64 [ %or.i.i1377.i.i, %bs_write_se.exit1360.i.i ], [ %.pre1746.i.i, %if.then.i.i1382.i.i ]
  %arrayidx183.1.i.i = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight.i.i, i64 0, i64 %indvars.iv1732.i.i, i64 2
  %i_scale184.1.i.i = getelementptr inbounds i8, ptr %arrayidx183.1.i.i, i64 36
  %368 = load i32, ptr %i_scale184.1.i.i, align 4
  %mul.i1331.1.i.i = shl nsw i32 %368, 1
  %sub.i1332.1.i.i = sub nsw i32 1, %mul.i1331.1.i.i
  %cmp.i1333.1.i.i = icmp sgt i32 %368, 0
  %spec.select.i1334.1.i.i = select i1 %cmp.i1333.1.i.i, i32 %mul.i1331.1.i.i, i32 %sub.i1332.1.i.i
  %cmp2.i1335.1.i.i = icmp sgt i32 %spec.select.i1334.1.i.i, 255
  %shr.i1336.1.i.i = lshr i32 %spec.select.i1334.1.i.i, 8
  %size.0.i1337.1.i.i = select i1 %cmp2.i1335.1.i.i, i32 16, i32 0
  %tmp.1.i1338.1.i.i = select i1 %cmp2.i1335.1.i.i, i32 %shr.i1336.1.i.i, i32 %spec.select.i1334.1.i.i
  %idxprom.i1339.1.i.i = sext i32 %tmp.1.i1338.1.i.i to i64
  %arrayidx.i1340.1.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1339.1.i.i
  %369 = load i8, ptr %arrayidx.i1340.1.i.i, align 1
  %conv.i1341.1.i.i = zext i8 %369 to i32
  %add.i1342.1.i.i = add nuw nsw i32 %size.0.i1337.1.i.i, %conv.i1341.1.i.i
  %sh_prom.i.i1344.1.i.i = zext nneg i32 %add.i1342.1.i.i to i64
  %shl.i.i1345.1.i.i = shl i64 %367, %sh_prom.i.i1344.1.i.i
  %conv.i.i1346.1.i.i = zext i32 %spec.select.i1334.1.i.i to i64
  %or.i.i1347.1.i.i = or i64 %shl.i.i1345.1.i.i, %conv.i.i1346.1.i.i
  store i64 %or.i.i1347.1.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1349.1.i.i = sub nsw i32 %366, %add.i1342.1.i.i
  store i32 %sub.i.i1349.1.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1350.1.i.i = icmp slt i32 %sub.i.i1349.1.i.i, 33
  br i1 %cmp.i.i1350.1.i.i, label %if.then.i.i1352.1.i.i, label %bs_write_se.exit1360.1.i.i

if.then.i.i1352.1.i.i:                            ; preds = %bs_write_se.exit1390.i.i
  %sh_prom6.i.i1353.1.i.i = zext nneg i32 %sub.i.i1349.1.i.i to i64
  %shl7.i.i1354.1.i.i = shl i64 %or.i.i1347.1.i.i, %sh_prom6.i.i1353.1.i.i
  %add.i.i.i.i1355.1.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1354.1.i.i)
  %conv8.i.i1356.1.i.i = trunc i64 %add.i.i.i.i1355.1.i.i to i32
  %370 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1356.1.i.i, ptr %370, align 4
  %371 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1358.1.i.i = add nsw i32 %371, 32
  %372 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1359.1.i.i = getelementptr inbounds i8, ptr %372, i64 4
  store ptr %add.ptr.i.i1359.1.i.i, ptr %p.i.i, align 8
  %.pre1747.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_se.exit1360.1.i.i

bs_write_se.exit1360.1.i.i:                       ; preds = %if.then.i.i1352.1.i.i, %bs_write_se.exit1390.i.i
  %373 = phi i32 [ %add.i.i1358.1.i.i, %if.then.i.i1352.1.i.i ], [ %sub.i.i1349.1.i.i, %bs_write_se.exit1390.i.i ]
  %374 = phi i64 [ %.pre1747.i.i, %if.then.i.i1352.1.i.i ], [ %or.i.i1347.1.i.i, %bs_write_se.exit1390.i.i ]
  %i_offset190.1.i.i = getelementptr inbounds i8, ptr %arrayidx183.1.i.i, i64 40
  %375 = load i32, ptr %i_offset190.1.i.i, align 8
  %mul.i1361.1.i.i = shl nsw i32 %375, 1
  %sub.i1362.1.i.i = sub nsw i32 1, %mul.i1361.1.i.i
  %cmp.i1363.1.i.i = icmp sgt i32 %375, 0
  %spec.select.i1364.1.i.i = select i1 %cmp.i1363.1.i.i, i32 %mul.i1361.1.i.i, i32 %sub.i1362.1.i.i
  %cmp2.i1365.1.i.i = icmp sgt i32 %spec.select.i1364.1.i.i, 255
  %shr.i1366.1.i.i = lshr i32 %spec.select.i1364.1.i.i, 8
  %size.0.i1367.1.i.i = select i1 %cmp2.i1365.1.i.i, i32 16, i32 0
  %tmp.1.i1368.1.i.i = select i1 %cmp2.i1365.1.i.i, i32 %shr.i1366.1.i.i, i32 %spec.select.i1364.1.i.i
  %idxprom.i1369.1.i.i = sext i32 %tmp.1.i1368.1.i.i to i64
  %arrayidx.i1370.1.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1369.1.i.i
  %376 = load i8, ptr %arrayidx.i1370.1.i.i, align 1
  %conv.i1371.1.i.i = zext i8 %376 to i32
  %add.i1372.1.i.i = add nuw nsw i32 %size.0.i1367.1.i.i, %conv.i1371.1.i.i
  %sh_prom.i.i1374.1.i.i = zext nneg i32 %add.i1372.1.i.i to i64
  %shl.i.i1375.1.i.i = shl i64 %374, %sh_prom.i.i1374.1.i.i
  %conv.i.i1376.1.i.i = zext i32 %spec.select.i1364.1.i.i to i64
  %or.i.i1377.1.i.i = or i64 %shl.i.i1375.1.i.i, %conv.i.i1376.1.i.i
  store i64 %or.i.i1377.1.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1379.1.i.i = sub nsw i32 %373, %add.i1372.1.i.i
  store i32 %sub.i.i1379.1.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1380.1.i.i = icmp slt i32 %sub.i.i1379.1.i.i, 33
  br i1 %cmp.i.i1380.1.i.i, label %if.then.i.i1382.1.i.i, label %if.end194.i.i

if.then.i.i1382.1.i.i:                            ; preds = %bs_write_se.exit1360.1.i.i
  %sh_prom6.i.i1383.1.i.i = zext nneg i32 %sub.i.i1379.1.i.i to i64
  %shl7.i.i1384.1.i.i = shl i64 %or.i.i1377.1.i.i, %sh_prom6.i.i1383.1.i.i
  %add.i.i.i.i1385.1.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1384.1.i.i)
  %conv8.i.i1386.1.i.i = trunc i64 %add.i.i.i.i1385.1.i.i to i32
  %377 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1386.1.i.i, ptr %377, align 4
  %378 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1388.1.i.i = add nsw i32 %378, 32
  store i32 %add.i.i1388.1.i.i, ptr %i_left.i.i, align 8
  %379 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1389.1.i.i = getelementptr inbounds i8, ptr %379, i64 4
  store ptr %add.ptr.i.i1389.1.i.i, ptr %p.i.i, align 8
  br label %if.end194.i.i

if.end194.i.i:                                    ; preds = %if.then.i.i1382.1.i.i, %bs_write_se.exit1360.1.i.i, %bs_write1.exit1330.i.i
  %380 = phi i32 [ %352, %bs_write1.exit1330.i.i ], [ %add.i.i1388.1.i.i, %if.then.i.i1382.1.i.i ], [ %sub.i.i1379.1.i.i, %bs_write_se.exit1360.1.i.i ]
  %indvars.iv.next1733.i.i = add nuw nsw i64 %indvars.iv1732.i.i, 1
  %381 = load i32, ptr %i_num_ref_idx_l0_active.i.i, align 16
  %382 = sext i32 %381 to i64
  %cmp137.i.i = icmp slt i64 %indvars.iv.next1733.i.i, %382
  br i1 %cmp137.i.i, label %for.body139.i.i, label %if.end206.i.i

if.end206.i.i:                                    ; preds = %if.end194.i.i, %bs_write_ue_big.exit1244.i.i, %land.lhs.true121.i.i, %if.end118.i.i
  %383 = phi i32 [ %325, %bs_write_ue_big.exit1244.i.i ], [ %298, %land.lhs.true121.i.i ], [ %298, %if.end118.i.i ], [ %380, %if.end194.i.i ]
  %cmp207.not.i.i = icmp eq i32 %41, 0
  br i1 %cmp207.not.i.i, label %if.end233.i.i, label %if.then208.i.i

if.then208.i.i:                                   ; preds = %if.end206.i.i
  %384 = load i32, ptr %i_idr_pic_id.i.i, align 16
  %cmp210.i.i = icmp sgt i32 %384, -1
  br i1 %cmp210.i.i, label %if.then211.i.i, label %if.else212.i.i

if.then211.i.i:                                   ; preds = %if.then208.i.i
  %385 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i1392.i.i = shl i64 %385, 1
  store i64 %shl.i1392.i.i, ptr %cur_bits.i.i, align 8
  %dec.i1395.i.i = add nsw i32 %383, -1
  store i32 %dec.i1395.i.i, ptr %i_left.i.i, align 8
  %cmp.i1396.i.i = icmp eq i32 %dec.i1395.i.i, 32
  br i1 %cmp.i1396.i.i, label %bs_write1.exit1402.thread.i.i, label %bs_write1.exit1402.i.i

bs_write1.exit1402.thread.i.i:                    ; preds = %if.then211.i.i
  %conv6.i1398.i.i = trunc i64 %shl.i1392.i.i to i32
  %add5.i.i1399.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1398.i.i)
  %386 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i1399.i.i, ptr %386, align 4
  %387 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i1401.i.i = getelementptr inbounds i8, ptr %387, i64 4
  store ptr %add.ptr.i1401.i.i, ptr %p.i.i, align 8
  %.pre1749.i.i = load i64, ptr %cur_bits.i.i, align 8
  %shl.i14041752.i.i = shl i64 %.pre1749.i.i, 1
  store i64 %shl.i14041752.i.i, ptr %cur_bits.i.i, align 8
  store i32 63, ptr %i_left.i.i, align 8
  br label %if.end233.i.i

bs_write1.exit1402.i.i:                           ; preds = %if.then211.i.i
  %shl.i1404.i.i = shl i64 %385, 2
  store i64 %shl.i1404.i.i, ptr %cur_bits.i.i, align 8
  %dec.i1407.i.i = add nsw i32 %383, -2
  store i32 %dec.i1407.i.i, ptr %i_left.i.i, align 8
  %cmp.i1408.i.i = icmp eq i32 %dec.i1407.i.i, 32
  br i1 %cmp.i1408.i.i, label %if.then.i1409.i.i, label %if.end233.i.i

if.then.i1409.i.i:                                ; preds = %bs_write1.exit1402.i.i
  %conv6.i1410.i.i = trunc i64 %shl.i1404.i.i to i32
  %add5.i.i1411.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1410.i.i)
  %388 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i1411.i.i, ptr %388, align 4
  %389 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i1413.i.i = getelementptr inbounds i8, ptr %389, i64 4
  store ptr %add.ptr.i1413.i.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  br label %if.end233.i.i

if.else212.i.i:                                   ; preds = %if.then208.i.i
  %390 = load i32, ptr %i_mmco_command_count.i.i, align 4
  %cmp213.i.i = icmp sgt i32 %390, 0
  %391 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i1416.i.i = shl i64 %391, 1
  %conv.i1417.i.i = zext i1 %cmp213.i.i to i64
  %or.i1418.i.i = or disjoint i64 %shl.i1416.i.i, %conv.i1417.i.i
  store i64 %or.i1418.i.i, ptr %cur_bits.i.i, align 8
  %dec.i1420.i.i = add nsw i32 %383, -1
  store i32 %dec.i1420.i.i, ptr %i_left.i.i, align 8
  %cmp.i1421.i.i = icmp eq i32 %dec.i1420.i.i, 32
  br i1 %cmp.i1421.i.i, label %if.then.i1422.i.i, label %bs_write1.exit1427.i.i

if.then.i1422.i.i:                                ; preds = %if.else212.i.i
  %conv6.i1423.i.i = trunc i64 %or.i1418.i.i to i32
  %add5.i.i1424.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1423.i.i)
  %392 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i1424.i.i, ptr %392, align 4
  %393 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i1426.i.i = getelementptr inbounds i8, ptr %393, i64 4
  store ptr %add.ptr.i1426.i.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  %.pre1174.i = load i32, ptr %i_mmco_command_count.i.i, align 4
  br label %bs_write1.exit1427.i.i

bs_write1.exit1427.i.i:                           ; preds = %if.then.i1422.i.i, %if.else212.i.i
  %394 = phi i32 [ %390, %if.else212.i.i ], [ %.pre1174.i, %if.then.i1422.i.i ]
  %395 = phi i32 [ %dec.i1420.i.i, %if.else212.i.i ], [ 64, %if.then.i1422.i.i ]
  %cmp215.i.i = icmp sgt i32 %394, 0
  br i1 %cmp215.i.i, label %for.body224.i.i, label %if.end233.i.i

for.cond.cleanup223.i.i:                          ; preds = %bs_write_ue_big.exit1530.i.i
  %396 = load i64, ptr %cur_bits.i.i, align 8
  %cmp.i.i1432.i.i = icmp slt i32 %427, 33
  br i1 %cmp.i.i1432.i.i, label %if.then.i.i1446.i.i, label %bs_write.exit.i1433.i.i

if.then.i.i1446.i.i:                              ; preds = %for.cond.cleanup223.i.i
  %sh_prom6.i.i1447.i.i = zext nneg i32 %427 to i64
  %shl7.i.i1448.i.i = shl i64 %396, %sh_prom6.i.i1447.i.i
  %add.i.i.i.i1449.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1448.i.i)
  %conv8.i.i1450.i.i = trunc i64 %add.i.i.i.i1449.i.i to i32
  %397 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1450.i.i, ptr %397, align 4
  %398 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1452.i.i = add nsw i32 %398, 32
  %399 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1453.i.i = getelementptr inbounds i8, ptr %399, i64 4
  store ptr %add.ptr.i.i1453.i.i, ptr %p.i.i, align 8
  %.pre.i1454.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i1433.i.i

bs_write.exit.i1433.i.i:                          ; preds = %if.then.i.i1446.i.i, %for.cond.cleanup223.i.i
  %400 = phi i32 [ %427, %for.cond.cleanup223.i.i ], [ %add.i.i1452.i.i, %if.then.i.i1446.i.i ]
  %401 = phi i64 [ %396, %for.cond.cleanup223.i.i ], [ %.pre.i1454.i.i, %if.then.i.i1446.i.i ]
  %shl.i21.i1434.i.i = shl i64 %401, 1
  %or.i.i1435.i.i = or disjoint i64 %shl.i21.i1434.i.i, 1
  store i64 %or.i.i1435.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i1436.i.i = add nsw i32 %400, -1
  store i32 %sub.i23.i1436.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i1437.i.i = icmp slt i32 %400, 34
  br i1 %cmp.i24.i1437.i.i, label %if.then.i25.i1438.i.i, label %if.end233.i.i

if.then.i25.i1438.i.i:                            ; preds = %bs_write.exit.i1433.i.i
  %sh_prom6.i26.i1439.i.i = zext nneg i32 %sub.i23.i1436.i.i to i64
  %shl7.i27.i1440.i.i = shl i64 %or.i.i1435.i.i, %sh_prom6.i26.i1439.i.i
  %add.i.i.i28.i1441.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1440.i.i)
  %conv8.i29.i1442.i.i = trunc i64 %add.i.i.i28.i1441.i.i to i32
  %402 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i1442.i.i, ptr %402, align 4
  %403 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i1444.i.i = add nsw i32 %403, 32
  store i32 %add.i31.i1444.i.i, ptr %i_left.i.i, align 8
  %404 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i1445.i.i = getelementptr inbounds i8, ptr %404, i64 4
  store ptr %add.ptr.i32.i1445.i.i, ptr %p.i.i, align 8
  br label %if.end233.i.i

for.body224.i.i:                                  ; preds = %bs_write1.exit1427.i.i, %bs_write_ue_big.exit1530.i.i
  %405 = phi i32 [ %427, %bs_write_ue_big.exit1530.i.i ], [ %395, %bs_write1.exit1427.i.i ]
  %indvars.iv1735.i.i = phi i64 [ %indvars.iv.next1736.i.i, %bs_write_ue_big.exit1530.i.i ], [ 0, %bs_write1.exit1427.i.i ]
  %406 = load i64, ptr %cur_bits.i.i, align 8
  %shl.i.i1457.i.i = shl i64 %406, 1
  store i64 %shl.i.i1457.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1459.i.i = add nsw i32 %405, -1
  store i32 %sub.i.i1459.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1460.i.i = icmp slt i32 %405, 34
  br i1 %cmp.i.i1460.i.i, label %if.then.i.i1474.i.i, label %bs_write.exit.i1461.i.i

if.then.i.i1474.i.i:                              ; preds = %for.body224.i.i
  %sh_prom6.i.i1475.i.i = zext nneg i32 %sub.i.i1459.i.i to i64
  %shl7.i.i1476.i.i = shl i64 %shl.i.i1457.i.i, %sh_prom6.i.i1475.i.i
  %add.i.i.i.i1477.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1476.i.i)
  %conv8.i.i1478.i.i = trunc i64 %add.i.i.i.i1477.i.i to i32
  %407 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1478.i.i, ptr %407, align 4
  %408 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1480.i.i = add nsw i32 %408, 32
  %409 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1481.i.i = getelementptr inbounds i8, ptr %409, i64 4
  store ptr %add.ptr.i.i1481.i.i, ptr %p.i.i, align 8
  %.pre.i1482.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i1461.i.i

bs_write.exit.i1461.i.i:                          ; preds = %if.then.i.i1474.i.i, %for.body224.i.i
  %410 = phi i32 [ %sub.i.i1459.i.i, %for.body224.i.i ], [ %add.i.i1480.i.i, %if.then.i.i1474.i.i ]
  %411 = phi i64 [ %shl.i.i1457.i.i, %for.body224.i.i ], [ %.pre.i1482.i.i, %if.then.i.i1474.i.i ]
  %shl.i21.i1462.i.i = shl i64 %411, 2
  %or.i.i1463.i.i = or disjoint i64 %shl.i21.i1462.i.i, 2
  store i64 %or.i.i1463.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i1464.i.i = add nsw i32 %410, -2
  store i32 %sub.i23.i1464.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i1465.i.i = icmp slt i32 %410, 35
  br i1 %cmp.i24.i1465.i.i, label %if.then.i25.i1466.i.i, label %bs_write_ue_big.exit1483.i.i

if.then.i25.i1466.i.i:                            ; preds = %bs_write.exit.i1461.i.i
  %sh_prom6.i26.i1467.i.i = zext nneg i32 %sub.i23.i1464.i.i to i64
  %shl7.i27.i1468.i.i = shl i64 %or.i.i1463.i.i, %sh_prom6.i26.i1467.i.i
  %add.i.i.i28.i1469.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1468.i.i)
  %conv8.i29.i1470.i.i = trunc i64 %add.i.i.i28.i1469.i.i to i32
  %412 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i1470.i.i, ptr %412, align 4
  %413 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i1472.i.i = add nsw i32 %413, 32
  %414 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i1473.i.i = getelementptr inbounds i8, ptr %414, i64 4
  store ptr %add.ptr.i32.i1473.i.i, ptr %p.i.i, align 8
  %.pre1748.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue_big.exit1483.i.i

bs_write_ue_big.exit1483.i.i:                     ; preds = %if.then.i25.i1466.i.i, %bs_write.exit.i1461.i.i
  %415 = phi i32 [ %sub.i23.i1464.i.i, %bs_write.exit.i1461.i.i ], [ %add.i31.i1472.i.i, %if.then.i25.i1466.i.i ]
  %416 = phi i64 [ %or.i.i1463.i.i, %bs_write.exit.i1461.i.i ], [ %.pre1748.i.i, %if.then.i25.i1466.i.i ]
  %arrayidx226.i.i = getelementptr inbounds [16 x %struct.anon.7], ptr %mmco.i.i, i64 0, i64 %indvars.iv1735.i.i
  %417 = load i32, ptr %arrayidx226.i.i, align 8
  %cmp.i1485.i.i = icmp sgt i32 %417, 65535
  %shr.i1486.i.i = lshr i32 %417, 16
  %spec.select.i1487.i.i = select i1 %cmp.i1485.i.i, i32 32, i32 0
  %spec.select18.i1488.i.i = select i1 %cmp.i1485.i.i, i32 %shr.i1486.i.i, i32 %417
  %cmp1.i1489.i.i = icmp sgt i32 %spec.select18.i1488.i.i, 255
  %add.i1490.i.i = or disjoint i32 %spec.select.i1487.i.i, 16
  %shr3.i1491.i.i = lshr i32 %spec.select18.i1488.i.i, 8
  %size.1.i1492.i.i = select i1 %cmp1.i1489.i.i, i32 %add.i1490.i.i, i32 %spec.select.i1487.i.i
  %tmp.1.i1493.i.i = select i1 %cmp1.i1489.i.i, i32 %shr3.i1491.i.i, i32 %spec.select18.i1488.i.i
  %idxprom.i1494.i.i = sext i32 %tmp.1.i1493.i.i to i64
  %arrayidx.i1495.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1494.i.i
  %418 = load i8, ptr %arrayidx.i1495.i.i, align 1
  %conv.i1496.i.i = zext i8 %418 to i32
  %add5.i1497.i.i = add nuw nsw i32 %size.1.i1492.i.i, %conv.i1496.i.i
  %shr6.i1498.i.i = lshr i32 %add5.i1497.i.i, 1
  %sh_prom.i.i1500.i.i = zext nneg i32 %shr6.i1498.i.i to i64
  %shl.i.i1501.i.i = shl i64 %416, %sh_prom.i.i1500.i.i
  store i64 %shl.i.i1501.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1503.i.i = sub nsw i32 %415, %shr6.i1498.i.i
  store i32 %sub.i.i1503.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1504.i.i = icmp slt i32 %sub.i.i1503.i.i, 33
  br i1 %cmp.i.i1504.i.i, label %if.then.i.i1521.i.i, label %bs_write.exit.i1505.i.i

if.then.i.i1521.i.i:                              ; preds = %bs_write_ue_big.exit1483.i.i
  %sh_prom6.i.i1522.i.i = zext nneg i32 %sub.i.i1503.i.i to i64
  %shl7.i.i1523.i.i = shl i64 %shl.i.i1501.i.i, %sh_prom6.i.i1522.i.i
  %add.i.i.i.i1524.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1523.i.i)
  %conv8.i.i1525.i.i = trunc i64 %add.i.i.i.i1524.i.i to i32
  %419 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1525.i.i, ptr %419, align 4
  %420 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1527.i.i = add nsw i32 %420, 32
  %421 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1528.i.i = getelementptr inbounds i8, ptr %421, i64 4
  store ptr %add.ptr.i.i1528.i.i, ptr %p.i.i, align 8
  %.pre.i1529.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i1505.i.i

bs_write.exit.i1505.i.i:                          ; preds = %if.then.i.i1521.i.i, %bs_write_ue_big.exit1483.i.i
  %422 = phi i32 [ %sub.i.i1503.i.i, %bs_write_ue_big.exit1483.i.i ], [ %add.i.i1527.i.i, %if.then.i.i1521.i.i ]
  %423 = phi i64 [ %shl.i.i1501.i.i, %bs_write_ue_big.exit1483.i.i ], [ %.pre.i1529.i.i, %if.then.i.i1521.i.i ]
  %add8.i1506.i.i = add nuw nsw i32 %shr6.i1498.i.i, 1
  %sh_prom.i20.i1507.i.i = zext nneg i32 %add8.i1506.i.i to i64
  %shl.i21.i1508.i.i = shl i64 %423, %sh_prom.i20.i1507.i.i
  %conv.i.i1509.i.i = zext i32 %417 to i64
  %or.i.i1510.i.i = or i64 %shl.i21.i1508.i.i, %conv.i.i1509.i.i
  store i64 %or.i.i1510.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i1511.i.i = sub nsw i32 %422, %add8.i1506.i.i
  store i32 %sub.i23.i1511.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i1512.i.i = icmp slt i32 %sub.i23.i1511.i.i, 33
  br i1 %cmp.i24.i1512.i.i, label %if.then.i25.i1513.i.i, label %bs_write_ue_big.exit1530.i.i

if.then.i25.i1513.i.i:                            ; preds = %bs_write.exit.i1505.i.i
  %sh_prom6.i26.i1514.i.i = zext nneg i32 %sub.i23.i1511.i.i to i64
  %shl7.i27.i1515.i.i = shl i64 %or.i.i1510.i.i, %sh_prom6.i26.i1514.i.i
  %add.i.i.i28.i1516.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1515.i.i)
  %conv8.i29.i1517.i.i = trunc i64 %add.i.i.i28.i1516.i.i to i32
  %424 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i1517.i.i, ptr %424, align 4
  %425 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i1519.i.i = add nsw i32 %425, 32
  store i32 %add.i31.i1519.i.i, ptr %i_left.i.i, align 8
  %426 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i1520.i.i = getelementptr inbounds i8, ptr %426, i64 4
  store ptr %add.ptr.i32.i1520.i.i, ptr %p.i.i, align 8
  br label %bs_write_ue_big.exit1530.i.i

bs_write_ue_big.exit1530.i.i:                     ; preds = %if.then.i25.i1513.i.i, %bs_write.exit.i1505.i.i
  %427 = phi i32 [ %sub.i23.i1511.i.i, %bs_write.exit.i1505.i.i ], [ %add.i31.i1519.i.i, %if.then.i25.i1513.i.i ]
  %indvars.iv.next1736.i.i = add nuw nsw i64 %indvars.iv1735.i.i, 1
  %428 = load i32, ptr %i_mmco_command_count.i.i, align 4
  %429 = sext i32 %428 to i64
  %cmp221.i.i = icmp slt i64 %indvars.iv.next1736.i.i, %429
  br i1 %cmp221.i.i, label %for.body224.i.i, label %for.cond.cleanup223.i.i

if.end233.i.i:                                    ; preds = %if.then.i25.i1438.i.i, %bs_write.exit.i1433.i.i, %bs_write1.exit1427.i.i, %if.then.i1409.i.i, %bs_write1.exit1402.i.i, %bs_write1.exit1402.thread.i.i, %if.end206.i.i
  %430 = phi i32 [ %add.i31.i1444.i.i, %if.then.i25.i1438.i.i ], [ %sub.i23.i1436.i.i, %bs_write.exit.i1433.i.i ], [ 64, %if.then.i1409.i.i ], [ %dec.i1407.i.i, %bs_write1.exit1402.i.i ], [ %395, %bs_write1.exit1427.i.i ], [ %383, %if.end206.i.i ], [ 63, %bs_write1.exit1402.thread.i.i ]
  %431 = load ptr, ptr %pps37.i.i, align 8
  %b_cabac.i.i = getelementptr inbounds i8, ptr %431, i64 8
  %432 = load i32, ptr %b_cabac.i.i, align 8
  %tobool235.not.i.i = icmp eq i32 %432, 0
  br i1 %tobool235.not.i.i, label %if.end241.i.i, label %land.lhs.true236.i.i

land.lhs.true236.i.i:                             ; preds = %if.end233.i.i
  %433 = load i32, ptr %i_type.i.i, align 16
  %cmp238.not.i.i = icmp eq i32 %433, 2
  br i1 %cmp238.not.i.i, label %if.end241.i.i, label %if.then240.i.i

if.then240.i.i:                                   ; preds = %land.lhs.true236.i.i
  %434 = load i32, ptr %i_cabac_init_idc.i.i, align 8
  %inc.i1531.i.i = add i32 %434, 1
  %cmp.i1532.i.i = icmp sgt i32 %inc.i1531.i.i, 65535
  %shr.i1533.i.i = lshr i32 %inc.i1531.i.i, 16
  %spec.select.i1534.i.i = select i1 %cmp.i1532.i.i, i32 32, i32 0
  %spec.select18.i1535.i.i = select i1 %cmp.i1532.i.i, i32 %shr.i1533.i.i, i32 %inc.i1531.i.i
  %cmp1.i1536.i.i = icmp sgt i32 %spec.select18.i1535.i.i, 255
  %add.i1537.i.i = or disjoint i32 %spec.select.i1534.i.i, 16
  %shr3.i1538.i.i = lshr i32 %spec.select18.i1535.i.i, 8
  %size.1.i1539.i.i = select i1 %cmp1.i1536.i.i, i32 %add.i1537.i.i, i32 %spec.select.i1534.i.i
  %tmp.1.i1540.i.i = select i1 %cmp1.i1536.i.i, i32 %shr3.i1538.i.i, i32 %spec.select18.i1535.i.i
  %idxprom.i1541.i.i = sext i32 %tmp.1.i1540.i.i to i64
  %arrayidx.i1542.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1541.i.i
  %435 = load i8, ptr %arrayidx.i1542.i.i, align 1
  %conv.i1543.i.i = zext i8 %435 to i32
  %add5.i1544.i.i = add nuw nsw i32 %size.1.i1539.i.i, %conv.i1543.i.i
  %shr6.i1545.i.i = lshr i32 %add5.i1544.i.i, 1
  %436 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i1547.i.i = zext nneg i32 %shr6.i1545.i.i to i64
  %shl.i.i1548.i.i = shl i64 %436, %sh_prom.i.i1547.i.i
  store i64 %shl.i.i1548.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1550.i.i = sub nsw i32 %430, %shr6.i1545.i.i
  store i32 %sub.i.i1550.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1551.i.i = icmp slt i32 %sub.i.i1550.i.i, 33
  br i1 %cmp.i.i1551.i.i, label %if.then.i.i1568.i.i, label %bs_write.exit.i1552.i.i

if.then.i.i1568.i.i:                              ; preds = %if.then240.i.i
  %sh_prom6.i.i1569.i.i = zext nneg i32 %sub.i.i1550.i.i to i64
  %shl7.i.i1570.i.i = shl i64 %shl.i.i1548.i.i, %sh_prom6.i.i1569.i.i
  %add.i.i.i.i1571.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1570.i.i)
  %conv8.i.i1572.i.i = trunc i64 %add.i.i.i.i1571.i.i to i32
  %437 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1572.i.i, ptr %437, align 4
  %438 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1574.i.i = add nsw i32 %438, 32
  %439 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1575.i.i = getelementptr inbounds i8, ptr %439, i64 4
  store ptr %add.ptr.i.i1575.i.i, ptr %p.i.i, align 8
  %.pre.i1576.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i1552.i.i

bs_write.exit.i1552.i.i:                          ; preds = %if.then.i.i1568.i.i, %if.then240.i.i
  %440 = phi i32 [ %sub.i.i1550.i.i, %if.then240.i.i ], [ %add.i.i1574.i.i, %if.then.i.i1568.i.i ]
  %441 = phi i64 [ %shl.i.i1548.i.i, %if.then240.i.i ], [ %.pre.i1576.i.i, %if.then.i.i1568.i.i ]
  %add8.i1553.i.i = add nuw nsw i32 %shr6.i1545.i.i, 1
  %sh_prom.i20.i1554.i.i = zext nneg i32 %add8.i1553.i.i to i64
  %shl.i21.i1555.i.i = shl i64 %441, %sh_prom.i20.i1554.i.i
  %conv.i.i1556.i.i = zext i32 %inc.i1531.i.i to i64
  %or.i.i1557.i.i = or i64 %shl.i21.i1555.i.i, %conv.i.i1556.i.i
  store i64 %or.i.i1557.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i1558.i.i = sub nsw i32 %440, %add8.i1553.i.i
  store i32 %sub.i23.i1558.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i1559.i.i = icmp slt i32 %sub.i23.i1558.i.i, 33
  br i1 %cmp.i24.i1559.i.i, label %if.then.i25.i1560.i.i, label %if.end241.i.i

if.then.i25.i1560.i.i:                            ; preds = %bs_write.exit.i1552.i.i
  %sh_prom6.i26.i1561.i.i = zext nneg i32 %sub.i23.i1558.i.i to i64
  %shl7.i27.i1562.i.i = shl i64 %or.i.i1557.i.i, %sh_prom6.i26.i1561.i.i
  %add.i.i.i28.i1563.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1562.i.i)
  %conv8.i29.i1564.i.i = trunc i64 %add.i.i.i28.i1563.i.i to i32
  %442 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i1564.i.i, ptr %442, align 4
  %443 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i1566.i.i = add nsw i32 %443, 32
  %444 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i1567.i.i = getelementptr inbounds i8, ptr %444, i64 4
  store ptr %add.ptr.i32.i1567.i.i, ptr %p.i.i, align 8
  br label %if.end241.i.i

if.end241.i.i:                                    ; preds = %if.then.i25.i1560.i.i, %bs_write.exit.i1552.i.i, %land.lhs.true236.i.i, %if.end233.i.i
  %445 = phi i32 [ %add.i31.i1566.i.i, %if.then.i25.i1560.i.i ], [ %sub.i23.i1558.i.i, %bs_write.exit.i1552.i.i ], [ %430, %land.lhs.true236.i.i ], [ %430, %if.end233.i.i ]
  %446 = load i32, ptr %i_qp_delta.i, align 16
  %mul.i1578.i.i = shl nsw i32 %446, 1
  %sub.i1579.i.i = sub nsw i32 1, %mul.i1578.i.i
  %cmp.i1580.i.i = icmp sgt i32 %446, 0
  %spec.select.i1581.i.i = select i1 %cmp.i1580.i.i, i32 %mul.i1578.i.i, i32 %sub.i1579.i.i
  %cmp2.i1582.i.i = icmp sgt i32 %spec.select.i1581.i.i, 255
  %shr.i1583.i.i = lshr i32 %spec.select.i1581.i.i, 8
  %size.0.i1584.i.i = select i1 %cmp2.i1582.i.i, i32 16, i32 0
  %tmp.1.i1585.i.i = select i1 %cmp2.i1582.i.i, i32 %shr.i1583.i.i, i32 %spec.select.i1581.i.i
  %idxprom.i1586.i.i = sext i32 %tmp.1.i1585.i.i to i64
  %arrayidx.i1587.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1586.i.i
  %447 = load i8, ptr %arrayidx.i1587.i.i, align 1
  %conv.i1588.i.i = zext i8 %447 to i32
  %add.i1589.i.i = add nuw nsw i32 %size.0.i1584.i.i, %conv.i1588.i.i
  %448 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i1591.i.i = zext nneg i32 %add.i1589.i.i to i64
  %shl.i.i1592.i.i = shl i64 %448, %sh_prom.i.i1591.i.i
  %conv.i.i1593.i.i = zext i32 %spec.select.i1581.i.i to i64
  %or.i.i1594.i.i = or i64 %shl.i.i1592.i.i, %conv.i.i1593.i.i
  store i64 %or.i.i1594.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1596.i.i = sub nsw i32 %445, %add.i1589.i.i
  store i32 %sub.i.i1596.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1597.i.i = icmp slt i32 %sub.i.i1596.i.i, 33
  br i1 %cmp.i.i1597.i.i, label %if.then.i.i1599.i.i, label %bs_write_se.exit1607.i.i

if.then.i.i1599.i.i:                              ; preds = %if.end241.i.i
  %sh_prom6.i.i1600.i.i = zext nneg i32 %sub.i.i1596.i.i to i64
  %shl7.i.i1601.i.i = shl i64 %or.i.i1594.i.i, %sh_prom6.i.i1600.i.i
  %add.i.i.i.i1602.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1601.i.i)
  %conv8.i.i1603.i.i = trunc i64 %add.i.i.i.i1602.i.i to i32
  %449 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1603.i.i, ptr %449, align 4
  %450 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1605.i.i = add nsw i32 %450, 32
  store i32 %add.i.i1605.i.i, ptr %i_left.i.i, align 8
  %451 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1606.i.i = getelementptr inbounds i8, ptr %451, i64 4
  store ptr %add.ptr.i.i1606.i.i, ptr %p.i.i, align 8
  br label %bs_write_se.exit1607.i.i

bs_write_se.exit1607.i.i:                         ; preds = %if.then.i.i1599.i.i, %if.end241.i.i
  %452 = phi i32 [ %sub.i.i1596.i.i, %if.end241.i.i ], [ %add.i.i1605.i.i, %if.then.i.i1599.i.i ]
  %453 = load ptr, ptr %pps37.i.i, align 8
  %b_deblocking_filter_control.i.i = getelementptr inbounds i8, ptr %453, i64 48
  %454 = load i32, ptr %b_deblocking_filter_control.i.i, align 8
  %tobool243.not.i.i = icmp eq i32 %454, 0
  br i1 %tobool243.not.i.i, label %x264_slice_header_write.exit.i, label %if.then244.i.i

if.then244.i.i:                                   ; preds = %bs_write_se.exit1607.i.i
  %455 = load i32, ptr %i_disable_deblocking_filter_idc.i, align 4
  %inc.i1608.i.i = add i32 %455, 1
  %cmp.i1609.i.i = icmp sgt i32 %inc.i1608.i.i, 65535
  %shr.i1610.i.i = lshr i32 %inc.i1608.i.i, 16
  %spec.select.i1611.i.i = select i1 %cmp.i1609.i.i, i32 32, i32 0
  %spec.select18.i1612.i.i = select i1 %cmp.i1609.i.i, i32 %shr.i1610.i.i, i32 %inc.i1608.i.i
  %cmp1.i1613.i.i = icmp sgt i32 %spec.select18.i1612.i.i, 255
  %add.i1614.i.i = or disjoint i32 %spec.select.i1611.i.i, 16
  %shr3.i1615.i.i = lshr i32 %spec.select18.i1612.i.i, 8
  %size.1.i1616.i.i = select i1 %cmp1.i1613.i.i, i32 %add.i1614.i.i, i32 %spec.select.i1611.i.i
  %tmp.1.i1617.i.i = select i1 %cmp1.i1613.i.i, i32 %shr3.i1615.i.i, i32 %spec.select18.i1612.i.i
  %idxprom.i1618.i.i = sext i32 %tmp.1.i1617.i.i to i64
  %arrayidx.i1619.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1618.i.i
  %456 = load i8, ptr %arrayidx.i1619.i.i, align 1
  %conv.i1620.i.i = zext i8 %456 to i32
  %add5.i1621.i.i = add nuw nsw i32 %size.1.i1616.i.i, %conv.i1620.i.i
  %shr6.i1622.i.i = lshr i32 %add5.i1621.i.i, 1
  %457 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i1624.i.i = zext nneg i32 %shr6.i1622.i.i to i64
  %shl.i.i1625.i.i = shl i64 %457, %sh_prom.i.i1624.i.i
  store i64 %shl.i.i1625.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1627.i.i = sub nsw i32 %452, %shr6.i1622.i.i
  store i32 %sub.i.i1627.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1628.i.i = icmp slt i32 %sub.i.i1627.i.i, 33
  br i1 %cmp.i.i1628.i.i, label %if.then.i.i1645.i.i, label %bs_write.exit.i1629.i.i

if.then.i.i1645.i.i:                              ; preds = %if.then244.i.i
  %sh_prom6.i.i1646.i.i = zext nneg i32 %sub.i.i1627.i.i to i64
  %shl7.i.i1647.i.i = shl i64 %shl.i.i1625.i.i, %sh_prom6.i.i1646.i.i
  %add.i.i.i.i1648.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1647.i.i)
  %conv8.i.i1649.i.i = trunc i64 %add.i.i.i.i1648.i.i to i32
  %458 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1649.i.i, ptr %458, align 4
  %459 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1651.i.i = add nsw i32 %459, 32
  %460 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1652.i.i = getelementptr inbounds i8, ptr %460, i64 4
  store ptr %add.ptr.i.i1652.i.i, ptr %p.i.i, align 8
  %.pre.i1653.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i1629.i.i

bs_write.exit.i1629.i.i:                          ; preds = %if.then.i.i1645.i.i, %if.then244.i.i
  %461 = phi i32 [ %sub.i.i1627.i.i, %if.then244.i.i ], [ %add.i.i1651.i.i, %if.then.i.i1645.i.i ]
  %462 = phi i64 [ %shl.i.i1625.i.i, %if.then244.i.i ], [ %.pre.i1653.i.i, %if.then.i.i1645.i.i ]
  %add8.i1630.i.i = add nuw nsw i32 %shr6.i1622.i.i, 1
  %sh_prom.i20.i1631.i.i = zext nneg i32 %add8.i1630.i.i to i64
  %shl.i21.i1632.i.i = shl i64 %462, %sh_prom.i20.i1631.i.i
  %conv.i.i1633.i.i = zext i32 %inc.i1608.i.i to i64
  %or.i.i1634.i.i = or i64 %shl.i21.i1632.i.i, %conv.i.i1633.i.i
  store i64 %or.i.i1634.i.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i1635.i.i = sub nsw i32 %461, %add8.i1630.i.i
  store i32 %sub.i23.i1635.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i1636.i.i = icmp slt i32 %sub.i23.i1635.i.i, 33
  br i1 %cmp.i24.i1636.i.i, label %if.then.i25.i1637.i.i, label %bs_write_ue_big.exit1654.i.i

if.then.i25.i1637.i.i:                            ; preds = %bs_write.exit.i1629.i.i
  %sh_prom6.i26.i1638.i.i = zext nneg i32 %sub.i23.i1635.i.i to i64
  %shl7.i27.i1639.i.i = shl i64 %or.i.i1634.i.i, %sh_prom6.i26.i1638.i.i
  %add.i.i.i28.i1640.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1639.i.i)
  %conv8.i29.i1641.i.i = trunc i64 %add.i.i.i28.i1640.i.i to i32
  %463 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i1641.i.i, ptr %463, align 4
  %464 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i1643.i.i = add nsw i32 %464, 32
  store i32 %add.i31.i1643.i.i, ptr %i_left.i.i, align 8
  %465 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i1644.i.i = getelementptr inbounds i8, ptr %465, i64 4
  store ptr %add.ptr.i32.i1644.i.i, ptr %p.i.i, align 8
  br label %bs_write_ue_big.exit1654.i.i

bs_write_ue_big.exit1654.i.i:                     ; preds = %if.then.i25.i1637.i.i, %bs_write.exit.i1629.i.i
  %466 = phi i32 [ %sub.i23.i1635.i.i, %bs_write.exit.i1629.i.i ], [ %add.i31.i1643.i.i, %if.then.i25.i1637.i.i ]
  %467 = load i32, ptr %i_disable_deblocking_filter_idc.i, align 4
  %cmp246.not.i.i = icmp eq i32 %467, 1
  br i1 %cmp246.not.i.i, label %x264_slice_header_write.exit.i, label %if.then248.i.i

if.then248.i.i:                                   ; preds = %bs_write_ue_big.exit1654.i.i
  %468 = load i32, ptr %i_alpha_c0_offset.i.i, align 16
  %mul.i1655.i.i = and i32 %468, -2
  %sub.i1656.i.i = sub nsw i32 1, %mul.i1655.i.i
  %cmp.i1657.i.i = icmp sgt i32 %468, 1
  %spec.select.i1658.i.i = select i1 %cmp.i1657.i.i, i32 %mul.i1655.i.i, i32 %sub.i1656.i.i
  %cmp2.i1659.i.i = icmp sgt i32 %spec.select.i1658.i.i, 255
  %shr.i1660.i.i = lshr i32 %spec.select.i1658.i.i, 8
  %size.0.i1661.i.i = select i1 %cmp2.i1659.i.i, i32 16, i32 0
  %tmp.1.i1662.i.i = select i1 %cmp2.i1659.i.i, i32 %shr.i1660.i.i, i32 %spec.select.i1658.i.i
  %idxprom.i1663.i.i = sext i32 %tmp.1.i1662.i.i to i64
  %arrayidx.i1664.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1663.i.i
  %469 = load i8, ptr %arrayidx.i1664.i.i, align 1
  %conv.i1665.i.i = zext i8 %469 to i32
  %add.i1666.i.i = add nuw nsw i32 %size.0.i1661.i.i, %conv.i1665.i.i
  %470 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i1668.i.i = zext nneg i32 %add.i1666.i.i to i64
  %shl.i.i1669.i.i = shl i64 %470, %sh_prom.i.i1668.i.i
  %conv.i.i1670.i.i = zext i32 %spec.select.i1658.i.i to i64
  %or.i.i1671.i.i = or i64 %shl.i.i1669.i.i, %conv.i.i1670.i.i
  store i64 %or.i.i1671.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1673.i.i = sub nsw i32 %466, %add.i1666.i.i
  store i32 %sub.i.i1673.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1674.i.i = icmp slt i32 %sub.i.i1673.i.i, 33
  br i1 %cmp.i.i1674.i.i, label %if.then.i.i1676.i.i, label %bs_write_se.exit1684.i.i

if.then.i.i1676.i.i:                              ; preds = %if.then248.i.i
  %sh_prom6.i.i1677.i.i = zext nneg i32 %sub.i.i1673.i.i to i64
  %shl7.i.i1678.i.i = shl i64 %or.i.i1671.i.i, %sh_prom6.i.i1677.i.i
  %add.i.i.i.i1679.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1678.i.i)
  %conv8.i.i1680.i.i = trunc i64 %add.i.i.i.i1679.i.i to i32
  %471 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1680.i.i, ptr %471, align 4
  %472 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1682.i.i = add nsw i32 %472, 32
  %473 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1683.i.i = getelementptr inbounds i8, ptr %473, i64 4
  store ptr %add.ptr.i.i1683.i.i, ptr %p.i.i, align 8
  %.pre1750.i.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_se.exit1684.i.i

bs_write_se.exit1684.i.i:                         ; preds = %if.then.i.i1676.i.i, %if.then248.i.i
  %474 = phi i32 [ %sub.i.i1673.i.i, %if.then248.i.i ], [ %add.i.i1682.i.i, %if.then.i.i1676.i.i ]
  %475 = phi i64 [ %or.i.i1671.i.i, %if.then248.i.i ], [ %.pre1750.i.i, %if.then.i.i1676.i.i ]
  %476 = load i32, ptr %i_beta_offset.i.i, align 4
  %mul.i1685.i.i = and i32 %476, -2
  %sub.i1686.i.i = sub nsw i32 1, %mul.i1685.i.i
  %cmp.i1687.i.i = icmp sgt i32 %476, 1
  %spec.select.i1688.i.i = select i1 %cmp.i1687.i.i, i32 %mul.i1685.i.i, i32 %sub.i1686.i.i
  %cmp2.i1689.i.i = icmp sgt i32 %spec.select.i1688.i.i, 255
  %shr.i1690.i.i = lshr i32 %spec.select.i1688.i.i, 8
  %size.0.i1691.i.i = select i1 %cmp2.i1689.i.i, i32 16, i32 0
  %tmp.1.i1692.i.i = select i1 %cmp2.i1689.i.i, i32 %shr.i1690.i.i, i32 %spec.select.i1688.i.i
  %idxprom.i1693.i.i = sext i32 %tmp.1.i1692.i.i to i64
  %arrayidx.i1694.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1693.i.i
  %477 = load i8, ptr %arrayidx.i1694.i.i, align 1
  %conv.i1695.i.i = zext i8 %477 to i32
  %add.i1696.i.i = add nuw nsw i32 %size.0.i1691.i.i, %conv.i1695.i.i
  %sh_prom.i.i1698.i.i = zext nneg i32 %add.i1696.i.i to i64
  %shl.i.i1699.i.i = shl i64 %475, %sh_prom.i.i1698.i.i
  %conv.i.i1700.i.i = zext i32 %spec.select.i1688.i.i to i64
  %or.i.i1701.i.i = or i64 %shl.i.i1699.i.i, %conv.i.i1700.i.i
  store i64 %or.i.i1701.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1703.i.i = sub nsw i32 %474, %add.i1696.i.i
  store i32 %sub.i.i1703.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i1704.i.i = icmp slt i32 %sub.i.i1703.i.i, 33
  br i1 %cmp.i.i1704.i.i, label %if.then.i.i1706.i.i, label %x264_slice_header_write.exit.i

if.then.i.i1706.i.i:                              ; preds = %bs_write_se.exit1684.i.i
  %sh_prom6.i.i1707.i.i = zext nneg i32 %sub.i.i1703.i.i to i64
  %shl7.i.i1708.i.i = shl i64 %or.i.i1701.i.i, %sh_prom6.i.i1707.i.i
  %add.i.i.i.i1709.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1708.i.i)
  %conv8.i.i1710.i.i = trunc i64 %add.i.i.i.i1709.i.i to i32
  %478 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1710.i.i, ptr %478, align 4
  %479 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1712.i.i = add nsw i32 %479, 32
  store i32 %add.i.i1712.i.i, ptr %i_left.i.i, align 8
  %480 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1713.i.i = getelementptr inbounds i8, ptr %480, i64 4
  store ptr %add.ptr.i.i1713.i.i, ptr %p.i.i, align 8
  br label %x264_slice_header_write.exit.i

x264_slice_header_write.exit.i:                   ; preds = %if.then.i.i1706.i.i, %bs_write_se.exit1684.i.i, %bs_write_ue_big.exit1654.i.i, %bs_write_se.exit1607.i.i
  %481 = phi i32 [ %452, %bs_write_se.exit1607.i.i ], [ %466, %bs_write_ue_big.exit1654.i.i ], [ %sub.i.i1703.i.i, %bs_write_se.exit1684.i.i ], [ %add.i.i1712.i.i, %if.then.i.i1706.i.i ]
  %482 = load i32, ptr %b_cabac.i, align 16
  %tobool27.not.i = icmp eq i32 %482, 0
  br i1 %tobool27.not.i, label %if.end40.i, label %if.then28.i

if.then28.i:                                      ; preds = %x264_slice_header_write.exit.i
  %and.i879.i = and i32 %481, 7
  %notmask.i880.i = shl nsw i32 -1, %and.i879.i
  %sub.i881.i = xor i32 %notmask.i880.i, -1
  %483 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i882.i = zext nneg i32 %and.i879.i to i64
  %shl.i.i883.i = shl i64 %483, %sh_prom.i.i882.i
  %conv.i.i884.i = zext nneg i32 %sub.i881.i to i64
  %or.i.i885.i = or i64 %shl.i.i883.i, %conv.i.i884.i
  store i64 %or.i.i885.i, ptr %cur_bits.i.i, align 8
  %sub.i.i886.i = and i32 %481, -8
  store i32 %sub.i.i886.i, ptr %i_left.i.i, align 8
  %cmp.i.i887.i = icmp slt i32 %sub.i.i886.i, 33
  br i1 %cmp.i.i887.i, label %if.then.i.i890.i, label %entry.bs_write.exit_crit_edge.i.i

entry.bs_write.exit_crit_edge.i.i:                ; preds = %if.then28.i
  %.pre13.i.i = load ptr, ptr %p.i.i, align 8
  br label %bs_align_1.exit.i

if.then.i.i890.i:                                 ; preds = %if.then28.i
  %sh_prom6.i.i891.i = zext nneg i32 %sub.i.i886.i to i64
  %484 = tail call i64 @llvm.bswap.i64(i64 %or.i.i885.i)
  %add.i.i.i.i892.i = lshr i64 %484, %sh_prom6.i.i891.i
  %conv8.i.i893.i = trunc i64 %add.i.i.i.i892.i to i32
  %485 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i893.i, ptr %485, align 4
  %486 = load i32, ptr %i_left.i.i, align 8
  %add.i.i895.i = add nsw i32 %486, 32
  store i32 %add.i.i895.i, ptr %i_left.i.i, align 8
  %487 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i896.i = getelementptr inbounds i8, ptr %487, i64 4
  store ptr %add.ptr.i.i896.i, ptr %p.i.i, align 8
  %.pre.i897.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_align_1.exit.i

bs_align_1.exit.i:                                ; preds = %if.then.i.i890.i, %entry.bs_write.exit_crit_edge.i.i
  %488 = phi ptr [ %.pre13.i.i, %entry.bs_write.exit_crit_edge.i.i ], [ %add.ptr.i.i896.i, %if.then.i.i890.i ]
  %489 = phi i32 [ %sub.i.i886.i, %entry.bs_write.exit_crit_edge.i.i ], [ %add.i.i895.i, %if.then.i.i890.i ]
  %490 = phi i64 [ %or.i.i885.i, %entry.bs_write.exit_crit_edge.i.i ], [ %.pre.i897.i, %if.then.i.i890.i ]
  %and.i.i.i = and i32 %489, 31
  %sh_prom.i8.i.i = zext nneg i32 %and.i.i.i to i64
  %shl.i9.i.i = shl i64 %490, %sh_prom.i8.i.i
  %conv.i10.i.i = trunc i64 %shl.i9.i.i to i32
  %add5.i.i.i889.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i10.i.i)
  store i32 %add5.i.i.i889.i, ptr %488, align 4
  %491 = load i32, ptr %i_left.i.i, align 8
  %div.neg.i.i.i = sdiv i32 %491, -8
  %492 = load ptr, ptr %p.i.i, align 8
  %493 = sext i32 %div.neg.i.i.i to i64
  %494 = getelementptr i8, ptr %492, i64 %493
  %add.ptr.i12.i.i = getelementptr i8, ptr %494, i64 8
  store ptr %add.ptr.i12.i.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  %495 = load i32, ptr %i_type.i.i, align 16
  %496 = load i32, ptr %i_qp.i, align 4
  %497 = load i32, ptr %i_cabac_init_idc.i.i, align 8
  tail call void @x264_cabac_context_init(ptr noundef nonnull %cabac.i, i32 noundef %495, i32 noundef %496, i32 noundef %497) #17
  %498 = load ptr, ptr %p.i.i, align 8
  %499 = load ptr, ptr %p_end.i, align 16
  tail call void @x264_cabac_encode_init(ptr noundef nonnull %cabac.i, ptr noundef %498, ptr noundef %499) #17
  br label %if.end40.i

if.end40.i:                                       ; preds = %bs_align_1.exit.i, %x264_slice_header_write.exit.i
  %500 = load i32, ptr %i_qp.i, align 4
  store i32 %500, ptr %i_last_qp.i, align 8
  store i32 0, ptr %i_last_dqp.i, align 4
  %501 = load i32, ptr %i_first_mb, align 4
  %502 = load ptr, ptr %sps, align 16
  %i_mb_width49.i = getelementptr inbounds i8, ptr %502, i64 1084
  %503 = load i32, ptr %i_mb_width49.i, align 4
  %div.i = sdiv i32 %501, %503
  %rem.i = srem i32 %501, %503
  %mul561128.i = mul nsw i32 %div.i, %503
  %add571129.i = add nsw i32 %mul561128.i, %rem.i
  %504 = load i32, ptr %i_last_mb, align 8
  %cmp59.not1130.i = icmp sgt i32 %add571129.i, %504
  br i1 %cmp59.not1130.i, label %while.end.thread.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end40.i
  %reass.sub.i.neg.i = add i32 %16, -64
  %conv1.i.neg.i = add i32 %reass.sub.i.neg.i, %.neg1093.i
  %tobool484.not.i = select i1 %cmp7.not.i, i1 true, i1 %lor.ext.i
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup578.i, %while.body.lr.ph.i
  %add571137.i = phi i32 [ %add571129.i, %while.body.lr.ph.i ], [ %add57.i, %cleanup578.i ]
  %i_skip.01136.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %i_skip.2.i, %cleanup578.i ]
  %i_mb_x.01135.i = phi i32 [ %rem.i, %while.body.lr.ph.i ], [ %spec.select869.i, %cleanup578.i ]
  %i_mb_y.01133.i = phi i32 [ %div.i, %while.body.lr.ph.i ], [ %spec.select.i, %cleanup578.i ]
  %i_skip_bak.01132.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %i_skip_bak.1.i, %cleanup578.i ]
  %cabac_prevbyte_bak.01131.i = phi i8 [ 0, %while.body.lr.ph.i ], [ %cabac_prevbyte_bak.1.i, %cleanup578.i ]
  %505 = load ptr, ptr %p.i.i, align 8
  %506 = load ptr, ptr %bs.i, align 8
  %sub.ptr.lhs.cast.i899.i = ptrtoint ptr %505 to i64
  %sub.ptr.rhs.cast.i900.i = ptrtoint ptr %506 to i64
  %sub.ptr.sub.i901.neg.i = sub i64 %sub.ptr.rhs.cast.i900.i, %sub.ptr.lhs.cast.i899.i
  %507 = load i32, ptr %i_left.i.i, align 8
  %sub.ptr.sub.tr.i903.neg.i = trunc i64 %sub.ptr.sub.i901.neg.i to i32
  %508 = load ptr, ptr %p.i906.i, align 8
  %509 = load ptr, ptr %p_start.i.i, align 16
  %sub.ptr.lhs.cast.i907.i = ptrtoint ptr %508 to i64
  %sub.ptr.rhs.cast.i908.i = ptrtoint ptr %509 to i64
  %sub.ptr.sub.i909.neg.i = sub i64 %sub.ptr.rhs.cast.i908.i, %sub.ptr.lhs.cast.i907.i
  %510 = load i32, ptr %i_bytes_outstanding.i.i, align 4
  %511 = load i32, ptr %i_queue.i.i, align 8
  %.neg1141.i = trunc i64 %sub.ptr.sub.i909.neg.i to i32
  %add.tr.i.neg.i = sub i32 %.neg1141.i, %510
  %512 = load i32, ptr %i_slice_max_size.i, align 4
  %cmp69.i = icmp sgt i32 %512, 0
  br i1 %cmp69.i, label %if.then71.i, label %if.end82.i

if.then71.i:                                      ; preds = %while.body.i
  %513 = load i32, ptr %b_cabac.i, align 16
  %tobool74.not.i = icmp eq i32 %513, 0
  br i1 %tobool74.not.i, label %if.else.i, label %if.then75.i

if.then75.i:                                      ; preds = %if.then71.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %cabac_bak.i, ptr noundef nonnull align 16 dereferenceable(48) %cabac.i, i64 48, i1 false)
  %arrayidx.i = getelementptr inbounds i8, ptr %508, i64 -1
  %514 = load i8, ptr %arrayidx.i, align 1
  br label %if.end82.i

if.else.i:                                        ; preds = %if.then71.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %bs_bak.i, ptr noundef nonnull align 16 dereferenceable(40) %bs.i, i64 40, i1 false)
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.else.i, %if.then75.i, %while.body.i
  %cabac_prevbyte_bak.1.i = phi i8 [ %514, %if.then75.i ], [ %cabac_prevbyte_bak.01131.i, %if.else.i ], [ %cabac_prevbyte_bak.01131.i, %while.body.i ]
  %i_skip_bak.1.i = phi i32 [ %i_skip_bak.01132.i, %if.then75.i ], [ %i_skip.01136.i, %if.else.i ], [ %i_skip_bak.01132.i, %while.body.i ]
  %cmp83.i = icmp eq i32 %i_mb_x.01135.i, 0
  br i1 %cmp83.i, label %land.lhs.true.i, label %if.end88.i

land.lhs.true.i:                                  ; preds = %if.end82.i
  %515 = load i32, ptr %b_reencode_mb, align 16
  %tobool86.not.i = icmp eq i32 %515, 0
  br i1 %tobool86.not.i, label %if.then87.i, label %if.end88.i

if.then87.i:                                      ; preds = %land.lhs.true.i
  tail call fastcc void @x264_fdec_filter_row(ptr noundef nonnull %h, i32 noundef %i_mb_y.01133.i, i32 noundef 1)
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then87.i, %land.lhs.true.i, %if.end82.i
  tail call void @x264_macroblock_cache_load(ptr noundef nonnull %h, i32 noundef %i_mb_x.01135.i, i32 noundef %i_mb_y.01133.i) #17
  tail call void @x264_macroblock_analyse(ptr noundef nonnull %h) #17
  tail call void @x264_macroblock_encode(ptr noundef nonnull %h) #17
  %516 = load ptr, ptr %p_bitstream.i.i, align 8
  %517 = load i32, ptr %b_cabac.i, align 16
  %tobool.not.i913.i = icmp eq i32 %517, 0
  br i1 %tobool.not.i913.i, label %lor.lhs.false.i.i, label %land.lhs.true.i914.i

land.lhs.true.i914.i:                             ; preds = %if.end88.i
  %518 = load ptr, ptr %p_end.i.i, align 16
  %519 = load ptr, ptr %p.i906.i, align 8
  %sub.ptr.lhs.cast.i916.i = ptrtoint ptr %518 to i64
  %sub.ptr.rhs.cast.i917.i = ptrtoint ptr %519 to i64
  %sub.ptr.sub.i918.i = sub i64 %sub.ptr.lhs.cast.i916.i, %sub.ptr.rhs.cast.i917.i
  %cmp.i919.i = icmp slt i64 %sub.ptr.sub.i918.i, 2500
  br i1 %cmp.i919.i, label %if.then.i920.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i914.i, %if.end88.i
  %520 = load ptr, ptr %p_end.i, align 16
  %521 = load ptr, ptr %p.i.i, align 8
  %sub.ptr.lhs.cast7.i.i = ptrtoint ptr %520 to i64
  %sub.ptr.rhs.cast8.i.i = ptrtoint ptr %521 to i64
  %sub.ptr.sub9.i.i = sub i64 %sub.ptr.lhs.cast7.i.i, %sub.ptr.rhs.cast8.i.i
  %cmp10.i.i = icmp slt i64 %sub.ptr.sub9.i.i, 2500
  br i1 %cmp10.i.i, label %if.then.i920.i, label %if.end92.i

if.then.i920.i:                                   ; preds = %lor.lhs.false.i.i, %land.lhs.true.i914.i
  %522 = load i32, ptr %i_bitstream.i.i, align 16
  %add.i.i = add nsw i32 %522, 100000
  store i32 %add.i.i, ptr %i_bitstream.i.i, align 16
  %call.i.i = tail call ptr @x264_malloc(i32 noundef %add.i.i) #17
  store ptr %call.i.i, ptr %p_bitstream.i.i, align 8
  %tobool18.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not.i.i, label %cleanup578.thread.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i920.i
  %523 = load ptr, ptr %memcpy_aligned.i.i, align 8
  %524 = load i32, ptr %i_bitstream.i.i, align 16
  %525 = and i32 %524, -16
  %and.i921.i = add nsw i32 %525, -100000
  %conv.i922.i = sext i32 %and.i921.i to i64
  %call24.i.i = tail call ptr %523(ptr noundef nonnull %call.i.i, ptr noundef %516, i64 noundef %conv.i922.i) #17
  %526 = load ptr, ptr %p_bitstream.i.i, align 8
  %sub.ptr.lhs.cast27.i.i = ptrtoint ptr %526 to i64
  %sub.ptr.rhs.cast28.i.i = ptrtoint ptr %516 to i64
  %sub.ptr.sub29.i.i = sub i64 %sub.ptr.lhs.cast27.i.i, %sub.ptr.rhs.cast28.i.i
  %527 = load ptr, ptr %bs.i, align 16
  %add.ptr.i923.i = getelementptr inbounds i8, ptr %527, i64 %sub.ptr.sub29.i.i
  store ptr %add.ptr.i923.i, ptr %bs.i, align 16
  %528 = load ptr, ptr %p.i.i, align 8
  %add.ptr35.i.i = getelementptr inbounds i8, ptr %528, i64 %sub.ptr.sub29.i.i
  store ptr %add.ptr35.i.i, ptr %p.i.i, align 8
  %529 = load i32, ptr %i_bitstream.i.i, align 16
  %idx.ext.i924.i = sext i32 %529 to i64
  %add.ptr40.i.i = getelementptr inbounds i8, ptr %526, i64 %idx.ext.i924.i
  store ptr %add.ptr40.i.i, ptr %p_end.i, align 16
  %530 = load ptr, ptr %p_start.i.i, align 16
  %add.ptr46.i.i = getelementptr inbounds i8, ptr %530, i64 %sub.ptr.sub29.i.i
  store ptr %add.ptr46.i.i, ptr %p_start.i.i, align 16
  %531 = load ptr, ptr %p.i906.i, align 8
  %add.ptr49.i.i = getelementptr inbounds i8, ptr %531, i64 %sub.ptr.sub29.i.i
  store ptr %add.ptr49.i.i, ptr %p.i906.i, align 8
  store ptr %add.ptr40.i.i, ptr %p_end.i.i, align 16
  %532 = load i32, ptr %out.i, align 16
  %cmp59.not98.i.i = icmp slt i32 %532, 0
  br i1 %cmp59.not98.i.i, label %x264_bitstream_check_buffer.exit.thread1078.i, label %for.body.i926.i

for.body.i926.i:                                  ; preds = %do.end.i.i, %for.body.i926.i
  %indvars.iv.i927.i = phi i64 [ %indvars.iv.next.i929.i, %for.body.i926.i ], [ 0, %do.end.i.i ]
  %533 = load ptr, ptr %nal1.i.i, align 8
  %p_payload.i928.i = getelementptr inbounds %struct.x264_nal_t, ptr %533, i64 %indvars.iv.i927.i, i32 3
  %534 = load ptr, ptr %p_payload.i928.i, align 8
  %add.ptr62.i.i = getelementptr inbounds i8, ptr %534, i64 %sub.ptr.sub29.i.i
  store ptr %add.ptr62.i.i, ptr %p_payload.i928.i, align 8
  %indvars.iv.next.i929.i = add nuw nsw i64 %indvars.iv.i927.i, 1
  %535 = load i32, ptr %out.i, align 16
  %536 = sext i32 %535 to i64
  %cmp59.not.not.i.i = icmp slt i64 %indvars.iv.i927.i, %536
  br i1 %cmp59.not.not.i.i, label %for.body.i926.i, label %x264_bitstream_check_buffer.exit.thread1078.i

x264_bitstream_check_buffer.exit.thread1078.i:    ; preds = %for.body.i926.i, %do.end.i.i
  tail call void @x264_free(ptr noundef %516) #17
  %.pre1175.i = load i32, ptr %b_cabac.i, align 16
  br label %if.end92.i

cleanup578.thread.i:                              ; preds = %if.then.i920.i
  tail call void @x264_free(ptr noundef %516) #17
  br label %x264_slice_write.exit

if.end92.i:                                       ; preds = %x264_bitstream_check_buffer.exit.thread1078.i, %lor.lhs.false.i.i
  %537 = phi i32 [ %517, %lor.lhs.false.i.i ], [ %.pre1175.i, %x264_bitstream_check_buffer.exit.thread1078.i ]
  %tobool95.not.i = icmp eq i32 %537, 0
  br i1 %tobool95.not.i, label %if.else128.i, label %if.then96.i

if.then96.i:                                      ; preds = %if.end92.i
  %538 = load i32, ptr %i_first_mb, align 4
  %cmp99.i = icmp sgt i32 %add571137.i, %538
  br i1 %cmp99.i, label %land.lhs.true101.i, label %if.end109.i

land.lhs.true101.i:                               ; preds = %if.then96.i
  %539 = load i32, ptr %b_mbaff.i.i, align 4
  %tobool103.not.i = icmp eq i32 %539, 0
  %and105.i = and i32 %i_mb_y.01133.i, 1
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  %or.cond868.i = or i1 %tobool106.not.i, %tobool103.not.i
  br i1 %or.cond868.i, label %if.then107.i, label %if.end109.i

if.then107.i:                                     ; preds = %land.lhs.true101.i
  tail call void @x264_cabac_encode_terminal_c(ptr noundef nonnull %cabac.i) #17
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then107.i, %land.lhs.true101.i, %if.then96.i
  %540 = load i32, ptr %i_type111.i, align 8
  switch i32 %540, label %if.else119.i [
    i32 6, label %if.then118.i
    i32 18, label %if.then118.i
  ]

if.then118.i:                                     ; preds = %if.end109.i, %if.end109.i
  tail call void @x264_cabac_mb_skip(ptr noundef nonnull %h, i32 noundef 1) #17
  br label %if.end149.i

if.else119.i:                                     ; preds = %if.end109.i
  %541 = load i32, ptr %i_type.i.i, align 16
  %cmp122.not.i = icmp eq i32 %541, 2
  br i1 %cmp122.not.i, label %if.end125.i, label %if.then124.i

if.then124.i:                                     ; preds = %if.else119.i
  tail call void @x264_cabac_mb_skip(ptr noundef nonnull %h, i32 noundef 0) #17
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then124.i, %if.else119.i
  tail call void @x264_macroblock_write_cabac(ptr noundef nonnull %h, ptr noundef nonnull %cabac.i) #17
  br label %if.end149.i

if.else128.i:                                     ; preds = %if.end92.i
  %542 = load i32, ptr %i_type111.i, align 8
  switch i32 %542, label %if.else139.i [
    i32 6, label %if.then138.i
    i32 18, label %if.then138.i
  ]

if.then138.i:                                     ; preds = %if.else128.i, %if.else128.i
  %inc.i = add nsw i32 %i_skip.01136.i, 1
  br label %if.end149.i

if.else139.i:                                     ; preds = %if.else128.i
  %543 = load i32, ptr %i_type.i.i, align 16
  %cmp142.not.i = icmp eq i32 %543, 2
  br i1 %cmp142.not.i, label %if.end147.i, label %if.then144.i

if.then144.i:                                     ; preds = %if.else139.i
  %inc.i.i = add i32 %i_skip.01136.i, 1
  %cmp.i930.i = icmp sgt i32 %inc.i.i, 65535
  %shr.i931.i = lshr i32 %inc.i.i, 16
  %spec.select.i.i = select i1 %cmp.i930.i, i32 32, i32 0
  %spec.select18.i.i = select i1 %cmp.i930.i, i32 %shr.i931.i, i32 %inc.i.i
  %cmp1.i.i = icmp sgt i32 %spec.select18.i.i, 255
  %add.i932.i = or disjoint i32 %spec.select.i.i, 16
  %shr3.i.i = lshr i32 %spec.select18.i.i, 8
  %size.1.i.i = select i1 %cmp1.i.i, i32 %add.i932.i, i32 %spec.select.i.i
  %tmp.1.i.i = select i1 %cmp1.i.i, i32 %shr3.i.i, i32 %spec.select18.i.i
  %idxprom.i933.i = sext i32 %tmp.1.i.i to i64
  %arrayidx.i934.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i933.i
  %544 = load i8, ptr %arrayidx.i934.i, align 1
  %conv.i935.i = zext i8 %544 to i32
  %add5.i.i = add nuw nsw i32 %size.1.i.i, %conv.i935.i
  %shr6.i.i = lshr i32 %add5.i.i, 1
  %545 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i937.i = zext nneg i32 %shr6.i.i to i64
  %shl.i.i938.i = shl i64 %545, %sh_prom.i.i937.i
  store i64 %shl.i.i938.i, ptr %cur_bits.i.i, align 8
  %546 = load i32, ptr %i_left.i.i, align 8
  %sub.i.i940.i = sub nsw i32 %546, %shr6.i.i
  store i32 %sub.i.i940.i, ptr %i_left.i.i, align 8
  %cmp.i.i941.i = icmp slt i32 %sub.i.i940.i, 33
  br i1 %cmp.i.i941.i, label %if.then.i.i945.i, label %bs_write.exit.i942.i

if.then.i.i945.i:                                 ; preds = %if.then144.i
  %sh_prom6.i.i946.i = zext nneg i32 %sub.i.i940.i to i64
  %shl7.i.i947.i = shl i64 %shl.i.i938.i, %sh_prom6.i.i946.i
  %add.i.i.i.i948.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i947.i)
  %conv8.i.i949.i = trunc i64 %add.i.i.i.i948.i to i32
  %547 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i949.i, ptr %547, align 4
  %548 = load i32, ptr %i_left.i.i, align 8
  %add.i.i951.i = add nsw i32 %548, 32
  %549 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i952.i = getelementptr inbounds i8, ptr %549, i64 4
  store ptr %add.ptr.i.i952.i, ptr %p.i.i, align 8
  %.pre.i953.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i942.i

bs_write.exit.i942.i:                             ; preds = %if.then.i.i945.i, %if.then144.i
  %550 = phi i32 [ %sub.i.i940.i, %if.then144.i ], [ %add.i.i951.i, %if.then.i.i945.i ]
  %551 = phi i64 [ %shl.i.i938.i, %if.then144.i ], [ %.pre.i953.i, %if.then.i.i945.i ]
  %add8.i.i = add nuw nsw i32 %shr6.i.i, 1
  %sh_prom.i20.i.i = zext nneg i32 %add8.i.i to i64
  %shl.i21.i.i = shl i64 %551, %sh_prom.i20.i.i
  %conv.i.i943.i = zext i32 %inc.i.i to i64
  %or.i.i944.i = or i64 %shl.i21.i.i, %conv.i.i943.i
  store i64 %or.i.i944.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i.i = sub nsw i32 %550, %add8.i.i
  store i32 %sub.i23.i.i, ptr %i_left.i.i, align 8
  %cmp.i24.i.i = icmp slt i32 %sub.i23.i.i, 33
  br i1 %cmp.i24.i.i, label %if.then.i25.i.i, label %if.end147.i

if.then.i25.i.i:                                  ; preds = %bs_write.exit.i942.i
  %sh_prom6.i26.i.i = zext nneg i32 %sub.i23.i.i to i64
  %shl7.i27.i.i = shl i64 %or.i.i944.i, %sh_prom6.i26.i.i
  %add.i.i.i28.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i.i)
  %conv8.i29.i.i = trunc i64 %add.i.i.i28.i.i to i32
  %552 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i.i, ptr %552, align 4
  %553 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i.i = add nsw i32 %553, 32
  store i32 %add.i31.i.i, ptr %i_left.i.i, align 8
  %554 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i.i = getelementptr inbounds i8, ptr %554, i64 4
  store ptr %add.ptr.i32.i.i, ptr %p.i.i, align 8
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.then.i25.i.i, %bs_write.exit.i942.i, %if.else139.i
  %i_skip.1.i = phi i32 [ %i_skip.01136.i, %if.else139.i ], [ 0, %bs_write.exit.i942.i ], [ 0, %if.then.i25.i.i ]
  tail call void @x264_macroblock_write_cavlc(ptr noundef nonnull %h) #17
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.end147.i, %if.then138.i, %if.end125.i, %if.then118.i
  %i_skip.2.i = phi i32 [ %i_skip.01136.i, %if.then118.i ], [ %i_skip.01136.i, %if.end125.i ], [ %inc.i, %if.then138.i ], [ %i_skip.1.i, %if.end147.i ]
  %555 = load ptr, ptr %p.i.i, align 8
  %556 = load ptr, ptr %bs.i, align 8
  %sub.ptr.lhs.cast.i955.i = ptrtoint ptr %555 to i64
  %sub.ptr.rhs.cast.i956.i = ptrtoint ptr %556 to i64
  %sub.ptr.sub.i957.i = sub i64 %sub.ptr.lhs.cast.i955.i, %sub.ptr.rhs.cast.i956.i
  %557 = load i32, ptr %i_left.i.i, align 8
  %sub.ptr.sub.tr.i959.i = trunc i64 %sub.ptr.sub.i957.i to i32
  %558 = shl i32 %sub.ptr.sub.tr.i959.i, 3
  %559 = load ptr, ptr %p.i906.i, align 8
  %560 = load ptr, ptr %p_start.i.i, align 16
  %sub.ptr.lhs.cast.i964.i = ptrtoint ptr %559 to i64
  %sub.ptr.rhs.cast.i965.i = ptrtoint ptr %560 to i64
  %sub.ptr.sub.i966.i = sub i64 %sub.ptr.lhs.cast.i964.i, %sub.ptr.rhs.cast.i965.i
  %561 = load i32, ptr %i_bytes_outstanding.i.i, align 4
  %562 = load i32, ptr %i_queue.i.i, align 8
  %563 = trunc i64 %sub.ptr.sub.i966.i to i32
  %add.tr.i969.i = add i32 %561, %563
  %564 = shl i32 %add.tr.i969.i, 3
  %reass.sub106 = sub i32 %558, %557
  %reass.sub.i960.i = add i32 %reass.sub106, 64
  %conv1.i961.i = add i32 %reass.sub.i960.i, %562
  %add155.i = add i32 %conv1.i961.i, %564
  %reass.add = add i32 %add.tr.i.neg.i, %sub.ptr.sub.tr.i903.neg.i
  %reass.mul = shl i32 %reass.add, 3
  %reass.sub.i904.neg.i = add i32 %507, -64
  %conv1.i905.neg.i = sub i32 %reass.sub.i904.neg.i, %511
  %add66.neg.i = add i32 %conv1.i905.neg.i, %reass.mul
  %sub156.i = add i32 %add66.neg.i, %add155.i
  %sub157.i = add i32 %conv1.i.neg.i, %add155.i
  %cmp1581094.i = icmp slt i32 %mul.i, %sub157.i
  %cmp158.i = select i1 %cmp.i, i1 %cmp1581094.i, i1 false
  br i1 %cmp158.i, label %land.lhs.true160.i, label %if.end196.i

land.lhs.true160.i:                               ; preds = %if.end149.i
  %565 = load i32, ptr %b_reencode_mb, align 16
  %tobool163.not.i = icmp eq i32 %565, 0
  br i1 %tobool163.not.i, label %if.then164.i, label %if.end196.i

if.then164.i:                                     ; preds = %land.lhs.true160.i
  %566 = load i32, ptr %i_first_mb, align 4
  %cmp167.not.i = icmp eq i32 %add571137.i, %566
  br i1 %cmp167.not.i, label %if.else187.i, label %if.then169.i

if.then169.i:                                     ; preds = %if.then164.i
  %567 = load i32, ptr %b_cabac.i, align 16
  %tobool172.not.i = icmp eq i32 %567, 0
  br i1 %tobool172.not.i, label %if.else178.i, label %if.then173.i

if.then173.i:                                     ; preds = %if.then169.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %cabac.i, ptr noundef nonnull align 16 dereferenceable(48) %cabac_bak.i, i64 48, i1 false)
  %568 = load ptr, ptr %p.i906.i, align 8
  %arrayidx177.i = getelementptr inbounds i8, ptr %568, i64 -1
  store i8 %cabac_prevbyte_bak.1.i, ptr %arrayidx177.i, align 1
  br label %cleanup578.thread1086.i

if.else178.i:                                     ; preds = %if.then169.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %bs.i, ptr noundef nonnull align 8 dereferenceable(40) %bs_bak.i, i64 40, i1 false)
  br label %cleanup578.thread1086.i

cleanup578.thread1086.i:                          ; preds = %if.else178.i, %if.then173.i
  %i_skip.3.i = phi i32 [ %i_skip.2.i, %if.then173.i ], [ %i_skip_bak.1.i, %if.else178.i ]
  store i32 1, ptr %b_reencode_mb, align 16
  %sub184.i = add nsw i32 %add571137.i, -1
  store i32 %sub184.i, ptr %i_last_mb, align 8
  br label %while.end.i

if.else187.i:                                     ; preds = %if.then164.i
  store i32 %add571137.i, ptr %i_last_mb, align 8
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.else187.i, %land.lhs.true160.i, %if.end149.i
  store i32 0, ptr %b_reencode_mb, align 16
  tail call void @x264_macroblock_cache_save(ptr noundef nonnull %h) #17
  %569 = load i32, ptr %i_type111.i, align 8
  %idxprom.i = sext i32 %569 to i64
  %arrayidx199.i = getelementptr inbounds [19 x i32], ptr %i_mb_count.i, i64 0, i64 %idxprom.i
  %570 = load i32, ptr %arrayidx199.i, align 4
  %inc200.i = add nsw i32 %570, 1
  store i32 %inc200.i, ptr %arrayidx199.i, align 4
  %571 = load i32, ptr %i_type111.i, align 8
  %switch.selectcmp.i = icmp ult i32 %571, 4
  %572 = load i32, ptr %i_log_level.i, align 16
  %cmp223.i = icmp sgt i32 %572, 1
  br i1 %cmp223.i, label %if.then228.i, label %lor.lhs.false225.i

lor.lhs.false225.i:                               ; preds = %if.end196.i
  %573 = load i32, ptr %b_stat_write.i, align 8
  %tobool227.i = icmp eq i32 %573, 0
  %or.cond645.i = or i1 %switch.selectcmp.i, %tobool227.i
  br i1 %or.cond645.i, label %if.end318.i, label %land.lhs.true230.i

if.then228.i:                                     ; preds = %if.end196.i
  br i1 %switch.selectcmp.i, label %if.then323.i, label %land.lhs.true230.i

land.lhs.true230.i:                               ; preds = %if.then228.i, %lor.lhs.false225.i
  switch i32 %571, label %if.then245.i [
    i32 6, label %if.end318.i
    i32 18, label %if.end318.i
    i32 7, label %if.end318.i
  ]

if.then245.i:                                     ; preds = %land.lhs.true230.i
  %574 = load i32, ptr %i_partition.i, align 4
  %cmp247.not.i = icmp eq i32 %574, 13
  br i1 %cmp247.not.i, label %for.body.preheader.i, label %if.then249.i

for.body.preheader.i:                             ; preds = %if.then245.i
  %575 = load i8, ptr %i_sub_partition.i, align 1
  %idxprom266.i = zext i8 %575 to i64
  %arrayidx267.i = getelementptr inbounds [17 x i32], ptr %i_mb_partition.i, i64 0, i64 %idxprom266.i
  %576 = load i32, ptr %arrayidx267.i, align 4
  %inc268.i = add nsw i32 %576, 1
  store i32 %inc268.i, ptr %arrayidx267.i, align 4
  %577 = load i8, ptr %arrayidx265.1.i, align 1
  %idxprom266.1.i = zext i8 %577 to i64
  %arrayidx267.1.i = getelementptr inbounds [17 x i32], ptr %i_mb_partition.i, i64 0, i64 %idxprom266.1.i
  %578 = load i32, ptr %arrayidx267.1.i, align 4
  %inc268.1.i = add nsw i32 %578, 1
  store i32 %inc268.1.i, ptr %arrayidx267.1.i, align 4
  %579 = load i8, ptr %arrayidx265.2.i, align 1
  %idxprom266.2.i = zext i8 %579 to i64
  %arrayidx267.2.i = getelementptr inbounds [17 x i32], ptr %i_mb_partition.i, i64 0, i64 %idxprom266.2.i
  %580 = load i32, ptr %arrayidx267.2.i, align 4
  %inc268.2.i = add nsw i32 %580, 1
  store i32 %inc268.2.i, ptr %arrayidx267.2.i, align 4
  %581 = load i8, ptr %arrayidx265.3.i, align 1
  %idxprom266.3.i = zext i8 %581 to i64
  br label %if.end270.i

if.then249.i:                                     ; preds = %if.then245.i
  %idxprom254.i = sext i32 %574 to i64
  br label %if.end270.i

if.end270.i:                                      ; preds = %if.then249.i, %for.body.preheader.i
  %idxprom266.3.sink.i = phi i64 [ %idxprom266.3.i, %for.body.preheader.i ], [ %idxprom254.i, %if.then249.i ]
  %.sink1203.i = phi i32 [ 1, %for.body.preheader.i ], [ 4, %if.then249.i ]
  %arrayidx267.3.i = getelementptr inbounds [17 x i32], ptr %i_mb_partition.i, i64 0, i64 %idxprom266.3.sink.i
  %582 = load i32, ptr %arrayidx267.3.i, align 4
  %inc268.3.i = add nsw i32 %582, %.sink1203.i
  store i32 %inc268.3.i, ptr %arrayidx267.3.i, align 4
  %583 = load i32, ptr %i_frame_reference.i, align 16
  %cmp272.i = icmp sgt i32 %583, 1
  br i1 %cmp272.i, label %for.cond275.preheader.i, label %if.end318.i

for.cond275.preheader.i:                          ; preds = %if.end270.i
  %584 = load i32, ptr %i_type.i.i, align 16
  %.fr = freeze i32 %584
  %cmp278.i = icmp eq i32 %.fr, 1
  br i1 %cmp278.i, label %for.cond285.preheader.i.preheader, label %for.cond275.preheader.i.split.us

for.cond285.preheader.i.preheader:                ; preds = %for.cond275.preheader.i
  %585 = load i8, ptr %arrayidx297.i, align 1
  %cmp299.i = icmp sgt i8 %585, -1
  br i1 %cmp299.i, label %if.then301.i, label %if.end309.i

for.cond275.preheader.i.split.us:                 ; preds = %for.cond275.preheader.i
  %586 = load i8, ptr %arrayidx297.i.us, align 1
  %cmp299.i.us = icmp sgt i8 %586, -1
  br i1 %cmp299.i.us, label %if.then301.i.us, label %if.end309.i.us

if.then301.i.us:                                  ; preds = %for.cond275.preheader.i.split.us
  %conv298.i.us = zext nneg i8 %586 to i64
  %arrayidx307.i.us = getelementptr inbounds [2 x [32 x i32]], ptr %i_mb_count_ref.i, i64 0, i64 0, i64 %conv298.i.us
  %587 = load i32, ptr %arrayidx307.i.us, align 4
  %inc308.i.us = add nsw i32 %587, 1
  store i32 %inc308.i.us, ptr %arrayidx307.i.us, align 4
  br label %if.end309.i.us

if.end309.i.us:                                   ; preds = %if.then301.i.us, %for.cond275.preheader.i.split.us
  %588 = load i8, ptr %arrayidx297.1.i.us, align 1
  %cmp299.1.i.us = icmp sgt i8 %588, -1
  br i1 %cmp299.1.i.us, label %if.then301.1.i.us, label %if.end309.1.i.us

if.then301.1.i.us:                                ; preds = %if.end309.i.us
  %conv298.1.i.us = zext nneg i8 %588 to i64
  %arrayidx307.1.i.us = getelementptr inbounds [2 x [32 x i32]], ptr %i_mb_count_ref.i, i64 0, i64 0, i64 %conv298.1.i.us
  %589 = load i32, ptr %arrayidx307.1.i.us, align 4
  %inc308.1.i.us = add nsw i32 %589, 1
  store i32 %inc308.1.i.us, ptr %arrayidx307.1.i.us, align 4
  br label %if.end309.1.i.us

if.end309.1.i.us:                                 ; preds = %if.then301.1.i.us, %if.end309.i.us
  %590 = load i8, ptr %arrayidx297.2.i.us, align 1
  %cmp299.2.i.us = icmp sgt i8 %590, -1
  br i1 %cmp299.2.i.us, label %if.then301.2.i.us, label %if.end309.2.i.us

if.then301.2.i.us:                                ; preds = %if.end309.1.i.us
  %conv298.2.i.us = zext nneg i8 %590 to i64
  %arrayidx307.2.i.us = getelementptr inbounds [2 x [32 x i32]], ptr %i_mb_count_ref.i, i64 0, i64 0, i64 %conv298.2.i.us
  %591 = load i32, ptr %arrayidx307.2.i.us, align 4
  %inc308.2.i.us = add nsw i32 %591, 1
  store i32 %inc308.2.i.us, ptr %arrayidx307.2.i.us, align 4
  br label %if.end309.2.i.us

if.end309.2.i.us:                                 ; preds = %if.then301.2.i.us, %if.end309.1.i.us
  %592 = load i8, ptr %arrayidx297.3.i.us, align 1
  %cmp299.3.i.us = icmp sgt i8 %592, -1
  br i1 %cmp299.3.i.us, label %if.end318.i.sink.split, label %if.end318.i

if.then301.i:                                     ; preds = %for.cond285.preheader.i.preheader
  %conv298.i = zext nneg i8 %585 to i64
  %arrayidx307.i = getelementptr inbounds [2 x [32 x i32]], ptr %i_mb_count_ref.i, i64 0, i64 0, i64 %conv298.i
  %593 = load i32, ptr %arrayidx307.i, align 4
  %inc308.i = add nsw i32 %593, 1
  store i32 %inc308.i, ptr %arrayidx307.i, align 4
  br label %if.end309.i

if.end309.i:                                      ; preds = %if.then301.i, %for.cond285.preheader.i.preheader
  %594 = load i8, ptr %arrayidx297.1.i, align 1
  %cmp299.1.i = icmp sgt i8 %594, -1
  br i1 %cmp299.1.i, label %if.then301.1.i, label %if.end309.1.i

if.then301.1.i:                                   ; preds = %if.end309.i
  %conv298.1.i = zext nneg i8 %594 to i64
  %arrayidx307.1.i = getelementptr inbounds [2 x [32 x i32]], ptr %i_mb_count_ref.i, i64 0, i64 0, i64 %conv298.1.i
  %595 = load i32, ptr %arrayidx307.1.i, align 4
  %inc308.1.i = add nsw i32 %595, 1
  store i32 %inc308.1.i, ptr %arrayidx307.1.i, align 4
  br label %if.end309.1.i

if.end309.1.i:                                    ; preds = %if.then301.1.i, %if.end309.i
  %596 = load i8, ptr %arrayidx297.2.i, align 1
  %cmp299.2.i = icmp sgt i8 %596, -1
  br i1 %cmp299.2.i, label %if.then301.2.i, label %if.end309.2.i

if.then301.2.i:                                   ; preds = %if.end309.1.i
  %conv298.2.i = zext nneg i8 %596 to i64
  %arrayidx307.2.i = getelementptr inbounds [2 x [32 x i32]], ptr %i_mb_count_ref.i, i64 0, i64 0, i64 %conv298.2.i
  %597 = load i32, ptr %arrayidx307.2.i, align 4
  %inc308.2.i = add nsw i32 %597, 1
  store i32 %inc308.2.i, ptr %arrayidx307.2.i, align 4
  br label %if.end309.2.i

if.end309.2.i:                                    ; preds = %if.then301.2.i, %if.end309.1.i
  %598 = load i8, ptr %arrayidx297.3.i, align 1
  %cmp299.3.i = icmp sgt i8 %598, -1
  br i1 %cmp299.3.i, label %if.then301.3.i, label %if.end309.3.i

if.then301.3.i:                                   ; preds = %if.end309.2.i
  %conv298.3.i = zext nneg i8 %598 to i64
  %arrayidx307.3.i = getelementptr inbounds [2 x [32 x i32]], ptr %i_mb_count_ref.i, i64 0, i64 0, i64 %conv298.3.i
  %599 = load i32, ptr %arrayidx307.3.i, align 4
  %inc308.3.i = add nsw i32 %599, 1
  store i32 %inc308.3.i, ptr %arrayidx307.3.i, align 4
  br label %if.end309.3.i

if.end309.3.i:                                    ; preds = %if.then301.3.i, %if.end309.2.i
  %600 = load i8, ptr %arrayidx297.i.1, align 1
  %cmp299.i.1 = icmp sgt i8 %600, -1
  br i1 %cmp299.i.1, label %if.then301.i.1, label %if.end309.i.1

if.then301.i.1:                                   ; preds = %if.end309.3.i
  %conv298.i.1 = zext nneg i8 %600 to i64
  %arrayidx307.i.1 = getelementptr inbounds [2 x [32 x i32]], ptr %i_mb_count_ref.i, i64 0, i64 1, i64 %conv298.i.1
  %601 = load i32, ptr %arrayidx307.i.1, align 4
  %inc308.i.1 = add nsw i32 %601, 1
  store i32 %inc308.i.1, ptr %arrayidx307.i.1, align 4
  br label %if.end309.i.1

if.end309.i.1:                                    ; preds = %if.then301.i.1, %if.end309.3.i
  %602 = load i8, ptr %arrayidx297.1.i.1, align 1
  %cmp299.1.i.1 = icmp sgt i8 %602, -1
  br i1 %cmp299.1.i.1, label %if.then301.1.i.1, label %if.end309.1.i.1

if.then301.1.i.1:                                 ; preds = %if.end309.i.1
  %conv298.1.i.1 = zext nneg i8 %602 to i64
  %arrayidx307.1.i.1 = getelementptr inbounds [2 x [32 x i32]], ptr %i_mb_count_ref.i, i64 0, i64 1, i64 %conv298.1.i.1
  %603 = load i32, ptr %arrayidx307.1.i.1, align 4
  %inc308.1.i.1 = add nsw i32 %603, 1
  store i32 %inc308.1.i.1, ptr %arrayidx307.1.i.1, align 4
  br label %if.end309.1.i.1

if.end309.1.i.1:                                  ; preds = %if.then301.1.i.1, %if.end309.i.1
  %604 = load i8, ptr %arrayidx297.2.i.1, align 1
  %cmp299.2.i.1 = icmp sgt i8 %604, -1
  br i1 %cmp299.2.i.1, label %if.then301.2.i.1, label %if.end309.2.i.1

if.then301.2.i.1:                                 ; preds = %if.end309.1.i.1
  %conv298.2.i.1 = zext nneg i8 %604 to i64
  %arrayidx307.2.i.1 = getelementptr inbounds [2 x [32 x i32]], ptr %i_mb_count_ref.i, i64 0, i64 1, i64 %conv298.2.i.1
  %605 = load i32, ptr %arrayidx307.2.i.1, align 4
  %inc308.2.i.1 = add nsw i32 %605, 1
  store i32 %inc308.2.i.1, ptr %arrayidx307.2.i.1, align 4
  br label %if.end309.2.i.1

if.end309.2.i.1:                                  ; preds = %if.then301.2.i.1, %if.end309.1.i.1
  %606 = load i8, ptr %arrayidx297.3.i.1, align 1
  %cmp299.3.i.1 = icmp sgt i8 %606, -1
  br i1 %cmp299.3.i.1, label %if.end318.i.sink.split, label %if.end318.i

if.end318.i.sink.split:                           ; preds = %if.end309.2.i.1, %if.end309.2.i.us
  %.sink136 = phi i8 [ %592, %if.end309.2.i.us ], [ %606, %if.end309.2.i.1 ]
  %.sink = phi i64 [ 0, %if.end309.2.i.us ], [ 1, %if.end309.2.i.1 ]
  %conv298.3.i.1 = zext nneg i8 %.sink136 to i64
  %arrayidx307.3.i.1 = getelementptr inbounds [2 x [32 x i32]], ptr %i_mb_count_ref.i, i64 0, i64 %.sink, i64 %conv298.3.i.1
  %607 = load i32, ptr %arrayidx307.3.i.1, align 4
  %inc308.3.i.1 = add nsw i32 %607, 1
  store i32 %inc308.3.i.1, ptr %arrayidx307.3.i.1, align 4
  br label %if.end318.i

if.end318.i:                                      ; preds = %if.end318.i.sink.split, %if.end309.2.i.1, %if.end309.2.i.us, %if.end270.i, %land.lhs.true230.i, %land.lhs.true230.i, %land.lhs.true230.i, %lor.lhs.false225.i
  %.pr.i = load i32, ptr %i_log_level.i, align 16
  %cmp321.i = icmp sgt i32 %.pr.i, 1
  br i1 %cmp321.i, label %if.then323.i, label %if.end483.i

if.then323.i:                                     ; preds = %if.end318.i, %if.then228.i
  %608 = load i32, ptr %i_cbp_luma.i, align 8
  %609 = load i32, ptr %i_cbp_chroma.i, align 4
  %or.i = or i32 %609, %608
  %tobool326.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool326.not.i, label %if.end381.i, label %if.then327.i

if.then327.i:                                     ; preds = %if.then323.i
  %and330.i = and i32 %608, 1
  %shr865.i = lshr i32 %608, 1
  %and333.i = and i32 %shr865.i, 1
  %shr337866.i = lshr i32 %608, 2
  %and338.i = and i32 %shr337866.i, 1
  %shr342.i = ashr i32 %608, 3
  %lnot.i = xor i1 %switch.selectcmp.i, true
  %idxprom348.i = zext i1 %lnot.i to i64
  %arrayidx349.i = getelementptr inbounds [6 x i32], ptr %i_mb_cbp.i, i64 0, i64 %idxprom348.i
  %610 = load i32, ptr %arrayidx349.i, align 4
  %add334.i = add nsw i32 %shr342.i, %and330.i
  %add339.i = add nsw i32 %add334.i, %and333.i
  %add343.i = add nsw i32 %add339.i, %and338.i
  %add350.i = add nsw i32 %add343.i, %610
  store i32 %add350.i, ptr %arrayidx349.i, align 4
  %tobool353.i = icmp ne i32 %609, 0
  %lnot.ext357.i = zext i1 %tobool353.i to i32
  %idxprom365.i = select i1 %switch.selectcmp.i, i64 2, i64 3
  %arrayidx366.i = getelementptr inbounds [6 x i32], ptr %i_mb_cbp.i, i64 0, i64 %idxprom365.i
  %611 = load i32, ptr %arrayidx366.i, align 4
  %add367.i = add nsw i32 %611, %lnot.ext357.i
  store i32 %add367.i, ptr %arrayidx366.i, align 4
  %shr370.i = ashr i32 %609, 1
  %idxprom378.i = select i1 %switch.selectcmp.i, i64 4, i64 5
  %arrayidx379.i = getelementptr inbounds [6 x i32], ptr %i_mb_cbp.i, i64 0, i64 %idxprom378.i
  %612 = load i32, ptr %arrayidx379.i, align 4
  %add380.i = add nsw i32 %612, %shr370.i
  store i32 %add380.i, ptr %arrayidx379.i, align 4
  br label %if.end381.i

if.end381.i:                                      ; preds = %if.then327.i, %if.then323.i
  %tobool384.i = icmp eq i32 %608, 0
  %or.cond.i = or i1 %switch.selectcmp.i, %tobool384.i
  br i1 %or.cond.i, label %if.end398.i, label %if.end398.thread.i

if.end398.thread.i:                               ; preds = %if.end381.i
  %613 = load i32, ptr %i_mb_count_8x8dct.i, align 4
  %inc391.i = add nsw i32 %613, 1
  store i32 %inc391.i, ptr %i_mb_count_8x8dct.i, align 4
  %614 = load i32, ptr %b_transform_8x8.i, align 4
  br label %if.end483.sink.split.i

if.end398.i:                                      ; preds = %if.end381.i
  br i1 %switch.selectcmp.i, label %land.lhs.true400.i, label %if.end483.i

land.lhs.true400.i:                               ; preds = %if.end398.i
  %615 = load i32, ptr %i_type111.i, align 8
  switch i32 %615, label %for.body452.preheader.i [
    i32 3, label %if.end483.i
    i32 2, label %if.then410.i
    i32 1, label %for.body429.preheader.i
  ]

for.body429.preheader.i:                          ; preds = %land.lhs.true400.i
  %616 = load i8, ptr %arrayidx439.i, align 1
  %idxprom440.i = sext i8 %616 to i64
  %arrayidx441.i = getelementptr inbounds [13 x i32], ptr %arrayidx433.i, i64 0, i64 %idxprom440.i
  %617 = load i32, ptr %arrayidx441.i, align 4
  %inc442.i = add nsw i32 %617, 1
  store i32 %inc442.i, ptr %arrayidx441.i, align 4
  %618 = load i8, ptr %arrayidx439.1.i, align 1
  %idxprom440.1.i = sext i8 %618 to i64
  %arrayidx441.1.i = getelementptr inbounds [13 x i32], ptr %arrayidx433.i, i64 0, i64 %idxprom440.1.i
  %619 = load i32, ptr %arrayidx441.1.i, align 4
  %inc442.1.i = add nsw i32 %619, 1
  store i32 %inc442.1.i, ptr %arrayidx441.1.i, align 4
  %620 = load i8, ptr %arrayidx439.2.i, align 1
  %idxprom440.2.i = sext i8 %620 to i64
  %arrayidx441.2.i = getelementptr inbounds [13 x i32], ptr %arrayidx433.i, i64 0, i64 %idxprom440.2.i
  %621 = load i32, ptr %arrayidx441.2.i, align 4
  %inc442.2.i = add nsw i32 %621, 1
  store i32 %inc442.2.i, ptr %arrayidx441.2.i, align 4
  %622 = load i8, ptr %arrayidx439.3.i, align 1
  %idxprom440.3.i = sext i8 %622 to i64
  %arrayidx441.3.i = getelementptr inbounds [13 x i32], ptr %arrayidx433.i, i64 0, i64 %idxprom440.3.i
  br label %if.end471.i

for.body452.preheader.i:                          ; preds = %land.lhs.true400.i
  %623 = load i8, ptr %arrayidx439.i, align 1
  %idxprom464.i = sext i8 %623 to i64
  %arrayidx465.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.i
  %624 = load i32, ptr %arrayidx465.i, align 4
  %inc466.i = add nsw i32 %624, 1
  store i32 %inc466.i, ptr %arrayidx465.i, align 4
  %625 = load i8, ptr %arrayidx463.1.i, align 1
  %idxprom464.1.i = sext i8 %625 to i64
  %arrayidx465.1.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.1.i
  %626 = load i32, ptr %arrayidx465.1.i, align 4
  %inc466.1.i = add nsw i32 %626, 1
  store i32 %inc466.1.i, ptr %arrayidx465.1.i, align 4
  %627 = load i8, ptr %arrayidx463.2.i, align 1
  %idxprom464.2.i = sext i8 %627 to i64
  %arrayidx465.2.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.2.i
  %628 = load i32, ptr %arrayidx465.2.i, align 4
  %inc466.2.i = add nsw i32 %628, 1
  store i32 %inc466.2.i, ptr %arrayidx465.2.i, align 4
  %629 = load i8, ptr %arrayidx463.3.i, align 1
  %idxprom464.3.i = sext i8 %629 to i64
  %arrayidx465.3.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.3.i
  %630 = load i32, ptr %arrayidx465.3.i, align 4
  %inc466.3.i = add nsw i32 %630, 1
  store i32 %inc466.3.i, ptr %arrayidx465.3.i, align 4
  %631 = load i8, ptr %arrayidx439.1.i, align 1
  %idxprom464.4.i = sext i8 %631 to i64
  %arrayidx465.4.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.4.i
  %632 = load i32, ptr %arrayidx465.4.i, align 4
  %inc466.4.i = add nsw i32 %632, 1
  store i32 %inc466.4.i, ptr %arrayidx465.4.i, align 4
  %633 = load i8, ptr %arrayidx463.5.i, align 1
  %idxprom464.5.i = sext i8 %633 to i64
  %arrayidx465.5.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.5.i
  %634 = load i32, ptr %arrayidx465.5.i, align 4
  %inc466.5.i = add nsw i32 %634, 1
  store i32 %inc466.5.i, ptr %arrayidx465.5.i, align 4
  %635 = load i8, ptr %arrayidx463.6.i, align 1
  %idxprom464.6.i = sext i8 %635 to i64
  %arrayidx465.6.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.6.i
  %636 = load i32, ptr %arrayidx465.6.i, align 4
  %inc466.6.i = add nsw i32 %636, 1
  store i32 %inc466.6.i, ptr %arrayidx465.6.i, align 4
  %637 = load i8, ptr %arrayidx463.7.i, align 1
  %idxprom464.7.i = sext i8 %637 to i64
  %arrayidx465.7.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.7.i
  %638 = load i32, ptr %arrayidx465.7.i, align 4
  %inc466.7.i = add nsw i32 %638, 1
  store i32 %inc466.7.i, ptr %arrayidx465.7.i, align 4
  %639 = load i8, ptr %arrayidx439.2.i, align 1
  %idxprom464.8.i = sext i8 %639 to i64
  %arrayidx465.8.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.8.i
  %640 = load i32, ptr %arrayidx465.8.i, align 4
  %inc466.8.i = add nsw i32 %640, 1
  store i32 %inc466.8.i, ptr %arrayidx465.8.i, align 4
  %641 = load i8, ptr %arrayidx463.9.i, align 1
  %idxprom464.9.i = sext i8 %641 to i64
  %arrayidx465.9.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.9.i
  %642 = load i32, ptr %arrayidx465.9.i, align 4
  %inc466.9.i = add nsw i32 %642, 1
  store i32 %inc466.9.i, ptr %arrayidx465.9.i, align 4
  %643 = load i8, ptr %arrayidx463.10.i, align 1
  %idxprom464.10.i = sext i8 %643 to i64
  %arrayidx465.10.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.10.i
  %644 = load i32, ptr %arrayidx465.10.i, align 4
  %inc466.10.i = add nsw i32 %644, 1
  store i32 %inc466.10.i, ptr %arrayidx465.10.i, align 4
  %645 = load i8, ptr %arrayidx463.11.i, align 1
  %idxprom464.11.i = sext i8 %645 to i64
  %arrayidx465.11.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.11.i
  %646 = load i32, ptr %arrayidx465.11.i, align 4
  %inc466.11.i = add nsw i32 %646, 1
  store i32 %inc466.11.i, ptr %arrayidx465.11.i, align 4
  %647 = load i8, ptr %arrayidx439.3.i, align 1
  %idxprom464.12.i = sext i8 %647 to i64
  %arrayidx465.12.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.12.i
  %648 = load i32, ptr %arrayidx465.12.i, align 4
  %inc466.12.i = add nsw i32 %648, 1
  store i32 %inc466.12.i, ptr %arrayidx465.12.i, align 4
  %649 = load i8, ptr %arrayidx463.13.i, align 1
  %idxprom464.13.i = sext i8 %649 to i64
  %arrayidx465.13.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.13.i
  %650 = load i32, ptr %arrayidx465.13.i, align 4
  %inc466.13.i = add nsw i32 %650, 1
  store i32 %inc466.13.i, ptr %arrayidx465.13.i, align 4
  %651 = load i8, ptr %arrayidx463.14.i, align 1
  %idxprom464.14.i = sext i8 %651 to i64
  %arrayidx465.14.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.14.i
  %652 = load i32, ptr %arrayidx465.14.i, align 4
  %inc466.14.i = add nsw i32 %652, 1
  store i32 %inc466.14.i, ptr %arrayidx465.14.i, align 4
  %653 = load i8, ptr %arrayidx463.15.i, align 1
  %idxprom464.15.i = sext i8 %653 to i64
  %arrayidx465.15.i = getelementptr inbounds [13 x i32], ptr %arrayidx456.i, i64 0, i64 %idxprom464.15.i
  br label %if.end471.i

if.then410.i:                                     ; preds = %land.lhs.true400.i
  %654 = load i32, ptr %i_intra16x16_pred_mode.i, align 16
  %idxprom415.i = sext i32 %654 to i64
  %arrayidx416.i = getelementptr inbounds [13 x i32], ptr %i_mb_pred_mode.i, i64 0, i64 %idxprom415.i
  br label %if.end471.i

if.end471.i:                                      ; preds = %if.then410.i, %for.body452.preheader.i, %for.body429.preheader.i
  %arrayidx441.3.sink1205.i = phi ptr [ %arrayidx441.3.i, %for.body429.preheader.i ], [ %arrayidx465.15.i, %for.body452.preheader.i ], [ %arrayidx416.i, %if.then410.i ]
  %655 = load i32, ptr %arrayidx441.3.sink1205.i, align 4
  %inc442.3.i = add nsw i32 %655, 1
  store i32 %inc442.3.i, ptr %arrayidx441.3.sink1205.i, align 4
  %656 = load i32, ptr %i_chroma_pred_mode.i, align 4
  %idxprom477.i = sext i32 %656 to i64
  %arrayidx478.i = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %idxprom477.i
  %657 = load i8, ptr %arrayidx478.i, align 1
  %idxprom479.i = zext i8 %657 to i64
  %arrayidx480.i = getelementptr inbounds [13 x i32], ptr %arrayidx475.i, i64 0, i64 %idxprom479.i
  br label %if.end483.sink.split.i

if.end483.sink.split.i:                           ; preds = %if.end471.i, %if.end398.thread.i
  %arrayidx396.sink1207.i = phi ptr [ %arrayidx396.i, %if.end398.thread.i ], [ %arrayidx480.i, %if.end471.i ]
  %.sink1206.i = phi i32 [ %614, %if.end398.thread.i ], [ 1, %if.end471.i ]
  %658 = load i32, ptr %arrayidx396.sink1207.i, align 4
  %add397.i = add nsw i32 %658, %.sink1206.i
  store i32 %add397.i, ptr %arrayidx396.sink1207.i, align 4
  br label %if.end483.i

if.end483.i:                                      ; preds = %if.end483.sink.split.i, %land.lhs.true400.i, %if.end398.i, %if.end318.i
  br i1 %tobool484.not.i, label %if.end556.i, label %if.then485.i

if.then485.i:                                     ; preds = %if.end483.i
  %659 = load i32, ptr %b_mbaff.i.i, align 4
  %660 = load i32, ptr %i_mb_y491.i, align 4
  %and494.i = and i32 %660, %659
  %idxprom495.i = sext i32 %and494.i to i64
  %arrayidx496.i = getelementptr inbounds [2 x ptr], ptr %deblock_strength.i, i64 0, i64 %idxprom495.i
  %661 = load ptr, ptr %arrayidx496.i, align 8
  %662 = load i32, ptr %i_mb_x498.i, align 16
  %idxprom499.i = sext i32 %662 to i64
  %arrayidx500.i = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %661, i64 %idxprom499.i
  tail call void @x264_macroblock_cache_load_deblock(ptr noundef nonnull %h) #17
  %663 = load ptr, ptr %type.i, align 8
  %664 = load i32, ptr %i_mb_xy.i, align 8
  %idxprom503.i = sext i32 %664 to i64
  %arrayidx504.i = getelementptr inbounds i8, ptr %663, i64 %idxprom503.i
  %665 = load i8, ptr %arrayidx504.i, align 1
  %switch.i = icmp ult i8 %665, 4
  br i1 %switch.i, label %if.then538.i, label %if.else539.i

if.then538.i:                                     ; preds = %if.then485.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %arrayidx500.i, i8 3, i64 32, i1 false)
  br label %if.end556.i

if.else539.i:                                     ; preds = %if.then485.i
  %shr488.i = lshr i32 4, %659
  %666 = load ptr, ptr %deblock_strength540.i, align 8
  %667 = load i32, ptr %i_type.i.i, align 16
  %cmp553.i = icmp eq i32 %667, 1
  %conv554.i = zext i1 %cmp553.i to i32
  tail call void %666(ptr noundef nonnull %non_zero_count.i, ptr noundef nonnull %ref.i, ptr noundef nonnull %mv.i, ptr noundef %arrayidx500.i, i32 noundef %shr488.i, i32 noundef %conv554.i) #17
  br label %if.end556.i

if.end556.i:                                      ; preds = %if.else539.i, %if.then538.i, %if.end483.i
  tail call void @x264_ratecontrol_mb(ptr noundef nonnull %h, i32 noundef %sub156.i) #17
  %668 = load i32, ptr %b_mbaff.i.i, align 4
  %tobool559.not.i = icmp eq i32 %668, 0
  br i1 %tobool559.not.i, label %if.else567.i, label %if.then560.i

if.then560.i:                                     ; preds = %if.end556.i
  %and561.i = and i32 %i_mb_y.01133.i, 1
  %add562.i = add nsw i32 %and561.i, %i_mb_x.01135.i
  %669 = load ptr, ptr %sps, align 16
  %i_mb_width564.i = getelementptr inbounds i8, ptr %669, i64 1084
  %670 = load i32, ptr %i_mb_width564.i, align 4
  %cmp565.i = icmp slt i32 %add562.i, %670
  %conv566.i = zext i1 %cmp565.i to i32
  %xor.i = xor i32 %i_mb_y.01133.i, %conv566.i
  br label %cleanup578.i

if.else567.i:                                     ; preds = %if.end556.i
  %inc568.i = add nsw i32 %i_mb_x.01135.i, 1
  %.pre1176.i = load ptr, ptr %sps, align 16
  %i_mb_width571.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre1176.i, i64 1084
  %.pre1177.i = load i32, ptr %i_mb_width571.phi.trans.insert.i, align 4
  br label %cleanup578.i

cleanup578.i:                                     ; preds = %if.else567.i, %if.then560.i
  %671 = phi i32 [ %670, %if.then560.i ], [ %.pre1177.i, %if.else567.i ]
  %i_mb_y.1.i = phi i32 [ %xor.i, %if.then560.i ], [ %i_mb_y.01133.i, %if.else567.i ]
  %i_mb_x.1.i = phi i32 [ %add562.i, %if.then560.i ], [ %inc568.i, %if.else567.i ]
  %cmp572.i = icmp eq i32 %i_mb_x.1.i, %671
  %inc575.i = zext i1 %cmp572.i to i32
  %spec.select.i = add nsw i32 %i_mb_y.1.i, %inc575.i
  %spec.select869.i = select i1 %cmp572.i, i32 0, i32 %i_mb_x.1.i
  %mul56.i = mul nsw i32 %spec.select.i, %671
  %add57.i = add nsw i32 %mul56.i, %spec.select869.i
  %672 = load i32, ptr %i_last_mb, align 8
  %cmp59.not.i = icmp sgt i32 %add57.i, %672
  br i1 %cmp59.not.i, label %while.end.i, label %while.body.i

while.end.i:                                      ; preds = %cleanup578.i, %cleanup578.thread1086.i
  %i_skip.6.i = phi i32 [ %i_skip.3.i, %cleanup578.thread1086.i ], [ %i_skip.2.i, %cleanup578.i ]
  %673 = load i32, ptr %b_cabac.i, align 16
  %tobool581.not.i = icmp eq i32 %673, 0
  br i1 %tobool581.not.i, label %if.else589.i, label %if.then582.i

while.end.thread.i:                               ; preds = %if.end40.i
  %674 = load i32, ptr %b_cabac.i, align 16
  %tobool581.not1184.i = icmp eq i32 %674, 0
  br i1 %tobool581.not1184.i, label %if.else589.thread.i, label %if.then582.i

if.else589.thread.i:                              ; preds = %while.end.thread.i
  %.pre11791188.i = load i64, ptr %cur_bits.i.i, align 8
  %.pre11801189.i = load i32, ptr %i_left.i.i, align 8
  br label %if.end595.i

if.then582.i:                                     ; preds = %while.end.thread.i, %while.end.i
  tail call void @x264_cabac_encode_flush(ptr noundef nonnull %h, ptr noundef nonnull %cabac.i) #17
  %675 = load ptr, ptr %p.i906.i, align 8
  store ptr %675, ptr %p.i.i, align 8
  %.pre1182.i = load i32, ptr %i_left.i.i, align 8
  br label %if.end600.i

if.else589.i:                                     ; preds = %while.end.i
  %cmp590.i = icmp sgt i32 %i_skip.6.i, 0
  %.pre1179.i = load i64, ptr %cur_bits.i.i, align 8
  %.pre1180.i = load i32, ptr %i_left.i.i, align 8
  br i1 %cmp590.i, label %if.then592.i, label %if.end595.i

if.then592.i:                                     ; preds = %if.else589.i
  %inc.i971.i = add nuw i32 %i_skip.6.i, 1
  %cmp.i972.i = icmp sgt i32 %inc.i971.i, 65535
  %shr.i973.i = lshr i32 %inc.i971.i, 16
  %spec.select.i974.i = select i1 %cmp.i972.i, i32 32, i32 0
  %spec.select18.i975.i = select i1 %cmp.i972.i, i32 %shr.i973.i, i32 %inc.i971.i
  %cmp1.i976.i = icmp sgt i32 %spec.select18.i975.i, 255
  %add.i977.i = or disjoint i32 %spec.select.i974.i, 16
  %shr3.i978.i = lshr i32 %spec.select18.i975.i, 8
  %size.1.i979.i = select i1 %cmp1.i976.i, i32 %add.i977.i, i32 %spec.select.i974.i
  %tmp.1.i980.i = select i1 %cmp1.i976.i, i32 %shr3.i978.i, i32 %spec.select18.i975.i
  %idxprom.i981.i = sext i32 %tmp.1.i980.i to i64
  %arrayidx.i982.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i981.i
  %676 = load i8, ptr %arrayidx.i982.i, align 1
  %conv.i983.i = zext i8 %676 to i32
  %add5.i984.i = add nuw nsw i32 %size.1.i979.i, %conv.i983.i
  %shr6.i985.i = lshr i32 %add5.i984.i, 1
  %sh_prom.i.i987.i = zext nneg i32 %shr6.i985.i to i64
  %shl.i.i988.i = shl i64 %.pre1179.i, %sh_prom.i.i987.i
  store i64 %shl.i.i988.i, ptr %cur_bits.i.i, align 8
  %sub.i.i990.i = sub nsw i32 %.pre1180.i, %shr6.i985.i
  store i32 %sub.i.i990.i, ptr %i_left.i.i, align 8
  %cmp.i.i991.i = icmp slt i32 %sub.i.i990.i, 33
  br i1 %cmp.i.i991.i, label %if.then.i.i1008.i, label %bs_write.exit.i992.i

if.then.i.i1008.i:                                ; preds = %if.then592.i
  %sh_prom6.i.i1009.i = zext nneg i32 %sub.i.i990.i to i64
  %shl7.i.i1010.i = shl i64 %shl.i.i988.i, %sh_prom6.i.i1009.i
  %add.i.i.i.i1011.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1010.i)
  %conv8.i.i1012.i = trunc i64 %add.i.i.i.i1011.i to i32
  %677 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i1012.i, ptr %677, align 4
  %678 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1014.i = add nsw i32 %678, 32
  %679 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1015.i = getelementptr inbounds i8, ptr %679, i64 4
  store ptr %add.ptr.i.i1015.i, ptr %p.i.i, align 8
  %.pre.i1016.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write.exit.i992.i

bs_write.exit.i992.i:                             ; preds = %if.then.i.i1008.i, %if.then592.i
  %680 = phi i32 [ %sub.i.i990.i, %if.then592.i ], [ %add.i.i1014.i, %if.then.i.i1008.i ]
  %681 = phi i64 [ %shl.i.i988.i, %if.then592.i ], [ %.pre.i1016.i, %if.then.i.i1008.i ]
  %add8.i993.i = add nuw nsw i32 %shr6.i985.i, 1
  %sh_prom.i20.i994.i = zext nneg i32 %add8.i993.i to i64
  %shl.i21.i995.i = shl i64 %681, %sh_prom.i20.i994.i
  %conv.i.i996.i = zext i32 %inc.i971.i to i64
  %or.i.i997.i = or i64 %shl.i21.i995.i, %conv.i.i996.i
  store i64 %or.i.i997.i, ptr %cur_bits.i.i, align 8
  %sub.i23.i998.i = sub nsw i32 %680, %add8.i993.i
  store i32 %sub.i23.i998.i, ptr %i_left.i.i, align 8
  %cmp.i24.i999.i = icmp slt i32 %sub.i23.i998.i, 33
  br i1 %cmp.i24.i999.i, label %if.then.i25.i1000.i, label %if.end595.i

if.then.i25.i1000.i:                              ; preds = %bs_write.exit.i992.i
  %sh_prom6.i26.i1001.i = zext nneg i32 %sub.i23.i998.i to i64
  %shl7.i27.i1002.i = shl i64 %or.i.i997.i, %sh_prom6.i26.i1001.i
  %add.i.i.i28.i1003.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i27.i1002.i)
  %conv8.i29.i1004.i = trunc i64 %add.i.i.i28.i1003.i to i32
  %682 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i29.i1004.i, ptr %682, align 4
  %683 = load i32, ptr %i_left.i.i, align 8
  %add.i31.i1006.i = add nsw i32 %683, 32
  %684 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i32.i1007.i = getelementptr inbounds i8, ptr %684, i64 4
  store ptr %add.ptr.i32.i1007.i, ptr %p.i.i, align 8
  %.pre1178.i = load i64, ptr %cur_bits.i.i, align 8
  br label %if.end595.i

if.end595.i:                                      ; preds = %if.then.i25.i1000.i, %bs_write.exit.i992.i, %if.else589.i, %if.else589.thread.i
  %685 = phi i32 [ %add.i31.i1006.i, %if.then.i25.i1000.i ], [ %sub.i23.i998.i, %bs_write.exit.i992.i ], [ %.pre1180.i, %if.else589.i ], [ %.pre11801189.i, %if.else589.thread.i ]
  %686 = phi i64 [ %.pre1178.i, %if.then.i25.i1000.i ], [ %or.i.i997.i, %bs_write.exit.i992.i ], [ %.pre1179.i, %if.else589.i ], [ %.pre11791188.i, %if.else589.thread.i ]
  %shl.i.i1019.i = shl i64 %686, 1
  %or.i.i1020.i = or disjoint i64 %shl.i.i1019.i, 1
  store i64 %or.i.i1020.i, ptr %cur_bits.i.i, align 8
  %dec.i.i1022.i = add nsw i32 %685, -1
  %cmp.i.i1023.i = icmp eq i32 %dec.i.i1022.i, 32
  br i1 %cmp.i.i1023.i, label %bs_write1.exit.thread.i.i, label %bs_write1.exit.i1024.i

bs_write1.exit.thread.i.i:                        ; preds = %if.end595.i
  %conv6.i.i1033.i = trunc i64 %or.i.i1020.i to i32
  %add5.i.i.i1034.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1033.i)
  %687 = load ptr, ptr %p.i.i, align 8
  store i32 %add5.i.i.i1034.i, ptr %687, align 4
  %688 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i1036.i = getelementptr inbounds i8, ptr %688, i64 4
  store ptr %add.ptr.i.i1036.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  br label %bs_rbsp_trailing.exit.i

bs_write1.exit.i1024.i:                           ; preds = %if.end595.i
  %and.i1025.i = and i32 %dec.i.i1022.i, 7
  %sh_prom.i.i1026.i = zext nneg i32 %and.i1025.i to i64
  %shl.i4.i.i = shl i64 %or.i.i1020.i, %sh_prom.i.i1026.i
  store i64 %shl.i4.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i1027.i = and i32 %dec.i.i1022.i, -8
  store i32 %sub.i.i1027.i, ptr %i_left.i.i, align 8
  %cmp.i7.i.i = icmp slt i32 %sub.i.i1027.i, 33
  %.pre1181.i = load ptr, ptr %p.i.i, align 8
  br i1 %cmp.i7.i.i, label %if.then.i8.i.i, label %bs_rbsp_trailing.exit.i

if.then.i8.i.i:                                   ; preds = %bs_write1.exit.i1024.i
  %sh_prom6.i.i1029.i = zext nneg i32 %sub.i.i1027.i to i64
  %689 = tail call i64 @llvm.bswap.i64(i64 %shl.i4.i.i)
  %add.i.i.i.i1030.i = lshr i64 %689, %sh_prom6.i.i1029.i
  %conv8.i.i1031.i = trunc i64 %add.i.i.i.i1030.i to i32
  store i32 %conv8.i.i1031.i, ptr %.pre1181.i, align 4
  %690 = load i32, ptr %i_left.i.i, align 8
  %add.i.i1032.i = add nsw i32 %690, 32
  store i32 %add.i.i1032.i, ptr %i_left.i.i, align 8
  %691 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i10.i.i = getelementptr inbounds i8, ptr %691, i64 4
  store ptr %add.ptr.i10.i.i, ptr %p.i.i, align 8
  br label %bs_rbsp_trailing.exit.i

bs_rbsp_trailing.exit.i:                          ; preds = %if.then.i8.i.i, %bs_write1.exit.i1024.i, %bs_write1.exit.thread.i.i
  %692 = phi ptr [ %add.ptr.i.i1036.i, %bs_write1.exit.thread.i.i ], [ %.pre1181.i, %bs_write1.exit.i1024.i ], [ %add.ptr.i10.i.i, %if.then.i8.i.i ]
  %693 = phi i32 [ 64, %bs_write1.exit.thread.i.i ], [ %sub.i.i1027.i, %bs_write1.exit.i1024.i ], [ %add.i.i1032.i, %if.then.i8.i.i ]
  %694 = load i64, ptr %cur_bits.i.i, align 8
  %and.i1039.i = and i32 %693, 31
  %sh_prom.i1040.i = zext nneg i32 %and.i1039.i to i64
  %shl.i.i = shl i64 %694, %sh_prom.i1040.i
  %conv.i1041.i = trunc i64 %shl.i.i to i32
  %add5.i.i1042.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i1041.i)
  store i32 %add5.i.i1042.i, ptr %692, align 4
  %695 = load i32, ptr %i_left.i.i, align 8
  %div.neg.i.i = sdiv i32 %695, -8
  %696 = load ptr, ptr %p.i.i, align 8
  %697 = sext i32 %div.neg.i.i to i64
  %698 = getelementptr i8, ptr %696, i64 %697
  %add.ptr.i1044.i = getelementptr i8, ptr %698, i64 8
  store ptr %add.ptr.i1044.i, ptr %p.i.i, align 8
  store i32 64, ptr %i_left.i.i, align 8
  br label %if.end600.i

if.end600.i:                                      ; preds = %bs_rbsp_trailing.exit.i, %if.then582.i
  %699 = phi i32 [ 64, %bs_rbsp_trailing.exit.i ], [ %.pre1182.i, %if.then582.i ]
  %700 = phi ptr [ %add.ptr.i1044.i, %bs_rbsp_trailing.exit.i ], [ %675, %if.then582.i ]
  %701 = load ptr, ptr %nal1.i.i, align 8
  %702 = load i32, ptr %out.i, align 16
  %idxprom.i1047.i = sext i32 %702 to i64
  %arrayidx.i1048.i = getelementptr inbounds %struct.x264_nal_t, ptr %701, i64 %idxprom.i1047.i
  %703 = load ptr, ptr %p_bitstream.i.i, align 8
  %704 = load ptr, ptr %bs.i, align 8
  %sub.ptr.lhs.cast.i.i1052.i = ptrtoint ptr %700 to i64
  %sub.ptr.rhs.cast.i.i1053.i = ptrtoint ptr %704 to i64
  %sub.ptr.sub.i.i1054.i = sub i64 %sub.ptr.lhs.cast.i.i1052.i, %sub.ptr.rhs.cast.i.i1053.i
  %sub.ptr.sub.tr.i.i1056.i = trunc i64 %sub.ptr.sub.i.i1054.i to i32
  %705 = shl i32 %sub.ptr.sub.tr.i.i1056.i, 3
  %reass.sub107 = sub i32 %705, %699
  %conv1.i.i1058.i = add i32 %reass.sub107, 64
  %div.i1059.i = sdiv i32 %conv1.i.i1058.i, 8
  %idxprom5.i.i = sext i32 %div.i1059.i to i64
  %arrayidx6.i.i = getelementptr inbounds i8, ptr %703, i64 %idxprom5.i.i
  %p_payload.i1060.i = getelementptr inbounds i8, ptr %arrayidx.i1048.i, i64 16
  %706 = load ptr, ptr %p_payload.i1060.i, align 8
  %sub.ptr.lhs.cast.i1061.i = ptrtoint ptr %arrayidx6.i.i to i64
  %sub.ptr.rhs.cast.i1062.i = ptrtoint ptr %706 to i64
  %sub.ptr.sub.i1063.i = sub i64 %sub.ptr.lhs.cast.i1061.i, %sub.ptr.rhs.cast.i1062.i
  %conv.i1064.i = trunc i64 %sub.ptr.sub.i1063.i to i32
  %i_payload.i1065.i = getelementptr inbounds i8, ptr %arrayidx.i1048.i, i64 8
  store i32 %conv.i1064.i, ptr %i_payload.i1065.i, align 8
  %707 = load i32, ptr %out.i, align 16
  %inc.i1066.i = add nsw i32 %707, 1
  store i32 %inc.i1066.i, ptr %out.i, align 16
  %708 = load i32, ptr %i_nals_allocated.i.i.i, align 4
  %cmp.not.i.i.i = icmp slt i32 %inc.i1066.i, %708
  br i1 %cmp.not.i.i.i, label %if.end604.i, label %if.then.i.i1067.i

if.then.i.i1067.i:                                ; preds = %if.end600.i
  %mul4.i.i.i = mul i32 %708, 48
  %call.i.i.i = tail call ptr @x264_malloc(i32 noundef %mul4.i.i.i) #17
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %x264_slice_write.exit, label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %if.then.i.i1067.i
  %709 = load ptr, ptr %nal1.i.i, align 8
  %710 = load i32, ptr %i_nals_allocated.i.i.i, align 4
  %conv10.i.i.i = sext i32 %710 to i64
  %mul11.i.i.i = mul nsw i64 %conv10.i.i.i, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call.i.i.i, ptr align 8 %709, i64 %mul11.i.i.i, i1 false)
  %711 = load ptr, ptr %nal1.i.i, align 8
  tail call void @x264_free(ptr noundef %711) #17
  store ptr %call.i.i.i, ptr %nal1.i.i, align 8
  %712 = load i32, ptr %i_nals_allocated.i.i.i, align 4
  %mul18.i.i.i = shl nsw i32 %712, 1
  store i32 %mul18.i.i.i, ptr %i_nals_allocated.i.i.i, align 4
  br label %if.end604.i

if.end604.i:                                      ; preds = %cleanup.thread.i.i.i, %if.end600.i
  %713 = load i32, ptr %i_last_mb, align 8
  %714 = load i32, ptr %i_threadslice_end.i, align 8
  %715 = load ptr, ptr %sps, align 16
  %i_mb_width608.i = getelementptr inbounds i8, ptr %715, i64 1084
  %716 = load i32, ptr %i_mb_width608.i, align 4
  %mul609.i = mul nsw i32 %716, %714
  %sub610.i = add nsw i32 %mul609.i, -1
  %cmp611.i = icmp eq i32 %713, %sub610.i
  br i1 %cmp611.i, label %if.then613.i, label %if.end43

if.then613.i:                                     ; preds = %if.end604.i
  %717 = load ptr, ptr %p.i.i, align 8
  %718 = load ptr, ptr %bs.i, align 8
  %sub.ptr.lhs.cast.i1069.i = ptrtoint ptr %717 to i64
  %sub.ptr.rhs.cast.i1070.i = ptrtoint ptr %718 to i64
  %sub.ptr.sub.i1071.i = sub i64 %sub.ptr.lhs.cast.i1069.i, %sub.ptr.rhs.cast.i1070.i
  %719 = load i32, ptr %i_left.i.i, align 8
  %sub.ptr.sub.tr.i1073.i = trunc i64 %sub.ptr.sub.i1071.i to i32
  %720 = shl i32 %sub.ptr.sub.tr.i1073.i, 3
  %721 = load i32, ptr %out.i, align 16
  %mul620.i = mul i32 %721, 40
  %722 = load i32, ptr %i_tex_bits.i, align 4
  %723 = load i32, ptr %stat, align 8
  %724 = add i32 %mul620.i, 64
  %725 = add i32 %719, %722
  %726 = add i32 %724, %720
  %727 = add i32 %725, %723
  %sub627.i = sub i32 %726, %727
  store i32 %sub627.i, ptr %i_misc_bits.i, align 8
  tail call fastcc void @x264_fdec_filter_row(ptr noundef nonnull %h, i32 noundef %714, i32 noundef 1)
  %.pre = load i32, ptr %i_last_mb, align 8
  br label %if.end43

x264_slice_write.exit:                            ; preds = %if.then.i.i1067.i, %cleanup578.thread.i
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %cabac_bak.i)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bs_bak.i)
  br label %cleanup

if.end43:                                         ; preds = %if.then613.i, %if.end604.i
  %728 = phi i32 [ %.pre, %if.then613.i ], [ %713, %if.end604.i ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %cabac_bak.i)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bs_bak.i)
  %add46 = add nsw i32 %728, 1
  store i32 %add46, ptr %i_first_mb, align 4
  %cmp.not.not = icmp slt i32 %728, %0
  br i1 %cmp.not.not, label %while.body, label %cleanup

cleanup:                                          ; preds = %if.end43, %entry, %x264_slice_write.exit
  %retval.0 = phi ptr [ inttoptr (i64 -1 to ptr), %x264_slice_write.exit ], [ null, %entry ], [ null, %if.end43 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_encoder_close(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %buf = alloca [200 x i8], align 16
  %list_count = alloca [3 x i64], align 16
  %i_width = getelementptr inbounds i8, ptr %h, i64 20
  %0 = load i32, ptr %i_width, align 4
  %mul = mul nsw i32 %0, 3
  %i_height = getelementptr inbounds i8, ptr %h, i64 24
  %1 = load i32, ptr %i_height, align 8
  %mul2 = mul nsw i32 %mul, %1
  %div = sdiv i32 %mul2, 2
  %conv = sext i32 %div to i64
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf) #17
  %i_mb_count = getelementptr inbounds i8, ptr %h, i64 27832
  %arrayidx = getelementptr inbounds i8, ptr %h, i64 28136
  %arrayidx3 = getelementptr inbounds i8, ptr %h, i64 28160
  %2 = load i64, ptr %arrayidx3, align 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %arrayidx7 = getelementptr inbounds i8, ptr %h, i64 27856
  %3 = load i64, ptr %arrayidx7, align 8
  %tobool8.not = icmp eq i64 %3, 0
  br i1 %tobool8.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx12 = getelementptr inbounds i8, ptr %h, i64 28008
  %4 = load i64, ptr %arrayidx12, align 8
  %tobool13 = icmp ne i64 %4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool13, %lor.rhs ]
  tail call void @x264_lookahead_delete(ptr noundef nonnull %h) #17
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
  %6 = load i32, ptr %i_threads, align 4
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %for.cond.preheader, label %if.end52

for.cond.preheader:                               ; preds = %lor.end
  %i_thread_frames = getelementptr inbounds i8, ptr %h, i64 1852
  %7 = load i32, ptr %i_thread_frames, align 4
  %cmp23 = icmp sgt i32 %7, 1
  br i1 %cmp23, label %for.body32.lr.ph, label %if.end52

for.body32.lr.ph:                                 ; preds = %for.cond.preheader
  %thread33 = getelementptr inbounds i8, ptr %h, i64 704
  br label %for.body32

for.cond.cleanup31:                               ; preds = %for.inc43
  %thread46 = getelementptr inbounds i8, ptr %h, i64 704
  %i_thread_phase = getelementptr inbounds i8, ptr %h, i64 1744
  %8 = load i32, ptr %i_thread_phase, align 16
  %idxprom47 = sext i32 %8 to i64
  %arrayidx48 = getelementptr inbounds [129 x ptr], ptr %thread46, i64 0, i64 %idxprom47
  %9 = load ptr, ptr %arrayidx48, align 8
  tail call void @x264_thread_sync_ratecontrol(ptr noundef nonnull %h, ptr noundef %9, ptr noundef nonnull %h) #17
  tail call void @x264_thread_sync_ratecontrol(ptr noundef %9, ptr noundef %9, ptr noundef nonnull %h) #17
  %i_frame = getelementptr inbounds i8, ptr %9, i64 1844
  %10 = load i32, ptr %i_frame, align 4
  %add = add nsw i32 %10, 1
  %11 = load i32, ptr %i_thread_frames, align 4
  %sub = sub i32 %add, %11
  %i_frame50 = getelementptr inbounds i8, ptr %h, i64 1844
  store i32 %sub, ptr %i_frame50, align 4
  br label %if.end52

for.body32:                                       ; preds = %for.body32.lr.ph, %for.inc43
  %12 = phi i32 [ %7, %for.body32.lr.ph ], [ %16, %for.inc43 ]
  %indvars.iv = phi i64 [ 0, %for.body32.lr.ph ], [ %indvars.iv.next, %for.inc43 ]
  %arrayidx35 = getelementptr inbounds [129 x ptr], ptr %thread33, i64 0, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx35, align 8
  %b_thread_active36 = getelementptr inbounds i8, ptr %13, i64 1740
  %14 = load i32, ptr %b_thread_active36, align 4
  %tobool37.not = icmp eq i32 %14, 0
  br i1 %tobool37.not, label %for.inc43, label %if.then38

if.then38:                                        ; preds = %for.body32
  %fenc = getelementptr inbounds i8, ptr %13, i64 14680
  %15 = load ptr, ptr %fenc, align 8
  tail call void @x264_frame_delete(ptr noundef %15) #17
  %.pre = load i32, ptr %i_thread_frames, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %for.body32, %if.then38
  %16 = phi i32 [ %12, %for.body32 ], [ %.pre, %if.then38 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = sext i32 %16 to i64
  %cmp29 = icmp slt i64 %indvars.iv.next, %17
  br i1 %cmp29, label %for.body32, label %for.cond.cleanup31

if.end52:                                         ; preds = %for.cond.preheader, %for.cond.cleanup31, %lor.end
  %i_frame53 = getelementptr inbounds i8, ptr %h, i64 1844
  %18 = load i32, ptr %i_frame53, align 4
  %inc54 = add nsw i32 %18, 1
  store i32 %inc54, ptr %i_frame53, align 4
  %i_frame_count = getelementptr inbounds i8, ptr %h, i64 27416
  %b_psnr = getelementptr inbounds i8, ptr %h, i64 476
  %f_frame_qp = getelementptr inbounds i8, ptr %h, i64 27480
  %i_frame_size = getelementptr inbounds i8, ptr %h, i64 27440
  %f_psnr_mean_y = getelementptr inbounds i8, ptr %h, i64 27672
  %f_psnr_mean_u = getelementptr inbounds i8, ptr %h, i64 27712
  %f_psnr_mean_v = getelementptr inbounds i8, ptr %h, i64 27752
  %f_psnr_average = getelementptr inbounds i8, ptr %h, i64 27632
  %i_ssd_global = getelementptr inbounds i8, ptr %h, i64 27592
  %arrayidx66 = getelementptr inbounds i8, ptr %h, i64 27424
  %19 = load i32, ptr %arrayidx66, align 4
  %cmp67 = icmp sgt i32 %19, 0
  br i1 %cmp67, label %if.then69, label %if.end132

if.then69:                                        ; preds = %if.end52
  %20 = load i32, ptr %b_psnr, align 4
  %tobool75.not = icmp eq i32 %20, 0
  %arrayidx121 = getelementptr inbounds i8, ptr %h, i64 27496
  %21 = load double, ptr %arrayidx121, align 8
  %conv122 = uitofp nneg i32 %19 to double
  %div123 = fdiv double %21, %conv122
  %arrayidx127 = getelementptr inbounds i8, ptr %h, i64 27456
  %22 = load i64, ptr %arrayidx127, align 8
  %conv128 = sitofp i64 %22 to double
  %div130 = fdiv double %conv128, %conv122
  br i1 %tobool75.not, label %if.else, label %if.then76

if.then76:                                        ; preds = %if.then69
  %arrayidx92 = getelementptr inbounds i8, ptr %h, i64 27688
  %23 = load double, ptr %arrayidx92, align 8
  %div94 = fdiv double %23, %conv122
  %arrayidx97 = getelementptr inbounds i8, ptr %h, i64 27728
  %24 = load double, ptr %arrayidx97, align 8
  %div99 = fdiv double %24, %conv122
  %arrayidx102 = getelementptr inbounds i8, ptr %h, i64 27768
  %25 = load double, ptr %arrayidx102, align 8
  %div104 = fdiv double %25, %conv122
  %arrayidx107 = getelementptr inbounds i8, ptr %h, i64 27648
  %26 = load double, ptr %arrayidx107, align 8
  %div109 = fdiv double %26, %conv122
  %arrayidx112 = getelementptr inbounds i8, ptr %h, i64 27608
  %27 = load i64, ptr %arrayidx112, align 8
  %conv113 = zext nneg i32 %19 to i64
  %mul114 = mul nsw i64 %conv113, %conv
  %conv.i = sitofp i64 %27 to double
  %conv1.i = sitofp i64 %mul114 to double
  %mul.i = fmul double %conv1.i, 6.502500e+04
  %div.i = fdiv double %conv.i, %mul.i
  %cmp.i = fcmp ugt double %div.i, 1.000000e-10
  br i1 %cmp.i, label %if.end.i, label %x264_psnr.exit

if.end.i:                                         ; preds = %if.then76
  %call.i = tail call double @log10(double noundef %div.i) #17
  %mul3.i = fmul double %call.i, -1.000000e+01
  %conv4.i = fptrunc double %mul3.i to float
  br label %x264_psnr.exit

x264_psnr.exit:                                   ; preds = %if.then76, %if.end.i
  %retval.0.i = phi float [ %conv4.i, %if.end.i ], [ 1.000000e+02, %if.then76 ]
  %conv115 = fpext float %retval.0.i to double
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.26, i32 noundef %19, double noundef %div123, double noundef %div130, double noundef %div94, double noundef %div99, double noundef %div104, double noundef %div109, double noundef %conv115) #17
  br label %if.end132

if.else:                                          ; preds = %if.then69
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26, i32 noundef %19, double noundef %div123, double noundef %div130) #17
  br label %if.end132

if.end132:                                        ; preds = %x264_psnr.exit, %if.else, %if.end52
  %arrayidx66.1 = getelementptr inbounds i8, ptr %h, i64 27432
  %28 = load i32, ptr %arrayidx66.1, align 4
  %cmp67.1 = icmp sgt i32 %28, 0
  br i1 %cmp67.1, label %if.then69.1, label %if.end132.1

if.then69.1:                                      ; preds = %if.end132
  %29 = load i32, ptr %b_psnr, align 4
  %tobool75.not.1 = icmp eq i32 %29, 0
  %arrayidx121.1 = getelementptr inbounds i8, ptr %h, i64 27512
  %30 = load double, ptr %arrayidx121.1, align 8
  %conv122.1 = uitofp nneg i32 %28 to double
  %div123.1 = fdiv double %30, %conv122.1
  %arrayidx127.1 = getelementptr inbounds i8, ptr %h, i64 27472
  %31 = load i64, ptr %arrayidx127.1, align 8
  %conv128.1 = sitofp i64 %31 to double
  %div130.1 = fdiv double %conv128.1, %conv122.1
  br i1 %tobool75.not.1, label %if.else.1, label %if.then76.1

if.then76.1:                                      ; preds = %if.then69.1
  %arrayidx92.1 = getelementptr inbounds i8, ptr %h, i64 27704
  %32 = load double, ptr %arrayidx92.1, align 8
  %div94.1 = fdiv double %32, %conv122.1
  %arrayidx97.1 = getelementptr inbounds i8, ptr %h, i64 27744
  %33 = load double, ptr %arrayidx97.1, align 8
  %div99.1 = fdiv double %33, %conv122.1
  %arrayidx102.1 = getelementptr inbounds i8, ptr %h, i64 27784
  %34 = load double, ptr %arrayidx102.1, align 8
  %div104.1 = fdiv double %34, %conv122.1
  %arrayidx107.1 = getelementptr inbounds i8, ptr %h, i64 27664
  %35 = load double, ptr %arrayidx107.1, align 8
  %div109.1 = fdiv double %35, %conv122.1
  %arrayidx112.1 = getelementptr inbounds i8, ptr %h, i64 27624
  %36 = load i64, ptr %arrayidx112.1, align 8
  %conv113.1 = zext nneg i32 %28 to i64
  %mul114.1 = mul nsw i64 %conv113.1, %conv
  %conv.i.1 = sitofp i64 %36 to double
  %conv1.i.1 = sitofp i64 %mul114.1 to double
  %mul.i.1 = fmul double %conv1.i.1, 6.502500e+04
  %div.i.1 = fdiv double %conv.i.1, %mul.i.1
  %cmp.i.1 = fcmp ugt double %div.i.1, 1.000000e-10
  br i1 %cmp.i.1, label %if.end.i.1, label %x264_psnr.exit.1

if.end.i.1:                                       ; preds = %if.then76.1
  %call.i.1 = tail call double @log10(double noundef %div.i.1) #17
  %mul3.i.1 = fmul double %call.i.1, -1.000000e+01
  %conv4.i.1 = fptrunc double %mul3.i.1 to float
  br label %x264_psnr.exit.1

x264_psnr.exit.1:                                 ; preds = %if.end.i.1, %if.then76.1
  %retval.0.i.1 = phi float [ %conv4.i.1, %if.end.i.1 ], [ 1.000000e+02, %if.then76.1 ]
  %conv115.1 = fpext float %retval.0.i.1 to double
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %28, double noundef %div123.1, double noundef %div130.1, double noundef %div94.1, double noundef %div99.1, double noundef %div104.1, double noundef %div109.1, double noundef %conv115.1) #17
  br label %if.end132.1

if.else.1:                                        ; preds = %if.then69.1
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef %28, double noundef %div123.1, double noundef %div130.1) #17
  br label %if.end132.1

if.end132.1:                                      ; preds = %if.else.1, %x264_psnr.exit.1, %if.end132
  %37 = load i32, ptr %i_frame_count, align 4
  %cmp67.2 = icmp sgt i32 %37, 0
  br i1 %cmp67.2, label %if.then69.2, label %if.end132.2

if.then69.2:                                      ; preds = %if.end132.1
  %38 = load i32, ptr %b_psnr, align 4
  %tobool75.not.2 = icmp eq i32 %38, 0
  %39 = load double, ptr %f_frame_qp, align 8
  %conv122.2 = uitofp nneg i32 %37 to double
  %div123.2 = fdiv double %39, %conv122.2
  %40 = load i64, ptr %i_frame_size, align 8
  %conv128.2 = sitofp i64 %40 to double
  %div130.2 = fdiv double %conv128.2, %conv122.2
  br i1 %tobool75.not.2, label %if.else.2, label %if.then76.2

if.then76.2:                                      ; preds = %if.then69.2
  %41 = load double, ptr %f_psnr_mean_y, align 8
  %div94.2 = fdiv double %41, %conv122.2
  %42 = load double, ptr %f_psnr_mean_u, align 8
  %div99.2 = fdiv double %42, %conv122.2
  %43 = load double, ptr %f_psnr_mean_v, align 8
  %div104.2 = fdiv double %43, %conv122.2
  %44 = load double, ptr %f_psnr_average, align 8
  %div109.2 = fdiv double %44, %conv122.2
  %45 = load i64, ptr %i_ssd_global, align 8
  %conv113.2 = zext nneg i32 %37 to i64
  %mul114.2 = mul nsw i64 %conv113.2, %conv
  %conv.i.2 = sitofp i64 %45 to double
  %conv1.i.2 = sitofp i64 %mul114.2 to double
  %mul.i.2 = fmul double %conv1.i.2, 6.502500e+04
  %div.i.2 = fdiv double %conv.i.2, %mul.i.2
  %cmp.i.2 = fcmp ugt double %div.i.2, 1.000000e-10
  br i1 %cmp.i.2, label %if.end.i.2, label %x264_psnr.exit.2

if.end.i.2:                                       ; preds = %if.then76.2
  %call.i.2 = tail call double @log10(double noundef %div.i.2) #17
  %mul3.i.2 = fmul double %call.i.2, -1.000000e+01
  %conv4.i.2 = fptrunc double %mul3.i.2 to float
  br label %x264_psnr.exit.2

x264_psnr.exit.2:                                 ; preds = %if.end.i.2, %if.then76.2
  %retval.0.i.2 = phi float [ %conv4.i.2, %if.end.i.2 ], [ 1.000000e+02, %if.then76.2 ]
  %conv115.2 = fpext float %retval.0.i.2 to double
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, i32 noundef %37, double noundef %div123.2, double noundef %div130.2, double noundef %div94.2, double noundef %div99.2, double noundef %div104.2, double noundef %div109.2, double noundef %conv115.2) #17
  br label %if.end132.2

if.else.2:                                        ; preds = %if.then69.2
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.24, i32 noundef %37, double noundef %div123.2, double noundef %div130.2) #17
  br label %if.end132.2

if.end132.2:                                      ; preds = %if.else.2, %x264_psnr.exit.2, %if.end132.1
  %arrayidx66.3 = getelementptr inbounds i8, ptr %h, i64 27428
  %46 = load i32, ptr %arrayidx66.3, align 4
  %cmp67.3 = icmp sgt i32 %46, 0
  br i1 %cmp67.3, label %if.then69.3, label %if.end132.3

if.then69.3:                                      ; preds = %if.end132.2
  %47 = load i32, ptr %b_psnr, align 4
  %tobool75.not.3 = icmp eq i32 %47, 0
  %arrayidx121.3 = getelementptr inbounds i8, ptr %h, i64 27504
  %48 = load double, ptr %arrayidx121.3, align 8
  %conv122.3 = uitofp nneg i32 %46 to double
  %div123.3 = fdiv double %48, %conv122.3
  %arrayidx127.3 = getelementptr inbounds i8, ptr %h, i64 27464
  %49 = load i64, ptr %arrayidx127.3, align 8
  %conv128.3 = sitofp i64 %49 to double
  %div130.3 = fdiv double %conv128.3, %conv122.3
  br i1 %tobool75.not.3, label %if.else.3, label %if.then76.3

if.then76.3:                                      ; preds = %if.then69.3
  %arrayidx92.3 = getelementptr inbounds i8, ptr %h, i64 27696
  %50 = load double, ptr %arrayidx92.3, align 8
  %div94.3 = fdiv double %50, %conv122.3
  %arrayidx97.3 = getelementptr inbounds i8, ptr %h, i64 27736
  %51 = load double, ptr %arrayidx97.3, align 8
  %div99.3 = fdiv double %51, %conv122.3
  %arrayidx102.3 = getelementptr inbounds i8, ptr %h, i64 27776
  %52 = load double, ptr %arrayidx102.3, align 8
  %div104.3 = fdiv double %52, %conv122.3
  %arrayidx107.3 = getelementptr inbounds i8, ptr %h, i64 27656
  %53 = load double, ptr %arrayidx107.3, align 8
  %div109.3 = fdiv double %53, %conv122.3
  %arrayidx112.3 = getelementptr inbounds i8, ptr %h, i64 27616
  %54 = load i64, ptr %arrayidx112.3, align 8
  %conv113.3 = zext nneg i32 %46 to i64
  %mul114.3 = mul nsw i64 %conv113.3, %conv
  %conv.i.3 = sitofp i64 %54 to double
  %conv1.i.3 = sitofp i64 %mul114.3 to double
  %mul.i.3 = fmul double %conv1.i.3, 6.502500e+04
  %div.i.3 = fdiv double %conv.i.3, %mul.i.3
  %cmp.i.3 = fcmp ugt double %div.i.3, 1.000000e-10
  br i1 %cmp.i.3, label %if.end.i.3, label %x264_psnr.exit.3

if.end.i.3:                                       ; preds = %if.then76.3
  %call.i.3 = tail call double @log10(double noundef %div.i.3) #17
  %mul3.i.3 = fmul double %call.i.3, -1.000000e+01
  %conv4.i.3 = fptrunc double %mul3.i.3 to float
  br label %x264_psnr.exit.3

x264_psnr.exit.3:                                 ; preds = %if.end.i.3, %if.then76.3
  %retval.0.i.3 = phi float [ %conv4.i.3, %if.end.i.3 ], [ 1.000000e+02, %if.then76.3 ]
  %conv115.3 = fpext float %retval.0.i.3 to double
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %46, double noundef %div123.3, double noundef %div130.3, double noundef %div94.3, double noundef %div99.3, double noundef %div104.3, double noundef %div109.3, double noundef %conv115.3) #17
  br label %if.end132.3

if.else.3:                                        ; preds = %if.then69.3
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.27, i32 noundef %46, double noundef %div123.3, double noundef %div130.3) #17
  br label %if.end132.3

if.end132.3:                                      ; preds = %if.else.3, %x264_psnr.exit.3, %if.end132.2
  %arrayidx66.4 = getelementptr inbounds i8, ptr %h, i64 27420
  %55 = load i32, ptr %arrayidx66.4, align 4
  %cmp67.4 = icmp sgt i32 %55, 0
  br i1 %cmp67.4, label %if.then69.4, label %if.end132.4

if.then69.4:                                      ; preds = %if.end132.3
  %56 = load i32, ptr %b_psnr, align 4
  %tobool75.not.4 = icmp eq i32 %56, 0
  %arrayidx121.4 = getelementptr inbounds i8, ptr %h, i64 27488
  %57 = load double, ptr %arrayidx121.4, align 8
  %conv122.4 = uitofp nneg i32 %55 to double
  %div123.4 = fdiv double %57, %conv122.4
  %arrayidx127.4 = getelementptr inbounds i8, ptr %h, i64 27448
  %58 = load i64, ptr %arrayidx127.4, align 8
  %conv128.4 = sitofp i64 %58 to double
  %div130.4 = fdiv double %conv128.4, %conv122.4
  br i1 %tobool75.not.4, label %if.else.4, label %if.then76.4

if.then76.4:                                      ; preds = %if.then69.4
  %arrayidx92.4 = getelementptr inbounds i8, ptr %h, i64 27680
  %59 = load double, ptr %arrayidx92.4, align 8
  %div94.4 = fdiv double %59, %conv122.4
  %arrayidx97.4 = getelementptr inbounds i8, ptr %h, i64 27720
  %60 = load double, ptr %arrayidx97.4, align 8
  %div99.4 = fdiv double %60, %conv122.4
  %arrayidx102.4 = getelementptr inbounds i8, ptr %h, i64 27760
  %61 = load double, ptr %arrayidx102.4, align 8
  %div104.4 = fdiv double %61, %conv122.4
  %arrayidx107.4 = getelementptr inbounds i8, ptr %h, i64 27640
  %62 = load double, ptr %arrayidx107.4, align 8
  %div109.4 = fdiv double %62, %conv122.4
  %arrayidx112.4 = getelementptr inbounds i8, ptr %h, i64 27600
  %63 = load i64, ptr %arrayidx112.4, align 8
  %conv113.4 = zext nneg i32 %55 to i64
  %mul114.4 = mul nsw i64 %conv113.4, %conv
  %conv.i.4 = sitofp i64 %63 to double
  %conv1.i.4 = sitofp i64 %mul114.4 to double
  %mul.i.4 = fmul double %conv1.i.4, 6.502500e+04
  %div.i.4 = fdiv double %conv.i.4, %mul.i.4
  %cmp.i.4 = fcmp ugt double %div.i.4, 1.000000e-10
  br i1 %cmp.i.4, label %if.end.i.4, label %x264_psnr.exit.4

if.end.i.4:                                       ; preds = %if.then76.4
  %call.i.4 = tail call double @log10(double noundef %div.i.4) #17
  %mul3.i.4 = fmul double %call.i.4, -1.000000e+01
  %conv4.i.4 = fptrunc double %mul3.i.4 to float
  br label %x264_psnr.exit.4

x264_psnr.exit.4:                                 ; preds = %if.end.i.4, %if.then76.4
  %retval.0.i.4 = phi float [ %conv4.i.4, %if.end.i.4 ], [ 1.000000e+02, %if.then76.4 ]
  %conv115.4 = fpext float %retval.0.i.4 to double
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.25, i32 noundef %55, double noundef %div123.4, double noundef %div130.4, double noundef %div94.4, double noundef %div99.4, double noundef %div104.4, double noundef %div109.4, double noundef %conv115.4) #17
  br label %if.end132.4

if.else.4:                                        ; preds = %if.then69.4
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef %55, double noundef %div123.4, double noundef %div130.4) #17
  br label %if.end132.4

if.end132.4:                                      ; preds = %if.else.4, %x264_psnr.exit.4, %if.end132.3
  %i_bframe = getelementptr inbounds i8, ptr %h, i64 100
  %64 = load i32, ptr %i_bframe, align 4
  %tobool137.not = icmp eq i32 %64, 0
  br i1 %tobool137.not, label %for.inc212.16.1, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end132.4
  %65 = load i32, ptr %i_frame_count, align 8
  %tobool141.not = icmp eq i32 %65, 0
  br i1 %tobool141.not, label %for.inc212.16.1, label %for.cond144.preheader

for.cond144.preheader:                            ; preds = %land.lhs.true
  %cmp147.not1661 = icmp slt i32 %64, 0
  br i1 %cmp147.not1661, label %for.cond.cleanup166, label %for.body150.lr.ph

for.body150.lr.ph:                                ; preds = %for.cond144.preheader
  %i_consecutive_bframes = getelementptr inbounds i8, ptr %h, i64 27520
  %66 = add nuw i32 %64, 1
  %wide.trip.count = zext i32 %66 to i64
  %min.iters.check = icmp ult i32 %64, 15
  br i1 %min.iters.check, label %for.body150.preheader, label %vector.ph

for.body150.preheader:                            ; preds = %middle.block, %for.body150.lr.ph
  %indvars.iv1695.ph = phi i64 [ 0, %for.body150.lr.ph ], [ %n.vec, %middle.block ]
  %den.01663.ph = phi i32 [ 0, %for.body150.lr.ph ], [ %88, %middle.block ]
  br label %for.body150

vector.ph:                                        ; preds = %for.body150.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967280
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %83, %vector.body ]
  %vec.phi1820 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %84, %vector.body ]
  %vec.phi1821 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %85, %vector.body ]
  %vec.phi1822 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %86, %vector.body ]
  %67 = getelementptr inbounds [17 x i32], ptr %i_consecutive_bframes, i64 0, i64 %index
  %68 = getelementptr inbounds i8, ptr %67, i64 16
  %69 = getelementptr inbounds i8, ptr %67, i64 32
  %70 = getelementptr inbounds i8, ptr %67, i64 48
  %wide.load = load <4 x i32>, ptr %67, align 4
  %wide.load1823 = load <4 x i32>, ptr %68, align 4
  %wide.load1824 = load <4 x i32>, ptr %69, align 4
  %wide.load1825 = load <4 x i32>, ptr %70, align 4
  %71 = trunc <4 x i64> %vec.ind to <4 x i32>
  %72 = add <4 x i32> %71, <i32 1, i32 1, i32 1, i32 1>
  %73 = trunc <4 x i64> %vec.ind to <4 x i32>
  %74 = add <4 x i32> %73, <i32 5, i32 5, i32 5, i32 5>
  %75 = trunc <4 x i64> %vec.ind to <4 x i32>
  %76 = add <4 x i32> %75, <i32 9, i32 9, i32 9, i32 9>
  %77 = trunc <4 x i64> %vec.ind to <4 x i32>
  %78 = add <4 x i32> %77, <i32 13, i32 13, i32 13, i32 13>
  %79 = mul nsw <4 x i32> %wide.load, %72
  %80 = mul nsw <4 x i32> %wide.load1823, %74
  %81 = mul nsw <4 x i32> %wide.load1824, %76
  %82 = mul nsw <4 x i32> %wide.load1825, %78
  %83 = add <4 x i32> %79, %vec.phi
  %84 = add <4 x i32> %80, %vec.phi1820
  %85 = add <4 x i32> %81, %vec.phi1821
  %86 = add <4 x i32> %82, %vec.phi1822
  %index.next = add nuw i64 %index, 16
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16>
  %87 = icmp eq i64 %index.next, %n.vec
  br i1 %87, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %84, %83
  %bin.rdx1826 = add <4 x i32> %85, %bin.rdx
  %bin.rdx1827 = add <4 x i32> %86, %bin.rdx1826
  %88 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1827)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond161.preheader, label %for.body150.preheader

for.cond161.preheader:                            ; preds = %for.body150, %middle.block
  %add156.lcssa = phi i32 [ %88, %middle.block ], [ %add156, %for.body150 ]
  br i1 %cmp147.not1661, label %for.cond.cleanup166, label %for.body167.lr.ph

for.body167.lr.ph:                                ; preds = %for.cond161.preheader
  %i_consecutive_bframes172 = getelementptr inbounds i8, ptr %h, i64 27520
  %conv177 = sitofp i32 %add156.lcssa to double
  br label %for.body167

for.body150:                                      ; preds = %for.body150.preheader, %for.body150
  %indvars.iv1695 = phi i64 [ %indvars.iv.next1696, %for.body150 ], [ %indvars.iv1695.ph, %for.body150.preheader ]
  %den.01663 = phi i32 [ %add156, %for.body150 ], [ %den.01663.ph, %for.body150.preheader ]
  %indvars.iv.next1696 = add nuw nsw i64 %indvars.iv1695, 1
  %arrayidx154 = getelementptr inbounds [17 x i32], ptr %i_consecutive_bframes, i64 0, i64 %indvars.iv1695
  %89 = load i32, ptr %arrayidx154, align 4
  %90 = trunc nuw i64 %indvars.iv.next1696 to i32
  %mul155 = mul nsw i32 %89, %90
  %add156 = add nsw i32 %mul155, %den.01663
  %exitcond.not = icmp eq i64 %indvars.iv.next1696, %wide.trip.count
  br i1 %exitcond.not, label %for.cond161.preheader, label %for.body150, !llvm.loop !26

for.cond.cleanup166:                              ; preds = %for.body167, %for.cond144.preheader, %for.cond161.preheader
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.32, ptr noundef nonnull %buf) #17
  br label %for.inc212.16.1

for.body167:                                      ; preds = %for.body167.lr.ph, %for.body167
  %indvars.iv1698 = phi i64 [ 0, %for.body167.lr.ph ], [ %indvars.iv.next1699, %for.body167 ]
  %p.01666 = phi ptr [ %buf, %for.body167.lr.ph ], [ %add.ptr, %for.body167 ]
  %indvars.iv.next1699 = add nuw nsw i64 %indvars.iv1698, 1
  %91 = trunc nuw nsw i64 %indvars.iv.next1699 to i32
  %conv169 = uitofp nneg i32 %91 to double
  %mul170 = fmul double %conv169, 1.000000e+02
  %arrayidx174 = getelementptr inbounds [17 x i32], ptr %i_consecutive_bframes172, i64 0, i64 %indvars.iv1698
  %92 = load i32, ptr %arrayidx174, align 4
  %conv175 = sitofp i32 %92 to double
  %mul176 = fmul double %mul170, %conv175
  %div178 = fdiv double %mul176, %conv177
  %call179 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.01666, ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %div178) #17
  %idx.ext = sext i32 %call179 to i64
  %add.ptr = getelementptr inbounds i8, ptr %p.01666, i64 %idx.ext
  %93 = load i32, ptr %i_bframe, align 4
  %94 = sext i32 %93 to i64
  %cmp164.not.not = icmp slt i64 %indvars.iv1698, %94
  br i1 %cmp164.not.not, label %for.body167, label %for.cond.cleanup166

for.inc212.16.1:                                  ; preds = %for.cond.cleanup166, %land.lhs.true, %if.end132.4
  %i_mb_partition = getelementptr inbounds i8, ptr %h, i64 28592
  %95 = load i64, ptr %i_mb_partition, align 8
  %arrayidx204.1 = getelementptr inbounds i8, ptr %h, i64 28600
  %96 = load i64, ptr %arrayidx204.1, align 8
  %arrayidx204.2 = getelementptr inbounds i8, ptr %h, i64 28608
  %97 = load i64, ptr %arrayidx204.2, align 8
  %arrayidx204.3 = getelementptr inbounds i8, ptr %h, i64 28616
  %98 = load i64, ptr %arrayidx204.3, align 8
  %arrayidx204.4 = getelementptr inbounds i8, ptr %h, i64 28624
  %99 = load i64, ptr %arrayidx204.4, align 8
  %add211.4 = add nsw i64 %95, %99
  %arrayidx204.5 = getelementptr inbounds i8, ptr %h, i64 28632
  %100 = load i64, ptr %arrayidx204.5, align 8
  %add211.5 = add nsw i64 %96, %100
  %arrayidx204.6 = getelementptr inbounds i8, ptr %h, i64 28640
  %101 = load i64, ptr %arrayidx204.6, align 8
  %add211.6 = add nsw i64 %97, %101
  %arrayidx204.7 = getelementptr inbounds i8, ptr %h, i64 28648
  %102 = load i64, ptr %arrayidx204.7, align 8
  %add211.7 = add nsw i64 %98, %102
  %arrayidx204.8 = getelementptr inbounds i8, ptr %h, i64 28656
  %103 = load i64, ptr %arrayidx204.8, align 8
  %add211.8 = add nsw i64 %add211.4, %103
  %arrayidx204.9 = getelementptr inbounds i8, ptr %h, i64 28664
  %104 = load i64, ptr %arrayidx204.9, align 8
  %add211.9 = add nsw i64 %add211.5, %104
  %arrayidx204.10 = getelementptr inbounds i8, ptr %h, i64 28672
  %105 = load i64, ptr %arrayidx204.10, align 8
  %add211.10 = add nsw i64 %add211.6, %105
  %arrayidx204.11 = getelementptr inbounds i8, ptr %h, i64 28680
  %106 = load i64, ptr %arrayidx204.11, align 8
  %add211.11 = add nsw i64 %add211.7, %106
  %arrayidx204.13 = getelementptr inbounds i8, ptr %h, i64 28696
  %107 = load i64, ptr %arrayidx204.13, align 8
  %add211.13 = add nsw i64 %add211.11, %107
  %arrayidx204.14 = getelementptr inbounds i8, ptr %h, i64 28704
  %108 = load i64, ptr %arrayidx204.14, align 8
  %arrayidx204.15 = getelementptr inbounds i8, ptr %h, i64 28712
  %109 = load i64, ptr %arrayidx204.15, align 8
  %arrayidx204.16 = getelementptr inbounds i8, ptr %h, i64 28720
  %110 = load i64, ptr %arrayidx204.16, align 8
  %arrayidx204.3.1 = getelementptr inbounds i8, ptr %h, i64 28752
  %111 = load i64, ptr %arrayidx204.3.1, align 8
  %arrayidx204.7.1 = getelementptr inbounds i8, ptr %h, i64 28784
  %112 = load i64, ptr %arrayidx204.7.1, align 8
  %add211.7.1 = add nsw i64 %111, %112
  %arrayidx204.11.1 = getelementptr inbounds i8, ptr %h, i64 28816
  %113 = load i64, ptr %arrayidx204.11.1, align 8
  %add211.11.1 = add nsw i64 %add211.7.1, %113
  %arrayidx204.13.1 = getelementptr inbounds i8, ptr %h, i64 28832
  %114 = load i64, ptr %arrayidx204.13.1, align 8
  %add211.13.1 = add nsw i64 %add211.11.1, %114
  %arrayidx204.14.1 = getelementptr inbounds i8, ptr %h, i64 28840
  %115 = load i64, ptr %arrayidx204.14.1, align 8
  %arrayidx204.15.1 = getelementptr inbounds i8, ptr %h, i64 28848
  %116 = load i64, ptr %arrayidx204.15.1, align 8
  %arrayidx204.16.1 = getelementptr inbounds i8, ptr %h, i64 28856
  %117 = load i64, ptr %arrayidx204.16.1, align 8
  %arrayidx220 = getelementptr inbounds i8, ptr %h, i64 27424
  %118 = load i32, ptr %arrayidx220, align 8
  %cmp221 = icmp sgt i32 %118, 0
  br i1 %cmp221, label %if.then223, label %if.end239

if.then223:                                       ; preds = %for.inc212.16.1
  %mb = getelementptr inbounds i8, ptr %h, i64 16368
  %119 = load i32, ptr %mb, align 16
  %mul234 = mul nsw i32 %119, %118
  %conv235 = sitofp i32 %mul234 to double
  %div236 = fdiv double %conv235, 1.000000e+02
  %cond.i = select i1 %5, ptr @.str.83, ptr @.str.84
  %arrayidx.i = getelementptr inbounds i8, ptr %h, i64 28152
  %120 = load i64, ptr %arrayidx.i, align 8
  %conv.i1603 = sitofp i64 %120 to double
  %div.i1604 = fdiv double %conv.i1603, %div236
  %arrayidx1.i = getelementptr inbounds i8, ptr %h, i64 28144
  %121 = load i64, ptr %arrayidx1.i, align 8
  %conv2.i = sitofp i64 %121 to double
  %div3.i = fdiv double %conv2.i, %div236
  %122 = load i64, ptr %arrayidx, align 8
  %conv5.i = sitofp i64 %122 to double
  %div6.i = fdiv double %conv5.i, %div236
  %call.i1605 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %buf, ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %cond.i, double noundef %div.i1604, double noundef %div3.i, double noundef %div6.i) #17
  br i1 %5, label %if.then.i, label %x264_print_intra.exit

if.then.i:                                        ; preds = %if.then223
  %idx.ext.i = sext i32 %call.i1605 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %buf, i64 %idx.ext.i
  %123 = load i64, ptr %arrayidx3, align 8
  %conv9.i = sitofp i64 %123 to double
  %div10.i = fdiv double %conv9.i, %div236
  %call11.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i, ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %div10.i) #17
  br label %x264_print_intra.exit

x264_print_intra.exit:                            ; preds = %if.then223, %if.then.i
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef nonnull %buf) #17
  br label %if.end239

if.end239:                                        ; preds = %x264_print_intra.exit, %for.inc212.16.1
  %124 = load i32, ptr %i_frame_count, align 8
  %cmp243 = icmp sgt i32 %124, 0
  br i1 %cmp243, label %if.then245, label %if.end291

if.then245:                                       ; preds = %if.end239
  %mb255 = getelementptr inbounds i8, ptr %h, i64 16368
  %125 = load i32, ptr %mb255, align 16
  %mul257 = mul nsw i32 %125, %124
  %conv258 = sitofp i32 %mul257 to double
  %div259 = fdiv double %conv258, 1.000000e+02
  %cond.i1608 = select i1 %5, ptr @.str.83, ptr @.str.84
  %arrayidx.i1609 = getelementptr inbounds i8, ptr %h, i64 27848
  %126 = load i64, ptr %arrayidx.i1609, align 8
  %conv.i1610 = sitofp i64 %126 to double
  %div.i1611 = fdiv double %conv.i1610, %div259
  %arrayidx1.i1612 = getelementptr inbounds i8, ptr %h, i64 27840
  %127 = load i64, ptr %arrayidx1.i1612, align 8
  %conv2.i1613 = sitofp i64 %127 to double
  %div3.i1614 = fdiv double %conv2.i1613, %div259
  %128 = load i64, ptr %i_mb_count, align 8
  %conv5.i1615 = sitofp i64 %128 to double
  %div6.i1616 = fdiv double %conv5.i1615, %div259
  %call.i1617 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %buf, ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %cond.i1608, double noundef %div.i1611, double noundef %div3.i1614, double noundef %div6.i1616) #17
  br i1 %5, label %if.then.i1618, label %x264_print_intra.exit1626

if.then.i1618:                                    ; preds = %if.then245
  %idx.ext.i1619 = sext i32 %call.i1617 to i64
  %add.ptr.i1620 = getelementptr inbounds i8, ptr %buf, i64 %idx.ext.i1619
  %arrayidx8.i1621 = getelementptr inbounds i8, ptr %h, i64 27856
  %129 = load i64, ptr %arrayidx8.i1621, align 8
  %conv9.i1622 = sitofp i64 %129 to double
  %div10.i1623 = fdiv double %conv9.i1622, %div259
  %call11.i1624 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i1620, ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %div10.i1623) #17
  br label %x264_print_intra.exit1626

x264_print_intra.exit1626:                        ; preds = %if.then245, %if.then.i1618
  %conv265 = sitofp i64 %110 to double
  %mul266 = fmul double %div259, 4.000000e+00
  %div267 = fdiv double %conv265, %mul266
  %add270 = add nsw i64 %109, %108
  %conv271 = sitofp i64 %add270 to double
  %div273 = fdiv double %conv271, %mul266
  %conv275 = sitofp i64 %add211.13 to double
  %div277 = fdiv double %conv275, %mul266
  %add280 = add nsw i64 %add211.10, %add211.9
  %conv281 = sitofp i64 %add280 to double
  %div283 = fdiv double %conv281, %mul266
  %conv285 = sitofp i64 %add211.8 to double
  %div287 = fdiv double %conv285, %mul266
  %arrayidx288 = getelementptr inbounds i8, ptr %h, i64 27880
  %130 = load i64, ptr %arrayidx288, align 8
  %conv289 = sitofp i64 %130 to double
  %div290 = fdiv double %conv289, %div259
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.34, ptr noundef nonnull %buf, double noundef %div267, double noundef %div273, double noundef %div277, double noundef %div283, double noundef %div287, double noundef %div290) #17
  br label %if.end291

if.end291:                                        ; preds = %x264_print_intra.exit1626, %if.end239
  %arrayidx294 = getelementptr inbounds i8, ptr %h, i64 27420
  %131 = load i32, ptr %arrayidx294, align 4
  %cmp295 = icmp sgt i32 %131, 0
  br i1 %cmp295, label %if.then297, label %if.end424

if.then297:                                       ; preds = %if.end291
  %arrayidx301 = getelementptr inbounds i8, ptr %h, i64 27984
  %mb307 = getelementptr inbounds i8, ptr %h, i64 16368
  %132 = load i32, ptr %mb307, align 16
  %mul309 = mul nsw i32 %132, %131
  %conv310 = sitofp i32 %mul309 to double
  %div311 = fdiv double %conv310, 1.000000e+02
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %list_count) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %list_count, i8 0, i64 24, i1 false)
  %cond.i1628 = select i1 %5, ptr @.str.83, ptr @.str.84
  %arrayidx.i1629 = getelementptr inbounds i8, ptr %h, i64 28000
  %133 = load i64, ptr %arrayidx.i1629, align 8
  %conv.i1630 = sitofp i64 %133 to double
  %div.i1631 = fdiv double %conv.i1630, %div311
  %arrayidx1.i1632 = getelementptr inbounds i8, ptr %h, i64 27992
  %134 = load i64, ptr %arrayidx1.i1632, align 8
  %conv2.i1633 = sitofp i64 %134 to double
  %div3.i1634 = fdiv double %conv2.i1633, %div311
  %135 = load i64, ptr %arrayidx301, align 8
  %conv5.i1635 = sitofp i64 %135 to double
  %div6.i1636 = fdiv double %conv5.i1635, %div311
  %call.i1637 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %buf, ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %cond.i1628, double noundef %div.i1631, double noundef %div3.i1634, double noundef %div6.i1636) #17
  br i1 %5, label %if.then.i1638, label %for.cond322.preheader.preheader

if.then.i1638:                                    ; preds = %if.then297
  %idx.ext.i1639 = sext i32 %call.i1637 to i64
  %add.ptr.i1640 = getelementptr inbounds i8, ptr %buf, i64 %idx.ext.i1639
  %arrayidx8.i1641 = getelementptr inbounds i8, ptr %h, i64 28008
  %136 = load i64, ptr %arrayidx8.i1641, align 8
  %conv9.i1642 = sitofp i64 %136 to double
  %div10.i1643 = fdiv double %conv9.i1642, %div311
  %call11.i1644 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i1640, ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %div10.i1643) #17
  br label %for.cond322.preheader.preheader

for.cond322.preheader.preheader:                  ; preds = %if.then297, %if.then.i1638
  br label %for.cond322.preheader

for.cond322.preheader:                            ; preds = %for.cond322.preheader.preheader, %if.end354.1
  %indvars.iv1716 = phi i64 [ %indvars.iv.next1717, %if.end354.1 ], [ 0, %for.cond322.preheader.preheader ]
  %arrayidx328 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %indvars.iv1716
  %arrayidx335 = getelementptr inbounds i8, ptr %arrayidx328, i64 2
  %arrayidx347 = getelementptr inbounds [19 x i64], ptr %arrayidx301, i64 0, i64 %indvars.iv1716
  %137 = load i8, ptr %arrayidx328, align 4
  %138 = load i8, ptr %arrayidx335, align 2
  %tobool339 = icmp ne i8 %137, 0
  %tobool341 = icmp ne i8 %138, 0
  %or.cond = select i1 %tobool339, i1 true, i1 %tobool341
  br i1 %or.cond, label %if.then342, label %if.end354

for.cond.cleanup320:                              ; preds = %if.end354.1
  %arrayidx364 = getelementptr inbounds i8, ptr %h, i64 28752
  %139 = load i64, ptr %arrayidx364, align 8
  %140 = load i64, ptr %list_count, align 16
  %add366 = add nsw i64 %140, %139
  %arrayidx370 = getelementptr inbounds i8, ptr %h, i64 28784
  %141 = load i64, ptr %arrayidx370, align 8
  %arrayidx371 = getelementptr inbounds i8, ptr %list_count, i64 8
  %142 = load i64, ptr %arrayidx371, align 8
  %add372 = add nsw i64 %142, %141
  %arrayidx376 = getelementptr inbounds i8, ptr %h, i64 28816
  %143 = load i64, ptr %arrayidx376, align 8
  %arrayidx377 = getelementptr inbounds i8, ptr %list_count, i64 16
  %144 = load i64, ptr %arrayidx377, align 16
  %add378 = add nsw i64 %144, %143
  %arrayidx382 = getelementptr inbounds i8, ptr %h, i64 28824
  %145 = load i64, ptr %arrayidx382, align 8
  %add383 = add nsw i64 %145, 2
  %div384 = sdiv i64 %add383, 4
  %arrayidx385 = getelementptr inbounds i8, ptr %h, i64 28040
  %146 = load i64, ptr %arrayidx385, align 8
  %add386 = add nsw i64 %div384, %146
  store i64 %add386, ptr %arrayidx385, align 8
  %add389 = add nsw i64 %add372, %add366
  %add391 = add nsw i64 %add389, %add378
  %conv392 = sitofp i64 %add391 to double
  %div393 = fdiv double %conv392, 1.000000e+02
  %conv396 = sitofp i64 %117 to double
  %mul397 = fmul double %div311, 4.000000e+00
  %div398 = fdiv double %conv396, %mul397
  %add401 = add nsw i64 %116, %115
  %conv402 = sitofp i64 %add401 to double
  %div404 = fdiv double %conv402, %mul397
  %conv406 = sitofp i64 %add211.13.1 to double
  %div408 = fdiv double %conv406, %mul397
  %conv410 = sitofp i64 %add386 to double
  %div411 = fdiv double %conv410, %div311
  %arrayidx412 = getelementptr inbounds i8, ptr %h, i64 28128
  %147 = load i64, ptr %arrayidx412, align 8
  %conv413 = sitofp i64 %147 to double
  %div414 = fdiv double %conv413, %div311
  %conv416 = sitofp i64 %add366 to double
  %div417 = fdiv double %conv416, %div393
  %conv419 = sitofp i64 %add372 to double
  %div420 = fdiv double %conv419, %div393
  %conv422 = sitofp i64 %add378 to double
  %div423 = fdiv double %conv422, %div393
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 2, ptr noundef nonnull @.str.35, ptr noundef nonnull %buf, double noundef %div398, double noundef %div404, double noundef %div408, double noundef %div411, double noundef %div414, double noundef %div417, double noundef %div420, double noundef %div423) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %list_count) #17
  br label %if.end424

if.then342:                                       ; preds = %for.cond322.preheader
  %conv338 = zext i8 %138 to i64
  %conv332 = zext i8 %137 to i64
  %148 = load i64, ptr %arrayidx347, align 8
  %mul348 = shl nsw i64 %148, 1
  %mul3491601 = add nuw nsw i64 %conv332, 1
  %add350 = mul nuw nsw i64 %mul3491601, %conv338
  %arrayidx352 = getelementptr inbounds [3 x i64], ptr %list_count, i64 0, i64 %add350
  %149 = load i64, ptr %arrayidx352, align 8
  %add353 = add nsw i64 %149, %mul348
  store i64 %add353, ptr %arrayidx352, align 8
  br label %if.end354

if.end354:                                        ; preds = %for.cond322.preheader, %if.then342
  %arrayidx331.1 = getelementptr inbounds i8, ptr %arrayidx328, i64 1
  %150 = load i8, ptr %arrayidx331.1, align 1
  %arrayidx337.1 = getelementptr inbounds i8, ptr %arrayidx328, i64 3
  %151 = load i8, ptr %arrayidx337.1, align 1
  %tobool339.1 = icmp ne i8 %150, 0
  %tobool341.1 = icmp ne i8 %151, 0
  %or.cond.1 = select i1 %tobool339.1, i1 true, i1 %tobool341.1
  br i1 %or.cond.1, label %if.then342.1, label %if.end354.1

if.then342.1:                                     ; preds = %if.end354
  %conv338.1 = zext i8 %151 to i64
  %conv332.1 = zext i8 %150 to i64
  %152 = load i64, ptr %arrayidx347, align 8
  %mul348.1 = shl nsw i64 %152, 1
  %mul3491601.1 = add nuw nsw i64 %conv332.1, 1
  %add350.1 = mul nuw nsw i64 %mul3491601.1, %conv338.1
  %arrayidx352.1 = getelementptr inbounds [3 x i64], ptr %list_count, i64 0, i64 %add350.1
  %153 = load i64, ptr %arrayidx352.1, align 8
  %add353.1 = add nsw i64 %153, %mul348.1
  store i64 %add353.1, ptr %arrayidx352.1, align 8
  br label %if.end354.1

if.end354.1:                                      ; preds = %if.then342.1, %if.end354
  %indvars.iv.next1717 = add nuw nsw i64 %indvars.iv1716, 1
  %exitcond1719.not = icmp eq i64 %indvars.iv.next1717, 17
  br i1 %exitcond1719.not, label %for.cond.cleanup320, label %for.cond322.preheader

if.end424:                                        ; preds = %for.cond.cleanup320, %if.end291
  call void @x264_ratecontrol_summary(ptr noundef nonnull %h) #17
  %154 = load i32, ptr %arrayidx220, align 8
  %155 = load i32, ptr %i_frame_count, align 8
  %add431 = add nsw i32 %155, %154
  %156 = load i32, ptr %arrayidx294, align 4
  %add435 = add nsw i32 %add431, %156
  %cmp436 = icmp sgt i32 %add435, 0
  br i1 %cmp436, label %if.then438, label %if.end1131

if.then438:                                       ; preds = %if.end424
  %arrayidx442 = getelementptr inbounds i8, ptr %h, i64 28144
  %157 = load i64, ptr %arrayidx442, align 8
  %arrayidx446 = getelementptr inbounds i8, ptr %h, i64 27840
  %158 = load i64, ptr %arrayidx446, align 8
  %add447 = add nsw i64 %158, %157
  %arrayidx450 = getelementptr inbounds i8, ptr %h, i64 27984
  %arrayidx451 = getelementptr inbounds i8, ptr %h, i64 27992
  %159 = load i64, ptr %arrayidx451, align 8
  %add452 = add nsw i64 %add447, %159
  %160 = load i64, ptr %arrayidx, align 8
  %161 = load i64, ptr %i_mb_count, align 8
  %162 = load i64, ptr %arrayidx450, align 8
  %arrayidx471 = getelementptr inbounds i8, ptr %h, i64 28152
  %163 = load i64, ptr %arrayidx471, align 8
  %arrayidx475 = getelementptr inbounds i8, ptr %h, i64 27848
  %164 = load i64, ptr %arrayidx475, align 8
  %arrayidx480 = getelementptr inbounds i8, ptr %h, i64 28000
  %165 = load i64, ptr %arrayidx480, align 8
  %add476 = add i64 %add452, %160
  %add481 = add i64 %add476, %161
  %add461 = add i64 %add481, %162
  %add466 = add i64 %add461, %163
  %add467 = add i64 %add466, %164
  %add482 = add i64 %add467, %165
  %166 = load i64, ptr %arrayidx3, align 8
  %arrayidx490 = getelementptr inbounds i8, ptr %h, i64 27856
  %167 = load i64, ptr %arrayidx490, align 8
  %arrayidx495 = getelementptr inbounds i8, ptr %h, i64 28008
  %168 = load i64, ptr %arrayidx495, align 8
  %add491 = add i64 %add482, %166
  %add496 = add i64 %add491, %167
  %add497 = add i64 %add496, %168
  %mb511 = getelementptr inbounds i8, ptr %h, i64 16368
  %169 = load i32, ptr %mb511, align 16
  %mul513 = mul nsw i32 %169, %add435
  %conv514 = sext i32 %mul513 to i64
  %b_vfr_input = getelementptr inbounds i8, ptr %h, i64 648
  %170 = load i32, ptr %b_vfr_input, align 8
  %tobool521 = icmp eq i32 %170, 0
  %cmp523 = icmp eq i32 %add435, 1
  %or.cond1226 = or i1 %cmp523, %tobool521
  br i1 %or.cond1226, label %if.then525, label %if.else542

if.then525:                                       ; preds = %if.then438
  %i_fps_num = getelementptr inbounds i8, ptr %h, i64 652
  %171 = load i32, ptr %i_fps_num, align 4
  %conv516 = uitofp i32 %171 to float
  %i_fps_den = getelementptr inbounds i8, ptr %h, i64 656
  %172 = load i32, ptr %i_fps_den, align 16
  %conv518 = uitofp i32 %172 to float
  %div519 = fdiv float %conv516, %conv518
  %arrayidx528 = getelementptr inbounds i8, ptr %h, i64 27456
  %173 = load i64, ptr %arrayidx528, align 8
  %174 = load i64, ptr %i_frame_size, align 8
  %add532 = add nsw i64 %174, %173
  %arrayidx535 = getelementptr inbounds i8, ptr %h, i64 27448
  %175 = load i64, ptr %arrayidx535, align 8
  %add536 = add nsw i64 %add532, %175
  %conv537 = sitofp i64 %add536 to float
  %mul538 = fmul float %div519, %conv537
  %conv539 = uitofp nneg i32 %add435 to float
  %div540 = fdiv float %mul538, %conv539
  br label %if.end567

if.else542:                                       ; preds = %if.then438
  %i_largest_pts = getelementptr inbounds i8, ptr %h, i64 14656
  %176 = load i64, ptr %i_largest_pts, align 16
  %mul543 = shl nsw i64 %176, 1
  %i_second_largest_pts = getelementptr inbounds i8, ptr %h, i64 14664
  %177 = load i64, ptr %i_second_largest_pts, align 8
  %sub545 = sub nsw i64 %mul543, %177
  %conv546 = sitofp i64 %sub545 to float
  %i_timebase_num = getelementptr inbounds i8, ptr %h, i64 660
  %178 = load i32, ptr %i_timebase_num, align 4
  %conv548 = uitofp i32 %178 to float
  %mul549 = fmul float %conv546, %conv548
  %i_timebase_den = getelementptr inbounds i8, ptr %h, i64 664
  %179 = load i32, ptr %i_timebase_den, align 8
  %conv551 = uitofp i32 %179 to float
  %div552 = fdiv float %mul549, %conv551
  %arrayidx555 = getelementptr inbounds i8, ptr %h, i64 27456
  %180 = load i64, ptr %arrayidx555, align 8
  %181 = load i64, ptr %i_frame_size, align 8
  %add559 = add nsw i64 %181, %180
  %arrayidx562 = getelementptr inbounds i8, ptr %h, i64 27448
  %182 = load i64, ptr %arrayidx562, align 8
  %add563 = add nsw i64 %add559, %182
  %conv564 = sitofp i64 %add563 to float
  %div565 = fdiv float %conv564, %div552
  br label %if.end567

if.end567:                                        ; preds = %if.else542, %if.then525
  %f_bitrate.0.in = phi float [ %div540, %if.then525 ], [ %div565, %if.else542 ]
  %f_bitrate.0 = fdiv float %f_bitrate.0.in, 1.250000e+02
  %pps = getelementptr inbounds i8, ptr %h, i64 3328
  %183 = load ptr, ptr %pps, align 16
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %183, i64 60
  %184 = load i32, ptr %b_transform_8x8_mode, align 4
  %tobool568.not = icmp eq i32 %184, 0
  br i1 %tobool568.not, label %if.end593, label %if.then569

if.then569:                                       ; preds = %if.end567
  store i8 0, ptr %buf, align 16
  %i_mb_count_8x8dct = getelementptr inbounds i8, ptr %h, i64 28864
  %185 = load i64, ptr %i_mb_count_8x8dct, align 8
  %tobool573.not = icmp eq i64 %185, 0
  br i1 %tobool573.not, label %if.end587, label %if.then574

if.then574:                                       ; preds = %if.then569
  %arrayidx578 = getelementptr inbounds i8, ptr %h, i64 28872
  %186 = load i64, ptr %arrayidx578, align 8
  %conv579 = sitofp i64 %186 to double
  %mul580 = fmul double %conv579, 1.000000e+02
  %conv584 = sitofp i64 %185 to double
  %div585 = fdiv double %mul580, %conv584
  %call586 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %buf, ptr noundef nonnull dereferenceable(1) @.str.36, double noundef %div585) #17
  br label %if.end587

if.end587:                                        ; preds = %if.then574, %if.then569
  %conv588 = sitofp i64 %add452 to double
  %mul589 = fmul double %conv588, 1.000000e+02
  %conv590 = sitofp i64 %add482 to double
  %div591 = fdiv double %mul589, %conv590
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.37, double noundef %div591, ptr noundef nonnull %buf) #17
  br label %if.end593

if.end593:                                        ; preds = %if.end587, %if.end567
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %h, i64 404
  %187 = load i32, ptr %i_direct_mv_pred, align 4
  %cmp596 = icmp eq i32 %187, 3
  br i1 %cmp596, label %land.lhs.true607, label %lor.lhs.false598

lor.lhs.false598:                                 ; preds = %if.end593
  %i_direct_frames = getelementptr inbounds i8, ptr %h, i64 30376
  %188 = load i32, ptr %i_direct_frames, align 8
  %tobool601.not = icmp eq i32 %188, 0
  br i1 %tobool601.not, label %if.end633, label %land.lhs.true602

land.lhs.true602:                                 ; preds = %lor.lhs.false598
  %arrayidx605 = getelementptr inbounds i8, ptr %h, i64 30380
  %189 = load i32, ptr %arrayidx605, align 4
  %tobool606.not = icmp eq i32 %189, 0
  br i1 %tobool606.not, label %if.end633, label %land.lhs.true607

land.lhs.true607:                                 ; preds = %land.lhs.true602, %if.end593
  %190 = load i32, ptr %arrayidx294, align 4
  %tobool611.not = icmp eq i32 %190, 0
  br i1 %tobool611.not, label %if.end633, label %if.then612

if.then612:                                       ; preds = %land.lhs.true607
  %i_direct_frames614 = getelementptr inbounds i8, ptr %h, i64 30376
  %arrayidx615 = getelementptr inbounds i8, ptr %h, i64 30380
  %191 = load i32, ptr %arrayidx615, align 4
  %conv616 = sitofp i32 %191 to double
  %mul617 = fmul double %conv616, 1.000000e+02
  %conv621 = sitofp i32 %190 to double
  %div622 = fdiv double %mul617, %conv621
  %192 = load i32, ptr %i_direct_frames614, align 8
  %conv626 = sitofp i32 %192 to double
  %mul627 = fmul double %conv626, 1.000000e+02
  %div632 = fdiv double %mul627, %conv621
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.38, double noundef %div622, double noundef %div632) #17
  br label %if.end633

if.end633:                                        ; preds = %if.then612, %land.lhs.true607, %land.lhs.true602, %lor.lhs.false598
  store i8 0, ptr %buf, align 16
  %cmp635.not = icmp eq i64 %add497, %conv514
  br i1 %cmp635.not, label %if.end664, label %if.then637

if.then637:                                       ; preds = %if.end633
  %arrayidx640 = getelementptr inbounds i8, ptr %h, i64 29912
  %193 = load i64, ptr %arrayidx640, align 8
  %conv641 = sitofp i64 %193 to double
  %mul642 = fmul double %conv641, 1.000000e+02
  %sub643 = sub nsw i64 %conv514, %add497
  %mul644 = shl nsw i64 %sub643, 2
  %conv645 = sitofp i64 %mul644 to double
  %div646 = fdiv double %mul642, %conv645
  %arrayidx649 = getelementptr inbounds i8, ptr %h, i64 29928
  %194 = load i64, ptr %arrayidx649, align 8
  %conv650 = sitofp i64 %194 to double
  %mul651 = fmul double %conv650, 1.000000e+02
  %conv653 = sitofp i64 %sub643 to double
  %div654 = fdiv double %mul651, %conv653
  %arrayidx657 = getelementptr inbounds i8, ptr %h, i64 29944
  %195 = load i64, ptr %arrayidx657, align 8
  %conv658 = sitofp i64 %195 to double
  %mul659 = fmul double %conv658, 1.000000e+02
  %div662 = fdiv double %mul659, %conv653
  %call663 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %buf, ptr noundef nonnull dereferenceable(1) @.str.39, double noundef %div646, double noundef %div654, double noundef %div662) #17
  br label %if.end664

if.end664:                                        ; preds = %if.then637, %if.end633
  %i_mb_cbp666 = getelementptr inbounds i8, ptr %h, i64 29904
  %196 = load i64, ptr %i_mb_cbp666, align 8
  %conv668 = sitofp i64 %196 to double
  %mul669 = fmul double %conv668, 1.000000e+02
  %mul670 = shl nsw i64 %add497, 2
  %conv671 = sitofp i64 %mul670 to double
  %div672 = fdiv double %mul669, %conv671
  %arrayidx675 = getelementptr inbounds i8, ptr %h, i64 29920
  %197 = load i64, ptr %arrayidx675, align 8
  %conv676 = sitofp i64 %197 to double
  %mul677 = fmul double %conv676, 1.000000e+02
  %conv678 = sitofp i64 %add497 to double
  %div679 = fdiv double %mul677, %conv678
  %arrayidx682 = getelementptr inbounds i8, ptr %h, i64 29936
  %198 = load i64, ptr %arrayidx682, align 8
  %conv683 = sitofp i64 %198 to double
  %mul684 = fmul double %conv683, 1.000000e+02
  %div686 = fdiv double %mul684, %conv678
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.40, double noundef %div672, double noundef %div679, double noundef %div686, ptr noundef nonnull %buf) #17
  %i_mb_pred_mode = getelementptr inbounds i8, ptr %h, i64 29952
  %199 = load i64, ptr %i_mb_pred_mode, align 8
  %arrayidx697.1 = getelementptr inbounds i8, ptr %h, i64 29960
  %200 = load i64, ptr %arrayidx697.1, align 8
  %add710.1 = add nsw i64 %199, %200
  %arrayidx697.2 = getelementptr inbounds i8, ptr %h, i64 29968
  %201 = load i64, ptr %arrayidx697.2, align 8
  %add710.2 = add nsw i64 %add710.1, %201
  %arrayidx697.3 = getelementptr inbounds i8, ptr %h, i64 29976
  %202 = load i64, ptr %arrayidx697.3, align 8
  %add710.3 = add nsw i64 %add710.2, %202
  %arrayidx697.4 = getelementptr inbounds i8, ptr %h, i64 29984
  %203 = load i64, ptr %arrayidx697.4, align 8
  %add710.4 = add nsw i64 %add710.3, %203
  %arrayidx697.5 = getelementptr inbounds i8, ptr %h, i64 29992
  %204 = load i64, ptr %arrayidx697.5, align 8
  %add710.5 = add nsw i64 %add710.4, %204
  %arrayidx697.6 = getelementptr inbounds i8, ptr %h, i64 30000
  %205 = load i64, ptr %arrayidx697.6, align 8
  %add710.6 = add nsw i64 %add710.5, %205
  %tobool715.not = icmp eq i64 %add710.6, 0
  br i1 %tobool715.not, label %for.cond753.preheader, label %if.then716

if.then716:                                       ; preds = %if.end664
  %add703.4 = add nsw i64 %201, %203
  %add703.5 = add nsw i64 %add703.4, %204
  %add703.6 = add nsw i64 %add703.5, %205
  %conv719 = sitofp i64 %199 to double
  %mul720 = fmul double %conv719, 1.000000e+02
  %conv722 = sitofp i64 %add710.6 to double
  %div723 = fdiv double %mul720, %conv722
  %conv726 = sitofp i64 %200 to double
  %mul727 = fmul double %conv726, 1.000000e+02
  %div730 = fdiv double %mul727, %conv722
  %conv733 = sitofp i64 %add703.6 to double
  %mul734 = fmul double %conv733, 1.000000e+02
  %div737 = fdiv double %mul734, %conv722
  %conv740 = sitofp i64 %202 to double
  %mul741 = fmul double %conv740, 1.000000e+02
  %div744 = fdiv double %mul741, %conv722
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.41, double noundef %div723, double noundef %div730, double noundef %div737, double noundef %div744) #17
  br label %for.cond753.preheader

for.cond753.preheader:                            ; preds = %if.end664, %if.then716
  %arrayidx763 = getelementptr inbounds i8, ptr %h, i64 30056
  %206 = load i64, ptr %arrayidx763, align 8
  %arrayidx763.1 = getelementptr inbounds i8, ptr %h, i64 30064
  %207 = load i64, ptr %arrayidx763.1, align 8
  %add780.1 = add nsw i64 %206, %207
  %arrayidx763.2 = getelementptr inbounds i8, ptr %h, i64 30072
  %208 = load i64, ptr %arrayidx763.2, align 8
  %add780.2 = add nsw i64 %add780.1, %208
  %arrayidx763.3 = getelementptr inbounds i8, ptr %h, i64 30080
  %209 = load i64, ptr %arrayidx763.3, align 8
  %add780.3 = add nsw i64 %add780.2, %209
  %arrayidx763.4 = getelementptr inbounds i8, ptr %h, i64 30088
  %210 = load i64, ptr %arrayidx763.4, align 8
  %add780.4 = add nsw i64 %add780.3, %210
  %arrayidx763.5 = getelementptr inbounds i8, ptr %h, i64 30096
  %211 = load i64, ptr %arrayidx763.5, align 8
  %add780.5 = add nsw i64 %add780.4, %211
  %arrayidx763.6 = getelementptr inbounds i8, ptr %h, i64 30104
  %212 = load i64, ptr %arrayidx763.6, align 8
  %add780.6 = add nsw i64 %add780.5, %212
  %arrayidx763.7 = getelementptr inbounds i8, ptr %h, i64 30112
  %213 = load i64, ptr %arrayidx763.7, align 8
  %add780.7 = add nsw i64 %add780.6, %213
  %arrayidx763.8 = getelementptr inbounds i8, ptr %h, i64 30120
  %214 = load i64, ptr %arrayidx763.8, align 8
  %add780.8 = add nsw i64 %add780.7, %214
  %arrayidx763.9 = getelementptr inbounds i8, ptr %h, i64 30128
  %215 = load i64, ptr %arrayidx763.9, align 8
  %add780.9 = add nsw i64 %add780.8, %215
  %arrayidx763.10 = getelementptr inbounds i8, ptr %h, i64 30136
  %216 = load i64, ptr %arrayidx763.10, align 8
  %add780.10 = add nsw i64 %add780.9, %216
  %arrayidx763.11 = getelementptr inbounds i8, ptr %h, i64 30144
  %217 = load i64, ptr %arrayidx763.11, align 8
  %add780.11 = add nsw i64 %add780.10, %217
  %tobool786.not = icmp eq i64 %add780.11, 0
  br i1 %tobool786.not, label %for.inc872, label %if.then787

if.then787:                                       ; preds = %for.cond753.preheader
  %add771.9 = add nsw i64 %208, %215
  %add771.10 = add nsw i64 %add771.9, %216
  %add771.11 = add nsw i64 %add771.10, %217
  %conv793 = sitofp i64 %206 to double
  %mul794 = fmul double %conv793, 1.000000e+02
  %conv797 = sitofp i64 %add780.11 to double
  %div798 = fdiv double %mul794, %conv797
  %conv802 = sitofp i64 %207 to double
  %mul803 = fmul double %conv802, 1.000000e+02
  %div807 = fdiv double %mul803, %conv797
  %conv811 = sitofp i64 %add771.11 to double
  %mul812 = fmul double %conv811, 1.000000e+02
  %div816 = fdiv double %mul812, %conv797
  %conv820 = sitofp i64 %209 to double
  %mul821 = fmul double %conv820, 1.000000e+02
  %div825 = fdiv double %mul821, %conv797
  %conv829 = sitofp i64 %210 to double
  %mul830 = fmul double %conv829, 1.000000e+02
  %div834 = fdiv double %mul830, %conv797
  %conv838 = sitofp i64 %211 to double
  %mul839 = fmul double %conv838, 1.000000e+02
  %div843 = fdiv double %mul839, %conv797
  %conv847 = sitofp i64 %212 to double
  %mul848 = fmul double %conv847, 1.000000e+02
  %div852 = fdiv double %mul848, %conv797
  %conv856 = sitofp i64 %213 to double
  %mul857 = fmul double %conv856, 1.000000e+02
  %div861 = fdiv double %mul857, %conv797
  %conv865 = sitofp i64 %214 to double
  %mul866 = fmul double %conv865, 1.000000e+02
  %div870 = fdiv double %mul866, %conv797
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 8, double noundef %div798, double noundef %div807, double noundef %div816, double noundef %div825, double noundef %div834, double noundef %div843, double noundef %div852, double noundef %div861, double noundef %div870) #17
  br label %for.inc872

for.inc872:                                       ; preds = %for.cond753.preheader, %if.then787
  %arrayidx763.11832 = getelementptr inbounds i8, ptr %h, i64 30160
  %218 = load i64, ptr %arrayidx763.11832, align 8
  %arrayidx763.1.1 = getelementptr inbounds i8, ptr %h, i64 30168
  %219 = load i64, ptr %arrayidx763.1.1, align 8
  %add780.1.1 = add nsw i64 %218, %219
  %arrayidx763.2.1 = getelementptr inbounds i8, ptr %h, i64 30176
  %220 = load i64, ptr %arrayidx763.2.1, align 8
  %add780.2.1 = add nsw i64 %add780.1.1, %220
  %arrayidx763.3.1 = getelementptr inbounds i8, ptr %h, i64 30184
  %221 = load i64, ptr %arrayidx763.3.1, align 8
  %add780.3.1 = add nsw i64 %add780.2.1, %221
  %arrayidx763.4.1 = getelementptr inbounds i8, ptr %h, i64 30192
  %222 = load i64, ptr %arrayidx763.4.1, align 8
  %add780.4.1 = add nsw i64 %add780.3.1, %222
  %arrayidx763.5.1 = getelementptr inbounds i8, ptr %h, i64 30200
  %223 = load i64, ptr %arrayidx763.5.1, align 8
  %add780.5.1 = add nsw i64 %add780.4.1, %223
  %arrayidx763.6.1 = getelementptr inbounds i8, ptr %h, i64 30208
  %224 = load i64, ptr %arrayidx763.6.1, align 8
  %add780.6.1 = add nsw i64 %add780.5.1, %224
  %arrayidx763.7.1 = getelementptr inbounds i8, ptr %h, i64 30216
  %225 = load i64, ptr %arrayidx763.7.1, align 8
  %add780.7.1 = add nsw i64 %add780.6.1, %225
  %arrayidx763.8.1 = getelementptr inbounds i8, ptr %h, i64 30224
  %226 = load i64, ptr %arrayidx763.8.1, align 8
  %add780.8.1 = add nsw i64 %add780.7.1, %226
  %arrayidx763.9.1 = getelementptr inbounds i8, ptr %h, i64 30232
  %227 = load i64, ptr %arrayidx763.9.1, align 8
  %add780.9.1 = add nsw i64 %add780.8.1, %227
  %arrayidx763.10.1 = getelementptr inbounds i8, ptr %h, i64 30240
  %228 = load i64, ptr %arrayidx763.10.1, align 8
  %add780.10.1 = add nsw i64 %add780.9.1, %228
  %arrayidx763.11.1 = getelementptr inbounds i8, ptr %h, i64 30248
  %229 = load i64, ptr %arrayidx763.11.1, align 8
  %add780.11.1 = add nsw i64 %add780.10.1, %229
  %tobool786.not.1 = icmp eq i64 %add780.11.1, 0
  br i1 %tobool786.not.1, label %for.inc872.1, label %if.then787.1

if.then787.1:                                     ; preds = %for.inc872
  %add771.9.1 = add nsw i64 %220, %227
  %add771.10.1 = add nsw i64 %add771.9.1, %228
  %add771.11.1 = add nsw i64 %add771.10.1, %229
  %conv793.1 = sitofp i64 %218 to double
  %mul794.1 = fmul double %conv793.1, 1.000000e+02
  %conv797.1 = sitofp i64 %add780.11.1 to double
  %div798.1 = fdiv double %mul794.1, %conv797.1
  %conv802.1 = sitofp i64 %219 to double
  %mul803.1 = fmul double %conv802.1, 1.000000e+02
  %div807.1 = fdiv double %mul803.1, %conv797.1
  %conv811.1 = sitofp i64 %add771.11.1 to double
  %mul812.1 = fmul double %conv811.1, 1.000000e+02
  %div816.1 = fdiv double %mul812.1, %conv797.1
  %conv820.1 = sitofp i64 %221 to double
  %mul821.1 = fmul double %conv820.1, 1.000000e+02
  %div825.1 = fdiv double %mul821.1, %conv797.1
  %conv829.1 = sitofp i64 %222 to double
  %mul830.1 = fmul double %conv829.1, 1.000000e+02
  %div834.1 = fdiv double %mul830.1, %conv797.1
  %conv838.1 = sitofp i64 %223 to double
  %mul839.1 = fmul double %conv838.1, 1.000000e+02
  %div843.1 = fdiv double %mul839.1, %conv797.1
  %conv847.1 = sitofp i64 %224 to double
  %mul848.1 = fmul double %conv847.1, 1.000000e+02
  %div852.1 = fdiv double %mul848.1, %conv797.1
  %conv856.1 = sitofp i64 %225 to double
  %mul857.1 = fmul double %conv856.1, 1.000000e+02
  %div861.1 = fdiv double %mul857.1, %conv797.1
  %conv865.1 = sitofp i64 %226 to double
  %mul866.1 = fmul double %conv865.1, 1.000000e+02
  %div870.1 = fdiv double %mul866.1, %conv797.1
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 4, double noundef %div798.1, double noundef %div807.1, double noundef %div816.1, double noundef %div825.1, double noundef %div834.1, double noundef %div843.1, double noundef %div852.1, double noundef %div861.1, double noundef %div870.1) #17
  br label %for.inc872.1

for.inc872.1:                                     ; preds = %if.then787.1, %for.inc872
  %arrayidx883 = getelementptr inbounds i8, ptr %h, i64 30264
  %230 = load i64, ptr %arrayidx883, align 8
  %arrayidx885.1 = getelementptr inbounds i8, ptr %h, i64 30272
  %231 = load i64, ptr %arrayidx885.1, align 8
  %add898.1 = add nsw i64 %230, %231
  %arrayidx885.2 = getelementptr inbounds i8, ptr %h, i64 30280
  %232 = load i64, ptr %arrayidx885.2, align 8
  %add898.2 = add nsw i64 %add898.1, %232
  %arrayidx885.3 = getelementptr inbounds i8, ptr %h, i64 30288
  %233 = load i64, ptr %arrayidx885.3, align 8
  %add898.3 = add nsw i64 %add898.2, %233
  %arrayidx885.4 = getelementptr inbounds i8, ptr %h, i64 30296
  %234 = load i64, ptr %arrayidx885.4, align 8
  %add898.4 = add nsw i64 %add898.3, %234
  %arrayidx885.5 = getelementptr inbounds i8, ptr %h, i64 30304
  %235 = load i64, ptr %arrayidx885.5, align 8
  %add898.5 = add nsw i64 %add898.4, %235
  %arrayidx885.6 = getelementptr inbounds i8, ptr %h, i64 30312
  %236 = load i64, ptr %arrayidx885.6, align 8
  %add898.6 = add nsw i64 %add898.5, %236
  %tobool903.not = icmp eq i64 %add898.6, 0
  br i1 %tobool903.not, label %if.end933, label %if.then904

if.then904:                                       ; preds = %for.inc872.1
  %add891.4 = add nsw i64 %230, %234
  %add891.5 = add nsw i64 %add891.4, %235
  %add891.6 = add nsw i64 %add891.5, %236
  %conv907 = sitofp i64 %add891.6 to double
  %mul908 = fmul double %conv907, 1.000000e+02
  %conv910 = sitofp i64 %add898.6 to double
  %div911 = fdiv double %mul908, %conv910
  %conv914 = sitofp i64 %231 to double
  %mul915 = fmul double %conv914, 1.000000e+02
  %div918 = fdiv double %mul915, %conv910
  %conv921 = sitofp i64 %232 to double
  %mul922 = fmul double %conv921, 1.000000e+02
  %div925 = fdiv double %mul922, %conv910
  %conv928 = sitofp i64 %233 to double
  %mul929 = fmul double %conv928, 1.000000e+02
  %div932 = fdiv double %mul929, %conv910
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.43, double noundef %div911, double noundef %div918, double noundef %div925, double noundef %div932) #17
  br label %if.end933

if.end933:                                        ; preds = %if.then904, %for.inc872.1
  %i_weighted_pred = getelementptr inbounds i8, ptr %h, i64 396
  %237 = load i32, ptr %i_weighted_pred, align 4
  %cmp936 = icmp eq i32 %237, 2
  br i1 %cmp936, label %land.lhs.true938, label %if.end954

land.lhs.true938:                                 ; preds = %if.end933
  %238 = load i32, ptr %i_frame_count, align 8
  %cmp942 = icmp sgt i32 %238, 0
  br i1 %cmp942, label %if.then944, label %if.end954

if.then944:                                       ; preds = %land.lhs.true938
  %i_wpred = getelementptr inbounds i8, ptr %h, i64 30384
  %239 = load i32, ptr %i_wpred, align 8
  %conv947 = sitofp i32 %239 to double
  %mul948 = fmul double %conv947, 1.000000e+02
  %conv952 = uitofp nneg i32 %238 to double
  %div953 = fdiv double %mul948, %conv952
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.44, double noundef %div953) #17
  br label %if.end954

if.end954:                                        ; preds = %if.then944, %land.lhs.true938, %if.end933
  %i_mb_count_ref = getelementptr inbounds i8, ptr %h, i64 28880
  br label %for.cond961.preheader

for.cond961.preheader:                            ; preds = %if.end954, %for.cond.cleanup964
  %cmp956 = phi i1 [ true, %if.end954 ], [ false, %for.cond.cleanup964 ]
  %indvars.iv1749 = phi i64 [ 0, %if.end954 ], [ 1, %for.cond.cleanup964 ]
  %240 = trunc nuw nsw i64 %indvars.iv1749 to i32
  br label %for.cond969.preheader

for.cond.cleanup958:                              ; preds = %for.cond.cleanup964
  %b_ssim = getelementptr inbounds i8, ptr %h, i64 480
  %241 = load i32, ptr %b_ssim, align 16
  %tobool1040.not = icmp eq i32 %241, 0
  br i1 %tobool1040.not, label %if.end1054, label %if.then1041

for.cond969.preheader:                            ; preds = %for.cond961.preheader, %cleanup
  %cmp962 = phi i1 [ true, %for.cond961.preheader ], [ false, %cleanup ]
  %indvars.iv1746 = phi i64 [ 0, %for.cond961.preheader ], [ 1, %cleanup ]
  %arrayidx980.1 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 1
  %242 = load i64, ptr %arrayidx980.1, align 8
  %tobool981.not.1 = icmp ne i64 %242, 0
  %spec.select1602.1 = zext i1 %tobool981.not.1 to i32
  %arrayidx980.2 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 2
  %243 = load i64, ptr %arrayidx980.2, align 8
  %tobool981.not.2 = icmp eq i64 %243, 0
  %spec.select1602.2 = select i1 %tobool981.not.2, i32 %spec.select1602.1, i32 2
  %arrayidx980.3 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 3
  %244 = load i64, ptr %arrayidx980.3, align 8
  %tobool981.not.3 = icmp eq i64 %244, 0
  %spec.select1602.3 = select i1 %tobool981.not.3, i32 %spec.select1602.2, i32 3
  %arrayidx980.4 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 4
  %245 = load i64, ptr %arrayidx980.4, align 8
  %tobool981.not.4 = icmp eq i64 %245, 0
  %spec.select1602.4 = select i1 %tobool981.not.4, i32 %spec.select1602.3, i32 4
  %arrayidx980.5 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 5
  %246 = load i64, ptr %arrayidx980.5, align 8
  %tobool981.not.5 = icmp eq i64 %246, 0
  %spec.select1602.5 = select i1 %tobool981.not.5, i32 %spec.select1602.4, i32 5
  %arrayidx980.6 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 6
  %247 = load i64, ptr %arrayidx980.6, align 8
  %tobool981.not.6 = icmp eq i64 %247, 0
  %spec.select1602.6 = select i1 %tobool981.not.6, i32 %spec.select1602.5, i32 6
  %arrayidx980.7 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 7
  %248 = load i64, ptr %arrayidx980.7, align 8
  %tobool981.not.7 = icmp eq i64 %248, 0
  %spec.select1602.7 = select i1 %tobool981.not.7, i32 %spec.select1602.6, i32 7
  %arrayidx980.8 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 8
  %249 = load i64, ptr %arrayidx980.8, align 8
  %tobool981.not.8 = icmp eq i64 %249, 0
  %spec.select1602.8 = select i1 %tobool981.not.8, i32 %spec.select1602.7, i32 8
  %arrayidx980.9 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 9
  %250 = load i64, ptr %arrayidx980.9, align 8
  %tobool981.not.9 = icmp eq i64 %250, 0
  %spec.select1602.9 = select i1 %tobool981.not.9, i32 %spec.select1602.8, i32 9
  %arrayidx980.10 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 10
  %251 = load i64, ptr %arrayidx980.10, align 8
  %tobool981.not.10 = icmp eq i64 %251, 0
  %spec.select1602.10 = select i1 %tobool981.not.10, i32 %spec.select1602.9, i32 10
  %arrayidx980.11 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 11
  %252 = load i64, ptr %arrayidx980.11, align 8
  %tobool981.not.11 = icmp eq i64 %252, 0
  %spec.select1602.11 = select i1 %tobool981.not.11, i32 %spec.select1602.10, i32 11
  %arrayidx980.12 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 12
  %253 = load i64, ptr %arrayidx980.12, align 8
  %tobool981.not.12 = icmp eq i64 %253, 0
  %spec.select1602.12 = select i1 %tobool981.not.12, i32 %spec.select1602.11, i32 12
  %arrayidx980.13 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 13
  %254 = load i64, ptr %arrayidx980.13, align 8
  %tobool981.not.13 = icmp eq i64 %254, 0
  %spec.select1602.13 = select i1 %tobool981.not.13, i32 %spec.select1602.12, i32 13
  %arrayidx980.14 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 14
  %255 = load i64, ptr %arrayidx980.14, align 8
  %tobool981.not.14 = icmp eq i64 %255, 0
  %spec.select1602.14 = select i1 %tobool981.not.14, i32 %spec.select1602.13, i32 14
  %arrayidx980.15 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 15
  %256 = load i64, ptr %arrayidx980.15, align 8
  %tobool981.not.15 = icmp eq i64 %256, 0
  %spec.select1602.15 = select i1 %tobool981.not.15, i32 %spec.select1602.14, i32 15
  %arrayidx980.16 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 16
  %257 = load i64, ptr %arrayidx980.16, align 8
  %tobool981.not.16 = icmp eq i64 %257, 0
  %spec.select1602.16 = select i1 %tobool981.not.16, i32 %spec.select1602.15, i32 16
  %arrayidx980.17 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 17
  %258 = load i64, ptr %arrayidx980.17, align 8
  %tobool981.not.17 = icmp eq i64 %258, 0
  %spec.select1602.17 = select i1 %tobool981.not.17, i32 %spec.select1602.16, i32 17
  %arrayidx980.18 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 18
  %259 = load i64, ptr %arrayidx980.18, align 8
  %tobool981.not.18 = icmp eq i64 %259, 0
  %spec.select1602.18 = select i1 %tobool981.not.18, i32 %spec.select1602.17, i32 18
  %arrayidx980.19 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 19
  %260 = load i64, ptr %arrayidx980.19, align 8
  %tobool981.not.19 = icmp eq i64 %260, 0
  %spec.select1602.19 = select i1 %tobool981.not.19, i32 %spec.select1602.18, i32 19
  %arrayidx980.20 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 20
  %261 = load i64, ptr %arrayidx980.20, align 8
  %tobool981.not.20 = icmp eq i64 %261, 0
  %spec.select1602.20 = select i1 %tobool981.not.20, i32 %spec.select1602.19, i32 20
  %arrayidx980.21 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 21
  %262 = load i64, ptr %arrayidx980.21, align 8
  %tobool981.not.21 = icmp eq i64 %262, 0
  %spec.select1602.21 = select i1 %tobool981.not.21, i32 %spec.select1602.20, i32 21
  %arrayidx980.22 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 22
  %263 = load i64, ptr %arrayidx980.22, align 8
  %tobool981.not.22 = icmp eq i64 %263, 0
  %spec.select1602.22 = select i1 %tobool981.not.22, i32 %spec.select1602.21, i32 22
  %arrayidx980.23 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 23
  %264 = load i64, ptr %arrayidx980.23, align 8
  %tobool981.not.23 = icmp eq i64 %264, 0
  %spec.select1602.23 = select i1 %tobool981.not.23, i32 %spec.select1602.22, i32 23
  %arrayidx980.24 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 24
  %265 = load i64, ptr %arrayidx980.24, align 8
  %tobool981.not.24 = icmp eq i64 %265, 0
  %spec.select1602.24 = select i1 %tobool981.not.24, i32 %spec.select1602.23, i32 24
  %arrayidx980.25 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 25
  %266 = load i64, ptr %arrayidx980.25, align 8
  %tobool981.not.25 = icmp eq i64 %266, 0
  %spec.select1602.25 = select i1 %tobool981.not.25, i32 %spec.select1602.24, i32 25
  %arrayidx980.26 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 26
  %267 = load i64, ptr %arrayidx980.26, align 8
  %tobool981.not.26 = icmp eq i64 %267, 0
  %spec.select1602.26 = select i1 %tobool981.not.26, i32 %spec.select1602.25, i32 26
  %arrayidx980.27 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 27
  %268 = load i64, ptr %arrayidx980.27, align 8
  %tobool981.not.27 = icmp eq i64 %268, 0
  %spec.select1602.27 = select i1 %tobool981.not.27, i32 %spec.select1602.26, i32 27
  %arrayidx980.28 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 28
  %269 = load i64, ptr %arrayidx980.28, align 8
  %tobool981.not.28 = icmp eq i64 %269, 0
  %spec.select1602.28 = select i1 %tobool981.not.28, i32 %spec.select1602.27, i32 28
  %arrayidx980.29 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 29
  %270 = load i64, ptr %arrayidx980.29, align 8
  %tobool981.not.29 = icmp eq i64 %270, 0
  %spec.select1602.29 = select i1 %tobool981.not.29, i32 %spec.select1602.28, i32 29
  %arrayidx980.30 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 30
  %271 = load i64, ptr %arrayidx980.30, align 8
  %tobool981.not.30 = icmp eq i64 %271, 0
  %spec.select1602.30 = select i1 %tobool981.not.30, i32 %spec.select1602.29, i32 30
  %arrayidx980.31 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 31
  %272 = load i64, ptr %arrayidx980.31, align 8
  %tobool981.not.31 = icmp eq i64 %272, 0
  %spec.select1602.31 = select i1 %tobool981.not.31, i32 %spec.select1602.30, i32 31
  %cmp996 = icmp eq i32 %spec.select1602.31, 0
  br i1 %cmp996, label %cleanup, label %for.body1005.lr.ph

for.cond.cleanup964:                              ; preds = %cleanup
  br i1 %cmp956, label %for.cond961.preheader, label %for.cond.cleanup958

for.body1005.lr.ph:                               ; preds = %for.cond969.preheader
  %arrayidx980 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 0
  %273 = load i64, ptr %arrayidx980, align 8
  %add991.1 = add nsw i64 %242, %273
  %add991.2 = add nsw i64 %243, %add991.1
  %add991.3 = add nsw i64 %244, %add991.2
  %add991.4 = add nsw i64 %245, %add991.3
  %add991.5 = add nsw i64 %246, %add991.4
  %add991.6 = add nsw i64 %247, %add991.5
  %add991.7 = add nsw i64 %248, %add991.6
  %add991.8 = add nsw i64 %249, %add991.7
  %add991.9 = add nsw i64 %250, %add991.8
  %add991.10 = add nsw i64 %251, %add991.9
  %add991.11 = add nsw i64 %252, %add991.10
  %add991.12 = add nsw i64 %253, %add991.11
  %add991.13 = add nsw i64 %254, %add991.12
  %add991.14 = add nsw i64 %255, %add991.13
  %add991.15 = add nsw i64 %256, %add991.14
  %add991.16 = add nsw i64 %257, %add991.15
  %add991.17 = add nsw i64 %258, %add991.16
  %add991.18 = add nsw i64 %259, %add991.17
  %add991.19 = add nsw i64 %260, %add991.18
  %add991.20 = add nsw i64 %261, %add991.19
  %add991.21 = add nsw i64 %262, %add991.20
  %add991.22 = add nsw i64 %263, %add991.21
  %add991.23 = add nsw i64 %264, %add991.22
  %add991.24 = add nsw i64 %265, %add991.23
  %add991.25 = add nsw i64 %266, %add991.24
  %add991.26 = add nsw i64 %267, %add991.25
  %add991.27 = add nsw i64 %268, %add991.26
  %add991.28 = add nsw i64 %269, %add991.27
  %add991.29 = add nsw i64 %270, %add991.28
  %add991.30 = add nsw i64 %271, %add991.29
  %add991.31 = add nsw i64 %272, %add991.30
  %conv1016 = sitofp i64 %add991.31 to double
  %274 = add nuw nsw i32 %spec.select1602.31, 1
  %wide.trip.count1744 = zext nneg i32 %274 to i64
  br label %for.body1005

for.cond.cleanup1004:                             ; preds = %for.body1005
  %arrayidx1025 = getelementptr inbounds [3 x i8], ptr @.str.46, i64 0, i64 %indvars.iv1746
  %275 = load i8, ptr %arrayidx1025, align 1
  %conv1026 = sext i8 %275 to i32
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.45, i32 noundef %conv1026, i32 noundef %240, ptr noundef nonnull %buf) #17
  br label %cleanup

for.body1005:                                     ; preds = %for.body1005.lr.ph, %for.body1005
  %indvars.iv1741 = phi i64 [ 0, %for.body1005.lr.ph ], [ %indvars.iv.next1742, %for.body1005 ]
  %p966.01682 = phi ptr [ %buf, %for.body1005.lr.ph ], [ %add.ptr1020, %for.body1005 ]
  %arrayidx1013 = getelementptr inbounds [2 x [2 x [32 x i64]]], ptr %i_mb_count_ref, i64 0, i64 %indvars.iv1746, i64 %indvars.iv1749, i64 %indvars.iv1741
  %276 = load i64, ptr %arrayidx1013, align 8
  %conv1014 = sitofp i64 %276 to double
  %mul1015 = fmul double %conv1014, 1.000000e+02
  %div1017 = fdiv double %mul1015, %conv1016
  %call1018 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p966.01682, ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %div1017) #17
  %idx.ext1019 = sext i32 %call1018 to i64
  %add.ptr1020 = getelementptr inbounds i8, ptr %p966.01682, i64 %idx.ext1019
  %indvars.iv.next1742 = add nuw nsw i64 %indvars.iv1741, 1
  %exitcond1745.not = icmp eq i64 %indvars.iv.next1742, %wide.trip.count1744
  br i1 %exitcond1745.not, label %for.cond.cleanup1004, label %for.body1005

cleanup:                                          ; preds = %for.cond969.preheader, %for.cond.cleanup1004
  br i1 %cmp962, label %for.cond969.preheader, label %for.cond.cleanup964

if.then1041:                                      ; preds = %for.cond.cleanup958
  %f_ssim_mean_y = getelementptr inbounds i8, ptr %h, i64 27792
  %arrayidx1043 = getelementptr inbounds i8, ptr %h, i64 27808
  %277 = load double, ptr %arrayidx1043, align 8
  %278 = load double, ptr %f_ssim_mean_y, align 8
  %add1047 = fadd double %277, %278
  %arrayidx1050 = getelementptr inbounds i8, ptr %h, i64 27800
  %279 = load double, ptr %arrayidx1050, align 8
  %add1051 = fadd double %add1047, %279
  %conv1052 = uitofp nneg i32 %add435 to double
  %div1053 = fdiv double %add1051, %conv1052
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.47, double noundef %div1053) #17
  br label %if.end1054

if.end1054:                                       ; preds = %if.then1041, %for.cond.cleanup958
  %280 = load i32, ptr %b_psnr, align 4
  %tobool1058.not = icmp eq i32 %280, 0
  br i1 %tobool1058.not, label %if.else1128, label %if.then1059

if.then1059:                                      ; preds = %if.end1054
  %arrayidx1062 = getelementptr inbounds i8, ptr %h, i64 27688
  %281 = load double, ptr %arrayidx1062, align 8
  %282 = load double, ptr %f_psnr_mean_y, align 8
  %add1066 = fadd double %281, %282
  %arrayidx1069 = getelementptr inbounds i8, ptr %h, i64 27680
  %283 = load double, ptr %arrayidx1069, align 8
  %add1070 = fadd double %add1066, %283
  %conv1071 = uitofp nneg i32 %add435 to double
  %div1072 = fdiv double %add1070, %conv1071
  %arrayidx1075 = getelementptr inbounds i8, ptr %h, i64 27728
  %284 = load double, ptr %arrayidx1075, align 8
  %285 = load double, ptr %f_psnr_mean_u, align 8
  %add1079 = fadd double %284, %285
  %arrayidx1082 = getelementptr inbounds i8, ptr %h, i64 27720
  %286 = load double, ptr %arrayidx1082, align 8
  %add1083 = fadd double %add1079, %286
  %div1085 = fdiv double %add1083, %conv1071
  %arrayidx1088 = getelementptr inbounds i8, ptr %h, i64 27768
  %287 = load double, ptr %arrayidx1088, align 8
  %288 = load double, ptr %f_psnr_mean_v, align 8
  %add1092 = fadd double %287, %288
  %arrayidx1095 = getelementptr inbounds i8, ptr %h, i64 27760
  %289 = load double, ptr %arrayidx1095, align 8
  %add1096 = fadd double %add1092, %289
  %div1098 = fdiv double %add1096, %conv1071
  %arrayidx1101 = getelementptr inbounds i8, ptr %h, i64 27648
  %290 = load double, ptr %arrayidx1101, align 8
  %291 = load double, ptr %f_psnr_average, align 8
  %add1105 = fadd double %290, %291
  %arrayidx1108 = getelementptr inbounds i8, ptr %h, i64 27640
  %292 = load double, ptr %arrayidx1108, align 8
  %add1109 = fadd double %add1105, %292
  %div1111 = fdiv double %add1109, %conv1071
  %arrayidx1114 = getelementptr inbounds i8, ptr %h, i64 27608
  %293 = load i64, ptr %arrayidx1114, align 8
  %294 = load i64, ptr %i_ssd_global, align 8
  %add1118 = add nsw i64 %294, %293
  %arrayidx1121 = getelementptr inbounds i8, ptr %h, i64 27600
  %295 = load i64, ptr %arrayidx1121, align 8
  %add1122 = add nsw i64 %add1118, %295
  %conv1123 = zext nneg i32 %add435 to i64
  %mul1124 = mul nsw i64 %conv1123, %conv
  %conv.i1647 = sitofp i64 %add1122 to double
  %conv1.i1648 = sitofp i64 %mul1124 to double
  %mul.i1649 = fmul double %conv1.i1648, 6.502500e+04
  %div.i1650 = fdiv double %conv.i1647, %mul.i1649
  %cmp.i1651 = fcmp ugt double %div.i1650, 1.000000e-10
  br i1 %cmp.i1651, label %if.end.i1653, label %x264_psnr.exit1657

if.end.i1653:                                     ; preds = %if.then1059
  %call.i1654 = call double @log10(double noundef %div.i1650) #17
  %mul3.i1655 = fmul double %call.i1654, -1.000000e+01
  %conv4.i1656 = fptrunc double %mul3.i1655 to float
  %296 = fpext float %conv4.i1656 to double
  br label %x264_psnr.exit1657

x264_psnr.exit1657:                               ; preds = %if.then1059, %if.end.i1653
  %retval.0.i1652 = phi double [ %296, %if.end.i1653 ], [ 1.000000e+02, %if.then1059 ]
  %conv1127 = fpext float %f_bitrate.0 to double
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.48, double noundef %div1072, double noundef %div1085, double noundef %div1098, double noundef %div1111, double noundef %retval.0.i1652, double noundef %conv1127) #17
  br label %if.end1131

if.else1128:                                      ; preds = %if.end1054
  %conv1129 = fpext float %f_bitrate.0 to double
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.49, double noundef %conv1129) #17
  br label %if.end1131

if.end1131:                                       ; preds = %x264_psnr.exit1657, %if.else1128, %if.end424
  call void @x264_ratecontrol_delete(ptr noundef nonnull %h) #17
  %psz_stat_out = getelementptr inbounds i8, ptr %h, i64 568
  %297 = load ptr, ptr %psz_stat_out, align 8
  %tobool1133.not = icmp eq ptr %297, null
  br i1 %tobool1133.not, label %if.end1138, label %if.then1134

if.then1134:                                      ; preds = %if.end1131
  call void @free(ptr noundef nonnull %297) #17
  br label %if.end1138

if.end1138:                                       ; preds = %if.then1134, %if.end1131
  %psz_stat_in = getelementptr inbounds i8, ptr %h, i64 584
  %298 = load ptr, ptr %psz_stat_in, align 8
  %tobool1141.not = icmp eq ptr %298, null
  br i1 %tobool1141.not, label %if.end1146, label %if.then1142

if.then1142:                                      ; preds = %if.end1138
  call void @free(ptr noundef nonnull %298) #17
  br label %if.end1146

if.end1146:                                       ; preds = %if.then1142, %if.end1138
  call void @x264_cqm_delete(ptr noundef nonnull %h) #17
  %nal_buffer = getelementptr inbounds i8, ptr %h, i64 1832
  %299 = load ptr, ptr %nal_buffer, align 8
  call void @x264_free(ptr noundef %299) #17
  call void @x264_analyse_free_costs(ptr noundef nonnull %h) #17
  %i_thread_frames1147 = getelementptr inbounds i8, ptr %h, i64 1852
  %300 = load i32, ptr %i_thread_frames1147, align 4
  %cmp1148 = icmp sgt i32 %300, 1
  br i1 %cmp1148, label %if.then1150, label %if.end1155

if.then1150:                                      ; preds = %if.end1146
  %thread1151 = getelementptr inbounds i8, ptr %h, i64 704
  %i_thread_phase1152 = getelementptr inbounds i8, ptr %h, i64 1744
  %301 = load i32, ptr %i_thread_phase1152, align 16
  %idxprom1153 = sext i32 %301 to i64
  %arrayidx1154 = getelementptr inbounds [129 x ptr], ptr %thread1151, i64 0, i64 %idxprom1153
  %302 = load ptr, ptr %arrayidx1154, align 8
  br label %if.end1155

if.end1155:                                       ; preds = %if.then1150, %if.end1146
  %h.addr.0 = phi ptr [ %302, %if.then1150 ], [ %h, %if.end1146 ]
  %frames1156 = getelementptr inbounds i8, ptr %h.addr.0, i64 14416
  %unused = getelementptr inbounds i8, ptr %h.addr.0, i64 14424
  %303 = load ptr, ptr %unused, align 8
  call void @x264_frame_delete_list(ptr noundef %303) #17
  %arrayidx1160 = getelementptr inbounds i8, ptr %h.addr.0, i64 14432
  %304 = load ptr, ptr %arrayidx1160, align 8
  call void @x264_frame_delete_list(ptr noundef %304) #17
  %305 = load ptr, ptr %frames1156, align 16
  call void @x264_frame_delete_list(ptr noundef %305) #17
  %blank_unused = getelementptr inbounds i8, ptr %h.addr.0, i64 14440
  %306 = load ptr, ptr %blank_unused, align 8
  call void @x264_frame_delete_list(ptr noundef %306) #17
  %thread1163 = getelementptr inbounds i8, ptr %h.addr.0, i64 704
  %307 = load ptr, ptr %thread1163, align 16
  %i_threads1167 = getelementptr inbounds i8, ptr %307, i64 4
  %308 = load i32, ptr %i_threads1167, align 4
  %cmp11701689 = icmp sgt i32 %308, 0
  br i1 %cmp11701689, label %for.body1173.lr.ph, label %for.cond.cleanup1172

for.body1173.lr.ph:                               ; preds = %if.end1155
  %b_sliced_threads = getelementptr inbounds i8, ptr %307, i64 8
  %thread1180 = getelementptr inbounds i8, ptr %307, i64 704
  %309 = zext nneg i32 %308 to i64
  br label %for.body1173

for.cond.cleanup1172:                             ; preds = %if.end1208, %if.end1155
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf) #17
  ret void

for.body1173:                                     ; preds = %for.body1173.lr.ph, %if.end1208
  %indvars.iv1752 = phi i64 [ %309, %for.body1173.lr.ph ], [ %indvars.iv.next1753, %if.end1208 ]
  %indvars.iv.next1753 = add nsw i64 %indvars.iv1752, -1
  %310 = load i32, ptr %b_sliced_threads, align 8
  %tobool1175 = icmp eq i32 %310, 0
  %cmp1177 = icmp eq i64 %indvars.iv.next1753, 0
  %or.cond1227 = select i1 %tobool1175, i1 true, i1 %cmp1177
  br i1 %or.cond1227, label %if.then1179, label %if.end1208

if.then1179:                                      ; preds = %for.body1173
  %arrayidx1182 = getelementptr inbounds [129 x ptr], ptr %thread1180, i64 0, i64 %indvars.iv.next1753
  %311 = load ptr, ptr %arrayidx1182, align 8
  %reference = getelementptr inbounds i8, ptr %311, i64 14448
  %312 = load ptr, ptr %reference, align 8
  %tobool1186.not1686 = icmp eq ptr %312, null
  br i1 %tobool1186.not1686, label %for.end1194, label %for.body1187

for.body1187:                                     ; preds = %if.then1179, %for.inc1193
  %313 = phi ptr [ %317, %for.inc1193 ], [ %312, %if.then1179 ]
  %frame.01687 = phi ptr [ %incdec.ptr, %for.inc1193 ], [ %reference, %if.then1179 ]
  %i_reference_count = getelementptr inbounds i8, ptr %313, i64 15600
  %314 = load i32, ptr %i_reference_count, align 16
  %dec = add nsw i32 %314, -1
  store i32 %dec, ptr %i_reference_count, align 16
  %315 = load ptr, ptr %frame.01687, align 8
  %i_reference_count1188 = getelementptr inbounds i8, ptr %315, i64 15600
  %316 = load i32, ptr %i_reference_count1188, align 16
  %cmp1189 = icmp eq i32 %316, 0
  br i1 %cmp1189, label %if.then1191, label %for.inc1193

if.then1191:                                      ; preds = %for.body1187
  call void @x264_frame_delete(ptr noundef nonnull %315) #17
  br label %for.inc1193

for.inc1193:                                      ; preds = %for.body1187, %if.then1191
  %incdec.ptr = getelementptr inbounds i8, ptr %frame.01687, i64 8
  %317 = load ptr, ptr %incdec.ptr, align 8
  %tobool1186.not = icmp eq ptr %317, null
  br i1 %tobool1186.not, label %for.end1194.loopexit, label %for.body1187

for.end1194.loopexit:                             ; preds = %for.inc1193
  %.pre1815 = load ptr, ptr %arrayidx1182, align 8
  br label %for.end1194

for.end1194:                                      ; preds = %for.end1194.loopexit, %if.then1179
  %318 = phi ptr [ %.pre1815, %for.end1194.loopexit ], [ %311, %if.then1179 ]
  %fdec = getelementptr inbounds i8, ptr %318, i64 14688
  %319 = load ptr, ptr %fdec, align 8
  %i_reference_count1198 = getelementptr inbounds i8, ptr %319, i64 15600
  %320 = load i32, ptr %i_reference_count1198, align 16
  %dec1199 = add nsw i32 %320, -1
  store i32 %dec1199, ptr %i_reference_count1198, align 16
  %321 = load ptr, ptr %fdec, align 8
  %i_reference_count1200 = getelementptr inbounds i8, ptr %321, i64 15600
  %322 = load i32, ptr %i_reference_count1200, align 16
  %cmp1201 = icmp eq i32 %322, 0
  br i1 %cmp1201, label %if.then1203, label %if.end1204

if.then1203:                                      ; preds = %for.end1194
  call void @x264_frame_delete(ptr noundef nonnull %321) #17
  br label %if.end1204

if.end1204:                                       ; preds = %if.then1203, %for.end1194
  %323 = load ptr, ptr %arrayidx1182, align 8
  call void @x264_macroblock_cache_free(ptr noundef %323) #17
  br label %if.end1208

if.end1208:                                       ; preds = %for.body1173, %if.end1204
  %arrayidx1211 = getelementptr inbounds [129 x ptr], ptr %thread1180, i64 0, i64 %indvars.iv.next1753
  %324 = load ptr, ptr %arrayidx1211, align 8
  call void @x264_macroblock_thread_free(ptr noundef %324, i32 noundef 0) #17
  %325 = load ptr, ptr %arrayidx1211, align 8
  %p_bitstream = getelementptr inbounds i8, ptr %325, i64 1784
  %326 = load ptr, ptr %p_bitstream, align 8
  call void @x264_free(ptr noundef %326) #17
  %327 = load ptr, ptr %arrayidx1211, align 8
  %nal = getelementptr inbounds i8, ptr %327, i64 1768
  %328 = load ptr, ptr %nal, align 8
  call void @x264_free(ptr noundef %328) #17
  %329 = load ptr, ptr %arrayidx1211, align 8
  call void @x264_free(ptr noundef %329) #17
  %cmp1170 = icmp sgt i64 %indvars.iv1752, 1
  br i1 %cmp1170, label %for.body1173, label %for.cond.cleanup1172
}

declare void @x264_lookahead_delete(ptr noundef) local_unnamed_addr #2

declare void @x264_frame_delete(ptr noundef) local_unnamed_addr #2

declare void @x264_ratecontrol_summary(ptr noundef) local_unnamed_addr #2

declare void @x264_ratecontrol_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare void @x264_cqm_delete(ptr noundef) local_unnamed_addr #2

declare void @x264_analyse_free_costs(ptr noundef) local_unnamed_addr #2

declare void @x264_frame_delete_list(ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_cache_free(ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_thread_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @x264_encoder_delayed_frames(ptr nocapture noundef readonly %h) local_unnamed_addr #14 {
entry:
  %i_thread_frames = getelementptr inbounds i8, ptr %h, i64 1852
  %0 = load i32, ptr %i_thread_frames, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %wide.trip.count = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

for.body.preheader:                               ; preds = %middle.block, %for.cond.preheader
  %indvars.iv.ph = phi i64 [ 0, %for.cond.preheader ], [ %n.vec, %middle.block ]
  %delayed_frames.037.ph = phi i32 [ 0, %for.cond.preheader ], [ %bin.rdx50, %middle.block ]
  %xtraiter = and i64 %wide.trip.count, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader ]
  %delayed_frames.037.prol = phi i32 [ %add.prol, %for.body.prol ], [ %delayed_frames.037.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx.prol = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv.prol
  %1 = load ptr, ptr %arrayidx.prol, align 8
  %b_thread_active.prol = getelementptr inbounds i8, ptr %1, i64 1740
  %2 = load i32, ptr %b_thread_active.prol, align 4
  %add.prol = add nsw i32 %2, %delayed_frames.037.prol
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !27

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %add.lcssa51.unr = phi i32 [ poison, %for.body.preheader ], [ %add.prol, %for.body.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %delayed_frames.037.unr = phi i32 [ %delayed_frames.037.ph, %for.body.preheader ], [ %add.prol, %for.body.prol ]
  %3 = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %4 = icmp ugt i64 %3, -4
  br i1 %4, label %for.cond.cleanup, label %for.body

vector.ph:                                        ; preds = %for.cond.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi i32 [ 0, %vector.ph ], [ %24, %vector.body ]
  %vec.phi46 = phi i32 [ 0, %vector.ph ], [ %25, %vector.body ]
  %vec.phi47 = phi i32 [ 0, %vector.ph ], [ %26, %vector.body ]
  %vec.phi48 = phi i32 [ 0, %vector.ph ], [ %27, %vector.body ]
  %5 = or disjoint i64 %index, 1
  %6 = or disjoint i64 %index, 2
  %7 = or disjoint i64 %index, 3
  %8 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %index
  %9 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %5
  %10 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %6
  %11 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %7
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = load ptr, ptr %11, align 8
  %16 = getelementptr inbounds i8, ptr %12, i64 1740
  %17 = getelementptr inbounds i8, ptr %13, i64 1740
  %18 = getelementptr inbounds i8, ptr %14, i64 1740
  %19 = getelementptr inbounds i8, ptr %15, i64 1740
  %20 = load i32, ptr %16, align 4
  %21 = load i32, ptr %17, align 4
  %22 = load i32, ptr %18, align 4
  %23 = load i32, ptr %19, align 4
  %24 = add i32 %20, %vec.phi
  %25 = add i32 %21, %vec.phi46
  %26 = add i32 %22, %vec.phi47
  %27 = add i32 %23, %vec.phi48
  %index.next = add nuw i64 %index, 4
  %28 = icmp eq i64 %index.next, %n.vec
  br i1 %28, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add i32 %25, %24
  %bin.rdx49 = add i32 %26, %bin.rdx
  %bin.rdx50 = add i32 %27, %bin.rdx49
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader

for.cond.cleanup:                                 ; preds = %for.body.prol.loopexit, %for.body, %middle.block
  %add.lcssa = phi i32 [ %bin.rdx50, %middle.block ], [ %add.lcssa51.unr, %for.body.prol.loopexit ], [ %add.3, %for.body ]
  %i_thread_phase = getelementptr inbounds i8, ptr %h, i64 1744
  %29 = load i32, ptr %i_thread_phase, align 16
  %idxprom4 = sext i32 %29 to i64
  %arrayidx5 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom4
  %30 = load ptr, ptr %arrayidx5, align 8
  br label %if.end

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %delayed_frames.037 = phi i32 [ %add.3, %for.body ], [ %delayed_frames.037.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv
  %31 = load ptr, ptr %arrayidx, align 8
  %b_thread_active = getelementptr inbounds i8, ptr %31, i64 1740
  %32 = load i32, ptr %b_thread_active, align 4
  %add = add nsw i32 %32, %delayed_frames.037
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv.next
  %33 = load ptr, ptr %arrayidx.1, align 8
  %b_thread_active.1 = getelementptr inbounds i8, ptr %33, i64 1740
  %34 = load i32, ptr %b_thread_active.1, align 4
  %add.1 = add nsw i32 %34, %add
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv.next.1
  %35 = load ptr, ptr %arrayidx.2, align 8
  %b_thread_active.2 = getelementptr inbounds i8, ptr %35, i64 1740
  %36 = load i32, ptr %b_thread_active.2, align 4
  %add.2 = add nsw i32 %36, %add.1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv.next.2
  %37 = load ptr, ptr %arrayidx.3, align 8
  %b_thread_active.3 = getelementptr inbounds i8, ptr %37, i64 1740
  %38 = load i32, ptr %b_thread_active.3, align 4
  %add.3 = add nsw i32 %38, %add.2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.cond.cleanup, label %for.body, !llvm.loop !30

if.end:                                           ; preds = %for.cond.cleanup, %entry
  %h.addr.0 = phi ptr [ %30, %for.cond.cleanup ], [ %h, %entry ]
  %delayed_frames.1 = phi i32 [ %add.lcssa, %for.cond.cleanup ], [ 0, %entry ]
  %frames = getelementptr inbounds i8, ptr %h.addr.0, i64 14416
  %39 = load ptr, ptr %frames, align 16
  %40 = load ptr, ptr %39, align 8
  %tobool.not39 = icmp eq ptr %40, null
  br i1 %tobool.not39, label %for.cond.cleanup10, label %for.body11

for.cond.cleanup10:                               ; preds = %for.body11, %if.end
  %delayed_frames.2.lcssa = phi i32 [ %delayed_frames.1, %if.end ], [ %inc12, %for.body11 ]
  %lookahead = getelementptr inbounds i8, ptr %h.addr.0, i64 33328
  %41 = load ptr, ptr %lookahead, align 16
  %i_size = getelementptr inbounds i8, ptr %41, i64 36
  %42 = load i32, ptr %i_size, align 4
  %i_size17 = getelementptr inbounds i8, ptr %41, i64 68
  %43 = load i32, ptr %i_size17, align 4
  %i_size20 = getelementptr inbounds i8, ptr %41, i64 100
  %44 = load i32, ptr %i_size20, align 4
  %add18 = add i32 %42, %delayed_frames.2.lcssa
  %add21 = add i32 %add18, %43
  %add22 = add i32 %add21, %44
  ret i32 %add22

for.body11:                                       ; preds = %if.end, %for.body11
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.body11 ], [ 0, %if.end ]
  %delayed_frames.240 = phi i32 [ %inc12, %for.body11 ], [ %delayed_frames.1, %if.end ]
  %inc12 = add nsw i32 %delayed_frames.240, 1
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %arrayidx9 = getelementptr inbounds ptr, ptr %39, i64 %indvars.iv.next44
  %45 = load ptr, ptr %arrayidx9, align 8
  %tobool.not = icmp eq ptr %45, null
  br i1 %tobool.not, label %for.cond.cleanup10, label %for.body11
}

declare i32 @x264_cpu_num_processors() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @log2f(float noundef) local_unnamed_addr #8

declare i32 @x264_nal_encode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_frame_push_unused(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_frame_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @x264_frame_pop(ptr noundef) local_unnamed_addr #2

declare void @x264_ratecontrol_set_weights(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_weight_scale_plane(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @x264_slice_header_init(ptr nocapture noundef %h, ptr nocapture noundef %sh, ptr noundef %sps, ptr noundef %pps, i32 noundef %i_idr_pic_id, i32 noundef %i_frame, i32 noundef %i_qp) unnamed_addr #15 {
entry:
  store ptr %sps, ptr %sh, align 16
  %pps3 = getelementptr inbounds i8, ptr %sh, i64 8
  store ptr %pps, ptr %pps3, align 8
  %i_first_mb = getelementptr inbounds i8, ptr %sh, i64 20
  store i32 0, ptr %i_first_mb, align 4
  %mb = getelementptr inbounds i8, ptr %h, i64 16368
  %0 = load i32, ptr %mb, align 16
  %sub = add nsw i32 %0, -1
  %i_last_mb = getelementptr inbounds i8, ptr %sh, i64 24
  store i32 %sub, ptr %i_last_mb, align 8
  %1 = load i32, ptr %pps, align 8
  %i_pps_id = getelementptr inbounds i8, ptr %sh, i64 28
  store i32 %1, ptr %i_pps_id, align 4
  %i_frame_num = getelementptr inbounds i8, ptr %sh, i64 32
  store i32 %i_frame, ptr %i_frame_num, align 16
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
  %2 = load i32, ptr %b_interlaced, align 8
  %b_mbaff = getelementptr inbounds i8, ptr %sh, i64 36
  store i32 %2, ptr %b_mbaff, align 4
  %b_field_pic = getelementptr inbounds i8, ptr %sh, i64 40
  store i32 0, ptr %b_field_pic, align 8
  %b_bottom_field = getelementptr inbounds i8, ptr %sh, i64 44
  store i32 0, ptr %b_bottom_field, align 4
  %i_idr_pic_id5 = getelementptr inbounds i8, ptr %sh, i64 48
  store i32 %i_idr_pic_id, ptr %i_idr_pic_id5, align 16
  %i_poc = getelementptr inbounds i8, ptr %sh, i64 52
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %h, i64 404
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i_poc, i8 0, i64 20, i1 false)
  %3 = load i32, ptr %i_direct_mv_pred, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %i_bframe = getelementptr inbounds i8, ptr %h, i64 100
  %4 = load i32, ptr %i_bframe, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %b_stat_write = getelementptr inbounds i8, ptr %h, i64 560
  %5 = load i32, ptr %b_stat_write, align 8
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %lor.rhs, label %land.end

lor.rhs:                                          ; preds = %land.rhs
  %b_stat_read = getelementptr inbounds i8, ptr %h, i64 576
  %6 = load i32, ptr %b_stat_read, align 8
  %tobool14.not = icmp eq i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs, %land.lhs.true, %entry
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ true, %land.rhs ], [ %tobool14.not, %lor.rhs ]
  %land.ext = zext i1 %7 to i32
  %b_direct_auto_write = getelementptr inbounds i8, ptr %h, i64 25820
  store i32 %land.ext, ptr %b_direct_auto_write, align 4
  %b_direct_auto_read = getelementptr inbounds i8, ptr %h, i64 25816
  %8 = load i32, ptr %b_direct_auto_read, align 8
  %tobool17.not = icmp eq i32 %8, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.end44

land.lhs.true18:                                  ; preds = %land.end
  %i_type = getelementptr inbounds i8, ptr %sh, i64 16
  %9 = load i32, ptr %i_type, align 16
  %cmp19 = icmp eq i32 %9, 1
  br i1 %cmp19, label %if.then, label %if.end44

if.then:                                          ; preds = %land.lhs.true18
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864
  %10 = load ptr, ptr %fref1, align 16
  %i_poc_l0ref0 = getelementptr inbounds i8, ptr %10, i64 96
  %11 = load i32, ptr %i_poc_l0ref0, align 16
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  %12 = load ptr, ptr %fref0, align 16
  %13 = load i32, ptr %12, align 16
  %cmp23 = icmp eq i32 %11, %13
  br i1 %cmp23, label %if.then24, label %if.else39

if.then24:                                        ; preds = %if.then
  br i1 %7, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then24
  %i_direct_score = getelementptr inbounds i8, ptr %h, i64 30368
  %arrayidx29 = getelementptr inbounds i8, ptr %h, i64 30372
  %14 = load i32, ptr %arrayidx29, align 4
  %15 = load i32, ptr %i_direct_score, align 8
  %cmp33 = icmp sgt i32 %14, %15
  br label %if.end44.sink.split

if.else:                                          ; preds = %if.then24
  %cmp36 = icmp eq i32 %3, 1
  br label %if.end44.sink.split

if.else39:                                        ; preds = %if.then
  store i32 0, ptr %b_direct_auto_write, align 4
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.then28, %if.else, %if.else39
  %.sink.shrunk = phi i1 [ true, %if.else39 ], [ %cmp36, %if.else ], [ %cmp33, %if.then28 ]
  %.sink = zext i1 %.sink.shrunk to i32
  %b_direct_spatial_mv_pred42 = getelementptr inbounds i8, ptr %sh, i64 72
  store i32 %.sink, ptr %b_direct_spatial_mv_pred42, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %land.lhs.true18, %land.end
  %b_num_ref_idx_override = getelementptr inbounds i8, ptr %sh, i64 76
  store i32 0, ptr %b_num_ref_idx_override, align 4
  %i_num_ref_idx_l0_active = getelementptr inbounds i8, ptr %sh, i64 80
  store i32 1, ptr %i_num_ref_idx_l0_active, align 16
  %i_num_ref_idx_l1_active = getelementptr inbounds i8, ptr %sh, i64 84
  store i32 1, ptr %i_num_ref_idx_l1_active, align 4
  %b_ref_reorder = getelementptr inbounds i8, ptr %h, i64 15016
  %16 = load i32, ptr %b_ref_reorder, align 8
  %b_ref_pic_list_reordering_l0 = getelementptr inbounds i8, ptr %sh, i64 88
  store i32 %16, ptr %b_ref_pic_list_reordering_l0, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %h, i64 15020
  %17 = load i32, ptr %arrayidx47, align 4
  %b_ref_pic_list_reordering_l1 = getelementptr inbounds i8, ptr %sh, i64 92
  store i32 %17, ptr %b_ref_pic_list_reordering_l1, align 4
  %tobool49.not = icmp eq i32 %16, 0
  br i1 %tobool49.not, label %if.end72, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end44
  %i_ref0 = getelementptr inbounds i8, ptr %h, i64 14696
  %18 = load i32, ptr %i_ref0, align 8
  %cmp51173 = icmp sgt i32 %18, 0
  br i1 %cmp51173, label %for.body.lr.ph, label %if.end72

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fref053 = getelementptr inbounds i8, ptr %h, i64 14704
  %ref_pic_list_order = getelementptr inbounds i8, ptr %sh, i64 96
  %i_log2_max_frame_num = getelementptr inbounds i8, ptr %sps, i64 24
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %pred_frame_num.0175 = phi i32 [ %i_frame, %for.body.lr.ph ], [ %24, %for.body ]
  %arrayidx54 = getelementptr inbounds [19 x ptr], ptr %fref053, i64 0, i64 %indvars.iv
  %19 = load ptr, ptr %arrayidx54, align 8
  %i_frame_num55 = getelementptr inbounds i8, ptr %19, i64 68
  %20 = load i32, ptr %i_frame_num55, align 4
  %sub56 = sub nsw i32 %20, %pred_frame_num.0175
  %cmp57 = icmp sgt i32 %sub56, 0
  %conv58 = zext i1 %cmp57 to i32
  %arrayidx61 = getelementptr inbounds [16 x %struct.anon.6], ptr %ref_pic_list_order, i64 0, i64 %indvars.iv
  store i32 %conv58, ptr %arrayidx61, align 8
  %21 = tail call i32 @llvm.abs.i32(i32 %sub56, i1 true)
  %sub62 = add nuw i32 %21, 2147483647
  %22 = load i32, ptr %i_log2_max_frame_num, align 4
  %notmask = shl nsw i32 -1, %22
  %sub63 = xor i32 %notmask, -1
  %and = and i32 %sub62, %sub63
  %arg = getelementptr inbounds i8, ptr %arrayidx61, i64 4
  store i32 %and, ptr %arg, align 4
  %23 = load ptr, ptr %arrayidx54, align 8
  %i_frame_num71 = getelementptr inbounds i8, ptr %23, i64 68
  %24 = load i32, ptr %i_frame_num71, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %25 = load i32, ptr %i_ref0, align 8
  %26 = sext i32 %25 to i64
  %cmp51 = icmp slt i64 %indvars.iv.next, %26
  br i1 %cmp51, label %for.body, label %if.end72

if.end72:                                         ; preds = %for.body, %for.cond.preheader, %if.end44
  %i_cabac_init_idc = getelementptr inbounds i8, ptr %h, i64 132
  %27 = load i32, ptr %i_cabac_init_idc, align 4
  %i_cabac_init_idc73 = getelementptr inbounds i8, ptr %sh, i64 6632
  store i32 %27, ptr %i_cabac_init_idc73, align 8
  %i_qp74 = getelementptr inbounds i8, ptr %sh, i64 6636
  store i32 %i_qp, ptr %i_qp74, align 4
  %i_pic_init_qp = getelementptr inbounds i8, ptr %pps, i64 36
  %28 = load i32, ptr %i_pic_init_qp, align 4
  %sub75 = sub nsw i32 %i_qp, %28
  %i_qp_delta = getelementptr inbounds i8, ptr %sh, i64 6640
  store i32 %sub75, ptr %i_qp_delta, align 16
  %b_sp_for_swidth = getelementptr inbounds i8, ptr %sh, i64 6644
  store i32 0, ptr %b_sp_for_swidth, align 4
  %i_qs_delta = getelementptr inbounds i8, ptr %sh, i64 6648
  store i32 0, ptr %i_qs_delta, align 8
  %i_deblocking_filter_alphac0 = getelementptr inbounds i8, ptr %h, i64 120
  %i_deblocking_filter_beta = getelementptr inbounds i8, ptr %h, i64 124
  %b_deblocking_filter = getelementptr inbounds i8, ptr %h, i64 116
  %29 = load i32, ptr %b_deblocking_filter, align 4
  %tobool80.not = icmp eq i32 %29, 0
  br i1 %tobool80.not, label %if.end91, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %if.end72
  %30 = load i32, ptr %i_deblocking_filter_alphac0, align 8
  %31 = load i32, ptr %i_deblocking_filter_beta, align 4
  %. = tail call i32 @llvm.smin.i32(i32 %30, i32 %31)
  %mul = shl nsw i32 %., 1
  %add = add nsw i32 %mul, %i_qp
  %b_variable_qp = getelementptr inbounds i8, ptr %h, i64 25808
  %32 = load i32, ptr %b_variable_qp, align 16
  %tobool83 = icmp ne i32 %32, 0
  %cmp84 = icmp sgt i32 %add, 15
  %or.cond = select i1 %tobool83, i1 true, i1 %cmp84
  br i1 %or.cond, label %if.then86, label %if.end91

if.then86:                                        ; preds = %land.lhs.true81
  %b_sliced_threads = getelementptr inbounds i8, ptr %h, i64 8
  %33 = load i32, ptr %b_sliced_threads, align 8
  %tobool87.not = icmp eq i32 %33, 0
  %cond88 = select i1 %tobool87.not, i32 0, i32 2
  br label %if.end91

if.end91:                                         ; preds = %if.end72, %land.lhs.true81, %if.then86
  %.sink177 = phi i32 [ %cond88, %if.then86 ], [ 1, %land.lhs.true81 ], [ 1, %if.end72 ]
  %i_disable_deblocking_filter_idc90 = getelementptr inbounds i8, ptr %sh, i64 6652
  store i32 %.sink177, ptr %i_disable_deblocking_filter_idc90, align 4
  %34 = load i32, ptr %i_deblocking_filter_alphac0, align 8
  %shl93 = shl i32 %34, 1
  %i_alpha_c0_offset = getelementptr inbounds i8, ptr %sh, i64 6656
  store i32 %shl93, ptr %i_alpha_c0_offset, align 16
  %35 = load i32, ptr %i_deblocking_filter_beta, align 4
  %shl95 = shl i32 %35, 1
  %i_beta_offset = getelementptr inbounds i8, ptr %sh, i64 6660
  store i32 %shl95, ptr %i_beta_offset, align 4
  ret void
}

declare void @x264_macroblock_slice_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

declare void @x264_analyse_weight_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_threads_distribute_ratecontrol(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_fdec_filter_row(ptr noundef %h, i32 noundef %mb_y, i32 noundef %b_inloop) unnamed_addr #0 {
entry:
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %0 = load ptr, ptr %fdec, align 16
  %b_kept_as_ref = getelementptr inbounds i8, ptr %0, i64 72
  %1 = load i32, ptr %b_kept_as_ref, align 8
  %i_disable_deblocking_filter_idc = getelementptr inbounds i8, ptr %h, i64 13884
  %2 = load i32, ptr %i_disable_deblocking_filter_idc, align 4
  %cmp = icmp ne i32 %2, 1
  %i_threadslice_end = getelementptr inbounds i8, ptr %h, i64 1752
  %3 = load i32, ptr %i_threadslice_end, align 8
  %cmp1 = icmp ne i32 %3, %mb_y
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %4 = load i32, ptr %b_mbaff, align 4
  %shl.neg = shl nsw i32 -1, %4
  %sub = add i32 %shl.neg, %mb_y
  %i_threadslice_start = getelementptr inbounds i8, ptr %h, i64 1748
  %5 = load i32, ptr %i_threadslice_start, align 4
  %cmp4 = icmp eq i32 %sub, %5
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %psz_dump_yuv = getelementptr inbounds i8, ptr %h, i64 376
  %6 = load ptr, ptr %psz_dump_yuv, align 8
  %tobool8 = icmp ne ptr %6, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %7 = phi i1 [ true, %entry ], [ %tobool8, %lor.rhs ]
  %and379 = and i1 %cmp, %7
  %b_sliced_threads = getelementptr inbounds i8, ptr %h, i64 8
  %8 = load i32, ptr %b_sliced_threads, align 8
  %tobool10 = icmp ne i32 %8, 0
  %tobool13 = icmp ne i32 %sub, 0
  %9 = and i1 %cmp4, %tobool13
  %or.cond265 = select i1 %tobool10, i1 %9, i1 false
  %or.cond265.not = xor i1 %or.cond265, true
  %tobool15 = icmp ne i32 %b_inloop, 0
  %or.cond266 = or i1 %tobool15, %or.cond265.not
  %narrow = select i1 %or.cond266, i1 %and379, i1 false
  %and18 = and i32 %4, %mb_y
  %tobool19.not = icmp ne i32 %and18, 0
  %cmp23 = icmp slt i32 %sub, %5
  %or.cond = select i1 %tobool19.not, i1 true, i1 %cmp23
  br i1 %or.cond, label %cleanup, label %if.end26

if.end26:                                         ; preds = %lor.end
  %or.cond267 = and i1 %tobool15, %cmp1
  %cmp33.not381 = icmp sgt i32 %4, -1
  %or.cond395.not = select i1 %or.cond267, i1 %cmp33.not381, i1 false
  br i1 %or.cond395.not, label %for.cond35.preheader.lr.ph, label %if.end66

for.cond35.preheader.lr.ph:                       ; preds = %if.end26
  %intra_border_backup = getelementptr inbounds i8, ptr %h, i64 31184
  %mul = shl nsw i32 %mb_y, 4
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %shr.1 = shl nsw i32 %mb_y, 3
  br label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %for.cond35.preheader.lr.ph, %for.cond35.preheader
  %10 = phi i32 [ %4, %for.cond35.preheader.lr.ph ], [ %38, %for.cond35.preheader ]
  %indvars.iv = phi i64 [ 0, %for.cond35.preheader.lr.ph ], [ %indvars.iv.next, %for.cond35.preheader ]
  %arrayidx41 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 0
  %11 = load ptr, ptr %arrayidx41, align 8
  %12 = load ptr, ptr %fdec, align 16
  %plane = getelementptr inbounds i8, ptr %12, i64 152
  %13 = load ptr, ptr %plane, align 8
  %14 = xor i32 %10, -1
  %15 = trunc i64 %indvars.iv to i32
  %16 = add i32 %mul, %15
  %sub50 = add i32 %16, %14
  %i_stride = getelementptr inbounds i8, ptr %12, i64 104
  %17 = load i32, ptr %i_stride, align 4
  %mul54 = mul nsw i32 %sub50, %17
  %idx.ext = sext i32 %mul54 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  %18 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %18, i64 1084
  %19 = load i32, ptr %i_mb_width, align 4
  %mul55 = shl nsw i32 %19, 4
  %conv62 = sext i32 %mul55 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %add.ptr, i64 %conv62, i1 false)
  %arrayidx41.1 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 1
  %20 = load ptr, ptr %arrayidx41.1, align 8
  %21 = load ptr, ptr %fdec, align 16
  %arrayidx44.1 = getelementptr inbounds i8, ptr %21, i64 160
  %22 = load ptr, ptr %arrayidx44.1, align 8
  %23 = load i32, ptr %b_mbaff, align 4
  %24 = xor i32 %23, -1
  %25 = trunc i64 %indvars.iv to i32
  %26 = add i32 %shr.1, %25
  %sub50.1 = add i32 %26, %24
  %arrayidx53.1 = getelementptr inbounds i8, ptr %21, i64 108
  %27 = load i32, ptr %arrayidx53.1, align 4
  %mul54.1 = mul nsw i32 %sub50.1, %27
  %idx.ext.1 = sext i32 %mul54.1 to i64
  %add.ptr.1 = getelementptr inbounds i8, ptr %22, i64 %idx.ext.1
  %28 = load ptr, ptr %sps, align 16
  %i_mb_width.1 = getelementptr inbounds i8, ptr %28, i64 1084
  %29 = load i32, ptr %i_mb_width.1, align 4
  %shr61.1 = shl nsw i32 %29, 3
  %conv62.1 = sext i32 %shr61.1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %add.ptr.1, i64 %conv62.1, i1 false)
  %arrayidx41.2 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 2
  %30 = load ptr, ptr %arrayidx41.2, align 8
  %31 = load ptr, ptr %fdec, align 16
  %arrayidx44.2 = getelementptr inbounds i8, ptr %31, i64 168
  %32 = load ptr, ptr %arrayidx44.2, align 8
  %33 = load i32, ptr %b_mbaff, align 4
  %34 = xor i32 %33, -1
  %sub50.2 = add i32 %26, %34
  %arrayidx53.2 = getelementptr inbounds i8, ptr %31, i64 112
  %35 = load i32, ptr %arrayidx53.2, align 4
  %mul54.2 = mul nsw i32 %sub50.2, %35
  %idx.ext.2 = sext i32 %mul54.2 to i64
  %add.ptr.2 = getelementptr inbounds i8, ptr %32, i64 %idx.ext.2
  %36 = load ptr, ptr %sps, align 16
  %i_mb_width.2 = getelementptr inbounds i8, ptr %36, i64 1084
  %37 = load i32, ptr %i_mb_width.2, align 4
  %shr61.2 = shl nsw i32 %37, 3
  %conv62.2 = sext i32 %shr61.2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %add.ptr.2, i64 %conv62.2, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %38 = load i32, ptr %b_mbaff, align 4
  %39 = sext i32 %38 to i64
  %cmp33.not.not = icmp slt i64 %indvars.iv, %39
  br i1 %cmp33.not.not, label %for.cond35.preheader, label %if.end66

if.end66:                                         ; preds = %for.cond35.preheader, %if.end26
  %cmp70383 = icmp slt i32 %sub, %mb_y
  %or.cond386 = select i1 %narrow, i1 %cmp70383, i1 false
  br i1 %or.cond386, label %for.body73, label %if.end80

for.body73:                                       ; preds = %if.end66, %for.body73
  %y.0384 = phi i32 [ %add78, %for.body73 ], [ %sub, %if.end66 ]
  tail call void @x264_frame_deblock_row(ptr noundef nonnull %h, i32 noundef %y.0384) #17
  %40 = load i32, ptr %b_mbaff, align 4
  %shl77 = shl nuw i32 1, %40
  %add78 = add nsw i32 %shl77, %y.0384
  %cmp70 = icmp slt i32 %add78, %mb_y
  br i1 %cmp70, label %for.body73, label %if.end80

if.end80:                                         ; preds = %for.body73, %if.end66
  br i1 %tobool7.not, label %if.end93, label %if.then82

if.then82:                                        ; preds = %if.end80
  %sps83 = getelementptr inbounds i8, ptr %h, i64 3200
  %41 = load ptr, ptr %sps83, align 16
  %i_mb_height = getelementptr inbounds i8, ptr %41, i64 1088
  %42 = load i32, ptr %i_mb_height, align 4
  %cmp84 = icmp eq i32 %42, %mb_y
  %conv85 = zext i1 %cmp84 to i32
  %43 = load ptr, ptr %fdec, align 16
  tail call void @x264_frame_expand_border(ptr noundef nonnull %h, ptr noundef %43, i32 noundef %sub, i32 noundef %conv85) #17
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 428
  %44 = load i32, ptr %i_subpel_refine, align 4
  %tobool88.not = icmp eq i32 %44, 0
  br i1 %tobool88.not, label %if.end93, label %if.then89

if.then89:                                        ; preds = %if.then82
  %45 = load ptr, ptr %fdec, align 16
  tail call void @x264_frame_filter(ptr noundef nonnull %h, ptr noundef %45, i32 noundef %sub, i32 noundef %conv85) #17
  %46 = load ptr, ptr %fdec, align 16
  tail call void @x264_frame_expand_border_filtered(ptr noundef nonnull %h, ptr noundef %46, i32 noundef %sub, i32 noundef %conv85) #17
  br label %if.end93

if.end93:                                         ; preds = %if.then82, %if.then89, %if.end80
  %i_thread_frames = getelementptr inbounds i8, ptr %h, i64 1852
  %47 = load i32, ptr %i_thread_frames, align 4
  %cmp94 = icmp sgt i32 %47, 1
  br i1 %cmp94, label %land.lhs.true96, label %if.end113

land.lhs.true96:                                  ; preds = %if.end93
  %48 = load ptr, ptr %fdec, align 16
  %b_kept_as_ref98 = getelementptr inbounds i8, ptr %48, i64 72
  %49 = load i32, ptr %b_kept_as_ref98, align 8
  %tobool99.not = icmp eq i32 %49, 0
  br i1 %tobool99.not, label %if.end113, label %if.then100

if.then100:                                       ; preds = %land.lhs.true96
  %mul102 = shl nsw i32 %mb_y, 4
  br i1 %cmp1, label %cond.false105, label %cond.end110

cond.false105:                                    ; preds = %if.then100
  %50 = load i32, ptr %b_mbaff, align 4
  %shl108.neg = shl i32 -24, %50
  br label %cond.end110

cond.end110:                                      ; preds = %if.then100, %cond.false105
  %cond111 = phi i32 [ %shl108.neg, %cond.false105 ], [ 10000, %if.then100 ]
  %add112 = add nsw i32 %cond111, %mul102
  tail call void @x264_frame_cond_broadcast(ptr noundef nonnull %48, i32 noundef %add112) #17
  br label %if.end113

if.end113:                                        ; preds = %cond.end110, %land.lhs.true96, %if.end93
  %mul114 = shl nsw i32 %sub, 4
  %mul118.neg = select i1 %cmp4, i32 0, i32 -8
  %sub119 = add i32 %mul118.neg, %mul114
  br i1 %cmp1, label %cond.false135, label %cond.true121

cond.true121:                                     ; preds = %if.end113
  %51 = load i32, ptr %i_threadslice_end, align 8
  %mul123 = shl nsw i32 %51, 4
  %i_height = getelementptr inbounds i8, ptr %h, i64 24
  %52 = load i32, ptr %i_height, align 8
  %mul123. = tail call i32 @llvm.smin.i32(i32 %mul123, i32 %52)
  br label %cond.end138

cond.false135:                                    ; preds = %if.end113
  %mul136 = shl nsw i32 %mb_y, 4
  %sub137 = add nsw i32 %mul136, -8
  br label %cond.end138

cond.end138:                                      ; preds = %cond.true121, %cond.false135
  %cond139 = phi i32 [ %sub137, %cond.false135 ], [ %mul123., %cond.true121 ]
  br i1 %or.cond266, label %if.then141, label %cleanup

if.then141:                                       ; preds = %cond.end138
  %b_psnr = getelementptr inbounds i8, ptr %h, i64 476
  %53 = load i32, ptr %b_psnr, align 4
  %tobool144.not = icmp eq i32 %53, 0
  br i1 %tobool144.not, label %if.end213, label %for.cond147.preheader

for.cond147.preheader:                            ; preds = %if.then141
  %pixf = getelementptr inbounds i8, ptr %h, i64 31560
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %i_width = getelementptr inbounds i8, ptr %h, i64 20
  %sub200 = sub nsw i32 %cond139, %sub119
  %i_ssd = getelementptr inbounds i8, ptr %h, i64 27384
  %54 = load ptr, ptr %fdec, align 16
  %plane153 = getelementptr inbounds i8, ptr %54, i64 152
  %55 = load ptr, ptr %plane153, align 8
  %i_stride163 = getelementptr inbounds i8, ptr %54, i64 104
  %56 = load i32, ptr %i_stride163, align 4
  %mul166 = mul nsw i32 %56, %sub119
  %idx.ext167 = sext i32 %mul166 to i64
  %add.ptr168 = getelementptr inbounds i8, ptr %55, i64 %idx.ext167
  %57 = load ptr, ptr %fenc, align 8
  %plane173 = getelementptr inbounds i8, ptr %57, i64 152
  %58 = load ptr, ptr %plane173, align 8
  %i_stride183 = getelementptr inbounds i8, ptr %57, i64 104
  %59 = load i32, ptr %i_stride183, align 4
  %mul186 = mul nsw i32 %59, %sub119
  %idx.ext187 = sext i32 %mul186 to i64
  %add.ptr188 = getelementptr inbounds i8, ptr %58, i64 %idx.ext187
  %60 = load i32, ptr %i_width, align 4
  %call = tail call i64 @x264_pixel_ssd_wxh(ptr noundef nonnull %pixf, ptr noundef %add.ptr168, i32 noundef %56, ptr noundef %add.ptr188, i32 noundef %59, i32 noundef %60, i32 noundef %sub200) #17
  %61 = load i64, ptr %i_ssd, align 8
  %add209 = add nsw i64 %61, %call
  store i64 %add209, ptr %i_ssd, align 8
  %62 = load ptr, ptr %fdec, align 16
  %arrayidx155.1 = getelementptr inbounds i8, ptr %62, i64 160
  %63 = load ptr, ptr %arrayidx155.1, align 8
  %shr161.1 = ashr exact i32 %sub119, 1
  %arrayidx165.1 = getelementptr inbounds i8, ptr %62, i64 108
  %64 = load i32, ptr %arrayidx165.1, align 4
  %mul166.1 = mul nsw i32 %64, %shr161.1
  %idx.ext167.1 = sext i32 %mul166.1 to i64
  %add.ptr168.1 = getelementptr inbounds i8, ptr %63, i64 %idx.ext167.1
  %65 = load ptr, ptr %fenc, align 8
  %arrayidx175.1 = getelementptr inbounds i8, ptr %65, i64 160
  %66 = load ptr, ptr %arrayidx175.1, align 8
  %arrayidx185.1 = getelementptr inbounds i8, ptr %65, i64 108
  %67 = load i32, ptr %arrayidx185.1, align 4
  %mul186.1 = mul nsw i32 %67, %shr161.1
  %idx.ext187.1 = sext i32 %mul186.1 to i64
  %add.ptr188.1 = getelementptr inbounds i8, ptr %66, i64 %idx.ext187.1
  %68 = load i32, ptr %i_width, align 4
  %shr199.1 = ashr i32 %68, 1
  %shr206.1 = ashr i32 %sub200, 1
  %call.1 = tail call i64 @x264_pixel_ssd_wxh(ptr noundef nonnull %pixf, ptr noundef %add.ptr168.1, i32 noundef %64, ptr noundef %add.ptr188.1, i32 noundef %67, i32 noundef %shr199.1, i32 noundef %shr206.1) #17
  %arrayidx208.1 = getelementptr inbounds i8, ptr %h, i64 27392
  %69 = load i64, ptr %arrayidx208.1, align 8
  %add209.1 = add nsw i64 %69, %call.1
  store i64 %add209.1, ptr %arrayidx208.1, align 8
  %70 = load ptr, ptr %fdec, align 16
  %arrayidx155.2 = getelementptr inbounds i8, ptr %70, i64 168
  %71 = load ptr, ptr %arrayidx155.2, align 8
  %arrayidx165.2 = getelementptr inbounds i8, ptr %70, i64 112
  %72 = load i32, ptr %arrayidx165.2, align 4
  %mul166.2 = mul nsw i32 %72, %shr161.1
  %idx.ext167.2 = sext i32 %mul166.2 to i64
  %add.ptr168.2 = getelementptr inbounds i8, ptr %71, i64 %idx.ext167.2
  %73 = load ptr, ptr %fenc, align 8
  %arrayidx175.2 = getelementptr inbounds i8, ptr %73, i64 168
  %74 = load ptr, ptr %arrayidx175.2, align 8
  %arrayidx185.2 = getelementptr inbounds i8, ptr %73, i64 112
  %75 = load i32, ptr %arrayidx185.2, align 4
  %mul186.2 = mul nsw i32 %75, %shr161.1
  %idx.ext187.2 = sext i32 %mul186.2 to i64
  %add.ptr188.2 = getelementptr inbounds i8, ptr %74, i64 %idx.ext187.2
  %76 = load i32, ptr %i_width, align 4
  %shr199.2 = ashr i32 %76, 1
  %call.2 = tail call i64 @x264_pixel_ssd_wxh(ptr noundef nonnull %pixf, ptr noundef %add.ptr168.2, i32 noundef %72, ptr noundef %add.ptr188.2, i32 noundef %75, i32 noundef %shr199.2, i32 noundef %shr206.1) #17
  %arrayidx208.2 = getelementptr inbounds i8, ptr %h, i64 27400
  %77 = load i64, ptr %arrayidx208.2, align 8
  %add209.2 = add nsw i64 %77, %call.2
  store i64 %add209.2, ptr %arrayidx208.2, align 8
  br label %if.end213

if.end213:                                        ; preds = %for.cond147.preheader, %if.then141
  %b_ssim = getelementptr inbounds i8, ptr %h, i64 480
  %78 = load i32, ptr %b_ssim, align 16
  %tobool216.not = icmp eq i32 %78, 0
  br i1 %tobool216.not, label %cleanup, label %if.then217

if.then217:                                       ; preds = %if.end213
  %cond219 = select i1 %cmp4, i32 2, i32 -6
  %add220 = add nsw i32 %sub119, %cond219
  %pixf221 = getelementptr inbounds i8, ptr %h, i64 31560
  %79 = load ptr, ptr %fdec, align 16
  %plane223 = getelementptr inbounds i8, ptr %79, i64 152
  %80 = load ptr, ptr %plane223, align 8
  %add.ptr225 = getelementptr inbounds i8, ptr %80, i64 2
  %i_stride227 = getelementptr inbounds i8, ptr %79, i64 104
  %81 = load i32, ptr %i_stride227, align 8
  %mul229 = mul nsw i32 %81, %add220
  %idx.ext230 = sext i32 %mul229 to i64
  %add.ptr231 = getelementptr inbounds i8, ptr %add.ptr225, i64 %idx.ext230
  %fenc235 = getelementptr inbounds i8, ptr %h, i64 14680
  %82 = load ptr, ptr %fenc235, align 8
  %plane236 = getelementptr inbounds i8, ptr %82, i64 152
  %83 = load ptr, ptr %plane236, align 8
  %add.ptr238 = getelementptr inbounds i8, ptr %83, i64 2
  %i_stride240 = getelementptr inbounds i8, ptr %82, i64 104
  %84 = load i32, ptr %i_stride240, align 8
  %mul242 = mul nsw i32 %84, %add220
  %idx.ext243 = sext i32 %mul242 to i64
  %add.ptr244 = getelementptr inbounds i8, ptr %add.ptr238, i64 %idx.ext243
  %i_width249 = getelementptr inbounds i8, ptr %h, i64 20
  %85 = load i32, ptr %i_width249, align 4
  %sub250 = add nsw i32 %85, -2
  %sub251 = sub nsw i32 %cond139, %add220
  %scratch_buffer = getelementptr inbounds i8, ptr %h, i64 31176
  %86 = load ptr, ptr %scratch_buffer, align 8
  %call252 = tail call float @x264_pixel_ssim_wxh(ptr noundef nonnull %pixf221, ptr noundef nonnull %add.ptr231, i32 noundef %81, ptr noundef nonnull %add.ptr244, i32 noundef %84, i32 noundef %sub250, i32 noundef %sub251, ptr noundef %86) #17
  %conv253 = fpext float %call252 to double
  %f_ssim = getelementptr inbounds i8, ptr %h, i64 27408
  %87 = load double, ptr %f_ssim, align 8
  %add256 = fadd double %87, %conv253
  store double %add256, ptr %f_ssim, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end138, %if.then217, %if.end213, %lor.end
  ret void
}

declare void @x264_threads_merge_ratecontrol(ptr noundef) local_unnamed_addr #2

declare void @x264_frame_deblock_row(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_frame_expand_border(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_frame_filter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_frame_expand_border_filtered(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_frame_cond_broadcast(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @x264_pixel_ssd_wxh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare float @x264_pixel_ssim_wxh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_thread_init(ptr noundef) local_unnamed_addr #2

declare void @x264_cabac_context_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_cabac_encode_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_cache_load(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_macroblock_analyse(ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_encode(ptr noundef) local_unnamed_addr #2

declare void @x264_cabac_encode_terminal_c(ptr noundef) local_unnamed_addr #2

declare void @x264_cabac_mb_skip(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_macroblock_write_cabac(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_write_cavlc(ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_cache_save(ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_cache_load_deblock(ptr noundef) local_unnamed_addr #2

declare void @x264_ratecontrol_mb(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_cabac_encode_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @x264_hrd_fullness(ptr noundef) local_unnamed_addr #2

declare void @x264_sei_buffering_period_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

declare i32 @x264_ratecontrol_end(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_filler_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_noise_reduction_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

declare void @x264_frame_push_blank_unused(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.peeled.count", i32 1}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !10, !9}
!13 = distinct !{!13, !10, !9}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !6}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9, !10}
!26 = distinct !{!26, !10, !9}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !9, !10}
!30 = distinct !{!30, !9}
