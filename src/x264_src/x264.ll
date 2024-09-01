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

@seek_val = dso_local local_unnamed_addr global i32 0, align 4
@input = dso_local local_unnamed_addr global %struct.cli_input_t zeroinitializer, align 8
@optind = external local_unnamed_addr global i32, align 4
@short_options = internal global [30 x i8] c"8A:B:b:f:hI:i:m:o:p:q:r:t:Vvw\00", align 16
@long_options = internal global [142 x %struct.option] [%struct.option { ptr @.str.28, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.29, i32 0, ptr null, i32 263 }, %struct.option { ptr @.str.30, i32 0, ptr null, i32 268 }, %struct.option { ptr @.str.31, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.32, i32 1, ptr null, i32 278 }, %struct.option { ptr @.str.33, i32 1, ptr null, i32 264 }, %struct.option { ptr @.str.34, i32 1, ptr null, i32 265 }, %struct.option { ptr @.str.35, i32 1, ptr null, i32 266 }, %struct.option { ptr @.str.36, i32 0, ptr null, i32 267 }, %struct.option { ptr @.str.37, i32 1, ptr null, i32 66 }, %struct.option { ptr @.str.38, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.39, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.40, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.41, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.42, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.43, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.44, i32 1, ptr null, i32 73 }, %struct.option { ptr @.str.45, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.46, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.47, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.49, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.50, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.51, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 113 }, %struct.option { ptr @.str.60, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.61, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.62, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.63, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.64, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.65, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.66, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.68, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 269 }, %struct.option { ptr @.str.70, i32 1, ptr null, i32 256 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 257 }, %struct.option { ptr @.str.11, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.72, i32 1, ptr null, i32 270 }, %struct.option { ptr @.str.73, i32 1, ptr null, i32 271 }, %struct.option { ptr @.str.74, i32 1, ptr null, i32 270 }, %struct.option { ptr @.str.75, i32 1, ptr null, i32 271 }, %struct.option { ptr @.str.76, i32 1, ptr null, i32 272 }, %struct.option { ptr @.str.77, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.78, i32 1, ptr null, i32 65 }, %struct.option { ptr @.str.79, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.80, i32 0, ptr null, i32 119 }, %struct.option { ptr @.str.81, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.82, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.83, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.84, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.85, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.86, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.87, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.88, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.89, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.90, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.91, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.92, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.93, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.94, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.95, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.96, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.97, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.98, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.99, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.100, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.101, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.102, i32 1, ptr null, i32 48 }, %struct.option { ptr @.str.103, i32 1, ptr null, i32 48 }, %struct.option { ptr @.str.104, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.105, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.106, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.107, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.108, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.109, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.110, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.111, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.112, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.113, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.114, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.115, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.116, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.117, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.118, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.119, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.120, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.121, i32 1, ptr null, i32 258 }, %struct.option { ptr @.str.122, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.123, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.124, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.125, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.126, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.127, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.128, i32 0, ptr null, i32 259 }, %struct.option { ptr @.str.129, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.130, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.131, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.132, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.133, i32 0, ptr null, i32 260 }, %struct.option { ptr @.str.134, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.135, i32 0, ptr null, i32 261 }, %struct.option { ptr @.str.136, i32 0, ptr null, i32 262 }, %struct.option { ptr @.str.137, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.138, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.139, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.140, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.141, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.142, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.143, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.144, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.145, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.146, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.147, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.148, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.149, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.150, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.151, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.152, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.153, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.154, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.155, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.156, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.157, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.158, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.159, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.160, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.161, i32 1, ptr null, i32 274 }, %struct.option { ptr @.str.162, i32 1, ptr null, i32 275 }, %struct.option { ptr @.str.163, i32 1, ptr null, i32 276 }, %struct.option { ptr @.str.164, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.165, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.166, i32 1, ptr null, i32 277 }, %struct.option { ptr @.str.167, i32 0, ptr null, i32 0 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"placebo\00", align 1
@tga_dump_rate = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"x264 [error]: can't open qpfile `%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"x264 [warning]: not compiled with visualization support\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"x264 [error]: can't open `%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"x264 [error]: invalid argument: %s = %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"x264 [error]: No %s file. Run x264 --help for a list of options.\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@output = internal unnamed_addr global %struct.cli_output_t zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [47 x i8] c"x264 [error]: could not open output file `%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"x264 [error]: could not open input file `%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"%s [info]: %dx%d%c %d:%d @ %d/%d fps (%cfr)\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"x264 [error]: --fps + --tcfile-in is incompatible.\0A\00", align 1
@timecode_input = external local_unnamed_addr global %struct.cli_input_t, align 8
@.str.16 = private unnamed_addr constant [37 x i8] c"x264 [error]: timecode input failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"x264 [error]: --timebase is incompatible with cfr input\0A\00", align 1
@.str.18 = private unnamed_addr constant [149 x i8] c"x264 [warning]: input appears to be interlaced, enabling %cff interlaced mode.\0A                If you want otherwise, use --no-interlaced or --%cff\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%lu/%lu\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"x264 [error]: invalid argument: timebase = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"x264 [error]: timebase you specified exceeds H.264 maximum\0A\00", align 1
@x264_levels = external local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"yuv\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"y4m\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"mkv\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"flv\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"longhelp\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"fullhelp\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"dumpyuv\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"tune\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"slow-firstpass\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"no-b-adapt\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"intra-refresh\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"no-scenecut\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"nf\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"no-deblock\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"tff\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"bff\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"no-interlaced\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"constrained-intra\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"cabac\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"no-cabac\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"rc-lookahead\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"no-asm\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"muxer\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"demuxer\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"no-weightb\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"weightp\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"merange\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"subme\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"no-psy\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"psy\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"no-mixed-refs\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"no-chroma-me\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"no-8x8dct\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"fast-pskip\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"no-fast-pskip\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"no-dct-decimate\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"crf-max\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"mbtree\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"no-mbtree\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"zones\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"qpfile\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"sliced-threads\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"no-sliced-threads\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"slice-max-size\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"slice-max-mbs\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"slices\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"thread-input\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"sync-lookahead\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"non-deterministic\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"psnr\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"ssim\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"no-progress\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"visualize\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"force-cfr\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"tcfile-in\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"tcfile-out\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"timebase\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"pic-struct\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"nal-hrd\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"pulldown\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"fake-interlaced\00", align 1
@.str.168 = private unnamed_addr constant [597 x i8] c"x264 core:%d%s\0ASyntax: x264 [options] -o outfile infile [widthxheight]\0A\0AInfile can be raw YUV 4:2:0 (in which case resolution is required),\0A  or YUV4MPEG 4:2:0 (*.y4m),\0A  or Avisynth if compiled with support (%s).\0A  or libav* formats if compiled with lavf support (%s) or ffms support (%s).\0AOutfile type is selected by filename:\0A .264 -> Raw bytestream\0A .mkv -> Matroska\0A .flv -> Flash Video\0A .mp4 -> MP4 if compiled with GPAC support (%s)\0A\0AOptions:\0A\0A  -h, --help                  List basic options\0A      --longhelp              List more options\0A      --fullhelp              List all options\0A\0A\00", align 1
@.str.169 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.197 = private unnamed_addr constant [53 x i8] c"  -I, --keyint <integer>      Maximum GOP size [%d]\0A\00", align 1
@.str.200 = private unnamed_addr constant [78 x i8] c"      --scenecut <integer>    How aggressively to insert extra I-frames [%d]\0A\00", align 1
@.str.202 = private unnamed_addr constant [71 x i8] c"  -b, --bframes <integer>     Number of B-frames between I and P [%d]\0A\00", align 1
@.str.203 = private unnamed_addr constant [315 x i8] c"      --b-adapt <integer>     Adaptive B-frame decision method [%d]\0A                                  Higher values may lower threading efficiency.\0A                                  - 0: Disabled\0A                                  - 1: Fast\0A                                  - 2: Optimal (slow with high --bframes)\0A\00", align 1
@.str.204 = private unnamed_addr constant [75 x i8] c"      --b-bias <integer>      Influences how often B-frames are used [%d]\0A\00", align 1
@.str.205 = private unnamed_addr constant [274 x i8] c"      --b-pyramid <string>    Keep some B-frames as references [%s]\0A                                  - none: Disabled\0A                                  - strict: Strictly hierarchical pyramid\0A                                  - normal: Non-strict (not Blu-ray compatible)\0A\00", align 1
@x264_b_pyramid_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr null], align 16
@.str.207 = private unnamed_addr constant [63 x i8] c"  -r, --ref <integer>         Number of reference frames [%d]\0A\00", align 1
@.str.209 = private unnamed_addr constant [62 x i8] c"  -f, --deblock <alpha:beta>  Loop filter parameters [%d:%d]\0A\00", align 1
@.str.222 = private unnamed_addr constant [75 x i8] c"      --crf <float>           Quality-based VBR (0-51, 0=lossless) [%.1f]\0A\00", align 1
@.str.223 = private unnamed_addr constant [78 x i8] c"      --rc-lookahead <integer> Number of frames for frametype lookahead [%d]\0A\00", align 1
@.str.224 = private unnamed_addr constant [63 x i8] c"      --vbv-maxrate <integer> Max local bitrate (kbit/s) [%d]\0A\00", align 1
@.str.225 = private unnamed_addr constant [70 x i8] c"      --vbv-bufsize <integer> Set size of the VBV buffer (kbit) [%d]\0A\00", align 1
@.str.226 = private unnamed_addr constant [67 x i8] c"      --vbv-init <float>      Initial VBV buffer occupancy [%.1f]\0A\00", align 1
@.str.228 = private unnamed_addr constant [47 x i8] c"      --qpmin <integer>       Set min QP [%d]\0A\00", align 1
@.str.229 = private unnamed_addr constant [47 x i8] c"      --qpmax <integer>       Set max QP [%d]\0A\00", align 1
@.str.230 = private unnamed_addr constant [52 x i8] c"      --qpstep <integer>      Set max QP step [%d]\0A\00", align 1
@.str.231 = private unnamed_addr constant [75 x i8] c"      --ratetol <float>       Tolerance of ABR ratecontrol and VBV [%.1f]\0A\00", align 1
@.str.232 = private unnamed_addr constant [64 x i8] c"      --ipratio <float>       QP factor between I and P [%.2f]\0A\00", align 1
@.str.233 = private unnamed_addr constant [64 x i8] c"      --pbratio <float>       QP factor between P and B [%.2f]\0A\00", align 1
@.str.234 = private unnamed_addr constant [80 x i8] c"      --chroma-qp-offset <integer>  QP difference between chroma and luma [%d]\0A\00", align 1
@.str.235 = private unnamed_addr constant [234 x i8] c"      --aq-mode <integer>     AQ method [%d]\0A                                  - 0: Disabled\0A                                  - 1: Variance AQ (complexity mask)\0A                                  - 2: Auto-variance AQ (experimental)\0A\00", align 1
@.str.236 = private unnamed_addr constant [126 x i8] c"      --aq-strength <float>   Reduces blocking and blurring in flat and\0A                              textured areas. [%.1f]\0A\00", align 1
@.str.239 = private unnamed_addr constant [64 x i8] c"      --stats <string>        Filename for 2 pass stats [\22%s\22]\0A\00", align 1
@.str.241 = private unnamed_addr constant [59 x i8] c"      --qcomp <float>         QP curve compression [%.2f]\0A\00", align 1
@.str.242 = private unnamed_addr constant [91 x i8] c"      --cplxblur <float>      Reduce fluctuations in QP (before curve compression) [%.1f]\0A\00", align 1
@.str.243 = private unnamed_addr constant [90 x i8] c"      --qblur <float>         Reduce fluctuations in QP (after curve compression) [%.1f]\0A\00", align 1
@.str.249 = private unnamed_addr constant [130 x i8] c"      --direct <string>       Direct MV prediction mode [\22%s\22]\0A                                  - none, spatial, temporal, auto\0A\00", align 1
@x264_direct_pred_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.323, ptr @.str.326, ptr @.str.327, ptr @.str.22, ptr null], align 16
@.str.251 = private unnamed_addr constant [223 x i8] c"      --weightp <integer>     Weighted prediction for P-frames [%d]\0A                                  - 0: Disabled\0A                                  - 1: Blind offset\0A                                  - 2: Smart analysis\0A\00", align 1
@.str.252 = private unnamed_addr constant [77 x i8] c"      --me <string>           Integer pixel motion estimation method [\22%s\22]\0A\00", align 1
@x264_motion_est_names = internal unnamed_addr constant [6 x ptr] [ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr null], align 16
@.str.255 = private unnamed_addr constant [71 x i8] c"      --merange <integer>     Maximum motion vector search range [%d]\0A\00", align 1
@.str.258 = private unnamed_addr constant [81 x i8] c"  -m, --subme <integer>       Subpixel motion estimation and mode decision [%d]\0A\00", align 1
@.str.261 = private unnamed_addr constant [223 x i8] c"      --psy-rd                Strength of psychovisual optimization [\22%.1f:%.1f\22]\0A                                  #1: RD (requires subme>=6)\0A                                  #2: Trellis (requires trellis, experimental)\0A\00", align 1
@.str.266 = private unnamed_addr constant [274 x i8] c"  -t, --trellis <integer>     Trellis RD quantization. Requires CABAC. [%d]\0A                                  - 0: disabled\0A                                  - 1: enabled only on the final encode of a MB\0A                                  - 2: enabled on all mode decisions\0A\00", align 1
@.str.269 = private unnamed_addr constant [52 x i8] c"      --nr <integer>          Noise reduction [%d]\0A\00", align 1
@.str.270 = private unnamed_addr constant [89 x i8] c"      --deadzone-inter <int>  Set the size of the inter luma quantization deadzone [%d]\0A\00", align 1
@.str.271 = private unnamed_addr constant [89 x i8] c"      --deadzone-intra <int>  Set the size of the intra luma quantization deadzone [%d]\0A\00", align 1
@.str.283 = private unnamed_addr constant [122 x i8] c"      --overscan <string>     Specify crop overscan setting [\22%s\22]\0A                                  - undef, show, crop\0A\00", align 1
@x264_overscan_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr null], align 16
@.str.284 = private unnamed_addr constant [135 x i8] c"      --videoformat <string>  Specify video format [\22%s\22]\0A                                  - component, pal, ntsc, secam, mac, undef\0A\00", align 1
@x264_vidformat_names = internal unnamed_addr constant [7 x ptr] [ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.333, ptr null], align 16
@.str.285 = private unnamed_addr constant [117 x i8] c"      --fullrange <string>    Specify full range samples setting [\22%s\22]\0A                                  - off, on\0A\00", align 1
@x264_fullrange_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.341, ptr @.str.342, ptr null], align 16
@.str.286 = private unnamed_addr constant [191 x i8] c"      --colorprim <string>    Specify color primaries [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg\0A                                    smpte170m, smpte240m, film\0A\00", align 1
@x264_colorprim_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.169, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr null], align 16
@.str.287 = private unnamed_addr constant [219 x i8] c"      --transfer <string>     Specify transfer characteristics [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg, linear,\0A                                    log100, log316, smpte170m, smpte240m\0A\00", align 1
@x264_transfer_names = internal unnamed_addr constant [12 x ptr] [ptr @.str.169, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr null], align 16
@.str.288 = private unnamed_addr constant [199 x i8] c"      --colormatrix <string>  Specify color matrix setting [\22%s\22]\0A                                  - undef, bt709, fcc, bt470bg\0A                                    smpte170m, smpte240m, GBR, YCgCo\0A\00", align 1
@x264_colmatrix_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.352, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.353, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.354, ptr null], align 16
@.str.289 = private unnamed_addr constant [76 x i8] c"      --chromaloc <integer>   Specify chroma sample location (0 to 5) [%d]\0A\00", align 1
@.str.294 = private unnamed_addr constant [109 x i8] c"      --muxer <string>        Specify output container format [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.295 = private unnamed_addr constant [108 x i8] c"      --demuxer <string>      Specify input container format [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.316 = private unnamed_addr constant [63 x i8] c"      --sps-id <integer>      Set SPS and PPS id numbers [%d]\0A\00", align 1
@.str.322 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.323 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.324 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.325 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.326 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1
@.str.327 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1
@.str.328 = private unnamed_addr constant [4 x i8] c"dia\00", align 1
@.str.329 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.330 = private unnamed_addr constant [4 x i8] c"umh\00", align 1
@.str.331 = private unnamed_addr constant [4 x i8] c"esa\00", align 1
@.str.332 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1
@.str.333 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.334 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.335 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.336 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.337 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@.str.338 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.339 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@.str.340 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.341 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.342 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.343 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1
@.str.344 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1
@.str.345 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1
@.str.346 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1
@.str.347 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1
@.str.348 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.349 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.350 = private unnamed_addr constant [7 x i8] c"log100\00", align 1
@.str.351 = private unnamed_addr constant [7 x i8] c"log316\00", align 1
@.str.352 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1
@.str.353 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1
@.str.354 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1
@.str.356 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.361 = private unnamed_addr constant [7 x i8] c"triple\00", align 1
@.str.362 = private unnamed_addr constant [5 x i8] c"euro\00", align 1
@.str.364 = private unnamed_addr constant [4 x i8] c"mp4\00", align 1
@.str.365 = private unnamed_addr constant [52 x i8] c"x264 [error]: not compiled with MP4 output support\0A\00", align 1
@mkv_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@flv_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@raw_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@.str.366 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.367 = private unnamed_addr constant [4 x i8] c"avs\00", align 1
@.str.368 = private unnamed_addr constant [4 x i8] c"d2v\00", align 1
@.str.369 = private unnamed_addr constant [4 x i8] c"dga\00", align 1
@.str.370 = private unnamed_addr constant [51 x i8] c"x264 [error]: not compiled with AVS input support\0A\00", align 1
@y4m_input = external local_unnamed_addr constant %struct.cli_input_t, align 8
@yuv_input = external local_unnamed_addr constant %struct.cli_input_t, align 8
@.str.371 = private unnamed_addr constant [62 x i8] c"x264 [error]: could not open input file `%s' via any method!\0A\00", align 1
@.str.372 = private unnamed_addr constant [57 x i8] c"x264 [error]: unsupported framerate for chosen pulldown\0A\00", align 1
@.str.373 = private unnamed_addr constant [40 x i8] c"x264 [error]: x264_encoder_open failed\0A\00", align 1
@.str.374 = private unnamed_addr constant [39 x i8] c"x264 [error]: can't set outfile param\0A\00", align 1
@.str.375 = private unnamed_addr constant [29 x i8] c"x264 [error]: malloc failed\0A\00", align 1
@.str.376 = private unnamed_addr constant [44 x i8] c"x264 [error]: ticks_per_frame invalid: %ld\0A\00", align 1
@.str.377 = private unnamed_addr constant [43 x i8] c"x264 [error]: x264_encoder_headers failed\0A\00", align 1
@.str.378 = private unnamed_addr constant [22 x i8] c"# timecode format v2\0A\00", align 1
@pulldown_frame_duration = internal unnamed_addr constant [10 x float] [float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00, float 1.500000e+00, float 1.500000e+00, float 2.000000e+00, float 3.000000e+00], align 16
@.str.379 = private unnamed_addr constant [69 x i8] c"x264 [warning]: non-strictly-monotonic pts at frame %d (%ld <= %ld)\0A\00", align 1
@.str.380 = private unnamed_addr constant [78 x i8] c"x264 [warning]: too many nonmonotonic pts warnings, suppressing further ones\0A\00", align 1
@.str.381 = private unnamed_addr constant [6 x i8] c"%.6f\0A\00", align 1
@.str.382 = private unnamed_addr constant [57 x i8] c"x264 [warning]: %d suppressed nonmonotonic pts warnings\0A\00", align 1
@.str.383 = private unnamed_addr constant [81 x i8] c"                                                                               \0D\00", align 1
@.str.385 = private unnamed_addr constant [40 x i8] c"encoded %d frames, %.2f fps, %.2f kb/s\0A\00", align 1
@pulldown_values = internal unnamed_addr constant <{ %struct.cli_pulldown_t, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float }, { i32, <{ i8, i8, [22 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, %struct.cli_pulldown_t }> <{ %struct.cli_pulldown_t zeroinitializer, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 4, [23 x i8] zeroinitializer }>, float 1.000000e+00 }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float } { i32 4, <{ i8, i8, i8, i8, [20 x i8] }> <{ i8 6, i8 5, i8 7, i8 4, [20 x i8] zeroinitializer }>, float 1.250000e+00 }, { i32, <{ i8, i8, [22 x i8] }>, float } { i32 2, <{ i8, i8, [22 x i8] }> <{ i8 8, i8 9, [22 x i8] zeroinitializer }>, float 1.000000e+00 }, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 8, [23 x i8] zeroinitializer }>, float 2.000000e+00 }, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 9, [23 x i8] zeroinitializer }>, float 3.000000e+00 }, %struct.cli_pulldown_t { i32 24, [24 x i8] c"\06\05\05\05\05\05\05\05\05\05\05\05\07\04\04\04\04\04\04\04\04\04\04\04", float 0x3FF0AAAAA0000000 } }>, align 16
@.str.387 = private unnamed_addr constant [10 x i8] c"%d %c %d\0A\00", align 1
@.str.388 = private unnamed_addr constant [47 x i8] c"x264 [error]: can't parse qpfile for frame %d\0A\00", align 1
@.str.389 = private unnamed_addr constant [42 x i8] c"x264 [error]: x264_encoder_encode failed\0A\00", align 1
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
define dso_local range(i32 -1, 1) i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 {
entry:
  %pic_out.i565.i = alloca %struct.x264_picture_t, align 8
  %nal.i566.i = alloca ptr, align 8
  %i_nal.i567.i = alloca i32, align 4
  %pic_out.i.i = alloca %struct.x264_picture_t, align 8
  %nal.i.i = alloca ptr, align 8
  %i_nal.i.i = alloca i32, align 4
  %num.i.i = alloca i32, align 4
  %qp.i.i = alloca i32, align 4
  %type.i.i = alloca i8, align 1
  %pic.i = alloca %struct.x264_picture_t, align 8
  %headers.i = alloca ptr, align 8
  %i_nal.i = alloca i32, align 4
  %defaults.i = alloca %struct.x264_param_t, align 8
  %input_opt.i = alloca %struct.cli_input_opt_t, align 8
  %long_options_index.i = alloca i32, align 4
  %info.i = alloca %struct.video_info_t, align 4
  %demuxername.i = alloca [5 x i8], align 1
  %i_user_timebase_num.i = alloca i64, align 8
  %i_user_timebase_den.i = alloca i64, align 8
  %param = alloca %struct.x264_param_t, align 8
  %opt = alloca %struct.cli_opt_t, align 8
  call void @llvm.lifetime.start.p0(i64 704, ptr nonnull %param) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %opt) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info.i)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %demuxername.i)
  call void @llvm.lifetime.start.p0(i64 704, ptr nonnull %defaults.i) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %input_opt.i) #15
  call void @x264_param_default(ptr noundef nonnull %defaults.i) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %opt, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %input_opt.i, i8 0, i64 32, i1 false)
  store i32 1, ptr %opt, align 8
  store i32 0, ptr @optind, align 4
  br label %for.cond.i.outer

