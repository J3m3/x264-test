; ModuleID = 'x264_src/common/common.c'
source_filename = "x264_src/common/common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_cpu_name_t = type { [16 x i8], i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"x264_2pass.log\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"baseline profile doesn't support interlacing\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"baseline profile doesn't support fake interlacing\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"invalid profile: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"%s profile doesn't support lossless\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c",\00", align 1
@x264_cpu_names = external constant [0 x %struct.x264_cpu_name_t], align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"sliced-threads\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"sync-lookahead\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"deterministic\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"n-deterministic\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"level-idc\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1
@x264_overscan_names = internal constant [4 x ptr] [ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr null], align 16
@.str.26 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1
@x264_vidformat_names = internal constant [7 x ptr] [ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.235, ptr null], align 16
@.str.27 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1
@x264_fullrange_names = internal constant [3 x ptr] [ptr @.str.243, ptr @.str.244, ptr null], align 16
@.str.28 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1
@x264_colorprim_names = internal constant [10 x ptr] [ptr @.str.245, ptr @.str.246, ptr @.str.235, ptr @.str.245, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.224, ptr null], align 16
@.str.29 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@x264_transfer_names = internal constant [12 x ptr] [ptr @.str.245, ptr @.str.246, ptr @.str.235, ptr @.str.245, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr null], align 16
@.str.30 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1
@x264_colmatrix_names = internal constant [10 x ptr] [ptr @.str.254, ptr @.str.246, ptr @.str.235, ptr @.str.245, ptr @.str.255, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.256, ptr null], align 16
@.str.31 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"%u/%u\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"frameref\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"keyint-min\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"intra-refresh\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1
@x264_b_pyramid_names = internal constant [4 x ptr] [ptr @.str.77, ptr @.str.257, ptr @.str.258, ptr null], align 16
@.str.46 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"slice-max-size\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"slice-max-mbs\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"slices\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"cabac\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"cabac-idc\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"tff\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"bff\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"constrained-intra\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"jvt\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"i4x4\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"i8x8\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"p8x8\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"p4x4\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"b8x8\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"weight-b\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"weightp\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"direct-pred\00", align 1
@x264_direct_pred_names = internal constant [5 x ptr] [ptr @.str.77, ptr @.str.259, ptr @.str.260, ptr @.str.13, ptr null], align 16
@.str.90 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1
@x264_motion_est_names = internal constant [6 x ptr] [ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr null], align 16
@.str.92 = private unnamed_addr constant [8 x i8] c"merange\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"me-range\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"mv-range\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"mv-range-thread\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"subme\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"subq\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"%f:%f\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"%f,%f\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"%f|%f\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"psy\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"chroma-me\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"fast-pskip\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"dct-decimate\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"qp_constant\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"crf-max\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"rc-lookahead\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"qp-min\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"qp-max\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"qp-step\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"ip-factor\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"pb-factor\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"mbtree\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"cplx-blur\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"zones\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"psnr\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"ssim\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"global-header\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"repeat-headers\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"annexb\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"force-cfr\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"nal-hrd\00", align 1
@x264_nal_hrd_names = internal constant [4 x ptr] [ptr @.str.77, ptr @.str.266, ptr @.str.195, ptr null], align 16
@.str.154 = private unnamed_addr constant [11 x i8] c"pic-struct\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"fake-interlaced\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"malloc of size %d failed\0A\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"%dx%d \00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"fps=%u/%u \00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"timebase=%u/%u \00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"cabac=%d\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c" ref=%d\00", align 1
@.str.163 = private unnamed_addr constant [18 x i8] c" deblock=%d:%d:%d\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c" analyse=%#x:%#x\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c" me=%s\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c" subme=%d\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c" psy=%d\00", align 1
@.str.168 = private unnamed_addr constant [18 x i8] c" psy_rd=%.2f:%.2f\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c" mixed_ref=%d\00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c" me_range=%d\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c" chroma_me=%d\00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c" trellis=%d\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c" 8x8dct=%d\00", align 1
@.str.174 = private unnamed_addr constant [8 x i8] c" cqm=%d\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c" deadzone=%d,%d\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c" fast_pskip=%d\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c" chroma_qp_offset=%d\00", align 1
@.str.178 = private unnamed_addr constant [12 x i8] c" threads=%d\00", align 1
@.str.179 = private unnamed_addr constant [19 x i8] c" sliced_threads=%d\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c" slices=%d\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c" slice_max_size=%d\00", align 1
@.str.182 = private unnamed_addr constant [18 x i8] c" slice_max_mbs=%d\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c" nr=%d\00", align 1
@.str.184 = private unnamed_addr constant [13 x i8] c" decimate=%d\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c" interlaced=%s\00", align 1
@.str.186 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.187 = private unnamed_addr constant [22 x i8] c" constrained_intra=%d\00", align 1
@.str.188 = private unnamed_addr constant [12 x i8] c" bframes=%d\00", align 1
@.str.189 = private unnamed_addr constant [56 x i8] c" b_pyramid=%d b_adapt=%d b_bias=%d direct=%d weightb=%d\00", align 1
@.str.190 = private unnamed_addr constant [12 x i8] c" weightp=%d\00", align 1
@.str.191 = private unnamed_addr constant [54 x i8] c" keyint=%d keyint_min=%d scenecut=%d intra_refresh=%d\00", align 1
@.str.192 = private unnamed_addr constant [17 x i8] c" rc_lookahead=%d\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c" rc=%s mbtree=%d\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"2pass\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"cbr\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"abr\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"cqp\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c" crf=%.1f\00", align 1
@.str.199 = private unnamed_addr constant [25 x i8] c" bitrate=%d ratetol=%.1f\00", align 1
@.str.200 = private unnamed_addr constant [40 x i8] c" qcomp=%.2f qpmin=%d qpmax=%d qpstep=%d\00", align 1
@.str.201 = private unnamed_addr constant [26 x i8] c" cplxblur=%.1f qblur=%.1f\00", align 1
@.str.202 = private unnamed_addr constant [31 x i8] c" vbv_maxrate=%d vbv_bufsize=%d\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c" crf_max=%.1f\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c" qp=%d\00", align 1
@.str.205 = private unnamed_addr constant [15 x i8] c" ip_ratio=%.2f\00", align 1
@.str.206 = private unnamed_addr constant [15 x i8] c" pb_ratio=%.2f\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c" aq=%d\00", align 1
@.str.208 = private unnamed_addr constant [6 x i8] c":%.2f\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c" zones=%s\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c" zones\00", align 1
@.str.211 = private unnamed_addr constant [12 x i8] c" nal_hrd=%s\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"ultrafast\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"superfast\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"veryfast\00", align 1
@.str.215 = private unnamed_addr constant [7 x i8] c"faster\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.217 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.219 = private unnamed_addr constant [7 x i8] c"slower\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"veryslow\00", align 1
@.str.221 = private unnamed_addr constant [8 x i8] c"placebo\00", align 1
@.str.222 = private unnamed_addr constant [21 x i8] c"invalid preset '%s'\0A\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c",./-+\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"animation\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"grain\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"stillimage\00", align 1
@.str.228 = private unnamed_addr constant [11 x i8] c"fastdecode\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"zerolatency\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"touhou\00", align 1
@.str.231 = private unnamed_addr constant [19 x i8] c"invalid tune '%s'\0A\00", align 1
@.str.232 = private unnamed_addr constant [49 x i8] c"only 1 psy tuning can be used: ignoring tune %s\0A\00", align 1
@.str.234 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.238 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.239 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.241 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@.str.242 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.244 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.245 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1
@.str.247 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1
@.str.248 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1
@.str.250 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1
@.str.251 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.252 = private unnamed_addr constant [7 x i8] c"log100\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"log316\00", align 1
@.str.254 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1
@.str.255 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1
@.str.256 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.259 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1
@.str.260 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1
@.str.261 = private unnamed_addr constant [4 x i8] c"dia\00", align 1
@.str.262 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.263 = private unnamed_addr constant [4 x i8] c"umh\00", align 1
@.str.264 = private unnamed_addr constant [4 x i8] c"esa\00", align 1
@.str.265 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"vbr\00", align 1
@.str.267 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.268 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.269 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.271 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.272 = private unnamed_addr constant [12 x i8] c"x264 [%s]: \00", align 1
@switch.table.x264_log = private unnamed_addr constant [4 x ptr] [ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270], align 8

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noalias noundef ptr @spec_strdup(ptr nocapture noundef readonly %str) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #23
  %conv = trunc i64 %call to i32
  %add = shl i64 %call, 32
  %sext = add i64 %add, 4294967296
  %conv1 = ashr exact i64 %sext, 32
  %call2 = tail call noalias ptr @malloc(i64 noundef %conv1) #24
  %cmp17 = icmp sgt i32 %conv, 0
  br i1 %cmp17, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %0 = and i64 %call, 2147483647
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call2, ptr align 1 %str, i64 %0, i1 false)
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body.preheader, %entry
  %idxprom6 = ashr exact i64 %add, 32
  %arrayidx7 = getelementptr inbounds i8, ptr %call2, i64 %idxprom6
  store i8 0, ptr %arrayidx7, align 1
  ret ptr %call2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_param_default(ptr noundef writeonly %param) local_unnamed_addr #4 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %param, i8 0, i64 704, i1 false)
  %call = tail call i32 @x264_cpu_detect() #25
  store i32 %call, ptr %param, align 8
  %i_threads = getelementptr inbounds i8, ptr %param, i64 4
  store i32 0, ptr %i_threads, align 4
  %b_deterministic = getelementptr inbounds i8, ptr %param, i64 12
  %i_csp = getelementptr inbounds i8, ptr %param, i64 28
  store i32 1, ptr %i_csp, align 4
  store <4 x i32> <i32 1, i32 -1, i32 0, i32 0>, ptr %b_deterministic, align 4
  %i_vidformat = getelementptr inbounds i8, ptr %param, i64 56
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %i_vidformat, align 4
  %i_colmatrix = getelementptr inbounds i8, ptr %param, i64 72
  %i_fps_num = getelementptr inbounds i8, ptr %param, i64 652
  store i32 25, ptr %i_fps_num, align 4
  %i_fps_den = getelementptr inbounds i8, ptr %param, i64 656
  store i32 1, ptr %i_fps_den, align 8
  %i_level_idc = getelementptr inbounds i8, ptr %param, i64 32
  store i32 -1, ptr %i_level_idc, align 8
  %i_slice_max_size = getelementptr inbounds i8, ptr %param, i64 684
  store i32 0, ptr %i_slice_max_size, align 4
  %i_slice_max_mbs = getelementptr inbounds i8, ptr %param, i64 688
  store i32 0, ptr %i_slice_max_mbs, align 8
  %i_slice_count = getelementptr inbounds i8, ptr %param, i64 692
  store i32 0, ptr %i_slice_count, align 4
  store <4 x i32> <i32 2, i32 0, i32 3, i32 250>, ptr %i_colmatrix, align 4
  %i_keyint_min = getelementptr inbounds i8, ptr %param, i64 88
  store i32 0, ptr %i_keyint_min, align 8
  %i_bframe = getelementptr inbounds i8, ptr %param, i64 100
  %i_scenecut_threshold = getelementptr inbounds i8, ptr %param, i64 92
  store i32 40, ptr %i_scenecut_threshold, align 4
  store <4 x i32> <i32 3, i32 1, i32 0, i32 2>, ptr %i_bframe, align 4
  %b_deblocking_filter = getelementptr inbounds i8, ptr %param, i64 116
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %b_deblocking_filter, align 4
  %i_cabac_init_idc = getelementptr inbounds i8, ptr %param, i64 132
  %rc = getelementptr inbounds i8, ptr %param, i64 488
  %i_bitrate = getelementptr inbounds i8, ptr %param, i64 508
  store i32 0, ptr %i_bitrate, align 4
  %f_rate_tolerance = getelementptr inbounds i8, ptr %param, i64 520
  store float 1.000000e+00, ptr %f_rate_tolerance, align 8
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %param, i64 524
  store i32 0, ptr %i_vbv_max_bitrate, align 4
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %param, i64 528
  store i32 0, ptr %i_vbv_buffer_size, align 8
  %f_vbv_buffer_init = getelementptr inbounds i8, ptr %param, i64 532
  %f_rf_constant = getelementptr inbounds i8, ptr %param, i64 512
  store float 2.300000e+01, ptr %f_rf_constant, align 8
  store <4 x i32> <i32 1, i32 23, i32 10, i32 51>, ptr %rc, align 8
  %i_qp_step = getelementptr inbounds i8, ptr %param, i64 504
  store i32 4, ptr %i_qp_step, align 8
  store <2 x float> <float 0x3FECCCCCC0000000, float 0x3FF6666660000000>, ptr %f_vbv_buffer_init, align 4
  %f_pb_factor = getelementptr inbounds i8, ptr %param, i64 540
  store float 0x3FF4CCCCC0000000, ptr %f_pb_factor, align 4
  %i_aq_mode = getelementptr inbounds i8, ptr %param, i64 544
  store i32 1, ptr %i_aq_mode, align 8
  %f_aq_strength = getelementptr inbounds i8, ptr %param, i64 548
  store float 1.000000e+00, ptr %f_aq_strength, align 4
  %i_lookahead = getelementptr inbounds i8, ptr %param, i64 556
  store i32 40, ptr %i_lookahead, align 4
  %b_stat_write = getelementptr inbounds i8, ptr %param, i64 560
  store i32 0, ptr %b_stat_write, align 8
  %psz_stat_out = getelementptr inbounds i8, ptr %param, i64 568
  store ptr @.str, ptr %psz_stat_out, align 8
  %b_stat_read = getelementptr inbounds i8, ptr %param, i64 576
  store i32 0, ptr %b_stat_read, align 8
  %psz_stat_in = getelementptr inbounds i8, ptr %param, i64 584
  store ptr @.str, ptr %psz_stat_in, align 8
  %f_qcompress = getelementptr inbounds i8, ptr %param, i64 592
  store <2 x float> <float 0x3FE3333340000000, float 5.000000e-01>, ptr %f_qcompress, align 8
  %f_complexity_blur = getelementptr inbounds i8, ptr %param, i64 600
  store float 2.000000e+01, ptr %f_complexity_blur, align 8
  %i_zones = getelementptr inbounds i8, ptr %param, i64 616
  store i32 0, ptr %i_zones, align 8
  %b_mb_tree = getelementptr inbounds i8, ptr %param, i64 552
  store i32 1, ptr %b_mb_tree, align 8
  %pf_log = getelementptr inbounds i8, ptr %param, i64 352
  store ptr @x264_log_default, ptr %pf_log, align 8
  %p_log_private = getelementptr inbounds i8, ptr %param, i64 360
  store ptr null, ptr %p_log_private, align 8
  %i_log_level = getelementptr inbounds i8, ptr %param, i64 368
  store i32 2, ptr %i_log_level, align 8
  %analyse = getelementptr inbounds i8, ptr %param, i64 384
  %f_psy_rd = getelementptr inbounds i8, ptr %param, i64 456
  %b_psy = getelementptr inbounds i8, ptr %param, i64 464
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %f_psy_rd, align 8
  %i_me_range = getelementptr inbounds i8, ptr %param, i64 416
  %b_chroma_me = getelementptr inbounds i8, ptr %param, i64 432
  store <4 x i32> <i32 16, i32 -1, i32 -1, i32 7>, ptr %i_me_range, align 8
  %b_weighted_bipred = getelementptr inbounds i8, ptr %param, i64 400
  store <4 x i32> <i32 1, i32 1, i32 0, i32 1>, ptr %b_weighted_bipred, align 8
  %b_dct_decimate = getelementptr inbounds i8, ptr %param, i64 448
  store i32 1, ptr %b_dct_decimate, align 8
  store <4 x i32> <i32 3, i32 275, i32 1, i32 2>, ptr %analyse, align 8
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %b_chroma_me, align 8
  store <4 x i32> <i32 1, i32 21, i32 11, i32 0>, ptr %b_psy, align 8
  %b_ssim = getelementptr inbounds i8, ptr %param, i64 480
  store i32 0, ptr %b_ssim, align 8
  store <4 x i32> zeroinitializer, ptr %i_cabac_init_idc, align 4
  %cqm_4iy = getelementptr inbounds i8, ptr %param, i64 160
  %b_repeat_headers = getelementptr inbounds i8, ptr %param, i64 636
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %cqm_4iy, i8 16, i64 192, i1 false)
  store i32 1, ptr %b_repeat_headers, align 4
  %b_annexb = getelementptr inbounds i8, ptr %param, i64 640
  store i32 1, ptr %b_annexb, align 8
  %b_aud = getelementptr inbounds i8, ptr %param, i64 632
  store i32 0, ptr %b_aud, align 8
  %b_vfr_input = getelementptr inbounds i8, ptr %param, i64 648
  store i32 1, ptr %b_vfr_input, align 8
  %b_dts_compress = getelementptr inbounds i8, ptr %param, i64 668
  %i_nal_hrd = getelementptr inbounds i8, ptr %param, i64 40
  store <4 x i32> zeroinitializer, ptr %i_nal_hrd, align 8
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %b_dts_compress, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @x264_cpu_detect() local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal void @x264_log_default(ptr nocapture readnone %p_unused, i32 noundef %i_level, ptr nocapture noundef readonly %psz_fmt, ptr noundef %arg) #7 {
entry:
  %0 = icmp ult i32 %i_level, 4
  br i1 %0, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %entry
  %1 = zext nneg i32 %i_level to i64
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.x264_log, i64 0, i64 %1
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %switch.lookup
  %psz_prefix.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.271, %entry ]
  %2 = load ptr, ptr @stderr, align 8
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.272, ptr noundef nonnull %psz_prefix.0) #26
  %3 = load ptr, ptr @stderr, align 8
  %call4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %psz_fmt, ptr noundef %arg) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_param_default_preset(ptr noundef %param, ptr noundef %preset, ptr noundef readonly %tune) local_unnamed_addr #4 {
entry:
  tail call void @x264_param_default(ptr noundef %param)
  %tobool.not = icmp eq ptr %preset, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(10) @.str.212) #23
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true
  %i_frame_reference.i = getelementptr inbounds i8, ptr %param, i64 80
  store i32 1, ptr %i_frame_reference.i, align 8
  %i_scenecut_threshold.i = getelementptr inbounds i8, ptr %param, i64 92
  store i32 0, ptr %i_scenecut_threshold.i, align 4
  %b_deblocking_filter.i = getelementptr inbounds i8, ptr %param, i64 116
  store i32 0, ptr %b_deblocking_filter.i, align 4
  %b_cabac.i = getelementptr inbounds i8, ptr %param, i64 128
  store i32 0, ptr %b_cabac.i, align 8
  %i_bframe.i = getelementptr inbounds i8, ptr %param, i64 100
  store i32 0, ptr %i_bframe.i, align 4
  %analyse.i = getelementptr inbounds i8, ptr %param, i64 384
  %i_me_method.i = getelementptr inbounds i8, ptr %param, i64 412
  store i32 0, ptr %i_me_method.i, align 4
  %i_subpel_refine.i = getelementptr inbounds i8, ptr %param, i64 428
  store i32 0, ptr %i_subpel_refine.i, align 4
  %i_aq_mode.i = getelementptr inbounds i8, ptr %param, i64 544
  store i32 0, ptr %i_aq_mode.i, align 8
  %b_mixed_references.i = getelementptr inbounds i8, ptr %param, i64 436
  store i32 0, ptr %b_mixed_references.i, align 4
  %i_trellis.i = getelementptr inbounds i8, ptr %param, i64 440
  store i32 0, ptr %i_trellis.i, align 8
  %i_bframe_adaptive.i = getelementptr inbounds i8, ptr %param, i64 104
  store i32 0, ptr %i_bframe_adaptive.i, align 8
  %b_mb_tree.i = getelementptr inbounds i8, ptr %param, i64 552
  store i32 0, ptr %b_mb_tree.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %analyse.i, i8 0, i64 16, i1 false)
  br label %if.end

if.else.i:                                        ; preds = %land.lhs.true
  %call9.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(10) @.str.213) #23
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else27.i

if.then11.i:                                      ; preds = %if.else.i
  %inter13.i = getelementptr inbounds i8, ptr %param, i64 388
  store i32 3, ptr %inter13.i, align 4
  %i_me_method15.i = getelementptr inbounds i8, ptr %param, i64 412
  store i32 0, ptr %i_me_method15.i, align 4
  %i_subpel_refine17.i = getelementptr inbounds i8, ptr %param, i64 428
  store i32 1, ptr %i_subpel_refine17.i, align 4
  %i_frame_reference18.i = getelementptr inbounds i8, ptr %param, i64 80
  store i32 1, ptr %i_frame_reference18.i, align 8
  %b_mixed_references20.i = getelementptr inbounds i8, ptr %param, i64 436
  store i32 0, ptr %b_mixed_references20.i, align 4
  %i_trellis22.i = getelementptr inbounds i8, ptr %param, i64 440
  store i32 0, ptr %i_trellis22.i, align 8
  %b_mb_tree24.i = getelementptr inbounds i8, ptr %param, i64 552
  store i32 0, ptr %b_mb_tree24.i, align 8
  %i_weighted_pred26.i = getelementptr inbounds i8, ptr %param, i64 396
  store i32 0, ptr %i_weighted_pred26.i, align 4
  br label %if.end

if.else27.i:                                      ; preds = %if.else.i
  %call28.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(9) @.str.214) #23
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.else44.i

if.then30.i:                                      ; preds = %if.else27.i
  %i_me_method32.i = getelementptr inbounds i8, ptr %param, i64 412
  store i32 1, ptr %i_me_method32.i, align 4
  %i_subpel_refine34.i = getelementptr inbounds i8, ptr %param, i64 428
  store i32 2, ptr %i_subpel_refine34.i, align 4
  %i_frame_reference35.i = getelementptr inbounds i8, ptr %param, i64 80
  store i32 1, ptr %i_frame_reference35.i, align 8
  %b_mixed_references37.i = getelementptr inbounds i8, ptr %param, i64 436
  store i32 0, ptr %b_mixed_references37.i, align 4
  %i_trellis39.i = getelementptr inbounds i8, ptr %param, i64 440
  store i32 0, ptr %i_trellis39.i, align 8
  %b_mb_tree41.i = getelementptr inbounds i8, ptr %param, i64 552
  store i32 0, ptr %b_mb_tree41.i, align 8
  %i_weighted_pred43.i = getelementptr inbounds i8, ptr %param, i64 396
  store i32 0, ptr %i_weighted_pred43.i, align 4
  br label %if.end

if.else44.i:                                      ; preds = %if.else27.i
  %call45.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(7) @.str.215) #23
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.else56.i

if.then47.i:                                      ; preds = %if.else44.i
  %b_mixed_references49.i = getelementptr inbounds i8, ptr %param, i64 436
  store i32 0, ptr %b_mixed_references49.i, align 4
  %i_frame_reference50.i = getelementptr inbounds i8, ptr %param, i64 80
  store i32 2, ptr %i_frame_reference50.i, align 8
  %i_subpel_refine52.i = getelementptr inbounds i8, ptr %param, i64 428
  store i32 4, ptr %i_subpel_refine52.i, align 4
  %i_weighted_pred54.i = getelementptr inbounds i8, ptr %param, i64 396
  store i32 1, ptr %i_weighted_pred54.i, align 4
  %i_lookahead.i = getelementptr inbounds i8, ptr %param, i64 556
  store i32 20, ptr %i_lookahead.i, align 4
  br label %if.end

if.else56.i:                                      ; preds = %if.else44.i
  %call57.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(5) @.str.216) #23
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.then59.i, label %if.else65.i

if.then59.i:                                      ; preds = %if.else56.i
  %i_frame_reference60.i = getelementptr inbounds i8, ptr %param, i64 80
  store i32 2, ptr %i_frame_reference60.i, align 8
  %i_subpel_refine62.i = getelementptr inbounds i8, ptr %param, i64 428
  store i32 6, ptr %i_subpel_refine62.i, align 4
  %i_lookahead64.i = getelementptr inbounds i8, ptr %param, i64 556
  store i32 30, ptr %i_lookahead64.i, align 4
  br label %if.end

if.else65.i:                                      ; preds = %if.else56.i
  %call66.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(7) @.str.217) #23
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end, label %if.else69.i

if.else69.i:                                      ; preds = %if.else65.i
  %call70.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(5) @.str.218) #23
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.then72.i, label %if.else82.i

if.then72.i:                                      ; preds = %if.else69.i
  %i_me_method74.i = getelementptr inbounds i8, ptr %param, i64 412
  store i32 2, ptr %i_me_method74.i, align 4
  %i_subpel_refine76.i = getelementptr inbounds i8, ptr %param, i64 428
  store i32 8, ptr %i_subpel_refine76.i, align 4
  %i_frame_reference77.i = getelementptr inbounds i8, ptr %param, i64 80
  store i32 5, ptr %i_frame_reference77.i, align 8
  %i_bframe_adaptive78.i = getelementptr inbounds i8, ptr %param, i64 104
  store i32 2, ptr %i_bframe_adaptive78.i, align 8
  %i_direct_mv_pred.i = getelementptr inbounds i8, ptr %param, i64 404
  store i32 3, ptr %i_direct_mv_pred.i, align 4
  %i_lookahead81.i = getelementptr inbounds i8, ptr %param, i64 556
  store i32 50, ptr %i_lookahead81.i, align 4
  br label %if.end

if.else82.i:                                      ; preds = %if.else69.i
  %call83.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(7) @.str.219) #23
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.then85.i, label %if.else100.i

if.then85.i:                                      ; preds = %if.else82.i
  %i_me_method87.i = getelementptr inbounds i8, ptr %param, i64 412
  store i32 2, ptr %i_me_method87.i, align 4
  %i_subpel_refine89.i = getelementptr inbounds i8, ptr %param, i64 428
  store i32 9, ptr %i_subpel_refine89.i, align 4
  %i_frame_reference90.i = getelementptr inbounds i8, ptr %param, i64 80
  store i32 8, ptr %i_frame_reference90.i, align 8
  %i_bframe_adaptive91.i = getelementptr inbounds i8, ptr %param, i64 104
  store i32 2, ptr %i_bframe_adaptive91.i, align 8
  %i_direct_mv_pred93.i = getelementptr inbounds i8, ptr %param, i64 404
  store i32 3, ptr %i_direct_mv_pred93.i, align 4
  %inter95.i = getelementptr inbounds i8, ptr %param, i64 388
  %0 = load i32, ptr %inter95.i, align 4
  %or.i = or i32 %0, 32
  store i32 %or.i, ptr %inter95.i, align 4
  %i_trellis97.i = getelementptr inbounds i8, ptr %param, i64 440
  store i32 2, ptr %i_trellis97.i, align 8
  %i_lookahead99.i = getelementptr inbounds i8, ptr %param, i64 556
  store i32 60, ptr %i_lookahead99.i, align 4
  br label %if.end

if.else100.i:                                     ; preds = %if.else82.i
  %call101.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(9) @.str.220) #23
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  br i1 %tobool102.not.i, label %if.then103.i, label %if.else121.i

if.then103.i:                                     ; preds = %if.else100.i
  %i_me_method105.i = getelementptr inbounds i8, ptr %param, i64 412
  store i32 2, ptr %i_me_method105.i, align 4
  %i_subpel_refine107.i = getelementptr inbounds i8, ptr %param, i64 428
  store i32 10, ptr %i_subpel_refine107.i, align 4
  %i_me_range.i = getelementptr inbounds i8, ptr %param, i64 416
  store i32 24, ptr %i_me_range.i, align 8
  %i_frame_reference109.i = getelementptr inbounds i8, ptr %param, i64 80
  store i32 16, ptr %i_frame_reference109.i, align 8
  %i_bframe_adaptive110.i = getelementptr inbounds i8, ptr %param, i64 104
  store i32 2, ptr %i_bframe_adaptive110.i, align 8
  %i_direct_mv_pred112.i = getelementptr inbounds i8, ptr %param, i64 404
  store i32 3, ptr %i_direct_mv_pred112.i, align 4
  %inter114.i = getelementptr inbounds i8, ptr %param, i64 388
  %1 = load i32, ptr %inter114.i, align 4
  %or115.i = or i32 %1, 32
  store i32 %or115.i, ptr %inter114.i, align 4
  %i_trellis117.i = getelementptr inbounds i8, ptr %param, i64 440
  store i32 2, ptr %i_trellis117.i, align 8
  %i_bframe118.i = getelementptr inbounds i8, ptr %param, i64 100
  store i32 8, ptr %i_bframe118.i, align 4
  %i_lookahead120.i = getelementptr inbounds i8, ptr %param, i64 556
  store i32 60, ptr %i_lookahead120.i, align 4
  br label %if.end

if.else121.i:                                     ; preds = %if.else100.i
  %call122.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(8) @.str.221) #23
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool123.not.i, label %if.then124.i, label %x264_param_apply_preset.exit

if.then124.i:                                     ; preds = %if.else121.i
  %i_me_method126.i = getelementptr inbounds i8, ptr %param, i64 412
  store i32 4, ptr %i_me_method126.i, align 4
  %i_subpel_refine128.i = getelementptr inbounds i8, ptr %param, i64 428
  store i32 10, ptr %i_subpel_refine128.i, align 4
  %i_me_range130.i = getelementptr inbounds i8, ptr %param, i64 416
  store i32 24, ptr %i_me_range130.i, align 8
  %i_frame_reference131.i = getelementptr inbounds i8, ptr %param, i64 80
  store i32 16, ptr %i_frame_reference131.i, align 8
  %i_bframe_adaptive132.i = getelementptr inbounds i8, ptr %param, i64 104
  store i32 2, ptr %i_bframe_adaptive132.i, align 8
  %i_direct_mv_pred134.i = getelementptr inbounds i8, ptr %param, i64 404
  store i32 3, ptr %i_direct_mv_pred134.i, align 4
  %inter136.i = getelementptr inbounds i8, ptr %param, i64 388
  %2 = load i32, ptr %inter136.i, align 4
  %or137.i = or i32 %2, 32
  store i32 %or137.i, ptr %inter136.i, align 4
  %b_fast_pskip.i = getelementptr inbounds i8, ptr %param, i64 444
  store i32 0, ptr %b_fast_pskip.i, align 4
  %i_trellis140.i = getelementptr inbounds i8, ptr %param, i64 440
  store i32 2, ptr %i_trellis140.i, align 8
  %i_bframe141.i = getelementptr inbounds i8, ptr %param, i64 100
  store i32 16, ptr %i_bframe141.i, align 4
  %i_lookahead143.i = getelementptr inbounds i8, ptr %param, i64 556
  store i32 60, ptr %i_lookahead143.i, align 4
  br label %if.end

