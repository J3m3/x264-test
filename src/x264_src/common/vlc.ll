; ModuleID = 'x264_src/common/vlc.c'
source_filename = "x264_src/common/vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_t = type { i8, i8 }
%struct.vlc_large_t = type { i16, i8, i8 }

@x264_coeff0_token = dso_local local_unnamed_addr constant [5 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 15, i8 4 }, %struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 1, i8 2 }], align 1, !dbg !0
@x264_coeff_token = dso_local local_unnamed_addr constant <{ [16 x [4 x %struct.vlc_t]], [16 x [4 x %struct.vlc_t]], [16 x [4 x %struct.vlc_t]], [16 x [4 x %struct.vlc_t]], <{ [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [12 x [4 x %struct.vlc_t]] }> }> <{ [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 6 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 8 }, %struct.vlc_t { i8 4, i8 6 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 9 }, %struct.vlc_t { i8 6, i8 8 }, %struct.vlc_t { i8 5, i8 7 }, %struct.vlc_t { i8 3, i8 5 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 10 }, %struct.vlc_t { i8 6, i8 9 }, %struct.vlc_t { i8 5, i8 8 }, %struct.vlc_t { i8 3, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 11 }, %struct.vlc_t { i8 6, i8 10 }, %struct.vlc_t { i8 5, i8 9 }, %struct.vlc_t { i8 4, i8 7 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 13 }, %struct.vlc_t { i8 6, i8 11 }, %struct.vlc_t { i8 5, i8 10 }, %struct.vlc_t { i8 4, i8 8 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 13 }, %struct.vlc_t { i8 14, i8 13 }, %struct.vlc_t { i8 5, i8 11 }, %struct.vlc_t { i8 4, i8 9 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 13 }, %struct.vlc_t { i8 10, i8 13 }, %struct.vlc_t { i8 13, i8 13 }, %struct.vlc_t { i8 4, i8 10 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 14 }, %struct.vlc_t { i8 14, i8 14 }, %struct.vlc_t { i8 9, i8 13 }, %struct.vlc_t { i8 4, i8 11 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 14 }, %struct.vlc_t { i8 10, i8 14 }, %struct.vlc_t { i8 13, i8 14 }, %struct.vlc_t { i8 12, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 15 }, %struct.vlc_t { i8 14, i8 15 }, %struct.vlc_t { i8 9, i8 14 }, %struct.vlc_t { i8 12, i8 14 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 15 }, %struct.vlc_t { i8 10, i8 15 }, %struct.vlc_t { i8 13, i8 15 }, %struct.vlc_t { i8 8, i8 14 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 16 }, %struct.vlc_t { i8 1, i8 15 }, %struct.vlc_t { i8 9, i8 15 }, %struct.vlc_t { i8 12, i8 15 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 16 }, %struct.vlc_t { i8 14, i8 16 }, %struct.vlc_t { i8 13, i8 16 }, %struct.vlc_t { i8 8, i8 15 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 16 }, %struct.vlc_t { i8 10, i8 16 }, %struct.vlc_t { i8 9, i8 16 }, %struct.vlc_t { i8 12, i8 16 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 16 }, %struct.vlc_t { i8 6, i8 16 }, %struct.vlc_t { i8 5, i8 16 }, %struct.vlc_t { i8 8, i8 16 }]], [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 6 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 6 }, %struct.vlc_t { i8 7, i8 5 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 7 }, %struct.vlc_t { i8 10, i8 6 }, %struct.vlc_t { i8 9, i8 6 }, %struct.vlc_t { i8 5, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 8 }, %struct.vlc_t { i8 6, i8 6 }, %struct.vlc_t { i8 5, i8 6 }, %struct.vlc_t { i8 4, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 8 }, %struct.vlc_t { i8 6, i8 7 }, %struct.vlc_t { i8 5, i8 7 }, %struct.vlc_t { i8 6, i8 5 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 9 }, %struct.vlc_t { i8 6, i8 8 }, %struct.vlc_t { i8 5, i8 8 }, %struct.vlc_t { i8 8, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 11 }, %struct.vlc_t { i8 6, i8 9 }, %struct.vlc_t { i8 5, i8 9 }, %struct.vlc_t { i8 4, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 11 }, %struct.vlc_t { i8 14, i8 11 }, %struct.vlc_t { i8 13, i8 11 }, %struct.vlc_t { i8 4, i8 7 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 12 }, %struct.vlc_t { i8 10, i8 11 }, %struct.vlc_t { i8 9, i8 11 }, %struct.vlc_t { i8 4, i8 9 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 12 }, %struct.vlc_t { i8 14, i8 12 }, %struct.vlc_t { i8 13, i8 12 }, %struct.vlc_t { i8 12, i8 11 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 12 }, %struct.vlc_t { i8 10, i8 12 }, %struct.vlc_t { i8 9, i8 12 }, %struct.vlc_t { i8 8, i8 11 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 13 }, %struct.vlc_t { i8 14, i8 13 }, %struct.vlc_t { i8 13, i8 13 }, %struct.vlc_t { i8 12, i8 12 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 13 }, %struct.vlc_t { i8 10, i8 13 }, %struct.vlc_t { i8 9, i8 13 }, %struct.vlc_t { i8 12, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 13 }, %struct.vlc_t { i8 11, i8 14 }, %struct.vlc_t { i8 6, i8 13 }, %struct.vlc_t { i8 8, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 9, i8 14 }, %struct.vlc_t { i8 8, i8 14 }, %struct.vlc_t { i8 10, i8 14 }, %struct.vlc_t { i8 1, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 14 }, %struct.vlc_t { i8 6, i8 14 }, %struct.vlc_t { i8 5, i8 14 }, %struct.vlc_t { i8 4, i8 14 }]], [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 6 }, %struct.vlc_t { i8 14, i8 4 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 6 }, %struct.vlc_t { i8 15, i8 5 }, %struct.vlc_t { i8 13, i8 4 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 6 }, %struct.vlc_t { i8 12, i8 5 }, %struct.vlc_t { i8 14, i8 5 }, %struct.vlc_t { i8 12, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 7 }, %struct.vlc_t { i8 10, i8 5 }, %struct.vlc_t { i8 11, i8 5 }, %struct.vlc_t { i8 11, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 7 }, %struct.vlc_t { i8 8, i8 5 }, %struct.vlc_t { i8 9, i8 5 }, %struct.vlc_t { i8 10, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 9, i8 7 }, %struct.vlc_t { i8 14, i8 6 }, %struct.vlc_t { i8 13, i8 6 }, %struct.vlc_t { i8 9, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 7 }, %struct.vlc_t { i8 10, i8 6 }, %struct.vlc_t { i8 9, i8 6 }, %struct.vlc_t { i8 8, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 8 }, %struct.vlc_t { i8 14, i8 7 }, %struct.vlc_t { i8 13, i8 7 }, %struct.vlc_t { i8 13, i8 5 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 8 }, %struct.vlc_t { i8 14, i8 8 }, %struct.vlc_t { i8 10, i8 7 }, %struct.vlc_t { i8 12, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 9 }, %struct.vlc_t { i8 10, i8 8 }, %struct.vlc_t { i8 13, i8 8 }, %struct.vlc_t { i8 12, i8 7 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 9 }, %struct.vlc_t { i8 14, i8 9 }, %struct.vlc_t { i8 9, i8 8 }, %struct.vlc_t { i8 12, i8 8 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 9 }, %struct.vlc_t { i8 10, i8 9 }, %struct.vlc_t { i8 13, i8 9 }, %struct.vlc_t { i8 8, i8 8 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 13, i8 10 }, %struct.vlc_t { i8 7, i8 9 }, %struct.vlc_t { i8 9, i8 9 }, %struct.vlc_t { i8 12, i8 9 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 9, i8 10 }, %struct.vlc_t { i8 12, i8 10 }, %struct.vlc_t { i8 11, i8 10 }, %struct.vlc_t { i8 10, i8 10 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 10 }, %struct.vlc_t { i8 8, i8 10 }, %struct.vlc_t { i8 7, i8 10 }, %struct.vlc_t { i8 6, i8 10 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 10 }, %struct.vlc_t { i8 4, i8 10 }, %struct.vlc_t { i8 3, i8 10 }, %struct.vlc_t { i8 2, i8 10 }]], [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 6 }, %struct.vlc_t { i8 5, i8 6 }, %struct.vlc_t { i8 6, i8 6 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 6 }, %struct.vlc_t { i8 9, i8 6 }, %struct.vlc_t { i8 10, i8 6 }, %struct.vlc_t { i8 11, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 12, i8 6 }, %struct.vlc_t { i8 13, i8 6 }, %struct.vlc_t { i8 14, i8 6 }, %struct.vlc_t { i8 15, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 16, i8 6 }, %struct.vlc_t { i8 17, i8 6 }, %struct.vlc_t { i8 18, i8 6 }, %struct.vlc_t { i8 19, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 20, i8 6 }, %struct.vlc_t { i8 21, i8 6 }, %struct.vlc_t { i8 22, i8 6 }, %struct.vlc_t { i8 23, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 24, i8 6 }, %struct.vlc_t { i8 25, i8 6 }, %struct.vlc_t { i8 26, i8 6 }, %struct.vlc_t { i8 27, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 28, i8 6 }, %struct.vlc_t { i8 29, i8 6 }, %struct.vlc_t { i8 30, i8 6 }, %struct.vlc_t { i8 31, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 32, i8 6 }, %struct.vlc_t { i8 33, i8 6 }, %struct.vlc_t { i8 34, i8 6 }, %struct.vlc_t { i8 35, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 36, i8 6 }, %struct.vlc_t { i8 37, i8 6 }, %struct.vlc_t { i8 38, i8 6 }, %struct.vlc_t { i8 39, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 40, i8 6 }, %struct.vlc_t { i8 41, i8 6 }, %struct.vlc_t { i8 42, i8 6 }, %struct.vlc_t { i8 43, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 44, i8 6 }, %struct.vlc_t { i8 45, i8 6 }, %struct.vlc_t { i8 46, i8 6 }, %struct.vlc_t { i8 47, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 48, i8 6 }, %struct.vlc_t { i8 49, i8 6 }, %struct.vlc_t { i8 50, i8 6 }, %struct.vlc_t { i8 51, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 52, i8 6 }, %struct.vlc_t { i8 53, i8 6 }, %struct.vlc_t { i8 54, i8 6 }, %struct.vlc_t { i8 55, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 56, i8 6 }, %struct.vlc_t { i8 57, i8 6 }, %struct.vlc_t { i8 58, i8 6 }, %struct.vlc_t { i8 59, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 60, i8 6 }, %struct.vlc_t { i8 61, i8 6 }, %struct.vlc_t { i8 62, i8 6 }, %struct.vlc_t { i8 63, i8 6 }]], <{ [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [12 x [4 x %struct.vlc_t]] }> <{ [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 6 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 6 }, %struct.vlc_t { i8 6, i8 6 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 3, i8 7 }, %struct.vlc_t { i8 2, i8 7 }, %struct.vlc_t { i8 5, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 2, i8 6 }, %struct.vlc_t { i8 3, i8 8 }, %struct.vlc_t { i8 2, i8 8 }, %struct.vlc_t { i8 0, i8 7 }], [12 x [4 x %struct.vlc_t]] zeroinitializer }> }>, align 16, !dbg !5
@x264_total_zeros = dso_local local_unnamed_addr constant <{ [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], <{ [8 x %struct.vlc_t], [8 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }> }> <{ [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 2, i8 6 }, %struct.vlc_t { i8 3, i8 7 }, %struct.vlc_t { i8 2, i8 7 }, %struct.vlc_t { i8 3, i8 8 }, %struct.vlc_t { i8 2, i8 8 }, %struct.vlc_t { i8 3, i8 9 }, %struct.vlc_t { i8 2, i8 9 }, %struct.vlc_t { i8 1, i8 9 }], [16 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 2, i8 6 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 0, i8 5 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 0, i8 5 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], <{ [8 x %struct.vlc_t], [8 x %struct.vlc_t] }> <{ [8 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 5 }], [8 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 0, i8 5 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 4 }, [9 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 4 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 3, i8 3 }, [10 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 4 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 3 }, [11 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, [12 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 1 }, [13 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 1 }, %struct.vlc_t { i8 1, i8 1 }, [14 x %struct.vlc_t] zeroinitializer }> }>, align 16, !dbg !24
@x264_total_zeros_dc = dso_local local_unnamed_addr constant [3 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 3 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 0, i8 2 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 0, i8 1 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer]], align 16, !dbg !29
@x264_run_before = dso_local local_unnamed_addr constant <{ <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }>, [16 x %struct.vlc_t] }> <{ <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 0, i8 1 }, [14 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 0, i8 2 }, [13 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 0, i8 2 }, [12 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 3 }, [11 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 3 }, [10 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 0, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, [9 x %struct.vlc_t] zeroinitializer }>, [16 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 7 }, %struct.vlc_t { i8 1, i8 8 }, %struct.vlc_t { i8 1, i8 9 }, %struct.vlc_t { i8 1, i8 10 }, %struct.vlc_t { i8 1, i8 11 }, %struct.vlc_t zeroinitializer] }>, align 16, !dbg !34
@x264_level_token = dso_local local_unnamed_addr global [7 x [128 x %struct.vlc_large_t]] zeroinitializer, align 16, !dbg !39

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @x264_init_vlc_tables() local_unnamed_addr #0 !dbg !63 {
entry:
    #dbg_value(i32 0, !67, !DIExpression(), !85)
  br label %for.cond1.preheader, !dbg !86