for.cond.i.outer:                                 ; preds = %if.end3.thread.i, %entry
  %preset.0.i.ph = phi ptr [ %0, %if.end3.thread.i ], [ null, %entry ]
  %tune.0.i.ph = phi ptr [ %tune.0.i.ph551, %if.end3.thread.i ], [ null, %entry ]
  br label %for.cond.i.outer550

for.cond.i.outer550:                              ; preds = %for.cond.i.outer, %if.then5.i
  %tune.0.i.ph551 = phi ptr [ %tune.0.i.ph, %for.cond.i.outer ], [ %1, %if.then5.i ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.outer550, %for.cond.i
  %call.i = call i32 @getopt_long(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @short_options, ptr noundef nonnull @long_options, ptr noundef null) #15
  switch i32 %call.i, label %for.cond.i [
    i32 -1, label %for.end.i
    i32 265, label %if.end3.thread.i
    i32 266, label %if.then5.i
    i32 63, label %Parse.exit.thread
  ]

if.end3.thread.i:                                 ; preds = %for.cond.i
  %0 = load ptr, ptr @optarg, align 8
  br label %for.cond.i.outer

if.then5.i:                                       ; preds = %for.cond.i
  %1 = load ptr, ptr @optarg, align 8
  br label %for.cond.i.outer550

for.end.i:                                        ; preds = %for.cond.i
  %tobool.not.i = icmp eq ptr %preset.0.i.ph, null
  br i1 %tobool.not.i, label %if.end13.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %call10.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %preset.0.i.ph, ptr noundef nonnull dereferenceable(8) @.str) #16
  %tobool11.not.i = icmp ne i32 %call10.i, 0
  %spec.select.i = zext i1 %tobool11.not.i to i32
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true.i, %for.end.i
  %b_turbo.0.i = phi i32 [ 1, %for.end.i ], [ %spec.select.i, %land.lhs.true.i ]
  %call14.i = call i32 @x264_param_default_preset(ptr noundef nonnull %param, ptr noundef %preset.0.i.ph, ptr noundef %tune.0.i.ph551) #15
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %Parse.exit.thread, label %if.end17.i

if.end17.i:                                       ; preds = %if.end13.i
  store i32 0, ptr @optind, align 4
  %i_pulldown.i = getelementptr inbounds i8, ptr %opt, i64 48
  %timebase.i = getelementptr inbounds i8, ptr %input_opt.i, i64 16
  %tcfile_out.i = getelementptr inbounds i8, ptr %opt, i64 32
  %b_vfr_input.i = getelementptr inbounds i8, ptr %param, i64 648
  %i_log_level80.i = getelementptr inbounds i8, ptr %param, i64 368
  %qpfile.i = getelementptr inbounds i8, ptr %opt, i64 24
  %seek.i = getelementptr inbounds i8, ptr %input_opt.i, i64 24
  %i_seek.i = getelementptr inbounds i8, ptr %opt, i64 4
  %i_frame_total.i = getelementptr inbounds i8, ptr %param, i64 36
  br label %for.cond18.i

for.cond18.i:                                     ; preds = %cleanup140.i, %if.end17.i
  %demuxer.0.i = phi ptr [ @.str.22, %if.end17.i ], [ %demuxer.3.i, %cleanup140.i ]
  %muxer.0.i = phi ptr [ @.str.22, %if.end17.i ], [ %muxer.3.i, %cleanup140.i ]
  %b_turbo.1.i = phi i32 [ %b_turbo.0.i, %if.end17.i ], [ %b_turbo.3.i, %cleanup140.i ]
  %b_user_ref.0.i = phi i32 [ 0, %if.end17.i ], [ %b_user_ref.3.i, %cleanup140.i ]
  %b_user_fps.0.i = phi i32 [ 0, %if.end17.i ], [ %b_user_fps.3.i, %cleanup140.i ]
  %b_user_interlaced.0.i = phi i32 [ 0, %if.end17.i ], [ %b_user_interlaced.3.i, %cleanup140.i ]
  %profile.0.i = phi ptr [ null, %if.end17.i ], [ %profile.2.i, %cleanup140.i ]
  %tcfile_name.0.i = phi ptr [ null, %if.end17.i ], [ %tcfile_name.2.i, %cleanup140.i ]
  %output_filename.0.i = phi ptr [ null, %if.end17.i ], [ %output_filename.2.i, %cleanup140.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %long_options_index.i) #15
  store i32 -1, ptr %long_options_index.i, align 4
  %call20.i = call i32 @getopt_long(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @short_options, ptr noundef nonnull @long_options, ptr noundef nonnull %long_options_index.i) #15
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
  ]

sw.bb.i:                                          ; preds = %for.cond18.i
  call fastcc void @Help(ptr noundef nonnull %defaults.i, i32 noundef 0)
  call void @exit(i32 noundef 0) #17
  unreachable

sw.bb24.i:                                        ; preds = %for.cond18.i
  call fastcc void @Help(ptr noundef nonnull %defaults.i, i32 noundef 1)
  call void @exit(i32 noundef 0) #17
  unreachable

sw.bb25.i:                                        ; preds = %for.cond18.i
  call fastcc void @Help(ptr noundef nonnull %defaults.i, i32 noundef 2)
  call void @exit(i32 noundef 0) #17
  unreachable

sw.bb26.i:                                        ; preds = %for.cond18.i
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @exit(i32 noundef 0) #17
  unreachable

sw.bb28.i:                                        ; preds = %for.cond18.i
  %2 = load ptr, ptr @optarg, align 8
  %call.i.i = call i64 @strtol(ptr nocapture noundef nonnull %2, ptr noundef null, i32 noundef 10) #15
  %conv.i.i = trunc i64 %call.i.i to i32
  %spec.select499.i = call i32 @llvm.smax.i32(i32 %conv.i.i, i32 1)
  store i32 %spec.select499.i, ptr @tga_dump_rate, align 4
  br label %cleanup140.i

sw.bb32.i:                                        ; preds = %for.cond18.i
  %3 = load ptr, ptr @optarg, align 8
  %call.i503.i = call i64 @strtol(ptr nocapture noundef nonnull %3, ptr noundef null, i32 noundef 10) #15
  %conv.i504.i = trunc i64 %call.i503.i to i32
  %spec.select500.i = call i32 @llvm.smax.i32(i32 %conv.i504.i, i32 0)
  store i32 %spec.select500.i, ptr %i_frame_total.i, align 4
  br label %cleanup140.i

sw.bb40.i:                                        ; preds = %for.cond18.i
  %4 = load ptr, ptr @optarg, align 8
  %call.i505.i = call i64 @strtol(ptr nocapture noundef nonnull %4, ptr noundef null, i32 noundef 10) #15
  %conv.i506.i = trunc i64 %call.i505.i to i32
  %spec.select501.i = call i32 @llvm.smax.i32(i32 %conv.i506.i, i32 0)
  store i32 %spec.select501.i, ptr %seek.i, align 8
  store i32 %spec.select501.i, ptr %i_seek.i, align 4
  store i32 %spec.select501.i, ptr @seek_val, align 4
  br label %cleanup140.i

sw.bb49.i:                                        ; preds = %for.cond18.i
  %5 = load ptr, ptr @optarg, align 8
  br label %cleanup140.i

sw.bb50.i:                                        ; preds = %for.cond18.i
  %6 = load ptr, ptr @optarg, align 8
  %call.i507.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.22) #16
  %tobool3.not.i.i = icmp eq i32 %call.i507.i, 0
  br i1 %tobool3.not.i.i, label %cleanup140.i, label %for.cond.i.i

for.cond.i.i:                                     ; preds = %sw.bb50.i
  %call.i507.1.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.25) #16
  %tobool3.not.i.1.i = icmp eq i32 %call.i507.1.i, 0
  br i1 %tobool3.not.i.1.i, label %cleanup140.i, label %for.cond.i.1.i

for.cond.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i507.2.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.26) #16
  %tobool3.not.i.2.i = icmp eq i32 %call.i507.2.i, 0
  br i1 %tobool3.not.i.2.i, label %cleanup140.i, label %for.cond.i.2.i

for.cond.i.2.i:                                   ; preds = %for.cond.i.1.i
  %call.i507.3.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.27) #16
  %tobool3.not.i.3.i = icmp eq i32 %call.i507.3.i, 0
  br i1 %tobool3.not.i.3.i, label %cleanup140.i, label %cleanup140.thread.i

sw.bb55.i:                                        ; preds = %for.cond18.i
  %7 = load ptr, ptr @optarg, align 8
  %call.i510.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %7, ptr noundef nonnull dereferenceable(5) @.str.22) #16
  %tobool3.not.i511.i = icmp eq i32 %call.i510.i, 0
  br i1 %tobool3.not.i511.i, label %cleanup140.i, label %for.cond.i512.i

for.cond.i512.i:                                  ; preds = %sw.bb55.i
  %call.i510.1.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.23) #16
  %tobool3.not.i511.1.i = icmp eq i32 %call.i510.1.i, 0
  br i1 %tobool3.not.i511.1.i, label %cleanup140.i, label %for.cond.i512.1.i

for.cond.i512.1.i:                                ; preds = %for.cond.i512.i
  %call.i510.2.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.24) #16
  %tobool3.not.i511.2.i = icmp eq i32 %call.i510.2.i, 0
  br i1 %tobool3.not.i511.2.i, label %cleanup140.i, label %cleanup140.thread.i

sw.bb60.i:                                        ; preds = %for.cond18.i
  %8 = load ptr, ptr @optarg, align 8
  store ptr %8, ptr %input_opt.i, align 8
  br label %cleanup140.i

sw.bb61.i:                                        ; preds = %for.cond18.i
  %9 = load ptr, ptr @optarg, align 8
  %call62.i = call noalias ptr @fopen(ptr noundef %9, ptr noundef nonnull @.str.2)
  store ptr %call62.i, ptr %qpfile.i, align 8
  %tobool64.not.i = icmp eq ptr %call62.i, null
  br i1 %tobool64.not.i, label %if.then65.i, label %cleanup140.i

if.then65.i:                                      ; preds = %sw.bb61.i
  %10 = load ptr, ptr @stderr, align 8
  %11 = load ptr, ptr @optarg, align 8
  %call66.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef %11) #18
  br label %cleanup140.thread.i

sw.bb78.i:                                        ; preds = %for.cond18.i
  store i32 -1, ptr %i_log_level80.i, align 8
  br label %cleanup140.i

sw.bb79.i:                                        ; preds = %for.cond18.i
  store i32 3, ptr %i_log_level80.i, align 8
  br label %cleanup140.i

sw.bb81.i:                                        ; preds = %for.cond18.i
  store i32 0, ptr %opt, align 8
  br label %cleanup140.i

sw.bb83.i:                                        ; preds = %for.cond18.i
  %12 = load ptr, ptr @stderr, align 8
  %13 = call i64 @fwrite(ptr nonnull @.str.5, i64 56, i64 1, ptr %12) #19
  br label %cleanup140.i

sw.bb86.i:                                        ; preds = %for.cond18.i
  %14 = load ptr, ptr @optarg, align 8
  br label %cleanup140.i

sw.bb87.i:                                        ; preds = %for.cond18.i
  br label %cleanup140.i

sw.bb88.i:                                        ; preds = %for.cond18.i
  br label %generic_option.i

sw.bb89.i:                                        ; preds = %for.cond18.i
  store i32 0, ptr %b_vfr_input.i, align 8
  br label %generic_option.i

sw.bb90.i:                                        ; preds = %for.cond18.i
  br label %generic_option.i

sw.bb91.i:                                        ; preds = %for.cond18.i
  %15 = load ptr, ptr @optarg, align 8
  br label %cleanup140.i

sw.bb92.i:                                        ; preds = %for.cond18.i
  %16 = load ptr, ptr @optarg, align 8
  %call93.i = call noalias ptr @fopen(ptr noundef %16, ptr noundef nonnull @.str.6)
  store ptr %call93.i, ptr %tcfile_out.i, align 8
  %tobool95.not.i = icmp eq ptr %call93.i, null
  br i1 %tobool95.not.i, label %if.then96.i, label %cleanup140.i

if.then96.i:                                      ; preds = %sw.bb92.i
  %17 = load ptr, ptr @stderr, align 8
  %18 = load ptr, ptr @optarg, align 8
  %call97.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.7, ptr noundef %18) #18
  br label %cleanup140.thread.i

sw.bb99.i:                                        ; preds = %for.cond18.i
  %19 = load ptr, ptr @optarg, align 8
  store ptr %19, ptr %timebase.i, align 8
  br label %cleanup140.i

sw.bb100.i:                                       ; preds = %for.cond18.i
  %20 = load ptr, ptr @optarg, align 8
  %call.i519.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %20, ptr noundef nonnull dereferenceable(5) @.str.323) #16
  %tobool3.not.i520.i = icmp eq i32 %call.i519.i, 0
  br i1 %tobool3.not.i520.i, label %parse_enum_value.exit.i, label %sub_0.i

sub_0.i:                                          ; preds = %sw.bb100.i
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
  %tobool3.not.1.i.i = icmp eq i32 %31, 0
  br i1 %tobool3.not.1.i.i, label %parse_enum_value.exit.i, label %sub_0611.i

sub_0611.i:                                       ; preds = %for.inc.i.tail.i
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
  %tobool3.not.2.i.i = icmp eq i32 %40, 0
  br i1 %tobool3.not.2.i.i, label %parse_enum_value.exit.i, label %sub_0615.i

sub_0615.i:                                       ; preds = %for.inc.1.i.tail.i
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
  %tobool3.not.3.i.i = icmp eq i32 %49, 0
  br i1 %tobool3.not.3.i.i, label %parse_enum_value.exit.i, label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.tail.i
  %call.4.i.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %20, ptr noundef nonnull dereferenceable(7) @.str.360) #16
  %tobool3.not.4.i.i = icmp eq i32 %call.4.i.i, 0
  br i1 %tobool3.not.4.i.i, label %parse_enum_value.exit.i, label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %call.5.i.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %20, ptr noundef nonnull dereferenceable(7) @.str.361) #16
  %tobool3.not.5.i.i = icmp eq i32 %call.5.i.i, 0
  br i1 %tobool3.not.5.i.i, label %parse_enum_value.exit.i, label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %call.6.i.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %20, ptr noundef nonnull dereferenceable(5) @.str.362) #16
  %tobool3.not.6.i.i = icmp eq i32 %call.6.i.i, 0
  br i1 %tobool3.not.6.i.i, label %parse_enum_value.exit.i, label %cleanup140.thread.i

parse_enum_value.exit.i:                          ; preds = %for.inc.5.i.i, %for.inc.4.i.i, %for.inc.3.i.i, %for.inc.2.i.tail.i, %for.inc.1.i.tail.i, %for.inc.i.tail.i, %sw.bb100.i
  %i.04.lcssa.wide.i.i = phi i32 [ 0, %sw.bb100.i ], [ 1, %for.inc.i.tail.i ], [ 2, %for.inc.1.i.tail.i ], [ 3, %for.inc.2.i.tail.i ], [ 4, %for.inc.3.i.i ], [ 5, %for.inc.4.i.i ], [ 6, %for.inc.5.i.i ]
  store i32 %i.04.lcssa.wide.i.i, ptr %i_pulldown.i, align 8
  br label %cleanup140.i

generic_option.i:                                 ; preds = %sw.bb90.i, %sw.bb89.i, %sw.bb88.i, %for.cond18.i
  %b_user_ref.1.i = phi i32 [ %b_user_ref.0.i, %sw.bb90.i ], [ %b_user_ref.0.i, %sw.bb89.i ], [ 1, %sw.bb88.i ], [ %b_user_ref.0.i, %for.cond18.i ]
  %b_user_fps.1.i = phi i32 [ %b_user_fps.0.i, %sw.bb90.i ], [ 1, %sw.bb89.i ], [ %b_user_fps.0.i, %sw.bb88.i ], [ %b_user_fps.0.i, %for.cond18.i ]
  %b_user_interlaced.1.i = phi i32 [ 1, %sw.bb90.i ], [ %b_user_interlaced.0.i, %sw.bb89.i ], [ %b_user_interlaced.0.i, %sw.bb88.i ], [ %b_user_interlaced.0.i, %for.cond18.i ]
  %50 = load i32, ptr %long_options_index.i, align 4
  %cmp105.i = icmp slt i32 %50, 0
  br i1 %cmp105.i, label %for.cond107.preheader.i, label %sw.epilog.i

for.cond107.preheader.i:                          ; preds = %generic_option.i
  %51 = load ptr, ptr @long_options, align 16
  %tobool108.not723.i = icmp eq ptr %51, null
  br i1 %tobool108.not723.i, label %cleanup140.thread.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond107.preheader.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.cond107.preheader.i ]
  %arrayidx725.i = phi ptr [ %arrayidx.i, %for.inc.i ], [ @long_options, %for.cond107.preheader.i ]
  %val.i = getelementptr inbounds i8, ptr %arrayidx725.i, i64 24
  %52 = load i32, ptr %val.i, align 8
  %cmp111.i = icmp eq i32 %52, %call20.i
  br i1 %cmp111.i, label %cleanup114.thread.i, label %for.inc.i

cleanup114.thread.i:                              ; preds = %for.body.i
  %53 = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %53, ptr %long_options_index.i, align 4
  br label %sw.epilog.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.i = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %indvars.iv.next.i
  %54 = load ptr, ptr %arrayidx.i, align 16
  %tobool108.not.i = icmp eq ptr %54, null
  br i1 %tobool108.not.i, label %cleanup140.thread.i, label %for.body.i

sw.epilog.i:                                      ; preds = %cleanup114.thread.i, %generic_option.i
  %55 = phi i32 [ %50, %generic_option.i ], [ %53, %cleanup114.thread.i ]
  %idxprom120.i = sext i32 %55 to i64
  %arrayidx121.i = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %idxprom120.i
  %56 = load ptr, ptr %arrayidx121.i, align 16
  %57 = load ptr, ptr @optarg, align 8
  %call123.i = call i32 @x264_param_parse(ptr noundef nonnull %param, ptr noundef %56, ptr noundef %57) #15
  %tobool124.not.i = icmp eq i32 %call123.i, 0
  br i1 %tobool124.not.i, label %cleanup140.i, label %if.then125.i

if.then125.i:                                     ; preds = %sw.epilog.i
  %58 = load i32, ptr %long_options_index.i, align 4
  %cmp127.i = icmp sgt i32 %58, 0
  %idxprom129.i = zext nneg i32 %58 to i64
  %arrayidx130.i = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %idxprom129.i
  %59 = load i32, ptr @optind, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr ptr, ptr %argv, i64 %60
  %arrayidx134.i = getelementptr i8, ptr %61, i64 -16
  %cond136.in.i = select i1 %cmp127.i, ptr %arrayidx130.i, ptr %arrayidx134.i
  %cond136.i = load ptr, ptr %cond136.in.i, align 8
  %62 = load ptr, ptr @stderr, align 8
  %63 = load ptr, ptr @optarg, align 8
  %call137.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.8, ptr noundef %cond136.i, ptr noundef %63) #18
  br label %cleanup140.thread.i

cleanup140.thread.i:                              ; preds = %for.cond107.preheader.i, %for.inc.5.i.i, %for.cond.i512.1.i, %for.cond.i.2.i, %for.inc.i, %if.then125.i, %if.then96.i, %if.then65.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_options_index.i) #15
  br label %Parse.exit.thread