x264_param_apply_preset.exit:                     ; preds = %if.else121.i
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.222, ptr noundef nonnull %preset)
  br label %return

if.end:                                           ; preds = %if.then.i, %if.then30.i, %if.then59.i, %if.then72.i, %if.then103.i, %if.then124.i, %if.then85.i, %if.else65.i, %if.then47.i, %if.then11.i, %entry
  %tobool1.not = icmp eq ptr %tune, null
  br i1 %tobool1.not, label %return, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %if.end
  %call.i11 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %tune) #23
  %conv.i = trunc i64 %call.i11 to i32
  %sext.i = shl i64 %call.i11, 32
  %3 = ashr exact i64 %sext.i, 32
  %add2.i.i = add nsw i64 %3, 27
  %call.i.i = tail call noalias ptr @malloc(i64 noundef %add2.i.i) #24
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %x264_malloc.exit.thread.i, label %if.end.i

x264_malloc.exit.thread.i:                        ; preds = %land.lhs.true2
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %conv.i)
  br label %return

if.end.i:                                         ; preds = %land.lhs.true2
  %add.ptr4.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 27
  %4 = ptrtoint ptr %add.ptr4.i.i to i64
  %and.i.i = and i64 %4, 15
  %idx.neg.i.i = sub nsw i64 0, %and.i.i
  %add.ptr5.i.i = getelementptr inbounds i8, ptr %add.ptr4.i.i, i64 %idx.neg.i.i
  %add.ptr6.i.i = getelementptr inbounds i8, ptr %add.ptr5.i.i, i64 -8
  store ptr %call.i.i, ptr %add.ptr6.i.i, align 8
  %add.ptr8.i.i = getelementptr inbounds i8, ptr %add.ptr5.i.i, i64 -12
  store i32 %conv.i, ptr %add.ptr8.i.i, align 4
  %call2.i = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %add.ptr5.i.i, ptr noundef nonnull readonly dereferenceable(1) %tune) #25
  %call3.i = tail call ptr @strtok(ptr noundef nonnull %add.ptr5.i.i, ptr noundef nonnull @.str.223) #25
  %tobool4.not222.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not222.i, label %x264_param_apply_tune.exit, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %i_frame_reference104.i = getelementptr inbounds i8, ptr %param, i64 80
  %i_deblocking_filter_alphac0114.i = getelementptr inbounds i8, ptr %param, i64 120
  %i_deblocking_filter_beta115.i = getelementptr inbounds i8, ptr %param, i64 124
  %f_psy_trellis117.i = getelementptr inbounds i8, ptr %param, i64 460
  %f_aq_strength119.i = getelementptr inbounds i8, ptr %param, i64 548
  %inter.i = getelementptr inbounds i8, ptr %param, i64 388
  %i_lookahead.i12 = getelementptr inbounds i8, ptr %param, i64 556
  %i_sync_lookahead.i = getelementptr inbounds i8, ptr %param, i64 16
  %i_bframe95.i = getelementptr inbounds i8, ptr %param, i64 100
  %b_sliced_threads.i = getelementptr inbounds i8, ptr %param, i64 8
  %b_vfr_input.i = getelementptr inbounds i8, ptr %param, i64 648
  %b_deblocking_filter.i13 = getelementptr inbounds i8, ptr %param, i64 116
  %b_cabac.i14 = getelementptr inbounds i8, ptr %param, i64 128
  %b_weighted_bipred.i = getelementptr inbounds i8, ptr %param, i64 400
  %i_weighted_pred.i = getelementptr inbounds i8, ptr %param, i64 396
  %i_aq_mode81.i = getelementptr inbounds i8, ptr %param, i64 544
  %b_psy83.i = getelementptr inbounds i8, ptr %param, i64 464
  %f_psy_rd57.i = getelementptr inbounds i8, ptr %param, i64 456
  %b_dct_decimate.i = getelementptr inbounds i8, ptr %param, i64 448
  %f_ip_factor.i = getelementptr inbounds i8, ptr %param, i64 536
  %i_luma_deadzone.i = getelementptr inbounds i8, ptr %param, i64 468
  %arrayidx44.i = getelementptr inbounds i8, ptr %param, i64 472
  %f_qcompress.i = getelementptr inbounds i8, ptr %param, i64 592
  br label %while.body.i

while.body.i:                                     ; preds = %if.end137.i, %while.body.lr.ph.i
  %psy_tuning_used.0224.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %psy_tuning_used.2.i, %if.end137.i ]
  %s.0223.i = phi ptr [ %call3.i, %while.body.lr.ph.i ], [ %call138.i, %if.end137.i ]
  %call5.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(5) @.str.224, i64 noundef 4) #23
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i15

if.then7.i:                                       ; preds = %while.body.i
  %tobool8.not.i = icmp eq i32 %psy_tuning_used.0224.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %psy_failure.i

if.end10.i:                                       ; preds = %if.then7.i
  store i32 -1, ptr %i_deblocking_filter_alphac0114.i, align 8
  store i32 -1, ptr %i_deblocking_filter_beta115.i, align 4
  store float 0x3FC3333340000000, ptr %f_psy_trellis117.i, align 4
  br label %if.end137.i

if.else.i15:                                      ; preds = %while.body.i
  %call11.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(10) @.str.225, i64 noundef 9) #23
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.else24.i

if.then13.i:                                      ; preds = %if.else.i15
  %tobool15.not.i = icmp eq i32 %psy_tuning_used.0224.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %psy_failure.i

if.end17.i:                                       ; preds = %if.then13.i
  %5 = load i32, ptr %i_frame_reference104.i, align 8
  %cmp.i = icmp sgt i32 %5, 1
  %mul.i = shl nuw nsw i32 %5, 1
  %spec.select.i = select i1 %cmp.i, i32 %mul.i, i32 1
  store i32 %spec.select.i, ptr %i_frame_reference104.i, align 8
  store i32 1, ptr %i_deblocking_filter_alphac0114.i, align 8
  store i32 1, ptr %i_deblocking_filter_beta115.i, align 4
  store float 0x3FD99999A0000000, ptr %f_psy_rd57.i, align 8
  store float 0x3FE3333340000000, ptr %f_aq_strength119.i, align 4
  %6 = load i32, ptr %i_bframe95.i, align 4
  %add.i = add nsw i32 %6, 2
  store i32 %add.i, ptr %i_bframe95.i, align 4
  br label %if.end137.i

if.else24.i:                                      ; preds = %if.else.i15
  %call25.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(6) @.str.226, i64 noundef 5) #23
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.else46.i

if.then27.i:                                      ; preds = %if.else24.i
  %tobool29.not.i18 = icmp eq i32 %psy_tuning_used.0224.i, 0
  br i1 %tobool29.not.i18, label %if.end31.i, label %psy_failure.i

if.end31.i:                                       ; preds = %if.then27.i
  store i32 -2, ptr %i_deblocking_filter_alphac0114.i, align 8
  store i32 -2, ptr %i_deblocking_filter_beta115.i, align 4
  store float 2.500000e-01, ptr %f_psy_trellis117.i, align 4
  store i32 0, ptr %b_dct_decimate.i, align 8
  store <2 x float> <float 0x3FF19999A0000000, float 0x3FF19999A0000000>, ptr %f_ip_factor.i, align 8
  store float 5.000000e-01, ptr %f_aq_strength119.i, align 4
  store i32 6, ptr %i_luma_deadzone.i, align 4
  store i32 6, ptr %arrayidx44.i, align 4
  store float 0x3FE99999A0000000, ptr %f_qcompress.i, align 8
  br label %if.end137.i

if.else46.i:                                      ; preds = %if.else24.i
  %call47.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(11) @.str.227, i64 noundef 5) #23
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %if.else62.i

if.then49.i:                                      ; preds = %if.else46.i
  %tobool51.not.i = icmp eq i32 %psy_tuning_used.0224.i, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %psy_failure.i

if.end53.i:                                       ; preds = %if.then49.i
  store i32 -3, ptr %i_deblocking_filter_alphac0114.i, align 8
  store i32 -3, ptr %i_deblocking_filter_beta115.i, align 4
  store <2 x float> <float 2.000000e+00, float 0x3FE6666660000000>, ptr %f_psy_rd57.i, align 8
  store float 0x3FF3333340000000, ptr %f_aq_strength119.i, align 4
  br label %if.end137.i

if.else62.i:                                      ; preds = %if.else46.i
  %call63.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(5) @.str.145, i64 noundef 4) #23
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.then65.i, label %if.else72.i

if.then65.i:                                      ; preds = %if.else62.i
  %tobool67.not.i17 = icmp eq i32 %psy_tuning_used.0224.i, 0
  br i1 %tobool67.not.i17, label %if.end69.i, label %psy_failure.i

if.end69.i:                                       ; preds = %if.then65.i
  store i32 0, ptr %i_aq_mode81.i, align 8
  store i32 0, ptr %b_psy83.i, align 8
  br label %if.end137.i

if.else72.i:                                      ; preds = %if.else62.i
  %call73.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(5) @.str.146, i64 noundef 4) #23
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.then75.i, label %if.else84.i

if.then75.i:                                      ; preds = %if.else72.i
  %tobool77.not.i = icmp eq i32 %psy_tuning_used.0224.i, 0
  br i1 %tobool77.not.i, label %if.end79.i, label %psy_failure.i

if.end79.i:                                       ; preds = %if.then75.i
  store i32 2, ptr %i_aq_mode81.i, align 8
  store i32 0, ptr %b_psy83.i, align 8
  br label %if.end137.i

if.else84.i:                                      ; preds = %if.else72.i
  %call85.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(11) @.str.228, i64 noundef 10) #23
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.then87.i, label %if.else90.i

if.then87.i:                                      ; preds = %if.else84.i
  store i32 0, ptr %b_deblocking_filter.i13, align 4
  store i32 0, ptr %b_cabac.i14, align 8
  store i32 0, ptr %b_weighted_bipred.i, align 8
  store i32 0, ptr %i_weighted_pred.i, align 4
  br label %if.end137.i

if.else90.i:                                      ; preds = %if.else84.i
  %call91.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(12) @.str.229, i64 noundef 11) #23
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %if.then93.i, label %if.else96.i

if.then93.i:                                      ; preds = %if.else90.i
  store i32 0, ptr %i_lookahead.i12, align 4
  store i32 0, ptr %i_sync_lookahead.i, align 8
  store i32 0, ptr %i_bframe95.i, align 4
  store i32 1, ptr %b_sliced_threads.i, align 8
  store i32 0, ptr %b_vfr_input.i, align 8
  br label %if.end137.i

if.else96.i:                                      ; preds = %if.else90.i
  %call97.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(7) @.str.230, i64 noundef 6) #23
  %tobool98.not.i = icmp eq i32 %call97.i, 0
  br i1 %tobool98.not.i, label %if.then99.i, label %x264_free.exit.i

if.then99.i:                                      ; preds = %if.else96.i
  %tobool101.not.i = icmp eq i32 %psy_tuning_used.0224.i, 0
  br i1 %tobool101.not.i, label %if.end103.i, label %psy_failure.i

if.end103.i:                                      ; preds = %if.then99.i
  %7 = load i32, ptr %i_frame_reference104.i, align 8
  %cmp105.i = icmp sgt i32 %7, 1
  %mul109.i = shl nuw nsw i32 %7, 1
  %spec.select211.i = select i1 %cmp105.i, i32 %mul109.i, i32 1
  store i32 %spec.select211.i, ptr %i_frame_reference104.i, align 8
  store i32 -1, ptr %i_deblocking_filter_alphac0114.i, align 8
  store i32 -1, ptr %i_deblocking_filter_beta115.i, align 4
  store float 0x3FC99999A0000000, ptr %f_psy_trellis117.i, align 4
  store float 0x3FF4CCCCC0000000, ptr %f_aq_strength119.i, align 4
  %8 = load i32, ptr %inter.i, align 4
  %and.i = and i32 %8, 16
  %tobool121.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool121.not.i, label %if.end137.i, label %if.then122.i

if.then122.i:                                     ; preds = %if.end103.i
  %or.i16 = or i32 %8, 32
  store i32 %or.i16, ptr %inter.i, align 4
  br label %if.end137.i

x264_free.exit.i:                                 ; preds = %if.else96.i
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.231, ptr noundef nonnull %s.0223.i)
  %9 = load ptr, ptr %add.ptr6.i.i, align 8
  tail call void @free(ptr noundef %9) #25
  br label %return

psy_failure.i:                                    ; preds = %if.then99.i, %if.then75.i, %if.then65.i, %if.then49.i, %if.then27.i, %if.then13.i, %if.then7.i
  %psy_tuning_used.1.i = add nsw i32 %psy_tuning_used.0224.i, 1
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.232, ptr noundef nonnull %s.0223.i)
  br label %if.end137.i

if.end137.i:                                      ; preds = %psy_failure.i, %if.then122.i, %if.end103.i, %if.then93.i, %if.then87.i, %if.end79.i, %if.end69.i, %if.end53.i, %if.end31.i, %if.end17.i, %if.end10.i
  %psy_tuning_used.2.i = phi i32 [ %psy_tuning_used.1.i, %psy_failure.i ], [ 1, %if.then122.i ], [ 1, %if.end103.i ], [ %psy_tuning_used.0224.i, %if.then93.i ], [ %psy_tuning_used.0224.i, %if.then87.i ], [ 1, %if.end79.i ], [ 1, %if.end69.i ], [ 1, %if.end53.i ], [ 1, %if.end31.i ], [ 1, %if.end17.i ], [ 1, %if.end10.i ]
  %call138.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.223) #25
  %tobool4.not.i = icmp eq ptr %call138.i, null
  br i1 %tobool4.not.i, label %x264_param_apply_tune.exit, label %while.body.i

x264_param_apply_tune.exit:                       ; preds = %if.end137.i, %if.end.i
  %10 = load ptr, ptr %add.ptr6.i.i, align 8
  tail call void @free(ptr noundef %10) #25
  br label %return

return:                                           ; preds = %x264_malloc.exit.thread.i, %x264_free.exit.i, %if.end, %x264_param_apply_tune.exit, %x264_param_apply_preset.exit
  %retval.0 = phi i32 [ -1, %x264_param_apply_preset.exit ], [ 0, %x264_param_apply_tune.exit ], [ 0, %if.end ], [ -1, %x264_free.exit.i ], [ -1, %x264_malloc.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @x264_param_apply_fastfirstpass(ptr nocapture noundef %param) local_unnamed_addr #8 {
entry:
  %b_stat_write = getelementptr inbounds i8, ptr %param, i64 560
  %0 = load i32, ptr %b_stat_write, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %b_stat_read = getelementptr inbounds i8, ptr %param, i64 576
  %1 = load i32, ptr %b_stat_read, align 8
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %i_frame_reference = getelementptr inbounds i8, ptr %param, i64 80
  store i32 1, ptr %i_frame_reference, align 8
  %b_transform_8x8 = getelementptr inbounds i8, ptr %param, i64 392
  store i32 0, ptr %b_transform_8x8, align 8
  %inter = getelementptr inbounds i8, ptr %param, i64 388
  store i32 0, ptr %inter, align 4
  %i_me_method = getelementptr inbounds i8, ptr %param, i64 412
  store i32 0, ptr %i_me_method, align 4
  %i_subpel_refine = getelementptr inbounds i8, ptr %param, i64 428
  %2 = load i32, ptr %i_subpel_refine, align 4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 2)
  store i32 %spec.select, ptr %i_subpel_refine, align 4
  %i_trellis = getelementptr inbounds i8, ptr %param, i64 440
  store i32 0, ptr %i_trellis, align 8
  %b_fast_pskip = getelementptr inbounds i8, ptr %param, i64 444
  store i32 1, ptr %b_fast_pskip, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_param_apply_profile(ptr nocapture noundef %param, ptr noundef %profile) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq ptr %profile, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %profile, ptr noundef nonnull dereferenceable(9) @.str.1) #23
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %b_transform_8x8 = getelementptr inbounds i8, ptr %param, i64 392
  store i32 0, ptr %b_transform_8x8, align 8
  %b_cabac = getelementptr inbounds i8, ptr %param, i64 128
  store i32 0, ptr %b_cabac, align 8
  %i_cqm_preset = getelementptr inbounds i8, ptr %param, i64 144
  store i32 0, ptr %i_cqm_preset, align 8
  %i_bframe = getelementptr inbounds i8, ptr %param, i64 100
  store i32 0, ptr %i_bframe, align 4
  %i_weighted_pred = getelementptr inbounds i8, ptr %param, i64 396
  store i32 0, ptr %i_weighted_pred, align 4
  %b_interlaced = getelementptr inbounds i8, ptr %param, i64 136
  %0 = load i32, ptr %b_interlaced, align 8
  %tobool4.not = icmp eq i32 %0, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then2
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2)
  br label %return

if.end6:                                          ; preds = %if.then2
  %b_fake_interlaced = getelementptr inbounds i8, ptr %param, i64 680
  %1 = load i32, ptr %b_fake_interlaced, align 8
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %if.end23, label %if.then8

if.then8:                                         ; preds = %if.end6
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.3)
  br label %if.end23

if.else:                                          ; preds = %if.end
  %call10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %profile, ptr noundef nonnull dereferenceable(5) @.str.4) #23
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.else
  %b_transform_8x814 = getelementptr inbounds i8, ptr %param, i64 392
  store i32 0, ptr %b_transform_8x814, align 8
  %i_cqm_preset15 = getelementptr inbounds i8, ptr %param, i64 144
  store i32 0, ptr %i_cqm_preset15, align 8
  br label %if.end23

if.else16:                                        ; preds = %if.else
  %call17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %profile, ptr noundef nonnull dereferenceable(5) @.str.5) #23
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end23, label %if.else20

if.else20:                                        ; preds = %if.else16
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %profile)
  br label %return

if.end23:                                         ; preds = %if.then12, %if.else16, %if.end6, %if.then8
  %rc = getelementptr inbounds i8, ptr %param, i64 488
  %2 = load i32, ptr %rc, align 8
  switch i32 %2, label %return [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true29
  ]

land.lhs.true:                                    ; preds = %if.end23
  %i_qp_constant = getelementptr inbounds i8, ptr %param, i64 492
  %3 = load i32, ptr %i_qp_constant, align 4
  %cmp25 = icmp eq i32 %3, 0
  br i1 %cmp25, label %if.then32, label %return

land.lhs.true29:                                  ; preds = %if.end23
  %f_rf_constant = getelementptr inbounds i8, ptr %param, i64 512
  %4 = load float, ptr %f_rf_constant, align 8
  %cmp31 = fcmp oeq float %4, 0.000000e+00
  br i1 %cmp31, label %if.then32, label %return

if.then32:                                        ; preds = %land.lhs.true29, %land.lhs.true
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull %profile)
  br label %return

return:                                           ; preds = %if.end23, %land.lhs.true, %land.lhs.true29, %entry, %if.then32, %if.else20, %if.then5
  %retval.0 = phi i32 [ -1, %if.else20 ], [ -1, %if.then32 ], [ -1, %if.then5 ], [ 0, %entry ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_log(ptr noundef readonly %h, i32 noundef %i_level, ptr noundef %psz_fmt, ...) local_unnamed_addr #4 {
entry:
  %arg = alloca [1 x %struct.__va_list_tag], align 16
  %tobool.not = icmp eq ptr %h, null
  br i1 %tobool.not, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %i_log_level = getelementptr inbounds i8, ptr %h, i64 368
  %0 = load i32, ptr %i_log_level, align 16
  %cmp.not = icmp slt i32 %0, %i_level
  br i1 %cmp.not, label %if.end8, label %if.else

if.then2:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #25
  call void @llvm.va_start.p0(ptr nonnull %arg)
  %1 = icmp ult i32 %i_level, 4
  br i1 %1, label %switch.lookup, label %x264_log_default.exit

switch.lookup:                                    ; preds = %if.then2
  %2 = zext nneg i32 %i_level to i64
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.x264_log, i64 0, i64 %2
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %x264_log_default.exit

x264_log_default.exit:                            ; preds = %if.then2, %switch.lookup
  %psz_prefix.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.271, %if.then2 ]
  %3 = load ptr, ptr @stderr, align 8
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.272, ptr noundef nonnull %psz_prefix.0.i) #26
  %4 = load ptr, ptr @stderr, align 8
  %call4.i = call i32 @vfprintf(ptr noundef %4, ptr noundef readonly %psz_fmt, ptr noundef nonnull %arg) #26
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #25
  call void @llvm.va_start.p0(ptr nonnull %arg)
  %pf_log = getelementptr inbounds i8, ptr %h, i64 352
  %5 = load ptr, ptr %pf_log, align 16
  %p_log_private = getelementptr inbounds i8, ptr %h, i64 360
  %6 = load ptr, ptr %p_log_private, align 8
  call void %5(ptr noundef %6, i32 noundef %i_level, ptr noundef %psz_fmt, ptr noundef nonnull %arg) #25
  br label %if.end

if.end:                                           ; preds = %if.else, %x264_log_default.exit
  call void @llvm.va_end.p0(ptr nonnull %arg)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg) #25
  br label %if.end8

if.end8:                                          ; preds = %if.end, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @x264_param_parse(ptr noundef %p, ptr noundef readonly %name, ptr noundef %value) local_unnamed_addr #4 {
entry:
  %end.i1994 = alloca ptr, align 8
  %end.i1987 = alloca ptr, align 8
  %end.i1980 = alloca ptr, align 8
  %end.i1973 = alloca ptr, align 8
  %end.i1964 = alloca ptr, align 8
  %end.i1957 = alloca ptr, align 8
  %end.i1949 = alloca ptr, align 8
  %end.i1942 = alloca ptr, align 8
  %end.i1935 = alloca ptr, align 8
  %end.i1928 = alloca ptr, align 8
  %end.i1920 = alloca ptr, align 8
  %end.i1912 = alloca ptr, align 8
  %end.i1905 = alloca ptr, align 8
  %end.i1897 = alloca ptr, align 8
  %end.i1889 = alloca ptr, align 8
  %end.i1881 = alloca ptr, align 8
  %end.i1873 = alloca ptr, align 8
  %end.i1866 = alloca ptr, align 8
  %end.i1859 = alloca ptr, align 8
  %end.i1851 = alloca ptr, align 8
  %end.i1843 = alloca ptr, align 8
  %end.i1835 = alloca ptr, align 8
  %end.i1827 = alloca ptr, align 8
  %end.i1819 = alloca ptr, align 8
  %end.i1811 = alloca ptr, align 8
  %end.i1803 = alloca ptr, align 8
  %end.i1795 = alloca ptr, align 8
  %end.i1787 = alloca ptr, align 8
  %end.i1779 = alloca ptr, align 8
  %end.i1771 = alloca ptr, align 8
  %end.i1763 = alloca ptr, align 8
  %end.i1755 = alloca ptr, align 8
  %end.i1747 = alloca ptr, align 8
  %end.i1739 = alloca ptr, align 8
  %end.i1731 = alloca ptr, align 8
  %end.i1723 = alloca ptr, align 8
  %end.i1715 = alloca ptr, align 8
  %end.i1707 = alloca ptr, align 8
  %end.i1699 = alloca ptr, align 8
  %end.i1691 = alloca ptr, align 8
  %end.i1683 = alloca ptr, align 8
  %end.i1675 = alloca ptr, align 8
  %end.i1667 = alloca ptr, align 8
  %end.i1659 = alloca ptr, align 8
  %end.i1652 = alloca ptr, align 8
  %end.i1644 = alloca ptr, align 8
  %end.i1636 = alloca ptr, align 8
  %end.i1629 = alloca ptr, align 8
  %end.i1624 = alloca ptr, align 8
  %end.i1616 = alloca ptr, align 8
  %end.i1608 = alloca ptr, align 8
  %end.i = alloca ptr, align 8
  %b_error = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b_error) #25
  store i32 0, ptr %b_error, align 4
  %tobool.not = icmp eq ptr %value, null
  %tobool1.not = icmp eq ptr %name, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %spec.select = select i1 %tobool.not, ptr @.str.8, ptr %value
  %0 = load i8, ptr %spec.select, align 1
  %cmp = icmp eq i8 %0, 61
  %value.addr.1.idx = zext i1 %cmp to i64
  %value.addr.1 = getelementptr inbounds i8, ptr %spec.select, i64 %value.addr.1.idx
  %call = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %name, i32 noundef 95) #23
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %sub_0, label %if.then9

if.then9:                                         ; preds = %if.end
  %call.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %name) #23
  %conv.i = trunc i64 %call.i to i32
  %add.i = shl i64 %call.i, 32
  %sext.i = add i64 %add.i, 4294967296
  %conv1.i = ashr exact i64 %sext.i, 32
  %call2.i = tail call noalias ptr @malloc(i64 noundef %conv1.i) #24
  %cmp17.i = icmp sgt i32 %conv.i, 0
  br i1 %cmp17.i, label %for.body.preheader.i, label %spec_strdup.exit

for.body.preheader.i:                             ; preds = %if.then9
  %1 = and i64 %call.i, 2147483647
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call2.i, ptr nonnull readonly align 1 %name, i64 %1, i1 false)
  br label %spec_strdup.exit

spec_strdup.exit:                                 ; preds = %if.then9, %for.body.preheader.i
  %idxprom6.i = ashr exact i64 %add.i, 32
  %arrayidx7.i = getelementptr inbounds i8, ptr %call2.i, i64 %idxprom6.i
  store i8 0, ptr %arrayidx7.i, align 1
  %call112027 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call2.i, i32 noundef 95) #23
  %tobool12.not2028 = icmp eq ptr %call112027, null
  br i1 %tobool12.not2028, label %sub_0, label %while.body

while.body:                                       ; preds = %spec_strdup.exit, %while.body
  %call112029 = phi ptr [ %call11, %while.body ], [ %call112027, %spec_strdup.exit ]
  store i8 45, ptr %call112029, align 1
  %call11 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call2.i, i32 noundef 95) #23
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %sub_0, label %while.body

sub_0:                                            ; preds = %while.body, %spec_strdup.exit, %if.end
  %name_buf.0 = phi ptr [ null, %if.end ], [ %call2.i, %spec_strdup.exit ], [ %call2.i, %while.body ]
  %name.addr.0 = phi ptr [ %name, %if.end ], [ %call2.i, %spec_strdup.exit ], [ %call2.i, %while.body ]
  %2 = load i8, ptr %name.addr.0, align 1
  %3 = zext i8 %2 to i32
  %4 = add nsw i32 %3, -110
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %sub_1, label %lor.lhs.false.tail

sub_1:                                            ; preds = %sub_0
  %5 = getelementptr inbounds i8, ptr %name.addr.0, i64 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, -111
  %.not2036 = icmp eq i32 %8, 0
  br i1 %.not2036, label %sub_2, label %if.end13.tail

sub_2:                                            ; preds = %sub_1
  %9 = getelementptr inbounds i8, ptr %name.addr.0, i64 2
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %11, -45
  br label %if.end13.tail

if.end13.tail:                                    ; preds = %sub_1, %sub_2
  %13 = phi i32 [ %8, %sub_1 ], [ %12, %sub_2 ]
  %tobool15.not = icmp eq i32 %13, 0
  br i1 %tobool15.not, label %if.then19, label %sub_02003

sub_02003:                                        ; preds = %if.end13.tail
  br i1 %.not, label %sub_12004, label %lor.lhs.false.tail

sub_12004:                                        ; preds = %sub_02003
  %14 = getelementptr inbounds i8, ptr %name.addr.0, i64 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = add nsw i32 %16, -111
  br label %lor.lhs.false.tail

lor.lhs.false.tail:                               ; preds = %sub_0, %sub_02003, %sub_12004
  %18 = phi i32 [ %4, %sub_02003 ], [ %17, %sub_12004 ], [ %4, %sub_0 ]
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %if.then19, label %if.end22

if.then19:                                        ; preds = %lor.lhs.false.tail, %if.end13.tail
  %i.0 = phi i64 [ 3, %if.end13.tail ], [ 2, %lor.lhs.false.tail ]
  %add.ptr = getelementptr inbounds i8, ptr %name.addr.0, i64 %i.0
  %call20 = call fastcc i32 @x264_atobool(ptr noundef nonnull %value.addr.1, ptr noundef nonnull %b_error)
  %tobool21.not = icmp eq i32 %call20, 0
  %cond = select i1 %tobool21.not, ptr @.str.8, ptr @.str.11
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %lor.lhs.false.tail
  %value.addr.2 = phi ptr [ %value.addr.1, %lor.lhs.false.tail ], [ %cond, %if.then19 ]
  %name.addr.1 = phi ptr [ %name.addr.0, %lor.lhs.false.tail ], [ %add.ptr, %if.then19 ]
  %call23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.12) #23
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end22
  %call26 = tail call ptr @__ctype_b_loc() #27
  %19 = load ptr, ptr %call26, align 8
  %20 = load i8, ptr %value.addr.2, align 1
  %idxprom = sext i8 %20 to i64
  %arrayidx29 = getelementptr inbounds i16, ptr %19, i64 %idxprom
  %21 = load i16, ptr %arrayidx29, align 2
  %22 = and i16 %21, 2048
  %tobool31.not = icmp eq i16 %22, 0
  br i1 %tobool31.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i) #25
  %call.i1595 = call i64 @strtol(ptr noundef nonnull %value.addr.2, ptr noundef nonnull %end.i, i32 noundef 0) #25
  %23 = load ptr, ptr %end.i, align 8
  %cmp.i = icmp eq ptr %23, %value.addr.2
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %cond.true
  %24 = load i8, ptr %23, align 1
  %cmp3.not.i = icmp eq i8 %24, 0
  br i1 %cmp3.not.i, label %x264_atoi.exit, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %cond.true
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit

x264_atoi.exit:                                   ; preds = %lor.lhs.false.i, %if.then.i
  %conv.i1596 = trunc i64 %call.i1595 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i) #25
  br label %cond.end42

cond.false:                                       ; preds = %if.then25
  %call33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(5) @.str.13) #23
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cond.true38, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %cond.false
  %call36 = call fastcc i32 @x264_atobool(ptr noundef nonnull %value.addr.2, ptr noundef nonnull %b_error)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cond.end42, label %cond.true38

cond.true38:                                      ; preds = %lor.lhs.false35, %cond.false
  %name_was_bool.0 = phi i32 [ 1, %lor.lhs.false35 ], [ 0, %cond.false ]
  %call39 = tail call i32 @x264_cpu_detect() #25
  br label %cond.end42

cond.end42:                                       ; preds = %cond.true38, %lor.lhs.false35, %x264_atoi.exit
  %name_was_bool.1 = phi i32 [ 0, %x264_atoi.exit ], [ %name_was_bool.0, %cond.true38 ], [ 1, %lor.lhs.false35 ]
  %cond43 = phi i32 [ %conv.i1596, %x264_atoi.exit ], [ %call39, %cond.true38 ], [ 0, %lor.lhs.false35 ]
  store i32 %cond43, ptr %p, align 8
  %25 = load i32, ptr %b_error, align 4
  %tobool44.not = icmp eq i32 %25, 0
  br i1 %tobool44.not, label %if.end1116, label %if.then45

if.then45:                                        ; preds = %cond.end42
  %call.i1597 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %value.addr.2) #23
  %conv.i1598 = trunc i64 %call.i1597 to i32
  %add.i1599 = shl i64 %call.i1597, 32
  %sext.i1600 = add i64 %add.i1599, 4294967296
  %conv1.i1601 = ashr exact i64 %sext.i1600, 32
  %call2.i1602 = tail call noalias ptr @malloc(i64 noundef %conv1.i1601) #24
  %cmp17.i1603 = icmp sgt i32 %conv.i1598, 0
  br i1 %cmp17.i1603, label %for.body.preheader.i1606, label %spec_strdup.exit1607

for.body.preheader.i1606:                         ; preds = %if.then45
  %26 = and i64 %call.i1597, 2147483647
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call2.i1602, ptr nonnull readonly align 1 %value.addr.2, i64 %26, i1 false)
  br label %spec_strdup.exit1607

spec_strdup.exit1607:                             ; preds = %if.then45, %for.body.preheader.i1606
  %idxprom6.i1604 = ashr exact i64 %add.i1599, 32
  %arrayidx7.i1605 = getelementptr inbounds i8, ptr %call2.i1602, i64 %idxprom6.i1604
  store i8 0, ptr %arrayidx7.i1605, align 1
  store i32 0, ptr %b_error, align 4
  store i32 0, ptr %p, align 8
  %call482033 = tail call ptr @strtok(ptr noundef %call2.i1602, ptr noundef nonnull @.str.14) #25
  %tobool49.not2034 = icmp eq ptr %call482033, null
  br i1 %tobool49.not2034, label %for.end71, label %for.cond50.preheader.lr.ph

for.cond50.preheader.lr.ph:                       ; preds = %spec_strdup.exit1607
  %27 = load i32, ptr getelementptr inbounds (i8, ptr @x264_cpu_names, i64 16), align 4
  %tobool53.not2030 = icmp eq i32 %27, 0
  br i1 %tobool53.not2030, label %for.cond50.preheader.lr.ph.split.us, label %for.cond50.preheader

for.cond50.preheader.lr.ph.split.us:              ; preds = %for.cond50.preheader.lr.ph
  store i32 1, ptr %b_error, align 4
  br label %for.cond50.preheader.us

for.cond50.preheader.us:                          ; preds = %for.cond50.preheader.us, %for.cond50.preheader.lr.ph.split.us
  %call48.us = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.14) #25
  %tobool49.not.us = icmp eq ptr %call48.us, null
  br i1 %tobool49.not.us, label %for.end71, label %for.cond50.preheader.us

for.cond50.preheader:                             ; preds = %for.cond50.preheader.lr.ph, %for.inc70
  %call482035 = phi ptr [ %call48, %for.inc70 ], [ %call482033, %for.cond50.preheader.lr.ph ]
  %call572056 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call482035, ptr noundef nonnull dereferenceable(1) @x264_cpu_names) #23
  %tobool58.not2057 = icmp eq i32 %call572056, 0
  br i1 %tobool58.not2057, label %for.end, label %for.cond50

for.cond50:                                       ; preds = %for.cond50.preheader, %land.rhs
  %indvars.iv2058 = phi i64 [ %indvars.iv.next, %land.rhs ], [ 0, %for.cond50.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2058, 1
  %arrayidx52 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %indvars.iv.next
  %flags = getelementptr inbounds i8, ptr %arrayidx52, i64 16
  %28 = load i32, ptr %flags, align 4
  %tobool53.not = icmp eq i32 %28, 0
  br i1 %tobool53.not, label %for.cond50.if.then68_crit_edge, label %land.rhs

land.rhs:                                         ; preds = %for.cond50
  %call57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call482035, ptr noundef nonnull dereferenceable(1) %arrayidx52) #23
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %for.end, label %for.cond50

for.end:                                          ; preds = %land.rhs, %for.cond50.preheader
  %.lcssa = phi i32 [ %27, %for.cond50.preheader ], [ %28, %land.rhs ]
  %29 = load i32, ptr %p, align 8
  %or = or i32 %29, %.lcssa
  store i32 %or, ptr %p, align 8
  br label %for.inc70

for.cond50.if.then68_crit_edge:                   ; preds = %for.cond50
  store i32 1, ptr %b_error, align 4
  br label %for.inc70

for.inc70:                                        ; preds = %for.end, %for.cond50.if.then68_crit_edge
  %call48 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.14) #25
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %for.end71, label %for.cond50.preheader

for.end71:                                        ; preds = %for.inc70, %for.cond50.preheader.us, %spec_strdup.exit1607
  tail call void @free(ptr noundef %call2.i1602) #25
  br label %if.end1116

if.else:                                          ; preds = %if.end22
  %call73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.15) #23
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %if.else83

if.then75:                                        ; preds = %if.else
  %call76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(5) @.str.13) #23
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.then75
  %i_threads = getelementptr inbounds i8, ptr %p, i64 4
  store i32 0, ptr %i_threads, align 4
  br label %if.end1116

if.else79:                                        ; preds = %if.then75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1608) #25
  %call.i1609 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1608, i32 noundef 0) #25
  %30 = load ptr, ptr %end.i1608, align 8
  %cmp.i1610 = icmp eq ptr %30, %value.addr.2
  br i1 %cmp.i1610, label %if.then.i1613, label %lor.lhs.false.i1611

lor.lhs.false.i1611:                              ; preds = %if.else79
  %31 = load i8, ptr %30, align 1
  %cmp3.not.i1612 = icmp eq i8 %31, 0
  br i1 %cmp3.not.i1612, label %x264_atoi.exit1615, label %if.then.i1613

if.then.i1613:                                    ; preds = %lor.lhs.false.i1611, %if.else79
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1615

x264_atoi.exit1615:                               ; preds = %lor.lhs.false.i1611, %if.then.i1613
  %conv.i1614 = trunc i64 %call.i1609 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1608) #25
  %i_threads81 = getelementptr inbounds i8, ptr %p, i64 4
  store i32 %conv.i1614, ptr %i_threads81, align 4
  br label %if.end1116

if.else83:                                        ; preds = %if.else
  %call84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.16) #23
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then86, label %if.else88

if.then86:                                        ; preds = %if.else83
  %call87 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_sliced_threads = getelementptr inbounds i8, ptr %p, i64 8
  store i32 %call87, ptr %b_sliced_threads, align 8
  br label %if.end1116

if.else88:                                        ; preds = %if.else83
  %call89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.17) #23
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then91, label %if.else99

if.then91:                                        ; preds = %if.else88
  %call92 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(5) @.str.13) #23
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then94, label %if.else95

if.then94:                                        ; preds = %if.then91
  %i_sync_lookahead = getelementptr inbounds i8, ptr %p, i64 16
  store i32 -1, ptr %i_sync_lookahead, align 8
  br label %if.end1116

if.else95:                                        ; preds = %if.then91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1616) #25
  %call.i1617 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1616, i32 noundef 0) #25
  %32 = load ptr, ptr %end.i1616, align 8
  %cmp.i1618 = icmp eq ptr %32, %value.addr.2
  br i1 %cmp.i1618, label %if.then.i1621, label %lor.lhs.false.i1619

lor.lhs.false.i1619:                              ; preds = %if.else95
  %33 = load i8, ptr %32, align 1
  %cmp3.not.i1620 = icmp eq i8 %33, 0
  br i1 %cmp3.not.i1620, label %x264_atoi.exit1623, label %if.then.i1621

if.then.i1621:                                    ; preds = %lor.lhs.false.i1619, %if.else95
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1623

x264_atoi.exit1623:                               ; preds = %lor.lhs.false.i1619, %if.then.i1621
  %conv.i1622 = trunc i64 %call.i1617 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1616) #25
  %i_sync_lookahead97 = getelementptr inbounds i8, ptr %p, i64 16
  store i32 %conv.i1622, ptr %i_sync_lookahead97, align 8
  br label %if.end1116

if.else99:                                        ; preds = %if.else88
  %call100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(14) @.str.18) #23
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then105, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %if.else99
  %call103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(16) @.str.19) #23
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then105, label %if.else107

if.then105:                                       ; preds = %lor.lhs.false102, %if.else99
  %call106 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_deterministic = getelementptr inbounds i8, ptr %p, i64 12
  store i32 %call106, ptr %b_deterministic, align 4
  br label %if.end1116

if.else107:                                       ; preds = %lor.lhs.false102
  %call108 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.20) #23
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then113, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %if.else107
  %call111 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.21) #23
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then113, label %if.else124

if.then113:                                       ; preds = %lor.lhs.false110, %if.else107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1624) #25
  %call.i1625 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1624) #25
  %34 = load ptr, ptr %end.i1624, align 8
  %cmp.i1626 = icmp eq ptr %34, %value.addr.2
  br i1 %cmp.i1626, label %if.then.i1628, label %lor.lhs.false.i1627

lor.lhs.false.i1627:                              ; preds = %if.then113
  %35 = load i8, ptr %34, align 1
  %cmp1.not.i = icmp eq i8 %35, 0
  br i1 %cmp1.not.i, label %x264_atof.exit, label %if.then.i1628

if.then.i1628:                                    ; preds = %lor.lhs.false.i1627, %if.then113
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit

x264_atof.exit:                                   ; preds = %lor.lhs.false.i1627, %if.then.i1628
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1624) #25
  %cmp115 = fcmp olt double %call.i1625, 6.000000e+00
  br i1 %cmp115, label %if.then117, label %if.else120

if.then117:                                       ; preds = %x264_atof.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1629) #25
  %call.i1630 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1629) #25
  %36 = load ptr, ptr %end.i1629, align 8
  %cmp.i1631 = icmp eq ptr %36, %value.addr.2
  br i1 %cmp.i1631, label %if.then.i1634, label %lor.lhs.false.i1632

lor.lhs.false.i1632:                              ; preds = %if.then117
  %37 = load i8, ptr %36, align 1
  %cmp1.not.i1633 = icmp eq i8 %37, 0
  br i1 %cmp1.not.i1633, label %x264_atof.exit1635, label %if.then.i1634

if.then.i1634:                                    ; preds = %lor.lhs.false.i1632, %if.then117
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit1635

x264_atof.exit1635:                               ; preds = %lor.lhs.false.i1632, %if.then.i1634
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1629) #25
  %38 = tail call double @llvm.fmuladd.f64(double %call.i1630, double 1.000000e+01, double 5.000000e-01)
  %conv119 = fptosi double %38 to i32
  %i_level_idc = getelementptr inbounds i8, ptr %p, i64 32
  store i32 %conv119, ptr %i_level_idc, align 8
  br label %if.end1116

if.else120:                                       ; preds = %x264_atof.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1636) #25
  %call.i1637 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1636, i32 noundef 0) #25
  %39 = load ptr, ptr %end.i1636, align 8
  %cmp.i1638 = icmp eq ptr %39, %value.addr.2
  br i1 %cmp.i1638, label %if.then.i1641, label %lor.lhs.false.i1639

lor.lhs.false.i1639:                              ; preds = %if.else120
  %40 = load i8, ptr %39, align 1
  %cmp3.not.i1640 = icmp eq i8 %40, 0
  br i1 %cmp3.not.i1640, label %x264_atoi.exit1643, label %if.then.i1641

if.then.i1641:                                    ; preds = %lor.lhs.false.i1639, %if.else120
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1643

x264_atoi.exit1643:                               ; preds = %lor.lhs.false.i1639, %if.then.i1641
  %conv.i1642 = trunc i64 %call.i1637 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1636) #25
  %i_level_idc122 = getelementptr inbounds i8, ptr %p, i64 32
  store i32 %conv.i1642, ptr %i_level_idc122, align 8
  br label %if.end1116

if.else124:                                       ; preds = %lor.lhs.false110
  %call125 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.22) #23
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then127, label %if.else141

if.then127:                                       ; preds = %if.else124
  %vui = getelementptr inbounds i8, ptr %p, i64 44
  %i_sar_width = getelementptr inbounds i8, ptr %p, i64 48
  %call129 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.23, ptr noundef nonnull %i_sar_width, ptr noundef nonnull %vui) #25
  %cmp130.not = icmp eq i32 %call129, 2
  br i1 %cmp130.not, label %land.end140, label %land.rhs132

land.rhs132:                                      ; preds = %if.then127
  %call137 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.24, ptr noundef nonnull %i_sar_width, ptr noundef nonnull %vui) #25
  %cmp138 = icmp ne i32 %call137, 2
  %41 = zext i1 %cmp138 to i32
  br label %land.end140

land.end140:                                      ; preds = %land.rhs132, %if.then127
  %land.ext = phi i32 [ 0, %if.then127 ], [ %41, %land.rhs132 ]
  store i32 %land.ext, ptr %b_error, align 4
  br label %if.end1116

if.else141:                                       ; preds = %if.else124
  %call142 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.25) #23
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then144, label %if.else148

if.then144:                                       ; preds = %if.else141
  %i_overscan = getelementptr inbounds i8, ptr %p, i64 52
  %call146 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_overscan_names, ptr noundef nonnull %i_overscan)
  %42 = load i32, ptr %b_error, align 4
  %or147 = or i32 %42, %call146
  store i32 %or147, ptr %b_error, align 4
  br label %if.end1116

if.else148:                                       ; preds = %if.else141
  %call149 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.26) #23
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then151, label %if.else155

if.then151:                                       ; preds = %if.else148
  %i_vidformat = getelementptr inbounds i8, ptr %p, i64 56
  %call153 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_vidformat_names, ptr noundef nonnull %i_vidformat)
  %43 = load i32, ptr %b_error, align 4
  %or154 = or i32 %43, %call153
  store i32 %or154, ptr %b_error, align 4
  br label %if.end1116

if.else155:                                       ; preds = %if.else148
  %call156 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.27) #23
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then158, label %if.else162

if.then158:                                       ; preds = %if.else155
  %b_fullrange = getelementptr inbounds i8, ptr %p, i64 60
  %call160 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_fullrange_names, ptr noundef nonnull %b_fullrange)
  %44 = load i32, ptr %b_error, align 4
  %or161 = or i32 %44, %call160
  store i32 %or161, ptr %b_error, align 4
  br label %if.end1116

if.else162:                                       ; preds = %if.else155
  %call163 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.28) #23
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then165, label %if.else169

if.then165:                                       ; preds = %if.else162
  %i_colorprim = getelementptr inbounds i8, ptr %p, i64 64
  %call167 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_colorprim_names, ptr noundef nonnull %i_colorprim)
  %45 = load i32, ptr %b_error, align 4
  %or168 = or i32 %45, %call167
  store i32 %or168, ptr %b_error, align 4
  br label %if.end1116

if.else169:                                       ; preds = %if.else162
  %call170 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.29) #23
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.then172, label %if.else176

if.then172:                                       ; preds = %if.else169
  %i_transfer = getelementptr inbounds i8, ptr %p, i64 68
  %call174 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_transfer_names, ptr noundef nonnull %i_transfer)
  %46 = load i32, ptr %b_error, align 4
  %or175 = or i32 %46, %call174
  store i32 %or175, ptr %b_error, align 4
  br label %if.end1116

if.else176:                                       ; preds = %if.else169
  %call177 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.30) #23
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.then179, label %if.else183

if.then179:                                       ; preds = %if.else176
  %i_colmatrix = getelementptr inbounds i8, ptr %p, i64 72
  %call181 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_colmatrix_names, ptr noundef nonnull %i_colmatrix)
  %47 = load i32, ptr %b_error, align 4
  %or182 = or i32 %47, %call181
  store i32 %or182, ptr %b_error, align 4
  br label %if.end1116

if.else183:                                       ; preds = %if.else176
  %call184 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.31) #23
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.then186, label %if.else197

if.then186:                                       ; preds = %if.else183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1644) #25
  %call.i1645 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1644, i32 noundef 0) #25
  %conv.i1650 = trunc i64 %call.i1645 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1644) #25
  %i_chroma_loc = getelementptr inbounds i8, ptr %p, i64 76
  store i32 %conv.i1650, ptr %i_chroma_loc, align 4
  %narrow = icmp ugt i32 %conv.i1650, 5
  %lor.ext = zext i1 %narrow to i32
  store i32 %lor.ext, ptr %b_error, align 4
  br label %if.end1116

if.else197:                                       ; preds = %if.else183
  %call198 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.32) #23
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.then200, label %if.else213

if.then200:                                       ; preds = %if.else197
  %i_fps_num = getelementptr inbounds i8, ptr %p, i64 652
  %i_fps_den = getelementptr inbounds i8, ptr %p, i64 656
  %call201 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.33, ptr noundef nonnull %i_fps_num, ptr noundef nonnull %i_fps_den) #25
  %cmp202 = icmp eq i32 %call201, 2
  br i1 %cmp202, label %if.end1116, label %if.else205

if.else205:                                       ; preds = %if.then200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1652) #25
  %call.i1653 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1652) #25
  %48 = load ptr, ptr %end.i1652, align 8
  %cmp.i1654 = icmp eq ptr %48, %value.addr.2
  br i1 %cmp.i1654, label %if.then.i1657, label %lor.lhs.false.i1655

lor.lhs.false.i1655:                              ; preds = %if.else205
  %49 = load i8, ptr %48, align 1
  %cmp1.not.i1656 = icmp eq i8 %49, 0
  br i1 %cmp1.not.i1656, label %x264_atof.exit1658, label %if.then.i1657

if.then.i1657:                                    ; preds = %lor.lhs.false.i1655, %if.else205
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit1658

x264_atof.exit1658:                               ; preds = %lor.lhs.false.i1655, %if.then.i1657
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1652) #25
  %conv207 = fptrunc double %call.i1653 to float
  %mul = fmul float %conv207, 1.000000e+03
  %conv208 = fpext float %mul to double
  %add = fadd double %conv208, 5.000000e-01
  %conv209 = fptosi double %add to i32
  store i32 %conv209, ptr %i_fps_num, align 4
  store i32 1000, ptr %i_fps_den, align 8
  br label %if.end1116

if.else213:                                       ; preds = %if.else197
  %call214 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.34) #23
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.then219, label %lor.lhs.false216

lor.lhs.false216:                                 ; preds = %if.else213
  %call217 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.35) #23
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %if.then219, label %if.else221

if.then219:                                       ; preds = %lor.lhs.false216, %if.else213
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1659) #25
  %call.i1660 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1659, i32 noundef 0) #25
  %50 = load ptr, ptr %end.i1659, align 8
  %cmp.i1661 = icmp eq ptr %50, %value.addr.2
  br i1 %cmp.i1661, label %if.then.i1664, label %lor.lhs.false.i1662

lor.lhs.false.i1662:                              ; preds = %if.then219
  %51 = load i8, ptr %50, align 1
  %cmp3.not.i1663 = icmp eq i8 %51, 0
  br i1 %cmp3.not.i1663, label %x264_atoi.exit1666, label %if.then.i1664

if.then.i1664:                                    ; preds = %lor.lhs.false.i1662, %if.then219
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1666

x264_atoi.exit1666:                               ; preds = %lor.lhs.false.i1662, %if.then.i1664
  %conv.i1665 = trunc i64 %call.i1660 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1659) #25
  %i_frame_reference = getelementptr inbounds i8, ptr %p, i64 80
  store i32 %conv.i1665, ptr %i_frame_reference, align 8
  br label %if.end1116

if.else221:                                       ; preds = %lor.lhs.false216
  %call222 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.36) #23
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.then224, label %if.else233

if.then224:                                       ; preds = %if.else221
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1667) #25
  %call.i1668 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1667, i32 noundef 0) #25
  %52 = load ptr, ptr %end.i1667, align 8
  %cmp.i1669 = icmp eq ptr %52, %value.addr.2
  br i1 %cmp.i1669, label %if.then.i1672, label %lor.lhs.false.i1670

lor.lhs.false.i1670:                              ; preds = %if.then224
  %53 = load i8, ptr %52, align 1
  %cmp3.not.i1671 = icmp eq i8 %53, 0
  br i1 %cmp3.not.i1671, label %x264_atoi.exit1674, label %if.then.i1672

if.then.i1672:                                    ; preds = %lor.lhs.false.i1670, %if.then224
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1674

x264_atoi.exit1674:                               ; preds = %lor.lhs.false.i1670, %if.then.i1672
  %conv.i1673 = trunc i64 %call.i1668 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1667) #25
  %i_keyint_max = getelementptr inbounds i8, ptr %p, i64 84
  store i32 %conv.i1673, ptr %i_keyint_max, align 4
  %i_keyint_min = getelementptr inbounds i8, ptr %p, i64 88
  %54 = load i32, ptr %i_keyint_min, align 8
  %cmp227 = icmp sgt i32 %54, %conv.i1673
  br i1 %cmp227, label %if.then229, label %if.end1116

if.then229:                                       ; preds = %x264_atoi.exit1674
  store i32 %conv.i1673, ptr %i_keyint_min, align 8
  br label %if.end1116

if.else233:                                       ; preds = %if.else221
  %call234 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.37) #23
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.then239, label %lor.lhs.false236

lor.lhs.false236:                                 ; preds = %if.else233
  %call237 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.38) #23
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.then239, label %if.else250

if.then239:                                       ; preds = %lor.lhs.false236, %if.else233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1675) #25
  %call.i1676 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1675, i32 noundef 0) #25
  %55 = load ptr, ptr %end.i1675, align 8
  %cmp.i1677 = icmp eq ptr %55, %value.addr.2
  br i1 %cmp.i1677, label %if.then.i1680, label %lor.lhs.false.i1678

lor.lhs.false.i1678:                              ; preds = %if.then239
  %56 = load i8, ptr %55, align 1
  %cmp3.not.i1679 = icmp eq i8 %56, 0
  br i1 %cmp3.not.i1679, label %x264_atoi.exit1682, label %if.then.i1680

if.then.i1680:                                    ; preds = %lor.lhs.false.i1678, %if.then239
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1682

x264_atoi.exit1682:                               ; preds = %lor.lhs.false.i1678, %if.then.i1680
  %conv.i1681 = trunc i64 %call.i1676 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1675) #25
  %i_keyint_min241 = getelementptr inbounds i8, ptr %p, i64 88
  store i32 %conv.i1681, ptr %i_keyint_min241, align 8
  %i_keyint_max242 = getelementptr inbounds i8, ptr %p, i64 84
  %57 = load i32, ptr %i_keyint_max242, align 4
  %cmp244 = icmp slt i32 %57, %conv.i1681
  br i1 %cmp244, label %if.then246, label %if.end1116

if.then246:                                       ; preds = %x264_atoi.exit1682
  store i32 %conv.i1681, ptr %i_keyint_max242, align 4
  br label %if.end1116

if.else250:                                       ; preds = %lor.lhs.false236
  %call251 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.39) #23
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.then253, label %if.else263

if.then253:                                       ; preds = %if.else250
  %call254 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %i_scenecut_threshold = getelementptr inbounds i8, ptr %p, i64 92
  store i32 %call254, ptr %i_scenecut_threshold, align 4
  %58 = load i32, ptr %b_error, align 4
  %tobool255.not = icmp eq i32 %58, 0
  %tobool258.not = icmp eq i32 %call254, 0
  %or.cond = select i1 %tobool255.not, i1 %tobool258.not, i1 false
  br i1 %or.cond, label %if.end1116, label %if.then259

if.then259:                                       ; preds = %if.then253
  store i32 0, ptr %b_error, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1683) #25
  %call.i1684 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1683, i32 noundef 0) #25
  %59 = load ptr, ptr %end.i1683, align 8
  %cmp.i1685 = icmp eq ptr %59, %value.addr.2
  br i1 %cmp.i1685, label %if.then.i1688, label %lor.lhs.false.i1686

lor.lhs.false.i1686:                              ; preds = %if.then259
  %60 = load i8, ptr %59, align 1
  %cmp3.not.i1687 = icmp eq i8 %60, 0
  br i1 %cmp3.not.i1687, label %x264_atoi.exit1690, label %if.then.i1688

if.then.i1688:                                    ; preds = %lor.lhs.false.i1686, %if.then259
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1690

x264_atoi.exit1690:                               ; preds = %lor.lhs.false.i1686, %if.then.i1688
  %conv.i1689 = trunc i64 %call.i1684 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1683) #25
  store i32 %conv.i1689, ptr %i_scenecut_threshold, align 4
  br label %if.end1116

if.else263:                                       ; preds = %if.else250
  %call264 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(14) @.str.40) #23
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.then266, label %if.else268

if.then266:                                       ; preds = %if.else263
  %call267 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_intra_refresh = getelementptr inbounds i8, ptr %p, i64 96
  store i32 %call267, ptr %b_intra_refresh, align 8
  br label %if.end1116

if.else268:                                       ; preds = %if.else263
  %call269 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.41) #23
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.then271, label %if.else273

if.then271:                                       ; preds = %if.else268
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1691) #25
  %call.i1692 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1691, i32 noundef 0) #25
  %61 = load ptr, ptr %end.i1691, align 8
  %cmp.i1693 = icmp eq ptr %61, %value.addr.2
  br i1 %cmp.i1693, label %if.then.i1696, label %lor.lhs.false.i1694

lor.lhs.false.i1694:                              ; preds = %if.then271
  %62 = load i8, ptr %61, align 1
  %cmp3.not.i1695 = icmp eq i8 %62, 0
  br i1 %cmp3.not.i1695, label %x264_atoi.exit1698, label %if.then.i1696

if.then.i1696:                                    ; preds = %lor.lhs.false.i1694, %if.then271
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1698

x264_atoi.exit1698:                               ; preds = %lor.lhs.false.i1694, %if.then.i1696
  %conv.i1697 = trunc i64 %call.i1692 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1691) #25
  %i_bframe = getelementptr inbounds i8, ptr %p, i64 100
  store i32 %conv.i1697, ptr %i_bframe, align 4
  br label %if.end1116

if.else273:                                       ; preds = %if.else268
  %call274 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.42) #23
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %if.then276, label %if.else283

if.then276:                                       ; preds = %if.else273
  %call277 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %i_bframe_adaptive = getelementptr inbounds i8, ptr %p, i64 104
  store i32 %call277, ptr %i_bframe_adaptive, align 8
  %63 = load i32, ptr %b_error, align 4
  %tobool278.not = icmp eq i32 %63, 0
  br i1 %tobool278.not, label %if.end1116, label %if.then279

if.then279:                                       ; preds = %if.then276
  store i32 0, ptr %b_error, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1699) #25
  %call.i1700 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1699, i32 noundef 0) #25
  %64 = load ptr, ptr %end.i1699, align 8
  %cmp.i1701 = icmp eq ptr %64, %value.addr.2
  br i1 %cmp.i1701, label %if.then.i1704, label %lor.lhs.false.i1702

lor.lhs.false.i1702:                              ; preds = %if.then279
  %65 = load i8, ptr %64, align 1
  %cmp3.not.i1703 = icmp eq i8 %65, 0
  br i1 %cmp3.not.i1703, label %x264_atoi.exit1706, label %if.then.i1704

if.then.i1704:                                    ; preds = %lor.lhs.false.i1702, %if.then279
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1706

x264_atoi.exit1706:                               ; preds = %lor.lhs.false.i1702, %if.then.i1704
  %conv.i1705 = trunc i64 %call.i1700 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1699) #25
  store i32 %conv.i1705, ptr %i_bframe_adaptive, align 8
  br label %if.end1116

if.else283:                                       ; preds = %if.else273
  %call284 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.43) #23
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.then286, label %if.else288

if.then286:                                       ; preds = %if.else283
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1707) #25
  %call.i1708 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1707, i32 noundef 0) #25
  %66 = load ptr, ptr %end.i1707, align 8
  %cmp.i1709 = icmp eq ptr %66, %value.addr.2
  br i1 %cmp.i1709, label %if.then.i1712, label %lor.lhs.false.i1710

lor.lhs.false.i1710:                              ; preds = %if.then286
  %67 = load i8, ptr %66, align 1
  %cmp3.not.i1711 = icmp eq i8 %67, 0
  br i1 %cmp3.not.i1711, label %x264_atoi.exit1714, label %if.then.i1712

if.then.i1712:                                    ; preds = %lor.lhs.false.i1710, %if.then286
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1714

x264_atoi.exit1714:                               ; preds = %lor.lhs.false.i1710, %if.then.i1712
  %conv.i1713 = trunc i64 %call.i1708 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1707) #25
  %i_bframe_bias = getelementptr inbounds i8, ptr %p, i64 108
  store i32 %conv.i1713, ptr %i_bframe_bias, align 4
  br label %if.end1116

