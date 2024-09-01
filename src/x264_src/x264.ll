; ModuleID = 'x264_src/x264.c'
source_filename = "x264_src/x264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.x264_level_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_pulldown_t = type { i32, [24 x i8], float }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.cli_input_opt_t = type { ptr, ptr, ptr, i32 }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_opt_t = type { i32, i32, ptr, ptr, ptr, ptr, double, i32 }

@seek_val = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@input = dso_local local_unnamed_addr global %struct.cli_input_t zeroinitializer, align 8, !dbg !17
@optind = external local_unnamed_addr global i32, align 4
@short_options = internal global [30 x i8] c"8A:B:b:f:hI:i:m:o:p:q:r:t:Vvw\00", align 16, !dbg !404
@long_options = internal global [142 x %struct.option] [%struct.option { ptr @.str.28, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.29, i32 0, ptr null, i32 263 }, %struct.option { ptr @.str.30, i32 0, ptr null, i32 268 }, %struct.option { ptr @.str.31, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.32, i32 1, ptr null, i32 278 }, %struct.option { ptr @.str.33, i32 1, ptr null, i32 264 }, %struct.option { ptr @.str.34, i32 1, ptr null, i32 265 }, %struct.option { ptr @.str.35, i32 1, ptr null, i32 266 }, %struct.option { ptr @.str.36, i32 0, ptr null, i32 267 }, %struct.option { ptr @.str.37, i32 1, ptr null, i32 66 }, %struct.option { ptr @.str.38, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.39, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.40, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.41, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.42, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.43, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.44, i32 1, ptr null, i32 73 }, %struct.option { ptr @.str.45, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.46, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.47, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.49, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.50, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.51, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 113 }, %struct.option { ptr @.str.60, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.61, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.62, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.63, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.64, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.65, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.66, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.68, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 269 }, %struct.option { ptr @.str.70, i32 1, ptr null, i32 256 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 257 }, %struct.option { ptr @.str.11, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.72, i32 1, ptr null, i32 270 }, %struct.option { ptr @.str.73, i32 1, ptr null, i32 271 }, %struct.option { ptr @.str.74, i32 1, ptr null, i32 270 }, %struct.option { ptr @.str.75, i32 1, ptr null, i32 271 }, %struct.option { ptr @.str.76, i32 1, ptr null, i32 272 }, %struct.option { ptr @.str.77, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.78, i32 1, ptr null, i32 65 }, %struct.option { ptr @.str.79, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.80, i32 0, ptr null, i32 119 }, %struct.option { ptr @.str.81, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.82, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.83, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.84, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.85, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.86, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.87, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.88, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.89, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.90, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.91, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.92, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.93, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.94, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.95, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.96, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.97, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.98, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.99, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.100, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.101, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.102, i32 1, ptr null, i32 48 }, %struct.option { ptr @.str.103, i32 1, ptr null, i32 48 }, %struct.option { ptr @.str.104, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.105, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.106, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.107, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.108, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.109, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.110, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.111, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.112, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.113, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.114, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.115, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.116, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.117, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.118, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.119, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.120, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.121, i32 1, ptr null, i32 258 }, %struct.option { ptr @.str.122, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.123, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.124, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.125, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.126, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.127, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.128, i32 0, ptr null, i32 259 }, %struct.option { ptr @.str.129, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.130, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.131, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.132, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.133, i32 0, ptr null, i32 260 }, %struct.option { ptr @.str.134, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.135, i32 0, ptr null, i32 261 }, %struct.option { ptr @.str.136, i32 0, ptr null, i32 262 }, %struct.option { ptr @.str.137, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.138, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.139, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.140, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.141, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.142, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.143, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.144, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.145, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.146, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.147, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.148, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.149, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.150, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.151, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.152, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.153, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.154, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.155, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.156, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.157, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.158, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.159, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.160, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.161, i32 1, ptr null, i32 274 }, %struct.option { ptr @.str.162, i32 1, ptr null, i32 275 }, %struct.option { ptr @.str.163, i32 1, ptr null, i32 276 }, %struct.option { ptr @.str.164, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.165, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.166, i32 1, ptr null, i32 277 }, %struct.option { ptr @.str.167, i32 0, ptr null, i32 0 }, %struct.option zeroinitializer], align 16, !dbg !714
@optarg = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"placebo\00", align 1, !dbg !283
@tga_dump_rate = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !293
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"x264 [error]: can't open qpfile `%s'\0A\00", align 1, !dbg !298
@.str.5 = private unnamed_addr constant [57 x i8] c"x264 [warning]: not compiled with visualization support\0A\00", align 1, !dbg !308
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1, !dbg !313
@.str.7 = private unnamed_addr constant [31 x i8] c"x264 [error]: can't open `%s'\0A\00", align 1, !dbg !315
@.str.8 = private unnamed_addr constant [41 x i8] c"x264 [error]: invalid argument: %s = %s\0A\00", align 1, !dbg !320
@.str.9 = private unnamed_addr constant [66 x i8] c"x264 [error]: No %s file. Run x264 --help for a list of options.\0A\00", align 1, !dbg !325
@.str.10 = private unnamed_addr constant [6 x i8] c"input\00", align 1, !dbg !330
@.str.11 = private unnamed_addr constant [7 x i8] c"output\00", align 1, !dbg !335
@output = internal unnamed_addr global %struct.cli_output_t zeroinitializer, align 8, !dbg !1373
@.str.12 = private unnamed_addr constant [47 x i8] c"x264 [error]: could not open output file `%s'\0A\00", align 1, !dbg !340
@.str.13 = private unnamed_addr constant [46 x i8] c"x264 [error]: could not open input file `%s'\0A\00", align 1, !dbg !345
@.str.14 = private unnamed_addr constant [45 x i8] c"%s [info]: %dx%d%c %d:%d @ %d/%d fps (%cfr)\0A\00", align 1, !dbg !350
@.str.15 = private unnamed_addr constant [52 x i8] c"x264 [error]: --fps + --tcfile-in is incompatible.\0A\00", align 1, !dbg !355
@timecode_input = external local_unnamed_addr global %struct.cli_input_t, align 8
@.str.16 = private unnamed_addr constant [37 x i8] c"x264 [error]: timecode input failed\0A\00", align 1, !dbg !360
@.str.17 = private unnamed_addr constant [57 x i8] c"x264 [error]: --timebase is incompatible with cfr input\0A\00", align 1, !dbg !365
@.str.18 = private unnamed_addr constant [149 x i8] c"x264 [warning]: input appears to be interlaced, enabling %cff interlaced mode.\0A                If you want otherwise, use --no-interlaced or --%cff\0A\00", align 1, !dbg !367
@.str.19 = private unnamed_addr constant [8 x i8] c"%lu/%lu\00", align 1, !dbg !372
@.str.20 = private unnamed_addr constant [47 x i8] c"x264 [error]: invalid argument: timebase = %s\0A\00", align 1, !dbg !374
@.str.21 = private unnamed_addr constant [60 x i8] c"x264 [error]: timebase you specified exceeds H.264 maximum\0A\00", align 1, !dbg !376
@x264_levels = external local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"auto\00", align 1, !dbg !381
@.str.23 = private unnamed_addr constant [4 x i8] c"yuv\00", align 1, !dbg !386
@.str.24 = private unnamed_addr constant [4 x i8] c"y4m\00", align 1, !dbg !389
@.str.25 = private unnamed_addr constant [4 x i8] c"raw\00", align 1, !dbg !395
@.str.26 = private unnamed_addr constant [4 x i8] c"mkv\00", align 1, !dbg !397
@.str.27 = private unnamed_addr constant [4 x i8] c"flv\00", align 1, !dbg !399
@.str.28 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !409
@.str.29 = private unnamed_addr constant [9 x i8] c"longhelp\00", align 1, !dbg !411
@.str.30 = private unnamed_addr constant [9 x i8] c"fullhelp\00", align 1, !dbg !416
@.str.31 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !418
@.str.32 = private unnamed_addr constant [8 x i8] c"dumpyuv\00", align 1, !dbg !420
@.str.33 = private unnamed_addr constant [8 x i8] c"profile\00", align 1, !dbg !422
@.str.34 = private unnamed_addr constant [7 x i8] c"preset\00", align 1, !dbg !424
@.str.35 = private unnamed_addr constant [5 x i8] c"tune\00", align 1, !dbg !426
@.str.36 = private unnamed_addr constant [15 x i8] c"slow-firstpass\00", align 1, !dbg !428
@.str.37 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1, !dbg !433
@.str.38 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1, !dbg !435
@.str.39 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1, !dbg !437
@.str.40 = private unnamed_addr constant [11 x i8] c"no-b-adapt\00", align 1, !dbg !439
@.str.41 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1, !dbg !444
@.str.42 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1, !dbg !446
@.str.43 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1, !dbg !451
@.str.44 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1, !dbg !453
@.str.45 = private unnamed_addr constant [14 x i8] c"intra-refresh\00", align 1, !dbg !455
@.str.46 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1, !dbg !460
@.str.47 = private unnamed_addr constant [12 x i8] c"no-scenecut\00", align 1, !dbg !462
@.str.48 = private unnamed_addr constant [3 x i8] c"nf\00", align 1, !dbg !467
@.str.49 = private unnamed_addr constant [11 x i8] c"no-deblock\00", align 1, !dbg !469
@.str.50 = private unnamed_addr constant [7 x i8] c"filter\00", align 1, !dbg !471
@.str.51 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1, !dbg !473
@.str.52 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1, !dbg !475
@.str.53 = private unnamed_addr constant [4 x i8] c"tff\00", align 1, !dbg !477
@.str.54 = private unnamed_addr constant [4 x i8] c"bff\00", align 1, !dbg !479
@.str.55 = private unnamed_addr constant [14 x i8] c"no-interlaced\00", align 1, !dbg !481
@.str.56 = private unnamed_addr constant [18 x i8] c"constrained-intra\00", align 1, !dbg !483
@.str.57 = private unnamed_addr constant [6 x i8] c"cabac\00", align 1, !dbg !488
@.str.58 = private unnamed_addr constant [9 x i8] c"no-cabac\00", align 1, !dbg !490
@.str.59 = private unnamed_addr constant [3 x i8] c"qp\00", align 1, !dbg !492
@.str.60 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1, !dbg !494
@.str.61 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1, !dbg !496
@.str.62 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1, !dbg !498
@.str.63 = private unnamed_addr constant [4 x i8] c"crf\00", align 1, !dbg !500
@.str.64 = private unnamed_addr constant [13 x i8] c"rc-lookahead\00", align 1, !dbg !502
@.str.65 = private unnamed_addr constant [4 x i8] c"ref\00", align 1, !dbg !504
@.str.66 = private unnamed_addr constant [4 x i8] c"asm\00", align 1, !dbg !506
@.str.67 = private unnamed_addr constant [7 x i8] c"no-asm\00", align 1, !dbg !508
@.str.68 = private unnamed_addr constant [4 x i8] c"sar\00", align 1, !dbg !510
@.str.69 = private unnamed_addr constant [4 x i8] c"fps\00", align 1, !dbg !512
@.str.70 = private unnamed_addr constant [7 x i8] c"frames\00", align 1, !dbg !514
@.str.71 = private unnamed_addr constant [5 x i8] c"seek\00", align 1, !dbg !516
@.str.72 = private unnamed_addr constant [6 x i8] c"muxer\00", align 1, !dbg !518
@.str.73 = private unnamed_addr constant [8 x i8] c"demuxer\00", align 1, !dbg !520
@.str.74 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1, !dbg !522
@.str.75 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1, !dbg !524
@.str.76 = private unnamed_addr constant [6 x i8] c"index\00", align 1, !dbg !526
@.str.77 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1, !dbg !528
@.str.78 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1, !dbg !530
@.str.79 = private unnamed_addr constant [7 x i8] c"direct\00", align 1, !dbg !532
@.str.80 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1, !dbg !534
@.str.81 = private unnamed_addr constant [11 x i8] c"no-weightb\00", align 1, !dbg !536
@.str.82 = private unnamed_addr constant [8 x i8] c"weightp\00", align 1, !dbg !538
@.str.83 = private unnamed_addr constant [3 x i8] c"me\00", align 1, !dbg !540
@.str.84 = private unnamed_addr constant [8 x i8] c"merange\00", align 1, !dbg !542
@.str.85 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1, !dbg !544
@.str.86 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1, !dbg !546
@.str.87 = private unnamed_addr constant [6 x i8] c"subme\00", align 1, !dbg !548
@.str.88 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1, !dbg !550
@.str.89 = private unnamed_addr constant [7 x i8] c"no-psy\00", align 1, !dbg !552
@.str.90 = private unnamed_addr constant [4 x i8] c"psy\00", align 1, !dbg !554
@.str.91 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1, !dbg !556
@.str.92 = private unnamed_addr constant [14 x i8] c"no-mixed-refs\00", align 1, !dbg !558
@.str.93 = private unnamed_addr constant [13 x i8] c"no-chroma-me\00", align 1, !dbg !560
@.str.94 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1, !dbg !562
@.str.95 = private unnamed_addr constant [10 x i8] c"no-8x8dct\00", align 1, !dbg !564
@.str.96 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1, !dbg !566
@.str.97 = private unnamed_addr constant [11 x i8] c"fast-pskip\00", align 1, !dbg !568
@.str.98 = private unnamed_addr constant [14 x i8] c"no-fast-pskip\00", align 1, !dbg !570
@.str.99 = private unnamed_addr constant [16 x i8] c"no-dct-decimate\00", align 1, !dbg !572
@.str.100 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1, !dbg !575
@.str.101 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1, !dbg !577
@.str.102 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1, !dbg !579
@.str.103 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1, !dbg !581
@.str.104 = private unnamed_addr constant [6 x i8] c"level\00", align 1, !dbg !583
@.str.105 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1, !dbg !585
@.str.106 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1, !dbg !587
@.str.107 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1, !dbg !589
@.str.108 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1, !dbg !591
@.str.109 = private unnamed_addr constant [8 x i8] c"crf-max\00", align 1, !dbg !593
@.str.110 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1, !dbg !595
@.str.111 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1, !dbg !597
@.str.112 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1, !dbg !599
@.str.113 = private unnamed_addr constant [5 x i8] c"pass\00", align 1, !dbg !604
@.str.114 = private unnamed_addr constant [6 x i8] c"stats\00", align 1, !dbg !606
@.str.115 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1, !dbg !608
@.str.116 = private unnamed_addr constant [7 x i8] c"mbtree\00", align 1, !dbg !610
@.str.117 = private unnamed_addr constant [10 x i8] c"no-mbtree\00", align 1, !dbg !612
@.str.118 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1, !dbg !614
@.str.119 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1, !dbg !616
@.str.120 = private unnamed_addr constant [6 x i8] c"zones\00", align 1, !dbg !618
@.str.121 = private unnamed_addr constant [7 x i8] c"qpfile\00", align 1, !dbg !620
@.str.122 = private unnamed_addr constant [8 x i8] c"threads\00", align 1, !dbg !622
@.str.123 = private unnamed_addr constant [15 x i8] c"sliced-threads\00", align 1, !dbg !624
@.str.124 = private unnamed_addr constant [18 x i8] c"no-sliced-threads\00", align 1, !dbg !626
@.str.125 = private unnamed_addr constant [15 x i8] c"slice-max-size\00", align 1, !dbg !628
@.str.126 = private unnamed_addr constant [14 x i8] c"slice-max-mbs\00", align 1, !dbg !630
@.str.127 = private unnamed_addr constant [7 x i8] c"slices\00", align 1, !dbg !632
@.str.128 = private unnamed_addr constant [13 x i8] c"thread-input\00", align 1, !dbg !634
@.str.129 = private unnamed_addr constant [15 x i8] c"sync-lookahead\00", align 1, !dbg !636
@.str.130 = private unnamed_addr constant [18 x i8] c"non-deterministic\00", align 1, !dbg !638
@.str.131 = private unnamed_addr constant [5 x i8] c"psnr\00", align 1, !dbg !640
@.str.132 = private unnamed_addr constant [5 x i8] c"ssim\00", align 1, !dbg !642
@.str.133 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1, !dbg !644
@.str.134 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !646
@.str.135 = private unnamed_addr constant [12 x i8] c"no-progress\00", align 1, !dbg !648
@.str.136 = private unnamed_addr constant [10 x i8] c"visualize\00", align 1, !dbg !650
@.str.137 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1, !dbg !652
@.str.138 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1, !dbg !654
@.str.139 = private unnamed_addr constant [4 x i8] c"aud\00", align 1, !dbg !656
@.str.140 = private unnamed_addr constant [3 x i8] c"nr\00", align 1, !dbg !658
@.str.141 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1, !dbg !660
@.str.142 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1, !dbg !662
@.str.143 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1, !dbg !664
@.str.144 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1, !dbg !666
@.str.145 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1, !dbg !668
@.str.146 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1, !dbg !670
@.str.147 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1, !dbg !672
@.str.148 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1, !dbg !674
@.str.149 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1, !dbg !676
@.str.150 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1, !dbg !678
@.str.151 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1, !dbg !680
@.str.152 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1, !dbg !682
@.str.153 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1, !dbg !684
@.str.154 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1, !dbg !686
@.str.155 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1, !dbg !688
@.str.156 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1, !dbg !690
@.str.157 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1, !dbg !692
@.str.158 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1, !dbg !694
@.str.159 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1, !dbg !696
@.str.160 = private unnamed_addr constant [10 x i8] c"force-cfr\00", align 1, !dbg !698
@.str.161 = private unnamed_addr constant [10 x i8] c"tcfile-in\00", align 1, !dbg !700
@.str.162 = private unnamed_addr constant [11 x i8] c"tcfile-out\00", align 1, !dbg !702
@.str.163 = private unnamed_addr constant [9 x i8] c"timebase\00", align 1, !dbg !704
@.str.164 = private unnamed_addr constant [11 x i8] c"pic-struct\00", align 1, !dbg !706
@.str.165 = private unnamed_addr constant [8 x i8] c"nal-hrd\00", align 1, !dbg !708
@.str.166 = private unnamed_addr constant [9 x i8] c"pulldown\00", align 1, !dbg !710
@.str.167 = private unnamed_addr constant [16 x i8] c"fake-interlaced\00", align 1, !dbg !712
@.str.168 = private unnamed_addr constant [597 x i8] c"x264 core:%d%s\0ASyntax: x264 [options] -o outfile infile [widthxheight]\0A\0AInfile can be raw YUV 4:2:0 (in which case resolution is required),\0A  or YUV4MPEG 4:2:0 (*.y4m),\0A  or Avisynth if compiled with support (%s).\0A  or libav* formats if compiled with lavf support (%s) or ffms support (%s).\0AOutfile type is selected by filename:\0A .264 -> Raw bytestream\0A .mkv -> Matroska\0A .flv -> Flash Video\0A .mp4 -> MP4 if compiled with GPAC support (%s)\0A\0AOptions:\0A\0A  -h, --help                  List basic options\0A      --longhelp              List more options\0A      --fullhelp              List all options\0A\0A\00", align 1, !dbg !727
@.str.169 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !732
@.str.170 = private unnamed_addr constant [3 x i8] c"no\00", align 1, !dbg !737
@.str.197 = private unnamed_addr constant [53 x i8] c"  -I, --keyint <integer>      Maximum GOP size [%d]\0A\00", align 1, !dbg !840
@.str.200 = private unnamed_addr constant [78 x i8] c"      --scenecut <integer>    How aggressively to insert extra I-frames [%d]\0A\00", align 1, !dbg !855
@.str.202 = private unnamed_addr constant [71 x i8] c"  -b, --bframes <integer>     Number of B-frames between I and P [%d]\0A\00", align 1, !dbg !865
@.str.203 = private unnamed_addr constant [315 x i8] c"      --b-adapt <integer>     Adaptive B-frame decision method [%d]\0A                                  Higher values may lower threading efficiency.\0A                                  - 0: Disabled\0A                                  - 1: Fast\0A                                  - 2: Optimal (slow with high --bframes)\0A\00", align 1, !dbg !870
@.str.204 = private unnamed_addr constant [75 x i8] c"      --b-bias <integer>      Influences how often B-frames are used [%d]\0A\00", align 1, !dbg !875
@.str.205 = private unnamed_addr constant [274 x i8] c"      --b-pyramid <string>    Keep some B-frames as references [%s]\0A                                  - none: Disabled\0A                                  - strict: Strictly hierarchical pyramid\0A                                  - normal: Non-strict (not Blu-ray compatible)\0A\00", align 1, !dbg !880
@x264_b_pyramid_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr null], align 16, !dbg !1267
@.str.207 = private unnamed_addr constant [63 x i8] c"  -r, --ref <integer>         Number of reference frames [%d]\0A\00", align 1, !dbg !887
@.str.209 = private unnamed_addr constant [62 x i8] c"  -f, --deblock <alpha:beta>  Loop filter parameters [%d:%d]\0A\00", align 1, !dbg !897
@.str.222 = private unnamed_addr constant [75 x i8] c"      --crf <float>           Quality-based VBR (0-51, 0=lossless) [%.1f]\0A\00", align 1, !dbg !941
@.str.223 = private unnamed_addr constant [78 x i8] c"      --rc-lookahead <integer> Number of frames for frametype lookahead [%d]\0A\00", align 1, !dbg !943
@.str.224 = private unnamed_addr constant [63 x i8] c"      --vbv-maxrate <integer> Max local bitrate (kbit/s) [%d]\0A\00", align 1, !dbg !945
@.str.225 = private unnamed_addr constant [70 x i8] c"      --vbv-bufsize <integer> Set size of the VBV buffer (kbit) [%d]\0A\00", align 1, !dbg !947
@.str.226 = private unnamed_addr constant [67 x i8] c"      --vbv-init <float>      Initial VBV buffer occupancy [%.1f]\0A\00", align 1, !dbg !952
@.str.228 = private unnamed_addr constant [47 x i8] c"      --qpmin <integer>       Set min QP [%d]\0A\00", align 1, !dbg !959
@.str.229 = private unnamed_addr constant [47 x i8] c"      --qpmax <integer>       Set max QP [%d]\0A\00", align 1, !dbg !961
@.str.230 = private unnamed_addr constant [52 x i8] c"      --qpstep <integer>      Set max QP step [%d]\0A\00", align 1, !dbg !963
@.str.231 = private unnamed_addr constant [75 x i8] c"      --ratetol <float>       Tolerance of ABR ratecontrol and VBV [%.1f]\0A\00", align 1, !dbg !965
@.str.232 = private unnamed_addr constant [64 x i8] c"      --ipratio <float>       QP factor between I and P [%.2f]\0A\00", align 1, !dbg !967
@.str.233 = private unnamed_addr constant [64 x i8] c"      --pbratio <float>       QP factor between P and B [%.2f]\0A\00", align 1, !dbg !970
@.str.234 = private unnamed_addr constant [80 x i8] c"      --chroma-qp-offset <integer>  QP difference between chroma and luma [%d]\0A\00", align 1, !dbg !972
@.str.235 = private unnamed_addr constant [234 x i8] c"      --aq-mode <integer>     AQ method [%d]\0A                                  - 0: Disabled\0A                                  - 1: Variance AQ (complexity mask)\0A                                  - 2: Auto-variance AQ (experimental)\0A\00", align 1, !dbg !974
@.str.236 = private unnamed_addr constant [126 x i8] c"      --aq-strength <float>   Reduces blocking and blurring in flat and\0A                              textured areas. [%.1f]\0A\00", align 1, !dbg !979
@.str.239 = private unnamed_addr constant [64 x i8] c"      --stats <string>        Filename for 2 pass stats [\22%s\22]\0A\00", align 1, !dbg !991
@.str.241 = private unnamed_addr constant [59 x i8] c"      --qcomp <float>         QP curve compression [%.2f]\0A\00", align 1, !dbg !995
@.str.242 = private unnamed_addr constant [91 x i8] c"      --cplxblur <float>      Reduce fluctuations in QP (before curve compression) [%.1f]\0A\00", align 1, !dbg !1000
@.str.243 = private unnamed_addr constant [90 x i8] c"      --qblur <float>         Reduce fluctuations in QP (after curve compression) [%.1f]\0A\00", align 1, !dbg !1005
@.str.249 = private unnamed_addr constant [130 x i8] c"      --direct <string>       Direct MV prediction mode [\22%s\22]\0A                                  - none, spatial, temporal, auto\0A\00", align 1, !dbg !1029
@x264_direct_pred_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.323, ptr @.str.326, ptr @.str.327, ptr @.str.22, ptr null], align 16, !dbg !1273
@.str.251 = private unnamed_addr constant [223 x i8] c"      --weightp <integer>     Weighted prediction for P-frames [%d]\0A                                  - 0: Disabled\0A                                  - 1: Blind offset\0A                                  - 2: Smart analysis\0A\00", align 1, !dbg !1036
@.str.252 = private unnamed_addr constant [77 x i8] c"      --me <string>           Integer pixel motion estimation method [\22%s\22]\0A\00", align 1, !dbg !1041
@x264_motion_est_names = internal unnamed_addr constant [6 x ptr] [ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr null], align 16, !dbg !1285
@.str.255 = private unnamed_addr constant [71 x i8] c"      --merange <integer>     Maximum motion vector search range [%d]\0A\00", align 1, !dbg !1050
@.str.258 = private unnamed_addr constant [81 x i8] c"  -m, --subme <integer>       Subpixel motion estimation and mode decision [%d]\0A\00", align 1, !dbg !1059
@.str.261 = private unnamed_addr constant [223 x i8] c"      --psy-rd                Strength of psychovisual optimization [\22%.1f:%.1f\22]\0A                                  #1: RD (requires subme>=6)\0A                                  #2: Trellis (requires trellis, experimental)\0A\00", align 1, !dbg !1071
@.str.266 = private unnamed_addr constant [274 x i8] c"  -t, --trellis <integer>     Trellis RD quantization. Requires CABAC. [%d]\0A                                  - 0: disabled\0A                                  - 1: enabled only on the final encode of a MB\0A                                  - 2: enabled on all mode decisions\0A\00", align 1, !dbg !1081
@.str.269 = private unnamed_addr constant [52 x i8] c"      --nr <integer>          Noise reduction [%d]\0A\00", align 1, !dbg !1087
@.str.270 = private unnamed_addr constant [89 x i8] c"      --deadzone-inter <int>  Set the size of the inter luma quantization deadzone [%d]\0A\00", align 1, !dbg !1089
@.str.271 = private unnamed_addr constant [89 x i8] c"      --deadzone-intra <int>  Set the size of the intra luma quantization deadzone [%d]\0A\00", align 1, !dbg !1094
@.str.283 = private unnamed_addr constant [122 x i8] c"      --overscan <string>     Specify crop overscan setting [\22%s\22]\0A                                  - undef, show, crop\0A\00", align 1, !dbg !1139
@x264_overscan_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr null], align 16, !dbg !1294
@.str.284 = private unnamed_addr constant [135 x i8] c"      --videoformat <string>  Specify video format [\22%s\22]\0A                                  - component, pal, ntsc, secam, mac, undef\0A\00", align 1, !dbg !1144
@x264_vidformat_names = internal unnamed_addr constant [7 x ptr] [ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.333, ptr null], align 16, !dbg !1306
@.str.285 = private unnamed_addr constant [117 x i8] c"      --fullrange <string>    Specify full range samples setting [\22%s\22]\0A                                  - off, on\0A\00", align 1, !dbg !1149
@x264_fullrange_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.341, ptr @.str.342, ptr null], align 16, !dbg !1313
@.str.286 = private unnamed_addr constant [191 x i8] c"      --colorprim <string>    Specify color primaries [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg\0A                                    smpte170m, smpte240m, film\0A\00", align 1, !dbg !1154
@x264_colorprim_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.169, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr null], align 16, !dbg !1328
@.str.287 = private unnamed_addr constant [219 x i8] c"      --transfer <string>     Specify transfer characteristics [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg, linear,\0A                                    log100, log316, smpte170m, smpte240m\0A\00", align 1, !dbg !1159
@x264_transfer_names = internal unnamed_addr constant [12 x ptr] [ptr @.str.169, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr null], align 16, !dbg !1337
@.str.288 = private unnamed_addr constant [199 x i8] c"      --colormatrix <string>  Specify color matrix setting [\22%s\22]\0A                                  - undef, bt709, fcc, bt470bg\0A                                    smpte170m, smpte240m, GBR, YCgCo\0A\00", align 1, !dbg !1164
@x264_colmatrix_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.352, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.353, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.354, ptr null], align 16, !dbg !1346
@.str.289 = private unnamed_addr constant [76 x i8] c"      --chromaloc <integer>   Specify chroma sample location (0 to 5) [%d]\0A\00", align 1, !dbg !1169
@.str.294 = private unnamed_addr constant [109 x i8] c"      --muxer <string>        Specify output container format [\22%s\22]\0A                                  - %s\0A\00", align 1, !dbg !1182
@.str.295 = private unnamed_addr constant [108 x i8] c"      --demuxer <string>      Specify input container format [\22%s\22]\0A                                  - %s\0A\00", align 1, !dbg !1187
@.str.316 = private unnamed_addr constant [63 x i8] c"      --sps-id <integer>      Set SPS and PPS id numbers [%d]\0A\00", align 1, !dbg !1244
@.str.322 = private unnamed_addr constant [4 x i8] c"???\00", align 1, !dbg !1259
@.str.323 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !1261
@.str.324 = private unnamed_addr constant [7 x i8] c"strict\00", align 1, !dbg !1263
@.str.325 = private unnamed_addr constant [7 x i8] c"normal\00", align 1, !dbg !1265
@.str.326 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1, !dbg !1269
@.str.327 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1, !dbg !1271
@.str.328 = private unnamed_addr constant [4 x i8] c"dia\00", align 1, !dbg !1275
@.str.329 = private unnamed_addr constant [4 x i8] c"hex\00", align 1, !dbg !1277
@.str.330 = private unnamed_addr constant [4 x i8] c"umh\00", align 1, !dbg !1279
@.str.331 = private unnamed_addr constant [4 x i8] c"esa\00", align 1, !dbg !1281
@.str.332 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1, !dbg !1283
@.str.333 = private unnamed_addr constant [6 x i8] c"undef\00", align 1, !dbg !1288
@.str.334 = private unnamed_addr constant [5 x i8] c"show\00", align 1, !dbg !1290
@.str.335 = private unnamed_addr constant [5 x i8] c"crop\00", align 1, !dbg !1292
@.str.336 = private unnamed_addr constant [10 x i8] c"component\00", align 1, !dbg !1296
@.str.337 = private unnamed_addr constant [4 x i8] c"pal\00", align 1, !dbg !1298
@.str.338 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1, !dbg !1300
@.str.339 = private unnamed_addr constant [6 x i8] c"secam\00", align 1, !dbg !1302
@.str.340 = private unnamed_addr constant [4 x i8] c"mac\00", align 1, !dbg !1304
@.str.341 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !1309
@.str.342 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !1311
@.str.343 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1, !dbg !1316
@.str.344 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1, !dbg !1318
@.str.345 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1, !dbg !1320
@.str.346 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1, !dbg !1322
@.str.347 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1, !dbg !1324
@.str.348 = private unnamed_addr constant [5 x i8] c"film\00", align 1, !dbg !1326
@.str.349 = private unnamed_addr constant [7 x i8] c"linear\00", align 1, !dbg !1331
@.str.350 = private unnamed_addr constant [7 x i8] c"log100\00", align 1, !dbg !1333
@.str.351 = private unnamed_addr constant [7 x i8] c"log316\00", align 1, !dbg !1335
@.str.352 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1, !dbg !1340
@.str.353 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1, !dbg !1342
@.str.354 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1, !dbg !1344
@.str.356 = private unnamed_addr constant [3 x i8] c", \00", align 1, !dbg !1350
@.str.360 = private unnamed_addr constant [7 x i8] c"double\00", align 1, !dbg !1358
@.str.361 = private unnamed_addr constant [7 x i8] c"triple\00", align 1, !dbg !1360
@.str.362 = private unnamed_addr constant [5 x i8] c"euro\00", align 1, !dbg !1362
@.str.364 = private unnamed_addr constant [4 x i8] c"mp4\00", align 1, !dbg !1369
@.str.365 = private unnamed_addr constant [52 x i8] c"x264 [error]: not compiled with MP4 output support\0A\00", align 1, !dbg !1371
@mkv_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@flv_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@raw_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@.str.366 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !1407
@.str.367 = private unnamed_addr constant [4 x i8] c"avs\00", align 1, !dbg !1409
@.str.368 = private unnamed_addr constant [4 x i8] c"d2v\00", align 1, !dbg !1411
@.str.369 = private unnamed_addr constant [4 x i8] c"dga\00", align 1, !dbg !1413
@.str.370 = private unnamed_addr constant [51 x i8] c"x264 [error]: not compiled with AVS input support\0A\00", align 1, !dbg !1415
@y4m_input = external local_unnamed_addr constant %struct.cli_input_t, align 8
@yuv_input = external local_unnamed_addr constant %struct.cli_input_t, align 8
@.str.371 = private unnamed_addr constant [62 x i8] c"x264 [error]: could not open input file `%s' via any method!\0A\00", align 1, !dbg !1417
@.str.372 = private unnamed_addr constant [57 x i8] c"x264 [error]: unsupported framerate for chosen pulldown\0A\00", align 1, !dbg !1419
@.str.373 = private unnamed_addr constant [40 x i8] c"x264 [error]: x264_encoder_open failed\0A\00", align 1, !dbg !1421
@.str.374 = private unnamed_addr constant [39 x i8] c"x264 [error]: can't set outfile param\0A\00", align 1, !dbg !1426
@.str.375 = private unnamed_addr constant [29 x i8] c"x264 [error]: malloc failed\0A\00", align 1, !dbg !1431
@.str.376 = private unnamed_addr constant [44 x i8] c"x264 [error]: ticks_per_frame invalid: %ld\0A\00", align 1, !dbg !1436
@.str.377 = private unnamed_addr constant [43 x i8] c"x264 [error]: x264_encoder_headers failed\0A\00", align 1, !dbg !1438
@.str.378 = private unnamed_addr constant [22 x i8] c"# timecode format v2\0A\00", align 1, !dbg !1443
@pulldown_frame_duration = internal unnamed_addr constant [10 x float] [float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00, float 1.500000e+00, float 1.500000e+00, float 2.000000e+00, float 3.000000e+00], align 16, !dbg !1477
@.str.379 = private unnamed_addr constant [69 x i8] c"x264 [warning]: non-strictly-monotonic pts at frame %d (%ld <= %ld)\0A\00", align 1, !dbg !1448
@.str.380 = private unnamed_addr constant [78 x i8] c"x264 [warning]: too many nonmonotonic pts warnings, suppressing further ones\0A\00", align 1, !dbg !1450
@.str.381 = private unnamed_addr constant [6 x i8] c"%.6f\0A\00", align 1, !dbg !1452
@.str.382 = private unnamed_addr constant [57 x i8] c"x264 [warning]: %d suppressed nonmonotonic pts warnings\0A\00", align 1, !dbg !1454
@.str.383 = private unnamed_addr constant [81 x i8] c"                                                                               \0D\00", align 1, !dbg !1456
@.str.385 = private unnamed_addr constant [40 x i8] c"encoded %d frames, %.2f fps, %.2f kb/s\0A\00", align 1, !dbg !1460
@pulldown_values = internal unnamed_addr constant <{ %struct.cli_pulldown_t, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float }, { i32, <{ i8, i8, [22 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, %struct.cli_pulldown_t }> <{ %struct.cli_pulldown_t zeroinitializer, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 4, [23 x i8] zeroinitializer }>, float 1.000000e+00 }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float } { i32 4, <{ i8, i8, i8, i8, [20 x i8] }> <{ i8 6, i8 5, i8 7, i8 4, [20 x i8] zeroinitializer }>, float 1.250000e+00 }, { i32, <{ i8, i8, [22 x i8] }>, float } { i32 2, <{ i8, i8, [22 x i8] }> <{ i8 8, i8 9, [22 x i8] zeroinitializer }>, float 1.000000e+00 }, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 8, [23 x i8] zeroinitializer }>, float 2.000000e+00 }, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 9, [23 x i8] zeroinitializer }>, float 3.000000e+00 }, %struct.cli_pulldown_t { i32 24, [24 x i8] c"\06\05\05\05\05\05\05\05\05\05\05\05\07\04\04\04\04\04\04\04\04\04\04\04", float 0x3FF0AAAAA0000000 } }>, align 16, !dbg !1462
@.str.387 = private unnamed_addr constant [10 x i8] c"%d %c %d\0A\00", align 1, !dbg !1481
@.str.388 = private unnamed_addr constant [47 x i8] c"x264 [error]: can't parse qpfile for frame %d\0A\00", align 1, !dbg !1483
@.str.389 = private unnamed_addr constant [42 x i8] c"x264 [error]: x264_encoder_encode failed\0A\00", align 1, !dbg !1485
@str = private unnamed_addr constant [12 x i8] c"x264 0.96.x\00", align 1
@str.390 = private unnamed_addr constant [15 x i8] c"Example usage:\00", align 1
@str.391 = private unnamed_addr constant [29 x i8] c"      Constant quality mode:\00", align 1
@str.392 = private unnamed_addr constant [46 x i8] c"            x264 --crf 24 -o <output> <input>\00", align 1
@str.393 = private unnamed_addr constant [43 x i8] c"      Two-pass with a bitrate of 1000kbps:\00", align 1
@str.394 = private unnamed_addr constant [61 x i8] c"            x264 --pass 1 --bitrate 1000 -o <output> <input>\00", align 1
@str.395 = private unnamed_addr constant [61 x i8] c"            x264 --pass 2 --bitrate 1000 -o <output> <input>\00", align 1
@str.396 = private unnamed_addr constant [16 x i8] c"      Lossless:\00", align 1
@str.397 = private unnamed_addr constant [45 x i8] c"            x264 --crf 0 -o <output> <input>\00", align 1
@str.398 = private unnamed_addr constant [60 x i8] c"      Maximum PSNR at the cost of speed and visual quality:\00", align 1
@str.399 = private unnamed_addr constant [66 x i8] c"            x264 --preset placebo --tune psnr -o <output> <input>\00", align 1
@str.400 = private unnamed_addr constant [59 x i8] c"      Constant bitrate at 1000kbps with a 2 second-buffer:\00", align 1
@str.401 = private unnamed_addr constant [71 x i8] c"            x264 --vbv-bufsize 2000 --bitrate 1000 -o <output> <input>\00", align 1
@str.402 = private unnamed_addr constant [9 x i8] c"Presets:\00", align 1
@str.403 = private unnamed_addr constant [132 x i8] c"      --profile               Force the limits of an H.264 profile [high]\0A                                  Overrides all settings.\00", align 1
@str.404 = private unnamed_addr constant [55 x i8] c"                                  - baseline,main,high\00", align 1
@str.405 = private unnamed_addr constant [517 x i8] c"                                  - baseline:\0A                                    --no-8x8dct --bframes 0 --no-cabac\0A                                    --cqm flat --weightp 0\0A                                    No interlaced.\0A                                    No lossless.\0A                                  - main:\0A                                    --no-8x8dct --cqm flat\0A                                    No lossless.\0A                                  - high:\0A                                    No lossless.\00", align 1
@str.406 = private unnamed_addr constant [143 x i8] c"      --preset                Use a preset to select encoding settings [medium]\0A                                  Overridden by user settings.\00", align 1
@str.407 = private unnamed_addr constant [149 x i8] c"                                  - ultrafast,superfast,veryfast,faster,fast\0A                                  - medium,slow,slower,veryslow,placebo\00", align 1
@str.408 = private unnamed_addr constant [2442 x i8] c"                                  - ultrafast:\0A                                    --no-8x8dct --aq-mode 0 --b-adapt 0\0A                                    --bframes 0 --no-cabac --no-deblock\0A                                    --no-mbtree --me dia --no-mixed-refs\0A                                    --partitions none --ref 1 --scenecut 0\0A                                    --subme 0 --trellis 0 --no-weightb\0A                                    --weightp 0\0A                                  - superfast:\0A                                    --no-mbtree --me dia --no-mixed-refs\0A                                    --partitions i8x8,i4x4 --ref 1\0A                                    --subme 1 --trellis 0 --weightp 0\0A                                  - veryfast:\0A                                    --no-mbtree --no-mixed-refs --ref 1\0A                                    --subme 2 --trellis 0 --weightp 0\0A                                  - faster:\0A                                    --no-mixed-refs --rc-lookahead 20\0A                                    --ref 2 --subme 4 --weightp 1\0A                                  - fast:\0A                                    --rc-lookahead 30 --ref 2 --subme 6\0A                                  - medium:\0A                                    Default settings apply.\0A                                  - slow:\0A                                    --b-adapt 2 --direct auto --me umh\0A                                    --rc-lookahead 50 --ref 5 --subme 8\0A                                  - slower:\0A                                    --b-adapt 2 --direct auto --me umh\0A                                    --partitions all --rc-lookahead 60\0A                                    --ref 8 --subme 9 --trellis 2\0A                                  - veryslow:\0A                                    --b-adapt 2 --bframes 8 --direct auto\0A                                    --me umh --merange 24 --partitions all\0A                                    --ref 16 --subme 10 --trellis 2\0A                                    --rc-lookahead 60\0A                                  - placebo:\0A                                    --bframes 16 --b-adapt 2 --direct auto\0A                                    --slow-firstpass --no-fast-pskip\0A                                    --me tesa --merange 24 --partitions all\0A                                    --rc-lookahead 60 --ref 16 --subme 10\0A                                    --trellis 2\00", align 1
@str.409 = private unnamed_addr constant [339 x i8] c"      --tune                  Tune the settings for a particular type of source\0A                              or situation\0A                                  Overridden by user settings.\0A                                  Multiple tunings are separated by commas.\0A                                  Only one psy tuning can be used at a time.\00", align 1
@str.410 = private unnamed_addr constant [215 x i8] c"                                  - psy tunings: film,animation,grain,\0A                                                 stillimage,psnr,ssim\0A                                  - other tunings: fastdecode,zerolatency\00", align 1
@str.411 = private unnamed_addr constant [1557 x i8] c"                                  - film (psy tuning):\0A                                    --deblock -1:-1 --psy-rd <unset>:0.15\0A                                  - animation (psy tuning):\0A                                    --bframes {+2} --deblock 1:1\0A                                    --psy-rd 0.4:<unset> --aq-strength 0.6\0A                                    --ref {Double if >1 else 1}\0A                                  - grain (psy tuning):\0A                                    --aq-strength 0.5 --no-dct-decimate\0A                                    --deadzone-inter 6 --deadzone-intra 6\0A                                    --deblock -2:-2 --ipratio 1.1 \0A                                    --pbratio 1.1 --psy-rd <unset>:0.25\0A                                    --qcomp 0.8\0A                                  - stillimage (psy tuning):\0A                                    --aq-strength 1.2 --deblock -3:-3\0A                                    --psy-rd 2.0:0.7\0A                                  - psnr (psy tuning):\0A                                    --aq-mode 0 --no-psy\0A                                  - ssim (psy tuning):\0A                                    --aq-mode 2 --no-psy\0A                                  - fastdecode:\0A                                    --no-cabac --no-deblock --no-weightb\0A                                    --weightp 0\0A                                  - zerolatency:\0A                                    --bframes 0 --force-cfr --rc-lookahead 0\0A                                    --sync-lookahead 0 --sliced-threads\00", align 1
@str.412 = private unnamed_addr constant [72 x i8] c"      --slow-firstpass        Don't force faster settings with --pass 1\00", align 1
@str.413 = private unnamed_addr constant [286 x i8] c"      --slow-firstpass        Don't force these faster settings with --pass 1:\0A                                  --no-8x8dct --me dia --partitions none\0A                                  --ref 1 --subme {2 if >2 else unchanged}\0A                                  --trellis 0 --fast-pskip\00", align 1
@str.414 = private unnamed_addr constant [20 x i8] c"Frame-type options:\00", align 1
@str.415 = private unnamed_addr constant [54 x i8] c"  -i, --min-keyint <integer>  Minimum GOP size [auto]\00", align 1
@str.416 = private unnamed_addr constant [64 x i8] c"      --no-scenecut           Disable adaptive I-frame decision\00", align 1
@str.417 = private unnamed_addr constant [79 x i8] c"      --intra-refresh         Use Periodic Intra Refresh instead of IDR frames\00", align 1
@str.418 = private unnamed_addr constant [44 x i8] c"      --no-cabac              Disable CABAC\00", align 1
@str.419 = private unnamed_addr constant [50 x i8] c"      --no-deblock            Disable loop filter\00", align 1
@str.420 = private unnamed_addr constant [57 x i8] c"      --slices <integer>      Number of slices per frame\00", align 1
@str.421 = private unnamed_addr constant [157 x i8] c"      --slices <integer>      Number of slices per frame; forces rectangular\0A                              slices and is overridden by other slicing options\00", align 1
@str.422 = private unnamed_addr constant [71 x i8] c"      --slice-max-size <integer> Limit the size of each slice in bytes\00", align 1
@str.423 = private unnamed_addr constant [76 x i8] c"      --slice-max-mbs <integer> Limit the size of each slice in macroblocks\00", align 1
@str.424 = private unnamed_addr constant [71 x i8] c"      --tff                   Enable interlaced mode (top field first)\00", align 1
@str.425 = private unnamed_addr constant [74 x i8] c"      --bff                   Enable interlaced mode (bottom field first)\00", align 1
@str.426 = private unnamed_addr constant [67 x i8] c"      --constrained-intra     Enable constrained intra prediction.\00", align 1
@str.427 = private unnamed_addr constant [165 x i8] c"      --pulldown <string>     Use soft pulldown to change frame rate\0A                                  - none, 22, 32, 64, double, triple, euro (requires cfr input)\00", align 1
@str.428 = private unnamed_addr constant [225 x i8] c"      --fake-interlaced       Flag stream as interlaced but encode progressive.\0A                              Makes it possible to encode 25p and 30p Blu-Ray\0A                              streams. Ignored in interlaced mode.\00", align 1
@str.429 = private unnamed_addr constant [13 x i8] c"Ratecontrol:\00", align 1
@str.430 = private unnamed_addr constant [67 x i8] c"  -q, --qp <integer>          Force constant QP (0-51, 0=lossless)\00", align 1
@str.431 = private unnamed_addr constant [51 x i8] c"  -B, --bitrate <integer>     Set bitrate (kbit/s)\00", align 1
@str.432 = private unnamed_addr constant [127 x i8] c"      --crf-max <float>       With CRF+VBV, limit RF to this value\0A                                  May cause VBV underflows!\00", align 1
@str.433 = private unnamed_addr constant [209 x i8] c"  -p, --pass <integer>        Enable multipass ratecontrol\0A                                  - 1: First pass, creates stats file\0A                                  - 2: Last pass, does not overwrite stats file\00", align 1
@str.434 = private unnamed_addr constant [71 x i8] c"                                  - 3: Nth pass, overwrites stats file\00", align 1
@str.435 = private unnamed_addr constant [59 x i8] c"      --no-mbtree             Disable mb-tree ratecontrol.\00", align 1
@str.436 = private unnamed_addr constant [77 x i8] c"      --zones <zone0>/<zone1>/...  Tweak the bitrate of regions of the video\00", align 1
@str.437 = private unnamed_addr constant [313 x i8] c"                              Each zone is of the form\0A                                  <start frame>,<end frame>,<option>\0A                                  where <option> is either\0A                                      q=<integer> (force QP)\0A                                  or  b=<float> (bitrate multiplier)\00", align 1
@str.438 = private unnamed_addr constant [299 x i8] c"      --qpfile <string>       Force frametypes and QPs for some or all frames\0A                              Format of each line: framenumber frametype QP\0A                              QP of -1 lets x264 choose. Frametypes: I,i,P,B,b.\0A                              QPs are restricted by qpmin/qpmax.\00", align 1
@str.439 = private unnamed_addr constant [10 x i8] c"Analysis:\00", align 1
@str.440 = private unnamed_addr constant [268 x i8] c"  -A, --partitions <string>   Partitions to consider [\22p8x8,b8x8,i8x8,i4x4\22]\0A                                  - p8x8, p4x4, b8x8, i8x8, i4x4\0A                                  - none, all\0A                                  (p4x4 requires p8x8. i8x8 requires --8x8dct.)\00", align 1
@str.441 = private unnamed_addr constant [71 x i8] c"      --no-weightb            Disable weighted prediction for B-frames\00", align 1
@str.442 = private unnamed_addr constant [50 x i8] c"                                  - dia, hex, umh\00", align 1
@str.443 = private unnamed_addr constant [345 x i8] c"                                  - dia: diamond search, radius 1 (fast)\0A                                  - hex: hexagonal search, radius 2\0A                                  - umh: uneven multi-hexagon search\0A                                  - esa: exhaustive search\0A                                  - tesa: hadamard exhaustive search (slow)\00", align 1
@str.444 = private unnamed_addr constant [71 x i8] c"      --mvrange <integer>     Maximum motion vector length [-1 (auto)]\00", align 1
@str.445 = private unnamed_addr constant [73 x i8] c"      --mvrange-thread <int>  Minimum buffer between threads [-1 (auto)]\00", align 1
@str.446 = private unnamed_addr constant [69 x i8] c"                                  decision quality: 1=fast, 10=best.\00", align 1
@str.447 = private unnamed_addr constant [626 x i8] c"                                  - 0: fullpel only (not recommended)\0A                                  - 1: SAD mode decision, one qpel iteration\0A                                  - 2: SATD mode decision\0A                                  - 3-5: Progressively more qpel\0A                                  - 6: RD mode decision for I/P-frames\0A                                  - 7: RD mode decision for all frames\0A                                  - 8: RD refinement for I/P-frames\0A                                  - 9: RD refinement for all frames\0A                                  - 10: QP-RD - requires trellis=2, aq-mode>0\00", align 1
@str.448 = private unnamed_addr constant [125 x i8] c"      --no-psy                Disable all visual optimizations that worsen\0A                              both PSNR and SSIM.\00", align 1
@str.449 = private unnamed_addr constant [79 x i8] c"      --no-mixed-refs         Don't decide references on a per partition basis\00", align 1
@str.450 = private unnamed_addr constant [65 x i8] c"      --no-chroma-me          Ignore chroma in motion estimation\00", align 1
@str.451 = private unnamed_addr constant [70 x i8] c"      --no-8x8dct             Disable adaptive spatial transform size\00", align 1
@str.452 = private unnamed_addr constant [72 x i8] c"      --no-fast-pskip         Disables early SKIP detection on P-frames\00", align 1
@str.453 = private unnamed_addr constant [76 x i8] c"      --no-dct-decimate       Disables coefficient thresholding on P-frames\00", align 1
@str.454 = private unnamed_addr constant [75 x i8] c"                                  Deadzones should be in the range 0 - 32.\00", align 1
@str.455 = private unnamed_addr constant [107 x i8] c"      --cqm <string>          Preset quant matrices [\22flat\22]\0A                                  - jvt, flat\00", align 1
@str.456 = private unnamed_addr constant [83 x i8] c"      --cqmfile <string>      Read custom quant matrices from a JM-compatible file\00", align 1
@str.457 = private unnamed_addr constant [70 x i8] c"                                  Overrides any other --cqm* options.\00", align 1
@str.458 = private unnamed_addr constant [136 x i8] c"      --cqm4 <list>           Set all 4x4 quant matrices\0A                                  Takes a comma-separated list of 16 integers.\00", align 1
@str.459 = private unnamed_addr constant [136 x i8] c"      --cqm8 <list>           Set all 8x8 quant matrices\0A                                  Takes a comma-separated list of 64 integers.\00", align 1
@str.460 = private unnamed_addr constant [111 x i8] c"      --cqm4i, --cqm4p, --cqm8i, --cqm8p\0A                              Set both luma and chroma quant matrices\00", align 1
@str.461 = private unnamed_addr constant [105 x i8] c"      --cqm4iy, --cqm4ic, --cqm4py, --cqm4pc\0A                              Set individual quant matrices\00", align 1
@str.462 = private unnamed_addr constant [32 x i8] c"Video Usability Info (Annex E):\00", align 1
@str.463 = private unnamed_addr constant [75 x i8] c"The VUI settings are not used by the encoder but are merely suggestions to\00", align 1
@str.464 = private unnamed_addr constant [75 x i8] c"the playback equipment. See doc/vui.txt for details. Use at your own risk.\00", align 1
@str.465 = private unnamed_addr constant [153 x i8] c"      --nal-hrd <string>      Signal HRD information (requires vbv-bufsize)\0A                                  - none, vbr, cbr (cbr not allowed in .mp4)\00", align 1
@str.466 = private unnamed_addr constant [69 x i8] c"      --pic-struct            Force pic_struct in Picture Timing SEI\00", align 1
@str.467 = private unnamed_addr constant [14 x i8] c"Input/Output:\00", align 1
@str.468 = private unnamed_addr constant [50 x i8] c"  -o, --output                Specify output file\00", align 1
@str.469 = private unnamed_addr constant [60 x i8] c"      --index <string>        Filename for input index file\00", align 1
@str.470 = private unnamed_addr constant [58 x i8] c"      --sar width:height      Specify Sample Aspect Ratio\00", align 1
@str.471 = private unnamed_addr constant [48 x i8] c"      --fps <float|rational>  Specify framerate\00", align 1
@str.472 = private unnamed_addr constant [52 x i8] c"      --seek <integer>        First frame to encode\00", align 1
@str.473 = private unnamed_addr constant [65 x i8] c"      --frames <integer>      Maximum number of frames to encode\00", align 1
@str.474 = private unnamed_addr constant [68 x i8] c"      --level <string>        Specify level (as defined by Annex A)\00", align 1
@str.475 = private unnamed_addr constant [57 x i8] c"  -v, --verbose               Print stats for each frame\00", align 1
@str.476 = private unnamed_addr constant [79 x i8] c"      --no-progress           Don't show the progress indicator while encoding\00", align 1
@str.477 = private unnamed_addr constant [41 x i8] c"      --quiet                 Quiet Mode\00", align 1
@str.478 = private unnamed_addr constant [54 x i8] c"      --psnr                  Enable PSNR computation\00", align 1
@str.479 = private unnamed_addr constant [54 x i8] c"      --ssim                  Enable SSIM computation\00", align 1
@str.480 = private unnamed_addr constant [65 x i8] c"      --threads <integer>     Force a specific number of threads\00", align 1
@str.481 = private unnamed_addr constant [73 x i8] c"      --sliced-threads        Low-latency but lower-efficiency threading\00", align 1
@str.482 = private unnamed_addr constant [61 x i8] c"      --thread-input          Run Avisynth in its own thread\00", align 1
@str.483 = private unnamed_addr constant [80 x i8] c"      --sync-lookahead <integer> Number of buffer frames for threaded lookahead\00", align 1
@str.484 = private unnamed_addr constant [92 x i8] c"      --non-deterministic     Slightly improve quality of SMP, at the cost of repeatability\00", align 1
@str.485 = private unnamed_addr constant [53 x i8] c"      --asm <integer>         Override CPU detection\00", align 1
@str.486 = private unnamed_addr constant [60 x i8] c"      --no-asm                Disable all CPU optimizations\00", align 1
@str.487 = private unnamed_addr constant [75 x i8] c"      --visualize             Show MB types overlayed on the encoded video\00", align 1
@str.488 = private unnamed_addr constant [56 x i8] c"      --dump-yuv <string>     Save reconstructed frames\00", align 1
@str.489 = private unnamed_addr constant [57 x i8] c"      --aud                   Use access unit delimiters\00", align 1
@str.490 = private unnamed_addr constant [76 x i8] c"      --force-cfr             Force constant framerate timestamp generation\00", align 1
@str.491 = private unnamed_addr constant [76 x i8] c"      --tcfile-in <string>    Force timestamp generation with timecode file\00", align 1
@str.492 = private unnamed_addr constant [76 x i8] c"      --tcfile-out <string>   Output timecode v2 file from input timestamps\00", align 1
@str.493 = private unnamed_addr constant [232 x i8] c"      --timebase <int/int>    Specify timebase numerator and denominator\0A                 <integer>    Specify timebase numerator for input timecode file\0A                              or specify timebase denominator for other input\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 !dbg !1495 {
entry:
  %pic_out.i565.i = alloca %struct.x264_picture_t, align 8, !DIAssignID !1569
    #dbg_assign(i1 undef, !1570, !DIExpression(), !1569, ptr %pic_out.i565.i, !DIExpression(), !2659)
  %nal.i566.i = alloca ptr, align 8, !DIAssignID !2704
    #dbg_assign(i1 undef, !2656, !DIExpression(), !2704, ptr %nal.i566.i, !DIExpression(), !2659)
  %i_nal.i567.i = alloca i32, align 4, !DIAssignID !2705
  %pic_out.i.i = alloca %struct.x264_picture_t, align 8, !DIAssignID !2706
    #dbg_assign(i1 undef, !1570, !DIExpression(), !2706, ptr %pic_out.i.i, !DIExpression(), !2707)
  %nal.i.i = alloca ptr, align 8, !DIAssignID !2709
    #dbg_assign(i1 undef, !2656, !DIExpression(), !2709, ptr %nal.i.i, !DIExpression(), !2707)
  %i_nal.i.i = alloca i32, align 4, !DIAssignID !2710
  %num.i.i = alloca i32, align 4, !DIAssignID !2711
    #dbg_assign(i1 undef, !2712, !DIExpression(), !2711, ptr %num.i.i, !DIExpression(), !2724)
  %qp.i.i = alloca i32, align 4, !DIAssignID !2727
    #dbg_assign(i1 undef, !2720, !DIExpression(), !2727, ptr %qp.i.i, !DIExpression(), !2724)
  %type.i.i = alloca i8, align 1, !DIAssignID !2728
  %pic.i = alloca %struct.x264_picture_t, align 8, !DIAssignID !2729
    #dbg_assign(i1 undef, !2670, !DIExpression(), !2729, ptr %pic.i, !DIExpression(), !2730)
  %headers.i = alloca ptr, align 8, !DIAssignID !2731
    #dbg_assign(i1 undef, !2692, !DIExpression(), !2731, ptr %headers.i, !DIExpression(), !2732)
  %i_nal.i = alloca i32, align 4, !DIAssignID !2733
  %defaults.i = alloca %struct.x264_param_t, align 8, !DIAssignID !2734
    #dbg_assign(i1 undef, !2735, !DIExpression(), !2734, ptr %defaults.i, !DIExpression(), !2790)
  %input_opt.i = alloca %struct.cli_input_opt_t, align 8, !DIAssignID !2793
    #dbg_assign(i1 undef, !2755, !DIExpression(), !2793, ptr %input_opt.i, !DIExpression(), !2790)
  %long_options_index.i = alloca i32, align 4, !DIAssignID !2794
    #dbg_assign(i1 undef, !2766, !DIExpression(), !2794, ptr %long_options_index.i, !DIExpression(), !2795)
  %info.i = alloca %struct.video_info_t, align 4, !DIAssignID !2796
    #dbg_assign(i1 undef, !2778, !DIExpression(), !2796, ptr %info.i, !DIExpression(), !2790)
  %demuxername.i = alloca [5 x i8], align 1, !DIAssignID !2797
    #dbg_assign(i1 undef, !2779, !DIExpression(), !2797, ptr %demuxername.i, !DIExpression(), !2790)
  %i_user_timebase_num.i = alloca i64, align 8, !DIAssignID !2798
    #dbg_assign(i1 undef, !2780, !DIExpression(), !2798, ptr %i_user_timebase_num.i, !DIExpression(), !2799)
  %i_user_timebase_den.i = alloca i64, align 8, !DIAssignID !2800
  %param = alloca %struct.x264_param_t, align 8, !DIAssignID !2801
    #dbg_assign(i1 undef, !1501, !DIExpression(), !2801, ptr %param, !DIExpression(), !2802)
  %opt = alloca %struct.cli_opt_t, align 8, !DIAssignID !2803
    #dbg_assign(i1 undef, !1502, !DIExpression(), !2803, ptr %opt, !DIExpression(), !2802)
    #dbg_value(i32 %argc, !1499, !DIExpression(), !2802)
    #dbg_value(ptr %argv, !1500, !DIExpression(), !2802)
  call void @llvm.lifetime.start.p0(i64 704, ptr nonnull %param) #15, !dbg !2804
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %opt) #15, !dbg !2805
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info.i), !dbg !2806
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %demuxername.i), !dbg !2806
    #dbg_assign(i1 undef, !2783, !DIExpression(), !2800, ptr %i_user_timebase_den.i, !DIExpression(), !2799)
    #dbg_value(i32 %argc, !2740, !DIExpression(), !2790)
    #dbg_value(ptr %argv, !2741, !DIExpression(), !2790)
    #dbg_value(ptr %param, !2742, !DIExpression(), !2790)
    #dbg_value(ptr %opt, !2743, !DIExpression(), !2790)
    #dbg_value(ptr null, !2744, !DIExpression(), !2790)
    #dbg_value(ptr @.str.22, !2745, !DIExpression(), !2790)
    #dbg_value(ptr null, !2746, !DIExpression(), !2790)
    #dbg_value(ptr @.str.22, !2747, !DIExpression(), !2790)
    #dbg_value(ptr null, !2748, !DIExpression(), !2790)
  call void @llvm.lifetime.start.p0(i64 704, ptr nonnull %defaults.i) #15, !dbg !2806
    #dbg_value(ptr null, !2749, !DIExpression(), !2790)
    #dbg_value(i32 0, !2750, !DIExpression(), !2790)
    #dbg_value(i32 1, !2751, !DIExpression(), !2790)
    #dbg_value(i32 0, !2752, !DIExpression(), !2790)
    #dbg_value(i32 0, !2753, !DIExpression(), !2790)
    #dbg_value(i32 0, !2754, !DIExpression(), !2790)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %input_opt.i) #15, !dbg !2807
    #dbg_value(ptr null, !2756, !DIExpression(), !2790)
    #dbg_value(ptr null, !2757, !DIExpression(), !2790)
  call void @x264_param_default(ptr noundef nonnull %defaults.i) #15, !dbg !2808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %opt, i8 0, i64 56, i1 false), !dbg !2809, !DIAssignID !2810
    #dbg_assign(i8 0, !1502, !DIExpression(), !2810, ptr %opt, !DIExpression(), !2802)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %input_opt.i, i8 0, i64 32, i1 false), !dbg !2811, !DIAssignID !2812
    #dbg_assign(i8 0, !2755, !DIExpression(), !2812, ptr %input_opt.i, !DIExpression(), !2790)
  store i32 1, ptr %opt, align 8, !dbg !2813, !DIAssignID !2814
    #dbg_assign(i32 1, !1502, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2814, ptr %opt, !DIExpression(), !2802)
  store i32 0, ptr @optind, align 4, !dbg !2815
  br label %for.cond.i.outer, !dbg !2816

for.cond.i.outer:                                 ; preds = %if.end3.thread.i, %entry
  %preset.0.i.ph = phi ptr [ %0, %if.end3.thread.i ], [ null, %entry ]
  %tune.0.i.ph = phi ptr [ %tune.0.i.ph551, %if.end3.thread.i ], [ null, %entry ]
  br label %for.cond.i.outer550, !dbg !2817

for.cond.i.outer550:                              ; preds = %for.cond.i.outer, %if.then5.i
  %tune.0.i.ph551 = phi ptr [ %tune.0.i.ph, %for.cond.i.outer ], [ %1, %if.then5.i ]
  br label %for.cond.i, !dbg !2817

for.cond.i:                                       ; preds = %for.cond.i.outer550, %for.cond.i
    #dbg_value(ptr %tune.0.i.ph551, !2757, !DIExpression(), !2790)
    #dbg_value(ptr %preset.0.i.ph, !2756, !DIExpression(), !2790)
  %call.i = call i32 @getopt_long(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @short_options, ptr noundef nonnull @long_options, ptr noundef null) #15, !dbg !2818
    #dbg_value(i32 %call.i, !2758, !DIExpression(), !2819)
  switch i32 %call.i, label %for.cond.i [
    i32 -1, label %for.end.i
    i32 265, label %if.end3.thread.i
    i32 266, label %if.then5.i
    i32 63, label %Parse.exit.thread
  ], !dbg !2817

if.end3.thread.i:                                 ; preds = %for.cond.i
  %0 = load ptr, ptr @optarg, align 8, !dbg !2820
    #dbg_value(ptr %0, !2756, !DIExpression(), !2790)
  br label %for.cond.i.outer, !dbg !2822

if.then5.i:                                       ; preds = %for.cond.i
  %1 = load ptr, ptr @optarg, align 8, !dbg !2823
    #dbg_value(ptr %1, !2757, !DIExpression(), !2790)
  br label %for.cond.i.outer550, !dbg !2825

for.end.i:                                        ; preds = %for.cond.i
    #dbg_value(ptr %tune.0.i.ph551, !2757, !DIExpression(), !2790)
    #dbg_value(ptr %preset.0.i.ph, !2756, !DIExpression(), !2790)
  %tobool.not.i = icmp eq ptr %preset.0.i.ph, null, !dbg !2826
  br i1 %tobool.not.i, label %if.end13.i, label %land.lhs.true.i, !dbg !2828

land.lhs.true.i:                                  ; preds = %for.end.i
  %call10.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset.0.i.ph, ptr noundef nonnull dereferenceable(8) @.str) #16, !dbg !2829
  %tobool11.not.i = icmp ne i32 %call10.i, 0, !dbg !2829
  %spec.select.i = zext i1 %tobool11.not.i to i32, !dbg !2830
  br label %if.end13.i, !dbg !2830

if.end13.i:                                       ; preds = %land.lhs.true.i, %for.end.i
  %b_turbo.0.i = phi i32 [ 1, %for.end.i ], [ %spec.select.i, %land.lhs.true.i ], !dbg !2790
    #dbg_value(i32 %b_turbo.0.i, !2751, !DIExpression(), !2790)
  %call14.i = call i32 @x264_param_default_preset(ptr noundef nonnull %param, ptr noundef %preset.0.i.ph, ptr noundef %tune.0.i.ph551) #15, !dbg !2831
  %cmp15.i = icmp slt i32 %call14.i, 0, !dbg !2833
  br i1 %cmp15.i, label %Parse.exit.thread, label %if.end17.i, !dbg !2834

if.end17.i:                                       ; preds = %if.end13.i
  store i32 0, ptr @optind, align 4, !dbg !2835
  %i_pulldown.i = getelementptr inbounds i8, ptr %opt, i64 48
  %timebase.i = getelementptr inbounds i8, ptr %input_opt.i, i64 16
  %tcfile_out.i = getelementptr inbounds i8, ptr %opt, i64 32
  %b_vfr_input.i = getelementptr inbounds i8, ptr %param, i64 648
  %i_log_level80.i = getelementptr inbounds i8, ptr %param, i64 368
  %qpfile.i = getelementptr inbounds i8, ptr %opt, i64 24
  %seek.i = getelementptr inbounds i8, ptr %input_opt.i, i64 24
  %i_seek.i = getelementptr inbounds i8, ptr %opt, i64 4
  %i_frame_total.i = getelementptr inbounds i8, ptr %param, i64 36
  br label %for.cond18.i, !dbg !2836

for.cond18.i:                                     ; preds = %cleanup140.i, %if.end17.i
  %demuxer.0.i = phi ptr [ @.str.22, %if.end17.i ], [ %demuxer.3.i, %cleanup140.i ], !dbg !2837
  %muxer.0.i = phi ptr [ @.str.22, %if.end17.i ], [ %muxer.3.i, %cleanup140.i ], !dbg !2838
  %b_turbo.1.i = phi i32 [ %b_turbo.0.i, %if.end17.i ], [ %b_turbo.3.i, %cleanup140.i ], !dbg !2839
  %b_user_ref.0.i = phi i32 [ 0, %if.end17.i ], [ %b_user_ref.3.i, %cleanup140.i ], !dbg !2840
  %b_user_fps.0.i = phi i32 [ 0, %if.end17.i ], [ %b_user_fps.3.i, %cleanup140.i ], !dbg !2841
  %b_user_interlaced.0.i = phi i32 [ 0, %if.end17.i ], [ %b_user_interlaced.3.i, %cleanup140.i ], !dbg !2842
  %profile.0.i = phi ptr [ null, %if.end17.i ], [ %profile.2.i, %cleanup140.i ], !dbg !2843
  %tcfile_name.0.i = phi ptr [ null, %if.end17.i ], [ %tcfile_name.2.i, %cleanup140.i ], !dbg !2844
  %output_filename.0.i = phi ptr [ null, %if.end17.i ], [ %output_filename.2.i, %cleanup140.i ], !dbg !2845
    #dbg_value(ptr %muxer.0.i, !2747, !DIExpression(), !2790)
    #dbg_value(ptr %demuxer.0.i, !2745, !DIExpression(), !2790)
    #dbg_value(ptr %output_filename.0.i, !2746, !DIExpression(), !2790)
    #dbg_value(ptr %tcfile_name.0.i, !2748, !DIExpression(), !2790)
    #dbg_value(ptr %profile.0.i, !2749, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_interlaced.0.i, !2754, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_fps.0.i, !2753, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_ref.0.i, !2752, !DIExpression(), !2790)
    #dbg_value(i32 %b_turbo.1.i, !2751, !DIExpression(), !2790)
    #dbg_value(i32 0, !2762, !DIExpression(), !2795)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %long_options_index.i) #15, !dbg !2846
  store i32 -1, ptr %long_options_index.i, align 4, !dbg !2847, !DIAssignID !2848
    #dbg_assign(i32 -1, !2766, !DIExpression(), !2848, ptr %long_options_index.i, !DIExpression(), !2795)
  %call20.i = call i32 @getopt_long(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @short_options, ptr noundef nonnull @long_options, ptr noundef nonnull %long_options_index.i) #15, !dbg !2849
    #dbg_value(i32 %call20.i, !2767, !DIExpression(), !2795)
  switch i32 %call20.i, label %generic_option.i [
    i32 -1, label %for.end145.i
    i32 104, label %sw.bb.i
    i32 263, label %sw.bb24.i
    i32 268, label %sw.bb25.i
    i32 86, label %sw.bb26.i
    i32 278, label %sw.bb28.i
    i32 256, label %sw.bb32.i
    i32 257, label %sw.bb40.i
    i32 111, label %sw.bb49.i
    i32 270, label %sw.bb50.i
    i32 271, label %sw.bb55.i
    i32 272, label %sw.bb60.i
    i32 258, label %sw.bb61.i
    i32 259, label %cleanup140.i
    i32 260, label %sw.bb78.i
    i32 118, label %sw.bb79.i
    i32 261, label %sw.bb81.i
    i32 262, label %sw.bb83.i
    i32 266, label %cleanup140.i
    i32 265, label %cleanup140.i
    i32 264, label %sw.bb86.i
    i32 267, label %sw.bb87.i
    i32 114, label %sw.bb88.i
    i32 269, label %sw.bb89.i
    i32 273, label %sw.bb90.i
    i32 274, label %sw.bb91.i
    i32 275, label %sw.bb92.i
    i32 276, label %sw.bb99.i
    i32 277, label %sw.bb100.i
  ], !dbg !2850

sw.bb.i:                                          ; preds = %for.cond18.i
  call fastcc void @Help(ptr noundef nonnull %defaults.i, i32 noundef 0), !dbg !2851
  call void @exit(i32 noundef 0) #17, !dbg !2852
  unreachable, !dbg !2852

sw.bb24.i:                                        ; preds = %for.cond18.i
  call fastcc void @Help(ptr noundef nonnull %defaults.i, i32 noundef 1), !dbg !2853
  call void @exit(i32 noundef 0) #17, !dbg !2854
  unreachable, !dbg !2854

sw.bb25.i:                                        ; preds = %for.cond18.i
  call fastcc void @Help(ptr noundef nonnull %defaults.i, i32 noundef 2), !dbg !2855
  call void @exit(i32 noundef 0) #17, !dbg !2856
  unreachable, !dbg !2856

sw.bb26.i:                                        ; preds = %for.cond18.i
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !2857
  call void @exit(i32 noundef 0) #17, !dbg !2858
  unreachable, !dbg !2858

sw.bb28.i:                                        ; preds = %for.cond18.i
  %2 = load ptr, ptr @optarg, align 8, !dbg !2859
    #dbg_value(ptr %2, !2860, !DIExpression(), !2866)
  %call.i.i = call i64 @strtol(ptr nocapture noundef nonnull %2, ptr noundef null, i32 noundef 10) #15, !dbg !2868
  %conv.i.i = trunc i64 %call.i.i to i32, !dbg !2869
  %spec.select499.i = call i32 @llvm.smax.i32(i32 %conv.i.i, i32 1), !dbg !2859
  store i32 %spec.select499.i, ptr @tga_dump_rate, align 4, !dbg !2870
  br label %cleanup140.i, !dbg !2871

sw.bb32.i:                                        ; preds = %for.cond18.i
  %3 = load ptr, ptr @optarg, align 8, !dbg !2872
    #dbg_value(ptr %3, !2860, !DIExpression(), !2873)
  %call.i503.i = call i64 @strtol(ptr nocapture noundef nonnull %3, ptr noundef null, i32 noundef 10) #15, !dbg !2875
  %conv.i504.i = trunc i64 %call.i503.i to i32, !dbg !2876
  %spec.select500.i = call i32 @llvm.smax.i32(i32 %conv.i504.i, i32 0), !dbg !2872
  store i32 %spec.select500.i, ptr %i_frame_total.i, align 4, !dbg !2877, !DIAssignID !2878
    #dbg_assign(i32 %spec.select500.i, !1501, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !2878, ptr %i_frame_total.i, !DIExpression(), !2802)
  br label %cleanup140.i, !dbg !2879

sw.bb40.i:                                        ; preds = %for.cond18.i
  %4 = load ptr, ptr @optarg, align 8, !dbg !2880
    #dbg_value(ptr %4, !2860, !DIExpression(), !2881)
  %call.i505.i = call i64 @strtol(ptr nocapture noundef nonnull %4, ptr noundef null, i32 noundef 10) #15, !dbg !2883
  %conv.i506.i = trunc i64 %call.i505.i to i32, !dbg !2884
  %spec.select501.i = call i32 @llvm.smax.i32(i32 %conv.i506.i, i32 0), !dbg !2880
  store i32 %spec.select501.i, ptr %seek.i, align 8, !dbg !2885, !DIAssignID !2886
    #dbg_assign(i32 %spec.select501.i, !2755, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !2886, ptr %seek.i, !DIExpression(), !2790)
  store i32 %spec.select501.i, ptr %i_seek.i, align 4, !dbg !2887, !DIAssignID !2888
    #dbg_assign(i32 %spec.select501.i, !1502, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2888, ptr %i_seek.i, !DIExpression(), !2802)
  store i32 %spec.select501.i, ptr @seek_val, align 4, !dbg !2889
  br label %cleanup140.i, !dbg !2890

sw.bb49.i:                                        ; preds = %for.cond18.i
  %5 = load ptr, ptr @optarg, align 8, !dbg !2891
    #dbg_value(ptr %5, !2746, !DIExpression(), !2790)
  br label %cleanup140.i, !dbg !2892

sw.bb50.i:                                        ; preds = %for.cond18.i
  %6 = load ptr, ptr @optarg, align 8, !dbg !2893
    #dbg_value(ptr %6, !2895, !DIExpression(), !2906)
    #dbg_value(ptr poison, !2902, !DIExpression(), !2906)
    #dbg_value(ptr undef, !2903, !DIExpression(), !2906)
    #dbg_value(i32 0, !2904, !DIExpression(), !2908)
    #dbg_value(i64 0, !2904, !DIExpression(), !2908)
  %call.i507.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.22) #16, !dbg !2909
  %tobool3.not.i.i = icmp eq i32 %call.i507.i, 0, !dbg !2909
    #dbg_value(i64 0, !2904, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2908)
  br i1 %tobool3.not.i.i, label %cleanup140.i, label %for.cond.i.i, !dbg !2912

for.cond.i.i:                                     ; preds = %sw.bb50.i
    #dbg_value(i64 1, !2904, !DIExpression(), !2908)
  %call.i507.1.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.25) #16, !dbg !2909
  %tobool3.not.i.1.i = icmp eq i32 %call.i507.1.i, 0, !dbg !2909
    #dbg_value(i64 1, !2904, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2908)
  br i1 %tobool3.not.i.1.i, label %cleanup140.i, label %for.cond.i.1.i, !dbg !2912

for.cond.i.1.i:                                   ; preds = %for.cond.i.i
    #dbg_value(i64 2, !2904, !DIExpression(), !2908)
  %call.i507.2.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.26) #16, !dbg !2909
  %tobool3.not.i.2.i = icmp eq i32 %call.i507.2.i, 0, !dbg !2909
    #dbg_value(i64 2, !2904, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2908)
  br i1 %tobool3.not.i.2.i, label %cleanup140.i, label %for.cond.i.2.i, !dbg !2912

for.cond.i.2.i:                                   ; preds = %for.cond.i.1.i
    #dbg_value(i64 3, !2904, !DIExpression(), !2908)
  %call.i507.3.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.27) #16, !dbg !2909
  %tobool3.not.i.3.i = icmp eq i32 %call.i507.3.i, 0, !dbg !2909
    #dbg_value(i64 3, !2904, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2908)
  br i1 %tobool3.not.i.3.i, label %cleanup140.i, label %cleanup140.thread.i, !dbg !2912

sw.bb55.i:                                        ; preds = %for.cond18.i
  %7 = load ptr, ptr @optarg, align 8, !dbg !2913
    #dbg_value(ptr %7, !2895, !DIExpression(), !2915)
    #dbg_value(ptr poison, !2902, !DIExpression(), !2915)
    #dbg_value(ptr undef, !2903, !DIExpression(), !2915)
    #dbg_value(i64 0, !2904, !DIExpression(), !2917)
  %call.i510.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %7, ptr noundef nonnull dereferenceable(5) @.str.22) #16, !dbg !2918
  %tobool3.not.i511.i = icmp eq i32 %call.i510.i, 0, !dbg !2918
    #dbg_value(i64 0, !2904, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2917)
  br i1 %tobool3.not.i511.i, label %cleanup140.i, label %for.cond.i512.i, !dbg !2919

for.cond.i512.i:                                  ; preds = %sw.bb55.i
    #dbg_value(i64 1, !2904, !DIExpression(), !2917)
  %call.i510.1.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.23) #16, !dbg !2918
  %tobool3.not.i511.1.i = icmp eq i32 %call.i510.1.i, 0, !dbg !2918
    #dbg_value(i64 1, !2904, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2917)
  br i1 %tobool3.not.i511.1.i, label %cleanup140.i, label %for.cond.i512.1.i, !dbg !2919

for.cond.i512.1.i:                                ; preds = %for.cond.i512.i
    #dbg_value(i64 2, !2904, !DIExpression(), !2917)
  %call.i510.2.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.24) #16, !dbg !2918
  %tobool3.not.i511.2.i = icmp eq i32 %call.i510.2.i, 0, !dbg !2918
    #dbg_value(i64 2, !2904, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2917)
  br i1 %tobool3.not.i511.2.i, label %cleanup140.i, label %cleanup140.thread.i, !dbg !2919

sw.bb60.i:                                        ; preds = %for.cond18.i
  %8 = load ptr, ptr @optarg, align 8, !dbg !2920
  store ptr %8, ptr %input_opt.i, align 8, !dbg !2921, !DIAssignID !2922
    #dbg_assign(ptr %8, !2755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2922, ptr %input_opt.i, !DIExpression(), !2790)
  br label %cleanup140.i, !dbg !2923

sw.bb61.i:                                        ; preds = %for.cond18.i
  %9 = load ptr, ptr @optarg, align 8, !dbg !2924
  %call62.i = call noalias ptr @fopen(ptr noundef %9, ptr noundef nonnull @.str.2), !dbg !2925
  store ptr %call62.i, ptr %qpfile.i, align 8, !dbg !2926, !DIAssignID !2927
    #dbg_assign(ptr %call62.i, !1502, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2927, ptr %qpfile.i, !DIExpression(), !2802)
  %tobool64.not.i = icmp eq ptr %call62.i, null, !dbg !2928
  br i1 %tobool64.not.i, label %if.then65.i, label %cleanup140.i, !dbg !2930

if.then65.i:                                      ; preds = %sw.bb61.i
  %10 = load ptr, ptr @stderr, align 8, !dbg !2931
  %11 = load ptr, ptr @optarg, align 8, !dbg !2933
  %call66.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef %11) #18, !dbg !2934
  br label %cleanup140.thread.i, !dbg !2935

sw.bb78.i:                                        ; preds = %for.cond18.i
  store i32 -1, ptr %i_log_level80.i, align 8, !dbg !2936, !DIAssignID !2937
    #dbg_assign(i32 -1, !1501, !DIExpression(DW_OP_LLVM_fragment, 2944, 32), !2937, ptr %i_log_level80.i, !DIExpression(), !2802)
  br label %cleanup140.i, !dbg !2938

sw.bb79.i:                                        ; preds = %for.cond18.i
  store i32 3, ptr %i_log_level80.i, align 8, !dbg !2939, !DIAssignID !2940
    #dbg_assign(i32 3, !1501, !DIExpression(DW_OP_LLVM_fragment, 2944, 32), !2940, ptr %i_log_level80.i, !DIExpression(), !2802)
  br label %cleanup140.i, !dbg !2941

sw.bb81.i:                                        ; preds = %for.cond18.i
  store i32 0, ptr %opt, align 8, !dbg !2942, !DIAssignID !2943
    #dbg_assign(i32 0, !1502, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2943, ptr %opt, !DIExpression(), !2802)
  br label %cleanup140.i, !dbg !2944

sw.bb83.i:                                        ; preds = %for.cond18.i
  %12 = load ptr, ptr @stderr, align 8, !dbg !2945
  %13 = call i64 @fwrite(ptr nonnull @.str.5, i64 56, i64 1, ptr %12) #19, !dbg !2946
  br label %cleanup140.i, !dbg !2947

sw.bb86.i:                                        ; preds = %for.cond18.i
  %14 = load ptr, ptr @optarg, align 8, !dbg !2948
    #dbg_value(ptr %14, !2749, !DIExpression(), !2790)
  br label %cleanup140.i, !dbg !2949

sw.bb87.i:                                        ; preds = %for.cond18.i
    #dbg_value(i32 0, !2751, !DIExpression(), !2790)
  br label %cleanup140.i, !dbg !2950

sw.bb88.i:                                        ; preds = %for.cond18.i
    #dbg_value(i32 1, !2752, !DIExpression(), !2790)
  br label %generic_option.i, !dbg !2951

sw.bb89.i:                                        ; preds = %for.cond18.i
    #dbg_value(i32 1, !2753, !DIExpression(), !2790)
  store i32 0, ptr %b_vfr_input.i, align 8, !dbg !2952, !DIAssignID !2953
    #dbg_assign(i32 0, !1501, !DIExpression(DW_OP_LLVM_fragment, 5184, 32), !2953, ptr %b_vfr_input.i, !DIExpression(), !2802)
  br label %generic_option.i, !dbg !2954

sw.bb90.i:                                        ; preds = %for.cond18.i
    #dbg_value(i32 1, !2754, !DIExpression(), !2790)
  br label %generic_option.i, !dbg !2955

sw.bb91.i:                                        ; preds = %for.cond18.i
  %15 = load ptr, ptr @optarg, align 8, !dbg !2956
    #dbg_value(ptr %15, !2748, !DIExpression(), !2790)
  br label %cleanup140.i, !dbg !2957

sw.bb92.i:                                        ; preds = %for.cond18.i
  %16 = load ptr, ptr @optarg, align 8, !dbg !2958
  %call93.i = call noalias ptr @fopen(ptr noundef %16, ptr noundef nonnull @.str.6), !dbg !2959
  store ptr %call93.i, ptr %tcfile_out.i, align 8, !dbg !2960, !DIAssignID !2961
    #dbg_assign(ptr %call93.i, !1502, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2961, ptr %tcfile_out.i, !DIExpression(), !2802)
  %tobool95.not.i = icmp eq ptr %call93.i, null, !dbg !2962
  br i1 %tobool95.not.i, label %if.then96.i, label %cleanup140.i, !dbg !2964

if.then96.i:                                      ; preds = %sw.bb92.i
  %17 = load ptr, ptr @stderr, align 8, !dbg !2965
  %18 = load ptr, ptr @optarg, align 8, !dbg !2967
  %call97.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.7, ptr noundef %18) #18, !dbg !2968
  br label %cleanup140.thread.i, !dbg !2969

sw.bb99.i:                                        ; preds = %for.cond18.i
  %19 = load ptr, ptr @optarg, align 8, !dbg !2970
  store ptr %19, ptr %timebase.i, align 8, !dbg !2971, !DIAssignID !2972
    #dbg_assign(ptr %19, !2755, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2972, ptr %timebase.i, !DIExpression(), !2790)
  br label %cleanup140.i, !dbg !2973

sw.bb100.i:                                       ; preds = %for.cond18.i
  %20 = load ptr, ptr @optarg, align 8, !dbg !2974
    #dbg_value(ptr %20, !2976, !DIExpression(), !2985)
    #dbg_value(ptr poison, !2981, !DIExpression(), !2985)
    #dbg_value(ptr %i_pulldown.i, !2982, !DIExpression(), !2985)
    #dbg_value(i64 0, !2983, !DIExpression(), !2987)
  %call.i519.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %20, ptr noundef nonnull dereferenceable(5) @.str.323) #16, !dbg !2988
  %tobool3.not.i520.i = icmp eq i32 %call.i519.i, 0, !dbg !2988
  br i1 %tobool3.not.i520.i, label %parse_enum_value.exit.i, label %sub_0.i, !dbg !2991

sub_0.i:                                          ; preds = %sw.bb100.i
    #dbg_value(i64 1, !2983, !DIExpression(), !2987)
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, -50
  %.not.i = icmp eq i32 %23, 0
  br i1 %.not.i, label %sub_1.i, label %for.inc.i.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = add nsw i32 %26, -50
  %.not733.i = icmp eq i32 %27, 0
  br i1 %.not733.i, label %sub_2.i, label %for.inc.i.tail.i

sub_2.i:                                          ; preds = %sub_1.i
  %28 = getelementptr inbounds i8, ptr %20, i64 2
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  br label %for.inc.i.tail.i

for.inc.i.tail.i:                                 ; preds = %sub_2.i, %sub_1.i, %sub_0.i
  %31 = phi i32 [ %23, %sub_0.i ], [ %27, %sub_1.i ], [ %30, %sub_2.i ]
  %tobool3.not.1.i.i = icmp eq i32 %31, 0, !dbg !2988
  br i1 %tobool3.not.1.i.i, label %parse_enum_value.exit.i, label %sub_0611.i, !dbg !2991

sub_0611.i:                                       ; preds = %for.inc.i.tail.i
    #dbg_value(i64 2, !2983, !DIExpression(), !2987)
  %32 = add nsw i32 %22, -51
  %.not734.i = icmp eq i32 %32, 0
  br i1 %.not734.i, label %sub_1612.i, label %for.inc.1.i.tail.i

sub_1612.i:                                       ; preds = %sub_0611.i
  %33 = getelementptr inbounds i8, ptr %20, i64 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -50
  %.not735.i = icmp eq i32 %36, 0
  br i1 %.not735.i, label %sub_2613.i, label %for.inc.1.i.tail.i

sub_2613.i:                                       ; preds = %sub_1612.i
  %37 = getelementptr inbounds i8, ptr %20, i64 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  br label %for.inc.1.i.tail.i

for.inc.1.i.tail.i:                               ; preds = %sub_2613.i, %sub_1612.i, %sub_0611.i
  %40 = phi i32 [ %32, %sub_0611.i ], [ %36, %sub_1612.i ], [ %39, %sub_2613.i ]
  %tobool3.not.2.i.i = icmp eq i32 %40, 0, !dbg !2988
  br i1 %tobool3.not.2.i.i, label %parse_enum_value.exit.i, label %sub_0615.i, !dbg !2991

sub_0615.i:                                       ; preds = %for.inc.1.i.tail.i
    #dbg_value(i64 3, !2983, !DIExpression(), !2987)
  %41 = add nsw i32 %22, -54
  %.not736.i = icmp eq i32 %41, 0
  br i1 %.not736.i, label %sub_1616.i, label %for.inc.2.i.tail.i

sub_1616.i:                                       ; preds = %sub_0615.i
  %42 = getelementptr inbounds i8, ptr %20, i64 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 %44, -52
  %.not737.i = icmp eq i32 %45, 0
  br i1 %.not737.i, label %sub_2617.i, label %for.inc.2.i.tail.i

sub_2617.i:                                       ; preds = %sub_1616.i
  %46 = getelementptr inbounds i8, ptr %20, i64 2
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  br label %for.inc.2.i.tail.i

for.inc.2.i.tail.i:                               ; preds = %sub_2617.i, %sub_1616.i, %sub_0615.i
  %49 = phi i32 [ %41, %sub_0615.i ], [ %45, %sub_1616.i ], [ %48, %sub_2617.i ]
  %tobool3.not.3.i.i = icmp eq i32 %49, 0, !dbg !2988
  br i1 %tobool3.not.3.i.i, label %parse_enum_value.exit.i, label %for.inc.3.i.i, !dbg !2991

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.tail.i
    #dbg_value(i64 4, !2983, !DIExpression(), !2987)
  %call.4.i.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %20, ptr noundef nonnull dereferenceable(7) @.str.360) #16, !dbg !2988
  %tobool3.not.4.i.i = icmp eq i32 %call.4.i.i, 0, !dbg !2988
  br i1 %tobool3.not.4.i.i, label %parse_enum_value.exit.i, label %for.inc.4.i.i, !dbg !2991

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
    #dbg_value(i64 5, !2983, !DIExpression(), !2987)
  %call.5.i.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %20, ptr noundef nonnull dereferenceable(7) @.str.361) #16, !dbg !2988
  %tobool3.not.5.i.i = icmp eq i32 %call.5.i.i, 0, !dbg !2988
  br i1 %tobool3.not.5.i.i, label %parse_enum_value.exit.i, label %for.inc.5.i.i, !dbg !2991

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
    #dbg_value(i64 6, !2983, !DIExpression(), !2987)
  %call.6.i.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %20, ptr noundef nonnull dereferenceable(5) @.str.362) #16, !dbg !2988
  %tobool3.not.6.i.i = icmp eq i32 %call.6.i.i, 0, !dbg !2988
  br i1 %tobool3.not.6.i.i, label %parse_enum_value.exit.i, label %cleanup140.thread.i, !dbg !2991

parse_enum_value.exit.i:                          ; preds = %for.inc.5.i.i, %for.inc.4.i.i, %for.inc.3.i.i, %for.inc.2.i.tail.i, %for.inc.1.i.tail.i, %for.inc.i.tail.i, %sw.bb100.i
  %i.04.lcssa.wide.i.i = phi i32 [ 0, %sw.bb100.i ], [ 1, %for.inc.i.tail.i ], [ 2, %for.inc.1.i.tail.i ], [ 3, %for.inc.2.i.tail.i ], [ 4, %for.inc.3.i.i ], [ 5, %for.inc.4.i.i ], [ 6, %for.inc.5.i.i ]
  store i32 %i.04.lcssa.wide.i.i, ptr %i_pulldown.i, align 8, !dbg !2992, !DIAssignID !2994
    #dbg_assign(i32 %i.04.lcssa.wide.i.i, !1502, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !2994, ptr %i_pulldown.i, !DIExpression(), !2802)
  br label %cleanup140.i, !dbg !2995

generic_option.i:                                 ; preds = %sw.bb90.i, %sw.bb89.i, %sw.bb88.i, %for.cond18.i
  %b_user_ref.1.i = phi i32 [ %b_user_ref.0.i, %sw.bb90.i ], [ %b_user_ref.0.i, %sw.bb89.i ], [ 1, %sw.bb88.i ], [ %b_user_ref.0.i, %for.cond18.i ], !dbg !2790
  %b_user_fps.1.i = phi i32 [ %b_user_fps.0.i, %sw.bb90.i ], [ 1, %sw.bb89.i ], [ %b_user_fps.0.i, %sw.bb88.i ], [ %b_user_fps.0.i, %for.cond18.i ], !dbg !2790
  %b_user_interlaced.1.i = phi i32 [ 1, %sw.bb90.i ], [ %b_user_interlaced.0.i, %sw.bb89.i ], [ %b_user_interlaced.0.i, %sw.bb88.i ], [ %b_user_interlaced.0.i, %for.cond18.i ], !dbg !2790
    #dbg_value(i32 %b_user_interlaced.1.i, !2754, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_fps.1.i, !2753, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_ref.1.i, !2752, !DIExpression(), !2790)
    #dbg_label(!2768, !2996)
  %50 = load i32, ptr %long_options_index.i, align 4, !dbg !2997
  %cmp105.i = icmp slt i32 %50, 0, !dbg !2998
  br i1 %cmp105.i, label %for.cond107.preheader.i, label %sw.epilog.i, !dbg !2999

for.cond107.preheader.i:                          ; preds = %generic_option.i
    #dbg_value(i32 0, !2770, !DIExpression(), !3000)
  %51 = load ptr, ptr @long_options, align 16, !dbg !3001
  %tobool108.not723.i = icmp eq ptr %51, null, !dbg !3003
  br i1 %tobool108.not723.i, label %cleanup140.thread.i, label %for.body.i, !dbg !3003

for.body.i:                                       ; preds = %for.cond107.preheader.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.cond107.preheader.i ]
  %arrayidx725.i = phi ptr [ %arrayidx.i, %for.inc.i ], [ @long_options, %for.cond107.preheader.i ]
    #dbg_value(i64 %indvars.iv.i, !2770, !DIExpression(), !3000)
  %val.i = getelementptr inbounds i8, ptr %arrayidx725.i, i64 24, !dbg !3004
  %52 = load i32, ptr %val.i, align 8, !dbg !3004
  %cmp111.i = icmp eq i32 %52, %call20.i, !dbg !3006
  br i1 %cmp111.i, label %cleanup114.thread.i, label %for.inc.i, !dbg !3007

cleanup114.thread.i:                              ; preds = %for.body.i
  %53 = trunc nuw nsw i64 %indvars.iv.i to i32, !dbg !3008
  store i32 %53, ptr %long_options_index.i, align 4, !dbg !3008, !DIAssignID !3010
    #dbg_assign(i32 %53, !2766, !DIExpression(), !3010, ptr %long_options_index.i, !DIExpression(), !2795)
  br label %sw.epilog.i, !dbg !3011

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !3012
    #dbg_value(i64 %indvars.iv.next.i, !2770, !DIExpression(), !3000)
  %arrayidx.i = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %indvars.iv.next.i, !dbg !3013
  %54 = load ptr, ptr %arrayidx.i, align 16, !dbg !3001
  %tobool108.not.i = icmp eq ptr %54, null, !dbg !3003
  br i1 %tobool108.not.i, label %cleanup140.thread.i, label %for.body.i, !dbg !3003, !llvm.loop !3014

sw.epilog.i:                                      ; preds = %cleanup114.thread.i, %generic_option.i
  %55 = phi i32 [ %50, %generic_option.i ], [ %53, %cleanup114.thread.i ], !dbg !3016
  %idxprom120.i = sext i32 %55 to i64, !dbg !3017
  %arrayidx121.i = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %idxprom120.i, !dbg !3017
  %56 = load ptr, ptr %arrayidx121.i, align 16, !dbg !3018
  %57 = load ptr, ptr @optarg, align 8, !dbg !3019
  %call123.i = call i32 @x264_param_parse(ptr noundef nonnull %param, ptr noundef %56, ptr noundef %57) #15, !dbg !3020
    #dbg_value(ptr %muxer.0.i, !2747, !DIExpression(), !2790)
    #dbg_value(ptr %demuxer.0.i, !2745, !DIExpression(), !2790)
    #dbg_value(ptr %output_filename.0.i, !2746, !DIExpression(), !2790)
    #dbg_value(ptr %tcfile_name.0.i, !2748, !DIExpression(), !2790)
    #dbg_value(i32 %call123.i, !2762, !DIExpression(), !2795)
    #dbg_value(ptr %profile.0.i, !2749, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_interlaced.1.i, !2754, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_fps.1.i, !2753, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_ref.1.i, !2752, !DIExpression(), !2790)
    #dbg_value(i32 %b_turbo.1.i, !2751, !DIExpression(), !2790)
  %tobool124.not.i = icmp eq i32 %call123.i, 0, !dbg !3021
  br i1 %tobool124.not.i, label %cleanup140.i, label %if.then125.i, !dbg !3022

if.then125.i:                                     ; preds = %sw.epilog.i
  %58 = load i32, ptr %long_options_index.i, align 4, !dbg !3023
  %cmp127.i = icmp sgt i32 %58, 0, !dbg !3024
  %idxprom129.i = zext nneg i32 %58 to i64, !dbg !3023
  %arrayidx130.i = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %idxprom129.i, !dbg !3023
  %59 = load i32, ptr @optind, align 4, !dbg !3023
  %60 = sext i32 %59 to i64, !dbg !3023
  %61 = getelementptr ptr, ptr %argv, i64 %60, !dbg !3023
  %arrayidx134.i = getelementptr i8, ptr %61, i64 -16, !dbg !3023
  %cond136.in.i = select i1 %cmp127.i, ptr %arrayidx130.i, ptr %arrayidx134.i, !dbg !3023
  %cond136.i = load ptr, ptr %cond136.in.i, align 8, !dbg !3023
    #dbg_value(ptr %cond136.i, !2775, !DIExpression(), !3025)
  %62 = load ptr, ptr @stderr, align 8, !dbg !3026
  %63 = load ptr, ptr @optarg, align 8, !dbg !3027
  %call137.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.8, ptr noundef %cond136.i, ptr noundef %63) #18, !dbg !3028
  br label %cleanup140.thread.i

cleanup140.thread.i:                              ; preds = %for.cond107.preheader.i, %for.inc.5.i.i, %for.cond.i512.1.i, %for.cond.i.2.i, %for.inc.i, %if.then125.i, %if.then96.i, %if.then65.i
    #dbg_value(ptr poison, !2747, !DIExpression(), !2790)
    #dbg_value(ptr poison, !2745, !DIExpression(), !2790)
    #dbg_value(ptr poison, !2746, !DIExpression(), !2790)
    #dbg_value(ptr poison, !2748, !DIExpression(), !2790)
    #dbg_value(ptr poison, !2749, !DIExpression(), !2790)
    #dbg_value(i32 poison, !2754, !DIExpression(), !2790)
    #dbg_value(i32 poison, !2753, !DIExpression(), !2790)
    #dbg_value(i32 poison, !2752, !DIExpression(), !2790)
    #dbg_value(i32 poison, !2751, !DIExpression(), !2790)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_options_index.i) #15, !dbg !3029
  br label %Parse.exit.thread

cleanup140.i:                                     ; preds = %sw.epilog.i, %parse_enum_value.exit.i, %sw.bb99.i, %sw.bb92.i, %sw.bb91.i, %sw.bb87.i, %sw.bb86.i, %sw.bb83.i, %sw.bb81.i, %sw.bb79.i, %sw.bb78.i, %sw.bb61.i, %sw.bb60.i, %for.cond.i512.1.i, %for.cond.i512.i, %sw.bb55.i, %for.cond.i.2.i, %for.cond.i.1.i, %for.cond.i.i, %sw.bb50.i, %sw.bb49.i, %sw.bb40.i, %sw.bb32.i, %sw.bb28.i, %for.cond18.i, %for.cond18.i, %for.cond18.i
  %demuxer.3.i = phi ptr [ %demuxer.0.i, %sw.epilog.i ], [ %demuxer.0.i, %sw.bb61.i ], [ %demuxer.0.i, %sw.bb28.i ], [ %demuxer.0.i, %sw.bb32.i ], [ %demuxer.0.i, %sw.bb40.i ], [ %demuxer.0.i, %sw.bb49.i ], [ %demuxer.0.i, %sw.bb60.i ], [ %demuxer.0.i, %for.cond18.i ], [ %demuxer.0.i, %for.cond18.i ], [ %demuxer.0.i, %for.cond18.i ], [ %demuxer.0.i, %sw.bb78.i ], [ %demuxer.0.i, %sw.bb79.i ], [ %demuxer.0.i, %sw.bb81.i ], [ %demuxer.0.i, %sw.bb83.i ], [ %demuxer.0.i, %sw.bb86.i ], [ %demuxer.0.i, %sw.bb87.i ], [ %demuxer.0.i, %sw.bb91.i ], [ %demuxer.0.i, %sw.bb92.i ], [ %demuxer.0.i, %sw.bb99.i ], [ %demuxer.0.i, %parse_enum_value.exit.i ], [ %demuxer.0.i, %for.cond.i.2.i ], [ %demuxer.0.i, %for.cond.i.1.i ], [ %demuxer.0.i, %for.cond.i.i ], [ %demuxer.0.i, %sw.bb50.i ], [ @.str.22, %sw.bb55.i ], [ @.str.23, %for.cond.i512.i ], [ @.str.24, %for.cond.i512.1.i ], !dbg !2790
  %muxer.3.i = phi ptr [ %muxer.0.i, %sw.epilog.i ], [ %muxer.0.i, %sw.bb61.i ], [ %muxer.0.i, %sw.bb28.i ], [ %muxer.0.i, %sw.bb32.i ], [ %muxer.0.i, %sw.bb40.i ], [ %muxer.0.i, %sw.bb49.i ], [ %muxer.0.i, %sw.bb60.i ], [ %muxer.0.i, %for.cond18.i ], [ %muxer.0.i, %for.cond18.i ], [ %muxer.0.i, %for.cond18.i ], [ %muxer.0.i, %sw.bb78.i ], [ %muxer.0.i, %sw.bb79.i ], [ %muxer.0.i, %sw.bb81.i ], [ %muxer.0.i, %sw.bb83.i ], [ %muxer.0.i, %sw.bb86.i ], [ %muxer.0.i, %sw.bb87.i ], [ %muxer.0.i, %sw.bb91.i ], [ %muxer.0.i, %sw.bb92.i ], [ %muxer.0.i, %sw.bb99.i ], [ %muxer.0.i, %parse_enum_value.exit.i ], [ @.str.27, %for.cond.i.2.i ], [ @.str.26, %for.cond.i.1.i ], [ @.str.25, %for.cond.i.i ], [ @.str.22, %sw.bb50.i ], [ %muxer.0.i, %sw.bb55.i ], [ %muxer.0.i, %for.cond.i512.i ], [ %muxer.0.i, %for.cond.i512.1.i ], !dbg !2790
  %b_turbo.3.i = phi i32 [ %b_turbo.1.i, %sw.epilog.i ], [ %b_turbo.1.i, %sw.bb61.i ], [ %b_turbo.1.i, %sw.bb28.i ], [ %b_turbo.1.i, %sw.bb32.i ], [ %b_turbo.1.i, %sw.bb40.i ], [ %b_turbo.1.i, %sw.bb49.i ], [ %b_turbo.1.i, %sw.bb60.i ], [ %b_turbo.1.i, %for.cond18.i ], [ %b_turbo.1.i, %for.cond18.i ], [ %b_turbo.1.i, %for.cond18.i ], [ %b_turbo.1.i, %sw.bb78.i ], [ %b_turbo.1.i, %sw.bb79.i ], [ %b_turbo.1.i, %sw.bb81.i ], [ %b_turbo.1.i, %sw.bb83.i ], [ %b_turbo.1.i, %sw.bb86.i ], [ 0, %sw.bb87.i ], [ %b_turbo.1.i, %sw.bb91.i ], [ %b_turbo.1.i, %sw.bb92.i ], [ %b_turbo.1.i, %sw.bb99.i ], [ %b_turbo.1.i, %parse_enum_value.exit.i ], [ %b_turbo.1.i, %for.cond.i.2.i ], [ %b_turbo.1.i, %for.cond.i.1.i ], [ %b_turbo.1.i, %for.cond.i.i ], [ %b_turbo.1.i, %sw.bb50.i ], [ %b_turbo.1.i, %sw.bb55.i ], [ %b_turbo.1.i, %for.cond.i512.i ], [ %b_turbo.1.i, %for.cond.i512.1.i ], !dbg !2839
  %b_user_ref.3.i = phi i32 [ %b_user_ref.1.i, %sw.epilog.i ], [ %b_user_ref.0.i, %sw.bb61.i ], [ %b_user_ref.0.i, %sw.bb28.i ], [ %b_user_ref.0.i, %sw.bb32.i ], [ %b_user_ref.0.i, %sw.bb40.i ], [ %b_user_ref.0.i, %sw.bb49.i ], [ %b_user_ref.0.i, %sw.bb60.i ], [ %b_user_ref.0.i, %for.cond18.i ], [ %b_user_ref.0.i, %for.cond18.i ], [ %b_user_ref.0.i, %for.cond18.i ], [ %b_user_ref.0.i, %sw.bb78.i ], [ %b_user_ref.0.i, %sw.bb79.i ], [ %b_user_ref.0.i, %sw.bb81.i ], [ %b_user_ref.0.i, %sw.bb83.i ], [ %b_user_ref.0.i, %sw.bb86.i ], [ %b_user_ref.0.i, %sw.bb87.i ], [ %b_user_ref.0.i, %sw.bb91.i ], [ %b_user_ref.0.i, %sw.bb92.i ], [ %b_user_ref.0.i, %sw.bb99.i ], [ %b_user_ref.0.i, %parse_enum_value.exit.i ], [ %b_user_ref.0.i, %for.cond.i.2.i ], [ %b_user_ref.0.i, %for.cond.i.1.i ], [ %b_user_ref.0.i, %for.cond.i.i ], [ %b_user_ref.0.i, %sw.bb50.i ], [ %b_user_ref.0.i, %sw.bb55.i ], [ %b_user_ref.0.i, %for.cond.i512.i ], [ %b_user_ref.0.i, %for.cond.i512.1.i ], !dbg !2840
  %b_user_fps.3.i = phi i32 [ %b_user_fps.1.i, %sw.epilog.i ], [ %b_user_fps.0.i, %sw.bb61.i ], [ %b_user_fps.0.i, %sw.bb28.i ], [ %b_user_fps.0.i, %sw.bb32.i ], [ %b_user_fps.0.i, %sw.bb40.i ], [ %b_user_fps.0.i, %sw.bb49.i ], [ %b_user_fps.0.i, %sw.bb60.i ], [ %b_user_fps.0.i, %for.cond18.i ], [ %b_user_fps.0.i, %for.cond18.i ], [ %b_user_fps.0.i, %for.cond18.i ], [ %b_user_fps.0.i, %sw.bb78.i ], [ %b_user_fps.0.i, %sw.bb79.i ], [ %b_user_fps.0.i, %sw.bb81.i ], [ %b_user_fps.0.i, %sw.bb83.i ], [ %b_user_fps.0.i, %sw.bb86.i ], [ %b_user_fps.0.i, %sw.bb87.i ], [ %b_user_fps.0.i, %sw.bb91.i ], [ %b_user_fps.0.i, %sw.bb92.i ], [ %b_user_fps.0.i, %sw.bb99.i ], [ %b_user_fps.0.i, %parse_enum_value.exit.i ], [ %b_user_fps.0.i, %for.cond.i.2.i ], [ %b_user_fps.0.i, %for.cond.i.1.i ], [ %b_user_fps.0.i, %for.cond.i.i ], [ %b_user_fps.0.i, %sw.bb50.i ], [ %b_user_fps.0.i, %sw.bb55.i ], [ %b_user_fps.0.i, %for.cond.i512.i ], [ %b_user_fps.0.i, %for.cond.i512.1.i ], !dbg !2841
  %b_user_interlaced.3.i = phi i32 [ %b_user_interlaced.1.i, %sw.epilog.i ], [ %b_user_interlaced.0.i, %sw.bb61.i ], [ %b_user_interlaced.0.i, %sw.bb28.i ], [ %b_user_interlaced.0.i, %sw.bb32.i ], [ %b_user_interlaced.0.i, %sw.bb40.i ], [ %b_user_interlaced.0.i, %sw.bb49.i ], [ %b_user_interlaced.0.i, %sw.bb60.i ], [ %b_user_interlaced.0.i, %for.cond18.i ], [ %b_user_interlaced.0.i, %for.cond18.i ], [ %b_user_interlaced.0.i, %for.cond18.i ], [ %b_user_interlaced.0.i, %sw.bb78.i ], [ %b_user_interlaced.0.i, %sw.bb79.i ], [ %b_user_interlaced.0.i, %sw.bb81.i ], [ %b_user_interlaced.0.i, %sw.bb83.i ], [ %b_user_interlaced.0.i, %sw.bb86.i ], [ %b_user_interlaced.0.i, %sw.bb87.i ], [ %b_user_interlaced.0.i, %sw.bb91.i ], [ %b_user_interlaced.0.i, %sw.bb92.i ], [ %b_user_interlaced.0.i, %sw.bb99.i ], [ %b_user_interlaced.0.i, %parse_enum_value.exit.i ], [ %b_user_interlaced.0.i, %for.cond.i.2.i ], [ %b_user_interlaced.0.i, %for.cond.i.1.i ], [ %b_user_interlaced.0.i, %for.cond.i.i ], [ %b_user_interlaced.0.i, %sw.bb50.i ], [ %b_user_interlaced.0.i, %sw.bb55.i ], [ %b_user_interlaced.0.i, %for.cond.i512.i ], [ %b_user_interlaced.0.i, %for.cond.i512.1.i ], !dbg !2842
  %profile.2.i = phi ptr [ %profile.0.i, %sw.epilog.i ], [ %profile.0.i, %sw.bb61.i ], [ %profile.0.i, %sw.bb28.i ], [ %profile.0.i, %sw.bb32.i ], [ %profile.0.i, %sw.bb40.i ], [ %profile.0.i, %sw.bb49.i ], [ %profile.0.i, %sw.bb60.i ], [ %profile.0.i, %for.cond18.i ], [ %profile.0.i, %for.cond18.i ], [ %profile.0.i, %for.cond18.i ], [ %profile.0.i, %sw.bb78.i ], [ %profile.0.i, %sw.bb79.i ], [ %profile.0.i, %sw.bb81.i ], [ %profile.0.i, %sw.bb83.i ], [ %14, %sw.bb86.i ], [ %profile.0.i, %sw.bb87.i ], [ %profile.0.i, %sw.bb91.i ], [ %profile.0.i, %sw.bb92.i ], [ %profile.0.i, %sw.bb99.i ], [ %profile.0.i, %parse_enum_value.exit.i ], [ %profile.0.i, %for.cond.i.2.i ], [ %profile.0.i, %for.cond.i.1.i ], [ %profile.0.i, %for.cond.i.i ], [ %profile.0.i, %sw.bb50.i ], [ %profile.0.i, %sw.bb55.i ], [ %profile.0.i, %for.cond.i512.i ], [ %profile.0.i, %for.cond.i512.1.i ], !dbg !2843
  %tcfile_name.2.i = phi ptr [ %tcfile_name.0.i, %sw.epilog.i ], [ %tcfile_name.0.i, %sw.bb61.i ], [ %tcfile_name.0.i, %sw.bb28.i ], [ %tcfile_name.0.i, %sw.bb32.i ], [ %tcfile_name.0.i, %sw.bb40.i ], [ %tcfile_name.0.i, %sw.bb49.i ], [ %tcfile_name.0.i, %sw.bb60.i ], [ %tcfile_name.0.i, %for.cond18.i ], [ %tcfile_name.0.i, %for.cond18.i ], [ %tcfile_name.0.i, %for.cond18.i ], [ %tcfile_name.0.i, %sw.bb78.i ], [ %tcfile_name.0.i, %sw.bb79.i ], [ %tcfile_name.0.i, %sw.bb81.i ], [ %tcfile_name.0.i, %sw.bb83.i ], [ %tcfile_name.0.i, %sw.bb86.i ], [ %tcfile_name.0.i, %sw.bb87.i ], [ %15, %sw.bb91.i ], [ %tcfile_name.0.i, %sw.bb92.i ], [ %tcfile_name.0.i, %sw.bb99.i ], [ %tcfile_name.0.i, %parse_enum_value.exit.i ], [ %tcfile_name.0.i, %for.cond.i.2.i ], [ %tcfile_name.0.i, %for.cond.i.1.i ], [ %tcfile_name.0.i, %for.cond.i.i ], [ %tcfile_name.0.i, %sw.bb50.i ], [ %tcfile_name.0.i, %sw.bb55.i ], [ %tcfile_name.0.i, %for.cond.i512.i ], [ %tcfile_name.0.i, %for.cond.i512.1.i ], !dbg !2844
  %output_filename.2.i = phi ptr [ %output_filename.0.i, %sw.epilog.i ], [ %output_filename.0.i, %sw.bb61.i ], [ %output_filename.0.i, %sw.bb28.i ], [ %output_filename.0.i, %sw.bb32.i ], [ %output_filename.0.i, %sw.bb40.i ], [ %5, %sw.bb49.i ], [ %output_filename.0.i, %sw.bb60.i ], [ %output_filename.0.i, %for.cond18.i ], [ %output_filename.0.i, %for.cond18.i ], [ %output_filename.0.i, %for.cond18.i ], [ %output_filename.0.i, %sw.bb78.i ], [ %output_filename.0.i, %sw.bb79.i ], [ %output_filename.0.i, %sw.bb81.i ], [ %output_filename.0.i, %sw.bb83.i ], [ %output_filename.0.i, %sw.bb86.i ], [ %output_filename.0.i, %sw.bb87.i ], [ %output_filename.0.i, %sw.bb91.i ], [ %output_filename.0.i, %sw.bb92.i ], [ %output_filename.0.i, %sw.bb99.i ], [ %output_filename.0.i, %parse_enum_value.exit.i ], [ %output_filename.0.i, %for.cond.i.2.i ], [ %output_filename.0.i, %for.cond.i.1.i ], [ %output_filename.0.i, %for.cond.i.i ], [ %output_filename.0.i, %sw.bb50.i ], [ %output_filename.0.i, %sw.bb55.i ], [ %output_filename.0.i, %for.cond.i512.i ], [ %output_filename.0.i, %for.cond.i512.1.i ], !dbg !2845
    #dbg_value(ptr %muxer.3.i, !2747, !DIExpression(), !2790)
    #dbg_value(ptr %demuxer.3.i, !2745, !DIExpression(), !2790)
    #dbg_value(ptr %output_filename.2.i, !2746, !DIExpression(), !2790)
    #dbg_value(ptr %tcfile_name.2.i, !2748, !DIExpression(), !2790)
    #dbg_value(ptr %profile.2.i, !2749, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_interlaced.3.i, !2754, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_fps.3.i, !2753, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_ref.3.i, !2752, !DIExpression(), !2790)
    #dbg_value(i32 %b_turbo.3.i, !2751, !DIExpression(), !2790)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_options_index.i) #15, !dbg !3029
  br label %for.cond18.i

for.end145.i:                                     ; preds = %for.cond18.i
    #dbg_value(ptr %muxer.0.i, !2747, !DIExpression(), !2790)
    #dbg_value(ptr %demuxer.0.i, !2745, !DIExpression(), !2790)
    #dbg_value(ptr %output_filename.0.i, !2746, !DIExpression(), !2790)
    #dbg_value(ptr %tcfile_name.0.i, !2748, !DIExpression(), !2790)
    #dbg_value(ptr %profile.0.i, !2749, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_interlaced.0.i, !2754, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_fps.0.i, !2753, !DIExpression(), !2790)
    #dbg_value(i32 %b_user_ref.0.i, !2752, !DIExpression(), !2790)
    #dbg_value(i32 %b_turbo.1.i, !2751, !DIExpression(), !2790)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_options_index.i) #15, !dbg !3029
  %tobool146.not.i = icmp eq i32 %b_turbo.1.i, 0, !dbg !3030
  br i1 %tobool146.not.i, label %if.end148.i, label %if.then147.i, !dbg !3032

if.then147.i:                                     ; preds = %for.end145.i
  call void @x264_param_apply_fastfirstpass(ptr noundef nonnull %param) #15, !dbg !3033
  br label %if.end148.i, !dbg !3033

if.end148.i:                                      ; preds = %if.then147.i, %for.end145.i
  %call149.i = call i32 @x264_param_apply_profile(ptr noundef nonnull %param, ptr noundef %profile.0.i) #15, !dbg !3034
  %cmp150.i = icmp slt i32 %call149.i, 0, !dbg !3036
  br i1 %cmp150.i, label %Parse.exit.thread, label %if.end152.i, !dbg !3037

if.end152.i:                                      ; preds = %if.end148.i
  %64 = load i32, ptr @optind, align 4, !dbg !3038
  %cmp154.i = icmp slt i32 %64, %argc, !dbg !3040
  %tobool155.i = icmp ne ptr %output_filename.0.i, null
  %or.cond.i = select i1 %cmp154.i, i1 %tobool155.i, i1 false, !dbg !3041
  br i1 %or.cond.i, label %if.end161.i, label %if.then156.i, !dbg !3041

if.then156.i:                                     ; preds = %if.end152.i
  %65 = load ptr, ptr @stderr, align 8, !dbg !3042
  %cond159.i = select i1 %cmp154.i, ptr @.str.11, ptr @.str.10, !dbg !3044
  %call160.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond159.i) #18, !dbg !3045
  br label %Parse.exit.thread, !dbg !3046

if.end161.i:                                      ; preds = %if.end152.i
    #dbg_value(ptr %muxer.0.i, !3047, !DIExpression(), !3055)
    #dbg_value(ptr %output_filename.0.i, !3052, !DIExpression(), !3055)
    #dbg_value(ptr %param, !3053, !DIExpression(), !3055)
    #dbg_value(ptr %output_filename.0.i, !3058, !DIExpression(), !3064)
  %call.i.i.i = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %output_filename.0.i) #16, !dbg !3066
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %output_filename.0.i, i64 %call.i.i.i, !dbg !3067
    #dbg_value(ptr %add.ptr.i.i.i, !3063, !DIExpression(), !3064)
  br label %while.cond.i.i.i, !dbg !3068

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i, %if.end161.i
  %ext.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end161.i ], [ %incdec.ptr.i.i.i, %while.cond.i.i.i ], !dbg !3064
    #dbg_value(ptr %ext.0.i.i.i, !3063, !DIExpression(), !3064)
  %66 = load i8, ptr %ext.0.i.i.i, align 1, !dbg !3069
  %cmp.i.i.i = icmp ne i8 %66, 46, !dbg !3070
  %cmp2.i.i.i = icmp ugt ptr %ext.0.i.i.i, %output_filename.0.i, !dbg !3071
  %67 = and i1 %cmp2.i.i.i, %cmp.i.i.i, !dbg !3071
  %incdec.ptr.i.i.i = getelementptr inbounds i8, ptr %ext.0.i.i.i, i64 -1, !dbg !3072
    #dbg_value(ptr %incdec.ptr.i.i.i, !3063, !DIExpression(), !3064)
  br i1 %67, label %while.cond.i.i.i, label %sub_0.i.i, !dbg !3068, !llvm.loop !3073

sub_0.i.i:                                        ; preds = %while.cond.i.i.i
    #dbg_value(!DIArgList(ptr %ext.0.i.i.i, i8 %66), !3063, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 46, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3064)
    #dbg_value(!DIArgList(ptr %ext.0.i.i.i, i8 %66), !3054, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 46, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3055)
  %68 = load i8, ptr %output_filename.0.i, align 1
  %.not.i.i = icmp eq i8 %68, 45
  br i1 %.not.i.i, label %get_filename_extension.exit.tail.i.i, label %lor.lhs.false.i.i

get_filename_extension.exit.tail.i.i:             ; preds = %sub_0.i.i
  %69 = getelementptr inbounds i8, ptr %output_filename.0.i, i64 1
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 0, !dbg !3074
  br i1 %71, label %if.then.i523.i, label %lor.lhs.false.i.i, !dbg !3076

lor.lhs.false.i.i:                                ; preds = %get_filename_extension.exit.tail.i.i, %sub_0.i.i
  %cmp5.i.i.i = icmp eq i8 %66, 46, !dbg !3077
    #dbg_value(!DIArgList(ptr %ext.0.i.i.i, i1 %cmp5.i.i.i), !3063, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3064)
    #dbg_value(!DIArgList(ptr %ext.0.i.i.i, i1 %cmp5.i.i.i), !3054, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3055)
  %idx.ext.i.i.i = zext i1 %cmp5.i.i.i to i64, !dbg !3078
    #dbg_value(!DIArgList(ptr %ext.0.i.i.i, i64 %idx.ext.i.i.i), !3054, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3055)
    #dbg_value(!DIArgList(ptr %ext.0.i.i.i, i64 %idx.ext.i.i.i), !3063, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3064)
  %add.ptr7.i.i.i = getelementptr inbounds i8, ptr %ext.0.i.i.i, i64 %idx.ext.i.i.i, !dbg !3078
    #dbg_value(ptr %add.ptr7.i.i.i, !3063, !DIExpression(), !3064)
    #dbg_value(ptr %add.ptr7.i.i.i, !3054, !DIExpression(), !3055)
  %call2.i.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %muxer.0.i, ptr noundef nonnull dereferenceable(5) @.str.22) #16, !dbg !3079
  %tobool3.not.i522.i = icmp eq i32 %call2.i.i, 0, !dbg !3079
  br i1 %tobool3.not.i522.i, label %if.end.i.i, label %if.then.i523.i, !dbg !3080

if.then.i523.i:                                   ; preds = %lor.lhs.false.i.i, %get_filename_extension.exit.tail.i.i
    #dbg_value(ptr %muxer.0.i, !3054, !DIExpression(), !3055)
  br label %if.end.i.i, !dbg !3081

if.end.i.i:                                       ; preds = %if.then.i523.i, %lor.lhs.false.i.i
  %ext.0.i.i = phi ptr [ %muxer.0.i, %if.then.i523.i ], [ %add.ptr7.i.i.i, %lor.lhs.false.i.i ], !dbg !3055
    #dbg_value(ptr %ext.0.i.i, !3054, !DIExpression(), !3055)
  %call4.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %ext.0.i.i, ptr noundef nonnull dereferenceable(4) @.str.364) #16, !dbg !3082
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0, !dbg !3082
  br i1 %tobool5.not.i.i, label %select_output.exit.i, label %if.else.i.i, !dbg !3084

if.else.i.i:                                      ; preds = %if.end.i.i
  %call8.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %ext.0.i.i, ptr noundef nonnull dereferenceable(4) @.str.26) #16, !dbg !3085
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0, !dbg !3085
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.else11.i.i, !dbg !3087

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @mkv_output, i64 40, i1 false), !dbg !3088
  %b_annexb.i.i = getelementptr inbounds i8, ptr %param, i64 640, !dbg !3090
  store i32 0, ptr %b_annexb.i.i, align 8, !dbg !3091, !DIAssignID !3092
    #dbg_assign(i32 0, !1501, !DIExpression(DW_OP_LLVM_fragment, 5120, 32), !3092, ptr %b_annexb.i.i, !DIExpression(), !2802)
  %b_dts_compress.i.i = getelementptr inbounds i8, ptr %param, i64 668, !dbg !3093
  store i32 0, ptr %b_dts_compress.i.i, align 4, !dbg !3094, !DIAssignID !3095
    #dbg_assign(i32 0, !1501, !DIExpression(DW_OP_LLVM_fragment, 5344, 32), !3095, ptr %b_dts_compress.i.i, !DIExpression(), !2802)
  %b_repeat_headers.i.i = getelementptr inbounds i8, ptr %param, i64 636, !dbg !3096
  store i32 0, ptr %b_repeat_headers.i.i, align 4, !dbg !3097, !DIAssignID !3098
    #dbg_assign(i32 0, !1501, !DIExpression(DW_OP_LLVM_fragment, 5088, 32), !3098, ptr %b_repeat_headers.i.i, !DIExpression(), !2802)
  br label %if.end165.i, !dbg !3099

if.else11.i.i:                                    ; preds = %if.else.i.i
  %call12.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %ext.0.i.i, ptr noundef nonnull dereferenceable(4) @.str.27) #16, !dbg !3100
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0, !dbg !3100
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %if.else18.i.i, !dbg !3102

if.then14.i.i:                                    ; preds = %if.else11.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @flv_output, i64 40, i1 false), !dbg !3103
  %b_annexb15.i.i = getelementptr inbounds i8, ptr %param, i64 640, !dbg !3105
  store i32 0, ptr %b_annexb15.i.i, align 8, !dbg !3106, !DIAssignID !3107
    #dbg_assign(i32 0, !1501, !DIExpression(DW_OP_LLVM_fragment, 5120, 32), !3107, ptr %b_annexb15.i.i, !DIExpression(), !2802)
  %b_dts_compress16.i.i = getelementptr inbounds i8, ptr %param, i64 668, !dbg !3108
  store i32 1, ptr %b_dts_compress16.i.i, align 4, !dbg !3109, !DIAssignID !3110
    #dbg_assign(i32 1, !1501, !DIExpression(DW_OP_LLVM_fragment, 5344, 32), !3110, ptr %b_dts_compress16.i.i, !DIExpression(), !2802)
  %b_repeat_headers17.i.i = getelementptr inbounds i8, ptr %param, i64 636, !dbg !3111
  store i32 0, ptr %b_repeat_headers17.i.i, align 4, !dbg !3112, !DIAssignID !3113
    #dbg_assign(i32 0, !1501, !DIExpression(DW_OP_LLVM_fragment, 5088, 32), !3113, ptr %b_repeat_headers17.i.i, !DIExpression(), !2802)
  br label %if.end165.i, !dbg !3114

if.else18.i.i:                                    ; preds = %if.else11.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @raw_output, i64 40, i1 false), !dbg !3115
  br label %if.end165.i

select_output.exit.i:                             ; preds = %if.end.i.i
  %72 = load ptr, ptr @stderr, align 8, !dbg !3116
  %73 = call i64 @fwrite(ptr nonnull @.str.365, i64 51, i64 1, ptr %72) #19, !dbg !3118
  br label %Parse.exit.thread, !dbg !3119

if.end165.i:                                      ; preds = %if.else18.i.i, %if.then14.i.i, %if.then10.i.i
  %74 = load ptr, ptr @output, align 8, !dbg !3120
  %hout.i = getelementptr inbounds i8, ptr %opt, i64 16, !dbg !3122
  %call166.i = call i32 %74(ptr noundef nonnull %output_filename.0.i, ptr noundef nonnull %hout.i) #15, !dbg !3123
  %tobool167.not.i = icmp eq i32 %call166.i, 0, !dbg !3123
  br i1 %tobool167.not.i, label %if.end170.i, label %if.then168.i, !dbg !3124

if.then168.i:                                     ; preds = %if.end165.i
  %75 = load ptr, ptr @stderr, align 8, !dbg !3125
  %call169.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.12, ptr noundef nonnull %output_filename.0.i) #18, !dbg !3127
  br label %Parse.exit.thread, !dbg !3128

if.end170.i:                                      ; preds = %if.end165.i
  %76 = load i32, ptr @optind, align 4, !dbg !3129
  %inc171.i = add nsw i32 %76, 1, !dbg !3129
  store i32 %inc171.i, ptr @optind, align 4, !dbg !3129
  %idxprom172.i = sext i32 %76 to i64, !dbg !3130
  %arrayidx173.i = getelementptr inbounds ptr, ptr %argv, i64 %idxprom172.i, !dbg !3130
  %77 = load ptr, ptr %arrayidx173.i, align 8, !dbg !3130
    #dbg_value(ptr %77, !2744, !DIExpression(), !2790)
  %cmp174.i = icmp slt i32 %inc171.i, %argc, !dbg !3131
  br i1 %cmp174.i, label %cond.true175.i, label %cond.end180.i, !dbg !3132

cond.true175.i:                                   ; preds = %if.end170.i
  %inc176.i = add nsw i32 %76, 2, !dbg !3133
  store i32 %inc176.i, ptr @optind, align 4, !dbg !3133
  %idxprom177.i = sext i32 %inc171.i to i64, !dbg !3134
  %arrayidx178.i = getelementptr inbounds ptr, ptr %argv, i64 %idxprom177.i, !dbg !3134
  %78 = load ptr, ptr %arrayidx178.i, align 8, !dbg !3134
  br label %cond.end180.i, !dbg !3132

cond.end180.i:                                    ; preds = %cond.true175.i, %if.end170.i
  %cond181.i = phi ptr [ %78, %cond.true175.i ], [ null, %if.end170.i ], !dbg !3132
  %resolution.i = getelementptr inbounds i8, ptr %input_opt.i, i64 8, !dbg !3135
  store ptr %cond181.i, ptr %resolution.i, align 8, !dbg !3136, !DIAssignID !3137
    #dbg_assign(ptr %cond181.i, !2755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3137, ptr %resolution.i, !DIExpression(), !2790)
  %79 = getelementptr inbounds i8, ptr %info.i, i64 12, !dbg !3138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %79, i8 0, i64 36, i1 false), !dbg !3138, !DIAssignID !3139
    #dbg_assign(i8 0, !2778, !DIExpression(), !3139, ptr %info.i, !DIExpression(), !2790)
    #dbg_assign(i8 0, !2778, !DIExpression(DW_OP_LLVM_fragment, 0, 96), !3140, ptr undef, !DIExpression(), !2790)
  %i_csp.i = getelementptr inbounds i8, ptr %param, i64 28, !dbg !3141
  %80 = load i32, ptr %i_csp.i, align 4, !dbg !3141
  store i32 %80, ptr %info.i, align 4, !dbg !3142, !DIAssignID !3143
    #dbg_assign(i32 %80, !2778, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3143, ptr %info.i, !DIExpression(), !2790)
  %i_fps_num.i = getelementptr inbounds i8, ptr %param, i64 652, !dbg !3144
  %fps_num.i = getelementptr inbounds i8, ptr %info.i, i64 4, !dbg !3145
    #dbg_assign(i32 poison, !2778, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3146, ptr %fps_num.i, !DIExpression(), !2790)
  %i_fps_den.i = getelementptr inbounds i8, ptr %param, i64 656, !dbg !3147
  %fps_den.i = getelementptr inbounds i8, ptr %info.i, i64 8, !dbg !3148
  %81 = load <2 x i32>, ptr %i_fps_num.i, align 4, !dbg !3144
  store <2 x i32> %81, ptr %fps_num.i, align 4, !dbg !3149, !DIAssignID !3146
    #dbg_assign(i32 poison, !2778, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !3146, ptr %fps_den.i, !DIExpression(), !2790)
  %b_interlaced.i = getelementptr inbounds i8, ptr %param, i64 136, !dbg !3150
  %82 = load i32, ptr %b_interlaced.i, align 8, !dbg !3150
  %interlaced.i = getelementptr inbounds i8, ptr %info.i, i64 16, !dbg !3151
  store i32 %82, ptr %interlaced.i, align 4, !dbg !3152, !DIAssignID !3153
    #dbg_assign(i32 %82, !2778, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !3153, ptr %interlaced.i, !DIExpression(), !2790)
  %vui.i = getelementptr inbounds i8, ptr %param, i64 44, !dbg !3154
  %i_sar_width.i = getelementptr inbounds i8, ptr %param, i64 48, !dbg !3155
  %sar_width.i = getelementptr inbounds i8, ptr %info.i, i64 20, !dbg !3156
    #dbg_assign(i32 poison, !2778, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !3157, ptr %sar_width.i, !DIExpression(), !2790)
  %sar_height.i = getelementptr inbounds i8, ptr %info.i, i64 24, !dbg !3158
  %83 = load <2 x i32>, ptr %vui.i, align 4, !dbg !3159
  %84 = shufflevector <2 x i32> %83, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !3160
  store <2 x i32> %84, ptr %sar_width.i, align 4, !dbg !3160, !DIAssignID !3157
    #dbg_assign(i32 poison, !2778, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !3157, ptr %sar_height.i, !DIExpression(), !2790)
  %b_tff.i = getelementptr inbounds i8, ptr %param, i64 672, !dbg !3161
  %85 = load i32, ptr %b_tff.i, align 8, !dbg !3161
  %tff.i = getelementptr inbounds i8, ptr %info.i, i64 28, !dbg !3162
  store i32 %85, ptr %tff.i, align 4, !dbg !3163, !DIAssignID !3164
    #dbg_assign(i32 %85, !2778, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !3164, ptr %tff.i, !DIExpression(), !2790)
  %86 = load i32, ptr %b_vfr_input.i, align 8, !dbg !3165
  %vfr.i = getelementptr inbounds i8, ptr %info.i, i64 40, !dbg !3166
  store i32 %86, ptr %vfr.i, align 4, !dbg !3167, !DIAssignID !3168
    #dbg_assign(i32 %86, !2778, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !3168, ptr %vfr.i, !DIExpression(), !2790)
    #dbg_value(ptr %demuxer.0.i, !3169, !DIExpression(), !3186)
    #dbg_value(ptr %demuxername.i, !3174, !DIExpression(), !3186)
    #dbg_value(ptr %77, !3175, !DIExpression(), !3186)
    #dbg_value(ptr %hin.i, !3176, !DIExpression(), !3186)
    #dbg_value(ptr %info.i, !3177, !DIExpression(), !3186)
    #dbg_value(ptr %input_opt.i, !3178, !DIExpression(), !3186)
    #dbg_value(ptr %77, !3058, !DIExpression(), !3189)
  %call.i.i524.i = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %77) #16, !dbg !3191
  %add.ptr.i.i525.i = getelementptr inbounds i8, ptr %77, i64 %call.i.i524.i, !dbg !3192
    #dbg_value(ptr %add.ptr.i.i525.i, !3063, !DIExpression(), !3189)
  br label %while.cond.i.i526.i, !dbg !3193

while.cond.i.i526.i:                              ; preds = %while.cond.i.i526.i, %cond.end180.i
  %ext.0.i.i527.i = phi ptr [ %add.ptr.i.i525.i, %cond.end180.i ], [ %incdec.ptr.i.i530.i, %while.cond.i.i526.i ], !dbg !3189
    #dbg_value(ptr %ext.0.i.i527.i, !3063, !DIExpression(), !3189)
  %87 = load i8, ptr %ext.0.i.i527.i, align 1, !dbg !3194
  %cmp.i.i528.i = icmp ne i8 %87, 46, !dbg !3195
  %cmp2.i.i529.i = icmp ugt ptr %ext.0.i.i527.i, %77, !dbg !3196
  %88 = and i1 %cmp2.i.i529.i, %cmp.i.i528.i, !dbg !3196
  %incdec.ptr.i.i530.i = getelementptr inbounds i8, ptr %ext.0.i.i527.i, i64 -1, !dbg !3197
    #dbg_value(ptr %incdec.ptr.i.i530.i, !3063, !DIExpression(), !3189)
  br i1 %88, label %while.cond.i.i526.i, label %get_filename_extension.exit.i.i, !dbg !3193, !llvm.loop !3198

get_filename_extension.exit.i.i:                  ; preds = %while.cond.i.i526.i
  %hin.i = getelementptr inbounds i8, ptr %opt, i64 8, !dbg !3199
  %cmp5.i.i531.i = icmp eq i8 %87, 46, !dbg !3200
  %idx.ext.i.i532.i = zext i1 %cmp5.i.i531.i to i64, !dbg !3201
  %add.ptr7.i.i533.i = getelementptr inbounds i8, ptr %ext.0.i.i527.i, i64 %idx.ext.i.i532.i, !dbg !3201
    #dbg_value(ptr %add.ptr7.i.i533.i, !3063, !DIExpression(), !3189)
    #dbg_value(ptr %add.ptr7.i.i533.i, !3179, !DIExpression(), !3186)
  %89 = load i8, ptr %77, align 1
  %.not.i534.i = icmp eq i8 %89, 45
  br i1 %.not.i534.i, label %sub_1.i.i, label %get_filename_extension.exit.tail.i535.i

sub_1.i.i:                                        ; preds = %get_filename_extension.exit.i.i
  %90 = getelementptr inbounds i8, ptr %77, i64 1
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, 0, !dbg !3202
  br label %get_filename_extension.exit.tail.i535.i

get_filename_extension.exit.tail.i535.i:          ; preds = %sub_1.i.i, %get_filename_extension.exit.i.i
  %tobool3.i.i = phi i1 [ false, %get_filename_extension.exit.i.i ], [ %92, %sub_1.i.i ]
    #dbg_value(i1 %tobool3.i.i, !3180, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !3186)
  %call2.i536.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %demuxer.0.i, ptr noundef nonnull dereferenceable(5) @.str.22) #16, !dbg !3204
  %tobool.not.i537.i = icmp eq i32 %call2.i536.i, 0, !dbg !3205
    #dbg_value(i1 %tobool.not.i537.i, !3181, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3186)
  %or.cond.i.i = select i1 %tobool3.i.i, i1 %tobool.not.i537.i, i1 false, !dbg !3206
  %spec.select.i.i = select i1 %or.cond.i.i, ptr @.str.23, ptr %add.ptr7.i.i533.i, !dbg !3206
    #dbg_value(ptr %spec.select.i.i, !3179, !DIExpression(), !3186)
  br i1 %tobool3.i.i, label %if.end13.i.i, label %if.then6.i538.i, !dbg !3207

if.then6.i538.i:                                  ; preds = %get_filename_extension.exit.tail.i535.i
  %call7.i.i = call noalias ptr @fopen(ptr noundef nonnull %77, ptr noundef nonnull @.str.366), !dbg !3208
    #dbg_value(ptr %call7.i.i, !3182, !DIExpression(), !3209)
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null, !dbg !3210
  br i1 %tobool8.not.i.i, label %if.end13.i.i, label %if.then9.i.i, !dbg !3212

if.then9.i.i:                                     ; preds = %if.then6.i538.i
    #dbg_value(i8 1, !3180, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3186)
  %call11.i.i = call i32 @fclose(ptr noundef nonnull %call7.i.i), !dbg !3213
  br label %if.end13.i.i, !dbg !3215

if.end13.i.i:                                     ; preds = %if.then9.i.i, %if.then6.i538.i, %get_filename_extension.exit.tail.i535.i
  %cond.i.i = select i1 %tobool.not.i537.i, ptr %spec.select.i.i, ptr %demuxer.0.i, !dbg !3216
    #dbg_value(ptr %cond.i.i, !3185, !DIExpression(), !3186)
  %call15.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond.i.i, ptr noundef nonnull dereferenceable(4) @.str.367) #16, !dbg !3217
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0, !dbg !3217
  br i1 %tobool16.not.i.i, label %if.then22.i.i, label %lor.lhs.false.i539.i, !dbg !3219

lor.lhs.false.i539.i:                             ; preds = %if.end13.i.i
  %call17.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i.i, ptr noundef nonnull dereferenceable(4) @.str.368) #16, !dbg !3220
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0, !dbg !3220
  br i1 %tobool18.not.i.i, label %if.then22.i.i, label %lor.lhs.false19.i.i, !dbg !3221

lor.lhs.false19.i.i:                              ; preds = %lor.lhs.false.i539.i
  %call20.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i.i, ptr noundef nonnull dereferenceable(4) @.str.369) #16, !dbg !3222
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0, !dbg !3222
  br i1 %tobool21.not.i.i, label %if.then22.i.i, label %if.else.i540.i, !dbg !3223

if.then22.i.i:                                    ; preds = %lor.lhs.false19.i.i, %lor.lhs.false.i539.i, %if.end13.i.i
  %93 = load ptr, ptr @stderr, align 8, !dbg !3224
  %94 = call i64 @fwrite(ptr nonnull @.str.370, i64 50, i64 1, ptr %93) #19, !dbg !3226
  br label %Parse.exit.thread, !dbg !3227

if.else.i540.i:                                   ; preds = %lor.lhs.false19.i.i
  %call24.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond.i.i, ptr noundef nonnull dereferenceable(4) @.str.24) #16, !dbg !3228
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0, !dbg !3228
  br i1 %tobool25.not.i.i, label %if.then26.i.i, label %if.else27.i.i, !dbg !3230

if.then26.i.i:                                    ; preds = %if.else.i540.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @y4m_input, i64 56, i1 false), !dbg !3231
  br label %if.end187.i, !dbg !3232

if.else27.i.i:                                    ; preds = %if.else.i540.i
  %call28.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond.i.i, ptr noundef nonnull dereferenceable(4) @.str.23) #16, !dbg !3233
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0, !dbg !3233
  br i1 %tobool29.not.i.i, label %if.then30.i.i, label %if.else31.i.i, !dbg !3235

if.then30.i.i:                                    ; preds = %if.else27.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @yuv_input, i64 56, i1 false), !dbg !3236
  br label %if.end187.i, !dbg !3237

if.else31.i.i:                                    ; preds = %if.else27.i.i
  br i1 %tobool.not.i537.i, label %land.lhs.true33.i.i, label %if.end37.i.i, !dbg !3238

land.lhs.true33.i.i:                              ; preds = %if.else31.i.i
  %95 = load ptr, ptr @yuv_input, align 8, !dbg !3241
  %call34.i.i = call i32 %95(ptr noundef nonnull %77, ptr noundef nonnull %hin.i, ptr noundef nonnull %info.i, ptr noundef nonnull %input_opt.i) #15, !dbg !3242
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0, !dbg !3242
  br i1 %tobool35.not.i.i, label %if.then36.i.i, label %if.end37.i.i, !dbg !3243

if.then36.i.i:                                    ; preds = %land.lhs.true33.i.i
    #dbg_value(ptr @.str.23, !3185, !DIExpression(), !3186)
    #dbg_value(i32 0, !3181, !DIExpression(), !3186)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @yuv_input, i64 56, i1 false), !dbg !3244
  br label %if.end37.i.i, !dbg !3246

if.end37.i.i:                                     ; preds = %if.then36.i.i, %land.lhs.true33.i.i, %if.else31.i.i
  %module.0.i.i = phi ptr [ %spec.select.i.i, %land.lhs.true33.i.i ], [ @.str.23, %if.then36.i.i ], [ %demuxer.0.i, %if.else31.i.i ], !dbg !3186
    #dbg_value(ptr %module.0.i.i, !3185, !DIExpression(), !3186)
  %96 = load ptr, ptr %hin.i, align 8, !dbg !3247
  %tobool38.not.i.i = icmp eq ptr %96, null, !dbg !3249
  br i1 %tobool38.not.i.i, label %if.then39.i.i, label %if.end187.thread.i, !dbg !3250

if.end187.thread.i:                               ; preds = %if.end37.i.i
    #dbg_value(ptr %module.0.i.i, !3185, !DIExpression(), !3186)
  %call45.i609.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %demuxername.i, ptr noundef nonnull dereferenceable(1) %module.0.i.i) #15, !dbg !3251
  br label %if.end196.i, !dbg !3252

if.then39.i.i:                                    ; preds = %if.end37.i.i
  %97 = load ptr, ptr @stderr, align 8, !dbg !3254
  %call40.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.371, ptr noundef nonnull %77) #18, !dbg !3256
  br label %Parse.exit.thread, !dbg !3257

if.end187.i:                                      ; preds = %if.then30.i.i, %if.then26.i.i
  %.pr607.i = load ptr, ptr %hin.i, align 8, !dbg !3258
    #dbg_value(ptr %cond.i.i, !3185, !DIExpression(), !3186)
  %call45.i.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %demuxername.i, ptr noundef nonnull dereferenceable(1) %cond.i.i) #15, !dbg !3251
  %tobool189.not.i = icmp eq ptr %.pr607.i, null, !dbg !3259
  br i1 %tobool189.not.i, label %land.lhs.true190.i, label %if.end196.i, !dbg !3252

land.lhs.true190.i:                               ; preds = %if.end187.i
  %98 = load ptr, ptr @input, align 8, !dbg !3260
  %call192.i = call i32 %98(ptr noundef nonnull %77, ptr noundef nonnull %hin.i, ptr noundef nonnull %info.i, ptr noundef nonnull %input_opt.i) #15, !dbg !3261
  %tobool193.not.i = icmp eq i32 %call192.i, 0, !dbg !3261
  br i1 %tobool193.not.i, label %if.end196.i, label %if.then194.i, !dbg !3262

if.then194.i:                                     ; preds = %land.lhs.true190.i
  %99 = load ptr, ptr @stderr, align 8, !dbg !3263
  %call195.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.13, ptr noundef nonnull %77) #18, !dbg !3265
  br label %Parse.exit.thread, !dbg !3266

if.end196.i:                                      ; preds = %land.lhs.true190.i, %if.end187.i, %if.end187.thread.i
  call void @x264_reduce_fraction(ptr noundef nonnull %sar_width.i, ptr noundef nonnull %sar_height.i) #15, !dbg !3267
  call void @x264_reduce_fraction(ptr noundef nonnull %fps_num.i, ptr noundef nonnull %fps_den.i) #15, !dbg !3268
  %100 = load i32, ptr %i_log_level80.i, align 8, !dbg !3269
  %cmp202.i = icmp sgt i32 %100, 1, !dbg !3271
  br i1 %cmp202.i, label %if.then203.i, label %if.end216.i, !dbg !3272

if.then203.i:                                     ; preds = %if.end196.i
  %101 = load ptr, ptr @stderr, align 8, !dbg !3273
  %width.i = getelementptr inbounds i8, ptr %info.i, i64 44, !dbg !3274
  %102 = load i32, ptr %width.i, align 4, !dbg !3274
  %103 = load i32, ptr %79, align 4, !dbg !3275
  %104 = load i32, ptr %interlaced.i, align 4, !dbg !3276
  %tobool206.not.i = icmp eq i32 %104, 0, !dbg !3277
  %cond207.i = select i1 %tobool206.not.i, i32 112, i32 105, !dbg !3277
  %105 = load i32, ptr %sar_width.i, align 4, !dbg !3278
  %106 = load i32, ptr %sar_height.i, align 4, !dbg !3279
  %107 = load i32, ptr %fps_num.i, align 4, !dbg !3280
  %108 = load i32, ptr %fps_den.i, align 4, !dbg !3281
  %109 = load i32, ptr %vfr.i, align 4, !dbg !3282
  %tobool213.not.i = icmp eq i32 %109, 0, !dbg !3283
  %cond214.i = select i1 %tobool213.not.i, i32 99, i32 118, !dbg !3283
  %call215.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.14, ptr noundef nonnull %demuxername.i, i32 noundef %102, i32 noundef %103, i32 noundef %cond207.i, i32 noundef %105, i32 noundef %106, i32 noundef %107, i32 noundef %108, i32 noundef %cond214.i) #18, !dbg !3284
  br label %if.end216.i, !dbg !3284

if.end216.i:                                      ; preds = %if.then203.i, %if.end196.i
  %tobool217.not.i = icmp eq ptr %tcfile_name.0.i, null, !dbg !3285
  br i1 %tobool217.not.i, label %if.else230.i, label %if.then218.i, !dbg !3287

if.then218.i:                                     ; preds = %if.end216.i
  %tobool219.not.i = icmp eq i32 %b_user_fps.0.i, 0, !dbg !3288
  br i1 %tobool219.not.i, label %if.end222.i, label %if.then220.i, !dbg !3291

if.then220.i:                                     ; preds = %if.then218.i
  %110 = load ptr, ptr @stderr, align 8, !dbg !3292
  %111 = call i64 @fwrite(ptr nonnull @.str.15, i64 51, i64 1, ptr %110) #19, !dbg !3294
  br label %Parse.exit.thread, !dbg !3295

if.end222.i:                                      ; preds = %if.then218.i
  %112 = load ptr, ptr @timecode_input, align 8, !dbg !3296
  %call224.i = call i32 %112(ptr noundef nonnull %tcfile_name.0.i, ptr noundef nonnull %hin.i, ptr noundef nonnull %info.i, ptr noundef nonnull %input_opt.i) #15, !dbg !3298
  %tobool225.not.i = icmp eq i32 %call224.i, 0, !dbg !3298
  br i1 %tobool225.not.i, label %if.else228.i, label %if.then226.i, !dbg !3299

if.then226.i:                                     ; preds = %if.end222.i
  %113 = load ptr, ptr @stderr, align 8, !dbg !3300
  %114 = call i64 @fwrite(ptr nonnull @.str.16, i64 36, i64 1, ptr %113) #19, !dbg !3302
  br label %Parse.exit.thread, !dbg !3303

if.else228.i:                                     ; preds = %if.end222.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @timecode_input, i64 56, i1 false), !dbg !3304
  %.pre.i = load i32, ptr %vfr.i, align 4, !dbg !3305
  br label %if.end239.i, !dbg !3306

if.else230.i:                                     ; preds = %if.end216.i
  %115 = load i32, ptr %vfr.i, align 4, !dbg !3307
  %tobool232.i = icmp eq i32 %115, 0, !dbg !3309
  %116 = load ptr, ptr %timebase.i, align 8
  %tobool235.i = icmp ne ptr %116, null
  %or.cond393.i = select i1 %tobool232.i, i1 %tobool235.i, i1 false, !dbg !3310
  br i1 %or.cond393.i, label %if.then236.i, label %if.end239.i, !dbg !3310

if.then236.i:                                     ; preds = %if.else230.i
  %117 = load ptr, ptr @stderr, align 8, !dbg !3311
  %118 = call i64 @fwrite(ptr nonnull @.str.17, i64 56, i64 1, ptr %117) #19, !dbg !3313
  br label %Parse.exit.thread, !dbg !3314

if.end239.i:                                      ; preds = %if.else230.i, %if.else228.i
  %119 = phi i32 [ %115, %if.else230.i ], [ %.pre.i, %if.else228.i ], !dbg !3305
  %120 = load i32, ptr %info.i, align 4, !dbg !3315
  store i32 %120, ptr %i_csp.i, align 4, !dbg !3316, !DIAssignID !3317
    #dbg_assign(i32 %120, !1501, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !3317, ptr %i_csp.i, !DIExpression(), !2802)
  %121 = load i32, ptr %79, align 4, !dbg !3318
  %i_height.i = getelementptr inbounds i8, ptr %param, i64 24, !dbg !3319
  store i32 %121, ptr %i_height.i, align 8, !dbg !3320, !DIAssignID !3321
    #dbg_assign(i32 %121, !1501, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !3321, ptr %i_height.i, !DIExpression(), !2802)
  store i32 %119, ptr %b_vfr_input.i, align 8, !dbg !3322, !DIAssignID !3323
    #dbg_assign(i32 %119, !1501, !DIExpression(DW_OP_LLVM_fragment, 5184, 32), !3323, ptr %b_vfr_input.i, !DIExpression(), !2802)
  %width245.i = getelementptr inbounds i8, ptr %info.i, i64 44, !dbg !3324
  %122 = load i32, ptr %width245.i, align 4, !dbg !3324
  %i_width.i = getelementptr inbounds i8, ptr %param, i64 20, !dbg !3325
  store i32 %122, ptr %i_width.i, align 4, !dbg !3326, !DIAssignID !3327
    #dbg_assign(i32 %122, !1501, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !3327, ptr %i_width.i, !DIExpression(), !2802)
  %tobool246.i = icmp eq i32 %b_user_interlaced.0.i, 0, !dbg !3328
  %123 = load i32, ptr %interlaced.i, align 4
  %tobool249.i = icmp ne i32 %123, 0
  %or.cond394.i = select i1 %tobool246.i, i1 %tobool249.i, i1 false, !dbg !3330
  br i1 %or.cond394.i, label %if.then250.i, label %if.end263.i, !dbg !3330

if.then250.i:                                     ; preds = %if.end239.i
  %124 = load ptr, ptr @stderr, align 8, !dbg !3331
  %125 = load i32, ptr %tff.i, align 4, !dbg !3333
  %tobool252.not.i = icmp eq i32 %125, 0, !dbg !3334
  %cond253.i = select i1 %tobool252.not.i, i32 98, i32 116, !dbg !3334
  %cond256.i = select i1 %tobool252.not.i, i32 116, i32 98, !dbg !3335
  %call257.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.18, i32 noundef %cond253.i, i32 noundef %cond256.i) #18, !dbg !3336
  store i32 1, ptr %b_interlaced.i, align 8, !dbg !3337, !DIAssignID !3338
    #dbg_assign(i32 1, !1501, !DIExpression(DW_OP_LLVM_fragment, 1088, 32), !3338, ptr %b_interlaced.i, !DIExpression(), !2802)
  %126 = load i32, ptr %tff.i, align 4, !dbg !3339
  %tobool260.i = icmp ne i32 %126, 0, !dbg !3340
  %lnot.ext.i = zext i1 %tobool260.i to i32, !dbg !3341
  store i32 %lnot.ext.i, ptr %b_tff.i, align 8, !dbg !3342, !DIAssignID !3343
    #dbg_assign(i32 %lnot.ext.i, !1501, !DIExpression(DW_OP_LLVM_fragment, 5376, 32), !3343, ptr %b_tff.i, !DIExpression(), !2802)
  br label %if.end263.i, !dbg !3344

if.end263.i:                                      ; preds = %if.then250.i, %if.end239.i
  %tobool264.not.i = icmp eq i32 %b_user_fps.0.i, 0, !dbg !3345
  br i1 %tobool264.not.i, label %if.then265.i, label %if.end263.i.if.end270.i_crit_edge, !dbg !3347

if.end263.i.if.end270.i_crit_edge:                ; preds = %if.end263.i
  %.pre = load i32, ptr %i_fps_den.i, align 8, !dbg !3348
  %i_fps_num.i.val.pre = load i32, ptr %i_fps_num.i, align 4, !dbg !3349
  br label %if.end270.i, !dbg !3347

if.then265.i:                                     ; preds = %if.end263.i
  %127 = load i32, ptr %fps_num.i, align 4, !dbg !3351
  store i32 %127, ptr %i_fps_num.i, align 4, !dbg !3353, !DIAssignID !3354
    #dbg_assign(i32 %127, !1501, !DIExpression(DW_OP_LLVM_fragment, 5216, 32), !3354, ptr %i_fps_num.i, !DIExpression(), !2802)
  %128 = load i32, ptr %fps_den.i, align 4, !dbg !3355
  store i32 %128, ptr %i_fps_den.i, align 8, !dbg !3356, !DIAssignID !3357
    #dbg_assign(i32 %128, !1501, !DIExpression(DW_OP_LLVM_fragment, 5248, 32), !3357, ptr %i_fps_den.i, !DIExpression(), !2802)
  br label %if.end270.i, !dbg !3358

if.end270.i:                                      ; preds = %if.end263.i.if.end270.i_crit_edge, %if.then265.i
  %i_fps_num.i.val = phi i32 [ %i_fps_num.i.val.pre, %if.end263.i.if.end270.i_crit_edge ], [ %127, %if.then265.i ], !dbg !3349
  %129 = phi i32 [ %.pre, %if.end263.i.if.end270.i_crit_edge ], [ %128, %if.then265.i ], !dbg !3348
  %130 = load i32, ptr %b_vfr_input.i, align 8, !dbg !3359
  %tobool272.not.i = icmp eq i32 %130, 0, !dbg !3360
  %timebase_num.i = getelementptr inbounds i8, ptr %info.i, i64 32, !dbg !3348
  %131 = load i32, ptr %timebase_num.i, align 4, !dbg !3348
  %timebase_den.i = getelementptr inbounds i8, ptr %info.i, i64 36, !dbg !3348
  %.sink845.i = select i1 %tobool272.not.i, i32 %129, i32 %131, !dbg !3348
  %timebase_den.i.val = load i32, ptr %timebase_den.i, align 4, !dbg !3349
  %132 = select i1 %tobool272.not.i, i32 %i_fps_num.i.val, i32 %timebase_den.i.val, !dbg !3349
  %133 = getelementptr inbounds i8, ptr %param, i64 660, !dbg !3349
  store i32 %.sink845.i, ptr %133, align 4, !dbg !3349, !DIAssignID !3361
    #dbg_assign(i32 %.sink845.i, !1501, !DIExpression(DW_OP_LLVM_fragment, 5280, 32), !3361, ptr %133, !DIExpression(), !2802)
  %134 = getelementptr inbounds i8, ptr %param, i64 664, !dbg !3349
  store i32 %132, ptr %134, align 8, !dbg !3349, !DIAssignID !3362
    #dbg_assign(i32 %132, !1501, !DIExpression(DW_OP_LLVM_fragment, 5312, 32), !3362, ptr %134, !DIExpression(), !2802)
  %135 = load ptr, ptr %timebase.i, align 8
  %tobool283.i = icmp ne ptr %135, null
  %or.cond395.i = select i1 %tobool217.not.i, i1 %tobool283.i, i1 false, !dbg !3363
  br i1 %or.cond395.i, label %if.then284.i, label %if.end324.i, !dbg !3363

if.then284.i:                                     ; preds = %if.end270.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i_user_timebase_num.i) #15, !dbg !3364
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i_user_timebase_den.i) #15, !dbg !3365
  %call286.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %135, ptr noundef nonnull @.str.19, ptr noundef nonnull %i_user_timebase_num.i, ptr noundef nonnull %i_user_timebase_den.i) #15, !dbg !3366
    #dbg_value(i32 %call286.i, !2784, !DIExpression(), !2799)
  switch i32 %call286.i, label %if.then284.if.end298_crit_edge.i [
    i32 0, label %if.then288.i
    i32 1, label %if.then293.i
  ], !dbg !3367

if.then284.if.end298_crit_edge.i:                 ; preds = %if.then284.i
  %.pre846.i = load i64, ptr %i_user_timebase_den.i, align 8
  br label %if.end298.i, !dbg !3367

if.then288.i:                                     ; preds = %if.then284.i
  %136 = load ptr, ptr @stderr, align 8, !dbg !3368
  %137 = load ptr, ptr %timebase.i, align 8, !dbg !3371
  %call290.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef nonnull @.str.20, ptr noundef %137) #18, !dbg !3372
  br label %cleanup377.critedge.i, !dbg !3373

if.then293.i:                                     ; preds = %if.then284.i
  %138 = load i32, ptr %133, align 4, !dbg !3374
  %conv.i = zext i32 %138 to i64, !dbg !3377
  store i64 %conv.i, ptr %i_user_timebase_num.i, align 8, !dbg !3378, !DIAssignID !3379
    #dbg_assign(i64 %conv.i, !2780, !DIExpression(), !3379, ptr %i_user_timebase_num.i, !DIExpression(), !2799)
  %139 = load ptr, ptr %timebase.i, align 8, !dbg !3380
  %call296.i = call i64 @strtoul(ptr nocapture noundef %139, ptr noundef null, i32 noundef 10) #15, !dbg !3381
  store i64 %call296.i, ptr %i_user_timebase_den.i, align 8, !dbg !3382, !DIAssignID !3383
    #dbg_assign(i64 %call296.i, !2783, !DIExpression(), !3383, ptr %i_user_timebase_den.i, !DIExpression(), !2799)
  br label %if.end298.i, !dbg !3384

if.end298.i:                                      ; preds = %if.then293.i, %if.then284.if.end298_crit_edge.i
  %140 = phi i64 [ %.pre846.i, %if.then284.if.end298_crit_edge.i ], [ %call296.i, %if.then293.i ]
  %141 = load i64, ptr %i_user_timebase_num.i, align 8, !dbg !3385
  %cmp299.i = icmp ugt i64 %141, 4294967295, !dbg !3387
  %cmp302.i = icmp ugt i64 %140, 4294967295
  %or.cond396.i = select i1 %cmp299.i, i1 true, i1 %cmp302.i, !dbg !3388
  br i1 %or.cond396.i, label %if.then304.i, label %if.end306.i, !dbg !3388

if.then304.i:                                     ; preds = %if.end298.i
  %142 = load ptr, ptr @stderr, align 8, !dbg !3389
  %143 = call i64 @fwrite(ptr nonnull @.str.21, i64 59, i64 1, ptr %142) #19, !dbg !3391
  br label %cleanup377.critedge.i, !dbg !3392

if.end306.i:                                      ; preds = %if.end298.i
  %conv307.i = uitofp nneg i64 %140 to double, !dbg !3393
  %144 = load i32, ptr %134, align 8, !dbg !3394
  %conv309.i = uitofp i32 %144 to double, !dbg !3395
  %145 = load i32, ptr %133, align 4, !dbg !3396
  %conv311.i = uitofp i32 %145 to double, !dbg !3397
  %conv312.i = uitofp nneg i64 %141 to double, !dbg !3398
  %146 = insertelement <2 x double> poison, double %conv307.i, i64 0, !dbg !3399
  %147 = insertelement <2 x double> %146, double %conv311.i, i64 1, !dbg !3399
  %148 = insertelement <2 x double> poison, double %conv309.i, i64 0, !dbg !3399
  %149 = insertelement <2 x double> %148, double %conv312.i, i64 1, !dbg !3399
  %150 = fdiv <2 x double> %147, %149, !dbg !3399
  %shift = shufflevector <2 x double> %150, <2 x double> poison, <2 x i32> <i32 1, i32 poison>, !dbg !3400
  %151 = fmul <2 x double> %150, %shift, !dbg !3400
  %mul.i = extractelement <2 x double> %151, i64 0, !dbg !3400
  %timebase_convert_multiplier.i = getelementptr inbounds i8, ptr %opt, i64 40, !dbg !3401
  store double %mul.i, ptr %timebase_convert_multiplier.i, align 8, !dbg !3402, !DIAssignID !3403
    #dbg_assign(double %mul.i, !1502, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !3403, ptr %timebase_convert_multiplier.i, !DIExpression(), !2802)
  %conv314.i = trunc nuw i64 %141 to i32, !dbg !3404
  store i32 %conv314.i, ptr %133, align 4, !dbg !3405, !DIAssignID !3406
    #dbg_assign(i32 %conv314.i, !1501, !DIExpression(DW_OP_LLVM_fragment, 5280, 32), !3406, ptr %133, !DIExpression(), !2802)
  %conv316.i = trunc nuw i64 %140 to i32, !dbg !3407
  store i32 %conv316.i, ptr %134, align 8, !dbg !3408, !DIAssignID !3409
    #dbg_assign(i32 %conv316.i, !1501, !DIExpression(DW_OP_LLVM_fragment, 5312, 32), !3409, ptr %134, !DIExpression(), !2802)
  store i32 1, ptr %b_vfr_input.i, align 8, !dbg !3410, !DIAssignID !3411
    #dbg_assign(i32 1, !1501, !DIExpression(DW_OP_LLVM_fragment, 5184, 32), !3411, ptr %b_vfr_input.i, !DIExpression(), !2802)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_user_timebase_den.i) #15, !dbg !3412
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_user_timebase_num.i) #15, !dbg !3412
  br label %if.end324.i

if.end324.i:                                      ; preds = %if.end306.i, %if.end270.i
  %152 = phi i32 [ %conv314.i, %if.end306.i ], [ %.sink845.i, %if.end270.i ]
  %153 = phi i32 [ %conv316.i, %if.end306.i ], [ %132, %if.end270.i ]
  %154 = load i32, ptr %i_sar_width.i, align 8, !dbg !3413
  %tobool327.not.i = icmp eq i32 %154, 0, !dbg !3415
  %155 = load i32, ptr %vui.i, align 4
  %tobool331.not.i = icmp eq i32 %155, 0
  %or.cond = select i1 %tobool327.not.i, i1 true, i1 %tobool331.not.i, !dbg !3416
  br i1 %or.cond, label %if.then332.i, label %if.end339.i, !dbg !3416

if.then332.i:                                     ; preds = %if.end324.i
    #dbg_assign(i32 poison, !1501, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !3417, ptr %i_sar_width.i, !DIExpression(), !2802)
  %156 = load <2 x i32>, ptr %sar_width.i, align 4, !dbg !3418
  %157 = shufflevector <2 x i32> %156, <2 x i32> poison, <2 x i32> <i32 1, i32 0>, !dbg !3420
  store <2 x i32> %157, ptr %vui.i, align 4, !dbg !3420, !DIAssignID !3417
    #dbg_assign(i32 poison, !1501, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !3417, ptr %vui.i, !DIExpression(), !2802)
  br label %if.end339.i, !dbg !3421

if.end339.i:                                      ; preds = %if.end324.i, %if.then332.i
  %tobool340.not.i = icmp eq i32 %b_user_ref.0.i, 0, !dbg !3422
  br i1 %tobool340.not.i, label %if.then341.i, label %if.end, !dbg !3423

if.then341.i:                                     ; preds = %if.end339.i
  %158 = load i32, ptr %i_width.i, align 4, !dbg !3424
  %add.i = add nsw i32 %158, 15, !dbg !3425
  %shr.i = ashr i32 %add.i, 4, !dbg !3426
  %159 = load i32, ptr %i_height.i, align 8, !dbg !3427
  %add344.i = add nsw i32 %159, 15, !dbg !3428
  %shr345.i = ashr i32 %add344.i, 4, !dbg !3429
    #dbg_value(i32 poison, !2785, !DIExpression(), !3430)
    #dbg_value(i32 0, !2788, !DIExpression(), !3431)
  %160 = load i32, ptr @x264_levels, align 4, !dbg !3432
  %cmp351.not726.i = icmp eq i32 %160, 0, !dbg !3434
  br i1 %cmp351.not726.i, label %if.end, label %for.body354.lr.ph.i, !dbg !3435

for.body354.lr.ph.i:                              ; preds = %if.then341.i
  %i_level_idc.i = getelementptr inbounds i8, ptr %param, i64 32
  %161 = load i32, ptr %i_level_idc.i, align 8
    #dbg_value(i64 0, !2788, !DIExpression(), !3431)
  %cmp358.i140 = icmp eq i32 %161, %160, !dbg !3436
  br i1 %cmp358.i140, label %while.cond.preheader.i, label %for.cond348.i, !dbg !3438

for.cond348.i:                                    ; preds = %for.body354.lr.ph.i, %for.body354.i
  %indvars.iv842.i141 = phi i64 [ %indvars.iv.next843.i, %for.body354.i ], [ 0, %for.body354.lr.ph.i ]
    #dbg_value(i64 %indvars.iv842.i141, !2788, !DIExpression(), !3431)
  %indvars.iv.next843.i = add nuw nsw i64 %indvars.iv842.i141, 1, !dbg !3439
    #dbg_value(i64 %indvars.iv.next843.i, !2788, !DIExpression(), !3431)
  %arrayidx350.i = getelementptr inbounds [0 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 %indvars.iv.next843.i, !dbg !3440
  %162 = load i32, ptr %arrayidx350.i, align 4, !dbg !3432
  %cmp351.not.i = icmp eq i32 %162, 0, !dbg !3434
  br i1 %cmp351.not.i, label %if.end, label %for.body354.i, !dbg !3435, !llvm.loop !3441

for.body354.i:                                    ; preds = %for.cond348.i
    #dbg_value(i64 %indvars.iv.next843.i, !2788, !DIExpression(), !3431)
  %cmp358.i = icmp eq i32 %161, %162, !dbg !3436
    #dbg_value(i64 %indvars.iv.next843.i, !2788, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3431)
  br i1 %cmp358.i, label %while.cond.preheader.i, label %for.cond348.i, !dbg !3438, !llvm.loop !3441

while.cond.preheader.i:                           ; preds = %for.body354.i, %for.body354.lr.ph.i
  %arrayidx350728.i.lcssa = phi ptr [ @x264_levels, %for.body354.lr.ph.i ], [ %arrayidx350.i, %for.body354.i ]
  %i_frame_reference.i = getelementptr inbounds i8, ptr %param, i64 80
  %mul346.i = mul i32 %shr.i, 384
  %mul361.i = mul i32 %mul346.i, %shr345.i
  %dpb.i = getelementptr inbounds i8, ptr %arrayidx350728.i.lcssa, i64 12
  %163 = load i32, ptr %dpb.i, align 4
  %i_frame_reference.promoted.i = load i32, ptr %i_frame_reference.i, align 8
  %mul362729.i = mul nsw i32 %i_frame_reference.promoted.i, %mul361.i, !dbg !3443
  %cmp365730.i = icmp sgt i32 %mul362729.i, %163, !dbg !3445
  %cmp368731.i = icmp sgt i32 %i_frame_reference.promoted.i, 1
  %or.cond502732.i = and i1 %cmp368731.i, %cmp365730.i, !dbg !3446
  br i1 %or.cond502732.i, label %while.body.i, label %if.end, !dbg !3446

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %164 = phi i32 [ %dec.i, %while.body.i ], [ %i_frame_reference.promoted.i, %while.cond.preheader.i ]
  %dec.i = add nsw i32 %164, -1, !dbg !3447
  %mul362.i = mul nsw i32 %dec.i, %mul361.i, !dbg !3443
  %cmp365.i = icmp sgt i32 %mul362.i, %163, !dbg !3445
  %cmp368.i = icmp ugt i32 %164, 2
  %or.cond502.i = and i1 %cmp368.i, %cmp365.i, !dbg !3446
  br i1 %or.cond502.i, label %while.body.i, label %while.cond.cleanup377.loopexit_crit_edge.i, !dbg !3446, !llvm.loop !3449

cleanup377.critedge.i:                            ; preds = %if.then304.i, %if.then288.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_user_timebase_den.i) #15, !dbg !3412
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_user_timebase_num.i) #15, !dbg !3412
  br label %Parse.exit.thread

while.cond.cleanup377.loopexit_crit_edge.i:       ; preds = %while.body.i
  store i32 %dec.i, ptr %i_frame_reference.i, align 8, !dbg !3447, !DIAssignID !3452
    #dbg_assign(i32 %dec.i, !1501, !DIExpression(DW_OP_LLVM_fragment, 640, 32), !3452, ptr %i_frame_reference.i, !DIExpression(), !2802)
  br label %if.end, !dbg !3446

Parse.exit.thread:                                ; preds = %for.cond.i, %if.then168.i, %if.then220.i, %if.then226.i, %if.then236.i, %if.then194.i, %if.then156.i, %if.end13.i, %if.end148.i, %select_output.exit.i, %cleanup377.critedge.i, %cleanup140.thread.i, %if.then39.i.i, %if.then22.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %input_opt.i) #15, !dbg !3453
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %defaults.i) #15, !dbg !3453
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i), !dbg !3453
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %demuxername.i), !dbg !3453
  br label %cleanup, !dbg !3454

if.end:                                           ; preds = %for.cond348.i, %while.cond.cleanup377.loopexit_crit_edge.i, %while.cond.preheader.i, %if.then341.i, %if.end339.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %input_opt.i) #15, !dbg !3453
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %defaults.i) #15, !dbg !3453
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i), !dbg !3453
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %demuxername.i), !dbg !3453
    #dbg_assign(i1 undef, !2695, !DIExpression(), !2733, ptr %i_nal.i, !DIExpression(), !2732)
    #dbg_value(ptr %param, !2667, !DIExpression(), !2730)
    #dbg_value(ptr %opt, !2668, !DIExpression(), !2730)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pic.i) #15, !dbg !3455
    #dbg_value(ptr null, !2671, !DIExpression(), !2730)
    #dbg_value(i64 0, !2678, !DIExpression(), !2730)
    #dbg_value(i64 0, !2681, !DIExpression(), !2730)
    #dbg_value(i64 0, !2682, !DIExpression(), !2730)
    #dbg_value(i64 0, !2683, !DIExpression(), !2730)
    #dbg_value(i32 0, !2684, !DIExpression(), !2730)
    #dbg_value(i64 -1, !2685, !DIExpression(), !2730)
    #dbg_value(i64 -1, !2686, !DIExpression(), !2730)
  %conv.i4 = zext i32 %153 to i64, !dbg !3456
  %conv1.i = zext i32 %152 to i64, !dbg !3457
    #dbg_value(i64 %conv1.i, !3458, !DIExpression(), !3466)
    #dbg_value(i64 %conv.i4, !3463, !DIExpression(), !3466)
  br label %while.body.i.i, !dbg !3468

while.body.i.i:                                   ; preds = %while.body.i.i, %if.end
  %a.addr.0.i.i = phi i64 [ %conv1.i, %if.end ], [ %b.addr.0.i.i, %while.body.i.i ]
  %b.addr.0.i.i = phi i64 [ %conv.i4, %if.end ], [ %rem.i.i, %while.body.i.i ]
    #dbg_value(i64 %b.addr.0.i.i, !3463, !DIExpression(), !3466)
    #dbg_value(i64 %a.addr.0.i.i, !3458, !DIExpression(), !3466)
  %rem.i.i = urem i64 %a.addr.0.i.i, %b.addr.0.i.i, !dbg !3469
    #dbg_value(i64 %rem.i.i, !3464, !DIExpression(), !3470)
  %tobool.not.not.i.i = icmp eq i64 %rem.i.i, 0, !dbg !3471
    #dbg_value(i64 poison, !3463, !DIExpression(), !3466)
    #dbg_value(i64 poison, !3458, !DIExpression(), !3466)
  br i1 %tobool.not.not.i.i, label %gcd.exit.i, label %while.body.i.i

gcd.exit.i:                                       ; preds = %while.body.i.i
  %div.i5 = udiv i64 %conv.i4, %b.addr.0.i.i, !dbg !3473
  %conv4.i = trunc nuw i64 %div.i5 to i32, !dbg !3456
    #dbg_value(i32 %conv4.i, !2689, !DIExpression(), !2730)
    #dbg_value(double 0.000000e+00, !2691, !DIExpression(), !2730)
  %165 = load i32, ptr %i_log_level80.i, align 8, !dbg !3474
  %cmp.i = icmp slt i32 %165, 3, !dbg !3475
  %166 = load i32, ptr %opt, align 8, !dbg !3476
  %167 = and i32 %166, 1, !dbg !3476
  %and.i = select i1 %cmp.i, i32 %167, i32 0, !dbg !3476
  store i32 %and.i, ptr %opt, align 8, !dbg !3476, !DIAssignID !3477
    #dbg_assign(i32 %and.i, !1502, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3477, ptr %opt, !DIExpression(), !2802)
  %168 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 8), align 8, !dbg !3478
  %169 = load ptr, ptr %hin.i, align 8, !dbg !3479
  %call6.i = call i32 %168(ptr noundef %169) #15, !dbg !3480
    #dbg_value(i32 %call6.i, !2674, !DIExpression(), !2730)
  %170 = load i32, ptr %i_seek.i, align 4, !dbg !3481
  %sub.i = sub nsw i32 %call6.i, %170, !dbg !3481
  %spec.select.i8 = call i32 @llvm.smax.i32(i32 %sub.i, i32 0), !dbg !3481
    #dbg_value(i32 %spec.select.i8, !2674, !DIExpression(), !2730)
  %cmp11.i = icmp slt i32 %sub.i, 1, !dbg !3482
  %.pre.i9 = load i32, ptr %i_frame_total.i, align 4, !dbg !3484
  %cmp14.i = icmp slt i32 %.pre.i9, %spec.select.i8
  %or.cond695.i = select i1 %cmp11.i, i1 true, i1 %cmp14.i, !dbg !3485
  br i1 %or.cond695.i, label %if.end.i, label %if.end.thread.i, !dbg !3485

if.end.thread.i:                                  ; preds = %gcd.exit.i
    #dbg_value(i32 %spec.select.i8, !2674, !DIExpression(), !2730)
  store i32 %spec.select.i8, ptr %i_frame_total.i, align 4, !dbg !3486, !DIAssignID !3487
    #dbg_assign(i32 %spec.select.i8, !1501, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !3487, ptr %i_frame_total.i, !DIExpression(), !2802)
  br label %cond.true21.i, !dbg !3488

if.end.i:                                         ; preds = %gcd.exit.i
  %cmp17.i = icmp sgt i32 %.pre.i9, 0, !dbg !3489
  %spec.select558.i = select i1 %cmp17.i, i32 %.pre.i9, i32 %spec.select.i8, !dbg !3490
    #dbg_value(i32 %spec.select558.i, !2674, !DIExpression(), !2730)
  store i32 %spec.select558.i, ptr %i_frame_total.i, align 4, !dbg !3486, !DIAssignID !3491
    #dbg_assign(i32 %spec.select558.i, !1501, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !3491, ptr %i_frame_total.i, !DIExpression(), !2802)
  %tobool.not.i43 = icmp eq i32 %spec.select558.i, 0, !dbg !3488
  br i1 %tobool.not.i43, label %cond.end25.i, label %cond.true21.i, !dbg !3488

cond.true21.i:                                    ; preds = %if.end.i, %if.end.thread.i
  %i_frame_total.0588.i = phi i32 [ %sub.i, %if.end.thread.i ], [ %spec.select558.i, %if.end.i ]
  %div22.i = udiv i32 %i_frame_total.0588.i, 1000, !dbg !3492
    #dbg_value(i32 %div22.i, !3493, !DIExpression(), !3500)
    #dbg_value(i32 1, !3498, !DIExpression(), !3500)
    #dbg_value(i32 10, !3499, !DIExpression(), !3500)
  %cmp.i.i = icmp ult i32 %i_frame_total.0588.i, 1000, !dbg !3502
  %171 = call i32 @llvm.umin.i32(i32 %div22.i, i32 10), !dbg !3503
  %cond5.i.i = select i1 %cmp.i.i, i32 1, i32 %171, !dbg !3503
  br label %cond.end25.i, !dbg !3488

cond.end25.i:                                     ; preds = %cond.true21.i, %if.end.i
  %tobool.not591.i = phi i1 [ false, %cond.true21.i ], [ true, %if.end.i ]
  %i_frame_total.0589.i = phi i32 [ %i_frame_total.0588.i, %cond.true21.i ], [ 0, %if.end.i ]
  %cond26.i = phi i32 [ %cond5.i.i, %cond.true21.i ], [ 10, %if.end.i ], !dbg !3488
    #dbg_value(i32 %cond26.i, !2680, !DIExpression(), !2730)
  %172 = load i32, ptr %i_pulldown.i, align 8, !dbg !3504
  %tobool27.not.i = icmp ne i32 %172, 0, !dbg !3506
  %173 = load i32, ptr %b_vfr_input.i, align 8
  %tobool29.not.i = icmp eq i32 %173, 0
  %or.cond46 = select i1 %tobool27.not.i, i1 %tobool29.not.i, i1 false, !dbg !3507
  br i1 %or.cond46, label %if.then30.i, label %if.end46.i, !dbg !3507

if.then30.i:                                      ; preds = %cond.end25.i
  %b_pic_struct.i = getelementptr inbounds i8, ptr %param, i64 676, !dbg !3508
  store i32 1, ptr %b_pic_struct.i, align 4, !dbg !3510, !DIAssignID !3511
    #dbg_assign(i32 1, !1501, !DIExpression(DW_OP_LLVM_fragment, 5408, 32), !3511, ptr %b_pic_struct.i, !DIExpression(), !2802)
  %idxprom.i = sext i32 %172 to i64, !dbg !3512
  %arrayidx.i39 = getelementptr inbounds [7 x %struct.cli_pulldown_t], ptr @pulldown_values, i64 0, i64 %idxprom.i, !dbg !3512
    #dbg_value(ptr %arrayidx.i39, !2671, !DIExpression(), !2730)
  %174 = load i32, ptr %i_fps_den.i, align 8, !dbg !3513
  store i32 %174, ptr %133, align 4, !dbg !3514, !DIAssignID !3515
    #dbg_assign(i32 %174, !1501, !DIExpression(DW_OP_LLVM_fragment, 5280, 32), !3515, ptr %133, !DIExpression(), !2802)
  %175 = load i32, ptr %i_fps_num.i, align 4, !dbg !3516
  %conv33.i = uitofp i32 %175 to float, !dbg !3518
  %fps_factor.i = getelementptr inbounds i8, ptr %arrayidx.i39, i64 28, !dbg !3519
  %176 = load float, ptr %fps_factor.i, align 4, !dbg !3519
  %mul.i42 = fmul float %176, %conv33.i, !dbg !3520
  %conv34.i = fpext float %mul.i42 to double, !dbg !3518
  %call35.i = call double @fmod(double noundef %conv34.i, double noundef 1.000000e+00) #15, !dbg !3521
  %tobool36.i = fcmp une double %call35.i, 0.000000e+00, !dbg !3521
  br i1 %tobool36.i, label %if.then37.i, label %if.end39.i, !dbg !3522

if.then37.i:                                      ; preds = %if.then30.i
  %177 = load ptr, ptr @stderr, align 8, !dbg !3523
  %178 = call i64 @fwrite(ptr nonnull @.str.372, i64 56, i64 1, ptr %177) #19, !dbg !3525
  br label %Encode.exit, !dbg !3526

if.end39.i:                                       ; preds = %if.then30.i
  %179 = load i32, ptr %i_fps_num.i, align 4, !dbg !3527
  %conv41.i = uitofp i32 %179 to float, !dbg !3528
  %mul43.i = fmul float %176, %conv41.i, !dbg !3529
  %conv44.i = fptoui float %mul43.i to i32, !dbg !3528
  store i32 %conv44.i, ptr %134, align 8, !dbg !3530, !DIAssignID !3531
    #dbg_assign(i32 %conv44.i, !1501, !DIExpression(DW_OP_LLVM_fragment, 5312, 32), !3531, ptr %134, !DIExpression(), !2802)
  br label %if.end46.i, !dbg !3532

if.end46.i:                                       ; preds = %if.end39.i, %cond.end25.i
  %pulldown.0.i = phi ptr [ %arrayidx.i39, %if.end39.i ], [ null, %cond.end25.i ], !dbg !2730
    #dbg_value(ptr %pulldown.0.i, !2671, !DIExpression(), !2730)
  %call47.i = call ptr @x264_encoder_open_96(ptr noundef nonnull %param) #15, !dbg !3533
    #dbg_value(ptr %call47.i, !2669, !DIExpression(), !2730)
  %cmp48.i = icmp eq ptr %call47.i, null, !dbg !3535
  br i1 %cmp48.i, label %if.then50.i, label %if.end54.i, !dbg !3536

if.then50.i:                                      ; preds = %if.end46.i
  %180 = load ptr, ptr @stderr, align 8, !dbg !3537
  %181 = call i64 @fwrite(ptr nonnull @.str.373, i64 39, i64 1, ptr %180) #19, !dbg !3539
  %182 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 48), align 8, !dbg !3540
  %183 = load ptr, ptr %hin.i, align 8, !dbg !3541
  %call53.i = call i32 %182(ptr noundef %183) #15, !dbg !3542
  br label %Encode.exit, !dbg !3543

if.end54.i:                                       ; preds = %if.end46.i
  call void @x264_encoder_parameters(ptr noundef nonnull %call47.i, ptr noundef nonnull %param) #15, !dbg !3544
  %184 = load i32, ptr %134, align 8, !dbg !3545
  %div56.i = udiv i32 %184, %conv4.i, !dbg !3546
    #dbg_value(i32 %div56.i, !2690, !DIExpression(), !2730)
  %185 = load ptr, ptr getelementptr inbounds (i8, ptr @output, i64 8), align 8, !dbg !3547
  %186 = load ptr, ptr %hout.i, align 8, !dbg !3549
  %call57.i = call i32 %185(ptr noundef %186, ptr noundef nonnull %param) #15, !dbg !3550
  %tobool58.not.i = icmp eq i32 %call57.i, 0, !dbg !3550
  br i1 %tobool58.not.i, label %if.end65.i, label %if.then59.i, !dbg !3551

if.then59.i:                                      ; preds = %if.end54.i
  %187 = load ptr, ptr @stderr, align 8, !dbg !3552
  %188 = call i64 @fwrite(ptr nonnull @.str.374, i64 38, i64 1, ptr %187) #19, !dbg !3554
  %189 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 48), align 8, !dbg !3555
  %190 = load ptr, ptr %hin.i, align 8, !dbg !3556
  %call62.i13 = call i32 %189(ptr noundef %190) #15, !dbg !3557
  %191 = load ptr, ptr getelementptr inbounds (i8, ptr @output, i64 32), align 8, !dbg !3558
  %192 = load ptr, ptr %hout.i, align 8, !dbg !3559
  %call64.i = call i32 %191(ptr noundef %192, i64 noundef -1, i64 noundef -1) #15, !dbg !3560
  br label %Encode.exit, !dbg !3561

if.end65.i:                                       ; preds = %if.end54.i
  %193 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 16), align 8, !dbg !3562
  %194 = load i32, ptr %i_csp.i, align 4, !dbg !3564
  %195 = load i32, ptr %i_width.i, align 4, !dbg !3565
  %196 = load i32, ptr %i_height.i, align 8, !dbg !3566
  %call66.i17 = call i32 %193(ptr noundef nonnull %pic.i, i32 noundef %194, i32 noundef %195, i32 noundef %196) #15, !dbg !3567
  %tobool67.not.i = icmp eq i32 %call66.i17, 0, !dbg !3567
  br i1 %tobool67.not.i, label %if.end70.i, label %if.then68.i, !dbg !3568

if.then68.i:                                      ; preds = %if.end65.i
  %197 = load ptr, ptr @stderr, align 8, !dbg !3569
  %198 = call i64 @fwrite(ptr nonnull @.str.375, i64 28, i64 1, ptr %197) #19, !dbg !3571
  br label %Encode.exit, !dbg !3572

if.end70.i:                                       ; preds = %if.end65.i
  %call71.i = call i64 @x264_mdate() #15, !dbg !3573
    #dbg_value(i64 %call71.i, !2676, !DIExpression(), !2730)
  %199 = load i32, ptr %134, align 8, !dbg !3574
  %conv73.i = zext i32 %199 to i64, !dbg !3575
  %200 = load i32, ptr %i_fps_den.i, align 8, !dbg !3576
  %conv75.i = zext i32 %200 to i64, !dbg !3577
  %mul76.i = mul nuw nsw i64 %conv75.i, %conv73.i, !dbg !3578
  %201 = load i32, ptr %133, align 4, !dbg !3579
  %conv78.i = zext i32 %201 to i64, !dbg !3580
  %div79.i = udiv i64 %mul76.i, %conv78.i, !dbg !3581
  %202 = load i32, ptr %i_fps_num.i, align 4, !dbg !3582
  %conv81.i = zext i32 %202 to i64, !dbg !3583
  %div82.i = udiv i64 %div79.i, %conv81.i, !dbg !3584
    #dbg_value(i64 %div82.i, !2687, !DIExpression(), !2730)
  %cmp83.i = icmp ult i64 %div79.i, %conv81.i, !dbg !3585
  br i1 %cmp83.i, label %if.then85.i, label %if.end87.i, !dbg !3587

if.then85.i:                                      ; preds = %if.end70.i
  %203 = load ptr, ptr @stderr, align 8, !dbg !3588
  %call86.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.376, i64 noundef 0) #18, !dbg !3590
  br label %Encode.exit, !dbg !3591

if.end87.i:                                       ; preds = %if.end70.i
  %b_repeat_headers.i = getelementptr inbounds i8, ptr %param, i64 636, !dbg !3592
  %204 = load i32, ptr %b_repeat_headers.i, align 4, !dbg !3592
  %tobool88.not.i = icmp eq i32 %204, 0, !dbg !3593
  br i1 %tobool88.not.i, label %if.then89.i, label %if.end104.i, !dbg !3594

if.then89.i:                                      ; preds = %if.end87.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %headers.i) #15, !dbg !3595
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_nal.i) #15, !dbg !3596
  %call90.i = call i32 @x264_encoder_headers(ptr noundef nonnull %call47.i, ptr noundef nonnull %headers.i, ptr noundef nonnull %i_nal.i) #15, !dbg !3597
  %cmp91.i = icmp slt i32 %call90.i, 0, !dbg !3599
  br i1 %cmp91.i, label %cleanup.thread.i, label %cleanup.i37, !dbg !3600

cleanup.thread.i:                                 ; preds = %if.then89.i
  %205 = load ptr, ptr @stderr, align 8, !dbg !3601
  %206 = call i64 @fwrite(ptr nonnull @.str.377, i64 42, i64 1, ptr %205) #19, !dbg !3603
    #dbg_value(i64 poison, !2678, !DIExpression(), !2730)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i) #15, !dbg !3604
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %headers.i) #15, !dbg !3604
  br label %Encode.exit

cleanup.i37:                                      ; preds = %if.then89.i
  %207 = load ptr, ptr getelementptr inbounds (i8, ptr @output, i64 16), align 8, !dbg !3605
  %208 = load ptr, ptr %hout.i, align 8, !dbg !3607
  %209 = load ptr, ptr %headers.i, align 8, !dbg !3608
  %call97.i38 = call i32 %207(ptr noundef %208, ptr noundef %209) #15, !dbg !3609
  %conv98.i = zext nneg i32 %call97.i38 to i64, !dbg !3609
    #dbg_value(i64 %conv98.i, !2678, !DIExpression(), !2730)
  %cmp99.i = icmp sgt i32 %call97.i38, -1, !dbg !3610
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i) #15, !dbg !3604
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %headers.i) #15, !dbg !3604
  br i1 %cmp99.i, label %if.end104.i, label %Encode.exit

if.end104.i:                                      ; preds = %cleanup.i37, %if.end87.i
  %i_file.1.i = phi i64 [ 0, %if.end87.i ], [ %conv98.i, %cleanup.i37 ], !dbg !3611
    #dbg_value(i64 %i_file.1.i, !2678, !DIExpression(), !2730)
  %210 = load ptr, ptr %tcfile_out.i, align 8, !dbg !3612
  %tobool105.not.i = icmp eq ptr %210, null, !dbg !3614
  br i1 %tobool105.not.i, label %if.end109.i, label %if.then106.i, !dbg !3615

if.then106.i:                                     ; preds = %if.end104.i
  %211 = call i64 @fwrite(ptr nonnull @.str.378, i64 21, i64 1, ptr nonnull %210), !dbg !3616
  br label %if.end109.i, !dbg !3616

if.end109.i:                                      ; preds = %if.then106.i, %if.end104.i
    #dbg_value(i32 0, !2673, !DIExpression(), !2730)
    #dbg_value(i32 0, !2675, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2681, !DIExpression(), !2730)
    #dbg_value(double 0.000000e+00, !2691, !DIExpression(), !2730)
    #dbg_value(i64 -1, !2686, !DIExpression(), !2730)
    #dbg_value(i64 -1, !2685, !DIExpression(), !2730)
    #dbg_value(i32 0, !2684, !DIExpression(), !2730)
    #dbg_value(i64 0, !2683, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2682, !DIExpression(), !2730)
    #dbg_value(i64 %i_file.1.i, !2678, !DIExpression(), !2730)
  %cmp112652.i = icmp sgt i32 %i_frame_total.0589.i, 0, !dbg !3617
  %212 = or i1 %tobool.not591.i, %cmp112652.i, !dbg !3618
  br i1 %212, label %for.body.lr.ph.i, label %for.end.i19, !dbg !3619

for.body.lr.ph.i:                                 ; preds = %if.end109.i
  %i_pts.i = getelementptr inbounds i8, ptr %pic.i, i64 16
  %pattern.i = getelementptr inbounds i8, ptr %pulldown.0.i, i64 4
  %i_pic_struct.i = getelementptr inbounds i8, ptr %pic.i, i64 8
  %timebase_convert_multiplier.i25 = getelementptr inbounds i8, ptr %opt, i64 40
  %conv155.i = sext i32 %div56.i to i64
  %i_qpplus111.i.i = getelementptr inbounds i8, ptr %pic.i, i64 4
    #dbg_value(double 0.000000e+00, !2691, !DIExpression(), !2730)
    #dbg_value(i64 0, !2673, !DIExpression(), !2730)
    #dbg_value(i64 -1, !2686, !DIExpression(), !2730)
    #dbg_value(i64 -1, !2685, !DIExpression(), !2730)
    #dbg_value(i32 0, !2684, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2683, !DIExpression(), !2730)
    #dbg_value(i32 0, !2675, !DIExpression(), !2730)
    #dbg_value(i64 %i_file.1.i, !2678, !DIExpression(), !2730)
  %213 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 24), align 8, !dbg !3620
  %214 = load ptr, ptr %hin.i, align 8, !dbg !3622
  %215 = load i32, ptr %i_seek.i, align 4, !dbg !3623
  %call118.i142 = call i32 %213(ptr noundef nonnull %pic.i, ptr noundef %214, i32 noundef %215) #15, !dbg !3624
  %tobool119.not.i143 = icmp eq i32 %call118.i142, 0, !dbg !3624
  br i1 %tobool119.not.i143, label %if.end121.i, label %for.end.i19, !dbg !3625

for.body.i27:                                     ; preds = %cleanup247.i
    #dbg_value(double %pulldown_pts.1.i, !2691, !DIExpression(), !2730)
    #dbg_value(i64 %indvars.iv.next.i30, !2673, !DIExpression(), !2730)
    #dbg_value(i64 %largest_pts.0657.i147, !2686, !DIExpression(), !2730)
    #dbg_value(i64 %231, !2685, !DIExpression(), !2730)
    #dbg_value(i32 %pts_warning_cnt.2.i, !2684, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2683, !DIExpression(), !2730)
    #dbg_value(i32 %i_frame_output.1.i, !2675, !DIExpression(), !2730)
    #dbg_value(i64 %add217611.i, !2678, !DIExpression(), !2730)
  %216 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 24), align 8, !dbg !3620
  %217 = load ptr, ptr %hin.i, align 8, !dbg !3622
  %218 = load i32, ptr %i_seek.i, align 4, !dbg !3623
  %add.i29 = add nsw i32 %218, %indvars, !dbg !3626
  %call118.i = call i32 %216(ptr noundef nonnull %pic.i, ptr noundef %217, i32 noundef %add.i29) #15, !dbg !3624
  %tobool119.not.i = icmp eq i32 %call118.i, 0, !dbg !3624
  br i1 %tobool119.not.i, label %if.end121.i, label %for.end.i19, !dbg !3625

if.end121.i:                                      ; preds = %for.body.lr.ph.i, %for.body.i27
  %i_file.2653.i150 = phi i64 [ %add217611.i, %for.body.i27 ], [ %i_file.1.i, %for.body.lr.ph.i ]
  %i_frame_output.0654.i149 = phi i32 [ %i_frame_output.1.i, %for.body.i27 ], [ 0, %for.body.lr.ph.i ]
  %pts_warning_cnt.0656.i148 = phi i32 [ %pts_warning_cnt.2.i, %for.body.i27 ], [ 0, %for.body.lr.ph.i ]
  %largest_pts.0657.i147 = phi i64 [ %231, %for.body.i27 ], [ -1, %for.body.lr.ph.i ]
  %pulldown_pts.0661.i146 = phi double [ %pulldown_pts.1.i, %for.body.i27 ], [ 0.000000e+00, %for.body.lr.ph.i ]
  %indvars.iv.i28144 = phi i64 [ %indvars.iv.next.i30, %for.body.i27 ], [ 0, %for.body.lr.ph.i ]
  %indvars262 = trunc i64 %indvars.iv.i28144 to i32
    #dbg_value(i64 %i_file.2653.i150, !2678, !DIExpression(), !2730)
    #dbg_value(i32 %i_frame_output.0654.i149, !2675, !DIExpression(), !2730)
    #dbg_value(i32 %pts_warning_cnt.0656.i148, !2684, !DIExpression(), !2730)
    #dbg_value(i64 %largest_pts.0657.i147, !2685, !DIExpression(), !2730)
    #dbg_value(double %pulldown_pts.0661.i146, !2691, !DIExpression(), !2730)
    #dbg_value(i64 %indvars.iv.i28144, !2673, !DIExpression(), !2730)
  %219 = load i32, ptr %b_vfr_input.i, align 8, !dbg !3627
  %tobool123.not.i = icmp eq i32 %219, 0, !dbg !3629
  br i1 %tobool123.not.i, label %if.end126.i, label %if.end121.if.else_crit_edge.i, !dbg !3630

if.end121.if.else_crit_edge.i:                    ; preds = %if.end121.i
  %.pre690.pre.i = load i64, ptr %i_pts.i, align 8, !dbg !3631
  br label %if.else.i, !dbg !3630

if.end126.i:                                      ; preds = %if.end121.i
  store i64 %indvars.iv.i28144, ptr %i_pts.i, align 8, !dbg !3632, !DIAssignID !3633
    #dbg_assign(i64 %indvars.iv.i28144, !2670, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3633, ptr %i_pts.i, !DIExpression(), !2730)
  %220 = load i32, ptr %i_pulldown.i, align 8, !dbg !3634
  %tobool128.not.i = icmp eq i32 %220, 0, !dbg !3636
  br i1 %tobool128.not.i, label %if.else.i, label %if.then132.i, !dbg !3637

if.then132.i:                                     ; preds = %if.end126.i
  %221 = load i32, ptr %pulldown.0.i, align 4, !dbg !3638
  %rem.i = srem i32 %indvars262, %221, !dbg !3640
  %idxprom133.i = zext nneg i32 %rem.i to i64, !dbg !3641
  %arrayidx134.i36 = getelementptr inbounds [24 x i8], ptr %pattern.i, i64 0, i64 %idxprom133.i, !dbg !3641
  %222 = load i8, ptr %arrayidx134.i36, align 1, !dbg !3641
  %conv135.i = zext i8 %222 to i32, !dbg !3641
  store i32 %conv135.i, ptr %i_pic_struct.i, align 8, !dbg !3642, !DIAssignID !3643
    #dbg_assign(i32 %conv135.i, !2670, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !3643, ptr %i_pic_struct.i, !DIExpression(), !2730)
  %add136.i = fadd double %pulldown_pts.0661.i146, 5.000000e-01, !dbg !3644
  %conv137.i = fptosi double %add136.i to i64, !dbg !3645
  store i64 %conv137.i, ptr %i_pts.i, align 8, !dbg !3646, !DIAssignID !3647
    #dbg_assign(i64 %conv137.i, !2670, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3647, ptr %i_pts.i, !DIExpression(), !2730)
  %idxprom140.i = zext i8 %222 to i64, !dbg !3648
  %arrayidx141.i = getelementptr inbounds [10 x float], ptr @pulldown_frame_duration, i64 0, i64 %idxprom140.i, !dbg !3648
  %223 = load float, ptr %arrayidx141.i, align 4, !dbg !3648
  %conv142.i = fpext float %223 to double, !dbg !3648
  %add143.i = fadd double %pulldown_pts.0661.i146, %conv142.i, !dbg !3649
    #dbg_value(double %add143.i, !2691, !DIExpression(), !2730)
  br label %if.end153.i, !dbg !3650

if.else.i:                                        ; preds = %if.end126.i, %if.end121.if.else_crit_edge.i
  %.pre690.i = phi i64 [ %.pre690.pre.i, %if.end121.if.else_crit_edge.i ], [ %indvars.iv.i28144, %if.end126.i ], !dbg !3631
  %224 = load double, ptr %timebase_convert_multiplier.i25, align 8, !dbg !3651
  %tobool144.i = fcmp une double %224, 0.000000e+00, !dbg !3653
  br i1 %tobool144.i, label %if.then145.i, label %if.end153.i, !dbg !3654

if.then145.i:                                     ; preds = %if.else.i
  %conv147.i = sitofp i64 %.pre690.i to double, !dbg !3655
  %225 = call double @llvm.fmuladd.f64(double %conv147.i, double %224, double 5.000000e-01), !dbg !3656
  %conv150.i = fptosi double %225 to i64, !dbg !3657
  store i64 %conv150.i, ptr %i_pts.i, align 8, !dbg !3658, !DIAssignID !3659
    #dbg_assign(i64 %conv150.i, !2670, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3659, ptr %i_pts.i, !DIExpression(), !2730)
  br label %if.end153.i, !dbg !3660

if.end153.i:                                      ; preds = %if.then145.i, %if.else.i, %if.then132.i
  %226 = phi i64 [ %conv150.i, %if.then145.i ], [ %.pre690.i, %if.else.i ], [ %conv137.i, %if.then132.i ], !dbg !3631
  %pulldown_pts.1.i = phi double [ %pulldown_pts.0661.i146, %if.then145.i ], [ %pulldown_pts.0661.i146, %if.else.i ], [ %add143.i, %if.then132.i ], !dbg !2730
    #dbg_value(double %pulldown_pts.1.i, !2691, !DIExpression(), !2730)
  %mul156.i = mul nsw i64 %226, %conv155.i, !dbg !3661
    #dbg_value(i64 %mul156.i, !2696, !DIExpression(), !3662)
  %cmp158.not.i = icmp sgt i64 %226, %largest_pts.0657.i147, !dbg !3663
  br i1 %cmp158.not.i, label %if.end188.i, label %if.then160.i, !dbg !3665

if.then160.i:                                     ; preds = %if.end153.i
  %227 = load i32, ptr %i_log_level80.i, align 8, !dbg !3666
  %cmp162.i = icmp sgt i32 %227, 0, !dbg !3669
  br i1 %cmp162.i, label %if.then164.i, label %if.end182.i, !dbg !3670

if.then164.i:                                     ; preds = %if.then160.i
  %cmp166.i = icmp ugt i32 %227, 2, !dbg !3671
  %cmp169.i = icmp slt i32 %pts_warning_cnt.0656.i148, 3
  %or.cond.i35 = select i1 %cmp166.i, i1 true, i1 %cmp169.i, !dbg !3674
  br i1 %or.cond.i35, label %if.then171.i, label %if.else175.i, !dbg !3674

if.then171.i:                                     ; preds = %if.then164.i
  %228 = load ptr, ptr @stderr, align 8, !dbg !3675
  %mul173.i = mul nsw i64 %largest_pts.0657.i147, %conv155.i, !dbg !3676
  %call174.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef nonnull @.str.379, i32 noundef %indvars262, i64 noundef %mul156.i, i64 noundef %mul173.i) #18, !dbg !3677
  br label %if.end181.i, !dbg !3677

if.else175.i:                                     ; preds = %if.then164.i
  %cmp176.i = icmp eq i32 %pts_warning_cnt.0656.i148, 3, !dbg !3678
  br i1 %cmp176.i, label %if.then178.i, label %if.end181.i, !dbg !3680

if.then178.i:                                     ; preds = %if.else175.i
  %229 = load ptr, ptr @stderr, align 8, !dbg !3681
  %230 = call i64 @fwrite(ptr nonnull @.str.380, i64 77, i64 1, ptr %229) #19, !dbg !3682
  br label %if.end181.i, !dbg !3682

if.end181.i:                                      ; preds = %if.then178.i, %if.else175.i, %if.then171.i
  %inc.i = add nsw i32 %pts_warning_cnt.0656.i148, 1, !dbg !3683
    #dbg_value(i32 %inc.i, !2684, !DIExpression(), !2730)
  br label %if.end182.i, !dbg !3684

if.end182.i:                                      ; preds = %if.end181.i, %if.then160.i
  %pts_warning_cnt.1.i = phi i32 [ %inc.i, %if.end181.i ], [ %pts_warning_cnt.0656.i148, %if.then160.i ], !dbg !2730
    #dbg_value(i32 %pts_warning_cnt.1.i, !2684, !DIExpression(), !2730)
  %add183.i = add nsw i64 %largest_pts.0657.i147, %div82.i, !dbg !3685
  store i64 %add183.i, ptr %i_pts.i, align 8, !dbg !3686, !DIAssignID !3687
    #dbg_assign(i64 %add183.i, !2670, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3687, ptr %i_pts.i, !DIExpression(), !2730)
  %mul187.i = mul nsw i64 %add183.i, %conv155.i, !dbg !3688
    #dbg_value(i64 %mul187.i, !2696, !DIExpression(), !3662)
  br label %if.end188.i, !dbg !3689

if.end188.i:                                      ; preds = %if.end182.i, %if.end153.i
  %231 = phi i64 [ %add183.i, %if.end182.i ], [ %226, %if.end153.i ], !dbg !3690
  %pts_warning_cnt.2.i = phi i32 [ %pts_warning_cnt.1.i, %if.end182.i ], [ %pts_warning_cnt.0656.i148, %if.end153.i ], !dbg !2730
  %output_pts.0.i = phi i64 [ %mul187.i, %if.end182.i ], [ %mul156.i, %if.end153.i ], !dbg !3662
    #dbg_value(i64 %output_pts.0.i, !2696, !DIExpression(), !3662)
    #dbg_value(i32 %pts_warning_cnt.2.i, !2684, !DIExpression(), !2730)
    #dbg_value(i64 %largest_pts.0657.i147, !2686, !DIExpression(), !2730)
    #dbg_value(i64 %231, !2685, !DIExpression(), !2730)
  %232 = load ptr, ptr %tcfile_out.i, align 8, !dbg !3691
  %tobool191.not.i = icmp eq ptr %232, null, !dbg !3693
  br i1 %tobool191.not.i, label %if.end203.i, label %if.then192.i, !dbg !3694

if.then192.i:                                     ; preds = %if.end188.i
  %conv194.i = sitofp i64 %output_pts.0.i to double, !dbg !3695
  %233 = load i32, ptr %133, align 4, !dbg !3696
  %conv196.i = uitofp i32 %233 to double, !dbg !3697
  %234 = load i32, ptr %134, align 8, !dbg !3698
  %conv198.i = uitofp i32 %234 to double, !dbg !3699
  %div199.i = fdiv double %conv196.i, %conv198.i, !dbg !3700
  %mul200.i = fmul double %div199.i, %conv194.i, !dbg !3701
  %mul201.i = fmul double %mul200.i, 1.000000e+03, !dbg !3702
  %call202.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %232, ptr noundef nonnull @.str.381, double noundef %mul201.i) #15, !dbg !3703
  br label %if.end203.i, !dbg !3703

if.end203.i:                                      ; preds = %if.then192.i, %if.end188.i
  %235 = load ptr, ptr %qpfile.i, align 8, !dbg !3704
  %tobool204.not.i = icmp eq ptr %235, null, !dbg !3705
  br i1 %tobool204.not.i, label %if.else208.i, label %if.then205.i, !dbg !3706

if.then205.i:                                     ; preds = %if.end203.i
  %236 = load i32, ptr %i_seek.i, align 4, !dbg !3707
  %add207.i = add nsw i32 %236, %indvars262, !dbg !3708
    #dbg_assign(i1 undef, !2722, !DIExpression(), !2728, ptr %type.i.i, !DIExpression(), !2724)
    #dbg_value(ptr %opt, !2717, !DIExpression(), !2724)
    #dbg_value(ptr %pic.i, !2718, !DIExpression(), !2724)
    #dbg_value(i32 %add207.i, !2719, !DIExpression(), !2724)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i.i) #15, !dbg !3709
  store i32 -1, ptr %num.i.i, align 4, !dbg !3710, !DIAssignID !3711
    #dbg_assign(i32 -1, !2712, !DIExpression(), !3711, ptr %num.i.i, !DIExpression(), !2724)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qp.i.i) #15, !dbg !3709
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.i.i) #15, !dbg !3712
  %cmp88.i.i = icmp sgt i32 %add207.i, -1, !dbg !3713
  br i1 %cmp88.i.i, label %while.body.i559.i, label %parse_qpfile.exit.i, !dbg !3714

while.body.i559.i:                                ; preds = %if.then205.i, %while.cond.backedge.i.i
  %237 = load ptr, ptr %qpfile.i, align 8, !dbg !3715
  %call.i.i31 = call i64 @ftell(ptr noundef %237), !dbg !3717
    #dbg_value(i64 %call.i.i31, !2723, !DIExpression(), !2724)
  %238 = load ptr, ptr %qpfile.i, align 8, !dbg !3718
  %call2.i.i32 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %238, ptr noundef nonnull @.str.387, ptr noundef nonnull %num.i.i, ptr noundef nonnull %type.i.i, ptr noundef nonnull %qp.i.i) #15, !dbg !3719
    #dbg_value(i32 %call2.i.i32, !2721, !DIExpression(), !2724)
  %239 = load i32, ptr %num.i.i, align 4, !dbg !3720
  %cmp3.i.i = icmp sgt i32 %239, %add207.i, !dbg !3722
  %cmp4.i.i = icmp eq i32 %call2.i.i32, -1
  %or.cond.i.i33 = select i1 %cmp3.i.i, i1 true, i1 %cmp4.i.i, !dbg !3723
  br i1 %or.cond.i.i33, label %if.then.i.i, label %if.end.i.i34, !dbg !3723

if.then.i.i:                                      ; preds = %while.body.i559.i
  store i32 0, ptr %pic.i, align 8, !dbg !3724, !DIAssignID !3726
    #dbg_assign(i32 0, !2670, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3726, ptr %pic.i, !DIExpression(), !2730)
  store i32 0, ptr %i_qpplus111.i.i, align 4, !dbg !3727, !DIAssignID !3728
    #dbg_assign(i32 0, !2670, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3728, ptr %i_qpplus111.i.i, !DIExpression(), !2730)
  %240 = load ptr, ptr %qpfile.i, align 8, !dbg !3729
  %call6.i.i = call i32 @fseek(ptr noundef %240, i64 noundef %call.i.i31, i32 noundef 0), !dbg !3730
  br label %parse_qpfile.exit.i, !dbg !3731

if.end.i.i34:                                     ; preds = %while.body.i559.i
  %cmp7.i.i = icmp slt i32 %239, %add207.i, !dbg !3732
  %cmp8.i.i = icmp eq i32 %call2.i.i32, 3
  %or.cond61.i.i = select i1 %cmp7.i.i, i1 %cmp8.i.i, i1 false, !dbg !3734
  br i1 %or.cond61.i.i, label %while.cond.backedge.i.i, label %if.end10.i.i, !dbg !3734

while.cond.backedge.i.i:                          ; preds = %if.end44.i.i, %if.end.i.i34
  br i1 %cmp7.i.i, label %while.body.i559.i, label %parse_qpfile.exit.i, !dbg !3714, !llvm.loop !3735

if.end10.i.i:                                     ; preds = %if.end.i.i34
  %241 = load i32, ptr %qp.i.i, align 4, !dbg !3737
  %add.i.i = add nsw i32 %241, 1, !dbg !3738
  store i32 %add.i.i, ptr %i_qpplus111.i.i, align 4, !dbg !3739, !DIAssignID !3740
    #dbg_assign(i32 %add.i.i, !2670, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3740, ptr %i_qpplus111.i.i, !DIExpression(), !2730)
  %242 = load i8, ptr %type.i.i, align 1, !dbg !3741
  switch i8 %242, label %if.then53.i.i [
    i8 73, label %if.end44.i.i
    i8 105, label %if.then19.i.i
    i8 80, label %if.then25.i.i
    i8 66, label %if.then31.i.i
    i8 98, label %if.then37.i.i
  ], !dbg !3743

if.then19.i.i:                                    ; preds = %if.end10.i.i
  br label %if.end44.i.i, !dbg !3744

if.then25.i.i:                                    ; preds = %if.end10.i.i
  br label %if.end44.i.i, !dbg !3746

if.then31.i.i:                                    ; preds = %if.end10.i.i
  br label %if.end44.i.i, !dbg !3748

if.then37.i.i:                                    ; preds = %if.end10.i.i
  br label %if.end44.i.i, !dbg !3750

if.end44.i.i:                                     ; preds = %if.then37.i.i, %if.then31.i.i, %if.then25.i.i, %if.then19.i.i, %if.end10.i.i
  %.sink.i.i = phi i32 [ 2, %if.then19.i.i ], [ 4, %if.then31.i.i ], [ 5, %if.then37.i.i ], [ 3, %if.then25.i.i ], [ 1, %if.end10.i.i ]
  store i32 %.sink.i.i, ptr %pic.i, align 8, !dbg !3752, !DIAssignID !3753
    #dbg_assign(i32 %.sink.i.i, !2670, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3753, ptr %pic.i, !DIExpression(), !2730)
    #dbg_value(i32 %call2.i.i32, !2721, !DIExpression(), !2724)
  %cmp45.i.i = icmp ne i32 %call2.i.i32, 3, !dbg !3754
  %243 = add i32 %241, -52, !dbg !3756
  %244 = icmp ult i32 %243, -53, !dbg !3756
  %or.cond63.i.i = select i1 %cmp45.i.i, i1 true, i1 %244, !dbg !3756
  br i1 %or.cond63.i.i, label %if.then53.i.i, label %while.cond.backedge.i.i, !dbg !3756

if.then53.i.i:                                    ; preds = %if.end44.i.i, %if.end10.i.i
  %245 = load ptr, ptr @stderr, align 8, !dbg !3757
  %call54.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef nonnull @.str.388, i32 noundef %add207.i) #18, !dbg !3759
  %246 = load ptr, ptr %qpfile.i, align 8, !dbg !3760
  %call56.i.i = call i32 @fclose(ptr noundef %246), !dbg !3761
  store ptr null, ptr %qpfile.i, align 8, !dbg !3762, !DIAssignID !3763
    #dbg_assign(ptr null, !1502, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3763, ptr %qpfile.i, !DIExpression(), !2802)
  store i32 0, ptr %pic.i, align 8, !dbg !3764, !DIAssignID !3765
    #dbg_assign(i32 0, !2670, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3765, ptr %pic.i, !DIExpression(), !2730)
  store i32 0, ptr %i_qpplus111.i.i, align 4, !dbg !3766, !DIAssignID !3767
    #dbg_assign(i32 0, !2670, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3767, ptr %i_qpplus111.i.i, !DIExpression(), !2730)
  br label %parse_qpfile.exit.i, !dbg !3768

parse_qpfile.exit.i:                              ; preds = %while.cond.backedge.i.i, %if.then53.i.i, %if.then.i.i, %if.then205.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i.i) #15, !dbg !3769
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qp.i.i) #15, !dbg !3769
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i.i) #15, !dbg !3769
  br label %if.end209.i, !dbg !3770

if.else208.i:                                     ; preds = %if.end203.i
  store i32 0, ptr %pic.i, align 8, !dbg !3771, !DIAssignID !3773
    #dbg_assign(i32 0, !2670, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3773, ptr %pic.i, !DIExpression(), !2730)
  store i32 0, ptr %i_qpplus111.i.i, align 4, !dbg !3774, !DIAssignID !3775
    #dbg_assign(i32 0, !2670, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3775, ptr %i_qpplus111.i.i, !DIExpression(), !2730)
  br label %if.end209.i

if.end209.i:                                      ; preds = %if.else208.i, %parse_qpfile.exit.i
    #dbg_value(i64 poison, !2682, !DIExpression(), !2730)
  %247 = load ptr, ptr %hout.i, align 8, !dbg !3776
    #dbg_assign(i1 undef, !2657, !DIExpression(), !2710, ptr %i_nal.i.i, !DIExpression(), !2707)
    #dbg_value(ptr %call47.i, !2652, !DIExpression(), !2707)
    #dbg_value(ptr %247, !2653, !DIExpression(), !2707)
    #dbg_value(ptr %pic.i, !2654, !DIExpression(), !2707)
    #dbg_value(ptr undef, !2655, !DIExpression(), !2707)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pic_out.i.i) #15, !dbg !3777
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nal.i.i) #15, !dbg !3778
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_nal.i.i) #15, !dbg !3779
    #dbg_value(i32 0, !2658, !DIExpression(), !2707)
  %call.i560.i = call i32 @x264_encoder_encode(ptr noundef nonnull %call47.i, ptr noundef nonnull %nal.i.i, ptr noundef nonnull %i_nal.i.i, ptr noundef nonnull %pic.i, ptr noundef nonnull %pic_out.i.i) #15, !dbg !3780
    #dbg_value(i32 %call.i560.i, !2658, !DIExpression(), !2707)
  %cmp.i561.i = icmp slt i32 %call.i560.i, 0, !dbg !3781
  br i1 %cmp.i561.i, label %Encode_frame.exit.thread.i, label %if.end.i562.i, !dbg !3783

Encode_frame.exit.thread.i:                       ; preds = %if.end209.i
  %248 = load ptr, ptr @stderr, align 8, !dbg !3784
  %249 = call i64 @fwrite(ptr nonnull @.str.389, i64 41, i64 1, ptr %248) #19, !dbg !3786
    #dbg_value(i64 poison, !2681, !DIExpression(), !2730)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i.i) #15, !dbg !3787
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i.i) #15, !dbg !3787
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i.i) #15, !dbg !3787
    #dbg_value(i32 -1, !2679, !DIExpression(), !2730)
  br label %Encode.exit, !dbg !3788

if.end.i562.i:                                    ; preds = %if.end209.i
  %tobool.not.i.i = icmp eq i32 %call.i560.i, 0, !dbg !3789
  br i1 %tobool.not.i.i, label %if.end215.thread.i, label %Encode_frame.exit.i, !dbg !3791

if.end215.thread.i:                               ; preds = %if.end.i562.i
    #dbg_value(i64 poison, !2681, !DIExpression(), !2730)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i.i) #15, !dbg !3787
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i.i) #15, !dbg !3787
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i.i) #15, !dbg !3787
    #dbg_value(i32 0, !2679, !DIExpression(), !2730)
    #dbg_value(i64 %i_file.2653.i150, !2678, !DIExpression(), !2730)
  br label %if.end225.i, !dbg !3792

Encode_frame.exit.i:                              ; preds = %if.end.i562.i
  %250 = load ptr, ptr getelementptr inbounds (i8, ptr @output, i64 24), align 8, !dbg !3793
  %251 = load ptr, ptr %nal.i.i, align 8, !dbg !3795
  %p_payload.i.i = getelementptr inbounds i8, ptr %251, i64 16, !dbg !3796
  %252 = load ptr, ptr %p_payload.i.i, align 8, !dbg !3796
  %call3.i.i = call i32 %250(ptr noundef %247, ptr noundef %252, i32 noundef %call.i560.i, ptr noundef nonnull %pic_out.i.i) #15, !dbg !3797
    #dbg_value(i32 %call3.i.i, !2658, !DIExpression(), !2707)
    #dbg_value(i64 poison, !2681, !DIExpression(), !2730)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i.i) #15, !dbg !3787
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i.i) #15, !dbg !3787
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i.i) #15, !dbg !3787
    #dbg_value(i32 %call3.i.i, !2679, !DIExpression(), !2730)
  %cmp212.i = icmp slt i32 %call3.i.i, 0, !dbg !3798
  br i1 %cmp212.i, label %Encode.exit, label %if.end215.i, !dbg !3788

if.end215.i:                                      ; preds = %Encode_frame.exit.i
  %conv216.i = zext nneg i32 %call3.i.i to i64, !dbg !3800
  %add217.i = add nsw i64 %i_file.2653.i150, %conv216.i, !dbg !3801
    #dbg_value(i64 %add217.i, !2678, !DIExpression(), !2730)
  %tobool218.not.i = icmp ne i32 %call3.i.i, 0, !dbg !3802
  %inc220.i = zext i1 %tobool218.not.i to i32, !dbg !3792
  %spec.select696.i = add nsw i32 %i_frame_output.0654.i149, %inc220.i, !dbg !3792
  br label %if.end225.i, !dbg !3792

if.end225.i:                                      ; preds = %if.end215.i, %if.end215.thread.i
  %add217611.i = phi i64 [ %i_file.2653.i150, %if.end215.thread.i ], [ %add217.i, %if.end215.i ]
  %i_frame_output.1.i = phi i32 [ %i_frame_output.0654.i149, %if.end215.thread.i ], [ %spec.select696.i, %if.end215.i ], !dbg !3804
    #dbg_value(i64 poison, !2683, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2682, !DIExpression(), !2730)
    #dbg_value(i32 %i_frame_output.1.i, !2675, !DIExpression(), !2730)
  %indvars.iv.next.i30 = add nuw i64 %indvars.iv.i28144, 1, !dbg !3805
    #dbg_value(i64 %indvars.iv.next.i30, !2673, !DIExpression(), !2730)
  %indvars = trunc i64 %indvars.iv.next.i30 to i32, !dbg !3626
  %253 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 32), align 8, !dbg !3806
  %tobool227.not.i = icmp eq ptr %253, null, !dbg !3808
  br i1 %tobool227.not.i, label %if.end233.i, label %land.lhs.true228.i, !dbg !3809

land.lhs.true228.i:                               ; preds = %if.end225.i
  %254 = load ptr, ptr %hin.i, align 8, !dbg !3810
  %call230.i = call i32 %253(ptr noundef nonnull %pic.i, ptr noundef %254) #15, !dbg !3811
  %tobool231.not.i = icmp eq i32 %call230.i, 0, !dbg !3811
  br i1 %tobool231.not.i, label %if.end233.i, label %for.end.i19, !dbg !3812

if.end233.i:                                      ; preds = %land.lhs.true228.i, %if.end225.i
  %255 = load i32, ptr %opt, align 8, !dbg !3813
  %tobool235.not.i = icmp eq i32 %255, 0, !dbg !3815
  br i1 %tobool235.not.i, label %cleanup247.i, label %land.lhs.true236.i, !dbg !3816

land.lhs.true236.i:                               ; preds = %if.end233.i
  %rem237.i = srem i32 %i_frame_output.1.i, %cond26.i, !dbg !3817
  %cmp238.i = icmp eq i32 %rem237.i, 0, !dbg !3818
  %tobool241.i = icmp ne i32 %i_frame_output.1.i, 0
  %or.cond397.i = and i1 %tobool241.i, %cmp238.i, !dbg !3819
  br i1 %or.cond397.i, label %if.then242.i, label %cleanup247.i, !dbg !3819

if.then242.i:                                     ; preds = %land.lhs.true236.i
    #dbg_value(i64 %call71.i, !3820, !DIExpression(), !3837)
    #dbg_value(i32 %i_frame_output.1.i, !3825, !DIExpression(), !3837)
    #dbg_value(i32 %i_frame_total.0589.i, !3826, !DIExpression(), !3837)
    #dbg_value(i64 %add217611.i, !3827, !DIExpression(), !3837)
    #dbg_value(ptr undef, !3828, !DIExpression(), !3837)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3829, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value), !3837)
  %call.i564.i = call i64 @x264_mdate() #15, !dbg !3839
    #dbg_value(!DIArgList(i64 %call.i564.i, i64 %call71.i), !3834, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !3837)
    #dbg_value(double poison, !3835, !DIExpression(), !3837)
  br label %cleanup247.i, !dbg !3840

cleanup247.i:                                     ; preds = %if.then242.i, %land.lhs.true236.i, %if.end233.i
    #dbg_value(i64 poison, !2681, !DIExpression(), !2730)
    #dbg_value(double %pulldown_pts.1.i, !2691, !DIExpression(), !2730)
    #dbg_value(i64 %indvars.iv.next.i30, !2673, !DIExpression(), !2730)
    #dbg_value(i64 %largest_pts.0657.i147, !2686, !DIExpression(), !2730)
    #dbg_value(i64 %231, !2685, !DIExpression(), !2730)
    #dbg_value(i32 %pts_warning_cnt.2.i, !2684, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2683, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2682, !DIExpression(), !2730)
    #dbg_value(i32 %i_frame_output.1.i, !2675, !DIExpression(), !2730)
    #dbg_value(i64 %add217611.i, !2678, !DIExpression(), !2730)
  %cmp112.i = icmp sgt i32 %i_frame_total.0589.i, %indvars, !dbg !3617
  %256 = or i1 %tobool.not591.i, %cmp112.i, !dbg !3618
  br i1 %256, label %for.body.i27, label %for.end.i19, !dbg !3619

for.end.i19:                                      ; preds = %for.body.i27, %land.lhs.true228.i, %cleanup247.i, %for.body.lr.ph.i, %if.end109.i
  %i_file.4.i = phi i64 [ %i_file.1.i, %if.end109.i ], [ %i_file.1.i, %for.body.lr.ph.i ], [ %add217611.i, %cleanup247.i ], [ %add217611.i, %land.lhs.true228.i ], [ %add217611.i, %for.body.i27 ], !dbg !3611
  %i_frame_output.3.i = phi i32 [ 0, %if.end109.i ], [ 0, %for.body.lr.ph.i ], [ %i_frame_output.1.i, %cleanup247.i ], [ %i_frame_output.1.i, %land.lhs.true228.i ], [ %i_frame_output.1.i, %for.body.i27 ], !dbg !3841
  %pts_warning_cnt.3.i = phi i32 [ 0, %if.end109.i ], [ 0, %for.body.lr.ph.i ], [ %pts_warning_cnt.2.i, %cleanup247.i ], [ %pts_warning_cnt.2.i, %land.lhs.true228.i ], [ %pts_warning_cnt.2.i, %for.body.i27 ], !dbg !2730
  %largest_pts.1.i = phi i64 [ -1, %if.end109.i ], [ -1, %for.body.lr.ph.i ], [ %231, %cleanup247.i ], [ %231, %land.lhs.true228.i ], [ %231, %for.body.i27 ], !dbg !2730
  %second_largest_pts.1.i = phi i64 [ -1, %if.end109.i ], [ -1, %for.body.lr.ph.i ], [ %largest_pts.0657.i147, %cleanup247.i ], [ %largest_pts.0657.i147, %land.lhs.true228.i ], [ %largest_pts.0657.i147, %for.body.i27 ], !dbg !2730
    #dbg_value(i64 poison, !2681, !DIExpression(), !2730)
    #dbg_value(i32 poison, !2673, !DIExpression(), !2730)
    #dbg_value(i64 %second_largest_pts.1.i, !2686, !DIExpression(), !2730)
    #dbg_value(i64 %largest_pts.1.i, !2685, !DIExpression(), !2730)
    #dbg_value(i32 %pts_warning_cnt.3.i, !2684, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2683, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2682, !DIExpression(), !2730)
    #dbg_value(i32 %i_frame_output.3.i, !2675, !DIExpression(), !2730)
    #dbg_value(i64 %i_file.4.i, !2678, !DIExpression(), !2730)
  %call252679.i = call i32 @x264_encoder_delayed_frames(ptr noundef nonnull %call47.i) #15, !dbg !3842
  %tobool253.not680.i = icmp eq i32 %call252679.i, 0, !dbg !3843
  br i1 %tobool253.not680.i, label %while.end.i, label %while.body.i20, !dbg !3844

while.body.i20:                                   ; preds = %for.end.i19, %if.end283.i
  %i_frame_output.4682.i = phi i32 [ %i_frame_output.5.i, %if.end283.i ], [ %i_frame_output.3.i, %for.end.i19 ]
  %i_file.5681.i = phi i64 [ %add262640.i, %if.end283.i ], [ %i_file.4.i, %for.end.i19 ]
    #dbg_value(i64 poison, !2683, !DIExpression(), !2730)
    #dbg_value(i32 %i_frame_output.4682.i, !2675, !DIExpression(), !2730)
    #dbg_value(i64 %i_file.5681.i, !2678, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2682, !DIExpression(), !2730)
  %257 = load ptr, ptr %hout.i, align 8, !dbg !3845
    #dbg_assign(i1 undef, !2657, !DIExpression(), !2705, ptr %i_nal.i567.i, !DIExpression(), !2659)
    #dbg_value(ptr %call47.i, !2652, !DIExpression(), !2659)
    #dbg_value(ptr %257, !2653, !DIExpression(), !2659)
    #dbg_value(ptr null, !2654, !DIExpression(), !2659)
    #dbg_value(ptr undef, !2655, !DIExpression(), !2659)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pic_out.i565.i) #15, !dbg !3846
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nal.i566.i) #15, !dbg !3847
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_nal.i567.i) #15, !dbg !3848
    #dbg_value(i32 0, !2658, !DIExpression(), !2659)
  %call.i568.i = call i32 @x264_encoder_encode(ptr noundef nonnull %call47.i, ptr noundef nonnull %nal.i566.i, ptr noundef nonnull %i_nal.i567.i, ptr noundef null, ptr noundef nonnull %pic_out.i565.i) #15, !dbg !3849
    #dbg_value(i32 %call.i568.i, !2658, !DIExpression(), !2659)
  %cmp.i569.i = icmp slt i32 %call.i568.i, 0, !dbg !3850
  br i1 %cmp.i569.i, label %Encode_frame.exit578.thread.i, label %if.end.i570.i, !dbg !3851

Encode_frame.exit578.thread.i:                    ; preds = %while.body.i20
  %258 = load ptr, ptr @stderr, align 8, !dbg !3852
  %259 = call i64 @fwrite(ptr nonnull @.str.389, i64 41, i64 1, ptr %258) #19, !dbg !3853
    #dbg_value(i64 poison, !2681, !DIExpression(), !2730)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i567.i) #15, !dbg !3854
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i566.i) #15, !dbg !3854
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i565.i) #15, !dbg !3854
    #dbg_value(i32 -1, !2679, !DIExpression(), !2730)
  br label %Encode.exit, !dbg !3855

if.end.i570.i:                                    ; preds = %while.body.i20
  %tobool.not.i571.i = icmp eq i32 %call.i568.i, 0, !dbg !3856
  br i1 %tobool.not.i571.i, label %if.end260.thread.i, label %Encode_frame.exit578.i, !dbg !3857

if.end260.thread.i:                               ; preds = %if.end.i570.i
    #dbg_value(i64 poison, !2681, !DIExpression(), !2730)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i567.i) #15, !dbg !3854
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i566.i) #15, !dbg !3854
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i565.i) #15, !dbg !3854
    #dbg_value(i32 0, !2679, !DIExpression(), !2730)
    #dbg_value(i64 %i_file.5681.i, !2678, !DIExpression(), !2730)
  br label %if.end270.i21, !dbg !3858

Encode_frame.exit578.i:                           ; preds = %if.end.i570.i
  %260 = load ptr, ptr getelementptr inbounds (i8, ptr @output, i64 24), align 8, !dbg !3859
  %261 = load ptr, ptr %nal.i566.i, align 8, !dbg !3860
  %p_payload.i573.i = getelementptr inbounds i8, ptr %261, i64 16, !dbg !3861
  %262 = load ptr, ptr %p_payload.i573.i, align 8, !dbg !3861
  %call3.i574.i = call i32 %260(ptr noundef %257, ptr noundef %262, i32 noundef %call.i568.i, ptr noundef nonnull %pic_out.i565.i) #15, !dbg !3862
    #dbg_value(i32 %call3.i574.i, !2658, !DIExpression(), !2659)
    #dbg_value(i64 poison, !2681, !DIExpression(), !2730)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i567.i) #15, !dbg !3854
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i566.i) #15, !dbg !3854
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i565.i) #15, !dbg !3854
    #dbg_value(i32 %call3.i574.i, !2679, !DIExpression(), !2730)
  %cmp257.i = icmp slt i32 %call3.i574.i, 0, !dbg !3863
  br i1 %cmp257.i, label %Encode.exit, label %if.end260.i, !dbg !3855

if.end260.i:                                      ; preds = %Encode_frame.exit578.i
  %conv261.i = zext nneg i32 %call3.i574.i to i64, !dbg !3865
  %add262.i = add nsw i64 %i_file.5681.i, %conv261.i, !dbg !3866
    #dbg_value(i64 %add262.i, !2678, !DIExpression(), !2730)
  %tobool263.not.i = icmp ne i32 %call3.i574.i, 0, !dbg !3867
  %inc265.i = zext i1 %tobool263.not.i to i32, !dbg !3858
  %spec.select697.i = add nsw i32 %i_frame_output.4682.i, %inc265.i, !dbg !3858
  br label %if.end270.i21, !dbg !3858

if.end270.i21:                                    ; preds = %if.end260.i, %if.end260.thread.i
  %add262640.i = phi i64 [ %i_file.5681.i, %if.end260.thread.i ], [ %add262.i, %if.end260.i ]
  %i_frame_output.5.i = phi i32 [ %i_frame_output.4682.i, %if.end260.thread.i ], [ %spec.select697.i, %if.end260.i ], !dbg !2730
    #dbg_value(i64 poison, !2683, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2682, !DIExpression(), !2730)
    #dbg_value(i32 %i_frame_output.5.i, !2675, !DIExpression(), !2730)
  %263 = load i32, ptr %opt, align 8, !dbg !3869
  %tobool272.not.i22 = icmp eq i32 %263, 0, !dbg !3871
  br i1 %tobool272.not.i22, label %if.end283.i, label %land.lhs.true273.i, !dbg !3872

land.lhs.true273.i:                               ; preds = %if.end270.i21
  %rem274.i = srem i32 %i_frame_output.5.i, %cond26.i, !dbg !3873
  %cmp275.i = icmp eq i32 %rem274.i, 0, !dbg !3874
  %tobool278.i = icmp ne i32 %i_frame_output.5.i, 0
  %or.cond398.i = and i1 %tobool278.i, %cmp275.i, !dbg !3875
  br i1 %or.cond398.i, label %if.then279.i, label %if.end283.i, !dbg !3875

if.then279.i:                                     ; preds = %land.lhs.true273.i
    #dbg_value(i64 %call71.i, !3820, !DIExpression(), !3876)
    #dbg_value(i32 %i_frame_output.5.i, !3825, !DIExpression(), !3876)
    #dbg_value(i32 poison, !3826, !DIExpression(), !3876)
    #dbg_value(i64 %add262640.i, !3827, !DIExpression(), !3876)
    #dbg_value(ptr undef, !3828, !DIExpression(), !3876)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3829, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value), !3876)
  %call.i579.i = call i64 @x264_mdate() #15, !dbg !3878
    #dbg_value(!DIArgList(i64 %call.i579.i, i64 %call71.i), !3834, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !3876)
    #dbg_value(double poison, !3835, !DIExpression(), !3876)
  br label %if.end283.i, !dbg !3879

if.end283.i:                                      ; preds = %if.then279.i, %land.lhs.true273.i, %if.end270.i21
    #dbg_value(i64 poison, !2681, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2683, !DIExpression(), !2730)
    #dbg_value(i64 poison, !2682, !DIExpression(), !2730)
    #dbg_value(i32 %i_frame_output.5.i, !2675, !DIExpression(), !2730)
    #dbg_value(i64 %add262640.i, !2678, !DIExpression(), !2730)
  %call252.i = call i32 @x264_encoder_delayed_frames(ptr noundef nonnull %call47.i) #15, !dbg !3842
  %tobool253.not.i = icmp eq i32 %call252.i, 0, !dbg !3843
  br i1 %tobool253.not.i, label %while.end.i, label %while.body.i20, !dbg !3844, !llvm.loop !3880

while.end.i:                                      ; preds = %if.end283.i, %for.end.i19
  %i_file.5.lcssa.i = phi i64 [ %i_file.4.i, %for.end.i19 ], [ %add262640.i, %if.end283.i ], !dbg !2730
  %i_frame_output.4.lcssa.i = phi i32 [ %i_frame_output.3.i, %for.end.i19 ], [ %i_frame_output.5.i, %if.end283.i ], !dbg !2730
  %cmp284.i = icmp sgt i32 %pts_warning_cnt.3.i, 2, !dbg !3882
  %264 = load i32, ptr %i_log_level80.i, align 8
  %cmp288.i = icmp slt i32 %264, 3
  %or.cond47 = select i1 %cmp284.i, i1 %cmp288.i, i1 false, !dbg !3884
  br i1 %or.cond47, label %if.then290.i, label %if.end293.i, !dbg !3884

if.then290.i:                                     ; preds = %while.end.i
  %265 = load ptr, ptr @stderr, align 8, !dbg !3885
  %sub291.i = add nsw i32 %pts_warning_cnt.3.i, -3, !dbg !3886
  %call292.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef nonnull @.str.382, i32 noundef %sub291.i) #18, !dbg !3887
  br label %if.end293.i, !dbg !3887

if.end293.i:                                      ; preds = %if.then290.i, %while.end.i
  %cmp294.i = icmp eq i32 %i_frame_output.4.lcssa.i, 1, !dbg !3888
  br i1 %cmp294.i, label %if.then296.i, label %if.else315.i, !dbg !3890

if.then296.i:                                     ; preds = %if.end293.i
  %266 = load i32, ptr %i_fps_den.i, align 8, !dbg !3891
  %conv298.i = uitofp i32 %266 to double, !dbg !3892
    #dbg_value(double %div324.i, !2688, !DIExpression(), !2730)
  br label %if.end326.i, !dbg !3893

if.else315.i:                                     ; preds = %if.end293.i
  %mul316.i = shl nsw i64 %largest_pts.1.i, 1, !dbg !3894
  %sub317.i = sub nsw i64 %mul316.i, %second_largest_pts.1.i, !dbg !3896
  %conv318.i = sitofp i64 %sub317.i to double, !dbg !3897
  %267 = load i32, ptr %133, align 4, !dbg !3898
  %conv320.i = uitofp i32 %267 to double, !dbg !3899
  %mul321.i = fmul double %conv318.i, %conv320.i, !dbg !3900
    #dbg_value(double %div324.i, !2688, !DIExpression(), !2730)
  br label %if.end326.i

if.end326.i:                                      ; preds = %if.else315.i, %if.then296.i
  %.sink.in.i = phi ptr [ %134, %if.else315.i ], [ %i_fps_num.i, %if.then296.i ]
  %mul321.sink.i = phi double [ %mul321.i, %if.else315.i ], [ %conv298.i, %if.then296.i ]
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !dbg !3901
  %conv323.i = uitofp i32 %.sink.i to double, !dbg !3901
  %div324.i = fdiv double %mul321.sink.i, %conv323.i, !dbg !3901
    #dbg_value(double %div324.i, !2688, !DIExpression(), !2730)
  %268 = load i32, ptr %i_pulldown.i, align 8, !dbg !3902
  %tobool328.not.i = icmp ne i32 %268, 0, !dbg !3904
  %269 = load i32, ptr %b_vfr_input.i, align 8
  %tobool331.not.i23 = icmp eq i32 %269, 0
  %or.cond48 = select i1 %tobool328.not.i, i1 %tobool331.not.i23, i1 false, !dbg !3905
  %conv333.i = sitofp i32 %div56.i to double, !dbg !3905
  %mul334.i = fmul double %div324.i, %conv333.i, !dbg !3905
  %duration.1.i = select i1 %or.cond48, double %div324.i, double %mul334.i, !dbg !3905
    #dbg_value(double %duration.1.i, !2688, !DIExpression(), !2730)
  %call336.i = call i64 @x264_mdate() #15, !dbg !3906
    #dbg_value(i64 %call336.i, !2677, !DIExpression(), !2730)
  %270 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 40), align 8, !dbg !3907
  call void %270(ptr noundef nonnull %pic.i) #15, !dbg !3908
  %271 = load i32, ptr %opt, align 8, !dbg !3909
  %tobool338.not.i = icmp eq i32 %271, 0, !dbg !3911
  br i1 %tobool338.not.i, label %if.end341.i, label %if.then339.i, !dbg !3912

if.then339.i:                                     ; preds = %if.end326.i
  %272 = load ptr, ptr @stderr, align 8, !dbg !3913
  %273 = call i64 @fwrite(ptr nonnull @.str.383, i64 80, i64 1, ptr %272) #19, !dbg !3914
  br label %if.end341.i, !dbg !3914

if.end341.i:                                      ; preds = %if.then339.i, %if.end326.i
  call void @x264_encoder_close(ptr noundef nonnull %call47.i) #15, !dbg !3915
  %274 = load ptr, ptr @stderr, align 8, !dbg !3916
  %fputc.i = call i32 @fputc(i32 10, ptr %274), !dbg !3917
  %275 = load ptr, ptr %tcfile_out.i, align 8, !dbg !3918
  %tobool350.not.i = icmp eq ptr %275, null, !dbg !3920
  br i1 %tobool350.not.i, label %if.end355.i, label %if.then351.i, !dbg !3921

if.then351.i:                                     ; preds = %if.end341.i
  %call353.i = call i32 @fclose(ptr noundef nonnull %275), !dbg !3922
  store ptr null, ptr %tcfile_out.i, align 8, !dbg !3924, !DIAssignID !3925
    #dbg_assign(ptr null, !1502, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !3925, ptr %tcfile_out.i, !DIExpression(), !2802)
  br label %if.end355.i, !dbg !3926

if.end355.i:                                      ; preds = %if.then351.i, %if.end341.i
  %276 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 48), align 8, !dbg !3927
  %277 = load ptr, ptr %hin.i, align 8, !dbg !3928
  %call357.i = call i32 %276(ptr noundef %277) #15, !dbg !3929
  %278 = load ptr, ptr getelementptr inbounds (i8, ptr @output, i64 32), align 8, !dbg !3930
  %279 = load ptr, ptr %hout.i, align 8, !dbg !3931
  %call359.i = call i32 %278(ptr noundef %279, i64 noundef %largest_pts.1.i, i64 noundef %second_largest_pts.1.i) #15, !dbg !3932
  %cmp360.i = icmp sgt i32 %i_frame_output.4.lcssa.i, 0, !dbg !3933
  br i1 %cmp360.i, label %if.then362.i, label %Encode.exit, !dbg !3934

if.then362.i:                                     ; preds = %if.end355.i
  %conv363.i = uitofp nneg i32 %i_frame_output.4.lcssa.i to double, !dbg !3935
  %mul364.i = fmul double %conv363.i, 1.000000e+06, !dbg !3936
  %sub365.i = sub nsw i64 %call336.i, %call71.i, !dbg !3937
  %conv366.i = sitofp i64 %sub365.i to double, !dbg !3938
  %div367.i = fdiv double %mul364.i, %conv366.i, !dbg !3939
    #dbg_value(double %div367.i, !2700, !DIExpression(), !3940)
  %280 = load ptr, ptr @stderr, align 8, !dbg !3941
  %conv368.i = sitofp i64 %i_file.5.lcssa.i to double, !dbg !3942
  %mul369.i = fmul double %conv368.i, 8.000000e+00, !dbg !3943
  %mul370.i = fmul double %duration.1.i, 1.000000e+03, !dbg !3944
  %div371.i = fdiv double %mul369.i, %mul370.i, !dbg !3945
  %call372.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef nonnull @.str.385, i32 noundef %i_frame_output.4.lcssa.i, double noundef %div367.i, double noundef %div371.i) #18, !dbg !3946
  br label %Encode.exit, !dbg !3947

Encode.exit:                                      ; preds = %Encode_frame.exit.i, %Encode_frame.exit578.i, %if.then37.i, %if.then50.i, %if.then59.i, %if.then68.i, %if.then85.i, %cleanup.thread.i, %cleanup.i37, %Encode_frame.exit.thread.i, %Encode_frame.exit578.thread.i, %if.end355.i, %if.then362.i
  %retval.4.i = phi i32 [ -1, %if.then50.i ], [ -1, %if.then59.i ], [ -1, %if.then68.i ], [ -1, %if.then85.i ], [ -1, %cleanup.i37 ], [ -1, %if.then37.i ], [ 0, %if.then362.i ], [ 0, %if.end355.i ], [ -1, %cleanup.thread.i ], [ -1, %Encode_frame.exit578.thread.i ], [ -1, %Encode_frame.exit.thread.i ], [ -1, %Encode_frame.exit578.i ], [ -1, %Encode_frame.exit.i ], !dbg !2730
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic.i) #15, !dbg !3948
    #dbg_value(i32 %retval.4.i, !1568, !DIExpression(), !2802)
  br label %cleanup, !dbg !3949

cleanup:                                          ; preds = %Parse.exit.thread, %Encode.exit
  %retval.0 = phi i32 [ %retval.4.i, %Encode.exit ], [ -1, %Parse.exit.thread ], !dbg !2802
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %opt) #15, !dbg !3950
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %param) #15, !dbg !3950
  ret i32 %retval.0, !dbg !3950
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !3951 void @x264_param_default(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !3954 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3961 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !3965 i32 @x264_param_default_preset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @Help(ptr nocapture noundef readonly %defaults, i32 noundef %longhelp) unnamed_addr #5 !dbg !3968 {
entry:
  %buf = alloca [50 x i8], align 16, !DIAssignID !3978
    #dbg_assign(i1 undef, !3974, !DIExpression(), !3978, ptr %buf, !DIExpression(), !3979)
    #dbg_value(ptr %defaults, !3972, !DIExpression(), !3979)
    #dbg_value(i32 %longhelp, !3973, !DIExpression(), !3979)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #15, !dbg !3980
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.168, i32 noundef 96, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170), !dbg !3981
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.390), !dbg !3982
  %putchar = tail call i32 @putchar(i32 10), !dbg !3983
  %puts847 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.391), !dbg !3984
  %puts848 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.392), !dbg !3985
  %putchar849 = tail call i32 @putchar(i32 10), !dbg !3986
  %puts850 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.393), !dbg !3987
  %puts851 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.394), !dbg !3988
  %puts852 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.395), !dbg !3989
  %putchar853 = tail call i32 @putchar(i32 10), !dbg !3990
  %puts854 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.396), !dbg !3991
  %puts855 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.397), !dbg !3992
  %putchar856 = tail call i32 @putchar(i32 10), !dbg !3993
  %puts857 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.398), !dbg !3994
  %puts858 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.399), !dbg !3995
  %putchar859 = tail call i32 @putchar(i32 10), !dbg !3996
  %puts860 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.400), !dbg !3997
  %puts861 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.401), !dbg !3998
  %putchar862 = tail call i32 @putchar(i32 10), !dbg !3999
  %puts863 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.402), !dbg !4000
  %putchar864 = tail call i32 @putchar(i32 10), !dbg !4001
  %puts865 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.403), !dbg !4002
  %cmp = icmp eq i32 %longhelp, 2, !dbg !4003
  br i1 %cmp, label %if.then39, label %if.else41, !dbg !4005

if.then39:                                        ; preds = %entry
  %puts867 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.405), !dbg !4003
  %puts8681087 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.406), !dbg !4006
  %puts870 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.408), !dbg !4007
  %puts8711088 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.409), !dbg !4009
  %puts873 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.411), !dbg !4010
  br label %if.end46.sink.split, !dbg !4012

if.else41:                                        ; preds = %entry
  %puts866 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.404), !dbg !4014
  %puts868 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.406), !dbg !4006
  %puts869 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.407), !dbg !4015
  %puts871 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.409), !dbg !4009
  %puts872 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.410), !dbg !4016
  %cmp42 = icmp sgt i32 %longhelp, 0, !dbg !4017
  br i1 %cmp42, label %if.end46.sink.split, label %if.end46, !dbg !4019

if.end46.sink.split:                              ; preds = %if.else41, %if.then39
  %str.412.sink = phi ptr [ @str.413, %if.then39 ], [ @str.412, %if.else41 ]
  %puts874 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.412.sink), !dbg !4020
  br label %if.end46, !dbg !4021

if.end46:                                         ; preds = %if.end46.sink.split, %if.else41
  %putchar876 = tail call i32 @putchar(i32 10), !dbg !4021
  %puts877 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.414), !dbg !4022
  %putchar878 = tail call i32 @putchar(i32 10), !dbg !4023
  %i_keyint_max = getelementptr inbounds i8, ptr %defaults, i64 84, !dbg !4024
  %0 = load i32, ptr %i_keyint_max, align 4, !dbg !4024
  %call50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.197, i32 noundef %0), !dbg !4025
  br i1 %cmp, label %if.end66.thread, label %if.end66, !dbg !4026

if.end66.thread:                                  ; preds = %if.end46
  %puts879 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.415), !dbg !4027
  %puts880 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.416), !dbg !4029
  %i_scenecut_threshold = getelementptr inbounds i8, ptr %defaults, i64 92, !dbg !4031
  %1 = load i32, ptr %i_scenecut_threshold, align 4, !dbg !4031
  %call61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.200, i32 noundef %1), !dbg !4033
  %puts881 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.417), !dbg !4034
  br label %if.end74, !dbg !4036

if.end66:                                         ; preds = %if.end46
  %cmp67 = icmp sgt i32 %longhelp, 0, !dbg !4037
  br i1 %cmp67, label %if.end74, label %if.end127, !dbg !4036

if.end74:                                         ; preds = %if.end66, %if.end66.thread
  %i_bframe = getelementptr inbounds i8, ptr %defaults, i64 100, !dbg !4039
  %2 = load i32, ptr %i_bframe, align 4, !dbg !4039
  %call69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.202, i32 noundef %2), !dbg !4037
  %i_bframe_adaptive = getelementptr inbounds i8, ptr %defaults, i64 104, !dbg !4040
  %3 = load i32, ptr %i_bframe_adaptive, align 8, !dbg !4040
  %call73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.203, i32 noundef %3), !dbg !4042
  br i1 %cmp, label %if.then76, label %if.then80, !dbg !4043

if.then76:                                        ; preds = %if.end74
  %i_bframe_bias = getelementptr inbounds i8, ptr %defaults, i64 108, !dbg !4044
  %4 = load i32, ptr %i_bframe_bias, align 4, !dbg !4044
  %call77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.204, i32 noundef %4), !dbg !4046
  br label %if.then80, !dbg !4047

if.then80:                                        ; preds = %if.end74, %if.then76
  %i_bframe_pyramid = getelementptr inbounds i8, ptr %defaults, i64 112, !dbg !4048
  %5 = load i32, ptr %i_bframe_pyramid, align 8, !dbg !4048
    #dbg_value(ptr @x264_b_pyramid_names, !4050, !DIExpression(), !4057)
    #dbg_value(i32 %5, !4055, !DIExpression(), !4057)
    #dbg_value(i32 0, !4056, !DIExpression(), !4057)
    #dbg_value(i64 poison, !4056, !DIExpression(), !4057)
  %or.cond.i = icmp ult i32 %5, 3, !dbg !4059
  br i1 %or.cond.i, label %cond.true.i, label %if.end99, !dbg !4059

cond.true.i:                                      ; preds = %if.then80
  %idxprom2.i = zext nneg i32 %5 to i64, !dbg !4060
  %arrayidx3.i = getelementptr inbounds ptr, ptr @x264_b_pyramid_names, i64 %idxprom2.i, !dbg !4060
  %6 = load ptr, ptr %arrayidx3.i, align 8, !dbg !4060
  br label %if.end99, !dbg !4061

if.end99:                                         ; preds = %cond.true.i, %if.then80
  %cond.i = phi ptr [ %6, %cond.true.i ], [ @.str.322, %if.then80 ], !dbg !4061
  %call82 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %cond.i), !dbg !4062
  %puts882 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.418), !dbg !4063
  %i_frame_reference = getelementptr inbounds i8, ptr %defaults, i64 80, !dbg !4065
  %7 = load i32, ptr %i_frame_reference, align 8, !dbg !4065
  %call90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %7), !dbg !4067
  %puts883 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.419), !dbg !4068
  %i_deblocking_filter_alphac0 = getelementptr inbounds i8, ptr %defaults, i64 120, !dbg !4070
  %8 = load i32, ptr %i_deblocking_filter_alphac0, align 8, !dbg !4070
  %i_deblocking_filter_beta = getelementptr inbounds i8, ptr %defaults, i64 124, !dbg !4072
  %9 = load i32, ptr %i_deblocking_filter_beta, align 4, !dbg !4072
  %call98 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.209, i32 noundef %8, i32 noundef %9), !dbg !4073
  br i1 %cmp, label %if.then125, label %if.end127.sink.split, !dbg !4074

if.then125:                                       ; preds = %if.end99
  %puts885 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.421), !dbg !4075
  %puts886 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.422), !dbg !4077
  %puts887 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.423), !dbg !4079
  %puts888 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.424), !dbg !4081
  br label %if.end127.sink.split, !dbg !4082

if.end127.sink.split:                             ; preds = %if.end99, %if.then125
  %str.420.sink = phi ptr [ @str.425, %if.then125 ], [ @str.420, %if.end99 ]
  %str.424.sink.ph = phi ptr [ @str.426, %if.then125 ], [ @str.424, %if.end99 ]
  %str.425.sink.ph = phi ptr [ @str.427, %if.then125 ], [ @str.425, %if.end99 ]
  %str.427.sink.ph = phi ptr [ @str.428, %if.then125 ], [ @str.427, %if.end99 ]
  %puts884 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.420.sink), !dbg !3979
  br label %if.end127, !dbg !3979

if.end127:                                        ; preds = %if.end127.sink.split, %if.end66
  %str.424.sink = phi ptr [ @str.424, %if.end66 ], [ %str.424.sink.ph, %if.end127.sink.split ]
  %str.425.sink = phi ptr [ @str.425, %if.end66 ], [ %str.425.sink.ph, %if.end127.sink.split ]
  %str.427.sink = phi ptr [ @str.427, %if.end66 ], [ %str.427.sink.ph, %if.end127.sink.split ]
  %cmp67109010941096110011061110 = phi i1 [ false, %if.end66 ], [ true, %if.end127.sink.split ]
  %puts888.c = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.424.sink), !dbg !3979
  %puts889.c = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.425.sink), !dbg !3979
  %puts891 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.427.sink), !dbg !3979
  %putchar893 = tail call i32 @putchar(i32 10), !dbg !4084
  %puts894 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.429), !dbg !4085
  %putchar895 = tail call i32 @putchar(i32 10), !dbg !4086
  br i1 %cmp67109010941096110011061110, label %if.then132, label %if.end142.critedge, !dbg !4087

if.then132:                                       ; preds = %if.end127
  %puts896 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.430), !dbg !4088
  %puts897 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.431), !dbg !4090
  %f_rf_constant = getelementptr inbounds i8, ptr %defaults, i64 512, !dbg !4091
  %10 = load float, ptr %f_rf_constant, align 8, !dbg !4091
  %conv = fpext float %10 to double, !dbg !4092
  %call136 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.222, double noundef %conv), !dbg !4093
  %i_lookahead = getelementptr inbounds i8, ptr %defaults, i64 556, !dbg !4094
  %11 = load i32, ptr %i_lookahead, align 4, !dbg !4094
  %call141 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.223, i32 noundef %11), !dbg !4096
  br label %if.end142, !dbg !4096

if.end142.critedge:                               ; preds = %if.end127
  %puts897.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.431), !dbg !4090
  %f_rf_constant.c = getelementptr inbounds i8, ptr %defaults, i64 512, !dbg !4091
  %12 = load float, ptr %f_rf_constant.c, align 8, !dbg !4091
  %conv.c = fpext float %12 to double, !dbg !4092
  %call136.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.222, double noundef %conv.c), !dbg !4093
  br label %if.end142, !dbg !4097

if.end142:                                        ; preds = %if.end142.critedge, %if.then132
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %defaults, i64 524, !dbg !4098
  %13 = load i32, ptr %i_vbv_max_bitrate, align 4, !dbg !4098
  %call144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.224, i32 noundef %13), !dbg !4099
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %defaults, i64 528, !dbg !4100
  %14 = load i32, ptr %i_vbv_buffer_size, align 8, !dbg !4100
  %call146 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.225, i32 noundef %14), !dbg !4101
  br i1 %cmp, label %if.end208, label %if.end208.thread, !dbg !4102

if.end208:                                        ; preds = %if.end142
  %f_vbv_buffer_init = getelementptr inbounds i8, ptr %defaults, i64 532, !dbg !4103
  %15 = load float, ptr %f_vbv_buffer_init, align 4, !dbg !4103
  %conv151 = fpext float %15 to double, !dbg !4105
  %call152 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.226, double noundef %conv151), !dbg !4106
  %puts898 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.432), !dbg !4107
  %i_qp_min = getelementptr inbounds i8, ptr %defaults, i64 496, !dbg !4109
  %16 = load i32, ptr %i_qp_min, align 8, !dbg !4109
  %call163 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.228, i32 noundef %16), !dbg !4111
  %i_qp_max = getelementptr inbounds i8, ptr %defaults, i64 500, !dbg !4112
  %17 = load i32, ptr %i_qp_max, align 4, !dbg !4112
  %call169 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.229, i32 noundef %17), !dbg !4114
  %i_qp_step = getelementptr inbounds i8, ptr %defaults, i64 504, !dbg !4115
  %18 = load i32, ptr %i_qp_step, align 8, !dbg !4115
  %call175 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.230, i32 noundef %18), !dbg !4117
  %f_rate_tolerance = getelementptr inbounds i8, ptr %defaults, i64 520, !dbg !4118
  %19 = load float, ptr %f_rate_tolerance, align 8, !dbg !4118
  %conv181 = fpext float %19 to double, !dbg !4120
  %call182 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.231, double noundef %conv181), !dbg !4121
  %f_ip_factor = getelementptr inbounds i8, ptr %defaults, i64 536, !dbg !4122
  %20 = load float, ptr %f_ip_factor, align 8, !dbg !4122
  %conv188 = fpext float %20 to double, !dbg !4124
  %call189 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.232, double noundef %conv188), !dbg !4125
  %f_pb_factor = getelementptr inbounds i8, ptr %defaults, i64 540, !dbg !4126
  %21 = load float, ptr %f_pb_factor, align 4, !dbg !4126
  %conv195 = fpext float %21 to double, !dbg !4128
  %call196 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.233, double noundef %conv195), !dbg !4129
  %i_chroma_qp_offset = getelementptr inbounds i8, ptr %defaults, i64 408, !dbg !4130
  %22 = load i32, ptr %i_chroma_qp_offset, align 8, !dbg !4130
  %call201 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, i32 noundef %22), !dbg !4132
  %i_aq_mode = getelementptr inbounds i8, ptr %defaults, i64 544, !dbg !4133
  %23 = load i32, ptr %i_aq_mode, align 8, !dbg !4133
  %call207 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.235, i32 noundef %23), !dbg !4135
  br i1 %cmp67109010941096110011061110, label %if.end220, label %if.end226, !dbg !4136

if.end208.thread:                                 ; preds = %if.end142
  br i1 %cmp67109010941096110011061110, label %if.end220, label %if.end602.critedge, !dbg !4136

if.end220:                                        ; preds = %if.end208.thread, %if.end208
  %f_aq_strength = getelementptr inbounds i8, ptr %defaults, i64 548, !dbg !4137
  %24 = load float, ptr %f_aq_strength, align 4, !dbg !4137
  %conv213 = fpext float %24 to double, !dbg !4139
  %call214 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.236, double noundef %conv213), !dbg !4140
  %putchar899 = tail call i32 @putchar(i32 10), !dbg !4141
  %puts900 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.433), !dbg !4143
  br i1 %cmp, label %if.end232, label %if.end232.thread1163, !dbg !4144

if.end226:                                        ; preds = %if.end208
  %puts9001166 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.433), !dbg !4143
  %puts901 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.434), !dbg !4145
  br label %if.end273, !dbg !4147

if.end232.thread1163:                             ; preds = %if.end220
  %psz_stat_out1164 = getelementptr inbounds i8, ptr %defaults, i64 568, !dbg !4148
  %25 = load ptr, ptr %psz_stat_out1164, align 8, !dbg !4148
  %call2311165 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.239, ptr noundef %25), !dbg !4150
  br label %if.then276, !dbg !4151

if.end232:                                        ; preds = %if.end220
  %puts9011169 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.434), !dbg !4145
  %psz_stat_out = getelementptr inbounds i8, ptr %defaults, i64 568, !dbg !4148
  %26 = load ptr, ptr %psz_stat_out, align 8, !dbg !4148
  %call231 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.239, ptr noundef %26), !dbg !4150
  br label %if.end273, !dbg !4151

if.end273:                                        ; preds = %if.end226, %if.end232
  %puts902 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.435), !dbg !4152
  %f_qcompress = getelementptr inbounds i8, ptr %defaults, i64 592, !dbg !4154
  %27 = load float, ptr %f_qcompress, align 8, !dbg !4154
  %conv242 = fpext float %27 to double, !dbg !4156
  %call243 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.241, double noundef %conv242), !dbg !4157
  %f_complexity_blur = getelementptr inbounds i8, ptr %defaults, i64 600, !dbg !4158
  %28 = load float, ptr %f_complexity_blur, align 8, !dbg !4158
  %conv249 = fpext float %28 to double, !dbg !4160
  %call250 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.242, double noundef %conv249), !dbg !4161
  %f_qblur = getelementptr inbounds i8, ptr %defaults, i64 596, !dbg !4162
  %29 = load float, ptr %f_qblur, align 4, !dbg !4162
  %conv256 = fpext float %29 to double, !dbg !4164
  %call257 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.243, double noundef %conv256), !dbg !4165
  %puts903 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.436), !dbg !4166
  %puts904 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.437), !dbg !4168
  %puts905 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.438), !dbg !4170
  br i1 %cmp67109010941096110011061110, label %if.then276, label %if.end305.thread1161, !dbg !4172

if.then276:                                       ; preds = %if.end232.thread1163, %if.end273
  %putchar906 = tail call i32 @putchar(i32 10), !dbg !4173
  %puts907 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.439), !dbg !4175
  %putchar908 = tail call i32 @putchar(i32 10), !dbg !4177
  %puts909 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.440), !dbg !4179
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %defaults, i64 404, !dbg !4181
  %30 = load i32, ptr %i_direct_mv_pred, align 4, !dbg !4181
    #dbg_value(ptr @x264_direct_pred_names, !4050, !DIExpression(), !4183)
    #dbg_value(i32 %30, !4055, !DIExpression(), !4183)
    #dbg_value(i32 0, !4056, !DIExpression(), !4183)
    #dbg_value(i64 poison, !4056, !DIExpression(), !4183)
  %or.cond.i979 = icmp ult i32 %30, 4, !dbg !4185
  br i1 %or.cond.i979, label %cond.true.i981, label %if.end300, !dbg !4185

cond.true.i981:                                   ; preds = %if.then276
  %idxprom2.i982 = zext nneg i32 %30 to i64, !dbg !4186
  %arrayidx3.i983 = getelementptr inbounds ptr, ptr @x264_direct_pred_names, i64 %idxprom2.i982, !dbg !4186
  %31 = load ptr, ptr %arrayidx3.i983, align 8, !dbg !4186
  br label %if.end300, !dbg !4187

if.end300:                                        ; preds = %cond.true.i981, %if.then276
  %cond.i980 = phi ptr [ %31, %cond.true.i981 ], [ @.str.322, %if.then276 ], !dbg !4187
  %call299 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.249, ptr noundef %cond.i980), !dbg !4188
  br i1 %cmp, label %if.end305, label %if.then308, !dbg !4189

if.end305.thread1161:                             ; preds = %if.end273
  %puts9101162 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.441), !dbg !4190
  br label %if.end345, !dbg !4192

if.end305:                                        ; preds = %if.end300
  %puts910 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.441), !dbg !4190
  br label %if.then308, !dbg !4192

if.then308:                                       ; preds = %if.end300, %if.end305
  %i_weighted_pred = getelementptr inbounds i8, ptr %defaults, i64 396, !dbg !4193
  %32 = load i32, ptr %i_weighted_pred, align 4, !dbg !4193
  %call310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.251, i32 noundef %32), !dbg !4195
  %i_me_method = getelementptr inbounds i8, ptr %defaults, i64 412, !dbg !4196
  %33 = load i32, ptr %i_me_method, align 4, !dbg !4196
    #dbg_value(ptr @x264_motion_est_names, !4050, !DIExpression(), !4198)
    #dbg_value(i32 %33, !4055, !DIExpression(), !4198)
    #dbg_value(i64 poison, !4056, !DIExpression(), !4198)
  %or.cond.i991 = icmp ult i32 %33, 5, !dbg !4200
  br i1 %or.cond.i991, label %cond.true.i993, label %if.end318, !dbg !4200

cond.true.i993:                                   ; preds = %if.then308
  %idxprom2.i994 = zext nneg i32 %33 to i64, !dbg !4201
  %arrayidx3.i995 = getelementptr inbounds ptr, ptr @x264_motion_est_names, i64 %idxprom2.i994, !dbg !4201
  %34 = load ptr, ptr %arrayidx3.i995, align 8, !dbg !4201
  br label %if.end318, !dbg !4202

if.end318:                                        ; preds = %cond.true.i993, %if.then308
  %cond.i992 = phi ptr [ %34, %cond.true.i993 ], [ @.str.322, %if.then308 ], !dbg !4202
  %call317 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.252, ptr noundef %cond.i992), !dbg !4203
  br i1 %cmp, label %if.end345, label %if.end362.thread, !dbg !4204

if.end345:                                        ; preds = %if.end305.thread1161, %if.end318
  %puts912 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.443), !dbg !4205
  %i_me_range = getelementptr inbounds i8, ptr %defaults, i64 416, !dbg !4207
  %35 = load i32, ptr %i_me_range, align 8, !dbg !4207
  %call334 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.255, i32 noundef %35), !dbg !4209
  %puts913 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.444), !dbg !4210
  %puts914 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.445), !dbg !4212
  br i1 %cmp67109010941096110011061110, label %if.end371, label %if.end371.thread, !dbg !4214

if.end362.thread:                                 ; preds = %if.end318
  %puts911 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.442), !dbg !4215
  br label %if.end371, !dbg !4217

if.end371.thread:                                 ; preds = %if.end345
  %puts9161113 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.447), !dbg !4218
  %puts917.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.448), !dbg !4220
  %puts918.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.449), !dbg !4222
  %puts919.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.450), !dbg !4224
  br label %if.end407, !dbg !4226

if.end371:                                        ; preds = %if.end345, %if.end362.thread
  %str.447.sink = phi ptr [ @str.446, %if.end362.thread ], [ @str.447, %if.end345 ]
  %i_subpel_refine1159 = getelementptr inbounds i8, ptr %defaults, i64 428, !dbg !4227
  %36 = load i32, ptr %i_subpel_refine1159, align 4, !dbg !4227
  %call3501160 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.258, i32 noundef %36), !dbg !4229
  %puts916 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.447.sink), !dbg !4230
  %f_psy_rd = getelementptr inbounds i8, ptr %defaults, i64 456, !dbg !4231
  %37 = load float, ptr %f_psy_rd, align 8, !dbg !4231
  %conv367 = fpext float %37 to double, !dbg !4233
  %f_psy_trellis = getelementptr inbounds i8, ptr %defaults, i64 460, !dbg !4234
  %38 = load float, ptr %f_psy_trellis, align 4, !dbg !4234
  %conv369 = fpext float %38 to double, !dbg !4235
  %call370 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.261, double noundef %conv367, double noundef %conv369), !dbg !4236
  br i1 %cmp, label %if.end386, label %if.end447.critedge, !dbg !4237

if.end386:                                        ; preds = %if.end371
  %puts917 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.448), !dbg !4220
  %puts918 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.449), !dbg !4222
  %puts919 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.450), !dbg !4224
  %puts920 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.451), !dbg !4238
  %i_trellis = getelementptr inbounds i8, ptr %defaults, i64 440, !dbg !4240
  %39 = load i32, ptr %i_trellis, align 8, !dbg !4240
  %call396 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.266, i32 noundef %39), !dbg !4242
  br label %if.end407, !dbg !4243

if.end407:                                        ; preds = %if.end386, %if.end371.thread
  %cmp671092111511211127 = phi i1 [ true, %if.end386 ], [ false, %if.end371.thread ]
  %puts921 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.452), !dbg !4244
  %puts922 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.453), !dbg !4246
  br i1 %cmp671092111511211127, label %if.end413.thread1140, label %if.then450.critedge, !dbg !4248

if.end413.thread1140:                             ; preds = %if.end407
  %i_noise_reduction1142 = getelementptr inbounds i8, ptr %defaults, i64 452, !dbg !4249
  %40 = load i32, ptr %i_noise_reduction1142, align 4, !dbg !4249
  %call4121143 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.269, i32 noundef %40), !dbg !4251
  %putchar923 = tail call i32 @putchar(i32 10), !dbg !4252
  %i_luma_deadzone = getelementptr inbounds i8, ptr %defaults, i64 468, !dbg !4254
  %41 = load i32, ptr %i_luma_deadzone, align 4, !dbg !4256
  %call423 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.270, i32 noundef %41), !dbg !4257
  %arrayidx430 = getelementptr inbounds i8, ptr %defaults, i64 472, !dbg !4258
  %42 = load i32, ptr %arrayidx430, align 4, !dbg !4258
  %call431 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.271, i32 noundef %42), !dbg !4260
  %puts924 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.454), !dbg !4261
  br label %if.then450, !dbg !4263

if.end447.critedge:                               ; preds = %if.end371
  %puts920.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.451), !dbg !4238
  %i_trellis.c = getelementptr inbounds i8, ptr %defaults, i64 440, !dbg !4240
  %43 = load i32, ptr %i_trellis.c, align 8, !dbg !4240
  %call396.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.266, i32 noundef %43), !dbg !4242
  %i_noise_reduction = getelementptr inbounds i8, ptr %defaults, i64 452, !dbg !4249
  %44 = load i32, ptr %i_noise_reduction, align 4, !dbg !4249
  %call412 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.269, i32 noundef %44), !dbg !4251
  %puts90011661167.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.456), !dbg !3979
  %putchar939.c = tail call i32 @putchar(i32 10), !dbg !4264
  %puts940.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.467), !dbg !4265
  %putchar941.c = tail call i32 @putchar(i32 10), !dbg !4266
  %puts942.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.468), !dbg !4267
  br label %if.then605, !dbg !4268

if.then450.critedge:                              ; preds = %if.end407
  %putchar923.c = tail call i32 @putchar(i32 10), !dbg !4252
  %i_luma_deadzone.c = getelementptr inbounds i8, ptr %defaults, i64 468, !dbg !4254
  %45 = load i32, ptr %i_luma_deadzone.c, align 4, !dbg !4256
  %call423.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.270, i32 noundef %45), !dbg !4257
  %arrayidx430.c = getelementptr inbounds i8, ptr %defaults, i64 472, !dbg !4258
  %46 = load i32, ptr %arrayidx430.c, align 4, !dbg !4258
  %call431.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.271, i32 noundef %46), !dbg !4260
  br label %if.then450, !dbg !4269

if.then450:                                       ; preds = %if.then450.critedge, %if.end413.thread1140
  %str.454.sink = phi ptr [ @str.454, %if.then450.critedge ], [ @str.455, %if.end413.thread1140 ]
  %str.455.sink = phi ptr [ @str.455, %if.then450.critedge ], [ @str.456, %if.end413.thread1140 ]
  %puts924.c = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.454.sink), !dbg !3979
  %puts925.c = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.455.sink), !dbg !3979
  %puts927 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.457), !dbg !4270
  %puts928 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.458), !dbg !4272
  %puts929 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.459), !dbg !4274
  %puts930 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.460), !dbg !4276
  %puts931 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.461), !dbg !4278
  %putchar932 = tail call i32 @putchar(i32 10), !dbg !4280
  %puts933 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.462), !dbg !4282
  %puts934 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.463), !dbg !4284
  %puts935 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.464), !dbg !4286
  %putchar936 = tail call i32 @putchar(i32 10), !dbg !4288
  %i_overscan = getelementptr inbounds i8, ptr %defaults, i64 52, !dbg !4290
  %47 = load i32, ptr %i_overscan, align 4, !dbg !4290
    #dbg_value(ptr @x264_overscan_names, !4050, !DIExpression(), !4292)
    #dbg_value(i32 %47, !4055, !DIExpression(), !4292)
    #dbg_value(i64 poison, !4056, !DIExpression(), !4292)
  %or.cond.i1003 = icmp ult i32 %47, 3, !dbg !4294
  br i1 %or.cond.i1003, label %cond.true.i1005, label %strtable_lookup.exit1008, !dbg !4294

cond.true.i1005:                                  ; preds = %if.then450
  %idxprom2.i1006 = zext nneg i32 %47 to i64, !dbg !4295
  %arrayidx3.i1007 = getelementptr inbounds ptr, ptr @x264_overscan_names, i64 %idxprom2.i1006, !dbg !4295
  %48 = load ptr, ptr %arrayidx3.i1007, align 8, !dbg !4295
  br label %strtable_lookup.exit1008, !dbg !4296

strtable_lookup.exit1008:                         ; preds = %if.then450, %cond.true.i1005
  %cond.i1004 = phi ptr [ %48, %cond.true.i1005 ], [ @.str.322, %if.then450 ], !dbg !4296
  %call502 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.283, ptr noundef %cond.i1004), !dbg !4297
  %i_vidformat = getelementptr inbounds i8, ptr %defaults, i64 56, !dbg !4298
  %49 = load i32, ptr %i_vidformat, align 4, !dbg !4298
    #dbg_value(ptr @x264_vidformat_names, !4050, !DIExpression(), !4300)
    #dbg_value(i32 %49, !4055, !DIExpression(), !4300)
    #dbg_value(i64 poison, !4056, !DIExpression(), !4300)
  %or.cond.i1015 = icmp ult i32 %49, 6, !dbg !4302
  br i1 %or.cond.i1015, label %cond.true.i1017, label %strtable_lookup.exit1020, !dbg !4302

cond.true.i1017:                                  ; preds = %strtable_lookup.exit1008
  %idxprom2.i1018 = zext nneg i32 %49 to i64, !dbg !4303
  %arrayidx3.i1019 = getelementptr inbounds ptr, ptr @x264_vidformat_names, i64 %idxprom2.i1018, !dbg !4303
  %50 = load ptr, ptr %arrayidx3.i1019, align 8, !dbg !4303
  br label %strtable_lookup.exit1020, !dbg !4304

strtable_lookup.exit1020:                         ; preds = %strtable_lookup.exit1008, %cond.true.i1017
  %cond.i1016 = phi ptr [ %50, %cond.true.i1017 ], [ @.str.322, %strtable_lookup.exit1008 ], !dbg !4304
  %call509 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.284, ptr noundef %cond.i1016), !dbg !4305
  %b_fullrange = getelementptr inbounds i8, ptr %defaults, i64 60, !dbg !4306
  %51 = load i32, ptr %b_fullrange, align 4, !dbg !4306
    #dbg_value(ptr @x264_fullrange_names, !4050, !DIExpression(), !4308)
    #dbg_value(i32 %51, !4055, !DIExpression(), !4308)
    #dbg_value(i64 poison, !4056, !DIExpression(), !4308)
  %or.cond.i1027 = icmp ult i32 %51, 2, !dbg !4310
  br i1 %or.cond.i1027, label %cond.true.i1029, label %strtable_lookup.exit1032, !dbg !4310

cond.true.i1029:                                  ; preds = %strtable_lookup.exit1020
  %idxprom2.i1030 = zext nneg i32 %51 to i64, !dbg !4311
  %arrayidx3.i1031 = getelementptr inbounds ptr, ptr @x264_fullrange_names, i64 %idxprom2.i1030, !dbg !4311
  %52 = load ptr, ptr %arrayidx3.i1031, align 8, !dbg !4311
  br label %strtable_lookup.exit1032, !dbg !4312

strtable_lookup.exit1032:                         ; preds = %strtable_lookup.exit1020, %cond.true.i1029
  %cond.i1028 = phi ptr [ %52, %cond.true.i1029 ], [ @.str.322, %strtable_lookup.exit1020 ], !dbg !4312
  %call516 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.285, ptr noundef %cond.i1028), !dbg !4313
  %i_colorprim = getelementptr inbounds i8, ptr %defaults, i64 64, !dbg !4314
  %53 = load i32, ptr %i_colorprim, align 4, !dbg !4314
    #dbg_value(ptr @x264_colorprim_names, !4050, !DIExpression(), !4316)
    #dbg_value(i32 %53, !4055, !DIExpression(), !4316)
    #dbg_value(i64 poison, !4056, !DIExpression(), !4316)
  %or.cond.i1039 = icmp ult i32 %53, 9, !dbg !4318
  br i1 %or.cond.i1039, label %cond.true.i1041, label %strtable_lookup.exit1044, !dbg !4318

cond.true.i1041:                                  ; preds = %strtable_lookup.exit1032
  %idxprom2.i1042 = zext nneg i32 %53 to i64, !dbg !4319
  %arrayidx3.i1043 = getelementptr inbounds ptr, ptr @x264_colorprim_names, i64 %idxprom2.i1042, !dbg !4319
  %54 = load ptr, ptr %arrayidx3.i1043, align 8, !dbg !4319
  br label %strtable_lookup.exit1044, !dbg !4320

strtable_lookup.exit1044:                         ; preds = %strtable_lookup.exit1032, %cond.true.i1041
  %cond.i1040 = phi ptr [ %54, %cond.true.i1041 ], [ @.str.322, %strtable_lookup.exit1032 ], !dbg !4320
  %call523 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.286, ptr noundef %cond.i1040), !dbg !4321
  %i_transfer = getelementptr inbounds i8, ptr %defaults, i64 68, !dbg !4322
  %55 = load i32, ptr %i_transfer, align 4, !dbg !4322
    #dbg_value(ptr @x264_transfer_names, !4050, !DIExpression(), !4324)
    #dbg_value(i32 %55, !4055, !DIExpression(), !4324)
    #dbg_value(i64 poison, !4056, !DIExpression(), !4324)
  %or.cond.i1051 = icmp ult i32 %55, 11, !dbg !4326
  br i1 %or.cond.i1051, label %cond.true.i1053, label %strtable_lookup.exit1056, !dbg !4326

cond.true.i1053:                                  ; preds = %strtable_lookup.exit1044
  %idxprom2.i1054 = zext nneg i32 %55 to i64, !dbg !4327
  %arrayidx3.i1055 = getelementptr inbounds ptr, ptr @x264_transfer_names, i64 %idxprom2.i1054, !dbg !4327
  %56 = load ptr, ptr %arrayidx3.i1055, align 8, !dbg !4327
  br label %strtable_lookup.exit1056, !dbg !4328

strtable_lookup.exit1056:                         ; preds = %strtable_lookup.exit1044, %cond.true.i1053
  %cond.i1052 = phi ptr [ %56, %cond.true.i1053 ], [ @.str.322, %strtable_lookup.exit1044 ], !dbg !4328
  %call530 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.287, ptr noundef %cond.i1052), !dbg !4329
  %i_colmatrix = getelementptr inbounds i8, ptr %defaults, i64 72, !dbg !4330
  %57 = load i32, ptr %i_colmatrix, align 4, !dbg !4330
    #dbg_value(ptr @x264_colmatrix_names, !4050, !DIExpression(), !4332)
    #dbg_value(i32 %57, !4055, !DIExpression(), !4332)
    #dbg_value(i64 poison, !4056, !DIExpression(), !4332)
  %or.cond.i1063 = icmp ult i32 %57, 9, !dbg !4334
  br i1 %or.cond.i1063, label %cond.true.i1065, label %strtable_lookup.exit1068, !dbg !4334

cond.true.i1065:                                  ; preds = %strtable_lookup.exit1056
  %idxprom2.i1066 = zext nneg i32 %57 to i64, !dbg !4335
  %arrayidx3.i1067 = getelementptr inbounds ptr, ptr @x264_colmatrix_names, i64 %idxprom2.i1066, !dbg !4335
  %58 = load ptr, ptr %arrayidx3.i1067, align 8, !dbg !4335
  br label %strtable_lookup.exit1068, !dbg !4336

strtable_lookup.exit1068:                         ; preds = %strtable_lookup.exit1056, %cond.true.i1065
  %cond.i1064 = phi ptr [ %58, %cond.true.i1065 ], [ @.str.322, %strtable_lookup.exit1056 ], !dbg !4336
  %call537 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.288, ptr noundef %cond.i1064), !dbg !4337
  %i_chroma_loc = getelementptr inbounds i8, ptr %defaults, i64 76, !dbg !4338
  %59 = load i32, ptr %i_chroma_loc, align 4, !dbg !4338
  %call543 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.289, i32 noundef %59), !dbg !4340
  %puts937 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.465), !dbg !4341
  %puts90011661167 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.466), !dbg !3979
  %putchar939 = tail call i32 @putchar(i32 10), !dbg !4264
  %puts940 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.467), !dbg !4265
  %putchar941 = tail call i32 @putchar(i32 10), !dbg !4266
  %puts942 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.468), !dbg !4267
  br i1 %cmp671092111511211127, label %if.then605, label %if.end602, !dbg !4268

if.end602.critedge:                               ; preds = %if.end208.thread
  %puts90011661167.c1178 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.433), !dbg !3979
  %putchar939.c1179 = tail call i32 @putchar(i32 10), !dbg !4264
  %puts940.c1180 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.467), !dbg !4265
  %putchar941.c1181 = tail call i32 @putchar(i32 10), !dbg !4266
  %puts942.c1182 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.468), !dbg !4267
  br label %if.end602, !dbg !4268

if.end602:                                        ; preds = %if.end602.critedge, %strtable_lookup.exit1068
  %puts944.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.470), !dbg !4343
  %puts945.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.471), !dbg !4344
  %puts946.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.472), !dbg !4345
  %puts947.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.473), !dbg !4346
  %puts948.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.474), !dbg !4347
  br label %if.end612, !dbg !4348

if.then605:                                       ; preds = %if.end447.critedge, %strtable_lookup.exit1068
    #dbg_value(ptr %buf, !4349, !DIExpression(), !4357)
    #dbg_value(ptr poison, !4354, !DIExpression(), !4357)
    #dbg_value(i32 0, !4355, !DIExpression(), !4357)
    #dbg_value(ptr %buf, !4356, !DIExpression(), !4357)
    #dbg_assign(i8 0, !3974, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4360, ptr %buf, !DIExpression(), !3979)
    #dbg_value(i64 0, !4355, !DIExpression(), !4357)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %buf, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false), !dbg !4361
    #dbg_value(!DIArgList(ptr %buf, i64 4), !4356, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4357)
  %add.ptr.i = getelementptr inbounds i8, ptr %buf, i64 4, !dbg !4365
    #dbg_value(ptr %add.ptr.i, !4356, !DIExpression(), !4357)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %add.ptr.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.356, i64 3, i1 false), !dbg !4366
  %add.ptr9.i = getelementptr inbounds i8, ptr %buf, i64 6, !dbg !4368
    #dbg_value(ptr %add.ptr9.i, !4356, !DIExpression(), !4357)
    #dbg_value(i64 1, !4355, !DIExpression(), !4357)
  store i32 7823730, ptr %add.ptr9.i, align 2, !dbg !4361
    #dbg_value(!DIArgList(ptr %add.ptr9.i, i64 3), !4356, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4357)
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %buf, i64 9, !dbg !4365
    #dbg_value(ptr %add.ptr.i.1, !4356, !DIExpression(), !4357)
  store i16 8236, ptr %add.ptr.i.1, align 1, !dbg !4366
  %add.ptr9.i.1 = getelementptr inbounds i8, ptr %buf, i64 11, !dbg !4368
    #dbg_value(ptr %add.ptr9.i.1, !4356, !DIExpression(), !4357)
    #dbg_value(i64 2, !4355, !DIExpression(), !4357)
  store i32 7760749, ptr %add.ptr9.i.1, align 1, !dbg !4361
    #dbg_value(!DIArgList(ptr %add.ptr9.i.1, i64 3), !4356, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4357)
  %add.ptr.i.2 = getelementptr inbounds i8, ptr %buf, i64 14, !dbg !4365
    #dbg_value(ptr %add.ptr.i.2, !4356, !DIExpression(), !4357)
  store i16 8236, ptr %add.ptr.i.2, align 2, !dbg !4366
  %add.ptr9.i.2 = getelementptr inbounds i8, ptr %buf, i64 16, !dbg !4368
    #dbg_value(ptr %add.ptr9.i.2, !4356, !DIExpression(), !4357)
    #dbg_value(i64 3, !4355, !DIExpression(), !4357)
  store i32 7760998, ptr %add.ptr9.i.2, align 16, !dbg !4361
    #dbg_value(!DIArgList(ptr poison, ptr poison, ptr poison), !4356, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_plus, DW_OP_stack_value), !4357)
  %call563 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.294, ptr noundef nonnull @.str.22, ptr noundef nonnull %buf), !dbg !4369
    #dbg_value(ptr %buf, !4349, !DIExpression(), !4370)
    #dbg_value(ptr poison, !4354, !DIExpression(), !4370)
    #dbg_value(i32 0, !4355, !DIExpression(), !4370)
    #dbg_value(ptr %buf, !4356, !DIExpression(), !4370)
    #dbg_assign(i8 0, !3974, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4373, ptr %buf, !DIExpression(), !3979)
    #dbg_value(i64 0, !4355, !DIExpression(), !4370)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %buf, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false), !dbg !4374
    #dbg_value(ptr %add.ptr.i, !4356, !DIExpression(), !4370)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %add.ptr.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.356, i64 3, i1 false), !dbg !4375
    #dbg_value(ptr %add.ptr9.i, !4356, !DIExpression(), !4370)
    #dbg_value(i64 1, !4355, !DIExpression(), !4370)
  store i32 7763321, ptr %add.ptr9.i, align 2, !dbg !4374
    #dbg_value(!DIArgList(ptr %add.ptr9.i, i64 3), !4356, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4370)
  %add.ptr.i1082.1 = getelementptr inbounds i8, ptr %buf, i64 9, !dbg !4376
    #dbg_value(ptr %add.ptr.i1082.1, !4356, !DIExpression(), !4370)
  store i16 8236, ptr %add.ptr.i1082.1, align 1, !dbg !4375
  %add.ptr9.i1083.1 = getelementptr inbounds i8, ptr %buf, i64 11, !dbg !4377
    #dbg_value(ptr %add.ptr9.i1083.1, !4356, !DIExpression(), !4370)
    #dbg_value(i64 2, !4355, !DIExpression(), !4370)
  store i32 7156857, ptr %add.ptr9.i1083.1, align 1, !dbg !4374
    #dbg_value(!DIArgList(ptr poison, ptr poison, ptr poison), !4356, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_plus, DW_OP_stack_value), !4370)
  %call570 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.295, ptr noundef nonnull @.str.22, ptr noundef nonnull %buf), !dbg !4378
  %puts943 = call i32 @puts(ptr nonnull dereferenceable(1) @str.469), !dbg !4379
  %puts944 = call i32 @puts(ptr nonnull dereferenceable(1) @str.470), !dbg !4343
  %puts945 = call i32 @puts(ptr nonnull dereferenceable(1) @str.471), !dbg !4344
  %puts946 = call i32 @puts(ptr nonnull dereferenceable(1) @str.472), !dbg !4345
  %puts947 = call i32 @puts(ptr nonnull dereferenceable(1) @str.473), !dbg !4346
  %puts948 = call i32 @puts(ptr nonnull dereferenceable(1) @str.474), !dbg !4347
  %putchar949 = call i32 @putchar(i32 10), !dbg !4381
  %puts950 = call i32 @puts(ptr nonnull dereferenceable(1) @str.475), !dbg !4383
  %puts951 = call i32 @puts(ptr nonnull dereferenceable(1) @str.476), !dbg !4385
  %puts952 = call i32 @puts(ptr nonnull dereferenceable(1) @str.477), !dbg !4387
  %puts953 = call i32 @puts(ptr nonnull dereferenceable(1) @str.478), !dbg !4388
  %puts954 = call i32 @puts(ptr nonnull dereferenceable(1) @str.479), !dbg !4390
  br label %if.end612, !dbg !4392

if.end612:                                        ; preds = %if.end602, %if.then605
  %str.477.sink = phi ptr [ @str.477, %if.end602 ], [ @str.480, %if.then605 ]
  %puts952.c = call i32 @puts(ptr nonnull dereferenceable(1) %str.477.sink), !dbg !3979
  br i1 %cmp, label %if.then615, label %if.end682, !dbg !4394

if.then615:                                       ; preds = %if.end612
  %puts956 = call i32 @puts(ptr nonnull dereferenceable(1) @str.481), !dbg !4395
  %puts957 = call i32 @puts(ptr nonnull dereferenceable(1) @str.482), !dbg !4397
  %puts958 = call i32 @puts(ptr nonnull dereferenceable(1) @str.483), !dbg !4399
  %puts959 = call i32 @puts(ptr nonnull dereferenceable(1) @str.484), !dbg !4401
  %puts960 = call i32 @puts(ptr nonnull dereferenceable(1) @str.485), !dbg !4403
  %puts961 = call i32 @puts(ptr nonnull dereferenceable(1) @str.486), !dbg !4405
  %puts962 = call i32 @puts(ptr nonnull dereferenceable(1) @str.487), !dbg !4407
  %puts963 = call i32 @puts(ptr nonnull dereferenceable(1) @str.488), !dbg !4409
  %i_sps_id = getelementptr inbounds i8, ptr %defaults, i64 644, !dbg !4411
  %60 = load i32, ptr %i_sps_id, align 4, !dbg !4411
  %call656 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.316, i32 noundef %60), !dbg !4413
  %puts964 = call i32 @puts(ptr nonnull dereferenceable(1) @str.489), !dbg !4414
  %puts965 = call i32 @puts(ptr nonnull dereferenceable(1) @str.490), !dbg !4416
  %puts966 = call i32 @puts(ptr nonnull dereferenceable(1) @str.491), !dbg !4418
  %puts967 = call i32 @puts(ptr nonnull dereferenceable(1) @str.492), !dbg !4420
  %puts968 = call i32 @puts(ptr nonnull dereferenceable(1) @str.493), !dbg !4422
  br label %if.end682, !dbg !4422

if.end682:                                        ; preds = %if.end612, %if.then615
  %putchar969 = call i32 @putchar(i32 10), !dbg !4424
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #15, !dbg !4425
  ret void, !dbg !4425
}

; Function Attrs: noreturn nounwind
declare !dbg !4426 void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !4429 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !4434 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !4437 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !4441 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

declare !dbg !4444 i32 @x264_param_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !4445 void @x264_param_apply_fastfirstpass(ptr noundef) local_unnamed_addr #2

declare !dbg !4446 i32 @x264_param_apply_profile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !4449 void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree nounwind
declare !dbg !4452 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !4455 i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !4459 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !4462 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare !dbg !4465 ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !4469 double @fmod(double noundef, double noundef) local_unnamed_addr #11

declare !dbg !4473 ptr @x264_encoder_open_96(ptr noundef) local_unnamed_addr #2

declare !dbg !4476 void @x264_encoder_parameters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !4479 i64 @x264_mdate() local_unnamed_addr #2

declare !dbg !4482 i32 @x264_encoder_headers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

declare !dbg !4486 i32 @x264_encoder_delayed_frames(ptr noundef) local_unnamed_addr #2

declare !dbg !4489 void @x264_encoder_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !4492 noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #7

declare !dbg !4495 i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !4496 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare !dbg !4499 i32 @x264_encoder_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { noreturn nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1487, !1488, !1489, !1490, !1491, !1492, !1493}
!llvm.ident = !{!1494}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "seek_val", scope: !2, file: !3, line: 45, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/x264.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "42fe484a640c1ff3123302186e305cd9")
!4 = !{!5, !6, !7, !8, !11}
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !12, line: 27, baseType: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !14, line: 44, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!15 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!16 = !{!0, !17, !283, !288, !293, !298, !303, !308, !313, !315, !320, !325, !330, !335, !340, !345, !350, !355, !360, !365, !367, !372, !374, !376, !381, !386, !389, !391, !395, !397, !399, !401, !404, !409, !411, !416, !418, !420, !422, !424, !426, !428, !433, !435, !437, !439, !444, !446, !451, !453, !455, !460, !462, !467, !469, !471, !473, !475, !477, !479, !481, !483, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !727, !732, !737, !739, !741, !744, !746, !748, !753, !755, !757, !759, !761, !766, !771, !773, !778, !780, !785, !790, !795, !800, !805, !810, !815, !820, !825, !830, !835, !840, !845, !850, !855, !860, !865, !870, !875, !880, !885, !887, !892, !897, !899, !904, !909, !911, !916, !918, !920, !925, !930, !935, !937, !939, !941, !943, !945, !947, !952, !954, !959, !961, !963, !965, !967, !970, !972, !974, !979, !984, !989, !991, !993, !995, !1000, !1005, !1010, !1012, !1017, !1022, !1024, !1029, !1034, !1036, !1041, !1043, !1048, !1050, !1052, !1054, !1059, !1064, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1087, !1089, !1094, !1096, !1101, !1106, !1111, !1113, !1118, !1120, !1125, !1130, !1135, !1137, !1139, !1144, !1149, !1154, !1159, !1164, !1169, !1171, !1176, !1178, !1180, !1182, !1187, !1189, !1191, !1193, !1198, !1200, !1202, !1207, !1209, !1211, !1216, !1218, !1220, !1222, !1224, !1226, !1228, !1233, !1238, !1240, !1242, !1244, !1246, !1248, !1250, !1252, !1254, !1259, !1261, !1263, !1265, !1267, !1269, !1271, !1273, !1275, !1277, !1279, !1281, !1283, !1285, !1288, !1290, !1292, !1294, !1296, !1298, !1300, !1302, !1304, !1306, !1309, !1311, !1313, !1316, !1318, !1320, !1322, !1324, !1326, !1328, !1331, !1333, !1335, !1337, !1340, !1342, !1344, !1346, !1348, !1350, !1352, !1354, !1356, !1358, !1360, !1362, !1364, !1367, !1369, !1371, !1373, !1407, !1409, !1411, !1413, !1415, !1417, !1419, !1421, !1426, !1431, !1436, !1438, !1443, !1448, !1450, !1452, !1454, !1456, !1458, !1460, !1462, !1475, !1477, !1481, !1483, !1485}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "input", scope: !2, file: !3, line: 70, type: !19, isLocal: false, isDefinition: true)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_t", file: !20, line: 63, baseType: !21)
!20 = !DIFile(filename: "x264_src/input/input.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f28c863d273681dfcaca9779e9fcbd53")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 54, size: 448, elements: !22)
!22 = !{!23, !58, !62, !270, !274, !278, !282}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !21, file: !20, line: 56, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{!7, !9, !27, !30, !50}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !29, line: 30, baseType: !6)
!29 = !DIFile(filename: "x264_src/muxers.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "video_info_t", file: !20, line: 52, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 38, size: 384, elements: !33)
!33 = !{!34, !35, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "csp", scope: !32, file: !20, line: 40, baseType: !7, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "fps_num", scope: !32, file: !20, line: 41, baseType: !36, size: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 26, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !14, line: 42, baseType: !39)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "fps_den", scope: !32, file: !20, line: 42, baseType: !36, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !32, file: !20, line: 43, baseType: !7, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !32, file: !20, line: 44, baseType: !7, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !32, file: !20, line: 45, baseType: !36, size: 32, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !32, file: !20, line: 46, baseType: !36, size: 32, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tff", scope: !32, file: !20, line: 47, baseType: !7, size: 32, offset: 224)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_num", scope: !32, file: !20, line: 48, baseType: !36, size: 32, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_den", scope: !32, file: !20, line: 49, baseType: !36, size: 32, offset: 288)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "vfr", scope: !32, file: !20, line: 50, baseType: !7, size: 32, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !32, file: !20, line: 51, baseType: !7, size: 32, offset: 352)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_opt_t", file: !20, line: 35, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 29, size: 256, elements: !53)
!53 = !{!54, !55, !56, !57}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !52, file: !20, line: 31, baseType: !9, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !52, file: !20, line: 32, baseType: !9, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "timebase", scope: !52, file: !20, line: 33, baseType: !9, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !52, file: !20, line: 34, baseType: !7, size: 32, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_total", scope: !21, file: !20, line: 57, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!7, !28}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "picture_alloc", scope: !21, file: !20, line: 58, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!7, !66, !7, !7, !7}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !68, line: 549, baseType: !69)
!68 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 513, size: 1088, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !248, !261, !269}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !69, file: !68, line: 521, baseType: !7, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !69, file: !68, line: 523, baseType: !7, size: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !69, file: !68, line: 526, baseType: !7, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !69, file: !68, line: 529, baseType: !7, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !69, file: !68, line: 531, baseType: !11, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !69, file: !68, line: 534, baseType: !11, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !69, file: !68, line: 541, baseType: !78, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !68, line: 376, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !68, line: 176, size: 5632, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !130, !131, !132, !133, !137, !138, !151, !152, !153, !154, !155, !186, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !80, file: !68, line: 179, baseType: !39, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !80, file: !68, line: 180, baseType: !7, size: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !80, file: !68, line: 181, baseType: !7, size: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !80, file: !68, line: 182, baseType: !7, size: 32, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !80, file: !68, line: 183, baseType: !7, size: 32, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !80, file: !68, line: 186, baseType: !7, size: 32, offset: 160)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !80, file: !68, line: 187, baseType: !7, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !80, file: !68, line: 188, baseType: !7, size: 32, offset: 224)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !80, file: !68, line: 189, baseType: !7, size: 32, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !80, file: !68, line: 190, baseType: !7, size: 32, offset: 288)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !80, file: !68, line: 198, baseType: !7, size: 32, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !80, file: !68, line: 215, baseType: !94, size: 288, offset: 352)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !68, line: 200, size: 288, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !94, file: !68, line: 203, baseType: !7, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !94, file: !68, line: 204, baseType: !7, size: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !94, file: !68, line: 206, baseType: !7, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !94, file: !68, line: 209, baseType: !7, size: 32, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !94, file: !68, line: 210, baseType: !7, size: 32, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !94, file: !68, line: 211, baseType: !7, size: 32, offset: 160)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !94, file: !68, line: 212, baseType: !7, size: 32, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !94, file: !68, line: 213, baseType: !7, size: 32, offset: 224)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !94, file: !68, line: 214, baseType: !7, size: 32, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !80, file: !68, line: 218, baseType: !7, size: 32, offset: 640)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !80, file: !68, line: 219, baseType: !7, size: 32, offset: 672)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !80, file: !68, line: 220, baseType: !7, size: 32, offset: 704)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !80, file: !68, line: 221, baseType: !7, size: 32, offset: 736)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !80, file: !68, line: 222, baseType: !7, size: 32, offset: 768)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !80, file: !68, line: 224, baseType: !7, size: 32, offset: 800)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !80, file: !68, line: 225, baseType: !7, size: 32, offset: 832)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !80, file: !68, line: 226, baseType: !7, size: 32, offset: 864)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !80, file: !68, line: 227, baseType: !7, size: 32, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !80, file: !68, line: 229, baseType: !7, size: 32, offset: 928)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !80, file: !68, line: 230, baseType: !7, size: 32, offset: 960)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !80, file: !68, line: 231, baseType: !7, size: 32, offset: 992)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !80, file: !68, line: 233, baseType: !7, size: 32, offset: 1024)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !80, file: !68, line: 234, baseType: !7, size: 32, offset: 1056)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !80, file: !68, line: 236, baseType: !7, size: 32, offset: 1088)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !80, file: !68, line: 237, baseType: !7, size: 32, offset: 1120)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !80, file: !68, line: 239, baseType: !7, size: 32, offset: 1152)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !80, file: !68, line: 240, baseType: !9, size: 64, offset: 1216)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !80, file: !68, line: 241, baseType: !124, size: 128, offset: 1280)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, elements: !128)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !37, line: 24, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !14, line: 38, baseType: !127)
!127 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!128 = !{!129}
!129 = !DISubrange(count: 16)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !80, file: !68, line: 242, baseType: !124, size: 128, offset: 1408)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !80, file: !68, line: 243, baseType: !124, size: 128, offset: 1536)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !80, file: !68, line: 244, baseType: !124, size: 128, offset: 1664)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !80, file: !68, line: 245, baseType: !134, size: 512, offset: 1792)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 512, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !80, file: !68, line: 246, baseType: !134, size: 512, offset: 2304)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !80, file: !68, line: 249, baseType: !139, size: 64, offset: 2816)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !6, !7, !142, !144}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !146)
!146 = !{!147, !148, !149, !150}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !145, file: !3, line: 153, baseType: !39, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !145, file: !3, line: 153, baseType: !39, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !145, file: !3, line: 153, baseType: !6, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !145, file: !3, line: 153, baseType: !6, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !80, file: !68, line: 250, baseType: !6, size: 64, offset: 2880)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !80, file: !68, line: 251, baseType: !7, size: 32, offset: 2944)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !80, file: !68, line: 252, baseType: !7, size: 32, offset: 2976)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !80, file: !68, line: 253, baseType: !9, size: 64, offset: 3008)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !80, file: !68, line: 287, baseType: !156, size: 800, offset: 3072)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !68, line: 256, size: 800, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !178, !179, !180, !184, !185}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !156, file: !68, line: 258, baseType: !39, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !156, file: !68, line: 259, baseType: !39, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !156, file: !68, line: 261, baseType: !7, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !156, file: !68, line: 262, baseType: !7, size: 32, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !156, file: !68, line: 263, baseType: !7, size: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !156, file: !68, line: 264, baseType: !7, size: 32, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !156, file: !68, line: 265, baseType: !7, size: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !156, file: !68, line: 267, baseType: !7, size: 32, offset: 224)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !156, file: !68, line: 268, baseType: !7, size: 32, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !156, file: !68, line: 269, baseType: !7, size: 32, offset: 288)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !156, file: !68, line: 270, baseType: !7, size: 32, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !156, file: !68, line: 271, baseType: !7, size: 32, offset: 352)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !156, file: !68, line: 272, baseType: !7, size: 32, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !156, file: !68, line: 273, baseType: !7, size: 32, offset: 416)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !156, file: !68, line: 274, baseType: !7, size: 32, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !156, file: !68, line: 275, baseType: !7, size: 32, offset: 480)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !156, file: !68, line: 276, baseType: !7, size: 32, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !156, file: !68, line: 277, baseType: !7, size: 32, offset: 544)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !156, file: !68, line: 278, baseType: !177, size: 32, offset: 576)
!177 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !156, file: !68, line: 279, baseType: !177, size: 32, offset: 608)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !156, file: !68, line: 280, baseType: !7, size: 32, offset: 640)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !156, file: !68, line: 283, baseType: !181, size: 64, offset: 672)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 2)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !156, file: !68, line: 285, baseType: !7, size: 32, offset: 736)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !156, file: !68, line: 286, baseType: !7, size: 32, offset: 768)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !80, file: !68, line: 327, baseType: !187, size: 1152, offset: 3904)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !68, line: 290, size: 1152, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !226, !227}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !187, file: !68, line: 292, baseType: !7, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !187, file: !68, line: 294, baseType: !7, size: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !187, file: !68, line: 295, baseType: !7, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !187, file: !68, line: 296, baseType: !7, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !187, file: !68, line: 297, baseType: !7, size: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !187, file: !68, line: 299, baseType: !7, size: 32, offset: 160)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !187, file: !68, line: 300, baseType: !177, size: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !187, file: !68, line: 301, baseType: !177, size: 32, offset: 224)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !187, file: !68, line: 302, baseType: !177, size: 32, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !187, file: !68, line: 303, baseType: !7, size: 32, offset: 288)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !187, file: !68, line: 304, baseType: !7, size: 32, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !187, file: !68, line: 305, baseType: !177, size: 32, offset: 352)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !187, file: !68, line: 306, baseType: !177, size: 32, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !187, file: !68, line: 307, baseType: !177, size: 32, offset: 416)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !187, file: !68, line: 309, baseType: !7, size: 32, offset: 448)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !187, file: !68, line: 310, baseType: !177, size: 32, offset: 480)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !187, file: !68, line: 311, baseType: !7, size: 32, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !187, file: !68, line: 312, baseType: !7, size: 32, offset: 544)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !187, file: !68, line: 315, baseType: !7, size: 32, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !187, file: !68, line: 316, baseType: !9, size: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !187, file: !68, line: 317, baseType: !7, size: 32, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !187, file: !68, line: 318, baseType: !9, size: 64, offset: 768)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !187, file: !68, line: 321, baseType: !177, size: 32, offset: 832)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !187, file: !68, line: 322, baseType: !177, size: 32, offset: 864)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !187, file: !68, line: 323, baseType: !177, size: 32, offset: 896)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !187, file: !68, line: 324, baseType: !215, size: 64, offset: 960)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !68, line: 174, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 167, size: 256, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !217, file: !68, line: 169, baseType: !7, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !217, file: !68, line: 169, baseType: !7, size: 32, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !217, file: !68, line: 170, baseType: !7, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !217, file: !68, line: 171, baseType: !7, size: 32, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !217, file: !68, line: 172, baseType: !177, size: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !217, file: !68, line: 173, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !187, file: !68, line: 325, baseType: !7, size: 32, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !187, file: !68, line: 326, baseType: !9, size: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !80, file: !68, line: 330, baseType: !7, size: 32, offset: 5056)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !80, file: !68, line: 331, baseType: !7, size: 32, offset: 5088)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !80, file: !68, line: 332, baseType: !7, size: 32, offset: 5120)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !80, file: !68, line: 334, baseType: !7, size: 32, offset: 5152)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !80, file: !68, line: 335, baseType: !7, size: 32, offset: 5184)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !80, file: !68, line: 336, baseType: !36, size: 32, offset: 5216)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !80, file: !68, line: 337, baseType: !36, size: 32, offset: 5248)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !80, file: !68, line: 338, baseType: !36, size: 32, offset: 5280)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !80, file: !68, line: 339, baseType: !36, size: 32, offset: 5312)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !80, file: !68, line: 340, baseType: !7, size: 32, offset: 5344)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !80, file: !68, line: 344, baseType: !7, size: 32, offset: 5376)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !80, file: !68, line: 356, baseType: !7, size: 32, offset: 5408)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !80, file: !68, line: 364, baseType: !7, size: 32, offset: 5440)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !80, file: !68, line: 367, baseType: !7, size: 32, offset: 5472)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !80, file: !68, line: 368, baseType: !7, size: 32, offset: 5504)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !80, file: !68, line: 369, baseType: !7, size: 32, offset: 5536)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !80, file: !68, line: 375, baseType: !245, size: 64, offset: 5568)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !6}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !69, file: !68, line: 543, baseType: !249, size: 448, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !68, line: 511, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 505, size: 448, elements: !251)
!251 = !{!252, !253, !254, !258}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !250, file: !68, line: 507, baseType: !7, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !250, file: !68, line: 508, baseType: !7, size: 32, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !250, file: !68, line: 509, baseType: !255, size: 128, offset: 64)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 4)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !250, file: !68, line: 510, baseType: !259, size: 256, offset: 192)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 256, elements: !256)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !69, file: !68, line: 545, baseType: !262, size: 256, offset: 768)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !68, line: 503, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 496, size: 256, elements: !264)
!264 = !{!265, !266, !267, !268}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !263, file: !68, line: 498, baseType: !5, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !263, file: !68, line: 499, baseType: !5, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !263, file: !68, line: 500, baseType: !5, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !263, file: !68, line: 502, baseType: !5, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !69, file: !68, line: 548, baseType: !6, size: 64, offset: 1024)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "read_frame", scope: !21, file: !20, line: 59, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!7, !66, !28, !7}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "release_frame", scope: !21, file: !20, line: 60, baseType: !275, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!7, !66, !28}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "picture_clean", scope: !21, file: !20, line: 61, baseType: !279, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !66}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !21, file: !20, line: 62, baseType: !59, size: 64, offset: 384)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !3, line: 952, type: !285, isLocal: true, isDefinition: true)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 8)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 984, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 104, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 13)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1026, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 24, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 3)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1029, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 304, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 38)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1034, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 496, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 62)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1056, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 456, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 57)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1082, type: !295, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1085, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 248, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 31)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1121, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 328, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 41)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1137, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 528, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 66)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1138, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 48, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 6)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1138, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 56, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 7)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1146, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 376, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 47)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1170, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 368, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 46)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1177, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 360, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 45)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1185, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 416, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 52)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1190, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 296, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 37)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1198, type: !310, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1209, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1192, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 149)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1234, type: !285, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1237, type: !342, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1247, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 480, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 60)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !383, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 40, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 5)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !388, isLocal: true, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32, elements: !256)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !388, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "demuxer_names", scope: !2, file: !3, line: 73, type: !393, isLocal: true, isDefinition: true)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 256, elements: !256)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !388, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !388, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !388, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "muxer_names", scope: !2, file: !3, line: 90, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 320, elements: !384)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "short_options", scope: !2, file: !3, line: 618, type: !406, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 240, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 30)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !3, line: 621, type: !383, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !3, line: 622, type: !413, isLocal: true, isDefinition: true)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 72, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 9)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !3, line: 623, type: !413, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !3, line: 624, type: !285, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !3, line: 625, type: !285, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !3, line: 626, type: !285, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !3, line: 627, type: !337, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !3, line: 628, type: !383, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !3, line: 629, type: !430, isLocal: true, isDefinition: true)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 120, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 15)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 630, type: !285, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !3, line: 631, type: !285, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !3, line: 632, type: !285, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !3, line: 633, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 88, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 11)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !3, line: 634, type: !337, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !3, line: 635, type: !448, isLocal: true, isDefinition: true)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 80, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 10)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !3, line: 636, type: !441, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !3, line: 637, type: !337, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !3, line: 638, type: !457, isLocal: true, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 112, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 14)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !3, line: 639, type: !413, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !3, line: 640, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 96, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 12)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !3, line: 641, type: !295, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !3, line: 642, type: !441, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !3, line: 643, type: !337, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !3, line: 644, type: !285, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !3, line: 645, type: !441, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !3, line: 646, type: !388, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !3, line: 647, type: !388, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !3, line: 648, type: !457, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !3, line: 649, type: !485, isLocal: true, isDefinition: true)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 144, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 18)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !3, line: 650, type: !332, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !3, line: 651, type: !413, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !3, line: 652, type: !295, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !3, line: 653, type: !332, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !3, line: 654, type: !332, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !3, line: 655, type: !337, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !3, line: 656, type: !388, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !3, line: 657, type: !290, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !3, line: 658, type: !388, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !3, line: 659, type: !388, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !3, line: 660, type: !337, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !3, line: 661, type: !388, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !3, line: 662, type: !388, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !3, line: 663, type: !337, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !3, line: 664, type: !383, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !3, line: 666, type: !332, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !3, line: 667, type: !285, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !3, line: 668, type: !337, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !3, line: 669, type: !332, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !3, line: 670, type: !332, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !3, line: 671, type: !285, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !3, line: 672, type: !441, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !3, line: 673, type: !337, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !3, line: 674, type: !285, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !3, line: 675, type: !441, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !3, line: 676, type: !285, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !3, line: 677, type: !295, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !3, line: 678, type: !285, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !3, line: 679, type: !285, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !3, line: 680, type: !430, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !3, line: 681, type: !332, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !3, line: 682, type: !337, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !3, line: 683, type: !337, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !3, line: 684, type: !388, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !3, line: 685, type: !441, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !3, line: 686, type: !457, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !3, line: 687, type: !290, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !3, line: 688, type: !337, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !3, line: 689, type: !448, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !3, line: 690, type: !285, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !3, line: 691, type: !441, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !3, line: 692, type: !457, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !3, line: 693, type: !574, isLocal: true, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !128)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !3, line: 694, type: !464, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !3, line: 695, type: !285, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !3, line: 696, type: !430, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !3, line: 697, type: !430, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !3, line: 698, type: !332, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !3, line: 699, type: !285, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !3, line: 700, type: !464, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !3, line: 701, type: !464, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !3, line: 702, type: !413, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !3, line: 703, type: !285, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !3, line: 704, type: !285, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !3, line: 705, type: !285, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !3, line: 706, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 136, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 17)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !3, line: 707, type: !383, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !3, line: 708, type: !332, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !3, line: 709, type: !332, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !3, line: 710, type: !337, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !3, line: 711, type: !448, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !3, line: 712, type: !332, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !3, line: 713, type: !413, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !3, line: 714, type: !332, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !3, line: 715, type: !337, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !3, line: 716, type: !285, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !3, line: 717, type: !430, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !3, line: 718, type: !485, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !3, line: 719, type: !430, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !3, line: 720, type: !457, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !3, line: 721, type: !337, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !3, line: 722, type: !290, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !3, line: 723, type: !430, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !3, line: 724, type: !485, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !3, line: 725, type: !383, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !3, line: 726, type: !383, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !3, line: 727, type: !332, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !3, line: 728, type: !285, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !3, line: 729, type: !464, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !3, line: 730, type: !448, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !3, line: 731, type: !413, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !3, line: 732, type: !337, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !3, line: 733, type: !388, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !3, line: 734, type: !295, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !3, line: 735, type: !388, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !3, line: 736, type: !285, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !3, line: 737, type: !383, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !3, line: 738, type: !332, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !3, line: 739, type: !337, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !3, line: 740, type: !337, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !3, line: 741, type: !332, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !3, line: 742, type: !337, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !3, line: 743, type: !337, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !3, line: 744, type: !383, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !3, line: 745, type: !332, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !3, line: 746, type: !332, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !3, line: 747, type: !413, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !3, line: 748, type: !464, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !3, line: 749, type: !448, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !3, line: 750, type: !448, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !3, line: 751, type: !413, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !3, line: 752, type: !464, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !3, line: 753, type: !448, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !3, line: 754, type: !448, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !3, line: 755, type: !448, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !3, line: 756, type: !441, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !3, line: 757, type: !413, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !3, line: 758, type: !441, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !3, line: 759, type: !285, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !3, line: 760, type: !413, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !3, line: 761, type: !574, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 619, type: !716, isLocal: true, isDefinition: true)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 36352, elements: !725)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !718, line: 93, size: 256, elements: !719)
!718 = !DIFile(filename: "x264_src/extras/getopt.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "82623bb5aeb34f6c33cfa9f633ed0dc8")
!719 = !{!720, !721, !722, !724}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !717, file: !718, line: 96, baseType: !142, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !717, file: !718, line: 102, baseType: !7, size: 32, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !717, file: !718, line: 103, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !717, file: !718, line: 104, baseType: !7, size: 32, offset: 192)
!725 = !{!726}
!726 = !DISubrange(count: 142)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !3, line: 214, type: !729, isLocal: true, isDefinition: true)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 4776, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 597)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !3, line: 233, type: !734, isLocal: true, isDefinition: true)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 1)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !295, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !574, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !3, line: 256, type: !743, isLocal: true, isDefinition: true)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16, elements: !182)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !3, line: 257, type: !406, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !3, line: 258, type: !342, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !3, line: 260, type: !750, isLocal: true, isDefinition: true)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 352, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 44)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !3, line: 261, type: !305, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !3, line: 262, type: !305, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !3, line: 264, type: !601, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !3, line: 265, type: !347, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !763, isLocal: true, isDefinition: true)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 488, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 61)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !3, line: 268, type: !768, isLocal: true, isDefinition: true)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 536, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 67)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !3, line: 270, type: !378, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !3, line: 271, type: !775, isLocal: true, isDefinition: true)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 576, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 72)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !3, line: 273, type: !448, isLocal: true, isDefinition: true)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !782, isLocal: true, isDefinition: true)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1064, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 133)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !787, isLocal: true, isDefinition: true)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 4144, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 518)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !792, isLocal: true, isDefinition: true)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 448, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 56)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !797, isLocal: true, isDefinition: true)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1152, elements: !798)
!798 = !{!799}
!799 = !DISubrange(count: 144)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !802, isLocal: true, isDefinition: true)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 19544, elements: !803)
!803 = !{!804}
!804 = !DISubrange(count: 2443)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !807, isLocal: true, isDefinition: true)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1200, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 150)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 331, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2720, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 340)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 336, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 12464, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 1558)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 361, type: !822, isLocal: true, isDefinition: true)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1728, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 216)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 364, type: !827, isLocal: true, isDefinition: true)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2296, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 287)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !3, line: 368, type: !832, isLocal: true, isDefinition: true)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 584, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 73)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 370, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 168, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 21)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(scope: null, file: !3, line: 372, type: !842, isLocal: true, isDefinition: true)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 424, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 53)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !847, isLocal: true, isDefinition: true)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 440, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 55)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(scope: null, file: !3, line: 374, type: !852, isLocal: true, isDefinition: true)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 520, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 65)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(scope: null, file: !3, line: 375, type: !857, isLocal: true, isDefinition: true)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 624, elements: !858)
!858 = !{!859}
!859 = !DISubrange(count: 78)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(scope: null, file: !3, line: 376, type: !862, isLocal: true, isDefinition: true)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 640, elements: !863)
!863 = !{!864}
!864 = !DISubrange(count: 80)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !867, isLocal: true, isDefinition: true)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 568, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 71)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(scope: null, file: !3, line: 378, type: !872, isLocal: true, isDefinition: true)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2520, elements: !873)
!873 = !{!874}
!874 = !DISubrange(count: 315)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !877, isLocal: true, isDefinition: true)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 600, elements: !878)
!878 = !{!879}
!879 = !DISubrange(count: 75)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(scope: null, file: !3, line: 384, type: !882, isLocal: true, isDefinition: true)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2192, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 274)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !352, isLocal: true, isDefinition: true)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !3, line: 390, type: !889, isLocal: true, isDefinition: true)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 504, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 63)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !3, line: 391, type: !894, isLocal: true, isDefinition: true)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 408, elements: !895)
!895 = !{!896}
!896 = !DISubrange(count: 51)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(scope: null, file: !3, line: 392, type: !305, isLocal: true, isDefinition: true)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(scope: null, file: !3, line: 394, type: !901, isLocal: true, isDefinition: true)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1264, elements: !902)
!902 = !{!903}
!903 = !DISubrange(count: 158)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(scope: null, file: !3, line: 396, type: !906, isLocal: true, isDefinition: true)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 464, elements: !907)
!907 = !{!908}
!908 = !DISubrange(count: 58)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(scope: null, file: !3, line: 397, type: !775, isLocal: true, isDefinition: true)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression())
!912 = distinct !DIGlobalVariable(scope: null, file: !3, line: 398, type: !913, isLocal: true, isDefinition: true)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 616, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 77)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(scope: null, file: !3, line: 399, type: !775, isLocal: true, isDefinition: true)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !877, isLocal: true, isDefinition: true)
!920 = !DIGlobalVariableExpression(var: !921, expr: !DIExpression())
!921 = distinct !DIGlobalVariable(scope: null, file: !3, line: 401, type: !922, isLocal: true, isDefinition: true)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 544, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 68)
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression())
!926 = distinct !DIGlobalVariable(scope: null, file: !3, line: 402, type: !927, isLocal: true, isDefinition: true)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1328, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 166)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !3, line: 404, type: !932, isLocal: true, isDefinition: true)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1808, elements: !933)
!933 = !{!934}
!934 = !DISubrange(count: 226)
!935 = !DIGlobalVariableExpression(var: !936, expr: !DIExpression())
!936 = distinct !DIGlobalVariable(scope: null, file: !3, line: 408, type: !457, isLocal: true, isDefinition: true)
!937 = !DIGlobalVariableExpression(var: !938, expr: !DIExpression())
!938 = distinct !DIGlobalVariable(scope: null, file: !3, line: 410, type: !922, isLocal: true, isDefinition: true)
!939 = !DIGlobalVariableExpression(var: !940, expr: !DIExpression())
!940 = distinct !DIGlobalVariable(scope: null, file: !3, line: 411, type: !357, isLocal: true, isDefinition: true)
!941 = !DIGlobalVariableExpression(var: !942, expr: !DIExpression())
!942 = distinct !DIGlobalVariable(scope: null, file: !3, line: 412, type: !877, isLocal: true, isDefinition: true)
!943 = !DIGlobalVariableExpression(var: !944, expr: !DIExpression())
!944 = distinct !DIGlobalVariable(scope: null, file: !3, line: 413, type: !857, isLocal: true, isDefinition: true)
!945 = !DIGlobalVariableExpression(var: !946, expr: !DIExpression())
!946 = distinct !DIGlobalVariable(scope: null, file: !3, line: 414, type: !889, isLocal: true, isDefinition: true)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(scope: null, file: !3, line: 415, type: !949, isLocal: true, isDefinition: true)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 560, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 70)
!952 = !DIGlobalVariableExpression(var: !953, expr: !DIExpression())
!953 = distinct !DIGlobalVariable(scope: null, file: !3, line: 416, type: !768, isLocal: true, isDefinition: true)
!954 = !DIGlobalVariableExpression(var: !955, expr: !DIExpression())
!955 = distinct !DIGlobalVariable(scope: null, file: !3, line: 417, type: !956, isLocal: true, isDefinition: true)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024, elements: !957)
!957 = !{!958}
!958 = !DISubrange(count: 128)
!959 = !DIGlobalVariableExpression(var: !960, expr: !DIExpression())
!960 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !342, isLocal: true, isDefinition: true)
!961 = !DIGlobalVariableExpression(var: !962, expr: !DIExpression())
!962 = distinct !DIGlobalVariable(scope: null, file: !3, line: 420, type: !342, isLocal: true, isDefinition: true)
!963 = !DIGlobalVariableExpression(var: !964, expr: !DIExpression())
!964 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !357, isLocal: true, isDefinition: true)
!965 = !DIGlobalVariableExpression(var: !966, expr: !DIExpression())
!966 = distinct !DIGlobalVariable(scope: null, file: !3, line: 422, type: !877, isLocal: true, isDefinition: true)
!967 = !DIGlobalVariableExpression(var: !968, expr: !DIExpression())
!968 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !969, isLocal: true, isDefinition: true)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 512, elements: !135)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(scope: null, file: !3, line: 424, type: !969, isLocal: true, isDefinition: true)
!972 = !DIGlobalVariableExpression(var: !973, expr: !DIExpression())
!973 = distinct !DIGlobalVariable(scope: null, file: !3, line: 425, type: !862, isLocal: true, isDefinition: true)
!974 = !DIGlobalVariableExpression(var: !975, expr: !DIExpression())
!975 = distinct !DIGlobalVariable(scope: null, file: !3, line: 426, type: !976, isLocal: true, isDefinition: true)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1872, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 234)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !981, isLocal: true, isDefinition: true)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1008, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 126)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(scope: null, file: !3, line: 433, type: !986, isLocal: true, isDefinition: true)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1680, elements: !987)
!987 = !{!988}
!988 = !DISubrange(count: 210)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !3, line: 436, type: !775, isLocal: true, isDefinition: true)
!991 = !DIGlobalVariableExpression(var: !992, expr: !DIExpression())
!992 = distinct !DIGlobalVariable(scope: null, file: !3, line: 437, type: !969, isLocal: true, isDefinition: true)
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression())
!994 = distinct !DIGlobalVariable(scope: null, file: !3, line: 438, type: !378, isLocal: true, isDefinition: true)
!995 = !DIGlobalVariableExpression(var: !996, expr: !DIExpression())
!996 = distinct !DIGlobalVariable(scope: null, file: !3, line: 439, type: !997, isLocal: true, isDefinition: true)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 472, elements: !998)
!998 = !{!999}
!999 = !DISubrange(count: 59)
!1000 = !DIGlobalVariableExpression(var: !1001, expr: !DIExpression())
!1001 = distinct !DIGlobalVariable(scope: null, file: !3, line: 440, type: !1002, isLocal: true, isDefinition: true)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 728, elements: !1003)
!1003 = !{!1004}
!1004 = !DISubrange(count: 91)
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression())
!1006 = distinct !DIGlobalVariable(scope: null, file: !3, line: 441, type: !1007, isLocal: true, isDefinition: true)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 720, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 90)
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(scope: null, file: !3, line: 442, type: !857, isLocal: true, isDefinition: true)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(scope: null, file: !3, line: 443, type: !1014, isLocal: true, isDefinition: true)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2512, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 314)
!1017 = !DIGlobalVariableExpression(var: !1018, expr: !DIExpression())
!1018 = distinct !DIGlobalVariable(scope: null, file: !3, line: 448, type: !1019, isLocal: true, isDefinition: true)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2400, elements: !1020)
!1020 = !{!1021}
!1021 = !DISubrange(count: 300)
!1022 = !DIGlobalVariableExpression(var: !1023, expr: !DIExpression())
!1023 = distinct !DIGlobalVariable(scope: null, file: !3, line: 453, type: !441, isLocal: true, isDefinition: true)
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !3, line: 455, type: !1026, isLocal: true, isDefinition: true)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2152, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 269)
!1029 = !DIGlobalVariableExpression(var: !1030, expr: !DIExpression())
!1030 = distinct !DIGlobalVariable(scope: null, file: !3, line: 459, type: !1031, isLocal: true, isDefinition: true)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1040, elements: !1032)
!1032 = !{!1033}
!1033 = !DISubrange(count: 130)
!1034 = !DIGlobalVariableExpression(var: !1035, expr: !DIExpression())
!1035 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !775, isLocal: true, isDefinition: true)
!1036 = !DIGlobalVariableExpression(var: !1037, expr: !DIExpression())
!1037 = distinct !DIGlobalVariable(scope: null, file: !3, line: 463, type: !1038, isLocal: true, isDefinition: true)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1784, elements: !1039)
!1039 = !{!1040}
!1040 = !DISubrange(count: 223)
!1041 = !DIGlobalVariableExpression(var: !1042, expr: !DIExpression())
!1042 = distinct !DIGlobalVariable(scope: null, file: !3, line: 467, type: !913, isLocal: true, isDefinition: true)
!1043 = !DIGlobalVariableExpression(var: !1044, expr: !DIExpression())
!1044 = distinct !DIGlobalVariable(scope: null, file: !3, line: 469, type: !1045, isLocal: true, isDefinition: true)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2768, elements: !1046)
!1046 = !{!1047}
!1047 = !DISubrange(count: 346)
!1048 = !DIGlobalVariableExpression(var: !1049, expr: !DIExpression())
!1049 = distinct !DIGlobalVariable(scope: null, file: !3, line: 474, type: !894, isLocal: true, isDefinition: true)
!1050 = !DIGlobalVariableExpression(var: !1051, expr: !DIExpression())
!1051 = distinct !DIGlobalVariable(scope: null, file: !3, line: 475, type: !867, isLocal: true, isDefinition: true)
!1052 = !DIGlobalVariableExpression(var: !1053, expr: !DIExpression())
!1053 = distinct !DIGlobalVariable(scope: null, file: !3, line: 476, type: !775, isLocal: true, isDefinition: true)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(scope: null, file: !3, line: 477, type: !1056, isLocal: true, isDefinition: true)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 592, elements: !1057)
!1057 = !{!1058}
!1058 = !DISubrange(count: 74)
!1059 = !DIGlobalVariableExpression(var: !1060, expr: !DIExpression())
!1060 = distinct !DIGlobalVariable(scope: null, file: !3, line: 478, type: !1061, isLocal: true, isDefinition: true)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 648, elements: !1062)
!1062 = !{!1063}
!1063 = !DISubrange(count: 81)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(scope: null, file: !3, line: 479, type: !1066, isLocal: true, isDefinition: true)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 5016, elements: !1067)
!1067 = !{!1068}
!1068 = !DISubrange(count: 627)
!1069 = !DIGlobalVariableExpression(var: !1070, expr: !DIExpression())
!1070 = distinct !DIGlobalVariable(scope: null, file: !3, line: 488, type: !949, isLocal: true, isDefinition: true)
!1071 = !DIGlobalVariableExpression(var: !1072, expr: !DIExpression())
!1072 = distinct !DIGlobalVariable(scope: null, file: !3, line: 489, type: !1038, isLocal: true, isDefinition: true)
!1073 = !DIGlobalVariableExpression(var: !1074, expr: !DIExpression())
!1074 = distinct !DIGlobalVariable(scope: null, file: !3, line: 493, type: !981, isLocal: true, isDefinition: true)
!1075 = !DIGlobalVariableExpression(var: !1076, expr: !DIExpression())
!1076 = distinct !DIGlobalVariable(scope: null, file: !3, line: 495, type: !862, isLocal: true, isDefinition: true)
!1077 = !DIGlobalVariableExpression(var: !1078, expr: !DIExpression())
!1078 = distinct !DIGlobalVariable(scope: null, file: !3, line: 496, type: !327, isLocal: true, isDefinition: true)
!1079 = !DIGlobalVariableExpression(var: !1080, expr: !DIExpression())
!1080 = distinct !DIGlobalVariable(scope: null, file: !3, line: 497, type: !867, isLocal: true, isDefinition: true)
!1081 = !DIGlobalVariableExpression(var: !1082, expr: !DIExpression())
!1082 = distinct !DIGlobalVariable(scope: null, file: !3, line: 498, type: !882, isLocal: true, isDefinition: true)
!1083 = !DIGlobalVariableExpression(var: !1084, expr: !DIExpression())
!1084 = distinct !DIGlobalVariable(scope: null, file: !3, line: 502, type: !832, isLocal: true, isDefinition: true)
!1085 = !DIGlobalVariableExpression(var: !1086, expr: !DIExpression())
!1086 = distinct !DIGlobalVariable(scope: null, file: !3, line: 503, type: !913, isLocal: true, isDefinition: true)
!1087 = !DIGlobalVariableExpression(var: !1088, expr: !DIExpression())
!1088 = distinct !DIGlobalVariable(scope: null, file: !3, line: 504, type: !357, isLocal: true, isDefinition: true)
!1089 = !DIGlobalVariableExpression(var: !1090, expr: !DIExpression())
!1090 = distinct !DIGlobalVariable(scope: null, file: !3, line: 506, type: !1091, isLocal: true, isDefinition: true)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 712, elements: !1092)
!1092 = !{!1093}
!1093 = !DISubrange(count: 89)
!1094 = !DIGlobalVariableExpression(var: !1095, expr: !DIExpression())
!1095 = distinct !DIGlobalVariable(scope: null, file: !3, line: 507, type: !1091, isLocal: true, isDefinition: true)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(scope: null, file: !3, line: 508, type: !1098, isLocal: true, isDefinition: true)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 608, elements: !1099)
!1099 = !{!1100}
!1100 = !DISubrange(count: 76)
!1101 = !DIGlobalVariableExpression(var: !1102, expr: !DIExpression())
!1102 = distinct !DIGlobalVariable(scope: null, file: !3, line: 509, type: !1103, isLocal: true, isDefinition: true)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 864, elements: !1104)
!1104 = !{!1105}
!1105 = !DISubrange(count: 108)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(scope: null, file: !3, line: 511, type: !1108, isLocal: true, isDefinition: true)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 672, elements: !1109)
!1109 = !{!1110}
!1110 = !DISubrange(count: 84)
!1111 = !DIGlobalVariableExpression(var: !1112, expr: !DIExpression())
!1112 = distinct !DIGlobalVariable(scope: null, file: !3, line: 512, type: !867, isLocal: true, isDefinition: true)
!1113 = !DIGlobalVariableExpression(var: !1114, expr: !DIExpression())
!1114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 513, type: !1115, isLocal: true, isDefinition: true)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1096, elements: !1116)
!1116 = !{!1117}
!1117 = !DISubrange(count: 137)
!1118 = !DIGlobalVariableExpression(var: !1119, expr: !DIExpression())
!1119 = distinct !DIGlobalVariable(scope: null, file: !3, line: 515, type: !1115, isLocal: true, isDefinition: true)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 517, type: !1122, isLocal: true, isDefinition: true)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 896, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 112)
!1125 = !DIGlobalVariableExpression(var: !1126, expr: !DIExpression())
!1126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 519, type: !1127, isLocal: true, isDefinition: true)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 848, elements: !1128)
!1128 = !{!1129}
!1129 = !DISubrange(count: 106)
!1130 = !DIGlobalVariableExpression(var: !1131, expr: !DIExpression())
!1131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 522, type: !1132, isLocal: true, isDefinition: true)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 264, elements: !1133)
!1133 = !{!1134}
!1134 = !DISubrange(count: 33)
!1135 = !DIGlobalVariableExpression(var: !1136, expr: !DIExpression())
!1136 = distinct !DIGlobalVariable(scope: null, file: !3, line: 523, type: !1098, isLocal: true, isDefinition: true)
!1137 = !DIGlobalVariableExpression(var: !1138, expr: !DIExpression())
!1138 = distinct !DIGlobalVariable(scope: null, file: !3, line: 524, type: !1098, isLocal: true, isDefinition: true)
!1139 = !DIGlobalVariableExpression(var: !1140, expr: !DIExpression())
!1140 = distinct !DIGlobalVariable(scope: null, file: !3, line: 526, type: !1141, isLocal: true, isDefinition: true)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 976, elements: !1142)
!1142 = !{!1143}
!1143 = !DISubrange(count: 122)
!1144 = !DIGlobalVariableExpression(var: !1145, expr: !DIExpression())
!1145 = distinct !DIGlobalVariable(scope: null, file: !3, line: 529, type: !1146, isLocal: true, isDefinition: true)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1080, elements: !1147)
!1147 = !{!1148}
!1148 = !DISubrange(count: 135)
!1149 = !DIGlobalVariableExpression(var: !1150, expr: !DIExpression())
!1150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 532, type: !1151, isLocal: true, isDefinition: true)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 936, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 117)
!1154 = !DIGlobalVariableExpression(var: !1155, expr: !DIExpression())
!1155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 535, type: !1156, isLocal: true, isDefinition: true)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1528, elements: !1157)
!1157 = !{!1158}
!1158 = !DISubrange(count: 191)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression())
!1160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 539, type: !1161, isLocal: true, isDefinition: true)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1752, elements: !1162)
!1162 = !{!1163}
!1163 = !DISubrange(count: 219)
!1164 = !DIGlobalVariableExpression(var: !1165, expr: !DIExpression())
!1165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 543, type: !1166, isLocal: true, isDefinition: true)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1592, elements: !1167)
!1167 = !{!1168}
!1168 = !DISubrange(count: 199)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 547, type: !1098, isLocal: true, isDefinition: true)
!1171 = !DIGlobalVariableExpression(var: !1172, expr: !DIExpression())
!1172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 550, type: !1173, isLocal: true, isDefinition: true)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1232, elements: !1174)
!1174 = !{!1175}
!1175 = !DISubrange(count: 154)
!1176 = !DIGlobalVariableExpression(var: !1177, expr: !DIExpression())
!1177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 552, type: !949, isLocal: true, isDefinition: true)
!1178 = !DIGlobalVariableExpression(var: !1179, expr: !DIExpression())
!1179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 555, type: !430, isLocal: true, isDefinition: true)
!1180 = !DIGlobalVariableExpression(var: !1181, expr: !DIExpression())
!1181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 557, type: !894, isLocal: true, isDefinition: true)
!1182 = !DIGlobalVariableExpression(var: !1183, expr: !DIExpression())
!1183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 558, type: !1184, isLocal: true, isDefinition: true)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 872, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 109)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression())
!1188 = distinct !DIGlobalVariable(scope: null, file: !3, line: 560, type: !1103, isLocal: true, isDefinition: true)
!1189 = !DIGlobalVariableExpression(var: !1190, expr: !DIExpression())
!1190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 562, type: !763, isLocal: true, isDefinition: true)
!1191 = !DIGlobalVariableExpression(var: !1192, expr: !DIExpression())
!1192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 563, type: !997, isLocal: true, isDefinition: true)
!1193 = !DIGlobalVariableExpression(var: !1194, expr: !DIExpression())
!1194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 564, type: !1195, isLocal: true, isDefinition: true)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 392, elements: !1196)
!1196 = !{!1197}
!1197 = !DISubrange(count: 49)
!1198 = !DIGlobalVariableExpression(var: !1199, expr: !DIExpression())
!1199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 565, type: !842, isLocal: true, isDefinition: true)
!1200 = !DIGlobalVariableExpression(var: !1201, expr: !DIExpression())
!1201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 566, type: !327, isLocal: true, isDefinition: true)
!1202 = !DIGlobalVariableExpression(var: !1203, expr: !DIExpression())
!1203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !1204, isLocal: true, isDefinition: true)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 552, elements: !1205)
!1205 = !{!1206}
!1206 = !DISubrange(count: 69)
!1207 = !DIGlobalVariableExpression(var: !1208, expr: !DIExpression())
!1208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 569, type: !906, isLocal: true, isDefinition: true)
!1209 = !DIGlobalVariableExpression(var: !1210, expr: !DIExpression())
!1210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 570, type: !862, isLocal: true, isDefinition: true)
!1211 = !DIGlobalVariableExpression(var: !1212, expr: !DIExpression())
!1212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 571, type: !1213, isLocal: true, isDefinition: true)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 336, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 42)
!1216 = !DIGlobalVariableExpression(var: !1217, expr: !DIExpression())
!1217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 572, type: !847, isLocal: true, isDefinition: true)
!1218 = !DIGlobalVariableExpression(var: !1219, expr: !DIExpression())
!1219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 573, type: !847, isLocal: true, isDefinition: true)
!1220 = !DIGlobalVariableExpression(var: !1221, expr: !DIExpression())
!1221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 574, type: !327, isLocal: true, isDefinition: true)
!1222 = !DIGlobalVariableExpression(var: !1223, expr: !DIExpression())
!1223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 575, type: !1056, isLocal: true, isDefinition: true)
!1224 = !DIGlobalVariableExpression(var: !1225, expr: !DIExpression())
!1225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 576, type: !305, isLocal: true, isDefinition: true)
!1226 = !DIGlobalVariableExpression(var: !1227, expr: !DIExpression())
!1227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 577, type: !1061, isLocal: true, isDefinition: true)
!1228 = !DIGlobalVariableExpression(var: !1229, expr: !DIExpression())
!1229 = distinct !DIGlobalVariable(scope: null, file: !3, line: 578, type: !1230, isLocal: true, isDefinition: true)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 744, elements: !1231)
!1231 = !{!1232}
!1232 = !DISubrange(count: 93)
!1233 = !DIGlobalVariableExpression(var: !1234, expr: !DIExpression())
!1234 = distinct !DIGlobalVariable(scope: null, file: !3, line: 579, type: !1235, isLocal: true, isDefinition: true)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 432, elements: !1236)
!1236 = !{!1237}
!1237 = !DISubrange(count: 54)
!1238 = !DIGlobalVariableExpression(var: !1239, expr: !DIExpression())
!1239 = distinct !DIGlobalVariable(scope: null, file: !3, line: 580, type: !763, isLocal: true, isDefinition: true)
!1240 = !DIGlobalVariableExpression(var: !1241, expr: !DIExpression())
!1241 = distinct !DIGlobalVariable(scope: null, file: !3, line: 581, type: !1098, isLocal: true, isDefinition: true)
!1242 = !DIGlobalVariableExpression(var: !1243, expr: !DIExpression())
!1243 = distinct !DIGlobalVariable(scope: null, file: !3, line: 582, type: !310, isLocal: true, isDefinition: true)
!1244 = !DIGlobalVariableExpression(var: !1245, expr: !DIExpression())
!1245 = distinct !DIGlobalVariable(scope: null, file: !3, line: 583, type: !889, isLocal: true, isDefinition: true)
!1246 = !DIGlobalVariableExpression(var: !1247, expr: !DIExpression())
!1247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 584, type: !906, isLocal: true, isDefinition: true)
!1248 = !DIGlobalVariableExpression(var: !1249, expr: !DIExpression())
!1249 = distinct !DIGlobalVariable(scope: null, file: !3, line: 585, type: !913, isLocal: true, isDefinition: true)
!1250 = !DIGlobalVariableExpression(var: !1251, expr: !DIExpression())
!1251 = distinct !DIGlobalVariable(scope: null, file: !3, line: 586, type: !913, isLocal: true, isDefinition: true)
!1252 = !DIGlobalVariableExpression(var: !1253, expr: !DIExpression())
!1253 = distinct !DIGlobalVariable(scope: null, file: !3, line: 587, type: !913, isLocal: true, isDefinition: true)
!1254 = !DIGlobalVariableExpression(var: !1255, expr: !DIExpression())
!1255 = distinct !DIGlobalVariable(scope: null, file: !3, line: 588, type: !1256, isLocal: true, isDefinition: true)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1864, elements: !1257)
!1257 = !{!1258}
!1258 = !DISubrange(count: 233)
!1259 = !DIGlobalVariableExpression(var: !1260, expr: !DIExpression())
!1260 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !388, isLocal: true, isDefinition: true)
!1261 = !DIGlobalVariableExpression(var: !1262, expr: !DIExpression())
!1262 = distinct !DIGlobalVariable(scope: null, file: !68, line: 114, type: !383, isLocal: true, isDefinition: true)
!1263 = !DIGlobalVariableExpression(var: !1264, expr: !DIExpression())
!1264 = distinct !DIGlobalVariable(scope: null, file: !68, line: 114, type: !337, isLocal: true, isDefinition: true)
!1265 = !DIGlobalVariableExpression(var: !1266, expr: !DIExpression())
!1266 = distinct !DIGlobalVariable(scope: null, file: !68, line: 114, type: !337, isLocal: true, isDefinition: true)
!1267 = !DIGlobalVariableExpression(var: !1268, expr: !DIExpression())
!1268 = distinct !DIGlobalVariable(name: "x264_b_pyramid_names", scope: !2, file: !68, line: 114, type: !393, isLocal: true, isDefinition: true)
!1269 = !DIGlobalVariableExpression(var: !1270, expr: !DIExpression())
!1270 = distinct !DIGlobalVariable(scope: null, file: !68, line: 112, type: !285, isLocal: true, isDefinition: true)
!1271 = !DIGlobalVariableExpression(var: !1272, expr: !DIExpression())
!1272 = distinct !DIGlobalVariable(scope: null, file: !68, line: 112, type: !413, isLocal: true, isDefinition: true)
!1273 = !DIGlobalVariableExpression(var: !1274, expr: !DIExpression())
!1274 = distinct !DIGlobalVariable(name: "x264_direct_pred_names", scope: !2, file: !68, line: 112, type: !403, isLocal: true, isDefinition: true)
!1275 = !DIGlobalVariableExpression(var: !1276, expr: !DIExpression())
!1276 = distinct !DIGlobalVariable(scope: null, file: !68, line: 113, type: !388, isLocal: true, isDefinition: true)
!1277 = !DIGlobalVariableExpression(var: !1278, expr: !DIExpression())
!1278 = distinct !DIGlobalVariable(scope: null, file: !68, line: 113, type: !388, isLocal: true, isDefinition: true)
!1279 = !DIGlobalVariableExpression(var: !1280, expr: !DIExpression())
!1280 = distinct !DIGlobalVariable(scope: null, file: !68, line: 113, type: !388, isLocal: true, isDefinition: true)
!1281 = !DIGlobalVariableExpression(var: !1282, expr: !DIExpression())
!1282 = distinct !DIGlobalVariable(scope: null, file: !68, line: 113, type: !388, isLocal: true, isDefinition: true)
!1283 = !DIGlobalVariableExpression(var: !1284, expr: !DIExpression())
!1284 = distinct !DIGlobalVariable(scope: null, file: !68, line: 113, type: !383, isLocal: true, isDefinition: true)
!1285 = !DIGlobalVariableExpression(var: !1286, expr: !DIExpression())
!1286 = distinct !DIGlobalVariable(name: "x264_motion_est_names", scope: !2, file: !68, line: 113, type: !1287, isLocal: true, isDefinition: true)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 384, elements: !333)
!1288 = !DIGlobalVariableExpression(var: !1289, expr: !DIExpression())
!1289 = distinct !DIGlobalVariable(scope: null, file: !68, line: 115, type: !332, isLocal: true, isDefinition: true)
!1290 = !DIGlobalVariableExpression(var: !1291, expr: !DIExpression())
!1291 = distinct !DIGlobalVariable(scope: null, file: !68, line: 115, type: !383, isLocal: true, isDefinition: true)
!1292 = !DIGlobalVariableExpression(var: !1293, expr: !DIExpression())
!1293 = distinct !DIGlobalVariable(scope: null, file: !68, line: 115, type: !383, isLocal: true, isDefinition: true)
!1294 = !DIGlobalVariableExpression(var: !1295, expr: !DIExpression())
!1295 = distinct !DIGlobalVariable(name: "x264_overscan_names", scope: !2, file: !68, line: 115, type: !393, isLocal: true, isDefinition: true)
!1296 = !DIGlobalVariableExpression(var: !1297, expr: !DIExpression())
!1297 = distinct !DIGlobalVariable(scope: null, file: !68, line: 116, type: !448, isLocal: true, isDefinition: true)
!1298 = !DIGlobalVariableExpression(var: !1299, expr: !DIExpression())
!1299 = distinct !DIGlobalVariable(scope: null, file: !68, line: 116, type: !388, isLocal: true, isDefinition: true)
!1300 = !DIGlobalVariableExpression(var: !1301, expr: !DIExpression())
!1301 = distinct !DIGlobalVariable(scope: null, file: !68, line: 116, type: !383, isLocal: true, isDefinition: true)
!1302 = !DIGlobalVariableExpression(var: !1303, expr: !DIExpression())
!1303 = distinct !DIGlobalVariable(scope: null, file: !68, line: 116, type: !332, isLocal: true, isDefinition: true)
!1304 = !DIGlobalVariableExpression(var: !1305, expr: !DIExpression())
!1305 = distinct !DIGlobalVariable(scope: null, file: !68, line: 116, type: !388, isLocal: true, isDefinition: true)
!1306 = !DIGlobalVariableExpression(var: !1307, expr: !DIExpression())
!1307 = distinct !DIGlobalVariable(name: "x264_vidformat_names", scope: !2, file: !68, line: 116, type: !1308, isLocal: true, isDefinition: true)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 448, elements: !338)
!1309 = !DIGlobalVariableExpression(var: !1310, expr: !DIExpression())
!1310 = distinct !DIGlobalVariable(scope: null, file: !68, line: 117, type: !388, isLocal: true, isDefinition: true)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(scope: null, file: !68, line: 117, type: !295, isLocal: true, isDefinition: true)
!1313 = !DIGlobalVariableExpression(var: !1314, expr: !DIExpression())
!1314 = distinct !DIGlobalVariable(name: "x264_fullrange_names", scope: !2, file: !68, line: 117, type: !1315, isLocal: true, isDefinition: true)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 192, elements: !296)
!1316 = !DIGlobalVariableExpression(var: !1317, expr: !DIExpression())
!1317 = distinct !DIGlobalVariable(scope: null, file: !68, line: 118, type: !332, isLocal: true, isDefinition: true)
!1318 = !DIGlobalVariableExpression(var: !1319, expr: !DIExpression())
!1319 = distinct !DIGlobalVariable(scope: null, file: !68, line: 118, type: !337, isLocal: true, isDefinition: true)
!1320 = !DIGlobalVariableExpression(var: !1321, expr: !DIExpression())
!1321 = distinct !DIGlobalVariable(scope: null, file: !68, line: 118, type: !285, isLocal: true, isDefinition: true)
!1322 = !DIGlobalVariableExpression(var: !1323, expr: !DIExpression())
!1323 = distinct !DIGlobalVariable(scope: null, file: !68, line: 118, type: !448, isLocal: true, isDefinition: true)
!1324 = !DIGlobalVariableExpression(var: !1325, expr: !DIExpression())
!1325 = distinct !DIGlobalVariable(scope: null, file: !68, line: 118, type: !448, isLocal: true, isDefinition: true)
!1326 = !DIGlobalVariableExpression(var: !1327, expr: !DIExpression())
!1327 = distinct !DIGlobalVariable(scope: null, file: !68, line: 118, type: !383, isLocal: true, isDefinition: true)
!1328 = !DIGlobalVariableExpression(var: !1329, expr: !DIExpression())
!1329 = distinct !DIGlobalVariable(name: "x264_colorprim_names", scope: !2, file: !68, line: 118, type: !1330, isLocal: true, isDefinition: true)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 640, elements: !449)
!1331 = !DIGlobalVariableExpression(var: !1332, expr: !DIExpression())
!1332 = distinct !DIGlobalVariable(scope: null, file: !68, line: 119, type: !337, isLocal: true, isDefinition: true)
!1333 = !DIGlobalVariableExpression(var: !1334, expr: !DIExpression())
!1334 = distinct !DIGlobalVariable(scope: null, file: !68, line: 119, type: !337, isLocal: true, isDefinition: true)
!1335 = !DIGlobalVariableExpression(var: !1336, expr: !DIExpression())
!1336 = distinct !DIGlobalVariable(scope: null, file: !68, line: 119, type: !337, isLocal: true, isDefinition: true)
!1337 = !DIGlobalVariableExpression(var: !1338, expr: !DIExpression())
!1338 = distinct !DIGlobalVariable(name: "x264_transfer_names", scope: !2, file: !68, line: 119, type: !1339, isLocal: true, isDefinition: true)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 768, elements: !465)
!1340 = !DIGlobalVariableExpression(var: !1341, expr: !DIExpression())
!1341 = distinct !DIGlobalVariable(scope: null, file: !68, line: 120, type: !388, isLocal: true, isDefinition: true)
!1342 = !DIGlobalVariableExpression(var: !1343, expr: !DIExpression())
!1343 = distinct !DIGlobalVariable(scope: null, file: !68, line: 120, type: !388, isLocal: true, isDefinition: true)
!1344 = !DIGlobalVariableExpression(var: !1345, expr: !DIExpression())
!1345 = distinct !DIGlobalVariable(scope: null, file: !68, line: 120, type: !332, isLocal: true, isDefinition: true)
!1346 = !DIGlobalVariableExpression(var: !1347, expr: !DIExpression())
!1347 = distinct !DIGlobalVariable(name: "x264_colmatrix_names", scope: !2, file: !68, line: 120, type: !1330, isLocal: true, isDefinition: true)
!1348 = !DIGlobalVariableExpression(var: !1349, expr: !DIExpression())
!1349 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !295, isLocal: true, isDefinition: true)
!1350 = !DIGlobalVariableExpression(var: !1351, expr: !DIExpression())
!1351 = distinct !DIGlobalVariable(scope: null, file: !3, line: 200, type: !295, isLocal: true, isDefinition: true)
!1352 = !DIGlobalVariableExpression(var: !1353, expr: !DIExpression())
!1353 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !295, isLocal: true, isDefinition: true)
!1354 = !DIGlobalVariableExpression(var: !1355, expr: !DIExpression())
!1355 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !295, isLocal: true, isDefinition: true)
!1356 = !DIGlobalVariableExpression(var: !1357, expr: !DIExpression())
!1357 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !295, isLocal: true, isDefinition: true)
!1358 = !DIGlobalVariableExpression(var: !1359, expr: !DIExpression())
!1359 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !337, isLocal: true, isDefinition: true)
!1360 = !DIGlobalVariableExpression(var: !1361, expr: !DIExpression())
!1361 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !337, isLocal: true, isDefinition: true)
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !383, isLocal: true, isDefinition: true)
!1364 = !DIGlobalVariableExpression(var: !1365, expr: !DIExpression())
!1365 = distinct !DIGlobalVariable(name: "pulldown_names", scope: !2, file: !3, line: 102, type: !1366, isLocal: true, isDefinition: true)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 512, elements: !286)
!1367 = !DIGlobalVariableExpression(var: !1368, expr: !DIExpression())
!1368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 768, type: !743, isLocal: true, isDefinition: true)
!1369 = !DIGlobalVariableExpression(var: !1370, expr: !DIExpression())
!1370 = distinct !DIGlobalVariable(scope: null, file: !3, line: 771, type: !388, isLocal: true, isDefinition: true)
!1371 = !DIGlobalVariableExpression(var: !1372, expr: !DIExpression())
!1372 = distinct !DIGlobalVariable(scope: null, file: !3, line: 784, type: !357, isLocal: true, isDefinition: true)
!1373 = !DIGlobalVariableExpression(var: !1374, expr: !DIExpression())
!1374 = distinct !DIGlobalVariable(name: "output", scope: !2, file: !3, line: 71, type: !1375, isLocal: true, isDefinition: true)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_output_t", file: !1376, line: 34, baseType: !1377)
!1376 = !DIFile(filename: "x264_src/output/output.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "2609bd03b72b40b15579de35b2e5f690")
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1376, line: 27, size: 320, elements: !1378)
!1378 = !{!1379, !1383, !1387, !1399, !1403}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !1377, file: !1376, line: 29, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!7, !9, !27}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "set_param", scope: !1377, file: !1376, line: 30, baseType: !1384, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!7, !28, !78}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "write_headers", scope: !1377, file: !1376, line: 31, baseType: !1388, size: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!7, !28, !1391}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !68, line: 604, baseType: !1393)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 593, size: 192, elements: !1394)
!1394 = !{!1395, !1396, !1397, !1398}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !1393, file: !68, line: 595, baseType: !7, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1393, file: !68, line: 596, baseType: !7, size: 32, offset: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !1393, file: !68, line: 599, baseType: !7, size: 32, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !1393, file: !68, line: 603, baseType: !260, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame", scope: !1377, file: !1376, line: 32, baseType: !1400, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!7, !28, !260, !7, !66}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !1377, file: !1376, line: 33, baseType: !1404, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!7, !28, !11, !11}
!1407 = !DIGlobalVariableExpression(var: !1408, expr: !DIExpression())
!1408 = distinct !DIGlobalVariable(scope: null, file: !3, line: 817, type: !743, isLocal: true, isDefinition: true)
!1409 = !DIGlobalVariableExpression(var: !1410, expr: !DIExpression())
!1410 = distinct !DIGlobalVariable(scope: null, file: !3, line: 826, type: !388, isLocal: true, isDefinition: true)
!1411 = !DIGlobalVariableExpression(var: !1412, expr: !DIExpression())
!1412 = distinct !DIGlobalVariable(scope: null, file: !3, line: 826, type: !388, isLocal: true, isDefinition: true)
!1413 = !DIGlobalVariableExpression(var: !1414, expr: !DIExpression())
!1414 = distinct !DIGlobalVariable(scope: null, file: !3, line: 826, type: !388, isLocal: true, isDefinition: true)
!1415 = !DIGlobalVariableExpression(var: !1416, expr: !DIExpression())
!1416 = distinct !DIGlobalVariable(scope: null, file: !3, line: 832, type: !894, isLocal: true, isDefinition: true)
!1417 = !DIGlobalVariableExpression(var: !1418, expr: !DIExpression())
!1418 = distinct !DIGlobalVariable(scope: null, file: !3, line: 878, type: !305, isLocal: true, isDefinition: true)
!1419 = !DIGlobalVariableExpression(var: !1420, expr: !DIExpression())
!1420 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1432, type: !310, isLocal: true, isDefinition: true)
!1421 = !DIGlobalVariableExpression(var: !1422, expr: !DIExpression())
!1422 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1440, type: !1423, isLocal: true, isDefinition: true)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !1424)
!1424 = !{!1425}
!1425 = !DISubrange(count: 40)
!1426 = !DIGlobalVariableExpression(var: !1427, expr: !DIExpression())
!1427 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1451, type: !1428, isLocal: true, isDefinition: true)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 312, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 39)
!1431 = !DIGlobalVariableExpression(var: !1432, expr: !DIExpression())
!1432 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1460, type: !1433, isLocal: true, isDefinition: true)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 232, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 29)
!1436 = !DIGlobalVariableExpression(var: !1437, expr: !DIExpression())
!1437 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1469, type: !750, isLocal: true, isDefinition: true)
!1438 = !DIGlobalVariableExpression(var: !1439, expr: !DIExpression())
!1439 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1481, type: !1440, isLocal: true, isDefinition: true)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 344, elements: !1441)
!1441 = !{!1442}
!1442 = !DISubrange(count: 43)
!1443 = !DIGlobalVariableExpression(var: !1444, expr: !DIExpression())
!1444 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1490, type: !1445, isLocal: true, isDefinition: true)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 176, elements: !1446)
!1446 = !{!1447}
!1447 = !DISubrange(count: 22)
!1448 = !DIGlobalVariableExpression(var: !1449, expr: !DIExpression())
!1449 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1517, type: !1204, isLocal: true, isDefinition: true)
!1450 = !DIGlobalVariableExpression(var: !1451, expr: !DIExpression())
!1451 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1520, type: !857, isLocal: true, isDefinition: true)
!1452 = !DIGlobalVariableExpression(var: !1453, expr: !DIExpression())
!1453 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1530, type: !332, isLocal: true, isDefinition: true)
!1454 = !DIGlobalVariableExpression(var: !1455, expr: !DIExpression())
!1455 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1580, type: !310, isLocal: true, isDefinition: true)
!1456 = !DIGlobalVariableExpression(var: !1457, expr: !DIExpression())
!1457 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1596, type: !1061, isLocal: true, isDefinition: true)
!1458 = !DIGlobalVariableExpression(var: !1459, expr: !DIExpression())
!1459 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1601, type: !750, isLocal: true, isDefinition: true)
!1460 = !DIGlobalVariableExpression(var: !1461, expr: !DIExpression())
!1461 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1617, type: !1423, isLocal: true, isDefinition: true)
!1462 = !DIGlobalVariableExpression(var: !1463, expr: !DIExpression())
!1463 = distinct !DIGlobalVariable(name: "pulldown_values", scope: !2, file: !3, line: 125, type: !1464, isLocal: true, isDefinition: true)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1465, size: 1792, elements: !338)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_pulldown_t", file: !3, line: 108, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 104, size: 256, elements: !1468)
!1468 = !{!1469, !1470, !1474}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1467, file: !3, line: 105, baseType: !7, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !1467, file: !3, line: 106, baseType: !1471, size: 192, offset: 32)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 192, elements: !1472)
!1472 = !{!1473}
!1473 = !DISubrange(count: 24)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "fps_factor", scope: !1467, file: !3, line: 107, baseType: !177, size: 32, offset: 224)
!1475 = !DIGlobalVariableExpression(var: !1476, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!1476 = distinct !DIGlobalVariable(name: "b_ctrl_c", scope: !2, file: !3, line: 49, type: !7, isLocal: true, isDefinition: true)
!1477 = !DIGlobalVariableExpression(var: !1478, expr: !DIExpression())
!1478 = distinct !DIGlobalVariable(name: "pulldown_frame_duration", scope: !2, file: !3, line: 142, type: !1479, isLocal: true, isDefinition: true)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1480, size: 320, elements: !449)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!1481 = !DIGlobalVariableExpression(var: !1482, expr: !DIExpression())
!1482 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1306, type: !448, isLocal: true, isDefinition: true)
!1483 = !DIGlobalVariableExpression(var: !1484, expr: !DIExpression())
!1484 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1325, type: !342, isLocal: true, isDefinition: true)
!1485 = !DIGlobalVariableExpression(var: !1486, expr: !DIExpression())
!1486 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1350, type: !1213, isLocal: true, isDefinition: true)
!1487 = !{i32 7, !"Dwarf Version", i32 5}
!1488 = !{i32 2, !"Debug Info Version", i32 3}
!1489 = !{i32 1, !"wchar_size", i32 4}
!1490 = !{i32 8, !"PIC Level", i32 2}
!1491 = !{i32 7, !"PIE Level", i32 2}
!1492 = !{i32 7, !"uwtable", i32 2}
!1493 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1494 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!1495 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 151, type: !1496, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!7, !7, !8}
!1498 = !{!1499, !1500, !1501, !1502, !1568}
!1499 = !DILocalVariable(name: "argc", arg: 1, scope: !1495, file: !3, line: 151, type: !7)
!1500 = !DILocalVariable(name: "argv", arg: 2, scope: !1495, file: !3, line: 151, type: !8)
!1501 = !DILocalVariable(name: "param", scope: !1495, file: !3, line: 153, type: !79)
!1502 = !DILocalVariable(name: "opt", scope: !1495, file: !3, line: 154, type: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_opt_t", file: !3, line: 67, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 58, size: 448, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1565, !1566, !1567}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "b_progress", scope: !1504, file: !3, line: 59, baseType: !7, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "i_seek", scope: !1504, file: !3, line: 60, baseType: !7, size: 32, offset: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "hin", scope: !1504, file: !3, line: 61, baseType: !28, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "hout", scope: !1504, file: !3, line: 62, baseType: !28, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "qpfile", scope: !1504, file: !3, line: 63, baseType: !1511, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1513, line: 7, baseType: !1514)
!1513 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1515, line: 49, size: 1728, elements: !1516)
!1515 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1532, !1534, !1535, !1536, !1538, !1540, !1542, !1543, !1546, !1548, !1551, !1554, !1555, !1556, !1560, !1561}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1514, file: !1515, line: 51, baseType: !7, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1514, file: !1515, line: 54, baseType: !9, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1514, file: !1515, line: 55, baseType: !9, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1514, file: !1515, line: 56, baseType: !9, size: 64, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1514, file: !1515, line: 57, baseType: !9, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1514, file: !1515, line: 58, baseType: !9, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1514, file: !1515, line: 59, baseType: !9, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1514, file: !1515, line: 60, baseType: !9, size: 64, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1514, file: !1515, line: 61, baseType: !9, size: 64, offset: 512)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1514, file: !1515, line: 64, baseType: !9, size: 64, offset: 576)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1514, file: !1515, line: 65, baseType: !9, size: 64, offset: 640)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1514, file: !1515, line: 66, baseType: !9, size: 64, offset: 704)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1514, file: !1515, line: 68, baseType: !1530, size: 64, offset: 768)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1515, line: 36, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1514, file: !1515, line: 70, baseType: !1533, size: 64, offset: 832)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1514, file: !1515, line: 72, baseType: !7, size: 32, offset: 896)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1514, file: !1515, line: 73, baseType: !7, size: 32, offset: 928)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1514, file: !1515, line: 74, baseType: !1537, size: 64, offset: 960)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !14, line: 152, baseType: !15)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1514, file: !1515, line: 77, baseType: !1539, size: 16, offset: 1024)
!1539 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1514, file: !1515, line: 78, baseType: !1541, size: 8, offset: 1040)
!1541 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1514, file: !1515, line: 79, baseType: !734, size: 8, offset: 1048)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1514, file: !1515, line: 81, baseType: !1544, size: 64, offset: 1088)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1515, line: 43, baseType: null)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1514, file: !1515, line: 89, baseType: !1547, size: 64, offset: 1152)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !14, line: 153, baseType: !15)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1514, file: !1515, line: 91, baseType: !1549, size: 64, offset: 1216)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1515, line: 37, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1514, file: !1515, line: 92, baseType: !1552, size: 64, offset: 1280)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1515, line: 38, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1514, file: !1515, line: 93, baseType: !1533, size: 64, offset: 1344)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1514, file: !1515, line: 94, baseType: !6, size: 64, offset: 1408)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1514, file: !1515, line: 95, baseType: !1557, size: 64, offset: 1472)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1558, line: 18, baseType: !1559)
!1558 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1559 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1514, file: !1515, line: 96, baseType: !7, size: 32, offset: 1536)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1514, file: !1515, line: 98, baseType: !1562, size: 160, offset: 1568)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !1563)
!1563 = !{!1564}
!1564 = !DISubrange(count: 20)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "tcfile_out", scope: !1504, file: !3, line: 64, baseType: !1511, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_convert_multiplier", scope: !1504, file: !3, line: 65, baseType: !5, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "i_pulldown", scope: !1504, file: !3, line: 66, baseType: !7, size: 32, offset: 384)
!1568 = !DILocalVariable(name: "ret", scope: !1495, file: !3, line: 155, type: !7)
!1569 = distinct !DIAssignID()
!1570 = !DILocalVariable(name: "pic_out", scope: !1571, file: !3, line: 1341, type: !67)
!1571 = distinct !DISubprogram(name: "Encode_frame", scope: !3, file: !3, line: 1339, type: !1572, scopeLine: 1340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2651)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!7, !1574, !28, !66, !2650}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !68, line: 46, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !1577, line: 381, size: 266752, elements: !1578)
!1577 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!1578 = !{!1579, !1580, !1584, !1585, !1586, !1587, !1588, !1589, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1713, !1715, !1741, !1743, !1744, !1745, !1749, !1753, !1754, !1755, !1761, !1765, !1766, !1767, !1772, !1775, !1776, !1851, !1868, !2013, !2014, !2015, !2016, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2040, !2227, !2231, !2288, !2291, !2293, !2295, !2296, !2299, !2304, !2311, !2312, !2318, !2320, !2325, !2400, !2482, !2526, !2548, !2597, !2626}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1576, file: !1577, line: 384, baseType: !79, size: 5632)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1576, file: !1577, line: 386, baseType: !1581, size: 8256, offset: 5632)
!1581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1574, size: 8256, elements: !1582)
!1582 = !{!1583}
!1583 = !DISubrange(count: 129)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !1576, file: !1577, line: 387, baseType: !7, size: 32, offset: 13888)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1576, file: !1577, line: 388, baseType: !7, size: 32, offset: 13920)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !1576, file: !1577, line: 389, baseType: !7, size: 32, offset: 13952)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !1576, file: !1577, line: 390, baseType: !7, size: 32, offset: 13984)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !1576, file: !1577, line: 391, baseType: !7, size: 32, offset: 14016)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1576, file: !1577, line: 402, baseType: !1590, size: 576, offset: 14080)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !1577, line: 394, size: 576, elements: !1591)
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !1590, file: !1577, line: 396, baseType: !7, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !1590, file: !1577, line: 397, baseType: !7, size: 32, offset: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !1590, file: !1577, line: 398, baseType: !1391, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !1590, file: !1577, line: 399, baseType: !7, size: 32, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !1590, file: !1577, line: 400, baseType: !260, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !1590, file: !1577, line: 401, baseType: !1598, size: 320, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !1599, line: 56, baseType: !1600)
!1599 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !1599, line: 47, size: 320, elements: !1601)
!1601 = !{!1602, !1603, !1604, !1605, !1608, !1609}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !1600, file: !1599, line: 49, baseType: !260, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1600, file: !1599, line: 50, baseType: !260, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !1600, file: !1599, line: 51, baseType: !260, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !1600, file: !1599, line: 53, baseType: !1606, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1607, line: 87, baseType: !15)
!1607 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !1600, file: !1599, line: 54, baseType: !7, size: 32, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !1600, file: !1599, line: 55, baseType: !7, size: 32, offset: 288)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !1576, file: !1577, line: 404, baseType: !260, size: 64, offset: 14656)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !1576, file: !1577, line: 405, baseType: !7, size: 32, offset: 14720)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !1576, file: !1577, line: 410, baseType: !7, size: 32, offset: 14752)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !1576, file: !1577, line: 411, baseType: !7, size: 32, offset: 14784)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !1576, file: !1577, line: 413, baseType: !7, size: 32, offset: 14816)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !1576, file: !1577, line: 415, baseType: !7, size: 32, offset: 14848)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !1576, file: !1577, line: 416, baseType: !7, size: 32, offset: 14880)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !1576, file: !1577, line: 418, baseType: !7, size: 32, offset: 14912)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !1576, file: !1577, line: 419, baseType: !7, size: 32, offset: 14944)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !1576, file: !1577, line: 420, baseType: !7, size: 32, offset: 14976)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !1576, file: !1577, line: 421, baseType: !7, size: 32, offset: 15008)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !1576, file: !1577, line: 422, baseType: !7, size: 32, offset: 15040)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !1576, file: !1577, line: 424, baseType: !7, size: 32, offset: 15072)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !1576, file: !1577, line: 425, baseType: !7, size: 32, offset: 15104)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !1576, file: !1577, line: 427, baseType: !7, size: 32, offset: 15136)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !1576, file: !1577, line: 430, baseType: !1626, size: 10400, offset: 15168)
!1626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1627, size: 10400, elements: !735)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !1628, line: 154, baseType: !1629)
!1628 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1628, line: 52, size: 10400, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1663, !1664, !1712}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !1629, file: !1628, line: 54, baseType: !7, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !1629, file: !1628, line: 56, baseType: !7, size: 32, offset: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !1629, file: !1628, line: 57, baseType: !7, size: 32, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !1629, file: !1628, line: 59, baseType: !7, size: 32, offset: 96)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !1629, file: !1628, line: 60, baseType: !7, size: 32, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !1629, file: !1628, line: 61, baseType: !7, size: 32, offset: 160)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !1629, file: !1628, line: 63, baseType: !7, size: 32, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !1629, file: !1628, line: 65, baseType: !7, size: 32, offset: 224)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !1629, file: !1628, line: 67, baseType: !7, size: 32, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !1629, file: !1628, line: 69, baseType: !7, size: 32, offset: 288)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !1629, file: !1628, line: 70, baseType: !7, size: 32, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !1629, file: !1628, line: 71, baseType: !7, size: 32, offset: 352)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !1629, file: !1628, line: 72, baseType: !7, size: 32, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !1629, file: !1628, line: 73, baseType: !1645, size: 8192, offset: 416)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !1646)
!1646 = !{!1647}
!1647 = !DISubrange(count: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !1629, file: !1628, line: 75, baseType: !7, size: 32, offset: 8608)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !1629, file: !1628, line: 76, baseType: !7, size: 32, offset: 8640)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !1629, file: !1628, line: 77, baseType: !7, size: 32, offset: 8672)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !1629, file: !1628, line: 78, baseType: !7, size: 32, offset: 8704)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !1629, file: !1628, line: 79, baseType: !7, size: 32, offset: 8736)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !1629, file: !1628, line: 80, baseType: !7, size: 32, offset: 8768)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !1629, file: !1628, line: 81, baseType: !7, size: 32, offset: 8800)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !1629, file: !1628, line: 83, baseType: !7, size: 32, offset: 8832)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !1629, file: !1628, line: 90, baseType: !1657, size: 128, offset: 8864)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !1628, line: 84, size: 128, elements: !1658)
!1658 = !{!1659, !1660, !1661, !1662}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !1657, file: !1628, line: 86, baseType: !7, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !1657, file: !1628, line: 87, baseType: !7, size: 32, offset: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !1657, file: !1628, line: 88, baseType: !7, size: 32, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !1657, file: !1628, line: 89, baseType: !7, size: 32, offset: 96)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !1629, file: !1628, line: 92, baseType: !7, size: 32, offset: 8992)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !1629, file: !1628, line: 150, baseType: !1665, size: 1344, offset: 9024)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !1628, line: 93, size: 1344, elements: !1666)
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !1665, file: !1628, line: 95, baseType: !7, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !1665, file: !1628, line: 96, baseType: !7, size: 32, offset: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !1665, file: !1628, line: 97, baseType: !7, size: 32, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !1665, file: !1628, line: 99, baseType: !7, size: 32, offset: 96)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !1665, file: !1628, line: 100, baseType: !7, size: 32, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !1665, file: !1628, line: 102, baseType: !7, size: 32, offset: 160)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !1665, file: !1628, line: 103, baseType: !7, size: 32, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !1665, file: !1628, line: 104, baseType: !7, size: 32, offset: 224)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !1665, file: !1628, line: 105, baseType: !7, size: 32, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !1665, file: !1628, line: 106, baseType: !7, size: 32, offset: 288)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !1665, file: !1628, line: 107, baseType: !7, size: 32, offset: 320)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !1665, file: !1628, line: 108, baseType: !7, size: 32, offset: 352)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !1665, file: !1628, line: 110, baseType: !7, size: 32, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !1665, file: !1628, line: 111, baseType: !7, size: 32, offset: 416)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !1665, file: !1628, line: 112, baseType: !7, size: 32, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !1665, file: !1628, line: 114, baseType: !7, size: 32, offset: 480)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !1665, file: !1628, line: 115, baseType: !36, size: 32, offset: 512)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !1665, file: !1628, line: 116, baseType: !36, size: 32, offset: 544)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !1665, file: !1628, line: 117, baseType: !7, size: 32, offset: 576)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !1665, file: !1628, line: 119, baseType: !7, size: 32, offset: 608)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !1665, file: !1628, line: 120, baseType: !7, size: 32, offset: 640)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !1665, file: !1628, line: 137, baseType: !1689, size: 384, offset: 672)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1665, file: !1628, line: 122, size: 384, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !1689, file: !1628, line: 124, baseType: !7, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !1689, file: !1628, line: 125, baseType: !7, size: 32, offset: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !1689, file: !1628, line: 126, baseType: !7, size: 32, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !1689, file: !1628, line: 127, baseType: !7, size: 32, offset: 96)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !1689, file: !1628, line: 128, baseType: !7, size: 32, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !1689, file: !1628, line: 129, baseType: !7, size: 32, offset: 160)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !1689, file: !1628, line: 130, baseType: !7, size: 32, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !1689, file: !1628, line: 131, baseType: !7, size: 32, offset: 224)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !1689, file: !1628, line: 133, baseType: !7, size: 32, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !1689, file: !1628, line: 134, baseType: !7, size: 32, offset: 288)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !1689, file: !1628, line: 135, baseType: !7, size: 32, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !1689, file: !1628, line: 136, baseType: !7, size: 32, offset: 352)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !1665, file: !1628, line: 139, baseType: !7, size: 32, offset: 1056)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !1665, file: !1628, line: 140, baseType: !7, size: 32, offset: 1088)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !1665, file: !1628, line: 141, baseType: !7, size: 32, offset: 1120)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !1665, file: !1628, line: 142, baseType: !7, size: 32, offset: 1152)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !1665, file: !1628, line: 143, baseType: !7, size: 32, offset: 1184)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !1665, file: !1628, line: 144, baseType: !7, size: 32, offset: 1216)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !1665, file: !1628, line: 145, baseType: !7, size: 32, offset: 1248)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !1665, file: !1628, line: 146, baseType: !7, size: 32, offset: 1280)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !1665, file: !1628, line: 147, baseType: !7, size: 32, offset: 1312)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !1629, file: !1628, line: 152, baseType: !7, size: 32, offset: 10368)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !1576, file: !1577, line: 431, baseType: !1714, size: 64, offset: 25600)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !1576, file: !1577, line: 432, baseType: !1716, size: 960, offset: 25664)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1717, size: 960, elements: !735)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !1628, line: 186, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1628, line: 156, size: 960, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !1718, file: !1628, line: 158, baseType: !7, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !1718, file: !1628, line: 159, baseType: !7, size: 32, offset: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !1718, file: !1628, line: 161, baseType: !7, size: 32, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !1718, file: !1628, line: 163, baseType: !7, size: 32, offset: 96)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !1718, file: !1628, line: 164, baseType: !7, size: 32, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !1718, file: !1628, line: 166, baseType: !7, size: 32, offset: 160)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !1718, file: !1628, line: 167, baseType: !7, size: 32, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !1718, file: !1628, line: 169, baseType: !7, size: 32, offset: 224)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !1718, file: !1628, line: 170, baseType: !7, size: 32, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !1718, file: !1628, line: 172, baseType: !7, size: 32, offset: 288)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !1718, file: !1628, line: 173, baseType: !7, size: 32, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !1718, file: !1628, line: 175, baseType: !7, size: 32, offset: 352)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !1718, file: !1628, line: 177, baseType: !7, size: 32, offset: 384)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !1718, file: !1628, line: 178, baseType: !7, size: 32, offset: 416)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !1718, file: !1628, line: 179, baseType: !7, size: 32, offset: 448)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !1718, file: !1628, line: 181, baseType: !7, size: 32, offset: 480)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !1718, file: !1628, line: 183, baseType: !7, size: 32, offset: 512)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !1718, file: !1628, line: 184, baseType: !1738, size: 384, offset: 576)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1739, size: 384, elements: !333)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !1576, file: !1577, line: 433, baseType: !1742, size: 64, offset: 26624)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !1576, file: !1577, line: 434, baseType: !7, size: 32, offset: 26688)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !1576, file: !1577, line: 437, baseType: !7, size: 32, offset: 26720)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !1576, file: !1577, line: 440, baseType: !1746, size: 256, offset: 26752)
!1746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1747, size: 256, elements: !256)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !1576, file: !1577, line: 441, baseType: !1750, size: 128, offset: 27008)
!1750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1751, size: 128, elements: !182)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !135)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !1576, file: !1577, line: 443, baseType: !1746, size: 256, offset: 27136)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !1576, file: !1577, line: 444, baseType: !1750, size: 128, offset: 27392)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !1576, file: !1577, line: 446, baseType: !1756, size: 256, offset: 27520)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1757, size: 256, elements: !256)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1759, size: 256, elements: !128)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !37, line: 25, baseType: !1760)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !14, line: 40, baseType: !1539)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !1576, file: !1577, line: 447, baseType: !1762, size: 128, offset: 27776)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1763, size: 128, elements: !182)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1759, size: 1024, elements: !135)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !1576, file: !1577, line: 448, baseType: !1756, size: 256, offset: 27904)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !1576, file: !1577, line: 449, baseType: !1762, size: 128, offset: 28160)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !1576, file: !1577, line: 454, baseType: !1768, size: 5888, offset: 28288)
!1768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1769, size: 5888, elements: !1770)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1770 = !{!1771}
!1771 = !DISubrange(count: 92)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !1576, file: !1577, line: 455, baseType: !1773, size: 23552, offset: 34176)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1769, size: 23552, elements: !1774)
!1774 = !{!1771, !257}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !1576, file: !1577, line: 457, baseType: !1739, size: 64, offset: 57728)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !1576, file: !1577, line: 460, baseType: !1777, size: 53376, offset: 57856)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !1577, line: 364, baseType: !1778)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1577, line: 302, size: 53376, elements: !1779)
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1808, !1835, !1836, !1837, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !1778, file: !1577, line: 304, baseType: !1714, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !1778, file: !1577, line: 305, baseType: !1742, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1778, file: !1577, line: 307, baseType: !7, size: 32, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !1778, file: !1577, line: 308, baseType: !7, size: 32, offset: 160)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !1778, file: !1577, line: 309, baseType: !7, size: 32, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !1778, file: !1577, line: 311, baseType: !7, size: 32, offset: 224)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !1778, file: !1577, line: 313, baseType: !7, size: 32, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !1778, file: !1577, line: 315, baseType: !7, size: 32, offset: 288)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !1778, file: !1577, line: 316, baseType: !7, size: 32, offset: 320)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !1778, file: !1577, line: 317, baseType: !7, size: 32, offset: 352)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !1778, file: !1577, line: 319, baseType: !7, size: 32, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !1778, file: !1577, line: 321, baseType: !7, size: 32, offset: 416)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !1778, file: !1577, line: 322, baseType: !7, size: 32, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !1778, file: !1577, line: 324, baseType: !181, size: 64, offset: 480)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !1778, file: !1577, line: 325, baseType: !7, size: 32, offset: 544)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !1778, file: !1577, line: 327, baseType: !7, size: 32, offset: 576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !1778, file: !1577, line: 329, baseType: !7, size: 32, offset: 608)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !1778, file: !1577, line: 330, baseType: !7, size: 32, offset: 640)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !1778, file: !1577, line: 331, baseType: !7, size: 32, offset: 672)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !1778, file: !1577, line: 333, baseType: !7, size: 32, offset: 704)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !1778, file: !1577, line: 334, baseType: !7, size: 32, offset: 736)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !1778, file: !1577, line: 339, baseType: !1802, size: 2048, offset: 768)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1803, size: 2048, elements: !1807)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1778, file: !1577, line: 335, size: 64, elements: !1804)
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !1803, file: !1577, line: 337, baseType: !7, size: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1803, file: !1577, line: 338, baseType: !7, size: 32, offset: 32)
!1807 = !{!183, !129}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1778, file: !1577, line: 342, baseType: !1809, size: 49152, align: 128, offset: 2816)
!1809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1810, size: 49152, align: 128, elements: !1833)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !1811, line: 36, baseType: !1812, align: 128)
!1811 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !1811, line: 26, size: 512, elements: !1813)
!1813 = !{!1814, !1819, !1820, !1823, !1824, !1825}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !1812, file: !1811, line: 30, baseType: !1815, size: 128, align: 128)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 128, elements: !286)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !12, line: 25, baseType: !1817)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !14, line: 39, baseType: !1818)
!1818 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !1812, file: !1811, line: 31, baseType: !1815, size: 128, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !1812, file: !1811, line: 32, baseType: !1821, size: 32, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 26, baseType: !1822)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !14, line: 41, baseType: !7)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !1812, file: !1811, line: 33, baseType: !1821, size: 32, offset: 288)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !1812, file: !1811, line: 34, baseType: !1821, size: 32, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !1812, file: !1811, line: 35, baseType: !1826, size: 64, offset: 384)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !1811, line: 25, baseType: !1828)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !260, !7, !260, !7, !1831, !7}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1812)
!1833 = !{!1834, !297}
!1834 = !DISubrange(count: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !1778, file: !1577, line: 344, baseType: !7, size: 32, offset: 51968)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !1778, file: !1577, line: 345, baseType: !7, size: 32, offset: 52000)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !1778, file: !1577, line: 350, baseType: !1838, size: 1024, offset: 52032)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1839, size: 1024, elements: !128)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1778, file: !1577, line: 346, size: 64, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !1839, file: !1577, line: 348, baseType: !7, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !1839, file: !1577, line: 349, baseType: !7, size: 32, offset: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !1778, file: !1577, line: 352, baseType: !7, size: 32, offset: 53056)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !1778, file: !1577, line: 354, baseType: !7, size: 32, offset: 53088)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !1778, file: !1577, line: 355, baseType: !7, size: 32, offset: 53120)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !1778, file: !1577, line: 356, baseType: !7, size: 32, offset: 53152)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !1778, file: !1577, line: 357, baseType: !7, size: 32, offset: 53184)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !1778, file: !1577, line: 360, baseType: !7, size: 32, offset: 53216)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !1778, file: !1577, line: 361, baseType: !7, size: 32, offset: 53248)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !1778, file: !1577, line: 362, baseType: !7, size: 32, offset: 53280)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !1576, file: !1577, line: 463, baseType: !1852, size: 4096, offset: 111232)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !1853, line: 46, baseType: !1854)
!1853 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1853, line: 27, size: 4096, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !1854, file: !1853, line: 30, baseType: !7, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !1854, file: !1853, line: 31, baseType: !7, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !1854, file: !1853, line: 34, baseType: !7, size: 32, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !1854, file: !1853, line: 35, baseType: !7, size: 32, offset: 96)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !1854, file: !1853, line: 37, baseType: !260, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1854, file: !1853, line: 38, baseType: !260, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !1854, file: !1853, line: 39, baseType: !260, size: 64, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !1854, file: !1853, line: 42, baseType: !7, size: 32, align: 128, offset: 384)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1854, file: !1853, line: 45, baseType: !1865, size: 3680, offset: 416)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 3680, elements: !1866)
!1866 = !{!1867}
!1867 = !DISubrange(count: 460)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !1576, file: !1577, line: 494, baseType: !1869, size: 2112, offset: 115328)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !1577, line: 465, size: 2112, elements: !1870)
!1870 = !{!1871, !1993, !1995, !1996, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2009, !2010, !2011, !2012}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1869, file: !1577, line: 468, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !1875, line: 146, baseType: !1876)
!1875 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !1875, line: 31, size: 125056, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1904, !1905, !1906, !1907, !1908, !1909, !1911, !1912, !1913, !1914, !1915, !1916, !1919, !1921, !1922, !1924, !1928, !1929, !1933, !1934, !1937, !1940, !1942, !1944, !1945, !1947, !1948, !1950, !1951, !1952, !1954, !1956, !1957, !1958, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1969, !1970, !1973, !1974, !1978, !1980, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !1876, file: !1875, line: 34, baseType: !7, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1876, file: !1875, line: 35, baseType: !7, size: 32, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !1876, file: !1875, line: 36, baseType: !7, size: 32, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !1876, file: !1875, line: 37, baseType: !11, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !1876, file: !1875, line: 38, baseType: !11, size: 64, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !1876, file: !1875, line: 39, baseType: !7, size: 32, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !1876, file: !1875, line: 40, baseType: !7, size: 32, offset: 288)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !1876, file: !1875, line: 41, baseType: !7, size: 32, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !1876, file: !1875, line: 42, baseType: !7, size: 32, offset: 352)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1876, file: !1875, line: 43, baseType: !78, size: 64, offset: 384)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !1876, file: !1875, line: 45, baseType: !7, size: 32, offset: 448)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !1876, file: !1875, line: 46, baseType: !7, size: 32, offset: 480)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !1876, file: !1875, line: 47, baseType: !7, size: 32, offset: 512)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !1876, file: !1875, line: 48, baseType: !7, size: 32, offset: 544)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !1876, file: !1875, line: 49, baseType: !7, size: 32, offset: 576)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !1876, file: !1875, line: 50, baseType: !7, size: 32, offset: 608)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !1876, file: !1875, line: 51, baseType: !7, size: 32, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !1876, file: !1875, line: 52, baseType: !125, size: 8, offset: 672)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !1876, file: !1875, line: 53, baseType: !125, size: 8, offset: 680)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !1876, file: !1875, line: 54, baseType: !125, size: 8, offset: 688)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !1876, file: !1875, line: 55, baseType: !177, size: 32, offset: 704)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !1876, file: !1875, line: 56, baseType: !177, size: 32, offset: 736)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !1876, file: !1875, line: 57, baseType: !7, size: 32, offset: 768)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !1876, file: !1875, line: 60, baseType: !7, size: 32, offset: 800)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !1876, file: !1875, line: 61, baseType: !1903, size: 96, offset: 832)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !296)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !1876, file: !1875, line: 62, baseType: !1903, size: 96, offset: 928)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !1876, file: !1875, line: 63, baseType: !1903, size: 96, offset: 1024)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !1876, file: !1875, line: 64, baseType: !7, size: 32, offset: 1120)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !1876, file: !1875, line: 65, baseType: !7, size: 32, offset: 1152)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !1876, file: !1875, line: 66, baseType: !7, size: 32, offset: 1184)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !1876, file: !1875, line: 67, baseType: !1910, size: 192, offset: 1216)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 192, elements: !296)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !1876, file: !1875, line: 68, baseType: !259, size: 256, offset: 1408)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !1876, file: !1875, line: 69, baseType: !259, size: 256, offset: 1664)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !1876, file: !1875, line: 70, baseType: !1769, size: 64, offset: 1920)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1876, file: !1875, line: 74, baseType: !259, size: 256, offset: 1984)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !1876, file: !1875, line: 75, baseType: !259, size: 256, offset: 2240)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1876, file: !1875, line: 77, baseType: !1917, size: 24576, align: 128, offset: 2560)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1810, size: 24576, align: 128, elements: !1918)
!1918 = !{!129, !297}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !1876, file: !1875, line: 78, baseType: !1920, size: 1024, offset: 27136)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 1024, elements: !128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !1876, file: !1875, line: 79, baseType: !7, size: 32, offset: 28160)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !1876, file: !1875, line: 80, baseType: !1923, size: 64, offset: 28224)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !1876, file: !1875, line: 83, baseType: !1925, size: 64, offset: 28288)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !12, line: 24, baseType: !1927)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !14, line: 37, baseType: !1541)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !1876, file: !1875, line: 84, baseType: !260, size: 64, offset: 28352)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1876, file: !1875, line: 85, baseType: !1930, size: 128, offset: 28416)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1931, size: 128, elements: !182)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 32, elements: !182)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !1876, file: !1875, line: 86, baseType: !1931, size: 64, offset: 28544)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !1876, file: !1875, line: 87, baseType: !1935, size: 2176, offset: 28608)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1931, size: 2176, elements: !1936)
!1936 = !{!183, !603}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !1876, file: !1875, line: 92, baseType: !1938, size: 20736, offset: 30784)
!1938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1769, size: 20736, elements: !1939)
!1939 = !{!487, !487}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !1876, file: !1875, line: 96, baseType: !1941, size: 2176, offset: 51520)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 2176, elements: !1936)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1876, file: !1875, line: 97, baseType: !1943, size: 128, offset: 53696)
!1943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1925, size: 128, elements: !182)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !1876, file: !1875, line: 98, baseType: !181, size: 64, offset: 53824)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !1876, file: !1875, line: 99, baseType: !1946, size: 1024, offset: 53888)
!1946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !1807)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !1876, file: !1875, line: 100, baseType: !1932, size: 32, offset: 54912)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !1876, file: !1875, line: 105, baseType: !1949, size: 10368, offset: 54944)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 10368, elements: !1939)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !1876, file: !1875, line: 106, baseType: !1949, size: 10368, offset: 65312)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !1876, file: !1875, line: 107, baseType: !7, size: 32, offset: 75680)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !1876, file: !1875, line: 108, baseType: !1953, size: 576, offset: 75712)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 576, elements: !486)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !1876, file: !1875, line: 109, baseType: !1955, size: 20736, offset: 76288)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 20736, elements: !1939)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !1876, file: !1875, line: 110, baseType: !723, size: 64, offset: 97024)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !1876, file: !1875, line: 111, baseType: !723, size: 64, offset: 97088)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !1876, file: !1875, line: 112, baseType: !1959, size: 64, offset: 97152)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !1876, file: !1875, line: 113, baseType: !1959, size: 64, offset: 97216)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !1876, file: !1875, line: 114, baseType: !1959, size: 64, offset: 97280)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !1876, file: !1875, line: 115, baseType: !7, size: 32, offset: 97344)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !1876, file: !1875, line: 116, baseType: !1769, size: 64, offset: 97408)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !1876, file: !1875, line: 117, baseType: !1769, size: 64, offset: 97472)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !1876, file: !1875, line: 118, baseType: !1769, size: 64, offset: 97536)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !1876, file: !1875, line: 119, baseType: !7, size: 32, offset: 97600)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !1876, file: !1875, line: 120, baseType: !1968, size: 576, offset: 97632)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 576, elements: !486)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !1876, file: !1875, line: 121, baseType: !36, size: 32, offset: 98208)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !1876, file: !1875, line: 122, baseType: !1971, size: 64, offset: 98240)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !37, line: 27, baseType: !1972)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !14, line: 45, baseType: !1559)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !1876, file: !1875, line: 125, baseType: !262, size: 256, offset: 98304)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !1876, file: !1875, line: 128, baseType: !1975, size: 2008, offset: 98560)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 2008, elements: !1976)
!1976 = !{!1977}
!1977 = !DISubrange(count: 251)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !1876, file: !1875, line: 129, baseType: !1979, size: 8032, offset: 100576)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8032, elements: !1976)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !1876, file: !1875, line: 130, baseType: !1981, size: 16064, offset: 108608)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 16064, elements: !1976)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !1876, file: !1875, line: 131, baseType: !7, size: 32, offset: 124672)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !1876, file: !1875, line: 132, baseType: !7, size: 32, offset: 124704)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !1876, file: !1875, line: 135, baseType: !7, size: 32, offset: 124736)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !1876, file: !1875, line: 136, baseType: !7, size: 32, offset: 124768)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !1876, file: !1875, line: 137, baseType: !7, size: 32, offset: 124800)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1876, file: !1875, line: 138, baseType: !7, size: 32, offset: 124832)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !1876, file: !1875, line: 139, baseType: !7, size: 32, offset: 124864)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !1876, file: !1875, line: 142, baseType: !177, size: 32, offset: 124896)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !1876, file: !1875, line: 143, baseType: !7, size: 32, offset: 124928)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !1876, file: !1875, line: 144, baseType: !7, size: 32, offset: 124960)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !1876, file: !1875, line: 145, baseType: !7, size: 32, offset: 124992)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1869, file: !1577, line: 470, baseType: !1994, size: 128, offset: 64)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 128, elements: !182)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !1869, file: !1577, line: 473, baseType: !1872, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1869, file: !1577, line: 476, baseType: !1997, size: 1152, offset: 256)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1873, size: 1152, elements: !486)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1869, file: !1577, line: 478, baseType: !7, size: 32, offset: 1408)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !1869, file: !1577, line: 480, baseType: !7, size: 32, offset: 1440)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !1869, file: !1577, line: 482, baseType: !7, size: 32, offset: 1472)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !1869, file: !1577, line: 483, baseType: !7, size: 32, offset: 1504)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !1869, file: !1577, line: 484, baseType: !7, size: 32, offset: 1536)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !1869, file: !1577, line: 485, baseType: !7, size: 32, offset: 1568)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !1869, file: !1577, line: 486, baseType: !7, size: 32, offset: 1600)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !1869, file: !1577, line: 487, baseType: !11, size: 64, offset: 1664)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !1869, file: !1577, line: 488, baseType: !11, size: 64, offset: 1728)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !1869, file: !1577, line: 489, baseType: !2008, size: 128, offset: 1792)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !182)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !1869, file: !1577, line: 490, baseType: !11, size: 64, offset: 1920)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !1869, file: !1577, line: 491, baseType: !11, size: 64, offset: 1984)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !1869, file: !1577, line: 492, baseType: !7, size: 32, offset: 2048)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !1869, file: !1577, line: 493, baseType: !7, size: 32, offset: 2080)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !1576, file: !1577, line: 497, baseType: !1873, size: 64, offset: 117440)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !1576, file: !1577, line: 500, baseType: !1873, size: 64, offset: 117504)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !1576, file: !1577, line: 503, baseType: !7, size: 32, offset: 117568)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !1576, file: !1577, line: 504, baseType: !2017, size: 1216, offset: 117632)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1873, size: 1216, elements: !2018)
!2018 = !{!2019}
!2019 = !DISubrange(count: 19)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !1576, file: !1577, line: 505, baseType: !7, size: 32, offset: 118848)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !1576, file: !1577, line: 506, baseType: !2017, size: 1216, offset: 118912)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !1576, file: !1577, line: 507, baseType: !181, size: 64, offset: 120128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !1576, file: !1577, line: 510, baseType: !7, size: 32, offset: 120192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !1576, file: !1577, line: 511, baseType: !7, size: 32, offset: 120224)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !1576, file: !1577, line: 512, baseType: !11, size: 64, offset: 120256)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !1576, file: !1577, line: 522, baseType: !2027, size: 10624, offset: 120320)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !1577, line: 515, size: 10624, elements: !2028)
!2028 = !{!2029, !2031, !2034, !2037}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !2027, file: !1577, line: 517, baseType: !2030, size: 256, align: 128)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 256, elements: !128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !2027, file: !1577, line: 518, baseType: !2032, size: 128, align: 128, offset: 256)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 128, elements: !2033)
!2033 = !{!183, !257}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !2027, file: !1577, line: 520, baseType: !2035, size: 4096, align: 128, offset: 384)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 4096, elements: !2036)
!2036 = !{!257, !136}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !2027, file: !1577, line: 521, baseType: !2038, size: 6144, align: 128, offset: 4480)
!2038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 6144, elements: !2039)
!2039 = !{!1473, !129}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !1576, file: !1577, line: 732, baseType: !2041, size: 82688, offset: 130944)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !1577, line: 525, size: 82688, elements: !2042)
!2042 = !{!2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2070, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2088, !2091, !2093, !2094, !2095, !2100, !2101, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2167, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2207, !2208, !2209, !2212, !2215, !2217, !2220, !2222, !2223}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !2041, file: !1577, line: 527, baseType: !7, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !2041, file: !1577, line: 530, baseType: !7, size: 32, offset: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !2041, file: !1577, line: 531, baseType: !7, size: 32, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !2041, file: !1577, line: 532, baseType: !7, size: 32, offset: 96)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !2041, file: !1577, line: 535, baseType: !7, size: 32, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !2041, file: !1577, line: 536, baseType: !7, size: 32, offset: 160)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !2041, file: !1577, line: 537, baseType: !7, size: 32, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !2041, file: !1577, line: 538, baseType: !7, size: 32, offset: 224)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !2041, file: !1577, line: 539, baseType: !7, size: 32, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !2041, file: !1577, line: 542, baseType: !7, size: 32, offset: 288)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !2041, file: !1577, line: 543, baseType: !7, size: 32, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !2041, file: !1577, line: 544, baseType: !7, size: 32, offset: 352)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !2041, file: !1577, line: 545, baseType: !7, size: 32, offset: 384)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !2041, file: !1577, line: 546, baseType: !7, size: 32, offset: 416)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !2041, file: !1577, line: 547, baseType: !7, size: 32, offset: 448)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !2041, file: !1577, line: 548, baseType: !7, size: 32, offset: 480)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !2041, file: !1577, line: 549, baseType: !7, size: 32, offset: 512)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !2041, file: !1577, line: 551, baseType: !7, size: 32, offset: 544)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !2041, file: !1577, line: 554, baseType: !181, size: 64, offset: 576)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !2041, file: !1577, line: 555, baseType: !181, size: 64, offset: 640)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !2041, file: !1577, line: 558, baseType: !181, size: 64, offset: 704)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !2041, file: !1577, line: 559, baseType: !181, size: 64, offset: 768)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !2041, file: !1577, line: 561, baseType: !181, size: 64, offset: 832)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !2041, file: !1577, line: 562, baseType: !181, size: 64, offset: 896)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !2041, file: !1577, line: 565, baseType: !39, size: 32, offset: 960)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !2041, file: !1577, line: 566, baseType: !2069, size: 128, offset: 992)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !256)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !2041, file: !1577, line: 567, baseType: !2071, size: 512, offset: 1120)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, elements: !128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !2041, file: !1577, line: 568, baseType: !39, size: 32, offset: 1632)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !2041, file: !1577, line: 569, baseType: !39, size: 32, offset: 1664)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !2041, file: !1577, line: 570, baseType: !7, size: 32, offset: 1696)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !2041, file: !1577, line: 571, baseType: !7, size: 32, offset: 1728)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !2041, file: !1577, line: 572, baseType: !7, size: 32, offset: 1760)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !2041, file: !1577, line: 573, baseType: !7, size: 32, offset: 1792)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !2041, file: !1577, line: 574, baseType: !7, size: 32, offset: 1824)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !2041, file: !1577, line: 575, baseType: !7, size: 32, offset: 1856)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !2041, file: !1577, line: 576, baseType: !7, size: 32, offset: 1888)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !2041, file: !1577, line: 577, baseType: !7, size: 32, offset: 1920)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !2041, file: !1577, line: 578, baseType: !7, size: 32, offset: 1952)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2041, file: !1577, line: 585, baseType: !1925, size: 64, offset: 1984)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !2041, file: !1577, line: 586, baseType: !260, size: 64, offset: 2048)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !2041, file: !1577, line: 587, baseType: !1925, size: 64, offset: 2112)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !2041, file: !1577, line: 588, baseType: !2087, size: 64, offset: 2176)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !2041, file: !1577, line: 589, baseType: !2089, size: 64, offset: 2240)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1926, size: 64, elements: !286)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !2041, file: !1577, line: 591, baseType: !2092, size: 64, offset: 2304)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !2041, file: !1577, line: 592, baseType: !1925, size: 64, offset: 2368)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !2041, file: !1577, line: 593, baseType: !1930, size: 128, offset: 2432)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !2041, file: !1577, line: 594, baseType: !2096, size: 128, offset: 2560)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2097, size: 128, elements: !182)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, elements: !2099)
!2099 = !{!287, !183}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2041, file: !1577, line: 595, baseType: !1943, size: 128, offset: 2688)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !2041, file: !1577, line: 596, baseType: !2102, size: 4096, offset: 2816)
!2102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1931, size: 4096, elements: !2103)
!2103 = !{!183, !1834}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !2041, file: !1577, line: 597, baseType: !1925, size: 64, offset: 6912)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !2041, file: !1577, line: 598, baseType: !1925, size: 64, offset: 6976)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !2041, file: !1577, line: 599, baseType: !1769, size: 64, offset: 7040)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !2041, file: !1577, line: 603, baseType: !1920, size: 1024, offset: 7104)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !2041, file: !1577, line: 606, baseType: !7, size: 32, offset: 8128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !2041, file: !1577, line: 607, baseType: !7, size: 32, offset: 8160)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !2041, file: !1577, line: 608, baseType: !2111, size: 32, align: 32, offset: 8192)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 32, elements: !256)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !2041, file: !1577, line: 609, baseType: !7, size: 32, offset: 8224)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !2041, file: !1577, line: 611, baseType: !7, size: 32, offset: 8256)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !2041, file: !1577, line: 612, baseType: !7, size: 32, offset: 8288)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !2041, file: !1577, line: 614, baseType: !7, size: 32, offset: 8320)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !2041, file: !1577, line: 615, baseType: !7, size: 32, offset: 8352)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !2041, file: !1577, line: 621, baseType: !7, size: 32, offset: 8384)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !2041, file: !1577, line: 624, baseType: !7, size: 32, offset: 8416)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !2041, file: !1577, line: 626, baseType: !7, size: 32, offset: 8448)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !2041, file: !1577, line: 627, baseType: !7, size: 32, offset: 8480)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !2041, file: !1577, line: 671, baseType: !2122, size: 60672, offset: 8576)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2041, file: !1577, line: 629, size: 60672, elements: !2123)
!2123 = !{!2124, !2128, !2132, !2134, !2135, !2138, !2141, !2143, !2144, !2145, !2146, !2147, !2150, !2152, !2155, !2156, !2157, !2158, !2159, !2162, !2164, !2166}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !2122, file: !1577, line: 634, baseType: !2125, size: 3072, align: 128)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 3072, elements: !2126)
!2126 = !{!2127}
!2127 = !DISubrange(count: 384)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !2122, file: !1577, line: 635, baseType: !2129, size: 6912, align: 128, offset: 3072)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 6912, elements: !2130)
!2130 = !{!2131}
!2131 = !DISubrange(count: 864)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !2122, file: !1577, line: 638, baseType: !2133, size: 2048, align: 128, offset: 9984)
!2133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 2048, elements: !1646)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !2122, file: !1577, line: 639, baseType: !2133, size: 2048, align: 128, offset: 12032)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !2122, file: !1577, line: 640, baseType: !2136, size: 3072, align: 128, offset: 14080)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 3072, elements: !2137)
!2137 = !{!297, !136}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !2122, file: !1577, line: 641, baseType: !2139, size: 3840, align: 128, offset: 17152)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 3840, elements: !2140)
!2140 = !{!432, !129}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !2122, file: !1577, line: 642, baseType: !2142, size: 128, offset: 20992)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 128, elements: !256)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !2122, file: !1577, line: 643, baseType: !2142, size: 128, offset: 21120)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !2122, file: !1577, line: 644, baseType: !7, size: 32, offset: 21248)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !2122, file: !1577, line: 645, baseType: !7, size: 32, offset: 21280)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !2122, file: !1577, line: 648, baseType: !2035, size: 4096, align: 128, offset: 21376)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !2122, file: !1577, line: 649, baseType: !2148, size: 4096, align: 128, offset: 25472)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 4096, elements: !2149)
!2149 = !{!129, !129}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !2122, file: !1577, line: 652, baseType: !2151, size: 576, align: 128, offset: 29568)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1971, size: 576, elements: !414)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !2122, file: !1577, line: 653, baseType: !2153, size: 1024, align: 128, offset: 30208)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1024, elements: !2154)
!2154 = !{!1834}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !2122, file: !1577, line: 656, baseType: !1910, size: 192, offset: 31232)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !2122, file: !1577, line: 658, baseType: !1910, size: 192, offset: 31424)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !2122, file: !1577, line: 661, baseType: !1910, size: 192, offset: 31616)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !2122, file: !1577, line: 664, baseType: !181, size: 64, offset: 31808)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !2122, file: !1577, line: 665, baseType: !2160, size: 24576, offset: 31872)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 24576, elements: !2161)
!2161 = !{!183, !1834, !334}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !2122, file: !1577, line: 666, baseType: !2163, size: 2048, offset: 56448)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2048, elements: !2154)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !2122, file: !1577, line: 667, baseType: !2165, size: 2048, offset: 58496)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1769, size: 2048, elements: !1807)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !2122, file: !1577, line: 670, baseType: !1903, size: 96, offset: 60544)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2041, file: !1577, line: 704, baseType: !2168, size: 6144, offset: 69248)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2041, file: !1577, line: 674, size: 6144, elements: !2169)
!2169 = !{!2170, !2172, !2176, !2179, !2182, !2184, !2185, !2188, !2190, !2191, !2192, !2193, !2194, !2195}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !2168, file: !1577, line: 677, baseType: !2171, size: 320, align: 64)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1926, size: 320, elements: !1424)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !2168, file: !1577, line: 680, baseType: !2173, size: 384, align: 128, offset: 384)
!2173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 384, elements: !2174)
!2174 = !{!2175}
!2175 = !DISubrange(count: 48)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2168, file: !1577, line: 683, baseType: !2177, size: 640, align: 32, offset: 768)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1926, size: 640, elements: !2178)
!2178 = !{!183, !1425}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !2168, file: !1577, line: 686, baseType: !2180, size: 2560, align: 128, offset: 1408)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 2560, elements: !2181)
!2181 = !{!183, !1425, !183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !2168, file: !1577, line: 687, baseType: !2183, size: 1280, align: 64, offset: 3968)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 1280, elements: !2181)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !2168, file: !1577, line: 690, baseType: !2171, size: 320, align: 32, offset: 5248)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !2168, file: !1577, line: 692, baseType: !2186, size: 256, align: 32, offset: 5568)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 256, elements: !2187)
!2187 = !{!183, !257, !183}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !2168, file: !1577, line: 693, baseType: !2189, size: 64, align: 32, offset: 5824)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1926, size: 64, elements: !2033)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !2168, file: !1577, line: 694, baseType: !7, size: 32, offset: 5888)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !2168, file: !1577, line: 695, baseType: !1932, size: 32, align: 32, offset: 5920)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !2168, file: !1577, line: 698, baseType: !7, size: 32, offset: 5952)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !2168, file: !1577, line: 699, baseType: !7, size: 32, offset: 5984)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !2168, file: !1577, line: 702, baseType: !7, size: 32, offset: 6016)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !2168, file: !1577, line: 703, baseType: !7, size: 32, offset: 6048)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !2041, file: !1577, line: 707, baseType: !7, size: 32, offset: 75392)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !2041, file: !1577, line: 708, baseType: !7, size: 32, offset: 75424)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !2041, file: !1577, line: 709, baseType: !7, size: 32, offset: 75456)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !2041, file: !1577, line: 710, baseType: !7, size: 32, offset: 75488)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !2041, file: !1577, line: 711, baseType: !7, size: 32, offset: 75520)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !2041, file: !1577, line: 712, baseType: !7, size: 32, offset: 75552)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !2041, file: !1577, line: 713, baseType: !7, size: 32, offset: 75584)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !2041, file: !1577, line: 714, baseType: !7, size: 32, offset: 75616)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !2041, file: !1577, line: 717, baseType: !2205, size: 128, offset: 75648)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !2206)
!2206 = !{!183, !183}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !2041, file: !1577, line: 718, baseType: !7, size: 32, offset: 75776)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !2041, file: !1577, line: 719, baseType: !7, size: 32, offset: 75808)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !2041, file: !1577, line: 722, baseType: !2210, size: 4096, offset: 75840)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 4096, elements: !2211)
!2211 = !{!183, !1834, !257}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !2041, file: !1577, line: 723, baseType: !2213, size: 64, offset: 79936)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 64, elements: !256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !2041, file: !1577, line: 724, baseType: !2216, size: 2048, offset: 80000)
!2216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1926, size: 2048, elements: !2211)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !2041, file: !1577, line: 725, baseType: !2218, size: 64, offset: 82048)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1926, size: 32, elements: !256)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !2041, file: !1577, line: 728, baseType: !2221, size: 144, offset: 82112)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1926, size: 144, elements: !486)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !2041, file: !1577, line: 729, baseType: !7, size: 32, offset: 82272)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !2041, file: !1577, line: 730, baseType: !2224, size: 272, offset: 82304)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1926, size: 272, elements: !2225)
!2225 = !{!2226}
!2226 = !DISubrange(count: 34)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !1576, file: !1577, line: 735, baseType: !2228, size: 64, offset: 213632)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !1577, line: 379, baseType: !2230)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !1577, line: 379, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1576, file: !1577, line: 793, baseType: !2232, size: 29504, offset: 213696)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !1577, line: 738, size: 29504, elements: !2233)
!2233 = !{!2234, !2259, !2261, !2263, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2275, !2277, !2278, !2281, !2283, !2285, !2286, !2287}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !2232, file: !1577, line: 764, baseType: !2235, size: 5632)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2232, file: !1577, line: 741, size: 5632, elements: !2236)
!2236 = !{!2237, !2238, !2239, !2240, !2242, !2243, !2244, !2245, !2246, !2248, !2250, !2252, !2255, !2256, !2258}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !2235, file: !1577, line: 744, baseType: !7, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !2235, file: !1577, line: 746, baseType: !7, size: 32, offset: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !2235, file: !1577, line: 748, baseType: !7, size: 32, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !2235, file: !1577, line: 750, baseType: !2241, size: 608, offset: 96)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 608, elements: !2018)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !2235, file: !1577, line: 751, baseType: !7, size: 32, offset: 704)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !2235, file: !1577, line: 752, baseType: !7, size: 32, offset: 736)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !2235, file: !1577, line: 753, baseType: !7, size: 32, offset: 768)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !2235, file: !1577, line: 754, baseType: !181, size: 64, offset: 800)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !2235, file: !1577, line: 755, baseType: !2247, size: 2048, offset: 864)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !2103)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !2235, file: !1577, line: 756, baseType: !2249, size: 544, offset: 2912)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 544, elements: !602)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !2235, file: !1577, line: 757, baseType: !2251, size: 192, offset: 3456)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !333)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !2235, file: !1577, line: 758, baseType: !2253, size: 1664, offset: 3648)
!2253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1664, elements: !2254)
!2254 = !{!257, !292}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !2235, file: !1577, line: 760, baseType: !181, size: 64, offset: 5312)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !2235, file: !1577, line: 762, baseType: !2257, size: 192, offset: 5376)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !296)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !2235, file: !1577, line: 763, baseType: !5, size: 64, offset: 5568)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !2232, file: !1577, line: 769, baseType: !2260, size: 160, offset: 5632)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !2232, file: !1577, line: 770, baseType: !2262, size: 320, offset: 5824)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !384)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !2232, file: !1577, line: 771, baseType: !2264, size: 320, offset: 6144)
!2264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 320, elements: !384)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !2232, file: !1577, line: 772, baseType: !2249, size: 544, offset: 6464)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !2232, file: !1577, line: 774, baseType: !2262, size: 320, offset: 7040)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !2232, file: !1577, line: 775, baseType: !2264, size: 320, offset: 7360)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !2232, file: !1577, line: 776, baseType: !2264, size: 320, offset: 7680)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !2232, file: !1577, line: 777, baseType: !2264, size: 320, offset: 8000)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !2232, file: !1577, line: 778, baseType: !2264, size: 320, offset: 8320)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !2232, file: !1577, line: 779, baseType: !2264, size: 320, offset: 8640)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !2232, file: !1577, line: 781, baseType: !2273, size: 6080, offset: 8960)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 6080, elements: !2274)
!2274 = !{!385, !2019}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !2232, file: !1577, line: 782, baseType: !2276, size: 2176, offset: 15040)
!2276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2176, elements: !1936)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !2232, file: !1577, line: 783, baseType: !2008, size: 128, offset: 17216)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !2232, file: !1577, line: 784, baseType: !2279, size: 8192, offset: 17344)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, elements: !2280)
!2280 = !{!183, !183, !1834}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !2232, file: !1577, line: 785, baseType: !2282, size: 384, offset: 25536)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 384, elements: !333)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !2232, file: !1577, line: 786, baseType: !2284, size: 3328, offset: 25920)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 3328, elements: !2254)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !2232, file: !1577, line: 788, baseType: !181, size: 64, offset: 29248)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !2232, file: !1577, line: 789, baseType: !181, size: 64, offset: 29312)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !2232, file: !1577, line: 791, baseType: !1903, size: 96, offset: 29376)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !1576, file: !1577, line: 795, baseType: !2289, size: 4096, align: 128, offset: 243200)
!2289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 4096, elements: !2290)
!2290 = !{!183, !136}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !1576, file: !1577, line: 796, baseType: !2292, size: 2048, align: 128, offset: 247296)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1759, size: 2048, elements: !2290)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !1576, file: !1577, line: 797, baseType: !2294, size: 64, offset: 249344)
!2294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 64, elements: !182)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !1576, file: !1577, line: 800, baseType: !6, size: 64, offset: 249408)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !1576, file: !1577, line: 801, baseType: !2297, size: 384, offset: 249472)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 384, elements: !2298)
!2298 = !{!183, !297}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1576, file: !1577, line: 802, baseType: !2300, size: 128, offset: 249856)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2301, size: 128, elements: !182)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !2303)
!2303 = !{!183, !257, !257}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !1576, file: !1577, line: 805, baseType: !2305, size: 448, offset: 249984)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2306, size: 448, elements: !338)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !2307, line: 27, baseType: !2308)
!2307 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !260}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !1576, file: !1577, line: 806, baseType: !2305, size: 448, offset: 250432)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !1576, file: !1577, line: 807, baseType: !2313, size: 768, offset: 250880)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2314, size: 768, elements: !465)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !2307, line: 28, baseType: !2315)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{null, !260, !260}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !1576, file: !1577, line: 808, baseType: !2319, size: 768, offset: 251648)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2306, size: 768, elements: !465)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !1576, file: !1577, line: 809, baseType: !2321, size: 64, offset: 252416)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !2307, line: 29, baseType: !2322)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{null, !260, !260, !7, !7}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !1576, file: !1577, line: 811, baseType: !2326, size: 8448, offset: 252480)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !2327, line: 110, baseType: !2328)
!2327 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2327, line: 63, size: 8448, elements: !2329)
!2329 = !{!2330, !2336, !2337, !2338, !2339, !2341, !2342, !2343, !2344, !2350, !2356, !2357, !2361, !2366, !2367, !2372, !2376, !2377, !2378, !2379, !2380, !2385, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !2328, file: !2327, line: 65, baseType: !2331, size: 448)
!2331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2332, size: 448, elements: !338)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !2327, line: 26, baseType: !2333)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!7, !260, !7, !260, !7}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !2328, file: !2327, line: 66, baseType: !2331, size: 448, offset: 448)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !2328, file: !2327, line: 67, baseType: !2331, size: 448, offset: 896)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !2328, file: !2327, line: 68, baseType: !2331, size: 448, offset: 1344)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !2328, file: !2327, line: 69, baseType: !2340, size: 256, offset: 1792)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2332, size: 256, elements: !256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !2328, file: !2327, line: 70, baseType: !2331, size: 448, offset: 2048)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !2328, file: !2327, line: 71, baseType: !2331, size: 448, offset: 2496)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !2328, file: !2327, line: 72, baseType: !2331, size: 448, offset: 2944)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !2328, file: !2327, line: 73, baseType: !2345, size: 448, offset: 3392)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2346, size: 448, elements: !338)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !2327, line: 27, baseType: !2347)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{null, !260, !260, !260, !260, !7, !723}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !2328, file: !2327, line: 74, baseType: !2351, size: 448, offset: 3840)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2352, size: 448, elements: !338)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !2327, line: 28, baseType: !2353)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{null, !260, !260, !260, !260, !260, !7, !723}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !2328, file: !2327, line: 75, baseType: !2331, size: 448, offset: 4288)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !2328, file: !2327, line: 76, baseType: !2358, size: 64, offset: 4736)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!7, !260, !7, !260, !7, !723}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !2328, file: !2327, line: 78, baseType: !2362, size: 256, offset: 4800)
!2362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2363, size: 256, elements: !256)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!1971, !260, !7}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !2328, file: !2327, line: 79, baseType: !2362, size: 256, offset: 5056)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !2328, file: !2327, line: 81, baseType: !2368, size: 64, offset: 5312)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{null, !1739, !7, !1739, !7, !2371}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !2328, file: !2327, line: 83, baseType: !2373, size: 64, offset: 5376)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!177, !2371, !2371, !7}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !2328, file: !2327, line: 86, baseType: !2345, size: 448, offset: 5440)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !2328, file: !2327, line: 87, baseType: !2351, size: 448, offset: 5888)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !2328, file: !2327, line: 88, baseType: !2345, size: 448, offset: 6336)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !2328, file: !2327, line: 89, baseType: !2351, size: 448, offset: 6784)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !2328, file: !2327, line: 93, baseType: !2381, size: 448, offset: 7232)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2382, size: 448, elements: !338)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!7, !723, !1769, !7, !1769, !2087, !7, !7}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !2328, file: !2327, line: 98, baseType: !2386, size: 64, offset: 7680)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !260, !260, !723}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !2328, file: !2327, line: 99, baseType: !2386, size: 64, offset: 7744)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !2328, file: !2327, line: 100, baseType: !2386, size: 64, offset: 7808)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !2328, file: !2327, line: 101, baseType: !2386, size: 64, offset: 7872)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !2328, file: !2327, line: 102, baseType: !2386, size: 64, offset: 7936)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !2328, file: !2327, line: 103, baseType: !2386, size: 64, offset: 8000)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !2328, file: !2327, line: 104, baseType: !2386, size: 64, offset: 8064)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !2328, file: !2327, line: 105, baseType: !2386, size: 64, offset: 8128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !2328, file: !2327, line: 106, baseType: !2386, size: 64, offset: 8192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !2328, file: !2327, line: 107, baseType: !2386, size: 64, offset: 8256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !2328, file: !2327, line: 108, baseType: !2386, size: 64, offset: 8320)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !2328, file: !2327, line: 109, baseType: !2386, size: 64, offset: 8384)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !1576, file: !1577, line: 812, baseType: !2401, size: 2368, offset: 260928)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !1811, line: 111, baseType: !2402)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1811, line: 58, size: 2368, elements: !2403)
!2403 = !{!2404, !2411, !2415, !2419, !2424, !2429, !2430, !2434, !2438, !2439, !2443, !2449, !2453, !2457, !2458, !2462, !2466, !2470, !2471, !2472, !2473, !2478}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !2402, file: !1811, line: 60, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !260, !7, !2408, !7, !7, !7, !7, !7, !2409}
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !2402, file: !1811, line: 65, baseType: !2412, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!260, !260, !723, !2408, !7, !7, !7, !7, !7, !2409}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !2402, file: !1811, line: 71, baseType: !2416, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !260, !7, !260, !7, !7, !7, !7, !7}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2402, file: !1811, line: 75, baseType: !2420, size: 640, offset: 192)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2421, size: 640, elements: !449)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{null, !260, !7, !260, !7, !260, !7, !7}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !2402, file: !1811, line: 78, baseType: !2425, size: 448, offset: 832)
!2425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2426, size: 448, elements: !338)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{null, !260, !7, !260, !7, !7}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !2402, file: !1811, line: 79, baseType: !2426, size: 64, offset: 1280)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !2402, file: !1811, line: 81, baseType: !2431, size: 64, offset: 1344)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{null, !260, !7, !260, !7, !7, !7}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !2402, file: !1811, line: 84, baseType: !2435, size: 64, offset: 1408)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !260, !260, !260, !260, !7, !7, !7, !2087}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !2402, file: !1811, line: 88, baseType: !2426, size: 64, offset: 1472)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !2402, file: !1811, line: 91, baseType: !2440, size: 64, offset: 1536)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !260, !7, !7}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !2402, file: !1811, line: 93, baseType: !2444, size: 64, offset: 1600)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!6, !6, !2447, !1557}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !2402, file: !1811, line: 94, baseType: !2450, size: 64, offset: 1664)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !6, !7}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !2402, file: !1811, line: 97, baseType: !2454, size: 64, offset: 1728)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null, !1769, !260, !7}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !2402, file: !1811, line: 98, baseType: !2454, size: 64, offset: 1792)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !2402, file: !1811, line: 99, baseType: !2459, size: 64, offset: 1856)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{null, !1769, !1769, !7}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !2402, file: !1811, line: 100, baseType: !2463, size: 64, offset: 1920)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{null, !1769, !7}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !2402, file: !1811, line: 102, baseType: !2467, size: 64, offset: 1984)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !260, !260, !260, !260, !260, !7, !7, !7, !7}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2402, file: !1811, line: 104, baseType: !1826, size: 64, offset: 2048)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !2402, file: !1811, line: 105, baseType: !1826, size: 64, offset: 2112)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !2402, file: !1811, line: 106, baseType: !1826, size: 64, offset: 2176)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !2402, file: !1811, line: 107, baseType: !2474, size: 64, offset: 2240)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !1574, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !2402, file: !1811, line: 109, baseType: !2479, size: 64, offset: 2304)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !723, !1769, !1769, !1769, !1769, !7}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !1576, file: !1577, line: 813, baseType: !2483, size: 960, offset: 263296)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !2484, line: 115, baseType: !2485)
!2484 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2484, line: 89, size: 960, elements: !2486)
!2486 = !{!2487, !2491, !2495, !2500, !2501, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2517, !2521, !2525}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !2485, file: !2484, line: 94, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !2087, !260, !260}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !2485, file: !2484, line: 95, baseType: !2492, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{null, !260, !2087}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !2485, file: !2484, line: 97, baseType: !2496, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !2499, !260, !260}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !2485, file: !2484, line: 98, baseType: !2488, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !2485, file: !2484, line: 99, baseType: !2502, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{null, !260, !2499}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !2485, file: !2484, line: 100, baseType: !2492, size: 64, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !2485, file: !2484, line: 102, baseType: !2496, size: 64, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !2485, file: !2484, line: 103, baseType: !2502, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !2485, file: !2484, line: 104, baseType: !2492, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !2485, file: !2484, line: 106, baseType: !2488, size: 64, offset: 576)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !2485, file: !2484, line: 107, baseType: !2492, size: 64, offset: 640)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !2485, file: !2484, line: 109, baseType: !2512, size: 64, offset: 704)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{null, !2515, !260, !260}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 1024, elements: !135)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !2485, file: !2484, line: 110, baseType: !2518, size: 64, offset: 768)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{null, !260, !2515}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !2485, file: !2484, line: 112, baseType: !2522, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !2087}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !2485, file: !2484, line: 113, baseType: !2522, size: 64, offset: 896)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !1576, file: !1577, line: 814, baseType: !2527, size: 384, offset: 264256)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !2484, line: 126, baseType: !2528)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2484, line: 117, size: 384, elements: !2529)
!2529 = !{!2530, !2534, !2535, !2539, !2540, !2544}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !2528, file: !2484, line: 119, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{null, !2087, !2087}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !2528, file: !2484, line: 120, baseType: !2531, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !2528, file: !2484, line: 121, baseType: !2536, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!7, !2087, !1739, !260}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !2528, file: !2484, line: 122, baseType: !2536, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !2528, file: !2484, line: 123, baseType: !2541, size: 64, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!7, !2087, !1739, !260, !2087}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !2528, file: !2484, line: 124, baseType: !2545, size: 64, offset: 320)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !2087, !2087, !260}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !1576, file: !1577, line: 815, baseType: !2549, size: 1408, offset: 264640)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !2550, line: 44, baseType: !2551)
!2550 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2550, line: 26, size: 1408, elements: !2552)
!2552 = !{!2553, !2557, !2558, !2562, !2563, !2567, !2571, !2572, !2577, !2581, !2582, !2583, !2585}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !2551, file: !2550, line: 28, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!7, !2087, !1769, !1769}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !2551, file: !2550, line: 29, baseType: !2554, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !2551, file: !2550, line: 30, baseType: !2559, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!7, !2087, !7, !7}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !2551, file: !2550, line: 31, baseType: !2559, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !2551, file: !2550, line: 33, baseType: !2564, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !2087, !1751, !7}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !2551, file: !2550, line: 34, baseType: !2568, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !2087, !1747, !7}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !2551, file: !2550, line: 35, baseType: !2568, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !2551, file: !2550, line: 37, baseType: !2573, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{null, !2087, !2576, !1769, !7}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !2551, file: !2550, line: 39, baseType: !2578, size: 64, offset: 512)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!7, !2087}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !2551, file: !2550, line: 40, baseType: !2578, size: 64, offset: 576)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !2551, file: !2550, line: 41, baseType: !2578, size: 64, offset: 640)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !2551, file: !2550, line: 42, baseType: !2584, size: 384, offset: 704)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2578, size: 384, elements: !333)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !2551, file: !2550, line: 43, baseType: !2586, size: 320, offset: 1088)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2587, size: 320, elements: !384)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!7, !2087, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !1599, line: 63, baseType: !2592)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1599, line: 58, size: 416, elements: !2593)
!2593 = !{!2594, !2595, !2596}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !2592, file: !1599, line: 60, baseType: !7, size: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2592, file: !1599, line: 61, baseType: !2030, size: 256, offset: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !2592, file: !1599, line: 62, baseType: !124, size: 128, offset: 288)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !1576, file: !1577, line: 816, baseType: !2598, size: 576, offset: 266048)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !1875, line: 170, baseType: !2599)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1875, line: 161, size: 576, elements: !2600)
!2600 = !{!2601, !2607, !2608, !2614, !2615}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !2599, file: !1875, line: 163, baseType: !2602, size: 128)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2603, size: 128, elements: !182)
!2603 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !1875, line: 159, baseType: !2604)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{null, !260, !7, !7, !7, !1925}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !2599, file: !1875, line: 164, baseType: !2602, size: 128, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !2599, file: !1875, line: 165, baseType: !2609, size: 128, offset: 256)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2610, size: 128, elements: !182)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !1875, line: 160, baseType: !2611)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{null, !260, !7, !7, !7}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !2599, file: !1875, line: 166, baseType: !2609, size: 128, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !2599, file: !1875, line: 167, baseType: !2616, size: 64, offset: 512)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{null, !260, !2619, !2620, !2623, !7, !7}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 1280, elements: !2622)
!2622 = !{!1425, !183}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, elements: !2625)
!2625 = !{!257, !257}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1576, file: !1577, line: 821, baseType: !2627, size: 64, offset: 266624)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !1577, line: 377, baseType: !2629)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !1577, line: 366, size: 960, elements: !2630)
!2630 = !{!2631, !2633, !2634, !2635, !2636, !2637, !2638, !2648, !2649}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !2629, file: !1577, line: 368, baseType: !2632, size: 8)
!2632 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !125)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !2629, file: !1577, line: 369, baseType: !125, size: 8, offset: 8)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !2629, file: !1577, line: 370, baseType: !125, size: 8, offset: 16)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !2629, file: !1577, line: 371, baseType: !7, size: 32, offset: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !2629, file: !1577, line: 372, baseType: !7, size: 32, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !2629, file: !1577, line: 373, baseType: !1873, size: 64, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !2629, file: !1577, line: 374, baseType: !2639, size: 256, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !1875, line: 157, baseType: !2640)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1875, line: 149, size: 256, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2645, !2646, !2647}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2640, file: !1875, line: 151, baseType: !1872, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !2640, file: !1875, line: 152, baseType: !7, size: 32, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !2640, file: !1875, line: 153, baseType: !7, size: 32, offset: 96)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2640, file: !1875, line: 154, baseType: !7, size: 32, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !2640, file: !1875, line: 155, baseType: !7, size: 32, offset: 160)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !2640, file: !1875, line: 156, baseType: !7, size: 32, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2629, file: !1577, line: 375, baseType: !2639, size: 256, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !2629, file: !1577, line: 376, baseType: !2639, size: 256, offset: 704)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!2651 = !{!2652, !2653, !2654, !2655, !1570, !2656, !2657, !2658}
!2652 = !DILocalVariable(name: "h", arg: 1, scope: !1571, file: !3, line: 1339, type: !1574)
!2653 = !DILocalVariable(name: "hout", arg: 2, scope: !1571, file: !3, line: 1339, type: !28)
!2654 = !DILocalVariable(name: "pic", arg: 3, scope: !1571, file: !3, line: 1339, type: !66)
!2655 = !DILocalVariable(name: "last_dts", arg: 4, scope: !1571, file: !3, line: 1339, type: !2650)
!2656 = !DILocalVariable(name: "nal", scope: !1571, file: !3, line: 1342, type: !1391)
!2657 = !DILocalVariable(name: "i_nal", scope: !1571, file: !3, line: 1343, type: !7)
!2658 = !DILocalVariable(name: "i_frame_size", scope: !1571, file: !3, line: 1344, type: !7)
!2659 = !DILocation(line: 0, scope: !1571, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 1566, column: 24, scope: !2661, inlinedAt: !2703)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1564, column: 5)
!2662 = distinct !DISubprogram(name: "Encode", scope: !3, file: !3, line: 1391, type: !2663, scopeLine: 1392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2666)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!7, !78, !2665}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2695, !2696, !2700}
!2667 = !DILocalVariable(name: "param", arg: 1, scope: !2662, file: !3, line: 1391, type: !78)
!2668 = !DILocalVariable(name: "opt", arg: 2, scope: !2662, file: !3, line: 1391, type: !2665)
!2669 = !DILocalVariable(name: "h", scope: !2662, file: !3, line: 1393, type: !1574)
!2670 = !DILocalVariable(name: "pic", scope: !2662, file: !3, line: 1394, type: !67)
!2671 = !DILocalVariable(name: "pulldown", scope: !2662, file: !3, line: 1395, type: !2672)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!2673 = !DILocalVariable(name: "i_frame", scope: !2662, file: !3, line: 1397, type: !7)
!2674 = !DILocalVariable(name: "i_frame_total", scope: !2662, file: !3, line: 1397, type: !7)
!2675 = !DILocalVariable(name: "i_frame_output", scope: !2662, file: !3, line: 1397, type: !7)
!2676 = !DILocalVariable(name: "i_start", scope: !2662, file: !3, line: 1398, type: !11)
!2677 = !DILocalVariable(name: "i_end", scope: !2662, file: !3, line: 1398, type: !11)
!2678 = !DILocalVariable(name: "i_file", scope: !2662, file: !3, line: 1399, type: !11)
!2679 = !DILocalVariable(name: "i_frame_size", scope: !2662, file: !3, line: 1400, type: !7)
!2680 = !DILocalVariable(name: "i_update_interval", scope: !2662, file: !3, line: 1401, type: !7)
!2681 = !DILocalVariable(name: "last_dts", scope: !2662, file: !3, line: 1402, type: !11)
!2682 = !DILocalVariable(name: "prev_dts", scope: !2662, file: !3, line: 1403, type: !11)
!2683 = !DILocalVariable(name: "first_dts", scope: !2662, file: !3, line: 1404, type: !11)
!2684 = !DILocalVariable(name: "pts_warning_cnt", scope: !2662, file: !3, line: 1406, type: !7)
!2685 = !DILocalVariable(name: "largest_pts", scope: !2662, file: !3, line: 1407, type: !11)
!2686 = !DILocalVariable(name: "second_largest_pts", scope: !2662, file: !3, line: 1408, type: !11)
!2687 = !DILocalVariable(name: "ticks_per_frame", scope: !2662, file: !3, line: 1409, type: !11)
!2688 = !DILocalVariable(name: "duration", scope: !2662, file: !3, line: 1410, type: !5)
!2689 = !DILocalVariable(name: "prev_timebase_den", scope: !2662, file: !3, line: 1411, type: !7)
!2690 = !DILocalVariable(name: "dts_compress_multiplier", scope: !2662, file: !3, line: 1412, type: !7)
!2691 = !DILocalVariable(name: "pulldown_pts", scope: !2662, file: !3, line: 1413, type: !5)
!2692 = !DILocalVariable(name: "headers", scope: !2693, file: !3, line: 1476, type: !1391)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1474, column: 5)
!2694 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1473, column: 9)
!2695 = !DILocalVariable(name: "i_nal", scope: !2693, file: !3, line: 1477, type: !7)
!2696 = !DILocalVariable(name: "output_pts", scope: !2697, file: !3, line: 1510, type: !11)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1494, column: 5)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 1493, column: 5)
!2699 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1493, column: 5)
!2700 = !DILocalVariable(name: "fps", scope: !2701, file: !3, line: 1614, type: !5)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 1613, column: 5)
!2702 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1612, column: 9)
!2703 = distinct !DILocation(line: 176, column: 11, scope: !1495)
!2704 = distinct !DIAssignID()
!2705 = distinct !DIAssignID()
!2706 = distinct !DIAssignID()
!2707 = !DILocation(line: 0, scope: !1571, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 1542, column: 24, scope: !2697, inlinedAt: !2703)
!2709 = distinct !DIAssignID()
!2710 = distinct !DIAssignID()
!2711 = distinct !DIAssignID()
!2712 = !DILocalVariable(name: "num", scope: !2713, file: !3, line: 1300, type: !7)
!2713 = distinct !DISubprogram(name: "parse_qpfile", scope: !3, file: !3, line: 1298, type: !2714, scopeLine: 1299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{null, !2665, !66, !7}
!2716 = !{!2717, !2718, !2719, !2712, !2720, !2721, !2722, !2723}
!2717 = !DILocalVariable(name: "opt", arg: 1, scope: !2713, file: !3, line: 1298, type: !2665)
!2718 = !DILocalVariable(name: "pic", arg: 2, scope: !2713, file: !3, line: 1298, type: !66)
!2719 = !DILocalVariable(name: "i_frame", arg: 3, scope: !2713, file: !3, line: 1298, type: !7)
!2720 = !DILocalVariable(name: "qp", scope: !2713, file: !3, line: 1300, type: !7)
!2721 = !DILocalVariable(name: "ret", scope: !2713, file: !3, line: 1300, type: !7)
!2722 = !DILocalVariable(name: "type", scope: !2713, file: !3, line: 1301, type: !1541)
!2723 = !DILocalVariable(name: "file_pos", scope: !2713, file: !3, line: 1302, type: !1971)
!2724 = !DILocation(line: 0, scope: !2713, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 1533, column: 13, scope: !2726, inlinedAt: !2703)
!2726 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1532, column: 13)
!2727 = distinct !DIAssignID()
!2728 = distinct !DIAssignID()
!2729 = distinct !DIAssignID()
!2730 = !DILocation(line: 0, scope: !2662, inlinedAt: !2703)
!2731 = distinct !DIAssignID()
!2732 = !DILocation(line: 0, scope: !2693, inlinedAt: !2703)
!2733 = distinct !DIAssignID()
!2734 = distinct !DIAssignID()
!2735 = !DILocalVariable(name: "defaults", scope: !2736, file: !3, line: 919, type: !79)
!2736 = distinct !DISubprogram(name: "Parse", scope: !3, file: !3, line: 912, type: !2737, scopeLine: 913, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!7, !7, !8, !78, !2665}
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2735, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2762, !2766, !2767, !2768, !2770, !2775, !2778, !2779, !2780, !2783, !2784, !2785, !2788}
!2740 = !DILocalVariable(name: "argc", arg: 1, scope: !2736, file: !3, line: 912, type: !7)
!2741 = !DILocalVariable(name: "argv", arg: 2, scope: !2736, file: !3, line: 912, type: !8)
!2742 = !DILocalVariable(name: "param", arg: 3, scope: !2736, file: !3, line: 912, type: !78)
!2743 = !DILocalVariable(name: "opt", arg: 4, scope: !2736, file: !3, line: 912, type: !2665)
!2744 = !DILocalVariable(name: "input_filename", scope: !2736, file: !3, line: 914, type: !9)
!2745 = !DILocalVariable(name: "demuxer", scope: !2736, file: !3, line: 915, type: !142)
!2746 = !DILocalVariable(name: "output_filename", scope: !2736, file: !3, line: 916, type: !9)
!2747 = !DILocalVariable(name: "muxer", scope: !2736, file: !3, line: 917, type: !142)
!2748 = !DILocalVariable(name: "tcfile_name", scope: !2736, file: !3, line: 918, type: !9)
!2749 = !DILocalVariable(name: "profile", scope: !2736, file: !3, line: 920, type: !9)
!2750 = !DILocalVariable(name: "b_thread_input", scope: !2736, file: !3, line: 921, type: !7)
!2751 = !DILocalVariable(name: "b_turbo", scope: !2736, file: !3, line: 922, type: !7)
!2752 = !DILocalVariable(name: "b_user_ref", scope: !2736, file: !3, line: 923, type: !7)
!2753 = !DILocalVariable(name: "b_user_fps", scope: !2736, file: !3, line: 924, type: !7)
!2754 = !DILocalVariable(name: "b_user_interlaced", scope: !2736, file: !3, line: 925, type: !7)
!2755 = !DILocalVariable(name: "input_opt", scope: !2736, file: !3, line: 926, type: !51)
!2756 = !DILocalVariable(name: "preset", scope: !2736, file: !3, line: 927, type: !9)
!2757 = !DILocalVariable(name: "tune", scope: !2736, file: !3, line: 928, type: !9)
!2758 = !DILocalVariable(name: "c", scope: !2759, file: !3, line: 942, type: !7)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 941, column: 5)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 940, column: 5)
!2761 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 940, column: 5)
!2762 = !DILocalVariable(name: "b_error", scope: !2763, file: !3, line: 961, type: !7)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 960, column: 5)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 959, column: 5)
!2765 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 959, column: 5)
!2766 = !DILocalVariable(name: "long_options_index", scope: !2763, file: !3, line: 962, type: !7)
!2767 = !DILocalVariable(name: "c", scope: !2763, file: !3, line: 964, type: !7)
!2768 = !DILabel(scope: !2769, name: "generic_option", file: !3, line: 1097)
!2769 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 972, column: 9)
!2770 = !DILocalVariable(name: "i", scope: !2771, file: !3, line: 1101, type: !7)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 1101, column: 21)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 1100, column: 17)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 1099, column: 21)
!2774 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1098, column: 13)
!2775 = !DILocalVariable(name: "name", scope: !2776, file: !3, line: 1120, type: !142)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 1119, column: 9)
!2777 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1118, column: 13)
!2778 = !DILocalVariable(name: "info", scope: !2736, file: !3, line: 1152, type: !31)
!2779 = !DILocalVariable(name: "demuxername", scope: !2736, file: !3, line: 1153, type: !383)
!2780 = !DILocalVariable(name: "i_user_timebase_num", scope: !2781, file: !3, line: 1232, type: !1971)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1231, column: 5)
!2782 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1230, column: 9)
!2783 = !DILocalVariable(name: "i_user_timebase_den", scope: !2781, file: !3, line: 1233, type: !1971)
!2784 = !DILocalVariable(name: "ret", scope: !2781, file: !3, line: 1234, type: !7)
!2785 = !DILocalVariable(name: "mbs", scope: !2786, file: !3, line: 1281, type: !7)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 1280, column: 5)
!2787 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1279, column: 9)
!2788 = !DILocalVariable(name: "i", scope: !2789, file: !3, line: 1282, type: !7)
!2789 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 1282, column: 9)
!2790 = !DILocation(line: 0, scope: !2736, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 168, column: 9, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 168, column: 9)
!2793 = distinct !DIAssignID()
!2794 = distinct !DIAssignID()
!2795 = !DILocation(line: 0, scope: !2763, inlinedAt: !2791)
!2796 = distinct !DIAssignID()
!2797 = distinct !DIAssignID()
!2798 = distinct !DIAssignID()
!2799 = !DILocation(line: 0, scope: !2781, inlinedAt: !2791)
!2800 = distinct !DIAssignID()
!2801 = distinct !DIAssignID()
!2802 = !DILocation(line: 0, scope: !1495)
!2803 = distinct !DIAssignID()
!2804 = !DILocation(line: 153, column: 5, scope: !1495)
!2805 = !DILocation(line: 154, column: 5, scope: !1495)
!2806 = !DILocation(line: 919, column: 5, scope: !2736, inlinedAt: !2791)
!2807 = !DILocation(line: 926, column: 5, scope: !2736, inlinedAt: !2791)
!2808 = !DILocation(line: 933, column: 5, scope: !2736, inlinedAt: !2791)
!2809 = !DILocation(line: 935, column: 5, scope: !2736, inlinedAt: !2791)
!2810 = distinct !DIAssignID()
!2811 = !DILocation(line: 936, column: 5, scope: !2736, inlinedAt: !2791)
!2812 = distinct !DIAssignID()
!2813 = !DILocation(line: 937, column: 21, scope: !2736, inlinedAt: !2791)
!2814 = distinct !DIAssignID()
!2815 = !DILocation(line: 940, column: 17, scope: !2761, inlinedAt: !2791)
!2816 = !DILocation(line: 940, column: 10, scope: !2761, inlinedAt: !2791)
!2817 = !DILocation(line: 943, column: 13, scope: !2759, inlinedAt: !2791)
!2818 = !DILocation(line: 942, column: 17, scope: !2759, inlinedAt: !2791)
!2819 = !DILocation(line: 0, scope: !2759, inlinedAt: !2791)
!2820 = !DILocation(line: 945, column: 22, scope: !2821, inlinedAt: !2791)
!2821 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 944, column: 13)
!2822 = !DILocation(line: 946, column: 13, scope: !2759, inlinedAt: !2791)
!2823 = !DILocation(line: 947, column: 20, scope: !2824, inlinedAt: !2791)
!2824 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 946, column: 13)
!2825 = !DILocation(line: 947, column: 13, scope: !2824, inlinedAt: !2791)
!2826 = !DILocation(line: 952, column: 9, scope: !2827, inlinedAt: !2791)
!2827 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 952, column: 9)
!2828 = !DILocation(line: 952, column: 16, scope: !2827, inlinedAt: !2791)
!2829 = !DILocation(line: 952, column: 20, scope: !2827, inlinedAt: !2791)
!2830 = !DILocation(line: 952, column: 9, scope: !2736, inlinedAt: !2791)
!2831 = !DILocation(line: 955, column: 9, scope: !2832, inlinedAt: !2791)
!2832 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 955, column: 9)
!2833 = !DILocation(line: 955, column: 58, scope: !2832, inlinedAt: !2791)
!2834 = !DILocation(line: 955, column: 9, scope: !2736, inlinedAt: !2791)
!2835 = !DILocation(line: 959, column: 17, scope: !2765, inlinedAt: !2791)
!2836 = !DILocation(line: 959, column: 10, scope: !2765, inlinedAt: !2791)
!2837 = !DILocation(line: 915, column: 17, scope: !2736, inlinedAt: !2791)
!2838 = !DILocation(line: 917, column: 17, scope: !2736, inlinedAt: !2791)
!2839 = !DILocation(line: 922, column: 9, scope: !2736, inlinedAt: !2791)
!2840 = !DILocation(line: 923, column: 9, scope: !2736, inlinedAt: !2791)
!2841 = !DILocation(line: 924, column: 9, scope: !2736, inlinedAt: !2791)
!2842 = !DILocation(line: 925, column: 9, scope: !2736, inlinedAt: !2791)
!2843 = !DILocation(line: 920, column: 11, scope: !2736, inlinedAt: !2791)
!2844 = !DILocation(line: 918, column: 11, scope: !2736, inlinedAt: !2791)
!2845 = !DILocation(line: 916, column: 11, scope: !2736, inlinedAt: !2791)
!2846 = !DILocation(line: 962, column: 9, scope: !2763, inlinedAt: !2791)
!2847 = !DILocation(line: 962, column: 13, scope: !2763, inlinedAt: !2791)
!2848 = distinct !DIAssignID()
!2849 = !DILocation(line: 964, column: 17, scope: !2763, inlinedAt: !2791)
!2850 = !DILocation(line: 966, column: 13, scope: !2763, inlinedAt: !2791)
!2851 = !DILocation(line: 974, column: 17, scope: !2769, inlinedAt: !2791)
!2852 = !DILocation(line: 975, column: 17, scope: !2769, inlinedAt: !2791)
!2853 = !DILocation(line: 977, column: 17, scope: !2769, inlinedAt: !2791)
!2854 = !DILocation(line: 978, column: 17, scope: !2769, inlinedAt: !2791)
!2855 = !DILocation(line: 980, column: 17, scope: !2769, inlinedAt: !2791)
!2856 = !DILocation(line: 981, column: 17, scope: !2769, inlinedAt: !2791)
!2857 = !DILocation(line: 984, column: 17, scope: !2769, inlinedAt: !2791)
!2858 = !DILocation(line: 996, column: 17, scope: !2769, inlinedAt: !2791)
!2859 = !DILocation(line: 999, column: 33, scope: !2769, inlinedAt: !2791)
!2860 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2861, file: !2862, line: 362, type: !142)
!2861 = distinct !DISubprogram(name: "atoi", scope: !2862, file: !2862, line: 362, type: !2863, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2865)
!2862 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!7, !142}
!2865 = !{!2860}
!2866 = !DILocation(line: 0, scope: !2861, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 999, column: 33, scope: !2769, inlinedAt: !2791)
!2868 = !DILocation(line: 364, column: 16, scope: !2861, inlinedAt: !2867)
!2869 = !DILocation(line: 364, column: 10, scope: !2861, inlinedAt: !2867)
!2870 = !DILocation(line: 999, column: 31, scope: !2769, inlinedAt: !2791)
!2871 = !DILocation(line: 1000, column: 17, scope: !2769, inlinedAt: !2791)
!2872 = !DILocation(line: 1003, column: 40, scope: !2769, inlinedAt: !2791)
!2873 = !DILocation(line: 0, scope: !2861, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 1003, column: 40, scope: !2769, inlinedAt: !2791)
!2875 = !DILocation(line: 364, column: 16, scope: !2861, inlinedAt: !2874)
!2876 = !DILocation(line: 364, column: 10, scope: !2861, inlinedAt: !2874)
!2877 = !DILocation(line: 1003, column: 38, scope: !2769, inlinedAt: !2791)
!2878 = distinct !DIAssignID()
!2879 = !DILocation(line: 1004, column: 17, scope: !2769, inlinedAt: !2791)
!2880 = !DILocation(line: 1006, column: 48, scope: !2769, inlinedAt: !2791)
!2881 = !DILocation(line: 0, scope: !2861, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 1006, column: 48, scope: !2769, inlinedAt: !2791)
!2883 = !DILocation(line: 364, column: 16, scope: !2861, inlinedAt: !2882)
!2884 = !DILocation(line: 364, column: 10, scope: !2861, inlinedAt: !2882)
!2885 = !DILocation(line: 1006, column: 46, scope: !2769, inlinedAt: !2791)
!2886 = distinct !DIAssignID()
!2887 = !DILocation(line: 1006, column: 29, scope: !2769, inlinedAt: !2791)
!2888 = distinct !DIAssignID()
!2889 = !DILocation(line: 1008, column: 19, scope: !2769, inlinedAt: !2791)
!2890 = !DILocation(line: 1010, column: 17, scope: !2769, inlinedAt: !2791)
!2891 = !DILocation(line: 1012, column: 35, scope: !2769, inlinedAt: !2791)
!2892 = !DILocation(line: 1013, column: 17, scope: !2769, inlinedAt: !2791)
!2893 = !DILocation(line: 1015, column: 38, scope: !2894, inlinedAt: !2791)
!2894 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1015, column: 21)
!2895 = !DILocalVariable(name: "arg", arg: 1, scope: !2896, file: !3, line: 887, type: !142)
!2896 = distinct !DISubprogram(name: "parse_enum_name", scope: !3, file: !3, line: 887, type: !2897, scopeLine: 888, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2901)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!7, !142, !2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!2901 = !{!2895, !2902, !2903, !2904}
!2902 = !DILocalVariable(name: "names", arg: 2, scope: !2896, file: !3, line: 887, type: !2899)
!2903 = !DILocalVariable(name: "dst", arg: 3, scope: !2896, file: !3, line: 887, type: !2900)
!2904 = !DILocalVariable(name: "i", scope: !2905, file: !3, line: 889, type: !7)
!2905 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 889, column: 5)
!2906 = !DILocation(line: 0, scope: !2896, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 1015, column: 21, scope: !2894, inlinedAt: !2791)
!2908 = !DILocation(line: 0, scope: !2905, inlinedAt: !2907)
!2909 = !DILocation(line: 890, column: 14, scope: !2910, inlinedAt: !2907)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 890, column: 13)
!2911 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 889, column: 5)
!2912 = !DILocation(line: 890, column: 13, scope: !2911, inlinedAt: !2907)
!2913 = !DILocation(line: 1019, column: 38, scope: !2914, inlinedAt: !2791)
!2914 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1019, column: 21)
!2915 = !DILocation(line: 0, scope: !2896, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 1019, column: 21, scope: !2914, inlinedAt: !2791)
!2917 = !DILocation(line: 0, scope: !2905, inlinedAt: !2916)
!2918 = !DILocation(line: 890, column: 14, scope: !2910, inlinedAt: !2916)
!2919 = !DILocation(line: 890, column: 13, scope: !2911, inlinedAt: !2916)
!2920 = !DILocation(line: 1023, column: 35, scope: !2769, inlinedAt: !2791)
!2921 = !DILocation(line: 1023, column: 33, scope: !2769, inlinedAt: !2791)
!2922 = distinct !DIAssignID()
!2923 = !DILocation(line: 1024, column: 17, scope: !2769, inlinedAt: !2791)
!2924 = !DILocation(line: 1026, column: 38, scope: !2769, inlinedAt: !2791)
!2925 = !DILocation(line: 1026, column: 31, scope: !2769, inlinedAt: !2791)
!2926 = !DILocation(line: 1026, column: 29, scope: !2769, inlinedAt: !2791)
!2927 = distinct !DIAssignID()
!2928 = !DILocation(line: 1027, column: 22, scope: !2929, inlinedAt: !2791)
!2929 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1027, column: 21)
!2930 = !DILocation(line: 1027, column: 21, scope: !2769, inlinedAt: !2791)
!2931 = !DILocation(line: 1029, column: 30, scope: !2932, inlinedAt: !2791)
!2932 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 1028, column: 17)
!2933 = !DILocation(line: 1029, column: 80, scope: !2932, inlinedAt: !2791)
!2934 = !DILocation(line: 1029, column: 21, scope: !2932, inlinedAt: !2791)
!2935 = !DILocation(line: 1030, column: 21, scope: !2932, inlinedAt: !2791)
!2936 = !DILocation(line: 1043, column: 36, scope: !2769, inlinedAt: !2791)
!2937 = distinct !DIAssignID()
!2938 = !DILocation(line: 1044, column: 17, scope: !2769, inlinedAt: !2791)
!2939 = !DILocation(line: 1046, column: 36, scope: !2769, inlinedAt: !2791)
!2940 = distinct !DIAssignID()
!2941 = !DILocation(line: 1047, column: 17, scope: !2769, inlinedAt: !2791)
!2942 = !DILocation(line: 1049, column: 33, scope: !2769, inlinedAt: !2791)
!2943 = distinct !DIAssignID()
!2944 = !DILocation(line: 1050, column: 17, scope: !2769, inlinedAt: !2791)
!2945 = !DILocation(line: 1056, column: 26, scope: !2769, inlinedAt: !2791)
!2946 = !DILocation(line: 1056, column: 17, scope: !2769, inlinedAt: !2791)
!2947 = !DILocation(line: 1058, column: 17, scope: !2769, inlinedAt: !2791)
!2948 = !DILocation(line: 1063, column: 27, scope: !2769, inlinedAt: !2791)
!2949 = !DILocation(line: 1064, column: 17, scope: !2769, inlinedAt: !2791)
!2950 = !DILocation(line: 1067, column: 17, scope: !2769, inlinedAt: !2791)
!2951 = !DILocation(line: 1070, column: 17, scope: !2769, inlinedAt: !2791)
!2952 = !DILocation(line: 1073, column: 36, scope: !2769, inlinedAt: !2791)
!2953 = distinct !DIAssignID()
!2954 = !DILocation(line: 1074, column: 17, scope: !2769, inlinedAt: !2791)
!2955 = !DILocation(line: 1077, column: 17, scope: !2769, inlinedAt: !2791)
!2956 = !DILocation(line: 1079, column: 31, scope: !2769, inlinedAt: !2791)
!2957 = !DILocation(line: 1080, column: 17, scope: !2769, inlinedAt: !2791)
!2958 = !DILocation(line: 1082, column: 42, scope: !2769, inlinedAt: !2791)
!2959 = !DILocation(line: 1082, column: 35, scope: !2769, inlinedAt: !2791)
!2960 = !DILocation(line: 1082, column: 33, scope: !2769, inlinedAt: !2791)
!2961 = distinct !DIAssignID()
!2962 = !DILocation(line: 1083, column: 22, scope: !2963, inlinedAt: !2791)
!2963 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1083, column: 21)
!2964 = !DILocation(line: 1083, column: 21, scope: !2769, inlinedAt: !2791)
!2965 = !DILocation(line: 1085, column: 30, scope: !2966, inlinedAt: !2791)
!2966 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 1084, column: 17)
!2967 = !DILocation(line: 1085, column: 73, scope: !2966, inlinedAt: !2791)
!2968 = !DILocation(line: 1085, column: 21, scope: !2966, inlinedAt: !2791)
!2969 = !DILocation(line: 1086, column: 21, scope: !2966, inlinedAt: !2791)
!2970 = !DILocation(line: 1090, column: 38, scope: !2769, inlinedAt: !2791)
!2971 = !DILocation(line: 1090, column: 36, scope: !2769, inlinedAt: !2791)
!2972 = distinct !DIAssignID()
!2973 = !DILocation(line: 1091, column: 17, scope: !2769, inlinedAt: !2791)
!2974 = !DILocation(line: 1093, column: 39, scope: !2975, inlinedAt: !2791)
!2975 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1093, column: 21)
!2976 = !DILocalVariable(name: "arg", arg: 1, scope: !2977, file: !3, line: 898, type: !142)
!2977 = distinct !DISubprogram(name: "parse_enum_value", scope: !3, file: !3, line: 898, type: !2978, scopeLine: 899, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!7, !142, !2899, !723}
!2980 = !{!2976, !2981, !2982, !2983}
!2981 = !DILocalVariable(name: "names", arg: 2, scope: !2977, file: !3, line: 898, type: !2899)
!2982 = !DILocalVariable(name: "dst", arg: 3, scope: !2977, file: !3, line: 898, type: !723)
!2983 = !DILocalVariable(name: "i", scope: !2984, file: !3, line: 900, type: !7)
!2984 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 900, column: 5)
!2985 = !DILocation(line: 0, scope: !2977, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 1093, column: 21, scope: !2975, inlinedAt: !2791)
!2987 = !DILocation(line: 0, scope: !2984, inlinedAt: !2986)
!2988 = !DILocation(line: 901, column: 14, scope: !2989, inlinedAt: !2986)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 901, column: 13)
!2990 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 900, column: 5)
!2991 = !DILocation(line: 901, column: 13, scope: !2990, inlinedAt: !2986)
!2992 = !DILocation(line: 903, column: 18, scope: !2993, inlinedAt: !2986)
!2993 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 902, column: 9)
!2994 = distinct !DIAssignID()
!2995 = !DILocation(line: 1093, column: 21, scope: !2769, inlinedAt: !2791)
!2996 = !DILocation(line: 1097, column: 1, scope: !2769, inlinedAt: !2791)
!2997 = !DILocation(line: 1099, column: 21, scope: !2773, inlinedAt: !2791)
!2998 = !DILocation(line: 1099, column: 40, scope: !2773, inlinedAt: !2791)
!2999 = !DILocation(line: 1099, column: 21, scope: !2774, inlinedAt: !2791)
!3000 = !DILocation(line: 0, scope: !2771, inlinedAt: !2791)
!3001 = !DILocation(line: 1101, column: 53, scope: !3002, inlinedAt: !2791)
!3002 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 1101, column: 21)
!3003 = !DILocation(line: 1101, column: 21, scope: !2771, inlinedAt: !2791)
!3004 = !DILocation(line: 1102, column: 45, scope: !3005, inlinedAt: !2791)
!3005 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 1102, column: 29)
!3006 = !DILocation(line: 1102, column: 49, scope: !3005, inlinedAt: !2791)
!3007 = !DILocation(line: 1102, column: 29, scope: !3002, inlinedAt: !2791)
!3008 = !DILocation(line: 1104, column: 48, scope: !3009, inlinedAt: !2791)
!3009 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 1103, column: 25)
!3010 = distinct !DIAssignID()
!3011 = !DILocation(line: 1107, column: 25, scope: !2772, inlinedAt: !2791)
!3012 = !DILocation(line: 1101, column: 60, scope: !3002, inlinedAt: !2791)
!3013 = !DILocation(line: 1101, column: 37, scope: !3002, inlinedAt: !2791)
!3014 = distinct !{!3014, !3003, !3015}
!3015 = !DILocation(line: 1106, column: 25, scope: !2771, inlinedAt: !2791)
!3016 = !DILocation(line: 1114, column: 66, scope: !2774, inlinedAt: !2791)
!3017 = !DILocation(line: 1114, column: 53, scope: !2774, inlinedAt: !2791)
!3018 = !DILocation(line: 1114, column: 86, scope: !2774, inlinedAt: !2791)
!3019 = !DILocation(line: 1114, column: 92, scope: !2774, inlinedAt: !2791)
!3020 = !DILocation(line: 1114, column: 28, scope: !2774, inlinedAt: !2791)
!3021 = !DILocation(line: 1118, column: 13, scope: !2777, inlinedAt: !2791)
!3022 = !DILocation(line: 1118, column: 13, scope: !2763, inlinedAt: !2791)
!3023 = !DILocation(line: 1120, column: 32, scope: !2776, inlinedAt: !2791)
!3024 = !DILocation(line: 1120, column: 51, scope: !2776, inlinedAt: !2791)
!3025 = !DILocation(line: 0, scope: !2776, inlinedAt: !2791)
!3026 = !DILocation(line: 1121, column: 22, scope: !2776, inlinedAt: !2791)
!3027 = !DILocation(line: 1121, column: 81, scope: !2776, inlinedAt: !2791)
!3028 = !DILocation(line: 1121, column: 13, scope: !2776, inlinedAt: !2791)
!3029 = !DILocation(line: 1124, column: 5, scope: !2764, inlinedAt: !2791)
!3030 = !DILocation(line: 1127, column: 9, scope: !3031, inlinedAt: !2791)
!3031 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1127, column: 9)
!3032 = !DILocation(line: 1127, column: 9, scope: !2736, inlinedAt: !2791)
!3033 = !DILocation(line: 1128, column: 9, scope: !3031, inlinedAt: !2791)
!3034 = !DILocation(line: 1131, column: 9, scope: !3035, inlinedAt: !2791)
!3035 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1131, column: 9)
!3036 = !DILocation(line: 1131, column: 52, scope: !3035, inlinedAt: !2791)
!3037 = !DILocation(line: 1131, column: 9, scope: !2736, inlinedAt: !2791)
!3038 = !DILocation(line: 1135, column: 9, scope: !3039, inlinedAt: !2791)
!3039 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1135, column: 9)
!3040 = !DILocation(line: 1135, column: 16, scope: !3039, inlinedAt: !2791)
!3041 = !DILocation(line: 1135, column: 27, scope: !3039, inlinedAt: !2791)
!3042 = !DILocation(line: 1137, column: 18, scope: !3043, inlinedAt: !2791)
!3043 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 1136, column: 5)
!3044 = !DILocation(line: 1138, column: 18, scope: !3043, inlinedAt: !2791)
!3045 = !DILocation(line: 1137, column: 9, scope: !3043, inlinedAt: !2791)
!3046 = !DILocation(line: 1139, column: 9, scope: !3043, inlinedAt: !2791)
!3047 = !DILocalVariable(name: "muxer", arg: 1, scope: !3048, file: !3, line: 765, type: !142)
!3048 = distinct !DISubprogram(name: "select_output", scope: !3, file: !3, line: 765, type: !3049, scopeLine: 766, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3051)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!7, !142, !9, !78}
!3051 = !{!3047, !3052, !3053, !3054}
!3052 = !DILocalVariable(name: "filename", arg: 2, scope: !3048, file: !3, line: 765, type: !9)
!3053 = !DILocalVariable(name: "param", arg: 3, scope: !3048, file: !3, line: 765, type: !78)
!3054 = !DILocalVariable(name: "ext", scope: !3048, file: !3, line: 767, type: !142)
!3055 = !DILocation(line: 0, scope: !3048, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 1142, column: 9, scope: !3057, inlinedAt: !2791)
!3057 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1142, column: 9)
!3058 = !DILocalVariable(name: "filename", arg: 1, scope: !3059, file: !29, line: 49, type: !9)
!3059 = distinct !DISubprogram(name: "get_filename_extension", scope: !29, file: !29, line: 49, type: !3060, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!9, !9}
!3062 = !{!3058, !3063}
!3063 = !DILocalVariable(name: "ext", scope: !3059, file: !29, line: 51, type: !9)
!3064 = !DILocation(line: 0, scope: !3059, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 767, column: 23, scope: !3048, inlinedAt: !3056)
!3066 = !DILocation(line: 51, column: 28, scope: !3059, inlinedAt: !3065)
!3067 = !DILocation(line: 51, column: 26, scope: !3059, inlinedAt: !3065)
!3068 = !DILocation(line: 52, column: 5, scope: !3059, inlinedAt: !3065)
!3069 = !DILocation(line: 52, column: 12, scope: !3059, inlinedAt: !3065)
!3070 = !DILocation(line: 52, column: 17, scope: !3059, inlinedAt: !3065)
!3071 = !DILocation(line: 52, column: 24, scope: !3059, inlinedAt: !3065)
!3072 = !DILocation(line: 53, column: 12, scope: !3059, inlinedAt: !3065)
!3073 = distinct !{!3073, !3068, !3072}
!3074 = !DILocation(line: 768, column: 10, scope: !3075, inlinedAt: !3056)
!3075 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 768, column: 9)
!3076 = !DILocation(line: 768, column: 34, scope: !3075, inlinedAt: !3056)
!3077 = !DILocation(line: 54, column: 17, scope: !3059, inlinedAt: !3065)
!3078 = !DILocation(line: 54, column: 9, scope: !3059, inlinedAt: !3065)
!3079 = !DILocation(line: 768, column: 37, scope: !3075, inlinedAt: !3056)
!3080 = !DILocation(line: 768, column: 9, scope: !3048, inlinedAt: !3056)
!3081 = !DILocation(line: 769, column: 9, scope: !3075, inlinedAt: !3056)
!3082 = !DILocation(line: 771, column: 10, scope: !3083, inlinedAt: !3056)
!3083 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 771, column: 9)
!3084 = !DILocation(line: 771, column: 9, scope: !3048, inlinedAt: !3056)
!3085 = !DILocation(line: 788, column: 15, scope: !3086, inlinedAt: !3056)
!3086 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 788, column: 14)
!3087 = !DILocation(line: 788, column: 14, scope: !3083, inlinedAt: !3056)
!3088 = !DILocation(line: 790, column: 18, scope: !3089, inlinedAt: !3056)
!3089 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 789, column: 5)
!3090 = !DILocation(line: 791, column: 16, scope: !3089, inlinedAt: !3056)
!3091 = !DILocation(line: 791, column: 25, scope: !3089, inlinedAt: !3056)
!3092 = distinct !DIAssignID()
!3093 = !DILocation(line: 792, column: 16, scope: !3089, inlinedAt: !3056)
!3094 = !DILocation(line: 792, column: 31, scope: !3089, inlinedAt: !3056)
!3095 = distinct !DIAssignID()
!3096 = !DILocation(line: 793, column: 16, scope: !3089, inlinedAt: !3056)
!3097 = !DILocation(line: 793, column: 33, scope: !3089, inlinedAt: !3056)
!3098 = distinct !DIAssignID()
!3099 = !DILocation(line: 794, column: 5, scope: !3089, inlinedAt: !3056)
!3100 = !DILocation(line: 795, column: 15, scope: !3101, inlinedAt: !3056)
!3101 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 795, column: 14)
!3102 = !DILocation(line: 795, column: 14, scope: !3086, inlinedAt: !3056)
!3103 = !DILocation(line: 797, column: 18, scope: !3104, inlinedAt: !3056)
!3104 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 796, column: 5)
!3105 = !DILocation(line: 798, column: 16, scope: !3104, inlinedAt: !3056)
!3106 = !DILocation(line: 798, column: 25, scope: !3104, inlinedAt: !3056)
!3107 = distinct !DIAssignID()
!3108 = !DILocation(line: 799, column: 16, scope: !3104, inlinedAt: !3056)
!3109 = !DILocation(line: 799, column: 31, scope: !3104, inlinedAt: !3056)
!3110 = distinct !DIAssignID()
!3111 = !DILocation(line: 800, column: 16, scope: !3104, inlinedAt: !3056)
!3112 = !DILocation(line: 800, column: 33, scope: !3104, inlinedAt: !3056)
!3113 = distinct !DIAssignID()
!3114 = !DILocation(line: 801, column: 5, scope: !3104, inlinedAt: !3056)
!3115 = !DILocation(line: 803, column: 18, scope: !3101, inlinedAt: !3056)
!3116 = !DILocation(line: 784, column: 18, scope: !3117, inlinedAt: !3056)
!3117 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 772, column: 5)
!3118 = !DILocation(line: 784, column: 9, scope: !3117, inlinedAt: !3056)
!3119 = !DILocation(line: 1142, column: 9, scope: !2736, inlinedAt: !2791)
!3120 = !DILocation(line: 1144, column: 16, scope: !3121, inlinedAt: !2791)
!3121 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1144, column: 9)
!3122 = !DILocation(line: 1144, column: 50, scope: !3121, inlinedAt: !2791)
!3123 = !DILocation(line: 1144, column: 9, scope: !3121, inlinedAt: !2791)
!3124 = !DILocation(line: 1144, column: 9, scope: !2736, inlinedAt: !2791)
!3125 = !DILocation(line: 1146, column: 18, scope: !3126, inlinedAt: !2791)
!3126 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 1145, column: 5)
!3127 = !DILocation(line: 1146, column: 9, scope: !3126, inlinedAt: !2791)
!3128 = !DILocation(line: 1147, column: 9, scope: !3126, inlinedAt: !2791)
!3129 = !DILocation(line: 1150, column: 33, scope: !2736, inlinedAt: !2791)
!3130 = !DILocation(line: 1150, column: 22, scope: !2736, inlinedAt: !2791)
!3131 = !DILocation(line: 1151, column: 35, scope: !2736, inlinedAt: !2791)
!3132 = !DILocation(line: 1151, column: 28, scope: !2736, inlinedAt: !2791)
!3133 = !DILocation(line: 1151, column: 55, scope: !2736, inlinedAt: !2791)
!3134 = !DILocation(line: 1151, column: 44, scope: !2736, inlinedAt: !2791)
!3135 = !DILocation(line: 1151, column: 15, scope: !2736, inlinedAt: !2791)
!3136 = !DILocation(line: 1151, column: 26, scope: !2736, inlinedAt: !2791)
!3137 = distinct !DIAssignID()
!3138 = !DILocation(line: 1152, column: 18, scope: !2736, inlinedAt: !2791)
!3139 = distinct !DIAssignID()
!3140 = distinct !DIAssignID()
!3141 = !DILocation(line: 1156, column: 30, scope: !2736, inlinedAt: !2791)
!3142 = !DILocation(line: 1156, column: 21, scope: !2736, inlinedAt: !2791)
!3143 = distinct !DIAssignID()
!3144 = !DILocation(line: 1157, column: 30, scope: !2736, inlinedAt: !2791)
!3145 = !DILocation(line: 1157, column: 10, scope: !2736, inlinedAt: !2791)
!3146 = distinct !DIAssignID()
!3147 = !DILocation(line: 1158, column: 30, scope: !2736, inlinedAt: !2791)
!3148 = !DILocation(line: 1158, column: 10, scope: !2736, inlinedAt: !2791)
!3149 = !DILocation(line: 1157, column: 21, scope: !2736, inlinedAt: !2791)
!3150 = !DILocation(line: 1159, column: 30, scope: !2736, inlinedAt: !2791)
!3151 = !DILocation(line: 1159, column: 10, scope: !2736, inlinedAt: !2791)
!3152 = !DILocation(line: 1159, column: 21, scope: !2736, inlinedAt: !2791)
!3153 = distinct !DIAssignID()
!3154 = !DILocation(line: 1160, column: 30, scope: !2736, inlinedAt: !2791)
!3155 = !DILocation(line: 1160, column: 34, scope: !2736, inlinedAt: !2791)
!3156 = !DILocation(line: 1160, column: 10, scope: !2736, inlinedAt: !2791)
!3157 = distinct !DIAssignID()
!3158 = !DILocation(line: 1161, column: 10, scope: !2736, inlinedAt: !2791)
!3159 = !DILocation(line: 1161, column: 34, scope: !2736, inlinedAt: !2791)
!3160 = !DILocation(line: 1160, column: 21, scope: !2736, inlinedAt: !2791)
!3161 = !DILocation(line: 1162, column: 30, scope: !2736, inlinedAt: !2791)
!3162 = !DILocation(line: 1162, column: 10, scope: !2736, inlinedAt: !2791)
!3163 = !DILocation(line: 1162, column: 21, scope: !2736, inlinedAt: !2791)
!3164 = distinct !DIAssignID()
!3165 = !DILocation(line: 1163, column: 30, scope: !2736, inlinedAt: !2791)
!3166 = !DILocation(line: 1163, column: 10, scope: !2736, inlinedAt: !2791)
!3167 = !DILocation(line: 1163, column: 21, scope: !2736, inlinedAt: !2791)
!3168 = distinct !DIAssignID()
!3169 = !DILocalVariable(name: "demuxer", arg: 1, scope: !3170, file: !3, line: 807, type: !142)
!3170 = distinct !DISubprogram(name: "select_input", scope: !3, file: !3, line: 807, type: !3171, scopeLine: 809, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!7, !142, !9, !9, !27, !30, !50}
!3173 = !{!3169, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3185}
!3174 = !DILocalVariable(name: "used_demuxer", arg: 2, scope: !3170, file: !3, line: 807, type: !9)
!3175 = !DILocalVariable(name: "filename", arg: 3, scope: !3170, file: !3, line: 807, type: !9)
!3176 = !DILocalVariable(name: "p_handle", arg: 4, scope: !3170, file: !3, line: 808, type: !27)
!3177 = !DILocalVariable(name: "info", arg: 5, scope: !3170, file: !3, line: 808, type: !30)
!3178 = !DILocalVariable(name: "opt", arg: 6, scope: !3170, file: !3, line: 808, type: !50)
!3179 = !DILocalVariable(name: "ext", scope: !3170, file: !3, line: 810, type: !142)
!3180 = !DILocalVariable(name: "b_regular", scope: !3170, file: !3, line: 811, type: !7)
!3181 = !DILocalVariable(name: "b_auto", scope: !3170, file: !3, line: 812, type: !7)
!3182 = !DILocalVariable(name: "f", scope: !3183, file: !3, line: 817, type: !1511)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 816, column: 5)
!3184 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 815, column: 9)
!3185 = !DILocalVariable(name: "module", scope: !3170, file: !3, line: 824, type: !142)
!3186 = !DILocation(line: 0, scope: !3170, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 1165, column: 9, scope: !3188, inlinedAt: !2791)
!3188 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1165, column: 9)
!3189 = !DILocation(line: 0, scope: !3059, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 810, column: 23, scope: !3170, inlinedAt: !3187)
!3191 = !DILocation(line: 51, column: 28, scope: !3059, inlinedAt: !3190)
!3192 = !DILocation(line: 51, column: 26, scope: !3059, inlinedAt: !3190)
!3193 = !DILocation(line: 52, column: 5, scope: !3059, inlinedAt: !3190)
!3194 = !DILocation(line: 52, column: 12, scope: !3059, inlinedAt: !3190)
!3195 = !DILocation(line: 52, column: 17, scope: !3059, inlinedAt: !3190)
!3196 = !DILocation(line: 52, column: 24, scope: !3059, inlinedAt: !3190)
!3197 = !DILocation(line: 53, column: 12, scope: !3059, inlinedAt: !3190)
!3198 = distinct !{!3198, !3193, !3197}
!3199 = !DILocation(line: 1165, column: 67, scope: !3188, inlinedAt: !2791)
!3200 = !DILocation(line: 54, column: 17, scope: !3059, inlinedAt: !3190)
!3201 = !DILocation(line: 54, column: 9, scope: !3059, inlinedAt: !3190)
!3202 = !DILocation(line: 813, column: 10, scope: !3203, inlinedAt: !3187)
!3203 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 813, column: 9)
!3204 = !DILocation(line: 812, column: 19, scope: !3170, inlinedAt: !3187)
!3205 = !DILocation(line: 812, column: 18, scope: !3170, inlinedAt: !3187)
!3206 = !DILocation(line: 813, column: 20, scope: !3203, inlinedAt: !3187)
!3207 = !DILocation(line: 815, column: 9, scope: !3170, inlinedAt: !3187)
!3208 = !DILocation(line: 817, column: 19, scope: !3183, inlinedAt: !3187)
!3209 = !DILocation(line: 0, scope: !3183, inlinedAt: !3187)
!3210 = !DILocation(line: 818, column: 13, scope: !3211, inlinedAt: !3187)
!3211 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 818, column: 13)
!3212 = !DILocation(line: 818, column: 13, scope: !3183, inlinedAt: !3187)
!3213 = !DILocation(line: 821, column: 13, scope: !3214, inlinedAt: !3187)
!3214 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 819, column: 9)
!3215 = !DILocation(line: 822, column: 9, scope: !3214, inlinedAt: !3187)
!3216 = !DILocation(line: 824, column: 26, scope: !3170, inlinedAt: !3187)
!3217 = !DILocation(line: 826, column: 10, scope: !3218, inlinedAt: !3187)
!3218 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 826, column: 9)
!3219 = !DILocation(line: 826, column: 34, scope: !3218, inlinedAt: !3187)
!3220 = !DILocation(line: 826, column: 38, scope: !3218, inlinedAt: !3187)
!3221 = !DILocation(line: 826, column: 59, scope: !3218, inlinedAt: !3187)
!3222 = !DILocation(line: 826, column: 63, scope: !3218, inlinedAt: !3187)
!3223 = !DILocation(line: 826, column: 9, scope: !3170, inlinedAt: !3187)
!3224 = !DILocation(line: 832, column: 18, scope: !3225, inlinedAt: !3187)
!3225 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 827, column: 5)
!3226 = !DILocation(line: 832, column: 9, scope: !3225, inlinedAt: !3187)
!3227 = !DILocation(line: 833, column: 9, scope: !3225, inlinedAt: !3187)
!3228 = !DILocation(line: 836, column: 15, scope: !3229, inlinedAt: !3187)
!3229 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 836, column: 14)
!3230 = !DILocation(line: 836, column: 14, scope: !3218, inlinedAt: !3187)
!3231 = !DILocation(line: 837, column: 17, scope: !3229, inlinedAt: !3187)
!3232 = !DILocation(line: 837, column: 9, scope: !3229, inlinedAt: !3187)
!3233 = !DILocation(line: 838, column: 15, scope: !3234, inlinedAt: !3187)
!3234 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 838, column: 14)
!3235 = !DILocation(line: 838, column: 14, scope: !3229, inlinedAt: !3187)
!3236 = !DILocation(line: 839, column: 17, scope: !3234, inlinedAt: !3187)
!3237 = !DILocation(line: 839, column: 9, scope: !3234, inlinedAt: !3187)
!3238 = !DILocation(line: 869, column: 20, scope: !3239, inlinedAt: !3187)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 869, column: 13)
!3240 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 841, column: 5)
!3241 = !DILocation(line: 869, column: 34, scope: !3239, inlinedAt: !3187)
!3242 = !DILocation(line: 869, column: 24, scope: !3239, inlinedAt: !3187)
!3243 = !DILocation(line: 869, column: 13, scope: !3240, inlinedAt: !3187)
!3244 = !DILocation(line: 873, column: 21, scope: !3245, inlinedAt: !3187)
!3245 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 870, column: 9)
!3246 = !DILocation(line: 874, column: 9, scope: !3245, inlinedAt: !3187)
!3247 = !DILocation(line: 876, column: 15, scope: !3248, inlinedAt: !3187)
!3248 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 876, column: 13)
!3249 = !DILocation(line: 876, column: 14, scope: !3248, inlinedAt: !3187)
!3250 = !DILocation(line: 876, column: 13, scope: !3240, inlinedAt: !3187)
!3251 = !DILocation(line: 882, column: 5, scope: !3170, inlinedAt: !3187)
!3252 = !DILocation(line: 1168, column: 19, scope: !3253, inlinedAt: !2791)
!3253 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1168, column: 9)
!3254 = !DILocation(line: 878, column: 22, scope: !3255, inlinedAt: !3187)
!3255 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 877, column: 9)
!3256 = !DILocation(line: 878, column: 13, scope: !3255, inlinedAt: !3187)
!3257 = !DILocation(line: 879, column: 13, scope: !3255, inlinedAt: !3187)
!3258 = !DILocation(line: 1168, column: 15, scope: !3253, inlinedAt: !2791)
!3259 = !DILocation(line: 1168, column: 10, scope: !3253, inlinedAt: !2791)
!3260 = !DILocation(line: 1168, column: 28, scope: !3253, inlinedAt: !2791)
!3261 = !DILocation(line: 1168, column: 22, scope: !3253, inlinedAt: !2791)
!3262 = !DILocation(line: 1168, column: 9, scope: !2736, inlinedAt: !2791)
!3263 = !DILocation(line: 1170, column: 18, scope: !3264, inlinedAt: !2791)
!3264 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 1169, column: 5)
!3265 = !DILocation(line: 1170, column: 9, scope: !3264, inlinedAt: !2791)
!3266 = !DILocation(line: 1171, column: 9, scope: !3264, inlinedAt: !2791)
!3267 = !DILocation(line: 1174, column: 5, scope: !2736, inlinedAt: !2791)
!3268 = !DILocation(line: 1175, column: 5, scope: !2736, inlinedAt: !2791)
!3269 = !DILocation(line: 1176, column: 16, scope: !3270, inlinedAt: !2791)
!3270 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1176, column: 9)
!3271 = !DILocation(line: 1176, column: 28, scope: !3270, inlinedAt: !2791)
!3272 = !DILocation(line: 1176, column: 9, scope: !2736, inlinedAt: !2791)
!3273 = !DILocation(line: 1177, column: 18, scope: !3270, inlinedAt: !2791)
!3274 = !DILocation(line: 1177, column: 93, scope: !3270, inlinedAt: !2791)
!3275 = !DILocation(line: 1178, column: 23, scope: !3270, inlinedAt: !2791)
!3276 = !DILocation(line: 1178, column: 36, scope: !3270, inlinedAt: !2791)
!3277 = !DILocation(line: 1178, column: 31, scope: !3270, inlinedAt: !2791)
!3278 = !DILocation(line: 1178, column: 65, scope: !3270, inlinedAt: !2791)
!3279 = !DILocation(line: 1178, column: 81, scope: !3270, inlinedAt: !2791)
!3280 = !DILocation(line: 1179, column: 23, scope: !3270, inlinedAt: !2791)
!3281 = !DILocation(line: 1179, column: 37, scope: !3270, inlinedAt: !2791)
!3282 = !DILocation(line: 1179, column: 51, scope: !3270, inlinedAt: !2791)
!3283 = !DILocation(line: 1179, column: 46, scope: !3270, inlinedAt: !2791)
!3284 = !DILocation(line: 1177, column: 9, scope: !3270, inlinedAt: !2791)
!3285 = !DILocation(line: 1181, column: 9, scope: !3286, inlinedAt: !2791)
!3286 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1181, column: 9)
!3287 = !DILocation(line: 1181, column: 9, scope: !2736, inlinedAt: !2791)
!3288 = !DILocation(line: 1183, column: 13, scope: !3289, inlinedAt: !2791)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 1183, column: 13)
!3290 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 1182, column: 5)
!3291 = !DILocation(line: 1183, column: 13, scope: !3290, inlinedAt: !2791)
!3292 = !DILocation(line: 1185, column: 22, scope: !3293, inlinedAt: !2791)
!3293 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1184, column: 9)
!3294 = !DILocation(line: 1185, column: 13, scope: !3293, inlinedAt: !2791)
!3295 = !DILocation(line: 1186, column: 13, scope: !3293, inlinedAt: !2791)
!3296 = !DILocation(line: 1188, column: 28, scope: !3297, inlinedAt: !2791)
!3297 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 1188, column: 13)
!3298 = !DILocation(line: 1188, column: 13, scope: !3297, inlinedAt: !2791)
!3299 = !DILocation(line: 1188, column: 13, scope: !3290, inlinedAt: !2791)
!3300 = !DILocation(line: 1190, column: 22, scope: !3301, inlinedAt: !2791)
!3301 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 1189, column: 9)
!3302 = !DILocation(line: 1190, column: 13, scope: !3301, inlinedAt: !2791)
!3303 = !DILocation(line: 1191, column: 13, scope: !3301, inlinedAt: !2791)
!3304 = !DILocation(line: 1194, column: 21, scope: !3297, inlinedAt: !2791)
!3305 = !DILocation(line: 1205, column: 31, scope: !2736, inlinedAt: !2791)
!3306 = !DILocation(line: 1195, column: 5, scope: !3290, inlinedAt: !2791)
!3307 = !DILocation(line: 1196, column: 20, scope: !3308, inlinedAt: !2791)
!3308 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 1196, column: 14)
!3309 = !DILocation(line: 1196, column: 15, scope: !3308, inlinedAt: !2791)
!3310 = !DILocation(line: 1196, column: 24, scope: !3308, inlinedAt: !2791)
!3311 = !DILocation(line: 1198, column: 18, scope: !3312, inlinedAt: !2791)
!3312 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 1197, column: 5)
!3313 = !DILocation(line: 1198, column: 9, scope: !3312, inlinedAt: !2791)
!3314 = !DILocation(line: 1199, column: 9, scope: !3312, inlinedAt: !2791)
!3315 = !DILocation(line: 1203, column: 31, scope: !2736, inlinedAt: !2791)
!3316 = !DILocation(line: 1203, column: 24, scope: !2736, inlinedAt: !2791)
!3317 = distinct !DIAssignID()
!3318 = !DILocation(line: 1204, column: 31, scope: !2736, inlinedAt: !2791)
!3319 = !DILocation(line: 1204, column: 12, scope: !2736, inlinedAt: !2791)
!3320 = !DILocation(line: 1204, column: 24, scope: !2736, inlinedAt: !2791)
!3321 = distinct !DIAssignID()
!3322 = !DILocation(line: 1205, column: 24, scope: !2736, inlinedAt: !2791)
!3323 = distinct !DIAssignID()
!3324 = !DILocation(line: 1206, column: 31, scope: !2736, inlinedAt: !2791)
!3325 = !DILocation(line: 1206, column: 12, scope: !2736, inlinedAt: !2791)
!3326 = !DILocation(line: 1206, column: 24, scope: !2736, inlinedAt: !2791)
!3327 = distinct !DIAssignID()
!3328 = !DILocation(line: 1207, column: 10, scope: !3329, inlinedAt: !2791)
!3329 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1207, column: 9)
!3330 = !DILocation(line: 1207, column: 28, scope: !3329, inlinedAt: !2791)
!3331 = !DILocation(line: 1209, column: 18, scope: !3332, inlinedAt: !2791)
!3332 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1208, column: 5)
!3333 = !DILocation(line: 1211, column: 23, scope: !3332, inlinedAt: !2791)
!3334 = !DILocation(line: 1211, column: 18, scope: !3332, inlinedAt: !2791)
!3335 = !DILocation(line: 1211, column: 40, scope: !3332, inlinedAt: !2791)
!3336 = !DILocation(line: 1209, column: 9, scope: !3332, inlinedAt: !2791)
!3337 = !DILocation(line: 1212, column: 29, scope: !3332, inlinedAt: !2791)
!3338 = distinct !DIAssignID()
!3339 = !DILocation(line: 1213, column: 31, scope: !3332, inlinedAt: !2791)
!3340 = !DILocation(line: 1213, column: 25, scope: !3332, inlinedAt: !2791)
!3341 = !DILocation(line: 1213, column: 24, scope: !3332, inlinedAt: !2791)
!3342 = !DILocation(line: 1213, column: 22, scope: !3332, inlinedAt: !2791)
!3343 = distinct !DIAssignID()
!3344 = !DILocation(line: 1214, column: 5, scope: !3332, inlinedAt: !2791)
!3345 = !DILocation(line: 1215, column: 10, scope: !3346, inlinedAt: !2791)
!3346 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1215, column: 9)
!3347 = !DILocation(line: 1215, column: 9, scope: !2736, inlinedAt: !2791)
!3348 = !DILocation(line: 1220, column: 9, scope: !2736, inlinedAt: !2791)
!3349 = !DILocation(line: 0, scope: !3350, inlinedAt: !2791)
!3350 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1220, column: 9)
!3351 = !DILocation(line: 1217, column: 33, scope: !3352, inlinedAt: !2791)
!3352 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 1216, column: 5)
!3353 = !DILocation(line: 1217, column: 26, scope: !3352, inlinedAt: !2791)
!3354 = distinct !DIAssignID()
!3355 = !DILocation(line: 1218, column: 33, scope: !3352, inlinedAt: !2791)
!3356 = !DILocation(line: 1218, column: 26, scope: !3352, inlinedAt: !2791)
!3357 = distinct !DIAssignID()
!3358 = !DILocation(line: 1219, column: 5, scope: !3352, inlinedAt: !2791)
!3359 = !DILocation(line: 1220, column: 16, scope: !3350, inlinedAt: !2791)
!3360 = !DILocation(line: 1220, column: 9, scope: !3350, inlinedAt: !2791)
!3361 = distinct !DIAssignID()
!3362 = distinct !DIAssignID()
!3363 = !DILocation(line: 1230, column: 22, scope: !2782, inlinedAt: !2791)
!3364 = !DILocation(line: 1232, column: 9, scope: !2781, inlinedAt: !2791)
!3365 = !DILocation(line: 1233, column: 9, scope: !2781, inlinedAt: !2791)
!3366 = !DILocation(line: 1234, column: 19, scope: !2781, inlinedAt: !2791)
!3367 = !DILocation(line: 1235, column: 13, scope: !2781, inlinedAt: !2791)
!3368 = !DILocation(line: 1237, column: 22, scope: !3369, inlinedAt: !2791)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 1236, column: 9)
!3370 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 1235, column: 13)
!3371 = !DILocation(line: 1237, column: 91, scope: !3369, inlinedAt: !2791)
!3372 = !DILocation(line: 1237, column: 13, scope: !3369, inlinedAt: !2791)
!3373 = !DILocation(line: 1238, column: 13, scope: !3369, inlinedAt: !2791)
!3374 = !DILocation(line: 1242, column: 42, scope: !3375, inlinedAt: !2791)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 1241, column: 9)
!3376 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 1240, column: 18)
!3377 = !DILocation(line: 1242, column: 35, scope: !3375, inlinedAt: !2791)
!3378 = !DILocation(line: 1242, column: 33, scope: !3375, inlinedAt: !2791)
!3379 = distinct !DIAssignID()
!3380 = !DILocation(line: 1243, column: 54, scope: !3375, inlinedAt: !2791)
!3381 = !DILocation(line: 1243, column: 35, scope: !3375, inlinedAt: !2791)
!3382 = !DILocation(line: 1243, column: 33, scope: !3375, inlinedAt: !2791)
!3383 = distinct !DIAssignID()
!3384 = !DILocation(line: 1244, column: 9, scope: !3375, inlinedAt: !2791)
!3385 = !DILocation(line: 1245, column: 13, scope: !3386, inlinedAt: !2791)
!3386 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 1245, column: 13)
!3387 = !DILocation(line: 1245, column: 33, scope: !3386, inlinedAt: !2791)
!3388 = !DILocation(line: 1245, column: 46, scope: !3386, inlinedAt: !2791)
!3389 = !DILocation(line: 1247, column: 22, scope: !3390, inlinedAt: !2791)
!3390 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 1246, column: 9)
!3391 = !DILocation(line: 1247, column: 13, scope: !3390, inlinedAt: !2791)
!3392 = !DILocation(line: 1248, column: 13, scope: !3390, inlinedAt: !2791)
!3393 = !DILocation(line: 1250, column: 45, scope: !2781, inlinedAt: !2791)
!3394 = !DILocation(line: 1250, column: 82, scope: !2781, inlinedAt: !2791)
!3395 = !DILocation(line: 1250, column: 75, scope: !2781, inlinedAt: !2791)
!3396 = !DILocation(line: 1251, column: 60, scope: !2781, inlinedAt: !2791)
!3397 = !DILocation(line: 1251, column: 45, scope: !2781, inlinedAt: !2791)
!3398 = !DILocation(line: 1251, column: 77, scope: !2781, inlinedAt: !2791)
!3399 = !DILocation(line: 1250, column: 73, scope: !2781, inlinedAt: !2791)
!3400 = !DILocation(line: 1251, column: 42, scope: !2781, inlinedAt: !2791)
!3401 = !DILocation(line: 1250, column: 14, scope: !2781, inlinedAt: !2791)
!3402 = !DILocation(line: 1250, column: 42, scope: !2781, inlinedAt: !2791)
!3403 = distinct !DIAssignID()
!3404 = !DILocation(line: 1252, column: 33, scope: !2781, inlinedAt: !2791)
!3405 = !DILocation(line: 1252, column: 31, scope: !2781, inlinedAt: !2791)
!3406 = distinct !DIAssignID()
!3407 = !DILocation(line: 1253, column: 33, scope: !2781, inlinedAt: !2791)
!3408 = !DILocation(line: 1253, column: 31, scope: !2781, inlinedAt: !2791)
!3409 = distinct !DIAssignID()
!3410 = !DILocation(line: 1254, column: 28, scope: !2781, inlinedAt: !2791)
!3411 = distinct !DIAssignID()
!3412 = !DILocation(line: 1255, column: 5, scope: !2782, inlinedAt: !2791)
!3413 = !DILocation(line: 1256, column: 21, scope: !3414, inlinedAt: !2791)
!3414 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1256, column: 9)
!3415 = !DILocation(line: 1256, column: 10, scope: !3414, inlinedAt: !2791)
!3416 = !DILocation(line: 1256, column: 33, scope: !3414, inlinedAt: !2791)
!3417 = distinct !DIAssignID()
!3418 = !DILocation(line: 1258, column: 40, scope: !3419, inlinedAt: !2791)
!3419 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 1257, column: 5)
!3420 = !DILocation(line: 1259, column: 33, scope: !3419, inlinedAt: !2791)
!3421 = !DILocation(line: 1260, column: 5, scope: !3419, inlinedAt: !2791)
!3422 = !DILocation(line: 1279, column: 10, scope: !2787, inlinedAt: !2791)
!3423 = !DILocation(line: 1279, column: 9, scope: !2736, inlinedAt: !2791)
!3424 = !DILocation(line: 1281, column: 29, scope: !2786, inlinedAt: !2791)
!3425 = !DILocation(line: 1281, column: 37, scope: !2786, inlinedAt: !2791)
!3426 = !DILocation(line: 1281, column: 41, scope: !2786, inlinedAt: !2791)
!3427 = !DILocation(line: 1281, column: 58, scope: !2786, inlinedAt: !2791)
!3428 = !DILocation(line: 1281, column: 67, scope: !2786, inlinedAt: !2791)
!3429 = !DILocation(line: 1281, column: 71, scope: !2786, inlinedAt: !2791)
!3430 = !DILocation(line: 0, scope: !2786, inlinedAt: !2791)
!3431 = !DILocation(line: 0, scope: !2789, inlinedAt: !2791)
!3432 = !DILocation(line: 1282, column: 40, scope: !3433, inlinedAt: !2791)
!3433 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 1282, column: 9)
!3434 = !DILocation(line: 1282, column: 50, scope: !3433, inlinedAt: !2791)
!3435 = !DILocation(line: 1282, column: 9, scope: !2789, inlinedAt: !2791)
!3436 = !DILocation(line: 1283, column: 36, scope: !3437, inlinedAt: !2791)
!3437 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1283, column: 17)
!3438 = !DILocation(line: 1283, column: 17, scope: !3433, inlinedAt: !2791)
!3439 = !DILocation(line: 1282, column: 57, scope: !3433, inlinedAt: !2791)
!3440 = !DILocation(line: 1282, column: 25, scope: !3433, inlinedAt: !2791)
!3441 = distinct !{!3441, !3435, !3442}
!3442 = !DILocation(line: 1291, column: 13, scope: !2789, inlinedAt: !2791)
!3443 = !DILocation(line: 1285, column: 34, scope: !3444, inlinedAt: !2791)
!3444 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 1284, column: 13)
!3445 = !DILocation(line: 1285, column: 61, scope: !3444, inlinedAt: !2791)
!3446 = !DILocation(line: 1285, column: 82, scope: !3444, inlinedAt: !2791)
!3447 = !DILocation(line: 1288, column: 45, scope: !3448, inlinedAt: !2791)
!3448 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 1287, column: 17)
!3449 = distinct !{!3449, !3450, !3451}
!3450 = !DILocation(line: 1285, column: 17, scope: !3444, inlinedAt: !2791)
!3451 = !DILocation(line: 1289, column: 17, scope: !3444, inlinedAt: !2791)
!3452 = distinct !DIAssignID()
!3453 = !DILocation(line: 1296, column: 1, scope: !2736, inlinedAt: !2791)
!3454 = !DILocation(line: 168, column: 9, scope: !1495)
!3455 = !DILocation(line: 1394, column: 5, scope: !2662, inlinedAt: !2703)
!3456 = !DILocation(line: 1411, column: 33, scope: !2662, inlinedAt: !2703)
!3457 = !DILocation(line: 1411, column: 62, scope: !2662, inlinedAt: !2703)
!3458 = !DILocalVariable(name: "a", arg: 1, scope: !3459, file: !29, line: 32, type: !11)
!3459 = distinct !DISubprogram(name: "gcd", scope: !29, file: !29, line: 32, type: !3460, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!11, !11, !11}
!3462 = !{!3458, !3463, !3464}
!3463 = !DILocalVariable(name: "b", arg: 2, scope: !3459, file: !29, line: 32, type: !11)
!3464 = !DILocalVariable(name: "c", scope: !3465, file: !29, line: 36, type: !11)
!3465 = distinct !DILexicalBlock(scope: !3459, file: !29, line: 35, column: 5)
!3466 = !DILocation(line: 0, scope: !3459, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 1411, column: 57, scope: !2662, inlinedAt: !2703)
!3468 = !DILocation(line: 34, column: 5, scope: !3459, inlinedAt: !3467)
!3469 = !DILocation(line: 36, column: 23, scope: !3465, inlinedAt: !3467)
!3470 = !DILocation(line: 0, scope: !3465, inlinedAt: !3467)
!3471 = !DILocation(line: 37, column: 14, scope: !3472, inlinedAt: !3467)
!3472 = distinct !DILexicalBlock(scope: !3465, file: !29, line: 37, column: 13)
!3473 = !DILocation(line: 1411, column: 55, scope: !2662, inlinedAt: !2703)
!3474 = !DILocation(line: 1415, column: 31, scope: !2662, inlinedAt: !2703)
!3475 = !DILocation(line: 1415, column: 43, scope: !2662, inlinedAt: !2703)
!3476 = !DILocation(line: 1415, column: 21, scope: !2662, inlinedAt: !2703)
!3477 = distinct !DIAssignID()
!3478 = !DILocation(line: 1416, column: 27, scope: !2662, inlinedAt: !2703)
!3479 = !DILocation(line: 1416, column: 49, scope: !2662, inlinedAt: !2703)
!3480 = !DILocation(line: 1416, column: 21, scope: !2662, inlinedAt: !2703)
!3481 = !DILocation(line: 1417, column: 21, scope: !2662, inlinedAt: !2703)
!3482 = !DILocation(line: 1418, column: 25, scope: !3483, inlinedAt: !2703)
!3483 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1418, column: 9)
!3484 = !DILocation(line: 0, scope: !3483, inlinedAt: !2703)
!3485 = !DILocation(line: 1418, column: 30, scope: !3483, inlinedAt: !2703)
!3486 = !DILocation(line: 1421, column: 26, scope: !2662, inlinedAt: !2703)
!3487 = distinct !DIAssignID()
!3488 = !DILocation(line: 1422, column: 25, scope: !2662, inlinedAt: !2703)
!3489 = !DILocation(line: 1419, column: 33, scope: !3483, inlinedAt: !2703)
!3490 = !DILocation(line: 1418, column: 9, scope: !2662, inlinedAt: !2703)
!3491 = distinct !DIAssignID()
!3492 = !DILocation(line: 1422, column: 67, scope: !2662, inlinedAt: !2703)
!3493 = !DILocalVariable(name: "v", arg: 1, scope: !3494, file: !1577, line: 200, type: !7)
!3494 = distinct !DISubprogram(name: "x264_clip3", scope: !1577, file: !1577, line: 200, type: !3495, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!7, !7, !7, !7}
!3497 = !{!3493, !3498, !3499}
!3498 = !DILocalVariable(name: "i_min", arg: 2, scope: !3494, file: !1577, line: 200, type: !7)
!3499 = !DILocalVariable(name: "i_max", arg: 3, scope: !3494, file: !1577, line: 200, type: !7)
!3500 = !DILocation(line: 0, scope: !3494, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 1422, column: 41, scope: !2662, inlinedAt: !2703)
!3502 = !DILocation(line: 202, column: 17, scope: !3494, inlinedAt: !3501)
!3503 = !DILocation(line: 202, column: 14, scope: !3494, inlinedAt: !3501)
!3504 = !DILocation(line: 1425, column: 14, scope: !3505, inlinedAt: !2703)
!3505 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1425, column: 9)
!3506 = !DILocation(line: 1425, column: 9, scope: !3505, inlinedAt: !2703)
!3507 = !DILocation(line: 1425, column: 25, scope: !3505, inlinedAt: !2703)
!3508 = !DILocation(line: 1427, column: 16, scope: !3509, inlinedAt: !2703)
!3509 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 1426, column: 5)
!3510 = !DILocation(line: 1427, column: 29, scope: !3509, inlinedAt: !2703)
!3511 = distinct !DIAssignID()
!3512 = !DILocation(line: 1428, column: 21, scope: !3509, inlinedAt: !2703)
!3513 = !DILocation(line: 1429, column: 40, scope: !3509, inlinedAt: !2703)
!3514 = !DILocation(line: 1429, column: 31, scope: !3509, inlinedAt: !2703)
!3515 = distinct !DIAssignID()
!3516 = !DILocation(line: 1430, column: 26, scope: !3517, inlinedAt: !2703)
!3517 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 1430, column: 13)
!3518 = !DILocation(line: 1430, column: 19, scope: !3517, inlinedAt: !2703)
!3519 = !DILocation(line: 1430, column: 48, scope: !3517, inlinedAt: !2703)
!3520 = !DILocation(line: 1430, column: 36, scope: !3517, inlinedAt: !2703)
!3521 = !DILocation(line: 1430, column: 13, scope: !3517, inlinedAt: !2703)
!3522 = !DILocation(line: 1430, column: 13, scope: !3509, inlinedAt: !2703)
!3523 = !DILocation(line: 1432, column: 22, scope: !3524, inlinedAt: !2703)
!3524 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1431, column: 9)
!3525 = !DILocation(line: 1432, column: 13, scope: !3524, inlinedAt: !2703)
!3526 = !DILocation(line: 1433, column: 13, scope: !3524, inlinedAt: !2703)
!3527 = !DILocation(line: 1435, column: 40, scope: !3509, inlinedAt: !2703)
!3528 = !DILocation(line: 1435, column: 33, scope: !3509, inlinedAt: !2703)
!3529 = !DILocation(line: 1435, column: 50, scope: !3509, inlinedAt: !2703)
!3530 = !DILocation(line: 1435, column: 31, scope: !3509, inlinedAt: !2703)
!3531 = distinct !DIAssignID()
!3532 = !DILocation(line: 1436, column: 5, scope: !3509, inlinedAt: !2703)
!3533 = !DILocation(line: 1438, column: 15, scope: !3534, inlinedAt: !2703)
!3534 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1438, column: 9)
!3535 = !DILocation(line: 1438, column: 44, scope: !3534, inlinedAt: !2703)
!3536 = !DILocation(line: 1438, column: 9, scope: !2662, inlinedAt: !2703)
!3537 = !DILocation(line: 1440, column: 18, scope: !3538, inlinedAt: !2703)
!3538 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 1439, column: 5)
!3539 = !DILocation(line: 1440, column: 9, scope: !3538, inlinedAt: !2703)
!3540 = !DILocation(line: 1441, column: 15, scope: !3538, inlinedAt: !2703)
!3541 = !DILocation(line: 1441, column: 32, scope: !3538, inlinedAt: !2703)
!3542 = !DILocation(line: 1441, column: 9, scope: !3538, inlinedAt: !2703)
!3543 = !DILocation(line: 1442, column: 9, scope: !3538, inlinedAt: !2703)
!3544 = !DILocation(line: 1445, column: 5, scope: !2662, inlinedAt: !2703)
!3545 = !DILocation(line: 1447, column: 38, scope: !2662, inlinedAt: !2703)
!3546 = !DILocation(line: 1447, column: 53, scope: !2662, inlinedAt: !2703)
!3547 = !DILocation(line: 1449, column: 16, scope: !3548, inlinedAt: !2703)
!3548 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1449, column: 9)
!3549 = !DILocation(line: 1449, column: 32, scope: !3548, inlinedAt: !2703)
!3550 = !DILocation(line: 1449, column: 9, scope: !3548, inlinedAt: !2703)
!3551 = !DILocation(line: 1449, column: 9, scope: !2662, inlinedAt: !2703)
!3552 = !DILocation(line: 1451, column: 18, scope: !3553, inlinedAt: !2703)
!3553 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 1450, column: 5)
!3554 = !DILocation(line: 1451, column: 9, scope: !3553, inlinedAt: !2703)
!3555 = !DILocation(line: 1452, column: 15, scope: !3553, inlinedAt: !2703)
!3556 = !DILocation(line: 1452, column: 32, scope: !3553, inlinedAt: !2703)
!3557 = !DILocation(line: 1452, column: 9, scope: !3553, inlinedAt: !2703)
!3558 = !DILocation(line: 1453, column: 16, scope: !3553, inlinedAt: !2703)
!3559 = !DILocation(line: 1453, column: 33, scope: !3553, inlinedAt: !2703)
!3560 = !DILocation(line: 1453, column: 9, scope: !3553, inlinedAt: !2703)
!3561 = !DILocation(line: 1454, column: 9, scope: !3553, inlinedAt: !2703)
!3562 = !DILocation(line: 1458, column: 15, scope: !3563, inlinedAt: !2703)
!3563 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1458, column: 9)
!3564 = !DILocation(line: 1458, column: 43, scope: !3563, inlinedAt: !2703)
!3565 = !DILocation(line: 1458, column: 57, scope: !3563, inlinedAt: !2703)
!3566 = !DILocation(line: 1458, column: 73, scope: !3563, inlinedAt: !2703)
!3567 = !DILocation(line: 1458, column: 9, scope: !3563, inlinedAt: !2703)
!3568 = !DILocation(line: 1458, column: 9, scope: !2662, inlinedAt: !2703)
!3569 = !DILocation(line: 1460, column: 18, scope: !3570, inlinedAt: !2703)
!3570 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 1459, column: 5)
!3571 = !DILocation(line: 1460, column: 9, scope: !3570, inlinedAt: !2703)
!3572 = !DILocation(line: 1461, column: 9, scope: !3570, inlinedAt: !2703)
!3573 = !DILocation(line: 1464, column: 15, scope: !2662, inlinedAt: !2703)
!3574 = !DILocation(line: 1466, column: 39, scope: !2662, inlinedAt: !2703)
!3575 = !DILocation(line: 1466, column: 23, scope: !2662, inlinedAt: !2703)
!3576 = !DILocation(line: 1466, column: 63, scope: !2662, inlinedAt: !2703)
!3577 = !DILocation(line: 1466, column: 56, scope: !2662, inlinedAt: !2703)
!3578 = !DILocation(line: 1466, column: 54, scope: !2662, inlinedAt: !2703)
!3579 = !DILocation(line: 1466, column: 82, scope: !2662, inlinedAt: !2703)
!3580 = !DILocation(line: 1466, column: 75, scope: !2662, inlinedAt: !2703)
!3581 = !DILocation(line: 1466, column: 73, scope: !2662, inlinedAt: !2703)
!3582 = !DILocation(line: 1466, column: 106, scope: !2662, inlinedAt: !2703)
!3583 = !DILocation(line: 1466, column: 99, scope: !2662, inlinedAt: !2703)
!3584 = !DILocation(line: 1466, column: 97, scope: !2662, inlinedAt: !2703)
!3585 = !DILocation(line: 1467, column: 25, scope: !3586, inlinedAt: !2703)
!3586 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1467, column: 9)
!3587 = !DILocation(line: 1467, column: 9, scope: !2662, inlinedAt: !2703)
!3588 = !DILocation(line: 1469, column: 18, scope: !3589, inlinedAt: !2703)
!3589 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 1468, column: 5)
!3590 = !DILocation(line: 1469, column: 9, scope: !3589, inlinedAt: !2703)
!3591 = !DILocation(line: 1470, column: 9, scope: !3589, inlinedAt: !2703)
!3592 = !DILocation(line: 1473, column: 17, scope: !2694, inlinedAt: !2703)
!3593 = !DILocation(line: 1473, column: 10, scope: !2694, inlinedAt: !2703)
!3594 = !DILocation(line: 1473, column: 9, scope: !2662, inlinedAt: !2703)
!3595 = !DILocation(line: 1476, column: 9, scope: !2693, inlinedAt: !2703)
!3596 = !DILocation(line: 1477, column: 9, scope: !2693, inlinedAt: !2703)
!3597 = !DILocation(line: 1479, column: 13, scope: !3598, inlinedAt: !2703)
!3598 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 1479, column: 13)
!3599 = !DILocation(line: 1479, column: 57, scope: !3598, inlinedAt: !2703)
!3600 = !DILocation(line: 1479, column: 13, scope: !2693, inlinedAt: !2703)
!3601 = !DILocation(line: 1481, column: 22, scope: !3602, inlinedAt: !2703)
!3602 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 1480, column: 9)
!3603 = !DILocation(line: 1481, column: 13, scope: !3602, inlinedAt: !2703)
!3604 = !DILocation(line: 1487, column: 5, scope: !2694, inlinedAt: !2703)
!3605 = !DILocation(line: 1485, column: 30, scope: !3606, inlinedAt: !2703)
!3606 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 1485, column: 13)
!3607 = !DILocation(line: 1485, column: 50, scope: !3606, inlinedAt: !2703)
!3608 = !DILocation(line: 1485, column: 56, scope: !3606, inlinedAt: !2703)
!3609 = !DILocation(line: 1485, column: 23, scope: !3606, inlinedAt: !2703)
!3610 = !DILocation(line: 1485, column: 67, scope: !3606, inlinedAt: !2703)
!3611 = !DILocation(line: 1399, column: 13, scope: !2662, inlinedAt: !2703)
!3612 = !DILocation(line: 1489, column: 14, scope: !3613, inlinedAt: !2703)
!3613 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1489, column: 9)
!3614 = !DILocation(line: 1489, column: 9, scope: !3613, inlinedAt: !2703)
!3615 = !DILocation(line: 1489, column: 9, scope: !2662, inlinedAt: !2703)
!3616 = !DILocation(line: 1490, column: 9, scope: !3613, inlinedAt: !2703)
!3617 = !DILocation(line: 1493, column: 69, scope: !2698, inlinedAt: !2703)
!3618 = !DILocation(line: 1493, column: 85, scope: !2698, inlinedAt: !2703)
!3619 = !DILocation(line: 1493, column: 5, scope: !2699, inlinedAt: !2703)
!3620 = !DILocation(line: 1495, column: 19, scope: !3621, inlinedAt: !2703)
!3621 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1495, column: 13)
!3622 = !DILocation(line: 1495, column: 42, scope: !3621, inlinedAt: !2703)
!3623 = !DILocation(line: 1495, column: 62, scope: !3621, inlinedAt: !2703)
!3624 = !DILocation(line: 1495, column: 13, scope: !3621, inlinedAt: !2703)
!3625 = !DILocation(line: 1495, column: 13, scope: !2697, inlinedAt: !2703)
!3626 = !DILocation(line: 1495, column: 55, scope: !3621, inlinedAt: !2703)
!3627 = !DILocation(line: 1498, column: 21, scope: !3628, inlinedAt: !2703)
!3628 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1498, column: 13)
!3629 = !DILocation(line: 1498, column: 14, scope: !3628, inlinedAt: !2703)
!3630 = !DILocation(line: 1498, column: 13, scope: !2697, inlinedAt: !2703)
!3631 = !DILocation(line: 1510, column: 34, scope: !2697, inlinedAt: !2703)
!3632 = !DILocation(line: 1499, column: 23, scope: !3628, inlinedAt: !2703)
!3633 = distinct !DIAssignID()
!3634 = !DILocation(line: 1501, column: 18, scope: !3635, inlinedAt: !2703)
!3635 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1501, column: 13)
!3636 = !DILocation(line: 1501, column: 13, scope: !3635, inlinedAt: !2703)
!3637 = !DILocation(line: 1501, column: 29, scope: !3635, inlinedAt: !2703)
!3638 = !DILocation(line: 1503, column: 71, scope: !3639, inlinedAt: !2703)
!3639 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1502, column: 9)
!3640 = !DILocation(line: 1503, column: 59, scope: !3639, inlinedAt: !2703)
!3641 = !DILocation(line: 1503, column: 32, scope: !3639, inlinedAt: !2703)
!3642 = !DILocation(line: 1503, column: 30, scope: !3639, inlinedAt: !2703)
!3643 = distinct !DIAssignID()
!3644 = !DILocation(line: 1504, column: 49, scope: !3639, inlinedAt: !2703)
!3645 = !DILocation(line: 1504, column: 25, scope: !3639, inlinedAt: !2703)
!3646 = !DILocation(line: 1504, column: 23, scope: !3639, inlinedAt: !2703)
!3647 = distinct !DIAssignID()
!3648 = !DILocation(line: 1505, column: 29, scope: !3639, inlinedAt: !2703)
!3649 = !DILocation(line: 1505, column: 26, scope: !3639, inlinedAt: !2703)
!3650 = !DILocation(line: 1506, column: 9, scope: !3639, inlinedAt: !2703)
!3651 = !DILocation(line: 1507, column: 23, scope: !3652, inlinedAt: !2703)
!3652 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1507, column: 18)
!3653 = !DILocation(line: 1507, column: 18, scope: !3652, inlinedAt: !2703)
!3654 = !DILocation(line: 1507, column: 18, scope: !3635, inlinedAt: !2703)
!3655 = !DILocation(line: 1508, column: 36, scope: !3652, inlinedAt: !2703)
!3656 = !DILocation(line: 1508, column: 81, scope: !3652, inlinedAt: !2703)
!3657 = !DILocation(line: 1508, column: 25, scope: !3652, inlinedAt: !2703)
!3658 = !DILocation(line: 1508, column: 23, scope: !3652, inlinedAt: !2703)
!3659 = distinct !DIAssignID()
!3660 = !DILocation(line: 1508, column: 13, scope: !3652, inlinedAt: !2703)
!3661 = !DILocation(line: 1510, column: 40, scope: !2697, inlinedAt: !2703)
!3662 = !DILocation(line: 0, scope: !2697, inlinedAt: !2703)
!3663 = !DILocation(line: 1512, column: 23, scope: !3664, inlinedAt: !2703)
!3664 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1512, column: 13)
!3665 = !DILocation(line: 1512, column: 13, scope: !2697, inlinedAt: !2703)
!3666 = !DILocation(line: 1514, column: 24, scope: !3667, inlinedAt: !2703)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 1514, column: 17)
!3668 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 1513, column: 9)
!3669 = !DILocation(line: 1514, column: 36, scope: !3667, inlinedAt: !2703)
!3670 = !DILocation(line: 1514, column: 17, scope: !3668, inlinedAt: !2703)
!3671 = !DILocation(line: 1516, column: 40, scope: !3672, inlinedAt: !2703)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !3, line: 1516, column: 21)
!3673 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 1515, column: 13)
!3674 = !DILocation(line: 1516, column: 58, scope: !3672, inlinedAt: !2703)
!3675 = !DILocation(line: 1517, column: 30, scope: !3672, inlinedAt: !2703)
!3676 = !DILocation(line: 1518, column: 63, scope: !3672, inlinedAt: !2703)
!3677 = !DILocation(line: 1517, column: 21, scope: !3672, inlinedAt: !2703)
!3678 = !DILocation(line: 1519, column: 42, scope: !3679, inlinedAt: !2703)
!3679 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 1519, column: 26)
!3680 = !DILocation(line: 1519, column: 26, scope: !3672, inlinedAt: !2703)
!3681 = !DILocation(line: 1520, column: 30, scope: !3679, inlinedAt: !2703)
!3682 = !DILocation(line: 1520, column: 21, scope: !3679, inlinedAt: !2703)
!3683 = !DILocation(line: 1521, column: 32, scope: !3673, inlinedAt: !2703)
!3684 = !DILocation(line: 1522, column: 13, scope: !3673, inlinedAt: !2703)
!3685 = !DILocation(line: 1523, column: 37, scope: !3668, inlinedAt: !2703)
!3686 = !DILocation(line: 1523, column: 23, scope: !3668, inlinedAt: !2703)
!3687 = distinct !DIAssignID()
!3688 = !DILocation(line: 1524, column: 36, scope: !3668, inlinedAt: !2703)
!3689 = !DILocation(line: 1525, column: 9, scope: !3668, inlinedAt: !2703)
!3690 = !DILocation(line: 1528, column: 27, scope: !2697, inlinedAt: !2703)
!3691 = !DILocation(line: 1529, column: 18, scope: !3692, inlinedAt: !2703)
!3692 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1529, column: 13)
!3693 = !DILocation(line: 1529, column: 13, scope: !3692, inlinedAt: !2703)
!3694 = !DILocation(line: 1529, column: 13, scope: !2697, inlinedAt: !2703)
!3695 = !DILocation(line: 1530, column: 49, scope: !3692, inlinedAt: !2703)
!3696 = !DILocation(line: 1530, column: 78, scope: !3692, inlinedAt: !2703)
!3697 = !DILocation(line: 1530, column: 63, scope: !3692, inlinedAt: !2703)
!3698 = !DILocation(line: 1530, column: 102, scope: !3692, inlinedAt: !2703)
!3699 = !DILocation(line: 1530, column: 95, scope: !3692, inlinedAt: !2703)
!3700 = !DILocation(line: 1530, column: 93, scope: !3692, inlinedAt: !2703)
!3701 = !DILocation(line: 1530, column: 60, scope: !3692, inlinedAt: !2703)
!3702 = !DILocation(line: 1530, column: 118, scope: !3692, inlinedAt: !2703)
!3703 = !DILocation(line: 1530, column: 13, scope: !3692, inlinedAt: !2703)
!3704 = !DILocation(line: 1532, column: 18, scope: !2726, inlinedAt: !2703)
!3705 = !DILocation(line: 1532, column: 13, scope: !2726, inlinedAt: !2703)
!3706 = !DILocation(line: 1532, column: 13, scope: !2697, inlinedAt: !2703)
!3707 = !DILocation(line: 1533, column: 53, scope: !2726, inlinedAt: !2703)
!3708 = !DILocation(line: 1533, column: 46, scope: !2726, inlinedAt: !2703)
!3709 = !DILocation(line: 1300, column: 5, scope: !2713, inlinedAt: !2725)
!3710 = !DILocation(line: 1300, column: 9, scope: !2713, inlinedAt: !2725)
!3711 = distinct !DIAssignID()
!3712 = !DILocation(line: 1301, column: 5, scope: !2713, inlinedAt: !2725)
!3713 = !DILocation(line: 1303, column: 16, scope: !2713, inlinedAt: !2725)
!3714 = !DILocation(line: 1303, column: 5, scope: !2713, inlinedAt: !2725)
!3715 = !DILocation(line: 1305, column: 32, scope: !3716, inlinedAt: !2725)
!3716 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1304, column: 5)
!3717 = !DILocation(line: 1305, column: 20, scope: !3716, inlinedAt: !2725)
!3718 = !DILocation(line: 1306, column: 28, scope: !3716, inlinedAt: !2725)
!3719 = !DILocation(line: 1306, column: 15, scope: !3716, inlinedAt: !2725)
!3720 = !DILocation(line: 1307, column: 13, scope: !3721, inlinedAt: !2725)
!3721 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1307, column: 13)
!3722 = !DILocation(line: 1307, column: 17, scope: !3721, inlinedAt: !2725)
!3723 = !DILocation(line: 1307, column: 27, scope: !3721, inlinedAt: !2725)
!3724 = !DILocation(line: 1309, column: 25, scope: !3725, inlinedAt: !2725)
!3725 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 1308, column: 9)
!3726 = distinct !DIAssignID()
!3727 = !DILocation(line: 1310, column: 28, scope: !3725, inlinedAt: !2725)
!3728 = distinct !DIAssignID()
!3729 = !DILocation(line: 1311, column: 25, scope: !3725, inlinedAt: !2725)
!3730 = !DILocation(line: 1311, column: 13, scope: !3725, inlinedAt: !2725)
!3731 = !DILocation(line: 1312, column: 13, scope: !3725, inlinedAt: !2725)
!3732 = !DILocation(line: 1314, column: 17, scope: !3733, inlinedAt: !2725)
!3733 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1314, column: 13)
!3734 = !DILocation(line: 1314, column: 27, scope: !3733, inlinedAt: !2725)
!3735 = distinct !{!3735, !3714, !3736}
!3736 = !DILocation(line: 1332, column: 5, scope: !2713, inlinedAt: !2725)
!3737 = !DILocation(line: 1316, column: 26, scope: !3716, inlinedAt: !2725)
!3738 = !DILocation(line: 1316, column: 28, scope: !3716, inlinedAt: !2725)
!3739 = !DILocation(line: 1316, column: 24, scope: !3716, inlinedAt: !2725)
!3740 = distinct !DIAssignID()
!3741 = !DILocation(line: 1317, column: 18, scope: !3742, inlinedAt: !2725)
!3742 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1317, column: 18)
!3743 = !DILocation(line: 1317, column: 18, scope: !3716, inlinedAt: !2725)
!3744 = !DILocation(line: 1318, column: 32, scope: !3745, inlinedAt: !2725)
!3745 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 1318, column: 18)
!3746 = !DILocation(line: 1319, column: 32, scope: !3747, inlinedAt: !2725)
!3747 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 1319, column: 18)
!3748 = !DILocation(line: 1320, column: 32, scope: !3749, inlinedAt: !2725)
!3749 = distinct !DILexicalBlock(scope: !3747, file: !3, line: 1320, column: 18)
!3750 = !DILocation(line: 1321, column: 32, scope: !3751, inlinedAt: !2725)
!3751 = distinct !DILexicalBlock(scope: !3749, file: !3, line: 1321, column: 18)
!3752 = !DILocation(line: 0, scope: !3742, inlinedAt: !2725)
!3753 = distinct !DIAssignID()
!3754 = !DILocation(line: 1323, column: 17, scope: !3755, inlinedAt: !2725)
!3755 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1323, column: 13)
!3756 = !DILocation(line: 1323, column: 22, scope: !3755, inlinedAt: !2725)
!3757 = !DILocation(line: 1325, column: 22, scope: !3758, inlinedAt: !2725)
!3758 = distinct !DILexicalBlock(scope: !3755, file: !3, line: 1324, column: 9)
!3759 = !DILocation(line: 1325, column: 13, scope: !3758, inlinedAt: !2725)
!3760 = !DILocation(line: 1326, column: 26, scope: !3758, inlinedAt: !2725)
!3761 = !DILocation(line: 1326, column: 13, scope: !3758, inlinedAt: !2725)
!3762 = !DILocation(line: 1327, column: 25, scope: !3758, inlinedAt: !2725)
!3763 = distinct !DIAssignID()
!3764 = !DILocation(line: 1328, column: 25, scope: !3758, inlinedAt: !2725)
!3765 = distinct !DIAssignID()
!3766 = !DILocation(line: 1329, column: 28, scope: !3758, inlinedAt: !2725)
!3767 = distinct !DIAssignID()
!3768 = !DILocation(line: 1330, column: 13, scope: !3758, inlinedAt: !2725)
!3769 = !DILocation(line: 1333, column: 1, scope: !2713, inlinedAt: !2725)
!3770 = !DILocation(line: 1533, column: 13, scope: !2726, inlinedAt: !2703)
!3771 = !DILocation(line: 1537, column: 24, scope: !3772, inlinedAt: !2703)
!3772 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1535, column: 9)
!3773 = distinct !DIAssignID()
!3774 = !DILocation(line: 1538, column: 27, scope: !3772, inlinedAt: !2703)
!3775 = distinct !DIAssignID()
!3776 = !DILocation(line: 1542, column: 46, scope: !2697, inlinedAt: !2703)
!3777 = !DILocation(line: 1341, column: 5, scope: !1571, inlinedAt: !2708)
!3778 = !DILocation(line: 1342, column: 5, scope: !1571, inlinedAt: !2708)
!3779 = !DILocation(line: 1343, column: 5, scope: !1571, inlinedAt: !2708)
!3780 = !DILocation(line: 1346, column: 20, scope: !1571, inlinedAt: !2708)
!3781 = !DILocation(line: 1348, column: 22, scope: !3782, inlinedAt: !2708)
!3782 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 1348, column: 9)
!3783 = !DILocation(line: 1348, column: 9, scope: !1571, inlinedAt: !2708)
!3784 = !DILocation(line: 1350, column: 18, scope: !3785, inlinedAt: !2708)
!3785 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 1349, column: 5)
!3786 = !DILocation(line: 1350, column: 9, scope: !3785, inlinedAt: !2708)
!3787 = !DILocation(line: 1361, column: 1, scope: !1571, inlinedAt: !2708)
!3788 = !DILocation(line: 1543, column: 13, scope: !2697, inlinedAt: !2703)
!3789 = !DILocation(line: 1354, column: 9, scope: !3790, inlinedAt: !2708)
!3790 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 1354, column: 9)
!3791 = !DILocation(line: 1354, column: 9, scope: !1571, inlinedAt: !2708)
!3792 = !DILocation(line: 1546, column: 13, scope: !2697, inlinedAt: !2703)
!3793 = !DILocation(line: 1356, column: 31, scope: !3794, inlinedAt: !2708)
!3794 = distinct !DILexicalBlock(scope: !3790, file: !3, line: 1355, column: 5)
!3795 = !DILocation(line: 1356, column: 50, scope: !3794, inlinedAt: !2708)
!3796 = !DILocation(line: 1356, column: 57, scope: !3794, inlinedAt: !2708)
!3797 = !DILocation(line: 1356, column: 24, scope: !3794, inlinedAt: !2708)
!3798 = !DILocation(line: 1543, column: 26, scope: !3799, inlinedAt: !2703)
!3799 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1543, column: 13)
!3800 = !DILocation(line: 1545, column: 19, scope: !2697, inlinedAt: !2703)
!3801 = !DILocation(line: 1545, column: 16, scope: !2697, inlinedAt: !2703)
!3802 = !DILocation(line: 1546, column: 13, scope: !3803, inlinedAt: !2703)
!3803 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1546, column: 13)
!3804 = !DILocation(line: 0, scope: !2699, inlinedAt: !2703)
!3805 = !DILocation(line: 1553, column: 16, scope: !2697, inlinedAt: !2703)
!3806 = !DILocation(line: 1555, column: 19, scope: !3807, inlinedAt: !2703)
!3807 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1555, column: 13)
!3808 = !DILocation(line: 1555, column: 13, scope: !3807, inlinedAt: !2703)
!3809 = !DILocation(line: 1555, column: 33, scope: !3807, inlinedAt: !2703)
!3810 = !DILocation(line: 1555, column: 68, scope: !3807, inlinedAt: !2703)
!3811 = !DILocation(line: 1555, column: 36, scope: !3807, inlinedAt: !2703)
!3812 = !DILocation(line: 1555, column: 13, scope: !2697, inlinedAt: !2703)
!3813 = !DILocation(line: 1559, column: 18, scope: !3814, inlinedAt: !2703)
!3814 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1559, column: 13)
!3815 = !DILocation(line: 1559, column: 13, scope: !3814, inlinedAt: !2703)
!3816 = !DILocation(line: 1559, column: 29, scope: !3814, inlinedAt: !2703)
!3817 = !DILocation(line: 1559, column: 47, scope: !3814, inlinedAt: !2703)
!3818 = !DILocation(line: 1559, column: 67, scope: !3814, inlinedAt: !2703)
!3819 = !DILocation(line: 1559, column: 72, scope: !3814, inlinedAt: !2703)
!3820 = !DILocalVariable(name: "i_start", arg: 1, scope: !3821, file: !3, line: 1363, type: !11)
!3821 = distinct !DISubprogram(name: "Print_status", scope: !3, file: !3, line: 1363, type: !3822, scopeLine: 1364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3824)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{null, !11, !7, !7, !11, !78, !11}
!3824 = !{!3820, !3825, !3826, !3827, !3828, !3829, !3830, !3834, !3835, !3836}
!3825 = !DILocalVariable(name: "i_frame", arg: 2, scope: !3821, file: !3, line: 1363, type: !7)
!3826 = !DILocalVariable(name: "i_frame_total", arg: 3, scope: !3821, file: !3, line: 1363, type: !7)
!3827 = !DILocalVariable(name: "i_file", arg: 4, scope: !3821, file: !3, line: 1363, type: !11)
!3828 = !DILocalVariable(name: "param", arg: 5, scope: !3821, file: !3, line: 1363, type: !78)
!3829 = !DILocalVariable(name: "last_ts", arg: 6, scope: !3821, file: !3, line: 1363, type: !11)
!3830 = !DILocalVariable(name: "buf", scope: !3821, file: !3, line: 1365, type: !3831)
!3831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1600, elements: !3832)
!3832 = !{!3833}
!3833 = !DISubrange(count: 200)
!3834 = !DILocalVariable(name: "i_elapsed", scope: !3821, file: !3, line: 1366, type: !11)
!3835 = !DILocalVariable(name: "fps", scope: !3821, file: !3, line: 1367, type: !5)
!3836 = !DILocalVariable(name: "bitrate", scope: !3821, file: !3, line: 1368, type: !5)
!3837 = !DILocation(line: 0, scope: !3821, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 1560, column: 13, scope: !3814, inlinedAt: !2703)
!3839 = !DILocation(line: 1366, column: 25, scope: !3821, inlinedAt: !3838)
!3840 = !DILocation(line: 1560, column: 13, scope: !3814, inlinedAt: !2703)
!3841 = !DILocation(line: 1493, column: 38, scope: !2699, inlinedAt: !2703)
!3842 = !DILocation(line: 1563, column: 25, scope: !2662, inlinedAt: !2703)
!3843 = !DILocation(line: 1563, column: 22, scope: !2662, inlinedAt: !2703)
!3844 = !DILocation(line: 1563, column: 5, scope: !2662, inlinedAt: !2703)
!3845 = !DILocation(line: 1566, column: 46, scope: !2661, inlinedAt: !2703)
!3846 = !DILocation(line: 1341, column: 5, scope: !1571, inlinedAt: !2660)
!3847 = !DILocation(line: 1342, column: 5, scope: !1571, inlinedAt: !2660)
!3848 = !DILocation(line: 1343, column: 5, scope: !1571, inlinedAt: !2660)
!3849 = !DILocation(line: 1346, column: 20, scope: !1571, inlinedAt: !2660)
!3850 = !DILocation(line: 1348, column: 22, scope: !3782, inlinedAt: !2660)
!3851 = !DILocation(line: 1348, column: 9, scope: !1571, inlinedAt: !2660)
!3852 = !DILocation(line: 1350, column: 18, scope: !3785, inlinedAt: !2660)
!3853 = !DILocation(line: 1350, column: 9, scope: !3785, inlinedAt: !2660)
!3854 = !DILocation(line: 1361, column: 1, scope: !1571, inlinedAt: !2660)
!3855 = !DILocation(line: 1567, column: 13, scope: !2661, inlinedAt: !2703)
!3856 = !DILocation(line: 1354, column: 9, scope: !3790, inlinedAt: !2660)
!3857 = !DILocation(line: 1354, column: 9, scope: !1571, inlinedAt: !2660)
!3858 = !DILocation(line: 1570, column: 13, scope: !2661, inlinedAt: !2703)
!3859 = !DILocation(line: 1356, column: 31, scope: !3794, inlinedAt: !2660)
!3860 = !DILocation(line: 1356, column: 50, scope: !3794, inlinedAt: !2660)
!3861 = !DILocation(line: 1356, column: 57, scope: !3794, inlinedAt: !2660)
!3862 = !DILocation(line: 1356, column: 24, scope: !3794, inlinedAt: !2660)
!3863 = !DILocation(line: 1567, column: 26, scope: !3864, inlinedAt: !2703)
!3864 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 1567, column: 13)
!3865 = !DILocation(line: 1569, column: 19, scope: !2661, inlinedAt: !2703)
!3866 = !DILocation(line: 1569, column: 16, scope: !2661, inlinedAt: !2703)
!3867 = !DILocation(line: 1570, column: 13, scope: !3868, inlinedAt: !2703)
!3868 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 1570, column: 13)
!3869 = !DILocation(line: 1576, column: 18, scope: !3870, inlinedAt: !2703)
!3870 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 1576, column: 13)
!3871 = !DILocation(line: 1576, column: 13, scope: !3870, inlinedAt: !2703)
!3872 = !DILocation(line: 1576, column: 29, scope: !3870, inlinedAt: !2703)
!3873 = !DILocation(line: 1576, column: 47, scope: !3870, inlinedAt: !2703)
!3874 = !DILocation(line: 1576, column: 67, scope: !3870, inlinedAt: !2703)
!3875 = !DILocation(line: 1576, column: 72, scope: !3870, inlinedAt: !2703)
!3876 = !DILocation(line: 0, scope: !3821, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 1577, column: 13, scope: !3870, inlinedAt: !2703)
!3878 = !DILocation(line: 1366, column: 25, scope: !3821, inlinedAt: !3877)
!3879 = !DILocation(line: 1577, column: 13, scope: !3870, inlinedAt: !2703)
!3880 = distinct !{!3880, !3844, !3881}
!3881 = !DILocation(line: 1578, column: 5, scope: !2662, inlinedAt: !2703)
!3882 = !DILocation(line: 1579, column: 25, scope: !3883, inlinedAt: !2703)
!3883 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1579, column: 9)
!3884 = !DILocation(line: 1579, column: 44, scope: !3883, inlinedAt: !2703)
!3885 = !DILocation(line: 1580, column: 18, scope: !3883, inlinedAt: !2703)
!3886 = !DILocation(line: 1580, column: 102, scope: !3883, inlinedAt: !2703)
!3887 = !DILocation(line: 1580, column: 9, scope: !3883, inlinedAt: !2703)
!3888 = !DILocation(line: 1583, column: 24, scope: !3889, inlinedAt: !2703)
!3889 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1583, column: 9)
!3890 = !DILocation(line: 1583, column: 9, scope: !2662, inlinedAt: !2703)
!3891 = !DILocation(line: 1584, column: 35, scope: !3889, inlinedAt: !2703)
!3892 = !DILocation(line: 1584, column: 20, scope: !3889, inlinedAt: !2703)
!3893 = !DILocation(line: 1584, column: 9, scope: !3889, inlinedAt: !2703)
!3894 = !DILocation(line: 1588, column: 31, scope: !3895, inlinedAt: !2703)
!3895 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 1585, column: 14)
!3896 = !DILocation(line: 1588, column: 45, scope: !3895, inlinedAt: !2703)
!3897 = !DILocation(line: 1588, column: 20, scope: !3895, inlinedAt: !2703)
!3898 = !DILocation(line: 1588, column: 76, scope: !3895, inlinedAt: !2703)
!3899 = !DILocation(line: 1588, column: 69, scope: !3895, inlinedAt: !2703)
!3900 = !DILocation(line: 1588, column: 67, scope: !3895, inlinedAt: !2703)
!3901 = !DILocation(line: 0, scope: !3889, inlinedAt: !2703)
!3902 = !DILocation(line: 1589, column: 16, scope: !3903, inlinedAt: !2703)
!3903 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1589, column: 9)
!3904 = !DILocation(line: 1589, column: 11, scope: !3903, inlinedAt: !2703)
!3905 = !DILocation(line: 1589, column: 27, scope: !3903, inlinedAt: !2703)
!3906 = !DILocation(line: 1592, column: 13, scope: !2662, inlinedAt: !2703)
!3907 = !DILocation(line: 1593, column: 11, scope: !2662, inlinedAt: !2703)
!3908 = !DILocation(line: 1593, column: 5, scope: !2662, inlinedAt: !2703)
!3909 = !DILocation(line: 1595, column: 14, scope: !3910, inlinedAt: !2703)
!3910 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1595, column: 9)
!3911 = !DILocation(line: 1595, column: 9, scope: !3910, inlinedAt: !2703)
!3912 = !DILocation(line: 1595, column: 9, scope: !2662, inlinedAt: !2703)
!3913 = !DILocation(line: 1596, column: 18, scope: !3910, inlinedAt: !2703)
!3914 = !DILocation(line: 1596, column: 9, scope: !3910, inlinedAt: !2703)
!3915 = !DILocation(line: 1597, column: 5, scope: !2662, inlinedAt: !2703)
!3916 = !DILocation(line: 1598, column: 14, scope: !2662, inlinedAt: !2703)
!3917 = !DILocation(line: 1598, column: 5, scope: !2662, inlinedAt: !2703)
!3918 = !DILocation(line: 1603, column: 14, scope: !3919, inlinedAt: !2703)
!3919 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1603, column: 9)
!3920 = !DILocation(line: 1603, column: 9, scope: !3919, inlinedAt: !2703)
!3921 = !DILocation(line: 1603, column: 9, scope: !2662, inlinedAt: !2703)
!3922 = !DILocation(line: 1605, column: 9, scope: !3923, inlinedAt: !2703)
!3923 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 1604, column: 5)
!3924 = !DILocation(line: 1606, column: 25, scope: !3923, inlinedAt: !2703)
!3925 = distinct !DIAssignID()
!3926 = !DILocation(line: 1607, column: 5, scope: !3923, inlinedAt: !2703)
!3927 = !DILocation(line: 1609, column: 11, scope: !2662, inlinedAt: !2703)
!3928 = !DILocation(line: 1609, column: 28, scope: !2662, inlinedAt: !2703)
!3929 = !DILocation(line: 1609, column: 5, scope: !2662, inlinedAt: !2703)
!3930 = !DILocation(line: 1610, column: 12, scope: !2662, inlinedAt: !2703)
!3931 = !DILocation(line: 1610, column: 29, scope: !2662, inlinedAt: !2703)
!3932 = !DILocation(line: 1610, column: 5, scope: !2662, inlinedAt: !2703)
!3933 = !DILocation(line: 1612, column: 24, scope: !2702, inlinedAt: !2703)
!3934 = !DILocation(line: 1612, column: 9, scope: !2662, inlinedAt: !2703)
!3935 = !DILocation(line: 1614, column: 22, scope: !2701, inlinedAt: !2703)
!3936 = !DILocation(line: 1614, column: 45, scope: !2701, inlinedAt: !2703)
!3937 = !DILocation(line: 1615, column: 38, scope: !2701, inlinedAt: !2703)
!3938 = !DILocation(line: 1615, column: 22, scope: !2701, inlinedAt: !2703)
!3939 = !DILocation(line: 1614, column: 63, scope: !2701, inlinedAt: !2703)
!3940 = !DILocation(line: 0, scope: !2701, inlinedAt: !2703)
!3941 = !DILocation(line: 1617, column: 18, scope: !2701, inlinedAt: !2703)
!3942 = !DILocation(line: 1618, column: 18, scope: !2701, inlinedAt: !2703)
!3943 = !DILocation(line: 1618, column: 34, scope: !2701, inlinedAt: !2703)
!3944 = !DILocation(line: 1618, column: 47, scope: !2701, inlinedAt: !2703)
!3945 = !DILocation(line: 1618, column: 38, scope: !2701, inlinedAt: !2703)
!3946 = !DILocation(line: 1617, column: 9, scope: !2701, inlinedAt: !2703)
!3947 = !DILocation(line: 1619, column: 5, scope: !2701, inlinedAt: !2703)
!3948 = !DILocation(line: 1622, column: 1, scope: !2662, inlinedAt: !2703)
!3949 = !DILocation(line: 183, column: 5, scope: !1495)
!3950 = !DILocation(line: 184, column: 1, scope: !1495)
!3951 = !DISubprogram(name: "x264_param_default", scope: !68, file: !68, line: 407, type: !3952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{null, !78}
!3954 = !DISubprogram(name: "getopt_long", scope: !718, file: !718, line: 150, type: !3955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!7, !7, !3957, !142, !3959, !723}
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!3961 = !DISubprogram(name: "strcmp", scope: !3962, file: !3962, line: 156, type: !3963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3962 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!7, !142, !142}
!3965 = !DISubprogram(name: "x264_param_default_preset", scope: !68, file: !68, line: 456, type: !3966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!7, !78, !142, !142}
!3968 = distinct !DISubprogram(name: "Help", scope: !3, file: !3, line: 208, type: !3969, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3971)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{null, !78, !7}
!3971 = !{!3972, !3973, !3974}
!3972 = !DILocalVariable(name: "defaults", arg: 1, scope: !3968, file: !3, line: 208, type: !78)
!3973 = !DILocalVariable(name: "longhelp", arg: 2, scope: !3968, file: !3, line: 208, type: !7)
!3974 = !DILocalVariable(name: "buf", scope: !3968, file: !3, line: 210, type: !3975)
!3975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 400, elements: !3976)
!3976 = !{!3977}
!3977 = !DISubrange(count: 50)
!3978 = distinct !DIAssignID()
!3979 = !DILocation(line: 0, scope: !3968)
!3980 = !DILocation(line: 210, column: 5, scope: !3968)
!3981 = !DILocation(line: 214, column: 5, scope: !3968)
!3982 = !DILocation(line: 255, column: 5, scope: !3968)
!3983 = !DILocation(line: 256, column: 5, scope: !3968)
!3984 = !DILocation(line: 257, column: 5, scope: !3968)
!3985 = !DILocation(line: 258, column: 5, scope: !3968)
!3986 = !DILocation(line: 259, column: 5, scope: !3968)
!3987 = !DILocation(line: 260, column: 5, scope: !3968)
!3988 = !DILocation(line: 261, column: 5, scope: !3968)
!3989 = !DILocation(line: 262, column: 5, scope: !3968)
!3990 = !DILocation(line: 263, column: 5, scope: !3968)
!3991 = !DILocation(line: 264, column: 5, scope: !3968)
!3992 = !DILocation(line: 265, column: 5, scope: !3968)
!3993 = !DILocation(line: 266, column: 5, scope: !3968)
!3994 = !DILocation(line: 267, column: 5, scope: !3968)
!3995 = !DILocation(line: 268, column: 5, scope: !3968)
!3996 = !DILocation(line: 269, column: 5, scope: !3968)
!3997 = !DILocation(line: 270, column: 5, scope: !3968)
!3998 = !DILocation(line: 271, column: 5, scope: !3968)
!3999 = !DILocation(line: 272, column: 5, scope: !3968)
!4000 = !DILocation(line: 273, column: 5, scope: !3968)
!4001 = !DILocation(line: 274, column: 5, scope: !3968)
!4002 = !DILocation(line: 275, column: 5, scope: !3968)
!4003 = !DILocation(line: 277, column: 5, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 277, column: 5)
!4005 = !DILocation(line: 277, column: 5, scope: !3968)
!4006 = !DILocation(line: 288, column: 5, scope: !3968)
!4007 = !DILocation(line: 290, column: 5, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 290, column: 5)
!4009 = !DILocation(line: 331, column: 5, scope: !3968)
!4010 = !DILocation(line: 336, column: 5, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 336, column: 5)
!4012 = !DILocation(line: 364, column: 5, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 364, column: 5)
!4014 = !DILocation(line: 287, column: 14, scope: !4004)
!4015 = !DILocation(line: 329, column: 10, scope: !4008)
!4016 = !DILocation(line: 361, column: 10, scope: !4011)
!4017 = !DILocation(line: 368, column: 10, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 368, column: 10)
!4019 = !DILocation(line: 368, column: 10, scope: !4013)
!4020 = !DILocation(line: 0, scope: !4013)
!4021 = !DILocation(line: 369, column: 5, scope: !3968)
!4022 = !DILocation(line: 370, column: 5, scope: !3968)
!4023 = !DILocation(line: 371, column: 5, scope: !3968)
!4024 = !DILocation(line: 372, column: 76, scope: !3968)
!4025 = !DILocation(line: 372, column: 5, scope: !3968)
!4026 = !DILocation(line: 373, column: 5, scope: !3968)
!4027 = !DILocation(line: 373, column: 5, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 373, column: 5)
!4029 = !DILocation(line: 374, column: 5, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 374, column: 5)
!4031 = !DILocation(line: 375, column: 101, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 375, column: 5)
!4033 = !DILocation(line: 375, column: 5, scope: !4032)
!4034 = !DILocation(line: 376, column: 5, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 376, column: 5)
!4036 = !DILocation(line: 377, column: 5, scope: !3968)
!4037 = !DILocation(line: 377, column: 5, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 377, column: 5)
!4039 = !DILocation(line: 377, column: 94, scope: !4038)
!4040 = !DILocation(line: 382, column: 98, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 378, column: 5)
!4042 = !DILocation(line: 378, column: 5, scope: !4041)
!4043 = !DILocation(line: 383, column: 5, scope: !3968)
!4044 = !DILocation(line: 383, column: 98, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 383, column: 5)
!4046 = !DILocation(line: 383, column: 5, scope: !4045)
!4047 = !DILocation(line: 384, column: 5, scope: !3968)
!4048 = !DILocation(line: 388, column: 58, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 384, column: 5)
!4050 = !DILocalVariable(name: "table", arg: 1, scope: !4051, file: !3, line: 186, type: !2899)
!4051 = distinct !DISubprogram(name: "strtable_lookup", scope: !3, file: !3, line: 186, type: !4052, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4054)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!142, !2899, !7}
!4054 = !{!4050, !4055, !4056}
!4055 = !DILocalVariable(name: "index", arg: 2, scope: !4051, file: !3, line: 186, type: !7)
!4056 = !DILocalVariable(name: "i", scope: !4051, file: !3, line: 188, type: !7)
!4057 = !DILocation(line: 0, scope: !4051, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 388, column: 9, scope: !4049)
!4059 = !DILocation(line: 189, column: 27, scope: !4051, inlinedAt: !4058)
!4060 = !DILocation(line: 189, column: 44, scope: !4051, inlinedAt: !4058)
!4061 = !DILocation(line: 189, column: 14, scope: !4051, inlinedAt: !4058)
!4062 = !DILocation(line: 384, column: 5, scope: !4049)
!4063 = !DILocation(line: 389, column: 5, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 389, column: 5)
!4065 = !DILocation(line: 390, column: 86, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 390, column: 5)
!4067 = !DILocation(line: 390, column: 5, scope: !4066)
!4068 = !DILocation(line: 391, column: 5, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 391, column: 5)
!4070 = !DILocation(line: 393, column: 50, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 392, column: 5)
!4072 = !DILocation(line: 393, column: 89, scope: !4071)
!4073 = !DILocation(line: 392, column: 5, scope: !4071)
!4074 = !DILocation(line: 394, column: 5, scope: !3968)
!4075 = !DILocation(line: 394, column: 5, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 394, column: 5)
!4077 = !DILocation(line: 397, column: 5, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 397, column: 5)
!4079 = !DILocation(line: 398, column: 5, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 398, column: 5)
!4081 = !DILocation(line: 399, column: 5, scope: !3968)
!4082 = !DILocation(line: 404, column: 5, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 404, column: 5)
!4084 = !DILocation(line: 407, column: 5, scope: !3968)
!4085 = !DILocation(line: 408, column: 5, scope: !3968)
!4086 = !DILocation(line: 409, column: 5, scope: !3968)
!4087 = !DILocation(line: 410, column: 5, scope: !3968)
!4088 = !DILocation(line: 410, column: 5, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 410, column: 5)
!4090 = !DILocation(line: 411, column: 5, scope: !3968)
!4091 = !DILocation(line: 412, column: 101, scope: !3968)
!4092 = !DILocation(line: 412, column: 88, scope: !3968)
!4093 = !DILocation(line: 412, column: 5, scope: !3968)
!4094 = !DILocation(line: 413, column: 104, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 413, column: 5)
!4096 = !DILocation(line: 413, column: 5, scope: !4095)
!4097 = !DILocation(line: 413, column: 5, scope: !3968)
!4098 = !DILocation(line: 414, column: 89, scope: !3968)
!4099 = !DILocation(line: 414, column: 5, scope: !3968)
!4100 = !DILocation(line: 415, column: 96, scope: !3968)
!4101 = !DILocation(line: 415, column: 5, scope: !3968)
!4102 = !DILocation(line: 416, column: 5, scope: !3968)
!4103 = !DILocation(line: 416, column: 93, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 416, column: 5)
!4105 = !DILocation(line: 416, column: 80, scope: !4104)
!4106 = !DILocation(line: 416, column: 5, scope: !4104)
!4107 = !DILocation(line: 417, column: 5, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 417, column: 5)
!4109 = !DILocation(line: 419, column: 73, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 419, column: 5)
!4111 = !DILocation(line: 419, column: 5, scope: !4110)
!4112 = !DILocation(line: 420, column: 73, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 420, column: 5)
!4114 = !DILocation(line: 420, column: 5, scope: !4113)
!4115 = !DILocation(line: 421, column: 78, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 421, column: 5)
!4117 = !DILocation(line: 421, column: 5, scope: !4116)
!4118 = !DILocation(line: 422, column: 101, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 422, column: 5)
!4120 = !DILocation(line: 422, column: 88, scope: !4119)
!4121 = !DILocation(line: 422, column: 5, scope: !4119)
!4122 = !DILocation(line: 423, column: 90, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 423, column: 5)
!4124 = !DILocation(line: 423, column: 77, scope: !4123)
!4125 = !DILocation(line: 423, column: 5, scope: !4123)
!4126 = !DILocation(line: 424, column: 90, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 424, column: 5)
!4128 = !DILocation(line: 424, column: 77, scope: !4127)
!4129 = !DILocation(line: 424, column: 5, scope: !4127)
!4130 = !DILocation(line: 425, column: 111, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 425, column: 5)
!4132 = !DILocation(line: 425, column: 5, scope: !4131)
!4133 = !DILocation(line: 429, column: 98, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 426, column: 5)
!4135 = !DILocation(line: 426, column: 5, scope: !4134)
!4136 = !DILocation(line: 430, column: 5, scope: !3968)
!4137 = !DILocation(line: 431, column: 80, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 430, column: 5)
!4139 = !DILocation(line: 431, column: 67, scope: !4138)
!4140 = !DILocation(line: 430, column: 5, scope: !4138)
!4141 = !DILocation(line: 432, column: 5, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 432, column: 5)
!4143 = !DILocation(line: 433, column: 5, scope: !3968)
!4144 = !DILocation(line: 436, column: 5, scope: !3968)
!4145 = !DILocation(line: 436, column: 5, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 436, column: 5)
!4147 = !DILocation(line: 437, column: 5, scope: !3968)
!4148 = !DILocation(line: 437, column: 92, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 437, column: 5)
!4150 = !DILocation(line: 437, column: 5, scope: !4149)
!4151 = !DILocation(line: 438, column: 5, scope: !3968)
!4152 = !DILocation(line: 438, column: 5, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 438, column: 5)
!4154 = !DILocation(line: 439, column: 85, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 439, column: 5)
!4156 = !DILocation(line: 439, column: 72, scope: !4155)
!4157 = !DILocation(line: 439, column: 5, scope: !4155)
!4158 = !DILocation(line: 440, column: 117, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 440, column: 5)
!4160 = !DILocation(line: 440, column: 104, scope: !4159)
!4161 = !DILocation(line: 440, column: 5, scope: !4159)
!4162 = !DILocation(line: 441, column: 116, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 441, column: 5)
!4164 = !DILocation(line: 441, column: 103, scope: !4163)
!4165 = !DILocation(line: 441, column: 5, scope: !4163)
!4166 = !DILocation(line: 442, column: 5, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 442, column: 5)
!4168 = !DILocation(line: 443, column: 5, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 443, column: 5)
!4170 = !DILocation(line: 448, column: 5, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 448, column: 5)
!4172 = !DILocation(line: 452, column: 5, scope: !3968)
!4173 = !DILocation(line: 452, column: 5, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 452, column: 5)
!4175 = !DILocation(line: 453, column: 5, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 453, column: 5)
!4177 = !DILocation(line: 454, column: 5, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 454, column: 5)
!4179 = !DILocation(line: 455, column: 5, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 455, column: 5)
!4181 = !DILocation(line: 461, column: 99, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 459, column: 5)
!4183 = !DILocation(line: 0, scope: !4051, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 461, column: 40, scope: !4182)
!4185 = !DILocation(line: 189, column: 27, scope: !4051, inlinedAt: !4184)
!4186 = !DILocation(line: 189, column: 44, scope: !4051, inlinedAt: !4184)
!4187 = !DILocation(line: 189, column: 14, scope: !4051, inlinedAt: !4184)
!4188 = !DILocation(line: 459, column: 5, scope: !4182)
!4189 = !DILocation(line: 462, column: 5, scope: !3968)
!4190 = !DILocation(line: 462, column: 5, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 462, column: 5)
!4192 = !DILocation(line: 463, column: 5, scope: !3968)
!4193 = !DILocation(line: 466, column: 86, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 463, column: 5)
!4195 = !DILocation(line: 463, column: 5, scope: !4194)
!4196 = !DILocation(line: 468, column: 98, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 467, column: 5)
!4198 = !DILocation(line: 0, scope: !4051, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 468, column: 40, scope: !4197)
!4200 = !DILocation(line: 189, column: 27, scope: !4051, inlinedAt: !4199)
!4201 = !DILocation(line: 189, column: 44, scope: !4051, inlinedAt: !4199)
!4202 = !DILocation(line: 189, column: 14, scope: !4051, inlinedAt: !4199)
!4203 = !DILocation(line: 467, column: 5, scope: !4197)
!4204 = !DILocation(line: 469, column: 5, scope: !3968)
!4205 = !DILocation(line: 469, column: 5, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 469, column: 5)
!4207 = !DILocation(line: 475, column: 102, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 475, column: 5)
!4209 = !DILocation(line: 475, column: 5, scope: !4208)
!4210 = !DILocation(line: 476, column: 5, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 476, column: 5)
!4212 = !DILocation(line: 477, column: 5, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 477, column: 5)
!4214 = !DILocation(line: 478, column: 5, scope: !3968)
!4215 = !DILocation(line: 474, column: 10, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 474, column: 10)
!4217 = !DILocation(line: 489, column: 5, scope: !3968)
!4218 = !DILocation(line: 479, column: 5, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 479, column: 5)
!4220 = !DILocation(line: 493, column: 5, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 493, column: 5)
!4222 = !DILocation(line: 495, column: 5, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 495, column: 5)
!4224 = !DILocation(line: 496, column: 5, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 496, column: 5)
!4226 = !DILocation(line: 497, column: 5, scope: !3968)
!4227 = !DILocation(line: 478, column: 112, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 478, column: 5)
!4229 = !DILocation(line: 478, column: 5, scope: !4228)
!4230 = !DILocation(line: 0, scope: !4219)
!4231 = !DILocation(line: 492, column: 58, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 489, column: 5)
!4233 = !DILocation(line: 492, column: 40, scope: !4232)
!4234 = !DILocation(line: 492, column: 86, scope: !4232)
!4235 = !DILocation(line: 492, column: 68, scope: !4232)
!4236 = !DILocation(line: 489, column: 5, scope: !4232)
!4237 = !DILocation(line: 493, column: 5, scope: !3968)
!4238 = !DILocation(line: 497, column: 5, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 497, column: 5)
!4240 = !DILocation(line: 501, column: 101, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 498, column: 5)
!4242 = !DILocation(line: 498, column: 5, scope: !4241)
!4243 = !DILocation(line: 502, column: 5, scope: !3968)
!4244 = !DILocation(line: 502, column: 5, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 502, column: 5)
!4246 = !DILocation(line: 503, column: 5, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 503, column: 5)
!4248 = !DILocation(line: 504, column: 5, scope: !3968)
!4249 = !DILocation(line: 504, column: 83, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 504, column: 5)
!4251 = !DILocation(line: 504, column: 5, scope: !4250)
!4252 = !DILocation(line: 505, column: 5, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 505, column: 5)
!4254 = !DILocation(line: 506, column: 120, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 506, column: 5)
!4256 = !DILocation(line: 506, column: 102, scope: !4255)
!4257 = !DILocation(line: 506, column: 5, scope: !4255)
!4258 = !DILocation(line: 507, column: 102, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 507, column: 5)
!4260 = !DILocation(line: 507, column: 5, scope: !4259)
!4261 = !DILocation(line: 508, column: 5, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 508, column: 5)
!4263 = !DILocation(line: 512, column: 5, scope: !3968)
!4264 = !DILocation(line: 554, column: 5, scope: !3968)
!4265 = !DILocation(line: 555, column: 5, scope: !3968)
!4266 = !DILocation(line: 556, column: 5, scope: !3968)
!4267 = !DILocation(line: 557, column: 5, scope: !3968)
!4268 = !DILocation(line: 558, column: 5, scope: !3968)
!4269 = !DILocation(line: 511, column: 5, scope: !3968)
!4270 = !DILocation(line: 512, column: 5, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 512, column: 5)
!4272 = !DILocation(line: 513, column: 5, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 513, column: 5)
!4274 = !DILocation(line: 515, column: 5, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 515, column: 5)
!4276 = !DILocation(line: 517, column: 5, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 517, column: 5)
!4278 = !DILocation(line: 519, column: 5, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 519, column: 5)
!4280 = !DILocation(line: 521, column: 5, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 521, column: 5)
!4282 = !DILocation(line: 522, column: 5, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 522, column: 5)
!4284 = !DILocation(line: 523, column: 5, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 523, column: 5)
!4286 = !DILocation(line: 524, column: 5, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 524, column: 5)
!4288 = !DILocation(line: 525, column: 5, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 525, column: 5)
!4290 = !DILocation(line: 528, column: 92, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 526, column: 5)
!4292 = !DILocation(line: 0, scope: !4051, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 528, column: 40, scope: !4291)
!4294 = !DILocation(line: 189, column: 27, scope: !4051, inlinedAt: !4293)
!4295 = !DILocation(line: 189, column: 44, scope: !4051, inlinedAt: !4293)
!4296 = !DILocation(line: 189, column: 14, scope: !4051, inlinedAt: !4293)
!4297 = !DILocation(line: 526, column: 5, scope: !4291)
!4298 = !DILocation(line: 531, column: 93, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 529, column: 5)
!4300 = !DILocation(line: 0, scope: !4051, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 531, column: 40, scope: !4299)
!4302 = !DILocation(line: 189, column: 27, scope: !4051, inlinedAt: !4301)
!4303 = !DILocation(line: 189, column: 44, scope: !4051, inlinedAt: !4301)
!4304 = !DILocation(line: 189, column: 14, scope: !4051, inlinedAt: !4301)
!4305 = !DILocation(line: 529, column: 5, scope: !4299)
!4306 = !DILocation(line: 534, column: 93, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 532, column: 5)
!4308 = !DILocation(line: 0, scope: !4051, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 534, column: 40, scope: !4307)
!4310 = !DILocation(line: 189, column: 27, scope: !4051, inlinedAt: !4309)
!4311 = !DILocation(line: 189, column: 44, scope: !4051, inlinedAt: !4309)
!4312 = !DILocation(line: 189, column: 14, scope: !4051, inlinedAt: !4309)
!4313 = !DILocation(line: 532, column: 5, scope: !4307)
!4314 = !DILocation(line: 538, column: 93, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 535, column: 5)
!4316 = !DILocation(line: 0, scope: !4051, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 538, column: 40, scope: !4315)
!4318 = !DILocation(line: 189, column: 27, scope: !4051, inlinedAt: !4317)
!4319 = !DILocation(line: 189, column: 44, scope: !4051, inlinedAt: !4317)
!4320 = !DILocation(line: 189, column: 14, scope: !4051, inlinedAt: !4317)
!4321 = !DILocation(line: 535, column: 5, scope: !4315)
!4322 = !DILocation(line: 542, column: 92, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 539, column: 5)
!4324 = !DILocation(line: 0, scope: !4051, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 542, column: 40, scope: !4323)
!4326 = !DILocation(line: 189, column: 27, scope: !4051, inlinedAt: !4325)
!4327 = !DILocation(line: 189, column: 44, scope: !4051, inlinedAt: !4325)
!4328 = !DILocation(line: 189, column: 14, scope: !4051, inlinedAt: !4325)
!4329 = !DILocation(line: 539, column: 5, scope: !4323)
!4330 = !DILocation(line: 546, column: 93, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 543, column: 5)
!4332 = !DILocation(line: 0, scope: !4051, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 546, column: 40, scope: !4331)
!4334 = !DILocation(line: 189, column: 27, scope: !4051, inlinedAt: !4333)
!4335 = !DILocation(line: 189, column: 44, scope: !4051, inlinedAt: !4333)
!4336 = !DILocation(line: 189, column: 14, scope: !4051, inlinedAt: !4333)
!4337 = !DILocation(line: 543, column: 5, scope: !4331)
!4338 = !DILocation(line: 548, column: 54, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 547, column: 5)
!4340 = !DILocation(line: 547, column: 5, scope: !4339)
!4341 = !DILocation(line: 550, column: 5, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 550, column: 5)
!4343 = !DILocation(line: 563, column: 5, scope: !3968)
!4344 = !DILocation(line: 564, column: 5, scope: !3968)
!4345 = !DILocation(line: 565, column: 5, scope: !3968)
!4346 = !DILocation(line: 566, column: 5, scope: !3968)
!4347 = !DILocation(line: 567, column: 5, scope: !3968)
!4348 = !DILocation(line: 573, column: 5, scope: !3968)
!4349 = !DILocalVariable(name: "buf", arg: 1, scope: !4350, file: !3, line: 192, type: !9)
!4350 = distinct !DISubprogram(name: "stringify_names", scope: !3, file: !3, line: 192, type: !4351, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4353)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!9, !9, !2899}
!4353 = !{!4349, !4354, !4355, !4356}
!4354 = !DILocalVariable(name: "names", arg: 2, scope: !4350, file: !3, line: 192, type: !2899)
!4355 = !DILocalVariable(name: "i", scope: !4350, file: !3, line: 194, type: !7)
!4356 = !DILocalVariable(name: "p", scope: !4350, file: !3, line: 195, type: !9)
!4357 = !DILocation(line: 0, scope: !4350, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 559, column: 69, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 558, column: 5)
!4360 = distinct !DIAssignID()
!4361 = !DILocation(line: 198, column: 14, scope: !4362, inlinedAt: !4358)
!4362 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 197, column: 5)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 196, column: 5)
!4364 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 196, column: 5)
!4365 = !DILocation(line: 198, column: 11, scope: !4362, inlinedAt: !4358)
!4366 = !DILocation(line: 200, column: 18, scope: !4367, inlinedAt: !4358)
!4367 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 199, column: 13)
!4368 = !DILocation(line: 200, column: 15, scope: !4367, inlinedAt: !4358)
!4369 = !DILocation(line: 558, column: 5, scope: !4359)
!4370 = !DILocation(line: 0, scope: !4350, inlinedAt: !4371)
!4371 = distinct !DILocation(line: 561, column: 71, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 560, column: 5)
!4373 = distinct !DIAssignID()
!4374 = !DILocation(line: 198, column: 14, scope: !4362, inlinedAt: !4371)
!4375 = !DILocation(line: 200, column: 18, scope: !4367, inlinedAt: !4371)
!4376 = !DILocation(line: 198, column: 11, scope: !4362, inlinedAt: !4371)
!4377 = !DILocation(line: 200, column: 15, scope: !4367, inlinedAt: !4371)
!4378 = !DILocation(line: 560, column: 5, scope: !4372)
!4379 = !DILocation(line: 562, column: 5, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 562, column: 5)
!4381 = !DILocation(line: 568, column: 5, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 568, column: 5)
!4383 = !DILocation(line: 569, column: 5, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 569, column: 5)
!4385 = !DILocation(line: 570, column: 5, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 570, column: 5)
!4387 = !DILocation(line: 571, column: 5, scope: !3968)
!4388 = !DILocation(line: 572, column: 5, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 572, column: 5)
!4390 = !DILocation(line: 573, column: 5, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 573, column: 5)
!4392 = !DILocation(line: 574, column: 5, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 574, column: 5)
!4394 = !DILocation(line: 575, column: 5, scope: !3968)
!4395 = !DILocation(line: 575, column: 5, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 575, column: 5)
!4397 = !DILocation(line: 576, column: 5, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 576, column: 5)
!4399 = !DILocation(line: 577, column: 5, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 577, column: 5)
!4401 = !DILocation(line: 578, column: 5, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 578, column: 5)
!4403 = !DILocation(line: 579, column: 5, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 579, column: 5)
!4405 = !DILocation(line: 580, column: 5, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 580, column: 5)
!4407 = !DILocation(line: 581, column: 5, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 581, column: 5)
!4409 = !DILocation(line: 582, column: 5, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 582, column: 5)
!4411 = !DILocation(line: 583, column: 86, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 583, column: 5)
!4413 = !DILocation(line: 583, column: 5, scope: !4412)
!4414 = !DILocation(line: 584, column: 5, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 584, column: 5)
!4416 = !DILocation(line: 585, column: 5, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 585, column: 5)
!4418 = !DILocation(line: 586, column: 5, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 586, column: 5)
!4420 = !DILocation(line: 587, column: 5, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 587, column: 5)
!4422 = !DILocation(line: 588, column: 5, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 588, column: 5)
!4424 = !DILocation(line: 591, column: 5, scope: !3968)
!4425 = !DILocation(line: 592, column: 1, scope: !3968)
!4426 = !DISubprogram(name: "exit", scope: !2862, file: !2862, line: 624, type: !4427, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !7}
!4429 = !DISubprogram(name: "printf", scope: !4430, file: !4430, line: 356, type: !4431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4430 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!7, !4433, null}
!4433 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!4434 = !DISubprogram(name: "fopen", scope: !4430, file: !4430, line: 258, type: !4435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!1511, !4433, !4433}
!4437 = !DISubprogram(name: "fprintf", scope: !4430, file: !4430, line: 350, type: !4438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!7, !4440, !4433, null}
!4440 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1511)
!4441 = !DISubprogram(name: "fclose", scope: !4430, file: !4430, line: 178, type: !4442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!7, !1511}
!4444 = !DISubprogram(name: "x264_param_parse", scope: !68, file: !68, line: 418, type: !3966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4445 = !DISubprogram(name: "x264_param_apply_fastfirstpass", scope: !68, file: !68, line: 462, type: !3952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4446 = !DISubprogram(name: "x264_param_apply_profile", scope: !68, file: !68, line: 477, type: !4447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!7, !78, !142}
!4449 = !DISubprogram(name: "x264_reduce_fraction", scope: !1577, file: !1577, line: 192, type: !4450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{null, !2576, !2576}
!4452 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !4430, file: !4430, line: 439, type: !4453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!7, !4433, !4433, null}
!4455 = !DISubprogram(name: "strtoul", scope: !2862, file: !2862, line: 181, type: !4456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!1559, !4433, !4458, !7}
!4458 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!4459 = !DISubprogram(name: "strtol", scope: !2862, file: !2862, line: 177, type: !4460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!15, !4433, !4458, !7}
!4462 = !DISubprogram(name: "strlen", scope: !3962, file: !3962, line: 407, type: !4463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!1559, !142}
!4465 = !DISubprogram(name: "strcpy", scope: !3962, file: !3962, line: 141, type: !4466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!9, !4468, !4433}
!4468 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!4469 = !DISubprogram(name: "fmod", scope: !4470, file: !4470, line: 168, type: !4471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4470 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!5, !5, !5}
!4473 = !DISubprogram(name: "x264_encoder_open_96", scope: !68, file: !68, line: 619, type: !4474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!1574, !78}
!4476 = !DISubprogram(name: "x264_encoder_parameters", scope: !68, file: !68, line: 636, type: !4477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{null, !1574, !78}
!4479 = !DISubprogram(name: "x264_mdate", scope: !1577, file: !1577, line: 181, type: !4480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!11}
!4482 = !DISubprogram(name: "x264_encoder_headers", scope: !68, file: !68, line: 642, type: !4483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!7, !1574, !4485, !723}
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!4486 = !DISubprogram(name: "x264_encoder_delayed_frames", scope: !68, file: !68, line: 655, type: !4487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!7, !1574}
!4489 = !DISubprogram(name: "x264_encoder_close", scope: !68, file: !68, line: 651, type: !4490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{null, !1574}
!4492 = !DISubprogram(name: "ftell", scope: !4430, file: !4430, line: 718, type: !4493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!15, !1511}
!4495 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !4430, file: !4430, line: 434, type: !4438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4496 = !DISubprogram(name: "fseek", scope: !4430, file: !4430, line: 713, type: !4497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!7, !1511, !15, !7}
!4499 = !DISubprogram(name: "x264_encoder_encode", scope: !68, file: !68, line: 648, type: !4500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!7, !1574, !4485, !723, !66, !66}