cleanup140.i:                                     ; preds = %sw.epilog.i, %parse_enum_value.exit.i, %sw.bb99.i, %sw.bb92.i, %sw.bb91.i, %sw.bb87.i, %sw.bb86.i, %sw.bb83.i, %sw.bb81.i, %sw.bb79.i, %sw.bb78.i, %sw.bb61.i, %sw.bb60.i, %for.cond.i512.1.i, %for.cond.i512.i, %sw.bb55.i, %for.cond.i.2.i, %for.cond.i.1.i, %for.cond.i.i, %sw.bb50.i, %sw.bb49.i, %sw.bb40.i, %sw.bb32.i, %sw.bb28.i, %for.cond18.i, %for.cond18.i, %for.cond18.i
  %demuxer.3.i = phi ptr [ %demuxer.0.i, %sw.epilog.i ], [ %demuxer.0.i, %sw.bb61.i ], [ %demuxer.0.i, %sw.bb28.i ], [ %demuxer.0.i, %sw.bb32.i ], [ %demuxer.0.i, %sw.bb40.i ], [ %demuxer.0.i, %sw.bb49.i ], [ %demuxer.0.i, %sw.bb60.i ], [ %demuxer.0.i, %for.cond18.i ], [ %demuxer.0.i, %for.cond18.i ], [ %demuxer.0.i, %for.cond18.i ], [ %demuxer.0.i, %sw.bb78.i ], [ %demuxer.0.i, %sw.bb79.i ], [ %demuxer.0.i, %sw.bb81.i ], [ %demuxer.0.i, %sw.bb83.i ], [ %demuxer.0.i, %sw.bb86.i ], [ %demuxer.0.i, %sw.bb87.i ], [ %demuxer.0.i, %sw.bb91.i ], [ %demuxer.0.i, %sw.bb92.i ], [ %demuxer.0.i, %sw.bb99.i ], [ %demuxer.0.i, %parse_enum_value.exit.i ], [ %demuxer.0.i, %for.cond.i.2.i ], [ %demuxer.0.i, %for.cond.i.1.i ], [ %demuxer.0.i, %for.cond.i.i ], [ %demuxer.0.i, %sw.bb50.i ], [ @.str.22, %sw.bb55.i ], [ @.str.23, %for.cond.i512.i ], [ @.str.24, %for.cond.i512.1.i ]
  %muxer.3.i = phi ptr [ %muxer.0.i, %sw.epilog.i ], [ %muxer.0.i, %sw.bb61.i ], [ %muxer.0.i, %sw.bb28.i ], [ %muxer.0.i, %sw.bb32.i ], [ %muxer.0.i, %sw.bb40.i ], [ %muxer.0.i, %sw.bb49.i ], [ %muxer.0.i, %sw.bb60.i ], [ %muxer.0.i, %for.cond18.i ], [ %muxer.0.i, %for.cond18.i ], [ %muxer.0.i, %for.cond18.i ], [ %muxer.0.i, %sw.bb78.i ], [ %muxer.0.i, %sw.bb79.i ], [ %muxer.0.i, %sw.bb81.i ], [ %muxer.0.i, %sw.bb83.i ], [ %muxer.0.i, %sw.bb86.i ], [ %muxer.0.i, %sw.bb87.i ], [ %muxer.0.i, %sw.bb91.i ], [ %muxer.0.i, %sw.bb92.i ], [ %muxer.0.i, %sw.bb99.i ], [ %muxer.0.i, %parse_enum_value.exit.i ], [ @.str.27, %for.cond.i.2.i ], [ @.str.26, %for.cond.i.1.i ], [ @.str.25, %for.cond.i.i ], [ @.str.22, %sw.bb50.i ], [ %muxer.0.i, %sw.bb55.i ], [ %muxer.0.i, %for.cond.i512.i ], [ %muxer.0.i, %for.cond.i512.1.i ]
  %b_turbo.3.i = phi i32 [ %b_turbo.1.i, %sw.epilog.i ], [ %b_turbo.1.i, %sw.bb61.i ], [ %b_turbo.1.i, %sw.bb28.i ], [ %b_turbo.1.i, %sw.bb32.i ], [ %b_turbo.1.i, %sw.bb40.i ], [ %b_turbo.1.i, %sw.bb49.i ], [ %b_turbo.1.i, %sw.bb60.i ], [ %b_turbo.1.i, %for.cond18.i ], [ %b_turbo.1.i, %for.cond18.i ], [ %b_turbo.1.i, %for.cond18.i ], [ %b_turbo.1.i, %sw.bb78.i ], [ %b_turbo.1.i, %sw.bb79.i ], [ %b_turbo.1.i, %sw.bb81.i ], [ %b_turbo.1.i, %sw.bb83.i ], [ %b_turbo.1.i, %sw.bb86.i ], [ 0, %sw.bb87.i ], [ %b_turbo.1.i, %sw.bb91.i ], [ %b_turbo.1.i, %sw.bb92.i ], [ %b_turbo.1.i, %sw.bb99.i ], [ %b_turbo.1.i, %parse_enum_value.exit.i ], [ %b_turbo.1.i, %for.cond.i.2.i ], [ %b_turbo.1.i, %for.cond.i.1.i ], [ %b_turbo.1.i, %for.cond.i.i ], [ %b_turbo.1.i, %sw.bb50.i ], [ %b_turbo.1.i, %sw.bb55.i ], [ %b_turbo.1.i, %for.cond.i512.i ], [ %b_turbo.1.i, %for.cond.i512.1.i ]
  %b_user_ref.3.i = phi i32 [ %b_user_ref.1.i, %sw.epilog.i ], [ %b_user_ref.0.i, %sw.bb61.i ], [ %b_user_ref.0.i, %sw.bb28.i ], [ %b_user_ref.0.i, %sw.bb32.i ], [ %b_user_ref.0.i, %sw.bb40.i ], [ %b_user_ref.0.i, %sw.bb49.i ], [ %b_user_ref.0.i, %sw.bb60.i ], [ %b_user_ref.0.i, %for.cond18.i ], [ %b_user_ref.0.i, %for.cond18.i ], [ %b_user_ref.0.i, %for.cond18.i ], [ %b_user_ref.0.i, %sw.bb78.i ], [ %b_user_ref.0.i, %sw.bb79.i ], [ %b_user_ref.0.i, %sw.bb81.i ], [ %b_user_ref.0.i, %sw.bb83.i ], [ %b_user_ref.0.i, %sw.bb86.i ], [ %b_user_ref.0.i, %sw.bb87.i ], [ %b_user_ref.0.i, %sw.bb91.i ], [ %b_user_ref.0.i, %sw.bb92.i ], [ %b_user_ref.0.i, %sw.bb99.i ], [ %b_user_ref.0.i, %parse_enum_value.exit.i ], [ %b_user_ref.0.i, %for.cond.i.2.i ], [ %b_user_ref.0.i, %for.cond.i.1.i ], [ %b_user_ref.0.i, %for.cond.i.i ], [ %b_user_ref.0.i, %sw.bb50.i ], [ %b_user_ref.0.i, %sw.bb55.i ], [ %b_user_ref.0.i, %for.cond.i512.i ], [ %b_user_ref.0.i, %for.cond.i512.1.i ]
  %b_user_fps.3.i = phi i32 [ %b_user_fps.1.i, %sw.epilog.i ], [ %b_user_fps.0.i, %sw.bb61.i ], [ %b_user_fps.0.i, %sw.bb28.i ], [ %b_user_fps.0.i, %sw.bb32.i ], [ %b_user_fps.0.i, %sw.bb40.i ], [ %b_user_fps.0.i, %sw.bb49.i ], [ %b_user_fps.0.i, %sw.bb60.i ], [ %b_user_fps.0.i, %for.cond18.i ], [ %b_user_fps.0.i, %for.cond18.i ], [ %b_user_fps.0.i, %for.cond18.i ], [ %b_user_fps.0.i, %sw.bb78.i ], [ %b_user_fps.0.i, %sw.bb79.i ], [ %b_user_fps.0.i, %sw.bb81.i ], [ %b_user_fps.0.i, %sw.bb83.i ], [ %b_user_fps.0.i, %sw.bb86.i ], [ %b_user_fps.0.i, %sw.bb87.i ], [ %b_user_fps.0.i, %sw.bb91.i ], [ %b_user_fps.0.i, %sw.bb92.i ], [ %b_user_fps.0.i, %sw.bb99.i ], [ %b_user_fps.0.i, %parse_enum_value.exit.i ], [ %b_user_fps.0.i, %for.cond.i.2.i ], [ %b_user_fps.0.i, %for.cond.i.1.i ], [ %b_user_fps.0.i, %for.cond.i.i ], [ %b_user_fps.0.i, %sw.bb50.i ], [ %b_user_fps.0.i, %sw.bb55.i ], [ %b_user_fps.0.i, %for.cond.i512.i ], [ %b_user_fps.0.i, %for.cond.i512.1.i ]
  %b_user_interlaced.3.i = phi i32 [ %b_user_interlaced.1.i, %sw.epilog.i ], [ %b_user_interlaced.0.i, %sw.bb61.i ], [ %b_user_interlaced.0.i, %sw.bb28.i ], [ %b_user_interlaced.0.i, %sw.bb32.i ], [ %b_user_interlaced.0.i, %sw.bb40.i ], [ %b_user_interlaced.0.i, %sw.bb49.i ], [ %b_user_interlaced.0.i, %sw.bb60.i ], [ %b_user_interlaced.0.i, %for.cond18.i ], [ %b_user_interlaced.0.i, %for.cond18.i ], [ %b_user_interlaced.0.i, %for.cond18.i ], [ %b_user_interlaced.0.i, %sw.bb78.i ], [ %b_user_interlaced.0.i, %sw.bb79.i ], [ %b_user_interlaced.0.i, %sw.bb81.i ], [ %b_user_interlaced.0.i, %sw.bb83.i ], [ %b_user_interlaced.0.i, %sw.bb86.i ], [ %b_user_interlaced.0.i, %sw.bb87.i ], [ %b_user_interlaced.0.i, %sw.bb91.i ], [ %b_user_interlaced.0.i, %sw.bb92.i ], [ %b_user_interlaced.0.i, %sw.bb99.i ], [ %b_user_interlaced.0.i, %parse_enum_value.exit.i ], [ %b_user_interlaced.0.i, %for.cond.i.2.i ], [ %b_user_interlaced.0.i, %for.cond.i.1.i ], [ %b_user_interlaced.0.i, %for.cond.i.i ], [ %b_user_interlaced.0.i, %sw.bb50.i ], [ %b_user_interlaced.0.i, %sw.bb55.i ], [ %b_user_interlaced.0.i, %for.cond.i512.i ], [ %b_user_interlaced.0.i, %for.cond.i512.1.i ]
  %profile.2.i = phi ptr [ %profile.0.i, %sw.epilog.i ], [ %profile.0.i, %sw.bb61.i ], [ %profile.0.i, %sw.bb28.i ], [ %profile.0.i, %sw.bb32.i ], [ %profile.0.i, %sw.bb40.i ], [ %profile.0.i, %sw.bb49.i ], [ %profile.0.i, %sw.bb60.i ], [ %profile.0.i, %for.cond18.i ], [ %profile.0.i, %for.cond18.i ], [ %profile.0.i, %for.cond18.i ], [ %profile.0.i, %sw.bb78.i ], [ %profile.0.i, %sw.bb79.i ], [ %profile.0.i, %sw.bb81.i ], [ %profile.0.i, %sw.bb83.i ], [ %14, %sw.bb86.i ], [ %profile.0.i, %sw.bb87.i ], [ %profile.0.i, %sw.bb91.i ], [ %profile.0.i, %sw.bb92.i ], [ %profile.0.i, %sw.bb99.i ], [ %profile.0.i, %parse_enum_value.exit.i ], [ %profile.0.i, %for.cond.i.2.i ], [ %profile.0.i, %for.cond.i.1.i ], [ %profile.0.i, %for.cond.i.i ], [ %profile.0.i, %sw.bb50.i ], [ %profile.0.i, %sw.bb55.i ], [ %profile.0.i, %for.cond.i512.i ], [ %profile.0.i, %for.cond.i512.1.i ]
  %tcfile_name.2.i = phi ptr [ %tcfile_name.0.i, %sw.epilog.i ], [ %tcfile_name.0.i, %sw.bb61.i ], [ %tcfile_name.0.i, %sw.bb28.i ], [ %tcfile_name.0.i, %sw.bb32.i ], [ %tcfile_name.0.i, %sw.bb40.i ], [ %tcfile_name.0.i, %sw.bb49.i ], [ %tcfile_name.0.i, %sw.bb60.i ], [ %tcfile_name.0.i, %for.cond18.i ], [ %tcfile_name.0.i, %for.cond18.i ], [ %tcfile_name.0.i, %for.cond18.i ], [ %tcfile_name.0.i, %sw.bb78.i ], [ %tcfile_name.0.i, %sw.bb79.i ], [ %tcfile_name.0.i, %sw.bb81.i ], [ %tcfile_name.0.i, %sw.bb83.i ], [ %tcfile_name.0.i, %sw.bb86.i ], [ %tcfile_name.0.i, %sw.bb87.i ], [ %15, %sw.bb91.i ], [ %tcfile_name.0.i, %sw.bb92.i ], [ %tcfile_name.0.i, %sw.bb99.i ], [ %tcfile_name.0.i, %parse_enum_value.exit.i ], [ %tcfile_name.0.i, %for.cond.i.2.i ], [ %tcfile_name.0.i, %for.cond.i.1.i ], [ %tcfile_name.0.i, %for.cond.i.i ], [ %tcfile_name.0.i, %sw.bb50.i ], [ %tcfile_name.0.i, %sw.bb55.i ], [ %tcfile_name.0.i, %for.cond.i512.i ], [ %tcfile_name.0.i, %for.cond.i512.1.i ]
  %output_filename.2.i = phi ptr [ %output_filename.0.i, %sw.epilog.i ], [ %output_filename.0.i, %sw.bb61.i ], [ %output_filename.0.i, %sw.bb28.i ], [ %output_filename.0.i, %sw.bb32.i ], [ %output_filename.0.i, %sw.bb40.i ], [ %5, %sw.bb49.i ], [ %output_filename.0.i, %sw.bb60.i ], [ %output_filename.0.i, %for.cond18.i ], [ %output_filename.0.i, %for.cond18.i ], [ %output_filename.0.i, %for.cond18.i ], [ %output_filename.0.i, %sw.bb78.i ], [ %output_filename.0.i, %sw.bb79.i ], [ %output_filename.0.i, %sw.bb81.i ], [ %output_filename.0.i, %sw.bb83.i ], [ %output_filename.0.i, %sw.bb86.i ], [ %output_filename.0.i, %sw.bb87.i ], [ %output_filename.0.i, %sw.bb91.i ], [ %output_filename.0.i, %sw.bb92.i ], [ %output_filename.0.i, %sw.bb99.i ], [ %output_filename.0.i, %parse_enum_value.exit.i ], [ %output_filename.0.i, %for.cond.i.2.i ], [ %output_filename.0.i, %for.cond.i.1.i ], [ %output_filename.0.i, %for.cond.i.i ], [ %output_filename.0.i, %sw.bb50.i ], [ %output_filename.0.i, %sw.bb55.i ], [ %output_filename.0.i, %for.cond.i512.i ], [ %output_filename.0.i, %for.cond.i512.1.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_options_index.i) #15
  br label %for.cond18.i

for.end145.i:                                     ; preds = %for.cond18.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_options_index.i) #15
  %tobool146.not.i = icmp eq i32 %b_turbo.1.i, 0
  br i1 %tobool146.not.i, label %if.end148.i, label %if.then147.i

if.then147.i:                                     ; preds = %for.end145.i
  call void @x264_param_apply_fastfirstpass(ptr noundef nonnull %param) #15
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then147.i, %for.end145.i
  %call149.i = call i32 @x264_param_apply_profile(ptr noundef nonnull %param, ptr noundef %profile.0.i) #15
  %cmp150.i = icmp slt i32 %call149.i, 0
  br i1 %cmp150.i, label %Parse.exit.thread, label %if.end152.i

if.end152.i:                                      ; preds = %if.end148.i
  %64 = load i32, ptr @optind, align 4
  %cmp154.i = icmp slt i32 %64, %argc
  %tobool155.i = icmp ne ptr %output_filename.0.i, null
  %or.cond.i = select i1 %cmp154.i, i1 %tobool155.i, i1 false
  br i1 %or.cond.i, label %if.end161.i, label %if.then156.i

if.then156.i:                                     ; preds = %if.end152.i
  %65 = load ptr, ptr @stderr, align 8
  %cond159.i = select i1 %cmp154.i, ptr @.str.11, ptr @.str.10
  %call160.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond159.i) #18
  br label %Parse.exit.thread

if.end161.i:                                      ; preds = %if.end152.i
  %call.i.i.i = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %output_filename.0.i) #16
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %output_filename.0.i, i64 %call.i.i.i
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i, %if.end161.i
  %ext.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end161.i ], [ %incdec.ptr.i.i.i, %while.cond.i.i.i ]
  %66 = load i8, ptr %ext.0.i.i.i, align 1
  %cmp.i.i.i = icmp ne i8 %66, 46
  %cmp2.i.i.i = icmp ugt ptr %ext.0.i.i.i, %output_filename.0.i
  %67 = and i1 %cmp2.i.i.i, %cmp.i.i.i
  %incdec.ptr.i.i.i = getelementptr inbounds i8, ptr %ext.0.i.i.i, i64 -1
  br i1 %67, label %while.cond.i.i.i, label %sub_0.i.i

sub_0.i.i:                                        ; preds = %while.cond.i.i.i
  %68 = load i8, ptr %output_filename.0.i, align 1
  %.not.i.i = icmp eq i8 %68, 45
  br i1 %.not.i.i, label %get_filename_extension.exit.tail.i.i, label %lor.lhs.false.i.i

get_filename_extension.exit.tail.i.i:             ; preds = %sub_0.i.i
  %69 = getelementptr inbounds i8, ptr %output_filename.0.i, i64 1
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %if.then.i523.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %get_filename_extension.exit.tail.i.i, %sub_0.i.i
  %cmp5.i.i.i = icmp eq i8 %66, 46
  %idx.ext.i.i.i = zext i1 %cmp5.i.i.i to i64
  %add.ptr7.i.i.i = getelementptr inbounds i8, ptr %ext.0.i.i.i, i64 %idx.ext.i.i.i
  %call2.i.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %muxer.0.i, ptr noundef nonnull dereferenceable(5) @.str.22) #16
  %tobool3.not.i522.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i522.i, label %if.end.i.i, label %if.then.i523.i

if.then.i523.i:                                   ; preds = %lor.lhs.false.i.i, %get_filename_extension.exit.tail.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i523.i, %lor.lhs.false.i.i
  %ext.0.i.i = phi ptr [ %muxer.0.i, %if.then.i523.i ], [ %add.ptr7.i.i.i, %lor.lhs.false.i.i ]
  %call4.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %ext.0.i.i, ptr noundef nonnull dereferenceable(4) @.str.364) #16
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %select_output.exit.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %call8.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %ext.0.i.i, ptr noundef nonnull dereferenceable(4) @.str.26) #16
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.else11.i.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @mkv_output, i64 40, i1 false)
  %b_annexb.i.i = getelementptr inbounds i8, ptr %param, i64 640
  store i32 0, ptr %b_annexb.i.i, align 8
  %b_dts_compress.i.i = getelementptr inbounds i8, ptr %param, i64 668
  store i32 0, ptr %b_dts_compress.i.i, align 4
  %b_repeat_headers.i.i = getelementptr inbounds i8, ptr %param, i64 636
  store i32 0, ptr %b_repeat_headers.i.i, align 4
  br label %if.end165.i

if.else11.i.i:                                    ; preds = %if.else.i.i
  %call12.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %ext.0.i.i, ptr noundef nonnull dereferenceable(4) @.str.27) #16
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %if.else18.i.i

if.then14.i.i:                                    ; preds = %if.else11.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @flv_output, i64 40, i1 false)
  %b_annexb15.i.i = getelementptr inbounds i8, ptr %param, i64 640
  store i32 0, ptr %b_annexb15.i.i, align 8
  %b_dts_compress16.i.i = getelementptr inbounds i8, ptr %param, i64 668
  store i32 1, ptr %b_dts_compress16.i.i, align 4
  %b_repeat_headers17.i.i = getelementptr inbounds i8, ptr %param, i64 636
  store i32 0, ptr %b_repeat_headers17.i.i, align 4
  br label %if.end165.i

if.else18.i.i:                                    ; preds = %if.else11.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @raw_output, i64 40, i1 false)
  br label %if.end165.i

select_output.exit.i:                             ; preds = %if.end.i.i
  %72 = load ptr, ptr @stderr, align 8
  %73 = call i64 @fwrite(ptr nonnull @.str.365, i64 51, i64 1, ptr %72) #19
  br label %Parse.exit.thread

if.end165.i:                                      ; preds = %if.else18.i.i, %if.then14.i.i, %if.then10.i.i
  %74 = load ptr, ptr @output, align 8
  %hout.i = getelementptr inbounds i8, ptr %opt, i64 16
  %call166.i = call i32 %74(ptr noundef nonnull %output_filename.0.i, ptr noundef nonnull %hout.i) #15
  %tobool167.not.i = icmp eq i32 %call166.i, 0
  br i1 %tobool167.not.i, label %if.end170.i, label %if.then168.i