if.else288:                                       ; preds = %if.else283
  %call289 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.44) #23
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %if.then291, label %sub_02006

if.then291:                                       ; preds = %if.else288
  %i_bframe_pyramid = getelementptr inbounds i8, ptr %p, i64 112
  %call292 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_b_pyramid_names, ptr noundef nonnull %i_bframe_pyramid)
  %68 = load i32, ptr %b_error, align 4
  %or293 = or i32 %68, %call292
  store i32 %or293, ptr %b_error, align 4
  %tobool294.not = icmp eq i32 %or293, 0
  br i1 %tobool294.not, label %if.end1116, label %if.then295

if.then295:                                       ; preds = %if.then291
  store i32 0, ptr %b_error, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1715) #25
  %call.i1716 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1715, i32 noundef 0) #25
  %69 = load ptr, ptr %end.i1715, align 8
  %cmp.i1717 = icmp eq ptr %69, %value.addr.2
  br i1 %cmp.i1717, label %if.then.i1720, label %lor.lhs.false.i1718

lor.lhs.false.i1718:                              ; preds = %if.then295
  %70 = load i8, ptr %69, align 1
  %cmp3.not.i1719 = icmp eq i8 %70, 0
  br i1 %cmp3.not.i1719, label %x264_atoi.exit1722, label %if.then.i1720

if.then.i1720:                                    ; preds = %lor.lhs.false.i1718, %if.then295
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1722

x264_atoi.exit1722:                               ; preds = %lor.lhs.false.i1718, %if.then.i1720
  %conv.i1721 = trunc i64 %call.i1716 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1715) #25
  store i32 %conv.i1721, ptr %i_bframe_pyramid, align 8
  br label %if.end1116

sub_02006:                                        ; preds = %if.else288
  %71 = load i8, ptr %name.addr.1, align 1
  %72 = zext i8 %71 to i32
  %73 = add nsw i32 %72, -110
  %.not2038 = icmp eq i32 %73, 0
  br i1 %.not2038, label %sub_12007, label %if.else299.tail

sub_12007:                                        ; preds = %sub_02006
  %74 = getelementptr inbounds i8, ptr %name.addr.1, i64 1
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %76, -102
  %.not2039 = icmp eq i32 %77, 0
  br i1 %.not2039, label %sub_22008, label %if.else299.tail

sub_22008:                                        ; preds = %sub_12007
  %78 = getelementptr inbounds i8, ptr %name.addr.1, i64 2
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  br label %if.else299.tail

if.else299.tail:                                  ; preds = %sub_02006, %sub_12007, %sub_22008
  %81 = phi i32 [ %73, %sub_02006 ], [ %77, %sub_12007 ], [ %80, %sub_22008 ]
  %tobool301.not = icmp eq i32 %81, 0
  br i1 %tobool301.not, label %if.then302, label %if.else307

if.then302:                                       ; preds = %if.else299.tail
  %call303 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %lnot.ext306 = xor i32 %call303, 1
  %b_deblocking_filter = getelementptr inbounds i8, ptr %p, i64 116
  store i32 %lnot.ext306, ptr %b_deblocking_filter, align 4
  br label %if.end1116

if.else307:                                       ; preds = %if.else299.tail
  %call308 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.46) #23
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %if.then313, label %lor.lhs.false310

lor.lhs.false310:                                 ; preds = %if.else307
  %call311 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.47) #23
  %tobool312.not = icmp eq i32 %call311, 0
  br i1 %tobool312.not, label %if.then313, label %if.else338

if.then313:                                       ; preds = %lor.lhs.false310, %if.else307
  %i_deblocking_filter_alphac0 = getelementptr inbounds i8, ptr %p, i64 120
  %i_deblocking_filter_beta = getelementptr inbounds i8, ptr %p, i64 124
  %call314 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.23, ptr noundef nonnull %i_deblocking_filter_alphac0, ptr noundef nonnull %i_deblocking_filter_beta) #25
  %cmp315 = icmp eq i32 %call314, 2
  br i1 %cmp315, label %if.then323, label %lor.lhs.false317

lor.lhs.false317:                                 ; preds = %if.then313
  %call320 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.48, ptr noundef nonnull %i_deblocking_filter_alphac0, ptr noundef nonnull %i_deblocking_filter_beta) #25
  %cmp321 = icmp eq i32 %call320, 2
  br i1 %cmp321, label %if.then323, label %if.else325

if.then323:                                       ; preds = %lor.lhs.false317, %if.then313
  %b_deblocking_filter324 = getelementptr inbounds i8, ptr %p, i64 116
  store i32 1, ptr %b_deblocking_filter324, align 4
  br label %if.end1116

if.else325:                                       ; preds = %lor.lhs.false317
  %call327 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.49, ptr noundef nonnull %i_deblocking_filter_alphac0) #25
  %tobool328.not = icmp eq i32 %call327, 0
  br i1 %tobool328.not, label %if.else333, label %if.then329

if.then329:                                       ; preds = %if.else325
  %b_deblocking_filter330 = getelementptr inbounds i8, ptr %p, i64 116
  store i32 1, ptr %b_deblocking_filter330, align 4
  %82 = load i32, ptr %i_deblocking_filter_alphac0, align 8
  store i32 %82, ptr %i_deblocking_filter_beta, align 4
  br label %if.end1116

if.else333:                                       ; preds = %if.else325
  %call334 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_deblocking_filter335 = getelementptr inbounds i8, ptr %p, i64 116
  store i32 %call334, ptr %b_deblocking_filter335, align 4
  br label %if.end1116

if.else338:                                       ; preds = %lor.lhs.false310
  %call339 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.50) #23
  %tobool340.not = icmp eq i32 %call339, 0
  br i1 %tobool340.not, label %if.then341, label %if.else343

if.then341:                                       ; preds = %if.else338
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1723) #25
  %call.i1724 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1723, i32 noundef 0) #25
  %83 = load ptr, ptr %end.i1723, align 8
  %cmp.i1725 = icmp eq ptr %83, %value.addr.2
  br i1 %cmp.i1725, label %if.then.i1728, label %lor.lhs.false.i1726

lor.lhs.false.i1726:                              ; preds = %if.then341
  %84 = load i8, ptr %83, align 1
  %cmp3.not.i1727 = icmp eq i8 %84, 0
  br i1 %cmp3.not.i1727, label %x264_atoi.exit1730, label %if.then.i1728

if.then.i1728:                                    ; preds = %lor.lhs.false.i1726, %if.then341
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1730

x264_atoi.exit1730:                               ; preds = %lor.lhs.false.i1726, %if.then.i1728
  %conv.i1729 = trunc i64 %call.i1724 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1723) #25
  %i_slice_max_size = getelementptr inbounds i8, ptr %p, i64 684
  store i32 %conv.i1729, ptr %i_slice_max_size, align 4
  br label %if.end1116

if.else343:                                       ; preds = %if.else338
  %call344 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(14) @.str.51) #23
  %tobool345.not = icmp eq i32 %call344, 0
  br i1 %tobool345.not, label %if.then346, label %if.else348

if.then346:                                       ; preds = %if.else343
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1731) #25
  %call.i1732 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1731, i32 noundef 0) #25
  %85 = load ptr, ptr %end.i1731, align 8
  %cmp.i1733 = icmp eq ptr %85, %value.addr.2
  br i1 %cmp.i1733, label %if.then.i1736, label %lor.lhs.false.i1734

lor.lhs.false.i1734:                              ; preds = %if.then346
  %86 = load i8, ptr %85, align 1
  %cmp3.not.i1735 = icmp eq i8 %86, 0
  br i1 %cmp3.not.i1735, label %x264_atoi.exit1738, label %if.then.i1736

if.then.i1736:                                    ; preds = %lor.lhs.false.i1734, %if.then346
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1738

x264_atoi.exit1738:                               ; preds = %lor.lhs.false.i1734, %if.then.i1736
  %conv.i1737 = trunc i64 %call.i1732 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1731) #25
  %i_slice_max_mbs = getelementptr inbounds i8, ptr %p, i64 688
  store i32 %conv.i1737, ptr %i_slice_max_mbs, align 8
  br label %if.end1116

if.else348:                                       ; preds = %if.else343
  %call349 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.52) #23
  %tobool350.not = icmp eq i32 %call349, 0
  br i1 %tobool350.not, label %if.then351, label %if.else353

if.then351:                                       ; preds = %if.else348
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1739) #25
  %call.i1740 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1739, i32 noundef 0) #25
  %87 = load ptr, ptr %end.i1739, align 8
  %cmp.i1741 = icmp eq ptr %87, %value.addr.2
  br i1 %cmp.i1741, label %if.then.i1744, label %lor.lhs.false.i1742

lor.lhs.false.i1742:                              ; preds = %if.then351
  %88 = load i8, ptr %87, align 1
  %cmp3.not.i1743 = icmp eq i8 %88, 0
  br i1 %cmp3.not.i1743, label %x264_atoi.exit1746, label %if.then.i1744

if.then.i1744:                                    ; preds = %lor.lhs.false.i1742, %if.then351
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1746

x264_atoi.exit1746:                               ; preds = %lor.lhs.false.i1742, %if.then.i1744
  %conv.i1745 = trunc i64 %call.i1740 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1739) #25
  %i_slice_count = getelementptr inbounds i8, ptr %p, i64 692
  store i32 %conv.i1745, ptr %i_slice_count, align 4
  br label %if.end1116

if.else353:                                       ; preds = %if.else348
  %call354 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.53) #23
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %if.then356, label %if.else358

if.then356:                                       ; preds = %if.else353
  %call357 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_cabac = getelementptr inbounds i8, ptr %p, i64 128
  store i32 %call357, ptr %b_cabac, align 8
  br label %if.end1116

if.else358:                                       ; preds = %if.else353
  %call359 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.54) #23
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %if.then361, label %if.else363

if.then361:                                       ; preds = %if.else358
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1747) #25
  %call.i1748 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1747, i32 noundef 0) #25
  %89 = load ptr, ptr %end.i1747, align 8
  %cmp.i1749 = icmp eq ptr %89, %value.addr.2
  br i1 %cmp.i1749, label %if.then.i1752, label %lor.lhs.false.i1750

lor.lhs.false.i1750:                              ; preds = %if.then361
  %90 = load i8, ptr %89, align 1
  %cmp3.not.i1751 = icmp eq i8 %90, 0
  br i1 %cmp3.not.i1751, label %x264_atoi.exit1754, label %if.then.i1752

if.then.i1752:                                    ; preds = %lor.lhs.false.i1750, %if.then361
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1754

x264_atoi.exit1754:                               ; preds = %lor.lhs.false.i1750, %if.then.i1752
  %conv.i1753 = trunc i64 %call.i1748 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1747) #25
  %i_cabac_init_idc = getelementptr inbounds i8, ptr %p, i64 132
  store i32 %conv.i1753, ptr %i_cabac_init_idc, align 4
  br label %if.end1116

if.else363:                                       ; preds = %if.else358
  %call364 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.55) #23
  %tobool365.not = icmp eq i32 %call364, 0
  br i1 %tobool365.not, label %if.then366, label %if.else368

if.then366:                                       ; preds = %if.else363
  %call367 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_interlaced = getelementptr inbounds i8, ptr %p, i64 136
  store i32 %call367, ptr %b_interlaced, align 8
  br label %if.end1116

if.else368:                                       ; preds = %if.else363
  %call369 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.56) #23
  %tobool370.not = icmp eq i32 %call369, 0
  br i1 %tobool370.not, label %if.then371, label %if.else374

if.then371:                                       ; preds = %if.else368
  %call372 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_tff = getelementptr inbounds i8, ptr %p, i64 672
  store i32 %call372, ptr %b_tff, align 8
  %b_interlaced373 = getelementptr inbounds i8, ptr %p, i64 136
  store i32 %call372, ptr %b_interlaced373, align 8
  br label %if.end1116

if.else374:                                       ; preds = %if.else368
  %call375 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.57) #23
  %tobool376.not = icmp eq i32 %call375, 0
  br i1 %tobool376.not, label %if.then377, label %if.else385

if.then377:                                       ; preds = %if.else374
  %call378 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_interlaced379 = getelementptr inbounds i8, ptr %p, i64 136
  store i32 %call378, ptr %b_interlaced379, align 8
  %lnot.ext383 = xor i32 %call378, 1
  %b_tff384 = getelementptr inbounds i8, ptr %p, i64 672
  store i32 %lnot.ext383, ptr %b_tff384, align 8
  br label %if.end1116

if.else385:                                       ; preds = %if.else374
  %call386 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(18) @.str.58) #23
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %if.then388, label %if.else390

if.then388:                                       ; preds = %if.else385
  %call389 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_constrained_intra = getelementptr inbounds i8, ptr %p, i64 140
  store i32 %call389, ptr %b_constrained_intra, align 4
  br label %if.end1116

if.else390:                                       ; preds = %if.else385
  %call391 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.59) #23
  %tobool392.not = icmp eq i32 %call391, 0
  br i1 %tobool392.not, label %if.then393, label %if.else406

if.then393:                                       ; preds = %if.else390
  %call394 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.60) #23
  %tobool395.not = icmp eq ptr %call394, null
  br i1 %tobool395.not, label %if.else397, label %if.then396

if.then396:                                       ; preds = %if.then393
  %i_cqm_preset = getelementptr inbounds i8, ptr %p, i64 144
  store i32 0, ptr %i_cqm_preset, align 8
  br label %if.end1116

if.else397:                                       ; preds = %if.then393
  %call398 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.61) #23
  %tobool399.not = icmp eq ptr %call398, null
  br i1 %tobool399.not, label %if.else402, label %if.then400

if.then400:                                       ; preds = %if.else397
  %i_cqm_preset401 = getelementptr inbounds i8, ptr %p, i64 144
  store i32 1, ptr %i_cqm_preset401, align 8
  br label %if.end1116

if.else402:                                       ; preds = %if.else397
  %call403 = tail call ptr @spec_strdup(ptr noundef %value.addr.2)
  %psz_cqm_file = getelementptr inbounds i8, ptr %p, i64 152
  store ptr %call403, ptr %psz_cqm_file, align 8
  br label %if.end1116

if.else406:                                       ; preds = %if.else390
  %call407 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.62) #23
  %tobool408.not = icmp eq i32 %call407, 0
  br i1 %tobool408.not, label %if.then409, label %if.else412

if.then409:                                       ; preds = %if.else406
  %call410 = tail call ptr @spec_strdup(ptr noundef %value.addr.2)
  %psz_cqm_file411 = getelementptr inbounds i8, ptr %p, i64 152
  store ptr %call410, ptr %psz_cqm_file411, align 8
  br label %if.end1116

if.else412:                                       ; preds = %if.else406
  %call413 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(5) @.str.63) #23
  %tobool414.not = icmp eq i32 %call413, 0
  br i1 %tobool414.not, label %if.then415, label %if.else429

if.then415:                                       ; preds = %if.else412
  %i_cqm_preset416 = getelementptr inbounds i8, ptr %p, i64 144
  store i32 2, ptr %i_cqm_preset416, align 8
  %cqm_4iy = getelementptr inbounds i8, ptr %p, i64 160
  %call418 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4iy, i32 noundef 16)
  %91 = load i32, ptr %b_error, align 4
  %or419 = or i32 %91, %call418
  %cqm_4ic = getelementptr inbounds i8, ptr %p, i64 176
  %call421 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4ic, i32 noundef 16)
  %or422 = or i32 %or419, %call421
  %cqm_4py = getelementptr inbounds i8, ptr %p, i64 192
  %call424 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4py, i32 noundef 16)
  %or425 = or i32 %or422, %call424
  %cqm_4pc = getelementptr inbounds i8, ptr %p, i64 208
  %call427 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4pc, i32 noundef 16)
  %or428 = or i32 %or425, %call427
  store i32 %or428, ptr %b_error, align 4
  br label %if.end1116

if.else429:                                       ; preds = %if.else412
  %call430 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(5) @.str.64) #23
  %tobool431.not = icmp eq i32 %call430, 0
  br i1 %tobool431.not, label %if.then432, label %if.else440

if.then432:                                       ; preds = %if.else429
  %i_cqm_preset433 = getelementptr inbounds i8, ptr %p, i64 144
  store i32 2, ptr %i_cqm_preset433, align 8
  %cqm_8iy = getelementptr inbounds i8, ptr %p, i64 224
  %call435 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_8iy, i32 noundef 64)
  %92 = load i32, ptr %b_error, align 4
  %or436 = or i32 %92, %call435
  %cqm_8py = getelementptr inbounds i8, ptr %p, i64 288
  %call438 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_8py, i32 noundef 64)
  %or439 = or i32 %or436, %call438
  store i32 %or439, ptr %b_error, align 4
  br label %if.end1116

if.else440:                                       ; preds = %if.else429
  %call441 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.65) #23
  %tobool442.not = icmp eq i32 %call441, 0
  br i1 %tobool442.not, label %if.then443, label %if.else453

if.then443:                                       ; preds = %if.else440
  %i_cqm_preset444 = getelementptr inbounds i8, ptr %p, i64 144
  store i32 2, ptr %i_cqm_preset444, align 8
  %cqm_4iy445 = getelementptr inbounds i8, ptr %p, i64 160
  %call447 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4iy445, i32 noundef 16)
  %93 = load i32, ptr %b_error, align 4
  %or448 = or i32 %93, %call447
  %cqm_4ic449 = getelementptr inbounds i8, ptr %p, i64 176
  %call451 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4ic449, i32 noundef 16)
  %or452 = or i32 %or448, %call451
  store i32 %or452, ptr %b_error, align 4
  br label %if.end1116

if.else453:                                       ; preds = %if.else440
  %call454 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.66) #23
  %tobool455.not = icmp eq i32 %call454, 0
  br i1 %tobool455.not, label %if.then456, label %if.else466

if.then456:                                       ; preds = %if.else453
  %i_cqm_preset457 = getelementptr inbounds i8, ptr %p, i64 144
  store i32 2, ptr %i_cqm_preset457, align 8
  %cqm_4py458 = getelementptr inbounds i8, ptr %p, i64 192
  %call460 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4py458, i32 noundef 16)
  %94 = load i32, ptr %b_error, align 4
  %or461 = or i32 %94, %call460
  %cqm_4pc462 = getelementptr inbounds i8, ptr %p, i64 208
  %call464 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4pc462, i32 noundef 16)
  %or465 = or i32 %or461, %call464
  store i32 %or465, ptr %b_error, align 4
  br label %if.end1116

if.else466:                                       ; preds = %if.else453
  %call467 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.67) #23
  %tobool468.not = icmp eq i32 %call467, 0
  br i1 %tobool468.not, label %if.then469, label %if.else475

if.then469:                                       ; preds = %if.else466
  %i_cqm_preset470 = getelementptr inbounds i8, ptr %p, i64 144
  store i32 2, ptr %i_cqm_preset470, align 8
  %cqm_4iy471 = getelementptr inbounds i8, ptr %p, i64 160
  %call473 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4iy471, i32 noundef 16)
  %95 = load i32, ptr %b_error, align 4
  %or474 = or i32 %95, %call473
  store i32 %or474, ptr %b_error, align 4
  br label %if.end1116

if.else475:                                       ; preds = %if.else466
  %call476 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.68) #23
  %tobool477.not = icmp eq i32 %call476, 0
  br i1 %tobool477.not, label %if.then478, label %if.else484

if.then478:                                       ; preds = %if.else475
  %i_cqm_preset479 = getelementptr inbounds i8, ptr %p, i64 144
  store i32 2, ptr %i_cqm_preset479, align 8
  %cqm_4ic480 = getelementptr inbounds i8, ptr %p, i64 176
  %call482 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4ic480, i32 noundef 16)
  %96 = load i32, ptr %b_error, align 4
  %or483 = or i32 %96, %call482
  store i32 %or483, ptr %b_error, align 4
  br label %if.end1116

if.else484:                                       ; preds = %if.else475
  %call485 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.69) #23
  %tobool486.not = icmp eq i32 %call485, 0
  br i1 %tobool486.not, label %if.then487, label %if.else493

if.then487:                                       ; preds = %if.else484
  %i_cqm_preset488 = getelementptr inbounds i8, ptr %p, i64 144
  store i32 2, ptr %i_cqm_preset488, align 8
  %cqm_4py489 = getelementptr inbounds i8, ptr %p, i64 192
  %call491 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4py489, i32 noundef 16)
  %97 = load i32, ptr %b_error, align 4
  %or492 = or i32 %97, %call491
  store i32 %or492, ptr %b_error, align 4
  br label %if.end1116

if.else493:                                       ; preds = %if.else484
  %call494 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.70) #23
  %tobool495.not = icmp eq i32 %call494, 0
  br i1 %tobool495.not, label %if.then496, label %if.else502

if.then496:                                       ; preds = %if.else493
  %i_cqm_preset497 = getelementptr inbounds i8, ptr %p, i64 144
  store i32 2, ptr %i_cqm_preset497, align 8
  %cqm_4pc498 = getelementptr inbounds i8, ptr %p, i64 208
  %call500 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4pc498, i32 noundef 16)
  %98 = load i32, ptr %b_error, align 4
  %or501 = or i32 %98, %call500
  store i32 %or501, ptr %b_error, align 4
  br label %if.end1116

if.else502:                                       ; preds = %if.else493
  %call503 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.71) #23
  %tobool504.not = icmp eq i32 %call503, 0
  br i1 %tobool504.not, label %if.then505, label %if.else511

if.then505:                                       ; preds = %if.else502
  %i_cqm_preset506 = getelementptr inbounds i8, ptr %p, i64 144
  store i32 2, ptr %i_cqm_preset506, align 8
  %cqm_8iy507 = getelementptr inbounds i8, ptr %p, i64 224
  %call509 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_8iy507, i32 noundef 64)
  %99 = load i32, ptr %b_error, align 4
  %or510 = or i32 %99, %call509
  store i32 %or510, ptr %b_error, align 4
  br label %if.end1116

if.else511:                                       ; preds = %if.else502
  %call512 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.72) #23
  %tobool513.not = icmp eq i32 %call512, 0
  br i1 %tobool513.not, label %if.then514, label %if.else520

if.then514:                                       ; preds = %if.else511
  %i_cqm_preset515 = getelementptr inbounds i8, ptr %p, i64 144
  store i32 2, ptr %i_cqm_preset515, align 8
  %cqm_8py516 = getelementptr inbounds i8, ptr %p, i64 288
  %call518 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_8py516, i32 noundef 64)
  %100 = load i32, ptr %b_error, align 4
  %or519 = or i32 %100, %call518
  store i32 %or519, ptr %b_error, align 4
  br label %if.end1116

if.else520:                                       ; preds = %if.else511
  %call521 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.73) #23
  %tobool522.not = icmp eq i32 %call521, 0
  br i1 %tobool522.not, label %if.then523, label %if.else525

if.then523:                                       ; preds = %if.else520
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1755) #25
  %call.i1756 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1755, i32 noundef 0) #25
  %101 = load ptr, ptr %end.i1755, align 8
  %cmp.i1757 = icmp eq ptr %101, %value.addr.2
  br i1 %cmp.i1757, label %if.then.i1760, label %lor.lhs.false.i1758

lor.lhs.false.i1758:                              ; preds = %if.then523
  %102 = load i8, ptr %101, align 1
  %cmp3.not.i1759 = icmp eq i8 %102, 0
  br i1 %cmp3.not.i1759, label %x264_atoi.exit1762, label %if.then.i1760

if.then.i1760:                                    ; preds = %lor.lhs.false.i1758, %if.then523
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1762

x264_atoi.exit1762:                               ; preds = %lor.lhs.false.i1758, %if.then.i1760
  %conv.i1761 = trunc i64 %call.i1756 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1755) #25
  %i_log_level = getelementptr inbounds i8, ptr %p, i64 368
  store i32 %conv.i1761, ptr %i_log_level, align 8
  br label %if.end1116

if.else525:                                       ; preds = %if.else520
  %call526 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.74) #23
  %tobool527.not = icmp eq i32 %call526, 0
  br i1 %tobool527.not, label %if.then528, label %if.else530

if.then528:                                       ; preds = %if.else525
  %call529 = tail call ptr @spec_strdup(ptr noundef %value.addr.2)
  %psz_dump_yuv = getelementptr inbounds i8, ptr %p, i64 376
  store ptr %call529, ptr %psz_dump_yuv, align 8
  br label %if.end1116

if.else530:                                       ; preds = %if.else525
  %call531 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.75) #23
  %tobool532.not = icmp eq i32 %call531, 0
  br i1 %tobool532.not, label %if.then536, label %lor.lhs.false533

lor.lhs.false533:                                 ; preds = %if.else530
  %call534 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.76) #23
  %tobool535.not = icmp eq i32 %call534, 0
  br i1 %tobool535.not, label %if.then536, label %if.else584

if.then536:                                       ; preds = %lor.lhs.false533, %if.else530
  %inter = getelementptr inbounds i8, ptr %p, i64 388
  store i32 0, ptr %inter, align 4
  %call543 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.78) #23
  %tobool544.not = icmp ne ptr %call543, null
  %spec.store.select1594 = sext i1 %tobool544.not to i32
  store i32 %spec.store.select1594, ptr %inter, align 4
  %call549 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.79) #23
  %tobool550.not = icmp eq ptr %call549, null
  br i1 %tobool550.not, label %if.end555, label %if.then551

if.then551:                                       ; preds = %if.then536
  %or554 = select i1 %tobool544.not, i32 -1, i32 1
  store i32 %or554, ptr %inter, align 4
  br label %if.end555

if.end555:                                        ; preds = %if.then551, %if.then536
  %103 = phi i32 [ %or554, %if.then551 ], [ %spec.store.select1594, %if.then536 ]
  %call556 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.80) #23
  %tobool557.not = icmp eq ptr %call556, null
  br i1 %tobool557.not, label %if.end562, label %if.then558

if.then558:                                       ; preds = %if.end555
  %or561 = or i32 %103, 2
  store i32 %or561, ptr %inter, align 4
  br label %if.end562

if.end562:                                        ; preds = %if.then558, %if.end555
  %104 = phi i32 [ %or561, %if.then558 ], [ %103, %if.end555 ]
  %call563 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.81) #23
  %tobool564.not = icmp eq ptr %call563, null
  br i1 %tobool564.not, label %if.end569, label %if.then565

if.then565:                                       ; preds = %if.end562
  %or568 = or i32 %104, 16
  store i32 %or568, ptr %inter, align 4
  br label %if.end569

if.end569:                                        ; preds = %if.then565, %if.end562
  %105 = phi i32 [ %or568, %if.then565 ], [ %104, %if.end562 ]
  %call570 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.82) #23
  %tobool571.not = icmp eq ptr %call570, null
  br i1 %tobool571.not, label %if.end576, label %if.then572

if.then572:                                       ; preds = %if.end569
  %or575 = or i32 %105, 32
  store i32 %or575, ptr %inter, align 4
  br label %if.end576

if.end576:                                        ; preds = %if.then572, %if.end569
  %106 = phi i32 [ %or575, %if.then572 ], [ %105, %if.end569 ]
  %call577 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.83) #23
  %tobool578.not = icmp eq ptr %call577, null
  br i1 %tobool578.not, label %if.end1116, label %if.then579

if.then579:                                       ; preds = %if.end576
  %or582 = or i32 %106, 256
  store i32 %or582, ptr %inter, align 4
  br label %if.end1116

if.else584:                                       ; preds = %lor.lhs.false533
  %call585 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.84) #23
  %tobool586.not = icmp eq i32 %call585, 0
  br i1 %tobool586.not, label %if.then587, label %if.else590

if.then587:                                       ; preds = %if.else584
  %call588 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_transform_8x8 = getelementptr inbounds i8, ptr %p, i64 392
  store i32 %call588, ptr %b_transform_8x8, align 8
  br label %if.end1116

if.else590:                                       ; preds = %if.else584
  %call591 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.85) #23
  %tobool592.not = icmp eq i32 %call591, 0
  br i1 %tobool592.not, label %if.then596, label %lor.lhs.false593

lor.lhs.false593:                                 ; preds = %if.else590
  %call594 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.86) #23
  %tobool595.not = icmp eq i32 %call594, 0
  br i1 %tobool595.not, label %if.then596, label %if.else599

if.then596:                                       ; preds = %lor.lhs.false593, %if.else590
  %call597 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_weighted_bipred = getelementptr inbounds i8, ptr %p, i64 400
  store i32 %call597, ptr %b_weighted_bipred, align 8
  br label %if.end1116

if.else599:                                       ; preds = %lor.lhs.false593
  %call600 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.87) #23
  %tobool601.not = icmp eq i32 %call600, 0
  br i1 %tobool601.not, label %if.then602, label %if.else605

if.then602:                                       ; preds = %if.else599
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1763) #25
  %call.i1764 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1763, i32 noundef 0) #25
  %107 = load ptr, ptr %end.i1763, align 8
  %cmp.i1765 = icmp eq ptr %107, %value.addr.2
  br i1 %cmp.i1765, label %if.then.i1768, label %lor.lhs.false.i1766

lor.lhs.false.i1766:                              ; preds = %if.then602
  %108 = load i8, ptr %107, align 1
  %cmp3.not.i1767 = icmp eq i8 %108, 0
  br i1 %cmp3.not.i1767, label %x264_atoi.exit1770, label %if.then.i1768

if.then.i1768:                                    ; preds = %lor.lhs.false.i1766, %if.then602
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1770

x264_atoi.exit1770:                               ; preds = %lor.lhs.false.i1766, %if.then.i1768
  %conv.i1769 = trunc i64 %call.i1764 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1763) #25
  %i_weighted_pred = getelementptr inbounds i8, ptr %p, i64 396
  store i32 %conv.i1769, ptr %i_weighted_pred, align 4
  br label %if.end1116

if.else605:                                       ; preds = %if.else599
  %call606 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.88) #23
  %tobool607.not = icmp eq i32 %call606, 0
  br i1 %tobool607.not, label %if.then611, label %lor.lhs.false608

lor.lhs.false608:                                 ; preds = %if.else605
  %call609 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.89) #23
  %tobool610.not = icmp eq i32 %call609, 0
  br i1 %tobool610.not, label %if.then611, label %if.else615

