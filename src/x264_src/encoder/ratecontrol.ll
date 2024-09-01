; ModuleID = 'x264_src/encoder/ratecontrol.c'
source_filename = "x264_src/encoder/ratecontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_level_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratecontrol_entry_t = type { i32, i32, i32, double, i32, i32, i32, i64, double, double, i32, i32, i32, i32, float, i8, [2 x i16], i16, [16 x i32], i32, i32, i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.x264_zone_t = type { i32, i32, i32, i32, float, ptr }
%struct.predictor_t = type { double, double, double, double }
%struct.x264_ratecontrol_t = type { i32, i32, i32, i32, double, double, double, double, i32, [5 x i32], ptr, i32, float, float, float, float, i32, double, double, double, double, double, ptr, i32, double, i32, double, double, double, double, double, double, double, double, double, double, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, double, [5 x double], i32, double, double, double, [5 x double], [5 x double], double, [2 x ptr], i32, float, double, double, double, double, ptr, [5 x [2 x %struct.predictor_t]], ptr, i32, i32, i32, ptr, ptr, i32, i32, double, double }

@.str = private unnamed_addr constant [57 x i8] c"MB-tree frametype %d doesn't match actual frametype %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Incomplete MB-tree stats file.\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"VBV buffer size cannot be smaller than one frame, using %d kbit\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"VBV parameters cannot be changed when NAL HRD is in use\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"CRF max must be greater than CRF\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"constant rate-factor is incompatible with 2pass.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"bitrate tolerance too small, using .01\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to parse zones\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"h->param.rc.psz_stat_in\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"x264_src/encoder/ratecontrol.c\00", align 1
@__PRETTY_FUNCTION__.x264_ratecontrol_new = private unnamed_addr constant [35 x i8] c"int x264_ratecontrol_new(x264_t *)\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"ratecontrol_init: can't open stats file\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c".mbtree\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"ratecontrol_init: can't open mbtree stats file\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"#options:\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"#options: %dx%d\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"resolution specified in stats file not valid\0A\00", align 1
@.str.17 = private unnamed_addr constant [77 x i8] c"MB-tree doesn't support different resolution than 1st pass (%dx%d vs %dx%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"timebase=\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"timebase=%u/%u\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"timebase specified in stats file not valid\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"timebase mismatch with 1st pass (%u/%u vs %u/%u)\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"weightp=\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"weightp=%d\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"different weightp setting than first pass (%d vs %d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"bframes=\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"bframes=%d\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"different bframes setting than first pass (%d vs %d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"b_pyramid=\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"b_pyramid=%d\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"different b_pyramid setting than first pass (%d vs %d)\0A\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"intra_refresh=\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"intra_refresh=%d\00", align 1
@.str.33 = private unnamed_addr constant [60 x i8] c"different intra_refresh setting than first pass (%d vs %d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"keyint=\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"keyint=%d\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"different keyint setting than first pass (%d vs %d)\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"qp=0\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"1st pass was lossless, bitrate prediction will be inaccurate\0A\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"direct=3\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"direct=auto not used on the first pass\0A\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"b_adapt=\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"b_adapt=%d\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"b_adapt method specified in stats file not valid\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"rc_lookahead=\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"rc_lookahead=%d\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"empty stats file\0A\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"2nd pass has fewer frames than 1st pass (%d vs %d)\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"2nd pass has more frames than 1st pass (%d vs %d)\0A\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c" in:%d \00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"bad frame number (%d) at stats line %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [93 x i8] c" in:%*d out:%*d type:%c dur:%d cpbdur:%d q:%f tex:%d mv:%d misc:%d imb:%d pmb:%d smb:%d d:%c\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"ref:\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"w:%hd,%hd,%hd\00", align 1
@.str.55 = private unnamed_addr constant [50 x i8] c"statistics are damaged at line %d, parser out=%d\0A\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c".temp\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"#options: %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c".mbtree.temp\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"final ratefactor: %.2f\0A\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"failed to rename \22%s\22 to \22%s\22\0A\00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"frame >= 0 && frame < rc->num_entries\00", align 1
@__PRETTY_FUNCTION__.x264_ratecontrol_start = private unnamed_addr constant [48 x i8] c"void x264_ratecontrol_start(x264_t *, int, int)\00", align 1
@x264_levels = external local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.63 = private unnamed_addr constant [45 x i8] c"2nd pass has more frames than 1st pass (%d)\0A\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"continuing anyway, at constant QP=%d\0A\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"disabling adaptive B-frames\0A\00", align 1
@.str.66 = private unnamed_addr constant [97 x i8] c"in:%d out:%d type:%c dur:%d cpbdur:%d q:%.2f tex:%d mv:%d misc:%d imb:%d pmb:%d smb:%d d:%c ref:\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"w:%d,%d,%d\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.70 = private unnamed_addr constant [53 x i8] c"ratecontrol_end: stats file could not be written to\0A\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"CPB %s: %.0lf bits in a %.0lf-bit buffer\0A\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@x264_log2_lut = external local_unnamed_addr constant [128 x float], align 16
@x264_log2_lz_lut = external local_unnamed_addr constant [32 x float], align 16
@x264_exp2_lut = external local_unnamed_addr constant [64 x i8], align 16
@.str.74 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"invalid zone: start=%d end=%d\0A\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"invalid zone: bitrate_factor=%f\0A\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"%d,%d,q=%d%n\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"%d,%d,b=%f%n\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"%d,%d%n\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"invalid zone: \22%s\22\0A\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"invalid zone param: %s = %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [37 x i8] c"VBV underflow (frame %d, %.0f bits)\0A\00", align 1
@.str.84 = private unnamed_addr constant [33 x i8] c"slice=%c but 2pass stats say %c\0A\00", align 1
@slice_type_to_char = internal unnamed_addr constant [5 x i8] c"PBISS", align 1
@.str.85 = private unnamed_addr constant [60 x i8] c"requested bitrate is too low. estimated minimum is %d kbps\0A\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"qscale[i] >= 0\00", align 1
@__PRETTY_FUNCTION__.init_pass2 = private unnamed_addr constant [25 x i8] c"int init_pass2(x264_t *)\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"rce->new_qscale >= 0\00", align 1
@.str.89 = private unnamed_addr constant [39 x i8] c"Error: 2pass curve failed to converge\0A\00", align 1
@.str.90 = private unnamed_addr constant [58 x i8] c"target: %.2f kbit/s, expected: %.2f kbit/s, avg QP: %.4f\0A\00", align 1
@.str.91 = private unnamed_addr constant [63 x i8] c"try reducing target bitrate or reducing qp_min (currently %d)\0A\00", align 1
@.str.92 = private unnamed_addr constant [29 x i8] c"try reducing target bitrate\0A\00", align 1
@.str.93 = private unnamed_addr constant [67 x i8] c"try increasing target bitrate or increasing qp_max (currently %d)\0A\00", align 1
@.str.94 = private unnamed_addr constant [31 x i8] c"try increasing target bitrate\0A\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"internal error\0A\00", align 1
@.str.96 = private unnamed_addr constant [49 x i8] c"vbv-maxrate issue, qpmax or vbv-maxrate too low\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @x264_adaptive_quant_frame(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %frame) local_unnamed_addr #0 {
entry:
  %f_aq_strength = getelementptr inbounds i8, ptr %h, i64 548
  %0 = load float, ptr %f_aq_strength, align 4
  %cmp = fcmp oeq float %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %f_qp_offset = getelementptr inbounds i8, ptr %frame, i64 12152
  %1 = load ptr, ptr %f_qp_offset, align 8
  %mb = getelementptr inbounds i8, ptr %h, i64 16368
  %2 = load i32, ptr %mb, align 16
  %conv = sext i32 %2 to i64
  %mul = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %mul, i1 false)
  %f_qp_offset_aq = getelementptr inbounds i8, ptr %frame, i64 12160
  %3 = load ptr, ptr %f_qp_offset_aq, align 16
  %4 = load i32, ptr %mb, align 16
  %conv3 = sext i32 %4 to i64
  %mul4 = shl nsw i64 %conv3, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %mul4, i1 false)
  %b_have_lowres = getelementptr inbounds i8, ptr %h, i64 14672
  %5 = load i32, ptr %b_have_lowres, align 16
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %6 = load i32, ptr %mb, align 16
  %cmp8313 = icmp sgt i32 %6, 0
  br i1 %cmp8313, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %i_inv_qscale_factor = getelementptr inbounds i8, ptr %frame, i64 12192
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %7 = load ptr, ptr %i_inv_qscale_factor, align 16
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 %indvars.iv
  store i16 256, ptr %arrayidx, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr %mb, align 16
  %9 = sext i32 %8 to i64
  %cmp8 = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp8, label %for.body, label %cleanup

if.end10:                                         ; preds = %entry
  %i_aq_mode = getelementptr inbounds i8, ptr %h, i64 544
  %10 = load i32, ptr %i_aq_mode, align 8
  %cmp13 = icmp eq i32 %10, 2
  br i1 %cmp13, label %for.cond16.preheader, label %if.else

for.cond16.preheader:                             ; preds = %if.end10
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %11 = load ptr, ptr %sps, align 16
  %i_mb_height298 = getelementptr inbounds i8, ptr %11, i64 1088
  %12 = load i32, ptr %i_mb_height298, align 4
  %cmp17299 = icmp sgt i32 %12, 0
  br i1 %cmp17299, label %for.cond21.preheader.lr.ph, label %for.cond.cleanup19

for.cond21.preheader.lr.ph:                       ; preds = %for.cond16.preheader
  %i_stride.i.i = getelementptr inbounds i8, ptr %frame, i64 104
  %b_interlaced.i.i = getelementptr inbounds i8, ptr %h, i64 16436
  %var.i.i = getelementptr inbounds i8, ptr %h, i64 32160
  %plane.i.i = getelementptr inbounds i8, ptr %frame, i64 152
  %arrayidx.i.i = getelementptr inbounds i8, ptr %frame, i64 108
  %arrayidx17.i.i = getelementptr inbounds i8, ptr %h, i64 32184
  %arrayidx19.i.i = getelementptr inbounds i8, ptr %frame, i64 160
  %arrayidx.i43.i = getelementptr inbounds i8, ptr %frame, i64 112
  %arrayidx19.i58.i = getelementptr inbounds i8, ptr %frame, i64 168
  %f_qp_offset29 = getelementptr inbounds i8, ptr %frame, i64 12152
  %i_mb_stride = getelementptr inbounds i8, ptr %h, i64 16372
  %13 = getelementptr inbounds i8, ptr %11, i64 1084
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %for.cond21.preheader, label %for.cond.cleanup19

for.cond21.preheader:                             ; preds = %for.cond21.preheader.lr.ph, %for.cond.cleanup25
  %16 = phi ptr [ %22, %for.cond.cleanup25 ], [ %11, %for.cond21.preheader.lr.ph ]
  %avg_adj.0302 = phi float [ %avg_adj.1.lcssa, %for.cond.cleanup25 ], [ 0.000000e+00, %for.cond21.preheader.lr.ph ]
  %mb_y.0301 = phi i32 [ %inc41, %for.cond.cleanup25 ], [ 0, %for.cond21.preheader.lr.ph ]
  %avg_adj_pow2.0300 = phi float [ %avg_adj_pow2.1.lcssa, %for.cond.cleanup25 ], [ 0.000000e+00, %for.cond21.preheader.lr.ph ]
  %i_mb_width292 = getelementptr inbounds i8, ptr %16, i64 1084
  %17 = load i32, ptr %i_mb_width292, align 4
  %cmp23293 = icmp sgt i32 %17, 0
  br i1 %cmp23293, label %for.body26.lr.ph, label %for.cond.cleanup25

for.body26.lr.ph:                                 ; preds = %for.cond21.preheader
  %and.i.i = and i32 %mb_y.0301, 268435454
  %18 = trunc i32 %mb_y.0301 to i1
  %and.i18.i = and i32 %mb_y.0301, 536870910
  br label %for.body26

for.cond.cleanup19.loopexit:                      ; preds = %for.cond.cleanup25
  %.pre = load float, ptr %f_aq_strength, align 4
  br label %for.cond.cleanup19

for.cond.cleanup19:                               ; preds = %for.cond21.preheader.lr.ph, %for.cond.cleanup19.loopexit, %for.cond16.preheader
  %19 = phi ptr [ %11, %for.cond16.preheader ], [ %22, %for.cond.cleanup19.loopexit ], [ %11, %for.cond21.preheader.lr.ph ]
  %20 = phi float [ %0, %for.cond16.preheader ], [ %.pre, %for.cond.cleanup19.loopexit ], [ %0, %for.cond21.preheader.lr.ph ]
  %avg_adj_pow2.0.lcssa = phi float [ 0.000000e+00, %for.cond16.preheader ], [ %avg_adj_pow2.1.lcssa, %for.cond.cleanup19.loopexit ], [ 0.000000e+00, %for.cond21.preheader.lr.ph ]
  %avg_adj.0.lcssa = phi float [ 0.000000e+00, %for.cond16.preheader ], [ %avg_adj.1.lcssa, %for.cond.cleanup19.loopexit ], [ 0.000000e+00, %for.cond21.preheader.lr.ph ]
  %mb43 = getelementptr inbounds i8, ptr %h, i64 16368
  %21 = load i32, ptr %mb43, align 16
  %conv45 = sitofp i32 %21 to float
  %div = fdiv float %avg_adj.0.lcssa, %conv45
  %div49 = fdiv float %avg_adj_pow2.0.lcssa, %conv45
  %mul53 = fmul float %20, %div
  %sub = fadd float %div49, -1.400000e+01
  %mul54 = fmul float %sub, 5.000000e-01
  %div55 = fdiv float %mul54, %div
  %sub56 = fsub float %div, %div55
  br label %if.end61

for.cond.cleanup25:                               ; preds = %ac_energy_mb.exit, %for.cond21.preheader
  %22 = phi ptr [ %16, %for.cond21.preheader ], [ %43, %ac_energy_mb.exit ]
  %avg_adj_pow2.1.lcssa = phi float [ %avg_adj_pow2.0300, %for.cond21.preheader ], [ %42, %ac_energy_mb.exit ]
  %avg_adj.1.lcssa = phi float [ %avg_adj.0302, %for.cond21.preheader ], [ %add35, %ac_energy_mb.exit ]
  %inc41 = add nuw nsw i32 %mb_y.0301, 1
  %i_mb_height = getelementptr inbounds i8, ptr %22, i64 1088
  %23 = load i32, ptr %i_mb_height, align 4
  %cmp17 = icmp slt i32 %inc41, %23
  br i1 %cmp17, label %for.cond21.preheader, label %for.cond.cleanup19.loopexit, !llvm.loop !5

for.body26:                                       ; preds = %for.body26.lr.ph, %ac_energy_mb.exit
  %avg_adj.1296 = phi float [ %avg_adj.0302, %for.body26.lr.ph ], [ %add35, %ac_energy_mb.exit ]
  %mb_x.0295 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc38, %ac_energy_mb.exit ]
  %avg_adj_pow2.1294 = phi float [ %avg_adj_pow2.0300, %for.body26.lr.ph ], [ %42, %ac_energy_mb.exit ]
  %24 = load i32, ptr %i_stride.i.i, align 4
  %25 = load i32, ptr %b_interlaced.i.i, align 4
  %tobool3.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body26
  %mul.i.i = mul i32 %24, %and.i.i
  %add.i.i = add i32 %mul.i.i, %mb_x.0295
  %mul4.i.i = shl i32 %add.i.i, 4
  %mul6.i.i = select i1 %18, i32 %24, i32 0
  %add7.i.i = add nsw i32 %mul4.i.i, %mul6.i.i
  br label %ac_energy_plane.exit.i

cond.false.i.i:                                   ; preds = %for.body26
  %mul8.i.i = mul nsw i32 %24, %mb_y.0301
  %add9.i.i = add nsw i32 %mul8.i.i, %mb_x.0295
  %mul10.i.i = shl i32 %add9.i.i, 4
  br label %ac_energy_plane.exit.i

ac_energy_plane.exit.i:                           ; preds = %cond.false.i.i, %cond.true.i.i
  %cond11.i.i = phi i32 [ %add7.i.i, %cond.true.i.i ], [ %mul10.i.i, %cond.false.i.i ]
  %shl.i.i = shl i32 %24, %25
  %26 = load ptr, ptr %var.i.i, align 8
  %27 = load ptr, ptr %plane.i.i, align 8
  %idx.ext.i.i = sext i32 %cond11.i.i to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %27, i64 %idx.ext.i.i
  %call.i.i = tail call i64 %26(ptr noundef %add.ptr.i.i, i32 noundef %shl.i.i) #16
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %29 = load i32, ptr %b_interlaced.i.i, align 4
  %tobool3.not.i16.i = icmp eq i32 %29, 0
  br i1 %tobool3.not.i16.i, label %cond.false.i37.i, label %cond.true.i17.i

cond.true.i17.i:                                  ; preds = %ac_energy_plane.exit.i
  %mul.i19.i = mul i32 %28, %and.i18.i
  %add.i20.i = add i32 %mul.i19.i, %mb_x.0295
  %mul4.i21.i = shl i32 %add.i20.i, 3
  %mul6.i22.i = select i1 %18, i32 %28, i32 0
  %add7.i23.i = add nsw i32 %mul4.i21.i, %mul6.i22.i
  br label %ac_energy_plane.exit41.i

cond.false.i37.i:                                 ; preds = %ac_energy_plane.exit.i
  %mul8.i38.i = mul nsw i32 %28, %mb_y.0301
  %add9.i39.i = add nsw i32 %mul8.i38.i, %mb_x.0295
  %mul10.i40.i = shl i32 %add9.i39.i, 3
  br label %ac_energy_plane.exit41.i

ac_energy_plane.exit41.i:                         ; preds = %cond.false.i37.i, %cond.true.i17.i
  %cond11.i24.i = phi i32 [ %add7.i23.i, %cond.true.i17.i ], [ %mul10.i40.i, %cond.false.i37.i ]
  %shl.i25.i = shl i32 %28, %29
  %30 = load ptr, ptr %arrayidx17.i.i, align 8
  %31 = load ptr, ptr %arrayidx19.i.i, align 8
  %idx.ext.i28.i = sext i32 %cond11.i24.i to i64
  %add.ptr.i29.i = getelementptr inbounds i8, ptr %31, i64 %idx.ext.i28.i
  %call.i30.i = tail call i64 %30(ptr noundef %add.ptr.i29.i, i32 noundef %shl.i25.i) #16
  %32 = load i32, ptr %arrayidx.i43.i, align 4
  %33 = load i32, ptr %b_interlaced.i.i, align 4
  %tobool3.not.i45.i = icmp eq i32 %33, 0
  br i1 %tobool3.not.i45.i, label %cond.false.i68.i, label %cond.true.i46.i

cond.true.i46.i:                                  ; preds = %ac_energy_plane.exit41.i
  %mul.i48.i = mul i32 %32, %and.i18.i
  %add.i49.i = add i32 %mul.i48.i, %mb_x.0295
  %mul4.i50.i = shl i32 %add.i49.i, 3
  %mul6.i51.i = select i1 %18, i32 %32, i32 0
  %add7.i52.i = add nsw i32 %mul4.i50.i, %mul6.i51.i
  br label %ac_energy_mb.exit

cond.false.i68.i:                                 ; preds = %ac_energy_plane.exit41.i
  %mul8.i69.i = mul nsw i32 %32, %mb_y.0301
  %add9.i70.i = add nsw i32 %mul8.i69.i, %mb_x.0295
  %mul10.i71.i = shl i32 %add9.i70.i, 3
  br label %ac_energy_mb.exit

ac_energy_mb.exit:                                ; preds = %cond.true.i46.i, %cond.false.i68.i
  %cond11.i53.i = phi i32 [ %add7.i52.i, %cond.true.i46.i ], [ %mul10.i71.i, %cond.false.i68.i ]
  %shr.i.i = lshr i64 %call.i.i, 32
  %conv20.i.i = trunc nuw i64 %shr.i.i to i32
  %conv.i.i = trunc i64 %call.i.i to i32
  %mul21.i.i = mul i32 %conv.i.i, %conv.i.i
  %shr22.i.i = lshr i32 %mul21.i.i, 8
  %shr.i32.i = lshr i64 %call.i30.i, 32
  %conv20.i33.i = trunc nuw i64 %shr.i32.i to i32
  %conv.i31.i = trunc i64 %call.i30.i to i32
  %mul21.i34.i = mul i32 %conv.i31.i, %conv.i31.i
  %shr22.i35.i = lshr i32 %mul21.i34.i, 6
  %shl.i54.i = shl i32 %32, %33
  %34 = load ptr, ptr %arrayidx17.i.i, align 8
  %35 = load ptr, ptr %arrayidx19.i58.i, align 8
  %idx.ext.i59.i = sext i32 %cond11.i53.i to i64
  %add.ptr.i60.i = getelementptr inbounds i8, ptr %35, i64 %idx.ext.i59.i
  %call.i61.i = tail call i64 %34(ptr noundef %add.ptr.i60.i, i32 noundef %shl.i54.i) #16
  %conv.i62.i = trunc i64 %call.i61.i to i32
  %shr.i63.i = lshr i64 %call.i61.i, 32
  %conv20.i64.i = trunc nuw i64 %shr.i63.i to i32
  %mul21.i65.i = mul i32 %conv.i62.i, %conv.i62.i
  %shr22.i66.i = lshr i32 %mul21.i65.i, 6
  %.neg289 = add i32 %conv20.i.i, 1
  %36 = add i32 %.neg289, %conv20.i33.i
  %37 = add nuw nsw i32 %shr22.i.i, %shr22.i35.i
  %38 = add i32 %36, %conv20.i64.i
  %39 = add nuw nsw i32 %37, %shr22.i66.i
  %add = sub i32 %38, %39
  %conv27 = uitofp i32 %add to float
  %call28 = tail call float @powf(float noundef %conv27, float noundef 1.250000e-01) #16
  %40 = load ptr, ptr %f_qp_offset29, align 8
  %41 = load i32, ptr %i_mb_stride, align 4
  %mul31 = mul nsw i32 %41, %mb_y.0301
  %add32 = add nsw i32 %mul31, %mb_x.0295
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds float, ptr %40, i64 %idxprom33
  store float %call28, ptr %arrayidx34, align 4
  %add35 = fadd float %avg_adj.1296, %call28
  %42 = tail call float @llvm.fmuladd.f32(float %call28, float %call28, float %avg_adj_pow2.1294)
  %inc38 = add nuw nsw i32 %mb_x.0295, 1
  %43 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %43, i64 1084
  %44 = load i32, ptr %i_mb_width, align 4
  %cmp23 = icmp slt i32 %inc38, %44
  br i1 %cmp23, label %for.body26, label %for.cond.cleanup25

if.else:                                          ; preds = %if.end10
  %mul60 = fmul float %0, 0x3FF0A29C80000000
  %sps64.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 3200
  %.pre319 = load ptr, ptr %sps64.phi.trans.insert, align 16
  br label %if.end61

if.end61:                                         ; preds = %if.else, %for.cond.cleanup19
  %45 = phi ptr [ %19, %for.cond.cleanup19 ], [ %.pre319, %if.else ]
  %avg_adj.2 = phi float [ %sub56, %for.cond.cleanup19 ], [ 0.000000e+00, %if.else ]
  %strength.0 = phi float [ %mul53, %for.cond.cleanup19 ], [ %mul60, %if.else ]
  %sps64 = getelementptr inbounds i8, ptr %h, i64 3200
  %i_mb_height65310 = getelementptr inbounds i8, ptr %45, i64 1088
  %46 = load i32, ptr %i_mb_height65310, align 4
  %cmp66311 = icmp sgt i32 %46, 0
  br i1 %cmp66311, label %for.cond71.preheader.lr.ph, label %cleanup

for.cond71.preheader.lr.ph:                       ; preds = %if.end61
  %i_stride.i.i203 = getelementptr inbounds i8, ptr %frame, i64 104
  %b_interlaced.i.i204 = getelementptr inbounds i8, ptr %h, i64 16436
  %var.i.i216 = getelementptr inbounds i8, ptr %h, i64 32160
  %plane.i.i217 = getelementptr inbounds i8, ptr %frame, i64 152
  %arrayidx.i.i221 = getelementptr inbounds i8, ptr %frame, i64 108
  %arrayidx17.i.i233 = getelementptr inbounds i8, ptr %h, i64 32184
  %arrayidx19.i.i234 = getelementptr inbounds i8, ptr %frame, i64 160
  %arrayidx.i43.i238 = getelementptr inbounds i8, ptr %frame, i64 112
  %arrayidx19.i58.i259 = getelementptr inbounds i8, ptr %frame, i64 168
  %f_qp_offset85 = getelementptr inbounds i8, ptr %frame, i64 12152
  %i_mb_stride87 = getelementptr inbounds i8, ptr %h, i64 16372
  %f_qp_offset_aq103 = getelementptr inbounds i8, ptr %frame, i64 12160
  %b_have_lowres118 = getelementptr inbounds i8, ptr %h, i64 14672
  %i_inv_qscale_factor123 = getelementptr inbounds i8, ptr %frame, i64 12192
  %47 = load ptr, ptr %sps64, align 16
  %48 = getelementptr inbounds i8, ptr %47, i64 1084
  %49 = load i32, ptr %48, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %for.cond71.preheader, label %cleanup

for.cond71.preheader:                             ; preds = %for.cond71.preheader.lr.ph, %for.cond.cleanup76
  %51 = phi ptr [ %54, %for.cond.cleanup76 ], [ %47, %for.cond71.preheader.lr.ph ]
  %mb_y62.0312 = phi i32 [ %inc135, %for.cond.cleanup76 ], [ 0, %for.cond71.preheader.lr.ph ]
  %i_mb_width73306 = getelementptr inbounds i8, ptr %51, i64 1084
  %52 = load i32, ptr %i_mb_width73306, align 4
  %cmp74307 = icmp sgt i32 %52, 0
  br i1 %cmp74307, label %for.body77.lr.ph, label %for.cond.cleanup76

for.body77.lr.ph:                                 ; preds = %for.cond71.preheader
  %and.i.i207 = and i32 %mb_y62.0312, 268435454
  %53 = trunc i32 %mb_y62.0312 to i1
  %and.i18.i224 = and i32 %mb_y62.0312, 536870910
  br label %for.body77

for.cond.cleanup76:                               ; preds = %if.end130, %for.cond71.preheader
  %54 = phi ptr [ %51, %for.cond71.preheader ], [ %87, %if.end130 ]
  %inc135 = add nuw nsw i32 %mb_y62.0312, 1
  %i_mb_height65 = getelementptr inbounds i8, ptr %54, i64 1088
  %55 = load i32, ptr %i_mb_height65, align 4
  %cmp66 = icmp slt i32 %inc135, %55
  br i1 %cmp66, label %for.cond71.preheader, label %cleanup, !llvm.loop !7

for.body77:                                       ; preds = %for.body77.lr.ph, %if.end130
  %mb_x70.0308 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc132, %if.end130 ]
  %56 = load i32, ptr %i_aq_mode, align 8
  %cmp82 = icmp eq i32 %56, 2
  br i1 %cmp82, label %if.then84, label %if.else94

if.then84:                                        ; preds = %for.body77
  %57 = load ptr, ptr %f_qp_offset85, align 8
  %58 = load i32, ptr %i_mb_stride87, align 4
  %mul88 = mul nsw i32 %58, %mb_y62.0312
  %add89 = add nsw i32 %mul88, %mb_x70.0308
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds float, ptr %57, i64 %idxprom90
  %59 = load float, ptr %arrayidx91, align 4
  %sub92 = fsub float %59, %avg_adj.2
  br label %if.end102

if.else94:                                        ; preds = %for.body77
  %60 = load i32, ptr %i_stride.i.i203, align 4
  %61 = load i32, ptr %b_interlaced.i.i204, align 4
  %tobool3.not.i.i205 = icmp eq i32 %61, 0
  br i1 %tobool3.not.i.i205, label %cond.false.i.i277, label %cond.true.i.i206

cond.true.i.i206:                                 ; preds = %if.else94
  %mul.i.i208 = mul i32 %60, %and.i.i207
  %add.i.i209 = add i32 %mul.i.i208, %mb_x70.0308
  %mul4.i.i210 = shl i32 %add.i.i209, 4
  %mul6.i.i211 = select i1 %53, i32 %60, i32 0
  %add7.i.i212 = add nsw i32 %mul4.i.i210, %mul6.i.i211
  br label %ac_energy_plane.exit.i213

cond.false.i.i277:                                ; preds = %if.else94
  %mul8.i.i278 = mul nsw i32 %60, %mb_y62.0312
  %add9.i.i279 = add nsw i32 %mul8.i.i278, %mb_x70.0308
  %mul10.i.i280 = shl i32 %add9.i.i279, 4
  br label %ac_energy_plane.exit.i213

ac_energy_plane.exit.i213:                        ; preds = %cond.false.i.i277, %cond.true.i.i206
  %cond11.i.i214 = phi i32 [ %add7.i.i212, %cond.true.i.i206 ], [ %mul10.i.i280, %cond.false.i.i277 ]
  %shl.i.i215 = shl i32 %60, %61
  %62 = load ptr, ptr %var.i.i216, align 8
  %63 = load ptr, ptr %plane.i.i217, align 8
  %idx.ext.i.i218 = sext i32 %cond11.i.i214 to i64
  %add.ptr.i.i219 = getelementptr inbounds i8, ptr %63, i64 %idx.ext.i.i218
  %call.i.i220 = tail call i64 %62(ptr noundef %add.ptr.i.i219, i32 noundef %shl.i.i215) #16
  %64 = load i32, ptr %arrayidx.i.i221, align 4
  %65 = load i32, ptr %b_interlaced.i.i204, align 4
  %tobool3.not.i16.i222 = icmp eq i32 %65, 0
  br i1 %tobool3.not.i16.i222, label %cond.false.i37.i273, label %cond.true.i17.i223

cond.true.i17.i223:                               ; preds = %ac_energy_plane.exit.i213
  %mul.i19.i225 = mul i32 %64, %and.i18.i224
  %add.i20.i226 = add i32 %mul.i19.i225, %mb_x70.0308
  %mul4.i21.i227 = shl i32 %add.i20.i226, 3
  %mul6.i22.i228 = select i1 %53, i32 %64, i32 0
  %add7.i23.i229 = add nsw i32 %mul4.i21.i227, %mul6.i22.i228
  br label %ac_energy_plane.exit41.i230

cond.false.i37.i273:                              ; preds = %ac_energy_plane.exit.i213
  %mul8.i38.i274 = mul nsw i32 %64, %mb_y62.0312
  %add9.i39.i275 = add nsw i32 %mul8.i38.i274, %mb_x70.0308
  %mul10.i40.i276 = shl i32 %add9.i39.i275, 3
  br label %ac_energy_plane.exit41.i230

ac_energy_plane.exit41.i230:                      ; preds = %cond.false.i37.i273, %cond.true.i17.i223
  %cond11.i24.i231 = phi i32 [ %add7.i23.i229, %cond.true.i17.i223 ], [ %mul10.i40.i276, %cond.false.i37.i273 ]
  %shl.i25.i232 = shl i32 %64, %65
  %66 = load ptr, ptr %arrayidx17.i.i233, align 8
  %67 = load ptr, ptr %arrayidx19.i.i234, align 8
  %idx.ext.i28.i235 = sext i32 %cond11.i24.i231 to i64
  %add.ptr.i29.i236 = getelementptr inbounds i8, ptr %67, i64 %idx.ext.i28.i235
  %call.i30.i237 = tail call i64 %66(ptr noundef %add.ptr.i29.i236, i32 noundef %shl.i25.i232) #16
  %68 = load i32, ptr %arrayidx.i43.i238, align 4
  %69 = load i32, ptr %b_interlaced.i.i204, align 4
  %tobool3.not.i45.i239 = icmp eq i32 %69, 0
  br i1 %tobool3.not.i45.i239, label %cond.false.i68.i269, label %cond.true.i46.i240

cond.true.i46.i240:                               ; preds = %ac_energy_plane.exit41.i230
  %mul.i48.i242 = mul i32 %68, %and.i18.i224
  %add.i49.i243 = add i32 %mul.i48.i242, %mb_x70.0308
  %mul4.i50.i244 = shl i32 %add.i49.i243, 3
  %mul6.i51.i245 = select i1 %53, i32 %68, i32 0
  %add7.i52.i246 = add nsw i32 %mul4.i50.i244, %mul6.i51.i245
  br label %ac_energy_mb.exit281

cond.false.i68.i269:                              ; preds = %ac_energy_plane.exit41.i230
  %mul8.i69.i270 = mul nsw i32 %68, %mb_y62.0312
  %add9.i70.i271 = add nsw i32 %mul8.i69.i270, %mb_x70.0308
  %mul10.i71.i272 = shl i32 %add9.i70.i271, 3
  br label %ac_energy_mb.exit281

ac_energy_mb.exit281:                             ; preds = %cond.true.i46.i240, %cond.false.i68.i269
  %cond11.i53.i247 = phi i32 [ %add7.i52.i246, %cond.true.i46.i240 ], [ %mul10.i71.i272, %cond.false.i68.i269 ]
  %shr.i.i248 = lshr i64 %call.i.i220, 32
  %conv20.i.i249 = trunc nuw i64 %shr.i.i248 to i32
  %conv.i.i250 = trunc i64 %call.i.i220 to i32
  %mul21.i.i251 = mul i32 %conv.i.i250, %conv.i.i250
  %shr22.i.i252 = lshr i32 %mul21.i.i251, 8
  %shr.i32.i253 = lshr i64 %call.i30.i237, 32
  %conv20.i33.i254 = trunc nuw i64 %shr.i32.i253 to i32
  %conv.i31.i255 = trunc i64 %call.i30.i237 to i32
  %mul21.i34.i256 = mul i32 %conv.i31.i255, %conv.i31.i255
  %shr22.i35.i257 = lshr i32 %mul21.i34.i256, 6
  %shl.i54.i258 = shl i32 %68, %69
  %70 = load ptr, ptr %arrayidx17.i.i233, align 8
  %71 = load ptr, ptr %arrayidx19.i58.i259, align 8
  %idx.ext.i59.i260 = sext i32 %cond11.i53.i247 to i64
  %add.ptr.i60.i261 = getelementptr inbounds i8, ptr %71, i64 %idx.ext.i59.i260
  %call.i61.i262 = tail call i64 %70(ptr noundef %add.ptr.i60.i261, i32 noundef %shl.i54.i258) #16
  %conv.i62.i263 = trunc i64 %call.i61.i262 to i32
  %shr.i63.i264 = lshr i64 %call.i61.i262, 32
  %conv20.i64.i265 = trunc nuw i64 %shr.i63.i264 to i32
  %mul21.i65.i266 = mul i32 %conv.i62.i263, %conv.i62.i263
  %shr22.i66.i267 = lshr i32 %mul21.i65.i266, 6
  %72 = add i32 %conv20.i.i249, %conv20.i33.i254
  %73 = add nuw nsw i32 %shr22.i.i252, %shr22.i35.i257
  %74 = add i32 %72, %conv20.i64.i265
  %75 = add nuw nsw i32 %73, %shr22.i66.i267
  %add3.i268 = sub i32 %74, %75
  %cond = tail call i32 @llvm.umax.i32(i32 %add3.i268, i32 1)
  %76 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %cond, i1 true)
  %shl.i = shl i32 %cond, %76
  %shr.i = lshr i32 %shl.i, 24
  %and.i = and i32 %shr.i, 127
  %idxprom.i = zext nneg i32 %and.i to i64
  %arrayidx.i = getelementptr inbounds [128 x float], ptr @x264_log2_lut, i64 0, i64 %idxprom.i
  %77 = load float, ptr %arrayidx.i, align 4
  %idxprom1.i = zext nneg i32 %76 to i64
  %arrayidx2.i = getelementptr inbounds [32 x float], ptr @x264_log2_lz_lut, i64 0, i64 %idxprom1.i
  %78 = load float, ptr %arrayidx2.i, align 4
  %add.i = fadd float %77, %78
  %sub100 = fadd float %add.i, 0xC02CDA9FC0000000
  %.pre320 = load i32, ptr %i_mb_stride87, align 4
  %.pre321 = mul nsw i32 %.pre320, %mb_y62.0312
  %.pre322 = add nsw i32 %.pre321, %mb_x70.0308
  %.pre323 = sext i32 %.pre322 to i64
  br label %if.end102

if.end102:                                        ; preds = %ac_energy_mb.exit281, %if.then84
  %idxprom108.pre-phi = phi i64 [ %.pre323, %ac_energy_mb.exit281 ], [ %idxprom90, %if.then84 ]
  %sub92.pn = phi float [ %sub100, %ac_energy_mb.exit281 ], [ %sub92, %if.then84 ]
  %qp_adj78.0 = fmul float %strength.0, %sub92.pn
  %79 = load ptr, ptr %f_qp_offset_aq103, align 16
  %arrayidx109 = getelementptr inbounds float, ptr %79, i64 %idxprom108.pre-phi
  store float %qp_adj78.0, ptr %arrayidx109, align 4
  %80 = load ptr, ptr %f_qp_offset85, align 8
  %81 = load i32, ptr %i_mb_stride87, align 4
  %mul113 = mul nsw i32 %81, %mb_y62.0312
  %add114 = add nsw i32 %mul113, %mb_x70.0308
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds float, ptr %80, i64 %idxprom115
  store float %qp_adj78.0, ptr %arrayidx116, align 4
  %82 = load i32, ptr %b_have_lowres118, align 16
  %tobool119.not = icmp eq i32 %82, 0
  br i1 %tobool119.not, label %if.end130, label %if.then120

if.then120:                                       ; preds = %if.end102
  %83 = tail call float @llvm.fmuladd.f32(float %qp_adj78.0, float 0xC025555560000000, float 5.125000e+02)
  %conv.i = fptosi float %83 to i32
  %cmp.i = icmp slt i32 %conv.i, 0
  br i1 %cmp.i, label %x264_exp2fix8.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then120
  %cmp2.i = icmp ugt i32 %conv.i, 1023
  br i1 %cmp2.i, label %x264_exp2fix8.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %and.i282 = and i32 %conv.i, 63
  %idxprom.i283 = zext nneg i32 %and.i282 to i64
  %arrayidx.i284 = getelementptr inbounds [64 x i8], ptr @x264_exp2_lut, i64 0, i64 %idxprom.i283
  %84 = load i8, ptr %arrayidx.i284, align 1
  %conv6.i = zext i8 %84 to i32
  %add.i285 = or disjoint i32 %conv6.i, 256
  %shr.i286 = lshr i32 %conv.i, 6
  %shl.i287 = shl nuw nsw i32 %add.i285, %shr.i286
  %shr7.i = lshr i32 %shl.i287, 8
  br label %x264_exp2fix8.exit

x264_exp2fix8.exit:                               ; preds = %if.then120, %if.end.i, %if.end5.i
  %retval.0.i = phi i32 [ %shr7.i, %if.end5.i ], [ 0, %if.then120 ], [ 65535, %if.end.i ]
  %conv122 = trunc nuw i32 %retval.0.i to i16
  %85 = load ptr, ptr %i_inv_qscale_factor123, align 16
  %86 = load i32, ptr %i_mb_stride87, align 4
  %mul126 = mul nsw i32 %86, %mb_y62.0312
  %add127 = add nsw i32 %mul126, %mb_x70.0308
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds i16, ptr %85, i64 %idxprom128
  store i16 %conv122, ptr %arrayidx129, align 2
  br label %if.end130

if.end130:                                        ; preds = %x264_exp2fix8.exit, %if.end102
  %inc132 = add nuw nsw i32 %mb_x70.0308, 1
  %87 = load ptr, ptr %sps64, align 16
  %i_mb_width73 = getelementptr inbounds i8, ptr %87, i64 1084
  %88 = load i32, ptr %i_mb_width73, align 4
  %cmp74 = icmp slt i32 %inc132, %88
  br i1 %cmp74, label %for.body77, label %for.cond.cleanup76

cleanup:                                          ; preds = %for.cond.cleanup76, %for.body, %for.cond71.preheader.lr.ph, %if.end61, %for.cond.preheader, %if.then
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_macroblock_tree_read(ptr noundef %h, ptr nocapture noundef readonly %frame) local_unnamed_addr #0 {
entry:
  %i_type = alloca i8, align 1
  %rc1 = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc1, align 16
  %entry2 = getelementptr inbounds i8, ptr %0, i64 312
  %1 = load ptr, ptr %entry2, align 8
  %i_frame = getelementptr inbounds i8, ptr %frame, i64 56
  %2 = load i32, ptr %i_frame, align 8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 8
  %kept_as_ref = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %4 = load i32, ptr %kept_as_ref, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i_type) #16
  %qpbuf_pos = getelementptr inbounds i8, ptr %0, i64 504
  %5 = load i32, ptr %qpbuf_pos, align 8
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %do.body.preheader, label %if.then.if.end40_crit_edge

if.then.if.end40_crit_edge:                       ; preds = %if.then
  %mb41.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 16368
  %.pre = load i32, ptr %mb41.phi.trans.insert, align 16
  br label %if.end40

do.body.preheader:                                ; preds = %if.then
  %p_mbtree_stat_file_in = getelementptr inbounds i8, ptr %0, i64 296
  %qp_buffer = getelementptr inbounds i8, ptr %0, i64 488
  %mb = getelementptr inbounds i8, ptr %h, i64 16368
  %conv26 = and i32 %3, 255
  %6 = trunc i32 %3 to i8
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %7 = load i32, ptr %qpbuf_pos, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %qpbuf_pos, align 8
  %8 = load ptr, ptr %p_mbtree_stat_file_in, align 8
  %call = call i64 @fread(ptr noundef nonnull %i_type, i64 noundef 1, i64 noundef 1, ptr noundef %8)
  %tobool10.not = icmp eq i64 %call, 0
  br i1 %tobool10.not, label %fail, label %if.end

if.end:                                           ; preds = %do.body
  %9 = load i32, ptr %qpbuf_pos, align 8
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [2 x ptr], ptr %qp_buffer, i64 0, i64 %idxprom13
  %10 = load ptr, ptr %arrayidx14, align 8
  %11 = load i32, ptr %mb, align 16
  %conv15 = sext i32 %11 to i64
  %12 = load ptr, ptr %p_mbtree_stat_file_in, align 8
  %call17 = tail call i64 @fread(ptr noundef %10, i64 noundef 2, i64 noundef %conv15, ptr noundef %12)
  %conv18 = trunc i64 %call17 to i32
  %13 = load i32, ptr %mb, align 16
  %cmp21.not = icmp eq i32 %13, %conv18
  br i1 %cmp21.not, label %if.end24, label %fail

if.end24:                                         ; preds = %if.end
  %14 = load i8, ptr %i_type, align 1
  %conv25 = zext i8 %14 to i32
  %cmp27.not = icmp eq i32 %conv26, %conv25
  br i1 %cmp27.not, label %do.cond, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end24
  %15 = load i32, ptr %qpbuf_pos, align 8
  %cmp30 = icmp eq i32 %15, 1
  br i1 %cmp30, label %cleanup.thread103, label %do.cond

cleanup.thread103:                                ; preds = %land.lhs.true
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %conv25, i32 noundef %conv26) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i_type) #16
  br label %cleanup70

do.cond:                                          ; preds = %if.end24, %land.lhs.true
  %cmp38.not = icmp eq i8 %14, %6
  br i1 %cmp38.not, label %if.end40, label %do.body

if.end40:                                         ; preds = %do.cond, %if.then.if.end40_crit_edge
  %16 = phi i32 [ %.pre, %if.then.if.end40_crit_edge ], [ %conv18, %do.cond ]
  %mb41 = getelementptr inbounds i8, ptr %h, i64 16368
  %cmp43107 = icmp sgt i32 %16, 0
  br i1 %cmp43107, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end40
  %qp_buffer45 = getelementptr inbounds i8, ptr %0, i64 488
  %f_qp_offset = getelementptr inbounds i8, ptr %frame, i64 12152
  %b_have_lowres = getelementptr inbounds i8, ptr %h, i64 14672
  %i_inv_qscale_factor = getelementptr inbounds i8, ptr %frame, i64 12192
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %17 = load i32, ptr %qpbuf_pos, align 8
  %idxprom47 = sext i32 %17 to i64
  %arrayidx48 = getelementptr inbounds [2 x ptr], ptr %qp_buffer45, i64 0, i64 %idxprom47
  %18 = load ptr, ptr %arrayidx48, align 8
  %arrayidx50 = getelementptr inbounds i16, ptr %18, i64 %indvars.iv
  %19 = load i16, ptr %arrayidx50, align 2
  %or.i = tail call noundef i16 @llvm.bswap.i16(i16 %19)
  %conv53 = sitofp i16 %or.i to double
  %mul = fmul double %conv53, 3.906250e-03
  %conv54 = fptrunc double %mul to float
  %20 = load ptr, ptr %f_qp_offset, align 8
  %arrayidx56 = getelementptr inbounds float, ptr %20, i64 %indvars.iv
  store float %conv54, ptr %arrayidx56, align 4
  %21 = load i32, ptr %b_have_lowres, align 16
  %tobool57.not = icmp eq i32 %21, 0
  br i1 %tobool57.not, label %for.inc, label %if.then58

if.then58:                                        ; preds = %for.body
  %22 = load ptr, ptr %f_qp_offset, align 8
  %arrayidx61 = getelementptr inbounds float, ptr %22, i64 %indvars.iv
  %23 = load float, ptr %arrayidx61, align 4
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 0xC025555560000000, float 5.125000e+02)
  %conv.i = fptosi float %24 to i32
  %cmp.i = icmp slt i32 %conv.i, 0
  br i1 %cmp.i, label %x264_exp2fix8.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then58
  %cmp2.i = icmp ugt i32 %conv.i, 1023
  br i1 %cmp2.i, label %x264_exp2fix8.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %and.i = and i32 %conv.i, 63
  %idxprom.i = zext nneg i32 %and.i to i64
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @x264_exp2_lut, i64 0, i64 %idxprom.i
  %25 = load i8, ptr %arrayidx.i, align 1
  %conv6.i = zext i8 %25 to i32
  %add.i = or disjoint i32 %conv6.i, 256
  %shr.i = lshr i32 %conv.i, 6
  %shl.i = shl nuw nsw i32 %add.i, %shr.i
  %shr7.i = lshr i32 %shl.i, 8
  br label %x264_exp2fix8.exit

x264_exp2fix8.exit:                               ; preds = %if.then58, %if.end.i, %if.end5.i
  %retval.0.i = phi i32 [ %shr7.i, %if.end5.i ], [ 0, %if.then58 ], [ 65535, %if.end.i ]
  %conv63 = trunc nuw i32 %retval.0.i to i16
  %26 = load ptr, ptr %i_inv_qscale_factor, align 16
  %arrayidx65 = getelementptr inbounds i16, ptr %26, i64 %indvars.iv
  store i16 %conv63, ptr %arrayidx65, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body, %x264_exp2fix8.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %27 = load i32, ptr %mb41, align 16
  %28 = sext i32 %27 to i64
  %cmp43 = icmp slt i64 %indvars.iv.next, %28
  br i1 %cmp43, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %if.end40
  %29 = load i32, ptr %qpbuf_pos, align 8
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr %qpbuf_pos, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i_type) #16
  br label %cleanup70

if.else:                                          ; preds = %entry
  tail call void @x264_adaptive_quant_frame(ptr noundef nonnull %h, ptr noundef nonnull %frame)
  br label %cleanup70

fail:                                             ; preds = %do.body, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i_type) #16
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.1) #16
  br label %cleanup70

cleanup70:                                        ; preds = %if.else, %cleanup, %cleanup.thread103, %fail
  %retval.1 = phi i32 [ -1, %fail ], [ -1, %cleanup.thread103 ], [ 0, %cleanup ], [ 0, %if.else ]
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -1, 1) i32 @x264_reference_build_list_optimal(ptr nocapture noundef %h) local_unnamed_addr #7 {
entry:
  %frames = alloca [16 x ptr], align 16
  %weights = alloca [16 x [3 x %struct.x264_weight_t]], align 16
  %refcount = alloca [16 x i32], align 16
  %rc = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc, align 16
  %rce1 = getelementptr inbounds i8, ptr %0, i64 72
  %1 = load ptr, ptr %rce1, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %frames) #16
  call void @llvm.lifetime.start.p0(i64 3072, ptr nonnull %weights) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %refcount) #16
  %refs = getelementptr inbounds i8, ptr %1, i64 156
  %2 = load i32, ptr %refs, align 4
  %i_ref0 = getelementptr inbounds i8, ptr %h, i64 14696
  %3 = load i32, ptr %i_ref0, align 8
  %cmp.not = icmp eq i32 %2, %3
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %frames, ptr noundef nonnull align 16 dereferenceable(128) %fref0, i64 128, i1 false)
  %refcount4 = getelementptr inbounds i8, ptr %1, i64 92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %refcount, ptr noundef nonnull align 4 dereferenceable(64) %refcount4, i64 64, i1 false)
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %4 = load ptr, ptr %fenc, align 8
  %weight = getelementptr inbounds i8, ptr %4, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3072) %weights, ptr noundef nonnull align 16 dereferenceable(3072) %weight, i64 3072, i1 false)
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2880) %arrayidx, i8 0, i64 2880, i1 false)
  %5 = load i32, ptr %i_ref0, align 8
  %cmp1268 = icmp sgt i32 %5, 1
  br i1 %cmp1268, label %for.cond13.preheader, label %cleanup

for.cond13.preheader:                             ; preds = %if.end, %for.cond.cleanup16
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.cond.cleanup16 ], [ 1, %if.end ]
  %6 = phi i32 [ %14, %for.cond.cleanup16 ], [ %5, %if.end ]
  %cmp1564 = icmp sgt i32 %6, 1
  br i1 %cmp1564, label %for.body17.preheader, label %for.cond.cleanup16

for.body17.preheader:                             ; preds = %for.cond13.preheader
  %wide.trip.count = zext nneg i32 %6 to i64
  %7 = add nsw i64 %wide.trip.count, -1
  %8 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %7, 3
  %9 = icmp ult i64 %8, 3
  br i1 %9, label %for.cond.cleanup16.loopexit.unr-lcssa, label %for.body17.preheader.new

for.body17.preheader.new:                         ; preds = %for.body17.preheader
  %unroll_iter = and i64 %7, -4
  br label %for.body17

for.cond.cleanup16.loopexit.unr-lcssa:            ; preds = %for.body17, %for.body17.preheader
  %spec.select63.lcssa.ph = phi i32 [ poison, %for.body17.preheader ], [ %spec.select63.3, %for.body17 ]
  %indvars.iv.unr = phi i64 [ 1, %for.body17.preheader ], [ %indvars.iv.next.3, %for.body17 ]
  %bestref.066.unr = phi i32 [ 1, %for.body17.preheader ], [ %spec.select63.3, %for.body17 ]
  %max.065.unr = phi i32 [ -1, %for.body17.preheader ], [ %spec.select.3, %for.body17 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup16, label %for.body17.epil

for.body17.epil:                                  ; preds = %for.cond.cleanup16.loopexit.unr-lcssa, %for.body17.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body17.epil ], [ %indvars.iv.unr, %for.cond.cleanup16.loopexit.unr-lcssa ]
  %bestref.066.epil = phi i32 [ %spec.select63.epil, %for.body17.epil ], [ %bestref.066.unr, %for.cond.cleanup16.loopexit.unr-lcssa ]
  %max.065.epil = phi i32 [ %spec.select.epil, %for.body17.epil ], [ %max.065.unr, %for.cond.cleanup16.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body17.epil ], [ 0, %for.cond.cleanup16.loopexit.unr-lcssa ]
  %arrayidx18.epil = getelementptr inbounds [16 x i32], ptr %refcount, i64 0, i64 %indvars.iv.epil
  %10 = load i32, ptr %arrayidx18.epil, align 4
  %cmp19.epil = icmp sgt i32 %10, %max.065.epil
  %spec.select.epil = tail call i32 @llvm.smax.i32(i32 %10, i32 %max.065.epil)
  %11 = trunc nuw nsw i64 %indvars.iv.epil to i32
  %spec.select63.epil = select i1 %cmp19.epil, i32 %11, i32 %bestref.066.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup16, label %for.body17.epil, !llvm.loop !8

for.cond.cleanup16:                               ; preds = %for.cond.cleanup16.loopexit.unr-lcssa, %for.body17.epil, %for.cond13.preheader
  %bestref.0.lcssa = phi i32 [ 1, %for.cond13.preheader ], [ %spec.select63.lcssa.ph, %for.cond.cleanup16.loopexit.unr-lcssa ], [ %spec.select63.epil, %for.body17.epil ]
  %idxprom24 = sext i32 %bestref.0.lcssa to i64
  %arrayidx25 = getelementptr inbounds [16 x i32], ptr %refcount, i64 0, i64 %idxprom24
  store i32 -1, ptr %arrayidx25, align 4
  %arrayidx27 = getelementptr inbounds [16 x ptr], ptr %frames, i64 0, i64 %idxprom24
  %12 = load ptr, ptr %arrayidx27, align 8
  %arrayidx30 = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv71
  store ptr %12, ptr %arrayidx30, align 8
  %13 = load ptr, ptr %fenc, align 8
  %weight32 = getelementptr inbounds i8, ptr %13, i64 320
  %arrayidx34 = getelementptr inbounds [16 x [3 x %struct.x264_weight_t]], ptr %weight32, i64 0, i64 %indvars.iv71
  %arrayidx37 = getelementptr inbounds [16 x [3 x %struct.x264_weight_t]], ptr %weights, i64 0, i64 %idxprom24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %arrayidx34, ptr noundef nonnull align 16 dereferenceable(192) %arrayidx37, i64 192, i1 false)
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %14 = load i32, ptr %i_ref0, align 8
  %15 = sext i32 %14 to i64
  %cmp12 = icmp slt i64 %indvars.iv.next72, %15
  br i1 %cmp12, label %for.cond13.preheader, label %cleanup

for.body17:                                       ; preds = %for.body17, %for.body17.preheader.new
  %indvars.iv = phi i64 [ 1, %for.body17.preheader.new ], [ %indvars.iv.next.3, %for.body17 ]
  %bestref.066 = phi i32 [ 1, %for.body17.preheader.new ], [ %spec.select63.3, %for.body17 ]
  %max.065 = phi i32 [ -1, %for.body17.preheader.new ], [ %spec.select.3, %for.body17 ]
  %niter = phi i64 [ 0, %for.body17.preheader.new ], [ %niter.next.3, %for.body17 ]
  %arrayidx18 = getelementptr inbounds [16 x i32], ptr %refcount, i64 0, i64 %indvars.iv
  %16 = load i32, ptr %arrayidx18, align 4
  %cmp19 = icmp sgt i32 %16, %max.065
  %spec.select = tail call i32 @llvm.smax.i32(i32 %16, i32 %max.065)
  %17 = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select63 = select i1 %cmp19, i32 %17, i32 %bestref.066
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx18.1 = getelementptr inbounds [16 x i32], ptr %refcount, i64 0, i64 %indvars.iv.next
  %18 = load i32, ptr %arrayidx18.1, align 4
  %cmp19.1 = icmp sgt i32 %18, %spec.select
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %18, i32 %spec.select)
  %19 = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select63.1 = select i1 %cmp19.1, i32 %19, i32 %spec.select63
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx18.2 = getelementptr inbounds [16 x i32], ptr %refcount, i64 0, i64 %indvars.iv.next.1
  %20 = load i32, ptr %arrayidx18.2, align 4
  %cmp19.2 = icmp sgt i32 %20, %spec.select.1
  %spec.select.2 = tail call i32 @llvm.smax.i32(i32 %20, i32 %spec.select.1)
  %21 = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %spec.select63.2 = select i1 %cmp19.2, i32 %21, i32 %spec.select63.1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx18.3 = getelementptr inbounds [16 x i32], ptr %refcount, i64 0, i64 %indvars.iv.next.2
  %22 = load i32, ptr %arrayidx18.3, align 4
  %cmp19.3 = icmp sgt i32 %22, %spec.select.2
  %spec.select.3 = tail call i32 @llvm.smax.i32(i32 %22, i32 %spec.select.2)
  %23 = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %spec.select63.3 = select i1 %cmp19.3, i32 %23, i32 %spec.select63.2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond.cleanup16.loopexit.unr-lcssa, label %for.body17

cleanup:                                          ; preds = %for.cond.cleanup16, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.end ], [ 0, %for.cond.cleanup16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %refcount) #16
  call void @llvm.lifetime.end.p0(i64 3072, ptr nonnull %weights) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %frames) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_init_reconfigurable(ptr noundef %h, i32 noundef %b_init) local_unnamed_addr #0 {
entry:
  %rc1 = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc1, align 16
  %tobool = icmp ne i32 %b_init, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %b_2pass = getelementptr inbounds i8, ptr %0, i64 4
  %1 = load i32, ptr %b_2pass, align 4
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end, label %cleanup373

if.end:                                           ; preds = %land.lhs.true, %entry
  %rc3 = getelementptr inbounds i8, ptr %h, i64 488
  %2 = load i32, ptr %rc3, align 8
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then4, label %if.end20

if.then4:                                         ; preds = %if.end
  %mb = getelementptr inbounds i8, ptr %h, i64 16368
  %3 = load i32, ptr %mb, align 16
  %i_bframe = getelementptr inbounds i8, ptr %h, i64 100
  %4 = load i32, ptr %i_bframe, align 4
  %tobool6.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool6.not, i32 80, i32 120
  %mul = mul nsw i32 %cond, %3
  %conv = sitofp i32 %mul to double
  %b_mb_tree = getelementptr inbounds i8, ptr %h, i64 552
  %5 = load i32, ptr %b_mb_tree, align 8
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then4
  %f_qcompress = getelementptr inbounds i8, ptr %h, i64 592
  %6 = load float, ptr %f_qcompress, align 8
  %conv12 = fpext float %6 to double
  %sub = fsub double 1.000000e+00, %conv12
  %mul13 = fmul double %sub, 1.350000e+01
  br label %cond.end

cond.end:                                         ; preds = %if.then4, %cond.true
  %cond14 = phi double [ %mul13, %cond.true ], [ 0.000000e+00, %if.then4 ]
  %qcompress = getelementptr inbounds i8, ptr %0, i64 40
  %7 = load double, ptr %qcompress, align 8
  %sub15 = fsub double 1.000000e+00, %7
  %call = tail call double @pow(double noundef %conv, double noundef %sub15) #16
  %f_rf_constant = getelementptr inbounds i8, ptr %h, i64 512
  %8 = load float, ptr %f_rf_constant, align 8
  %conv18 = fpext float %8 to double
  %add = fadd double %cond14, %conv18
  %sub.i = fadd double %add, -1.200000e+01
  %div.i = fdiv double %sub.i, 6.000000e+00
  %exp2.i = tail call double @exp2(double %div.i) #16
  %mul.i = fmul double %exp2.i, 8.500000e-01
  %div = fdiv double %call, %mul.i
  %rate_factor_constant = getelementptr inbounds i8, ptr %0, i64 232
  store double %div, ptr %rate_factor_constant, align 8
  br label %if.end20

if.end20:                                         ; preds = %cond.end, %if.end
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %h, i64 524
  %9 = load i32, ptr %i_vbv_max_bitrate, align 4
  %cmp23 = icmp sgt i32 %9, 0
  br i1 %cmp23, label %land.lhs.true25, label %cleanup373

land.lhs.true25:                                  ; preds = %if.end20
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %h, i64 528
  %10 = load i32, ptr %i_vbv_buffer_size, align 8
  %cmp28 = icmp sgt i32 %10, 0
  br i1 %cmp28, label %if.then30, label %cleanup373

if.then30:                                        ; preds = %land.lhs.true25
  %conv37 = uitofp nneg i32 %9 to double
  %fps = getelementptr inbounds i8, ptr %0, i64 16
  %11 = load double, ptr %fps, align 8
  %div38 = fdiv double %conv37, %11
  %conv39 = fptosi double %div38 to i32
  %cmp40 = icmp slt i32 %10, %conv39
  br i1 %cmp40, label %if.then42, label %if.end56

if.then42:                                        ; preds = %if.then30
  store i32 %conv39, ptr %i_vbv_buffer_size, align 8
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %conv39) #16
  br label %if.end56

if.end56:                                         ; preds = %if.then42, %if.then30
  %b_vbv_min_rate = getelementptr inbounds i8, ptr %0, i64 12
  %12 = load i32, ptr %b_vbv_min_rate, align 4
  %tobool57.not = icmp eq i32 %12, 0
  br i1 %tobool57.not, label %if.end56.if.end64_crit_edge, label %if.then58

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  %.pre = load i32, ptr %i_vbv_max_bitrate, align 4
  br label %if.end64

if.then58:                                        ; preds = %if.end56
  %i_bitrate = getelementptr inbounds i8, ptr %h, i64 508
  %13 = load i32, ptr %i_bitrate, align 4
  store i32 %13, ptr %i_vbv_max_bitrate, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end56.if.end64_crit_edge, %if.then58
  %14 = phi i32 [ %.pre, %if.end56.if.end64_crit_edge ], [ %13, %if.then58 ]
  %15 = load i32, ptr %i_vbv_buffer_size, align 8
  %mul68 = mul nsw i32 %15, 1000
  %mul72 = mul nsw i32 %14, 1000
  %i_nal_hrd = getelementptr inbounds i8, ptr %h, i64 40
  %16 = load i32, ptr %i_nal_hrd, align 8
  %tobool74 = icmp ne i32 %16, 0
  %or.cond = and i1 %tobool, %tobool74
  br i1 %or.cond, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.end64
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %17 = load ptr, ptr %sps, align 16
  %hrd = getelementptr inbounds i8, ptr %17, i64 1212
  store i32 1, ptr %hrd, align 4
  %18 = load i32, ptr %i_nal_hrd, align 8
  %cmp80 = icmp eq i32 %18, 2
  %conv81 = zext i1 %cmp80 to i32
  %19 = load ptr, ptr %sps, align 16
  %b_cbr_hrd = getelementptr inbounds i8, ptr %19, i64 1240
  store i32 %conv81, ptr %b_cbr_hrd, align 4
  %20 = load ptr, ptr %sps, align 16
  %i_time_offset_length = getelementptr inbounds i8, ptr %20, i64 1256
  store i32 0, ptr %i_time_offset_length, align 4
  %21 = load i32, ptr %i_vbv_max_bitrate, align 4
  %mul91 = mul nsw i32 %21, 1000
  %22 = load i32, ptr %i_vbv_buffer_size, align 8
  %mul95 = mul nsw i32 %22, 1000
  %23 = or i32 %mul91, 2097152
  %24 = tail call range(i32 3, 22) i32 @llvm.cttz.i32(i32 %23, i1 true)
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 6)
  %cond5.i = add nsw i32 %25, -6
  %26 = load ptr, ptr %sps, align 16
  %i_bit_rate_scale = getelementptr inbounds i8, ptr %26, i64 1216
  store i32 %cond5.i, ptr %i_bit_rate_scale, align 4
  %27 = load ptr, ptr %sps, align 16
  %i_bit_rate_scale104 = getelementptr inbounds i8, ptr %27, i64 1216
  %28 = load i32, ptr %i_bit_rate_scale104, align 4
  %add105 = add nsw i32 %28, 6
  %shr = ashr i32 %mul91, %add105
  %i_bit_rate_value = getelementptr inbounds i8, ptr %27, i64 1224
  store i32 %shr, ptr %i_bit_rate_value, align 4
  %29 = load ptr, ptr %sps, align 16
  %i_bit_rate_value112 = getelementptr inbounds i8, ptr %29, i64 1224
  %30 = load i32, ptr %i_bit_rate_value112, align 4
  %i_bit_rate_scale116 = getelementptr inbounds i8, ptr %29, i64 1216
  %31 = load i32, ptr %i_bit_rate_scale116, align 4
  %add117 = add nsw i32 %31, 6
  %shl = shl i32 %30, %add117
  %i_bit_rate_unscaled = getelementptr inbounds i8, ptr %29, i64 1232
  store i32 %shl, ptr %i_bit_rate_unscaled, align 4
  %32 = or i32 %mul95, 524288
  %33 = tail call range(i32 3, 20) i32 @llvm.cttz.i32(i32 %32, i1 true)
  %34 = tail call i32 @llvm.umax.i32(i32 %33, i32 4)
  %cond5.i497 = add nsw i32 %34, -4
  %35 = load ptr, ptr %sps, align 16
  %i_cpb_size_scale = getelementptr inbounds i8, ptr %35, i64 1220
  store i32 %cond5.i497, ptr %i_cpb_size_scale, align 4
  %36 = load ptr, ptr %sps, align 16
  %i_cpb_size_scale129 = getelementptr inbounds i8, ptr %36, i64 1220
  %37 = load i32, ptr %i_cpb_size_scale129, align 4
  %add130 = add nsw i32 %37, 4
  %shr131 = ashr i32 %mul95, %add130
  %i_cpb_size_value = getelementptr inbounds i8, ptr %36, i64 1228
  store i32 %shr131, ptr %i_cpb_size_value, align 4
  %38 = load ptr, ptr %sps, align 16
  %i_cpb_size_value138 = getelementptr inbounds i8, ptr %38, i64 1228
  %39 = load i32, ptr %i_cpb_size_value138, align 4
  %i_cpb_size_scale142 = getelementptr inbounds i8, ptr %38, i64 1220
  %40 = load i32, ptr %i_cpb_size_scale142, align 4
  %add143 = add nsw i32 %40, 4
  %shl144 = shl i32 %39, %add143
  %i_cpb_size_unscaled = getelementptr inbounds i8, ptr %38, i64 1236
  store i32 %shl144, ptr %i_cpb_size_unscaled, align 4
  %i_keyint_max = getelementptr inbounds i8, ptr %h, i64 84
  %41 = load i32, ptr %i_keyint_max, align 4
  %conv149 = sitofp i32 %41 to double
  %mul150 = fmul double %conv149, 5.000000e-01
  %42 = load ptr, ptr %sps, align 16
  %i_time_scale = getelementptr inbounds i8, ptr %42, i64 1196
  %43 = load i32, ptr %i_time_scale, align 4
  %conv153 = uitofp i32 %43 to double
  %mul154 = fmul double %mul150, %conv153
  %i_num_units_in_tick = getelementptr inbounds i8, ptr %42, i64 1192
  %44 = load i32, ptr %i_num_units_in_tick, align 4
  %conv157 = uitofp i32 %44 to double
  %div158 = fdiv double %mul154, %conv157
  %conv159 = fptosi double %div158 to i32
  %i_max_dec_frame_buffering = getelementptr inbounds i8, ptr %42, i64 1292
  %45 = load i32, ptr %i_max_dec_frame_buffering, align 4
  %conv162 = sitofp i32 %45 to double
  %mul163 = fmul double %conv162, 5.000000e-01
  %mul168 = fmul double %mul163, %conv153
  %div173 = fdiv double %mul168, %conv157
  %conv174 = fptosi double %div173 to i32
  %i_cpb_size_unscaled178 = getelementptr inbounds i8, ptr %42, i64 1236
  %46 = load i32, ptr %i_cpb_size_unscaled178, align 4
  %conv179 = sitofp i32 %46 to double
  %mul180 = fmul double %conv179, 9.000000e+04
  %i_bit_rate_unscaled184 = getelementptr inbounds i8, ptr %42, i64 1232
  %47 = load i32, ptr %i_bit_rate_unscaled184, align 4
  %conv185 = sitofp i32 %47 to double
  %div186 = fdiv double %mul180, %conv185
  %add187 = fadd double %div186, 5.000000e-01
  %conv188 = fptosi double %add187 to i32
  %48 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %conv188, i1 true)
  %sub189 = sub nuw nsw i32 32, %48
  %49 = tail call i32 @llvm.umin.i32(i32 %sub189, i32 22)
  %cond5.i500 = tail call i32 @llvm.umax.i32(i32 %49, i32 4)
  %add191 = add nuw nsw i32 %cond5.i500, 2
  %i_initial_cpb_removal_delay_length = getelementptr inbounds i8, ptr %42, i64 1244
  store i32 %add191, ptr %i_initial_cpb_removal_delay_length, align 4
  %50 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %conv159, i1 true)
  %sub195 = sub nuw nsw i32 32, %50
  %cond5.i503 = tail call i32 @llvm.umax.i32(i32 %sub195, i32 4)
  %51 = load ptr, ptr %sps, align 16
  %i_cpb_removal_delay_length = getelementptr inbounds i8, ptr %51, i64 1248
  store i32 %cond5.i503, ptr %i_cpb_removal_delay_length, align 4
  %52 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %conv174, i1 true)
  %sub200 = sub nuw nsw i32 32, %52
  %cond5.i506 = tail call i32 @llvm.umax.i32(i32 %sub200, i32 4)
  %53 = load ptr, ptr %sps, align 16
  %i_dpb_output_delay_length = getelementptr inbounds i8, ptr %53, i64 1252
  store i32 %cond5.i506, ptr %i_dpb_output_delay_length, align 4
  %54 = load ptr, ptr %sps, align 16
  %i_cpb_size_unscaled208 = getelementptr inbounds i8, ptr %54, i64 1236
  %55 = load i32, ptr %i_cpb_size_unscaled208, align 4
  %mul68. = tail call i32 @llvm.smin.i32(i32 %mul68, i32 %55)
  %i_bit_rate_unscaled222 = getelementptr inbounds i8, ptr %54, i64 1232
  %56 = load i32, ptr %i_bit_rate_unscaled222, align 4
  %cond232 = tail call i32 @llvm.smin.i32(i32 %mul72, i32 %56)
  br label %if.end240

if.else:                                          ; preds = %if.end64
  %tobool235 = icmp eq i32 %16, 0
  %or.cond377 = or i1 %tobool, %tobool235
  br i1 %or.cond377, label %if.end240, label %if.then238

if.then238:                                       ; preds = %if.else
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.3) #16
  br label %cleanup373

if.end240:                                        ; preds = %if.else, %if.then77
  %vbv_max_bitrate.0 = phi i32 [ %cond232, %if.then77 ], [ %mul72, %if.else ]
  %vbv_buffer_size.0 = phi i32 [ %mul68., %if.then77 ], [ %mul68, %if.else ]
  %conv241 = sitofp i32 %vbv_max_bitrate.0 to double
  %57 = load double, ptr %fps, align 8
  %div243 = fdiv double %conv241, %57
  %buffer_rate = getelementptr inbounds i8, ptr %0, i64 128
  store double %div243, ptr %buffer_rate, align 8
  %vbv_max_rate = getelementptr inbounds i8, ptr %0, i64 136
  store double %conv241, ptr %vbv_max_rate, align 8
  %conv245 = sitofp i32 %vbv_buffer_size.0 to double
  %buffer_size = getelementptr inbounds i8, ptr %0, i64 104
  store double %conv245, ptr %buffer_size, align 8
  %mul247 = fmul double %div243, 1.100000e+00
  %cmp249 = fcmp ogt double %mul247, %conv245
  %conv250 = zext i1 %cmp249 to i32
  %single_frame_vbv = getelementptr inbounds i8, ptr %0, i64 152
  store i32 %conv250, ptr %single_frame_vbv, align 8
  %div253 = fdiv double %div243, %conv245
  %mul257 = fmul double %57, %div243
  %bitrate258 = getelementptr inbounds i8, ptr %0, i64 24
  %58 = load double, ptr %bitrate258, align 8
  %div259 = fdiv double %mul257, %58
  %sub260 = fsub double 1.500000e+00, %div259
  %cmp261 = fcmp olt double %sub260, 0.000000e+00
  %cond272 = select i1 %cmp261, double 0.000000e+00, double %sub260
  %neg = fmul double %div253, -5.000000e-01
  %59 = tail call double @llvm.fmuladd.f64(double %neg, double %cond272, double 1.000000e+00)
  %cbr_decay = getelementptr inbounds i8, ptr %0, i64 208
  store double %59, ptr %cbr_decay, align 8
  %60 = load i32, ptr %rc3, align 8
  %cmp277 = icmp eq i32 %60, 1
  br i1 %cmp277, label %land.lhs.true279, label %if.end298

land.lhs.true279:                                 ; preds = %if.end240
  %f_rf_constant_max = getelementptr inbounds i8, ptr %h, i64 516
  %61 = load float, ptr %f_rf_constant_max, align 4
  %tobool282 = fcmp une float %61, 0.000000e+00
  br i1 %tobool282, label %if.then283, label %if.end298

if.then283:                                       ; preds = %land.lhs.true279
  %f_rf_constant289 = getelementptr inbounds i8, ptr %h, i64 512
  %62 = load float, ptr %f_rf_constant289, align 8
  %sub290 = fsub float %61, %62
  %conv291 = fpext float %sub290 to double
  %rate_factor_max_increment = getelementptr inbounds i8, ptr %0, i64 160
  store double %conv291, ptr %rate_factor_max_increment, align 8
  %cmp293 = fcmp ugt float %sub290, 0.000000e+00
  br i1 %cmp293, label %if.end298, label %if.then295

if.then295:                                       ; preds = %if.then283
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.4) #16
  store double 0.000000e+00, ptr %rate_factor_max_increment, align 8
  br label %if.end298

if.end298:                                        ; preds = %if.then283, %if.then295, %land.lhs.true279, %if.end240
  br i1 %tobool, label %if.then300, label %cleanup373

if.then300:                                       ; preds = %if.end298
  %f_vbv_buffer_init = getelementptr inbounds i8, ptr %h, i64 532
  %63 = load float, ptr %f_vbv_buffer_init, align 4
  %cmp304 = fcmp ogt float %63, 1.000000e+00
  br i1 %cmp304, label %if.then306, label %if.end321

if.then306:                                       ; preds = %if.then300
  %64 = load i32, ptr %i_vbv_buffer_size, align 8
  %conv313 = sitofp i32 %64 to float
  %div314 = fdiv float %63, %conv313
  %cmp.i507 = fcmp olt float %div314, 0.000000e+00
  %cmp1.i = fcmp ogt float %div314, 1.000000e+00
  %narrow.sel = select i1 %cmp1.i, float 1.000000e+00, float %div314
  %conv317 = select i1 %cmp.i507, float 0.000000e+00, float %narrow.sel
  store float %conv317, ptr %f_vbv_buffer_init, align 4
  br label %if.end321

if.end321:                                        ; preds = %if.then306, %if.then300
  %65 = phi float [ %conv317, %if.then306 ], [ %63, %if.then300 ]
  %conv325 = fpext float %65 to double
  %66 = load double, ptr %buffer_rate, align 8
  %67 = load double, ptr %buffer_size, align 8
  %div328 = fdiv double %66, %67
  %cmp329 = fcmp olt double %div328, %conv325
  %conv325.div328 = select i1 %cmp329, double %conv325, double %div328
  %cmp.i510 = fcmp olt double %conv325.div328, 0.000000e+00
  %cmp1.i511 = fcmp ogt double %conv325.div328, 1.000000e+00
  %cond.i512 = select i1 %cmp1.i511, double 1.000000e+00, double %conv325.div328
  %cond5.i513 = select i1 %cmp.i510, double 0.000000e+00, double %cond.i512
  %conv343 = fptrunc double %cond5.i513 to float
  store float %conv343, ptr %f_vbv_buffer_init, align 4
  %68 = load double, ptr %buffer_size, align 8
  %conv351 = fpext float %conv343 to double
  %mul352 = fmul double %68, %conv351
  %buffer_fill_final = getelementptr inbounds i8, ptr %0, i64 112
  store double %mul352, ptr %buffer_fill_final, align 8
  %b_vbv = getelementptr inbounds i8, ptr %0, i64 8
  store i32 1, ptr %b_vbv, align 8
  %b_2pass353 = getelementptr inbounds i8, ptr %0, i64 4
  %69 = load i32, ptr %b_2pass353, align 4
  %tobool354.not = icmp eq i32 %69, 0
  br i1 %tobool354.not, label %land.lhs.true355, label %land.end

land.lhs.true355:                                 ; preds = %if.end321
  %70 = load i32, ptr %rc3, align 8
  %cmp359 = icmp eq i32 %70, 2
  br i1 %cmp359, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true355
  %71 = load i32, ptr %i_vbv_max_bitrate, align 4
  %i_bitrate366 = getelementptr inbounds i8, ptr %h, i64 508
  %72 = load i32, ptr %i_bitrate366, align 4
  %cmp367 = icmp sle i32 %71, %72
  %73 = zext i1 %cmp367 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true355, %if.end321
  %land.ext = phi i32 [ 0, %land.lhs.true355 ], [ 0, %if.end321 ], [ %73, %land.rhs ]
  store i32 %land.ext, ptr %b_vbv_min_rate, align 4
  br label %cleanup373

cleanup373:                                       ; preds = %if.end20, %land.lhs.true25, %if.end298, %land.end, %if.then238, %land.lhs.true
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_ratecontrol_new(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %len.i.i = alloca i32, align 4
  %i320 = alloca i32, align 4
  %j321 = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %frame_number = alloca i32, align 4
  %pict_type600 = alloca i8, align 1
  %qp = alloca float, align 4
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
  %0 = load i32, ptr %i_threads, align 4
  %mul = mul i32 %0, 936
  %call = tail call ptr @x264_malloc(i32 noundef %mul) #16
  %rc3 = getelementptr inbounds i8, ptr %h, i64 26704
  store ptr %call, ptr %rc3, align 16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup873, label %do.end

do.end:                                           ; preds = %entry
  %1 = load i32, ptr %i_threads, align 4
  %conv8 = sext i32 %1 to i64
  %mul9 = mul nsw i64 %conv8, 936
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %call, i8 0, i64 %mul9, i1 false)
  %2 = load ptr, ptr %rc3, align 16
  %rc14 = getelementptr inbounds i8, ptr %h, i64 488
  %3 = load i32, ptr %rc14, align 8
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.end
  %b_stat_read = getelementptr inbounds i8, ptr %h, i64 576
  %4 = load i32, ptr %b_stat_read, align 8
  %tobool18.not = icmp eq i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %5 = phi i1 [ false, %do.end ], [ %tobool18.not, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, ptr %2, align 8
  %6 = load i32, ptr %rc14, align 8
  %cmp22 = icmp eq i32 %6, 2
  br i1 %cmp22, label %land.rhs24, label %land.end29

land.rhs24:                                       ; preds = %land.end
  %b_stat_read27 = getelementptr inbounds i8, ptr %h, i64 576
  %7 = load i32, ptr %b_stat_read27, align 8
  %tobool28 = icmp ne i32 %7, 0
  br label %land.end29

land.end29:                                       ; preds = %land.rhs24, %land.end
  %8 = phi i1 [ false, %land.end ], [ %tobool28, %land.rhs24 ]
  %land.ext30 = zext i1 %8 to i32
  %b_2pass = getelementptr inbounds i8, ptr %2, i64 4
  store i32 %land.ext30, ptr %b_2pass, align 4
  %i_fps_num = getelementptr inbounds i8, ptr %h, i64 652
  %9 = load i32, ptr %i_fps_num, align 4
  %cmp32.not = icmp eq i32 %9, 0
  br i1 %cmp32.not, label %if.end46, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end29
  %i_fps_den = getelementptr inbounds i8, ptr %h, i64 656
  %10 = load i32, ptr %i_fps_den, align 16
  %cmp35.not = icmp eq i32 %10, 0
  br i1 %cmp35.not, label %if.end46, label %if.then37

if.then37:                                        ; preds = %land.lhs.true
  %conv40 = uitofp i32 %9 to float
  %conv43 = uitofp i32 %10 to float
  %div = fdiv float %conv40, %conv43
  %conv44 = fpext float %div to double
  br label %if.end46

if.end46:                                         ; preds = %land.end29, %land.lhs.true, %if.then37
  %.sink1416 = phi double [ %conv44, %if.then37 ], [ 2.500000e+01, %land.lhs.true ], [ 2.500000e+01, %land.end29 ]
  %fps45 = getelementptr inbounds i8, ptr %2, i64 16
  store double %.sink1416, ptr %fps45, align 8
  %b_mb_tree = getelementptr inbounds i8, ptr %h, i64 552
  %11 = load i32, ptr %b_mb_tree, align 8
  %tobool49.not = icmp eq i32 %11, 0
  br i1 %tobool49.not, label %if.else53, label %if.then50

if.then50:                                        ; preds = %if.end46
  %f_pb_factor = getelementptr inbounds i8, ptr %h, i64 540
  store float 1.000000e+00, ptr %f_pb_factor, align 4
  br label %if.end58

if.else53:                                        ; preds = %if.end46
  %f_qcompress = getelementptr inbounds i8, ptr %h, i64 592
  %12 = load float, ptr %f_qcompress, align 8
  %conv56 = fpext float %12 to double
  br label %if.end58

if.end58:                                         ; preds = %if.else53, %if.then50
  %.sink = phi double [ %conv56, %if.else53 ], [ 1.000000e+00, %if.then50 ]
  %13 = getelementptr inbounds i8, ptr %2, i64 40
  store double %.sink, ptr %13, align 8
  %i_bitrate = getelementptr inbounds i8, ptr %h, i64 508
  %14 = load i32, ptr %i_bitrate, align 4
  %conv61 = sitofp i32 %14 to double
  %mul62 = fmul double %conv61, 1.000000e+03
  %bitrate = getelementptr inbounds i8, ptr %2, i64 24
  store double %mul62, ptr %bitrate, align 8
  %f_rate_tolerance = getelementptr inbounds i8, ptr %h, i64 520
  %15 = load float, ptr %f_rate_tolerance, align 8
  %conv65 = fpext float %15 to double
  %rate_tolerance = getelementptr inbounds i8, ptr %2, i64 32
  store double %conv65, ptr %rate_tolerance, align 8
  %mb = getelementptr inbounds i8, ptr %h, i64 16368
  %16 = load i32, ptr %mb, align 16
  %nmb = getelementptr inbounds i8, ptr %2, i64 48
  store i32 %16, ptr %nmb, align 8
  %last_non_b_pict_type = getelementptr inbounds i8, ptr %2, i64 368
  store i32 -1, ptr %last_non_b_pict_type, align 8
  %cbr_decay = getelementptr inbounds i8, ptr %2, i64 208
  store double 1.000000e+00, ptr %cbr_decay, align 8
  %17 = load i32, ptr %rc14, align 8
  %cmp69 = icmp eq i32 %17, 1
  br i1 %cmp69, label %land.lhs.true71, label %if.end77

land.lhs.true71:                                  ; preds = %if.end58
  %b_stat_read74 = getelementptr inbounds i8, ptr %h, i64 576
  %18 = load i32, ptr %b_stat_read74, align 8
  %tobool75.not = icmp eq i32 %18, 0
  br i1 %tobool75.not, label %if.end77, label %if.then76

if.then76:                                        ; preds = %land.lhs.true71
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.5) #16
  br label %cleanup873

if.end77:                                         ; preds = %land.lhs.true71, %if.end58
  tail call void @x264_ratecontrol_init_reconfigurable(ptr noundef nonnull %h, i32 noundef 1)
  %19 = load double, ptr %rate_tolerance, align 8
  %cmp79 = fcmp olt double %19, 1.000000e-02
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end77
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.6) #16
  store double 1.000000e-02, ptr %rate_tolerance, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end77
  %b_vbv = getelementptr inbounds i8, ptr %2, i64 8
  %20 = load i32, ptr %b_vbv, align 8
  %tobool84.not = icmp eq i32 %20, 0
  br i1 %tobool84.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end83
  %i_aq_mode = getelementptr inbounds i8, ptr %h, i64 544
  %21 = load i32, ptr %i_aq_mode, align 8
  %tobool87 = icmp ne i32 %21, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end83
  %22 = phi i1 [ true, %if.end83 ], [ %tobool87, %lor.rhs ]
  %lor.ext = zext i1 %22 to i32
  %b_variable_qp = getelementptr inbounds i8, ptr %h, i64 25808
  store i32 %lor.ext, ptr %b_variable_qp, align 16
  %23 = load i32, ptr %2, align 8
  %tobool90.not = icmp eq i32 %23, 0
  br i1 %tobool90.not, label %if.end115, label %if.then91

if.then91:                                        ; preds = %lor.end
  %accum_p_norm = getelementptr inbounds i8, ptr %2, i64 384
  store double 1.000000e-02, ptr %accum_p_norm, align 8
  %24 = load i32, ptr %rc14, align 8
  %cmp95 = icmp eq i32 %24, 1
  br i1 %cmp95, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then91
  %f_rf_constant = getelementptr inbounds i8, ptr %h, i64 512
  %25 = load float, ptr %f_rf_constant, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then91, %cond.true
  %cond = phi float [ %25, %cond.true ], [ 2.400000e+01, %if.then91 ]
  %conv99 = fpext float %cond to double
  %mul101 = fmul double %conv99, 1.000000e-02
  %accum_p_qp = getelementptr inbounds i8, ptr %2, i64 376
  store double %mul101, ptr %accum_p_qp, align 8
  %26 = load double, ptr %13, align 8
  %call103 = tail call double @pow(double noundef 7.000000e+05, double noundef %26) #16
  %mul104 = fmul double %call103, 1.000000e-02
  %27 = load i32, ptr %mb, align 16
  %conv107 = sitofp i32 %27 to double
  %sqrt = tail call double @sqrt(double %conv107)
  %abs = tail call double @llvm.fabs.f64(double %sqrt)
  %mul109 = fmul double %mul104, %abs
  %cplxr_sum = getelementptr inbounds i8, ptr %2, i64 184
  store double %mul109, ptr %cplxr_sum, align 8
  %28 = load double, ptr %bitrate, align 8
  %fps112 = getelementptr inbounds i8, ptr %2, i64 16
  %29 = load double, ptr %fps112, align 8
  %div113 = fdiv double %28, %29
  %wanted_bits_window = getelementptr inbounds i8, ptr %2, i64 200
  store double %div113, ptr %wanted_bits_window, align 8
  store i32 2, ptr %last_non_b_pict_type, align 8
  br label %if.end115

if.end115:                                        ; preds = %cond.end, %lor.end
  %f_ip_factor = getelementptr inbounds i8, ptr %h, i64 536
  %30 = load float, ptr %f_ip_factor, align 8
  %call118 = tail call float @log2f(float noundef %30) #16
  %conv119 = fpext float %call118 to double
  %mul120 = fmul double %conv119, 6.000000e+00
  %ip_offset = getelementptr inbounds i8, ptr %2, i64 240
  store double %mul120, ptr %ip_offset, align 8
  %f_pb_factor123 = getelementptr inbounds i8, ptr %h, i64 540
  %31 = load float, ptr %f_pb_factor123, align 4
  %call124 = tail call float @log2f(float noundef %31) #16
  %conv125 = fpext float %call124 to double
  %mul126 = fmul double %conv125, 6.000000e+00
  %pb_offset = getelementptr inbounds i8, ptr %2, i64 248
  store double %mul126, ptr %pb_offset, align 8
  %i_qp_constant = getelementptr inbounds i8, ptr %h, i64 492
  %32 = load i32, ptr %i_qp_constant, align 4
  %qp_constant = getelementptr inbounds i8, ptr %2, i64 52
  store i32 %32, ptr %qp_constant, align 4
  %conv132 = sitofp i32 %32 to double
  %33 = load double, ptr %ip_offset, align 8
  %sub = fsub double %conv132, %33
  %add = fadd double %sub, 5.000000e-01
  %conv134 = fptosi double %add to i32
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv134, i32 51)
  %cond5.i = tail call i32 @llvm.smax.i32(i32 %cond.i, i32 0)
  %arrayidx137 = getelementptr inbounds i8, ptr %2, i64 60
  store i32 %cond5.i, ptr %arrayidx137, align 4
  %34 = load i32, ptr %i_qp_constant, align 4
  %conv141 = sitofp i32 %34 to double
  %add143 = fadd double %mul126, %conv141
  %add144 = fadd double %add143, 5.000000e-01
  %conv145 = fptosi double %add144 to i32
  %cond.i1241 = tail call i32 @llvm.smin.i32(i32 %conv145, i32 51)
  %cond5.i1242 = tail call i32 @llvm.smax.i32(i32 %cond.i1241, i32 0)
  %arrayidx148 = getelementptr inbounds i8, ptr %2, i64 56
  store i32 %cond5.i1242, ptr %arrayidx148, align 4
  %add150 = fadd double %33, 5.000000e-01
  %conv151 = fptosi double %add150 to i32
  %ip_offset153 = getelementptr inbounds i8, ptr %h, i64 17428
  store i32 %conv151, ptr %ip_offset153, align 4
  %i_qp_step = getelementptr inbounds i8, ptr %h, i64 504
  %35 = load i32, ptr %i_qp_step, align 8
  %conv156 = sitofp i32 %35 to double
  %div157 = fdiv double %conv156, 6.000000e+00
  %exp2 = tail call double @exp2(double %div157) #16
  %lstep = getelementptr inbounds i8, ptr %2, i64 480
  store double %exp2, ptr %lstep, align 8
  %last_qscale = getelementptr inbounds i8, ptr %2, i64 320
  store double 0x4011228A8751D490, ptr %last_qscale, align 8
  %b_sliced_threads = getelementptr inbounds i8, ptr %h, i64 8
  %36 = load i32, ptr %b_sliced_threads, align 8
  %37 = load i32, ptr %i_threads, align 4
  %mul163 = mul nsw i32 %37, %36
  %38 = mul i32 %mul163, 160
  %mul167 = add i32 %38, 160
  %call169 = tail call ptr @x264_malloc(i32 noundef %mul167) #16
  %pred = getelementptr inbounds i8, ptr %2, i64 144
  store ptr %call169, ptr %pred, align 8
  %tobool171.not = icmp eq ptr %call169, null
  br i1 %tobool171.not, label %cleanup873, label %do.body176

do.body176:                                       ; preds = %if.end115
  %call177 = tail call ptr @x264_malloc(i32 noundef 32) #16
  %pred_b_from_p = getelementptr inbounds i8, ptr %2, i64 872
  store ptr %call177, ptr %pred_b_from_p, align 8
  %tobool179.not = icmp eq ptr %call177, null
  br i1 %tobool179.not, label %cleanup873, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.body176
  %f_rf_constant194 = getelementptr inbounds i8, ptr %h, i64 512
  %last_qscale_for = getelementptr inbounds i8, ptr %2, i64 328
  %i_qp_min = getelementptr inbounds i8, ptr %h, i64 496
  %lmin = getelementptr inbounds i8, ptr %2, i64 400
  %i_qp_max = getelementptr inbounds i8, ptr %h, i64 500
  %lmax = getelementptr inbounds i8, ptr %2, i64 440
  %cmp214.not1325 = icmp slt i32 %mul163, 0
  %row_preds = getelementptr inbounds i8, ptr %2, i64 552
  %39 = add i32 %mul163, 1
  %wide.trip.count = zext i32 %39 to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond239.preheader
  %40 = load ptr, ptr %pred_b_from_p, align 8
  %41 = load ptr, ptr %pred, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %41, i64 32, i1 false)
  %42 = load ptr, ptr %rc3, align 16
  %psz_zones.i = getelementptr inbounds i8, ptr %h, i64 624
  %43 = load ptr, ptr %psz_zones.i, align 8
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end71.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.cond.cleanup
  %i_zones.i = getelementptr inbounds i8, ptr %h, i64 616
  %44 = load i32, ptr %i_zones.i, align 8
  %tobool5.not.i = icmp eq i32 %44, 0
  br i1 %tobool5.not.i, label %if.then.i, label %if.end71.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %43) #17
  %45 = trunc i64 %call.i to i32
  %conv.i = add i32 %45, 1
  %call10.i = tail call ptr @x264_malloc(i32 noundef %conv.i) #16
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.then279, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  %46 = load ptr, ptr %psz_zones.i, align 8
  %call16.i = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %call10.i, ptr noundef nonnull dereferenceable(1) %46) #16
  store i32 1, ptr %i_zones.i, align 8
  %47 = load i8, ptr %call10.i, align 1
  %tobool20.not296.i = icmp eq i8 %47, 0
  br i1 %tobool20.not296.i, label %do.body27.i, label %for.body.i

for.body.i:                                       ; preds = %do.end.i, %for.body.i
  %48 = phi i32 [ %add26.i, %for.body.i ], [ 1, %do.end.i ]
  %49 = phi i8 [ %50, %for.body.i ], [ %47, %do.end.i ]
  %p.0297.i = phi ptr [ %incdec.ptr.i, %for.body.i ], [ %call10.i, %do.end.i ]
  %cmp.i1243 = icmp eq i8 %49, 47
  %conv22.i = zext i1 %cmp.i1243 to i32
  %add26.i = add nuw nsw i32 %48, %conv22.i
  store i32 %add26.i, ptr %i_zones.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.0297.i, i64 1
  %50 = load i8, ptr %incdec.ptr.i, align 1
  %tobool20.not.i = icmp eq i8 %50, 0
  br i1 %tobool20.not.i, label %do.body27.loopexit.i, label %for.body.i

do.body27.loopexit.i:                             ; preds = %for.body.i
  %51 = shl i32 %add26.i, 5
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.loopexit.i, %do.end.i
  %mul.i1244 = phi i32 [ %51, %do.body27.loopexit.i ], [ 32, %do.end.i ]
  %call33.i = tail call ptr @x264_malloc(i32 noundef %mul.i1244) #16
  %zones.i = getelementptr inbounds i8, ptr %h, i64 608
  store ptr %call33.i, ptr %zones.i, align 8
  %tobool39.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool39.not.i, label %if.then279, label %for.cond44.preheader.i

for.cond44.preheader.i:                           ; preds = %do.body27.i
  %52 = load i32, ptr %i_zones.i, align 8
  %cmp48.not298.i = icmp sgt i32 %52, 0
  br i1 %cmp48.not298.i, label %for.body50.i, label %cleanup67.i

for.body50.i:                                     ; preds = %for.cond44.preheader.i, %for.inc63.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc63.i ], [ 0, %for.cond44.preheader.i ]
  %p.1300.i = phi ptr [ %add.ptr273.i, %for.inc63.i ], [ %call10.i, %for.cond44.preheader.i ]
  %call51.i = call i64 @strcspn(ptr noundef %p.1300.i, ptr noundef nonnull @.str.74) #17
  %sext.i = shl i64 %call51.i, 32
  %idxprom.i = ashr exact i64 %sext.i, 32
  %arrayidx.i = getelementptr inbounds i8, ptr %p.1300.i, i64 %idxprom.i
  store i8 0, ptr %arrayidx.i, align 1
  %53 = load ptr, ptr %zones.i, align 8
  %arrayidx57.i = getelementptr inbounds %struct.x264_zone_t, ptr %53, i64 %indvars.iv.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #16
  store i32 0, ptr %len.i.i, align 4
  %param.i.i = getelementptr inbounds i8, ptr %arrayidx57.i, i64 24
  store ptr null, ptr %param.i.i, align 8
  %f_bitrate_factor.i.i = getelementptr inbounds i8, ptr %arrayidx57.i, i64 16
  store float 1.000000e+00, ptr %f_bitrate_factor.i.i, align 8
  %i_end.i.i = getelementptr inbounds i8, ptr %arrayidx57.i, i64 4
  %i_qp.i.i = getelementptr inbounds i8, ptr %arrayidx57.i, i64 12
  %call.i.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %p.1300.i, ptr noundef nonnull @.str.77, ptr noundef %arrayidx57.i, ptr noundef nonnull %i_end.i.i, ptr noundef nonnull %i_qp.i.i, ptr noundef nonnull %len.i.i) #16
  %cmp.i.i = icmp sgt i32 %call.i.i, 2
  br i1 %cmp.i.i, label %if.end17.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %for.body50.i
  %call4.i.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %p.1300.i, ptr noundef nonnull @.str.78, ptr noundef nonnull %arrayidx57.i, ptr noundef nonnull %i_end.i.i, ptr noundef nonnull %f_bitrate_factor.i.i, ptr noundef nonnull %len.i.i) #16
  %cmp5.i.i = icmp sgt i32 %call4.i.i, 2
  br i1 %cmp5.i.i, label %if.end17.i.i, label %if.else8.i.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %call11.i.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %p.1300.i, ptr noundef nonnull @.str.79, ptr noundef nonnull %arrayidx57.i, ptr noundef nonnull %i_end.i.i, ptr noundef nonnull %len.i.i) #16
  %cmp12.i.i = icmp sgt i32 %call11.i.i, 1
  br i1 %cmp12.i.i, label %if.end17.i.i, label %if.else15.i.i

if.else15.i.i:                                    ; preds = %if.else8.i.i
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.80, ptr noundef nonnull %p.1300.i) #16
  br label %cleanup64.thread277.i

if.end17.i.i:                                     ; preds = %if.else8.i.i, %if.else.i.i, %for.body50.i
  %.sink.i.i = phi i32 [ 1, %for.body50.i ], [ 0, %if.else.i.i ], [ 0, %if.else8.i.i ]
  %b_force_qp7.i.i = getelementptr inbounds i8, ptr %arrayidx57.i, i64 8
  store i32 %.sink.i.i, ptr %b_force_qp7.i.i, align 8
  %54 = load i32, ptr %len.i.i, align 4
  %idx.ext.i.i = sext i32 %54 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %p.1300.i, i64 %idx.ext.i.i
  %55 = load i8, ptr %add.ptr.i.i, align 1
  %tobool.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i.i, label %for.inc63.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end17.i.i
  %call20.i.i = call ptr @x264_malloc(i32 noundef 704) #16
  store ptr %call20.i.i, ptr %param.i.i, align 8
  %tobool23.not.i.i = icmp eq ptr %call20.i.i, null
  br i1 %tobool23.not.i.i, label %cleanup64.thread277.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %call20.i.i, ptr noundef nonnull align 16 dereferenceable(704) %h, i64 704, i1 false)
  %56 = load ptr, ptr %param.i.i, align 8
  %param_free.i.i = getelementptr inbounds i8, ptr %56, i64 696
  store ptr @x264_free, ptr %param_free.i.i, align 8
  %call29.peel.i.i = call ptr @strtok(ptr noundef nonnull %add.ptr.i.i, ptr noundef nonnull @.str.81) #16
  %tobool30.not.peel.i.i = icmp eq ptr %call29.peel.i.i, null
  br i1 %tobool30.not.peel.i.i, label %for.inc63.i, label %while.body.peel.i.i

while.body.peel.i.i:                              ; preds = %do.end.i.i
  %call31.peel.i.i = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call29.peel.i.i, i32 noundef 61) #17
  %tobool32.not.peel.i.i = icmp eq ptr %call31.peel.i.i, null
  br i1 %tobool32.not.peel.i.i, label %if.end34.peel.i.i, label %if.then33.peel.i.i

if.then33.peel.i.i:                               ; preds = %while.body.peel.i.i
  store i8 0, ptr %call31.peel.i.i, align 1
  %incdec.ptr.peel.i.i = getelementptr inbounds i8, ptr %call31.peel.i.i, i64 1
  br label %if.end34.peel.i.i

if.end34.peel.i.i:                                ; preds = %if.then33.peel.i.i, %while.body.peel.i.i
  %val.0.peel.i.i = phi ptr [ %incdec.ptr.peel.i.i, %if.then33.peel.i.i ], [ null, %while.body.peel.i.i ]
  %57 = load ptr, ptr %param.i.i, align 8
  %call36.peel.i.i = call i32 @x264_param_parse(ptr noundef %57, ptr noundef nonnull %call29.peel.i.i, ptr noundef %val.0.peel.i.i) #16
  %tobool37.not.peel.i.i = icmp eq i32 %call36.peel.i.i, 0
  br i1 %tobool37.not.peel.i.i, label %while.cond.i.i, label %cleanup64.i

while.cond.i.i:                                   ; preds = %if.end34.peel.i.i, %if.end34.i.i
  %call29.i.i = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.81) #16
  %tobool30.not.i.i = icmp eq ptr %call29.i.i, null
  br i1 %tobool30.not.i.i, label %for.inc63.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %call31.i.i = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call29.i.i, i32 noundef 61) #17
  %tobool32.not.i.i = icmp eq ptr %call31.i.i, null
  br i1 %tobool32.not.i.i, label %if.end34.i.i, label %if.then33.i.i

if.then33.i.i:                                    ; preds = %while.body.i.i
  store i8 0, ptr %call31.i.i, align 1
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %call31.i.i, i64 1
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then33.i.i, %while.body.i.i
  %val.0.i.i = phi ptr [ %incdec.ptr.i.i, %if.then33.i.i ], [ null, %while.body.i.i ]
  %58 = load ptr, ptr %param.i.i, align 8
  %call36.i.i = call i32 @x264_param_parse(ptr noundef %58, ptr noundef nonnull %call29.i.i, ptr noundef %val.0.i.i) #16
  %tobool37.not.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %tobool37.not.i.i, label %while.cond.i.i, label %cleanup64.i, !llvm.loop !10

for.inc63.i:                                      ; preds = %while.cond.i.i, %do.end.i.i, %if.end17.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #16
  %sext267271.i = add i64 %sext.i, 4294967296
  %idx.ext272.i = ashr exact i64 %sext267271.i, 32
  %add.ptr273.i = getelementptr inbounds i8, ptr %p.1300.i, i64 %idx.ext272.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %59 = load i32, ptr %i_zones.i, align 8
  %60 = sext i32 %59 to i64
  %cmp48.not.i = icmp slt i64 %indvars.iv.next.i, %60
  br i1 %cmp48.not.i, label %for.body50.i, label %cleanup67.i

cleanup64.thread277.i:                            ; preds = %do.body.i.i, %if.else15.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #16
  br label %if.then279

cleanup64.i:                                      ; preds = %if.end34.peel.i.i, %if.end34.i.i
  %val.0.lcssa.i.i = phi ptr [ %val.0.i.i, %if.end34.i.i ], [ %val.0.peel.i.i, %if.end34.peel.i.i ]
  %call29.lcssa76.i.i = phi ptr [ %call29.i.i, %if.end34.i.i ], [ %call29.peel.i.i, %if.end34.peel.i.i ]
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.82, ptr noundef nonnull %call29.lcssa76.i.i, ptr noundef %val.0.lcssa.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #16
  br label %if.then279

cleanup67.i:                                      ; preds = %for.inc63.i, %for.cond44.preheader.i
  call void @x264_free(ptr noundef nonnull %call10.i) #16
  br label %if.end71.i

if.end71.i:                                       ; preds = %cleanup67.i, %land.lhs.true.i, %for.cond.cleanup
  %i_zones74.i = getelementptr inbounds i8, ptr %h, i64 616
  %61 = load i32, ptr %i_zones74.i, align 8
  %cmp75.i = icmp sgt i32 %61, 0
  br i1 %cmp75.i, label %for.cond79.preheader.i, label %if.end280

for.cond79.preheader.i:                           ; preds = %if.end71.i
  %zones89.i = getelementptr inbounds i8, ptr %h, i64 608
  %62 = load ptr, ptr %zones89.i, align 8
  %wide.trip.count.i = zext nneg i32 %61 to i64
  br label %for.body86.i

for.cond79.i:                                     ; preds = %if.else.i
  %indvars.iv.next319.i = add nuw nsw i64 %indvars.iv318.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next319.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end116.i, label %for.body86.i

for.body86.i:                                     ; preds = %for.cond79.i, %for.cond79.preheader.i
  %indvars.iv318.i = phi i64 [ 0, %for.cond79.preheader.i ], [ %indvars.iv.next319.i, %for.cond79.i ]
  %arrayidx91.i = getelementptr inbounds %struct.x264_zone_t, ptr %62, i64 %indvars.iv318.i
  %z.sroa.0.0.copyload.i = load i32, ptr %arrayidx91.i, align 8
  %z.sroa.6.0.arrayidx91.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx91.i, i64 4
  %z.sroa.6.0.copyload.i = load i32, ptr %z.sroa.6.0.arrayidx91.sroa_idx.i, align 4
  %cmp92.i = icmp slt i32 %z.sroa.0.0.copyload.i, 0
  %cmp95.i = icmp sgt i32 %z.sroa.0.0.copyload.i, %z.sroa.6.0.copyload.i
  %or.cond268.i = select i1 %cmp92.i, i1 true, i1 %cmp95.i
  br i1 %or.cond268.i, label %if.then97.i, label %if.else.i

if.then97.i:                                      ; preds = %for.body86.i
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.75, i32 noundef %z.sroa.0.0.copyload.i, i32 noundef %z.sroa.6.0.copyload.i) #16
  br label %if.then279

if.else.i:                                        ; preds = %for.body86.i
  %z.sroa.9208.0.arrayidx91.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx91.i, i64 16
  %z.sroa.9208.0.copyload.i = load float, ptr %z.sroa.9208.0.arrayidx91.sroa_idx.i, align 8
  %z.sroa.8.0.arrayidx91.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx91.i, i64 8
  %z.sroa.8.0.copyload.i = load i32, ptr %z.sroa.8.0.arrayidx91.sroa_idx.i, align 8
  %tobool100.i = icmp eq i32 %z.sroa.8.0.copyload.i, 0
  %cmp102.i = fcmp ole float %z.sroa.9208.0.copyload.i, 0.000000e+00
  %or.cond.i = select i1 %tobool100.i, i1 %cmp102.i, i1 false
  br i1 %or.cond.i, label %if.then104.i, label %for.cond79.i

if.then104.i:                                     ; preds = %if.else.i
  %conv106.i = fpext float %z.sroa.9208.0.copyload.i to double
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.76, double noundef %conv106.i) #16
  br label %if.then279

for.end116.i:                                     ; preds = %for.cond79.i
  %add120.i = add nuw nsw i32 %61, 1
  %i_zones121.i = getelementptr inbounds i8, ptr %42, i64 888
  store i32 %add120.i, ptr %i_zones121.i, align 8
  %mul125.i = shl i32 %add120.i, 5
  %call127.i = call ptr @x264_malloc(i32 noundef %mul125.i) #16
  %zones128.i = getelementptr inbounds i8, ptr %42, i64 896
  store ptr %call127.i, ptr %zones128.i, align 8
  %tobool130.not.i = icmp eq ptr %call127.i, null
  br i1 %tobool130.not.i, label %if.then279, label %do.end134.i

do.end134.i:                                      ; preds = %for.end116.i
  %add.ptr136.i = getelementptr inbounds i8, ptr %call127.i, i64 32
  %63 = load ptr, ptr %zones89.i, align 8
  %64 = load i32, ptr %i_zones121.i, align 8
  %sub.i = add nsw i32 %64, -1
  %conv141.i = sext i32 %sub.i to i64
  %mul142.i = shl nsw i64 %conv141.i, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %add.ptr136.i, ptr align 8 %63, i64 %mul142.i, i1 false)
  %65 = load ptr, ptr %zones128.i, align 8
  store i32 0, ptr %65, align 8
  %66 = load ptr, ptr %zones128.i, align 8
  %i_end148.i = getelementptr inbounds i8, ptr %66, i64 4
  store i32 2147483647, ptr %i_end148.i, align 4
  %67 = load ptr, ptr %zones128.i, align 8
  %b_force_qp151.i = getelementptr inbounds i8, ptr %67, i64 8
  store i32 0, ptr %b_force_qp151.i, align 8
  %68 = load ptr, ptr %zones128.i, align 8
  %f_bitrate_factor154.i = getelementptr inbounds i8, ptr %68, i64 16
  store float 1.000000e+00, ptr %f_bitrate_factor154.i, align 8
  %call156.i = call ptr @x264_malloc(i32 noundef 704) #16
  %69 = load ptr, ptr %zones128.i, align 8
  %param159.i = getelementptr inbounds i8, ptr %69, i64 24
  store ptr %call156.i, ptr %param159.i, align 8
  %70 = load ptr, ptr %zones128.i, align 8
  %param162.i = getelementptr inbounds i8, ptr %70, i64 24
  %71 = load ptr, ptr %param162.i, align 8
  %tobool163.not.i = icmp eq ptr %71, null
  br i1 %tobool163.not.i, label %if.then279, label %do.end167.i

do.end167.i:                                      ; preds = %do.end134.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %71, ptr noundef nonnull align 16 dereferenceable(704) %h, i64 704, i1 false)
  %72 = load i32, ptr %i_zones121.i, align 8
  %cmp175302.i = icmp sgt i32 %72, 1
  br i1 %cmp175302.i, label %for.body178.i, label %if.end280

for.body178.i:                                    ; preds = %do.end167.i, %for.inc193.i
  %73 = phi i32 [ %77, %for.inc193.i ], [ %72, %do.end167.i ]
  %indvars.iv321.i = phi i64 [ %indvars.iv.next322.i, %for.inc193.i ], [ 1, %do.end167.i ]
  %74 = load ptr, ptr %zones128.i, align 8
  %param182.i = getelementptr inbounds %struct.x264_zone_t, ptr %74, i64 %indvars.iv321.i, i32 5
  %75 = load ptr, ptr %param182.i, align 8
  %tobool183.not.i = icmp eq ptr %75, null
  br i1 %tobool183.not.i, label %if.then184.i, label %for.inc193.i

if.then184.i:                                     ; preds = %for.body178.i
  %param187.i = getelementptr inbounds i8, ptr %74, i64 24
  %76 = load ptr, ptr %param187.i, align 8
  store ptr %76, ptr %param182.i, align 8
  %.pre.i = load i32, ptr %i_zones121.i, align 8
  br label %for.inc193.i

for.inc193.i:                                     ; preds = %if.then184.i, %for.body178.i
  %77 = phi i32 [ %73, %for.body178.i ], [ %.pre.i, %if.then184.i ]
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 1
  %78 = sext i32 %77 to i64
  %cmp175.i = icmp slt i64 %indvars.iv.next322.i, %78
  br i1 %cmp175.i, label %for.body178.i, label %if.end280

for.body:                                         ; preds = %for.cond.preheader, %for.cond239.preheader
  %indvars.iv1372 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next1373, %for.cond239.preheader ]
  %79 = load i32, ptr %rc14, align 8
  %cmp189 = icmp eq i32 %79, 1
  br i1 %cmp189, label %cond.true191, label %cond.end196

cond.true191:                                     ; preds = %for.body
  %80 = load float, ptr %f_rf_constant194, align 8
  br label %cond.end196

cond.end196:                                      ; preds = %for.body, %cond.true191
  %cond197 = phi float [ %80, %cond.true191 ], [ 2.400000e+01, %for.body ]
  %conv198 = fpext float %cond197 to double
  %sub.i1245 = fadd double %conv198, -1.200000e+01
  %div.i = fdiv double %sub.i1245, 6.000000e+00
  %exp2.i1246 = tail call double @exp2(double %div.i) #16
  %mul.i1247 = fmul double %exp2.i1246, 8.500000e-01
  %arrayidx200 = getelementptr inbounds [5 x double], ptr %last_qscale_for, i64 0, i64 %indvars.iv1372
  store double %mul.i1247, ptr %arrayidx200, align 8
  %81 = load i32, ptr %i_qp_min, align 8
  %conv203 = sitofp i32 %81 to double
  %sub.i1248 = fadd double %conv203, -1.200000e+01
  %div.i1249 = fdiv double %sub.i1248, 6.000000e+00
  %exp2.i1250 = tail call double @exp2(double %div.i1249) #16
  %mul.i1251 = fmul double %exp2.i1250, 8.500000e-01
  %arrayidx206 = getelementptr inbounds [5 x double], ptr %lmin, i64 0, i64 %indvars.iv1372
  store double %mul.i1251, ptr %arrayidx206, align 8
  %82 = load i32, ptr %i_qp_max, align 4
  %conv209 = sitofp i32 %82 to double
  %sub.i1252 = fadd double %conv209, -1.200000e+01
  %div.i1253 = fdiv double %sub.i1252, 6.000000e+00
  %exp2.i1254 = tail call double @exp2(double %div.i1253) #16
  %mul.i1255 = fmul double %exp2.i1254, 8.500000e-01
  %arrayidx212 = getelementptr inbounds [5 x double], ptr %lmax, i64 0, i64 %indvars.iv1372
  store double %mul.i1255, ptr %arrayidx212, align 8
  br i1 %cmp214.not1325, label %for.cond239.preheader, label %for.body217

for.cond239.preheader:                            ; preds = %for.body217, %cond.end196
  %arrayidx247 = getelementptr inbounds [5 x [2 x %struct.predictor_t]], ptr %row_preds, i64 0, i64 %indvars.iv1372, i64 0
  store <2 x double> <double 2.500000e-01, double 1.000000e+00>, ptr %arrayidx247, align 8
  %decay260 = getelementptr inbounds i8, ptr %arrayidx247, i64 16
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %decay260, align 8
  %arrayidx247.1 = getelementptr inbounds [5 x [2 x %struct.predictor_t]], ptr %row_preds, i64 0, i64 %indvars.iv1372, i64 1
  store <2 x double> <double 2.500000e-01, double 1.000000e+00>, ptr %arrayidx247.1, align 8
  %decay260.1 = getelementptr inbounds i8, ptr %arrayidx247.1, i64 16
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %decay260.1, align 8
  %indvars.iv.next1373 = add nuw nsw i64 %indvars.iv1372, 1
  %exitcond1375.not = icmp eq i64 %indvars.iv.next1373, 5
  br i1 %exitcond1375.not, label %for.cond.cleanup, label %for.body

for.body217:                                      ; preds = %cond.end196, %for.body217
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body217 ], [ 0, %cond.end196 ]
  %83 = load ptr, ptr %pred, align 8
  %84 = mul nuw nsw i64 %indvars.iv, 5
  %85 = add nuw nsw i64 %84, %indvars.iv1372
  %arrayidx222 = getelementptr inbounds %struct.predictor_t, ptr %83, i64 %85
  store double 2.000000e+00, ptr %arrayidx222, align 8
  %86 = load ptr, ptr %pred, align 8
  %count = getelementptr inbounds %struct.predictor_t, ptr %86, i64 %85, i32 1
  store double 1.000000e+00, ptr %count, align 8
  %87 = load ptr, ptr %pred, align 8
  %decay = getelementptr inbounds %struct.predictor_t, ptr %87, i64 %85, i32 2
  store double 5.000000e-01, ptr %decay, align 8
  %88 = load ptr, ptr %pred, align 8
  %offset = getelementptr inbounds %struct.predictor_t, ptr %88, i64 %85, i32 3
  store double 0.000000e+00, ptr %offset, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond239.preheader, label %for.body217

if.then279:                                       ; preds = %do.end134.i, %for.end116.i, %if.then97.i, %if.then104.i, %cleanup64.i, %if.then.i, %do.body27.i, %cleanup64.thread277.i
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.7) #16
  br label %cleanup873

if.end280:                                        ; preds = %for.inc193.i, %do.end167.i, %if.end71.i
  %b_stat_read283 = getelementptr inbounds i8, ptr %h, i64 576
  %89 = load i32, ptr %b_stat_read283, align 8
  %tobool284.not = icmp eq i32 %89, 0
  br i1 %tobool284.not, label %if.end718, label %if.then285

if.then285:                                       ; preds = %if.end280
  %psz_stat_in = getelementptr inbounds i8, ptr %h, i64 584
  %90 = load ptr, ptr %psz_stat_in, align 8
  %tobool288.not = icmp eq ptr %90, null
  br i1 %tobool288.not, label %cond.false290, label %cond.end291

cond.false290:                                    ; preds = %if.then285
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 598, ptr noundef nonnull @__PRETTY_FUNCTION__.x264_ratecontrol_new) #18
  unreachable

cond.end291:                                      ; preds = %if.then285
  %call295 = call ptr @x264_slurp_file(ptr noundef nonnull %90) #16
  %tobool296.not = icmp eq ptr %call295, null
  br i1 %tobool296.not, label %if.then297, label %if.end298

if.then297:                                       ; preds = %cond.end291
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.10) #16
  br label %cleanup873

if.end298:                                        ; preds = %cond.end291
  %91 = load i32, ptr %b_mb_tree, align 8
  %tobool302.not = icmp eq i32 %91, 0
  br i1 %tobool302.not, label %if.end316, label %if.then303

if.then303:                                       ; preds = %if.end298
  %92 = load ptr, ptr %psz_stat_in, align 8
  %call.i1256 = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %92) #17
  %93 = trunc i64 %call.i1256 to i32
  %conv.i1257 = add i32 %93, 8
  %call3.i = call ptr @x264_malloc(i32 noundef %conv.i1257) #16
  %tobool.not.i1258 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i1258, label %cleanup873, label %if.end310

if.end310:                                        ; preds = %if.then303
  %call4.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %call3.i, ptr noundef nonnull readonly dereferenceable(1) %92) #16
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %call3.i)
  %endptr = getelementptr inbounds i8, ptr %call3.i, i64 %strlen
  store i64 28540514901060910, ptr %endptr, align 1
  %call311 = call noalias ptr @fopen(ptr noundef nonnull %call3.i, ptr noundef nonnull @.str.12)
  %p_mbtree_stat_file_in = getelementptr inbounds i8, ptr %2, i64 296
  store ptr %call311, ptr %p_mbtree_stat_file_in, align 8
  call void @x264_free(ptr noundef nonnull %call3.i) #16
  %94 = load ptr, ptr %p_mbtree_stat_file_in, align 8
  %tobool313.not = icmp eq ptr %94, null
  br i1 %tobool313.not, label %if.then314, label %if.end316

if.then314:                                       ; preds = %if.end310
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.13) #16
  br label %cleanup873

if.end316:                                        ; preds = %if.end310, %if.end298
  %call317 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %call295, ptr noundef nonnull dereferenceable(10) @.str.14, i64 noundef 9) #17
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %if.then319, label %if.end519

if.then319:                                       ; preds = %if.end316
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i320) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %j321) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #16
  %call322 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call295, i32 noundef 10) #17
  %tobool323.not = icmp eq ptr %call322, null
  br i1 %tobool323.not, label %cleanup512.thread, label %if.end325

if.end325:                                        ; preds = %if.then319
  store i8 0, ptr %call322, align 1
  %incdec.ptr = getelementptr inbounds i8, ptr %call322, i64 1
  %call326 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call295, ptr noundef nonnull @.str.15, ptr noundef nonnull %i320, ptr noundef nonnull %j321) #16
  %cmp327.not = icmp eq i32 %call326, 2
  br i1 %cmp327.not, label %if.else330, label %if.then329

if.then329:                                       ; preds = %if.end325
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.16) #16
  br label %cleanup512.thread

if.else330:                                       ; preds = %if.end325
  %95 = load i32, ptr %b_mb_tree, align 8
  %tobool334.not = icmp eq i32 %95, 0
  br i1 %tobool334.not, label %if.end348, label %land.lhs.true335

land.lhs.true335:                                 ; preds = %if.else330
  %96 = load i32, ptr %i320, align 4
  %i_width = getelementptr inbounds i8, ptr %h, i64 20
  %97 = load i32, ptr %i_width, align 4
  %cmp337.not = icmp eq i32 %96, %97
  br i1 %cmp337.not, label %lor.lhs.false, label %land.lhs.true335.if.then342_crit_edge

land.lhs.true335.if.then342_crit_edge:            ; preds = %land.lhs.true335
  %i_height346.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 24
  %.pre = load i32, ptr %i_height346.phi.trans.insert, align 8
  %.pre1387 = load i32, ptr %j321, align 4
  br label %if.then342

lor.lhs.false:                                    ; preds = %land.lhs.true335
  %98 = load i32, ptr %j321, align 4
  %i_height = getelementptr inbounds i8, ptr %h, i64 24
  %99 = load i32, ptr %i_height, align 8
  %cmp340.not = icmp eq i32 %98, %99
  br i1 %cmp340.not, label %if.end348, label %if.then342

if.then342:                                       ; preds = %land.lhs.true335.if.then342_crit_edge, %lor.lhs.false
  %100 = phi i32 [ %.pre1387, %land.lhs.true335.if.then342_crit_edge ], [ %98, %lor.lhs.false ]
  %101 = phi i32 [ %.pre, %land.lhs.true335.if.then342_crit_edge ], [ %99, %lor.lhs.false ]
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %97, i32 noundef %101, i32 noundef %96, i32 noundef %100) #16
  br label %cleanup512.thread

if.end348:                                        ; preds = %if.else330, %lor.lhs.false
  %call349 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %call295, ptr noundef nonnull dereferenceable(1) @.str.18) #17
  %tobool350.not = icmp eq ptr %call349, null
  br i1 %tobool350.not, label %if.end356, label %land.lhs.true351

land.lhs.true351:                                 ; preds = %if.end348
  %call352 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call349, ptr noundef nonnull @.str.19, ptr noundef nonnull %k, ptr noundef nonnull %l) #16
  %cmp353.not = icmp eq i32 %call352, 2
  br i1 %cmp353.not, label %if.end356, label %if.then355

if.then355:                                       ; preds = %land.lhs.true351
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.20) #16
  br label %cleanup512.thread

if.end356:                                        ; preds = %land.lhs.true351, %if.end348
  %102 = load i32, ptr %k, align 4
  %i_timebase_num = getelementptr inbounds i8, ptr %h, i64 660
  %103 = load i32, ptr %i_timebase_num, align 4
  %cmp358.not = icmp eq i32 %102, %103
  br i1 %cmp358.not, label %lor.lhs.false360, label %if.end356.if.then364_crit_edge

if.end356.if.then364_crit_edge:                   ; preds = %if.end356
  %i_timebase_den368.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 664
  %.pre1388 = load i32, ptr %i_timebase_den368.phi.trans.insert, align 8
  %.pre1389 = load i32, ptr %l, align 4
  br label %if.then364

lor.lhs.false360:                                 ; preds = %if.end356
  %104 = load i32, ptr %l, align 4
  %i_timebase_den = getelementptr inbounds i8, ptr %h, i64 664
  %105 = load i32, ptr %i_timebase_den, align 8
  %cmp362.not = icmp eq i32 %104, %105
  br i1 %cmp362.not, label %if.end369, label %if.then364

if.then364:                                       ; preds = %if.end356.if.then364_crit_edge, %lor.lhs.false360
  %106 = phi i32 [ %.pre1389, %if.end356.if.then364_crit_edge ], [ %104, %lor.lhs.false360 ]
  %107 = phi i32 [ %.pre1388, %if.end356.if.then364_crit_edge ], [ %105, %lor.lhs.false360 ]
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %103, i32 noundef %107, i32 noundef %102, i32 noundef %106) #16
  br label %cleanup512.thread

if.end369:                                        ; preds = %lor.lhs.false360
  %call370 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %call295, ptr noundef nonnull dereferenceable(1) @.str.22) #17
  %tobool371.not = icmp eq ptr %call370, null
  br i1 %tobool371.not, label %if.end401, label %land.lhs.true372

land.lhs.true372:                                 ; preds = %if.end369
  %call373 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call370, ptr noundef nonnull @.str.23, ptr noundef nonnull %i320) #16
  %tobool374.not = icmp eq i32 %call373, 0
  br i1 %tobool374.not, label %if.end401, label %land.lhs.true375

land.lhs.true375:                                 ; preds = %land.lhs.true372
  %i_weighted_pred = getelementptr inbounds i8, ptr %h, i64 396
  %108 = load i32, ptr %i_weighted_pred, align 4
  %spec.select = call i32 @llvm.smax.i32(i32 %108, i32 0)
  %109 = load i32, ptr %i320, align 4
  %cmp386.not = icmp eq i32 %spec.select, %109
  br i1 %cmp386.not, label %if.end401, label %if.then388

if.then388:                                       ; preds = %land.lhs.true375
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %spec.select, i32 noundef %109) #16
  br label %cleanup512.thread

if.end401:                                        ; preds = %land.lhs.true375, %land.lhs.true372, %if.end369
  %call402 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %call295, ptr noundef nonnull dereferenceable(1) @.str.25) #17
  %tobool403.not = icmp eq ptr %call402, null
  br i1 %tobool403.not, label %if.end414, label %land.lhs.true404

land.lhs.true404:                                 ; preds = %if.end401
  %call405 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call402, ptr noundef nonnull @.str.26, ptr noundef nonnull %i320) #16
  %tobool406.not = icmp eq i32 %call405, 0
  br i1 %tobool406.not, label %if.end414, label %land.lhs.true407

land.lhs.true407:                                 ; preds = %land.lhs.true404
  %i_bframe = getelementptr inbounds i8, ptr %h, i64 100
  %110 = load i32, ptr %i_bframe, align 4
  %111 = load i32, ptr %i320, align 4
  %cmp409.not = icmp eq i32 %110, %111
  br i1 %cmp409.not, label %if.end414, label %if.then411

if.then411:                                       ; preds = %land.lhs.true407
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %110, i32 noundef %111) #16
  br label %cleanup512.thread

if.end414:                                        ; preds = %land.lhs.true407, %land.lhs.true404, %if.end401
  %call415 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %call295, ptr noundef nonnull dereferenceable(1) @.str.28) #17
  %tobool416.not = icmp eq ptr %call415, null
  br i1 %tobool416.not, label %if.end427, label %land.lhs.true417

land.lhs.true417:                                 ; preds = %if.end414
  %call418 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call415, ptr noundef nonnull @.str.29, ptr noundef nonnull %i320) #16
  %tobool419.not = icmp eq i32 %call418, 0
  br i1 %tobool419.not, label %if.end427, label %land.lhs.true420

land.lhs.true420:                                 ; preds = %land.lhs.true417
  %i_bframe_pyramid = getelementptr inbounds i8, ptr %h, i64 112
  %112 = load i32, ptr %i_bframe_pyramid, align 16
  %113 = load i32, ptr %i320, align 4
  %cmp422.not = icmp eq i32 %112, %113
  br i1 %cmp422.not, label %if.end427, label %if.then424

if.then424:                                       ; preds = %land.lhs.true420
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef %112, i32 noundef %113) #16
  br label %cleanup512.thread

if.end427:                                        ; preds = %land.lhs.true420, %land.lhs.true417, %if.end414
  %call428 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %call295, ptr noundef nonnull dereferenceable(1) @.str.31) #17
  %tobool429.not = icmp eq ptr %call428, null
  br i1 %tobool429.not, label %if.end440, label %land.lhs.true430

land.lhs.true430:                                 ; preds = %if.end427
  %call431 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call428, ptr noundef nonnull @.str.32, ptr noundef nonnull %i320) #16
  %tobool432.not = icmp eq i32 %call431, 0
  br i1 %tobool432.not, label %if.end440, label %land.lhs.true433

land.lhs.true433:                                 ; preds = %land.lhs.true430
  %b_intra_refresh = getelementptr inbounds i8, ptr %h, i64 96
  %114 = load i32, ptr %b_intra_refresh, align 16
  %115 = load i32, ptr %i320, align 4
  %cmp435.not = icmp eq i32 %114, %115
  br i1 %cmp435.not, label %if.end440, label %if.then437

if.then437:                                       ; preds = %land.lhs.true433
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef %114, i32 noundef %115) #16
  br label %cleanup512.thread

if.end440:                                        ; preds = %land.lhs.true433, %land.lhs.true430, %if.end427
  %call441 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %call295, ptr noundef nonnull dereferenceable(1) @.str.34) #17
  %tobool442.not = icmp eq ptr %call441, null
  br i1 %tobool442.not, label %if.end453, label %land.lhs.true443

land.lhs.true443:                                 ; preds = %if.end440
  %call444 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call441, ptr noundef nonnull @.str.35, ptr noundef nonnull %i320) #16
  %tobool445.not = icmp eq i32 %call444, 0
  br i1 %tobool445.not, label %if.end453, label %land.lhs.true446

land.lhs.true446:                                 ; preds = %land.lhs.true443
  %i_keyint_max = getelementptr inbounds i8, ptr %h, i64 84
  %116 = load i32, ptr %i_keyint_max, align 4
  %117 = load i32, ptr %i320, align 4
  %cmp448.not = icmp eq i32 %116, %117
  br i1 %cmp448.not, label %if.end453, label %if.then450

if.then450:                                       ; preds = %land.lhs.true446
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %116, i32 noundef %117) #16
  br label %cleanup512.thread

if.end453:                                        ; preds = %land.lhs.true446, %land.lhs.true443, %if.end440
  %call454 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %call295, ptr noundef nonnull dereferenceable(1) @.str.37) #17
  %tobool455.not = icmp eq ptr %call454, null
  br i1 %tobool455.not, label %if.end463, label %land.lhs.true456

land.lhs.true456:                                 ; preds = %if.end453
  %118 = load i32, ptr %rc14, align 8
  %cmp460 = icmp eq i32 %118, 2
  br i1 %cmp460, label %if.then462, label %if.end463

if.then462:                                       ; preds = %land.lhs.true456
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.38) #16
  br label %if.end463

if.end463:                                        ; preds = %if.then462, %land.lhs.true456, %if.end453
  %call464 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %call295, ptr noundef nonnull dereferenceable(1) @.str.39) #17
  %tobool465.not = icmp eq ptr %call464, null
  br i1 %tobool465.not, label %land.lhs.true466, label %if.end473

land.lhs.true466:                                 ; preds = %if.end463
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %h, i64 404
  %119 = load i32, ptr %i_direct_mv_pred, align 4
  %cmp469 = icmp eq i32 %119, 3
  br i1 %cmp469, label %if.then471, label %if.end473

if.then471:                                       ; preds = %land.lhs.true466
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.40) #16
  %b_direct_auto_write = getelementptr inbounds i8, ptr %h, i64 25820
  store i32 1, ptr %b_direct_auto_write, align 4
  br label %if.end473

if.end473:                                        ; preds = %if.then471, %land.lhs.true466, %if.end463
  %call474 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %call295, ptr noundef nonnull dereferenceable(1) @.str.41) #17
  %tobool475.not = icmp eq ptr %call474, null
  br i1 %tobool475.not, label %if.else487, label %land.lhs.true476

land.lhs.true476:                                 ; preds = %if.end473
  %call477 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call474, ptr noundef nonnull @.str.42, ptr noundef nonnull %i320) #16
  %tobool478 = icmp ne i32 %call477, 0
  %120 = load i32, ptr %i320, align 4
  %121 = icmp ult i32 %120, 3
  %or.cond879 = select i1 %tobool478, i1 %121, i1 false
  br i1 %or.cond879, label %if.then485, label %if.else487

if.then485:                                       ; preds = %land.lhs.true476
  %i_bframe_adaptive = getelementptr inbounds i8, ptr %h, i64 104
  store i32 %120, ptr %i_bframe_adaptive, align 8
  br label %if.end493

if.else487:                                       ; preds = %land.lhs.true476, %if.end473
  %i_bframe489 = getelementptr inbounds i8, ptr %h, i64 100
  %122 = load i32, ptr %i_bframe489, align 4
  %tobool490.not = icmp eq i32 %122, 0
  br i1 %tobool490.not, label %if.end493, label %if.then491

if.then491:                                       ; preds = %if.else487
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.43) #16
  br label %cleanup512.thread

if.end493:                                        ; preds = %if.else487, %if.then485
  %123 = load i32, ptr %b_mb_tree, align 8
  %tobool497.not = icmp eq i32 %123, 0
  br i1 %tobool497.not, label %lor.lhs.false498, label %land.lhs.true502

lor.lhs.false498:                                 ; preds = %if.end493
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %h, i64 528
  %124 = load i32, ptr %i_vbv_buffer_size, align 8
  %tobool501.not = icmp eq i32 %124, 0
  br i1 %tobool501.not, label %cleanup512, label %land.lhs.true502

land.lhs.true502:                                 ; preds = %lor.lhs.false498, %if.end493
  %call503 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %call295, ptr noundef nonnull dereferenceable(1) @.str.44) #17
  %tobool504.not = icmp eq ptr %call503, null
  br i1 %tobool504.not, label %cleanup512, label %land.lhs.true505

land.lhs.true505:                                 ; preds = %land.lhs.true502
  %call506 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call503, ptr noundef nonnull @.str.45, ptr noundef nonnull %i320) #16
  %tobool507.not = icmp eq i32 %call506, 0
  br i1 %tobool507.not, label %cleanup512, label %if.then508

if.then508:                                       ; preds = %land.lhs.true505
  %125 = load i32, ptr %i320, align 4
  %i_lookahead = getelementptr inbounds i8, ptr %h, i64 556
  store i32 %125, ptr %i_lookahead, align 4
  br label %cleanup512

cleanup512.thread:                                ; preds = %if.then329, %if.then342, %if.then355, %if.then364, %if.then388, %if.then411, %if.then424, %if.then437, %if.then450, %if.then491, %if.then319
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j321) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i320) #16
  br label %cleanup873

cleanup512:                                       ; preds = %lor.lhs.false498, %land.lhs.true502, %land.lhs.true505, %if.then508
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j321) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i320) #16
  br label %if.end519

if.end519:                                        ; preds = %cleanup512, %if.end316
  %stats_in.1 = phi ptr [ %call295, %if.end316 ], [ %incdec.ptr, %cleanup512 ]
  br label %for.body522

for.body522:                                      ; preds = %if.end519, %for.body522
  %num_entries.01330 = phi i32 [ -1, %if.end519 ], [ %inc525, %for.body522 ]
  %p.01329 = phi ptr [ %stats_in.1, %if.end519 ], [ %call523, %for.body522 ]
  %add.ptr = getelementptr inbounds i8, ptr %p.01329, i64 1
  %call523 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr, i32 noundef 59) #17
  %inc525 = add nsw i32 %num_entries.01330, 1
  %tobool521.not = icmp eq ptr %call523, null
  br i1 %tobool521.not, label %for.end526, label %for.body522

for.end526:                                       ; preds = %for.body522
  %tobool527.not = icmp eq i32 %inc525, 0
  br i1 %tobool527.not, label %if.then528, label %if.end529

if.then528:                                       ; preds = %for.end526
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.46) #16
  br label %cleanup873

if.end529:                                        ; preds = %for.end526
  %num_entries530 = getelementptr inbounds i8, ptr %2, i64 304
  store i32 %inc525, ptr %num_entries530, align 8
  %i_frame_total = getelementptr inbounds i8, ptr %h, i64 36
  %126 = load i32, ptr %i_frame_total, align 4
  %cmp533 = icmp sle i32 %126, %num_entries.01330
  %cmp538 = icmp sgt i32 %126, 0
  %or.cond = and i1 %cmp533, %cmp538
  br i1 %or.cond, label %if.then540, label %if.end544

if.then540:                                       ; preds = %if.end529
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.47, i32 noundef %126, i32 noundef %inc525) #16
  %.pre1390 = load i32, ptr %i_frame_total, align 4
  %.pre1391 = load i32, ptr %num_entries530, align 8
  br label %if.end544

if.end544:                                        ; preds = %if.then540, %if.end529
  %127 = phi i32 [ %.pre1391, %if.then540 ], [ %inc525, %if.end529 ]
  %128 = phi i32 [ %.pre1390, %if.then540 ], [ %126, %if.end529 ]
  %cmp548 = icmp sgt i32 %128, %127
  br i1 %cmp548, label %if.then550, label %do.body556

if.then550:                                       ; preds = %if.end544
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.48, i32 noundef %128, i32 noundef %127) #16
  br label %cleanup873

do.body556:                                       ; preds = %if.end544
  %mul559 = mul i32 %127, 168
  %call561 = call ptr @x264_malloc(i32 noundef %mul559) #16
  %entry562 = getelementptr inbounds i8, ptr %2, i64 312
  store ptr %call561, ptr %entry562, align 8
  %tobool564.not = icmp eq ptr %call561, null
  br i1 %tobool564.not, label %cleanup873, label %do.end568

do.end568:                                        ; preds = %do.body556
  %129 = load i32, ptr %num_entries530, align 8
  %conv571 = sext i32 %129 to i64
  %mul572 = mul nsw i64 %conv571, 168
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %call561, i8 0, i64 %mul572, i1 false)
  %130 = load i32, ptr %num_entries530, align 8
  %cmp5781331 = icmp sgt i32 %130, 0
  br i1 %cmp5781331, label %for.body581, label %for.end699

for.cond593.preheader:                            ; preds = %for.body581
  %cmp595.not1335 = icmp sgt i32 %133, 0
  br i1 %cmp595.not1335, label %for.body598, label %for.end699

for.body581:                                      ; preds = %do.end568, %for.body581
  %indvars.iv1376 = phi i64 [ %indvars.iv.next1377, %for.body581 ], [ 0, %do.end568 ]
  %131 = load ptr, ptr %entry562, align 8
  %arrayidx584 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %131, i64 %indvars.iv1376
  store i32 0, ptr %arrayidx584, align 8
  %new_qscale = getelementptr inbounds i8, ptr %arrayidx584, i64 56
  store double 0x4001228A8751D490, ptr %new_qscale, align 8
  %qscale = getelementptr inbounds i8, ptr %arrayidx584, i64 16
  store double 0x4001228A8751D490, ptr %qscale, align 8
  %132 = load i32, ptr %nmb, align 8
  %add587 = add nsw i32 %132, 10
  %misc_bits = getelementptr inbounds i8, ptr %arrayidx584, i64 32
  store i32 %add587, ptr %misc_bits, align 8
  %new_qp = getelementptr inbounds i8, ptr %arrayidx584, i64 64
  store i32 0, ptr %new_qp, align 8
  %indvars.iv.next1377 = add nuw nsw i64 %indvars.iv1376, 1
  %133 = load i32, ptr %num_entries530, align 8
  %134 = sext i32 %133 to i64
  %cmp578 = icmp slt i64 %indvars.iv.next1377, %134
  br i1 %cmp578, label %for.body581, label %for.cond593.preheader

for.body598:                                      ; preds = %for.cond593.preheader, %for.inc695
  %i592.01337 = phi i32 [ %inc696, %for.inc695 ], [ 0, %for.cond593.preheader ]
  %p.11336 = phi ptr [ %next.0, %for.inc695 ], [ %stats_in.1, %for.cond593.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame_number) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pict_type600) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qp) #16
  %call601 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %p.11336, i32 noundef 59) #17
  %tobool602.not = icmp eq ptr %call601, null
  br i1 %tobool602.not, label %if.end605, label %if.then603

if.then603:                                       ; preds = %for.body598
  %incdec.ptr604 = getelementptr inbounds i8, ptr %call601, i64 1
  store i8 0, ptr %call601, align 1
  br label %if.end605

if.end605:                                        ; preds = %if.then603, %for.body598
  %next.0 = phi ptr [ %incdec.ptr604, %if.then603 ], [ null, %for.body598 ]
  %call606 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %p.11336, ptr noundef nonnull @.str.49, ptr noundef nonnull %frame_number) #16
  %135 = load i32, ptr %frame_number, align 4
  %cmp607 = icmp slt i32 %135, 0
  br i1 %cmp607, label %cleanup697.thread1284, label %lor.lhs.false609

lor.lhs.false609:                                 ; preds = %if.end605
  %136 = load i32, ptr %num_entries530, align 8
  %cmp611.not = icmp slt i32 %135, %136
  br i1 %cmp611.not, label %if.end614, label %cleanup697.thread1284

cleanup697.thread1284:                            ; preds = %if.end605, %lor.lhs.false609
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.50, i32 noundef %135, i32 noundef %i592.01337) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qp) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pict_type600) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_number) #16
  br label %cleanup873

if.end614:                                        ; preds = %lor.lhs.false609
  %137 = load ptr, ptr %entry562, align 8
  %idxprom616 = zext nneg i32 %135 to i64
  %arrayidx617 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %137, i64 %idxprom616
  %direct_mode = getelementptr inbounds i8, ptr %arrayidx617, i64 84
  store i8 0, ptr %direct_mode, align 4
  %i_duration = getelementptr inbounds i8, ptr %arrayidx617, i64 160
  %i_cpb_duration = getelementptr inbounds i8, ptr %arrayidx617, i64 164
  %tex_bits = getelementptr inbounds i8, ptr %arrayidx617, i64 28
  %mv_bits = getelementptr inbounds i8, ptr %arrayidx617, i64 24
  %misc_bits618 = getelementptr inbounds i8, ptr %arrayidx617, i64 32
  %i_count = getelementptr inbounds i8, ptr %arrayidx617, i64 68
  %p_count = getelementptr inbounds i8, ptr %arrayidx617, i64 72
  %s_count = getelementptr inbounds i8, ptr %arrayidx617, i64 76
  %call620 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %p.11336, ptr noundef nonnull @.str.51, ptr noundef nonnull %pict_type600, ptr noundef nonnull %i_duration, ptr noundef nonnull %i_cpb_duration, ptr noundef nonnull %qp, ptr noundef nonnull %tex_bits, ptr noundef nonnull %mv_bits, ptr noundef nonnull %misc_bits618, ptr noundef nonnull %i_count, ptr noundef nonnull %p_count, ptr noundef nonnull %s_count, ptr noundef nonnull %direct_mode) #16
  %add621 = add nsw i32 %call620, %call606
  %call622 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %p.11336, ptr noundef nonnull dereferenceable(1) @.str.52) #17
  %tobool623.not = icmp eq ptr %call622, null
  br i1 %tobool623.not, label %cleanup697.thread1285, label %if.end625

cleanup697.thread1285:                            ; preds = %if.end614
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef %i592.01337, i32 noundef %add621) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qp) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pict_type600) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_number) #16
  br label %cleanup873

if.end625:                                        ; preds = %if.end614
  %add.ptr626 = getelementptr inbounds i8, ptr %call622, i64 4
  %refcount = getelementptr inbounds i8, ptr %arrayidx617, i64 92
  %call633 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %add.ptr626, ptr noundef nonnull @.str.53, ptr noundef nonnull %refcount) #16
  %cmp634.not = icmp eq i32 %call633, 1
  br i1 %cmp634.not, label %if.end637, label %for.end645

if.end637:                                        ; preds = %if.end625
  %add.ptr638 = getelementptr inbounds i8, ptr %call622, i64 5
  %call639 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638, i32 noundef 32) #17
  %tobool640.not = icmp eq ptr %call639, null
  br i1 %tobool640.not, label %cleanup697, label %for.inc643

for.inc643:                                       ; preds = %if.end637
  %arrayidx632.1 = getelementptr inbounds i8, ptr %arrayidx617, i64 96
  %call633.1 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.1) #16
  %cmp634.not.1 = icmp eq i32 %call633.1, 1
  br i1 %cmp634.not.1, label %if.end637.1, label %for.end645

if.end637.1:                                      ; preds = %for.inc643
  %add.ptr638.1 = getelementptr inbounds i8, ptr %call639, i64 1
  %call639.1 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.1, i32 noundef 32) #17
  %tobool640.not.1 = icmp eq ptr %call639.1, null
  br i1 %tobool640.not.1, label %cleanup697, label %for.inc643.1

for.inc643.1:                                     ; preds = %if.end637.1
  %arrayidx632.2 = getelementptr inbounds i8, ptr %arrayidx617, i64 100
  %call633.2 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.1, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.2) #16
  %cmp634.not.2 = icmp eq i32 %call633.2, 1
  br i1 %cmp634.not.2, label %if.end637.2, label %for.end645

if.end637.2:                                      ; preds = %for.inc643.1
  %add.ptr638.2 = getelementptr inbounds i8, ptr %call639.1, i64 1
  %call639.2 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.2, i32 noundef 32) #17
  %tobool640.not.2 = icmp eq ptr %call639.2, null
  br i1 %tobool640.not.2, label %cleanup697, label %for.inc643.2

for.inc643.2:                                     ; preds = %if.end637.2
  %arrayidx632.3 = getelementptr inbounds i8, ptr %arrayidx617, i64 104
  %call633.3 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.2, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.3) #16
  %cmp634.not.3 = icmp eq i32 %call633.3, 1
  br i1 %cmp634.not.3, label %if.end637.3, label %for.end645

if.end637.3:                                      ; preds = %for.inc643.2
  %add.ptr638.3 = getelementptr inbounds i8, ptr %call639.2, i64 1
  %call639.3 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.3, i32 noundef 32) #17
  %tobool640.not.3 = icmp eq ptr %call639.3, null
  br i1 %tobool640.not.3, label %cleanup697, label %for.inc643.3

for.inc643.3:                                     ; preds = %if.end637.3
  %arrayidx632.4 = getelementptr inbounds i8, ptr %arrayidx617, i64 108
  %call633.4 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.3, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.4) #16
  %cmp634.not.4 = icmp eq i32 %call633.4, 1
  br i1 %cmp634.not.4, label %if.end637.4, label %for.end645

if.end637.4:                                      ; preds = %for.inc643.3
  %add.ptr638.4 = getelementptr inbounds i8, ptr %call639.3, i64 1
  %call639.4 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.4, i32 noundef 32) #17
  %tobool640.not.4 = icmp eq ptr %call639.4, null
  br i1 %tobool640.not.4, label %cleanup697, label %for.inc643.4

for.inc643.4:                                     ; preds = %if.end637.4
  %arrayidx632.5 = getelementptr inbounds i8, ptr %arrayidx617, i64 112
  %call633.5 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.4, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.5) #16
  %cmp634.not.5 = icmp eq i32 %call633.5, 1
  br i1 %cmp634.not.5, label %if.end637.5, label %for.end645

if.end637.5:                                      ; preds = %for.inc643.4
  %add.ptr638.5 = getelementptr inbounds i8, ptr %call639.4, i64 1
  %call639.5 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.5, i32 noundef 32) #17
  %tobool640.not.5 = icmp eq ptr %call639.5, null
  br i1 %tobool640.not.5, label %cleanup697, label %for.inc643.5

for.inc643.5:                                     ; preds = %if.end637.5
  %arrayidx632.6 = getelementptr inbounds i8, ptr %arrayidx617, i64 116
  %call633.6 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.5, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.6) #16
  %cmp634.not.6 = icmp eq i32 %call633.6, 1
  br i1 %cmp634.not.6, label %if.end637.6, label %for.end645

if.end637.6:                                      ; preds = %for.inc643.5
  %add.ptr638.6 = getelementptr inbounds i8, ptr %call639.5, i64 1
  %call639.6 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.6, i32 noundef 32) #17
  %tobool640.not.6 = icmp eq ptr %call639.6, null
  br i1 %tobool640.not.6, label %cleanup697, label %for.inc643.6

for.inc643.6:                                     ; preds = %if.end637.6
  %arrayidx632.7 = getelementptr inbounds i8, ptr %arrayidx617, i64 120
  %call633.7 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.6, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.7) #16
  %cmp634.not.7 = icmp eq i32 %call633.7, 1
  br i1 %cmp634.not.7, label %if.end637.7, label %for.end645

if.end637.7:                                      ; preds = %for.inc643.6
  %add.ptr638.7 = getelementptr inbounds i8, ptr %call639.6, i64 1
  %call639.7 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.7, i32 noundef 32) #17
  %tobool640.not.7 = icmp eq ptr %call639.7, null
  br i1 %tobool640.not.7, label %cleanup697, label %for.inc643.7

for.inc643.7:                                     ; preds = %if.end637.7
  %arrayidx632.8 = getelementptr inbounds i8, ptr %arrayidx617, i64 124
  %call633.8 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.7, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.8) #16
  %cmp634.not.8 = icmp eq i32 %call633.8, 1
  br i1 %cmp634.not.8, label %if.end637.8, label %for.end645

if.end637.8:                                      ; preds = %for.inc643.7
  %add.ptr638.8 = getelementptr inbounds i8, ptr %call639.7, i64 1
  %call639.8 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.8, i32 noundef 32) #17
  %tobool640.not.8 = icmp eq ptr %call639.8, null
  br i1 %tobool640.not.8, label %cleanup697, label %for.inc643.8

for.inc643.8:                                     ; preds = %if.end637.8
  %arrayidx632.9 = getelementptr inbounds i8, ptr %arrayidx617, i64 128
  %call633.9 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.8, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.9) #16
  %cmp634.not.9 = icmp eq i32 %call633.9, 1
  br i1 %cmp634.not.9, label %if.end637.9, label %for.end645

if.end637.9:                                      ; preds = %for.inc643.8
  %add.ptr638.9 = getelementptr inbounds i8, ptr %call639.8, i64 1
  %call639.9 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.9, i32 noundef 32) #17
  %tobool640.not.9 = icmp eq ptr %call639.9, null
  br i1 %tobool640.not.9, label %cleanup697, label %for.inc643.9

for.inc643.9:                                     ; preds = %if.end637.9
  %arrayidx632.10 = getelementptr inbounds i8, ptr %arrayidx617, i64 132
  %call633.10 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.9, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.10) #16
  %cmp634.not.10 = icmp eq i32 %call633.10, 1
  br i1 %cmp634.not.10, label %if.end637.10, label %for.end645

if.end637.10:                                     ; preds = %for.inc643.9
  %add.ptr638.10 = getelementptr inbounds i8, ptr %call639.9, i64 1
  %call639.10 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.10, i32 noundef 32) #17
  %tobool640.not.10 = icmp eq ptr %call639.10, null
  br i1 %tobool640.not.10, label %cleanup697, label %for.inc643.10

for.inc643.10:                                    ; preds = %if.end637.10
  %arrayidx632.11 = getelementptr inbounds i8, ptr %arrayidx617, i64 136
  %call633.11 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.10, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.11) #16
  %cmp634.not.11 = icmp eq i32 %call633.11, 1
  br i1 %cmp634.not.11, label %if.end637.11, label %for.end645

if.end637.11:                                     ; preds = %for.inc643.10
  %add.ptr638.11 = getelementptr inbounds i8, ptr %call639.10, i64 1
  %call639.11 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.11, i32 noundef 32) #17
  %tobool640.not.11 = icmp eq ptr %call639.11, null
  br i1 %tobool640.not.11, label %cleanup697, label %for.inc643.11

for.inc643.11:                                    ; preds = %if.end637.11
  %arrayidx632.12 = getelementptr inbounds i8, ptr %arrayidx617, i64 140
  %call633.12 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.11, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.12) #16
  %cmp634.not.12 = icmp eq i32 %call633.12, 1
  br i1 %cmp634.not.12, label %if.end637.12, label %for.end645

if.end637.12:                                     ; preds = %for.inc643.11
  %add.ptr638.12 = getelementptr inbounds i8, ptr %call639.11, i64 1
  %call639.12 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.12, i32 noundef 32) #17
  %tobool640.not.12 = icmp eq ptr %call639.12, null
  br i1 %tobool640.not.12, label %cleanup697, label %for.inc643.12

for.inc643.12:                                    ; preds = %if.end637.12
  %arrayidx632.13 = getelementptr inbounds i8, ptr %arrayidx617, i64 144
  %call633.13 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.12, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.13) #16
  %cmp634.not.13 = icmp eq i32 %call633.13, 1
  br i1 %cmp634.not.13, label %if.end637.13, label %for.end645

if.end637.13:                                     ; preds = %for.inc643.12
  %add.ptr638.13 = getelementptr inbounds i8, ptr %call639.12, i64 1
  %call639.13 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.13, i32 noundef 32) #17
  %tobool640.not.13 = icmp eq ptr %call639.13, null
  br i1 %tobool640.not.13, label %cleanup697, label %for.inc643.13

for.inc643.13:                                    ; preds = %if.end637.13
  %arrayidx632.14 = getelementptr inbounds i8, ptr %arrayidx617, i64 148
  %call633.14 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.13, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.14) #16
  %cmp634.not.14 = icmp eq i32 %call633.14, 1
  br i1 %cmp634.not.14, label %if.end637.14, label %for.end645

if.end637.14:                                     ; preds = %for.inc643.13
  %add.ptr638.14 = getelementptr inbounds i8, ptr %call639.13, i64 1
  %call639.14 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.14, i32 noundef 32) #17
  %tobool640.not.14 = icmp eq ptr %call639.14, null
  br i1 %tobool640.not.14, label %cleanup697, label %for.inc643.14

for.inc643.14:                                    ; preds = %if.end637.14
  %arrayidx632.15 = getelementptr inbounds i8, ptr %arrayidx617, i64 152
  %call633.15 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call639.14, ptr noundef nonnull @.str.53, ptr noundef nonnull %arrayidx632.15) #16
  %cmp634.not.15 = icmp eq i32 %call633.15, 1
  br i1 %cmp634.not.15, label %if.end637.15, label %for.end645

if.end637.15:                                     ; preds = %for.inc643.14
  %add.ptr638.15 = getelementptr inbounds i8, ptr %call639.14, i64 1
  %call639.15 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr638.15, i32 noundef 32) #17
  %tobool640.not.15 = icmp eq ptr %call639.15, null
  br i1 %tobool640.not.15, label %cleanup697, label %for.end645

for.end645:                                       ; preds = %if.end637.15, %for.inc643.14, %for.inc643.13, %for.inc643.12, %for.inc643.11, %for.inc643.10, %for.inc643.9, %for.inc643.8, %for.inc643.7, %for.inc643.6, %for.inc643.5, %for.inc643.4, %for.inc643.3, %for.inc643.2, %for.inc643.1, %for.inc643, %if.end625
  %p.2.lcssa = phi ptr [ %add.ptr626, %if.end625 ], [ %call639, %for.inc643 ], [ %call639.1, %for.inc643.1 ], [ %call639.2, %for.inc643.2 ], [ %call639.3, %for.inc643.3 ], [ %call639.4, %for.inc643.4 ], [ %call639.5, %for.inc643.5 ], [ %call639.6, %for.inc643.6 ], [ %call639.7, %for.inc643.7 ], [ %call639.8, %for.inc643.8 ], [ %call639.9, %for.inc643.9 ], [ %call639.10, %for.inc643.10 ], [ %call639.11, %for.inc643.11 ], [ %call639.12, %for.inc643.12 ], [ %call639.13, %for.inc643.13 ], [ %call639.14, %for.inc643.14 ], [ %call639.15, %if.end637.15 ]
  %ref.0.lcssa = phi i32 [ 0, %if.end625 ], [ 1, %for.inc643 ], [ 2, %for.inc643.1 ], [ 3, %for.inc643.2 ], [ 4, %for.inc643.3 ], [ 5, %for.inc643.4 ], [ 6, %for.inc643.5 ], [ 7, %for.inc643.6 ], [ 8, %for.inc643.7 ], [ 9, %for.inc643.8 ], [ 10, %for.inc643.9 ], [ 11, %for.inc643.10 ], [ 12, %for.inc643.11 ], [ 13, %for.inc643.12 ], [ 14, %for.inc643.13 ], [ 15, %for.inc643.14 ], [ 16, %if.end637.15 ]
  %refs = getelementptr inbounds i8, ptr %arrayidx617, i64 156
  store i32 %ref.0.lcssa, ptr %refs, align 4
  %i_weight_denom = getelementptr inbounds i8, ptr %arrayidx617, i64 90
  store i16 -1, ptr %i_weight_denom, align 2
  %call646 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %p.2.lcssa, i32 noundef 119) #17
  %tobool647.not = icmp eq ptr %call646, null
  br i1 %tobool647.not, label %if.end659, label %if.then648

if.then648:                                       ; preds = %for.end645
  %weight = getelementptr inbounds i8, ptr %arrayidx617, i64 86
  %arrayidx652 = getelementptr inbounds i8, ptr %arrayidx617, i64 88
  %call653 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call646, ptr noundef nonnull @.str.54, ptr noundef nonnull %i_weight_denom, ptr noundef nonnull %weight, ptr noundef nonnull %arrayidx652) #16
  %cmp654.not = icmp eq i32 %call653, 3
  br i1 %cmp654.not, label %if.end659, label %if.then656

if.then656:                                       ; preds = %if.then648
  store i16 -1, ptr %i_weight_denom, align 2
  br label %if.end659

if.end659:                                        ; preds = %if.then648, %if.then656, %for.end645
  %138 = load i8, ptr %pict_type600, align 1
  %cmp661.not = icmp eq i8 %138, 98
  br i1 %cmp661.not, label %sw.epilog, label %if.end664

if.end664:                                        ; preds = %if.end659
  %kept_as_ref = getelementptr inbounds i8, ptr %arrayidx617, i64 8
  store i32 1, ptr %kept_as_ref, align 8
  switch i8 %138, label %cleanup697 [
    i8 73, label %sw.epilog
    i8 105, label %sw.bb667
    i8 80, label %sw.bb670
    i8 66, label %sw.bb673
  ]

sw.bb667:                                         ; preds = %if.end664
  br label %sw.epilog

sw.bb670:                                         ; preds = %if.end664
  br label %sw.epilog

sw.bb673:                                         ; preds = %if.end664
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end659, %if.end664, %sw.bb673, %sw.bb670, %sw.bb667
  %139 = phi <2 x i32> [ <i32 1, i32 4>, %sw.bb673 ], [ <i32 0, i32 3>, %sw.bb670 ], [ <i32 2, i32 2>, %sw.bb667 ], [ <i32 2, i32 1>, %if.end664 ], [ <i32 1, i32 5>, %if.end659 ]
  store <2 x i32> %139, ptr %arrayidx617, align 8
  %cmp679 = icmp slt i32 %add621, 12
  br i1 %cmp679, label %cleanup697, label %for.inc695

for.inc695:                                       ; preds = %sw.epilog
  %140 = load float, ptr %qp, align 4
  %conv683 = fpext float %140 to double
  %sub.i1261 = fadd double %conv683, -1.200000e+01
  %div.i1262 = fdiv double %sub.i1261, 6.000000e+00
  %exp2.i1263 = call double @exp2(double %div.i1262) #16
  %mul.i1264 = fmul double %exp2.i1263, 8.500000e-01
  %qscale685 = getelementptr inbounds i8, ptr %arrayidx617, i64 16
  store double %mul.i1264, ptr %qscale685, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qp) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pict_type600) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_number) #16
  %inc696 = add nuw nsw i32 %i592.01337, 1
  %141 = load i32, ptr %num_entries530, align 8
  %cmp595.not = icmp slt i32 %inc696, %141
  br i1 %cmp595.not, label %for.body598, label %for.end699

cleanup697:                                       ; preds = %if.end664, %sw.epilog, %if.end637, %if.end637.1, %if.end637.2, %if.end637.3, %if.end637.4, %if.end637.5, %if.end637.6, %if.end637.7, %if.end637.8, %if.end637.9, %if.end637.10, %if.end637.11, %if.end637.12, %if.end637.13, %if.end637.14, %if.end637.15
  %e.1 = phi i32 [ %add621, %if.end637.15 ], [ %add621, %if.end637.14 ], [ %add621, %if.end637.13 ], [ %add621, %if.end637.12 ], [ %add621, %if.end637.11 ], [ %add621, %if.end637.10 ], [ %add621, %if.end637.9 ], [ %add621, %if.end637.8 ], [ %add621, %if.end637.7 ], [ %add621, %if.end637.6 ], [ %add621, %if.end637.5 ], [ %add621, %if.end637.4 ], [ %add621, %if.end637.3 ], [ %add621, %if.end637.2 ], [ %add621, %if.end637.1 ], [ %add621, %if.end637 ], [ %add621, %sw.epilog ], [ -1, %if.end664 ]
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef %i592.01337, i32 noundef %e.1) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qp) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pict_type600) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_number) #16
  br label %cleanup873

for.end699:                                       ; preds = %for.inc695, %do.end568, %for.cond593.preheader
  call void @x264_free(ptr noundef nonnull %call295) #16
  %142 = load i32, ptr %rc14, align 8
  %cmp703 = icmp eq i32 %142, 2
  br i1 %cmp703, label %if.then705, label %if.end718

if.then705:                                       ; preds = %for.end699
  %call706 = call fastcc i32 @init_pass2(ptr noundef nonnull %h)
  %cmp707 = icmp slt i32 %call706, 0
  br i1 %cmp707, label %cleanup873, label %if.end718

if.end718:                                        ; preds = %if.then705, %for.end699, %if.end280
  %b_stat_write = getelementptr inbounds i8, ptr %h, i64 560
  %143 = load i32, ptr %b_stat_write, align 8
  %tobool721.not = icmp eq i32 %143, 0
  br i1 %tobool721.not, label %if.end781, label %if.then722

if.then722:                                       ; preds = %if.end718
  %psz_stat_out = getelementptr inbounds i8, ptr %h, i64 568
  %144 = load ptr, ptr %psz_stat_out, align 8
  %call.i1265 = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %144) #17
  %145 = trunc i64 %call.i1265 to i32
  %conv.i1268 = add i32 %145, 6
  %call3.i1269 = call ptr @x264_malloc(i32 noundef %conv.i1268) #16
  %tobool.not.i1270 = icmp eq ptr %call3.i1269, null
  br i1 %tobool.not.i1270, label %x264_strcat_filename.exit1274.thread, label %if.end730

x264_strcat_filename.exit1274.thread:             ; preds = %if.then722
  %psz_stat_file_tmpname1289 = getelementptr inbounds i8, ptr %2, i64 264
  store ptr null, ptr %psz_stat_file_tmpname1289, align 8
  br label %cleanup873

if.end730:                                        ; preds = %if.then722
  %call4.i1272 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %call3.i1269, ptr noundef nonnull readonly dereferenceable(1) %144) #16
  %strlen1295 = call i64 @strlen(ptr nonnull dereferenceable(1) %call3.i1269)
  %endptr1296 = getelementptr inbounds i8, ptr %call3.i1269, i64 %strlen1295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr1296, ptr noundef nonnull align 1 dereferenceable(6) @.str.56, i64 6, i1 false)
  %psz_stat_file_tmpname = getelementptr inbounds i8, ptr %2, i64 264
  store ptr %call3.i1269, ptr %psz_stat_file_tmpname, align 8
  %call732 = call noalias ptr @fopen(ptr noundef nonnull %call3.i1269, ptr noundef nonnull @.str.57)
  %p_stat_file_out = getelementptr inbounds i8, ptr %2, i64 256
  store ptr %call732, ptr %p_stat_file_out, align 8
  %cmp734 = icmp eq ptr %call732, null
  br i1 %cmp734, label %if.then736, label %if.end737

if.then736:                                       ; preds = %if.end730
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.10) #16
  br label %cleanup873

if.end737:                                        ; preds = %if.end730
  %call739 = call ptr @x264_param2string(ptr noundef nonnull %h, i32 noundef 1) #16
  %tobool740.not = icmp eq ptr %call739, null
  br i1 %tobool740.not, label %if.end744, label %if.then741

if.then741:                                       ; preds = %if.end737
  %146 = load ptr, ptr %p_stat_file_out, align 8
  %call743 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef nonnull @.str.58, ptr noundef nonnull %call739) #16
  br label %if.end744

if.end744:                                        ; preds = %if.then741, %if.end737
  call void @x264_free(ptr noundef %call739) #16
  %147 = load i32, ptr %b_mb_tree, align 8
  %tobool748.not = icmp eq i32 %147, 0
  br i1 %tobool748.not, label %if.end838, label %land.lhs.true749

land.lhs.true749:                                 ; preds = %if.end744
  %148 = load i32, ptr %b_stat_read283, align 8
  %tobool753.not = icmp eq i32 %148, 0
  br i1 %tobool753.not, label %if.then754, label %do.body797

if.then754:                                       ; preds = %land.lhs.true749
  %149 = load ptr, ptr %psz_stat_out, align 8
  %call758 = call fastcc ptr @x264_strcat_filename(ptr noundef %149, ptr noundef nonnull @.str.59)
  %psz_mbtree_stat_file_tmpname = getelementptr inbounds i8, ptr %2, i64 280
  store ptr %call758, ptr %psz_mbtree_stat_file_tmpname, align 8
  %150 = load ptr, ptr %psz_stat_out, align 8
  %call762 = call fastcc ptr @x264_strcat_filename(ptr noundef %150, ptr noundef nonnull @.str.11)
  %psz_mbtree_stat_file_name = getelementptr inbounds i8, ptr %2, i64 288
  store ptr %call762, ptr %psz_mbtree_stat_file_name, align 8
  %151 = load ptr, ptr %psz_mbtree_stat_file_tmpname, align 8
  %tobool764.not = icmp eq ptr %151, null
  %tobool767.not = icmp eq ptr %call762, null
  %or.cond1238 = select i1 %tobool764.not, i1 true, i1 %tobool767.not
  br i1 %or.cond1238, label %cleanup873, label %if.end769

if.end769:                                        ; preds = %if.then754
  %call771 = call noalias ptr @fopen(ptr noundef nonnull %151, ptr noundef nonnull @.str.57)
  %p_mbtree_stat_file_out = getelementptr inbounds i8, ptr %2, i64 272
  store ptr %call771, ptr %p_mbtree_stat_file_out, align 8
  %cmp773 = icmp eq ptr %call771, null
  br i1 %cmp773, label %if.then775, label %if.end781

if.then775:                                       ; preds = %if.end769
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.13) #16
  br label %cleanup873

if.end781:                                        ; preds = %if.end769, %if.end718
  %.pr = load i32, ptr %b_mb_tree, align 8
  %tobool785.not = icmp eq i32 %.pr, 0
  br i1 %tobool785.not, label %if.end838, label %land.lhs.true786

land.lhs.true786:                                 ; preds = %if.end781
  %.pr1293 = load i32, ptr %b_stat_read283, align 8
  %tobool790.not = icmp eq i32 %.pr1293, 0
  br i1 %tobool790.not, label %lor.lhs.false791, label %do.body797

lor.lhs.false791:                                 ; preds = %land.lhs.true786
  %152 = load i32, ptr %b_stat_write, align 8
  %tobool795.not = icmp eq i32 %152, 0
  br i1 %tobool795.not, label %if.end838, label %do.body797

do.body797:                                       ; preds = %land.lhs.true749, %land.lhs.true786, %lor.lhs.false791
  %153 = load i32, ptr %mb, align 16
  %mul801 = shl i32 %153, 1
  %call803 = call ptr @x264_malloc(i32 noundef %mul801) #16
  %qp_buffer = getelementptr inbounds i8, ptr %2, i64 488
  store ptr %call803, ptr %qp_buffer, align 8
  %tobool807.not = icmp eq ptr %call803, null
  br i1 %tobool807.not, label %cleanup873, label %do.end811

do.end811:                                        ; preds = %do.body797
  %i_bframe_pyramid813 = getelementptr inbounds i8, ptr %h, i64 112
  %154 = load i32, ptr %i_bframe_pyramid813, align 16
  %tobool814.not = icmp eq i32 %154, 0
  br i1 %tobool814.not, label %if.end837, label %land.lhs.true815

land.lhs.true815:                                 ; preds = %do.end811
  %155 = load i32, ptr %b_stat_read283, align 8
  %tobool819.not = icmp eq i32 %155, 0
  br i1 %tobool819.not, label %if.end837, label %do.body821

do.body821:                                       ; preds = %land.lhs.true815
  %156 = load i32, ptr %mb, align 16
  %mul825 = shl i32 %156, 1
  %call827 = call ptr @x264_malloc(i32 noundef %mul825) #16
  %arrayidx829 = getelementptr inbounds i8, ptr %2, i64 496
  store ptr %call827, ptr %arrayidx829, align 8
  %tobool832.not = icmp eq ptr %call827, null
  br i1 %tobool832.not, label %cleanup873, label %if.end837

if.end837:                                        ; preds = %do.body821, %land.lhs.true815, %do.end811
  %qpbuf_pos = getelementptr inbounds i8, ptr %2, i64 504
  store i32 -1, ptr %qpbuf_pos, align 8
  br label %if.end838

if.end838:                                        ; preds = %if.end744, %if.end837, %lor.lhs.false791, %if.end781
  %157 = load i32, ptr %i_threads, align 4
  %cmp8431338 = icmp sgt i32 %157, 0
  br i1 %cmp8431338, label %for.inc869.peel, label %cleanup873

for.inc869.peel:                                  ; preds = %if.end838
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %158 = load ptr, ptr %thread, align 8
  %rc850.peel = getelementptr inbounds i8, ptr %158, i64 26704
  store ptr %2, ptr %rc850.peel, align 16
  %.pre1392 = load i32, ptr %i_threads, align 4
  %cmp843.peel = icmp sgt i32 %.pre1392, 1
  br i1 %cmp843.peel, label %for.inc869, label %cleanup873

for.inc869:                                       ; preds = %for.inc869.peel, %for.inc869
  %indvars.iv1383 = phi i64 [ %indvars.iv.next1384, %for.inc869 ], [ 1, %for.inc869.peel ]
  %add.ptr847 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %2, i64 %indvars.iv1383
  %arrayidx849 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv1383
  %159 = load ptr, ptr %arrayidx849, align 8
  %rc850 = getelementptr inbounds i8, ptr %159, i64 26704
  store ptr %add.ptr847, ptr %rc850, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(936) %add.ptr847, ptr noundef nonnull align 8 dereferenceable(936) %2, i64 936, i1 false)
  %160 = load ptr, ptr %arrayidx849, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %160, ptr noundef nonnull align 16 dereferenceable(704) %h, i64 704, i1 false)
  %161 = load i32, ptr %b_variable_qp, align 16
  %162 = load ptr, ptr %arrayidx849, align 8
  %b_variable_qp867 = getelementptr inbounds i8, ptr %162, i64 25808
  store i32 %161, ptr %b_variable_qp867, align 16
  %indvars.iv.next1384 = add nuw nsw i64 %indvars.iv1383, 1
  %163 = load i32, ptr %i_threads, align 4
  %164 = sext i32 %163 to i64
  %cmp843 = icmp slt i64 %indvars.iv.next1384, %164
  br i1 %cmp843, label %for.inc869, label %cleanup873, !llvm.loop !12

cleanup873:                                       ; preds = %for.inc869, %for.inc869.peel, %if.end838, %cleanup697, %if.then303, %cleanup697.thread1285, %cleanup697.thread1284, %cleanup512.thread, %if.then314, %if.then705, %do.body556, %if.then528, %if.then550, %if.then297, %x264_strcat_filename.exit1274.thread, %if.then736, %if.then775, %if.then754, %entry, %if.end115, %do.body176, %do.body797, %do.body821, %if.then279, %if.then76
  %retval.11 = phi i32 [ -1, %if.then76 ], [ -1, %if.then279 ], [ -1, %do.body821 ], [ -1, %do.body797 ], [ -1, %do.body176 ], [ -1, %if.end115 ], [ -1, %entry ], [ -1, %if.then754 ], [ -1, %if.then775 ], [ -1, %if.then736 ], [ -1, %x264_strcat_filename.exit1274.thread ], [ -1, %if.then297 ], [ -1, %if.then550 ], [ -1, %cleanup697 ], [ -1, %if.then528 ], [ -1, %do.body556 ], [ -1, %if.then705 ], [ -1, %if.then314 ], [ -1, %cleanup512.thread ], [ -1, %cleanup697.thread1284 ], [ -1, %cleanup697.thread1285 ], [ -1, %if.then303 ], [ 0, %if.end838 ], [ 0, %for.inc869.peel ], [ 0, %for.inc869 ]
  ret i32 %retval.11
}

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @log2f(float noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

declare ptr @x264_slurp_file(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @x264_strcat_filename(ptr nocapture noundef readonly %input, ptr nocapture noundef readonly %suffix) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %input) #17
  %call1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %suffix) #17
  %add = add i64 %call1, %call
  %0 = trunc i64 %add to i32
  %conv = add i32 %0, 1
  %call3 = tail call ptr @x264_malloc(i32 noundef %conv) #16
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %call3, ptr noundef nonnull dereferenceable(1) %input) #16
  %call5 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %call3, ptr noundef nonnull dereferenceable(1) %suffix) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret ptr %call3
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

declare void @x264_free(ptr noundef) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @init_pass2(ptr noundef %h) unnamed_addr #0 {
entry:
  %rc = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc, align 16
  %num_entries = getelementptr inbounds i8, ptr %0, i64 304
  %1 = load i32, ptr %num_entries, align 8
  %cmp871 = icmp sgt i32 %1, 0
  br i1 %cmp871, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %entry1 = getelementptr inbounds i8, ptr %0, i64 312
  %2 = load ptr, ptr %entry1, align 8
  %wide.trip.count = zext nneg i32 %1 to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %3 = icmp ult i32 %1, 4
  br i1 %3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.lr.ph
  %add.lcssa.ph = phi double [ poison, %for.body.lr.ph ], [ %add.3, %for.body ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %duration.0873.unr = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.cond.cleanup.loopexit.unr-lcssa ]
  %duration.0873.epil = phi double [ %add.epil, %for.body.epil ], [ %duration.0873.unr, %for.cond.cleanup.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.cond.cleanup.loopexit.unr-lcssa ]
  %i_duration.epil = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 %indvars.iv.epil, i32 20
  %4 = load i32, ptr %i_duration.epil, align 8
  %conv.epil = sitofp i32 %4 to double
  %add.epil = fadd double %duration.0873.epil, %conv.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup, label %for.body.epil, !llvm.loop !13

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil, %entry
  %duration.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %add.epil, %for.body.epil ]
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %5 = load ptr, ptr %sps, align 16
  %i_num_units_in_tick = getelementptr inbounds i8, ptr %5, i64 1192
  %6 = load i32, ptr %i_num_units_in_tick, align 4
  %conv2 = uitofp i32 %6 to double
  %i_time_scale = getelementptr inbounds i8, ptr %5, i64 1196
  %7 = load i32, ptr %i_time_scale, align 4
  %conv5 = uitofp i32 %7 to double
  %div = fdiv double %conv2, %conv5
  %mul = fmul double %duration.0.lcssa, %div
  %i_bitrate = getelementptr inbounds i8, ptr %h, i64 508
  %8 = load i32, ptr %i_bitrate, align 4
  %conv7 = sitofp i32 %8 to double
  %mul8 = fmul double %conv7, 1.000000e+03
  %mul9 = fmul double %mul8, %mul
  %conv10 = fptoui double %mul9 to i64
  %f_qblur = getelementptr inbounds i8, ptr %h, i64 596
  %9 = load float, ptr %f_qblur, align 4
  %conv13 = fpext float %9 to double
  %f_complexity_blur = getelementptr inbounds i8, ptr %h, i64 600
  %10 = load float, ptr %f_complexity_blur, align 8
  %conv16 = fpext float %10 to double
  %mul17 = fmul double %conv13, 4.000000e+00
  %conv18 = fptosi double %mul17 to i32
  %or = or i32 %conv18, 1
  br i1 %cmp871, label %for.body25.lr.ph, label %for.cond.cleanup48

for.body25.lr.ph:                                 ; preds = %for.cond.cleanup
  %entry26 = getelementptr inbounds i8, ptr %0, i64 312
  %11 = load ptr, ptr %entry26, align 8
  %wide.trip.count970 = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %for.body25.preheader, label %vector.ph

for.body25.preheader:                             ; preds = %middle.block, %for.body25.lr.ph
  %indvars.iv967.ph = phi i64 [ 0, %for.body25.lr.ph ], [ %n.vec, %middle.block ]
  %all_const_bits.0877.ph = phi i64 [ 0, %for.body25.lr.ph ], [ %bin.rdx1046, %middle.block ]
  %xtraiter1063 = and i64 %wide.trip.count970, 3
  %lcmp.mod1064.not = icmp eq i64 %xtraiter1063, 0
  br i1 %lcmp.mod1064.not, label %for.body25.prol.loopexit, label %for.body25.prol

for.body25.prol:                                  ; preds = %for.body25.preheader, %for.body25.prol
  %indvars.iv967.prol = phi i64 [ %indvars.iv.next968.prol, %for.body25.prol ], [ %indvars.iv967.ph, %for.body25.preheader ]
  %all_const_bits.0877.prol = phi i64 [ %add30.prol, %for.body25.prol ], [ %all_const_bits.0877.ph, %for.body25.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body25.prol ], [ 0, %for.body25.preheader ]
  %misc_bits.prol = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %11, i64 %indvars.iv967.prol, i32 6
  %12 = load i32, ptr %misc_bits.prol, align 8
  %conv29.prol = sext i32 %12 to i64
  %add30.prol = add i64 %all_const_bits.0877.prol, %conv29.prol
  %indvars.iv.next968.prol = add nuw nsw i64 %indvars.iv967.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1063
  br i1 %prol.iter.cmp.not, label %for.body25.prol.loopexit, label %for.body25.prol, !llvm.loop !14

for.body25.prol.loopexit:                         ; preds = %for.body25.prol, %for.body25.preheader
  %add30.lcssa1057.unr = phi i64 [ poison, %for.body25.preheader ], [ %add30.prol, %for.body25.prol ]
  %indvars.iv967.unr = phi i64 [ %indvars.iv967.ph, %for.body25.preheader ], [ %indvars.iv.next968.prol, %for.body25.prol ]
  %all_const_bits.0877.unr = phi i64 [ %all_const_bits.0877.ph, %for.body25.preheader ], [ %add30.prol, %for.body25.prol ]
  %13 = sub nsw i64 %indvars.iv967.ph, %wide.trip.count970
  %14 = icmp ugt i64 %13, -4
  br i1 %14, label %for.cond.cleanup24, label %for.body25

vector.ph:                                        ; preds = %for.body25.lr.ph
  %n.vec = and i64 %wide.trip.count970, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi i64 [ 0, %vector.ph ], [ %30, %vector.body ]
  %vec.phi1042 = phi i64 [ 0, %vector.ph ], [ %31, %vector.body ]
  %vec.phi1043 = phi i64 [ 0, %vector.ph ], [ %32, %vector.body ]
  %vec.phi1044 = phi i64 [ 0, %vector.ph ], [ %33, %vector.body ]
  %15 = or disjoint i64 %index, 1
  %16 = or disjoint i64 %index, 2
  %17 = or disjoint i64 %index, 3
  %18 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %11, i64 %index, i32 6
  %19 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %11, i64 %15, i32 6
  %20 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %11, i64 %16, i32 6
  %21 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %11, i64 %17, i32 6
  %22 = load i32, ptr %18, align 8
  %23 = load i32, ptr %19, align 8
  %24 = load i32, ptr %20, align 8
  %25 = load i32, ptr %21, align 8
  %26 = sext i32 %22 to i64
  %27 = sext i32 %23 to i64
  %28 = sext i32 %24 to i64
  %29 = sext i32 %25 to i64
  %30 = add i64 %vec.phi, %26
  %31 = add i64 %vec.phi1042, %27
  %32 = add i64 %vec.phi1043, %28
  %33 = add i64 %vec.phi1044, %29
  %index.next = add nuw i64 %index, 4
  %34 = icmp eq i64 %index.next, %n.vec
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add i64 %31, %30
  %bin.rdx1045 = add i64 %32, %bin.rdx
  %bin.rdx1046 = add i64 %33, %bin.rdx1045
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count970
  br i1 %cmp.n, label %for.cond.cleanup24, label %for.body25.preheader

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %duration.0873 = phi double [ 0.000000e+00, %for.body.lr.ph.new ], [ %add.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %i_duration = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 %indvars.iv, i32 20
  %35 = load i32, ptr %i_duration, align 8
  %conv = sitofp i32 %35 to double
  %add = fadd double %duration.0873, %conv
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i_duration.1 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 %indvars.iv.next, i32 20
  %36 = load i32, ptr %i_duration.1, align 8
  %conv.1 = sitofp i32 %36 to double
  %add.1 = fadd double %add, %conv.1
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i_duration.2 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 %indvars.iv.next.1, i32 20
  %37 = load i32, ptr %i_duration.2, align 8
  %conv.2 = sitofp i32 %37 to double
  %add.2 = fadd double %add.1, %conv.2
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i_duration.3 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 %indvars.iv.next.2, i32 20
  %38 = load i32, ptr %i_duration.3, align 8
  %conv.3 = sitofp i32 %38 to double
  %add.3 = fadd double %add.2, %conv.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body

for.cond.cleanup24:                               ; preds = %for.body25.prol.loopexit, %for.body25, %middle.block
  %add30.lcssa = phi i64 [ %bin.rdx1046, %middle.block ], [ %add30.lcssa1057.unr, %for.body25.prol.loopexit ], [ %add30.3, %for.body25 ]
  %cmp34 = icmp ugt i64 %add30.lcssa, %conv10
  br i1 %cmp34, label %if.then, label %for.cond44.preheader

for.cond44.preheader:                             ; preds = %for.cond.cleanup24
  br i1 %cmp871, label %for.body49.lr.ph, label %for.cond.cleanup48

for.body49.lr.ph:                                 ; preds = %for.cond44.preheader
  %entry51 = getelementptr inbounds i8, ptr %0, i64 312
  %mul56 = fmul double %conv16, 2.000000e+00
  %cmp57879 = fcmp ogt double %mul56, 1.000000e+00
  %nmb = getelementptr inbounds i8, ptr %0, i64 48
  %cmp98893 = fcmp ult double %mul56, 0.000000e+00
  br label %for.body49

for.body25:                                       ; preds = %for.body25.prol.loopexit, %for.body25
  %indvars.iv967 = phi i64 [ %indvars.iv.next968.3, %for.body25 ], [ %indvars.iv967.unr, %for.body25.prol.loopexit ]
  %all_const_bits.0877 = phi i64 [ %add30.3, %for.body25 ], [ %all_const_bits.0877.unr, %for.body25.prol.loopexit ]
  %misc_bits = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %11, i64 %indvars.iv967, i32 6
  %39 = load i32, ptr %misc_bits, align 8
  %conv29 = sext i32 %39 to i64
  %add30 = add i64 %all_const_bits.0877, %conv29
  %indvars.iv.next968 = add nuw nsw i64 %indvars.iv967, 1
  %misc_bits.1 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %11, i64 %indvars.iv.next968, i32 6
  %40 = load i32, ptr %misc_bits.1, align 8
  %conv29.1 = sext i32 %40 to i64
  %add30.1 = add i64 %add30, %conv29.1
  %indvars.iv.next968.1 = add nuw nsw i64 %indvars.iv967, 2
  %misc_bits.2 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %11, i64 %indvars.iv.next968.1, i32 6
  %41 = load i32, ptr %misc_bits.2, align 8
  %conv29.2 = sext i32 %41 to i64
  %add30.2 = add i64 %add30.1, %conv29.2
  %indvars.iv.next968.2 = add nuw nsw i64 %indvars.iv967, 3
  %misc_bits.3 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %11, i64 %indvars.iv.next968.2, i32 6
  %42 = load i32, ptr %misc_bits.3, align 8
  %conv29.3 = sext i32 %42 to i64
  %add30.3 = add i64 %add30.2, %conv29.3
  %indvars.iv.next968.3 = add nuw nsw i64 %indvars.iv967, 4
  %exitcond971.not.3 = icmp eq i64 %indvars.iv.next968.3, %wide.trip.count970
  br i1 %exitcond971.not.3, label %for.cond.cleanup24, label %for.body25, !llvm.loop !18

if.then:                                          ; preds = %for.cond.cleanup24
  %conv36 = uitofp i64 %add30.lcssa to double
  %fps = getelementptr inbounds i8, ptr %0, i64 16
  %43 = load double, ptr %fps, align 8
  %mul37 = fmul double %43, %conv36
  %conv39 = sitofp i32 %1 to double
  %mul40 = fmul double %conv39, 1.000000e+03
  %div41 = fdiv double %mul37, %mul40
  %conv42 = fptosi double %div41 to i32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.85, i32 noundef %conv42) #16
  br label %cleanup482

for.cond.cleanup48:                               ; preds = %cleanup141, %for.cond.cleanup, %for.cond44.preheader
  %.lcssa869 = phi i32 [ %1, %for.cond44.preheader ], [ %1, %for.cond.cleanup ], [ %77, %cleanup141 ]
  %mul151 = shl i32 %.lcssa869, 3
  %call153 = tail call ptr @x264_malloc(i32 noundef %mul151) #16
  %tobool.not = icmp eq ptr %call153, null
  br i1 %tobool.not, label %cleanup482, label %do.end

for.body49:                                       ; preds = %for.body49.lr.ph, %cleanup141
  %indvars.iv980 = phi i64 [ 0, %for.body49.lr.ph ], [ %indvars.iv.next981, %cleanup141 ]
  %44 = load ptr, ptr %entry51, align 8
  br i1 %cmp57879, label %land.rhs, label %cleanup92

land.rhs:                                         ; preds = %for.body49, %for.inc90
  %indvars.iv972 = phi i64 [ %indvars.iv.next973, %for.inc90 ], [ 1, %for.body49 ]
  %weight.0882 = phi double [ %mul73, %for.inc90 ], [ 1.000000e+00, %for.body49 ]
  %cplx_sum.0881 = phi double [ %60, %for.inc90 ], [ 0.000000e+00, %for.body49 ]
  %weight_sum.0880 = phi double [ %add84, %for.inc90 ], [ 0.000000e+00, %for.body49 ]
  %45 = load i32, ptr %num_entries, align 8
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %46, %indvars.iv980
  %cmp60 = icmp slt i64 %indvars.iv972, %47
  br i1 %cmp60, label %for.body63, label %cleanup92

for.body63:                                       ; preds = %land.rhs
  %48 = load ptr, ptr %entry51, align 8
  %49 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %48, i64 %indvars.iv972
  %arrayidx67 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %49, i64 %indvars.iv980
  %i_count = getelementptr inbounds i8, ptr %arrayidx67, i64 68
  %50 = load i32, ptr %i_count, align 4
  %conv68 = sitofp i32 %50 to float
  %51 = load i32, ptr %nmb, align 8
  %conv69 = sitofp i32 %51 to float
  %div70 = fdiv float %conv68, %conv69
  %conv71 = fpext float %div70 to double
  %square = fmul double %conv71, %conv71
  %sub72 = fsub double 1.000000e+00, %square
  %mul73 = fmul double %weight.0882, %sub72
  %cmp74 = fcmp uge double %mul73, 1.000000e-04
  br i1 %cmp74, label %for.inc90, label %cleanup92

for.inc90:                                        ; preds = %for.body63
  %52 = trunc nuw nsw i64 %indvars.iv972 to i32
  %53 = mul i32 %52, %52
  %mul79 = sub i32 0, %53
  %conv80 = sitofp i32 %mul79 to double
  %div81 = fdiv double %conv80, 2.000000e+02
  %call82 = tail call double @exp(double noundef %div81) #16
  %mul83 = fmul double %mul73, %call82
  %add84 = fadd double %weight_sum.0880, %mul83
  %tex_bits.i = getelementptr inbounds i8, ptr %arrayidx67, i64 28
  %54 = load i32, ptr %tex_bits.i, align 4
  %qscale1.i = getelementptr inbounds i8, ptr %arrayidx67, i64 16
  %55 = load double, ptr %qscale1.i, align 8
  %call.i = tail call double @pow(double noundef %55, double noundef 1.100000e+00) #16
  %mv_bits.i = getelementptr inbounds i8, ptr %arrayidx67, i64 24
  %56 = load i32, ptr %mv_bits.i, align 8
  %57 = load double, ptr %qscale1.i, align 8
  %cmp4.i = fcmp ogt double %57, 1.000000e+00
  %cond.i = select i1 %cmp4.i, double %57, double 1.000000e+00
  %conv2.i = sitofp i32 %56 to double
  %conv.i = sitofp i32 %54 to double
  %add.i = fadd double %conv.i, 1.000000e-01
  %call14.i = tail call double @pow(double noundef %cond.i, double noundef 5.000000e-01) #16
  %mul15.i = fmul double %call14.i, %conv2.i
  %58 = tail call double @llvm.fmuladd.f64(double %add.i, double %call.i, double %mul15.i)
  %misc_bits.i = getelementptr inbounds i8, ptr %arrayidx67, i64 32
  %59 = load i32, ptr %misc_bits.i, align 8
  %conv16.i = sitofp i32 %59 to double
  %add17.i = fadd double %58, %conv16.i
  %sub88 = fsub double %add17.i, %conv16.i
  %60 = tail call double @llvm.fmuladd.f64(double %mul83, double %sub88, double %cplx_sum.0881)
  %indvars.iv.next973 = add nuw nsw i64 %indvars.iv972, 1
  %61 = trunc nuw i64 %indvars.iv.next973 to i32
  %conv55 = uitofp nneg i32 %61 to double
  %cmp57 = fcmp ogt double %mul56, %conv55
  br i1 %cmp57, label %land.rhs, label %cleanup92

cleanup92:                                        ; preds = %for.inc90, %land.rhs, %for.body63, %for.body49
  %weight_sum.0.lcssa = phi double [ 0.000000e+00, %for.body49 ], [ %weight_sum.0880, %for.body63 ], [ %weight_sum.0880, %land.rhs ], [ %add84, %for.inc90 ]
  %cplx_sum.0.lcssa = phi double [ 0.000000e+00, %for.body49 ], [ %cplx_sum.0881, %for.body63 ], [ %cplx_sum.0881, %land.rhs ], [ %60, %for.inc90 ]
  br i1 %cmp98893, label %cleanup141, label %for.body105

for.cond95:                                       ; preds = %for.body105
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 1
  %62 = trunc nuw nsw i64 %indvars.iv.next977 to i32
  %conv96 = uitofp nneg i32 %62 to double
  %cmp98 = fcmp oge double %mul56, %conv96
  %cmp101 = icmp ult i64 %indvars.iv976, %indvars.iv980
  %63 = and i1 %cmp101, %cmp98
  br i1 %63, label %for.body105, label %cleanup141

for.body105:                                      ; preds = %cleanup92, %for.cond95
  %indvars.iv976 = phi i64 [ %indvars.iv.next977, %for.cond95 ], [ 0, %cleanup92 ]
  %weight.1896 = phi double [ %mul131, %for.cond95 ], [ 1.000000e+00, %cleanup92 ]
  %cplx_sum.3895 = phi double [ %74, %for.cond95 ], [ %cplx_sum.0.lcssa, %cleanup92 ]
  %weight_sum.3894 = phi double [ %add117, %for.cond95 ], [ %weight_sum.0.lcssa, %cleanup92 ]
  %64 = load ptr, ptr %entry51, align 8
  %65 = sub nsw i64 %indvars.iv980, %indvars.iv976
  %arrayidx110 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %64, i64 %65
  %66 = trunc nuw nsw i64 %indvars.iv976 to i32
  %67 = mul i32 %66, %66
  %mul112 = sub i32 0, %67
  %conv113 = sitofp i32 %mul112 to double
  %div114 = fdiv double %conv113, 2.000000e+02
  %call115 = tail call double @exp(double noundef %div114) #16
  %mul116 = fmul double %weight.1896, %call115
  %add117 = fadd double %weight_sum.3894, %mul116
  %tex_bits.i701 = getelementptr inbounds i8, ptr %arrayidx110, i64 28
  %68 = load i32, ptr %tex_bits.i701, align 4
  %qscale1.i702 = getelementptr inbounds i8, ptr %arrayidx110, i64 16
  %69 = load double, ptr %qscale1.i702, align 8
  %call.i703 = tail call double @pow(double noundef %69, double noundef 1.100000e+00) #16
  %mv_bits.i704 = getelementptr inbounds i8, ptr %arrayidx110, i64 24
  %70 = load i32, ptr %mv_bits.i704, align 8
  %71 = load double, ptr %qscale1.i702, align 8
  %cmp4.i705 = fcmp ogt double %71, 1.000000e+00
  %cond.i706 = select i1 %cmp4.i705, double %71, double 1.000000e+00
  %conv2.i707 = sitofp i32 %70 to double
  %conv.i708 = sitofp i32 %68 to double
  %add.i709 = fadd double %conv.i708, 1.000000e-01
  %call14.i710 = tail call double @pow(double noundef %cond.i706, double noundef 5.000000e-01) #16
  %mul15.i711 = fmul double %call14.i710, %conv2.i707
  %72 = tail call double @llvm.fmuladd.f64(double %add.i709, double %call.i703, double %mul15.i711)
  %misc_bits.i712 = getelementptr inbounds i8, ptr %arrayidx110, i64 32
  %73 = load i32, ptr %misc_bits.i712, align 8
  %conv16.i713 = sitofp i32 %73 to double
  %add17.i714 = fadd double %72, %conv16.i713
  %sub121 = fsub double %add17.i714, %conv16.i713
  %74 = tail call double @llvm.fmuladd.f64(double %mul116, double %sub121, double %cplx_sum.3895)
  %i_count123 = getelementptr inbounds i8, ptr %arrayidx110, i64 68
  %75 = load i32, ptr %i_count123, align 4
  %conv124 = sitofp i32 %75 to float
  %76 = load i32, ptr %nmb, align 8
  %conv126 = sitofp i32 %76 to float
  %div127 = fdiv float %conv124, %conv126
  %conv128 = fpext float %div127 to double
  %square698 = fmul double %conv128, %conv128
  %sub130 = fsub double 1.000000e+00, %square698
  %mul131 = fmul double %weight.1896, %sub130
  %cmp132 = fcmp uge double %mul131, 1.000000e-04
  br i1 %cmp132, label %for.cond95, label %cleanup141

cleanup141:                                       ; preds = %for.body105, %for.cond95, %cleanup92
  %weight_sum.4 = phi double [ %weight_sum.0.lcssa, %cleanup92 ], [ %add117, %for.cond95 ], [ %add117, %for.body105 ]
  %cplx_sum.4 = phi double [ %cplx_sum.0.lcssa, %cleanup92 ], [ %74, %for.cond95 ], [ %74, %for.body105 ]
  %div143 = fdiv double %cplx_sum.4, %weight_sum.4
  %conv144 = fptrunc double %div143 to float
  %blurred_complexity = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %44, i64 %indvars.iv980, i32 14
  store float %conv144, ptr %blurred_complexity, align 8
  %indvars.iv.next981 = add nuw nsw i64 %indvars.iv980, 1
  %77 = load i32, ptr %num_entries, align 8
  %78 = sext i32 %77 to i64
  %cmp46 = icmp slt i64 %indvars.iv.next981, %78
  br i1 %cmp46, label %for.body49, label %for.cond.cleanup48

do.end:                                           ; preds = %for.cond.cleanup48
  %cmp156 = icmp sgt i32 %or, 1
  br i1 %cmp156, label %do.body159, label %if.end170

do.body159:                                       ; preds = %do.end
  %79 = load i32, ptr %num_entries, align 8
  %mul162 = shl i32 %79, 3
  %call164 = tail call ptr @x264_malloc(i32 noundef %mul162) #16
  %tobool165.not = icmp eq ptr %call164, null
  br i1 %tobool165.not, label %cleanup482, label %if.end170

if.end170:                                        ; preds = %do.end, %do.body159
  %blurred_qscale.0 = phi ptr [ %call164, %do.body159 ], [ %call153, %do.end ]
  %80 = load i32, ptr %num_entries, align 8
  %cmp174905 = icmp sgt i32 %80, 0
  br i1 %cmp174905, label %for.body177.lr.ph, label %for.cond.cleanup176

for.body177.lr.ph:                                ; preds = %if.end170
  %entry178 = getelementptr inbounds i8, ptr %0, i64 312
  %last_qscale_for = getelementptr inbounds i8, ptr %0, i64 328
  br label %for.body177

for.cond.cleanup176:                              ; preds = %get_qscale.exit, %if.end170
  %81 = phi i32 [ %80, %if.end170 ], [ %110, %get_qscale.exit ]
  %expected_bits.0.lcssa = phi double [ 1.000000e+00, %if.end170 ], [ %add186, %get_qscale.exit ]
  %conv196 = uitofp i64 %conv10 to double
  %div197 = fdiv double %conv196, %expected_bits.0.lcssa
  %mul198 = fmul double %div197, 1.000000e+04
  %mul200 = fmul double %div197, 0x3E7AD7F29ABCAF48
  %cmp201952 = fcmp ogt double %mul198, %mul200
  br i1 %cmp201952, label %for.body204.lr.ph, label %for.cond.cleanup203

for.body204.lr.ph:                                ; preds = %for.cond.cleanup176
  %last_non_b_pict_type = getelementptr inbounds i8, ptr %0, i64 368
  %accum_p_norm = getelementptr inbounds i8, ptr %0, i64 384
  %entry213 = getelementptr inbounds i8, ptr %0, i64 312
  %last_qscale_for221 = getelementptr inbounds i8, ptr %0, i64 328
  %f_pb_factor.i = getelementptr inbounds i8, ptr %h, i64 540
  %f_ip_factor.i = getelementptr inbounds i8, ptr %h, i64 536
  %cmp277914 = icmp sgt i32 %conv18, -1
  %div282697 = lshr i32 %conv18, 1
  %cmp286 = fcmp oeq float %9, 0.000000e+00
  %mul291 = fmul double %conv13, %conv13
  %wide.trip.count1000 = zext nneg i32 %or to i64
  %wide.trip.count1005 = zext nneg i32 %or to i64
  br label %for.body204

for.body177:                                      ; preds = %for.body177.lr.ph, %get_qscale.exit
  %indvars.iv984 = phi i64 [ 0, %for.body177.lr.ph ], [ %indvars.iv.next985, %get_qscale.exit ]
  %expected_bits.0908 = phi double [ 1.000000e+00, %for.body177.lr.ph ], [ %add186, %get_qscale.exit ]
  %82 = load ptr, ptr %entry178, align 8
  %arrayidx180 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %82, i64 %indvars.iv984
  %h.val699 = load ptr, ptr %rc, align 16
  %i_zones.i.i = getelementptr inbounds i8, ptr %h.val699, i64 888
  %83 = load i32, ptr %i_zones.i.i, align 8
  %cmp4.i.i = icmp slt i32 %83, 1
  br i1 %cmp4.i.i, label %get_zone.exit.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %for.body177
  %zones.i.i = getelementptr inbounds i8, ptr %h.val699, i64 896
  %84 = load ptr, ptr %zones.i.i, align 8
  %85 = zext nneg i32 %83 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %85, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %cleanup.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %arrayidx.i.i = getelementptr inbounds %struct.x264_zone_t, ptr %84, i64 %indvars.iv.next.i.i
  %86 = load i32, ptr %arrayidx.i.i, align 8
  %87 = sext i32 %86 to i64
  %cmp2.not.i.i = icmp slt i64 %indvars.iv984, %87
  br i1 %cmp2.not.i.i, label %cleanup.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %i_end.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i64 4
  %88 = load i32, ptr %i_end.i.i, align 4
  %89 = sext i32 %88 to i64
  %cmp3.not.i.i = icmp sgt i64 %indvars.iv984, %89
  br i1 %cmp3.not.i.i, label %cleanup.i.i, label %get_zone.exit.i

cleanup.i.i:                                      ; preds = %land.lhs.true.i.i, %for.body.i.i
  %cmp.i.i = icmp ult i64 %indvars.iv.i.i, 2
  br i1 %cmp.i.i, label %get_zone.exit.i, label %for.body.i.i

get_zone.exit.i:                                  ; preds = %cleanup.i.i, %land.lhs.true.i.i, %for.body177
  %spec.select.i.i = phi ptr [ null, %for.body177 ], [ %arrayidx.i.i, %land.lhs.true.i.i ], [ null, %cleanup.i.i ]
  %blurred_complexity.i = getelementptr inbounds i8, ptr %arrayidx180, i64 80
  %90 = load float, ptr %blurred_complexity.i, align 8
  %conv.i715 = fpext float %90 to double
  %qcompress.i = getelementptr inbounds i8, ptr %h.val699, i64 40
  %91 = load double, ptr %qcompress.i, align 8
  %sub.i = fsub double 1.000000e+00, %91
  %call1.i = tail call double @pow(double noundef %conv.i715, double noundef %sub.i) #16
  %92 = tail call double @llvm.fabs.f64(double %call1.i)
  %93 = fcmp ueq double %92, 0x7FF0000000000000
  br i1 %93, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %get_zone.exit.i
  %tex_bits.i716 = getelementptr inbounds i8, ptr %arrayidx180, i64 28
  %94 = load i32, ptr %tex_bits.i716, align 4
  %mv_bits.i717 = getelementptr inbounds i8, ptr %arrayidx180, i64 24
  %95 = load i32, ptr %mv_bits.i717, align 8
  %add.i718 = sub i32 0, %95
  %cmp.i = icmp eq i32 %94, %add.i718
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %get_zone.exit.i
  %last_qscale_for.i = getelementptr inbounds i8, ptr %h.val699, i64 328
  %96 = load i32, ptr %arrayidx180, align 8
  %idxprom.i = sext i32 %96 to i64
  %arrayidx.i = getelementptr inbounds [5 x double], ptr %last_qscale_for.i, i64 0, i64 %idxprom.i
  %97 = load double, ptr %arrayidx.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %last_rceq.i = getelementptr inbounds i8, ptr %h.val699, i64 176
  store double %call1.i, ptr %last_rceq.i, align 8
  %last_qscale.i = getelementptr inbounds i8, ptr %h.val699, i64 320
  store double %call1.i, ptr %last_qscale.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %q.0.i = phi double [ %97, %if.then.i ], [ %call1.i, %if.else.i ]
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %get_qscale.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %b_force_qp.i = getelementptr inbounds i8, ptr %spec.select.i.i, i64 8
  %98 = load i32, ptr %b_force_qp.i, align 8
  %tobool4.not.i = icmp eq i32 %98, 0
  br i1 %tobool4.not.i, label %if.else8.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  %i_qp.i = getelementptr inbounds i8, ptr %spec.select.i.i, i64 12
  %99 = load i32, ptr %i_qp.i, align 4
  %conv6.i = sitofp i32 %99 to double
  %sub.i.i = fadd double %conv6.i, -1.200000e+01
  %div.i.i = fdiv double %sub.i.i, 6.000000e+00
  %exp2.i.i = tail call double @exp2(double %div.i.i) #16
  %mul.i.i = fmul double %exp2.i.i, 8.500000e-01
  br label %get_qscale.exit

if.else8.i:                                       ; preds = %if.then3.i
  %f_bitrate_factor.i = getelementptr inbounds i8, ptr %spec.select.i.i, i64 16
  %100 = load float, ptr %f_bitrate_factor.i, align 8
  %conv9.i = fpext float %100 to double
  %div10.i = fdiv double %q.0.i, %conv9.i
  br label %get_qscale.exit

get_qscale.exit:                                  ; preds = %if.end.i, %if.then5.i, %if.else8.i
  %q.1.i = phi double [ %mul.i.i, %if.then5.i ], [ %div10.i, %if.else8.i ], [ %q.0.i, %if.end.i ]
  %101 = load ptr, ptr %entry178, align 8
  %arrayidx184 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %101, i64 %indvars.iv984
  %cmp.i719 = fcmp olt double %q.1.i, 1.000000e-01
  %qscale.addr.0.i = select i1 %cmp.i719, double 1.000000e-01, double %q.1.i
  %tex_bits.i720 = getelementptr inbounds i8, ptr %arrayidx184, i64 28
  %102 = load i32, ptr %tex_bits.i720, align 4
  %qscale1.i721 = getelementptr inbounds i8, ptr %arrayidx184, i64 16
  %103 = load double, ptr %qscale1.i721, align 8
  %div.i = fdiv double %103, %qscale.addr.0.i
  %call.i722 = tail call double @pow(double noundef %div.i, double noundef 1.100000e+00) #16
  %mv_bits.i723 = getelementptr inbounds i8, ptr %arrayidx184, i64 24
  %104 = load i32, ptr %mv_bits.i723, align 8
  %105 = load double, ptr %qscale1.i721, align 8
  %cmp4.i724 = fcmp ogt double %105, 1.000000e+00
  %cond.i725 = select i1 %cmp4.i724, double %105, double 1.000000e+00
  %conv2.i726 = sitofp i32 %104 to double
  %conv.i727 = sitofp i32 %102 to double
  %add.i728 = fadd double %conv.i727, 1.000000e-01
  %cmp7.i = fcmp ogt double %qscale.addr.0.i, 1.000000e+00
  %cond12.i = select i1 %cmp7.i, double %qscale.addr.0.i, double 1.000000e+00
  %div13.i = fdiv double %cond.i725, %cond12.i
  %call14.i729 = tail call double @pow(double noundef %div13.i, double noundef 5.000000e-01) #16
  %mul15.i730 = fmul double %call14.i729, %conv2.i726
  %106 = tail call double @llvm.fmuladd.f64(double %add.i728, double %call.i722, double %mul15.i730)
  %misc_bits.i731 = getelementptr inbounds i8, ptr %arrayidx184, i64 32
  %107 = load i32, ptr %misc_bits.i731, align 8
  %conv16.i732 = sitofp i32 %107 to double
  %add17.i733 = fadd double %106, %conv16.i732
  %add186 = fadd double %expected_bits.0908, %add17.i733
  %108 = load ptr, ptr %entry178, align 8
  %arrayidx189 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %108, i64 %indvars.iv984
  %109 = load i32, ptr %arrayidx189, align 8
  %idxprom190 = sext i32 %109 to i64
  %arrayidx191 = getelementptr inbounds [5 x double], ptr %last_qscale_for, i64 0, i64 %idxprom190
  store double %q.1.i, ptr %arrayidx191, align 8
  %indvars.iv.next985 = add nuw nsw i64 %indvars.iv984, 1
  %110 = load i32, ptr %num_entries, align 8
  %111 = sext i32 %110 to i64
  %cmp174 = icmp slt i64 %indvars.iv.next985, %111
  br i1 %cmp174, label %for.body177, label %for.cond.cleanup176

for.cond.cleanup203:                              ; preds = %for.cond.cleanup337, %for.cond.cleanup176
  tail call void @x264_free(ptr noundef nonnull %call153) #16
  br i1 %cmp156, label %if.then372, label %if.end373

for.body204:                                      ; preds = %for.body204.lr.ph, %for.cond.cleanup337
  %112 = phi i32 [ %81, %for.body204.lr.ph ], [ %194, %for.cond.cleanup337 ]
  %rate_factor.0954 = phi double [ 0.000000e+00, %for.body204.lr.ph ], [ %rate_factor.1, %for.cond.cleanup337 ]
  %step.0953 = phi double [ %mul198, %for.body204.lr.ph ], [ %mul367, %for.cond.cleanup337 ]
  %add205 = fadd double %step.0953, %rate_factor.0954
  store i32 -1, ptr %last_non_b_pict_type, align 8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %accum_p_norm, align 8
  %cmp209910 = icmp sgt i32 %112, 0
  br i1 %cmp209910, label %for.body212, label %for.cond235.preheader

for.cond235.preheader:                            ; preds = %get_qscale.exit786, %for.body204
  %.lcssa867 = phi i32 [ %112, %for.body204 ], [ %135, %get_qscale.exit786 ]
  %113 = zext i32 %.lcssa867 to i64
  br label %for.cond235

for.body212:                                      ; preds = %for.body204, %get_qscale.exit786
  %indvars.iv987 = phi i64 [ %indvars.iv.next988, %get_qscale.exit786 ], [ 0, %for.body204 ]
  %114 = load ptr, ptr %entry213, align 8
  %arrayidx215 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %114, i64 %indvars.iv987
  %h.val = load ptr, ptr %rc, align 16
  %i_zones.i.i734 = getelementptr inbounds i8, ptr %h.val, i64 888
  %115 = load i32, ptr %i_zones.i.i734, align 8
  %cmp4.i.i735 = icmp slt i32 %115, 1
  br i1 %cmp4.i.i735, label %get_zone.exit.i746, label %for.body.lr.ph.i.i736

for.body.lr.ph.i.i736:                            ; preds = %for.body212
  %zones.i.i737 = getelementptr inbounds i8, ptr %h.val, i64 896
  %116 = load ptr, ptr %zones.i.i737, align 8
  %117 = zext nneg i32 %115 to i64
  br label %for.body.i.i738

for.body.i.i738:                                  ; preds = %cleanup.i.i784, %for.body.lr.ph.i.i736
  %indvars.iv.i.i739 = phi i64 [ %117, %for.body.lr.ph.i.i736 ], [ %indvars.iv.next.i.i740, %cleanup.i.i784 ]
  %indvars.iv.next.i.i740 = add nsw i64 %indvars.iv.i.i739, -1
  %arrayidx.i.i741 = getelementptr inbounds %struct.x264_zone_t, ptr %116, i64 %indvars.iv.next.i.i740
  %118 = load i32, ptr %arrayidx.i.i741, align 8
  %119 = sext i32 %118 to i64
  %cmp2.not.i.i742 = icmp slt i64 %indvars.iv987, %119
  br i1 %cmp2.not.i.i742, label %cleanup.i.i784, label %land.lhs.true.i.i743

land.lhs.true.i.i743:                             ; preds = %for.body.i.i738
  %i_end.i.i744 = getelementptr inbounds i8, ptr %arrayidx.i.i741, i64 4
  %120 = load i32, ptr %i_end.i.i744, align 4
  %121 = sext i32 %120 to i64
  %cmp3.not.i.i745 = icmp sgt i64 %indvars.iv987, %121
  br i1 %cmp3.not.i.i745, label %cleanup.i.i784, label %get_zone.exit.i746

cleanup.i.i784:                                   ; preds = %land.lhs.true.i.i743, %for.body.i.i738
  %cmp.i.i785 = icmp ult i64 %indvars.iv.i.i739, 2
  br i1 %cmp.i.i785, label %get_zone.exit.i746, label %for.body.i.i738

get_zone.exit.i746:                               ; preds = %cleanup.i.i784, %land.lhs.true.i.i743, %for.body212
  %spec.select.i.i747 = phi ptr [ null, %for.body212 ], [ %arrayidx.i.i741, %land.lhs.true.i.i743 ], [ null, %cleanup.i.i784 ]
  %blurred_complexity.i748 = getelementptr inbounds i8, ptr %arrayidx215, i64 80
  %122 = load float, ptr %blurred_complexity.i748, align 8
  %conv.i749 = fpext float %122 to double
  %qcompress.i750 = getelementptr inbounds i8, ptr %h.val, i64 40
  %123 = load double, ptr %qcompress.i750, align 8
  %sub.i751 = fsub double 1.000000e+00, %123
  %call1.i752 = tail call double @pow(double noundef %conv.i749, double noundef %sub.i751) #16
  %124 = tail call double @llvm.fabs.f64(double %call1.i752)
  %125 = fcmp ueq double %124, 0x7FF0000000000000
  br i1 %125, label %if.then.i780, label %lor.lhs.false.i753

lor.lhs.false.i753:                               ; preds = %get_zone.exit.i746
  %tex_bits.i754 = getelementptr inbounds i8, ptr %arrayidx215, i64 28
  %126 = load i32, ptr %tex_bits.i754, align 4
  %mv_bits.i755 = getelementptr inbounds i8, ptr %arrayidx215, i64 24
  %127 = load i32, ptr %mv_bits.i755, align 8
  %add.i756 = sub i32 0, %127
  %cmp.i757 = icmp eq i32 %126, %add.i756
  br i1 %cmp.i757, label %if.then.i780, label %if.else.i758

if.then.i780:                                     ; preds = %lor.lhs.false.i753, %get_zone.exit.i746
  %last_qscale_for.i781 = getelementptr inbounds i8, ptr %h.val, i64 328
  %128 = load i32, ptr %arrayidx215, align 8
  %idxprom.i782 = sext i32 %128 to i64
  %arrayidx.i783 = getelementptr inbounds [5 x double], ptr %last_qscale_for.i781, i64 0, i64 %idxprom.i782
  %129 = load double, ptr %arrayidx.i783, align 8
  br label %if.end.i762

if.else.i758:                                     ; preds = %lor.lhs.false.i753
  %last_rceq.i759 = getelementptr inbounds i8, ptr %h.val, i64 176
  store double %call1.i752, ptr %last_rceq.i759, align 8
  %div.i760 = fdiv double %call1.i752, %add205
  %last_qscale.i761 = getelementptr inbounds i8, ptr %h.val, i64 320
  store double %div.i760, ptr %last_qscale.i761, align 8
  br label %if.end.i762

if.end.i762:                                      ; preds = %if.else.i758, %if.then.i780
  %q.0.i763 = phi double [ %129, %if.then.i780 ], [ %div.i760, %if.else.i758 ]
  %tobool.not.i764 = icmp eq ptr %spec.select.i.i747, null
  br i1 %tobool.not.i764, label %get_qscale.exit786, label %if.then3.i765

if.then3.i765:                                    ; preds = %if.end.i762
  %b_force_qp.i766 = getelementptr inbounds i8, ptr %spec.select.i.i747, i64 8
  %130 = load i32, ptr %b_force_qp.i766, align 8
  %tobool4.not.i767 = icmp eq i32 %130, 0
  br i1 %tobool4.not.i767, label %if.else8.i776, label %if.then5.i768

if.then5.i768:                                    ; preds = %if.then3.i765
  %i_qp.i769 = getelementptr inbounds i8, ptr %spec.select.i.i747, i64 12
  %131 = load i32, ptr %i_qp.i769, align 4
  %conv6.i770 = sitofp i32 %131 to double
  %sub.i.i771 = fadd double %conv6.i770, -1.200000e+01
  %div.i.i772 = fdiv double %sub.i.i771, 6.000000e+00
  %exp2.i.i773 = tail call double @exp2(double %div.i.i772) #16
  %mul.i.i774 = fmul double %exp2.i.i773, 8.500000e-01
  br label %get_qscale.exit786

if.else8.i776:                                    ; preds = %if.then3.i765
  %f_bitrate_factor.i777 = getelementptr inbounds i8, ptr %spec.select.i.i747, i64 16
  %132 = load float, ptr %f_bitrate_factor.i777, align 8
  %conv9.i778 = fpext float %132 to double
  %div10.i779 = fdiv double %q.0.i763, %conv9.i778
  br label %get_qscale.exit786

get_qscale.exit786:                               ; preds = %if.end.i762, %if.then5.i768, %if.else8.i776
  %q.1.i775 = phi double [ %mul.i.i774, %if.then5.i768 ], [ %div10.i779, %if.else8.i776 ], [ %q.0.i763, %if.end.i762 ]
  %arrayidx218 = getelementptr inbounds double, ptr %call153, i64 %indvars.iv987
  store double %q.1.i775, ptr %arrayidx218, align 8
  %133 = load ptr, ptr %entry213, align 8
  %arrayidx224 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %133, i64 %indvars.iv987
  %134 = load i32, ptr %arrayidx224, align 8
  %idxprom226 = sext i32 %134 to i64
  %arrayidx227 = getelementptr inbounds [5 x double], ptr %last_qscale_for221, i64 0, i64 %idxprom226
  store double %q.1.i775, ptr %arrayidx227, align 8
  %indvars.iv.next988 = add nuw nsw i64 %indvars.iv987, 1
  %135 = load i32, ptr %num_entries, align 8
  %136 = sext i32 %135 to i64
  %cmp209 = icmp slt i64 %indvars.iv.next988, %136
  br i1 %cmp209, label %for.body212, label %for.cond235.preheader

for.cond235:                                      ; preds = %for.cond235.preheader, %get_diff_limited_q.exit
  %indvars.iv990 = phi i64 [ %113, %for.cond235.preheader ], [ %137, %get_diff_limited_q.exit ]
  %137 = add nsw i64 %indvars.iv990, -1
  %138 = trunc nuw i64 %indvars.iv990 to i32
  %cmp236 = icmp sgt i32 %138, 0
  br i1 %cmp236, label %for.body239, label %for.cond.cleanup238

for.cond.cleanup238:                              ; preds = %for.cond235
  %.pre = load i32, ptr %num_entries, align 8
  br i1 %cmp156, label %for.cond264.preheader, label %if.end331

for.cond264.preheader:                            ; preds = %for.cond.cleanup238
  %cmp266921 = icmp sgt i32 %.pre, 0
  br i1 %cmp266921, label %for.body269.lr.ph, label %for.cond.cleanup337

for.body269.lr.ph:                                ; preds = %for.cond264.preheader
  br i1 %cmp277914, label %for.body269.us, label %for.body269

for.body269.us:                                   ; preds = %for.body269.lr.ph, %for.cond276.for.cond.cleanup279_crit_edge.us
  %139 = phi i32 [ %151, %for.cond276.for.cond.cleanup279_crit_edge.us ], [ %.pre, %for.body269.lr.ph ]
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %for.cond276.for.cond.cleanup279_crit_edge.us ], [ 0, %for.body269.lr.ph ]
  %140 = load ptr, ptr %entry213, align 8
  %arrayidx273.us = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %140, i64 %indvars.iv1007
  %141 = trunc i64 %indvars.iv1007 to i32
  %142 = sub i32 %141, %div282697
  br i1 %cmp286, label %for.body280.us.us, label %for.body280.us924.preheader

for.body280.us924.preheader:                      ; preds = %for.body269.us
  %143 = trunc nuw nsw i64 %indvars.iv1007 to i32
  br label %for.body280.us924

for.body280.us924:                                ; preds = %for.body280.us924.preheader, %cleanup315.us939
  %indvars.iv997 = phi i64 [ 0, %for.body280.us924.preheader ], [ %indvars.iv.next998, %cleanup315.us939 ]
  %sum.0916.us926 = phi double [ 0.000000e+00, %for.body280.us924.preheader ], [ %sum.1.us941, %cleanup315.us939 ]
  %q274.0915.us927 = phi double [ 0.000000e+00, %for.body280.us924.preheader ], [ %q274.1.us940, %cleanup315.us939 ]
  %144 = trunc nuw nsw i64 %indvars.iv997 to i32
  %sub283.us928 = add i32 %142, %144
  %sub284.us = sub nsw i32 %sub283.us928, %143
  %conv285.us = sitofp i32 %sub284.us to double
  %fneg.us = fneg double %conv285.us
  %mul290.us = fmul double %fneg.us, %conv285.us
  %div292.us = fdiv double %mul290.us, %mul291
  %call293.us = tail call double @exp(double noundef %div292.us) #16
  %cmp295.us929 = icmp slt i32 %sub283.us928, 0
  br i1 %cmp295.us929, label %cleanup315.us939, label %lor.lhs.false.us930

lor.lhs.false.us930:                              ; preds = %for.body280.us924
  %145 = load i32, ptr %num_entries, align 8
  %cmp298.not.us931 = icmp slt i32 %sub283.us928, %145
  br i1 %cmp298.not.us931, label %if.end301.us932, label %cleanup315.us939

if.end301.us932:                                  ; preds = %lor.lhs.false.us930
  %146 = load i32, ptr %arrayidx273.us, align 8
  %147 = load ptr, ptr %entry213, align 8
  %idxprom304.us933 = zext nneg i32 %sub283.us928 to i64
  %arrayidx305.us934 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %147, i64 %idxprom304.us933
  %148 = load i32, ptr %arrayidx305.us934, align 8
  %cmp307.not.us935 = icmp eq i32 %146, %148
  br i1 %cmp307.not.us935, label %if.end310.us936, label %cleanup315.us939

if.end310.us936:                                  ; preds = %if.end301.us932
  %arrayidx312.us937 = getelementptr inbounds double, ptr %call153, i64 %idxprom304.us933
  %149 = load double, ptr %arrayidx312.us937, align 8
  %150 = tail call double @llvm.fmuladd.f64(double %149, double %call293.us, double %q274.0915.us927)
  %add314.us938 = fadd double %sum.0916.us926, %call293.us
  br label %cleanup315.us939

cleanup315.us939:                                 ; preds = %if.end310.us936, %if.end301.us932, %lor.lhs.false.us930, %for.body280.us924
  %q274.1.us940 = phi double [ %150, %if.end310.us936 ], [ %q274.0915.us927, %lor.lhs.false.us930 ], [ %q274.0915.us927, %for.body280.us924 ], [ %q274.0915.us927, %if.end301.us932 ]
  %sum.1.us941 = phi double [ %add314.us938, %if.end310.us936 ], [ %sum.0916.us926, %lor.lhs.false.us930 ], [ %sum.0916.us926, %for.body280.us924 ], [ %sum.0916.us926, %if.end301.us932 ]
  %indvars.iv.next998 = add nuw nsw i64 %indvars.iv997, 1
  %exitcond1001.not = icmp eq i64 %indvars.iv.next998, %wide.trip.count1000
  br i1 %exitcond1001.not, label %for.cond276.for.cond.cleanup279_crit_edge.us, label %for.body280.us924

for.cond276.for.cond.cleanup279_crit_edge.us:     ; preds = %cleanup315.us939, %cleanup315.us.us
  %.us-phi.us = phi double [ %q274.1.us.us, %cleanup315.us.us ], [ %q274.1.us940, %cleanup315.us939 ]
  %.us-phi920.us = phi double [ %sum.1.us.us, %cleanup315.us.us ], [ %sum.1.us941, %cleanup315.us939 ]
  %div324.us = fdiv double %.us-phi.us, %.us-phi920.us
  %arrayidx326.us = getelementptr inbounds double, ptr %blurred_qscale.0, i64 %indvars.iv1007
  store double %div324.us, ptr %arrayidx326.us, align 8
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 1
  %151 = load i32, ptr %num_entries, align 8
  %152 = sext i32 %151 to i64
  %cmp266.us = icmp slt i64 %indvars.iv.next1008, %152
  br i1 %cmp266.us, label %for.body269.us, label %if.end331

for.body280.us.us:                                ; preds = %for.body269.us, %cleanup315.us.us
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003, %cleanup315.us.us ], [ 0, %for.body269.us ]
  %sum.0916.us.us = phi double [ %sum.1.us.us, %cleanup315.us.us ], [ 0.000000e+00, %for.body269.us ]
  %q274.0915.us.us = phi double [ %q274.1.us.us, %cleanup315.us.us ], [ 0.000000e+00, %for.body269.us ]
  %153 = trunc nuw nsw i64 %indvars.iv1002 to i32
  %sub283.us.us = add i32 %142, %153
  %cmp295.us.us = icmp sgt i32 %sub283.us.us, -1
  %cmp298.not.us.us = icmp slt i32 %sub283.us.us, %139
  %or.cond = select i1 %cmp295.us.us, i1 %cmp298.not.us.us, i1 false
  br i1 %or.cond, label %if.end301.us.us, label %cleanup315.us.us

if.end301.us.us:                                  ; preds = %for.body280.us.us
  %154 = load i32, ptr %arrayidx273.us, align 8
  %idxprom304.us.us = zext nneg i32 %sub283.us.us to i64
  %arrayidx305.us.us = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %140, i64 %idxprom304.us.us
  %155 = load i32, ptr %arrayidx305.us.us, align 8
  %cmp307.not.us.us = icmp eq i32 %154, %155
  br i1 %cmp307.not.us.us, label %if.end310.us.us, label %cleanup315.us.us

if.end310.us.us:                                  ; preds = %if.end301.us.us
  %arrayidx312.us.us = getelementptr inbounds double, ptr %call153, i64 %idxprom304.us.us
  %156 = load double, ptr %arrayidx312.us.us, align 8
  %157 = fadd double %156, %q274.0915.us.us
  %add314.us.us = fadd double %sum.0916.us.us, 1.000000e+00
  br label %cleanup315.us.us

cleanup315.us.us:                                 ; preds = %if.end310.us.us, %if.end301.us.us, %for.body280.us.us
  %q274.1.us.us = phi double [ %157, %if.end310.us.us ], [ %q274.0915.us.us, %for.body280.us.us ], [ %q274.0915.us.us, %if.end301.us.us ]
  %sum.1.us.us = phi double [ %add314.us.us, %if.end310.us.us ], [ %sum.0916.us.us, %for.body280.us.us ], [ %sum.0916.us.us, %if.end301.us.us ]
  %indvars.iv.next1003 = add nuw nsw i64 %indvars.iv1002, 1
  %exitcond1006.not = icmp eq i64 %indvars.iv.next1003, %wide.trip.count1005
  br i1 %exitcond1006.not, label %for.cond276.for.cond.cleanup279_crit_edge.us, label %for.body280.us.us

for.body239:                                      ; preds = %for.cond235
  %158 = load ptr, ptr %entry213, align 8
  %arrayidx242 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %158, i64 %137
  %arrayidx244 = getelementptr inbounds double, ptr %call153, i64 %137
  %159 = load double, ptr %arrayidx244, align 8
  %160 = load ptr, ptr %rc, align 16
  %161 = load i32, ptr %arrayidx242, align 8
  %last_qscale_for.i787 = getelementptr inbounds i8, ptr %160, i64 328
  %162 = load double, ptr %last_qscale_for.i787, align 8
  %last_non_b_pict_type.i = getelementptr inbounds i8, ptr %160, i64 368
  %163 = load i32, ptr %last_non_b_pict_type.i, align 8
  %idxprom.i788 = sext i32 %163 to i64
  %arrayidx3.i = getelementptr inbounds [5 x double], ptr %last_qscale_for.i787, i64 0, i64 %idxprom.i788
  %164 = load double, ptr %arrayidx3.i, align 8
  %cmp.i789 = icmp eq i32 %161, 2
  br i1 %cmp.i789, label %if.then.i794, label %if.else29.i

if.then.i794:                                     ; preds = %for.body239
  %accum_p_qp.i = getelementptr inbounds i8, ptr %160, i64 376
  %165 = load double, ptr %accum_p_qp.i, align 8
  %accum_p_norm.i = getelementptr inbounds i8, ptr %160, i64 384
  %166 = load double, ptr %accum_p_norm.i, align 8
  %div.i795 = fdiv double %165, %166
  %sub.i.i796 = fadd double %div.i795, -1.200000e+01
  %div.i.i797 = fdiv double %sub.i.i796, 6.000000e+00
  %exp2.i.i798 = tail call double @exp2(double %div.i.i797) #16
  %mul.i.i799 = fmul double %exp2.i.i798, 8.500000e-01
  %167 = load float, ptr %f_ip_factor.i, align 8
  %168 = tail call float @llvm.fabs.f32(float %167)
  %169 = fpext float %168 to double
  %170 = load double, ptr %accum_p_norm.i, align 8
  %cmp6.i = fcmp ugt double %170, 0.000000e+00
  br i1 %cmp6.i, label %if.else.i800, label %if.end58.i

if.else.i800:                                     ; preds = %if.then.i794
  %cmp12.i = fcmp olt float %167, 0.000000e+00
  br i1 %cmp12.i, label %if.then14.i, label %if.else16.i

if.then14.i:                                      ; preds = %if.else.i800
  %div15.i = fdiv double %159, %169
  br label %if.end58.i

if.else16.i:                                      ; preds = %if.else.i800
  %cmp18.i = fcmp ult double %170, 1.000000e+00
  br i1 %cmp18.i, label %if.else22.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.else16.i
  %div21.i = fdiv double %mul.i.i799, %169
  br label %if.end58.i

if.else22.i:                                      ; preds = %if.else16.i
  %mul.i = fmul double %mul.i.i799, %170
  %div24.i = fdiv double %mul.i, %169
  %sub.i801 = fsub double 1.000000e+00, %170
  %171 = tail call double @llvm.fmuladd.f64(double %sub.i801, double %159, double %div24.i)
  br label %if.end58.i

if.else29.i:                                      ; preds = %for.body239
  switch i32 %161, label %if.end58.i [
    i32 1, label %if.then32.i
    i32 0, label %land.lhs.true.i
  ]

if.then32.i:                                      ; preds = %if.else29.i
  %172 = load float, ptr %f_pb_factor.i, align 4
  %cmp35.i = fcmp ogt float %172, 0.000000e+00
  %q.addr.1.i = select i1 %cmp35.i, double %164, double %159
  %kept_as_ref.i = getelementptr inbounds i8, ptr %arrayidx242, i64 8
  %173 = load i32, ptr %kept_as_ref.i, align 8
  %tobool.not.i793 = icmp eq i32 %173, 0
  br i1 %tobool.not.i793, label %if.then39.i, label %if.end58.i

if.then39.i:                                      ; preds = %if.then32.i
  %174 = tail call float @llvm.fabs.f32(float %172)
  %175 = fpext float %174 to double
  %mul44.i = fmul double %q.addr.1.i, %175
  br label %if.end58.i

land.lhs.true.i:                                  ; preds = %if.else29.i
  %cmp50.i = icmp eq i32 %163, 0
  br i1 %cmp50.i, label %land.lhs.true52.i, label %if.end58.i

land.lhs.true52.i:                                ; preds = %land.lhs.true.i
  %tex_bits.i792 = getelementptr inbounds i8, ptr %arrayidx242, i64 28
  %176 = load i32, ptr %tex_bits.i792, align 4
  %cmp53.i = icmp eq i32 %176, 0
  br i1 %cmp53.i, label %if.then55.i, label %if.end58.i

if.then55.i:                                      ; preds = %land.lhs.true52.i
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then55.i, %land.lhs.true52.i, %land.lhs.true.i, %if.then39.i, %if.then32.i, %if.else29.i, %if.else22.i, %if.then20.i, %if.then14.i, %if.then.i794
  %q.addr.2.i = phi double [ %q.addr.1.i, %if.then32.i ], [ %mul44.i, %if.then39.i ], [ %162, %if.then55.i ], [ %159, %land.lhs.true52.i ], [ %159, %land.lhs.true.i ], [ %div15.i, %if.then14.i ], [ %div21.i, %if.then20.i ], [ %171, %if.else22.i ], [ %159, %if.then.i794 ], [ %159, %if.else29.i ]
  %177 = load i32, ptr %last_non_b_pict_type.i, align 8
  %cmp60.i = icmp eq i32 %177, %161
  br i1 %cmp60.i, label %land.lhs.true62.i, label %if.end58.if.end83_crit_edge.i

if.end58.if.end83_crit_edge.i:                    ; preds = %if.end58.i
  %.pre.i = sext i32 %161 to i64
  br label %if.end83.i

land.lhs.true62.i:                                ; preds = %if.end58.i
  br i1 %cmp.i789, label %lor.lhs.false.i791, label %if.then67.i

lor.lhs.false.i791:                               ; preds = %land.lhs.true62.i
  %last_accum_p_norm.i = getelementptr inbounds i8, ptr %160, i64 392
  %178 = load double, ptr %last_accum_p_norm.i, align 8
  %cmp65.i = fcmp olt double %178, 1.000000e+00
  br i1 %cmp65.i, label %if.then67.i, label %if.end91.thread188.i

if.end91.thread188.i:                             ; preds = %lor.lhs.false.i791
  %arrayidx86182.i = getelementptr inbounds i8, ptr %160, i64 344
  store double %q.addr.2.i, ptr %arrayidx86182.i, align 8
  store i32 2, ptr %last_non_b_pict_type.i, align 8
  br label %if.then94.i

if.then67.i:                                      ; preds = %lor.lhs.false.i791, %land.lhs.true62.i
  %idxprom69.i = sext i32 %161 to i64
  %arrayidx70.i = getelementptr inbounds [5 x double], ptr %last_qscale_for.i787, i64 0, i64 %idxprom69.i
  %179 = load double, ptr %arrayidx70.i, align 8
  %lstep.i = getelementptr inbounds i8, ptr %160, i64 480
  %180 = load double, ptr %lstep.i, align 8
  %mul71.i = fmul double %179, %180
  %div73.i = fdiv double %179, %180
  %cmp74.i = fcmp ogt double %q.addr.2.i, %mul71.i
  br i1 %cmp74.i, label %if.end83.i, label %if.else77.i

if.else77.i:                                      ; preds = %if.then67.i
  %cmp78.i = fcmp olt double %q.addr.2.i, %div73.i
  br i1 %cmp78.i, label %if.then80.i, label %if.end83.i

if.then80.i:                                      ; preds = %if.else77.i
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then80.i, %if.else77.i, %if.then67.i, %if.end58.if.end83_crit_edge.i
  %idxprom85.pre-phi.i = phi i64 [ %.pre.i, %if.end58.if.end83_crit_edge.i ], [ %idxprom69.i, %if.then80.i ], [ %idxprom69.i, %if.else77.i ], [ %idxprom69.i, %if.then67.i ]
  %q.addr.4.i = phi double [ %q.addr.2.i, %if.end58.if.end83_crit_edge.i ], [ %div73.i, %if.then80.i ], [ %q.addr.2.i, %if.else77.i ], [ %mul71.i, %if.then67.i ]
  %arrayidx86.i = getelementptr inbounds [5 x double], ptr %last_qscale_for.i787, i64 0, i64 %idxprom85.pre-phi.i
  store double %q.addr.4.i, ptr %arrayidx86.i, align 8
  %cmp87.not.i = icmp eq i32 %161, 1
  br i1 %cmp87.not.i, label %get_diff_limited_q.exit, label %if.end91.i

if.end91.i:                                       ; preds = %if.end83.i
  store i32 %161, ptr %last_non_b_pict_type.i, align 8
  br i1 %cmp.i789, label %if.then94.i, label %if.end99.i

if.then94.i:                                      ; preds = %if.end91.i, %if.end91.thread188.i
  %q.addr.4184190.i = phi double [ %q.addr.2.i, %if.end91.thread188.i ], [ %q.addr.4.i, %if.end91.i ]
  %accum_p_norm95.i = getelementptr inbounds i8, ptr %160, i64 384
  %181 = load double, ptr %accum_p_norm95.i, align 8
  %last_accum_p_norm96.i = getelementptr inbounds i8, ptr %160, i64 392
  store double %181, ptr %last_accum_p_norm96.i, align 8
  %accum_p_qp98.i = getelementptr inbounds i8, ptr %160, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %accum_p_qp98.i, i8 0, i64 16, i1 false)
  br label %get_diff_limited_q.exit

if.end99.i:                                       ; preds = %if.end91.i
  %cmp100.i = icmp eq i32 %161, 0
  br i1 %cmp100.i, label %if.then102.i, label %get_diff_limited_q.exit

if.then102.i:                                     ; preds = %if.end99.i
  %i_count.i = getelementptr inbounds i8, ptr %arrayidx242, i64 68
  %182 = load i32, ptr %i_count.i, align 4
  %conv103.i = sitofp i32 %182 to float
  %nmb.i = getelementptr inbounds i8, ptr %160, i64 48
  %183 = load i32, ptr %nmb.i, align 8
  %conv104.i = sitofp i32 %183 to float
  %div105.i = fdiv float %conv103.i, %conv104.i
  %conv106.i = fpext float %div105.i to double
  %square.i = fmul double %conv106.i, %conv106.i
  %sub108.i = fsub double 1.000000e+00, %square.i
  %conv109.i = fptrunc double %sub108.i to float
  %conv110.i = fpext float %conv109.i to double
  %div.i179.i = fdiv double %q.addr.4.i, 8.500000e-01
  %call.i.i = tail call double @log2(double noundef %div.i179.i) #16
  %184 = tail call double @llvm.fmuladd.f64(double %call.i.i, double 6.000000e+00, double 1.200000e+01)
  %accum_p_qp112.i = getelementptr inbounds i8, ptr %160, i64 376
  %185 = load <2 x double>, ptr %accum_p_qp112.i, align 8
  %186 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %184, i64 0
  %187 = fadd <2 x double> %186, %185
  %188 = insertelement <2 x double> poison, double %conv110.i, i64 0
  %189 = shufflevector <2 x double> %188, <2 x double> poison, <2 x i32> zeroinitializer
  %190 = fmul <2 x double> %187, %189
  store <2 x double> %190, ptr %accum_p_qp112.i, align 8
  br label %get_diff_limited_q.exit

get_diff_limited_q.exit:                          ; preds = %if.end83.i, %if.then94.i, %if.end99.i, %if.then102.i
  %q.addr.4185187193.i = phi double [ %q.addr.4.i, %if.then102.i ], [ %q.addr.4.i, %if.end99.i ], [ %q.addr.4184190.i, %if.then94.i ], [ %q.addr.4.i, %if.end83.i ]
  store double %q.addr.4185187193.i, ptr %arrayidx244, align 8
  %cmp250 = fcmp ult double %q.addr.4185187193.i, 0.000000e+00
  br i1 %cmp250, label %cond.false, label %for.cond235

cond.false:                                       ; preds = %get_diff_limited_q.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.9, i32 noundef 2511, ptr noundef nonnull @__PRETTY_FUNCTION__.init_pass2) #18
  unreachable

for.body269:                                      ; preds = %for.body269.lr.ph, %for.body269
  %indvars.iv994 = phi i64 [ %indvars.iv.next995, %for.body269 ], [ 0, %for.body269.lr.ph ]
  %arrayidx326 = getelementptr inbounds double, ptr %blurred_qscale.0, i64 %indvars.iv994
  store double 0x7FF8000000000000, ptr %arrayidx326, align 8
  %indvars.iv.next995 = add nuw nsw i64 %indvars.iv994, 1
  %191 = load i32, ptr %num_entries, align 8
  %192 = sext i32 %191 to i64
  %cmp266 = icmp slt i64 %indvars.iv.next995, %192
  br i1 %cmp266, label %for.body269, label %if.end331

if.end331:                                        ; preds = %for.body269, %for.cond276.for.cond.cleanup279_crit_edge.us, %for.cond.cleanup238
  %193 = phi i32 [ %.pre, %for.cond.cleanup238 ], [ %151, %for.cond276.for.cond.cleanup279_crit_edge.us ], [ %191, %for.body269 ]
  %cmp335948 = icmp sgt i32 %193, 0
  br i1 %cmp335948, label %for.body338, label %for.cond.cleanup337

for.cond.cleanup337:                              ; preds = %cond.end352, %for.cond264.preheader, %if.end331
  %194 = phi i32 [ %193, %if.end331 ], [ %.pre, %for.cond264.preheader ], [ %204, %cond.end352 ]
  %expected_bits.1.lcssa = phi double [ 0.000000e+00, %if.end331 ], [ 0.000000e+00, %for.cond264.preheader ], [ %add355, %cond.end352 ]
  %cmp361 = fcmp ogt double %expected_bits.1.lcssa, %conv196
  %sub364 = fsub double %add205, %step.0953
  %rate_factor.1 = select i1 %cmp361, double %sub364, double %add205
  %mul367 = fmul double %step.0953, 5.000000e-01
  %cmp201 = fcmp ogt double %mul367, %mul200
  br i1 %cmp201, label %for.body204, label %for.cond.cleanup203

for.body338:                                      ; preds = %if.end331, %cond.end352
  %indvars.iv1011 = phi i64 [ %indvars.iv.next1012, %cond.end352 ], [ 0, %if.end331 ]
  %expected_bits.1949 = phi double [ %add355, %cond.end352 ], [ 0.000000e+00, %if.end331 ]
  %195 = load ptr, ptr %entry213, align 8
  %arrayidx342 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %195, i64 %indvars.iv1011
  %196 = load i32, ptr %arrayidx342, align 8
  %arrayidx345 = getelementptr inbounds double, ptr %blurred_qscale.0, i64 %indvars.iv1011
  %197 = load double, ptr %arrayidx345, align 8
  %call346 = tail call fastcc double @clip_qscale(ptr noundef %h, i32 noundef %196, double noundef %197)
  %new_qscale = getelementptr inbounds i8, ptr %arrayidx342, i64 56
  store double %call346, ptr %new_qscale, align 8
  %cmp348 = fcmp ult double %call346, 0.000000e+00
  br i1 %cmp348, label %cond.false351, label %cond.end352

cond.false351:                                    ; preds = %for.body338
  tail call void @__assert_fail(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.9, i32 noundef 2544, ptr noundef nonnull @__PRETTY_FUNCTION__.init_pass2) #18
  unreachable

cond.end352:                                      ; preds = %for.body338
  %cmp.i802 = fcmp olt double %call346, 1.000000e-01
  %qscale.addr.0.i803 = select i1 %cmp.i802, double 1.000000e-01, double %call346
  %tex_bits.i804 = getelementptr inbounds i8, ptr %arrayidx342, i64 28
  %198 = load i32, ptr %tex_bits.i804, align 4
  %qscale1.i805 = getelementptr inbounds i8, ptr %arrayidx342, i64 16
  %199 = load double, ptr %qscale1.i805, align 8
  %div.i806 = fdiv double %199, %qscale.addr.0.i803
  %call.i807 = tail call double @pow(double noundef %div.i806, double noundef 1.100000e+00) #16
  %mv_bits.i808 = getelementptr inbounds i8, ptr %arrayidx342, i64 24
  %200 = load i32, ptr %mv_bits.i808, align 8
  %201 = load double, ptr %qscale1.i805, align 8
  %cmp4.i809 = fcmp ogt double %201, 1.000000e+00
  %cond.i810 = select i1 %cmp4.i809, double %201, double 1.000000e+00
  %conv2.i811 = sitofp i32 %200 to double
  %conv.i812 = sitofp i32 %198 to double
  %add.i813 = fadd double %conv.i812, 1.000000e-01
  %cmp7.i814 = fcmp ogt double %qscale.addr.0.i803, 1.000000e+00
  %cond12.i815 = select i1 %cmp7.i814, double %qscale.addr.0.i803, double 1.000000e+00
  %div13.i816 = fdiv double %cond.i810, %cond12.i815
  %call14.i817 = tail call double @pow(double noundef %div13.i816, double noundef 5.000000e-01) #16
  %mul15.i818 = fmul double %call14.i817, %conv2.i811
  %202 = tail call double @llvm.fmuladd.f64(double %add.i813, double %call.i807, double %mul15.i818)
  %misc_bits.i819 = getelementptr inbounds i8, ptr %arrayidx342, i64 32
  %203 = load i32, ptr %misc_bits.i819, align 8
  %conv16.i820 = sitofp i32 %203 to double
  %add17.i821 = fadd double %202, %conv16.i820
  %add355 = fadd double %expected_bits.1949, %add17.i821
  %indvars.iv.next1012 = add nuw nsw i64 %indvars.iv1011, 1
  %204 = load i32, ptr %num_entries, align 8
  %205 = sext i32 %204 to i64
  %cmp335 = icmp slt i64 %indvars.iv.next1012, %205
  br i1 %cmp335, label %for.body338, label %for.cond.cleanup337

if.then372:                                       ; preds = %for.cond.cleanup203
  tail call void @x264_free(ptr noundef nonnull %blurred_qscale.0) #16
  br label %if.end373

if.end373:                                        ; preds = %if.then372, %for.cond.cleanup203
  %b_vbv = getelementptr inbounds i8, ptr %0, i64 8
  %206 = load i32, ptr %b_vbv, align 8
  %tobool374.not = icmp eq i32 %206, 0
  br i1 %tobool374.not, label %if.end381, label %if.then375

if.then375:                                       ; preds = %if.end373
  %207 = load ptr, ptr %rc, align 16
  %i_qp_min.i = getelementptr inbounds i8, ptr %h, i64 496
  %208 = load i32, ptr %i_qp_min.i, align 8
  %conv.i823 = sitofp i32 %208 to double
  %sub.i.i824 = fadd double %conv.i823, -1.200000e+01
  %div.i.i825 = fdiv double %sub.i.i824, 6.000000e+00
  %exp2.i.i826 = tail call double @exp2(double %div.i.i825) #16
  %mul.i.i827 = fmul double %exp2.i.i826, 8.500000e-01
  %i_qp_max.i = getelementptr inbounds i8, ptr %h, i64 500
  %209 = load i32, ptr %i_qp_max.i, align 4
  %conv4.i = sitofp i32 %209 to double
  %sub.i132.i = fadd double %conv4.i, -1.200000e+01
  %div.i133.i = fdiv double %sub.i132.i, 6.000000e+00
  %exp2.i134.i = tail call double @exp2(double %div.i133.i) #16
  %mul.i135.i = fmul double %exp2.i134.i, 8.500000e-01
  %num_entries.i = getelementptr inbounds i8, ptr %207, i64 304
  %210 = load i32, ptr %num_entries.i, align 8
  %add.i828 = shl i32 %210, 3
  %mul.i829 = add i32 %add.i828, 8
  %call8.i = tail call ptr @x264_malloc(i32 noundef %mul.i829) #16
  %tobool.not.i830 = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i830, label %cleanup482, label %do.end.i

do.end.i:                                         ; preds = %if.then375
  %incdec.ptr.i = getelementptr inbounds i8, ptr %call8.i, i64 8
  %buffer_size37.i = getelementptr inbounds i8, ptr %207, i64 104
  %f_vbv_buffer_init40.i = getelementptr inbounds i8, ptr %h, i64 532
  %mul55.i = fmul double %conv196, 0x3FEFD70A3D70A3D7
  br label %do.body9.i

do.body9.i:                                       ; preds = %land.rhs58.i, %do.end.i
  %expected_bits.0.i = phi double [ 0.000000e+00, %do.end.i ], [ %expected_bits.0.lcssa.i.i, %land.rhs58.i ]
  %tobool10.i = fcmp une double %expected_bits.0.i, 0.000000e+00
  br i1 %tobool10.i, label %if.then11.i, label %if.end36.i

if.then11.i:                                      ; preds = %do.body9.i
  %div.i832 = fdiv double %expected_bits.0.i, %conv196
  %cmp.i833 = fcmp olt double %div.i832, 0x3FEFF7CED916872B
  %cond.i834 = select i1 %cmp.i833, double %div.i832, double 0x3FEFF7CED916872B
  %cmp14.i = fcmp ogt double %cond.i834, 9.000000e-01
  %cond27.i = select i1 %cmp14.i, double %cond.i834, double 9.000000e-01
  %211 = load double, ptr %buffer_size37.i, align 8
  %212 = load float, ptr %f_vbv_buffer_init40.i, align 4
  %conv30.i = fpext float %212 to double
  %mul31.i = fmul double %211, %conv30.i
  store double %mul31.i, ptr %call8.i, align 8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %fix_underflow.exit.i, %if.then11.i
  %storemerge298.i = phi i32 [ 0, %if.then11.i ], [ %end.0.lcssa.i.i, %fix_underflow.exit.i ]
  %213 = load ptr, ptr %rc, align 16
  %buffer_size.i.i = getelementptr inbounds i8, ptr %213, i64 104
  %214 = load double, ptr %buffer_size.i.i, align 8
  %mul.i136.i = fmul double %214, 1.000000e-01
  %mul2.i.i = fmul double %214, 9.000000e-01
  %num_entries.i.i = getelementptr inbounds i8, ptr %213, i64 304
  %215 = load i32, ptr %num_entries.i.i, align 8
  %cmp83.i.i = icmp slt i32 %storemerge298.i, %215
  br i1 %cmp83.i.i, label %for.body.lr.ph.i.i835, label %if.end36.i

for.body.lr.ph.i.i835:                            ; preds = %land.rhs.i
  %216 = sext i32 %storemerge298.i to i64
  %gep.i = getelementptr double, ptr %call8.i, i64 %216
  %217 = load double, ptr %gep.i, align 8
  %entry5.i.i = getelementptr inbounds i8, ptr %213, i64 312
  %vbv_max_rate.i.i = getelementptr inbounds i8, ptr %213, i64 136
  br label %for.body.i.i836

for.body.i.i836:                                  ; preds = %for.inc.i.i, %for.body.lr.ph.i.i835
  %indvars.iv.i.i837 = phi i64 [ %216, %for.body.lr.ph.i.i835 ], [ %indvars.iv.next.i.i839, %for.inc.i.i ]
  %end.086.i.i = phi i32 [ -1, %for.body.lr.ph.i.i835 ], [ %end.1.i.i, %for.inc.i.i ]
  %start.085.i.i = phi i32 [ -1, %for.body.lr.ph.i.i835 ], [ %start.1.i.i, %for.inc.i.i ]
  %fill.084.i.i = phi double [ %217, %for.body.lr.ph.i.i835 ], [ %cond5.i.i.i, %for.inc.i.i ]
  %218 = load ptr, ptr %entry5.i.i, align 8
  %arrayidx7.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %218, i64 %indvars.iv.i.i837
  %i_cpb_duration.i.i = getelementptr inbounds i8, ptr %arrayidx7.i.i, i64 164
  %219 = load i32, ptr %i_cpb_duration.i.i, align 4
  %conv.i.i = sitofp i32 %219 to double
  %220 = load double, ptr %vbv_max_rate.i.i, align 8
  %mul8.i.i = fmul double %220, %conv.i.i
  %221 = load ptr, ptr %sps, align 16
  %i_num_units_in_tick.i.i = getelementptr inbounds i8, ptr %221, i64 1192
  %222 = load i32, ptr %i_num_units_in_tick.i.i, align 4
  %conv9.i.i = uitofp i32 %222 to double
  %mul10.i.i = fmul double %mul8.i.i, %conv9.i.i
  %i_time_scale.i.i = getelementptr inbounds i8, ptr %221, i64 1196
  %223 = load i32, ptr %i_time_scale.i.i, align 4
  %conv13.i.i = uitofp i32 %223 to double
  %div.i137.i = fdiv double %mul10.i.i, %conv13.i.i
  %new_qscale.i.i = getelementptr inbounds i8, ptr %arrayidx7.i.i, i64 56
  %224 = load double, ptr %new_qscale.i.i, align 8
  %cmp.i.i.i = fcmp olt double %224, 1.000000e-01
  %qscale.addr.0.i.i.i = select i1 %cmp.i.i.i, double 1.000000e-01, double %224
  %tex_bits.i.i.i = getelementptr inbounds i8, ptr %arrayidx7.i.i, i64 28
  %225 = load i32, ptr %tex_bits.i.i.i, align 4
  %qscale1.i.i.i = getelementptr inbounds i8, ptr %arrayidx7.i.i, i64 16
  %226 = load double, ptr %qscale1.i.i.i, align 8
  %div.i.i.i = fdiv double %226, %qscale.addr.0.i.i.i
  %call.i.i.i = tail call double @pow(double noundef %div.i.i.i, double noundef 1.100000e+00) #16
  %mv_bits.i.i.i = getelementptr inbounds i8, ptr %arrayidx7.i.i, i64 24
  %227 = load i32, ptr %mv_bits.i.i.i, align 8
  %228 = load double, ptr %qscale1.i.i.i, align 8
  %cmp4.i.i.i = fcmp ogt double %228, 1.000000e+00
  %cond.i.i.i = select i1 %cmp4.i.i.i, double %228, double 1.000000e+00
  %conv2.i.i.i = sitofp i32 %227 to double
  %conv.i.i.i = sitofp i32 %225 to double
  %add.i.i.i = fadd double %conv.i.i.i, 1.000000e-01
  %cmp7.i.i.i = fcmp ogt double %qscale.addr.0.i.i.i, 1.000000e+00
  %cond12.i.i.i = select i1 %cmp7.i.i.i, double %qscale.addr.0.i.i.i, double 1.000000e+00
  %div13.i.i.i = fdiv double %cond.i.i.i, %cond12.i.i.i
  %call14.i.i.i = tail call double @pow(double noundef %div13.i.i.i, double noundef 5.000000e-01) #16
  %mul15.i.i.i = fmul double %call14.i.i.i, %conv2.i.i.i
  %229 = tail call double @llvm.fmuladd.f64(double %add.i.i.i, double %call.i.i.i, double %mul15.i.i.i)
  %misc_bits.i.i.i = getelementptr inbounds i8, ptr %arrayidx7.i.i, i64 32
  %230 = load i32, ptr %misc_bits.i.i.i, align 8
  %conv16.i.i.i = sitofp i32 %230 to double
  %add17.i.i.i = fadd double %229, %conv16.i.i.i
  %sub20.i.i = fsub double %div.i137.i, %add17.i.i.i
  %231 = fadd double %fill.084.i.i, %sub20.i.i
  %232 = load double, ptr %buffer_size.i.i, align 8
  %cmp.i81.i.i = fcmp olt double %231, 0.000000e+00
  %cmp1.i.i.i = fcmp ogt double %231, %232
  %cond.i82.i.i = select i1 %cmp1.i.i.i, double %232, double %231
  %cond5.i.i.i = select i1 %cmp.i81.i.i, double 0.000000e+00, double %cond.i82.i.i
  %arrayidx25.i.i = getelementptr inbounds double, ptr %incdec.ptr.i, i64 %indvars.iv.i.i837
  store double %cond5.i.i.i, ptr %arrayidx25.i.i, align 8
  %cmp26.i.i = fcmp ole double %cond5.i.i.i, %mul.i136.i
  %233 = icmp eq i64 %indvars.iv.i.i837, 0
  %or.cond.i.i = or i1 %233, %cmp26.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i836
  %cmp30.i.i = icmp sgt i32 %end.086.i.i, -1
  %234 = trunc nsw i64 %indvars.iv.i.i837 to i32
  br i1 %cmp30.i.i, label %find_underflow.exit.i, label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i836
  %cmp33.i.i = fcmp oge double %cond5.i.i.i, %mul2.i.i
  %cmp35.i.i = icmp sgt i32 %start.085.i.i, -1
  %or.cond51.i.i = select i1 %cmp33.i.i, i1 %cmp35.i.i, i1 false
  %235 = trunc nsw i64 %indvars.iv.i.i837 to i32
  %spec.select.i.i838 = select i1 %or.cond51.i.i, i32 %235, i32 %end.086.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %start.1.i.i = phi i32 [ %234, %if.then.i.i ], [ %start.085.i.i, %if.else.i.i ]
  %end.1.i.i = phi i32 [ %end.086.i.i, %if.then.i.i ], [ %spec.select.i.i838, %if.else.i.i ]
  %indvars.iv.next.i.i839 = add nsw i64 %indvars.iv.i.i837, 1
  %236 = load i32, ptr %num_entries.i.i, align 8
  %237 = sext i32 %236 to i64
  %cmp.i.i840 = icmp slt i64 %indvars.iv.next.i.i839, %237
  br i1 %cmp.i.i840, label %for.body.i.i836, label %find_underflow.exit.i

find_underflow.exit.i:                            ; preds = %for.inc.i.i, %if.then.i.i
  %start.0.lcssa.i.i = phi i32 [ %start.085.i.i, %if.then.i.i ], [ %start.1.i.i, %for.inc.i.i ]
  %end.0.lcssa.i.i = phi i32 [ %end.086.i.i, %if.then.i.i ], [ %end.1.i.i, %for.inc.i.i ]
  %cmp40.i.i = icmp slt i32 %start.0.lcssa.i.i, 0
  %cmp42.i.i = icmp slt i32 %end.0.lcssa.i.i, 0
  %.not.i = select i1 %cmp40.i.i, i1 true, i1 %cmp42.i.i
  br i1 %.not.i, label %if.end36.i, label %while.body.i

while.body.i:                                     ; preds = %find_underflow.exit.i
  %cmp.i138.i = icmp ne i32 %start.0.lcssa.i.i, 0
  %inc.i.i = zext i1 %cmp.i138.i to i32
  %spec.select.i139.i = add nuw nsw i32 %start.0.lcssa.i.i, %inc.i.i
  %cmp1.not1.i.i = icmp ugt i32 %spec.select.i139.i, %end.0.lcssa.i.i
  br i1 %cmp1.not1.i.i, label %if.end36.i, label %for.body.lr.ph.i140.i

for.body.lr.ph.i140.i:                            ; preds = %while.body.i
  %h.val130.i = load ptr, ptr %rc, align 16
  %entry2.i.i = getelementptr inbounds i8, ptr %h.val130.i, i64 312
  %238 = zext nneg i32 %start.0.lcssa.i.i to i64
  %239 = zext i1 %cmp.i138.i to i64
  %240 = add nuw nsw i64 %239, %238
  %241 = add nuw i32 %end.0.lcssa.i.i, 1
  br label %for.body.i141.i

for.body.i141.i:                                  ; preds = %for.body.i141.i, %for.body.lr.ph.i140.i
  %indvars.iv.i142.i = phi i64 [ %240, %for.body.lr.ph.i140.i ], [ %indvars.iv.next.i149.i, %for.body.i141.i ]
  %adjusted.02.i.i = phi i1 [ false, %for.body.lr.ph.i140.i ], [ %244, %for.body.i141.i ]
  %242 = load ptr, ptr %entry2.i.i, align 8
  %new_qscale.i143.i = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %242, i64 %indvars.iv.i142.i, i32 9
  %243 = load double, ptr %new_qscale.i143.i, align 8
  %cmp.i.i144.i = fcmp olt double %243, %mul.i.i827
  %cmp1.i.i145.i = fcmp ogt double %243, %mul.i135.i
  %cond.i.i146.i = select i1 %cmp1.i.i145.i, double %mul.i135.i, double %243
  %cond5.i.i147.i = select i1 %cmp.i.i144.i, double %mul.i.i827, double %cond.i.i146.i
  %mul.i148.i = fmul double %cond27.i, %cond5.i.i147.i
  %cmp.i23.i.i = fcmp olt double %mul.i148.i, %mul.i.i827
  %cmp1.i24.i.i = fcmp ogt double %mul.i148.i, %mul.i135.i
  %cond.i25.i.i = select i1 %cmp1.i24.i.i, double %mul.i135.i, double %mul.i148.i
  %cond5.i26.i.i = select i1 %cmp.i23.i.i, double %mul.i.i827, double %cond.i25.i.i
  store double %cond5.i26.i.i, ptr %new_qscale.i143.i, align 8
  %cmp8.i.i = fcmp une double %cond5.i26.i.i, %cond5.i.i147.i
  %244 = select i1 %adjusted.02.i.i, i1 true, i1 %cmp8.i.i
  %indvars.iv.next.i149.i = add nuw nsw i64 %indvars.iv.i142.i, 1
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i149.i to i32
  %exitcond.not.i.i = icmp eq i32 %241, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %fix_underflow.exit.i, label %for.body.i141.i

fix_underflow.exit.i:                             ; preds = %for.body.i141.i
  br i1 %244, label %land.rhs.i, label %if.end36.i

if.end36.i:                                       ; preds = %fix_underflow.exit.i, %while.body.i, %find_underflow.exit.i, %land.rhs.i, %do.body9.i
  %245 = load double, ptr %buffer_size37.i, align 8
  %246 = load float, ptr %f_vbv_buffer_init40.i, align 4
  %conv41.i = fpext float %246 to double
  %sub.i831 = fsub double 1.000000e+00, %conv41.i
  %mul42.i = fmul double %245, %sub.i831
  store double %mul42.i, ptr %call8.i, align 8
  br label %land.rhs46.i

land.rhs46.i:                                     ; preds = %fix_underflow.exit249.i, %if.end36.i
  %t0.0301.i = phi i32 [ 0, %if.end36.i ], [ %start.0.lcssa.i156.i, %fix_underflow.exit249.i ]
  %247 = load ptr, ptr %rc, align 16
  %buffer_size.i151.i = getelementptr inbounds i8, ptr %247, i64 104
  %248 = load double, ptr %buffer_size.i151.i, align 8
  %mul.i152.i = fmul double %248, 1.000000e-01
  %mul2.i153.i = fmul double %248, 9.000000e-01
  %num_entries.i154.i = getelementptr inbounds i8, ptr %247, i64 304
  %249 = load i32, ptr %num_entries.i154.i, align 8
  %cmp83.i155.i = icmp slt i32 %t0.0301.i, %249
  br i1 %cmp83.i155.i, label %for.body.lr.ph.i161.i, label %while.end52.i

for.body.lr.ph.i161.i:                            ; preds = %land.rhs46.i
  %250 = sext i32 %t0.0301.i to i64
  %gep300.i = getelementptr double, ptr %call8.i, i64 %250
  %251 = load double, ptr %gep300.i, align 8
  %entry5.i163.i = getelementptr inbounds i8, ptr %247, i64 312
  %vbv_max_rate.i164.i = getelementptr inbounds i8, ptr %247, i64 136
  br label %for.body.i166.i

for.body.i166.i:                                  ; preds = %for.inc.i215.i, %for.body.lr.ph.i161.i
  %indvars.iv.i167.i = phi i64 [ %250, %for.body.lr.ph.i161.i ], [ %indvars.iv.next.i218.i, %for.inc.i215.i ]
  %end.086.i168.i = phi i32 [ -1, %for.body.lr.ph.i161.i ], [ %end.1.i217.i, %for.inc.i215.i ]
  %start.085.i169.i = phi i32 [ -1, %for.body.lr.ph.i161.i ], [ %start.1.i216.i, %for.inc.i215.i ]
  %fill.084.i170.i = phi double [ %251, %for.body.lr.ph.i161.i ], [ %cond5.i.i206.i, %for.inc.i215.i ]
  %252 = load ptr, ptr %entry5.i163.i, align 8
  %arrayidx7.i171.i = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %252, i64 %indvars.iv.i167.i
  %i_cpb_duration.i172.i = getelementptr inbounds i8, ptr %arrayidx7.i171.i, i64 164
  %253 = load i32, ptr %i_cpb_duration.i172.i, align 4
  %conv.i173.i = sitofp i32 %253 to double
  %254 = load double, ptr %vbv_max_rate.i164.i, align 8
  %mul8.i174.i = fmul double %254, %conv.i173.i
  %255 = load ptr, ptr %sps, align 16
  %i_num_units_in_tick.i175.i = getelementptr inbounds i8, ptr %255, i64 1192
  %256 = load i32, ptr %i_num_units_in_tick.i175.i, align 4
  %conv9.i176.i = uitofp i32 %256 to double
  %mul10.i177.i = fmul double %mul8.i174.i, %conv9.i176.i
  %i_time_scale.i178.i = getelementptr inbounds i8, ptr %255, i64 1196
  %257 = load i32, ptr %i_time_scale.i178.i, align 4
  %conv13.i179.i = uitofp i32 %257 to double
  %div.i180.i = fdiv double %mul10.i177.i, %conv13.i179.i
  %new_qscale.i181.i = getelementptr inbounds i8, ptr %arrayidx7.i171.i, i64 56
  %258 = load double, ptr %new_qscale.i181.i, align 8
  %cmp.i.i182.i = fcmp olt double %258, 1.000000e-01
  %qscale.addr.0.i.i183.i = select i1 %cmp.i.i182.i, double 1.000000e-01, double %258
  %tex_bits.i.i184.i = getelementptr inbounds i8, ptr %arrayidx7.i171.i, i64 28
  %259 = load i32, ptr %tex_bits.i.i184.i, align 4
  %qscale1.i.i185.i = getelementptr inbounds i8, ptr %arrayidx7.i171.i, i64 16
  %260 = load double, ptr %qscale1.i.i185.i, align 8
  %div.i.i186.i = fdiv double %260, %qscale.addr.0.i.i183.i
  %call.i.i187.i = tail call double @pow(double noundef %div.i.i186.i, double noundef 1.100000e+00) #16
  %mv_bits.i.i188.i = getelementptr inbounds i8, ptr %arrayidx7.i171.i, i64 24
  %261 = load i32, ptr %mv_bits.i.i188.i, align 8
  %262 = load double, ptr %qscale1.i.i185.i, align 8
  %cmp4.i.i189.i = fcmp ogt double %262, 1.000000e+00
  %cond.i.i190.i = select i1 %cmp4.i.i189.i, double %262, double 1.000000e+00
  %conv2.i.i191.i = sitofp i32 %261 to double
  %conv.i.i192.i = sitofp i32 %259 to double
  %add.i.i193.i = fadd double %conv.i.i192.i, 1.000000e-01
  %cmp7.i.i194.i = fcmp ogt double %qscale.addr.0.i.i183.i, 1.000000e+00
  %cond12.i.i195.i = select i1 %cmp7.i.i194.i, double %qscale.addr.0.i.i183.i, double 1.000000e+00
  %div13.i.i196.i = fdiv double %cond.i.i190.i, %cond12.i.i195.i
  %call14.i.i197.i = tail call double @pow(double noundef %div13.i.i196.i, double noundef 5.000000e-01) #16
  %mul15.i.i198.i = fmul double %call14.i.i197.i, %conv2.i.i191.i
  %263 = tail call double @llvm.fmuladd.f64(double %add.i.i193.i, double %call.i.i187.i, double %mul15.i.i198.i)
  %misc_bits.i.i199.i = getelementptr inbounds i8, ptr %arrayidx7.i171.i, i64 32
  %264 = load i32, ptr %misc_bits.i.i199.i, align 8
  %conv16.i.i200.i = sitofp i32 %264 to double
  %add17.i.i201.i = fadd double %263, %conv16.i.i200.i
  %sub20.i202.i = fsub double %div.i180.i, %add17.i.i201.i
  %265 = tail call double @llvm.fmuladd.f64(double %sub20.i202.i, double -1.000000e+00, double %fill.084.i170.i)
  %266 = load double, ptr %buffer_size.i151.i, align 8
  %cmp.i81.i203.i = fcmp olt double %265, 0.000000e+00
  %cmp1.i.i204.i = fcmp ogt double %265, %266
  %cond.i82.i205.i = select i1 %cmp1.i.i204.i, double %266, double %265
  %cond5.i.i206.i = select i1 %cmp.i81.i203.i, double 0.000000e+00, double %cond.i82.i205.i
  %arrayidx25.i207.i = getelementptr inbounds double, ptr %incdec.ptr.i, i64 %indvars.iv.i167.i
  store double %cond5.i.i206.i, ptr %arrayidx25.i207.i, align 8
  %cmp26.i208.i = fcmp ole double %cond5.i.i206.i, %mul.i152.i
  %267 = icmp eq i64 %indvars.iv.i167.i, 0
  %or.cond.i209.i = or i1 %267, %cmp26.i208.i
  br i1 %or.cond.i209.i, label %if.then.i220.i, label %if.else.i210.i

if.then.i220.i:                                   ; preds = %for.body.i166.i
  %cmp30.i221.i = icmp sgt i32 %end.086.i168.i, -1
  %268 = trunc nsw i64 %indvars.iv.i167.i to i32
  br i1 %cmp30.i221.i, label %find_underflow.exit222.i, label %for.inc.i215.i

if.else.i210.i:                                   ; preds = %for.body.i166.i
  %cmp33.i211.i = fcmp oge double %cond5.i.i206.i, %mul2.i153.i
  %cmp35.i212.i = icmp sgt i32 %start.085.i169.i, -1
  %or.cond51.i213.i = select i1 %cmp33.i211.i, i1 %cmp35.i212.i, i1 false
  %269 = trunc nsw i64 %indvars.iv.i167.i to i32
  %spec.select.i214.i = select i1 %or.cond51.i213.i, i32 %269, i32 %end.086.i168.i
  br label %for.inc.i215.i

for.inc.i215.i:                                   ; preds = %if.else.i210.i, %if.then.i220.i
  %start.1.i216.i = phi i32 [ %268, %if.then.i220.i ], [ %start.085.i169.i, %if.else.i210.i ]
  %end.1.i217.i = phi i32 [ %end.086.i168.i, %if.then.i220.i ], [ %spec.select.i214.i, %if.else.i210.i ]
  %indvars.iv.next.i218.i = add nsw i64 %indvars.iv.i167.i, 1
  %270 = load i32, ptr %num_entries.i154.i, align 8
  %271 = sext i32 %270 to i64
  %cmp.i219.i = icmp slt i64 %indvars.iv.next.i218.i, %271
  br i1 %cmp.i219.i, label %for.body.i166.i, label %find_underflow.exit222.i

find_underflow.exit222.i:                         ; preds = %for.inc.i215.i, %if.then.i220.i
  %start.0.lcssa.i156.i = phi i32 [ %start.085.i169.i, %if.then.i220.i ], [ %start.1.i216.i, %for.inc.i215.i ]
  %end.0.lcssa.i157.i = phi i32 [ %end.086.i168.i, %if.then.i220.i ], [ %end.1.i217.i, %for.inc.i215.i ]
  %cmp40.i158.i = icmp slt i32 %start.0.lcssa.i156.i, 0
  %cmp42.i159.i = icmp slt i32 %end.0.lcssa.i157.i, 0
  %.not296.i = select i1 %cmp40.i158.i, i1 true, i1 %cmp42.i159.i
  br i1 %.not296.i, label %while.end52.i, label %while.body50.i

while.body50.i:                                   ; preds = %find_underflow.exit222.i
  %cmp.i223.i = icmp ne i32 %start.0.lcssa.i156.i, 0
  %inc.i224.i = zext i1 %cmp.i223.i to i32
  %spec.select.i225.i = add nuw nsw i32 %start.0.lcssa.i156.i, %inc.i224.i
  %cmp1.not1.i226.i = icmp ugt i32 %spec.select.i225.i, %end.0.lcssa.i157.i
  br i1 %cmp1.not1.i226.i, label %while.end52.i, label %for.body.lr.ph.i227.i

for.body.lr.ph.i227.i:                            ; preds = %while.body50.i
  %h.val.i = load ptr, ptr %rc, align 16
  %entry2.i228.i = getelementptr inbounds i8, ptr %h.val.i, i64 312
  %272 = zext nneg i32 %start.0.lcssa.i156.i to i64
  %273 = zext i1 %cmp.i223.i to i64
  %274 = add nuw nsw i64 %273, %272
  %275 = add nuw i32 %end.0.lcssa.i157.i, 1
  br label %for.body.i229.i

for.body.i229.i:                                  ; preds = %for.body.i229.i, %for.body.lr.ph.i227.i
  %indvars.iv.i230.i = phi i64 [ %274, %for.body.lr.ph.i227.i ], [ %indvars.iv.next.i243.i, %for.body.i229.i ]
  %adjusted.02.i231.i = phi i1 [ false, %for.body.lr.ph.i227.i ], [ %278, %for.body.i229.i ]
  %276 = load ptr, ptr %entry2.i228.i, align 8
  %new_qscale.i232.i = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %276, i64 %indvars.iv.i230.i, i32 9
  %277 = load double, ptr %new_qscale.i232.i, align 8
  %cmp.i.i233.i = fcmp olt double %277, %mul.i.i827
  %cmp1.i.i234.i = fcmp ogt double %277, %mul.i135.i
  %cond.i.i235.i = select i1 %cmp1.i.i234.i, double %mul.i135.i, double %277
  %cond5.i.i236.i = select i1 %cmp.i.i233.i, double %mul.i.i827, double %cond.i.i235.i
  %mul.i237.i = fmul double %cond5.i.i236.i, 1.001000e+00
  %cmp.i23.i238.i = fcmp olt double %mul.i237.i, %mul.i.i827
  %cmp1.i24.i239.i = fcmp ogt double %mul.i237.i, %mul.i135.i
  %cond.i25.i240.i = select i1 %cmp1.i24.i239.i, double %mul.i135.i, double %mul.i237.i
  %cond5.i26.i241.i = select i1 %cmp.i23.i238.i, double %mul.i.i827, double %cond.i25.i240.i
  store double %cond5.i26.i241.i, ptr %new_qscale.i232.i, align 8
  %cmp8.i242.i = fcmp une double %cond5.i26.i241.i, %cond5.i.i236.i
  %278 = select i1 %adjusted.02.i231.i, i1 true, i1 %cmp8.i242.i
  %indvars.iv.next.i243.i = add nuw nsw i64 %indvars.iv.i230.i, 1
  %lftr.wideiv.i244.i = trunc i64 %indvars.iv.next.i243.i to i32
  %exitcond.not.i245.i = icmp eq i32 %275, %lftr.wideiv.i244.i
  br i1 %exitcond.not.i245.i, label %fix_underflow.exit249.i, label %for.body.i229.i

fix_underflow.exit249.i:                          ; preds = %for.body.i229.i
  br i1 %278, label %land.rhs46.i, label %while.end52.i

while.end52.i:                                    ; preds = %fix_underflow.exit249.i, %while.body50.i, %find_underflow.exit222.i, %land.rhs46.i
  %tobool45.not.lcssa.i = phi i1 [ false, %land.rhs46.i ], [ true, %fix_underflow.exit249.i ], [ false, %find_underflow.exit222.i ], [ true, %while.body50.i ]
  %h.val131.i = load ptr, ptr %rc, align 16
  %num_entries.i250.i = getelementptr inbounds i8, ptr %h.val131.i, i64 304
  %279 = load i32, ptr %num_entries.i250.i, align 8
  %cmp1.i.i = icmp sgt i32 %279, 0
  br i1 %cmp1.i.i, label %for.body.lr.ph.i251.i, label %count_expected_bits.exit.i

for.body.lr.ph.i251.i:                            ; preds = %while.end52.i
  %entry1.i.i = getelementptr inbounds i8, ptr %h.val131.i, i64 312
  br label %for.body.i252.i

for.body.i252.i:                                  ; preds = %for.body.i252.i, %for.body.lr.ph.i251.i
  %indvars.iv.i253.i = phi i64 [ 0, %for.body.lr.ph.i251.i ], [ %indvars.iv.next.i277.i, %for.body.i252.i ]
  %expected_bits.03.i.i = phi double [ 0.000000e+00, %for.body.lr.ph.i251.i ], [ %add.i.i, %for.body.i252.i ]
  %280 = load ptr, ptr %entry1.i.i, align 8
  %arrayidx.i254.i = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %280, i64 %indvars.iv.i253.i
  %conv.i255.i = fptoui double %expected_bits.03.i.i to i64
  %expected_bits2.i.i = getelementptr inbounds i8, ptr %arrayidx.i254.i, i64 40
  store i64 %conv.i255.i, ptr %expected_bits2.i.i, align 8
  %new_qscale.i256.i = getelementptr inbounds i8, ptr %arrayidx.i254.i, i64 56
  %281 = load double, ptr %new_qscale.i256.i, align 8
  %cmp.i.i257.i = fcmp olt double %281, 1.000000e-01
  %qscale.addr.0.i.i258.i = select i1 %cmp.i.i257.i, double 1.000000e-01, double %281
  %tex_bits.i.i259.i = getelementptr inbounds i8, ptr %arrayidx.i254.i, i64 28
  %282 = load i32, ptr %tex_bits.i.i259.i, align 4
  %qscale1.i.i260.i = getelementptr inbounds i8, ptr %arrayidx.i254.i, i64 16
  %283 = load double, ptr %qscale1.i.i260.i, align 8
  %div.i.i261.i = fdiv double %283, %qscale.addr.0.i.i258.i
  %call.i.i262.i = tail call double @pow(double noundef %div.i.i261.i, double noundef 1.100000e+00) #16
  %mv_bits.i.i263.i = getelementptr inbounds i8, ptr %arrayidx.i254.i, i64 24
  %284 = load i32, ptr %mv_bits.i.i263.i, align 8
  %285 = load double, ptr %qscale1.i.i260.i, align 8
  %cmp4.i.i264.i = fcmp ogt double %285, 1.000000e+00
  %cond.i.i265.i = select i1 %cmp4.i.i264.i, double %285, double 1.000000e+00
  %conv2.i.i266.i = sitofp i32 %284 to double
  %conv.i.i267.i = sitofp i32 %282 to double
  %add.i.i268.i = fadd double %conv.i.i267.i, 1.000000e-01
  %cmp7.i.i269.i = fcmp ogt double %qscale.addr.0.i.i258.i, 1.000000e+00
  %cond12.i.i270.i = select i1 %cmp7.i.i269.i, double %qscale.addr.0.i.i258.i, double 1.000000e+00
  %div13.i.i271.i = fdiv double %cond.i.i265.i, %cond12.i.i270.i
  %call14.i.i272.i = tail call double @pow(double noundef %div13.i.i271.i, double noundef 5.000000e-01) #16
  %mul15.i.i273.i = fmul double %call14.i.i272.i, %conv2.i.i266.i
  %286 = tail call double @llvm.fmuladd.f64(double %add.i.i268.i, double %call.i.i262.i, double %mul15.i.i273.i)
  %misc_bits.i.i274.i = getelementptr inbounds i8, ptr %arrayidx.i254.i, i64 32
  %287 = load i32, ptr %misc_bits.i.i274.i, align 8
  %conv16.i.i275.i = sitofp i32 %287 to double
  %add17.i.i276.i = fadd double %286, %conv16.i.i275.i
  %add.i.i = fadd double %expected_bits.03.i.i, %add17.i.i276.i
  %indvars.iv.next.i277.i = add nuw nsw i64 %indvars.iv.i253.i, 1
  %288 = load i32, ptr %num_entries.i250.i, align 8
  %289 = sext i32 %288 to i64
  %cmp.i278.i = icmp slt i64 %indvars.iv.next.i277.i, %289
  br i1 %cmp.i278.i, label %for.body.i252.i, label %count_expected_bits.exit.i

count_expected_bits.exit.i:                       ; preds = %for.body.i252.i, %while.end52.i
  %expected_bits.0.lcssa.i.i = phi double [ 0.000000e+00, %while.end52.i ], [ %add.i.i, %for.body.i252.i ]
  %cmp56.i = fcmp olt double %expected_bits.0.lcssa.i.i, %mul55.i
  br i1 %cmp56.i, label %land.rhs58.i, label %do.end66.i

land.rhs58.i:                                     ; preds = %count_expected_bits.exit.i
  %add59.i = fadd double %expected_bits.0.lcssa.i.i, 5.000000e-01
  %conv60.i = fptosi double %add59.i to i64
  %add61.i = fadd double %expected_bits.0.i, 5.000000e-01
  %conv62.i = fptosi double %add61.i to i64
  %cmp63.i = icmp sgt i64 %conv60.i, %conv62.i
  br i1 %cmp63.i, label %do.body9.i, label %do.end66.i

do.end66.i:                                       ; preds = %land.rhs58.i, %count_expected_bits.exit.i
  br i1 %tobool45.not.lcssa.i, label %if.then68.i, label %if.end69.i

if.then68.i:                                      ; preds = %do.end66.i
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 1, ptr noundef nonnull @.str.96) #16
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then68.i, %do.end66.i
  %290 = load i32, ptr %num_entries.i, align 8
  %cmp71303.i = icmp sgt i32 %290, 0
  br i1 %cmp71303.i, label %for.body.lr.ph.i, label %vbv_pass2.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end69.i
  %entry76.i = getelementptr inbounds i8, ptr %207, i64 312
  br label %for.body.i

vbv_pass2.exit.thread:                            ; preds = %for.body.i, %if.end69.i
  tail call void @x264_free(ptr noundef nonnull %call8.i) #16
  br label %if.end381

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %291 = load double, ptr %buffer_size37.i, align 8
  %arrayidx74.i = getelementptr inbounds double, ptr %incdec.ptr.i, i64 %indvars.iv.i
  %292 = load double, ptr %arrayidx74.i, align 8
  %sub75.i = fsub double %291, %292
  %293 = load ptr, ptr %entry76.i, align 8
  %expected_vbv.i = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %293, i64 %indvars.iv.i, i32 8
  store double %sub75.i, ptr %expected_vbv.i, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %294 = load i32, ptr %num_entries.i, align 8
  %295 = sext i32 %294 to i64
  %cmp71.i = icmp slt i64 %indvars.iv.next.i, %295
  br i1 %cmp71.i, label %for.body.i, label %vbv_pass2.exit.thread

if.end381:                                        ; preds = %vbv_pass2.exit.thread, %if.end373
  %h.val700 = load ptr, ptr %rc, align 16
  %num_entries.i841 = getelementptr inbounds i8, ptr %h.val700, i64 304
  %296 = load i32, ptr %num_entries.i841, align 8
  %cmp1.i = icmp sgt i32 %296, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i843, label %count_expected_bits.exit

for.body.lr.ph.i843:                              ; preds = %if.end381
  %entry1.i = getelementptr inbounds i8, ptr %h.val700, i64 312
  br label %for.body.i844

for.body.i844:                                    ; preds = %for.body.i844, %for.body.lr.ph.i843
  %indvars.iv.i845 = phi i64 [ 0, %for.body.lr.ph.i843 ], [ %indvars.iv.next.i855, %for.body.i844 ]
  %expected_bits.03.i = phi double [ 0.000000e+00, %for.body.lr.ph.i843 ], [ %add.i854, %for.body.i844 ]
  %297 = load ptr, ptr %entry1.i, align 8
  %arrayidx.i846 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %297, i64 %indvars.iv.i845
  %conv.i847 = fptoui double %expected_bits.03.i to i64
  %expected_bits2.i = getelementptr inbounds i8, ptr %arrayidx.i846, i64 40
  store i64 %conv.i847, ptr %expected_bits2.i, align 8
  %new_qscale.i = getelementptr inbounds i8, ptr %arrayidx.i846, i64 56
  %298 = load double, ptr %new_qscale.i, align 8
  %cmp.i.i848 = fcmp olt double %298, 1.000000e-01
  %qscale.addr.0.i.i = select i1 %cmp.i.i848, double 1.000000e-01, double %298
  %tex_bits.i.i = getelementptr inbounds i8, ptr %arrayidx.i846, i64 28
  %299 = load i32, ptr %tex_bits.i.i, align 4
  %qscale1.i.i = getelementptr inbounds i8, ptr %arrayidx.i846, i64 16
  %300 = load double, ptr %qscale1.i.i, align 8
  %div.i.i849 = fdiv double %300, %qscale.addr.0.i.i
  %call.i.i850 = tail call double @pow(double noundef %div.i.i849, double noundef 1.100000e+00) #16
  %mv_bits.i.i = getelementptr inbounds i8, ptr %arrayidx.i846, i64 24
  %301 = load i32, ptr %mv_bits.i.i, align 8
  %302 = load double, ptr %qscale1.i.i, align 8
  %cmp4.i.i851 = fcmp ogt double %302, 1.000000e+00
  %cond.i.i = select i1 %cmp4.i.i851, double %302, double 1.000000e+00
  %conv2.i.i = sitofp i32 %301 to double
  %conv.i.i852 = sitofp i32 %299 to double
  %add.i.i853 = fadd double %conv.i.i852, 1.000000e-01
  %cmp7.i.i = fcmp ogt double %qscale.addr.0.i.i, 1.000000e+00
  %cond12.i.i = select i1 %cmp7.i.i, double %qscale.addr.0.i.i, double 1.000000e+00
  %div13.i.i = fdiv double %cond.i.i, %cond12.i.i
  %call14.i.i = tail call double @pow(double noundef %div13.i.i, double noundef 5.000000e-01) #16
  %mul15.i.i = fmul double %call14.i.i, %conv2.i.i
  %303 = tail call double @llvm.fmuladd.f64(double %add.i.i853, double %call.i.i850, double %mul15.i.i)
  %misc_bits.i.i = getelementptr inbounds i8, ptr %arrayidx.i846, i64 32
  %304 = load i32, ptr %misc_bits.i.i, align 8
  %conv16.i.i = sitofp i32 %304 to double
  %add17.i.i = fadd double %303, %conv16.i.i
  %add.i854 = fadd double %expected_bits.03.i, %add17.i.i
  %indvars.iv.next.i855 = add nuw nsw i64 %indvars.iv.i845, 1
  %305 = load i32, ptr %num_entries.i841, align 8
  %306 = sext i32 %305 to i64
  %cmp.i856 = icmp slt i64 %indvars.iv.next.i855, %306
  br i1 %cmp.i856, label %for.body.i844, label %count_expected_bits.exit

count_expected_bits.exit:                         ; preds = %for.body.i844, %if.end381
  %expected_bits.0.lcssa.i = phi double [ 0.000000e+00, %if.end381 ], [ %add.i854, %for.body.i844 ]
  %div384 = fdiv double %expected_bits.0.lcssa.i, %conv196
  %sub385 = fadd double %div384, -1.000000e+00
  %307 = tail call double @llvm.fabs.f64(double %sub385)
  %cmp386 = fcmp ogt double %307, 1.000000e-02
  br i1 %cmp386, label %for.cond390.preheader, label %cleanup482

for.cond390.preheader:                            ; preds = %count_expected_bits.exit
  %308 = load i32, ptr %num_entries, align 8
  %cmp392955 = icmp sgt i32 %308, 0
  br i1 %cmp392955, label %for.body395.lr.ph, label %for.cond.cleanup394

for.body395.lr.ph:                                ; preds = %for.cond390.preheader
  %entry396 = getelementptr inbounds i8, ptr %0, i64 312
  %309 = load ptr, ptr %entry396, align 8
  %wide.trip.count1017 = zext nneg i32 %308 to i64
  %xtraiter1065 = and i64 %wide.trip.count1017, 3
  %310 = icmp ult i32 %308, 4
  br i1 %310, label %for.cond.cleanup394.loopexit.unr-lcssa, label %for.body395.lr.ph.new

for.body395.lr.ph.new:                            ; preds = %for.body395.lr.ph
  %unroll_iter1069 = and i64 %wide.trip.count1017, 2147483644
  br label %for.body395

for.cond.cleanup394.loopexit.unr-lcssa:           ; preds = %for.body395, %for.body395.lr.ph
  %add400.lcssa.ph = phi double [ poison, %for.body395.lr.ph ], [ %add400.3, %for.body395 ]
  %indvars.iv1014.unr = phi i64 [ 0, %for.body395.lr.ph ], [ %indvars.iv.next1015.3, %for.body395 ]
  %avgq.0956.unr = phi double [ 0.000000e+00, %for.body395.lr.ph ], [ %add400.3, %for.body395 ]
  %lcmp.mod1067.not = icmp eq i64 %xtraiter1065, 0
  br i1 %lcmp.mod1067.not, label %for.cond.cleanup394, label %for.body395.epil

for.body395.epil:                                 ; preds = %for.cond.cleanup394.loopexit.unr-lcssa, %for.body395.epil
  %indvars.iv1014.epil = phi i64 [ %indvars.iv.next1015.epil, %for.body395.epil ], [ %indvars.iv1014.unr, %for.cond.cleanup394.loopexit.unr-lcssa ]
  %avgq.0956.epil = phi double [ %add400.epil, %for.body395.epil ], [ %avgq.0956.unr, %for.cond.cleanup394.loopexit.unr-lcssa ]
  %epil.iter1066 = phi i64 [ %epil.iter1066.next, %for.body395.epil ], [ 0, %for.cond.cleanup394.loopexit.unr-lcssa ]
  %new_qscale399.epil = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %309, i64 %indvars.iv1014.epil, i32 9
  %311 = load double, ptr %new_qscale399.epil, align 8
  %add400.epil = fadd double %avgq.0956.epil, %311
  %indvars.iv.next1015.epil = add nuw nsw i64 %indvars.iv1014.epil, 1
  %epil.iter1066.next = add i64 %epil.iter1066, 1
  %epil.iter1066.cmp.not = icmp eq i64 %epil.iter1066.next, %xtraiter1065
  br i1 %epil.iter1066.cmp.not, label %for.cond.cleanup394, label %for.body395.epil, !llvm.loop !19

for.cond.cleanup394:                              ; preds = %for.cond.cleanup394.loopexit.unr-lcssa, %for.body395.epil, %for.cond390.preheader
  %avgq.0.lcssa = phi double [ 0.000000e+00, %for.cond390.preheader ], [ %add400.lcssa.ph, %for.cond.cleanup394.loopexit.unr-lcssa ], [ %add400.epil, %for.body395.epil ]
  %conv406 = sitofp i32 %308 to double
  %div407 = fdiv double %avgq.0.lcssa, %conv406
  %div.i857 = fdiv double %div407, 8.500000e-01
  %call.i858 = tail call double @log2(double noundef %div.i857) #16
  %312 = tail call double @llvm.fmuladd.f64(double %call.i858, double 6.000000e+00, double 1.200000e+01)
  %cmp410 = fcmp ogt double %expected_bits.0.lcssa.i, %conv196
  br i1 %cmp410, label %if.then415, label %lor.lhs.false412

for.body395:                                      ; preds = %for.body395, %for.body395.lr.ph.new
  %indvars.iv1014 = phi i64 [ 0, %for.body395.lr.ph.new ], [ %indvars.iv.next1015.3, %for.body395 ]
  %avgq.0956 = phi double [ 0.000000e+00, %for.body395.lr.ph.new ], [ %add400.3, %for.body395 ]
  %niter1070 = phi i64 [ 0, %for.body395.lr.ph.new ], [ %niter1070.next.3, %for.body395 ]
  %new_qscale399 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %309, i64 %indvars.iv1014, i32 9
  %313 = load double, ptr %new_qscale399, align 8
  %add400 = fadd double %avgq.0956, %313
  %indvars.iv.next1015 = or disjoint i64 %indvars.iv1014, 1
  %new_qscale399.1 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %309, i64 %indvars.iv.next1015, i32 9
  %314 = load double, ptr %new_qscale399.1, align 8
  %add400.1 = fadd double %add400, %314
  %indvars.iv.next1015.1 = or disjoint i64 %indvars.iv1014, 2
  %new_qscale399.2 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %309, i64 %indvars.iv.next1015.1, i32 9
  %315 = load double, ptr %new_qscale399.2, align 8
  %add400.2 = fadd double %add400.1, %315
  %indvars.iv.next1015.2 = or disjoint i64 %indvars.iv1014, 3
  %new_qscale399.3 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %309, i64 %indvars.iv.next1015.2, i32 9
  %316 = load double, ptr %new_qscale399.3, align 8
  %add400.3 = fadd double %add400.2, %316
  %indvars.iv.next1015.3 = add nuw nsw i64 %indvars.iv1014, 4
  %niter1070.next.3 = add i64 %niter1070, 4
  %niter1070.ncmp.3 = icmp eq i64 %niter1070.next.3, %unroll_iter1069
  br i1 %niter1070.ncmp.3, label %for.cond.cleanup394.loopexit.unr-lcssa, label %for.body395

lor.lhs.false412:                                 ; preds = %for.cond.cleanup394
  %317 = load i32, ptr %b_vbv, align 8
  %tobool414.not = icmp eq i32 %317, 0
  br i1 %tobool414.not, label %if.then415, label %if.end416

if.then415:                                       ; preds = %lor.lhs.false412, %for.cond.cleanup394
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 1, ptr noundef nonnull @.str.89) #16
  br label %if.end416

if.end416:                                        ; preds = %if.then415, %lor.lhs.false412
  %318 = load i32, ptr %i_bitrate, align 4
  %conv420 = sitofp i32 %318 to float
  %conv421 = fpext float %conv420 to double
  %fps422 = getelementptr inbounds i8, ptr %0, i64 16
  %319 = load double, ptr %fps422, align 8
  %mul423 = fmul double %expected_bits.0.lcssa.i, %319
  %320 = load i32, ptr %num_entries, align 8
  %conv425 = sitofp i32 %320 to double
  %mul426 = fmul double %conv425, 1.000000e+03
  %div427 = fdiv double %mul423, %mul426
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 1, ptr noundef nonnull @.str.90, double noundef %conv421, double noundef %div427, double noundef %312) #16
  %cmp429 = fcmp olt double %expected_bits.0.lcssa.i, %conv196
  br i1 %cmp429, label %land.lhs.true, label %if.else449

land.lhs.true:                                    ; preds = %if.end416
  %i_qp_min = getelementptr inbounds i8, ptr %h, i64 496
  %321 = load i32, ptr %i_qp_min, align 8
  %add433 = add nsw i32 %321, 2
  %conv434 = sitofp i32 %add433 to double
  %cmp435 = fcmp olt double %312, %conv434
  br i1 %cmp435, label %if.then437, label %if.else449

if.then437:                                       ; preds = %land.lhs.true
  %cmp441 = icmp sgt i32 %321, 0
  br i1 %cmp441, label %if.then443, label %if.else447

if.then443:                                       ; preds = %if.then437
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.91, i32 noundef %321) #16
  br label %cleanup482

if.else447:                                       ; preds = %if.then437
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.92) #16
  br label %cleanup482

if.else449:                                       ; preds = %land.lhs.true, %if.end416
  br i1 %cmp410, label %land.lhs.true453, label %if.else472

land.lhs.true453:                                 ; preds = %if.else449
  %i_qp_max = getelementptr inbounds i8, ptr %h, i64 500
  %322 = load i32, ptr %i_qp_max, align 4
  %sub456 = add nsw i32 %322, -2
  %conv457 = sitofp i32 %sub456 to double
  %cmp458 = fcmp ogt double %312, %conv457
  br i1 %cmp458, label %if.then460, label %if.else472

if.then460:                                       ; preds = %land.lhs.true453
  %cmp464 = icmp slt i32 %322, 51
  br i1 %cmp464, label %if.then466, label %if.else470

if.then466:                                       ; preds = %if.then460
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.93, i32 noundef %322) #16
  br label %cleanup482

if.else470:                                       ; preds = %if.then460
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.94) #16
  br label %cleanup482

if.else472:                                       ; preds = %land.lhs.true453, %if.else449
  %b_2pass = getelementptr inbounds i8, ptr %0, i64 4
  %323 = load i32, ptr %b_2pass, align 4
  %tobool473.not = icmp eq i32 %323, 0
  br i1 %tobool473.not, label %if.then477, label %land.lhs.true474

land.lhs.true474:                                 ; preds = %if.else472
  %324 = load i32, ptr %b_vbv, align 8
  %tobool476.not = icmp eq i32 %324, 0
  br i1 %tobool476.not, label %if.then477, label %cleanup482

if.then477:                                       ; preds = %land.lhs.true474, %if.else472
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.95) #16
  br label %cleanup482

cleanup482:                                       ; preds = %if.then375, %for.cond.cleanup48, %do.body159, %count_expected_bits.exit, %if.else470, %if.then466, %if.then477, %land.lhs.true474, %if.then443, %if.else447, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.else447 ], [ 0, %if.then443 ], [ 0, %land.lhs.true474 ], [ 0, %if.then477 ], [ 0, %if.then466 ], [ 0, %if.else470 ], [ 0, %count_expected_bits.exit ], [ -1, %do.body159 ], [ -1, %for.cond.cleanup48 ], [ -1, %if.then375 ]
  ret i32 %retval.0
}

declare ptr @x264_param2string(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_summary(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %rc1 = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc1, align 16
  %1 = load i32, ptr %0, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %rc2 = getelementptr inbounds i8, ptr %h, i64 488
  %2 = load i32, ptr %rc2, align 8
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %cbr_decay = getelementptr inbounds i8, ptr %0, i64 208
  %3 = load double, ptr %cbr_decay, align 8
  %cmp4 = fcmp ogt double %3, 9.999000e-01
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %mb = getelementptr inbounds i8, ptr %h, i64 16368
  %4 = load i32, ptr %mb, align 16
  %i_bframe = getelementptr inbounds i8, ptr %h, i64 100
  %5 = load i32, ptr %i_bframe, align 4
  %tobool6.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool6.not, i32 80, i32 120
  %mul = mul nsw i32 %cond, %4
  %conv = sitofp i32 %mul to double
  %b_mb_tree = getelementptr inbounds i8, ptr %h, i64 552
  %6 = load i32, ptr %b_mb_tree, align 8
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %f_qcompress = getelementptr inbounds i8, ptr %h, i64 592
  %7 = load float, ptr %f_qcompress, align 8
  %conv12 = fpext float %7 to double
  %sub = fsub double 1.000000e+00, %conv12
  %mul13 = fmul double %sub, 1.350000e+01
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond14 = phi double [ %mul13, %cond.true ], [ 0.000000e+00, %if.then ]
  %qcompress = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load double, ptr %qcompress, align 8
  %sub15 = fsub double 1.000000e+00, %8
  %call = tail call double @pow(double noundef %conv, double noundef %sub15) #16
  %cplxr_sum = getelementptr inbounds i8, ptr %0, i64 184
  %9 = load double, ptr %cplxr_sum, align 8
  %mul16 = fmul double %call, %9
  %wanted_bits_window = getelementptr inbounds i8, ptr %0, i64 200
  %10 = load double, ptr %wanted_bits_window, align 8
  %div = fdiv double %mul16, %10
  %div.i = fdiv double %div, 8.500000e-01
  %call.i = tail call double @log2(double noundef %div.i) #16
  %11 = tail call double @llvm.fmuladd.f64(double %call.i, double 6.000000e+00, double 1.200000e+01)
  %sub18 = fsub double %11, %cond14
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull @.str.60, double noundef %sub18) #16
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_delete(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %rc1 = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc1, align 16
  %p_stat_file_out = getelementptr inbounds i8, ptr %0, i64 256
  %1 = load ptr, ptr %p_stat_file_out, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @fclose(ptr noundef nonnull %1)
  %i_frame = getelementptr inbounds i8, ptr %h, i64 1844
  %2 = load i32, ptr %i_frame, align 4
  %num_entries = getelementptr inbounds i8, ptr %0, i64 304
  %3 = load i32, ptr %num_entries, align 8
  %cmp.not = icmp slt i32 %2, %3
  br i1 %cmp.not, label %if.end17, label %if.then7

if.then7:                                         ; preds = %if.then
  %psz_stat_file_tmpname = getelementptr inbounds i8, ptr %0, i64 264
  %4 = load ptr, ptr %psz_stat_file_tmpname, align 8
  %psz_stat_out = getelementptr inbounds i8, ptr %h, i64 568
  %5 = load ptr, ptr %psz_stat_out, align 8
  %call9 = tail call i32 @rename(ptr noundef %4, ptr noundef %5) #16
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end17, label %if.then12

if.then12:                                        ; preds = %if.then7
  %6 = load ptr, ptr %psz_stat_file_tmpname, align 8
  %7 = load ptr, ptr %psz_stat_out, align 8
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef %6, ptr noundef %7) #16
  br label %if.end17

if.end17:                                         ; preds = %if.then7, %if.then12, %if.then
  %psz_stat_file_tmpname18 = getelementptr inbounds i8, ptr %0, i64 264
  %8 = load ptr, ptr %psz_stat_file_tmpname18, align 8
  tail call void @x264_free(ptr noundef %8) #16
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %entry
  %p_mbtree_stat_file_out = getelementptr inbounds i8, ptr %0, i64 272
  %9 = load ptr, ptr %p_mbtree_stat_file_out, align 8
  %tobool20.not = icmp eq ptr %9, null
  br i1 %tobool20.not, label %if.end44, label %if.then21

if.then21:                                        ; preds = %if.end19
  %call26 = tail call i32 @fclose(ptr noundef nonnull %9)
  %i_frame27 = getelementptr inbounds i8, ptr %h, i64 1844
  %10 = load i32, ptr %i_frame27, align 4
  %num_entries28 = getelementptr inbounds i8, ptr %0, i64 304
  %11 = load i32, ptr %num_entries28, align 8
  %cmp29.not = icmp slt i32 %10, %11
  br i1 %cmp29.not, label %if.end41, label %if.then33

if.then33:                                        ; preds = %if.then21
  %psz_mbtree_stat_file_tmpname = getelementptr inbounds i8, ptr %0, i64 280
  %12 = load ptr, ptr %psz_mbtree_stat_file_tmpname, align 8
  %psz_mbtree_stat_file_name = getelementptr inbounds i8, ptr %0, i64 288
  %13 = load ptr, ptr %psz_mbtree_stat_file_name, align 8
  %call34 = tail call i32 @rename(ptr noundef %12, ptr noundef %13) #16
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end41, label %if.then37

if.then37:                                        ; preds = %if.then33
  %14 = load ptr, ptr %psz_mbtree_stat_file_tmpname, align 8
  %15 = load ptr, ptr %psz_mbtree_stat_file_name, align 8
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef %14, ptr noundef %15) #16
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %if.then37, %if.then21
  %psz_mbtree_stat_file_tmpname42 = getelementptr inbounds i8, ptr %0, i64 280
  %16 = load ptr, ptr %psz_mbtree_stat_file_tmpname42, align 8
  tail call void @x264_free(ptr noundef %16) #16
  %psz_mbtree_stat_file_name43 = getelementptr inbounds i8, ptr %0, i64 288
  %17 = load ptr, ptr %psz_mbtree_stat_file_name43, align 8
  tail call void @x264_free(ptr noundef %17) #16
  br label %if.end44

if.end44:                                         ; preds = %if.end41, %if.end19
  %p_mbtree_stat_file_in = getelementptr inbounds i8, ptr %0, i64 296
  %18 = load ptr, ptr %p_mbtree_stat_file_in, align 8
  %tobool45.not = icmp eq ptr %18, null
  br i1 %tobool45.not, label %if.end49, label %if.then46

if.then46:                                        ; preds = %if.end44
  %call48 = tail call i32 @fclose(ptr noundef nonnull %18)
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end44
  %pred = getelementptr inbounds i8, ptr %0, i64 144
  %19 = load ptr, ptr %pred, align 8
  tail call void @x264_free(ptr noundef %19) #16
  %pred_b_from_p = getelementptr inbounds i8, ptr %0, i64 872
  %20 = load ptr, ptr %pred_b_from_p, align 8
  tail call void @x264_free(ptr noundef %20) #16
  %entry50 = getelementptr inbounds i8, ptr %0, i64 312
  %21 = load ptr, ptr %entry50, align 8
  tail call void @x264_free(ptr noundef %21) #16
  %qp_buffer = getelementptr inbounds i8, ptr %0, i64 488
  %22 = load ptr, ptr %qp_buffer, align 8
  tail call void @x264_free(ptr noundef %22) #16
  %arrayidx52 = getelementptr inbounds i8, ptr %0, i64 496
  %23 = load ptr, ptr %arrayidx52, align 8
  tail call void @x264_free(ptr noundef %23) #16
  %zones = getelementptr inbounds i8, ptr %0, i64 896
  %24 = load ptr, ptr %zones, align 8
  %tobool53.not = icmp eq ptr %24, null
  br i1 %tobool53.not, label %if.end86, label %if.then54

if.then54:                                        ; preds = %if.end49
  %param57 = getelementptr inbounds i8, ptr %24, i64 24
  %25 = load ptr, ptr %param57, align 8
  tail call void @x264_free(ptr noundef %25) #16
  %i_zones = getelementptr inbounds i8, ptr %0, i64 888
  %26 = load i32, ptr %i_zones, align 8
  %cmp58138 = icmp sgt i32 %26, 1
  br i1 %cmp58138, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.inc, %if.then54
  %27 = load ptr, ptr %zones, align 8
  tail call void @x264_free(ptr noundef %27) #16
  br label %if.end86

for.body:                                         ; preds = %if.then54, %for.inc
  %28 = phi i32 [ %33, %for.inc ], [ %26, %if.then54 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %if.then54 ]
  %29 = load ptr, ptr %zones, align 8
  %param62 = getelementptr inbounds %struct.x264_zone_t, ptr %29, i64 %indvars.iv, i32 5
  %30 = load ptr, ptr %param62, align 8
  %param65 = getelementptr inbounds i8, ptr %29, i64 24
  %31 = load ptr, ptr %param65, align 8
  %cmp66.not = icmp eq ptr %30, %31
  br i1 %cmp66.not, label %for.inc, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %for.body
  %param_free = getelementptr inbounds i8, ptr %30, i64 696
  %32 = load ptr, ptr %param_free, align 8
  %tobool73.not = icmp eq ptr %32, null
  br i1 %tobool73.not, label %for.inc, label %if.then74

if.then74:                                        ; preds = %land.lhs.true68
  tail call void %32(ptr noundef nonnull %30) #16
  %.pre = load i32, ptr %i_zones, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true68, %if.then74
  %33 = phi i32 [ %28, %for.body ], [ %28, %land.lhs.true68 ], [ %.pre, %if.then74 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %34 = sext i32 %33 to i64
  %cmp58 = icmp slt i64 %indvars.iv.next, %34
  br i1 %cmp58, label %for.body, label %for.cond.cleanup

if.end86:                                         ; preds = %for.cond.cleanup, %if.end49
  tail call void @x264_free(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_start(ptr noundef %h, i32 noundef %i_force_qp, i32 noundef %overhead) local_unnamed_addr #0 {
entry:
  %rc1 = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc1, align 16
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %1 = load ptr, ptr %fenc, align 8
  %i_frame = getelementptr inbounds i8, ptr %1, i64 56
  %2 = load i32, ptr %i_frame, align 8
  %i_zones.i = getelementptr inbounds i8, ptr %0, i64 888
  %3 = load i32, ptr %i_zones.i, align 8
  %cmp4.i = icmp slt i32 %3, 1
  br i1 %cmp4.i, label %if.end, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %zones.i = getelementptr inbounds i8, ptr %0, i64 896
  %4 = load ptr, ptr %zones.i, align 8
  %5 = zext nneg i32 %3 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ %5, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %cleanup.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %arrayidx.i = getelementptr inbounds %struct.x264_zone_t, ptr %4, i64 %indvars.iv.next.i
  %6 = load i32, ptr %arrayidx.i, align 8
  %cmp2.not.i = icmp sgt i32 %6, %2
  br i1 %cmp2.not.i, label %cleanup.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %i_end.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 4
  %7 = load i32, ptr %i_end.i, align 4
  %cmp3.not.i = icmp slt i32 %7, %2
  br i1 %cmp3.not.i, label %cleanup.i, label %land.lhs.true

cleanup.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %cmp.i = icmp ult i64 %indvars.iv.i, 2
  br i1 %cmp.i, label %if.end, label %for.body.i

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %prev_zone = getelementptr inbounds i8, ptr %0, i64 904
  %8 = load ptr, ptr %prev_zone, align 8
  %tobool2.not = icmp eq ptr %8, null
  %param5.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx.i, i64 24
  %.pre = load ptr, ptr %param5.phi.trans.insert, align 8
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %param4 = getelementptr inbounds i8, ptr %8, i64 24
  %9 = load ptr, ptr %param4, align 8
  %cmp.not = icmp eq ptr %.pre, %9
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %call6 = tail call i32 @x264_encoder_reconfig(ptr noundef %h, ptr noundef %.pre) #16
  br label %if.end

if.end:                                           ; preds = %cleanup.i, %entry, %if.then, %lor.lhs.false
  %tobool.not326 = phi i1 [ false, %if.then ], [ false, %lor.lhs.false ], [ true, %entry ], [ true, %cleanup.i ]
  %spec.select.i325 = phi ptr [ %arrayidx.i, %if.then ], [ %arrayidx.i, %lor.lhs.false ], [ null, %entry ], [ null, %cleanup.i ]
  %prev_zone7 = getelementptr inbounds i8, ptr %0, i64 904
  store ptr %spec.select.i325, ptr %prev_zone7, align 8
  %qp_force = getelementptr inbounds i8, ptr %0, i64 100
  store i32 %i_force_qp, ptr %qp_force, align 4
  %b_stat_read = getelementptr inbounds i8, ptr %h, i64 576
  %10 = load i32, ptr %b_stat_read, align 8
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.end38, label %if.then11

if.then11:                                        ; preds = %if.end
  %11 = load ptr, ptr %fenc, align 8
  %i_frame13 = getelementptr inbounds i8, ptr %11, i64 56
  %12 = load i32, ptr %i_frame13, align 8
  %cmp14 = icmp sgt i32 %12, -1
  br i1 %cmp14, label %land.lhs.true15, label %cond.false

land.lhs.true15:                                  ; preds = %if.then11
  %num_entries = getelementptr inbounds i8, ptr %0, i64 304
  %13 = load i32, ptr %num_entries, align 8
  %cmp16 = icmp slt i32 %12, %13
  br i1 %cmp16, label %cond.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true15, %if.then11
  tail call void @__assert_fail(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.9, i32 noundef 1090, ptr noundef nonnull @__PRETTY_FUNCTION__.x264_ratecontrol_start) #18
  unreachable

cond.end:                                         ; preds = %land.lhs.true15
  %14 = load ptr, ptr %rc1, align 16
  %entry18 = getelementptr inbounds i8, ptr %14, i64 312
  %15 = load ptr, ptr %entry18, align 8
  %idxprom = zext nneg i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %15, i64 %idxprom
  %rce20 = getelementptr inbounds i8, ptr %14, i64 72
  store ptr %arrayidx, ptr %rce20, align 8
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %16 = load i32, ptr %i_type, align 16
  %cmp21 = icmp eq i32 %16, 1
  br i1 %cmp21, label %land.lhs.true22, label %if.end38

land.lhs.true22:                                  ; preds = %cond.end
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %h, i64 404
  %17 = load i32, ptr %i_direct_mv_pred, align 4
  %cmp24 = icmp eq i32 %17, 3
  br i1 %cmp24, label %if.then25, label %if.end38

if.then25:                                        ; preds = %land.lhs.true22
  %direct_mode = getelementptr inbounds i8, ptr %arrayidx, i64 84
  %18 = load i8, ptr %direct_mode, align 4
  %cmp26 = icmp eq i8 %18, 115
  %conv27 = zext i1 %cmp26 to i32
  %b_direct_spatial_mv_pred = getelementptr inbounds i8, ptr %h, i64 7304
  store i32 %conv27, ptr %b_direct_spatial_mv_pred, align 8
  %19 = load i8, ptr %direct_mode, align 4
  %20 = add i8 %19, -115
  %spec.select = icmp ult i8 %20, 2
  %lor.ext = zext i1 %spec.select to i32
  %b_direct_auto_read = getelementptr inbounds i8, ptr %h, i64 25816
  store i32 %lor.ext, ptr %b_direct_auto_read, align 8
  br label %if.end38

if.end38:                                         ; preds = %cond.end, %land.lhs.true22, %if.then25, %if.end
  %rce.0 = phi ptr [ null, %if.end ], [ %arrayidx, %if.then25 ], [ %arrayidx, %land.lhs.true22 ], [ %arrayidx, %cond.end ]
  %b_vbv = getelementptr inbounds i8, ptr %0, i64 8
  %21 = load i32, ptr %b_vbv, align 8
  %tobool39.not = icmp eq i32 %21, 0
  br i1 %tobool39.not, label %if.end114, label %if.then40

if.then40:                                        ; preds = %if.end38
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %22 = load ptr, ptr %fdec, align 16
  %i_row_bits = getelementptr inbounds i8, ptr %22, i64 12136
  %23 = load ptr, ptr %i_row_bits, align 8
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %24 = load ptr, ptr %sps, align 16
  %i_mb_height = getelementptr inbounds i8, ptr %24, i64 1088
  %25 = load i32, ptr %i_mb_height, align 4
  %conv41 = sext i32 %25 to i64
  %mul = shl nsw i64 %conv41, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %23, i8 0, i64 %mul, i1 false)
  %row_preds = getelementptr inbounds i8, ptr %0, i64 552
  %i_type43 = getelementptr inbounds i8, ptr %h, i64 7248
  %26 = load i32, ptr %i_type43, align 16
  %idxprom44 = sext i32 %26 to i64
  %arrayidx45 = getelementptr inbounds [5 x [2 x %struct.predictor_t]], ptr %row_preds, i64 0, i64 %idxprom44
  %row_pred = getelementptr inbounds i8, ptr %0, i64 544
  store ptr %arrayidx45, ptr %row_pred, align 8
  %27 = load ptr, ptr %fenc, align 8
  %i_cpb_duration = getelementptr inbounds i8, ptr %27, i64 36
  %28 = load i32, ptr %i_cpb_duration, align 4
  %conv47 = sitofp i32 %28 to double
  %vbv_max_rate = getelementptr inbounds i8, ptr %0, i64 136
  %29 = load double, ptr %vbv_max_rate, align 8
  %mul48 = fmul double %29, %conv47
  %30 = load ptr, ptr %sps, align 16
  %i_num_units_in_tick = getelementptr inbounds i8, ptr %30, i64 1192
  %31 = load i32, ptr %i_num_units_in_tick, align 4
  %conv50 = uitofp i32 %31 to double
  %mul51 = fmul double %mul48, %conv50
  %i_time_scale = getelementptr inbounds i8, ptr %30, i64 1196
  %32 = load i32, ptr %i_time_scale, align 4
  %conv54 = uitofp i32 %32 to double
  %div = fdiv double %mul51, %conv54
  %buffer_rate = getelementptr inbounds i8, ptr %0, i64 128
  store double %div, ptr %buffer_rate, align 8
  %33 = load ptr, ptr %rc1, align 16
  %thread.i = getelementptr inbounds i8, ptr %h, i64 704
  %34 = load ptr, ptr %thread.i, align 16
  %rc1.i = getelementptr inbounds i8, ptr %34, i64 26704
  %35 = load ptr, ptr %rc1.i, align 16
  %buffer_fill_final.i = getelementptr inbounds i8, ptr %35, i64 112
  %36 = load double, ptr %buffer_fill_final.i, align 8
  %buffer_fill.i = getelementptr inbounds i8, ptr %33, i64 120
  store double %36, ptr %buffer_fill.i, align 8
  %i_thread_frames.i = getelementptr inbounds i8, ptr %h, i64 1852
  %37 = load i32, ptr %i_thread_frames.i, align 4
  %cmp.i308 = icmp sgt i32 %37, 1
  br i1 %cmp.i308, label %for.body.lr.ph.i309, label %update_vbv_plan.exit

for.body.lr.ph.i309:                              ; preds = %if.then40
  %38 = load ptr, ptr %rc1, align 16
  %39 = load ptr, ptr %thread.i, align 16
  %rc5.i = getelementptr inbounds i8, ptr %39, i64 26704
  %40 = load ptr, ptr %rc5.i, align 16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %40 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 936
  %conv.i = trunc i64 %sub.ptr.div.i to i32
  %buffer_size.i = getelementptr inbounds i8, ptr %33, i64 104
  br label %for.body.i310

for.body.i310:                                    ; preds = %cleanup.i311, %for.body.lr.ph.i309
  %41 = phi i32 [ %37, %for.body.lr.ph.i309 ], [ %51, %cleanup.i311 ]
  %42 = phi double [ %36, %for.body.lr.ph.i309 ], [ %52, %cleanup.i311 ]
  %i.097.i = phi i32 [ 1, %for.body.lr.ph.i309 ], [ %inc.i, %cleanup.i311 ]
  %add.i = add nsw i32 %i.097.i, %conv.i
  %rem.i = srem i32 %add.i, %41
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx11.i = getelementptr inbounds [129 x ptr], ptr %thread.i, i64 0, i64 %idxprom.i
  %43 = load ptr, ptr %arrayidx11.i, align 8
  %b_thread_active.i = getelementptr inbounds i8, ptr %43, i64 1740
  %44 = load i32, ptr %b_thread_active.i, align 4
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %cleanup.i311, label %if.end.i

if.end.i:                                         ; preds = %for.body.i310
  %rc12.i = getelementptr inbounds i8, ptr %43, i64 26704
  %45 = load ptr, ptr %rc12.i, align 16
  %frame_size_planned.i = getelementptr inbounds i8, ptr %45, i64 520
  %46 = load double, ptr %frame_size_planned.i, align 8
  %frame_size_estimated.i = getelementptr inbounds i8, ptr %45, i64 508
  %47 = load float, ptr %frame_size_estimated.i, align 4
  %conv15.i = fpext float %47 to double
  %cmp16.i = fcmp ogt double %46, %conv15.i
  %.conv15.i = select i1 %cmp16.i, double %46, double %conv15.i
  %sub.i = fsub double %42, %.conv15.i
  %cmp23.i = fcmp ogt double %sub.i, 0.000000e+00
  %cond29.i = select i1 %cmp23.i, double %sub.i, double 0.000000e+00
  store double %cond29.i, ptr %buffer_fill.i, align 8
  %48 = load ptr, ptr %rc12.i, align 16
  %buffer_rate.i = getelementptr inbounds i8, ptr %48, i64 128
  %49 = load double, ptr %buffer_rate.i, align 8
  %add33.i = fadd double %49, %cond29.i
  %50 = load double, ptr %buffer_size.i, align 8
  %cmp35.i = fcmp olt double %add33.i, %50
  %cond42.i = select i1 %cmp35.i, double %add33.i, double %50
  store double %cond42.i, ptr %buffer_fill.i, align 8
  %.pre.i = load i32, ptr %i_thread_frames.i, align 4
  br label %cleanup.i311

cleanup.i311:                                     ; preds = %if.end.i, %for.body.i310
  %51 = phi i32 [ %41, %for.body.i310 ], [ %.pre.i, %if.end.i ]
  %52 = phi double [ %42, %for.body.i310 ], [ %cond42.i, %if.end.i ]
  %inc.i = add nuw nsw i32 %i.097.i, 1
  %cmp7.i = icmp slt i32 %inc.i, %51
  br i1 %cmp7.i, label %for.body.i310, label %update_vbv_plan.exit

update_vbv_plan.exit:                             ; preds = %cleanup.i311, %if.then40
  %53 = phi double [ %36, %if.then40 ], [ %52, %cleanup.i311 ]
  %buffer_size48.i = getelementptr inbounds i8, ptr %33, i64 104
  %54 = load double, ptr %buffer_size48.i, align 8
  %cmp49.i = fcmp olt double %53, %54
  %..i = select i1 %cmp49.i, double %53, double %54
  %conv58.i = sitofp i32 %overhead to double
  %sub60.i = fsub double %..i, %conv58.i
  store double %sub60.i, ptr %buffer_fill.i, align 8
  %55 = load i32, ptr @x264_levels, align 4
  %cmp55.not333 = icmp eq i32 %55, 0
  br i1 %cmp55.not333, label %while.end.thread, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %update_vbv_plan.exit
  %i_level_idc = getelementptr inbounds i8, ptr %h, i64 32
  %56 = load i32, ptr %i_level_idc, align 16
  br label %land.rhs

while.end.thread:                                 ; preds = %while.body, %update_vbv_plan.exit
  %l.0.lcssa = phi ptr [ @x264_levels, %update_vbv_plan.exit ], [ %incdec.ptr, %while.body ]
  %mincr61327 = getelementptr inbounds i8, ptr %l.0.lcssa, i64 36
  %57 = load i32, ptr %mincr61327, align 4
  br label %if.end69

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %58 = phi i32 [ %55, %land.rhs.lr.ph ], [ %59, %while.body ]
  %l.0334 = phi ptr [ @x264_levels, %land.rhs.lr.ph ], [ %incdec.ptr, %while.body ]
  %cmp59.not = icmp eq i32 %58, %56
  br i1 %cmp59.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, ptr %l.0334, i64 52
  %59 = load i32, ptr %incdec.ptr, align 4
  %cmp55.not = icmp eq i32 %59, 0
  br i1 %cmp55.not, label %while.end.thread, label %land.rhs

while.end:                                        ; preds = %land.rhs
  %mincr61 = getelementptr inbounds i8, ptr %l.0334, i64 36
  %60 = load i32, ptr %mincr61, align 4
  %cmp63 = icmp eq i32 %56, 41
  br i1 %cmp63, label %land.lhs.true65, label %if.end69

land.lhs.true65:                                  ; preds = %while.end
  %i_nal_hrd = getelementptr inbounds i8, ptr %h, i64 40
  %61 = load i32, ptr %i_nal_hrd, align 8
  %tobool67.not = icmp eq i32 %61, 0
  %spec.select307 = select i1 %tobool67.not, i32 %60, i32 4
  br label %if.end69

if.end69:                                         ; preds = %while.end.thread, %land.lhs.true65, %while.end
  %l.0331 = phi ptr [ %l.0334, %while.end ], [ %l.0334, %land.lhs.true65 ], [ %l.0.lcssa, %while.end.thread ]
  %mincr.0 = phi i32 [ %60, %while.end ], [ %spec.select307, %land.lhs.true65 ], [ %57, %while.end.thread ]
  %i_frame70 = getelementptr inbounds i8, ptr %h, i64 1844
  %62 = load i32, ptr %i_frame70, align 4
  %cmp71 = icmp eq i32 %62, 0
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.end69
  %63 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %63, i64 1084
  %64 = load i32, ptr %i_mb_width, align 4
  %i_mb_height76 = getelementptr inbounds i8, ptr %63, i64 1088
  %65 = load i32, ptr %i_mb_height76, align 4
  %mul77 = mul nsw i32 %65, %64
  %conv78 = sitofp i32 %mul77 to double
  %mbps = getelementptr inbounds i8, ptr %l.0331, i64 4
  %66 = load i32, ptr %mbps, align 4
  %conv79 = sitofp i32 %66 to double
  %mul80 = fmul double %conv79, 0x3F77D05F417D05F4
  %cmp81 = fcmp olt double %mul80, %conv78
  %conv78.mul80 = select i1 %cmp81, double %conv78, double %mul80
  %mul90 = fmul double %conv78.mul80, 3.072000e+03
  br label %if.end114.sink.split

if.else:                                          ; preds = %if.end69
  %67 = load ptr, ptr %fenc, align 8
  %i_cpb_duration94 = getelementptr inbounds i8, ptr %67, i64 36
  %68 = load i32, ptr %i_cpb_duration94, align 4
  %conv95 = sitofp i32 %68 to double
  %69 = load ptr, ptr %sps, align 16
  %i_num_units_in_tick98 = getelementptr inbounds i8, ptr %69, i64 1192
  %70 = load i32, ptr %i_num_units_in_tick98, align 4
  %conv99 = uitofp i32 %70 to double
  %mul100 = fmul double %conv95, %conv99
  %i_time_scale103 = getelementptr inbounds i8, ptr %69, i64 1196
  %71 = load i32, ptr %i_time_scale103, align 4
  %conv104 = uitofp i32 %71 to double
  %div105 = fdiv double %mul100, %conv104
  %mul106 = fmul double %div105, 3.072000e+03
  %mbps107 = getelementptr inbounds i8, ptr %l.0331, i64 4
  %72 = load i32, ptr %mbps107, align 4
  %conv108 = sitofp i32 %72 to double
  %mul109 = fmul double %mul106, %conv108
  br label %if.end114.sink.split

if.end114.sink.split:                             ; preds = %if.else, %if.then73
  %mul90.sink = phi double [ %mul90, %if.then73 ], [ %mul109, %if.else ]
  %conv91 = sitofp i32 %mincr.0 to double
  %div92 = fdiv double %mul90.sink, %conv91
  %frame_size_maximum = getelementptr inbounds i8, ptr %0, i64 512
  store double %div92, ptr %frame_size_maximum, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.end114.sink.split, %if.end38
  %i_type116 = getelementptr inbounds i8, ptr %h, i64 7248
  %73 = load i32, ptr %i_type116, align 16
  %cmp117.not = icmp eq i32 %73, 1
  br i1 %cmp117.not, label %if.end122, label %if.then119

if.then119:                                       ; preds = %if.end114
  %74 = load ptr, ptr %fenc, align 8
  %i_bframes = getelementptr inbounds i8, ptr %74, i64 86
  %75 = load i8, ptr %i_bframes, align 2
  %conv121 = zext i8 %75 to i32
  %bframes = getelementptr inbounds i8, ptr %0, i64 880
  store i32 %conv121, ptr %bframes, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.end114
  %tobool123.not = icmp eq i32 %i_force_qp, 0
  br i1 %tobool123.not, label %if.else126, label %if.then124

if.then124:                                       ; preds = %if.end122
  %sub = add nsw i32 %i_force_qp, -1
  %conv125 = sitofp i32 %sub to float
  br label %if.end179

if.else126:                                       ; preds = %if.end122
  %76 = load i32, ptr %0, align 8
  %tobool127.not = icmp eq i32 %76, 0
  br i1 %tobool127.not, label %if.else133, label %if.then128

if.then128:                                       ; preds = %if.else126
  %call129 = tail call fastcc float @rate_estimate_qscale(ptr noundef nonnull %h)
  %conv130 = fpext float %call129 to double
  %div.i = fdiv double %conv130, 8.500000e-01
  %call.i = tail call double @log2(double noundef %div.i) #16
  %77 = tail call double @llvm.fmuladd.f64(double %call.i, double 6.000000e+00, double 1.200000e+01)
  %conv132 = fptrunc double %77 to float
  br label %if.end179

if.else133:                                       ; preds = %if.else126
  %b_2pass = getelementptr inbounds i8, ptr %0, i64 4
  %78 = load i32, ptr %b_2pass, align 4
  %tobool134.not = icmp eq i32 %78, 0
  br i1 %tobool134.not, label %if.else141, label %if.then135

if.then135:                                       ; preds = %if.else133
  %call136 = tail call fastcc float @rate_estimate_qscale(ptr noundef nonnull %h)
  %conv137 = fpext float %call136 to double
  %new_qscale = getelementptr inbounds i8, ptr %rce.0, i64 56
  store double %conv137, ptr %new_qscale, align 8
  %div.i312 = fdiv double %conv137, 8.500000e-01
  %call.i313 = tail call double @log2(double noundef %div.i312) #16
  %79 = tail call double @llvm.fmuladd.f64(double %call.i313, double 6.000000e+00, double 1.200000e+01)
  %conv140 = fptrunc double %79 to float
  br label %if.end179

if.else141:                                       ; preds = %if.else133
  %80 = load i32, ptr %i_type116, align 16
  %cmp144 = icmp eq i32 %80, 1
  br i1 %cmp144, label %land.lhs.true146, label %if.else155

land.lhs.true146:                                 ; preds = %if.else141
  %fdec147 = getelementptr inbounds i8, ptr %h, i64 14688
  %81 = load ptr, ptr %fdec147, align 16
  %b_kept_as_ref = getelementptr inbounds i8, ptr %81, i64 72
  %82 = load i32, ptr %b_kept_as_ref, align 8
  %tobool148.not = icmp eq i32 %82, 0
  br i1 %tobool148.not, label %if.else155, label %if.then149

if.then149:                                       ; preds = %land.lhs.true146
  %qp_constant = getelementptr inbounds i8, ptr %0, i64 52
  %arrayidx150 = getelementptr inbounds i8, ptr %0, i64 56
  %83 = load i32, ptr %arrayidx150, align 4
  %84 = load i32, ptr %qp_constant, align 4
  %add = add nsw i32 %84, %83
  %div153 = sdiv i32 %add, 2
  br label %if.end162

if.else155:                                       ; preds = %land.lhs.true146, %if.else141
  %qp_constant156 = getelementptr inbounds i8, ptr %0, i64 52
  %idxprom159 = sext i32 %80 to i64
  %arrayidx160 = getelementptr inbounds [5 x i32], ptr %qp_constant156, i64 0, i64 %idxprom159
  %85 = load i32, ptr %arrayidx160, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.else155, %if.then149
  %q.0.in = phi i32 [ %div153, %if.then149 ], [ %85, %if.else155 ]
  %q.0 = sitofp i32 %q.0.in to float
  br i1 %tobool.not326, label %if.end179, label %if.then164

if.then164:                                       ; preds = %if.end162
  %b_force_qp = getelementptr inbounds i8, ptr %spec.select.i325, i64 8
  %86 = load i32, ptr %b_force_qp, align 8
  %tobool165.not = icmp eq i32 %86, 0
  br i1 %tobool165.not, label %if.else172, label %if.then166

if.then166:                                       ; preds = %if.then164
  %i_qp = getelementptr inbounds i8, ptr %spec.select.i325, i64 12
  %87 = load i32, ptr %i_qp, align 4
  %qp_constant167 = getelementptr inbounds i8, ptr %0, i64 52
  %88 = load i32, ptr %qp_constant167, align 4
  %sub169 = sub nsw i32 %87, %88
  %conv170 = sitofp i32 %sub169 to float
  %add171 = fadd float %q.0, %conv170
  br label %if.end179

if.else172:                                       ; preds = %if.then164
  %f_bitrate_factor = getelementptr inbounds i8, ptr %spec.select.i325, i64 16
  %89 = load float, ptr %f_bitrate_factor, align 8
  %call173 = tail call float @log2f(float noundef %89) #16
  %90 = tail call float @llvm.fmuladd.f32(float %call173, float -6.000000e+00, float %q.0)
  br label %if.end179

if.end179:                                        ; preds = %if.then128, %if.end162, %if.else172, %if.then166, %if.then135, %if.then124
  %q.1 = phi float [ %conv125, %if.then124 ], [ %conv132, %if.then128 ], [ %conv140, %if.then135 ], [ %add171, %if.then166 ], [ %90, %if.else172 ], [ %q.0, %if.end162 ]
  %conv180 = fpext float %q.1 to double
  %i_qp_min = getelementptr inbounds i8, ptr %h, i64 496
  %91 = load i32, ptr %i_qp_min, align 8
  %conv183 = sitofp i32 %91 to double
  %i_qp_max = getelementptr inbounds i8, ptr %h, i64 500
  %92 = load i32, ptr %i_qp_max, align 4
  %conv186 = sitofp i32 %92 to double
  %cmp.i314 = fcmp olt double %conv180, %conv183
  %cmp1.i = fcmp ogt double %conv180, %conv186
  %cond.i = select i1 %cmp1.i, double %conv186, double %conv180
  %cond5.i = select i1 %cmp.i314, double %conv183, double %cond.i
  %conv188 = fptrunc double %cond5.i to float
  %qpa_rc = getelementptr inbounds i8, ptr %0, i64 88
  store <2 x float> zeroinitializer, ptr %qpa_rc, align 8
  %conv189 = fpext float %conv188 to double
  %add190 = fadd double %conv189, 5.000000e-01
  %conv191 = fptosi double %add190 to i32
  %cond.i316 = tail call i32 @llvm.smin.i32(i32 %conv191, i32 51)
  %cond5.i317 = tail call i32 @llvm.smax.i32(i32 %cond.i316, i32 0)
  %qp = getelementptr inbounds i8, ptr %0, i64 80
  store i32 %cond5.i317, ptr %qp, align 8
  %qpm = getelementptr inbounds i8, ptr %0, i64 84
  store float %conv188, ptr %qpm, align 4
  %fdec193 = getelementptr inbounds i8, ptr %h, i64 14688
  %93 = load ptr, ptr %fdec193, align 16
  %f_qp_avg_aq = getelementptr inbounds i8, ptr %93, i64 92
  store float %conv188, ptr %f_qp_avg_aq, align 4
  %94 = load ptr, ptr %fdec193, align 16
  %f_qp_avg_rc = getelementptr inbounds i8, ptr %94, i64 88
  store float %conv188, ptr %f_qp_avg_rc, align 8
  %tobool195.not = icmp eq ptr %rce.0, null
  br i1 %tobool195.not, label %if.end198, label %if.then196

if.then196:                                       ; preds = %if.end179
  %95 = load i32, ptr %qp, align 8
  %new_qp = getelementptr inbounds i8, ptr %rce.0, i64 64
  store i32 %95, ptr %new_qp, align 8
  br label %if.end198

if.end198:                                        ; preds = %if.then196, %if.end179
  %96 = load float, ptr %qpm, align 4
  %97 = load ptr, ptr %rc1, align 16
  %accum_p_qp.i = getelementptr inbounds i8, ptr %97, i64 376
  %98 = load double, ptr %accum_p_qp.i, align 8
  %mul.i = fmul double %98, 0x3FEE666666666666
  store double %mul.i, ptr %accum_p_qp.i, align 8
  %accum_p_norm.i = getelementptr inbounds i8, ptr %97, i64 384
  %99 = load double, ptr %accum_p_norm.i, align 8
  %mul2.i = fmul double %99, 0x3FEE666666666666
  %add.i319 = fadd double %mul2.i, 1.000000e+00
  store double %add.i319, ptr %accum_p_norm.i, align 8
  %100 = load i32, ptr %i_type116, align 16
  %cmp.i320 = icmp eq i32 %100, 2
  %conv.i321 = fpext float %96 to double
  br i1 %cmp.i320, label %if.then.i, label %accum_p_qp_update.exit

if.then.i:                                        ; preds = %if.end198
  %ip_offset.i = getelementptr inbounds i8, ptr %97, i64 240
  %101 = load double, ptr %ip_offset.i, align 8
  %add4.i = fadd double %101, %conv.i321
  br label %accum_p_qp_update.exit

accum_p_qp_update.exit:                           ; preds = %if.end198, %if.then.i
  %conv7.pn.i = phi double [ %add4.i, %if.then.i ], [ %conv.i321, %if.end198 ]
  %storemerge.i = fadd double %mul.i, %conv7.pn.i
  store double %storemerge.i, ptr %accum_p_qp.i, align 8
  %102 = load i32, ptr %i_type116, align 16
  %cmp202.not = icmp eq i32 %102, 1
  br i1 %cmp202.not, label %if.end207, label %if.then204

if.then204:                                       ; preds = %accum_p_qp_update.exit
  %last_non_b_pict_type = getelementptr inbounds i8, ptr %0, i64 368
  store i32 %102, ptr %last_non_b_pict_type, align 8
  br label %if.end207

if.end207:                                        ; preds = %if.then204, %accum_p_qp_update.exit
  ret void
}

declare i32 @x264_encoder_reconfig(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc float @rate_estimate_qscale(ptr noundef %h) unnamed_addr #0 {
entry:
  %rc = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc, align 16
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %1 = load i32, ptr %i_type, align 16
  %i_frame_size = getelementptr inbounds i8, ptr %h, i64 27440
  %arrayidx = getelementptr inbounds i8, ptr %h, i64 27456
  %2 = load i64, ptr %arrayidx, align 8
  %3 = load i64, ptr %i_frame_size, align 8
  %add = add nsw i64 %3, %2
  %arrayidx6 = getelementptr inbounds i8, ptr %h, i64 27448
  %4 = load i64, ptr %arrayidx6, align 8
  %add7 = add nsw i64 %add, %4
  %mul = shl nsw i64 %add7, 3
  %b_2pass = getelementptr inbounds i8, ptr %0, i64 4
  %5 = load i32, ptr %b_2pass, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %rce8 = getelementptr inbounds i8, ptr %0, i64 72
  %6 = load ptr, ptr %rce8, align 8
  %rce.sroa.0.0.copyload = load i32, ptr %6, align 8
  %rce.sroa.7963.0..sroa_idx = getelementptr inbounds i8, ptr %6, i64 16
  %rce.sroa.7963.0.copyload = load double, ptr %rce.sroa.7963.0..sroa_idx, align 8
  %rce.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %6, i64 24
  %rce.sroa.16.0.copyload = load i32, ptr %rce.sroa.16.0..sroa_idx, align 8
  %rce.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %6, i64 28
  %rce.sroa.23.0.copyload = load i32, ptr %rce.sroa.23.0..sroa_idx, align 4
  %rce.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr %6, i64 32
  %rce.sroa.30.0.copyload = load i32, ptr %rce.sroa.30.0..sroa_idx, align 8
  %rce.sroa.34984.0..sroa_idx = getelementptr inbounds i8, ptr %6, i64 40
  %rce.sroa.34984.0.copyload = load i64, ptr %rce.sroa.34984.0..sroa_idx, align 8
  %rce.sroa.35.0..sroa_idx = getelementptr inbounds i8, ptr %6, i64 48
  %rce.sroa.35.0.copyload = load double, ptr %rce.sroa.35.0..sroa_idx, align 8
  %rce.sroa.37.0..sroa_idx = getelementptr inbounds i8, ptr %6, i64 56
  %rce.sroa.37.0.copyload = load double, ptr %rce.sroa.37.0..sroa_idx, align 8
  %cmp.not = icmp eq i32 %1, %rce.sroa.0.0.copyload
  br i1 %cmp.not, label %if.end16, label %if.then10

if.then10:                                        ; preds = %if.then
  %idxprom = sext i32 %1 to i64
  %arrayidx11 = getelementptr inbounds [5 x i8], ptr @slice_type_to_char, i64 0, i64 %idxprom
  %7 = load i8, ptr %arrayidx11, align 1
  %conv = sext i8 %7 to i32
  %idxprom13 = sext i32 %rce.sroa.0.0.copyload to i64
  %arrayidx14 = getelementptr inbounds [5 x i8], ptr @slice_type_to_char, i64 0, i64 %idxprom13
  %8 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %8 to i32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.84, i32 noundef %conv, i32 noundef %conv15) #16
  br label %if.end16

if.end16:                                         ; preds = %if.then, %if.then10, %entry
  %rce.sroa.37.0 = phi double [ undef, %entry ], [ %rce.sroa.37.0.copyload, %if.then ], [ %rce.sroa.37.0.copyload, %if.then10 ]
  %rce.sroa.35.0 = phi double [ undef, %entry ], [ %rce.sroa.35.0.copyload, %if.then ], [ %rce.sroa.35.0.copyload, %if.then10 ]
  %rce.sroa.34984.0 = phi i64 [ undef, %entry ], [ %rce.sroa.34984.0.copyload, %if.then ], [ %rce.sroa.34984.0.copyload, %if.then10 ]
  %rce.sroa.30.0 = phi i32 [ undef, %entry ], [ %rce.sroa.30.0.copyload, %if.then ], [ %rce.sroa.30.0.copyload, %if.then10 ]
  %rce.sroa.23.0 = phi i32 [ undef, %entry ], [ %rce.sroa.23.0.copyload, %if.then ], [ %rce.sroa.23.0.copyload, %if.then10 ]
  %rce.sroa.16.0 = phi i32 [ undef, %entry ], [ %rce.sroa.16.0.copyload, %if.then ], [ %rce.sroa.16.0.copyload, %if.then10 ]
  %rce.sroa.7963.0 = phi double [ undef, %entry ], [ %rce.sroa.7963.0.copyload, %if.then ], [ %rce.sroa.7963.0.copyload, %if.then10 ]
  %cmp17 = icmp eq i32 %1, 1
  br i1 %cmp17, label %if.then19, label %if.else142

if.then19:                                        ; preds = %if.end16
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  %9 = load ptr, ptr %fref0, align 16
  %i_type21 = getelementptr inbounds i8, ptr %9, i64 4
  %10 = load i32, ptr %i_type21, align 4
  %11 = add i32 %10, -1
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864
  %12 = load ptr, ptr %fref1, align 16
  %i_type30 = getelementptr inbounds i8, ptr %12, i64 4
  %13 = load i32, ptr %i_type30, align 4
  %14 = add i32 %13, -1
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %15 = load ptr, ptr %fenc, align 8
  %16 = load i32, ptr %15, align 16
  %17 = load i32, ptr %9, align 16
  %sub = sub nsw i32 %16, %17
  %18 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %19 = load i32, ptr %12, align 16
  %sub49 = sub nsw i32 %16, %19
  %20 = tail call i32 @llvm.abs.i32(i32 %sub49, i1 true)
  %f_qp_avg_rc = getelementptr inbounds i8, ptr %9, i64 88
  %21 = load float, ptr %f_qp_avg_rc, align 8
  %f_qp_avg_rc54 = getelementptr inbounds i8, ptr %12, i64 88
  %22 = load float, ptr %f_qp_avg_rc54, align 8
  %cmp58 = icmp eq i32 %10, 4
  br i1 %cmp58, label %if.then60, label %if.end64

if.then60:                                        ; preds = %if.then19
  %pb_offset = getelementptr inbounds i8, ptr %0, i64 248
  %23 = load double, ptr %pb_offset, align 8
  %div = fmul double %23, 5.000000e-01
  %conv61 = fpext float %21 to double
  %sub62 = fsub double %conv61, %div
  %conv63 = fptrunc double %sub62 to float
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.then19
  %q0.0 = phi float [ %conv63, %if.then60 ], [ %21, %if.then19 ]
  %cmp68 = icmp eq i32 %13, 4
  br i1 %cmp68, label %if.then70, label %if.end76

if.then70:                                        ; preds = %if.end64
  %pb_offset71 = getelementptr inbounds i8, ptr %0, i64 248
  %24 = load double, ptr %pb_offset71, align 8
  %div72 = fmul double %24, 5.000000e-01
  %conv73 = fpext float %22 to double
  %sub74 = fsub double %conv73, %div72
  %conv75 = fptrunc double %sub74 to float
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %if.end64
  %q1.0 = phi float [ %conv75, %if.then70 ], [ %22, %if.end64 ]
  %25 = or i32 %14, %11
  %or.cond = icmp ult i32 %25, 2
  br i1 %or.cond, label %if.then79, label %if.else

if.then79:                                        ; preds = %if.end76
  %add80 = fadd float %q0.0, %q1.0
  %div81 = fmul float %add80, 5.000000e-01
  %conv82 = fpext float %div81 to double
  %ip_offset = getelementptr inbounds i8, ptr %0, i64 240
  %26 = load double, ptr %ip_offset, align 8
  %add83 = fadd double %26, %conv82
  %conv84 = fptrunc double %add83 to float
  br label %if.end100

if.else:                                          ; preds = %if.end76
  %switch = icmp ult i32 %11, 2
  br i1 %switch, label %if.end100, label %if.else87

if.else87:                                        ; preds = %if.else
  %switch804 = icmp ult i32 %14, 2
  br i1 %switch804, label %if.end100, label %if.else90

if.else90:                                        ; preds = %if.else87
  %conv91 = uitofp nneg i32 %20 to float
  %conv93 = uitofp nneg i32 %18 to float
  %mul94 = fmul float %q1.0, %conv93
  %27 = tail call float @llvm.fmuladd.f32(float %q0.0, float %conv91, float %mul94)
  %add95 = add nuw nsw i32 %20, %18
  %conv96 = uitofp nneg i32 %add95 to float
  %div97 = fdiv float %27, %conv96
  br label %if.end100

if.end100:                                        ; preds = %if.else87, %if.else, %if.else90, %if.then79
  %q.0 = phi float [ %conv84, %if.then79 ], [ %div97, %if.else90 ], [ %q1.0, %if.else ], [ %q0.0, %if.else87 ]
  %b_kept_as_ref = getelementptr inbounds i8, ptr %15, i64 72
  %28 = load i32, ptr %b_kept_as_ref, align 8
  %tobool102.not = icmp eq i32 %28, 0
  %pb_offset110 = getelementptr inbounds i8, ptr %0, i64 248
  %29 = load double, ptr %pb_offset110, align 8
  %div105 = fmul double %29, 5.000000e-01
  %.sink = select i1 %tobool102.not, double %29, double %div105
  %conv111 = fpext float %q.0 to double
  %add112 = fadd double %.sink, %conv111
  %q.1 = fptrunc double %add112 to float
  %30 = load i32, ptr %b_2pass, align 4
  %tobool116.not = icmp eq i32 %30, 0
  br i1 %tobool116.not, label %if.else121, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.end100
  %b_vbv = getelementptr inbounds i8, ptr %0, i64 8
  %31 = load i32, ptr %b_vbv, align 8
  %tobool118.not = icmp eq i32 %31, 0
  br i1 %tobool118.not, label %if.else121, label %if.then119

if.then119:                                       ; preds = %land.lhs.true117
  %conv120 = fpext float %q.1 to double
  %cmp.i = fcmp olt double %conv120, 1.000000e-01
  %qscale.addr.0.i = select i1 %cmp.i, double 1.000000e-01, double %conv120
  %div.i = fdiv double %rce.sroa.7963.0, %qscale.addr.0.i
  %call.i = tail call double @pow(double noundef %div.i, double noundef 1.100000e+00) #16
  %cmp4.i = fcmp ogt double %rce.sroa.7963.0, 1.000000e+00
  %cond.i = select i1 %cmp4.i, double %rce.sroa.7963.0, double 1.000000e+00
  %conv2.i = sitofp i32 %rce.sroa.16.0 to double
  %conv.i = sitofp i32 %rce.sroa.23.0 to double
  %add.i = fadd double %conv.i, 1.000000e-01
  %cmp7.i = fcmp ogt double %qscale.addr.0.i, 1.000000e+00
  %cond12.i = select i1 %cmp7.i, double %qscale.addr.0.i, double 1.000000e+00
  %div13.i = fdiv double %cond.i, %cond12.i
  %call14.i = tail call double @pow(double noundef %div13.i, double noundef 5.000000e-01) #16
  %mul15.i = fmul double %call14.i, %conv2.i
  %32 = tail call double @llvm.fmuladd.f64(double %add.i, double %call.i, double %mul15.i)
  %conv16.i = sitofp i32 %rce.sroa.30.0 to double
  %add17.i = fadd double %32, %conv16.i
  br label %if.end130

if.else121:                                       ; preds = %land.lhs.true117, %if.end100
  %pred_b_from_p = getelementptr inbounds i8, ptr %0, i64 872
  %33 = load ptr, ptr %pred_b_from_p, align 8
  %conv122 = fpext float %q.1 to double
  %i_ref1 = getelementptr inbounds i8, ptr %h, i64 14856
  %34 = load i32, ptr %i_ref1, align 8
  %sub124 = add nsw i32 %34, -1
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %idxprom125
  %35 = load ptr, ptr %arrayidx126, align 8
  %i_satd = getelementptr inbounds i8, ptr %35, i64 9460
  %36 = load i32, ptr %i_satd, align 4
  %conv127 = sitofp i32 %36 to double
  %37 = load double, ptr %33, align 8
  %offset.i = getelementptr inbounds i8, ptr %33, i64 24
  %38 = load double, ptr %offset.i, align 8
  %39 = tail call double @llvm.fmuladd.f64(double %37, double %conv127, double %38)
  %count.i = getelementptr inbounds i8, ptr %33, i64 8
  %40 = load double, ptr %count.i, align 8
  %mul.i = fmul double %40, %conv122
  %div.i806 = fdiv double %39, %mul.i
  br label %if.end130

if.end130:                                        ; preds = %if.else121, %if.then119
  %div.i806.sink = phi double [ %div.i806, %if.else121 ], [ %add17.i, %if.then119 ]
  %frame_size_planned129 = getelementptr inbounds i8, ptr %0, i64 520
  store double %div.i806.sink, ptr %frame_size_planned129, align 8
  %conv132 = fptrunc double %div.i806.sink to float
  %41 = load ptr, ptr %rc, align 16
  %frame_size_estimated = getelementptr inbounds i8, ptr %41, i64 508
  store float %conv132, ptr %frame_size_estimated, align 4
  %b_vbv134 = getelementptr inbounds i8, ptr %0, i64 8
  %42 = load i32, ptr %b_vbv134, align 8
  %tobool135.not = icmp eq i32 %42, 0
  br i1 %tobool135.not, label %if.end138, label %if.then136

if.then136:                                       ; preds = %if.end130
  %call137 = tail call i32 @x264_rc_analyse_slice(ptr noundef nonnull %h) #16
  %last_satd = getelementptr inbounds i8, ptr %0, i64 168
  store i32 %call137, ptr %last_satd, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.end130
  %qp_novbv = getelementptr inbounds i8, ptr %0, i64 96
  store float %q.1, ptr %qp_novbv, align 8
  %conv139 = fpext float %q.1 to double
  %sub.i = fadd double %conv139, -1.200000e+01
  %div.i807 = fdiv double %sub.i, 6.000000e+00
  %exp2.i = tail call double @exp2(double %div.i807) #16
  %mul.i808 = fmul double %exp2.i, 8.500000e-01
  %conv141 = fptrunc double %mul.i808 to float
  br label %cleanup560

if.else142:                                       ; preds = %if.end16
  %rate_tolerance = getelementptr inbounds i8, ptr %0, i64 32
  %43 = load double, ptr %rate_tolerance, align 8
  %mul143 = fmul double %43, 2.000000e+00
  %bitrate = getelementptr inbounds i8, ptr %0, i64 24
  %44 = load double, ptr %bitrate, align 8
  %mul144 = fmul double %mul143, %44
  %45 = load i32, ptr %b_2pass, align 4
  %tobool146.not = icmp eq i32 %45, 0
  br i1 %tobool146.not, label %if.else328, label %if.then147

if.then147:                                       ; preds = %if.else142
  %lmin148 = getelementptr inbounds i8, ptr %0, i64 400
  %idxprom149 = sext i32 %1 to i64
  %arrayidx150 = getelementptr inbounds [5 x double], ptr %lmin148, i64 0, i64 %idxprom149
  %46 = load double, ptr %arrayidx150, align 8
  %lmax151 = getelementptr inbounds i8, ptr %0, i64 440
  %arrayidx153 = getelementptr inbounds [5 x double], ptr %lmax151, i64 0, i64 %idxprom149
  %47 = load double, ptr %arrayidx153, align 8
  %num_entries = getelementptr inbounds i8, ptr %0, i64 304
  %48 = load i32, ptr %num_entries, align 8
  %i_frame = getelementptr inbounds i8, ptr %h, i64 1844
  %49 = load i32, ptr %i_frame, align 4
  %cmp154 = icmp sgt i32 %48, %49
  br i1 %cmp154, label %if.then156, label %if.end164

if.then156:                                       ; preds = %if.then147
  %sub159 = sub nsw i32 %48, %49
  %conv160 = sitofp i32 %sub159 to double
  %call161 = tail call double @sqrt(double noundef %conv160) #16
  %mul162 = fmul double %call161, 5.000000e-01
  %mul163 = fmul double %mul144, %mul162
  br label %if.end164

if.end164:                                        ; preds = %if.then156, %if.then147
  %abr_buffer.0 = phi double [ %mul163, %if.then156 ], [ %mul144, %if.then147 ]
  %b_vbv165 = getelementptr inbounds i8, ptr %0, i64 8
  %50 = load i32, ptr %b_vbv165, align 8
  %tobool166.not = icmp eq i32 %50, 0
  br i1 %tobool166.not, label %if.else201, label %if.then167

if.then167:                                       ; preds = %if.end164
  %i_thread_frames = getelementptr inbounds i8, ptr %h, i64 1852
  %51 = load i32, ptr %i_thread_frames, align 4
  %cmp168 = icmp sgt i32 %51, 1
  br i1 %cmp168, label %if.then170, label %if.end229

if.then170:                                       ; preds = %if.then167
  %52 = load ptr, ptr %rc, align 16
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %53 = load ptr, ptr %thread, align 16
  %rc173 = getelementptr inbounds i8, ptr %53, i64 26704
  %54 = load ptr, ptr %rc173, align 16
  %sub.ptr.lhs.cast = ptrtoint ptr %52 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %54 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 936
  %conv174 = trunc i64 %sub.ptr.div to i32
  %55 = add nsw i32 %51, -1
  %min.iters.check = icmp ult i32 %51, 5
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %if.then170
  %n.vec = and i32 %55, -4
  %ind.end = or disjoint i32 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %pred.load.continue1010, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %pred.load.continue1010 ]
  %vec.phi = phi i64 [ %mul, %vector.ph ], [ %predphi, %pred.load.continue1010 ]
  %vec.phi1002 = phi i64 [ 0, %vector.ph ], [ %predphi1011, %pred.load.continue1010 ]
  %vec.phi1003 = phi i64 [ 0, %vector.ph ], [ %predphi1012, %pred.load.continue1010 ]
  %vec.phi1004 = phi i64 [ 0, %vector.ph ], [ %predphi1013, %pred.load.continue1010 ]
  %offset.idx = or disjoint i32 %index, 1
  %56 = or disjoint i32 %index, 2
  %57 = or disjoint i32 %index, 3
  %58 = add i32 %index, 4
  %59 = add nsw i32 %offset.idx, %conv174
  %60 = add nsw i32 %56, %conv174
  %61 = add nsw i32 %57, %conv174
  %62 = add nsw i32 %58, %conv174
  %63 = srem i32 %59, %51
  %64 = srem i32 %60, %51
  %65 = srem i32 %61, %51
  %66 = srem i32 %62, %51
  %67 = sext i32 %63 to i64
  %68 = sext i32 %64 to i64
  %69 = sext i32 %65 to i64
  %70 = sext i32 %66 to i64
  %71 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %67
  %72 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %68
  %73 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %69
  %74 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %70
  %75 = load ptr, ptr %71, align 8
  %76 = load ptr, ptr %72, align 8
  %77 = load ptr, ptr %73, align 8
  %78 = load ptr, ptr %74, align 8
  %79 = getelementptr inbounds i8, ptr %75, i64 1740
  %80 = getelementptr inbounds i8, ptr %76, i64 1740
  %81 = getelementptr inbounds i8, ptr %77, i64 1740
  %82 = getelementptr inbounds i8, ptr %78, i64 1740
  %83 = load i32, ptr %79, align 4
  %84 = load i32, ptr %80, align 4
  %85 = load i32, ptr %81, align 4
  %86 = load i32, ptr %82, align 4
  %.not = icmp eq i32 %83, 0
  %.not1016 = icmp eq i32 %84, 0
  %.not1017 = icmp eq i32 %85, 0
  %.not1018 = icmp eq i32 %86, 0
  br i1 %.not, label %pred.load.continue, label %pred.load.if

pred.load.if:                                     ; preds = %vector.body
  %87 = getelementptr inbounds i8, ptr %75, i64 26704
  %88 = load ptr, ptr %87, align 16
  %89 = getelementptr inbounds i8, ptr %88, i64 520
  %90 = load double, ptr %89, align 8
  %91 = getelementptr inbounds i8, ptr %88, i64 508
  %92 = load float, ptr %91, align 4
  br label %pred.load.continue

pred.load.continue:                               ; preds = %pred.load.if, %vector.body
  %93 = phi double [ poison, %vector.body ], [ %90, %pred.load.if ]
  %94 = phi float [ poison, %vector.body ], [ %92, %pred.load.if ]
  br i1 %.not1016, label %pred.load.continue1006, label %pred.load.if1005

pred.load.if1005:                                 ; preds = %pred.load.continue
  %95 = getelementptr inbounds i8, ptr %76, i64 26704
  %96 = load ptr, ptr %95, align 16
  %97 = getelementptr inbounds i8, ptr %96, i64 520
  %98 = load double, ptr %97, align 8
  %99 = getelementptr inbounds i8, ptr %96, i64 508
  %100 = load float, ptr %99, align 4
  br label %pred.load.continue1006

pred.load.continue1006:                           ; preds = %pred.load.if1005, %pred.load.continue
  %101 = phi double [ poison, %pred.load.continue ], [ %98, %pred.load.if1005 ]
  %102 = phi float [ poison, %pred.load.continue ], [ %100, %pred.load.if1005 ]
  br i1 %.not1017, label %pred.load.continue1008, label %pred.load.if1007

pred.load.if1007:                                 ; preds = %pred.load.continue1006
  %103 = getelementptr inbounds i8, ptr %77, i64 26704
  %104 = load ptr, ptr %103, align 16
  %105 = getelementptr inbounds i8, ptr %104, i64 520
  %106 = load double, ptr %105, align 8
  %107 = getelementptr inbounds i8, ptr %104, i64 508
  %108 = load float, ptr %107, align 4
  br label %pred.load.continue1008

pred.load.continue1008:                           ; preds = %pred.load.if1007, %pred.load.continue1006
  %109 = phi double [ poison, %pred.load.continue1006 ], [ %106, %pred.load.if1007 ]
  %110 = phi float [ poison, %pred.load.continue1006 ], [ %108, %pred.load.if1007 ]
  br i1 %.not1018, label %pred.load.continue1010, label %pred.load.if1009

pred.load.if1009:                                 ; preds = %pred.load.continue1008
  %111 = getelementptr inbounds i8, ptr %78, i64 26704
  %112 = load ptr, ptr %111, align 16
  %113 = getelementptr inbounds i8, ptr %112, i64 520
  %114 = load double, ptr %113, align 8
  %115 = getelementptr inbounds i8, ptr %112, i64 508
  %116 = load float, ptr %115, align 4
  br label %pred.load.continue1010

pred.load.continue1010:                           ; preds = %pred.load.if1009, %pred.load.continue1008
  %117 = phi double [ poison, %pred.load.continue1008 ], [ %114, %pred.load.if1009 ]
  %118 = phi float [ poison, %pred.load.continue1008 ], [ %116, %pred.load.if1009 ]
  %119 = fpext float %94 to double
  %120 = fpext float %102 to double
  %121 = fpext float %110 to double
  %122 = fpext float %118 to double
  %123 = fcmp ogt double %93, %119
  %124 = fcmp ogt double %101, %120
  %125 = fcmp ogt double %109, %121
  %126 = fcmp ogt double %117, %122
  %127 = select i1 %123, double %93, double %119
  %128 = select i1 %124, double %101, double %120
  %129 = select i1 %125, double %109, double %121
  %130 = select i1 %126, double %117, double %122
  %131 = fptosi double %127 to i64
  %132 = fptosi double %128 to i64
  %133 = fptosi double %129 to i64
  %134 = fptosi double %130 to i64
  %135 = select i1 %.not, i64 0, i64 %131
  %predphi = add i64 %vec.phi, %135
  %136 = select i1 %.not1016, i64 0, i64 %132
  %predphi1011 = add i64 %vec.phi1002, %136
  %137 = select i1 %.not1017, i64 0, i64 %133
  %predphi1012 = add i64 %vec.phi1003, %137
  %138 = select i1 %.not1018, i64 0, i64 %134
  %predphi1013 = add i64 %vec.phi1004, %138
  %index.next = add nuw i32 %index, 4
  %139 = icmp eq i32 %index.next, %n.vec
  br i1 %139, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %pred.load.continue1010
  %bin.rdx = add i64 %predphi1011, %predphi
  %bin.rdx1014 = add i64 %predphi1012, %bin.rdx
  %bin.rdx1015 = add i64 %predphi1013, %bin.rdx1014
  %cmp.n = icmp eq i32 %55, %n.vec
  br i1 %cmp.n, label %if.end229, label %for.body.preheader

for.body.preheader:                               ; preds = %middle.block, %if.then170
  %predicted_bits.0993.ph = phi i64 [ %mul, %if.then170 ], [ %bin.rdx1015, %middle.block ]
  %i.0992.ph = phi i32 [ 1, %if.then170 ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %predicted_bits.0993 = phi i64 [ %predicted_bits.1, %cleanup ], [ %predicted_bits.0993.ph, %for.body.preheader ]
  %i.0992 = phi i32 [ %inc, %cleanup ], [ %i.0992.ph, %for.body.preheader ]
  %add179 = add nsw i32 %i.0992, %conv174
  %rem = srem i32 %add179, %51
  %idxprom181 = sext i32 %rem to i64
  %arrayidx182 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom181
  %140 = load ptr, ptr %arrayidx182, align 8
  %b_thread_active = getelementptr inbounds i8, ptr %140, i64 1740
  %141 = load i32, ptr %b_thread_active, align 4
  %tobool185.not = icmp eq i32 %141, 0
  br i1 %tobool185.not, label %cleanup, label %if.end187

if.end187:                                        ; preds = %for.body
  %rc183 = getelementptr inbounds i8, ptr %140, i64 26704
  %142 = load ptr, ptr %rc183, align 16
  %frame_size_planned184 = getelementptr inbounds i8, ptr %142, i64 520
  %143 = load double, ptr %frame_size_planned184, align 8
  %frame_size_estimated189 = getelementptr inbounds i8, ptr %142, i64 508
  %144 = load float, ptr %frame_size_estimated189, align 4
  %conv190 = fpext float %144 to double
  %cmp191 = fcmp ogt double %143, %conv190
  %.conv190 = select i1 %cmp191, double %143, double %conv190
  %conv196 = fptosi double %.conv190 to i64
  %add197 = add nsw i64 %predicted_bits.0993, %conv196
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end187
  %predicted_bits.1 = phi i64 [ %add197, %if.end187 ], [ %predicted_bits.0993, %for.body ]
  %inc = add nuw nsw i32 %i.0992, 1
  %exitcond.not = icmp eq i32 %inc, %51
  br i1 %exitcond.not, label %if.end229, label %for.body, !llvm.loop !21

if.else201:                                       ; preds = %if.end164
  %145 = load i32, ptr %i_frame, align 4
  %i_thread_frames203 = getelementptr inbounds i8, ptr %h, i64 1852
  %146 = load i32, ptr %i_thread_frames203, align 4
  %cmp204 = icmp slt i32 %145, %146
  %sub218 = add nsw i32 %146, -1
  %.sink1001 = select i1 %cmp204, i32 %145, i32 %sub218
  %conv209 = sitofp i32 %.sink1001 to double
  %147 = load double, ptr %bitrate, align 8
  %mul211 = fmul double %147, %conv209
  %fps = getelementptr inbounds i8, ptr %0, i64 16
  %148 = load double, ptr %fps, align 8
  %div212 = fdiv double %mul211, %148
  %conv213 = sitofp i64 %mul to double
  %add214 = fadd double %div212, %conv213
  %conv215 = fptosi double %add214 to i64
  br label %if.end229

if.end229:                                        ; preds = %cleanup, %middle.block, %if.else201, %if.then167
  %149 = phi i32 [ %51, %if.then167 ], [ %146, %if.else201 ], [ %51, %middle.block ], [ %51, %cleanup ]
  %predicted_bits.2 = phi i64 [ %mul, %if.then167 ], [ %conv215, %if.else201 ], [ %bin.rdx1015, %middle.block ], [ %predicted_bits.1, %cleanup ]
  %sub230 = sub nsw i64 %predicted_bits.2, %rce.sroa.34984.0
  %conv231 = fptrunc double %rce.sroa.37.0 to float
  %conv232 = sitofp i64 %sub230 to double
  %sub233 = fsub double %abr_buffer.0, %conv232
  %div234 = fdiv double %sub233, %abr_buffer.0
  %cmp.i809 = fcmp olt double %div234, 5.000000e-01
  %cmp1.i = fcmp ogt double %div234, 2.000000e+00
  %cond.i810 = select i1 %cmp1.i, double 2.000000e+00, double %div234
  %cond5.i = select i1 %cmp.i809, double 5.000000e-01, double %cond.i810
  %conv236 = fpext float %conv231 to double
  %div237 = fdiv double %conv236, %cond5.i
  %conv238 = fptrunc double %div237 to float
  %150 = load i32, ptr %i_frame, align 4
  %add240 = add nsw i32 %150, 1
  %sub242 = sub i32 %add240, %149
  %conv243 = sitofp i32 %sub242 to double
  %fps244 = getelementptr inbounds i8, ptr %0, i64 16
  %151 = load double, ptr %fps244, align 8
  %cmp245 = fcmp ugt double %151, %conv243
  br i1 %cmp245, label %if.end265, label %land.lhs.true247

land.lhs.true247:                                 ; preds = %if.end229
  %expected_bits_sum = getelementptr inbounds i8, ptr %0, i64 192
  %152 = load double, ptr %expected_bits_sum, align 8
  %cmp248 = fcmp ogt double %152, 0.000000e+00
  br i1 %cmp248, label %if.then250, label %if.end265

if.then250:                                       ; preds = %land.lhs.true247
  %conv252 = sitofp i32 %150 to double
  %153 = load i32, ptr %num_entries, align 8
  %conv254 = sitofp i32 %153 to double
  %div255 = fdiv double %conv252, %conv254
  %mul256 = fmul double %div255, 1.000000e+02
  %cmp.i811 = fcmp olt double %mul256, 0.000000e+00
  %cmp1.i812 = fcmp ogt double %mul256, 1.000000e+00
  %cond.i813 = select i1 %cmp1.i812, double 1.000000e+00, double %mul256
  %cond5.i814 = select i1 %cmp.i811, double 0.000000e+00, double %cond.i813
  %conv258 = sitofp i64 %mul to double
  %div260 = fdiv double %conv258, %152
  %call261 = tail call double @pow(double noundef %div260, double noundef %cond5.i814) #16
  %conv262 = fpext float %conv238 to double
  %mul263 = fmul double %call261, %conv262
  %conv264 = fptrunc double %mul263 to float
  %.pre = load i32, ptr %b_vbv165, align 8
  br label %if.end265

if.end265:                                        ; preds = %if.then250, %land.lhs.true247, %if.end229
  %154 = phi i32 [ %.pre, %if.then250 ], [ %50, %land.lhs.true247 ], [ %50, %if.end229 ]
  %q.2 = phi float [ %conv264, %if.then250 ], [ %conv238, %land.lhs.true247 ], [ %conv238, %if.end229 ]
  %tobool267.not = icmp eq i32 %154, 0
  %.pre996 = fpext float %q.2 to double
  br i1 %tobool267.not, label %if.end265.if.end324_crit_edge, label %if.then268

if.end265.if.end324_crit_edge:                    ; preds = %if.end265
  %.pre997 = sitofp i32 %rce.sroa.16.0 to double
  br label %if.end324

if.then268:                                       ; preds = %if.end265
  %cmp.i815 = fcmp olt double %.pre996, 1.000000e-01
  %qscale.addr.0.i816 = select i1 %cmp.i815, double 1.000000e-01, double %.pre996
  %div.i819 = fdiv double %rce.sroa.7963.0, %qscale.addr.0.i816
  %call.i820 = tail call double @pow(double noundef %div.i819, double noundef 1.100000e+00) #16
  %cmp4.i822 = fcmp ogt double %rce.sroa.7963.0, 1.000000e+00
  %cond.i823 = select i1 %cmp4.i822, double %rce.sroa.7963.0, double 1.000000e+00
  %conv2.i824 = sitofp i32 %rce.sroa.16.0 to double
  %conv.i825 = sitofp i32 %rce.sroa.23.0 to double
  %add.i826 = fadd double %conv.i825, 1.000000e-01
  %cmp7.i827 = fcmp ogt double %qscale.addr.0.i816, 1.000000e+00
  %cond12.i828 = select i1 %cmp7.i827, double %qscale.addr.0.i816, double 1.000000e+00
  %div13.i829 = fdiv double %cond.i823, %cond12.i828
  %call14.i830 = tail call double @pow(double noundef %div13.i829, double noundef 5.000000e-01) #16
  %mul15.i831 = fmul double %call14.i830, %conv2.i824
  %155 = tail call double @llvm.fmuladd.f64(double %add.i826, double %call.i820, double %mul15.i831)
  %conv16.i833 = sitofp i32 %rce.sroa.30.0 to double
  %add17.i834 = fadd double %155, %conv16.i833
  %buffer_fill = getelementptr inbounds i8, ptr %0, i64 120
  %156 = load double, ptr %buffer_fill, align 8
  %buffer_rate = getelementptr inbounds i8, ptr %0, i64 128
  %157 = load double, ptr %buffer_rate, align 8
  %add271 = fadd double %156, %157
  %sub272 = fsub double %add271, %add17.i834
  %buffer_size = getelementptr inbounds i8, ptr %0, i64 104
  %158 = load double, ptr %buffer_size, align 8
  %div274 = fdiv double %rce.sroa.35.0, %158
  %sub276 = fsub double 2.000000e+00, %div274
  %mul277 = fmul double %sub276, %.pre996
  %add278 = fadd double %div274, 1.000000e+00
  %cmp280 = fcmp ogt double %mul277, %rce.sroa.37.0
  %cond286 = select i1 %cmp280, double %mul277, double %rce.sroa.37.0
  %cmp287 = fcmp olt double %div274, 5.000000e-02
  %qmax.0 = select i1 %cmp287, double %47, double %cond286
  %cmp291 = fcmp olt double %qmax.0, %47
  %cond296 = select i1 %cmp291, double %qmax.0, double %47
  %div298 = fdiv double %rce.sroa.35.0, %add278
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then268
  %expected_vbv.0 = phi double [ %sub272, %if.then268 ], [ %sub321, %while.body ]
  %q.3 = phi float [ %q.2, %if.then268 ], [ %conv315, %while.body ]
  %cmp299 = fcmp olt double %expected_vbv.0, %div298
  %conv302 = fpext float %q.3 to double
  %cmp303 = fcmp ogt double %cond296, %conv302
  %or.cond801 = select i1 %cmp299, i1 %cmp303, i1 false
  br i1 %or.cond801, label %while.body, label %lor.rhs305

lor.rhs305:                                       ; preds = %while.cond
  %cmp306 = fcmp olt double %expected_vbv.0, 0.000000e+00
  %cmp309 = fcmp ogt double %47, %conv302
  %159 = select i1 %cmp306, i1 %cmp309, i1 false
  br i1 %159, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond, %lor.rhs305
  %mul314 = fmul double %conv302, 1.050000e+00
  %conv315 = fptrunc double %mul314 to float
  %conv316 = fpext float %conv315 to double
  %cmp.i835 = fcmp olt double %conv316, 1.000000e-01
  %qscale.addr.0.i836 = select i1 %cmp.i835, double 1.000000e-01, double %conv316
  %div.i839 = fdiv double %rce.sroa.7963.0, %qscale.addr.0.i836
  %call.i840 = tail call double @pow(double noundef %div.i839, double noundef 1.100000e+00) #16
  %cmp7.i847 = fcmp ogt double %qscale.addr.0.i836, 1.000000e+00
  %cond12.i848 = select i1 %cmp7.i847, double %qscale.addr.0.i836, double 1.000000e+00
  %div13.i849 = fdiv double %cond.i823, %cond12.i848
  %call14.i850 = tail call double @pow(double noundef %div13.i849, double noundef 5.000000e-01) #16
  %mul15.i851 = fmul double %call14.i850, %conv2.i824
  %160 = tail call double @llvm.fmuladd.f64(double %add.i826, double %call.i840, double %mul15.i851)
  %add17.i854 = fadd double %160, %conv16.i833
  %161 = load double, ptr %buffer_fill, align 8
  %162 = load double, ptr %buffer_rate, align 8
  %add320 = fadd double %161, %162
  %sub321 = fsub double %add320, %add17.i854
  br label %while.cond

while.end:                                        ; preds = %lor.rhs305
  %call322 = tail call i32 @x264_rc_analyse_slice(ptr noundef %h) #16
  %last_satd323 = getelementptr inbounds i8, ptr %0, i64 168
  store i32 %call322, ptr %last_satd323, align 8
  br label %if.end324

if.end324:                                        ; preds = %if.end265.if.end324_crit_edge, %while.end
  %.pre-phi = phi double [ %.pre997, %if.end265.if.end324_crit_edge ], [ %conv2.i824, %while.end ]
  %conv325.pre-phi = phi double [ %.pre996, %if.end265.if.end324_crit_edge ], [ %conv302, %while.end ]
  %cmp.i855 = fcmp ogt double %46, %conv325.pre-phi
  %cmp1.i856 = fcmp olt double %47, %conv325.pre-phi
  %cond.i857 = select i1 %cmp1.i856, double %47, double %conv325.pre-phi
  %cond5.i858 = select i1 %cmp.i855, double %46, double %cond.i857
  br label %if.end505

if.else328:                                       ; preds = %if.else142
  %call329 = tail call i32 @x264_rc_analyse_slice(ptr noundef nonnull %h) #16
  %last_satd330 = getelementptr inbounds i8, ptr %0, i64 168
  store i32 %call329, ptr %last_satd330, align 8
  %short_term_cplxsum = getelementptr inbounds i8, ptr %0, i64 216
  %conv334 = sitofp i32 %call329 to double
  %163 = load <2 x double>, ptr %short_term_cplxsum, align 8
  %164 = fmul <2 x double> %163, <double 5.000000e-01, double 5.000000e-01>
  %165 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %conv334, i64 0
  %166 = fadd <2 x double> %164, %165
  store <2 x double> %166, ptr %short_term_cplxsum, align 8
  %167 = extractelement <2 x double> %166, i64 0
  %168 = extractelement <2 x double> %166, i64 1
  %div342 = fdiv double %167, %168
  %conv343 = fptrunc double %div342 to float
  %rc345 = getelementptr inbounds i8, ptr %h, i64 488
  %169 = load i32, ptr %rc345, align 8
  %cmp346 = icmp eq i32 %169, 1
  br i1 %cmp346, label %if.then348, label %if.else353

if.then348:                                       ; preds = %if.else328
  %rate_factor_constant = getelementptr inbounds i8, ptr %0, i64 232
  %170 = load double, ptr %rate_factor_constant, align 8
  %fenc349 = getelementptr inbounds i8, ptr %h, i64 14680
  %171 = load ptr, ptr %fenc349, align 8
  %i_frame350 = getelementptr inbounds i8, ptr %171, i64 56
  %172 = load i32, ptr %i_frame350, align 8
  %h.val805 = load ptr, ptr %rc, align 16
  %i_zones.i.i = getelementptr inbounds i8, ptr %h.val805, i64 888
  %173 = load i32, ptr %i_zones.i.i, align 8
  %cmp4.i.i = icmp slt i32 %173, 1
  br i1 %cmp4.i.i, label %get_zone.exit.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then348
  %zones.i.i = getelementptr inbounds i8, ptr %h.val805, i64 896
  %174 = load ptr, ptr %zones.i.i, align 8
  %175 = zext nneg i32 %173 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %175, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %cleanup.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %arrayidx.i.i = getelementptr inbounds %struct.x264_zone_t, ptr %174, i64 %indvars.iv.next.i.i
  %176 = load i32, ptr %arrayidx.i.i, align 8
  %cmp2.not.i.i = icmp sgt i32 %176, %172
  br i1 %cmp2.not.i.i, label %cleanup.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %i_end.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i64 4
  %177 = load i32, ptr %i_end.i.i, align 4
  %cmp3.not.i.i = icmp slt i32 %177, %172
  br i1 %cmp3.not.i.i, label %cleanup.i.i, label %get_zone.exit.i

cleanup.i.i:                                      ; preds = %land.lhs.true.i.i, %for.body.i.i
  %cmp.i.i = icmp ult i64 %indvars.iv.i.i, 2
  br i1 %cmp.i.i, label %get_zone.exit.i, label %for.body.i.i

get_zone.exit.i:                                  ; preds = %cleanup.i.i, %land.lhs.true.i.i, %if.then348
  %spec.select.i.i = phi ptr [ null, %if.then348 ], [ %arrayidx.i.i, %land.lhs.true.i.i ], [ null, %cleanup.i.i ]
  %conv.i859 = fpext float %conv343 to double
  %qcompress.i = getelementptr inbounds i8, ptr %h.val805, i64 40
  %178 = load double, ptr %qcompress.i, align 8
  %sub.i860 = fsub double 1.000000e+00, %178
  %call1.i = tail call double @pow(double noundef %conv.i859, double noundef %sub.i860) #16
  %179 = tail call double @llvm.fabs.f64(double %call1.i)
  %180 = fcmp ueq double %179, 0x7FF0000000000000
  %cmp.i864 = icmp eq i32 %call329, 0
  %or.cond989 = select i1 %180, i1 true, i1 %cmp.i864
  br i1 %or.cond989, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %get_zone.exit.i
  %last_qscale_for.i = getelementptr inbounds i8, ptr %h.val805, i64 328
  %idxprom.i = sext i32 %1 to i64
  %arrayidx.i = getelementptr inbounds [5 x double], ptr %last_qscale_for.i, i64 0, i64 %idxprom.i
  %181 = load double, ptr %arrayidx.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %get_zone.exit.i
  %last_rceq.i = getelementptr inbounds i8, ptr %h.val805, i64 176
  store double %call1.i, ptr %last_rceq.i, align 8
  %div.i865 = fdiv double %call1.i, %170
  %last_qscale.i = getelementptr inbounds i8, ptr %h.val805, i64 320
  store double %div.i865, ptr %last_qscale.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %q.0.i = phi double [ %181, %if.then.i ], [ %div.i865, %if.else.i ]
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %get_qscale.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %b_force_qp.i = getelementptr inbounds i8, ptr %spec.select.i.i, i64 8
  %182 = load i32, ptr %b_force_qp.i, align 8
  %tobool4.not.i = icmp eq i32 %182, 0
  br i1 %tobool4.not.i, label %if.else8.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  %i_qp.i = getelementptr inbounds i8, ptr %spec.select.i.i, i64 12
  %183 = load i32, ptr %i_qp.i, align 4
  %conv6.i = sitofp i32 %183 to double
  %sub.i.i = fadd double %conv6.i, -1.200000e+01
  %div.i.i = fdiv double %sub.i.i, 6.000000e+00
  %exp2.i.i = tail call double @exp2(double %div.i.i) #16
  %mul.i.i = fmul double %exp2.i.i, 8.500000e-01
  br label %get_qscale.exit

if.else8.i:                                       ; preds = %if.then3.i
  %f_bitrate_factor.i = getelementptr inbounds i8, ptr %spec.select.i.i, i64 16
  %184 = load float, ptr %f_bitrate_factor.i, align 8
  %conv9.i = fpext float %184 to double
  %div10.i = fdiv double %q.0.i, %conv9.i
  br label %get_qscale.exit

get_qscale.exit:                                  ; preds = %if.end.i, %if.then5.i, %if.else8.i
  %q.1.i = phi double [ %mul.i.i, %if.then5.i ], [ %div10.i, %if.else8.i ], [ %q.0.i, %if.end.i ]
  %conv352 = fptrunc double %q.1.i to float
  br label %if.end411

if.else353:                                       ; preds = %if.else328
  %wanted_bits_window = getelementptr inbounds i8, ptr %0, i64 200
  %185 = load double, ptr %wanted_bits_window, align 8
  %cplxr_sum = getelementptr inbounds i8, ptr %0, i64 184
  %186 = load double, ptr %cplxr_sum, align 8
  %div354 = fdiv double %185, %186
  %fenc355 = getelementptr inbounds i8, ptr %h, i64 14680
  %187 = load ptr, ptr %fenc355, align 8
  %i_frame356 = getelementptr inbounds i8, ptr %187, i64 56
  %188 = load i32, ptr %i_frame356, align 8
  %h.val = load ptr, ptr %rc, align 16
  %i_zones.i.i866 = getelementptr inbounds i8, ptr %h.val, i64 888
  %189 = load i32, ptr %i_zones.i.i866, align 8
  %cmp4.i.i867 = icmp slt i32 %189, 1
  br i1 %cmp4.i.i867, label %get_zone.exit.i878, label %for.body.lr.ph.i.i868

for.body.lr.ph.i.i868:                            ; preds = %if.else353
  %zones.i.i869 = getelementptr inbounds i8, ptr %h.val, i64 896
  %190 = load ptr, ptr %zones.i.i869, align 8
  %191 = zext nneg i32 %189 to i64
  br label %for.body.i.i870

for.body.i.i870:                                  ; preds = %cleanup.i.i916, %for.body.lr.ph.i.i868
  %indvars.iv.i.i871 = phi i64 [ %191, %for.body.lr.ph.i.i868 ], [ %indvars.iv.next.i.i872, %cleanup.i.i916 ]
  %indvars.iv.next.i.i872 = add nsw i64 %indvars.iv.i.i871, -1
  %arrayidx.i.i873 = getelementptr inbounds %struct.x264_zone_t, ptr %190, i64 %indvars.iv.next.i.i872
  %192 = load i32, ptr %arrayidx.i.i873, align 8
  %cmp2.not.i.i874 = icmp sgt i32 %192, %188
  br i1 %cmp2.not.i.i874, label %cleanup.i.i916, label %land.lhs.true.i.i875

land.lhs.true.i.i875:                             ; preds = %for.body.i.i870
  %i_end.i.i876 = getelementptr inbounds i8, ptr %arrayidx.i.i873, i64 4
  %193 = load i32, ptr %i_end.i.i876, align 4
  %cmp3.not.i.i877 = icmp slt i32 %193, %188
  br i1 %cmp3.not.i.i877, label %cleanup.i.i916, label %get_zone.exit.i878

cleanup.i.i916:                                   ; preds = %land.lhs.true.i.i875, %for.body.i.i870
  %cmp.i.i917 = icmp ult i64 %indvars.iv.i.i871, 2
  br i1 %cmp.i.i917, label %get_zone.exit.i878, label %for.body.i.i870

get_zone.exit.i878:                               ; preds = %cleanup.i.i916, %land.lhs.true.i.i875, %if.else353
  %spec.select.i.i879 = phi ptr [ null, %if.else353 ], [ %arrayidx.i.i873, %land.lhs.true.i.i875 ], [ null, %cleanup.i.i916 ]
  %conv.i881 = fpext float %conv343 to double
  %qcompress.i882 = getelementptr inbounds i8, ptr %h.val, i64 40
  %194 = load double, ptr %qcompress.i882, align 8
  %sub.i883 = fsub double 1.000000e+00, %194
  %call1.i884 = tail call double @pow(double noundef %conv.i881, double noundef %sub.i883) #16
  %195 = tail call double @llvm.fabs.f64(double %call1.i884)
  %196 = fcmp ueq double %195, 0x7FF0000000000000
  %cmp.i889 = icmp eq i32 %call329, 0
  %or.cond990 = select i1 %196, i1 true, i1 %cmp.i889
  br i1 %or.cond990, label %if.then.i912, label %if.else.i890

if.then.i912:                                     ; preds = %get_zone.exit.i878
  %last_qscale_for.i913 = getelementptr inbounds i8, ptr %h.val, i64 328
  %idxprom.i914 = sext i32 %1 to i64
  %arrayidx.i915 = getelementptr inbounds [5 x double], ptr %last_qscale_for.i913, i64 0, i64 %idxprom.i914
  %197 = load double, ptr %arrayidx.i915, align 8
  br label %if.end.i894

if.else.i890:                                     ; preds = %get_zone.exit.i878
  %last_rceq.i891 = getelementptr inbounds i8, ptr %h.val, i64 176
  store double %call1.i884, ptr %last_rceq.i891, align 8
  %div.i892 = fdiv double %call1.i884, %div354
  %last_qscale.i893 = getelementptr inbounds i8, ptr %h.val, i64 320
  store double %div.i892, ptr %last_qscale.i893, align 8
  br label %if.end.i894

if.end.i894:                                      ; preds = %if.else.i890, %if.then.i912
  %q.0.i895 = phi double [ %197, %if.then.i912 ], [ %div.i892, %if.else.i890 ]
  %tobool.not.i896 = icmp eq ptr %spec.select.i.i879, null
  br i1 %tobool.not.i896, label %get_qscale.exit918, label %if.then3.i897

if.then3.i897:                                    ; preds = %if.end.i894
  %b_force_qp.i898 = getelementptr inbounds i8, ptr %spec.select.i.i879, i64 8
  %198 = load i32, ptr %b_force_qp.i898, align 8
  %tobool4.not.i899 = icmp eq i32 %198, 0
  br i1 %tobool4.not.i899, label %if.else8.i908, label %if.then5.i900

if.then5.i900:                                    ; preds = %if.then3.i897
  %i_qp.i901 = getelementptr inbounds i8, ptr %spec.select.i.i879, i64 12
  %199 = load i32, ptr %i_qp.i901, align 4
  %conv6.i902 = sitofp i32 %199 to double
  %sub.i.i903 = fadd double %conv6.i902, -1.200000e+01
  %div.i.i904 = fdiv double %sub.i.i903, 6.000000e+00
  %exp2.i.i905 = tail call double @exp2(double %div.i.i904) #16
  %mul.i.i906 = fmul double %exp2.i.i905, 8.500000e-01
  br label %get_qscale.exit918

if.else8.i908:                                    ; preds = %if.then3.i897
  %f_bitrate_factor.i909 = getelementptr inbounds i8, ptr %spec.select.i.i879, i64 16
  %200 = load float, ptr %f_bitrate_factor.i909, align 8
  %conv9.i910 = fpext float %200 to double
  %div10.i911 = fdiv double %q.0.i895, %conv9.i910
  br label %get_qscale.exit918

get_qscale.exit918:                               ; preds = %if.end.i894, %if.then5.i900, %if.else8.i908
  %q.1.i907 = phi double [ %mul.i.i906, %if.then5.i900 ], [ %div10.i911, %if.else8.i908 ], [ %q.0.i895, %if.end.i894 ]
  %conv358 = fptrunc double %q.1.i907 to float
  %b_vbv_min_rate = getelementptr inbounds i8, ptr %0, i64 12
  %201 = load i32, ptr %b_vbv_min_rate, align 4
  %tobool359.not = icmp eq i32 %201, 0
  br i1 %tobool359.not, label %land.lhs.true360, label %if.end411

land.lhs.true360:                                 ; preds = %get_qscale.exit918
  %202 = load i32, ptr %last_satd330, align 8
  %tobool362.not = icmp eq i32 %202, 0
  br i1 %tobool362.not, label %if.end411, label %if.then363

if.then363:                                       ; preds = %land.lhs.true360
  %i_frame364 = getelementptr inbounds i8, ptr %h, i64 1844
  %203 = load i32, ptr %i_frame364, align 4
  %add365 = add nsw i32 %203, 1
  %i_thread_frames366 = getelementptr inbounds i8, ptr %h, i64 1852
  %204 = load i32, ptr %i_thread_frames366, align 4
  %sub367 = sub i32 %add365, %204
  %conv368 = sitofp i32 %sub367 to double
  %fps369 = getelementptr inbounds i8, ptr %0, i64 16
  %205 = load double, ptr %fps369, align 8
  %div370 = fdiv double %conv368, %205
  %b_vfr_input = getelementptr inbounds i8, ptr %h, i64 648
  %206 = load i32, ptr %b_vfr_input, align 8
  %tobool372 = icmp ne i32 %206, 0
  %cmp374 = icmp sgt i32 %sub367, 0
  %or.cond565 = select i1 %tobool372, i1 %cmp374, i1 false
  br i1 %or.cond565, label %if.then376, label %if.end386

if.then376:                                       ; preds = %if.then363
  %207 = load ptr, ptr %fenc355, align 8
  %i_reordered_pts = getelementptr inbounds i8, ptr %207, i64 24
  %208 = load i64, ptr %i_reordered_pts, align 8
  %i_reordered_pts_delay = getelementptr inbounds i8, ptr %h, i64 15032
  %209 = load i64, ptr %i_reordered_pts_delay, align 8
  %sub378 = sub nsw i64 %208, %209
  %conv379 = sitofp i64 %sub378 to double
  %i_timebase_num = getelementptr inbounds i8, ptr %h, i64 660
  %210 = load i32, ptr %i_timebase_num, align 4
  %conv381 = uitofp i32 %210 to double
  %mul382 = fmul double %conv379, %conv381
  %i_timebase_den = getelementptr inbounds i8, ptr %h, i64 664
  %211 = load i32, ptr %i_timebase_den, align 8
  %conv384 = uitofp i32 %211 to double
  %div385 = fdiv double %mul382, %conv384
  br label %if.end386

if.end386:                                        ; preds = %if.then376, %if.then363
  %time_done.0 = phi double [ %div385, %if.then376 ], [ %div370, %if.then363 ]
  %212 = load double, ptr %bitrate, align 8
  %mul388 = fmul double %time_done.0, %212
  %cmp389 = fcmp ogt double %mul388, 0.000000e+00
  br i1 %cmp389, label %if.then391, label %if.end411

if.then391:                                       ; preds = %if.end386
  %call392 = tail call double @sqrt(double noundef %time_done.0) #16
  %cmp393 = fcmp olt double %call392, 1.000000e+00
  br i1 %cmp393, label %cond.end398, label %cond.false396

cond.false396:                                    ; preds = %if.then391
  %call397 = tail call double @sqrt(double noundef %time_done.0) #16
  br label %cond.end398

cond.end398:                                      ; preds = %if.then391, %cond.false396
  %cond399 = phi double [ %call397, %cond.false396 ], [ 1.000000e+00, %if.then391 ]
  %mul400 = fmul double %mul144, %cond399
  %conv401 = sitofp i64 %mul to double
  %sub402 = fsub double %conv401, %mul388
  %div403 = fdiv double %sub402, %mul400
  %add404 = fadd double %div403, 1.000000e+00
  %cmp.i919 = fcmp olt double %add404, 5.000000e-01
  %cmp1.i920 = fcmp ogt double %add404, 2.000000e+00
  %cond.i921 = select i1 %cmp1.i920, double 2.000000e+00, double %add404
  %cond5.i922 = select i1 %cmp.i919, double 5.000000e-01, double %cond.i921
  %conv406 = fpext float %conv358 to double
  %mul407 = fmul double %cond5.i922, %conv406
  %conv408 = fptrunc double %mul407 to float
  br label %if.end411

if.end411:                                        ; preds = %if.end386, %cond.end398, %get_qscale.exit918, %land.lhs.true360, %get_qscale.exit
  %q.6 = phi float [ %conv352, %get_qscale.exit ], [ %conv358, %get_qscale.exit918 ], [ %conv358, %land.lhs.true360 ], [ %conv408, %cond.end398 ], [ %conv358, %if.end386 ]
  %overflow.1 = phi double [ 1.000000e+00, %get_qscale.exit ], [ 1.000000e+00, %get_qscale.exit918 ], [ 1.000000e+00, %land.lhs.true360 ], [ %cond5.i922, %cond.end398 ], [ 1.000000e+00, %if.end386 ]
  %cmp412 = icmp eq i32 %1, 2
  br i1 %cmp412, label %land.lhs.true414, label %if.else431

land.lhs.true414:                                 ; preds = %if.end411
  %i_keyint_max = getelementptr inbounds i8, ptr %h, i64 84
  %213 = load i32, ptr %i_keyint_max, align 4
  %cmp416 = icmp sgt i32 %213, 1
  br i1 %cmp416, label %land.lhs.true418, label %if.else431

land.lhs.true418:                                 ; preds = %land.lhs.true414
  %last_non_b_pict_type = getelementptr inbounds i8, ptr %0, i64 368
  %214 = load i32, ptr %last_non_b_pict_type, align 8
  %cmp419.not = icmp eq i32 %214, 2
  br i1 %cmp419.not, label %if.else431, label %if.then421

if.then421:                                       ; preds = %land.lhs.true418
  %accum_p_qp = getelementptr inbounds i8, ptr %0, i64 376
  %215 = load double, ptr %accum_p_qp, align 8
  %accum_p_norm = getelementptr inbounds i8, ptr %0, i64 384
  %216 = load double, ptr %accum_p_norm, align 8
  %div422 = fdiv double %215, %216
  %sub.i923 = fadd double %div422, -1.200000e+01
  %div.i924 = fdiv double %sub.i923, 6.000000e+00
  %exp2.i925 = tail call double @exp2(double %div.i924) #16
  %mul.i926 = fmul double %exp2.i925, 8.500000e-01
  %conv424 = fptrunc double %mul.i926 to float
  %f_ip_factor = getelementptr inbounds i8, ptr %h, i64 536
  %217 = load float, ptr %f_ip_factor, align 8
  %218 = tail call float @llvm.fabs.f32(float %217)
  %conv430 = fdiv float %conv424, %218
  br label %if.end497

if.else431:                                       ; preds = %land.lhs.true418, %land.lhs.true414, %if.end411
  %i_frame432 = getelementptr inbounds i8, ptr %h, i64 1844
  %219 = load i32, ptr %i_frame432, align 4
  %cmp433 = icmp sgt i32 %219, 0
  br i1 %cmp433, label %if.then435, label %if.else466

if.then435:                                       ; preds = %if.else431
  %last_qscale_for = getelementptr inbounds i8, ptr %0, i64 328
  %idxprom437 = sext i32 %1 to i64
  %arrayidx438 = getelementptr inbounds [5 x double], ptr %last_qscale_for, i64 0, i64 %idxprom437
  %220 = load double, ptr %arrayidx438, align 8
  %lstep = getelementptr inbounds i8, ptr %0, i64 480
  %221 = load double, ptr %lstep, align 8
  %div439 = fdiv double %220, %221
  %mul445 = fmul double %220, %221
  %cmp446 = fcmp ogt double %overflow.1, 1.100000e+00
  %cmp450 = icmp ugt i32 %219, 3
  %or.cond802 = and i1 %cmp446, %cmp450
  br i1 %or.cond802, label %if.then452, label %if.else455

if.then452:                                       ; preds = %if.then435
  %mul454 = fmul double %221, %mul445
  br label %if.end462

if.else455:                                       ; preds = %if.then435
  %cmp456 = fcmp olt double %overflow.1, 9.000000e-01
  br i1 %cmp456, label %if.then458, label %if.end462

if.then458:                                       ; preds = %if.else455
  %div460 = fdiv double %div439, %221
  br label %if.end462

if.end462:                                        ; preds = %if.else455, %if.then458, %if.then452
  %lmin436.0 = phi double [ %div439, %if.then452 ], [ %div460, %if.then458 ], [ %div439, %if.else455 ]
  %lmax440.0 = phi double [ %mul454, %if.then452 ], [ %mul445, %if.then458 ], [ %mul445, %if.else455 ]
  %conv463 = fpext float %q.6 to double
  %cmp.i927 = fcmp ogt double %lmin436.0, %conv463
  %cmp1.i928 = fcmp olt double %lmax440.0, %conv463
  %cond.i929 = select i1 %cmp1.i928, double %lmax440.0, double %conv463
  %cond5.i930 = select i1 %cmp.i927, double %lmin436.0, double %cond.i929
  %conv465 = fptrunc double %cond5.i930 to float
  br label %if.end497

if.else466:                                       ; preds = %if.else431
  %222 = load i32, ptr %rc345, align 8
  %cmp470 = icmp eq i32 %222, 1
  br i1 %cmp470, label %land.lhs.true472, label %if.end497

land.lhs.true472:                                 ; preds = %if.else466
  %qcompress = getelementptr inbounds i8, ptr %0, i64 40
  %223 = load double, ptr %qcompress, align 8
  %cmp473 = fcmp une double %223, 1.000000e+00
  br i1 %cmp473, label %cond.end485, label %if.end497

cond.end485:                                      ; preds = %land.lhs.true472
  %f_rf_constant = getelementptr inbounds i8, ptr %h, i64 512
  %224 = load float, ptr %f_rf_constant, align 8
  %conv487 = fpext float %224 to double
  %sub.i931 = fadd double %conv487, -1.200000e+01
  %div.i932 = fdiv double %sub.i931, 6.000000e+00
  %exp2.i933 = tail call double @exp2(double %div.i932) #16
  %mul.i934 = fmul double %exp2.i933, 8.500000e-01
  %f_ip_factor491 = getelementptr inbounds i8, ptr %h, i64 536
  %225 = load float, ptr %f_ip_factor491, align 8
  %226 = tail call float @llvm.fabs.f32(float %225)
  %227 = fpext float %226 to double
  %div493 = fdiv double %mul.i934, %227
  %conv494 = fptrunc double %div493 to float
  br label %if.end497

if.end497:                                        ; preds = %if.end462, %cond.end485, %land.lhs.true472, %if.else466, %if.then421
  %q.7 = phi float [ %conv430, %if.then421 ], [ %conv465, %if.end462 ], [ %conv494, %cond.end485 ], [ %q.6, %land.lhs.true472 ], [ %q.6, %if.else466 ]
  %conv498 = fpext float %q.7 to double
  %div.i935 = fdiv double %conv498, 8.500000e-01
  %call.i936 = tail call double @log2(double noundef %div.i935) #16
  %228 = tail call double @llvm.fmuladd.f64(double %call.i936, double 6.000000e+00, double 1.200000e+01)
  %conv500 = fptrunc double %228 to float
  %qp_novbv501 = getelementptr inbounds i8, ptr %0, i64 96
  store float %conv500, ptr %qp_novbv501, align 8
  %call503 = tail call fastcc double @clip_qscale(ptr noundef nonnull %h, i32 noundef %1, double noundef %conv498)
  %.pre995 = sext i32 %1 to i64
  br label %if.end505

if.end505:                                        ; preds = %if.end497, %if.end324
  %idxprom508.pre-phi = phi i64 [ %.pre995, %if.end497 ], [ %idxprom149, %if.end324 ]
  %rce.sroa.23.1 = phi i32 [ %call329, %if.end497 ], [ %rce.sroa.23.0, %if.end324 ]
  %rce.sroa.16.1 = phi double [ 0.000000e+00, %if.end497 ], [ %.pre-phi, %if.end324 ]
  %rce.sroa.7963.1 = phi double [ 1.000000e+00, %if.end497 ], [ %rce.sroa.7963.0, %if.end324 ]
  %q.8.in = phi double [ %call503, %if.end497 ], [ %cond5.i858, %if.end324 ]
  %q.8 = fptrunc double %q.8.in to float
  %conv506 = fpext float %q.8 to double
  %last_qscale = getelementptr inbounds i8, ptr %0, i64 320
  store double %conv506, ptr %last_qscale, align 8
  %last_qscale_for507 = getelementptr inbounds i8, ptr %0, i64 328
  %arrayidx509 = getelementptr inbounds [5 x double], ptr %last_qscale_for507, i64 0, i64 %idxprom508.pre-phi
  store double %conv506, ptr %arrayidx509, align 8
  %229 = load i32, ptr %b_2pass, align 4
  %tobool511.not = icmp eq i32 %229, 0
  br i1 %tobool511.not, label %land.lhs.true515, label %land.lhs.true512

land.lhs.true512:                                 ; preds = %if.end505
  %b_vbv513 = getelementptr inbounds i8, ptr %0, i64 8
  %230 = load i32, ptr %b_vbv513, align 8
  %tobool514.not = icmp eq i32 %230, 0
  br i1 %tobool514.not, label %if.else539, label %land.lhs.true515

land.lhs.true515:                                 ; preds = %land.lhs.true512, %if.end505
  %fenc516 = getelementptr inbounds i8, ptr %h, i64 14680
  %231 = load ptr, ptr %fenc516, align 8
  %i_frame517 = getelementptr inbounds i8, ptr %231, i64 56
  %232 = load i32, ptr %i_frame517, align 8
  %cmp518 = icmp eq i32 %232, 0
  br i1 %cmp518, label %if.then520, label %if.end529

if.then520:                                       ; preds = %land.lhs.true515
  %f_ip_factor524 = getelementptr inbounds i8, ptr %h, i64 536
  %233 = load float, ptr %f_ip_factor524, align 8
  %234 = tail call float @llvm.fabs.f32(float %233)
  %235 = fpext float %234 to double
  %mul526 = fmul double %conv506, %235
  store double %mul526, ptr %last_qscale_for507, align 8
  br label %if.end529

if.end529:                                        ; preds = %if.then520, %land.lhs.true515
  br i1 %tobool511.not, label %if.else539, label %land.lhs.true532

land.lhs.true532:                                 ; preds = %if.end529
  %b_vbv533.phi.trans.insert = getelementptr inbounds i8, ptr %0, i64 8
  %.pre994 = load i32, ptr %b_vbv533.phi.trans.insert, align 8
  %236 = icmp eq i32 %.pre994, 0
  br i1 %236, label %if.else539, label %if.then535

if.then535:                                       ; preds = %land.lhs.true532
  %cmp.i937 = fcmp olt double %conv506, 1.000000e-01
  %qscale.addr.0.i938 = select i1 %cmp.i937, double 1.000000e-01, double %conv506
  %div.i941 = fdiv double %rce.sroa.7963.1, %qscale.addr.0.i938
  %call.i942 = tail call double @pow(double noundef %div.i941, double noundef 1.100000e+00) #16
  %cmp4.i944 = fcmp ogt double %rce.sroa.7963.1, 1.000000e+00
  %cond.i945 = select i1 %cmp4.i944, double %rce.sroa.7963.1, double 1.000000e+00
  %conv.i947 = sitofp i32 %rce.sroa.23.1 to double
  %add.i948 = fadd double %conv.i947, 1.000000e-01
  %cmp7.i949 = fcmp ogt double %qscale.addr.0.i938, 1.000000e+00
  %cond12.i950 = select i1 %cmp7.i949, double %qscale.addr.0.i938, double 1.000000e+00
  %div13.i951 = fdiv double %cond.i945, %cond12.i950
  %call14.i952 = tail call double @pow(double noundef %div13.i951, double noundef 5.000000e-01) #16
  %mul15.i953 = fmul double %rce.sroa.16.1, %call14.i952
  %237 = tail call double @llvm.fmuladd.f64(double %add.i948, double %call.i942, double %mul15.i953)
  %conv16.i955 = sitofp i32 %rce.sroa.30.0 to double
  %add17.i956 = fadd double %237, %conv16.i955
  br label %if.end549

if.else539:                                       ; preds = %land.lhs.true512, %land.lhs.true532, %if.end529
  %pred = getelementptr inbounds i8, ptr %0, i64 144
  %238 = load ptr, ptr %pred, align 8
  %239 = load i32, ptr %i_type, align 16
  %idxprom542 = sext i32 %239 to i64
  %arrayidx543 = getelementptr inbounds %struct.predictor_t, ptr %238, i64 %idxprom542
  %last_satd545 = getelementptr inbounds i8, ptr %0, i64 168
  %240 = load i32, ptr %last_satd545, align 8
  %conv546 = sitofp i32 %240 to double
  %241 = load double, ptr %arrayidx543, align 8
  %offset.i957 = getelementptr inbounds i8, ptr %arrayidx543, i64 24
  %242 = load double, ptr %offset.i957, align 8
  %243 = tail call double @llvm.fmuladd.f64(double %241, double %conv546, double %242)
  %count.i958 = getelementptr inbounds i8, ptr %arrayidx543, i64 8
  %244 = load double, ptr %count.i958, align 8
  %mul.i959 = fmul double %244, %conv506
  %div.i960 = fdiv double %243, %mul.i959
  br label %if.end549

if.end549:                                        ; preds = %if.else539, %if.then535
  %div.i960.sink = phi double [ %div.i960, %if.else539 ], [ %add17.i956, %if.then535 ]
  %frame_size_planned548 = getelementptr inbounds i8, ptr %0, i64 520
  store double %div.i960.sink, ptr %frame_size_planned548, align 8
  %single_frame_vbv = getelementptr inbounds i8, ptr %0, i64 152
  %245 = load i32, ptr %single_frame_vbv, align 8
  %tobool550.not = icmp eq i32 %245, 0
  br i1 %tobool550.not, label %if.end554, label %if.then551

if.then551:                                       ; preds = %if.end549
  %buffer_rate552 = getelementptr inbounds i8, ptr %0, i64 128
  %246 = load double, ptr %buffer_rate552, align 8
  %frame_size_planned553 = getelementptr inbounds i8, ptr %0, i64 520
  store double %246, ptr %frame_size_planned553, align 8
  br label %if.end554

if.end554:                                        ; preds = %if.then551, %if.end549
  %247 = phi double [ %246, %if.then551 ], [ %div.i960.sink, %if.end549 ]
  %conv556 = fptrunc double %247 to float
  %248 = load ptr, ptr %rc, align 16
  %frame_size_estimated558 = getelementptr inbounds i8, ptr %248, i64 508
  store float %conv556, ptr %frame_size_estimated558, align 4
  br label %cleanup560

cleanup560:                                       ; preds = %if.end554, %if.end138
  %retval.0 = phi float [ %conv141, %if.end138 ], [ %q.8, %if.end554 ]
  ret float %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_mb(ptr noundef readonly %h, i32 noundef %bits) local_unnamed_addr #0 {
entry:
  %rc1 = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc1, align 16
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388
  %1 = load i32, ptr %i_mb_y, align 4
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %2 = load ptr, ptr %fdec, align 16
  %i_row_bits = getelementptr inbounds i8, ptr %2, i64 12136
  %3 = load ptr, ptr %i_row_bits, align 8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %add = add nsw i32 %4, %bits
  store i32 %add, ptr %arrayidx, align 4
  %qpm = getelementptr inbounds i8, ptr %0, i64 84
  %5 = load float, ptr %qpm, align 4
  %qpa_rc = getelementptr inbounds i8, ptr %0, i64 88
  %6 = load float, ptr %qpa_rc, align 8
  %add2 = fadd float %5, %6
  store float %add2, ptr %qpa_rc, align 8
  %i_qp = getelementptr inbounds i8, ptr %h, i64 25792
  %7 = load i32, ptr %i_qp, align 16
  %conv = sitofp i32 %7 to float
  %qpa_aq = getelementptr inbounds i8, ptr %0, i64 92
  %8 = load float, ptr %qpa_aq, align 4
  %add4 = fadd float %8, %conv
  store float %add4, ptr %qpa_aq, align 4
  %i_mb_x = getelementptr inbounds i8, ptr %h, i64 16384
  %9 = load i32, ptr %i_mb_x, align 16
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %10 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %10, i64 1084
  %11 = load i32, ptr %i_mb_width, align 4
  %sub = add nsw i32 %11, -1
  %cmp.not = icmp eq i32 %9, %sub
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup401

lor.lhs.false:                                    ; preds = %entry
  %b_vbv = getelementptr inbounds i8, ptr %0, i64 8
  %12 = load i32, ptr %b_vbv, align 8
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %cleanup401, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %13 = load ptr, ptr %fdec, align 16
  %f_row_qp = getelementptr inbounds i8, ptr %13, i64 12144
  %14 = load ptr, ptr %f_row_qp, align 16
  %arrayidx10 = getelementptr inbounds float, ptr %14, i64 %idxprom
  store float %5, ptr %arrayidx10, align 4
  %row_pred = getelementptr inbounds i8, ptr %0, i64 544
  %15 = load ptr, ptr %row_pred, align 8
  %16 = load float, ptr %qpm, align 4
  %conv13 = fpext float %16 to double
  %sub.i = fadd double %conv13, -1.200000e+01
  %div.i = fdiv double %sub.i, 6.000000e+00
  %exp2.i = tail call double @exp2(double %div.i) #16
  %17 = load ptr, ptr %fdec, align 16
  %i_row_satd = getelementptr inbounds i8, ptr %17, i64 12128
  %18 = load ptr, ptr %i_row_satd, align 16
  %arrayidx16 = getelementptr inbounds i32, ptr %18, i64 %idxprom
  %19 = load i32, ptr %arrayidx16, align 4
  %cmp.i = icmp slt i32 %19, 10
  br i1 %cmp.i, label %update_predictor.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %conv17 = uitofp nneg i32 %19 to double
  %i_row_bits19 = getelementptr inbounds i8, ptr %17, i64 12136
  %20 = load ptr, ptr %i_row_bits19, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %20, i64 %idxprom
  %21 = load i32, ptr %arrayidx21, align 4
  %conv22 = sitofp i32 %21 to double
  %mul.i = fmul double %exp2.i, 8.500000e-01
  %mul.i575 = fmul double %mul.i, %conv22
  %div1.i = fdiv double %mul.i575, %conv17
  %decay.i = getelementptr inbounds i8, ptr %15, i64 16
  %22 = load double, ptr %decay.i, align 8
  %offset.i = getelementptr inbounds i8, ptr %15, i64 24
  %23 = load double, ptr %offset.i, align 8
  %mul15.i = fmul double %22, %23
  %24 = load <2 x double>, ptr %15, align 8
  %25 = extractelement <2 x double> %24, i64 0
  %26 = extractelement <2 x double> %24, i64 1
  %div.i574 = fdiv double %25, %26
  %div2.i = fdiv double %div.i574, 1.500000e+00
  %mul3.i = fmul double %div.i574, 1.500000e+00
  %cmp.i.i = fcmp olt double %div1.i, %div2.i
  %cmp1.i.i = fcmp ogt double %div1.i, %mul3.i
  %cond.i.i = select i1 %cmp1.i.i, double %mul3.i, double %div1.i
  %cond5.i.i = select i1 %cmp.i.i, double %div2.i, double %cond.i.i
  %27 = fneg double %cond5.i.i
  %neg.i = fmul double %conv17, %27
  %28 = tail call double @llvm.fmuladd.f64(double %conv22, double %mul.i, double %neg.i)
  %cmp6.i = fcmp ult double %28, 0.000000e+00
  %div1.call.i = select i1 %cmp6.i, double %div1.i, double %cond5.i.i
  %..i = select i1 %cmp6.i, double 0.000000e+00, double %28
  %29 = insertelement <2 x double> poison, double %22, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = fmul <2 x double> %24, %30
  %32 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %div1.call.i, i64 0
  %33 = fadd <2 x double> %31, %32
  store <2 x double> %33, ptr %15, align 8
  %add19.i = fadd double %mul15.i, %..i
  store double %add19.i, ptr %offset.i, align 8
  br label %update_predictor.exit

update_predictor.exit:                            ; preds = %if.end, %if.end.i
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %34 = load i32, ptr %i_type, align 16
  %cmp23 = icmp eq i32 %34, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %update_predictor.exit
  %35 = load float, ptr %qpm, align 4
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  %36 = load ptr, ptr %fref0, align 16
  %f_row_qp27 = getelementptr inbounds i8, ptr %36, i64 12144
  %37 = load ptr, ptr %f_row_qp27, align 16
  %arrayidx29 = getelementptr inbounds float, ptr %37, i64 %idxprom
  %38 = load float, ptr %arrayidx29, align 4
  %cmp30 = fcmp olt float %35, %38
  br i1 %cmp30, label %if.then32, label %if.end50

if.then32:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr %row_pred, align 8
  %conv37 = fpext float %35 to double
  %sub.i576 = fadd double %conv37, -1.200000e+01
  %div.i577 = fdiv double %sub.i576, 6.000000e+00
  %exp2.i578 = tail call double @exp2(double %div.i577) #16
  %40 = load ptr, ptr %fdec, align 16
  %i_row_satds = getelementptr inbounds i8, ptr %40, i64 9536
  %41 = load ptr, ptr %i_row_satds, align 16
  %arrayidx43 = getelementptr inbounds i32, ptr %41, i64 %idxprom
  %42 = load i32, ptr %arrayidx43, align 4
  %cmp.i580 = icmp slt i32 %42, 10
  br i1 %cmp.i580, label %if.end50, label %if.end.i581

if.end.i581:                                      ; preds = %if.then32
  %conv44 = uitofp nneg i32 %42 to double
  %i_row_bits46 = getelementptr inbounds i8, ptr %40, i64 12136
  %43 = load ptr, ptr %i_row_bits46, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %43, i64 %idxprom
  %44 = load i32, ptr %arrayidx48, align 4
  %conv49 = sitofp i32 %44 to double
  %mul.i579 = fmul double %exp2.i578, 8.500000e-01
  %arrayidx34 = getelementptr inbounds i8, ptr %39, i64 64
  %mul.i584 = fmul double %mul.i579, %conv49
  %div1.i585 = fdiv double %mul.i584, %conv44
  %decay.i596 = getelementptr inbounds i8, ptr %39, i64 80
  %45 = load double, ptr %decay.i596, align 8
  %offset.i599 = getelementptr inbounds i8, ptr %39, i64 88
  %46 = load double, ptr %offset.i599, align 8
  %mul15.i600 = fmul double %45, %46
  %47 = load <2 x double>, ptr %arrayidx34, align 8
  %48 = extractelement <2 x double> %47, i64 0
  %49 = extractelement <2 x double> %47, i64 1
  %div.i583 = fdiv double %48, %49
  %div2.i586 = fdiv double %div.i583, 1.500000e+00
  %mul3.i587 = fmul double %div.i583, 1.500000e+00
  %cmp.i.i588 = fcmp olt double %div1.i585, %div2.i586
  %cmp1.i.i589 = fcmp ogt double %div1.i585, %mul3.i587
  %cond.i.i590 = select i1 %cmp1.i.i589, double %mul3.i587, double %div1.i585
  %cond5.i.i591 = select i1 %cmp.i.i588, double %div2.i586, double %cond.i.i590
  %50 = fneg double %cond5.i.i591
  %neg.i592 = fmul double %conv44, %50
  %51 = tail call double @llvm.fmuladd.f64(double %conv49, double %mul.i579, double %neg.i592)
  %cmp6.i593 = fcmp ult double %51, 0.000000e+00
  %div1.call.i594 = select i1 %cmp6.i593, double %div1.i585, double %cond5.i.i591
  %..i595 = select i1 %cmp6.i593, double 0.000000e+00, double %51
  %52 = insertelement <2 x double> poison, double %45, i64 0
  %53 = shufflevector <2 x double> %52, <2 x double> poison, <2 x i32> zeroinitializer
  %54 = fmul <2 x double> %47, %53
  %55 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %div1.call.i594, i64 0
  %56 = fadd <2 x double> %54, %55
  store <2 x double> %56, ptr %arrayidx34, align 8
  %add19.i603 = fadd double %mul15.i600, %..i595
  store double %add19.i603, ptr %offset.i599, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.end.i581, %if.then32, %land.lhs.true, %update_predictor.exit
  %i_threadslice_end = getelementptr inbounds i8, ptr %h, i64 1752
  %57 = load i32, ptr %i_threadslice_end, align 8
  %sub51 = add nsw i32 %57, -1
  %cmp52 = icmp slt i32 %1, %sub51
  br i1 %cmp52, label %if.then54, label %cleanup401

if.then54:                                        ; preds = %if.end50
  %58 = load ptr, ptr %fdec, align 16
  %f_row_qp56 = getelementptr inbounds i8, ptr %58, i64 12144
  %59 = load ptr, ptr %f_row_qp56, align 16
  %arrayidx58 = getelementptr inbounds float, ptr %59, i64 %idxprom
  %60 = load float, ptr %arrayidx58, align 4
  %i_qp_step = getelementptr inbounds i8, ptr %h, i64 504
  %61 = load i32, ptr %i_qp_step, align 8
  %conv60 = sitofp i32 %61 to float
  %sub61 = fsub float %60, %conv60
  %i_qp_min = getelementptr inbounds i8, ptr %h, i64 496
  %62 = load i32, ptr %i_qp_min, align 8
  %conv64 = sitofp i32 %62 to float
  %cmp65 = fcmp ogt float %sub61, %conv64
  %sub61.conv64 = select i1 %cmp65, float %sub61, float %conv64
  %i_qp_max = getelementptr inbounds i8, ptr %h, i64 500
  %63 = load i32, ptr %i_qp_max, align 4
  %conv78 = sitofp i32 %63 to float
  %rate_factor_max_increment = getelementptr inbounds i8, ptr %0, i64 160
  %64 = load double, ptr %rate_factor_max_increment, align 8
  %tobool79 = fcmp une double %64, 0.000000e+00
  br i1 %tobool79, label %if.then80, label %if.end97

if.then80:                                        ; preds = %if.then54
  %conv81 = fpext float %conv78 to double
  %qp_novbv = getelementptr inbounds i8, ptr %0, i64 96
  %65 = load float, ptr %qp_novbv, align 8
  %conv82 = fpext float %65 to double
  %add84 = fadd double %64, %conv82
  %cmp85 = fcmp ogt double %add84, %conv81
  %66 = fptrunc double %add84 to float
  %narrow.sel = select i1 %cmp85, float %conv78, float %66
  br label %if.end97

if.end97:                                         ; preds = %if.then80, %if.then54
  %qp_absolute_max.0 = phi float [ %narrow.sel, %if.then80 ], [ %conv78, %if.then54 ]
  %add102 = fadd float %60, %conv60
  %cmp103 = fcmp olt float %add102, %qp_absolute_max.0
  %add102.qp_absolute_max.0 = select i1 %cmp103, float %add102, float %qp_absolute_max.0
  %67 = load i32, ptr %i_type, align 16
  %cmp116 = icmp eq i32 %67, 1
  br i1 %cmp116, label %if.then118, label %if.end193

if.then118:                                       ; preds = %if.end97
  %fref0119 = getelementptr inbounds i8, ptr %h, i64 14704
  %68 = load ptr, ptr %fref0119, align 16
  %f_row_qp121 = getelementptr inbounds i8, ptr %68, i64 12144
  %69 = load ptr, ptr %f_row_qp121, align 16
  %add122 = add nsw i32 %1, 1
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds float, ptr %69, i64 %idxprom123
  %70 = load float, ptr %arrayidx124, align 4
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864
  %71 = load ptr, ptr %fref1, align 16
  %f_row_qp126 = getelementptr inbounds i8, ptr %71, i64 12144
  %72 = load ptr, ptr %f_row_qp126, align 16
  %arrayidx129 = getelementptr inbounds float, ptr %72, i64 %idxprom123
  %73 = load float, ptr %arrayidx129, align 4
  %cmp130 = fcmp ogt float %70, %73
  %. = select i1 %cmp130, float %70, float %73
  %cmp148 = fcmp ogt float %sub61.conv64, %.
  %cond183 = select i1 %cmp148, float %sub61.conv64, float %.
  %74 = load float, ptr %qpm, align 4
  %cmp185 = fcmp ogt float %74, %cond183
  %.cond183 = select i1 %cmp185, float %74, float %cond183
  store float %.cond183, ptr %qpm, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then118, %if.end97
  %qp_min.0 = phi float [ %cond183, %if.then118 ], [ %sub61.conv64, %if.end97 ]
  %buffer_fill = getelementptr inbounds i8, ptr %0, i64 120
  %75 = load double, ptr %buffer_fill, align 8
  %frame_size_planned = getelementptr inbounds i8, ptr %0, i64 520
  %76 = load double, ptr %frame_size_planned, align 8
  %sub194 = fsub double %75, %76
  %conv195 = fptrunc double %sub194 to float
  %b_sliced_threads = getelementptr inbounds i8, ptr %h, i64 8
  %77 = load i32, ptr %b_sliced_threads, align 8
  %tobool197.not = icmp eq i32 %77, 0
  br i1 %tobool197.not, label %if.else, label %cond.end202

cond.end202:                                      ; preds = %if.end193
  %slice_size_planned199 = getelementptr inbounds i8, ptr %0, i64 528
  %78 = load double, ptr %slice_size_planned199, align 8
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
  %79 = load i32, ptr %i_threads, align 4
  %cmp210610 = icmp sgt i32 %79, 0
  br i1 %cmp210610, label %for.body.lr.ph, label %if.end236

for.body.lr.ph:                                   ; preds = %cond.end202
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %wide.trip.count = zext nneg i32 %79 to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.inc.1, %for.body.lr.ph
  %size_of_other_slices.1.lcssa.ph = phi float [ poison, %for.body.lr.ph ], [ %size_of_other_slices.1.1, %for.inc.1 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.1, %for.inc.1 ]
  %size_of_other_slices.0611.unr = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %size_of_other_slices.1.1, %for.inc.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup.loopexit, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa
  %arrayidx213.epil = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv.unr
  %81 = load ptr, ptr %arrayidx213.epil, align 8
  %cmp214.not.epil = icmp eq ptr %81, %h
  br i1 %cmp214.not.epil, label %for.cond.cleanup.loopexit, label %if.then216.epil

if.then216.epil:                                  ; preds = %for.body.epil
  %rc220.epil = getelementptr inbounds i8, ptr %81, i64 26704
  %82 = load ptr, ptr %rc220.epil, align 16
  %frame_size_estimated.epil = getelementptr inbounds i8, ptr %82, i64 508
  %83 = load float, ptr %frame_size_estimated.epil, align 4
  %add221.epil = fadd float %size_of_other_slices.0611.unr, %83
  br label %for.cond.cleanup.loopexit

for.cond.cleanup.loopexit:                        ; preds = %for.body.epil, %if.then216.epil, %for.cond.cleanup.loopexit.unr-lcssa
  %size_of_other_slices.1.lcssa = phi float [ %size_of_other_slices.1.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %add221.epil, %if.then216.epil ], [ %size_of_other_slices.0611.unr, %for.body.epil ]
  %84 = fpext float %size_of_other_slices.1.lcssa to double
  br label %if.end236

for.body:                                         ; preds = %for.inc.1, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.1, %for.inc.1 ]
  %size_of_other_slices.0611 = phi float [ 0.000000e+00, %for.body.lr.ph.new ], [ %size_of_other_slices.1.1, %for.inc.1 ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.1, %for.inc.1 ]
  %arrayidx213 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv
  %85 = load ptr, ptr %arrayidx213, align 8
  %cmp214.not = icmp eq ptr %85, %h
  br i1 %cmp214.not, label %for.inc, label %if.then216

if.then216:                                       ; preds = %for.body
  %rc220 = getelementptr inbounds i8, ptr %85, i64 26704
  %86 = load ptr, ptr %rc220, align 16
  %frame_size_estimated = getelementptr inbounds i8, ptr %86, i64 508
  %87 = load float, ptr %frame_size_estimated, align 4
  %add221 = fadd float %size_of_other_slices.0611, %87
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then216
  %size_of_other_slices.1 = phi float [ %add221, %if.then216 ], [ %size_of_other_slices.0611, %for.body ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %arrayidx213.1 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv.next
  %88 = load ptr, ptr %arrayidx213.1, align 8
  %cmp214.not.1 = icmp eq ptr %88, %h
  br i1 %cmp214.not.1, label %for.inc.1, label %if.then216.1

if.then216.1:                                     ; preds = %for.inc
  %rc220.1 = getelementptr inbounds i8, ptr %88, i64 26704
  %89 = load ptr, ptr %rc220.1, align 16
  %frame_size_estimated.1 = getelementptr inbounds i8, ptr %89, i64 508
  %90 = load float, ptr %frame_size_estimated.1, align 4
  %add221.1 = fadd float %size_of_other_slices.1, %90
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then216.1, %for.inc
  %size_of_other_slices.1.1 = phi float [ %add221.1, %if.then216.1 ], [ %size_of_other_slices.1, %for.inc ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body

if.else:                                          ; preds = %if.end193
  %91 = load ptr, ptr %sps, align 16
  %i_mb_width224 = getelementptr inbounds i8, ptr %91, i64 1084
  %92 = load i32, ptr %i_mb_width224, align 4
  %conv225 = sitofp i32 %92 to double
  %div = fdiv double 1.000000e+00, %conv225
  %cmp226 = fcmp olt double %div, 5.000000e-02
  %cond235 = select i1 %cmp226, double 5.000000e-02, double %div
  %max_frame_error = getelementptr inbounds i8, ptr %0, i64 536
  store double %cond235, ptr %max_frame_error, align 8
  %i_threads238.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 4
  %.pre = load i32, ptr %i_threads238.phi.trans.insert, align 4
  br label %if.end236

if.end236:                                        ; preds = %cond.end202, %for.cond.cleanup.loopexit, %if.else
  %93 = phi i32 [ %.pre, %if.else ], [ %79, %for.cond.cleanup.loopexit ], [ %79, %cond.end202 ]
  %conv204608.in = phi double [ %76, %if.else ], [ %78, %for.cond.cleanup.loopexit ], [ %78, %cond.end202 ]
  %size_of_other_slices.2 = phi double [ 0.000000e+00, %if.else ], [ %84, %for.cond.cleanup.loopexit ], [ 0.000000e+00, %cond.end202 ]
  %conv204608 = fptrunc double %conv204608.in to float
  %conv239 = sitofp i32 %93 to float
  %div240 = fdiv float %conv195, %conv239
  %conv241 = fpext float %div240 to double
  %rate_tolerance = getelementptr inbounds i8, ptr %0, i64 32
  %94 = load double, ptr %rate_tolerance, align 8
  %mul = fmul double %94, %conv241
  %conv242 = fptrunc double %mul to float
  %95 = load float, ptr %qpm, align 4
  %conv244 = fpext float %95 to double
  %call245 = tail call fastcc double @predict_row_size_sum(ptr noundef nonnull %h, i32 noundef %1, double noundef %conv244)
  %i_threadslice_start.i = getelementptr inbounds i8, ptr %h, i64 1748
  %96 = load i32, ptr %i_threadslice_start.i, align 4
  %cmp.not5.i = icmp sgt i32 %96, %1
  br i1 %cmp.not5.i, label %row_bits_so_far.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end236
  %97 = load ptr, ptr %fdec, align 16
  %i_row_bits.i = getelementptr inbounds i8, ptr %97, i64 12136
  %98 = load ptr, ptr %i_row_bits.i, align 8
  %99 = sext i32 %96 to i64
  %100 = add i32 %1, 1
  %101 = sub i32 %100, %96
  %102 = sub i32 %1, %96
  %xtraiter634 = and i32 %101, 3
  %lcmp.mod635.not = icmp eq i32 %xtraiter634, 0
  br i1 %lcmp.mod635.not, label %for.body.i.prol.loopexit, label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.lr.ph.i, %for.body.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ], [ %99, %for.body.lr.ph.i ]
  %bits.06.i.prol = phi double [ %add.i605.prol, %for.body.i.prol ], [ 0.000000e+00, %for.body.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body.i.prol ], [ 0, %for.body.lr.ph.i ]
  %arrayidx.i.prol = getelementptr inbounds i32, ptr %98, i64 %indvars.iv.i.prol
  %103 = load i32, ptr %arrayidx.i.prol, align 4
  %conv.i.prol = sitofp i32 %103 to double
  %add.i605.prol = fadd double %bits.06.i.prol, %conv.i.prol
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter634
  br i1 %prol.iter.cmp.not, label %for.body.i.prol.loopexit, label %for.body.i.prol, !llvm.loop !22

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol, %for.body.lr.ph.i
  %add.i605.lcssa.unr = phi double [ poison, %for.body.lr.ph.i ], [ %add.i605.prol, %for.body.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %99, %for.body.lr.ph.i ], [ %indvars.iv.next.i.prol, %for.body.i.prol ]
  %bits.06.i.unr = phi double [ 0.000000e+00, %for.body.lr.ph.i ], [ %add.i605.prol, %for.body.i.prol ]
  %104 = icmp ult i32 %102, 3
  br i1 %104, label %row_bits_so_far.exit, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.i.prol.loopexit
  %invariant.gep = getelementptr i8, ptr %98, i64 4
  %invariant.gep636 = getelementptr i8, ptr %98, i64 8
  %invariant.gep638 = getelementptr i8, ptr %98, i64 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %bits.06.i = phi double [ %bits.06.i.unr, %for.body.lr.ph.i.new ], [ %add.i605.3, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i32, ptr %98, i64 %indvars.iv.i
  %105 = load i32, ptr %arrayidx.i, align 4
  %conv.i = sitofp i32 %105 to double
  %add.i605 = fadd double %bits.06.i, %conv.i
  %gep = getelementptr i32, ptr %invariant.gep, i64 %indvars.iv.i
  %106 = load i32, ptr %gep, align 4
  %conv.i.1 = sitofp i32 %106 to double
  %add.i605.1 = fadd double %add.i605, %conv.i.1
  %gep637 = getelementptr i32, ptr %invariant.gep636, i64 %indvars.iv.i
  %107 = load i32, ptr %gep637, align 4
  %conv.i.2 = sitofp i32 %107 to double
  %add.i605.2 = fadd double %add.i605.1, %conv.i.2
  %gep639 = getelementptr i32, ptr %invariant.gep638, i64 %indvars.iv.i
  %108 = load i32, ptr %gep639, align 4
  %conv.i.3 = sitofp i32 %108 to double
  %add.i605.3 = fadd double %add.i605.2, %conv.i.3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond.not.i.3 = icmp eq i32 %100, %lftr.wideiv.i.3
  br i1 %exitcond.not.i.3, label %row_bits_so_far.exit, label %for.body.i

row_bits_so_far.exit:                             ; preds = %for.body.i.prol.loopexit, %for.body.i, %if.end236
  %bits.0.lcssa.i = phi double [ 0.000000e+00, %if.end236 ], [ %add.i605.lcssa.unr, %for.body.i.prol.loopexit ], [ %add.i605.3, %for.body.i ]
  %conv250 = fpext float %conv204608 to double
  %mul251 = fmul double %conv250, 5.000000e-02
  %cmp252 = fcmp uge double %bits.0.lcssa.i, %mul251
  br i1 %cmp252, label %if.end255, label %cleanup401

if.end255:                                        ; preds = %row_bits_so_far.exit
  %109 = load i32, ptr %i_type, align 16
  %cmp258.not = icmp eq i32 %109, 2
  %div261 = fmul float %conv242, 5.000000e-01
  %rc_tol.0 = select i1 %cmp258.not, float %conv242, float %div261
  %b_vbv_min_rate = getelementptr inbounds i8, ptr %0, i64 12
  %110 = load i32, ptr %b_vbv_min_rate, align 4
  %tobool263.not = icmp eq i32 %110, 0
  br i1 %tobool263.not, label %if.then264, label %if.end273

if.then264:                                       ; preds = %if.end255
  %qp_novbv265 = getelementptr inbounds i8, ptr %0, i64 96
  %111 = load float, ptr %qp_novbv265, align 8
  %cmp266 = fcmp ogt float %qp_min.0, %111
  %qp_min.0. = select i1 %cmp266, float %qp_min.0, float %111
  br label %if.end273

if.end273:                                        ; preds = %if.then264, %if.end255
  %qp_min.1 = phi float [ %qp_min.0, %if.end255 ], [ %qp_min.0., %if.then264 ]
  %qp_novbv297 = getelementptr inbounds i8, ptr %0, i64 96
  %b1.0.in613 = fadd double %size_of_other_slices.2, %call245
  %b1.0614 = fptosi double %b1.0.in613 to i32
  %112 = load float, ptr %qpm, align 4
  %cmp275615 = fcmp olt float %112, %add102.qp_absolute_max.0
  br i1 %cmp275615, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end273
  %conv279 = fpext float %rc_tol.0 to double
  %conv287 = fpext float %conv195 to double
  %mul288 = fmul double %conv287, 5.000000e-01
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %113 = phi float [ %112, %land.rhs.lr.ph ], [ %117, %while.body ]
  %b1.0616 = phi i32 [ %b1.0614, %land.rhs.lr.ph ], [ %b1.0, %while.body ]
  %conv277 = sitofp i32 %b1.0616 to double
  %114 = load double, ptr %frame_size_planned, align 8
  %add280 = fadd double %114, %conv279
  %cmp281 = fcmp olt double %add280, %conv277
  br i1 %cmp281, label %while.body, label %lor.lhs.false283

lor.lhs.false283:                                 ; preds = %land.rhs
  %115 = load double, ptr %buffer_fill, align 8
  %sub286 = fsub double %115, %conv277
  %cmp289 = fcmp olt double %sub286, %mul288
  br i1 %cmp289, label %while.body, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false283
  %cmp293 = fcmp olt double %114, %conv277
  br i1 %cmp293, label %land.rhs295, label %while.end

land.rhs295:                                      ; preds = %lor.rhs
  %116 = load float, ptr %qp_novbv297, align 8
  %cmp298 = fcmp olt float %113, %116
  br i1 %cmp298, label %while.body, label %while.end

while.body:                                       ; preds = %lor.lhs.false283, %land.rhs, %land.rhs295
  %add302 = fadd float %113, 5.000000e-01
  store float %add302, ptr %qpm, align 4
  %conv304 = fpext float %add302 to double
  %call305 = tail call fastcc double @predict_row_size_sum(ptr noundef %h, i32 noundef %1, double noundef %conv304)
  %b1.0.in = fadd double %size_of_other_slices.2, %call305
  %b1.0 = fptosi double %b1.0.in to i32
  %117 = load float, ptr %qpm, align 4
  %cmp275 = fcmp olt float %117, %add102.qp_absolute_max.0
  br i1 %cmp275, label %land.rhs, label %while.end

while.end:                                        ; preds = %land.rhs295, %lor.rhs, %while.body, %if.end273
  %118 = phi float [ %112, %if.end273 ], [ %117, %while.body ], [ %113, %lor.rhs ], [ %113, %land.rhs295 ]
  %b1.0.lcssa = phi i32 [ %b1.0614, %if.end273 ], [ %b1.0, %while.body ], [ %b1.0616, %lor.rhs ], [ %b1.0616, %land.rhs295 ]
  %single_frame_vbv = getelementptr inbounds i8, ptr %0, i64 152
  %cmp311620 = fcmp ogt float %118, %qp_min.1
  br i1 %cmp311620, label %land.lhs.true313.lr.ph, label %while.end351

land.lhs.true313.lr.ph:                           ; preds = %while.end
  %buffer_size = getelementptr inbounds i8, ptr %0, i64 104
  %buffer_rate = getelementptr inbounds i8, ptr %0, i64 128
  br label %land.lhs.true313

land.lhs.true313:                                 ; preds = %land.lhs.true313.lr.ph, %while.body342
  %119 = phi float [ %118, %land.lhs.true313.lr.ph ], [ %128, %while.body342 ]
  %b1.1621 = phi i32 [ %b1.0.lcssa, %land.lhs.true313.lr.ph ], [ %conv350, %while.body342 ]
  %120 = load ptr, ptr %fdec, align 16
  %f_row_qp316 = getelementptr inbounds i8, ptr %120, i64 12144
  %121 = load ptr, ptr %f_row_qp316, align 16
  %122 = load float, ptr %121, align 4
  %cmp318 = fcmp ogt float %119, %122
  br i1 %cmp318, label %land.rhs322, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %land.lhs.true313
  %123 = load i32, ptr %single_frame_vbv, align 8
  %tobool321.not = icmp eq i32 %123, 0
  br i1 %tobool321.not, label %while.end351, label %land.rhs322

land.rhs322:                                      ; preds = %lor.lhs.false320, %land.lhs.true313
  %conv323 = sitofp i32 %b1.1621 to double
  %124 = load double, ptr %frame_size_planned, align 8
  %mul325 = fmul double %124, 8.000000e-01
  %cmp326 = fcmp ule double %mul325, %conv323
  %cmp330 = fcmp ugt float %119, %60
  %or.cond = select i1 %cmp326, i1 true, i1 %cmp330
  br i1 %or.cond, label %lor.rhs332, label %while.body342

lor.rhs332:                                       ; preds = %land.rhs322
  %125 = load double, ptr %buffer_fill, align 8
  %126 = load double, ptr %buffer_size, align 8
  %sub335 = fsub double %125, %126
  %127 = load double, ptr %buffer_rate, align 8
  %add336 = fadd double %sub335, %127
  %mul337 = fmul double %add336, 1.100000e+00
  %cmp338 = fcmp ogt double %mul337, %conv323
  br i1 %cmp338, label %while.body342, label %while.end351

while.body342:                                    ; preds = %land.rhs322, %lor.rhs332
  %sub344 = fadd float %119, -5.000000e-01
  store float %sub344, ptr %qpm, align 4
  %conv346 = fpext float %sub344 to double
  %call347 = tail call fastcc double @predict_row_size_sum(ptr noundef nonnull %h, i32 noundef %1, double noundef %conv346)
  %add349 = fadd double %size_of_other_slices.2, %call347
  %conv350 = fptosi double %add349 to i32
  %128 = load float, ptr %qpm, align 4
  %cmp311 = fcmp ogt float %128, %qp_min.1
  br i1 %cmp311, label %land.lhs.true313, label %while.end351

while.end351:                                     ; preds = %lor.rhs332, %while.body342, %lor.lhs.false320, %while.end
  %129 = phi float [ %118, %while.end ], [ %119, %lor.lhs.false320 ], [ %128, %while.body342 ], [ %119, %lor.rhs332 ]
  %b1.1.lcssa = phi i32 [ %b1.0.lcssa, %while.end ], [ %b1.1621, %lor.lhs.false320 ], [ %conv350, %while.body342 ], [ %b1.1621, %lor.rhs332 ]
  %frame_size_maximum = getelementptr inbounds i8, ptr %0, i64 512
  %cmp354625 = fcmp olt float %129, %qp_absolute_max.0
  br i1 %cmp354625, label %land.rhs356.lr.ph, label %while.end384

land.rhs356.lr.ph:                                ; preds = %while.end351
  %buffer_rate360 = getelementptr inbounds i8, ptr %0, i64 128
  %max_frame_error361 = getelementptr inbounds i8, ptr %0, i64 536
  br label %land.rhs356

land.rhs356:                                      ; preds = %land.rhs356.lr.ph, %while.body375
  %130 = phi float [ %129, %land.rhs356.lr.ph ], [ %135, %while.body375 ]
  %b1.2626 = phi i32 [ %b1.1.lcssa, %land.rhs356.lr.ph ], [ %conv383, %while.body375 ]
  %131 = load double, ptr %buffer_fill, align 8
  %conv358 = sitofp i32 %b1.2626 to double
  %sub359 = fsub double %131, %conv358
  %132 = load double, ptr %buffer_rate360, align 8
  %133 = load double, ptr %max_frame_error361, align 8
  %mul362 = fmul double %132, %133
  %cmp363 = fcmp olt double %sub359, %mul362
  br i1 %cmp363, label %while.body375, label %lor.rhs365

lor.rhs365:                                       ; preds = %land.rhs356
  %134 = load double, ptr %frame_size_maximum, align 8
  %sub367 = fsub double %134, %conv358
  %mul370 = fmul double %133, %134
  %cmp371 = fcmp olt double %sub367, %mul370
  br i1 %cmp371, label %while.body375, label %while.end384

while.body375:                                    ; preds = %land.rhs356, %lor.rhs365
  %add377 = fadd float %130, 5.000000e-01
  store float %add377, ptr %qpm, align 4
  %conv379 = fpext float %add377 to double
  %call380 = tail call fastcc double @predict_row_size_sum(ptr noundef %h, i32 noundef %1, double noundef %conv379)
  %add382 = fadd double %size_of_other_slices.2, %call380
  %conv383 = fptosi double %add382 to i32
  %135 = load float, ptr %qpm, align 4
  %cmp354 = fcmp olt float %135, %qp_absolute_max.0
  br i1 %cmp354, label %land.rhs356, label %while.end384

while.end384:                                     ; preds = %lor.rhs365, %while.body375, %while.end351
  %.lcssa = phi float [ %129, %while.end351 ], [ %135, %while.body375 ], [ %130, %lor.rhs365 ]
  %conv386 = fpext float %.lcssa to double
  %call387 = tail call fastcc double @predict_row_size_sum(ptr noundef %h, i32 noundef %1, double noundef %conv386)
  %conv388 = fptrunc double %call387 to float
  %136 = load ptr, ptr %rc1, align 16
  %frame_size_estimated390 = getelementptr inbounds i8, ptr %136, i64 508
  store float %conv388, ptr %frame_size_estimated390, align 4
  br label %cleanup401

cleanup401:                                       ; preds = %while.end384, %row_bits_so_far.exit, %if.end50, %entry, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc double @predict_row_size_sum(ptr nocapture noundef readonly %h, i32 noundef %y, double noundef %qp) unnamed_addr #0 {
entry:
  %i_threadslice_start.i = getelementptr inbounds i8, ptr %h, i64 1748
  %0 = load i32, ptr %i_threadslice_start.i, align 4
  %cmp.not5.i = icmp sgt i32 %0, %y
  br i1 %cmp.not5.i, label %entry.row_bits_so_far.exit_crit_edge, label %for.body.lr.ph.i

entry.row_bits_so_far.exit_crit_edge:             ; preds = %entry
  %.pre = add nsw i32 %y, 1
  br label %row_bits_so_far.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %fdec.i = getelementptr inbounds i8, ptr %h, i64 14688
  %1 = load ptr, ptr %fdec.i, align 16
  %i_row_bits.i = getelementptr inbounds i8, ptr %1, i64 12136
  %2 = load ptr, ptr %i_row_bits.i, align 8
  %3 = sext i32 %0 to i64
  %4 = add i32 %y, 1
  %5 = sub i32 %4, %0
  %6 = sub i32 %y, %0
  %xtraiter = and i32 %5, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.i.prol.loopexit, label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.lr.ph.i, %for.body.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ], [ %3, %for.body.lr.ph.i ]
  %bits.06.i.prol = phi double [ %add.i.prol, %for.body.i.prol ], [ 0.000000e+00, %for.body.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body.i.prol ], [ 0, %for.body.lr.ph.i ]
  %arrayidx.i.prol = getelementptr inbounds i32, ptr %2, i64 %indvars.iv.i.prol
  %7 = load i32, ptr %arrayidx.i.prol, align 4
  %conv.i.prol = sitofp i32 %7 to double
  %add.i.prol = fadd double %bits.06.i.prol, %conv.i.prol
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.i.prol.loopexit, label %for.body.i.prol, !llvm.loop !23

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol, %for.body.lr.ph.i
  %add.i.lcssa.unr = phi double [ poison, %for.body.lr.ph.i ], [ %add.i.prol, %for.body.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %3, %for.body.lr.ph.i ], [ %indvars.iv.next.i.prol, %for.body.i.prol ]
  %bits.06.i.unr = phi double [ 0.000000e+00, %for.body.lr.ph.i ], [ %add.i.prol, %for.body.i.prol ]
  %8 = icmp ult i32 %6, 3
  br i1 %8, label %row_bits_so_far.exit, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.i.prol.loopexit
  %invariant.gep = getelementptr i8, ptr %2, i64 4
  %invariant.gep18 = getelementptr i8, ptr %2, i64 8
  %invariant.gep20 = getelementptr i8, ptr %2, i64 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %bits.06.i = phi double [ %bits.06.i.unr, %for.body.lr.ph.i.new ], [ %add.i.3, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i32, ptr %2, i64 %indvars.iv.i
  %9 = load i32, ptr %arrayidx.i, align 4
  %conv.i = sitofp i32 %9 to double
  %add.i = fadd double %bits.06.i, %conv.i
  %gep = getelementptr i32, ptr %invariant.gep, i64 %indvars.iv.i
  %10 = load i32, ptr %gep, align 4
  %conv.i.1 = sitofp i32 %10 to double
  %add.i.1 = fadd double %add.i, %conv.i.1
  %gep19 = getelementptr i32, ptr %invariant.gep18, i64 %indvars.iv.i
  %11 = load i32, ptr %gep19, align 4
  %conv.i.2 = sitofp i32 %11 to double
  %add.i.2 = fadd double %add.i.1, %conv.i.2
  %gep21 = getelementptr i32, ptr %invariant.gep20, i64 %indvars.iv.i
  %12 = load i32, ptr %gep21, align 4
  %conv.i.3 = sitofp i32 %12 to double
  %add.i.3 = fadd double %add.i.2, %conv.i.3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond.not.i.3 = icmp eq i32 %4, %lftr.wideiv.i.3
  br i1 %exitcond.not.i.3, label %row_bits_so_far.exit, label %for.body.i

row_bits_so_far.exit:                             ; preds = %for.body.i.prol.loopexit, %for.body.i, %entry.row_bits_so_far.exit_crit_edge
  %i.013.pre-phi = phi i32 [ %.pre, %entry.row_bits_so_far.exit_crit_edge ], [ %4, %for.body.i ], [ %4, %for.body.i.prol.loopexit ]
  %bits.0.lcssa.i = phi double [ 0.000000e+00, %entry.row_bits_so_far.exit_crit_edge ], [ %add.i.lcssa.unr, %for.body.i.prol.loopexit ], [ %add.i.3, %for.body.i ]
  %i_threadslice_end = getelementptr inbounds i8, ptr %h, i64 1752
  %13 = load i32, ptr %i_threadslice_end, align 8
  %cmp14 = icmp slt i32 %i.013.pre-phi, %13
  br i1 %cmp14, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %row_bits_so_far.exit
  %rc1.i = getelementptr inbounds i8, ptr %h, i64 26704
  %sub.i.i = fadd double %qp, -1.200000e+01
  %div.i.i = fdiv double %sub.i.i, 6.000000e+00
  %fdec.i9 = getelementptr inbounds i8, ptr %h, i64 14688
  %i_type.i = getelementptr inbounds i8, ptr %h, i64 7248
  %fref0.i = getelementptr inbounds i8, ptr %h, i64 14704
  %14 = sext i32 %i.013.pre-phi to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %predict_row_size.exit, %row_bits_so_far.exit
  %bits.0.lcssa = phi double [ %bits.0.lcssa.i, %row_bits_so_far.exit ], [ %add2, %predict_row_size.exit ]
  ret double %bits.0.lcssa

for.body:                                         ; preds = %for.body.lr.ph, %predict_row_size.exit
  %indvars.iv = phi i64 [ %14, %for.body.lr.ph ], [ %indvars.iv.next, %predict_row_size.exit ]
  %bits.015 = phi double [ %bits.0.lcssa.i, %for.body.lr.ph ], [ %add2, %predict_row_size.exit ]
  %15 = load ptr, ptr %rc1.i, align 16
  %row_pred.i = getelementptr inbounds i8, ptr %15, i64 544
  %16 = load ptr, ptr %row_pred.i, align 8
  %exp2.i.i = tail call double @exp2(double %div.i.i) #16
  %mul.i.i = fmul double %exp2.i.i, 8.500000e-01
  %17 = load ptr, ptr %fdec.i9, align 16
  %i_row_satd.i = getelementptr inbounds i8, ptr %17, i64 12128
  %18 = load ptr, ptr %i_row_satd.i, align 16
  %arrayidx2.i = getelementptr inbounds i32, ptr %18, i64 %indvars.iv
  %19 = load i32, ptr %arrayidx2.i, align 4
  %conv.i10 = sitofp i32 %19 to double
  %20 = load double, ptr %16, align 8
  %offset.i.i = getelementptr inbounds i8, ptr %16, i64 24
  %21 = load double, ptr %offset.i.i, align 8
  %22 = tail call double @llvm.fmuladd.f64(double %20, double %conv.i10, double %21)
  %count.i.i = getelementptr inbounds i8, ptr %16, i64 8
  %23 = load double, ptr %count.i.i, align 8
  %mul.i123.i = fmul double %mul.i.i, %23
  %div.i124.i = fdiv double %22, %mul.i123.i
  %24 = load i32, ptr %i_type.i, align 16
  %cmp.i = icmp eq i32 %24, 2
  br i1 %cmp.i, label %if.end.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body
  %25 = load ptr, ptr %fref0.i, align 16
  %f_row_qp.i = getelementptr inbounds i8, ptr %25, i64 12144
  %26 = load ptr, ptr %f_row_qp.i, align 16
  %arrayidx7.i = getelementptr inbounds float, ptr %26, i64 %indvars.iv
  %27 = load float, ptr %arrayidx7.i, align 4
  %conv8.i = fpext float %27 to double
  %cmp9.i = fcmp ugt double %conv8.i, %qp
  br i1 %cmp9.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i
  %cmp13.i = icmp eq i32 %24, 0
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %i_type17.i = getelementptr inbounds i8, ptr %25, i64 4
  %28 = load i32, ptr %i_type17.i, align 4
  %i_type19.i = getelementptr inbounds i8, ptr %17, i64 4
  %29 = load i32, ptr %i_type19.i, align 4
  %cmp20.i = icmp eq i32 %28, %29
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end.i

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %i_row_satd25.i = getelementptr inbounds i8, ptr %25, i64 12128
  %30 = load ptr, ptr %i_row_satd25.i, align 16
  %arrayidx27.i = getelementptr inbounds i32, ptr %30, i64 %indvars.iv
  %31 = load i32, ptr %arrayidx27.i, align 4
  %cmp28.i = icmp sgt i32 %31, 0
  br i1 %cmp28.i, label %land.lhs.true30.i, label %if.end.i

land.lhs.true30.i:                                ; preds = %land.lhs.true22.i
  %sub.i = sub nsw i32 %31, %19
  %32 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true)
  %div.i = sdiv i32 %19, 2
  %cmp44.i = icmp slt i32 %32, %div.i
  br i1 %cmp44.i, label %if.then46.i, label %if.end.i

if.then46.i:                                      ; preds = %land.lhs.true30.i
  %i_row_bits.i12 = getelementptr inbounds i8, ptr %25, i64 12136
  %33 = load ptr, ptr %i_row_bits.i12, align 8
  %arrayidx50.i = getelementptr inbounds i32, ptr %33, i64 %indvars.iv
  %34 = load i32, ptr %arrayidx50.i, align 4
  %mul.i = mul nsw i32 %34, %19
  %div60.i = sdiv i32 %mul.i, %31
  %conv61.i = sitofp i32 %div60.i to double
  %sub.i125.i = fadd double %conv8.i, -1.200000e+01
  %div.i126.i = fdiv double %sub.i125.i, 6.000000e+00
  %exp2.i127.i = tail call double @exp2(double %div.i126.i) #16
  %mul.i128.i = fmul double %exp2.i127.i, 8.500000e-01
  %mul69.i = fmul double %mul.i128.i, %conv61.i
  %exp2.i131.i = tail call double @exp2(double %div.i.i) #16
  %mul.i132.i = fmul double %exp2.i131.i, 8.500000e-01
  %div71.i = fdiv double %mul69.i, %mul.i132.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then46.i, %land.lhs.true30.i, %land.lhs.true22.i, %land.lhs.true.i, %if.then.i, %for.body
  %pred_t.0.i = phi double [ %div71.i, %if.then46.i ], [ 0.000000e+00, %land.lhs.true30.i ], [ 0.000000e+00, %land.lhs.true22.i ], [ 0.000000e+00, %land.lhs.true.i ], [ 0.000000e+00, %if.then.i ], [ 0.000000e+00, %for.body ]
  %cmp72.i = fcmp oeq double %pred_t.0.i, 0.000000e+00
  %pred_t.1.i = select i1 %cmp72.i, double %div.i124.i, double %pred_t.0.i
  %add.i11 = fadd double %div.i124.i, %pred_t.1.i
  %div76.i = fmul double %add.i11, 5.000000e-01
  br label %predict_row_size.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %35 = load ptr, ptr %row_pred.i, align 8
  %arrayidx78.i = getelementptr inbounds i8, ptr %35, i64 64
  %exp2.i135.i = tail call double @exp2(double %div.i.i) #16
  %mul.i136.i = fmul double %exp2.i135.i, 8.500000e-01
  %36 = load ptr, ptr %fdec.i9, align 16
  %i_row_satds.i = getelementptr inbounds i8, ptr %36, i64 9536
  %37 = load ptr, ptr %i_row_satds.i, align 16
  %arrayidx85.i = getelementptr inbounds i32, ptr %37, i64 %indvars.iv
  %38 = load i32, ptr %arrayidx85.i, align 4
  %conv86.i = sitofp i32 %38 to double
  %39 = load double, ptr %arrayidx78.i, align 8
  %offset.i137.i = getelementptr inbounds i8, ptr %35, i64 88
  %40 = load double, ptr %offset.i137.i, align 8
  %41 = tail call double @llvm.fmuladd.f64(double %39, double %conv86.i, double %40)
  %count.i138.i = getelementptr inbounds i8, ptr %35, i64 72
  %42 = load double, ptr %count.i138.i, align 8
  %mul.i139.i = fmul double %mul.i136.i, %42
  %div.i140.i = fdiv double %41, %mul.i139.i
  %add88.i = fadd double %div.i124.i, %div.i140.i
  br label %predict_row_size.exit

predict_row_size.exit:                            ; preds = %if.end.i, %if.else.i
  %retval.0.i = phi double [ %div76.i, %if.end.i ], [ %add88.i, %if.else.i ]
  %add2 = fadd double %bits.015, %retval.0.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %43 = load i32, ptr %i_threadslice_end, align 8
  %44 = sext i32 %43 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %44
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @x264_ratecontrol_qp(ptr nocapture noundef readonly %h) local_unnamed_addr #11 {
entry:
  %rc = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc, align 16
  %qpm = getelementptr inbounds i8, ptr %0, i64 84
  %1 = load float, ptr %qpm, align 4
  %conv = fpext float %1 to double
  %add = fadd double %conv, 5.000000e-01
  %conv1 = fptosi double %add to i32
  %i_qp_min = getelementptr inbounds i8, ptr %h, i64 496
  %2 = load i32, ptr %i_qp_min, align 8
  %i_qp_max = getelementptr inbounds i8, ptr %h, i64 500
  %3 = load i32, ptr %i_qp_max, align 4
  %cmp.i = icmp sgt i32 %2, %conv1
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv1, i32 %3)
  %cond5.i = select i1 %cmp.i, i32 %2, i32 %cond.i
  ret i32 %cond5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @x264_ratecontrol_mb_qp(ptr nocapture noundef readonly %h) local_unnamed_addr #11 {
entry:
  %rc = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc, align 16
  %qpm = getelementptr inbounds i8, ptr %0, i64 84
  %1 = load float, ptr %qpm, align 4
  %i_aq_mode = getelementptr inbounds i8, ptr %h, i64 544
  %2 = load i32, ptr %i_aq_mode, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %3 = load ptr, ptr %fdec, align 16
  %b_kept_as_ref = getelementptr inbounds i8, ptr %3, i64 72
  %4 = load i32, ptr %b_kept_as_ref, align 8
  %tobool2.not = icmp eq i32 %4, 0
  %fenc3 = getelementptr inbounds i8, ptr %h, i64 14680
  %5 = load ptr, ptr %fenc3, align 8
  %i_mb_xy5 = getelementptr inbounds i8, ptr %h, i64 16392
  %6 = load i32, ptr %i_mb_xy5, align 8
  %idxprom6 = sext i32 %6 to i64
  %. = select i1 %tobool2.not, i64 12160, i64 12152
  %f_qp_offset_aq = getelementptr inbounds i8, ptr %5, i64 %.
  %.sink = load ptr, ptr %f_qp_offset_aq, align 8
  %arrayidx7 = getelementptr inbounds float, ptr %.sink, i64 %idxprom6
  %cond = load float, ptr %arrayidx7, align 4
  %add = fadd float %1, %cond
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %qp.0 = phi float [ %add, %if.then ], [ %1, %entry ]
  %conv = fpext float %qp.0 to double
  %add8 = fadd double %conv, 5.000000e-01
  %conv9 = fptosi double %add8 to i32
  %i_qp_min = getelementptr inbounds i8, ptr %h, i64 496
  %7 = load i32, ptr %i_qp_min, align 8
  %i_qp_max = getelementptr inbounds i8, ptr %h, i64 500
  %8 = load i32, ptr %i_qp_max, align 4
  %cmp.i = icmp sgt i32 %7, %conv9
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv9, i32 %8)
  %cond5.i = select i1 %cmp.i, i32 %7, i32 %cond.i
  ret i32 %cond5.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_ratecontrol_slice_type(ptr noundef %h, i32 noundef %frame_num) local_unnamed_addr #0 {
entry:
  %rc1 = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc1, align 16
  %b_stat_read = getelementptr inbounds i8, ptr %h, i64 576
  %1 = load i32, ptr %b_stat_read, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %num_entries = getelementptr inbounds i8, ptr %0, i64 304
  %2 = load i32, ptr %num_entries, align 8
  %cmp.not = icmp sgt i32 %2, %frame_num
  br i1 %cmp.not, label %if.end100, label %if.then3

if.then3:                                         ; preds = %if.then
  %i_frame_count = getelementptr inbounds i8, ptr %h, i64 27416
  %3 = load i32, ptr %i_frame_count, align 8
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.then3
  %i_qp_constant159 = getelementptr inbounds i8, ptr %h, i64 492
  store i32 24, ptr %i_qp_constant159, align 4
  br label %6

cond.end:                                         ; preds = %if.then3
  %f_frame_qp = getelementptr inbounds i8, ptr %h, i64 27480
  %4 = load double, ptr %f_frame_qp, align 8
  %conv = sitofp i32 %3 to double
  %div = fdiv double %4, %conv
  %add = fadd double %div, 1.000000e+00
  %5 = fptosi double %add to i32
  %.fr = freeze i32 %5
  %i_qp_constant = getelementptr inbounds i8, ptr %h, i64 492
  store i32 %.fr, ptr %i_qp_constant, align 4
  %cond.i = tail call i32 @llvm.smin.i32(i32 %.fr, i32 51)
  %spec.select = tail call i32 @llvm.smax.i32(i32 %cond.i, i32 0)
  br label %6

6:                                                ; preds = %cond.end, %cond.end.thread
  %i_qp_constant163 = phi ptr [ %i_qp_constant159, %cond.end.thread ], [ %i_qp_constant, %cond.end ]
  %7 = phi i32 [ 24, %cond.end.thread ], [ %spec.select, %cond.end ]
  %qp_constant = getelementptr inbounds i8, ptr %0, i64 52
  store i32 %7, ptr %qp_constant, align 4
  %8 = load i32, ptr %i_qp_constant163, align 4
  %conv20 = sitofp i32 %8 to double
  %sub.i = fadd double %conv20, -1.200000e+01
  %div.i = fdiv double %sub.i, 6.000000e+00
  %exp2.i = tail call double @exp2(double %div.i) #16
  %mul.i = fmul double %exp2.i, 8.500000e-01
  %f_ip_factor = getelementptr inbounds i8, ptr %h, i64 536
  %9 = load float, ptr %f_ip_factor, align 8
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fpext float %10 to double
  %div25 = fdiv double %mul.i, %11
  %div.i145 = fdiv double %div25, 8.500000e-01
  %call.i = tail call double @log2(double noundef %div.i145) #16
  %12 = tail call double @llvm.fmuladd.f64(double %call.i, double 6.000000e+00, double 1.200000e+01)
  %add27 = fadd double %12, 5.000000e-01
  %conv28 = fptosi double %add27 to i32
  %cond.i147 = tail call i32 @llvm.smin.i32(i32 %conv28, i32 51)
  %cond5.i148 = tail call i32 @llvm.smax.i32(i32 %cond.i147, i32 0)
  %arrayidx31 = getelementptr inbounds i8, ptr %0, i64 60
  store i32 %cond5.i148, ptr %arrayidx31, align 4
  %13 = load i32, ptr %i_qp_constant163, align 4
  %conv35 = sitofp i32 %13 to double
  %sub.i149 = fadd double %conv35, -1.200000e+01
  %div.i150 = fdiv double %sub.i149, 6.000000e+00
  %exp2.i151 = tail call double @exp2(double %div.i150) #16
  %mul.i152 = fmul double %exp2.i151, 8.500000e-01
  %f_pb_factor = getelementptr inbounds i8, ptr %h, i64 540
  %14 = load float, ptr %f_pb_factor, align 4
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fpext float %15 to double
  %mul = fmul double %mul.i152, %16
  %div.i153 = fdiv double %mul, 8.500000e-01
  %call.i154 = tail call double @log2(double noundef %div.i153) #16
  %17 = tail call double @llvm.fmuladd.f64(double %call.i154, double 6.000000e+00, double 1.200000e+01)
  %add41 = fadd double %17, 5.000000e-01
  %conv42 = fptosi double %add41 to i32
  %cond.i156 = tail call i32 @llvm.smin.i32(i32 %conv42, i32 51)
  %cond5.i157 = tail call i32 @llvm.smax.i32(i32 %cond.i156, i32 0)
  %arrayidx45 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 %cond5.i157, ptr %arrayidx45, align 4
  %18 = load i32, ptr %num_entries, align 8
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.63, i32 noundef %18) #16
  %19 = load i32, ptr %i_qp_constant163, align 4
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.64, i32 noundef %19) #16
  %i_bframe_adaptive = getelementptr inbounds i8, ptr %h, i64 104
  %20 = load i32, ptr %i_bframe_adaptive, align 8
  %tobool51.not = icmp eq i32 %20, 0
  br i1 %tobool51.not, label %if.end, label %if.then52

if.then52:                                        ; preds = %6
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.65) #16
  br label %if.end

if.end:                                           ; preds = %if.then52, %6
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
  %21 = load i32, ptr %i_threads, align 4
  %cmp54164 = icmp sgt i32 %21, 0
  br i1 %cmp54164, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx56 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv
  %22 = load ptr, ptr %arrayidx56, align 8
  %rc57 = getelementptr inbounds i8, ptr %22, i64 26704
  %23 = load ptr, ptr %rc57, align 16
  store i32 0, ptr %23, align 8
  %24 = load ptr, ptr %arrayidx56, align 8
  %rc61 = getelementptr inbounds i8, ptr %24, i64 26704
  %25 = load ptr, ptr %rc61, align 16
  %b_2pass = getelementptr inbounds i8, ptr %25, i64 4
  store i32 0, ptr %b_2pass, align 4
  %26 = load ptr, ptr %arrayidx56, align 8
  %rc66 = getelementptr inbounds i8, ptr %26, i64 488
  store i32 0, ptr %rc66, align 8
  %27 = load ptr, ptr %arrayidx56, align 8
  %b_stat_read72 = getelementptr inbounds i8, ptr %27, i64 576
  store i32 0, ptr %b_stat_read72, align 8
  %28 = load ptr, ptr %arrayidx56, align 8
  %i_bframe_adaptive77 = getelementptr inbounds i8, ptr %28, i64 104
  store i32 0, ptr %i_bframe_adaptive77, align 8
  %29 = load ptr, ptr %arrayidx56, align 8
  %i_scenecut_threshold = getelementptr inbounds i8, ptr %29, i64 92
  store i32 0, ptr %i_scenecut_threshold, align 4
  %30 = load ptr, ptr %arrayidx56, align 8
  %b_mb_tree = getelementptr inbounds i8, ptr %30, i64 552
  store i32 0, ptr %b_mb_tree, align 8
  %31 = load ptr, ptr %arrayidx56, align 8
  %i_bframe = getelementptr inbounds i8, ptr %31, i64 100
  %32 = load i32, ptr %i_bframe, align 4
  %cmp91 = icmp sgt i32 %32, 1
  br i1 %cmp91, label %if.then93, label %for.inc

if.then93:                                        ; preds = %for.body
  store i32 1, ptr %i_bframe, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %33 = load i32, ptr %i_threads, align 4
  %34 = sext i32 %33 to i64
  %cmp54 = icmp slt i64 %indvars.iv.next, %34
  br i1 %cmp54, label %for.body, label %cleanup

if.end100:                                        ; preds = %if.then
  %entry101 = getelementptr inbounds i8, ptr %0, i64 312
  %35 = load ptr, ptr %entry101, align 8
  %idxprom102 = sext i32 %frame_num to i64
  %frame_type = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %35, i64 %idxprom102, i32 1
  %36 = load i32, ptr %frame_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %if.end, %entry, %if.end100
  %retval.0 = phi i32 [ %36, %if.end100 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_set_weights(ptr noundef %h, ptr noundef %frm) local_unnamed_addr #0 {
entry:
  %rc = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc, align 16
  %entry1 = getelementptr inbounds i8, ptr %0, i64 312
  %1 = load ptr, ptr %entry1, align 8
  %i_frame = getelementptr inbounds i8, ptr %frm, i64 56
  %2 = load i32, ptr %i_frame, align 8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1, i64 %idxprom
  %i_weighted_pred = getelementptr inbounds i8, ptr %h, i64 396
  %3 = load i32, ptr %i_weighted_pred, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_weight_denom = getelementptr inbounds i8, ptr %arrayidx, i64 90
  %4 = load i16, ptr %i_weight_denom, align 2
  %cmp2 = icmp sgt i16 %4, -1
  br i1 %cmp2, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %weight = getelementptr inbounds i8, ptr %arrayidx, i64 86
  %5 = load i16, ptr %weight, align 2
  %conv6 = sext i16 %5 to i32
  %weight7 = getelementptr inbounds i8, ptr %frm, i64 320
  %i_scale = getelementptr inbounds i8, ptr %frm, i64 356
  store i32 %conv6, ptr %i_scale, align 4
  %6 = load i16, ptr %i_weight_denom, align 2
  %conv11 = sext i16 %6 to i32
  %i_denom = getelementptr inbounds i8, ptr %frm, i64 352
  store i32 %conv11, ptr %i_denom, align 16
  %arrayidx16 = getelementptr inbounds i8, ptr %arrayidx, i64 88
  %7 = load i16, ptr %arrayidx16, align 2
  %conv17 = sext i16 %7 to i32
  %i_offset = getelementptr inbounds i8, ptr %frm, i64 360
  store i32 %conv17, ptr %i_offset, align 8
  %weight_cache = getelementptr inbounds i8, ptr %h, i64 32896
  %8 = load ptr, ptr %weight_cache, align 8
  tail call void %8(ptr noundef nonnull %h, ptr noundef nonnull %weight7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_ratecontrol_end(ptr noundef %h, i32 noundef %bits, ptr nocapture noundef %filler) local_unnamed_addr #0 {
entry:
  %i_type220 = alloca i8, align 1
  %rc1 = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc1, align 16
  %i_mb_count = getelementptr inbounds i8, ptr %h, i64 26724
  %arrayidx = getelementptr inbounds i8, ptr %h, i64 26748
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i8, ptr %h, i64 26796
  %2 = load i32, ptr %arrayidx2, align 4
  %add = add nsw i32 %2, %1
  %i_mb_count_skip = getelementptr inbounds i8, ptr %h, i64 26808
  store i32 %add, ptr %i_mb_count_skip, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %h, i64 26732
  %3 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds i8, ptr %h, i64 26728
  %4 = load i32, ptr %arrayidx6, align 4
  %add7 = add nsw i32 %4, %3
  %5 = load i32, ptr %i_mb_count, align 4
  %add9 = add nsw i32 %add7, %5
  %i_mb_count_i = getelementptr inbounds i8, ptr %h, i64 26800
  store i32 %add9, ptr %i_mb_count_i, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %h, i64 26740
  %6 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds i8, ptr %h, i64 26744
  %7 = load i32, ptr %arrayidx13, align 4
  %add14 = add nsw i32 %7, %6
  %i_mb_count_p = getelementptr inbounds i8, ptr %h, i64 26804
  %arrayidx17 = getelementptr inbounds i8, ptr %h, i64 26752
  %8 = load i32, ptr %arrayidx17, align 4
  %add21 = add nsw i32 %add14, %8
  %arrayidx17.1 = getelementptr inbounds i8, ptr %h, i64 26756
  %9 = load i32, ptr %arrayidx17.1, align 4
  %add21.1 = add nsw i32 %add21, %9
  %arrayidx17.2 = getelementptr inbounds i8, ptr %h, i64 26760
  %10 = load i32, ptr %arrayidx17.2, align 4
  %add21.2 = add nsw i32 %add21.1, %10
  %arrayidx17.3 = getelementptr inbounds i8, ptr %h, i64 26764
  %11 = load i32, ptr %arrayidx17.3, align 4
  %add21.3 = add nsw i32 %add21.2, %11
  %arrayidx17.4 = getelementptr inbounds i8, ptr %h, i64 26768
  %12 = load i32, ptr %arrayidx17.4, align 4
  %add21.4 = add nsw i32 %add21.3, %12
  %arrayidx17.5 = getelementptr inbounds i8, ptr %h, i64 26772
  %13 = load i32, ptr %arrayidx17.5, align 4
  %add21.5 = add nsw i32 %add21.4, %13
  %arrayidx17.6 = getelementptr inbounds i8, ptr %h, i64 26776
  %14 = load i32, ptr %arrayidx17.6, align 4
  %add21.6 = add nsw i32 %add21.5, %14
  %arrayidx17.7 = getelementptr inbounds i8, ptr %h, i64 26780
  %15 = load i32, ptr %arrayidx17.7, align 4
  %add21.7 = add nsw i32 %add21.6, %15
  %arrayidx17.8 = getelementptr inbounds i8, ptr %h, i64 26784
  %16 = load i32, ptr %arrayidx17.8, align 4
  %add21.8 = add nsw i32 %add21.7, %16
  %arrayidx17.9 = getelementptr inbounds i8, ptr %h, i64 26788
  %17 = load i32, ptr %arrayidx17.9, align 4
  %add21.9 = add nsw i32 %add21.8, %17
  store i32 %add21.9, ptr %i_mb_count_p, align 4
  %stat = getelementptr inbounds i8, ptr %h, i64 26712
  %mb = getelementptr inbounds i8, ptr %h, i64 16368
  %18 = load i32, ptr %mb, align 16
  %conv = sitofp i32 %18 to float
  %qpa_rc = getelementptr inbounds i8, ptr %0, i64 88
  %19 = load float, ptr %qpa_rc, align 8
  %div = fdiv float %19, %conv
  store float %div, ptr %qpa_rc, align 8
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %20 = load ptr, ptr %fdec, align 16
  %f_qp_avg_rc = getelementptr inbounds i8, ptr %20, i64 88
  store float %div, ptr %f_qp_avg_rc, align 8
  %21 = load i32, ptr %mb, align 16
  %conv25 = sitofp i32 %21 to float
  %qpa_aq = getelementptr inbounds i8, ptr %0, i64 92
  %22 = load float, ptr %qpa_aq, align 4
  %div26 = fdiv float %22, %conv25
  store float %div26, ptr %qpa_aq, align 4
  %23 = load ptr, ptr %fdec, align 16
  %f_qp_avg_aq = getelementptr inbounds i8, ptr %23, i64 92
  store float %div26, ptr %f_qp_avg_aq, align 4
  %b_stat_write = getelementptr inbounds i8, ptr %h, i64 560
  %24 = load i32, ptr %b_stat_write, align 8
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end278, label %if.then

if.then:                                          ; preds = %entry
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %25 = load i32, ptr %i_type, align 16
  switch i32 %25, label %cond.false38 [
    i32 2, label %cond.true
    i32 0, label %cond.end43
  ]

cond.true:                                        ; preds = %if.then
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %26 = load ptr, ptr %fenc, align 8
  %27 = load i32, ptr %26, align 16
  %cmp31 = icmp eq i32 %27, 0
  %cond = select i1 %cmp31, i32 73, i32 105
  br label %cond.end43

cond.false38:                                     ; preds = %if.then
  %fenc39 = getelementptr inbounds i8, ptr %h, i64 14680
  %28 = load ptr, ptr %fenc39, align 8
  %b_kept_as_ref = getelementptr inbounds i8, ptr %28, i64 72
  %29 = load i32, ptr %b_kept_as_ref, align 8
  %tobool40.not = icmp eq i32 %29, 0
  %cond41 = select i1 %tobool40.not, i32 98, i32 66
  br label %cond.end43

cond.end43:                                       ; preds = %if.then, %cond.false38, %cond.true
  %cond44 = phi i32 [ %cond, %cond.true ], [ %cond41, %cond.false38 ], [ 80, %if.then ]
  %i_direct_score = getelementptr inbounds i8, ptr %h, i64 27376
  %arrayidx48 = getelementptr inbounds i8, ptr %h, i64 27380
  %30 = load i32, ptr %arrayidx48, align 4
  %31 = load i32, ptr %i_direct_score, align 8
  %sub = sub nsw i32 %30, %31
  %i_direct_score54 = getelementptr inbounds i8, ptr %h, i64 30368
  %arrayidx55 = getelementptr inbounds i8, ptr %h, i64 30372
  %32 = load i32, ptr %arrayidx55, align 4
  %33 = load i32, ptr %i_direct_score54, align 8
  %b_direct_auto_write = getelementptr inbounds i8, ptr %h, i64 25820
  %34 = load i32, ptr %b_direct_auto_write, align 4
  %tobool61.not = icmp eq i32 %34, 0
  br i1 %tobool61.not, label %cond.end85, label %cond.true62

cond.true62:                                      ; preds = %cond.end43
  %cmp63 = icmp sgt i32 %sub, 0
  br i1 %cmp63, label %cond.end85, label %cond.false66

cond.false66:                                     ; preds = %cond.true62
  %cmp67 = icmp slt i32 %sub, 0
  br i1 %cmp67, label %cond.end85, label %cond.false70

cond.false70:                                     ; preds = %cond.false66
  %cmp71 = icmp sgt i32 %32, %33
  br i1 %cmp71, label %cond.end85, label %cond.false74

cond.false74:                                     ; preds = %cond.false70
  %cmp75.not = icmp eq i32 %32, %33
  %cond77 = select i1 %cmp75.not, i32 45, i32 116
  br label %cond.end85

cond.end85:                                       ; preds = %cond.end43, %cond.true62, %cond.false74, %cond.false70, %cond.false66
  %cond86 = phi i32 [ 115, %cond.true62 ], [ 116, %cond.false66 ], [ %cond77, %cond.false74 ], [ 115, %cond.false70 ], [ 45, %cond.end43 ]
  %p_stat_file_out = getelementptr inbounds i8, ptr %0, i64 256
  %35 = load ptr, ptr %p_stat_file_out, align 8
  %fenc88 = getelementptr inbounds i8, ptr %h, i64 14680
  %36 = load ptr, ptr %fenc88, align 8
  %i_frame = getelementptr inbounds i8, ptr %36, i64 56
  %37 = load i32, ptr %i_frame, align 8
  %i_frame89 = getelementptr inbounds i8, ptr %h, i64 1844
  %38 = load i32, ptr %i_frame89, align 4
  %i_duration = getelementptr inbounds i8, ptr %36, i64 32
  %39 = load i32, ptr %i_duration, align 16
  %i_cpb_duration = getelementptr inbounds i8, ptr %36, i64 36
  %40 = load i32, ptr %i_cpb_duration, align 4
  %41 = load float, ptr %qpa_rc, align 8
  %conv94 = fpext float %41 to double
  %i_tex_bits = getelementptr inbounds i8, ptr %h, i64 26716
  %42 = load i32, ptr %i_tex_bits, align 4
  %43 = load i32, ptr %stat, align 8
  %i_misc_bits = getelementptr inbounds i8, ptr %h, i64 26720
  %44 = load i32, ptr %i_misc_bits, align 8
  %45 = load i32, ptr %i_mb_count_i, align 8
  %46 = load i32, ptr %i_mb_count_p, align 4
  %47 = load i32, ptr %i_mb_count_skip, align 8
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.66, i32 noundef %37, i32 noundef %38, i32 noundef %cond44, i32 noundef %39, i32 noundef %40, double noundef %conv94, i32 noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %cond86) #16
  %cmp111 = icmp slt i32 %call, 0
  br i1 %cmp111, label %fail, label %if.end

if.end:                                           ; preds = %cond.end85
  %b_stat_read = getelementptr inbounds i8, ptr %h, i64 576
  %48 = load i32, ptr %b_stat_read, align 8
  %tobool116.not = icmp eq i32 %48, 0
  br i1 %tobool116.not, label %for.cond120.preheader, label %land.end

land.end:                                         ; preds = %if.end
  %rce = getelementptr inbounds i8, ptr %0, i64 72
  %49 = load ptr, ptr %rce, align 8
  %refs = getelementptr inbounds i8, ptr %49, i64 156
  %50 = load i32, ptr %refs, align 4
  %cmp117 = icmp sgt i32 %50, 1
  %rce123 = getelementptr inbounds i8, ptr %0, i64 72
  br i1 %cmp117, label %for.cond120.us, label %for.cond120.preheader

for.cond120.preheader:                            ; preds = %if.end, %land.end
  %i_ref0723 = getelementptr inbounds i8, ptr %h, i64 14696
  %b_interlaced724 = getelementptr inbounds i8, ptr %h, i64 136
  %i_mb_count_ref725 = getelementptr inbounds i8, ptr %h, i64 26820
  br label %for.cond120

for.cond120.us:                                   ; preds = %land.end, %cond.true133.us
  %indvars.iv713 = phi i64 [ %indvars.iv.next714, %cond.true133.us ], [ 0, %land.end ]
  %51 = load ptr, ptr %rce123, align 8
  %refs124.us = getelementptr inbounds i8, ptr %51, i64 156
  %cond127.us = load i32, ptr %refs124.us, align 4
  %52 = sext i32 %cond127.us to i64
  %cmp128.us = icmp slt i64 %indvars.iv713, %52
  br i1 %cmp128.us, label %cond.true133.us, label %for.end177

cond.true133.us:                                  ; preds = %for.cond120.us
  %refcount135.us = getelementptr inbounds i8, ptr %51, i64 92
  %arrayidx137.us = getelementptr inbounds [16 x i32], ptr %refcount135.us, i64 0, i64 %indvars.iv713
  %53 = load i32, ptr %arrayidx137.us, align 4
  %54 = load ptr, ptr %p_stat_file_out, align 8
  %call168.us = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.67, i32 noundef %53) #16
  %cmp169.us = icmp sgt i32 %call168.us, -1
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1
  br i1 %cmp169.us, label %for.cond120.us, label %fail

for.cond120:                                      ; preds = %for.cond120.preheader, %cond.end165
  %indvars.iv = phi i64 [ 0, %for.cond120.preheader ], [ %indvars.iv.next, %cond.end165 ]
  %cond127695 = load i32, ptr %i_ref0723, align 4
  %55 = sext i32 %cond127695 to i64
  %cmp128696 = icmp slt i64 %indvars.iv, %55
  br i1 %cmp128696, label %cond.false138, label %for.end177

cond.false138:                                    ; preds = %for.cond120
  %56 = load i32, ptr %b_interlaced724, align 8
  %tobool140.not = icmp eq i32 %56, 0
  br i1 %tobool140.not, label %cond.false156, label %cond.true141

cond.true141:                                     ; preds = %cond.false138
  %57 = shl nuw nsw i64 %indvars.iv, 1
  %arrayidx146 = getelementptr inbounds [32 x i32], ptr %i_mb_count_ref725, i64 0, i64 %57
  %58 = load i32, ptr %arrayidx146, align 4
  %59 = or disjoint i64 %57, 1
  %arrayidx154 = getelementptr inbounds [32 x i32], ptr %i_mb_count_ref725, i64 0, i64 %59
  %60 = load i32, ptr %arrayidx154, align 4
  %add155 = add nsw i32 %60, %58
  br label %cond.end165

cond.false156:                                    ; preds = %cond.false138
  %arrayidx162 = getelementptr inbounds [32 x i32], ptr %i_mb_count_ref725, i64 0, i64 %indvars.iv
  %61 = load i32, ptr %arrayidx162, align 4
  br label %cond.end165

cond.end165:                                      ; preds = %cond.true141, %cond.false156
  %cond166 = phi i32 [ %add155, %cond.true141 ], [ %61, %cond.false156 ]
  %62 = load ptr, ptr %p_stat_file_out, align 8
  %call168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.67, i32 noundef %cond166) #16
  %cmp169 = icmp sgt i32 %call168, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp169, label %for.cond120, label %fail

for.end177:                                       ; preds = %for.cond120.us, %for.cond120
  %weightfn = getelementptr inbounds i8, ptr %h, i64 7632
  %63 = load ptr, ptr %weightfn, align 16
  %tobool181.not = icmp eq ptr %63, null
  br i1 %tobool181.not, label %if.end201, label %if.then182

if.then182:                                       ; preds = %for.end177
  %64 = load ptr, ptr %p_stat_file_out, align 8
  %i_denom = getelementptr inbounds i8, ptr %h, i64 7616
  %65 = load i32, ptr %i_denom, align 16
  %i_scale = getelementptr inbounds i8, ptr %h, i64 7620
  %66 = load i32, ptr %i_scale, align 4
  %i_offset = getelementptr inbounds i8, ptr %h, i64 7624
  %67 = load i32, ptr %i_offset, align 8
  %call196 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.68, i32 noundef %65, i32 noundef %66, i32 noundef %67) #16
  %cmp197 = icmp slt i32 %call196, 0
  br i1 %cmp197, label %fail, label %if.end201

if.end201:                                        ; preds = %if.then182, %for.end177
  %68 = load ptr, ptr %p_stat_file_out, align 8
  %call203 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.69) #16
  %cmp204 = icmp slt i32 %call203, 0
  br i1 %cmp204, label %fail, label %if.end207

if.end207:                                        ; preds = %if.end201
  %b_mb_tree = getelementptr inbounds i8, ptr %h, i64 552
  %69 = load i32, ptr %b_mb_tree, align 8
  %tobool210.not = icmp eq i32 %69, 0
  br i1 %tobool210.not, label %if.end278, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end207
  %70 = load ptr, ptr %fenc88, align 8
  %b_kept_as_ref212 = getelementptr inbounds i8, ptr %70, i64 72
  %71 = load i32, ptr %b_kept_as_ref212, align 8
  %tobool213.not = icmp eq i32 %71, 0
  br i1 %tobool213.not, label %if.end278, label %land.lhs.true214

land.lhs.true214:                                 ; preds = %land.lhs.true
  %72 = load i32, ptr %b_stat_read, align 8
  %tobool218.not = icmp eq i32 %72, 0
  br i1 %tobool218.not, label %if.then219, label %if.end278

if.then219:                                       ; preds = %land.lhs.true214
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i_type220) #16
  %73 = load i32, ptr %i_type, align 16
  %conv223 = trunc i32 %73 to i8
  store i8 %conv223, ptr %i_type220, align 1
  %74 = load i32, ptr %mb, align 16
  %cmp228705 = icmp sgt i32 %74, 0
  br i1 %cmp228705, label %for.body231.lr.ph, label %for.cond.cleanup230

for.body231.lr.ph:                                ; preds = %if.then219
  %qp_buffer = getelementptr inbounds i8, ptr %0, i64 488
  br label %for.body231

for.cond.cleanup230:                              ; preds = %for.body231, %if.then219
  %p_mbtree_stat_file_out = getelementptr inbounds i8, ptr %0, i64 272
  %75 = load ptr, ptr %p_mbtree_stat_file_out, align 8
  %call248 = call i64 @fwrite(ptr noundef nonnull %i_type220, i64 noundef 1, i64 noundef 1, ptr noundef %75)
  %cmp249 = icmp eq i64 %call248, 0
  br i1 %cmp249, label %cleanup267.thread, label %cleanup267

cleanup267.thread:                                ; preds = %for.cond.cleanup230
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i_type220) #16
  br label %fail

for.body231:                                      ; preds = %for.body231.lr.ph, %for.body231
  %indvars.iv716 = phi i64 [ 0, %for.body231.lr.ph ], [ %indvars.iv.next717, %for.body231 ]
  %76 = load ptr, ptr %fenc88, align 8
  %f_qp_offset = getelementptr inbounds i8, ptr %76, i64 12152
  %77 = load ptr, ptr %f_qp_offset, align 8
  %arrayidx234 = getelementptr inbounds float, ptr %77, i64 %indvars.iv716
  %78 = load float, ptr %arrayidx234, align 4
  %conv235 = fptosi float %78 to i16
  %or.i = and i16 %conv235, 255
  %79 = load ptr, ptr %qp_buffer, align 8
  %arrayidx243 = getelementptr inbounds i16, ptr %79, i64 %indvars.iv716
  store i16 %or.i, ptr %arrayidx243, align 2
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, 1
  %80 = load i32, ptr %mb, align 16
  %81 = sext i32 %80 to i64
  %cmp228 = icmp slt i64 %indvars.iv.next717, %81
  br i1 %cmp228, label %for.body231, label %for.cond.cleanup230

cleanup267:                                       ; preds = %for.cond.cleanup230
  %qp_buffer253 = getelementptr inbounds i8, ptr %0, i64 488
  %82 = load ptr, ptr %qp_buffer253, align 8
  %83 = load i32, ptr %mb, align 16
  %conv257 = sext i32 %83 to i64
  %84 = load ptr, ptr %p_mbtree_stat_file_out, align 8
  %call259 = tail call i64 @fwrite(ptr noundef %82, i64 noundef 2, i64 noundef %conv257, ptr noundef %84)
  %conv260 = trunc i64 %call259 to i32
  %85 = load i32, ptr %mb, align 16
  %cmp263.not = icmp sgt i32 %85, %conv260
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i_type220) #16
  br i1 %cmp263.not, label %fail, label %if.end278

if.end278:                                        ; preds = %cleanup267, %land.lhs.true214, %land.lhs.true, %if.end207, %entry
  %86 = load i32, ptr %0, align 8
  %tobool279.not = icmp eq i32 %86, 0
  br i1 %tobool279.not, label %if.end322, label %if.then280

if.then280:                                       ; preds = %if.end278
  %i_type282 = getelementptr inbounds i8, ptr %h, i64 7248
  %87 = load i32, ptr %i_type282, align 16
  %cmp283.not = icmp eq i32 %87, 1
  %conv293 = sitofp i32 %bits to double
  %88 = load float, ptr %qpa_rc, align 8
  %conv295 = fpext float %88 to double
  %sub.i667 = fadd double %conv295, -1.200000e+01
  %div.i668 = fdiv double %sub.i667, 6.000000e+00
  %exp2.i669 = tail call double @exp2(double %div.i668) #16
  %mul.i670 = fmul double %exp2.i669, 8.500000e-01
  %mul297 = fmul double %mul.i670, %conv293
  %last_rceq298 = getelementptr inbounds i8, ptr %0, i64 176
  %89 = load double, ptr %last_rceq298, align 8
  br i1 %cmp283.not, label %if.else, label %if.end306

if.else:                                          ; preds = %if.then280
  %f_pb_factor = getelementptr inbounds i8, ptr %h, i64 540
  %90 = load float, ptr %f_pb_factor, align 4
  %91 = tail call float @llvm.fabs.f32(float %90)
  %92 = fpext float %91 to double
  %mul302 = fmul double %89, %92
  br label %if.end306

if.end306:                                        ; preds = %if.then280, %if.else
  %mul302.sink = phi double [ %mul302, %if.else ], [ %89, %if.then280 ]
  %div303 = fdiv double %mul297, %mul302.sink
  %cplxr_sum304 = getelementptr inbounds i8, ptr %0, i64 184
  %93 = load double, ptr %cplxr_sum304, align 8
  %add305 = fadd double %93, %div303
  %cbr_decay = getelementptr inbounds i8, ptr %0, i64 208
  %94 = load double, ptr %cbr_decay, align 8
  %cplxr_sum307 = getelementptr inbounds i8, ptr %0, i64 184
  %mul308 = fmul double %94, %add305
  store double %mul308, ptr %cplxr_sum307, align 8
  %fenc309 = getelementptr inbounds i8, ptr %h, i64 14680
  %95 = load ptr, ptr %fenc309, align 8
  %i_duration310 = getelementptr inbounds i8, ptr %95, i64 32
  %96 = load i32, ptr %i_duration310, align 16
  %conv311 = sitofp i32 %96 to double
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %97 = load ptr, ptr %sps, align 16
  %i_num_units_in_tick = getelementptr inbounds i8, ptr %97, i64 1192
  %98 = load i32, ptr %i_num_units_in_tick, align 4
  %conv312 = uitofp i32 %98 to double
  %mul313 = fmul double %conv311, %conv312
  %i_time_scale = getelementptr inbounds i8, ptr %97, i64 1196
  %99 = load i32, ptr %i_time_scale, align 4
  %conv316 = uitofp i32 %99 to double
  %div317 = fdiv double %mul313, %conv316
  %bitrate = getelementptr inbounds i8, ptr %0, i64 24
  %100 = load double, ptr %bitrate, align 8
  %wanted_bits_window = getelementptr inbounds i8, ptr %0, i64 200
  %101 = load double, ptr %wanted_bits_window, align 8
  %102 = tail call double @llvm.fmuladd.f64(double %div317, double %100, double %101)
  %mul321 = fmul double %94, %102
  store double %mul321, ptr %wanted_bits_window, align 8
  br label %if.end322

if.end322:                                        ; preds = %if.end306, %if.end278
  %b_2pass = getelementptr inbounds i8, ptr %0, i64 4
  %103 = load i32, ptr %b_2pass, align 4
  %tobool323.not = icmp eq i32 %103, 0
  br i1 %tobool323.not, label %if.end331, label %if.then324

if.then324:                                       ; preds = %if.end322
  %rce325 = getelementptr inbounds i8, ptr %0, i64 72
  %104 = load ptr, ptr %rce325, align 8
  %new_qp = getelementptr inbounds i8, ptr %104, i64 64
  %105 = load i32, ptr %new_qp, align 8
  %conv327 = sitofp i32 %105 to double
  %sub.i671 = fadd double %conv327, -1.200000e+01
  %div.i672 = fdiv double %sub.i671, 6.000000e+00
  %exp2.i673 = tail call double @exp2(double %div.i672) #16
  %mul.i674 = fmul double %exp2.i673, 8.500000e-01
  %cmp.i = fcmp olt double %mul.i674, 1.000000e-01
  %qscale.addr.0.i = select i1 %cmp.i, double 1.000000e-01, double %mul.i674
  %tex_bits.i = getelementptr inbounds i8, ptr %104, i64 28
  %106 = load i32, ptr %tex_bits.i, align 4
  %qscale1.i = getelementptr inbounds i8, ptr %104, i64 16
  %107 = load double, ptr %qscale1.i, align 8
  %div.i675 = fdiv double %107, %qscale.addr.0.i
  %call.i = tail call double @pow(double noundef %div.i675, double noundef 1.100000e+00) #16
  %mv_bits.i = getelementptr inbounds i8, ptr %104, i64 24
  %108 = load i32, ptr %mv_bits.i, align 8
  %109 = load double, ptr %qscale1.i, align 8
  %cmp4.i = fcmp ogt double %109, 1.000000e+00
  %cond.i = select i1 %cmp4.i, double %109, double 1.000000e+00
  %conv2.i = sitofp i32 %108 to double
  %conv.i = sitofp i32 %106 to double
  %add.i = fadd double %conv.i, 1.000000e-01
  %cmp7.i = fcmp ogt double %qscale.addr.0.i, 1.000000e+00
  %cond12.i = select i1 %cmp7.i, double %qscale.addr.0.i, double 1.000000e+00
  %div13.i = fdiv double %cond.i, %cond12.i
  %call14.i = tail call double @pow(double noundef %div13.i, double noundef 5.000000e-01) #16
  %mul15.i = fmul double %call14.i, %conv2.i
  %110 = tail call double @llvm.fmuladd.f64(double %add.i, double %call.i, double %mul15.i)
  %misc_bits.i = getelementptr inbounds i8, ptr %104, i64 32
  %111 = load i32, ptr %misc_bits.i, align 8
  %conv16.i = sitofp i32 %111 to double
  %add17.i = fadd double %110, %conv16.i
  %expected_bits_sum = getelementptr inbounds i8, ptr %0, i64 192
  %112 = load double, ptr %expected_bits_sum, align 8
  %add330 = fadd double %112, %add17.i
  store double %add330, ptr %expected_bits_sum, align 8
  br label %if.end331

if.end331:                                        ; preds = %if.then324, %if.end322
  %b_variable_qp = getelementptr inbounds i8, ptr %h, i64 25808
  %113 = load i32, ptr %b_variable_qp, align 16
  %tobool333.not = icmp eq i32 %113, 0
  br i1 %tobool333.not, label %if.end357, label %if.then334

if.then334:                                       ; preds = %if.end331
  %i_type336 = getelementptr inbounds i8, ptr %h, i64 7248
  %114 = load i32, ptr %i_type336, align 16
  %cmp337 = icmp eq i32 %114, 1
  br i1 %cmp337, label %if.then339, label %if.end357

if.then339:                                       ; preds = %if.then334
  %bframe_bits = getelementptr inbounds i8, ptr %0, i64 884
  %115 = load i32, ptr %bframe_bits, align 4
  %add340 = add nsw i32 %115, %bits
  store i32 %add340, ptr %bframe_bits, align 4
  %fenc341 = getelementptr inbounds i8, ptr %h, i64 14680
  %116 = load ptr, ptr %fenc341, align 8
  %b_last_minigop_bframe = getelementptr inbounds i8, ptr %116, i64 85
  %117 = load i8, ptr %b_last_minigop_bframe, align 1
  %tobool342.not = icmp eq i8 %117, 0
  br i1 %tobool342.not, label %if.end357, label %if.then343

if.then343:                                       ; preds = %if.then339
  %pred_b_from_p = getelementptr inbounds i8, ptr %0, i64 872
  %118 = load ptr, ptr %pred_b_from_p, align 8
  %119 = load float, ptr %qpa_rc, align 8
  %conv345 = fpext float %119 to double
  %sub.i676 = fadd double %conv345, -1.200000e+01
  %div.i677 = fdiv double %sub.i676, 6.000000e+00
  %exp2.i678 = tail call double @exp2(double %div.i677) #16
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864
  %i_ref1 = getelementptr inbounds i8, ptr %h, i64 14856
  %120 = load i32, ptr %i_ref1, align 8
  %sub347 = add nsw i32 %120, -1
  %idxprom348 = sext i32 %sub347 to i64
  %arrayidx349 = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %idxprom348
  %121 = load ptr, ptr %arrayidx349, align 8
  %i_satd = getelementptr inbounds i8, ptr %121, i64 9460
  %122 = load i32, ptr %i_satd, align 4
  %cmp.i680 = icmp slt i32 %122, 10
  br i1 %cmp.i680, label %update_predictor.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then343
  %conv350 = uitofp nneg i32 %122 to double
  %123 = load i32, ptr %bframe_bits, align 4
  %bframes = getelementptr inbounds i8, ptr %0, i64 880
  %124 = load i32, ptr %bframes, align 8
  %div352 = sdiv i32 %123, %124
  %conv353 = sitofp i32 %div352 to double
  %mul.i679 = fmul double %exp2.i678, 8.500000e-01
  %mul.i682 = fmul double %mul.i679, %conv353
  %div1.i = fdiv double %mul.i682, %conv350
  %decay.i = getelementptr inbounds i8, ptr %118, i64 16
  %125 = load double, ptr %decay.i, align 8
  %offset.i = getelementptr inbounds i8, ptr %118, i64 24
  %126 = load double, ptr %offset.i, align 8
  %mul15.i683 = fmul double %125, %126
  %127 = load <2 x double>, ptr %118, align 8
  %128 = extractelement <2 x double> %127, i64 0
  %129 = extractelement <2 x double> %127, i64 1
  %div.i681 = fdiv double %128, %129
  %div2.i = fdiv double %div.i681, 1.500000e+00
  %mul3.i = fmul double %div.i681, 1.500000e+00
  %cmp.i.i = fcmp olt double %div1.i, %div2.i
  %cmp1.i.i = fcmp ogt double %div1.i, %mul3.i
  %cond.i.i = select i1 %cmp1.i.i, double %mul3.i, double %div1.i
  %cond5.i.i = select i1 %cmp.i.i, double %div2.i, double %cond.i.i
  %130 = fneg double %cond5.i.i
  %neg.i = fmul double %conv350, %130
  %131 = tail call double @llvm.fmuladd.f64(double %conv353, double %mul.i679, double %neg.i)
  %cmp6.i = fcmp ult double %131, 0.000000e+00
  %div1.call.i = select i1 %cmp6.i, double %div1.i, double %cond5.i.i
  %..i = select i1 %cmp6.i, double 0.000000e+00, double %131
  %132 = insertelement <2 x double> poison, double %125, i64 0
  %133 = shufflevector <2 x double> %132, <2 x double> poison, <2 x i32> zeroinitializer
  %134 = fmul <2 x double> %127, %133
  %135 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %div1.call.i, i64 0
  %136 = fadd <2 x double> %134, %135
  store <2 x double> %136, ptr %118, align 8
  %add19.i = fadd double %mul15.i683, %..i
  store double %add19.i, ptr %offset.i, align 8
  br label %update_predictor.exit

update_predictor.exit:                            ; preds = %if.then343, %if.end.i
  store i32 0, ptr %bframe_bits, align 4
  br label %if.end357

if.end357:                                        ; preds = %if.then334, %update_predictor.exit, %if.then339, %if.end331
  %137 = load ptr, ptr %rc1, align 16
  %thread.i = getelementptr inbounds i8, ptr %h, i64 704
  %138 = load ptr, ptr %thread.i, align 16
  %rc1.i = getelementptr inbounds i8, ptr %138, i64 26704
  %139 = load ptr, ptr %rc1.i, align 16
  %last_satd.i = getelementptr inbounds i8, ptr %137, i64 168
  %140 = load i32, ptr %last_satd.i, align 8
  %141 = load i32, ptr %mb, align 16
  %cmp.not.i = icmp slt i32 %140, %141
  br i1 %cmp.not.i, label %if.end.i687, label %if.then.i

if.then.i:                                        ; preds = %if.end357
  %pred.i = getelementptr inbounds i8, ptr %139, i64 144
  %142 = load ptr, ptr %pred.i, align 8
  %i_type.i = getelementptr inbounds i8, ptr %h, i64 7248
  %143 = load i32, ptr %i_type.i, align 16
  %qpa_rc.i = getelementptr inbounds i8, ptr %137, i64 88
  %144 = load float, ptr %qpa_rc.i, align 8
  %conv.i685 = fpext float %144 to double
  %sub.i.i = fadd double %conv.i685, -1.200000e+01
  %div.i.i = fdiv double %sub.i.i, 6.000000e+00
  %exp2.i.i = tail call double @exp2(double %div.i.i) #16
  %145 = load i32, ptr %last_satd.i, align 8
  %cmp.i.i686 = icmp slt i32 %145, 10
  br i1 %cmp.i.i686, label %if.end.i687, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i
  %conv4.i = uitofp nneg i32 %145 to double
  %conv5.i = sitofp i32 %bits to double
  %mul.i.i = fmul double %exp2.i.i, 8.500000e-01
  %idxprom.i = sext i32 %143 to i64
  %arrayidx2.i = getelementptr inbounds %struct.predictor_t, ptr %142, i64 %idxprom.i
  %mul.i94.i = fmul double %mul.i.i, %conv5.i
  %div1.i.i = fdiv double %mul.i94.i, %conv4.i
  %decay.i.i = getelementptr inbounds i8, ptr %arrayidx2.i, i64 16
  %146 = load double, ptr %decay.i.i, align 8
  %offset.i.i = getelementptr inbounds i8, ptr %arrayidx2.i, i64 24
  %147 = load double, ptr %offset.i.i, align 8
  %mul15.i.i = fmul double %146, %147
  %148 = load <2 x double>, ptr %arrayidx2.i, align 8
  %149 = extractelement <2 x double> %148, i64 0
  %150 = extractelement <2 x double> %148, i64 1
  %div.i93.i = fdiv double %149, %150
  %div2.i.i = fdiv double %div.i93.i, 1.500000e+00
  %mul3.i.i = fmul double %div.i93.i, 1.500000e+00
  %cmp.i.i.i = fcmp olt double %div1.i.i, %div2.i.i
  %cmp1.i.i.i = fcmp ogt double %div1.i.i, %mul3.i.i
  %cond.i.i.i = select i1 %cmp1.i.i.i, double %mul3.i.i, double %div1.i.i
  %cond5.i.i.i = select i1 %cmp.i.i.i, double %div2.i.i, double %cond.i.i.i
  %151 = fneg double %cond5.i.i.i
  %neg.i.i = fmul double %conv4.i, %151
  %152 = tail call double @llvm.fmuladd.f64(double %conv5.i, double %mul.i.i, double %neg.i.i)
  %cmp6.i.i = fcmp ult double %152, 0.000000e+00
  %div1.call.i.i = select i1 %cmp6.i.i, double %div1.i.i, double %cond5.i.i.i
  %..i.i = select i1 %cmp6.i.i, double 0.000000e+00, double %152
  %153 = insertelement <2 x double> poison, double %146, i64 0
  %154 = shufflevector <2 x double> %153, <2 x double> poison, <2 x i32> zeroinitializer
  %155 = fmul <2 x double> %148, %154
  %156 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %div1.call.i.i, i64 0
  %157 = fadd <2 x double> %155, %156
  store <2 x double> %157, ptr %arrayidx2.i, align 8
  %add19.i.i = fadd double %mul15.i.i, %..i.i
  store double %add19.i.i, ptr %offset.i.i, align 8
  br label %if.end.i687

if.end.i687:                                      ; preds = %if.end.i.i, %if.then.i, %if.end357
  %b_vbv.i = getelementptr inbounds i8, ptr %137, i64 8
  %158 = load i32, ptr %b_vbv.i, align 8
  %tobool.not.i = icmp eq i32 %158, 0
  br i1 %tobool.not.i, label %update_vbv.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i687
  %conv8.i = sitofp i32 %bits to double
  %buffer_fill_final.i = getelementptr inbounds i8, ptr %139, i64 112
  %159 = load double, ptr %buffer_fill_final.i, align 8
  %sub.i688 = fsub double %159, %conv8.i
  store double %sub.i688, ptr %buffer_fill_final.i, align 8
  %cmp10.i = fcmp olt double %sub.i688, 0.000000e+00
  br i1 %cmp10.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.end7.i
  %i_frame.i = getelementptr inbounds i8, ptr %h, i64 1844
  %160 = load i32, ptr %i_frame.i, align 4
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.83, i32 noundef %160, double noundef %sub.i688) #16
  %.pre.i = load double, ptr %buffer_fill_final.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end7.i
  %161 = phi double [ %.pre.i, %if.then12.i ], [ %sub.i688, %if.end7.i ]
  %cmp16.i = fcmp ogt double %161, 0.000000e+00
  %cond.i689 = select i1 %cmp16.i, double %161, double 0.000000e+00
  store double %cond.i689, ptr %buffer_fill_final.i, align 8
  %buffer_rate.i = getelementptr inbounds i8, ptr %137, i64 128
  %162 = load double, ptr %buffer_rate.i, align 8
  %add.i690 = fadd double %cond.i689, %162
  store double %add.i690, ptr %buffer_fill_final.i, align 8
  %sps.i = getelementptr inbounds i8, ptr %h, i64 3200
  %163 = load ptr, ptr %sps.i, align 16
  %b_cbr_hrd.i = getelementptr inbounds i8, ptr %163, i64 1240
  %164 = load i32, ptr %b_cbr_hrd.i, align 4
  %tobool21.not.i = icmp ne i32 %164, 0
  %buffer_size44.phi.trans.insert.i = getelementptr inbounds i8, ptr %137, i64 104
  %.pre95.i = load double, ptr %buffer_size44.phi.trans.insert.i, align 8
  %cmp23.i = fcmp ogt double %add.i690, %.pre95.i
  %or.cond.i = select i1 %tobool21.not.i, i1 %cmp23.i, i1 false
  br i1 %or.cond.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %if.end14.i
  %sub28.i = fsub double %add.i690, %.pre95.i
  %div.i692 = fmul double %sub28.i, 1.250000e-01
  %165 = tail call double @llvm.ceil.f64(double %div.i692)
  %conv29.i = fptosi double %165 to i32
  %b_annexb.i = getelementptr inbounds i8, ptr %h, i64 640
  %166 = load i32, ptr %b_annexb.i, align 16
  %sub30.i = sub nsw i32 6, %166
  %sub30.conv29.i = tail call i32 @llvm.smax.i32(i32 %sub30.i, i32 %conv29.i)
  %mul.i693 = shl nsw i32 %sub30.conv29.i, 3
  %conv40.i = sitofp i32 %mul.i693 to double
  %sub42.i = fsub double %add.i690, %conv40.i
  br label %if.end54.i

if.else.i:                                        ; preds = %if.end14.i
  %cmp45.i = fcmp olt double %add.i690, %.pre95.i
  %..i691 = select i1 %cmp45.i, double %add.i690, double %.pre95.i
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else.i, %if.then25.i
  %storemerge.i = phi double [ %..i691, %if.else.i ], [ %sub42.i, %if.then25.i ]
  %filler.0.i = phi i32 [ 0, %if.else.i ], [ %conv29.i, %if.then25.i ]
  store double %storemerge.i, ptr %buffer_fill_final.i, align 8
  br label %update_vbv.exit

update_vbv.exit:                                  ; preds = %if.end.i687, %if.end54.i
  %retval.0.i = phi i32 [ %filler.0.i, %if.end54.i ], [ 0, %if.end.i687 ]
  store i32 %retval.0.i, ptr %filler, align 4
  %sps359 = getelementptr inbounds i8, ptr %h, i64 3200
  %167 = load ptr, ptr %sps359, align 16
  %b_nal_hrd_parameters_present = getelementptr inbounds i8, ptr %167, i64 1204
  %168 = load i32, ptr %b_nal_hrd_parameters_present, align 4
  %tobool361.not = icmp eq i32 %168, 0
  br i1 %tobool361.not, label %cleanup489, label %if.then362

if.then362:                                       ; preds = %update_vbv.exit
  %fenc363 = getelementptr inbounds i8, ptr %h, i64 14680
  %169 = load ptr, ptr %fenc363, align 8
  %i_frame364 = getelementptr inbounds i8, ptr %169, i64 56
  %170 = load i32, ptr %i_frame364, align 8
  %cmp365 = icmp eq i32 %170, 0
  br i1 %cmp365, label %if.then367, label %if.else376

if.then367:                                       ; preds = %if.then362
  %hrd_timing = getelementptr inbounds i8, ptr %169, i64 12288
  store double 0.000000e+00, ptr %hrd_timing, align 16
  %initial_cpb_removal_delay = getelementptr inbounds i8, ptr %h, i64 15024
  %171 = load i32, ptr %initial_cpb_removal_delay, align 16
  %initial_cpb_removal_delay369 = getelementptr inbounds i8, ptr %0, i64 912
  store i32 %171, ptr %initial_cpb_removal_delay369, align 8
  %initial_cpb_removal_delay_offset = getelementptr inbounds i8, ptr %h, i64 15028
  %172 = load i32, ptr %initial_cpb_removal_delay_offset, align 4
  %initial_cpb_removal_delay_offset370 = getelementptr inbounds i8, ptr %0, i64 916
  store i32 %172, ptr %initial_cpb_removal_delay_offset370, align 4
  %conv372 = sitofp i32 %171 to double
  %div373 = fdiv double %conv372, 9.000000e+04
  %nrt_first_access_unit = getelementptr inbounds i8, ptr %0, i64 920
  store double %div373, ptr %nrt_first_access_unit, align 8
  br label %if.end438

if.else376:                                       ; preds = %if.then362
  %nrt_first_access_unit377 = getelementptr inbounds i8, ptr %0, i64 920
  %173 = load double, ptr %nrt_first_access_unit377, align 8
  %i_cpb_delay = getelementptr inbounds i8, ptr %169, i64 40
  %174 = load i32, ptr %i_cpb_delay, align 8
  %conv379 = sitofp i32 %174 to double
  %i_num_units_in_tick382 = getelementptr inbounds i8, ptr %167, i64 1192
  %175 = load i32, ptr %i_num_units_in_tick382, align 4
  %conv383 = uitofp i32 %175 to double
  %mul384 = fmul double %conv379, %conv383
  %i_time_scale387 = getelementptr inbounds i8, ptr %167, i64 1196
  %176 = load i32, ptr %i_time_scale387, align 4
  %conv388 = uitofp i32 %176 to double
  %div389 = fdiv double %mul384, %conv388
  %add390 = fadd double %173, %div389
  %cpb_removal_time393 = getelementptr inbounds i8, ptr %169, i64 12304
  store double %add390, ptr %cpb_removal_time393, align 16
  %177 = load ptr, ptr %fenc363, align 8
  %cpb_removal_time396 = getelementptr inbounds i8, ptr %177, i64 12304
  %178 = load double, ptr %cpb_removal_time396, align 16
  %initial_cpb_removal_delay397 = getelementptr inbounds i8, ptr %0, i64 912
  %179 = load i32, ptr %initial_cpb_removal_delay397, align 8
  %conv398 = sitofp i32 %179 to double
  %div399 = fdiv double %conv398, 9.000000e+04
  %sub400 = fsub double %178, %div399
  %b_keyframe = getelementptr inbounds i8, ptr %177, i64 80
  %180 = load i32, ptr %b_keyframe, align 16
  %tobool402.not = icmp eq i32 %180, 0
  br i1 %tobool402.not, label %if.else412, label %if.then403

if.then403:                                       ; preds = %if.else376
  store double %178, ptr %nrt_first_access_unit377, align 8
  %initial_cpb_removal_delay408 = getelementptr inbounds i8, ptr %h, i64 15024
  %181 = load i32, ptr %initial_cpb_removal_delay408, align 16
  store i32 %181, ptr %initial_cpb_removal_delay397, align 8
  %initial_cpb_removal_delay_offset410 = getelementptr inbounds i8, ptr %h, i64 15028
  %182 = load i32, ptr %initial_cpb_removal_delay_offset410, align 4
  %initial_cpb_removal_delay_offset411 = getelementptr inbounds i8, ptr %0, i64 916
  store i32 %182, ptr %initial_cpb_removal_delay_offset411, align 4
  br label %if.end417

if.else412:                                       ; preds = %if.else376
  %initial_cpb_removal_delay_offset413 = getelementptr inbounds i8, ptr %0, i64 916
  %183 = load i32, ptr %initial_cpb_removal_delay_offset413, align 4
  %conv414 = sitofp i32 %183 to double
  %div415 = fdiv double %conv414, 9.000000e+04
  %sub416 = fsub double %sub400, %div415
  br label %if.end417

if.end417:                                        ; preds = %if.else412, %if.then403
  %cpb_earliest_arrival_time.0 = phi double [ %sub400, %if.then403 ], [ %sub416, %if.else412 ]
  %184 = load ptr, ptr %sps359, align 16
  %b_cbr_hrd = getelementptr inbounds i8, ptr %184, i64 1240
  %185 = load i32, ptr %b_cbr_hrd, align 4
  %tobool420.not = icmp eq i32 %185, 0
  %previous_cpb_final_arrival_time426 = getelementptr inbounds i8, ptr %0, i64 928
  %186 = load double, ptr %previous_cpb_final_arrival_time426, align 8
  br i1 %tobool420.not, label %if.else425, label %if.end438

if.else425:                                       ; preds = %if.end417
  %cmp427 = fcmp ogt double %186, %cpb_earliest_arrival_time.0
  %.cpb_earliest_arrival_time.0 = select i1 %cmp427, double %186, double %cpb_earliest_arrival_time.0
  br label %if.end438

if.end438:                                        ; preds = %if.end417, %if.else425, %if.then367
  %.sink730 = phi i64 [ 12288, %if.else425 ], [ 12304, %if.then367 ], [ 12288, %if.end417 ]
  %.sink = phi double [ %.cpb_earliest_arrival_time.0, %if.else425 ], [ %div373, %if.then367 ], [ %186, %if.end417 ]
  %187 = load ptr, ptr %fenc363, align 8
  %hrd_timing423 = getelementptr inbounds i8, ptr %187, i64 %.sink730
  store double %.sink, ptr %hrd_timing423, align 16
  %188 = load i32, ptr %filler, align 4
  %tobool439.not = icmp eq i32 %188, 0
  br i1 %tobool439.not, label %cond.end454, label %cond.true440

cond.true440:                                     ; preds = %if.end438
  %b_annexb = getelementptr inbounds i8, ptr %h, i64 640
  %189 = load i32, ptr %b_annexb, align 16
  %sub442 = sub nsw i32 6, %189
  %sub442. = tail call i32 @llvm.smax.i32(i32 %sub442, i32 %188)
  %mul452 = shl nsw i32 %sub442., 3
  br label %cond.end454

cond.end454:                                      ; preds = %if.end438, %cond.true440
  %cond455 = phi i32 [ %mul452, %cond.true440 ], [ 0, %if.end438 ]
  %190 = load ptr, ptr %fenc363, align 8
  %hrd_timing457 = getelementptr inbounds i8, ptr %190, i64 12288
  %191 = load double, ptr %hrd_timing457, align 16
  %add459 = add nsw i32 %cond455, %bits
  %conv460 = sitofp i32 %add459 to double
  %192 = load ptr, ptr %sps359, align 16
  %i_bit_rate_unscaled = getelementptr inbounds i8, ptr %192, i64 1232
  %193 = load i32, ptr %i_bit_rate_unscaled, align 4
  %conv464 = sitofp i32 %193 to double
  %div465 = fdiv double %conv460, %conv464
  %add466 = fadd double %191, %div465
  %previous_cpb_final_arrival_time467 = getelementptr inbounds i8, ptr %0, i64 928
  store double %add466, ptr %previous_cpb_final_arrival_time467, align 8
  %194 = load ptr, ptr %fenc363, align 8
  %cpb_final_arrival_time = getelementptr inbounds i8, ptr %194, i64 12296
  store double %add466, ptr %cpb_final_arrival_time, align 8
  %195 = load ptr, ptr %fenc363, align 8
  %i_dpb_output_delay = getelementptr inbounds i8, ptr %195, i64 44
  %196 = load i32, ptr %i_dpb_output_delay, align 4
  %conv471 = sitofp i32 %196 to double
  %197 = load ptr, ptr %sps359, align 16
  %i_num_units_in_tick474 = getelementptr inbounds i8, ptr %197, i64 1192
  %198 = load i32, ptr %i_num_units_in_tick474, align 4
  %conv475 = uitofp i32 %198 to double
  %mul476 = fmul double %conv471, %conv475
  %i_time_scale479 = getelementptr inbounds i8, ptr %197, i64 1196
  %199 = load i32, ptr %i_time_scale479, align 4
  %conv480 = uitofp i32 %199 to double
  %div481 = fdiv double %mul476, %conv480
  %cpb_removal_time484 = getelementptr inbounds i8, ptr %195, i64 12304
  %200 = load double, ptr %cpb_removal_time484, align 16
  %add485 = fadd double %200, %div481
  %dpb_output_time = getelementptr inbounds i8, ptr %195, i64 12312
  store double %add485, ptr %dpb_output_time, align 8
  br label %cleanup489

fail:                                             ; preds = %cond.true133.us, %cond.end165, %cleanup267, %cleanup267.thread, %if.end201, %if.then182, %cond.end85
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.70) #16
  br label %cleanup489

cleanup489:                                       ; preds = %update_vbv.exit, %cond.end454, %fail
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %cond.end454 ], [ 0, %update_vbv.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_hrd_fullness(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %0 = load ptr, ptr %thread, align 16
  %rc = getelementptr inbounds i8, ptr %0, i64 26704
  %1 = load ptr, ptr %rc, align 16
  %buffer_fill_final = getelementptr inbounds i8, ptr %1, i64 112
  %2 = load double, ptr %buffer_fill_final, align 8
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %3 = load ptr, ptr %sps, align 16
  %i_bit_rate_unscaled = getelementptr inbounds i8, ptr %3, i64 1232
  %4 = load i32, ptr %i_bit_rate_unscaled, align 4
  %i_cpb_size_unscaled = getelementptr inbounds i8, ptr %3, i64 1236
  %5 = load i32, ptr %i_cpb_size_unscaled, align 4
  %conv4 = sitofp i32 %5 to double
  %cmp = fcmp olt double %2, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp6 = fcmp ogt double %2, %conv4
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %cond = phi ptr [ @.str.73, %lor.lhs.false ], [ @.str.72, %entry ]
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull %cond, double noundef %2, double noundef %conv4) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %mul = fmul double %2, 9.000000e+04
  %conv = sitofp i32 %4 to double
  %div = fdiv double %mul, %conv
  %sub = fsub double %conv4, %2
  %mul10 = fmul double %sub, 9.000000e+04
  %div11 = fdiv double %mul10, %conv
  %conv12 = fptosi double %div11 to i32
  %initial_cpb_removal_delay_offset = getelementptr inbounds i8, ptr %h, i64 15028
  store i32 %conv12, ptr %initial_cpb_removal_delay_offset, align 4
  %add = fadd double %div, 5.000000e-01
  %mul13 = fmul double %conv4, 9.000000e+04
  %div14 = fdiv double %mul13, %conv
  %cmp.i = fcmp olt double %add, 0.000000e+00
  %cmp1.i = fcmp ogt double %add, %div14
  %cond.i = select i1 %cmp1.i, double %div14, double %add
  %cond5.i = select i1 %cmp.i, double 0.000000e+00, double %cond.i
  %conv15 = fptosi double %cond5.i to i32
  ret i32 %conv15
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_threads_normalize_predictors(ptr nocapture noundef readonly %h) local_unnamed_addr #7 {
entry:
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
  %0 = load i32, ptr %i_threads, align 4
  %cmp26 = icmp sgt i32 %0, 0
  br i1 %cmp26, label %for.body.lr.ph, label %for.cond.cleanup7

for.body.lr.ph:                                   ; preds = %entry
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %wide.trip.count = zext nneg i32 %0 to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %1 = icmp ult i32 %0, 4
  br i1 %1, label %for.cond.cleanup.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %for.body

for.cond.cleanup.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %add.lcssa.ph = phi double [ poison, %for.body.lr.ph ], [ %add.3, %for.body ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %totalsize.028.unr = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.cond.cleanup.unr-lcssa ]
  %totalsize.028.epil = phi double [ %add.epil, %for.body.epil ], [ %totalsize.028.unr, %for.cond.cleanup.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.cond.cleanup.unr-lcssa ]
  %arrayidx.epil = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv.epil
  %2 = load ptr, ptr %arrayidx.epil, align 8
  %rc.epil = getelementptr inbounds i8, ptr %2, i64 26704
  %3 = load ptr, ptr %rc.epil, align 16
  %slice_size_planned.epil = getelementptr inbounds i8, ptr %3, i64 528
  %4 = load double, ptr %slice_size_planned.epil, align 8
  %add.epil = fadd double %totalsize.028.epil, %4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup, label %for.body.epil, !llvm.loop !24

for.cond.cleanup:                                 ; preds = %for.body.epil, %for.cond.cleanup.unr-lcssa
  %add.lcssa = phi double [ %add.lcssa.ph, %for.cond.cleanup.unr-lcssa ], [ %add.epil, %for.body.epil ]
  %rc1 = getelementptr inbounds i8, ptr %h, i64 26704
  %5 = load ptr, ptr %rc1, align 16
  %frame_size_planned = getelementptr inbounds i8, ptr %5, i64 520
  %6 = load double, ptr %frame_size_planned, align 8
  %div = fdiv double %6, %add.lcssa
  br i1 %cmp26, label %for.body8.lr.ph, label %for.cond.cleanup7

for.body8.lr.ph:                                  ; preds = %for.cond.cleanup
  %thread9 = getelementptr inbounds i8, ptr %h, i64 704
  br label %for.body8

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %totalsize.028 = phi double [ 0.000000e+00, %for.body.lr.ph.new ], [ %add.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %arrayidx = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv
  %7 = load ptr, ptr %arrayidx, align 8
  %rc = getelementptr inbounds i8, ptr %7, i64 26704
  %8 = load ptr, ptr %rc, align 16
  %slice_size_planned = getelementptr inbounds i8, ptr %8, i64 528
  %9 = load double, ptr %slice_size_planned, align 8
  %add = fadd double %totalsize.028, %9
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv.next
  %10 = load ptr, ptr %arrayidx.1, align 8
  %rc.1 = getelementptr inbounds i8, ptr %10, i64 26704
  %11 = load ptr, ptr %rc.1, align 16
  %slice_size_planned.1 = getelementptr inbounds i8, ptr %11, i64 528
  %12 = load double, ptr %slice_size_planned.1, align 8
  %add.1 = fadd double %add, %12
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv.next.1
  %13 = load ptr, ptr %arrayidx.2, align 8
  %rc.2 = getelementptr inbounds i8, ptr %13, i64 26704
  %14 = load ptr, ptr %rc.2, align 16
  %slice_size_planned.2 = getelementptr inbounds i8, ptr %14, i64 528
  %15 = load double, ptr %slice_size_planned.2, align 8
  %add.2 = fadd double %add.1, %15
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv.next.2
  %16 = load ptr, ptr %arrayidx.3, align 8
  %rc.3 = getelementptr inbounds i8, ptr %16, i64 26704
  %17 = load ptr, ptr %rc.3, align 16
  %slice_size_planned.3 = getelementptr inbounds i8, ptr %17, i64 528
  %18 = load double, ptr %slice_size_planned.3, align 8
  %add.3 = fadd double %add.2, %18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond.cleanup.unr-lcssa, label %for.body

for.cond.cleanup7:                                ; preds = %for.body8, %entry, %for.cond.cleanup
  ret void

for.body8:                                        ; preds = %for.body8.lr.ph, %for.body8
  %indvars.iv32 = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next33, %for.body8 ]
  %arrayidx11 = getelementptr inbounds [129 x ptr], ptr %thread9, i64 0, i64 %indvars.iv32
  %19 = load ptr, ptr %arrayidx11, align 8
  %rc12 = getelementptr inbounds i8, ptr %19, i64 26704
  %20 = load ptr, ptr %rc12, align 16
  %slice_size_planned13 = getelementptr inbounds i8, ptr %20, i64 528
  %21 = load double, ptr %slice_size_planned13, align 8
  %mul = fmul double %div, %21
  store double %mul, ptr %slice_size_planned13, align 8
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %22 = load i32, ptr %i_threads, align 4
  %23 = sext i32 %22 to i64
  %cmp6 = icmp slt i64 %indvars.iv.next33, %23
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_threads_distribute_ratecontrol(ptr nocapture noundef readonly %h) local_unnamed_addr #7 {
entry:
  %rc1 = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc1, align 16
  %i_frame = getelementptr inbounds i8, ptr %h, i64 1844
  %1 = load i32, ptr %i_frame, align 4
  %cmp = icmp eq i32 %1, 0
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
  %2 = load i32, ptr %i_threads, align 4
  br i1 %cmp, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %cmp2192 = icmp sgt i32 %2, 0
  br i1 %cmp2192, label %for.body.lr.ph, label %if.end.thread

if.end.thread:                                    ; preds = %for.cond.preheader
  %i_threads9221 = getelementptr inbounds i8, ptr %h, i64 4
  br label %for.cond.cleanup11

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %row_preds4 = getelementptr inbounds i8, ptr %0, i64 552
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv
  %3 = load ptr, ptr %arrayidx, align 8
  %rc3 = getelementptr inbounds i8, ptr %3, i64 26704
  %4 = load ptr, ptr %rc3, align 16
  %row_preds = getelementptr inbounds i8, ptr %4, i64 552
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %row_preds, ptr noundef nonnull align 8 dereferenceable(320) %row_preds4, i64 320, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %i_threads, align 4
  %6 = sext i32 %5 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp2, label %for.body, label %if.end

if.end:                                           ; preds = %for.body, %entry
  %7 = phi i32 [ %2, %entry ], [ %5, %for.body ]
  %i_threads9 = getelementptr inbounds i8, ptr %h, i64 4
  %cmp10197 = icmp sgt i32 %7, 0
  br i1 %cmp10197, label %for.body12.lr.ph, label %for.cond.cleanup11

for.body12.lr.ph:                                 ; preds = %if.end
  %thread14 = getelementptr inbounds i8, ptr %h, i64 704
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %b_vbv = getelementptr inbounds i8, ptr %0, i64 8
  %frame_size_planned = getelementptr inbounds i8, ptr %0, i64 520
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %pred = getelementptr inbounds i8, ptr %0, i64 144
  %qpm = getelementptr inbounds i8, ptr %0, i64 84
  br label %for.body12

for.cond.cleanup11:                               ; preds = %if.end43, %if.end.thread, %if.end
  %i_threads9223 = phi ptr [ %i_threads9, %if.end ], [ %i_threads9221, %if.end.thread ], [ %i_threads9, %if.end43 ]
  %.lcssa191 = phi i32 [ %7, %if.end ], [ %2, %if.end.thread ], [ %41, %if.end43 ]
  %b_vbv47 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = load i32, ptr %b_vbv47, align 8
  %tobool48.not = icmp eq i32 %8, 0
  br i1 %tobool48.not, label %if.end110, label %land.lhs.true49

for.body12:                                       ; preds = %for.body12.lr.ph, %if.end43
  %indvars.iv212 = phi i64 [ 0, %for.body12.lr.ph ], [ %indvars.iv.next213, %if.end43 ]
  %arrayidx16 = getelementptr inbounds [129 x ptr], ptr %thread14, i64 0, i64 %indvars.iv212
  %9 = load ptr, ptr %arrayidx16, align 8
  %rc17 = getelementptr inbounds i8, ptr %9, i64 26704
  %10 = load ptr, ptr %rc17, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %10, ptr noundef nonnull align 8 dereferenceable(544) %0, i64 544, i1 false)
  %11 = load ptr, ptr %rc17, align 16
  %row_preds19 = getelementptr inbounds i8, ptr %11, i64 552
  %12 = load i32, ptr %i_type, align 16
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [5 x [2 x %struct.predictor_t]], ptr %row_preds19, i64 0, i64 %idxprom20
  %row_pred = getelementptr inbounds i8, ptr %11, i64 544
  store ptr %arrayidx21, ptr %row_pred, align 8
  %13 = load i32, ptr %b_vbv, align 8
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end43, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body12
  %14 = load double, ptr %frame_size_planned, align 8
  %tobool23 = fcmp une double %14, 0.000000e+00
  br i1 %tobool23, label %if.then24, label %if.end43

if.then24:                                        ; preds = %land.lhs.true
  %i_threadslice_start = getelementptr inbounds i8, ptr %9, i64 1748
  %15 = load i32, ptr %i_threadslice_start, align 4
  %i_threadslice_end = getelementptr inbounds i8, ptr %9, i64 1752
  %16 = load i32, ptr %i_threadslice_end, align 8
  %cmp26194 = icmp slt i32 %15, %16
  br i1 %cmp26194, label %for.body27.lr.ph, label %for.end32

for.body27.lr.ph:                                 ; preds = %if.then24
  %17 = load ptr, ptr %fdec, align 16
  %i_row_satd = getelementptr inbounds i8, ptr %17, i64 12128
  %18 = load ptr, ptr %i_row_satd, align 16
  %19 = sext i32 %15 to i64
  %wide.trip.count = sext i32 %16 to i64
  %20 = sub nsw i64 %wide.trip.count, %19
  %min.iters.check = icmp ult i64 %20, 16
  br i1 %min.iters.check, label %for.body27.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body27.lr.ph
  %n.vec = and i64 %20, -16
  %ind.end = add nsw i64 %n.vec, %19
  %invariant.gep = getelementptr i32, ptr %18, i64 %19
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %24, %vector.body ]
  %vec.phi236 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %25, %vector.body ]
  %vec.phi237 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %26, %vector.body ]
  %vec.phi238 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %27, %vector.body ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index
  %21 = getelementptr inbounds i8, ptr %gep, i64 16
  %22 = getelementptr inbounds i8, ptr %gep, i64 32
  %23 = getelementptr inbounds i8, ptr %gep, i64 48
  %wide.load = load <4 x i32>, ptr %gep, align 4
  %wide.load239 = load <4 x i32>, ptr %21, align 4
  %wide.load240 = load <4 x i32>, ptr %22, align 4
  %wide.load241 = load <4 x i32>, ptr %23, align 4
  %24 = add <4 x i32> %wide.load, %vec.phi
  %25 = add <4 x i32> %wide.load239, %vec.phi236
  %26 = add <4 x i32> %wide.load240, %vec.phi237
  %27 = add <4 x i32> %wide.load241, %vec.phi238
  %index.next = add nuw i64 %index, 16
  %28 = icmp eq i64 %index.next, %n.vec
  br i1 %28, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %25, %24
  %bin.rdx242 = add <4 x i32> %26, %bin.rdx
  %bin.rdx243 = add <4 x i32> %27, %bin.rdx242
  %29 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx243)
  %cmp.n = icmp eq i64 %20, %n.vec
  br i1 %cmp.n, label %for.end32, label %for.body27.preheader

for.body27.preheader:                             ; preds = %middle.block, %for.body27.lr.ph
  %indvars.iv209.ph = phi i64 [ %19, %for.body27.lr.ph ], [ %ind.end, %middle.block ]
  %size.0195.ph = phi i32 [ 0, %for.body27.lr.ph ], [ %29, %middle.block ]
  br label %for.body27

for.body27:                                       ; preds = %for.body27.preheader, %for.body27
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %for.body27 ], [ %indvars.iv209.ph, %for.body27.preheader ]
  %size.0195 = phi i32 [ %add, %for.body27 ], [ %size.0195.ph, %for.body27.preheader ]
  %arrayidx29 = getelementptr inbounds i32, ptr %18, i64 %indvars.iv209
  %30 = load i32, ptr %arrayidx29, align 4
  %add = add nsw i32 %30, %size.0195
  %indvars.iv.next210 = add nsw i64 %indvars.iv209, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count
  br i1 %exitcond.not, label %for.end32, label %for.body27, !llvm.loop !26

for.end32:                                        ; preds = %for.body27, %middle.block, %if.then24
  %size.0.lcssa = phi i32 [ 0, %if.then24 ], [ %29, %middle.block ], [ %add, %for.body27 ]
  %31 = load ptr, ptr %pred, align 8
  %32 = load i32, ptr %i_type, align 16
  %33 = trunc nuw nsw i64 %indvars.iv212 to i32
  %34 = mul i32 %33, 5
  %mul = add i32 %34, 5
  %add36 = add nsw i32 %mul, %32
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds %struct.predictor_t, ptr %31, i64 %idxprom37
  %35 = load float, ptr %qpm, align 4
  %conv = fpext float %35 to double
  %conv39 = sitofp i32 %size.0.lcssa to double
  %36 = load double, ptr %arrayidx38, align 8
  %offset.i = getelementptr inbounds i8, ptr %arrayidx38, i64 24
  %37 = load double, ptr %offset.i, align 8
  %38 = tail call double @llvm.fmuladd.f64(double %36, double %conv39, double %37)
  %count.i = getelementptr inbounds i8, ptr %arrayidx38, i64 8
  %39 = load double, ptr %count.i, align 8
  %mul.i = fmul double %39, %conv
  %div.i = fdiv double %38, %mul.i
  br label %if.end43

if.end43:                                         ; preds = %for.body12, %land.lhs.true, %for.end32
  %.sink = phi double [ %div.i, %for.end32 ], [ 0.000000e+00, %land.lhs.true ], [ 0.000000e+00, %for.body12 ]
  %40 = load ptr, ptr %rc17, align 16
  %slice_size_planned42 = getelementptr inbounds i8, ptr %40, i64 528
  store double %.sink, ptr %slice_size_planned42, align 8
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1
  %41 = load i32, ptr %i_threads9, align 4
  %42 = sext i32 %41 to i64
  %cmp10 = icmp slt i64 %indvars.iv.next213, %42
  br i1 %cmp10, label %for.body12, label %for.cond.cleanup11

land.lhs.true49:                                  ; preds = %for.cond.cleanup11
  %frame_size_planned50 = getelementptr inbounds i8, ptr %0, i64 520
  %43 = load double, ptr %frame_size_planned50, align 8
  %tobool51 = fcmp une double %43, 0.000000e+00
  br i1 %tobool51, label %if.then52, label %if.end110

if.then52:                                        ; preds = %land.lhs.true49
  %cmp26.i = icmp sgt i32 %.lcssa191, 0
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %x264_threads_normalize_predictors.exit

for.body.lr.ph.i:                                 ; preds = %if.then52
  %thread.i = getelementptr inbounds i8, ptr %h, i64 704
  %wide.trip.count.i = zext nneg i32 %.lcssa191 to i64
  %xtraiter = and i64 %wide.trip.count.i, 3
  %44 = icmp ult i32 %.lcssa191, 4
  br i1 %44, label %for.body8.lr.ph.i.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %for.body.i

for.body8.lr.ph.i.unr-lcssa:                      ; preds = %for.body.i, %for.body.lr.ph.i
  %add.i.lcssa.ph = phi double [ poison, %for.body.lr.ph.i ], [ %add.i.3, %for.body.i ]
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %totalsize.028.i.unr = phi double [ 0.000000e+00, %for.body.lr.ph.i ], [ %add.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body8.lr.ph.i, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %for.body8.lr.ph.i.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %for.body8.lr.ph.i.unr-lcssa ]
  %totalsize.028.i.epil = phi double [ %add.i.epil, %for.body.i.epil ], [ %totalsize.028.i.unr, %for.body8.lr.ph.i.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %for.body8.lr.ph.i.unr-lcssa ]
  %arrayidx.i.epil = getelementptr inbounds [129 x ptr], ptr %thread.i, i64 0, i64 %indvars.iv.i.epil
  %45 = load ptr, ptr %arrayidx.i.epil, align 8
  %rc.i.epil = getelementptr inbounds i8, ptr %45, i64 26704
  %46 = load ptr, ptr %rc.i.epil, align 16
  %slice_size_planned.i.epil = getelementptr inbounds i8, ptr %46, i64 528
  %47 = load double, ptr %slice_size_planned.i.epil, align 8
  %add.i.epil = fadd double %totalsize.028.i.epil, %47
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.body8.lr.ph.i, label %for.body.i.epil, !llvm.loop !27

for.body8.lr.ph.i:                                ; preds = %for.body.i.epil, %for.body8.lr.ph.i.unr-lcssa
  %add.i.lcssa = phi double [ %add.i.lcssa.ph, %for.body8.lr.ph.i.unr-lcssa ], [ %add.i.epil, %for.body.i.epil ]
  %48 = load ptr, ptr %rc1, align 16
  %frame_size_planned.i = getelementptr inbounds i8, ptr %48, i64 520
  %49 = load double, ptr %frame_size_planned.i, align 8
  %div.i160 = fdiv double %49, %add.i.lcssa
  br label %for.body8.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %totalsize.028.i = phi double [ 0.000000e+00, %for.body.lr.ph.i.new ], [ %add.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %arrayidx.i = getelementptr inbounds [129 x ptr], ptr %thread.i, i64 0, i64 %indvars.iv.i
  %50 = load ptr, ptr %arrayidx.i, align 8
  %rc.i = getelementptr inbounds i8, ptr %50, i64 26704
  %51 = load ptr, ptr %rc.i, align 16
  %slice_size_planned.i = getelementptr inbounds i8, ptr %51, i64 528
  %52 = load double, ptr %slice_size_planned.i, align 8
  %add.i = fadd double %totalsize.028.i, %52
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %arrayidx.i.1 = getelementptr inbounds [129 x ptr], ptr %thread.i, i64 0, i64 %indvars.iv.next.i
  %53 = load ptr, ptr %arrayidx.i.1, align 8
  %rc.i.1 = getelementptr inbounds i8, ptr %53, i64 26704
  %54 = load ptr, ptr %rc.i.1, align 16
  %slice_size_planned.i.1 = getelementptr inbounds i8, ptr %54, i64 528
  %55 = load double, ptr %slice_size_planned.i.1, align 8
  %add.i.1 = fadd double %add.i, %55
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %arrayidx.i.2 = getelementptr inbounds [129 x ptr], ptr %thread.i, i64 0, i64 %indvars.iv.next.i.1
  %56 = load ptr, ptr %arrayidx.i.2, align 8
  %rc.i.2 = getelementptr inbounds i8, ptr %56, i64 26704
  %57 = load ptr, ptr %rc.i.2, align 16
  %slice_size_planned.i.2 = getelementptr inbounds i8, ptr %57, i64 528
  %58 = load double, ptr %slice_size_planned.i.2, align 8
  %add.i.2 = fadd double %add.i.1, %58
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %arrayidx.i.3 = getelementptr inbounds [129 x ptr], ptr %thread.i, i64 0, i64 %indvars.iv.next.i.2
  %59 = load ptr, ptr %arrayidx.i.3, align 8
  %rc.i.3 = getelementptr inbounds i8, ptr %59, i64 26704
  %60 = load ptr, ptr %rc.i.3, align 16
  %slice_size_planned.i.3 = getelementptr inbounds i8, ptr %60, i64 528
  %61 = load double, ptr %slice_size_planned.i.3, align 8
  %add.i.3 = fadd double %add.i.2, %61
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.body8.lr.ph.i.unr-lcssa, label %for.body.i

for.body8.i:                                      ; preds = %for.body8.i, %for.body8.lr.ph.i
  %indvars.iv32.i = phi i64 [ 0, %for.body8.lr.ph.i ], [ %indvars.iv.next33.i, %for.body8.i ]
  %arrayidx11.i = getelementptr inbounds [129 x ptr], ptr %thread.i, i64 0, i64 %indvars.iv32.i
  %62 = load ptr, ptr %arrayidx11.i, align 8
  %rc12.i = getelementptr inbounds i8, ptr %62, i64 26704
  %63 = load ptr, ptr %rc12.i, align 16
  %slice_size_planned13.i = getelementptr inbounds i8, ptr %63, i64 528
  %64 = load double, ptr %slice_size_planned13.i, align 8
  %mul.i161 = fmul double %div.i160, %64
  store double %mul.i161, ptr %slice_size_planned13.i, align 8
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %65 = load i32, ptr %i_threads9223, align 4
  %66 = sext i32 %65 to i64
  %cmp6.i = icmp slt i64 %indvars.iv.next33.i, %66
  br i1 %cmp6.i, label %for.body8.i, label %x264_threads_normalize_predictors.exit

x264_threads_normalize_predictors.exit:           ; preds = %for.body8.i, %if.then52
  %67 = phi i32 [ %.lcssa191, %if.then52 ], [ %65, %for.body8.i ]
  %single_frame_vbv = getelementptr inbounds i8, ptr %0, i64 152
  %68 = load i32, ptr %single_frame_vbv, align 8
  %tobool53.not = icmp eq i32 %68, 0
  br i1 %tobool53.not, label %if.end88, label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %x264_threads_normalize_predictors.exit
  %cmp59201 = icmp sgt i32 %67, 0
  br i1 %cmp59201, label %for.body62.lr.ph, label %if.end110

for.body62.lr.ph:                                 ; preds = %for.cond56.preheader
  %thread64 = getelementptr inbounds i8, ptr %h, i64 704
  br label %for.body62

for.cond.cleanup61:                               ; preds = %for.body62
  %cmp26.i163 = icmp sgt i32 %101, 0
  br i1 %cmp26.i163, label %for.body.lr.ph.i164, label %if.end110

for.body.lr.ph.i164:                              ; preds = %for.cond.cleanup61
  %thread.i165 = getelementptr inbounds i8, ptr %h, i64 704
  %wide.trip.count.i166 = zext nneg i32 %101 to i64
  %xtraiter253 = and i64 %wide.trip.count.i166, 3
  %69 = icmp ult i32 %101, 4
  br i1 %69, label %for.body8.lr.ph.i180.unr-lcssa, label %for.body.lr.ph.i164.new

for.body.lr.ph.i164.new:                          ; preds = %for.body.lr.ph.i164
  %unroll_iter257 = and i64 %wide.trip.count.i166, 2147483644
  br label %for.body.i167

for.body8.lr.ph.i180.unr-lcssa:                   ; preds = %for.body.i167, %for.body.lr.ph.i164
  %add.i173.lcssa.ph = phi double [ poison, %for.body.lr.ph.i164 ], [ %add.i173.3, %for.body.i167 ]
  %indvars.iv.i168.unr = phi i64 [ 0, %for.body.lr.ph.i164 ], [ %indvars.iv.next.i174.3, %for.body.i167 ]
  %totalsize.028.i169.unr = phi double [ 0.000000e+00, %for.body.lr.ph.i164 ], [ %add.i173.3, %for.body.i167 ]
  %lcmp.mod255.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod255.not, label %for.body8.lr.ph.i180, label %for.body.i167.epil

for.body.i167.epil:                               ; preds = %for.body8.lr.ph.i180.unr-lcssa, %for.body.i167.epil
  %indvars.iv.i168.epil = phi i64 [ %indvars.iv.next.i174.epil, %for.body.i167.epil ], [ %indvars.iv.i168.unr, %for.body8.lr.ph.i180.unr-lcssa ]
  %totalsize.028.i169.epil = phi double [ %add.i173.epil, %for.body.i167.epil ], [ %totalsize.028.i169.unr, %for.body8.lr.ph.i180.unr-lcssa ]
  %epil.iter254 = phi i64 [ %epil.iter254.next, %for.body.i167.epil ], [ 0, %for.body8.lr.ph.i180.unr-lcssa ]
  %arrayidx.i170.epil = getelementptr inbounds [129 x ptr], ptr %thread.i165, i64 0, i64 %indvars.iv.i168.epil
  %70 = load ptr, ptr %arrayidx.i170.epil, align 8
  %rc.i171.epil = getelementptr inbounds i8, ptr %70, i64 26704
  %71 = load ptr, ptr %rc.i171.epil, align 16
  %slice_size_planned.i172.epil = getelementptr inbounds i8, ptr %71, i64 528
  %72 = load double, ptr %slice_size_planned.i172.epil, align 8
  %add.i173.epil = fadd double %totalsize.028.i169.epil, %72
  %indvars.iv.next.i174.epil = add nuw nsw i64 %indvars.iv.i168.epil, 1
  %epil.iter254.next = add i64 %epil.iter254, 1
  %epil.iter254.cmp.not = icmp eq i64 %epil.iter254.next, %xtraiter253
  br i1 %epil.iter254.cmp.not, label %for.body8.lr.ph.i180, label %for.body.i167.epil, !llvm.loop !28

for.body8.lr.ph.i180:                             ; preds = %for.body.i167.epil, %for.body8.lr.ph.i180.unr-lcssa
  %add.i173.lcssa = phi double [ %add.i173.lcssa.ph, %for.body8.lr.ph.i180.unr-lcssa ], [ %add.i173.epil, %for.body.i167.epil ]
  %73 = load ptr, ptr %rc1, align 16
  %frame_size_planned.i178 = getelementptr inbounds i8, ptr %73, i64 520
  %74 = load double, ptr %frame_size_planned.i178, align 8
  %div.i179 = fdiv double %74, %add.i173.lcssa
  br label %for.body8.i182

for.body.i167:                                    ; preds = %for.body.i167, %for.body.lr.ph.i164.new
  %indvars.iv.i168 = phi i64 [ 0, %for.body.lr.ph.i164.new ], [ %indvars.iv.next.i174.3, %for.body.i167 ]
  %totalsize.028.i169 = phi double [ 0.000000e+00, %for.body.lr.ph.i164.new ], [ %add.i173.3, %for.body.i167 ]
  %niter258 = phi i64 [ 0, %for.body.lr.ph.i164.new ], [ %niter258.next.3, %for.body.i167 ]
  %arrayidx.i170 = getelementptr inbounds [129 x ptr], ptr %thread.i165, i64 0, i64 %indvars.iv.i168
  %75 = load ptr, ptr %arrayidx.i170, align 8
  %rc.i171 = getelementptr inbounds i8, ptr %75, i64 26704
  %76 = load ptr, ptr %rc.i171, align 16
  %slice_size_planned.i172 = getelementptr inbounds i8, ptr %76, i64 528
  %77 = load double, ptr %slice_size_planned.i172, align 8
  %add.i173 = fadd double %totalsize.028.i169, %77
  %indvars.iv.next.i174 = or disjoint i64 %indvars.iv.i168, 1
  %arrayidx.i170.1 = getelementptr inbounds [129 x ptr], ptr %thread.i165, i64 0, i64 %indvars.iv.next.i174
  %78 = load ptr, ptr %arrayidx.i170.1, align 8
  %rc.i171.1 = getelementptr inbounds i8, ptr %78, i64 26704
  %79 = load ptr, ptr %rc.i171.1, align 16
  %slice_size_planned.i172.1 = getelementptr inbounds i8, ptr %79, i64 528
  %80 = load double, ptr %slice_size_planned.i172.1, align 8
  %add.i173.1 = fadd double %add.i173, %80
  %indvars.iv.next.i174.1 = or disjoint i64 %indvars.iv.i168, 2
  %arrayidx.i170.2 = getelementptr inbounds [129 x ptr], ptr %thread.i165, i64 0, i64 %indvars.iv.next.i174.1
  %81 = load ptr, ptr %arrayidx.i170.2, align 8
  %rc.i171.2 = getelementptr inbounds i8, ptr %81, i64 26704
  %82 = load ptr, ptr %rc.i171.2, align 16
  %slice_size_planned.i172.2 = getelementptr inbounds i8, ptr %82, i64 528
  %83 = load double, ptr %slice_size_planned.i172.2, align 8
  %add.i173.2 = fadd double %add.i173.1, %83
  %indvars.iv.next.i174.2 = or disjoint i64 %indvars.iv.i168, 3
  %arrayidx.i170.3 = getelementptr inbounds [129 x ptr], ptr %thread.i165, i64 0, i64 %indvars.iv.next.i174.2
  %84 = load ptr, ptr %arrayidx.i170.3, align 8
  %rc.i171.3 = getelementptr inbounds i8, ptr %84, i64 26704
  %85 = load ptr, ptr %rc.i171.3, align 16
  %slice_size_planned.i172.3 = getelementptr inbounds i8, ptr %85, i64 528
  %86 = load double, ptr %slice_size_planned.i172.3, align 8
  %add.i173.3 = fadd double %add.i173.2, %86
  %indvars.iv.next.i174.3 = add nuw nsw i64 %indvars.iv.i168, 4
  %niter258.next.3 = add i64 %niter258, 4
  %niter258.ncmp.3 = icmp eq i64 %niter258.next.3, %unroll_iter257
  br i1 %niter258.ncmp.3, label %for.body8.lr.ph.i180.unr-lcssa, label %for.body.i167

for.body8.i182:                                   ; preds = %for.body8.i182, %for.body8.lr.ph.i180
  %indvars.iv32.i183 = phi i64 [ 0, %for.body8.lr.ph.i180 ], [ %indvars.iv.next33.i188, %for.body8.i182 ]
  %arrayidx11.i184 = getelementptr inbounds [129 x ptr], ptr %thread.i165, i64 0, i64 %indvars.iv32.i183
  %87 = load ptr, ptr %arrayidx11.i184, align 8
  %rc12.i185 = getelementptr inbounds i8, ptr %87, i64 26704
  %88 = load ptr, ptr %rc12.i185, align 16
  %slice_size_planned13.i186 = getelementptr inbounds i8, ptr %88, i64 528
  %89 = load double, ptr %slice_size_planned13.i186, align 8
  %mul.i187 = fmul double %div.i179, %89
  store double %mul.i187, ptr %slice_size_planned13.i186, align 8
  %indvars.iv.next33.i188 = add nuw nsw i64 %indvars.iv32.i183, 1
  %90 = load i32, ptr %i_threads9223, align 4
  %91 = sext i32 %90 to i64
  %cmp6.i189 = icmp slt i64 %indvars.iv.next33.i188, %91
  br i1 %cmp6.i189, label %for.body8.i182, label %if.end88

for.body62:                                       ; preds = %for.body62.lr.ph, %for.body62
  %indvars.iv215 = phi i64 [ 0, %for.body62.lr.ph ], [ %indvars.iv.next216, %for.body62 ]
  %arrayidx66 = getelementptr inbounds [129 x ptr], ptr %thread64, i64 0, i64 %indvars.iv215
  %92 = load ptr, ptr %arrayidx66, align 8
  %i_threadslice_end67 = getelementptr inbounds i8, ptr %92, i64 1752
  %93 = load i32, ptr %i_threadslice_end67, align 8
  %i_threadslice_start68 = getelementptr inbounds i8, ptr %92, i64 1748
  %94 = load i32, ptr %i_threadslice_start68, align 4
  %sub = sub nsw i32 %93, %94
  %conv69 = sitofp i32 %sub to double
  %div = fdiv double 1.000000e+00, %conv69
  %cmp70 = fcmp olt double %div, 5.000000e-02
  %cond = select i1 %cmp70, double 5.000000e-02, double %div
  %rc77 = getelementptr inbounds i8, ptr %92, i64 26704
  %95 = load ptr, ptr %rc77, align 16
  %max_frame_error = getelementptr inbounds i8, ptr %95, i64 536
  store double %cond, ptr %max_frame_error, align 8
  %96 = load ptr, ptr %rc77, align 16
  %max_frame_error79 = getelementptr inbounds i8, ptr %96, i64 536
  %97 = load double, ptr %max_frame_error79, align 8
  %mul80 = fmul double %97, 2.000000e+00
  %98 = load double, ptr %frame_size_planned50, align 8
  %slice_size_planned84 = getelementptr inbounds i8, ptr %96, i64 528
  %99 = load double, ptr %slice_size_planned84, align 8
  %100 = tail call double @llvm.fmuladd.f64(double %mul80, double %98, double %99)
  store double %100, ptr %slice_size_planned84, align 8
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  %101 = load i32, ptr %i_threads9223, align 4
  %102 = sext i32 %101 to i64
  %cmp59 = icmp slt i64 %indvars.iv.next216, %102
  br i1 %cmp59, label %for.body62, label %for.cond.cleanup61

if.end88:                                         ; preds = %for.body8.i182, %x264_threads_normalize_predictors.exit
  %103 = phi i32 [ %67, %x264_threads_normalize_predictors.exit ], [ %90, %for.body8.i182 ]
  %cmp93204 = icmp sgt i32 %103, 0
  br i1 %cmp93204, label %for.body96.lr.ph, label %if.end110

for.body96.lr.ph:                                 ; preds = %if.end88
  %thread97 = getelementptr inbounds i8, ptr %h, i64 704
  br label %for.body96

for.body96:                                       ; preds = %for.body96.lr.ph, %for.body96
  %indvars.iv218 = phi i64 [ 0, %for.body96.lr.ph ], [ %indvars.iv.next219, %for.body96 ]
  %arrayidx99 = getelementptr inbounds [129 x ptr], ptr %thread97, i64 0, i64 %indvars.iv218
  %104 = load ptr, ptr %arrayidx99, align 8
  %rc100 = getelementptr inbounds i8, ptr %104, i64 26704
  %105 = load ptr, ptr %rc100, align 16
  %slice_size_planned101 = getelementptr inbounds i8, ptr %105, i64 528
  %106 = load double, ptr %slice_size_planned101, align 8
  %conv102 = fptrunc double %106 to float
  %frame_size_estimated = getelementptr inbounds i8, ptr %105, i64 508
  store float %conv102, ptr %frame_size_estimated, align 4
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1
  %107 = load i32, ptr %i_threads9223, align 4
  %108 = sext i32 %107 to i64
  %cmp93 = icmp slt i64 %indvars.iv.next219, %108
  br i1 %cmp93, label %for.body96, label %if.end110

if.end110:                                        ; preds = %for.body96, %for.cond56.preheader, %for.cond.cleanup61, %if.end88, %land.lhs.true49, %for.cond.cleanup11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_threads_merge_ratecontrol(ptr nocapture noundef readonly %h) local_unnamed_addr #0 {
entry:
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
  %0 = load i32, ptr %i_threads, align 4
  %cmp73 = icmp sgt i32 %0, 0
  br i1 %cmp73, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %rc1 = getelementptr inbounds i8, ptr %h, i64 26704
  %1 = load ptr, ptr %rc1, align 16
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %h, i64 528
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %pred = getelementptr inbounds i8, ptr %1, i64 144
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %qpa_rc33 = getelementptr inbounds i8, ptr %1, i64 88
  %qpa_aq35 = getelementptr inbounds i8, ptr %1, i64 92
  br label %for.body

for.cond.cleanup:                                 ; preds = %cleanup, %entry
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %indvars.iv76 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next77, %cleanup ]
  %arrayidx = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv76
  %2 = load ptr, ptr %arrayidx, align 8
  %rc5 = getelementptr inbounds i8, ptr %2, i64 26704
  %3 = load ptr, ptr %rc5, align 16
  %4 = load i32, ptr %i_vbv_buffer_size, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %i_threadslice_start = getelementptr inbounds i8, ptr %2, i64 1748
  %5 = load i32, ptr %i_threadslice_start, align 4
  %i_threadslice_end = getelementptr inbounds i8, ptr %2, i64 1752
  %6 = load i32, ptr %i_threadslice_end, align 8
  %cmp969 = icmp slt i32 %5, %6
  br i1 %cmp969, label %for.body11.lr.ph, label %for.cond.cleanup10

for.body11.lr.ph:                                 ; preds = %if.then
  %7 = load ptr, ptr %fdec, align 16
  %i_row_satd = getelementptr inbounds i8, ptr %7, i64 12128
  %8 = load ptr, ptr %i_row_satd, align 16
  %9 = sext i32 %5 to i64
  %wide.trip.count = sext i32 %6 to i64
  %10 = sub nsw i64 %wide.trip.count, %9
  %min.iters.check = icmp ult i64 %10, 16
  br i1 %min.iters.check, label %for.body11.preheader, label %vector.ph

for.body11.preheader:                             ; preds = %middle.block, %for.body11.lr.ph
  %indvars.iv.ph = phi i64 [ %9, %for.body11.lr.ph ], [ %ind.end, %middle.block ]
  %size.070.ph = phi i32 [ 0, %for.body11.lr.ph ], [ %19, %middle.block ]
  br label %for.body11

vector.ph:                                        ; preds = %for.body11.lr.ph
  %n.vec = and i64 %10, -16
  %ind.end = add nsw i64 %n.vec, %9
  %invariant.gep = getelementptr i32, ptr %8, i64 %9
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %14, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %15, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %16, %vector.body ]
  %vec.phi82 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %17, %vector.body ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index
  %11 = getelementptr inbounds i8, ptr %gep, i64 16
  %12 = getelementptr inbounds i8, ptr %gep, i64 32
  %13 = getelementptr inbounds i8, ptr %gep, i64 48
  %wide.load = load <4 x i32>, ptr %gep, align 4
  %wide.load83 = load <4 x i32>, ptr %11, align 4
  %wide.load84 = load <4 x i32>, ptr %12, align 4
  %wide.load85 = load <4 x i32>, ptr %13, align 4
  %14 = add <4 x i32> %wide.load, %vec.phi
  %15 = add <4 x i32> %wide.load83, %vec.phi80
  %16 = add <4 x i32> %wide.load84, %vec.phi81
  %17 = add <4 x i32> %wide.load85, %vec.phi82
  %index.next = add nuw i64 %index, 16
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %15, %14
  %bin.rdx86 = add <4 x i32> %16, %bin.rdx
  %bin.rdx87 = add <4 x i32> %17, %bin.rdx86
  %19 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx87)
  %cmp.n = icmp eq i64 %10, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup10, label %for.body11.preheader

for.cond.cleanup10:                               ; preds = %for.body11, %middle.block, %if.then
  %size.0.lcssa = phi i32 [ 0, %if.then ], [ %19, %middle.block ], [ %add, %for.body11 ]
  %stat = getelementptr inbounds i8, ptr %2, i64 26712
  %20 = load i32, ptr %stat, align 8
  %i_tex_bits = getelementptr inbounds i8, ptr %2, i64 26716
  %21 = load i32, ptr %i_tex_bits, align 4
  %i_misc_bits = getelementptr inbounds i8, ptr %2, i64 26720
  %22 = load i32, ptr %i_misc_bits, align 8
  %sub = sub nsw i32 %6, %5
  %23 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %23, i64 1084
  %24 = load i32, ptr %i_mb_width, align 4
  %mul = mul nsw i32 %24, %sub
  %25 = load ptr, ptr %pred, align 8
  %26 = load i32, ptr %i_type, align 16
  %qpa_rc = getelementptr inbounds i8, ptr %3, i64 88
  %27 = load float, ptr %qpa_rc, align 8
  %conv = sitofp i32 %mul to float
  %div = fdiv float %27, %conv
  %conv26 = fpext float %div to double
  %sub.i = fadd double %conv26, -1.200000e+01
  %div.i = fdiv double %sub.i, 6.000000e+00
  %exp2.i = tail call double @exp2(double %div.i) #16
  %cmp.i = icmp slt i32 %size.0.lcssa, 10
  br i1 %cmp.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %for.cond.cleanup10
  %conv27 = uitofp nneg i32 %size.0.lcssa to double
  %add16 = add nsw i32 %21, %20
  %add19 = add nsw i32 %add16, %22
  %conv28 = sitofp i32 %add19 to double
  %mul.i = fmul double %exp2.i, 8.500000e-01
  %28 = trunc i64 %indvars.iv76 to i32
  %29 = mul i32 %28, 5
  %add23 = add nsw i32 %26, %29
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds %struct.predictor_t, ptr %25, i64 %idxprom24
  %mul.i68 = fmul double %mul.i, %conv28
  %div1.i = fdiv double %mul.i68, %conv27
  %decay.i = getelementptr inbounds i8, ptr %arrayidx25, i64 16
  %30 = load double, ptr %decay.i, align 8
  %offset.i = getelementptr inbounds i8, ptr %arrayidx25, i64 24
  %31 = load double, ptr %offset.i, align 8
  %mul15.i = fmul double %30, %31
  %32 = load <2 x double>, ptr %arrayidx25, align 8
  %33 = extractelement <2 x double> %32, i64 0
  %34 = extractelement <2 x double> %32, i64 1
  %div.i67 = fdiv double %33, %34
  %div2.i = fdiv double %div.i67, 1.500000e+00
  %mul3.i = fmul double %div.i67, 1.500000e+00
  %cmp.i.i = fcmp olt double %div1.i, %div2.i
  %cmp1.i.i = fcmp ogt double %div1.i, %mul3.i
  %cond.i.i = select i1 %cmp1.i.i, double %mul3.i, double %div1.i
  %cond5.i.i = select i1 %cmp.i.i, double %div2.i, double %cond.i.i
  %35 = fneg double %cond5.i.i
  %neg.i = fmul double %conv27, %35
  %36 = tail call double @llvm.fmuladd.f64(double %conv28, double %mul.i, double %neg.i)
  %cmp6.i = fcmp ult double %36, 0.000000e+00
  %div1.call.i = select i1 %cmp6.i, double %div1.i, double %cond5.i.i
  %..i = select i1 %cmp6.i, double 0.000000e+00, double %36
  %37 = insertelement <2 x double> poison, double %30, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %39 = fmul <2 x double> %32, %38
  %40 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %div1.call.i, i64 0
  %41 = fadd <2 x double> %39, %40
  store <2 x double> %41, ptr %arrayidx25, align 8
  %add19.i = fadd double %mul15.i, %..i
  store double %add19.i, ptr %offset.i, align 8
  br label %if.end

for.body11:                                       ; preds = %for.body11.preheader, %for.body11
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body11 ], [ %indvars.iv.ph, %for.body11.preheader ]
  %size.070 = phi i32 [ %add, %for.body11 ], [ %size.070.ph, %for.body11.preheader ]
  %arrayidx13 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv
  %42 = load i32, ptr %arrayidx13, align 4
  %add = add nsw i32 %42, %size.070
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup10, label %for.body11, !llvm.loop !30

if.end:                                           ; preds = %if.end.i, %for.cond.cleanup10, %for.body
  %tobool29.not = icmp eq i64 %indvars.iv76, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end
  %qpa_rc32 = getelementptr inbounds i8, ptr %3, i64 88
  %43 = load float, ptr %qpa_rc32, align 8
  %44 = load float, ptr %qpa_rc33, align 8
  %add34 = fadd float %43, %44
  store float %add34, ptr %qpa_rc33, align 8
  %qpa_aq = getelementptr inbounds i8, ptr %3, i64 92
  %45 = load float, ptr %qpa_aq, align 4
  %46 = load float, ptr %qpa_aq35, align 4
  %add36 = fadd float %45, %46
  store float %add36, ptr %qpa_aq35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end31
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %47 = load i32, ptr %i_threads, align 4
  %48 = sext i32 %47 to i64
  %cmp = icmp slt i64 %indvars.iv.next77, %48
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_thread_sync_ratecontrol(ptr noundef readonly %cur, ptr noundef readonly %prev, ptr noundef readonly %next) local_unnamed_addr #12 {
entry:
  %cmp.not = icmp eq ptr %cur, %prev
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rc = getelementptr inbounds i8, ptr %cur, i64 26704
  %0 = load ptr, ptr %rc, align 16
  %accum_p_qp = getelementptr inbounds i8, ptr %0, i64 376
  %rc1 = getelementptr inbounds i8, ptr %prev, i64 26704
  %1 = load ptr, ptr %rc1, align 16
  %accum_p_qp2 = getelementptr inbounds i8, ptr %1, i64 376
  %2 = load i64, ptr %accum_p_qp2, align 8
  store i64 %2, ptr %accum_p_qp, align 8
  %3 = load ptr, ptr %rc, align 16
  %accum_p_norm = getelementptr inbounds i8, ptr %3, i64 384
  %4 = load ptr, ptr %rc1, align 16
  %accum_p_norm5 = getelementptr inbounds i8, ptr %4, i64 384
  %5 = load i64, ptr %accum_p_norm5, align 8
  store i64 %5, ptr %accum_p_norm, align 8
  %6 = load ptr, ptr %rc, align 16
  %last_satd = getelementptr inbounds i8, ptr %6, i64 168
  %7 = load ptr, ptr %rc1, align 16
  %last_satd8 = getelementptr inbounds i8, ptr %7, i64 168
  %8 = load i32, ptr %last_satd8, align 8
  store i32 %8, ptr %last_satd, align 8
  %9 = load ptr, ptr %rc, align 16
  %last_rceq = getelementptr inbounds i8, ptr %9, i64 176
  %10 = load ptr, ptr %rc1, align 16
  %last_rceq11 = getelementptr inbounds i8, ptr %10, i64 176
  %11 = load i64, ptr %last_rceq11, align 8
  store i64 %11, ptr %last_rceq, align 8
  %12 = load ptr, ptr %rc, align 16
  %last_qscale_for = getelementptr inbounds i8, ptr %12, i64 328
  %13 = load ptr, ptr %rc1, align 16
  %last_qscale_for14 = getelementptr inbounds i8, ptr %13, i64 328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %last_qscale_for, ptr noundef nonnull align 8 dereferenceable(40) %last_qscale_for14, i64 40, i1 false)
  %14 = load ptr, ptr %rc, align 16
  %last_non_b_pict_type = getelementptr inbounds i8, ptr %14, i64 368
  %15 = load ptr, ptr %rc1, align 16
  %last_non_b_pict_type17 = getelementptr inbounds i8, ptr %15, i64 368
  %16 = load i32, ptr %last_non_b_pict_type17, align 8
  store i32 %16, ptr %last_non_b_pict_type, align 8
  %17 = load ptr, ptr %rc, align 16
  %short_term_cplxsum = getelementptr inbounds i8, ptr %17, i64 216
  %18 = load ptr, ptr %rc1, align 16
  %short_term_cplxsum20 = getelementptr inbounds i8, ptr %18, i64 216
  %19 = load i64, ptr %short_term_cplxsum20, align 8
  store i64 %19, ptr %short_term_cplxsum, align 8
  %20 = load ptr, ptr %rc, align 16
  %short_term_cplxcount = getelementptr inbounds i8, ptr %20, i64 224
  %21 = load ptr, ptr %rc1, align 16
  %short_term_cplxcount23 = getelementptr inbounds i8, ptr %21, i64 224
  %22 = load i64, ptr %short_term_cplxcount23, align 8
  store i64 %22, ptr %short_term_cplxcount, align 8
  %23 = load ptr, ptr %rc, align 16
  %bframes = getelementptr inbounds i8, ptr %23, i64 880
  %24 = load ptr, ptr %rc1, align 16
  %bframes26 = getelementptr inbounds i8, ptr %24, i64 880
  %25 = load i32, ptr %bframes26, align 8
  store i32 %25, ptr %bframes, align 8
  %26 = load ptr, ptr %rc, align 16
  %prev_zone = getelementptr inbounds i8, ptr %26, i64 904
  %27 = load ptr, ptr %rc1, align 16
  %prev_zone29 = getelementptr inbounds i8, ptr %27, i64 904
  %28 = load i64, ptr %prev_zone29, align 8
  store i64 %28, ptr %prev_zone, align 8
  %29 = load ptr, ptr %rc, align 16
  %qpbuf_pos = getelementptr inbounds i8, ptr %29, i64 504
  %30 = load ptr, ptr %rc1, align 16
  %qpbuf_pos32 = getelementptr inbounds i8, ptr %30, i64 504
  %31 = load i32, ptr %qpbuf_pos32, align 8
  store i32 %31, ptr %qpbuf_pos, align 8
  %32 = load ptr, ptr %rc, align 16
  %buffer_rate = getelementptr inbounds i8, ptr %32, i64 128
  %33 = load ptr, ptr %rc1, align 16
  %buffer_rate35 = getelementptr inbounds i8, ptr %33, i64 128
  %34 = load i64, ptr %buffer_rate35, align 8
  store i64 %34, ptr %buffer_rate, align 8
  %35 = load ptr, ptr %rc, align 16
  %buffer_size = getelementptr inbounds i8, ptr %35, i64 104
  %36 = load ptr, ptr %rc1, align 16
  %buffer_size38 = getelementptr inbounds i8, ptr %36, i64 104
  %37 = load i64, ptr %buffer_size38, align 8
  store i64 %37, ptr %buffer_size, align 8
  %38 = load ptr, ptr %rc, align 16
  %single_frame_vbv = getelementptr inbounds i8, ptr %38, i64 152
  %39 = load ptr, ptr %rc1, align 16
  %single_frame_vbv41 = getelementptr inbounds i8, ptr %39, i64 152
  %40 = load i32, ptr %single_frame_vbv41, align 8
  store i32 %40, ptr %single_frame_vbv, align 8
  %41 = load ptr, ptr %rc, align 16
  %cbr_decay = getelementptr inbounds i8, ptr %41, i64 208
  %42 = load ptr, ptr %rc1, align 16
  %cbr_decay44 = getelementptr inbounds i8, ptr %42, i64 208
  %43 = load i64, ptr %cbr_decay44, align 8
  store i64 %43, ptr %cbr_decay, align 8
  %44 = load ptr, ptr %rc, align 16
  %b_vbv_min_rate = getelementptr inbounds i8, ptr %44, i64 12
  %45 = load ptr, ptr %rc1, align 16
  %b_vbv_min_rate47 = getelementptr inbounds i8, ptr %45, i64 12
  %46 = load i32, ptr %b_vbv_min_rate47, align 4
  store i32 %46, ptr %b_vbv_min_rate, align 4
  %47 = load ptr, ptr %rc, align 16
  %rate_factor_constant = getelementptr inbounds i8, ptr %47, i64 232
  %48 = load ptr, ptr %rc1, align 16
  %rate_factor_constant50 = getelementptr inbounds i8, ptr %48, i64 232
  %49 = load i64, ptr %rate_factor_constant50, align 8
  store i64 %49, ptr %rate_factor_constant, align 8
  %50 = load ptr, ptr %rc, align 16
  %bitrate = getelementptr inbounds i8, ptr %50, i64 24
  %51 = load ptr, ptr %rc1, align 16
  %bitrate53 = getelementptr inbounds i8, ptr %51, i64 24
  %52 = load i64, ptr %bitrate53, align 8
  store i64 %52, ptr %bitrate, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp54.not = icmp eq ptr %cur, %next
  br i1 %cmp54.not, label %if.end80, label %if.then55

if.then55:                                        ; preds = %if.end
  %rc56 = getelementptr inbounds i8, ptr %cur, i64 26704
  %53 = load ptr, ptr %rc56, align 16
  %cplxr_sum = getelementptr inbounds i8, ptr %53, i64 184
  %54 = load double, ptr %cplxr_sum, align 8
  %rc57 = getelementptr inbounds i8, ptr %next, i64 26704
  %55 = load ptr, ptr %rc57, align 16
  %cplxr_sum58 = getelementptr inbounds i8, ptr %55, i64 184
  store double %54, ptr %cplxr_sum58, align 8
  %56 = load ptr, ptr %rc56, align 16
  %expected_bits_sum = getelementptr inbounds i8, ptr %56, i64 192
  %57 = load double, ptr %expected_bits_sum, align 8
  %58 = load ptr, ptr %rc57, align 16
  %expected_bits_sum61 = getelementptr inbounds i8, ptr %58, i64 192
  store double %57, ptr %expected_bits_sum61, align 8
  %59 = load ptr, ptr %rc56, align 16
  %wanted_bits_window = getelementptr inbounds i8, ptr %59, i64 200
  %60 = load double, ptr %wanted_bits_window, align 8
  %61 = load ptr, ptr %rc57, align 16
  %wanted_bits_window64 = getelementptr inbounds i8, ptr %61, i64 200
  store double %60, ptr %wanted_bits_window64, align 8
  %62 = load ptr, ptr %rc56, align 16
  %bframe_bits = getelementptr inbounds i8, ptr %62, i64 884
  %63 = load i32, ptr %bframe_bits, align 4
  %64 = load ptr, ptr %rc57, align 16
  %bframe_bits67 = getelementptr inbounds i8, ptr %64, i64 884
  store i32 %63, ptr %bframe_bits67, align 4
  %65 = load ptr, ptr %rc56, align 16
  %initial_cpb_removal_delay = getelementptr inbounds i8, ptr %65, i64 912
  %66 = load i32, ptr %initial_cpb_removal_delay, align 8
  %67 = load ptr, ptr %rc57, align 16
  %initial_cpb_removal_delay70 = getelementptr inbounds i8, ptr %67, i64 912
  store i32 %66, ptr %initial_cpb_removal_delay70, align 8
  %68 = load ptr, ptr %rc56, align 16
  %initial_cpb_removal_delay_offset = getelementptr inbounds i8, ptr %68, i64 916
  %69 = load i32, ptr %initial_cpb_removal_delay_offset, align 4
  %70 = load ptr, ptr %rc57, align 16
  %initial_cpb_removal_delay_offset73 = getelementptr inbounds i8, ptr %70, i64 916
  store i32 %69, ptr %initial_cpb_removal_delay_offset73, align 4
  %71 = load ptr, ptr %rc56, align 16
  %nrt_first_access_unit = getelementptr inbounds i8, ptr %71, i64 920
  %72 = load double, ptr %nrt_first_access_unit, align 8
  %73 = load ptr, ptr %rc57, align 16
  %nrt_first_access_unit76 = getelementptr inbounds i8, ptr %73, i64 920
  store double %72, ptr %nrt_first_access_unit76, align 8
  %74 = load ptr, ptr %rc56, align 16
  %previous_cpb_final_arrival_time = getelementptr inbounds i8, ptr %74, i64 928
  %75 = load double, ptr %previous_cpb_final_arrival_time, align 8
  %76 = load ptr, ptr %rc57, align 16
  %previous_cpb_final_arrival_time79 = getelementptr inbounds i8, ptr %76, i64 928
  store double %75, ptr %previous_cpb_final_arrival_time79, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then55, %if.end
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #14

declare i32 @x264_param_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log2(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare i32 @x264_rc_analyse_slice(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc double @clip_qscale(ptr nocapture noundef readonly %h, i32 noundef %pict_type, double noundef %q) unnamed_addr #0 {
entry:
  %frame_q = alloca [3 x double], align 16
  %rc = getelementptr inbounds i8, ptr %h, i64 26704
  %0 = load ptr, ptr %rc, align 16
  %lmin1 = getelementptr inbounds i8, ptr %0, i64 400
  %idxprom = sext i32 %pict_type to i64
  %arrayidx = getelementptr inbounds [5 x double], ptr %lmin1, i64 0, i64 %idxprom
  %1 = load double, ptr %arrayidx, align 8
  %lmax2 = getelementptr inbounds i8, ptr %0, i64 440
  %arrayidx4 = getelementptr inbounds [5 x double], ptr %lmax2, i64 0, i64 %idxprom
  %2 = load double, ptr %arrayidx4, align 8
  %rate_factor_max_increment = getelementptr inbounds i8, ptr %0, i64 160
  %3 = load double, ptr %rate_factor_max_increment, align 8
  %tobool = fcmp une double %3, 0.000000e+00
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %qp_novbv = getelementptr inbounds i8, ptr %0, i64 96
  %4 = load float, ptr %qp_novbv, align 8
  %conv = fpext float %4 to double
  %add = fadd double %3, %conv
  %sub.i = fadd double %add, -1.200000e+01
  %div.i = fdiv double %sub.i, 6.000000e+00
  %exp2.i = tail call double @exp2(double %div.i) #16
  %mul.i = fmul double %exp2.i, 8.500000e-01
  %cmp = fcmp olt double %2, %mul.i
  br i1 %cmp, label %if.end, label %cond.false

cond.false:                                       ; preds = %if.then
  %5 = load float, ptr %qp_novbv, align 8
  %conv8 = fpext float %5 to double
  %6 = load double, ptr %rate_factor_max_increment, align 8
  %add10 = fadd double %6, %conv8
  %sub.i542 = fadd double %add10, -1.200000e+01
  %div.i543 = fdiv double %sub.i542, 6.000000e+00
  %exp2.i544 = tail call double @exp2(double %div.i543) #16
  %mul.i545 = fmul double %exp2.i544, 8.500000e-01
  br label %if.end

if.end:                                           ; preds = %cond.false, %if.then, %entry
  %lmax.0 = phi double [ %2, %entry ], [ %mul.i545, %cond.false ], [ %2, %if.then ]
  %b_vbv = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load i32, ptr %b_vbv, align 8
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %if.end338, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %last_satd = getelementptr inbounds i8, ptr %0, i64 168
  %8 = load i32, ptr %last_satd, align 8
  %cmp13 = icmp sgt i32 %8, 0
  br i1 %cmp13, label %if.then15, label %if.end338

if.then15:                                        ; preds = %land.lhs.true
  %i_lookahead = getelementptr inbounds i8, ptr %h, i64 556
  %9 = load i32, ptr %i_lookahead, align 4
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then15
  %pred = getelementptr inbounds i8, ptr %0, i64 144
  %10 = load ptr, ptr %pred, align 8
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %11 = load i32, ptr %i_type, align 16
  %idxprom23 = sext i32 %11 to i64
  %arrayidx24 = getelementptr inbounds %struct.predictor_t, ptr %10, i64 %idxprom23
  %conv26 = uitofp nneg i32 %8 to double
  %12 = load double, ptr %arrayidx24, align 8
  %offset.i = getelementptr inbounds i8, ptr %arrayidx24, i64 24
  %13 = load double, ptr %offset.i, align 8
  %14 = tail call double @llvm.fmuladd.f64(double %12, double %conv26, double %13)
  %count.i = getelementptr inbounds i8, ptr %arrayidx24, i64 8
  %15 = load double, ptr %count.i, align 8
  %buffer_fill = getelementptr inbounds i8, ptr %0, i64 120
  %16 = load double, ptr %buffer_fill, align 8
  %cmp30 = icmp eq i32 %11, 2
  %f_ip_factor = getelementptr inbounds i8, ptr %h, i64 536
  %f_pb_factor = getelementptr inbounds i8, ptr %h, i64 540
  %17 = load float, ptr %f_pb_factor, align 4
  %conv43 = fpext float %17 to double
  %arrayidx45 = getelementptr inbounds i8, ptr %frame_q, i64 8
  %18 = load float, ptr %f_ip_factor, align 8
  %conv50 = fpext float %18 to double
  %arrayidx51 = getelementptr inbounds i8, ptr %frame_q, i64 16
  %buffer_size = getelementptr inbounds i8, ptr %0, i64 104
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %vbv_max_rate = getelementptr inbounds i8, ptr %0, i64 136
  %19 = load double, ptr %vbv_max_rate, align 8
  %20 = load double, ptr %buffer_size, align 8
  %mul109 = fmul double %20, 5.000000e-01
  %mul132 = fmul double %20, 8.000000e-01
  %b_vbv_min_rate = getelementptr inbounds i8, ptr %0, i64 12
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc149
  %q.addr.0598 = phi double [ %q, %for.cond.preheader ], [ %q.addr.1.ph, %for.inc149 ]
  %terminate.0597 = phi i32 [ 0, %for.cond.preheader ], [ %or, %for.inc149 ]
  %iterations.0596 = phi i32 [ 0, %for.cond.preheader ], [ %inc150, %for.inc149 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %frame_q) #16
  %mul.i546 = fmul double %q.addr.0598, %15
  %div.i547 = fdiv double %14, %mul.i546
  %sub = fsub double %16, %div.i547
  %mul = fmul double %q.addr.0598, %conv50
  %cond38 = select i1 %cmp30, double %mul, double %q.addr.0598
  store double %cond38, ptr %frame_q, align 16
  %mul44 = fmul double %cond38, %conv43
  store double %mul44, ptr %arrayidx45, align 8
  %div = fdiv double %cond38, %conv50
  store double %div, ptr %arrayidx51, align 16
  %cmp53587 = fcmp ult double %sub, 0.000000e+00
  br i1 %cmp53587, label %cleanup103, label %land.rhs55

land.rhs55:                                       ; preds = %for.body, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ]
  %buffer_fill_cur.0590 = phi double [ %sub101, %for.inc ], [ %sub, %for.body ]
  %total_duration.0588 = phi double [ %add63, %for.inc ], [ 0.000000e+00, %for.body ]
  %cmp56 = fcmp ugt double %buffer_fill_cur.0590, %20
  br i1 %cmp56, label %cleanup103, label %for.body60

for.body60:                                       ; preds = %land.rhs55
  %21 = load ptr, ptr %fenc, align 8
  %f_planned_cpb_duration = getelementptr inbounds i8, ptr %21, i64 13576
  %arrayidx62 = getelementptr inbounds [251 x double], ptr %f_planned_cpb_duration, i64 0, i64 %indvars.iv
  %22 = load double, ptr %arrayidx62, align 8
  %add63 = fadd double %total_duration.0588, %22
  %23 = tail call double @llvm.fmuladd.f64(double %19, double %22, double %buffer_fill_cur.0590)
  %i_planned_type = getelementptr inbounds i8, ptr %21, i64 12320
  %arrayidx72 = getelementptr inbounds [251 x i8], ptr %i_planned_type, i64 0, i64 %indvars.iv
  %24 = load i8, ptr %arrayidx72, align 1
  %cmp77.not = icmp eq i8 %24, 0
  br i1 %cmp77.not, label %cleanup103, label %for.inc

for.inc:                                          ; preds = %for.body60
  %i_planned_satd = getelementptr inbounds i8, ptr %21, i64 12572
  %arrayidx76 = getelementptr inbounds [251 x i32], ptr %i_planned_satd, i64 0, i64 %indvars.iv
  %25 = load i32, ptr %arrayidx76, align 4
  %or.cond = icmp ult i8 %24, 3
  %26 = and i8 %24, -2
  %27 = icmp eq i8 %26, 4
  %cond91 = zext i1 %27 to i64
  %cond93 = select i1 %or.cond, i64 2, i64 %cond91
  %arrayidx96 = getelementptr inbounds %struct.predictor_t, ptr %10, i64 %cond93
  %arrayidx98 = getelementptr inbounds [3 x double], ptr %frame_q, i64 0, i64 %cond93
  %28 = load double, ptr %arrayidx98, align 8
  %conv99 = sitofp i32 %25 to double
  %29 = load double, ptr %arrayidx96, align 8
  %offset.i548 = getelementptr inbounds i8, ptr %arrayidx96, i64 24
  %30 = load double, ptr %offset.i548, align 8
  %31 = tail call double @llvm.fmuladd.f64(double %29, double %conv99, double %30)
  %count.i549 = getelementptr inbounds i8, ptr %arrayidx96, i64 8
  %32 = load double, ptr %count.i549, align 8
  %mul.i550 = fmul double %28, %32
  %div.i551 = fdiv double %31, %mul.i550
  %sub101 = fsub double %23, %div.i551
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp53 = fcmp ult double %sub101, 0.000000e+00
  br i1 %cmp53, label %cleanup103, label %land.rhs55

cleanup103:                                       ; preds = %for.inc, %land.rhs55, %for.body60, %for.body
  %total_duration.1 = phi double [ 0.000000e+00, %for.body ], [ %add63, %for.body60 ], [ %total_duration.0588, %land.rhs55 ], [ %add63, %for.inc ]
  %buffer_fill_cur.2 = phi double [ %sub, %for.body ], [ %23, %for.body60 ], [ %buffer_fill_cur.0590, %land.rhs55 ], [ %sub101, %for.inc ]
  %mul106 = fmul double %total_duration.1, %19
  %33 = tail call double @llvm.fmuladd.f64(double %mul106, double 5.000000e-01, double %16)
  %cmp110 = fcmp olt double %33, %mul109
  %.mul109 = select i1 %cmp110, double %33, double %mul109
  %cmp122 = fcmp olt double %buffer_fill_cur.2, %.mul109
  br i1 %cmp122, label %if.then124, label %if.end126

if.then124:                                       ; preds = %cleanup103
  %mul125 = fmul double %q.addr.0598, 1.010000e+00
  br label %for.inc149

if.end126:                                        ; preds = %cleanup103
  %34 = fneg double %total_duration.1
  %neg = fmul double %19, %34
  %35 = tail call double @llvm.fmuladd.f64(double %neg, double 5.000000e-01, double %16)
  %cmp.i = fcmp olt double %35, %mul132
  %cmp1.i = fcmp ogt double %35, %20
  %cond.i = select i1 %cmp1.i, double %20, double %35
  %cond5.i = select i1 %cmp.i, double %mul132, double %cond.i
  %36 = load i32, ptr %b_vbv_min_rate, align 4
  %tobool135.not = icmp ne i32 %36, 0
  %cmp137 = fcmp ogt double %buffer_fill_cur.2, %cond5.i
  %or.cond541 = select i1 %tobool135.not, i1 %cmp137, i1 false
  br i1 %or.cond541, label %if.then139, label %cleanup143

if.then139:                                       ; preds = %if.end126
  %div140 = fdiv double %q.addr.0598, 1.010000e+00
  br label %for.inc149

cleanup143:                                       ; preds = %if.end126
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %frame_q) #16
  br label %if.end225

for.inc149:                                       ; preds = %if.then124, %if.then139
  %.sink = phi i32 [ 1, %if.then124 ], [ 2, %if.then139 ]
  %q.addr.1.ph = phi double [ %mul125, %if.then124 ], [ %div140, %if.then139 ]
  %or = or i32 %terminate.0597, %.sink
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %frame_q) #16
  %inc150 = add nuw nsw i32 %iterations.0596, 1
  %cmp19 = icmp ult i32 %iterations.0596, 999
  %cmp21 = icmp ne i32 %or, 3
  %37 = select i1 %cmp19, i1 %cmp21, i1 false
  br i1 %37, label %for.body, label %if.end225

if.else:                                          ; preds = %if.then15
  switch i32 %pict_type, label %if.end174 [
    i32 0, label %land.lhs.true161
    i32 2, label %land.lhs.true158
  ]

land.lhs.true158:                                 ; preds = %if.else
  %last_non_b_pict_type = getelementptr inbounds i8, ptr %0, i64 368
  %38 = load i32, ptr %last_non_b_pict_type, align 8
  %cmp159 = icmp eq i32 %38, 2
  br i1 %cmp159, label %land.lhs.true161, label %if.end174

land.lhs.true161:                                 ; preds = %if.else, %land.lhs.true158
  %buffer_fill162 = getelementptr inbounds i8, ptr %0, i64 120
  %39 = load double, ptr %buffer_fill162, align 8
  %buffer_size163 = getelementptr inbounds i8, ptr %0, i64 104
  %40 = load double, ptr %buffer_size163, align 8
  %div164 = fdiv double %39, %40
  %cmp165 = fcmp olt double %div164, 5.000000e-01
  br i1 %cmp165, label %if.then167, label %if.end174

if.then167:                                       ; preds = %land.lhs.true161
  %mul169 = fmul double %39, 2.000000e+00
  %div171 = fdiv double %mul169, %40
  %cmp.i552 = fcmp olt double %div171, 5.000000e-01
  %cmp1.i553 = fcmp ogt double %div171, 1.000000e+00
  %cond.i554 = select i1 %cmp1.i553, double 1.000000e+00, double %div171
  %cond5.i555 = select i1 %cmp.i552, double 5.000000e-01, double %cond.i554
  %div173 = fdiv double %q, %cond5.i555
  br label %if.end174

if.end174:                                        ; preds = %if.else, %if.then167, %land.lhs.true161, %land.lhs.true158
  %q.addr.3 = phi double [ %div173, %if.then167 ], [ %q, %land.lhs.true161 ], [ %q, %land.lhs.true158 ], [ %q, %if.else ]
  %pred175 = getelementptr inbounds i8, ptr %0, i64 144
  %41 = load ptr, ptr %pred175, align 8
  %i_type177 = getelementptr inbounds i8, ptr %h, i64 7248
  %42 = load i32, ptr %i_type177, align 16
  %idxprom178 = sext i32 %42 to i64
  %arrayidx179 = getelementptr inbounds %struct.predictor_t, ptr %41, i64 %idxprom178
  %conv181 = uitofp nneg i32 %8 to double
  %43 = load double, ptr %arrayidx179, align 8
  %offset.i556 = getelementptr inbounds i8, ptr %arrayidx179, i64 24
  %44 = load double, ptr %offset.i556, align 8
  %45 = tail call double @llvm.fmuladd.f64(double %43, double %conv181, double %44)
  %count.i557 = getelementptr inbounds i8, ptr %arrayidx179, i64 8
  %46 = load double, ptr %count.i557, align 8
  %mul.i558 = fmul double %q.addr.3, %46
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %h, i64 528
  %47 = load i32, ptr %i_vbv_buffer_size, align 8
  %conv185 = sitofp i32 %47 to double
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %h, i64 524
  %48 = load i32, ptr %i_vbv_max_bitrate, align 4
  %mul188 = mul nsw i32 %48, 5
  %conv189 = sitofp i32 %mul188 to double
  %fps = getelementptr inbounds i8, ptr %0, i64 16
  %49 = load double, ptr %fps, align 8
  %div190 = fdiv double %conv189, %49
  %cmp191 = fcmp ole double %div190, %conv185
  %conv194 = select i1 %cmp191, double 2.000000e+00, double 1.000000e+00
  %single_frame_vbv = getelementptr inbounds i8, ptr %0, i64 152
  %50 = load i32, ptr %single_frame_vbv, align 8
  %tobool195.not = icmp eq i32 %50, 0
  %cond196 = select i1 %tobool195.not, i32 2, i32 1
  %conv197 = uitofp nneg i32 %cond196 to double
  %buffer_fill198 = getelementptr inbounds i8, ptr %0, i64 120
  %51 = load double, ptr %buffer_fill198, align 8
  %52 = insertelement <2 x double> poison, double %45, i64 0
  %53 = insertelement <2 x double> %52, double %51, i64 1
  %54 = insertelement <2 x double> poison, double %mul.i558, i64 0
  %55 = insertelement <2 x double> %54, double %conv194, i64 1
  %56 = fdiv <2 x double> %53, %55
  %57 = extractelement <2 x double> %56, i64 0
  %58 = extractelement <2 x double> %56, i64 1
  %cmp200 = fcmp ogt double %57, %58
  br i1 %cmp200, label %if.then202, label %if.end207

if.then202:                                       ; preds = %if.end174
  %mul204 = fmul double %57, %conv194
  %div205 = fdiv double %51, %mul204
  %cmp.i560 = fcmp olt double %div205, 2.000000e-01
  %cmp1.i561 = fcmp ogt double %div205, 1.000000e+00
  %cond.i562 = select i1 %cmp1.i561, double 1.000000e+00, double %div205
  %cond5.i563 = select i1 %cmp.i560, double 2.000000e-01, double %cond.i562
  br label %if.end207

if.end207:                                        ; preds = %if.then202, %if.end174
  %qf.0 = phi double [ %cond5.i563, %if.then202 ], [ 1.000000e+00, %if.end174 ]
  %mul209 = fmul double %57, %qf.0
  %buffer_rate = getelementptr inbounds i8, ptr %0, i64 128
  %59 = load double, ptr %buffer_rate, align 8
  %div210 = fdiv double %59, %conv197
  %cmp211 = fcmp olt double %mul209, %div210
  %mul214 = fmul double %mul209, %conv197
  %60 = insertelement <2 x double> poison, double %q.addr.3, i64 0
  %61 = insertelement <2 x double> %60, double %mul214, i64 1
  %62 = insertelement <2 x double> poison, double %qf.0, i64 0
  %63 = insertelement <2 x double> %62, double %59, i64 1
  %64 = fdiv <2 x double> %61, %63
  %65 = extractelement <2 x double> %64, i64 0
  %shift = shufflevector <2 x double> %64, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %66 = fmul <2 x double> %64, %shift
  %mul217 = extractelement <2 x double> %66, i64 0
  %q.addr.4 = select i1 %cmp211, double %mul217, double %65
  %cmp219 = fcmp olt double %q.addr.4, %q
  %cond224 = select i1 %cmp219, double %q, double %q.addr.4
  %.pre608 = uitofp nneg i32 %8 to double
  %.pre609 = tail call double @llvm.fmuladd.f64(double %43, double %.pre608, double %44)
  br label %if.end225

if.end225:                                        ; preds = %for.inc149, %cleanup143, %if.end207
  %.pre-phi = phi double [ %14, %cleanup143 ], [ %.pre609, %if.end207 ], [ %14, %for.inc149 ]
  %conv233.pre-phi = phi double [ %conv26, %cleanup143 ], [ %.pre608, %if.end207 ], [ %conv26, %for.inc149 ]
  %67 = phi double [ %16, %cleanup143 ], [ %51, %if.end207 ], [ %16, %for.inc149 ]
  %68 = phi double [ %15, %cleanup143 ], [ %46, %if.end207 ], [ %15, %for.inc149 ]
  %69 = phi i32 [ %11, %cleanup143 ], [ %42, %if.end207 ], [ %11, %for.inc149 ]
  %q.addr.5 = phi double [ %q.addr.0598, %cleanup143 ], [ %cond224, %if.end207 ], [ %q.addr.1.ph, %for.inc149 ]
  %mul.i566 = fmul double %q.addr.5, %68
  %div.i567 = fdiv double %.pre-phi, %mul.i566
  %frame_size_maximum = getelementptr inbounds i8, ptr %0, i64 512
  %70 = load double, ptr %frame_size_maximum, align 8
  %cmp235 = fcmp ogt double %div.i567, %70
  %div239 = fdiv double %div.i567, %70
  %mul240 = fmul double %q.addr.5, %div239
  %q.addr.6 = select i1 %cmp235, double %mul240, double %q.addr.5
  %mul.i570 = fmul double %68, %q.addr.6
  %div.i571 = fdiv double %.pre-phi, %mul.i570
  %cmp252 = icmp eq i32 %69, 0
  br i1 %cmp252, label %land.lhs.true254, label %if.end327

land.lhs.true254:                                 ; preds = %if.end225
  %single_frame_vbv255 = getelementptr inbounds i8, ptr %0, i64 152
  %71 = load i32, ptr %single_frame_vbv255, align 8
  %tobool256.not = icmp eq i32 %71, 0
  br i1 %tobool256.not, label %if.then257, label %if.end327

if.then257:                                       ; preds = %land.lhs.true254
  %bframes = getelementptr inbounds i8, ptr %0, i64 880
  %72 = load i32, ptr %bframes, align 8
  %pred_b_from_p = getelementptr inbounds i8, ptr %0, i64 872
  %73 = load ptr, ptr %pred_b_from_p, align 8
  %f_pb_factor260 = getelementptr inbounds i8, ptr %h, i64 540
  %74 = load float, ptr %f_pb_factor260, align 4
  %conv261 = fpext float %74 to double
  %mul262 = fmul double %q.addr.6, %conv261
  %75 = load double, ptr %73, align 8
  %offset.i572 = getelementptr inbounds i8, ptr %73, i64 24
  %76 = load double, ptr %offset.i572, align 8
  %77 = tail call double @llvm.fmuladd.f64(double %75, double %conv233.pre-phi, double %76)
  %count.i573 = getelementptr inbounds i8, ptr %73, i64 8
  %78 = load double, ptr %count.i573, align 8
  %mul.i574 = fmul double %mul262, %78
  %div.i575 = fdiv double %77, %mul.i574
  %cmp267599 = icmp sgt i32 %72, 0
  %fenc271 = getelementptr inbounds i8, ptr %h, i64 14680
  %79 = load ptr, ptr %fenc271, align 8
  br i1 %cmp267599, label %for.body270.lr.ph, label %for.cond.cleanup269

for.body270.lr.ph:                                ; preds = %if.then257
  %f_planned_cpb_duration272 = getelementptr inbounds i8, ptr %79, i64 13576
  %wide.trip.count = zext nneg i32 %72 to i64
  %xtraiter = and i64 %wide.trip.count, 7
  %80 = icmp ult i32 %72, 8
  br i1 %80, label %for.cond.cleanup269.loopexit.unr-lcssa, label %for.body270.lr.ph.new

for.body270.lr.ph.new:                            ; preds = %for.body270.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %for.body270

for.cond.cleanup269.loopexit.unr-lcssa:           ; preds = %for.body270, %for.body270.lr.ph
  %add276.lcssa.ph = phi double [ poison, %for.body270.lr.ph ], [ %add276.7, %for.body270 ]
  %indvars.iv605.unr = phi i64 [ 0, %for.body270.lr.ph ], [ %indvars.iv.next606.7, %for.body270 ]
  %bframe_cpb_duration.0600.unr = phi double [ 0.000000e+00, %for.body270.lr.ph ], [ %add276.7, %for.body270 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup269, label %for.body270.epil

for.body270.epil:                                 ; preds = %for.cond.cleanup269.loopexit.unr-lcssa, %for.body270.epil
  %indvars.iv605.epil = phi i64 [ %indvars.iv.next606.epil, %for.body270.epil ], [ %indvars.iv605.unr, %for.cond.cleanup269.loopexit.unr-lcssa ]
  %bframe_cpb_duration.0600.epil = phi double [ %add276.epil, %for.body270.epil ], [ %bframe_cpb_duration.0600.unr, %for.cond.cleanup269.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body270.epil ], [ 0, %for.cond.cleanup269.loopexit.unr-lcssa ]
  %indvars.iv.next606.epil = add nuw nsw i64 %indvars.iv605.epil, 1
  %arrayidx275.epil = getelementptr inbounds [251 x double], ptr %f_planned_cpb_duration272, i64 0, i64 %indvars.iv.next606.epil
  %81 = load double, ptr %arrayidx275.epil, align 8
  %add276.epil = fadd double %bframe_cpb_duration.0600.epil, %81
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup269, label %for.body270.epil, !llvm.loop !31

for.cond.cleanup269:                              ; preds = %for.cond.cleanup269.loopexit.unr-lcssa, %for.body270.epil, %if.then257
  %bframe_cpb_duration.0.lcssa = phi double [ 0.000000e+00, %if.then257 ], [ %add276.lcssa.ph, %for.cond.cleanup269.loopexit.unr-lcssa ], [ %add276.epil, %for.body270.epil ]
  %conv281 = sitofp i32 %72 to double
  %mul282 = fmul double %div.i575, %conv281
  %vbv_max_rate283 = getelementptr inbounds i8, ptr %0, i64 136
  %82 = load double, ptr %vbv_max_rate283, align 8
  %mul284 = fmul double %bframe_cpb_duration.0.lcssa, %82
  %cmp285 = fcmp ogt double %mul282, %mul284
  %conv289 = select i1 %cmp285, double 0.000000e+00, double %conv281
  %83 = tail call double @llvm.fmuladd.f64(double %conv289, double %div.i575, double %div.i571)
  %f_planned_cpb_duration292 = getelementptr inbounds i8, ptr %79, i64 13576
  %84 = load double, ptr %f_planned_cpb_duration292, align 8
  %add294 = fadd double %bframe_cpb_duration.0.lcssa, %84
  %85 = tail call double @llvm.fmuladd.f64(double %add294, double %82, double %67)
  %buffer_size298 = getelementptr inbounds i8, ptr %0, i64 104
  %86 = load double, ptr %buffer_size298, align 8
  %sub299 = fsub double %85, %86
  %cmp300 = fcmp olt double %83, %sub299
  br i1 %cmp300, label %if.then302, label %if.end318

for.body270:                                      ; preds = %for.body270, %for.body270.lr.ph.new
  %indvars.iv605 = phi i64 [ 0, %for.body270.lr.ph.new ], [ %indvars.iv.next606.7, %for.body270 ]
  %bframe_cpb_duration.0600 = phi double [ 0.000000e+00, %for.body270.lr.ph.new ], [ %add276.7, %for.body270 ]
  %niter = phi i64 [ 0, %for.body270.lr.ph.new ], [ %niter.next.7, %for.body270 ]
  %indvars.iv.next606 = or disjoint i64 %indvars.iv605, 1
  %arrayidx275 = getelementptr inbounds [251 x double], ptr %f_planned_cpb_duration272, i64 0, i64 %indvars.iv.next606
  %87 = load double, ptr %arrayidx275, align 8
  %add276 = fadd double %bframe_cpb_duration.0600, %87
  %indvars.iv.next606.1 = or disjoint i64 %indvars.iv605, 2
  %arrayidx275.1 = getelementptr inbounds [251 x double], ptr %f_planned_cpb_duration272, i64 0, i64 %indvars.iv.next606.1
  %88 = load double, ptr %arrayidx275.1, align 8
  %add276.1 = fadd double %add276, %88
  %indvars.iv.next606.2 = or disjoint i64 %indvars.iv605, 3
  %arrayidx275.2 = getelementptr inbounds [251 x double], ptr %f_planned_cpb_duration272, i64 0, i64 %indvars.iv.next606.2
  %89 = load double, ptr %arrayidx275.2, align 8
  %add276.2 = fadd double %add276.1, %89
  %indvars.iv.next606.3 = or disjoint i64 %indvars.iv605, 4
  %arrayidx275.3 = getelementptr inbounds [251 x double], ptr %f_planned_cpb_duration272, i64 0, i64 %indvars.iv.next606.3
  %90 = load double, ptr %arrayidx275.3, align 8
  %add276.3 = fadd double %add276.2, %90
  %indvars.iv.next606.4 = or disjoint i64 %indvars.iv605, 5
  %arrayidx275.4 = getelementptr inbounds [251 x double], ptr %f_planned_cpb_duration272, i64 0, i64 %indvars.iv.next606.4
  %91 = load double, ptr %arrayidx275.4, align 8
  %add276.4 = fadd double %add276.3, %91
  %indvars.iv.next606.5 = or disjoint i64 %indvars.iv605, 6
  %arrayidx275.5 = getelementptr inbounds [251 x double], ptr %f_planned_cpb_duration272, i64 0, i64 %indvars.iv.next606.5
  %92 = load double, ptr %arrayidx275.5, align 8
  %add276.5 = fadd double %add276.4, %92
  %indvars.iv.next606.6 = or disjoint i64 %indvars.iv605, 7
  %arrayidx275.6 = getelementptr inbounds [251 x double], ptr %f_planned_cpb_duration272, i64 0, i64 %indvars.iv.next606.6
  %93 = load double, ptr %arrayidx275.6, align 8
  %add276.6 = fadd double %add276.5, %93
  %indvars.iv.next606.7 = add nuw nsw i64 %indvars.iv605, 8
  %arrayidx275.7 = getelementptr inbounds [251 x double], ptr %f_planned_cpb_duration272, i64 0, i64 %indvars.iv.next606.7
  %94 = load double, ptr %arrayidx275.7, align 8
  %add276.7 = fadd double %add276.6, %94
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.cond.cleanup269.loopexit.unr-lcssa, label %for.body270

if.then302:                                       ; preds = %for.cond.cleanup269
  %mul305 = fmul double %86, 5.000000e-01
  %95 = insertelement <2 x double> poison, double %83, i64 0
  %96 = insertelement <2 x double> %95, double %div.i571, i64 1
  %97 = insertelement <2 x double> poison, double %sub299, i64 0
  %98 = insertelement <2 x double> %97, double %mul305, i64 1
  %99 = fdiv <2 x double> %96, %98
  %100 = extractelement <2 x double> %99, i64 0
  %101 = extractelement <2 x double> %99, i64 1
  %cmp307 = fcmp ogt double %100, %101
  %div303.div306 = select i1 %cmp307, double %100, double %101
  %mul317 = fmul double %q.addr.6, %div303.div306
  br label %if.end318

if.end318:                                        ; preds = %if.then302, %for.cond.cleanup269
  %q.addr.7 = phi double [ %mul317, %if.then302 ], [ %q.addr.6, %for.cond.cleanup269 ]
  %sub319 = fadd double %q, -5.000000e+00
  %cmp320 = fcmp ogt double %sub319, %q.addr.7
  %cond326 = select i1 %cmp320, double %sub319, double %q.addr.7
  br label %if.end327

if.end327:                                        ; preds = %if.end318, %land.lhs.true254, %if.end225
  %q.addr.8 = phi double [ %q.addr.6, %land.lhs.true254 ], [ %cond326, %if.end318 ], [ %q.addr.6, %if.end225 ]
  %b_vbv_min_rate328 = getelementptr inbounds i8, ptr %0, i64 12
  %102 = load i32, ptr %b_vbv_min_rate328, align 4
  %tobool329.not = icmp eq i32 %102, 0
  %cmp331 = fcmp olt double %q.addr.8, %q
  %103 = select i1 %tobool329.not, i1 %cmp331, i1 false
  %q.addr.9 = select i1 %103, double %q, double %q.addr.8
  br label %if.end338

if.end338:                                        ; preds = %if.end327, %land.lhs.true, %if.end
  %q.addr.10 = phi double [ %q.addr.9, %if.end327 ], [ %q, %land.lhs.true ], [ %q, %if.end ]
  %cmp339 = fcmp oeq double %1, %lmax.0
  br i1 %cmp339, label %cleanup363, label %if.else342

if.else342:                                       ; preds = %if.end338
  %b_2pass = getelementptr inbounds i8, ptr %0, i64 4
  %104 = load i32, ptr %b_2pass, align 4
  %tobool343.not = icmp eq i32 %104, 0
  br i1 %tobool343.not, label %if.else361, label %if.then344

if.then344:                                       ; preds = %if.else342
  %call345 = tail call double @log(double noundef %1) #16
  %call346 = tail call double @log(double noundef %lmax.0) #16
  %call347 = tail call double @log(double noundef %q.addr.10) #16
  %sub348 = fsub double %call347, %call345
  %sub349 = fsub double %call346, %call345
  %div350 = fdiv double %sub348, %sub349
  %sub351 = fadd double %div350, -5.000000e-01
  %mul352 = fmul double %sub351, -4.000000e+00
  %call353 = tail call double @exp(double noundef %mul352) #16
  %add354 = fadd double %call353, 1.000000e+00
  %div355 = fdiv double 1.000000e+00, %add354
  %105 = tail call double @llvm.fmuladd.f64(double %div355, double %sub349, double %call345)
  %call358 = tail call double @exp(double noundef %105) #16
  br label %cleanup363

if.else361:                                       ; preds = %if.else342
  %cmp.i576 = fcmp olt double %q.addr.10, %1
  %cmp1.i577 = fcmp ogt double %q.addr.10, %lmax.0
  %cond.i578 = select i1 %cmp1.i577, double %lmax.0, double %q.addr.10
  %cond5.i579 = select i1 %cmp.i576, double %1, double %cond.i578
  br label %cleanup363

cleanup363:                                       ; preds = %if.end338, %if.else361, %if.then344
  %retval.0 = phi double [ %call358, %if.then344 ], [ %cond5.i579, %if.else361 ], [ %1, %if.end338 ]
  ret double %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #15

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unswitch.partial.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !16, !17}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !16, !17}
!26 = distinct !{!26, !17, !16}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !16, !17}
!30 = distinct !{!30, !17, !16}
!31 = distinct !{!31, !9}