if.then168.i:                                     ; preds = %if.end165.i
  %75 = load ptr, ptr @stderr, align 8
  %call169.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.12, ptr noundef nonnull %output_filename.0.i) #18
  br label %Parse.exit.thread

if.end170.i:                                      ; preds = %if.end165.i
  %76 = load i32, ptr @optind, align 4
  %inc171.i = add nsw i32 %76, 1
  store i32 %inc171.i, ptr @optind, align 4
  %idxprom172.i = sext i32 %76 to i64
  %arrayidx173.i = getelementptr inbounds ptr, ptr %argv, i64 %idxprom172.i
  %77 = load ptr, ptr %arrayidx173.i, align 8
  %cmp174.i = icmp slt i32 %inc171.i, %argc
  br i1 %cmp174.i, label %cond.true175.i, label %cond.end180.i

cond.true175.i:                                   ; preds = %if.end170.i
  %inc176.i = add nsw i32 %76, 2
  store i32 %inc176.i, ptr @optind, align 4
  %idxprom177.i = sext i32 %inc171.i to i64
  %arrayidx178.i = getelementptr inbounds ptr, ptr %argv, i64 %idxprom177.i
  %78 = load ptr, ptr %arrayidx178.i, align 8
  br label %cond.end180.i

cond.end180.i:                                    ; preds = %cond.true175.i, %if.end170.i
  %cond181.i = phi ptr [ %78, %cond.true175.i ], [ null, %if.end170.i ]
  %resolution.i = getelementptr inbounds i8, ptr %input_opt.i, i64 8
  store ptr %cond181.i, ptr %resolution.i, align 8
  %79 = getelementptr inbounds i8, ptr %info.i, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %79, i8 0, i64 36, i1 false)
  %i_csp.i = getelementptr inbounds i8, ptr %param, i64 28
  %80 = load i32, ptr %i_csp.i, align 4
  store i32 %80, ptr %info.i, align 4
  %i_fps_num.i = getelementptr inbounds i8, ptr %param, i64 652
  %fps_num.i = getelementptr inbounds i8, ptr %info.i, i64 4
  %i_fps_den.i = getelementptr inbounds i8, ptr %param, i64 656
  %fps_den.i = getelementptr inbounds i8, ptr %info.i, i64 8
  %81 = load <2 x i32>, ptr %i_fps_num.i, align 4
  store <2 x i32> %81, ptr %fps_num.i, align 4
  %b_interlaced.i = getelementptr inbounds i8, ptr %param, i64 136
  %82 = load i32, ptr %b_interlaced.i, align 8
  %interlaced.i = getelementptr inbounds i8, ptr %info.i, i64 16
  store i32 %82, ptr %interlaced.i, align 4
  %vui.i = getelementptr inbounds i8, ptr %param, i64 44
  %i_sar_width.i = getelementptr inbounds i8, ptr %param, i64 48
  %sar_width.i = getelementptr inbounds i8, ptr %info.i, i64 20
  %sar_height.i = getelementptr inbounds i8, ptr %info.i, i64 24
  %83 = load <2 x i32>, ptr %vui.i, align 4
  %84 = shufflevector <2 x i32> %83, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %84, ptr %sar_width.i, align 4
  %b_tff.i = getelementptr inbounds i8, ptr %param, i64 672
  %85 = load i32, ptr %b_tff.i, align 8
  %tff.i = getelementptr inbounds i8, ptr %info.i, i64 28
  store i32 %85, ptr %tff.i, align 4
  %86 = load i32, ptr %b_vfr_input.i, align 8
  %vfr.i = getelementptr inbounds i8, ptr %info.i, i64 40
  store i32 %86, ptr %vfr.i, align 4
  %call.i.i524.i = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %77) #16
  %add.ptr.i.i525.i = getelementptr inbounds i8, ptr %77, i64 %call.i.i524.i
  br label %while.cond.i.i526.i

while.cond.i.i526.i:                              ; preds = %while.cond.i.i526.i, %cond.end180.i
  %ext.0.i.i527.i = phi ptr [ %add.ptr.i.i525.i, %cond.end180.i ], [ %incdec.ptr.i.i530.i, %while.cond.i.i526.i ]
  %87 = load i8, ptr %ext.0.i.i527.i, align 1
  %cmp.i.i528.i = icmp ne i8 %87, 46
  %cmp2.i.i529.i = icmp ugt ptr %ext.0.i.i527.i, %77
  %88 = and i1 %cmp2.i.i529.i, %cmp.i.i528.i
  %incdec.ptr.i.i530.i = getelementptr inbounds i8, ptr %ext.0.i.i527.i, i64 -1
  br i1 %88, label %while.cond.i.i526.i, label %get_filename_extension.exit.i.i

get_filename_extension.exit.i.i:                  ; preds = %while.cond.i.i526.i
  %hin.i = getelementptr inbounds i8, ptr %opt, i64 8
  %cmp5.i.i531.i = icmp eq i8 %87, 46
  %idx.ext.i.i532.i = zext i1 %cmp5.i.i531.i to i64
  %add.ptr7.i.i533.i = getelementptr inbounds i8, ptr %ext.0.i.i527.i, i64 %idx.ext.i.i532.i
  %89 = load i8, ptr %77, align 1
  %.not.i534.i = icmp eq i8 %89, 45
  br i1 %.not.i534.i, label %sub_1.i.i, label %get_filename_extension.exit.tail.i535.i

sub_1.i.i:                                        ; preds = %get_filename_extension.exit.i.i
  %90 = getelementptr inbounds i8, ptr %77, i64 1
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, 0
  br label %get_filename_extension.exit.tail.i535.i

get_filename_extension.exit.tail.i535.i:          ; preds = %sub_1.i.i, %get_filename_extension.exit.i.i
  %tobool3.i.i = phi i1 [ false, %get_filename_extension.exit.i.i ], [ %92, %sub_1.i.i ]
  %call2.i536.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %demuxer.0.i, ptr noundef nonnull dereferenceable(5) @.str.22) #16
  %tobool.not.i537.i = icmp eq i32 %call2.i536.i, 0
  %or.cond.i.i = select i1 %tobool3.i.i, i1 %tobool.not.i537.i, i1 false
  %spec.select.i.i = select i1 %or.cond.i.i, ptr @.str.23, ptr %add.ptr7.i.i533.i
  br i1 %tobool3.i.i, label %if.end13.i.i, label %if.then6.i538.i

if.then6.i538.i:                                  ; preds = %get_filename_extension.exit.tail.i535.i
  %call7.i.i = call noalias ptr @fopen(ptr noundef nonnull %77, ptr noundef nonnull @.str.366)
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %if.end13.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.then6.i538.i
  %call11.i.i = call i32 @fclose(ptr noundef nonnull %call7.i.i)
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i, %if.then6.i538.i, %get_filename_extension.exit.tail.i535.i
  %cond.i.i = select i1 %tobool.not.i537.i, ptr %spec.select.i.i, ptr %demuxer.0.i
  %call15.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond.i.i, ptr noundef nonnull dereferenceable(4) @.str.367) #16
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.then22.i.i, label %lor.lhs.false.i539.i

lor.lhs.false.i539.i:                             ; preds = %if.end13.i.i
  %call17.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i.i, ptr noundef nonnull dereferenceable(4) @.str.368) #16
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.then22.i.i, label %lor.lhs.false19.i.i

lor.lhs.false19.i.i:                              ; preds = %lor.lhs.false.i539.i
  %call20.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i.i, ptr noundef nonnull dereferenceable(4) @.str.369) #16
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then22.i.i, label %if.else.i540.i

if.then22.i.i:                                    ; preds = %lor.lhs.false19.i.i, %lor.lhs.false.i539.i, %if.end13.i.i
  %93 = load ptr, ptr @stderr, align 8
  %94 = call i64 @fwrite(ptr nonnull @.str.370, i64 50, i64 1, ptr %93) #19
  br label %Parse.exit.thread

if.else.i540.i:                                   ; preds = %lor.lhs.false19.i.i
  %call24.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond.i.i, ptr noundef nonnull dereferenceable(4) @.str.24) #16
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.then26.i.i, label %if.else27.i.i

if.then26.i.i:                                    ; preds = %if.else.i540.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @y4m_input, i64 56, i1 false)
  br label %if.end187.i

if.else27.i.i:                                    ; preds = %if.else.i540.i
  %call28.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %cond.i.i, ptr noundef nonnull dereferenceable(4) @.str.23) #16
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.then30.i.i, label %if.else31.i.i

if.then30.i.i:                                    ; preds = %if.else27.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @yuv_input, i64 56, i1 false)
  br label %if.end187.i

if.else31.i.i:                                    ; preds = %if.else27.i.i
  br i1 %tobool.not.i537.i, label %land.lhs.true33.i.i, label %if.end37.i.i

land.lhs.true33.i.i:                              ; preds = %if.else31.i.i
  %95 = load ptr, ptr @yuv_input, align 8
  %call34.i.i = call i32 %95(ptr noundef nonnull %77, ptr noundef nonnull %hin.i, ptr noundef nonnull %info.i, ptr noundef nonnull %input_opt.i) #15
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.then36.i.i, label %if.end37.i.i

if.then36.i.i:                                    ; preds = %land.lhs.true33.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @yuv_input, i64 56, i1 false)
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then36.i.i, %land.lhs.true33.i.i, %if.else31.i.i
  %module.0.i.i = phi ptr [ %spec.select.i.i, %land.lhs.true33.i.i ], [ @.str.23, %if.then36.i.i ], [ %demuxer.0.i, %if.else31.i.i ]
  %96 = load ptr, ptr %hin.i, align 8
  %tobool38.not.i.i = icmp eq ptr %96, null
  br i1 %tobool38.not.i.i, label %if.then39.i.i, label %if.end187.thread.i

if.end187.thread.i:                               ; preds = %if.end37.i.i
  %call45.i609.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %demuxername.i, ptr noundef nonnull dereferenceable(1) %module.0.i.i) #15
  br label %if.end196.i

if.then39.i.i:                                    ; preds = %if.end37.i.i
  %97 = load ptr, ptr @stderr, align 8
  %call40.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.371, ptr noundef nonnull %77) #18
  br label %Parse.exit.thread

if.end187.i:                                      ; preds = %if.then30.i.i, %if.then26.i.i
  %.pr607.i = load ptr, ptr %hin.i, align 8
  %call45.i.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %demuxername.i, ptr noundef nonnull dereferenceable(1) %cond.i.i) #15
  %tobool189.not.i = icmp eq ptr %.pr607.i, null
  br i1 %tobool189.not.i, label %land.lhs.true190.i, label %if.end196.i

land.lhs.true190.i:                               ; preds = %if.end187.i
  %98 = load ptr, ptr @input, align 8
  %call192.i = call i32 %98(ptr noundef nonnull %77, ptr noundef nonnull %hin.i, ptr noundef nonnull %info.i, ptr noundef nonnull %input_opt.i) #15
  %tobool193.not.i = icmp eq i32 %call192.i, 0
  br i1 %tobool193.not.i, label %if.end196.i, label %if.then194.i

if.then194.i:                                     ; preds = %land.lhs.true190.i
  %99 = load ptr, ptr @stderr, align 8
  %call195.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.13, ptr noundef nonnull %77) #18
  br label %Parse.exit.thread

if.end196.i:                                      ; preds = %land.lhs.true190.i, %if.end187.i, %if.end187.thread.i
  call void @x264_reduce_fraction(ptr noundef nonnull %sar_width.i, ptr noundef nonnull %sar_height.i) #15
  call void @x264_reduce_fraction(ptr noundef nonnull %fps_num.i, ptr noundef nonnull %fps_den.i) #15
  %100 = load i32, ptr %i_log_level80.i, align 8
  %cmp202.i = icmp sgt i32 %100, 1
  br i1 %cmp202.i, label %if.then203.i, label %if.end216.i

if.then203.i:                                     ; preds = %if.end196.i
  %101 = load ptr, ptr @stderr, align 8
  %width.i = getelementptr inbounds i8, ptr %info.i, i64 44
  %102 = load i32, ptr %width.i, align 4
  %103 = load i32, ptr %79, align 4
  %104 = load i32, ptr %interlaced.i, align 4
  %tobool206.not.i = icmp eq i32 %104, 0
  %cond207.i = select i1 %tobool206.not.i, i32 112, i32 105
  %105 = load i32, ptr %sar_width.i, align 4
  %106 = load i32, ptr %sar_height.i, align 4
  %107 = load i32, ptr %fps_num.i, align 4
  %108 = load i32, ptr %fps_den.i, align 4
  %109 = load i32, ptr %vfr.i, align 4
  %tobool213.not.i = icmp eq i32 %109, 0
  %cond214.i = select i1 %tobool213.not.i, i32 99, i32 118
  %call215.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.14, ptr noundef nonnull %demuxername.i, i32 noundef %102, i32 noundef %103, i32 noundef %cond207.i, i32 noundef %105, i32 noundef %106, i32 noundef %107, i32 noundef %108, i32 noundef %cond214.i) #18
  br label %if.end216.i

if.end216.i:                                      ; preds = %if.then203.i, %if.end196.i
  %tobool217.not.i = icmp eq ptr %tcfile_name.0.i, null
  br i1 %tobool217.not.i, label %if.else230.i, label %if.then218.i

if.then218.i:                                     ; preds = %if.end216.i
  %tobool219.not.i = icmp eq i32 %b_user_fps.0.i, 0
  br i1 %tobool219.not.i, label %if.end222.i, label %if.then220.i

if.then220.i:                                     ; preds = %if.then218.i
  %110 = load ptr, ptr @stderr, align 8
  %111 = call i64 @fwrite(ptr nonnull @.str.15, i64 51, i64 1, ptr %110) #19
  br label %Parse.exit.thread

if.end222.i:                                      ; preds = %if.then218.i
  %112 = load ptr, ptr @timecode_input, align 8
  %call224.i = call i32 %112(ptr noundef nonnull %tcfile_name.0.i, ptr noundef nonnull %hin.i, ptr noundef nonnull %info.i, ptr noundef nonnull %input_opt.i) #15
  %tobool225.not.i = icmp eq i32 %call224.i, 0
  br i1 %tobool225.not.i, label %if.else228.i, label %if.then226.i

if.then226.i:                                     ; preds = %if.end222.i
  %113 = load ptr, ptr @stderr, align 8
  %114 = call i64 @fwrite(ptr nonnull @.str.16, i64 36, i64 1, ptr %113) #19
  br label %Parse.exit.thread

if.else228.i:                                     ; preds = %if.end222.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @timecode_input, i64 56, i1 false)
  %.pre.i = load i32, ptr %vfr.i, align 4
  br label %if.end239.i

if.else230.i:                                     ; preds = %if.end216.i
  %115 = load i32, ptr %vfr.i, align 4
  %tobool232.i = icmp eq i32 %115, 0
  %116 = load ptr, ptr %timebase.i, align 8
  %tobool235.i = icmp ne ptr %116, null
  %or.cond393.i = select i1 %tobool232.i, i1 %tobool235.i, i1 false
  br i1 %or.cond393.i, label %if.then236.i, label %if.end239.i

if.then236.i:                                     ; preds = %if.else230.i
  %117 = load ptr, ptr @stderr, align 8
  %118 = call i64 @fwrite(ptr nonnull @.str.17, i64 56, i64 1, ptr %117) #19
  br label %Parse.exit.thread

if.end239.i:                                      ; preds = %if.else230.i, %if.else228.i
  %119 = phi i32 [ %115, %if.else230.i ], [ %.pre.i, %if.else228.i ]
  %120 = load i32, ptr %info.i, align 4
  store i32 %120, ptr %i_csp.i, align 4
  %121 = load i32, ptr %79, align 4
  %i_height.i = getelementptr inbounds i8, ptr %param, i64 24
  store i32 %121, ptr %i_height.i, align 8
  store i32 %119, ptr %b_vfr_input.i, align 8
  %width245.i = getelementptr inbounds i8, ptr %info.i, i64 44
  %122 = load i32, ptr %width245.i, align 4
  %i_width.i = getelementptr inbounds i8, ptr %param, i64 20
  store i32 %122, ptr %i_width.i, align 4
  %tobool246.i = icmp eq i32 %b_user_interlaced.0.i, 0
  %123 = load i32, ptr %interlaced.i, align 4
  %tobool249.i = icmp ne i32 %123, 0
  %or.cond394.i = select i1 %tobool246.i, i1 %tobool249.i, i1 false
  br i1 %or.cond394.i, label %if.then250.i, label %if.end263.i

if.then250.i:                                     ; preds = %if.end239.i
  %124 = load ptr, ptr @stderr, align 8
  %125 = load i32, ptr %tff.i, align 4
  %tobool252.not.i = icmp eq i32 %125, 0
  %cond253.i = select i1 %tobool252.not.i, i32 98, i32 116
  %cond256.i = select i1 %tobool252.not.i, i32 116, i32 98
  %call257.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.18, i32 noundef %cond253.i, i32 noundef %cond256.i) #18
  store i32 1, ptr %b_interlaced.i, align 8
  %126 = load i32, ptr %tff.i, align 4
  %tobool260.i = icmp ne i32 %126, 0
  %lnot.ext.i = zext i1 %tobool260.i to i32
  store i32 %lnot.ext.i, ptr %b_tff.i, align 8
  br label %if.end263.i

if.end263.i:                                      ; preds = %if.then250.i, %if.end239.i
  %tobool264.not.i = icmp eq i32 %b_user_fps.0.i, 0
  br i1 %tobool264.not.i, label %if.then265.i, label %if.end263.i.if.end270.i_crit_edge

if.end263.i.if.end270.i_crit_edge:                ; preds = %if.end263.i
  %.pre = load i32, ptr %i_fps_den.i, align 8
  %i_fps_num.i.val.pre = load i32, ptr %i_fps_num.i, align 4
  br label %if.end270.i

if.then265.i:                                     ; preds = %if.end263.i
  %127 = load i32, ptr %fps_num.i, align 4
  store i32 %127, ptr %i_fps_num.i, align 4
  %128 = load i32, ptr %fps_den.i, align 4
  store i32 %128, ptr %i_fps_den.i, align 8
  br label %if.end270.i

if.end270.i:                                      ; preds = %if.end263.i.if.end270.i_crit_edge, %if.then265.i
  %i_fps_num.i.val = phi i32 [ %i_fps_num.i.val.pre, %if.end263.i.if.end270.i_crit_edge ], [ %127, %if.then265.i ]
  %129 = phi i32 [ %.pre, %if.end263.i.if.end270.i_crit_edge ], [ %128, %if.then265.i ]
  %130 = load i32, ptr %b_vfr_input.i, align 8
  %tobool272.not.i = icmp eq i32 %130, 0
  %timebase_num.i = getelementptr inbounds i8, ptr %info.i, i64 32
  %131 = load i32, ptr %timebase_num.i, align 4
  %timebase_den.i = getelementptr inbounds i8, ptr %info.i, i64 36
  %.sink845.i = select i1 %tobool272.not.i, i32 %129, i32 %131
  %timebase_den.i.val = load i32, ptr %timebase_den.i, align 4
  %132 = select i1 %tobool272.not.i, i32 %i_fps_num.i.val, i32 %timebase_den.i.val
  %133 = getelementptr inbounds i8, ptr %param, i64 660
  store i32 %.sink845.i, ptr %133, align 4
  %134 = getelementptr inbounds i8, ptr %param, i64 664
  store i32 %132, ptr %134, align 8
  %135 = load ptr, ptr %timebase.i, align 8
  %tobool283.i = icmp ne ptr %135, null
  %or.cond395.i = select i1 %tobool217.not.i, i1 %tobool283.i, i1 false
  br i1 %or.cond395.i, label %if.then284.i, label %if.end324.i

if.then284.i:                                     ; preds = %if.end270.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i_user_timebase_num.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i_user_timebase_den.i) #15
  %call286.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %135, ptr noundef nonnull @.str.19, ptr noundef nonnull %i_user_timebase_num.i, ptr noundef nonnull %i_user_timebase_den.i) #15
  switch i32 %call286.i, label %if.then284.if.end298_crit_edge.i [
    i32 0, label %if.then288.i
    i32 1, label %if.then293.i
  ]

if.then284.if.end298_crit_edge.i:                 ; preds = %if.then284.i
  %.pre846.i = load i64, ptr %i_user_timebase_den.i, align 8
  br label %if.end298.i

if.then288.i:                                     ; preds = %if.then284.i
  %136 = load ptr, ptr @stderr, align 8
  %137 = load ptr, ptr %timebase.i, align 8
  %call290.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef nonnull @.str.20, ptr noundef %137) #18
  br label %cleanup377.critedge.i

if.then293.i:                                     ; preds = %if.then284.i
  %138 = load i32, ptr %133, align 4
  %conv.i = zext i32 %138 to i64
  store i64 %conv.i, ptr %i_user_timebase_num.i, align 8
  %139 = load ptr, ptr %timebase.i, align 8
  %call296.i = call i64 @strtoul(ptr nocapture noundef %139, ptr noundef null, i32 noundef 10) #15
  store i64 %call296.i, ptr %i_user_timebase_den.i, align 8
  br label %if.end298.i