for.cond1.preheader:                              ; preds = %entry, %for.cond.cleanup4
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond.cleanup4 ]
    #dbg_value(i64 %indvars.iv, !67, !DIExpression(), !85)
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select133 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %sub70 = add nsw i32 %spec.select133, -1
  %shl71 = shl nuw nsw i32 3, %sub70
  %cmp75 = icmp ne i64 %indvars.iv, 6
    #dbg_value(i16 -64, !70, !DIExpression(), !87)
  %cmp24 = icmp eq i64 %indvars.iv, 0
  %shl53.neg = shl nsw i32 -15, %0
  %1 = trunc i64 %indvars.iv to i8
  %conv43 = add nuw nsw i8 %1, 15
  %shl45 = shl nuw nsw i32 1, %0
  %sub47 = add nuw nsw i32 %shl45, 65535
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !88
  br i1 %cmp24, label %for.body5.us, label %for.body5.preheader

for.body5.preheader:                              ; preds = %for.cond1.preheader
  %2 = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %for.body5, !dbg !89

for.body5.us:                                     ; preds = %for.cond1.preheader, %if.end65.us
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %if.end65.us ], [ -64, %for.cond1.preheader ]
    #dbg_value(i64 %indvars.iv141, !70, !DIExpression(), !87)
  %3 = trunc nsw i64 %indvars.iv141 to i32, !dbg !90
  %shr.us = ashr i32 %3, 15, !dbg !90
    #dbg_value(i32 %shr.us, !77, !DIExpression(), !91)
  %xor.us = xor i32 %shr.us, %3, !dbg !92
  %sub.us = sub nsw i32 %xor.us, %shr.us, !dbg !93
    #dbg_value(i32 %sub.us, !80, !DIExpression(), !91)
  %mul.us = shl nsw i32 %sub.us, 1, !dbg !94
  %sub8.us = sub nsw i32 %mul.us, %shr.us, !dbg !95
    #dbg_value(i32 %sub8.us, !81, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !91)
    #dbg_value(i64 %indvars.iv, !82, !DIExpression(), !91)
  %4 = add nsw i64 %indvars.iv141, 64, !dbg !96
  %arrayidx12.us = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 0, i64 %4, !dbg !97
    #dbg_value(ptr %arrayidx12.us, !83, !DIExpression(), !91)
  %cmp14.us = icmp slt i32 %sub8.us, 16, !dbg !98
  br i1 %cmp14.us, label %if.then.us, label %if.else.us, !dbg !100