if.then611:                                       ; preds = %lor.lhs.false608, %if.else605
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %p, i64 404
  %call613 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_direct_pred_names, ptr noundef nonnull %i_direct_mv_pred)
  %109 = load i32, ptr %b_error, align 4
  %or614 = or i32 %109, %call613
  store i32 %or614, ptr %b_error, align 4
  br label %if.end1116

if.else615:                                       ; preds = %lor.lhs.false608
  %call616 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(17) @.str.90) #23
  %tobool617.not = icmp eq i32 %call616, 0
  br i1 %tobool617.not, label %if.then618, label %sub_02010

if.then618:                                       ; preds = %if.else615
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1771) #25
  %call.i1772 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1771, i32 noundef 0) #25
  %110 = load ptr, ptr %end.i1771, align 8
  %cmp.i1773 = icmp eq ptr %110, %value.addr.2
  br i1 %cmp.i1773, label %if.then.i1776, label %lor.lhs.false.i1774

lor.lhs.false.i1774:                              ; preds = %if.then618
  %111 = load i8, ptr %110, align 1
  %cmp3.not.i1775 = icmp eq i8 %111, 0
  br i1 %cmp3.not.i1775, label %x264_atoi.exit1778, label %if.then.i1776

if.then.i1776:                                    ; preds = %lor.lhs.false.i1774, %if.then618
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1778

x264_atoi.exit1778:                               ; preds = %lor.lhs.false.i1774, %if.then.i1776
  %conv.i1777 = trunc i64 %call.i1772 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1771) #25
  %i_chroma_qp_offset = getelementptr inbounds i8, ptr %p, i64 408
  store i32 %conv.i1777, ptr %i_chroma_qp_offset, align 8
  br label %if.end1116

sub_02010:                                        ; preds = %if.else615
  %112 = add nsw i32 %72, -109
  %.not2040 = icmp eq i32 %112, 0
  br i1 %.not2040, label %sub_12011, label %if.else621.tail

sub_12011:                                        ; preds = %sub_02010
  %113 = getelementptr inbounds i8, ptr %name.addr.1, i64 1
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = add nsw i32 %115, -101
  %.not2041 = icmp eq i32 %116, 0
  br i1 %.not2041, label %sub_22012, label %if.else621.tail

sub_22012:                                        ; preds = %sub_12011
  %117 = getelementptr inbounds i8, ptr %name.addr.1, i64 2
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  br label %if.else621.tail

if.else621.tail:                                  ; preds = %sub_02010, %sub_12011, %sub_22012
  %120 = phi i32 [ %112, %sub_02010 ], [ %116, %sub_12011 ], [ %119, %sub_22012 ]
  %tobool623.not = icmp eq i32 %120, 0
  br i1 %tobool623.not, label %if.then624, label %if.else628

if.then624:                                       ; preds = %if.else621.tail
  %i_me_method = getelementptr inbounds i8, ptr %p, i64 412
  %call626 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_motion_est_names, ptr noundef nonnull %i_me_method)
  %121 = load i32, ptr %b_error, align 4
  %or627 = or i32 %121, %call626
  store i32 %or627, ptr %b_error, align 4
  br label %if.end1116

if.else628:                                       ; preds = %if.else621.tail
  %call629 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.92) #23
  %tobool630.not = icmp eq i32 %call629, 0
  br i1 %tobool630.not, label %if.then634, label %lor.lhs.false631

lor.lhs.false631:                                 ; preds = %if.else628
  %call632 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.93) #23
  %tobool633.not = icmp eq i32 %call632, 0
  br i1 %tobool633.not, label %if.then634, label %if.else637

if.then634:                                       ; preds = %lor.lhs.false631, %if.else628
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1779) #25
  %call.i1780 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1779, i32 noundef 0) #25
  %122 = load ptr, ptr %end.i1779, align 8
  %cmp.i1781 = icmp eq ptr %122, %value.addr.2
  br i1 %cmp.i1781, label %if.then.i1784, label %lor.lhs.false.i1782

lor.lhs.false.i1782:                              ; preds = %if.then634
  %123 = load i8, ptr %122, align 1
  %cmp3.not.i1783 = icmp eq i8 %123, 0
  br i1 %cmp3.not.i1783, label %x264_atoi.exit1786, label %if.then.i1784

if.then.i1784:                                    ; preds = %lor.lhs.false.i1782, %if.then634
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1786

x264_atoi.exit1786:                               ; preds = %lor.lhs.false.i1782, %if.then.i1784
  %conv.i1785 = trunc i64 %call.i1780 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1779) #25
  %i_me_range = getelementptr inbounds i8, ptr %p, i64 416
  store i32 %conv.i1785, ptr %i_me_range, align 8
  br label %if.end1116

if.else637:                                       ; preds = %lor.lhs.false631
  %call638 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.94) #23
  %tobool639.not = icmp eq i32 %call638, 0
  br i1 %tobool639.not, label %if.then643, label %lor.lhs.false640

lor.lhs.false640:                                 ; preds = %if.else637
  %call641 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.95) #23
  %tobool642.not = icmp eq i32 %call641, 0
  br i1 %tobool642.not, label %if.then643, label %if.else646

if.then643:                                       ; preds = %lor.lhs.false640, %if.else637
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1787) #25
  %call.i1788 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1787, i32 noundef 0) #25
  %124 = load ptr, ptr %end.i1787, align 8
  %cmp.i1789 = icmp eq ptr %124, %value.addr.2
  br i1 %cmp.i1789, label %if.then.i1792, label %lor.lhs.false.i1790

lor.lhs.false.i1790:                              ; preds = %if.then643
  %125 = load i8, ptr %124, align 1
  %cmp3.not.i1791 = icmp eq i8 %125, 0
  br i1 %cmp3.not.i1791, label %x264_atoi.exit1794, label %if.then.i1792

if.then.i1792:                                    ; preds = %lor.lhs.false.i1790, %if.then643
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1794

x264_atoi.exit1794:                               ; preds = %lor.lhs.false.i1790, %if.then.i1792
  %conv.i1793 = trunc i64 %call.i1788 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1787) #25
  %i_mv_range = getelementptr inbounds i8, ptr %p, i64 420
  store i32 %conv.i1793, ptr %i_mv_range, align 4
  br label %if.end1116

if.else646:                                       ; preds = %lor.lhs.false640
  %call647 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.96) #23
  %tobool648.not = icmp eq i32 %call647, 0
  br i1 %tobool648.not, label %if.then652, label %lor.lhs.false649

lor.lhs.false649:                                 ; preds = %if.else646
  %call650 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(16) @.str.97) #23
  %tobool651.not = icmp eq i32 %call650, 0
  br i1 %tobool651.not, label %if.then652, label %if.else655

if.then652:                                       ; preds = %lor.lhs.false649, %if.else646
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1795) #25
  %call.i1796 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1795, i32 noundef 0) #25
  %126 = load ptr, ptr %end.i1795, align 8
  %cmp.i1797 = icmp eq ptr %126, %value.addr.2
  br i1 %cmp.i1797, label %if.then.i1800, label %lor.lhs.false.i1798

lor.lhs.false.i1798:                              ; preds = %if.then652
  %127 = load i8, ptr %126, align 1
  %cmp3.not.i1799 = icmp eq i8 %127, 0
  br i1 %cmp3.not.i1799, label %x264_atoi.exit1802, label %if.then.i1800

if.then.i1800:                                    ; preds = %lor.lhs.false.i1798, %if.then652
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1802

x264_atoi.exit1802:                               ; preds = %lor.lhs.false.i1798, %if.then.i1800
  %conv.i1801 = trunc i64 %call.i1796 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1795) #25
  %i_mv_range_thread = getelementptr inbounds i8, ptr %p, i64 424
  store i32 %conv.i1801, ptr %i_mv_range_thread, align 8
  br label %if.end1116

if.else655:                                       ; preds = %lor.lhs.false649
  %call656 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.98) #23
  %tobool657.not = icmp eq i32 %call656, 0
  br i1 %tobool657.not, label %if.then661, label %lor.lhs.false658

lor.lhs.false658:                                 ; preds = %if.else655
  %call659 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(5) @.str.99) #23
  %tobool660.not = icmp eq i32 %call659, 0
  br i1 %tobool660.not, label %if.then661, label %if.else664

if.then661:                                       ; preds = %lor.lhs.false658, %if.else655
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1803) #25
  %call.i1804 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1803, i32 noundef 0) #25
  %128 = load ptr, ptr %end.i1803, align 8
  %cmp.i1805 = icmp eq ptr %128, %value.addr.2
  br i1 %cmp.i1805, label %if.then.i1808, label %lor.lhs.false.i1806

lor.lhs.false.i1806:                              ; preds = %if.then661
  %129 = load i8, ptr %128, align 1
  %cmp3.not.i1807 = icmp eq i8 %129, 0
  br i1 %cmp3.not.i1807, label %x264_atoi.exit1810, label %if.then.i1808

if.then.i1808:                                    ; preds = %lor.lhs.false.i1806, %if.then661
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1810

x264_atoi.exit1810:                               ; preds = %lor.lhs.false.i1806, %if.then.i1808
  %conv.i1809 = trunc i64 %call.i1804 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1803) #25
  %i_subpel_refine = getelementptr inbounds i8, ptr %p, i64 428
  store i32 %conv.i1809, ptr %i_subpel_refine, align 4
  br label %if.end1116

if.else664:                                       ; preds = %lor.lhs.false658
  %call665 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.100) #23
  %tobool666.not = icmp eq i32 %call665, 0
  br i1 %tobool666.not, label %if.then667, label %if.else705

if.then667:                                       ; preds = %if.else664
  %f_psy_rd = getelementptr inbounds i8, ptr %p, i64 456
  %f_psy_trellis = getelementptr inbounds i8, ptr %p, i64 460
  %call670 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.101, ptr noundef nonnull %f_psy_rd, ptr noundef nonnull %f_psy_trellis) #25
  %cmp671 = icmp eq i32 %call670, 2
  br i1 %cmp671, label %if.end1116, label %lor.lhs.false673

lor.lhs.false673:                                 ; preds = %if.then667
  %call678 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.102, ptr noundef nonnull %f_psy_rd, ptr noundef nonnull %f_psy_trellis) #25
  %cmp679 = icmp eq i32 %call678, 2
  br i1 %cmp679, label %if.end1116, label %lor.lhs.false681

lor.lhs.false681:                                 ; preds = %lor.lhs.false673
  %call686 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.103, ptr noundef nonnull %f_psy_rd, ptr noundef nonnull %f_psy_trellis) #25
  %cmp687 = icmp eq i32 %call686, 2
  br i1 %cmp687, label %if.end1116, label %if.else690

if.else690:                                       ; preds = %lor.lhs.false681
  %call693 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.104, ptr noundef nonnull %f_psy_rd) #25
  %tobool694.not = icmp eq i32 %call693, 0
  br i1 %tobool694.not, label %if.else698, label %if.then695

if.then695:                                       ; preds = %if.else690
  store float 0.000000e+00, ptr %f_psy_trellis, align 4
  br label %if.end1116

if.else698:                                       ; preds = %if.else690
  store <2 x float> zeroinitializer, ptr %f_psy_rd, align 8
  br label %if.end1116

if.else705:                                       ; preds = %if.else664
  %call706 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.105) #23
  %tobool707.not = icmp eq i32 %call706, 0
  br i1 %tobool707.not, label %if.then708, label %if.else711

if.then708:                                       ; preds = %if.else705
  %call709 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_psy = getelementptr inbounds i8, ptr %p, i64 464
  store i32 %call709, ptr %b_psy, align 8
  br label %if.end1116

if.else711:                                       ; preds = %if.else705
  %call712 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.106) #23
  %tobool713.not = icmp eq i32 %call712, 0
  br i1 %tobool713.not, label %if.then714, label %if.else717

if.then714:                                       ; preds = %if.else711
  %call715 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_chroma_me = getelementptr inbounds i8, ptr %p, i64 432
  store i32 %call715, ptr %b_chroma_me, align 8
  br label %if.end1116

if.else717:                                       ; preds = %if.else711
  %call718 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.107) #23
  %tobool719.not = icmp eq i32 %call718, 0
  br i1 %tobool719.not, label %if.then720, label %if.else723

if.then720:                                       ; preds = %if.else717
  %call721 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_mixed_references = getelementptr inbounds i8, ptr %p, i64 436
  store i32 %call721, ptr %b_mixed_references, align 4
  br label %if.end1116

if.else723:                                       ; preds = %if.else717
  %call724 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.108) #23
  %tobool725.not = icmp eq i32 %call724, 0
  br i1 %tobool725.not, label %if.then726, label %if.else729

if.then726:                                       ; preds = %if.else723
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1811) #25
  %call.i1812 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1811, i32 noundef 0) #25
  %130 = load ptr, ptr %end.i1811, align 8
  %cmp.i1813 = icmp eq ptr %130, %value.addr.2
  br i1 %cmp.i1813, label %if.then.i1816, label %lor.lhs.false.i1814

lor.lhs.false.i1814:                              ; preds = %if.then726
  %131 = load i8, ptr %130, align 1
  %cmp3.not.i1815 = icmp eq i8 %131, 0
  br i1 %cmp3.not.i1815, label %x264_atoi.exit1818, label %if.then.i1816

if.then.i1816:                                    ; preds = %lor.lhs.false.i1814, %if.then726
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1818

x264_atoi.exit1818:                               ; preds = %lor.lhs.false.i1814, %if.then.i1816
  %conv.i1817 = trunc i64 %call.i1812 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1811) #25
  %i_trellis = getelementptr inbounds i8, ptr %p, i64 440
  store i32 %conv.i1817, ptr %i_trellis, align 8
  br label %if.end1116

if.else729:                                       ; preds = %if.else723
  %call730 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.109) #23
  %tobool731.not = icmp eq i32 %call730, 0
  br i1 %tobool731.not, label %if.then732, label %if.else735

if.then732:                                       ; preds = %if.else729
  %call733 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_fast_pskip = getelementptr inbounds i8, ptr %p, i64 444
  store i32 %call733, ptr %b_fast_pskip, align 4
  br label %if.end1116

if.else735:                                       ; preds = %if.else729
  %call736 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(13) @.str.110) #23
  %tobool737.not = icmp eq i32 %call736, 0
  br i1 %tobool737.not, label %if.then738, label %if.else741

if.then738:                                       ; preds = %if.else735
  %call739 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_dct_decimate = getelementptr inbounds i8, ptr %p, i64 448
  store i32 %call739, ptr %b_dct_decimate, align 8
  br label %if.end1116

if.else741:                                       ; preds = %if.else735
  %call742 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.111) #23
  %tobool743.not = icmp eq i32 %call742, 0
  br i1 %tobool743.not, label %if.then744, label %if.else748

if.then744:                                       ; preds = %if.else741
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1819) #25
  %call.i1820 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1819, i32 noundef 0) #25
  %132 = load ptr, ptr %end.i1819, align 8
  %cmp.i1821 = icmp eq ptr %132, %value.addr.2
  br i1 %cmp.i1821, label %if.then.i1824, label %lor.lhs.false.i1822

lor.lhs.false.i1822:                              ; preds = %if.then744
  %133 = load i8, ptr %132, align 1
  %cmp3.not.i1823 = icmp eq i8 %133, 0
  br i1 %cmp3.not.i1823, label %x264_atoi.exit1826, label %if.then.i1824

if.then.i1824:                                    ; preds = %lor.lhs.false.i1822, %if.then744
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1826

x264_atoi.exit1826:                               ; preds = %lor.lhs.false.i1822, %if.then.i1824
  %conv.i1825 = trunc i64 %call.i1820 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1819) #25
  %i_luma_deadzone = getelementptr inbounds i8, ptr %p, i64 468
  store i32 %conv.i1825, ptr %i_luma_deadzone, align 4
  br label %if.end1116

if.else748:                                       ; preds = %if.else741
  %call749 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.112) #23
  %tobool750.not = icmp eq i32 %call749, 0
  br i1 %tobool750.not, label %if.then751, label %sub_02014

if.then751:                                       ; preds = %if.else748
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1827) #25
  %call.i1828 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1827, i32 noundef 0) #25
  %134 = load ptr, ptr %end.i1827, align 8
  %cmp.i1829 = icmp eq ptr %134, %value.addr.2
  br i1 %cmp.i1829, label %if.then.i1832, label %lor.lhs.false.i1830

lor.lhs.false.i1830:                              ; preds = %if.then751
  %135 = load i8, ptr %134, align 1
  %cmp3.not.i1831 = icmp eq i8 %135, 0
  br i1 %cmp3.not.i1831, label %x264_atoi.exit1834, label %if.then.i1832

if.then.i1832:                                    ; preds = %lor.lhs.false.i1830, %if.then751
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1834

x264_atoi.exit1834:                               ; preds = %lor.lhs.false.i1830, %if.then.i1832
  %conv.i1833 = trunc i64 %call.i1828 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1827) #25
  %arrayidx755 = getelementptr inbounds i8, ptr %p, i64 472
  store i32 %conv.i1833, ptr %arrayidx755, align 4
  br label %if.end1116

sub_02014:                                        ; preds = %if.else748
  br i1 %.not2038, label %sub_12015, label %if.else756.tail

sub_12015:                                        ; preds = %sub_02014
  %136 = getelementptr inbounds i8, ptr %name.addr.1, i64 1
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = add nsw i32 %138, -114
  %.not2043 = icmp eq i32 %139, 0
  br i1 %.not2043, label %sub_22016, label %if.else756.tail

sub_22016:                                        ; preds = %sub_12015
  %140 = getelementptr inbounds i8, ptr %name.addr.1, i64 2
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  br label %if.else756.tail

if.else756.tail:                                  ; preds = %sub_02014, %sub_12015, %sub_22016
  %143 = phi i32 [ %73, %sub_02014 ], [ %139, %sub_12015 ], [ %142, %sub_22016 ]
  %tobool758.not = icmp eq i32 %143, 0
  br i1 %tobool758.not, label %if.then759, label %if.else762

if.then759:                                       ; preds = %if.else756.tail
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1835) #25
  %call.i1836 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1835, i32 noundef 0) #25
  %144 = load ptr, ptr %end.i1835, align 8
  %cmp.i1837 = icmp eq ptr %144, %value.addr.2
  br i1 %cmp.i1837, label %if.then.i1840, label %lor.lhs.false.i1838

lor.lhs.false.i1838:                              ; preds = %if.then759
  %145 = load i8, ptr %144, align 1
  %cmp3.not.i1839 = icmp eq i8 %145, 0
  br i1 %cmp3.not.i1839, label %x264_atoi.exit1842, label %if.then.i1840

if.then.i1840:                                    ; preds = %lor.lhs.false.i1838, %if.then759
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1842

x264_atoi.exit1842:                               ; preds = %lor.lhs.false.i1838, %if.then.i1840
  %conv.i1841 = trunc i64 %call.i1836 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1835) #25
  %i_noise_reduction = getelementptr inbounds i8, ptr %p, i64 452
  store i32 %conv.i1841, ptr %i_noise_reduction, align 4
  br label %if.end1116

if.else762:                                       ; preds = %if.else756.tail
  %call763 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.114) #23
  %tobool764.not = icmp eq i32 %call763, 0
  br i1 %tobool764.not, label %if.then765, label %sub_02018

if.then765:                                       ; preds = %if.else762
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1843) #25
  %call.i1844 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1843, i32 noundef 0) #25
  %146 = load ptr, ptr %end.i1843, align 8
  %cmp.i1845 = icmp eq ptr %146, %value.addr.2
  br i1 %cmp.i1845, label %if.then.i1848, label %lor.lhs.false.i1846

lor.lhs.false.i1846:                              ; preds = %if.then765
  %147 = load i8, ptr %146, align 1
  %cmp3.not.i1847 = icmp eq i8 %147, 0
  br i1 %cmp3.not.i1847, label %x264_atoi.exit1850, label %if.then.i1848

if.then.i1848:                                    ; preds = %lor.lhs.false.i1846, %if.then765
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1850

x264_atoi.exit1850:                               ; preds = %lor.lhs.false.i1846, %if.then.i1848
  %conv.i1849 = trunc i64 %call.i1844 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1843) #25
  %rc = getelementptr inbounds i8, ptr %p, i64 488
  %i_bitrate = getelementptr inbounds i8, ptr %p, i64 508
  store i32 %conv.i1849, ptr %i_bitrate, align 4
  store i32 2, ptr %rc, align 8
  br label %if.end1116

sub_02018:                                        ; preds = %if.else762
  %148 = add nsw i32 %72, -113
  %.not2044 = icmp eq i32 %148, 0
  br i1 %.not2044, label %sub_12019, label %if.else768.tail

sub_12019:                                        ; preds = %sub_02018
  %149 = getelementptr inbounds i8, ptr %name.addr.1, i64 1
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = add nsw i32 %151, -112
  %.not2045 = icmp eq i32 %152, 0
  br i1 %.not2045, label %sub_22020, label %if.else768.tail

sub_22020:                                        ; preds = %sub_12019
  %153 = getelementptr inbounds i8, ptr %name.addr.1, i64 2
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  br label %if.else768.tail

if.else768.tail:                                  ; preds = %sub_02018, %sub_12019, %sub_22020
  %156 = phi i32 [ %148, %sub_02018 ], [ %152, %sub_12019 ], [ %155, %sub_22020 ]
  %tobool770.not = icmp eq i32 %156, 0
  br i1 %tobool770.not, label %if.then774, label %lor.lhs.false771

lor.lhs.false771:                                 ; preds = %if.else768.tail
  %call772 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.116) #23
  %tobool773.not = icmp eq i32 %call772, 0
  br i1 %tobool773.not, label %if.then774, label %if.else779

if.then774:                                       ; preds = %lor.lhs.false771, %if.else768.tail
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1851) #25
  %call.i1852 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1851, i32 noundef 0) #25
  %157 = load ptr, ptr %end.i1851, align 8
  %cmp.i1853 = icmp eq ptr %157, %value.addr.2
  br i1 %cmp.i1853, label %if.then.i1856, label %lor.lhs.false.i1854

lor.lhs.false.i1854:                              ; preds = %if.then774
  %158 = load i8, ptr %157, align 1
  %cmp3.not.i1855 = icmp eq i8 %158, 0
  br i1 %cmp3.not.i1855, label %x264_atoi.exit1858, label %if.then.i1856

if.then.i1856:                                    ; preds = %lor.lhs.false.i1854, %if.then774
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1858

x264_atoi.exit1858:                               ; preds = %lor.lhs.false.i1854, %if.then.i1856
  %conv.i1857 = trunc i64 %call.i1852 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1851) #25
  %rc776 = getelementptr inbounds i8, ptr %p, i64 488
  %i_qp_constant = getelementptr inbounds i8, ptr %p, i64 492
  store i32 %conv.i1857, ptr %i_qp_constant, align 4
  store i32 0, ptr %rc776, align 8
  br label %if.end1116

if.else779:                                       ; preds = %lor.lhs.false771
  %call780 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.117) #23
  %tobool781.not = icmp eq i32 %call780, 0
  br i1 %tobool781.not, label %if.then782, label %if.else788

if.then782:                                       ; preds = %if.else779
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1859) #25
  %call.i1860 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1859) #25
  %159 = load ptr, ptr %end.i1859, align 8
  %cmp.i1861 = icmp eq ptr %159, %value.addr.2
  br i1 %cmp.i1861, label %if.then.i1864, label %lor.lhs.false.i1862

lor.lhs.false.i1862:                              ; preds = %if.then782
  %160 = load i8, ptr %159, align 1
  %cmp1.not.i1863 = icmp eq i8 %160, 0
  br i1 %cmp1.not.i1863, label %x264_atof.exit1865, label %if.then.i1864

if.then.i1864:                                    ; preds = %lor.lhs.false.i1862, %if.then782
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit1865

x264_atof.exit1865:                               ; preds = %lor.lhs.false.i1862, %if.then.i1864
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1859) #25
  %conv784 = fptrunc double %call.i1860 to float
  %rc785 = getelementptr inbounds i8, ptr %p, i64 488
  %f_rf_constant = getelementptr inbounds i8, ptr %p, i64 512
  store float %conv784, ptr %f_rf_constant, align 8
  store i32 1, ptr %rc785, align 8
  br label %if.end1116

if.else788:                                       ; preds = %if.else779
  %call789 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.118) #23
  %tobool790.not = icmp eq i32 %call789, 0
  br i1 %tobool790.not, label %if.then791, label %if.else795

if.then791:                                       ; preds = %if.else788
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1866) #25
  %call.i1867 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1866) #25
  %161 = load ptr, ptr %end.i1866, align 8
  %cmp.i1868 = icmp eq ptr %161, %value.addr.2
  br i1 %cmp.i1868, label %if.then.i1871, label %lor.lhs.false.i1869

lor.lhs.false.i1869:                              ; preds = %if.then791
  %162 = load i8, ptr %161, align 1
  %cmp1.not.i1870 = icmp eq i8 %162, 0
  br i1 %cmp1.not.i1870, label %x264_atof.exit1872, label %if.then.i1871

if.then.i1871:                                    ; preds = %lor.lhs.false.i1869, %if.then791
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit1872

x264_atof.exit1872:                               ; preds = %lor.lhs.false.i1869, %if.then.i1871
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1866) #25
  %conv793 = fptrunc double %call.i1867 to float
  %f_rf_constant_max = getelementptr inbounds i8, ptr %p, i64 516
  store float %conv793, ptr %f_rf_constant_max, align 4
  br label %if.end1116

if.else795:                                       ; preds = %if.else788
  %call796 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(13) @.str.119) #23
  %tobool797.not = icmp eq i32 %call796, 0
  br i1 %tobool797.not, label %if.then798, label %if.else801

if.then798:                                       ; preds = %if.else795
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1873) #25
  %call.i1874 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1873, i32 noundef 0) #25
  %163 = load ptr, ptr %end.i1873, align 8
  %cmp.i1875 = icmp eq ptr %163, %value.addr.2
  br i1 %cmp.i1875, label %if.then.i1878, label %lor.lhs.false.i1876

lor.lhs.false.i1876:                              ; preds = %if.then798
  %164 = load i8, ptr %163, align 1
  %cmp3.not.i1877 = icmp eq i8 %164, 0
  br i1 %cmp3.not.i1877, label %x264_atoi.exit1880, label %if.then.i1878

if.then.i1878:                                    ; preds = %lor.lhs.false.i1876, %if.then798
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1880

x264_atoi.exit1880:                               ; preds = %lor.lhs.false.i1876, %if.then.i1878
  %conv.i1879 = trunc i64 %call.i1874 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1873) #25
  %i_lookahead = getelementptr inbounds i8, ptr %p, i64 556
  store i32 %conv.i1879, ptr %i_lookahead, align 4
  br label %if.end1116

if.else801:                                       ; preds = %if.else795
  %call802 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.120) #23
  %tobool803.not = icmp eq i32 %call802, 0
  br i1 %tobool803.not, label %if.then807, label %lor.lhs.false804

lor.lhs.false804:                                 ; preds = %if.else801
  %call805 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.121) #23
  %tobool806.not = icmp eq i32 %call805, 0
  br i1 %tobool806.not, label %if.then807, label %if.else810

if.then807:                                       ; preds = %lor.lhs.false804, %if.else801
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1881) #25
  %call.i1882 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1881, i32 noundef 0) #25
  %165 = load ptr, ptr %end.i1881, align 8
  %cmp.i1883 = icmp eq ptr %165, %value.addr.2
  br i1 %cmp.i1883, label %if.then.i1886, label %lor.lhs.false.i1884

lor.lhs.false.i1884:                              ; preds = %if.then807
  %166 = load i8, ptr %165, align 1
  %cmp3.not.i1885 = icmp eq i8 %166, 0
  br i1 %cmp3.not.i1885, label %x264_atoi.exit1888, label %if.then.i1886

if.then.i1886:                                    ; preds = %lor.lhs.false.i1884, %if.then807
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1888

x264_atoi.exit1888:                               ; preds = %lor.lhs.false.i1884, %if.then.i1886
  %conv.i1887 = trunc i64 %call.i1882 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1881) #25
  %i_qp_min = getelementptr inbounds i8, ptr %p, i64 496
  store i32 %conv.i1887, ptr %i_qp_min, align 8
  br label %if.end1116

if.else810:                                       ; preds = %lor.lhs.false804
  %call811 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.122) #23
  %tobool812.not = icmp eq i32 %call811, 0
  br i1 %tobool812.not, label %if.then816, label %lor.lhs.false813

lor.lhs.false813:                                 ; preds = %if.else810
  %call814 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.123) #23
  %tobool815.not = icmp eq i32 %call814, 0
  br i1 %tobool815.not, label %if.then816, label %if.else819

if.then816:                                       ; preds = %lor.lhs.false813, %if.else810
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1889) #25
  %call.i1890 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1889, i32 noundef 0) #25
  %167 = load ptr, ptr %end.i1889, align 8
  %cmp.i1891 = icmp eq ptr %167, %value.addr.2
  br i1 %cmp.i1891, label %if.then.i1894, label %lor.lhs.false.i1892

lor.lhs.false.i1892:                              ; preds = %if.then816
  %168 = load i8, ptr %167, align 1
  %cmp3.not.i1893 = icmp eq i8 %168, 0
  br i1 %cmp3.not.i1893, label %x264_atoi.exit1896, label %if.then.i1894

if.then.i1894:                                    ; preds = %lor.lhs.false.i1892, %if.then816
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1896

x264_atoi.exit1896:                               ; preds = %lor.lhs.false.i1892, %if.then.i1894
  %conv.i1895 = trunc i64 %call.i1890 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1889) #25
  %i_qp_max = getelementptr inbounds i8, ptr %p, i64 500
  store i32 %conv.i1895, ptr %i_qp_max, align 4
  br label %if.end1116

if.else819:                                       ; preds = %lor.lhs.false813
  %call820 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.124) #23
  %tobool821.not = icmp eq i32 %call820, 0
  br i1 %tobool821.not, label %if.then825, label %lor.lhs.false822