if.end298.i:                                      ; preds = %if.then293.i, %if.then284.if.end298_crit_edge.i
  %140 = phi i64 [ %.pre846.i, %if.then284.if.end298_crit_edge.i ], [ %call296.i, %if.then293.i ]
  %141 = load i64, ptr %i_user_timebase_num.i, align 8
  %cmp299.i = icmp ugt i64 %141, 4294967295
  %cmp302.i = icmp ugt i64 %140, 4294967295
  %or.cond396.i = select i1 %cmp299.i, i1 true, i1 %cmp302.i
  br i1 %or.cond396.i, label %if.then304.i, label %if.end306.i

if.then304.i:                                     ; preds = %if.end298.i
  %142 = load ptr, ptr @stderr, align 8
  %143 = call i64 @fwrite(ptr nonnull @.str.21, i64 59, i64 1, ptr %142) #19
  br label %cleanup377.critedge.i

if.end306.i:                                      ; preds = %if.end298.i
  %conv307.i = uitofp nneg i64 %140 to double
  %144 = load i32, ptr %134, align 8
  %conv309.i = uitofp i32 %144 to double
  %145 = load i32, ptr %133, align 4
  %conv311.i = uitofp i32 %145 to double
  %conv312.i = uitofp nneg i64 %141 to double
  %146 = insertelement <2 x double> poison, double %conv307.i, i64 0
  %147 = insertelement <2 x double> %146, double %conv311.i, i64 1
  %148 = insertelement <2 x double> poison, double %conv309.i, i64 0
  %149 = insertelement <2 x double> %148, double %conv312.i, i64 1
  %150 = fdiv <2 x double> %147, %149
  %shift = shufflevector <2 x double> %150, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %151 = fmul <2 x double> %150, %shift
  %mul.i = extractelement <2 x double> %151, i64 0
  %timebase_convert_multiplier.i = getelementptr inbounds i8, ptr %opt, i64 40
  store double %mul.i, ptr %timebase_convert_multiplier.i, align 8
  %conv314.i = trunc nuw i64 %141 to i32
  store i32 %conv314.i, ptr %133, align 4
  %conv316.i = trunc nuw i64 %140 to i32
  store i32 %conv316.i, ptr %134, align 8
  store i32 1, ptr %b_vfr_input.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_user_timebase_den.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_user_timebase_num.i) #15
  br label %if.end324.i

if.end324.i:                                      ; preds = %if.end306.i, %if.end270.i
  %152 = phi i32 [ %conv314.i, %if.end306.i ], [ %.sink845.i, %if.end270.i ]
  %153 = phi i32 [ %conv316.i, %if.end306.i ], [ %132, %if.end270.i ]
  %154 = load i32, ptr %i_sar_width.i, align 8
  %tobool327.not.i = icmp eq i32 %154, 0
  %155 = load i32, ptr %vui.i, align 4
  %tobool331.not.i = icmp eq i32 %155, 0
  %or.cond = select i1 %tobool327.not.i, i1 true, i1 %tobool331.not.i
  br i1 %or.cond, label %if.then332.i, label %if.end339.i

if.then332.i:                                     ; preds = %if.end324.i
  %156 = load <2 x i32>, ptr %sar_width.i, align 4
  %157 = shufflevector <2 x i32> %156, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %157, ptr %vui.i, align 4
  br label %if.end339.i

if.end339.i:                                      ; preds = %if.end324.i, %if.then332.i
  %tobool340.not.i = icmp eq i32 %b_user_ref.0.i, 0
  br i1 %tobool340.not.i, label %if.then341.i, label %if.end

if.then341.i:                                     ; preds = %if.end339.i
  %158 = load i32, ptr %i_width.i, align 4
  %add.i = add nsw i32 %158, 15
  %shr.i = ashr i32 %add.i, 4
  %159 = load i32, ptr %i_height.i, align 8
  %add344.i = add nsw i32 %159, 15
  %shr345.i = ashr i32 %add344.i, 4
  %160 = load i32, ptr @x264_levels, align 4
  %cmp351.not726.i = icmp eq i32 %160, 0
  br i1 %cmp351.not726.i, label %if.end, label %for.body354.lr.ph.i

for.body354.lr.ph.i:                              ; preds = %if.then341.i
  %i_level_idc.i = getelementptr inbounds i8, ptr %param, i64 32
  %161 = load i32, ptr %i_level_idc.i, align 8
  %cmp358.i140 = icmp eq i32 %161, %160
  br i1 %cmp358.i140, label %while.cond.preheader.i, label %for.cond348.i

for.cond348.i:                                    ; preds = %for.body354.lr.ph.i, %for.body354.i
  %indvars.iv842.i141 = phi i64 [ %indvars.iv.next843.i, %for.body354.i ], [ 0, %for.body354.lr.ph.i ]
  %indvars.iv.next843.i = add nuw nsw i64 %indvars.iv842.i141, 1
  %arrayidx350.i = getelementptr inbounds [0 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 %indvars.iv.next843.i
  %162 = load i32, ptr %arrayidx350.i, align 4
  %cmp351.not.i = icmp eq i32 %162, 0
  br i1 %cmp351.not.i, label %if.end, label %for.body354.i

for.body354.i:                                    ; preds = %for.cond348.i
  %cmp358.i = icmp eq i32 %161, %162
  br i1 %cmp358.i, label %while.cond.preheader.i, label %for.cond348.i

while.cond.preheader.i:                           ; preds = %for.body354.i, %for.body354.lr.ph.i
  %arrayidx350728.i.lcssa = phi ptr [ @x264_levels, %for.body354.lr.ph.i ], [ %arrayidx350.i, %for.body354.i ]
  %i_frame_reference.i = getelementptr inbounds i8, ptr %param, i64 80
  %mul346.i = mul i32 %shr.i, 384
  %mul361.i = mul i32 %mul346.i, %shr345.i
  %dpb.i = getelementptr inbounds i8, ptr %arrayidx350728.i.lcssa, i64 12
  %163 = load i32, ptr %dpb.i, align 4
  %i_frame_reference.promoted.i = load i32, ptr %i_frame_reference.i, align 8
  %mul362729.i = mul nsw i32 %i_frame_reference.promoted.i, %mul361.i
  %cmp365730.i = icmp sgt i32 %mul362729.i, %163
  %cmp368731.i = icmp sgt i32 %i_frame_reference.promoted.i, 1
  %or.cond502732.i = and i1 %cmp368731.i, %cmp365730.i
  br i1 %or.cond502732.i, label %while.body.i, label %if.end

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %164 = phi i32 [ %dec.i, %while.body.i ], [ %i_frame_reference.promoted.i, %while.cond.preheader.i ]
  %dec.i = add nsw i32 %164, -1
  %mul362.i = mul nsw i32 %dec.i, %mul361.i
  %cmp365.i = icmp sgt i32 %mul362.i, %163
  %cmp368.i = icmp ugt i32 %164, 2
  %or.cond502.i = and i1 %cmp368.i, %cmp365.i
  br i1 %or.cond502.i, label %while.body.i, label %while.cond.cleanup377.loopexit_crit_edge.i

cleanup377.critedge.i:                            ; preds = %if.then304.i, %if.then288.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_user_timebase_den.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_user_timebase_num.i) #15
  br label %Parse.exit.thread

while.cond.cleanup377.loopexit_crit_edge.i:       ; preds = %while.body.i
  store i32 %dec.i, ptr %i_frame_reference.i, align 8
  br label %if.end

Parse.exit.thread:                                ; preds = %for.cond.i, %if.then168.i, %if.then220.i, %if.then226.i, %if.then236.i, %if.then194.i, %if.then156.i, %if.end13.i, %if.end148.i, %select_output.exit.i, %cleanup377.critedge.i, %cleanup140.thread.i, %if.then39.i.i, %if.then22.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %input_opt.i) #15
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %defaults.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i)
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %demuxername.i)
  br label %cleanup

if.end:                                           ; preds = %for.cond348.i, %while.cond.cleanup377.loopexit_crit_edge.i, %while.cond.preheader.i, %if.then341.i, %if.end339.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %input_opt.i) #15
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %defaults.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i)
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %demuxername.i)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pic.i) #15
  %conv.i4 = zext i32 %153 to i64
  %conv1.i = zext i32 %152 to i64
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.end
  %a.addr.0.i.i = phi i64 [ %conv1.i, %if.end ], [ %b.addr.0.i.i, %while.body.i.i ]
  %b.addr.0.i.i = phi i64 [ %conv.i4, %if.end ], [ %rem.i.i, %while.body.i.i ]
  %rem.i.i = urem i64 %a.addr.0.i.i, %b.addr.0.i.i
  %tobool.not.not.i.i = icmp eq i64 %rem.i.i, 0
  br i1 %tobool.not.not.i.i, label %gcd.exit.i, label %while.body.i.i

gcd.exit.i:                                       ; preds = %while.body.i.i
  %div.i5 = udiv i64 %conv.i4, %b.addr.0.i.i
  %conv4.i = trunc nuw i64 %div.i5 to i32
  %165 = load i32, ptr %i_log_level80.i, align 8
  %cmp.i = icmp slt i32 %165, 3
  %166 = load i32, ptr %opt, align 8
  %167 = and i32 %166, 1
  %and.i = select i1 %cmp.i, i32 %167, i32 0
  store i32 %and.i, ptr %opt, align 8
  %168 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 8), align 8
  %169 = load ptr, ptr %hin.i, align 8
  %call6.i = call i32 %168(ptr noundef %169) #15
  %170 = load i32, ptr %i_seek.i, align 4
  %sub.i = sub nsw i32 %call6.i, %170
  %spec.select.i8 = call i32 @llvm.smax.i32(i32 %sub.i, i32 0)
  %cmp11.i = icmp slt i32 %sub.i, 1
  %.pre.i9 = load i32, ptr %i_frame_total.i, align 4
  %cmp14.i = icmp slt i32 %.pre.i9, %spec.select.i8
  %or.cond695.i = select i1 %cmp11.i, i1 true, i1 %cmp14.i
  br i1 %or.cond695.i, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %gcd.exit.i
  store i32 %spec.select.i8, ptr %i_frame_total.i, align 4
  br label %cond.true21.i

if.end.i:                                         ; preds = %gcd.exit.i
  %cmp17.i = icmp sgt i32 %.pre.i9, 0
  %spec.select558.i = select i1 %cmp17.i, i32 %.pre.i9, i32 %spec.select.i8
  store i32 %spec.select558.i, ptr %i_frame_total.i, align 4
  %tobool.not.i43 = icmp eq i32 %spec.select558.i, 0
  br i1 %tobool.not.i43, label %cond.end25.i, label %cond.true21.i

cond.true21.i:                                    ; preds = %if.end.i, %if.end.thread.i
  %i_frame_total.0588.i = phi i32 [ %sub.i, %if.end.thread.i ], [ %spec.select558.i, %if.end.i ]
  %div22.i = udiv i32 %i_frame_total.0588.i, 1000
  %cmp.i.i = icmp ult i32 %i_frame_total.0588.i, 1000
  %171 = call i32 @llvm.umin.i32(i32 %div22.i, i32 10)
  %cond5.i.i = select i1 %cmp.i.i, i32 1, i32 %171
  br label %cond.end25.i

cond.end25.i:                                     ; preds = %cond.true21.i, %if.end.i
  %tobool.not591.i = phi i1 [ false, %cond.true21.i ], [ true, %if.end.i ]
  %i_frame_total.0589.i = phi i32 [ %i_frame_total.0588.i, %cond.true21.i ], [ 0, %if.end.i ]
  %cond26.i = phi i32 [ %cond5.i.i, %cond.true21.i ], [ 10, %if.end.i ]
  %172 = load i32, ptr %i_pulldown.i, align 8
  %tobool27.not.i = icmp ne i32 %172, 0
  %173 = load i32, ptr %b_vfr_input.i, align 8
  %tobool29.not.i = icmp eq i32 %173, 0
  %or.cond46 = select i1 %tobool27.not.i, i1 %tobool29.not.i, i1 false
  br i1 %or.cond46, label %if.then30.i, label %if.end46.i

if.then30.i:                                      ; preds = %cond.end25.i
  %b_pic_struct.i = getelementptr inbounds i8, ptr %param, i64 676
  store i32 1, ptr %b_pic_struct.i, align 4
  %idxprom.i = sext i32 %172 to i64
  %arrayidx.i39 = getelementptr inbounds [7 x %struct.cli_pulldown_t], ptr @pulldown_values, i64 0, i64 %idxprom.i
  %174 = load i32, ptr %i_fps_den.i, align 8
  store i32 %174, ptr %133, align 4
  %175 = load i32, ptr %i_fps_num.i, align 4
  %conv33.i = uitofp i32 %175 to float
  %fps_factor.i = getelementptr inbounds i8, ptr %arrayidx.i39, i64 28
  %176 = load float, ptr %fps_factor.i, align 4
  %mul.i42 = fmul float %176, %conv33.i
  %conv34.i = fpext float %mul.i42 to double
  %call35.i = call double @fmod(double noundef %conv34.i, double noundef 1.000000e+00) #15
  %tobool36.i = fcmp une double %call35.i, 0.000000e+00
  br i1 %tobool36.i, label %if.then37.i, label %if.end39.i

if.then37.i:                                      ; preds = %if.then30.i
  %177 = load ptr, ptr @stderr, align 8
  %178 = call i64 @fwrite(ptr nonnull @.str.372, i64 56, i64 1, ptr %177) #19
  br label %Encode.exit

if.end39.i:                                       ; preds = %if.then30.i
  %179 = load i32, ptr %i_fps_num.i, align 4
  %conv41.i = uitofp i32 %179 to float
  %mul43.i = fmul float %176, %conv41.i
  %conv44.i = fptoui float %mul43.i to i32
  store i32 %conv44.i, ptr %134, align 8
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end39.i, %cond.end25.i
  %pulldown.0.i = phi ptr [ %arrayidx.i39, %if.end39.i ], [ null, %cond.end25.i ]
  %call47.i = call ptr @x264_encoder_open_96(ptr noundef nonnull %param) #15
  %cmp48.i = icmp eq ptr %call47.i, null
  br i1 %cmp48.i, label %if.then50.i, label %if.end54.i

if.then50.i:                                      ; preds = %if.end46.i
  %180 = load ptr, ptr @stderr, align 8
  %181 = call i64 @fwrite(ptr nonnull @.str.373, i64 39, i64 1, ptr %180) #19
  %182 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 48), align 8
  %183 = load ptr, ptr %hin.i, align 8
  %call53.i = call i32 %182(ptr noundef %183) #15
  br label %Encode.exit

if.end54.i:                                       ; preds = %if.end46.i
  call void @x264_encoder_parameters(ptr noundef nonnull %call47.i, ptr noundef nonnull %param) #15
  %184 = load i32, ptr %134, align 8
  %div56.i = udiv i32 %184, %conv4.i
  %185 = load ptr, ptr getelementptr inbounds (i8, ptr @output, i64 8), align 8
  %186 = load ptr, ptr %hout.i, align 8
  %call57.i = call i32 %185(ptr noundef %186, ptr noundef nonnull %param) #15
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end65.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end54.i
  %187 = load ptr, ptr @stderr, align 8
  %188 = call i64 @fwrite(ptr nonnull @.str.374, i64 38, i64 1, ptr %187) #19
  %189 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 48), align 8
  %190 = load ptr, ptr %hin.i, align 8
  %call62.i13 = call i32 %189(ptr noundef %190) #15
  %191 = load ptr, ptr getelementptr inbounds (i8, ptr @output, i64 32), align 8
  %192 = load ptr, ptr %hout.i, align 8
  %call64.i = call i32 %191(ptr noundef %192, i64 noundef -1, i64 noundef -1) #15
  br label %Encode.exit

if.end65.i:                                       ; preds = %if.end54.i
  %193 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 16), align 8
  %194 = load i32, ptr %i_csp.i, align 4
  %195 = load i32, ptr %i_width.i, align 4
  %196 = load i32, ptr %i_height.i, align 8
  %call66.i17 = call i32 %193(ptr noundef nonnull %pic.i, i32 noundef %194, i32 noundef %195, i32 noundef %196) #15
  %tobool67.not.i = icmp eq i32 %call66.i17, 0
  br i1 %tobool67.not.i, label %if.end70.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.end65.i
  %197 = load ptr, ptr @stderr, align 8
  %198 = call i64 @fwrite(ptr nonnull @.str.375, i64 28, i64 1, ptr %197) #19
  br label %Encode.exit

if.end70.i:                                       ; preds = %if.end65.i
  %call71.i = call i64 @x264_mdate() #15
  %199 = load i32, ptr %134, align 8
  %conv73.i = zext i32 %199 to i64
  %200 = load i32, ptr %i_fps_den.i, align 8
  %conv75.i = zext i32 %200 to i64
  %mul76.i = mul nuw nsw i64 %conv75.i, %conv73.i
  %201 = load i32, ptr %133, align 4
  %conv78.i = zext i32 %201 to i64
  %div79.i = udiv i64 %mul76.i, %conv78.i
  %202 = load i32, ptr %i_fps_num.i, align 4
  %conv81.i = zext i32 %202 to i64
  %div82.i = udiv i64 %div79.i, %conv81.i
  %cmp83.i = icmp ult i64 %div79.i, %conv81.i
  br i1 %cmp83.i, label %if.then85.i, label %if.end87.i

if.then85.i:                                      ; preds = %if.end70.i
  %203 = load ptr, ptr @stderr, align 8
  %call86.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.376, i64 noundef 0) #18
  br label %Encode.exit

if.end87.i:                                       ; preds = %if.end70.i
  %b_repeat_headers.i = getelementptr inbounds i8, ptr %param, i64 636
  %204 = load i32, ptr %b_repeat_headers.i, align 4
  %tobool88.not.i = icmp eq i32 %204, 0
  br i1 %tobool88.not.i, label %if.then89.i, label %if.end104.i

if.then89.i:                                      ; preds = %if.end87.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %headers.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_nal.i) #15
  %call90.i = call i32 @x264_encoder_headers(ptr noundef nonnull %call47.i, ptr noundef nonnull %headers.i, ptr noundef nonnull %i_nal.i) #15
  %cmp91.i = icmp slt i32 %call90.i, 0
  br i1 %cmp91.i, label %cleanup.thread.i, label %cleanup.i37

cleanup.thread.i:                                 ; preds = %if.then89.i
  %205 = load ptr, ptr @stderr, align 8
  %206 = call i64 @fwrite(ptr nonnull @.str.377, i64 42, i64 1, ptr %205) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %headers.i) #15
  br label %Encode.exit

cleanup.i37:                                      ; preds = %if.then89.i
  %207 = load ptr, ptr getelementptr inbounds (i8, ptr @output, i64 16), align 8
  %208 = load ptr, ptr %hout.i, align 8
  %209 = load ptr, ptr %headers.i, align 8
  %call97.i38 = call i32 %207(ptr noundef %208, ptr noundef %209) #15
  %conv98.i = zext nneg i32 %call97.i38 to i64
  %cmp99.i = icmp sgt i32 %call97.i38, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %headers.i) #15
  br i1 %cmp99.i, label %if.end104.i, label %Encode.exit

if.end104.i:                                      ; preds = %cleanup.i37, %if.end87.i
  %i_file.1.i = phi i64 [ 0, %if.end87.i ], [ %conv98.i, %cleanup.i37 ]
  %210 = load ptr, ptr %tcfile_out.i, align 8
  %tobool105.not.i = icmp eq ptr %210, null
  br i1 %tobool105.not.i, label %if.end109.i, label %if.then106.i

if.then106.i:                                     ; preds = %if.end104.i
  %211 = call i64 @fwrite(ptr nonnull @.str.378, i64 21, i64 1, ptr nonnull %210)
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then106.i, %if.end104.i
  %cmp112652.i = icmp sgt i32 %i_frame_total.0589.i, 0
  %212 = or i1 %tobool.not591.i, %cmp112652.i
  br i1 %212, label %for.body.lr.ph.i, label %for.end.i19

for.body.lr.ph.i:                                 ; preds = %if.end109.i
  %i_pts.i = getelementptr inbounds i8, ptr %pic.i, i64 16
  %pattern.i = getelementptr inbounds i8, ptr %pulldown.0.i, i64 4
  %i_pic_struct.i = getelementptr inbounds i8, ptr %pic.i, i64 8
  %timebase_convert_multiplier.i25 = getelementptr inbounds i8, ptr %opt, i64 40
  %conv155.i = sext i32 %div56.i to i64
  %i_qpplus111.i.i = getelementptr inbounds i8, ptr %pic.i, i64 4
  %213 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 24), align 8
  %214 = load ptr, ptr %hin.i, align 8
  %215 = load i32, ptr %i_seek.i, align 4
  %call118.i142 = call i32 %213(ptr noundef nonnull %pic.i, ptr noundef %214, i32 noundef %215) #15
  %tobool119.not.i143 = icmp eq i32 %call118.i142, 0
  br i1 %tobool119.not.i143, label %if.end121.i, label %for.end.i19