if.else.us:                                       ; preds = %for.body5.us
  %cmp26.us = icmp ult i32 %sub8.us, 32
  %i_size29.us = getelementptr inbounds i8, ptr %arrayidx12.us, i64 2, !dbg !101
  %conv32.us = trunc i32 %sub8.us to i16, !dbg !101
  br i1 %cmp26.us, label %if.then28.us, label %if.else34.us, !dbg !103

if.else34.us:                                     ; preds = %if.else.us
    #dbg_value(i32 %sub8.us, !81, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 15, DW_OP_minus, DW_OP_stack_value), !91)
    #dbg_value(i32 poison, !81, !DIExpression(), !91)
  store i8 28, ptr %i_size29.us, align 2, !dbg !104
  %conv61.us = add i16 %conv32.us, 4064, !dbg !107
  br label %if.end65.us

if.then28.us:                                     ; preds = %if.else.us
  store i8 19, ptr %i_size29.us, align 2, !dbg !108
  br label %if.end65.us, !dbg !110

if.then.us:                                       ; preds = %for.body5.us
  %5 = trunc i32 %sub8.us to i8, !dbg !111
  %conv19.us = add i8 %5, -1, !dbg !111
  %i_size.us = getelementptr inbounds i8, ptr %arrayidx12.us, i64 2, !dbg !113
  store i8 %conv19.us, ptr %i_size.us, align 2, !dbg !114
  br label %if.end65.us, !dbg !115