lor.lhs.false822:                                 ; preds = %if.else819
  %call823 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.125) #23
  %tobool824.not = icmp eq i32 %call823, 0
  br i1 %tobool824.not, label %if.then825, label %if.else828

if.then825:                                       ; preds = %lor.lhs.false822, %if.else819
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1897) #25
  %call.i1898 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1897, i32 noundef 0) #25
  %169 = load ptr, ptr %end.i1897, align 8
  %cmp.i1899 = icmp eq ptr %169, %value.addr.2
  br i1 %cmp.i1899, label %if.then.i1902, label %lor.lhs.false.i1900

lor.lhs.false.i1900:                              ; preds = %if.then825
  %170 = load i8, ptr %169, align 1
  %cmp3.not.i1901 = icmp eq i8 %170, 0
  br i1 %cmp3.not.i1901, label %x264_atoi.exit1904, label %if.then.i1902

if.then.i1902:                                    ; preds = %lor.lhs.false.i1900, %if.then825
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1904

x264_atoi.exit1904:                               ; preds = %lor.lhs.false.i1900, %if.then.i1902
  %conv.i1903 = trunc i64 %call.i1898 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1897) #25
  %i_qp_step = getelementptr inbounds i8, ptr %p, i64 504
  store i32 %conv.i1903, ptr %i_qp_step, align 8
  br label %if.end1116

if.else828:                                       ; preds = %lor.lhs.false822
  %call829 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.126) #23
  %tobool830.not = icmp eq i32 %call829, 0
  br i1 %tobool830.not, label %sub_02022, label %if.else841

sub_02022:                                        ; preds = %if.else828
  %171 = load i8, ptr %value.addr.2, align 1
  %172 = zext i8 %171 to i32
  %173 = sub nsw i32 105, %172
  %.not2046 = icmp eq i8 %171, 105
  br i1 %.not2046, label %sub_12023, label %if.then831.tail

sub_12023:                                        ; preds = %sub_02022
  %174 = getelementptr inbounds i8, ptr %value.addr.2, i64 1
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = sub nsw i32 110, %176
  %.not2047 = icmp eq i8 %175, 110
  br i1 %.not2047, label %sub_22024, label %if.then831.tail

sub_22024:                                        ; preds = %sub_12023
  %178 = getelementptr inbounds i8, ptr %value.addr.2, i64 2
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = sub nsw i32 102, %180
  br label %if.then831.tail

if.then831.tail:                                  ; preds = %sub_02022, %sub_12023, %sub_22024
  %182 = phi i32 [ %173, %sub_02022 ], [ %177, %sub_12023 ], [ %181, %sub_22024 ]
  %tobool833.not = icmp eq i32 %182, 0
  br i1 %tobool833.not, label %cond.end837, label %cond.false835

cond.false835:                                    ; preds = %if.then831.tail
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1905) #25
  %call.i1906 = call double @strtod(ptr noundef nonnull %value.addr.2, ptr noundef nonnull %end.i1905) #25
  %183 = load ptr, ptr %end.i1905, align 8
  %cmp.i1907 = icmp eq ptr %183, %value.addr.2
  br i1 %cmp.i1907, label %if.then.i1910, label %lor.lhs.false.i1908

lor.lhs.false.i1908:                              ; preds = %cond.false835
  %184 = load i8, ptr %183, align 1
  %cmp1.not.i1909 = icmp eq i8 %184, 0
  br i1 %cmp1.not.i1909, label %x264_atof.exit1911, label %if.then.i1910

if.then.i1910:                                    ; preds = %lor.lhs.false.i1908, %cond.false835
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit1911

x264_atof.exit1911:                               ; preds = %lor.lhs.false.i1908, %if.then.i1910
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1905) #25
  %185 = fptrunc double %call.i1906 to float
  br label %cond.end837

cond.end837:                                      ; preds = %if.then831.tail, %x264_atof.exit1911
  %cond838 = phi float [ %185, %x264_atof.exit1911 ], [ 1.000000e+09, %if.then831.tail ]
  %f_rate_tolerance = getelementptr inbounds i8, ptr %p, i64 520
  store float %cond838, ptr %f_rate_tolerance, align 8
  br label %if.end1116

if.else841:                                       ; preds = %if.else828
  %call842 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.128) #23
  %tobool843.not = icmp eq i32 %call842, 0
  br i1 %tobool843.not, label %if.then844, label %if.else847

if.then844:                                       ; preds = %if.else841
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1912) #25
  %call.i1913 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1912, i32 noundef 0) #25
  %186 = load ptr, ptr %end.i1912, align 8
  %cmp.i1914 = icmp eq ptr %186, %value.addr.2
  br i1 %cmp.i1914, label %if.then.i1917, label %lor.lhs.false.i1915

lor.lhs.false.i1915:                              ; preds = %if.then844
  %187 = load i8, ptr %186, align 1
  %cmp3.not.i1916 = icmp eq i8 %187, 0
  br i1 %cmp3.not.i1916, label %x264_atoi.exit1919, label %if.then.i1917

if.then.i1917:                                    ; preds = %lor.lhs.false.i1915, %if.then844
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1919

x264_atoi.exit1919:                               ; preds = %lor.lhs.false.i1915, %if.then.i1917
  %conv.i1918 = trunc i64 %call.i1913 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1912) #25
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %p, i64 524
  store i32 %conv.i1918, ptr %i_vbv_max_bitrate, align 4
  br label %if.end1116

if.else847:                                       ; preds = %if.else841
  %call848 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.129) #23
  %tobool849.not = icmp eq i32 %call848, 0
  br i1 %tobool849.not, label %if.then850, label %if.else853

if.then850:                                       ; preds = %if.else847
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1920) #25
  %call.i1921 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1920, i32 noundef 0) #25
  %188 = load ptr, ptr %end.i1920, align 8
  %cmp.i1922 = icmp eq ptr %188, %value.addr.2
  br i1 %cmp.i1922, label %if.then.i1925, label %lor.lhs.false.i1923

lor.lhs.false.i1923:                              ; preds = %if.then850
  %189 = load i8, ptr %188, align 1
  %cmp3.not.i1924 = icmp eq i8 %189, 0
  br i1 %cmp3.not.i1924, label %x264_atoi.exit1927, label %if.then.i1925

if.then.i1925:                                    ; preds = %lor.lhs.false.i1923, %if.then850
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1927

x264_atoi.exit1927:                               ; preds = %lor.lhs.false.i1923, %if.then.i1925
  %conv.i1926 = trunc i64 %call.i1921 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1920) #25
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %p, i64 528
  store i32 %conv.i1926, ptr %i_vbv_buffer_size, align 8
  br label %if.end1116

if.else853:                                       ; preds = %if.else847
  %call854 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.130) #23
  %tobool855.not = icmp eq i32 %call854, 0
  br i1 %tobool855.not, label %if.then856, label %if.else860

if.then856:                                       ; preds = %if.else853
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1928) #25
  %call.i1929 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1928) #25
  %190 = load ptr, ptr %end.i1928, align 8
  %cmp.i1930 = icmp eq ptr %190, %value.addr.2
  br i1 %cmp.i1930, label %if.then.i1933, label %lor.lhs.false.i1931

lor.lhs.false.i1931:                              ; preds = %if.then856
  %191 = load i8, ptr %190, align 1
  %cmp1.not.i1932 = icmp eq i8 %191, 0
  br i1 %cmp1.not.i1932, label %x264_atof.exit1934, label %if.then.i1933

if.then.i1933:                                    ; preds = %lor.lhs.false.i1931, %if.then856
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit1934

x264_atof.exit1934:                               ; preds = %lor.lhs.false.i1931, %if.then.i1933
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1928) #25
  %conv858 = fptrunc double %call.i1929 to float
  %f_vbv_buffer_init = getelementptr inbounds i8, ptr %p, i64 532
  store float %conv858, ptr %f_vbv_buffer_init, align 4
  br label %if.end1116

if.else860:                                       ; preds = %if.else853
  %call861 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.131) #23
  %tobool862.not = icmp eq i32 %call861, 0
  br i1 %tobool862.not, label %if.then866, label %lor.lhs.false863

lor.lhs.false863:                                 ; preds = %if.else860
  %call864 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.132) #23
  %tobool865.not = icmp eq i32 %call864, 0
  br i1 %tobool865.not, label %if.then866, label %if.else870

if.then866:                                       ; preds = %lor.lhs.false863, %if.else860
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1935) #25
  %call.i1936 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1935) #25
  %192 = load ptr, ptr %end.i1935, align 8
  %cmp.i1937 = icmp eq ptr %192, %value.addr.2
  br i1 %cmp.i1937, label %if.then.i1940, label %lor.lhs.false.i1938

lor.lhs.false.i1938:                              ; preds = %if.then866
  %193 = load i8, ptr %192, align 1
  %cmp1.not.i1939 = icmp eq i8 %193, 0
  br i1 %cmp1.not.i1939, label %x264_atof.exit1941, label %if.then.i1940

if.then.i1940:                                    ; preds = %lor.lhs.false.i1938, %if.then866
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit1941

x264_atof.exit1941:                               ; preds = %lor.lhs.false.i1938, %if.then.i1940
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1935) #25
  %conv868 = fptrunc double %call.i1936 to float
  %f_ip_factor = getelementptr inbounds i8, ptr %p, i64 536
  store float %conv868, ptr %f_ip_factor, align 8
  br label %if.end1116

if.else870:                                       ; preds = %lor.lhs.false863
  %call871 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.133) #23
  %tobool872.not = icmp eq i32 %call871, 0
  br i1 %tobool872.not, label %if.then876, label %lor.lhs.false873

lor.lhs.false873:                                 ; preds = %if.else870
  %call874 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.134) #23
  %tobool875.not = icmp eq i32 %call874, 0
  br i1 %tobool875.not, label %if.then876, label %if.else880

if.then876:                                       ; preds = %lor.lhs.false873, %if.else870
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1942) #25
  %call.i1943 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1942) #25
  %194 = load ptr, ptr %end.i1942, align 8
  %cmp.i1944 = icmp eq ptr %194, %value.addr.2
  br i1 %cmp.i1944, label %if.then.i1947, label %lor.lhs.false.i1945

lor.lhs.false.i1945:                              ; preds = %if.then876
  %195 = load i8, ptr %194, align 1
  %cmp1.not.i1946 = icmp eq i8 %195, 0
  br i1 %cmp1.not.i1946, label %x264_atof.exit1948, label %if.then.i1947

if.then.i1947:                                    ; preds = %lor.lhs.false.i1945, %if.then876
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit1948

x264_atof.exit1948:                               ; preds = %lor.lhs.false.i1945, %if.then.i1947
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1942) #25
  %conv878 = fptrunc double %call.i1943 to float
  %f_pb_factor = getelementptr inbounds i8, ptr %p, i64 540
  store float %conv878, ptr %f_pb_factor, align 4
  br label %if.end1116

if.else880:                                       ; preds = %lor.lhs.false873
  %call881 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.135) #23
  %tobool882.not = icmp eq i32 %call881, 0
  br i1 %tobool882.not, label %if.then883, label %if.else886

if.then883:                                       ; preds = %if.else880
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1949) #25
  %call.i1950 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1949, i32 noundef 0) #25
  %196 = load ptr, ptr %end.i1949, align 8
  %cmp.i1951 = icmp eq ptr %196, %value.addr.2
  br i1 %cmp.i1951, label %if.then.i1954, label %lor.lhs.false.i1952

lor.lhs.false.i1952:                              ; preds = %if.then883
  %197 = load i8, ptr %196, align 1
  %cmp3.not.i1953 = icmp eq i8 %197, 0
  br i1 %cmp3.not.i1953, label %x264_atoi.exit1956, label %if.then.i1954

if.then.i1954:                                    ; preds = %lor.lhs.false.i1952, %if.then883
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1956

x264_atoi.exit1956:                               ; preds = %lor.lhs.false.i1952, %if.then.i1954
  %conv.i1955 = trunc i64 %call.i1950 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1949) #25
  %i_aq_mode = getelementptr inbounds i8, ptr %p, i64 544
  store i32 %conv.i1955, ptr %i_aq_mode, align 8
  br label %if.end1116

if.else886:                                       ; preds = %if.else880
  %call887 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.136) #23
  %tobool888.not = icmp eq i32 %call887, 0
  br i1 %tobool888.not, label %if.then889, label %if.else893

if.then889:                                       ; preds = %if.else886
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1957) #25
  %call.i1958 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1957) #25
  %198 = load ptr, ptr %end.i1957, align 8
  %cmp.i1959 = icmp eq ptr %198, %value.addr.2
  br i1 %cmp.i1959, label %if.then.i1962, label %lor.lhs.false.i1960

lor.lhs.false.i1960:                              ; preds = %if.then889
  %199 = load i8, ptr %198, align 1
  %cmp1.not.i1961 = icmp eq i8 %199, 0
  br i1 %cmp1.not.i1961, label %x264_atof.exit1963, label %if.then.i1962

if.then.i1962:                                    ; preds = %lor.lhs.false.i1960, %if.then889
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit1963

x264_atof.exit1963:                               ; preds = %lor.lhs.false.i1960, %if.then.i1962
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1957) #25
  %conv891 = fptrunc double %call.i1958 to float
  %f_aq_strength = getelementptr inbounds i8, ptr %p, i64 548
  store float %conv891, ptr %f_aq_strength, align 4
  br label %if.end1116

if.else893:                                       ; preds = %if.else886
  %call894 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(5) @.str.137) #23
  %tobool895.not = icmp eq i32 %call894, 0
  br i1 %tobool895.not, label %if.then896, label %if.else903

if.then896:                                       ; preds = %if.else893
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1964) #25
  %call.i1965 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1964, i32 noundef 0) #25
  %200 = load ptr, ptr %end.i1964, align 8
  %cmp.i1966 = icmp eq ptr %200, %value.addr.2
  br i1 %cmp.i1966, label %if.then.i1969, label %lor.lhs.false.i1967

lor.lhs.false.i1967:                              ; preds = %if.then896
  %201 = load i8, ptr %200, align 1
  %cmp3.not.i1968 = icmp eq i8 %201, 0
  br i1 %cmp3.not.i1968, label %x264_atoi.exit1971, label %if.then.i1969

if.then.i1969:                                    ; preds = %lor.lhs.false.i1967, %if.then896
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit1971

x264_atoi.exit1971:                               ; preds = %lor.lhs.false.i1967, %if.then.i1969
  %conv.i1970 = trunc i64 %call.i1965 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1964) #25
  %cmp.i1972 = icmp slt i32 %conv.i1970, 0
  %202 = tail call i32 @llvm.umin.i32(i32 %conv.i1970, i32 3)
  %cond5.i = select i1 %cmp.i1972, i32 0, i32 %202
  %and899 = and i32 %cond5.i, 1
  %b_stat_write = getelementptr inbounds i8, ptr %p, i64 560
  store i32 %and899, ptr %b_stat_write, align 8
  %and901 = and i32 %cond5.i, 2
  %b_stat_read = getelementptr inbounds i8, ptr %p, i64 576
  store i32 %and901, ptr %b_stat_read, align 8
  br label %if.end1116

if.else903:                                       ; preds = %if.else893
  %call904 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.138) #23
  %tobool905.not = icmp eq i32 %call904, 0
  br i1 %tobool905.not, label %if.then906, label %if.else911

if.then906:                                       ; preds = %if.else903
  %call907 = tail call ptr @spec_strdup(ptr noundef %value.addr.2)
  %psz_stat_in = getelementptr inbounds i8, ptr %p, i64 584
  store ptr %call907, ptr %psz_stat_in, align 8
  %call909 = tail call ptr @spec_strdup(ptr noundef %value.addr.2)
  %psz_stat_out = getelementptr inbounds i8, ptr %p, i64 568
  store ptr %call909, ptr %psz_stat_out, align 8
  br label %if.end1116

if.else911:                                       ; preds = %if.else903
  %call912 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.139) #23
  %tobool913.not = icmp eq i32 %call912, 0
  br i1 %tobool913.not, label %if.then914, label %if.else918

if.then914:                                       ; preds = %if.else911
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1973) #25
  %call.i1974 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1973) #25
  %203 = load ptr, ptr %end.i1973, align 8
  %cmp.i1975 = icmp eq ptr %203, %value.addr.2
  br i1 %cmp.i1975, label %if.then.i1978, label %lor.lhs.false.i1976

lor.lhs.false.i1976:                              ; preds = %if.then914
  %204 = load i8, ptr %203, align 1
  %cmp1.not.i1977 = icmp eq i8 %204, 0
  br i1 %cmp1.not.i1977, label %x264_atof.exit1979, label %if.then.i1978

if.then.i1978:                                    ; preds = %lor.lhs.false.i1976, %if.then914
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit1979

x264_atof.exit1979:                               ; preds = %lor.lhs.false.i1976, %if.then.i1978
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1973) #25
  %conv916 = fptrunc double %call.i1974 to float
  %f_qcompress = getelementptr inbounds i8, ptr %p, i64 592
  store float %conv916, ptr %f_qcompress, align 8
  br label %if.end1116

if.else918:                                       ; preds = %if.else911
  %call919 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.140) #23
  %tobool920.not = icmp eq i32 %call919, 0
  br i1 %tobool920.not, label %if.then921, label %if.else924

if.then921:                                       ; preds = %if.else918
  %call922 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_mb_tree = getelementptr inbounds i8, ptr %p, i64 552
  store i32 %call922, ptr %b_mb_tree, align 8
  br label %if.end1116

if.else924:                                       ; preds = %if.else918
  %call925 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.141) #23
  %tobool926.not = icmp eq i32 %call925, 0
  br i1 %tobool926.not, label %if.then927, label %if.else931

if.then927:                                       ; preds = %if.else924
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1980) #25
  %call.i1981 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1980) #25
  %205 = load ptr, ptr %end.i1980, align 8
  %cmp.i1982 = icmp eq ptr %205, %value.addr.2
  br i1 %cmp.i1982, label %if.then.i1985, label %lor.lhs.false.i1983

lor.lhs.false.i1983:                              ; preds = %if.then927
  %206 = load i8, ptr %205, align 1
  %cmp1.not.i1984 = icmp eq i8 %206, 0
  br i1 %cmp1.not.i1984, label %x264_atof.exit1986, label %if.then.i1985

if.then.i1985:                                    ; preds = %lor.lhs.false.i1983, %if.then927
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit1986

x264_atof.exit1986:                               ; preds = %lor.lhs.false.i1983, %if.then.i1985
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1980) #25
  %conv929 = fptrunc double %call.i1981 to float
  %f_qblur = getelementptr inbounds i8, ptr %p, i64 596
  store float %conv929, ptr %f_qblur, align 4
  br label %if.end1116

if.else931:                                       ; preds = %if.else924
  %call932 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.142) #23
  %tobool933.not = icmp eq i32 %call932, 0
  br i1 %tobool933.not, label %if.then937, label %lor.lhs.false934

lor.lhs.false934:                                 ; preds = %if.else931
  %call935 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.143) #23
  %tobool936.not = icmp eq i32 %call935, 0
  br i1 %tobool936.not, label %if.then937, label %if.else941

if.then937:                                       ; preds = %lor.lhs.false934, %if.else931
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1987) #25
  %call.i1988 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1987) #25
  %207 = load ptr, ptr %end.i1987, align 8
  %cmp.i1989 = icmp eq ptr %207, %value.addr.2
  br i1 %cmp.i1989, label %if.then.i1992, label %lor.lhs.false.i1990

lor.lhs.false.i1990:                              ; preds = %if.then937
  %208 = load i8, ptr %207, align 1
  %cmp1.not.i1991 = icmp eq i8 %208, 0
  br i1 %cmp1.not.i1991, label %x264_atof.exit1993, label %if.then.i1992

if.then.i1992:                                    ; preds = %lor.lhs.false.i1990, %if.then937
  store i32 1, ptr %b_error, align 4
  br label %x264_atof.exit1993

x264_atof.exit1993:                               ; preds = %lor.lhs.false.i1990, %if.then.i1992
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1987) #25
  %conv939 = fptrunc double %call.i1988 to float
  %f_complexity_blur = getelementptr inbounds i8, ptr %p, i64 600
  store float %conv939, ptr %f_complexity_blur, align 8
  br label %if.end1116

if.else941:                                       ; preds = %lor.lhs.false934
  %call942 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.144) #23
  %tobool943.not = icmp eq i32 %call942, 0
  br i1 %tobool943.not, label %if.then944, label %if.else947

if.then944:                                       ; preds = %if.else941
  %call945 = tail call ptr @spec_strdup(ptr noundef %value.addr.2)
  %psz_zones = getelementptr inbounds i8, ptr %p, i64 624
  store ptr %call945, ptr %psz_zones, align 8
  br label %if.end1116

if.else947:                                       ; preds = %if.else941
  %call948 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(5) @.str.145) #23
  %tobool949.not = icmp eq i32 %call948, 0
  br i1 %tobool949.not, label %if.then950, label %if.else953

if.then950:                                       ; preds = %if.else947
  %call951 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_psnr = getelementptr inbounds i8, ptr %p, i64 476
  store i32 %call951, ptr %b_psnr, align 4
  br label %if.end1116

if.else953:                                       ; preds = %if.else947
  %call954 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(5) @.str.146) #23
  %tobool955.not = icmp eq i32 %call954, 0
  br i1 %tobool955.not, label %if.then956, label %if.else959

if.then956:                                       ; preds = %if.else953
  %call957 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_ssim = getelementptr inbounds i8, ptr %p, i64 480
  store i32 %call957, ptr %b_ssim, align 8
  br label %if.end1116

if.else959:                                       ; preds = %if.else953
  %call960 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.147) #23
  %tobool961.not = icmp eq i32 %call960, 0
  br i1 %tobool961.not, label %if.then962, label %if.else964

if.then962:                                       ; preds = %if.else959
  %call963 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_aud = getelementptr inbounds i8, ptr %p, i64 632
  store i32 %call963, ptr %b_aud, align 8
  br label %if.end1116

if.else964:                                       ; preds = %if.else959
  %call965 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.148) #23
  %tobool966.not = icmp eq i32 %call965, 0
  br i1 %tobool966.not, label %if.then967, label %if.else969

if.then967:                                       ; preds = %if.else964
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1994) #25
  %call.i1995 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1994, i32 noundef 0) #25
  %209 = load ptr, ptr %end.i1994, align 8
  %cmp.i1996 = icmp eq ptr %209, %value.addr.2
  br i1 %cmp.i1996, label %if.then.i1999, label %lor.lhs.false.i1997

lor.lhs.false.i1997:                              ; preds = %if.then967
  %210 = load i8, ptr %209, align 1
  %cmp3.not.i1998 = icmp eq i8 %210, 0
  br i1 %cmp3.not.i1998, label %x264_atoi.exit2001, label %if.then.i1999

if.then.i1999:                                    ; preds = %lor.lhs.false.i1997, %if.then967
  store i32 1, ptr %b_error, align 4
  br label %x264_atoi.exit2001

x264_atoi.exit2001:                               ; preds = %lor.lhs.false.i1997, %if.then.i1999
  %conv.i2000 = trunc i64 %call.i1995 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1994) #25
  %i_sps_id = getelementptr inbounds i8, ptr %p, i64 644
  store i32 %conv.i2000, ptr %i_sps_id, align 4
  br label %if.end1116

if.else969:                                       ; preds = %if.else964
  %call970 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(14) @.str.149) #23
  %tobool971.not = icmp eq i32 %call970, 0
  br i1 %tobool971.not, label %if.then972, label %if.else977

if.then972:                                       ; preds = %if.else969
  %call973 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %lnot.ext976 = xor i32 %call973, 1
  %b_repeat_headers = getelementptr inbounds i8, ptr %p, i64 636
  store i32 %lnot.ext976, ptr %b_repeat_headers, align 4
  br label %if.end1116

if.else977:                                       ; preds = %if.else969
  %call978 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.150) #23
  %tobool979.not = icmp eq i32 %call978, 0
  br i1 %tobool979.not, label %if.then980, label %if.else983

if.then980:                                       ; preds = %if.else977
  %call981 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_repeat_headers982 = getelementptr inbounds i8, ptr %p, i64 636
  store i32 %call981, ptr %b_repeat_headers982, align 4
  br label %if.end1116

if.else983:                                       ; preds = %if.else977
  %call984 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.151) #23
  %tobool985.not = icmp eq i32 %call984, 0
  br i1 %tobool985.not, label %if.then986, label %if.else988

if.then986:                                       ; preds = %if.else983
  %call987 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_annexb = getelementptr inbounds i8, ptr %p, i64 640
  store i32 %call987, ptr %b_annexb, align 8
  br label %if.end1116

if.else988:                                       ; preds = %if.else983
  %call989 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.152) #23
  %tobool990.not = icmp eq i32 %call989, 0
  br i1 %tobool990.not, label %if.then991, label %if.else996

if.then991:                                       ; preds = %if.else988
  %call992 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %lnot.ext995 = xor i32 %call992, 1
  %b_vfr_input = getelementptr inbounds i8, ptr %p, i64 648
  store i32 %lnot.ext995, ptr %b_vfr_input, align 8
  br label %if.end1116

if.else996:                                       ; preds = %if.else988
  %call997 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.153) #23
  %tobool998.not = icmp eq i32 %call997, 0
  br i1 %tobool998.not, label %if.then999, label %if.else1002

if.then999:                                       ; preds = %if.else996
  %i_nal_hrd = getelementptr inbounds i8, ptr %p, i64 40
  %call1000 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_nal_hrd_names, ptr noundef nonnull %i_nal_hrd)
  %211 = load i32, ptr %b_error, align 4
  %or1001 = or i32 %211, %call1000
  store i32 %or1001, ptr %b_error, align 4
  br label %if.end1116

if.else1002:                                      ; preds = %if.else996
  %call1003 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.154) #23
  %tobool1004.not = icmp eq i32 %call1003, 0
  br i1 %tobool1004.not, label %if.then1005, label %if.else1007

if.then1005:                                      ; preds = %if.else1002
  %call1006 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_pic_struct = getelementptr inbounds i8, ptr %p, i64 676
  store i32 %call1006, ptr %b_pic_struct, align 4
  br label %if.end1116

if.else1007:                                      ; preds = %if.else1002
  %call1008 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(16) @.str.155) #23
  %tobool1009.not = icmp eq i32 %call1008, 0
  br i1 %tobool1009.not, label %if.then1010, label %cleanup

if.then1010:                                      ; preds = %if.else1007
  %call1011 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error)
  %b_fake_interlaced = getelementptr inbounds i8, ptr %p, i64 680
  store i32 %call1011, ptr %b_fake_interlaced, align 8
  br label %if.end1116