for.body.i27:                                     ; preds = %cleanup247.i
  %216 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 24), align 8
  %217 = load ptr, ptr %hin.i, align 8
  %218 = load i32, ptr %i_seek.i, align 4
  %add.i29 = add nsw i32 %218, %indvars
  %call118.i = call i32 %216(ptr noundef nonnull %pic.i, ptr noundef %217, i32 noundef %add.i29) #15
  %tobool119.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool119.not.i, label %if.end121.i, label %for.end.i19

if.end121.i:                                      ; preds = %for.body.lr.ph.i, %for.body.i27
  %i_file.2653.i150 = phi i64 [ %add217611.i, %for.body.i27 ], [ %i_file.1.i, %for.body.lr.ph.i ]
  %i_frame_output.0654.i149 = phi i32 [ %i_frame_output.1.i, %for.body.i27 ], [ 0, %for.body.lr.ph.i ]
  %pts_warning_cnt.0656.i148 = phi i32 [ %pts_warning_cnt.2.i, %for.body.i27 ], [ 0, %for.body.lr.ph.i ]
  %largest_pts.0657.i147 = phi i64 [ %231, %for.body.i27 ], [ -1, %for.body.lr.ph.i ]
  %pulldown_pts.0661.i146 = phi double [ %pulldown_pts.1.i, %for.body.i27 ], [ 0.000000e+00, %for.body.lr.ph.i ]
  %indvars.iv.i28144 = phi i64 [ %indvars.iv.next.i30, %for.body.i27 ], [ 0, %for.body.lr.ph.i ]
  %indvars262 = trunc i64 %indvars.iv.i28144 to i32
  %219 = load i32, ptr %b_vfr_input.i, align 8
  %tobool123.not.i = icmp eq i32 %219, 0
  br i1 %tobool123.not.i, label %if.end126.i, label %if.end121.if.else_crit_edge.i

if.end121.if.else_crit_edge.i:                    ; preds = %if.end121.i
  %.pre690.pre.i = load i64, ptr %i_pts.i, align 8
  br label %if.else.i

if.end126.i:                                      ; preds = %if.end121.i
  store i64 %indvars.iv.i28144, ptr %i_pts.i, align 8
  %220 = load i32, ptr %i_pulldown.i, align 8
  %tobool128.not.i = icmp eq i32 %220, 0
  br i1 %tobool128.not.i, label %if.else.i, label %if.then132.i

if.then132.i:                                     ; preds = %if.end126.i
  %221 = load i32, ptr %pulldown.0.i, align 4
  %rem.i = srem i32 %indvars262, %221
  %idxprom133.i = zext nneg i32 %rem.i to i64
  %arrayidx134.i36 = getelementptr inbounds [24 x i8], ptr %pattern.i, i64 0, i64 %idxprom133.i
  %222 = load i8, ptr %arrayidx134.i36, align 1
  %conv135.i = zext i8 %222 to i32
  store i32 %conv135.i, ptr %i_pic_struct.i, align 8
  %add136.i = fadd double %pulldown_pts.0661.i146, 5.000000e-01
  %conv137.i = fptosi double %add136.i to i64
  store i64 %conv137.i, ptr %i_pts.i, align 8
  %idxprom140.i = zext i8 %222 to i64
  %arrayidx141.i = getelementptr inbounds [10 x float], ptr @pulldown_frame_duration, i64 0, i64 %idxprom140.i
  %223 = load float, ptr %arrayidx141.i, align 4
  %conv142.i = fpext float %223 to double
  %add143.i = fadd double %pulldown_pts.0661.i146, %conv142.i
  br label %if.end153.i

if.else.i:                                        ; preds = %if.end126.i, %if.end121.if.else_crit_edge.i
  %.pre690.i = phi i64 [ %.pre690.pre.i, %if.end121.if.else_crit_edge.i ], [ %indvars.iv.i28144, %if.end126.i ]
  %224 = load double, ptr %timebase_convert_multiplier.i25, align 8
  %tobool144.i = fcmp une double %224, 0.000000e+00
  br i1 %tobool144.i, label %if.then145.i, label %if.end153.i

if.then145.i:                                     ; preds = %if.else.i
  %conv147.i = sitofp i64 %.pre690.i to double
  %225 = call double @llvm.fmuladd.f64(double %conv147.i, double %224, double 5.000000e-01)
  %conv150.i = fptosi double %225 to i64
  store i64 %conv150.i, ptr %i_pts.i, align 8
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.then145.i, %if.else.i, %if.then132.i
  %226 = phi i64 [ %conv150.i, %if.then145.i ], [ %.pre690.i, %if.else.i ], [ %conv137.i, %if.then132.i ]
  %pulldown_pts.1.i = phi double [ %pulldown_pts.0661.i146, %if.then145.i ], [ %pulldown_pts.0661.i146, %if.else.i ], [ %add143.i, %if.then132.i ]
  %mul156.i = mul nsw i64 %226, %conv155.i
  %cmp158.not.i = icmp sgt i64 %226, %largest_pts.0657.i147
  br i1 %cmp158.not.i, label %if.end188.i, label %if.then160.i

if.then160.i:                                     ; preds = %if.end153.i
  %227 = load i32, ptr %i_log_level80.i, align 8
  %cmp162.i = icmp sgt i32 %227, 0
  br i1 %cmp162.i, label %if.then164.i, label %if.end182.i

if.then164.i:                                     ; preds = %if.then160.i
  %cmp166.i = icmp ugt i32 %227, 2
  %cmp169.i = icmp slt i32 %pts_warning_cnt.0656.i148, 3
  %or.cond.i35 = select i1 %cmp166.i, i1 true, i1 %cmp169.i
  br i1 %or.cond.i35, label %if.then171.i, label %if.else175.i

if.then171.i:                                     ; preds = %if.then164.i
  %228 = load ptr, ptr @stderr, align 8
  %mul173.i = mul nsw i64 %largest_pts.0657.i147, %conv155.i
  %call174.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef nonnull @.str.379, i32 noundef %indvars262, i64 noundef %mul156.i, i64 noundef %mul173.i) #18
  br label %if.end181.i

if.else175.i:                                     ; preds = %if.then164.i
  %cmp176.i = icmp eq i32 %pts_warning_cnt.0656.i148, 3
  br i1 %cmp176.i, label %if.then178.i, label %if.end181.i

if.then178.i:                                     ; preds = %if.else175.i
  %229 = load ptr, ptr @stderr, align 8
  %230 = call i64 @fwrite(ptr nonnull @.str.380, i64 77, i64 1, ptr %229) #19
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.then178.i, %if.else175.i, %if.then171.i
  %inc.i = add nsw i32 %pts_warning_cnt.0656.i148, 1
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.end181.i, %if.then160.i
  %pts_warning_cnt.1.i = phi i32 [ %inc.i, %if.end181.i ], [ %pts_warning_cnt.0656.i148, %if.then160.i ]
  %add183.i = add nsw i64 %largest_pts.0657.i147, %div82.i
  store i64 %add183.i, ptr %i_pts.i, align 8
  %mul187.i = mul nsw i64 %add183.i, %conv155.i
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.end182.i, %if.end153.i
  %231 = phi i64 [ %add183.i, %if.end182.i ], [ %226, %if.end153.i ]
  %pts_warning_cnt.2.i = phi i32 [ %pts_warning_cnt.1.i, %if.end182.i ], [ %pts_warning_cnt.0656.i148, %if.end153.i ]
  %output_pts.0.i = phi i64 [ %mul187.i, %if.end182.i ], [ %mul156.i, %if.end153.i ]
  %232 = load ptr, ptr %tcfile_out.i, align 8
  %tobool191.not.i = icmp eq ptr %232, null
  br i1 %tobool191.not.i, label %if.end203.i, label %if.then192.i

if.then192.i:                                     ; preds = %if.end188.i
  %conv194.i = sitofp i64 %output_pts.0.i to double
  %233 = load i32, ptr %133, align 4
  %conv196.i = uitofp i32 %233 to double
  %234 = load i32, ptr %134, align 8
  %conv198.i = uitofp i32 %234 to double
  %div199.i = fdiv double %conv196.i, %conv198.i
  %mul200.i = fmul double %div199.i, %conv194.i
  %mul201.i = fmul double %mul200.i, 1.000000e+03
  %call202.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %232, ptr noundef nonnull @.str.381, double noundef %mul201.i) #15
  br label %if.end203.i

if.end203.i:                                      ; preds = %if.then192.i, %if.end188.i
  %235 = load ptr, ptr %qpfile.i, align 8
  %tobool204.not.i = icmp eq ptr %235, null
  br i1 %tobool204.not.i, label %if.else208.i, label %if.then205.i

if.then205.i:                                     ; preds = %if.end203.i
  %236 = load i32, ptr %i_seek.i, align 4
  %add207.i = add nsw i32 %236, %indvars262
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i.i) #15
  store i32 -1, ptr %num.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qp.i.i) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.i.i) #15
  %cmp88.i.i = icmp sgt i32 %add207.i, -1
  br i1 %cmp88.i.i, label %while.body.i559.i, label %parse_qpfile.exit.i

while.body.i559.i:                                ; preds = %if.then205.i, %while.cond.backedge.i.i
  %237 = load ptr, ptr %qpfile.i, align 8
  %call.i.i31 = call i64 @ftell(ptr noundef %237)
  %238 = load ptr, ptr %qpfile.i, align 8
  %call2.i.i32 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %238, ptr noundef nonnull @.str.387, ptr noundef nonnull %num.i.i, ptr noundef nonnull %type.i.i, ptr noundef nonnull %qp.i.i) #15
  %239 = load i32, ptr %num.i.i, align 4
  %cmp3.i.i = icmp sgt i32 %239, %add207.i
  %cmp4.i.i = icmp eq i32 %call2.i.i32, -1
  %or.cond.i.i33 = select i1 %cmp3.i.i, i1 true, i1 %cmp4.i.i
  br i1 %or.cond.i.i33, label %if.then.i.i, label %if.end.i.i34

if.then.i.i:                                      ; preds = %while.body.i559.i
  store i32 0, ptr %pic.i, align 8
  store i32 0, ptr %i_qpplus111.i.i, align 4
  %240 = load ptr, ptr %qpfile.i, align 8
  %call6.i.i = call i32 @fseek(ptr noundef %240, i64 noundef %call.i.i31, i32 noundef 0)
  br label %parse_qpfile.exit.i

if.end.i.i34:                                     ; preds = %while.body.i559.i
  %cmp7.i.i = icmp slt i32 %239, %add207.i
  %cmp8.i.i = icmp eq i32 %call2.i.i32, 3
  %or.cond61.i.i = select i1 %cmp7.i.i, i1 %cmp8.i.i, i1 false
  br i1 %or.cond61.i.i, label %while.cond.backedge.i.i, label %if.end10.i.i

while.cond.backedge.i.i:                          ; preds = %if.end44.i.i, %if.end.i.i34
  br i1 %cmp7.i.i, label %while.body.i559.i, label %parse_qpfile.exit.i

if.end10.i.i:                                     ; preds = %if.end.i.i34
  %241 = load i32, ptr %qp.i.i, align 4
  %add.i.i = add nsw i32 %241, 1
  store i32 %add.i.i, ptr %i_qpplus111.i.i, align 4
  %242 = load i8, ptr %type.i.i, align 1
  switch i8 %242, label %if.then53.i.i [
    i8 73, label %if.end44.i.i
    i8 105, label %if.then19.i.i
    i8 80, label %if.then25.i.i
    i8 66, label %if.then31.i.i
    i8 98, label %if.then37.i.i
  ]

if.then19.i.i:                                    ; preds = %if.end10.i.i
  br label %if.end44.i.i

if.then25.i.i:                                    ; preds = %if.end10.i.i
  br label %if.end44.i.i

if.then31.i.i:                                    ; preds = %if.end10.i.i
  br label %if.end44.i.i

if.then37.i.i:                                    ; preds = %if.end10.i.i
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then37.i.i, %if.then31.i.i, %if.then25.i.i, %if.then19.i.i, %if.end10.i.i
  %.sink.i.i = phi i32 [ 2, %if.then19.i.i ], [ 4, %if.then31.i.i ], [ 5, %if.then37.i.i ], [ 3, %if.then25.i.i ], [ 1, %if.end10.i.i ]
  store i32 %.sink.i.i, ptr %pic.i, align 8
  %cmp45.i.i = icmp ne i32 %call2.i.i32, 3
  %243 = add i32 %241, -52
  %244 = icmp ult i32 %243, -53
  %or.cond63.i.i = select i1 %cmp45.i.i, i1 true, i1 %244
  br i1 %or.cond63.i.i, label %if.then53.i.i, label %while.cond.backedge.i.i

if.then53.i.i:                                    ; preds = %if.end44.i.i, %if.end10.i.i
  %245 = load ptr, ptr @stderr, align 8
  %call54.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef nonnull @.str.388, i32 noundef %add207.i) #18
  %246 = load ptr, ptr %qpfile.i, align 8
  %call56.i.i = call i32 @fclose(ptr noundef %246)
  store ptr null, ptr %qpfile.i, align 8
  store i32 0, ptr %pic.i, align 8
  store i32 0, ptr %i_qpplus111.i.i, align 4
  br label %parse_qpfile.exit.i

parse_qpfile.exit.i:                              ; preds = %while.cond.backedge.i.i, %if.then53.i.i, %if.then.i.i, %if.then205.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qp.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i.i) #15
  br label %if.end209.i

if.else208.i:                                     ; preds = %if.end203.i
  store i32 0, ptr %pic.i, align 8
  store i32 0, ptr %i_qpplus111.i.i, align 4
  br label %if.end209.i

if.end209.i:                                      ; preds = %if.else208.i, %parse_qpfile.exit.i
  %247 = load ptr, ptr %hout.i, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pic_out.i.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nal.i.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_nal.i.i) #15
  %call.i560.i = call i32 @x264_encoder_encode(ptr noundef nonnull %call47.i, ptr noundef nonnull %nal.i.i, ptr noundef nonnull %i_nal.i.i, ptr noundef nonnull %pic.i, ptr noundef nonnull %pic_out.i.i) #15
  %cmp.i561.i = icmp slt i32 %call.i560.i, 0
  br i1 %cmp.i561.i, label %Encode_frame.exit.thread.i, label %if.end.i562.i

Encode_frame.exit.thread.i:                       ; preds = %if.end209.i
  %248 = load ptr, ptr @stderr, align 8
  %249 = call i64 @fwrite(ptr nonnull @.str.389, i64 41, i64 1, ptr %248) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i.i) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i.i) #15
  br label %Encode.exit

if.end.i562.i:                                    ; preds = %if.end209.i
  %tobool.not.i.i = icmp eq i32 %call.i560.i, 0
  br i1 %tobool.not.i.i, label %if.end215.thread.i, label %Encode_frame.exit.i

if.end215.thread.i:                               ; preds = %if.end.i562.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i.i) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i.i) #15
  br label %if.end225.i

Encode_frame.exit.i:                              ; preds = %if.end.i562.i
  %250 = load ptr, ptr getelementptr inbounds (i8, ptr @output, i64 24), align 8
  %251 = load ptr, ptr %nal.i.i, align 8
  %p_payload.i.i = getelementptr inbounds i8, ptr %251, i64 16
  %252 = load ptr, ptr %p_payload.i.i, align 8
  %call3.i.i = call i32 %250(ptr noundef %247, ptr noundef %252, i32 noundef %call.i560.i, ptr noundef nonnull %pic_out.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i.i) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i.i) #15
  %cmp212.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp212.i, label %Encode.exit, label %if.end215.i

if.end215.i:                                      ; preds = %Encode_frame.exit.i
  %conv216.i = zext nneg i32 %call3.i.i to i64
  %add217.i = add nsw i64 %i_file.2653.i150, %conv216.i
  %tobool218.not.i = icmp ne i32 %call3.i.i, 0
  %inc220.i = zext i1 %tobool218.not.i to i32
  %spec.select696.i = add nsw i32 %i_frame_output.0654.i149, %inc220.i
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.end215.i, %if.end215.thread.i
  %add217611.i = phi i64 [ %i_file.2653.i150, %if.end215.thread.i ], [ %add217.i, %if.end215.i ]
  %i_frame_output.1.i = phi i32 [ %i_frame_output.0654.i149, %if.end215.thread.i ], [ %spec.select696.i, %if.end215.i ]
  %indvars.iv.next.i30 = add nuw i64 %indvars.iv.i28144, 1
  %indvars = trunc i64 %indvars.iv.next.i30 to i32
  %253 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 32), align 8
  %tobool227.not.i = icmp eq ptr %253, null
  br i1 %tobool227.not.i, label %if.end233.i, label %land.lhs.true228.i

land.lhs.true228.i:                               ; preds = %if.end225.i
  %254 = load ptr, ptr %hin.i, align 8
  %call230.i = call i32 %253(ptr noundef nonnull %pic.i, ptr noundef %254) #15
  %tobool231.not.i = icmp eq i32 %call230.i, 0
  br i1 %tobool231.not.i, label %if.end233.i, label %for.end.i19

if.end233.i:                                      ; preds = %land.lhs.true228.i, %if.end225.i
  %255 = load i32, ptr %opt, align 8
  %tobool235.not.i = icmp eq i32 %255, 0
  br i1 %tobool235.not.i, label %cleanup247.i, label %land.lhs.true236.i

land.lhs.true236.i:                               ; preds = %if.end233.i
  %rem237.i = srem i32 %i_frame_output.1.i, %cond26.i
  %cmp238.i = icmp eq i32 %rem237.i, 0
  %tobool241.i = icmp ne i32 %i_frame_output.1.i, 0
  %or.cond397.i = and i1 %tobool241.i, %cmp238.i
  br i1 %or.cond397.i, label %if.then242.i, label %cleanup247.i

if.then242.i:                                     ; preds = %land.lhs.true236.i
  %call.i564.i = call i64 @x264_mdate() #15
  br label %cleanup247.i

cleanup247.i:                                     ; preds = %if.then242.i, %land.lhs.true236.i, %if.end233.i
  %cmp112.i = icmp sgt i32 %i_frame_total.0589.i, %indvars
  %256 = or i1 %tobool.not591.i, %cmp112.i
  br i1 %256, label %for.body.i27, label %for.end.i19

for.end.i19:                                      ; preds = %for.body.i27, %land.lhs.true228.i, %cleanup247.i, %for.body.lr.ph.i, %if.end109.i
  %i_file.4.i = phi i64 [ %i_file.1.i, %if.end109.i ], [ %i_file.1.i, %for.body.lr.ph.i ], [ %add217611.i, %cleanup247.i ], [ %add217611.i, %land.lhs.true228.i ], [ %add217611.i, %for.body.i27 ]
  %i_frame_output.3.i = phi i32 [ 0, %if.end109.i ], [ 0, %for.body.lr.ph.i ], [ %i_frame_output.1.i, %cleanup247.i ], [ %i_frame_output.1.i, %land.lhs.true228.i ], [ %i_frame_output.1.i, %for.body.i27 ]
  %pts_warning_cnt.3.i = phi i32 [ 0, %if.end109.i ], [ 0, %for.body.lr.ph.i ], [ %pts_warning_cnt.2.i, %cleanup247.i ], [ %pts_warning_cnt.2.i, %land.lhs.true228.i ], [ %pts_warning_cnt.2.i, %for.body.i27 ]
  %largest_pts.1.i = phi i64 [ -1, %if.end109.i ], [ -1, %for.body.lr.ph.i ], [ %231, %cleanup247.i ], [ %231, %land.lhs.true228.i ], [ %231, %for.body.i27 ]
  %second_largest_pts.1.i = phi i64 [ -1, %if.end109.i ], [ -1, %for.body.lr.ph.i ], [ %largest_pts.0657.i147, %cleanup247.i ], [ %largest_pts.0657.i147, %land.lhs.true228.i ], [ %largest_pts.0657.i147, %for.body.i27 ]
  %call252679.i = call i32 @x264_encoder_delayed_frames(ptr noundef nonnull %call47.i) #15
  %tobool253.not680.i = icmp eq i32 %call252679.i, 0
  br i1 %tobool253.not680.i, label %while.end.i, label %while.body.i20

while.body.i20:                                   ; preds = %for.end.i19, %if.end283.i
  %i_frame_output.4682.i = phi i32 [ %i_frame_output.5.i, %if.end283.i ], [ %i_frame_output.3.i, %for.end.i19 ]
  %i_file.5681.i = phi i64 [ %add262640.i, %if.end283.i ], [ %i_file.4.i, %for.end.i19 ]
  %257 = load ptr, ptr %hout.i, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pic_out.i565.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nal.i566.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_nal.i567.i) #15
  %call.i568.i = call i32 @x264_encoder_encode(ptr noundef nonnull %call47.i, ptr noundef nonnull %nal.i566.i, ptr noundef nonnull %i_nal.i567.i, ptr noundef null, ptr noundef nonnull %pic_out.i565.i) #15
  %cmp.i569.i = icmp slt i32 %call.i568.i, 0
  br i1 %cmp.i569.i, label %Encode_frame.exit578.thread.i, label %if.end.i570.i

Encode_frame.exit578.thread.i:                    ; preds = %while.body.i20
  %258 = load ptr, ptr @stderr, align 8
  %259 = call i64 @fwrite(ptr nonnull @.str.389, i64 41, i64 1, ptr %258) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i567.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i566.i) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i565.i) #15
  br label %Encode.exit