if.end65.us:                                      ; preds = %if.then.us, %if.then28.us, %if.else34.us
  %.sink = phi i16 [ 1, %if.then.us ], [ %conv32.us, %if.then28.us ], [ %conv61.us, %if.else34.us ]
  store i16 %.sink, ptr %arrayidx12.us, align 4, !dbg !116
    #dbg_value(i32 poison, !82, !DIExpression(), !91)
  %cmp72.us = icmp sgt i32 %sub.us, %shl71, !dbg !117
  %or.cond86.us = and i1 %cmp75, %cmp72.us, !dbg !119
    #dbg_value(!DIArgList(i32 1, i1 %or.cond86.us), !82, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !91)
  %conv80.us = select i1 %or.cond86.us, i8 2, i8 1, !dbg !120
  %i_next81.us = getelementptr inbounds i8, ptr %arrayidx12.us, i64 3, !dbg !121
  store i8 %conv80.us, ptr %i_next81.us, align 1, !dbg !122
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1, !dbg !123
    #dbg_value(i64 %indvars.iv.next142, !70, !DIExpression(), !87)
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, 64, !dbg !124
  br i1 %exitcond145.not, label %for.cond.cleanup4, label %for.body5.us, !dbg !89, !llvm.loop !125

for.cond.cleanup:                                 ; preds = %for.cond.cleanup4
  ret void, !dbg !127