if.end1116:                                       ; preds = %if.then253, %x264_atoi.exit1615, %if.then78, %x264_atoi.exit1623, %if.then94, %x264_atoi.exit1643, %x264_atof.exit1635, %if.then144, %if.then158, %if.then172, %if.then186, %x264_atoi.exit1666, %if.then246, %x264_atoi.exit1682, %if.then266, %x264_atoi.exit1706, %if.then276, %x264_atoi.exit1722, %if.then291, %if.then329, %if.else333, %if.then323, %x264_atoi.exit1738, %if.then356, %if.then366, %if.then377, %if.then400, %if.else402, %if.then396, %if.then415, %if.then443, %if.then469, %if.then487, %if.then505, %x264_atoi.exit1762, %if.then579, %if.end576, %if.then596, %if.then611, %if.then624, %x264_atoi.exit1794, %x264_atoi.exit1810, %if.then708, %if.then720, %if.then732, %x264_atoi.exit1826, %x264_atoi.exit1842, %x264_atoi.exit1858, %x264_atof.exit1872, %x264_atoi.exit1888, %x264_atoi.exit1904, %x264_atoi.exit1919, %x264_atof.exit1934, %x264_atof.exit1948, %x264_atof.exit1963, %if.then906, %if.then921, %x264_atof.exit1993, %if.then950, %if.then962, %if.then972, %if.then986, %if.then999, %if.then1010, %if.then1005, %if.then991, %if.then980, %x264_atoi.exit2001, %if.then956, %if.then944, %x264_atof.exit1986, %x264_atof.exit1979, %x264_atoi.exit1971, %x264_atoi.exit1956, %x264_atof.exit1941, %x264_atoi.exit1927, %cond.end837, %x264_atoi.exit1896, %x264_atoi.exit1880, %x264_atof.exit1865, %x264_atoi.exit1850, %x264_atoi.exit1834, %if.then738, %x264_atoi.exit1818, %if.then714, %lor.lhs.false681, %lor.lhs.false673, %if.then667, %if.else698, %if.then695, %x264_atoi.exit1802, %x264_atoi.exit1786, %x264_atoi.exit1778, %x264_atoi.exit1770, %if.then587, %if.then528, %if.then514, %if.then496, %if.then478, %if.then456, %if.then432, %if.then409, %if.then388, %if.then371, %x264_atoi.exit1754, %x264_atoi.exit1746, %x264_atoi.exit1730, %if.then302, %x264_atoi.exit1714, %x264_atoi.exit1698, %x264_atoi.exit1690, %x264_atoi.exit1674, %if.then229, %x264_atof.exit1658, %if.then200, %if.then179, %if.then165, %if.then151, %land.end140, %if.then105, %if.then86, %cond.end42, %for.end71
  %name_was_bool.2 = phi i32 [ 1, %if.then1010 ], [ 1, %if.then1005 ], [ 0, %if.then999 ], [ 1, %if.then991 ], [ 1, %if.then986 ], [ 1, %if.then980 ], [ 1, %if.then972 ], [ 0, %x264_atoi.exit2001 ], [ 1, %if.then962 ], [ 1, %if.then956 ], [ 1, %if.then950 ], [ 0, %if.then944 ], [ 0, %x264_atof.exit1993 ], [ 0, %x264_atof.exit1986 ], [ 1, %if.then921 ], [ 0, %x264_atof.exit1979 ], [ 0, %if.then906 ], [ 0, %x264_atoi.exit1971 ], [ 0, %x264_atof.exit1963 ], [ 0, %x264_atoi.exit1956 ], [ 0, %x264_atof.exit1948 ], [ 0, %x264_atof.exit1941 ], [ 0, %x264_atof.exit1934 ], [ 0, %x264_atoi.exit1927 ], [ 0, %x264_atoi.exit1919 ], [ 0, %cond.end837 ], [ 0, %x264_atoi.exit1904 ], [ 0, %x264_atoi.exit1896 ], [ 0, %x264_atoi.exit1888 ], [ 0, %x264_atoi.exit1880 ], [ 0, %x264_atof.exit1872 ], [ 0, %x264_atof.exit1865 ], [ 0, %x264_atoi.exit1858 ], [ 0, %x264_atoi.exit1850 ], [ 0, %x264_atoi.exit1842 ], [ 0, %x264_atoi.exit1834 ], [ 0, %x264_atoi.exit1826 ], [ 1, %if.then738 ], [ 1, %if.then732 ], [ 0, %x264_atoi.exit1818 ], [ 1, %if.then720 ], [ 1, %if.then714 ], [ 1, %if.then708 ], [ 0, %if.then667 ], [ 0, %lor.lhs.false673 ], [ 0, %lor.lhs.false681 ], [ 0, %if.then695 ], [ 0, %if.else698 ], [ 0, %x264_atoi.exit1810 ], [ 0, %x264_atoi.exit1802 ], [ 0, %x264_atoi.exit1794 ], [ 0, %x264_atoi.exit1786 ], [ 0, %if.then624 ], [ 0, %x264_atoi.exit1778 ], [ 0, %if.then611 ], [ 0, %x264_atoi.exit1770 ], [ 1, %if.then596 ], [ 1, %if.then587 ], [ 0, %if.then579 ], [ 0, %if.end576 ], [ 0, %if.then528 ], [ 0, %x264_atoi.exit1762 ], [ 0, %if.then514 ], [ 0, %if.then505 ], [ 0, %if.then496 ], [ 0, %if.then487 ], [ 0, %if.then478 ], [ 0, %if.then469 ], [ 0, %if.then456 ], [ 0, %if.then443 ], [ 0, %if.then432 ], [ 0, %if.then415 ], [ 0, %if.then409 ], [ 0, %if.then396 ], [ 0, %if.then400 ], [ 0, %if.else402 ], [ 1, %if.then388 ], [ 1, %if.then377 ], [ 1, %if.then371 ], [ 1, %if.then366 ], [ 0, %x264_atoi.exit1754 ], [ 1, %if.then356 ], [ 0, %x264_atoi.exit1746 ], [ 0, %x264_atoi.exit1738 ], [ 0, %x264_atoi.exit1730 ], [ 0, %if.then323 ], [ 0, %if.then329 ], [ 1, %if.else333 ], [ 1, %if.then302 ], [ 0, %x264_atoi.exit1722 ], [ 0, %if.then291 ], [ 0, %x264_atoi.exit1714 ], [ 1, %x264_atoi.exit1706 ], [ 1, %if.then276 ], [ 0, %x264_atoi.exit1698 ], [ 1, %if.then266 ], [ 1, %x264_atoi.exit1690 ], [ 0, %if.then246 ], [ 0, %x264_atoi.exit1682 ], [ 0, %if.then229 ], [ 0, %x264_atoi.exit1674 ], [ 0, %x264_atoi.exit1666 ], [ 0, %if.then200 ], [ 0, %x264_atof.exit1658 ], [ 0, %if.then186 ], [ 0, %if.then179 ], [ 0, %if.then172 ], [ 0, %if.then165 ], [ 0, %if.then158 ], [ 0, %if.then151 ], [ 0, %if.then144 ], [ 0, %land.end140 ], [ 0, %x264_atof.exit1635 ], [ 0, %x264_atoi.exit1643 ], [ 1, %if.then105 ], [ 0, %x264_atoi.exit1623 ], [ 0, %if.then94 ], [ 1, %if.then86 ], [ 0, %x264_atoi.exit1615 ], [ 0, %if.then78 ], [ %name_was_bool.1, %for.end71 ], [ %name_was_bool.1, %cond.end42 ], [ 1, %if.then253 ]
  %tobool1117.not = icmp eq ptr %name_buf.0, null
  br i1 %tobool1117.not, label %if.end1119, label %if.then1118

if.then1118:                                      ; preds = %if.end1116
  tail call void @free(ptr noundef nonnull %name_buf.0) #25
  br label %if.end1119

if.end1119:                                       ; preds = %if.then1118, %if.end1116
  %tobool1122.not = icmp eq i32 %name_was_bool.2, 0
  %212 = and i1 %tobool.not, %tobool1122.not
  %land.ext1126 = zext i1 %212 to i32
  %213 = load i32, ptr %b_error, align 4
  %or1127 = or i32 %213, %land.ext1126
  %tobool1128.not = icmp eq i32 %or1127, 0
  %cond1129 = select i1 %tobool1128.not, i32 0, i32 -2
  br label %cleanup

cleanup:                                          ; preds = %if.else1007, %entry, %if.end1119
  %retval.0 = phi i32 [ %cond1129, %if.end1119 ], [ -1, %entry ], [ -1, %if.else1007 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b_error) #25
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @x264_atobool(ptr nocapture noundef readonly %str, ptr nocapture noundef writeonly %b_error) unnamed_addr #9 {
entry:
  %0 = load i8, ptr %str, align 1
  %.not = icmp eq i8 %0, 49
  br i1 %.not, label %entry.tail, label %lor.lhs.false

entry.tail:                                       ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %str, i64 1
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry, %entry.tail
  %call1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(5) @.str.8) #23
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(4) @.str.234) #23
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %sub_021

sub_021:                                          ; preds = %lor.lhs.false3
  %.not27 = icmp eq i8 %0, 48
  br i1 %.not27, label %if.end.tail, label %lor.lhs.false8

if.end.tail:                                      ; preds = %sub_021
  %4 = getelementptr inbounds i8, ptr %str, i64 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %return, label %lor.lhs.false8.thread

lor.lhs.false8:                                   ; preds = %sub_021
  %call9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(6) @.str.11) #23
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %return, label %sub_024

lor.lhs.false8.thread:                            ; preds = %if.end.tail
  %call932 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(6) @.str.11) #23
  %tobool10.not33 = icmp eq i32 %call932, 0
  br i1 %tobool10.not33, label %return, label %if.end15

sub_024:                                          ; preds = %lor.lhs.false8
  %.not28 = icmp eq i8 %0, 110
  br i1 %.not28, label %sub_125, label %if.end15

sub_125:                                          ; preds = %sub_024
  %7 = getelementptr inbounds i8, ptr %str, i64 1
  %8 = load i8, ptr %7, align 1
  %.not29 = icmp eq i8 %8, 111
  br i1 %.not29, label %lor.lhs.false11.tail, label %if.end15

lor.lhs.false11.tail:                             ; preds = %sub_125
  %9 = getelementptr inbounds i8, ptr %str, i64 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %return, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false8.thread, %sub_125, %sub_024, %lor.lhs.false11.tail
  store i32 1, ptr %b_error, align 4
  br label %return

return:                                           ; preds = %lor.lhs.false8.thread, %if.end.tail, %lor.lhs.false8, %lor.lhs.false11.tail, %entry.tail, %lor.lhs.false, %lor.lhs.false3, %if.end15
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 1, %lor.lhs.false3 ], [ 1, %lor.lhs.false ], [ 1, %entry.tail ], [ 0, %lor.lhs.false11.tail ], [ 0, %lor.lhs.false8 ], [ 0, %if.end.tail ], [ 0, %lor.lhs.false8.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @parse_enum(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %names, ptr nocapture noundef writeonly %dst) unnamed_addr #15 {
entry:
  %0 = load ptr, ptr %names, align 8
  %tobool.not11 = icmp eq ptr %0, null
  br i1 %tobool.not11, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %1 = phi ptr [ %3, %for.inc ], [ %0, %entry ]
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arg, ptr noundef nonnull dereferenceable(1) %1) #23
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %2, ptr %dst, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds ptr, ptr %names, i64 %indvars.iv.next
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %tobool.not9 = phi i32 [ 0, %if.then ], [ -1, %entry ], [ -1, %for.inc ]
  ret i32 %tobool.not9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @parse_cqm(ptr noundef readonly %str, ptr nocapture noundef writeonly %cqm, i32 noundef %length) unnamed_addr #7 {
entry:
  %coef = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coef) #25
  %call20 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %str, ptr noundef nonnull @.str.49, ptr noundef nonnull %coef) #25
  %tobool21 = icmp ne i32 %call20, 0
  %0 = load i32, ptr %coef, align 4
  %1 = add i32 %0, -1
  %2 = icmp ult i32 %1, 255
  %or.cond12.not22 = select i1 %tobool21, i1 %2, i1 false
  br i1 %or.cond12.not22, label %do.cond.preheader, label %cleanup

do.cond.preheader:                                ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 %length, i32 1)
  %3 = add nsw i32 %smax, -1
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %do.cond

do.body:                                          ; preds = %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8, ptr %call5, i64 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coef) #25
  %call = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.49, ptr noundef nonnull %coef) #25
  %tobool = icmp ne i32 %call, 0
  %4 = load i32, ptr %coef, align 4
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 255
  %or.cond12.not = select i1 %tobool, i1 %6, i1 false
  br i1 %or.cond12.not, label %do.cond, label %cleanup

cleanup:                                          ; preds = %do.body, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coef) #25
  br label %cleanup10

do.cond:                                          ; preds = %do.cond.preheader, %do.body
  %indvars.iv = phi i64 [ 0, %do.cond.preheader ], [ %indvars.iv.next, %do.body ]
  %7 = phi i32 [ %0, %do.cond.preheader ], [ %4, %do.body ]
  %str.addr.023 = phi ptr [ %str, %do.cond.preheader ], [ %incdec.ptr, %do.body ]
  %conv = trunc nuw i32 %7 to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i8, ptr %cqm, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coef) #25
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %do.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.cond
  %call5 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %str.addr.023, i32 noundef 44) #23
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end.split.loop.exit, label %do.body

do.end.split.loop.exit:                           ; preds = %land.lhs.true
  %8 = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %do.end

do.end:                                           ; preds = %do.cond, %do.end.split.loop.exit
  %inc.lcssa = phi i32 [ %8, %do.end.split.loop.exit ], [ %smax, %do.cond ]
  %cmp8 = icmp ne i32 %inc.lcssa, %length
  %cond = sext i1 %cmp8 to i32
  br label %cleanup10

cleanup10:                                        ; preds = %cleanup, %do.end
  %retval.2 = phi i32 [ %cond, %do.end ], [ -1, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_picture_alloc(ptr nocapture noundef writeonly %pic, i32 noundef %i_csp, i32 noundef %i_width, i32 noundef %i_height) local_unnamed_addr #4 {
entry:
  store i32 0, ptr %pic, align 8
  %i_qpplus1 = getelementptr inbounds i8, ptr %pic, i64 4
  store i32 0, ptr %i_qpplus1, align 4
  %img = getelementptr inbounds i8, ptr %pic, i64 40
  store i32 %i_csp, ptr %img, align 8
  %i_plane = getelementptr inbounds i8, ptr %pic, i64 44
  store i32 3, ptr %i_plane, align 4
  %mul = mul i32 %i_height, %i_width
  %mul3 = mul i32 %mul, 3
  %div = sdiv i32 %mul3, 2
  %narrow = add nsw i32 %div, 27
  %add2.i = sext i32 %narrow to i64
  %call.i = tail call noalias ptr @malloc(i64 noundef %add2.i) #24
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %x264_malloc.exit.thread, label %if.end

x264_malloc.exit.thread:                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %div)
  br label %return

if.end:                                           ; preds = %entry
  %add.ptr4.i = getelementptr inbounds i8, ptr %call.i, i64 27
  %0 = ptrtoint ptr %add.ptr4.i to i64
  %and.i = and i64 %0, 15
  %idx.neg.i = sub nsw i64 0, %and.i
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr4.i, i64 %idx.neg.i
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr5.i, i64 -8
  store ptr %call.i, ptr %add.ptr6.i, align 8
  %add.ptr8.i = getelementptr inbounds i8, ptr %add.ptr5.i, i64 -12
  store i32 %div, ptr %add.ptr8.i, align 4
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr5.i, i64 %idx.ext
  %arrayidx14 = getelementptr inbounds i8, ptr %pic, i64 72
  store ptr %add.ptr, ptr %arrayidx14, align 8
  %div19 = sdiv i32 %mul, 4
  %idx.ext20 = sext i32 %div19 to i64
  %add.ptr21 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext20
  %arrayidx24 = getelementptr inbounds i8, ptr %pic, i64 80
  store ptr %add.ptr21, ptr %arrayidx24, align 8
  %i_stride = getelementptr inbounds i8, ptr %pic, i64 48
  store i32 %i_width, ptr %i_stride, align 8
  %div27 = sdiv i32 %i_width, 2
  %arrayidx30 = getelementptr inbounds i8, ptr %pic, i64 52
  store i32 %div27, ptr %arrayidx30, align 4
  %arrayidx34 = getelementptr inbounds i8, ptr %pic, i64 56
  store i32 %div27, ptr %arrayidx34, align 8
  %param = getelementptr inbounds i8, ptr %pic, i64 32
  store ptr null, ptr %param, align 8
  %i_pic_struct = getelementptr inbounds i8, ptr %pic, i64 8
  store i32 0, ptr %i_pic_struct, align 8
  br label %return

return:                                           ; preds = %x264_malloc.exit.thread, %if.end
  %add.ptr5.i.sink = phi ptr [ null, %x264_malloc.exit.thread ], [ %add.ptr5.i, %if.end ]
  %retval.0 = phi i32 [ -1, %x264_malloc.exit.thread ], [ 0, %if.end ]
  %1 = getelementptr inbounds i8, ptr %pic, i64 64
  store ptr %add.ptr5.i.sink, ptr %1, align 8
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_malloc(i32 noundef %i_size) local_unnamed_addr #4 {
entry:
  %0 = sext i32 %i_size to i64
  %add2 = add nsw i64 %0, 27
  %call = tail call noalias ptr @malloc(i64 noundef %add2) #24
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then10, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr4 = getelementptr inbounds i8, ptr %call, i64 27
  %1 = ptrtoint ptr %add.ptr4 to i64
  %and = and i64 %1, 15
  %idx.neg = sub nsw i64 0, %and
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr4, i64 %idx.neg
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr5, i64 -8
  store ptr %call, ptr %add.ptr6, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr5, i64 -12
  store i32 %i_size, ptr %add.ptr8, align 4
  br label %if.end11

if.then10:                                        ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %i_size)
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then10
  %align_buf.023 = phi ptr [ null, %if.then10 ], [ %add.ptr5, %if.end ]
  ret ptr %align_buf.023
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @x264_picture_clean(ptr nocapture noundef %pic) local_unnamed_addr #17 {
entry:
  %plane = getelementptr inbounds i8, ptr %pic, i64 64
  %0 = load ptr, ptr %plane, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %x264_free.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 -8
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void @free(ptr noundef %1) #25
  br label %x264_free.exit

x264_free.exit:                                   ; preds = %entry, %if.then.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %pic, i8 0, i64 136, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @x264_free(ptr noundef readonly %p) local_unnamed_addr #17 {
entry:
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 -8
  %0 = load ptr, ptr %add.ptr, align 8
  tail call void @free(ptr noundef %0) #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -2147483644, -2147483648) i32 @x264_nal_encode(ptr noundef %dst, ptr nocapture noundef readonly %nal, i32 noundef %b_annexb, i32 noundef %b_long_startcode) local_unnamed_addr #18 {
entry:
  %p_payload = getelementptr inbounds i8, ptr %nal, i64 16
  %0 = load ptr, ptr %p_payload, align 8
  %i_payload = getelementptr inbounds i8, ptr %nal, i64 8
  %1 = load i32, ptr %i_payload, align 8
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  %tobool.not = icmp eq i32 %b_annexb, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq i32 %b_long_startcode, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8, ptr %dst, i64 1
  store i8 0, ptr %dst, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %dst.addr.0 = phi ptr [ %incdec.ptr, %if.then3 ], [ %dst, %if.then ]
  %incdec.ptr4 = getelementptr inbounds i8, ptr %dst.addr.0, i64 1
  store i8 0, ptr %dst.addr.0, align 1
  %incdec.ptr5 = getelementptr inbounds i8, ptr %dst.addr.0, i64 2
  store i8 0, ptr %incdec.ptr4, align 1
  %incdec.ptr6 = getelementptr inbounds i8, ptr %dst.addr.0, i64 3
  store i8 1, ptr %incdec.ptr5, align 1
  br label %if.end8

if.else:                                          ; preds = %entry
  %add.ptr7 = getelementptr inbounds i8, ptr %dst, i64 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  %dst.addr.1 = phi ptr [ %incdec.ptr6, %if.end ], [ %add.ptr7, %if.else ]
  %2 = load i32, ptr %nal, align 8
  %shl = shl i32 %2, 5
  %i_type = getelementptr inbounds i8, ptr %nal, i64 4
  %3 = load i32, ptr %i_type, align 4
  %or9 = or i32 %shl, %3
  %conv = trunc i32 %or9 to i8
  store i8 %conv, ptr %dst.addr.1, align 1
  %dst.addr.268 = getelementptr inbounds i8, ptr %dst.addr.1, i64 1
  %cmp69 = icmp sgt i32 %1, 0
  br i1 %cmp69, label %while.body, label %while.end

while.body:                                       ; preds = %if.end8, %if.end19
  %dst.addr.273 = phi ptr [ %dst.addr.2, %if.end19 ], [ %dst.addr.268, %if.end8 ]
  %dst.addr.1.pn72 = phi ptr [ %dst.addr.3, %if.end19 ], [ %dst.addr.1, %if.end8 ]
  %i_count.071 = phi i32 [ %i_count.2, %if.end19 ], [ 0, %if.end8 ]
  %src.070 = phi ptr [ %incdec.ptr26, %if.end19 ], [ %0, %if.end8 ]
  %cmp12 = icmp eq i32 %i_count.071, 2
  %.pre75 = load i8, ptr %src.070, align 1
  br i1 %cmp12, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %while.body
  %cmp15 = icmp ult i8 %.pre75, 4
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %land.lhs.true
  %incdec.ptr18 = getelementptr inbounds i8, ptr %dst.addr.1.pn72, i64 2
  store i8 3, ptr %dst.addr.273, align 1
  %.pre = load i8, ptr %src.070, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %land.lhs.true, %while.body
  %4 = phi i8 [ %.pre, %if.then17 ], [ %.pre75, %land.lhs.true ], [ %.pre75, %while.body ]
  %i_count.1 = phi i32 [ 0, %if.then17 ], [ 2, %land.lhs.true ], [ %i_count.071, %while.body ]
  %dst.addr.3 = phi ptr [ %incdec.ptr18, %if.then17 ], [ %dst.addr.273, %land.lhs.true ], [ %dst.addr.273, %while.body ]
  %cmp21 = icmp eq i8 %4, 0
  %inc = add nsw i32 %i_count.1, 1
  %i_count.2 = select i1 %cmp21, i32 %inc, i32 0
  %incdec.ptr26 = getelementptr inbounds i8, ptr %src.070, i64 1
  store i8 %4, ptr %dst.addr.3, align 1
  %dst.addr.2 = getelementptr inbounds i8, ptr %dst.addr.3, i64 1
  %cmp = icmp ult ptr %incdec.ptr26, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %if.end19, %if.end8
  %dst.addr.2.lcssa = phi ptr [ %dst.addr.268, %if.end8 ], [ %dst.addr.2, %if.end19 ]
  %sub.ptr.lhs.cast = ptrtoint ptr %dst.addr.2.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %dst to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %5 = trunc i64 %sub.ptr.sub to i32
  br i1 %tobool.not, label %if.then30, label %if.end41

if.then30:                                        ; preds = %while.end
  %conv28 = add i32 %5, -4
  %shr = lshr i32 %conv28, 24
  %conv31 = trunc nuw i32 %shr to i8
  store i8 %conv31, ptr %dst, align 1
  %shr32 = lshr i32 %conv28, 16
  %conv33 = trunc i32 %shr32 to i8
  %arrayidx34 = getelementptr inbounds i8, ptr %dst, i64 1
  store i8 %conv33, ptr %arrayidx34, align 1
  %shr35 = lshr i32 %conv28, 8
  %conv36 = trunc i32 %shr35 to i8
  %arrayidx37 = getelementptr inbounds i8, ptr %dst, i64 2
  store i8 %conv36, ptr %arrayidx37, align 1
  %conv39 = trunc i32 %conv28 to i8
  %arrayidx40 = getelementptr inbounds i8, ptr %dst, i64 3
  store i8 %conv39, ptr %arrayidx40, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then30, %while.end
  ret i32 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_reduce_fraction(ptr nocapture noundef %n, ptr nocapture noundef %d) local_unnamed_addr #19 {
entry:
  %0 = load i32, ptr %n, align 4
  %1 = load i32, ptr %d, align 4
  %tobool = icmp ne i32 %0, 0
  %tobool1 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %rem = urem i32 %0, %1
  %tobool2.not18 = icmp eq i32 %rem, 0
  br i1 %tobool2.not18, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %while.body
  %c.020 = phi i32 [ %rem3, %while.body ], [ %rem, %if.end ]
  %b.019 = phi i32 [ %c.020, %while.body ], [ %1, %if.end ]
  %rem3 = urem i32 %b.019, %c.020
  %tobool2.not = icmp eq i32 %rem3, 0
  br i1 %tobool2.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end
  %b.0.lcssa = phi i32 [ %1, %if.end ], [ %c.020, %while.body ]
  %div = udiv i32 %0, %b.0.lcssa
  store i32 %div, ptr %n, align 4
  %2 = load i32, ptr %d, align 4
  %div4 = udiv i32 %2, %b.0.lcssa
  store i32 %div4, ptr %d, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @x264_slurp_file(ptr nocapture noundef readonly %filename) local_unnamed_addr #4 {
entry:
  %call = tail call noalias ptr @fopen64(ptr noundef %filename, ptr noundef nonnull @.str.157)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fseek(ptr noundef nonnull %call, i64 noundef 0, i32 noundef 2)
  %call2 = tail call i64 @ftell(ptr noundef nonnull %call)
  %conv3 = trunc i64 %call2 to i32
  %cmp4 = icmp slt i32 %conv3, 1
  %0 = icmp slt i32 %call1, 0
  %1 = or i1 %0, %cmp4
  %or6 = zext i1 %1 to i32
  %call7 = tail call i32 @fseek(ptr noundef nonnull %call, i64 noundef 0, i32 noundef 0)
  %call7.lobit = lshr i32 %call7, 31
  %or10 = or i32 %call7.lobit, %or6
  %tobool11.not = icmp eq i32 %or10, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end
  %add = add nsw i32 %conv3, 2
  %sext68 = shl i64 %call2, 32
  %2 = ashr exact i64 %sext68, 32
  %add2.i = add nsw i64 %2, 29
  %call.i = tail call noalias ptr @malloc(i64 noundef %add2.i) #24
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %x264_malloc.exit.thread, label %if.end18

x264_malloc.exit.thread:                          ; preds = %if.end13
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %add)
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %add.ptr4.i = getelementptr inbounds i8, ptr %call.i, i64 27
  %3 = ptrtoint ptr %add.ptr4.i to i64
  %and.i = and i64 %3, 15
  %idx.neg.i = sub nsw i64 0, %and.i
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr4.i, i64 %idx.neg.i
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr5.i, i64 -8
  store ptr %call.i, ptr %add.ptr6.i, align 8
  %add.ptr8.i = getelementptr inbounds i8, ptr %add.ptr5.i, i64 -12
  store i32 %add, ptr %add.ptr8.i, align 4
  %call20 = tail call i64 @fread(ptr noundef nonnull %add.ptr5.i, i64 noundef 1, i64 noundef %2, ptr noundef nonnull %call)
  %conv21 = trunc i64 %call20 to i32
  %cmp22.not = icmp eq i32 %conv21, %conv3
  %sext62 = add i64 %sext68, -4294967296
  %idxprom = ashr exact i64 %sext62, 32
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr5.i, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %cmp26.not = icmp eq i8 %4, 10
  br i1 %cmp26.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end18
  %arrayidx30 = getelementptr inbounds i8, ptr %add.ptr5.i, i64 %2
  store i8 10, ptr %arrayidx30, align 1
  %inc = shl i64 %call2, 32
  %.pre = add i64 %inc, 4294967296
  %.pre69 = ashr exact i64 %.pre, 32
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end18
  %idxprom32.pre-phi = phi i64 [ %.pre69, %if.then28 ], [ %2, %if.end18 ]
  %arrayidx33 = getelementptr inbounds i8, ptr %add.ptr5.i, i64 %idxprom32.pre-phi
  store i8 0, ptr %arrayidx33, align 1
  %call34 = tail call i32 @fclose(ptr noundef nonnull %call)
  br i1 %cmp22.not, label %cleanup, label %x264_free.exit

x264_free.exit:                                   ; preds = %if.end31
  %5 = load ptr, ptr %add.ptr6.i, align 8
  tail call void @free(ptr noundef %5) #25
  br label %cleanup

cleanup:                                          ; preds = %x264_malloc.exit.thread, %if.end31, %if.end, %entry, %x264_free.exit
  %retval.0 = phi ptr [ null, %x264_free.exit ], [ null, %entry ], [ null, %if.end ], [ %add.ptr5.i, %if.end31 ], [ null, %x264_malloc.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_param2string(ptr noundef readonly %p, i32 noundef %b_res) local_unnamed_addr #4 {
entry:
  %rc = getelementptr inbounds i8, ptr %p, i64 488
  %psz_zones = getelementptr inbounds i8, ptr %p, i64 624
  %0 = load ptr, ptr %psz_zones, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %1 = trunc i64 %call to i32
  %conv3 = add i32 %1, 1000
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %len.0 = phi i32 [ %conv3, %if.then ], [ 1000, %entry ]
  %2 = sext i32 %len.0 to i64
  %add2.i = add nsw i64 %2, 27
  %call.i = tail call noalias ptr @malloc(i64 noundef %add2.i) #24
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %x264_malloc.exit.thread, label %if.end7

x264_malloc.exit.thread:                          ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %len.0)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %add.ptr4.i = getelementptr inbounds i8, ptr %call.i, i64 27
  %3 = ptrtoint ptr %add.ptr4.i to i64
  %and.i = and i64 %3, 15
  %idx.neg.i = sub nsw i64 0, %and.i
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr4.i, i64 %idx.neg.i
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr5.i, i64 -8
  store ptr %call.i, ptr %add.ptr6.i, align 8
  %add.ptr8.i = getelementptr inbounds i8, ptr %add.ptr5.i, i64 -12
  store i32 %len.0, ptr %add.ptr8.i, align 4
  %tobool8.not = icmp eq i32 %b_res, 0
  br i1 %tobool8.not, label %if.end17, label %if.then9

if.then9:                                         ; preds = %if.end7
  %i_width = getelementptr inbounds i8, ptr %p, i64 20
  %4 = load i32, ptr %i_width, align 4
  %i_height = getelementptr inbounds i8, ptr %p, i64 24
  %5 = load i32, ptr %i_height, align 8
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr5.i, ptr noundef nonnull dereferenceable(1) @.str.158, i32 noundef %4, i32 noundef %5) #25
  %idx.ext = sext i32 %call10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr5.i, i64 %idx.ext
  %i_fps_num = getelementptr inbounds i8, ptr %p, i64 652
  %6 = load i32, ptr %i_fps_num, align 4
  %i_fps_den = getelementptr inbounds i8, ptr %p, i64 656
  %7 = load i32, ptr %i_fps_den, align 8
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(1) @.str.159, i32 noundef %6, i32 noundef %7) #25
  %idx.ext12 = sext i32 %call11 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext12
  %i_timebase_num = getelementptr inbounds i8, ptr %p, i64 660
  %8 = load i32, ptr %i_timebase_num, align 4
  %i_timebase_den = getelementptr inbounds i8, ptr %p, i64 664
  %9 = load i32, ptr %i_timebase_den, align 8
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr13, ptr noundef nonnull dereferenceable(1) @.str.160, i32 noundef %8, i32 noundef %9) #25
  %idx.ext15 = sext i32 %call14 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr13, i64 %idx.ext15
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %if.end7
  %s.0 = phi ptr [ %add.ptr16, %if.then9 ], [ %add.ptr5.i, %if.end7 ]
  %b_cabac = getelementptr inbounds i8, ptr %p, i64 128
  %10 = load i32, ptr %b_cabac, align 8
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.0, ptr noundef nonnull dereferenceable(1) @.str.161, i32 noundef %10) #25
  %idx.ext19 = sext i32 %call18 to i64
  %add.ptr20 = getelementptr inbounds i8, ptr %s.0, i64 %idx.ext19
  %i_frame_reference = getelementptr inbounds i8, ptr %p, i64 80
  %11 = load i32, ptr %i_frame_reference, align 8
  %call21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr20, ptr noundef nonnull dereferenceable(1) @.str.162, i32 noundef %11) #25
  %idx.ext22 = sext i32 %call21 to i64
  %add.ptr23 = getelementptr inbounds i8, ptr %add.ptr20, i64 %idx.ext22
  %b_deblocking_filter = getelementptr inbounds i8, ptr %p, i64 116
  %12 = load i32, ptr %b_deblocking_filter, align 4
  %i_deblocking_filter_alphac0 = getelementptr inbounds i8, ptr %p, i64 120
  %13 = load i32, ptr %i_deblocking_filter_alphac0, align 8
  %i_deblocking_filter_beta = getelementptr inbounds i8, ptr %p, i64 124
  %14 = load i32, ptr %i_deblocking_filter_beta, align 4
  %call24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr23, ptr noundef nonnull dereferenceable(1) @.str.163, i32 noundef %12, i32 noundef %13, i32 noundef %14) #25
  %idx.ext25 = sext i32 %call24 to i64
  %add.ptr26 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.ext25
  %analyse = getelementptr inbounds i8, ptr %p, i64 384
  %15 = load i32, ptr %analyse, align 8
  %inter = getelementptr inbounds i8, ptr %p, i64 388
  %16 = load i32, ptr %inter, align 4
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr26, ptr noundef nonnull dereferenceable(1) @.str.164, i32 noundef %15, i32 noundef %16) #25
  %idx.ext29 = sext i32 %call28 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr26, i64 %idx.ext29
  %i_me_method = getelementptr inbounds i8, ptr %p, i64 412
  %17 = load i32, ptr %i_me_method, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [6 x ptr], ptr @x264_motion_est_names, i64 0, i64 %idxprom
  %18 = load ptr, ptr %arrayidx, align 8
  %call32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr30, ptr noundef nonnull dereferenceable(1) @.str.165, ptr noundef %18) #25
  %idx.ext33 = sext i32 %call32 to i64
  %add.ptr34 = getelementptr inbounds i8, ptr %add.ptr30, i64 %idx.ext33
  %i_subpel_refine = getelementptr inbounds i8, ptr %p, i64 428
  %19 = load i32, ptr %i_subpel_refine, align 4
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr34, ptr noundef nonnull dereferenceable(1) @.str.166, i32 noundef %19) #25
  %idx.ext37 = sext i32 %call36 to i64
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr34, i64 %idx.ext37
  %b_psy = getelementptr inbounds i8, ptr %p, i64 464
  %20 = load i32, ptr %b_psy, align 8
  %call40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr38, ptr noundef nonnull dereferenceable(1) @.str.167, i32 noundef %20) #25
  %idx.ext41 = sext i32 %call40 to i64
  %add.ptr42 = getelementptr inbounds i8, ptr %add.ptr38, i64 %idx.ext41
  %21 = load i32, ptr %b_psy, align 8
  %tobool45.not = icmp eq i32 %21, 0
  br i1 %tobool45.not, label %if.end54, label %if.then46