if.end.i570.i:                                    ; preds = %while.body.i20
  %tobool.not.i571.i = icmp eq i32 %call.i568.i, 0
  br i1 %tobool.not.i571.i, label %if.end260.thread.i, label %Encode_frame.exit578.i

if.end260.thread.i:                               ; preds = %if.end.i570.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i567.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i566.i) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i565.i) #15
  br label %if.end270.i21

Encode_frame.exit578.i:                           ; preds = %if.end.i570.i
  %260 = load ptr, ptr getelementptr inbounds (i8, ptr @output, i64 24), align 8
  %261 = load ptr, ptr %nal.i566.i, align 8
  %p_payload.i573.i = getelementptr inbounds i8, ptr %261, i64 16
  %262 = load ptr, ptr %p_payload.i573.i, align 8
  %call3.i574.i = call i32 %260(ptr noundef %257, ptr noundef %262, i32 noundef %call.i568.i, ptr noundef nonnull %pic_out.i565.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i567.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i566.i) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i565.i) #15
  %cmp257.i = icmp slt i32 %call3.i574.i, 0
  br i1 %cmp257.i, label %Encode.exit, label %if.end260.i

if.end260.i:                                      ; preds = %Encode_frame.exit578.i
  %conv261.i = zext nneg i32 %call3.i574.i to i64
  %add262.i = add nsw i64 %i_file.5681.i, %conv261.i
  %tobool263.not.i = icmp ne i32 %call3.i574.i, 0
  %inc265.i = zext i1 %tobool263.not.i to i32
  %spec.select697.i = add nsw i32 %i_frame_output.4682.i, %inc265.i
  br label %if.end270.i21

if.end270.i21:                                    ; preds = %if.end260.i, %if.end260.thread.i
  %add262640.i = phi i64 [ %i_file.5681.i, %if.end260.thread.i ], [ %add262.i, %if.end260.i ]
  %i_frame_output.5.i = phi i32 [ %i_frame_output.4682.i, %if.end260.thread.i ], [ %spec.select697.i, %if.end260.i ]
  %263 = load i32, ptr %opt, align 8
  %tobool272.not.i22 = icmp eq i32 %263, 0
  br i1 %tobool272.not.i22, label %if.end283.i, label %land.lhs.true273.i

land.lhs.true273.i:                               ; preds = %if.end270.i21
  %rem274.i = srem i32 %i_frame_output.5.i, %cond26.i
  %cmp275.i = icmp eq i32 %rem274.i, 0
  %tobool278.i = icmp ne i32 %i_frame_output.5.i, 0
  %or.cond398.i = and i1 %tobool278.i, %cmp275.i
  br i1 %or.cond398.i, label %if.then279.i, label %if.end283.i

if.then279.i:                                     ; preds = %land.lhs.true273.i
  %call.i579.i = call i64 @x264_mdate() #15
  br label %if.end283.i

if.end283.i:                                      ; preds = %if.then279.i, %land.lhs.true273.i, %if.end270.i21
  %call252.i = call i32 @x264_encoder_delayed_frames(ptr noundef nonnull %call47.i) #15
  %tobool253.not.i = icmp eq i32 %call252.i, 0
  br i1 %tobool253.not.i, label %while.end.i, label %while.body.i20

while.end.i:                                      ; preds = %if.end283.i, %for.end.i19
  %i_file.5.lcssa.i = phi i64 [ %i_file.4.i, %for.end.i19 ], [ %add262640.i, %if.end283.i ]
  %i_frame_output.4.lcssa.i = phi i32 [ %i_frame_output.3.i, %for.end.i19 ], [ %i_frame_output.5.i, %if.end283.i ]
  %cmp284.i = icmp sgt i32 %pts_warning_cnt.3.i, 2
  %264 = load i32, ptr %i_log_level80.i, align 8
  %cmp288.i = icmp slt i32 %264, 3
  %or.cond47 = select i1 %cmp284.i, i1 %cmp288.i, i1 false
  br i1 %or.cond47, label %if.then290.i, label %if.end293.i

if.then290.i:                                     ; preds = %while.end.i
  %265 = load ptr, ptr @stderr, align 8
  %sub291.i = add nsw i32 %pts_warning_cnt.3.i, -3
  %call292.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef nonnull @.str.382, i32 noundef %sub291.i) #18
  br label %if.end293.i

if.end293.i:                                      ; preds = %if.then290.i, %while.end.i
  %cmp294.i = icmp eq i32 %i_frame_output.4.lcssa.i, 1
  br i1 %cmp294.i, label %if.then296.i, label %if.else315.i

if.then296.i:                                     ; preds = %if.end293.i
  %266 = load i32, ptr %i_fps_den.i, align 8
  %conv298.i = uitofp i32 %266 to double
  br label %if.end326.i

if.else315.i:                                     ; preds = %if.end293.i
  %mul316.i = shl nsw i64 %largest_pts.1.i, 1
  %sub317.i = sub nsw i64 %mul316.i, %second_largest_pts.1.i
  %conv318.i = sitofp i64 %sub317.i to double
  %267 = load i32, ptr %133, align 4
  %conv320.i = uitofp i32 %267 to double
  %mul321.i = fmul double %conv318.i, %conv320.i
  br label %if.end326.i

if.end326.i:                                      ; preds = %if.else315.i, %if.then296.i
  %.sink.in.i = phi ptr [ %134, %if.else315.i ], [ %i_fps_num.i, %if.then296.i ]
  %mul321.sink.i = phi double [ %mul321.i, %if.else315.i ], [ %conv298.i, %if.then296.i ]
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %conv323.i = uitofp i32 %.sink.i to double
  %div324.i = fdiv double %mul321.sink.i, %conv323.i
  %268 = load i32, ptr %i_pulldown.i, align 8
  %tobool328.not.i = icmp ne i32 %268, 0
  %269 = load i32, ptr %b_vfr_input.i, align 8
  %tobool331.not.i23 = icmp eq i32 %269, 0
  %or.cond48 = select i1 %tobool328.not.i, i1 %tobool331.not.i23, i1 false
  %conv333.i = sitofp i32 %div56.i to double
  %mul334.i = fmul double %div324.i, %conv333.i
  %duration.1.i = select i1 %or.cond48, double %div324.i, double %mul334.i
  %call336.i = call i64 @x264_mdate() #15
  %270 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 40), align 8
  call void %270(ptr noundef nonnull %pic.i) #15
  %271 = load i32, ptr %opt, align 8
  %tobool338.not.i = icmp eq i32 %271, 0
  br i1 %tobool338.not.i, label %if.end341.i, label %if.then339.i

if.then339.i:                                     ; preds = %if.end326.i
  %272 = load ptr, ptr @stderr, align 8
  %273 = call i64 @fwrite(ptr nonnull @.str.383, i64 80, i64 1, ptr %272) #19
  br label %if.end341.i

if.end341.i:                                      ; preds = %if.then339.i, %if.end326.i
  call void @x264_encoder_close(ptr noundef nonnull %call47.i) #15
  %274 = load ptr, ptr @stderr, align 8
  %fputc.i = call i32 @fputc(i32 10, ptr %274)
  %275 = load ptr, ptr %tcfile_out.i, align 8
  %tobool350.not.i = icmp eq ptr %275, null
  br i1 %tobool350.not.i, label %if.end355.i, label %if.then351.i

if.then351.i:                                     ; preds = %if.end341.i
  %call353.i = call i32 @fclose(ptr noundef nonnull %275)
  store ptr null, ptr %tcfile_out.i, align 8
  br label %if.end355.i

if.end355.i:                                      ; preds = %if.then351.i, %if.end341.i
  %276 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 48), align 8
  %277 = load ptr, ptr %hin.i, align 8
  %call357.i = call i32 %276(ptr noundef %277) #15
  %278 = load ptr, ptr getelementptr inbounds (i8, ptr @output, i64 32), align 8
  %279 = load ptr, ptr %hout.i, align 8
  %call359.i = call i32 %278(ptr noundef %279, i64 noundef %largest_pts.1.i, i64 noundef %second_largest_pts.1.i) #15
  %cmp360.i = icmp sgt i32 %i_frame_output.4.lcssa.i, 0
  br i1 %cmp360.i, label %if.then362.i, label %Encode.exit

if.then362.i:                                     ; preds = %if.end355.i
  %conv363.i = uitofp nneg i32 %i_frame_output.4.lcssa.i to double
  %mul364.i = fmul double %conv363.i, 1.000000e+06
  %sub365.i = sub nsw i64 %call336.i, %call71.i
  %conv366.i = sitofp i64 %sub365.i to double
  %div367.i = fdiv double %mul364.i, %conv366.i
  %280 = load ptr, ptr @stderr, align 8
  %conv368.i = sitofp i64 %i_file.5.lcssa.i to double
  %mul369.i = fmul double %conv368.i, 8.000000e+00
  %mul370.i = fmul double %duration.1.i, 1.000000e+03
  %div371.i = fdiv double %mul369.i, %mul370.i
  %call372.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef nonnull @.str.385, i32 noundef %i_frame_output.4.lcssa.i, double noundef %div367.i, double noundef %div371.i) #18
  br label %Encode.exit

Encode.exit:                                      ; preds = %Encode_frame.exit.i, %Encode_frame.exit578.i, %if.then37.i, %if.then50.i, %if.then59.i, %if.then68.i, %if.then85.i, %cleanup.thread.i, %cleanup.i37, %Encode_frame.exit.thread.i, %Encode_frame.exit578.thread.i, %if.end355.i, %if.then362.i
  %retval.4.i = phi i32 [ -1, %if.then50.i ], [ -1, %if.then59.i ], [ -1, %if.then68.i ], [ -1, %if.then85.i ], [ -1, %cleanup.i37 ], [ -1, %if.then37.i ], [ 0, %if.then362.i ], [ 0, %if.end355.i ], [ -1, %cleanup.thread.i ], [ -1, %Encode_frame.exit578.thread.i ], [ -1, %Encode_frame.exit.thread.i ], [ -1, %Encode_frame.exit578.i ], [ -1, %Encode_frame.exit.i ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic.i) #15
  br label %cleanup

cleanup:                                          ; preds = %Parse.exit.thread, %Encode.exit
  %retval.0 = phi i32 [ %retval.4.i, %Encode.exit ], [ -1, %Parse.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %opt) #15
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %param) #15
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @x264_param_default(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i32 @x264_param_default_preset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @Help(ptr nocapture noundef readonly %defaults, i32 noundef %longhelp) unnamed_addr #5 {
entry:
  %buf = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #15
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.168, i32 noundef 96, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.390)
  %putchar = tail call i32 @putchar(i32 10)
  %puts847 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.391)
  %puts848 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.392)
  %putchar849 = tail call i32 @putchar(i32 10)
  %puts850 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.393)
  %puts851 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.394)
  %puts852 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.395)
  %putchar853 = tail call i32 @putchar(i32 10)
  %puts854 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.396)
  %puts855 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.397)
  %putchar856 = tail call i32 @putchar(i32 10)
  %puts857 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.398)
  %puts858 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.399)
  %putchar859 = tail call i32 @putchar(i32 10)
  %puts860 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.400)
  %puts861 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.401)
  %putchar862 = tail call i32 @putchar(i32 10)
  %puts863 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.402)
  %putchar864 = tail call i32 @putchar(i32 10)
  %puts865 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.403)
  %cmp = icmp eq i32 %longhelp, 2
  br i1 %cmp, label %if.then39, label %if.else41

if.then39:                                        ; preds = %entry
  %puts867 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.405)
  %puts8681087 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.406)
  %puts870 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.408)
  %puts8711088 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.409)
  %puts873 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.411)
  br label %if.end46.sink.split

if.else41:                                        ; preds = %entry
  %puts866 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.404)
  %puts868 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.406)
  %puts869 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.407)
  %puts871 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.409)
  %puts872 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.410)
  %cmp42 = icmp sgt i32 %longhelp, 0
  br i1 %cmp42, label %if.end46.sink.split, label %if.end46

if.end46.sink.split:                              ; preds = %if.else41, %if.then39
  %str.412.sink = phi ptr [ @str.413, %if.then39 ], [ @str.412, %if.else41 ]
  %puts874 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.412.sink)
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %if.else41
  %putchar876 = tail call i32 @putchar(i32 10)
  %puts877 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.414)
  %putchar878 = tail call i32 @putchar(i32 10)
  %i_keyint_max = getelementptr inbounds i8, ptr %defaults, i64 84
  %0 = load i32, ptr %i_keyint_max, align 4
  %call50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.197, i32 noundef %0)
  br i1 %cmp, label %if.end66.thread, label %if.end66

if.end66.thread:                                  ; preds = %if.end46
  %puts879 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.415)
  %puts880 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.416)
  %i_scenecut_threshold = getelementptr inbounds i8, ptr %defaults, i64 92
  %1 = load i32, ptr %i_scenecut_threshold, align 4
  %call61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.200, i32 noundef %1)
  %puts881 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.417)
  br label %if.end74

if.end66:                                         ; preds = %if.end46
  %cmp67 = icmp sgt i32 %longhelp, 0
  br i1 %cmp67, label %if.end74, label %if.end127

if.end74:                                         ; preds = %if.end66, %if.end66.thread
  %i_bframe = getelementptr inbounds i8, ptr %defaults, i64 100
  %2 = load i32, ptr %i_bframe, align 4
  %call69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.202, i32 noundef %2)
  %i_bframe_adaptive = getelementptr inbounds i8, ptr %defaults, i64 104
  %3 = load i32, ptr %i_bframe_adaptive, align 8
  %call73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.203, i32 noundef %3)
  br i1 %cmp, label %if.then76, label %if.then80

if.then76:                                        ; preds = %if.end74
  %i_bframe_bias = getelementptr inbounds i8, ptr %defaults, i64 108
  %4 = load i32, ptr %i_bframe_bias, align 4
  %call77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.204, i32 noundef %4)
  br label %if.then80

if.then80:                                        ; preds = %if.end74, %if.then76
  %i_bframe_pyramid = getelementptr inbounds i8, ptr %defaults, i64 112
  %5 = load i32, ptr %i_bframe_pyramid, align 8
  %or.cond.i = icmp ult i32 %5, 3
  br i1 %or.cond.i, label %cond.true.i, label %if.end99

cond.true.i:                                      ; preds = %if.then80
  %idxprom2.i = zext nneg i32 %5 to i64
  %arrayidx3.i = getelementptr inbounds ptr, ptr @x264_b_pyramid_names, i64 %idxprom2.i
  %6 = load ptr, ptr %arrayidx3.i, align 8
  br label %if.end99

if.end99:                                         ; preds = %cond.true.i, %if.then80
  %cond.i = phi ptr [ %6, %cond.true.i ], [ @.str.322, %if.then80 ]
  %call82 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %cond.i)
  %puts882 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.418)
  %i_frame_reference = getelementptr inbounds i8, ptr %defaults, i64 80
  %7 = load i32, ptr %i_frame_reference, align 8
  %call90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %7)
  %puts883 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.419)
  %i_deblocking_filter_alphac0 = getelementptr inbounds i8, ptr %defaults, i64 120
  %8 = load i32, ptr %i_deblocking_filter_alphac0, align 8
  %i_deblocking_filter_beta = getelementptr inbounds i8, ptr %defaults, i64 124
  %9 = load i32, ptr %i_deblocking_filter_beta, align 4
  %call98 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.209, i32 noundef %8, i32 noundef %9)
  br i1 %cmp, label %if.then125, label %if.end127.sink.split

if.then125:                                       ; preds = %if.end99
  %puts885 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.421)
  %puts886 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.422)
  %puts887 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.423)
  %puts888 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.424)
  br label %if.end127.sink.split

if.end127.sink.split:                             ; preds = %if.end99, %if.then125
  %str.420.sink = phi ptr [ @str.425, %if.then125 ], [ @str.420, %if.end99 ]
  %str.424.sink.ph = phi ptr [ @str.426, %if.then125 ], [ @str.424, %if.end99 ]
  %str.425.sink.ph = phi ptr [ @str.427, %if.then125 ], [ @str.425, %if.end99 ]
  %str.427.sink.ph = phi ptr [ @str.428, %if.then125 ], [ @str.427, %if.end99 ]
  %puts884 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.420.sink)
  br label %if.end127

if.end127:                                        ; preds = %if.end127.sink.split, %if.end66
  %str.424.sink = phi ptr [ @str.424, %if.end66 ], [ %str.424.sink.ph, %if.end127.sink.split ]
  %str.425.sink = phi ptr [ @str.425, %if.end66 ], [ %str.425.sink.ph, %if.end127.sink.split ]
  %str.427.sink = phi ptr [ @str.427, %if.end66 ], [ %str.427.sink.ph, %if.end127.sink.split ]
  %cmp67109010941096110011061110 = phi i1 [ false, %if.end66 ], [ true, %if.end127.sink.split ]
  %puts888.c = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.424.sink)
  %puts889.c = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.425.sink)
  %puts891 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.427.sink)
  %putchar893 = tail call i32 @putchar(i32 10)
  %puts894 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.429)
  %putchar895 = tail call i32 @putchar(i32 10)
  br i1 %cmp67109010941096110011061110, label %if.then132, label %if.end142.critedge

if.then132:                                       ; preds = %if.end127
  %puts896 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.430)
  %puts897 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.431)
  %f_rf_constant = getelementptr inbounds i8, ptr %defaults, i64 512
  %10 = load float, ptr %f_rf_constant, align 8
  %conv = fpext float %10 to double
  %call136 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.222, double noundef %conv)
  %i_lookahead = getelementptr inbounds i8, ptr %defaults, i64 556
  %11 = load i32, ptr %i_lookahead, align 4
  %call141 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.223, i32 noundef %11)
  br label %if.end142

if.end142.critedge:                               ; preds = %if.end127
  %puts897.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.431)
  %f_rf_constant.c = getelementptr inbounds i8, ptr %defaults, i64 512
  %12 = load float, ptr %f_rf_constant.c, align 8
  %conv.c = fpext float %12 to double
  %call136.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.222, double noundef %conv.c)
  br label %if.end142

if.end142:                                        ; preds = %if.end142.critedge, %if.then132
  %i_vbv_max_bitrate = getelementptr inbounds i8, ptr %defaults, i64 524
  %13 = load i32, ptr %i_vbv_max_bitrate, align 4
  %call144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.224, i32 noundef %13)
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %defaults, i64 528
  %14 = load i32, ptr %i_vbv_buffer_size, align 8
  %call146 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.225, i32 noundef %14)
  br i1 %cmp, label %if.end208, label %if.end208.thread

if.end208:                                        ; preds = %if.end142
  %f_vbv_buffer_init = getelementptr inbounds i8, ptr %defaults, i64 532
  %15 = load float, ptr %f_vbv_buffer_init, align 4
  %conv151 = fpext float %15 to double
  %call152 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.226, double noundef %conv151)
  %puts898 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.432)
  %i_qp_min = getelementptr inbounds i8, ptr %defaults, i64 496
  %16 = load i32, ptr %i_qp_min, align 8
  %call163 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.228, i32 noundef %16)
  %i_qp_max = getelementptr inbounds i8, ptr %defaults, i64 500
  %17 = load i32, ptr %i_qp_max, align 4
  %call169 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.229, i32 noundef %17)
  %i_qp_step = getelementptr inbounds i8, ptr %defaults, i64 504
  %18 = load i32, ptr %i_qp_step, align 8
  %call175 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.230, i32 noundef %18)
  %f_rate_tolerance = getelementptr inbounds i8, ptr %defaults, i64 520
  %19 = load float, ptr %f_rate_tolerance, align 8
  %conv181 = fpext float %19 to double
  %call182 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.231, double noundef %conv181)
  %f_ip_factor = getelementptr inbounds i8, ptr %defaults, i64 536
  %20 = load float, ptr %f_ip_factor, align 8
  %conv188 = fpext float %20 to double
  %call189 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.232, double noundef %conv188)
  %f_pb_factor = getelementptr inbounds i8, ptr %defaults, i64 540
  %21 = load float, ptr %f_pb_factor, align 4
  %conv195 = fpext float %21 to double
  %call196 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.233, double noundef %conv195)
  %i_chroma_qp_offset = getelementptr inbounds i8, ptr %defaults, i64 408
  %22 = load i32, ptr %i_chroma_qp_offset, align 8
  %call201 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, i32 noundef %22)
  %i_aq_mode = getelementptr inbounds i8, ptr %defaults, i64 544
  %23 = load i32, ptr %i_aq_mode, align 8
  %call207 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.235, i32 noundef %23)
  br i1 %cmp67109010941096110011061110, label %if.end220, label %if.end226

if.end208.thread:                                 ; preds = %if.end142
  br i1 %cmp67109010941096110011061110, label %if.end220, label %if.end602.critedge

if.end220:                                        ; preds = %if.end208.thread, %if.end208
  %f_aq_strength = getelementptr inbounds i8, ptr %defaults, i64 548
  %24 = load float, ptr %f_aq_strength, align 4
  %conv213 = fpext float %24 to double
  %call214 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.236, double noundef %conv213)
  %putchar899 = tail call i32 @putchar(i32 10)
  %puts900 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.433)
  br i1 %cmp, label %if.end232, label %if.end232.thread1163

if.end226:                                        ; preds = %if.end208
  %puts9001166 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.433)
  %puts901 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.434)
  br label %if.end273