for.cond.cleanup4:                                ; preds = %if.end65, %if.end65.us
    #dbg_value(i64 %indvars.iv.next, !67, !DIExpression(), !85)
  %exitcond147.not = icmp eq i64 %indvars.iv.next, 7, !dbg !128
  br i1 %exitcond147.not, label %for.cond.cleanup, label %for.cond1.preheader, !dbg !86, !llvm.loop !129

for.body5:                                        ; preds = %for.body5.preheader, %if.end65
  %indvars.iv137 = phi i64 [ -64, %for.body5.preheader ], [ %indvars.iv.next138, %if.end65 ]
    #dbg_value(i64 %indvars.iv137, !70, !DIExpression(), !87)
  %6 = trunc nsw i64 %indvars.iv137 to i32, !dbg !90
  %shr = ashr i32 %6, 15, !dbg !90
    #dbg_value(i32 %shr, !77, !DIExpression(), !91)
  %xor = xor i32 %shr, %6, !dbg !92
  %sub = sub nsw i32 %xor, %shr, !dbg !93
    #dbg_value(i32 %sub, !80, !DIExpression(), !91)
  %mul = shl nsw i32 %sub, 1, !dbg !94
  %sub8 = sub nsw i32 %mul, %shr, !dbg !95
  %sub9 = add nsw i32 %sub8, -2, !dbg !131
    #dbg_value(i32 %sub9, !81, !DIExpression(), !91)
    #dbg_value(i64 %indvars.iv, !82, !DIExpression(), !91)
  %7 = add nsw i64 %indvars.iv137, 64, !dbg !96
  %arrayidx12 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %indvars.iv, i64 %7, !dbg !97
    #dbg_value(ptr %arrayidx12, !83, !DIExpression(), !91)
  %shr13 = ashr i32 %sub9, %0, !dbg !132
  %cmp14 = icmp slt i32 %shr13, 14, !dbg !98
  br i1 %cmp14, label %if.then, label %if.else34, !dbg !100