if.then46:                                        ; preds = %if.end17
  %f_psy_rd = getelementptr inbounds i8, ptr %p, i64 456
  %22 = load float, ptr %f_psy_rd, align 8
  %conv48 = fpext float %22 to double
  %f_psy_trellis = getelementptr inbounds i8, ptr %p, i64 460
  %23 = load float, ptr %f_psy_trellis, align 4
  %conv50 = fpext float %23 to double
  %call51 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr42, ptr noundef nonnull dereferenceable(1) @.str.168, double noundef %conv48, double noundef %conv50) #25
  %idx.ext52 = sext i32 %call51 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %add.ptr42, i64 %idx.ext52
  br label %if.end54

if.end54:                                         ; preds = %if.then46, %if.end17
  %s.1 = phi ptr [ %add.ptr53, %if.then46 ], [ %add.ptr42, %if.end17 ]
  %b_mixed_references = getelementptr inbounds i8, ptr %p, i64 436
  %24 = load i32, ptr %b_mixed_references, align 4
  %call56 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.1, ptr noundef nonnull dereferenceable(1) @.str.169, i32 noundef %24) #25
  %idx.ext57 = sext i32 %call56 to i64
  %add.ptr58 = getelementptr inbounds i8, ptr %s.1, i64 %idx.ext57
  %i_me_range = getelementptr inbounds i8, ptr %p, i64 416
  %25 = load i32, ptr %i_me_range, align 8
  %call60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr58, ptr noundef nonnull dereferenceable(1) @.str.170, i32 noundef %25) #25
  %idx.ext61 = sext i32 %call60 to i64
  %add.ptr62 = getelementptr inbounds i8, ptr %add.ptr58, i64 %idx.ext61
  %b_chroma_me = getelementptr inbounds i8, ptr %p, i64 432
  %26 = load i32, ptr %b_chroma_me, align 8
  %call64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr62, ptr noundef nonnull dereferenceable(1) @.str.171, i32 noundef %26) #25
  %idx.ext65 = sext i32 %call64 to i64
  %add.ptr66 = getelementptr inbounds i8, ptr %add.ptr62, i64 %idx.ext65
  %i_trellis = getelementptr inbounds i8, ptr %p, i64 440
  %27 = load i32, ptr %i_trellis, align 8
  %call68 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr66, ptr noundef nonnull dereferenceable(1) @.str.172, i32 noundef %27) #25
  %idx.ext69 = sext i32 %call68 to i64
  %add.ptr70 = getelementptr inbounds i8, ptr %add.ptr66, i64 %idx.ext69
  %b_transform_8x8 = getelementptr inbounds i8, ptr %p, i64 392
  %28 = load i32, ptr %b_transform_8x8, align 8
  %call72 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr70, ptr noundef nonnull dereferenceable(1) @.str.173, i32 noundef %28) #25
  %idx.ext73 = sext i32 %call72 to i64
  %add.ptr74 = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.ext73
  %i_cqm_preset = getelementptr inbounds i8, ptr %p, i64 144
  %29 = load i32, ptr %i_cqm_preset, align 8
  %call75 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr74, ptr noundef nonnull dereferenceable(1) @.str.174, i32 noundef %29) #25
  %idx.ext76 = sext i32 %call75 to i64
  %add.ptr77 = getelementptr inbounds i8, ptr %add.ptr74, i64 %idx.ext76
  %i_luma_deadzone = getelementptr inbounds i8, ptr %p, i64 468
  %30 = load i32, ptr %i_luma_deadzone, align 4
  %arrayidx82 = getelementptr inbounds i8, ptr %p, i64 472
  %31 = load i32, ptr %arrayidx82, align 4
  %call83 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr77, ptr noundef nonnull dereferenceable(1) @.str.175, i32 noundef %30, i32 noundef %31) #25
  %idx.ext84 = sext i32 %call83 to i64
  %add.ptr85 = getelementptr inbounds i8, ptr %add.ptr77, i64 %idx.ext84
  %b_fast_pskip = getelementptr inbounds i8, ptr %p, i64 444
  %32 = load i32, ptr %b_fast_pskip, align 4
  %call87 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr85, ptr noundef nonnull dereferenceable(1) @.str.176, i32 noundef %32) #25
  %idx.ext88 = sext i32 %call87 to i64
  %add.ptr89 = getelementptr inbounds i8, ptr %add.ptr85, i64 %idx.ext88
  %i_chroma_qp_offset = getelementptr inbounds i8, ptr %p, i64 408
  %33 = load i32, ptr %i_chroma_qp_offset, align 8
  %call91 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr89, ptr noundef nonnull dereferenceable(1) @.str.177, i32 noundef %33) #25
  %idx.ext92 = sext i32 %call91 to i64
  %add.ptr93 = getelementptr inbounds i8, ptr %add.ptr89, i64 %idx.ext92
  %i_threads = getelementptr inbounds i8, ptr %p, i64 4
  %34 = load i32, ptr %i_threads, align 4
  %call94 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr93, ptr noundef nonnull dereferenceable(1) @.str.178, i32 noundef %34) #25
  %idx.ext95 = sext i32 %call94 to i64
  %add.ptr96 = getelementptr inbounds i8, ptr %add.ptr93, i64 %idx.ext95
  %b_sliced_threads = getelementptr inbounds i8, ptr %p, i64 8
  %35 = load i32, ptr %b_sliced_threads, align 8
  %call97 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr96, ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %35) #25
  %idx.ext98 = sext i32 %call97 to i64
  %add.ptr99 = getelementptr inbounds i8, ptr %add.ptr96, i64 %idx.ext98
  %i_slice_count = getelementptr inbounds i8, ptr %p, i64 692
  %36 = load i32, ptr %i_slice_count, align 4
  %tobool100.not = icmp eq i32 %36, 0
  br i1 %tobool100.not, label %if.end106, label %if.then101

if.then101:                                       ; preds = %if.end54
  %call103 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr99, ptr noundef nonnull dereferenceable(1) @.str.180, i32 noundef %36) #25
  %idx.ext104 = sext i32 %call103 to i64
  %add.ptr105 = getelementptr inbounds i8, ptr %add.ptr99, i64 %idx.ext104
  br label %if.end106

if.end106:                                        ; preds = %if.then101, %if.end54
  %s.2 = phi ptr [ %add.ptr105, %if.then101 ], [ %add.ptr99, %if.end54 ]
  %i_slice_max_size = getelementptr inbounds i8, ptr %p, i64 684
  %37 = load i32, ptr %i_slice_max_size, align 4
  %tobool107.not = icmp eq i32 %37, 0
  br i1 %tobool107.not, label %if.end113, label %if.then108

if.then108:                                       ; preds = %if.end106
  %call110 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.2, ptr noundef nonnull dereferenceable(1) @.str.181, i32 noundef %37) #25
  %idx.ext111 = sext i32 %call110 to i64
  %add.ptr112 = getelementptr inbounds i8, ptr %s.2, i64 %idx.ext111
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %if.end106
  %s.3 = phi ptr [ %add.ptr112, %if.then108 ], [ %s.2, %if.end106 ]
  %i_slice_max_mbs = getelementptr inbounds i8, ptr %p, i64 688
  %38 = load i32, ptr %i_slice_max_mbs, align 8
  %tobool114.not = icmp eq i32 %38, 0
  br i1 %tobool114.not, label %if.end120, label %if.then115

if.then115:                                       ; preds = %if.end113
  %call117 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.3, ptr noundef nonnull dereferenceable(1) @.str.182, i32 noundef %38) #25
  %idx.ext118 = sext i32 %call117 to i64
  %add.ptr119 = getelementptr inbounds i8, ptr %s.3, i64 %idx.ext118
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.end113
  %s.4 = phi ptr [ %add.ptr119, %if.then115 ], [ %s.3, %if.end113 ]
  %i_noise_reduction = getelementptr inbounds i8, ptr %p, i64 452
  %39 = load i32, ptr %i_noise_reduction, align 4
  %call122 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.4, ptr noundef nonnull dereferenceable(1) @.str.183, i32 noundef %39) #25
  %idx.ext123 = sext i32 %call122 to i64
  %add.ptr124 = getelementptr inbounds i8, ptr %s.4, i64 %idx.ext123
  %b_dct_decimate = getelementptr inbounds i8, ptr %p, i64 448
  %40 = load i32, ptr %b_dct_decimate, align 8
  %call126 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr124, ptr noundef nonnull dereferenceable(1) @.str.184, i32 noundef %40) #25
  %idx.ext127 = sext i32 %call126 to i64
  %add.ptr128 = getelementptr inbounds i8, ptr %add.ptr124, i64 %idx.ext127
  %b_interlaced = getelementptr inbounds i8, ptr %p, i64 136
  %41 = load i32, ptr %b_interlaced, align 8
  %tobool129.not = icmp eq i32 %41, 0
  br i1 %tobool129.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end120
  %b_tff = getelementptr inbounds i8, ptr %p, i64 672
  %42 = load i32, ptr %b_tff, align 8
  %tobool130.not = icmp eq i32 %42, 0
  %cond = select i1 %tobool130.not, ptr @.str.57, ptr @.str.56
  br label %cond.end

cond.end:                                         ; preds = %if.end120, %cond.true
  %cond131 = phi ptr [ %cond, %cond.true ], [ @.str.186, %if.end120 ]
  %call132 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr128, ptr noundef nonnull dereferenceable(1) @.str.185, ptr noundef nonnull %cond131) #25
  %idx.ext133 = sext i32 %call132 to i64
  %add.ptr134 = getelementptr inbounds i8, ptr %add.ptr128, i64 %idx.ext133
  %b_constrained_intra = getelementptr inbounds i8, ptr %p, i64 140
  %43 = load i32, ptr %b_constrained_intra, align 4
  %call135 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr134, ptr noundef nonnull dereferenceable(1) @.str.187, i32 noundef %43) #25
  %idx.ext136 = sext i32 %call135 to i64
  %add.ptr137 = getelementptr inbounds i8, ptr %add.ptr134, i64 %idx.ext136
  %i_bframe = getelementptr inbounds i8, ptr %p, i64 100
  %44 = load i32, ptr %i_bframe, align 4
  %call138 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr137, ptr noundef nonnull dereferenceable(1) @.str.188, i32 noundef %44) #25
  %idx.ext139 = sext i32 %call138 to i64
  %add.ptr140 = getelementptr inbounds i8, ptr %add.ptr137, i64 %idx.ext139
  %45 = load i32, ptr %i_bframe, align 4
  %tobool142.not = icmp eq i32 %45, 0
  br i1 %tobool142.not, label %if.end149, label %if.then143

if.then143:                                       ; preds = %cond.end
  %i_bframe_pyramid = getelementptr inbounds i8, ptr %p, i64 112
  %46 = load i32, ptr %i_bframe_pyramid, align 8
  %i_bframe_adaptive = getelementptr inbounds i8, ptr %p, i64 104
  %47 = load i32, ptr %i_bframe_adaptive, align 8
  %i_bframe_bias = getelementptr inbounds i8, ptr %p, i64 108
  %48 = load i32, ptr %i_bframe_bias, align 4
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %p, i64 404
  %49 = load i32, ptr %i_direct_mv_pred, align 4
  %b_weighted_bipred = getelementptr inbounds i8, ptr %p, i64 400
  %50 = load i32, ptr %b_weighted_bipred, align 8
  %call146 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr140, ptr noundef nonnull dereferenceable(1) @.str.189, i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %50) #25
  %idx.ext147 = sext i32 %call146 to i64
  %add.ptr148 = getelementptr inbounds i8, ptr %add.ptr140, i64 %idx.ext147
  br label %if.end149

if.end149:                                        ; preds = %if.then143, %cond.end
  %s.5 = phi ptr [ %add.ptr148, %if.then143 ], [ %add.ptr140, %cond.end ]
  %i_weighted_pred = getelementptr inbounds i8, ptr %p, i64 396
  %51 = load i32, ptr %i_weighted_pred, align 4
  %spec.select = tail call i32 @llvm.smax.i32(i32 %51, i32 0)
  %call158 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.5, ptr noundef nonnull dereferenceable(1) @.str.190, i32 noundef %spec.select) #25
  %idx.ext159 = sext i32 %call158 to i64
  %add.ptr160 = getelementptr inbounds i8, ptr %s.5, i64 %idx.ext159
  %i_keyint_max = getelementptr inbounds i8, ptr %p, i64 84
  %52 = load i32, ptr %i_keyint_max, align 4
  %i_keyint_min = getelementptr inbounds i8, ptr %p, i64 88
  %53 = load i32, ptr %i_keyint_min, align 8
  %i_scenecut_threshold = getelementptr inbounds i8, ptr %p, i64 92
  %54 = load i32, ptr %i_scenecut_threshold, align 4
  %b_intra_refresh = getelementptr inbounds i8, ptr %p, i64 96
  %55 = load i32, ptr %b_intra_refresh, align 8
  %call161 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr160, ptr noundef nonnull dereferenceable(1) @.str.191, i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %55) #25
  %idx.ext162 = sext i32 %call161 to i64
  %add.ptr163 = getelementptr inbounds i8, ptr %add.ptr160, i64 %idx.ext162
  %b_mb_tree = getelementptr inbounds i8, ptr %p, i64 552
  %56 = load i32, ptr %b_mb_tree, align 8
  %tobool165.not = icmp eq i32 %56, 0
  br i1 %tobool165.not, label %lor.lhs.false, label %if.then168

lor.lhs.false:                                    ; preds = %if.end149
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %p, i64 528
  %57 = load i32, ptr %i_vbv_buffer_size, align 8
  %tobool167.not = icmp eq i32 %57, 0
  br i1 %tobool167.not, label %if.end173, label %if.then168

if.then168:                                       ; preds = %lor.lhs.false, %if.end149
  %i_lookahead = getelementptr inbounds i8, ptr %p, i64 556
  %58 = load i32, ptr %i_lookahead, align 4
  %call170 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr163, ptr noundef nonnull dereferenceable(1) @.str.192, i32 noundef %58) #25
  %idx.ext171 = sext i32 %call170 to i64
  %add.ptr172 = getelementptr inbounds i8, ptr %add.ptr163, i64 %idx.ext171
  br label %if.end173

if.end173:                                        ; preds = %if.then168, %lor.lhs.false
  %s.6 = phi ptr [ %add.ptr172, %if.then168 ], [ %add.ptr163, %lor.lhs.false ]
  %59 = load i32, ptr %rc, align 8
  %cmp175 = icmp eq i32 %59, 2
  br i1 %cmp175, label %cond.true177, label %cond.false189

cond.true177:                                     ; preds = %if.end173
  %b_stat_read = getelementptr inbounds i8, ptr %p, i64 576
  %60 = load i32, ptr %b_stat_read, align 8
  %tobool179.not = icmp eq i32 %60, 0
  br i1 %tobool179.not, label %cond.false181, label %cond.end195

cond.false181:                                    ; preds = %cond.true177
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %p, i64 524
  %61 = load i32, ptr %i_vbv_max_bitrate, align 4
  %i_bitrate = getelementptr inbounds i8, ptr %p, i64 508
  %62 = load i32, ptr %i_bitrate, align 4
  %cmp184 = icmp eq i32 %61, %62
  %cond186 = select i1 %cmp184, ptr @.str.195, ptr @.str.196
  br label %cond.end195

cond.false189:                                    ; preds = %if.end173
  %cmp192 = icmp eq i32 %59, 1
  %cond194 = select i1 %cmp192, ptr @.str.117, ptr @.str.197
  br label %cond.end195

cond.end195:                                      ; preds = %cond.false181, %cond.true177, %cond.false189
  %cond196 = phi ptr [ %cond194, %cond.false189 ], [ %cond186, %cond.false181 ], [ @.str.194, %cond.true177 ]
  %63 = load i32, ptr %b_mb_tree, align 8
  %call199 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.6, ptr noundef nonnull dereferenceable(1) @.str.193, ptr noundef nonnull %cond196, i32 noundef %63) #25
  %idx.ext200 = sext i32 %call199 to i64
  %add.ptr201 = getelementptr inbounds i8, ptr %s.6, i64 %idx.ext200
  %64 = load i32, ptr %rc, align 8
  switch i32 %64, label %if.then293 [
    i32 0, label %if.then278
    i32 1, label %if.then216
    i32 2, label %if.else
  ]

if.then216:                                       ; preds = %cond.end195
  %f_rf_constant = getelementptr inbounds i8, ptr %p, i64 512
  %65 = load float, ptr %f_rf_constant, align 8
  %conv218 = fpext float %65 to double
  %call219 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr201, ptr noundef nonnull dereferenceable(1) @.str.198, double noundef %conv218) #25
  br label %if.end229

if.else:                                          ; preds = %cond.end195
  %i_bitrate223 = getelementptr inbounds i8, ptr %p, i64 508
  %66 = load i32, ptr %i_bitrate223, align 4
  %f_rate_tolerance = getelementptr inbounds i8, ptr %p, i64 520
  %67 = load float, ptr %f_rate_tolerance, align 8
  %conv225 = fpext float %67 to double
  %call226 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr201, ptr noundef nonnull dereferenceable(1) @.str.199, i32 noundef %66, double noundef %conv225) #25
  br label %if.end229

if.end229:                                        ; preds = %if.else, %if.then216
  %idx.ext220.pn.in = phi i32 [ %call219, %if.then216 ], [ %call226, %if.else ]
  %idx.ext220.pn = sext i32 %idx.ext220.pn.in to i64
  %s.7 = getelementptr inbounds i8, ptr %add.ptr201, i64 %idx.ext220.pn
  %f_qcompress = getelementptr inbounds i8, ptr %p, i64 592
  %68 = load float, ptr %f_qcompress, align 8
  %conv231 = fpext float %68 to double
  %i_qp_min = getelementptr inbounds i8, ptr %p, i64 496
  %69 = load i32, ptr %i_qp_min, align 8
  %i_qp_max = getelementptr inbounds i8, ptr %p, i64 500
  %70 = load i32, ptr %i_qp_max, align 4
  %i_qp_step = getelementptr inbounds i8, ptr %p, i64 504
  %71 = load i32, ptr %i_qp_step, align 8
  %call235 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.7, ptr noundef nonnull dereferenceable(1) @.str.200, double noundef %conv231, i32 noundef %69, i32 noundef %70, i32 noundef %71) #25
  %idx.ext236 = sext i32 %call235 to i64
  %add.ptr237 = getelementptr inbounds i8, ptr %s.7, i64 %idx.ext236
  %b_stat_read239 = getelementptr inbounds i8, ptr %p, i64 576
  %72 = load i32, ptr %b_stat_read239, align 8
  %tobool240.not = icmp eq i32 %72, 0
  br i1 %tobool240.not, label %if.end249, label %if.then241

if.then241:                                       ; preds = %if.end229
  %f_complexity_blur = getelementptr inbounds i8, ptr %p, i64 600
  %73 = load float, ptr %f_complexity_blur, align 8
  %conv243 = fpext float %73 to double
  %f_qblur = getelementptr inbounds i8, ptr %p, i64 596
  %74 = load float, ptr %f_qblur, align 4
  %conv245 = fpext float %74 to double
  %call246 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr237, ptr noundef nonnull dereferenceable(1) @.str.201, double noundef %conv243, double noundef %conv245) #25
  %idx.ext247 = sext i32 %call246 to i64
  %add.ptr248 = getelementptr inbounds i8, ptr %add.ptr237, i64 %idx.ext247
  br label %if.end249

if.end249:                                        ; preds = %if.then241, %if.end229
  %s.8 = phi ptr [ %add.ptr248, %if.then241 ], [ %add.ptr237, %if.end229 ]
  %i_vbv_buffer_size251 = getelementptr inbounds i8, ptr %p, i64 528
  %75 = load i32, ptr %i_vbv_buffer_size251, align 8
  %tobool252.not = icmp eq i32 %75, 0
  br i1 %tobool252.not, label %if.end284thread-pre-split, label %if.then253

if.then253:                                       ; preds = %if.end249
  %i_vbv_max_bitrate255 = getelementptr inbounds i8, ptr %p, i64 524
  %76 = load i32, ptr %i_vbv_max_bitrate255, align 4
  %call258 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.8, ptr noundef nonnull dereferenceable(1) @.str.202, i32 noundef %76, i32 noundef %75) #25
  %idx.ext259 = sext i32 %call258 to i64
  %add.ptr260 = getelementptr inbounds i8, ptr %s.8, i64 %idx.ext259
  %77 = load i32, ptr %rc, align 8
  %cmp263 = icmp eq i32 %77, 1
  br i1 %cmp263, label %if.then265, label %if.end284

if.then265:                                       ; preds = %if.then253
  %f_rf_constant_max = getelementptr inbounds i8, ptr %p, i64 516
  %78 = load float, ptr %f_rf_constant_max, align 4
  %conv267 = fpext float %78 to double
  %call268 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr260, ptr noundef nonnull dereferenceable(1) @.str.203, double noundef %conv267) #25
  %idx.ext269 = sext i32 %call268 to i64
  %add.ptr270 = getelementptr inbounds i8, ptr %add.ptr260, i64 %idx.ext269
  br label %if.end284thread-pre-split

if.then278:                                       ; preds = %cond.end195
  %i_qp_constant = getelementptr inbounds i8, ptr %p, i64 492
  %79 = load i32, ptr %i_qp_constant, align 4
  %call280 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr201, ptr noundef nonnull dereferenceable(1) @.str.204, i32 noundef %79) #25
  %idx.ext281 = sext i32 %call280 to i64
  %add.ptr282 = getelementptr inbounds i8, ptr %add.ptr201, i64 %idx.ext281
  br label %if.end284thread-pre-split

if.end284thread-pre-split:                        ; preds = %if.then265, %if.end249, %if.then278
  %s.9.ph = phi ptr [ %add.ptr282, %if.then278 ], [ %s.8, %if.end249 ], [ %add.ptr270, %if.then265 ]
  %.pr = load i32, ptr %rc, align 8
  br label %if.end284

if.end284:                                        ; preds = %if.end284thread-pre-split, %if.then253
  %80 = phi i32 [ %.pr, %if.end284thread-pre-split ], [ %77, %if.then253 ]
  %s.9 = phi ptr [ %s.9.ph, %if.end284thread-pre-split ], [ %add.ptr260, %if.then253 ]
  %cmp287 = icmp eq i32 %80, 0
  br i1 %cmp287, label %land.lhs.true, label %if.then293

land.lhs.true:                                    ; preds = %if.end284
  %i_qp_constant290 = getelementptr inbounds i8, ptr %p, i64 492
  %81 = load i32, ptr %i_qp_constant290, align 4
  %cmp291 = icmp eq i32 %81, 0
  br i1 %cmp291, label %if.end344, label %if.then293

if.then293:                                       ; preds = %cond.end195, %land.lhs.true, %if.end284
  %s.9567 = phi ptr [ %s.9, %land.lhs.true ], [ %s.9, %if.end284 ], [ %add.ptr201, %cond.end195 ]
  %f_ip_factor = getelementptr inbounds i8, ptr %p, i64 536
  %82 = load float, ptr %f_ip_factor, align 8
  %conv295 = fpext float %82 to double
  %call296 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.9567, ptr noundef nonnull dereferenceable(1) @.str.205, double noundef %conv295) #25
  %idx.ext297 = sext i32 %call296 to i64
  %add.ptr298 = getelementptr inbounds i8, ptr %s.9567, i64 %idx.ext297
  %83 = load i32, ptr %i_bframe, align 4
  %tobool300.not = icmp eq i32 %83, 0
  br i1 %tobool300.not, label %if.end311, label %land.lhs.true301

land.lhs.true301:                                 ; preds = %if.then293
  %84 = load i32, ptr %b_mb_tree, align 8
  %tobool304.not = icmp eq i32 %84, 0
  br i1 %tobool304.not, label %if.then305, label %if.end311

if.then305:                                       ; preds = %land.lhs.true301
  %f_pb_factor = getelementptr inbounds i8, ptr %p, i64 540
  %85 = load float, ptr %f_pb_factor, align 4
  %conv307 = fpext float %85 to double
  %call308 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr298, ptr noundef nonnull dereferenceable(1) @.str.206, double noundef %conv307) #25
  %idx.ext309 = sext i32 %call308 to i64
  %add.ptr310 = getelementptr inbounds i8, ptr %add.ptr298, i64 %idx.ext309
  br label %if.end311

if.end311:                                        ; preds = %if.then305, %land.lhs.true301, %if.then293
  %s.10 = phi ptr [ %add.ptr298, %land.lhs.true301 ], [ %add.ptr310, %if.then305 ], [ %add.ptr298, %if.then293 ]
  %i_aq_mode = getelementptr inbounds i8, ptr %p, i64 544
  %86 = load i32, ptr %i_aq_mode, align 8
  %call313 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.10, ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %86) #25
  %idx.ext314 = sext i32 %call313 to i64
  %add.ptr315 = getelementptr inbounds i8, ptr %s.10, i64 %idx.ext314
  %87 = load i32, ptr %i_aq_mode, align 8
  %tobool318.not = icmp eq i32 %87, 0
  br i1 %tobool318.not, label %if.end325, label %if.then319

if.then319:                                       ; preds = %if.end311
  %f_aq_strength = getelementptr inbounds i8, ptr %p, i64 548
  %88 = load float, ptr %f_aq_strength, align 4
  %conv321 = fpext float %88 to double
  %call322 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr315, ptr noundef nonnull dereferenceable(1) @.str.208, double noundef %conv321) #25
  %idx.ext323 = sext i32 %call322 to i64
  %add.ptr324 = getelementptr inbounds i8, ptr %add.ptr315, i64 %idx.ext323
  br label %if.end325

if.end325:                                        ; preds = %if.then319, %if.end311
  %s.11 = phi ptr [ %add.ptr324, %if.then319 ], [ %add.ptr315, %if.end311 ]
  %89 = load ptr, ptr %psz_zones, align 8
  %tobool328.not = icmp eq ptr %89, null
  br i1 %tobool328.not, label %if.else335, label %if.then329

if.then329:                                       ; preds = %if.end325
  %call332 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.11, ptr noundef nonnull dereferenceable(1) @.str.209, ptr noundef nonnull %89) #25
  %idx.ext333 = sext i32 %call332 to i64
  %add.ptr334 = getelementptr inbounds i8, ptr %s.11, i64 %idx.ext333
  br label %if.end344

if.else335:                                       ; preds = %if.end325
  %i_zones = getelementptr inbounds i8, ptr %p, i64 616
  %90 = load i32, ptr %i_zones, align 8
  %tobool337.not = icmp eq i32 %90, 0
  br i1 %tobool337.not, label %if.end344, label %if.then338

if.then338:                                       ; preds = %if.else335
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %s.11, ptr noundef nonnull align 1 dereferenceable(7) @.str.210, i64 7, i1 false)
  %add.ptr341 = getelementptr inbounds i8, ptr %s.11, i64 6
  br label %if.end344

if.end344:                                        ; preds = %if.then329, %if.then338, %if.else335, %land.lhs.true
  %s.12 = phi ptr [ %s.9, %land.lhs.true ], [ %add.ptr334, %if.then329 ], [ %add.ptr341, %if.then338 ], [ %s.11, %if.else335 ]
  %i_vbv_buffer_size346 = getelementptr inbounds i8, ptr %p, i64 528
  %91 = load i32, ptr %i_vbv_buffer_size346, align 8
  %tobool347.not = icmp eq i32 %91, 0
  br i1 %tobool347.not, label %cleanup, label %if.then348

if.then348:                                       ; preds = %if.end344
  %i_nal_hrd = getelementptr inbounds i8, ptr %p, i64 40
  %92 = load i32, ptr %i_nal_hrd, align 8
  %idxprom349 = sext i32 %92 to i64
  %arrayidx350 = getelementptr inbounds [4 x ptr], ptr @x264_nal_hrd_names, i64 0, i64 %idxprom349
  %93 = load ptr, ptr %arrayidx350, align 8
  %call351 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.12, ptr noundef nonnull dereferenceable(1) @.str.211, ptr noundef %93) #25
  br label %cleanup

cleanup:                                          ; preds = %x264_malloc.exit.thread, %if.end344, %if.then348
  %retval.0 = phi ptr [ %add.ptr5.i, %if.then348 ], [ %add.ptr5.i, %if.end344 ], [ null, %x264_malloc.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

attributes #0 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { cold nounwind }
attributes #27 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