if.end232.thread1163:                             ; preds = %if.end220
  %psz_stat_out1164 = getelementptr inbounds i8, ptr %defaults, i64 568
  %25 = load ptr, ptr %psz_stat_out1164, align 8
  %call2311165 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.239, ptr noundef %25)
  br label %if.then276

if.end232:                                        ; preds = %if.end220
  %puts9011169 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.434)
  %psz_stat_out = getelementptr inbounds i8, ptr %defaults, i64 568
  %26 = load ptr, ptr %psz_stat_out, align 8
  %call231 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.239, ptr noundef %26)
  br label %if.end273

if.end273:                                        ; preds = %if.end226, %if.end232
  %puts902 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.435)
  %f_qcompress = getelementptr inbounds i8, ptr %defaults, i64 592
  %27 = load float, ptr %f_qcompress, align 8
  %conv242 = fpext float %27 to double
  %call243 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.241, double noundef %conv242)
  %f_complexity_blur = getelementptr inbounds i8, ptr %defaults, i64 600
  %28 = load float, ptr %f_complexity_blur, align 8
  %conv249 = fpext float %28 to double
  %call250 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.242, double noundef %conv249)
  %f_qblur = getelementptr inbounds i8, ptr %defaults, i64 596
  %29 = load float, ptr %f_qblur, align 4
  %conv256 = fpext float %29 to double
  %call257 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.243, double noundef %conv256)
  %puts903 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.436)
  %puts904 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.437)
  %puts905 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.438)
  br i1 %cmp67109010941096110011061110, label %if.then276, label %if.end305.thread1161

if.then276:                                       ; preds = %if.end232.thread1163, %if.end273
  %putchar906 = tail call i32 @putchar(i32 10)
  %puts907 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.439)
  %putchar908 = tail call i32 @putchar(i32 10)
  %puts909 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.440)
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %defaults, i64 404
  %30 = load i32, ptr %i_direct_mv_pred, align 4
  %or.cond.i979 = icmp ult i32 %30, 4
  br i1 %or.cond.i979, label %cond.true.i981, label %if.end300

cond.true.i981:                                   ; preds = %if.then276
  %idxprom2.i982 = zext nneg i32 %30 to i64
  %arrayidx3.i983 = getelementptr inbounds ptr, ptr @x264_direct_pred_names, i64 %idxprom2.i982
  %31 = load ptr, ptr %arrayidx3.i983, align 8
  br label %if.end300

if.end300:                                        ; preds = %cond.true.i981, %if.then276
  %cond.i980 = phi ptr [ %31, %cond.true.i981 ], [ @.str.322, %if.then276 ]
  %call299 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.249, ptr noundef %cond.i980)
  br i1 %cmp, label %if.end305, label %if.then308

if.end305.thread1161:                             ; preds = %if.end273
  %puts9101162 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.441)
  br label %if.end345

if.end305:                                        ; preds = %if.end300
  %puts910 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.441)
  br label %if.then308

if.then308:                                       ; preds = %if.end300, %if.end305
  %i_weighted_pred = getelementptr inbounds i8, ptr %defaults, i64 396
  %32 = load i32, ptr %i_weighted_pred, align 4
  %call310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.251, i32 noundef %32)
  %i_me_method = getelementptr inbounds i8, ptr %defaults, i64 412
  %33 = load i32, ptr %i_me_method, align 4
  %or.cond.i991 = icmp ult i32 %33, 5
  br i1 %or.cond.i991, label %cond.true.i993, label %if.end318

cond.true.i993:                                   ; preds = %if.then308
  %idxprom2.i994 = zext nneg i32 %33 to i64
  %arrayidx3.i995 = getelementptr inbounds ptr, ptr @x264_motion_est_names, i64 %idxprom2.i994
  %34 = load ptr, ptr %arrayidx3.i995, align 8
  br label %if.end318

if.end318:                                        ; preds = %cond.true.i993, %if.then308
  %cond.i992 = phi ptr [ %34, %cond.true.i993 ], [ @.str.322, %if.then308 ]
  %call317 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.252, ptr noundef %cond.i992)
  br i1 %cmp, label %if.end345, label %if.end362.thread

if.end345:                                        ; preds = %if.end305.thread1161, %if.end318
  %puts912 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.443)
  %i_me_range = getelementptr inbounds i8, ptr %defaults, i64 416
  %35 = load i32, ptr %i_me_range, align 8
  %call334 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.255, i32 noundef %35)
  %puts913 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.444)
  %puts914 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.445)
  br i1 %cmp67109010941096110011061110, label %if.end371, label %if.end371.thread

if.end362.thread:                                 ; preds = %if.end318
  %puts911 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.442)
  br label %if.end371

if.end371.thread:                                 ; preds = %if.end345
  %puts9161113 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.447)
  %puts917.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.448)
  %puts918.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.449)
  %puts919.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.450)
  br label %if.end407

if.end371:                                        ; preds = %if.end345, %if.end362.thread
  %str.447.sink = phi ptr [ @str.446, %if.end362.thread ], [ @str.447, %if.end345 ]
  %i_subpel_refine1159 = getelementptr inbounds i8, ptr %defaults, i64 428
  %36 = load i32, ptr %i_subpel_refine1159, align 4
  %call3501160 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.258, i32 noundef %36)
  %puts916 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.447.sink)
  %f_psy_rd = getelementptr inbounds i8, ptr %defaults, i64 456
  %37 = load float, ptr %f_psy_rd, align 8
  %conv367 = fpext float %37 to double
  %f_psy_trellis = getelementptr inbounds i8, ptr %defaults, i64 460
  %38 = load float, ptr %f_psy_trellis, align 4
  %conv369 = fpext float %38 to double
  %call370 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.261, double noundef %conv367, double noundef %conv369)
  br i1 %cmp, label %if.end386, label %if.end447.critedge

if.end386:                                        ; preds = %if.end371
  %puts917 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.448)
  %puts918 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.449)
  %puts919 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.450)
  %puts920 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.451)
  %i_trellis = getelementptr inbounds i8, ptr %defaults, i64 440
  %39 = load i32, ptr %i_trellis, align 8
  %call396 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.266, i32 noundef %39)
  br label %if.end407

if.end407:                                        ; preds = %if.end386, %if.end371.thread
  %cmp671092111511211127 = phi i1 [ true, %if.end386 ], [ false, %if.end371.thread ]
  %puts921 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.452)
  %puts922 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.453)
  br i1 %cmp671092111511211127, label %if.end413.thread1140, label %if.then450.critedge

if.end413.thread1140:                             ; preds = %if.end407
  %i_noise_reduction1142 = getelementptr inbounds i8, ptr %defaults, i64 452
  %40 = load i32, ptr %i_noise_reduction1142, align 4
  %call4121143 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.269, i32 noundef %40)
  %putchar923 = tail call i32 @putchar(i32 10)
  %i_luma_deadzone = getelementptr inbounds i8, ptr %defaults, i64 468
  %41 = load i32, ptr %i_luma_deadzone, align 4
  %call423 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.270, i32 noundef %41)
  %arrayidx430 = getelementptr inbounds i8, ptr %defaults, i64 472
  %42 = load i32, ptr %arrayidx430, align 4
  %call431 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.271, i32 noundef %42)
  %puts924 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.454)
  br label %if.then450

if.end447.critedge:                               ; preds = %if.end371
  %puts920.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.451)
  %i_trellis.c = getelementptr inbounds i8, ptr %defaults, i64 440
  %43 = load i32, ptr %i_trellis.c, align 8
  %call396.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.266, i32 noundef %43)
  %i_noise_reduction = getelementptr inbounds i8, ptr %defaults, i64 452
  %44 = load i32, ptr %i_noise_reduction, align 4
  %call412 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.269, i32 noundef %44)
  %puts90011661167.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.456)
  %putchar939.c = tail call i32 @putchar(i32 10)
  %puts940.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.467)
  %putchar941.c = tail call i32 @putchar(i32 10)
  %puts942.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.468)
  br label %if.then605

if.then450.critedge:                              ; preds = %if.end407
  %putchar923.c = tail call i32 @putchar(i32 10)
  %i_luma_deadzone.c = getelementptr inbounds i8, ptr %defaults, i64 468
  %45 = load i32, ptr %i_luma_deadzone.c, align 4
  %call423.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.270, i32 noundef %45)
  %arrayidx430.c = getelementptr inbounds i8, ptr %defaults, i64 472
  %46 = load i32, ptr %arrayidx430.c, align 4
  %call431.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.271, i32 noundef %46)
  br label %if.then450

if.then450:                                       ; preds = %if.then450.critedge, %if.end413.thread1140
  %str.454.sink = phi ptr [ @str.454, %if.then450.critedge ], [ @str.455, %if.end413.thread1140 ]
  %str.455.sink = phi ptr [ @str.455, %if.then450.critedge ], [ @str.456, %if.end413.thread1140 ]
  %puts924.c = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.454.sink)
  %puts925.c = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.455.sink)
  %puts927 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.457)
  %puts928 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.458)
  %puts929 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.459)
  %puts930 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.460)
  %puts931 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.461)
  %putchar932 = tail call i32 @putchar(i32 10)
  %puts933 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.462)
  %puts934 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.463)
  %puts935 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.464)
  %putchar936 = tail call i32 @putchar(i32 10)
  %i_overscan = getelementptr inbounds i8, ptr %defaults, i64 52
  %47 = load i32, ptr %i_overscan, align 4
  %or.cond.i1003 = icmp ult i32 %47, 3
  br i1 %or.cond.i1003, label %cond.true.i1005, label %strtable_lookup.exit1008

cond.true.i1005:                                  ; preds = %if.then450
  %idxprom2.i1006 = zext nneg i32 %47 to i64
  %arrayidx3.i1007 = getelementptr inbounds ptr, ptr @x264_overscan_names, i64 %idxprom2.i1006
  %48 = load ptr, ptr %arrayidx3.i1007, align 8
  br label %strtable_lookup.exit1008

strtable_lookup.exit1008:                         ; preds = %if.then450, %cond.true.i1005
  %cond.i1004 = phi ptr [ %48, %cond.true.i1005 ], [ @.str.322, %if.then450 ]
  %call502 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.283, ptr noundef %cond.i1004)
  %i_vidformat = getelementptr inbounds i8, ptr %defaults, i64 56
  %49 = load i32, ptr %i_vidformat, align 4
  %or.cond.i1015 = icmp ult i32 %49, 6
  br i1 %or.cond.i1015, label %cond.true.i1017, label %strtable_lookup.exit1020

cond.true.i1017:                                  ; preds = %strtable_lookup.exit1008
  %idxprom2.i1018 = zext nneg i32 %49 to i64
  %arrayidx3.i1019 = getelementptr inbounds ptr, ptr @x264_vidformat_names, i64 %idxprom2.i1018
  %50 = load ptr, ptr %arrayidx3.i1019, align 8
  br label %strtable_lookup.exit1020

strtable_lookup.exit1020:                         ; preds = %strtable_lookup.exit1008, %cond.true.i1017
  %cond.i1016 = phi ptr [ %50, %cond.true.i1017 ], [ @.str.322, %strtable_lookup.exit1008 ]
  %call509 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.284, ptr noundef %cond.i1016)
  %b_fullrange = getelementptr inbounds i8, ptr %defaults, i64 60
  %51 = load i32, ptr %b_fullrange, align 4
  %or.cond.i1027 = icmp ult i32 %51, 2
  br i1 %or.cond.i1027, label %cond.true.i1029, label %strtable_lookup.exit1032

cond.true.i1029:                                  ; preds = %strtable_lookup.exit1020
  %idxprom2.i1030 = zext nneg i32 %51 to i64
  %arrayidx3.i1031 = getelementptr inbounds ptr, ptr @x264_fullrange_names, i64 %idxprom2.i1030
  %52 = load ptr, ptr %arrayidx3.i1031, align 8
  br label %strtable_lookup.exit1032

strtable_lookup.exit1032:                         ; preds = %strtable_lookup.exit1020, %cond.true.i1029
  %cond.i1028 = phi ptr [ %52, %cond.true.i1029 ], [ @.str.322, %strtable_lookup.exit1020 ]
  %call516 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.285, ptr noundef %cond.i1028)
  %i_colorprim = getelementptr inbounds i8, ptr %defaults, i64 64
  %53 = load i32, ptr %i_colorprim, align 4
  %or.cond.i1039 = icmp ult i32 %53, 9
  br i1 %or.cond.i1039, label %cond.true.i1041, label %strtable_lookup.exit1044

cond.true.i1041:                                  ; preds = %strtable_lookup.exit1032
  %idxprom2.i1042 = zext nneg i32 %53 to i64
  %arrayidx3.i1043 = getelementptr inbounds ptr, ptr @x264_colorprim_names, i64 %idxprom2.i1042
  %54 = load ptr, ptr %arrayidx3.i1043, align 8
  br label %strtable_lookup.exit1044

strtable_lookup.exit1044:                         ; preds = %strtable_lookup.exit1032, %cond.true.i1041
  %cond.i1040 = phi ptr [ %54, %cond.true.i1041 ], [ @.str.322, %strtable_lookup.exit1032 ]
  %call523 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.286, ptr noundef %cond.i1040)
  %i_transfer = getelementptr inbounds i8, ptr %defaults, i64 68
  %55 = load i32, ptr %i_transfer, align 4
  %or.cond.i1051 = icmp ult i32 %55, 11
  br i1 %or.cond.i1051, label %cond.true.i1053, label %strtable_lookup.exit1056

cond.true.i1053:                                  ; preds = %strtable_lookup.exit1044
  %idxprom2.i1054 = zext nneg i32 %55 to i64
  %arrayidx3.i1055 = getelementptr inbounds ptr, ptr @x264_transfer_names, i64 %idxprom2.i1054
  %56 = load ptr, ptr %arrayidx3.i1055, align 8
  br label %strtable_lookup.exit1056

strtable_lookup.exit1056:                         ; preds = %strtable_lookup.exit1044, %cond.true.i1053
  %cond.i1052 = phi ptr [ %56, %cond.true.i1053 ], [ @.str.322, %strtable_lookup.exit1044 ]
  %call530 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.287, ptr noundef %cond.i1052)
  %i_colmatrix = getelementptr inbounds i8, ptr %defaults, i64 72
  %57 = load i32, ptr %i_colmatrix, align 4
  %or.cond.i1063 = icmp ult i32 %57, 9
  br i1 %or.cond.i1063, label %cond.true.i1065, label %strtable_lookup.exit1068

cond.true.i1065:                                  ; preds = %strtable_lookup.exit1056
  %idxprom2.i1066 = zext nneg i32 %57 to i64
  %arrayidx3.i1067 = getelementptr inbounds ptr, ptr @x264_colmatrix_names, i64 %idxprom2.i1066
  %58 = load ptr, ptr %arrayidx3.i1067, align 8
  br label %strtable_lookup.exit1068

strtable_lookup.exit1068:                         ; preds = %strtable_lookup.exit1056, %cond.true.i1065
  %cond.i1064 = phi ptr [ %58, %cond.true.i1065 ], [ @.str.322, %strtable_lookup.exit1056 ]
  %call537 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.288, ptr noundef %cond.i1064)
  %i_chroma_loc = getelementptr inbounds i8, ptr %defaults, i64 76
  %59 = load i32, ptr %i_chroma_loc, align 4
  %call543 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.289, i32 noundef %59)
  %puts937 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.465)
  %puts90011661167 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.466)
  %putchar939 = tail call i32 @putchar(i32 10)
  %puts940 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.467)
  %putchar941 = tail call i32 @putchar(i32 10)
  %puts942 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.468)
  br i1 %cmp671092111511211127, label %if.then605, label %if.end602

if.end602.critedge:                               ; preds = %if.end208.thread
  %puts90011661167.c1178 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.433)
  %putchar939.c1179 = tail call i32 @putchar(i32 10)
  %puts940.c1180 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.467)
  %putchar941.c1181 = tail call i32 @putchar(i32 10)
  %puts942.c1182 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.468)
  br label %if.end602

if.end602:                                        ; preds = %if.end602.critedge, %strtable_lookup.exit1068
  %puts944.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.470)
  %puts945.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.471)
  %puts946.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.472)
  %puts947.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.473)
  %puts948.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.474)
  br label %if.end612

if.then605:                                       ; preds = %if.end447.critedge, %strtable_lookup.exit1068
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %buf, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false)
  %add.ptr.i = getelementptr inbounds i8, ptr %buf, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %add.ptr.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.356, i64 3, i1 false)
  %add.ptr9.i = getelementptr inbounds i8, ptr %buf, i64 6
  store i32 7823730, ptr %add.ptr9.i, align 2
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %buf, i64 9
  store i16 8236, ptr %add.ptr.i.1, align 1
  %add.ptr9.i.1 = getelementptr inbounds i8, ptr %buf, i64 11
  store i32 7760749, ptr %add.ptr9.i.1, align 1
  %add.ptr.i.2 = getelementptr inbounds i8, ptr %buf, i64 14
  store i16 8236, ptr %add.ptr.i.2, align 2
  %add.ptr9.i.2 = getelementptr inbounds i8, ptr %buf, i64 16
  store i32 7760998, ptr %add.ptr9.i.2, align 16
  %call563 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.294, ptr noundef nonnull @.str.22, ptr noundef nonnull %buf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %buf, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %add.ptr.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.356, i64 3, i1 false)
  store i32 7763321, ptr %add.ptr9.i, align 2
  %add.ptr.i1082.1 = getelementptr inbounds i8, ptr %buf, i64 9
  store i16 8236, ptr %add.ptr.i1082.1, align 1
  %add.ptr9.i1083.1 = getelementptr inbounds i8, ptr %buf, i64 11
  store i32 7156857, ptr %add.ptr9.i1083.1, align 1
  %call570 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.295, ptr noundef nonnull @.str.22, ptr noundef nonnull %buf)
  %puts943 = call i32 @puts(ptr nonnull dereferenceable(1) @str.469)
  %puts944 = call i32 @puts(ptr nonnull dereferenceable(1) @str.470)
  %puts945 = call i32 @puts(ptr nonnull dereferenceable(1) @str.471)
  %puts946 = call i32 @puts(ptr nonnull dereferenceable(1) @str.472)
  %puts947 = call i32 @puts(ptr nonnull dereferenceable(1) @str.473)
  %puts948 = call i32 @puts(ptr nonnull dereferenceable(1) @str.474)
  %putchar949 = call i32 @putchar(i32 10)
  %puts950 = call i32 @puts(ptr nonnull dereferenceable(1) @str.475)
  %puts951 = call i32 @puts(ptr nonnull dereferenceable(1) @str.476)
  %puts952 = call i32 @puts(ptr nonnull dereferenceable(1) @str.477)
  %puts953 = call i32 @puts(ptr nonnull dereferenceable(1) @str.478)
  %puts954 = call i32 @puts(ptr nonnull dereferenceable(1) @str.479)
  br label %if.end612

if.end612:                                        ; preds = %if.end602, %if.then605
  %str.477.sink = phi ptr [ @str.477, %if.end602 ], [ @str.480, %if.then605 ]
  %puts952.c = call i32 @puts(ptr nonnull dereferenceable(1) %str.477.sink)
  br i1 %cmp, label %if.then615, label %if.end682

if.then615:                                       ; preds = %if.end612
  %puts956 = call i32 @puts(ptr nonnull dereferenceable(1) @str.481)
  %puts957 = call i32 @puts(ptr nonnull dereferenceable(1) @str.482)
  %puts958 = call i32 @puts(ptr nonnull dereferenceable(1) @str.483)
  %puts959 = call i32 @puts(ptr nonnull dereferenceable(1) @str.484)
  %puts960 = call i32 @puts(ptr nonnull dereferenceable(1) @str.485)
  %puts961 = call i32 @puts(ptr nonnull dereferenceable(1) @str.486)
  %puts962 = call i32 @puts(ptr nonnull dereferenceable(1) @str.487)
  %puts963 = call i32 @puts(ptr nonnull dereferenceable(1) @str.488)
  %i_sps_id = getelementptr inbounds i8, ptr %defaults, i64 644
  %60 = load i32, ptr %i_sps_id, align 4
  %call656 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.316, i32 noundef %60)
  %puts964 = call i32 @puts(ptr nonnull dereferenceable(1) @str.489)
  %puts965 = call i32 @puts(ptr nonnull dereferenceable(1) @str.490)
  %puts966 = call i32 @puts(ptr nonnull dereferenceable(1) @str.491)
  %puts967 = call i32 @puts(ptr nonnull dereferenceable(1) @str.492)
  %puts968 = call i32 @puts(ptr nonnull dereferenceable(1) @str.493)
  br label %if.end682

if.end682:                                        ; preds = %if.end612, %if.then615
  %putchar969 = call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #15
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

declare i32 @x264_param_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_param_apply_fastfirstpass(ptr noundef) local_unnamed_addr #2

declare i32 @x264_param_apply_profile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #11

declare ptr @x264_encoder_open_96(ptr noundef) local_unnamed_addr #2

declare void @x264_encoder_parameters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @x264_mdate() local_unnamed_addr #2

declare i32 @x264_encoder_headers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

declare i32 @x264_encoder_delayed_frames(ptr noundef) local_unnamed_addr #2

declare void @x264_encoder_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #7

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @x264_encoder_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
