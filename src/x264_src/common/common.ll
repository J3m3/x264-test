; ModuleID = 'x264_src/common/common.c'
source_filename = "x264_src/common/common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_cpu_name_t = type { [16 x i8], i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"x264_2pass.log\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [46 x i8] c"baseline profile doesn't support interlacing\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [51 x i8] c"baseline profile doesn't support fake interlacing\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [5 x i8] c"high\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [21 x i8] c"invalid profile: %s\0A\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [37 x i8] c"%s profile doesn't support lossless\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !39
@.str.11 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !dbg !41
@.str.12 = private unnamed_addr constant [4 x i8] c"asm\00", align 1, !dbg !46
@.str.13 = private unnamed_addr constant [5 x i8] c"auto\00", align 1, !dbg !51
@.str.14 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !53
@x264_cpu_names = external constant [0 x %struct.x264_cpu_name_t], align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"threads\00", align 1, !dbg !58
@.str.16 = private unnamed_addr constant [15 x i8] c"sliced-threads\00", align 1, !dbg !63
@.str.17 = private unnamed_addr constant [15 x i8] c"sync-lookahead\00", align 1, !dbg !65
@.str.18 = private unnamed_addr constant [14 x i8] c"deterministic\00", align 1, !dbg !67
@.str.19 = private unnamed_addr constant [16 x i8] c"n-deterministic\00", align 1, !dbg !72
@.str.20 = private unnamed_addr constant [6 x i8] c"level\00", align 1, !dbg !77
@.str.21 = private unnamed_addr constant [10 x i8] c"level-idc\00", align 1, !dbg !79
@.str.22 = private unnamed_addr constant [4 x i8] c"sar\00", align 1, !dbg !84
@.str.23 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1, !dbg !86
@.str.24 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1, !dbg !88
@.str.25 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1, !dbg !90
@x264_overscan_names = internal constant [4 x ptr] [ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr null], align 16, !dbg !92
@.str.26 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1, !dbg !141
@x264_vidformat_names = internal constant [7 x ptr] [ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.235, ptr null], align 16, !dbg !620
@.str.27 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1, !dbg !146
@x264_fullrange_names = internal constant [3 x ptr] [ptr @.str.243, ptr @.str.244, ptr null], align 16, !dbg !630
@.str.28 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1, !dbg !148
@x264_colorprim_names = internal constant [10 x ptr] [ptr @.str.245, ptr @.str.246, ptr @.str.235, ptr @.str.245, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.224, ptr null], align 16, !dbg !648
@.str.29 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1, !dbg !150
@x264_transfer_names = internal constant [12 x ptr] [ptr @.str.245, ptr @.str.246, ptr @.str.235, ptr @.str.245, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr null], align 16, !dbg !657
@.str.30 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1, !dbg !152
@x264_colmatrix_names = internal constant [10 x ptr] [ptr @.str.254, ptr @.str.246, ptr @.str.235, ptr @.str.245, ptr @.str.255, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.256, ptr null], align 16, !dbg !666
@.str.31 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1, !dbg !154
@.str.32 = private unnamed_addr constant [4 x i8] c"fps\00", align 1, !dbg !156
@.str.33 = private unnamed_addr constant [6 x i8] c"%u/%u\00", align 1, !dbg !158
@.str.34 = private unnamed_addr constant [4 x i8] c"ref\00", align 1, !dbg !160
@.str.35 = private unnamed_addr constant [9 x i8] c"frameref\00", align 1, !dbg !162
@.str.36 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1, !dbg !164
@.str.37 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1, !dbg !169
@.str.38 = private unnamed_addr constant [11 x i8] c"keyint-min\00", align 1, !dbg !174
@.str.39 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1, !dbg !176
@.str.40 = private unnamed_addr constant [14 x i8] c"intra-refresh\00", align 1, !dbg !178
@.str.41 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1, !dbg !180
@.str.42 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1, !dbg !182
@.str.43 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1, !dbg !184
@.str.44 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1, !dbg !186
@x264_b_pyramid_names = internal constant [4 x ptr] [ptr @.str.77, ptr @.str.257, ptr @.str.258, ptr null], align 16, !dbg !672
@.str.46 = private unnamed_addr constant [7 x i8] c"filter\00", align 1, !dbg !190
@.str.47 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1, !dbg !192
@.str.48 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1, !dbg !194
@.str.49 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !196
@.str.50 = private unnamed_addr constant [15 x i8] c"slice-max-size\00", align 1, !dbg !198
@.str.51 = private unnamed_addr constant [14 x i8] c"slice-max-mbs\00", align 1, !dbg !200
@.str.52 = private unnamed_addr constant [7 x i8] c"slices\00", align 1, !dbg !202
@.str.53 = private unnamed_addr constant [6 x i8] c"cabac\00", align 1, !dbg !204
@.str.54 = private unnamed_addr constant [10 x i8] c"cabac-idc\00", align 1, !dbg !206
@.str.55 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1, !dbg !208
@.str.56 = private unnamed_addr constant [4 x i8] c"tff\00", align 1, !dbg !210
@.str.57 = private unnamed_addr constant [4 x i8] c"bff\00", align 1, !dbg !212
@.str.58 = private unnamed_addr constant [18 x i8] c"constrained-intra\00", align 1, !dbg !214
@.str.59 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1, !dbg !219
@.str.60 = private unnamed_addr constant [5 x i8] c"flat\00", align 1, !dbg !221
@.str.61 = private unnamed_addr constant [4 x i8] c"jvt\00", align 1, !dbg !223
@.str.62 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1, !dbg !225
@.str.63 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1, !dbg !227
@.str.64 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1, !dbg !229
@.str.65 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1, !dbg !231
@.str.66 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1, !dbg !233
@.str.67 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1, !dbg !235
@.str.68 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1, !dbg !237
@.str.69 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1, !dbg !239
@.str.70 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1, !dbg !241
@.str.71 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1, !dbg !243
@.str.72 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1, !dbg !245
@.str.73 = private unnamed_addr constant [4 x i8] c"log\00", align 1, !dbg !247
@.str.74 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1, !dbg !249
@.str.75 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1, !dbg !251
@.str.76 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1, !dbg !253
@.str.77 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !255
@.str.78 = private unnamed_addr constant [4 x i8] c"all\00", align 1, !dbg !257
@.str.79 = private unnamed_addr constant [5 x i8] c"i4x4\00", align 1, !dbg !259
@.str.80 = private unnamed_addr constant [5 x i8] c"i8x8\00", align 1, !dbg !261
@.str.81 = private unnamed_addr constant [5 x i8] c"p8x8\00", align 1, !dbg !263
@.str.82 = private unnamed_addr constant [5 x i8] c"p4x4\00", align 1, !dbg !265
@.str.83 = private unnamed_addr constant [5 x i8] c"b8x8\00", align 1, !dbg !267
@.str.84 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1, !dbg !269
@.str.85 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1, !dbg !271
@.str.86 = private unnamed_addr constant [9 x i8] c"weight-b\00", align 1, !dbg !273
@.str.87 = private unnamed_addr constant [8 x i8] c"weightp\00", align 1, !dbg !275
@.str.88 = private unnamed_addr constant [7 x i8] c"direct\00", align 1, !dbg !277
@.str.89 = private unnamed_addr constant [12 x i8] c"direct-pred\00", align 1, !dbg !279
@x264_direct_pred_names = internal constant [5 x ptr] [ptr @.str.77, ptr @.str.259, ptr @.str.260, ptr @.str.13, ptr null], align 16, !dbg !679
@.str.90 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1, !dbg !281
@x264_motion_est_names = internal constant [6 x ptr] [ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr null], align 16, !dbg !692
@.str.92 = private unnamed_addr constant [8 x i8] c"merange\00", align 1, !dbg !288
@.str.93 = private unnamed_addr constant [9 x i8] c"me-range\00", align 1, !dbg !290
@.str.94 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1, !dbg !292
@.str.95 = private unnamed_addr constant [9 x i8] c"mv-range\00", align 1, !dbg !294
@.str.96 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1, !dbg !296
@.str.97 = private unnamed_addr constant [16 x i8] c"mv-range-thread\00", align 1, !dbg !298
@.str.98 = private unnamed_addr constant [6 x i8] c"subme\00", align 1, !dbg !300
@.str.99 = private unnamed_addr constant [5 x i8] c"subq\00", align 1, !dbg !302
@.str.100 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1, !dbg !304
@.str.101 = private unnamed_addr constant [6 x i8] c"%f:%f\00", align 1, !dbg !306
@.str.102 = private unnamed_addr constant [6 x i8] c"%f,%f\00", align 1, !dbg !308
@.str.103 = private unnamed_addr constant [6 x i8] c"%f|%f\00", align 1, !dbg !310
@.str.104 = private unnamed_addr constant [3 x i8] c"%f\00", align 1, !dbg !312
@.str.105 = private unnamed_addr constant [4 x i8] c"psy\00", align 1, !dbg !314
@.str.106 = private unnamed_addr constant [10 x i8] c"chroma-me\00", align 1, !dbg !316
@.str.107 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1, !dbg !318
@.str.108 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1, !dbg !320
@.str.109 = private unnamed_addr constant [11 x i8] c"fast-pskip\00", align 1, !dbg !322
@.str.110 = private unnamed_addr constant [13 x i8] c"dct-decimate\00", align 1, !dbg !324
@.str.111 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1, !dbg !329
@.str.112 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1, !dbg !331
@.str.114 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1, !dbg !335
@.str.116 = private unnamed_addr constant [12 x i8] c"qp_constant\00", align 1, !dbg !339
@.str.117 = private unnamed_addr constant [4 x i8] c"crf\00", align 1, !dbg !341
@.str.118 = private unnamed_addr constant [8 x i8] c"crf-max\00", align 1, !dbg !343
@.str.119 = private unnamed_addr constant [13 x i8] c"rc-lookahead\00", align 1, !dbg !345
@.str.120 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1, !dbg !347
@.str.121 = private unnamed_addr constant [7 x i8] c"qp-min\00", align 1, !dbg !349
@.str.122 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1, !dbg !351
@.str.123 = private unnamed_addr constant [7 x i8] c"qp-max\00", align 1, !dbg !353
@.str.124 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1, !dbg !355
@.str.125 = private unnamed_addr constant [8 x i8] c"qp-step\00", align 1, !dbg !357
@.str.126 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1, !dbg !359
@.str.128 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1, !dbg !363
@.str.129 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1, !dbg !365
@.str.130 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1, !dbg !367
@.str.131 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1, !dbg !369
@.str.132 = private unnamed_addr constant [10 x i8] c"ip-factor\00", align 1, !dbg !371
@.str.133 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1, !dbg !373
@.str.134 = private unnamed_addr constant [10 x i8] c"pb-factor\00", align 1, !dbg !375
@.str.135 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1, !dbg !377
@.str.136 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1, !dbg !379
@.str.137 = private unnamed_addr constant [5 x i8] c"pass\00", align 1, !dbg !381
@.str.138 = private unnamed_addr constant [6 x i8] c"stats\00", align 1, !dbg !383
@.str.139 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1, !dbg !385
@.str.140 = private unnamed_addr constant [7 x i8] c"mbtree\00", align 1, !dbg !387
@.str.141 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1, !dbg !389
@.str.142 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1, !dbg !391
@.str.143 = private unnamed_addr constant [10 x i8] c"cplx-blur\00", align 1, !dbg !393
@.str.144 = private unnamed_addr constant [6 x i8] c"zones\00", align 1, !dbg !395
@.str.145 = private unnamed_addr constant [5 x i8] c"psnr\00", align 1, !dbg !397
@.str.146 = private unnamed_addr constant [5 x i8] c"ssim\00", align 1, !dbg !399
@.str.147 = private unnamed_addr constant [4 x i8] c"aud\00", align 1, !dbg !401
@.str.148 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1, !dbg !403
@.str.149 = private unnamed_addr constant [14 x i8] c"global-header\00", align 1, !dbg !405
@.str.150 = private unnamed_addr constant [15 x i8] c"repeat-headers\00", align 1, !dbg !407
@.str.151 = private unnamed_addr constant [7 x i8] c"annexb\00", align 1, !dbg !409
@.str.152 = private unnamed_addr constant [10 x i8] c"force-cfr\00", align 1, !dbg !411
@.str.153 = private unnamed_addr constant [8 x i8] c"nal-hrd\00", align 1, !dbg !413
@x264_nal_hrd_names = internal constant [4 x ptr] [ptr @.str.77, ptr @.str.266, ptr @.str.195, ptr null], align 16, !dbg !697
@.str.154 = private unnamed_addr constant [11 x i8] c"pic-struct\00", align 1, !dbg !415
@.str.155 = private unnamed_addr constant [16 x i8] c"fake-interlaced\00", align 1, !dbg !417
@.str.156 = private unnamed_addr constant [26 x i8] c"malloc of size %d failed\0A\00", align 1, !dbg !419
@.str.157 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !424
@.str.158 = private unnamed_addr constant [7 x i8] c"%dx%d \00", align 1, !dbg !426
@.str.159 = private unnamed_addr constant [11 x i8] c"fps=%u/%u \00", align 1, !dbg !428
@.str.160 = private unnamed_addr constant [16 x i8] c"timebase=%u/%u \00", align 1, !dbg !430
@.str.161 = private unnamed_addr constant [9 x i8] c"cabac=%d\00", align 1, !dbg !432
@.str.162 = private unnamed_addr constant [8 x i8] c" ref=%d\00", align 1, !dbg !434
@.str.163 = private unnamed_addr constant [18 x i8] c" deblock=%d:%d:%d\00", align 1, !dbg !436
@.str.164 = private unnamed_addr constant [17 x i8] c" analyse=%#x:%#x\00", align 1, !dbg !438
@.str.165 = private unnamed_addr constant [7 x i8] c" me=%s\00", align 1, !dbg !440
@.str.166 = private unnamed_addr constant [10 x i8] c" subme=%d\00", align 1, !dbg !442
@.str.167 = private unnamed_addr constant [8 x i8] c" psy=%d\00", align 1, !dbg !444
@.str.168 = private unnamed_addr constant [18 x i8] c" psy_rd=%.2f:%.2f\00", align 1, !dbg !446
@.str.169 = private unnamed_addr constant [14 x i8] c" mixed_ref=%d\00", align 1, !dbg !448
@.str.170 = private unnamed_addr constant [13 x i8] c" me_range=%d\00", align 1, !dbg !450
@.str.171 = private unnamed_addr constant [14 x i8] c" chroma_me=%d\00", align 1, !dbg !452
@.str.172 = private unnamed_addr constant [12 x i8] c" trellis=%d\00", align 1, !dbg !454
@.str.173 = private unnamed_addr constant [11 x i8] c" 8x8dct=%d\00", align 1, !dbg !456
@.str.174 = private unnamed_addr constant [8 x i8] c" cqm=%d\00", align 1, !dbg !458
@.str.175 = private unnamed_addr constant [16 x i8] c" deadzone=%d,%d\00", align 1, !dbg !460
@.str.176 = private unnamed_addr constant [15 x i8] c" fast_pskip=%d\00", align 1, !dbg !462
@.str.177 = private unnamed_addr constant [21 x i8] c" chroma_qp_offset=%d\00", align 1, !dbg !464
@.str.178 = private unnamed_addr constant [12 x i8] c" threads=%d\00", align 1, !dbg !466
@.str.179 = private unnamed_addr constant [19 x i8] c" sliced_threads=%d\00", align 1, !dbg !468
@.str.180 = private unnamed_addr constant [11 x i8] c" slices=%d\00", align 1, !dbg !473
@.str.181 = private unnamed_addr constant [19 x i8] c" slice_max_size=%d\00", align 1, !dbg !475
@.str.182 = private unnamed_addr constant [18 x i8] c" slice_max_mbs=%d\00", align 1, !dbg !477
@.str.183 = private unnamed_addr constant [7 x i8] c" nr=%d\00", align 1, !dbg !479
@.str.184 = private unnamed_addr constant [13 x i8] c" decimate=%d\00", align 1, !dbg !481
@.str.185 = private unnamed_addr constant [15 x i8] c" interlaced=%s\00", align 1, !dbg !483
@.str.186 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !485
@.str.187 = private unnamed_addr constant [22 x i8] c" constrained_intra=%d\00", align 1, !dbg !487
@.str.188 = private unnamed_addr constant [12 x i8] c" bframes=%d\00", align 1, !dbg !492
@.str.189 = private unnamed_addr constant [56 x i8] c" b_pyramid=%d b_adapt=%d b_bias=%d direct=%d weightb=%d\00", align 1, !dbg !494
@.str.190 = private unnamed_addr constant [12 x i8] c" weightp=%d\00", align 1, !dbg !499
@.str.191 = private unnamed_addr constant [54 x i8] c" keyint=%d keyint_min=%d scenecut=%d intra_refresh=%d\00", align 1, !dbg !501
@.str.192 = private unnamed_addr constant [17 x i8] c" rc_lookahead=%d\00", align 1, !dbg !506
@.str.193 = private unnamed_addr constant [17 x i8] c" rc=%s mbtree=%d\00", align 1, !dbg !508
@.str.194 = private unnamed_addr constant [6 x i8] c"2pass\00", align 1, !dbg !510
@.str.195 = private unnamed_addr constant [4 x i8] c"cbr\00", align 1, !dbg !512
@.str.196 = private unnamed_addr constant [4 x i8] c"abr\00", align 1, !dbg !514
@.str.197 = private unnamed_addr constant [4 x i8] c"cqp\00", align 1, !dbg !516
@.str.198 = private unnamed_addr constant [10 x i8] c" crf=%.1f\00", align 1, !dbg !518
@.str.199 = private unnamed_addr constant [25 x i8] c" bitrate=%d ratetol=%.1f\00", align 1, !dbg !520
@.str.200 = private unnamed_addr constant [40 x i8] c" qcomp=%.2f qpmin=%d qpmax=%d qpstep=%d\00", align 1, !dbg !525
@.str.201 = private unnamed_addr constant [26 x i8] c" cplxblur=%.1f qblur=%.1f\00", align 1, !dbg !530
@.str.202 = private unnamed_addr constant [31 x i8] c" vbv_maxrate=%d vbv_bufsize=%d\00", align 1, !dbg !532
@.str.203 = private unnamed_addr constant [14 x i8] c" crf_max=%.1f\00", align 1, !dbg !537
@.str.204 = private unnamed_addr constant [7 x i8] c" qp=%d\00", align 1, !dbg !539
@.str.205 = private unnamed_addr constant [15 x i8] c" ip_ratio=%.2f\00", align 1, !dbg !541
@.str.206 = private unnamed_addr constant [15 x i8] c" pb_ratio=%.2f\00", align 1, !dbg !543
@.str.207 = private unnamed_addr constant [7 x i8] c" aq=%d\00", align 1, !dbg !545
@.str.208 = private unnamed_addr constant [6 x i8] c":%.2f\00", align 1, !dbg !547
@.str.209 = private unnamed_addr constant [10 x i8] c" zones=%s\00", align 1, !dbg !549
@.str.210 = private unnamed_addr constant [7 x i8] c" zones\00", align 1, !dbg !551
@.str.211 = private unnamed_addr constant [12 x i8] c" nal_hrd=%s\00", align 1, !dbg !553
@.str.212 = private unnamed_addr constant [10 x i8] c"ultrafast\00", align 1, !dbg !555
@.str.213 = private unnamed_addr constant [10 x i8] c"superfast\00", align 1, !dbg !557
@.str.214 = private unnamed_addr constant [9 x i8] c"veryfast\00", align 1, !dbg !559
@.str.215 = private unnamed_addr constant [7 x i8] c"faster\00", align 1, !dbg !561
@.str.216 = private unnamed_addr constant [5 x i8] c"fast\00", align 1, !dbg !563
@.str.217 = private unnamed_addr constant [7 x i8] c"medium\00", align 1, !dbg !565
@.str.218 = private unnamed_addr constant [5 x i8] c"slow\00", align 1, !dbg !567
@.str.219 = private unnamed_addr constant [7 x i8] c"slower\00", align 1, !dbg !569
@.str.220 = private unnamed_addr constant [9 x i8] c"veryslow\00", align 1, !dbg !571
@.str.221 = private unnamed_addr constant [8 x i8] c"placebo\00", align 1, !dbg !573
@.str.222 = private unnamed_addr constant [21 x i8] c"invalid preset '%s'\0A\00", align 1, !dbg !575
@.str.223 = private unnamed_addr constant [6 x i8] c",./-+\00", align 1, !dbg !577
@.str.224 = private unnamed_addr constant [5 x i8] c"film\00", align 1, !dbg !579
@.str.225 = private unnamed_addr constant [10 x i8] c"animation\00", align 1, !dbg !581
@.str.226 = private unnamed_addr constant [6 x i8] c"grain\00", align 1, !dbg !583
@.str.227 = private unnamed_addr constant [11 x i8] c"stillimage\00", align 1, !dbg !585
@.str.228 = private unnamed_addr constant [11 x i8] c"fastdecode\00", align 1, !dbg !587
@.str.229 = private unnamed_addr constant [12 x i8] c"zerolatency\00", align 1, !dbg !589
@.str.230 = private unnamed_addr constant [7 x i8] c"touhou\00", align 1, !dbg !591
@.str.231 = private unnamed_addr constant [19 x i8] c"invalid tune '%s'\0A\00", align 1, !dbg !593
@.str.232 = private unnamed_addr constant [49 x i8] c"only 1 psy tuning can be used: ignoring tune %s\0A\00", align 1, !dbg !595
@.str.234 = private unnamed_addr constant [4 x i8] c"yes\00", align 1, !dbg !602
@.str.235 = private unnamed_addr constant [6 x i8] c"undef\00", align 1, !dbg !604
@.str.236 = private unnamed_addr constant [5 x i8] c"show\00", align 1, !dbg !606
@.str.237 = private unnamed_addr constant [5 x i8] c"crop\00", align 1, !dbg !608
@.str.238 = private unnamed_addr constant [10 x i8] c"component\00", align 1, !dbg !610
@.str.239 = private unnamed_addr constant [4 x i8] c"pal\00", align 1, !dbg !612
@.str.240 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1, !dbg !614
@.str.241 = private unnamed_addr constant [6 x i8] c"secam\00", align 1, !dbg !616
@.str.242 = private unnamed_addr constant [4 x i8] c"mac\00", align 1, !dbg !618
@.str.243 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !626
@.str.244 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !628
@.str.245 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !633
@.str.246 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1, !dbg !638
@.str.247 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1, !dbg !640
@.str.248 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1, !dbg !642
@.str.249 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1, !dbg !644
@.str.250 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1, !dbg !646
@.str.251 = private unnamed_addr constant [7 x i8] c"linear\00", align 1, !dbg !651
@.str.252 = private unnamed_addr constant [7 x i8] c"log100\00", align 1, !dbg !653
@.str.253 = private unnamed_addr constant [7 x i8] c"log316\00", align 1, !dbg !655
@.str.254 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1, !dbg !660
@.str.255 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1, !dbg !662
@.str.256 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1, !dbg !664
@.str.257 = private unnamed_addr constant [7 x i8] c"strict\00", align 1, !dbg !668
@.str.258 = private unnamed_addr constant [7 x i8] c"normal\00", align 1, !dbg !670
@.str.259 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1, !dbg !675
@.str.260 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1, !dbg !677
@.str.261 = private unnamed_addr constant [4 x i8] c"dia\00", align 1, !dbg !682
@.str.262 = private unnamed_addr constant [4 x i8] c"hex\00", align 1, !dbg !684
@.str.263 = private unnamed_addr constant [4 x i8] c"umh\00", align 1, !dbg !686
@.str.264 = private unnamed_addr constant [4 x i8] c"esa\00", align 1, !dbg !688
@.str.265 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1, !dbg !690
@.str.266 = private unnamed_addr constant [4 x i8] c"vbr\00", align 1, !dbg !695
@.str.267 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !699
@.str.268 = private unnamed_addr constant [8 x i8] c"warning\00", align 1, !dbg !701
@.str.269 = private unnamed_addr constant [5 x i8] c"info\00", align 1, !dbg !703
@.str.270 = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !705
@.str.271 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !707
@stderr = external local_unnamed_addr global ptr, align 8
@.str.272 = private unnamed_addr constant [12 x i8] c"x264 [%s]: \00", align 1, !dbg !709
@switch.table.x264_log = private unnamed_addr constant [4 x ptr] [ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270], align 8

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noalias noundef ptr @spec_strdup(ptr nocapture noundef readonly %str) local_unnamed_addr #0 !dbg !719 {
entry:
    #dbg_value(ptr %str, !723, !DIExpression(), !728)
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #23, !dbg !729
  %conv = trunc i64 %call to i32, !dbg !729
    #dbg_value(i32 %conv, !724, !DIExpression(), !728)
  %add = shl i64 %call, 32, !dbg !730
  %sext = add i64 %add, 4294967296, !dbg !730
  %conv1 = ashr exact i64 %sext, 32, !dbg !730
  %call2 = tail call noalias ptr @malloc(i64 noundef %conv1) #24, !dbg !731
    #dbg_value(ptr %call2, !725, !DIExpression(), !728)
    #dbg_value(i32 0, !726, !DIExpression(), !732)
  %cmp17 = icmp sgt i32 %conv, 0, !dbg !733
  br i1 %cmp17, label %for.body.preheader, label %for.cond.cleanup, !dbg !735

for.body.preheader:                               ; preds = %entry
  %0 = and i64 %call, 2147483647, !dbg !735
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call2, ptr align 1 %str, i64 %0, i1 false), !dbg !736
    #dbg_value(i64 poison, !726, !DIExpression(), !732)
  br label %for.cond.cleanup, !dbg !738

for.cond.cleanup:                                 ; preds = %for.body.preheader, %entry
  %idxprom6 = ashr exact i64 %add, 32, !dbg !738
  %arrayidx7 = getelementptr inbounds i8, ptr %call2, i64 %idxprom6, !dbg !738
  store i8 0, ptr %arrayidx7, align 1, !dbg !739
  ret ptr %call2, !dbg !740
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !741 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !746 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_param_default(ptr noundef writeonly %param) local_unnamed_addr #4 !dbg !752 {
entry:
    #dbg_value(ptr %param, !924, !DIExpression(), !925)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %param, i8 0, i64 704, i1 false), !dbg !926
  %call = tail call i32 @x264_cpu_detect() #25, !dbg !927
  store i32 %call, ptr %param, align 8, !dbg !928
  %i_threads = getelementptr inbounds i8, ptr %param, i64 4, !dbg !929
  store i32 0, ptr %i_threads, align 4, !dbg !930
  %b_deterministic = getelementptr inbounds i8, ptr %param, i64 12, !dbg !931
  %i_csp = getelementptr inbounds i8, ptr %param, i64 28, !dbg !932
  store i32 1, ptr %i_csp, align 4, !dbg !933
  store <4 x i32> <i32 1, i32 -1, i32 0, i32 0>, ptr %b_deterministic, align 4, !dbg !934
  %i_vidformat = getelementptr inbounds i8, ptr %param, i64 56, !dbg !935
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %i_vidformat, align 4, !dbg !936
  %i_colmatrix = getelementptr inbounds i8, ptr %param, i64 72, !dbg !937
  %i_fps_num = getelementptr inbounds i8, ptr %param, i64 652, !dbg !938
  store i32 25, ptr %i_fps_num, align 4, !dbg !939
  %i_fps_den = getelementptr inbounds i8, ptr %param, i64 656, !dbg !940
  store i32 1, ptr %i_fps_den, align 8, !dbg !941
  %i_level_idc = getelementptr inbounds i8, ptr %param, i64 32, !dbg !942
  store i32 -1, ptr %i_level_idc, align 8, !dbg !943
  %i_slice_max_size = getelementptr inbounds i8, ptr %param, i64 684, !dbg !944
  store i32 0, ptr %i_slice_max_size, align 4, !dbg !945
  %i_slice_max_mbs = getelementptr inbounds i8, ptr %param, i64 688, !dbg !946
  store i32 0, ptr %i_slice_max_mbs, align 8, !dbg !947
  %i_slice_count = getelementptr inbounds i8, ptr %param, i64 692, !dbg !948
  store i32 0, ptr %i_slice_count, align 4, !dbg !949
  store <4 x i32> <i32 2, i32 0, i32 3, i32 250>, ptr %i_colmatrix, align 4, !dbg !950
  %i_keyint_min = getelementptr inbounds i8, ptr %param, i64 88, !dbg !951
  store i32 0, ptr %i_keyint_min, align 8, !dbg !952
  %i_bframe = getelementptr inbounds i8, ptr %param, i64 100, !dbg !953
  %i_scenecut_threshold = getelementptr inbounds i8, ptr %param, i64 92, !dbg !954
  store i32 40, ptr %i_scenecut_threshold, align 4, !dbg !955
  store <4 x i32> <i32 3, i32 1, i32 0, i32 2>, ptr %i_bframe, align 4, !dbg !956
  %b_deblocking_filter = getelementptr inbounds i8, ptr %param, i64 116, !dbg !957
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %b_deblocking_filter, align 4, !dbg !958
  %i_cabac_init_idc = getelementptr inbounds i8, ptr %param, i64 132, !dbg !959
  %rc = getelementptr inbounds i8, ptr %param, i64 488, !dbg !960
  %i_bitrate = getelementptr inbounds i8, ptr %param, i64 508, !dbg !961
  store i32 0, ptr %i_bitrate, align 4, !dbg !962
  %f_rate_tolerance = getelementptr inbounds i8, ptr %param, i64 520, !dbg !963
  store float 1.000000e+00, ptr %f_rate_tolerance, align 8, !dbg !964
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %param, i64 524, !dbg !965
  store i32 0, ptr %i_vbv_max_bitrate, align 4, !dbg !966
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %param, i64 528, !dbg !967
  store i32 0, ptr %i_vbv_buffer_size, align 8, !dbg !968
  %f_vbv_buffer_init = getelementptr inbounds i8, ptr %param, i64 532, !dbg !969
  %f_rf_constant = getelementptr inbounds i8, ptr %param, i64 512, !dbg !970
  store float 2.300000e+01, ptr %f_rf_constant, align 8, !dbg !971
  store <4 x i32> <i32 1, i32 23, i32 10, i32 51>, ptr %rc, align 8, !dbg !972
  %i_qp_step = getelementptr inbounds i8, ptr %param, i64 504, !dbg !973
  store i32 4, ptr %i_qp_step, align 8, !dbg !974
  store <2 x float> <float 0x3FECCCCCC0000000, float 0x3FF6666660000000>, ptr %f_vbv_buffer_init, align 4, !dbg !975
  %f_pb_factor = getelementptr inbounds i8, ptr %param, i64 540, !dbg !976
  store float 0x3FF4CCCCC0000000, ptr %f_pb_factor, align 4, !dbg !977
  %i_aq_mode = getelementptr inbounds i8, ptr %param, i64 544, !dbg !978
  store i32 1, ptr %i_aq_mode, align 8, !dbg !979
  %f_aq_strength = getelementptr inbounds i8, ptr %param, i64 548, !dbg !980
  store float 1.000000e+00, ptr %f_aq_strength, align 4, !dbg !981
  %i_lookahead = getelementptr inbounds i8, ptr %param, i64 556, !dbg !982
  store i32 40, ptr %i_lookahead, align 4, !dbg !983
  %b_stat_write = getelementptr inbounds i8, ptr %param, i64 560, !dbg !984
  store i32 0, ptr %b_stat_write, align 8, !dbg !985
  %psz_stat_out = getelementptr inbounds i8, ptr %param, i64 568, !dbg !986
  store ptr @.str, ptr %psz_stat_out, align 8, !dbg !987
  %b_stat_read = getelementptr inbounds i8, ptr %param, i64 576, !dbg !988
  store i32 0, ptr %b_stat_read, align 8, !dbg !989
  %psz_stat_in = getelementptr inbounds i8, ptr %param, i64 584, !dbg !990
  store ptr @.str, ptr %psz_stat_in, align 8, !dbg !991
  %f_qcompress = getelementptr inbounds i8, ptr %param, i64 592, !dbg !992
  store <2 x float> <float 0x3FE3333340000000, float 5.000000e-01>, ptr %f_qcompress, align 8, !dbg !993
  %f_complexity_blur = getelementptr inbounds i8, ptr %param, i64 600, !dbg !994
  store float 2.000000e+01, ptr %f_complexity_blur, align 8, !dbg !995
  %i_zones = getelementptr inbounds i8, ptr %param, i64 616, !dbg !996
  store i32 0, ptr %i_zones, align 8, !dbg !997
  %b_mb_tree = getelementptr inbounds i8, ptr %param, i64 552, !dbg !998
  store i32 1, ptr %b_mb_tree, align 8, !dbg !999
  %pf_log = getelementptr inbounds i8, ptr %param, i64 352, !dbg !1000
  store ptr @x264_log_default, ptr %pf_log, align 8, !dbg !1001
  %p_log_private = getelementptr inbounds i8, ptr %param, i64 360, !dbg !1002
  store ptr null, ptr %p_log_private, align 8, !dbg !1003
  %i_log_level = getelementptr inbounds i8, ptr %param, i64 368, !dbg !1004
  store i32 2, ptr %i_log_level, align 8, !dbg !1005
  %analyse = getelementptr inbounds i8, ptr %param, i64 384, !dbg !1006
  %f_psy_rd = getelementptr inbounds i8, ptr %param, i64 456, !dbg !1007
  %b_psy = getelementptr inbounds i8, ptr %param, i64 464, !dbg !1008
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %f_psy_rd, align 8, !dbg !1009
  %i_me_range = getelementptr inbounds i8, ptr %param, i64 416, !dbg !1010
  %b_chroma_me = getelementptr inbounds i8, ptr %param, i64 432, !dbg !1011
  store <4 x i32> <i32 16, i32 -1, i32 -1, i32 7>, ptr %i_me_range, align 8, !dbg !1012
  %b_weighted_bipred = getelementptr inbounds i8, ptr %param, i64 400, !dbg !1013
  store <4 x i32> <i32 1, i32 1, i32 0, i32 1>, ptr %b_weighted_bipred, align 8, !dbg !1014
  %b_dct_decimate = getelementptr inbounds i8, ptr %param, i64 448, !dbg !1015
  store i32 1, ptr %b_dct_decimate, align 8, !dbg !1016
  store <4 x i32> <i32 3, i32 275, i32 1, i32 2>, ptr %analyse, align 8, !dbg !1017
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %b_chroma_me, align 8, !dbg !1018
  store <4 x i32> <i32 1, i32 21, i32 11, i32 0>, ptr %b_psy, align 8, !dbg !1019
  %b_ssim = getelementptr inbounds i8, ptr %param, i64 480, !dbg !1020
  store i32 0, ptr %b_ssim, align 8, !dbg !1021
  store <4 x i32> zeroinitializer, ptr %i_cabac_init_idc, align 4, !dbg !1022
  %cqm_4iy = getelementptr inbounds i8, ptr %param, i64 160, !dbg !1023
  %b_repeat_headers = getelementptr inbounds i8, ptr %param, i64 636, !dbg !1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %cqm_4iy, i8 16, i64 192, i1 false), !dbg !1025
  store i32 1, ptr %b_repeat_headers, align 4, !dbg !1026
  %b_annexb = getelementptr inbounds i8, ptr %param, i64 640, !dbg !1027
  store i32 1, ptr %b_annexb, align 8, !dbg !1028
  %b_aud = getelementptr inbounds i8, ptr %param, i64 632, !dbg !1029
  store i32 0, ptr %b_aud, align 8, !dbg !1030
  %b_vfr_input = getelementptr inbounds i8, ptr %param, i64 648, !dbg !1031
  store i32 1, ptr %b_vfr_input, align 8, !dbg !1032
  %b_dts_compress = getelementptr inbounds i8, ptr %param, i64 668, !dbg !1033
  %i_nal_hrd = getelementptr inbounds i8, ptr %param, i64 40, !dbg !1034
  store <4 x i32> zeroinitializer, ptr %i_nal_hrd, align 8, !dbg !1035
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %b_dts_compress, align 4, !dbg !1036
  ret void, !dbg !1037
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !1038 i32 @x264_cpu_detect() local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal void @x264_log_default(ptr nocapture readnone %p_unused, i32 noundef %i_level, ptr nocapture noundef readonly %psz_fmt, ptr noundef %arg) #7 !dbg !1042 {
entry:
    #dbg_value(ptr poison, !1044, !DIExpression(), !1049)
    #dbg_value(i32 %i_level, !1045, !DIExpression(), !1049)
    #dbg_value(ptr %psz_fmt, !1046, !DIExpression(), !1049)
    #dbg_value(ptr %arg, !1047, !DIExpression(), !1049)
  %0 = icmp ult i32 %i_level, 4, !dbg !1050
  br i1 %0, label %switch.lookup, label %sw.epilog, !dbg !1050

switch.lookup:                                    ; preds = %entry
  %1 = zext nneg i32 %i_level to i64, !dbg !1050
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.x264_log, i64 0, i64 %1, !dbg !1050
  %switch.load = load ptr, ptr %switch.gep, align 8, !dbg !1050
  br label %sw.epilog, !dbg !1050

sw.epilog:                                        ; preds = %entry, %switch.lookup
  %psz_prefix.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.271, %entry ], !dbg !1051
    #dbg_value(ptr %psz_prefix.0, !1048, !DIExpression(), !1049)
  %2 = load ptr, ptr @stderr, align 8, !dbg !1053
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.272, ptr noundef nonnull %psz_prefix.0) #26, !dbg !1054
  %3 = load ptr, ptr @stderr, align 8, !dbg !1055
  %call4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %psz_fmt, ptr noundef %arg) #26, !dbg !1056
  ret void, !dbg !1057
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_param_default_preset(ptr noundef %param, ptr noundef %preset, ptr noundef readonly %tune) local_unnamed_addr #4 !dbg !1058 {
entry:
    #dbg_value(ptr %param, !1062, !DIExpression(), !1065)
    #dbg_value(ptr %preset, !1063, !DIExpression(), !1065)
    #dbg_value(ptr %tune, !1064, !DIExpression(), !1065)
  tail call void @x264_param_default(ptr noundef %param), !dbg !1066
  %tobool.not = icmp eq ptr %preset, null, !dbg !1067
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !dbg !1069

land.lhs.true:                                    ; preds = %entry
    #dbg_value(ptr %param, !1070, !DIExpression(), !1076)
    #dbg_value(ptr %preset, !1075, !DIExpression(), !1076)
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(10) @.str.212) #23, !dbg !1078
  %tobool.not.i = icmp eq i32 %call.i, 0, !dbg !1078
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i, !dbg !1080

if.then.i:                                        ; preds = %land.lhs.true
  %i_frame_reference.i = getelementptr inbounds i8, ptr %param, i64 80, !dbg !1081
  store i32 1, ptr %i_frame_reference.i, align 8, !dbg !1083
  %i_scenecut_threshold.i = getelementptr inbounds i8, ptr %param, i64 92, !dbg !1084
  store i32 0, ptr %i_scenecut_threshold.i, align 4, !dbg !1085
  %b_deblocking_filter.i = getelementptr inbounds i8, ptr %param, i64 116, !dbg !1086
  store i32 0, ptr %b_deblocking_filter.i, align 4, !dbg !1087
  %b_cabac.i = getelementptr inbounds i8, ptr %param, i64 128, !dbg !1088
  store i32 0, ptr %b_cabac.i, align 8, !dbg !1089
  %i_bframe.i = getelementptr inbounds i8, ptr %param, i64 100, !dbg !1090
  store i32 0, ptr %i_bframe.i, align 4, !dbg !1091
  %analyse.i = getelementptr inbounds i8, ptr %param, i64 384, !dbg !1092
  %i_me_method.i = getelementptr inbounds i8, ptr %param, i64 412, !dbg !1093
  store i32 0, ptr %i_me_method.i, align 4, !dbg !1094
  %i_subpel_refine.i = getelementptr inbounds i8, ptr %param, i64 428, !dbg !1095
  store i32 0, ptr %i_subpel_refine.i, align 4, !dbg !1096
  %i_aq_mode.i = getelementptr inbounds i8, ptr %param, i64 544, !dbg !1097
  store i32 0, ptr %i_aq_mode.i, align 8, !dbg !1098
  %b_mixed_references.i = getelementptr inbounds i8, ptr %param, i64 436, !dbg !1099
  store i32 0, ptr %b_mixed_references.i, align 4, !dbg !1100
  %i_trellis.i = getelementptr inbounds i8, ptr %param, i64 440, !dbg !1101
  store i32 0, ptr %i_trellis.i, align 8, !dbg !1102
  %i_bframe_adaptive.i = getelementptr inbounds i8, ptr %param, i64 104, !dbg !1103
  store i32 0, ptr %i_bframe_adaptive.i, align 8, !dbg !1104
  %b_mb_tree.i = getelementptr inbounds i8, ptr %param, i64 552, !dbg !1105
  store i32 0, ptr %b_mb_tree.i, align 8, !dbg !1106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %analyse.i, i8 0, i64 16, i1 false), !dbg !1107
  br label %if.end, !dbg !1108

if.else.i:                                        ; preds = %land.lhs.true
  %call9.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(10) @.str.213) #23, !dbg !1109
  %tobool10.not.i = icmp eq i32 %call9.i, 0, !dbg !1109
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else27.i, !dbg !1111

if.then11.i:                                      ; preds = %if.else.i
  %inter13.i = getelementptr inbounds i8, ptr %param, i64 388, !dbg !1112
  store i32 3, ptr %inter13.i, align 4, !dbg !1114
  %i_me_method15.i = getelementptr inbounds i8, ptr %param, i64 412, !dbg !1115
  store i32 0, ptr %i_me_method15.i, align 4, !dbg !1116
  %i_subpel_refine17.i = getelementptr inbounds i8, ptr %param, i64 428, !dbg !1117
  store i32 1, ptr %i_subpel_refine17.i, align 4, !dbg !1118
  %i_frame_reference18.i = getelementptr inbounds i8, ptr %param, i64 80, !dbg !1119
  store i32 1, ptr %i_frame_reference18.i, align 8, !dbg !1120
  %b_mixed_references20.i = getelementptr inbounds i8, ptr %param, i64 436, !dbg !1121
  store i32 0, ptr %b_mixed_references20.i, align 4, !dbg !1122
  %i_trellis22.i = getelementptr inbounds i8, ptr %param, i64 440, !dbg !1123
  store i32 0, ptr %i_trellis22.i, align 8, !dbg !1124
  %b_mb_tree24.i = getelementptr inbounds i8, ptr %param, i64 552, !dbg !1125
  store i32 0, ptr %b_mb_tree24.i, align 8, !dbg !1126
  %i_weighted_pred26.i = getelementptr inbounds i8, ptr %param, i64 396, !dbg !1127
  store i32 0, ptr %i_weighted_pred26.i, align 4, !dbg !1128
  br label %if.end, !dbg !1129

if.else27.i:                                      ; preds = %if.else.i
  %call28.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(9) @.str.214) #23, !dbg !1130
  %tobool29.not.i = icmp eq i32 %call28.i, 0, !dbg !1130
  br i1 %tobool29.not.i, label %if.then30.i, label %if.else44.i, !dbg !1132

if.then30.i:                                      ; preds = %if.else27.i
  %i_me_method32.i = getelementptr inbounds i8, ptr %param, i64 412, !dbg !1133
  store i32 1, ptr %i_me_method32.i, align 4, !dbg !1135
  %i_subpel_refine34.i = getelementptr inbounds i8, ptr %param, i64 428, !dbg !1136
  store i32 2, ptr %i_subpel_refine34.i, align 4, !dbg !1137
  %i_frame_reference35.i = getelementptr inbounds i8, ptr %param, i64 80, !dbg !1138
  store i32 1, ptr %i_frame_reference35.i, align 8, !dbg !1139
  %b_mixed_references37.i = getelementptr inbounds i8, ptr %param, i64 436, !dbg !1140
  store i32 0, ptr %b_mixed_references37.i, align 4, !dbg !1141
  %i_trellis39.i = getelementptr inbounds i8, ptr %param, i64 440, !dbg !1142
  store i32 0, ptr %i_trellis39.i, align 8, !dbg !1143
  %b_mb_tree41.i = getelementptr inbounds i8, ptr %param, i64 552, !dbg !1144
  store i32 0, ptr %b_mb_tree41.i, align 8, !dbg !1145
  %i_weighted_pred43.i = getelementptr inbounds i8, ptr %param, i64 396, !dbg !1146
  store i32 0, ptr %i_weighted_pred43.i, align 4, !dbg !1147
  br label %if.end, !dbg !1148

if.else44.i:                                      ; preds = %if.else27.i
  %call45.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(7) @.str.215) #23, !dbg !1149
  %tobool46.not.i = icmp eq i32 %call45.i, 0, !dbg !1149
  br i1 %tobool46.not.i, label %if.then47.i, label %if.else56.i, !dbg !1151

if.then47.i:                                      ; preds = %if.else44.i
  %b_mixed_references49.i = getelementptr inbounds i8, ptr %param, i64 436, !dbg !1152
  store i32 0, ptr %b_mixed_references49.i, align 4, !dbg !1154
  %i_frame_reference50.i = getelementptr inbounds i8, ptr %param, i64 80, !dbg !1155
  store i32 2, ptr %i_frame_reference50.i, align 8, !dbg !1156
  %i_subpel_refine52.i = getelementptr inbounds i8, ptr %param, i64 428, !dbg !1157
  store i32 4, ptr %i_subpel_refine52.i, align 4, !dbg !1158
  %i_weighted_pred54.i = getelementptr inbounds i8, ptr %param, i64 396, !dbg !1159
  store i32 1, ptr %i_weighted_pred54.i, align 4, !dbg !1160
  %i_lookahead.i = getelementptr inbounds i8, ptr %param, i64 556, !dbg !1161
  store i32 20, ptr %i_lookahead.i, align 4, !dbg !1162
  br label %if.end, !dbg !1163

if.else56.i:                                      ; preds = %if.else44.i
  %call57.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(5) @.str.216) #23, !dbg !1164
  %tobool58.not.i = icmp eq i32 %call57.i, 0, !dbg !1164
  br i1 %tobool58.not.i, label %if.then59.i, label %if.else65.i, !dbg !1166

if.then59.i:                                      ; preds = %if.else56.i
  %i_frame_reference60.i = getelementptr inbounds i8, ptr %param, i64 80, !dbg !1167
  store i32 2, ptr %i_frame_reference60.i, align 8, !dbg !1169
  %i_subpel_refine62.i = getelementptr inbounds i8, ptr %param, i64 428, !dbg !1170
  store i32 6, ptr %i_subpel_refine62.i, align 4, !dbg !1171
  %i_lookahead64.i = getelementptr inbounds i8, ptr %param, i64 556, !dbg !1172
  store i32 30, ptr %i_lookahead64.i, align 4, !dbg !1173
  br label %if.end, !dbg !1174

if.else65.i:                                      ; preds = %if.else56.i
  %call66.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(7) @.str.217) #23, !dbg !1175
  %tobool67.not.i = icmp eq i32 %call66.i, 0, !dbg !1175
  br i1 %tobool67.not.i, label %if.end, label %if.else69.i, !dbg !1177

if.else69.i:                                      ; preds = %if.else65.i
  %call70.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(5) @.str.218) #23, !dbg !1178
  %tobool71.not.i = icmp eq i32 %call70.i, 0, !dbg !1178
  br i1 %tobool71.not.i, label %if.then72.i, label %if.else82.i, !dbg !1180

if.then72.i:                                      ; preds = %if.else69.i
  %i_me_method74.i = getelementptr inbounds i8, ptr %param, i64 412, !dbg !1181
  store i32 2, ptr %i_me_method74.i, align 4, !dbg !1183
  %i_subpel_refine76.i = getelementptr inbounds i8, ptr %param, i64 428, !dbg !1184
  store i32 8, ptr %i_subpel_refine76.i, align 4, !dbg !1185
  %i_frame_reference77.i = getelementptr inbounds i8, ptr %param, i64 80, !dbg !1186
  store i32 5, ptr %i_frame_reference77.i, align 8, !dbg !1187
  %i_bframe_adaptive78.i = getelementptr inbounds i8, ptr %param, i64 104, !dbg !1188
  store i32 2, ptr %i_bframe_adaptive78.i, align 8, !dbg !1189
  %i_direct_mv_pred.i = getelementptr inbounds i8, ptr %param, i64 404, !dbg !1190
  store i32 3, ptr %i_direct_mv_pred.i, align 4, !dbg !1191
  %i_lookahead81.i = getelementptr inbounds i8, ptr %param, i64 556, !dbg !1192
  store i32 50, ptr %i_lookahead81.i, align 4, !dbg !1193
  br label %if.end, !dbg !1194

if.else82.i:                                      ; preds = %if.else69.i
  %call83.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(7) @.str.219) #23, !dbg !1195
  %tobool84.not.i = icmp eq i32 %call83.i, 0, !dbg !1195
  br i1 %tobool84.not.i, label %if.then85.i, label %if.else100.i, !dbg !1197

if.then85.i:                                      ; preds = %if.else82.i
  %i_me_method87.i = getelementptr inbounds i8, ptr %param, i64 412, !dbg !1198
  store i32 2, ptr %i_me_method87.i, align 4, !dbg !1200
  %i_subpel_refine89.i = getelementptr inbounds i8, ptr %param, i64 428, !dbg !1201
  store i32 9, ptr %i_subpel_refine89.i, align 4, !dbg !1202
  %i_frame_reference90.i = getelementptr inbounds i8, ptr %param, i64 80, !dbg !1203
  store i32 8, ptr %i_frame_reference90.i, align 8, !dbg !1204
  %i_bframe_adaptive91.i = getelementptr inbounds i8, ptr %param, i64 104, !dbg !1205
  store i32 2, ptr %i_bframe_adaptive91.i, align 8, !dbg !1206
  %i_direct_mv_pred93.i = getelementptr inbounds i8, ptr %param, i64 404, !dbg !1207
  store i32 3, ptr %i_direct_mv_pred93.i, align 4, !dbg !1208
  %inter95.i = getelementptr inbounds i8, ptr %param, i64 388, !dbg !1209
  %0 = load i32, ptr %inter95.i, align 4, !dbg !1210
  %or.i = or i32 %0, 32, !dbg !1210
  store i32 %or.i, ptr %inter95.i, align 4, !dbg !1210
  %i_trellis97.i = getelementptr inbounds i8, ptr %param, i64 440, !dbg !1211
  store i32 2, ptr %i_trellis97.i, align 8, !dbg !1212
  %i_lookahead99.i = getelementptr inbounds i8, ptr %param, i64 556, !dbg !1213
  store i32 60, ptr %i_lookahead99.i, align 4, !dbg !1214
  br label %if.end, !dbg !1215

if.else100.i:                                     ; preds = %if.else82.i
  %call101.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(9) @.str.220) #23, !dbg !1216
  %tobool102.not.i = icmp eq i32 %call101.i, 0, !dbg !1216
  br i1 %tobool102.not.i, label %if.then103.i, label %if.else121.i, !dbg !1218

if.then103.i:                                     ; preds = %if.else100.i
  %i_me_method105.i = getelementptr inbounds i8, ptr %param, i64 412, !dbg !1219
  store i32 2, ptr %i_me_method105.i, align 4, !dbg !1221
  %i_subpel_refine107.i = getelementptr inbounds i8, ptr %param, i64 428, !dbg !1222
  store i32 10, ptr %i_subpel_refine107.i, align 4, !dbg !1223
  %i_me_range.i = getelementptr inbounds i8, ptr %param, i64 416, !dbg !1224
  store i32 24, ptr %i_me_range.i, align 8, !dbg !1225
  %i_frame_reference109.i = getelementptr inbounds i8, ptr %param, i64 80, !dbg !1226
  store i32 16, ptr %i_frame_reference109.i, align 8, !dbg !1227
  %i_bframe_adaptive110.i = getelementptr inbounds i8, ptr %param, i64 104, !dbg !1228
  store i32 2, ptr %i_bframe_adaptive110.i, align 8, !dbg !1229
  %i_direct_mv_pred112.i = getelementptr inbounds i8, ptr %param, i64 404, !dbg !1230
  store i32 3, ptr %i_direct_mv_pred112.i, align 4, !dbg !1231
  %inter114.i = getelementptr inbounds i8, ptr %param, i64 388, !dbg !1232
  %1 = load i32, ptr %inter114.i, align 4, !dbg !1233
  %or115.i = or i32 %1, 32, !dbg !1233
  store i32 %or115.i, ptr %inter114.i, align 4, !dbg !1233
  %i_trellis117.i = getelementptr inbounds i8, ptr %param, i64 440, !dbg !1234
  store i32 2, ptr %i_trellis117.i, align 8, !dbg !1235
  %i_bframe118.i = getelementptr inbounds i8, ptr %param, i64 100, !dbg !1236
  store i32 8, ptr %i_bframe118.i, align 4, !dbg !1237
  %i_lookahead120.i = getelementptr inbounds i8, ptr %param, i64 556, !dbg !1238
  store i32 60, ptr %i_lookahead120.i, align 4, !dbg !1239
  br label %if.end, !dbg !1240

if.else121.i:                                     ; preds = %if.else100.i
  %call122.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset, ptr noundef nonnull dereferenceable(8) @.str.221) #23, !dbg !1241
  %tobool123.not.i = icmp eq i32 %call122.i, 0, !dbg !1241
  br i1 %tobool123.not.i, label %if.then124.i, label %x264_param_apply_preset.exit, !dbg !1243

if.then124.i:                                     ; preds = %if.else121.i
  %i_me_method126.i = getelementptr inbounds i8, ptr %param, i64 412, !dbg !1244
  store i32 4, ptr %i_me_method126.i, align 4, !dbg !1246
  %i_subpel_refine128.i = getelementptr inbounds i8, ptr %param, i64 428, !dbg !1247
  store i32 10, ptr %i_subpel_refine128.i, align 4, !dbg !1248
  %i_me_range130.i = getelementptr inbounds i8, ptr %param, i64 416, !dbg !1249
  store i32 24, ptr %i_me_range130.i, align 8, !dbg !1250
  %i_frame_reference131.i = getelementptr inbounds i8, ptr %param, i64 80, !dbg !1251
  store i32 16, ptr %i_frame_reference131.i, align 8, !dbg !1252
  %i_bframe_adaptive132.i = getelementptr inbounds i8, ptr %param, i64 104, !dbg !1253
  store i32 2, ptr %i_bframe_adaptive132.i, align 8, !dbg !1254
  %i_direct_mv_pred134.i = getelementptr inbounds i8, ptr %param, i64 404, !dbg !1255
  store i32 3, ptr %i_direct_mv_pred134.i, align 4, !dbg !1256
  %inter136.i = getelementptr inbounds i8, ptr %param, i64 388, !dbg !1257
  %2 = load i32, ptr %inter136.i, align 4, !dbg !1258
  %or137.i = or i32 %2, 32, !dbg !1258
  store i32 %or137.i, ptr %inter136.i, align 4, !dbg !1258
  %b_fast_pskip.i = getelementptr inbounds i8, ptr %param, i64 444, !dbg !1259
  store i32 0, ptr %b_fast_pskip.i, align 4, !dbg !1260
  %i_trellis140.i = getelementptr inbounds i8, ptr %param, i64 440, !dbg !1261
  store i32 2, ptr %i_trellis140.i, align 8, !dbg !1262
  %i_bframe141.i = getelementptr inbounds i8, ptr %param, i64 100, !dbg !1263
  store i32 16, ptr %i_bframe141.i, align 4, !dbg !1264
  %i_lookahead143.i = getelementptr inbounds i8, ptr %param, i64 556, !dbg !1265
  store i32 60, ptr %i_lookahead143.i, align 4, !dbg !1266
  br label %if.end

x264_param_apply_preset.exit:                     ; preds = %if.else121.i
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.222, ptr noundef nonnull %preset), !dbg !1267
  br label %return, !dbg !1269

if.end:                                           ; preds = %if.then.i, %if.then30.i, %if.then59.i, %if.then72.i, %if.then103.i, %if.then124.i, %if.then85.i, %if.else65.i, %if.then47.i, %if.then11.i, %entry
  %tobool1.not = icmp eq ptr %tune, null, !dbg !1270
  br i1 %tobool1.not, label %return, label %land.lhs.true2, !dbg !1272

land.lhs.true2:                                   ; preds = %if.end
    #dbg_value(ptr %param, !1273, !DIExpression(), !1284)
    #dbg_value(ptr %tune, !1276, !DIExpression(), !1284)
  %call.i11 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %tune) #23, !dbg !1286
  %conv.i = trunc i64 %call.i11 to i32, !dbg !1286
    #dbg_value(i32 %conv.i, !1287, !DIExpression(), !1295)
    #dbg_value(ptr null, !1292, !DIExpression(), !1295)
  %sext.i = shl i64 %call.i11, 32, !dbg !1297
  %3 = ashr exact i64 %sext.i, 32, !dbg !1297
  %add2.i.i = add nsw i64 %3, 27, !dbg !1298
  %call.i.i = tail call noalias ptr @malloc(i64 noundef %add2.i.i) #24, !dbg !1299
    #dbg_value(ptr %call.i.i, !1294, !DIExpression(), !1295)
  %tobool.not.i.i = icmp eq ptr %call.i.i, null, !dbg !1300
  br i1 %tobool.not.i.i, label %x264_malloc.exit.thread.i, label %if.end.i, !dbg !1302

x264_malloc.exit.thread.i:                        ; preds = %land.lhs.true2
    #dbg_value(ptr null, !1292, !DIExpression(), !1295)
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %conv.i), !dbg !1303
    #dbg_value(ptr null, !1277, !DIExpression(), !1284)
  br label %return, !dbg !1305

if.end.i:                                         ; preds = %land.lhs.true2
  %add.ptr4.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 27, !dbg !1306
    #dbg_value(ptr %add.ptr4.i.i, !1292, !DIExpression(), !1295)
  %4 = ptrtoint ptr %add.ptr4.i.i to i64, !dbg !1308
  %and.i.i = and i64 %4, 15, !dbg !1309
  %idx.neg.i.i = sub nsw i64 0, %and.i.i, !dbg !1310
  %add.ptr5.i.i = getelementptr inbounds i8, ptr %add.ptr4.i.i, i64 %idx.neg.i.i, !dbg !1310
    #dbg_value(ptr %add.ptr5.i.i, !1292, !DIExpression(), !1295)
  %add.ptr6.i.i = getelementptr inbounds i8, ptr %add.ptr5.i.i, i64 -8, !dbg !1311
  store ptr %call.i.i, ptr %add.ptr6.i.i, align 8, !dbg !1312
  %add.ptr8.i.i = getelementptr inbounds i8, ptr %add.ptr5.i.i, i64 -12, !dbg !1313
  store i32 %conv.i, ptr %add.ptr8.i.i, align 4, !dbg !1314
    #dbg_value(ptr %add.ptr5.i.i, !1277, !DIExpression(), !1284)
  %call2.i = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %add.ptr5.i.i, ptr noundef nonnull readonly dereferenceable(1) %tune) #25, !dbg !1315
  %call3.i = tail call ptr @strtok(ptr noundef nonnull %add.ptr5.i.i, ptr noundef nonnull @.str.223) #25, !dbg !1316
    #dbg_value(ptr %call3.i, !1278, !DIExpression(), !1284)
    #dbg_value(i32 0, !1279, !DIExpression(), !1284)
  %tobool4.not222.i = icmp eq ptr %call3.i, null, !dbg !1317
  br i1 %tobool4.not222.i, label %x264_param_apply_tune.exit, label %while.body.lr.ph.i, !dbg !1317

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
  br label %while.body.i, !dbg !1317

while.body.i:                                     ; preds = %if.end137.i, %while.body.lr.ph.i
  %psy_tuning_used.0224.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %psy_tuning_used.2.i, %if.end137.i ]
  %s.0223.i = phi ptr [ %call3.i, %while.body.lr.ph.i ], [ %call138.i, %if.end137.i ]
    #dbg_value(i32 %psy_tuning_used.0224.i, !1279, !DIExpression(), !1284)
    #dbg_value(ptr %s.0223.i, !1278, !DIExpression(), !1284)
  %call5.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(5) @.str.224, i64 noundef 4) #23, !dbg !1318
  %tobool6.not.i = icmp eq i32 %call5.i, 0, !dbg !1318
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i15, !dbg !1320

if.then7.i:                                       ; preds = %while.body.i
    #dbg_value(i32 %psy_tuning_used.0224.i, !1279, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1284)
  %tobool8.not.i = icmp eq i32 %psy_tuning_used.0224.i, 0, !dbg !1321
  br i1 %tobool8.not.i, label %if.end10.i, label %psy_failure.i, !dbg !1324

if.end10.i:                                       ; preds = %if.then7.i
  store i32 -1, ptr %i_deblocking_filter_alphac0114.i, align 8, !dbg !1325
  store i32 -1, ptr %i_deblocking_filter_beta115.i, align 4, !dbg !1326
  store float 0x3FC3333340000000, ptr %f_psy_trellis117.i, align 4, !dbg !1327
  br label %if.end137.i, !dbg !1328

if.else.i15:                                      ; preds = %while.body.i
  %call11.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(10) @.str.225, i64 noundef 9) #23, !dbg !1329
  %tobool12.not.i = icmp eq i32 %call11.i, 0, !dbg !1329
  br i1 %tobool12.not.i, label %if.then13.i, label %if.else24.i, !dbg !1331

if.then13.i:                                      ; preds = %if.else.i15
    #dbg_value(i32 %psy_tuning_used.0224.i, !1279, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1284)
  %tobool15.not.i = icmp eq i32 %psy_tuning_used.0224.i, 0, !dbg !1332
  br i1 %tobool15.not.i, label %if.end17.i, label %psy_failure.i, !dbg !1335

if.end17.i:                                       ; preds = %if.then13.i
  %5 = load i32, ptr %i_frame_reference104.i, align 8, !dbg !1336
  %cmp.i = icmp sgt i32 %5, 1, !dbg !1337
  %mul.i = shl nuw nsw i32 %5, 1
  %spec.select.i = select i1 %cmp.i, i32 %mul.i, i32 1, !dbg !1338
  store i32 %spec.select.i, ptr %i_frame_reference104.i, align 8, !dbg !1339
  store i32 1, ptr %i_deblocking_filter_alphac0114.i, align 8, !dbg !1340
  store i32 1, ptr %i_deblocking_filter_beta115.i, align 4, !dbg !1341
  store float 0x3FD99999A0000000, ptr %f_psy_rd57.i, align 8, !dbg !1342
  store float 0x3FE3333340000000, ptr %f_aq_strength119.i, align 4, !dbg !1343
  %6 = load i32, ptr %i_bframe95.i, align 4, !dbg !1344
  %add.i = add nsw i32 %6, 2, !dbg !1344
  store i32 %add.i, ptr %i_bframe95.i, align 4, !dbg !1344
  br label %if.end137.i, !dbg !1345

if.else24.i:                                      ; preds = %if.else.i15
  %call25.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(6) @.str.226, i64 noundef 5) #23, !dbg !1346
  %tobool26.not.i = icmp eq i32 %call25.i, 0, !dbg !1346
  br i1 %tobool26.not.i, label %if.then27.i, label %if.else46.i, !dbg !1348

if.then27.i:                                      ; preds = %if.else24.i
    #dbg_value(i32 %psy_tuning_used.0224.i, !1279, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1284)
  %tobool29.not.i18 = icmp eq i32 %psy_tuning_used.0224.i, 0, !dbg !1349
  br i1 %tobool29.not.i18, label %if.end31.i, label %psy_failure.i, !dbg !1352

if.end31.i:                                       ; preds = %if.then27.i
  store i32 -2, ptr %i_deblocking_filter_alphac0114.i, align 8, !dbg !1353
  store i32 -2, ptr %i_deblocking_filter_beta115.i, align 4, !dbg !1354
  store float 2.500000e-01, ptr %f_psy_trellis117.i, align 4, !dbg !1355
  store i32 0, ptr %b_dct_decimate.i, align 8, !dbg !1356
  store <2 x float> <float 0x3FF19999A0000000, float 0x3FF19999A0000000>, ptr %f_ip_factor.i, align 8, !dbg !1357
  store float 5.000000e-01, ptr %f_aq_strength119.i, align 4, !dbg !1358
  store i32 6, ptr %i_luma_deadzone.i, align 4, !dbg !1359
  store i32 6, ptr %arrayidx44.i, align 4, !dbg !1360
  store float 0x3FE99999A0000000, ptr %f_qcompress.i, align 8, !dbg !1361
  br label %if.end137.i, !dbg !1362

if.else46.i:                                      ; preds = %if.else24.i
  %call47.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(11) @.str.227, i64 noundef 5) #23, !dbg !1363
  %tobool48.not.i = icmp eq i32 %call47.i, 0, !dbg !1363
  br i1 %tobool48.not.i, label %if.then49.i, label %if.else62.i, !dbg !1365

if.then49.i:                                      ; preds = %if.else46.i
    #dbg_value(i32 %psy_tuning_used.0224.i, !1279, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1284)
  %tobool51.not.i = icmp eq i32 %psy_tuning_used.0224.i, 0, !dbg !1366
  br i1 %tobool51.not.i, label %if.end53.i, label %psy_failure.i, !dbg !1369

if.end53.i:                                       ; preds = %if.then49.i
  store i32 -3, ptr %i_deblocking_filter_alphac0114.i, align 8, !dbg !1370
  store i32 -3, ptr %i_deblocking_filter_beta115.i, align 4, !dbg !1371
  store <2 x float> <float 2.000000e+00, float 0x3FE6666660000000>, ptr %f_psy_rd57.i, align 8, !dbg !1372
  store float 0x3FF3333340000000, ptr %f_aq_strength119.i, align 4, !dbg !1373
  br label %if.end137.i, !dbg !1374

if.else62.i:                                      ; preds = %if.else46.i
  %call63.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(5) @.str.145, i64 noundef 4) #23, !dbg !1375
  %tobool64.not.i = icmp eq i32 %call63.i, 0, !dbg !1375
  br i1 %tobool64.not.i, label %if.then65.i, label %if.else72.i, !dbg !1377

if.then65.i:                                      ; preds = %if.else62.i
    #dbg_value(i32 %psy_tuning_used.0224.i, !1279, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1284)
  %tobool67.not.i17 = icmp eq i32 %psy_tuning_used.0224.i, 0, !dbg !1378
  br i1 %tobool67.not.i17, label %if.end69.i, label %psy_failure.i, !dbg !1381

if.end69.i:                                       ; preds = %if.then65.i
  store i32 0, ptr %i_aq_mode81.i, align 8, !dbg !1382
  store i32 0, ptr %b_psy83.i, align 8, !dbg !1383
  br label %if.end137.i, !dbg !1384

if.else72.i:                                      ; preds = %if.else62.i
  %call73.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(5) @.str.146, i64 noundef 4) #23, !dbg !1385
  %tobool74.not.i = icmp eq i32 %call73.i, 0, !dbg !1385
  br i1 %tobool74.not.i, label %if.then75.i, label %if.else84.i, !dbg !1387

if.then75.i:                                      ; preds = %if.else72.i
    #dbg_value(i32 %psy_tuning_used.0224.i, !1279, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1284)
  %tobool77.not.i = icmp eq i32 %psy_tuning_used.0224.i, 0, !dbg !1388
  br i1 %tobool77.not.i, label %if.end79.i, label %psy_failure.i, !dbg !1391

if.end79.i:                                       ; preds = %if.then75.i
  store i32 2, ptr %i_aq_mode81.i, align 8, !dbg !1392
  store i32 0, ptr %b_psy83.i, align 8, !dbg !1393
  br label %if.end137.i, !dbg !1394

if.else84.i:                                      ; preds = %if.else72.i
  %call85.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(11) @.str.228, i64 noundef 10) #23, !dbg !1395
  %tobool86.not.i = icmp eq i32 %call85.i, 0, !dbg !1395
  br i1 %tobool86.not.i, label %if.then87.i, label %if.else90.i, !dbg !1397

if.then87.i:                                      ; preds = %if.else84.i
  store i32 0, ptr %b_deblocking_filter.i13, align 4, !dbg !1398
  store i32 0, ptr %b_cabac.i14, align 8, !dbg !1400
  store i32 0, ptr %b_weighted_bipred.i, align 8, !dbg !1401
  store i32 0, ptr %i_weighted_pred.i, align 4, !dbg !1402
  br label %if.end137.i, !dbg !1403

if.else90.i:                                      ; preds = %if.else84.i
  %call91.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(12) @.str.229, i64 noundef 11) #23, !dbg !1404
  %tobool92.not.i = icmp eq i32 %call91.i, 0, !dbg !1404
  br i1 %tobool92.not.i, label %if.then93.i, label %if.else96.i, !dbg !1406

if.then93.i:                                      ; preds = %if.else90.i
  store i32 0, ptr %i_lookahead.i12, align 4, !dbg !1407
  store i32 0, ptr %i_sync_lookahead.i, align 8, !dbg !1409
  store i32 0, ptr %i_bframe95.i, align 4, !dbg !1410
  store i32 1, ptr %b_sliced_threads.i, align 8, !dbg !1411
  store i32 0, ptr %b_vfr_input.i, align 8, !dbg !1412
  br label %if.end137.i, !dbg !1413

if.else96.i:                                      ; preds = %if.else90.i
  %call97.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %s.0223.i, ptr noundef nonnull dereferenceable(7) @.str.230, i64 noundef 6) #23, !dbg !1414
  %tobool98.not.i = icmp eq i32 %call97.i, 0, !dbg !1414
  br i1 %tobool98.not.i, label %if.then99.i, label %x264_free.exit.i, !dbg !1416

if.then99.i:                                      ; preds = %if.else96.i
    #dbg_value(i32 %psy_tuning_used.0224.i, !1279, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1284)
  %tobool101.not.i = icmp eq i32 %psy_tuning_used.0224.i, 0, !dbg !1417
  br i1 %tobool101.not.i, label %if.end103.i, label %psy_failure.i, !dbg !1420

if.end103.i:                                      ; preds = %if.then99.i
  %7 = load i32, ptr %i_frame_reference104.i, align 8, !dbg !1421
  %cmp105.i = icmp sgt i32 %7, 1, !dbg !1422
  %mul109.i = shl nuw nsw i32 %7, 1
  %spec.select211.i = select i1 %cmp105.i, i32 %mul109.i, i32 1, !dbg !1423
  store i32 %spec.select211.i, ptr %i_frame_reference104.i, align 8, !dbg !1424
  store i32 -1, ptr %i_deblocking_filter_alphac0114.i, align 8, !dbg !1425
  store i32 -1, ptr %i_deblocking_filter_beta115.i, align 4, !dbg !1426
  store float 0x3FC99999A0000000, ptr %f_psy_trellis117.i, align 4, !dbg !1427
  store float 0x3FF4CCCCC0000000, ptr %f_aq_strength119.i, align 4, !dbg !1428
  %8 = load i32, ptr %inter.i, align 4, !dbg !1429
  %and.i = and i32 %8, 16, !dbg !1431
  %tobool121.not.i = icmp eq i32 %and.i, 0, !dbg !1431
  br i1 %tobool121.not.i, label %if.end137.i, label %if.then122.i, !dbg !1432

if.then122.i:                                     ; preds = %if.end103.i
  %or.i16 = or i32 %8, 32, !dbg !1433
  store i32 %or.i16, ptr %inter.i, align 4, !dbg !1433
  br label %if.end137.i, !dbg !1434

x264_free.exit.i:                                 ; preds = %if.else96.i
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.231, ptr noundef nonnull %s.0223.i), !dbg !1435
    #dbg_value(ptr %add.ptr5.i.i, !1437, !DIExpression(), !1440)
  %9 = load ptr, ptr %add.ptr6.i.i, align 8, !dbg !1442
  tail call void @free(ptr noundef %9) #25, !dbg !1445
  br label %return, !dbg !1446

psy_failure.i:                                    ; preds = %if.then99.i, %if.then75.i, %if.then65.i, %if.then49.i, %if.then27.i, %if.then13.i, %if.then7.i
  %psy_tuning_used.1.i = add nsw i32 %psy_tuning_used.0224.i, 1, !dbg !1447
    #dbg_value(i32 %psy_tuning_used.1.i, !1279, !DIExpression(), !1284)
    #dbg_label(!1280, !1448)
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.232, ptr noundef nonnull %s.0223.i), !dbg !1449
  br label %if.end137.i, !dbg !1450

if.end137.i:                                      ; preds = %psy_failure.i, %if.then122.i, %if.end103.i, %if.then93.i, %if.then87.i, %if.end79.i, %if.end69.i, %if.end53.i, %if.end31.i, %if.end17.i, %if.end10.i
  %psy_tuning_used.2.i = phi i32 [ %psy_tuning_used.1.i, %psy_failure.i ], [ 1, %if.then122.i ], [ 1, %if.end103.i ], [ %psy_tuning_used.0224.i, %if.then93.i ], [ %psy_tuning_used.0224.i, %if.then87.i ], [ 1, %if.end79.i ], [ 1, %if.end69.i ], [ 1, %if.end53.i ], [ 1, %if.end31.i ], [ 1, %if.end17.i ], [ 1, %if.end10.i ], !dbg !1284
    #dbg_value(i32 %psy_tuning_used.2.i, !1279, !DIExpression(), !1284)
  %call138.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.223) #25, !dbg !1451
    #dbg_value(ptr %call138.i, !1278, !DIExpression(), !1284)
  %tobool4.not.i = icmp eq ptr %call138.i, null, !dbg !1317
  br i1 %tobool4.not.i, label %x264_param_apply_tune.exit, label %while.body.i, !dbg !1317, !llvm.loop !1452

x264_param_apply_tune.exit:                       ; preds = %if.end137.i, %if.end.i
    #dbg_value(ptr %add.ptr5.i.i, !1437, !DIExpression(), !1454)
  %10 = load ptr, ptr %add.ptr6.i.i, align 8, !dbg !1456
  tail call void @free(ptr noundef %10) #25, !dbg !1457
  br label %return, !dbg !1458

return:                                           ; preds = %x264_malloc.exit.thread.i, %x264_free.exit.i, %if.end, %x264_param_apply_tune.exit, %x264_param_apply_preset.exit
  %retval.0 = phi i32 [ -1, %x264_param_apply_preset.exit ], [ 0, %x264_param_apply_tune.exit ], [ 0, %if.end ], [ -1, %x264_free.exit.i ], [ -1, %x264_malloc.exit.thread.i ], !dbg !1065
  ret i32 %retval.0, !dbg !1459
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @x264_param_apply_fastfirstpass(ptr nocapture noundef %param) local_unnamed_addr #8 !dbg !1460 {
entry:
    #dbg_value(ptr %param, !1462, !DIExpression(), !1463)
  %b_stat_write = getelementptr inbounds i8, ptr %param, i64 560, !dbg !1464
  %0 = load i32, ptr %b_stat_write, align 8, !dbg !1464
  %tobool.not = icmp eq i32 %0, 0, !dbg !1466
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !dbg !1467

land.lhs.true:                                    ; preds = %entry
  %b_stat_read = getelementptr inbounds i8, ptr %param, i64 576, !dbg !1468
  %1 = load i32, ptr %b_stat_read, align 8, !dbg !1468
  %tobool2.not = icmp eq i32 %1, 0, !dbg !1469
  br i1 %tobool2.not, label %if.then, label %if.end, !dbg !1470

if.then:                                          ; preds = %land.lhs.true
  %i_frame_reference = getelementptr inbounds i8, ptr %param, i64 80, !dbg !1471
  store i32 1, ptr %i_frame_reference, align 8, !dbg !1473
  %b_transform_8x8 = getelementptr inbounds i8, ptr %param, i64 392, !dbg !1474
  store i32 0, ptr %b_transform_8x8, align 8, !dbg !1475
  %inter = getelementptr inbounds i8, ptr %param, i64 388, !dbg !1476
  store i32 0, ptr %inter, align 4, !dbg !1477
  %i_me_method = getelementptr inbounds i8, ptr %param, i64 412, !dbg !1478
  store i32 0, ptr %i_me_method, align 4, !dbg !1479
  %i_subpel_refine = getelementptr inbounds i8, ptr %param, i64 428, !dbg !1480
  %2 = load i32, ptr %i_subpel_refine, align 4, !dbg !1480
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 2), !dbg !1480
  store i32 %spec.select, ptr %i_subpel_refine, align 4, !dbg !1481
  %i_trellis = getelementptr inbounds i8, ptr %param, i64 440, !dbg !1482
  store i32 0, ptr %i_trellis, align 8, !dbg !1483
  %b_fast_pskip = getelementptr inbounds i8, ptr %param, i64 444, !dbg !1484
  store i32 1, ptr %b_fast_pskip, align 4, !dbg !1485
  br label %if.end, !dbg !1486

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !1487
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_param_apply_profile(ptr nocapture noundef %param, ptr noundef %profile) local_unnamed_addr #4 !dbg !1488 {
entry:
    #dbg_value(ptr %param, !1490, !DIExpression(), !1492)
    #dbg_value(ptr %profile, !1491, !DIExpression(), !1492)
  %tobool.not = icmp eq ptr %profile, null, !dbg !1493
  br i1 %tobool.not, label %return, label %if.end, !dbg !1495

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %profile, ptr noundef nonnull dereferenceable(9) @.str.1) #23, !dbg !1496
  %tobool1.not = icmp eq i32 %call, 0, !dbg !1496
  br i1 %tobool1.not, label %if.then2, label %if.else, !dbg !1498

if.then2:                                         ; preds = %if.end
  %b_transform_8x8 = getelementptr inbounds i8, ptr %param, i64 392, !dbg !1499
  store i32 0, ptr %b_transform_8x8, align 8, !dbg !1501
  %b_cabac = getelementptr inbounds i8, ptr %param, i64 128, !dbg !1502
  store i32 0, ptr %b_cabac, align 8, !dbg !1503
  %i_cqm_preset = getelementptr inbounds i8, ptr %param, i64 144, !dbg !1504
  store i32 0, ptr %i_cqm_preset, align 8, !dbg !1505
  %i_bframe = getelementptr inbounds i8, ptr %param, i64 100, !dbg !1506
  store i32 0, ptr %i_bframe, align 4, !dbg !1507
  %i_weighted_pred = getelementptr inbounds i8, ptr %param, i64 396, !dbg !1508
  store i32 0, ptr %i_weighted_pred, align 4, !dbg !1509
  %b_interlaced = getelementptr inbounds i8, ptr %param, i64 136, !dbg !1510
  %0 = load i32, ptr %b_interlaced, align 8, !dbg !1510
  %tobool4.not = icmp eq i32 %0, 0, !dbg !1512
  br i1 %tobool4.not, label %if.end6, label %if.then5, !dbg !1513

if.then5:                                         ; preds = %if.then2
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2), !dbg !1514
  br label %return, !dbg !1516

if.end6:                                          ; preds = %if.then2
  %b_fake_interlaced = getelementptr inbounds i8, ptr %param, i64 680, !dbg !1517
  %1 = load i32, ptr %b_fake_interlaced, align 8, !dbg !1517
  %tobool7.not = icmp eq i32 %1, 0, !dbg !1519
  br i1 %tobool7.not, label %if.end23, label %if.then8, !dbg !1520

if.then8:                                         ; preds = %if.end6
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.3), !dbg !1521
  br label %if.end23, !dbg !1521

if.else:                                          ; preds = %if.end
  %call10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %profile, ptr noundef nonnull dereferenceable(5) @.str.4) #23, !dbg !1522
  %tobool11.not = icmp eq i32 %call10, 0, !dbg !1522
  br i1 %tobool11.not, label %if.then12, label %if.else16, !dbg !1524

if.then12:                                        ; preds = %if.else
  %b_transform_8x814 = getelementptr inbounds i8, ptr %param, i64 392, !dbg !1525
  store i32 0, ptr %b_transform_8x814, align 8, !dbg !1527
  %i_cqm_preset15 = getelementptr inbounds i8, ptr %param, i64 144, !dbg !1528
  store i32 0, ptr %i_cqm_preset15, align 8, !dbg !1529
  br label %if.end23, !dbg !1530

if.else16:                                        ; preds = %if.else
  %call17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %profile, ptr noundef nonnull dereferenceable(5) @.str.5) #23, !dbg !1531
  %tobool18.not = icmp eq i32 %call17, 0, !dbg !1531
  br i1 %tobool18.not, label %if.end23, label %if.else20, !dbg !1533

if.else20:                                        ; preds = %if.else16
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %profile), !dbg !1534
  br label %return, !dbg !1536

if.end23:                                         ; preds = %if.then12, %if.else16, %if.end6, %if.then8
  %rc = getelementptr inbounds i8, ptr %param, i64 488, !dbg !1537
  %2 = load i32, ptr %rc, align 8, !dbg !1539
  switch i32 %2, label %return [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true29
  ], !dbg !1540

land.lhs.true:                                    ; preds = %if.end23
  %i_qp_constant = getelementptr inbounds i8, ptr %param, i64 492, !dbg !1541
  %3 = load i32, ptr %i_qp_constant, align 4, !dbg !1541
  %cmp25 = icmp eq i32 %3, 0, !dbg !1542
  br i1 %cmp25, label %if.then32, label %return, !dbg !1543

land.lhs.true29:                                  ; preds = %if.end23
  %f_rf_constant = getelementptr inbounds i8, ptr %param, i64 512, !dbg !1544
  %4 = load float, ptr %f_rf_constant, align 8, !dbg !1544
  %cmp31 = fcmp oeq float %4, 0.000000e+00, !dbg !1545
  br i1 %cmp31, label %if.then32, label %return, !dbg !1546

if.then32:                                        ; preds = %land.lhs.true29, %land.lhs.true
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull %profile), !dbg !1547
  br label %return, !dbg !1549

return:                                           ; preds = %if.end23, %land.lhs.true, %land.lhs.true29, %entry, %if.then32, %if.else20, %if.then5
  %retval.0 = phi i32 [ -1, %if.else20 ], [ -1, %if.then32 ], [ -1, %if.then5 ], [ 0, %entry ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true ], [ 0, %if.end23 ], !dbg !1492
  ret i32 %retval.0, !dbg !1550
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1551 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_log(ptr noundef readonly %h, i32 noundef %i_level, ptr noundef %psz_fmt, ...) local_unnamed_addr #4 !dbg !1554 {
entry:
  %arg = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2665
    #dbg_assign(i1 undef, !2658, !DIExpression(), !2665, ptr %arg, !DIExpression(), !2666)
    #dbg_value(ptr %h, !2655, !DIExpression(), !2667)
    #dbg_value(i32 %i_level, !2656, !DIExpression(), !2667)
    #dbg_value(ptr %psz_fmt, !2657, !DIExpression(), !2667)
  %tobool.not = icmp eq ptr %h, null, !dbg !2668
  br i1 %tobool.not, label %if.then2, label %lor.lhs.false, !dbg !2669

lor.lhs.false:                                    ; preds = %entry
  %i_log_level = getelementptr inbounds i8, ptr %h, i64 368, !dbg !2670
  %0 = load i32, ptr %i_log_level, align 16, !dbg !2670
  %cmp.not = icmp slt i32 %0, %i_level, !dbg !2671
  br i1 %cmp.not, label %if.end8, label %if.else, !dbg !2672

if.then2:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #25, !dbg !2673
  call void @llvm.va_start.p0(ptr nonnull %arg), !dbg !2674
    #dbg_value(ptr null, !1044, !DIExpression(), !2675)
    #dbg_value(i32 %i_level, !1045, !DIExpression(), !2675)
    #dbg_value(ptr %psz_fmt, !1046, !DIExpression(), !2675)
    #dbg_value(ptr %arg, !1047, !DIExpression(), !2675)
  %1 = icmp ult i32 %i_level, 4, !dbg !2678
  br i1 %1, label %switch.lookup, label %x264_log_default.exit, !dbg !2678

switch.lookup:                                    ; preds = %if.then2
  %2 = zext nneg i32 %i_level to i64, !dbg !2678
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.x264_log, i64 0, i64 %2, !dbg !2678
  %switch.load = load ptr, ptr %switch.gep, align 8, !dbg !2678
  br label %x264_log_default.exit, !dbg !2678

x264_log_default.exit:                            ; preds = %if.then2, %switch.lookup
  %psz_prefix.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.271, %if.then2 ], !dbg !2679
    #dbg_value(ptr %psz_prefix.0.i, !1048, !DIExpression(), !2675)
  %3 = load ptr, ptr @stderr, align 8, !dbg !2680
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.272, ptr noundef nonnull %psz_prefix.0.i) #26, !dbg !2681
  %4 = load ptr, ptr @stderr, align 8, !dbg !2682
  %call4.i = call i32 @vfprintf(ptr noundef %4, ptr noundef readonly %psz_fmt, ptr noundef nonnull %arg) #26, !dbg !2683
  br label %if.end, !dbg !2684

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #25, !dbg !2673
  call void @llvm.va_start.p0(ptr nonnull %arg), !dbg !2674
  %pf_log = getelementptr inbounds i8, ptr %h, i64 352, !dbg !2685
  %5 = load ptr, ptr %pf_log, align 16, !dbg !2685
  %p_log_private = getelementptr inbounds i8, ptr %h, i64 360, !dbg !2686
  %6 = load ptr, ptr %p_log_private, align 8, !dbg !2686
  call void %5(ptr noundef %6, i32 noundef %i_level, ptr noundef %psz_fmt, ptr noundef nonnull %arg) #25, !dbg !2687
  br label %if.end

if.end:                                           ; preds = %if.else, %x264_log_default.exit
  call void @llvm.va_end.p0(ptr nonnull %arg), !dbg !2688
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg) #25, !dbg !2689
  br label %if.end8, !dbg !2690

if.end8:                                          ; preds = %if.end, %lor.lhs.false
  ret void, !dbg !2691
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @x264_param_parse(ptr noundef %p, ptr noundef readonly %name, ptr noundef %value) local_unnamed_addr #4 !dbg !2692 {
entry:
  %end.i1994 = alloca ptr, align 8, !DIAssignID !2806
  %end.i1987 = alloca ptr, align 8, !DIAssignID !2807
  %end.i1980 = alloca ptr, align 8, !DIAssignID !2808
  %end.i1973 = alloca ptr, align 8, !DIAssignID !2809
  %end.i1964 = alloca ptr, align 8, !DIAssignID !2810
  %end.i1957 = alloca ptr, align 8, !DIAssignID !2811
  %end.i1949 = alloca ptr, align 8, !DIAssignID !2812
  %end.i1942 = alloca ptr, align 8, !DIAssignID !2813
  %end.i1935 = alloca ptr, align 8, !DIAssignID !2814
  %end.i1928 = alloca ptr, align 8, !DIAssignID !2815
  %end.i1920 = alloca ptr, align 8, !DIAssignID !2816
  %end.i1912 = alloca ptr, align 8, !DIAssignID !2817
  %end.i1905 = alloca ptr, align 8, !DIAssignID !2818
  %end.i1897 = alloca ptr, align 8, !DIAssignID !2819
  %end.i1889 = alloca ptr, align 8, !DIAssignID !2820
  %end.i1881 = alloca ptr, align 8, !DIAssignID !2821
  %end.i1873 = alloca ptr, align 8, !DIAssignID !2822
  %end.i1866 = alloca ptr, align 8, !DIAssignID !2823
  %end.i1859 = alloca ptr, align 8, !DIAssignID !2824
  %end.i1851 = alloca ptr, align 8, !DIAssignID !2825
  %end.i1843 = alloca ptr, align 8, !DIAssignID !2826
  %end.i1835 = alloca ptr, align 8, !DIAssignID !2827
  %end.i1827 = alloca ptr, align 8, !DIAssignID !2828
  %end.i1819 = alloca ptr, align 8, !DIAssignID !2829
  %end.i1811 = alloca ptr, align 8, !DIAssignID !2830
  %end.i1803 = alloca ptr, align 8, !DIAssignID !2831
  %end.i1795 = alloca ptr, align 8, !DIAssignID !2832
  %end.i1787 = alloca ptr, align 8, !DIAssignID !2833
  %end.i1779 = alloca ptr, align 8, !DIAssignID !2834
  %end.i1771 = alloca ptr, align 8, !DIAssignID !2835
  %end.i1763 = alloca ptr, align 8, !DIAssignID !2836
  %end.i1755 = alloca ptr, align 8, !DIAssignID !2837
  %end.i1747 = alloca ptr, align 8, !DIAssignID !2838
  %end.i1739 = alloca ptr, align 8, !DIAssignID !2839
  %end.i1731 = alloca ptr, align 8, !DIAssignID !2840
  %end.i1723 = alloca ptr, align 8, !DIAssignID !2841
  %end.i1715 = alloca ptr, align 8, !DIAssignID !2842
  %end.i1707 = alloca ptr, align 8, !DIAssignID !2843
  %end.i1699 = alloca ptr, align 8, !DIAssignID !2844
  %end.i1691 = alloca ptr, align 8, !DIAssignID !2845
  %end.i1683 = alloca ptr, align 8, !DIAssignID !2846
  %end.i1675 = alloca ptr, align 8, !DIAssignID !2847
  %end.i1667 = alloca ptr, align 8, !DIAssignID !2848
  %end.i1659 = alloca ptr, align 8, !DIAssignID !2849
  %end.i1652 = alloca ptr, align 8, !DIAssignID !2850
  %end.i1644 = alloca ptr, align 8, !DIAssignID !2851
  %end.i1636 = alloca ptr, align 8, !DIAssignID !2852
  %end.i1629 = alloca ptr, align 8, !DIAssignID !2853
  %end.i1624 = alloca ptr, align 8, !DIAssignID !2854
  %end.i1616 = alloca ptr, align 8, !DIAssignID !2855
  %end.i1608 = alloca ptr, align 8, !DIAssignID !2856
  %end.i = alloca ptr, align 8, !DIAssignID !2857
  %b_error = alloca i32, align 4, !DIAssignID !2858
    #dbg_assign(i1 undef, !2698, !DIExpression(), !2858, ptr %b_error, !DIExpression(), !2859)
    #dbg_value(ptr %p, !2694, !DIExpression(), !2859)
    #dbg_value(ptr %name, !2695, !DIExpression(), !2859)
    #dbg_value(ptr %value, !2696, !DIExpression(), !2859)
    #dbg_value(ptr null, !2697, !DIExpression(), !2859)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b_error) #25, !dbg !2860
  store i32 0, ptr %b_error, align 4, !dbg !2861, !DIAssignID !2862
    #dbg_assign(i32 0, !2698, !DIExpression(), !2862, ptr %b_error, !DIExpression(), !2859)
  %tobool.not = icmp eq ptr %value, null, !dbg !2863
    #dbg_value(i1 %tobool.not, !2700, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2859)
  %tobool1.not = icmp eq ptr %name, null, !dbg !2864
  br i1 %tobool1.not, label %cleanup, label %if.end, !dbg !2866

if.end:                                           ; preds = %entry
  %spec.select = select i1 %tobool.not, ptr @.str.8, ptr %value, !dbg !2867
    #dbg_value(ptr %spec.select, !2696, !DIExpression(), !2859)
  %0 = load i8, ptr %spec.select, align 1, !dbg !2868
  %cmp = icmp eq i8 %0, 61, !dbg !2870
  %value.addr.1.idx = zext i1 %cmp to i64, !dbg !2871
  %value.addr.1 = getelementptr inbounds i8, ptr %spec.select, i64 %value.addr.1.idx, !dbg !2871
    #dbg_value(ptr %value.addr.1, !2696, !DIExpression(), !2859)
  %call = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %name, i32 noundef 95) #23, !dbg !2872
  %tobool8.not = icmp eq ptr %call, null, !dbg !2872
  br i1 %tobool8.not, label %sub_0, label %if.then9, !dbg !2873

if.then9:                                         ; preds = %if.end
    #dbg_value(ptr %name, !723, !DIExpression(), !2874)
  %call.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %name) #23, !dbg !2876
  %conv.i = trunc i64 %call.i to i32, !dbg !2876
    #dbg_value(i32 %conv.i, !724, !DIExpression(), !2874)
  %add.i = shl i64 %call.i, 32, !dbg !2877
  %sext.i = add i64 %add.i, 4294967296, !dbg !2877
  %conv1.i = ashr exact i64 %sext.i, 32, !dbg !2877
  %call2.i = tail call noalias ptr @malloc(i64 noundef %conv1.i) #24, !dbg !2878
    #dbg_value(ptr %call2.i, !725, !DIExpression(), !2874)
    #dbg_value(i32 0, !726, !DIExpression(), !2879)
  %cmp17.i = icmp sgt i32 %conv.i, 0, !dbg !2880
  br i1 %cmp17.i, label %for.body.preheader.i, label %spec_strdup.exit, !dbg !2881

for.body.preheader.i:                             ; preds = %if.then9
  %1 = and i64 %call.i, 2147483647, !dbg !2881
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call2.i, ptr nonnull readonly align 1 %name, i64 %1, i1 false), !dbg !2882
    #dbg_value(i64 poison, !726, !DIExpression(), !2879)
  br label %spec_strdup.exit, !dbg !2883

spec_strdup.exit:                                 ; preds = %if.then9, %for.body.preheader.i
  %idxprom6.i = ashr exact i64 %add.i, 32, !dbg !2883
  %arrayidx7.i = getelementptr inbounds i8, ptr %call2.i, i64 %idxprom6.i, !dbg !2883
  store i8 0, ptr %arrayidx7.i, align 1, !dbg !2884
    #dbg_value(ptr %call2.i, !2697, !DIExpression(), !2859)
  %call112027 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call2.i, i32 noundef 95) #23, !dbg !2885
  %tobool12.not2028 = icmp eq ptr %call112027, null, !dbg !2886
  br i1 %tobool12.not2028, label %sub_0, label %while.body, !dbg !2886

while.body:                                       ; preds = %spec_strdup.exit, %while.body
  %call112029 = phi ptr [ %call11, %while.body ], [ %call112027, %spec_strdup.exit ]
  store i8 45, ptr %call112029, align 1, !dbg !2887
  %call11 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call2.i, i32 noundef 95) #23, !dbg !2885
    #dbg_value(ptr %call11, !2702, !DIExpression(), !2888)
  %tobool12.not = icmp eq ptr %call11, null, !dbg !2886
  br i1 %tobool12.not, label %sub_0, label %while.body, !dbg !2886, !llvm.loop !2889

sub_0:                                            ; preds = %while.body, %spec_strdup.exit, %if.end
  %name_buf.0 = phi ptr [ null, %if.end ], [ %call2.i, %spec_strdup.exit ], [ %call2.i, %while.body ], !dbg !2859
  %name.addr.0 = phi ptr [ %name, %if.end ], [ %call2.i, %spec_strdup.exit ], [ %call2.i, %while.body ]
    #dbg_value(ptr %name.addr.0, !2695, !DIExpression(), !2859)
    #dbg_value(ptr %name_buf.0, !2697, !DIExpression(), !2859)
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
  %tobool15.not = icmp eq i32 %13, 0, !dbg !2891
  br i1 %tobool15.not, label %if.then19, label %sub_02003, !dbg !2893

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
  %tobool17.not = icmp eq i32 %18, 0, !dbg !2894
  br i1 %tobool17.not, label %if.then19, label %if.end22, !dbg !2895

if.then19:                                        ; preds = %lor.lhs.false.tail, %if.end13.tail
  %i.0 = phi i64 [ 3, %if.end13.tail ], [ 2, %lor.lhs.false.tail ], !dbg !2896
    #dbg_value(i64 %i.0, !2701, !DIExpression(), !2859)
  %add.ptr = getelementptr inbounds i8, ptr %name.addr.0, i64 %i.0, !dbg !2897
    #dbg_value(ptr %add.ptr, !2695, !DIExpression(), !2859)
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call20 = call fastcc i32 @x264_atobool(ptr noundef nonnull %value.addr.1, ptr noundef nonnull %b_error), !dbg !2899
  %tobool21.not = icmp eq i32 %call20, 0, !dbg !2899
  %cond = select i1 %tobool21.not, ptr @.str.8, ptr @.str.11, !dbg !2899
    #dbg_value(ptr %cond, !2696, !DIExpression(), !2859)
  br label %if.end22, !dbg !2900

if.end22:                                         ; preds = %if.then19, %lor.lhs.false.tail
  %value.addr.2 = phi ptr [ %value.addr.1, %lor.lhs.false.tail ], [ %cond, %if.then19 ], !dbg !2859
  %name.addr.1 = phi ptr [ %name.addr.0, %lor.lhs.false.tail ], [ %add.ptr, %if.then19 ], !dbg !2859
    #dbg_value(ptr %name.addr.1, !2695, !DIExpression(), !2859)
    #dbg_value(ptr %value.addr.2, !2696, !DIExpression(), !2859)
    #dbg_value(i32 0, !2699, !DIExpression(), !2859)
  %call23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.12) #23, !dbg !2901
  %tobool24.not = icmp eq i32 %call23, 0, !dbg !2901
  br i1 %tobool24.not, label %if.then25, label %if.else, !dbg !2902

if.then25:                                        ; preds = %if.end22
  %call26 = tail call ptr @__ctype_b_loc() #27, !dbg !2903
  %19 = load ptr, ptr %call26, align 8, !dbg !2903
  %20 = load i8, ptr %value.addr.2, align 1, !dbg !2903
  %idxprom = sext i8 %20 to i64, !dbg !2903
  %arrayidx29 = getelementptr inbounds i16, ptr %19, i64 %idxprom, !dbg !2903
  %21 = load i16, ptr %arrayidx29, align 2, !dbg !2903
  %22 = and i16 %21, 2048, !dbg !2903
  %tobool31.not = icmp eq i16 %22, 0, !dbg !2903
  br i1 %tobool31.not, label %cond.false, label %cond.true, !dbg !2903

cond.true:                                        ; preds = %if.then25
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2857, ptr %end.i, !DIExpression(), !2912)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !2912)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !2912)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i) #25, !dbg !2914
  %call.i1595 = call i64 @strtol(ptr noundef nonnull %value.addr.2, ptr noundef nonnull %end.i, i32 noundef 0) #25, !dbg !2915
    #dbg_value(i64 %call.i1595, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2912)
  %23 = load ptr, ptr %end.i, align 8, !dbg !2916
  %cmp.i = icmp eq ptr %23, %value.addr.2, !dbg !2918
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i, !dbg !2919

lor.lhs.false.i:                                  ; preds = %cond.true
  %24 = load i8, ptr %23, align 1, !dbg !2920
  %cmp3.not.i = icmp eq i8 %24, 0, !dbg !2921
  br i1 %cmp3.not.i, label %x264_atoi.exit, label %if.then.i, !dbg !2922

if.then.i:                                        ; preds = %lor.lhs.false.i, %cond.true
  store i32 1, ptr %b_error, align 4, !dbg !2923, !DIAssignID !2924
    #dbg_assign(i32 1, !2698, !DIExpression(), !2924, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit, !dbg !2925

x264_atoi.exit:                                   ; preds = %lor.lhs.false.i, %if.then.i
  %conv.i1596 = trunc i64 %call.i1595 to i32, !dbg !2915
    #dbg_value(i32 %conv.i1596, !2911, !DIExpression(), !2912)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i) #25, !dbg !2926
  br label %cond.end42, !dbg !2903

cond.false:                                       ; preds = %if.then25
  %call33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(5) @.str.13) #23, !dbg !2927
  %tobool34.not = icmp eq i32 %call33, 0, !dbg !2927
  br i1 %tobool34.not, label %cond.true38, label %lor.lhs.false35, !dbg !2928

lor.lhs.false35:                                  ; preds = %cond.false
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call36 = call fastcc i32 @x264_atobool(ptr noundef nonnull %value.addr.2, ptr noundef nonnull %b_error), !dbg !2929
  %tobool37.not = icmp eq i32 %call36, 0, !dbg !2929
  br i1 %tobool37.not, label %cond.end42, label %cond.true38, !dbg !2930

cond.true38:                                      ; preds = %lor.lhs.false35, %cond.false
  %name_was_bool.0 = phi i32 [ 1, %lor.lhs.false35 ], [ 0, %cond.false ], !dbg !2859
    #dbg_value(i32 %name_was_bool.0, !2699, !DIExpression(), !2859)
  %call39 = tail call i32 @x264_cpu_detect() #25, !dbg !2931
  br label %cond.end42, !dbg !2930

cond.end42:                                       ; preds = %cond.true38, %lor.lhs.false35, %x264_atoi.exit
  %name_was_bool.1 = phi i32 [ 0, %x264_atoi.exit ], [ %name_was_bool.0, %cond.true38 ], [ 1, %lor.lhs.false35 ], !dbg !2859
  %cond43 = phi i32 [ %conv.i1596, %x264_atoi.exit ], [ %call39, %cond.true38 ], [ 0, %lor.lhs.false35 ], !dbg !2903
    #dbg_value(i32 %name_was_bool.1, !2699, !DIExpression(), !2859)
  store i32 %cond43, ptr %p, align 8, !dbg !2932
  %25 = load i32, ptr %b_error, align 4, !dbg !2933
  %tobool44.not = icmp eq i32 %25, 0, !dbg !2933
  br i1 %tobool44.not, label %if.end1116, label %if.then45, !dbg !2934

if.then45:                                        ; preds = %cond.end42
    #dbg_value(ptr %value.addr.2, !723, !DIExpression(), !2935)
  %call.i1597 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %value.addr.2) #23, !dbg !2937
  %conv.i1598 = trunc i64 %call.i1597 to i32, !dbg !2937
    #dbg_value(i32 %conv.i1598, !724, !DIExpression(), !2935)
  %add.i1599 = shl i64 %call.i1597, 32, !dbg !2938
  %sext.i1600 = add i64 %add.i1599, 4294967296, !dbg !2938
  %conv1.i1601 = ashr exact i64 %sext.i1600, 32, !dbg !2938
  %call2.i1602 = tail call noalias ptr @malloc(i64 noundef %conv1.i1601) #24, !dbg !2939
    #dbg_value(ptr %call2.i1602, !725, !DIExpression(), !2935)
    #dbg_value(i32 0, !726, !DIExpression(), !2940)
  %cmp17.i1603 = icmp sgt i32 %conv.i1598, 0, !dbg !2941
  br i1 %cmp17.i1603, label %for.body.preheader.i1606, label %spec_strdup.exit1607, !dbg !2942

for.body.preheader.i1606:                         ; preds = %if.then45
  %26 = and i64 %call.i1597, 2147483647, !dbg !2942
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call2.i1602, ptr nonnull readonly align 1 %value.addr.2, i64 %26, i1 false), !dbg !2943
    #dbg_value(i64 poison, !726, !DIExpression(), !2940)
  br label %spec_strdup.exit1607, !dbg !2944

spec_strdup.exit1607:                             ; preds = %if.then45, %for.body.preheader.i1606
  %idxprom6.i1604 = ashr exact i64 %add.i1599, 32, !dbg !2944
  %arrayidx7.i1605 = getelementptr inbounds i8, ptr %call2.i1602, i64 %idxprom6.i1604, !dbg !2944
  store i8 0, ptr %arrayidx7.i1605, align 1, !dbg !2945
    #dbg_value(ptr %call2.i1602, !2705, !DIExpression(), !2946)
    #dbg_value(ptr null, !2712, !DIExpression(), !2946)
  store i32 0, ptr %b_error, align 4, !dbg !2947, !DIAssignID !2948
    #dbg_assign(i32 0, !2698, !DIExpression(), !2948, ptr %b_error, !DIExpression(), !2859)
  store i32 0, ptr %p, align 8, !dbg !2949
    #dbg_value(ptr %call2.i1602, !2713, !DIExpression(), !2946)
  %call482033 = tail call ptr @strtok(ptr noundef %call2.i1602, ptr noundef nonnull @.str.14) #25, !dbg !2950
  %tobool49.not2034 = icmp eq ptr %call482033, null, !dbg !2953
  br i1 %tobool49.not2034, label %for.end71, label %for.cond50.preheader.lr.ph, !dbg !2953

for.cond50.preheader.lr.ph:                       ; preds = %spec_strdup.exit1607
  %27 = load i32, ptr getelementptr inbounds (i8, ptr @x264_cpu_names, i64 16), align 4
  %tobool53.not2030 = icmp eq i32 %27, 0
  br i1 %tobool53.not2030, label %for.cond50.preheader.lr.ph.split.us, label %for.cond50.preheader

for.cond50.preheader.lr.ph.split.us:              ; preds = %for.cond50.preheader.lr.ph
  store i32 1, ptr %b_error, align 4, !DIAssignID !2954
  br label %for.cond50.preheader.us, !dbg !2953

for.cond50.preheader.us:                          ; preds = %for.cond50.preheader.us, %for.cond50.preheader.lr.ph.split.us
    #dbg_value(i32 0, !2701, !DIExpression(), !2859)
    #dbg_assign(i32 1, !2698, !DIExpression(), !2954, ptr %b_error, !DIExpression(), !2859)
    #dbg_value(ptr null, !2713, !DIExpression(), !2946)
  %call48.us = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.14) #25, !dbg !2950
    #dbg_value(ptr %call48.us, !2711, !DIExpression(), !2946)
  %tobool49.not.us = icmp eq ptr %call48.us, null, !dbg !2953
  br i1 %tobool49.not.us, label %for.end71, label %for.cond50.preheader.us, !dbg !2953, !llvm.loop !2955

for.cond50.preheader:                             ; preds = %for.cond50.preheader.lr.ph, %for.inc70
  %call482035 = phi ptr [ %call48, %for.inc70 ], [ %call482033, %for.cond50.preheader.lr.ph ]
    #dbg_value(i32 0, !2701, !DIExpression(), !2859)
    #dbg_value(i64 0, !2701, !DIExpression(), !2859)
  %call572056 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call482035, ptr noundef nonnull dereferenceable(1) @x264_cpu_names) #23, !dbg !2957
  %tobool58.not2057 = icmp eq i32 %call572056, 0, !dbg !2961
  br i1 %tobool58.not2057, label %for.end, label %for.cond50, !dbg !2962

for.cond50:                                       ; preds = %for.cond50.preheader, %land.rhs
  %indvars.iv2058 = phi i64 [ %indvars.iv.next, %land.rhs ], [ 0, %for.cond50.preheader ]
    #dbg_value(i64 %indvars.iv2058, !2701, !DIExpression(), !2859)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2058, 1, !dbg !2963
    #dbg_value(i32 poison, !2701, !DIExpression(), !2859)
  %arrayidx52 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %indvars.iv.next, !dbg !2964
  %flags = getelementptr inbounds i8, ptr %arrayidx52, i64 16, !dbg !2965
  %28 = load i32, ptr %flags, align 4, !dbg !2965
  %tobool53.not = icmp eq i32 %28, 0, !dbg !2964
  br i1 %tobool53.not, label %for.cond50.if.then68_crit_edge, label %land.rhs, !dbg !2961, !llvm.loop !2966

land.rhs:                                         ; preds = %for.cond50
    #dbg_value(i64 %indvars.iv.next, !2701, !DIExpression(), !2859)
  %call57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call482035, ptr noundef nonnull dereferenceable(1) %arrayidx52) #23, !dbg !2957
  %tobool58.not = icmp eq i32 %call57, 0, !dbg !2961
    #dbg_value(i64 %indvars.iv.next, !2701, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2859)
  br i1 %tobool58.not, label %for.end, label %for.cond50, !dbg !2962, !llvm.loop !2966

for.end:                                          ; preds = %land.rhs, %for.cond50.preheader
  %.lcssa = phi i32 [ %27, %for.cond50.preheader ], [ %28, %land.rhs ]
  %29 = load i32, ptr %p, align 8, !dbg !2968
  %or = or i32 %29, %.lcssa, !dbg !2968
  store i32 %or, ptr %p, align 8, !dbg !2968
  br label %for.inc70, !dbg !2969

for.cond50.if.then68_crit_edge:                   ; preds = %for.cond50
  store i32 1, ptr %b_error, align 4, !dbg !2970, !DIAssignID !2954
    #dbg_assign(i32 1, !2698, !DIExpression(), !2954, ptr %b_error, !DIExpression(), !2859)
  br label %for.inc70, !dbg !2972

for.inc70:                                        ; preds = %for.end, %for.cond50.if.then68_crit_edge
    #dbg_value(ptr null, !2713, !DIExpression(), !2946)
  %call48 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.14) #25, !dbg !2950
    #dbg_value(ptr %call48, !2711, !DIExpression(), !2946)
  %tobool49.not = icmp eq ptr %call48, null, !dbg !2953
  br i1 %tobool49.not, label %for.end71, label %for.cond50.preheader, !dbg !2953, !llvm.loop !2955

for.end71:                                        ; preds = %for.inc70, %for.cond50.preheader.us, %spec_strdup.exit1607
  tail call void @free(ptr noundef %call2.i1602) #25, !dbg !2973
  br label %if.end1116, !dbg !2974

if.else:                                          ; preds = %if.end22
  %call73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.15) #23, !dbg !2975
  %tobool74.not = icmp eq i32 %call73, 0, !dbg !2975
  br i1 %tobool74.not, label %if.then75, label %if.else83, !dbg !2976

if.then75:                                        ; preds = %if.else
  %call76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(5) @.str.13) #23, !dbg !2977
  %tobool77.not = icmp eq i32 %call76, 0, !dbg !2977
  br i1 %tobool77.not, label %if.then78, label %if.else79, !dbg !2980

if.then78:                                        ; preds = %if.then75
  %i_threads = getelementptr inbounds i8, ptr %p, i64 4, !dbg !2981
  store i32 0, ptr %i_threads, align 4, !dbg !2982
  br label %if.end1116, !dbg !2983

if.else79:                                        ; preds = %if.then75
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2856, ptr %end.i1608, !DIExpression(), !2984)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !2984)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !2984)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1608) #25, !dbg !2986
  %call.i1609 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1608, i32 noundef 0) #25, !dbg !2987
    #dbg_value(i64 %call.i1609, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2984)
  %30 = load ptr, ptr %end.i1608, align 8, !dbg !2988
  %cmp.i1610 = icmp eq ptr %30, %value.addr.2, !dbg !2989
  br i1 %cmp.i1610, label %if.then.i1613, label %lor.lhs.false.i1611, !dbg !2990

lor.lhs.false.i1611:                              ; preds = %if.else79
  %31 = load i8, ptr %30, align 1, !dbg !2991
  %cmp3.not.i1612 = icmp eq i8 %31, 0, !dbg !2992
  br i1 %cmp3.not.i1612, label %x264_atoi.exit1615, label %if.then.i1613, !dbg !2993

if.then.i1613:                                    ; preds = %lor.lhs.false.i1611, %if.else79
  store i32 1, ptr %b_error, align 4, !dbg !2994, !DIAssignID !2995
    #dbg_assign(i32 1, !2698, !DIExpression(), !2995, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1615, !dbg !2996

x264_atoi.exit1615:                               ; preds = %lor.lhs.false.i1611, %if.then.i1613
  %conv.i1614 = trunc i64 %call.i1609 to i32, !dbg !2987
    #dbg_value(i32 %conv.i1614, !2911, !DIExpression(), !2984)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1608) #25, !dbg !2997
  %i_threads81 = getelementptr inbounds i8, ptr %p, i64 4, !dbg !2998
  store i32 %conv.i1614, ptr %i_threads81, align 4, !dbg !2999
  br label %if.end1116

if.else83:                                        ; preds = %if.else
  %call84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.16) #23, !dbg !3000
  %tobool85.not = icmp eq i32 %call84, 0, !dbg !3000
  br i1 %tobool85.not, label %if.then86, label %if.else88, !dbg !3001

if.then86:                                        ; preds = %if.else83
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call87 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3002
  %b_sliced_threads = getelementptr inbounds i8, ptr %p, i64 8, !dbg !3003
  store i32 %call87, ptr %b_sliced_threads, align 8, !dbg !3004
  br label %if.end1116, !dbg !3005

if.else88:                                        ; preds = %if.else83
  %call89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.17) #23, !dbg !3006
  %tobool90.not = icmp eq i32 %call89, 0, !dbg !3006
  br i1 %tobool90.not, label %if.then91, label %if.else99, !dbg !3007

if.then91:                                        ; preds = %if.else88
  %call92 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(5) @.str.13) #23, !dbg !3008
  %tobool93.not = icmp eq i32 %call92, 0, !dbg !3008
  br i1 %tobool93.not, label %if.then94, label %if.else95, !dbg !3011

if.then94:                                        ; preds = %if.then91
  %i_sync_lookahead = getelementptr inbounds i8, ptr %p, i64 16, !dbg !3012
  store i32 -1, ptr %i_sync_lookahead, align 8, !dbg !3013
  br label %if.end1116, !dbg !3014

if.else95:                                        ; preds = %if.then91
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2855, ptr %end.i1616, !DIExpression(), !3015)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3015)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3015)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1616) #25, !dbg !3017
  %call.i1617 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1616, i32 noundef 0) #25, !dbg !3018
    #dbg_value(i64 %call.i1617, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3015)
  %32 = load ptr, ptr %end.i1616, align 8, !dbg !3019
  %cmp.i1618 = icmp eq ptr %32, %value.addr.2, !dbg !3020
  br i1 %cmp.i1618, label %if.then.i1621, label %lor.lhs.false.i1619, !dbg !3021

lor.lhs.false.i1619:                              ; preds = %if.else95
  %33 = load i8, ptr %32, align 1, !dbg !3022
  %cmp3.not.i1620 = icmp eq i8 %33, 0, !dbg !3023
  br i1 %cmp3.not.i1620, label %x264_atoi.exit1623, label %if.then.i1621, !dbg !3024

if.then.i1621:                                    ; preds = %lor.lhs.false.i1619, %if.else95
  store i32 1, ptr %b_error, align 4, !dbg !3025, !DIAssignID !3026
    #dbg_assign(i32 1, !2698, !DIExpression(), !3026, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1623, !dbg !3027

x264_atoi.exit1623:                               ; preds = %lor.lhs.false.i1619, %if.then.i1621
  %conv.i1622 = trunc i64 %call.i1617 to i32, !dbg !3018
    #dbg_value(i32 %conv.i1622, !2911, !DIExpression(), !3015)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1616) #25, !dbg !3028
  %i_sync_lookahead97 = getelementptr inbounds i8, ptr %p, i64 16, !dbg !3029
  store i32 %conv.i1622, ptr %i_sync_lookahead97, align 8, !dbg !3030
  br label %if.end1116

if.else99:                                        ; preds = %if.else88
  %call100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(14) @.str.18) #23, !dbg !3031
  %tobool101.not = icmp eq i32 %call100, 0, !dbg !3031
  br i1 %tobool101.not, label %if.then105, label %lor.lhs.false102, !dbg !3031

lor.lhs.false102:                                 ; preds = %if.else99
  %call103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(16) @.str.19) #23, !dbg !3031
  %tobool104.not = icmp eq i32 %call103, 0, !dbg !3031
  br i1 %tobool104.not, label %if.then105, label %if.else107, !dbg !3032

if.then105:                                       ; preds = %lor.lhs.false102, %if.else99
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call106 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3033
  %b_deterministic = getelementptr inbounds i8, ptr %p, i64 12, !dbg !3034
  store i32 %call106, ptr %b_deterministic, align 4, !dbg !3035
  br label %if.end1116, !dbg !3036

if.else107:                                       ; preds = %lor.lhs.false102
  %call108 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.20) #23, !dbg !3037
  %tobool109.not = icmp eq i32 %call108, 0, !dbg !3037
  br i1 %tobool109.not, label %if.then113, label %lor.lhs.false110, !dbg !3037

lor.lhs.false110:                                 ; preds = %if.else107
  %call111 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.21) #23, !dbg !3037
  %tobool112.not = icmp eq i32 %call111, 0, !dbg !3037
  br i1 %tobool112.not, label %if.then113, label %if.else124, !dbg !3038

if.then113:                                       ; preds = %lor.lhs.false110, %if.else107
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2854, ptr %end.i1624, !DIExpression(), !3047)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !3047)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !3047)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1624) #25, !dbg !3051
  %call.i1625 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1624) #25, !dbg !3052
    #dbg_value(double %call.i1625, !3046, !DIExpression(), !3047)
  %34 = load ptr, ptr %end.i1624, align 8, !dbg !3053
  %cmp.i1626 = icmp eq ptr %34, %value.addr.2, !dbg !3055
  br i1 %cmp.i1626, label %if.then.i1628, label %lor.lhs.false.i1627, !dbg !3056

lor.lhs.false.i1627:                              ; preds = %if.then113
  %35 = load i8, ptr %34, align 1, !dbg !3057
  %cmp1.not.i = icmp eq i8 %35, 0, !dbg !3058
  br i1 %cmp1.not.i, label %x264_atof.exit, label %if.then.i1628, !dbg !3059

if.then.i1628:                                    ; preds = %lor.lhs.false.i1627, %if.then113
  store i32 1, ptr %b_error, align 4, !dbg !3060, !DIAssignID !3061
    #dbg_assign(i32 1, !2698, !DIExpression(), !3061, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit, !dbg !3062

x264_atof.exit:                                   ; preds = %lor.lhs.false.i1627, %if.then.i1628
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1624) #25, !dbg !3063
  %cmp115 = fcmp olt double %call.i1625, 6.000000e+00, !dbg !3064
  br i1 %cmp115, label %if.then117, label %if.else120, !dbg !3065

if.then117:                                       ; preds = %x264_atof.exit
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2853, ptr %end.i1629, !DIExpression(), !3066)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !3066)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !3066)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1629) #25, !dbg !3068
  %call.i1630 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1629) #25, !dbg !3069
    #dbg_value(double %call.i1630, !3046, !DIExpression(), !3066)
  %36 = load ptr, ptr %end.i1629, align 8, !dbg !3070
  %cmp.i1631 = icmp eq ptr %36, %value.addr.2, !dbg !3071
  br i1 %cmp.i1631, label %if.then.i1634, label %lor.lhs.false.i1632, !dbg !3072

lor.lhs.false.i1632:                              ; preds = %if.then117
  %37 = load i8, ptr %36, align 1, !dbg !3073
  %cmp1.not.i1633 = icmp eq i8 %37, 0, !dbg !3074
  br i1 %cmp1.not.i1633, label %x264_atof.exit1635, label %if.then.i1634, !dbg !3075

if.then.i1634:                                    ; preds = %lor.lhs.false.i1632, %if.then117
  store i32 1, ptr %b_error, align 4, !dbg !3076, !DIAssignID !3077
    #dbg_assign(i32 1, !2698, !DIExpression(), !3077, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit1635, !dbg !3078

x264_atof.exit1635:                               ; preds = %lor.lhs.false.i1632, %if.then.i1634
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1629) #25, !dbg !3079
  %38 = tail call double @llvm.fmuladd.f64(double %call.i1630, double 1.000000e+01, double 5.000000e-01), !dbg !3080
  %conv119 = fptosi double %38 to i32, !dbg !3081
  %i_level_idc = getelementptr inbounds i8, ptr %p, i64 32, !dbg !3082
  store i32 %conv119, ptr %i_level_idc, align 8, !dbg !3083
  br label %if.end1116, !dbg !3084

if.else120:                                       ; preds = %x264_atof.exit
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2852, ptr %end.i1636, !DIExpression(), !3085)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3085)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3085)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1636) #25, !dbg !3087
  %call.i1637 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1636, i32 noundef 0) #25, !dbg !3088
    #dbg_value(i64 %call.i1637, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3085)
  %39 = load ptr, ptr %end.i1636, align 8, !dbg !3089
  %cmp.i1638 = icmp eq ptr %39, %value.addr.2, !dbg !3090
  br i1 %cmp.i1638, label %if.then.i1641, label %lor.lhs.false.i1639, !dbg !3091

lor.lhs.false.i1639:                              ; preds = %if.else120
  %40 = load i8, ptr %39, align 1, !dbg !3092
  %cmp3.not.i1640 = icmp eq i8 %40, 0, !dbg !3093
  br i1 %cmp3.not.i1640, label %x264_atoi.exit1643, label %if.then.i1641, !dbg !3094

if.then.i1641:                                    ; preds = %lor.lhs.false.i1639, %if.else120
  store i32 1, ptr %b_error, align 4, !dbg !3095, !DIAssignID !3096
    #dbg_assign(i32 1, !2698, !DIExpression(), !3096, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1643, !dbg !3097

x264_atoi.exit1643:                               ; preds = %lor.lhs.false.i1639, %if.then.i1641
  %conv.i1642 = trunc i64 %call.i1637 to i32, !dbg !3088
    #dbg_value(i32 %conv.i1642, !2911, !DIExpression(), !3085)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1636) #25, !dbg !3098
  %i_level_idc122 = getelementptr inbounds i8, ptr %p, i64 32, !dbg !3099
  store i32 %conv.i1642, ptr %i_level_idc122, align 8, !dbg !3100
  br label %if.end1116

if.else124:                                       ; preds = %lor.lhs.false110
  %call125 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.22) #23, !dbg !3101
  %tobool126.not = icmp eq i32 %call125, 0, !dbg !3101
  br i1 %tobool126.not, label %if.then127, label %if.else141, !dbg !3102

if.then127:                                       ; preds = %if.else124
  %vui = getelementptr inbounds i8, ptr %p, i64 44, !dbg !3103
  %i_sar_width = getelementptr inbounds i8, ptr %p, i64 48, !dbg !3105
  %call129 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.23, ptr noundef nonnull %i_sar_width, ptr noundef nonnull %vui) #25, !dbg !3106
  %cmp130.not = icmp eq i32 %call129, 2, !dbg !3107
  br i1 %cmp130.not, label %land.end140, label %land.rhs132, !dbg !3108

land.rhs132:                                      ; preds = %if.then127
  %call137 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.24, ptr noundef nonnull %i_sar_width, ptr noundef nonnull %vui) #25, !dbg !3109
  %cmp138 = icmp ne i32 %call137, 2, !dbg !3110
  %41 = zext i1 %cmp138 to i32, !dbg !3108
  br label %land.end140

land.end140:                                      ; preds = %land.rhs132, %if.then127
  %land.ext = phi i32 [ 0, %if.then127 ], [ %41, %land.rhs132 ], !dbg !3111
  store i32 %land.ext, ptr %b_error, align 4, !dbg !3112, !DIAssignID !3113
    #dbg_assign(i32 %land.ext, !2698, !DIExpression(), !3113, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3114

if.else141:                                       ; preds = %if.else124
  %call142 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.25) #23, !dbg !3115
  %tobool143.not = icmp eq i32 %call142, 0, !dbg !3115
  br i1 %tobool143.not, label %if.then144, label %if.else148, !dbg !3116

if.then144:                                       ; preds = %if.else141
  %i_overscan = getelementptr inbounds i8, ptr %p, i64 52, !dbg !3117
  %call146 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_overscan_names, ptr noundef nonnull %i_overscan), !dbg !3118
  %42 = load i32, ptr %b_error, align 4, !dbg !3119
  %or147 = or i32 %42, %call146, !dbg !3119
  store i32 %or147, ptr %b_error, align 4, !dbg !3119, !DIAssignID !3120
    #dbg_assign(i32 %or147, !2698, !DIExpression(), !3120, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3121

if.else148:                                       ; preds = %if.else141
  %call149 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.26) #23, !dbg !3122
  %tobool150.not = icmp eq i32 %call149, 0, !dbg !3122
  br i1 %tobool150.not, label %if.then151, label %if.else155, !dbg !3123

if.then151:                                       ; preds = %if.else148
  %i_vidformat = getelementptr inbounds i8, ptr %p, i64 56, !dbg !3124
  %call153 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_vidformat_names, ptr noundef nonnull %i_vidformat), !dbg !3125
  %43 = load i32, ptr %b_error, align 4, !dbg !3126
  %or154 = or i32 %43, %call153, !dbg !3126
  store i32 %or154, ptr %b_error, align 4, !dbg !3126, !DIAssignID !3127
    #dbg_assign(i32 %or154, !2698, !DIExpression(), !3127, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3128

if.else155:                                       ; preds = %if.else148
  %call156 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.27) #23, !dbg !3129
  %tobool157.not = icmp eq i32 %call156, 0, !dbg !3129
  br i1 %tobool157.not, label %if.then158, label %if.else162, !dbg !3130

if.then158:                                       ; preds = %if.else155
  %b_fullrange = getelementptr inbounds i8, ptr %p, i64 60, !dbg !3131
  %call160 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_fullrange_names, ptr noundef nonnull %b_fullrange), !dbg !3132
  %44 = load i32, ptr %b_error, align 4, !dbg !3133
  %or161 = or i32 %44, %call160, !dbg !3133
  store i32 %or161, ptr %b_error, align 4, !dbg !3133, !DIAssignID !3134
    #dbg_assign(i32 %or161, !2698, !DIExpression(), !3134, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3135

if.else162:                                       ; preds = %if.else155
  %call163 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.28) #23, !dbg !3136
  %tobool164.not = icmp eq i32 %call163, 0, !dbg !3136
  br i1 %tobool164.not, label %if.then165, label %if.else169, !dbg !3137

if.then165:                                       ; preds = %if.else162
  %i_colorprim = getelementptr inbounds i8, ptr %p, i64 64, !dbg !3138
  %call167 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_colorprim_names, ptr noundef nonnull %i_colorprim), !dbg !3139
  %45 = load i32, ptr %b_error, align 4, !dbg !3140
  %or168 = or i32 %45, %call167, !dbg !3140
  store i32 %or168, ptr %b_error, align 4, !dbg !3140, !DIAssignID !3141
    #dbg_assign(i32 %or168, !2698, !DIExpression(), !3141, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3142

if.else169:                                       ; preds = %if.else162
  %call170 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.29) #23, !dbg !3143
  %tobool171.not = icmp eq i32 %call170, 0, !dbg !3143
  br i1 %tobool171.not, label %if.then172, label %if.else176, !dbg !3144

if.then172:                                       ; preds = %if.else169
  %i_transfer = getelementptr inbounds i8, ptr %p, i64 68, !dbg !3145
  %call174 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_transfer_names, ptr noundef nonnull %i_transfer), !dbg !3146
  %46 = load i32, ptr %b_error, align 4, !dbg !3147
  %or175 = or i32 %46, %call174, !dbg !3147
  store i32 %or175, ptr %b_error, align 4, !dbg !3147, !DIAssignID !3148
    #dbg_assign(i32 %or175, !2698, !DIExpression(), !3148, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3149

if.else176:                                       ; preds = %if.else169
  %call177 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.30) #23, !dbg !3150
  %tobool178.not = icmp eq i32 %call177, 0, !dbg !3150
  br i1 %tobool178.not, label %if.then179, label %if.else183, !dbg !3151

if.then179:                                       ; preds = %if.else176
  %i_colmatrix = getelementptr inbounds i8, ptr %p, i64 72, !dbg !3152
  %call181 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_colmatrix_names, ptr noundef nonnull %i_colmatrix), !dbg !3153
  %47 = load i32, ptr %b_error, align 4, !dbg !3154
  %or182 = or i32 %47, %call181, !dbg !3154
  store i32 %or182, ptr %b_error, align 4, !dbg !3154, !DIAssignID !3155
    #dbg_assign(i32 %or182, !2698, !DIExpression(), !3155, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3156

if.else183:                                       ; preds = %if.else176
  %call184 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.31) #23, !dbg !3157
  %tobool185.not = icmp eq i32 %call184, 0, !dbg !3157
  br i1 %tobool185.not, label %if.then186, label %if.else197, !dbg !3158

if.then186:                                       ; preds = %if.else183
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2851, ptr %end.i1644, !DIExpression(), !3159)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3159)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3159)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1644) #25, !dbg !3162
  %call.i1645 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1644, i32 noundef 0) #25, !dbg !3163
    #dbg_value(i64 %call.i1645, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3159)
  %conv.i1650 = trunc i64 %call.i1645 to i32, !dbg !3163
    #dbg_value(i32 %conv.i1650, !2911, !DIExpression(), !3159)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1644) #25, !dbg !3164
  %i_chroma_loc = getelementptr inbounds i8, ptr %p, i64 76, !dbg !3165
  store i32 %conv.i1650, ptr %i_chroma_loc, align 4, !dbg !3166
  %narrow = icmp ugt i32 %conv.i1650, 5, !dbg !3167
  %lor.ext = zext i1 %narrow to i32, !dbg !3167
  store i32 %lor.ext, ptr %b_error, align 4, !dbg !3168, !DIAssignID !3169
    #dbg_assign(i32 %lor.ext, !2698, !DIExpression(), !3169, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3170

if.else197:                                       ; preds = %if.else183
  %call198 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.32) #23, !dbg !3171
  %tobool199.not = icmp eq i32 %call198, 0, !dbg !3171
  br i1 %tobool199.not, label %if.then200, label %if.else213, !dbg !3172

if.then200:                                       ; preds = %if.else197
  %i_fps_num = getelementptr inbounds i8, ptr %p, i64 652, !dbg !3173
  %i_fps_den = getelementptr inbounds i8, ptr %p, i64 656, !dbg !3174
  %call201 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.33, ptr noundef nonnull %i_fps_num, ptr noundef nonnull %i_fps_den) #25, !dbg !3175
  %cmp202 = icmp eq i32 %call201, 2, !dbg !3176
  br i1 %cmp202, label %if.end1116, label %if.else205, !dbg !3177

if.else205:                                       ; preds = %if.then200
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2850, ptr %end.i1652, !DIExpression(), !3178)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !3178)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !3178)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1652) #25, !dbg !3180
  %call.i1653 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1652) #25, !dbg !3181
    #dbg_value(double %call.i1653, !3046, !DIExpression(), !3178)
  %48 = load ptr, ptr %end.i1652, align 8, !dbg !3182
  %cmp.i1654 = icmp eq ptr %48, %value.addr.2, !dbg !3183
  br i1 %cmp.i1654, label %if.then.i1657, label %lor.lhs.false.i1655, !dbg !3184

lor.lhs.false.i1655:                              ; preds = %if.else205
  %49 = load i8, ptr %48, align 1, !dbg !3185
  %cmp1.not.i1656 = icmp eq i8 %49, 0, !dbg !3186
  br i1 %cmp1.not.i1656, label %x264_atof.exit1658, label %if.then.i1657, !dbg !3187

if.then.i1657:                                    ; preds = %lor.lhs.false.i1655, %if.else205
  store i32 1, ptr %b_error, align 4, !dbg !3188, !DIAssignID !3189
    #dbg_assign(i32 1, !2698, !DIExpression(), !3189, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit1658, !dbg !3190

x264_atof.exit1658:                               ; preds = %lor.lhs.false.i1655, %if.then.i1657
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1652) #25, !dbg !3191
  %conv207 = fptrunc double %call.i1653 to float, !dbg !3192
    #dbg_value(float %conv207, !2714, !DIExpression(), !3193)
  %mul = fmul float %conv207, 1.000000e+03, !dbg !3194
  %conv208 = fpext float %mul to double, !dbg !3195
  %add = fadd double %conv208, 5.000000e-01, !dbg !3196
  %conv209 = fptosi double %add to i32, !dbg !3197
  store i32 %conv209, ptr %i_fps_num, align 4, !dbg !3198
  store i32 1000, ptr %i_fps_den, align 8, !dbg !3199
  br label %if.end1116

if.else213:                                       ; preds = %if.else197
  %call214 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.34) #23, !dbg !3200
  %tobool215.not = icmp eq i32 %call214, 0, !dbg !3200
  br i1 %tobool215.not, label %if.then219, label %lor.lhs.false216, !dbg !3200

lor.lhs.false216:                                 ; preds = %if.else213
  %call217 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.35) #23, !dbg !3200
  %tobool218.not = icmp eq i32 %call217, 0, !dbg !3200
  br i1 %tobool218.not, label %if.then219, label %if.else221, !dbg !3201

if.then219:                                       ; preds = %lor.lhs.false216, %if.else213
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2849, ptr %end.i1659, !DIExpression(), !3202)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3202)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3202)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1659) #25, !dbg !3204
  %call.i1660 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1659, i32 noundef 0) #25, !dbg !3205
    #dbg_value(i64 %call.i1660, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3202)
  %50 = load ptr, ptr %end.i1659, align 8, !dbg !3206
  %cmp.i1661 = icmp eq ptr %50, %value.addr.2, !dbg !3207
  br i1 %cmp.i1661, label %if.then.i1664, label %lor.lhs.false.i1662, !dbg !3208

lor.lhs.false.i1662:                              ; preds = %if.then219
  %51 = load i8, ptr %50, align 1, !dbg !3209
  %cmp3.not.i1663 = icmp eq i8 %51, 0, !dbg !3210
  br i1 %cmp3.not.i1663, label %x264_atoi.exit1666, label %if.then.i1664, !dbg !3211

if.then.i1664:                                    ; preds = %lor.lhs.false.i1662, %if.then219
  store i32 1, ptr %b_error, align 4, !dbg !3212, !DIAssignID !3213
    #dbg_assign(i32 1, !2698, !DIExpression(), !3213, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1666, !dbg !3214

x264_atoi.exit1666:                               ; preds = %lor.lhs.false.i1662, %if.then.i1664
  %conv.i1665 = trunc i64 %call.i1660 to i32, !dbg !3205
    #dbg_value(i32 %conv.i1665, !2911, !DIExpression(), !3202)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1659) #25, !dbg !3215
  %i_frame_reference = getelementptr inbounds i8, ptr %p, i64 80, !dbg !3216
  store i32 %conv.i1665, ptr %i_frame_reference, align 8, !dbg !3217
  br label %if.end1116, !dbg !3218

if.else221:                                       ; preds = %lor.lhs.false216
  %call222 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.36) #23, !dbg !3219
  %tobool223.not = icmp eq i32 %call222, 0, !dbg !3219
  br i1 %tobool223.not, label %if.then224, label %if.else233, !dbg !3220

if.then224:                                       ; preds = %if.else221
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2848, ptr %end.i1667, !DIExpression(), !3221)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3221)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3221)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1667) #25, !dbg !3224
  %call.i1668 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1667, i32 noundef 0) #25, !dbg !3225
    #dbg_value(i64 %call.i1668, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3221)
  %52 = load ptr, ptr %end.i1667, align 8, !dbg !3226
  %cmp.i1669 = icmp eq ptr %52, %value.addr.2, !dbg !3227
  br i1 %cmp.i1669, label %if.then.i1672, label %lor.lhs.false.i1670, !dbg !3228

lor.lhs.false.i1670:                              ; preds = %if.then224
  %53 = load i8, ptr %52, align 1, !dbg !3229
  %cmp3.not.i1671 = icmp eq i8 %53, 0, !dbg !3230
  br i1 %cmp3.not.i1671, label %x264_atoi.exit1674, label %if.then.i1672, !dbg !3231

if.then.i1672:                                    ; preds = %lor.lhs.false.i1670, %if.then224
  store i32 1, ptr %b_error, align 4, !dbg !3232, !DIAssignID !3233
    #dbg_assign(i32 1, !2698, !DIExpression(), !3233, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1674, !dbg !3234

x264_atoi.exit1674:                               ; preds = %lor.lhs.false.i1670, %if.then.i1672
  %conv.i1673 = trunc i64 %call.i1668 to i32, !dbg !3225
    #dbg_value(i32 %conv.i1673, !2911, !DIExpression(), !3221)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1667) #25, !dbg !3235
  %i_keyint_max = getelementptr inbounds i8, ptr %p, i64 84, !dbg !3236
  store i32 %conv.i1673, ptr %i_keyint_max, align 4, !dbg !3237
  %i_keyint_min = getelementptr inbounds i8, ptr %p, i64 88, !dbg !3238
  %54 = load i32, ptr %i_keyint_min, align 8, !dbg !3238
  %cmp227 = icmp sgt i32 %54, %conv.i1673, !dbg !3240
  br i1 %cmp227, label %if.then229, label %if.end1116, !dbg !3241

if.then229:                                       ; preds = %x264_atoi.exit1674
  store i32 %conv.i1673, ptr %i_keyint_min, align 8, !dbg !3242
  br label %if.end1116, !dbg !3243

if.else233:                                       ; preds = %if.else221
  %call234 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.37) #23, !dbg !3244
  %tobool235.not = icmp eq i32 %call234, 0, !dbg !3244
  br i1 %tobool235.not, label %if.then239, label %lor.lhs.false236, !dbg !3244

lor.lhs.false236:                                 ; preds = %if.else233
  %call237 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.38) #23, !dbg !3244
  %tobool238.not = icmp eq i32 %call237, 0, !dbg !3244
  br i1 %tobool238.not, label %if.then239, label %if.else250, !dbg !3245

if.then239:                                       ; preds = %lor.lhs.false236, %if.else233
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2847, ptr %end.i1675, !DIExpression(), !3246)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3246)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3246)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1675) #25, !dbg !3249
  %call.i1676 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1675, i32 noundef 0) #25, !dbg !3250
    #dbg_value(i64 %call.i1676, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3246)
  %55 = load ptr, ptr %end.i1675, align 8, !dbg !3251
  %cmp.i1677 = icmp eq ptr %55, %value.addr.2, !dbg !3252
  br i1 %cmp.i1677, label %if.then.i1680, label %lor.lhs.false.i1678, !dbg !3253

lor.lhs.false.i1678:                              ; preds = %if.then239
  %56 = load i8, ptr %55, align 1, !dbg !3254
  %cmp3.not.i1679 = icmp eq i8 %56, 0, !dbg !3255
  br i1 %cmp3.not.i1679, label %x264_atoi.exit1682, label %if.then.i1680, !dbg !3256

if.then.i1680:                                    ; preds = %lor.lhs.false.i1678, %if.then239
  store i32 1, ptr %b_error, align 4, !dbg !3257, !DIAssignID !3258
    #dbg_assign(i32 1, !2698, !DIExpression(), !3258, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1682, !dbg !3259

x264_atoi.exit1682:                               ; preds = %lor.lhs.false.i1678, %if.then.i1680
  %conv.i1681 = trunc i64 %call.i1676 to i32, !dbg !3250
    #dbg_value(i32 %conv.i1681, !2911, !DIExpression(), !3246)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1675) #25, !dbg !3260
  %i_keyint_min241 = getelementptr inbounds i8, ptr %p, i64 88, !dbg !3261
  store i32 %conv.i1681, ptr %i_keyint_min241, align 8, !dbg !3262
  %i_keyint_max242 = getelementptr inbounds i8, ptr %p, i64 84, !dbg !3263
  %57 = load i32, ptr %i_keyint_max242, align 4, !dbg !3263
  %cmp244 = icmp slt i32 %57, %conv.i1681, !dbg !3265
  br i1 %cmp244, label %if.then246, label %if.end1116, !dbg !3266

if.then246:                                       ; preds = %x264_atoi.exit1682
  store i32 %conv.i1681, ptr %i_keyint_max242, align 4, !dbg !3267
  br label %if.end1116, !dbg !3268

if.else250:                                       ; preds = %lor.lhs.false236
  %call251 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.39) #23, !dbg !3269
  %tobool252.not = icmp eq i32 %call251, 0, !dbg !3269
  br i1 %tobool252.not, label %if.then253, label %if.else263, !dbg !3270

if.then253:                                       ; preds = %if.else250
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call254 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3271
  %i_scenecut_threshold = getelementptr inbounds i8, ptr %p, i64 92, !dbg !3273
  store i32 %call254, ptr %i_scenecut_threshold, align 4, !dbg !3274
  %58 = load i32, ptr %b_error, align 4, !dbg !3275
  %tobool255.not = icmp eq i32 %58, 0, !dbg !3275
  %tobool258.not = icmp eq i32 %call254, 0
  %or.cond = select i1 %tobool255.not, i1 %tobool258.not, i1 false, !dbg !3277
  br i1 %or.cond, label %if.end1116, label %if.then259, !dbg !3277

if.then259:                                       ; preds = %if.then253
  store i32 0, ptr %b_error, align 4, !dbg !3278, !DIAssignID !3280
    #dbg_assign(i32 0, !2698, !DIExpression(), !3280, ptr %b_error, !DIExpression(), !2859)
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2846, ptr %end.i1683, !DIExpression(), !3281)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3281)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3281)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1683) #25, !dbg !3283
  %call.i1684 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1683, i32 noundef 0) #25, !dbg !3284
    #dbg_value(i64 %call.i1684, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3281)
  %59 = load ptr, ptr %end.i1683, align 8, !dbg !3285
  %cmp.i1685 = icmp eq ptr %59, %value.addr.2, !dbg !3286
  br i1 %cmp.i1685, label %if.then.i1688, label %lor.lhs.false.i1686, !dbg !3287

lor.lhs.false.i1686:                              ; preds = %if.then259
  %60 = load i8, ptr %59, align 1, !dbg !3288
  %cmp3.not.i1687 = icmp eq i8 %60, 0, !dbg !3289
  br i1 %cmp3.not.i1687, label %x264_atoi.exit1690, label %if.then.i1688, !dbg !3290

if.then.i1688:                                    ; preds = %lor.lhs.false.i1686, %if.then259
  store i32 1, ptr %b_error, align 4, !dbg !3291, !DIAssignID !3292
    #dbg_assign(i32 1, !2698, !DIExpression(), !3292, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1690, !dbg !3293

x264_atoi.exit1690:                               ; preds = %lor.lhs.false.i1686, %if.then.i1688
  %conv.i1689 = trunc i64 %call.i1684 to i32, !dbg !3284
    #dbg_value(i32 %conv.i1689, !2911, !DIExpression(), !3281)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1683) #25, !dbg !3294
  store i32 %conv.i1689, ptr %i_scenecut_threshold, align 4, !dbg !3295
  br label %if.end1116, !dbg !3296

if.else263:                                       ; preds = %if.else250
  %call264 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(14) @.str.40) #23, !dbg !3297
  %tobool265.not = icmp eq i32 %call264, 0, !dbg !3297
  br i1 %tobool265.not, label %if.then266, label %if.else268, !dbg !3298

if.then266:                                       ; preds = %if.else263
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call267 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3299
  %b_intra_refresh = getelementptr inbounds i8, ptr %p, i64 96, !dbg !3300
  store i32 %call267, ptr %b_intra_refresh, align 8, !dbg !3301
  br label %if.end1116, !dbg !3302

if.else268:                                       ; preds = %if.else263
  %call269 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.41) #23, !dbg !3303
  %tobool270.not = icmp eq i32 %call269, 0, !dbg !3303
  br i1 %tobool270.not, label %if.then271, label %if.else273, !dbg !3304

if.then271:                                       ; preds = %if.else268
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2845, ptr %end.i1691, !DIExpression(), !3305)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3305)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3305)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1691) #25, !dbg !3307
  %call.i1692 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1691, i32 noundef 0) #25, !dbg !3308
    #dbg_value(i64 %call.i1692, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3305)
  %61 = load ptr, ptr %end.i1691, align 8, !dbg !3309
  %cmp.i1693 = icmp eq ptr %61, %value.addr.2, !dbg !3310
  br i1 %cmp.i1693, label %if.then.i1696, label %lor.lhs.false.i1694, !dbg !3311

lor.lhs.false.i1694:                              ; preds = %if.then271
  %62 = load i8, ptr %61, align 1, !dbg !3312
  %cmp3.not.i1695 = icmp eq i8 %62, 0, !dbg !3313
  br i1 %cmp3.not.i1695, label %x264_atoi.exit1698, label %if.then.i1696, !dbg !3314

if.then.i1696:                                    ; preds = %lor.lhs.false.i1694, %if.then271
  store i32 1, ptr %b_error, align 4, !dbg !3315, !DIAssignID !3316
    #dbg_assign(i32 1, !2698, !DIExpression(), !3316, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1698, !dbg !3317

x264_atoi.exit1698:                               ; preds = %lor.lhs.false.i1694, %if.then.i1696
  %conv.i1697 = trunc i64 %call.i1692 to i32, !dbg !3308
    #dbg_value(i32 %conv.i1697, !2911, !DIExpression(), !3305)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1691) #25, !dbg !3318
  %i_bframe = getelementptr inbounds i8, ptr %p, i64 100, !dbg !3319
  store i32 %conv.i1697, ptr %i_bframe, align 4, !dbg !3320
  br label %if.end1116, !dbg !3321

if.else273:                                       ; preds = %if.else268
  %call274 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.42) #23, !dbg !3322
  %tobool275.not = icmp eq i32 %call274, 0, !dbg !3322
  br i1 %tobool275.not, label %if.then276, label %if.else283, !dbg !3323

if.then276:                                       ; preds = %if.else273
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call277 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3324
  %i_bframe_adaptive = getelementptr inbounds i8, ptr %p, i64 104, !dbg !3326
  store i32 %call277, ptr %i_bframe_adaptive, align 8, !dbg !3327
  %63 = load i32, ptr %b_error, align 4, !dbg !3328
  %tobool278.not = icmp eq i32 %63, 0, !dbg !3328
  br i1 %tobool278.not, label %if.end1116, label %if.then279, !dbg !3330

if.then279:                                       ; preds = %if.then276
  store i32 0, ptr %b_error, align 4, !dbg !3331, !DIAssignID !3333
    #dbg_assign(i32 0, !2698, !DIExpression(), !3333, ptr %b_error, !DIExpression(), !2859)
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2844, ptr %end.i1699, !DIExpression(), !3334)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3334)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3334)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1699) #25, !dbg !3336
  %call.i1700 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1699, i32 noundef 0) #25, !dbg !3337
    #dbg_value(i64 %call.i1700, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3334)
  %64 = load ptr, ptr %end.i1699, align 8, !dbg !3338
  %cmp.i1701 = icmp eq ptr %64, %value.addr.2, !dbg !3339
  br i1 %cmp.i1701, label %if.then.i1704, label %lor.lhs.false.i1702, !dbg !3340

lor.lhs.false.i1702:                              ; preds = %if.then279
  %65 = load i8, ptr %64, align 1, !dbg !3341
  %cmp3.not.i1703 = icmp eq i8 %65, 0, !dbg !3342
  br i1 %cmp3.not.i1703, label %x264_atoi.exit1706, label %if.then.i1704, !dbg !3343

if.then.i1704:                                    ; preds = %lor.lhs.false.i1702, %if.then279
  store i32 1, ptr %b_error, align 4, !dbg !3344, !DIAssignID !3345
    #dbg_assign(i32 1, !2698, !DIExpression(), !3345, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1706, !dbg !3346

x264_atoi.exit1706:                               ; preds = %lor.lhs.false.i1702, %if.then.i1704
  %conv.i1705 = trunc i64 %call.i1700 to i32, !dbg !3337
    #dbg_value(i32 %conv.i1705, !2911, !DIExpression(), !3334)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1699) #25, !dbg !3347
  store i32 %conv.i1705, ptr %i_bframe_adaptive, align 8, !dbg !3348
  br label %if.end1116, !dbg !3349

if.else283:                                       ; preds = %if.else273
  %call284 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.43) #23, !dbg !3350
  %tobool285.not = icmp eq i32 %call284, 0, !dbg !3350
  br i1 %tobool285.not, label %if.then286, label %if.else288, !dbg !3351

if.then286:                                       ; preds = %if.else283
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2843, ptr %end.i1707, !DIExpression(), !3352)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3352)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3352)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1707) #25, !dbg !3354
  %call.i1708 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1707, i32 noundef 0) #25, !dbg !3355
    #dbg_value(i64 %call.i1708, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3352)
  %66 = load ptr, ptr %end.i1707, align 8, !dbg !3356
  %cmp.i1709 = icmp eq ptr %66, %value.addr.2, !dbg !3357
  br i1 %cmp.i1709, label %if.then.i1712, label %lor.lhs.false.i1710, !dbg !3358

lor.lhs.false.i1710:                              ; preds = %if.then286
  %67 = load i8, ptr %66, align 1, !dbg !3359
  %cmp3.not.i1711 = icmp eq i8 %67, 0, !dbg !3360
  br i1 %cmp3.not.i1711, label %x264_atoi.exit1714, label %if.then.i1712, !dbg !3361

if.then.i1712:                                    ; preds = %lor.lhs.false.i1710, %if.then286
  store i32 1, ptr %b_error, align 4, !dbg !3362, !DIAssignID !3363
    #dbg_assign(i32 1, !2698, !DIExpression(), !3363, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1714, !dbg !3364

x264_atoi.exit1714:                               ; preds = %lor.lhs.false.i1710, %if.then.i1712
  %conv.i1713 = trunc i64 %call.i1708 to i32, !dbg !3355
    #dbg_value(i32 %conv.i1713, !2911, !DIExpression(), !3352)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1707) #25, !dbg !3365
  %i_bframe_bias = getelementptr inbounds i8, ptr %p, i64 108, !dbg !3366
  store i32 %conv.i1713, ptr %i_bframe_bias, align 4, !dbg !3367
  br label %if.end1116, !dbg !3368

if.else288:                                       ; preds = %if.else283
  %call289 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.44) #23, !dbg !3369
  %tobool290.not = icmp eq i32 %call289, 0, !dbg !3369
  br i1 %tobool290.not, label %if.then291, label %sub_02006, !dbg !3370

if.then291:                                       ; preds = %if.else288
  %i_bframe_pyramid = getelementptr inbounds i8, ptr %p, i64 112, !dbg !3371
  %call292 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_b_pyramid_names, ptr noundef nonnull %i_bframe_pyramid), !dbg !3373
  %68 = load i32, ptr %b_error, align 4, !dbg !3374
  %or293 = or i32 %68, %call292, !dbg !3374
  store i32 %or293, ptr %b_error, align 4, !dbg !3374, !DIAssignID !3375
    #dbg_assign(i32 %or293, !2698, !DIExpression(), !3375, ptr %b_error, !DIExpression(), !2859)
  %tobool294.not = icmp eq i32 %or293, 0, !dbg !3376
  br i1 %tobool294.not, label %if.end1116, label %if.then295, !dbg !3378

if.then295:                                       ; preds = %if.then291
  store i32 0, ptr %b_error, align 4, !dbg !3379, !DIAssignID !3381
    #dbg_assign(i32 0, !2698, !DIExpression(), !3381, ptr %b_error, !DIExpression(), !2859)
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2842, ptr %end.i1715, !DIExpression(), !3382)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3382)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3382)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1715) #25, !dbg !3384
  %call.i1716 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1715, i32 noundef 0) #25, !dbg !3385
    #dbg_value(i64 %call.i1716, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3382)
  %69 = load ptr, ptr %end.i1715, align 8, !dbg !3386
  %cmp.i1717 = icmp eq ptr %69, %value.addr.2, !dbg !3387
  br i1 %cmp.i1717, label %if.then.i1720, label %lor.lhs.false.i1718, !dbg !3388

lor.lhs.false.i1718:                              ; preds = %if.then295
  %70 = load i8, ptr %69, align 1, !dbg !3389
  %cmp3.not.i1719 = icmp eq i8 %70, 0, !dbg !3390
  br i1 %cmp3.not.i1719, label %x264_atoi.exit1722, label %if.then.i1720, !dbg !3391

if.then.i1720:                                    ; preds = %lor.lhs.false.i1718, %if.then295
  store i32 1, ptr %b_error, align 4, !dbg !3392, !DIAssignID !3393
    #dbg_assign(i32 1, !2698, !DIExpression(), !3393, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1722, !dbg !3394

x264_atoi.exit1722:                               ; preds = %lor.lhs.false.i1718, %if.then.i1720
  %conv.i1721 = trunc i64 %call.i1716 to i32, !dbg !3385
    #dbg_value(i32 %conv.i1721, !2911, !DIExpression(), !3382)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1715) #25, !dbg !3395
  store i32 %conv.i1721, ptr %i_bframe_pyramid, align 8, !dbg !3396
  br label %if.end1116, !dbg !3397

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
  %tobool301.not = icmp eq i32 %81, 0, !dbg !3398
  br i1 %tobool301.not, label %if.then302, label %if.else307, !dbg !3399

if.then302:                                       ; preds = %if.else299.tail
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call303 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3400
  %lnot.ext306 = xor i32 %call303, 1, !dbg !3401
  %b_deblocking_filter = getelementptr inbounds i8, ptr %p, i64 116, !dbg !3402
  store i32 %lnot.ext306, ptr %b_deblocking_filter, align 4, !dbg !3403
  br label %if.end1116, !dbg !3404

if.else307:                                       ; preds = %if.else299.tail
  %call308 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.46) #23, !dbg !3405
  %tobool309.not = icmp eq i32 %call308, 0, !dbg !3405
  br i1 %tobool309.not, label %if.then313, label %lor.lhs.false310, !dbg !3405

lor.lhs.false310:                                 ; preds = %if.else307
  %call311 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.47) #23, !dbg !3405
  %tobool312.not = icmp eq i32 %call311, 0, !dbg !3405
  br i1 %tobool312.not, label %if.then313, label %if.else338, !dbg !3406

if.then313:                                       ; preds = %lor.lhs.false310, %if.else307
  %i_deblocking_filter_alphac0 = getelementptr inbounds i8, ptr %p, i64 120, !dbg !3407
  %i_deblocking_filter_beta = getelementptr inbounds i8, ptr %p, i64 124, !dbg !3410
  %call314 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.23, ptr noundef nonnull %i_deblocking_filter_alphac0, ptr noundef nonnull %i_deblocking_filter_beta) #25, !dbg !3411
  %cmp315 = icmp eq i32 %call314, 2, !dbg !3412
  br i1 %cmp315, label %if.then323, label %lor.lhs.false317, !dbg !3413

lor.lhs.false317:                                 ; preds = %if.then313
  %call320 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.48, ptr noundef nonnull %i_deblocking_filter_alphac0, ptr noundef nonnull %i_deblocking_filter_beta) #25, !dbg !3414
  %cmp321 = icmp eq i32 %call320, 2, !dbg !3415
  br i1 %cmp321, label %if.then323, label %if.else325, !dbg !3416

if.then323:                                       ; preds = %lor.lhs.false317, %if.then313
  %b_deblocking_filter324 = getelementptr inbounds i8, ptr %p, i64 116, !dbg !3417
  store i32 1, ptr %b_deblocking_filter324, align 4, !dbg !3419
  br label %if.end1116, !dbg !3420

if.else325:                                       ; preds = %lor.lhs.false317
  %call327 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.49, ptr noundef nonnull %i_deblocking_filter_alphac0) #25, !dbg !3421
  %tobool328.not = icmp eq i32 %call327, 0, !dbg !3421
  br i1 %tobool328.not, label %if.else333, label %if.then329, !dbg !3423

if.then329:                                       ; preds = %if.else325
  %b_deblocking_filter330 = getelementptr inbounds i8, ptr %p, i64 116, !dbg !3424
  store i32 1, ptr %b_deblocking_filter330, align 4, !dbg !3426
  %82 = load i32, ptr %i_deblocking_filter_alphac0, align 8, !dbg !3427
  store i32 %82, ptr %i_deblocking_filter_beta, align 4, !dbg !3428
  br label %if.end1116, !dbg !3429

if.else333:                                       ; preds = %if.else325
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call334 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3430
  %b_deblocking_filter335 = getelementptr inbounds i8, ptr %p, i64 116, !dbg !3431
  store i32 %call334, ptr %b_deblocking_filter335, align 4, !dbg !3432
  br label %if.end1116

if.else338:                                       ; preds = %lor.lhs.false310
  %call339 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.50) #23, !dbg !3433
  %tobool340.not = icmp eq i32 %call339, 0, !dbg !3433
  br i1 %tobool340.not, label %if.then341, label %if.else343, !dbg !3434

if.then341:                                       ; preds = %if.else338
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2841, ptr %end.i1723, !DIExpression(), !3435)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3435)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3435)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1723) #25, !dbg !3437
  %call.i1724 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1723, i32 noundef 0) #25, !dbg !3438
    #dbg_value(i64 %call.i1724, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3435)
  %83 = load ptr, ptr %end.i1723, align 8, !dbg !3439
  %cmp.i1725 = icmp eq ptr %83, %value.addr.2, !dbg !3440
  br i1 %cmp.i1725, label %if.then.i1728, label %lor.lhs.false.i1726, !dbg !3441

lor.lhs.false.i1726:                              ; preds = %if.then341
  %84 = load i8, ptr %83, align 1, !dbg !3442
  %cmp3.not.i1727 = icmp eq i8 %84, 0, !dbg !3443
  br i1 %cmp3.not.i1727, label %x264_atoi.exit1730, label %if.then.i1728, !dbg !3444

if.then.i1728:                                    ; preds = %lor.lhs.false.i1726, %if.then341
  store i32 1, ptr %b_error, align 4, !dbg !3445, !DIAssignID !3446
    #dbg_assign(i32 1, !2698, !DIExpression(), !3446, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1730, !dbg !3447

x264_atoi.exit1730:                               ; preds = %lor.lhs.false.i1726, %if.then.i1728
  %conv.i1729 = trunc i64 %call.i1724 to i32, !dbg !3438
    #dbg_value(i32 %conv.i1729, !2911, !DIExpression(), !3435)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1723) #25, !dbg !3448
  %i_slice_max_size = getelementptr inbounds i8, ptr %p, i64 684, !dbg !3449
  store i32 %conv.i1729, ptr %i_slice_max_size, align 4, !dbg !3450
  br label %if.end1116, !dbg !3451

if.else343:                                       ; preds = %if.else338
  %call344 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(14) @.str.51) #23, !dbg !3452
  %tobool345.not = icmp eq i32 %call344, 0, !dbg !3452
  br i1 %tobool345.not, label %if.then346, label %if.else348, !dbg !3453

if.then346:                                       ; preds = %if.else343
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2840, ptr %end.i1731, !DIExpression(), !3454)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3454)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3454)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1731) #25, !dbg !3456
  %call.i1732 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1731, i32 noundef 0) #25, !dbg !3457
    #dbg_value(i64 %call.i1732, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3454)
  %85 = load ptr, ptr %end.i1731, align 8, !dbg !3458
  %cmp.i1733 = icmp eq ptr %85, %value.addr.2, !dbg !3459
  br i1 %cmp.i1733, label %if.then.i1736, label %lor.lhs.false.i1734, !dbg !3460

lor.lhs.false.i1734:                              ; preds = %if.then346
  %86 = load i8, ptr %85, align 1, !dbg !3461
  %cmp3.not.i1735 = icmp eq i8 %86, 0, !dbg !3462
  br i1 %cmp3.not.i1735, label %x264_atoi.exit1738, label %if.then.i1736, !dbg !3463

if.then.i1736:                                    ; preds = %lor.lhs.false.i1734, %if.then346
  store i32 1, ptr %b_error, align 4, !dbg !3464, !DIAssignID !3465
    #dbg_assign(i32 1, !2698, !DIExpression(), !3465, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1738, !dbg !3466

x264_atoi.exit1738:                               ; preds = %lor.lhs.false.i1734, %if.then.i1736
  %conv.i1737 = trunc i64 %call.i1732 to i32, !dbg !3457
    #dbg_value(i32 %conv.i1737, !2911, !DIExpression(), !3454)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1731) #25, !dbg !3467
  %i_slice_max_mbs = getelementptr inbounds i8, ptr %p, i64 688, !dbg !3468
  store i32 %conv.i1737, ptr %i_slice_max_mbs, align 8, !dbg !3469
  br label %if.end1116, !dbg !3470

if.else348:                                       ; preds = %if.else343
  %call349 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.52) #23, !dbg !3471
  %tobool350.not = icmp eq i32 %call349, 0, !dbg !3471
  br i1 %tobool350.not, label %if.then351, label %if.else353, !dbg !3472

if.then351:                                       ; preds = %if.else348
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2839, ptr %end.i1739, !DIExpression(), !3473)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3473)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3473)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1739) #25, !dbg !3475
  %call.i1740 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1739, i32 noundef 0) #25, !dbg !3476
    #dbg_value(i64 %call.i1740, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3473)
  %87 = load ptr, ptr %end.i1739, align 8, !dbg !3477
  %cmp.i1741 = icmp eq ptr %87, %value.addr.2, !dbg !3478
  br i1 %cmp.i1741, label %if.then.i1744, label %lor.lhs.false.i1742, !dbg !3479

lor.lhs.false.i1742:                              ; preds = %if.then351
  %88 = load i8, ptr %87, align 1, !dbg !3480
  %cmp3.not.i1743 = icmp eq i8 %88, 0, !dbg !3481
  br i1 %cmp3.not.i1743, label %x264_atoi.exit1746, label %if.then.i1744, !dbg !3482

if.then.i1744:                                    ; preds = %lor.lhs.false.i1742, %if.then351
  store i32 1, ptr %b_error, align 4, !dbg !3483, !DIAssignID !3484
    #dbg_assign(i32 1, !2698, !DIExpression(), !3484, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1746, !dbg !3485

x264_atoi.exit1746:                               ; preds = %lor.lhs.false.i1742, %if.then.i1744
  %conv.i1745 = trunc i64 %call.i1740 to i32, !dbg !3476
    #dbg_value(i32 %conv.i1745, !2911, !DIExpression(), !3473)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1739) #25, !dbg !3486
  %i_slice_count = getelementptr inbounds i8, ptr %p, i64 692, !dbg !3487
  store i32 %conv.i1745, ptr %i_slice_count, align 4, !dbg !3488
  br label %if.end1116, !dbg !3489

if.else353:                                       ; preds = %if.else348
  %call354 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.53) #23, !dbg !3490
  %tobool355.not = icmp eq i32 %call354, 0, !dbg !3490
  br i1 %tobool355.not, label %if.then356, label %if.else358, !dbg !3491

if.then356:                                       ; preds = %if.else353
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call357 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3492
  %b_cabac = getelementptr inbounds i8, ptr %p, i64 128, !dbg !3493
  store i32 %call357, ptr %b_cabac, align 8, !dbg !3494
  br label %if.end1116, !dbg !3495

if.else358:                                       ; preds = %if.else353
  %call359 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.54) #23, !dbg !3496
  %tobool360.not = icmp eq i32 %call359, 0, !dbg !3496
  br i1 %tobool360.not, label %if.then361, label %if.else363, !dbg !3497

if.then361:                                       ; preds = %if.else358
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2838, ptr %end.i1747, !DIExpression(), !3498)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3498)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3498)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1747) #25, !dbg !3500
  %call.i1748 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1747, i32 noundef 0) #25, !dbg !3501
    #dbg_value(i64 %call.i1748, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3498)
  %89 = load ptr, ptr %end.i1747, align 8, !dbg !3502
  %cmp.i1749 = icmp eq ptr %89, %value.addr.2, !dbg !3503
  br i1 %cmp.i1749, label %if.then.i1752, label %lor.lhs.false.i1750, !dbg !3504

lor.lhs.false.i1750:                              ; preds = %if.then361
  %90 = load i8, ptr %89, align 1, !dbg !3505
  %cmp3.not.i1751 = icmp eq i8 %90, 0, !dbg !3506
  br i1 %cmp3.not.i1751, label %x264_atoi.exit1754, label %if.then.i1752, !dbg !3507

if.then.i1752:                                    ; preds = %lor.lhs.false.i1750, %if.then361
  store i32 1, ptr %b_error, align 4, !dbg !3508, !DIAssignID !3509
    #dbg_assign(i32 1, !2698, !DIExpression(), !3509, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1754, !dbg !3510

x264_atoi.exit1754:                               ; preds = %lor.lhs.false.i1750, %if.then.i1752
  %conv.i1753 = trunc i64 %call.i1748 to i32, !dbg !3501
    #dbg_value(i32 %conv.i1753, !2911, !DIExpression(), !3498)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1747) #25, !dbg !3511
  %i_cabac_init_idc = getelementptr inbounds i8, ptr %p, i64 132, !dbg !3512
  store i32 %conv.i1753, ptr %i_cabac_init_idc, align 4, !dbg !3513
  br label %if.end1116, !dbg !3514

if.else363:                                       ; preds = %if.else358
  %call364 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.55) #23, !dbg !3515
  %tobool365.not = icmp eq i32 %call364, 0, !dbg !3515
  br i1 %tobool365.not, label %if.then366, label %if.else368, !dbg !3516

if.then366:                                       ; preds = %if.else363
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call367 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3517
  %b_interlaced = getelementptr inbounds i8, ptr %p, i64 136, !dbg !3518
  store i32 %call367, ptr %b_interlaced, align 8, !dbg !3519
  br label %if.end1116, !dbg !3520

if.else368:                                       ; preds = %if.else363
  %call369 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.56) #23, !dbg !3521
  %tobool370.not = icmp eq i32 %call369, 0, !dbg !3521
  br i1 %tobool370.not, label %if.then371, label %if.else374, !dbg !3522

if.then371:                                       ; preds = %if.else368
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call372 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3523
  %b_tff = getelementptr inbounds i8, ptr %p, i64 672, !dbg !3524
  store i32 %call372, ptr %b_tff, align 8, !dbg !3525
  %b_interlaced373 = getelementptr inbounds i8, ptr %p, i64 136, !dbg !3526
  store i32 %call372, ptr %b_interlaced373, align 8, !dbg !3527
  br label %if.end1116, !dbg !3528

if.else374:                                       ; preds = %if.else368
  %call375 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.57) #23, !dbg !3529
  %tobool376.not = icmp eq i32 %call375, 0, !dbg !3529
  br i1 %tobool376.not, label %if.then377, label %if.else385, !dbg !3530

if.then377:                                       ; preds = %if.else374
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call378 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3531
  %b_interlaced379 = getelementptr inbounds i8, ptr %p, i64 136, !dbg !3533
  store i32 %call378, ptr %b_interlaced379, align 8, !dbg !3534
  %lnot.ext383 = xor i32 %call378, 1, !dbg !3535
  %b_tff384 = getelementptr inbounds i8, ptr %p, i64 672, !dbg !3536
  store i32 %lnot.ext383, ptr %b_tff384, align 8, !dbg !3537
  br label %if.end1116, !dbg !3538

if.else385:                                       ; preds = %if.else374
  %call386 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(18) @.str.58) #23, !dbg !3539
  %tobool387.not = icmp eq i32 %call386, 0, !dbg !3539
  br i1 %tobool387.not, label %if.then388, label %if.else390, !dbg !3540

if.then388:                                       ; preds = %if.else385
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call389 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3541
  %b_constrained_intra = getelementptr inbounds i8, ptr %p, i64 140, !dbg !3542
  store i32 %call389, ptr %b_constrained_intra, align 4, !dbg !3543
  br label %if.end1116, !dbg !3544

if.else390:                                       ; preds = %if.else385
  %call391 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.59) #23, !dbg !3545
  %tobool392.not = icmp eq i32 %call391, 0, !dbg !3545
  br i1 %tobool392.not, label %if.then393, label %if.else406, !dbg !3546

if.then393:                                       ; preds = %if.else390
  %call394 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.60) #23, !dbg !3547
  %tobool395.not = icmp eq ptr %call394, null, !dbg !3547
  br i1 %tobool395.not, label %if.else397, label %if.then396, !dbg !3550

if.then396:                                       ; preds = %if.then393
  %i_cqm_preset = getelementptr inbounds i8, ptr %p, i64 144, !dbg !3551
  store i32 0, ptr %i_cqm_preset, align 8, !dbg !3552
  br label %if.end1116, !dbg !3553

if.else397:                                       ; preds = %if.then393
  %call398 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.61) #23, !dbg !3554
  %tobool399.not = icmp eq ptr %call398, null, !dbg !3554
  br i1 %tobool399.not, label %if.else402, label %if.then400, !dbg !3556

if.then400:                                       ; preds = %if.else397
  %i_cqm_preset401 = getelementptr inbounds i8, ptr %p, i64 144, !dbg !3557
  store i32 1, ptr %i_cqm_preset401, align 8, !dbg !3558
  br label %if.end1116, !dbg !3559

if.else402:                                       ; preds = %if.else397
  %call403 = tail call ptr @spec_strdup(ptr noundef %value.addr.2), !dbg !3560
  %psz_cqm_file = getelementptr inbounds i8, ptr %p, i64 152, !dbg !3561
  store ptr %call403, ptr %psz_cqm_file, align 8, !dbg !3562
  br label %if.end1116

if.else406:                                       ; preds = %if.else390
  %call407 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.62) #23, !dbg !3563
  %tobool408.not = icmp eq i32 %call407, 0, !dbg !3563
  br i1 %tobool408.not, label %if.then409, label %if.else412, !dbg !3564

if.then409:                                       ; preds = %if.else406
  %call410 = tail call ptr @spec_strdup(ptr noundef %value.addr.2), !dbg !3565
  %psz_cqm_file411 = getelementptr inbounds i8, ptr %p, i64 152, !dbg !3566
  store ptr %call410, ptr %psz_cqm_file411, align 8, !dbg !3567
  br label %if.end1116, !dbg !3568

if.else412:                                       ; preds = %if.else406
  %call413 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(5) @.str.63) #23, !dbg !3569
  %tobool414.not = icmp eq i32 %call413, 0, !dbg !3569
  br i1 %tobool414.not, label %if.then415, label %if.else429, !dbg !3570

if.then415:                                       ; preds = %if.else412
  %i_cqm_preset416 = getelementptr inbounds i8, ptr %p, i64 144, !dbg !3571
  store i32 2, ptr %i_cqm_preset416, align 8, !dbg !3573
  %cqm_4iy = getelementptr inbounds i8, ptr %p, i64 160, !dbg !3574
  %call418 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4iy, i32 noundef 16), !dbg !3575
  %91 = load i32, ptr %b_error, align 4, !dbg !3576
  %or419 = or i32 %91, %call418, !dbg !3576
    #dbg_assign(i32 %or419, !2698, !DIExpression(), !3577, ptr %b_error, !DIExpression(), !2859)
  %cqm_4ic = getelementptr inbounds i8, ptr %p, i64 176, !dbg !3578
  %call421 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4ic, i32 noundef 16), !dbg !3579
  %or422 = or i32 %or419, %call421, !dbg !3580
    #dbg_assign(i32 %or422, !2698, !DIExpression(), !3581, ptr %b_error, !DIExpression(), !2859)
  %cqm_4py = getelementptr inbounds i8, ptr %p, i64 192, !dbg !3582
  %call424 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4py, i32 noundef 16), !dbg !3583
  %or425 = or i32 %or422, %call424, !dbg !3584
    #dbg_assign(i32 %or425, !2698, !DIExpression(), !3585, ptr %b_error, !DIExpression(), !2859)
  %cqm_4pc = getelementptr inbounds i8, ptr %p, i64 208, !dbg !3586
  %call427 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4pc, i32 noundef 16), !dbg !3587
  %or428 = or i32 %or425, %call427, !dbg !3588
  store i32 %or428, ptr %b_error, align 4, !dbg !3588, !DIAssignID !3589
    #dbg_assign(i32 %or428, !2698, !DIExpression(), !3589, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3590

if.else429:                                       ; preds = %if.else412
  %call430 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(5) @.str.64) #23, !dbg !3591
  %tobool431.not = icmp eq i32 %call430, 0, !dbg !3591
  br i1 %tobool431.not, label %if.then432, label %if.else440, !dbg !3592

if.then432:                                       ; preds = %if.else429
  %i_cqm_preset433 = getelementptr inbounds i8, ptr %p, i64 144, !dbg !3593
  store i32 2, ptr %i_cqm_preset433, align 8, !dbg !3595
  %cqm_8iy = getelementptr inbounds i8, ptr %p, i64 224, !dbg !3596
  %call435 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_8iy, i32 noundef 64), !dbg !3597
  %92 = load i32, ptr %b_error, align 4, !dbg !3598
  %or436 = or i32 %92, %call435, !dbg !3598
    #dbg_assign(i32 %or436, !2698, !DIExpression(), !3599, ptr %b_error, !DIExpression(), !2859)
  %cqm_8py = getelementptr inbounds i8, ptr %p, i64 288, !dbg !3600
  %call438 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_8py, i32 noundef 64), !dbg !3601
  %or439 = or i32 %or436, %call438, !dbg !3602
  store i32 %or439, ptr %b_error, align 4, !dbg !3602, !DIAssignID !3603
    #dbg_assign(i32 %or439, !2698, !DIExpression(), !3603, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3604

if.else440:                                       ; preds = %if.else429
  %call441 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.65) #23, !dbg !3605
  %tobool442.not = icmp eq i32 %call441, 0, !dbg !3605
  br i1 %tobool442.not, label %if.then443, label %if.else453, !dbg !3606

if.then443:                                       ; preds = %if.else440
  %i_cqm_preset444 = getelementptr inbounds i8, ptr %p, i64 144, !dbg !3607
  store i32 2, ptr %i_cqm_preset444, align 8, !dbg !3609
  %cqm_4iy445 = getelementptr inbounds i8, ptr %p, i64 160, !dbg !3610
  %call447 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4iy445, i32 noundef 16), !dbg !3611
  %93 = load i32, ptr %b_error, align 4, !dbg !3612
  %or448 = or i32 %93, %call447, !dbg !3612
    #dbg_assign(i32 %or448, !2698, !DIExpression(), !3613, ptr %b_error, !DIExpression(), !2859)
  %cqm_4ic449 = getelementptr inbounds i8, ptr %p, i64 176, !dbg !3614
  %call451 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4ic449, i32 noundef 16), !dbg !3615
  %or452 = or i32 %or448, %call451, !dbg !3616
  store i32 %or452, ptr %b_error, align 4, !dbg !3616, !DIAssignID !3617
    #dbg_assign(i32 %or452, !2698, !DIExpression(), !3617, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3618

if.else453:                                       ; preds = %if.else440
  %call454 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.66) #23, !dbg !3619
  %tobool455.not = icmp eq i32 %call454, 0, !dbg !3619
  br i1 %tobool455.not, label %if.then456, label %if.else466, !dbg !3620

if.then456:                                       ; preds = %if.else453
  %i_cqm_preset457 = getelementptr inbounds i8, ptr %p, i64 144, !dbg !3621
  store i32 2, ptr %i_cqm_preset457, align 8, !dbg !3623
  %cqm_4py458 = getelementptr inbounds i8, ptr %p, i64 192, !dbg !3624
  %call460 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4py458, i32 noundef 16), !dbg !3625
  %94 = load i32, ptr %b_error, align 4, !dbg !3626
  %or461 = or i32 %94, %call460, !dbg !3626
    #dbg_assign(i32 %or461, !2698, !DIExpression(), !3627, ptr %b_error, !DIExpression(), !2859)
  %cqm_4pc462 = getelementptr inbounds i8, ptr %p, i64 208, !dbg !3628
  %call464 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4pc462, i32 noundef 16), !dbg !3629
  %or465 = or i32 %or461, %call464, !dbg !3630
  store i32 %or465, ptr %b_error, align 4, !dbg !3630, !DIAssignID !3631
    #dbg_assign(i32 %or465, !2698, !DIExpression(), !3631, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3632

if.else466:                                       ; preds = %if.else453
  %call467 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.67) #23, !dbg !3633
  %tobool468.not = icmp eq i32 %call467, 0, !dbg !3633
  br i1 %tobool468.not, label %if.then469, label %if.else475, !dbg !3634

if.then469:                                       ; preds = %if.else466
  %i_cqm_preset470 = getelementptr inbounds i8, ptr %p, i64 144, !dbg !3635
  store i32 2, ptr %i_cqm_preset470, align 8, !dbg !3637
  %cqm_4iy471 = getelementptr inbounds i8, ptr %p, i64 160, !dbg !3638
  %call473 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4iy471, i32 noundef 16), !dbg !3639
  %95 = load i32, ptr %b_error, align 4, !dbg !3640
  %or474 = or i32 %95, %call473, !dbg !3640
  store i32 %or474, ptr %b_error, align 4, !dbg !3640, !DIAssignID !3641
    #dbg_assign(i32 %or474, !2698, !DIExpression(), !3641, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3642

if.else475:                                       ; preds = %if.else466
  %call476 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.68) #23, !dbg !3643
  %tobool477.not = icmp eq i32 %call476, 0, !dbg !3643
  br i1 %tobool477.not, label %if.then478, label %if.else484, !dbg !3644

if.then478:                                       ; preds = %if.else475
  %i_cqm_preset479 = getelementptr inbounds i8, ptr %p, i64 144, !dbg !3645
  store i32 2, ptr %i_cqm_preset479, align 8, !dbg !3647
  %cqm_4ic480 = getelementptr inbounds i8, ptr %p, i64 176, !dbg !3648
  %call482 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4ic480, i32 noundef 16), !dbg !3649
  %96 = load i32, ptr %b_error, align 4, !dbg !3650
  %or483 = or i32 %96, %call482, !dbg !3650
  store i32 %or483, ptr %b_error, align 4, !dbg !3650, !DIAssignID !3651
    #dbg_assign(i32 %or483, !2698, !DIExpression(), !3651, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3652

if.else484:                                       ; preds = %if.else475
  %call485 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.69) #23, !dbg !3653
  %tobool486.not = icmp eq i32 %call485, 0, !dbg !3653
  br i1 %tobool486.not, label %if.then487, label %if.else493, !dbg !3654

if.then487:                                       ; preds = %if.else484
  %i_cqm_preset488 = getelementptr inbounds i8, ptr %p, i64 144, !dbg !3655
  store i32 2, ptr %i_cqm_preset488, align 8, !dbg !3657
  %cqm_4py489 = getelementptr inbounds i8, ptr %p, i64 192, !dbg !3658
  %call491 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4py489, i32 noundef 16), !dbg !3659
  %97 = load i32, ptr %b_error, align 4, !dbg !3660
  %or492 = or i32 %97, %call491, !dbg !3660
  store i32 %or492, ptr %b_error, align 4, !dbg !3660, !DIAssignID !3661
    #dbg_assign(i32 %or492, !2698, !DIExpression(), !3661, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3662

if.else493:                                       ; preds = %if.else484
  %call494 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.70) #23, !dbg !3663
  %tobool495.not = icmp eq i32 %call494, 0, !dbg !3663
  br i1 %tobool495.not, label %if.then496, label %if.else502, !dbg !3664

if.then496:                                       ; preds = %if.else493
  %i_cqm_preset497 = getelementptr inbounds i8, ptr %p, i64 144, !dbg !3665
  store i32 2, ptr %i_cqm_preset497, align 8, !dbg !3667
  %cqm_4pc498 = getelementptr inbounds i8, ptr %p, i64 208, !dbg !3668
  %call500 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_4pc498, i32 noundef 16), !dbg !3669
  %98 = load i32, ptr %b_error, align 4, !dbg !3670
  %or501 = or i32 %98, %call500, !dbg !3670
  store i32 %or501, ptr %b_error, align 4, !dbg !3670, !DIAssignID !3671
    #dbg_assign(i32 %or501, !2698, !DIExpression(), !3671, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3672

if.else502:                                       ; preds = %if.else493
  %call503 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.71) #23, !dbg !3673
  %tobool504.not = icmp eq i32 %call503, 0, !dbg !3673
  br i1 %tobool504.not, label %if.then505, label %if.else511, !dbg !3674

if.then505:                                       ; preds = %if.else502
  %i_cqm_preset506 = getelementptr inbounds i8, ptr %p, i64 144, !dbg !3675
  store i32 2, ptr %i_cqm_preset506, align 8, !dbg !3677
  %cqm_8iy507 = getelementptr inbounds i8, ptr %p, i64 224, !dbg !3678
  %call509 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_8iy507, i32 noundef 64), !dbg !3679
  %99 = load i32, ptr %b_error, align 4, !dbg !3680
  %or510 = or i32 %99, %call509, !dbg !3680
  store i32 %or510, ptr %b_error, align 4, !dbg !3680, !DIAssignID !3681
    #dbg_assign(i32 %or510, !2698, !DIExpression(), !3681, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3682

if.else511:                                       ; preds = %if.else502
  %call512 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.72) #23, !dbg !3683
  %tobool513.not = icmp eq i32 %call512, 0, !dbg !3683
  br i1 %tobool513.not, label %if.then514, label %if.else520, !dbg !3684

if.then514:                                       ; preds = %if.else511
  %i_cqm_preset515 = getelementptr inbounds i8, ptr %p, i64 144, !dbg !3685
  store i32 2, ptr %i_cqm_preset515, align 8, !dbg !3687
  %cqm_8py516 = getelementptr inbounds i8, ptr %p, i64 288, !dbg !3688
  %call518 = tail call fastcc i32 @parse_cqm(ptr noundef %value.addr.2, ptr noundef nonnull %cqm_8py516, i32 noundef 64), !dbg !3689
  %100 = load i32, ptr %b_error, align 4, !dbg !3690
  %or519 = or i32 %100, %call518, !dbg !3690
  store i32 %or519, ptr %b_error, align 4, !dbg !3690, !DIAssignID !3691
    #dbg_assign(i32 %or519, !2698, !DIExpression(), !3691, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3692

if.else520:                                       ; preds = %if.else511
  %call521 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.73) #23, !dbg !3693
  %tobool522.not = icmp eq i32 %call521, 0, !dbg !3693
  br i1 %tobool522.not, label %if.then523, label %if.else525, !dbg !3694

if.then523:                                       ; preds = %if.else520
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2837, ptr %end.i1755, !DIExpression(), !3695)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3695)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3695)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1755) #25, !dbg !3697
  %call.i1756 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1755, i32 noundef 0) #25, !dbg !3698
    #dbg_value(i64 %call.i1756, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3695)
  %101 = load ptr, ptr %end.i1755, align 8, !dbg !3699
  %cmp.i1757 = icmp eq ptr %101, %value.addr.2, !dbg !3700
  br i1 %cmp.i1757, label %if.then.i1760, label %lor.lhs.false.i1758, !dbg !3701

lor.lhs.false.i1758:                              ; preds = %if.then523
  %102 = load i8, ptr %101, align 1, !dbg !3702
  %cmp3.not.i1759 = icmp eq i8 %102, 0, !dbg !3703
  br i1 %cmp3.not.i1759, label %x264_atoi.exit1762, label %if.then.i1760, !dbg !3704

if.then.i1760:                                    ; preds = %lor.lhs.false.i1758, %if.then523
  store i32 1, ptr %b_error, align 4, !dbg !3705, !DIAssignID !3706
    #dbg_assign(i32 1, !2698, !DIExpression(), !3706, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1762, !dbg !3707

x264_atoi.exit1762:                               ; preds = %lor.lhs.false.i1758, %if.then.i1760
  %conv.i1761 = trunc i64 %call.i1756 to i32, !dbg !3698
    #dbg_value(i32 %conv.i1761, !2911, !DIExpression(), !3695)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1755) #25, !dbg !3708
  %i_log_level = getelementptr inbounds i8, ptr %p, i64 368, !dbg !3709
  store i32 %conv.i1761, ptr %i_log_level, align 8, !dbg !3710
  br label %if.end1116, !dbg !3711

if.else525:                                       ; preds = %if.else520
  %call526 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.74) #23, !dbg !3712
  %tobool527.not = icmp eq i32 %call526, 0, !dbg !3712
  br i1 %tobool527.not, label %if.then528, label %if.else530, !dbg !3713

if.then528:                                       ; preds = %if.else525
  %call529 = tail call ptr @spec_strdup(ptr noundef %value.addr.2), !dbg !3714
  %psz_dump_yuv = getelementptr inbounds i8, ptr %p, i64 376, !dbg !3715
  store ptr %call529, ptr %psz_dump_yuv, align 8, !dbg !3716
  br label %if.end1116, !dbg !3717

if.else530:                                       ; preds = %if.else525
  %call531 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.75) #23, !dbg !3718
  %tobool532.not = icmp eq i32 %call531, 0, !dbg !3718
  br i1 %tobool532.not, label %if.then536, label %lor.lhs.false533, !dbg !3718

lor.lhs.false533:                                 ; preds = %if.else530
  %call534 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.76) #23, !dbg !3718
  %tobool535.not = icmp eq i32 %call534, 0, !dbg !3718
  br i1 %tobool535.not, label %if.then536, label %if.else584, !dbg !3719

if.then536:                                       ; preds = %lor.lhs.false533, %if.else530
  %inter = getelementptr inbounds i8, ptr %p, i64 388, !dbg !3720
  store i32 0, ptr %inter, align 4, !dbg !3722
  %call543 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.78) #23, !dbg !3723
  %tobool544.not = icmp ne ptr %call543, null, !dbg !3723
  %spec.store.select1594 = sext i1 %tobool544.not to i32, !dbg !3725
  store i32 %spec.store.select1594, ptr %inter, align 4, !dbg !3726
  %call549 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.79) #23, !dbg !3727
  %tobool550.not = icmp eq ptr %call549, null, !dbg !3727
  br i1 %tobool550.not, label %if.end555, label %if.then551, !dbg !3729

if.then551:                                       ; preds = %if.then536
  %or554 = select i1 %tobool544.not, i32 -1, i32 1, !dbg !3730
  store i32 %or554, ptr %inter, align 4, !dbg !3730
  br label %if.end555, !dbg !3731

if.end555:                                        ; preds = %if.then551, %if.then536
  %103 = phi i32 [ %or554, %if.then551 ], [ %spec.store.select1594, %if.then536 ]
  %call556 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.80) #23, !dbg !3732
  %tobool557.not = icmp eq ptr %call556, null, !dbg !3732
  br i1 %tobool557.not, label %if.end562, label %if.then558, !dbg !3734

if.then558:                                       ; preds = %if.end555
  %or561 = or i32 %103, 2, !dbg !3735
  store i32 %or561, ptr %inter, align 4, !dbg !3735
  br label %if.end562, !dbg !3736

if.end562:                                        ; preds = %if.then558, %if.end555
  %104 = phi i32 [ %or561, %if.then558 ], [ %103, %if.end555 ]
  %call563 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.81) #23, !dbg !3737
  %tobool564.not = icmp eq ptr %call563, null, !dbg !3737
  br i1 %tobool564.not, label %if.end569, label %if.then565, !dbg !3739

if.then565:                                       ; preds = %if.end562
  %or568 = or i32 %104, 16, !dbg !3740
  store i32 %or568, ptr %inter, align 4, !dbg !3740
  br label %if.end569, !dbg !3741

if.end569:                                        ; preds = %if.then565, %if.end562
  %105 = phi i32 [ %or568, %if.then565 ], [ %104, %if.end562 ]
  %call570 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.82) #23, !dbg !3742
  %tobool571.not = icmp eq ptr %call570, null, !dbg !3742
  br i1 %tobool571.not, label %if.end576, label %if.then572, !dbg !3744

if.then572:                                       ; preds = %if.end569
  %or575 = or i32 %105, 32, !dbg !3745
  store i32 %or575, ptr %inter, align 4, !dbg !3745
  br label %if.end576, !dbg !3746

if.end576:                                        ; preds = %if.then572, %if.end569
  %106 = phi i32 [ %or575, %if.then572 ], [ %105, %if.end569 ]
  %call577 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %value.addr.2, ptr noundef nonnull dereferenceable(1) @.str.83) #23, !dbg !3747
  %tobool578.not = icmp eq ptr %call577, null, !dbg !3747
  br i1 %tobool578.not, label %if.end1116, label %if.then579, !dbg !3749

if.then579:                                       ; preds = %if.end576
  %or582 = or i32 %106, 256, !dbg !3750
  store i32 %or582, ptr %inter, align 4, !dbg !3750
  br label %if.end1116, !dbg !3751

if.else584:                                       ; preds = %lor.lhs.false533
  %call585 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.84) #23, !dbg !3752
  %tobool586.not = icmp eq i32 %call585, 0, !dbg !3752
  br i1 %tobool586.not, label %if.then587, label %if.else590, !dbg !3753

if.then587:                                       ; preds = %if.else584
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call588 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3754
  %b_transform_8x8 = getelementptr inbounds i8, ptr %p, i64 392, !dbg !3755
  store i32 %call588, ptr %b_transform_8x8, align 8, !dbg !3756
  br label %if.end1116, !dbg !3757

if.else590:                                       ; preds = %if.else584
  %call591 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.85) #23, !dbg !3758
  %tobool592.not = icmp eq i32 %call591, 0, !dbg !3758
  br i1 %tobool592.not, label %if.then596, label %lor.lhs.false593, !dbg !3758

lor.lhs.false593:                                 ; preds = %if.else590
  %call594 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.86) #23, !dbg !3758
  %tobool595.not = icmp eq i32 %call594, 0, !dbg !3758
  br i1 %tobool595.not, label %if.then596, label %if.else599, !dbg !3759

if.then596:                                       ; preds = %lor.lhs.false593, %if.else590
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call597 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3760
  %b_weighted_bipred = getelementptr inbounds i8, ptr %p, i64 400, !dbg !3761
  store i32 %call597, ptr %b_weighted_bipred, align 8, !dbg !3762
  br label %if.end1116, !dbg !3763

if.else599:                                       ; preds = %lor.lhs.false593
  %call600 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.87) #23, !dbg !3764
  %tobool601.not = icmp eq i32 %call600, 0, !dbg !3764
  br i1 %tobool601.not, label %if.then602, label %if.else605, !dbg !3765

if.then602:                                       ; preds = %if.else599
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2836, ptr %end.i1763, !DIExpression(), !3766)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3766)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3766)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1763) #25, !dbg !3768
  %call.i1764 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1763, i32 noundef 0) #25, !dbg !3769
    #dbg_value(i64 %call.i1764, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3766)
  %107 = load ptr, ptr %end.i1763, align 8, !dbg !3770
  %cmp.i1765 = icmp eq ptr %107, %value.addr.2, !dbg !3771
  br i1 %cmp.i1765, label %if.then.i1768, label %lor.lhs.false.i1766, !dbg !3772

lor.lhs.false.i1766:                              ; preds = %if.then602
  %108 = load i8, ptr %107, align 1, !dbg !3773
  %cmp3.not.i1767 = icmp eq i8 %108, 0, !dbg !3774
  br i1 %cmp3.not.i1767, label %x264_atoi.exit1770, label %if.then.i1768, !dbg !3775

if.then.i1768:                                    ; preds = %lor.lhs.false.i1766, %if.then602
  store i32 1, ptr %b_error, align 4, !dbg !3776, !DIAssignID !3777
    #dbg_assign(i32 1, !2698, !DIExpression(), !3777, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1770, !dbg !3778

x264_atoi.exit1770:                               ; preds = %lor.lhs.false.i1766, %if.then.i1768
  %conv.i1769 = trunc i64 %call.i1764 to i32, !dbg !3769
    #dbg_value(i32 %conv.i1769, !2911, !DIExpression(), !3766)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1763) #25, !dbg !3779
  %i_weighted_pred = getelementptr inbounds i8, ptr %p, i64 396, !dbg !3780
  store i32 %conv.i1769, ptr %i_weighted_pred, align 4, !dbg !3781
  br label %if.end1116, !dbg !3782

if.else605:                                       ; preds = %if.else599
  %call606 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.88) #23, !dbg !3783
  %tobool607.not = icmp eq i32 %call606, 0, !dbg !3783
  br i1 %tobool607.not, label %if.then611, label %lor.lhs.false608, !dbg !3783

lor.lhs.false608:                                 ; preds = %if.else605
  %call609 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.89) #23, !dbg !3783
  %tobool610.not = icmp eq i32 %call609, 0, !dbg !3783
  br i1 %tobool610.not, label %if.then611, label %if.else615, !dbg !3784

if.then611:                                       ; preds = %lor.lhs.false608, %if.else605
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %p, i64 404, !dbg !3785
  %call613 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_direct_pred_names, ptr noundef nonnull %i_direct_mv_pred), !dbg !3786
  %109 = load i32, ptr %b_error, align 4, !dbg !3787
  %or614 = or i32 %109, %call613, !dbg !3787
  store i32 %or614, ptr %b_error, align 4, !dbg !3787, !DIAssignID !3788
    #dbg_assign(i32 %or614, !2698, !DIExpression(), !3788, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3789

if.else615:                                       ; preds = %lor.lhs.false608
  %call616 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(17) @.str.90) #23, !dbg !3790
  %tobool617.not = icmp eq i32 %call616, 0, !dbg !3790
  br i1 %tobool617.not, label %if.then618, label %sub_02010, !dbg !3791

if.then618:                                       ; preds = %if.else615
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2835, ptr %end.i1771, !DIExpression(), !3792)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3792)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3792)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1771) #25, !dbg !3794
  %call.i1772 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1771, i32 noundef 0) #25, !dbg !3795
    #dbg_value(i64 %call.i1772, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3792)
  %110 = load ptr, ptr %end.i1771, align 8, !dbg !3796
  %cmp.i1773 = icmp eq ptr %110, %value.addr.2, !dbg !3797
  br i1 %cmp.i1773, label %if.then.i1776, label %lor.lhs.false.i1774, !dbg !3798

lor.lhs.false.i1774:                              ; preds = %if.then618
  %111 = load i8, ptr %110, align 1, !dbg !3799
  %cmp3.not.i1775 = icmp eq i8 %111, 0, !dbg !3800
  br i1 %cmp3.not.i1775, label %x264_atoi.exit1778, label %if.then.i1776, !dbg !3801

if.then.i1776:                                    ; preds = %lor.lhs.false.i1774, %if.then618
  store i32 1, ptr %b_error, align 4, !dbg !3802, !DIAssignID !3803
    #dbg_assign(i32 1, !2698, !DIExpression(), !3803, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1778, !dbg !3804

x264_atoi.exit1778:                               ; preds = %lor.lhs.false.i1774, %if.then.i1776
  %conv.i1777 = trunc i64 %call.i1772 to i32, !dbg !3795
    #dbg_value(i32 %conv.i1777, !2911, !DIExpression(), !3792)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1771) #25, !dbg !3805
  %i_chroma_qp_offset = getelementptr inbounds i8, ptr %p, i64 408, !dbg !3806
  store i32 %conv.i1777, ptr %i_chroma_qp_offset, align 8, !dbg !3807
  br label %if.end1116, !dbg !3808

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
  %tobool623.not = icmp eq i32 %120, 0, !dbg !3809
  br i1 %tobool623.not, label %if.then624, label %if.else628, !dbg !3810

if.then624:                                       ; preds = %if.else621.tail
  %i_me_method = getelementptr inbounds i8, ptr %p, i64 412, !dbg !3811
  %call626 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_motion_est_names, ptr noundef nonnull %i_me_method), !dbg !3812
  %121 = load i32, ptr %b_error, align 4, !dbg !3813
  %or627 = or i32 %121, %call626, !dbg !3813
  store i32 %or627, ptr %b_error, align 4, !dbg !3813, !DIAssignID !3814
    #dbg_assign(i32 %or627, !2698, !DIExpression(), !3814, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !3815

if.else628:                                       ; preds = %if.else621.tail
  %call629 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.92) #23, !dbg !3816
  %tobool630.not = icmp eq i32 %call629, 0, !dbg !3816
  br i1 %tobool630.not, label %if.then634, label %lor.lhs.false631, !dbg !3816

lor.lhs.false631:                                 ; preds = %if.else628
  %call632 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.93) #23, !dbg !3816
  %tobool633.not = icmp eq i32 %call632, 0, !dbg !3816
  br i1 %tobool633.not, label %if.then634, label %if.else637, !dbg !3817

if.then634:                                       ; preds = %lor.lhs.false631, %if.else628
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2834, ptr %end.i1779, !DIExpression(), !3818)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3818)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3818)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1779) #25, !dbg !3820
  %call.i1780 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1779, i32 noundef 0) #25, !dbg !3821
    #dbg_value(i64 %call.i1780, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3818)
  %122 = load ptr, ptr %end.i1779, align 8, !dbg !3822
  %cmp.i1781 = icmp eq ptr %122, %value.addr.2, !dbg !3823
  br i1 %cmp.i1781, label %if.then.i1784, label %lor.lhs.false.i1782, !dbg !3824

lor.lhs.false.i1782:                              ; preds = %if.then634
  %123 = load i8, ptr %122, align 1, !dbg !3825
  %cmp3.not.i1783 = icmp eq i8 %123, 0, !dbg !3826
  br i1 %cmp3.not.i1783, label %x264_atoi.exit1786, label %if.then.i1784, !dbg !3827

if.then.i1784:                                    ; preds = %lor.lhs.false.i1782, %if.then634
  store i32 1, ptr %b_error, align 4, !dbg !3828, !DIAssignID !3829
    #dbg_assign(i32 1, !2698, !DIExpression(), !3829, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1786, !dbg !3830

x264_atoi.exit1786:                               ; preds = %lor.lhs.false.i1782, %if.then.i1784
  %conv.i1785 = trunc i64 %call.i1780 to i32, !dbg !3821
    #dbg_value(i32 %conv.i1785, !2911, !DIExpression(), !3818)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1779) #25, !dbg !3831
  %i_me_range = getelementptr inbounds i8, ptr %p, i64 416, !dbg !3832
  store i32 %conv.i1785, ptr %i_me_range, align 8, !dbg !3833
  br label %if.end1116, !dbg !3834

if.else637:                                       ; preds = %lor.lhs.false631
  %call638 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.94) #23, !dbg !3835
  %tobool639.not = icmp eq i32 %call638, 0, !dbg !3835
  br i1 %tobool639.not, label %if.then643, label %lor.lhs.false640, !dbg !3835

lor.lhs.false640:                                 ; preds = %if.else637
  %call641 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.95) #23, !dbg !3835
  %tobool642.not = icmp eq i32 %call641, 0, !dbg !3835
  br i1 %tobool642.not, label %if.then643, label %if.else646, !dbg !3836

if.then643:                                       ; preds = %lor.lhs.false640, %if.else637
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2833, ptr %end.i1787, !DIExpression(), !3837)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3837)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3837)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1787) #25, !dbg !3839
  %call.i1788 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1787, i32 noundef 0) #25, !dbg !3840
    #dbg_value(i64 %call.i1788, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3837)
  %124 = load ptr, ptr %end.i1787, align 8, !dbg !3841
  %cmp.i1789 = icmp eq ptr %124, %value.addr.2, !dbg !3842
  br i1 %cmp.i1789, label %if.then.i1792, label %lor.lhs.false.i1790, !dbg !3843

lor.lhs.false.i1790:                              ; preds = %if.then643
  %125 = load i8, ptr %124, align 1, !dbg !3844
  %cmp3.not.i1791 = icmp eq i8 %125, 0, !dbg !3845
  br i1 %cmp3.not.i1791, label %x264_atoi.exit1794, label %if.then.i1792, !dbg !3846

if.then.i1792:                                    ; preds = %lor.lhs.false.i1790, %if.then643
  store i32 1, ptr %b_error, align 4, !dbg !3847, !DIAssignID !3848
    #dbg_assign(i32 1, !2698, !DIExpression(), !3848, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1794, !dbg !3849

x264_atoi.exit1794:                               ; preds = %lor.lhs.false.i1790, %if.then.i1792
  %conv.i1793 = trunc i64 %call.i1788 to i32, !dbg !3840
    #dbg_value(i32 %conv.i1793, !2911, !DIExpression(), !3837)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1787) #25, !dbg !3850
  %i_mv_range = getelementptr inbounds i8, ptr %p, i64 420, !dbg !3851
  store i32 %conv.i1793, ptr %i_mv_range, align 4, !dbg !3852
  br label %if.end1116, !dbg !3853

if.else646:                                       ; preds = %lor.lhs.false640
  %call647 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.96) #23, !dbg !3854
  %tobool648.not = icmp eq i32 %call647, 0, !dbg !3854
  br i1 %tobool648.not, label %if.then652, label %lor.lhs.false649, !dbg !3854

lor.lhs.false649:                                 ; preds = %if.else646
  %call650 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(16) @.str.97) #23, !dbg !3854
  %tobool651.not = icmp eq i32 %call650, 0, !dbg !3854
  br i1 %tobool651.not, label %if.then652, label %if.else655, !dbg !3855

if.then652:                                       ; preds = %lor.lhs.false649, %if.else646
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2832, ptr %end.i1795, !DIExpression(), !3856)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3856)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3856)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1795) #25, !dbg !3858
  %call.i1796 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1795, i32 noundef 0) #25, !dbg !3859
    #dbg_value(i64 %call.i1796, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3856)
  %126 = load ptr, ptr %end.i1795, align 8, !dbg !3860
  %cmp.i1797 = icmp eq ptr %126, %value.addr.2, !dbg !3861
  br i1 %cmp.i1797, label %if.then.i1800, label %lor.lhs.false.i1798, !dbg !3862

lor.lhs.false.i1798:                              ; preds = %if.then652
  %127 = load i8, ptr %126, align 1, !dbg !3863
  %cmp3.not.i1799 = icmp eq i8 %127, 0, !dbg !3864
  br i1 %cmp3.not.i1799, label %x264_atoi.exit1802, label %if.then.i1800, !dbg !3865

if.then.i1800:                                    ; preds = %lor.lhs.false.i1798, %if.then652
  store i32 1, ptr %b_error, align 4, !dbg !3866, !DIAssignID !3867
    #dbg_assign(i32 1, !2698, !DIExpression(), !3867, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1802, !dbg !3868

x264_atoi.exit1802:                               ; preds = %lor.lhs.false.i1798, %if.then.i1800
  %conv.i1801 = trunc i64 %call.i1796 to i32, !dbg !3859
    #dbg_value(i32 %conv.i1801, !2911, !DIExpression(), !3856)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1795) #25, !dbg !3869
  %i_mv_range_thread = getelementptr inbounds i8, ptr %p, i64 424, !dbg !3870
  store i32 %conv.i1801, ptr %i_mv_range_thread, align 8, !dbg !3871
  br label %if.end1116, !dbg !3872

if.else655:                                       ; preds = %lor.lhs.false649
  %call656 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.98) #23, !dbg !3873
  %tobool657.not = icmp eq i32 %call656, 0, !dbg !3873
  br i1 %tobool657.not, label %if.then661, label %lor.lhs.false658, !dbg !3873

lor.lhs.false658:                                 ; preds = %if.else655
  %call659 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(5) @.str.99) #23, !dbg !3873
  %tobool660.not = icmp eq i32 %call659, 0, !dbg !3873
  br i1 %tobool660.not, label %if.then661, label %if.else664, !dbg !3874

if.then661:                                       ; preds = %lor.lhs.false658, %if.else655
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2831, ptr %end.i1803, !DIExpression(), !3875)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3875)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3875)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1803) #25, !dbg !3877
  %call.i1804 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1803, i32 noundef 0) #25, !dbg !3878
    #dbg_value(i64 %call.i1804, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3875)
  %128 = load ptr, ptr %end.i1803, align 8, !dbg !3879
  %cmp.i1805 = icmp eq ptr %128, %value.addr.2, !dbg !3880
  br i1 %cmp.i1805, label %if.then.i1808, label %lor.lhs.false.i1806, !dbg !3881

lor.lhs.false.i1806:                              ; preds = %if.then661
  %129 = load i8, ptr %128, align 1, !dbg !3882
  %cmp3.not.i1807 = icmp eq i8 %129, 0, !dbg !3883
  br i1 %cmp3.not.i1807, label %x264_atoi.exit1810, label %if.then.i1808, !dbg !3884

if.then.i1808:                                    ; preds = %lor.lhs.false.i1806, %if.then661
  store i32 1, ptr %b_error, align 4, !dbg !3885, !DIAssignID !3886
    #dbg_assign(i32 1, !2698, !DIExpression(), !3886, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1810, !dbg !3887

x264_atoi.exit1810:                               ; preds = %lor.lhs.false.i1806, %if.then.i1808
  %conv.i1809 = trunc i64 %call.i1804 to i32, !dbg !3878
    #dbg_value(i32 %conv.i1809, !2911, !DIExpression(), !3875)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1803) #25, !dbg !3888
  %i_subpel_refine = getelementptr inbounds i8, ptr %p, i64 428, !dbg !3889
  store i32 %conv.i1809, ptr %i_subpel_refine, align 4, !dbg !3890
  br label %if.end1116, !dbg !3891

if.else664:                                       ; preds = %lor.lhs.false658
  %call665 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.100) #23, !dbg !3892
  %tobool666.not = icmp eq i32 %call665, 0, !dbg !3892
  br i1 %tobool666.not, label %if.then667, label %if.else705, !dbg !3893

if.then667:                                       ; preds = %if.else664
  %f_psy_rd = getelementptr inbounds i8, ptr %p, i64 456, !dbg !3894
  %f_psy_trellis = getelementptr inbounds i8, ptr %p, i64 460, !dbg !3897
  %call670 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.101, ptr noundef nonnull %f_psy_rd, ptr noundef nonnull %f_psy_trellis) #25, !dbg !3898
  %cmp671 = icmp eq i32 %call670, 2, !dbg !3899
  br i1 %cmp671, label %if.end1116, label %lor.lhs.false673, !dbg !3900

lor.lhs.false673:                                 ; preds = %if.then667
  %call678 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.102, ptr noundef nonnull %f_psy_rd, ptr noundef nonnull %f_psy_trellis) #25, !dbg !3901
  %cmp679 = icmp eq i32 %call678, 2, !dbg !3902
  br i1 %cmp679, label %if.end1116, label %lor.lhs.false681, !dbg !3903

lor.lhs.false681:                                 ; preds = %lor.lhs.false673
  %call686 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.103, ptr noundef nonnull %f_psy_rd, ptr noundef nonnull %f_psy_trellis) #25, !dbg !3904
  %cmp687 = icmp eq i32 %call686, 2, !dbg !3905
  br i1 %cmp687, label %if.end1116, label %if.else690, !dbg !3906

if.else690:                                       ; preds = %lor.lhs.false681
  %call693 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %value.addr.2, ptr noundef nonnull @.str.104, ptr noundef nonnull %f_psy_rd) #25, !dbg !3907
  %tobool694.not = icmp eq i32 %call693, 0, !dbg !3907
  br i1 %tobool694.not, label %if.else698, label %if.then695, !dbg !3909

if.then695:                                       ; preds = %if.else690
  store float 0.000000e+00, ptr %f_psy_trellis, align 4, !dbg !3910
  br label %if.end1116, !dbg !3912

if.else698:                                       ; preds = %if.else690
  store <2 x float> zeroinitializer, ptr %f_psy_rd, align 8, !dbg !3913
  br label %if.end1116

if.else705:                                       ; preds = %if.else664
  %call706 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.105) #23, !dbg !3915
  %tobool707.not = icmp eq i32 %call706, 0, !dbg !3915
  br i1 %tobool707.not, label %if.then708, label %if.else711, !dbg !3916

if.then708:                                       ; preds = %if.else705
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call709 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3917
  %b_psy = getelementptr inbounds i8, ptr %p, i64 464, !dbg !3918
  store i32 %call709, ptr %b_psy, align 8, !dbg !3919
  br label %if.end1116, !dbg !3920

if.else711:                                       ; preds = %if.else705
  %call712 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.106) #23, !dbg !3921
  %tobool713.not = icmp eq i32 %call712, 0, !dbg !3921
  br i1 %tobool713.not, label %if.then714, label %if.else717, !dbg !3922

if.then714:                                       ; preds = %if.else711
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call715 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3923
  %b_chroma_me = getelementptr inbounds i8, ptr %p, i64 432, !dbg !3924
  store i32 %call715, ptr %b_chroma_me, align 8, !dbg !3925
  br label %if.end1116, !dbg !3926

if.else717:                                       ; preds = %if.else711
  %call718 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.107) #23, !dbg !3927
  %tobool719.not = icmp eq i32 %call718, 0, !dbg !3927
  br i1 %tobool719.not, label %if.then720, label %if.else723, !dbg !3928

if.then720:                                       ; preds = %if.else717
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call721 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3929
  %b_mixed_references = getelementptr inbounds i8, ptr %p, i64 436, !dbg !3930
  store i32 %call721, ptr %b_mixed_references, align 4, !dbg !3931
  br label %if.end1116, !dbg !3932

if.else723:                                       ; preds = %if.else717
  %call724 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.108) #23, !dbg !3933
  %tobool725.not = icmp eq i32 %call724, 0, !dbg !3933
  br i1 %tobool725.not, label %if.then726, label %if.else729, !dbg !3934

if.then726:                                       ; preds = %if.else723
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2830, ptr %end.i1811, !DIExpression(), !3935)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3935)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3935)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1811) #25, !dbg !3937
  %call.i1812 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1811, i32 noundef 0) #25, !dbg !3938
    #dbg_value(i64 %call.i1812, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3935)
  %130 = load ptr, ptr %end.i1811, align 8, !dbg !3939
  %cmp.i1813 = icmp eq ptr %130, %value.addr.2, !dbg !3940
  br i1 %cmp.i1813, label %if.then.i1816, label %lor.lhs.false.i1814, !dbg !3941

lor.lhs.false.i1814:                              ; preds = %if.then726
  %131 = load i8, ptr %130, align 1, !dbg !3942
  %cmp3.not.i1815 = icmp eq i8 %131, 0, !dbg !3943
  br i1 %cmp3.not.i1815, label %x264_atoi.exit1818, label %if.then.i1816, !dbg !3944

if.then.i1816:                                    ; preds = %lor.lhs.false.i1814, %if.then726
  store i32 1, ptr %b_error, align 4, !dbg !3945, !DIAssignID !3946
    #dbg_assign(i32 1, !2698, !DIExpression(), !3946, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1818, !dbg !3947

x264_atoi.exit1818:                               ; preds = %lor.lhs.false.i1814, %if.then.i1816
  %conv.i1817 = trunc i64 %call.i1812 to i32, !dbg !3938
    #dbg_value(i32 %conv.i1817, !2911, !DIExpression(), !3935)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1811) #25, !dbg !3948
  %i_trellis = getelementptr inbounds i8, ptr %p, i64 440, !dbg !3949
  store i32 %conv.i1817, ptr %i_trellis, align 8, !dbg !3950
  br label %if.end1116, !dbg !3951

if.else729:                                       ; preds = %if.else723
  %call730 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.109) #23, !dbg !3952
  %tobool731.not = icmp eq i32 %call730, 0, !dbg !3952
  br i1 %tobool731.not, label %if.then732, label %if.else735, !dbg !3953

if.then732:                                       ; preds = %if.else729
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call733 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3954
  %b_fast_pskip = getelementptr inbounds i8, ptr %p, i64 444, !dbg !3955
  store i32 %call733, ptr %b_fast_pskip, align 4, !dbg !3956
  br label %if.end1116, !dbg !3957

if.else735:                                       ; preds = %if.else729
  %call736 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(13) @.str.110) #23, !dbg !3958
  %tobool737.not = icmp eq i32 %call736, 0, !dbg !3958
  br i1 %tobool737.not, label %if.then738, label %if.else741, !dbg !3959

if.then738:                                       ; preds = %if.else735
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call739 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !3960
  %b_dct_decimate = getelementptr inbounds i8, ptr %p, i64 448, !dbg !3961
  store i32 %call739, ptr %b_dct_decimate, align 8, !dbg !3962
  br label %if.end1116, !dbg !3963

if.else741:                                       ; preds = %if.else735
  %call742 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.111) #23, !dbg !3964
  %tobool743.not = icmp eq i32 %call742, 0, !dbg !3964
  br i1 %tobool743.not, label %if.then744, label %if.else748, !dbg !3965

if.then744:                                       ; preds = %if.else741
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2829, ptr %end.i1819, !DIExpression(), !3966)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3966)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3966)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1819) #25, !dbg !3968
  %call.i1820 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1819, i32 noundef 0) #25, !dbg !3969
    #dbg_value(i64 %call.i1820, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3966)
  %132 = load ptr, ptr %end.i1819, align 8, !dbg !3970
  %cmp.i1821 = icmp eq ptr %132, %value.addr.2, !dbg !3971
  br i1 %cmp.i1821, label %if.then.i1824, label %lor.lhs.false.i1822, !dbg !3972

lor.lhs.false.i1822:                              ; preds = %if.then744
  %133 = load i8, ptr %132, align 1, !dbg !3973
  %cmp3.not.i1823 = icmp eq i8 %133, 0, !dbg !3974
  br i1 %cmp3.not.i1823, label %x264_atoi.exit1826, label %if.then.i1824, !dbg !3975

if.then.i1824:                                    ; preds = %lor.lhs.false.i1822, %if.then744
  store i32 1, ptr %b_error, align 4, !dbg !3976, !DIAssignID !3977
    #dbg_assign(i32 1, !2698, !DIExpression(), !3977, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1826, !dbg !3978

x264_atoi.exit1826:                               ; preds = %lor.lhs.false.i1822, %if.then.i1824
  %conv.i1825 = trunc i64 %call.i1820 to i32, !dbg !3969
    #dbg_value(i32 %conv.i1825, !2911, !DIExpression(), !3966)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1819) #25, !dbg !3979
  %i_luma_deadzone = getelementptr inbounds i8, ptr %p, i64 468, !dbg !3980
  store i32 %conv.i1825, ptr %i_luma_deadzone, align 4, !dbg !3981
  br label %if.end1116, !dbg !3982

if.else748:                                       ; preds = %if.else741
  %call749 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.112) #23, !dbg !3983
  %tobool750.not = icmp eq i32 %call749, 0, !dbg !3983
  br i1 %tobool750.not, label %if.then751, label %sub_02014, !dbg !3984

if.then751:                                       ; preds = %if.else748
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2828, ptr %end.i1827, !DIExpression(), !3985)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !3985)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !3985)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1827) #25, !dbg !3987
  %call.i1828 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1827, i32 noundef 0) #25, !dbg !3988
    #dbg_value(i64 %call.i1828, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3985)
  %134 = load ptr, ptr %end.i1827, align 8, !dbg !3989
  %cmp.i1829 = icmp eq ptr %134, %value.addr.2, !dbg !3990
  br i1 %cmp.i1829, label %if.then.i1832, label %lor.lhs.false.i1830, !dbg !3991

lor.lhs.false.i1830:                              ; preds = %if.then751
  %135 = load i8, ptr %134, align 1, !dbg !3992
  %cmp3.not.i1831 = icmp eq i8 %135, 0, !dbg !3993
  br i1 %cmp3.not.i1831, label %x264_atoi.exit1834, label %if.then.i1832, !dbg !3994

if.then.i1832:                                    ; preds = %lor.lhs.false.i1830, %if.then751
  store i32 1, ptr %b_error, align 4, !dbg !3995, !DIAssignID !3996
    #dbg_assign(i32 1, !2698, !DIExpression(), !3996, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1834, !dbg !3997

x264_atoi.exit1834:                               ; preds = %lor.lhs.false.i1830, %if.then.i1832
  %conv.i1833 = trunc i64 %call.i1828 to i32, !dbg !3988
    #dbg_value(i32 %conv.i1833, !2911, !DIExpression(), !3985)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1827) #25, !dbg !3998
  %arrayidx755 = getelementptr inbounds i8, ptr %p, i64 472, !dbg !3999
  store i32 %conv.i1833, ptr %arrayidx755, align 4, !dbg !4000
  br label %if.end1116, !dbg !3999

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
  %tobool758.not = icmp eq i32 %143, 0, !dbg !4001
  br i1 %tobool758.not, label %if.then759, label %if.else762, !dbg !4002

if.then759:                                       ; preds = %if.else756.tail
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2827, ptr %end.i1835, !DIExpression(), !4003)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !4003)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !4003)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1835) #25, !dbg !4005
  %call.i1836 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1835, i32 noundef 0) #25, !dbg !4006
    #dbg_value(i64 %call.i1836, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4003)
  %144 = load ptr, ptr %end.i1835, align 8, !dbg !4007
  %cmp.i1837 = icmp eq ptr %144, %value.addr.2, !dbg !4008
  br i1 %cmp.i1837, label %if.then.i1840, label %lor.lhs.false.i1838, !dbg !4009

lor.lhs.false.i1838:                              ; preds = %if.then759
  %145 = load i8, ptr %144, align 1, !dbg !4010
  %cmp3.not.i1839 = icmp eq i8 %145, 0, !dbg !4011
  br i1 %cmp3.not.i1839, label %x264_atoi.exit1842, label %if.then.i1840, !dbg !4012

if.then.i1840:                                    ; preds = %lor.lhs.false.i1838, %if.then759
  store i32 1, ptr %b_error, align 4, !dbg !4013, !DIAssignID !4014
    #dbg_assign(i32 1, !2698, !DIExpression(), !4014, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1842, !dbg !4015

x264_atoi.exit1842:                               ; preds = %lor.lhs.false.i1838, %if.then.i1840
  %conv.i1841 = trunc i64 %call.i1836 to i32, !dbg !4006
    #dbg_value(i32 %conv.i1841, !2911, !DIExpression(), !4003)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1835) #25, !dbg !4016
  %i_noise_reduction = getelementptr inbounds i8, ptr %p, i64 452, !dbg !4017
  store i32 %conv.i1841, ptr %i_noise_reduction, align 4, !dbg !4018
  br label %if.end1116, !dbg !4019

if.else762:                                       ; preds = %if.else756.tail
  %call763 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.114) #23, !dbg !4020
  %tobool764.not = icmp eq i32 %call763, 0, !dbg !4020
  br i1 %tobool764.not, label %if.then765, label %sub_02018, !dbg !4021

if.then765:                                       ; preds = %if.else762
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2826, ptr %end.i1843, !DIExpression(), !4022)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !4022)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !4022)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1843) #25, !dbg !4025
  %call.i1844 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1843, i32 noundef 0) #25, !dbg !4026
    #dbg_value(i64 %call.i1844, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4022)
  %146 = load ptr, ptr %end.i1843, align 8, !dbg !4027
  %cmp.i1845 = icmp eq ptr %146, %value.addr.2, !dbg !4028
  br i1 %cmp.i1845, label %if.then.i1848, label %lor.lhs.false.i1846, !dbg !4029

lor.lhs.false.i1846:                              ; preds = %if.then765
  %147 = load i8, ptr %146, align 1, !dbg !4030
  %cmp3.not.i1847 = icmp eq i8 %147, 0, !dbg !4031
  br i1 %cmp3.not.i1847, label %x264_atoi.exit1850, label %if.then.i1848, !dbg !4032

if.then.i1848:                                    ; preds = %lor.lhs.false.i1846, %if.then765
  store i32 1, ptr %b_error, align 4, !dbg !4033, !DIAssignID !4034
    #dbg_assign(i32 1, !2698, !DIExpression(), !4034, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1850, !dbg !4035

x264_atoi.exit1850:                               ; preds = %lor.lhs.false.i1846, %if.then.i1848
  %conv.i1849 = trunc i64 %call.i1844 to i32, !dbg !4026
    #dbg_value(i32 %conv.i1849, !2911, !DIExpression(), !4022)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1843) #25, !dbg !4036
  %rc = getelementptr inbounds i8, ptr %p, i64 488, !dbg !4037
  %i_bitrate = getelementptr inbounds i8, ptr %p, i64 508, !dbg !4038
  store i32 %conv.i1849, ptr %i_bitrate, align 4, !dbg !4039
  store i32 2, ptr %rc, align 8, !dbg !4040
  br label %if.end1116, !dbg !4041

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
  %tobool770.not = icmp eq i32 %156, 0, !dbg !4042
  br i1 %tobool770.not, label %if.then774, label %lor.lhs.false771, !dbg !4042

lor.lhs.false771:                                 ; preds = %if.else768.tail
  %call772 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.116) #23, !dbg !4042
  %tobool773.not = icmp eq i32 %call772, 0, !dbg !4042
  br i1 %tobool773.not, label %if.then774, label %if.else779, !dbg !4043

if.then774:                                       ; preds = %lor.lhs.false771, %if.else768.tail
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2825, ptr %end.i1851, !DIExpression(), !4044)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !4044)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !4044)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1851) #25, !dbg !4047
  %call.i1852 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1851, i32 noundef 0) #25, !dbg !4048
    #dbg_value(i64 %call.i1852, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4044)
  %157 = load ptr, ptr %end.i1851, align 8, !dbg !4049
  %cmp.i1853 = icmp eq ptr %157, %value.addr.2, !dbg !4050
  br i1 %cmp.i1853, label %if.then.i1856, label %lor.lhs.false.i1854, !dbg !4051

lor.lhs.false.i1854:                              ; preds = %if.then774
  %158 = load i8, ptr %157, align 1, !dbg !4052
  %cmp3.not.i1855 = icmp eq i8 %158, 0, !dbg !4053
  br i1 %cmp3.not.i1855, label %x264_atoi.exit1858, label %if.then.i1856, !dbg !4054

if.then.i1856:                                    ; preds = %lor.lhs.false.i1854, %if.then774
  store i32 1, ptr %b_error, align 4, !dbg !4055, !DIAssignID !4056
    #dbg_assign(i32 1, !2698, !DIExpression(), !4056, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1858, !dbg !4057

x264_atoi.exit1858:                               ; preds = %lor.lhs.false.i1854, %if.then.i1856
  %conv.i1857 = trunc i64 %call.i1852 to i32, !dbg !4048
    #dbg_value(i32 %conv.i1857, !2911, !DIExpression(), !4044)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1851) #25, !dbg !4058
  %rc776 = getelementptr inbounds i8, ptr %p, i64 488, !dbg !4059
  %i_qp_constant = getelementptr inbounds i8, ptr %p, i64 492, !dbg !4060
  store i32 %conv.i1857, ptr %i_qp_constant, align 4, !dbg !4061
  store i32 0, ptr %rc776, align 8, !dbg !4062
  br label %if.end1116, !dbg !4063

if.else779:                                       ; preds = %lor.lhs.false771
  %call780 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.117) #23, !dbg !4064
  %tobool781.not = icmp eq i32 %call780, 0, !dbg !4064
  br i1 %tobool781.not, label %if.then782, label %if.else788, !dbg !4065

if.then782:                                       ; preds = %if.else779
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2824, ptr %end.i1859, !DIExpression(), !4066)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !4066)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !4066)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1859) #25, !dbg !4069
  %call.i1860 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1859) #25, !dbg !4070
    #dbg_value(double %call.i1860, !3046, !DIExpression(), !4066)
  %159 = load ptr, ptr %end.i1859, align 8, !dbg !4071
  %cmp.i1861 = icmp eq ptr %159, %value.addr.2, !dbg !4072
  br i1 %cmp.i1861, label %if.then.i1864, label %lor.lhs.false.i1862, !dbg !4073

lor.lhs.false.i1862:                              ; preds = %if.then782
  %160 = load i8, ptr %159, align 1, !dbg !4074
  %cmp1.not.i1863 = icmp eq i8 %160, 0, !dbg !4075
  br i1 %cmp1.not.i1863, label %x264_atof.exit1865, label %if.then.i1864, !dbg !4076

if.then.i1864:                                    ; preds = %lor.lhs.false.i1862, %if.then782
  store i32 1, ptr %b_error, align 4, !dbg !4077, !DIAssignID !4078
    #dbg_assign(i32 1, !2698, !DIExpression(), !4078, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit1865, !dbg !4079

x264_atof.exit1865:                               ; preds = %lor.lhs.false.i1862, %if.then.i1864
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1859) #25, !dbg !4080
  %conv784 = fptrunc double %call.i1860 to float, !dbg !4081
  %rc785 = getelementptr inbounds i8, ptr %p, i64 488, !dbg !4082
  %f_rf_constant = getelementptr inbounds i8, ptr %p, i64 512, !dbg !4083
  store float %conv784, ptr %f_rf_constant, align 8, !dbg !4084
  store i32 1, ptr %rc785, align 8, !dbg !4085
  br label %if.end1116, !dbg !4086

if.else788:                                       ; preds = %if.else779
  %call789 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.118) #23, !dbg !4087
  %tobool790.not = icmp eq i32 %call789, 0, !dbg !4087
  br i1 %tobool790.not, label %if.then791, label %if.else795, !dbg !4088

if.then791:                                       ; preds = %if.else788
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2823, ptr %end.i1866, !DIExpression(), !4089)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !4089)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !4089)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1866) #25, !dbg !4091
  %call.i1867 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1866) #25, !dbg !4092
    #dbg_value(double %call.i1867, !3046, !DIExpression(), !4089)
  %161 = load ptr, ptr %end.i1866, align 8, !dbg !4093
  %cmp.i1868 = icmp eq ptr %161, %value.addr.2, !dbg !4094
  br i1 %cmp.i1868, label %if.then.i1871, label %lor.lhs.false.i1869, !dbg !4095

lor.lhs.false.i1869:                              ; preds = %if.then791
  %162 = load i8, ptr %161, align 1, !dbg !4096
  %cmp1.not.i1870 = icmp eq i8 %162, 0, !dbg !4097
  br i1 %cmp1.not.i1870, label %x264_atof.exit1872, label %if.then.i1871, !dbg !4098

if.then.i1871:                                    ; preds = %lor.lhs.false.i1869, %if.then791
  store i32 1, ptr %b_error, align 4, !dbg !4099, !DIAssignID !4100
    #dbg_assign(i32 1, !2698, !DIExpression(), !4100, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit1872, !dbg !4101

x264_atof.exit1872:                               ; preds = %lor.lhs.false.i1869, %if.then.i1871
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1866) #25, !dbg !4102
  %conv793 = fptrunc double %call.i1867 to float, !dbg !4103
  %f_rf_constant_max = getelementptr inbounds i8, ptr %p, i64 516, !dbg !4104
  store float %conv793, ptr %f_rf_constant_max, align 4, !dbg !4105
  br label %if.end1116, !dbg !4106

if.else795:                                       ; preds = %if.else788
  %call796 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(13) @.str.119) #23, !dbg !4107
  %tobool797.not = icmp eq i32 %call796, 0, !dbg !4107
  br i1 %tobool797.not, label %if.then798, label %if.else801, !dbg !4108

if.then798:                                       ; preds = %if.else795
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2822, ptr %end.i1873, !DIExpression(), !4109)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !4109)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !4109)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1873) #25, !dbg !4111
  %call.i1874 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1873, i32 noundef 0) #25, !dbg !4112
    #dbg_value(i64 %call.i1874, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4109)
  %163 = load ptr, ptr %end.i1873, align 8, !dbg !4113
  %cmp.i1875 = icmp eq ptr %163, %value.addr.2, !dbg !4114
  br i1 %cmp.i1875, label %if.then.i1878, label %lor.lhs.false.i1876, !dbg !4115

lor.lhs.false.i1876:                              ; preds = %if.then798
  %164 = load i8, ptr %163, align 1, !dbg !4116
  %cmp3.not.i1877 = icmp eq i8 %164, 0, !dbg !4117
  br i1 %cmp3.not.i1877, label %x264_atoi.exit1880, label %if.then.i1878, !dbg !4118

if.then.i1878:                                    ; preds = %lor.lhs.false.i1876, %if.then798
  store i32 1, ptr %b_error, align 4, !dbg !4119, !DIAssignID !4120
    #dbg_assign(i32 1, !2698, !DIExpression(), !4120, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1880, !dbg !4121

x264_atoi.exit1880:                               ; preds = %lor.lhs.false.i1876, %if.then.i1878
  %conv.i1879 = trunc i64 %call.i1874 to i32, !dbg !4112
    #dbg_value(i32 %conv.i1879, !2911, !DIExpression(), !4109)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1873) #25, !dbg !4122
  %i_lookahead = getelementptr inbounds i8, ptr %p, i64 556, !dbg !4123
  store i32 %conv.i1879, ptr %i_lookahead, align 4, !dbg !4124
  br label %if.end1116, !dbg !4125

if.else801:                                       ; preds = %if.else795
  %call802 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.120) #23, !dbg !4126
  %tobool803.not = icmp eq i32 %call802, 0, !dbg !4126
  br i1 %tobool803.not, label %if.then807, label %lor.lhs.false804, !dbg !4126

lor.lhs.false804:                                 ; preds = %if.else801
  %call805 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.121) #23, !dbg !4126
  %tobool806.not = icmp eq i32 %call805, 0, !dbg !4126
  br i1 %tobool806.not, label %if.then807, label %if.else810, !dbg !4127

if.then807:                                       ; preds = %lor.lhs.false804, %if.else801
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2821, ptr %end.i1881, !DIExpression(), !4128)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !4128)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !4128)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1881) #25, !dbg !4130
  %call.i1882 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1881, i32 noundef 0) #25, !dbg !4131
    #dbg_value(i64 %call.i1882, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4128)
  %165 = load ptr, ptr %end.i1881, align 8, !dbg !4132
  %cmp.i1883 = icmp eq ptr %165, %value.addr.2, !dbg !4133
  br i1 %cmp.i1883, label %if.then.i1886, label %lor.lhs.false.i1884, !dbg !4134

lor.lhs.false.i1884:                              ; preds = %if.then807
  %166 = load i8, ptr %165, align 1, !dbg !4135
  %cmp3.not.i1885 = icmp eq i8 %166, 0, !dbg !4136
  br i1 %cmp3.not.i1885, label %x264_atoi.exit1888, label %if.then.i1886, !dbg !4137

if.then.i1886:                                    ; preds = %lor.lhs.false.i1884, %if.then807
  store i32 1, ptr %b_error, align 4, !dbg !4138, !DIAssignID !4139
    #dbg_assign(i32 1, !2698, !DIExpression(), !4139, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1888, !dbg !4140

x264_atoi.exit1888:                               ; preds = %lor.lhs.false.i1884, %if.then.i1886
  %conv.i1887 = trunc i64 %call.i1882 to i32, !dbg !4131
    #dbg_value(i32 %conv.i1887, !2911, !DIExpression(), !4128)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1881) #25, !dbg !4141
  %i_qp_min = getelementptr inbounds i8, ptr %p, i64 496, !dbg !4142
  store i32 %conv.i1887, ptr %i_qp_min, align 8, !dbg !4143
  br label %if.end1116, !dbg !4144

if.else810:                                       ; preds = %lor.lhs.false804
  %call811 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.122) #23, !dbg !4145
  %tobool812.not = icmp eq i32 %call811, 0, !dbg !4145
  br i1 %tobool812.not, label %if.then816, label %lor.lhs.false813, !dbg !4145

lor.lhs.false813:                                 ; preds = %if.else810
  %call814 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.123) #23, !dbg !4145
  %tobool815.not = icmp eq i32 %call814, 0, !dbg !4145
  br i1 %tobool815.not, label %if.then816, label %if.else819, !dbg !4146

if.then816:                                       ; preds = %lor.lhs.false813, %if.else810
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2820, ptr %end.i1889, !DIExpression(), !4147)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !4147)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !4147)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1889) #25, !dbg !4149
  %call.i1890 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1889, i32 noundef 0) #25, !dbg !4150
    #dbg_value(i64 %call.i1890, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4147)
  %167 = load ptr, ptr %end.i1889, align 8, !dbg !4151
  %cmp.i1891 = icmp eq ptr %167, %value.addr.2, !dbg !4152
  br i1 %cmp.i1891, label %if.then.i1894, label %lor.lhs.false.i1892, !dbg !4153

lor.lhs.false.i1892:                              ; preds = %if.then816
  %168 = load i8, ptr %167, align 1, !dbg !4154
  %cmp3.not.i1893 = icmp eq i8 %168, 0, !dbg !4155
  br i1 %cmp3.not.i1893, label %x264_atoi.exit1896, label %if.then.i1894, !dbg !4156

if.then.i1894:                                    ; preds = %lor.lhs.false.i1892, %if.then816
  store i32 1, ptr %b_error, align 4, !dbg !4157, !DIAssignID !4158
    #dbg_assign(i32 1, !2698, !DIExpression(), !4158, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1896, !dbg !4159

x264_atoi.exit1896:                               ; preds = %lor.lhs.false.i1892, %if.then.i1894
  %conv.i1895 = trunc i64 %call.i1890 to i32, !dbg !4150
    #dbg_value(i32 %conv.i1895, !2911, !DIExpression(), !4147)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1889) #25, !dbg !4160
  %i_qp_max = getelementptr inbounds i8, ptr %p, i64 500, !dbg !4161
  store i32 %conv.i1895, ptr %i_qp_max, align 4, !dbg !4162
  br label %if.end1116, !dbg !4163

if.else819:                                       ; preds = %lor.lhs.false813
  %call820 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.124) #23, !dbg !4164
  %tobool821.not = icmp eq i32 %call820, 0, !dbg !4164
  br i1 %tobool821.not, label %if.then825, label %lor.lhs.false822, !dbg !4164

lor.lhs.false822:                                 ; preds = %if.else819
  %call823 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.125) #23, !dbg !4164
  %tobool824.not = icmp eq i32 %call823, 0, !dbg !4164
  br i1 %tobool824.not, label %if.then825, label %if.else828, !dbg !4165

if.then825:                                       ; preds = %lor.lhs.false822, %if.else819
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2819, ptr %end.i1897, !DIExpression(), !4166)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !4166)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !4166)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1897) #25, !dbg !4168
  %call.i1898 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1897, i32 noundef 0) #25, !dbg !4169
    #dbg_value(i64 %call.i1898, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4166)
  %169 = load ptr, ptr %end.i1897, align 8, !dbg !4170
  %cmp.i1899 = icmp eq ptr %169, %value.addr.2, !dbg !4171
  br i1 %cmp.i1899, label %if.then.i1902, label %lor.lhs.false.i1900, !dbg !4172

lor.lhs.false.i1900:                              ; preds = %if.then825
  %170 = load i8, ptr %169, align 1, !dbg !4173
  %cmp3.not.i1901 = icmp eq i8 %170, 0, !dbg !4174
  br i1 %cmp3.not.i1901, label %x264_atoi.exit1904, label %if.then.i1902, !dbg !4175

if.then.i1902:                                    ; preds = %lor.lhs.false.i1900, %if.then825
  store i32 1, ptr %b_error, align 4, !dbg !4176, !DIAssignID !4177
    #dbg_assign(i32 1, !2698, !DIExpression(), !4177, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1904, !dbg !4178

x264_atoi.exit1904:                               ; preds = %lor.lhs.false.i1900, %if.then.i1902
  %conv.i1903 = trunc i64 %call.i1898 to i32, !dbg !4169
    #dbg_value(i32 %conv.i1903, !2911, !DIExpression(), !4166)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1897) #25, !dbg !4179
  %i_qp_step = getelementptr inbounds i8, ptr %p, i64 504, !dbg !4180
  store i32 %conv.i1903, ptr %i_qp_step, align 8, !dbg !4181
  br label %if.end1116, !dbg !4182

if.else828:                                       ; preds = %lor.lhs.false822
  %call829 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.126) #23, !dbg !4183
  %tobool830.not = icmp eq i32 %call829, 0, !dbg !4183
  br i1 %tobool830.not, label %sub_02022, label %if.else841, !dbg !4184

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
  %tobool833.not = icmp eq i32 %182, 0, !dbg !4185
  br i1 %tobool833.not, label %cond.end837, label %cond.false835, !dbg !4186

cond.false835:                                    ; preds = %if.then831.tail
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2818, ptr %end.i1905, !DIExpression(), !4187)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !4187)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !4187)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1905) #25, !dbg !4189
  %call.i1906 = call double @strtod(ptr noundef nonnull %value.addr.2, ptr noundef nonnull %end.i1905) #25, !dbg !4190
    #dbg_value(double %call.i1906, !3046, !DIExpression(), !4187)
  %183 = load ptr, ptr %end.i1905, align 8, !dbg !4191
  %cmp.i1907 = icmp eq ptr %183, %value.addr.2, !dbg !4192
  br i1 %cmp.i1907, label %if.then.i1910, label %lor.lhs.false.i1908, !dbg !4193

lor.lhs.false.i1908:                              ; preds = %cond.false835
  %184 = load i8, ptr %183, align 1, !dbg !4194
  %cmp1.not.i1909 = icmp eq i8 %184, 0, !dbg !4195
  br i1 %cmp1.not.i1909, label %x264_atof.exit1911, label %if.then.i1910, !dbg !4196

if.then.i1910:                                    ; preds = %lor.lhs.false.i1908, %cond.false835
  store i32 1, ptr %b_error, align 4, !dbg !4197, !DIAssignID !4198
    #dbg_assign(i32 1, !2698, !DIExpression(), !4198, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit1911, !dbg !4199

x264_atof.exit1911:                               ; preds = %lor.lhs.false.i1908, %if.then.i1910
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1905) #25, !dbg !4200
  %185 = fptrunc double %call.i1906 to float, !dbg !4186
  br label %cond.end837, !dbg !4186

cond.end837:                                      ; preds = %if.then831.tail, %x264_atof.exit1911
  %cond838 = phi float [ %185, %x264_atof.exit1911 ], [ 1.000000e+09, %if.then831.tail ], !dbg !4186
  %f_rate_tolerance = getelementptr inbounds i8, ptr %p, i64 520, !dbg !4201
  store float %cond838, ptr %f_rate_tolerance, align 8, !dbg !4202
  br label %if.end1116, !dbg !4203

if.else841:                                       ; preds = %if.else828
  %call842 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.128) #23, !dbg !4204
  %tobool843.not = icmp eq i32 %call842, 0, !dbg !4204
  br i1 %tobool843.not, label %if.then844, label %if.else847, !dbg !4205

if.then844:                                       ; preds = %if.else841
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2817, ptr %end.i1912, !DIExpression(), !4206)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !4206)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !4206)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1912) #25, !dbg !4208
  %call.i1913 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1912, i32 noundef 0) #25, !dbg !4209
    #dbg_value(i64 %call.i1913, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4206)
  %186 = load ptr, ptr %end.i1912, align 8, !dbg !4210
  %cmp.i1914 = icmp eq ptr %186, %value.addr.2, !dbg !4211
  br i1 %cmp.i1914, label %if.then.i1917, label %lor.lhs.false.i1915, !dbg !4212

lor.lhs.false.i1915:                              ; preds = %if.then844
  %187 = load i8, ptr %186, align 1, !dbg !4213
  %cmp3.not.i1916 = icmp eq i8 %187, 0, !dbg !4214
  br i1 %cmp3.not.i1916, label %x264_atoi.exit1919, label %if.then.i1917, !dbg !4215

if.then.i1917:                                    ; preds = %lor.lhs.false.i1915, %if.then844
  store i32 1, ptr %b_error, align 4, !dbg !4216, !DIAssignID !4217
    #dbg_assign(i32 1, !2698, !DIExpression(), !4217, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1919, !dbg !4218

x264_atoi.exit1919:                               ; preds = %lor.lhs.false.i1915, %if.then.i1917
  %conv.i1918 = trunc i64 %call.i1913 to i32, !dbg !4209
    #dbg_value(i32 %conv.i1918, !2911, !DIExpression(), !4206)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1912) #25, !dbg !4219
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %p, i64 524, !dbg !4220
  store i32 %conv.i1918, ptr %i_vbv_max_bitrate, align 4, !dbg !4221
  br label %if.end1116, !dbg !4222

if.else847:                                       ; preds = %if.else841
  %call848 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.129) #23, !dbg !4223
  %tobool849.not = icmp eq i32 %call848, 0, !dbg !4223
  br i1 %tobool849.not, label %if.then850, label %if.else853, !dbg !4224

if.then850:                                       ; preds = %if.else847
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2816, ptr %end.i1920, !DIExpression(), !4225)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !4225)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !4225)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1920) #25, !dbg !4227
  %call.i1921 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1920, i32 noundef 0) #25, !dbg !4228
    #dbg_value(i64 %call.i1921, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4225)
  %188 = load ptr, ptr %end.i1920, align 8, !dbg !4229
  %cmp.i1922 = icmp eq ptr %188, %value.addr.2, !dbg !4230
  br i1 %cmp.i1922, label %if.then.i1925, label %lor.lhs.false.i1923, !dbg !4231

lor.lhs.false.i1923:                              ; preds = %if.then850
  %189 = load i8, ptr %188, align 1, !dbg !4232
  %cmp3.not.i1924 = icmp eq i8 %189, 0, !dbg !4233
  br i1 %cmp3.not.i1924, label %x264_atoi.exit1927, label %if.then.i1925, !dbg !4234

if.then.i1925:                                    ; preds = %lor.lhs.false.i1923, %if.then850
  store i32 1, ptr %b_error, align 4, !dbg !4235, !DIAssignID !4236
    #dbg_assign(i32 1, !2698, !DIExpression(), !4236, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1927, !dbg !4237

x264_atoi.exit1927:                               ; preds = %lor.lhs.false.i1923, %if.then.i1925
  %conv.i1926 = trunc i64 %call.i1921 to i32, !dbg !4228
    #dbg_value(i32 %conv.i1926, !2911, !DIExpression(), !4225)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1920) #25, !dbg !4238
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %p, i64 528, !dbg !4239
  store i32 %conv.i1926, ptr %i_vbv_buffer_size, align 8, !dbg !4240
  br label %if.end1116, !dbg !4241

if.else853:                                       ; preds = %if.else847
  %call854 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.130) #23, !dbg !4242
  %tobool855.not = icmp eq i32 %call854, 0, !dbg !4242
  br i1 %tobool855.not, label %if.then856, label %if.else860, !dbg !4243

if.then856:                                       ; preds = %if.else853
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2815, ptr %end.i1928, !DIExpression(), !4244)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !4244)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !4244)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1928) #25, !dbg !4246
  %call.i1929 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1928) #25, !dbg !4247
    #dbg_value(double %call.i1929, !3046, !DIExpression(), !4244)
  %190 = load ptr, ptr %end.i1928, align 8, !dbg !4248
  %cmp.i1930 = icmp eq ptr %190, %value.addr.2, !dbg !4249
  br i1 %cmp.i1930, label %if.then.i1933, label %lor.lhs.false.i1931, !dbg !4250

lor.lhs.false.i1931:                              ; preds = %if.then856
  %191 = load i8, ptr %190, align 1, !dbg !4251
  %cmp1.not.i1932 = icmp eq i8 %191, 0, !dbg !4252
  br i1 %cmp1.not.i1932, label %x264_atof.exit1934, label %if.then.i1933, !dbg !4253

if.then.i1933:                                    ; preds = %lor.lhs.false.i1931, %if.then856
  store i32 1, ptr %b_error, align 4, !dbg !4254, !DIAssignID !4255
    #dbg_assign(i32 1, !2698, !DIExpression(), !4255, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit1934, !dbg !4256

x264_atof.exit1934:                               ; preds = %lor.lhs.false.i1931, %if.then.i1933
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1928) #25, !dbg !4257
  %conv858 = fptrunc double %call.i1929 to float, !dbg !4258
  %f_vbv_buffer_init = getelementptr inbounds i8, ptr %p, i64 532, !dbg !4259
  store float %conv858, ptr %f_vbv_buffer_init, align 4, !dbg !4260
  br label %if.end1116, !dbg !4261

if.else860:                                       ; preds = %if.else853
  %call861 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.131) #23, !dbg !4262
  %tobool862.not = icmp eq i32 %call861, 0, !dbg !4262
  br i1 %tobool862.not, label %if.then866, label %lor.lhs.false863, !dbg !4262

lor.lhs.false863:                                 ; preds = %if.else860
  %call864 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.132) #23, !dbg !4262
  %tobool865.not = icmp eq i32 %call864, 0, !dbg !4262
  br i1 %tobool865.not, label %if.then866, label %if.else870, !dbg !4263

if.then866:                                       ; preds = %lor.lhs.false863, %if.else860
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2814, ptr %end.i1935, !DIExpression(), !4264)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !4264)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !4264)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1935) #25, !dbg !4266
  %call.i1936 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1935) #25, !dbg !4267
    #dbg_value(double %call.i1936, !3046, !DIExpression(), !4264)
  %192 = load ptr, ptr %end.i1935, align 8, !dbg !4268
  %cmp.i1937 = icmp eq ptr %192, %value.addr.2, !dbg !4269
  br i1 %cmp.i1937, label %if.then.i1940, label %lor.lhs.false.i1938, !dbg !4270

lor.lhs.false.i1938:                              ; preds = %if.then866
  %193 = load i8, ptr %192, align 1, !dbg !4271
  %cmp1.not.i1939 = icmp eq i8 %193, 0, !dbg !4272
  br i1 %cmp1.not.i1939, label %x264_atof.exit1941, label %if.then.i1940, !dbg !4273

if.then.i1940:                                    ; preds = %lor.lhs.false.i1938, %if.then866
  store i32 1, ptr %b_error, align 4, !dbg !4274, !DIAssignID !4275
    #dbg_assign(i32 1, !2698, !DIExpression(), !4275, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit1941, !dbg !4276

x264_atof.exit1941:                               ; preds = %lor.lhs.false.i1938, %if.then.i1940
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1935) #25, !dbg !4277
  %conv868 = fptrunc double %call.i1936 to float, !dbg !4278
  %f_ip_factor = getelementptr inbounds i8, ptr %p, i64 536, !dbg !4279
  store float %conv868, ptr %f_ip_factor, align 8, !dbg !4280
  br label %if.end1116, !dbg !4281

if.else870:                                       ; preds = %lor.lhs.false863
  %call871 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.133) #23, !dbg !4282
  %tobool872.not = icmp eq i32 %call871, 0, !dbg !4282
  br i1 %tobool872.not, label %if.then876, label %lor.lhs.false873, !dbg !4282

lor.lhs.false873:                                 ; preds = %if.else870
  %call874 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.134) #23, !dbg !4282
  %tobool875.not = icmp eq i32 %call874, 0, !dbg !4282
  br i1 %tobool875.not, label %if.then876, label %if.else880, !dbg !4283

if.then876:                                       ; preds = %lor.lhs.false873, %if.else870
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2813, ptr %end.i1942, !DIExpression(), !4284)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !4284)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !4284)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1942) #25, !dbg !4286
  %call.i1943 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1942) #25, !dbg !4287
    #dbg_value(double %call.i1943, !3046, !DIExpression(), !4284)
  %194 = load ptr, ptr %end.i1942, align 8, !dbg !4288
  %cmp.i1944 = icmp eq ptr %194, %value.addr.2, !dbg !4289
  br i1 %cmp.i1944, label %if.then.i1947, label %lor.lhs.false.i1945, !dbg !4290

lor.lhs.false.i1945:                              ; preds = %if.then876
  %195 = load i8, ptr %194, align 1, !dbg !4291
  %cmp1.not.i1946 = icmp eq i8 %195, 0, !dbg !4292
  br i1 %cmp1.not.i1946, label %x264_atof.exit1948, label %if.then.i1947, !dbg !4293

if.then.i1947:                                    ; preds = %lor.lhs.false.i1945, %if.then876
  store i32 1, ptr %b_error, align 4, !dbg !4294, !DIAssignID !4295
    #dbg_assign(i32 1, !2698, !DIExpression(), !4295, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit1948, !dbg !4296

x264_atof.exit1948:                               ; preds = %lor.lhs.false.i1945, %if.then.i1947
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1942) #25, !dbg !4297
  %conv878 = fptrunc double %call.i1943 to float, !dbg !4298
  %f_pb_factor = getelementptr inbounds i8, ptr %p, i64 540, !dbg !4299
  store float %conv878, ptr %f_pb_factor, align 4, !dbg !4300
  br label %if.end1116, !dbg !4301

if.else880:                                       ; preds = %lor.lhs.false873
  %call881 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.135) #23, !dbg !4302
  %tobool882.not = icmp eq i32 %call881, 0, !dbg !4302
  br i1 %tobool882.not, label %if.then883, label %if.else886, !dbg !4303

if.then883:                                       ; preds = %if.else880
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2812, ptr %end.i1949, !DIExpression(), !4304)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !4304)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !4304)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1949) #25, !dbg !4306
  %call.i1950 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1949, i32 noundef 0) #25, !dbg !4307
    #dbg_value(i64 %call.i1950, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4304)
  %196 = load ptr, ptr %end.i1949, align 8, !dbg !4308
  %cmp.i1951 = icmp eq ptr %196, %value.addr.2, !dbg !4309
  br i1 %cmp.i1951, label %if.then.i1954, label %lor.lhs.false.i1952, !dbg !4310

lor.lhs.false.i1952:                              ; preds = %if.then883
  %197 = load i8, ptr %196, align 1, !dbg !4311
  %cmp3.not.i1953 = icmp eq i8 %197, 0, !dbg !4312
  br i1 %cmp3.not.i1953, label %x264_atoi.exit1956, label %if.then.i1954, !dbg !4313

if.then.i1954:                                    ; preds = %lor.lhs.false.i1952, %if.then883
  store i32 1, ptr %b_error, align 4, !dbg !4314, !DIAssignID !4315
    #dbg_assign(i32 1, !2698, !DIExpression(), !4315, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1956, !dbg !4316

x264_atoi.exit1956:                               ; preds = %lor.lhs.false.i1952, %if.then.i1954
  %conv.i1955 = trunc i64 %call.i1950 to i32, !dbg !4307
    #dbg_value(i32 %conv.i1955, !2911, !DIExpression(), !4304)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1949) #25, !dbg !4317
  %i_aq_mode = getelementptr inbounds i8, ptr %p, i64 544, !dbg !4318
  store i32 %conv.i1955, ptr %i_aq_mode, align 8, !dbg !4319
  br label %if.end1116, !dbg !4320

if.else886:                                       ; preds = %if.else880
  %call887 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(12) @.str.136) #23, !dbg !4321
  %tobool888.not = icmp eq i32 %call887, 0, !dbg !4321
  br i1 %tobool888.not, label %if.then889, label %if.else893, !dbg !4322

if.then889:                                       ; preds = %if.else886
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2811, ptr %end.i1957, !DIExpression(), !4323)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !4323)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !4323)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1957) #25, !dbg !4325
  %call.i1958 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1957) #25, !dbg !4326
    #dbg_value(double %call.i1958, !3046, !DIExpression(), !4323)
  %198 = load ptr, ptr %end.i1957, align 8, !dbg !4327
  %cmp.i1959 = icmp eq ptr %198, %value.addr.2, !dbg !4328
  br i1 %cmp.i1959, label %if.then.i1962, label %lor.lhs.false.i1960, !dbg !4329

lor.lhs.false.i1960:                              ; preds = %if.then889
  %199 = load i8, ptr %198, align 1, !dbg !4330
  %cmp1.not.i1961 = icmp eq i8 %199, 0, !dbg !4331
  br i1 %cmp1.not.i1961, label %x264_atof.exit1963, label %if.then.i1962, !dbg !4332

if.then.i1962:                                    ; preds = %lor.lhs.false.i1960, %if.then889
  store i32 1, ptr %b_error, align 4, !dbg !4333, !DIAssignID !4334
    #dbg_assign(i32 1, !2698, !DIExpression(), !4334, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit1963, !dbg !4335

x264_atof.exit1963:                               ; preds = %lor.lhs.false.i1960, %if.then.i1962
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1957) #25, !dbg !4336
  %conv891 = fptrunc double %call.i1958 to float, !dbg !4337
  %f_aq_strength = getelementptr inbounds i8, ptr %p, i64 548, !dbg !4338
  store float %conv891, ptr %f_aq_strength, align 4, !dbg !4339
  br label %if.end1116, !dbg !4340

if.else893:                                       ; preds = %if.else886
  %call894 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(5) @.str.137) #23, !dbg !4341
  %tobool895.not = icmp eq i32 %call894, 0, !dbg !4341
  br i1 %tobool895.not, label %if.then896, label %if.else903, !dbg !4342

if.then896:                                       ; preds = %if.else893
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2810, ptr %end.i1964, !DIExpression(), !4343)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !4343)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !4343)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1964) #25, !dbg !4345
  %call.i1965 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1964, i32 noundef 0) #25, !dbg !4346
    #dbg_value(i64 %call.i1965, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4343)
  %200 = load ptr, ptr %end.i1964, align 8, !dbg !4347
  %cmp.i1966 = icmp eq ptr %200, %value.addr.2, !dbg !4348
  br i1 %cmp.i1966, label %if.then.i1969, label %lor.lhs.false.i1967, !dbg !4349

lor.lhs.false.i1967:                              ; preds = %if.then896
  %201 = load i8, ptr %200, align 1, !dbg !4350
  %cmp3.not.i1968 = icmp eq i8 %201, 0, !dbg !4351
  br i1 %cmp3.not.i1968, label %x264_atoi.exit1971, label %if.then.i1969, !dbg !4352

if.then.i1969:                                    ; preds = %lor.lhs.false.i1967, %if.then896
  store i32 1, ptr %b_error, align 4, !dbg !4353, !DIAssignID !4354
    #dbg_assign(i32 1, !2698, !DIExpression(), !4354, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit1971, !dbg !4355

x264_atoi.exit1971:                               ; preds = %lor.lhs.false.i1967, %if.then.i1969
  %conv.i1970 = trunc i64 %call.i1965 to i32, !dbg !4346
    #dbg_value(i32 %conv.i1970, !2911, !DIExpression(), !4343)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1964) #25, !dbg !4356
    #dbg_value(i32 %conv.i1970, !4357, !DIExpression(), !4364)
    #dbg_value(i32 0, !4362, !DIExpression(), !4364)
    #dbg_value(i32 3, !4363, !DIExpression(), !4364)
  %cmp.i1972 = icmp slt i32 %conv.i1970, 0, !dbg !4366
  %202 = tail call i32 @llvm.umin.i32(i32 %conv.i1970, i32 3), !dbg !4367
  %cond5.i = select i1 %cmp.i1972, i32 0, i32 %202, !dbg !4367
    #dbg_value(i32 %cond5.i, !2732, !DIExpression(), !4368)
  %and899 = and i32 %cond5.i, 1, !dbg !4369
  %b_stat_write = getelementptr inbounds i8, ptr %p, i64 560, !dbg !4370
  store i32 %and899, ptr %b_stat_write, align 8, !dbg !4371
  %and901 = and i32 %cond5.i, 2, !dbg !4372
  %b_stat_read = getelementptr inbounds i8, ptr %p, i64 576, !dbg !4373
  store i32 %and901, ptr %b_stat_read, align 8, !dbg !4374
  br label %if.end1116, !dbg !4375

if.else903:                                       ; preds = %if.else893
  %call904 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.138) #23, !dbg !4376
  %tobool905.not = icmp eq i32 %call904, 0, !dbg !4376
  br i1 %tobool905.not, label %if.then906, label %if.else911, !dbg !4378

if.then906:                                       ; preds = %if.else903
  %call907 = tail call ptr @spec_strdup(ptr noundef %value.addr.2), !dbg !4379
  %psz_stat_in = getelementptr inbounds i8, ptr %p, i64 584, !dbg !4381
  store ptr %call907, ptr %psz_stat_in, align 8, !dbg !4382
  %call909 = tail call ptr @spec_strdup(ptr noundef %value.addr.2), !dbg !4383
  %psz_stat_out = getelementptr inbounds i8, ptr %p, i64 568, !dbg !4384
  store ptr %call909, ptr %psz_stat_out, align 8, !dbg !4385
  br label %if.end1116, !dbg !4386

if.else911:                                       ; preds = %if.else903
  %call912 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.139) #23, !dbg !4387
  %tobool913.not = icmp eq i32 %call912, 0, !dbg !4387
  br i1 %tobool913.not, label %if.then914, label %if.else918, !dbg !4389

if.then914:                                       ; preds = %if.else911
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2809, ptr %end.i1973, !DIExpression(), !4390)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !4390)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !4390)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1973) #25, !dbg !4392
  %call.i1974 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1973) #25, !dbg !4393
    #dbg_value(double %call.i1974, !3046, !DIExpression(), !4390)
  %203 = load ptr, ptr %end.i1973, align 8, !dbg !4394
  %cmp.i1975 = icmp eq ptr %203, %value.addr.2, !dbg !4395
  br i1 %cmp.i1975, label %if.then.i1978, label %lor.lhs.false.i1976, !dbg !4396

lor.lhs.false.i1976:                              ; preds = %if.then914
  %204 = load i8, ptr %203, align 1, !dbg !4397
  %cmp1.not.i1977 = icmp eq i8 %204, 0, !dbg !4398
  br i1 %cmp1.not.i1977, label %x264_atof.exit1979, label %if.then.i1978, !dbg !4399

if.then.i1978:                                    ; preds = %lor.lhs.false.i1976, %if.then914
  store i32 1, ptr %b_error, align 4, !dbg !4400, !DIAssignID !4401
    #dbg_assign(i32 1, !2698, !DIExpression(), !4401, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit1979, !dbg !4402

x264_atof.exit1979:                               ; preds = %lor.lhs.false.i1976, %if.then.i1978
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1973) #25, !dbg !4403
  %conv916 = fptrunc double %call.i1974 to float, !dbg !4404
  %f_qcompress = getelementptr inbounds i8, ptr %p, i64 592, !dbg !4405
  store float %conv916, ptr %f_qcompress, align 8, !dbg !4406
  br label %if.end1116, !dbg !4407

if.else918:                                       ; preds = %if.else911
  %call919 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.140) #23, !dbg !4408
  %tobool920.not = icmp eq i32 %call919, 0, !dbg !4408
  br i1 %tobool920.not, label %if.then921, label %if.else924, !dbg !4410

if.then921:                                       ; preds = %if.else918
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call922 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !4411
  %b_mb_tree = getelementptr inbounds i8, ptr %p, i64 552, !dbg !4412
  store i32 %call922, ptr %b_mb_tree, align 8, !dbg !4413
  br label %if.end1116, !dbg !4414

if.else924:                                       ; preds = %if.else918
  %call925 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.141) #23, !dbg !4415
  %tobool926.not = icmp eq i32 %call925, 0, !dbg !4415
  br i1 %tobool926.not, label %if.then927, label %if.else931, !dbg !4417

if.then927:                                       ; preds = %if.else924
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2808, ptr %end.i1980, !DIExpression(), !4418)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !4418)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !4418)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1980) #25, !dbg !4420
  %call.i1981 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1980) #25, !dbg !4421
    #dbg_value(double %call.i1981, !3046, !DIExpression(), !4418)
  %205 = load ptr, ptr %end.i1980, align 8, !dbg !4422
  %cmp.i1982 = icmp eq ptr %205, %value.addr.2, !dbg !4423
  br i1 %cmp.i1982, label %if.then.i1985, label %lor.lhs.false.i1983, !dbg !4424

lor.lhs.false.i1983:                              ; preds = %if.then927
  %206 = load i8, ptr %205, align 1, !dbg !4425
  %cmp1.not.i1984 = icmp eq i8 %206, 0, !dbg !4426
  br i1 %cmp1.not.i1984, label %x264_atof.exit1986, label %if.then.i1985, !dbg !4427

if.then.i1985:                                    ; preds = %lor.lhs.false.i1983, %if.then927
  store i32 1, ptr %b_error, align 4, !dbg !4428, !DIAssignID !4429
    #dbg_assign(i32 1, !2698, !DIExpression(), !4429, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit1986, !dbg !4430

x264_atof.exit1986:                               ; preds = %lor.lhs.false.i1983, %if.then.i1985
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1980) #25, !dbg !4431
  %conv929 = fptrunc double %call.i1981 to float, !dbg !4432
  %f_qblur = getelementptr inbounds i8, ptr %p, i64 596, !dbg !4433
  store float %conv929, ptr %f_qblur, align 4, !dbg !4434
  br label %if.end1116, !dbg !4435

if.else931:                                       ; preds = %if.else924
  %call932 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(9) @.str.142) #23, !dbg !4436
  %tobool933.not = icmp eq i32 %call932, 0, !dbg !4436
  br i1 %tobool933.not, label %if.then937, label %lor.lhs.false934, !dbg !4436

lor.lhs.false934:                                 ; preds = %if.else931
  %call935 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.143) #23, !dbg !4436
  %tobool936.not = icmp eq i32 %call935, 0, !dbg !4436
  br i1 %tobool936.not, label %if.then937, label %if.else941, !dbg !4438

if.then937:                                       ; preds = %lor.lhs.false934, %if.else931
    #dbg_assign(i1 undef, !3039, !DIExpression(), !2807, ptr %end.i1987, !DIExpression(), !4439)
    #dbg_value(ptr %value.addr.2, !3044, !DIExpression(), !4439)
    #dbg_value(ptr %b_error, !3045, !DIExpression(), !4439)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1987) #25, !dbg !4441
  %call.i1988 = call double @strtod(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1987) #25, !dbg !4442
    #dbg_value(double %call.i1988, !3046, !DIExpression(), !4439)
  %207 = load ptr, ptr %end.i1987, align 8, !dbg !4443
  %cmp.i1989 = icmp eq ptr %207, %value.addr.2, !dbg !4444
  br i1 %cmp.i1989, label %if.then.i1992, label %lor.lhs.false.i1990, !dbg !4445

lor.lhs.false.i1990:                              ; preds = %if.then937
  %208 = load i8, ptr %207, align 1, !dbg !4446
  %cmp1.not.i1991 = icmp eq i8 %208, 0, !dbg !4447
  br i1 %cmp1.not.i1991, label %x264_atof.exit1993, label %if.then.i1992, !dbg !4448

if.then.i1992:                                    ; preds = %lor.lhs.false.i1990, %if.then937
  store i32 1, ptr %b_error, align 4, !dbg !4449, !DIAssignID !4450
    #dbg_assign(i32 1, !2698, !DIExpression(), !4450, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atof.exit1993, !dbg !4451

x264_atof.exit1993:                               ; preds = %lor.lhs.false.i1990, %if.then.i1992
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1987) #25, !dbg !4452
  %conv939 = fptrunc double %call.i1988 to float, !dbg !4453
  %f_complexity_blur = getelementptr inbounds i8, ptr %p, i64 600, !dbg !4454
  store float %conv939, ptr %f_complexity_blur, align 8, !dbg !4455
  br label %if.end1116, !dbg !4456

if.else941:                                       ; preds = %lor.lhs.false934
  %call942 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(6) @.str.144) #23, !dbg !4457
  %tobool943.not = icmp eq i32 %call942, 0, !dbg !4457
  br i1 %tobool943.not, label %if.then944, label %if.else947, !dbg !4459

if.then944:                                       ; preds = %if.else941
  %call945 = tail call ptr @spec_strdup(ptr noundef %value.addr.2), !dbg !4460
  %psz_zones = getelementptr inbounds i8, ptr %p, i64 624, !dbg !4461
  store ptr %call945, ptr %psz_zones, align 8, !dbg !4462
  br label %if.end1116, !dbg !4463

if.else947:                                       ; preds = %if.else941
  %call948 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(5) @.str.145) #23, !dbg !4464
  %tobool949.not = icmp eq i32 %call948, 0, !dbg !4464
  br i1 %tobool949.not, label %if.then950, label %if.else953, !dbg !4466

if.then950:                                       ; preds = %if.else947
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call951 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !4467
  %b_psnr = getelementptr inbounds i8, ptr %p, i64 476, !dbg !4468
  store i32 %call951, ptr %b_psnr, align 4, !dbg !4469
  br label %if.end1116, !dbg !4470

if.else953:                                       ; preds = %if.else947
  %call954 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(5) @.str.146) #23, !dbg !4471
  %tobool955.not = icmp eq i32 %call954, 0, !dbg !4471
  br i1 %tobool955.not, label %if.then956, label %if.else959, !dbg !4473

if.then956:                                       ; preds = %if.else953
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call957 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !4474
  %b_ssim = getelementptr inbounds i8, ptr %p, i64 480, !dbg !4475
  store i32 %call957, ptr %b_ssim, align 8, !dbg !4476
  br label %if.end1116, !dbg !4477

if.else959:                                       ; preds = %if.else953
  %call960 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(4) @.str.147) #23, !dbg !4478
  %tobool961.not = icmp eq i32 %call960, 0, !dbg !4478
  br i1 %tobool961.not, label %if.then962, label %if.else964, !dbg !4480

if.then962:                                       ; preds = %if.else959
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call963 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !4481
  %b_aud = getelementptr inbounds i8, ptr %p, i64 632, !dbg !4482
  store i32 %call963, ptr %b_aud, align 8, !dbg !4483
  br label %if.end1116, !dbg !4484

if.else964:                                       ; preds = %if.else959
  %call965 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.148) #23, !dbg !4485
  %tobool966.not = icmp eq i32 %call965, 0, !dbg !4485
  br i1 %tobool966.not, label %if.then967, label %if.else969, !dbg !4487

if.then967:                                       ; preds = %if.else964
    #dbg_assign(i1 undef, !2904, !DIExpression(), !2806, ptr %end.i1994, !DIExpression(), !4488)
    #dbg_value(ptr %value.addr.2, !2909, !DIExpression(), !4488)
    #dbg_value(ptr %b_error, !2910, !DIExpression(), !4488)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i1994) #25, !dbg !4490
  %call.i1995 = call i64 @strtol(ptr noundef %value.addr.2, ptr noundef nonnull %end.i1994, i32 noundef 0) #25, !dbg !4491
    #dbg_value(i64 %call.i1995, !2911, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4488)
  %209 = load ptr, ptr %end.i1994, align 8, !dbg !4492
  %cmp.i1996 = icmp eq ptr %209, %value.addr.2, !dbg !4493
  br i1 %cmp.i1996, label %if.then.i1999, label %lor.lhs.false.i1997, !dbg !4494

lor.lhs.false.i1997:                              ; preds = %if.then967
  %210 = load i8, ptr %209, align 1, !dbg !4495
  %cmp3.not.i1998 = icmp eq i8 %210, 0, !dbg !4496
  br i1 %cmp3.not.i1998, label %x264_atoi.exit2001, label %if.then.i1999, !dbg !4497

if.then.i1999:                                    ; preds = %lor.lhs.false.i1997, %if.then967
  store i32 1, ptr %b_error, align 4, !dbg !4498, !DIAssignID !4499
    #dbg_assign(i32 1, !2698, !DIExpression(), !4499, ptr %b_error, !DIExpression(), !2859)
  br label %x264_atoi.exit2001, !dbg !4500

x264_atoi.exit2001:                               ; preds = %lor.lhs.false.i1997, %if.then.i1999
  %conv.i2000 = trunc i64 %call.i1995 to i32, !dbg !4491
    #dbg_value(i32 %conv.i2000, !2911, !DIExpression(), !4488)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i1994) #25, !dbg !4501
  %i_sps_id = getelementptr inbounds i8, ptr %p, i64 644, !dbg !4502
  store i32 %conv.i2000, ptr %i_sps_id, align 4, !dbg !4503
  br label %if.end1116, !dbg !4504

if.else969:                                       ; preds = %if.else964
  %call970 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(14) @.str.149) #23, !dbg !4505
  %tobool971.not = icmp eq i32 %call970, 0, !dbg !4505
  br i1 %tobool971.not, label %if.then972, label %if.else977, !dbg !4507

if.then972:                                       ; preds = %if.else969
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call973 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !4508
  %lnot.ext976 = xor i32 %call973, 1, !dbg !4509
  %b_repeat_headers = getelementptr inbounds i8, ptr %p, i64 636, !dbg !4510
  store i32 %lnot.ext976, ptr %b_repeat_headers, align 4, !dbg !4511
  br label %if.end1116, !dbg !4512

if.else977:                                       ; preds = %if.else969
  %call978 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(15) @.str.150) #23, !dbg !4513
  %tobool979.not = icmp eq i32 %call978, 0, !dbg !4513
  br i1 %tobool979.not, label %if.then980, label %if.else983, !dbg !4515

if.then980:                                       ; preds = %if.else977
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call981 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !4516
  %b_repeat_headers982 = getelementptr inbounds i8, ptr %p, i64 636, !dbg !4517
  store i32 %call981, ptr %b_repeat_headers982, align 4, !dbg !4518
  br label %if.end1116, !dbg !4519

if.else983:                                       ; preds = %if.else977
  %call984 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(7) @.str.151) #23, !dbg !4520
  %tobool985.not = icmp eq i32 %call984, 0, !dbg !4520
  br i1 %tobool985.not, label %if.then986, label %if.else988, !dbg !4522

if.then986:                                       ; preds = %if.else983
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call987 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !4523
  %b_annexb = getelementptr inbounds i8, ptr %p, i64 640, !dbg !4524
  store i32 %call987, ptr %b_annexb, align 8, !dbg !4525
  br label %if.end1116, !dbg !4526

if.else988:                                       ; preds = %if.else983
  %call989 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(10) @.str.152) #23, !dbg !4527
  %tobool990.not = icmp eq i32 %call989, 0, !dbg !4527
  br i1 %tobool990.not, label %if.then991, label %if.else996, !dbg !4529

if.then991:                                       ; preds = %if.else988
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call992 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !4530
  %lnot.ext995 = xor i32 %call992, 1, !dbg !4531
  %b_vfr_input = getelementptr inbounds i8, ptr %p, i64 648, !dbg !4532
  store i32 %lnot.ext995, ptr %b_vfr_input, align 8, !dbg !4533
  br label %if.end1116, !dbg !4534

if.else996:                                       ; preds = %if.else988
  %call997 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(8) @.str.153) #23, !dbg !4535
  %tobool998.not = icmp eq i32 %call997, 0, !dbg !4535
  br i1 %tobool998.not, label %if.then999, label %if.else1002, !dbg !4537

if.then999:                                       ; preds = %if.else996
  %i_nal_hrd = getelementptr inbounds i8, ptr %p, i64 40, !dbg !4538
  %call1000 = tail call fastcc i32 @parse_enum(ptr noundef %value.addr.2, ptr noundef nonnull @x264_nal_hrd_names, ptr noundef nonnull %i_nal_hrd), !dbg !4539
  %211 = load i32, ptr %b_error, align 4, !dbg !4540
  %or1001 = or i32 %211, %call1000, !dbg !4540
  store i32 %or1001, ptr %b_error, align 4, !dbg !4540, !DIAssignID !4541
    #dbg_assign(i32 %or1001, !2698, !DIExpression(), !4541, ptr %b_error, !DIExpression(), !2859)
  br label %if.end1116, !dbg !4542

if.else1002:                                      ; preds = %if.else996
  %call1003 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(11) @.str.154) #23, !dbg !4543
  %tobool1004.not = icmp eq i32 %call1003, 0, !dbg !4543
  br i1 %tobool1004.not, label %if.then1005, label %if.else1007, !dbg !4545

if.then1005:                                      ; preds = %if.else1002
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call1006 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !4546
  %b_pic_struct = getelementptr inbounds i8, ptr %p, i64 676, !dbg !4547
  store i32 %call1006, ptr %b_pic_struct, align 4, !dbg !4548
  br label %if.end1116, !dbg !4549

if.else1007:                                      ; preds = %if.else1002
  %call1008 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.addr.1, ptr noundef nonnull dereferenceable(16) @.str.155) #23, !dbg !4550
  %tobool1009.not = icmp eq i32 %call1008, 0, !dbg !4550
  br i1 %tobool1009.not, label %if.then1010, label %cleanup, !dbg !4552

if.then1010:                                      ; preds = %if.else1007
    #dbg_value(i32 1, !2699, !DIExpression(), !2859)
  %call1011 = call fastcc i32 @x264_atobool(ptr noundef %value.addr.2, ptr noundef nonnull %b_error), !dbg !4553
  %b_fake_interlaced = getelementptr inbounds i8, ptr %p, i64 680, !dbg !4554
  store i32 %call1011, ptr %b_fake_interlaced, align 8, !dbg !4555
  br label %if.end1116

if.end1116:                                       ; preds = %if.then253, %x264_atoi.exit1615, %if.then78, %x264_atoi.exit1623, %if.then94, %x264_atoi.exit1643, %x264_atof.exit1635, %if.then144, %if.then158, %if.then172, %if.then186, %x264_atoi.exit1666, %if.then246, %x264_atoi.exit1682, %if.then266, %x264_atoi.exit1706, %if.then276, %x264_atoi.exit1722, %if.then291, %if.then329, %if.else333, %if.then323, %x264_atoi.exit1738, %if.then356, %if.then366, %if.then377, %if.then400, %if.else402, %if.then396, %if.then415, %if.then443, %if.then469, %if.then487, %if.then505, %x264_atoi.exit1762, %if.then579, %if.end576, %if.then596, %if.then611, %if.then624, %x264_atoi.exit1794, %x264_atoi.exit1810, %if.then708, %if.then720, %if.then732, %x264_atoi.exit1826, %x264_atoi.exit1842, %x264_atoi.exit1858, %x264_atof.exit1872, %x264_atoi.exit1888, %x264_atoi.exit1904, %x264_atoi.exit1919, %x264_atof.exit1934, %x264_atof.exit1948, %x264_atof.exit1963, %if.then906, %if.then921, %x264_atof.exit1993, %if.then950, %if.then962, %if.then972, %if.then986, %if.then999, %if.then1010, %if.then1005, %if.then991, %if.then980, %x264_atoi.exit2001, %if.then956, %if.then944, %x264_atof.exit1986, %x264_atof.exit1979, %x264_atoi.exit1971, %x264_atoi.exit1956, %x264_atof.exit1941, %x264_atoi.exit1927, %cond.end837, %x264_atoi.exit1896, %x264_atoi.exit1880, %x264_atof.exit1865, %x264_atoi.exit1850, %x264_atoi.exit1834, %if.then738, %x264_atoi.exit1818, %if.then714, %lor.lhs.false681, %lor.lhs.false673, %if.then667, %if.else698, %if.then695, %x264_atoi.exit1802, %x264_atoi.exit1786, %x264_atoi.exit1778, %x264_atoi.exit1770, %if.then587, %if.then528, %if.then514, %if.then496, %if.then478, %if.then456, %if.then432, %if.then409, %if.then388, %if.then371, %x264_atoi.exit1754, %x264_atoi.exit1746, %x264_atoi.exit1730, %if.then302, %x264_atoi.exit1714, %x264_atoi.exit1698, %x264_atoi.exit1690, %x264_atoi.exit1674, %if.then229, %x264_atof.exit1658, %if.then200, %if.then179, %if.then165, %if.then151, %land.end140, %if.then105, %if.then86, %cond.end42, %for.end71
  %name_was_bool.2 = phi i32 [ 1, %if.then1010 ], [ 1, %if.then1005 ], [ 0, %if.then999 ], [ 1, %if.then991 ], [ 1, %if.then986 ], [ 1, %if.then980 ], [ 1, %if.then972 ], [ 0, %x264_atoi.exit2001 ], [ 1, %if.then962 ], [ 1, %if.then956 ], [ 1, %if.then950 ], [ 0, %if.then944 ], [ 0, %x264_atof.exit1993 ], [ 0, %x264_atof.exit1986 ], [ 1, %if.then921 ], [ 0, %x264_atof.exit1979 ], [ 0, %if.then906 ], [ 0, %x264_atoi.exit1971 ], [ 0, %x264_atof.exit1963 ], [ 0, %x264_atoi.exit1956 ], [ 0, %x264_atof.exit1948 ], [ 0, %x264_atof.exit1941 ], [ 0, %x264_atof.exit1934 ], [ 0, %x264_atoi.exit1927 ], [ 0, %x264_atoi.exit1919 ], [ 0, %cond.end837 ], [ 0, %x264_atoi.exit1904 ], [ 0, %x264_atoi.exit1896 ], [ 0, %x264_atoi.exit1888 ], [ 0, %x264_atoi.exit1880 ], [ 0, %x264_atof.exit1872 ], [ 0, %x264_atof.exit1865 ], [ 0, %x264_atoi.exit1858 ], [ 0, %x264_atoi.exit1850 ], [ 0, %x264_atoi.exit1842 ], [ 0, %x264_atoi.exit1834 ], [ 0, %x264_atoi.exit1826 ], [ 1, %if.then738 ], [ 1, %if.then732 ], [ 0, %x264_atoi.exit1818 ], [ 1, %if.then720 ], [ 1, %if.then714 ], [ 1, %if.then708 ], [ 0, %if.then667 ], [ 0, %lor.lhs.false673 ], [ 0, %lor.lhs.false681 ], [ 0, %if.then695 ], [ 0, %if.else698 ], [ 0, %x264_atoi.exit1810 ], [ 0, %x264_atoi.exit1802 ], [ 0, %x264_atoi.exit1794 ], [ 0, %x264_atoi.exit1786 ], [ 0, %if.then624 ], [ 0, %x264_atoi.exit1778 ], [ 0, %if.then611 ], [ 0, %x264_atoi.exit1770 ], [ 1, %if.then596 ], [ 1, %if.then587 ], [ 0, %if.then579 ], [ 0, %if.end576 ], [ 0, %if.then528 ], [ 0, %x264_atoi.exit1762 ], [ 0, %if.then514 ], [ 0, %if.then505 ], [ 0, %if.then496 ], [ 0, %if.then487 ], [ 0, %if.then478 ], [ 0, %if.then469 ], [ 0, %if.then456 ], [ 0, %if.then443 ], [ 0, %if.then432 ], [ 0, %if.then415 ], [ 0, %if.then409 ], [ 0, %if.then396 ], [ 0, %if.then400 ], [ 0, %if.else402 ], [ 1, %if.then388 ], [ 1, %if.then377 ], [ 1, %if.then371 ], [ 1, %if.then366 ], [ 0, %x264_atoi.exit1754 ], [ 1, %if.then356 ], [ 0, %x264_atoi.exit1746 ], [ 0, %x264_atoi.exit1738 ], [ 0, %x264_atoi.exit1730 ], [ 0, %if.then323 ], [ 0, %if.then329 ], [ 1, %if.else333 ], [ 1, %if.then302 ], [ 0, %x264_atoi.exit1722 ], [ 0, %if.then291 ], [ 0, %x264_atoi.exit1714 ], [ 1, %x264_atoi.exit1706 ], [ 1, %if.then276 ], [ 0, %x264_atoi.exit1698 ], [ 1, %if.then266 ], [ 1, %x264_atoi.exit1690 ], [ 0, %if.then246 ], [ 0, %x264_atoi.exit1682 ], [ 0, %if.then229 ], [ 0, %x264_atoi.exit1674 ], [ 0, %x264_atoi.exit1666 ], [ 0, %if.then200 ], [ 0, %x264_atof.exit1658 ], [ 0, %if.then186 ], [ 0, %if.then179 ], [ 0, %if.then172 ], [ 0, %if.then165 ], [ 0, %if.then158 ], [ 0, %if.then151 ], [ 0, %if.then144 ], [ 0, %land.end140 ], [ 0, %x264_atof.exit1635 ], [ 0, %x264_atoi.exit1643 ], [ 1, %if.then105 ], [ 0, %x264_atoi.exit1623 ], [ 0, %if.then94 ], [ 1, %if.then86 ], [ 0, %x264_atoi.exit1615 ], [ 0, %if.then78 ], [ %name_was_bool.1, %for.end71 ], [ %name_was_bool.1, %cond.end42 ], [ 1, %if.then253 ], !dbg !2859
    #dbg_value(i32 %name_was_bool.2, !2699, !DIExpression(), !2859)
  %tobool1117.not = icmp eq ptr %name_buf.0, null, !dbg !4556
  br i1 %tobool1117.not, label %if.end1119, label %if.then1118, !dbg !4558

if.then1118:                                      ; preds = %if.end1116
  tail call void @free(ptr noundef nonnull %name_buf.0) #25, !dbg !4559
  br label %if.end1119, !dbg !4559

if.end1119:                                       ; preds = %if.then1118, %if.end1116
  %tobool1122.not = icmp eq i32 %name_was_bool.2, 0, !dbg !4560
  %212 = and i1 %tobool.not, %tobool1122.not, !dbg !4560
  %land.ext1126 = zext i1 %212 to i32, !dbg !4560
  %213 = load i32, ptr %b_error, align 4, !dbg !4561
  %or1127 = or i32 %213, %land.ext1126, !dbg !4561
    #dbg_assign(i32 %or1127, !2698, !DIExpression(), !4562, ptr %b_error, !DIExpression(), !2859)
  %tobool1128.not = icmp eq i32 %or1127, 0, !dbg !4563
  %cond1129 = select i1 %tobool1128.not, i32 0, i32 -2, !dbg !4563
  br label %cleanup, !dbg !4564

cleanup:                                          ; preds = %if.else1007, %entry, %if.end1119
  %retval.0 = phi i32 [ %cond1129, %if.end1119 ], [ -1, %entry ], [ -1, %if.else1007 ], !dbg !2859
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b_error) #25, !dbg !4565
  ret i32 %retval.0, !dbg !4565
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !4566 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !4569 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @x264_atobool(ptr nocapture noundef readonly %str, ptr nocapture noundef writeonly %b_error) unnamed_addr #9 !dbg !4572 {
entry:
    #dbg_value(ptr %str, !4574, !DIExpression(), !4576)
    #dbg_value(ptr %b_error, !4575, !DIExpression(), !4576)
  %0 = load i8, ptr %str, align 1
  %.not = icmp eq i8 %0, 49
  br i1 %.not, label %entry.tail, label %lor.lhs.false

entry.tail:                                       ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %str, i64 1
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0, !dbg !4577
  br i1 %3, label %return, label %lor.lhs.false, !dbg !4579

lor.lhs.false:                                    ; preds = %entry, %entry.tail
  %call1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(5) @.str.8) #23, !dbg !4580
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !4580
  br i1 %tobool2.not, label %return, label %lor.lhs.false3, !dbg !4581

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(4) @.str.234) #23, !dbg !4582
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !4582
  br i1 %tobool5.not, label %return, label %sub_021, !dbg !4583

sub_021:                                          ; preds = %lor.lhs.false3
  %.not27 = icmp eq i8 %0, 48
  br i1 %.not27, label %if.end.tail, label %lor.lhs.false8

if.end.tail:                                      ; preds = %sub_021
  %4 = getelementptr inbounds i8, ptr %str, i64 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0, !dbg !4584
  br i1 %6, label %return, label %lor.lhs.false8.thread, !dbg !4586

lor.lhs.false8:                                   ; preds = %sub_021
  %call9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(6) @.str.11) #23, !dbg !4587
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !4587
  br i1 %tobool10.not, label %return, label %sub_024, !dbg !4588

lor.lhs.false8.thread:                            ; preds = %if.end.tail
  %call932 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(6) @.str.11) #23, !dbg !4587
  %tobool10.not33 = icmp eq i32 %call932, 0, !dbg !4587
  br i1 %tobool10.not33, label %return, label %if.end15, !dbg !4588

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
  %11 = icmp eq i8 %10, 0, !dbg !4589
  br i1 %11, label %return, label %if.end15, !dbg !4590

if.end15:                                         ; preds = %lor.lhs.false8.thread, %sub_125, %sub_024, %lor.lhs.false11.tail
  store i32 1, ptr %b_error, align 4, !dbg !4591
  br label %return, !dbg !4592

return:                                           ; preds = %lor.lhs.false8.thread, %if.end.tail, %lor.lhs.false8, %lor.lhs.false11.tail, %entry.tail, %lor.lhs.false, %lor.lhs.false3, %if.end15
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 1, %lor.lhs.false3 ], [ 1, %lor.lhs.false ], [ 1, %entry.tail ], [ 0, %lor.lhs.false11.tail ], [ 0, %lor.lhs.false8 ], [ 0, %if.end.tail ], [ 0, %lor.lhs.false8.thread ], !dbg !4576
  ret i32 %retval.0, !dbg !4593
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !4594 ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !4600 ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4605 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: nofree nounwind
declare !dbg !4606 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @parse_enum(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %names, ptr nocapture noundef writeonly %dst) unnamed_addr #15 !dbg !4610 {
entry:
    #dbg_value(ptr %arg, !4615, !DIExpression(), !4620)
    #dbg_value(ptr %names, !4616, !DIExpression(), !4620)
    #dbg_value(ptr %dst, !4617, !DIExpression(), !4620)
    #dbg_value(i32 0, !4618, !DIExpression(), !4621)
  %0 = load ptr, ptr %names, align 8, !dbg !4622
  %tobool.not11 = icmp eq ptr %0, null, !dbg !4624
  br i1 %tobool.not11, label %cleanup, label %for.body, !dbg !4624

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %1 = phi ptr [ %3, %for.inc ], [ %0, %entry ]
    #dbg_value(i64 %indvars.iv, !4618, !DIExpression(), !4621)
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arg, ptr noundef nonnull dereferenceable(1) %1) #23, !dbg !4625
  %tobool3.not = icmp eq i32 %call, 0, !dbg !4625
  br i1 %tobool3.not, label %if.then, label %for.inc, !dbg !4627

if.then:                                          ; preds = %for.body
  %2 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !4628
  store i32 %2, ptr %dst, align 4, !dbg !4628
  br label %cleanup, !dbg !4630

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4631
    #dbg_value(i64 %indvars.iv.next, !4618, !DIExpression(), !4621)
  %arrayidx = getelementptr inbounds ptr, ptr %names, i64 %indvars.iv.next, !dbg !4622
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !4622
  %tobool.not = icmp eq ptr %3, null, !dbg !4624
  br i1 %tobool.not, label %cleanup, label %for.body, !dbg !4624, !llvm.loop !4632

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %tobool.not9 = phi i32 [ 0, %if.then ], [ -1, %entry ], [ -1, %for.inc ]
  ret i32 %tobool.not9, !dbg !4634
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !4635 ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @parse_cqm(ptr noundef readonly %str, ptr nocapture noundef writeonly %cqm, i32 noundef %length) unnamed_addr #7 !dbg !4638 {
entry:
  %coef = alloca i32, align 4, !DIAssignID !4648
    #dbg_assign(i1 undef, !4646, !DIExpression(), !4648, ptr %coef, !DIExpression(), !4649)
    #dbg_value(ptr %str, !4642, !DIExpression(), !4650)
    #dbg_value(ptr %cqm, !4643, !DIExpression(), !4650)
    #dbg_value(i32 %length, !4644, !DIExpression(), !4650)
    #dbg_value(i32 0, !4645, !DIExpression(), !4650)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coef) #25, !dbg !4651
  %call20 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %str, ptr noundef nonnull @.str.49, ptr noundef nonnull %coef) #25, !dbg !4652
  %tobool21 = icmp ne i32 %call20, 0, !dbg !4652
  %0 = load i32, ptr %coef, align 4
  %1 = add i32 %0, -1, !dbg !4654
  %2 = icmp ult i32 %1, 255, !dbg !4654
  %or.cond12.not22 = select i1 %tobool21, i1 %2, i1 false, !dbg !4654
  br i1 %or.cond12.not22, label %do.cond.preheader, label %cleanup, !dbg !4654

do.cond.preheader:                                ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 %length, i32 1), !dbg !4655
  %3 = add nsw i32 %smax, -1, !dbg !4655
  %wide.trip.count = zext nneg i32 %3 to i64, !dbg !4656
  br label %do.cond, !dbg !4655

do.body:                                          ; preds = %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8, ptr %call5, i64 1, !dbg !4657
    #dbg_value(ptr %incdec.ptr, !4642, !DIExpression(), !4650)
    #dbg_value(i64 %indvars.iv.next, !4645, !DIExpression(), !4650)
    #dbg_value(ptr %incdec.ptr, !4642, !DIExpression(), !4650)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coef) #25, !dbg !4651
  %call = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.49, ptr noundef nonnull %coef) #25, !dbg !4652
  %tobool = icmp ne i32 %call, 0, !dbg !4652
  %4 = load i32, ptr %coef, align 4
  %5 = add i32 %4, -1, !dbg !4654
  %6 = icmp ult i32 %5, 255, !dbg !4654
  %or.cond12.not = select i1 %tobool, i1 %6, i1 false, !dbg !4654
  br i1 %or.cond12.not, label %do.cond, label %cleanup, !dbg !4654

cleanup:                                          ; preds = %do.body, %entry
    #dbg_value(i32 undef, !4645, !DIExpression(), !4650)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coef) #25, !dbg !4658
  br label %cleanup10

do.cond:                                          ; preds = %do.cond.preheader, %do.body
  %indvars.iv = phi i64 [ 0, %do.cond.preheader ], [ %indvars.iv.next, %do.body ]
  %7 = phi i32 [ %0, %do.cond.preheader ], [ %4, %do.body ]
  %str.addr.023 = phi ptr [ %str, %do.cond.preheader ], [ %incdec.ptr, %do.body ]
    #dbg_value(i64 %indvars.iv, !4645, !DIExpression(), !4650)
    #dbg_value(ptr %str.addr.023, !4642, !DIExpression(), !4650)
  %conv = trunc nuw i32 %7 to i8, !dbg !4659
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4660
    #dbg_value(i64 %indvars.iv.next, !4645, !DIExpression(), !4650)
  %arrayidx = getelementptr inbounds i8, ptr %cqm, i64 %indvars.iv, !dbg !4661
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4662
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coef) #25, !dbg !4658
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !4656
  br i1 %exitcond.not, label %do.end, label %land.lhs.true, !dbg !4655

land.lhs.true:                                    ; preds = %do.cond
  %call5 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %str.addr.023, i32 noundef 44) #23, !dbg !4663
    #dbg_value(ptr %call5, !4642, !DIExpression(), !4650)
  %tobool6.not = icmp eq ptr %call5, null, !dbg !4664
    #dbg_value(ptr %call5, !4642, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4650)
  br i1 %tobool6.not, label %do.end.split.loop.exit, label %do.body, !dbg !4665

do.end.split.loop.exit:                           ; preds = %land.lhs.true
  %8 = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %do.end, !dbg !4666

do.end:                                           ; preds = %do.cond, %do.end.split.loop.exit
  %inc.lcssa = phi i32 [ %8, %do.end.split.loop.exit ], [ %smax, %do.cond ], !dbg !4660
  %cmp8 = icmp ne i32 %inc.lcssa, %length, !dbg !4666
  %cond = sext i1 %cmp8 to i32, !dbg !4667
  br label %cleanup10, !dbg !4668

cleanup10:                                        ; preds = %cleanup, %do.end
  %retval.2 = phi i32 [ %cond, %do.end ], [ -1, %cleanup ], !dbg !4650
  ret i32 %retval.2, !dbg !4669
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_picture_alloc(ptr nocapture noundef writeonly %pic, i32 noundef %i_csp, i32 noundef %i_width, i32 noundef %i_height) local_unnamed_addr #4 !dbg !4670 {
entry:
    #dbg_value(ptr %pic, !4695, !DIExpression(), !4699)
    #dbg_value(i32 %i_csp, !4696, !DIExpression(), !4699)
    #dbg_value(i32 %i_width, !4697, !DIExpression(), !4699)
    #dbg_value(i32 %i_height, !4698, !DIExpression(), !4699)
  store i32 0, ptr %pic, align 8, !dbg !4700
  %i_qpplus1 = getelementptr inbounds i8, ptr %pic, i64 4, !dbg !4701
  store i32 0, ptr %i_qpplus1, align 4, !dbg !4702
  %img = getelementptr inbounds i8, ptr %pic, i64 40, !dbg !4703
  store i32 %i_csp, ptr %img, align 8, !dbg !4704
  %i_plane = getelementptr inbounds i8, ptr %pic, i64 44, !dbg !4705
  store i32 3, ptr %i_plane, align 4, !dbg !4706
  %mul = mul i32 %i_height, %i_width, !dbg !4707
  %mul3 = mul i32 %mul, 3, !dbg !4708
  %div = sdiv i32 %mul3, 2, !dbg !4709
    #dbg_value(i32 %div, !1287, !DIExpression(), !4710)
    #dbg_value(ptr null, !1292, !DIExpression(), !4710)
  %narrow = add nsw i32 %div, 27, !dbg !4712
  %add2.i = sext i32 %narrow to i64, !dbg !4712
  %call.i = tail call noalias ptr @malloc(i64 noundef %add2.i) #24, !dbg !4713
    #dbg_value(ptr %call.i, !1294, !DIExpression(), !4710)
  %tobool.not.i = icmp eq ptr %call.i, null, !dbg !4714
  br i1 %tobool.not.i, label %x264_malloc.exit.thread, label %if.end, !dbg !4715

x264_malloc.exit.thread:                          ; preds = %entry
    #dbg_value(ptr null, !1292, !DIExpression(), !4710)
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %div), !dbg !4716
  br label %return, !dbg !4717

if.end:                                           ; preds = %entry
  %add.ptr4.i = getelementptr inbounds i8, ptr %call.i, i64 27, !dbg !4718
    #dbg_value(ptr %add.ptr4.i, !1292, !DIExpression(), !4710)
  %0 = ptrtoint ptr %add.ptr4.i to i64, !dbg !4719
  %and.i = and i64 %0, 15, !dbg !4720
  %idx.neg.i = sub nsw i64 0, %and.i, !dbg !4721
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr4.i, i64 %idx.neg.i, !dbg !4721
    #dbg_value(ptr %add.ptr5.i, !1292, !DIExpression(), !4710)
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr5.i, i64 -8, !dbg !4722
  store ptr %call.i, ptr %add.ptr6.i, align 8, !dbg !4723
  %add.ptr8.i = getelementptr inbounds i8, ptr %add.ptr5.i, i64 -12, !dbg !4724
  store i32 %div, ptr %add.ptr8.i, align 4, !dbg !4725
  %idx.ext = sext i32 %mul to i64, !dbg !4726
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr5.i, i64 %idx.ext, !dbg !4726
  %arrayidx14 = getelementptr inbounds i8, ptr %pic, i64 72, !dbg !4727
  store ptr %add.ptr, ptr %arrayidx14, align 8, !dbg !4728
  %div19 = sdiv i32 %mul, 4, !dbg !4729
  %idx.ext20 = sext i32 %div19 to i64, !dbg !4730
  %add.ptr21 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext20, !dbg !4730
  %arrayidx24 = getelementptr inbounds i8, ptr %pic, i64 80, !dbg !4731
  store ptr %add.ptr21, ptr %arrayidx24, align 8, !dbg !4732
  %i_stride = getelementptr inbounds i8, ptr %pic, i64 48, !dbg !4733
  store i32 %i_width, ptr %i_stride, align 8, !dbg !4734
  %div27 = sdiv i32 %i_width, 2, !dbg !4735
  %arrayidx30 = getelementptr inbounds i8, ptr %pic, i64 52, !dbg !4736
  store i32 %div27, ptr %arrayidx30, align 4, !dbg !4737
  %arrayidx34 = getelementptr inbounds i8, ptr %pic, i64 56, !dbg !4738
  store i32 %div27, ptr %arrayidx34, align 8, !dbg !4739
  %param = getelementptr inbounds i8, ptr %pic, i64 32, !dbg !4740
  store ptr null, ptr %param, align 8, !dbg !4741
  %i_pic_struct = getelementptr inbounds i8, ptr %pic, i64 8, !dbg !4742
  store i32 0, ptr %i_pic_struct, align 8, !dbg !4743
  br label %return, !dbg !4744

return:                                           ; preds = %x264_malloc.exit.thread, %if.end
  %add.ptr5.i.sink = phi ptr [ null, %x264_malloc.exit.thread ], [ %add.ptr5.i, %if.end ], !dbg !4745
  %retval.0 = phi i32 [ -1, %x264_malloc.exit.thread ], [ 0, %if.end ], !dbg !4699
  %1 = getelementptr inbounds i8, ptr %pic, i64 64, !dbg !4746
  store ptr %add.ptr5.i.sink, ptr %1, align 8, !dbg !4745
  ret i32 %retval.0, !dbg !4747
}

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_malloc(i32 noundef %i_size) local_unnamed_addr #4 !dbg !1288 {
entry:
    #dbg_value(i32 %i_size, !1287, !DIExpression(), !4748)
    #dbg_value(ptr null, !1292, !DIExpression(), !4748)
  %0 = sext i32 %i_size to i64, !dbg !4749
  %add2 = add nsw i64 %0, 27, !dbg !4750
  %call = tail call noalias ptr @malloc(i64 noundef %add2) #24, !dbg !4751
    #dbg_value(ptr %call, !1294, !DIExpression(), !4748)
  %tobool.not = icmp eq ptr %call, null, !dbg !4752
  br i1 %tobool.not, label %if.then10, label %if.end, !dbg !4753

if.end:                                           ; preds = %entry
  %add.ptr4 = getelementptr inbounds i8, ptr %call, i64 27, !dbg !4754
    #dbg_value(ptr %add.ptr4, !1292, !DIExpression(), !4748)
  %1 = ptrtoint ptr %add.ptr4 to i64, !dbg !4755
  %and = and i64 %1, 15, !dbg !4756
  %idx.neg = sub nsw i64 0, %and, !dbg !4757
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr4, i64 %idx.neg, !dbg !4757
    #dbg_value(ptr %add.ptr5, !1292, !DIExpression(), !4748)
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr5, i64 -8, !dbg !4758
  store ptr %call, ptr %add.ptr6, align 8, !dbg !4759
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr5, i64 -12, !dbg !4760
  store i32 %i_size, ptr %add.ptr8, align 4, !dbg !4761
  br label %if.end11, !dbg !4762

if.then10:                                        ; preds = %entry
    #dbg_value(ptr null, !1292, !DIExpression(), !4748)
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %i_size), !dbg !4763
  br label %if.end11, !dbg !4763

if.end11:                                         ; preds = %if.end, %if.then10
  %align_buf.023 = phi ptr [ null, %if.then10 ], [ %add.ptr5, %if.end ]
  ret ptr %align_buf.023, !dbg !4764
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @x264_picture_clean(ptr nocapture noundef %pic) local_unnamed_addr #17 !dbg !4765 {
entry:
    #dbg_value(ptr %pic, !4769, !DIExpression(), !4770)
  %plane = getelementptr inbounds i8, ptr %pic, i64 64, !dbg !4771
  %0 = load ptr, ptr %plane, align 8, !dbg !4772
    #dbg_value(ptr %0, !1437, !DIExpression(), !4773)
  %tobool.not.i = icmp eq ptr %0, null, !dbg !4775
  br i1 %tobool.not.i, label %x264_free.exit, label %if.then.i, !dbg !4776

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 -8, !dbg !4777
  %1 = load ptr, ptr %add.ptr.i, align 8, !dbg !4778
  tail call void @free(ptr noundef %1) #25, !dbg !4779
  br label %x264_free.exit, !dbg !4780

x264_free.exit:                                   ; preds = %entry, %if.then.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %pic, i8 0, i64 136, i1 false), !dbg !4781
  ret void, !dbg !4782
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @x264_free(ptr noundef readonly %p) local_unnamed_addr #17 !dbg !1438 {
entry:
    #dbg_value(ptr %p, !1437, !DIExpression(), !4783)
  %tobool.not = icmp eq ptr %p, null, !dbg !4784
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4785

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 -8, !dbg !4786
  %0 = load ptr, ptr %add.ptr, align 8, !dbg !4787
  tail call void @free(ptr noundef %0) #25, !dbg !4788
  br label %if.end, !dbg !4789

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4790
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -2147483644, -2147483648) i32 @x264_nal_encode(ptr noundef %dst, ptr nocapture noundef readonly %nal, i32 noundef %b_annexb, i32 noundef %b_long_startcode) local_unnamed_addr #18 !dbg !4791 {
entry:
    #dbg_value(ptr %dst, !4795, !DIExpression(), !4804)
    #dbg_value(ptr %nal, !4796, !DIExpression(), !4804)
    #dbg_value(i32 %b_annexb, !4797, !DIExpression(), !4804)
    #dbg_value(i32 %b_long_startcode, !4798, !DIExpression(), !4804)
  %p_payload = getelementptr inbounds i8, ptr %nal, i64 16, !dbg !4805
  %0 = load ptr, ptr %p_payload, align 8, !dbg !4805
    #dbg_value(ptr %0, !4799, !DIExpression(), !4804)
  %i_payload = getelementptr inbounds i8, ptr %nal, i64 8, !dbg !4806
  %1 = load i32, ptr %i_payload, align 8, !dbg !4806
  %idx.ext = sext i32 %1 to i64, !dbg !4807
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext, !dbg !4807
    #dbg_value(ptr %add.ptr, !4800, !DIExpression(), !4804)
    #dbg_value(ptr %dst, !4801, !DIExpression(), !4804)
    #dbg_value(i32 0, !4802, !DIExpression(), !4804)
  %tobool.not = icmp eq i32 %b_annexb, 0, !dbg !4808
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !4810

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq i32 %b_long_startcode, 0, !dbg !4811
  br i1 %tobool2.not, label %if.end, label %if.then3, !dbg !4814

if.then3:                                         ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8, ptr %dst, i64 1, !dbg !4815
    #dbg_value(ptr %incdec.ptr, !4795, !DIExpression(), !4804)
  store i8 0, ptr %dst, align 1, !dbg !4816
  br label %if.end, !dbg !4817

if.end:                                           ; preds = %if.then3, %if.then
  %dst.addr.0 = phi ptr [ %incdec.ptr, %if.then3 ], [ %dst, %if.then ]
    #dbg_value(ptr %dst.addr.0, !4795, !DIExpression(), !4804)
  %incdec.ptr4 = getelementptr inbounds i8, ptr %dst.addr.0, i64 1, !dbg !4818
    #dbg_value(ptr %incdec.ptr4, !4795, !DIExpression(), !4804)
  store i8 0, ptr %dst.addr.0, align 1, !dbg !4819
  %incdec.ptr5 = getelementptr inbounds i8, ptr %dst.addr.0, i64 2, !dbg !4820
    #dbg_value(ptr %incdec.ptr5, !4795, !DIExpression(), !4804)
  store i8 0, ptr %incdec.ptr4, align 1, !dbg !4821
  %incdec.ptr6 = getelementptr inbounds i8, ptr %dst.addr.0, i64 3, !dbg !4822
    #dbg_value(ptr %incdec.ptr6, !4795, !DIExpression(), !4804)
  store i8 1, ptr %incdec.ptr5, align 1, !dbg !4823
  br label %if.end8, !dbg !4824

if.else:                                          ; preds = %entry
  %add.ptr7 = getelementptr inbounds i8, ptr %dst, i64 4, !dbg !4825
    #dbg_value(ptr %add.ptr7, !4795, !DIExpression(), !4804)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  %dst.addr.1 = phi ptr [ %incdec.ptr6, %if.end ], [ %add.ptr7, %if.else ], !dbg !4826
    #dbg_value(ptr %dst.addr.1, !4795, !DIExpression(), !4804)
  %2 = load i32, ptr %nal, align 8, !dbg !4827
  %shl = shl i32 %2, 5, !dbg !4828
  %i_type = getelementptr inbounds i8, ptr %nal, i64 4, !dbg !4829
  %3 = load i32, ptr %i_type, align 4, !dbg !4829
  %or9 = or i32 %shl, %3, !dbg !4830
  %conv = trunc i32 %or9 to i8, !dbg !4831
    #dbg_value(ptr %dst.addr.1, !4795, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4804)
  store i8 %conv, ptr %dst.addr.1, align 1, !dbg !4832
  %dst.addr.268 = getelementptr inbounds i8, ptr %dst.addr.1, i64 1, !dbg !4804
  %cmp69 = icmp sgt i32 %1, 0, !dbg !4833
  br i1 %cmp69, label %while.body, label %while.end, !dbg !4834

while.body:                                       ; preds = %if.end8, %if.end19
  %dst.addr.273 = phi ptr [ %dst.addr.2, %if.end19 ], [ %dst.addr.268, %if.end8 ]
  %dst.addr.1.pn72 = phi ptr [ %dst.addr.3, %if.end19 ], [ %dst.addr.1, %if.end8 ]
  %i_count.071 = phi i32 [ %i_count.2, %if.end19 ], [ 0, %if.end8 ]
  %src.070 = phi ptr [ %incdec.ptr26, %if.end19 ], [ %0, %if.end8 ]
    #dbg_value(i32 %i_count.071, !4802, !DIExpression(), !4804)
    #dbg_value(ptr %src.070, !4799, !DIExpression(), !4804)
  %cmp12 = icmp eq i32 %i_count.071, 2, !dbg !4835
  %.pre75 = load i8, ptr %src.070, align 1, !dbg !4838
  br i1 %cmp12, label %land.lhs.true, label %if.end19, !dbg !4840

land.lhs.true:                                    ; preds = %while.body
  %cmp15 = icmp ult i8 %.pre75, 4, !dbg !4841
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !4842

if.then17:                                        ; preds = %land.lhs.true
  %incdec.ptr18 = getelementptr inbounds i8, ptr %dst.addr.1.pn72, i64 2, !dbg !4843
    #dbg_value(ptr %incdec.ptr18, !4795, !DIExpression(), !4804)
  store i8 3, ptr %dst.addr.273, align 1, !dbg !4845
    #dbg_value(i32 0, !4802, !DIExpression(), !4804)
  %.pre = load i8, ptr %src.070, align 1, !dbg !4838
  br label %if.end19, !dbg !4846

if.end19:                                         ; preds = %if.then17, %land.lhs.true, %while.body
  %4 = phi i8 [ %.pre, %if.then17 ], [ %.pre75, %land.lhs.true ], [ %.pre75, %while.body ], !dbg !4838
  %i_count.1 = phi i32 [ 0, %if.then17 ], [ 2, %land.lhs.true ], [ %i_count.071, %while.body ], !dbg !4804
  %dst.addr.3 = phi ptr [ %incdec.ptr18, %if.then17 ], [ %dst.addr.273, %land.lhs.true ], [ %dst.addr.273, %while.body ], !dbg !4804
    #dbg_value(ptr %dst.addr.3, !4795, !DIExpression(), !4804)
    #dbg_value(i32 %i_count.1, !4802, !DIExpression(), !4804)
  %cmp21 = icmp eq i8 %4, 0, !dbg !4847
  %inc = add nsw i32 %i_count.1, 1, !dbg !4848
  %i_count.2 = select i1 %cmp21, i32 %inc, i32 0, !dbg !4848
    #dbg_value(i32 %i_count.2, !4802, !DIExpression(), !4804)
  %incdec.ptr26 = getelementptr inbounds i8, ptr %src.070, i64 1, !dbg !4849
    #dbg_value(ptr %incdec.ptr26, !4799, !DIExpression(), !4804)
    #dbg_value(ptr %dst.addr.3, !4795, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4804)
  store i8 %4, ptr %dst.addr.3, align 1, !dbg !4850
  %dst.addr.2 = getelementptr inbounds i8, ptr %dst.addr.3, i64 1, !dbg !4804
    #dbg_value(ptr %dst.addr.2, !4795, !DIExpression(), !4804)
  %cmp = icmp ult ptr %incdec.ptr26, %add.ptr, !dbg !4833
  br i1 %cmp, label %while.body, label %while.end, !dbg !4834, !llvm.loop !4851

while.end:                                        ; preds = %if.end19, %if.end8
  %dst.addr.2.lcssa = phi ptr [ %dst.addr.268, %if.end8 ], [ %dst.addr.2, %if.end19 ], !dbg !4804
  %sub.ptr.lhs.cast = ptrtoint ptr %dst.addr.2.lcssa to i64, !dbg !4853
  %sub.ptr.rhs.cast = ptrtoint ptr %dst to i64, !dbg !4853
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4853
  %5 = trunc i64 %sub.ptr.sub to i32, !dbg !4854
    #dbg_value(i32 %5, !4803, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !4804)
  br i1 %tobool.not, label %if.then30, label %if.end41, !dbg !4855

if.then30:                                        ; preds = %while.end
  %conv28 = add i32 %5, -4, !dbg !4854
    #dbg_value(i32 %conv28, !4803, !DIExpression(), !4804)
  %shr = lshr i32 %conv28, 24, !dbg !4856
  %conv31 = trunc nuw i32 %shr to i8, !dbg !4859
  store i8 %conv31, ptr %dst, align 1, !dbg !4860
  %shr32 = lshr i32 %conv28, 16, !dbg !4861
  %conv33 = trunc i32 %shr32 to i8, !dbg !4862
  %arrayidx34 = getelementptr inbounds i8, ptr %dst, i64 1, !dbg !4863
  store i8 %conv33, ptr %arrayidx34, align 1, !dbg !4864
  %shr35 = lshr i32 %conv28, 8, !dbg !4865
  %conv36 = trunc i32 %shr35 to i8, !dbg !4866
  %arrayidx37 = getelementptr inbounds i8, ptr %dst, i64 2, !dbg !4867
  store i8 %conv36, ptr %arrayidx37, align 1, !dbg !4868
  %conv39 = trunc i32 %conv28 to i8, !dbg !4869
  %arrayidx40 = getelementptr inbounds i8, ptr %dst, i64 3, !dbg !4870
  store i8 %conv39, ptr %arrayidx40, align 1, !dbg !4871
  br label %if.end41, !dbg !4872

if.end41:                                         ; preds = %if.then30, %while.end
  ret i32 %5, !dbg !4873
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_reduce_fraction(ptr nocapture noundef %n, ptr nocapture noundef %d) local_unnamed_addr #19 !dbg !4874 {
entry:
    #dbg_value(ptr %n, !4878, !DIExpression(), !4883)
    #dbg_value(ptr %d, !4879, !DIExpression(), !4883)
  %0 = load i32, ptr %n, align 4, !dbg !4884
    #dbg_value(i32 %0, !4880, !DIExpression(), !4883)
  %1 = load i32, ptr %d, align 4, !dbg !4885
    #dbg_value(i32 %1, !4881, !DIExpression(), !4883)
  %tobool = icmp ne i32 %0, 0, !dbg !4886
  %tobool1 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false, !dbg !4888
  br i1 %or.cond, label %if.end, label %cleanup, !dbg !4888

if.end:                                           ; preds = %entry
  %rem = urem i32 %0, %1, !dbg !4889
    #dbg_value(i32 %rem, !4882, !DIExpression(), !4883)
    #dbg_value(i32 %1, !4881, !DIExpression(), !4883)
  %tobool2.not18 = icmp eq i32 %rem, 0, !dbg !4890
  br i1 %tobool2.not18, label %while.end, label %while.body, !dbg !4890

while.body:                                       ; preds = %if.end, %while.body
  %c.020 = phi i32 [ %rem3, %while.body ], [ %rem, %if.end ]
  %b.019 = phi i32 [ %c.020, %while.body ], [ %1, %if.end ]
    #dbg_value(i32 %c.020, !4882, !DIExpression(), !4883)
    #dbg_value(i32 %b.019, !4880, !DIExpression(), !4883)
    #dbg_value(i32 %c.020, !4881, !DIExpression(), !4883)
  %rem3 = urem i32 %b.019, %c.020, !dbg !4891
    #dbg_value(i32 %rem3, !4882, !DIExpression(), !4883)
  %tobool2.not = icmp eq i32 %rem3, 0, !dbg !4890
  br i1 %tobool2.not, label %while.end, label %while.body, !dbg !4890, !llvm.loop !4893

while.end:                                        ; preds = %while.body, %if.end
  %b.0.lcssa = phi i32 [ %1, %if.end ], [ %c.020, %while.body ], !dbg !4883
  %div = udiv i32 %0, %b.0.lcssa, !dbg !4895
  store i32 %div, ptr %n, align 4, !dbg !4895
  %2 = load i32, ptr %d, align 4, !dbg !4896
  %div4 = udiv i32 %2, %b.0.lcssa, !dbg !4896
  store i32 %div4, ptr %d, align 4, !dbg !4896
  br label %cleanup, !dbg !4897

cleanup:                                          ; preds = %entry, %while.end
  ret void, !dbg !4897
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @x264_slurp_file(ptr nocapture noundef readonly %filename) local_unnamed_addr #4 !dbg !4898 {
entry:
    #dbg_value(ptr %filename, !4900, !DIExpression(), !4954)
    #dbg_value(i32 0, !4901, !DIExpression(), !4954)
  %call = tail call noalias ptr @fopen64(ptr noundef %filename, ptr noundef nonnull @.str.157), !dbg !4955
    #dbg_value(ptr %call, !4904, !DIExpression(), !4954)
  %tobool.not = icmp eq ptr %call, null, !dbg !4956
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !4958

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fseek(ptr noundef nonnull %call, i64 noundef 0, i32 noundef 2), !dbg !4959
    #dbg_value(i32 %call1, !4901, !DIExpression(DW_OP_constu, 31, DW_OP_shr, DW_OP_stack_value), !4954)
  %call2 = tail call i64 @ftell(ptr noundef nonnull %call), !dbg !4960
  %conv3 = trunc i64 %call2 to i32, !dbg !4960
    #dbg_value(i32 %conv3, !4902, !DIExpression(), !4954)
  %cmp4 = icmp slt i32 %conv3, 1, !dbg !4961
  %0 = icmp slt i32 %call1, 0, !dbg !4962
  %1 = or i1 %0, %cmp4, !dbg !4962
  %or6 = zext i1 %1 to i32, !dbg !4962
    #dbg_value(i32 %or6, !4901, !DIExpression(), !4954)
  %call7 = tail call i32 @fseek(ptr noundef nonnull %call, i64 noundef 0, i32 noundef 0), !dbg !4963
  %call7.lobit = lshr i32 %call7, 31, !dbg !4964
  %or10 = or i32 %call7.lobit, %or6, !dbg !4965
    #dbg_value(i32 %or10, !4901, !DIExpression(), !4954)
  %tobool11.not = icmp eq i32 %or10, 0, !dbg !4966
  br i1 %tobool11.not, label %if.end13, label %cleanup, !dbg !4968

if.end13:                                         ; preds = %if.end
  %add = add nsw i32 %conv3, 2, !dbg !4969
    #dbg_value(i32 %add, !1287, !DIExpression(), !4970)
    #dbg_value(ptr null, !1292, !DIExpression(), !4970)
  %sext68 = shl i64 %call2, 32, !dbg !4972
  %2 = ashr exact i64 %sext68, 32, !dbg !4972
  %add2.i = add nsw i64 %2, 29, !dbg !4972
  %call.i = tail call noalias ptr @malloc(i64 noundef %add2.i) #24, !dbg !4973
    #dbg_value(ptr %call.i, !1294, !DIExpression(), !4970)
  %tobool.not.i = icmp eq ptr %call.i, null, !dbg !4974
  br i1 %tobool.not.i, label %x264_malloc.exit.thread, label %if.end18, !dbg !4975

x264_malloc.exit.thread:                          ; preds = %if.end13
    #dbg_value(ptr null, !1292, !DIExpression(), !4970)
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %add), !dbg !4976
    #dbg_value(ptr null, !4903, !DIExpression(), !4954)
  br label %cleanup, !dbg !4977

if.end18:                                         ; preds = %if.end13
  %add.ptr4.i = getelementptr inbounds i8, ptr %call.i, i64 27, !dbg !4978
    #dbg_value(ptr %add.ptr4.i, !1292, !DIExpression(), !4970)
  %3 = ptrtoint ptr %add.ptr4.i to i64, !dbg !4979
  %and.i = and i64 %3, 15, !dbg !4980
  %idx.neg.i = sub nsw i64 0, %and.i, !dbg !4981
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr4.i, i64 %idx.neg.i, !dbg !4981
    #dbg_value(ptr %add.ptr5.i, !1292, !DIExpression(), !4970)
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr5.i, i64 -8, !dbg !4982
  store ptr %call.i, ptr %add.ptr6.i, align 8, !dbg !4983
  %add.ptr8.i = getelementptr inbounds i8, ptr %add.ptr5.i, i64 -12, !dbg !4984
  store i32 %add, ptr %add.ptr8.i, align 4, !dbg !4985
    #dbg_value(ptr %add.ptr5.i, !4903, !DIExpression(), !4954)
  %call20 = tail call i64 @fread(ptr noundef nonnull %add.ptr5.i, i64 noundef 1, i64 noundef %2, ptr noundef nonnull %call), !dbg !4986
  %conv21 = trunc i64 %call20 to i32, !dbg !4987
  %cmp22.not = icmp eq i32 %conv21, %conv3, !dbg !4988
    #dbg_value(i1 %cmp22.not, !4901, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4954)
  %sext62 = add i64 %sext68, -4294967296, !dbg !4989
  %idxprom = ashr exact i64 %sext62, 32, !dbg !4989
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr5.i, i64 %idxprom, !dbg !4989
  %4 = load i8, ptr %arrayidx, align 1, !dbg !4989
  %cmp26.not = icmp eq i8 %4, 10, !dbg !4991
  br i1 %cmp26.not, label %if.end31, label %if.then28, !dbg !4992

if.then28:                                        ; preds = %if.end18
    #dbg_value(i32 %conv3, !4902, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4954)
  %arrayidx30 = getelementptr inbounds i8, ptr %add.ptr5.i, i64 %2, !dbg !4993
  store i8 10, ptr %arrayidx30, align 1, !dbg !4994
  %inc = shl i64 %call2, 32, !dbg !4995
  %.pre = add i64 %inc, 4294967296, !dbg !4995
  %.pre69 = ashr exact i64 %.pre, 32, !dbg !4995
  br label %if.end31, !dbg !4993

if.end31:                                         ; preds = %if.then28, %if.end18
  %idxprom32.pre-phi = phi i64 [ %.pre69, %if.then28 ], [ %2, %if.end18 ], !dbg !4995
    #dbg_value(i32 poison, !4902, !DIExpression(), !4954)
  %arrayidx33 = getelementptr inbounds i8, ptr %add.ptr5.i, i64 %idxprom32.pre-phi, !dbg !4995
  store i8 0, ptr %arrayidx33, align 1, !dbg !4996
  %call34 = tail call i32 @fclose(ptr noundef nonnull %call), !dbg !4997
  br i1 %cmp22.not, label %cleanup, label %x264_free.exit, !dbg !4998

x264_free.exit:                                   ; preds = %if.end31
    #dbg_value(ptr %add.ptr5.i, !1437, !DIExpression(), !4999)
  %5 = load ptr, ptr %add.ptr6.i, align 8, !dbg !5003
  tail call void @free(ptr noundef %5) #25, !dbg !5004
  br label %cleanup, !dbg !5005

cleanup:                                          ; preds = %x264_malloc.exit.thread, %if.end31, %if.end, %entry, %x264_free.exit
  %retval.0 = phi ptr [ null, %x264_free.exit ], [ null, %entry ], [ null, %if.end ], [ %add.ptr5.i, %if.end31 ], [ null, %x264_malloc.exit.thread ], !dbg !4954
  ret ptr %retval.0, !dbg !5006
}

; Function Attrs: nofree nounwind
declare !dbg !5007 noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare !dbg !5010 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare !dbg !5013 noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare !dbg !5016 noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare !dbg !5021 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_param2string(ptr noundef readonly %p, i32 noundef %b_res) local_unnamed_addr #4 !dbg !5024 {
entry:
    #dbg_value(ptr %p, !5028, !DIExpression(), !5033)
    #dbg_value(i32 %b_res, !5029, !DIExpression(), !5033)
    #dbg_value(i32 1000, !5030, !DIExpression(), !5033)
  %rc = getelementptr inbounds i8, ptr %p, i64 488, !dbg !5034
  %psz_zones = getelementptr inbounds i8, ptr %p, i64 624, !dbg !5036
  %0 = load ptr, ptr %psz_zones, align 8, !dbg !5036
  %tobool.not = icmp eq ptr %0, null, !dbg !5037
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5038

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23, !dbg !5039
  %1 = trunc i64 %call to i32, !dbg !5040
  %conv3 = add i32 %1, 1000, !dbg !5040
    #dbg_value(i32 %conv3, !5030, !DIExpression(), !5033)
  br label %if.end, !dbg !5041

if.end:                                           ; preds = %if.then, %entry
  %len.0 = phi i32 [ %conv3, %if.then ], [ 1000, %entry ], !dbg !5033
    #dbg_value(i32 %len.0, !5030, !DIExpression(), !5033)
    #dbg_value(i32 %len.0, !1287, !DIExpression(), !5042)
    #dbg_value(ptr null, !1292, !DIExpression(), !5042)
  %2 = sext i32 %len.0 to i64, !dbg !5044
  %add2.i = add nsw i64 %2, 27, !dbg !5045
  %call.i = tail call noalias ptr @malloc(i64 noundef %add2.i) #24, !dbg !5046
    #dbg_value(ptr %call.i, !1294, !DIExpression(), !5042)
  %tobool.not.i = icmp eq ptr %call.i, null, !dbg !5047
  br i1 %tobool.not.i, label %x264_malloc.exit.thread, label %if.end7, !dbg !5048

x264_malloc.exit.thread:                          ; preds = %if.end
    #dbg_value(ptr null, !1292, !DIExpression(), !5042)
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %len.0), !dbg !5049
    #dbg_value(ptr null, !5032, !DIExpression(), !5033)
    #dbg_value(ptr null, !5031, !DIExpression(), !5033)
  br label %cleanup, !dbg !5050

if.end7:                                          ; preds = %if.end
  %add.ptr4.i = getelementptr inbounds i8, ptr %call.i, i64 27, !dbg !5051
    #dbg_value(ptr %add.ptr4.i, !1292, !DIExpression(), !5042)
  %3 = ptrtoint ptr %add.ptr4.i to i64, !dbg !5052
  %and.i = and i64 %3, 15, !dbg !5053
  %idx.neg.i = sub nsw i64 0, %and.i, !dbg !5054
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr4.i, i64 %idx.neg.i, !dbg !5054
    #dbg_value(ptr %add.ptr5.i, !1292, !DIExpression(), !5042)
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr5.i, i64 -8, !dbg !5055
  store ptr %call.i, ptr %add.ptr6.i, align 8, !dbg !5056
  %add.ptr8.i = getelementptr inbounds i8, ptr %add.ptr5.i, i64 -12, !dbg !5057
  store i32 %len.0, ptr %add.ptr8.i, align 4, !dbg !5058
    #dbg_value(ptr %add.ptr5.i, !5032, !DIExpression(), !5033)
    #dbg_value(ptr %add.ptr5.i, !5031, !DIExpression(), !5033)
  %tobool8.not = icmp eq i32 %b_res, 0, !dbg !5059
  br i1 %tobool8.not, label %if.end17, label %if.then9, !dbg !5061

if.then9:                                         ; preds = %if.end7
  %i_width = getelementptr inbounds i8, ptr %p, i64 20, !dbg !5062
  %4 = load i32, ptr %i_width, align 4, !dbg !5062
  %i_height = getelementptr inbounds i8, ptr %p, i64 24, !dbg !5064
  %5 = load i32, ptr %i_height, align 8, !dbg !5064
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr5.i, ptr noundef nonnull dereferenceable(1) @.str.158, i32 noundef %4, i32 noundef %5) #25, !dbg !5065
  %idx.ext = sext i32 %call10 to i64, !dbg !5066
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr5.i, i64 %idx.ext, !dbg !5066
    #dbg_value(ptr %add.ptr, !5032, !DIExpression(), !5033)
  %i_fps_num = getelementptr inbounds i8, ptr %p, i64 652, !dbg !5067
  %6 = load i32, ptr %i_fps_num, align 4, !dbg !5067
  %i_fps_den = getelementptr inbounds i8, ptr %p, i64 656, !dbg !5068
  %7 = load i32, ptr %i_fps_den, align 8, !dbg !5068
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(1) @.str.159, i32 noundef %6, i32 noundef %7) #25, !dbg !5069
  %idx.ext12 = sext i32 %call11 to i64, !dbg !5070
  %add.ptr13 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext12, !dbg !5070
    #dbg_value(ptr %add.ptr13, !5032, !DIExpression(), !5033)
  %i_timebase_num = getelementptr inbounds i8, ptr %p, i64 660, !dbg !5071
  %8 = load i32, ptr %i_timebase_num, align 4, !dbg !5071
  %i_timebase_den = getelementptr inbounds i8, ptr %p, i64 664, !dbg !5072
  %9 = load i32, ptr %i_timebase_den, align 8, !dbg !5072
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr13, ptr noundef nonnull dereferenceable(1) @.str.160, i32 noundef %8, i32 noundef %9) #25, !dbg !5073
  %idx.ext15 = sext i32 %call14 to i64, !dbg !5074
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr13, i64 %idx.ext15, !dbg !5074
    #dbg_value(ptr %add.ptr16, !5032, !DIExpression(), !5033)
  br label %if.end17, !dbg !5075

if.end17:                                         ; preds = %if.then9, %if.end7
  %s.0 = phi ptr [ %add.ptr16, %if.then9 ], [ %add.ptr5.i, %if.end7 ], !dbg !5033
    #dbg_value(ptr %s.0, !5032, !DIExpression(), !5033)
  %b_cabac = getelementptr inbounds i8, ptr %p, i64 128, !dbg !5076
  %10 = load i32, ptr %b_cabac, align 8, !dbg !5076
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.0, ptr noundef nonnull dereferenceable(1) @.str.161, i32 noundef %10) #25, !dbg !5077
  %idx.ext19 = sext i32 %call18 to i64, !dbg !5078
  %add.ptr20 = getelementptr inbounds i8, ptr %s.0, i64 %idx.ext19, !dbg !5078
    #dbg_value(ptr %add.ptr20, !5032, !DIExpression(), !5033)
  %i_frame_reference = getelementptr inbounds i8, ptr %p, i64 80, !dbg !5079
  %11 = load i32, ptr %i_frame_reference, align 8, !dbg !5079
  %call21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr20, ptr noundef nonnull dereferenceable(1) @.str.162, i32 noundef %11) #25, !dbg !5080
  %idx.ext22 = sext i32 %call21 to i64, !dbg !5081
  %add.ptr23 = getelementptr inbounds i8, ptr %add.ptr20, i64 %idx.ext22, !dbg !5081
    #dbg_value(ptr %add.ptr23, !5032, !DIExpression(), !5033)
  %b_deblocking_filter = getelementptr inbounds i8, ptr %p, i64 116, !dbg !5082
  %12 = load i32, ptr %b_deblocking_filter, align 4, !dbg !5082
  %i_deblocking_filter_alphac0 = getelementptr inbounds i8, ptr %p, i64 120, !dbg !5083
  %13 = load i32, ptr %i_deblocking_filter_alphac0, align 8, !dbg !5083
  %i_deblocking_filter_beta = getelementptr inbounds i8, ptr %p, i64 124, !dbg !5084
  %14 = load i32, ptr %i_deblocking_filter_beta, align 4, !dbg !5084
  %call24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr23, ptr noundef nonnull dereferenceable(1) @.str.163, i32 noundef %12, i32 noundef %13, i32 noundef %14) #25, !dbg !5085
  %idx.ext25 = sext i32 %call24 to i64, !dbg !5086
  %add.ptr26 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.ext25, !dbg !5086
    #dbg_value(ptr %add.ptr26, !5032, !DIExpression(), !5033)
  %analyse = getelementptr inbounds i8, ptr %p, i64 384, !dbg !5087
  %15 = load i32, ptr %analyse, align 8, !dbg !5088
  %inter = getelementptr inbounds i8, ptr %p, i64 388, !dbg !5089
  %16 = load i32, ptr %inter, align 4, !dbg !5089
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr26, ptr noundef nonnull dereferenceable(1) @.str.164, i32 noundef %15, i32 noundef %16) #25, !dbg !5090
  %idx.ext29 = sext i32 %call28 to i64, !dbg !5091
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr26, i64 %idx.ext29, !dbg !5091
    #dbg_value(ptr %add.ptr30, !5032, !DIExpression(), !5033)
  %i_me_method = getelementptr inbounds i8, ptr %p, i64 412, !dbg !5092
  %17 = load i32, ptr %i_me_method, align 4, !dbg !5092
  %idxprom = sext i32 %17 to i64, !dbg !5093
  %arrayidx = getelementptr inbounds [6 x ptr], ptr @x264_motion_est_names, i64 0, i64 %idxprom, !dbg !5093
  %18 = load ptr, ptr %arrayidx, align 8, !dbg !5093
  %call32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr30, ptr noundef nonnull dereferenceable(1) @.str.165, ptr noundef %18) #25, !dbg !5094
  %idx.ext33 = sext i32 %call32 to i64, !dbg !5095
  %add.ptr34 = getelementptr inbounds i8, ptr %add.ptr30, i64 %idx.ext33, !dbg !5095
    #dbg_value(ptr %add.ptr34, !5032, !DIExpression(), !5033)
  %i_subpel_refine = getelementptr inbounds i8, ptr %p, i64 428, !dbg !5096
  %19 = load i32, ptr %i_subpel_refine, align 4, !dbg !5096
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr34, ptr noundef nonnull dereferenceable(1) @.str.166, i32 noundef %19) #25, !dbg !5097
  %idx.ext37 = sext i32 %call36 to i64, !dbg !5098
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr34, i64 %idx.ext37, !dbg !5098
    #dbg_value(ptr %add.ptr38, !5032, !DIExpression(), !5033)
  %b_psy = getelementptr inbounds i8, ptr %p, i64 464, !dbg !5099
  %20 = load i32, ptr %b_psy, align 8, !dbg !5099
  %call40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr38, ptr noundef nonnull dereferenceable(1) @.str.167, i32 noundef %20) #25, !dbg !5100
  %idx.ext41 = sext i32 %call40 to i64, !dbg !5101
  %add.ptr42 = getelementptr inbounds i8, ptr %add.ptr38, i64 %idx.ext41, !dbg !5101
    #dbg_value(ptr %add.ptr42, !5032, !DIExpression(), !5033)
  %21 = load i32, ptr %b_psy, align 8, !dbg !5102
  %tobool45.not = icmp eq i32 %21, 0, !dbg !5104
  br i1 %tobool45.not, label %if.end54, label %if.then46, !dbg !5105

if.then46:                                        ; preds = %if.end17
  %f_psy_rd = getelementptr inbounds i8, ptr %p, i64 456, !dbg !5106
  %22 = load float, ptr %f_psy_rd, align 8, !dbg !5106
  %conv48 = fpext float %22 to double, !dbg !5107
  %f_psy_trellis = getelementptr inbounds i8, ptr %p, i64 460, !dbg !5108
  %23 = load float, ptr %f_psy_trellis, align 4, !dbg !5108
  %conv50 = fpext float %23 to double, !dbg !5109
  %call51 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr42, ptr noundef nonnull dereferenceable(1) @.str.168, double noundef %conv48, double noundef %conv50) #25, !dbg !5110
  %idx.ext52 = sext i32 %call51 to i64, !dbg !5111
  %add.ptr53 = getelementptr inbounds i8, ptr %add.ptr42, i64 %idx.ext52, !dbg !5111
    #dbg_value(ptr %add.ptr53, !5032, !DIExpression(), !5033)
  br label %if.end54, !dbg !5112

if.end54:                                         ; preds = %if.then46, %if.end17
  %s.1 = phi ptr [ %add.ptr53, %if.then46 ], [ %add.ptr42, %if.end17 ], !dbg !5033
    #dbg_value(ptr %s.1, !5032, !DIExpression(), !5033)
  %b_mixed_references = getelementptr inbounds i8, ptr %p, i64 436, !dbg !5113
  %24 = load i32, ptr %b_mixed_references, align 4, !dbg !5113
  %call56 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.1, ptr noundef nonnull dereferenceable(1) @.str.169, i32 noundef %24) #25, !dbg !5114
  %idx.ext57 = sext i32 %call56 to i64, !dbg !5115
  %add.ptr58 = getelementptr inbounds i8, ptr %s.1, i64 %idx.ext57, !dbg !5115
    #dbg_value(ptr %add.ptr58, !5032, !DIExpression(), !5033)
  %i_me_range = getelementptr inbounds i8, ptr %p, i64 416, !dbg !5116
  %25 = load i32, ptr %i_me_range, align 8, !dbg !5116
  %call60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr58, ptr noundef nonnull dereferenceable(1) @.str.170, i32 noundef %25) #25, !dbg !5117
  %idx.ext61 = sext i32 %call60 to i64, !dbg !5118
  %add.ptr62 = getelementptr inbounds i8, ptr %add.ptr58, i64 %idx.ext61, !dbg !5118
    #dbg_value(ptr %add.ptr62, !5032, !DIExpression(), !5033)
  %b_chroma_me = getelementptr inbounds i8, ptr %p, i64 432, !dbg !5119
  %26 = load i32, ptr %b_chroma_me, align 8, !dbg !5119
  %call64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr62, ptr noundef nonnull dereferenceable(1) @.str.171, i32 noundef %26) #25, !dbg !5120
  %idx.ext65 = sext i32 %call64 to i64, !dbg !5121
  %add.ptr66 = getelementptr inbounds i8, ptr %add.ptr62, i64 %idx.ext65, !dbg !5121
    #dbg_value(ptr %add.ptr66, !5032, !DIExpression(), !5033)
  %i_trellis = getelementptr inbounds i8, ptr %p, i64 440, !dbg !5122
  %27 = load i32, ptr %i_trellis, align 8, !dbg !5122
  %call68 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr66, ptr noundef nonnull dereferenceable(1) @.str.172, i32 noundef %27) #25, !dbg !5123
  %idx.ext69 = sext i32 %call68 to i64, !dbg !5124
  %add.ptr70 = getelementptr inbounds i8, ptr %add.ptr66, i64 %idx.ext69, !dbg !5124
    #dbg_value(ptr %add.ptr70, !5032, !DIExpression(), !5033)
  %b_transform_8x8 = getelementptr inbounds i8, ptr %p, i64 392, !dbg !5125
  %28 = load i32, ptr %b_transform_8x8, align 8, !dbg !5125
  %call72 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr70, ptr noundef nonnull dereferenceable(1) @.str.173, i32 noundef %28) #25, !dbg !5126
  %idx.ext73 = sext i32 %call72 to i64, !dbg !5127
  %add.ptr74 = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.ext73, !dbg !5127
    #dbg_value(ptr %add.ptr74, !5032, !DIExpression(), !5033)
  %i_cqm_preset = getelementptr inbounds i8, ptr %p, i64 144, !dbg !5128
  %29 = load i32, ptr %i_cqm_preset, align 8, !dbg !5128
  %call75 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr74, ptr noundef nonnull dereferenceable(1) @.str.174, i32 noundef %29) #25, !dbg !5129
  %idx.ext76 = sext i32 %call75 to i64, !dbg !5130
  %add.ptr77 = getelementptr inbounds i8, ptr %add.ptr74, i64 %idx.ext76, !dbg !5130
    #dbg_value(ptr %add.ptr77, !5032, !DIExpression(), !5033)
  %i_luma_deadzone = getelementptr inbounds i8, ptr %p, i64 468, !dbg !5131
  %30 = load i32, ptr %i_luma_deadzone, align 4, !dbg !5132
  %arrayidx82 = getelementptr inbounds i8, ptr %p, i64 472, !dbg !5133
  %31 = load i32, ptr %arrayidx82, align 4, !dbg !5133
  %call83 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr77, ptr noundef nonnull dereferenceable(1) @.str.175, i32 noundef %30, i32 noundef %31) #25, !dbg !5134
  %idx.ext84 = sext i32 %call83 to i64, !dbg !5135
  %add.ptr85 = getelementptr inbounds i8, ptr %add.ptr77, i64 %idx.ext84, !dbg !5135
    #dbg_value(ptr %add.ptr85, !5032, !DIExpression(), !5033)
  %b_fast_pskip = getelementptr inbounds i8, ptr %p, i64 444, !dbg !5136
  %32 = load i32, ptr %b_fast_pskip, align 4, !dbg !5136
  %call87 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr85, ptr noundef nonnull dereferenceable(1) @.str.176, i32 noundef %32) #25, !dbg !5137
  %idx.ext88 = sext i32 %call87 to i64, !dbg !5138
  %add.ptr89 = getelementptr inbounds i8, ptr %add.ptr85, i64 %idx.ext88, !dbg !5138
    #dbg_value(ptr %add.ptr89, !5032, !DIExpression(), !5033)
  %i_chroma_qp_offset = getelementptr inbounds i8, ptr %p, i64 408, !dbg !5139
  %33 = load i32, ptr %i_chroma_qp_offset, align 8, !dbg !5139
  %call91 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr89, ptr noundef nonnull dereferenceable(1) @.str.177, i32 noundef %33) #25, !dbg !5140
  %idx.ext92 = sext i32 %call91 to i64, !dbg !5141
  %add.ptr93 = getelementptr inbounds i8, ptr %add.ptr89, i64 %idx.ext92, !dbg !5141
    #dbg_value(ptr %add.ptr93, !5032, !DIExpression(), !5033)
  %i_threads = getelementptr inbounds i8, ptr %p, i64 4, !dbg !5142
  %34 = load i32, ptr %i_threads, align 4, !dbg !5142
  %call94 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr93, ptr noundef nonnull dereferenceable(1) @.str.178, i32 noundef %34) #25, !dbg !5143
  %idx.ext95 = sext i32 %call94 to i64, !dbg !5144
  %add.ptr96 = getelementptr inbounds i8, ptr %add.ptr93, i64 %idx.ext95, !dbg !5144
    #dbg_value(ptr %add.ptr96, !5032, !DIExpression(), !5033)
  %b_sliced_threads = getelementptr inbounds i8, ptr %p, i64 8, !dbg !5145
  %35 = load i32, ptr %b_sliced_threads, align 8, !dbg !5145
  %call97 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr96, ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %35) #25, !dbg !5146
  %idx.ext98 = sext i32 %call97 to i64, !dbg !5147
  %add.ptr99 = getelementptr inbounds i8, ptr %add.ptr96, i64 %idx.ext98, !dbg !5147
    #dbg_value(ptr %add.ptr99, !5032, !DIExpression(), !5033)
  %i_slice_count = getelementptr inbounds i8, ptr %p, i64 692, !dbg !5148
  %36 = load i32, ptr %i_slice_count, align 4, !dbg !5148
  %tobool100.not = icmp eq i32 %36, 0, !dbg !5150
  br i1 %tobool100.not, label %if.end106, label %if.then101, !dbg !5151

if.then101:                                       ; preds = %if.end54
  %call103 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr99, ptr noundef nonnull dereferenceable(1) @.str.180, i32 noundef %36) #25, !dbg !5152
  %idx.ext104 = sext i32 %call103 to i64, !dbg !5153
  %add.ptr105 = getelementptr inbounds i8, ptr %add.ptr99, i64 %idx.ext104, !dbg !5153
    #dbg_value(ptr %add.ptr105, !5032, !DIExpression(), !5033)
  br label %if.end106, !dbg !5154

if.end106:                                        ; preds = %if.then101, %if.end54
  %s.2 = phi ptr [ %add.ptr105, %if.then101 ], [ %add.ptr99, %if.end54 ], !dbg !5033
    #dbg_value(ptr %s.2, !5032, !DIExpression(), !5033)
  %i_slice_max_size = getelementptr inbounds i8, ptr %p, i64 684, !dbg !5155
  %37 = load i32, ptr %i_slice_max_size, align 4, !dbg !5155
  %tobool107.not = icmp eq i32 %37, 0, !dbg !5157
  br i1 %tobool107.not, label %if.end113, label %if.then108, !dbg !5158

if.then108:                                       ; preds = %if.end106
  %call110 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.2, ptr noundef nonnull dereferenceable(1) @.str.181, i32 noundef %37) #25, !dbg !5159
  %idx.ext111 = sext i32 %call110 to i64, !dbg !5160
  %add.ptr112 = getelementptr inbounds i8, ptr %s.2, i64 %idx.ext111, !dbg !5160
    #dbg_value(ptr %add.ptr112, !5032, !DIExpression(), !5033)
  br label %if.end113, !dbg !5161

if.end113:                                        ; preds = %if.then108, %if.end106
  %s.3 = phi ptr [ %add.ptr112, %if.then108 ], [ %s.2, %if.end106 ], !dbg !5033
    #dbg_value(ptr %s.3, !5032, !DIExpression(), !5033)
  %i_slice_max_mbs = getelementptr inbounds i8, ptr %p, i64 688, !dbg !5162
  %38 = load i32, ptr %i_slice_max_mbs, align 8, !dbg !5162
  %tobool114.not = icmp eq i32 %38, 0, !dbg !5164
  br i1 %tobool114.not, label %if.end120, label %if.then115, !dbg !5165

if.then115:                                       ; preds = %if.end113
  %call117 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.3, ptr noundef nonnull dereferenceable(1) @.str.182, i32 noundef %38) #25, !dbg !5166
  %idx.ext118 = sext i32 %call117 to i64, !dbg !5167
  %add.ptr119 = getelementptr inbounds i8, ptr %s.3, i64 %idx.ext118, !dbg !5167
    #dbg_value(ptr %add.ptr119, !5032, !DIExpression(), !5033)
  br label %if.end120, !dbg !5168

if.end120:                                        ; preds = %if.then115, %if.end113
  %s.4 = phi ptr [ %add.ptr119, %if.then115 ], [ %s.3, %if.end113 ], !dbg !5033
    #dbg_value(ptr %s.4, !5032, !DIExpression(), !5033)
  %i_noise_reduction = getelementptr inbounds i8, ptr %p, i64 452, !dbg !5169
  %39 = load i32, ptr %i_noise_reduction, align 4, !dbg !5169
  %call122 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.4, ptr noundef nonnull dereferenceable(1) @.str.183, i32 noundef %39) #25, !dbg !5170
  %idx.ext123 = sext i32 %call122 to i64, !dbg !5171
  %add.ptr124 = getelementptr inbounds i8, ptr %s.4, i64 %idx.ext123, !dbg !5171
    #dbg_value(ptr %add.ptr124, !5032, !DIExpression(), !5033)
  %b_dct_decimate = getelementptr inbounds i8, ptr %p, i64 448, !dbg !5172
  %40 = load i32, ptr %b_dct_decimate, align 8, !dbg !5172
  %call126 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr124, ptr noundef nonnull dereferenceable(1) @.str.184, i32 noundef %40) #25, !dbg !5173
  %idx.ext127 = sext i32 %call126 to i64, !dbg !5174
  %add.ptr128 = getelementptr inbounds i8, ptr %add.ptr124, i64 %idx.ext127, !dbg !5174
    #dbg_value(ptr %add.ptr128, !5032, !DIExpression(), !5033)
  %b_interlaced = getelementptr inbounds i8, ptr %p, i64 136, !dbg !5175
  %41 = load i32, ptr %b_interlaced, align 8, !dbg !5175
  %tobool129.not = icmp eq i32 %41, 0, !dbg !5176
  br i1 %tobool129.not, label %cond.end, label %cond.true, !dbg !5176

cond.true:                                        ; preds = %if.end120
  %b_tff = getelementptr inbounds i8, ptr %p, i64 672, !dbg !5177
  %42 = load i32, ptr %b_tff, align 8, !dbg !5177
  %tobool130.not = icmp eq i32 %42, 0, !dbg !5178
  %cond = select i1 %tobool130.not, ptr @.str.57, ptr @.str.56, !dbg !5178
  br label %cond.end, !dbg !5176

cond.end:                                         ; preds = %if.end120, %cond.true
  %cond131 = phi ptr [ %cond, %cond.true ], [ @.str.186, %if.end120 ], !dbg !5176
  %call132 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr128, ptr noundef nonnull dereferenceable(1) @.str.185, ptr noundef nonnull %cond131) #25, !dbg !5179
  %idx.ext133 = sext i32 %call132 to i64, !dbg !5180
  %add.ptr134 = getelementptr inbounds i8, ptr %add.ptr128, i64 %idx.ext133, !dbg !5180
    #dbg_value(ptr %add.ptr134, !5032, !DIExpression(), !5033)
  %b_constrained_intra = getelementptr inbounds i8, ptr %p, i64 140, !dbg !5181
  %43 = load i32, ptr %b_constrained_intra, align 4, !dbg !5181
  %call135 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr134, ptr noundef nonnull dereferenceable(1) @.str.187, i32 noundef %43) #25, !dbg !5182
  %idx.ext136 = sext i32 %call135 to i64, !dbg !5183
  %add.ptr137 = getelementptr inbounds i8, ptr %add.ptr134, i64 %idx.ext136, !dbg !5183
    #dbg_value(ptr %add.ptr137, !5032, !DIExpression(), !5033)
  %i_bframe = getelementptr inbounds i8, ptr %p, i64 100, !dbg !5184
  %44 = load i32, ptr %i_bframe, align 4, !dbg !5184
  %call138 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr137, ptr noundef nonnull dereferenceable(1) @.str.188, i32 noundef %44) #25, !dbg !5185
  %idx.ext139 = sext i32 %call138 to i64, !dbg !5186
  %add.ptr140 = getelementptr inbounds i8, ptr %add.ptr137, i64 %idx.ext139, !dbg !5186
    #dbg_value(ptr %add.ptr140, !5032, !DIExpression(), !5033)
  %45 = load i32, ptr %i_bframe, align 4, !dbg !5187
  %tobool142.not = icmp eq i32 %45, 0, !dbg !5189
  br i1 %tobool142.not, label %if.end149, label %if.then143, !dbg !5190

if.then143:                                       ; preds = %cond.end
  %i_bframe_pyramid = getelementptr inbounds i8, ptr %p, i64 112, !dbg !5191
  %46 = load i32, ptr %i_bframe_pyramid, align 8, !dbg !5191
  %i_bframe_adaptive = getelementptr inbounds i8, ptr %p, i64 104, !dbg !5193
  %47 = load i32, ptr %i_bframe_adaptive, align 8, !dbg !5193
  %i_bframe_bias = getelementptr inbounds i8, ptr %p, i64 108, !dbg !5194
  %48 = load i32, ptr %i_bframe_bias, align 4, !dbg !5194
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %p, i64 404, !dbg !5195
  %49 = load i32, ptr %i_direct_mv_pred, align 4, !dbg !5195
  %b_weighted_bipred = getelementptr inbounds i8, ptr %p, i64 400, !dbg !5196
  %50 = load i32, ptr %b_weighted_bipred, align 8, !dbg !5196
  %call146 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr140, ptr noundef nonnull dereferenceable(1) @.str.189, i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %50) #25, !dbg !5197
  %idx.ext147 = sext i32 %call146 to i64, !dbg !5198
  %add.ptr148 = getelementptr inbounds i8, ptr %add.ptr140, i64 %idx.ext147, !dbg !5198
    #dbg_value(ptr %add.ptr148, !5032, !DIExpression(), !5033)
  br label %if.end149, !dbg !5199

if.end149:                                        ; preds = %if.then143, %cond.end
  %s.5 = phi ptr [ %add.ptr148, %if.then143 ], [ %add.ptr140, %cond.end ], !dbg !5033
    #dbg_value(ptr %s.5, !5032, !DIExpression(), !5033)
  %i_weighted_pred = getelementptr inbounds i8, ptr %p, i64 396, !dbg !5200
  %51 = load i32, ptr %i_weighted_pred, align 4, !dbg !5200
  %spec.select = tail call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !5201
  %call158 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.5, ptr noundef nonnull dereferenceable(1) @.str.190, i32 noundef %spec.select) #25, !dbg !5202
  %idx.ext159 = sext i32 %call158 to i64, !dbg !5203
  %add.ptr160 = getelementptr inbounds i8, ptr %s.5, i64 %idx.ext159, !dbg !5203
    #dbg_value(ptr %add.ptr160, !5032, !DIExpression(), !5033)
  %i_keyint_max = getelementptr inbounds i8, ptr %p, i64 84, !dbg !5204
  %52 = load i32, ptr %i_keyint_max, align 4, !dbg !5204
  %i_keyint_min = getelementptr inbounds i8, ptr %p, i64 88, !dbg !5205
  %53 = load i32, ptr %i_keyint_min, align 8, !dbg !5205
  %i_scenecut_threshold = getelementptr inbounds i8, ptr %p, i64 92, !dbg !5206
  %54 = load i32, ptr %i_scenecut_threshold, align 4, !dbg !5206
  %b_intra_refresh = getelementptr inbounds i8, ptr %p, i64 96, !dbg !5207
  %55 = load i32, ptr %b_intra_refresh, align 8, !dbg !5207
  %call161 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr160, ptr noundef nonnull dereferenceable(1) @.str.191, i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %55) #25, !dbg !5208
  %idx.ext162 = sext i32 %call161 to i64, !dbg !5209
  %add.ptr163 = getelementptr inbounds i8, ptr %add.ptr160, i64 %idx.ext162, !dbg !5209
    #dbg_value(ptr %add.ptr163, !5032, !DIExpression(), !5033)
  %b_mb_tree = getelementptr inbounds i8, ptr %p, i64 552, !dbg !5210
  %56 = load i32, ptr %b_mb_tree, align 8, !dbg !5210
  %tobool165.not = icmp eq i32 %56, 0, !dbg !5212
  br i1 %tobool165.not, label %lor.lhs.false, label %if.then168, !dbg !5213

lor.lhs.false:                                    ; preds = %if.end149
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %p, i64 528, !dbg !5214
  %57 = load i32, ptr %i_vbv_buffer_size, align 8, !dbg !5214
  %tobool167.not = icmp eq i32 %57, 0, !dbg !5215
  br i1 %tobool167.not, label %if.end173, label %if.then168, !dbg !5216

if.then168:                                       ; preds = %lor.lhs.false, %if.end149
  %i_lookahead = getelementptr inbounds i8, ptr %p, i64 556, !dbg !5217
  %58 = load i32, ptr %i_lookahead, align 4, !dbg !5217
  %call170 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr163, ptr noundef nonnull dereferenceable(1) @.str.192, i32 noundef %58) #25, !dbg !5218
  %idx.ext171 = sext i32 %call170 to i64, !dbg !5219
  %add.ptr172 = getelementptr inbounds i8, ptr %add.ptr163, i64 %idx.ext171, !dbg !5219
    #dbg_value(ptr %add.ptr172, !5032, !DIExpression(), !5033)
  br label %if.end173, !dbg !5220

if.end173:                                        ; preds = %if.then168, %lor.lhs.false
  %s.6 = phi ptr [ %add.ptr172, %if.then168 ], [ %add.ptr163, %lor.lhs.false ], !dbg !5033
    #dbg_value(ptr %s.6, !5032, !DIExpression(), !5033)
  %59 = load i32, ptr %rc, align 8, !dbg !5221
  %cmp175 = icmp eq i32 %59, 2, !dbg !5222
  br i1 %cmp175, label %cond.true177, label %cond.false189, !dbg !5223

cond.true177:                                     ; preds = %if.end173
  %b_stat_read = getelementptr inbounds i8, ptr %p, i64 576, !dbg !5224
  %60 = load i32, ptr %b_stat_read, align 8, !dbg !5224
  %tobool179.not = icmp eq i32 %60, 0, !dbg !5225
  br i1 %tobool179.not, label %cond.false181, label %cond.end195, !dbg !5225

cond.false181:                                    ; preds = %cond.true177
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %p, i64 524, !dbg !5226
  %61 = load i32, ptr %i_vbv_max_bitrate, align 4, !dbg !5226
  %i_bitrate = getelementptr inbounds i8, ptr %p, i64 508, !dbg !5227
  %62 = load i32, ptr %i_bitrate, align 4, !dbg !5227
  %cmp184 = icmp eq i32 %61, %62, !dbg !5228
  %cond186 = select i1 %cmp184, ptr @.str.195, ptr @.str.196, !dbg !5229
  br label %cond.end195, !dbg !5225

cond.false189:                                    ; preds = %if.end173
  %cmp192 = icmp eq i32 %59, 1, !dbg !5230
  %cond194 = select i1 %cmp192, ptr @.str.117, ptr @.str.197, !dbg !5231
  br label %cond.end195, !dbg !5223

cond.end195:                                      ; preds = %cond.false181, %cond.true177, %cond.false189
  %cond196 = phi ptr [ %cond194, %cond.false189 ], [ %cond186, %cond.false181 ], [ @.str.194, %cond.true177 ], !dbg !5223
  %63 = load i32, ptr %b_mb_tree, align 8, !dbg !5232
  %call199 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.6, ptr noundef nonnull dereferenceable(1) @.str.193, ptr noundef nonnull %cond196, i32 noundef %63) #25, !dbg !5233
  %idx.ext200 = sext i32 %call199 to i64, !dbg !5234
  %add.ptr201 = getelementptr inbounds i8, ptr %s.6, i64 %idx.ext200, !dbg !5234
    #dbg_value(ptr %add.ptr201, !5032, !DIExpression(), !5033)
  %64 = load i32, ptr %rc, align 8, !dbg !5235
  switch i32 %64, label %if.then293 [
    i32 0, label %if.then278
    i32 1, label %if.then216
    i32 2, label %if.else
  ], !dbg !5237

if.then216:                                       ; preds = %cond.end195
  %f_rf_constant = getelementptr inbounds i8, ptr %p, i64 512, !dbg !5238
  %65 = load float, ptr %f_rf_constant, align 8, !dbg !5238
  %conv218 = fpext float %65 to double, !dbg !5241
  %call219 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr201, ptr noundef nonnull dereferenceable(1) @.str.198, double noundef %conv218) #25, !dbg !5242
    #dbg_value(!DIArgList(ptr %add.ptr201, i32 %call219), !5032, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !5033)
  br label %if.end229, !dbg !5243

if.else:                                          ; preds = %cond.end195
  %i_bitrate223 = getelementptr inbounds i8, ptr %p, i64 508, !dbg !5244
  %66 = load i32, ptr %i_bitrate223, align 4, !dbg !5244
  %f_rate_tolerance = getelementptr inbounds i8, ptr %p, i64 520, !dbg !5245
  %67 = load float, ptr %f_rate_tolerance, align 8, !dbg !5245
  %conv225 = fpext float %67 to double, !dbg !5246
  %call226 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr201, ptr noundef nonnull dereferenceable(1) @.str.199, i32 noundef %66, double noundef %conv225) #25, !dbg !5247
    #dbg_value(!DIArgList(ptr %add.ptr201, i32 %call226), !5032, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !5033)
  br label %if.end229

if.end229:                                        ; preds = %if.else, %if.then216
  %idx.ext220.pn.in = phi i32 [ %call219, %if.then216 ], [ %call226, %if.else ]
  %idx.ext220.pn = sext i32 %idx.ext220.pn.in to i64, !dbg !5248
  %s.7 = getelementptr inbounds i8, ptr %add.ptr201, i64 %idx.ext220.pn, !dbg !5248
    #dbg_value(ptr %s.7, !5032, !DIExpression(), !5033)
  %f_qcompress = getelementptr inbounds i8, ptr %p, i64 592, !dbg !5249
  %68 = load float, ptr %f_qcompress, align 8, !dbg !5249
  %conv231 = fpext float %68 to double, !dbg !5250
  %i_qp_min = getelementptr inbounds i8, ptr %p, i64 496, !dbg !5251
  %69 = load i32, ptr %i_qp_min, align 8, !dbg !5251
  %i_qp_max = getelementptr inbounds i8, ptr %p, i64 500, !dbg !5252
  %70 = load i32, ptr %i_qp_max, align 4, !dbg !5252
  %i_qp_step = getelementptr inbounds i8, ptr %p, i64 504, !dbg !5253
  %71 = load i32, ptr %i_qp_step, align 8, !dbg !5253
  %call235 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.7, ptr noundef nonnull dereferenceable(1) @.str.200, double noundef %conv231, i32 noundef %69, i32 noundef %70, i32 noundef %71) #25, !dbg !5254
  %idx.ext236 = sext i32 %call235 to i64, !dbg !5255
  %add.ptr237 = getelementptr inbounds i8, ptr %s.7, i64 %idx.ext236, !dbg !5255
    #dbg_value(ptr %add.ptr237, !5032, !DIExpression(), !5033)
  %b_stat_read239 = getelementptr inbounds i8, ptr %p, i64 576, !dbg !5256
  %72 = load i32, ptr %b_stat_read239, align 8, !dbg !5256
  %tobool240.not = icmp eq i32 %72, 0, !dbg !5258
  br i1 %tobool240.not, label %if.end249, label %if.then241, !dbg !5259

if.then241:                                       ; preds = %if.end229
  %f_complexity_blur = getelementptr inbounds i8, ptr %p, i64 600, !dbg !5260
  %73 = load float, ptr %f_complexity_blur, align 8, !dbg !5260
  %conv243 = fpext float %73 to double, !dbg !5261
  %f_qblur = getelementptr inbounds i8, ptr %p, i64 596, !dbg !5262
  %74 = load float, ptr %f_qblur, align 4, !dbg !5262
  %conv245 = fpext float %74 to double, !dbg !5263
  %call246 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr237, ptr noundef nonnull dereferenceable(1) @.str.201, double noundef %conv243, double noundef %conv245) #25, !dbg !5264
  %idx.ext247 = sext i32 %call246 to i64, !dbg !5265
  %add.ptr248 = getelementptr inbounds i8, ptr %add.ptr237, i64 %idx.ext247, !dbg !5265
    #dbg_value(ptr %add.ptr248, !5032, !DIExpression(), !5033)
  br label %if.end249, !dbg !5266

if.end249:                                        ; preds = %if.then241, %if.end229
  %s.8 = phi ptr [ %add.ptr248, %if.then241 ], [ %add.ptr237, %if.end229 ], !dbg !5267
    #dbg_value(ptr %s.8, !5032, !DIExpression(), !5033)
  %i_vbv_buffer_size251 = getelementptr inbounds i8, ptr %p, i64 528, !dbg !5268
  %75 = load i32, ptr %i_vbv_buffer_size251, align 8, !dbg !5268
  %tobool252.not = icmp eq i32 %75, 0, !dbg !5270
  br i1 %tobool252.not, label %if.end284thread-pre-split, label %if.then253, !dbg !5271

if.then253:                                       ; preds = %if.end249
  %i_vbv_max_bitrate255 = getelementptr inbounds i8, ptr %p, i64 524, !dbg !5272
  %76 = load i32, ptr %i_vbv_max_bitrate255, align 4, !dbg !5272
  %call258 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.8, ptr noundef nonnull dereferenceable(1) @.str.202, i32 noundef %76, i32 noundef %75) #25, !dbg !5274
  %idx.ext259 = sext i32 %call258 to i64, !dbg !5275
  %add.ptr260 = getelementptr inbounds i8, ptr %s.8, i64 %idx.ext259, !dbg !5275
    #dbg_value(ptr %add.ptr260, !5032, !DIExpression(), !5033)
  %77 = load i32, ptr %rc, align 8, !dbg !5276
  %cmp263 = icmp eq i32 %77, 1, !dbg !5278
  br i1 %cmp263, label %if.then265, label %if.end284, !dbg !5279

if.then265:                                       ; preds = %if.then253
  %f_rf_constant_max = getelementptr inbounds i8, ptr %p, i64 516, !dbg !5280
  %78 = load float, ptr %f_rf_constant_max, align 4, !dbg !5280
  %conv267 = fpext float %78 to double, !dbg !5281
  %call268 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr260, ptr noundef nonnull dereferenceable(1) @.str.203, double noundef %conv267) #25, !dbg !5282
  %idx.ext269 = sext i32 %call268 to i64, !dbg !5283
  %add.ptr270 = getelementptr inbounds i8, ptr %add.ptr260, i64 %idx.ext269, !dbg !5283
    #dbg_value(ptr %add.ptr270, !5032, !DIExpression(), !5033)
  br label %if.end284thread-pre-split, !dbg !5284

if.then278:                                       ; preds = %cond.end195
  %i_qp_constant = getelementptr inbounds i8, ptr %p, i64 492, !dbg !5285
  %79 = load i32, ptr %i_qp_constant, align 4, !dbg !5285
  %call280 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr201, ptr noundef nonnull dereferenceable(1) @.str.204, i32 noundef %79) #25, !dbg !5287
  %idx.ext281 = sext i32 %call280 to i64, !dbg !5288
  %add.ptr282 = getelementptr inbounds i8, ptr %add.ptr201, i64 %idx.ext281, !dbg !5288
    #dbg_value(ptr %add.ptr282, !5032, !DIExpression(), !5033)
  br label %if.end284thread-pre-split, !dbg !5289

if.end284thread-pre-split:                        ; preds = %if.then265, %if.end249, %if.then278
  %s.9.ph = phi ptr [ %add.ptr282, %if.then278 ], [ %s.8, %if.end249 ], [ %add.ptr270, %if.then265 ]
  %.pr = load i32, ptr %rc, align 8, !dbg !5290
  br label %if.end284, !dbg !5290

if.end284:                                        ; preds = %if.end284thread-pre-split, %if.then253
  %80 = phi i32 [ %.pr, %if.end284thread-pre-split ], [ %77, %if.then253 ], !dbg !5290
  %s.9 = phi ptr [ %s.9.ph, %if.end284thread-pre-split ], [ %add.ptr260, %if.then253 ], !dbg !5033
    #dbg_value(ptr %s.9, !5032, !DIExpression(), !5033)
  %cmp287 = icmp eq i32 %80, 0, !dbg !5292
  br i1 %cmp287, label %land.lhs.true, label %if.then293, !dbg !5293

land.lhs.true:                                    ; preds = %if.end284
  %i_qp_constant290 = getelementptr inbounds i8, ptr %p, i64 492, !dbg !5294
  %81 = load i32, ptr %i_qp_constant290, align 4, !dbg !5294
  %cmp291 = icmp eq i32 %81, 0, !dbg !5295
  br i1 %cmp291, label %if.end344, label %if.then293, !dbg !5296

if.then293:                                       ; preds = %cond.end195, %land.lhs.true, %if.end284
  %s.9567 = phi ptr [ %s.9, %land.lhs.true ], [ %s.9, %if.end284 ], [ %add.ptr201, %cond.end195 ]
  %f_ip_factor = getelementptr inbounds i8, ptr %p, i64 536, !dbg !5297
  %82 = load float, ptr %f_ip_factor, align 8, !dbg !5297
  %conv295 = fpext float %82 to double, !dbg !5299
  %call296 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.9567, ptr noundef nonnull dereferenceable(1) @.str.205, double noundef %conv295) #25, !dbg !5300
  %idx.ext297 = sext i32 %call296 to i64, !dbg !5301
  %add.ptr298 = getelementptr inbounds i8, ptr %s.9567, i64 %idx.ext297, !dbg !5301
    #dbg_value(ptr %add.ptr298, !5032, !DIExpression(), !5033)
  %83 = load i32, ptr %i_bframe, align 4, !dbg !5302
  %tobool300.not = icmp eq i32 %83, 0, !dbg !5304
  br i1 %tobool300.not, label %if.end311, label %land.lhs.true301, !dbg !5305

land.lhs.true301:                                 ; preds = %if.then293
  %84 = load i32, ptr %b_mb_tree, align 8, !dbg !5306
  %tobool304.not = icmp eq i32 %84, 0, !dbg !5307
  br i1 %tobool304.not, label %if.then305, label %if.end311, !dbg !5308

if.then305:                                       ; preds = %land.lhs.true301
  %f_pb_factor = getelementptr inbounds i8, ptr %p, i64 540, !dbg !5309
  %85 = load float, ptr %f_pb_factor, align 4, !dbg !5309
  %conv307 = fpext float %85 to double, !dbg !5310
  %call308 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr298, ptr noundef nonnull dereferenceable(1) @.str.206, double noundef %conv307) #25, !dbg !5311
  %idx.ext309 = sext i32 %call308 to i64, !dbg !5312
  %add.ptr310 = getelementptr inbounds i8, ptr %add.ptr298, i64 %idx.ext309, !dbg !5312
    #dbg_value(ptr %add.ptr310, !5032, !DIExpression(), !5033)
  br label %if.end311, !dbg !5313

if.end311:                                        ; preds = %if.then305, %land.lhs.true301, %if.then293
  %s.10 = phi ptr [ %add.ptr298, %land.lhs.true301 ], [ %add.ptr310, %if.then305 ], [ %add.ptr298, %if.then293 ], !dbg !5314
    #dbg_value(ptr %s.10, !5032, !DIExpression(), !5033)
  %i_aq_mode = getelementptr inbounds i8, ptr %p, i64 544, !dbg !5315
  %86 = load i32, ptr %i_aq_mode, align 8, !dbg !5315
  %call313 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.10, ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %86) #25, !dbg !5316
  %idx.ext314 = sext i32 %call313 to i64, !dbg !5317
  %add.ptr315 = getelementptr inbounds i8, ptr %s.10, i64 %idx.ext314, !dbg !5317
    #dbg_value(ptr %add.ptr315, !5032, !DIExpression(), !5033)
  %87 = load i32, ptr %i_aq_mode, align 8, !dbg !5318
  %tobool318.not = icmp eq i32 %87, 0, !dbg !5320
  br i1 %tobool318.not, label %if.end325, label %if.then319, !dbg !5321

if.then319:                                       ; preds = %if.end311
  %f_aq_strength = getelementptr inbounds i8, ptr %p, i64 548, !dbg !5322
  %88 = load float, ptr %f_aq_strength, align 4, !dbg !5322
  %conv321 = fpext float %88 to double, !dbg !5323
  %call322 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr315, ptr noundef nonnull dereferenceable(1) @.str.208, double noundef %conv321) #25, !dbg !5324
  %idx.ext323 = sext i32 %call322 to i64, !dbg !5325
  %add.ptr324 = getelementptr inbounds i8, ptr %add.ptr315, i64 %idx.ext323, !dbg !5325
    #dbg_value(ptr %add.ptr324, !5032, !DIExpression(), !5033)
  br label %if.end325, !dbg !5326

if.end325:                                        ; preds = %if.then319, %if.end311
  %s.11 = phi ptr [ %add.ptr324, %if.then319 ], [ %add.ptr315, %if.end311 ], !dbg !5314
    #dbg_value(ptr %s.11, !5032, !DIExpression(), !5033)
  %89 = load ptr, ptr %psz_zones, align 8, !dbg !5327
  %tobool328.not = icmp eq ptr %89, null, !dbg !5329
  br i1 %tobool328.not, label %if.else335, label %if.then329, !dbg !5330

if.then329:                                       ; preds = %if.end325
  %call332 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.11, ptr noundef nonnull dereferenceable(1) @.str.209, ptr noundef nonnull %89) #25, !dbg !5331
  %idx.ext333 = sext i32 %call332 to i64, !dbg !5332
  %add.ptr334 = getelementptr inbounds i8, ptr %s.11, i64 %idx.ext333, !dbg !5332
    #dbg_value(ptr %add.ptr334, !5032, !DIExpression(), !5033)
  br label %if.end344, !dbg !5333

if.else335:                                       ; preds = %if.end325
  %i_zones = getelementptr inbounds i8, ptr %p, i64 616, !dbg !5334
  %90 = load i32, ptr %i_zones, align 8, !dbg !5334
  %tobool337.not = icmp eq i32 %90, 0, !dbg !5336
  br i1 %tobool337.not, label %if.end344, label %if.then338, !dbg !5337

if.then338:                                       ; preds = %if.else335
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %s.11, ptr noundef nonnull align 1 dereferenceable(7) @.str.210, i64 7, i1 false), !dbg !5338
  %add.ptr341 = getelementptr inbounds i8, ptr %s.11, i64 6, !dbg !5339
    #dbg_value(ptr %add.ptr341, !5032, !DIExpression(), !5033)
  br label %if.end344, !dbg !5340

if.end344:                                        ; preds = %if.then329, %if.then338, %if.else335, %land.lhs.true
  %s.12 = phi ptr [ %s.9, %land.lhs.true ], [ %add.ptr334, %if.then329 ], [ %add.ptr341, %if.then338 ], [ %s.11, %if.else335 ], !dbg !5033
    #dbg_value(ptr %s.12, !5032, !DIExpression(), !5033)
  %i_vbv_buffer_size346 = getelementptr inbounds i8, ptr %p, i64 528, !dbg !5341
  %91 = load i32, ptr %i_vbv_buffer_size346, align 8, !dbg !5341
  %tobool347.not = icmp eq i32 %91, 0, !dbg !5343
  br i1 %tobool347.not, label %cleanup, label %if.then348, !dbg !5344

if.then348:                                       ; preds = %if.end344
  %i_nal_hrd = getelementptr inbounds i8, ptr %p, i64 40, !dbg !5345
  %92 = load i32, ptr %i_nal_hrd, align 8, !dbg !5345
  %idxprom349 = sext i32 %92 to i64, !dbg !5346
  %arrayidx350 = getelementptr inbounds [4 x ptr], ptr @x264_nal_hrd_names, i64 0, i64 %idxprom349, !dbg !5346
  %93 = load ptr, ptr %arrayidx350, align 8, !dbg !5346
  %call351 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %s.12, ptr noundef nonnull dereferenceable(1) @.str.211, ptr noundef %93) #25, !dbg !5347
    #dbg_value(!DIArgList(ptr %s.12, i32 %call351), !5032, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !5033)
  br label %cleanup, !dbg !5348

cleanup:                                          ; preds = %x264_malloc.exit.thread, %if.end344, %if.then348
  %retval.0 = phi ptr [ %add.ptr5.i, %if.then348 ], [ %add.ptr5.i, %if.end344 ], [ null, %x264_malloc.exit.thread ], !dbg !5033
  ret ptr %retval.0, !dbg !5349
}

; Function Attrs: nofree nounwind
declare !dbg !5350 noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare !dbg !5353 ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !5354 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !5359 double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !5362 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare !dbg !5365 noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #14

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

!llvm.dbg.cu = !{!94}
!llvm.module.flags = !{!711, !712, !713, !714, !715, !716, !717}
!llvm.ident = !{!718}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "x264_src/common/common.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "7038d92c9e1dfabe6d4ec5c8e7bcfb78")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 430, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 46)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 443, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 51)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 445, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 5)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 450, type: !24, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 456, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 21)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 462, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 37)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 538, type: !24, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 556, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 6)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 563, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 4)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 566, type: !24, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 574, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 2)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 587, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 8)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 594, type: !3, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 596, type: !3, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 603, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 14)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 603, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 16)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !43, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 10)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 612, type: !48, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 614, type: !43, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 615, type: !43, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 617, type: !9, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "x264_overscan_names", scope: !94, file: !113, line: 115, type: !674, isLocal: true, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !123, globals: !133, splitDebugInlining: false, nameTableKind: None)
!95 = !{!96, !112}
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !97, line: 46, baseType: !98, size: 32, elements: !99)
!97 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!100 = !DIEnumerator(name: "_ISupper", value: 256)
!101 = !DIEnumerator(name: "_ISlower", value: 512)
!102 = !DIEnumerator(name: "_ISalpha", value: 1024)
!103 = !DIEnumerator(name: "_ISdigit", value: 2048)
!104 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!105 = !DIEnumerator(name: "_ISspace", value: 8192)
!106 = !DIEnumerator(name: "_ISprint", value: 16384)
!107 = !DIEnumerator(name: "_ISgraph", value: 32768)
!108 = !DIEnumerator(name: "_ISblank", value: 1)
!109 = !DIEnumerator(name: "_IScntrl", value: 2)
!110 = !DIEnumerator(name: "_ISpunct", value: 4)
!111 = !DIEnumerator(name: "_ISalnum", value: 8)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pic_struct_e", file: !113, line: 483, baseType: !98, size: 32, elements: !114)
!113 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122}
!115 = !DIEnumerator(name: "PIC_STRUCT_AUTO", value: 0)
!116 = !DIEnumerator(name: "PIC_STRUCT_PROGRESSIVE", value: 1)
!117 = !DIEnumerator(name: "PIC_STRUCT_TOP_BOTTOM", value: 4)
!118 = !DIEnumerator(name: "PIC_STRUCT_BOTTOM_TOP", value: 5)
!119 = !DIEnumerator(name: "PIC_STRUCT_TOP_BOTTOM_TOP", value: 6)
!120 = !DIEnumerator(name: "PIC_STRUCT_BOTTOM_TOP_BOTTOM", value: 7)
!121 = !DIEnumerator(name: "PIC_STRUCT_DOUBLE", value: 8)
!122 = !DIEnumerator(name: "PIC_STRUCT_TRIPLE", value: 9)
!123 = !{!124, !125, !126, !127, !128, !131, !132}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!127 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !129, line: 87, baseType: !130)
!129 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!130 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!133 = !{!0, !7, !12, !17, !22, !27, !29, !34, !39, !134, !136, !41, !46, !51, !53, !58, !63, !65, !67, !72, !77, !79, !84, !86, !88, !90, !141, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !169, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !473, !475, !477, !479, !481, !483, !485, !487, !492, !494, !499, !501, !506, !508, !510, !512, !514, !516, !518, !520, !525, !530, !532, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !600, !602, !604, !606, !608, !92, !610, !612, !614, !616, !618, !620, !626, !628, !630, !633, !638, !640, !642, !644, !646, !648, !651, !653, !655, !657, !660, !662, !664, !666, !668, !670, !672, !675, !677, !679, !682, !684, !686, !688, !690, !692, !695, !697, !699, !701, !703, !705, !707, !709}
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 552, type: !48, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 553, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 3)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 619, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 12)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 621, type: !81, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 623, type: !81, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 625, type: !9, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 627, type: !143, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 629, type: !81, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 634, type: !48, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 636, type: !43, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 645, type: !48, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 645, type: !9, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 7)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 653, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 11)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 653, type: !171, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 659, type: !9, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 668, type: !69, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 670, type: !60, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !2, line: 672, type: !60, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 681, type: !166, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 683, type: !81, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 692, type: !138, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 694, type: !166, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 694, type: !60, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 697, type: !43, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 701, type: !138, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 709, type: !3, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 711, type: !69, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 713, type: !166, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 715, type: !43, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 717, type: !81, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 719, type: !171, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 721, type: !48, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 723, type: !48, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 728, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 18)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !2, line: 730, type: !48, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !2, line: 732, type: !24, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 734, type: !48, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 739, type: !60, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !2, line: 741, type: !24, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !2, line: 749, type: !24, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !2, line: 755, type: !43, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !2, line: 761, type: !43, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !2, line: 767, type: !166, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !2, line: 772, type: !166, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 777, type: !166, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 782, type: !166, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !2, line: 787, type: !43, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 792, type: !43, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !2, line: 797, type: !48, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !2, line: 803, type: !9, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !2, line: 805, type: !60, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !2, line: 805, type: !171, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !2, line: 808, type: !24, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 809, type: !48, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !2, line: 811, type: !24, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !2, line: 812, type: !24, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !2, line: 813, type: !24, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !2, line: 814, type: !24, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !2, line: 815, type: !24, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 817, type: !166, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !2, line: 819, type: !60, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !2, line: 819, type: !9, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !2, line: 821, type: !60, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !2, line: 823, type: !166, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 823, type: !143, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 825, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 17)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !2, line: 827, type: !138, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 829, type: !60, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 829, type: !9, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 831, type: !60, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !2, line: 831, type: !9, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !2, line: 833, type: !3, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !2, line: 833, type: !74, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !2, line: 835, type: !43, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !2, line: 835, type: !24, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !2, line: 837, type: !166, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 839, type: !43, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !2, line: 840, type: !43, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !2, line: 841, type: !43, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !2, line: 843, type: !138, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !2, line: 853, type: !48, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 855, type: !81, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !2, line: 857, type: !171, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !2, line: 859, type: !60, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !2, line: 861, type: !171, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !2, line: 863, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 13)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !2, line: 865, type: !3, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !2, line: 867, type: !3, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !2, line: 869, type: !138, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 871, type: !60, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !2, line: 876, type: !138, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 876, type: !143, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 881, type: !48, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 886, type: !60, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 888, type: !326, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 890, type: !43, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 890, type: !166, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 892, type: !43, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 892, type: !166, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 894, type: !166, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 894, type: !60, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 896, type: !60, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !2, line: 897, type: !48, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !2, line: 898, type: !143, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 900, type: !143, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !2, line: 902, type: !9, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 904, type: !60, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !2, line: 904, type: !81, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !2, line: 906, type: !60, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !2, line: 906, type: !81, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !2, line: 908, type: !60, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !2, line: 910, type: !143, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 912, type: !24, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !2, line: 918, type: !43, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !2, line: 923, type: !43, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !2, line: 925, type: !166, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !2, line: 927, type: !43, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !2, line: 929, type: !9, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !2, line: 929, type: !81, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !2, line: 931, type: !43, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 933, type: !24, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !2, line: 935, type: !24, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !2, line: 937, type: !48, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !2, line: 939, type: !166, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !2, line: 941, type: !69, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !2, line: 943, type: !3, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !2, line: 945, type: !166, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !2, line: 947, type: !81, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !2, line: 949, type: !60, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !2, line: 951, type: !171, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !2, line: 953, type: !74, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1121, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 26)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1169, type: !138, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1208, type: !166, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1209, type: !171, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1210, type: !74, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1213, type: !9, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1214, type: !60, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1215, type: !216, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1217, type: !283, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1218, type: !166, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1219, type: !81, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1220, type: !60, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1222, type: !216, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1223, type: !69, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1224, type: !326, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1225, type: !69, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1226, type: !143, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1227, type: !171, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1228, type: !60, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1229, type: !74, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1230, type: !3, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1231, type: !31, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1232, type: !143, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1233, type: !470, isLocal: true, isDefinition: true)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 19)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1235, type: !171, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1237, type: !470, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1239, type: !216, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1240, type: !166, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1241, type: !326, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1242, type: !3, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1242, type: !55, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1244, type: !489, isLocal: true, isDefinition: true)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 22)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1246, type: !143, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1249, type: !496, isLocal: true, isDefinition: true)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 56)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1253, type: !143, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1255, type: !503, isLocal: true, isDefinition: true)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 54)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1259, type: !283, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1261, type: !283, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1262, type: !43, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1262, type: !48, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1262, type: !48, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1263, type: !48, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1267, type: !81, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1269, type: !522, isLocal: true, isDefinition: true)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 25)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1271, type: !527, isLocal: true, isDefinition: true)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 40)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1274, type: !421, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1278, type: !534, isLocal: true, isDefinition: true)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 31)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1281, type: !69, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1285, type: !166, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1288, type: !3, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1290, type: !3, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1291, type: !166, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1293, type: !43, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1295, type: !81, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1297, type: !166, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1301, type: !143, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !81, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !81, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !9, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !2, line: 221, type: !166, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !24, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !2, line: 235, type: !166, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !24, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !2, line: 248, type: !166, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !2, line: 259, type: !9, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !60, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !31, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !2, line: 300, type: !43, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !24, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !2, line: 311, type: !81, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !2, line: 321, type: !43, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !2, line: 335, type: !171, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !2, line: 356, type: !171, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !2, line: 363, type: !143, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !2, line: 371, type: !166, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !470, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !2, line: 391, type: !597, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 49)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !2, line: 493, type: !55, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !2, line: 495, type: !48, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !113, line: 115, type: !43, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !113, line: 115, type: !24, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !113, line: 115, type: !24, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !113, line: 116, type: !81, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !113, line: 116, type: !48, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !113, line: 116, type: !24, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !113, line: 116, type: !43, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !113, line: 116, type: !48, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "x264_vidformat_names", scope: !94, file: !113, line: 116, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 448, elements: !167)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !113, line: 117, type: !48, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !113, line: 117, type: !138, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "x264_fullrange_names", scope: !94, file: !113, line: 117, type: !632, isLocal: true, isDefinition: true)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 192, elements: !139)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !113, line: 118, type: !635, isLocal: true, isDefinition: true)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !636)
!636 = !{!637}
!637 = !DISubrange(count: 1)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !113, line: 118, type: !43, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !113, line: 118, type: !166, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !113, line: 118, type: !60, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !113, line: 118, type: !81, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !113, line: 118, type: !81, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(name: "x264_colorprim_names", scope: !94, file: !113, line: 118, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 640, elements: !82)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !113, line: 119, type: !166, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !113, line: 119, type: !166, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !113, line: 119, type: !166, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(name: "x264_transfer_names", scope: !94, file: !113, line: 119, type: !659, isLocal: true, isDefinition: true)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 768, elements: !144)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !113, line: 120, type: !48, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !113, line: 120, type: !48, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !113, line: 120, type: !43, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "x264_colmatrix_names", scope: !94, file: !113, line: 120, type: !650, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !113, line: 114, type: !166, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !113, line: 114, type: !166, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(name: "x264_b_pyramid_names", scope: !94, file: !113, line: 114, type: !674, isLocal: true, isDefinition: true)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 256, elements: !49)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !113, line: 112, type: !60, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !113, line: 112, type: !9, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(name: "x264_direct_pred_names", scope: !94, file: !113, line: 112, type: !681, isLocal: true, isDefinition: true)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 320, elements: !25)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !113, line: 113, type: !48, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !113, line: 113, type: !48, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !113, line: 113, type: !48, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !113, line: 113, type: !48, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !113, line: 113, type: !24, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(name: "x264_motion_est_names", scope: !94, file: !113, line: 113, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 384, elements: !44)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !113, line: 121, type: !48, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(name: "x264_nal_hrd_names", scope: !94, file: !113, line: 121, type: !674, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !2, line: 993, type: !43, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !2, line: 996, type: !60, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !2, line: 999, type: !24, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1002, type: !43, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1005, type: !60, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1008, type: !143, isLocal: true, isDefinition: true)
!711 = !{i32 7, !"Dwarf Version", i32 5}
!712 = !{i32 2, !"Debug Info Version", i32 3}
!713 = !{i32 1, !"wchar_size", i32 4}
!714 = !{i32 8, !"PIC Level", i32 2}
!715 = !{i32 7, !"PIE Level", i32 2}
!716 = !{i32 7, !"uwtable", i32 2}
!717 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!718 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!719 = distinct !DISubprogram(name: "spec_strdup", scope: !2, file: !2, line: 35, type: !720, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{!124, !624}
!722 = !{!723, !724, !725, !726}
!723 = !DILocalVariable(name: "str", arg: 1, scope: !719, file: !2, line: 35, type: !624)
!724 = !DILocalVariable(name: "len", scope: !719, file: !2, line: 36, type: !126)
!725 = !DILocalVariable(name: "newstr", scope: !719, file: !2, line: 37, type: !124)
!726 = !DILocalVariable(name: "i", scope: !727, file: !2, line: 38, type: !126)
!727 = distinct !DILexicalBlock(scope: !719, file: !2, line: 38, column: 5)
!728 = !DILocation(line: 0, scope: !719)
!729 = !DILocation(line: 36, column: 13, scope: !719)
!730 = !DILocation(line: 37, column: 36, scope: !719)
!731 = !DILocation(line: 37, column: 29, scope: !719)
!732 = !DILocation(line: 0, scope: !727)
!733 = !DILocation(line: 38, column: 23, scope: !734)
!734 = distinct !DILexicalBlock(scope: !727, file: !2, line: 38, column: 5)
!735 = !DILocation(line: 38, column: 5, scope: !727)
!736 = !DILocation(line: 39, column: 15, scope: !737)
!737 = distinct !DILexicalBlock(scope: !734, file: !2, line: 38, column: 35)
!738 = !DILocation(line: 41, column: 5, scope: !719)
!739 = !DILocation(line: 41, column: 16, scope: !719)
!740 = !DILocation(line: 42, column: 5, scope: !719)
!741 = !DISubprogram(name: "strlen", scope: !742, file: !742, line: 407, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!742 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!743 = !DISubroutineType(types: !744)
!744 = !{!745, !624}
!745 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!746 = !DISubprogram(name: "malloc", scope: !747, file: !747, line: 540, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!747 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!748 = !DISubroutineType(types: !749)
!749 = !{!125, !750}
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !751, line: 18, baseType: !745)
!751 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!752 = distinct !DISubprogram(name: "x264_param_default", scope: !2, file: !2, line: 51, type: !753, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !923)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !755}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !113, line: 376, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !113, line: 176, size: 5632, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !807, !808, !809, !810, !814, !815, !826, !827, !828, !829, !830, !859, !901, !902, !903, !904, !905, !906, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !757, file: !113, line: 179, baseType: !98, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !757, file: !113, line: 180, baseType: !126, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !757, file: !113, line: 181, baseType: !126, size: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !757, file: !113, line: 182, baseType: !126, size: 32, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !757, file: !113, line: 183, baseType: !126, size: 32, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !757, file: !113, line: 186, baseType: !126, size: 32, offset: 160)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !757, file: !113, line: 187, baseType: !126, size: 32, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !757, file: !113, line: 188, baseType: !126, size: 32, offset: 224)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !757, file: !113, line: 189, baseType: !126, size: 32, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !757, file: !113, line: 190, baseType: !126, size: 32, offset: 288)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !757, file: !113, line: 198, baseType: !126, size: 32, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !757, file: !113, line: 215, baseType: !771, size: 288, offset: 352)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !113, line: 200, size: 288, elements: !772)
!772 = !{!773, !774, !775, !776, !777, !778, !779, !780, !781}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !771, file: !113, line: 203, baseType: !126, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !771, file: !113, line: 204, baseType: !126, size: 32, offset: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !771, file: !113, line: 206, baseType: !126, size: 32, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !771, file: !113, line: 209, baseType: !126, size: 32, offset: 96)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !771, file: !113, line: 210, baseType: !126, size: 32, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !771, file: !113, line: 211, baseType: !126, size: 32, offset: 160)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !771, file: !113, line: 212, baseType: !126, size: 32, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !771, file: !113, line: 213, baseType: !126, size: 32, offset: 224)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !771, file: !113, line: 214, baseType: !126, size: 32, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !757, file: !113, line: 218, baseType: !126, size: 32, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !757, file: !113, line: 219, baseType: !126, size: 32, offset: 672)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !757, file: !113, line: 220, baseType: !126, size: 32, offset: 704)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !757, file: !113, line: 221, baseType: !126, size: 32, offset: 736)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !757, file: !113, line: 222, baseType: !126, size: 32, offset: 768)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !757, file: !113, line: 224, baseType: !126, size: 32, offset: 800)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !757, file: !113, line: 225, baseType: !126, size: 32, offset: 832)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !757, file: !113, line: 226, baseType: !126, size: 32, offset: 864)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !757, file: !113, line: 227, baseType: !126, size: 32, offset: 896)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !757, file: !113, line: 229, baseType: !126, size: 32, offset: 928)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !757, file: !113, line: 230, baseType: !126, size: 32, offset: 960)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !757, file: !113, line: 231, baseType: !126, size: 32, offset: 992)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !757, file: !113, line: 233, baseType: !126, size: 32, offset: 1024)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !757, file: !113, line: 234, baseType: !126, size: 32, offset: 1056)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !757, file: !113, line: 236, baseType: !126, size: 32, offset: 1088)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !757, file: !113, line: 237, baseType: !126, size: 32, offset: 1120)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !757, file: !113, line: 239, baseType: !126, size: 32, offset: 1152)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !757, file: !113, line: 240, baseType: !124, size: 64, offset: 1216)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !757, file: !113, line: 241, baseType: !801, size: 128, offset: 1280)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 128, elements: !75)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !803, line: 24, baseType: !804)
!803 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !805, line: 38, baseType: !806)
!805 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!806 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !757, file: !113, line: 242, baseType: !801, size: 128, offset: 1408)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !757, file: !113, line: 243, baseType: !801, size: 128, offset: 1536)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !757, file: !113, line: 244, baseType: !801, size: 128, offset: 1664)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !757, file: !113, line: 245, baseType: !811, size: 512, offset: 1792)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 512, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !757, file: !113, line: 246, baseType: !811, size: 512, offset: 2304)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !757, file: !113, line: 249, baseType: !816, size: 64, offset: 2816)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !125, !126, !624, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !821)
!821 = !{!822, !823, !824, !825}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !820, file: !2, line: 43, baseType: !98, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !820, file: !2, line: 43, baseType: !98, size: 32, offset: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !820, file: !2, line: 43, baseType: !125, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !820, file: !2, line: 43, baseType: !125, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !757, file: !113, line: 250, baseType: !125, size: 64, offset: 2880)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !757, file: !113, line: 251, baseType: !126, size: 32, offset: 2944)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !757, file: !113, line: 252, baseType: !126, size: 32, offset: 2976)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !757, file: !113, line: 253, baseType: !124, size: 64, offset: 3008)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !757, file: !113, line: 287, baseType: !831, size: 800, offset: 3072)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !113, line: 256, size: 800, elements: !832)
!832 = !{!833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !853, !854, !855, !857, !858}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !831, file: !113, line: 258, baseType: !98, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !831, file: !113, line: 259, baseType: !98, size: 32, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !831, file: !113, line: 261, baseType: !126, size: 32, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !831, file: !113, line: 262, baseType: !126, size: 32, offset: 96)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !831, file: !113, line: 263, baseType: !126, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !831, file: !113, line: 264, baseType: !126, size: 32, offset: 160)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !831, file: !113, line: 265, baseType: !126, size: 32, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !831, file: !113, line: 267, baseType: !126, size: 32, offset: 224)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !831, file: !113, line: 268, baseType: !126, size: 32, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !831, file: !113, line: 269, baseType: !126, size: 32, offset: 288)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !831, file: !113, line: 270, baseType: !126, size: 32, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !831, file: !113, line: 271, baseType: !126, size: 32, offset: 352)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !831, file: !113, line: 272, baseType: !126, size: 32, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !831, file: !113, line: 273, baseType: !126, size: 32, offset: 416)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !831, file: !113, line: 274, baseType: !126, size: 32, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !831, file: !113, line: 275, baseType: !126, size: 32, offset: 480)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !831, file: !113, line: 276, baseType: !126, size: 32, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !831, file: !113, line: 277, baseType: !126, size: 32, offset: 544)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !831, file: !113, line: 278, baseType: !852, size: 32, offset: 576)
!852 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !831, file: !113, line: 279, baseType: !852, size: 32, offset: 608)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !831, file: !113, line: 280, baseType: !126, size: 32, offset: 640)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !831, file: !113, line: 283, baseType: !856, size: 64, offset: 672)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !56)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !831, file: !113, line: 285, baseType: !126, size: 32, offset: 736)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !831, file: !113, line: 286, baseType: !126, size: 32, offset: 768)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !757, file: !113, line: 327, baseType: !860, size: 1152, offset: 3904)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !113, line: 290, size: 1152, elements: !861)
!861 = !{!862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !899, !900}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !860, file: !113, line: 292, baseType: !126, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !860, file: !113, line: 294, baseType: !126, size: 32, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !860, file: !113, line: 295, baseType: !126, size: 32, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !860, file: !113, line: 296, baseType: !126, size: 32, offset: 96)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !860, file: !113, line: 297, baseType: !126, size: 32, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !860, file: !113, line: 299, baseType: !126, size: 32, offset: 160)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !860, file: !113, line: 300, baseType: !852, size: 32, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !860, file: !113, line: 301, baseType: !852, size: 32, offset: 224)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !860, file: !113, line: 302, baseType: !852, size: 32, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !860, file: !113, line: 303, baseType: !126, size: 32, offset: 288)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !860, file: !113, line: 304, baseType: !126, size: 32, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !860, file: !113, line: 305, baseType: !852, size: 32, offset: 352)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !860, file: !113, line: 306, baseType: !852, size: 32, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !860, file: !113, line: 307, baseType: !852, size: 32, offset: 416)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !860, file: !113, line: 309, baseType: !126, size: 32, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !860, file: !113, line: 310, baseType: !852, size: 32, offset: 480)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !860, file: !113, line: 311, baseType: !126, size: 32, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !860, file: !113, line: 312, baseType: !126, size: 32, offset: 544)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !860, file: !113, line: 315, baseType: !126, size: 32, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !860, file: !113, line: 316, baseType: !124, size: 64, offset: 640)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !860, file: !113, line: 317, baseType: !126, size: 32, offset: 704)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !860, file: !113, line: 318, baseType: !124, size: 64, offset: 768)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !860, file: !113, line: 321, baseType: !852, size: 32, offset: 832)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !860, file: !113, line: 322, baseType: !852, size: 32, offset: 864)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !860, file: !113, line: 323, baseType: !852, size: 32, offset: 896)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !860, file: !113, line: 324, baseType: !888, size: 64, offset: 960)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !113, line: 174, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 167, size: 256, elements: !891)
!891 = !{!892, !893, !894, !895, !896, !897}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !890, file: !113, line: 169, baseType: !126, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !890, file: !113, line: 169, baseType: !126, size: 32, offset: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !890, file: !113, line: 170, baseType: !126, size: 32, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !890, file: !113, line: 171, baseType: !126, size: 32, offset: 96)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !890, file: !113, line: 172, baseType: !852, size: 32, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !890, file: !113, line: 173, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !860, file: !113, line: 325, baseType: !126, size: 32, offset: 1024)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !860, file: !113, line: 326, baseType: !124, size: 64, offset: 1088)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !757, file: !113, line: 330, baseType: !126, size: 32, offset: 5056)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !757, file: !113, line: 331, baseType: !126, size: 32, offset: 5088)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !757, file: !113, line: 332, baseType: !126, size: 32, offset: 5120)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !757, file: !113, line: 334, baseType: !126, size: 32, offset: 5152)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !757, file: !113, line: 335, baseType: !126, size: 32, offset: 5184)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !757, file: !113, line: 336, baseType: !907, size: 32, offset: 5216)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !803, line: 26, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !805, line: 42, baseType: !98)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !757, file: !113, line: 337, baseType: !907, size: 32, offset: 5248)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !757, file: !113, line: 338, baseType: !907, size: 32, offset: 5280)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !757, file: !113, line: 339, baseType: !907, size: 32, offset: 5312)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !757, file: !113, line: 340, baseType: !126, size: 32, offset: 5344)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !757, file: !113, line: 344, baseType: !126, size: 32, offset: 5376)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !757, file: !113, line: 356, baseType: !126, size: 32, offset: 5408)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !757, file: !113, line: 364, baseType: !126, size: 32, offset: 5440)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !757, file: !113, line: 367, baseType: !126, size: 32, offset: 5472)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !757, file: !113, line: 368, baseType: !126, size: 32, offset: 5504)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !757, file: !113, line: 369, baseType: !126, size: 32, offset: 5536)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !757, file: !113, line: 375, baseType: !920, size: 64, offset: 5568)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !125}
!923 = !{!924}
!924 = !DILocalVariable(name: "param", arg: 1, scope: !752, file: !2, line: 51, type: !755)
!925 = !DILocation(line: 0, scope: !752)
!926 = !DILocation(line: 54, column: 5, scope: !752)
!927 = !DILocation(line: 57, column: 18, scope: !752)
!928 = !DILocation(line: 57, column: 16, scope: !752)
!929 = !DILocation(line: 58, column: 12, scope: !752)
!930 = !DILocation(line: 58, column: 22, scope: !752)
!931 = !DILocation(line: 59, column: 12, scope: !752)
!932 = !DILocation(line: 63, column: 12, scope: !752)
!933 = !DILocation(line: 63, column: 28, scope: !752)
!934 = !DILocation(line: 59, column: 28, scope: !752)
!935 = !DILocation(line: 69, column: 16, scope: !752)
!936 = !DILocation(line: 69, column: 28, scope: !752)
!937 = !DILocation(line: 73, column: 16, scope: !752)
!938 = !DILocation(line: 75, column: 12, scope: !752)
!939 = !DILocation(line: 75, column: 28, scope: !752)
!940 = !DILocation(line: 76, column: 12, scope: !752)
!941 = !DILocation(line: 76, column: 28, scope: !752)
!942 = !DILocation(line: 77, column: 12, scope: !752)
!943 = !DILocation(line: 77, column: 28, scope: !752)
!944 = !DILocation(line: 78, column: 12, scope: !752)
!945 = !DILocation(line: 78, column: 29, scope: !752)
!946 = !DILocation(line: 79, column: 12, scope: !752)
!947 = !DILocation(line: 79, column: 28, scope: !752)
!948 = !DILocation(line: 80, column: 12, scope: !752)
!949 = !DILocation(line: 80, column: 26, scope: !752)
!950 = !DILocation(line: 73, column: 28, scope: !752)
!951 = !DILocation(line: 85, column: 12, scope: !752)
!952 = !DILocation(line: 85, column: 25, scope: !752)
!953 = !DILocation(line: 86, column: 12, scope: !752)
!954 = !DILocation(line: 87, column: 12, scope: !752)
!955 = !DILocation(line: 87, column: 33, scope: !752)
!956 = !DILocation(line: 86, column: 21, scope: !752)
!957 = !DILocation(line: 94, column: 12, scope: !752)
!958 = !DILocation(line: 94, column: 32, scope: !752)
!959 = !DILocation(line: 99, column: 12, scope: !752)
!960 = !DILocation(line: 101, column: 12, scope: !752)
!961 = !DILocation(line: 102, column: 15, scope: !752)
!962 = !DILocation(line: 102, column: 25, scope: !752)
!963 = !DILocation(line: 103, column: 15, scope: !752)
!964 = !DILocation(line: 103, column: 32, scope: !752)
!965 = !DILocation(line: 104, column: 15, scope: !752)
!966 = !DILocation(line: 104, column: 33, scope: !752)
!967 = !DILocation(line: 105, column: 15, scope: !752)
!968 = !DILocation(line: 105, column: 33, scope: !752)
!969 = !DILocation(line: 106, column: 15, scope: !752)
!970 = !DILocation(line: 108, column: 15, scope: !752)
!971 = !DILocation(line: 108, column: 29, scope: !752)
!972 = !DILocation(line: 101, column: 27, scope: !752)
!973 = !DILocation(line: 111, column: 15, scope: !752)
!974 = !DILocation(line: 111, column: 25, scope: !752)
!975 = !DILocation(line: 106, column: 33, scope: !752)
!976 = !DILocation(line: 113, column: 15, scope: !752)
!977 = !DILocation(line: 113, column: 27, scope: !752)
!978 = !DILocation(line: 114, column: 15, scope: !752)
!979 = !DILocation(line: 114, column: 25, scope: !752)
!980 = !DILocation(line: 115, column: 15, scope: !752)
!981 = !DILocation(line: 115, column: 29, scope: !752)
!982 = !DILocation(line: 116, column: 15, scope: !752)
!983 = !DILocation(line: 116, column: 27, scope: !752)
!984 = !DILocation(line: 118, column: 15, scope: !752)
!985 = !DILocation(line: 118, column: 28, scope: !752)
!986 = !DILocation(line: 119, column: 15, scope: !752)
!987 = !DILocation(line: 119, column: 28, scope: !752)
!988 = !DILocation(line: 120, column: 15, scope: !752)
!989 = !DILocation(line: 120, column: 27, scope: !752)
!990 = !DILocation(line: 121, column: 15, scope: !752)
!991 = !DILocation(line: 121, column: 27, scope: !752)
!992 = !DILocation(line: 122, column: 15, scope: !752)
!993 = !DILocation(line: 122, column: 27, scope: !752)
!994 = !DILocation(line: 124, column: 15, scope: !752)
!995 = !DILocation(line: 124, column: 33, scope: !752)
!996 = !DILocation(line: 125, column: 15, scope: !752)
!997 = !DILocation(line: 125, column: 23, scope: !752)
!998 = !DILocation(line: 126, column: 15, scope: !752)
!999 = !DILocation(line: 126, column: 25, scope: !752)
!1000 = !DILocation(line: 129, column: 12, scope: !752)
!1001 = !DILocation(line: 129, column: 19, scope: !752)
!1002 = !DILocation(line: 130, column: 12, scope: !752)
!1003 = !DILocation(line: 130, column: 26, scope: !752)
!1004 = !DILocation(line: 131, column: 12, scope: !752)
!1005 = !DILocation(line: 131, column: 24, scope: !752)
!1006 = !DILocation(line: 134, column: 12, scope: !752)
!1007 = !DILocation(line: 139, column: 20, scope: !752)
!1008 = !DILocation(line: 140, column: 20, scope: !752)
!1009 = !DILocation(line: 139, column: 29, scope: !752)
!1010 = !DILocation(line: 142, column: 20, scope: !752)
!1011 = !DILocation(line: 145, column: 20, scope: !752)
!1012 = !DILocation(line: 142, column: 31, scope: !752)
!1013 = !DILocation(line: 150, column: 20, scope: !752)
!1014 = !DILocation(line: 150, column: 38, scope: !752)
!1015 = !DILocation(line: 152, column: 20, scope: !752)
!1016 = !DILocation(line: 152, column: 35, scope: !752)
!1017 = !DILocation(line: 134, column: 26, scope: !752)
!1018 = !DILocation(line: 145, column: 32, scope: !752)
!1019 = !DILocation(line: 140, column: 26, scope: !752)
!1020 = !DILocation(line: 158, column: 20, scope: !752)
!1021 = !DILocation(line: 158, column: 27, scope: !752)
!1022 = !DILocation(line: 99, column: 29, scope: !752)
!1023 = !DILocation(line: 161, column: 20, scope: !752)
!1024 = !DILocation(line: 168, column: 12, scope: !752)
!1025 = !DILocation(line: 162, column: 5, scope: !752)
!1026 = !DILocation(line: 168, column: 29, scope: !752)
!1027 = !DILocation(line: 169, column: 12, scope: !752)
!1028 = !DILocation(line: 169, column: 21, scope: !752)
!1029 = !DILocation(line: 170, column: 12, scope: !752)
!1030 = !DILocation(line: 170, column: 18, scope: !752)
!1031 = !DILocation(line: 171, column: 12, scope: !752)
!1032 = !DILocation(line: 171, column: 24, scope: !752)
!1033 = !DILocation(line: 172, column: 12, scope: !752)
!1034 = !DILocation(line: 173, column: 12, scope: !752)
!1035 = !DILocation(line: 173, column: 22, scope: !752)
!1036 = !DILocation(line: 172, column: 27, scope: !752)
!1037 = !DILocation(line: 177, column: 1, scope: !752)
!1038 = !DISubprogram(name: "x264_cpu_detect", scope: !1039, file: !1039, line: 24, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1039 = !DIFile(filename: "x264_src/common/cpu.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0beb41363cc0e5253fa85a15dbb3a435")
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!907}
!1042 = distinct !DISubprogram(name: "x264_log_default", scope: !2, file: !2, line: 987, type: !817, scopeLine: 988, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048}
!1044 = !DILocalVariable(name: "p_unused", arg: 1, scope: !1042, file: !2, line: 987, type: !125)
!1045 = !DILocalVariable(name: "i_level", arg: 2, scope: !1042, file: !2, line: 987, type: !126)
!1046 = !DILocalVariable(name: "psz_fmt", arg: 3, scope: !1042, file: !2, line: 987, type: !624)
!1047 = !DILocalVariable(name: "arg", arg: 4, scope: !1042, file: !2, line: 987, type: !819)
!1048 = !DILocalVariable(name: "psz_prefix", scope: !1042, file: !2, line: 989, type: !124)
!1049 = !DILocation(line: 0, scope: !1042)
!1050 = !DILocation(line: 990, column: 5, scope: !1042)
!1051 = !DILocation(line: 0, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 991, column: 5)
!1053 = !DILocation(line: 1008, column: 14, scope: !1042)
!1054 = !DILocation(line: 1008, column: 5, scope: !1042)
!1055 = !DILocation(line: 1009, column: 15, scope: !1042)
!1056 = !DILocation(line: 1009, column: 5, scope: !1042)
!1057 = !DILocation(line: 1010, column: 1, scope: !1042)
!1058 = distinct !DISubprogram(name: "x264_param_default_preset", scope: !2, file: !2, line: 399, type: !1059, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!126, !755, !624, !624}
!1061 = !{!1062, !1063, !1064}
!1062 = !DILocalVariable(name: "param", arg: 1, scope: !1058, file: !2, line: 399, type: !755)
!1063 = !DILocalVariable(name: "preset", arg: 2, scope: !1058, file: !2, line: 399, type: !624)
!1064 = !DILocalVariable(name: "tune", arg: 3, scope: !1058, file: !2, line: 399, type: !624)
!1065 = !DILocation(line: 0, scope: !1058)
!1066 = !DILocation(line: 401, column: 5, scope: !1058)
!1067 = !DILocation(line: 403, column: 9, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 403, column: 9)
!1069 = !DILocation(line: 403, column: 16, scope: !1068)
!1070 = !DILocalVariable(name: "param", arg: 1, scope: !1071, file: !2, line: 179, type: !755)
!1071 = distinct !DISubprogram(name: "x264_param_apply_preset", scope: !2, file: !2, line: 179, type: !1072, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!126, !755, !624}
!1074 = !{!1070, !1075}
!1075 = !DILocalVariable(name: "preset", arg: 2, scope: !1071, file: !2, line: 179, type: !624)
!1076 = !DILocation(line: 0, scope: !1071, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 403, column: 19, scope: !1068)
!1078 = !DILocation(line: 181, column: 10, scope: !1079, inlinedAt: !1077)
!1079 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 181, column: 9)
!1080 = !DILocation(line: 181, column: 9, scope: !1071, inlinedAt: !1077)
!1081 = !DILocation(line: 183, column: 16, scope: !1082, inlinedAt: !1077)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 182, column: 5)
!1083 = !DILocation(line: 183, column: 34, scope: !1082, inlinedAt: !1077)
!1084 = !DILocation(line: 184, column: 16, scope: !1082, inlinedAt: !1077)
!1085 = !DILocation(line: 184, column: 37, scope: !1082, inlinedAt: !1077)
!1086 = !DILocation(line: 185, column: 16, scope: !1082, inlinedAt: !1077)
!1087 = !DILocation(line: 185, column: 36, scope: !1082, inlinedAt: !1077)
!1088 = !DILocation(line: 186, column: 16, scope: !1082, inlinedAt: !1077)
!1089 = !DILocation(line: 186, column: 24, scope: !1082, inlinedAt: !1077)
!1090 = !DILocation(line: 187, column: 16, scope: !1082, inlinedAt: !1077)
!1091 = !DILocation(line: 187, column: 25, scope: !1082, inlinedAt: !1077)
!1092 = !DILocation(line: 188, column: 16, scope: !1082, inlinedAt: !1077)
!1093 = !DILocation(line: 191, column: 24, scope: !1082, inlinedAt: !1077)
!1094 = !DILocation(line: 191, column: 36, scope: !1082, inlinedAt: !1077)
!1095 = !DILocation(line: 192, column: 24, scope: !1082, inlinedAt: !1077)
!1096 = !DILocation(line: 192, column: 40, scope: !1082, inlinedAt: !1077)
!1097 = !DILocation(line: 193, column: 19, scope: !1082, inlinedAt: !1077)
!1098 = !DILocation(line: 193, column: 29, scope: !1082, inlinedAt: !1077)
!1099 = !DILocation(line: 194, column: 24, scope: !1082, inlinedAt: !1077)
!1100 = !DILocation(line: 194, column: 43, scope: !1082, inlinedAt: !1077)
!1101 = !DILocation(line: 195, column: 24, scope: !1082, inlinedAt: !1077)
!1102 = !DILocation(line: 195, column: 34, scope: !1082, inlinedAt: !1077)
!1103 = !DILocation(line: 196, column: 16, scope: !1082, inlinedAt: !1077)
!1104 = !DILocation(line: 196, column: 34, scope: !1082, inlinedAt: !1077)
!1105 = !DILocation(line: 197, column: 19, scope: !1082, inlinedAt: !1077)
!1106 = !DILocation(line: 197, column: 29, scope: !1082, inlinedAt: !1077)
!1107 = !DILocation(line: 188, column: 30, scope: !1082, inlinedAt: !1077)
!1108 = !DILocation(line: 199, column: 5, scope: !1082, inlinedAt: !1077)
!1109 = !DILocation(line: 200, column: 15, scope: !1110, inlinedAt: !1077)
!1110 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 200, column: 14)
!1111 = !DILocation(line: 200, column: 14, scope: !1079, inlinedAt: !1077)
!1112 = !DILocation(line: 202, column: 24, scope: !1113, inlinedAt: !1077)
!1113 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 201, column: 5)
!1114 = !DILocation(line: 202, column: 30, scope: !1113, inlinedAt: !1077)
!1115 = !DILocation(line: 203, column: 24, scope: !1113, inlinedAt: !1077)
!1116 = !DILocation(line: 203, column: 36, scope: !1113, inlinedAt: !1077)
!1117 = !DILocation(line: 204, column: 24, scope: !1113, inlinedAt: !1077)
!1118 = !DILocation(line: 204, column: 40, scope: !1113, inlinedAt: !1077)
!1119 = !DILocation(line: 205, column: 16, scope: !1113, inlinedAt: !1077)
!1120 = !DILocation(line: 205, column: 34, scope: !1113, inlinedAt: !1077)
!1121 = !DILocation(line: 206, column: 24, scope: !1113, inlinedAt: !1077)
!1122 = !DILocation(line: 206, column: 43, scope: !1113, inlinedAt: !1077)
!1123 = !DILocation(line: 207, column: 24, scope: !1113, inlinedAt: !1077)
!1124 = !DILocation(line: 207, column: 34, scope: !1113, inlinedAt: !1077)
!1125 = !DILocation(line: 208, column: 19, scope: !1113, inlinedAt: !1077)
!1126 = !DILocation(line: 208, column: 29, scope: !1113, inlinedAt: !1077)
!1127 = !DILocation(line: 209, column: 24, scope: !1113, inlinedAt: !1077)
!1128 = !DILocation(line: 209, column: 40, scope: !1113, inlinedAt: !1077)
!1129 = !DILocation(line: 210, column: 5, scope: !1113, inlinedAt: !1077)
!1130 = !DILocation(line: 211, column: 15, scope: !1131, inlinedAt: !1077)
!1131 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 211, column: 14)
!1132 = !DILocation(line: 211, column: 14, scope: !1110, inlinedAt: !1077)
!1133 = !DILocation(line: 213, column: 24, scope: !1134, inlinedAt: !1077)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 212, column: 5)
!1135 = !DILocation(line: 213, column: 36, scope: !1134, inlinedAt: !1077)
!1136 = !DILocation(line: 214, column: 24, scope: !1134, inlinedAt: !1077)
!1137 = !DILocation(line: 214, column: 40, scope: !1134, inlinedAt: !1077)
!1138 = !DILocation(line: 215, column: 16, scope: !1134, inlinedAt: !1077)
!1139 = !DILocation(line: 215, column: 34, scope: !1134, inlinedAt: !1077)
!1140 = !DILocation(line: 216, column: 24, scope: !1134, inlinedAt: !1077)
!1141 = !DILocation(line: 216, column: 43, scope: !1134, inlinedAt: !1077)
!1142 = !DILocation(line: 217, column: 24, scope: !1134, inlinedAt: !1077)
!1143 = !DILocation(line: 217, column: 34, scope: !1134, inlinedAt: !1077)
!1144 = !DILocation(line: 218, column: 19, scope: !1134, inlinedAt: !1077)
!1145 = !DILocation(line: 218, column: 29, scope: !1134, inlinedAt: !1077)
!1146 = !DILocation(line: 219, column: 24, scope: !1134, inlinedAt: !1077)
!1147 = !DILocation(line: 219, column: 40, scope: !1134, inlinedAt: !1077)
!1148 = !DILocation(line: 220, column: 5, scope: !1134, inlinedAt: !1077)
!1149 = !DILocation(line: 221, column: 15, scope: !1150, inlinedAt: !1077)
!1150 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 221, column: 14)
!1151 = !DILocation(line: 221, column: 14, scope: !1131, inlinedAt: !1077)
!1152 = !DILocation(line: 223, column: 24, scope: !1153, inlinedAt: !1077)
!1153 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 222, column: 5)
!1154 = !DILocation(line: 223, column: 43, scope: !1153, inlinedAt: !1077)
!1155 = !DILocation(line: 224, column: 16, scope: !1153, inlinedAt: !1077)
!1156 = !DILocation(line: 224, column: 34, scope: !1153, inlinedAt: !1077)
!1157 = !DILocation(line: 225, column: 24, scope: !1153, inlinedAt: !1077)
!1158 = !DILocation(line: 225, column: 40, scope: !1153, inlinedAt: !1077)
!1159 = !DILocation(line: 226, column: 24, scope: !1153, inlinedAt: !1077)
!1160 = !DILocation(line: 226, column: 40, scope: !1153, inlinedAt: !1077)
!1161 = !DILocation(line: 227, column: 19, scope: !1153, inlinedAt: !1077)
!1162 = !DILocation(line: 227, column: 31, scope: !1153, inlinedAt: !1077)
!1163 = !DILocation(line: 228, column: 5, scope: !1153, inlinedAt: !1077)
!1164 = !DILocation(line: 229, column: 15, scope: !1165, inlinedAt: !1077)
!1165 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 229, column: 14)
!1166 = !DILocation(line: 229, column: 14, scope: !1150, inlinedAt: !1077)
!1167 = !DILocation(line: 231, column: 16, scope: !1168, inlinedAt: !1077)
!1168 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 230, column: 5)
!1169 = !DILocation(line: 231, column: 34, scope: !1168, inlinedAt: !1077)
!1170 = !DILocation(line: 232, column: 24, scope: !1168, inlinedAt: !1077)
!1171 = !DILocation(line: 232, column: 40, scope: !1168, inlinedAt: !1077)
!1172 = !DILocation(line: 233, column: 19, scope: !1168, inlinedAt: !1077)
!1173 = !DILocation(line: 233, column: 31, scope: !1168, inlinedAt: !1077)
!1174 = !DILocation(line: 234, column: 5, scope: !1168, inlinedAt: !1077)
!1175 = !DILocation(line: 235, column: 15, scope: !1176, inlinedAt: !1077)
!1176 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 235, column: 14)
!1177 = !DILocation(line: 235, column: 14, scope: !1165, inlinedAt: !1077)
!1178 = !DILocation(line: 239, column: 15, scope: !1179, inlinedAt: !1077)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 239, column: 14)
!1180 = !DILocation(line: 239, column: 14, scope: !1176, inlinedAt: !1077)
!1181 = !DILocation(line: 241, column: 24, scope: !1182, inlinedAt: !1077)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 240, column: 5)
!1183 = !DILocation(line: 241, column: 36, scope: !1182, inlinedAt: !1077)
!1184 = !DILocation(line: 242, column: 24, scope: !1182, inlinedAt: !1077)
!1185 = !DILocation(line: 242, column: 40, scope: !1182, inlinedAt: !1077)
!1186 = !DILocation(line: 243, column: 16, scope: !1182, inlinedAt: !1077)
!1187 = !DILocation(line: 243, column: 34, scope: !1182, inlinedAt: !1077)
!1188 = !DILocation(line: 244, column: 16, scope: !1182, inlinedAt: !1077)
!1189 = !DILocation(line: 244, column: 34, scope: !1182, inlinedAt: !1077)
!1190 = !DILocation(line: 245, column: 24, scope: !1182, inlinedAt: !1077)
!1191 = !DILocation(line: 245, column: 41, scope: !1182, inlinedAt: !1077)
!1192 = !DILocation(line: 246, column: 19, scope: !1182, inlinedAt: !1077)
!1193 = !DILocation(line: 246, column: 31, scope: !1182, inlinedAt: !1077)
!1194 = !DILocation(line: 247, column: 5, scope: !1182, inlinedAt: !1077)
!1195 = !DILocation(line: 248, column: 15, scope: !1196, inlinedAt: !1077)
!1196 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 248, column: 14)
!1197 = !DILocation(line: 248, column: 14, scope: !1179, inlinedAt: !1077)
!1198 = !DILocation(line: 250, column: 24, scope: !1199, inlinedAt: !1077)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 249, column: 5)
!1200 = !DILocation(line: 250, column: 36, scope: !1199, inlinedAt: !1077)
!1201 = !DILocation(line: 251, column: 24, scope: !1199, inlinedAt: !1077)
!1202 = !DILocation(line: 251, column: 40, scope: !1199, inlinedAt: !1077)
!1203 = !DILocation(line: 252, column: 16, scope: !1199, inlinedAt: !1077)
!1204 = !DILocation(line: 252, column: 34, scope: !1199, inlinedAt: !1077)
!1205 = !DILocation(line: 253, column: 16, scope: !1199, inlinedAt: !1077)
!1206 = !DILocation(line: 253, column: 34, scope: !1199, inlinedAt: !1077)
!1207 = !DILocation(line: 254, column: 24, scope: !1199, inlinedAt: !1077)
!1208 = !DILocation(line: 254, column: 41, scope: !1199, inlinedAt: !1077)
!1209 = !DILocation(line: 255, column: 24, scope: !1199, inlinedAt: !1077)
!1210 = !DILocation(line: 255, column: 30, scope: !1199, inlinedAt: !1077)
!1211 = !DILocation(line: 256, column: 24, scope: !1199, inlinedAt: !1077)
!1212 = !DILocation(line: 256, column: 34, scope: !1199, inlinedAt: !1077)
!1213 = !DILocation(line: 257, column: 19, scope: !1199, inlinedAt: !1077)
!1214 = !DILocation(line: 257, column: 31, scope: !1199, inlinedAt: !1077)
!1215 = !DILocation(line: 258, column: 5, scope: !1199, inlinedAt: !1077)
!1216 = !DILocation(line: 259, column: 15, scope: !1217, inlinedAt: !1077)
!1217 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 259, column: 14)
!1218 = !DILocation(line: 259, column: 14, scope: !1196, inlinedAt: !1077)
!1219 = !DILocation(line: 261, column: 24, scope: !1220, inlinedAt: !1077)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 260, column: 5)
!1221 = !DILocation(line: 261, column: 36, scope: !1220, inlinedAt: !1077)
!1222 = !DILocation(line: 262, column: 24, scope: !1220, inlinedAt: !1077)
!1223 = !DILocation(line: 262, column: 40, scope: !1220, inlinedAt: !1077)
!1224 = !DILocation(line: 263, column: 24, scope: !1220, inlinedAt: !1077)
!1225 = !DILocation(line: 263, column: 35, scope: !1220, inlinedAt: !1077)
!1226 = !DILocation(line: 264, column: 16, scope: !1220, inlinedAt: !1077)
!1227 = !DILocation(line: 264, column: 34, scope: !1220, inlinedAt: !1077)
!1228 = !DILocation(line: 265, column: 16, scope: !1220, inlinedAt: !1077)
!1229 = !DILocation(line: 265, column: 34, scope: !1220, inlinedAt: !1077)
!1230 = !DILocation(line: 266, column: 24, scope: !1220, inlinedAt: !1077)
!1231 = !DILocation(line: 266, column: 41, scope: !1220, inlinedAt: !1077)
!1232 = !DILocation(line: 267, column: 24, scope: !1220, inlinedAt: !1077)
!1233 = !DILocation(line: 267, column: 30, scope: !1220, inlinedAt: !1077)
!1234 = !DILocation(line: 268, column: 24, scope: !1220, inlinedAt: !1077)
!1235 = !DILocation(line: 268, column: 34, scope: !1220, inlinedAt: !1077)
!1236 = !DILocation(line: 269, column: 16, scope: !1220, inlinedAt: !1077)
!1237 = !DILocation(line: 269, column: 25, scope: !1220, inlinedAt: !1077)
!1238 = !DILocation(line: 270, column: 19, scope: !1220, inlinedAt: !1077)
!1239 = !DILocation(line: 270, column: 31, scope: !1220, inlinedAt: !1077)
!1240 = !DILocation(line: 271, column: 5, scope: !1220, inlinedAt: !1077)
!1241 = !DILocation(line: 272, column: 15, scope: !1242, inlinedAt: !1077)
!1242 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 272, column: 14)
!1243 = !DILocation(line: 272, column: 14, scope: !1217, inlinedAt: !1077)
!1244 = !DILocation(line: 274, column: 24, scope: !1245, inlinedAt: !1077)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 273, column: 5)
!1246 = !DILocation(line: 274, column: 36, scope: !1245, inlinedAt: !1077)
!1247 = !DILocation(line: 275, column: 24, scope: !1245, inlinedAt: !1077)
!1248 = !DILocation(line: 275, column: 40, scope: !1245, inlinedAt: !1077)
!1249 = !DILocation(line: 276, column: 24, scope: !1245, inlinedAt: !1077)
!1250 = !DILocation(line: 276, column: 35, scope: !1245, inlinedAt: !1077)
!1251 = !DILocation(line: 277, column: 16, scope: !1245, inlinedAt: !1077)
!1252 = !DILocation(line: 277, column: 34, scope: !1245, inlinedAt: !1077)
!1253 = !DILocation(line: 278, column: 16, scope: !1245, inlinedAt: !1077)
!1254 = !DILocation(line: 278, column: 34, scope: !1245, inlinedAt: !1077)
!1255 = !DILocation(line: 279, column: 24, scope: !1245, inlinedAt: !1077)
!1256 = !DILocation(line: 279, column: 41, scope: !1245, inlinedAt: !1077)
!1257 = !DILocation(line: 280, column: 24, scope: !1245, inlinedAt: !1077)
!1258 = !DILocation(line: 280, column: 30, scope: !1245, inlinedAt: !1077)
!1259 = !DILocation(line: 281, column: 24, scope: !1245, inlinedAt: !1077)
!1260 = !DILocation(line: 281, column: 37, scope: !1245, inlinedAt: !1077)
!1261 = !DILocation(line: 282, column: 24, scope: !1245, inlinedAt: !1077)
!1262 = !DILocation(line: 282, column: 34, scope: !1245, inlinedAt: !1077)
!1263 = !DILocation(line: 283, column: 16, scope: !1245, inlinedAt: !1077)
!1264 = !DILocation(line: 283, column: 25, scope: !1245, inlinedAt: !1077)
!1265 = !DILocation(line: 284, column: 19, scope: !1245, inlinedAt: !1077)
!1266 = !DILocation(line: 284, column: 31, scope: !1245, inlinedAt: !1077)
!1267 = !DILocation(line: 288, column: 9, scope: !1268, inlinedAt: !1077)
!1268 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 287, column: 5)
!1269 = !DILocation(line: 403, column: 9, scope: !1058)
!1270 = !DILocation(line: 405, column: 9, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 405, column: 9)
!1272 = !DILocation(line: 405, column: 14, scope: !1271)
!1273 = !DILocalVariable(name: "param", arg: 1, scope: !1274, file: !2, line: 294, type: !755)
!1274 = distinct !DISubprogram(name: "x264_param_apply_tune", scope: !2, file: !2, line: 294, type: !1072, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1275)
!1275 = !{!1273, !1276, !1277, !1278, !1279, !1280}
!1276 = !DILocalVariable(name: "tune", arg: 2, scope: !1274, file: !2, line: 294, type: !624)
!1277 = !DILocalVariable(name: "tmp", scope: !1274, file: !2, line: 296, type: !124)
!1278 = !DILocalVariable(name: "s", scope: !1274, file: !2, line: 300, type: !124)
!1279 = !DILocalVariable(name: "psy_tuning_used", scope: !1274, file: !2, line: 301, type: !126)
!1280 = !DILabel(scope: !1281, name: "psy_failure", file: !2, line: 390)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 389, column: 9)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 388, column: 13)
!1283 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 303, column: 5)
!1284 = !DILocation(line: 0, scope: !1274, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 405, column: 17, scope: !1271)
!1286 = !DILocation(line: 296, column: 30, scope: !1274, inlinedAt: !1285)
!1287 = !DILocalVariable(name: "i_size", arg: 1, scope: !1288, file: !2, line: 1102, type: !126)
!1288 = distinct !DISubprogram(name: "x264_malloc", scope: !2, file: !2, line: 1102, type: !1289, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!125, !126}
!1291 = !{!1287, !1292, !1294}
!1292 = !DILocalVariable(name: "align_buf", scope: !1288, file: !2, line: 1104, type: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!1294 = !DILocalVariable(name: "buf", scope: !1288, file: !2, line: 1111, type: !1293)
!1295 = !DILocation(line: 0, scope: !1288, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 296, column: 17, scope: !1274, inlinedAt: !1285)
!1297 = !DILocation(line: 1111, column: 40, scope: !1288, inlinedAt: !1296)
!1298 = !DILocation(line: 1111, column: 58, scope: !1288, inlinedAt: !1296)
!1299 = !DILocation(line: 1111, column: 20, scope: !1288, inlinedAt: !1296)
!1300 = !DILocation(line: 1112, column: 9, scope: !1301, inlinedAt: !1296)
!1301 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 1112, column: 9)
!1302 = !DILocation(line: 1112, column: 9, scope: !1288, inlinedAt: !1296)
!1303 = !DILocation(line: 1121, column: 9, scope: !1304, inlinedAt: !1296)
!1304 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 1120, column: 9)
!1305 = !DILocation(line: 297, column: 9, scope: !1274, inlinedAt: !1285)
!1306 = !DILocation(line: 1114, column: 48, scope: !1307, inlinedAt: !1296)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 1113, column: 5)
!1308 = !DILocation(line: 1115, column: 22, scope: !1307, inlinedAt: !1296)
!1309 = !DILocation(line: 1115, column: 43, scope: !1307, inlinedAt: !1296)
!1310 = !DILocation(line: 1115, column: 19, scope: !1307, inlinedAt: !1296)
!1311 = !DILocation(line: 1116, column: 34, scope: !1307, inlinedAt: !1296)
!1312 = !DILocation(line: 1116, column: 56, scope: !1307, inlinedAt: !1296)
!1313 = !DILocation(line: 1117, column: 50, scope: !1307, inlinedAt: !1296)
!1314 = !DILocation(line: 1117, column: 68, scope: !1307, inlinedAt: !1296)
!1315 = !DILocation(line: 299, column: 11, scope: !1274, inlinedAt: !1285)
!1316 = !DILocation(line: 300, column: 15, scope: !1274, inlinedAt: !1285)
!1317 = !DILocation(line: 302, column: 5, scope: !1274, inlinedAt: !1285)
!1318 = !DILocation(line: 304, column: 14, scope: !1319, inlinedAt: !1285)
!1319 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 304, column: 13)
!1320 = !DILocation(line: 304, column: 13, scope: !1283, inlinedAt: !1285)
!1321 = !DILocation(line: 306, column: 32, scope: !1322, inlinedAt: !1285)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 306, column: 17)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 305, column: 9)
!1324 = !DILocation(line: 306, column: 17, scope: !1323, inlinedAt: !1285)
!1325 = !DILocation(line: 307, column: 48, scope: !1323, inlinedAt: !1285)
!1326 = !DILocation(line: 308, column: 45, scope: !1323, inlinedAt: !1285)
!1327 = !DILocation(line: 309, column: 42, scope: !1323, inlinedAt: !1285)
!1328 = !DILocation(line: 310, column: 9, scope: !1323, inlinedAt: !1285)
!1329 = !DILocation(line: 311, column: 19, scope: !1330, inlinedAt: !1285)
!1330 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 311, column: 18)
!1331 = !DILocation(line: 311, column: 18, scope: !1319, inlinedAt: !1285)
!1332 = !DILocation(line: 313, column: 32, scope: !1333, inlinedAt: !1285)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 313, column: 17)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 312, column: 9)
!1335 = !DILocation(line: 313, column: 17, scope: !1334, inlinedAt: !1285)
!1336 = !DILocation(line: 314, column: 47, scope: !1334, inlinedAt: !1285)
!1337 = !DILocation(line: 314, column: 65, scope: !1334, inlinedAt: !1285)
!1338 = !DILocation(line: 314, column: 40, scope: !1334, inlinedAt: !1285)
!1339 = !DILocation(line: 314, column: 38, scope: !1334, inlinedAt: !1285)
!1340 = !DILocation(line: 315, column: 48, scope: !1334, inlinedAt: !1285)
!1341 = !DILocation(line: 316, column: 45, scope: !1334, inlinedAt: !1285)
!1342 = !DILocation(line: 317, column: 37, scope: !1334, inlinedAt: !1285)
!1343 = !DILocation(line: 318, column: 37, scope: !1334, inlinedAt: !1285)
!1344 = !DILocation(line: 319, column: 29, scope: !1334, inlinedAt: !1285)
!1345 = !DILocation(line: 320, column: 9, scope: !1334, inlinedAt: !1285)
!1346 = !DILocation(line: 321, column: 19, scope: !1347, inlinedAt: !1285)
!1347 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 321, column: 18)
!1348 = !DILocation(line: 321, column: 18, scope: !1330, inlinedAt: !1285)
!1349 = !DILocation(line: 323, column: 32, scope: !1350, inlinedAt: !1285)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 323, column: 17)
!1351 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 322, column: 9)
!1352 = !DILocation(line: 323, column: 17, scope: !1351, inlinedAt: !1285)
!1353 = !DILocation(line: 324, column: 48, scope: !1351, inlinedAt: !1285)
!1354 = !DILocation(line: 325, column: 45, scope: !1351, inlinedAt: !1285)
!1355 = !DILocation(line: 326, column: 42, scope: !1351, inlinedAt: !1285)
!1356 = !DILocation(line: 327, column: 43, scope: !1351, inlinedAt: !1285)
!1357 = !DILocation(line: 329, column: 35, scope: !1351, inlinedAt: !1285)
!1358 = !DILocation(line: 330, column: 37, scope: !1351, inlinedAt: !1285)
!1359 = !DILocation(line: 331, column: 47, scope: !1351, inlinedAt: !1285)
!1360 = !DILocation(line: 332, column: 47, scope: !1351, inlinedAt: !1285)
!1361 = !DILocation(line: 333, column: 35, scope: !1351, inlinedAt: !1285)
!1362 = !DILocation(line: 334, column: 9, scope: !1351, inlinedAt: !1285)
!1363 = !DILocation(line: 335, column: 19, scope: !1364, inlinedAt: !1285)
!1364 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 335, column: 18)
!1365 = !DILocation(line: 335, column: 18, scope: !1347, inlinedAt: !1285)
!1366 = !DILocation(line: 337, column: 32, scope: !1367, inlinedAt: !1285)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 337, column: 17)
!1368 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 336, column: 9)
!1369 = !DILocation(line: 337, column: 17, scope: !1368, inlinedAt: !1285)
!1370 = !DILocation(line: 338, column: 48, scope: !1368, inlinedAt: !1285)
!1371 = !DILocation(line: 339, column: 45, scope: !1368, inlinedAt: !1285)
!1372 = !DILocation(line: 340, column: 37, scope: !1368, inlinedAt: !1285)
!1373 = !DILocation(line: 342, column: 37, scope: !1368, inlinedAt: !1285)
!1374 = !DILocation(line: 343, column: 9, scope: !1368, inlinedAt: !1285)
!1375 = !DILocation(line: 344, column: 19, scope: !1376, inlinedAt: !1285)
!1376 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 344, column: 18)
!1377 = !DILocation(line: 344, column: 18, scope: !1364, inlinedAt: !1285)
!1378 = !DILocation(line: 346, column: 32, scope: !1379, inlinedAt: !1285)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 346, column: 17)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 345, column: 9)
!1381 = !DILocation(line: 346, column: 17, scope: !1380, inlinedAt: !1285)
!1382 = !DILocation(line: 347, column: 33, scope: !1380, inlinedAt: !1285)
!1383 = !DILocation(line: 348, column: 34, scope: !1380, inlinedAt: !1285)
!1384 = !DILocation(line: 349, column: 9, scope: !1380, inlinedAt: !1285)
!1385 = !DILocation(line: 350, column: 19, scope: !1386, inlinedAt: !1285)
!1386 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 350, column: 18)
!1387 = !DILocation(line: 350, column: 18, scope: !1376, inlinedAt: !1285)
!1388 = !DILocation(line: 352, column: 32, scope: !1389, inlinedAt: !1285)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 352, column: 17)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 351, column: 9)
!1391 = !DILocation(line: 352, column: 17, scope: !1390, inlinedAt: !1285)
!1392 = !DILocation(line: 353, column: 33, scope: !1390, inlinedAt: !1285)
!1393 = !DILocation(line: 354, column: 34, scope: !1390, inlinedAt: !1285)
!1394 = !DILocation(line: 355, column: 9, scope: !1390, inlinedAt: !1285)
!1395 = !DILocation(line: 356, column: 19, scope: !1396, inlinedAt: !1285)
!1396 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 356, column: 18)
!1397 = !DILocation(line: 356, column: 18, scope: !1386, inlinedAt: !1285)
!1398 = !DILocation(line: 358, column: 40, scope: !1399, inlinedAt: !1285)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 357, column: 9)
!1400 = !DILocation(line: 359, column: 28, scope: !1399, inlinedAt: !1285)
!1401 = !DILocation(line: 360, column: 46, scope: !1399, inlinedAt: !1285)
!1402 = !DILocation(line: 361, column: 44, scope: !1399, inlinedAt: !1285)
!1403 = !DILocation(line: 362, column: 9, scope: !1399, inlinedAt: !1285)
!1404 = !DILocation(line: 363, column: 19, scope: !1405, inlinedAt: !1285)
!1405 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 363, column: 18)
!1406 = !DILocation(line: 363, column: 18, scope: !1396, inlinedAt: !1285)
!1407 = !DILocation(line: 365, column: 35, scope: !1408, inlinedAt: !1285)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 364, column: 9)
!1409 = !DILocation(line: 366, column: 37, scope: !1408, inlinedAt: !1285)
!1410 = !DILocation(line: 367, column: 29, scope: !1408, inlinedAt: !1285)
!1411 = !DILocation(line: 368, column: 37, scope: !1408, inlinedAt: !1285)
!1412 = !DILocation(line: 369, column: 32, scope: !1408, inlinedAt: !1285)
!1413 = !DILocation(line: 370, column: 9, scope: !1408, inlinedAt: !1285)
!1414 = !DILocation(line: 371, column: 19, scope: !1415, inlinedAt: !1285)
!1415 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 371, column: 18)
!1416 = !DILocation(line: 371, column: 18, scope: !1405, inlinedAt: !1285)
!1417 = !DILocation(line: 373, column: 32, scope: !1418, inlinedAt: !1285)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 373, column: 17)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 372, column: 9)
!1420 = !DILocation(line: 373, column: 17, scope: !1419, inlinedAt: !1285)
!1421 = !DILocation(line: 374, column: 47, scope: !1419, inlinedAt: !1285)
!1422 = !DILocation(line: 374, column: 65, scope: !1419, inlinedAt: !1285)
!1423 = !DILocation(line: 374, column: 40, scope: !1419, inlinedAt: !1285)
!1424 = !DILocation(line: 374, column: 38, scope: !1419, inlinedAt: !1285)
!1425 = !DILocation(line: 375, column: 48, scope: !1419, inlinedAt: !1285)
!1426 = !DILocation(line: 376, column: 45, scope: !1419, inlinedAt: !1285)
!1427 = !DILocation(line: 377, column: 42, scope: !1419, inlinedAt: !1285)
!1428 = !DILocation(line: 378, column: 37, scope: !1419, inlinedAt: !1285)
!1429 = !DILocation(line: 379, column: 32, scope: !1430, inlinedAt: !1285)
!1430 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 379, column: 17)
!1431 = !DILocation(line: 379, column: 38, scope: !1430, inlinedAt: !1285)
!1432 = !DILocation(line: 379, column: 17, scope: !1419, inlinedAt: !1285)
!1433 = !DILocation(line: 380, column: 38, scope: !1430, inlinedAt: !1285)
!1434 = !DILocation(line: 380, column: 17, scope: !1430, inlinedAt: !1285)
!1435 = !DILocation(line: 384, column: 13, scope: !1436, inlinedAt: !1285)
!1436 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 383, column: 9)
!1437 = !DILocalVariable(name: "p", arg: 1, scope: !1438, file: !2, line: 1128, type: !125)
!1438 = distinct !DISubprogram(name: "x264_free", scope: !2, file: !2, line: 1128, type: !921, scopeLine: 1129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1439)
!1439 = !{!1437}
!1440 = !DILocation(line: 0, scope: !1438, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 385, column: 13, scope: !1436, inlinedAt: !1285)
!1442 = !DILocation(line: 1135, column: 15, scope: !1443, inlinedAt: !1441)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 1131, column: 5)
!1444 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 1130, column: 9)
!1445 = !DILocation(line: 1135, column: 9, scope: !1443, inlinedAt: !1441)
!1446 = !DILocation(line: 386, column: 13, scope: !1436, inlinedAt: !1285)
!1447 = !DILocation(line: 0, scope: !1319, inlinedAt: !1285)
!1448 = !DILocation(line: 390, column: 5, scope: !1281, inlinedAt: !1285)
!1449 = !DILocation(line: 391, column: 13, scope: !1281, inlinedAt: !1285)
!1450 = !DILocation(line: 392, column: 9, scope: !1281, inlinedAt: !1285)
!1451 = !DILocation(line: 393, column: 13, scope: !1283, inlinedAt: !1285)
!1452 = distinct !{!1452, !1317, !1453}
!1453 = !DILocation(line: 394, column: 5, scope: !1274, inlinedAt: !1285)
!1454 = !DILocation(line: 0, scope: !1438, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 395, column: 5, scope: !1274, inlinedAt: !1285)
!1456 = !DILocation(line: 1135, column: 15, scope: !1443, inlinedAt: !1455)
!1457 = !DILocation(line: 1135, column: 9, scope: !1443, inlinedAt: !1455)
!1458 = !DILocation(line: 405, column: 9, scope: !1058)
!1459 = !DILocation(line: 408, column: 1, scope: !1058)
!1460 = distinct !DISubprogram(name: "x264_param_apply_fastfirstpass", scope: !2, file: !2, line: 410, type: !753, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1461)
!1461 = !{!1462}
!1462 = !DILocalVariable(name: "param", arg: 1, scope: !1460, file: !2, line: 410, type: !755)
!1463 = !DILocation(line: 0, scope: !1460)
!1464 = !DILocation(line: 413, column: 19, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !2, line: 413, column: 9)
!1466 = !DILocation(line: 413, column: 9, scope: !1465)
!1467 = !DILocation(line: 413, column: 32, scope: !1465)
!1468 = !DILocation(line: 413, column: 46, scope: !1465)
!1469 = !DILocation(line: 413, column: 36, scope: !1465)
!1470 = !DILocation(line: 413, column: 9, scope: !1460)
!1471 = !DILocation(line: 415, column: 16, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 414, column: 5)
!1473 = !DILocation(line: 415, column: 34, scope: !1472)
!1474 = !DILocation(line: 416, column: 24, scope: !1472)
!1475 = !DILocation(line: 416, column: 40, scope: !1472)
!1476 = !DILocation(line: 417, column: 24, scope: !1472)
!1477 = !DILocation(line: 417, column: 30, scope: !1472)
!1478 = !DILocation(line: 418, column: 24, scope: !1472)
!1479 = !DILocation(line: 418, column: 36, scope: !1472)
!1480 = !DILocation(line: 419, column: 42, scope: !1472)
!1481 = !DILocation(line: 419, column: 40, scope: !1472)
!1482 = !DILocation(line: 420, column: 24, scope: !1472)
!1483 = !DILocation(line: 420, column: 34, scope: !1472)
!1484 = !DILocation(line: 421, column: 24, scope: !1472)
!1485 = !DILocation(line: 421, column: 37, scope: !1472)
!1486 = !DILocation(line: 422, column: 5, scope: !1472)
!1487 = !DILocation(line: 423, column: 1, scope: !1460)
!1488 = distinct !DISubprogram(name: "x264_param_apply_profile", scope: !2, file: !2, line: 425, type: !1072, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1489)
!1489 = !{!1490, !1491}
!1490 = !DILocalVariable(name: "param", arg: 1, scope: !1488, file: !2, line: 425, type: !755)
!1491 = !DILocalVariable(name: "profile", arg: 2, scope: !1488, file: !2, line: 425, type: !624)
!1492 = !DILocation(line: 0, scope: !1488)
!1493 = !DILocation(line: 427, column: 10, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 427, column: 9)
!1495 = !DILocation(line: 427, column: 9, scope: !1488)
!1496 = !DILocation(line: 430, column: 10, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 430, column: 9)
!1498 = !DILocation(line: 430, column: 9, scope: !1488)
!1499 = !DILocation(line: 432, column: 24, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 431, column: 5)
!1501 = !DILocation(line: 432, column: 40, scope: !1500)
!1502 = !DILocation(line: 433, column: 16, scope: !1500)
!1503 = !DILocation(line: 433, column: 24, scope: !1500)
!1504 = !DILocation(line: 434, column: 16, scope: !1500)
!1505 = !DILocation(line: 434, column: 29, scope: !1500)
!1506 = !DILocation(line: 435, column: 16, scope: !1500)
!1507 = !DILocation(line: 435, column: 25, scope: !1500)
!1508 = !DILocation(line: 436, column: 24, scope: !1500)
!1509 = !DILocation(line: 436, column: 40, scope: !1500)
!1510 = !DILocation(line: 437, column: 20, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 437, column: 13)
!1512 = !DILocation(line: 437, column: 13, scope: !1511)
!1513 = !DILocation(line: 437, column: 13, scope: !1500)
!1514 = !DILocation(line: 439, column: 13, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 438, column: 9)
!1516 = !DILocation(line: 440, column: 13, scope: !1515)
!1517 = !DILocation(line: 442, column: 20, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 442, column: 13)
!1519 = !DILocation(line: 442, column: 13, scope: !1518)
!1520 = !DILocation(line: 442, column: 13, scope: !1500)
!1521 = !DILocation(line: 443, column: 13, scope: !1518)
!1522 = !DILocation(line: 445, column: 15, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 445, column: 14)
!1524 = !DILocation(line: 445, column: 14, scope: !1497)
!1525 = !DILocation(line: 447, column: 24, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 446, column: 5)
!1527 = !DILocation(line: 447, column: 40, scope: !1526)
!1528 = !DILocation(line: 448, column: 16, scope: !1526)
!1529 = !DILocation(line: 448, column: 29, scope: !1526)
!1530 = !DILocation(line: 449, column: 5, scope: !1526)
!1531 = !DILocation(line: 450, column: 15, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 450, column: 14)
!1533 = !DILocation(line: 450, column: 14, scope: !1523)
!1534 = !DILocation(line: 456, column: 9, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 455, column: 5)
!1536 = !DILocation(line: 457, column: 9, scope: !1535)
!1537 = !DILocation(line: 459, column: 17, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 459, column: 9)
!1539 = !DILocation(line: 459, column: 20, scope: !1538)
!1540 = !DILocation(line: 459, column: 47, scope: !1538)
!1541 = !DILocation(line: 459, column: 60, scope: !1538)
!1542 = !DILocation(line: 459, column: 74, scope: !1538)
!1543 = !DILocation(line: 459, column: 80, scope: !1538)
!1544 = !DILocation(line: 460, column: 60, scope: !1538)
!1545 = !DILocation(line: 460, column: 74, scope: !1538)
!1546 = !DILocation(line: 459, column: 9, scope: !1488)
!1547 = !DILocation(line: 462, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 461, column: 5)
!1549 = !DILocation(line: 463, column: 9, scope: !1548)
!1550 = !DILocation(line: 466, column: 1, scope: !1488)
!1551 = !DISubprogram(name: "strcmp", scope: !742, file: !742, line: 156, type: !1552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!126, !624, !624}
!1554 = distinct !DISubprogram(name: "x264_log", scope: !2, file: !2, line: 973, type: !1555, scopeLine: 974, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2654)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !1557, !126, !624, null}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !113, line: 46, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !1560, line: 381, size: 266752, elements: !1561)
!1560 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!1561 = !{!1562, !1563, !1567, !1568, !1569, !1570, !1571, !1572, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1702, !1704, !1730, !1732, !1733, !1734, !1738, !1742, !1743, !1744, !1750, !1754, !1755, !1756, !1761, !1764, !1765, !1841, !1858, !2015, !2016, !2017, !2018, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2041, !2230, !2234, !2291, !2294, !2296, !2298, !2299, !2302, !2307, !2314, !2315, !2321, !2323, !2328, !2404, !2486, !2530, !2552, !2601, !2630}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1559, file: !1560, line: 384, baseType: !756, size: 5632)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1559, file: !1560, line: 386, baseType: !1564, size: 8256, offset: 5632)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1557, size: 8256, elements: !1565)
!1565 = !{!1566}
!1566 = !DISubrange(count: 129)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !1559, file: !1560, line: 387, baseType: !126, size: 32, offset: 13888)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1559, file: !1560, line: 388, baseType: !126, size: 32, offset: 13920)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !1559, file: !1560, line: 389, baseType: !126, size: 32, offset: 13952)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !1559, file: !1560, line: 390, baseType: !126, size: 32, offset: 13984)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !1559, file: !1560, line: 391, baseType: !126, size: 32, offset: 14016)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1559, file: !1560, line: 402, baseType: !1573, size: 576, offset: 14080)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !1560, line: 394, size: 576, elements: !1574)
!1574 = !{!1575, !1576, !1577, !1586, !1587, !1588}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !1573, file: !1560, line: 396, baseType: !126, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !1573, file: !1560, line: 397, baseType: !126, size: 32, offset: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !1573, file: !1560, line: 398, baseType: !1578, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !113, line: 604, baseType: !1580)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 593, size: 192, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !1580, file: !113, line: 595, baseType: !126, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1580, file: !113, line: 596, baseType: !126, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !1580, file: !113, line: 599, baseType: !126, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !1580, file: !113, line: 603, baseType: !1293, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !1573, file: !1560, line: 399, baseType: !126, size: 32, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !1573, file: !1560, line: 400, baseType: !1293, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !1573, file: !1560, line: 401, baseType: !1589, size: 320, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !1590, line: 56, baseType: !1591)
!1590 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !1590, line: 47, size: 320, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !1591, file: !1590, line: 49, baseType: !1293, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1591, file: !1590, line: 50, baseType: !1293, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !1591, file: !1590, line: 51, baseType: !1293, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !1591, file: !1590, line: 53, baseType: !128, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !1591, file: !1590, line: 54, baseType: !126, size: 32, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !1591, file: !1590, line: 55, baseType: !126, size: 32, offset: 288)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !1559, file: !1560, line: 404, baseType: !1293, size: 64, offset: 14656)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !1559, file: !1560, line: 405, baseType: !126, size: 32, offset: 14720)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !1559, file: !1560, line: 410, baseType: !126, size: 32, offset: 14752)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !1559, file: !1560, line: 411, baseType: !126, size: 32, offset: 14784)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !1559, file: !1560, line: 413, baseType: !126, size: 32, offset: 14816)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !1559, file: !1560, line: 415, baseType: !126, size: 32, offset: 14848)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !1559, file: !1560, line: 416, baseType: !126, size: 32, offset: 14880)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !1559, file: !1560, line: 418, baseType: !126, size: 32, offset: 14912)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !1559, file: !1560, line: 419, baseType: !126, size: 32, offset: 14944)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !1559, file: !1560, line: 420, baseType: !126, size: 32, offset: 14976)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !1559, file: !1560, line: 421, baseType: !126, size: 32, offset: 15008)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !1559, file: !1560, line: 422, baseType: !126, size: 32, offset: 15040)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !1559, file: !1560, line: 424, baseType: !126, size: 32, offset: 15072)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !1559, file: !1560, line: 425, baseType: !126, size: 32, offset: 15104)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !1559, file: !1560, line: 427, baseType: !126, size: 32, offset: 15136)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !1559, file: !1560, line: 430, baseType: !1615, size: 10400, offset: 15168)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1616, size: 10400, elements: !636)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !1617, line: 154, baseType: !1618)
!1617 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1617, line: 52, size: 10400, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1652, !1653, !1701}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !1618, file: !1617, line: 54, baseType: !126, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !1618, file: !1617, line: 56, baseType: !126, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !1618, file: !1617, line: 57, baseType: !126, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !1618, file: !1617, line: 59, baseType: !126, size: 32, offset: 96)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !1618, file: !1617, line: 60, baseType: !126, size: 32, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !1618, file: !1617, line: 61, baseType: !126, size: 32, offset: 160)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !1618, file: !1617, line: 63, baseType: !126, size: 32, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !1618, file: !1617, line: 65, baseType: !126, size: 32, offset: 224)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !1618, file: !1617, line: 67, baseType: !126, size: 32, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !1618, file: !1617, line: 69, baseType: !126, size: 32, offset: 288)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !1618, file: !1617, line: 70, baseType: !126, size: 32, offset: 320)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !1618, file: !1617, line: 71, baseType: !126, size: 32, offset: 352)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !1618, file: !1617, line: 72, baseType: !126, size: 32, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !1618, file: !1617, line: 73, baseType: !1634, size: 8192, offset: 416)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 8192, elements: !1635)
!1635 = !{!1636}
!1636 = !DISubrange(count: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !1618, file: !1617, line: 75, baseType: !126, size: 32, offset: 8608)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !1618, file: !1617, line: 76, baseType: !126, size: 32, offset: 8640)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !1618, file: !1617, line: 77, baseType: !126, size: 32, offset: 8672)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !1618, file: !1617, line: 78, baseType: !126, size: 32, offset: 8704)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !1618, file: !1617, line: 79, baseType: !126, size: 32, offset: 8736)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !1618, file: !1617, line: 80, baseType: !126, size: 32, offset: 8768)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !1618, file: !1617, line: 81, baseType: !126, size: 32, offset: 8800)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !1618, file: !1617, line: 83, baseType: !126, size: 32, offset: 8832)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !1618, file: !1617, line: 90, baseType: !1646, size: 128, offset: 8864)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1618, file: !1617, line: 84, size: 128, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1651}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !1646, file: !1617, line: 86, baseType: !126, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !1646, file: !1617, line: 87, baseType: !126, size: 32, offset: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !1646, file: !1617, line: 88, baseType: !126, size: 32, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !1646, file: !1617, line: 89, baseType: !126, size: 32, offset: 96)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !1618, file: !1617, line: 92, baseType: !126, size: 32, offset: 8992)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !1618, file: !1617, line: 150, baseType: !1654, size: 1344, offset: 9024)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1618, file: !1617, line: 93, size: 1344, elements: !1655)
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !1654, file: !1617, line: 95, baseType: !126, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !1654, file: !1617, line: 96, baseType: !126, size: 32, offset: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !1654, file: !1617, line: 97, baseType: !126, size: 32, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !1654, file: !1617, line: 99, baseType: !126, size: 32, offset: 96)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !1654, file: !1617, line: 100, baseType: !126, size: 32, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !1654, file: !1617, line: 102, baseType: !126, size: 32, offset: 160)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !1654, file: !1617, line: 103, baseType: !126, size: 32, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !1654, file: !1617, line: 104, baseType: !126, size: 32, offset: 224)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !1654, file: !1617, line: 105, baseType: !126, size: 32, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !1654, file: !1617, line: 106, baseType: !126, size: 32, offset: 288)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !1654, file: !1617, line: 107, baseType: !126, size: 32, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !1654, file: !1617, line: 108, baseType: !126, size: 32, offset: 352)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !1654, file: !1617, line: 110, baseType: !126, size: 32, offset: 384)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !1654, file: !1617, line: 111, baseType: !126, size: 32, offset: 416)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !1654, file: !1617, line: 112, baseType: !126, size: 32, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !1654, file: !1617, line: 114, baseType: !126, size: 32, offset: 480)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !1654, file: !1617, line: 115, baseType: !907, size: 32, offset: 512)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !1654, file: !1617, line: 116, baseType: !907, size: 32, offset: 544)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !1654, file: !1617, line: 117, baseType: !126, size: 32, offset: 576)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !1654, file: !1617, line: 119, baseType: !126, size: 32, offset: 608)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !1654, file: !1617, line: 120, baseType: !126, size: 32, offset: 640)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !1654, file: !1617, line: 137, baseType: !1678, size: 384, offset: 672)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !1617, line: 122, size: 384, elements: !1679)
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !1678, file: !1617, line: 124, baseType: !126, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !1678, file: !1617, line: 125, baseType: !126, size: 32, offset: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !1678, file: !1617, line: 126, baseType: !126, size: 32, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !1678, file: !1617, line: 127, baseType: !126, size: 32, offset: 96)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !1678, file: !1617, line: 128, baseType: !126, size: 32, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !1678, file: !1617, line: 129, baseType: !126, size: 32, offset: 160)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !1678, file: !1617, line: 130, baseType: !126, size: 32, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !1678, file: !1617, line: 131, baseType: !126, size: 32, offset: 224)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !1678, file: !1617, line: 133, baseType: !126, size: 32, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !1678, file: !1617, line: 134, baseType: !126, size: 32, offset: 288)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !1678, file: !1617, line: 135, baseType: !126, size: 32, offset: 320)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !1678, file: !1617, line: 136, baseType: !126, size: 32, offset: 352)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !1654, file: !1617, line: 139, baseType: !126, size: 32, offset: 1056)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !1654, file: !1617, line: 140, baseType: !126, size: 32, offset: 1088)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !1654, file: !1617, line: 141, baseType: !126, size: 32, offset: 1120)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !1654, file: !1617, line: 142, baseType: !126, size: 32, offset: 1152)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !1654, file: !1617, line: 143, baseType: !126, size: 32, offset: 1184)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !1654, file: !1617, line: 144, baseType: !126, size: 32, offset: 1216)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !1654, file: !1617, line: 145, baseType: !126, size: 32, offset: 1248)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !1654, file: !1617, line: 146, baseType: !126, size: 32, offset: 1280)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !1654, file: !1617, line: 147, baseType: !126, size: 32, offset: 1312)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !1618, file: !1617, line: 152, baseType: !126, size: 32, offset: 10368)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !1559, file: !1560, line: 431, baseType: !1703, size: 64, offset: 25600)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !1559, file: !1560, line: 432, baseType: !1705, size: 960, offset: 25664)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1706, size: 960, elements: !636)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !1617, line: 186, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1617, line: 156, size: 960, elements: !1708)
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !1707, file: !1617, line: 158, baseType: !126, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !1707, file: !1617, line: 159, baseType: !126, size: 32, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !1707, file: !1617, line: 161, baseType: !126, size: 32, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !1707, file: !1617, line: 163, baseType: !126, size: 32, offset: 96)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !1707, file: !1617, line: 164, baseType: !126, size: 32, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !1707, file: !1617, line: 166, baseType: !126, size: 32, offset: 160)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !1707, file: !1617, line: 167, baseType: !126, size: 32, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !1707, file: !1617, line: 169, baseType: !126, size: 32, offset: 224)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !1707, file: !1617, line: 170, baseType: !126, size: 32, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !1707, file: !1617, line: 172, baseType: !126, size: 32, offset: 288)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !1707, file: !1617, line: 173, baseType: !126, size: 32, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !1707, file: !1617, line: 175, baseType: !126, size: 32, offset: 352)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !1707, file: !1617, line: 177, baseType: !126, size: 32, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !1707, file: !1617, line: 178, baseType: !126, size: 32, offset: 416)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !1707, file: !1617, line: 179, baseType: !126, size: 32, offset: 448)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !1707, file: !1617, line: 181, baseType: !126, size: 32, offset: 480)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !1707, file: !1617, line: 183, baseType: !126, size: 32, offset: 512)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !1707, file: !1617, line: 184, baseType: !1727, size: 384, offset: 576)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1728, size: 384, elements: !44)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !1559, file: !1560, line: 433, baseType: !1731, size: 64, offset: 26624)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !1559, file: !1560, line: 434, baseType: !126, size: 32, offset: 26688)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !1559, file: !1560, line: 437, baseType: !126, size: 32, offset: 26720)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !1559, file: !1560, line: 440, baseType: !1735, size: 256, offset: 26752)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1736, size: 256, elements: !49)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 512, elements: !75)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !1559, file: !1560, line: 441, baseType: !1739, size: 128, offset: 27008)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1740, size: 128, elements: !56)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2048, elements: !812)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !1559, file: !1560, line: 443, baseType: !1735, size: 256, offset: 27136)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !1559, file: !1560, line: 444, baseType: !1739, size: 128, offset: 27392)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !1559, file: !1560, line: 446, baseType: !1745, size: 256, offset: 27520)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1746, size: 256, elements: !49)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1748, size: 256, elements: !75)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !803, line: 25, baseType: !1749)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !805, line: 40, baseType: !127)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !1559, file: !1560, line: 447, baseType: !1751, size: 128, offset: 27776)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1752, size: 128, elements: !56)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1748, size: 1024, elements: !812)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !1559, file: !1560, line: 448, baseType: !1745, size: 256, offset: 27904)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !1559, file: !1560, line: 449, baseType: !1751, size: 128, offset: 28160)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !1559, file: !1560, line: 454, baseType: !1757, size: 5888, offset: 28288)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1758, size: 5888, elements: !1759)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1759 = !{!1760}
!1760 = !DISubrange(count: 92)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !1559, file: !1560, line: 455, baseType: !1762, size: 23552, offset: 34176)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1758, size: 23552, elements: !1763)
!1763 = !{!1760, !50}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !1559, file: !1560, line: 457, baseType: !1728, size: 64, offset: 57728)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !1559, file: !1560, line: 460, baseType: !1766, size: 53376, offset: 57856)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !1560, line: 364, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1560, line: 302, size: 53376, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1797, !1825, !1826, !1827, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !1767, file: !1560, line: 304, baseType: !1703, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !1767, file: !1560, line: 305, baseType: !1731, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1767, file: !1560, line: 307, baseType: !126, size: 32, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !1767, file: !1560, line: 308, baseType: !126, size: 32, offset: 160)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !1767, file: !1560, line: 309, baseType: !126, size: 32, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !1767, file: !1560, line: 311, baseType: !126, size: 32, offset: 224)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !1767, file: !1560, line: 313, baseType: !126, size: 32, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !1767, file: !1560, line: 315, baseType: !126, size: 32, offset: 288)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !1767, file: !1560, line: 316, baseType: !126, size: 32, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !1767, file: !1560, line: 317, baseType: !126, size: 32, offset: 352)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !1767, file: !1560, line: 319, baseType: !126, size: 32, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !1767, file: !1560, line: 321, baseType: !126, size: 32, offset: 416)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !1767, file: !1560, line: 322, baseType: !126, size: 32, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !1767, file: !1560, line: 324, baseType: !856, size: 64, offset: 480)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !1767, file: !1560, line: 325, baseType: !126, size: 32, offset: 544)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !1767, file: !1560, line: 327, baseType: !126, size: 32, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !1767, file: !1560, line: 329, baseType: !126, size: 32, offset: 608)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !1767, file: !1560, line: 330, baseType: !126, size: 32, offset: 640)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !1767, file: !1560, line: 331, baseType: !126, size: 32, offset: 672)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !1767, file: !1560, line: 333, baseType: !126, size: 32, offset: 704)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !1767, file: !1560, line: 334, baseType: !126, size: 32, offset: 736)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !1767, file: !1560, line: 339, baseType: !1791, size: 2048, offset: 768)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1792, size: 2048, elements: !1796)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1560, line: 335, size: 64, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !1792, file: !1560, line: 337, baseType: !126, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1792, file: !1560, line: 338, baseType: !126, size: 32, offset: 32)
!1796 = !{!57, !76}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1767, file: !1560, line: 342, baseType: !1798, size: 49152, align: 128, offset: 2816)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1799, size: 49152, align: 128, elements: !1823)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !1800, line: 36, baseType: !1801, align: 128)
!1800 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !1800, line: 26, size: 512, elements: !1802)
!1802 = !{!1803, !1809, !1810, !1813, !1814, !1815}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !1801, file: !1800, line: 30, baseType: !1804, size: 128, align: 128)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 128, elements: !61)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1806, line: 25, baseType: !1807)
!1806 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !805, line: 39, baseType: !1808)
!1808 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !1801, file: !1800, line: 31, baseType: !1804, size: 128, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !1801, file: !1800, line: 32, baseType: !1811, size: 32, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1806, line: 26, baseType: !1812)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !805, line: 41, baseType: !126)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !1801, file: !1800, line: 33, baseType: !1811, size: 32, offset: 288)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !1801, file: !1800, line: 34, baseType: !1811, size: 32, offset: 320)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !1801, file: !1800, line: 35, baseType: !1816, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !1800, line: 25, baseType: !1818)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !1293, !126, !1293, !126, !1821, !126}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1801)
!1823 = !{!1824, !140}
!1824 = !DISubrange(count: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !1767, file: !1560, line: 344, baseType: !126, size: 32, offset: 51968)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !1767, file: !1560, line: 345, baseType: !126, size: 32, offset: 52000)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !1767, file: !1560, line: 350, baseType: !1828, size: 1024, offset: 52032)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1829, size: 1024, elements: !75)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1560, line: 346, size: 64, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !1829, file: !1560, line: 348, baseType: !126, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !1829, file: !1560, line: 349, baseType: !126, size: 32, offset: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !1767, file: !1560, line: 352, baseType: !126, size: 32, offset: 53056)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !1767, file: !1560, line: 354, baseType: !126, size: 32, offset: 53088)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !1767, file: !1560, line: 355, baseType: !126, size: 32, offset: 53120)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !1767, file: !1560, line: 356, baseType: !126, size: 32, offset: 53152)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !1767, file: !1560, line: 357, baseType: !126, size: 32, offset: 53184)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !1767, file: !1560, line: 360, baseType: !126, size: 32, offset: 53216)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !1767, file: !1560, line: 361, baseType: !126, size: 32, offset: 53248)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !1767, file: !1560, line: 362, baseType: !126, size: 32, offset: 53280)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !1559, file: !1560, line: 463, baseType: !1842, size: 4096, offset: 111232)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !1843, line: 46, baseType: !1844)
!1843 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1843, line: 27, size: 4096, elements: !1845)
!1845 = !{!1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !1844, file: !1843, line: 30, baseType: !126, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !1844, file: !1843, line: 31, baseType: !126, size: 32, offset: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !1844, file: !1843, line: 34, baseType: !126, size: 32, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !1844, file: !1843, line: 35, baseType: !126, size: 32, offset: 96)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !1844, file: !1843, line: 37, baseType: !1293, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1844, file: !1843, line: 38, baseType: !1293, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !1844, file: !1843, line: 39, baseType: !1293, size: 64, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !1844, file: !1843, line: 42, baseType: !126, size: 32, align: 128, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1844, file: !1843, line: 45, baseType: !1855, size: 3680, offset: 416)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 3680, elements: !1856)
!1856 = !{!1857}
!1857 = !DISubrange(count: 460)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !1559, file: !1560, line: 494, baseType: !1859, size: 2112, offset: 115328)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !1560, line: 465, size: 2112, elements: !1860)
!1860 = !{!1861, !1995, !1997, !1998, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2011, !2012, !2013, !2014}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1859, file: !1560, line: 468, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !1865, line: 146, baseType: !1866)
!1865 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !1865, line: 31, size: 125056, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1896, !1897, !1898, !1899, !1900, !1901, !1903, !1905, !1906, !1907, !1908, !1909, !1912, !1914, !1915, !1917, !1922, !1923, !1927, !1928, !1931, !1934, !1936, !1938, !1939, !1941, !1942, !1944, !1945, !1946, !1948, !1950, !1951, !1952, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1963, !1964, !1967, !1976, !1980, !1982, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !1866, file: !1865, line: 34, baseType: !126, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1866, file: !1865, line: 35, baseType: !126, size: 32, offset: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !1866, file: !1865, line: 36, baseType: !126, size: 32, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !1866, file: !1865, line: 37, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1806, line: 27, baseType: !1873)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !805, line: 44, baseType: !130)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !1866, file: !1865, line: 38, baseType: !1872, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !1866, file: !1865, line: 39, baseType: !126, size: 32, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !1866, file: !1865, line: 40, baseType: !126, size: 32, offset: 288)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !1866, file: !1865, line: 41, baseType: !126, size: 32, offset: 320)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !1866, file: !1865, line: 42, baseType: !126, size: 32, offset: 352)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1866, file: !1865, line: 43, baseType: !755, size: 64, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !1866, file: !1865, line: 45, baseType: !126, size: 32, offset: 448)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !1866, file: !1865, line: 46, baseType: !126, size: 32, offset: 480)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !1866, file: !1865, line: 47, baseType: !126, size: 32, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !1866, file: !1865, line: 48, baseType: !126, size: 32, offset: 544)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !1866, file: !1865, line: 49, baseType: !126, size: 32, offset: 576)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !1866, file: !1865, line: 50, baseType: !126, size: 32, offset: 608)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !1866, file: !1865, line: 51, baseType: !126, size: 32, offset: 640)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !1866, file: !1865, line: 52, baseType: !802, size: 8, offset: 672)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !1866, file: !1865, line: 53, baseType: !802, size: 8, offset: 680)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !1866, file: !1865, line: 54, baseType: !802, size: 8, offset: 688)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !1866, file: !1865, line: 55, baseType: !852, size: 32, offset: 704)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !1866, file: !1865, line: 56, baseType: !852, size: 32, offset: 736)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !1866, file: !1865, line: 57, baseType: !126, size: 32, offset: 768)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !1866, file: !1865, line: 60, baseType: !126, size: 32, offset: 800)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !1866, file: !1865, line: 61, baseType: !1895, size: 96, offset: 832)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 96, elements: !139)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !1866, file: !1865, line: 62, baseType: !1895, size: 96, offset: 928)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !1866, file: !1865, line: 63, baseType: !1895, size: 96, offset: 1024)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !1866, file: !1865, line: 64, baseType: !126, size: 32, offset: 1120)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !1866, file: !1865, line: 65, baseType: !126, size: 32, offset: 1152)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !1866, file: !1865, line: 66, baseType: !126, size: 32, offset: 1184)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !1866, file: !1865, line: 67, baseType: !1902, size: 192, offset: 1216)
!1902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1293, size: 192, elements: !139)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !1866, file: !1865, line: 68, baseType: !1904, size: 256, offset: 1408)
!1904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1293, size: 256, elements: !49)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !1866, file: !1865, line: 69, baseType: !1904, size: 256, offset: 1664)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !1866, file: !1865, line: 70, baseType: !1758, size: 64, offset: 1920)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1866, file: !1865, line: 74, baseType: !1904, size: 256, offset: 1984)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !1866, file: !1865, line: 75, baseType: !1904, size: 256, offset: 2240)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1866, file: !1865, line: 77, baseType: !1910, size: 24576, align: 128, offset: 2560)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1799, size: 24576, align: 128, elements: !1911)
!1911 = !{!76, !140}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !1866, file: !1865, line: 78, baseType: !1913, size: 1024, offset: 27136)
!1913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1293, size: 1024, elements: !75)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !1866, file: !1865, line: 79, baseType: !126, size: 32, offset: 28160)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !1866, file: !1865, line: 80, baseType: !1916, size: 64, offset: 28224)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !1866, file: !1865, line: 83, baseType: !1918, size: 64, offset: 28288)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1806, line: 24, baseType: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !805, line: 37, baseType: !1921)
!1921 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !1866, file: !1865, line: 84, baseType: !1293, size: 64, offset: 28352)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1866, file: !1865, line: 85, baseType: !1924, size: 128, offset: 28416)
!1924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1925, size: 128, elements: !56)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 32, elements: !56)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !1866, file: !1865, line: 86, baseType: !1925, size: 64, offset: 28544)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !1866, file: !1865, line: 87, baseType: !1929, size: 2176, offset: 28608)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1925, size: 2176, elements: !1930)
!1930 = !{!57, !285}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !1866, file: !1865, line: 92, baseType: !1932, size: 20736, offset: 30784)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1758, size: 20736, elements: !1933)
!1933 = !{!218, !218}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !1866, file: !1865, line: 96, baseType: !1935, size: 2176, offset: 51520)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 2176, elements: !1930)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1866, file: !1865, line: 97, baseType: !1937, size: 128, offset: 53696)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1918, size: 128, elements: !56)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !1866, file: !1865, line: 98, baseType: !856, size: 64, offset: 53824)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !1866, file: !1865, line: 99, baseType: !1940, size: 1024, offset: 53888)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1024, elements: !1796)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !1866, file: !1865, line: 100, baseType: !1926, size: 32, offset: 54912)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !1866, file: !1865, line: 105, baseType: !1943, size: 10368, offset: 54944)
!1943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 10368, elements: !1933)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !1866, file: !1865, line: 106, baseType: !1943, size: 10368, offset: 65312)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !1866, file: !1865, line: 107, baseType: !126, size: 32, offset: 75680)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !1866, file: !1865, line: 108, baseType: !1947, size: 576, offset: 75712)
!1947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 576, elements: !217)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !1866, file: !1865, line: 109, baseType: !1949, size: 20736, offset: 76288)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 20736, elements: !1933)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !1866, file: !1865, line: 110, baseType: !132, size: 64, offset: 97024)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !1866, file: !1865, line: 111, baseType: !132, size: 64, offset: 97088)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !1866, file: !1865, line: 112, baseType: !1953, size: 64, offset: 97152)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !1866, file: !1865, line: 113, baseType: !1953, size: 64, offset: 97216)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !1866, file: !1865, line: 114, baseType: !1953, size: 64, offset: 97280)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !1866, file: !1865, line: 115, baseType: !126, size: 32, offset: 97344)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !1866, file: !1865, line: 116, baseType: !1758, size: 64, offset: 97408)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !1866, file: !1865, line: 117, baseType: !1758, size: 64, offset: 97472)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !1866, file: !1865, line: 118, baseType: !1758, size: 64, offset: 97536)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !1866, file: !1865, line: 119, baseType: !126, size: 32, offset: 97600)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !1866, file: !1865, line: 120, baseType: !1962, size: 576, offset: 97632)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 576, elements: !217)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !1866, file: !1865, line: 121, baseType: !907, size: 32, offset: 98208)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !1866, file: !1865, line: 122, baseType: !1965, size: 64, offset: 98240)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !803, line: 27, baseType: !1966)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !805, line: 45, baseType: !745)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !1866, file: !1865, line: 125, baseType: !1968, size: 256, offset: 98304)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !113, line: 503, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 496, size: 256, elements: !1970)
!1970 = !{!1971, !1973, !1974, !1975}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !1969, file: !113, line: 498, baseType: !1972, size: 64)
!1972 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !1969, file: !113, line: 499, baseType: !1972, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !1969, file: !113, line: 500, baseType: !1972, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !1969, file: !113, line: 502, baseType: !1972, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !1866, file: !1865, line: 128, baseType: !1977, size: 2008, offset: 98560)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 2008, elements: !1978)
!1978 = !{!1979}
!1979 = !DISubrange(count: 251)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !1866, file: !1865, line: 129, baseType: !1981, size: 8032, offset: 100576)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 8032, elements: !1978)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !1866, file: !1865, line: 130, baseType: !1983, size: 16064, offset: 108608)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1972, size: 16064, elements: !1978)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !1866, file: !1865, line: 131, baseType: !126, size: 32, offset: 124672)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !1866, file: !1865, line: 132, baseType: !126, size: 32, offset: 124704)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !1866, file: !1865, line: 135, baseType: !126, size: 32, offset: 124736)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !1866, file: !1865, line: 136, baseType: !126, size: 32, offset: 124768)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !1866, file: !1865, line: 137, baseType: !126, size: 32, offset: 124800)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1866, file: !1865, line: 138, baseType: !126, size: 32, offset: 124832)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !1866, file: !1865, line: 139, baseType: !126, size: 32, offset: 124864)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !1866, file: !1865, line: 142, baseType: !852, size: 32, offset: 124896)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !1866, file: !1865, line: 143, baseType: !126, size: 32, offset: 124928)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !1866, file: !1865, line: 144, baseType: !126, size: 32, offset: 124960)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !1866, file: !1865, line: 145, baseType: !126, size: 32, offset: 124992)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1859, file: !1560, line: 470, baseType: !1996, size: 128, offset: 64)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1862, size: 128, elements: !56)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !1859, file: !1560, line: 473, baseType: !1862, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1859, file: !1560, line: 476, baseType: !1999, size: 1152, offset: 256)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1863, size: 1152, elements: !217)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1859, file: !1560, line: 478, baseType: !126, size: 32, offset: 1408)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !1859, file: !1560, line: 480, baseType: !126, size: 32, offset: 1440)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !1859, file: !1560, line: 482, baseType: !126, size: 32, offset: 1472)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !1859, file: !1560, line: 483, baseType: !126, size: 32, offset: 1504)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !1859, file: !1560, line: 484, baseType: !126, size: 32, offset: 1536)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !1859, file: !1560, line: 485, baseType: !126, size: 32, offset: 1568)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !1859, file: !1560, line: 486, baseType: !126, size: 32, offset: 1600)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !1859, file: !1560, line: 487, baseType: !1872, size: 64, offset: 1664)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !1859, file: !1560, line: 488, baseType: !1872, size: 64, offset: 1728)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !1859, file: !1560, line: 489, baseType: !2010, size: 128, offset: 1792)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 128, elements: !56)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !1859, file: !1560, line: 490, baseType: !1872, size: 64, offset: 1920)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !1859, file: !1560, line: 491, baseType: !1872, size: 64, offset: 1984)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !1859, file: !1560, line: 492, baseType: !126, size: 32, offset: 2048)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !1859, file: !1560, line: 493, baseType: !126, size: 32, offset: 2080)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !1559, file: !1560, line: 497, baseType: !1863, size: 64, offset: 117440)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !1559, file: !1560, line: 500, baseType: !1863, size: 64, offset: 117504)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !1559, file: !1560, line: 503, baseType: !126, size: 32, offset: 117568)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !1559, file: !1560, line: 504, baseType: !2019, size: 1216, offset: 117632)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1863, size: 1216, elements: !471)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !1559, file: !1560, line: 505, baseType: !126, size: 32, offset: 118848)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !1559, file: !1560, line: 506, baseType: !2019, size: 1216, offset: 118912)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !1559, file: !1560, line: 507, baseType: !856, size: 64, offset: 120128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !1559, file: !1560, line: 510, baseType: !126, size: 32, offset: 120192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !1559, file: !1560, line: 511, baseType: !126, size: 32, offset: 120224)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !1559, file: !1560, line: 512, baseType: !1872, size: 64, offset: 120256)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !1559, file: !1560, line: 522, baseType: !2027, size: 10624, offset: 120320)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !1560, line: 515, size: 10624, elements: !2028)
!2028 = !{!2029, !2031, !2034, !2037}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !2027, file: !1560, line: 517, baseType: !2030, size: 256, align: 128)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 256, elements: !75)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !2027, file: !1560, line: 518, baseType: !2032, size: 128, align: 128, offset: 256)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 128, elements: !2033)
!2033 = !{!57, !50}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !2027, file: !1560, line: 520, baseType: !2035, size: 4096, align: 128, offset: 384)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 4096, elements: !2036)
!2036 = !{!50, !813}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !2027, file: !1560, line: 521, baseType: !2038, size: 6144, align: 128, offset: 4480)
!2038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 6144, elements: !2039)
!2039 = !{!2040, !76}
!2040 = !DISubrange(count: 24)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !1559, file: !1560, line: 732, baseType: !2042, size: 82688, offset: 130944)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !1560, line: 525, size: 82688, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2071, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2089, !2092, !2096, !2097, !2098, !2103, !2104, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2170, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2210, !2211, !2212, !2215, !2218, !2220, !2223, !2225, !2226}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !2042, file: !1560, line: 527, baseType: !126, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !2042, file: !1560, line: 530, baseType: !126, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !2042, file: !1560, line: 531, baseType: !126, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !2042, file: !1560, line: 532, baseType: !126, size: 32, offset: 96)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !2042, file: !1560, line: 535, baseType: !126, size: 32, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !2042, file: !1560, line: 536, baseType: !126, size: 32, offset: 160)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !2042, file: !1560, line: 537, baseType: !126, size: 32, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !2042, file: !1560, line: 538, baseType: !126, size: 32, offset: 224)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !2042, file: !1560, line: 539, baseType: !126, size: 32, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !2042, file: !1560, line: 542, baseType: !126, size: 32, offset: 288)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !2042, file: !1560, line: 543, baseType: !126, size: 32, offset: 320)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !2042, file: !1560, line: 544, baseType: !126, size: 32, offset: 352)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !2042, file: !1560, line: 545, baseType: !126, size: 32, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !2042, file: !1560, line: 546, baseType: !126, size: 32, offset: 416)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !2042, file: !1560, line: 547, baseType: !126, size: 32, offset: 448)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !2042, file: !1560, line: 548, baseType: !126, size: 32, offset: 480)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !2042, file: !1560, line: 549, baseType: !126, size: 32, offset: 512)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !2042, file: !1560, line: 551, baseType: !126, size: 32, offset: 544)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !2042, file: !1560, line: 554, baseType: !856, size: 64, offset: 576)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !2042, file: !1560, line: 555, baseType: !856, size: 64, offset: 640)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !2042, file: !1560, line: 558, baseType: !856, size: 64, offset: 704)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !2042, file: !1560, line: 559, baseType: !856, size: 64, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !2042, file: !1560, line: 561, baseType: !856, size: 64, offset: 832)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !2042, file: !1560, line: 562, baseType: !856, size: 64, offset: 896)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !2042, file: !1560, line: 565, baseType: !98, size: 32, offset: 960)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !2042, file: !1560, line: 566, baseType: !2070, size: 128, offset: 992)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !49)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !2042, file: !1560, line: 567, baseType: !2072, size: 512, offset: 1120)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 512, elements: !75)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !2042, file: !1560, line: 568, baseType: !98, size: 32, offset: 1632)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !2042, file: !1560, line: 569, baseType: !98, size: 32, offset: 1664)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !2042, file: !1560, line: 570, baseType: !126, size: 32, offset: 1696)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !2042, file: !1560, line: 571, baseType: !126, size: 32, offset: 1728)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !2042, file: !1560, line: 572, baseType: !126, size: 32, offset: 1760)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !2042, file: !1560, line: 573, baseType: !126, size: 32, offset: 1792)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !2042, file: !1560, line: 574, baseType: !126, size: 32, offset: 1824)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !2042, file: !1560, line: 575, baseType: !126, size: 32, offset: 1856)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !2042, file: !1560, line: 576, baseType: !126, size: 32, offset: 1888)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !2042, file: !1560, line: 577, baseType: !126, size: 32, offset: 1920)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !2042, file: !1560, line: 578, baseType: !126, size: 32, offset: 1952)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2042, file: !1560, line: 585, baseType: !1918, size: 64, offset: 1984)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !2042, file: !1560, line: 586, baseType: !1293, size: 64, offset: 2048)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !2042, file: !1560, line: 587, baseType: !1918, size: 64, offset: 2112)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !2042, file: !1560, line: 588, baseType: !2088, size: 64, offset: 2176)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !2042, file: !1560, line: 589, baseType: !2090, size: 64, offset: 2240)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 64, elements: !61)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !2042, file: !1560, line: 591, baseType: !2093, size: 64, offset: 2304)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 192, elements: !2095)
!2095 = !{!2040}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !2042, file: !1560, line: 592, baseType: !1918, size: 64, offset: 2368)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !2042, file: !1560, line: 593, baseType: !1924, size: 128, offset: 2432)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !2042, file: !1560, line: 594, baseType: !2099, size: 128, offset: 2560)
!2099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2100, size: 128, elements: !56)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 128, elements: !2102)
!2102 = !{!62, !57}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2042, file: !1560, line: 595, baseType: !1937, size: 128, offset: 2688)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !2042, file: !1560, line: 596, baseType: !2105, size: 4096, offset: 2816)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1925, size: 4096, elements: !2106)
!2106 = !{!57, !1824}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !2042, file: !1560, line: 597, baseType: !1918, size: 64, offset: 6912)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !2042, file: !1560, line: 598, baseType: !1918, size: 64, offset: 6976)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !2042, file: !1560, line: 599, baseType: !1758, size: 64, offset: 7040)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !2042, file: !1560, line: 603, baseType: !1913, size: 1024, offset: 7104)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !2042, file: !1560, line: 606, baseType: !126, size: 32, offset: 8128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !2042, file: !1560, line: 607, baseType: !126, size: 32, offset: 8160)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !2042, file: !1560, line: 608, baseType: !2114, size: 32, align: 32, offset: 8192)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 32, elements: !49)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !2042, file: !1560, line: 609, baseType: !126, size: 32, offset: 8224)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !2042, file: !1560, line: 611, baseType: !126, size: 32, offset: 8256)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !2042, file: !1560, line: 612, baseType: !126, size: 32, offset: 8288)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !2042, file: !1560, line: 614, baseType: !126, size: 32, offset: 8320)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !2042, file: !1560, line: 615, baseType: !126, size: 32, offset: 8352)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !2042, file: !1560, line: 621, baseType: !126, size: 32, offset: 8384)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !2042, file: !1560, line: 624, baseType: !126, size: 32, offset: 8416)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !2042, file: !1560, line: 626, baseType: !126, size: 32, offset: 8448)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !2042, file: !1560, line: 627, baseType: !126, size: 32, offset: 8480)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !2042, file: !1560, line: 671, baseType: !2125, size: 60672, offset: 8576)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !1560, line: 629, size: 60672, elements: !2126)
!2126 = !{!2127, !2131, !2135, !2137, !2138, !2141, !2144, !2146, !2147, !2148, !2149, !2150, !2153, !2155, !2158, !2159, !2160, !2161, !2162, !2165, !2167, !2169}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !2125, file: !1560, line: 634, baseType: !2128, size: 3072, align: 128)
!2128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 3072, elements: !2129)
!2129 = !{!2130}
!2130 = !DISubrange(count: 384)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !2125, file: !1560, line: 635, baseType: !2132, size: 6912, align: 128, offset: 3072)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 6912, elements: !2133)
!2133 = !{!2134}
!2134 = !DISubrange(count: 864)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !2125, file: !1560, line: 638, baseType: !2136, size: 2048, align: 128, offset: 9984)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 2048, elements: !1635)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !2125, file: !1560, line: 639, baseType: !2136, size: 2048, align: 128, offset: 12032)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !2125, file: !1560, line: 640, baseType: !2139, size: 3072, align: 128, offset: 14080)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 3072, elements: !2140)
!2140 = !{!140, !813}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !2125, file: !1560, line: 641, baseType: !2142, size: 3840, align: 128, offset: 17152)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 3840, elements: !2143)
!2143 = !{!6, !76}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !2125, file: !1560, line: 642, baseType: !2145, size: 128, offset: 20992)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 128, elements: !49)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !2125, file: !1560, line: 643, baseType: !2145, size: 128, offset: 21120)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !2125, file: !1560, line: 644, baseType: !126, size: 32, offset: 21248)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !2125, file: !1560, line: 645, baseType: !126, size: 32, offset: 21280)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !2125, file: !1560, line: 648, baseType: !2035, size: 4096, align: 128, offset: 21376)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !2125, file: !1560, line: 649, baseType: !2151, size: 4096, align: 128, offset: 25472)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 4096, elements: !2152)
!2152 = !{!76, !76}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !2125, file: !1560, line: 652, baseType: !2154, size: 576, align: 128, offset: 29568)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1965, size: 576, elements: !10)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !2125, file: !1560, line: 653, baseType: !2156, size: 1024, align: 128, offset: 30208)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 1024, elements: !2157)
!2157 = !{!1824}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !2125, file: !1560, line: 656, baseType: !1902, size: 192, offset: 31232)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !2125, file: !1560, line: 658, baseType: !1902, size: 192, offset: 31424)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !2125, file: !1560, line: 661, baseType: !1902, size: 192, offset: 31616)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !2125, file: !1560, line: 664, baseType: !856, size: 64, offset: 31808)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !2125, file: !1560, line: 665, baseType: !2163, size: 24576, offset: 31872)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1293, size: 24576, elements: !2164)
!2164 = !{!57, !1824, !45}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !2125, file: !1560, line: 666, baseType: !2166, size: 2048, offset: 56448)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1293, size: 2048, elements: !2157)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !2125, file: !1560, line: 667, baseType: !2168, size: 2048, offset: 58496)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1758, size: 2048, elements: !1796)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !2125, file: !1560, line: 670, baseType: !1895, size: 96, offset: 60544)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2042, file: !1560, line: 704, baseType: !2171, size: 6144, offset: 69248)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2042, file: !1560, line: 674, size: 6144, elements: !2172)
!2172 = !{!2173, !2175, !2179, !2182, !2185, !2187, !2188, !2191, !2193, !2194, !2195, !2196, !2197, !2198}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !2171, file: !1560, line: 677, baseType: !2174, size: 320, align: 64)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 320, elements: !528)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !2171, file: !1560, line: 680, baseType: !2176, size: 384, align: 128, offset: 384)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 384, elements: !2177)
!2177 = !{!2178}
!2178 = !DISubrange(count: 48)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2171, file: !1560, line: 683, baseType: !2180, size: 640, align: 32, offset: 768)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 640, elements: !2181)
!2181 = !{!57, !529}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !2171, file: !1560, line: 686, baseType: !2183, size: 2560, align: 128, offset: 1408)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 2560, elements: !2184)
!2184 = !{!57, !529, !57}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !2171, file: !1560, line: 687, baseType: !2186, size: 1280, align: 64, offset: 3968)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 1280, elements: !2184)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !2171, file: !1560, line: 690, baseType: !2174, size: 320, align: 32, offset: 5248)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !2171, file: !1560, line: 692, baseType: !2189, size: 256, align: 32, offset: 5568)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 256, elements: !2190)
!2190 = !{!57, !50, !57}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !2171, file: !1560, line: 693, baseType: !2192, size: 64, align: 32, offset: 5824)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 64, elements: !2033)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !2171, file: !1560, line: 694, baseType: !126, size: 32, offset: 5888)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !2171, file: !1560, line: 695, baseType: !1926, size: 32, align: 32, offset: 5920)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !2171, file: !1560, line: 698, baseType: !126, size: 32, offset: 5952)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !2171, file: !1560, line: 699, baseType: !126, size: 32, offset: 5984)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !2171, file: !1560, line: 702, baseType: !126, size: 32, offset: 6016)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !2171, file: !1560, line: 703, baseType: !126, size: 32, offset: 6048)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !2042, file: !1560, line: 707, baseType: !126, size: 32, offset: 75392)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !2042, file: !1560, line: 708, baseType: !126, size: 32, offset: 75424)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !2042, file: !1560, line: 709, baseType: !126, size: 32, offset: 75456)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !2042, file: !1560, line: 710, baseType: !126, size: 32, offset: 75488)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !2042, file: !1560, line: 711, baseType: !126, size: 32, offset: 75520)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !2042, file: !1560, line: 712, baseType: !126, size: 32, offset: 75552)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !2042, file: !1560, line: 713, baseType: !126, size: 32, offset: 75584)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !2042, file: !1560, line: 714, baseType: !126, size: 32, offset: 75616)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !2042, file: !1560, line: 717, baseType: !2208, size: 128, offset: 75648)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !2209)
!2209 = !{!57, !57}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !2042, file: !1560, line: 718, baseType: !126, size: 32, offset: 75776)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !2042, file: !1560, line: 719, baseType: !126, size: 32, offset: 75808)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !2042, file: !1560, line: 722, baseType: !2213, size: 4096, offset: 75840)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 4096, elements: !2214)
!2214 = !{!57, !1824, !50}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !2042, file: !1560, line: 723, baseType: !2216, size: 64, offset: 79936)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 64, elements: !49)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !2042, file: !1560, line: 724, baseType: !2219, size: 2048, offset: 80000)
!2219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 2048, elements: !2214)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !2042, file: !1560, line: 725, baseType: !2221, size: 64, offset: 82048)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 32, elements: !49)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !2042, file: !1560, line: 728, baseType: !2224, size: 144, offset: 82112)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 144, elements: !217)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !2042, file: !1560, line: 729, baseType: !126, size: 32, offset: 82272)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !2042, file: !1560, line: 730, baseType: !2227, size: 272, offset: 82304)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 272, elements: !2228)
!2228 = !{!2229}
!2229 = !DISubrange(count: 34)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !1559, file: !1560, line: 735, baseType: !2231, size: 64, offset: 213632)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !1560, line: 379, baseType: !2233)
!2233 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !1560, line: 379, flags: DIFlagFwdDecl)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1559, file: !1560, line: 793, baseType: !2235, size: 29504, offset: 213696)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !1560, line: 738, size: 29504, elements: !2236)
!2236 = !{!2237, !2262, !2264, !2266, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2278, !2280, !2281, !2284, !2286, !2288, !2289, !2290}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !2235, file: !1560, line: 764, baseType: !2238, size: 5632)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !1560, line: 741, size: 5632, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2243, !2245, !2246, !2247, !2248, !2249, !2251, !2253, !2255, !2258, !2259, !2261}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !2238, file: !1560, line: 744, baseType: !126, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !2238, file: !1560, line: 746, baseType: !126, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !2238, file: !1560, line: 748, baseType: !126, size: 32, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !2238, file: !1560, line: 750, baseType: !2244, size: 608, offset: 96)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 608, elements: !471)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !2238, file: !1560, line: 751, baseType: !126, size: 32, offset: 704)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !2238, file: !1560, line: 752, baseType: !126, size: 32, offset: 736)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !2238, file: !1560, line: 753, baseType: !126, size: 32, offset: 768)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !2238, file: !1560, line: 754, baseType: !856, size: 64, offset: 800)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !2238, file: !1560, line: 755, baseType: !2250, size: 2048, offset: 864)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2048, elements: !2106)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !2238, file: !1560, line: 756, baseType: !2252, size: 544, offset: 2912)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 544, elements: !284)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !2238, file: !1560, line: 757, baseType: !2254, size: 192, offset: 3456)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 192, elements: !44)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !2238, file: !1560, line: 758, baseType: !2256, size: 1664, offset: 3648)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1664, elements: !2257)
!2257 = !{!50, !328}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !2238, file: !1560, line: 760, baseType: !856, size: 64, offset: 5312)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !2238, file: !1560, line: 762, baseType: !2260, size: 192, offset: 5376)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 192, elements: !139)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !2238, file: !1560, line: 763, baseType: !1972, size: 64, offset: 5568)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !2235, file: !1560, line: 769, baseType: !2263, size: 160, offset: 5632)
!2263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 160, elements: !25)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !2235, file: !1560, line: 770, baseType: !2265, size: 320, offset: 5824)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 320, elements: !25)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !2235, file: !1560, line: 771, baseType: !2267, size: 320, offset: 6144)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1972, size: 320, elements: !25)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !2235, file: !1560, line: 772, baseType: !2252, size: 544, offset: 6464)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !2235, file: !1560, line: 774, baseType: !2265, size: 320, offset: 7040)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !2235, file: !1560, line: 775, baseType: !2267, size: 320, offset: 7360)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !2235, file: !1560, line: 776, baseType: !2267, size: 320, offset: 7680)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !2235, file: !1560, line: 777, baseType: !2267, size: 320, offset: 8000)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !2235, file: !1560, line: 778, baseType: !2267, size: 320, offset: 8320)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !2235, file: !1560, line: 779, baseType: !2267, size: 320, offset: 8640)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !2235, file: !1560, line: 781, baseType: !2276, size: 6080, offset: 8960)
!2276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 6080, elements: !2277)
!2277 = !{!26, !472}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !2235, file: !1560, line: 782, baseType: !2279, size: 2176, offset: 15040)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 2176, elements: !1930)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !2235, file: !1560, line: 783, baseType: !2010, size: 128, offset: 17216)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !2235, file: !1560, line: 784, baseType: !2282, size: 8192, offset: 17344)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 8192, elements: !2283)
!2283 = !{!57, !57, !1824}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !2235, file: !1560, line: 785, baseType: !2285, size: 384, offset: 25536)
!2285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 384, elements: !44)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !2235, file: !1560, line: 786, baseType: !2287, size: 3328, offset: 25920)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 3328, elements: !2257)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !2235, file: !1560, line: 788, baseType: !856, size: 64, offset: 29248)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !2235, file: !1560, line: 789, baseType: !856, size: 64, offset: 29312)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !2235, file: !1560, line: 791, baseType: !1895, size: 96, offset: 29376)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !1559, file: !1560, line: 795, baseType: !2292, size: 4096, align: 128, offset: 243200)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 4096, elements: !2293)
!2293 = !{!57, !813}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !1559, file: !1560, line: 796, baseType: !2295, size: 2048, align: 128, offset: 247296)
!2295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1748, size: 2048, elements: !2293)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !1559, file: !1560, line: 797, baseType: !2297, size: 64, offset: 249344)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 64, elements: !56)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !1559, file: !1560, line: 800, baseType: !125, size: 64, offset: 249408)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !1559, file: !1560, line: 801, baseType: !2300, size: 384, offset: 249472)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1293, size: 384, elements: !2301)
!2301 = !{!57, !140}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1559, file: !1560, line: 802, baseType: !2303, size: 128, offset: 249856)
!2303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2304, size: 128, elements: !56)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 256, elements: !2306)
!2306 = !{!57, !50, !50}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !1559, file: !1560, line: 805, baseType: !2308, size: 448, offset: 249984)
!2308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2309, size: 448, elements: !167)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !2310, line: 27, baseType: !2311)
!2310 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null, !1293}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !1559, file: !1560, line: 806, baseType: !2308, size: 448, offset: 250432)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !1559, file: !1560, line: 807, baseType: !2316, size: 768, offset: 250880)
!2316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2317, size: 768, elements: !144)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !2310, line: 28, baseType: !2318)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{null, !1293, !1293}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !1559, file: !1560, line: 808, baseType: !2322, size: 768, offset: 251648)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2309, size: 768, elements: !144)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !1559, file: !1560, line: 809, baseType: !2324, size: 64, offset: 252416)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !2310, line: 29, baseType: !2325)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{null, !1293, !1293, !126, !126}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !1559, file: !1560, line: 811, baseType: !2329, size: 8448, offset: 252480)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !2330, line: 110, baseType: !2331)
!2330 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2330, line: 63, size: 8448, elements: !2332)
!2332 = !{!2333, !2339, !2340, !2341, !2342, !2344, !2345, !2346, !2347, !2353, !2359, !2360, !2364, !2369, !2370, !2376, !2380, !2381, !2382, !2383, !2384, !2389, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !2331, file: !2330, line: 65, baseType: !2334, size: 448)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2335, size: 448, elements: !167)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !2330, line: 26, baseType: !2336)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!126, !1293, !126, !1293, !126}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !2331, file: !2330, line: 66, baseType: !2334, size: 448, offset: 448)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !2331, file: !2330, line: 67, baseType: !2334, size: 448, offset: 896)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !2331, file: !2330, line: 68, baseType: !2334, size: 448, offset: 1344)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !2331, file: !2330, line: 69, baseType: !2343, size: 256, offset: 1792)
!2343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2335, size: 256, elements: !49)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !2331, file: !2330, line: 70, baseType: !2334, size: 448, offset: 2048)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !2331, file: !2330, line: 71, baseType: !2334, size: 448, offset: 2496)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !2331, file: !2330, line: 72, baseType: !2334, size: 448, offset: 2944)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !2331, file: !2330, line: 73, baseType: !2348, size: 448, offset: 3392)
!2348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2349, size: 448, elements: !167)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !2330, line: 27, baseType: !2350)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !1293, !1293, !1293, !1293, !126, !132}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !2331, file: !2330, line: 74, baseType: !2354, size: 448, offset: 3840)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2355, size: 448, elements: !167)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !2330, line: 28, baseType: !2356)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !1293, !1293, !1293, !1293, !1293, !126, !132}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !2331, file: !2330, line: 75, baseType: !2334, size: 448, offset: 4288)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !2331, file: !2330, line: 76, baseType: !2361, size: 64, offset: 4736)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!126, !1293, !126, !1293, !126, !132}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !2331, file: !2330, line: 78, baseType: !2365, size: 256, offset: 4800)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2366, size: 256, elements: !49)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!1965, !1293, !126}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !2331, file: !2330, line: 79, baseType: !2365, size: 256, offset: 5056)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !2331, file: !2330, line: 81, baseType: !2371, size: 64, offset: 5312)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{null, !1728, !126, !1728, !126, !2374}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !49)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !2331, file: !2330, line: 83, baseType: !2377, size: 64, offset: 5376)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!852, !2374, !2374, !126}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !2331, file: !2330, line: 86, baseType: !2348, size: 448, offset: 5440)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !2331, file: !2330, line: 87, baseType: !2354, size: 448, offset: 5888)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !2331, file: !2330, line: 88, baseType: !2348, size: 448, offset: 6336)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !2331, file: !2330, line: 89, baseType: !2354, size: 448, offset: 6784)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !2331, file: !2330, line: 93, baseType: !2385, size: 448, offset: 7232)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2386, size: 448, elements: !167)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!126, !132, !1758, !126, !1758, !2088, !126, !126}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !2331, file: !2330, line: 98, baseType: !2390, size: 64, offset: 7680)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !1293, !1293, !132}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !2331, file: !2330, line: 99, baseType: !2390, size: 64, offset: 7744)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !2331, file: !2330, line: 100, baseType: !2390, size: 64, offset: 7808)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !2331, file: !2330, line: 101, baseType: !2390, size: 64, offset: 7872)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !2331, file: !2330, line: 102, baseType: !2390, size: 64, offset: 7936)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !2331, file: !2330, line: 103, baseType: !2390, size: 64, offset: 8000)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !2331, file: !2330, line: 104, baseType: !2390, size: 64, offset: 8064)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !2331, file: !2330, line: 105, baseType: !2390, size: 64, offset: 8128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !2331, file: !2330, line: 106, baseType: !2390, size: 64, offset: 8192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !2331, file: !2330, line: 107, baseType: !2390, size: 64, offset: 8256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !2331, file: !2330, line: 108, baseType: !2390, size: 64, offset: 8320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !2331, file: !2330, line: 109, baseType: !2390, size: 64, offset: 8384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !1559, file: !1560, line: 812, baseType: !2405, size: 2368, offset: 260928)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !1800, line: 111, baseType: !2406)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1800, line: 58, size: 2368, elements: !2407)
!2407 = !{!2408, !2415, !2419, !2423, !2428, !2433, !2434, !2438, !2442, !2443, !2447, !2453, !2457, !2461, !2462, !2466, !2470, !2474, !2475, !2476, !2477, !2482}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !2406, file: !1800, line: 60, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !1293, !126, !2412, !126, !126, !126, !126, !126, !2413}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1799)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !2406, file: !1800, line: 65, baseType: !2416, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!1293, !1293, !132, !2412, !126, !126, !126, !126, !126, !2413}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !2406, file: !1800, line: 71, baseType: !2420, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !1293, !126, !1293, !126, !126, !126, !126, !126}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2406, file: !1800, line: 75, baseType: !2424, size: 640, offset: 192)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2425, size: 640, elements: !82)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !1293, !126, !1293, !126, !1293, !126, !126}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !2406, file: !1800, line: 78, baseType: !2429, size: 448, offset: 832)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2430, size: 448, elements: !167)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !1293, !126, !1293, !126, !126}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !2406, file: !1800, line: 79, baseType: !2430, size: 64, offset: 1280)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !2406, file: !1800, line: 81, baseType: !2435, size: 64, offset: 1344)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !1293, !126, !1293, !126, !126, !126}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !2406, file: !1800, line: 84, baseType: !2439, size: 64, offset: 1408)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !1293, !1293, !1293, !1293, !126, !126, !126, !2088}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !2406, file: !1800, line: 88, baseType: !2430, size: 64, offset: 1472)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !2406, file: !1800, line: 91, baseType: !2444, size: 64, offset: 1536)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{null, !1293, !126, !126}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !2406, file: !1800, line: 93, baseType: !2448, size: 64, offset: 1600)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!125, !125, !2451, !750}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !2406, file: !1800, line: 94, baseType: !2454, size: 64, offset: 1664)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null, !125, !126}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !2406, file: !1800, line: 97, baseType: !2458, size: 64, offset: 1728)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !1758, !1293, !126}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !2406, file: !1800, line: 98, baseType: !2458, size: 64, offset: 1792)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !2406, file: !1800, line: 99, baseType: !2463, size: 64, offset: 1856)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{null, !1758, !1758, !126}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !2406, file: !1800, line: 100, baseType: !2467, size: 64, offset: 1920)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !1758, !126}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !2406, file: !1800, line: 102, baseType: !2471, size: 64, offset: 1984)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !1293, !1293, !1293, !1293, !1293, !126, !126, !126, !126}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2406, file: !1800, line: 104, baseType: !1816, size: 64, offset: 2048)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !2406, file: !1800, line: 105, baseType: !1816, size: 64, offset: 2112)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !2406, file: !1800, line: 106, baseType: !1816, size: 64, offset: 2176)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !2406, file: !1800, line: 107, baseType: !2478, size: 64, offset: 2240)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{null, !1557, !2481}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !2406, file: !1800, line: 109, baseType: !2483, size: 64, offset: 2304)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{null, !132, !1758, !1758, !1758, !1758, !126}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !1559, file: !1560, line: 813, baseType: !2487, size: 960, offset: 263296)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !2488, line: 115, baseType: !2489)
!2488 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2488, line: 89, size: 960, elements: !2490)
!2490 = !{!2491, !2495, !2499, !2504, !2505, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2521, !2525, !2529}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !2489, file: !2488, line: 94, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{null, !2088, !1293, !1293}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !2489, file: !2488, line: 95, baseType: !2496, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !1293, !2088}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !2489, file: !2488, line: 97, baseType: !2500, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !2503, !1293, !1293}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !2489, file: !2488, line: 98, baseType: !2492, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !2489, file: !2488, line: 99, baseType: !2506, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !1293, !2503}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !2489, file: !2488, line: 100, baseType: !2496, size: 64, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !2489, file: !2488, line: 102, baseType: !2500, size: 64, offset: 384)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !2489, file: !2488, line: 103, baseType: !2506, size: 64, offset: 448)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !2489, file: !2488, line: 104, baseType: !2496, size: 64, offset: 512)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !2489, file: !2488, line: 106, baseType: !2492, size: 64, offset: 576)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !2489, file: !2488, line: 107, baseType: !2496, size: 64, offset: 640)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !2489, file: !2488, line: 109, baseType: !2516, size: 64, offset: 704)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{null, !2519, !1293, !1293}
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 1024, elements: !812)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !2489, file: !2488, line: 110, baseType: !2522, size: 64, offset: 768)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !1293, !2519}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !2489, file: !2488, line: 112, baseType: !2526, size: 64, offset: 832)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{null, !2088}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !2489, file: !2488, line: 113, baseType: !2526, size: 64, offset: 896)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !1559, file: !1560, line: 814, baseType: !2531, size: 384, offset: 264256)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !2488, line: 126, baseType: !2532)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2488, line: 117, size: 384, elements: !2533)
!2533 = !{!2534, !2538, !2539, !2543, !2544, !2548}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !2532, file: !2488, line: 119, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !2088, !2088}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !2532, file: !2488, line: 120, baseType: !2535, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !2532, file: !2488, line: 121, baseType: !2540, size: 64, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!126, !2088, !1728, !1293}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !2532, file: !2488, line: 122, baseType: !2540, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !2532, file: !2488, line: 123, baseType: !2545, size: 64, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!126, !2088, !1728, !1293, !2088}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !2532, file: !2488, line: 124, baseType: !2549, size: 64, offset: 320)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !2088, !2088, !1293}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !1559, file: !1560, line: 815, baseType: !2553, size: 1408, offset: 264640)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !2554, line: 44, baseType: !2555)
!2554 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2554, line: 26, size: 1408, elements: !2556)
!2556 = !{!2557, !2561, !2562, !2566, !2567, !2571, !2575, !2576, !2581, !2585, !2586, !2587, !2589}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !2555, file: !2554, line: 28, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!126, !2088, !1758, !1758}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !2555, file: !2554, line: 29, baseType: !2558, size: 64, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !2555, file: !2554, line: 30, baseType: !2563, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!126, !2088, !126, !126}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !2555, file: !2554, line: 31, baseType: !2563, size: 64, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !2555, file: !2554, line: 33, baseType: !2568, size: 64, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !2088, !1740, !126}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !2555, file: !2554, line: 34, baseType: !2572, size: 64, offset: 320)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !2088, !1736, !126}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !2555, file: !2554, line: 35, baseType: !2572, size: 64, offset: 384)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !2555, file: !2554, line: 37, baseType: !2577, size: 64, offset: 448)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{null, !2088, !2580, !1758, !126}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !2555, file: !2554, line: 39, baseType: !2582, size: 64, offset: 512)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!126, !2088}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !2555, file: !2554, line: 40, baseType: !2582, size: 64, offset: 576)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !2555, file: !2554, line: 41, baseType: !2582, size: 64, offset: 640)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !2555, file: !2554, line: 42, baseType: !2588, size: 384, offset: 704)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2582, size: 384, elements: !44)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !2555, file: !2554, line: 43, baseType: !2590, size: 320, offset: 1088)
!2590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2591, size: 320, elements: !25)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!126, !2088, !2594}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !1590, line: 63, baseType: !2596)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1590, line: 58, size: 416, elements: !2597)
!2597 = !{!2598, !2599, !2600}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !2596, file: !1590, line: 60, baseType: !126, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2596, file: !1590, line: 61, baseType: !2030, size: 256, offset: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !2596, file: !1590, line: 62, baseType: !801, size: 128, offset: 288)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !1559, file: !1560, line: 816, baseType: !2602, size: 576, offset: 266048)
!2602 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !1865, line: 170, baseType: !2603)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1865, line: 161, size: 576, elements: !2604)
!2604 = !{!2605, !2611, !2612, !2618, !2619}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !2603, file: !1865, line: 163, baseType: !2606, size: 128)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2607, size: 128, elements: !56)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !1865, line: 159, baseType: !2608)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{null, !1293, !126, !126, !126, !1918}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !2603, file: !1865, line: 164, baseType: !2606, size: 128, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !2603, file: !1865, line: 165, baseType: !2613, size: 128, offset: 256)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2614, size: 128, elements: !56)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !1865, line: 160, baseType: !2615)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{null, !1293, !126, !126, !126}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !2603, file: !1865, line: 166, baseType: !2613, size: 128, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !2603, file: !1865, line: 167, baseType: !2620, size: 64, offset: 512)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{null, !1293, !2623, !2624, !2627, !126, !126}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1805, size: 1280, elements: !2626)
!2626 = !{!529, !57}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 128, elements: !2629)
!2629 = !{!50, !50}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1559, file: !1560, line: 821, baseType: !2631, size: 64, offset: 266624)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !1560, line: 377, baseType: !2633)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !1560, line: 366, size: 960, elements: !2634)
!2634 = !{!2635, !2637, !2638, !2639, !2640, !2641, !2642, !2652, !2653}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !2633, file: !1560, line: 368, baseType: !2636, size: 8)
!2636 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !802)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !2633, file: !1560, line: 369, baseType: !802, size: 8, offset: 8)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !2633, file: !1560, line: 370, baseType: !802, size: 8, offset: 16)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !2633, file: !1560, line: 371, baseType: !126, size: 32, offset: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !2633, file: !1560, line: 372, baseType: !126, size: 32, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !2633, file: !1560, line: 373, baseType: !1863, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !2633, file: !1560, line: 374, baseType: !2643, size: 256, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !1865, line: 157, baseType: !2644)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1865, line: 149, size: 256, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2644, file: !1865, line: 151, baseType: !1862, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !2644, file: !1865, line: 152, baseType: !126, size: 32, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !2644, file: !1865, line: 153, baseType: !126, size: 32, offset: 96)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2644, file: !1865, line: 154, baseType: !126, size: 32, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !2644, file: !1865, line: 155, baseType: !126, size: 32, offset: 160)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !2644, file: !1865, line: 156, baseType: !126, size: 32, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2633, file: !1560, line: 375, baseType: !2643, size: 256, offset: 448)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !2633, file: !1560, line: 376, baseType: !2643, size: 256, offset: 704)
!2654 = !{!2655, !2656, !2657, !2658}
!2655 = !DILocalVariable(name: "h", arg: 1, scope: !1554, file: !2, line: 973, type: !1557)
!2656 = !DILocalVariable(name: "i_level", arg: 2, scope: !1554, file: !2, line: 973, type: !126)
!2657 = !DILocalVariable(name: "psz_fmt", arg: 3, scope: !1554, file: !2, line: 973, type: !624)
!2658 = !DILocalVariable(name: "arg", scope: !2659, file: !2, line: 977, type: !2661)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !2, line: 976, column: 5)
!2660 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 975, column: 9)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2662, line: 12, baseType: !2663)
!2662 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stdarg_va_list.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!2663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !2664)
!2664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 192, elements: !636)
!2665 = distinct !DIAssignID()
!2666 = !DILocation(line: 0, scope: !2659)
!2667 = !DILocation(line: 0, scope: !1554)
!2668 = !DILocation(line: 975, column: 10, scope: !2660)
!2669 = !DILocation(line: 975, column: 12, scope: !2660)
!2670 = !DILocation(line: 975, column: 35, scope: !2660)
!2671 = !DILocation(line: 975, column: 23, scope: !2660)
!2672 = !DILocation(line: 975, column: 9, scope: !1554)
!2673 = !DILocation(line: 977, column: 9, scope: !2659)
!2674 = !DILocation(line: 978, column: 9, scope: !2659)
!2675 = !DILocation(line: 0, scope: !1042, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 980, column: 13, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2659, file: !2, line: 979, column: 13)
!2678 = !DILocation(line: 990, column: 5, scope: !1042, inlinedAt: !2676)
!2679 = !DILocation(line: 0, scope: !1052, inlinedAt: !2676)
!2680 = !DILocation(line: 1008, column: 14, scope: !1042, inlinedAt: !2676)
!2681 = !DILocation(line: 1008, column: 5, scope: !1042, inlinedAt: !2676)
!2682 = !DILocation(line: 1009, column: 15, scope: !1042, inlinedAt: !2676)
!2683 = !DILocation(line: 1009, column: 5, scope: !1042, inlinedAt: !2676)
!2684 = !DILocation(line: 980, column: 13, scope: !2677)
!2685 = !DILocation(line: 982, column: 22, scope: !2677)
!2686 = !DILocation(line: 982, column: 39, scope: !2677)
!2687 = !DILocation(line: 982, column: 13, scope: !2677)
!2688 = !DILocation(line: 983, column: 9, scope: !2659)
!2689 = !DILocation(line: 984, column: 5, scope: !2660)
!2690 = !DILocation(line: 984, column: 5, scope: !2659)
!2691 = !DILocation(line: 985, column: 1, scope: !1554)
!2692 = distinct !DISubprogram(name: "x264_param_parse", scope: !2, file: !2, line: 527, type: !1059, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2693)
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2705, !2711, !2712, !2713, !2714, !2732}
!2694 = !DILocalVariable(name: "p", arg: 1, scope: !2692, file: !2, line: 527, type: !755)
!2695 = !DILocalVariable(name: "name", arg: 2, scope: !2692, file: !2, line: 527, type: !624)
!2696 = !DILocalVariable(name: "value", arg: 3, scope: !2692, file: !2, line: 527, type: !624)
!2697 = !DILocalVariable(name: "name_buf", scope: !2692, file: !2, line: 529, type: !124)
!2698 = !DILocalVariable(name: "b_error", scope: !2692, file: !2, line: 530, type: !126)
!2699 = !DILocalVariable(name: "name_was_bool", scope: !2692, file: !2, line: 531, type: !126)
!2700 = !DILocalVariable(name: "value_was_null", scope: !2692, file: !2, line: 532, type: !126)
!2701 = !DILocalVariable(name: "i", scope: !2692, file: !2, line: 533, type: !126)
!2702 = !DILocalVariable(name: "c", scope: !2703, file: !2, line: 545, type: !124)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !2, line: 544, column: 5)
!2704 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 543, column: 9)
!2705 = !DILocalVariable(name: "buf", scope: !2706, file: !2, line: 569, type: !124)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !2, line: 568, column: 9)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !2, line: 567, column: 13)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !2, line: 564, column: 5)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !2, line: 563, column: 5)
!2710 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 562, column: 8)
!2711 = !DILocalVariable(name: "tok", scope: !2706, file: !2, line: 570, type: !124)
!2712 = !DILocalVariable(name: "saveptr", scope: !2706, file: !2, line: 570, type: !124)
!2713 = !DILocalVariable(name: "init", scope: !2706, file: !2, line: 570, type: !124)
!2714 = !DILocalVariable(name: "fps", scope: !2715, file: !2, line: 640, type: !852)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !2, line: 639, column: 9)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !2, line: 636, column: 13)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !2, line: 635, column: 5)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !2, line: 634, column: 5)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !2, line: 629, column: 5)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !2, line: 627, column: 5)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !2, line: 625, column: 5)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !2, line: 623, column: 5)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 621, column: 5)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !2, line: 619, column: 5)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !2, line: 617, column: 5)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !2, line: 612, column: 5)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !2, line: 605, column: 5)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !2, line: 603, column: 5)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !2, line: 596, column: 5)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !2, line: 594, column: 5)
!2731 = distinct !DILexicalBlock(scope: !2709, file: !2, line: 587, column: 5)
!2732 = !DILocalVariable(name: "pass", scope: !2733, file: !2, line: 914, type: !126)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !2, line: 913, column: 5)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !2, line: 912, column: 5)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !2, line: 910, column: 5)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !2, line: 908, column: 5)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !2, line: 906, column: 5)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !2, line: 904, column: 5)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !2, line: 902, column: 5)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !2, line: 900, column: 5)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 898, column: 5)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !2, line: 896, column: 5)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !2, line: 894, column: 5)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !2, line: 892, column: 5)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !2, line: 890, column: 5)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !2, line: 888, column: 5)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 886, column: 5)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !2, line: 881, column: 5)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 876, column: 5)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !2, line: 871, column: 5)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !2, line: 869, column: 5)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !2, line: 867, column: 5)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !2, line: 865, column: 5)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !2, line: 863, column: 5)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !2, line: 861, column: 5)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !2, line: 859, column: 5)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !2, line: 857, column: 5)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !2, line: 855, column: 5)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 853, column: 5)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !2, line: 837, column: 5)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !2, line: 835, column: 5)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !2, line: 833, column: 5)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !2, line: 831, column: 5)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !2, line: 829, column: 5)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !2, line: 827, column: 5)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !2, line: 825, column: 5)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !2, line: 823, column: 5)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !2, line: 821, column: 5)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !2, line: 819, column: 5)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !2, line: 817, column: 5)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !2, line: 805, column: 5)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !2, line: 803, column: 5)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !2, line: 797, column: 5)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !2, line: 792, column: 5)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !2, line: 787, column: 5)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !2, line: 782, column: 5)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !2, line: 777, column: 5)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !2, line: 772, column: 5)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 767, column: 5)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !2, line: 761, column: 5)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !2, line: 755, column: 5)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !2, line: 749, column: 5)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !2, line: 741, column: 5)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !2, line: 739, column: 5)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !2, line: 730, column: 5)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !2, line: 728, column: 5)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !2, line: 723, column: 5)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !2, line: 721, column: 5)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !2, line: 719, column: 5)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !2, line: 717, column: 5)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !2, line: 715, column: 5)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !2, line: 713, column: 5)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !2, line: 711, column: 5)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !2, line: 709, column: 5)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !2, line: 694, column: 5)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !2, line: 692, column: 5)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !2, line: 683, column: 5)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !2, line: 681, column: 5)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !2, line: 672, column: 5)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !2, line: 670, column: 5)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !2, line: 668, column: 5)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !2, line: 659, column: 5)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !2, line: 653, column: 5)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !2, line: 647, column: 5)
!2805 = distinct !DILexicalBlock(scope: !2718, file: !2, line: 645, column: 5)
!2806 = distinct !DIAssignID()
!2807 = distinct !DIAssignID()
!2808 = distinct !DIAssignID()
!2809 = distinct !DIAssignID()
!2810 = distinct !DIAssignID()
!2811 = distinct !DIAssignID()
!2812 = distinct !DIAssignID()
!2813 = distinct !DIAssignID()
!2814 = distinct !DIAssignID()
!2815 = distinct !DIAssignID()
!2816 = distinct !DIAssignID()
!2817 = distinct !DIAssignID()
!2818 = distinct !DIAssignID()
!2819 = distinct !DIAssignID()
!2820 = distinct !DIAssignID()
!2821 = distinct !DIAssignID()
!2822 = distinct !DIAssignID()
!2823 = distinct !DIAssignID()
!2824 = distinct !DIAssignID()
!2825 = distinct !DIAssignID()
!2826 = distinct !DIAssignID()
!2827 = distinct !DIAssignID()
!2828 = distinct !DIAssignID()
!2829 = distinct !DIAssignID()
!2830 = distinct !DIAssignID()
!2831 = distinct !DIAssignID()
!2832 = distinct !DIAssignID()
!2833 = distinct !DIAssignID()
!2834 = distinct !DIAssignID()
!2835 = distinct !DIAssignID()
!2836 = distinct !DIAssignID()
!2837 = distinct !DIAssignID()
!2838 = distinct !DIAssignID()
!2839 = distinct !DIAssignID()
!2840 = distinct !DIAssignID()
!2841 = distinct !DIAssignID()
!2842 = distinct !DIAssignID()
!2843 = distinct !DIAssignID()
!2844 = distinct !DIAssignID()
!2845 = distinct !DIAssignID()
!2846 = distinct !DIAssignID()
!2847 = distinct !DIAssignID()
!2848 = distinct !DIAssignID()
!2849 = distinct !DIAssignID()
!2850 = distinct !DIAssignID()
!2851 = distinct !DIAssignID()
!2852 = distinct !DIAssignID()
!2853 = distinct !DIAssignID()
!2854 = distinct !DIAssignID()
!2855 = distinct !DIAssignID()
!2856 = distinct !DIAssignID()
!2857 = distinct !DIAssignID()
!2858 = distinct !DIAssignID()
!2859 = !DILocation(line: 0, scope: !2692)
!2860 = !DILocation(line: 530, column: 5, scope: !2692)
!2861 = !DILocation(line: 530, column: 9, scope: !2692)
!2862 = distinct !DIAssignID()
!2863 = !DILocation(line: 532, column: 26, scope: !2692)
!2864 = !DILocation(line: 535, column: 10, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 535, column: 9)
!2866 = !DILocation(line: 535, column: 9, scope: !2692)
!2867 = !DILocation(line: 537, column: 9, scope: !2692)
!2868 = !DILocation(line: 540, column: 9, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 540, column: 9)
!2870 = !DILocation(line: 540, column: 18, scope: !2869)
!2871 = !DILocation(line: 540, column: 9, scope: !2692)
!2872 = !DILocation(line: 543, column: 9, scope: !2704)
!2873 = !DILocation(line: 543, column: 9, scope: !2692)
!2874 = !DILocation(line: 0, scope: !719, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 546, column: 20, scope: !2703)
!2876 = !DILocation(line: 36, column: 13, scope: !719, inlinedAt: !2875)
!2877 = !DILocation(line: 37, column: 36, scope: !719, inlinedAt: !2875)
!2878 = !DILocation(line: 37, column: 29, scope: !719, inlinedAt: !2875)
!2879 = !DILocation(line: 0, scope: !727, inlinedAt: !2875)
!2880 = !DILocation(line: 38, column: 23, scope: !734, inlinedAt: !2875)
!2881 = !DILocation(line: 38, column: 5, scope: !727, inlinedAt: !2875)
!2882 = !DILocation(line: 39, column: 15, scope: !737, inlinedAt: !2875)
!2883 = !DILocation(line: 41, column: 5, scope: !719, inlinedAt: !2875)
!2884 = !DILocation(line: 41, column: 16, scope: !719, inlinedAt: !2875)
!2885 = !DILocation(line: 547, column: 21, scope: !2703)
!2886 = !DILocation(line: 547, column: 9, scope: !2703)
!2887 = !DILocation(line: 548, column: 16, scope: !2703)
!2888 = !DILocation(line: 0, scope: !2703)
!2889 = distinct !{!2889, !2886, !2890}
!2890 = !DILocation(line: 548, column: 18, scope: !2703)
!2891 = !DILocation(line: 552, column: 11, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 552, column: 9)
!2893 = !DILocation(line: 552, column: 37, scope: !2892)
!2894 = !DILocation(line: 553, column: 11, scope: !2892)
!2895 = !DILocation(line: 553, column: 36, scope: !2892)
!2896 = !DILocation(line: 0, scope: !2892)
!2897 = !DILocation(line: 555, column: 14, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2892, file: !2, line: 554, column: 5)
!2899 = !DILocation(line: 556, column: 17, scope: !2898)
!2900 = !DILocation(line: 557, column: 5, scope: !2898)
!2901 = !DILocation(line: 563, column: 5, scope: !2709)
!2902 = !DILocation(line: 563, column: 5, scope: !2710)
!2903 = !DILocation(line: 565, column: 18, scope: !2708)
!2904 = !DILocalVariable(name: "end", scope: !2905, file: !2, line: 507, type: !124)
!2905 = distinct !DISubprogram(name: "x264_atoi", scope: !2, file: !2, line: 505, type: !2906, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!126, !624, !132}
!2908 = !{!2909, !2910, !2904, !2911}
!2909 = !DILocalVariable(name: "str", arg: 1, scope: !2905, file: !2, line: 505, type: !624)
!2910 = !DILocalVariable(name: "b_error", arg: 2, scope: !2905, file: !2, line: 505, type: !132)
!2911 = !DILocalVariable(name: "v", scope: !2905, file: !2, line: 508, type: !126)
!2912 = !DILocation(line: 0, scope: !2905, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 565, column: 38, scope: !2708)
!2914 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !2913)
!2915 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !2913)
!2916 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !2913)
!2917 = distinct !DILexicalBlock(scope: !2905, file: !2, line: 509, column: 9)
!2918 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !2913)
!2919 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !2913)
!2920 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !2913)
!2921 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !2913)
!2922 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !2913)
!2923 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !2913)
!2924 = distinct !DIAssignID()
!2925 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !2913)
!2926 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !2913)
!2927 = !DILocation(line: 566, column: 19, scope: !2708)
!2928 = !DILocation(line: 566, column: 41, scope: !2708)
!2929 = !DILocation(line: 566, column: 44, scope: !2708)
!2930 = !DILocation(line: 566, column: 18, scope: !2708)
!2931 = !DILocation(line: 566, column: 67, scope: !2708)
!2932 = !DILocation(line: 565, column: 16, scope: !2708)
!2933 = !DILocation(line: 567, column: 13, scope: !2707)
!2934 = !DILocation(line: 567, column: 13, scope: !2708)
!2935 = !DILocation(line: 0, scope: !719, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 569, column: 25, scope: !2706)
!2937 = !DILocation(line: 36, column: 13, scope: !719, inlinedAt: !2936)
!2938 = !DILocation(line: 37, column: 36, scope: !719, inlinedAt: !2936)
!2939 = !DILocation(line: 37, column: 29, scope: !719, inlinedAt: !2936)
!2940 = !DILocation(line: 0, scope: !727, inlinedAt: !2936)
!2941 = !DILocation(line: 38, column: 23, scope: !734, inlinedAt: !2936)
!2942 = !DILocation(line: 38, column: 5, scope: !727, inlinedAt: !2936)
!2943 = !DILocation(line: 39, column: 15, scope: !737, inlinedAt: !2936)
!2944 = !DILocation(line: 41, column: 5, scope: !719, inlinedAt: !2936)
!2945 = !DILocation(line: 41, column: 16, scope: !719, inlinedAt: !2936)
!2946 = !DILocation(line: 0, scope: !2706)
!2947 = !DILocation(line: 571, column: 21, scope: !2706)
!2948 = distinct !DIAssignID()
!2949 = !DILocation(line: 572, column: 20, scope: !2706)
!2950 = !DILocation(line: 574, column: 33, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !2, line: 574, column: 13)
!2952 = distinct !DILexicalBlock(scope: !2706, file: !2, line: 574, column: 13)
!2953 = !DILocation(line: 574, column: 13, scope: !2952)
!2954 = distinct !DIAssignID()
!2955 = distinct !{!2955, !2953, !2956}
!2956 = !DILocation(line: 583, column: 13, scope: !2952)
!2957 = !DILocation(line: 579, column: 54, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !2, line: 579, column: 17)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !2, line: 579, column: 17)
!2960 = distinct !DILexicalBlock(scope: !2951, file: !2, line: 578, column: 13)
!2961 = !DILocation(line: 579, column: 51, scope: !2958)
!2962 = !DILocation(line: 579, column: 17, scope: !2959)
!2963 = !DILocation(line: 579, column: 92, scope: !2958)
!2964 = !DILocation(line: 579, column: 27, scope: !2958)
!2965 = !DILocation(line: 579, column: 45, scope: !2958)
!2966 = distinct !{!2966, !2962, !2967}
!2967 = !DILocation(line: 579, column: 96, scope: !2959)
!2968 = !DILocation(line: 580, column: 24, scope: !2960)
!2969 = !DILocation(line: 581, column: 21, scope: !2960)
!2970 = !DILocation(line: 582, column: 29, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2960, file: !2, line: 581, column: 21)
!2972 = !DILocation(line: 582, column: 21, scope: !2971)
!2973 = !DILocation(line: 584, column: 13, scope: !2706)
!2974 = !DILocation(line: 585, column: 9, scope: !2706)
!2975 = !DILocation(line: 587, column: 5, scope: !2731)
!2976 = !DILocation(line: 587, column: 5, scope: !2709)
!2977 = !DILocation(line: 589, column: 14, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !2, line: 589, column: 13)
!2979 = distinct !DILexicalBlock(scope: !2731, file: !2, line: 588, column: 5)
!2980 = !DILocation(line: 589, column: 13, scope: !2979)
!2981 = !DILocation(line: 590, column: 16, scope: !2978)
!2982 = !DILocation(line: 590, column: 26, scope: !2978)
!2983 = !DILocation(line: 590, column: 13, scope: !2978)
!2984 = !DILocation(line: 0, scope: !2905, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 592, column: 28, scope: !2978)
!2986 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !2985)
!2987 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !2985)
!2988 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !2985)
!2989 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !2985)
!2990 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !2985)
!2991 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !2985)
!2992 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !2985)
!2993 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !2985)
!2994 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !2985)
!2995 = distinct !DIAssignID()
!2996 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !2985)
!2997 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !2985)
!2998 = !DILocation(line: 592, column: 16, scope: !2978)
!2999 = !DILocation(line: 592, column: 26, scope: !2978)
!3000 = !DILocation(line: 594, column: 5, scope: !2730)
!3001 = !DILocation(line: 594, column: 5, scope: !2731)
!3002 = !DILocation(line: 595, column: 31, scope: !2730)
!3003 = !DILocation(line: 595, column: 12, scope: !2730)
!3004 = !DILocation(line: 595, column: 29, scope: !2730)
!3005 = !DILocation(line: 595, column: 9, scope: !2730)
!3006 = !DILocation(line: 596, column: 5, scope: !2729)
!3007 = !DILocation(line: 596, column: 5, scope: !2730)
!3008 = !DILocation(line: 598, column: 14, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !2, line: 598, column: 13)
!3010 = distinct !DILexicalBlock(scope: !2729, file: !2, line: 597, column: 5)
!3011 = !DILocation(line: 598, column: 13, scope: !3010)
!3012 = !DILocation(line: 599, column: 16, scope: !3009)
!3013 = !DILocation(line: 599, column: 33, scope: !3009)
!3014 = !DILocation(line: 599, column: 13, scope: !3009)
!3015 = !DILocation(line: 0, scope: !2905, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 601, column: 35, scope: !3009)
!3017 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3016)
!3018 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3016)
!3019 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3016)
!3020 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3016)
!3021 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3016)
!3022 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3016)
!3023 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3016)
!3024 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3016)
!3025 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3016)
!3026 = distinct !DIAssignID()
!3027 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3016)
!3028 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3016)
!3029 = !DILocation(line: 601, column: 16, scope: !3009)
!3030 = !DILocation(line: 601, column: 33, scope: !3009)
!3031 = !DILocation(line: 603, column: 5, scope: !2728)
!3032 = !DILocation(line: 603, column: 5, scope: !2729)
!3033 = !DILocation(line: 604, column: 30, scope: !2728)
!3034 = !DILocation(line: 604, column: 12, scope: !2728)
!3035 = !DILocation(line: 604, column: 28, scope: !2728)
!3036 = !DILocation(line: 604, column: 9, scope: !2728)
!3037 = !DILocation(line: 605, column: 5, scope: !2727)
!3038 = !DILocation(line: 605, column: 5, scope: !2728)
!3039 = !DILocalVariable(name: "end", scope: !3040, file: !2, line: 516, type: !124)
!3040 = distinct !DISubprogram(name: "x264_atof", scope: !2, file: !2, line: 514, type: !3041, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!1972, !624, !132}
!3043 = !{!3044, !3045, !3039, !3046}
!3044 = !DILocalVariable(name: "str", arg: 1, scope: !3040, file: !2, line: 514, type: !624)
!3045 = !DILocalVariable(name: "b_error", arg: 2, scope: !3040, file: !2, line: 514, type: !132)
!3046 = !DILocalVariable(name: "v", scope: !3040, file: !2, line: 517, type: !1972)
!3047 = !DILocation(line: 0, scope: !3040, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 607, column: 13, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !2, line: 607, column: 13)
!3050 = distinct !DILexicalBlock(scope: !2727, file: !2, line: 606, column: 5)
!3051 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !3048)
!3052 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !3048)
!3053 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !3048)
!3054 = distinct !DILexicalBlock(scope: !3040, file: !2, line: 518, column: 9)
!3055 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !3048)
!3056 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !3048)
!3057 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !3048)
!3058 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !3048)
!3059 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !3048)
!3060 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !3048)
!3061 = distinct !DIAssignID()
!3062 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !3048)
!3063 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !3048)
!3064 = !DILocation(line: 607, column: 25, scope: !3049)
!3065 = !DILocation(line: 607, column: 13, scope: !3050)
!3066 = !DILocation(line: 0, scope: !3040, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 608, column: 39, scope: !3049)
!3068 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !3067)
!3069 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !3067)
!3070 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !3067)
!3071 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !3067)
!3072 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !3067)
!3073 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !3067)
!3074 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !3067)
!3075 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !3067)
!3076 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !3067)
!3077 = distinct !DIAssignID()
!3078 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !3067)
!3079 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !3067)
!3080 = !DILocation(line: 608, column: 50, scope: !3049)
!3081 = !DILocation(line: 608, column: 30, scope: !3049)
!3082 = !DILocation(line: 608, column: 16, scope: !3049)
!3083 = !DILocation(line: 608, column: 28, scope: !3049)
!3084 = !DILocation(line: 608, column: 13, scope: !3049)
!3085 = !DILocation(line: 0, scope: !2905, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 610, column: 30, scope: !3049)
!3087 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3086)
!3088 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3086)
!3089 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3086)
!3090 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3086)
!3091 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3086)
!3092 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3086)
!3093 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3086)
!3094 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3086)
!3095 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3086)
!3096 = distinct !DIAssignID()
!3097 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3086)
!3098 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3086)
!3099 = !DILocation(line: 610, column: 16, scope: !3049)
!3100 = !DILocation(line: 610, column: 28, scope: !3049)
!3101 = !DILocation(line: 612, column: 5, scope: !2726)
!3102 = !DILocation(line: 612, column: 5, scope: !2727)
!3103 = !DILocation(line: 614, column: 54, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !2726, file: !2, line: 613, column: 5)
!3105 = !DILocation(line: 614, column: 58, scope: !3104)
!3106 = !DILocation(line: 614, column: 26, scope: !3104)
!3107 = !DILocation(line: 614, column: 23, scope: !3104)
!3108 = !DILocation(line: 614, column: 94, scope: !3104)
!3109 = !DILocation(line: 615, column: 26, scope: !3104)
!3110 = !DILocation(line: 615, column: 23, scope: !3104)
!3111 = !DILocation(line: 0, scope: !3104)
!3112 = !DILocation(line: 614, column: 17, scope: !3104)
!3113 = distinct !DIAssignID()
!3114 = !DILocation(line: 616, column: 5, scope: !3104)
!3115 = !DILocation(line: 617, column: 5, scope: !2725)
!3116 = !DILocation(line: 617, column: 5, scope: !2726)
!3117 = !DILocation(line: 618, column: 68, scope: !2725)
!3118 = !DILocation(line: 618, column: 20, scope: !2725)
!3119 = !DILocation(line: 618, column: 17, scope: !2725)
!3120 = distinct !DIAssignID()
!3121 = !DILocation(line: 618, column: 9, scope: !2725)
!3122 = !DILocation(line: 619, column: 5, scope: !2724)
!3123 = !DILocation(line: 619, column: 5, scope: !2725)
!3124 = !DILocation(line: 620, column: 69, scope: !2724)
!3125 = !DILocation(line: 620, column: 20, scope: !2724)
!3126 = !DILocation(line: 620, column: 17, scope: !2724)
!3127 = distinct !DIAssignID()
!3128 = !DILocation(line: 620, column: 9, scope: !2724)
!3129 = !DILocation(line: 621, column: 5, scope: !2723)
!3130 = !DILocation(line: 621, column: 5, scope: !2724)
!3131 = !DILocation(line: 622, column: 69, scope: !2723)
!3132 = !DILocation(line: 622, column: 20, scope: !2723)
!3133 = !DILocation(line: 622, column: 17, scope: !2723)
!3134 = distinct !DIAssignID()
!3135 = !DILocation(line: 622, column: 9, scope: !2723)
!3136 = !DILocation(line: 623, column: 5, scope: !2722)
!3137 = !DILocation(line: 623, column: 5, scope: !2723)
!3138 = !DILocation(line: 624, column: 69, scope: !2722)
!3139 = !DILocation(line: 624, column: 20, scope: !2722)
!3140 = !DILocation(line: 624, column: 17, scope: !2722)
!3141 = distinct !DIAssignID()
!3142 = !DILocation(line: 624, column: 9, scope: !2722)
!3143 = !DILocation(line: 625, column: 5, scope: !2721)
!3144 = !DILocation(line: 625, column: 5, scope: !2722)
!3145 = !DILocation(line: 626, column: 68, scope: !2721)
!3146 = !DILocation(line: 626, column: 20, scope: !2721)
!3147 = !DILocation(line: 626, column: 17, scope: !2721)
!3148 = distinct !DIAssignID()
!3149 = !DILocation(line: 626, column: 9, scope: !2721)
!3150 = !DILocation(line: 627, column: 5, scope: !2720)
!3151 = !DILocation(line: 627, column: 5, scope: !2721)
!3152 = !DILocation(line: 628, column: 69, scope: !2720)
!3153 = !DILocation(line: 628, column: 20, scope: !2720)
!3154 = !DILocation(line: 628, column: 17, scope: !2720)
!3155 = distinct !DIAssignID()
!3156 = !DILocation(line: 628, column: 9, scope: !2720)
!3157 = !DILocation(line: 629, column: 5, scope: !2719)
!3158 = !DILocation(line: 629, column: 5, scope: !2720)
!3159 = !DILocation(line: 0, scope: !2905, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 631, column: 31, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !2719, file: !2, line: 630, column: 5)
!3162 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3160)
!3163 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3160)
!3164 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3160)
!3165 = !DILocation(line: 631, column: 16, scope: !3161)
!3166 = !DILocation(line: 631, column: 29, scope: !3161)
!3167 = !DILocation(line: 632, column: 45, scope: !3161)
!3168 = !DILocation(line: 632, column: 17, scope: !3161)
!3169 = distinct !DIAssignID()
!3170 = !DILocation(line: 633, column: 5, scope: !3161)
!3171 = !DILocation(line: 634, column: 5, scope: !2718)
!3172 = !DILocation(line: 634, column: 5, scope: !2719)
!3173 = !DILocation(line: 636, column: 41, scope: !2716)
!3174 = !DILocation(line: 636, column: 56, scope: !2716)
!3175 = !DILocation(line: 636, column: 13, scope: !2716)
!3176 = !DILocation(line: 636, column: 68, scope: !2716)
!3177 = !DILocation(line: 636, column: 13, scope: !2717)
!3178 = !DILocation(line: 0, scope: !3040, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 640, column: 25, scope: !2715)
!3180 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !3179)
!3181 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !3179)
!3182 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !3179)
!3183 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !3179)
!3184 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !3179)
!3185 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !3179)
!3186 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !3179)
!3187 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !3179)
!3188 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !3179)
!3189 = distinct !DIAssignID()
!3190 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !3179)
!3191 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !3179)
!3192 = !DILocation(line: 640, column: 25, scope: !2715)
!3193 = !DILocation(line: 0, scope: !2715)
!3194 = !DILocation(line: 641, column: 38, scope: !2715)
!3195 = !DILocation(line: 641, column: 34, scope: !2715)
!3196 = !DILocation(line: 641, column: 45, scope: !2715)
!3197 = !DILocation(line: 641, column: 28, scope: !2715)
!3198 = !DILocation(line: 641, column: 26, scope: !2715)
!3199 = !DILocation(line: 642, column: 26, scope: !2715)
!3200 = !DILocation(line: 645, column: 5, scope: !2805)
!3201 = !DILocation(line: 645, column: 5, scope: !2718)
!3202 = !DILocation(line: 0, scope: !2905, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 646, column: 32, scope: !2805)
!3204 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3203)
!3205 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3203)
!3206 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3203)
!3207 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3203)
!3208 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3203)
!3209 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3203)
!3210 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3203)
!3211 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3203)
!3212 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3203)
!3213 = distinct !DIAssignID()
!3214 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3203)
!3215 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3203)
!3216 = !DILocation(line: 646, column: 12, scope: !2805)
!3217 = !DILocation(line: 646, column: 30, scope: !2805)
!3218 = !DILocation(line: 646, column: 9, scope: !2805)
!3219 = !DILocation(line: 647, column: 5, scope: !2804)
!3220 = !DILocation(line: 647, column: 5, scope: !2805)
!3221 = !DILocation(line: 0, scope: !2905, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 649, column: 27, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !2804, file: !2, line: 648, column: 5)
!3224 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3222)
!3225 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3222)
!3226 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3222)
!3227 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3222)
!3228 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3222)
!3229 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3222)
!3230 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3222)
!3231 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3222)
!3232 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3222)
!3233 = distinct !DIAssignID()
!3234 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3222)
!3235 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3222)
!3236 = !DILocation(line: 649, column: 12, scope: !3223)
!3237 = !DILocation(line: 649, column: 25, scope: !3223)
!3238 = !DILocation(line: 650, column: 16, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3223, file: !2, line: 650, column: 13)
!3240 = !DILocation(line: 650, column: 29, scope: !3239)
!3241 = !DILocation(line: 650, column: 13, scope: !3223)
!3242 = !DILocation(line: 651, column: 29, scope: !3239)
!3243 = !DILocation(line: 651, column: 13, scope: !3239)
!3244 = !DILocation(line: 653, column: 5, scope: !2803)
!3245 = !DILocation(line: 653, column: 5, scope: !2804)
!3246 = !DILocation(line: 0, scope: !2905, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 655, column: 27, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !2803, file: !2, line: 654, column: 5)
!3249 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3247)
!3250 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3247)
!3251 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3247)
!3252 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3247)
!3253 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3247)
!3254 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3247)
!3255 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3247)
!3256 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3247)
!3257 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3247)
!3258 = distinct !DIAssignID()
!3259 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3247)
!3260 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3247)
!3261 = !DILocation(line: 655, column: 12, scope: !3248)
!3262 = !DILocation(line: 655, column: 25, scope: !3248)
!3263 = !DILocation(line: 656, column: 16, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3248, file: !2, line: 656, column: 13)
!3265 = !DILocation(line: 656, column: 29, scope: !3264)
!3266 = !DILocation(line: 656, column: 13, scope: !3248)
!3267 = !DILocation(line: 657, column: 29, scope: !3264)
!3268 = !DILocation(line: 657, column: 13, scope: !3264)
!3269 = !DILocation(line: 659, column: 5, scope: !2802)
!3270 = !DILocation(line: 659, column: 5, scope: !2803)
!3271 = !DILocation(line: 661, column: 35, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !2802, file: !2, line: 660, column: 5)
!3273 = !DILocation(line: 661, column: 12, scope: !3272)
!3274 = !DILocation(line: 661, column: 33, scope: !3272)
!3275 = !DILocation(line: 662, column: 13, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3272, file: !2, line: 662, column: 13)
!3277 = !DILocation(line: 662, column: 21, scope: !3276)
!3278 = !DILocation(line: 664, column: 21, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3276, file: !2, line: 663, column: 9)
!3280 = distinct !DIAssignID()
!3281 = !DILocation(line: 0, scope: !2905, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 665, column: 39, scope: !3279)
!3283 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3282)
!3284 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3282)
!3285 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3282)
!3286 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3282)
!3287 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3282)
!3288 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3282)
!3289 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3282)
!3290 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3282)
!3291 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3282)
!3292 = distinct !DIAssignID()
!3293 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3282)
!3294 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3282)
!3295 = !DILocation(line: 665, column: 37, scope: !3279)
!3296 = !DILocation(line: 666, column: 9, scope: !3279)
!3297 = !DILocation(line: 668, column: 5, scope: !2801)
!3298 = !DILocation(line: 668, column: 5, scope: !2802)
!3299 = !DILocation(line: 669, column: 30, scope: !2801)
!3300 = !DILocation(line: 669, column: 12, scope: !2801)
!3301 = !DILocation(line: 669, column: 28, scope: !2801)
!3302 = !DILocation(line: 669, column: 9, scope: !2801)
!3303 = !DILocation(line: 670, column: 5, scope: !2800)
!3304 = !DILocation(line: 670, column: 5, scope: !2801)
!3305 = !DILocation(line: 0, scope: !2905, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 671, column: 23, scope: !2800)
!3307 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3306)
!3308 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3306)
!3309 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3306)
!3310 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3306)
!3311 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3306)
!3312 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3306)
!3313 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3306)
!3314 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3306)
!3315 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3306)
!3316 = distinct !DIAssignID()
!3317 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3306)
!3318 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3306)
!3319 = !DILocation(line: 671, column: 12, scope: !2800)
!3320 = !DILocation(line: 671, column: 21, scope: !2800)
!3321 = !DILocation(line: 671, column: 9, scope: !2800)
!3322 = !DILocation(line: 672, column: 5, scope: !2799)
!3323 = !DILocation(line: 672, column: 5, scope: !2800)
!3324 = !DILocation(line: 674, column: 32, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !2799, file: !2, line: 673, column: 5)
!3326 = !DILocation(line: 674, column: 12, scope: !3325)
!3327 = !DILocation(line: 674, column: 30, scope: !3325)
!3328 = !DILocation(line: 675, column: 13, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3325, file: !2, line: 675, column: 13)
!3330 = !DILocation(line: 675, column: 13, scope: !3325)
!3331 = !DILocation(line: 677, column: 21, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 676, column: 9)
!3333 = distinct !DIAssignID()
!3334 = !DILocation(line: 0, scope: !2905, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 678, column: 36, scope: !3332)
!3336 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3335)
!3337 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3335)
!3338 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3335)
!3339 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3335)
!3340 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3335)
!3341 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3335)
!3342 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3335)
!3343 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3335)
!3344 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3335)
!3345 = distinct !DIAssignID()
!3346 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3335)
!3347 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3335)
!3348 = !DILocation(line: 678, column: 34, scope: !3332)
!3349 = !DILocation(line: 679, column: 9, scope: !3332)
!3350 = !DILocation(line: 681, column: 5, scope: !2798)
!3351 = !DILocation(line: 681, column: 5, scope: !2799)
!3352 = !DILocation(line: 0, scope: !2905, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 682, column: 28, scope: !2798)
!3354 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3353)
!3355 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3353)
!3356 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3353)
!3357 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3353)
!3358 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3353)
!3359 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3353)
!3360 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3353)
!3361 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3353)
!3362 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3353)
!3363 = distinct !DIAssignID()
!3364 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3353)
!3365 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3353)
!3366 = !DILocation(line: 682, column: 12, scope: !2798)
!3367 = !DILocation(line: 682, column: 26, scope: !2798)
!3368 = !DILocation(line: 682, column: 9, scope: !2798)
!3369 = !DILocation(line: 683, column: 5, scope: !2797)
!3370 = !DILocation(line: 683, column: 5, scope: !2798)
!3371 = !DILocation(line: 685, column: 65, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !2797, file: !2, line: 684, column: 5)
!3373 = !DILocation(line: 685, column: 20, scope: !3372)
!3374 = !DILocation(line: 685, column: 17, scope: !3372)
!3375 = distinct !DIAssignID()
!3376 = !DILocation(line: 686, column: 13, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3372, file: !2, line: 686, column: 13)
!3378 = !DILocation(line: 686, column: 13, scope: !3372)
!3379 = !DILocation(line: 688, column: 21, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3377, file: !2, line: 687, column: 9)
!3381 = distinct !DIAssignID()
!3382 = !DILocation(line: 0, scope: !2905, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 689, column: 35, scope: !3380)
!3384 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3383)
!3385 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3383)
!3386 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3383)
!3387 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3383)
!3388 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3383)
!3389 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3383)
!3390 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3383)
!3391 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3383)
!3392 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3383)
!3393 = distinct !DIAssignID()
!3394 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3383)
!3395 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3383)
!3396 = !DILocation(line: 689, column: 33, scope: !3380)
!3397 = !DILocation(line: 690, column: 9, scope: !3380)
!3398 = !DILocation(line: 692, column: 5, scope: !2796)
!3399 = !DILocation(line: 692, column: 5, scope: !2797)
!3400 = !DILocation(line: 693, column: 35, scope: !2796)
!3401 = !DILocation(line: 693, column: 34, scope: !2796)
!3402 = !DILocation(line: 693, column: 12, scope: !2796)
!3403 = !DILocation(line: 693, column: 32, scope: !2796)
!3404 = !DILocation(line: 693, column: 9, scope: !2796)
!3405 = !DILocation(line: 694, column: 5, scope: !2795)
!3406 = !DILocation(line: 694, column: 5, scope: !2796)
!3407 = !DILocation(line: 696, column: 46, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3409, file: !2, line: 696, column: 13)
!3409 = distinct !DILexicalBlock(scope: !2795, file: !2, line: 695, column: 5)
!3410 = !DILocation(line: 696, column: 79, scope: !3408)
!3411 = !DILocation(line: 696, column: 18, scope: !3408)
!3412 = !DILocation(line: 696, column: 15, scope: !3408)
!3413 = !DILocation(line: 696, column: 106, scope: !3408)
!3414 = !DILocation(line: 697, column: 18, scope: !3408)
!3415 = !DILocation(line: 697, column: 15, scope: !3408)
!3416 = !DILocation(line: 696, column: 13, scope: !3409)
!3417 = !DILocation(line: 699, column: 16, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3408, file: !2, line: 698, column: 9)
!3419 = !DILocation(line: 699, column: 36, scope: !3418)
!3420 = !DILocation(line: 700, column: 9, scope: !3418)
!3421 = !DILocation(line: 701, column: 18, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3408, file: !2, line: 701, column: 18)
!3423 = !DILocation(line: 701, column: 18, scope: !3408)
!3424 = !DILocation(line: 703, column: 16, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3422, file: !2, line: 702, column: 9)
!3426 = !DILocation(line: 703, column: 36, scope: !3425)
!3427 = !DILocation(line: 704, column: 46, scope: !3425)
!3428 = !DILocation(line: 704, column: 41, scope: !3425)
!3429 = !DILocation(line: 705, column: 9, scope: !3425)
!3430 = !DILocation(line: 707, column: 38, scope: !3422)
!3431 = !DILocation(line: 707, column: 16, scope: !3422)
!3432 = !DILocation(line: 707, column: 36, scope: !3422)
!3433 = !DILocation(line: 709, column: 5, scope: !2794)
!3434 = !DILocation(line: 709, column: 5, scope: !2795)
!3435 = !DILocation(line: 0, scope: !2905, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 710, column: 31, scope: !2794)
!3437 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3436)
!3438 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3436)
!3439 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3436)
!3440 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3436)
!3441 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3436)
!3442 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3436)
!3443 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3436)
!3444 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3436)
!3445 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3436)
!3446 = distinct !DIAssignID()
!3447 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3436)
!3448 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3436)
!3449 = !DILocation(line: 710, column: 12, scope: !2794)
!3450 = !DILocation(line: 710, column: 29, scope: !2794)
!3451 = !DILocation(line: 710, column: 9, scope: !2794)
!3452 = !DILocation(line: 711, column: 5, scope: !2793)
!3453 = !DILocation(line: 711, column: 5, scope: !2794)
!3454 = !DILocation(line: 0, scope: !2905, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 712, column: 30, scope: !2793)
!3456 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3455)
!3457 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3455)
!3458 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3455)
!3459 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3455)
!3460 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3455)
!3461 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3455)
!3462 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3455)
!3463 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3455)
!3464 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3455)
!3465 = distinct !DIAssignID()
!3466 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3455)
!3467 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3455)
!3468 = !DILocation(line: 712, column: 12, scope: !2793)
!3469 = !DILocation(line: 712, column: 28, scope: !2793)
!3470 = !DILocation(line: 712, column: 9, scope: !2793)
!3471 = !DILocation(line: 713, column: 5, scope: !2792)
!3472 = !DILocation(line: 713, column: 5, scope: !2793)
!3473 = !DILocation(line: 0, scope: !2905, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 714, column: 28, scope: !2792)
!3475 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3474)
!3476 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3474)
!3477 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3474)
!3478 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3474)
!3479 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3474)
!3480 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3474)
!3481 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3474)
!3482 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3474)
!3483 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3474)
!3484 = distinct !DIAssignID()
!3485 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3474)
!3486 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3474)
!3487 = !DILocation(line: 714, column: 12, scope: !2792)
!3488 = !DILocation(line: 714, column: 26, scope: !2792)
!3489 = !DILocation(line: 714, column: 9, scope: !2792)
!3490 = !DILocation(line: 715, column: 5, scope: !2791)
!3491 = !DILocation(line: 715, column: 5, scope: !2792)
!3492 = !DILocation(line: 716, column: 22, scope: !2791)
!3493 = !DILocation(line: 716, column: 12, scope: !2791)
!3494 = !DILocation(line: 716, column: 20, scope: !2791)
!3495 = !DILocation(line: 716, column: 9, scope: !2791)
!3496 = !DILocation(line: 717, column: 5, scope: !2790)
!3497 = !DILocation(line: 717, column: 5, scope: !2791)
!3498 = !DILocation(line: 0, scope: !2905, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 718, column: 31, scope: !2790)
!3500 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3499)
!3501 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3499)
!3502 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3499)
!3503 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3499)
!3504 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3499)
!3505 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3499)
!3506 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3499)
!3507 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3499)
!3508 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3499)
!3509 = distinct !DIAssignID()
!3510 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3499)
!3511 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3499)
!3512 = !DILocation(line: 718, column: 12, scope: !2790)
!3513 = !DILocation(line: 718, column: 29, scope: !2790)
!3514 = !DILocation(line: 718, column: 9, scope: !2790)
!3515 = !DILocation(line: 719, column: 5, scope: !2789)
!3516 = !DILocation(line: 719, column: 5, scope: !2790)
!3517 = !DILocation(line: 720, column: 27, scope: !2789)
!3518 = !DILocation(line: 720, column: 12, scope: !2789)
!3519 = !DILocation(line: 720, column: 25, scope: !2789)
!3520 = !DILocation(line: 720, column: 9, scope: !2789)
!3521 = !DILocation(line: 721, column: 5, scope: !2788)
!3522 = !DILocation(line: 721, column: 5, scope: !2789)
!3523 = !DILocation(line: 722, column: 38, scope: !2788)
!3524 = !DILocation(line: 722, column: 30, scope: !2788)
!3525 = !DILocation(line: 722, column: 36, scope: !2788)
!3526 = !DILocation(line: 722, column: 12, scope: !2788)
!3527 = !DILocation(line: 722, column: 25, scope: !2788)
!3528 = !DILocation(line: 722, column: 9, scope: !2788)
!3529 = !DILocation(line: 723, column: 5, scope: !2787)
!3530 = !DILocation(line: 723, column: 5, scope: !2788)
!3531 = !DILocation(line: 725, column: 27, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !2787, file: !2, line: 724, column: 5)
!3533 = !DILocation(line: 725, column: 12, scope: !3532)
!3534 = !DILocation(line: 725, column: 25, scope: !3532)
!3535 = !DILocation(line: 726, column: 20, scope: !3532)
!3536 = !DILocation(line: 726, column: 12, scope: !3532)
!3537 = !DILocation(line: 726, column: 18, scope: !3532)
!3538 = !DILocation(line: 727, column: 5, scope: !3532)
!3539 = !DILocation(line: 728, column: 5, scope: !2786)
!3540 = !DILocation(line: 728, column: 5, scope: !2787)
!3541 = !DILocation(line: 729, column: 34, scope: !2786)
!3542 = !DILocation(line: 729, column: 12, scope: !2786)
!3543 = !DILocation(line: 729, column: 32, scope: !2786)
!3544 = !DILocation(line: 729, column: 9, scope: !2786)
!3545 = !DILocation(line: 730, column: 5, scope: !2785)
!3546 = !DILocation(line: 730, column: 5, scope: !2786)
!3547 = !DILocation(line: 732, column: 13, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !2, line: 732, column: 13)
!3549 = distinct !DILexicalBlock(scope: !2785, file: !2, line: 731, column: 5)
!3550 = !DILocation(line: 732, column: 13, scope: !3549)
!3551 = !DILocation(line: 733, column: 16, scope: !3548)
!3552 = !DILocation(line: 733, column: 29, scope: !3548)
!3553 = !DILocation(line: 733, column: 13, scope: !3548)
!3554 = !DILocation(line: 734, column: 18, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3548, file: !2, line: 734, column: 18)
!3556 = !DILocation(line: 734, column: 18, scope: !3548)
!3557 = !DILocation(line: 735, column: 16, scope: !3555)
!3558 = !DILocation(line: 735, column: 29, scope: !3555)
!3559 = !DILocation(line: 735, column: 13, scope: !3555)
!3560 = !DILocation(line: 737, column: 31, scope: !3555)
!3561 = !DILocation(line: 737, column: 16, scope: !3555)
!3562 = !DILocation(line: 737, column: 29, scope: !3555)
!3563 = !DILocation(line: 739, column: 5, scope: !2784)
!3564 = !DILocation(line: 739, column: 5, scope: !2785)
!3565 = !DILocation(line: 740, column: 27, scope: !2784)
!3566 = !DILocation(line: 740, column: 12, scope: !2784)
!3567 = !DILocation(line: 740, column: 25, scope: !2784)
!3568 = !DILocation(line: 740, column: 9, scope: !2784)
!3569 = !DILocation(line: 741, column: 5, scope: !2783)
!3570 = !DILocation(line: 741, column: 5, scope: !2784)
!3571 = !DILocation(line: 743, column: 12, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !2783, file: !2, line: 742, column: 5)
!3573 = !DILocation(line: 743, column: 25, scope: !3572)
!3574 = !DILocation(line: 744, column: 41, scope: !3572)
!3575 = !DILocation(line: 744, column: 20, scope: !3572)
!3576 = !DILocation(line: 744, column: 17, scope: !3572)
!3577 = distinct !DIAssignID()
!3578 = !DILocation(line: 745, column: 41, scope: !3572)
!3579 = !DILocation(line: 745, column: 20, scope: !3572)
!3580 = !DILocation(line: 745, column: 17, scope: !3572)
!3581 = distinct !DIAssignID()
!3582 = !DILocation(line: 746, column: 41, scope: !3572)
!3583 = !DILocation(line: 746, column: 20, scope: !3572)
!3584 = !DILocation(line: 746, column: 17, scope: !3572)
!3585 = distinct !DIAssignID()
!3586 = !DILocation(line: 747, column: 41, scope: !3572)
!3587 = !DILocation(line: 747, column: 20, scope: !3572)
!3588 = !DILocation(line: 747, column: 17, scope: !3572)
!3589 = distinct !DIAssignID()
!3590 = !DILocation(line: 748, column: 5, scope: !3572)
!3591 = !DILocation(line: 749, column: 5, scope: !2782)
!3592 = !DILocation(line: 749, column: 5, scope: !2783)
!3593 = !DILocation(line: 751, column: 12, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !2782, file: !2, line: 750, column: 5)
!3595 = !DILocation(line: 751, column: 25, scope: !3594)
!3596 = !DILocation(line: 752, column: 41, scope: !3594)
!3597 = !DILocation(line: 752, column: 20, scope: !3594)
!3598 = !DILocation(line: 752, column: 17, scope: !3594)
!3599 = distinct !DIAssignID()
!3600 = !DILocation(line: 753, column: 41, scope: !3594)
!3601 = !DILocation(line: 753, column: 20, scope: !3594)
!3602 = !DILocation(line: 753, column: 17, scope: !3594)
!3603 = distinct !DIAssignID()
!3604 = !DILocation(line: 754, column: 5, scope: !3594)
!3605 = !DILocation(line: 755, column: 5, scope: !2781)
!3606 = !DILocation(line: 755, column: 5, scope: !2782)
!3607 = !DILocation(line: 757, column: 12, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !2781, file: !2, line: 756, column: 5)
!3609 = !DILocation(line: 757, column: 25, scope: !3608)
!3610 = !DILocation(line: 758, column: 41, scope: !3608)
!3611 = !DILocation(line: 758, column: 20, scope: !3608)
!3612 = !DILocation(line: 758, column: 17, scope: !3608)
!3613 = distinct !DIAssignID()
!3614 = !DILocation(line: 759, column: 41, scope: !3608)
!3615 = !DILocation(line: 759, column: 20, scope: !3608)
!3616 = !DILocation(line: 759, column: 17, scope: !3608)
!3617 = distinct !DIAssignID()
!3618 = !DILocation(line: 760, column: 5, scope: !3608)
!3619 = !DILocation(line: 761, column: 5, scope: !2780)
!3620 = !DILocation(line: 761, column: 5, scope: !2781)
!3621 = !DILocation(line: 763, column: 12, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 762, column: 5)
!3623 = !DILocation(line: 763, column: 25, scope: !3622)
!3624 = !DILocation(line: 764, column: 41, scope: !3622)
!3625 = !DILocation(line: 764, column: 20, scope: !3622)
!3626 = !DILocation(line: 764, column: 17, scope: !3622)
!3627 = distinct !DIAssignID()
!3628 = !DILocation(line: 765, column: 41, scope: !3622)
!3629 = !DILocation(line: 765, column: 20, scope: !3622)
!3630 = !DILocation(line: 765, column: 17, scope: !3622)
!3631 = distinct !DIAssignID()
!3632 = !DILocation(line: 766, column: 5, scope: !3622)
!3633 = !DILocation(line: 767, column: 5, scope: !2779)
!3634 = !DILocation(line: 767, column: 5, scope: !2780)
!3635 = !DILocation(line: 769, column: 12, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !2779, file: !2, line: 768, column: 5)
!3637 = !DILocation(line: 769, column: 25, scope: !3636)
!3638 = !DILocation(line: 770, column: 41, scope: !3636)
!3639 = !DILocation(line: 770, column: 20, scope: !3636)
!3640 = !DILocation(line: 770, column: 17, scope: !3636)
!3641 = distinct !DIAssignID()
!3642 = !DILocation(line: 771, column: 5, scope: !3636)
!3643 = !DILocation(line: 772, column: 5, scope: !2778)
!3644 = !DILocation(line: 772, column: 5, scope: !2779)
!3645 = !DILocation(line: 774, column: 12, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !2778, file: !2, line: 773, column: 5)
!3647 = !DILocation(line: 774, column: 25, scope: !3646)
!3648 = !DILocation(line: 775, column: 41, scope: !3646)
!3649 = !DILocation(line: 775, column: 20, scope: !3646)
!3650 = !DILocation(line: 775, column: 17, scope: !3646)
!3651 = distinct !DIAssignID()
!3652 = !DILocation(line: 776, column: 5, scope: !3646)
!3653 = !DILocation(line: 777, column: 5, scope: !2777)
!3654 = !DILocation(line: 777, column: 5, scope: !2778)
!3655 = !DILocation(line: 779, column: 12, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !2777, file: !2, line: 778, column: 5)
!3657 = !DILocation(line: 779, column: 25, scope: !3656)
!3658 = !DILocation(line: 780, column: 41, scope: !3656)
!3659 = !DILocation(line: 780, column: 20, scope: !3656)
!3660 = !DILocation(line: 780, column: 17, scope: !3656)
!3661 = distinct !DIAssignID()
!3662 = !DILocation(line: 781, column: 5, scope: !3656)
!3663 = !DILocation(line: 782, column: 5, scope: !2776)
!3664 = !DILocation(line: 782, column: 5, scope: !2777)
!3665 = !DILocation(line: 784, column: 12, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !2776, file: !2, line: 783, column: 5)
!3667 = !DILocation(line: 784, column: 25, scope: !3666)
!3668 = !DILocation(line: 785, column: 41, scope: !3666)
!3669 = !DILocation(line: 785, column: 20, scope: !3666)
!3670 = !DILocation(line: 785, column: 17, scope: !3666)
!3671 = distinct !DIAssignID()
!3672 = !DILocation(line: 786, column: 5, scope: !3666)
!3673 = !DILocation(line: 787, column: 5, scope: !2775)
!3674 = !DILocation(line: 787, column: 5, scope: !2776)
!3675 = !DILocation(line: 789, column: 12, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !2775, file: !2, line: 788, column: 5)
!3677 = !DILocation(line: 789, column: 25, scope: !3676)
!3678 = !DILocation(line: 790, column: 41, scope: !3676)
!3679 = !DILocation(line: 790, column: 20, scope: !3676)
!3680 = !DILocation(line: 790, column: 17, scope: !3676)
!3681 = distinct !DIAssignID()
!3682 = !DILocation(line: 791, column: 5, scope: !3676)
!3683 = !DILocation(line: 792, column: 5, scope: !2774)
!3684 = !DILocation(line: 792, column: 5, scope: !2775)
!3685 = !DILocation(line: 794, column: 12, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !2774, file: !2, line: 793, column: 5)
!3687 = !DILocation(line: 794, column: 25, scope: !3686)
!3688 = !DILocation(line: 795, column: 41, scope: !3686)
!3689 = !DILocation(line: 795, column: 20, scope: !3686)
!3690 = !DILocation(line: 795, column: 17, scope: !3686)
!3691 = distinct !DIAssignID()
!3692 = !DILocation(line: 796, column: 5, scope: !3686)
!3693 = !DILocation(line: 797, column: 5, scope: !2773)
!3694 = !DILocation(line: 797, column: 5, scope: !2774)
!3695 = !DILocation(line: 0, scope: !2905, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 798, column: 26, scope: !2773)
!3697 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3696)
!3698 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3696)
!3699 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3696)
!3700 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3696)
!3701 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3696)
!3702 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3696)
!3703 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3696)
!3704 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3696)
!3705 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3696)
!3706 = distinct !DIAssignID()
!3707 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3696)
!3708 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3696)
!3709 = !DILocation(line: 798, column: 12, scope: !2773)
!3710 = !DILocation(line: 798, column: 24, scope: !2773)
!3711 = !DILocation(line: 798, column: 9, scope: !2773)
!3712 = !DILocation(line: 803, column: 5, scope: !2772)
!3713 = !DILocation(line: 803, column: 5, scope: !2773)
!3714 = !DILocation(line: 804, column: 27, scope: !2772)
!3715 = !DILocation(line: 804, column: 12, scope: !2772)
!3716 = !DILocation(line: 804, column: 25, scope: !2772)
!3717 = !DILocation(line: 804, column: 9, scope: !2772)
!3718 = !DILocation(line: 805, column: 5, scope: !2771)
!3719 = !DILocation(line: 805, column: 5, scope: !2772)
!3720 = !DILocation(line: 807, column: 20, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !2771, file: !2, line: 806, column: 5)
!3722 = !DILocation(line: 808, scope: !3721)
!3723 = !DILocation(line: 809, column: 13, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3721, file: !2, line: 809, column: 13)
!3725 = !DILocation(line: 809, column: 13, scope: !3721)
!3726 = !DILocation(line: 809, scope: !3721)
!3727 = !DILocation(line: 811, column: 13, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3721, file: !2, line: 811, column: 13)
!3729 = !DILocation(line: 811, column: 13, scope: !3721)
!3730 = !DILocation(line: 811, column: 57, scope: !3728)
!3731 = !DILocation(line: 811, column: 40, scope: !3728)
!3732 = !DILocation(line: 812, column: 13, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3721, file: !2, line: 812, column: 13)
!3734 = !DILocation(line: 812, column: 13, scope: !3721)
!3735 = !DILocation(line: 812, column: 57, scope: !3733)
!3736 = !DILocation(line: 812, column: 40, scope: !3733)
!3737 = !DILocation(line: 813, column: 13, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3721, file: !2, line: 813, column: 13)
!3739 = !DILocation(line: 813, column: 13, scope: !3721)
!3740 = !DILocation(line: 813, column: 57, scope: !3738)
!3741 = !DILocation(line: 813, column: 40, scope: !3738)
!3742 = !DILocation(line: 814, column: 13, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3721, file: !2, line: 814, column: 13)
!3744 = !DILocation(line: 814, column: 13, scope: !3721)
!3745 = !DILocation(line: 814, column: 57, scope: !3743)
!3746 = !DILocation(line: 814, column: 40, scope: !3743)
!3747 = !DILocation(line: 815, column: 13, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3721, file: !2, line: 815, column: 13)
!3749 = !DILocation(line: 815, column: 13, scope: !3721)
!3750 = !DILocation(line: 815, column: 57, scope: !3748)
!3751 = !DILocation(line: 815, column: 40, scope: !3748)
!3752 = !DILocation(line: 817, column: 5, scope: !2770)
!3753 = !DILocation(line: 817, column: 5, scope: !2771)
!3754 = !DILocation(line: 818, column: 38, scope: !2770)
!3755 = !DILocation(line: 818, column: 20, scope: !2770)
!3756 = !DILocation(line: 818, column: 36, scope: !2770)
!3757 = !DILocation(line: 818, column: 9, scope: !2770)
!3758 = !DILocation(line: 819, column: 5, scope: !2769)
!3759 = !DILocation(line: 819, column: 5, scope: !2770)
!3760 = !DILocation(line: 820, column: 40, scope: !2769)
!3761 = !DILocation(line: 820, column: 20, scope: !2769)
!3762 = !DILocation(line: 820, column: 38, scope: !2769)
!3763 = !DILocation(line: 820, column: 9, scope: !2769)
!3764 = !DILocation(line: 821, column: 5, scope: !2768)
!3765 = !DILocation(line: 821, column: 5, scope: !2769)
!3766 = !DILocation(line: 0, scope: !2905, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 822, column: 38, scope: !2768)
!3768 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3767)
!3769 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3767)
!3770 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3767)
!3771 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3767)
!3772 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3767)
!3773 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3767)
!3774 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3767)
!3775 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3767)
!3776 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3767)
!3777 = distinct !DIAssignID()
!3778 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3767)
!3779 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3767)
!3780 = !DILocation(line: 822, column: 20, scope: !2768)
!3781 = !DILocation(line: 822, column: 36, scope: !2768)
!3782 = !DILocation(line: 822, column: 9, scope: !2768)
!3783 = !DILocation(line: 823, column: 5, scope: !2767)
!3784 = !DILocation(line: 823, column: 5, scope: !2768)
!3785 = !DILocation(line: 824, column: 75, scope: !2767)
!3786 = !DILocation(line: 824, column: 20, scope: !2767)
!3787 = !DILocation(line: 824, column: 17, scope: !2767)
!3788 = distinct !DIAssignID()
!3789 = !DILocation(line: 824, column: 9, scope: !2767)
!3790 = !DILocation(line: 825, column: 5, scope: !2766)
!3791 = !DILocation(line: 825, column: 5, scope: !2767)
!3792 = !DILocation(line: 0, scope: !2905, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 826, column: 41, scope: !2766)
!3794 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3793)
!3795 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3793)
!3796 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3793)
!3797 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3793)
!3798 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3793)
!3799 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3793)
!3800 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3793)
!3801 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3793)
!3802 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3793)
!3803 = distinct !DIAssignID()
!3804 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3793)
!3805 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3793)
!3806 = !DILocation(line: 826, column: 20, scope: !2766)
!3807 = !DILocation(line: 826, column: 39, scope: !2766)
!3808 = !DILocation(line: 826, column: 9, scope: !2766)
!3809 = !DILocation(line: 827, column: 5, scope: !2765)
!3810 = !DILocation(line: 827, column: 5, scope: !2766)
!3811 = !DILocation(line: 828, column: 74, scope: !2765)
!3812 = !DILocation(line: 828, column: 20, scope: !2765)
!3813 = !DILocation(line: 828, column: 17, scope: !2765)
!3814 = distinct !DIAssignID()
!3815 = !DILocation(line: 828, column: 9, scope: !2765)
!3816 = !DILocation(line: 829, column: 5, scope: !2764)
!3817 = !DILocation(line: 829, column: 5, scope: !2765)
!3818 = !DILocation(line: 0, scope: !2905, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 830, column: 33, scope: !2764)
!3820 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3819)
!3821 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3819)
!3822 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3819)
!3823 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3819)
!3824 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3819)
!3825 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3819)
!3826 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3819)
!3827 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3819)
!3828 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3819)
!3829 = distinct !DIAssignID()
!3830 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3819)
!3831 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3819)
!3832 = !DILocation(line: 830, column: 20, scope: !2764)
!3833 = !DILocation(line: 830, column: 31, scope: !2764)
!3834 = !DILocation(line: 830, column: 9, scope: !2764)
!3835 = !DILocation(line: 831, column: 5, scope: !2763)
!3836 = !DILocation(line: 831, column: 5, scope: !2764)
!3837 = !DILocation(line: 0, scope: !2905, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 832, column: 33, scope: !2763)
!3839 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3838)
!3840 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3838)
!3841 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3838)
!3842 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3838)
!3843 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3838)
!3844 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3838)
!3845 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3838)
!3846 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3838)
!3847 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3838)
!3848 = distinct !DIAssignID()
!3849 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3838)
!3850 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3838)
!3851 = !DILocation(line: 832, column: 20, scope: !2763)
!3852 = !DILocation(line: 832, column: 31, scope: !2763)
!3853 = !DILocation(line: 832, column: 9, scope: !2763)
!3854 = !DILocation(line: 833, column: 5, scope: !2762)
!3855 = !DILocation(line: 833, column: 5, scope: !2763)
!3856 = !DILocation(line: 0, scope: !2905, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 834, column: 40, scope: !2762)
!3858 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3857)
!3859 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3857)
!3860 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3857)
!3861 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3857)
!3862 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3857)
!3863 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3857)
!3864 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3857)
!3865 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3857)
!3866 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3857)
!3867 = distinct !DIAssignID()
!3868 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3857)
!3869 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3857)
!3870 = !DILocation(line: 834, column: 20, scope: !2762)
!3871 = !DILocation(line: 834, column: 38, scope: !2762)
!3872 = !DILocation(line: 834, column: 9, scope: !2762)
!3873 = !DILocation(line: 835, column: 5, scope: !2761)
!3874 = !DILocation(line: 835, column: 5, scope: !2762)
!3875 = !DILocation(line: 0, scope: !2905, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 836, column: 38, scope: !2761)
!3877 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3876)
!3878 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3876)
!3879 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3876)
!3880 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3876)
!3881 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3876)
!3882 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3876)
!3883 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3876)
!3884 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3876)
!3885 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3876)
!3886 = distinct !DIAssignID()
!3887 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3876)
!3888 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3876)
!3889 = !DILocation(line: 836, column: 20, scope: !2761)
!3890 = !DILocation(line: 836, column: 36, scope: !2761)
!3891 = !DILocation(line: 836, column: 9, scope: !2761)
!3892 = !DILocation(line: 837, column: 5, scope: !2760)
!3893 = !DILocation(line: 837, column: 5, scope: !2761)
!3894 = !DILocation(line: 839, column: 54, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !2, line: 839, column: 13)
!3896 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 838, column: 5)
!3897 = !DILocation(line: 839, column: 76, scope: !3895)
!3898 = !DILocation(line: 839, column: 18, scope: !3895)
!3899 = !DILocation(line: 839, column: 15, scope: !3895)
!3900 = !DILocation(line: 839, column: 92, scope: !3895)
!3901 = !DILocation(line: 840, column: 18, scope: !3895)
!3902 = !DILocation(line: 840, column: 15, scope: !3895)
!3903 = !DILocation(line: 840, column: 92, scope: !3895)
!3904 = !DILocation(line: 841, column: 18, scope: !3895)
!3905 = !DILocation(line: 841, column: 15, scope: !3895)
!3906 = !DILocation(line: 839, column: 13, scope: !3896)
!3907 = !DILocation(line: 843, column: 18, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3895, file: !2, line: 843, column: 18)
!3909 = !DILocation(line: 843, column: 18, scope: !3895)
!3910 = !DILocation(line: 845, column: 38, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3908, file: !2, line: 844, column: 9)
!3912 = !DILocation(line: 846, column: 9, scope: !3911)
!3913 = !DILocation(line: 849, column: 33, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3908, file: !2, line: 848, column: 9)
!3915 = !DILocation(line: 853, column: 5, scope: !2759)
!3916 = !DILocation(line: 853, column: 5, scope: !2760)
!3917 = !DILocation(line: 854, column: 28, scope: !2759)
!3918 = !DILocation(line: 854, column: 20, scope: !2759)
!3919 = !DILocation(line: 854, column: 26, scope: !2759)
!3920 = !DILocation(line: 854, column: 9, scope: !2759)
!3921 = !DILocation(line: 855, column: 5, scope: !2758)
!3922 = !DILocation(line: 855, column: 5, scope: !2759)
!3923 = !DILocation(line: 856, column: 34, scope: !2758)
!3924 = !DILocation(line: 856, column: 20, scope: !2758)
!3925 = !DILocation(line: 856, column: 32, scope: !2758)
!3926 = !DILocation(line: 856, column: 9, scope: !2758)
!3927 = !DILocation(line: 857, column: 5, scope: !2757)
!3928 = !DILocation(line: 857, column: 5, scope: !2758)
!3929 = !DILocation(line: 858, column: 41, scope: !2757)
!3930 = !DILocation(line: 858, column: 20, scope: !2757)
!3931 = !DILocation(line: 858, column: 39, scope: !2757)
!3932 = !DILocation(line: 858, column: 9, scope: !2757)
!3933 = !DILocation(line: 859, column: 5, scope: !2756)
!3934 = !DILocation(line: 859, column: 5, scope: !2757)
!3935 = !DILocation(line: 0, scope: !2905, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 860, column: 32, scope: !2756)
!3937 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3936)
!3938 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3936)
!3939 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3936)
!3940 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3936)
!3941 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3936)
!3942 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3936)
!3943 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3936)
!3944 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3936)
!3945 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3936)
!3946 = distinct !DIAssignID()
!3947 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3936)
!3948 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3936)
!3949 = !DILocation(line: 860, column: 20, scope: !2756)
!3950 = !DILocation(line: 860, column: 30, scope: !2756)
!3951 = !DILocation(line: 860, column: 9, scope: !2756)
!3952 = !DILocation(line: 861, column: 5, scope: !2755)
!3953 = !DILocation(line: 861, column: 5, scope: !2756)
!3954 = !DILocation(line: 862, column: 35, scope: !2755)
!3955 = !DILocation(line: 862, column: 20, scope: !2755)
!3956 = !DILocation(line: 862, column: 33, scope: !2755)
!3957 = !DILocation(line: 862, column: 9, scope: !2755)
!3958 = !DILocation(line: 863, column: 5, scope: !2754)
!3959 = !DILocation(line: 863, column: 5, scope: !2755)
!3960 = !DILocation(line: 864, column: 37, scope: !2754)
!3961 = !DILocation(line: 864, column: 20, scope: !2754)
!3962 = !DILocation(line: 864, column: 35, scope: !2754)
!3963 = !DILocation(line: 864, column: 9, scope: !2754)
!3964 = !DILocation(line: 865, column: 5, scope: !2753)
!3965 = !DILocation(line: 865, column: 5, scope: !2754)
!3966 = !DILocation(line: 0, scope: !2905, inlinedAt: !3967)
!3967 = distinct !DILocation(line: 866, column: 41, scope: !2753)
!3968 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3967)
!3969 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3967)
!3970 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3967)
!3971 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3967)
!3972 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3967)
!3973 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3967)
!3974 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3967)
!3975 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3967)
!3976 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3967)
!3977 = distinct !DIAssignID()
!3978 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3967)
!3979 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3967)
!3980 = !DILocation(line: 866, column: 20, scope: !2753)
!3981 = !DILocation(line: 866, column: 39, scope: !2753)
!3982 = !DILocation(line: 866, column: 9, scope: !2753)
!3983 = !DILocation(line: 867, column: 5, scope: !2752)
!3984 = !DILocation(line: 867, column: 5, scope: !2753)
!3985 = !DILocation(line: 0, scope: !2905, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 868, column: 41, scope: !2752)
!3987 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !3986)
!3988 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !3986)
!3989 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !3986)
!3990 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !3986)
!3991 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !3986)
!3992 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !3986)
!3993 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !3986)
!3994 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !3986)
!3995 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !3986)
!3996 = distinct !DIAssignID()
!3997 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !3986)
!3998 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !3986)
!3999 = !DILocation(line: 868, column: 9, scope: !2752)
!4000 = !DILocation(line: 868, column: 39, scope: !2752)
!4001 = !DILocation(line: 869, column: 5, scope: !2751)
!4002 = !DILocation(line: 869, column: 5, scope: !2752)
!4003 = !DILocation(line: 0, scope: !2905, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 870, column: 40, scope: !2751)
!4005 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !4004)
!4006 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !4004)
!4007 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !4004)
!4008 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !4004)
!4009 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !4004)
!4010 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !4004)
!4011 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !4004)
!4012 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !4004)
!4013 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !4004)
!4014 = distinct !DIAssignID()
!4015 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !4004)
!4016 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !4004)
!4017 = !DILocation(line: 870, column: 20, scope: !2751)
!4018 = !DILocation(line: 870, column: 38, scope: !2751)
!4019 = !DILocation(line: 870, column: 9, scope: !2751)
!4020 = !DILocation(line: 871, column: 5, scope: !2750)
!4021 = !DILocation(line: 871, column: 5, scope: !2751)
!4022 = !DILocation(line: 0, scope: !2905, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 873, column: 27, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 872, column: 5)
!4025 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !4023)
!4026 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !4023)
!4027 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !4023)
!4028 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !4023)
!4029 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !4023)
!4030 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !4023)
!4031 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !4023)
!4032 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !4023)
!4033 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !4023)
!4034 = distinct !DIAssignID()
!4035 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !4023)
!4036 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !4023)
!4037 = !DILocation(line: 873, column: 12, scope: !4024)
!4038 = !DILocation(line: 873, column: 15, scope: !4024)
!4039 = !DILocation(line: 873, column: 25, scope: !4024)
!4040 = !DILocation(line: 874, column: 27, scope: !4024)
!4041 = !DILocation(line: 875, column: 5, scope: !4024)
!4042 = !DILocation(line: 876, column: 5, scope: !2749)
!4043 = !DILocation(line: 876, column: 5, scope: !2750)
!4044 = !DILocation(line: 0, scope: !2905, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 878, column: 31, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !2749, file: !2, line: 877, column: 5)
!4047 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !4045)
!4048 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !4045)
!4049 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !4045)
!4050 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !4045)
!4051 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !4045)
!4052 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !4045)
!4053 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !4045)
!4054 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !4045)
!4055 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !4045)
!4056 = distinct !DIAssignID()
!4057 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !4045)
!4058 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !4045)
!4059 = !DILocation(line: 878, column: 12, scope: !4046)
!4060 = !DILocation(line: 878, column: 15, scope: !4046)
!4061 = !DILocation(line: 878, column: 29, scope: !4046)
!4062 = !DILocation(line: 879, column: 27, scope: !4046)
!4063 = !DILocation(line: 880, column: 5, scope: !4046)
!4064 = !DILocation(line: 881, column: 5, scope: !2748)
!4065 = !DILocation(line: 881, column: 5, scope: !2749)
!4066 = !DILocation(line: 0, scope: !3040, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 883, column: 31, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 882, column: 5)
!4069 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !4067)
!4070 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !4067)
!4071 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !4067)
!4072 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !4067)
!4073 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !4067)
!4074 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !4067)
!4075 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !4067)
!4076 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !4067)
!4077 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !4067)
!4078 = distinct !DIAssignID()
!4079 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !4067)
!4080 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !4067)
!4081 = !DILocation(line: 883, column: 31, scope: !4068)
!4082 = !DILocation(line: 883, column: 12, scope: !4068)
!4083 = !DILocation(line: 883, column: 15, scope: !4068)
!4084 = !DILocation(line: 883, column: 29, scope: !4068)
!4085 = !DILocation(line: 884, column: 27, scope: !4068)
!4086 = !DILocation(line: 885, column: 5, scope: !4068)
!4087 = !DILocation(line: 886, column: 5, scope: !2747)
!4088 = !DILocation(line: 886, column: 5, scope: !2748)
!4089 = !DILocation(line: 0, scope: !3040, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 887, column: 35, scope: !2747)
!4091 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !4090)
!4092 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !4090)
!4093 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !4090)
!4094 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !4090)
!4095 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !4090)
!4096 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !4090)
!4097 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !4090)
!4098 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !4090)
!4099 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !4090)
!4100 = distinct !DIAssignID()
!4101 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !4090)
!4102 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !4090)
!4103 = !DILocation(line: 887, column: 35, scope: !2747)
!4104 = !DILocation(line: 887, column: 15, scope: !2747)
!4105 = !DILocation(line: 887, column: 33, scope: !2747)
!4106 = !DILocation(line: 887, column: 9, scope: !2747)
!4107 = !DILocation(line: 888, column: 5, scope: !2746)
!4108 = !DILocation(line: 888, column: 5, scope: !2747)
!4109 = !DILocation(line: 0, scope: !2905, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 889, column: 29, scope: !2746)
!4111 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !4110)
!4112 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !4110)
!4113 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !4110)
!4114 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !4110)
!4115 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !4110)
!4116 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !4110)
!4117 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !4110)
!4118 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !4110)
!4119 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !4110)
!4120 = distinct !DIAssignID()
!4121 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !4110)
!4122 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !4110)
!4123 = !DILocation(line: 889, column: 15, scope: !2746)
!4124 = !DILocation(line: 889, column: 27, scope: !2746)
!4125 = !DILocation(line: 889, column: 9, scope: !2746)
!4126 = !DILocation(line: 890, column: 5, scope: !2745)
!4127 = !DILocation(line: 890, column: 5, scope: !2746)
!4128 = !DILocation(line: 0, scope: !2905, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 891, column: 26, scope: !2745)
!4130 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !4129)
!4131 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !4129)
!4132 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !4129)
!4133 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !4129)
!4134 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !4129)
!4135 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !4129)
!4136 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !4129)
!4137 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !4129)
!4138 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !4129)
!4139 = distinct !DIAssignID()
!4140 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !4129)
!4141 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !4129)
!4142 = !DILocation(line: 891, column: 15, scope: !2745)
!4143 = !DILocation(line: 891, column: 24, scope: !2745)
!4144 = !DILocation(line: 891, column: 9, scope: !2745)
!4145 = !DILocation(line: 892, column: 5, scope: !2744)
!4146 = !DILocation(line: 892, column: 5, scope: !2745)
!4147 = !DILocation(line: 0, scope: !2905, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 893, column: 26, scope: !2744)
!4149 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !4148)
!4150 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !4148)
!4151 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !4148)
!4152 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !4148)
!4153 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !4148)
!4154 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !4148)
!4155 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !4148)
!4156 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !4148)
!4157 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !4148)
!4158 = distinct !DIAssignID()
!4159 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !4148)
!4160 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !4148)
!4161 = !DILocation(line: 893, column: 15, scope: !2744)
!4162 = !DILocation(line: 893, column: 24, scope: !2744)
!4163 = !DILocation(line: 893, column: 9, scope: !2744)
!4164 = !DILocation(line: 894, column: 5, scope: !2743)
!4165 = !DILocation(line: 894, column: 5, scope: !2744)
!4166 = !DILocation(line: 0, scope: !2905, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 895, column: 27, scope: !2743)
!4168 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !4167)
!4169 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !4167)
!4170 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !4167)
!4171 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !4167)
!4172 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !4167)
!4173 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !4167)
!4174 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !4167)
!4175 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !4167)
!4176 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !4167)
!4177 = distinct !DIAssignID()
!4178 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !4167)
!4179 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !4167)
!4180 = !DILocation(line: 895, column: 15, scope: !2743)
!4181 = !DILocation(line: 895, column: 25, scope: !2743)
!4182 = !DILocation(line: 895, column: 9, scope: !2743)
!4183 = !DILocation(line: 896, column: 5, scope: !2742)
!4184 = !DILocation(line: 896, column: 5, scope: !2743)
!4185 = !DILocation(line: 897, column: 35, scope: !2742)
!4186 = !DILocation(line: 897, column: 34, scope: !2742)
!4187 = !DILocation(line: 0, scope: !3040, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 897, column: 68, scope: !2742)
!4189 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !4188)
!4190 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !4188)
!4191 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !4188)
!4192 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !4188)
!4193 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !4188)
!4194 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !4188)
!4195 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !4188)
!4196 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !4188)
!4197 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !4188)
!4198 = distinct !DIAssignID()
!4199 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !4188)
!4200 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !4188)
!4201 = !DILocation(line: 897, column: 15, scope: !2742)
!4202 = !DILocation(line: 897, column: 32, scope: !2742)
!4203 = !DILocation(line: 897, column: 9, scope: !2742)
!4204 = !DILocation(line: 898, column: 5, scope: !2741)
!4205 = !DILocation(line: 898, column: 5, scope: !2742)
!4206 = !DILocation(line: 0, scope: !2905, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 899, column: 35, scope: !2741)
!4208 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !4207)
!4209 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !4207)
!4210 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !4207)
!4211 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !4207)
!4212 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !4207)
!4213 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !4207)
!4214 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !4207)
!4215 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !4207)
!4216 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !4207)
!4217 = distinct !DIAssignID()
!4218 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !4207)
!4219 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !4207)
!4220 = !DILocation(line: 899, column: 15, scope: !2741)
!4221 = !DILocation(line: 899, column: 33, scope: !2741)
!4222 = !DILocation(line: 899, column: 9, scope: !2741)
!4223 = !DILocation(line: 900, column: 5, scope: !2740)
!4224 = !DILocation(line: 900, column: 5, scope: !2741)
!4225 = !DILocation(line: 0, scope: !2905, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 901, column: 35, scope: !2740)
!4227 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !4226)
!4228 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !4226)
!4229 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !4226)
!4230 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !4226)
!4231 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !4226)
!4232 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !4226)
!4233 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !4226)
!4234 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !4226)
!4235 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !4226)
!4236 = distinct !DIAssignID()
!4237 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !4226)
!4238 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !4226)
!4239 = !DILocation(line: 901, column: 15, scope: !2740)
!4240 = !DILocation(line: 901, column: 33, scope: !2740)
!4241 = !DILocation(line: 901, column: 9, scope: !2740)
!4242 = !DILocation(line: 902, column: 5, scope: !2739)
!4243 = !DILocation(line: 902, column: 5, scope: !2740)
!4244 = !DILocation(line: 0, scope: !3040, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 903, column: 35, scope: !2739)
!4246 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !4245)
!4247 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !4245)
!4248 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !4245)
!4249 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !4245)
!4250 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !4245)
!4251 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !4245)
!4252 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !4245)
!4253 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !4245)
!4254 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !4245)
!4255 = distinct !DIAssignID()
!4256 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !4245)
!4257 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !4245)
!4258 = !DILocation(line: 903, column: 35, scope: !2739)
!4259 = !DILocation(line: 903, column: 15, scope: !2739)
!4260 = !DILocation(line: 903, column: 33, scope: !2739)
!4261 = !DILocation(line: 903, column: 9, scope: !2739)
!4262 = !DILocation(line: 904, column: 5, scope: !2738)
!4263 = !DILocation(line: 904, column: 5, scope: !2739)
!4264 = !DILocation(line: 0, scope: !3040, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 905, column: 29, scope: !2738)
!4266 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !4265)
!4267 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !4265)
!4268 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !4265)
!4269 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !4265)
!4270 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !4265)
!4271 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !4265)
!4272 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !4265)
!4273 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !4265)
!4274 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !4265)
!4275 = distinct !DIAssignID()
!4276 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !4265)
!4277 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !4265)
!4278 = !DILocation(line: 905, column: 29, scope: !2738)
!4279 = !DILocation(line: 905, column: 15, scope: !2738)
!4280 = !DILocation(line: 905, column: 27, scope: !2738)
!4281 = !DILocation(line: 905, column: 9, scope: !2738)
!4282 = !DILocation(line: 906, column: 5, scope: !2737)
!4283 = !DILocation(line: 906, column: 5, scope: !2738)
!4284 = !DILocation(line: 0, scope: !3040, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 907, column: 29, scope: !2737)
!4286 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !4285)
!4287 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !4285)
!4288 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !4285)
!4289 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !4285)
!4290 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !4285)
!4291 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !4285)
!4292 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !4285)
!4293 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !4285)
!4294 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !4285)
!4295 = distinct !DIAssignID()
!4296 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !4285)
!4297 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !4285)
!4298 = !DILocation(line: 907, column: 29, scope: !2737)
!4299 = !DILocation(line: 907, column: 15, scope: !2737)
!4300 = !DILocation(line: 907, column: 27, scope: !2737)
!4301 = !DILocation(line: 907, column: 9, scope: !2737)
!4302 = !DILocation(line: 908, column: 5, scope: !2736)
!4303 = !DILocation(line: 908, column: 5, scope: !2737)
!4304 = !DILocation(line: 0, scope: !2905, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 909, column: 27, scope: !2736)
!4306 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !4305)
!4307 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !4305)
!4308 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !4305)
!4309 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !4305)
!4310 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !4305)
!4311 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !4305)
!4312 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !4305)
!4313 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !4305)
!4314 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !4305)
!4315 = distinct !DIAssignID()
!4316 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !4305)
!4317 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !4305)
!4318 = !DILocation(line: 909, column: 15, scope: !2736)
!4319 = !DILocation(line: 909, column: 25, scope: !2736)
!4320 = !DILocation(line: 909, column: 9, scope: !2736)
!4321 = !DILocation(line: 910, column: 5, scope: !2735)
!4322 = !DILocation(line: 910, column: 5, scope: !2736)
!4323 = !DILocation(line: 0, scope: !3040, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 911, column: 31, scope: !2735)
!4325 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !4324)
!4326 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !4324)
!4327 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !4324)
!4328 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !4324)
!4329 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !4324)
!4330 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !4324)
!4331 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !4324)
!4332 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !4324)
!4333 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !4324)
!4334 = distinct !DIAssignID()
!4335 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !4324)
!4336 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !4324)
!4337 = !DILocation(line: 911, column: 31, scope: !2735)
!4338 = !DILocation(line: 911, column: 15, scope: !2735)
!4339 = !DILocation(line: 911, column: 29, scope: !2735)
!4340 = !DILocation(line: 911, column: 9, scope: !2735)
!4341 = !DILocation(line: 912, column: 5, scope: !2734)
!4342 = !DILocation(line: 912, column: 5, scope: !2735)
!4343 = !DILocation(line: 0, scope: !2905, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 914, column: 32, scope: !2733)
!4345 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !4344)
!4346 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !4344)
!4347 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !4344)
!4348 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !4344)
!4349 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !4344)
!4350 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !4344)
!4351 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !4344)
!4352 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !4344)
!4353 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !4344)
!4354 = distinct !DIAssignID()
!4355 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !4344)
!4356 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !4344)
!4357 = !DILocalVariable(name: "v", arg: 1, scope: !4358, file: !1560, line: 200, type: !126)
!4358 = distinct !DISubprogram(name: "x264_clip3", scope: !1560, file: !1560, line: 200, type: !4359, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !4361)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!126, !126, !126, !126}
!4361 = !{!4357, !4362, !4363}
!4362 = !DILocalVariable(name: "i_min", arg: 2, scope: !4358, file: !1560, line: 200, type: !126)
!4363 = !DILocalVariable(name: "i_max", arg: 3, scope: !4358, file: !1560, line: 200, type: !126)
!4364 = !DILocation(line: 0, scope: !4358, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 914, column: 20, scope: !2733)
!4366 = !DILocation(line: 202, column: 17, scope: !4358, inlinedAt: !4365)
!4367 = !DILocation(line: 202, column: 14, scope: !4358, inlinedAt: !4365)
!4368 = !DILocation(line: 0, scope: !2733)
!4369 = !DILocation(line: 915, column: 35, scope: !2733)
!4370 = !DILocation(line: 915, column: 15, scope: !2733)
!4371 = !DILocation(line: 915, column: 28, scope: !2733)
!4372 = !DILocation(line: 916, column: 34, scope: !2733)
!4373 = !DILocation(line: 916, column: 15, scope: !2733)
!4374 = !DILocation(line: 916, column: 27, scope: !2733)
!4375 = !DILocation(line: 917, column: 5, scope: !2733)
!4376 = !DILocation(line: 918, column: 5, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !2734, file: !2, line: 918, column: 5)
!4378 = !DILocation(line: 918, column: 5, scope: !2734)
!4379 = !DILocation(line: 920, column: 29, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4377, file: !2, line: 919, column: 5)
!4381 = !DILocation(line: 920, column: 15, scope: !4380)
!4382 = !DILocation(line: 920, column: 27, scope: !4380)
!4383 = !DILocation(line: 921, column: 30, scope: !4380)
!4384 = !DILocation(line: 921, column: 15, scope: !4380)
!4385 = !DILocation(line: 921, column: 28, scope: !4380)
!4386 = !DILocation(line: 922, column: 5, scope: !4380)
!4387 = !DILocation(line: 923, column: 5, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4377, file: !2, line: 923, column: 5)
!4389 = !DILocation(line: 923, column: 5, scope: !4377)
!4390 = !DILocation(line: 0, scope: !3040, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 924, column: 29, scope: !4388)
!4392 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !4391)
!4393 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !4391)
!4394 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !4391)
!4395 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !4391)
!4396 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !4391)
!4397 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !4391)
!4398 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !4391)
!4399 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !4391)
!4400 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !4391)
!4401 = distinct !DIAssignID()
!4402 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !4391)
!4403 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !4391)
!4404 = !DILocation(line: 924, column: 29, scope: !4388)
!4405 = !DILocation(line: 924, column: 15, scope: !4388)
!4406 = !DILocation(line: 924, column: 27, scope: !4388)
!4407 = !DILocation(line: 924, column: 9, scope: !4388)
!4408 = !DILocation(line: 925, column: 5, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4388, file: !2, line: 925, column: 5)
!4410 = !DILocation(line: 925, column: 5, scope: !4388)
!4411 = !DILocation(line: 926, column: 27, scope: !4409)
!4412 = !DILocation(line: 926, column: 15, scope: !4409)
!4413 = !DILocation(line: 926, column: 25, scope: !4409)
!4414 = !DILocation(line: 926, column: 9, scope: !4409)
!4415 = !DILocation(line: 927, column: 5, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4409, file: !2, line: 927, column: 5)
!4417 = !DILocation(line: 927, column: 5, scope: !4409)
!4418 = !DILocation(line: 0, scope: !3040, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 928, column: 25, scope: !4416)
!4420 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !4419)
!4421 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !4419)
!4422 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !4419)
!4423 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !4419)
!4424 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !4419)
!4425 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !4419)
!4426 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !4419)
!4427 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !4419)
!4428 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !4419)
!4429 = distinct !DIAssignID()
!4430 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !4419)
!4431 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !4419)
!4432 = !DILocation(line: 928, column: 25, scope: !4416)
!4433 = !DILocation(line: 928, column: 15, scope: !4416)
!4434 = !DILocation(line: 928, column: 23, scope: !4416)
!4435 = !DILocation(line: 928, column: 9, scope: !4416)
!4436 = !DILocation(line: 929, column: 5, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4416, file: !2, line: 929, column: 5)
!4438 = !DILocation(line: 929, column: 5, scope: !4416)
!4439 = !DILocation(line: 0, scope: !3040, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 930, column: 35, scope: !4437)
!4441 = !DILocation(line: 516, column: 5, scope: !3040, inlinedAt: !4440)
!4442 = !DILocation(line: 517, column: 16, scope: !3040, inlinedAt: !4440)
!4443 = !DILocation(line: 518, column: 9, scope: !3054, inlinedAt: !4440)
!4444 = !DILocation(line: 518, column: 13, scope: !3054, inlinedAt: !4440)
!4445 = !DILocation(line: 518, column: 20, scope: !3054, inlinedAt: !4440)
!4446 = !DILocation(line: 518, column: 23, scope: !3054, inlinedAt: !4440)
!4447 = !DILocation(line: 518, column: 28, scope: !3054, inlinedAt: !4440)
!4448 = !DILocation(line: 518, column: 9, scope: !3040, inlinedAt: !4440)
!4449 = !DILocation(line: 519, column: 18, scope: !3054, inlinedAt: !4440)
!4450 = distinct !DIAssignID()
!4451 = !DILocation(line: 519, column: 9, scope: !3054, inlinedAt: !4440)
!4452 = !DILocation(line: 521, column: 1, scope: !3040, inlinedAt: !4440)
!4453 = !DILocation(line: 930, column: 35, scope: !4437)
!4454 = !DILocation(line: 930, column: 15, scope: !4437)
!4455 = !DILocation(line: 930, column: 33, scope: !4437)
!4456 = !DILocation(line: 930, column: 9, scope: !4437)
!4457 = !DILocation(line: 931, column: 5, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4437, file: !2, line: 931, column: 5)
!4459 = !DILocation(line: 931, column: 5, scope: !4437)
!4460 = !DILocation(line: 932, column: 27, scope: !4458)
!4461 = !DILocation(line: 932, column: 15, scope: !4458)
!4462 = !DILocation(line: 932, column: 25, scope: !4458)
!4463 = !DILocation(line: 932, column: 9, scope: !4458)
!4464 = !DILocation(line: 933, column: 5, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4458, file: !2, line: 933, column: 5)
!4466 = !DILocation(line: 933, column: 5, scope: !4458)
!4467 = !DILocation(line: 934, column: 29, scope: !4465)
!4468 = !DILocation(line: 934, column: 20, scope: !4465)
!4469 = !DILocation(line: 934, column: 27, scope: !4465)
!4470 = !DILocation(line: 934, column: 9, scope: !4465)
!4471 = !DILocation(line: 935, column: 5, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4465, file: !2, line: 935, column: 5)
!4473 = !DILocation(line: 935, column: 5, scope: !4465)
!4474 = !DILocation(line: 936, column: 29, scope: !4472)
!4475 = !DILocation(line: 936, column: 20, scope: !4472)
!4476 = !DILocation(line: 936, column: 27, scope: !4472)
!4477 = !DILocation(line: 936, column: 9, scope: !4472)
!4478 = !DILocation(line: 937, column: 5, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4472, file: !2, line: 937, column: 5)
!4480 = !DILocation(line: 937, column: 5, scope: !4472)
!4481 = !DILocation(line: 938, column: 20, scope: !4479)
!4482 = !DILocation(line: 938, column: 12, scope: !4479)
!4483 = !DILocation(line: 938, column: 18, scope: !4479)
!4484 = !DILocation(line: 938, column: 9, scope: !4479)
!4485 = !DILocation(line: 939, column: 5, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4479, file: !2, line: 939, column: 5)
!4487 = !DILocation(line: 939, column: 5, scope: !4479)
!4488 = !DILocation(line: 0, scope: !2905, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 940, column: 23, scope: !4486)
!4490 = !DILocation(line: 507, column: 5, scope: !2905, inlinedAt: !4489)
!4491 = !DILocation(line: 508, column: 13, scope: !2905, inlinedAt: !4489)
!4492 = !DILocation(line: 509, column: 9, scope: !2917, inlinedAt: !4489)
!4493 = !DILocation(line: 509, column: 13, scope: !2917, inlinedAt: !4489)
!4494 = !DILocation(line: 509, column: 20, scope: !2917, inlinedAt: !4489)
!4495 = !DILocation(line: 509, column: 23, scope: !2917, inlinedAt: !4489)
!4496 = !DILocation(line: 509, column: 28, scope: !2917, inlinedAt: !4489)
!4497 = !DILocation(line: 509, column: 9, scope: !2905, inlinedAt: !4489)
!4498 = !DILocation(line: 510, column: 18, scope: !2917, inlinedAt: !4489)
!4499 = distinct !DIAssignID()
!4500 = !DILocation(line: 510, column: 9, scope: !2917, inlinedAt: !4489)
!4501 = !DILocation(line: 512, column: 1, scope: !2905, inlinedAt: !4489)
!4502 = !DILocation(line: 940, column: 12, scope: !4486)
!4503 = !DILocation(line: 940, column: 21, scope: !4486)
!4504 = !DILocation(line: 940, column: 9, scope: !4486)
!4505 = !DILocation(line: 941, column: 5, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4486, file: !2, line: 941, column: 5)
!4507 = !DILocation(line: 941, column: 5, scope: !4486)
!4508 = !DILocation(line: 942, column: 32, scope: !4506)
!4509 = !DILocation(line: 942, column: 31, scope: !4506)
!4510 = !DILocation(line: 942, column: 12, scope: !4506)
!4511 = !DILocation(line: 942, column: 29, scope: !4506)
!4512 = !DILocation(line: 942, column: 9, scope: !4506)
!4513 = !DILocation(line: 943, column: 5, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4506, file: !2, line: 943, column: 5)
!4515 = !DILocation(line: 943, column: 5, scope: !4506)
!4516 = !DILocation(line: 944, column: 31, scope: !4514)
!4517 = !DILocation(line: 944, column: 12, scope: !4514)
!4518 = !DILocation(line: 944, column: 29, scope: !4514)
!4519 = !DILocation(line: 944, column: 9, scope: !4514)
!4520 = !DILocation(line: 945, column: 5, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4514, file: !2, line: 945, column: 5)
!4522 = !DILocation(line: 945, column: 5, scope: !4514)
!4523 = !DILocation(line: 946, column: 23, scope: !4521)
!4524 = !DILocation(line: 946, column: 12, scope: !4521)
!4525 = !DILocation(line: 946, column: 21, scope: !4521)
!4526 = !DILocation(line: 946, column: 9, scope: !4521)
!4527 = !DILocation(line: 947, column: 5, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4521, file: !2, line: 947, column: 5)
!4529 = !DILocation(line: 947, column: 5, scope: !4521)
!4530 = !DILocation(line: 948, column: 27, scope: !4528)
!4531 = !DILocation(line: 948, column: 26, scope: !4528)
!4532 = !DILocation(line: 948, column: 12, scope: !4528)
!4533 = !DILocation(line: 948, column: 24, scope: !4528)
!4534 = !DILocation(line: 948, column: 9, scope: !4528)
!4535 = !DILocation(line: 949, column: 5, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4528, file: !2, line: 949, column: 5)
!4537 = !DILocation(line: 949, column: 5, scope: !4528)
!4538 = !DILocation(line: 950, column: 63, scope: !4536)
!4539 = !DILocation(line: 950, column: 20, scope: !4536)
!4540 = !DILocation(line: 950, column: 17, scope: !4536)
!4541 = distinct !DIAssignID()
!4542 = !DILocation(line: 950, column: 9, scope: !4536)
!4543 = !DILocation(line: 951, column: 5, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4536, file: !2, line: 951, column: 5)
!4545 = !DILocation(line: 951, column: 5, scope: !4536)
!4546 = !DILocation(line: 952, column: 27, scope: !4544)
!4547 = !DILocation(line: 952, column: 12, scope: !4544)
!4548 = !DILocation(line: 952, column: 25, scope: !4544)
!4549 = !DILocation(line: 952, column: 9, scope: !4544)
!4550 = !DILocation(line: 953, column: 5, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4544, file: !2, line: 953, column: 5)
!4552 = !DILocation(line: 953, column: 5, scope: !4544)
!4553 = !DILocation(line: 954, column: 32, scope: !4551)
!4554 = !DILocation(line: 954, column: 12, scope: !4551)
!4555 = !DILocation(line: 954, column: 30, scope: !4551)
!4556 = !DILocation(line: 963, column: 9, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 963, column: 9)
!4558 = !DILocation(line: 963, column: 9, scope: !2692)
!4559 = !DILocation(line: 964, column: 9, scope: !4557)
!4560 = !DILocation(line: 966, column: 31, scope: !2692)
!4561 = !DILocation(line: 966, column: 13, scope: !2692)
!4562 = distinct !DIAssignID()
!4563 = !DILocation(line: 967, column: 12, scope: !2692)
!4564 = !DILocation(line: 967, column: 5, scope: !2692)
!4565 = !DILocation(line: 968, column: 1, scope: !2692)
!4566 = !DISubprogram(name: "strchr", scope: !742, file: !742, line: 246, type: !4567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!124, !624, !126}
!4569 = !DISubprogram(name: "strncmp", scope: !742, file: !742, line: 159, type: !4570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!126, !624, !624, !750}
!4572 = distinct !DISubprogram(name: "x264_atobool", scope: !2, file: !2, line: 491, type: !2906, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !4573)
!4573 = !{!4574, !4575}
!4574 = !DILocalVariable(name: "str", arg: 1, scope: !4572, file: !2, line: 491, type: !624)
!4575 = !DILocalVariable(name: "b_error", arg: 2, scope: !4572, file: !2, line: 491, type: !132)
!4576 = !DILocation(line: 0, scope: !4572)
!4577 = !DILocation(line: 493, column: 10, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4572, file: !2, line: 493, column: 9)
!4579 = !DILocation(line: 493, column: 27, scope: !4578)
!4580 = !DILocation(line: 494, column: 10, scope: !4578)
!4581 = !DILocation(line: 494, column: 30, scope: !4578)
!4582 = !DILocation(line: 495, column: 10, scope: !4578)
!4583 = !DILocation(line: 493, column: 9, scope: !4572)
!4584 = !DILocation(line: 497, column: 10, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4572, file: !2, line: 497, column: 9)
!4586 = !DILocation(line: 497, column: 27, scope: !4585)
!4587 = !DILocation(line: 498, column: 10, scope: !4585)
!4588 = !DILocation(line: 498, column: 31, scope: !4585)
!4589 = !DILocation(line: 499, column: 10, scope: !4585)
!4590 = !DILocation(line: 497, column: 9, scope: !4572)
!4591 = !DILocation(line: 501, column: 14, scope: !4572)
!4592 = !DILocation(line: 502, column: 5, scope: !4572)
!4593 = !DILocation(line: 503, column: 1, scope: !4572)
!4594 = !DISubprogram(name: "__ctype_b_loc", scope: !97, file: !97, line: 79, type: !4595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!4597}
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!4600 = !DISubprogram(name: "strtok", scope: !742, file: !742, line: 356, type: !4601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!124, !4603, !4604}
!4603 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!4604 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !624)
!4605 = !DISubprogram(name: "free", scope: !747, file: !747, line: 555, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4606 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !4607, file: !4607, line: 439, type: !4608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4607 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!126, !4604, !4604, null}
!4610 = distinct !DISubprogram(name: "parse_enum", scope: !2, file: !2, line: 468, type: !4611, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !4614)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!126, !624, !4613, !132}
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!4614 = !{!4615, !4616, !4617, !4618}
!4615 = !DILocalVariable(name: "arg", arg: 1, scope: !4610, file: !2, line: 468, type: !624)
!4616 = !DILocalVariable(name: "names", arg: 2, scope: !4610, file: !2, line: 468, type: !4613)
!4617 = !DILocalVariable(name: "dst", arg: 3, scope: !4610, file: !2, line: 468, type: !132)
!4618 = !DILocalVariable(name: "i", scope: !4619, file: !2, line: 470, type: !126)
!4619 = distinct !DILexicalBlock(scope: !4610, file: !2, line: 470, column: 5)
!4620 = !DILocation(line: 0, scope: !4610)
!4621 = !DILocation(line: 0, scope: !4619)
!4622 = !DILocation(line: 470, column: 21, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4619, file: !2, line: 470, column: 5)
!4624 = !DILocation(line: 470, column: 5, scope: !4619)
!4625 = !DILocation(line: 471, column: 14, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4623, file: !2, line: 471, column: 13)
!4627 = !DILocation(line: 471, column: 13, scope: !4623)
!4628 = !DILocation(line: 473, column: 18, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4626, file: !2, line: 472, column: 9)
!4630 = !DILocation(line: 474, column: 13, scope: !4629)
!4631 = !DILocation(line: 470, column: 32, scope: !4623)
!4632 = distinct !{!4632, !4624, !4633}
!4633 = !DILocation(line: 475, column: 9, scope: !4619)
!4634 = !DILocation(line: 477, column: 1, scope: !4610)
!4635 = !DISubprogram(name: "strstr", scope: !742, file: !742, line: 350, type: !4636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!124, !624, !624}
!4638 = distinct !DISubprogram(name: "parse_cqm", scope: !2, file: !2, line: 479, type: !4639, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !4641)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!126, !624, !1293, !126}
!4641 = !{!4642, !4643, !4644, !4645, !4646}
!4642 = !DILocalVariable(name: "str", arg: 1, scope: !4638, file: !2, line: 479, type: !624)
!4643 = !DILocalVariable(name: "cqm", arg: 2, scope: !4638, file: !2, line: 479, type: !1293)
!4644 = !DILocalVariable(name: "length", arg: 3, scope: !4638, file: !2, line: 479, type: !126)
!4645 = !DILocalVariable(name: "i", scope: !4638, file: !2, line: 481, type: !126)
!4646 = !DILocalVariable(name: "coef", scope: !4647, file: !2, line: 483, type: !126)
!4647 = distinct !DILexicalBlock(scope: !4638, file: !2, line: 482, column: 8)
!4648 = distinct !DIAssignID()
!4649 = !DILocation(line: 0, scope: !4647)
!4650 = !DILocation(line: 0, scope: !4638)
!4651 = !DILocation(line: 483, column: 9, scope: !4647)
!4652 = !DILocation(line: 484, column: 14, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4647, file: !2, line: 484, column: 13)
!4654 = !DILocation(line: 484, column: 41, scope: !4653)
!4655 = !DILocation(line: 487, column: 25, scope: !4638)
!4656 = !DILocation(line: 487, column: 16, scope: !4638)
!4657 = !DILocation(line: 487, column: 61, scope: !4638)
!4658 = !DILocation(line: 487, column: 5, scope: !4638)
!4659 = !DILocation(line: 486, column: 20, scope: !4647)
!4660 = !DILocation(line: 486, column: 14, scope: !4647)
!4661 = !DILocation(line: 486, column: 9, scope: !4647)
!4662 = !DILocation(line: 486, column: 18, scope: !4647)
!4663 = !DILocation(line: 487, column: 35, scope: !4638)
!4664 = !DILocation(line: 487, column: 33, scope: !4638)
!4665 = !DILocation(line: 487, column: 55, scope: !4638)
!4666 = !DILocation(line: 488, column: 15, scope: !4638)
!4667 = !DILocation(line: 488, column: 12, scope: !4638)
!4668 = !DILocation(line: 488, column: 5, scope: !4638)
!4669 = !DILocation(line: 489, column: 1, scope: !4638)
!4670 = distinct !DISubprogram(name: "x264_picture_alloc", scope: !2, file: !2, line: 1015, type: !4671, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !4694)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!126, !4673, !126, !126, !126}
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !113, line: 549, baseType: !4675)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 513, size: 1088, elements: !4676)
!4676 = !{!4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4692, !4693}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !4675, file: !113, line: 521, baseType: !126, size: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !4675, file: !113, line: 523, baseType: !126, size: 32, offset: 32)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !4675, file: !113, line: 526, baseType: !126, size: 32, offset: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !4675, file: !113, line: 529, baseType: !126, size: 32, offset: 96)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !4675, file: !113, line: 531, baseType: !1872, size: 64, offset: 128)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !4675, file: !113, line: 534, baseType: !1872, size: 64, offset: 192)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4675, file: !113, line: 541, baseType: !755, size: 64, offset: 256)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !4675, file: !113, line: 543, baseType: !4685, size: 448, offset: 320)
!4685 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !113, line: 511, baseType: !4686)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 505, size: 448, elements: !4687)
!4687 = !{!4688, !4689, !4690, !4691}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !4686, file: !113, line: 507, baseType: !126, size: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !4686, file: !113, line: 508, baseType: !126, size: 32, offset: 32)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !4686, file: !113, line: 509, baseType: !2375, size: 128, offset: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !4686, file: !113, line: 510, baseType: !1904, size: 256, offset: 192)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !4675, file: !113, line: 545, baseType: !1968, size: 256, offset: 768)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !4675, file: !113, line: 548, baseType: !125, size: 64, offset: 1024)
!4694 = !{!4695, !4696, !4697, !4698}
!4695 = !DILocalVariable(name: "pic", arg: 1, scope: !4670, file: !2, line: 1015, type: !4673)
!4696 = !DILocalVariable(name: "i_csp", arg: 2, scope: !4670, file: !2, line: 1015, type: !126)
!4697 = !DILocalVariable(name: "i_width", arg: 3, scope: !4670, file: !2, line: 1015, type: !126)
!4698 = !DILocalVariable(name: "i_height", arg: 4, scope: !4670, file: !2, line: 1015, type: !126)
!4699 = !DILocation(line: 0, scope: !4670)
!4700 = !DILocation(line: 1017, column: 17, scope: !4670)
!4701 = !DILocation(line: 1018, column: 10, scope: !4670)
!4702 = !DILocation(line: 1018, column: 20, scope: !4670)
!4703 = !DILocation(line: 1019, column: 10, scope: !4670)
!4704 = !DILocation(line: 1019, column: 20, scope: !4670)
!4705 = !DILocation(line: 1020, column: 14, scope: !4670)
!4706 = !DILocation(line: 1020, column: 22, scope: !4670)
!4707 = !DILocation(line: 1021, column: 40, scope: !4670)
!4708 = !DILocation(line: 1021, column: 50, scope: !4670)
!4709 = !DILocation(line: 1021, column: 61, scope: !4670)
!4710 = !DILocation(line: 0, scope: !1288, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 1021, column: 25, scope: !4670)
!4712 = !DILocation(line: 1111, column: 58, scope: !1288, inlinedAt: !4711)
!4713 = !DILocation(line: 1111, column: 20, scope: !1288, inlinedAt: !4711)
!4714 = !DILocation(line: 1112, column: 9, scope: !1301, inlinedAt: !4711)
!4715 = !DILocation(line: 1112, column: 9, scope: !1288, inlinedAt: !4711)
!4716 = !DILocation(line: 1121, column: 9, scope: !1304, inlinedAt: !4711)
!4717 = !DILocation(line: 1022, column: 9, scope: !4670)
!4718 = !DILocation(line: 1114, column: 48, scope: !1307, inlinedAt: !4711)
!4719 = !DILocation(line: 1115, column: 22, scope: !1307, inlinedAt: !4711)
!4720 = !DILocation(line: 1115, column: 43, scope: !1307, inlinedAt: !4711)
!4721 = !DILocation(line: 1115, column: 19, scope: !1307, inlinedAt: !4711)
!4722 = !DILocation(line: 1116, column: 34, scope: !1307, inlinedAt: !4711)
!4723 = !DILocation(line: 1116, column: 56, scope: !1307, inlinedAt: !4711)
!4724 = !DILocation(line: 1117, column: 50, scope: !1307, inlinedAt: !4711)
!4725 = !DILocation(line: 1117, column: 68, scope: !1307, inlinedAt: !4711)
!4726 = !DILocation(line: 1024, column: 43, scope: !4670)
!4727 = !DILocation(line: 1024, column: 5, scope: !4670)
!4728 = !DILocation(line: 1024, column: 23, scope: !4670)
!4729 = !DILocation(line: 1025, column: 64, scope: !4670)
!4730 = !DILocation(line: 1025, column: 43, scope: !4670)
!4731 = !DILocation(line: 1025, column: 5, scope: !4670)
!4732 = !DILocation(line: 1025, column: 23, scope: !4670)
!4733 = !DILocation(line: 1026, column: 14, scope: !4670)
!4734 = !DILocation(line: 1026, column: 26, scope: !4670)
!4735 = !DILocation(line: 1027, column: 36, scope: !4670)
!4736 = !DILocation(line: 1027, column: 5, scope: !4670)
!4737 = !DILocation(line: 1027, column: 26, scope: !4670)
!4738 = !DILocation(line: 1028, column: 5, scope: !4670)
!4739 = !DILocation(line: 1028, column: 26, scope: !4670)
!4740 = !DILocation(line: 1029, column: 10, scope: !4670)
!4741 = !DILocation(line: 1029, column: 16, scope: !4670)
!4742 = !DILocation(line: 1030, column: 10, scope: !4670)
!4743 = !DILocation(line: 1030, column: 23, scope: !4670)
!4744 = !DILocation(line: 1031, column: 5, scope: !4670)
!4745 = !DILocation(line: 1021, column: 23, scope: !4670)
!4746 = !DILocation(line: 1021, column: 14, scope: !4670)
!4747 = !DILocation(line: 1032, column: 1, scope: !4670)
!4748 = !DILocation(line: 0, scope: !1288)
!4749 = !DILocation(line: 1111, column: 40, scope: !1288)
!4750 = !DILocation(line: 1111, column: 58, scope: !1288)
!4751 = !DILocation(line: 1111, column: 20, scope: !1288)
!4752 = !DILocation(line: 1112, column: 9, scope: !1301)
!4753 = !DILocation(line: 1112, column: 9, scope: !1288)
!4754 = !DILocation(line: 1114, column: 48, scope: !1307)
!4755 = !DILocation(line: 1115, column: 22, scope: !1307)
!4756 = !DILocation(line: 1115, column: 43, scope: !1307)
!4757 = !DILocation(line: 1115, column: 19, scope: !1307)
!4758 = !DILocation(line: 1116, column: 34, scope: !1307)
!4759 = !DILocation(line: 1116, column: 56, scope: !1307)
!4760 = !DILocation(line: 1117, column: 50, scope: !1307)
!4761 = !DILocation(line: 1117, column: 68, scope: !1307)
!4762 = !DILocation(line: 1120, column: 9, scope: !1288)
!4763 = !DILocation(line: 1121, column: 9, scope: !1304)
!4764 = !DILocation(line: 1122, column: 5, scope: !1288)
!4765 = distinct !DISubprogram(name: "x264_picture_clean", scope: !2, file: !2, line: 1037, type: !4766, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !4768)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{null, !4673}
!4768 = !{!4769}
!4769 = !DILocalVariable(name: "pic", arg: 1, scope: !4765, file: !2, line: 1037, type: !4673)
!4770 = !DILocation(line: 0, scope: !4765)
!4771 = !DILocation(line: 1039, column: 25, scope: !4765)
!4772 = !DILocation(line: 1039, column: 16, scope: !4765)
!4773 = !DILocation(line: 0, scope: !1438, inlinedAt: !4774)
!4774 = distinct !DILocation(line: 1039, column: 5, scope: !4765)
!4775 = !DILocation(line: 1130, column: 9, scope: !1444, inlinedAt: !4774)
!4776 = !DILocation(line: 1130, column: 9, scope: !1438, inlinedAt: !4774)
!4777 = !DILocation(line: 1135, column: 35, scope: !1443, inlinedAt: !4774)
!4778 = !DILocation(line: 1135, column: 15, scope: !1443, inlinedAt: !4774)
!4779 = !DILocation(line: 1135, column: 9, scope: !1443, inlinedAt: !4774)
!4780 = !DILocation(line: 1137, column: 5, scope: !1443, inlinedAt: !4774)
!4781 = !DILocation(line: 1042, column: 5, scope: !4765)
!4782 = !DILocation(line: 1043, column: 1, scope: !4765)
!4783 = !DILocation(line: 0, scope: !1438)
!4784 = !DILocation(line: 1130, column: 9, scope: !1444)
!4785 = !DILocation(line: 1130, column: 9, scope: !1438)
!4786 = !DILocation(line: 1135, column: 35, scope: !1443)
!4787 = !DILocation(line: 1135, column: 15, scope: !1443)
!4788 = !DILocation(line: 1135, column: 9, scope: !1443)
!4789 = !DILocation(line: 1137, column: 5, scope: !1443)
!4790 = !DILocation(line: 1138, column: 1, scope: !1438)
!4791 = distinct !DISubprogram(name: "x264_nal_encode", scope: !2, file: !2, line: 1048, type: !4792, scopeLine: 1049, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !4794)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!126, !1293, !1578, !126, !126}
!4794 = !{!4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803}
!4795 = !DILocalVariable(name: "dst", arg: 1, scope: !4791, file: !2, line: 1048, type: !1293)
!4796 = !DILocalVariable(name: "nal", arg: 2, scope: !4791, file: !2, line: 1048, type: !1578)
!4797 = !DILocalVariable(name: "b_annexb", arg: 3, scope: !4791, file: !2, line: 1048, type: !126)
!4798 = !DILocalVariable(name: "b_long_startcode", arg: 4, scope: !4791, file: !2, line: 1048, type: !126)
!4799 = !DILocalVariable(name: "src", scope: !4791, file: !2, line: 1050, type: !1293)
!4800 = !DILocalVariable(name: "end", scope: !4791, file: !2, line: 1051, type: !1293)
!4801 = !DILocalVariable(name: "orig_dst", scope: !4791, file: !2, line: 1052, type: !1293)
!4802 = !DILocalVariable(name: "i_count", scope: !4791, file: !2, line: 1053, type: !126)
!4803 = !DILocalVariable(name: "size", scope: !4791, file: !2, line: 1053, type: !126)
!4804 = !DILocation(line: 0, scope: !4791)
!4805 = !DILocation(line: 1050, column: 25, scope: !4791)
!4806 = !DILocation(line: 1051, column: 42, scope: !4791)
!4807 = !DILocation(line: 1051, column: 35, scope: !4791)
!4808 = !DILocation(line: 1055, column: 9, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4791, file: !2, line: 1055, column: 9)
!4810 = !DILocation(line: 1055, column: 9, scope: !4791)
!4811 = !DILocation(line: 1057, column: 13, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !2, line: 1057, column: 13)
!4813 = distinct !DILexicalBlock(scope: !4809, file: !2, line: 1056, column: 5)
!4814 = !DILocation(line: 1057, column: 13, scope: !4813)
!4815 = !DILocation(line: 1058, column: 17, scope: !4812)
!4816 = !DILocation(line: 1058, column: 20, scope: !4812)
!4817 = !DILocation(line: 1058, column: 13, scope: !4812)
!4818 = !DILocation(line: 1059, column: 13, scope: !4813)
!4819 = !DILocation(line: 1059, column: 16, scope: !4813)
!4820 = !DILocation(line: 1060, column: 13, scope: !4813)
!4821 = !DILocation(line: 1060, column: 16, scope: !4813)
!4822 = !DILocation(line: 1061, column: 13, scope: !4813)
!4823 = !DILocation(line: 1061, column: 16, scope: !4813)
!4824 = !DILocation(line: 1062, column: 5, scope: !4813)
!4825 = !DILocation(line: 1064, column: 13, scope: !4809)
!4826 = !DILocation(line: 0, scope: !4809)
!4827 = !DILocation(line: 1067, column: 37, scope: !4791)
!4828 = !DILocation(line: 1067, column: 47, scope: !4791)
!4829 = !DILocation(line: 1067, column: 61, scope: !4791)
!4830 = !DILocation(line: 1067, column: 54, scope: !4791)
!4831 = !DILocation(line: 1067, column: 14, scope: !4791)
!4832 = !DILocation(line: 1067, column: 12, scope: !4791)
!4833 = !DILocation(line: 1069, column: 16, scope: !4791)
!4834 = !DILocation(line: 1069, column: 5, scope: !4791)
!4835 = !DILocation(line: 1071, column: 21, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !2, line: 1071, column: 13)
!4837 = distinct !DILexicalBlock(scope: !4791, file: !2, line: 1070, column: 5)
!4838 = !DILocation(line: 1076, column: 13, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4837, file: !2, line: 1076, column: 13)
!4840 = !DILocation(line: 1071, column: 26, scope: !4836)
!4841 = !DILocation(line: 1071, column: 34, scope: !4836)
!4842 = !DILocation(line: 1071, column: 13, scope: !4837)
!4843 = !DILocation(line: 1073, column: 17, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4836, file: !2, line: 1072, column: 9)
!4845 = !DILocation(line: 1073, column: 20, scope: !4844)
!4846 = !DILocation(line: 1075, column: 9, scope: !4844)
!4847 = !DILocation(line: 1076, column: 18, scope: !4839)
!4848 = !DILocation(line: 1076, column: 13, scope: !4837)
!4849 = !DILocation(line: 1080, column: 22, scope: !4837)
!4850 = !DILocation(line: 1080, column: 16, scope: !4837)
!4851 = distinct !{!4851, !4834, !4852}
!4852 = !DILocation(line: 1081, column: 5, scope: !4791)
!4853 = !DILocation(line: 1082, column: 17, scope: !4791)
!4854 = !DILocation(line: 1082, column: 12, scope: !4791)
!4855 = !DILocation(line: 1085, column: 9, scope: !4791)
!4856 = !DILocation(line: 1088, column: 27, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4858, file: !2, line: 1086, column: 5)
!4858 = distinct !DILexicalBlock(scope: !4791, file: !2, line: 1085, column: 9)
!4859 = !DILocation(line: 1088, column: 23, scope: !4857)
!4860 = !DILocation(line: 1088, column: 21, scope: !4857)
!4861 = !DILocation(line: 1089, column: 27, scope: !4857)
!4862 = !DILocation(line: 1089, column: 23, scope: !4857)
!4863 = !DILocation(line: 1089, column: 9, scope: !4857)
!4864 = !DILocation(line: 1089, column: 21, scope: !4857)
!4865 = !DILocation(line: 1090, column: 27, scope: !4857)
!4866 = !DILocation(line: 1090, column: 23, scope: !4857)
!4867 = !DILocation(line: 1090, column: 9, scope: !4857)
!4868 = !DILocation(line: 1090, column: 21, scope: !4857)
!4869 = !DILocation(line: 1091, column: 23, scope: !4857)
!4870 = !DILocation(line: 1091, column: 9, scope: !4857)
!4871 = !DILocation(line: 1091, column: 21, scope: !4857)
!4872 = !DILocation(line: 1092, column: 5, scope: !4857)
!4873 = !DILocation(line: 1094, column: 5, scope: !4791)
!4874 = distinct !DISubprogram(name: "x264_reduce_fraction", scope: !2, file: !2, line: 1143, type: !4875, scopeLine: 1144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !4877)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{null, !2580, !2580}
!4877 = !{!4878, !4879, !4880, !4881, !4882}
!4878 = !DILocalVariable(name: "n", arg: 1, scope: !4874, file: !2, line: 1143, type: !2580)
!4879 = !DILocalVariable(name: "d", arg: 2, scope: !4874, file: !2, line: 1143, type: !2580)
!4880 = !DILocalVariable(name: "a", scope: !4874, file: !2, line: 1145, type: !907)
!4881 = !DILocalVariable(name: "b", scope: !4874, file: !2, line: 1146, type: !907)
!4882 = !DILocalVariable(name: "c", scope: !4874, file: !2, line: 1147, type: !907)
!4883 = !DILocation(line: 0, scope: !4874)
!4884 = !DILocation(line: 1145, column: 18, scope: !4874)
!4885 = !DILocation(line: 1146, column: 18, scope: !4874)
!4886 = !DILocation(line: 1148, column: 10, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4874, file: !2, line: 1148, column: 9)
!4888 = !DILocation(line: 1148, column: 12, scope: !4887)
!4889 = !DILocation(line: 1150, column: 11, scope: !4874)
!4890 = !DILocation(line: 1151, column: 5, scope: !4874)
!4891 = !DILocation(line: 1155, column: 15, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4874, file: !2, line: 1152, column: 5)
!4893 = distinct !{!4893, !4890, !4894}
!4894 = !DILocation(line: 1156, column: 5, scope: !4874)
!4895 = !DILocation(line: 1157, column: 8, scope: !4874)
!4896 = !DILocation(line: 1158, column: 8, scope: !4874)
!4897 = !DILocation(line: 1159, column: 1, scope: !4874)
!4898 = distinct !DISubprogram(name: "x264_slurp_file", scope: !2, file: !2, line: 1164, type: !720, scopeLine: 1165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !4899)
!4899 = !{!4900, !4901, !4902, !4903, !4904}
!4900 = !DILocalVariable(name: "filename", arg: 1, scope: !4898, file: !2, line: 1164, type: !624)
!4901 = !DILocalVariable(name: "b_error", scope: !4898, file: !2, line: 1166, type: !126)
!4902 = !DILocalVariable(name: "i_size", scope: !4898, file: !2, line: 1167, type: !126)
!4903 = !DILocalVariable(name: "buf", scope: !4898, file: !2, line: 1168, type: !124)
!4904 = !DILocalVariable(name: "fh", scope: !4898, file: !2, line: 1169, type: !4905)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4907, line: 7, baseType: !4908)
!4907 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4909, line: 49, size: 1728, elements: !4910)
!4909 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!4910 = !{!4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4926, !4928, !4929, !4930, !4932, !4933, !4934, !4935, !4938, !4940, !4943, !4946, !4947, !4948, !4949, !4950}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4908, file: !4909, line: 51, baseType: !126, size: 32)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4908, file: !4909, line: 54, baseType: !124, size: 64, offset: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4908, file: !4909, line: 55, baseType: !124, size: 64, offset: 128)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4908, file: !4909, line: 56, baseType: !124, size: 64, offset: 192)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4908, file: !4909, line: 57, baseType: !124, size: 64, offset: 256)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4908, file: !4909, line: 58, baseType: !124, size: 64, offset: 320)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4908, file: !4909, line: 59, baseType: !124, size: 64, offset: 384)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4908, file: !4909, line: 60, baseType: !124, size: 64, offset: 448)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4908, file: !4909, line: 61, baseType: !124, size: 64, offset: 512)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4908, file: !4909, line: 64, baseType: !124, size: 64, offset: 576)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4908, file: !4909, line: 65, baseType: !124, size: 64, offset: 640)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4908, file: !4909, line: 66, baseType: !124, size: 64, offset: 704)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4908, file: !4909, line: 68, baseType: !4924, size: 64, offset: 768)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4909, line: 36, flags: DIFlagFwdDecl)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4908, file: !4909, line: 70, baseType: !4927, size: 64, offset: 832)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4908, file: !4909, line: 72, baseType: !126, size: 32, offset: 896)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4908, file: !4909, line: 73, baseType: !126, size: 32, offset: 928)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4908, file: !4909, line: 74, baseType: !4931, size: 64, offset: 960)
!4931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !805, line: 152, baseType: !130)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4908, file: !4909, line: 77, baseType: !127, size: 16, offset: 1024)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4908, file: !4909, line: 78, baseType: !1921, size: 8, offset: 1040)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4908, file: !4909, line: 79, baseType: !635, size: 8, offset: 1048)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4908, file: !4909, line: 81, baseType: !4936, size: 64, offset: 1088)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !4909, line: 43, baseType: null)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4908, file: !4909, line: 89, baseType: !4939, size: 64, offset: 1152)
!4939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !805, line: 153, baseType: !130)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4908, file: !4909, line: 91, baseType: !4941, size: 64, offset: 1216)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !4909, line: 37, flags: DIFlagFwdDecl)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4908, file: !4909, line: 92, baseType: !4944, size: 64, offset: 1280)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !4909, line: 38, flags: DIFlagFwdDecl)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4908, file: !4909, line: 93, baseType: !4927, size: 64, offset: 1344)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4908, file: !4909, line: 94, baseType: !125, size: 64, offset: 1408)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4908, file: !4909, line: 95, baseType: !750, size: 64, offset: 1472)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4908, file: !4909, line: 96, baseType: !126, size: 32, offset: 1536)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4908, file: !4909, line: 98, baseType: !4951, size: 160, offset: 1568)
!4951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !4952)
!4952 = !{!4953}
!4953 = !DISubrange(count: 20)
!4954 = !DILocation(line: 0, scope: !4898)
!4955 = !DILocation(line: 1169, column: 16, scope: !4898)
!4956 = !DILocation(line: 1170, column: 10, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4898, file: !2, line: 1170, column: 9)
!4958 = !DILocation(line: 1170, column: 9, scope: !4898)
!4959 = !DILocation(line: 1172, column: 16, scope: !4898)
!4960 = !DILocation(line: 1173, column: 27, scope: !4898)
!4961 = !DILocation(line: 1173, column: 41, scope: !4898)
!4962 = !DILocation(line: 1173, column: 13, scope: !4898)
!4963 = !DILocation(line: 1174, column: 16, scope: !4898)
!4964 = !DILocation(line: 1174, column: 41, scope: !4898)
!4965 = !DILocation(line: 1174, column: 13, scope: !4898)
!4966 = !DILocation(line: 1175, column: 9, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4898, file: !2, line: 1175, column: 9)
!4968 = !DILocation(line: 1175, column: 9, scope: !4898)
!4969 = !DILocation(line: 1177, column: 30, scope: !4898)
!4970 = !DILocation(line: 0, scope: !1288, inlinedAt: !4971)
!4971 = distinct !DILocation(line: 1177, column: 11, scope: !4898)
!4972 = !DILocation(line: 1111, column: 58, scope: !1288, inlinedAt: !4971)
!4973 = !DILocation(line: 1111, column: 20, scope: !1288, inlinedAt: !4971)
!4974 = !DILocation(line: 1112, column: 9, scope: !1301, inlinedAt: !4971)
!4975 = !DILocation(line: 1112, column: 9, scope: !1288, inlinedAt: !4971)
!4976 = !DILocation(line: 1121, column: 9, scope: !1304, inlinedAt: !4971)
!4977 = !DILocation(line: 1178, column: 9, scope: !4898)
!4978 = !DILocation(line: 1114, column: 48, scope: !1307, inlinedAt: !4971)
!4979 = !DILocation(line: 1115, column: 22, scope: !1307, inlinedAt: !4971)
!4980 = !DILocation(line: 1115, column: 43, scope: !1307, inlinedAt: !4971)
!4981 = !DILocation(line: 1115, column: 19, scope: !1307, inlinedAt: !4971)
!4982 = !DILocation(line: 1116, column: 34, scope: !1307, inlinedAt: !4971)
!4983 = !DILocation(line: 1116, column: 56, scope: !1307, inlinedAt: !4971)
!4984 = !DILocation(line: 1117, column: 50, scope: !1307, inlinedAt: !4971)
!4985 = !DILocation(line: 1117, column: 68, scope: !1307, inlinedAt: !4971)
!4986 = !DILocation(line: 1180, column: 22, scope: !4898)
!4987 = !DILocation(line: 1180, column: 16, scope: !4898)
!4988 = !DILocation(line: 1180, column: 50, scope: !4898)
!4989 = !DILocation(line: 1181, column: 9, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4898, file: !2, line: 1181, column: 9)
!4991 = !DILocation(line: 1181, column: 23, scope: !4990)
!4992 = !DILocation(line: 1181, column: 9, scope: !4898)
!4993 = !DILocation(line: 1182, column: 9, scope: !4990)
!4994 = !DILocation(line: 1182, column: 23, scope: !4990)
!4995 = !DILocation(line: 1183, column: 5, scope: !4898)
!4996 = !DILocation(line: 1183, column: 17, scope: !4898)
!4997 = !DILocation(line: 1184, column: 5, scope: !4898)
!4998 = !DILocation(line: 1185, column: 9, scope: !4898)
!4999 = !DILocation(line: 0, scope: !1438, inlinedAt: !5000)
!5000 = distinct !DILocation(line: 1187, column: 9, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !2, line: 1186, column: 5)
!5002 = distinct !DILexicalBlock(scope: !4898, file: !2, line: 1185, column: 9)
!5003 = !DILocation(line: 1135, column: 15, scope: !1443, inlinedAt: !5000)
!5004 = !DILocation(line: 1135, column: 9, scope: !1443, inlinedAt: !5000)
!5005 = !DILocation(line: 1188, column: 9, scope: !5001)
!5006 = !DILocation(line: 1191, column: 1, scope: !4898)
!5007 = !DISubprogram(name: "fopen", linkageName: "fopen64", scope: !4607, file: !4607, line: 270, type: !5008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{!4905, !4604, !4604}
!5010 = !DISubprogram(name: "fseek", scope: !4607, file: !4607, line: 713, type: !5011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!126, !4905, !130, !126}
!5013 = !DISubprogram(name: "ftell", scope: !4607, file: !4607, line: 718, type: !5014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!130, !4905}
!5016 = !DISubprogram(name: "fread", scope: !4607, file: !4607, line: 675, type: !5017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!745, !5019, !750, !750, !5020}
!5019 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!5020 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4905)
!5021 = !DISubprogram(name: "fclose", scope: !4607, file: !4607, line: 178, type: !5022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!126, !4905}
!5024 = distinct !DISubprogram(name: "x264_param2string", scope: !2, file: !2, line: 1196, type: !5025, scopeLine: 1197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !5027)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!124, !755, !126}
!5027 = !{!5028, !5029, !5030, !5031, !5032}
!5028 = !DILocalVariable(name: "p", arg: 1, scope: !5024, file: !2, line: 1196, type: !755)
!5029 = !DILocalVariable(name: "b_res", arg: 2, scope: !5024, file: !2, line: 1196, type: !126)
!5030 = !DILocalVariable(name: "len", scope: !5024, file: !2, line: 1198, type: !126)
!5031 = !DILocalVariable(name: "buf", scope: !5024, file: !2, line: 1199, type: !124)
!5032 = !DILocalVariable(name: "s", scope: !5024, file: !2, line: 1199, type: !124)
!5033 = !DILocation(line: 0, scope: !5024)
!5034 = !DILocation(line: 1200, column: 12, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 1200, column: 9)
!5036 = !DILocation(line: 1200, column: 15, scope: !5035)
!5037 = !DILocation(line: 1200, column: 9, scope: !5035)
!5038 = !DILocation(line: 1200, column: 9, scope: !5024)
!5039 = !DILocation(line: 1201, column: 16, scope: !5035)
!5040 = !DILocation(line: 1201, column: 13, scope: !5035)
!5041 = !DILocation(line: 1201, column: 9, scope: !5035)
!5042 = !DILocation(line: 0, scope: !1288, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 1202, column: 15, scope: !5024)
!5044 = !DILocation(line: 1111, column: 40, scope: !1288, inlinedAt: !5043)
!5045 = !DILocation(line: 1111, column: 58, scope: !1288, inlinedAt: !5043)
!5046 = !DILocation(line: 1111, column: 20, scope: !1288, inlinedAt: !5043)
!5047 = !DILocation(line: 1112, column: 9, scope: !1301, inlinedAt: !5043)
!5048 = !DILocation(line: 1112, column: 9, scope: !1288, inlinedAt: !5043)
!5049 = !DILocation(line: 1121, column: 9, scope: !1304, inlinedAt: !5043)
!5050 = !DILocation(line: 1203, column: 9, scope: !5024)
!5051 = !DILocation(line: 1114, column: 48, scope: !1307, inlinedAt: !5043)
!5052 = !DILocation(line: 1115, column: 22, scope: !1307, inlinedAt: !5043)
!5053 = !DILocation(line: 1115, column: 43, scope: !1307, inlinedAt: !5043)
!5054 = !DILocation(line: 1115, column: 19, scope: !1307, inlinedAt: !5043)
!5055 = !DILocation(line: 1116, column: 34, scope: !1307, inlinedAt: !5043)
!5056 = !DILocation(line: 1116, column: 56, scope: !1307, inlinedAt: !5043)
!5057 = !DILocation(line: 1117, column: 50, scope: !1307, inlinedAt: !5043)
!5058 = !DILocation(line: 1117, column: 68, scope: !1307, inlinedAt: !5043)
!5059 = !DILocation(line: 1206, column: 9, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 1206, column: 9)
!5061 = !DILocation(line: 1206, column: 9, scope: !5024)
!5062 = !DILocation(line: 1208, column: 39, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5060, file: !2, line: 1207, column: 5)
!5064 = !DILocation(line: 1208, column: 51, scope: !5063)
!5065 = !DILocation(line: 1208, column: 14, scope: !5063)
!5066 = !DILocation(line: 1208, column: 11, scope: !5063)
!5067 = !DILocation(line: 1209, column: 43, scope: !5063)
!5068 = !DILocation(line: 1209, column: 57, scope: !5063)
!5069 = !DILocation(line: 1209, column: 14, scope: !5063)
!5070 = !DILocation(line: 1209, column: 11, scope: !5063)
!5071 = !DILocation(line: 1210, column: 48, scope: !5063)
!5072 = !DILocation(line: 1210, column: 67, scope: !5063)
!5073 = !DILocation(line: 1210, column: 14, scope: !5063)
!5074 = !DILocation(line: 1210, column: 11, scope: !5063)
!5075 = !DILocation(line: 1211, column: 5, scope: !5063)
!5076 = !DILocation(line: 1213, column: 37, scope: !5024)
!5077 = !DILocation(line: 1213, column: 10, scope: !5024)
!5078 = !DILocation(line: 1213, column: 7, scope: !5024)
!5079 = !DILocation(line: 1214, column: 36, scope: !5024)
!5080 = !DILocation(line: 1214, column: 10, scope: !5024)
!5081 = !DILocation(line: 1214, column: 7, scope: !5024)
!5082 = !DILocation(line: 1215, column: 46, scope: !5024)
!5083 = !DILocation(line: 1216, column: 22, scope: !5024)
!5084 = !DILocation(line: 1216, column: 54, scope: !5024)
!5085 = !DILocation(line: 1215, column: 10, scope: !5024)
!5086 = !DILocation(line: 1215, column: 7, scope: !5024)
!5087 = !DILocation(line: 1217, column: 45, scope: !5024)
!5088 = !DILocation(line: 1217, column: 53, scope: !5024)
!5089 = !DILocation(line: 1217, column: 71, scope: !5024)
!5090 = !DILocation(line: 1217, column: 10, scope: !5024)
!5091 = !DILocation(line: 1217, column: 7, scope: !5024)
!5092 = !DILocation(line: 1218, column: 66, scope: !5024)
!5093 = !DILocation(line: 1218, column: 32, scope: !5024)
!5094 = !DILocation(line: 1218, column: 10, scope: !5024)
!5095 = !DILocation(line: 1218, column: 7, scope: !5024)
!5096 = !DILocation(line: 1219, column: 46, scope: !5024)
!5097 = !DILocation(line: 1219, column: 10, scope: !5024)
!5098 = !DILocation(line: 1219, column: 7, scope: !5024)
!5099 = !DILocation(line: 1220, column: 44, scope: !5024)
!5100 = !DILocation(line: 1220, column: 10, scope: !5024)
!5101 = !DILocation(line: 1220, column: 7, scope: !5024)
!5102 = !DILocation(line: 1221, column: 20, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 1221, column: 9)
!5104 = !DILocation(line: 1221, column: 9, scope: !5103)
!5105 = !DILocation(line: 1221, column: 9, scope: !5024)
!5106 = !DILocation(line: 1222, column: 58, scope: !5103)
!5107 = !DILocation(line: 1222, column: 47, scope: !5103)
!5108 = !DILocation(line: 1222, column: 79, scope: !5103)
!5109 = !DILocation(line: 1222, column: 68, scope: !5103)
!5110 = !DILocation(line: 1222, column: 14, scope: !5103)
!5111 = !DILocation(line: 1222, column: 11, scope: !5103)
!5112 = !DILocation(line: 1222, column: 9, scope: !5103)
!5113 = !DILocation(line: 1223, column: 50, scope: !5024)
!5114 = !DILocation(line: 1223, column: 10, scope: !5024)
!5115 = !DILocation(line: 1223, column: 7, scope: !5024)
!5116 = !DILocation(line: 1224, column: 49, scope: !5024)
!5117 = !DILocation(line: 1224, column: 10, scope: !5024)
!5118 = !DILocation(line: 1224, column: 7, scope: !5024)
!5119 = !DILocation(line: 1225, column: 50, scope: !5024)
!5120 = !DILocation(line: 1225, column: 10, scope: !5024)
!5121 = !DILocation(line: 1225, column: 7, scope: !5024)
!5122 = !DILocation(line: 1226, column: 48, scope: !5024)
!5123 = !DILocation(line: 1226, column: 10, scope: !5024)
!5124 = !DILocation(line: 1226, column: 7, scope: !5024)
!5125 = !DILocation(line: 1227, column: 47, scope: !5024)
!5126 = !DILocation(line: 1227, column: 10, scope: !5024)
!5127 = !DILocation(line: 1227, column: 7, scope: !5024)
!5128 = !DILocation(line: 1228, column: 36, scope: !5024)
!5129 = !DILocation(line: 1228, column: 10, scope: !5024)
!5130 = !DILocation(line: 1228, column: 7, scope: !5024)
!5131 = !DILocation(line: 1229, column: 52, scope: !5024)
!5132 = !DILocation(line: 1229, column: 41, scope: !5024)
!5133 = !DILocation(line: 1229, column: 72, scope: !5024)
!5134 = !DILocation(line: 1229, column: 10, scope: !5024)
!5135 = !DILocation(line: 1229, column: 7, scope: !5024)
!5136 = !DILocation(line: 1230, column: 51, scope: !5024)
!5137 = !DILocation(line: 1230, column: 10, scope: !5024)
!5138 = !DILocation(line: 1230, column: 7, scope: !5024)
!5139 = !DILocation(line: 1231, column: 57, scope: !5024)
!5140 = !DILocation(line: 1231, column: 10, scope: !5024)
!5141 = !DILocation(line: 1231, column: 7, scope: !5024)
!5142 = !DILocation(line: 1232, column: 40, scope: !5024)
!5143 = !DILocation(line: 1232, column: 10, scope: !5024)
!5144 = !DILocation(line: 1232, column: 7, scope: !5024)
!5145 = !DILocation(line: 1233, column: 47, scope: !5024)
!5146 = !DILocation(line: 1233, column: 10, scope: !5024)
!5147 = !DILocation(line: 1233, column: 7, scope: !5024)
!5148 = !DILocation(line: 1234, column: 12, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 1234, column: 9)
!5150 = !DILocation(line: 1234, column: 9, scope: !5149)
!5151 = !DILocation(line: 1234, column: 9, scope: !5024)
!5152 = !DILocation(line: 1235, column: 14, scope: !5149)
!5153 = !DILocation(line: 1235, column: 11, scope: !5149)
!5154 = !DILocation(line: 1235, column: 9, scope: !5149)
!5155 = !DILocation(line: 1236, column: 12, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 1236, column: 9)
!5157 = !DILocation(line: 1236, column: 9, scope: !5156)
!5158 = !DILocation(line: 1236, column: 9, scope: !5024)
!5159 = !DILocation(line: 1237, column: 14, scope: !5156)
!5160 = !DILocation(line: 1237, column: 11, scope: !5156)
!5161 = !DILocation(line: 1237, column: 9, scope: !5156)
!5162 = !DILocation(line: 1238, column: 12, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 1238, column: 9)
!5164 = !DILocation(line: 1238, column: 9, scope: !5163)
!5165 = !DILocation(line: 1238, column: 9, scope: !5024)
!5166 = !DILocation(line: 1239, column: 14, scope: !5163)
!5167 = !DILocation(line: 1239, column: 11, scope: !5163)
!5168 = !DILocation(line: 1239, column: 9, scope: !5163)
!5169 = !DILocation(line: 1240, column: 43, scope: !5024)
!5170 = !DILocation(line: 1240, column: 10, scope: !5024)
!5171 = !DILocation(line: 1240, column: 7, scope: !5024)
!5172 = !DILocation(line: 1241, column: 49, scope: !5024)
!5173 = !DILocation(line: 1241, column: 10, scope: !5024)
!5174 = !DILocation(line: 1241, column: 7, scope: !5024)
!5175 = !DILocation(line: 1242, column: 43, scope: !5024)
!5176 = !DILocation(line: 1242, column: 40, scope: !5024)
!5177 = !DILocation(line: 1242, column: 61, scope: !5024)
!5178 = !DILocation(line: 1242, column: 58, scope: !5024)
!5179 = !DILocation(line: 1242, column: 10, scope: !5024)
!5180 = !DILocation(line: 1242, column: 7, scope: !5024)
!5181 = !DILocation(line: 1244, column: 50, scope: !5024)
!5182 = !DILocation(line: 1244, column: 10, scope: !5024)
!5183 = !DILocation(line: 1244, column: 7, scope: !5024)
!5184 = !DILocation(line: 1246, column: 40, scope: !5024)
!5185 = !DILocation(line: 1246, column: 10, scope: !5024)
!5186 = !DILocation(line: 1246, column: 7, scope: !5024)
!5187 = !DILocation(line: 1247, column: 12, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 1247, column: 9)
!5189 = !DILocation(line: 1247, column: 9, scope: !5188)
!5190 = !DILocation(line: 1247, column: 9, scope: !5024)
!5191 = !DILocation(line: 1250, column: 26, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5188, file: !2, line: 1248, column: 5)
!5193 = !DILocation(line: 1250, column: 47, scope: !5192)
!5194 = !DILocation(line: 1250, column: 69, scope: !5192)
!5195 = !DILocation(line: 1251, column: 34, scope: !5192)
!5196 = !DILocation(line: 1251, column: 63, scope: !5192)
!5197 = !DILocation(line: 1249, column: 14, scope: !5192)
!5198 = !DILocation(line: 1249, column: 11, scope: !5192)
!5199 = !DILocation(line: 1252, column: 5, scope: !5192)
!5200 = !DILocation(line: 1253, column: 48, scope: !5024)
!5201 = !DILocation(line: 1253, column: 37, scope: !5024)
!5202 = !DILocation(line: 1253, column: 10, scope: !5024)
!5203 = !DILocation(line: 1253, column: 7, scope: !5024)
!5204 = !DILocation(line: 1256, column: 22, scope: !5024)
!5205 = !DILocation(line: 1256, column: 39, scope: !5024)
!5206 = !DILocation(line: 1256, column: 56, scope: !5024)
!5207 = !DILocation(line: 1256, column: 81, scope: !5024)
!5208 = !DILocation(line: 1255, column: 10, scope: !5024)
!5209 = !DILocation(line: 1255, column: 7, scope: !5024)
!5210 = !DILocation(line: 1258, column: 15, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 1258, column: 9)
!5212 = !DILocation(line: 1258, column: 9, scope: !5211)
!5213 = !DILocation(line: 1258, column: 25, scope: !5211)
!5214 = !DILocation(line: 1258, column: 34, scope: !5211)
!5215 = !DILocation(line: 1258, column: 28, scope: !5211)
!5216 = !DILocation(line: 1258, column: 9, scope: !5024)
!5217 = !DILocation(line: 1259, column: 52, scope: !5211)
!5218 = !DILocation(line: 1259, column: 14, scope: !5211)
!5219 = !DILocation(line: 1259, column: 11, scope: !5211)
!5220 = !DILocation(line: 1259, column: 9, scope: !5211)
!5221 = !DILocation(line: 1261, column: 48, scope: !5024)
!5222 = !DILocation(line: 1261, column: 60, scope: !5024)
!5223 = !DILocation(line: 1261, column: 42, scope: !5024)
!5224 = !DILocation(line: 1262, column: 40, scope: !5024)
!5225 = !DILocation(line: 1262, column: 34, scope: !5024)
!5226 = !DILocation(line: 1262, column: 70, scope: !5024)
!5227 = !DILocation(line: 1262, column: 97, scope: !5024)
!5228 = !DILocation(line: 1262, column: 88, scope: !5024)
!5229 = !DILocation(line: 1262, column: 64, scope: !5024)
!5230 = !DILocation(line: 1263, column: 52, scope: !5024)
!5231 = !DILocation(line: 1263, column: 34, scope: !5024)
!5232 = !DILocation(line: 1263, column: 90, scope: !5024)
!5233 = !DILocation(line: 1261, column: 10, scope: !5024)
!5234 = !DILocation(line: 1261, column: 7, scope: !5024)
!5235 = !DILocation(line: 1264, column: 15, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 1264, column: 9)
!5237 = !DILocation(line: 1264, column: 42, scope: !5236)
!5238 = !DILocation(line: 1267, column: 49, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !2, line: 1266, column: 13)
!5240 = distinct !DILexicalBlock(scope: !5236, file: !2, line: 1265, column: 5)
!5241 = !DILocation(line: 1267, column: 43, scope: !5239)
!5242 = !DILocation(line: 1267, column: 18, scope: !5239)
!5243 = !DILocation(line: 1267, column: 13, scope: !5239)
!5244 = !DILocation(line: 1270, column: 33, scope: !5239)
!5245 = !DILocation(line: 1270, column: 50, scope: !5239)
!5246 = !DILocation(line: 1270, column: 44, scope: !5239)
!5247 = !DILocation(line: 1269, column: 18, scope: !5239)
!5248 = !DILocation(line: 0, scope: !5239)
!5249 = !DILocation(line: 1272, column: 29, scope: !5240)
!5250 = !DILocation(line: 1272, column: 23, scope: !5240)
!5251 = !DILocation(line: 1272, column: 48, scope: !5240)
!5252 = !DILocation(line: 1272, column: 64, scope: !5240)
!5253 = !DILocation(line: 1272, column: 80, scope: !5240)
!5254 = !DILocation(line: 1271, column: 14, scope: !5240)
!5255 = !DILocation(line: 1271, column: 11, scope: !5240)
!5256 = !DILocation(line: 1273, column: 19, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5240, file: !2, line: 1273, column: 13)
!5258 = !DILocation(line: 1273, column: 13, scope: !5257)
!5259 = !DILocation(line: 1273, column: 13, scope: !5240)
!5260 = !DILocation(line: 1275, column: 33, scope: !5257)
!5261 = !DILocation(line: 1275, column: 27, scope: !5257)
!5262 = !DILocation(line: 1275, column: 58, scope: !5257)
!5263 = !DILocation(line: 1275, column: 52, scope: !5257)
!5264 = !DILocation(line: 1274, column: 18, scope: !5257)
!5265 = !DILocation(line: 1274, column: 15, scope: !5257)
!5266 = !DILocation(line: 1274, column: 13, scope: !5257)
!5267 = !DILocation(line: 0, scope: !5240)
!5268 = !DILocation(line: 1276, column: 19, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5240, file: !2, line: 1276, column: 13)
!5270 = !DILocation(line: 1276, column: 13, scope: !5269)
!5271 = !DILocation(line: 1276, column: 13, scope: !5240)
!5272 = !DILocation(line: 1279, column: 33, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5269, file: !2, line: 1277, column: 9)
!5274 = !DILocation(line: 1278, column: 18, scope: !5273)
!5275 = !DILocation(line: 1278, column: 15, scope: !5273)
!5276 = !DILocation(line: 1280, column: 23, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5273, file: !2, line: 1280, column: 17)
!5278 = !DILocation(line: 1280, column: 35, scope: !5277)
!5279 = !DILocation(line: 1280, column: 17, scope: !5273)
!5280 = !DILocation(line: 1281, column: 57, scope: !5277)
!5281 = !DILocation(line: 1281, column: 51, scope: !5277)
!5282 = !DILocation(line: 1281, column: 22, scope: !5277)
!5283 = !DILocation(line: 1281, column: 19, scope: !5277)
!5284 = !DILocation(line: 1281, column: 17, scope: !5277)
!5285 = !DILocation(line: 1285, column: 42, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5236, file: !2, line: 1284, column: 14)
!5287 = !DILocation(line: 1285, column: 14, scope: !5286)
!5288 = !DILocation(line: 1285, column: 11, scope: !5286)
!5289 = !DILocation(line: 1285, column: 9, scope: !5286)
!5290 = !DILocation(line: 1286, column: 17, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 1286, column: 9)
!5292 = !DILocation(line: 1286, column: 29, scope: !5291)
!5293 = !DILocation(line: 1286, column: 44, scope: !5291)
!5294 = !DILocation(line: 1286, column: 53, scope: !5291)
!5295 = !DILocation(line: 1286, column: 67, scope: !5291)
!5296 = !DILocation(line: 1286, column: 9, scope: !5024)
!5297 = !DILocation(line: 1288, column: 50, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5291, file: !2, line: 1287, column: 5)
!5299 = !DILocation(line: 1288, column: 44, scope: !5298)
!5300 = !DILocation(line: 1288, column: 14, scope: !5298)
!5301 = !DILocation(line: 1288, column: 11, scope: !5298)
!5302 = !DILocation(line: 1289, column: 16, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5298, file: !2, line: 1289, column: 13)
!5304 = !DILocation(line: 1289, column: 13, scope: !5303)
!5305 = !DILocation(line: 1289, column: 25, scope: !5303)
!5306 = !DILocation(line: 1289, column: 35, scope: !5303)
!5307 = !DILocation(line: 1289, column: 29, scope: !5303)
!5308 = !DILocation(line: 1289, column: 13, scope: !5298)
!5309 = !DILocation(line: 1290, column: 54, scope: !5303)
!5310 = !DILocation(line: 1290, column: 48, scope: !5303)
!5311 = !DILocation(line: 1290, column: 18, scope: !5303)
!5312 = !DILocation(line: 1290, column: 15, scope: !5303)
!5313 = !DILocation(line: 1290, column: 13, scope: !5303)
!5314 = !DILocation(line: 0, scope: !5298)
!5315 = !DILocation(line: 1291, column: 42, scope: !5298)
!5316 = !DILocation(line: 1291, column: 14, scope: !5298)
!5317 = !DILocation(line: 1291, column: 11, scope: !5298)
!5318 = !DILocation(line: 1292, column: 19, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5298, file: !2, line: 1292, column: 13)
!5320 = !DILocation(line: 1292, column: 13, scope: !5319)
!5321 = !DILocation(line: 1292, column: 13, scope: !5298)
!5322 = !DILocation(line: 1293, column: 45, scope: !5319)
!5323 = !DILocation(line: 1293, column: 39, scope: !5319)
!5324 = !DILocation(line: 1293, column: 18, scope: !5319)
!5325 = !DILocation(line: 1293, column: 15, scope: !5319)
!5326 = !DILocation(line: 1293, column: 13, scope: !5319)
!5327 = !DILocation(line: 1294, column: 19, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5298, file: !2, line: 1294, column: 13)
!5329 = !DILocation(line: 1294, column: 13, scope: !5328)
!5330 = !DILocation(line: 1294, column: 13, scope: !5298)
!5331 = !DILocation(line: 1295, column: 18, scope: !5328)
!5332 = !DILocation(line: 1295, column: 15, scope: !5328)
!5333 = !DILocation(line: 1295, column: 13, scope: !5328)
!5334 = !DILocation(line: 1296, column: 24, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5328, file: !2, line: 1296, column: 18)
!5336 = !DILocation(line: 1296, column: 18, scope: !5335)
!5337 = !DILocation(line: 1296, column: 18, scope: !5328)
!5338 = !DILocation(line: 1297, column: 18, scope: !5335)
!5339 = !DILocation(line: 1297, column: 15, scope: !5335)
!5340 = !DILocation(line: 1297, column: 13, scope: !5335)
!5341 = !DILocation(line: 1300, column: 15, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 1300, column: 9)
!5343 = !DILocation(line: 1300, column: 9, scope: !5342)
!5344 = !DILocation(line: 1300, column: 9, scope: !5024)
!5345 = !DILocation(line: 1301, column: 63, scope: !5342)
!5346 = !DILocation(line: 1301, column: 41, scope: !5342)
!5347 = !DILocation(line: 1301, column: 14, scope: !5342)
!5348 = !DILocation(line: 1301, column: 9, scope: !5342)
!5349 = !DILocation(line: 1303, column: 1, scope: !5024)
!5350 = !DISubprogram(name: "sprintf", scope: !4607, file: !4607, line: 358, type: !5351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!126, !4603, !4604, null}
!5353 = !DISubprogram(name: "strcpy", scope: !742, file: !742, line: 141, type: !4601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5354 = !DISubprogram(name: "strtol", scope: !747, file: !747, line: 177, type: !5355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!130, !4604, !5357, !126}
!5357 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5358)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!5359 = !DISubprogram(name: "strtod", scope: !747, file: !747, line: 118, type: !5360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!1972, !4604, !5357}
!5362 = !DISubprogram(name: "fprintf", scope: !4607, file: !4607, line: 350, type: !5363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5363 = !DISubroutineType(types: !5364)
!5364 = !{!126, !5020, !4604, null}
!5365 = !DISubprogram(name: "vfprintf", scope: !4607, file: !4607, line: 365, type: !5366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5366 = !DISubroutineType(types: !5367)
!5367 = !{!126, !5020, !4604, !819}