if.then:                                          ; preds = %for.body5
  %add18 = add i32 %shr13, %2, !dbg !133
  %conv19 = trunc i32 %add18 to i8, !dbg !111
  %i_size = getelementptr inbounds i8, ptr %arrayidx12, i64 2, !dbg !113
  store i8 %conv19, ptr %i_size, align 2, !dbg !114
  %and = and i32 %sub9, %sub47, !dbg !134
  %add22 = add nuw nsw i32 %and, %shl45, !dbg !135
  %conv23 = trunc i32 %add22 to i16, !dbg !136
  br label %if.end65, !dbg !115

if.else34:                                        ; preds = %for.body5
  %cmp39 = icmp eq i32 %shr13, 14
  br i1 %cmp39, label %if.then41, label %if.else52, !dbg !137

if.then41:                                        ; preds = %if.else34
  %i_size44 = getelementptr inbounds i8, ptr %arrayidx12, i64 2, !dbg !138
  store i8 %conv43, ptr %i_size44, align 2, !dbg !140
  %and48 = and i32 %sub9, %sub47, !dbg !141
  %add49 = add nuw nsw i32 %and48, %shl45, !dbg !142
  %conv50 = trunc i32 %add49 to i16, !dbg !143
  br label %if.end65, !dbg !144

if.else52:                                        ; preds = %if.else34
  %sub54 = add nsw i32 %sub9, %shl53.neg, !dbg !145
    #dbg_value(i32 poison, !81, !DIExpression(), !91)
  %i_size59 = getelementptr inbounds i8, ptr %arrayidx12, i64 2, !dbg !146
  store i8 28, ptr %i_size59, align 2, !dbg !104
  %8 = trunc i32 %sub54 to i16, !dbg !107
  %conv61 = add i16 %8, 4096, !dbg !107
  br label %if.end65

if.end65:                                         ; preds = %if.else52, %if.then41, %if.then
  %conv61.sink = phi i16 [ %conv61, %if.else52 ], [ %conv50, %if.then41 ], [ %conv23, %if.then ]
  store i16 %conv61.sink, ptr %arrayidx12, align 4, !dbg !116
    #dbg_value(i32 poison, !82, !DIExpression(), !91)
  %cmp72 = icmp sgt i32 %sub, %shl71, !dbg !117
  %or.cond86 = and i1 %cmp75, %cmp72, !dbg !119
  %inc78 = zext i1 %or.cond86 to i32, !dbg !119
  %i_next.1 = add nuw nsw i32 %spec.select133, %inc78, !dbg !119
    #dbg_value(i32 %i_next.1, !82, !DIExpression(), !91)
  %conv80 = trunc nuw i32 %i_next.1 to i8, !dbg !120
  %i_next81 = getelementptr inbounds i8, ptr %arrayidx12, i64 3, !dbg !121
  store i8 %conv80, ptr %i_next81, align 1, !dbg !122
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1, !dbg !123
    #dbg_value(i64 %indvars.iv.next138, !70, !DIExpression(), !87)
  %exitcond.not = icmp eq i64 %indvars.iv.next138, 64, !dbg !124
  br i1 %exitcond.not, label %for.cond.cleanup4, label %for.body5, !dbg !89, !llvm.loop !125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_coeff0_token", scope: !2, file: !3, line: 23, type: !53, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/common/vlc.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c16b9c79daf3939ca9cb3aa6c11de3f6")
!4 = !{!0, !5, !24, !29, !34, !39}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "x264_coeff_token", scope: !2, file: !3, line: 32, type: !7, isLocal: false, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 5120, elements: !20)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "vlc_t", file: !10, line: 37, baseType: !11)
!10 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 33, size: 16, elements: !12)
!12 = !{!13, !19}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits", scope: !11, file: !10, line: 35, baseType: !14, size: 8)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !15, line: 24, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !17, line: 38, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !11, file: !10, line: 36, baseType: !14, size: 8, offset: 8)
!20 = !{!21, !22, !23}
!21 = !DISubrange(count: 5)
!22 = !DISubrange(count: 16)
!23 = !DISubrange(count: 4)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "x264_total_zeros", scope: !2, file: !3, line: 440, type: !26, isLocal: false, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 3840, elements: !27)
!27 = !{!28, !22}
!28 = !DISubrange(count: 15)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "x264_total_zeros_dc", scope: !2, file: !3, line: 610, type: !31, isLocal: false, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !32)
!32 = !{!33, !23}
!33 = !DISubrange(count: 3)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "x264_run_before", scope: !2, file: !3, line: 630, type: !36, isLocal: false, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1792, elements: !37)
!37 = !{!38, !22}
!38 = !DISubrange(count: 7)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "x264_level_token", scope: !2, file: !3, line: 690, type: !41, isLocal: false, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 28672, elements: !51)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "vlc_large_t", file: !10, line: 45, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 39, size: 32, elements: !44)
!44 = !{!45, !49, !50}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits", scope: !43, file: !10, line: 41, baseType: !46, size: 16)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !15, line: 25, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !17, line: 40, baseType: !48)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !43, file: !10, line: 42, baseType: !14, size: 8, offset: 16)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "i_next", scope: !43, file: !10, line: 44, baseType: !14, size: 8, offset: 24)
!51 = !{!38, !52}
!52 = !DISubrange(count: 128)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 80, elements: !54)
!54 = !{!21}
!55 = !{i32 7, !"Dwarf Version", i32 5}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = !{i32 8, !"PIC Level", i32 2}
!59 = !{i32 7, !"PIE Level", i32 2}
!60 = !{i32 7, !"uwtable", i32 2}
!61 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!62 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!63 = distinct !DISubprogram(name: "x264_init_vlc_tables", scope: !3, file: !3, line: 692, type: !64, scopeLine: 693, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !{!67, !70, !77, !80, !81, !82, !83}
!67 = !DILocalVariable(name: "i_suffix", scope: !68, file: !3, line: 694, type: !69)
!68 = distinct !DILexicalBlock(scope: !63, file: !3, line: 694, column: 5)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DILocalVariable(name: "level", scope: !71, file: !3, line: 695, type: !73)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 695, column: 9)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 694, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !74, line: 25, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !17, line: 39, baseType: !76)
!76 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!77 = !DILocalVariable(name: "mask", scope: !78, file: !3, line: 697, type: !69)
!78 = distinct !DILexicalBlock(scope: !79, file: !3, line: 696, column: 9)
!79 = distinct !DILexicalBlock(scope: !71, file: !3, line: 695, column: 9)
!80 = !DILocalVariable(name: "abs_level", scope: !78, file: !3, line: 698, type: !69)
!81 = !DILocalVariable(name: "i_level_code", scope: !78, file: !3, line: 699, type: !69)
!82 = !DILocalVariable(name: "i_next", scope: !78, file: !3, line: 700, type: !69)
!83 = !DILocalVariable(name: "vlc", scope: !78, file: !3, line: 701, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!85 = !DILocation(line: 0, scope: !68)
!86 = !DILocation(line: 694, column: 5, scope: !68)
!87 = !DILocation(line: 0, scope: !71)
!88 = !DILocation(line: 694, column: 50, scope: !72)
!89 = !DILocation(line: 695, column: 9, scope: !71)
!90 = !DILocation(line: 697, column: 30, scope: !78)
!91 = !DILocation(line: 0, scope: !78)
!92 = !DILocation(line: 698, column: 35, scope: !78)
!93 = !DILocation(line: 698, column: 41, scope: !78)
!94 = !DILocation(line: 699, column: 41, scope: !78)
!95 = !DILocation(line: 699, column: 43, scope: !78)
!96 = !DILocation(line: 701, column: 65, scope: !78)
!97 = !DILocation(line: 701, column: 33, scope: !78)
!98 = !DILocation(line: 703, column: 46, scope: !99)
!99 = distinct !DILexicalBlock(scope: !78, file: !3, line: 703, column: 17)
!100 = !DILocation(line: 703, column: 17, scope: !78)
!101 = !DILocation(line: 0, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !3, line: 708, column: 22)
!103 = !DILocation(line: 708, column: 36, scope: !102)
!104 = !DILocation(line: 723, column: 29, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 719, column: 13)
!106 = distinct !DILexicalBlock(scope: !102, file: !3, line: 713, column: 22)
!107 = !DILocation(line: 724, column: 31, scope: !105)
!108 = !DILocation(line: 710, column: 29, scope: !109)
!109 = distinct !DILexicalBlock(scope: !102, file: !3, line: 709, column: 13)
!110 = !DILocation(line: 712, column: 13, scope: !109)
!111 = !DILocation(line: 705, column: 31, scope: !112)
!112 = distinct !DILexicalBlock(scope: !99, file: !3, line: 704, column: 13)
!113 = !DILocation(line: 705, column: 22, scope: !112)
!114 = !DILocation(line: 705, column: 29, scope: !112)
!115 = !DILocation(line: 707, column: 13, scope: !112)
!116 = !DILocation(line: 0, scope: !99)
!117 = !DILocation(line: 728, column: 27, scope: !118)
!118 = distinct !DILexicalBlock(scope: !78, file: !3, line: 728, column: 17)
!119 = !DILocation(line: 728, column: 47, scope: !118)
!120 = !DILocation(line: 730, column: 27, scope: !78)
!121 = !DILocation(line: 730, column: 18, scope: !78)
!122 = !DILocation(line: 730, column: 25, scope: !78)
!123 = !DILocation(line: 695, column: 84, scope: !79)
!124 = !DILocation(line: 695, column: 57, scope: !79)
!125 = distinct !{!125, !89, !126}
!126 = !DILocation(line: 731, column: 9, scope: !71)
!127 = !DILocation(line: 732, column: 1, scope: !63)
!128 = !DILocation(line: 694, column: 37, scope: !72)
!129 = distinct !{!129, !86, !130}
!130 = !DILocation(line: 731, column: 9, scope: !68)
!131 = !DILocation(line: 699, column: 48, scope: !78)
!132 = !DILocation(line: 703, column: 32, scope: !99)
!133 = !DILocation(line: 705, column: 62, scope: !112)
!134 = !DILocation(line: 706, column: 61, scope: !112)
!135 = !DILocation(line: 706, column: 45, scope: !112)
!136 = !DILocation(line: 706, column: 31, scope: !112)
!137 = !DILocation(line: 713, column: 35, scope: !106)
!138 = !DILocation(line: 715, column: 22, scope: !139)
!139 = distinct !DILexicalBlock(scope: !106, file: !3, line: 714, column: 13)
!140 = !DILocation(line: 715, column: 29, scope: !139)
!141 = !DILocation(line: 716, column: 61, scope: !139)
!142 = !DILocation(line: 716, column: 45, scope: !139)
!143 = !DILocation(line: 716, column: 31, scope: !139)
!144 = !DILocation(line: 717, column: 13, scope: !139)
!145 = !DILocation(line: 720, column: 30, scope: !105)
!146 = !DILocation(line: 723, column: 22, scope: !105)
